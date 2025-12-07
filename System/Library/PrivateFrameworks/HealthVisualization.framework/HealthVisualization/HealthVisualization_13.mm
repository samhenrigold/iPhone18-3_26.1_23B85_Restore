uint64_t sub_1D156C7A0@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v138 = a2;
  v135 = a3;
  v154 = sub_1D15A26A8();
  v134 = *(v154 - 8);
  MEMORY[0x1EEE9AC00](v154);
  v153 = &v124 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v152 = &v124 - v6;
  sub_1D1580868(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v130 = &v124 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D15800F0(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v137 = (&v124 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v11);
  v133 = &v124 - v12;
  sub_1D1580AB0(0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v149 = &v124 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v124 - v16;
  sub_1D15801C4(0);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v132 = &v124 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v147 = &v124 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v151 = (&v124 - v23);
  MEMORY[0x1EEE9AC00](v24);
  v131 = &v124 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v124 - v27;
  sub_1D1491C64(0);
  MEMORY[0x1EEE9AC00](v29 - 8);
  v31 = &v124 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D148EF60(0);
  v33 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32 - 8);
  v148 = &v124 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35);
  v37 = &v124 - v36;
  v38 = sub_1D15A22A8();
  v39 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v41 = &v124 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v42);
  v45 = &v124 - v44;
  v46 = *(v43 + 16);
  if (v46)
  {
    v146 = v17;
    v47 = *(a1 + 152);
    v48 = *(a1 + 168);
    v144 = *(a1 + 160);
    v143 = v48;
    v49 = *(a1 + 184);
    v142 = *(a1 + 176);
    v141 = v49;
    v140 = *(a1 + 192);
    v50 = *(a1 + 200);
    v51 = *(a1 + 208);
    v128 = v46;
    v52 = v46 - 1;
    v53 = (*(v33 + 80) + 32) & ~*(v33 + 80);
    v150 = v43;
    v127 = v53;
    v139 = *(v33 + 72);
    sub_1D158015C(v43 + v53 + v139 * v52, v37, sub_1D148EF60);
    v54 = v38;
    v55 = *(v39 + 32);
    v55(v41, v37, v54);
    v55(v45, v41, v54);
    if (v51)
    {
      (*(v39 + 8))(v45, v54);
      v57 = type metadata accessor for SignificantChangeEngine.Output(0);
      return (*(*(v57 - 8) + 56))(v135, 1, 1, v57);
    }

    v129 = v39;
    v145 = v54;
    v65 = v138;
    sub_1D1580144(v138, v28, v56);
    v66 = type metadata accessor for SignificantChangeEngine.State(0);
    v67 = *(v66 - 8);
    v68 = *(v67 + 48);
    v69 = 1;
    v136 = v66;
    v70 = v68(v28, 1);
    v71 = sub_1D15801C4;
    v126 = v67;
    if (v70 == 1)
    {
      v72 = v145;
      v73 = v129;
    }

    else
    {
      v73 = v129;
      v72 = v145;
      (*(v129 + 16))(v31, v28, v145);
      v69 = 0;
      v71 = type metadata accessor for SignificantChangeEngine.State;
    }

    sub_1D158034C(v28, v71);
    (*(v73 + 56))(v31, v69, 1, v72);
    v74 = v150;
    v125 = sub_1D1573C18(v31, v150);
    v76 = v75;
    sub_1D158034C(v31, sub_1D1491C64);
    if (v76)
    {
      v77 = v152;
      sub_1D15A2258();
      v78 = v153;
      v79 = sub_1D15A2608();
      MEMORY[0x1EEE9AC00](v79);
      *(&v124 - 2) = v77;
      *(&v124 - 1) = v78;

      sub_1D1565874(sub_1D1583988, (&v124 - 4), v74);
      v80 = *(v134 + 8);
      v81 = v154;
      v80(v78, v154);
      v80(v77, v81);
      v155 = v47;
      v156 = v144;
      v157 = v143;
      v158 = v142;
      v159 = v141;
      v160 = v140;
      v161 = v50;
      v82 = v132;
      (*(v126 + 56))(v132, 1, 1, v136);
      sub_1D1574250(&v155, v82, v135);

      sub_1D158034C(v82, sub_1D15801C4);
      return (*(v73 + 8))(v45, v72);
    }

    v83 = type metadata accessor for SignificantChange(0);
    v84 = *(*(v83 - 8) + 56);
    v85 = v133;
    v86.n128_f64[0] = v84(v133, 1, 1, v83);
    v87 = v131;
    sub_1D1580144(v65, v131, v86);
    v88 = v136;
    if ((v68)(v87, 1, v136) == 1)
    {
      sub_1D158034C(v87, sub_1D15801C4);
      v89 = v151;
      v90 = v137;
    }

    else
    {
      v91 = v87 + *(v88 + 24);
      v92 = v87;
      v93 = v130;
      sub_1D1580850(v91, v130);
      sub_1D158034C(v92, type metadata accessor for SignificantChangeEngine.State);
      v94 = type metadata accessor for SignificantChangeEngine.State.FrequencyShift(0);
      v95 = (*(*(v94 - 8) + 48))(v93, 1, v94);
      v89 = v151;
      v90 = v137;
      if (v95 != 1)
      {
        sub_1D15800D8(v93 + *(v94 + 24), v137, v96);
        sub_1D158034C(v93, type metadata accessor for SignificantChangeEngine.State.FrequencyShift);
LABEL_18:
        v132 = v45;
        v97 = type metadata accessor for SignificantChangeEngine.Output(0);
        v98 = v146;
        sub_1D1580144(v65, &v146[*(v97 + 24)], v99);
        sub_1D1580218(v85, v98);
        v100.n128_f64[0] = sub_1D1580218(v90, v98 + *(v97 + 20));
        v101 = *(v97 - 8);
        v102.n128_f64[0] = (*(v101 + 56))(v98, 0, 1, v97, v100);
        result = sub_1D1580144(v65, v89, v102);
        v103 = v125 + 1;
        v104 = v145;
        if (__OFADD__(v125, 1))
        {
          __break(1u);
        }

        else
        {
          v138 = v97;
          if (v128 >= v103)
          {
            if (v103 == v128)
            {
LABEL_21:
              sub_1D158034C(v89, sub_1D15801C4);
              (*(v129 + 8))(v132, v104);
              v105 = v146;
              sub_1D158015C(v146, v135, sub_1D1580AB0);
              return sub_1D158034C(v105, sub_1D1580AB0);
            }

            if (v103 < v128)
            {
              if ((v103 & 0x8000000000000000) == 0)
              {
                v137 = (v129 + 8);
                v106 = (v134 + 8);
                v107 = (v101 + 48);
                v134 = v126 + 56;
                v108 = ~v125 + v128;
                v109 = v150 + v127 + v139 * v103;
                do
                {
                  v112 = v148;
                  sub_1D158015C(v109, v148, sub_1D148EF60);
                  v113 = v152;
                  sub_1D15A2258();
                  (*v137)(v112, v104);
                  v114 = v153;
                  v115 = sub_1D15A2608();
                  MEMORY[0x1EEE9AC00](v115);
                  *(&v124 - 2) = v113;
                  *(&v124 - 1) = v114;
                  v116 = v150;

                  sub_1D1565874(sub_1D1583988, (&v124 - 4), v116);
                  v117 = *v106;
                  v118 = v154;
                  (*v106)(v114, v154);
                  v119 = v113;
                  v89 = v151;
                  v117(v119, v118);
                  v155 = v47;
                  v156 = v144;
                  v157 = v143;
                  v158 = v142;
                  v159 = v141;
                  v160 = v140;
                  v161 = v50;
                  v120 = v149;
                  sub_1D1574250(&v155, v89, v149);

                  sub_1D158034C(v89, sub_1D15801C4);
                  v121 = v146;
                  sub_1D15836B8(v120, v146);
                  v122 = v138;
                  if ((*v107)(v121, 1, v138))
                  {
                    v111 = v147;
                    (*v134)(v147, 1, 1, v136);
                  }

                  else
                  {
                    v110 = v121 + *(v122 + 24);
                    v111 = v147;
                    sub_1D1580144(v110, v147, v123);
                  }

                  sub_1D1580230(v111, v89);
                  v109 += v139;
                  --v108;
                  v104 = v145;
                }

                while (v108);
                goto LABEL_21;
              }

              goto LABEL_32;
            }

LABEL_31:
            __break(1u);
LABEL_32:
            __break(1u);
            return result;
          }
        }

        __break(1u);
        goto LABEL_31;
      }

      sub_1D158034C(v93, sub_1D1580868);
    }

    v84(v90, 1, 1, v83);
    goto LABEL_18;
  }

  v59 = type metadata accessor for SignificantChange(0);
  v60 = *(*(v59 - 8) + 56);
  v61 = v135;
  v60(v135, 1, 1, v59);
  v62 = type metadata accessor for SignificantChangeEngine.Output(0);
  v63.n128_f64[0] = v60(v61 + *(v62 + 20), 1, 1, v59);
  sub_1D1580144(v138, v61 + *(v62 + 24), v63);
  v64 = *(*(v62 - 8) + 56);

  return v64(v61, 0, 1, v62);
}

