uint64_t sub_1D6FF0138(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 + 8);
  type metadata accessor for FormatGroupLayoutFactory.Bound(0);
  sub_1D7259E7C();
  v9 = v7;
  v10 = v8;
  if (v5 >= 0x40)
  {
    v11 = 7;
  }

  else
  {
    v11 = 5;
  }

  if (v5 <= 0xFD)
  {
    LODWORD(v12) = v11;
  }

  else
  {
    LODWORD(v12) = 7;
  }

  v13 = *(a1 + 112);
  v65 = a3;
  v14 = sub_1D6FEF804(v13, v6, 0.0, 0.0, v7, v8);
  v15 = *(a1 + 16);
  v71 = *(a1 + 32);
  v72 = v15;
  v17 = *(a1 + 48);
  v16 = *(a1 + 56);
  v18 = *(a1 + 88);
  v70 = *(a1 + 80);
  v19 = *(a1 + 104);
  v67 = *(a1 + 96);
  v20 = *(v14 + 16);
  v68 = v18;
  v66 = v19;
  if (v20)
  {
    v64 = v17;
    LODWORD(v69) = v12;
    v73[0] = MEMORY[0x1E69E7CC0];
    v63 = v16;

    sub_1D6998434(0, v20, 0);
    v12 = v73[0];
    v21 = *(v73[0] + 16);
    v62[5] = v14;
    v22 = (v14 + 40);
    do
    {
      v24 = *v22;
      v22 += 2;
      v23 = v24;
      v73[0] = v12;
      v25 = *(v12 + 24);

      if (v21 >= v25 >> 1)
      {
        sub_1D6998434((v25 > 1), v21 + 1, 1);
        v12 = v73[0];
      }

      *(v12 + 16) = v21 + 1;
      *(v12 + 8 * v21++ + 32) = v23;
      --v20;
    }

    while (v20);
    v26 = v12;
    LOBYTE(v12) = v69;
    v17 = v64;
    v27 = v63;
  }

  else
  {
    v27 = v16;

    v26 = MEMORY[0x1E69E7CC0];
  }

  v28 = *(a1 + 120);

  sub_1D6FB9AE4(v29);
  v31 = v30;
  swift_bridgeObjectRelease_n();

  v73[0] = v28;
  sub_1D6986BE4(v31);
  sub_1D5D27F7C(0, &qword_1EDF1AFA8, type metadata accessor for FormatAccessibilityLayoutValue, MEMORY[0x1E69E62F8]);
  sub_1D6FFC2E8(&unk_1EDF1AF98, MEMORY[0x1E69E6328]);
  v32 = sub_1D72623CC();

  MEMORY[0x1EEE9AC00](v33, v34);
  v62[2] = v65;
  v35 = sub_1D5FBC744(sub_1D6FFCC34, v62, v32);

  sub_1D6FFC8F0(0, &qword_1EDF23418, MEMORY[0x1E69E7CA8] + 8, type metadata accessor for FormatDataLayoutAttributes);
  v36 = swift_allocObject();
  v37 = v71;
  *(v36 + 16) = v72;
  *(v36 + 32) = v37;
  *(v36 + 48) = v17;
  *(v36 + 56) = v27;
  v39 = v67;
  v38 = v68;
  *(v36 + 64) = v70;
  *(v36 + 72) = v38;
  v40 = v66;
  *(v36 + 80) = v39;
  *(v36 + 88) = v40;
  *(v36 + 112) = v12;
  *(v36 + 136) = v9;
  *(v36 + 144) = v10;
  *(v36 + 96) = v26;
  *(v36 + 104) = v35;
  v66 = v36;
  v41 = MEMORY[0x1E69E7CC0];
  v77 = MEMORY[0x1E69E7CC0];
  v42 = *(v26 + 16);
  if (v42)
  {
    v43 = v26;
    v68 = type metadata accessor for FormatDataLayoutViewModel();

    v44 = 32;
    v69 = v26;
    do
    {
      v45 = *(v43 + v44);
      v46 = swift_allocObject();
      *(v46 + 16) = v45;
      v76 = v45;
      swift_retain_n();
      sub_1D6EE7974(v73, v47);
      v48 = v73[1];
      v49 = v75;
      *(v46 + 24) = v73[0];
      *(v46 + 32) = v48;
      *(v46 + 40) = v74;
      *(v46 + 56) = v49;

      MEMORY[0x1DA6F9CE0](v50);
      if (*((v77 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v77 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1D726272C();
      }

      sub_1D726278C();
      v67 = v77;
      v51 = *(v46 + 32);
      *&v72 = *(v46 + 24);
      v52 = *(v46 + 40);
      *&v71 = *(v46 + 48);
      LODWORD(v70) = *(v46 + 56);

      sub_1D5F33D5C(v52);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v41 = sub_1D698F980(0, *(v41 + 2) + 1, 1, v41);
      }

      v54 = *(v41 + 2);
      v53 = *(v41 + 3);
      v55 = v41;
      if (v54 >= v53 >> 1)
      {
        v55 = sub_1D698F980((v53 > 1), v54 + 1, 1, v41);
      }

      *(v55 + 2) = v54 + 1;
      v41 = v55;
      v56 = &v55[40 * v54];
      *(v56 + 4) = v72;
      *(v56 + 5) = v51;
      v57 = v71;
      *(v56 + 6) = v52;
      *(v56 + 7) = v57;
      v56[64] = v70;
      v44 += 8;
      --v42;
      v43 = v69;
    }

    while (v42);

    v58 = v67;
  }

  else
  {
    v58 = MEMORY[0x1E69E7CC0];
  }

  v59 = v66;
  *(v66 + 120) = v58;
  type metadata accessor for FormatDataLayoutViewKey();
  v60 = swift_allocObject();
  *(v60 + 16) = v41;
  *(v59 + 128) = v60;
  return v59;
}