uint64_t sub_1D156D6F4@<X0>(void *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v469 = a3;
  v8 = sub_1D15A25F8();
  v398 = *(v8 - 8);
  v399 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v397 = &v386 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D1583510(0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v406 = &v386 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v407 = &v386 - v13;
  v14 = type metadata accessor for SignificantChange.Notification(0);
  v445 = *(v14 - 8);
  v446 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v394 = &v386 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v433 = &v386 - v17;
  sub_1D148EF2C(0);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v425 = &v386 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v403 = &v386 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v402 = &v386 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v432 = &v386 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v442 = &v386 - v27;
  sub_1D15800F0(0);
  MEMORY[0x1EEE9AC00](v28 - 8);
  v434 = &v386 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v386 - v31;
  MEMORY[0x1EEE9AC00](v33);
  v440 = &v386 - v34;
  v455 = type metadata accessor for SignificantChangeEngine.State(0);
  v454 = *(v455 - 8);
  MEMORY[0x1EEE9AC00](v455);
  v412 = &v386 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v36);
  v423 = &v386 - v37;
  v38 = type metadata accessor for SignificantChange(0);
  v468 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v435 = &v386 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v40);
  v441 = &v386 - v41;
  v438 = type metadata accessor for SignificantChange.Period(0);
  v408 = *(v438 - 8);
  MEMORY[0x1EEE9AC00](v438);
  v409 = &v386 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v43);
  v429 = &v386 - v44;
  MEMORY[0x1EEE9AC00](v45);
  v419 = &v386 - v46;
  v458 = type metadata accessor for SignificantChangeEngine.Changepoint(0);
  v447 = *(v458 - 1);
  MEMORY[0x1EEE9AC00](v458);
  v414 = &v386 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D15801C4(0);
  MEMORY[0x1EEE9AC00](v48 - 8);
  v395 = &v386 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v50);
  v404 = &v386 - v51;
  MEMORY[0x1EEE9AC00](v52);
  v401 = &v386 - v53;
  MEMORY[0x1EEE9AC00](v54);
  v421 = &v386 - v55;
  MEMORY[0x1EEE9AC00](v56);
  v437 = &v386 - v57;
  sub_1D15807FC(0);
  MEMORY[0x1EEE9AC00](v58 - 8);
  v390 = &v386 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v60);
  v411 = &v386 - v61;
  MEMORY[0x1EEE9AC00](v62);
  v393 = &v386 - v63;
  MEMORY[0x1EEE9AC00](v64);
  v392 = &v386 - v65;
  MEMORY[0x1EEE9AC00](v66);
  v396 = &v386 - v67;
  MEMORY[0x1EEE9AC00](v68);
  v422 = &v386 - v69;
  MEMORY[0x1EEE9AC00](v70);
  v413 = &v386 - v71;
  sub_1D14F104C(0);
  MEMORY[0x1EEE9AC00](v72 - 8);
  v400 = &v386 - ((v73 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v74);
  v410 = &v386 - v75;
  MEMORY[0x1EEE9AC00](v76);
  v420 = &v386 - v77;
  MEMORY[0x1EEE9AC00](v78);
  v436 = &v386 - v79;
  v456 = sub_1D15A26A8();
  v457 = *(v456 - 8);
  MEMORY[0x1EEE9AC00](v456);
  v427 = &v386 - ((v80 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v81);
  v444 = &v386 - v82;
  MEMORY[0x1EEE9AC00](v83);
  v443 = &v386 - v84;
  MEMORY[0x1EEE9AC00](v85);
  v391 = &v386 - v86;
  sub_1D1583544(0);
  MEMORY[0x1EEE9AC00](v87 - 8);
  v453 = (&v386 - ((v88 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D1583578(0);
  v461 = v89;
  v452 = *(v89 - 1);
  MEMORY[0x1EEE9AC00](v89);
  v431 = &v386 - ((v90 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v91);
  v426 = &v386 - v92;
  MEMORY[0x1EEE9AC00](v93);
  v424 = (&v386 - v94);
  MEMORY[0x1EEE9AC00](v95);
  v448 = &v386 - v96;
  MEMORY[0x1EEE9AC00](v97);
  v415 = &v386 - v98;
  MEMORY[0x1EEE9AC00](v99);
  v462 = &v386 - v100;
  v470 = sub_1D15A22A8();
  v460 = *(v470 - 8);
  MEMORY[0x1EEE9AC00](v470);
  v430 = &v386 - ((v101 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v102);
  v405 = &v386 - v103;
  MEMORY[0x1EEE9AC00](v104);
  v428 = &v386 - v105;
  MEMORY[0x1EEE9AC00](v106);
  v439 = (&v386 - v107);
  MEMORY[0x1EEE9AC00](v108);
  v418 = &v386 - v109;
  MEMORY[0x1EEE9AC00](v110);
  v112 = &v386 - v111;
  MEMORY[0x1EEE9AC00](v113);
  v451 = &v386 - v114;
  MEMORY[0x1EEE9AC00](v115);
  v459 = &v386 - v116;
  sub_1D148EF60(0);
  v118 = *(v117 - 8);
  MEMORY[0x1EEE9AC00](v117);
  MEMORY[0x1EEE9AC00](v119);
  MEMORY[0x1EEE9AC00](v120);
  v450 = (&v386 - v121);
  MEMORY[0x1EEE9AC00](v122);
  v449 = (&v386 - v123);
  MEMORY[0x1EEE9AC00](v124);
  v126 = &v386 - v125;
  MEMORY[0x1EEE9AC00](v127);
  v130 = &v386 - v129;
  v131 = a2[7];
  v487 = a2[6];
  v488 = v131;
  v489 = *(a2 + 16);
  v132 = a2[3];
  v483 = a2[2];
  v484 = v132;
  v133 = a2[5];
  v485 = a2[4];
  v486 = v133;
  v134 = a2[1];
  v481 = *a2;
  v482 = v134;
  v135 = a1[2];
  v466 = a4;
  v465 = v38;
  v467 = a1;
  v464 = v112;
  v389 = v32;
  v471 = v128;
  v416 = v137;
  v417 = v136;
  v463 = v135;
  if (!v135)
  {
    if (*(&v487 + 1) > 0)
    {
      goto LABEL_10;
    }

    v138 = 0;
    if (BYTE8(v488))
    {
      goto LABEL_7;
    }

LABEL_15:
    v388 = sub_1D15708E4(v488, a1);
    v156 = v155;
    v157 = v153;
    v158 = (v154 >> 1);
    if (v153 <= (v154 >> 1))
    {
      v159 = (v154 >> 1);
    }

    else
    {
      v159 = v153;
    }

    do
    {
      if (v158 == v157)
      {
        swift_unknownObjectRelease();
        v179 = *(v468 + 56);
        a4 = v466;
        v180 = v465;
        v179(v466, 1, 1, v465);
        v148 = type metadata accessor for SignificantChangeEngine.Output(0);
        v179(a4 + *(v148 + 20), 1, 1, v180);
        goto LABEL_11;
      }

      if (v159 == v157)
      {
        __break(1u);
        goto LABEL_101;
      }

      sub_1D158015C(v156 + *(v118 + 72) * v157, v126, sub_1D148EF60);
      v157 = (v157 + 1);
      v160 = v126[*(v471 + 48) + 8];
      sub_1D158034C(v126, sub_1D148EF60);
    }

    while ((v160 & 1) != 0);
    swift_unknownObjectRelease();
    a4 = v466;
    a1 = v467;
    v112 = v464;
    v135 = v463;
    if (!v463)
    {
      goto LABEL_10;
    }

    goto LABEL_23;
  }

  v138 = 0;
  v139 = &v130[*(v128 + 48)];
  v140 = a1 + ((*(v118 + 80) + 32) & ~*(v118 + 80));
  v141 = *(v118 + 72);
  v142 = v135;
  do
  {
    sub_1D158015C(v140, v130, sub_1D148EF60);
    v143 = v139[8];
    sub_1D158034C(v130, sub_1D148EF60);
    v144 = (v143 & 1) == 0;
    v145 = __OFADD__(v138, v144);
    v138 += v144;
    if (v145)
    {
      __break(1u);
      goto LABEL_94;
    }

    v140 += v141;
    --v142;
  }

  while (v142);
  a4 = v466;
  a1 = v467;
  v112 = v464;
  v135 = v463;
  if (v138 < *(&v487 + 1))
  {
    goto LABEL_10;
  }

  if ((BYTE8(v488) & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_7:
  if (!v135)
  {
LABEL_10:
    v146 = *(v468 + 56);
    v147 = v465;
    v146(a4, 1, 1, v465);
    v148 = type metadata accessor for SignificantChangeEngine.Output(0);
    v146(a4 + *(v148 + 20), 1, 1, v147);
LABEL_11:
    v150 = a4 + *(v148 + 24);
    v151 = v469;
    goto LABEL_12;
  }

LABEL_23:
  v161 = a1 + ((*(v118 + 80) + 32) & ~*(v118 + 80));
  v387 = sub_1D148EF60;
  v388 = v161;
  v162 = v449;
  v163 = v135;
  sub_1D158015C(v161, v449, sub_1D148EF60);
  v164 = (v460 + 32);
  v165 = *(v460 + 32);
  v166 = v451;
  v167 = v470;
  v165(v451, v162, v470);
  v165(v459, v166, v167);
  v449 = *(v118 + 72);
  v168 = v450;
  sub_1D158015C(v388 + v449 * (v163 - 1), v450, v387);
  v169 = v112;
  v451 = v164;
  v450 = v165;
  v165(v112, v168, v167);
  sub_1D157096C(v467, v487);
  v171 = v170;
  MEMORY[0x1EEE9AC00](v170);
  v172 = v469;
  *(&v386 - 2) = &v481;
  *(&v386 - 1) = v172;

  sub_1D1565B00(sub_1D1583610, (&v386 - 4), v171);
  LOBYTE(v472) = BYTE9(v486);
  v173 = v453;
  sub_1D1571E0C(v174, &v472, v453);

  v175 = v461;
  if ((*(v452 + 48))(v173, 1, v461) != 1)
  {
    v387 = v171;
    sub_1D1580248(v173, v462, sub_1D1583578);
    v181 = v437;
    sub_1D1580144(v172, v437, v182);
    v183 = v454 + 48;
    v184 = v455;
    v453 = *(v454 + 48);
    if ((v453)(v181, 1, v455) == 1)
    {
      sub_1D158034C(v181, sub_1D15801C4);
    }

    else
    {
      v185 = v413;
      sub_1D15807E4(v181 + *(v184 + 20), v413);
      sub_1D158034C(v181, type metadata accessor for SignificantChangeEngine.State);
      v186 = type metadata accessor for SignificantChangeEngine.State.MeanShift(0);
      if ((*(*(v186 - 8) + 48))(v185, 1, v186) != 1)
      {
        v187 = v436;
        sub_1D1455A40(v185 + *(v186 + 24), v436);
        sub_1D158034C(v185, type metadata accessor for SignificantChangeEngine.State.MeanShift);
        v248 = (*(v457 + 48))(v187, 1, v456);
        v175 = v461;
        if (v248 != 1)
        {
          v249 = v457;
          v250 = v391;
          v251 = v456;
          (*(v457 + 32))(v391, v187, v456);
          *&v472 = 0;
          *(&v472 + 1) = 0xE000000000000000;
          sub_1D15A47D8();

          *&v472 = 0x676E697472617453;
          *(&v472 + 1) = 0xEF203A6D6F726620;
          sub_1D1580304(&qword_1EE05B3F0, MEMORY[0x1E6969530], MEMORY[0x1E6969570]);
          v252 = sub_1D15A4B68();
          MEMORY[0x1D388A330](v252);
          v175 = v461;

          v158 = *(&v472 + 1);
          v437 = v472;
          (*(v249 + 8))(v250, v251);
LABEL_32:
          v189 = v462 + *(v175 + 12);
          v188.n128_u64[0] = v483;
          v452 = v183;
          if ((BYTE8(v481) & 1) == 0 && *&v481 < *(v189 + v458[5]) || (BYTE8(v482) & 1) == 0 && *(v189 + v458[9]) < *&v482 || (BYTE8(v483) & 1) == 0 && fabs(*(v189 + v458[7])) < *&v483)
          {

            if (qword_1EE056C98 != -1)
            {
LABEL_101:
              swift_once();
            }

            v190 = sub_1D15A3268();
            __swift_project_value_buffer(v190, qword_1EE056CA0);
            v191 = v415;
            sub_1D158015C(v462, v415, sub_1D1583578);

            v192 = sub_1D15A3248();
            v193 = sub_1D15A4338();

            v194 = os_log_type_enabled(v192, v193);
            v195 = v460;
            if (v194)
            {
              v196 = swift_slowAlloc();
              v197 = swift_slowAlloc();
              *&v472 = v197;
              *v196 = 136315394;
              v198 = v193;
              v199 = sub_1D1479780(v437, v158, &v472);

              *(v196 + 4) = v199;
              *(v196 + 12) = 2080;
              v200 = v191;
              v201 = v448;
              sub_1D158015C(v191, v448, sub_1D1583578);
              v202 = v414;
              sub_1D1580248(v201 + *(v461 + 12), v414, type metadata accessor for SignificantChangeEngine.Changepoint);
              (*(v195 + 8))(v201, v470);
              v203 = SignificantChangeEngine.Changepoint.description.getter();
              v205 = v204;
              sub_1D158034C(v202, type metadata accessor for SignificantChangeEngine.Changepoint);
              sub_1D158034C(v200, sub_1D1583578);
              v206 = sub_1D1479780(v203, v205, &v472);
              v195 = v460;

              *(v196 + 14) = v206;
              _os_log_impl(&dword_1D1446000, v192, v198, "[%s] No significant mean shift; maximum changepoint is: %s", v196, 0x16u);
              swift_arrayDestroy();
              MEMORY[0x1D388BF00](v197, -1, -1);
              MEMORY[0x1D388BF00](v196, -1, -1);
            }

            else
            {

              sub_1D158034C(v191, sub_1D1583578);
            }

            v215 = v471;
            v216 = (v195 + 8);
            v217 = 0.0;
            v219 = v416;
            v218 = v417;
            v220 = v463;
            v221 = v449;
            v222 = v388;
            do
            {
              sub_1D158015C(v222, v219, sub_1D148EF60);
              sub_1D1580248(v219, v218, sub_1D148EF60);
              v223 = v218 + *(v215 + 48);
              if (!*(v223 + 8))
              {
                v217 = v217 + *v223;
              }

              v224 = *v216;
              (*v216)(v218, v470);
              v222 += v221;
              --v220;
            }

            while (v220);
            v225 = v217 / v138;
            v226 = v470;
            v227 = v459;
            sub_1D15A2288();
            v228 = v464;
            sub_1D15A2258();
            v229 = v418;
            sub_1D15A2268();
            v230 = v419;
            (*(v460 + 16))(v419, v229, v226);
            sub_1D1572DA4(v467, v229);
            v231 = v438;
            *&v230[*(v438 + 20)] = v225;
            *&v230[*(v231 + 24)] = v232;
            v230[*(v231 + 28)] = 2;
            v233 = v230;
            v234 = v441;
            sub_1D1580248(v233, v441, type metadata accessor for SignificantChange.Period);
            v224(v229, v226);
            sub_1D158034C(v462, sub_1D1583578);
            v224(v227, v226);
            v235 = v465;
            (*(v445 + 56))(&v234[*(v465 + 24)], 1, 1, v446);
            *&v234[*(v235 + 20)] = MEMORY[0x1E69E7CC0];
            v236 = v450;
            v450(v439, v228, v226);
            v237 = v440;
            sub_1D158015C(v234, v440, type metadata accessor for SignificantChange);
            v238 = *(v468 + 56);
            v238(v237, 0, 1, v235);
            v239.n128_f64[0] = (*(v447 + 56))(v442, 1, 1, v458);
            v240 = v421;
            sub_1D1580144(v469, v421, v239);
            v241 = v455;
            if ((v453)(v240, 1, v455) == 1)
            {
              sub_1D158034C(v240, sub_1D15801C4);
              v242 = v457;
              a4 = v466;
            }

            else
            {
              v243 = v396;
              sub_1D15807E4(v240 + *(v241 + 20), v396);
              sub_1D158034C(v240, type metadata accessor for SignificantChangeEngine.State);
              v244 = type metadata accessor for SignificantChangeEngine.State.MeanShift(0);
              v245 = (*(*(v244 - 8) + 48))(v243, 1, v244);
              v242 = v457;
              a4 = v466;
              if (v245 != 1)
              {
                v247 = v420;
                sub_1D1455A40(v243 + *(v244 + 24), v420);
                sub_1D158034C(v243, type metadata accessor for SignificantChangeEngine.State.MeanShift);
                goto LABEL_59;
              }

              sub_1D158034C(v243, sub_1D15807FC);
            }

            v246 = v420;
            (*(v242 + 56))(v420, 1, 1, v456);
            v247 = v246;
LABEL_59:
            v256 = v422;
            sub_1D1580218(v440, v422);
            v257 = type metadata accessor for SignificantChangeEngine.State.MeanShift(0);
            sub_1D15808F4(v442, v256 + *(v257 + 20));
            sub_1D150F280(v247, v256 + *(v257 + 24));
            (*(*(v257 - 8) + 56))(v256, 0, 1, v257);
            v258 = *(v241 + 24);
            v259 = type metadata accessor for SignificantChangeEngine.State.FrequencyShift(0);
            v260 = v423;
            (*(*(v259 - 8) + 56))(&v423[v258], 1, 1, v259);
            v236(v260, v439, v470);
            sub_1D1580248(v256, &v260[*(v241 + 20)], sub_1D15807FC);
            sub_1D1580248(v441, a4, type metadata accessor for SignificantChange);
            v238(a4, 0, 1, v235);
            v148 = type metadata accessor for SignificantChangeEngine.Output(0);
            v238(a4 + *(v148 + 20), 1, 1, v235);
            v261 = *(v148 + 24);
            v262 = a4 + v261;
            v263 = v260;
LABEL_99:
            sub_1D1580248(v263, v262, type metadata accessor for SignificantChangeEngine.State);
            (*(v454 + 56))(a4 + v261, 0, 1, v241);
            return (*(*(v148 - 8) + 56))(a4, 0, 1, v148);
          }

          v449 = v158;
          v207 = v401;
          sub_1D1580144(v172, v401, v188);
          if ((v453)(v207, 1, v184) == 1)
          {
            sub_1D158034C(v207, sub_1D15801C4);
            v208 = v458;
            v209 = v447;
            v210 = v462;
            v211 = v460;
            v212 = v402;
            v213 = v403;
            v214 = v424;
          }

          else
          {
            v253 = v392;
            sub_1D15807E4(v207 + *(v184 + 20), v392);
            sub_1D158034C(v207, type metadata accessor for SignificantChangeEngine.State);
            v254 = type metadata accessor for SignificantChangeEngine.State.MeanShift(0);
            v255 = (*(*(v254 - 8) + 48))(v253, 1, v254);
            v208 = v458;
            v209 = v447;
            v210 = v462;
            v212 = v402;
            v213 = v403;
            v214 = v424;
            if (v255 != 1)
            {
              sub_1D15808BC(v253 + *(v254 + 20), v402);
              sub_1D158034C(v253, type metadata accessor for SignificantChangeEngine.State.MeanShift);
              v211 = v460;
LABEL_61:
              v478 = v487;
              v479 = v488;
              v480 = v489;
              v474 = v483;
              v475 = v484;
              v476 = v485;
              v477 = v486;
              v472 = v481;
              v473 = v482;
              v264 = v432;
              sub_1D157323C(v212, v387, &v472, v432);

              sub_1D158034C(v212, sub_1D148EF2C);
              v265 = v448;
              sub_1D158015C(v210, v448, sub_1D1583578);
              sub_1D1580248(v265 + *(v461 + 12), v213, type metadata accessor for SignificantChangeEngine.Changepoint);
              v441 = *(v209 + 56);
              v447 = v209 + 56;
              (v441)(v213, 0, 1, v208);
              v478 = v487;
              v479 = v488;
              v480 = v489;
              v474 = v483;
              v475 = v484;
              v476 = v485;
              v477 = v486;
              v472 = v481;
              v473 = v482;
              LODWORD(v442) = sub_1D1573790(v264, v213, &v472);
              sub_1D158034C(v213, sub_1D148EF2C);
              v267 = *(v211 + 8);
              v266 = v211 + 8;
              v463 = v267;
              (v267)(v265, v470);
              if (qword_1EE056C98 != -1)
              {
                swift_once();
              }

              v471 = v266;
              v268 = sub_1D15A3268();
              __swift_project_value_buffer(v268, qword_1EE056CA0);
              sub_1D158015C(v210, v214, sub_1D1583578);
              v269 = v449;

              v270 = sub_1D15A3248();
              v271 = sub_1D15A4338();

              if (os_log_type_enabled(v270, v271))
              {
                v272 = swift_slowAlloc();
                v440 = swift_slowAlloc();
                *&v472 = v440;
                *v272 = 136315394;
                v273 = sub_1D1479780(v437, v269, &v472);
                LODWORD(v439) = v271;
                v274 = v273;

                *(v272 + 4) = v274;
                *(v272 + 12) = 2080;
                v275 = v448;
                sub_1D158015C(v214, v448, sub_1D1583578);
                v276 = v461;
                v277 = v414;
                sub_1D1580248(v275 + *(v461 + 12), v414, type metadata accessor for SignificantChangeEngine.Changepoint);
                v449 = v270;
                v278 = v470;
                v279 = v463;
                (v463)(v275, v470);
                v280 = SignificantChangeEngine.Changepoint.description.getter();
                v282 = v281;
                sub_1D158034C(v277, type metadata accessor for SignificantChangeEngine.Changepoint);
                sub_1D158034C(v424, sub_1D1583578);
                v283 = sub_1D1479780(v280, v282, &v472);
                v208 = v458;

                *(v272 + 14) = v283;
                v284 = v278;
                v285 = v449;
                _os_log_impl(&dword_1D1446000, v449, v439, "[%s] Significant Mean Shift Changepoint: %s", v272, 0x16u);
                v286 = v440;
                swift_arrayDestroy();
                MEMORY[0x1D388BF00](v286, -1, -1);
                MEMORY[0x1D388BF00](v272, -1, -1);

                v287 = v404;
              }

              else
              {

                sub_1D158034C(v214, sub_1D1583578);
                v284 = v470;
                v275 = v448;
                v276 = v461;
                v287 = v404;
                v279 = v463;
              }

              sub_1D158015C(v462, v275, sub_1D1583578);
              v288 = v275 + *(v276 + 12);
              v4 = *(v288 + v208[7]);
              sub_1D158034C(v288, type metadata accessor for SignificantChangeEngine.Changepoint);
              v289.n128_f64[0] = v279(v275, v284);
              sub_1D1580144(v469, v287, v289);
              v290 = v455;
              v291 = (v453)(v287, 1, v455);
              v143 = v456;
              v138 = v445;
              if (v291 == 1)
              {
                sub_1D158034C(v287, sub_1D15801C4);
                v141 = v433;
                v140 = v461;
                v142 = v406;
                v118 = v407;
              }

              else
              {
                v292 = v287 + *(v290 + 20);
                v293 = v393;
                sub_1D15807E4(v292, v393);
                sub_1D158034C(v287, type metadata accessor for SignificantChangeEngine.State);
                v294 = type metadata accessor for SignificantChangeEngine.State.MeanShift(0);
                v295 = (*(*(v294 - 8) + 48))(v293, 1, v294);
                v141 = v433;
                v142 = v406;
                v118 = v407;
                if (v295 == 1)
                {
                  sub_1D158034C(v293, sub_1D15807FC);
                  v140 = v461;
                }

                else
                {
                  v126 = v389;
                  sub_1D15800D8(v293, v389, v296);
                  sub_1D158034C(v293, type metadata accessor for SignificantChangeEngine.State.MeanShift);
                  v139 = v465;
                  v297 = (*(v468 + 48))(v126, 1, v465);
                  v140 = v461;
                  if (v297 != 1)
                  {
LABEL_94:
                    sub_1D158015C(&v126[*(v139 + 6)], v118, sub_1D1583510);
                    sub_1D158034C(v126, type metadata accessor for SignificantChange);
                    v298 = v446;
LABEL_73:
                    v299 = v426;
                    sub_1D158015C(v462, v426, sub_1D1583578);
                    v300 = *(v140 + 12);
                    v301 = v457 + 16;
                    v424 = *(v457 + 16);
                    (v424)(v427, v299 + v300, v143);
                    sub_1D158034C(v299 + v300, type metadata accessor for SignificantChangeEngine.Changepoint);
                    sub_1D158015C(v118, v142, sub_1D1583510);
                    v302 = (*(v138 + 48))(v142, 1, v298);
                    v436 = v301;
                    if (v302 == 1)
                    {
                      v303 = sub_1D1583510;
                      v304 = v142;
                    }

                    else
                    {
                      v305 = v394;
                      sub_1D1580248(v142, v394, type metadata accessor for SignificantChange.Notification);
                      if (v442)
                      {
                        v306 = v457;
                        (*(v457 + 8))(v427, v143);
                        sub_1D158034C(v118, sub_1D1583510);
                        if (*(v305 + 16))
                        {
                          sub_1D1580248(v305, v141, type metadata accessor for SignificantChange.Notification);
                          goto LABEL_84;
                        }

                        v375 = v305;
                        v313 = *v305;
                        v314 = *(v375 + 8);
                        v376 = v446;
                        v377 = *(v306 + 32);
                        v377(v141 + *(v446 + 24), v375 + *(v446 + 24), v143);
                        v377(v141 + *(v376 + 28), v375 + *(v376 + 28), v143);
LABEL_83:
                        *v141 = v313;
                        *(v141 + 8) = v314;
                        *(v141 + 16) = 1;
LABEL_84:
                        v316 = v470;
                        v317 = v463;
                        LODWORD(v440) = v4 <= 0.0;
                        (v463)(v426, v470);
                        sub_1D15A2288();
                        v449 = sub_1D1583578;
                        v318 = v462;
                        v319 = v448;
                        sub_1D158015C(v462, v448, sub_1D1583578);
                        v437 = *(v461 + 12);
                        v320 = v461;
                        sub_1D15A2288();
                        v317(v319, v316);
                        v321 = v428;
                        sub_1D15A2268();
                        v439 = type metadata accessor for SignificantChangeEngine.Changepoint;
                        sub_1D158034C(v319 + v437, type metadata accessor for SignificantChangeEngine.Changepoint);
                        v460 = *(v460 + 16);
                        v322 = v429;
                        (v460)(v429, v321, v316);
                        v323 = v449;
                        sub_1D158015C(v318, v319, v449);
                        v324 = v319 + *(v320 + 12);
                        v325 = *(v324 + v458[11] + 24);
                        sub_1D158034C(v324, type metadata accessor for SignificantChangeEngine.Changepoint);
                        sub_1D1572DA4(v467, v321);
                        v326 = v463;
                        v327 = v319;
                        v328 = v438;
                        *(v322 + *(v438 + 20)) = v325;
                        *(v322 + v328[6]) = v329;
                        *(v322 + v328[7]) = 2;
                        v330 = v470;
                        v326(v319, v470);
                        sub_1D158015C(v462, v319, v323);
                        v331 = v461;
                        v437 = *(v461 + 12);
                        sub_1D15A2288();
                        v326(v319, v330);
                        sub_1D15A2258();
                        v332 = v405;
                        sub_1D15A2268();
                        v333 = v439;
                        sub_1D158034C(v327 + v437, v439);
                        v334 = v409;
                        (v460)(v409, v332, v330);
                        sub_1D158015C(v462, v327, v449);
                        v335 = v327 + *(v331 + 12);
                        v336 = *(v335 + v458[12] + 24);
                        sub_1D158034C(v335, v333);
                        v337 = v332;
                        sub_1D1572DA4(v467, v332);
                        *(v334 + v328[5]) = v336;
                        *(v334 + v328[6]) = v338;
                        *(v334 + v328[7]) = v440;
                        v339 = v463;
                        (v463)(v327, v330);
                        v340 = v429;
                        v341 = v435;
                        sub_1D158015C(v429, v435, type metadata accessor for SignificantChange.Period);
                        sub_1D1583630(0);
                        v342 = (*(v408 + 80) + 32) & ~*(v408 + 80);
                        v343 = swift_allocObject();
                        *(v343 + 16) = xmmword_1D15ACDD0;
                        sub_1D1580248(v334, v343 + v342, type metadata accessor for SignificantChange.Period);
                        v339(v337, v330);
                        sub_1D158034C(v340, type metadata accessor for SignificantChange.Period);
                        v344 = v330;
                        v339(v428, v330);
                        sub_1D158034C(v432, sub_1D148EF2C);
                        v339(v459, v330);
                        v345 = v465;
                        v346 = *(v465 + 24);
                        sub_1D1580248(v433, v341 + v346, type metadata accessor for SignificantChange.Notification);
                        v347 = v341 + v346;
                        v348 = v462;
                        (*(v445 + 56))(v347, 0, 1, v446);
                        *(v341 + *(v345 + 20)) = v343;
                        v450(v430, v464, v330);
                        v349 = v434;
                        sub_1D158015C(v341, v434, type metadata accessor for SignificantChange);
                        v350 = *(v468 + 56);
                        v351 = v461;
                        v468 += 56;
                        v467 = v350;
                        (v350)(v349, 0, 1, v345);
                        v352 = v431;
                        sub_1D158015C(v348, v431, v449);
                        v353 = v425;
                        sub_1D1580248(v352 + *(v351 + 12), v425, type metadata accessor for SignificantChangeEngine.Changepoint);
                        (v441)(v353, 0, 1, v458);
                        if (v442)
                        {
                          v355 = v395;
                          sub_1D1580144(v469, v395, v354);
                          v356 = v455;
                          v357 = (v453)(v355, 1, v455);
                          a4 = v466;
                          v358 = v456;
                          v359 = v411;
                          if (v357 == 1)
                          {
                            sub_1D158034C(v355, sub_1D15801C4);
                            v360 = v410;
LABEL_90:
                            v368 = v457;
                            (*(v457 + 56))(v400, 1, 1, v358);
                            goto LABEL_91;
                          }

                          v365 = v390;
                          sub_1D15807E4(v355 + *(v356 + 20), v390);
                          sub_1D158034C(v355, type metadata accessor for SignificantChangeEngine.State);
                          v366 = type metadata accessor for SignificantChangeEngine.State.MeanShift(0);
                          v367 = (*(*(v366 - 8) + 48))(v365, 1, v366);
                          v360 = v410;
                          if (v367 == 1)
                          {
                            sub_1D158034C(v365, sub_1D15807FC);
                            goto LABEL_90;
                          }

                          v378 = v365 + *(v366 + 24);
                          v379 = v400;
                          sub_1D1455A40(v378, v400);
                          sub_1D158034C(v365, type metadata accessor for SignificantChangeEngine.State.MeanShift);
                          v368 = v457;
                          if ((*(v457 + 48))(v379, 1, v358) == 1)
                          {
LABEL_91:
                            v369 = v448;
                            sub_1D1580248(v462, v448, sub_1D1583578);
                            v370 = *(v461 + 12);
                            (v424)(v360, v369 + v370, v358);
                            v371 = v369 + v370;
                            v372 = v400;
                            sub_1D158034C(v371, type metadata accessor for SignificantChangeEngine.Changepoint);
                            v373 = v369;
                            v344 = v470;
                            v364 = v463;
                            (v463)(v373, v470);
                            v374 = (*(v368 + 48))(v372, 1, v358);
                            v353 = v425;
                            if (v374 != 1)
                            {
                              sub_1D158034C(v372, sub_1D14F104C);
                            }

                            goto LABEL_98;
                          }

                          sub_1D158034C(v462, sub_1D1583578);
                          (*(v368 + 32))(v360, v379, v358);
                          v344 = v470;
                          v353 = v425;
                          v364 = v463;
                        }

                        else
                        {
                          v361 = v348;
                          v362 = v448;
                          sub_1D1580248(v361, v448, sub_1D1583578);
                          v363 = *(v351 + 12);
                          v360 = v410;
                          v358 = v456;
                          (v424)(v410, v362 + v363, v456);
                          sub_1D158034C(v362 + v363, type metadata accessor for SignificantChangeEngine.Changepoint);
                          v364 = v463;
                          (v463)(v362, v330);
                          a4 = v466;
                          v359 = v411;
                        }

LABEL_98:
                        (*(v457 + 56))(v360, 0, 1, v358);
                        sub_1D1580218(v434, v359);
                        v380 = type metadata accessor for SignificantChangeEngine.State.MeanShift(0);
                        sub_1D15808F4(v353, v359 + *(v380 + 20));
                        sub_1D150F280(v360, v359 + *(v380 + 24));
                        v364(v431, v344);
                        (*(*(v380 - 8) + 56))(v359, 0, 1, v380);
                        v241 = v455;
                        v381 = *(v455 + 24);
                        v382 = type metadata accessor for SignificantChangeEngine.State.FrequencyShift(0);
                        v383 = v412;
                        (*(*(v382 - 8) + 56))(&v412[v381], 1, 1, v382);
                        v450(v383, v430, v344);
                        sub_1D1580248(v359, &v383[*(v241 + 20)], sub_1D15807FC);
                        sub_1D1580248(v435, a4, type metadata accessor for SignificantChange);
                        v384 = v465;
                        v385 = v467;
                        (v467)(a4, 0, 1, v465);
                        v148 = type metadata accessor for SignificantChangeEngine.Output(0);
                        v385(a4 + *(v148 + 20), 1, 1, v384);
                        v261 = *(v148 + 24);
                        v262 = a4 + v261;
                        v263 = v383;
                        goto LABEL_99;
                      }

                      v303 = type metadata accessor for SignificantChange.Notification;
                      v304 = v305;
                    }

                    v307 = sub_1D158034C(v304, v303);
                    v308 = v457;
                    v309 = v397;
                    MEMORY[0x1D38884F0](v307);
                    sub_1D1580304(&qword_1EE0594B0, MEMORY[0x1E69693A0], MEMORY[0x1E6969390]);
                    v310 = v399;
                    v311 = v427;
                    sub_1D15A2688();
                    (*(v398 + 8))(v309, v310);
                    if (v4 > 0.0)
                    {
                      v312 = 0x6973616572636E69;
                    }

                    else
                    {
                      v312 = 0x6973616572636564;
                    }

                    MEMORY[0x1D388A330](95, 0xE100000000000000);
                    MEMORY[0x1D388A330](v312, 0xEA0000000000676ELL);

                    v314 = *(&v472 + 1);
                    v313 = v472;
                    v315 = v446;
                    _s19HealthVisualization25PresentationDateProvidingPAAE012presentationD010Foundation0D0VvgZ_0();
                    sub_1D158034C(v118, sub_1D1583510);
                    (*(v308 + 32))(v141 + *(v315 + 28), v311, v456);
                    goto LABEL_83;
                  }

                  sub_1D158034C(v126, sub_1D15800F0);
                }
              }

              v298 = v446;
              (*(v138 + 56))(v118, 1, 1, v446);
              goto LABEL_73;
            }

            sub_1D158034C(v253, sub_1D15807FC);
            v211 = v460;
          }

          (*(v209 + 56))(v212, 1, 1, v208);
          goto LABEL_61;
        }

LABEL_31:
        sub_1D158034C(v187, sub_1D14F104C);
        v158 = 0x80000001D15C2670;
        v437 = 0xD000000000000019;
        goto LABEL_32;
      }

      sub_1D158034C(v185, sub_1D15807FC);
      v175 = v461;
    }

    v187 = v436;
    (*(v457 + 56))(v436, 1, 1, v456);
    goto LABEL_31;
  }

  v176 = *(v460 + 8);
  v176(v169, v167);
  v176(v459, v167);
  sub_1D158034C(v173, sub_1D1583544);
  v177 = *(v468 + 56);
  a4 = v466;
  v178 = v465;
  v177(v466, 1, 1, v465);
  v148 = type metadata accessor for SignificantChangeEngine.Output(0);
  v177(a4 + *(v148 + 20), 1, 1, v178);
  v150 = a4 + *(v148 + 24);
  v151 = v172;
LABEL_12:
  sub_1D1580144(v151, v150, v149);
  return (*(*(v148 - 8) + 56))(a4, 0, 1, v148);
}

uint64_t sub_1D15708E4(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    sub_1D148EF60(0);
    return a2;
  }

  return result;
}

void sub_1D157096C(uint64_t a1, double (**a2)(char *, char *, uint64_t))
{
  sub_1D151E0D0(0);
  v141 = v4;
  v140 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v151 = &v129 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v139 = sub_1D15A26A8();
  v6 = *(v139 - 8);
  MEMORY[0x1EEE9AC00](v139);
  v138 = &v129 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D148EF2C(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v137 = &v129 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D148EF60(0);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v136 = &v129 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v150 = &v129 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v129 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v160 = &v129 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v152 = &v129 - v21;
  MEMORY[0x1EEE9AC00](v22);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v129 - v24;
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v129 - v27;
  MEMORY[0x1EEE9AC00](v29);
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v129 - v31;
  MEMORY[0x1EEE9AC00](v33);
  v38 = &v129 - v37;
  v39 = *(a1 + 16);
  if (v39)
  {
    v156 = a2;
    v148 = v36;
    v147 = v25;
    v154 = v35;
    v155 = v6;
    v40 = 0;
    v153 = v34;
    v41 = &v38[*(v34 + 48)];
    v42 = a1 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
    v43 = 0.0;
    v161 = v39;
    v159 = *&v42;
    do
    {
      if (v40 >= v39)
      {
        __break(1u);
LABEL_58:
        __break(1u);
        return;
      }

      v158 = *(v11 + 72);
      sub_1D158015C(v42 + v158 * v40, v38, sub_1D148EF60);
      v44 = v40 + 1;
      if (__OFADD__(v40, 1))
      {
        goto LABEL_58;
      }

      v45 = v41[8];
      sub_1D158034C(v38, sub_1D148EF60);
      if (v45 != 1)
      {
        v43 = v43 + 1.0;
      }

      ++v40;
      v39 = v161;
      v46 = v44 == v161;
      *&v42 = v159;
    }

    while (!v46);
    v149 = v17;
    v47 = 0.0;
    v48 = v153;
    v49 = v158;
    v50 = v32;
    do
    {
      v51 = v49;
      sub_1D158015C(v42, v50, sub_1D148EF60);
      sub_1D1580248(v50, v28, sub_1D148EF60);
      v52 = &v28[*(v48 + 48)];
      if (v52[8])
      {
        v53 = 0.0;
      }

      else
      {
        v53 = *v52;
      }

      v54 = sub_1D15A22A8();
      v55 = *(v54 - 8);
      v56 = *(*&v55 + 8);
      v56(v28, v54);
      v49 = v51;
      v47 = v47 + v53;
      v42 += v51;
      --v39;
    }

    while (v39);
    v146 = v55;
    v57 = *&v159;
    v58 = v161;
    v59 = 0.0;
    v157 = (*&v55 + 8);
    v60 = v48;
    v61 = *&v154;
    v62 = v147;
    v63 = v148;
    do
    {
      sub_1D158015C(v57, v63, sub_1D148EF60);
      sub_1D158015C(v63, v62, sub_1D148EF60);
      v64 = v62 + *(v60 + 48);
      if (*(v64 + 8))
      {
        v65 = 0.0;
      }

      else
      {
        v65 = *v64;
      }

      v56(v62, v54);
      sub_1D1580248(v63, v61, sub_1D148EF60);
      v66 = v61 + *(v60 + 48);
      if (*(v66 + 8))
      {
        v67 = 0.0;
      }

      else
      {
        v67 = *v66;
      }

      v56(v61, v54);
      v59 = v59 + v65 * v67;
      v57 += v51;
      --v58;
    }

    while (v58);
    v148 = v56;
    if (v43 >= 2.0)
    {
      v68 = v43 + -1.0;
      v69 = (v59 - v47 * v47 / v43) / (v43 + -1.0);
      if (v69 <= 0.00000001)
      {
        v69 = 0.00000001;
      }
    }

    else
    {
      v68 = v43 + -1.0;
      v69 = 0.00000001;
    }

    v70 = v54;
    v147 = (v152 + *(v153 + 48));
    v143 = v156;
    v145 = v69;
    v130 = v69 * v69 / (v43 * v43 * v68);
    v129 = (*&v155 + 32);
    v135 = (*&v155 + 8);
    v156 = (*&v146 + 32);
    v157 = MEMORY[0x1E69E7CC0];
    v71 = 0.0;
    v72 = 0.00000001;
    v142 = NAN;
    v73 = 1.0;
    v74 = 2.0;
    v75 = 0.0;
    v154 = 0.0;
    v155 = 0.00000001;
    v76 = v47 / v43;
    v77 = *&v159;
    do
    {
      v159 = v75;
      v81 = v77;
      v82 = v152;
      sub_1D158015C(v77, v152, sub_1D148EF60);
      v83 = *v147;
      v84 = v147[8];
      v85 = v153;
      v86 = &v160[*(v153 + 48)];
      v87 = *v156;
      (*v156)(v160, v82, v70);
      *v86 = v83;
      v86[8] = v84;
      v88 = v160;
      v89 = v149;
      sub_1D158015C(v160, v149, sub_1D148EF60);
      v90 = v89 + *(v85 + 48);
      if (*(v90 + 8))
      {
        sub_1D158034C(v88, sub_1D148EF60);
        v148(v89, v70);
        v78 = v161;
        v79 = v81;
        v80 = v158;
        v75 = v159;
      }

      else
      {
        v146 = *v90;
        v91 = v148;
        v148(v89, v70);
        sub_1D158015C(v88, v150, sub_1D148EF60);
        v92 = v136;
        sub_1D158015C(v88, v136, sub_1D148EF60);
        v93 = v138;
        sub_1D15A2288();
        v91(v92, v70);
        v94 = v137;
        if (v71 >= v143)
        {
          v79 = v81;
          if (v43 >= v143)
          {
            v97 = v159 / v71;
            v98 = v47 / v43;
            v133 = vabdd_f64(v159 / v71, v47 / v43);
            v134 = v76;
            v144 = v71;
            v99 = v72;
            v100 = v145;
            v101 = v72 / v144 + v145 / v43;
            v102 = pow(v101, -0.5);
            v131 = v133 * v102;
            v103 = v99 * v99 / (v144 * v144 * (v144 + -1.0)) + v100 * v100 / (v43 * v43 * (v43 + -1.0));
            if (v103 <= 0.0)
            {
              v103 = v130;
            }

            if (v101 * v101 / v103 > v155)
            {
              v104 = v101 * v101 / v103;
            }

            else
            {
              v104 = v155;
            }

            v132 = v98 - v97;
            v145 = v100;
            v133 = v144 * v99 + v43 * v100;
            v105 = vabdd_f64(v98, v97) / sqrt((v99 + v100) * 0.5);
            v106 = v131;
            v107.n128_f64[0] = v131;
            v108.n128_f64[0] = v104;
            v115 = StudentsCDF(v107, v108, v109, v110, v111, v112, v113, v114);
            if (v106 > 0.0)
            {
              v115 = 1.0 - v115;
            }

            v116 = v115 + v115;
            (*v129)(v94, v93, v139);
            v117 = type metadata accessor for SignificantChangeEngine.Changepoint(0);
            *(v94 + v117[5]) = v116;
            v74 = 2.0;
            *(v94 + v117[6]) = v106;
            *(v94 + v117[7]) = v132;
            *(v94 + v117[8]) = v104;
            *(v94 + v117[9]) = v105;
            v73 = 1.0;
            *(v94 + v117[10]) = v133;
            v118 = v94 + v117[11];
            v119 = v159;
            *v118 = v144;
            *(v118 + 8) = v119;
            v120 = v142;
            *(v118 + 16) = v154;
            *(v118 + 24) = v120;
            *(v118 + 32) = v99;
            v71 = v144;
            v121 = v94 + v117[12];
            *v121 = v43;
            *(v121 + 8) = v47;
            v122 = v134;
            *(v121 + 16) = v59;
            *(v121 + 24) = v122;
            *(v121 + 32) = v145;
            (*(*(v117 - 1) + 56))(v94, 0, 1, v117);
          }

          else
          {
            (*v135)(v93, v139);
            v96 = type metadata accessor for SignificantChangeEngine.Changepoint(0);
            (*(*(v96 - 8) + 56))(v94, 1, 1, v96);
          }
        }

        else
        {
          (*v135)(v93, v139);
          v95 = type metadata accessor for SignificantChangeEngine.Changepoint(0);
          (*(*(v95 - 8) + 56))(v94, 1, 1, v95);
          v79 = v81;
        }

        v80 = v158;
        v123 = *(v141 + 48);
        v124 = v151;
        v87(v151, v150, v70);
        sub_1D15808F4(v94, v124 + v123);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v157 = sub_1D148CB88(0, v157[2] + 1, 1, v157);
        }

        v126 = v157[2];
        v125 = v157[3];
        if (v126 >= v125 >> 1)
        {
          v157 = sub_1D148CB88((v125 > 1), v126 + 1, 1, v157);
        }

        sub_1D158034C(v88, sub_1D148EF60);
        v127 = v157;
        v157[2] = v126 + 1;
        sub_1D1580248(v151, v127 + ((*(v140 + 80) + 32) & ~*(v140 + 80)) + *(v140 + 72) * v126, sub_1D151E0D0);
        v71 = v71 + v73;
        v75 = v159 + v146;
        v72 = v155;
        v154 = v154 + v146 * v146;
        if (v71 >= v74)
        {
          if ((v154 - v75 * v75 / v71) / (v71 + -1.0) > v155)
          {
            v72 = (v154 - v75 * v75 / v71) / (v71 + -1.0);
          }

          else
          {
            v72 = v155;
          }
        }

        v142 = v75 / v71;
        v43 = v43 + -1.0;
        v47 = v47 - v146;
        v59 = v59 - v146 * v146;
        v76 = v47 / v43;
        v78 = v161;
        if (v43 >= v74)
        {
          v128 = (v59 - v47 * v47 / v43) / (v43 + -1.0);
          if (v128 <= v155)
          {
            v128 = v155;
          }
        }

        else
        {
          v128 = v155;
        }

        v145 = v128;
      }

      v77 = v79 + v80;
      v161 = v78 - 1;
    }

    while (v78 != 1);
  }

  else
  {
    v157 = MEMORY[0x1E69E7CC0];
  }
}

uint64_t sub_1D1571714(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v48 = a3;
  v51 = a2;
  sub_1D15801C4(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D15807FC(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D14F104C(0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1D15A26A8();
  v49 = *(v13 - 8);
  v50 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v46 = &v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v45 = &v44 - v16;
  sub_1D151E0D0(0);
  v18 = v17;
  MEMORY[0x1EEE9AC00](v17);
  v44 = &v44 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v44 - v21;
  v23 = type metadata accessor for SignificantChangeEngine.Changepoint(0);
  v24 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v26 = &v44 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = a1;
  sub_1D158015C(a1, v22, sub_1D151E0D0);
  v27 = *(v18 + 48);
  if ((*(v24 + 48))(&v22[v27], 1, v23) != 1)
  {
    sub_1D1580248(&v22[v27], v26, type metadata accessor for SignificantChangeEngine.Changepoint);
    v29 = sub_1D15A22A8();
    v30 = *(*(v29 - 8) + 8);
    (v30)(v22, v29);
    v31.n128_f64[0] = v51[12];
    if (*&v26[*(v23 + 44)] < v31.n128_f64[0] || *&v26[*(v23 + 48)] < v31.n128_f64[0])
    {
      sub_1D158034C(v26, type metadata accessor for SignificantChangeEngine.Changepoint);
      goto LABEL_6;
    }

    v51 = v30;
    sub_1D1580144(v48, v6, v31);
    v34 = type metadata accessor for SignificantChangeEngine.State(0);
    if ((*(*(v34 - 8) + 48))(v6, 1, v34) == 1)
    {
      sub_1D158034C(v6, sub_1D15801C4);
      v36 = v49;
      v35 = v50;
    }

    else
    {
      sub_1D15807E4(&v6[*(v34 + 20)], v9);
      sub_1D158034C(v6, type metadata accessor for SignificantChangeEngine.State);
      v37 = type metadata accessor for SignificantChangeEngine.State.MeanShift(0);
      v38 = (*(*(v37 - 8) + 48))(v9, 1, v37);
      v36 = v49;
      v35 = v50;
      if (v38 != 1)
      {
        sub_1D1455A40(&v9[*(v37 + 24)], v12);
        sub_1D158034C(v9, type metadata accessor for SignificantChangeEngine.State.MeanShift);
        if ((*(v36 + 48))(v12, 1, v35) != 1)
        {
          v39 = v45;
          (*(v36 + 32))();
          v40 = v44;
          sub_1D158015C(v47, v44, sub_1D151E0D0);
          v48 = *(v18 + 48);
          v41 = v46;
          sub_1D15A2288();
          (v51)(v40, v29);
          sub_1D1580304(&qword_1EE05B518, MEMORY[0x1E6969530], MEMORY[0x1E6969548]);
          v42 = v39;
          v32 = sub_1D15A3EB8();
          v43 = *(v36 + 8);
          v43(v41, v35);
          v43(v42, v35);
          sub_1D158034C(v26, type metadata accessor for SignificantChangeEngine.Changepoint);
          sub_1D158034C(v40 + v48, sub_1D148EF2C);
          return v32 & 1;
        }

        goto LABEL_13;
      }

      sub_1D158034C(v9, sub_1D15807FC);
    }

    (*(v36 + 56))(v12, 1, 1, v35);
LABEL_13:
    sub_1D158034C(v26, type metadata accessor for SignificantChangeEngine.Changepoint);
    sub_1D158034C(v12, sub_1D14F104C);
    v32 = 1;
    return v32 & 1;
  }

  sub_1D158034C(&v22[v27], sub_1D148EF2C);
  v28 = sub_1D15A22A8();
  (*(*(v28 - 8) + 8))(v22, v28);
LABEL_6:
  v32 = 0;
  return v32 & 1;
}

void sub_1D1571E0C(uint64_t a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t a3@<X8>)
{
  v120 = a3;
  v139 = type metadata accessor for SignificantChangeEngine.Changepoint(0);
  v5 = *(v139 - 1);
  MEMORY[0x1EEE9AC00](v139);
  v131 = &v113 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D1583544(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v113 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D1583578(0);
  v11 = v10;
  v12 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v119 = &v113 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v125 = &v113 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v117 = &v113 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v118 = &v113 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v116 = &v113 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v124 = &v113 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v123 = &v113 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v122 = &v113 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v114 = &v113 - v29;
  MEMORY[0x1EEE9AC00](v30);
  v115 = &v113 - v31;
  MEMORY[0x1EEE9AC00](v32);
  v130 = &v113 - v33;
  sub_1D151E0D0(0);
  v35 = v34;
  MEMORY[0x1EEE9AC00](v34);
  v129 = &v113 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v37);
  v39 = &v113 - v38;
  MEMORY[0x1EEE9AC00](v40);
  v43 = &v113 - v42;
  v121 = *a2;
  v44 = *(a1 + 16);
  v126 = v12;
  if (v44)
  {
    v45 = a1 + ((*(v41 + 80) + 32) & ~*(v41 + 80));
    v46 = *(v41 + 72);
    v136 = (v5 + 48);
    v137 = v46;
    v135 = (v12 + 56);
    v127 = (v12 + 48);
    v138 = MEMORY[0x1E69E7CC0];
    v128 = &v113 - v42;
    while (1)
    {
      sub_1D158015C(v45, v43, sub_1D151E0D0);
      sub_1D158015C(v43, v39, sub_1D151E0D0);
      v48 = *(v35 + 48);
      if ((*v136)(&v39[v48], 1, v139) == 1)
      {
        sub_1D158034C(v43, sub_1D151E0D0);
        sub_1D158034C(&v39[v48], sub_1D148EF2C);
        v47 = sub_1D15A22A8();
        (*(*(v47 - 8) + 8))(v39, v47);
        (*v135)(v9, 1, 1, v11);
      }

      else
      {
        v133 = type metadata accessor for SignificantChangeEngine.Changepoint;
        v134 = v44;
        v49 = v131;
        sub_1D1580248(&v39[v48], v131, type metadata accessor for SignificantChangeEngine.Changepoint);
        v50 = sub_1D15A22A8();
        v51 = *(v50 - 8);
        (*(v51 + 8))(v39, v50);
        v52 = v39;
        v53 = *(v11 + 48);
        v54 = v43;
        v55 = v129;
        sub_1D1580248(v54, v129, sub_1D151E0D0);
        v132 = *(v35 + 48);
        (*(v51 + 32))(v9, v55, v50);
        v56 = &v9[v53];
        v39 = v52;
        v57 = v49;
        v44 = v134;
        sub_1D1580248(v57, v56, v133);
        (*v135)(v9, 0, 1, v11);
        v58 = v55 + v132;
        v43 = v128;
        sub_1D158034C(v58, sub_1D148EF2C);
        if ((*v127)(v9, 1, v11) != 1)
        {
          sub_1D1580248(v9, v130, sub_1D1583578);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v138 = sub_1D148CBC4(0, v138[2] + 1, 1, v138);
          }

          v60 = v138[2];
          v59 = v138[3];
          if (v60 >= v59 >> 1)
          {
            v138 = sub_1D148CBC4((v59 > 1), v60 + 1, 1, v138);
          }

          v61 = v138;
          v138[2] = v60 + 1;
          sub_1D1580248(v130, v61 + ((*(v126 + 80) + 32) & ~*(v126 + 80)) + *(v126 + 72) * v60, sub_1D1583578);
          goto LABEL_5;
        }
      }

      sub_1D158034C(v9, sub_1D1583544);
LABEL_5:
      v45 += v137;
      if (!--v44)
      {
        goto LABEL_14;
      }
    }
  }

  v138 = MEMORY[0x1E69E7CC0];
LABEL_14:
  v62 = v138[2];
  if (v121 <= 1)
  {
    v63 = v126;
    v65 = v122;
    v64 = v123;
    if (!v121)
    {
      if (v62)
      {
        v137 = v138 + ((*(v126 + 80) + 32) & ~*(v126 + 80));
        sub_1D158015C(v137, v125, sub_1D1583578);
        v66 = v119;
        if (v62 == 1)
        {
LABEL_18:

          v67 = v120;
          sub_1D1580248(v125, v120, sub_1D1583578);
          v68 = 0;
          v63 = v126;
LABEL_34:
          (*(v63 + 56))(v67, v68, 1, v11);
          return;
        }

        v79 = 1;
        while (v79 < v138[2])
        {
          sub_1D158015C(v137 + *(v126 + 72) * v79, v66, sub_1D1583578);
          sub_1D158015C(v66, v65, sub_1D1583578);
          v80 = v65 + *(v11 + 48);
          v81 = v139;
          v82 = *(v80 + v139[5]);
          sub_1D158034C(v80, type metadata accessor for SignificantChangeEngine.Changepoint);
          v83 = v125;
          sub_1D158015C(v125, v64, sub_1D1583578);
          v84 = v64 + *(v11 + 48);
          v85 = *(v84 + v81[5]);
          sub_1D158034C(v84, type metadata accessor for SignificantChangeEngine.Changepoint);
          v86 = sub_1D15A22A8();
          v87 = *(*(v86 - 8) + 8);
          v87(v64, v86);
          v87(v65, v86);
          if (v82 >= v85)
          {
            sub_1D158034C(v66, sub_1D1583578);
          }

          else
          {
            sub_1D158034C(v83, sub_1D1583578);
            sub_1D1580248(v66, v83, sub_1D1583578);
          }

          if (v62 == ++v79)
          {
            goto LABEL_18;
          }
        }

        __break(1u);
        goto LABEL_57;
      }

LABEL_33:

      v68 = 1;
      v67 = v120;
      goto LABEL_34;
    }

    if (!v62)
    {
      goto LABEL_33;
    }

    v136 = (v138 + ((*(v126 + 80) + 32) & ~*(v126 + 80)));
    v74 = v118;
    sub_1D158015C(v136, v118, sub_1D1583578);
    v137 = v62;
    v71 = v62 == 1;
    v75 = v117;
    if (!v71)
    {
      v97 = 1;
      while (v97 < v138[2])
      {
        sub_1D158015C(v136 + *(v63 + 72) * v97, v75, sub_1D1583578);
        sub_1D158015C(v74, v65, sub_1D1583578);
        v98 = v65 + *(v11 + 48);
        v99 = v139;
        v100 = *(v98 + v139[9]);
        sub_1D158034C(v98, type metadata accessor for SignificantChangeEngine.Changepoint);
        sub_1D158015C(v75, v64, sub_1D1583578);
        v101 = v64 + *(v11 + 48);
        v102 = *(v101 + v99[9]);
        sub_1D158034C(v101, type metadata accessor for SignificantChangeEngine.Changepoint);
        v103 = sub_1D15A22A8();
        v104 = *(*(v103 - 8) + 8);
        v104(v64, v103);
        v104(v65, v103);
        if (v100 >= v102)
        {
          sub_1D158034C(v75, sub_1D1583578);
        }

        else
        {
          sub_1D158034C(v74, sub_1D1583578);
          sub_1D1580248(v75, v74, sub_1D1583578);
        }

        if (v137 == ++v97)
        {
          goto LABEL_27;
        }
      }

      goto LABEL_58;
    }

LABEL_27:

    v73 = v74;
LABEL_32:
    v67 = v120;
    sub_1D1580248(v73, v120, sub_1D1583578);
    v68 = 0;
    goto LABEL_34;
  }

  v63 = v126;
  v70 = v122;
  v69 = v123;
  if (v121 != 2)
  {
    if (!v62)
    {
      goto LABEL_33;
    }

    v136 = (v138 + ((*(v126 + 80) + 32) & ~*(v126 + 80)));
    v76 = v62;
    v77 = v115;
    sub_1D158015C(v136, v115, sub_1D1583578);
    v137 = v76;
    v71 = v76 == 1;
    v78 = v114;
    if (!v71)
    {
      v105 = 1;
      while (v105 < v138[2])
      {
        sub_1D158015C(v136 + *(v63 + 72) * v105, v78, sub_1D1583578);
        sub_1D158015C(v77, v70, sub_1D1583578);
        v106 = v70 + *(v11 + 48);
        v107 = v139;
        v108 = *(v106 + v139[6]);
        sub_1D158034C(v106, type metadata accessor for SignificantChangeEngine.Changepoint);
        sub_1D158015C(v78, v69, sub_1D1583578);
        v109 = v69 + *(v11 + 48);
        v110 = *(v109 + v107[6]);
        sub_1D158034C(v109, type metadata accessor for SignificantChangeEngine.Changepoint);
        v111 = sub_1D15A22A8();
        v112 = *(*(v111 - 8) + 8);
        v112(v69, v111);
        v112(v70, v111);
        if (v108 >= v110)
        {
          sub_1D158034C(v78, sub_1D1583578);
        }

        else
        {
          sub_1D158034C(v77, sub_1D1583578);
          sub_1D1580248(v78, v77, sub_1D1583578);
        }

        if (v137 == ++v105)
        {
          goto LABEL_31;
        }
      }

      goto LABEL_59;
    }

LABEL_31:

    v73 = v77;
    goto LABEL_32;
  }

  if (!v62)
  {
    goto LABEL_33;
  }

  v136 = (v138 + ((*(v126 + 80) + 32) & ~*(v126 + 80)));
  sub_1D158015C(v136, v124, sub_1D1583578);
  v137 = v62;
  v71 = v62 == 1;
  v72 = v116;
  if (v71)
  {
LABEL_23:

    v73 = v124;
    goto LABEL_32;
  }

  v88 = 1;
  while (v88 < v138[2])
  {
    sub_1D158015C(v136 + *(v63 + 72) * v88, v72, sub_1D1583578);
    sub_1D158015C(v72, v70, sub_1D1583578);
    v89 = v70 + *(v11 + 48);
    v90 = v139;
    v91 = *(v89 + v139[10]);
    sub_1D158034C(v89, type metadata accessor for SignificantChangeEngine.Changepoint);
    v92 = v124;
    sub_1D158015C(v124, v69, sub_1D1583578);
    v93 = v69 + *(v11 + 48);
    v94 = *(v93 + v90[10]);
    sub_1D158034C(v93, type metadata accessor for SignificantChangeEngine.Changepoint);
    v95 = sub_1D15A22A8();
    v96 = *(*(v95 - 8) + 8);
    v96(v69, v95);
    v96(v70, v95);
    if (v91 >= v94)
    {
      sub_1D158034C(v72, sub_1D1583578);
    }

    else
    {
      sub_1D158034C(v92, sub_1D1583578);
      sub_1D1580248(v72, v92, sub_1D1583578);
    }

    if (v137 == ++v88)
    {
      goto LABEL_23;
    }
  }

LABEL_57:
  __break(1u);
LABEL_58:
  __break(1u);
LABEL_59:
  __break(1u);
}

void sub_1D1572DA4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D15A26A8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v40 - v9;
  sub_1D148EF60(0);
  v12 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v40 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v21 = *(a1 + 16);
  if (v21)
  {
    v45 = v10;
    v46 = v4;
    v47 = v7;
    v51 = a2;
    v42 = &v40 + *(v12 + 48) - v20;
    v43 = &v40 - v20;
    v22 = a1 + ((*(v19 + 80) + 32) & ~*(v19 + 80));
    v23 = *(v19 + 72);
    v40 = v14;
    v41 = v23;
    v24 = (v5 + 8);
    v25 = 0.0;
    v26 = 0.0;
    v44 = v12;
    do
    {
      v52 = v22;
      v53 = v21;
      v27 = v43;
      sub_1D158015C(v22, v43, sub_1D148EF60);
      v28 = *v42;
      v29 = v42[8];
      v30 = &v17[*(v12 + 48)];
      v31 = sub_1D15A22A8();
      v32 = *(v31 - 8);
      (*(v32 + 32))(v17, v27, v31);
      *v30 = v28;
      v48 = v29;
      v30[8] = v29;
      sub_1D158015C(v17, v14, sub_1D148EF60);
      v33 = v45;
      sub_1D15A2288();
      v50 = *(v32 + 8);
      v50(v14, v31);
      v34 = v47;
      sub_1D15A2288();
      v35 = sub_1D1580304(&qword_1EE05B518, MEMORY[0x1E6969530], MEMORY[0x1E6969548]);
      v36 = v17;
      v37 = v46;
      v49 = v35;
      LOBYTE(v28) = sub_1D15A3EB8();
      v38 = *v24;
      (*v24)(v34, v37);
      v38(v33, v37);
      if (v28)
      {
        sub_1D158015C(v36, v14, sub_1D148EF60);
        sub_1D15A2258();
        v50(v14, v31);
        sub_1D15A2258();
        v39 = sub_1D15A3EC8();
        v38(v34, v37);
        v38(v33, v37);
        sub_1D158034C(v36, sub_1D148EF60);
        v17 = v36;
        if (v39)
        {
          v26 = v26 + 1.0;
          if (!v48)
          {
            v25 = v25 + 1.0;
          }
        }

        v12 = v44;
        v14 = v40;
      }

      else
      {
        sub_1D158034C(v36, sub_1D148EF60);
        v12 = v44;
        v17 = v36;
      }

      v22 = v52 + v41;
      v21 = v53 - 1;
    }

    while (v53 != 1);
  }
}

uint64_t sub_1D157323C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v47 = a2;
  sub_1D1583664(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D148EF2C(0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v40 - v14;
  v16 = type metadata accessor for SignificantChangeEngine.Changepoint(0);
  v17 = *(v16 - 1);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v40 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v40 - v21;
  v23 = *a3;
  v24 = *(a3 + 8);
  v25 = *(a3 + 16);
  v45 = *(a3 + 24);
  v46 = v24;
  v26 = *(a3 + 32);
  v27 = *(a3 + 48);
  v28 = *(a3 + 56);
  v43 = *(a3 + 40);
  v44 = v28;
  v29 = *(a3 + 64);
  v30 = *(a3 + 72);
  v31 = *(a3 + 80);
  v41 = *(a3 + 88);
  v42 = v30;
  sub_1D15808BC(a1, v15);
  v32 = *(v17 + 48);
  if (v32(v15, 1, v16) == 1)
  {
    sub_1D158034C(v15, sub_1D148EF2C);
    return (*(v17 + 56))(a4, 1, 1, v16);
  }

  v40 = a4;
  v34 = sub_1D1580248(v15, v22, type metadata accessor for SignificantChangeEngine.Changepoint);
  MEMORY[0x1EEE9AC00](v34);
  *(&v40 - 2) = v22;
  sub_1D1565D8C(sub_1D1583698, v47, v9);
  sub_1D151E0D0(0);
  v36 = v35;
  if ((*(*(v35 - 8) + 48))(v9, 1, v35) == 1)
  {
    sub_1D158034C(v9, sub_1D1583664);
    (*(v17 + 56))(v12, 1, 1, v16);
LABEL_6:
    sub_1D158034C(v12, sub_1D148EF2C);
    (*(v17 + 56))(v40, 1, 1, v16);
    goto LABEL_7;
  }

  sub_1D15808F4(&v9[*(v36 + 48)], v12);
  v37 = sub_1D15A22A8();
  (*(*(v37 - 8) + 8))(v9, v37);
  if (v32(v12, 1, v16) == 1)
  {
    goto LABEL_6;
  }

  sub_1D1580248(v12, v19, type metadata accessor for SignificantChangeEngine.Changepoint);
  v39 = v40;
  if (((v46 & 1) == 0 && v23 < *&v19[v16[5]] || (v45 & 1) == 0 && *&v19[v16[9]] < v25 || (v43 & 1) == 0 && fabs(*&v19[v16[7]]) < v26) && ((v44 & 1) == 0 && v27 < *&v19[v16[5]] || (v42 & 1) == 0 && *&v19[v16[9]] < v29 || (v41 & 1) == 0 && fabs(*&v19[v16[7]]) < v31))
  {
    sub_1D158034C(v19, type metadata accessor for SignificantChangeEngine.Changepoint);
    (*(v17 + 56))(v39, 1, 1, v16);
    v38 = v22;
    return sub_1D158034C(v38, type metadata accessor for SignificantChangeEngine.Changepoint);
  }

  sub_1D1580248(v19, v40, type metadata accessor for SignificantChangeEngine.Changepoint);
  (*(v17 + 56))(v39, 0, 1, v16);
LABEL_7:
  v38 = v22;
  return sub_1D158034C(v38, type metadata accessor for SignificantChangeEngine.Changepoint);
}

BOOL sub_1D1573790(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1D148EF2C(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v28 - v10;
  v12 = type metadata accessor for SignificantChangeEngine.Changepoint(0);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v28 - v17;
  v19 = *(a3 + 128);
  sub_1D15808BC(a1, v11);
  v20 = *(v13 + 48);
  if (v20(v11, 1, v12) != 1)
  {
    sub_1D1580248(v11, v18, type metadata accessor for SignificantChangeEngine.Changepoint);
    sub_1D15808BC(a2, v8);
    if (v20(v8, 1, v12) == 1)
    {
      sub_1D158034C(v18, type metadata accessor for SignificantChangeEngine.Changepoint);
      v21 = sub_1D148EF2C;
      v22 = v8;
      goto LABEL_10;
    }

    sub_1D1580248(v8, v15, type metadata accessor for SignificantChangeEngine.Changepoint);
    v23 = *(v12 + 28);
    v24 = *&v18[v23];
    if ((*&v15[v23] & 0x8000000000000000) != 0)
    {
      if (v24 < 0)
      {
        goto LABEL_7;
      }
    }

    else if ((v24 & 0x8000000000000000) == 0)
    {
LABEL_7:
      sub_1D15A2588();
      v26 = fabs(v25);
      sub_1D158034C(v15, type metadata accessor for SignificantChangeEngine.Changepoint);
      sub_1D158034C(v18, type metadata accessor for SignificantChangeEngine.Changepoint);
      return v19 >= v26;
    }

    sub_1D158034C(v15, type metadata accessor for SignificantChangeEngine.Changepoint);
    v22 = v18;
    v21 = type metadata accessor for SignificantChangeEngine.Changepoint;
    goto LABEL_10;
  }

  v21 = sub_1D148EF2C;
  v22 = v11;
LABEL_10:
  sub_1D158034C(v22, v21);
  return 0;
}

uint64_t sub_1D1573A60(uint64_t a1, uint64_t a2)
{
  v3 = sub_1D15A26A8();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D151E0D0(0);
  v8 = v7 - 8;
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D158015C(a1, v10, sub_1D151E0D0);
  v11 = *(v8 + 56);
  sub_1D15A2288();
  v12 = sub_1D15A22A8();
  (*(*(v12 - 8) + 8))(v10, v12);
  LOBYTE(a1) = sub_1D15A2658();
  (*(v4 + 8))(v6, v3);
  sub_1D158034C(&v10[v11], sub_1D148EF2C);
  return a1 & 1;
}

uint64_t sub_1D1573C18(uint64_t a1, uint64_t a2)
{
  v78 = sub_1D15A26A8();
  v4 = *(v78 - 8);
  MEMORY[0x1EEE9AC00](v78);
  v75 = &v63 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v74 = &v63 - v7;
  sub_1D148EF60(0);
  v77 = v8;
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v76 = &v63 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D15837D4(0);
  v73 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v72 = &v63 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v71 = &v63 - v14;
  sub_1D1491C64(0);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v63 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1D15A22A8();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v63 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D158015C(a1, v17, sub_1D1491C64);
  if ((*(v19 + 48))(v17, 1, v18) != 1)
  {
    (*(v19 + 32))(v21, v17, v18);
    v23 = *(a2 + 16);
    if (v23)
    {
      v69 = v21;
      v70 = v18;
      v81 = MEMORY[0x1E69E7CC0];
      sub_1D14A7A34(0, v23, 0);
      v24 = 0;
      v25 = v81;
      v26 = a2 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
      v67 = *(v9 + 72);
      v64 = v19;
      v65 = v4 + 8;
      v66 = (v19 + 16);
      v68 = v23;
      v27 = v72;
      v28 = (v4 + 8);
      do
      {
        v79 = v24;
        v80 = v25;
        v29 = v73;
        v30 = *(v73 + 48);
        v31 = v71;
        sub_1D158015C(v26, &v71[v30], sub_1D148EF60);
        *v27 = v24;
        v32 = v27 + *(v29 + 48);
        sub_1D1580248(&v31[v30], v32, sub_1D148EF60);
        v33 = v76;
        v34 = v77;
        v35 = v32 + *(v77 + 48);
        v36 = *v35;
        v37 = *(v35 + 8);
        (*v66)(v76, v32, v70);
        v38 = v33 + *(v34 + 48);
        *v38 = v36;
        *(v38 + 8) = v37;
        v39 = v74;
        sub_1D15A2288();
        sub_1D15A2548();
        v41 = v40;
        v42 = *v28;
        v43 = v78;
        (*v28)(v39, v78);
        v44 = v75;
        sub_1D15A2288();
        sub_1D15A2548();
        v46 = v45;
        v42(v44, v43);
        sub_1D15A2258();
        sub_1D15A2548();
        v48 = v47;
        v42(v39, v43);
        sub_1D15A2258();
        sub_1D15A2548();
        v50 = v49;
        v42(v44, v43);
        sub_1D158034C(v33, sub_1D148EF60);
        sub_1D158034C(v27, sub_1D15837D4);
        v25 = v80;
        v81 = v80;
        v52 = *(v80 + 16);
        v51 = *(v80 + 24);
        v53 = v52 + 1;
        if (v52 >= v51 >> 1)
        {
          sub_1D14A7A34((v51 > 1), v52 + 1, 1);
          v25 = v81;
        }

        v54 = v25 + 16 * v52;
        v55 = v79;
        *(v54 + 32) = v79;
        *(v25 + 16) = v53;
        *(v54 + 40) = vabdd_f64(v41, v46) + vabdd_f64(v48, v50);
        v26 += v67;
        v24 = v55 + 1;
      }

      while (v68 != v55 + 1);
      v21 = v69;
      v18 = v70;
      v19 = v64;
    }

    else
    {
      v25 = MEMORY[0x1E69E7CC0];
      v53 = *(MEMORY[0x1E69E7CC0] + 16);
      if (!v53)
      {
        v22 = 0;
LABEL_15:

        (*(v19 + 8))(v21, v18);
        return v22;
      }
    }

    v22 = *(v25 + 32);
    v56 = v53 - 1;
    if (v53 != 1)
    {
      v57 = *(v25 + 40);
      v58 = (v25 + 56);
      do
      {
        v59 = *(v58 - 1);
        v60 = *v58;
        v58 += 2;
        v61 = v60;
        if (v60 <= v57)
        {
          v22 = v59;
          v57 = v61;
        }

        --v56;
      }

      while (v56);
    }

    goto LABEL_15;
  }

  sub_1D158034C(v17, sub_1D1491C64);
  return 0;
}

void sub_1D1574250(uint64_t (*a1)(uint64_t a1)@<X1>, char **a2@<X2>, uint64_t a3@<X8>)
{
  v730 = a2;
  v734 = a1;
  v727 = a3;
  sub_1D1583510(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v628 = (&v604 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v680 = sub_1D15A26D8();
  v679 = *(v680 - 8);
  MEMORY[0x1EEE9AC00](v680);
  v678 = &v604 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v682 = type metadata accessor for SignificantChange.Notification(0);
  v683 = *(v682 - 8);
  MEMORY[0x1EEE9AC00](v682);
  v677 = &v604 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v668 = &v604 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v634 = &v604 - v11;
  v681 = type metadata accessor for SignificantChange.Period(0);
  v684 = *(v681 - 8);
  MEMORY[0x1EEE9AC00](v681);
  v629 = &v604 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v686 = &v604 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v685 = &v604 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v663 = &v604 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v662 = &v604 - v20;
  sub_1D15807FC(0);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v659 = &v604 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v652 = &v604 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v653 = &v604 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v636 = &v604 - v28;
  MEMORY[0x1EEE9AC00](v29);
  v627 = &v604 - v30;
  sub_1D15800F0(0);
  MEMORY[0x1EEE9AC00](v31 - 8);
  v676 = &v604 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v675 = &v604 - v34;
  MEMORY[0x1EEE9AC00](v35);
  v688 = &v604 - v36;
  MEMORY[0x1EEE9AC00](v37);
  v671 = &v604 - v38;
  MEMORY[0x1EEE9AC00](v39);
  v669 = &v604 - v40;
  MEMORY[0x1EEE9AC00](v41);
  v651 = &v604 - v42;
  MEMORY[0x1EEE9AC00](v43);
  v670 = &v604 - v44;
  MEMORY[0x1EEE9AC00](v45);
  v622 = &v604 - v46;
  MEMORY[0x1EEE9AC00](v47);
  v672 = &v604 - v48;
  MEMORY[0x1EEE9AC00](v49);
  v635 = &v604 - v50;
  MEMORY[0x1EEE9AC00](v51);
  v664 = &v604 - v52;
  MEMORY[0x1EEE9AC00](v53);
  v640 = &v604 - v54;
  MEMORY[0x1EEE9AC00](v55);
  v639 = &v604 - v56;
  MEMORY[0x1EEE9AC00](v57);
  v667 = &v604 - v58;
  v59 = type metadata accessor for SignificantChange(0);
  v60 = *(v59 - 8);
  MEMORY[0x1EEE9AC00](v59);
  v658 = &v604 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v62);
  v657 = &v604 - v63;
  MEMORY[0x1EEE9AC00](v64);
  v694 = &v604 - v65;
  MEMORY[0x1EEE9AC00](v66);
  v661 = &v604 - v67;
  MEMORY[0x1EEE9AC00](v68);
  v638 = &v604 - v69;
  MEMORY[0x1EEE9AC00](v70);
  v626 = &v604 - v71;
  sub_1D14F104C(0);
  MEMORY[0x1EEE9AC00](v72 - 8);
  v691 = &v604 - ((v73 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v74);
  v705 = &v604 - v75;
  MEMORY[0x1EEE9AC00](v76);
  v690 = &v604 - v77;
  v78 = sub_1D15A26A8();
  v696 = *(v78 - 8);
  MEMORY[0x1EEE9AC00](v78);
  v698 = &v604 - ((v79 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v80);
  v707 = &v604 - v81;
  MEMORY[0x1EEE9AC00](v82);
  v733 = &v604 - v83;
  MEMORY[0x1EEE9AC00](v84);
  v701 = &v604 - v85;
  MEMORY[0x1EEE9AC00](v86);
  v721 = &v604 - v87;
  sub_1D1580868(0);
  MEMORY[0x1EEE9AC00](v88 - 8);
  v674 = &v604 - ((v89 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v90);
  v687 = &v604 - v91;
  MEMORY[0x1EEE9AC00](v92);
  v649 = &v604 - v93;
  MEMORY[0x1EEE9AC00](v94);
  v650 = &v604 - v95;
  MEMORY[0x1EEE9AC00](v96);
  v660 = &v604 - v97;
  MEMORY[0x1EEE9AC00](v98);
  v637 = &v604 - v99;
  MEMORY[0x1EEE9AC00](v100);
  v666 = &v604 - v101;
  MEMORY[0x1EEE9AC00](v102);
  v702 = &v604 - v103;
  v712 = type metadata accessor for SignificantChangeEngine.State.FrequencyShift(0);
  v709 = *(v712 - 8);
  MEMORY[0x1EEE9AC00](v712);
  v645 = &v604 - ((v104 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v105);
  v646 = &v604 - v106;
  MEMORY[0x1EEE9AC00](v107);
  v632 = &v604 - v108;
  MEMORY[0x1EEE9AC00](v109);
  v728 = &v604 - v110;
  sub_1D15801C4(0);
  MEMORY[0x1EEE9AC00](v111 - 8);
  v655 = &v604 - ((v112 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v113);
  v654 = &v604 - v114;
  MEMORY[0x1EEE9AC00](v115);
  v656 = &v604 - v116;
  MEMORY[0x1EEE9AC00](v117);
  v643 = &v604 - v118;
  MEMORY[0x1EEE9AC00](v119);
  v641 = &v604 - v120;
  MEMORY[0x1EEE9AC00](v121);
  v647 = &v604 - v122;
  MEMORY[0x1EEE9AC00](v123);
  v644 = &v604 - v124;
  MEMORY[0x1EEE9AC00](v125);
  v642 = &v604 - v126;
  MEMORY[0x1EEE9AC00](v127);
  v648 = &v604 - v128;
  MEMORY[0x1EEE9AC00](v129);
  v631 = &v604 - v130;
  MEMORY[0x1EEE9AC00](v131);
  v630 = &v604 - v132;
  MEMORY[0x1EEE9AC00](v133);
  v633 = &v604 - v134;
  MEMORY[0x1EEE9AC00](v135);
  v715 = &v604 - v136;
  MEMORY[0x1EEE9AC00](v137);
  v624 = &v604 - v138;
  MEMORY[0x1EEE9AC00](v139);
  v623 = &v604 - v140;
  MEMORY[0x1EEE9AC00](v141);
  v625 = &v604 - v142;
  MEMORY[0x1EEE9AC00](v143);
  v718 = &v604 - v144;
  v723 = type metadata accessor for SignificantChangeEngine.State(0);
  v725 = *(v723 - 8);
  MEMORY[0x1EEE9AC00](v723);
  v714 = &v604 - ((v145 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v146);
  v713 = &v604 - v147;
  sub_1D148EF60(0);
  v724 = v148;
  v149 = *(v148 - 8);
  MEMORY[0x1EEE9AC00](v148);
  *&v722 = &v604 - ((v150 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v151);
  v711 = &v604 - v152;
  MEMORY[0x1EEE9AC00](v153);
  v689 = &v604 - v154;
  MEMORY[0x1EEE9AC00](v155);
  v732 = (&v604 - v156);
  MEMORY[0x1EEE9AC00](v157);
  v673 = &v604 - v158;
  MEMORY[0x1EEE9AC00](v159);
  v692 = &v604 - v160;
  MEMORY[0x1EEE9AC00](v161);
  v720 = (&v604 - v162);
  MEMORY[0x1EEE9AC00](v163);
  v665 = &v604 - v164;
  MEMORY[0x1EEE9AC00](v165);
  v695 = &v604 - v166;
  MEMORY[0x1EEE9AC00](v167);
  v700 = &v604 - v168;
  MEMORY[0x1EEE9AC00](v169);
  v729 = &v604 - v170;
  MEMORY[0x1EEE9AC00](v171);
  v710 = &v604 - v172;
  MEMORY[0x1EEE9AC00](v173);
  v621 = &v604 - v174;
  MEMORY[0x1EEE9AC00](v175);
  v693 = &v604 - v176;
  MEMORY[0x1EEE9AC00](v177);
  v704 = &v604 - v178;
  MEMORY[0x1EEE9AC00](v179);
  v719 = &v604 - v180;
  MEMORY[0x1EEE9AC00](v181);
  v726 = (&v604 - v182);
  MEMORY[0x1EEE9AC00](v183);
  v185 = &v604 - v184;
  v186 = sub_1D15A22A8();
  v187 = *(v186 - 8);
  MEMORY[0x1EEE9AC00](v186);
  MEMORY[0x1EEE9AC00](v188);
  MEMORY[0x1EEE9AC00](&v604 - v189);
  MEMORY[0x1EEE9AC00](v190);
  MEMORY[0x1EEE9AC00](v191);
  MEMORY[0x1EEE9AC00](v192);
  MEMORY[0x1EEE9AC00](v193);
  MEMORY[0x1EEE9AC00](v194);
  MEMORY[0x1EEE9AC00](v195);
  MEMORY[0x1EEE9AC00](v196);
  v198 = &v604 - v197;
  v211 = MEMORY[0x1EEE9AC00](v199);
  v213 = &v604 - v212;
  v214 = *(v209 + 16);
  if (!v214)
  {
    v230 = *(v60 + 56);
    v231 = v727;
    v230(v727, 1, 1, v59, v211);
    v232 = type metadata accessor for SignificantChangeEngine.Output(0);
    v233.n128_f64[0] = (v230)(v231 + *(v232 + 20), 1, 1, v59);
    sub_1D1580144(v730, v231 + *(v232 + 24), v233);
    v234 = *(*(v232 - 8) + 56);

    v234(v231, 0, 1, v232);
    return;
  }

  v611 = v206;
  v607 = v205;
  v612 = v204;
  v613 = v203;
  v614 = v202;
  v608 = v201;
  v609 = v200;
  v610 = v210;
  v735 = v78;
  v699 = v59;
  v697 = v60;
  v215 = *v734;
  v716 = *(v734 + 24);
  v620 = *(v734 + 8);
  v619 = *(v734 + 5);
  v216 = *(v734 + 6);
  v731 = (*(v149 + 80) + 32) & ~*(v149 + 80);
  v217 = v209 + v731;
  v717 = v208;
  v708 = v209;
  v218 = v207;
  sub_1D158015C(v209 + v731, v185, sub_1D148EF60);
  v703 = v187;
  v219 = *(v187 + 32);
  v219(v198, v185, v218);
  v706 = v213;
  v219(v213, v198, v218);
  v734 = v214;
  v220 = v214 - 1;
  v221 = *(v149 + 72);
  v222 = v717;
  v223 = v726;
  sub_1D158015C(v217 + v221 * v220, v726, sub_1D148EF60);
  v617 = v187 + 32;
  v616 = v219;
  v224.n128_f64[0] = (v219)(v222, v223, v218);
  v225 = v718;
  sub_1D1580144(v730, v718, v224);
  v226 = v725 + 48;
  v227 = v723;
  v615 = *(v725 + 48);
  if (v615(v225, 1, v723) == 1)
  {
    sub_1D158034C(v225, sub_1D15801C4);
    v228 = v715;
    sub_1D1579728(v708, v716, v715, v216);
    v229 = *(v703 + 8);
    v229(v222, v218);
LABEL_9:
    v229(v706, v218);
    v241 = *(v697 + 56);
    v242 = v727;
    v243 = v699;
    v241(v727, 1, 1, v699);
    v244 = type metadata accessor for SignificantChangeEngine.Output(0);
    v241(v242 + *(v244 + 20), 1, 1, v243);
    v245 = sub_1D1580230(v228, v242 + *(v244 + 24));
    (*(*(v244 - 8) + 56))(v242, 0, 1, v244, v245);
    return;
  }

  v605 = v220;
  v235 = v713;
  sub_1D1580248(v225, v713, type metadata accessor for SignificantChangeEngine.State);
  v736 = v215;
  v738 = v716;
  v737 = v620;
  v739 = v619;
  v740 = v216;
  v236 = v714;
  v237 = v708;
  sub_1D157A314(&v736, v235, v714);
  v238 = v702;
  sub_1D1580850(v235 + *(v227 + 24), v702);
  v239 = *(v709 + 48);
  v240 = v712;
  v718 = v709 + 48;
  *&v620 = v239;
  if (v239(v238, 1, v712) == 1)
  {
    sub_1D158034C(v238, sub_1D1580868);
    v228 = v715;
    sub_1D1579728(v237, v716, v715, v216);
    sub_1D158034C(v236, type metadata accessor for SignificantChangeEngine.State);
    sub_1D158034C(v235, type metadata accessor for SignificantChangeEngine.State);
    v229 = *(v703 + 8);
    v229(v717, v218);
    goto LABEL_9;
  }

  v246 = v728;
  sub_1D1580248(v238, v728, type metadata accessor for SignificantChangeEngine.State.FrequencyShift);
  v247 = *(v246 + *(v240 + 20));
  v248 = v696;
  v249 = v696 + 48;
  v250 = v735;
  v618 = v218;
  v604 = v226;
  if (v247)
  {
    v251 = v691;
    sub_1D1455A40(v246, v691);
    v252 = *v249;
    if ((*v249)(v251, 1, v250) == 1)
    {
      sub_1D15A2288();
      v253 = v252(v251, 1, v250);
      v254 = v733;
      v255 = v720;
      if (v253 != 1)
      {
        sub_1D158034C(v251, sub_1D14F104C);
      }
    }

    else
    {
      (*(v248 + 32))(v698, v251, v250);
      v254 = v733;
      v255 = v720;
    }

    v262 = 0;
    v730 = (v248 + 8);
    *&v263 = MEMORY[0x1E69E7CC0];
    v264 = v698;
    do
    {
      v265 = (v262 + 1);
      if (__OFADD__(v262, 1))
      {
        __break(1u);
LABEL_160:
        sub_1D1580248(v265, v246, type metadata accessor for SignificantChange.Notification);
        goto LABEL_138;
      }

      sub_1D158015C(v217, v255, sub_1D148EF60);
      v249 = v255;
      sub_1D15A2288();
      sub_1D1580304(&qword_1EE05B518, MEMORY[0x1E6969530], MEMORY[0x1E6969548]);
      v266 = v735;
      v246 = sub_1D15A3EB8();
      v729 = *v730;
      (v729)(v254, v266);
      if (v246)
      {
        sub_1D1580248(v249, v732, sub_1D148EF60);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v736 = *&v263;
        if (isUniquelyReferenced_nonNull_native)
        {
          v255 = v249;
        }

        else
        {
          sub_1D14A7A54(0, *(v263 + 16) + 1, 1);
          v255 = v720;
          *&v263 = v736;
        }

        v249 = *(v263 + 16);
        v268 = *(v263 + 24);
        if (v249 >= v268 >> 1)
        {
          sub_1D14A7A54((v268 > 1), v249 + 1, 1);
          v255 = v720;
          *&v263 = v736;
        }

        *(v263 + 16) = v249 + 1;
        sub_1D1580248(v732, v263 + v731 + v249 * v221, sub_1D148EF60);
        v254 = v733;
      }

      else
      {
        sub_1D158034C(v249, sub_1D148EF60);
        v255 = v249;
      }

      ++v262;
      v217 += v221;
    }

    while (v265 != v734);
    v269 = *(v263 + 16);
    v270 = v724;
    v271 = v689;
    if (v269)
    {
      v272 = 0;
      v273 = v263 + v731;
      v274 = v263 + v731;
      while (1)
      {
        if (v272 >= *(v263 + 16))
        {
          __break(1u);
LABEL_162:
          __break(1u);
          goto LABEL_163;
        }

        sub_1D158015C(v274, v271, sub_1D148EF60);
        if (*(v271 + 8 + *(v270 + 48)) != 1)
        {
          break;
        }

        ++v272;
        sub_1D158034C(v271, sub_1D148EF60);
        v274 += v221;
        if (v269 == v272)
        {
          goto LABEL_34;
        }
      }

      v326 = v673;
      sub_1D1580248(v271, v673, sub_1D148EF60);
      sub_1D1580248(v326, v692, sub_1D148EF60);
      v327 = 0;
      v328 = v711;
      v329 = v711 + 8;
      v330 = MEMORY[0x1E69E7CC0];
      do
      {
        if (v327 >= *(v263 + 16))
        {
          goto LABEL_162;
        }

        sub_1D158015C(v273, v328, sub_1D148EF60);
        if (v329[*(v270 + 48)])
        {
          sub_1D158034C(v328, sub_1D148EF60);
        }

        else
        {
          sub_1D1580248(v328, *&v722, sub_1D148EF60);
          v331 = swift_isUniquelyReferenced_nonNull_native();
          v736 = v330;
          if ((v331 & 1) == 0)
          {
            sub_1D14A7A54(0, *(*&v330 + 16) + 1, 1);
            v330 = v736;
          }

          v333 = *(*&v330 + 16);
          v332 = *(*&v330 + 24);
          if (v333 >= v332 >> 1)
          {
            sub_1D14A7A54((v332 > 1), v333 + 1, 1);
            v330 = v736;
          }

          *(*&v330 + 16) = v333 + 1;
          sub_1D1580248(*&v722, *&v330 + v731 + v333 * v221, sub_1D148EF60);
          v270 = v724;
          v328 = v711;
        }

        ++v327;
        v273 += v221;
      }

      while (v269 != v327);
      v334 = *(*&v330 + 16);

      v732 = v334;
      MEMORY[0x1EEE9AC00](v335);
      v336 = v692;
      *(&v604 - 2) = v692;
      sub_1D1565874(sub_1D158371C, (&v604 - 4), v263);
      v338 = *(v337 + 16);

      (*(v696 + 16))(v733, v698, v735);
      v339 = v726;
      sub_1D158015C(v336, v726, sub_1D148EF60);
      sub_1D15A2288();
      v340 = v703 + 8;
      v341 = *(v703 + 8);
      v342 = v618;
      (v341)(v339, v618);
      v343 = v685;
      sub_1D15A2268();
      v344 = v681;
      *(v343 + *(v681 + 20)) = 0;
      *(v343 + v344[6]) = 0;
      *(v343 + v344[7]) = 2;
      sub_1D158015C(v336, v339, sub_1D148EF60);
      sub_1D15A2288();
      v703 = v340;
      v734 = v341;
      (v341)(v339, v342);
      sub_1D15A2258();
      v345 = v686;
      sub_1D15A2268();
      *(v345 + v344[5]) = 0;
      *(v345 + v344[6]) = v334 / v338;
      *(v345 + v344[7]) = 0;
      v346 = *(v712 + 24);
      v347 = v672;
      sub_1D15800D8(v728 + v346, v672, v348);
      v249 = v697;
      v349 = *(v697 + 48);
      v262 = v699;
      if (v349(v347, 1, v699) == 1)
      {
        sub_1D158034C(v347, sub_1D15800F0);
        goto LABEL_137;
      }

      v401 = *(v347 + *(v262 + 20));

      sub_1D158034C(v347, type metadata accessor for SignificantChange);
      if (!*(v401 + 16))
      {

        goto LABEL_137;
      }

      v402 = v629;
      sub_1D158015C(v401 + ((*(v684 + 80) + 32) & ~*(v684 + 80)), v629, type metadata accessor for SignificantChange.Period);

      v403 = *(v402 + v344[6]);
      sub_1D158034C(v402, type metadata accessor for SignificantChange.Period);
      if (v403 <= 0.0)
      {
LABEL_137:
        v264 = v682;
        v246 = v677;
        sub_1D15A2288();
        v513 = v678;
        sub_1D15A26C8();
        v514 = sub_1D15A26B8();
        v516 = v515;
        (*(v679 + 8))(v513, v680);
        _s19HealthVisualization25PresentationDateProvidingPAAE012presentationD010Foundation0D0VvgZ_0();
        *v246 = v514;
        *(v246 + 8) = v516;
        *(v246 + 16) = 0;
        goto LABEL_138;
      }

      v405 = v728 + v346;
      v406 = v622;
      sub_1D15800D8(v405, v622, v404);
      v407 = v349(v406, 1, v262);
      v246 = v677;
      if (v407 == 1)
      {
        sub_1D158034C(v406, sub_1D15800F0);
        v408 = v683;
        v264 = v682;
        (*(v683 + 56))(v628, 1, 1, v682);
      }

      else
      {
        v265 = v628;
        sub_1D158015C(v406 + *(v262 + 24), v628, sub_1D1583510);
        sub_1D158034C(v406, type metadata accessor for SignificantChange);
        v408 = v683;
        v264 = v682;
        if ((*(v683 + 48))(v265, 1, v682) != 1)
        {
          goto LABEL_160;
        }
      }

      sub_1D15A2288();
      v577 = v678;
      sub_1D15A26C8();
      v578 = sub_1D15A26B8();
      v580 = v579;
      v246 = v677;
      (*(v679 + 8))(v577, v680);
      _s19HealthVisualization25PresentationDateProvidingPAAE012presentationD010Foundation0D0VvgZ_0();
      *v246 = v578;
      *(v246 + 8) = v580;
      v581 = v628;
      *(v246 + 16) = 0;
      if ((*(v408 + 48))(v581, 1, v264) != 1)
      {
        sub_1D158034C(v581, sub_1D1583510);
      }

LABEL_138:
      if (*(v246 + 16) == 1)
      {
        v517 = v246;
        v518 = v668;
        sub_1D1580248(v517, v668, type metadata accessor for SignificantChange.Notification);
        v519 = v264;
      }

      else
      {
        v520 = *v246;
        v521 = *(v246 + 8);
        v522 = v246;
        v519 = v264;
        v523 = *(v696 + 32);
        v518 = v668;
        v524 = v735;
        v523(v668 + *(v264 + 6), v522 + *(v264 + 6), v735);
        v523(v518 + *(v519 + 7), v522 + *(v519 + 7), v524);
        *v518 = v520;
        *(v518 + 8) = v521;
        *(v518 + 16) = 1;
      }

      v525 = v685;
      v526 = v732;
      sub_1D158015C(v685, v694, type metadata accessor for SignificantChange.Period);
      sub_1D1583630(0);
      v527 = (*(v684 + 80) + 32) & ~*(v684 + 80);
      v528 = swift_allocObject();
      *(v528 + 16) = xmmword_1D15ACDD0;
      v529 = v528 + v527;
      v530 = v686;
      sub_1D158015C(v686, v529, type metadata accessor for SignificantChange.Period);
      v531 = *(v262 + 24);
      sub_1D158015C(v518, v694 + v531, type metadata accessor for SignificantChange.Notification);
      (*(v683 + 56))(v694 + v531, 0, 1, v519);
      *(v694 + *(v262 + 20)) = v528;
      v532 = v694;
      if (v526 < v716)
      {
        sub_1D158034C(v518, type metadata accessor for SignificantChange.Notification);
        sub_1D158034C(v530, type metadata accessor for SignificantChange.Period);
        sub_1D158034C(v525, type metadata accessor for SignificantChange.Period);
        sub_1D158034C(v713, type metadata accessor for SignificantChangeEngine.State);
        v533 = v618;
        (v734)(v706, v618);
        v534 = v728;
        v535 = v645;
        sub_1D1455A40(v728, v645);
        v536 = v712;
        v537 = *(v712 + 24);
        sub_1D158015C(v532, v535 + v537, type metadata accessor for SignificantChange);
        v538 = *(v249 + 56);
        v538(v535 + v537, 0, 1, v262);
        *(v535 + *(v536 + 20)) = 1;
        v538(v669, 1, 1, v262);
        v539 = v671;
        sub_1D1580248(v532, v671, type metadata accessor for SignificantChange);
        v538(v539, 0, 1, v262);
        v540 = v641;
        sub_1D1580248(v714, v641, type metadata accessor for SignificantChangeEngine.State);
        v541 = *(v725 + 56);
        v542 = v723;
        v541(v540, 0, 1, v723);
        v543 = v649;
        sub_1D1580248(v535, v649, type metadata accessor for SignificantChangeEngine.State.FrequencyShift);
        (*(v709 + 56))(v543, 0, 1, v536);
        v544 = v533;
        v545 = v616;
        v616(v609, v717, v544);
        v546 = v643;
        v547 = sub_1D1580230(v540, v643);
        if ((v615)(v546, 1, v542, v547) == 1)
        {
          sub_1D158034C(v546, sub_1D15801C4);
          v548 = type metadata accessor for SignificantChangeEngine.State.MeanShift(0);
          v549 = v652;
          (*(*(v548 - 8) + 56))(v652, 1, 1, v548);
        }

        else
        {
          v549 = v652;
          sub_1D15807E4(v546 + *(v542 + 20), v652);
          sub_1D158034C(v546, type metadata accessor for SignificantChangeEngine.State);
        }

        v569 = v647;
        sub_1D1580248(v543, &v647[*(v542 + 24)], sub_1D1580868);
        v545(v569, v609, v618);
        sub_1D1580248(v549, v569 + *(v542 + 20), sub_1D15807FC);
        v541(v569, 0, 1, v542);
        v570 = v727;
        sub_1D1580218(v669, v727);
        v571 = type metadata accessor for SignificantChangeEngine.Output(0);
        sub_1D1580218(v671, v570 + *(v571 + 20));
        v572 = sub_1D1580230(v569, v570 + *(v571 + 24));
        (*(*(v571 - 8) + 56))(v570, 0, 1, v571, v572);
        sub_1D158034C(v692, sub_1D148EF60);
        (v729)(v698, v735);
        sub_1D158034C(v534, type metadata accessor for SignificantChangeEngine.State.FrequencyShift);
        return;
      }

      v550 = v726;
      sub_1D158015C(v692, v726, sub_1D148EF60);
      v551 = v646;
      sub_1D15A2258();
      sub_1D158034C(v518, type metadata accessor for SignificantChange.Notification);
      sub_1D158034C(v530, type metadata accessor for SignificantChange.Period);
      sub_1D158034C(v525, type metadata accessor for SignificantChange.Period);
      sub_1D158034C(v713, type metadata accessor for SignificantChangeEngine.State);
      v552 = v618;
      v553 = v734;
      (v734)(v706, v618);
      (v553)(v550, v552);
      (*(v696 + 56))(v551, 0, 1, v735);
      v554 = v712;
      v555 = *(v712 + 24);
      sub_1D158015C(v532, v551 + v555, type metadata accessor for SignificantChange);
      v556 = *(v249 + 56);
      v556(v551 + v555, 0, 1, v262);
      *(v551 + *(v554 + 20)) = 0;
      v556(v670, 1, 1, v262);
      v557 = v651;
      sub_1D1580248(v532, v651, type metadata accessor for SignificantChange);
      v556(v557, 0, 1, v262);
      v558 = v642;
      sub_1D1580248(v714, v642, type metadata accessor for SignificantChangeEngine.State);
      v559 = *(v725 + 56);
      v560 = v723;
      v559(v558, 0, 1, v723);
      v561 = v650;
      sub_1D1580248(v551, v650, type metadata accessor for SignificantChangeEngine.State.FrequencyShift);
      (*(v709 + 56))(v561, 0, 1, v554);
      v562 = v616;
      v616(v610, v717, v552);
      v563 = v558;
      v564 = v644;
      v565 = sub_1D1580230(v563, v644);
      v566 = (v615)(v564, 1, v560, v565);
      v508 = v728;
      if (v566 == 1)
      {
        sub_1D158034C(v564, sub_1D15801C4);
        v567 = type metadata accessor for SignificantChangeEngine.State.MeanShift(0);
        v568 = v653;
        (*(*(v567 - 8) + 56))(v653, 1, 1, v567);
      }

      else
      {
        v568 = v653;
        sub_1D15807E4(v564 + *(v560 + 20), v653);
        sub_1D158034C(v564, type metadata accessor for SignificantChangeEngine.State);
      }

      v573 = v648;
      sub_1D1580248(v561, &v648[*(v560 + 24)], sub_1D1580868);
      v562(v573, v610, v618);
      sub_1D1580248(v568, v573 + *(v560 + 20), sub_1D15807FC);
      v559(v573, 0, 1, v560);
      v574 = v727;
      sub_1D1580218(v670, v727);
      v575 = type metadata accessor for SignificantChangeEngine.Output(0);
      sub_1D1580218(v557, v574 + *(v575 + 20));
      v576 = sub_1D1580230(v573, v574 + *(v575 + 24));
      (*(*(v575 - 8) + 56))(v574, 0, 1, v575, v576);
      sub_1D158034C(v692, sub_1D148EF60);
      (v729)(v698, v735);
      goto LABEL_150;
    }

LABEL_34:

    v275 = v714;
    v276 = v687;
    sub_1D1580850(v714 + *(v723 + 24), v687);
    v277 = v712;
    if ((v620)(v276, 1, v712) == 1)
    {
      sub_1D158034C(v276, sub_1D1580868);
      v279 = v697;
      v280 = v688;
      v281 = v699;
      (*(v697 + 56))(v688, 1, 1, v699);
      v282 = v725;
    }

    else
    {
      v280 = v688;
      sub_1D15800D8(v276 + *(v277 + 24), v688, v278);
      sub_1D158034C(v276, type metadata accessor for SignificantChangeEngine.State.FrequencyShift);
      v279 = v697;
      v281 = v699;
      v313 = (*(v697 + 48))(v280, 1, v699);
      v282 = v725;
      if (v313 != 1)
      {
        v734 = type metadata accessor for SignificantChange;
        v384 = v657;
        sub_1D1580248(v280, v657, type metadata accessor for SignificantChange);
        v385 = v733;
        sub_1D15A2258();
        v386 = v658;
        sub_1D157B418(v385, v658, 0.0, 0.0);
        (v729)(v385, v735);
        sub_1D158034C(v384, type metadata accessor for SignificantChange);
        sub_1D158034C(v713, type metadata accessor for SignificantChangeEngine.State);
        (*(v703 + 8))(v706, v618);
        v387 = *(v279 + 56);
        v387(v675, 1, 1, v281);
        v388 = v676;
        sub_1D158015C(v386, v676, type metadata accessor for SignificantChange);
        v387(v388, 0, 1, v281);
        v389 = v654;
        sub_1D1580248(v275, v654, type metadata accessor for SignificantChangeEngine.State);
        v390 = *(v282 + 56);
        v391 = v723;
        v725 = v282 + 56;
        v390(v389, 0, 1, v723);
        v392 = v390;
        v393 = v674;
        sub_1D1455A40(v728, v674);
        v394 = *(v277 + 24);
        sub_1D1580248(v386, v393 + v394, v734);
        v387(v393 + v394, 0, 1, v281);
        v395 = v618;
        *(v393 + *(v277 + 20)) = 1;
        (*(v709 + 56))(v393, 0, 1, v277);
        v396 = v616;
        v616(v611, v717, v395);
        v397 = v655;
        v398 = sub_1D1580230(v389, v655);
        if ((v615)(v397, 1, v391, v398) == 1)
        {
          sub_1D158034C(v397, sub_1D15801C4);
          v399 = type metadata accessor for SignificantChangeEngine.State.MeanShift(0);
          v400 = v659;
          (*(*(v399 - 8) + 56))(v659, 1, 1, v399);
        }

        else
        {
          v400 = v659;
          sub_1D15807E4(v397 + *(v391 + 20), v659);
          sub_1D158034C(v397, type metadata accessor for SignificantChangeEngine.State);
        }

        v496 = v656;
        sub_1D1580248(v674, &v656[*(v391 + 24)], sub_1D1580868);
        v396(v496, v611, v395);
        sub_1D1580248(v400, v496 + *(v391 + 20), sub_1D15807FC);
        v392(v496, 0, 1, v391);
        v497 = v727;
        sub_1D1580218(v675, v727);
        v498 = type metadata accessor for SignificantChangeEngine.Output(0);
        sub_1D1580218(v676, v497 + *(v498 + 20));
        sub_1D1580230(v496, v497 + *(v498 + 24));
        (*(*(v498 - 8) + 56))(v497, 0, 1, v498);
        goto LABEL_124;
      }
    }

    sub_1D158034C(v280, sub_1D15800F0);
    v314 = type metadata accessor for SignificantChangeEngine.Output(0);
    v315 = *(v314 + 24);
    v316 = v715;
    sub_1D158015C(v275, v715, type metadata accessor for SignificantChangeEngine.State);
    v317 = *(v282 + 56);
    v725 = v282 + 56;
    v318 = v723;
    v317(v316, 0, 1, v723);
    v319 = v275;
    v320 = v727;
    v321 = v717;
    sub_1D157BA28(v316, v717, v727 + v315);
    sub_1D158034C(v316, sub_1D15801C4);
    sub_1D158034C(v319, type metadata accessor for SignificantChangeEngine.State);
    sub_1D158034C(v713, type metadata accessor for SignificantChangeEngine.State);
    v322 = *(v703 + 8);
    v323 = v321;
    v324 = v618;
    v322(v323, v618);
    v322(v706, v324);
    v317(v320 + v315, 0, 1, v318);
    v325 = *(v279 + 56);
    v325(v320, 1, 1, v281);
    v325(v320 + *(v314 + 20), 1, 1, v281);
    (*(*(v314 - 8) + 56))(v320, 0, 1, v314);
LABEL_124:
    (v729)(v698, v735);
    goto LABEL_125;
  }

  v256 = v690;
  sub_1D1455A40(v246, v690);
  v257 = *v249;
  v258 = (*v249)(v256, 1, v250);
  v259 = v734;
  v730 = v249;
  v732 = v257;
  if (v258 == 1)
  {
    sub_1D15A2288();
    v260 = v257(v256, 1, v250);
    v261 = v719;
    if (v260 != 1)
    {
      sub_1D158034C(v256, sub_1D14F104C);
    }
  }

  else
  {
    (*(v248 + 32))(v721, v256, v250);
    v261 = v719;
  }

  v283 = 0;
  v284 = v221 * ~v259 - v731;
  v285 = -(v731 + v221 * v259);
  v286 = v731 + v221 * v605 + *(v724 + 48) + 8;
  v287 = v708;
  do
  {
    if (v259 == v283)
    {
      v306 = type metadata accessor for SignificantChangeEngine.Output(0);
      v307 = v248;
      v308 = v727;
      sub_1D1579728(v287, v716, v727 + *(v306 + 24), v216);
      sub_1D158034C(v714, type metadata accessor for SignificantChangeEngine.State);
      sub_1D158034C(v713, type metadata accessor for SignificantChangeEngine.State);
      v309 = *(v703 + 8);
      v310 = v618;
      v309(v717, v618);
      v309(v706, v310);
      v311 = *(v697 + 56);
      v312 = v699;
      v311(v308, 1, 1, v699);
      v311(v308 + *(v306 + 20), 1, 1, v312);
      (*(*(v306 - 8) + 56))(v308, 0, 1, v306);
      (*(v307 + 8))(v721, v735);
      goto LABEL_54;
    }

    v288 = *(v708 + v286);
    v283 = (v283 + 1);
    v284 += v221;
    v285 += v221;
    v286 -= v221;
  }

  while ((v288 & 1) != 0);
  if (v283 - 1 >= *(&v716 + 1))
  {
    v718 = v283 - 1;
    v719 = (v259 - v283 + 1);
    sub_1D158015C(v708 - v285, v710, sub_1D148EF60);
    v350 = 0;
    v732 = (v248 + 8);
    v720 = (v703 + 8);
    v722 = MEMORY[0x1E69E7CC0];
    v351 = v733;
    do
    {
      v353 = (v350 + 1);
      if (__OFADD__(v350, 1))
      {
LABEL_164:
        __break(1u);
LABEL_165:
        __break(1u);
        goto LABEL_166;
      }

      v354 = v729;
      sub_1D158015C(v217, v729, sub_1D148EF60);
      sub_1D15A2258();
      sub_1D1580304(&qword_1EE05B518, MEMORY[0x1E6969530], MEMORY[0x1E6969548]);
      v355 = v735;
      v356 = sub_1D15A3EB8();
      v730 = *v732;
      (v730)(v351, v355);
      if (v356 & 1) != 0 && (v357 = v733, sub_1D15A2258(), v358 = v726, sub_1D158015C(v710, v726, sub_1D148EF60), v359 = v707, sub_1D15A2258(), (*v720)(v358, v618), v360 = v735, LOBYTE(v358) = sub_1D15A3EC8(), v361 = v730, (v730)(v359, v360), (v361)(v357, v360), v354 = v729, (v358))
      {
        sub_1D1580248(v729, v700, sub_1D148EF60);
        *&v362 = v722;
        v363 = swift_isUniquelyReferenced_nonNull_native();
        v736 = *&v362;
        if ((v363 & 1) == 0)
        {
          sub_1D14A7A54(0, *(v362 + 16) + 1, 1);
          *&v362 = v736;
        }

        v365 = *(v362 + 16);
        v364 = *(v362 + 24);
        v352 = v734;
        if (v365 >= v364 >> 1)
        {
          sub_1D14A7A54((v364 > 1), v365 + 1, 1);
          *&v362 = v736;
        }

        *(v362 + 16) = v365 + 1;
        v722 = *&v362;
        sub_1D1580248(v700, v362 + v731 + v365 * v221, sub_1D148EF60);
      }

      else
      {
        sub_1D158034C(v354, sub_1D148EF60);
        v352 = v734;
      }

      ++v350;
      v217 += v221;
      v351 = v733;
    }

    while (v353 != v352);
    v373 = *&v722;
    v374 = *(*&v722 + 16);
    v375 = v665;
    if (v374)
    {
      v376 = 0;
      v377 = v695;
      v378 = v695 + 8;
      v379 = *&v722 + v731;
      v380 = MEMORY[0x1E69E7CC0];
      while (v376 < *(v373 + 16))
      {
        sub_1D158015C(v379, v377, sub_1D148EF60);
        if (v378[*(v724 + 48)])
        {
          sub_1D158034C(v377, sub_1D148EF60);
        }

        else
        {
          sub_1D1580248(v377, v375, sub_1D148EF60);
          v381 = swift_isUniquelyReferenced_nonNull_native();
          v736 = v380;
          if ((v381 & 1) == 0)
          {
            sub_1D14A7A54(0, *(*&v380 + 16) + 1, 1);
            v380 = v736;
          }

          v383 = *(*&v380 + 16);
          v382 = *(*&v380 + 24);
          if (v383 >= v382 >> 1)
          {
            sub_1D14A7A54((v382 > 1), v383 + 1, 1);
            v380 = v736;
          }

          *(*&v380 + 16) = v383 + 1;
          sub_1D1580248(v375, *&v380 + v731 + v383 * v221, sub_1D148EF60);
          v377 = v695;
          v373 = *&v722;
        }

        ++v376;
        v379 += v221;
        if (v374 == v376)
        {
          goto LABEL_103;
        }
      }

LABEL_166:
      __break(1u);
    }

    else
    {
      v380 = MEMORY[0x1E69E7CC0];
LABEL_103:
      v424 = *(*&v380 + 16);

      v425 = *(v373 + 16);

      sub_1D15A2288();
      v426 = v726;
      sub_1D158015C(v710, v726, sub_1D148EF60);
      sub_1D15A2258();
      v427 = *v720;
      v428 = v618;
      (*v720)(v426, v618);
      sub_1D15A2268();
      if (v719 < v734)
      {
        sub_1D158015C(v708 - v284, v426, sub_1D148EF60);
        v616(v613, v426, v428);
        sub_1D15A2288();
        sub_1D15A2258();
        sub_1D15A2268();
        v429 = v425 - v424;
        v430 = v425 - v424 + v718;
        v431 = v699;
        v432 = v703;
        if (!__OFADD__(v425 - v424, v718))
        {
          if (!__OFADD__(v429, v424))
          {
            v433 = v425 + v718;
            if (!__OFADD__(v430, v424))
            {
              if ((v429 & 0x8000000000000000) == 0)
              {
                if (!__OFSUB__(v433, v430))
                {
                  v434 = v424 - v425;
                  if (!__OFSUB__(v424, v425))
                  {
                    v435 = 0;
                    v436 = v430;
                    v437 = v424 / v425;
                    v438 = v433;
                    v439 = 0.0;
                    v440 = v727;
                    do
                    {
                      if (__OFADD__(v434, v435))
                      {
                        goto LABEL_165;
                      }

                      if (((v434 + v435) & 0x8000000000000000) == 0)
                      {
                        HypergeometricPDF(v435, v436, v425, v438);
                        v439 = v439 + v441;
                      }

                      if (v429 == v435)
                      {
                        goto LABEL_118;
                      }
                    }

                    while (!__OFADD__(v435++, 1));
                    __break(1u);
LABEL_118:
                    v734 = v427;
                    if (v439 > v215)
                    {
                      (*(v697 + 56))(v440, 1, 1, v431);
                      v443 = *(v712 + 24);
                      v444 = v440;
                      v445 = type metadata accessor for SignificantChangeEngine.Output(0);
                      sub_1D15800D8(v728 + v443, v444 + *(v445 + 20), v446);
                      v447 = *(v445 + 24);
                      v731 = v447;
                      v448 = v714;
                      v449 = v715;
                      sub_1D158015C(v714, v715, type metadata accessor for SignificantChangeEngine.State);
                      v733 = *(v725 + 56);
                      v450 = v723;
                      (v733)(v449, 0, 1, v723);
                      v451 = v717;
                      sub_1D157BA28(v449, v717, v444 + v447);
                      sub_1D158034C(v449, sub_1D15801C4);
                      v452 = v618;
                      v453 = v734;
                      (v734)(v612, v618);
                      (v453)(v613, v452);
                      (v453)(v614, v452);
                      sub_1D158034C(v448, type metadata accessor for SignificantChangeEngine.State);
                      sub_1D158034C(v713, type metadata accessor for SignificantChangeEngine.State);
                      (v453)(v451, v452);
                      (v453)(v706, v452);
                      (v733)(v444 + v731, 0, 1, v450);
                      (*(*(v445 - 8) + 56))(v444, 0, 1, v445);
                      sub_1D158034C(v710, sub_1D148EF60);
                      (v730)(v721, v735);
LABEL_125:
                      sub_1D158034C(v728, type metadata accessor for SignificantChangeEngine.State.FrequencyShift);
                      return;
                    }

                    v454 = *(v432 + 16);
                    v455 = v662;
                    v456 = v618;
                    v454(v662, v614, v618);
                    v457 = v681;
                    *(v455 + *(v681 + 20)) = 0;
                    *(v455 + v457[6]) = v437;
                    *(v455 + v457[7]) = 2;
                    v458 = v663;
                    v454(v663, v612, v456);
                    *(v458 + v457[5]) = 0;
                    *(v458 + v457[6]) = 0;
                    *(v458 + v457[7]) = 1;
                    v459 = v661;
                    sub_1D158015C(v455, v661, type metadata accessor for SignificantChange.Period);
                    sub_1D1583630(0);
                    v460 = (*(v684 + 80) + 32) & ~*(v684 + 80);
                    v461 = swift_allocObject();
                    v733 = v461;
                    *(v461 + 16) = xmmword_1D15ACDD0;
                    sub_1D158015C(v458, v461 + v460, type metadata accessor for SignificantChange.Period);
                    v462 = v459 + *(v431 + 24);
                    v463 = v682;
                    v464 = *(v682 + 28);
                    v465 = v634;
                    sub_1D15A2288();
                    v466 = v678;
                    sub_1D15A26C8();
                    v467 = sub_1D15A26B8();
                    v469 = v468;
                    (*(v679 + 8))(v466, v680);
                    v470 = *(v463 + 24);
                    _s19HealthVisualization25PresentationDateProvidingPAAE012presentationD010Foundation0D0VvgZ_0();
                    *v465 = v467;
                    *(v465 + 1) = v469;
                    v465[16] = 0;
                    v471 = v696;
                    v472 = *(v696 + 32);
                    v473 = &v465[v470];
                    v474 = v735;
                    v472(v462 + *(v463 + 24), v473, v735);
                    v472(v462 + *(v463 + 28), &v465[v464], v474);
                    *v462 = v467;
                    *(v462 + 8) = v469;
                    *(v462 + 16) = 1;
                    (*(v683 + 56))(v462, 0, 1, v463);
                    v475 = v699;
                    v476 = v661;
                    *(v661 + *(v699 + 20)) = v733;
                    v477 = v726;
                    sub_1D158015C(v710, v726, sub_1D148EF60);
                    v478 = v632;
                    sub_1D15A2258();
                    sub_1D158034C(v663, type metadata accessor for SignificantChange.Period);
                    sub_1D158034C(v662, type metadata accessor for SignificantChange.Period);
                    v479 = v618;
                    v480 = v734;
                    (v734)(v612, v618);
                    (v480)(v613, v479);
                    (v480)(v614, v479);
                    sub_1D158034C(v713, type metadata accessor for SignificantChangeEngine.State);
                    (v480)(v706, v479);
                    (v480)(v477, v479);
                    (*(v471 + 56))(v478, 0, 1, v474);
                    v481 = v712;
                    v482 = *(v712 + 24);
                    sub_1D158015C(v476, v478 + v482, type metadata accessor for SignificantChange);
                    v483 = *(v697 + 56);
                    v484 = v478 + v482;
                    v485 = v475;
                    v483(v484, 0, 1, v475);
                    *(v478 + *(v481 + 20)) = 1;
                    v483(v664, 1, 1, v475);
                    v486 = v635;
                    sub_1D1580248(v476, v635, type metadata accessor for SignificantChange);
                    v483(v486, 0, 1, v485);
                    v487 = v630;
                    sub_1D1580248(v714, v630, type metadata accessor for SignificantChangeEngine.State);
                    v488 = *(v725 + 56);
                    v489 = v723;
                    v488(v487, 0, 1, v723);
                    v490 = v660;
                    sub_1D1580248(v478, v660, type metadata accessor for SignificantChangeEngine.State.FrequencyShift);
                    (*(v709 + 56))(v490, 0, 1, v481);
                    v491 = v616;
                    v616(v608, v717, v479);
                    v492 = v631;
                    v493 = sub_1D1580230(v487, v631);
                    if ((v615)(v492, 1, v489, v493) == 1)
                    {
                      sub_1D158034C(v492, sub_1D15801C4);
                      v494 = type metadata accessor for SignificantChangeEngine.State.MeanShift(0);
                      v495 = v636;
                      (*(*(v494 - 8) + 56))(v636, 1, 1, v494);
                    }

                    else
                    {
                      v495 = v636;
                      sub_1D15807E4(v492 + *(v489 + 20), v636);
                      sub_1D158034C(v492, type metadata accessor for SignificantChangeEngine.State);
                    }

                    v508 = v728;
                    v509 = v633;
                    sub_1D1580248(v660, &v633[*(v489 + 24)], sub_1D1580868);
                    v491(v509, v608, v618);
                    sub_1D1580248(v495, v509 + *(v489 + 20), sub_1D15807FC);
                    v488(v509, 0, 1, v489);
                    v510 = v727;
                    sub_1D1580218(v664, v727);
                    v511 = type metadata accessor for SignificantChangeEngine.Output(0);
                    sub_1D1580218(v486, v510 + *(v511 + 20));
                    v512 = sub_1D1580230(v509, v510 + *(v511 + 24));
                    (*(*(v511 - 8) + 56))(v510, 0, 1, v511, v512);
                    sub_1D158034C(v710, sub_1D148EF60);
                    (v730)(v721, v735);
LABEL_150:
                    sub_1D158034C(v508, type metadata accessor for SignificantChangeEngine.State.FrequencyShift);
                    return;
                  }

LABEL_173:
                  __break(1u);
                  return;
                }

LABEL_172:
                __break(1u);
                goto LABEL_173;
              }

LABEL_171:
              __break(1u);
              goto LABEL_172;
            }

LABEL_170:
            __break(1u);
            goto LABEL_171;
          }

LABEL_169:
          __break(1u);
          goto LABEL_170;
        }

LABEL_168:
        __break(1u);
        goto LABEL_169;
      }
    }

    __break(1u);
    goto LABEL_168;
  }

  v289 = 0;
  v726 = (v248 + 32);
  v729 = (v248 + 8);
  v290 = MEMORY[0x1E69E7CC0];
  v291 = v705;
  v292 = v704;
  v606 = v221;
  do
  {
    v294 = (v289 + 1);
    if (__OFADD__(v289, 1))
    {
LABEL_163:
      __break(1u);
      goto LABEL_164;
    }

    v295 = v290;
    sub_1D158015C(v217, v261, sub_1D148EF60);
    sub_1D1455A40(v246, v291);
    v296 = v735;
    if (v732(v291, 1, v735) == 1)
    {
      sub_1D158034C(v291, sub_1D14F104C);
    }

    else
    {
      v297 = v701;
      (*v726)(v701, v291, v296);
      v298 = v733;
      sub_1D15A2258();
      sub_1D1580304(&qword_1EE05B518, MEMORY[0x1E6969530], MEMORY[0x1E6969548]);
      v299 = sub_1D15A3EB8();
      v300 = *v729;
      v301 = v298;
      v291 = v705;
      (*v729)(v301, v296);
      v302 = v297;
      v261 = v719;
      (v300)(v302, v296);
      v292 = v704;
      if ((v299 & 1) == 0)
      {
        sub_1D158034C(v261, sub_1D148EF60);
        v246 = v728;
        v290 = v295;
        v293 = v606;
        goto LABEL_43;
      }
    }

    sub_1D1580248(v261, v292, sub_1D148EF60);
    v290 = v295;
    v303 = swift_isUniquelyReferenced_nonNull_native();
    v736 = v295;
    if ((v303 & 1) == 0)
    {
      sub_1D14A7A54(0, *(*&v295 + 16) + 1, 1);
      v290 = v736;
    }

    v293 = v606;
    v305 = *(*&v290 + 16);
    v304 = *(*&v290 + 24);
    if (v305 >= v304 >> 1)
    {
      sub_1D14A7A54((v304 > 1), v305 + 1, 1);
      v290 = v736;
    }

    *(*&v290 + 16) = v305 + 1;
    sub_1D1580248(v292, *&v290 + v731 + v305 * v293, sub_1D148EF60);
    v246 = v728;
LABEL_43:
    ++v289;
    v217 += v293;
  }

  while (v294 != v734);
  v366 = v290;
  v367 = v666;
  sub_1D1580850(v714 + *(v723 + 24), v666);
  v368 = v712;
  if ((v620)(v367, 1, v712) == 1)
  {

    sub_1D158034C(v367, sub_1D1580868);
    v370 = v697;
    v371 = v667;
    (*(v697 + 56))(v667, 1, 1, v699);
    v372 = v725;
LABEL_101:
    sub_1D158034C(v371, sub_1D15800F0);
    v411 = type metadata accessor for SignificantChangeEngine.Output(0);
    v412 = *(v411 + 24);
    v413 = v714;
    v414 = v715;
    sub_1D158015C(v714, v715, type metadata accessor for SignificantChangeEngine.State);
    v415 = *(v372 + 56);
    v416 = v723;
    v415(v414, 0, 1, v723);
    v417 = v727;
    v418 = v717;
    sub_1D157BA28(v414, v717, v727 + v412);
    sub_1D158034C(v414, sub_1D15801C4);
    sub_1D158034C(v413, type metadata accessor for SignificantChangeEngine.State);
    sub_1D158034C(v713, type metadata accessor for SignificantChangeEngine.State);
    v419 = *(v703 + 8);
    v420 = v418;
    v421 = v618;
    v419(v420, v618);
    v419(v706, v421);
    v415(v417 + v412, 0, 1, v416);
    v422 = *(v370 + 56);
    v423 = v699;
    v422(v417, 1, 1, v699);
    v422(v417 + *(v411 + 20), 1, 1, v423);
    (*(*(v411 - 8) + 56))(v417, 0, 1, v411);
    (*v729)(v721, v735);
    goto LABEL_125;
  }

  v409 = v367 + *(v368 + 24);
  v371 = v667;
  sub_1D15800D8(v409, v667, v369);
  sub_1D158034C(v367, type metadata accessor for SignificantChangeEngine.State.FrequencyShift);
  v410 = (*(v697 + 48))(v371, 1, v699);
  v372 = v725;
  if (v410 == 1)
  {

    v370 = v697;
    goto LABEL_101;
  }

  v499 = v626;
  sub_1D1580248(v371, v626, type metadata accessor for SignificantChange);
  v500 = *(*&v366 + 16);
  if (v500)
  {
    v501 = *&v366 + v731;
    v502 = MEMORY[0x1E69E7CC0];
    v503 = v703;
    v504 = v621;
    do
    {
      v505 = v693;
      sub_1D158015C(v501, v693, sub_1D148EF60);
      sub_1D1580248(v505, v504, sub_1D148EF60);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v502 = sub_1D148CB54(0, v502[2] + 1, 1, v502);
      }

      v507 = v502[2];
      v506 = v502[3];
      if (v507 >= v506 >> 1)
      {
        v502 = sub_1D148CB54((v506 > 1), v507 + 1, 1, v502);
      }

      v502[2] = v507 + 1;
      sub_1D1580248(v504, v502 + v731 + v507 * v293, sub_1D148EF60);
      v501 += v293;
      --v500;
      v246 = v728;
      v372 = v725;
    }

    while (v500);
  }

  else
  {
    v502 = MEMORY[0x1E69E7CC0];
    v503 = v703;
  }

  v582 = v502[2];

  v583 = *(*&v366 + 16);

  v584 = v733;
  sub_1D15A2258();
  v585 = v638;
  sub_1D157B418(v584, v638, 0.0, v582 / v583);
  v734 = *v729;
  (v734)(v584, v735);
  sub_1D158034C(v499, type metadata accessor for SignificantChange);
  sub_1D158034C(v713, type metadata accessor for SignificantChangeEngine.State);
  (*(v503 + 8))(v706, v618);
  v586 = *(v697 + 56);
  v587 = v699;
  v586(v639, 1, 1, v699);
  v588 = v640;
  sub_1D158015C(v585, v640, type metadata accessor for SignificantChange);
  v586(v588, 0, 1, v587);
  v589 = v623;
  sub_1D1580248(v714, v623, type metadata accessor for SignificantChangeEngine.State);
  v590 = v723;
  v733 = *(v372 + 56);
  (v733)(v589, 0, 1, v723);
  v591 = v637;
  sub_1D1455A40(v246, v637);
  v592 = v712;
  v593 = *(v712 + 24);
  sub_1D1580248(v638, v591 + v593, type metadata accessor for SignificantChange);
  v586(v591 + v593, 0, 1, v587);
  *(v591 + *(v592 + 20)) = 0;
  (*(v709 + 56))(v591, 0, 1, v592);
  v594 = v616;
  v616(v607, v717, v618);
  v595 = v624;
  v596 = sub_1D1580230(v589, v624);
  if ((v615)(v595, 1, v590, v596) == 1)
  {
    sub_1D158034C(v595, sub_1D15801C4);
    v597 = type metadata accessor for SignificantChangeEngine.State.MeanShift(0);
    v598 = v627;
    (*(*(v597 - 8) + 56))(v627, 1, 1, v597);
  }

  else
  {
    v598 = v627;
    sub_1D15807E4(v595 + *(v590 + 20), v627);
    sub_1D158034C(v595, type metadata accessor for SignificantChangeEngine.State);
  }

  v599 = v721;
  v600 = v625;
  sub_1D1580248(v637, &v625[*(v590 + 24)], sub_1D1580868);
  v594(v600, v607, v618);
  sub_1D1580248(v598, v600 + *(v590 + 20), sub_1D15807FC);
  (v733)(v600, 0, 1, v590);
  v601 = v727;
  sub_1D1580218(v639, v727);
  v602 = type metadata accessor for SignificantChangeEngine.Output(0);
  sub_1D1580218(v640, v601 + *(v602 + 20));
  v603 = sub_1D1580230(v600, v601 + *(v602 + 24));
  (*(*(v602 - 8) + 56))(v601, 0, 1, v602, v603);
  (v734)(v599, v735);
LABEL_54:
  sub_1D158034C(v246, type metadata accessor for SignificantChangeEngine.State.FrequencyShift);
}

uint64_t sub_1D1579728@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  v123 = a2;
  v7 = sub_1D15A26A8();
  v135 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v122 = &v121 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v121 - v10;
  sub_1D148EF60(0);
  v136 = v12;
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v121 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v121 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v124 = &v121 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v130 = &v121 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v137 = &v121 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v138 = &v121 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v121 - v28;
  v30 = sub_1D15A22A8();
  MEMORY[0x1EEE9AC00](v30);
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v121 - v32;
  MEMORY[0x1EEE9AC00](v34);
  v39 = &v121 - v38;
  v40 = a1;
  v41 = *(a1 + 16);
  if (v41)
  {
    v132 = v11;
    v133 = v7;
    v134 = a3;
    v131 = v13;
    v128 = (*(v13 + 80) + 32) & ~*(v13 + 80);
    v129 = v40;
    v42 = v40 + v128;
    v127 = sub_1D148EF60;
    v139 = v36;
    v43 = v35;
    v44 = v29;
    v45 = v37;
    sub_1D158015C(v40 + v128, v29, sub_1D148EF60);
    v125 = v45;
    v46 = *(v45 + 32);
    v46(v33, v44, v43);
    v126 = v39;
    v46(v39, v33, v43);
    v47 = *(v131 + 72);
    v48 = v47 * (v41 - 1);
    v49 = v138;
    sub_1D158015C(v42 + v48, v138, v127);
    v131 = v43;
    v46(v139, v49, v43);
    v50 = v136;
    v51 = v129 + v128 + v47 * v41;
    v52 = (v128 + *(v136 + 48) + v129 + v48 + 8);
    v53 = v41 + 1;
    do
    {
      if (!--v53)
      {
LABEL_9:
        v57 = v125;
        v58 = v134;
        v59 = v139;
        v60 = v131;
        (*(v125 + 16))(v134, v139, v131);
        v61 = type metadata accessor for SignificantChangeEngine.State(0);
        v62 = *(v61 + 20);
        v63 = type metadata accessor for SignificantChangeEngine.State.MeanShift(0);
        (*(*(v63 - 8) + 56))(v58 + v62, 1, 1, v63);
        v64 = v58 + *(v61 + 24);
        v65 = v132;
        v66 = v126;
        sub_1D15A2288();
        v67 = *(v57 + 8);
        v67(v59, v60);
        v67(v66, v60);
        v68 = v135;
        v69 = v133;
        (*(v135 + 32))(v64, v65, v133);
        (*(v68 + 56))(v64, 0, 1, v69);
        v70 = type metadata accessor for SignificantChangeEngine.State.FrequencyShift(0);
        v71 = *(v70 + 24);
        v72 = type metadata accessor for SignificantChange(0);
        (*(*(v72 - 8) + 56))(v64 + v71, 1, 1, v72);
        *(v64 + *(v70 + 20)) = 1;
        (*(*(v70 - 8) + 56))(v64, 0, 1, v70);
        return (*(*(v61 - 8) + 56))(v58, 0, 1, v61);
      }

      v51 -= v47;
      v54 = *v52;
      v52 -= v47;
    }

    while ((v54 & 1) != 0);
    sub_1D158015C(v51, v137, sub_1D148EF60);
    v55 = v42;
    v56 = v41;
    while (1)
    {
      sub_1D158015C(v55, v18, sub_1D148EF60);
      if ((v18[*(v50 + 48) + 8] & 1) == 0)
      {
        break;
      }

      sub_1D158034C(v18, sub_1D148EF60);
      v55 += v47;
      if (!--v56)
      {
        sub_1D158034C(v137, sub_1D148EF60);
        goto LABEL_9;
      }
    }

    v76 = v124;
    sub_1D1580248(v18, v124, sub_1D148EF60);
    sub_1D1580248(v76, v130, sub_1D148EF60);
    v77 = 0;
    v78 = &v15[*(v50 + 48)];
    v79 = v138;
    do
    {
      sub_1D158015C(v42, v15, sub_1D148EF60);
      v80 = v78[8];
      result = sub_1D158034C(v15, sub_1D148EF60);
      v81 = (v80 & 1) == 0;
      v82 = __OFADD__(v77, v81);
      v77 += v81;
      if (v82)
      {
        __break(1u);
        return result;
      }

      v42 += v47;
      --v41;
    }

    while (v41);
    v83 = v132;
    v84 = v139;
    sub_1D15A2258();
    sub_1D15A2548();
    v86 = v85;
    v88 = v135 + 8;
    v87 = *(v135 + 8);
    v89 = v83;
    v90 = v133;
    v87(v89, v133);
    sub_1D158015C(v137, v79, sub_1D148EF60);
    v91 = v122;
    sub_1D15A2258();
    v92 = v125;
    v93 = v79;
    v94 = v131;
    v136 = *(v125 + 8);
    (v136)(v93, v131);
    sub_1D15A2548();
    v96 = v95;
    v87(v91, v90);
    v97 = v134;
    (*(v92 + 16))(v134, v84, v94);
    v98 = type metadata accessor for SignificantChangeEngine.State(0);
    v99 = *(v98 + 20);
    v100 = type metadata accessor for SignificantChangeEngine.State.MeanShift(0);
    (*(*(v100 - 8) + 56))(v97 + v99, 1, 1, v100);
    v101 = v97 + *(v98 + 24);
    v102 = (v88 + 24);
    v103 = (v88 + 48);
    if (v77 < v123 || v86 - v96 >= a4)
    {
      v114 = v137;
      v113 = v138;
      sub_1D158015C(v137, v138, sub_1D148EF60);
      v115 = v132;
      sub_1D15A2258();
      sub_1D158034C(v130, sub_1D148EF60);
      sub_1D158034C(v114, sub_1D148EF60);
      v116 = v131;
      v117 = v136;
      (v136)(v139, v131);
      v117(v126, v116);
      v117(v113, v116);
      v118 = v133;
      (*v102)(v101, v115, v133);
      (*v103)(v101, 0, 1, v118);
      v110 = type metadata accessor for SignificantChangeEngine.State.FrequencyShift(0);
      v119 = *(v110 + 24);
      v120 = type metadata accessor for SignificantChange(0);
      (*(*(v120 - 8) + 56))(v101 + v119, 1, 1, v120);
      *(v101 + *(v110 + 20)) = 1;
    }

    else
    {
      v104 = v130;
      v105 = v138;
      sub_1D158015C(v130, v138, sub_1D148EF60);
      v106 = v132;
      sub_1D15A2288();
      sub_1D158034C(v104, sub_1D148EF60);
      sub_1D158034C(v137, sub_1D148EF60);
      v107 = v131;
      v108 = v136;
      (v136)(v139, v131);
      v108(v126, v107);
      v108(v105, v107);
      v109 = v133;
      (*v102)(v101, v106, v133);
      (*v103)(v101, 0, 1, v109);
      v110 = type metadata accessor for SignificantChangeEngine.State.FrequencyShift(0);
      v111 = *(v110 + 24);
      v112 = type metadata accessor for SignificantChange(0);
      (*(*(v112 - 8) + 56))(v101 + v111, 1, 1, v112);
      *(v101 + *(v110 + 20)) = 0;
    }

    (*(*(v110 - 8) + 56))(v101, 0, 1, v110);
    return (*(*(v98 - 8) + 56))(v134, 0, 1, v98);
  }

  else
  {
    v74 = type metadata accessor for SignificantChangeEngine.State(0);
    v75 = *(*(v74 - 8) + 56);

    return v75(a3, 1, 1, v74);
  }
}

void sub_1D157A314(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v162 = a3;
  v163 = a2;
  sub_1D15807FC(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v129 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D15801C4(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v149 = &v129 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v148 = &v129 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v156 = &v129 - v13;
  v160 = type metadata accessor for SignificantChangeEngine.State(0);
  v150 = *(v160 - 8);
  MEMORY[0x1EEE9AC00](v160);
  v15 = &v129 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v151 = sub_1D15A26A8();
  v155 = *(v151 - 8);
  MEMORY[0x1EEE9AC00](v151);
  v17 = &v129 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v154 = &v129 - v19;
  sub_1D1580868(0);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v152 = &v129 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v153 = &v129 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v158 = &v129 - v25;
  v161 = type metadata accessor for SignificantChangeEngine.State.FrequencyShift(0);
  v159 = *(v161 - 8);
  MEMORY[0x1EEE9AC00](v161);
  v157 = &v129 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_1D15A22A8();
  v28 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v147 = &v129 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v129 - v31;
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v129 - v34;
  sub_1D148EF60(0);
  MEMORY[0x1EEE9AC00](v36 - 8);
  MEMORY[0x1EEE9AC00](&v129 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v38);
  v40 = (&v129 - v39);
  MEMORY[0x1EEE9AC00](v41);
  v47 = &v129 - v44;
  v48 = *(v46 + 2);
  if (!v48)
  {
    v62 = v163;
LABEL_23:
    v112 = v162;
LABEL_24:
    sub_1D158015C(v62, v112, type metadata accessor for SignificantChangeEngine.State);
    return;
  }

  v141 = v42;
  v142 = v17;
  v146 = v45;
  v134 = v7;
  v136 = v15;
  v140 = *(a1 + 24);
  v49 = *(a1 + 48);
  v50 = v48 - 1;
  v51 = (*(v43 + 80) + 32) & ~*(v43 + 80);
  v145 = v46;
  v138 = v51;
  v52 = v46 + v51;
  v137 = *(v43 + 72);
  v144 = v50;
  v53 = v46 + v51 + v137 * v50;
  sub_1D158015C(v53, &v129 - v44, sub_1D148EF60);
  sub_1D158015C(v52, v40, sub_1D148EF60);
  v54 = *(v28 + 32);
  v132 = v28 + 32;
  v54(v35, v40, v27);
  sub_1D158015C(v53, v40, sub_1D148EF60);
  v139 = v40;
  v133 = v54;
  v54(v32, v40, v27);
  v55 = v163;
  v56 = v158;
  sub_1D1580850(v163 + *(v160 + 24), v158);
  v57 = v161;
  v143 = *(v159 + 48);
  v58 = v27;
  if (v143(v56, 1, v161) == 1)
  {
    v59 = *(v28 + 8);
    v59(v32, v27);
    v59(v35, v27);
    sub_1D158034C(v47, sub_1D148EF60);
    v60 = sub_1D1580868;
    v61 = v56;
LABEL_22:
    sub_1D158034C(v61, v60);
    v62 = v55;
    goto LABEL_23;
  }

  v63 = v28;
  v130 = v32;
  v135 = v47;
  v131 = v35;
  v64 = v157;
  sub_1D1580248(v56, v157, type metadata accessor for SignificantChangeEngine.State.FrequencyShift);
  if ((*(v64 + *(v57 + 20)) & 1) == 0)
  {
LABEL_21:
    sub_1D158034C(v64, type metadata accessor for SignificantChangeEngine.State.FrequencyShift);
    v111 = *(v63 + 8);
    v111(v130, v58);
    v111(v131, v58);
    v60 = sub_1D148EF60;
    v61 = v135;
    goto LABEL_22;
  }

  v66 = sub_1D157B384(v144, v145);
  v158 = v67;
  v69 = v68;
  if ((v68 & 1) == 0)
  {
    v70 = v65;

LABEL_8:
    sub_1D157DC00(v66, v70, v158, v69, sub_1D158373C, sub_1D148EF60);
    v72 = v71;
    goto LABEL_15;
  }

  v144 = v65;
  sub_1D15A4BC8();
  swift_unknownObjectRetain_n();

  v73 = swift_dynamicCastClass();
  if (!v73)
  {
    swift_unknownObjectRelease();
    v73 = MEMORY[0x1E69E7CC0];
  }

  v74 = *(v73 + 16);

  if (__OFSUB__(v69 >> 1, v158))
  {
    __break(1u);
    goto LABEL_38;
  }

  if (v74 != (v69 >> 1) - v158)
  {
LABEL_38:
    swift_unknownObjectRelease();
    v70 = v144;
    goto LABEL_8;
  }

  v72 = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  if (v72)
  {
    goto LABEL_16;
  }

  v72 = MEMORY[0x1E69E7CC0];
LABEL_15:
  swift_unknownObjectRelease();
LABEL_16:
  v75 = *(v72 + 16);
  if (!v75)
  {

    goto LABEL_21;
  }

  v76 = v58;
  v77 = v146;
  sub_1D158015C(v72 + v138 + (v75 - 1) * v137, v146, sub_1D148EF60);
  v78 = v154;
  v79 = v139;
  sub_1D158015C(v135, v139, sub_1D148EF60);
  sub_1D15A2258();
  v80 = *(v63 + 8);
  v80(v79, v58);
  sub_1D15A2548();
  v82 = v81;
  v139 = v63;
  v83 = v78;
  v84 = *(v155 + 8);
  v85 = v151;
  v84(v83, v151);
  v86 = v77;
  v87 = v85;
  v88 = v141;
  sub_1D158015C(v86, v141, sub_1D148EF60);
  v89 = v142;
  sub_1D15A2258();
  v144 = v76;
  v158 = v63 + 8;
  v145 = v80;
  v80(v88, v76);
  sub_1D15A2548();
  v91 = v90;
  v84(v89, v87);
  v92 = v156;
  sub_1D1579728(v72, v140, v156, v49 - (v82 - v91));

  v93 = v150;
  v94 = *(v150 + 48);
  v95 = v160;
  if (v94(v92, 1, v160) == 1)
  {
    v96 = v148;
    sub_1D158015C(v163, v148, type metadata accessor for SignificantChangeEngine.State);
    (*(v93 + 56))(v96, 0, 1, v95);
    v97 = v154;
    sub_1D15A2288();
    v98 = v155;
    v99 = v153;
    (*(v155 + 32))(v153, v97, v87);
    (*(v98 + 56))(v99, 0, 1, v87);
    v100 = v161;
    v101 = *(v161 + 24);
    v102 = type metadata accessor for SignificantChange(0);
    (*(*(v102 - 8) + 56))(v99 + v101, 1, 1, v102);
    *(v99 + *(v100 + 20)) = 1;
    (*(v159 + 56))(v99, 0, 1, v100);
    v103 = v147;
    v104 = v144;
    v139[2](v147, v130, v144);
    v105 = v96;
    v106 = v149;
    v107 = sub_1D1580230(v105, v149);
    v108 = v94;
    if ((v94)(v106, 1, v95, v107) == 1)
    {
      sub_1D158034C(v106, sub_1D15801C4);
      v109 = type metadata accessor for SignificantChangeEngine.State.MeanShift(0);
      v110 = v134;
      (*(*(v109 - 8) + 56))(v134, 1, 1, v109);
    }

    else
    {
      v110 = v134;
      sub_1D15807E4(v106 + *(v95 + 20), v134);
      sub_1D158034C(v106, type metadata accessor for SignificantChangeEngine.State);
    }

    v115 = v157;
    v113 = v136;
    sub_1D1580248(v153, &v136[*(v95 + 24)], sub_1D1580868);
    v133(v113, v103, v104);
    sub_1D1580248(v110, v113 + *(v95 + 20), sub_1D15807FC);
    v116 = v156;
    v117 = v108(v156, 1, v95);
    v114 = v163;
    if (v117 != 1)
    {
      sub_1D158034C(v116, sub_1D15801C4);
    }
  }

  else
  {
    v104 = v144;
    v113 = v136;
    sub_1D1580248(v92, v136, type metadata accessor for SignificantChangeEngine.State);
    v114 = v163;
    v115 = v157;
  }

  v118 = v152;
  sub_1D1580850(v113 + *(v95 + 24), v152);
  v119 = v161;
  v120 = v143(v118, 1, v161);
  v121 = v162;
  if (v120 == 1)
  {
    sub_1D158034C(v118, sub_1D1580868);
    sub_1D158034C(v146, sub_1D148EF60);
    sub_1D158034C(v115, type metadata accessor for SignificantChangeEngine.State.FrequencyShift);
    v122 = v145;
    v145(v130, v104);
    v122(v131, v104);
    sub_1D158034C(v135, sub_1D148EF60);
LABEL_31:
    sub_1D158034C(v113, type metadata accessor for SignificantChangeEngine.State);
    v62 = v114;
    v112 = v121;
    goto LABEL_24;
  }

  v123 = *(v118 + *(v119 + 20));
  sub_1D158034C(v118, type metadata accessor for SignificantChangeEngine.State.FrequencyShift);
  v124 = v131;
  v125 = v130;
  if (v123)
  {
    v126 = sub_1D15A4BA8();

    sub_1D158034C(v146, sub_1D148EF60);
    sub_1D158034C(v115, type metadata accessor for SignificantChangeEngine.State.FrequencyShift);
    v127 = v145;
    v145(v125, v104);
    v127(v124, v104);
    sub_1D158034C(v135, sub_1D148EF60);
    if ((v126 & 1) == 0)
    {
      goto LABEL_31;
    }
  }

  else
  {
    swift_bridgeObjectRelease_n();
    sub_1D158034C(v146, sub_1D148EF60);
    sub_1D158034C(v115, type metadata accessor for SignificantChangeEngine.State.FrequencyShift);
    v128 = v145;
    v145(v125, v104);
    v128(v124, v104);
    sub_1D158034C(v135, sub_1D148EF60);
  }

  sub_1D1580248(v113, v121, type metadata accessor for SignificantChangeEngine.State);
}

uint64_t sub_1D157B384(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    sub_1D148EF60(0);
    return a2;
  }

  return result;
}

uint64_t sub_1D157B418@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>)
{
  v60 = a1;
  v62 = a2;
  v7 = sub_1D15A22A8();
  v8 = *(v7 - 8);
  v56 = v7;
  v57 = v8;
  MEMORY[0x1EEE9AC00](v7);
  v59 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1D15A26A8();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v53 - v15;
  v17 = type metadata accessor for SignificantChange.Period(0);
  v18 = *(v17 - 1);
  MEMORY[0x1EEE9AC00](v17);
  v58 = &v53 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v53 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v53 - v24;
  v26 = type metadata accessor for SignificantChange(0);
  v27 = *(v26 + 20);
  v61 = v4;
  v28 = *(v4 + v27);
  v29 = *(v28 + 16);
  if (!v29)
  {
    return sub_1D158015C(v61, v62, type metadata accessor for SignificantChange);
  }

  v54 = (*(v18 + 80) + 32) & ~*(v18 + 80);
  v55 = v26;
  v30 = *(v18 + 72);
  sub_1D158015C(v28 + v54 + v30 * (v29 - 1), v25, type metadata accessor for SignificantChange.Period);
  sub_1D15A2288();
  sub_1D1580304(&qword_1EE05B518, MEMORY[0x1E6969530], MEMORY[0x1E6969548]);
  v31 = sub_1D15A3EB8();
  (*(v11 + 8))(v16, v10);
  if ((v31 & 1) == 0)
  {
    sub_1D158034C(v25, type metadata accessor for SignificantChange.Period);
    return sub_1D158015C(v61, v62, type metadata accessor for SignificantChange);
  }

  v53 = v30;
  sub_1D15A2288();
  (*(v11 + 16))(v13, v60, v10);
  v32 = v59;
  sub_1D15A2268();
  v34 = v56;
  v33 = v57;
  (*(v57 + 16))(v22, v32, v56);
  v35 = v25[v17[7]];
  *&v22[v17[5]] = a3;
  *&v22[v17[6]] = a4;
  v22[v17[7]] = v35;
  v36 = sub_1D157D364(1uLL, v28);
  v38 = v37;
  v40 = v39;
  v42 = v41;
  if ((v41 & 1) == 0)
  {

    v43 = v62;
LABEL_5:
    sub_1D157DC00(v36, v38, v40, v42, sub_1D1583630, type metadata accessor for SignificantChange.Period);
    v45 = v44;
    v46 = v61;
LABEL_14:
    swift_unknownObjectRelease();
    goto LABEL_15;
  }

  sub_1D15A4BC8();
  swift_unknownObjectRetain_n();

  v48 = swift_dynamicCastClass();
  if (!v48)
  {
    swift_unknownObjectRelease();
    v48 = MEMORY[0x1E69E7CC0];
  }

  v49 = *(v48 + 16);

  if (__OFSUB__(v42 >> 1, v40))
  {
    __break(1u);
    goto LABEL_21;
  }

  if (v49 != (v42 >> 1) - v40)
  {
LABEL_21:
    swift_unknownObjectRelease();
    v43 = v62;
    v33 = v57;
    goto LABEL_5;
  }

  v45 = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  v46 = v61;
  v43 = v62;
  v33 = v57;
  if (!v45)
  {
    v45 = MEMORY[0x1E69E7CC0];
    goto LABEL_14;
  }

LABEL_15:
  sub_1D158015C(v22, v58, type metadata accessor for SignificantChange.Period);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v45 = sub_1D148C92C(0, v45[2] + 1, 1, v45);
  }

  v51 = v45[2];
  v50 = v45[3];
  if (v51 >= v50 >> 1)
  {
    v45 = sub_1D148C92C((v50 > 1), v51 + 1, 1, v45);
  }

  sub_1D158034C(v22, type metadata accessor for SignificantChange.Period);
  (*(v33 + 8))(v59, v34);
  sub_1D158034C(v25, type metadata accessor for SignificantChange.Period);
  v45[2] = v51 + 1;
  sub_1D1580248(v58, v45 + v54 + v51 * v53, type metadata accessor for SignificantChange.Period);
  sub_1D158015C(v46, v43, type metadata accessor for SignificantChange.Period);
  v52 = v55;
  result = sub_1D158015C(v46 + *(v55 + 24), v43 + *(v55 + 24), sub_1D1583510);
  *(v43 + *(v52 + 20)) = v45;
  return result;
}

double sub_1D157BA28@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v32 = a3;
  sub_1D1580868(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v31 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D15801C4(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v31 - v11;
  sub_1D15807FC(0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1D15A22A8();
  v17 = *(v16 - 8);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v20 = &v31 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21.n128_f64[0] = (*(v17 + 16))(v20, a2, v16, v18);
  v22 = a1;
  sub_1D1580144(a1, v12, v21);
  v23 = type metadata accessor for SignificantChangeEngine.State(0);
  v24 = *(*(v23 - 8) + 48);
  if (v24(v12, 1, v23) == 1)
  {
    sub_1D158034C(v12, sub_1D15801C4);
    v25 = type metadata accessor for SignificantChangeEngine.State.MeanShift(0);
    (*(*(v25 - 8) + 56))(v15, 1, 1, v25);
  }

  else
  {
    sub_1D15807E4(&v12[*(v23 + 20)], v15);
    sub_1D158034C(v12, type metadata accessor for SignificantChangeEngine.State);
  }

  sub_1D1580144(v22, v9, v26);
  if (v24(v9, 1, v23) == 1)
  {
    sub_1D158034C(v9, sub_1D15801C4);
    v27 = type metadata accessor for SignificantChangeEngine.State.FrequencyShift(0);
    v28 = v31;
    (*(*(v27 - 8) + 56))(v31, 1, 1, v27);
  }

  else
  {
    v28 = v31;
    sub_1D1580850(&v9[*(v23 + 24)], v31);
    sub_1D158034C(v9, type metadata accessor for SignificantChangeEngine.State);
  }

  v29 = v32;
  (*(v17 + 32))(v32, v20, v16);
  sub_1D1580248(v15, v29 + *(v23 + 20), sub_1D15807FC);
  sub_1D1580248(v28, v29 + *(v23 + 24), sub_1D1580868);
  return result;
}

uint64_t sub_1D157BE0C(uint64_t a1, uint64_t a2)
{
  v21 = a2;
  v3 = sub_1D15A26A8();
  v22 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v20 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v19 - v6;
  sub_1D148EF60(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v19 - v12;
  sub_1D158015C(a1, &v19 - v12, sub_1D148EF60);
  sub_1D15A2288();
  v14 = sub_1D15A22A8();
  v15 = *(*(v14 - 8) + 8);
  v15(v13, v14);
  sub_1D158015C(v21, v10, sub_1D148EF60);
  v16 = v20;
  sub_1D15A2288();
  v15(v10, v14);
  sub_1D1580304(&qword_1EE05B518, MEMORY[0x1E6969530], MEMORY[0x1E6969548]);
  LOBYTE(v14) = sub_1D15A3EB8();
  v17 = *(v22 + 8);
  v17(v16, v3);
  v17(v7, v3);
  return v14 & 1;
}

uint64_t sub_1D157C088()
{
  v1 = *v0;
  v2 = 0x746E756F63;
  v3 = 0x5364657261757173;
  v4 = 1851876717;
  if (v1 != 3)
  {
    v4 = 0x65636E6169726176;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 7173491;
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

uint64_t sub_1D157C114@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D1582FD0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D157C13C(uint64_t a1)
{
  v2 = sub_1D1580B18();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D157C178(uint64_t a1)
{
  v2 = sub_1D1580B18();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SignificantChangeEngine.ChangepointComponent.encode(to:)(void *a1)
{
  sub_1D1580C14(0, &qword_1EE056368, sub_1D1580B18, &type metadata for SignificantChangeEngine.ChangepointComponent.CodingKeys, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v9[-v6];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D1580B18();
  sub_1D15A4CE8();
  v9[15] = 0;
  sub_1D15A4B18();
  if (!v1)
  {
    v9[14] = 1;
    sub_1D15A4B18();
    v9[13] = 2;
    sub_1D15A4B18();
    v9[12] = 3;
    sub_1D15A4B18();
    v9[11] = 4;
    sub_1D15A4B18();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t SignificantChangeEngine.ChangepointComponent.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v21 = a2;
  sub_1D1580C14(0, &qword_1EE056438, sub_1D1580B18, &type metadata for SignificantChangeEngine.ChangepointComponent.CodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v21 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D1580B18();
  sub_1D15A4CD8();
  if (!v2)
  {
    v9 = v21;
    v26 = 0;
    sub_1D15A4A58();
    v11 = v10;
    v25 = 1;
    sub_1D15A4A58();
    v13 = v12;
    v24 = 2;
    sub_1D15A4A58();
    v15 = v14;
    v23 = 3;
    sub_1D15A4A58();
    v17 = v16;
    v22 = 4;
    sub_1D15A4A58();
    v20 = v19;
    (*(v6 + 8))(v8, v5);
    *v9 = v11;
    v9[1] = v13;
    v9[2] = v15;
    v9[3] = v17;
    v9[4] = v20;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_1D157C66C(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 1702125924;
    v6 = 0x7473655474;
    if (a1 != 2)
    {
      v6 = 0x666968536E61656DLL;
    }

    if (a1)
    {
      v5 = 0x65756C615670;
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
    v1 = 12908;
    v2 = 7563372;
    if (a1 != 7)
    {
      v2 = 7563378;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0xD000000000000010;
    if (a1 != 4)
    {
      v3 = 0x6953746365666665;
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

uint64_t sub_1D157C774@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D1583184(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D157C7A8(uint64_t a1)
{
  v2 = sub_1D1580B6C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D157C7E4(uint64_t a1)
{
  v2 = sub_1D1580B6C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SignificantChangeEngine.Changepoint.encode(to:)(void *a1)
{
  v3 = v1;
  sub_1D1580C14(0, &qword_1EE056370, sub_1D1580B6C, &type metadata for SignificantChangeEngine.Changepoint.CodingKeys, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v18 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D1580B6C();
  sub_1D15A4CE8();
  LOBYTE(v18) = 0;
  sub_1D15A26A8();
  sub_1D1580304(&qword_1EE05B3F8, MEMORY[0x1E6969530], MEMORY[0x1E6969538]);
  sub_1D15A4B38();
  if (!v2)
  {
    v10 = type metadata accessor for SignificantChangeEngine.Changepoint(0);
    LOBYTE(v18) = 1;
    sub_1D15A4B18();
    LOBYTE(v18) = 2;
    sub_1D15A4B18();
    LOBYTE(v18) = 3;
    sub_1D15A4B18();
    LOBYTE(v18) = 4;
    sub_1D15A4B18();
    LOBYTE(v18) = 5;
    sub_1D15A4B18();
    LOBYTE(v18) = 6;
    sub_1D15A4B18();
    v11 = (v3 + *(v10 + 44));
    v12 = *(v11 + 4);
    v13 = v11[1];
    v18 = *v11;
    v19 = v13;
    v20 = v12;
    v21 = 7;
    sub_1D1580BC0();
    sub_1D15A4B38();
    v14 = (v3 + *(v10 + 48));
    v15 = *(v14 + 4);
    v16 = v14[1];
    v18 = *v14;
    v19 = v16;
    v20 = v15;
    v21 = 8;
    sub_1D15A4B38();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t SignificantChangeEngine.Changepoint.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  v3 = sub_1D15A26A8();
  v30 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v32 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D1580C14(0, &qword_1EE056440, sub_1D1580B6C, &type metadata for SignificantChangeEngine.Changepoint.CodingKeys, MEMORY[0x1E69E6F48]);
  v31 = v5;
  v29 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v27 - v6;
  v8 = type metadata accessor for SignificantChangeEngine.Changepoint(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D1580B6C();
  v33 = v7;
  v11 = v34;
  sub_1D15A4CD8();
  if (v11)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v13 = v29;
  v12 = v30;
  LOBYTE(v35) = 0;
  sub_1D1580304(&qword_1EE05B800, MEMORY[0x1E6969530], MEMORY[0x1E6969558]);
  sub_1D15A4A78();
  (*(v12 + 32))(v10, v32, v3);
  LOBYTE(v35) = 1;
  sub_1D15A4A58();
  *&v10[v8[5]] = v14;
  LOBYTE(v35) = 2;
  sub_1D15A4A58();
  *&v10[v8[6]] = v15;
  LOBYTE(v35) = 3;
  sub_1D15A4A58();
  *&v10[v8[7]] = v16;
  LOBYTE(v35) = 4;
  sub_1D15A4A58();
  *&v10[v8[8]] = v17;
  LOBYTE(v35) = 5;
  sub_1D15A4A58();
  *&v10[v8[9]] = v18;
  LOBYTE(v35) = 6;
  sub_1D15A4A58();
  *&v10[v8[10]] = v19;
  v38 = 7;
  sub_1D1580C7C();
  sub_1D15A4A78();
  v20 = v37;
  v21 = &v10[v8[11]];
  v22 = v36;
  *v21 = v35;
  *(v21 + 1) = v22;
  *(v21 + 4) = v20;
  v38 = 8;
  sub_1D15A4A78();
  (*(v13 + 8))(v33, v31);
  v23 = v37;
  v24 = &v10[v8[12]];
  v25 = v36;
  *v24 = v35;
  *(v24 + 1) = v25;
  *(v24 + 4) = v23;
  sub_1D158015C(v10, v28, type metadata accessor for SignificantChangeEngine.Changepoint);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1D158034C(v10, type metadata accessor for SignificantChangeEngine.Changepoint);
}

uint64_t sub_1D157D108(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v17[1] = a3;
  v4 = sub_1D15A26A8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D148EF60(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17[0] = a1;
  sub_1D158015C(a1, v10, sub_1D148EF60);
  sub_1D15A2258();
  v11 = sub_1D15A22A8();
  v12 = *(*(v11 - 8) + 8);
  v12(v10, v11);
  sub_1D1580304(&qword_1EE05B518, MEMORY[0x1E6969530], MEMORY[0x1E6969548]);
  v13 = sub_1D15A3EC8();
  v14 = *(v5 + 8);
  v14(v7, v4);
  if (v13)
  {
    sub_1D158015C(v17[0], v10, sub_1D148EF60);
    sub_1D15A2258();
    v12(v10, v11);
    v15 = sub_1D15A2628();
    v14(v7, v4);
  }

  else
  {
    v15 = 0;
  }

  return v15 & 1;
}

unint64_t sub_1D157D364(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v3 = *(a2 + 16);
    if ((v3 - result) >= 1 && v3 < result)
    {
      __break(1u);
    }

    type metadata accessor for SignificantChange.Period(0);
    return a2;
  }

  return result;
}

uint64_t SignificantChangeEngine.Changepoint.description.getter()
{
  v1 = v0;
  sub_1D1583770(0, &qword_1EE05B538, sub_1D14C8F3C, MEMORY[0x1E69E6F90]);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1D15ACDD0;
  v3 = *(v1 + *(type metadata accessor for SignificantChangeEngine.Changepoint(0) + 28));
  v4 = MEMORY[0x1E69E6438];
  *(v2 + 56) = MEMORY[0x1E69E63B0];
  *(v2 + 64) = v4;
  *(v2 + 32) = v3;
  v5 = sub_1D15A3F58();
  v7 = v6;
  sub_1D15A47D8();
  MEMORY[0x1D388A330](0x6F7065676E616843, 0xED00005B7B746E69);
  sub_1D15A26A8();
  sub_1D1580304(&qword_1EE05B3F0, MEMORY[0x1E6969530], MEMORY[0x1E6969570]);
  v8 = sub_1D15A4B68();
  MEMORY[0x1D388A330](v8);

  MEMORY[0x1D388A330](2629725, 0xE300000000000000);
  sub_1D15A4178();
  MEMORY[0x1D388A330](64, 0xE100000000000000);
  sub_1D15A4178();
  MEMORY[0x1D388A330](8233, 0xE200000000000000);
  MEMORY[0x1D388A330](v5, v7);

  MEMORY[0x1D388A330](10272, 0xE200000000000000);
  sub_1D15A4178();
  MEMORY[0x1D388A330](64, 0xE100000000000000);
  sub_1D15A4178();
  MEMORY[0x1D388A330](0x203A702029, 0xE500000000000000);
  sub_1D15A4178();
  MEMORY[0x1D388A330](0x746365666665202CLL, 0xEA0000000000203ALL);
  sub_1D15A4178();
  MEMORY[0x1D388A330](0x203A76202CLL, 0xE500000000000000);
  sub_1D15A4178();
  MEMORY[0x1D388A330](47, 0xE100000000000000);
  sub_1D15A4178();
  MEMORY[0x1D388A330](125, 0xE100000000000000);
  return 0;
}

void SignificantChange.description.getter()
{
  v1 = type metadata accessor for SignificantChange.Period(0);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = 0x2865676E616843;
  v29 = 0xE700000000000000;
  v5 = *(v0 + *(type metadata accessor for SignificantChange(0) + 20));
  if (*(v5 + 16))
  {
    v6 = 0;
  }

  else
  {
    v6 = 0x20796461657453;
  }

  if (*(v5 + 16))
  {
    v7 = 0xE000000000000000;
  }

  else
  {
    v7 = 0xE700000000000000;
  }

  MEMORY[0x1D388A330](v6, v7);

  v8 = SignificantChange.Period.description.getter();
  MEMORY[0x1D388A330](v8);

  MEMORY[0x1D388A330](32, 0xE100000000000000);
  v9 = *(v5 + 16);
  if (v9)
  {
    v26 = MEMORY[0x1E69E7CC0];
    sub_1D14A7854(0, v9, 0);
    v10 = v26;
    v11 = v5 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v12 = *(v2 + 72);
    do
    {
      sub_1D158015C(v11, v4, type metadata accessor for SignificantChange.Period);
      v13 = SignificantChange.Period.description.getter();
      v15 = v14;
      sub_1D158034C(v4, type metadata accessor for SignificantChange.Period);
      v26 = v10;
      v17 = v10[2];
      v16 = v10[3];
      v18 = v17 + 1;
      if (v17 >= v16 >> 1)
      {
        sub_1D14A7854((v16 > 1), v17 + 1, 1);
        v10 = v26;
      }

      v10[2] = v18;
      v19 = &v10[2 * v17];
      v19[4] = v13;
      v19[5] = v15;
      v11 += v12;
      --v9;
    }

    while (v9);
LABEL_14:
    v20 = 0;
    v21 = 0;
    v22 = v10 + 5;
    v23 = 0xE000000000000000;
    while (v21 < v10[2])
    {
      ++v21;
      v25 = *(v22 - 1);
      v24 = *v22;
      v26 = v20;
      v27 = v23;

      MEMORY[0x1D388A330](v25, v24);

      v20 = v26;
      v23 = v27;
      v22 += 2;
      if (v18 == v21)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
    return;
  }

  v10 = MEMORY[0x1E69E7CC0];
  v18 = *(MEMORY[0x1E69E7CC0] + 16);
  if (v18)
  {
    goto LABEL_14;
  }

  v20 = 0;
  v23 = 0xE000000000000000;
LABEL_17:

  MEMORY[0x1D388A330](v20, v23);
}

uint64_t SignificantChange.Period.description.getter()
{
  v1 = *(v0 + *(type metadata accessor for SignificantChange.Period(0) + 28));
  if (v1 == 2)
  {
    sub_1D15A47D8();
    v2 = 0x80000001D15C24A0;
    v3 = 0xD000000000000012;
  }

  else
  {
    if (v1)
    {
      v4 = 0x6973616572636544;
    }

    else
    {
      v4 = 0x6973616572636E49;
    }

    sub_1D15A47D8();
    MEMORY[0x1D388A330](0x28646F69726550, 0xE700000000000000);
    MEMORY[0x1D388A330](v4, 0xEE00206F7420676ELL);

    v3 = 10272;
    v2 = 0xE200000000000000;
  }

  MEMORY[0x1D388A330](v3, v2);
  sub_1D15A4178();
  MEMORY[0x1D388A330](8236, 0xE200000000000000);
  sub_1D15A4178();
  MEMORY[0x1D388A330](0x207265766F2029, 0xE700000000000000);
  sub_1D15A22A8();
  sub_1D1580304(&qword_1EE05B430, MEMORY[0x1E6968130], MEMORY[0x1E6968158]);
  v5 = sub_1D15A4B68();
  MEMORY[0x1D388A330](v5);

  MEMORY[0x1D388A330](41, 0xE100000000000000);
  return 0;
}

void sub_1D157DC00(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  v6 = a4 >> 1;
  v7 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    goto LABEL_14;
  }

  if (v7)
  {
    if (v7 < 1)
    {
      if (v6 != a3)
      {
        goto LABEL_10;
      }
    }

    else
    {
      (a5)(0, a2);
      v10 = *(a6(0) - 8);
      v11 = *(v10 + 72);
      v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
      v13 = swift_allocObject();
      v14 = _swift_stdlib_malloc_size(v13);
      if (!v11)
      {
LABEL_15:
        __break(1u);
LABEL_16:
        __break(1u);
        return;
      }

      if (v14 - v12 == 0x8000000000000000 && v11 == -1)
      {
        goto LABEL_16;
      }

      v13[2] = v7;
      v13[3] = 2 * ((v14 - v12) / v11);
      if (v6 != a3)
      {
LABEL_10:
        a6(0);
        swift_arrayInitWithCopy();
        return;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }
}

BOOL _s19HealthVisualization23SignificantChangeEngineV10ParametersV10ThresholdsV2eeoiySbAG_AGtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  v3 = *(a2 + 24);
  v4 = *(a2 + 40);
  if (*(a1 + 8))
  {
    if (!*(a2 + 8))
    {
      return 0;
    }
  }

  else
  {
    if (*a1 != *a2)
    {
      v2 = 1;
    }

    if (v2)
    {
      return 0;
    }
  }

  if (*(a1 + 24))
  {
    if (!*(a2 + 24))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 16) != *(a2 + 16))
    {
      v3 = 1;
    }

    if (v3)
    {
      return 0;
    }
  }

  if ((*(a1 + 40) & 1) == 0)
  {
    if (*(a1 + 32) != *(a2 + 32))
    {
      v4 = 1;
    }

    return (v4 & 1) == 0;
  }

  return (*(a2 + 40) & 1) != 0;
}

BOOL _s19HealthVisualization23SignificantChangeEngineV10ParametersV9MeanShiftV2eeoiySbAG_AGtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v9 = *(a1 + 48);
  v10 = *(a1 + 56);
  v11 = *(a1 + 64);
  v12 = *(a1 + 72);
  v13 = *(a1 + 80);
  v14 = *(a1 + 88);
  v15 = *(a1 + 89);
  v17 = *(a1 + 96);
  v16 = *(a1 + 104);
  v18 = *(a1 + 112);
  v19 = *(a1 + 120);
  v20 = *(a1 + 128);
  v21 = *(a2 + 8);
  v22 = *(a2 + 16);
  v23 = *(a2 + 24);
  v24 = *(a2 + 32);
  v25 = *(a2 + 40);
  v26 = *(a2 + 48);
  v27 = *(a2 + 56);
  v28 = *(a2 + 64);
  v29 = *(a2 + 72);
  v30 = *(a2 + 80);
  v31 = *(a2 + 88);
  v32 = *(a2 + 89);
  v34 = *(a2 + 96);
  v33 = *(a2 + 104);
  v35 = *(a2 + 112);
  v36 = *(a2 + 120);
  v37 = *(a2 + 128);
  if (v4)
  {
    if (!v21)
    {
      return 0;
    }
  }

  else
  {
    if (*a1 == *a2)
    {
      v38 = v21;
    }

    else
    {
      v38 = 1;
    }

    if (v38)
    {
      return 0;
    }
  }

  if (v6)
  {
    if (!v23)
    {
      return 0;
    }
  }

  else
  {
    if (v5 == v22)
    {
      v39 = v23;
    }

    else
    {
      v39 = 1;
    }

    if (v39)
    {
      return 0;
    }
  }

  if (v8)
  {
    if (!v25)
    {
      return 0;
    }
  }

  else
  {
    if (v7 == v24)
    {
      v40 = v25;
    }

    else
    {
      v40 = 1;
    }

    if (v40)
    {
      return 0;
    }
  }

  if (v10)
  {
    if (!v27)
    {
      return 0;
    }
  }

  else
  {
    if (v9 == v26)
    {
      v41 = v27;
    }

    else
    {
      v41 = 1;
    }

    if (v41)
    {
      return 0;
    }
  }

  if (v12)
  {
    if (!v29)
    {
      return 0;
    }
  }

  else
  {
    if (v11 == v28)
    {
      v42 = v29;
    }

    else
    {
      v42 = 1;
    }

    if (v42)
    {
      return 0;
    }
  }

  if (v14)
  {
    if (v31)
    {
      goto LABEL_45;
    }

    return 0;
  }

  if (v13 == v30)
  {
    v43 = v31;
  }

  else
  {
    v43 = 1;
  }

  if (v43)
  {
    return 0;
  }

LABEL_45:
  v45 = sub_1D1477B68(v15, v32);
  result = 0;
  if ((v45 & 1) != 0 && v17 == v34 && v16 == v33)
  {
    if (v19)
    {
      if (v36)
      {
        return v20 == v37;
      }
    }

    else
    {
      if (v18 == v35)
      {
        v46 = v36;
      }

      else
      {
        v46 = 1;
      }

      if ((v46 & 1) == 0)
      {
        return v20 == v37;
      }
    }

    return 0;
  }

  return result;
}

uint64_t _s19HealthVisualization23SignificantChangeEngineV10ParametersV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v8 = 0;
  if (*a1 == *a2)
  {
    v59 = v7;
    v60 = v6;
    v61 = v5;
    v62 = v4;
    v63 = v2;
    v64 = v3;
    if (*(a1 + 8) == *(a2 + 8))
    {
      v10 = *(a1 + 152);
      v11 = *(a1 + 192);
      v12 = *(a1 + 200);
      v13 = *(a1 + 208);
      v14 = *(a2 + 152);
      v42 = *(a1 + 160);
      v43 = *(a1 + 176);
      v40 = *(a2 + 160);
      v41 = *(a2 + 176);
      v15 = *(a2 + 192);
      v16 = *(a2 + 200);
      v17 = *(a2 + 208);
      v18 = *(a1 + 128);
      v57[6] = *(a1 + 112);
      v57[7] = v18;
      v58 = *(a1 + 144);
      v19 = *(a1 + 64);
      v57[2] = *(a1 + 48);
      v57[3] = v19;
      v20 = *(a1 + 96);
      v57[4] = *(a1 + 80);
      v57[5] = v20;
      v21 = *(a1 + 32);
      v57[0] = *(a1 + 16);
      v57[1] = v21;
      if (sub_1D1580AE4(v57) == 1)
      {
        v23 = *(a2 + 128);
        v54 = *(a2 + 112);
        v55 = v23;
        v56 = *(a2 + 144);
        v24 = *(a2 + 64);
        v50 = *(a2 + 48);
        v51 = v24;
        v25 = *(a2 + 96);
        v52 = *(a2 + 80);
        v53 = v25;
        v26 = *(a2 + 32);
        v48 = *(a2 + 16);
        v49 = v26;
        if (sub_1D1580AE4(&v48) != 1)
        {
          return 0;
        }
      }

      else
      {
        v27 = *(a1 + 128);
        v46[6] = *(a1 + 112);
        v46[7] = v27;
        v47 = *(a1 + 144);
        v28 = *(a1 + 64);
        v46[2] = *(a1 + 48);
        v46[3] = v28;
        v29 = *(a1 + 96);
        v46[4] = *(a1 + 80);
        v46[5] = v29;
        v30 = *(a1 + 32);
        v46[0] = *(a1 + 16);
        v46[1] = v30;
        v31 = *(a2 + 128);
        v54 = *(a2 + 112);
        v55 = v31;
        v56 = *(a2 + 144);
        v32 = *(a2 + 64);
        v50 = *(a2 + 48);
        v51 = v32;
        v33 = *(a2 + 96);
        v52 = *(a2 + 80);
        v53 = v33;
        v34 = *(a2 + 32);
        v48 = *(a2 + 16);
        v49 = v34;
        if (sub_1D1580AE4(&v48) == 1)
        {
          return 0;
        }

        v35 = *(a2 + 128);
        v44[6] = *(a2 + 112);
        v44[7] = v35;
        v45 = *(a2 + 144);
        v36 = *(a2 + 64);
        v44[2] = *(a2 + 48);
        v44[3] = v36;
        v37 = *(a2 + 96);
        v44[4] = *(a2 + 80);
        v44[5] = v37;
        v38 = *(a2 + 32);
        v44[0] = *(a2 + 16);
        v44[1] = v38;
        if (!_s19HealthVisualization23SignificantChangeEngineV10ParametersV9MeanShiftV2eeoiySbAG_AGtFZ_0(v46, v44))
        {
          return 0;
        }
      }

      if (v13)
      {
        if ((v17 & 1) == 0)
        {
          return 0;
        }
      }

      else if ((v17 & 1) != 0 || (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_s64(v42, v40), vceqq_s64(v43, v41)))) & 1) == 0 || v11 != v15 || v10 != v14 || v12 != v16)
      {
        return 0;
      }

      return 1;
    }
  }

  return v8;
}

BOOL _s19HealthVisualization23SignificantChangeEngineV11ChangepointV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  if ((sub_1D15A2658() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for SignificantChangeEngine.Changepoint(0);
  if (*(a1 + v4[5]) != *(a2 + v4[5]) || *(a1 + v4[6]) != *(a2 + v4[6]) || *(a1 + v4[7]) != *(a2 + v4[7]) || *(a1 + v4[8]) != *(a2 + v4[8]) || *(a1 + v4[9]) != *(a2 + v4[9]))
  {
    return 0;
  }

  v5 = v4[10];
  v6 = *(a1 + v5);
  v7 = *(a2 + v5);
  v8 = 0;
  if (v6 == v7)
  {
    v9 = v4[11];
    v10 = (a1 + v9);
    v11 = (a2 + v9);
    if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*v10, *v11), vceqq_f64(v10[1], v11[1])))) & 1) != 0 && v10[2].f64[0] == v11[2].f64[0])
    {
      v12 = v4[12];
      v13 = (a1 + v12);
      v14 = (a2 + v12);
      if (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*v13, *v14), vceqq_f64(v13[1], v14[1])))))
      {
        return v13[2].f64[0] == v14[2].f64[0];
      }

      return 0;
    }
  }

  return v8;
}

BOOL _s19HealthVisualization23SignificantChangeEngineV6OutputV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SignificantChangeEngine.State(0);
  v64 = *(v4 - 8);
  v65 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v61 = &v60 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D15801C4(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v62 = &v60 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D1583920(0);
  v63 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v68 = &v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for SignificantChange(0);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v60 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D15800F0(0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v66 = &v60 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v60 - v17;
  sub_1D15838E0(0);
  v20 = v19;
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v60 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x1EEE9AC00](v23);
  v26 = &v60 - v25;
  v28 = *(v27 + 48);
  v69 = a1;
  sub_1D15800D8(a1, &v60 - v25, v24);
  v67 = a2;
  sub_1D15800D8(a2, &v26[v28], v29);
  v30 = *(v11 + 48);
  if (v30(v26, 1, v10) == 1)
  {
    if (v30(&v26[v28], 1, v10) == 1)
    {
      sub_1D158034C(v26, sub_1D15800F0);
      goto LABEL_8;
    }

LABEL_6:
    v32 = sub_1D15838E0;
    v33 = v26;
LABEL_21:
    sub_1D158034C(v33, v32);
    return 0;
  }

  sub_1D15800D8(v26, v18, v31);
  if (v30(&v26[v28], 1, v10) == 1)
  {
    sub_1D158034C(v18, type metadata accessor for SignificantChange);
    goto LABEL_6;
  }

  sub_1D1580248(&v26[v28], v13, type metadata accessor for SignificantChange);
  v34 = _s19HealthVisualization17SignificantChangeV2eeoiySbAC_ACtFZ_0(v18, v13);
  sub_1D158034C(v13, type metadata accessor for SignificantChange);
  sub_1D158034C(v18, type metadata accessor for SignificantChange);
  sub_1D158034C(v26, sub_1D15800F0);
  if ((v34 & 1) == 0)
  {
    return 0;
  }

LABEL_8:
  v35 = type metadata accessor for SignificantChangeEngine.Output(0);
  v36 = *(v35 + 20);
  v37 = *(v20 + 48);
  sub_1D15800D8(v69 + v36, v22, v38);
  v39 = v67;
  sub_1D15800D8(v67 + v36, &v22[v37], v40);
  if (v30(v22, 1, v10) != 1)
  {
    v43 = v66;
    sub_1D15800D8(v22, v66, v41);
    if (v30(&v22[v37], 1, v10) != 1)
    {
      sub_1D1580248(&v22[v37], v13, type metadata accessor for SignificantChange);
      v44 = _s19HealthVisualization17SignificantChangeV2eeoiySbAC_ACtFZ_0(v43, v13);
      sub_1D158034C(v13, type metadata accessor for SignificantChange);
      sub_1D158034C(v43, type metadata accessor for SignificantChange);
      sub_1D158034C(v22, sub_1D15800F0);
      if ((v44 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_15;
    }

    sub_1D158034C(v43, type metadata accessor for SignificantChange);
    goto LABEL_13;
  }

  if (v30(&v22[v37], 1, v10) != 1)
  {
LABEL_13:
    v32 = sub_1D15838E0;
    v33 = v22;
    goto LABEL_21;
  }

  sub_1D158034C(v22, sub_1D15800F0);
LABEL_15:
  v45 = *(v35 + 24);
  v46 = *(v63 + 48);
  v47 = v68;
  sub_1D1580144(v69 + v45, v68, v42);
  sub_1D1580144(v39 + v45, v47 + v46, v48);
  v49 = *(v64 + 48);
  v50 = v47;
  v51 = v65;
  if (v49(v50, 1, v65) == 1)
  {
    if (v49(v68 + v46, 1, v51) == 1)
    {
      sub_1D158034C(v68, sub_1D15801C4);
      return 1;
    }

    goto LABEL_20;
  }

  v53 = v68;
  v54 = v62;
  sub_1D1580144(v68, v62, v52);
  if (v49(v53 + v46, 1, v51) == 1)
  {
    sub_1D158034C(v54, type metadata accessor for SignificantChangeEngine.State);
LABEL_20:
    v32 = sub_1D1583920;
    v33 = v68;
    goto LABEL_21;
  }

  v56 = v68;
  v57 = v68 + v46;
  v58 = v61;
  sub_1D1580248(v57, v61, type metadata accessor for SignificantChangeEngine.State);
  v59 = _s19HealthVisualization23SignificantChangeEngineV5StateV2eeoiySbAE_AEtFZ_0(v54, v58);
  sub_1D158034C(v58, type metadata accessor for SignificantChangeEngine.State);
  sub_1D158034C(v54, type metadata accessor for SignificantChangeEngine.State);
  sub_1D158034C(v56, sub_1D15801C4);
  return v59;
}

BOOL _s19HealthVisualization23SignificantChangeEngineV5StateV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SignificantChangeEngine.State.FrequencyShift(0);
  v44 = *(v4 - 8);
  v45 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D1580868(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v42 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D1583840(0);
  v10 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v43 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for SignificantChangeEngine.State.MeanShift(0);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D15807FC(0);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v38 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D1583860(0);
  v20 = v19;
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v38 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((sub_1D15A2238() & 1) == 0)
  {
    return 0;
  }

  v39 = v6;
  v40 = type metadata accessor for SignificantChangeEngine.State(0);
  v23 = *(v40 + 20);
  v24 = *(v20 + 48);
  sub_1D15807E4(a1 + v23, v22);
  v41 = a2;
  sub_1D15807E4(a2 + v23, &v22[v24]);
  v25 = *(v13 + 48);
  if (v25(v22, 1, v12) != 1)
  {
    sub_1D15807E4(v22, v18);
    if (v25(&v22[v24], 1, v12) != 1)
    {
      sub_1D1580248(&v22[v24], v15, type metadata accessor for SignificantChangeEngine.State.MeanShift);
      v28 = _s19HealthVisualization23SignificantChangeEngineV5StateV9MeanShiftV2eeoiySbAG_AGtFZ_0(v18, v15);
      sub_1D158034C(v15, type metadata accessor for SignificantChangeEngine.State.MeanShift);
      sub_1D158034C(v18, type metadata accessor for SignificantChangeEngine.State.MeanShift);
      sub_1D158034C(v22, sub_1D15807FC);
      if (!v28)
      {
        return 0;
      }

      goto LABEL_9;
    }

    sub_1D158034C(v18, type metadata accessor for SignificantChangeEngine.State.MeanShift);
LABEL_7:
    v26 = sub_1D1583860;
    v27 = v22;
LABEL_15:
    sub_1D158034C(v27, v26);
    return 0;
  }

  if (v25(&v22[v24], 1, v12) != 1)
  {
    goto LABEL_7;
  }

  sub_1D158034C(v22, sub_1D15807FC);
LABEL_9:
  v29 = *(v40 + 24);
  v30 = *(v10 + 48);
  v31 = v43;
  sub_1D1580850(a1 + v29, v43);
  sub_1D1580850(v41 + v29, v31 + v30);
  v32 = v45;
  v33 = *(v44 + 48);
  if (v33(v31, 1, v45) == 1)
  {
    if (v33(v31 + v30, 1, v32) == 1)
    {
      sub_1D158034C(v31, sub_1D1580868);
      return 1;
    }

    goto LABEL_14;
  }

  v34 = v42;
  sub_1D1580850(v31, v42);
  if (v33(v31 + v30, 1, v32) == 1)
  {
    sub_1D158034C(v34, type metadata accessor for SignificantChangeEngine.State.FrequencyShift);
LABEL_14:
    v26 = sub_1D1583840;
    v27 = v31;
    goto LABEL_15;
  }

  v36 = v39;
  sub_1D1580248(v31 + v30, v39, type metadata accessor for SignificantChangeEngine.State.FrequencyShift);
  v37 = _s19HealthVisualization23SignificantChangeEngineV5StateV14FrequencyShiftV2eeoiySbAG_AGtFZ_0(v34, v36);
  sub_1D158034C(v36, type metadata accessor for SignificantChangeEngine.State.FrequencyShift);
  sub_1D158034C(v34, type metadata accessor for SignificantChangeEngine.State.FrequencyShift);
  sub_1D158034C(v31, sub_1D1580868);
  return v37;
}

BOOL _s19HealthVisualization23SignificantChangeEngineV5StateV9MeanShiftV2eeoiySbAG_AGtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D15A26A8();
  v64 = *(v4 - 8);
  v65 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v59 = &v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D14F104C(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v60 = &v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D14BDAD0(0);
  v62 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v63 = &v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for SignificantChangeEngine.Changepoint(0);
  v67 = *(v10 - 8);
  v68 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v61 = &v58 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D148EF2C(0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v66 = &v58 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D1583900(0);
  v15 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v58 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for SignificantChange(0);
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v58 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D15800F0(0);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v24 = &v58 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D15838E0(0);
  v26 = MEMORY[0x1EEE9AC00](v25 - 8);
  v28 = &v58 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = *(v29 + 56);
  v69 = a1;
  sub_1D15800D8(a1, v28, v26);
  v31 = a2;
  sub_1D15800D8(a2, &v28[v30], v32);
  v33 = *(v19 + 48);
  if (v33(v28, 1, v18) == 1)
  {
    if (v33(&v28[v30], 1, v18) == 1)
    {
      sub_1D158034C(v28, sub_1D15800F0);
      goto LABEL_8;
    }

LABEL_6:
    v35 = sub_1D15838E0;
    v36 = v28;
LABEL_21:
    sub_1D158034C(v36, v35);
    return 0;
  }

  sub_1D15800D8(v28, v24, v34);
  if (v33(&v28[v30], 1, v18) == 1)
  {
    sub_1D158034C(v24, type metadata accessor for SignificantChange);
    goto LABEL_6;
  }

  sub_1D1580248(&v28[v30], v21, type metadata accessor for SignificantChange);
  v37 = _s19HealthVisualization17SignificantChangeV2eeoiySbAC_ACtFZ_0(v24, v21);
  sub_1D158034C(v21, type metadata accessor for SignificantChange);
  sub_1D158034C(v24, type metadata accessor for SignificantChange);
  sub_1D158034C(v28, sub_1D15800F0);
  if ((v37 & 1) == 0)
  {
    return 0;
  }

LABEL_8:
  v38 = type metadata accessor for SignificantChangeEngine.State.MeanShift(0);
  v39 = *(v38 + 20);
  v40 = *(v15 + 48);
  v41 = v69;
  sub_1D15808BC(v69 + v39, v17);
  sub_1D15808BC(v31 + v39, &v17[v40]);
  v42 = v68;
  v43 = *(v67 + 48);
  if (v43(v17, 1, v68) != 1)
  {
    v44 = v66;
    sub_1D15808BC(v17, v66);
    if (v43(&v17[v40], 1, v42) != 1)
    {
      v45 = v61;
      sub_1D1580248(&v17[v40], v61, type metadata accessor for SignificantChangeEngine.Changepoint);
      v46 = _s19HealthVisualization23SignificantChangeEngineV11ChangepointV2eeoiySbAE_AEtFZ_0(v44, v45);
      sub_1D158034C(v45, type metadata accessor for SignificantChangeEngine.Changepoint);
      sub_1D158034C(v44, type metadata accessor for SignificantChangeEngine.Changepoint);
      sub_1D158034C(v17, sub_1D148EF2C);
      if (!v46)
      {
        return 0;
      }

      goto LABEL_15;
    }

    sub_1D158034C(v44, type metadata accessor for SignificantChangeEngine.Changepoint);
    goto LABEL_13;
  }

  if (v43(&v17[v40], 1, v42) != 1)
  {
LABEL_13:
    v35 = sub_1D1583900;
    v36 = v17;
    goto LABEL_21;
  }

  sub_1D158034C(v17, sub_1D148EF2C);
LABEL_15:
  v47 = *(v38 + 24);
  v48 = v63;
  v49 = *(v62 + 48);
  sub_1D1455A40(v41 + v47, v63);
  sub_1D1455A40(v31 + v47, v48 + v49);
  v51 = v64;
  v50 = v65;
  v52 = *(v64 + 48);
  if (v52(v48, 1, v65) == 1)
  {
    if (v52(v48 + v49, 1, v50) == 1)
    {
      sub_1D158034C(v48, sub_1D14F104C);
      return 1;
    }

    goto LABEL_20;
  }

  v53 = v60;
  sub_1D1455A40(v48, v60);
  if (v52(v48 + v49, 1, v50) == 1)
  {
    (*(v51 + 8))(v53, v50);
LABEL_20:
    v35 = sub_1D14BDAD0;
    v36 = v48;
    goto LABEL_21;
  }

  v55 = v59;
  (*(v51 + 32))(v59, v48 + v49, v50);
  sub_1D1580304(&qword_1EC630538, MEMORY[0x1E6969530], MEMORY[0x1E6969550]);
  v56 = sub_1D15A3EE8();
  v57 = *(v51 + 8);
  v57(v55, v50);
  v57(v53, v50);
  sub_1D158034C(v48, sub_1D14F104C);
  return (v56 & 1) != 0;
}

BOOL _s19HealthVisualization23SignificantChangeEngineV5StateV14FrequencyShiftV2eeoiySbAG_AGtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SignificantChange(0);
  v53 = *(v4 - 8);
  v54 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v50 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D15800F0(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v51 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D15838E0(0);
  v52 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1D15A26A8();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D14F104C(0);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v50 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D14BDAD0(0);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = &v50 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *(v21 + 56);
  v55 = a1;
  sub_1D1455A40(a1, v20);
  v23 = a2;
  sub_1D1455A40(a2, &v20[v22]);
  v24 = *(v12 + 48);
  if (v24(v20, 1, v11) != 1)
  {
    sub_1D1455A40(v20, v17);
    if (v24(&v20[v22], 1, v11) != 1)
    {
      (*(v12 + 32))(v14, &v20[v22], v11);
      sub_1D1580304(&qword_1EC630538, MEMORY[0x1E6969530], MEMORY[0x1E6969550]);
      v27 = sub_1D15A3EE8();
      v28 = *(v12 + 8);
      v28(v14, v11);
      v28(v17, v11);
      sub_1D158034C(v20, sub_1D14F104C);
      if ((v27 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_8;
    }

    (*(v12 + 8))(v17, v11);
LABEL_6:
    v25 = sub_1D14BDAD0;
    v26 = v20;
LABEL_30:
    sub_1D158034C(v26, v25);
    return 0;
  }

  if (v24(&v20[v22], 1, v11) != 1)
  {
    goto LABEL_6;
  }

  sub_1D158034C(v20, sub_1D14F104C);
LABEL_8:
  v29 = type metadata accessor for SignificantChangeEngine.State.FrequencyShift(0);
  v30 = *(v29 + 20);
  v31 = v55;
  v32 = *(v55 + v30);
  v33 = *(v23 + v30);
  if (v32)
  {
    v34 = 0x6967676F4C746F6ELL;
  }

  else
  {
    v34 = 0x676E6967676F6CLL;
  }

  if (v32)
  {
    v35 = 0xEA0000000000676ELL;
  }

  else
  {
    v35 = 0xE700000000000000;
  }

  if (v33)
  {
    v36 = 0x6967676F4C746F6ELL;
  }

  else
  {
    v36 = 0x676E6967676F6CLL;
  }

  if (v33)
  {
    v37 = 0xEA0000000000676ELL;
  }

  else
  {
    v37 = 0xE700000000000000;
  }

  if (v34 == v36 && v35 == v37)
  {
  }

  else
  {
    v39 = sub_1D15A4BA8();

    if ((v39 & 1) == 0)
    {
      return 0;
    }
  }

  v40 = *(v29 + 24);
  v41 = *(v52 + 48);
  sub_1D15800D8(v31 + v40, v10, v38);
  sub_1D15800D8(v23 + v40, &v10[v41], v42);
  v43 = v54;
  v44 = *(v53 + 48);
  if (v44(v10, 1, v54) == 1)
  {
    if (v44(&v10[v41], 1, v43) == 1)
    {
      sub_1D158034C(v10, sub_1D15800F0);
      return 1;
    }

    goto LABEL_29;
  }

  v46 = v51;
  sub_1D15800D8(v10, v51, v45);
  if (v44(&v10[v41], 1, v43) == 1)
  {
    sub_1D158034C(v46, type metadata accessor for SignificantChange);
LABEL_29:
    v25 = sub_1D15838E0;
    v26 = v10;
    goto LABEL_30;
  }

  v48 = v50;
  sub_1D1580248(&v10[v41], v50, type metadata accessor for SignificantChange);
  v49 = _s19HealthVisualization17SignificantChangeV2eeoiySbAC_ACtFZ_0(v46, v48);
  sub_1D158034C(v48, type metadata accessor for SignificantChange);
  sub_1D158034C(v46, type metadata accessor for SignificantChange);
  sub_1D158034C(v10, sub_1D15800F0);
  return (v49 & 1) != 0;
}

double sub_1D157FEAC(char a1)
{
  if (a1 == 4)
  {
    return 2419200.0;
  }

  if (a1 == 5)
  {
    return 15724800.0;
  }

  v15[9] = v1;
  v15[10] = v2;
  if (qword_1EE056C98 != -1)
  {
    swift_once();
  }

  v4 = sub_1D15A3268();
  __swift_project_value_buffer(v4, qword_1EE056CA0);
  v5 = sub_1D15A3248();
  v6 = sub_1D15A4318();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 136446466;
    v15[0] = v8;
    sub_1D1580090();
    v9 = sub_1D15A3F68();
    v11 = sub_1D1479780(v9, v10, v15);

    *(v7 + 4) = v11;
    *(v7 + 12) = 2082;
    v12 = sub_1D15A3F68();
    v14 = sub_1D1479780(v12, v13, v15);

    *(v7 + 14) = v14;
    _os_log_impl(&dword_1D1446000, v5, v6, "[%{public}s]: Unsupported date range submitted: %{public}s", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1D388BF00](v8, -1, -1);
    MEMORY[0x1D388BF00](v7, -1, -1);
  }

  return 0.0;
}

unint64_t sub_1D1580090()
{
  result = qword_1EC6312D8;
  if (!qword_1EC6312D8)
  {
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_1EC6312D8);
  }

  return result;
}

uint64_t sub_1D158015C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D1580248(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1D15802B0()
{
  result = qword_1EE0585F0[0];
  if (!qword_1EE0585F0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE0585F0);
  }

  return result;
}

uint64_t sub_1D1580304(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1D158034C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1D15803AC()
{
  result = qword_1EC6312E0;
  if (!qword_1EC6312E0)
  {
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_1EC6312E0);
  }

  return result;
}

unint64_t sub_1D15803F4()
{
  result = qword_1EC6312F0;
  if (!qword_1EC6312F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6312F0);
  }

  return result;
}

unint64_t sub_1D1580448()
{
  result = qword_1EC631308;
  if (!qword_1EC631308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC631308);
  }

  return result;
}

unint64_t sub_1D158049C()
{
  result = qword_1EC631310;
  if (!qword_1EC631310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC631310);
  }

  return result;
}

unint64_t sub_1D15804F0()
{
  result = qword_1EC631318;
  if (!qword_1EC631318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC631318);
  }

  return result;
}

unint64_t sub_1D1580544()
{
  result = qword_1EC631328;
  if (!qword_1EC631328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC631328);
  }

  return result;
}

unint64_t sub_1D1580598()
{
  result = qword_1EC631330;
  if (!qword_1EC631330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC631330);
  }

  return result;
}

unint64_t sub_1D15805EC()
{
  result = qword_1EC631340;
  if (!qword_1EC631340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC631340);
  }

  return result;
}

unint64_t sub_1D1580640()
{
  result = qword_1EC631358;
  if (!qword_1EC631358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC631358);
  }

  return result;
}

unint64_t sub_1D1580694()
{
  result = qword_1EC631360;
  if (!qword_1EC631360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC631360);
  }

  return result;
}

unint64_t sub_1D15806E8()
{
  result = qword_1EC631368;
  if (!qword_1EC631368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC631368);
  }

  return result;
}

unint64_t sub_1D158073C()
{
  result = qword_1EC631378;
  if (!qword_1EC631378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC631378);
  }

  return result;
}

unint64_t sub_1D1580790()
{
  result = qword_1EC631380;
  if (!qword_1EC631380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC631380);
  }

  return result;
}

unint64_t sub_1D158090C()
{
  result = qword_1EE058768[0];
  if (!qword_1EE058768[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE058768);
  }

  return result;
}

unint64_t sub_1D1580960()
{
  result = qword_1EE058848;
  if (!qword_1EE058848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE058848);
  }

  return result;
}

unint64_t sub_1D15809B4()
{
  result = qword_1EE058830;
  if (!qword_1EE058830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE058830);
  }

  return result;
}

unint64_t sub_1D1580A08()
{
  result = qword_1EE058820;
  if (!qword_1EE058820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE058820);
  }

  return result;
}

unint64_t sub_1D1580A5C()
{
  result = qword_1EE058860;
  if (!qword_1EE058860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE058860);
  }

  return result;
}

uint64_t sub_1D1580AE4(uint64_t a1)
{
  v1 = *(a1 + 89);
  if (v1 >= 4)
  {
    return v1 - 3;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_1D1580B18()
{
  result = qword_1EE058888[0];
  if (!qword_1EE058888[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE058888);
  }

  return result;
}

unint64_t sub_1D1580B6C()
{
  result = qword_1EE058968;
  if (!qword_1EE058968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE058968);
  }

  return result;
}

unint64_t sub_1D1580BC0()
{
  result = qword_1EE058870;
  if (!qword_1EE058870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE058870);
  }

  return result;
}

void sub_1D1580C14(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

unint64_t sub_1D1580C7C()
{
  result = qword_1EE058868;
  if (!qword_1EE058868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE058868);
  }

  return result;
}

unint64_t sub_1D1580CD4()
{
  result = qword_1EC631388;
  if (!qword_1EC631388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC631388);
  }

  return result;
}

unint64_t sub_1D1580D2C()
{
  result = qword_1EC631390;
  if (!qword_1EC631390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC631390);
  }

  return result;
}

void sub_1D1580DE0(uint64_t a1)
{
  sub_1D15800F0(319);
  if (v1 <= 0x3F)
  {
    sub_1D15801C4(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

__n128 __swift_memcpy209_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v8;
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  result = *(a2 + 160);
  v10 = *(a2 + 176);
  v11 = *(a2 + 192);
  *(a1 + 208) = *(a2 + 208);
  *(a1 + 176) = v10;
  *(a1 + 192) = v11;
  *(a1 + 160) = result;
  return result;
}

uint64_t sub_1D1580EA8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 209))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 105);
  if (v3 <= 4)
  {
    v4 = 4;
  }

  else
  {
    v4 = *(a1 + 105);
  }

  v5 = v4 - 5;
  if (v3 < 4)
  {
    v6 = -1;
  }

  else
  {
    v6 = v5;
  }

  return (v6 + 1);
}

uint64_t sub_1D1580EFC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 200) = 0;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 208) = 0;
    *result = a2 - 252;
    if (a3 >= 0xFC)
    {
      *(result + 209) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 209) = 0;
    }

    if (a2)
    {
      *(result + 105) = a2 + 4;
    }
  }

  return result;
}

__n128 __swift_memcpy41_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1D1580F9C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 41))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D1580FBC(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 41) = v3;
  return result;
}

__n128 __swift_memcpy136_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  *(a1 + 80) = result;
  return result;
}

uint64_t sub_1D1581048(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 136))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 89);
  v4 = v3 >= 4;
  v5 = v3 - 4;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1D158108C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 120) = 0u;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 136) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 136) = 0;
    }

    if (a2)
    {
      *(result + 89) = a2 + 3;
    }
  }

  return result;
}

uint64_t sub_1D1581100(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 56))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D1581120(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 56) = v3;
  return result;
}

uint64_t __swift_get_extra_inhabitant_index_38Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  v11 = a4(0);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v13 = v11;
    v14 = *(v12 + 48);
    v15 = a1;
LABEL_5:

    return v14(v15, a2, v13);
  }

  v16 = a5(0);
  v17 = *(v16 - 8);
  if (*(v17 + 84) == a2)
  {
    v13 = v16;
    v14 = *(v17 + 48);
    v15 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v19 = a6(0);
  v20 = *(*(v19 - 8) + 48);
  v21 = a1 + *(a3 + 24);

  return v20(v21, a2, v19);
}

uint64_t __swift_store_extra_inhabitant_index_39Tm(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(void), uint64_t (*a7)(void))
{
  v13 = a5(0);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v15 = v13;
    v16 = *(v14 + 56);
    v17 = a1;
LABEL_5:

    return v16(v17, a2, a2, v15);
  }

  v18 = a6(0);
  v19 = *(v18 - 8);
  if (*(v19 + 84) == a3)
  {
    v15 = v18;
    v16 = *(v19 + 56);
    v17 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  v21 = a7(0);
  v22 = *(*(v21 - 8) + 56);
  v23 = a1 + *(a4 + 24);

  return v22(v23, a2, a2, v21);
}