void sub_1D6FF06C4(char **a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>, double a5@<D0>, double a6@<D1>, double a7@<D2>, double a8@<D3>)
{
  v466 = a3;
  v478 = a4;
  v14 = type metadata accessor for FormatVideoPlayerData(0);
  MEMORY[0x1EEE9AC00](v14 - 8, v15);
  v443 = &v440 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for FormatVideoData(0);
  MEMORY[0x1EEE9AC00](v17 - 8, v18);
  v442 = &v440 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for FormatButtonNodeData(0);
  MEMORY[0x1EEE9AC00](v20 - 8, v21);
  v456 = &v440 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for FormatViewData(0);
  MEMORY[0x1EEE9AC00](v23 - 8, v24);
  v441 = &v440 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6FFC4B8(0);
  v27 = v26 - 8;
  MEMORY[0x1EEE9AC00](v26, v28);
  v30 = &v440 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v480 = type metadata accessor for FormatNodeStateData.Data;
  v31 = MEMORY[0x1E69E6720];
  sub_1D5D27F7C(0, &qword_1EDF2C470, type metadata accessor for FormatNodeStateData.Data, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v32 - 8, v33);
  v476 = &v440 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35, v36);
  v474 = &v440 - v37;
  MEMORY[0x1EEE9AC00](v38, v39);
  v473 = &v440 - v40;
  MEMORY[0x1EEE9AC00](v41, v42);
  v464 = &v440 - v43;
  MEMORY[0x1EEE9AC00](v44, v45);
  v454 = (&v440 - v46);
  MEMORY[0x1EEE9AC00](v47, v48);
  v463 = &v440 - v49;
  MEMORY[0x1EEE9AC00](v50, v51);
  v453 = (&v440 - v52);
  MEMORY[0x1EEE9AC00](v53, v54);
  v470 = &v440 - v55;
  MEMORY[0x1EEE9AC00](v56, v57);
  v472 = &v440 - v58;
  MEMORY[0x1EEE9AC00](v59, v60);
  v455 = &v440 - v61;
  MEMORY[0x1EEE9AC00](v62, v63);
  v462 = &v440 - v64;
  MEMORY[0x1EEE9AC00](v65, v66);
  v452 = (&v440 - v67);
  MEMORY[0x1EEE9AC00](v68, v69);
  v469 = &v440 - v70;
  MEMORY[0x1EEE9AC00](v71, v72);
  v451 = &v440 - v73;
  MEMORY[0x1EEE9AC00](v74, v75);
  v461 = &v440 - v76;
  MEMORY[0x1EEE9AC00](v77, v78);
  v471 = &v440 - v79;
  MEMORY[0x1EEE9AC00](v80, v81);
  v450 = (&v440 - v82);
  MEMORY[0x1EEE9AC00](v83, v84);
  v460 = &v440 - v85;
  MEMORY[0x1EEE9AC00](v86, v87);
  v465 = &v440 - v88;
  MEMORY[0x1EEE9AC00](v89, v90);
  v449 = (&v440 - v91);
  MEMORY[0x1EEE9AC00](v92, v93);
  v459 = &v440 - v94;
  MEMORY[0x1EEE9AC00](v95, v96);
  v448 = (&v440 - v97);
  MEMORY[0x1EEE9AC00](v98, v99);
  v458 = &v440 - v100;
  MEMORY[0x1EEE9AC00](v101, v102);
  v447 = (&v440 - v103);
  MEMORY[0x1EEE9AC00](v104, v105);
  v457 = &v440 - v106;
  MEMORY[0x1EEE9AC00](v107, v108);
  v446 = (&v440 - v109);
  MEMORY[0x1EEE9AC00](v110, v111);
  v468 = &v440 - v112;
  MEMORY[0x1EEE9AC00](v113, v114);
  v445 = (&v440 - v115);
  MEMORY[0x1EEE9AC00](v116, v117);
  v467 = &v440 - v118;
  MEMORY[0x1EEE9AC00](v119, v120);
  v444 = (&v440 - v121);
  MEMORY[0x1EEE9AC00](v122, v123);
  v125 = &v440 - v124;
  MEMORY[0x1EEE9AC00](v126, v127);
  v129 = &v440 - v128;
  v130 = *a1;
  type metadata accessor for FormatGroupLayoutFactory.Bound(0);
  v475 = a2;
  v482 = v130;
  v131 = FormatLayoutValue.identifier.getter();
  v479 = sub_1D69B6F0C(v129, &v483, v131, v132);

  v477 = v483;
  v133 = v484;
  v134 = *(v27 + 56);
  v491 = v129;
  sub_1D6FFC87C(v129, v30, &qword_1EDF2C470, v480, v31, sub_1D5D27F7C);
  *&v30[v134] = v130;
  v135 = ((v130 >> 59) & 0x1E | (v130 >> 2) & 1);
  switch(v135)
  {
    case 0:

      sub_1D5EBC358(v477, *(&v477 + 1), v133);
      v136 = type metadata accessor for FormatNodeStateData.Data(0);
      if ((*(*(v136 - 8) + 48))(v30, 1, v136) == 1)
      {
        goto LABEL_80;
      }

      v137 = v473;
      sub_1D6FFC87C(v30, v473, &qword_1EDF2C470, type metadata accessor for FormatNodeStateData.Data, MEMORY[0x1E69E6720], sub_1D5D27F7C);
      if (swift_getEnumCaseMultiPayload() != 4)
      {
        goto LABEL_74;
      }

      v138 = v491;
      sub_1D6FF6464(v491, v130, v475, a7, a8, a5, a6);
      v140 = v139;
      v142 = v141;

      v143 = MEMORY[0x1E69E6720];
      sub_1D6FFCA9C(v138, &qword_1EDF2C470, type metadata accessor for FormatNodeStateData.Data, MEMORY[0x1E69E6720], sub_1D5D27F7C);
      v144 = v478;
      *v478 = v140;
      v144[1] = v142;
      v145 = &v489;
      goto LABEL_67;
    case 1:
      v480 = v133;
      v153 = type metadata accessor for FormatNodeStateData.Data(0);
      v211 = *(*(v153 - 1) + 48);
      if (v211(v30, 1, v153) == 1)
      {
        goto LABEL_70;
      }

      v191 = v467;
      sub_1D6FFC87C(v30, v467, &qword_1EDF2C470, type metadata accessor for FormatNodeStateData.Data, MEMORY[0x1E69E6720], sub_1D5D27F7C);
      if (swift_getEnumCaseMultiPayload() != 10)
      {
        goto LABEL_95;
      }

      v135 = v445;
      sub_1D6FFC87C(v491, v445, &qword_1EDF2C470, type metadata accessor for FormatNodeStateData.Data, MEMORY[0x1E69E6720], sub_1D5D27F7C);
      if (v211(v135, 1, v153) == 1)
      {
        goto LABEL_122;
      }

      v474 = v134;
      if (swift_getEnumCaseMultiPayload() != 10)
      {
        goto LABEL_134;
      }

      v212 = v441;
      sub_1D5BDAB74(v135, v441, type metadata accessor for FormatViewData);
      v213 = *((v130 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      sub_1D6FFC8F0(0, &unk_1EDF195F0, &type metadata for FormatGroupLayoutCoordinateValue, MEMORY[0x1E69E6F90]);
      v214 = swift_allocObject();
      *(v214 + 16) = xmmword_1D7273AE0;
      v215 = v213[14];
      sub_1D6FFC6B8(0, qword_1EDF31DD0, type metadata accessor for FormatViewData, &qword_1EDF1C800, type metadata accessor for FormatViewNodeLayoutAttributes);
      v217 = v216;
      v218 = swift_allocBox();
      v220 = (v219 + *(v217 + 48));
      sub_1D5BE4148(v212, v219, type metadata accessor for FormatViewData);
      swift_beginAccess();
      v221 = v213[10];
      v222 = v213[11];

      sub_1D72634FC();
      v213[8] = v223;
      v213[9] = v224;
      v213[10] = v221;
      v213[11] = v222;
      v225 = v479;
      *v220 = v213;
      v220[1] = v225;
      v226 = *(&v477 + 1);
      v220[2] = v477;
      v220[3] = v226;
      v220[4] = v480;
      *(v214 + 32) = v215;
      *(v214 + 40) = v218 | 0x1000000000000000;
      sub_1D6FFC9A0(v212, type metadata accessor for FormatViewData);
      v207 = MEMORY[0x1E69E6720];
      sub_1D6FFCA9C(v491, &qword_1EDF2C470, type metadata accessor for FormatNodeStateData.Data, MEMORY[0x1E69E6720], sub_1D5D27F7C);
      v227 = MEMORY[0x1E69E7CC0];
      v228 = v478;
      *v478 = v214;
      v228[1] = v227;
      v210 = &v485[8];
      goto LABEL_63;
    case 2:

      v268 = v477;
      v269 = sub_1D6FF4E1C(v130, v479, v477, *(&v477 + 1), v133, v475, a5, a6, a7, a8);
      v271 = v270;

      sub_1D5EBC358(v268, *(&v268 + 1), v133);
      v143 = MEMORY[0x1E69E6720];
      v272 = v491;
      goto LABEL_47;
    case 3:
      v474 = v134;
      v153 = type metadata accessor for FormatNodeStateData.Data(0);
      v254 = *(*(v153 - 1) + 48);
      if (v254(v30, 1, v153) == 1)
      {
        goto LABEL_76;
      }

      v480 = v133;
      v155 = v459;
      sub_1D6FFC87C(v30, v459, &qword_1EDF2C470, type metadata accessor for FormatNodeStateData.Data, MEMORY[0x1E69E6720], sub_1D5D27F7C);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();

      if (EnumCaseMultiPayload != 3)
      {
        goto LABEL_102;
      }

      sub_1D6FFC9A0(v155, type metadata accessor for FormatNodeStateData.Data);
      v135 = v449;
      sub_1D6FFC87C(v491, v449, &qword_1EDF2C470, type metadata accessor for FormatNodeStateData.Data, MEMORY[0x1E69E6720], sub_1D5D27F7C);
      if (v254(v135, 1, v153) == 1)
      {
        goto LABEL_124;
      }

      if (swift_getEnumCaseMultiPayload() != 3)
      {
        goto LABEL_136;
      }

      v256 = *v135;
      v257 = *((v130 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v258 = v257[18];
      v259 = v466;
      if (v258 && *(v466 + 16))
      {
        v260 = v257[17];

        v261 = sub_1D5B69D90(v260, v258);
        if (v262)
        {
          v263 = *(*(v259 + 56) + 8 * v261);
          swift_beginAccess();
          v264 = v263[10];
          v265 = v263[11];

          sub_1D72634FC();
          v263[8] = v266;
          v263[9] = v267;
          v263[10] = v264;
          v263[11] = v265;
          goto LABEL_118;
        }
      }

      else
      {
      }

      v263 = 0;
LABEL_118:
      swift_beginAccess();
      v429 = v257[10];
      v430 = v257[11];
      sub_1D72634FC();
      v257[8] = v431;
      v257[9] = v432;
      v257[10] = v429;
      v257[11] = v430;
      sub_1D6FFC8F0(0, &unk_1EDF195F0, &type metadata for FormatGroupLayoutCoordinateValue, MEMORY[0x1E69E6F90]);
      v433 = swift_allocObject();
      *(v433 + 16) = xmmword_1D7273AE0;
      v434 = v257[14];
      v435 = swift_allocObject();
      *(v435 + 16) = v256;
      *(v435 + 24) = v257;
      v436 = v477;
      *(v435 + 32) = v479;
      *(v435 + 40) = v436;
      v437 = v480;
      *(v435 + 48) = *(&v477 + 1);
      *(v435 + 56) = v437;
      *(v435 + 64) = v263;
      *(v433 + 32) = v434;
      *(v433 + 40) = v435 | 0x2000000000000004;
      v207 = MEMORY[0x1E69E6720];
      sub_1D6FFCA9C(v491, &qword_1EDF2C470, type metadata accessor for FormatNodeStateData.Data, MEMORY[0x1E69E6720], sub_1D5D27F7C);
      v438 = MEMORY[0x1E69E7CC0];
      v439 = v478;
      *v478 = v433;
      v439[1] = v438;

      v253 = v30;
      goto LABEL_101;
    case 4:
      v474 = v134;
      v153 = type metadata accessor for FormatNodeStateData.Data(0);
      v177 = *(*(v153 - 1) + 48);
      if (v177(v30, 1, v153) == 1)
      {
        goto LABEL_76;
      }

      v480 = v133;
      v155 = v458;
      sub_1D6FFC87C(v30, v458, &qword_1EDF2C470, type metadata accessor for FormatNodeStateData.Data, MEMORY[0x1E69E6720], sub_1D5D27F7C);
      v178 = swift_getEnumCaseMultiPayload();

      if (v178 != 2)
      {
        goto LABEL_102;
      }

      sub_1D6FFC9A0(v155, type metadata accessor for FormatNodeStateData.Data);
      v135 = v448;
      sub_1D6FFC87C(v491, v448, &qword_1EDF2C470, type metadata accessor for FormatNodeStateData.Data, MEMORY[0x1E69E6720], sub_1D5D27F7C);
      if (v177(v135, 1, v153) == 1)
      {
        goto LABEL_120;
      }

      if (swift_getEnumCaseMultiPayload() != 2)
      {
        goto LABEL_132;
      }

      v179 = *v135;
      v180 = *((v130 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      sub_1D6FFC8F0(0, &unk_1EDF195F0, &type metadata for FormatGroupLayoutCoordinateValue, MEMORY[0x1E69E6F90]);
      v181 = swift_allocObject();
      *(v181 + 16) = xmmword_1D7273AE0;
      v182 = v180[14];
      v183 = swift_allocObject();
      *(v183 + 16) = v179;
      swift_beginAccess();
      v184 = v180[10];
      v185 = v180[11];

      sub_1D72634FC();
      v180[8] = v186;
      v180[9] = v187;
      v180[10] = v184;
      v180[11] = v185;
      v188 = v479;
      *(v183 + 24) = v180;
      *(v183 + 32) = v188;
      v189 = *(&v477 + 1);
      *(v183 + 40) = v477;
      *(v183 + 48) = v189;
      *(v183 + 56) = v480;
      *(v181 + 32) = v182;
      *(v181 + 40) = v183 | 4;

      goto LABEL_100;
    case 5:
      v229 = v130;
      v474 = v134;
      v153 = type metadata accessor for FormatNodeStateData.Data(0);
      v230 = *(v153 - 1);
      v231 = *(v230 + 48);
      v130 = v230 + 48;
      if (v231(v30, 1, v153) == 1)
      {
        v130 = v229;
LABEL_76:

        v315 = *(&v477 + 1);
        v314 = v477;
        v316 = v133;
        goto LABEL_77;
      }

      v480 = v133;
      sub_1D6FFC87C(v30, v125, &qword_1EDF2C470, type metadata accessor for FormatNodeStateData.Data, MEMORY[0x1E69E6720], sub_1D5D27F7C);
      v358 = swift_getEnumCaseMultiPayload();

      if (v358 != 1)
      {
        sub_1D5EBC358(v477, *(&v477 + 1), v480);

        sub_1D6FFCA9C(v491, &qword_1EDF2C470, type metadata accessor for FormatNodeStateData.Data, MEMORY[0x1E69E6720], sub_1D5D27F7C);
        sub_1D6FFC9A0(v125, type metadata accessor for FormatNodeStateData.Data);
        v130 = v229;
        goto LABEL_103;
      }

      sub_1D6FFC9A0(v125, type metadata accessor for FormatNodeStateData.Data);
      v135 = v444;
      sub_1D6FFC87C(v491, v444, &qword_1EDF2C470, type metadata accessor for FormatNodeStateData.Data, MEMORY[0x1E69E6720], sub_1D5D27F7C);
      if (v231(v135, 1, v153) == 1)
      {
        goto LABEL_127;
      }

      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v359 = *v135;
        v360 = *((v229 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        sub_1D6FFC8F0(0, &unk_1EDF195F0, &type metadata for FormatGroupLayoutCoordinateValue, MEMORY[0x1E69E6F90]);
        v160 = swift_allocObject();
        *(v160 + 16) = xmmword_1D7273AE0;
        v361 = v360[14];
        v362 = swift_allocObject();
        v362[2] = v359;
        swift_beginAccess();
        v363 = v360[10];
        v364 = v360[11];

        sub_1D72634FC();
        v360[8] = v365;
        v360[9] = v366;
        v360[10] = v363;
        v360[11] = v364;
        v367 = v479;
        v362[3] = v360;
        v362[4] = v367;
        v368 = *(&v477 + 1);
        v362[5] = v477;
        v362[6] = v368;
        v362[7] = v480;
        *(v160 + 32) = v361;
        *(v160 + 40) = v362;

        goto LABEL_93;
      }

      goto LABEL_137;
    case 7:
      v480 = v133;
      v153 = type metadata accessor for FormatNodeStateData.Data(0);
      v274 = *(*(v153 - 1) + 48);
      if (v274(v30, 1, v153) == 1)
      {
        goto LABEL_70;
      }

      v191 = v468;
      sub_1D6FFC87C(v30, v468, &qword_1EDF2C470, type metadata accessor for FormatNodeStateData.Data, MEMORY[0x1E69E6720], sub_1D5D27F7C);
      if (swift_getEnumCaseMultiPayload() != 6)
      {
        goto LABEL_95;
      }

      v135 = v446;
      sub_1D6FFC87C(v491, v446, &qword_1EDF2C470, type metadata accessor for FormatNodeStateData.Data, MEMORY[0x1E69E6720], sub_1D5D27F7C);
      if (v274(v135, 1, v153) == 1)
      {
        goto LABEL_125;
      }

      v474 = v134;
      v476 = v30;
      if (swift_getEnumCaseMultiPayload() != 6)
      {
        goto LABEL_138;
      }

      sub_1D5BDAB74(v135, v456, type metadata accessor for FormatButtonNodeData);
      v275 = *((v130 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      v276 = *(v275 + 16);
      v277 = *(v275 + 72);
      *&v483 = *(v275 + 64);
      BYTE8(v483) = v277;

      v278 = v475;
      v279 = sub_1D6FF0138(v276, &v483, v475);
      swift_beginAccess();
      v280 = v279[4];
      v281 = v279[5];
      v282 = sub_1D72634FC();
      v279[2] = v283;
      v279[3] = v284;
      v279[4] = v280;
      v279[5] = v281;
      MEMORY[0x1EEE9AC00](v282, v285);
      *(&v440 - 2) = v278;
      *(&v440 - 1) = v275;
      v286 = v481;
      sub_1D6FF8764(sub_1D6FFC69C, (&v440 - 4), v287);
      v472 = v288;
      v481 = v286;
      v290 = *(v275 + 40);
      v475 = *(v275 + 32);
      v289 = v475;
      v473 = v290;
      v291 = *(v275 + 48);
      v292 = *(v275 + 56);
      v471 = *(v275 + 64);
      LODWORD(v470) = *(v275 + 72);
      v294 = *(v275 + 80);
      v293 = *(v275 + 88);
      type metadata accessor for FormatButtonNodeDataLayoutAttributes();
      v295 = swift_allocObject();
      v296 = v472;
      *(v295 + 16) = v279;
      *(v295 + 24) = v296;
      *(v295 + 32) = v289;
      *(v295 + 40) = v290;
      *(v295 + 48) = v291;
      *(v295 + 56) = v292;
      *(v295 + 64) = v471;
      *(v295 + 72) = v470;
      *(v295 + 80) = v294;
      *(v295 + 88) = v293;
      sub_1D6FFC8F0(0, &unk_1EDF195F0, &type metadata for FormatGroupLayoutCoordinateValue, MEMORY[0x1E69E6F90]);
      v297 = swift_allocObject();
      *(v297 + 16) = xmmword_1D7273AE0;
      sub_1D6FFC6B8(0, qword_1EDF2B540, type metadata accessor for FormatButtonNodeData, &qword_1EDF1C7E8, type metadata accessor for FormatButtonNodeDataLayoutAttributes);
      v299 = v298;
      v300 = swift_allocBox();
      v302 = (v301 + *(v299 + 48));
      v303 = v456;
      sub_1D5BE4148(v456, v301, type metadata accessor for FormatButtonNodeData);
      v304 = v479;
      *v302 = v295;
      v302[1] = v304;
      v305 = *(&v477 + 1);
      v302[2] = v477;
      v302[3] = v305;
      v302[4] = v480;
      *(v297 + 32) = v473;
      *(v297 + 40) = v300 | 0x1000000000000004;

      sub_1D5EB1500(v291);

      sub_1D6FFC9A0(v303, type metadata accessor for FormatButtonNodeData);
      v306 = MEMORY[0x1E69E6720];
      sub_1D6FFCA9C(v491, &qword_1EDF2C470, type metadata accessor for FormatNodeStateData.Data, MEMORY[0x1E69E6720], sub_1D5D27F7C);
      v307 = MEMORY[0x1E69E7CC0];
      v308 = v478;
      *v478 = v297;
      v308[1] = v307;
      sub_1D6FFC9A0(v468, type metadata accessor for FormatNodeStateData.Data);
      v309 = v476;

      sub_1D6FFCA9C(v309, &qword_1EDF2C470, type metadata accessor for FormatNodeStateData.Data, v306, sub_1D5D27F7C);
      return;
    case 9:
      v310 = v130;
      v480 = v133;
      v474 = v134;
      v311 = type metadata accessor for FormatNodeStateData.Data(0);
      v312 = *(v311 - 8);
      v313 = *(v312 + 48);
      v130 = v312 + 48;
      if (v313(v30, 1, v311) == 1)
      {
        v130 = v310;

        v315 = *(&v477 + 1);
        v314 = v477;
        v316 = v480;
LABEL_77:
        sub_1D5EBC358(v314, v315, v316);

        sub_1D6FFCA9C(v491, &qword_1EDF2C470, type metadata accessor for FormatNodeStateData.Data, MEMORY[0x1E69E6720], sub_1D5D27F7C);
        goto LABEL_103;
      }

      v369 = v457;
      sub_1D6FFC87C(v30, v457, &qword_1EDF2C470, type metadata accessor for FormatNodeStateData.Data, MEMORY[0x1E69E6720], sub_1D5D27F7C);
      v370 = swift_getEnumCaseMultiPayload();
      v371 = v310 & 0xFFFFFFFFFFFFFFBLL;

      if (v370 != 8)
      {
        sub_1D5EBC358(v477, *(&v477 + 1), v480);

        sub_1D6FFCA9C(v491, &qword_1EDF2C470, type metadata accessor for FormatNodeStateData.Data, MEMORY[0x1E69E6720], sub_1D5D27F7C);
        sub_1D6FFC9A0(v369, type metadata accessor for FormatNodeStateData.Data);
        v130 = v310;
        goto LABEL_103;
      }

      sub_1D6FFC9A0(v369, type metadata accessor for FormatNodeStateData.Data);
      v153 = v447;
      sub_1D6FFC87C(v491, v447, &qword_1EDF2C470, type metadata accessor for FormatNodeStateData.Data, MEMORY[0x1E69E6720], sub_1D5D27F7C);
      if (v313(v153, 1, v311) == 1)
      {
        goto LABEL_128;
      }

      v476 = v30;
      if (swift_getEnumCaseMultiPayload() == 8)
      {
        v372 = *v153;
        v373 = *(v371 + 16);
        v374 = *(v373 + 16);
        *&v483 = 0;
        BYTE8(v483) = -2;

        v375 = v475;
        v376 = sub_1D6FF0138(v374, &v483, v475);
        swift_beginAccess();
        v377 = v376[4];
        v378 = v376[5];
        v379 = sub_1D72634FC();
        v376[2] = v380;
        v376[3] = v381;
        v376[4] = v377;
        v376[5] = v378;
        MEMORY[0x1EEE9AC00](v379, v382);
        *(&v440 - 2) = v375;
        v383 = v481;
        v385 = sub_1D6FF8914(sub_1D6FFC624, (&v440 - 4), v384);
        v481 = v383;
        v386 = *(v373 + 32);
        v387 = *(v373 + 40);
        v388 = *(v373 + 48);
        swift_beginAccess();
        v389 = *(v373 + 56);
        type metadata accessor for FormatStateViewNodeDataLayoutAttributes();
        v390 = swift_allocObject();
        *(v390 + 16) = v376;
        *(v390 + 24) = v385;
        *(v390 + 32) = v386;
        *(v390 + 40) = v387;
        *(v390 + 48) = v388;
        *(v390 + 56) = v389;
        sub_1D6FFC8F0(0, &unk_1EDF195F0, &type metadata for FormatGroupLayoutCoordinateValue, MEMORY[0x1E69E6F90]);
        v391 = swift_allocObject();
        *(v391 + 16) = xmmword_1D7273AE0;
        v392 = swift_allocObject();
        *(v392 + 16) = v372;
        *(v392 + 24) = v390;
        v393 = v477;
        *(v392 + 32) = v479;
        *(v392 + 40) = v393;
        v394 = v480;
        *(v392 + 48) = *(&v477 + 1);
        *(v392 + 56) = v394;
        *(v391 + 32) = v387;
        *(v391 + 40) = v392 | 0x3000000000000000;

        sub_1D5EB1500(v388);

        v207 = MEMORY[0x1E69E6720];
        sub_1D6FFCA9C(v491, &qword_1EDF2C470, type metadata accessor for FormatNodeStateData.Data, MEMORY[0x1E69E6720], sub_1D5D27F7C);
        v395 = MEMORY[0x1E69E7CC0];
        v396 = v478;
        *v478 = v391;
        v396[1] = v395;
        v397 = v476;

        v253 = v397;
        goto LABEL_101;
      }

      goto LABEL_140;
    case 10:
      v480 = v133;
      v153 = type metadata accessor for FormatNodeStateData.Data(0);
      v349 = *(*(v153 - 1) + 48);
      if (v349(v30, 1, v153) == 1)
      {
        goto LABEL_70;
      }

      v191 = v460;
      sub_1D6FFC87C(v30, v460, &qword_1EDF2C470, type metadata accessor for FormatNodeStateData.Data, MEMORY[0x1E69E6720], sub_1D5D27F7C);
      if (swift_getEnumCaseMultiPayload() != 9)
      {
        goto LABEL_95;
      }

      v135 = v450;
      sub_1D6FFC87C(v491, v450, &qword_1EDF2C470, type metadata accessor for FormatNodeStateData.Data, MEMORY[0x1E69E6720], sub_1D5D27F7C);
      if (v349(v135, 1, v153) == 1)
      {
        goto LABEL_129;
      }

      v474 = v134;
      if (swift_getEnumCaseMultiPayload() != 9)
      {
        goto LABEL_141;
      }

      v398 = *v135;
      v399 = *((v130 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      sub_1D6FFC8F0(0, &unk_1EDF195F0, &type metadata for FormatGroupLayoutCoordinateValue, MEMORY[0x1E69E6F90]);
      v160 = swift_allocObject();
      *(v160 + 16) = xmmword_1D7273AE0;
      v400 = v399[13];
      v401 = swift_allocObject();
      *(v401 + 16) = v398;
      swift_beginAccess();
      v402 = v399[10];
      v403 = v399[11];

      sub_1D72634FC();
      v399[8] = v404;
      v399[9] = v405;
      v399[10] = v402;
      v399[11] = v403;
      v406 = v479;
      *(v401 + 24) = v399;
      *(v401 + 32) = v406;
      v407 = *(&v477 + 1);
      *(v401 + 40) = v477;
      *(v401 + 48) = v407;
      *(v401 + 56) = v480;
      *(v160 + 32) = v400;
      *(v160 + 40) = v401 | 0x3000000000000004;
      goto LABEL_93;
    case 11:

      sub_1D5EBC358(v477, *(&v477 + 1), v133);
      v342 = type metadata accessor for FormatNodeStateData.Data(0);
      if ((*(*(v342 - 8) + 48))(v30, 1, v342) == 1)
      {
        goto LABEL_80;
      }

      v137 = v465;
      sub_1D6FFC87C(v30, v465, &qword_1EDF2C470, type metadata accessor for FormatNodeStateData.Data, MEMORY[0x1E69E6720], sub_1D5D27F7C);
      if (swift_getEnumCaseMultiPayload())
      {
        goto LABEL_74;
      }

      v343 = v491;
      sub_1D6FF55D0(v491, v130, v466, a5, a6);
      v345 = v344;
      v347 = v346;

      v143 = MEMORY[0x1E69E6720];
      sub_1D6FFCA9C(v343, &qword_1EDF2C470, type metadata accessor for FormatNodeStateData.Data, MEMORY[0x1E69E6720], sub_1D5D27F7C);
      v348 = v478;
      *v478 = v345;
      v348[1] = v347;
      v145 = &v484 + 1;
      goto LABEL_67;
    case 12:

      sub_1D5EBC358(v477, *(&v477 + 1), v133);
      v170 = type metadata accessor for FormatNodeStateData.Data(0);
      if ((*(*(v170 - 8) + 48))(v30, 1, v170) == 1)
      {
        goto LABEL_80;
      }

      v137 = v471;
      sub_1D6FFC87C(v30, v471, &qword_1EDF2C470, type metadata accessor for FormatNodeStateData.Data, MEMORY[0x1E69E6720], sub_1D5D27F7C);
      if (swift_getEnumCaseMultiPayload() != 11)
      {
        goto LABEL_74;
      }

      v171 = v491;
      sub_1D6FF59C8(v491, v130, a5, a6);
      v173 = v172;
      v175 = v174;

      v143 = MEMORY[0x1E69E6720];
      sub_1D6FFCA9C(v171, &qword_1EDF2C470, type metadata accessor for FormatNodeStateData.Data, MEMORY[0x1E69E6720], sub_1D5D27F7C);
      v176 = v478;
      *v478 = v173;
      v176[1] = v175;
      v145 = &v487;
      goto LABEL_67;
    case 13:
      v474 = v134;
      v153 = type metadata accessor for FormatNodeStateData.Data(0);
      v232 = *(*(v153 - 1) + 48);
      if (v232(v30, 1, v153) == 1)
      {
        goto LABEL_76;
      }

      v480 = v133;
      v155 = v461;
      sub_1D6FFC87C(v30, v461, &qword_1EDF2C470, type metadata accessor for FormatNodeStateData.Data, MEMORY[0x1E69E6720], sub_1D5D27F7C);
      v233 = swift_getEnumCaseMultiPayload();
      v234 = v130 & 0xFFFFFFFFFFFFFFBLL;

      if (v233 != 12)
      {
        goto LABEL_102;
      }

      sub_1D6FFC9A0(v155, type metadata accessor for FormatNodeStateData.Data);
      v130 = v451;
      sub_1D6FFC87C(v491, v451, &qword_1EDF2C470, type metadata accessor for FormatNodeStateData.Data, MEMORY[0x1E69E6720], sub_1D5D27F7C);
      if (v232(v130, 1, v153) == 1)
      {
        goto LABEL_123;
      }

      v476 = v30;
      if (swift_getEnumCaseMultiPayload() != 12)
      {
        goto LABEL_135;
      }

      v235 = *(v130 + 32);
      v236 = *(v130 + 24);
      v237 = *(v130 + 16);
      v239 = *v130;
      v238 = *(v130 + 8);
      v240 = *(v234 + 16);
      sub_1D6FFC8F0(0, &unk_1EDF195F0, &type metadata for FormatGroupLayoutCoordinateValue, MEMORY[0x1E69E6F90]);
      v241 = swift_allocObject();
      *(v241 + 16) = xmmword_1D7273AE0;
      v242 = v240[13];
      v243 = swift_allocObject();
      *(v243 + 16) = v239;
      *(v243 + 24) = v238;
      *(v243 + 32) = v237;
      *(v243 + 40) = v236;
      *(v243 + 48) = v235;
      swift_beginAccess();
      v244 = v240[10];
      v245 = v240[11];

      sub_1D72634FC();
      v240[8] = v246;
      v240[9] = v247;
      v240[10] = v244;
      v240[11] = v245;
      v248 = v479;
      *(v243 + 56) = v240;
      *(v243 + 64) = v248;
      v249 = *(&v477 + 1);
      *(v243 + 72) = v477;
      *(v243 + 80) = v249;
      *(v243 + 88) = v480;
      *(v241 + 32) = v242;
      *(v241 + 40) = v243 | 0x5000000000000000;

      v207 = MEMORY[0x1E69E6720];
      sub_1D6FFCA9C(v491, &qword_1EDF2C470, type metadata accessor for FormatNodeStateData.Data, MEMORY[0x1E69E6720], sub_1D5D27F7C);
      v250 = MEMORY[0x1E69E7CC0];
      v251 = v478;
      *v478 = v241;
      v251[1] = v250;
      v252 = v476;

      v253 = v252;
      goto LABEL_101;
    case 14:
      v480 = v133;
      v153 = type metadata accessor for FormatNodeStateData.Data(0);
      v190 = *(*(v153 - 1) + 48);
      if (v190(v30, 1, v153) == 1)
      {
        goto LABEL_70;
      }

      v191 = v469;
      sub_1D6FFC87C(v30, v469, &qword_1EDF2C470, type metadata accessor for FormatNodeStateData.Data, MEMORY[0x1E69E6720], sub_1D5D27F7C);
      if (swift_getEnumCaseMultiPayload() != 13)
      {
        goto LABEL_95;
      }

      v135 = v452;
      sub_1D6FFC87C(v491, v452, &qword_1EDF2C470, type metadata accessor for FormatNodeStateData.Data, MEMORY[0x1E69E6720], sub_1D5D27F7C);
      if (v190(v135, 1, v153) == 1)
      {
        goto LABEL_121;
      }

      v474 = v134;
      if (swift_getEnumCaseMultiPayload() != 13)
      {
        goto LABEL_133;
      }

      v192 = v442;
      sub_1D5BDAB74(v135, v442, type metadata accessor for FormatVideoData);
      v193 = *((v130 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      sub_1D6FFC8F0(0, &unk_1EDF195F0, &type metadata for FormatGroupLayoutCoordinateValue, MEMORY[0x1E69E6F90]);
      v194 = swift_allocObject();
      *(v194 + 16) = xmmword_1D7273AE0;
      v195 = v193[13];
      sub_1D6FFC6B8(0, &qword_1EC884E78, type metadata accessor for FormatVideoData, &qword_1EC884E80, type metadata accessor for FormatVideoNodeLayoutAttributes);
      v197 = v196;
      v198 = swift_allocBox();
      v200 = (v199 + *(v197 + 48));
      sub_1D5BE4148(v192, v199, type metadata accessor for FormatVideoData);
      swift_beginAccess();
      v201 = v193[10];
      v202 = v193[11];

      sub_1D72634FC();
      v193[8] = v203;
      v193[9] = v204;
      v193[10] = v201;
      v193[11] = v202;
      v205 = v479;
      *v200 = v193;
      v200[1] = v205;
      v206 = *(&v477 + 1);
      v200[2] = v477;
      v200[3] = v206;
      v200[4] = v480;
      *(v194 + 32) = v195;
      *(v194 + 40) = v198 | 0x5000000000000004;
      sub_1D6FFC9A0(v192, type metadata accessor for FormatVideoData);
      v207 = MEMORY[0x1E69E6720];
      sub_1D6FFCA9C(v491, &qword_1EDF2C470, type metadata accessor for FormatNodeStateData.Data, MEMORY[0x1E69E6720], sub_1D5D27F7C);
      v208 = MEMORY[0x1E69E7CC0];
      v209 = v478;
      *v478 = v194;
      v209[1] = v208;
      v210 = &v485[24];
      goto LABEL_63;
    case 15:
      v474 = v134;
      v153 = type metadata accessor for FormatNodeStateData.Data(0);
      v154 = *(*(v153 - 1) + 48);
      if (v154(v30, 1, v153) == 1)
      {
        goto LABEL_76;
      }

      v480 = v133;
      v155 = v462;
      sub_1D6FFC87C(v30, v462, &qword_1EDF2C470, type metadata accessor for FormatNodeStateData.Data, MEMORY[0x1E69E6720], sub_1D5D27F7C);
      v156 = swift_getEnumCaseMultiPayload();
      v157 = v130 & 0xFFFFFFFFFFFFFFBLL;

      if (v156 != 14)
      {
        goto LABEL_102;
      }

      sub_1D6FFC9A0(v155, type metadata accessor for FormatNodeStateData.Data);
      v130 = v455;
      sub_1D6FFC87C(v491, v455, &qword_1EDF2C470, type metadata accessor for FormatNodeStateData.Data, MEMORY[0x1E69E6720], sub_1D5D27F7C);
      if (v154(v130, 1, v153) == 1)
      {
        sub_1D6FFCA9C(v130, &qword_1EDF2C470, type metadata accessor for FormatNodeStateData.Data, MEMORY[0x1E69E6720], sub_1D5D27F7C);
        __break(1u);
LABEL_120:
        sub_1D6FFCA9C(v135, &qword_1EDF2C470, type metadata accessor for FormatNodeStateData.Data, MEMORY[0x1E69E6720], sub_1D5D27F7C);
        __break(1u);
LABEL_121:

        sub_1D6FFCA9C(v135, &qword_1EDF2C470, type metadata accessor for FormatNodeStateData.Data, MEMORY[0x1E69E6720], sub_1D5D27F7C);
        __break(1u);
LABEL_122:

        sub_1D6FFCA9C(v135, &qword_1EDF2C470, type metadata accessor for FormatNodeStateData.Data, MEMORY[0x1E69E6720], sub_1D5D27F7C);
        __break(1u);
LABEL_123:
        sub_1D6FFCA9C(v130, &qword_1EDF2C470, type metadata accessor for FormatNodeStateData.Data, MEMORY[0x1E69E6720], sub_1D5D27F7C);
        __break(1u);
LABEL_124:
        sub_1D6FFCA9C(v135, &qword_1EDF2C470, type metadata accessor for FormatNodeStateData.Data, MEMORY[0x1E69E6720], sub_1D5D27F7C);
        __break(1u);
LABEL_125:

        sub_1D6FFCA9C(v135, &qword_1EDF2C470, type metadata accessor for FormatNodeStateData.Data, MEMORY[0x1E69E6720], sub_1D5D27F7C);
        __break(1u);
        goto LABEL_126;
      }

      if (swift_getEnumCaseMultiPayload() != 14)
      {
        goto LABEL_131;
      }

      *v485 = *(v130 + 32);
      *&v485[9] = *(v130 + 41);
      v158 = *(v130 + 16);
      v483 = *v130;
      v484 = v158;
      v159 = *(v157 + 16);
      sub_1D6FFC8F0(0, &unk_1EDF195F0, &type metadata for FormatGroupLayoutCoordinateValue, MEMORY[0x1E69E6F90]);
      v160 = swift_allocObject();
      *(v160 + 16) = xmmword_1D7273AE0;
      v161 = v159[13];
      v162 = swift_allocObject();
      v163 = *(v130 + 16);
      *(v162 + 16) = *v130;
      *(v162 + 32) = v163;
      *(v162 + 48) = *(v130 + 32);
      *(v162 + 57) = *(v130 + 41);
      swift_beginAccess();
      v164 = v159[10];
      v165 = v159[11];

      sub_1D5EBC4A0(&v483, &v482);
      sub_1D72634FC();
      v159[8] = v166;
      v159[9] = v167;
      v159[10] = v164;
      v159[11] = v165;
      v168 = v479;
      *(v162 + 80) = v159;
      *(v162 + 88) = v168;
      v169 = *(&v477 + 1);
      *(v162 + 96) = v477;
      *(v162 + 104) = v169;
      *(v162 + 112) = v480;
      *(v160 + 32) = v161;
      *(v160 + 40) = v162 | 0x6000000000000000;
      sub_1D6FFC550(&v483);
LABEL_93:
      v207 = MEMORY[0x1E69E6720];
      sub_1D6FFCA9C(v491, &qword_1EDF2C470, type metadata accessor for FormatNodeStateData.Data, MEMORY[0x1E69E6720], sub_1D5D27F7C);
      v408 = MEMORY[0x1E69E7CC0];
      v409 = v478;
      *v478 = v160;
      v409[1] = v408;
      goto LABEL_94;
    case 16:

      sub_1D5EBC358(v477, *(&v477 + 1), v133);
      v317 = type metadata accessor for FormatNodeStateData.Data(0);
      if ((*(*(v317 - 8) + 48))(v30, 1, v317) == 1)
      {
        goto LABEL_80;
      }

      v137 = v472;
      sub_1D6FFC87C(v30, v472, &qword_1EDF2C470, type metadata accessor for FormatNodeStateData.Data, MEMORY[0x1E69E6720], sub_1D5D27F7C);
      if (swift_getEnumCaseMultiPayload() != 15)
      {
        goto LABEL_74;
      }

      v318 = v491;
      sub_1D6FF5D74(v491, v130, a5, a6);
      v320 = v319;
      v322 = v321;

      v143 = MEMORY[0x1E69E6720];
      sub_1D6FFCA9C(v318, &qword_1EDF2C470, type metadata accessor for FormatNodeStateData.Data, MEMORY[0x1E69E6720], sub_1D5D27F7C);
      v323 = v478;
      *v478 = v320;
      v323[1] = v322;
      v145 = &v488;
      goto LABEL_67;
    case 17:
      v480 = v133;
      v153 = type metadata accessor for FormatNodeStateData.Data(0);
      v324 = *(*(v153 - 1) + 48);
      if (v324(v30, 1, v153) == 1)
      {
LABEL_70:

        v351 = *(&v477 + 1);
        v350 = v477;
        v352 = v480;
LABEL_79:
        sub_1D5EBC358(v350, v351, v352);
LABEL_80:

        sub_1D6FFCA9C(v491, &qword_1EDF2C470, type metadata accessor for FormatNodeStateData.Data, MEMORY[0x1E69E6720], sub_1D5D27F7C);
        goto LABEL_103;
      }

      v191 = v470;
      sub_1D6FFC87C(v30, v470, &qword_1EDF2C470, type metadata accessor for FormatNodeStateData.Data, MEMORY[0x1E69E6720], sub_1D5D27F7C);
      if (swift_getEnumCaseMultiPayload() != 17)
      {
LABEL_95:

        sub_1D5EBC358(v477, *(&v477 + 1), v480);

        sub_1D6FFCA9C(v491, &qword_1EDF2C470, type metadata accessor for FormatNodeStateData.Data, MEMORY[0x1E69E6720], sub_1D5D27F7C);
        sub_1D6FFC9A0(v191, type metadata accessor for FormatNodeStateData.Data);
        goto LABEL_103;
      }

      v135 = v453;
      sub_1D6FFC87C(v491, v453, &qword_1EDF2C470, type metadata accessor for FormatNodeStateData.Data, MEMORY[0x1E69E6720], sub_1D5D27F7C);
      if (v324(v135, 1, v153) == 1)
      {
LABEL_126:

        sub_1D6FFCA9C(v135, &qword_1EDF2C470, type metadata accessor for FormatNodeStateData.Data, MEMORY[0x1E69E6720], sub_1D5D27F7C);
        __break(1u);
LABEL_127:
        sub_1D6FFCA9C(v135, &qword_1EDF2C470, type metadata accessor for FormatNodeStateData.Data, MEMORY[0x1E69E6720], sub_1D5D27F7C);
        __break(1u);
LABEL_128:
        sub_1D6FFCA9C(v153, &qword_1EDF2C470, type metadata accessor for FormatNodeStateData.Data, MEMORY[0x1E69E6720], sub_1D5D27F7C);
        __break(1u);
LABEL_129:

        sub_1D6FFCA9C(v135, &qword_1EDF2C470, type metadata accessor for FormatNodeStateData.Data, MEMORY[0x1E69E6720], sub_1D5D27F7C);
        __break(1u);
        goto LABEL_130;
      }

      v474 = v134;
      if (swift_getEnumCaseMultiPayload() != 17)
      {
        goto LABEL_139;
      }

      v325 = v443;
      sub_1D5BDAB74(v135, v443, type metadata accessor for FormatVideoPlayerData);
      v326 = *((v130 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      sub_1D6FFC8F0(0, &unk_1EDF195F0, &type metadata for FormatGroupLayoutCoordinateValue, MEMORY[0x1E69E6F90]);
      v327 = swift_allocObject();
      *(v327 + 16) = xmmword_1D7273AE0;
      v328 = v326[13];
      sub_1D6FFC6B8(0, &qword_1EC880340, type metadata accessor for FormatVideoPlayerData, &qword_1EC880348, type metadata accessor for FormatVideoPlayerNodeLayoutAttributes);
      v330 = v329;
      v331 = swift_allocBox();
      v333 = (v332 + *(v330 + 48));
      sub_1D5BE4148(v325, v332, type metadata accessor for FormatVideoPlayerData);
      swift_beginAccess();
      v334 = v326[10];
      v335 = v326[11];

      sub_1D72634FC();
      v326[8] = v336;
      v326[9] = v337;
      v326[10] = v334;
      v326[11] = v335;
      v338 = v479;
      *v333 = v326;
      v333[1] = v338;
      v339 = *(&v477 + 1);
      v333[2] = v477;
      v333[3] = v339;
      v333[4] = v480;
      *(v327 + 32) = v328;
      *(v327 + 40) = v331 | 0x7000000000000000;
      sub_1D6FFC9A0(v325, type metadata accessor for FormatVideoPlayerData);
      v207 = MEMORY[0x1E69E6720];
      sub_1D6FFCA9C(v491, &qword_1EDF2C470, type metadata accessor for FormatNodeStateData.Data, MEMORY[0x1E69E6720], sub_1D5D27F7C);
      v340 = MEMORY[0x1E69E7CC0];
      v341 = v478;
      *v478 = v327;
      v341[1] = v340;
      v210 = &v486;
LABEL_63:
      sub_1D6FFC9A0(*(v210 - 32), type metadata accessor for FormatNodeStateData.Data);
LABEL_94:

      v253 = v30;
      goto LABEL_101;
    case 18:
      v474 = v134;
      v153 = type metadata accessor for FormatNodeStateData.Data(0);
      v357 = *(*(v153 - 1) + 48);
      if (v357(v30, 1, v153) == 1)
      {
        goto LABEL_76;
      }

      v480 = v133;
      v155 = v463;
      sub_1D6FFC87C(v30, v463, &qword_1EDF2C470, type metadata accessor for FormatNodeStateData.Data, MEMORY[0x1E69E6720], sub_1D5D27F7C);
      v410 = swift_getEnumCaseMultiPayload();

      if (v410 != 18)
      {
LABEL_102:
        sub_1D5EBC358(v477, *(&v477 + 1), v480);

        sub_1D6FFCA9C(v491, &qword_1EDF2C470, type metadata accessor for FormatNodeStateData.Data, MEMORY[0x1E69E6720], sub_1D5D27F7C);
        sub_1D6FFC9A0(v155, type metadata accessor for FormatNodeStateData.Data);
        goto LABEL_103;
      }

      sub_1D6FFC9A0(v155, type metadata accessor for FormatNodeStateData.Data);
      v135 = v454;
      sub_1D6FFC87C(v491, v454, &qword_1EDF2C470, type metadata accessor for FormatNodeStateData.Data, MEMORY[0x1E69E6720], sub_1D5D27F7C);
      if (v357(v135, 1, v153) == 1)
      {
LABEL_130:
        sub_1D6FFCA9C(v135, &qword_1EDF2C470, type metadata accessor for FormatNodeStateData.Data, MEMORY[0x1E69E6720], sub_1D5D27F7C);
        __break(1u);
LABEL_131:
        sub_1D6FFC9A0(v130, type metadata accessor for FormatNodeStateData.Data);
        __break(1u);
LABEL_132:
        sub_1D6FFC9A0(v135, type metadata accessor for FormatNodeStateData.Data);
        __break(1u);
LABEL_133:

        sub_1D6FFC9A0(v135, type metadata accessor for FormatNodeStateData.Data);
        __break(1u);
LABEL_134:

        sub_1D6FFC9A0(v135, type metadata accessor for FormatNodeStateData.Data);
        __break(1u);
LABEL_135:
        sub_1D6FFC9A0(v130, type metadata accessor for FormatNodeStateData.Data);
        __break(1u);
LABEL_136:
        sub_1D6FFC9A0(v135, type metadata accessor for FormatNodeStateData.Data);
        __break(1u);
LABEL_137:
        sub_1D6FFC9A0(v135, type metadata accessor for FormatNodeStateData.Data);
        __break(1u);
LABEL_138:

        sub_1D6FFC9A0(v135, type metadata accessor for FormatNodeStateData.Data);
        __break(1u);
LABEL_139:

        sub_1D6FFC9A0(v135, type metadata accessor for FormatNodeStateData.Data);
        __break(1u);
LABEL_140:
        sub_1D6FFC9A0(v153, type metadata accessor for FormatNodeStateData.Data);
        __break(1u);
LABEL_141:

        sub_1D6FFC9A0(v135, type metadata accessor for FormatNodeStateData.Data);
        __break(1u);
        goto LABEL_142;
      }

      if (swift_getEnumCaseMultiPayload() != 18)
      {
LABEL_142:
        sub_1D6FFC9A0(v135, type metadata accessor for FormatNodeStateData.Data);
        __break(1u);
        return;
      }

      v411 = v135[1];
      v412 = *v135;
      v413 = *((v130 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
      sub_1D6FFC8F0(0, &unk_1EDF195F0, &type metadata for FormatGroupLayoutCoordinateValue, MEMORY[0x1E69E6F90]);
      v181 = swift_allocObject();
      *(v181 + 16) = xmmword_1D7273AE0;
      v414 = v413[20];
      v415 = swift_allocObject();
      *(v415 + 16) = v412;
      *(v415 + 24) = v411;
      swift_beginAccess();
      v416 = v413[10];
      v417 = v413[11];

      sub_1D5E443B8(v411);
      sub_1D72634FC();
      v413[8] = v418;
      v413[9] = v419;
      v413[10] = v416;
      v413[11] = v417;
      v420 = v479;
      *(v415 + 32) = v413;
      *(v415 + 40) = v420;
      v421 = *(&v477 + 1);
      *(v415 + 48) = v477;
      *(v415 + 56) = v421;
      *(v415 + 64) = v480;
      *(v181 + 32) = v414;
      *(v181 + 40) = v415 | 0x7000000000000004;
      sub_1D5E443C8(v411);
LABEL_100:
      v207 = MEMORY[0x1E69E6720];
      sub_1D6FFCA9C(v491, &qword_1EDF2C470, type metadata accessor for FormatNodeStateData.Data, MEMORY[0x1E69E6720], sub_1D5D27F7C);
      v422 = MEMORY[0x1E69E7CC0];
      v423 = v478;
      *v478 = v181;
      v423[1] = v422;

      v253 = v30;
LABEL_101:
      sub_1D6FFCA9C(v253, &qword_1EDF2C470, type metadata accessor for FormatNodeStateData.Data, v207, sub_1D5D27F7C);
      return;
    case 19:

      sub_1D5EBC358(v477, *(&v477 + 1), v133);
      v353 = type metadata accessor for FormatNodeStateData.Data(0);
      if ((*(*(v353 - 8) + 48))(v30, 1, v353) == 1)
      {
        goto LABEL_80;
      }

      v137 = v464;
      sub_1D6FFC87C(v30, v464, &qword_1EDF2C470, type metadata accessor for FormatNodeStateData.Data, MEMORY[0x1E69E6720], sub_1D5D27F7C);
      if (swift_getEnumCaseMultiPayload() != 19)
      {
        goto LABEL_74;
      }

      sub_1D6FFC9A0(v137, type metadata accessor for FormatNodeStateData.Data);
      v354 = v491;
      sub_1D6FF6120(v491, v130, v466, a5, a6);
      v269 = v355;
      v271 = v356;

      v143 = MEMORY[0x1E69E6720];
      v272 = v354;
LABEL_47:
      sub_1D6FFCA9C(v272, &qword_1EDF2C470, type metadata accessor for FormatNodeStateData.Data, v143, sub_1D5D27F7C);
      v273 = v478;
      *v478 = v269;
      v273[1] = v271;
      goto LABEL_68;
    case 20:

      sub_1D5EBC358(v477, *(&v477 + 1), v133);
      v146 = type metadata accessor for FormatNodeStateData.Data(0);
      if ((*(*(v146 - 8) + 48))(v30, 1, v146) == 1)
      {
        goto LABEL_80;
      }

      v137 = v474;
      sub_1D6FFC87C(v30, v474, &qword_1EDF2C470, type metadata accessor for FormatNodeStateData.Data, MEMORY[0x1E69E6720], sub_1D5D27F7C);
      if (swift_getEnumCaseMultiPayload() == 20)
      {
        v147 = v491;
        sub_1D6FF7198(v491, v130, a5, a6);
        v149 = v148;
        v151 = v150;

        v143 = MEMORY[0x1E69E6720];
        sub_1D6FFCA9C(v147, &qword_1EDF2C470, type metadata accessor for FormatNodeStateData.Data, MEMORY[0x1E69E6720], sub_1D5D27F7C);
        v152 = v478;
        *v478 = v149;
        v152[1] = v151;
        v145 = &v490;
LABEL_67:
        sub_1D6FFC9A0(*(v145 - 32), type metadata accessor for FormatNodeStateData.Data);
LABEL_68:

        sub_1D6FFCA9C(v30, &qword_1EDF2C470, type metadata accessor for FormatNodeStateData.Data, v143, sub_1D5D27F7C);
        return;
      }

LABEL_74:

      sub_1D6FFCA9C(v491, &qword_1EDF2C470, type metadata accessor for FormatNodeStateData.Data, MEMORY[0x1E69E6720], sub_1D5D27F7C);
      sub_1D6FFC9A0(v137, type metadata accessor for FormatNodeStateData.Data);
LABEL_103:
      v424 = type metadata accessor for FormatNodeStateData.Data(0);
      if ((*(*(v424 - 8) + 48))(v30, 1, v424) != 1)
      {
        v425 = v476;
        sub_1D6FFC87C(v30, v476, &qword_1EDF2C470, type metadata accessor for FormatNodeStateData.Data, MEMORY[0x1E69E6720], sub_1D5D27F7C);
        v426 = swift_getEnumCaseMultiPayload();
        sub_1D6FFC9A0(v425, type metadata accessor for FormatNodeStateData.Data);
        if (v426 == 7)
        {
          goto LABEL_112;
        }
      }

      if (v135 > 19)
      {
        if (v135 != 20 && (v135 != 21 || v130 != 0xA000000000000004))
        {
          goto LABEL_113;
        }
      }

      else if (v135 != 6 && v135 != 8)
      {
LABEL_113:
        v428 = v478;
        *v478 = 0;
        v428[1] = 0;
        sub_1D6FFC9A0(v30, sub_1D6FFC4B8);
        return;
      }

LABEL_112:

      sub_1D6FFCA9C(v30, &qword_1EDF2C470, type metadata accessor for FormatNodeStateData.Data, MEMORY[0x1E69E6720], sub_1D5D27F7C);
      v427 = v478;
      *v478 = 0;
      v427[1] = 0;
      return;
    default:

      v351 = *(&v477 + 1);
      v350 = v477;
      v352 = v133;
      goto LABEL_79;
  }
}

void sub_1D6FF4C94(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v5 = *a1;
  v6 = *(a3 + 72);
  v9 = *(a3 + 64);
  v10 = v6;
  *a4 = sub_1D6FF0138(v5, &v9, a2);
  v7 = sub_1D5E27C2C(&unk_1F5119BF8);
  type metadata accessor for FormatResizeAuto();
  v8 = swift_allocObject();
  swift_beginAccess();
  *(v8 + 16) = v7;
  a4[1] = v8;
}

void sub_1D6FF4D38(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = *(*a1 + 16);
  v5 = *(*a1 + 24);
  v7 = *(*a1 + 32);
  v12 = 0;
  v13 = -2;

  v8 = sub_1D6FF0138(v7, &v12, a2);
  type metadata accessor for FormatStateViewNodeStateDataLayoutAttributes();
  v9 = swift_allocObject();
  v10 = sub_1D5E27C2C(&unk_1F5119C20);
  type metadata accessor for FormatResizeAuto();
  v11 = swift_allocObject();
  swift_beginAccess();
  *(v11 + 16) = v10;
  v9[2] = v6;
  v9[3] = v5;
  v9[4] = v8;
  v9[5] = v11;
  *a3 = v9;
}

unint64_t sub_1D6FF4E1C(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, double a7, double a8, double a9, double a10)
{
  if (((result >> 59) & 0x1E | (result >> 2) & 1) == 2)
  {
    v86[3] = v15;
    v86[4] = v14;
    v86[5] = v13;
    v86[6] = v12;
    v86[17] = v10;
    v86[18] = v11;
    v23 = *((result & 0xFFFFFFFFFFFFFFBLL) + 0x30);
    v81 = *((result & 0xFFFFFFFFFFFFFFBLL) + 0x20);
    v82 = v23;
    v83 = *((result & 0xFFFFFFFFFFFFFFBLL) + 0x40);
    v84 = *((result & 0xFFFFFFFFFFFFFFBLL) + 0x50);
    v24 = *((result & 0xFFFFFFFFFFFFFFBLL) + 0x20);
    v80 = *((result & 0xFFFFFFFFFFFFFFBLL) + 0x10);
    v76 = v24;
    v25 = *((result & 0xFFFFFFFFFFFFFFBLL) + 0x40);
    v77 = *((result & 0xFFFFFFFFFFFFFFBLL) + 0x30);
    v78 = v25;
    v79 = *((result & 0xFFFFFFFFFFFFFFBLL) + 0x50);
    v75 = *((result & 0xFFFFFFFFFFFFFFBLL) + 0x10);
    v74[0] = a3;
    v74[1] = a4;
    v74[2] = a5;
    sub_1D6C5C0C4(&v80, &v72);
    v69 = sub_1D7042538(a2, v74);
    if (v69 && (type metadata accessor for FormatGroupLayoutFactory.Bound(0), (sub_1D61881BC() & 1) == 0))
    {
      v43 = v80;
      sub_1D72634FC();
      v45 = v44;
      v47 = v46;

      v50 = sub_1D6FEF804(v48, v49, v45, v47, a9, a10);

      v51 = *(v50 + 16);
      v41 = MEMORY[0x1E69E7CC0];
      if (v51)
      {
        v70 = v43;
        *&v75 = MEMORY[0x1E69E7CC0];
        sub_1D6998414(0, v51, 0);
        v41 = v75;
        v52 = v81;
        v53 = *(v75 + 16);
        v54 = 2 * v53;
        v55 = (v50 + 40);
        do
        {
          v57 = *v55;
          v55 += 2;
          v56 = v57;
          *&v75 = v41;
          v58 = v53 + 1;
          v59 = v41[3];

          if (v53 >= v59 >> 1)
          {
            sub_1D6998414((v59 > 1), v58, 1);
            v41 = v75;
          }

          v41[2] = v58;
          v60 = &v41[v54];
          v60[4] = v52;
          v60[5] = v56;
          v54 += 2;
          ++v53;
          --v51;
        }

        while (v51);
        v43 = v70;
      }

      sub_1D6FFC8F0(0, &qword_1EC88EE78, &type metadata for FormatGroupLayoutCoordinateAccessibilityValue, MEMORY[0x1E69E6F90]);
      v61 = swift_allocObject();
      *(v61 + 16) = xmmword_1D7273AE0;
      v62 = *(v43 + 120);
      *(v61 + 32) = v81;
      *(v61 + 40) = v62;
      *&v75 = v61;

      sub_1D6986AF0(v63);

      sub_1D6C5C120(&v80);
    }

    else
    {
      sub_1D6FF533C(&v80, a3, a4, a5, &v75);
      v68 = v77;
      v65 = v76;
      v66 = v75;
      v72 = *(&v82 + 1);
      v73 = v83;
      *&v75 = *(&v82 + 1);
      BYTE8(v75) = v83;
      v26 = sub_1D6FF0138(v80, &v75, a6);
      swift_beginAccess();
      v27 = v26[4];
      v28 = v26[5];
      sub_1D72634FC();
      v30 = v29;
      v32 = v31;
      v26[2] = v29;
      v26[3] = v31;
      v26[4] = v27;
      v26[5] = v28;
      v67 = a5;
      v33 = *(&v80 + 1);
      v34 = v81;
      v85 = *(&v80 + 1);
      v86[0] = *(&v81 + 1);
      v64 = a3;
      v35 = v82;
      v36 = v84;
      v74[0] = v84;
      type metadata accessor for FormatGroupNodeDataLayoutAttributes();
      v37 = swift_allocObject();
      v38 = v26[7];
      *(v37 + 16) = v26[6];
      *(v37 + 24) = v38;
      v39 = v26[9];
      *(v37 + 32) = v26[8];
      *(v37 + 40) = v39;
      v40 = v26[11];
      *(v37 + 48) = v26[10];
      *(v37 + 56) = v40;
      *(v37 + 64) = v26;
      *(v37 + 72) = v30;
      *(v37 + 80) = v32;
      *(v37 + 88) = v27;
      *(v37 + 96) = v28;
      *(v37 + 104) = v33;
      *(v37 + 112) = v34;
      *(v37 + 128) = v35;
      *(v37 + 136) = v72;
      *(v37 + 144) = v73;
      *(v37 + 168) = v65;
      *(v37 + 152) = v66;
      *(v37 + 184) = v68;
      *(v37 + 192) = v36;
      *(v37 + 200) = MEMORY[0x1E69E7CD0];
      *(v37 + 208) = v69;
      sub_1D6FFC8F0(0, &unk_1EDF195F0, &type metadata for FormatGroupLayoutCoordinateValue, MEMORY[0x1E69E6F90]);
      v41 = swift_allocObject();
      *(v41 + 1) = xmmword_1D7273AE0;
      v42 = swift_allocObject();
      *(v42 + 16) = v37;
      *(v42 + 24) = a2;
      *(v42 + 32) = v64;
      *(v42 + 40) = a4;
      *(v42 + 48) = v67;
      v41[4] = v34;
      v41[5] = v42 | 0x2000000000000000;
      sub_1D6FF924C(&v85, v71, &qword_1EDF32430, &type metadata for FormatResizing);
      sub_1D6FFC820(v86, v71);

      sub_1D6FFC87C(v74, v71, &unk_1EDF0F0F8, type metadata accessor for FormatGroupNodeStyle, MEMORY[0x1E69E6720], sub_1D5D27F7C);
      sub_1D5EBC314(v64, a4, v67);

      sub_1D6C5C120(&v80);
    }

    return v41;
  }

  else
  {
    __break(1u);
  }

  return result;
}

double sub_1D6FF533C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t *a5@<X8>)
{
  sub_1D5D27F7C(0, &qword_1EDF2C470, type metadata accessor for FormatNodeStateData.Data, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = &v25 - v12;
  v14 = *(a1 + 56);
  if (v14)
  {
    type metadata accessor for FormatGroupLayoutFactory.Bound(0);
    v15 = *(v14 + 16);
    v16 = *(v14 + 24);

    sub_1D69B70E8(v15, v16, v13);
    v17 = type metadata accessor for FormatNodeStateData.Data(0);
    if ((*(*(v17 - 8) + 48))(v13, 1, v17) == 1)
    {

      sub_1D6FFCA9C(v13, &qword_1EDF2C470, type metadata accessor for FormatNodeStateData.Data, MEMORY[0x1E69E6720], sub_1D5D27F7C);
    }

    else
    {
      if (swift_getEnumCaseMultiPayload() == 16)
      {
        v18 = *(v13 + 3);
        v27 = *(v13 + 2);
        v28 = v18;
        v29 = v13[64];
        v19 = *(v13 + 1);
        v25 = *v13;
        v26 = v19;
        v20 = sub_1D69B7228(v15, v16);
        sub_1D5D27F7C(0, qword_1EDF064E0, type metadata accessor for FormatGroupNodeMaskLayoutAttributes, type metadata accessor for FormatGroupNodeMaskDataLayoutAttributes);
        v21 = swift_allocObject();
        v22 = v25;
        *(v21 + 40) = v26;
        v23 = v28;
        *(v21 + 56) = v27;
        *(v21 + 72) = v23;
        *(v21 + 16) = v14;
        *(v21 + 88) = v29;
        *(v21 + 24) = v22;
        *a5 = v21;
        a5[1] = v20;
        a5[2] = a2;
        a5[3] = a3;
        a5[4] = a4;
        sub_1D5EBC314(a2, a3, a4);
        return result;
      }

      sub_1D6FFC9A0(v13, type metadata accessor for FormatNodeStateData.Data);
    }
  }

  a5[4] = 0;
  result = 0.0;
  *a5 = 0u;
  *(a5 + 1) = 0u;
  return result;
}

void sub_1D6FF55D0(uint64_t a1, unint64_t a2, uint64_t a3, double a4, double a5)
{
  v8 = MEMORY[0x1E69E6720];
  sub_1D5D27F7C(0, &qword_1EDF2C470, type metadata accessor for FormatNodeStateData.Data, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v41[-v11];
  v13 = type metadata accessor for FormatAdMetricsData(0);
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v16 = &v41[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1D6FFC87C(a1, v12, &qword_1EDF2C470, type metadata accessor for FormatNodeStateData.Data, v8, sub_1D5D27F7C);
  v17 = type metadata accessor for FormatNodeStateData.Data(0);
  if ((*(*(v17 - 8) + 48))(v12, 1, v17) == 1)
  {
    sub_1D6FFCA9C(v12, &qword_1EDF2C470, type metadata accessor for FormatNodeStateData.Data, MEMORY[0x1E69E6720], sub_1D5D27F7C);
    __break(1u);
    goto LABEL_12;
  }

  if (swift_getEnumCaseMultiPayload())
  {
LABEL_12:
    sub_1D6FFC9A0(v12, type metadata accessor for FormatNodeStateData.Data);
    __break(1u);
    goto LABEL_13;
  }

  sub_1D5BDAB74(v12, v16, type metadata accessor for FormatAdMetricsData);
  if (((a2 >> 59) & 0x1E | (a2 >> 2) & 1) == 0xB)
  {
    v18 = *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
    v19 = v18[17];
    if (v19 && *(a3 + 16))
    {
      v20 = v18[16];

      v21 = sub_1D5B69D90(v20, v19);
      if (v22)
      {
        v23 = *(*(a3 + 56) + 8 * v21);
        swift_beginAccess();
        v24 = v23[10];
        v25 = v23[11];

        sub_1D72634FC();
        v23[8] = v26;
        v23[9] = v27;
        v23[10] = v24;
        v23[11] = v25;
LABEL_10:
        swift_beginAccess();
        v28 = v18[10];
        v29 = v18[11];
        sub_1D72634FC();
        v18[8] = v30;
        v18[9] = v31;
        v18[10] = v28;
        v18[11] = v29;
        sub_1D6FFC8F0(0, &unk_1EDF195F0, &type metadata for FormatGroupLayoutCoordinateValue, MEMORY[0x1E69E6F90]);
        v32 = swift_allocObject();
        *(v32 + 16) = xmmword_1D7273AE0;
        v33 = v18[13];
        sub_1D61CAFE8(0);
        v35 = v34;
        v36 = swift_allocBox();
        v38 = v37;
        v39 = *(v35 + 48);
        v40 = *(v35 + 64);
        sub_1D5BE4148(v16, v37, type metadata accessor for FormatAdMetricsData);
        *(v38 + v39) = v18;
        *(v38 + v40) = v23;
        *(v32 + 32) = v33;
        *(v32 + 40) = v36 | 0x4000000000000000;
        sub_1D6FFC9A0(v16, type metadata accessor for FormatAdMetricsData);
        return;
      }
    }

    else
    {
    }

    v23 = 0;
    goto LABEL_10;
  }

LABEL_13:
  sub_1D6FFC9A0(v16, type metadata accessor for FormatAdMetricsData);
  __break(1u);
}

void sub_1D6FF59C8(uint64_t a1, unint64_t a2, double a3, double a4)
{
  v6 = MEMORY[0x1E69E6720];
  sub_1D5D27F7C(0, &qword_1EDF2C470, type metadata accessor for FormatNodeStateData.Data, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = &v29 - v9;
  v11 = type metadata accessor for FormatMicaData(0);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6FFC87C(a1, v10, &qword_1EDF2C470, type metadata accessor for FormatNodeStateData.Data, v6, sub_1D5D27F7C);
  v15 = type metadata accessor for FormatNodeStateData.Data(0);
  if ((*(*(v15 - 8) + 48))(v10, 1, v15) == 1)
  {
    sub_1D6FFCA9C(v10, &qword_1EDF2C470, type metadata accessor for FormatNodeStateData.Data, MEMORY[0x1E69E6720], sub_1D5D27F7C);
    __break(1u);
    goto LABEL_6;
  }

  if (swift_getEnumCaseMultiPayload() != 11)
  {
LABEL_6:
    sub_1D6FFC9A0(v10, type metadata accessor for FormatNodeStateData.Data);
    __break(1u);
    goto LABEL_7;
  }

  sub_1D5BDAB74(v10, v14, type metadata accessor for FormatMicaData);
  if (((a2 >> 59) & 0x1E | (a2 >> 2) & 1) == 0xC)
  {
    v16 = *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
    swift_beginAccess();
    v17 = v16[10];
    v18 = v16[11];

    sub_1D72634FC();
    v16[8] = v19;
    v16[9] = v20;
    v16[10] = v17;
    v16[11] = v18;
    sub_1D6FFC8F0(0, &unk_1EDF195F0, &type metadata for FormatGroupLayoutCoordinateValue, MEMORY[0x1E69E6F90]);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_1D7273AE0;
    v22 = v16[14];
    sub_1D6FFCA00(0, &qword_1EC884E90, type metadata accessor for FormatMicaData, type metadata accessor for FormatMicaNodeLayoutAttributes);
    v24 = v23;
    v25 = swift_allocBox();
    v27 = v26;
    v28 = *(v24 + 48);
    sub_1D5BE4148(v14, v26, type metadata accessor for FormatMicaData);
    *(v27 + v28) = v16;
    *(v21 + 32) = v22;
    *(v21 + 40) = v25 | 0x4000000000000004;
    sub_1D6FFC9A0(v14, type metadata accessor for FormatMicaData);
    return;
  }

LABEL_7:
  sub_1D6FFC9A0(v14, type metadata accessor for FormatMicaData);
  __break(1u);
}

void sub_1D6FF5D74(uint64_t a1, unint64_t a2, double a3, double a4)
{
  v6 = MEMORY[0x1E69E6720];
  sub_1D5D27F7C(0, &qword_1EDF2C470, type metadata accessor for FormatNodeStateData.Data, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = &v29 - v9;
  v11 = type metadata accessor for FormatShareAttributionData(0);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6FFC87C(a1, v10, &qword_1EDF2C470, type metadata accessor for FormatNodeStateData.Data, v6, sub_1D5D27F7C);
  v15 = type metadata accessor for FormatNodeStateData.Data(0);
  if ((*(*(v15 - 8) + 48))(v10, 1, v15) == 1)
  {
    sub_1D6FFCA9C(v10, &qword_1EDF2C470, type metadata accessor for FormatNodeStateData.Data, MEMORY[0x1E69E6720], sub_1D5D27F7C);
    __break(1u);
    goto LABEL_6;
  }

  if (swift_getEnumCaseMultiPayload() != 15)
  {
LABEL_6:
    sub_1D6FFC9A0(v10, type metadata accessor for FormatNodeStateData.Data);
    __break(1u);
    goto LABEL_7;
  }

  sub_1D5BDAB74(v10, v14, type metadata accessor for FormatShareAttributionData);
  if (((a2 >> 59) & 0x1E | (a2 >> 2) & 1) == 0x10)
  {
    v16 = *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
    sub_1D6FFC8F0(0, &unk_1EDF195F0, &type metadata for FormatGroupLayoutCoordinateValue, MEMORY[0x1E69E6F90]);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_1D7273AE0;
    v18 = v16[15];
    sub_1D6FFCA00(0, &qword_1EC899970, type metadata accessor for FormatShareAttributionData, type metadata accessor for FormatShareAttributionNodeLayoutAttributes);
    v20 = v19;
    v21 = swift_allocBox();
    v23 = v22;
    v24 = *(v20 + 48);
    sub_1D5BE4148(v14, v22, type metadata accessor for FormatShareAttributionData);
    swift_beginAccess();
    v25 = v16[12];
    v26 = v16[13];

    sub_1D72634FC();
    v16[10] = v27;
    v16[11] = v28;
    v16[12] = v25;
    v16[13] = v26;
    *(v23 + v24) = v16;
    *(v17 + 32) = v18;
    *(v17 + 40) = v21 | 0x6000000000000004;
    sub_1D6FFC9A0(v14, type metadata accessor for FormatShareAttributionData);
    return;
  }

LABEL_7:
  sub_1D6FFC9A0(v14, type metadata accessor for FormatShareAttributionData);
  __break(1u);
}

void sub_1D6FF6120(uint64_t a1, unint64_t a2, uint64_t a3, double a4, double a5)
{
  v8 = MEMORY[0x1E69E6720];
  sub_1D5D27F7C(0, &qword_1EDF2C470, type metadata accessor for FormatNodeStateData.Data, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v32[-v11];
  sub_1D6FFC87C(a1, &v32[-v11], &qword_1EDF2C470, type metadata accessor for FormatNodeStateData.Data, v8, sub_1D5D27F7C);
  v13 = type metadata accessor for FormatNodeStateData.Data(0);
  if ((*(*(v13 - 8) + 48))(v12, 1, v13) == 1)
  {
    sub_1D6FFCA9C(v12, &qword_1EDF2C470, type metadata accessor for FormatNodeStateData.Data, MEMORY[0x1E69E6720], sub_1D5D27F7C);
    __break(1u);
    goto LABEL_12;
  }

  if (swift_getEnumCaseMultiPayload() != 19)
  {
LABEL_12:
    sub_1D6FFC9A0(v12, type metadata accessor for FormatNodeStateData.Data);
    __break(1u);
    goto LABEL_13;
  }

  v14 = *v12;
  if (((a2 >> 59) & 0x1E | (a2 >> 2) & 1) == 0x13)
  {
    v15 = *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
    v16 = v15[24];
    if (v16 && *(a3 + 16))
    {
      v17 = v15[23];

      v18 = sub_1D5B69D90(v17, v16);
      if (v19)
      {
        v20 = *(*(a3 + 56) + 8 * v18);
        swift_beginAccess();
        v21 = v20[10];
        v22 = v20[11];

        sub_1D72634FC();
        v20[8] = v23;
        v20[9] = v24;
        v20[10] = v21;
        v20[11] = v22;
LABEL_10:
        swift_beginAccess();
        v25 = v15[10];
        v26 = v15[11];
        sub_1D72634FC();
        v15[8] = v27;
        v15[9] = v28;
        v15[10] = v25;
        v15[11] = v26;
        sub_1D6FFC8F0(0, &unk_1EDF195F0, &type metadata for FormatGroupLayoutCoordinateValue, MEMORY[0x1E69E6F90]);
        v29 = swift_allocObject();
        *(v29 + 16) = xmmword_1D7273AE0;
        v30 = v15[21];
        v31 = swift_allocObject();
        *(v31 + 16) = v14;
        *(v31 + 24) = v15;
        *(v31 + 32) = v20;
        *(v29 + 32) = v30;
        *(v29 + 40) = v31 | 0x8000000000000004;
        return;
      }
    }

    else
    {
    }

    v20 = 0;
    goto LABEL_10;
  }

LABEL_13:

  __break(1u);
}

void sub_1D6FF6464(uint64_t a1, unint64_t a2, void *a3, double a4, double a5, double a6, double a7)
{
  v141 = a3;
  v11 = sub_1D725895C();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v13);
  v129 = &v121 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for FeedItem(0);
  MEMORY[0x1EEE9AC00](v15 - 8, v16);
  v135 = &v121 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1E69E6720];
  sub_1D5D27F7C(0, &qword_1EDF2C470, type metadata accessor for FormatNodeStateData.Data, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v19 - 8, v20);
  v22 = &v121 - v21;
  v23 = type metadata accessor for FormatItemNodeData(0);
  MEMORY[0x1EEE9AC00](v23, v24);
  v134 = &v121 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26, v27);
  v29 = &v121 - v28;
  sub_1D6FFC87C(a1, v22, &qword_1EDF2C470, type metadata accessor for FormatNodeStateData.Data, v18, sub_1D5D27F7C);
  v30 = type metadata accessor for FormatNodeStateData.Data(0);
  if ((*(*(v30 - 8) + 48))(v22, 1, v30) == 1)
  {
    sub_1D6FFCA9C(v22, &qword_1EDF2C470, type metadata accessor for FormatNodeStateData.Data, MEMORY[0x1E69E6720], sub_1D5D27F7C);
    __break(1u);
    goto LABEL_27;
  }

  if (swift_getEnumCaseMultiPayload() != 4)
  {
LABEL_27:
    sub_1D6FFC9A0(v22, type metadata accessor for FormatNodeStateData.Data);
    __break(1u);
    goto LABEL_28;
  }

  sub_1D5BDAB74(v22, v29, type metadata accessor for FormatItemNodeData);
  if ((a2 >> 59) & 0x1E | (a2 >> 2) & 1)
  {
LABEL_28:
    sub_1D6FFC9A0(v29, type metadata accessor for FormatItemNodeData);
    __break(1u);
    return;
  }

  v31 = *(a2 + 16);
  v32 = v31[2];
  v33 = *(v32 + 72);
  if (v33)
  {
    v131 = v12;
    v127 = v11;
    v137 = *(v32 + 64);

    v139 = v33;

    v35 = v141;
    v37 = sub_1D6FEF804(v34, v36, 0.0, 0.0, a4, a5);
    v121 = v38;

    v39 = v31[3];
    v40 = v31[4];
    v41 = *&v29[*(v23 + 36)];
    v123 = *(v35 + *(type metadata accessor for FormatGroupLayoutFactory.Bound(0) + 52));
    v132 = v29;
    sub_1D5BE4148(v29, v135, type metadata accessor for FeedItem);
    v42 = v31[8];
    v133 = v31[7];
    v43 = v31[2];
    v44 = v43[2];
    v45 = v43[3];
    v46 = v43[4];
    v47 = v43[5];
    v48 = v43[11];
    v136 = v43[10];
    v50 = v43[12];
    v49 = v43[13];
    v128 = v50;
    v140 = v49;
    v51 = *(v37 + 16);
    v52 = MEMORY[0x1E69E7CC0];
    v138 = v40;
    v130 = v31;
    v126 = v42;
    v125 = v41;
    v124 = v39;
    v122 = v37;
    if (v51)
    {

      sub_1D5EB1500(v42);
      v142[0] = v52;

      sub_1D6998434(0, v51, 0);
      v53 = v142[0];
      v54 = *(v142[0] + 16);
      v55 = (v37 + 40);
      do
      {
        v57 = *v55;
        v55 += 2;
        v56 = v57;
        v142[0] = v53;
        v58 = v53[3];

        if (v54 >= v58 >> 1)
        {
          sub_1D6998434((v58 > 1), v54 + 1, 1);
          v53 = v142[0];
        }

        v53[2] = v54 + 1;
        v53[v54++ + 4] = v56;
        --v51;
      }

      while (v51);
      v59 = v131;
      v31 = v130;
    }

    else
    {

      sub_1D5EB1500(v42);

      v53 = MEMORY[0x1E69E7CC0];
      v59 = v131;
    }

    v60 = v48;
    v61 = *(v31[2] + 120);

    sub_1D6FB9AE4(v62);
    v64 = v63;
    swift_bridgeObjectRelease_n();

    v142[0] = v61;
    sub_1D6986BE4(v64);
    sub_1D5D27F7C(0, &qword_1EDF1AFA8, type metadata accessor for FormatAccessibilityLayoutValue, MEMORY[0x1E69E62F8]);
    sub_1D6FFC2E8(&unk_1EDF1AF98, MEMORY[0x1E69E6328]);
    v65 = sub_1D72623CC();

    MEMORY[0x1EEE9AC00](v66, v67);
    *(&v121 - 2) = v141;
    v68 = sub_1D5FBC744(sub_1D6FFCC34, (&v121 - 4), v65);

    v29 = v132;
    v69 = v134;
    sub_1D5BE4148(v132, v134, type metadata accessor for FormatItemNodeData);
    v70 = *(v31[2] + 128);
    sub_1D5D27F7C(0, &qword_1EDF23420, type metadata accessor for FormatItemNodeData, type metadata accessor for FormatDataLayoutAttributes);
    v71 = swift_allocObject();
    v71[2] = v44;
    v122 = v71 + 2;
    v71[3] = v45;
    v71[4] = v46;
    v71[5] = v47;
    v72 = v139;
    v71[6] = v137;
    v71[7] = v72;
    v71[8] = v136;
    v71[9] = v60;
    v73 = v140;
    v71[10] = v128;
    v71[11] = v73;
    v71[13] = v68;
    sub_1D5BE4148(v69, v71 + *(*v71 + 136), type metadata accessor for FormatItemNodeData);
    *(v71 + *(*v71 + 144)) = v70;
    v74 = (v71 + *(*v71 + 168));
    *v74 = a4;
    v74[1] = a5;
    v128 = v71;
    v71[12] = v53;
    v146 = MEMORY[0x1E69E7CC0];
    v75 = v53[2];
    if (v75)
    {
      v76 = v53 + 4;
      v137 = type metadata accessor for FormatDataLayoutViewModel();
      v121 = v53;

      v77 = MEMORY[0x1E69E7CC0];
      do
      {
        v78 = *v76;
        v141 = v76 + 1;
        v79 = swift_allocObject();
        *(v79 + 16) = v78;
        v145 = v78;
        swift_retain_n();
        sub_1D6EE7974(v142, v80);
        v81 = v142[1];
        v82 = v144;
        *(v79 + 24) = v142[0];
        *(v79 + 32) = v81;
        *(v79 + 40) = v143;
        *(v79 + 56) = v82;

        MEMORY[0x1DA6F9CE0](v83);
        if (*((v146 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v146 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1D726272C();
        }

        sub_1D726278C();
        v84 = v146;
        v85 = *(v79 + 24);
        v86 = *(v79 + 32);
        v87 = *(v79 + 40);
        v139 = *(v79 + 48);
        v140 = v85;
        v88 = *(v79 + 56);

        sub_1D5F33D5C(v87);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v136 = v84;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v77 = sub_1D698F980(0, *(v77 + 2) + 1, 1, v77);
        }

        v91 = *(v77 + 2);
        v90 = *(v77 + 3);
        if (v91 >= v90 >> 1)
        {
          v77 = sub_1D698F980((v90 > 1), v91 + 1, 1, v77);
        }

        *(v77 + 2) = v91 + 1;
        v92 = &v77[40 * v91];
        v93 = v139;
        *(v92 + 4) = v140;
        *(v92 + 5) = v86;
        *(v92 + 6) = v87;
        *(v92 + 7) = v93;
        v92[64] = v88;
        --v75;
        v94 = v138;
        v76 = v141;
      }

      while (v75);
      v29 = v132;
      v59 = v131;
      v95 = v121;
      v96 = v136;
    }

    else
    {

      v95 = v53;
      v77 = MEMORY[0x1E69E7CC0];
      v96 = MEMORY[0x1E69E7CC0];
      v94 = v138;
    }

    sub_1D6FFC9A0(v134, type metadata accessor for FormatItemNodeData);

    v97 = v128;
    *(v128 + *(*v128 + 152)) = v96;
    type metadata accessor for FormatDataLayoutViewKey();
    v98 = swift_allocObject();
    *(v98 + 16) = v77;
    *(v97 + *(*v97 + 160)) = v98;
    sub_1D72634FC();
    v100 = v99;
    v102 = v101;
    swift_beginAccess();
    v97[2] = v100;
    v97[3] = v102;
    v97[4] = v46;
    v97[5] = v47;
    type metadata accessor for FormatItemNodeDataLayoutAttributes(0);
    v103 = swift_allocObject();
    *(v103 + 32) = v124;
    *(v103 + 40) = v94;
    *(v103 + 48) = 0;
    *(v103 + 56) = 0;
    *(v103 + 64) = v125;
    *(v103 + 72) = v123;
    v104 = v135;
    sub_1D5BE4148(v135, v103 + OBJC_IVAR____TtC8NewsFeed34FormatItemNodeDataLayoutAttributes_feedItem, type metadata accessor for FeedItem);
    *(v103 + OBJC_IVAR____TtC8NewsFeed34FormatItemNodeDataLayoutAttributes_zIndex) = v133;
    *(v103 + OBJC_IVAR____TtC8NewsFeed34FormatItemNodeDataLayoutAttributes_visibility) = v126;
    *(v103 + OBJC_IVAR____TtC8NewsFeed34FormatItemNodeDataLayoutAttributes_dataLayoutAttributes) = v97;
    v105 = v129;
    sub_1D725894C();
    v106 = sub_1D725893C();
    v108 = v107;
    v109 = *(v59 + 8);

    v109(v105, v127);
    *(v103 + 16) = v106;
    *(v103 + 24) = v108;
    v110 = sub_1D6EE5A3C(v95);
    v112 = v111;
    sub_1D6FFC9A0(v104, type metadata accessor for FeedItem);

    v113 = (v103 + OBJC_IVAR____TtC8NewsFeed34FormatItemNodeDataLayoutAttributes_reuseIdentifier);
    *v113 = v110;
    v113[1] = v112;
    sub_1D6FFC8F0(0, &unk_1EDF195F0, &type metadata for FormatGroupLayoutCoordinateValue, MEMORY[0x1E69E6F90]);
    v114 = swift_allocObject();
    *(v114 + 16) = xmmword_1D7273AE0;
    sub_1D6FFCA00(0, &qword_1EDF10430, type metadata accessor for FormatItemNodeData, type metadata accessor for FormatItemNodeDataLayoutAttributes);
    v116 = v115;
    v117 = swift_allocBox();
    v119 = v118;
    v120 = *(v116 + 48);
    sub_1D5BE4148(v29, v118, type metadata accessor for FormatItemNodeData);
    *(v119 + v120) = v103;
    *(v114 + 32) = v133;
    *(v114 + 40) = v117 | 0x8000000000000000;
  }

  sub_1D6FFC9A0(v29, type metadata accessor for FormatItemNodeData);
}

void sub_1D6FF7198(uint64_t a1, unint64_t a2, double a3, double a4)
{
  v6 = MEMORY[0x1E69E6720];
  sub_1D5D27F7C(0, &qword_1EDF2C470, type metadata accessor for FormatNodeStateData.Data, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = &v29 - v9;
  v11 = type metadata accessor for FormatSponsoredBannerData(0);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6FFC87C(a1, v10, &qword_1EDF2C470, type metadata accessor for FormatNodeStateData.Data, v6, sub_1D5D27F7C);
  v15 = type metadata accessor for FormatNodeStateData.Data(0);
  if ((*(*(v15 - 8) + 48))(v10, 1, v15) == 1)
  {
    sub_1D6FFCA9C(v10, &qword_1EDF2C470, type metadata accessor for FormatNodeStateData.Data, MEMORY[0x1E69E6720], sub_1D5D27F7C);
    __break(1u);
    goto LABEL_6;
  }

  if (swift_getEnumCaseMultiPayload() != 20)
  {
LABEL_6:
    sub_1D6FFC9A0(v10, type metadata accessor for FormatNodeStateData.Data);
    __break(1u);
    goto LABEL_7;
  }

  sub_1D5BDAB74(v10, v14, type metadata accessor for FormatSponsoredBannerData);
  if (((a2 >> 59) & 0x1E | (a2 >> 2) & 1) == 0x14)
  {
    v16 = *((a2 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
    sub_1D6FFC8F0(0, &unk_1EDF195F0, &type metadata for FormatGroupLayoutCoordinateValue, MEMORY[0x1E69E6F90]);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_1D7273AE0;
    v18 = v16[13];
    sub_1D6FFCA00(0, qword_1EDF24398, type metadata accessor for FormatSponsoredBannerData, type metadata accessor for FormatSponsoredBannerLayoutAttributes);
    v20 = v19;
    v21 = swift_allocBox();
    v23 = v22;
    v24 = *(v20 + 48);
    sub_1D5BE4148(v14, v22, type metadata accessor for FormatSponsoredBannerData);
    swift_beginAccess();
    v25 = v16[10];
    v26 = v16[11];

    sub_1D72634FC();
    v16[8] = v27;
    v16[9] = v28;
    v16[10] = v25;
    v16[11] = v26;
    *(v23 + v24) = v16;
    *(v17 + 32) = v18;
    *(v17 + 40) = v21 | 0x9000000000000000;
    sub_1D6FFC9A0(v14, type metadata accessor for FormatSponsoredBannerData);
    return;
  }

LABEL_7:
  sub_1D6FFC9A0(v14, type metadata accessor for FormatSponsoredBannerData);
  __break(1u);
}

double sub_1D6FF7540@<D0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1D6FFC378(0);
  v5 = v4 - 8;
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5D27F7C(0, &qword_1EDF2C470, type metadata accessor for FormatNodeStateData.Data, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = (&v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v23 - v15;
  v17 = *a1;
  type metadata accessor for FormatGroupLayoutFactory.Bound(0);
  sub_1D69B70E8(*(v17 + 16), *(v17 + 24), v16);
  v18 = *(v5 + 56);
  *v8 = *(v17 + 32);
  sub_1D6FFC410(v16, &v8[v18], &qword_1EDF2C470, type metadata accessor for FormatNodeStateData.Data);
  v19 = type metadata accessor for FormatNodeStateData.Data(0);
  if ((*(*(v19 - 8) + 48))(&v8[v18], 1, v19) == 1)
  {
    if (*v8 - 18 >= 6)
    {
      type metadata accessor for FormatDataAccessibilityValue();
      v20 = swift_allocObject();
      *(v20 + 16) = v17;
      *(v20 + 24) = 0xF000000000000007;
LABEL_6:
      *a2 = v20;

      sub_1D6FFCA9C(&v8[v18], &qword_1EDF2C470, type metadata accessor for FormatNodeStateData.Data, MEMORY[0x1E69E6720], sub_1D5D27F7C);
      return result;
    }
  }

  else
  {
    sub_1D6FFC87C(&v8[v18], v12, &qword_1EDF2C470, type metadata accessor for FormatNodeStateData.Data, MEMORY[0x1E69E6720], sub_1D5D27F7C);
    if (swift_getEnumCaseMultiPayload() == 7)
    {
      v21 = *v12;
      type metadata accessor for FormatDataAccessibilityValue();
      v20 = swift_allocObject();
      *(v20 + 16) = v17;
      *(v20 + 24) = v21;
      goto LABEL_6;
    }

    sub_1D6FFC9A0(v12, type metadata accessor for FormatNodeStateData.Data);
  }

  *a2 = 0;
  sub_1D6FFC9A0(v8, sub_1D6FFC378);
  return result;
}

uint64_t sub_1D6FF7858(uint64_t a1)
{
  result = sub_1D6FFA0A0(&qword_1EDF26100, type metadata accessor for FormatGroupLayoutFactory.Bound, &unk_1D7380110);
  *(a1 + 8) = result;
  return result;
}

void sub_1D6FF78E8(uint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4, void *a5)
{
  v5 = a3[1];
  if (v5 < 1)
  {
    v7 = MEMORY[0x1E69E7CC0];
LABEL_138:
    v6 = *a1;
    if (*a1)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        goto LABEL_171;
      }

      goto LABEL_140;
    }

LABEL_176:
    __break(1u);
    return;
  }

  v6 = 0;
  v7 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    if (v6 + 1 >= v5)
    {
      v5 = v6 + 1;
    }

    else
    {
      v140 = v7;
      v8 = 8 * v6;
      v9 = (*a3 + 8 * v6);
      v11 = *v9;
      v10 = v9 + 2;
      v12 = *(*(*a3 + 8 * (v6 + 1)) + *a5);
      swift_beginAccess();
      v13 = *(v12 + 16);
      v14 = *(v12 + 24);
      v15 = *(v11 + *a5);
      swift_beginAccess();
      v16 = *(v15 + 24);
      if (v14 == v16)
      {
        v17 = v13 <= *(v15 + 16);
      }

      else
      {
        v17 = v14 < v16;
      }

      v18 = v6 + 2;
      while (v5 != v18)
      {
        v19 = *(v10 - 1);
        v20 = *(*v10 + *a5);
        swift_beginAccess();
        v21 = *(v20 + 16);
        v22 = *(v20 + 24);
        v23 = *(v19 + *a5);
        swift_beginAccess();
        v24 = *(v23 + 24);
        v25 = v21 > *(v23 + 16);
        if (v22 != v24)
        {
          v25 = v22 >= v24;
        }

        ++v18;
        ++v10;
        if (v17 == v25)
        {
          v5 = v18 - 1;
          break;
        }
      }

      v7 = v140;
      if (v17)
      {
        if (v5 < v6)
        {
          goto LABEL_167;
        }

        if (v6 < v5)
        {
          v26 = 8 * v5 - 8;
          v27 = v5;
          v28 = v6;
          do
          {
            if (v28 != --v27)
            {
              v29 = *a3;
              if (!*a3)
              {
                goto LABEL_173;
              }

              v30 = *(v29 + v8);
              *(v29 + v8) = *(v29 + v26);
              *(v29 + v26) = v30;
            }

            ++v28;
            v26 -= 8;
            v8 += 8;
          }

          while (v28 < v27);
        }
      }
    }

    v31 = a3[1];
    if (v5 >= v31)
    {
      v34 = v5;
      if (v5 < v6)
      {
        goto LABEL_163;
      }
    }

    else
    {
      if (__OFSUB__(v5, v6))
      {
        goto LABEL_166;
      }

      v32 = v5;
      if (v5 - v6 >= a4)
      {
        goto LABEL_31;
      }

      v33 = v6 + a4;
      if (__OFADD__(v6, a4))
      {
        goto LABEL_168;
      }

      if (v33 >= v31)
      {
        v33 = a3[1];
      }

      if (v33 < v6)
      {
        goto LABEL_169;
      }

      if (v5 == v33)
      {
LABEL_31:
        v34 = v5;
        if (v5 < v6)
        {
          goto LABEL_163;
        }
      }

      else
      {
        v139 = v6;
        v142 = v7;
        v110 = *a3;
        v111 = *a3 + 8 * v5 - 8;
        v112 = v6 - v5;
        __srca = v33;
        do
        {
          v113 = v32;
          v114 = *(v110 + 8 * v32);
          v115 = v112;
          v116 = v111;
          do
          {
            v117 = *v116;
            v6 = a5;
            v118 = *(v114 + *a5);
            swift_beginAccess();
            v119 = *(v118 + 16);
            v120 = *(v118 + 24);
            v7 = *(v117 + *a5);
            swift_beginAccess();
            v121 = *(v7 + 3);
            v122 = v119 <= *(v7 + 2);
            if (v120 != v121)
            {
              v122 = v120 < v121;
            }

            if (!v122)
            {
              break;
            }

            if (!v110)
            {
              goto LABEL_170;
            }

            v123 = *v116;
            v114 = v116[1];
            *v116 = v114;
            v116[1] = v123;
            --v116;
          }

          while (!__CFADD__(v115++, 1));
          v32 = v113 + 1;
          v111 += 8;
          --v112;
        }

        while ((v113 + 1) != __srca);
        v34 = __srca;
        v6 = v139;
        v7 = v142;
        if (__srca < v139)
        {
          goto LABEL_163;
        }
      }
    }

    v132 = v34;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v7 = sub_1D698BA94(0, *(v7 + 2) + 1, 1, v7);
    }

    v36 = *(v7 + 2);
    v35 = *(v7 + 3);
    v37 = v36 + 1;
    if (v36 >= v35 >> 1)
    {
      v7 = sub_1D698BA94((v35 > 1), v36 + 1, 1, v7);
    }

    *(v7 + 2) = v37;
    v38 = &v7[16 * v36];
    *(v38 + 4) = v6;
    *(v38 + 5) = v132;
    v39 = *a1;
    if (!*a1)
    {
      goto LABEL_174;
    }

    if (v36)
    {
      break;
    }

LABEL_3:
    v5 = a3[1];
    v6 = v132;
    if (v132 >= v5)
    {
      goto LABEL_138;
    }
  }

  __src = *a1;
  while (1)
  {
    v40 = v37 - 1;
    if (v37 >= 4)
    {
      v45 = &v7[16 * v37 + 32];
      v46 = *(v45 - 64);
      v47 = *(v45 - 56);
      v51 = __OFSUB__(v47, v46);
      v48 = v47 - v46;
      if (v51)
      {
        goto LABEL_152;
      }

      v50 = *(v45 - 48);
      v49 = *(v45 - 40);
      v51 = __OFSUB__(v49, v50);
      v43 = v49 - v50;
      v44 = v51;
      if (v51)
      {
        goto LABEL_153;
      }

      v52 = &v7[16 * v37];
      v54 = *v52;
      v53 = *(v52 + 1);
      v51 = __OFSUB__(v53, v54);
      v55 = v53 - v54;
      if (v51)
      {
        goto LABEL_155;
      }

      v51 = __OFADD__(v43, v55);
      v56 = v43 + v55;
      if (v51)
      {
        goto LABEL_158;
      }

      if (v56 >= v48)
      {
        v74 = &v7[16 * v40 + 32];
        v76 = *v74;
        v75 = *(v74 + 1);
        v51 = __OFSUB__(v75, v76);
        v77 = v75 - v76;
        if (v51)
        {
          goto LABEL_162;
        }

        if (v43 < v77)
        {
          v40 = v37 - 2;
        }

        goto LABEL_75;
      }

      goto LABEL_54;
    }

    if (v37 == 3)
    {
      v41 = *(v7 + 4);
      v42 = *(v7 + 5);
      v51 = __OFSUB__(v42, v41);
      v43 = v42 - v41;
      v44 = v51;
LABEL_54:
      if (v44)
      {
        goto LABEL_154;
      }

      v57 = &v7[16 * v37];
      v59 = *v57;
      v58 = *(v57 + 1);
      v60 = __OFSUB__(v58, v59);
      v61 = v58 - v59;
      v62 = v60;
      if (v60)
      {
        goto LABEL_157;
      }

      v63 = &v7[16 * v40 + 32];
      v65 = *v63;
      v64 = *(v63 + 1);
      v51 = __OFSUB__(v64, v65);
      v66 = v64 - v65;
      if (v51)
      {
        goto LABEL_160;
      }

      if (__OFADD__(v61, v66))
      {
        goto LABEL_161;
      }

      if (v61 + v66 >= v43)
      {
        if (v43 < v66)
        {
          v40 = v37 - 2;
        }

        goto LABEL_75;
      }

      goto LABEL_68;
    }

    v67 = &v7[16 * v37];
    v69 = *v67;
    v68 = *(v67 + 1);
    v51 = __OFSUB__(v68, v69);
    v61 = v68 - v69;
    v62 = v51;
LABEL_68:
    if (v62)
    {
      goto LABEL_156;
    }

    v70 = &v7[16 * v40];
    v72 = *(v70 + 4);
    v71 = *(v70 + 5);
    v51 = __OFSUB__(v71, v72);
    v73 = v71 - v72;
    if (v51)
    {
      goto LABEL_159;
    }

    if (v73 < v61)
    {
      goto LABEL_3;
    }

LABEL_75:
    if (v40 - 1 >= v37)
    {
      break;
    }

    v78 = *a3;
    if (!*a3)
    {
      __break(1u);
LABEL_173:
      __break(1u);
LABEL_174:
      __break(1u);
      goto LABEL_175;
    }

    v135 = v40 - 1;
    v136 = v40;
    v79 = *&v7[16 * v40 + 32];
    v80 = *&v7[16 * v40 + 40];
    v138 = *&v7[16 * v40 + 16];
    v141 = v7;
    v81 = (v78 + 8 * v138);
    v82 = 8 * v79;
    v83 = (v78 + 8 * v79);
    v137 = v80;
    v84 = 8 * v80;
    v85 = (v78 + 8 * v80);
    v6 = 8 * v79 - 8 * v138;
    v86 = 8 * v80 - 8 * v79;
    if (v6 >= v86)
    {
      if (v83 != v39 || v85 <= v39)
      {
        memmove(v39, (v78 + 8 * v79), 8 * v80 - 8 * v79);
      }

      v87 = &v39[v86];
      if (v86 < 1 || v82 <= 8 * v138)
      {
        v88 = __src;
        v108 = v83;
      }

      else
      {
        do
        {
          __dst = v83;
          v97 = v83 - 8;
          v85 -= 8;
          v98 = v87;
          while (1)
          {
            v99 = *(v98 - 1);
            v98 -= 8;
            v100 = v85 + 8;
            v83 = v97;
            v101 = *v97;
            v6 = a5;
            v102 = *(v99 + *a5);
            swift_beginAccess();
            v103 = *(v102 + 16);
            v104 = *(v102 + 24);
            v105 = *(v101 + *a5);
            swift_beginAccess();
            v106 = *(v105 + 24);
            v107 = v103 <= *(v105 + 16);
            if (v104 != v106)
            {
              v107 = v104 < v106;
            }

            if (v107)
            {
              break;
            }

            if (v100 != v87)
            {
              *v85 = *v98;
            }

            v85 -= 8;
            v87 = v98;
            v97 = v83;
            if (v98 <= __src)
            {
              v87 = v98;
              v88 = __src;
              v108 = __dst;
              goto LABEL_116;
            }
          }

          v108 = v83;
          if (v100 != __dst)
          {
            *v85 = *v83;
          }

          v88 = __src;
        }

        while (v87 > __src && v81 < v83);
      }
    }

    else
    {
      if (v81 != v39 || v83 <= v39)
      {
        memmove(v39, (v78 + 8 * v138), 8 * v79 - 8 * v138);
      }

      v87 = &v39[v6];
      if (v6 >= 1 && v84 > v82)
      {
        v88 = __src;
        while (1)
        {
          v89 = *v88;
          v90 = *(*v83 + *a5);
          swift_beginAccess();
          v91 = *(v90 + 16);
          v92 = *(v90 + 24);
          v6 = *(v89 + *a5);
          swift_beginAccess();
          v93 = *(v6 + 24);
          v94 = v91 <= *(v6 + 16);
          if (v92 != v93)
          {
            v94 = v92 < v93;
          }

          if (!v94)
          {
            break;
          }

          v95 = v83;
          v96 = v81 == v83;
          v83 += 8;
          if (!v96)
          {
            goto LABEL_91;
          }

LABEL_92:
          v81 += 8;
          if (v88 >= v87 || v83 >= v85)
          {
            goto LABEL_113;
          }
        }

        v95 = v88;
        v96 = v81 == v88;
        v88 += 8;
        if (v96)
        {
          goto LABEL_92;
        }

LABEL_91:
        *v81 = *v95;
        goto LABEL_92;
      }

      v88 = __src;
LABEL_113:
      v108 = v81;
    }

LABEL_116:
    if (v108 != v88 || v108 >= &v88[(v87 - v88 + (v87 - v88 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8])
    {
      memmove(v108, v88, 8 * ((v87 - v88) / 8));
    }

    v7 = v137;
    v39 = __src;
    if (v137 < v138)
    {
      goto LABEL_150;
    }

    v6 = v141;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v6 = sub_1D62FF50C(v141);
    }

    if (v136 > *(v6 + 16))
    {
      goto LABEL_151;
    }

    v109 = v6 + 16 * v135;
    *(v109 + 32) = v138;
    *(v109 + 40) = v137;
    sub_1D62FF480(v136);
    v7 = v6;
    v37 = *(v6 + 16);
    if (v37 <= 1)
    {
      goto LABEL_3;
    }
  }

  __break(1u);
LABEL_150:
  __break(1u);
LABEL_151:
  __break(1u);
LABEL_152:
  __break(1u);
LABEL_153:
  __break(1u);
LABEL_154:
  __break(1u);
LABEL_155:
  __break(1u);
LABEL_156:
  __break(1u);
LABEL_157:
  __break(1u);
LABEL_158:
  __break(1u);
LABEL_159:
  __break(1u);
LABEL_160:
  __break(1u);
LABEL_161:
  __break(1u);
LABEL_162:
  __break(1u);
LABEL_163:
  __break(1u);
LABEL_164:
  __break(1u);
LABEL_165:
  __break(1u);
LABEL_166:
  __break(1u);
LABEL_167:
  __break(1u);
LABEL_168:
  __break(1u);
LABEL_169:
  __break(1u);
LABEL_170:
  __break(1u);
LABEL_171:
  v7 = sub_1D62FF50C(v7);
LABEL_140:
  v125 = *(v7 + 2);
  if (v125 >= 2)
  {
    while (*a3)
    {
      v126 = *&v7[16 * v125];
      v127 = *&v7[16 * v125 + 24];
      sub_1D6FF822C((*a3 + 8 * v126), (*a3 + 8 * *&v7[16 * v125 + 16]), (*a3 + 8 * v127), v6, a5);
      if (v131)
      {
        goto LABEL_148;
      }

      if (v127 < v126)
      {
        goto LABEL_164;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = sub_1D62FF50C(v7);
      }

      if (v125 - 2 >= *(v7 + 2))
      {
        goto LABEL_165;
      }

      v128 = &v7[16 * v125];
      *v128 = v126;
      *(v128 + 1) = v127;
      sub_1D62FF480(v125 - 1);
      v125 = *(v7 + 2);
      if (v125 <= 1)
      {
        goto LABEL_148;
      }
    }

LABEL_175:
    __break(1u);
    goto LABEL_176;
  }

LABEL_148:
}

uint64_t sub_1D6FF822C(char *__dst, char *__src, char *a3, char *a4, void *a5)
{
  v5 = a4;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 3;
  v11 = a3 - __src;
  v12 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 3;
  if (v10 >= v12 >> 3)
  {
    if (a4 != __src || &__src[8 * v13] <= a4)
    {
      v26 = a3;
      memmove(a4, __src, 8 * v13);
      a3 = v26;
    }

    v15 = &v5[8 * v13];
    if (v11 >= 8 && v6 > v7)
    {
      v43 = v7;
      v44 = v5;
LABEL_28:
      v27 = v6 - 8;
      v28 = a3 - 8;
      v29 = v15;
      v30 = v15;
      do
      {
        v31 = *(v30 - 1);
        v30 -= 8;
        v32 = v28;
        v33 = v28 + 8;
        v34 = v27;
        v35 = *v27;
        v36 = *(v31 + *a5);
        swift_beginAccess();
        v37 = *(v36 + 16);
        v38 = *(v36 + 24);
        v39 = *(v35 + *a5);
        swift_beginAccess();
        v40 = *(v39 + 24);
        v41 = v37 <= *(v39 + 16);
        if (v38 != v40)
        {
          v41 = v38 < v40;
        }

        if (v41)
        {
          a3 = v32;
          if (v33 != v6)
          {
            *v32 = *v34;
          }

          v5 = v44;
          v15 = v29;
          if (v29 <= v44 || (v6 = v34, v34 <= v43))
          {
            v6 = v34;
            goto LABEL_41;
          }

          goto LABEL_28;
        }

        if (v33 != v29)
        {
          *v32 = *v30;
        }

        v28 = v32 - 8;
        v29 = v30;
        v5 = v44;
        v27 = v34;
      }

      while (v30 > v44);
      v15 = v30;
    }
  }

  else
  {
    if (a4 != __dst || &__dst[8 * v10] <= a4)
    {
      v14 = a3;
      memmove(a4, __dst, 8 * v10);
      a3 = v14;
    }

    v15 = &v5[8 * v10];
    if (v8 >= 8 && v6 < a3)
    {
      while (1)
      {
        v16 = a3;
        v17 = *v5;
        v18 = *(*v6 + *a5);
        swift_beginAccess();
        v19 = *(v18 + 16);
        v20 = *(v18 + 24);
        v21 = *(v17 + *a5);
        swift_beginAccess();
        v22 = *(v21 + 24);
        v23 = v19 <= *(v21 + 16);
        if (v20 != v22)
        {
          v23 = v20 < v22;
        }

        if (!v23)
        {
          break;
        }

        v24 = v6;
        v25 = v7 == v6;
        v6 += 8;
        if (!v25)
        {
          goto LABEL_18;
        }

LABEL_19:
        v7 += 8;
        if (v5 < v15)
        {
          a3 = v16;
          if (v6 < v16)
          {
            continue;
          }
        }

        goto LABEL_21;
      }

      v24 = v5;
      v25 = v7 == v5;
      v5 += 8;
      if (v25)
      {
        goto LABEL_19;
      }

LABEL_18:
      *v7 = *v24;
      goto LABEL_19;
    }

LABEL_21:
    v6 = v7;
  }

LABEL_41:
  if (v6 != v5 || v6 >= &v5[(v15 - v5 + (v15 - v5 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(v6, v5, 8 * ((v15 - v5) / 8));
  }

  return 1;
}

void *sub_1D6FF854C(void (*a1)(uint64_t *__return_ptr, __int128 *), uint64_t a2, uint64_t a3)
{
  sub_1D6FFC7BC(0, &qword_1EDF1A4B0, type metadata accessor for FormatSlot);
  result = sub_1D72640FC();
  v6 = 0;
  v33 = a3;
  v34 = result;
  v9 = *(a3 + 64);
  v8 = a3 + 64;
  v7 = v9;
  v10 = 1 << *(v8 - 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & v7;
  v13 = (v10 + 63) >> 6;
  v31 = result + 8;
  if ((v11 & v7) != 0)
  {
    while (1)
    {
      v14 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_10:
      v17 = v14 | (v6 << 6);
      v18 = (*(v33 + 48) + 16 * v17);
      v19 = *v18;
      v20 = v18[1];
      v21 = (*(v33 + 56) + (v17 << 6));
      v22 = v21[3];
      v24 = *v21;
      v23 = v21[1];
      v43[2] = v21[2];
      v43[3] = v22;
      v43[0] = v24;
      v43[1] = v23;
      v25 = v21[1];
      v39 = *v21;
      v40 = v25;
      v26 = v21[3];
      v41 = v21[2];
      v42 = v26;

      sub_1D5E3FA60(v43, &v35);
      a1(&v44, &v39);
      if (v3)
      {
        break;
      }

      v35 = v39;
      v36 = v40;
      v37 = v41;
      v38 = v42;
      sub_1D5E3FABC(&v35);
      *(v31 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      result = v34;
      v27 = (v34[6] + 16 * v17);
      *v27 = v19;
      v27[1] = v20;
      *(v34[7] + 8 * v17) = v44;
      v28 = v34[2];
      v29 = __OFADD__(v28, 1);
      v30 = v28 + 1;
      if (v29)
      {
        goto LABEL_17;
      }

      v34[2] = v30;
      if (!v12)
      {
        goto LABEL_5;
      }
    }

    v35 = v39;
    v36 = v40;
    v37 = v41;
    v38 = v42;
    sub_1D5E3FABC(&v35);
    return v34;
  }

  else
  {
LABEL_5:
    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v13)
      {
        return result;
      }

      v16 = *(v8 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
  }

  return result;
}

void sub_1D6FF8764(void (*a1)(__int128 *__return_ptr, uint64_t *), uint64_t a2, uint64_t a3)
{
  sub_1D6FFC758(0);
  v5 = sub_1D72640FC();
  v6 = v5;
  v7 = 0;
  v25 = a3;
  v10 = *(a3 + 64);
  v9 = a3 + 64;
  v8 = v10;
  v11 = 1 << *(v9 - 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & v8;
  v14 = (v11 + 63) >> 6;
  v23 = v5 + 64;
  if ((v12 & v8) != 0)
  {
    while (1)
    {
      v15 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_10:
      v18 = v15 | (v7 << 6);
      v19 = *(*(v25 + 48) + 8 * v18);
      v27 = *(*(v25 + 56) + 8 * v18);

      a1(&v26, &v27);
      if (v3)
      {
        break;
      }

      *(v23 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      *(v6[6] + 8 * v18) = v19;
      *(v6[7] + 16 * v18) = v26;
      v20 = v6[2];
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        goto LABEL_17;
      }

      v6[2] = v22;
      if (!v13)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v14)
      {
        return;
      }

      v17 = *(v9 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v13 = (v17 - 1) & v17;
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
  }
}

void *sub_1D6FF8914(void (*a1)(uint64_t *__return_ptr, uint64_t *), uint64_t a2, uint64_t a3)
{
  sub_1D6FFC7BC(0, &unk_1EDF1A4D0, type metadata accessor for FormatStateViewNodeStateDataLayoutAttributes);
  result = sub_1D72640FC();
  v6 = 0;
  v28 = a3;
  v9 = *(a3 + 64);
  v8 = a3 + 64;
  v7 = v9;
  v10 = 1 << *(v8 - 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & v7;
  v13 = (v10 + 63) >> 6;
  v25 = result + 8;
  v26 = result;
  if ((v11 & v7) != 0)
  {
    while (1)
    {
      v14 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_10:
      v17 = v14 | (v6 << 6);
      v18 = (*(v28 + 48) + 16 * v17);
      v19 = *v18;
      v20 = v18[1];
      v30 = *(*(v28 + 56) + 8 * v17);

      a1(&v29, &v30);

      if (v3)
      {
        break;
      }

      result = v26;
      *(v25 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v21 = (v26[6] + 16 * v17);
      *v21 = v19;
      v21[1] = v20;
      *(v26[7] + 8 * v17) = v29;
      v22 = v26[2];
      v23 = __OFADD__(v22, 1);
      v24 = v22 + 1;
      if (v23)
      {
        goto LABEL_17;
      }

      v26[2] = v24;
      if (!v12)
      {
        goto LABEL_5;
      }
    }

    return v26;
  }

  else
  {
LABEL_5:
    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v13)
      {
        return result;
      }

      v16 = *(v8 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
  }

  return result;
}

void *sub_1D6FF8AE8@<X0>(void *result@<X0>, void *a2@<X8>)
{
  v2 = (*result >> 59) & 0x1E | (*result >> 2) & 1;
  if (v2 > 0x12)
  {
    *a2 = 10;
  }

  else
  {
    *a2 = qword_1D7380268[v2];
  }

  return result;
}

void sub_1D6FF8B20(unint64_t *a1@<X0>, uint64_t *a2@<X1>, void *a3@<X2>, void *a4@<X8>)
{
  sub_1D5FA6CB0(*a2, *a1, a4);
  if (v4)
  {
    *a3 = v4;
  }
}

void sub_1D6FF8B5C(uint64_t *a1@<X0>, uint64_t *a2@<X1>, void *a3@<X2>, char *a4@<X8>)
{
  v7 = *a2;
  v9 = *a1;
  v8 = a1[1];

  sub_1D6B744A8(v7, &v13);
  if (v4)
  {

    *a3 = v4;
  }

  else
  {
    v10 = v13;
    *a4 = v9;
    *(a4 + 1) = v8;
    *(a4 + 2) = v10;
    *(a4 + 3) = 1;
    v11 = *(type metadata accessor for FormatOption(0) + 28);
    v12 = type metadata accessor for FormatVersionRequirement(0);
    (*(*(v12 - 8) + 56))(&a4[v11], 1, 1, v12);
  }
}

double sub_1D6FF8C38@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  sub_1D6FE0118(*a2, *a1, *(a1 + 8), *(a1 + 16), &v9);
  if (v4)
  {
    *a3 = v4;
  }

  else
  {
    v8 = v10;
    result = *&v9;
    *a4 = v9;
    *(a4 + 16) = v8;
  }

  return result;
}

void sub_1D6FF8CD0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D5B49474(255, &qword_1EDF41FC0, &protocol descriptor for FeedItemType);
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t objectdestroy_9Tm_3()
{
  v1 = type metadata accessor for GroupLayoutContext(0);
  v2 = (*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80);
  v3 = sub_1D7259F5C();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  v4 = *(v1 + 20);
  v5 = sub_1D7259CFC();
  (*(*(v5 - 8) + 8))(v0 + v2 + v4, v5);
  v6 = v0 + v2 + *(v1 + 24);
  if (*(v6 + 24) >= 2uLL)
  {
  }

  v7 = type metadata accessor for FeedLayoutSolverOptions(0);
  v8 = *(v7 + 36);
  v9 = type metadata accessor for FeedLayoutSolverOptions.PluginOptions(0);
  if (!(*(*(v9 - 8) + 48))(v6 + v8, 1, v9))
  {
    v10 = sub_1D725E23C();
    (*(*(v10 - 8) + 8))(v6 + v8, v10);
  }

  if (*(v6 + *(v7 + 40) + 8) != 1)
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1D6FF8F84(uint64_t (*a1)(unint64_t, uint64_t, uint64_t))
{
  v2 = *(type metadata accessor for GroupLayoutContext(0) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v1 + v4);
  v6 = *(v1 + ((v4 + 15) & 0xFFFFFFFFFFFFFFF8));

  return a1(v1 + v3, v5, v6);
}

uint64_t sub_1D6FF9060(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  sub_1D6FF8CD0(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1D6FF90CC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  sub_1D6FF8CD0(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_1D6FF9128(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = &type metadata for FormatLayout;
    v8[1] = type metadata accessor for FormatLayoutAttributes();
    v8[2] = sub_1D5EB5218();
    v8[3] = sub_1D6FFA0A0(&qword_1EDF28608, type metadata accessor for FormatLayoutAttributes, &protocol conformance descriptor for FormatLayoutAttributes);
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_1D6FF924C(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  sub_1D6FFC8F0(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

void sub_1D6FF93E8(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (!*a2)
  {
    sub_1D6FFC8F0(255, a3, a4, MEMORY[0x1E69E62F8]);
    v5 = sub_1D726393C();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_1D6FF9454(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(void), uint64_t a5, uint64_t (*a6)(uint64_t, uint64_t, uint64_t))
{
  sub_1D6FF9DCC(0, a3, a4, a5, a6);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  return a2;
}

uint64_t sub_1D6FF94C8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  sub_1D6FF9DCC(0, a2, a3, a4, a5);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

void sub_1D6FF9524(uint64_t a1)
{
  if (!qword_1EDF2CA90)
  {
    sub_1D6FF95B8();
    v3 = v2;
    v4 = sub_1D6FFA0A0(&qword_1EDF20938, sub_1D6FF95B8, &protocol conformance descriptor for FormatCodingEmptyArrayStrategy<A>);
    v6 = type metadata accessor for FormatCodingDefault(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &qword_1EDF2CA90);
    }
  }
}

void sub_1D6FF95B8()
{
  if (!qword_1EDF20930)
  {
    v0 = type metadata accessor for FormatCodingEmptyArrayStrategy(0, MEMORY[0x1E69E6448], MEMORY[0x1E69E6478], MEMORY[0x1E69E6458]);
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF20930);
    }
  }
}

void sub_1D6FF9618(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(v3 + 16);
  v7 = *(a1 + 112);
  v11[6] = *(a1 + 96);
  v11[7] = v7;
  v12 = *(a1 + 128);
  v8 = *(a1 + 48);
  v11[2] = *(a1 + 32);
  v11[3] = v8;
  v9 = *(a1 + 80);
  v11[4] = *(a1 + 64);
  v11[5] = v9;
  v10 = *(a1 + 16);
  v11[0] = *a1;
  v11[1] = v10;
  sub_1D6FCD138(v11, *v6, a3);
  if (v4)
  {
    *a2 = v4;
  }
}

void sub_1D6FF969C(void *a1@<X1>, uint64_t a2@<X8>)
{
  sub_1D6FEB9C0(**(v2 + 16), a2);
  if (v3)
  {
    *a1 = v3;
  }
}

void sub_1D6FF96F0(unint64_t *a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  sub_1D5FA6CB0(**(v3 + 16), *a1, a3);
  if (v4)
  {
    *a2 = v4;
  }
}

uint64_t sub_1D6FF9770(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(void), uint64_t a5)
{
  sub_1D6FF9DCC(0, a3, a4, a5, type metadata accessor for FormatObject);
  (*(*(v7 - 8) + 32))(a2, a1, v7);
  return a2;
}

void sub_1D6FF9A98(uint64_t a1)
{
  if (!qword_1EDF1B9A8)
  {
    sub_1D601014C();
    v1 = sub_1D7261E1C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDF1B9A8);
    }
  }
}

void sub_1D6FF9BD0(uint64_t a1)
{
  if (!qword_1EDF180A8)
  {
    sub_1D6FF9DCC(255, &qword_1EDF3BFD0, sub_1D6FF9CE4, &type metadata for FormatLayoutValue, MEMORY[0x1E69D7198]);
    type metadata accessor for IssueCoverViewLayoutAttributesFactory();
    sub_1D5EB5218();
    sub_1D6FF9D38();
    sub_1D6FFA0A0(qword_1EDF06B60, type metadata accessor for IssueCoverViewLayoutAttributesFactory, &protocol conformance descriptor for IssueCoverViewLayoutAttributesFactory);
    v1 = sub_1D7259D3C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDF180A8);
    }
  }
}

unint64_t sub_1D6FF9CE4()
{
  result = qword_1EDF2F498;
  if (!qword_1EDF2F498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2F498);
  }

  return result;
}

unint64_t sub_1D6FF9D38()
{
  result = qword_1EDF17FF8;
  if (!qword_1EDF17FF8)
  {
    sub_1D6FF9DCC(255, &qword_1EDF3BFD0, sub_1D6FF9CE4, &type metadata for FormatLayoutValue, MEMORY[0x1E69D7198]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF17FF8);
  }

  return result;
}

void sub_1D6FF9DCC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

uint64_t sub_1D6FF9E98@<X0>(void *a1@<X1>, uint64_t a2@<X8>)
{
  result = sub_1D6FCBBA0(**(v2 + 16), a2);
  if (v3)
  {
    *a1 = v3;
  }

  return result;
}

uint64_t sub_1D6FFA0A0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1D6FFA0E8(uint64_t a1, void *a2, uint64_t (*a3)(void), uint64_t (*a4)(uint64_t))
{
  v78 = a4;
  v7 = v5;
  v8 = v4;
  sub_1D6FF9DCC(0, &qword_1EDF3C0D8, sub_1D5EB5218, &type metadata for FormatLayout, MEMORY[0x1E69D70D8]);
  v84 = v11;
  v81 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = (&v73 - v13);
  sub_1D6FF9DCC(0, &qword_1EDF3BF10, sub_1D5EB5218, &type metadata for FormatLayout, MEMORY[0x1E69D74B0]);
  v87 = v15;
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15, v17);
  v83 = &v73 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v20);
  v86 = &v73 - v21;
  MEMORY[0x1EEE9AC00](v22, v23);
  v79 = (&v73 - v24);
  MEMORY[0x1EEE9AC00](v25, v26);
  v77 = &v73 - v27;
  sub_1D5D27F7C(0, &qword_1EDF3C120, MEMORY[0x1E69D6FA0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v28 - 8, v29);
  v31 = &v73 - v30;
  v98 = a1;
  swift_beginAccess();
  v32 = v8[2];
  v33 = v8[3];

  v88 = sub_1D6E8DD40(v32, v33);
  v80 = v34;

  v35 = v8[6];
  v89 = a2;
  if (v35)
  {
    v85 = v14;
    v36 = v16;
    v37 = a3;
    v39 = v8[10];
    v38 = v8[11];
    v40 = v8[8];
    v41 = v8[9];
    v42 = v8[7];
    v91 = v35;
    v92 = v42;
    v93 = v40;
    v94 = v41;
    v95 = v39;
    v96 = v38;

    sub_1D5DEA234(v39);

    sub_1D68687FC(v89, v31);
    v43 = v7;
    if (v7)
    {

      v44 = v95;

      sub_1D5CBF568(v44);

      return;
    }

    v46 = v95;
    v90 = v96;

    a2 = v89;

    sub_1D5CBF568(v46);

    v45 = 0;
    v76 = v37;
    v16 = v36;
    v14 = v85;
  }

  else
  {
    v76 = a3;
    v45 = 1;
    v43 = v7;
  }

  v47 = sub_1D7259B8C();
  (*(*(v47 - 8) + 56))(v31, v45, 1, v47);
  swift_beginAccess();
  v48 = v8[5];
  swift_beginAccess();
  v97 = v8[4];
  v49 = v97;
  v50 = v80;

  sub_1D5C82CD8(v49);
  v51 = v79;
  sub_1D5BEB9F4(a2, v88, v50, v79);
  if (v43)
  {
    sub_1D6FFCA9C(v31, &qword_1EDF3C120, MEMORY[0x1E69D6FA0], MEMORY[0x1E69E6720], sub_1D5D27F7C);
    swift_bridgeObjectRelease_n();

    sub_1D5C92A8C(v97);
  }

  else
  {
    v90 = 0;
    v75 = v31;

    sub_1D5C92A8C(v97);
    (*(v16 + 16))(v86, v51, v87);
    v52 = v48;
    v82 = *(v48 + 16);
    if (v82)
    {
      v85 = v14;
      v53 = 0;
      v54 = (v81 + 1);
      v55 = v16 + 8;
      v74 = v16;
      v56 = (v16 + 32);
      v81 = v55;
      v73 = v55 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      while (v53 < *(v52 + 16))
      {
        v57 = v52;
        v58 = *(v52 + 8 * v53 + 32);
        v97 = v58;
        sub_1D5CFEC98(v58);
        v59 = v85;
        v60 = v90;
        sub_1D618F188(a2, v85);
        v90 = v60;
        if (v60)
        {

          v71 = *v81;
          v72 = v87;
          (*v81)(v86, v87);
          v71(v79, v72);
          sub_1D6FFCA9C(v75, &qword_1EDF3C120, MEMORY[0x1E69D6FA0], MEMORY[0x1E69E6720], sub_1D5D27F7C);
          sub_1D5CFED88(v58);
          return;
        }

        ++v53;
        v61 = v83;
        v62 = v86;
        v63 = v87;
        sub_1D725A50C();
        sub_1D5CFED88(v58);
        (*v54)(v59, v84);
        v64 = *v81;
        (*v81)(v62, v63);
        v65 = v63;
        a2 = v89;
        (*v56)(v62, v61, v65);
        v52 = v57;
        if (v82 == v53)
        {
          v66 = v76;
          v16 = v74;
          goto LABEL_15;
        }
      }

      __break(1u);
    }

    else
    {
      v64 = *(v16 + 8);
      v66 = v76;
LABEL_15:
      v67 = v87;
      v64(v79, v87);

      v68 = v77;
      (*(v16 + 32))(v77, v86, v67);
      v69 = v66(0);
      v78(v69);
      v70 = v75;
      sub_1D7259A8C();

      v64(v68, v67);
      sub_1D6FFCA9C(v70, &qword_1EDF3C120, MEMORY[0x1E69D6FA0], MEMORY[0x1E69E6720], sub_1D5D27F7C);
    }
  }
}

void sub_1D6FFA96C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void), void (*a5)(void), uint64_t a6)
{
  v32 = a4;
  v33 = a5;
  v10 = v7;
  v11 = v6;
  sub_1D5D27F7C(0, &qword_1EDF3C120, MEMORY[0x1E69D6FA0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v14 - 8, v15);
  v17 = v31 - v16;
  v40 = a1;
  swift_beginAccess();
  v18 = v11[2];
  v19 = v11[3];

  v31[4] = sub_1D6E8DD40(v18, v19);

  v20 = v11[5];
  if (v20)
  {
    v31[2] = a3;
    v31[3] = a6;
    v22 = v11[9];
    v21 = v11[10];
    v24 = v11[7];
    v23 = v11[8];
    v25 = v11[6];
    v34 = v20;
    v35 = v25;
    v36 = v24;
    v37 = v23;
    v38 = v22;
    v39 = v21;

    sub_1D5DEA234(v22);

    sub_1D68687FC(a2, v17);
    if (v10)
    {

      v26 = v38;

      sub_1D5CBF568(v26);

      return;
    }

    v28 = v38;
    v31[1] = v39;

    sub_1D5CBF568(v28);

    v27 = 0;
  }

  else
  {
    v27 = 1;
  }

  v29 = sub_1D7259B8C();
  (*(*(v29 - 8) + 56))(v17, v27, 1, v29);
  swift_unownedRetainStrong();
  swift_unownedRetain();

  v30 = swift_allocObject();
  *(v30 + 16) = v11;
  *(v30 + 24) = a2;
  v32(0);
  v33();

  sub_1D7259ACC();

  sub_1D6FFCA9C(v17, &qword_1EDF3C120, MEMORY[0x1E69D6FA0], MEMORY[0x1E69E6720], sub_1D5D27F7C);
}

uint64_t objectdestroy_131Tm()
{
  sub_1D6FF9DCC(0, &qword_1EDF338A0, sub_1D5B4AD74, &type metadata for FormatItem, type metadata accessor for FormatObject);
  v2 = v1;
  v17 = *(*(v1 - 8) + 80);
  v15 = *(*(v1 - 8) + 64);
  v18 = sub_1D725D80C();
  v3 = *(v18 - 8);
  v4 = *(v3 + 80);
  swift_unownedRelease();

  __swift_destroy_boxed_opaque_existential_1((v0 + 56));
  v16 = (v17 + 96) & ~v17;

  if (*(v0 + v16 + 56) >= 0x10uLL)
  {
  }

  v5 = v0 + v16 + *(v2 + 36);

  v6 = type metadata accessor for FormatMetadata(0);
  v7 = v6[5];
  v8 = sub_1D725BD1C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 8);
  v10(v5 + v7, v8);
  v10(v5 + v6[6], v8);
  v11 = v6[7];
  if (!(*(v9 + 48))(v5 + v11, 1, v8))
  {
    v10(v5 + v11, v8);
  }

  v12 = (v15 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;

  v13 = sub_1D61CA538(*(v0 + v12), *(v0 + v12 + 8));
  (*(v3 + 8))(v0 + ((v12 + v4 + 9) & ~v4), v18, v13);

  return swift_deallocObject();
}

void sub_1D6FFAFC4(uint64_t a1, uint64_t a2)
{
  sub_1D6FF9DCC(0, &qword_1EDF338A0, sub_1D5B4AD74, &type metadata for FormatItem, type metadata accessor for FormatObject);
  v6 = (*(*(v5 - 8) + 80) + 96) & ~*(*(v5 - 8) + 80);
  v7 = (*(*(v5 - 8) + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(sub_1D725D80C() - 8);
  sub_1D6C20254(a1, a2, v2[2], v2[3], v2[4], v2[5], v2[6], (v2 + 7), (v2 + v6), *(v2 + v7), *(v2 + v7 + 8), v2 + ((v7 + *(v8 + 80) + 9) & ~*(v8 + 80)));
}

uint64_t objectdestroy_24Tm()
{

  if (v0[12])
  {

    if (v0[14])
    {

      if (v0[18] >= 3uLL)
      {
      }
    }
  }

  return swift_deallocObject();
}

uint64_t objectdestroy_27Tm_1()
{

  if (v0[12])
  {

    if (v0[14])
    {

      if (v0[18] >= 3uLL)
      {
      }
    }
  }

  return swift_deallocObject();
}

uint64_t objectdestroy_125Tm_0()
{
  sub_1D5D27F7C(0, &qword_1EDF3C120, MEMORY[0x1E69D6FA0], MEMORY[0x1E69E6720]);
  v2 = (*(*(v1 - 8) + 80) + 64) & ~*(*(v1 - 8) + 80);
  swift_unownedRelease();

  v3 = sub_1D7259B8C();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(v0 + v2, 1, v3))
  {
    (*(v4 + 8))(v0 + v2, v3);
  }

  return swift_deallocObject();
}

uint64_t objectdestroy_149Tm()
{
  sub_1D5D27F7C(0, &qword_1EDF3C120, MEMORY[0x1E69D6FA0], MEMORY[0x1E69E6720]);
  v2 = (*(*(v1 - 8) + 80) + 48) & ~*(*(v1 - 8) + 80);
  swift_unownedRelease();

  v3 = sub_1D7259B8C();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(v0 + v2, 1, v3))
  {
    (*(v4 + 8))(v0 + v2, v3);
  }

  return swift_deallocObject();
}

void sub_1D6FFB6D8(unint64_t a1, unint64_t a2)
{
  sub_1D5D27F7C(0, &qword_1EDF3C120, MEMORY[0x1E69D6FA0], MEMORY[0x1E69E6720]);
  v6 = (*(*(v5 - 8) + 80) + 48) & ~*(*(v5 - 8) + 80);
  sub_1D6046600(a1, a2, v2[2], v2[3], v2[4], v2[5], v2 + v6, *(v2 + ((*(*(v5 - 8) + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8)), v7);
}

uint64_t objectdestroy_152Tm()
{
  swift_unownedRelease();

  return swift_deallocObject();
}

uint64_t objectdestroy_142Tm()
{

  return swift_deallocObject();
}

uint64_t objectdestroy_166Tm()
{

  return swift_deallocObject();
}

uint64_t objectdestroy_170Tm(void (*a1)(void, __n128))
{

  (a1)(*(v1 + 40));

  return swift_deallocObject();
}

uint64_t objectdestroy_195Tm()
{

  return swift_deallocObject();
}

uint64_t objectdestroy_216Tm()
{
  v1 = type metadata accessor for SharedItem(0);
  v2 = *(*(v1 - 8) + 80);

  sub_1D5C92A8C(v0[5]);

  sub_1D5EB15C4(v0[9]);

  if (v0[14])
  {

    if (v0[18] >= 3)
    {
    }
  }

  v3 = v0 + ((v2 + 176) & ~v2);
  v4 = sub_1D725891C();
  (*(*(v4 - 8) + 8))(v3, v4);

  v5 = *(v1 + 28);
  v6 = sub_1D72585BC();
  (*(*(v6 - 8) + 8))(&v3[v5], v6);

  return swift_deallocObject();
}

uint64_t objectdestroy_46Tm_0()
{
  sub_1D5D27F7C(0, &qword_1EDF3C120, MEMORY[0x1E69D6FA0], MEMORY[0x1E69E6720]);
  v2 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);

  v3 = sub_1D7259B8C();
  v4 = *(v3 - 8);
  if (!(*(v4 + 48))(v0 + v2, 1, v3))
  {
    (*(v4 + 8))(v0 + v2, v3);
  }

  swift_unownedRelease();

  return swift_deallocObject();
}

uint64_t sub_1D6FFBED4(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, void, void, unint64_t, void, void, void, void, void))
{
  sub_1D5D27F7C(0, &qword_1EDF3C120, MEMORY[0x1E69D6FA0], MEMORY[0x1E69E6720]);
  v8 = (*(*(v7 - 8) + 80) + 32) & ~*(*(v7 - 8) + 80);
  v9 = (*(*(v7 - 8) + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v9 + 15) & 0xFFFFFFFFFFFFFFF8;
  return a3(a1, a2, *(v3 + 16), *(v3 + 24), v3 + v8, *(v3 + v9), *(v3 + v10), *(v3 + ((v10 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v3 + ((((v10 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)), *(v3 + ((((((v10 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t objectdestroy_179Tm(uint64_t a1)
{

  return swift_deallocObject();
}

uint64_t objectdestroy_233Tm()
{
  swift_unownedRelease();

  return swift_deallocObject();
}

uint64_t objectdestroy_236Tm()
{

  v1 = *(v0 + 56);
  if (v1 >= 4)
  {
  }

  return swift_deallocObject();
}

uint64_t objectdestroy_239Tm()
{

  if (*(v0 + 56))
  {

    v1 = *(v0 + 96);
    if (v1 <= 0xFD)
    {
      sub_1D5ED34A0(*(v0 + 80), *(v0 + 88), v1);
    }
  }

  return swift_deallocObject();
}

uint64_t objectdestroy_243Tm()
{

  return swift_deallocObject();
}

uint64_t sub_1D6FFC25C(uint64_t result, char a2)
{
  if (a2 <= 0xFDu)
  {
    return sub_1D5ECEDE8(result, a2);
  }

  return result;
}

uint64_t sub_1D6FFC2E8(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_1D5D27F7C(255, &qword_1EDF1AFA8, type metadata accessor for FormatAccessibilityLayoutValue, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1D6FFC378(uint64_t a1)
{
  if (!qword_1EDF26770)
  {
    sub_1D5D27F7C(255, &qword_1EDF2C470, type metadata accessor for FormatNodeStateData.Data, MEMORY[0x1E69E6720]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EDF26770);
    }
  }
}

uint64_t sub_1D6FFC410(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1D5D27F7C(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

void sub_1D6FFC4B8(uint64_t a1)
{
  if (!qword_1EDF2C468)
  {
    sub_1D5D27F7C(255, &qword_1EDF2C470, type metadata accessor for FormatNodeStateData.Data, MEMORY[0x1E69E6720]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EDF2C468);
    }
  }
}

void sub_1D6FFC5A4(void *a1, uint64_t a2, void *a3, uint64_t a4, void *a5, uint64_t a6, void *a7, char a8)
{
  if (a8)
  {
    if (a8 != 1)
    {
      return;
    }

    a1 = a5;
  }

  else
  {
    a7 = a3;
  }
}

uint64_t objectdestroy_676Tm()
{

  if (*(v0 + 48))
  {
  }

  return swift_deallocObject();
}

void sub_1D6FFC6B8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), unint64_t *a4, uint64_t (*a5)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_1D5D27F7C(255, a4, a5, type metadata accessor for FormatAnimationNodeDataLayoutAttributes);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v9)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_1D6FFC758(uint64_t a1)
{
  if (!qword_1EDF1A508)
  {
    sub_1D6333A84();
    v1 = sub_1D726413C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDF1A508);
    }
  }
}

void sub_1D6FFC7BC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D726413C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1D6FFC87C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, uint64_t, uint64_t, uint64_t))
{
  v8 = a6(0, a3, a4, a5);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  return a2;
}

void sub_1D6FFC8F0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t objectdestroy_30Tm(void (*a1)(void), void (*a2)(void))
{
  a1(*(v2 + 16));
  a2(*(v2 + 24));

  return swift_deallocObject();
}

uint64_t sub_1D6FFC9A0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1D6FFCA00(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v7)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t sub_1D6FFCA9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = (a5)(0, a2, a3, a4);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t sub_1D6FFCF10(void *a1)
{
  v2 = *v1;
  if (*v1 < 3)
  {
    return qword_1D7380420[v2];
  }

  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  sub_1D5D0AFBC(v5);
  sub_1D5D0AFBC(v6);
  if ([a1 userInterfaceStyle] == 2)
  {
    sub_1D5D0AFBC(v6);
    v7 = sub_1D6FFCF10(a1);
    sub_1D5D0AFCC(v5);
    sub_1D5D0AFCC(v6);
    v8 = v6;
  }

  else
  {
    sub_1D5D0AFBC(v5);
    v7 = sub_1D6FFCF10(a1);
    sub_1D5D0AFCC(v5);
    sub_1D5D0AFCC(v6);
    v8 = v5;
  }

  sub_1D5D0AFCC(v8);
  return v7;
}

BOOL static FormatImageRenderingMode.== infix(_:_:)(unint64_t *a1, unint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (!*a1)
  {
    if (!v3)
    {
      sub_1D5D0AFCC(0);
      v4 = 0;
      goto LABEL_10;
    }

    goto LABEL_12;
  }

  if (v2 != 1)
  {
    if (v2 == 2)
    {
      if (v3 == 2)
      {
        sub_1D5D0AFCC(2uLL);
        v4 = 2;
LABEL_10:
        sub_1D5D0AFCC(v4);
        return 1;
      }
    }

    else if (v3 >= 3)
    {
      v7 = *(v3 + 16);
      v6 = *(v3 + 24);
      v11 = *(v2 + 16);
      v9 = v7;
      v10 = v6;
      sub_1D5D0AFBC(v3);
      sub_1D5D0AFBC(v2);
      sub_1D5D0AFBC(v7);
      sub_1D5D0AFBC(v6);
      if (static FormatImageRenderingMode.== infix(_:_:)(&v11, &v9))
      {
        v8 = static FormatImageRenderingMode.== infix(_:_:)(&v11 + 1, &v10);
        sub_1D5D0AFCC(v7);
        sub_1D5D0AFCC(v6);
        sub_1D5D0AFCC(v2);
        sub_1D5D0AFCC(v3);
        return v8;
      }

      sub_1D5D0AFCC(v7);
      sub_1D5D0AFCC(v6);
LABEL_13:
      sub_1D5D0AFCC(v2);
      sub_1D5D0AFCC(v3);
      return 0;
    }

LABEL_12:
    sub_1D5D0AFBC(*a2);
    sub_1D5D0AFBC(v2);
    goto LABEL_13;
  }

  if (v3 != 1)
  {
    goto LABEL_12;
  }

  sub_1D5D0AFCC(1uLL);
  sub_1D5D0AFCC(1uLL);
  return v3;
}

unint64_t sub_1D6FFD17C(uint64_t a1)
{
  result = sub_1D5CD9018();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D6FFD1B4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1D72600CC();

  return v1;
}

uint64_t sub_1D6FFD228()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1D72600CC();

  return v1;
}

uint64_t sub_1D6FFD2B0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1D72600CC();

  return v1;
}

void sub_1D6FFD324(uint64_t a1@<X8>)
{
  v30 = type metadata accessor for DebugFormatCompilerResultOutput(0);
  MEMORY[0x1EEE9AC00](v30, v2);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = type metadata accessor for FormatFile(0);
  MEMORY[0x1EEE9AC00](v29, v5);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v27 - v10;
  v12 = type metadata accessor for DebugFormatCompilerResultEntry(0);
  v31 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1D72600CC();

  v16 = v32;
  if (!v32)
  {
    v25 = 1;
    goto LABEL_15;
  }

  v28 = a1;
  v17 = *(v32 + 16);
  if (!v17)
  {
LABEL_12:

    v25 = 1;
    a1 = v28;
LABEL_15:
    v26 = type metadata accessor for FormatPackage(0);
    (*(*(v26 - 8) + 56))(a1, v25, 1, v26);
    return;
  }

  v18 = 0;
  v19 = *(v12 + 20);
  v20 = v32 + ((*(v31 + 80) + 32) & ~*(v31 + 80));
  while (v18 < *(v16 + 16))
  {
    sub_1D6FFE9AC(v20 + *(v31 + 72) * v18, v15, type metadata accessor for DebugFormatCompilerResultEntry);
    sub_1D6FFE9AC(&v15[v19], v4, type metadata accessor for DebugFormatCompilerResultOutput);
    sub_1D6FFEA14(v15, type metadata accessor for DebugFormatCompilerResultEntry);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        v21 = type metadata accessor for DebugFormatCompilerResultOutput;
        v22 = v4;
        goto LABEL_5;
      }

      sub_1D67D37A8(0);
    }

    sub_1D6FFEA74(v4, v11, type metadata accessor for FormatFile);
    sub_1D6FFEA74(v11, v7, type metadata accessor for FormatFile);
    if (swift_getEnumCaseMultiPayload() == 5)
    {

      a1 = v28;
      sub_1D6FFEA74(v7, v28, type metadata accessor for FormatPackage);
      v25 = 0;
      goto LABEL_15;
    }

    v21 = type metadata accessor for FormatFile;
    v22 = v7;
LABEL_5:
    sub_1D6FFEA14(v22, v21);
    if (v17 == ++v18)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}

double sub_1D6FFD6E0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1D72600CC();

  return result;
}

uint64_t sub_1D6FFD750()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1D72600CC();

  return v1;
}

void sub_1D6FFD7C4(unint64_t a2@<X3>, char a3@<W4>, _BYTE *a4@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1D72600CC();

  v7 = sub_1D6186F50(a2, a3 & 1, v8);

  *a4 = v7 & 1;
}

double sub_1D6FFD874(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, char a6)
{
  if (*a1 == 1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v8 = sub_1D72600BC();
    sub_1D5FF1290(&v10, a5, a6 & 1);
  }

  else
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v8 = sub_1D72600BC();
    sub_1D62D1B60(a5, a6 & 1);
  }

  v8(v11, 0);

  return result;
}

uint64_t sub_1D6FFD984()
{

  v1 = OBJC_IVAR____TtC8NewsFeed22DebugFormatPackageTree__identifier;
  sub_1D6FFDF44();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC8NewsFeed22DebugFormatPackageTree__debugPackage;
  v4 = MEMORY[0x1E695C070];
  sub_1D6FFDF94(0, &qword_1EC899308, type metadata accessor for DebugFormatPackageInventory, MEMORY[0x1E695C070]);
  (*(*(v5 - 8) + 8))(v0 + v3, v5);
  v6 = OBJC_IVAR____TtC8NewsFeed22DebugFormatPackageTree__compilerResultEntries;
  sub_1D6FFDF94(0, &qword_1EC896C90, sub_1D6E2D448, v4);
  (*(*(v7 - 8) + 8))(v0 + v6, v7);
  v8 = OBJC_IVAR____TtC8NewsFeed22DebugFormatPackageTree__workspaceGroup;
  sub_1D6FFDF94(0, &qword_1EC899310, sub_1D6195740, v4);
  (*(*(v9 - 8) + 8))(v0 + v8, v9);
  v10 = OBJC_IVAR____TtC8NewsFeed22DebugFormatPackageTree__layoutContext;
  sub_1D6FFDF94(0, &qword_1EC899318, sub_1D68D69A0, v4);
  (*(*(v11 - 8) + 8))(v0 + v10, v11);

  v12 = OBJC_IVAR____TtC8NewsFeed22DebugFormatPackageTree__expanded;
  sub_1D6FFDF94(0, &qword_1EC899320, sub_1D6FFDFF8, v4);
  (*(*(v13 - 8) + 8))(v0 + v12, v13);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for DebugFormatPackageTree(uint64_t a1)
{
  result = qword_1EC8992F0;
  if (!qword_1EC8992F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D6FFDC88(uint64_t a1, __n128 a2)
{
  sub_1D6FFDF44();
  if (v2 <= 0x3F)
  {
    sub_1D6FFDF94(319, &qword_1EC899308, type metadata accessor for DebugFormatPackageInventory, MEMORY[0x1E695C070]);
    if (v3 <= 0x3F)
    {
      sub_1D6FFDF94(319, &qword_1EC896C90, sub_1D6E2D448, MEMORY[0x1E695C070]);
      if (v4 <= 0x3F)
      {
        sub_1D6FFDF94(319, &qword_1EC899310, sub_1D6195740, MEMORY[0x1E695C070]);
        if (v5 <= 0x3F)
        {
          sub_1D6FFDF94(319, &qword_1EC899318, sub_1D68D69A0, MEMORY[0x1E695C070]);
          if (v6 <= 0x3F)
          {
            sub_1D6FFDF94(319, &qword_1EC899320, sub_1D6FFDFF8, MEMORY[0x1E695C070]);
            if (v7 <= 0x3F)
            {
              swift_updateClassMetadata2();
            }
          }
        }
      }
    }
  }
}

void sub_1D6FFDF44()
{
  if (!qword_1EC899300)
  {
    v0 = sub_1D72600EC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC899300);
    }
  }
}

void sub_1D6FFDF94(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1D6FFDFF8(uint64_t a1)
{
  if (!qword_1EC899328)
  {
    sub_1D5E2A08C();
    v1 = sub_1D7262BAC();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC899328);
    }
  }
}

void sub_1D6FFE054(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1D72600CC();

  *a2 = v3;
}

uint64_t sub_1D6FFE0D4(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1D72600DC();
}

uint64_t sub_1D6FFE150(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v82 = a2;
  v83 = a3;
  v81 = a1;
  v3 = MEMORY[0x1E695C070];
  sub_1D6FFDF94(0, &qword_1EC899320, sub_1D6FFDFF8, MEMORY[0x1E695C070]);
  v79 = *(v4 - 8);
  v80 = v4;
  MEMORY[0x1EEE9AC00](v4, v5);
  v78 = &v65 - v6;
  sub_1D6FFDF94(0, &qword_1EC899318, sub_1D68D69A0, v3);
  v76 = *(v7 - 8);
  v77 = v7;
  MEMORY[0x1EEE9AC00](v7, v8);
  v75 = &v65 - v9;
  sub_1D68D69A0(0);
  v74 = v10;
  MEMORY[0x1EEE9AC00](v10, v11);
  v73 = &v65 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v72 = &v65 - v15;
  sub_1D6FFDF94(0, &qword_1EC899310, sub_1D6195740, v3);
  v69 = *(v16 - 8);
  v70 = v16;
  MEMORY[0x1EEE9AC00](v16, v17);
  v68 = &v65 - v18;
  sub_1D6195740(0);
  v85 = v19;
  MEMORY[0x1EEE9AC00](v19, v20);
  v84 = &v65 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22, v23);
  v66 = &v65 - v24;
  sub_1D6FFDF94(0, &qword_1EC896C90, sub_1D6E2D448, v3);
  v67 = v25;
  v65 = *(v25 - 1);
  MEMORY[0x1EEE9AC00](v25, v26);
  v28 = &v65 - v27;
  sub_1D6FFDF44();
  v30 = v29;
  v31 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29, v32);
  v34 = &v65 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_1D725895C();
  v36 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35, v37);
  v39 = &v65 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = OBJC_IVAR____TtC8NewsFeed22DebugFormatPackageTree__identifier;
  sub_1D725894C();
  v41 = sub_1D725893C();
  v43 = v42;
  (*(v36 + 8))(v39, v35);
  v87 = v41;
  v88 = v43;
  sub_1D726009C();
  v44 = v71;
  v45.n128_f64[0] = (*(v31 + 32))(v71 + v40, v34, v30);
  v46 = OBJC_IVAR____TtC8NewsFeed22DebugFormatPackageTree__compilerResultEntries;
  v87 = 0;
  sub_1D6E2D448(0, v45);
  sub_1D726009C();
  v47 = v44;
  (*(v65 + 32))(v44 + v46, v28, v67);
  v48 = OBJC_IVAR____TtC8NewsFeed22DebugFormatPackageTree__workspaceGroup;
  v49 = type metadata accessor for DebugFormatEditorWorkspaceGroup(0);
  v50 = v66;
  (*(*(v49 - 8) + 56))(v66, 1, 1, v49);
  sub_1D6FFE9AC(v50, v84, sub_1D6195740);
  v51 = v68;
  sub_1D726009C();
  v67 = sub_1D6195740;
  sub_1D6FFEA14(v50, sub_1D6195740);
  v53 = v69;
  v52 = v70;
  (*(v69 + 32))(v44 + v48, v51, v70);
  v54 = OBJC_IVAR____TtC8NewsFeed22DebugFormatPackageTree__layoutContext;
  v55 = type metadata accessor for DebugFormatEditorLayoutContext(0);
  v56 = v72;
  (*(*(v55 - 8) + 56))(v72, 1, 1, v55);
  sub_1D6FFE9AC(v56, v73, sub_1D68D69A0);
  v57 = v75;
  sub_1D726009C();
  sub_1D6FFEA14(v56, sub_1D68D69A0);
  (*(v76 + 32))(v44 + v54, v57, v77);
  v58 = OBJC_IVAR____TtC8NewsFeed22DebugFormatPackageTree__expanded;
  v87 = sub_1D5E29EA4(&unk_1F5119718);
  sub_1D6FFDFF8(0);
  v59 = v78;
  sub_1D726009C();
  (*(v79 + 32))(v44 + v58, v59, v80);
  v60 = v81;
  *(v44 + 16) = v81;
  swift_beginAccess();
  v86 = v82;
  type metadata accessor for DebugFormatPackageInventory();

  sub_1D726009C();
  swift_endAccess();
  v61 = v83;
  sub_1D6FFE9AC(v83, v50, sub_1D6195740);
  swift_beginAccess();
  (*(v53 + 8))(v44 + v48, v52);
  sub_1D6FFE9AC(v50, v84, sub_1D6195740);
  sub_1D726009C();
  v62 = v67;
  sub_1D6FFEA14(v50, v67);
  swift_endAccess();
  type metadata accessor for DebugFormatCanvasGenerator();
  swift_allocObject();
  v63 = sub_1D5F26CE8(v60);
  sub_1D6FFEA14(v61, v62);
  *(v47 + OBJC_IVAR____TtC8NewsFeed22DebugFormatPackageTree_canvasGenerator) = v63;
  return v47;
}

uint64_t sub_1D6FFE9AC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D6FFEA14(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D6FFEA74(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t UIUserInterfaceSizeClass.description.getter(uint64_t a1)
{
  v1 = 0x746361706D6F63;
  v2 = 0x6E776F6E6B6E75;
  if (a1 == 2)
  {
    v2 = 0x72616C75676572;
  }

  if (a1 != 1)
  {
    v1 = v2;
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return 0x6669636570736E75;
  }
}

uint64_t sub_1D6FFEB5C()
{
  v1 = *v0;
  v2 = 0x746361706D6F63;
  v3 = 0x6E776F6E6B6E75;
  if (*v0 == 2)
  {
    v3 = 0x72616C75676572;
  }

  if (v1 != 1)
  {
    v2 = v3;
  }

  if (v1)
  {
    return v2;
  }

  else
  {
    return 0x6669636570736E75;
  }
}

id SportsKeyPlayerDataVisualization.leagueTag.getter()
{
  v1 = [*(v0 + 48) eventLeagueTag];

  return v1;
}

uint64_t SportsKeyPlayerDataVisualization.competitorTags.getter()
{
  v1 = [*(v0 + 48) eventCompetitorTags];
  if (!v1)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v2 = v1;
  sub_1D5B5534C(0, &qword_1EDF04500, &protocolRef_FCSportsProviding);
  v3 = sub_1D726267C();

  return v3;
}

void *SportsKeyPlayerDataVisualization.with(config:)(uint64_t *a1)
{
  v2 = v1;
  v4 = sub_1D72585BC();
  v39 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4, v5);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a1[1];
  v32 = *a1;
  v33 = v9;
  v10 = a1[2];
  v11 = a1[3];
  v12 = a1[5];
  v34 = a1[4];
  v35 = v11;
  v40 = v12;
  v41 = v10;
  v14 = *(v2 + 4);
  v36 = *(v2 + 5);
  v13 = v36;
  v37 = v14;
  v15 = *(v2 + 6);
  v16 = *(v39 + 16);
  v38 = v4;
  v16(v8, &v2[OBJC_IVAR____TtC8NewsFeed32SportsKeyPlayerDataVisualization_embedUrl], v4, v6);
  v17 = *&v2[OBJC_IVAR____TtC8NewsFeed32SportsKeyPlayerDataVisualization_urlDataSources];
  v18 = *&v2[OBJC_IVAR____TtC8NewsFeed32SportsKeyPlayerDataVisualization_roster];
  v19 = swift_allocObject();
  v19[4] = v14;
  v19[5] = v13;
  v19[6] = v15;
  (v16)(v19 + OBJC_IVAR____TtC8NewsFeed32SportsKeyPlayerDataVisualization_embedUrl, v8, v4);
  *(v19 + OBJC_IVAR____TtC8NewsFeed32SportsKeyPlayerDataVisualization_urlDataSources) = v17;
  v20 = (v19 + OBJC_IVAR____TtC8NewsFeed32SportsKeyPlayerDataVisualization_config);
  v22 = v32;
  v21 = v33;
  *v20 = v32;
  v20[1] = v21;
  v23 = v40;
  v25 = v34;
  v24 = v35;
  v20[2] = v41;
  v20[3] = v24;
  v20[4] = v25;
  v20[5] = v23;
  *(v19 + OBJC_IVAR____TtC8NewsFeed32SportsKeyPlayerDataVisualization_roster) = v18;
  v42 = 14906;
  v43 = 0xE200000000000000;
  swift_unknownObjectRetain_n();
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  swift_unknownObjectRetain();

  v26 = v36;

  MEMORY[0x1DA6F9910](v22, v21);
  v27 = v42;
  v28 = v43;
  v42 = sub_1D72583DC();
  v43 = v29;
  MEMORY[0x1DA6F9910](14906, 0xE200000000000000);
  MEMORY[0x1DA6F9910](v37, v26);
  MEMORY[0x1DA6F9910](v27, v28);

  v30 = v43;
  v19[2] = v42;
  v19[3] = v30;
  v42 = v22;
  v43 = v21;
  v44 = v41;
  v45 = v24;
  v46 = v25;
  v47 = v40;
  sub_1D692133C(v8, &v42, 0xD00000000000001ALL, 0x80000001D73FA670, v19 + OBJC_IVAR____TtC8NewsFeed32SportsKeyPlayerDataVisualization_configuredEmbedUrl);
  (*(v39 + 8))(v8, v38);

  swift_unknownObjectRelease();

  return v19;
}

char *SportsKeyPlayerDataVisualization.__allocating_init(umcCanonicalId:event:embedUrl:urlDataSources:roster:config:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t *a7)
{
  v13 = swift_allocObject();
  v15 = *a7;
  v14 = a7[1];
  v16 = a7[3];
  v29 = a7[2];
  v30 = *a6;
  v17 = a7[4];
  v18 = a7[5];
  v33 = a1;
  *(v13 + 4) = a1;
  *(v13 + 5) = a2;
  v19 = v14;
  *(v13 + 6) = a3;
  v20 = OBJC_IVAR____TtC8NewsFeed32SportsKeyPlayerDataVisualization_embedUrl;
  v21 = sub_1D72585BC();
  v22 = *(v21 - 8);
  v34 = v21;
  (*(v22 + 16))(&v13[v20], a4, v21);
  *&v13[OBJC_IVAR____TtC8NewsFeed32SportsKeyPlayerDataVisualization_urlDataSources] = a5;
  v23 = &v13[OBJC_IVAR____TtC8NewsFeed32SportsKeyPlayerDataVisualization_config];
  *v23 = v15;
  v23[1] = v19;
  v23[2] = v29;
  v23[3] = v16;
  v23[4] = v17;
  v23[5] = v18;
  *&v13[OBJC_IVAR____TtC8NewsFeed32SportsKeyPlayerDataVisualization_roster] = v30;
  v32 = v18;

  swift_unknownObjectRetain();
  if (v19)
  {
    sub_1D5F8B638(v15, v19, v29);
    MEMORY[0x1DA6F9910](v15, v19);
    v25 = 14906;
    v24 = 0xE200000000000000;
  }

  else
  {
    v25 = 0;
    v24 = 0xE000000000000000;
  }

  v35 = sub_1D72583DC();
  v36 = v26;
  MEMORY[0x1DA6F9910](14906, 0xE200000000000000);
  MEMORY[0x1DA6F9910](v33, a2);

  MEMORY[0x1DA6F9910](v25, v24);

  v27 = v36;
  *(v13 + 2) = v35;
  *(v13 + 3) = v27;
  v35 = v15;
  v36 = v19;
  v37 = v29;
  v38 = v16;
  v39 = v17;
  v40 = v32;
  sub_1D692133C(a4, &v35, 0xD00000000000001ALL, 0x80000001D73FA670, &v13[OBJC_IVAR____TtC8NewsFeed32SportsKeyPlayerDataVisualization_configuredEmbedUrl]);
  swift_unknownObjectRelease();
  (*(v22 + 8))(a4, v34);
  sub_1D5F8BBC8(v15, v19, v29, v16, v17, v32);
  return v13;
}

uint64_t SportsKeyPlayerDataVisualization.identifier.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t SportsKeyPlayerDataVisualization.umcCanonicalId.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t SportsKeyPlayerDataVisualization.config.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR____TtC8NewsFeed32SportsKeyPlayerDataVisualization_config);
  v3 = *(v1 + OBJC_IVAR____TtC8NewsFeed32SportsKeyPlayerDataVisualization_config + 8);
  v4 = *(v1 + OBJC_IVAR____TtC8NewsFeed32SportsKeyPlayerDataVisualization_config + 16);
  v5 = *(v1 + OBJC_IVAR____TtC8NewsFeed32SportsKeyPlayerDataVisualization_config + 24);
  v6 = *(v1 + OBJC_IVAR____TtC8NewsFeed32SportsKeyPlayerDataVisualization_config + 32);
  v7 = *(v1 + OBJC_IVAR____TtC8NewsFeed32SportsKeyPlayerDataVisualization_config + 40);
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  a1[5] = v7;
  return sub_1D5F8B638(v2, v3, v4);
}

char *SportsKeyPlayerDataVisualization.init(umcCanonicalId:event:embedUrl:urlDataSources:roster:config:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t *a7)
{
  v8 = v7;
  v63 = a5;
  v15 = sub_1D72585BC();
  v17 = MEMORY[0x1EEE9AC00](v15, v16);
  v60 = &v52 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *a6;
  v20 = *a7;
  v21 = a7[1];
  v22 = a7[2];
  v23 = a7[3];
  v24 = a7[4];
  v25 = a7[5];
  v57 = a1;
  v58 = v26;
  *(v8 + 4) = a1;
  *(v8 + 5) = a2;
  v27 = v20;
  v28 = a3;
  *(v8 + 6) = a3;
  v29 = v22;
  v30 = *(v26 + 16);
  v59 = a4;
  v31 = a4;
  v32 = v23;
  v61 = v33;
  v30(&v8[OBJC_IVAR____TtC8NewsFeed32SportsKeyPlayerDataVisualization_embedUrl], v31, v17);
  *&v8[OBJC_IVAR____TtC8NewsFeed32SportsKeyPlayerDataVisualization_urlDataSources] = v63;
  v34 = &v8[OBJC_IVAR____TtC8NewsFeed32SportsKeyPlayerDataVisualization_config];
  v62 = v27;
  v63 = v24;
  *v34 = v27;
  v34[1] = v21;
  v35 = v21;
  v34[2] = v29;
  v34[3] = v32;
  v34[4] = v24;
  v34[5] = v25;
  *&v8[OBJC_IVAR____TtC8NewsFeed32SportsKeyPlayerDataVisualization_roster] = v19;
  v55 = v28;
  v56 = v32;
  v54 = v25;
  if (v21)
  {
    v64 = 14906;
    v65 = 0xE200000000000000;

    swift_unknownObjectRetain();
    v36 = v62;
    sub_1D5F8B638(v62, v21, v29);
    v37 = v29;
    MEMORY[0x1DA6F9910](v36, v21);
    v39 = v64;
    v38 = v65;
  }

  else
  {

    swift_unknownObjectRetain();
    v39 = 0;
    v38 = 0xE000000000000000;
    v37 = v29;
  }

  v53 = v37;
  v40 = v59;
  v64 = sub_1D72583DC();
  v65 = v41;
  MEMORY[0x1DA6F9910](14906, 0xE200000000000000);
  MEMORY[0x1DA6F9910](v57, a2);

  MEMORY[0x1DA6F9910](v39, v38);

  v42 = v65;
  *(v8 + 2) = v64;
  *(v8 + 3) = v42;
  v44 = v62;
  v43 = v63;
  v64 = v62;
  v65 = v35;
  v45 = v56;
  v66 = v37;
  v67 = v56;
  v46 = v35;
  v47 = v54;
  v68 = v63;
  v69 = v54;
  v48 = v60;
  sub_1D692133C(v40, &v64, 0xD00000000000001ALL, 0x80000001D73FA670, v60);
  swift_unknownObjectRelease();
  v49 = v58;
  v50 = v61;
  (*(v58 + 8))(v40, v61);
  sub_1D5F8BBC8(v44, v46, v53, v45, v43, v47);
  (*(v49 + 32))(&v8[OBJC_IVAR____TtC8NewsFeed32SportsKeyPlayerDataVisualization_configuredEmbedUrl], v48, v50);
  return v8;
}

uint64_t SportsKeyPlayerDataVisualization.__allocating_init(from:)(void *a1)
{
  v2 = swift_allocObject();
  SportsKeyPlayerDataVisualization.init(from:)(a1);
  return v2;
}

void *SportsKeyPlayerDataVisualization.init(from:)(void *a1)
{
  v47 = a1;
  v2 = v1;
  v48 = *v2;
  v4 = sub_1D72585BC();
  v40 = *(v4 - 8);
  v41 = v4;
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = v38 - v10;
  sub_1D5F8C77C(0);
  v13 = v12;
  v42 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D700053C(0, &qword_1EC899338, MEMORY[0x1E69E6F48]);
  v18 = *(v17 - 8);
  v43 = v17;
  v44 = v18;
  MEMORY[0x1EEE9AC00](v17, v19);
  v21 = v38 - v20;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6FFFE54();
  v45 = v21;
  v22 = v46;
  v23 = v2;
  sub_1D7264B0C();
  if (v22)
  {
    swift_deallocPartialClassInstance();
  }

  else
  {
    v24 = v13;
    v46 = v11;
    v39 = v7;
    LOBYTE(v49) = 0;
    v26 = v42;
    v25 = v43;
    v23[4] = sub_1D72642BC();
    v23[5] = v27;
    LOBYTE(v49) = 1;
    sub_1D5F8C838(&unk_1EDF176A0, sub_1D5F8C77C, MEMORY[0x1E69D6C18]);
    sub_1D726431C();
    sub_1D725BF7C();
    (v26[1])(v16, v24);
    v23[6] = v49;
    LOBYTE(v49) = 2;
    v28 = sub_1D5F8C838(&unk_1EDF45B50, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FD0]);
    v29 = v46;
    v30 = v41;
    sub_1D726431C();
    v42 = v23;
    v38[1] = v28;
    v31 = *(v40 + 32);
    v31(v23 + OBJC_IVAR____TtC8NewsFeed32SportsKeyPlayerDataVisualization_embedUrl, v29, v30);
    sub_1D7001D08(0, &qword_1EDF3C850, type metadata accessor for WebEmbedDataVisualizationURLDataSource, MEMORY[0x1E69E62F8]);
    v52 = 3;
    sub_1D7000B70(&unk_1EDF04AB0, &unk_1EDF065B0, &protocol conformance descriptor for WebEmbedDataVisualizationURLDataSource, MEMORY[0x1E69E6330]);
    v32 = v45;
    v46 = 0;
    sub_1D726431C();
    *(v23 + OBJC_IVAR____TtC8NewsFeed32SportsKeyPlayerDataVisualization_urlDataSources) = v49;
    v52 = 6;
    sub_1D5F8C880();
    sub_1D726431C();
    *(v23 + OBJC_IVAR____TtC8NewsFeed32SportsKeyPlayerDataVisualization_roster) = v49;
    v52 = 4;
    sub_1D5F8C8D4();
    sub_1D726427C();
    v33 = (v23 + OBJC_IVAR____TtC8NewsFeed32SportsKeyPlayerDataVisualization_config);
    v34 = v50;
    *v33 = v49;
    v33[1] = v34;
    v33[2] = v51;
    LOBYTE(v49) = 5;
    v23[2] = sub_1D72642BC();
    v23[3] = v35;
    LOBYTE(v49) = 7;
    v36 = v39;
    sub_1D726431C();
    (*(v44 + 8))(v32, v25);
    v31(v23 + OBJC_IVAR____TtC8NewsFeed32SportsKeyPlayerDataVisualization_configuredEmbedUrl, v36, v30);
  }

  __swift_destroy_boxed_opaque_existential_1(v47);
  return v23;
}

unint64_t sub_1D6FFFE54()
{
  result = qword_1EC899340;
  if (!qword_1EC899340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC899340);
  }

  return result;
}

uint64_t SportsKeyPlayerDataVisualization.encode(to:)(void *a1)
{
  v2 = sub_1D725ABEC();
  v38 = *(v2 - 8);
  v39 = v2;
  MEMORY[0x1EEE9AC00](v2, v3);
  v5 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5F8C77C(0);
  v7 = v6;
  v40 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D700053C(0, &unk_1EC899350, MEMORY[0x1E69E6F58]);
  v12 = v11;
  v13 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v14);
  v16 = &v35 - v15;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6FFFE54();
  v17 = v42;
  sub_1D7264B5C();
  LOBYTE(v43) = 0;
  v18 = v41;
  sub_1D72643FC();
  if (v18)
  {
    return (*(v13 + 8))(v16, v12);
  }

  v20 = v38;
  v21 = v39;
  v36 = v16;
  v37 = 0;
  v41 = v13;
  v43 = *(v17 + 48);
  v22 = qword_1EDF17E30;
  swift_unknownObjectRetain();
  if (v22 != -1)
  {
    swift_once();
  }

  v23 = __swift_project_value_buffer(v21, qword_1EDF17E38);
  v24 = (*(v20 + 16))(v5, v23, v21);
  MEMORY[0x1EEE9AC00](v24, v25);
  *(&v35 - 2) = sub_1D5B5534C(0, &qword_1EDF1A870, &protocolRef_FCSportsEventProviding);
  swift_getKeyPath();
  sub_1D725BF6C();
  LOBYTE(v43) = 1;
  sub_1D5F8C838(&unk_1EDF176B0, sub_1D5F8C77C, MEMORY[0x1E69D6C10]);
  v26 = v36;
  v27 = v37;
  sub_1D726443C();
  (*(v40 + 8))(v10, v7);
  if (v27)
  {
    return (*(v41 + 8))(v26, v12);
  }

  LOBYTE(v43) = 2;
  sub_1D72585BC();
  sub_1D5F8C838(&unk_1EDF45B70, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FB8]);
  v28 = v42;
  sub_1D726443C();
  v43 = *(v28 + OBJC_IVAR____TtC8NewsFeed32SportsKeyPlayerDataVisualization_urlDataSources);
  v49 = 3;
  sub_1D7001D08(0, &qword_1EDF3C850, type metadata accessor for WebEmbedDataVisualizationURLDataSource, MEMORY[0x1E69E62F8]);
  sub_1D7000B70(&qword_1EDF04AC0, &qword_1EDF065C0, &protocol conformance descriptor for WebEmbedDataVisualizationURLDataSource, MEMORY[0x1E69E6300]);
  sub_1D726443C();
  v43 = *(v28 + OBJC_IVAR____TtC8NewsFeed32SportsKeyPlayerDataVisualization_roster);
  v49 = 6;
  sub_1D5F8D78C();

  sub_1D726443C();

  v29 = *(v28 + OBJC_IVAR____TtC8NewsFeed32SportsKeyPlayerDataVisualization_config + 8);
  v30 = *(v28 + OBJC_IVAR____TtC8NewsFeed32SportsKeyPlayerDataVisualization_config + 16);
  v31 = *(v28 + OBJC_IVAR____TtC8NewsFeed32SportsKeyPlayerDataVisualization_config + 24);
  v32 = *(v28 + OBJC_IVAR____TtC8NewsFeed32SportsKeyPlayerDataVisualization_config + 32);
  v33 = *(v28 + OBJC_IVAR____TtC8NewsFeed32SportsKeyPlayerDataVisualization_config + 40);
  v43 = *(v28 + OBJC_IVAR____TtC8NewsFeed32SportsKeyPlayerDataVisualization_config);
  v44 = v29;
  v45 = v30;
  v46 = v31;
  v47 = v32;
  v48 = v33;
  v49 = 4;
  sub_1D5F8B638(v43, v29, v30);
  sub_1D7000C34();
  sub_1D7000C84();
  sub_1D726443C();
  sub_1D5F8BBC8(v43, v44, v45, v46, v47, v48);
  LOBYTE(v43) = 5;
  sub_1D72643FC();
  v34 = v41;
  LOBYTE(v43) = 7;
  sub_1D726443C();
  return (*(v34 + 8))(v26, v12);
}

void sub_1D700053C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D6FFFE54();
    v7 = a3(a1, &type metadata for SportsKeyPlayerDataVisualization.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1D70005C8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1D7001CBC(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1D70005F8(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEE0064496C616369;
  v4 = 0x6E6F6E6143636D75;
  v5 = 0xE600000000000000;
  v6 = 0x726574736F72;
  if (v2 != 6)
  {
    v6 = 0xD000000000000012;
    v5 = 0x80000001D73B7A30;
  }

  v7 = 0xE600000000000000;
  v8 = 0x6769666E6F63;
  if (v2 != 4)
  {
    v8 = 0x696669746E656469;
    v7 = 0xEA00000000007265;
  }

  if (*v1 <= 5u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE800000000000000;
  v10 = 0x6C72556465626D65;
  if (v2 != 2)
  {
    v10 = 0x53617461446C7275;
    v9 = 0xEE0073656372756FLL;
  }

  if (*v1)
  {
    v4 = 0x746E657665;
    v3 = 0xE500000000000000;
  }

  if (*v1 > 1u)
  {
    v4 = v10;
    v3 = v9;
  }

  v13 = __OFSUB__(v2, 3);
  v11 = v2 == 3;
  v12 = v2 - 3 < 0;
  if (*v1 <= 3u)
  {
    v14 = v4;
  }

  else
  {
    v14 = v6;
  }

  if (!(v12 ^ v13 | v11))
  {
    v3 = v5;
  }

  *a1 = v14;
  a1[1] = v3;
}

unint64_t sub_1D700070C()
{
  v1 = *v0;
  v2 = 0x6E6F6E6143636D75;
  v3 = 0x726574736F72;
  if (v1 != 6)
  {
    v3 = 0xD000000000000012;
  }

  v4 = 0x6769666E6F63;
  if (v1 != 4)
  {
    v4 = 0x696669746E656469;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x6C72556465626D65;
  if (v1 != 2)
  {
    v5 = 0x53617461446C7275;
  }

  if (*v0)
  {
    v2 = 0x746E657665;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_1D700081C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D7001CBC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D7000844(uint64_t a1)
{
  v2 = sub_1D6FFFE54();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D7000880(uint64_t a1)
{
  v2 = sub_1D6FFFE54();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SportsKeyPlayerDataVisualization.deinit()
{

  swift_unknownObjectRelease();
  v1 = OBJC_IVAR____TtC8NewsFeed32SportsKeyPlayerDataVisualization_embedUrl;
  v2 = sub_1D72585BC();
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);

  sub_1D5F8BBC8(*(v0 + OBJC_IVAR____TtC8NewsFeed32SportsKeyPlayerDataVisualization_config), *(v0 + OBJC_IVAR____TtC8NewsFeed32SportsKeyPlayerDataVisualization_config + 8), *(v0 + OBJC_IVAR____TtC8NewsFeed32SportsKeyPlayerDataVisualization_config + 16), *(v0 + OBJC_IVAR____TtC8NewsFeed32SportsKeyPlayerDataVisualization_config + 24), *(v0 + OBJC_IVAR____TtC8NewsFeed32SportsKeyPlayerDataVisualization_config + 32), *(v0 + OBJC_IVAR____TtC8NewsFeed32SportsKeyPlayerDataVisualization_config + 40));
  v3(v0 + OBJC_IVAR____TtC8NewsFeed32SportsKeyPlayerDataVisualization_configuredEmbedUrl, v2);
  return v0;
}

uint64_t SportsKeyPlayerDataVisualization.__deallocating_deinit()
{
  SportsKeyPlayerDataVisualization.deinit();

  return swift_deallocClassInstance();
}

void *sub_1D70009F8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = swift_allocObject();
  result = SportsKeyPlayerDataVisualization.init(from:)(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

uint64_t static SportsKeyPlayerDataVisualization.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24))
  {
    return 1;
  }

  else
  {
    return sub_1D72646CC();
  }
}

uint64_t SportsKeyPlayerDataVisualizationLocation.identifier.getter()
{
  if (*v0)
  {
    return 0x666E49746E657665;
  }

  else
  {
    return 0x746C7561666564;
  }
}

uint64_t SportsKeyPlayerDataVisualizationLocation.hashValue.getter()
{
  v1 = *v0;
  sub_1D7264A0C();
  MEMORY[0x1DA6FC0B0](v1);
  return sub_1D7264A5C();
}

uint64_t sub_1D7000B70(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1D7001D08(255, &qword_1EDF3C850, type metadata accessor for WebEmbedDataVisualizationURLDataSource, MEMORY[0x1E69E62F8]);
    sub_1D5F8C838(a2, type metadata accessor for WebEmbedDataVisualizationURLDataSource, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1D7000C34()
{
  if (!qword_1EC899360)
  {
    v0 = sub_1D726393C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC899360);
    }
  }
}

unint64_t sub_1D7000C84()
{
  result = qword_1EC881AA0;
  if (!qword_1EC881AA0)
  {
    sub_1D7000C34();
    sub_1D5F8D7E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC881AA0);
  }

  return result;
}

unint64_t sub_1D7000D00()
{
  result = qword_1EC899368;
  if (!qword_1EC899368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC899368);
  }

  return result;
}

uint64_t type metadata accessor for SportsKeyPlayerDataVisualization(uint64_t a1)
{
  result = qword_1EDF1E988;
  if (!qword_1EDF1E988)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D7000DA8(uint64_t a1)
{
  result = sub_1D72585BC();
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

unint64_t sub_1D7000EE4()
{
  result = qword_1EC899370;
  if (!qword_1EC899370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC899370);
  }

  return result;
}

unint64_t sub_1D7000F3C()
{
  result = qword_1EC899378;
  if (!qword_1EC899378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC899378);
  }

  return result;
}

unint64_t sub_1D7000F94()
{
  result = qword_1EC899380;
  if (!qword_1EC899380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC899380);
  }

  return result;
}

void *sub_1D7000FE8(__int128 *a1, char *a2)
{
  v4 = sub_1D72585BC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v116 = &v108 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B4D3E0(0);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  MEMORY[0x1EEE9AC00](v10, v11);
  MEMORY[0x1EEE9AC00](v12, v13);
  v17 = a1[7];
  v171 = a1[6];
  v172 = v17;
  v173 = a1[8];
  v174 = *(a1 + 18);
  v18 = a1[3];
  v167 = a1[2];
  v168 = v18;
  v19 = a1[5];
  v169 = a1[4];
  v170 = v19;
  v20 = a1[1];
  v165 = *a1;
  v166 = v20;
  if (a2)
  {
    v135 = v16;
    v136 = v15;
    v21 = MEMORY[0x1E69E6F90];
    v146 = &v108 - v14;
    sub_1D7001D08(0, &qword_1EC880AC0, sub_1D5E4F358, MEMORY[0x1E69E6F90]);
    inited = swift_initStackObject();
    v108 = xmmword_1D7273AE0;
    *(inited + 16) = xmmword_1D7273AE0;
    sub_1D7001D08(0, &qword_1EC880490, sub_1D5EA74B8, v21);
    v23 = v22;
    sub_1D5EA74B8(0);
    v138 = v24;
    v25 = *(v24 - 8);
    v26 = *(v25 + 72);
    v27 = (*(v25 + 80) + 32) & ~*(v25 + 80);
    v133 = *(v25 + 80);
    v134 = v23;
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_1D7274590;
    v109 = v28;
    v132 = v27;
    v29 = (v28 + v27);
    v31 = *(a2 + 4);
    v30 = *(a2 + 5);
    v32 = type metadata accessor for FormatInspectionItem(0);
    v112 = a2;
    v33 = v32;
    v34 = &v29[*(v32 + 24)];
    *v34 = v31;
    *(v34 + 1) = v30;
    v35 = type metadata accessor for FormatInspectionItem.Value(0);
    swift_storeEnumTagMultiPayload();
    v36 = *(v35 - 8);
    v130 = *(v36 + 56);
    v131 = v35;
    v129 = v36 + 56;
    v130(v34, 0, 1, v35);
    *v29 = 0xD000000000000010;
    *(v29 + 1) = 0x80000001D73C4840;
    *(v29 + 2) = 0;
    *(v29 + 3) = 0;
    v37 = &v29[*(v33 + 28)];
    *v37 = 0;
    *(v37 + 1) = 0;
    v37[16] = -1;
    v38 = *(v33 - 8);
    v39 = *(v38 + 56);
    v40 = v38 + 56;
    (v39)(v29, 0, 1, v33);
    v41 = v146;
    v127 = *(v5 + 16);
    v128 = v5 + 16;
    v127(v146, &v112[OBJC_IVAR____TtC8NewsFeed32SportsKeyPlayerDataVisualization_embedUrl], v4);
    v144 = v5;
    v42 = *(v5 + 56);
    v137 = v4;
    v43 = v4;
    v44 = v112;
    v125 = v42;
    v126 = v5 + 56;
    v42(v41, 0, 1, v43);

    sub_1D711FCD0(0x5255206465626D45, 0xE90000000000004CLL, v41, &v29[v26]);
    v111 = v29;
    v139 = v26;
    v145 = v40;
    v146 = v39;
    (v39)(&v29[v26], 0, 1, v33);
    v45 = *&v44[OBJC_IVAR____TtC8NewsFeed32SportsKeyPlayerDataVisualization_urlDataSources];
    if (v45 >> 62)
    {
      goto LABEL_23;
    }

    v46 = *((v45 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v46)
    {
      while (1)
      {
        v147 = MEMORY[0x1E69E7CC0];
        result = sub_1D6997EC0(0, v46 & ~(v46 >> 63), 0);
        if (v46 < 0)
        {
          break;
        }

        v48 = 0;
        v49 = v147;
        v124 = v45 & 0xC000000000000001;
        v50 = 2 * v139;
        v119 = 3 * v139;
        v118 = (v144 + 48);
        v115 = (v144 + 32);
        v113 = v45 & 0xFFFFFFFFFFFFFF8;
        v114 = (v144 + 8);
        v117 = xmmword_1D7279970;
        v123 = xmmword_1D7287CC0;
        v121 = v46;
        v122 = v45;
        v120 = 2 * v139;
        while (!__OFADD__(v48, 1))
        {
          v143 = v49;
          v144 = v48;
          v142 = v48 + 1;
          if (v124)
          {
            v51 = MEMORY[0x1DA6FB460]();
          }

          else
          {
            if (v48 >= *(v113 + 16))
            {
              goto LABEL_22;
            }

            v51 = *(v45 + 8 * v48 + 32);
          }

          v52 = v132;
          v53 = swift_allocObject();
          *(v53 + 16) = v117;
          v140 = v53;
          v54 = (v53 + v52);
          v56 = v51[2];
          v55 = v51[3];
          sub_1D5F8E840(v56, v55);
          v57 = sub_1D71221AC(0x20746E65746E6F43, 0xEC00000065707954, v56, v55, v54);
          v58 = v33;
          v59 = v33;
          v60 = v146;
          (v146)(v54, 0, 1, v58, v57);
          v61 = v51[4];
          v62 = v51[5];

          v63 = v139;
          v64 = sub_1D711F844(7955787, 0xE300000000000000, v61, v62, &v54[v139]);
          v60(&v54[v63], 0, 1, v59, v64);
          v65 = &v54[v50];
          v141 = v51;
          v66 = v51 + OBJC_IVAR____TtC8NewsFeed38WebEmbedDataVisualizationURLDataSource_url;
          v67 = v135;
          v68 = v137;
          v44 = v127;
          v127(v135, v66, v137);
          v125(v67, 0, 1, v68);
          v69 = v136;
          sub_1D5EB84C0(v67, v136);
          if ((*v118)(v69, 1, v68) == 1)
          {
            sub_1D5B6F13C(v67, sub_1D5B4D3E0);
            v130(&v65[*(v59 + 24)], 1, 1, v131);
            *v65 = v123;
            *(v65 + 2) = 0;
            *(v65 + 3) = 0;
            v70 = &v65[*(v59 + 28)];
            *v70 = 0;
            *(v70 + 1) = 0;
            v70[16] = -1;
          }

          else
          {
            v71 = v116;
            (v44)(v116, v69, v68);
            sub_1D5B6F13C(v67, sub_1D5B4D3E0);
            v72 = *(v59 + 24);
            (*v115)(&v65[v72], v71, v68);
            v73 = v131;
            swift_storeEnumTagMultiPayload();
            v130(&v65[v72], 0, 1, v73);
            *v65 = v123;
            *(v65 + 2) = 0;
            *(v65 + 3) = 0;
            v74 = &v65[*(v59 + 28)];
            *v74 = 0;
            *(v74 + 1) = 0;
            v74[16] = -1;
            (*v114)(v69, v68);
          }

          v33 = v59;
          (v146)(v65, 0, 1, v59);
          sub_1D6795150(0, 0xE000000000000000, 0, 0, v140, v163);
          swift_setDeallocating();
          swift_arrayDestroy();
          swift_deallocClassInstance();
          *(&v154 + 1) = &type metadata for FormatInspectionGroup;
          *&v155 = &off_1F518B2C0;
          v75 = swift_allocObject();
          *&v153 = v75;

          *(v75 + 48) = v164;
          v76 = v163[1];
          *(v75 + 16) = v163[0];
          *(v75 + 32) = v76;
          v147 = v143;
          v78 = *(v143 + 16);
          v77 = *(v143 + 24);
          v45 = v122;
          if (v78 >= v77 >> 1)
          {
            sub_1D6997EC0((v77 > 1), v78 + 1, 1);
          }

          v79 = *(&v154 + 1);
          v80 = v155;
          v81 = __swift_mutable_project_boxed_opaque_existential_1(&v153, *(&v154 + 1));
          v82 = MEMORY[0x1EEE9AC00](v81, v81);
          v84 = &v108 - ((v83 + 15) & 0xFFFFFFFFFFFFFFF0);
          (*(v85 + 16))(v84, v82);
          sub_1D5BD0BE4(v78, v84, &v147, v79, v80);
          __swift_destroy_boxed_opaque_existential_1(&v153);
          v49 = v147;
          v48 = v144 + 1;
          v50 = v120;
          if (v142 == v121)
          {
            v44 = v112;
            goto LABEL_25;
          }
        }

        __break(1u);
LABEL_22:
        __break(1u);
LABEL_23:
        v46 = sub_1D7263BFC();
        if (!v46)
        {
          goto LABEL_24;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_24:
      v50 = 2 * v139;
      v49 = MEMORY[0x1E69E7CC0];
LABEL_25:
      v87 = sub_1D5F62BFC(v49);

      v88 = sub_1D7073500(v87);

      v89 = v111;
      sub_1D711AD20(0x756F532061746144, 0xEC00000073656372, v88, 0, 0, &v111[v50]);
      (v146)(&v89[v50], 0, 1, v33);
      v90 = &v44[OBJC_IVAR____TtC8NewsFeed32SportsKeyPlayerDataVisualization_config];
      v91 = *&v44[OBJC_IVAR____TtC8NewsFeed32SportsKeyPlayerDataVisualization_config + 8];
      if (v91)
      {
        v92 = *v90;
      }

      else
      {
        v92 = 0;
      }

      v93 = 3 * v139;
      sub_1D7001D08(0, &qword_1EC8803C0, sub_1D5E4F38C, MEMORY[0x1E69E6F90]);
      v94 = swift_initStackObject();
      *(v94 + 16) = v108;
      v159 = v171;
      v160 = v172;
      v161 = v173;
      v162 = v174;
      v155 = v167;
      v156 = v168;
      v157 = v169;
      v158 = v170;
      v153 = v165;
      v154 = v166;
      v95 = v90[1];
      v96 = v90[2];
      v97 = v90[3];
      v98 = v90[4];
      v99 = v90[5];
      v147 = *v90;
      v148 = v95;
      v149 = v96;
      v150 = v97;
      v151 = v98;
      v152 = v99;
      sub_1D5F8B638(v147, v95, v96);
      v100 = sub_1D6924F88(&v153, &v147);
      sub_1D5F8BBC8(v147, v148, v149, v150, v151, v152);
      *(v94 + 56) = &type metadata for FormatInspection;
      *(v94 + 64) = &off_1F51E3FD0;
      *(v94 + 32) = v100;
      v101 = sub_1D5F62BFC(v94);
      swift_setDeallocating();
      __swift_destroy_boxed_opaque_existential_1((v94 + 32));
      v102 = sub_1D7073500(v101);

      v103 = v111;
      sub_1D711AD20(0x6769666E6F43, 0xE600000000000000, v102, v92, v91, &v111[v93]);
      (v146)(&v103[v93], 0, 1, v33);
      sub_1D6795150(0x79616C502079654BLL, 0xEB00000000737265, 0, 0, v109, &v153);
      swift_setDeallocating();
      swift_arrayDestroy();
      swift_deallocClassInstance();
      v104 = inited;
      *(inited + 56) = &type metadata for FormatInspectionGroup;
      *(v104 + 64) = &off_1F518B2C0;
      v105 = swift_allocObject();
      *(v104 + 32) = v105;
      *(v105 + 48) = v155;
      v106 = v154;
      *(v105 + 16) = v153;
      *(v105 + 32) = v106;
      v107 = sub_1D7073500(v104);
      swift_setDeallocating();
      sub_1D5B6F13C(v104 + 32, sub_1D5E4F358);

      return v107;
    }
  }

  else
  {
    v86 = MEMORY[0x1E69E7CC0];

    return sub_1D7073500(v86);
  }

  return result;
}

unint64_t sub_1D7001CBC(uint64_t a1, uint64_t a2)
{
  v2 = sub_1D72641CC();

  if (v2 >= 8)
  {
    return 8;
  }

  else
  {
    return v2;
  }
}

void sub_1D7001D08(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1D7001D84(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 1936154996 && a2 == 0xE400000000000000)
  {

    v6 = 0;
  }

  else
  {
    v5 = sub_1D72646CC();

    v6 = v5 ^ 1;
  }

  *a3 = v6 & 1;
}

uint64_t sub_1D7001E0C(uint64_t a1)
{
  v2 = sub_1D700202C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D7001E48(uint64_t a1)
{
  v2 = sub_1D700202C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SportsEmbedConfigResource.encode(to:)(void *a1)
{
  sub_1D70022F4(0, &qword_1EC899388, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = v11 - v7;
  v9 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D700202C();

  sub_1D7264B5C();
  v11[1] = v9;
  sub_1D7002080();
  sub_1D7002358(&qword_1EC899390, sub_1D70020D0, MEMORY[0x1E69E6300]);
  sub_1D726443C();

  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_1D700202C()
{
  result = qword_1EDF0BCA8;
  if (!qword_1EDF0BCA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0BCA8);
  }

  return result;
}

void sub_1D7002080()
{
  if (!qword_1EDF04B78)
  {
    v0 = sub_1D72627FC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF04B78);
    }
  }
}

unint64_t sub_1D70020D0()
{
  result = qword_1EC899398;
  if (!qword_1EC899398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC899398);
  }

  return result;
}

uint64_t SportsEmbedConfigResource.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_1D70022F4(0, &qword_1EDF039D0, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = v12 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D700202C();
  sub_1D7264B0C();
  if (!v2)
  {
    sub_1D7002080();
    sub_1D7002358(&qword_1EDF04B70, sub_1D70023C4, MEMORY[0x1E69E6330]);
    sub_1D726431C();
    (*(v7 + 8))(v10, v6);
    *a2 = v12[1];
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_1D70022F4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D700202C();
    v7 = a3(a1, &type metadata for SportsEmbedConfigResource.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1D7002358(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_1D7002080();
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D70023C4()
{
  result = qword_1EDF0A7D8;
  if (!qword_1EDF0A7D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0A7D8);
  }

  return result;
}

unint64_t sub_1D700246C()
{
  result = qword_1EC8993A0;
  if (!qword_1EC8993A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8993A0);
  }

  return result;
}

unint64_t sub_1D70024C4()
{
  result = qword_1EDF0BC98;
  if (!qword_1EDF0BC98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0BC98);
  }

  return result;
}

unint64_t sub_1D700251C()
{
  result = qword_1EDF0BCA0;
  if (!qword_1EDF0BCA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0BCA0);
  }

  return result;
}

uint64_t static FormatTextAdjustmentOtherBaseline.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a2[2];
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_1D72646CC() & 1) == 0)
  {
    return 0;
  }

  return _s8NewsFeed19FormatTextNodeStyleC2eeoiySbAC_ACtFZ_0(v2, v3);
}

uint64_t FormatTextAdjustmentOtherBaseline.targetIdentifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_1D7002634(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a2[2];
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_1D72646CC() & 1) == 0)
  {
    return 0;
  }

  return _s8NewsFeed19FormatTextNodeStyleC2eeoiySbAC_ACtFZ_0(v2, v3);
}

unint64_t sub_1D70026A8(uint64_t a1)
{
  result = sub_1D70026D0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D70026D0()
{
  result = qword_1EC8993A8;
  if (!qword_1EC8993A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8993A8);
  }

  return result;
}

unint64_t sub_1D7002724(void *a1)
{
  a1[1] = sub_1D5CA00E8();
  a1[2] = sub_1D67035DC();
  result = sub_1D700275C();
  a1[3] = result;
  return result;
}

unint64_t sub_1D700275C()
{
  result = qword_1EC8993B0;
  if (!qword_1EC8993B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8993B0);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_8NewsFeed24FormatItemNodeActionDataO(uint64_t a1)
{
  if ((*(a1 + 8) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 8) & 3;
  }
}

uint64_t FeedBannerAd.with(bannerAd:)@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v5 = sub_1D7260DDC();
  v6 = *(v5 - 8);
  v8 = MEMORY[0x1EEE9AC00](v5, v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v2;
  v11 = v2[1];
  (*(v6 + 16))(v10, a1, v5, v8);
  v13 = type metadata accessor for FeedBannerAd(0);
  *&a2[v13[6]] = 0x2000;
  v14 = &a2[v13[7]];
  *v14 = 0;
  v14[8] = 1;
  *&a2[v13[8]] = xmmword_1D72830B0;
  *a2 = v12;
  *(a2 + 1) = v11;
  (*(v6 + 32))(&a2[v13[5]], v10, v5);
}

uint64_t FeedBannerAd.identifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t FeedBannerAd.bannerAd.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for FeedBannerAd(0) + 20);
  v4 = sub_1D7260DDC();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t FeedBannerAd.traits.getter@<X0>(void *a1@<X8>)
{
  result = type metadata accessor for FeedBannerAd(0);
  *a1 = *(v1 + *(result + 24));
  return result;
}

uint64_t FeedBannerAd.layoutDirection.getter@<X0>(uint64_t a1@<X8>)
{
  result = type metadata accessor for FeedBannerAd(0);
  v4 = (v1 + *(result + 28));
  v5 = *v4;
  LOBYTE(v4) = *(v4 + 8);
  *a1 = v5;
  *(a1 + 8) = v4;
  return result;
}

uint64_t FeedBannerAd.kind.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for FeedBannerAd(0) + 32));
  v4 = *v3;
  v5 = v3[1];
  *a1 = *v3;
  a1[1] = v5;

  return sub_1D5BF2DDC(v4, v5);
}

uint64_t FeedBannerAd.init(identifier:bannerAd:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v8 = type metadata accessor for FeedBannerAd(0);
  *&a4[v8[6]] = 0x2000;
  v9 = &a4[v8[7]];
  *v9 = 0;
  v9[8] = 1;
  *&a4[v8[8]] = xmmword_1D72830B0;
  *a4 = a1;
  *(a4 + 1) = a2;
  v10 = v8[5];
  v11 = sub_1D7260DDC();
  v12 = *(*(v11 - 8) + 32);

  return v12(&a4[v10], a3, v11);
}

uint64_t sub_1D7002B88@<X0>(uint64_t a1@<X0>, int *a2@<X1>, char *a3@<X8>)
{
  v8 = *v3;
  v7 = v3[1];
  v9 = a2[5];
  v10 = sub_1D7260DDC();
  (*(*(v10 - 8) + 16))(&a3[v9], a1, v10);
  v11 = a2[7];
  *&a3[a2[6]] = 0x2000;
  v12 = &a3[v11];
  *v12 = 0;
  v12[8] = 1;
  *&a3[a2[8]] = xmmword_1D72830B0;
  *a3 = v8;
  *(a3 + 1) = v7;
}

uint64_t FeedBannerAd.hashValue.getter()
{
  sub_1D7264A0C();
  type metadata accessor for FeedBannerAd(0);
  sub_1D5BD58C4(&qword_1EC8993B8, type metadata accessor for FeedBannerAd, &protocol conformance descriptor for FeedBannerAd);
  sub_1D7261E8C();
  return sub_1D7264A5C();
}

uint64_t sub_1D7002CD0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D5BD58C4(&qword_1EC8993C0, type metadata accessor for FeedBannerAd, &protocol conformance descriptor for FeedBannerAd);

  return MEMORY[0x1EEE45140](a1, a2, v4);
}

uint64_t sub_1D7002D4C(uint64_t *a1, void *a2, uint64_t a3)
{
  v3 = *a1 == *a2 && a1[1] == a2[1];
  if (!v3 && (sub_1D72646CC() & 1) == 0)
  {
    return 0;
  }

  return sub_1D7260DAC();
}

double sub_1D7002EAC@<D0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  if ((*v3 & 0x8000000000000000) != 0)
  {

    sub_1D5FBB058();
    sub_1D7002EAC(a1, a2, v7);
  }

  else
  {
    sub_1D686ED9C(a1, a2);
  }

  return result;
}

uint64_t _s8NewsFeed23FormatIssueCoverContentO2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  if ((*a1 & 0x8000000000000000) == 0)
  {
    if ((v3 & 0x8000000000000000) == 0)
    {
      return (*(v2 + 16) ^ *(v3 + 16) ^ 1) & 1;
    }

    return 0;
  }

  if ((v3 & 0x8000000000000000) == 0)
  {
    return 0;
  }

  v6 = *((v2 & 0x7FFFFFFFFFFFFFFFLL) + 0x10);
  v5 = *((v2 & 0x7FFFFFFFFFFFFFFFLL) + 0x18);
  v7 = *((v3 & 0x7FFFFFFFFFFFFFFFLL) + 0x10);
  v8 = *((v3 & 0x7FFFFFFFFFFFFFFFLL) + 0x18);

  LOBYTE(v5) = sub_1D6365DAC(v6, v5, v7, v8);

  return v5 & 1;
}

unint64_t sub_1D700307C(uint64_t a1)
{
  result = sub_1D6698B60();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D70030A4(void *a1)
{
  a1[1] = sub_1D6705B30();
  a1[2] = sub_1D665D700();
  result = sub_1D70030DC();
  a1[3] = result;
  return result;
}

unint64_t sub_1D70030DC()
{
  result = qword_1EC8993C8;
  if (!qword_1EC8993C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8993C8);
  }

  return result;
}

id EmbedLocation.location.getter()
{
  sub_1D5B4D3E0(0);
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v4 = &v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v34 - v7;
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v34 - v11;
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v34 - v15;
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = &v34 - v19;
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = &v34 - v23;
  v25 = *v0;
  v26 = sub_1D72585BC();
  v27 = *(v26 - 8);
  v28 = (v27 + 48);
  v29 = *(v27 + 56);
  if (v25 > 2)
  {
    if (v25 == 3)
    {
      v29(v12, 1, 1, v26);
      v30 = sub_1D726203C();
      if ((*v28)(v12, 1, v26) != 1)
      {
        v31 = sub_1D725844C();
        (*(v27 + 8))(v12, v26);
        goto LABEL_19;
      }
    }

    else if (v25 == 4)
    {
      v29(v8, 1, 1, v26);
      v30 = sub_1D726203C();
      if ((*v28)(v8, 1, v26) != 1)
      {
        v31 = sub_1D725844C();
        (*(v27 + 8))(v8, v26);
        goto LABEL_19;
      }
    }

    else
    {
      v29(v4, 1, 1, v26);
      v30 = sub_1D726203C();
      if ((*v28)(v4, 1, v26) != 1)
      {
        v31 = sub_1D725844C();
        (*(v27 + 8))(v4, v26);
        goto LABEL_19;
      }
    }

LABEL_17:
    v31 = 0;
    goto LABEL_19;
  }

  if (!v25)
  {
    v29(v24, 1, 1, v26);
    v30 = sub_1D726203C();
    if ((*v28)(v24, 1, v26) != 1)
    {
      v31 = sub_1D725844C();
      (*(v27 + 8))(v24, v26);
      goto LABEL_19;
    }

    goto LABEL_17;
  }

  if (v25 != 1)
  {
    v29(v16, 1, 1, v26);
    v30 = sub_1D726203C();
    if ((*v28)(v16, 1, v26) != 1)
    {
      v31 = sub_1D725844C();
      (*(v27 + 8))(v16, v26);
      goto LABEL_19;
    }

    goto LABEL_17;
  }

  v29(v20, 1, 1, v26);
  v30 = sub_1D726203C();
  if ((*v28)(v20, 1, v26) == 1)
  {
    goto LABEL_17;
  }

  v31 = sub_1D725844C();
  (*(v27 + 8))(v20, v26);
LABEL_19:
  v32 = [objc_allocWithZone(MEMORY[0x1E69CE190]) initWithContext:v30 URL:v31];

  return v32;
}

uint64_t EmbedLocation.hashValue.getter()
{
  v1 = *v0;
  sub_1D7264A0C();
  MEMORY[0x1DA6FC0B0](v1);
  return sub_1D7264A5C();
}

unint64_t sub_1D7003658()
{
  result = qword_1EC8993D0;
  if (!qword_1EC8993D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8993D0);
  }

  return result;
}

BOOL FormatWebEmbedBinding.Bool.BOOL(from:)(uint64_t a1)
{
  v108 = a1;
  v2 = v1;
  v3 = type metadata accessor for WebEmbedDataVisualization(0);
  v106 = *(v3 - 8);
  v107 = v3;
  MEMORY[0x1EEE9AC00](v3, v4);
  v103 = (&v94 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v6, v7);
  v102 = (&v94 - v8);
  MEMORY[0x1EEE9AC00](v9, v10);
  v101 = (&v94 - v11);
  MEMORY[0x1EEE9AC00](v12, v13);
  v100 = (&v94 - v14);
  MEMORY[0x1EEE9AC00](v15, v16);
  v99 = (&v94 - v17);
  MEMORY[0x1EEE9AC00](v18, v19);
  v98 = (&v94 - v20);
  MEMORY[0x1EEE9AC00](v21, v22);
  v97 = (&v94 - v23);
  MEMORY[0x1EEE9AC00](v24, v25);
  v96 = (&v94 - v26);
  MEMORY[0x1EEE9AC00](v27, v28);
  v95 = (&v94 - v29);
  sub_1D5B62EF4(0, qword_1EDF3EB00, type metadata accessor for WebEmbedDataVisualization);
  MEMORY[0x1EEE9AC00](v30 - 8, v31);
  v105 = &v94 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33, v34);
  v104 = &v94 - v35;
  MEMORY[0x1EEE9AC00](v36, v37);
  v39 = &v94 - v38;
  MEMORY[0x1EEE9AC00](v40, v41);
  v43 = &v94 - v42;
  MEMORY[0x1EEE9AC00](v44, v45);
  v47 = &v94 - v46;
  MEMORY[0x1EEE9AC00](v48, v49);
  v51 = &v94 - v50;
  MEMORY[0x1EEE9AC00](v52, v53);
  v55 = &v94 - v54;
  MEMORY[0x1EEE9AC00](v56, v57);
  v59 = &v94 - v58;
  MEMORY[0x1EEE9AC00](v60, v61);
  v63 = &v94 - v62;
  sub_1D5B62EF4(0, qword_1EDF42030, type metadata accessor for FeedHeadline);
  MEMORY[0x1EEE9AC00](v64 - 8, v65);
  v67 = &v94 - v66;
  v68 = *v2;
  v69 = type metadata accessor for FeedWebEmbed(0);
  if (v68 > 4)
  {
    if (v68 <= 6)
    {
      if (v68 == 5)
      {
        sub_1D70044E8(v108 + *(v69 + 52), v47, qword_1EDF3EB00, type metadata accessor for WebEmbedDataVisualization);
        if ((*(v106 + 48))(v47, 1, v107) == 1)
        {
          v70 = v47;
          goto LABEL_27;
        }

        v84 = v99;
        sub_1D6A5C378(v47, v99, type metadata accessor for WebEmbedDataVisualization);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          sub_1D6A5C3E0(v84, type metadata accessor for WebEmbedDataVisualization);
          v77 = v47;
          goto LABEL_50;
        }

        v91 = *v84;
        sub_1D6A5C3E0(v47, type metadata accessor for WebEmbedDataVisualization);
        v87 = v91 >> 61 == 3;
      }

      else
      {
        sub_1D70044E8(v108 + *(v69 + 52), v43, qword_1EDF3EB00, type metadata accessor for WebEmbedDataVisualization);
        if ((*(v106 + 48))(v43, 1, v107) == 1)
        {
          v70 = v43;
          goto LABEL_27;
        }

        v85 = v100;
        sub_1D6A5C378(v43, v100, type metadata accessor for WebEmbedDataVisualization);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          sub_1D6A5C3E0(v85, type metadata accessor for WebEmbedDataVisualization);
          v77 = v43;
          goto LABEL_50;
        }

        v92 = *v85;
        sub_1D6A5C3E0(v43, type metadata accessor for WebEmbedDataVisualization);
        v87 = v92 >> 61 == 4;
      }
    }

    else
    {
      if (v68 == 7)
      {
        sub_1D70044E8(v108 + *(v69 + 52), v39, qword_1EDF3EB00, type metadata accessor for WebEmbedDataVisualization);
        if ((*(v106 + 48))(v39, 1, v107) == 1)
        {
          v70 = v39;
          goto LABEL_27;
        }

        v76 = v101;
        sub_1D6A5C378(v39, v101, type metadata accessor for WebEmbedDataVisualization);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          sub_1D6A5C3E0(v76, type metadata accessor for WebEmbedDataVisualization);
          v77 = v39;
LABEL_50:
          sub_1D6A5C3E0(v77, type metadata accessor for WebEmbedDataVisualization);
          return 0;
        }

        v86 = *v76;
        sub_1D6A5C3E0(v39, type metadata accessor for WebEmbedDataVisualization);
        v87 = v86 >> 61 == 5;
        goto LABEL_60;
      }

      if (v68 != 8)
      {
        v63 = v105;
        sub_1D70044E8(v108 + *(v69 + 52), v105, qword_1EDF3EB00, type metadata accessor for WebEmbedDataVisualization);
        if ((*(v106 + 48))(v63, 1, v107) == 1)
        {
          v70 = v63;
          goto LABEL_27;
        }

        v80 = v103;
        sub_1D6A5C378(v63, v103, type metadata accessor for WebEmbedDataVisualization);
        if (swift_getEnumCaseMultiPayload() != 1)
        {
          v81 = *v80;
          sub_1D6A5C3E0(v63, type metadata accessor for WebEmbedDataVisualization);
          v109 = v81;
          SportsDataVisualization.event.getter();
          v83 = v82;

          if (v83)
          {
            swift_unknownObjectRelease();
            return 1;
          }

          return 0;
        }

LABEL_47:
        sub_1D6A5C3E0(v80, type metadata accessor for WebEmbedDataVisualization);
        v77 = v63;
        goto LABEL_50;
      }

      v59 = v104;
      sub_1D70044E8(v108 + *(v69 + 52), v104, qword_1EDF3EB00, type metadata accessor for WebEmbedDataVisualization);
      if ((*(v106 + 48))(v59, 1, v107) == 1)
      {
        v70 = v59;
        goto LABEL_27;
      }

      v74 = v102;
      sub_1D6A5C378(v59, v102, type metadata accessor for WebEmbedDataVisualization);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        goto LABEL_38;
      }

      v89 = *v74;
      sub_1D6A5C3E0(v59, type metadata accessor for WebEmbedDataVisualization);
      v87 = v89 >> 61 == 6;
    }

LABEL_60:
    v93 = v87;

    return v93;
  }

  if (v68 <= 1)
  {
    if (!v68)
    {
      sub_1D70044E8(v108 + *(v69 + 48), v67, qword_1EDF42030, type metadata accessor for FeedHeadline);
      v71 = type metadata accessor for FeedHeadline(0);
      v72 = (*(*(v71 - 8) + 48))(v67, 1, v71) != 1;
      sub_1D7004554(v67, qword_1EDF42030, type metadata accessor for FeedHeadline);
      return v72;
    }

    sub_1D70044E8(v108 + *(v69 + 52), v63, qword_1EDF3EB00, type metadata accessor for WebEmbedDataVisualization);
    if ((*(v106 + 48))(v63, 1, v107) == 1)
    {
      v70 = v63;
      goto LABEL_27;
    }

    v80 = v95;
    sub_1D6A5C378(v63, v95, type metadata accessor for WebEmbedDataVisualization);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_1D6A5C3E0(v63, type metadata accessor for WebEmbedDataVisualization);
LABEL_57:

      return 1;
    }

    goto LABEL_47;
  }

  if (v68 == 2)
  {
    sub_1D70044E8(v108 + *(v69 + 52), v59, qword_1EDF3EB00, type metadata accessor for WebEmbedDataVisualization);
    if ((*(v106 + 48))(v59, 1, v107) == 1)
    {
      v70 = v59;
      goto LABEL_27;
    }

    v74 = v96;
    sub_1D6A5C378(v59, v96, type metadata accessor for WebEmbedDataVisualization);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v75 = *v74;
      sub_1D6A5C3E0(v59, type metadata accessor for WebEmbedDataVisualization);
      if (!(v75 >> 61))
      {
        goto LABEL_57;
      }

      return 0;
    }

LABEL_38:
    sub_1D6A5C3E0(v74, type metadata accessor for WebEmbedDataVisualization);
    v77 = v59;
    goto LABEL_50;
  }

  if (v68 != 3)
  {
    sub_1D70044E8(v108 + *(v69 + 52), v51, qword_1EDF3EB00, type metadata accessor for WebEmbedDataVisualization);
    if ((*(v106 + 48))(v51, 1, v107) == 1)
    {
      v70 = v51;
      goto LABEL_27;
    }

    v79 = v98;
    sub_1D6A5C378(v51, v98, type metadata accessor for WebEmbedDataVisualization);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1D6A5C3E0(v79, type metadata accessor for WebEmbedDataVisualization);
      v77 = v51;
      goto LABEL_50;
    }

    v90 = *v79;
    sub_1D6A5C3E0(v51, type metadata accessor for WebEmbedDataVisualization);
    v87 = v90 >> 61 == 2;
    goto LABEL_60;
  }

  sub_1D70044E8(v108 + *(v69 + 52), v55, qword_1EDF3EB00, type metadata accessor for WebEmbedDataVisualization);
  if ((*(v106 + 48))(v55, 1, v107) == 1)
  {
    v70 = v55;
LABEL_27:
    sub_1D7004554(v70, qword_1EDF3EB00, type metadata accessor for WebEmbedDataVisualization);
    return 0;
  }

  v78 = v97;
  sub_1D6A5C378(v55, v97, type metadata accessor for WebEmbedDataVisualization);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1D6A5C3E0(v78, type metadata accessor for WebEmbedDataVisualization);
    v77 = v55;
    goto LABEL_50;
  }

  v88 = *v78;
  sub_1D6A5C3E0(v55, type metadata accessor for WebEmbedDataVisualization);

  return v88 >> 61 == 1;
}

uint64_t sub_1D70044E8(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1D5B62EF4(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1D7004554(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1D5B62EF4(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t FormatWebEmbedBinding.Bool.CodingType.rawValue.getter()
{
  v1 = *v0;
  if (v1 > 4)
  {
    v6 = 0xD000000000000026;
    v7 = 0x74726F7053736168;
    if (v1 == 8)
    {
      v7 = 0xD000000000000023;
    }

    if (v1 != 7)
    {
      v6 = v7;
    }

    v8 = 0xD000000000000022;
    if (v1 != 5)
    {
      v8 = 0xD000000000000023;
    }

    if (*v0 <= 6u)
    {
      return v8;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v2 = 0x6369747241736168;
    v3 = 0xD00000000000001FLL;
    v4 = 0xD000000000000021;
    if (v1 == 3)
    {
      v4 = 0xD000000000000023;
    }

    if (v1 != 2)
    {
      v3 = v4;
    }

    if (*v0)
    {
      v2 = 0xD00000000000001ALL;
    }

    if (*v0 <= 1u)
    {
      return v2;
    }

    else
    {
      return v3;
    }
  }
}

uint64_t sub_1D7004744()
{
  v1 = *v0;
  sub_1D7264A0C();
  sub_1D694E7A0(v3, v1);
  return sub_1D7264A5C();
}

uint64_t sub_1D7004794(uint64_t a1)
{
  v2 = *v1;
  sub_1D7264A0C();
  sub_1D694E7A0(v4, v2);
  return sub_1D7264A5C();
}

unint64_t sub_1D70047D8@<X0>(unint64_t *a1@<X8>)
{
  result = FormatWebEmbedBinding.Bool.CodingType.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t FormatWebEmbedBinding.Bool.hashValue.getter()
{
  v1 = *v0;
  sub_1D7264A0C();
  MEMORY[0x1DA6FC0B0](v1);
  return sub_1D7264A5C();
}

unint64_t sub_1D70048D8()
{
  result = qword_1EC8993D8;
  if (!qword_1EC8993D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8993D8);
  }

  return result;
}

unint64_t sub_1D7004930()
{
  result = qword_1EC8993E0;
  if (!qword_1EC8993E0)
  {
    sub_1D7004988();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8993E0);
  }

  return result;
}

void sub_1D7004988()
{
  if (!qword_1EC8993E8)
  {
    v0 = sub_1D72627FC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC8993E8);
    }
  }
}

unint64_t sub_1D70049DC()
{
  result = qword_1EC8993F0;
  if (!qword_1EC8993F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8993F0);
  }

  return result;
}

unint64_t sub_1D7004A30(uint64_t a1)
{
  result = sub_1D7004A58();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D7004A58()
{
  result = qword_1EC8993F8;
  if (!qword_1EC8993F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8993F8);
  }

  return result;
}

unint64_t sub_1D7004AAC(void *a1)
{
  a1[1] = sub_1D5CC7648();
  a1[2] = sub_1D66FE3C4();
  result = sub_1D70049DC();
  a1[3] = result;
  return result;
}

uint64_t sub_1D7004B1C@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X8>)
{
  v190 = a2;
  v187 = a3;
  v188 = a1;
  v3 = type metadata accessor for WebEmbedDataVisualization(0);
  v185 = *(v3 - 8);
  v186 = v3;
  MEMORY[0x1EEE9AC00](v3, v4);
  v175 = (&v168 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v6, v7);
  v174 = (&v168 - v8);
  MEMORY[0x1EEE9AC00](v9, v10);
  v173 = (&v168 - v11);
  MEMORY[0x1EEE9AC00](v12, v13);
  v172 = (&v168 - v14);
  MEMORY[0x1EEE9AC00](v15, v16);
  v171 = (&v168 - v17);
  MEMORY[0x1EEE9AC00](v18, v19);
  v170 = (&v168 - v20);
  MEMORY[0x1EEE9AC00](v21, v22);
  v169 = (&v168 - v23);
  MEMORY[0x1EEE9AC00](v24, v25);
  v168 = &v168 - v26;
  sub_1D5B62EF4(0, qword_1EDF3EB00, type metadata accessor for WebEmbedDataVisualization);
  MEMORY[0x1EEE9AC00](v27 - 8, v28);
  v184 = &v168 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30, v31);
  v183 = &v168 - v32;
  MEMORY[0x1EEE9AC00](v33, v34);
  v182 = &v168 - v35;
  MEMORY[0x1EEE9AC00](v36, v37);
  v181 = &v168 - v38;
  MEMORY[0x1EEE9AC00](v39, v40);
  v180 = &v168 - v41;
  MEMORY[0x1EEE9AC00](v42, v43);
  v179 = &v168 - v44;
  MEMORY[0x1EEE9AC00](v45, v46);
  v178 = &v168 - v47;
  MEMORY[0x1EEE9AC00](v48, v49);
  v177 = &v168 - v50;
  sub_1D5B62EF4(0, qword_1EDF42030, type metadata accessor for FeedHeadline);
  MEMORY[0x1EEE9AC00](v51 - 8, v52);
  v176 = &v168 - v53;
  v54 = type metadata accessor for FeedWebEmbed(0);
  MEMORY[0x1EEE9AC00](v54, v55);
  MEMORY[0x1EEE9AC00](v56, v57);
  v59 = &v168 - v58;
  MEMORY[0x1EEE9AC00](v60, v61);
  v63 = &v168 - v62;
  MEMORY[0x1EEE9AC00](v64, v65);
  v67 = &v168 - v66;
  MEMORY[0x1EEE9AC00](v68, v69);
  v71 = &v168 - v70;
  MEMORY[0x1EEE9AC00](v72, v73);
  v75 = &v168 - v74;
  MEMORY[0x1EEE9AC00](v76, v77);
  v79 = &v168 - v78;
  MEMORY[0x1EEE9AC00](v80, v81);
  v83 = &v168 - v82;
  MEMORY[0x1EEE9AC00](v84, v85);
  v87 = &v168 - v86;
  MEMORY[0x1EEE9AC00](v88, v89);
  v93 = &v168 - v91;
  v94 = *v188;
  if (v94 <= 4)
  {
    if (*v188 > 1u)
    {
      if (v94 != 2)
      {
        v95 = v90;
        if (v94 == 3)
        {
          v96 = 0x80000001D73FA7D0;
          sub_1D6A5C378(v190, v79, type metadata accessor for FeedWebEmbed);
          v97 = v179;
          sub_1D70044E8(&v79[*(v95 + 52)], v179, qword_1EDF3EB00, type metadata accessor for WebEmbedDataVisualization);
          sub_1D6A5C3E0(v79, type metadata accessor for FeedWebEmbed);
          v98 = (*(v185 + 48))(v97, 1, v186);
          v99 = v187;
          if (v98 == 1)
          {
            sub_1D7004554(v97, qword_1EDF3EB00, type metadata accessor for WebEmbedDataVisualization);
LABEL_43:
            v142 = 0;
LABEL_64:
            v107 = type metadata accessor for FormatInspectionItem(0);
            v156 = *(v107 + 24);
            *(v99 + v156) = v142;
            v157 = type metadata accessor for FormatInspectionItem.Value(0);
            swift_storeEnumTagMultiPayload();
            (*(*(v157 - 8) + 56))(v99 + v156, 0, 1, v157);
            v149 = 0xD000000000000027;
            goto LABEL_76;
          }

          v133 = v170;
          sub_1D6A5C378(v97, v170, type metadata accessor for WebEmbedDataVisualization);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            sub_1D6A5C3E0(v133, type metadata accessor for WebEmbedDataVisualization);
            v134 = v97;
LABEL_42:
            sub_1D6A5C3E0(v134, type metadata accessor for WebEmbedDataVisualization);
            goto LABEL_43;
          }

          v150 = *v133;
          sub_1D6A5C3E0(v97, type metadata accessor for WebEmbedDataVisualization);
          v151 = v150 >> 61 == 1;
          goto LABEL_60;
        }

        v96 = 0x80000001D73FA7A0;
        sub_1D6A5C378(v190, v75, type metadata accessor for FeedWebEmbed);
        v119 = v180;
        sub_1D70044E8(&v75[*(v95 + 52)], v180, qword_1EDF3EB00, type metadata accessor for WebEmbedDataVisualization);
        sub_1D6A5C3E0(v75, type metadata accessor for FeedWebEmbed);
        v120 = (*(v185 + 48))(v119, 1, v186);
        v99 = v187;
        if (v120 == 1)
        {
          sub_1D7004554(v119, qword_1EDF3EB00, type metadata accessor for WebEmbedDataVisualization);
        }

        else
        {
          v139 = v171;
          sub_1D6A5C378(v119, v171, type metadata accessor for WebEmbedDataVisualization);
          if (swift_getEnumCaseMultiPayload() != 1)
          {
            v152 = *v139;
            sub_1D6A5C3E0(v119, type metadata accessor for WebEmbedDataVisualization);
            v140 = v152 >> 61 == 2;

            goto LABEL_58;
          }

          sub_1D6A5C3E0(v139, type metadata accessor for WebEmbedDataVisualization);
          sub_1D6A5C3E0(v119, type metadata accessor for WebEmbedDataVisualization);
        }

        v140 = 0;
LABEL_58:
        v107 = type metadata accessor for FormatInspectionItem(0);
        v153 = *(v107 + 24);
        *(v99 + v153) = v140;
        v154 = type metadata accessor for FormatInspectionItem.Value(0);
        swift_storeEnumTagMultiPayload();
        (*(*(v154 - 8) + 56))(v99 + v153, 0, 1, v154);
        v149 = 0xD000000000000025;
LABEL_76:
        *v99 = v149;
        v99[1] = v96;
        goto LABEL_77;
      }

      v96 = 0x80000001D73FA800;
      v113 = v90;
      sub_1D6A5C378(v190, v83, type metadata accessor for FeedWebEmbed);
      v114 = v178;
      sub_1D70044E8(&v83[*(v113 + 52)], v178, qword_1EDF3EB00, type metadata accessor for WebEmbedDataVisualization);
      sub_1D6A5C3E0(v83, type metadata accessor for FeedWebEmbed);
      if ((*(v185 + 48))(v114, 1, v186) == 1)
      {
        sub_1D7004554(v114, qword_1EDF3EB00, type metadata accessor for WebEmbedDataVisualization);
        v115 = 0;
        v99 = v187;
LABEL_75:
        v107 = type metadata accessor for FormatInspectionItem(0);
        v163 = *(v107 + 24);
        *(v99 + v163) = v115;
        v164 = type metadata accessor for FormatInspectionItem.Value(0);
        swift_storeEnumTagMultiPayload();
        (*(*(v164 - 8) + 56))(v99 + v163, 0, 1, v164);
        v149 = 0xD000000000000023;
        goto LABEL_76;
      }

      v129 = v169;
      sub_1D6A5C378(v114, v169, type metadata accessor for WebEmbedDataVisualization);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v99 = v187;
      if (EnumCaseMultiPayload == 1)
      {
        sub_1D6A5C3E0(v129, type metadata accessor for WebEmbedDataVisualization);
        sub_1D6A5C3E0(v114, type metadata accessor for WebEmbedDataVisualization);
      }

      else
      {
        v145 = *v129;
        sub_1D6A5C3E0(v114, type metadata accessor for WebEmbedDataVisualization);
        if (!(v145 >> 61))
        {

          v115 = 1;
          goto LABEL_75;
        }
      }

      v115 = 0;
      goto LABEL_75;
    }

    v103 = v90;
    if (!*v188)
    {
      sub_1D6A5C378(v190, &v168 - v91, type metadata accessor for FeedWebEmbed);
      v104 = v176;
      sub_1D70044E8(&v93[*(v103 + 48)], v176, qword_1EDF42030, type metadata accessor for FeedHeadline);
      sub_1D6A5C3E0(v93, type metadata accessor for FeedWebEmbed);
      v105 = type metadata accessor for FeedHeadline(0);
      v106 = (*(*(v105 - 8) + 48))(v104, 1, v105) != 1;
      sub_1D7004554(v104, qword_1EDF42030, type metadata accessor for FeedHeadline);
      v107 = type metadata accessor for FormatInspectionItem(0);
      v108 = *(v107 + 24);
      v99 = v187;
      *(v187 + v108) = v106;
      v109 = type metadata accessor for FormatInspectionItem.Value(0);
      swift_storeEnumTagMultiPayload();
      (*(*(v109 - 8) + 56))(v99 + v108, 0, 1, v109);
      *v99 = xmmword_1D73810D0;
LABEL_77:
      v99[2] = 0;
      v99[3] = 0;
      v165 = v99 + *(v107 + 28);
      *v165 = 0;
      *(v165 + 1) = 0;
      v165[16] = -1;
      goto LABEL_78;
    }

    sub_1D6A5C378(v190, v87, type metadata accessor for FeedWebEmbed);
    v126 = v177;
    sub_1D70044E8(&v87[*(v103 + 52)], v177, qword_1EDF3EB00, type metadata accessor for WebEmbedDataVisualization);
    sub_1D6A5C3E0(v87, type metadata accessor for FeedWebEmbed);
    v127 = (*(v185 + 48))(v126, 1, v186);
    v99 = v187;
    if (v127 == 1)
    {
      sub_1D7004554(v126, qword_1EDF3EB00, type metadata accessor for WebEmbedDataVisualization);
    }

    else
    {
      v143 = v168;
      sub_1D6A5C378(v126, v168, type metadata accessor for WebEmbedDataVisualization);
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        sub_1D6A5C3E0(v126, type metadata accessor for WebEmbedDataVisualization);

        v144 = 1;
        goto LABEL_66;
      }

      sub_1D6A5C3E0(v143, type metadata accessor for WebEmbedDataVisualization);
      sub_1D6A5C3E0(v126, type metadata accessor for WebEmbedDataVisualization);
    }

    v144 = 0;
LABEL_66:
    v107 = type metadata accessor for FormatInspectionItem(0);
    v158 = *(v107 + 24);
    *(v99 + v158) = v144;
    v159 = type metadata accessor for FormatInspectionItem.Value(0);
    swift_storeEnumTagMultiPayload();
    (*(*(v159 - 8) + 56))(v99 + v158, 0, 1, v159);
    *v99 = 0xD00000000000001DLL;
    v99[1] = 0x80000001D73FA830;
    goto LABEL_77;
  }

  if (*v188 <= 6u)
  {
    v110 = v90;
    v99 = v187;
    if (v94 == 5)
    {
      v96 = 0x80000001D73FA770;
      sub_1D6A5C378(v190, v71, type metadata accessor for FeedWebEmbed);
      v111 = &v71[*(v110 + 52)];
      v112 = v181;
      sub_1D70044E8(v111, v181, qword_1EDF3EB00, type metadata accessor for WebEmbedDataVisualization);
      sub_1D6A5C3E0(v71, type metadata accessor for FeedWebEmbed);
      if ((*(v185 + 48))(v112, 1, v186) == 1)
      {
        sub_1D7004554(v112, qword_1EDF3EB00, type metadata accessor for WebEmbedDataVisualization);
        goto LABEL_43;
      }

      v141 = v172;
      sub_1D6A5C378(v112, v172, type metadata accessor for WebEmbedDataVisualization);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_1D6A5C3E0(v141, type metadata accessor for WebEmbedDataVisualization);
        v134 = v112;
        goto LABEL_42;
      }

      v155 = *v141;
      sub_1D6A5C3E0(v112, type metadata accessor for WebEmbedDataVisualization);
      v151 = v155 >> 61 == 3;
LABEL_60:
      v142 = v151;

      goto LABEL_64;
    }

    v96 = 0x80000001D73FA740;
    sub_1D6A5C378(v190, v67, type metadata accessor for FeedWebEmbed);
    v128 = &v67[*(v110 + 52)];
    v101 = v182;
    sub_1D70044E8(v128, v182, qword_1EDF3EB00, type metadata accessor for WebEmbedDataVisualization);
    sub_1D6A5C3E0(v67, type metadata accessor for FeedWebEmbed);
    if ((*(v185 + 48))(v101, 1, v186) == 1)
    {
      sub_1D7004554(v101, qword_1EDF3EB00, type metadata accessor for WebEmbedDataVisualization);
LABEL_49:
      v102 = 0;
      goto LABEL_72;
    }

    v135 = v173;
    sub_1D6A5C378(v101, v173, type metadata accessor for WebEmbedDataVisualization);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v160 = *v135;
      sub_1D6A5C3E0(v101, type metadata accessor for WebEmbedDataVisualization);
      v138 = v160 >> 61 == 4;
      goto LABEL_68;
    }

LABEL_48:
    sub_1D6A5C3E0(v135, type metadata accessor for WebEmbedDataVisualization);
    sub_1D6A5C3E0(v101, type metadata accessor for WebEmbedDataVisualization);
    goto LABEL_49;
  }

  if (v94 == 7)
  {
    v96 = 0x80000001D73FA710;
    v116 = v90;
    sub_1D6A5C378(v190, v63, type metadata accessor for FeedWebEmbed);
    v117 = v183;
    sub_1D70044E8(&v63[*(v116 + 52)], v183, qword_1EDF3EB00, type metadata accessor for WebEmbedDataVisualization);
    sub_1D6A5C3E0(v63, type metadata accessor for FeedWebEmbed);
    if ((*(v185 + 48))(v117, 1, v186) == 1)
    {
      sub_1D7004554(v117, qword_1EDF3EB00, type metadata accessor for WebEmbedDataVisualization);
      v118 = 0;
      v99 = v187;
    }

    else
    {
      v131 = v174;
      sub_1D6A5C378(v117, v174, type metadata accessor for WebEmbedDataVisualization);
      v132 = swift_getEnumCaseMultiPayload();
      v99 = v187;
      if (v132 == 1)
      {
        sub_1D6A5C3E0(v131, type metadata accessor for WebEmbedDataVisualization);
        sub_1D6A5C3E0(v117, type metadata accessor for WebEmbedDataVisualization);
        v118 = 0;
      }

      else
      {
        v146 = *v131;
        sub_1D6A5C3E0(v117, type metadata accessor for WebEmbedDataVisualization);
        v118 = v146 >> 61 == 5;
      }
    }

    v107 = type metadata accessor for FormatInspectionItem(0);
    v147 = *(v107 + 24);
    *(v99 + v147) = v118;
    v148 = type metadata accessor for FormatInspectionItem.Value(0);
    swift_storeEnumTagMultiPayload();
    (*(*(v148 - 8) + 56))(v99 + v147, 0, 1, v148);
    v149 = 0xD00000000000002BLL;
    goto LABEL_76;
  }

  if (v94 == 8)
  {
    v96 = 0x80000001D73FA6E0;
    v100 = v90;
    sub_1D6A5C378(v190, v59, type metadata accessor for FeedWebEmbed);
    v101 = v184;
    sub_1D70044E8(&v59[*(v100 + 52)], v184, qword_1EDF3EB00, type metadata accessor for WebEmbedDataVisualization);
    sub_1D6A5C3E0(v59, type metadata accessor for FeedWebEmbed);
    if ((*(v185 + 48))(v101, 1, v186) == 1)
    {
      sub_1D7004554(v101, qword_1EDF3EB00, type metadata accessor for WebEmbedDataVisualization);
      v102 = 0;
      v99 = v187;
LABEL_72:
      v107 = type metadata accessor for FormatInspectionItem(0);
      v161 = *(v107 + 24);
      *(v99 + v161) = v102;
      v162 = type metadata accessor for FormatInspectionItem.Value(0);
      swift_storeEnumTagMultiPayload();
      (*(*(v162 - 8) + 56))(v99 + v161, 0, 1, v162);
      v149 = 0xD000000000000028;
      goto LABEL_76;
    }

    v135 = v175;
    sub_1D6A5C378(v101, v175, type metadata accessor for WebEmbedDataVisualization);
    v136 = swift_getEnumCaseMultiPayload();
    v99 = v187;
    if (v136 != 1)
    {
      v137 = *v135;
      sub_1D6A5C3E0(v101, type metadata accessor for WebEmbedDataVisualization);
      v138 = v137 >> 61 == 6;
LABEL_68:
      v102 = v138;

      goto LABEL_72;
    }

    goto LABEL_48;
  }

  v121 = v92;
  sub_1D6A5C378(v190, v92, type metadata accessor for FeedWebEmbed);
  v191 = 9;
  v122 = v121;
  v123 = v189;
  v124 = FormatWebEmbedBinding.Bool.BOOL(from:)(v121);
  v99 = v187;
  if (v123)
  {

    v125 = 2;
  }

  else
  {
    v125 = v124;
  }

  sub_1D6A5C3E0(v122, type metadata accessor for FeedWebEmbed);
  sub_1D711E9F0(0xD000000000000010, 0x80000001D73FA6C0, v125, v99);
LABEL_78:
  v166 = type metadata accessor for FormatInspectionItem(0);
  return (*(*(v166 - 8) + 56))(v99, 0, 1, v166);
}

BOOL static FormatCodingIntegerEquationZeroStrategy.shouldEncode(wrappedValue:)(uint64_t *a1)
{
  v1 = sub_1D633D10C(*a1, &unk_1F5119C80);
  sub_1D70060E0(&unk_1F5119CA0);
  return (v1 & 1) == 0;
}

uint64_t sub_1D70060E0(uint64_t a1)
{
  sub_1D70063B4(0, &qword_1EC899400, type metadata accessor for FormatEquationToken);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

BOOL sub_1D7006168(uint64_t *a1)
{
  v1 = sub_1D633D10C(*a1, &unk_1F50F2CE0);
  sub_1D70060E0(&unk_1F50F2D00);
  return (v1 & 1) == 0;
}

BOOL static FormatCodingIntegerEquationOneStrategy.shouldEncode(wrappedValue:)(uint64_t *a1)
{
  v1 = sub_1D633D10C(*a1, &unk_1F5119CF0);
  sub_1D70060E0(&unk_1F5119D10);
  return (v1 & 1) == 0;
}

BOOL sub_1D7006210(uint64_t *a1)
{
  v1 = sub_1D633D10C(*a1, &unk_1F50F2CA8);
  sub_1D70060E0(&unk_1F50F2CC8);
  return (v1 & 1) == 0;
}

void static FormatCodingSelectorIntegerEquationZeroStrategy.defaultValue.getter(void *a1@<X8>)
{
  v1 = MEMORY[0x1E69E7CC0];
  *a1 = &unk_1F5119D28;
  a1[1] = v1;
}

void sub_1D7006270(void *a1@<X8>)
{
  v1 = MEMORY[0x1E69E7CC0];
  *a1 = &unk_1F50F3240;
  a1[1] = v1;
}

uint64_t _s8NewsFeed47FormatCodingSelectorIntegerEquationZeroStrategyV12shouldEncode12wrappedValueSbAA0ce6SimpleM0VyAA0cG0VyAA0cF0OGG_tFZ_0(uint64_t *a1)
{
  v1 = a1[1];
  if (sub_1D633D10C(*a1, &unk_1F50F2D18))
  {

    v2 = MEMORY[0x1E69E7CC0];

    v3 = sub_1D6354F50(v1, v2);

    swift_bridgeObjectRelease_n();
    if (v3)
    {
      return 0;
    }
  }

  else
  {
  }

  return 1;
}

unint64_t sub_1D7006338(uint64_t a1)
{
  result = sub_1D7006360();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D7006360()
{
  result = qword_1EC899408;
  if (!qword_1EC899408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC899408);
  }

  return result;
}

void sub_1D70063B4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D5C5A3D0();
    v7 = a3(a1, &type metadata for FormatInteger, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1D7006418(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_1D70063B4(255, &qword_1EDF32838, type metadata accessor for FormatEquation);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D7006478(uint64_t a1)
{
  result = sub_1D70064A0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D70064A0()
{
  result = qword_1EC899410;
  if (!qword_1EC899410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC899410);
  }

  return result;
}

unint64_t sub_1D70064F4(uint64_t a1)
{
  result = sub_1D700651C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D700651C()
{
  result = qword_1EC899418;
  if (!qword_1EC899418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC899418);
  }

  return result;
}

uint64_t sub_1D7006570(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_1D6689E3C(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D70065F4(uint64_t a1, __int128 *a2)
{
  v51 = sub_1D725891C();
  v52 = *(v51 - 8);
  MEMORY[0x1EEE9AC00](v51, v4);
  v6 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v49 - v9;
  sub_1D7008C18(0, &qword_1EDF17C00, MEMORY[0x1E69D6570], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v14 = &v49 - v13;
  v15 = sub_1D725AF4C();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15, v17);
  v19 = &v49 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for FeedRecipe(0);
  MEMORY[0x1EEE9AC00](v20 - 8, v21);
  v23 = (&v49 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = *a2;
  v25 = a2[1];
  v26 = *(a2 + 4);
  v27 = *(a2 + 5);
  if (v25 > 6)
  {
    if (v25 > 8)
    {
      if (v25 == 9)
      {
        v39 = [objc_msgSend(*(a1 + 56) sourceChannel];
        swift_unknownObjectRelease();
        v32 = sub_1D726207C();

        return v32;
      }

      if (v25 == 10)
      {
        v28 = [*(a1 + 56) language];
        goto LABEL_20;
      }

      goto LABEL_22;
    }

    if (v25 == 7)
    {
      v35 = [*(a1 + 56) totalTime];
      sub_1D726207C();

      sub_1D725AF2C();
      v36 = v16;
      if ((*(v16 + 48))(v14, 1, v15) == 1)
      {
        sub_1D70089E8(v14, v37);
        return 0;
      }

      (*(v16 + 32))(v19, v14, v15);
      sub_1D725AF1C();
      if (v44 == 0.0)
      {
        (*(v16 + 8))(v19, v15);
        return 0;
      }

      v46 = sub_1D725AF3C();
      v48 = v47;
      (*(v36 + 8))(v19, v15);
      if (v48)
      {
        return v46;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      v29 = [*(a1 + 56) authors];
      if (!v29 || (v30 = v29, v31 = sub_1D726267C(), v30, v32 = Array<A>.localizedOxfordCommaSeparatedList.getter(v31), v34 = v33, , !v34))
      {

        return 0;
      }
    }
  }

  else
  {
    if (v25 > 4)
    {
      if (v25 == 5)
      {
        v28 = [*(a1 + 56) title];
      }

      else
      {
        v28 = [*(a1 + 56) shortExcerpt];
      }

      goto LABEL_20;
    }

    if (v25 != 3)
    {
      if (v25 == 4)
      {
        v28 = [*(a1 + 56) identifier];
LABEL_20:
        v38 = v28;
        v32 = sub_1D726207C();

        return v32;
      }

LABEL_22:
      v49 = v25;
      v50 = v24;
      v40 = [*(a1 + 56) publishDate];
      if (v40)
      {
        v41 = v40;
        sub_1D72588BC();

        v42 = v52;
        v43 = v51;
        (*(v52 + 32))(v10, v6, v51);
        v58 = v50;
        v59 = v49;
        *&v60 = v26;
        *(&v60 + 1) = v27;
        v32 = FormatDateFormat.format(_:)(v10);
        (*(v42 + 8))(v10, v43);
        return v32;
      }

      return 0;
    }

    sub_1D5E47A08(a1, v23);
    sub_1D718B62C(v23, &v53);
    *&v58 = 0x657069636572;
    *(&v58 + 1) = 0xE600000000000000;
    v59 = v53;
    LOWORD(v60) = v54;
    *(&v60 + 1) = *(&v54 + 1);
    *&v61 = v55;
    BYTE8(v61) = BYTE8(v55);
    v62 = MEMORY[0x1E69E7CD0];
    v55 = v60;
    v56 = v61;
    v57 = MEMORY[0x1E69E7CD0];
    v53 = v58;
    v54 = v59;
    sub_1D72578EC();
    swift_allocObject();
    sub_1D72578DC();
    sub_1D7008A74(0);
    sub_1D7008B24(&qword_1EDF0F1C0, sub_1D7008A74, &protocol conformance descriptor for FormatCellAutomation<A>);
    v32 = sub_1D725D06C();

    sub_1D7008B6C(&v58, sub_1D7008A74);
  }

  return v32;
}

uint64_t sub_1D7006CB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *&v60 = a3;
  *&v61 = a2;
  v58 = sub_1D725891C();
  v59 = *(v58 - 8);
  MEMORY[0x1EEE9AC00](v58, v5);
  v7 = &v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v58 - v10;
  sub_1D7008C18(0, &qword_1EDF17C00, MEMORY[0x1E69D6570], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = &v58 - v14;
  v16 = sub_1D725AF4C();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16, v18);
  v20 = &v58 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for FeedRecipe(0);
  MEMORY[0x1EEE9AC00](v21 - 8, v22);
  v24 = (&v58 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  v25 = *v3;
  v26 = v3[1];
  v28 = *(v3 + 4);
  v27 = *(v3 + 5);
  if (v26 > 6)
  {
    if (v26 > 8)
    {
      if (v26 == 9)
      {
        v48 = [objc_msgSend(*(a1 + 56) sourceChannel];
        swift_unknownObjectRelease();
        v33 = sub_1D726207C();

        return v33;
      }

      if (v26 == 10)
      {
        v29 = [*(a1 + 56) language];
        goto LABEL_20;
      }

      goto LABEL_22;
    }

    if (v26 == 7)
    {
      v44 = [*(a1 + 56) totalTime];
      sub_1D726207C();

      sub_1D725AF2C();
      v45 = v17;
      if ((*(v17 + 48))(v15, 1, v16) == 1)
      {
        sub_1D70089E8(v15, v46);
        return 0;
      }

      (*(v17 + 32))(v20, v15, v16);
      sub_1D725AF1C();
      if (v53 == 0.0)
      {
        (*(v17 + 8))(v20, v16);
        return 0;
      }

      v55 = sub_1D725AF3C();
      v57 = v56;
      (*(v45 + 8))(v20, v16);
      if (v57)
      {
        return v55;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      v30 = [*(a1 + 56) authors];
      if (!v30 || (v31 = v30, v32 = sub_1D726267C(), v31, v33 = Array<A>.localizedOxfordCommaSeparatedList.getter(v32), v35 = v34, , !v35))
      {

        return 0;
      }
    }
  }

  else
  {
    if (v26 > 4)
    {
      if (v26 == 5)
      {
        v29 = [*(a1 + 56) title];
      }

      else
      {
        v29 = [*(a1 + 56) shortExcerpt];
      }

      goto LABEL_20;
    }

    if (v26 != 3)
    {
      if (v26 == 4)
      {
        v29 = [*(a1 + 56) identifier];
LABEL_20:
        v47 = v29;
        v33 = sub_1D726207C();

        return v33;
      }

LABEL_22:
      v60 = v26;
      v61 = v25;
      v49 = [*(a1 + 56) publishDate];
      if (v49)
      {
        v50 = v49;
        sub_1D72588BC();

        v51 = v59;
        v52 = v58;
        (*(v59 + 32))(v11, v7, v58);
        v67 = v61;
        v68 = v60;
        *&v69 = v28;
        *(&v69 + 1) = v27;
        v33 = FormatDateFormat.format(_:)(v11);
        (*(v51 + 8))(v11, v52);
        return v33;
      }

      return 0;
    }

    sub_1D5E47A08(a1, v24);
    v36 = sub_1D718B62C(v24, &v62);
    v37 = v62;
    v38 = v63;
    v39 = BYTE1(v63);
    v40 = *(&v63 + 1);
    v41 = v64;
    v42 = BYTE8(v64);
    v43 = (v61)(v36);
    *&v67 = 0x657069636572;
    *(&v67 + 1) = 0xE600000000000000;
    v68 = v37;
    LOBYTE(v69) = v38;
    BYTE1(v69) = v39;
    *(&v69 + 1) = v40;
    *&v70 = v41;
    BYTE8(v70) = v42;
    v71 = v43;
    v64 = v69;
    v65 = v70;
    v66 = v43;
    v62 = v67;
    v63 = v37;
    sub_1D72578EC();
    swift_allocObject();
    sub_1D72578DC();
    sub_1D7008A74(0);
    sub_1D7008B24(&qword_1EDF0F1C0, sub_1D7008A74, &protocol conformance descriptor for FormatCellAutomation<A>);
    v33 = sub_1D725D06C();

    sub_1D7008B6C(&v67, sub_1D7008A74);
  }

  return v33;
}

uint64_t sub_1D7007398(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x6974616D6F747561;
    v6 = 0x656C746974;
    if (a1 != 2)
    {
      v6 = 0x63784574726F6873;
    }

    if (a1)
    {
      v5 = 0x696669746E656469;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x656873696C627570;
    v2 = 0x65676175676E616CLL;
    if (a1 != 7)
    {
      v2 = 0x446873696C627570;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0x6D69546C61746F74;
    if (a1 != 4)
    {
      v3 = 0x73726F68747561;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_1D70074E0()
{
  v1 = *v0;
  sub_1D7264A0C();
  sub_1D694F11C(v3, v1);
  return sub_1D7264A5C();
}

uint64_t sub_1D7007530(uint64_t a1)
{
  v2 = *v1;
  sub_1D7264A0C();
  sub_1D694F11C(v4, v2);
  return sub_1D7264A5C();
}

unint64_t sub_1D7007574@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1D7008BCC(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_1D70075A4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D7007398(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1D70076C4@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v155 = a3;
  v161 = a2;
  v150 = sub_1D725891C();
  v153 = *(v150 - 8);
  MEMORY[0x1EEE9AC00](v150, v4);
  v148 = &v145 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v149 = &v145 - v8;
  MEMORY[0x1EEE9AC00](v9, v10);
  v146 = &v145 - v11;
  MEMORY[0x1EEE9AC00](v12, v13);
  v147 = &v145 - v14;
  v15 = type metadata accessor for FeedRecipe(0);
  MEMORY[0x1EEE9AC00](v15 - 8, v16);
  v151 = (&v145 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v18, v19);
  v154 = &v145 - v20;
  MEMORY[0x1EEE9AC00](v21, v22);
  v24 = &v145 - v23;
  MEMORY[0x1EEE9AC00](v25, v26);
  v28 = (&v145 - v27);
  MEMORY[0x1EEE9AC00](v29, v30);
  v152 = &v145 - v31;
  MEMORY[0x1EEE9AC00](v32, v33);
  v35 = &v145 - v34;
  MEMORY[0x1EEE9AC00](v36, v37);
  v39 = (&v145 - v38);
  MEMORY[0x1EEE9AC00](v40, v41);
  v43 = (&v145 - v42);
  MEMORY[0x1EEE9AC00](v44, v45);
  v47 = (&v145 - v46);
  MEMORY[0x1EEE9AC00](v48, v49);
  v51 = &v145 - v50;
  v52 = *a1;
  sub_1D7008C18(0, &qword_1EC896750, type metadata accessor for FormatInspectionItem, MEMORY[0x1E69E6F90]);
  v53 = *(type metadata accessor for FormatInspectionItem(0) - 8);
  v54 = *(v53 + 72);
  v55 = *(v53 + 80);
  if (v52 <= 3)
  {
    if (v52 <= 1)
    {
      if (v52)
      {
        v90 = (v55 + 32) & ~v55;
        v57 = swift_allocObject();
        *(v57 + 16) = xmmword_1D7273AE0;
        sub_1D5E47A08(v161, v47);
        v91 = [v47[7] identifier];
        v92 = sub_1D726207C();
        v94 = v93;

        v95 = HIBYTE(v94) & 0xF;
        if ((v94 & 0x2000000000000000) == 0)
        {
          v95 = v92 & 0xFFFFFFFFFFFFLL;
        }

        if (v95)
        {
          v96 = MEMORY[0x1E69E6158];
        }

        else
        {

          v92 = 0;
          v94 = 0;
          v96 = 0;
          v157 = 0;
        }

        v68 = v155;
        *&v156 = v92;
        *(&v156 + 1) = v94;
        v158 = v96;
        sub_1D711B30C(0x696669746E656449, 0xEA00000000007265, &v156, (v57 + v90));
        v125 = v47;
      }

      else
      {
        v64 = (v55 + 32) & ~v55;
        v57 = swift_allocObject();
        *(v57 + 16) = xmmword_1D7273AE0;
        sub_1D5E47A08(v161, v51);
        v156 = 0uLL;
        v157 = 3;
        v158 = 0;
        v159 = 0;
        v160 = 0;
        v65 = sub_1D70065F4(v51, &v156);
        v67 = HIBYTE(v66) & 0xF;
        if ((v66 & 0x2000000000000000) == 0)
        {
          v67 = v65 & 0xFFFFFFFFFFFFLL;
        }

        v68 = v155;
        if (v67)
        {
          v69 = MEMORY[0x1E69E6158];
        }

        else
        {

          v65 = 0;
          v66 = 0;
          v69 = 0;
          v157 = 0;
        }

        *&v156 = v65;
        *(&v156 + 1) = v66;
        v158 = v69;
        sub_1D711B30C(0x6974616D6F747541, 0xEA00000000006E6FLL, &v156, (v57 + v64));
        v125 = v51;
      }

      goto LABEL_79;
    }

    v68 = v155;
    v70 = (v55 + 32) & ~v55;
    if (v52 == 2)
    {
      v57 = swift_allocObject();
      *(v57 + 16) = xmmword_1D7273AE0;
      sub_1D5E47A08(v161, v43);
      v71 = [v43[7] title];
      v72 = sub_1D726207C();
      v74 = v73;

      v75 = HIBYTE(v74) & 0xF;
      if ((v74 & 0x2000000000000000) == 0)
      {
        v75 = v72 & 0xFFFFFFFFFFFFLL;
      }

      if (v75)
      {
        v76 = MEMORY[0x1E69E6158];
      }

      else
      {

        v72 = 0;
        v74 = 0;
        v76 = 0;
        v157 = 0;
      }

      *&v156 = v72;
      *(&v156 + 1) = v74;
      v158 = v76;
      sub_1D711B30C(0x656C746954, 0xE500000000000000, &v156, (v57 + v70));
      v125 = v43;
      goto LABEL_79;
    }

    v57 = swift_allocObject();
    *(v57 + 16) = xmmword_1D7273AE0;
    sub_1D5E47A08(v161, v39);
    v97 = [v39[7] shortExcerpt];
    v98 = sub_1D726207C();
    v100 = v99;

    v101 = HIBYTE(v100) & 0xF;
    if ((v100 & 0x2000000000000000) == 0)
    {
      v101 = v98 & 0xFFFFFFFFFFFFLL;
    }

    if (v101)
    {
      v102 = MEMORY[0x1E69E6158];
    }

    else
    {

      v98 = 0;
      v100 = 0;
      v102 = 0;
      v157 = 0;
    }

    *&v156 = v98;
    *(&v156 + 1) = v100;
    v158 = v102;
    v126 = 0x78452074726F6853;
    v127 = 0xED00007470726563;
    v128 = (v57 + v70);
    goto LABEL_73;
  }

  if (v52 <= 5)
  {
    if (v52 == 4)
    {
      v77 = (v55 + 32) & ~v55;
      v78 = swift_allocObject();
      *(v78 + 16) = xmmword_1D7273AE0;
      sub_1D5E47A08(v161, v35);
      v156 = 0uLL;
      v157 = 7;
      v158 = 0;
      v159 = 0;
      v160 = 0;
      v79 = sub_1D70065F4(v35, &v156);
      v81 = HIBYTE(v80) & 0xF;
      if ((v80 & 0x2000000000000000) == 0)
      {
        v81 = v79 & 0xFFFFFFFFFFFFLL;
      }

      if (v81)
      {
        v82 = MEMORY[0x1E69E6158];
      }

      else
      {

        v79 = 0;
        v80 = 0;
        v82 = 0;
        v157 = 0;
      }

      v68 = v155;
      *&v156 = v79;
      *(&v156 + 1) = v80;
      v158 = v82;
      sub_1D711B30C(0x6954206C61746F54, 0xEA0000000000656DLL, &v156, (v78 + v77));
      v125 = v35;
      v57 = v78;
      goto LABEL_79;
    }

    v115 = (v55 + 32) & ~v55;
    v57 = swift_allocObject();
    *(v57 + 16) = xmmword_1D7273AE0;
    v24 = v152;
    sub_1D5E47A08(v161, v152);
    v116 = [*(v24 + 7) authors];
    if (!v116 || (v117 = v116, v118 = sub_1D726267C(), v117, v119 = Array<A>.localizedOxfordCommaSeparatedList.getter(v118), v121 = v120, , !v121))
    {

      v119 = 0;
      v121 = 0xE000000000000000;
    }

    v68 = v155;
    v122 = HIBYTE(v121) & 0xF;
    if ((v121 & 0x2000000000000000) == 0)
    {
      v122 = v119 & 0xFFFFFFFFFFFFLL;
    }

    if (v122)
    {
      v123 = MEMORY[0x1E69E6158];
    }

    else
    {

      v119 = 0;
      v121 = 0;
      v123 = 0;
      v157 = 0;
    }

    *&v156 = v119;
    *(&v156 + 1) = v121;
    v158 = v123;
    v129 = 0x73726F68747541;
    v130 = (v57 + v115);
    v131 = 0xE700000000000000;
    goto LABEL_78;
  }

  if (v52 != 6)
  {
    if (v52 == 7)
    {
      v56 = (v55 + 32) & ~v55;
      v57 = swift_allocObject();
      *(v57 + 16) = xmmword_1D7273AE0;
      sub_1D5E47A08(v161, v24);
      v58 = [*(v24 + 7) language];
      v59 = sub_1D726207C();
      v61 = v60;

      v62 = HIBYTE(v61) & 0xF;
      if ((v61 & 0x2000000000000000) == 0)
      {
        v62 = v59 & 0xFFFFFFFFFFFFLL;
      }

      if (v62)
      {
        v63 = MEMORY[0x1E69E6158];
      }

      else
      {

        v59 = 0;
        v61 = 0;
        v63 = 0;
        v157 = 0;
      }

      v68 = v155;
      *&v156 = v59;
      *(&v156 + 1) = v61;
      v158 = v63;
      v129 = 0x65676175676E614CLL;
      v130 = (v57 + v56);
      v131 = 0xE800000000000000;
LABEL_78:
      sub_1D711B30C(v129, v131, &v156, v130);
      v125 = v24;
      goto LABEL_79;
    }

    v145 = v54;
    v103 = (v55 + 32) & ~v55;
    v57 = swift_allocObject();
    *(v57 + 16) = xmmword_1D7270C10;
    v152 = (v57 + v103);
    v104 = v161;
    v105 = v154;
    sub_1D5E47A08(v161, v154);
    v106 = [*(v105 + 56) publishDate];
    if (v106)
    {
      v107 = v146;
      v108 = v106;
      sub_1D72588BC();

      v109 = v153;
      v110 = v147;
      v111 = v150;
      (*(v153 + 32))(v147, v107, v150);
      v112 = sub_1D725871C();
      v114 = v113;
      (*(v109 + 8))(v110, v111);
    }

    else
    {
      v112 = 0;
      v114 = 0xE000000000000000;
      v111 = v150;
    }

    v39 = v151;
    v132 = HIBYTE(v114) & 0xF;
    if ((v114 & 0x2000000000000000) == 0)
    {
      v132 = v112 & 0xFFFFFFFFFFFFLL;
    }

    if (v132)
    {
      v133 = MEMORY[0x1E69E6158];
    }

    else
    {

      v112 = 0;
      v114 = 0;
      v133 = 0;
      v157 = 0;
    }

    *&v156 = v112;
    *(&v156 + 1) = v114;
    v158 = v133;
    sub_1D711B30C(0xD000000000000014, 0x80000001D73DBDB0, &v156, v152);
    sub_1D7008B6C(v154, type metadata accessor for FeedRecipe);
    sub_1D5E47A08(v104, v39);
    v134 = [v39[7] publishDate];
    if (v134)
    {
      v135 = v148;
      v136 = v134;
      sub_1D72588BC();

      v137 = v153;
      v138 = v149;
      (*(v153 + 32))(v149, v135, v111);
      v139 = sub_1D725870C();
      v141 = v140;
      (*(v137 + 8))(v138, v111);
    }

    else
    {
      v139 = 0;
      v141 = 0xE000000000000000;
    }

    v142 = v145;
    v143 = HIBYTE(v141) & 0xF;
    if ((v141 & 0x2000000000000000) == 0)
    {
      v143 = v139 & 0xFFFFFFFFFFFFLL;
    }

    if (v143)
    {
      v144 = MEMORY[0x1E69E6158];
    }

    else
    {

      v142 = v145;
      v139 = 0;
      v141 = 0;
      v144 = 0;
      v157 = 0;
    }

    v68 = v155;
    *&v156 = v139;
    *(&v156 + 1) = v141;
    v158 = v144;
    v128 = &v152[v142];
    v127 = 0x80000001D73DBDD0;
    v126 = 0xD000000000000012;
LABEL_73:
    sub_1D711B30C(v126, v127, &v156, v128);
    v125 = v39;
LABEL_79:
    result = sub_1D7008B6C(v125, type metadata accessor for FeedRecipe);
    goto LABEL_80;
  }

  v83 = (v55 + 32) & ~v55;
  v57 = swift_allocObject();
  *(v57 + 16) = xmmword_1D7273AE0;
  sub_1D5E47A08(v161, v28);
  v84 = [objc_msgSend(v28[7] sourceChannel)];
  swift_unknownObjectRelease();
  v85 = sub_1D726207C();
  v87 = v86;

  v88 = HIBYTE(v87) & 0xF;
  if ((v87 & 0x2000000000000000) == 0)
  {
    v88 = v85 & 0xFFFFFFFFFFFFLL;
  }

  if (v88)
  {
    v89 = MEMORY[0x1E69E6158];
  }

  else
  {

    v85 = 0;
    v87 = 0;
    v89 = 0;
    v157 = 0;
  }

  *&v156 = v85;
  *(&v156 + 1) = v87;
  v158 = v89;
  sub_1D711B30C(0x656873696C627550, 0xEE00656D614E2072, &v156, (v57 + v83));
  result = sub_1D7008B6C(v28, type metadata accessor for FeedRecipe);
  v68 = v155;
LABEL_80:
  *v68 = v57;
  return result;
}

BOOL _s8NewsFeed19FormatRecipeBindingV4TextO2eeoiySbAE_AEtFZ_0(uint64_t *a1, uint64_t *a2, __n128 a3)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  v7 = a1[3];
  v8 = a1[4];
  v9 = a1[5];
  v10 = *a2;
  v11 = a2[1];
  v12 = a2[2];
  v13 = a2[3];
  v14 = a2[4];
  v15 = a2[5];
  v29[0] = v4;
  v29[1] = v5;
  v29[2] = v6;
  v29[3] = v7;
  v29[4] = v8;
  v29[5] = v9;
  v29[6] = v10;
  v29[7] = v11;
  v29[8] = v12;
  v29[9] = v13;
  v29[10] = v14;
  v29[11] = v15;
  if (v6 <= 6)
  {
    if (v6 > 4)
    {
      if (v6 == 5)
      {
        if (v12 != 5)
        {
          goto LABEL_27;
        }
      }

      else if (v12 != 6)
      {
        goto LABEL_27;
      }

      goto LABEL_25;
    }

    if (v6 == 3)
    {
      if (v12 != 3)
      {
        goto LABEL_27;
      }

      goto LABEL_25;
    }

    if (v6 == 4)
    {
      if (v12 != 4)
      {
        goto LABEL_27;
      }

      goto LABEL_25;
    }

LABEL_26:
    if ((v12 - 3) >= 8)
    {
      v28[0] = v4;
      v28[1] = v5;
      v28[2] = v6;
      v28[3] = v7;
      v28[4] = v8;
      v28[5] = v9;
      v27[0] = v10;
      v27[1] = v11;
      v27[2] = v12;
      v27[3] = v13;
      v27[4] = v14;
      v27[5] = v15;
      v18 = v10;
      v23 = v12;
      v24 = v10;
      v19 = v11;
      v20 = v13;
      v25 = v14;
      v26 = v13;
      v21 = v14;
      v22 = v15;
      sub_1D5E1DCE8(v10, v11, v12, v13, v14, v15);
      sub_1D5E1DCE8(v4, v5, v6, v7, v8, v9);
      sub_1D5E1DCE8(v18, v19, v23, v20, v21, v22);
      sub_1D5E1DCE8(v4, v5, v6, v7, v8, v9);
      v16 = _s8NewsFeed010FormatDateC0O2eeoiySbAC_ACtFZ_0(v28, v27);
      sub_1D7008B6C(v29, sub_1D7008C7C);
      sub_1D5E1E174(v24, v19, v23, v26, v25, v22);
      sub_1D5E1E174(v4, v5, v6, v7, v8, v9);
      return v16;
    }

    goto LABEL_27;
  }

  if (v6 <= 8)
  {
    if (v6 == 7)
    {
      if (v12 != 7)
      {
        goto LABEL_27;
      }
    }

    else if (v12 != 8)
    {
      goto LABEL_27;
    }

    goto LABEL_25;
  }

  if (v6 != 9)
  {
    if (v6 == 10)
    {
      if (v12 != 10)
      {
        goto LABEL_27;
      }

      goto LABEL_25;
    }

    goto LABEL_26;
  }

  if (v12 != 9)
  {
LABEL_27:
    sub_1D5E1DCE8(v10, v11, v12, v13, v14, v15);
    sub_1D5E1DCE8(v4, v5, v6, v7, v8, v9);
    sub_1D7008B6C(v29, sub_1D7008C7C);
    return 0;
  }

LABEL_25:
  sub_1D7008B6C(v29, sub_1D7008C7C);
  return 1;
}

unint64_t sub_1D700867C(uint64_t a1)
{
  result = sub_1D70086A4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D70086A4()
{
  result = qword_1EC899420;
  if (!qword_1EC899420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC899420);
  }

  return result;
}

unint64_t sub_1D70086F8(void *a1)
{
  a1[1] = sub_1D665FC84();
  a1[2] = sub_1D6705118();
  result = sub_1D7008730();
  a1[3] = result;
  return result;
}

unint64_t sub_1D7008730()
{
  result = qword_1EC899428;
  if (!qword_1EC899428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC899428);
  }

  return result;
}

uint64_t sub_1D7008784(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFF4 && *(a1 + 48))
  {
    return (*a1 + 2147483637);
  }

  v3 = *(a1 + 16);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  v5 = v4 + 1;
  v6 = v4 - 1;
  if (v5 < 3)
  {
    v6 = 0;
  }

  if (v6 >= 9)
  {
    return v6 - 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D70087F4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFF5)
  {
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 2147483637;
    if (a3 >= 0x7FFFFFF5)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFF5)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2 + 10;
    }
  }

  return result;
}

double sub_1D700884C(_OWORD *a1, unsigned int a2)
{
  if (a2 > 0x7FFFFFFC)
  {
    result = 0.0;
    a1[1] = 0u;
    a1[2] = 0u;
    *a1 = 0u;
    *a1 = a2 - 2147483645;
  }

  else if (a2)
  {
    *(a1 + 2) = a2 + 2;
  }

  return result;
}

void sub_1D70088EC()
{
  if (!qword_1EC899438)
  {
    v0 = sub_1D72627FC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC899438);
    }
  }
}

unint64_t sub_1D7008940()
{
  result = qword_1EC899440;
  if (!qword_1EC899440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC899440);
  }

  return result;
}

unint64_t sub_1D7008994()
{
  result = qword_1EDF2C140;
  if (!qword_1EDF2C140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2C140);
  }

  return result;
}

uint64_t sub_1D70089E8(uint64_t a1, __n128 a2)
{
  sub_1D7008C18(0, &qword_1EDF17C00, MEMORY[0x1E69D6570], MEMORY[0x1E69E6720]);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1D7008A74(uint64_t a1)
{
  if (!qword_1EDF0F1B8)
  {
    v2 = sub_1D7008AD0();
    v4 = type metadata accessor for FormatCellAutomation(a1, &type metadata for RecipeAutomation, v2, v3);
    if (!v5)
    {
      atomic_store(v4, &qword_1EDF0F1B8);
    }
  }
}

unint64_t sub_1D7008AD0()
{
  result = qword_1EDF11018;
  if (!qword_1EDF11018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF11018);
  }

  return result;
}

uint64_t sub_1D7008B24(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1D7008B6C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1D7008BCC(uint64_t a1, uint64_t a2)
{
  v2 = sub_1D72641CC();

  if (v2 >= 9)
  {
    return 9;
  }

  else
  {
    return v2;
  }
}

void sub_1D7008C18(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1D7008C7C()
{
  if (!qword_1EC899448)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC899448);
    }
  }
}

__n128 __swift_memcpy46_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 30) = *(a2 + 30);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1D7008D0C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7C && *(a1 + 46))
  {
    return (*a1 + 124);
  }

  v3 = ((*(a1 + 44) >> 13) & 0xFFFFFF87 | (8 * ((*(a1 + 44) >> 9) & 0xF))) ^ 0x7F;
  if (v3 >= 0x7B)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1D7008D60(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7B)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 44) = 0;
    *(result + 40) = 0;
    *result = a2 - 124;
    if (a3 >= 0x7C)
    {
      *(result + 46) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7C)
    {
      *(result + 46) = 0;
    }

    if (a2)
    {
      *(result + 32) = 0;
      *result = 0u;
      *(result + 16) = 0u;
      *(result + 40) = 0;
      *(result + 44) = (((-a2 >> 3) & 0xF) - 16 * a2) << 9;
    }
  }

  return result;
}

uint64_t sub_1D7008DD0(uint64_t a1)
{
  v2 = *(a1 + 40);
  result = a1 + 40;
  v3 = v2 | (*(result + 4) << 32);
  *result = v2;
  *(result + 4) = WORD2(v3) & 0x1FFF;
  return result;
}

uint64_t sub_1D7008DEC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 40);
  result = a1 + 40;
  v4 = (v3 | (*(result + 4) << 32)) & 0x1FFFFFFFFFFLL | (a2 << 45);
  *result = v3;
  *(result + 4) = WORD2(v4);
  return result;
}