uint64_t sub_1D1581504(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t (*a5)(uint64_t), uint64_t (*a6)(uint64_t))
{
  result = a4(319, a2, a3);
  if (v9 <= 0x3F)
  {
    result = a5(319);
    if (v10 <= 0x3F)
    {
      result = a6(319);
      if (v11 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

void sub_1D15815E4(uint64_t a1)
{
  sub_1D14F104C(319);
  if (v1 <= 0x3F)
  {
    sub_1D15800F0(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1D1581680(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 40))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D15816A0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 40) = v3;
  return result;
}

uint64_t sub_1D158170C(uint64_t a1)
{
  result = sub_1D15A26A8();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SignificantChangeEngine.Changepoint.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for SignificantChangeEngine.Changepoint.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1D1581984()
{
  result = qword_1EC631398;
  if (!qword_1EC631398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC631398);
  }

  return result;
}

unint64_t sub_1D15819DC()
{
  result = qword_1EC6313A0;
  if (!qword_1EC6313A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6313A0);
  }

  return result;
}

unint64_t sub_1D1581A34()
{
  result = qword_1EC6313A8;
  if (!qword_1EC6313A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6313A8);
  }

  return result;
}

unint64_t sub_1D1581A8C()
{
  result = qword_1EC6313B0;
  if (!qword_1EC6313B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6313B0);
  }

  return result;
}

unint64_t sub_1D1581AE4()
{
  result = qword_1EC6313B8;
  if (!qword_1EC6313B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6313B8);
  }

  return result;
}

unint64_t sub_1D1581B3C()
{
  result = qword_1EC6313C0;
  if (!qword_1EC6313C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6313C0);
  }

  return result;
}

unint64_t sub_1D1581B94()
{
  result = qword_1EC6313C8;
  if (!qword_1EC6313C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6313C8);
  }

  return result;
}

unint64_t sub_1D1581BEC()
{
  result = qword_1EC6313D0;
  if (!qword_1EC6313D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6313D0);
  }

  return result;
}

unint64_t sub_1D1581C44()
{
  result = qword_1EC6313D8;
  if (!qword_1EC6313D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6313D8);
  }

  return result;
}

unint64_t sub_1D1581C9C()
{
  result = qword_1EC6313E0;
  if (!qword_1EC6313E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6313E0);
  }

  return result;
}

unint64_t sub_1D1581CF4()
{
  result = qword_1EE058958;
  if (!qword_1EE058958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE058958);
  }

  return result;
}

unint64_t sub_1D1581D4C()
{
  result = qword_1EE058960;
  if (!qword_1EE058960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE058960);
  }

  return result;
}

unint64_t sub_1D1581DA4()
{
  result = qword_1EE058878;
  if (!qword_1EE058878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE058878);
  }

  return result;
}

unint64_t sub_1D1581DFC()
{
  result = qword_1EE058880;
  if (!qword_1EE058880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE058880);
  }

  return result;
}

unint64_t sub_1D1581E54()
{
  result = qword_1EE058850;
  if (!qword_1EE058850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE058850);
  }

  return result;
}

unint64_t sub_1D1581EAC()
{
  result = qword_1EE058858;
  if (!qword_1EE058858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE058858);
  }

  return result;
}

unint64_t sub_1D1581F04()
{
  result = qword_1EE058838;
  if (!qword_1EE058838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE058838);
  }

  return result;
}

unint64_t sub_1D1581F5C()
{
  result = qword_1EE058840;
  if (!qword_1EE058840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE058840);
  }

  return result;
}

unint64_t sub_1D1581FB4()
{
  result = qword_1EE058758;
  if (!qword_1EE058758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE058758);
  }

  return result;
}

unint64_t sub_1D158200C()
{
  result = qword_1EE058760;
  if (!qword_1EE058760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE058760);
  }

  return result;
}

unint64_t sub_1D1582064()
{
  result = qword_1EC6313E8;
  if (!qword_1EC6313E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6313E8);
  }

  return result;
}

unint64_t sub_1D15820BC()
{
  result = qword_1EC6313F0;
  if (!qword_1EC6313F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6313F0);
  }

  return result;
}

unint64_t sub_1D1582114()
{
  result = qword_1EC6313F8;
  if (!qword_1EC6313F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6313F8);
  }

  return result;
}

unint64_t sub_1D158216C()
{
  result = qword_1EC631400;
  if (!qword_1EC631400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC631400);
  }

  return result;
}

unint64_t sub_1D15821C4()
{
  result = qword_1EC631408;
  if (!qword_1EC631408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC631408);
  }

  return result;
}

unint64_t sub_1D158221C()
{
  result = qword_1EC631410;
  if (!qword_1EC631410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC631410);
  }

  return result;
}

unint64_t sub_1D1582274()
{
  result = qword_1EC631418;
  if (!qword_1EC631418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC631418);
  }

  return result;
}

unint64_t sub_1D15822CC()
{
  result = qword_1EC631420;
  if (!qword_1EC631420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC631420);
  }

  return result;
}

unint64_t sub_1D1582324()
{
  result = qword_1EE0585E0;
  if (!qword_1EE0585E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0585E0);
  }

  return result;
}

unint64_t sub_1D158237C()
{
  result = qword_1EE0585E8;
  if (!qword_1EE0585E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0585E8);
  }

  return result;
}

uint64_t sub_1D15823D0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x666968536E61656DLL && a2 == 0xEF65676E61684374;
  if (v4 || (sub_1D15A4BA8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x636E657571657266 && a2 == 0xEF65676E61684379 || (sub_1D15A4BA8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6574617473 && a2 == 0xE500000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1D15A4BA8();

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

uint64_t sub_1D15824F4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x506D756D6978616DLL && a2 == 0xED000065756C6156;
  if (v4 || (sub_1D15A4BA8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001D15BE0D0 == a2 || (sub_1D15A4BA8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001D15C24C0 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_1D15A4BA8();

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

uint64_t sub_1D1582620(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C6F687365726874 && a2 == 0xEA00000000007364;
  if (v4 || (sub_1D15A4BA8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001D15C24E0 == a2 || (sub_1D15A4BA8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1701080941 && a2 == 0xE400000000000000 || (sub_1D15A4BA8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001D15BE0F0 == a2 || (sub_1D15A4BA8() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001D15BE110 == a2 || (sub_1D15A4BA8() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000021 && 0x80000001D15C2500 == a2 || (sub_1D15A4BA8() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001D15C2530 == a2)
  {

    return 6;
  }

  else
  {
    v6 = sub_1D15A4BA8();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

uint64_t sub_1D1582878(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6F68736572685470 && a2 == 0xEA0000000000646CLL;
  if (v4 || (sub_1D15A4BA8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001D15BE0F0 == a2 || (sub_1D15A4BA8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001D15BE110 == a2 || (sub_1D15A4BA8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000019 && 0x80000001D15C2550 == a2 || (sub_1D15A4BA8() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001D15C2570 == a2 || (sub_1D15A4BA8() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001D15C2590 == a2 || (sub_1D15A4BA8() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000019 && 0x80000001D15C25B0 == a2)
  {

    return 6;
  }

  else
  {
    v6 = sub_1D15A4BA8();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

uint64_t sub_1D1582AC8(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000012 && 0x80000001D15C25D0 == a2 || (sub_1D15A4BA8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7544776F646E6977 && a2 == 0xEE006E6F69746172 || (sub_1D15A4BA8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x666968536E61656DLL && a2 == 0xE900000000000074 || (sub_1D15A4BA8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x636E657571657266 && a2 == 0xEE00746669685379)
  {

    return 3;
  }

  else
  {
    v5 = sub_1D15A4BA8();

    if (v5)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_1D1582C50(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6843657669746361 && a2 == 0xEC00000065676E61;
  if (v4 || (sub_1D15A4BA8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001D15C25F0 == a2 || (sub_1D15A4BA8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000018 && 0x80000001D15C2610 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_1D15A4BA8();

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

uint64_t sub_1D1582D78(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x697469736E617274 && a2 == 0xEE00657461446E6FLL;
  if (v4 || (sub_1D15A4BA8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1701080941 && a2 == 0xE400000000000000 || (sub_1D15A4BA8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6843657669746361 && a2 == 0xEC00000065676E61)
  {

    return 2;
  }

  else
  {
    v6 = sub_1D15A4BA8();

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

uint64_t sub_1D1582E9C(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000012 && 0x80000001D15C2630 == a2 || (sub_1D15A4BA8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x666968536E61656DLL && a2 == 0xE900000000000074 || (sub_1D15A4BA8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x636E657571657266 && a2 == 0xEE00746669685379)
  {

    return 2;
  }

  else
  {
    v5 = sub_1D15A4BA8();

    if (v5)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1D1582FD0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746E756F63 && a2 == 0xE500000000000000;
  if (v4 || (sub_1D15A4BA8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 7173491 && a2 == 0xE300000000000000 || (sub_1D15A4BA8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x5364657261757173 && a2 == 0xEA00000000006D75 || (sub_1D15A4BA8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 1851876717 && a2 == 0xE400000000000000 || (sub_1D15A4BA8() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x65636E6169726176 && a2 == 0xE800000000000000)
  {

    return 4;
  }

  else
  {
    v6 = sub_1D15A4BA8();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_1D1583184(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1702125924 && a2 == 0xE400000000000000;
  if (v3 || (sub_1D15A4BA8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65756C615670 && a2 == 0xE600000000000000 || (sub_1D15A4BA8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7473655474 && a2 == 0xE500000000000000 || (sub_1D15A4BA8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x666968536E61656DLL && a2 == 0xE900000000000074 || (sub_1D15A4BA8() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001D15C2650 == a2 || (sub_1D15A4BA8() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6953746365666665 && a2 == 0xEA0000000000657ALL || (sub_1D15A4BA8() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 12908 && a2 == 0xE200000000000000 || (sub_1D15A4BA8() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 7563372 && a2 == 0xE300000000000000 || (sub_1D15A4BA8() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 7563378 && a2 == 0xE300000000000000)
  {

    return 8;
  }

  else
  {
    v6 = sub_1D15A4BA8();

    if (v6)
    {
      return 8;
    }

    else
    {
      return 9;
    }
  }
}

unint64_t sub_1D1583468()
{
  result = qword_1EE058828;
  if (!qword_1EE058828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE058828);
  }

  return result;
}

unint64_t sub_1D15834BC()
{
  result = qword_1EC631428;
  if (!qword_1EC631428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC631428);
  }

  return result;
}

void sub_1D1583598(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    sub_1D15A22A8();
    a3(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v6)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t sub_1D15836B8(uint64_t a1, uint64_t a2)
{
  sub_1D1580AB0(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_1D1583770(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1D15837D4(uint64_t a1)
{
  if (!qword_1EE0567D8)
  {
    sub_1D148EF60(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EE0567D8);
    }
  }
}

void sub_1D1583880(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

unint64_t sub_1D1583940()
{
  result = qword_1EC631458;
  if (!qword_1EC631458)
  {
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_1EC631458);
  }

  return result;
}

void CountComparisonQueryConfiguration.firstDurationCondition.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v2;
}

uint64_t CountComparisonQueryConfiguration.firstDurationCondition.setter(uint64_t result)
{
  v2 = *(result + 8);
  *v1 = *result;
  *(v1 + 8) = v2;
  return result;
}

void CountComparisonQueryConfiguration.secondDurationCondition.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = *(v1 + 16);
  *(a1 + 8) = v2;
}

uint64_t CountComparisonQueryConfiguration.secondDurationCondition.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 16) = *result;
  *(v1 + 24) = v2;
  return result;
}

uint64_t CountComparisonQueryConfiguration.init(firstDurationCondition:secondDurationCondition:)@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(result + 8);
  v4 = *a2;
  v5 = *(a2 + 8);
  *a3 = *result;
  *(a3 + 8) = v3;
  *(a3 + 16) = v4;
  *(a3 + 24) = v5;
  return result;
}

unint64_t sub_1D1583AAC()
{
  if (*v0)
  {
    return 0xD000000000000017;
  }

  else
  {
    return 0xD000000000000016;
  }
}

void sub_1D1583AE4(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000016 && 0x80000001D15C26C0 == a2 || (sub_1D15A4BA8() & 1) != 0)
  {

    v6 = 0;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001D15C26E0 == a2)
  {

    v6 = 1;
  }

  else
  {
    v7 = sub_1D15A4BA8();

    if (v7)
    {
      v6 = 1;
    }

    else
    {
      v6 = 2;
    }
  }

  *a3 = v6;
}

uint64_t sub_1D1583BC8(uint64_t a1)
{
  v2 = sub_1D15846E8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1583C04(uint64_t a1)
{
  v2 = sub_1D15846E8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t CountComparisonQueryConfiguration.encode(to:)(void *a1)
{
  sub_1D1584838(0, &qword_1EC631460, sub_1D15846E8, &type metadata for CountComparisonQueryConfiguration.CodingKeys, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v12 - v6;
  v8 = *v1;
  v9 = *(v1 + 8);
  v12[0] = v1[2];
  v15 = *(v1 + 24);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D15846E8();
  sub_1D15A4CE8();
  v13 = v8;
  v14 = v9;
  v16 = 0;
  sub_1D158473C();
  v10 = v12[1];
  sub_1D15A4AE8();
  if (!v10)
  {
    v13 = v12[0];
    v14 = v15;
    v16 = 1;
    sub_1D15A4AE8();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t CountComparisonQueryConfiguration.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  sub_1D1584838(0, &qword_1EC631478, sub_1D15846E8, &type metadata for CountComparisonQueryConfiguration.CodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v16 - v7;
  v20 = 1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D15846E8();
  sub_1D15A4CD8();
  if (!v2)
  {
    v9 = v6;
    v10 = v17;
    v21 = 0;
    sub_1D1584790();
    sub_1D15A4A28();
    v11 = v18;
    v20 = v19;
    v21 = 1;
    sub_1D15A4A28();
    (*(v9 + 8))(v8, v5);
    v13 = v18;
    v14 = v19;
    v15 = v20;
    *v10 = v11;
    *(v10 + 8) = v15;
    *(v10 + 16) = v13;
    *(v10 + 24) = v14;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_1D158409C(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000014 && 0x80000001D15C2700 == a2)
  {

    v4 = 0;
  }

  else
  {
    v5 = sub_1D15A4BA8();

    v4 = v5 ^ 1;
  }

  *a3 = v4 & 1;
}

uint64_t sub_1D1584130(uint64_t a1)
{
  v2 = sub_1D15847E4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D158416C(uint64_t a1)
{
  v2 = sub_1D15847E4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t CountComparisonQueryConfiguration.DurationCondition.encode(to:)(void *a1)
{
  sub_1D1584838(0, &qword_1EC631488, sub_1D15847E4, &type metadata for CountComparisonQueryConfiguration.DurationCondition.CodingKeys, MEMORY[0x1E69E6F58]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D15847E4();
  sub_1D15A4CE8();
  sub_1D15A4B18();
  return (*(v4 + 8))(v6, v3);
}

void CountComparisonQueryConfiguration.DurationCondition.init(from:)(void *a1@<X0>, void *a2@<X8>)
{
  v14 = a2;
  sub_1D1584838(0, &qword_1EC631498, sub_1D15847E4, &type metadata for CountComparisonQueryConfiguration.DurationCondition.CodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v13 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D15847E4();
  sub_1D15A4CD8();
  if (v2)
  {
    goto LABEL_4;
  }

  v9 = v14;
  v10 = *(sub_1D15A4A88() + 16);

  if (v10)
  {
    sub_1D15A4A58();
    v12 = v11;
    (*(v6 + 8))(v8, v5);
    *v9 = v12;
LABEL_4:
    __swift_destroy_boxed_opaque_existential_1(a1);
    return;
  }

  __break(1u);
}

uint64_t sub_1D158450C(void *a1)
{
  sub_1D1584838(0, &qword_1EC631488, sub_1D15847E4, &type metadata for CountComparisonQueryConfiguration.DurationCondition.CodingKeys, MEMORY[0x1E69E6F58]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D15847E4();
  sub_1D15A4CE8();
  sub_1D15A4B18();
  return (*(v4 + 8))(v6, v3);
}

BOOL _s19HealthVisualization33CountComparisonQueryConfigurationV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  v3 = *(a2 + 24);
  if (*(a1 + 8))
  {
    if (!*(a2 + 8))
    {
      return 0;
    }
  }

  else
  {
    if (*a1 != *a2)
    {
      v2 = 1;
    }

    if (v2)
    {
      return 0;
    }
  }

  if ((*(a1 + 24) & 1) == 0)
  {
    if (*(a1 + 16) != *(a2 + 16))
    {
      v3 = 1;
    }

    return (v3 & 1) == 0;
  }

  return (*(a2 + 24) & 1) != 0;
}

unint64_t sub_1D15846E8()
{
  result = qword_1EC631468;
  if (!qword_1EC631468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC631468);
  }

  return result;
}

unint64_t sub_1D158473C()
{
  result = qword_1EC631470;
  if (!qword_1EC631470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC631470);
  }

  return result;
}

unint64_t sub_1D1584790()
{
  result = qword_1EC631480;
  if (!qword_1EC631480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC631480);
  }

  return result;
}

unint64_t sub_1D15847E4()
{
  result = qword_1EC631490;
  if (!qword_1EC631490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC631490);
  }

  return result;
}

void sub_1D1584838(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

uint64_t getEnumTagSinglePayload for DiagramConfiguration.PointLabelMinMaxSet(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for DiagramConfiguration.PointLabelMinMaxSet(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 8) = v3;
  return result;
}

unint64_t sub_1D158492C()
{
  result = qword_1EC6314A0;
  if (!qword_1EC6314A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6314A0);
  }

  return result;
}

unint64_t sub_1D1584984()
{
  result = qword_1EC6314A8;
  if (!qword_1EC6314A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6314A8);
  }

  return result;
}

unint64_t sub_1D15849DC()
{
  result = qword_1EC6314B0;
  if (!qword_1EC6314B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6314B0);
  }

  return result;
}

unint64_t sub_1D1584A34()
{
  result = qword_1EC6314B8;
  if (!qword_1EC6314B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6314B8);
  }

  return result;
}

unint64_t sub_1D1584A8C()
{
  result = qword_1EC6314C0;
  if (!qword_1EC6314C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6314C0);
  }

  return result;
}

unint64_t sub_1D1584AE4()
{
  result = qword_1EC6314C8;
  if (!qword_1EC6314C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6314C8);
  }

  return result;
}

uint64_t QuantityCodableCurrentValueSnidgetViewModelExtractor.MostRecentSnidgetFormatter.SupplementaryFormatInformation.init(snippetSupplementaryLabelConfiguration:sampleCount:dateInterval:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v9 = *a1;
  *a5 = 2;
  v10 = *(type metadata accessor for QuantityCodableCurrentValueSnidgetViewModelExtractor.MostRecentSnidgetFormatter.SupplementaryFormatInformation(0) + 24);
  v11 = sub_1D15A22A8();
  (*(*(v11 - 8) + 56))(a5 + v10, 1, 1, v11);
  *a5 = v9;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3 & 1;
  return sub_1D15852FC(a4, a5 + v10, sub_1D1491C64);
}

uint64_t QuantityCodableCurrentValueSnidgetViewModelExtractor.MostRecentSnidgetFormatter.init(displayType:quantity:healthStore:unitMode:unitPreferenceController:forceDayGranularity:hasIndeterminateBaseline:supplementaryFormatInformation:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, char a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v13 = *a4;
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = v13;
  *(a9 + 24) = a6;
  *(a9 + 25) = a7;
  v14 = type metadata accessor for QuantityCodableCurrentValueSnidgetViewModelExtractor.MostRecentSnidgetFormatter(0);
  sub_1D1584E98(a8, a9 + *(v14 + 36), type metadata accessor for QuantityCodableCurrentValueSnidgetViewModelExtractor.MostRecentSnidgetFormatter.SupplementaryFormatInformation);
  type metadata accessor for MostRecentSampleSnidgetStringBuilder();
  v15 = swift_allocObject();
  v15[2] = a3;
  v16 = objc_opt_self();
  v17 = a3;
  v15[4] = [v16 sharedInstanceForHealthStore_];

  v15[3] = a5;
  result = sub_1D1584F00(a8, type metadata accessor for QuantityCodableCurrentValueSnidgetViewModelExtractor.MostRecentSnidgetFormatter.SupplementaryFormatInformation);
  *(a9 + *(v14 + 40)) = v15;
  return result;
}

uint64_t QuantityCodableCurrentValueSnidgetViewModelExtractor.SampleCountSnidgetFormatter.init(displayType:quantity:healthStore:unitPreferenceController:supplementaryFormatInformation:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  *(a6 + 16) = 0;
  *a6 = a1;
  *(a6 + 8) = a2;
  v10 = type metadata accessor for QuantityCodableCurrentValueSnidgetViewModelExtractor.SampleCountSnidgetFormatter(0);
  sub_1D1584E98(a5, a6 + *(v10 + 28), type metadata accessor for QuantityCodableCurrentValueSnidgetViewModelExtractor.SampleCountSnidgetFormatter.SupplementaryFormatInformation);
  type metadata accessor for SampleCountSnidgetStringBuilder();
  v11 = swift_allocObject();
  v11[2] = a3;
  v12 = objc_opt_self();
  v13 = a3;
  v11[4] = [v12 sharedInstanceForHealthStore_];

  v11[3] = a4;
  result = sub_1D1584F00(a5, type metadata accessor for QuantityCodableCurrentValueSnidgetViewModelExtractor.SampleCountSnidgetFormatter.SupplementaryFormatInformation);
  *(a6 + *(v10 + 32)) = v11;
  return result;
}

uint64_t sub_1D1584E98(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D1584F00(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D1584F78@<X0>(char *a1@<X0>, char *a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t (*a7)(void)@<X6>, uint64_t a8@<X8>)
{
  v13 = *a1;
  v14 = *a2;
  *a8 = 2562;
  v15 = *(a7(0) + 32);
  v16 = sub_1D15A22A8();
  (*(*(v16 - 8) + 56))(a8 + v15, 1, 1, v16);
  *a8 = v13;
  *(a8 + 1) = v14;
  *(a8 + 2) = a3;
  *(a8 + 8) = a4;
  *(a8 + 16) = a5 & 1;
  return sub_1D15852FC(a6, a8 + v15, sub_1D1491C64);
}

uint64_t QuantityCodableCurrentValueSnidgetViewModelExtractor.StatisticsSnidgetFormatter.init(displayType:quantity:healthStore:unitMode:unitPreferenceController:supplementaryFormatInformation:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v11 = *a4;
  *(a7 + 24) = 0;
  *a7 = a1;
  *(a7 + 8) = a2;
  *(a7 + 16) = v11;
  v12 = type metadata accessor for QuantityCodableCurrentValueSnidgetViewModelExtractor.StatisticsSnidgetFormatter(0);
  sub_1D1584E98(a6, a7 + *(v12 + 32), type metadata accessor for QuantityCodableCurrentValueSnidgetViewModelExtractor.StatisticsSnidgetFormatter.SupplementaryFormatInformation);
  type metadata accessor for StatisticsSnidgetStringBuilder();
  v13 = swift_allocObject();
  v13[2] = a3;
  v14 = objc_opt_self();
  v15 = a3;
  v13[4] = [v14 sharedInstanceForHealthStore_];

  v13[3] = a5;
  result = sub_1D1584F00(a6, type metadata accessor for QuantityCodableCurrentValueSnidgetViewModelExtractor.StatisticsSnidgetFormatter.SupplementaryFormatInformation);
  *(a7 + *(v12 + 36)) = v13;
  return result;
}

void QuantityCodableCurrentValueSnidgetViewModelExtractor.DefaultSnidgetFormatter.init(displayType:quantity:unitMode:healthStore:unitPreferenceController:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, void *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v9 = *a3;
  *(a6 + 32) = 0;
  *a6 = a1;
  *(a6 + 8) = a2;
  *(a6 + 16) = v9;
  type metadata accessor for SnidgetStringBuilder();
  v10 = swift_allocObject();
  v10[2] = a4;
  v11 = objc_opt_self();
  v12 = a4;
  v10[4] = [v11 sharedInstanceForHealthStore_];

  v10[3] = a5;
  *(a6 + 24) = v10;
}

uint64_t sub_1D15852FC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

void QuantityCodableCurrentValueSnidgetViewModelExtractor.StatisticsSnidgetFormatter.primaryString.getter(char *a1@<X8>)
{
  type metadata accessor for QuantityCodableCurrentValueSnidgetViewModelExtractor.StatisticsSnidgetFormatter(0);
  v3 = *v1;
  v4 = *(v1 + 8);
  v7 = *(v1 + 16);
  v5 = v7;
  sub_1D14A0AB0(v3, v4, &v7, a1);
  v6 = v7;
}

uint64_t QuantityCodableCurrentValueSnidgetViewModelExtractor.StatisticsSnidgetFormatter.displayableValue.getter()
{
  v1 = v0;
  v2 = *(v0 + *(type metadata accessor for QuantityCodableCurrentValueSnidgetViewModelExtractor.StatisticsSnidgetFormatter(0) + 36));
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  if (v5)
  {
    v6 = v1[2];
  }

  else
  {
    v6 = [*(v2 + 24) unitForChartingDisplayType_];
    if (!v6)
    {
      v6 = [v4 _unit];
    }
  }

  v7 = v5;
  v8 = sub_1D14A1764(v3, v4, v6);
  if (v9)
  {

    return 0;
  }

  else
  {
    v11 = *&v8;
    v12 = [v3 presentation];
    v13 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
    v14 = [v12 adjustedValueForDaemonValue_];

    [v14 doubleValue];
    v16 = v15;

    return v16;
  }
}

uint64_t QuantityCodableCurrentValueSnidgetViewModelExtractor.StatisticsSnidgetFormatter.supplementaryString.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1D15A2458();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D1491C64(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1D15A22A8();
  v48 = *(v9 - 8);
  v49 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D149D54C(0);
  v13 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v15 = v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for QuantityCodableCurrentValueSnidgetViewModelExtractor.StatisticsSnidgetFormatter.SupplementaryFormatInformation(0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = v46 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = (v1 + *(type metadata accessor for QuantityCodableCurrentValueSnidgetViewModelExtractor.StatisticsSnidgetFormatter(0) + 32));
  v20 = *v19;
  if (v20 != 2)
  {
    v46[1] = v5;
    v47 = a1;
    v24 = v19[1];
    v25 = *(v19 + 1);
    v26 = v19[16];
    sub_1D1584E98(v19, v18, type metadata accessor for QuantityCodableCurrentValueSnidgetViewModelExtractor.StatisticsSnidgetFormatter.SupplementaryFormatInformation);
    v27 = *(v16 + 32);
    *v15 = v25;
    v15[8] = v26;
    v28 = *(v13 + 48);
    v29 = v18;
    v30 = &v18[v27];
    v31 = v27;
    sub_1D1584E98(v30, &v15[v28], sub_1D1491C64);
    if (v20)
    {
      sub_1D1584E98(&v15[v28], v8, sub_1D1491C64);
      v32 = v48;
      v33 = v49;
      v34 = v15;
      if ((*(v48 + 48))(v8, 1, v49) == 1)
      {
        sub_1D1584F00(v15, sub_1D149D54C);
        v35 = sub_1D1491C64;
        v36 = v8;
LABEL_22:
        sub_1D1584F00(v36, v35);
        v44 = 1;
        v38 = v47;
        v40 = v29;
LABEL_32:
        v45 = sub_1D15A23F8();
        (*(*(v45 - 8) + 56))(v38, v44, 1, v45);
        return sub_1D1584F00(&v40[v31], sub_1D1491C64);
      }

      (*(v32 + 32))(v11, v8, v33);
      v37 = [objc_opt_self() hk_mediumMonthDayDateIntervalFormatter];
      v38 = v47;
      v39 = v32;
      v40 = v29;
      if (v37)
      {
        v41 = v37;
        v42 = sub_1D15A2228();
        v43 = [v41 stringFromDateInterval_];

        if (v43)
        {
          sub_1D15A3F38();

          (*(v48 + 8))(v11, v49);
LABEL_31:

          sub_1D15A2448();
          sub_1D15A2408();
          v50 = sub_1D15A3068();
          sub_1D149D7C8();
          sub_1D15A2418();
          v50 = [objc_opt_self() secondaryLabelColor];
          sub_1D149D81C();
          sub_1D15A2418();

          sub_1D1584F00(v34, sub_1D149D54C);
          v44 = 0;
          goto LABEL_32;
        }

        (*(v48 + 8))(v11, v49);
      }

      else
      {
        (*(v39 + 8))(v11, v33);
      }

      sub_1D1584F00(v15, sub_1D149D54C);
      v44 = 1;
      goto LABEL_32;
    }

    if (v24 <= 4)
    {
      if (v24)
      {
        goto LABEL_27;
      }
    }

    else if (v24 > 7)
    {
      if (v24 != 9)
      {
        goto LABEL_21;
      }
    }

    else if (v24 != 6)
    {
LABEL_27:
      v38 = v47;
LABEL_28:
      if (qword_1EE059700 != -1)
      {
        swift_once();
      }

      sub_1D15A2438();

      v40 = v29;
      v34 = v15;
      goto LABEL_31;
    }

    if ((v26 & 1) == 0)
    {
      v38 = v47;
      if (v25 <= 1)
      {
        sub_1D1584F00(v15, sub_1D149D54C);
        v44 = 1;
        v40 = v29;
        goto LABEL_32;
      }

      goto LABEL_28;
    }

LABEL_21:
    v35 = sub_1D149D54C;
    v36 = v15;
    goto LABEL_22;
  }

  v21 = sub_1D15A23F8();
  v22 = *(*(v21 - 8) + 56);

  return v22(a1, 1, 1, v21);
}

uint64_t QuantityCodableCurrentValueSnidgetViewModelExtractor.StatisticsSnidgetFormatter.hasIndeterminateBaseline.getter()
{
  type metadata accessor for QuantityCodableCurrentValueSnidgetViewModelExtractor.StatisticsSnidgetFormatter(0);
  v1 = *v0;
  v2 = *(v0 + 8);
  v6 = *(v0 + 16);
  v3 = v6;
  v4 = sub_1D14A101C(v1, v2, &v6);

  return v4 & 1;
}

void sub_1D1585E70(char *a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  v7 = *(v1 + 16);
  v5 = v7;
  sub_1D14A0AB0(v3, v4, &v7, a1);
  v6 = v7;
}

uint64_t sub_1D1585EF4()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v6 = *(v0 + 16);
  v3 = v6;
  v4 = sub_1D14A101C(v1, v2, &v6);

  return v4 & 1;
}

void QuantityCodableCurrentValueSnidgetViewModelExtractor.SampleCountSnidgetFormatter.primaryString.getter(void *a1@<X8>)
{
  type metadata accessor for QuantityCodableCurrentValueSnidgetViewModelExtractor.SampleCountSnidgetFormatter(0);
  v4 = *v1;
  v3 = *(v1 + 8);
  v6 = [objc_opt_self() countUnit];
  sub_1D14A1FE8(v4, v3, &v6, a1);
  v5 = v6;
}

uint64_t QuantityCodableCurrentValueSnidgetViewModelExtractor.SampleCountSnidgetFormatter.displayableValue.getter()
{
  type metadata accessor for QuantityCodableCurrentValueSnidgetViewModelExtractor.SampleCountSnidgetFormatter(0);
  v2 = *v0;
  v1 = *(v0 + 8);
  v3 = objc_opt_self();
  v4 = [v3 countUnit];
  v5 = [v3 countUnit];
  sub_1D14A1764(v2, v1, v5);
  if (v6)
  {

    return 0;
  }

  else
  {
    v8 = sub_1D15A29A8();
    [v8 doubleValue];
    v10 = v9;

    return v10;
  }
}

id QuantityCodableCurrentValueSnidgetViewModelExtractor.SampleCountSnidgetFormatter.preferredUnit.getter()
{
  v0 = [objc_opt_self() countUnit];

  return v0;
}

uint64_t QuantityCodableCurrentValueSnidgetViewModelExtractor.SampleCountSnidgetFormatter.supplementaryString.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1D15A2458();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D1491C64(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1D15A22A8();
  v48 = *(v9 - 8);
  v49 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D149D54C(0);
  v13 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v15 = v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for QuantityCodableCurrentValueSnidgetViewModelExtractor.SampleCountSnidgetFormatter.SupplementaryFormatInformation(0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = v46 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = (v1 + *(type metadata accessor for QuantityCodableCurrentValueSnidgetViewModelExtractor.SampleCountSnidgetFormatter(0) + 28));
  v20 = *v19;
  if (v20 != 2)
  {
    v46[1] = v5;
    v47 = a1;
    v24 = v19[1];
    v25 = *(v19 + 1);
    v26 = v19[16];
    sub_1D1584E98(v19, v18, type metadata accessor for QuantityCodableCurrentValueSnidgetViewModelExtractor.SampleCountSnidgetFormatter.SupplementaryFormatInformation);
    v27 = *(v16 + 32);
    *v15 = v25;
    v15[8] = v26;
    v28 = *(v13 + 48);
    v29 = v18;
    v30 = &v18[v27];
    v31 = v27;
    sub_1D1584E98(v30, &v15[v28], sub_1D1491C64);
    if (v20)
    {
      sub_1D1584E98(&v15[v28], v8, sub_1D1491C64);
      v32 = v48;
      v33 = v49;
      v34 = v15;
      if ((*(v48 + 48))(v8, 1, v49) == 1)
      {
        sub_1D1584F00(v15, sub_1D149D54C);
        v35 = sub_1D1491C64;
        v36 = v8;
LABEL_22:
        sub_1D1584F00(v36, v35);
        v44 = 1;
        v38 = v47;
        v40 = v29;
LABEL_32:
        v45 = sub_1D15A23F8();
        (*(*(v45 - 8) + 56))(v38, v44, 1, v45);
        return sub_1D1584F00(&v40[v31], sub_1D1491C64);
      }

      (*(v32 + 32))(v11, v8, v33);
      v37 = [objc_opt_self() hk_mediumMonthDayDateIntervalFormatter];
      v38 = v47;
      v39 = v32;
      v40 = v29;
      if (v37)
      {
        v41 = v37;
        v42 = sub_1D15A2228();
        v43 = [v41 stringFromDateInterval_];

        if (v43)
        {
          sub_1D15A3F38();

          (*(v48 + 8))(v11, v49);
LABEL_31:

          sub_1D15A2448();
          sub_1D15A2408();
          v50 = sub_1D15A3068();
          sub_1D149D7C8();
          sub_1D15A2418();
          v50 = [objc_opt_self() secondaryLabelColor];
          sub_1D149D81C();
          sub_1D15A2418();

          sub_1D1584F00(v34, sub_1D149D54C);
          v44 = 0;
          goto LABEL_32;
        }

        (*(v48 + 8))(v11, v49);
      }

      else
      {
        (*(v39 + 8))(v11, v33);
      }

      sub_1D1584F00(v15, sub_1D149D54C);
      v44 = 1;
      goto LABEL_32;
    }

    if (v24 <= 4)
    {
      if (v24)
      {
        goto LABEL_27;
      }
    }

    else if (v24 > 7)
    {
      if (v24 != 9)
      {
        goto LABEL_21;
      }
    }

    else if (v24 != 6)
    {
LABEL_27:
      v38 = v47;
LABEL_28:
      if (qword_1EE059700 != -1)
      {
        swift_once();
      }

      sub_1D15A2438();

      v40 = v29;
      v34 = v15;
      goto LABEL_31;
    }

    if ((v26 & 1) == 0)
    {
      v38 = v47;
      if (v25 <= 1)
      {
        sub_1D1584F00(v15, sub_1D149D54C);
        v44 = 1;
        v40 = v29;
        goto LABEL_32;
      }

      goto LABEL_28;
    }

LABEL_21:
    v35 = sub_1D149D54C;
    v36 = v15;
    goto LABEL_22;
  }

  v21 = sub_1D15A23F8();
  v22 = *(*(v21 - 8) + 56);

  return v22(a1, 1, 1, v21);
}

void sub_1D1586B40(void *a1@<X8>)
{
  v4 = *v1;
  v3 = *(v1 + 8);
  v6 = [objc_opt_self() countUnit];
  sub_1D14A1FE8(v4, v3, &v6, a1);
  v5 = v6;
}

uint64_t QuantityCodableCurrentValueSnidgetViewModelExtractor.MostRecentSnidgetFormatter.SupplementaryFormatInformation.sampleCount.setter(uint64_t result, char a2)
{
  *(v2 + 8) = result;
  *(v2 + 16) = a2 & 1;
  return result;
}

id QuantityCodableCurrentValueSnidgetViewModelExtractor.MostRecentSnidgetFormatter.unitMode.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = v2;
  return v2;
}

void QuantityCodableCurrentValueSnidgetViewModelExtractor.MostRecentSnidgetFormatter.unitMode.setter(uint64_t *a1)
{
  v2 = *a1;

  *(v1 + 16) = v2;
}