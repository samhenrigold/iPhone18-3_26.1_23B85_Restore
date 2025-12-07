uint64_t sub_1000A6000@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X3>, uint64_t a4@<X4>, void *a5@<X8>)
{
  v6 = *result;
  if (!*a2 || *(*a2 + 104) == 1) && (result = sub_1000AAD88(a3, a4), (result))
  {
    *a5 = v6;
  }

  else
  {
    *a5 = 0;
  }

  return result;
}

void *sub_1000A6070(uint64_t a1)
{
  __chkstk_darwin(a1);
  v2 = v1;
  v4 = v3;
  sub_1001F0068(__src);
  memcpy(__dst, __src, 0x379uLL);
  if (sub_1000AC5DC(__dst) != 1)
  {
    v5 = *(v2 + 48);

    sub_1000E32F8(v5, v7);
    debugOnly(_:)();
    memcpy(v8, &__src[72], 0x139uLL);
    sub_1000374B8(v8, &qword_1002ADF78, &qword_1002011D0);
    memcpy(&__src[72], v7, 0x139uLL);
  }

  memcpy(v7, __src, 0x379uLL);
  memcpy(v8, __src, 0x379uLL);
  sub_1000ACFAC();
  sub_1000374B8(v8, &qword_1002B23A0, &unk_100208790);
  return memcpy(v4, v7, 0x379uLL);
}

void sub_1000A61A8(uint64_t a1)
{
  __chkstk_darwin(a1);
  v3 = v2;
  v4 = v1;
  v124 = v5;
  v139 = v6;
  v134 = v7;
  v126 = v8;
  v10 = v9;
  v12 = v11;
  v130 = *v4;
  v13 = sub_1000183C4(&unk_1002B3450, &qword_100202EE0);
  sub_100056658(v13);
  sub_10001E844();
  __chkstk_darwin(v14);
  sub_1000AD8B4();
  v123 = v15;
  sub_1000AD8A8();
  v136 = sub_1001F6508();
  sub_10001A278();
  __chkstk_darwin(v16);
  sub_100023510();
  v133 = v10;
  sub_1001983D4();
  if (v17)
  {
    v122 = v12;
    type metadata accessor for OctaneSubscription();
    sub_1000AD710();
    v18 = swift_dynamicCastClass();
    if (!v18)
    {
      goto LABEL_24;
    }

    v120 = v18;
    v19 = sub_1000AD4F0();
    sub_10001AE68(v19, v20);
    sub_1000AD710();

    sub_1001F64E8();
    v21 = sub_10008D53C();
    v22 = sub_1000AD870();
    v24 = v23;
    v23(v22);
    if (!v21)
    {
      goto LABEL_17;
    }

    v25 = sub_1000C5464(4);
    if ((v26 & 1) != 0 || (v117 = v21, *(v133 + 408)) || *(v133 + 536))
    {

LABEL_18:
      v44 = sub_1000AD4F0();
      sub_10001AE68(v44, v45);
      sub_1000AD710();

      sub_1001F64E8();
      v46 = sub_1000F04DC(v120, v134, v139, 1);
      v47 = sub_1000AD870();
      v24(v47);
      if (v46)
      {
        v48 = sub_1000AD680();
        sub_10001AE68(v48, v49);
        v50 = sub_1000BFC14();
        v52 = v51;
        sub_1000795A8(v134, v139);
        v53 = sub_1000EE5B8(v50, v52);

        if (v53)
        {
          sub_1000A577C();
          if (v2)
          {

            return;
          }

          v57 = v186;
          memcpy(v143, v188, 0x90uLL);
          v58 = swift_dynamicCastClass();
          if (v58)
          {
            v59 = v58;
            v136 = v187[0];
            v60 = v187[1];
            v132 = v187[2];
            v61 = v187[3];
            v62 = v187[4];
            v211 = v57;

            sub_1000374B8(&v211, &qword_1002AD560, &unk_1002087E0);
            memcpy(v145, &v187[5], 0x50uLL);
            memcpy(&v141[8], &v187[5], 0x50uLL);
            v141[0] = v46;
            v141[1] = v53;
            v141[2] = v136;
            v141[3] = v60;
            v141[4] = v132;
            v141[5] = v61;
            v141[6] = v62;
            v141[7] = v59;
            debugOnly(_:)();
            memcpy(v147, v188, 0x90uLL);

            sub_10007B844(v145, &v146);
            v63 = v46;

            sub_1000374B8(v147, &qword_1002B1910, &qword_1002076B0);
            memcpy(v143, v141, 0x90uLL);
            v57 = 0;
          }

          memcpy(v217, v185, 0x60uLL);
          v217[12] = v57;
          memcpy(v218, v187, sizeof(v218));
          memcpy(v219, v143, sizeof(v219));
          v220 = v189;
          v221 = v190;
          sub_1000ACEF4(v217, v147);
          sub_100056C08(v217, v191);

          memcpy(v147, v185, 0x60uLL);
          *&v147[6] = v57;
          memcpy(&v147[6] + 8, v187, 0x78uLL);
          memcpy(&v147[14], v143, 0x90uLL);
          v148 = v189;
          v149 = v190;
          sub_1000ACF50(v147);
          v154 = v191[0];
          v155 = v191[1];
          v156 = v191[2];
          v153 = v192;
          v152[0] = v193[0];
          *(v152 + 3) = *(v193 + 3);
          v131 = v194;
          sub_1000AD978(v195);
          v125 = v196;
          v150[0] = *v197;
          *(v150 + 3) = *&v197[3];
          v118 = v198;
          v56 = v199;
          v121 = v200;
          v55 = v139;
          v54 = v133;
          goto LABEL_29;
        }
      }

      v3 = v2;
LABEL_24:
      v54 = v133;
      v55 = v139;
      sub_1000A577C();
      if (v3)
      {
        return;
      }

      sub_100056C08(v201, v202);
      v154 = v202[0];
      v155 = v202[1];
      v156 = v202[2];
      v152[0] = v203[0];
      *(v152 + 3) = *(v203 + 3);
      v131 = v204;
      sub_1000AD978(v205);
      v125 = v206;
      v150[0] = *v207;
      *(v150 + 3) = *&v207[3];
      v118 = v208;
      v56 = v209;
      v121 = v210;
LABEL_29:
      memcpy(v222, v54 + 72, 0x139uLL);
      v128 = v56;
      if (sub_1000AC6F8(v222) == 1)
      {
        v64 = 0;
        v65 = 0;
        v66 = v134;
        v67 = v136;
LABEL_37:
        v137 = v67;
        v70 = v66;
        v71 = v64;
        v72 = sub_1000AA1A4(v70, v55, v64, v65);
        sub_100037408(v71, v65);

        v73 = v72[2];
        v153 = 0;
        v147[0] = v154;
        v147[1] = v155;
        v147[2] = v156;
        v135 = v73;
        *&v147[3] = v73;
        BYTE8(v147[3]) = 0;
        *(&v147[3] + 9) = v152[0];
        HIDWORD(v147[3]) = *(v152 + 3);
        v140 = v72;
        *&v147[4] = v72;
        *(&v147[4] + 1) = v131;
        *&v147[5] = v67;
        memcpy(&v147[5] + 8, v151, 0x58uLL);
        v35 = v125;
        LOBYTE(v147[11]) = v125;
        *(&v147[11] + 1) = v150[0];
        DWORD1(v147[11]) = *(v150 + 3);
        v40 = v118;
        *(&v147[11] + 8) = v118;
        *(&v147[12] + 1) = v128;
        v37 = v121;
        LOBYTE(v147[13]) = v121;
        v122[3] = &type metadata for LegacyInAppBuyResponse;
        v122[4] = sub_1000AC7BC();
        sub_1000AD4FC();
        v74 = swift_allocObject();
        *v122 = v74;
        sub_100057E10(v147, v143);
        sub_100037408(v71, v65);
        v75 = (v74 + 16);
        v36 = v128;
        v34 = *(&v118 + 1);
        memcpy(v75, v147, 0xD1uLL);
        v39 = 0;
        goto LABEL_38;
      }

      if (v222[312])
      {

        v66 = v134;
        v67 = v136;
      }

      else
      {
        sub_1000AD5DC();
        sub_1001F7EA8();
        sub_1000AD8C0();

        v66 = v134;
        v67 = v136;
        if ((v56 & 1) == 0)
        {
          goto LABEL_36;
        }
      }

      v68 = v54[63];
      if (v68)
      {
        sub_1000AA9A4(v54[62], v68);
        v65 = v69;

        v64 = sub_1000AC7B0;
        goto LABEL_37;
      }

LABEL_36:
      v64 = 0;
      v65 = 0;
      goto LABEL_37;
    }

    v41 = sub_1000C1570(v25);
    if (!v42)
    {
LABEL_16:

LABEL_17:

      goto LABEL_18;
    }

    if (v41 == v120[10] && v42 == v120[11])
    {
    }

    else
    {
      v116 = sub_1001F7EA8();

      if ((v116 & 1) == 0)
      {
        goto LABEL_16;
      }
    }

    memcpy(v145, (v133 + 576), sizeof(v145));
    v76 = *(v133 + 888);
    memcpy(v147, (v133 + 576), 0x138uLL);
    BYTE8(v147[19]) = v76;
    if (sub_1000AC6F8(v147) != 1)
    {
      if (BYTE8(v147[19]))
      {
        sub_1000AD44C();
        sub_1001F7EA8();
        sub_1000AD8C0();

        if ((v147 & 1) == 0)
        {
          goto LABEL_47;
        }
      }

      else
      {
      }

      v77 = sub_1000AD4F0();
      sub_10001AE68(v77, v78);
      sub_100018460(v123, 1, 1, v136);
      sub_10008C1B4(v120, v134, v139, v123, 0, v79, v80);
      v82 = v81;
      sub_1000374B8(v123, &unk_1002B3450, &qword_100202EE0);
      sub_1000C23D8(3u);
      v83 = sub_1000C5458(25);
      sub_1000C21C8(v83, v84 & 1);
      sub_1000C398C(v76 & 1);
      v85 = sub_1000AD4F0();
      sub_1000AD62C(v85, v86);
      sub_10008EA08(v82, 0);
    }

LABEL_47:
    sub_1001F6418();
    if (qword_1002AC410 != -1)
    {
      swift_once();
    }

    v87 = qword_1002AE9E8;
    isa = sub_1001F6478().super.isa;
    v89 = [v87 stringFromDate:isa];

    v115 = sub_1001F6B58();
    v119 = v90;

    v91 = sub_1000AD870();
    v24(v91);
    v92 = *(v130 + 152);
    sub_1000A577C();
    if (v2)
    {

      return;
    }

    v93 = v169[11];
    sub_1001E84A8();
    v94 = *(v93 + 112);
    v95 = v174;
    if (v174 <= 1)
    {
      v95 = 1;
    }

    if (v94 == 3)
    {
      v96 = 1;
    }

    else
    {
      v96 = v95;
    }

    sub_1001F7478(v94, v96);
    sub_1001F7438();
    v98 = v97;
    memcpy(v215, v173, sizeof(v215));
    v212 = v170;
    v213 = v171;
    v214 = v172;
    v99 = sub_1000AD87C();
    v103 = sub_10004B450(v99, v100, v98, v101, v102);
    v138 = v104;
    sub_1000ACF50(v169);
    memcpy(v143, v145, sizeof(v143));
    v144 = v76;
    v105 = sub_1000AC6F8(v143) != 1;
    v106 = v105 & v144;
    v107 = *(v130 + 144);

    swift_unknownObjectRetain();

    sub_100056D28(v134, v139, v115, v119, v103, v138, v124 & 1, v175, v126, v106, v107, v92);
    v154 = v175[0];
    v155 = v175[1];
    v156 = v175[2];
    v153 = v176;
    v152[0] = v177[0];
    *(v152 + 3) = *(v177 + 3);
    v108 = v178;
    v136 = v179;
    memcpy(v151, v180, sizeof(v151));
    v150[0] = *v181;
    *(v150 + 3) = *&v181[3];
    v118 = v182;
    v129 = v183;
    v121 = v184;
    memcpy(v141, v145, sizeof(v141));
    v142 = v76;
    v55 = v139;
    v125 = v180[88];
    if (sub_1000AC6F8(v141) == 1)
    {
      v131 = v108;

      v56 = v129;
      v54 = v133;
      goto LABEL_29;
    }

    v54 = v133;
    if (v142)
    {
      sub_1000AD44C();
      sub_1001F7EA8();
      sub_1000AD8C0();

      if ((v141 & 1) == 0)
      {
        v131 = v108;

LABEL_63:
        v56 = v129;
        goto LABEL_29;
      }
    }

    else
    {
    }

    sub_1000AA3A8(v133);
    v110 = v109;
    v112 = v111;

    v113 = sub_1000AD870();
    sub_10003A36C(v113, v114);
    v131 = v110;
    v136 = v112;
    goto LABEL_63;
  }

  sub_100056A98(0, &v157);
  v216 = v167;
  v154 = sub_1000AD83C();
  v155 = v27;
  v156 = v158;
  v28 = v159;
  v29 = v160;
  v152[0] = *v161;
  *(v152 + 3) = *&v161[3];
  v30 = v162;
  v31 = v163;
  v131 = v163;
  v32 = v164;
  memcpy(v151, v165, sizeof(v151));
  v150[0] = *v166;
  *(v150 + 3) = *&v166[3];
  v127 = v168;
  sub_1000374B8(&v216, &qword_1002AEBE0, &qword_100203700);
  v147[0] = sub_1000AD83C();
  v147[1] = v33;
  v147[2] = v158;
  v135 = v28;
  v137 = v32;
  *&v147[3] = v28;
  BYTE8(v147[3]) = v29;
  LOBYTE(v28) = v29;
  *(&v147[3] + 9) = *v161;
  HIDWORD(v147[3]) = *&v161[3];
  v140 = v30;
  *&v147[4] = v30;
  *(&v147[4] + 1) = v31;
  *&v147[5] = v32;
  v34 = 0x8000000100226B10;
  memcpy(&v147[5] + 8, v165, 0x58uLL);
  v35 = 3;
  LOBYTE(v147[11]) = 3;
  v36 = v127;
  *(&v147[11] + 1) = *v166;
  DWORD1(v147[11]) = *&v166[3];
  *(&v147[11] + 1) = 0xD000000000000011;
  *&v147[12] = 0x8000000100226B10;
  *(&v147[12] + 1) = v127;
  v37 = 1;
  LOBYTE(v147[13]) = 1;
  v12[3] = &type metadata for LegacyInAppBuyResponse;
  v12[4] = sub_1000AC7BC();
  sub_1000AD4FC();
  v38 = swift_allocObject();
  *v12 = v38;
  memcpy((v38 + 16), v147, 0xD1uLL);
  sub_100057E10(v147, v143);
  v39 = v28;
  v40 = 0xD000000000000011;
LABEL_38:
  v147[0] = v154;
  v147[1] = v155;
  v147[2] = v156;
  *&v147[3] = v135;
  BYTE8(v147[3]) = v39;
  *(&v147[3] + 9) = v152[0];
  HIDWORD(v147[3]) = *(v152 + 3);
  *&v147[4] = v140;
  *(&v147[4] + 1) = v131;
  *&v147[5] = v137;
  memcpy(&v147[5] + 8, v151, 0x58uLL);
  LOBYTE(v147[11]) = v35;
  *(&v147[11] + 1) = v150[0];
  DWORD1(v147[11]) = *(v150 + 3);
  *(&v147[11] + 1) = v40;
  *&v147[12] = v34;
  *(&v147[12] + 1) = v36;
  LOBYTE(v147[13]) = v37;
  sub_100057E48(v147);
}

id sub_1000A718C(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v383 = a2;
  v370 = a1;
  v8 = *v4;
  v9 = type metadata accessor for IAPTransaction(0);
  v10 = sub_1000AD6A4(v9);
  v350 = v11;
  __chkstk_darwin(v10);
  sub_100023510();
  v351 = v13 - v12;
  sub_1000AD8A8();
  v360 = sub_1001F6578();
  sub_10001A278();
  v345 = v14;
  __chkstk_darwin(v15);
  sub_100023510();
  v344 = v17 - v16;
  v339 = sub_1000183C4(&qword_1002B2000, &unk_1002087D0);
  sub_100023520();
  __chkstk_darwin(v18);
  sub_10004FE10();
  v338 = v19;
  sub_100099510();
  __chkstk_darwin(v20);
  sub_1000AD704();
  v336 = v21;
  v335 = sub_1000183C4(&qword_1002B2008, &unk_1002081F0);
  sub_100023520();
  sub_10001E844();
  __chkstk_darwin(v22);
  sub_1000AD8B4();
  v337 = v23;
  v24 = sub_1000183C4(&unk_1002B3450, &qword_100202EE0);
  v25 = sub_100056658(v24);
  __chkstk_darwin(v25);
  sub_10004FE10();
  v357 = v26;
  sub_100099510();
  __chkstk_darwin(v27);
  sub_100099670();
  v347 = v28;
  sub_100099510();
  __chkstk_darwin(v29);
  sub_100099670();
  v340 = v30;
  sub_100099510();
  __chkstk_darwin(v31);
  sub_1000AD704();
  v349 = v32;
  v33 = sub_1000AD8A8();
  v355 = type metadata accessor for PromotionalOfferData(v33);
  sub_100023520();
  __chkstk_darwin(v34);
  sub_100023510();
  v352 = v36 - v35;
  v37 = sub_1000183C4(&qword_1002B23D8, &unk_10020CE40);
  v38 = sub_100056658(v37);
  __chkstk_darwin(v38);
  sub_10004FE10();
  v354 = v39;
  sub_100099510();
  __chkstk_darwin(v40);
  sub_1000AD704();
  v358 = v41;
  v42 = sub_1000183C4(&qword_1002AFA30, &unk_10020FA10);
  v43 = sub_100056658(v42);
  __chkstk_darwin(v43);
  sub_10004FE10();
  v343 = v44;
  sub_100099510();
  __chkstk_darwin(v45);
  sub_100099670();
  v353 = v46;
  sub_100099510();
  __chkstk_darwin(v47);
  v49 = &v325 - v48;
  v366 = sub_1001F6508();
  sub_10001A278();
  v362 = v50;
  __chkstk_darwin(v51);
  sub_10004FE10();
  v341 = v52;
  sub_100099510();
  __chkstk_darwin(v53);
  sub_100099670();
  v342 = v54;
  sub_100099510();
  __chkstk_darwin(v55);
  v57 = &v325 - v56;
  __chkstk_darwin(v58);
  sub_1000AD704();
  v361 = v59;
  v60 = *(v8 + 144);
  v371 = *(v8 + 152);
  v372 = v60;
  type metadata accessor for InAppBuyRoute.AdditionalBuyOptions(0, v60, v371, v61);
  sub_10001A278();
  v379 = v62;
  v64 = *(v63 + 64);
  __chkstk_darwin(v65);
  v365 = &v325 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67.n128_f64[0] = __chkstk_darwin(v66);
  v69 = &v325 - v68;
  v381 = v70;
  v71 = *(a3 + *(v70 + 52));
  v373 = v5;
  v380 = v71;
  v346 = a4;
  v348 = v57;
  v359 = v49;
  if (v71)
  {
    v374 = 0;
    v72 = a3;
    v73 = 0;
  }

  else
  {
    sub_10001AE68(v5 + 6, v5[9]);
    v72 = a3;
    v73 = sub_100079484();
    sub_1000AD62C(v5 + 6, v5[9]);
    v374 = sub_1000799F4();
  }

  v74 = v379;
  v75 = v381;
  v363 = v379[2];
  v364 = v379 + 2;
  v363(v69, v72, v381, v67);
  v76 = (*(v74 + 80) + 32) & ~*(v74 + 80);
  v77 = v76 + v64;
  v78 = (v77 + 9) & 0xFFFFFFFFFFFFFFF8;
  v79 = swift_allocObject();
  v80 = v371;
  *(v79 + 16) = v372;
  *(v79 + 24) = v80;
  (v74[4])(v79 + v76, v69, v75);
  v81 = (v79 + v77);
  v356 = v73;
  *v81 = v73;
  v81[1] = v374;
  v82 = v383;
  memcpy((v79 + v78), v383, 0x379uLL);
  sub_1000AC5F4(v82, v415);
  v83 = sub_1001F6B48();
  v84 = swift_allocObject();
  *(v84 + 16) = sub_1000ACB88;
  *(v84 + 24) = v79;
  v415[4] = sub_1000ACC74;
  v415[5] = v84;
  v415[0] = _NSConcreteStackBlock;
  v415[1] = 1107296256;
  v415[2] = sub_100146934;
  v415[3] = &unk_1002868C8;
  v85 = _Block_copy(v415);

  sub_10007B9BC();
  AnalyticsSendEventLazy();
  _Block_release(v85);

  sub_100056A98(1, &v398);
  v396 = v398;
  v397 = v399;
  v395 = v400;
  *v394 = *v401;
  *&v394[15] = *&v401[15];
  v393 = v403;
  v392[0] = *v404;
  *(v392 + 3) = *&v404[3];
  v376 = v405;
  v377 = v402;
  v375 = v406;
  v378 = v407;
  memcpy(v391, v408, sizeof(v391));
  v368 = v408[88];
  *v390 = *v409;
  v367 = v410;
  *&v390[15] = *&v409[15];
  v369 = v411;
  v382 = v72;
  if (v380)
  {
    if (*(v72[3] + 112) == 1)
    {
      sub_10001AE68(v373 + 11, v373[14]);
      v86 = v361;
      sub_1001F64E8();
      v72 = v382;
      v87 = sub_10008D53C();
      (*(v362 + 8))(v86, v366);
      if (v87)
      {
        sub_1000AD4BC();
        LOBYTE(v415[3]) = v395;
        *(&v415[3] + 1) = *v394;
        v415[5] = *&v394[15];
        v88 = v376;
        v415[6] = v377;
        LOBYTE(v415[7]) = v393;
        *(&v415[7] + 1) = v392[0];
        HIDWORD(v415[7]) = *(v392 + 3);
        v415[8] = v376;
        sub_1000AD598();
        v89 = v378;
        v415[10] = v378;
        sub_1000AD508(v90);
        LOBYTE(v415[22]) = 4;
        *(&v415[22] + 1) = *v390;
        v415[24] = *&v390[15];
        v91 = v367;
        v415[25] = v367;
        v92 = v369;
        LOBYTE(v415[26]) = v369;
        v94 = v370;
        v370[3] = &type metadata for LegacyInAppBuyResponse;
        v94[4] = sub_1000AC7BC();
        sub_1000AD4FC();
        v93 = swift_allocObject();
        *v94 = v93;
        LOBYTE(v94) = v92;
        sub_1000AD998();

        v95 = 4;
        memcpy((v93 + 16), v415, 0xD1uLL);
        v96 = v88;
        v97 = v377;
LABEL_33:
        v114 = 0;
        goto LABEL_34;
      }
    }
  }

  v98 = *(v72 + 16);
  v99 = v383;
  if ((v98 & 1) == 0)
  {
    v100 = v383[33];
    if (!v100 || (v101 = v383[32], , v417._countAndFlagsBits = v101, v417._object = v100, v102.value = sub_1001F6FF8(v417).value, v102.value == 2) || !v102.value)
    {
      v103 = v365;
      v104 = v382;
      (v363)(v365, v382, v381);
      v105 = v104[3];
      v106 = *(v105 + 112);
      if (v106 == 1)
      {
        v107 = sub_1000A9DB4(v373, v103);
        v97 = v377;
        v89 = v378;
        LOBYTE(v94) = v369;
        if (v107)
        {
          (v379[1])(v103, v381);
          memcpy(v387, v99, 0x100uLL);
          memcpy(v384, v99 + 34, 0x269uLL);
          sub_1000AC5F4(v99, v415);

          memcpy(v415, v387, 0x100uLL);
          sub_1000AD918(xmmword_100208700);

          v108 = sub_100197CC4();
          sub_1000ACE5C(v415);
          v109 = sub_1000AD828();
          sub_100056F34(v109, v110, v111, v112);
          *(v108 + 32) = sub_1000AD7DC(&type metadata for LegacyInAppBuyResponse);
          sub_1000AD4FC();
          v113 = swift_allocObject();
          sub_1000AD8F8(v113);
          v114 = 0;
          v96 = v376;
LABEL_19:
          v91 = v367;
          v95 = v368;
          goto LABEL_34;
        }

        v106 = *(v105 + 112);
      }

      if (v106 == 2)
      {
        v115 = sub_1000A9DB4(v373, v103);
        v116 = sub_1000AD808();
        v117(v116);
        if (v115)
        {
          memcpy(v387, v99, 0x100uLL);
          memcpy(v384, v99 + 34, 0x269uLL);
          sub_1000AC5F4(v99, v415);

          memcpy(v415, v387, 0x100uLL);
          sub_1000AD918(xmmword_100208700);

          v118 = sub_100197CC4();
          sub_1000ACE5C(v415);
          v119 = sub_1000AD828();
          sub_100056F60(v119, v120, v121, v122);
          *(v118 + 32) = sub_1000AD7DC(&type metadata for LegacyInAppBuyResponse);
          sub_1000AD4FC();
          v123 = swift_allocObject();
          sub_1000AD8F8(v123);
          v114 = 0;
          v97 = v377;
          v89 = v378;
          v96 = v376;
          LOBYTE(v94) = v369;
          goto LABEL_19;
        }
      }

      else
      {
        v124 = sub_1000AD808();
        v125(v124);
      }
    }
  }

  v94 = v410;
  v97 = v382[3];
  v126 = *(v97 + 112);
  sub_10019814C();
  if (v126 == 3)
  {
    v89 = v378;
    v96 = v376;
    if (v127 >= 2)
    {
      type metadata accessor for MultipleQuantitiesNotAllowedDialog();
      sub_1000AD5D0();
      v128 = swift_allocObject();
      v129 = sub_10013DADC();
LABEL_26:
      v91 = v129;

      LOBYTE(v94) = 1;
      v395 = 1;
      if (v380)
      {
        sub_1000AD4BC();
        LOBYTE(v415[3]) = v395;
        sub_1000AD470();
        sub_1000AD598();
        v415[10] = v89;
        sub_1000AD508(v130);
        LOBYTE(v415[22]) = 3;
        sub_1000AD584();
        v415[25] = v91;
        LOBYTE(v415[26]) = 1;
        v128[4] = sub_1000AD7DC(&type metadata for LegacyInAppBuyResponse);
        sub_1000AD4FC();
        v131 = swift_allocObject();
        *v128 = v131;
        v95 = 3;
        sub_1000AD728(v131);
        sub_1000AD998();
        goto LABEL_33;
      }

      sub_1000AD4BC();
      LOBYTE(v415[3]) = v395;
      sub_1000AD470();
      sub_1000AD598();
      v415[10] = v89;
      sub_1000AD508(v140);
      LOBYTE(v415[22]) = 0;
      sub_1000AD584();
      v415[25] = v91;
      LOBYTE(v415[26]) = 1;
      v128[4] = sub_1000AD7DC(&type metadata for LegacyInAppBuyResponse);
      sub_1000AD4FC();
      v141 = swift_allocObject();
      *v128 = v141;
      sub_1000AD728(v141);
      sub_1000AD998();
LABEL_32:
      v95 = 0;
      goto LABEL_33;
    }
  }

  else
  {
    v89 = v378;
    v96 = v376;
    if (v127 >= 11)
    {
      type metadata accessor for InvalidQuantityDialog();
      sub_1000AD5D0();
      v128 = swift_allocObject();
      v129 = sub_10013D980(10);
      goto LABEL_26;
    }
  }

  v379 = v94;
  v132 = v99[64];
  LODWORD(v94) = v369;
  v365 = v99[65];
  if (v365)
  {
    v133 = v89;
    v134 = v359;
    sub_1001F6518();
    if (sub_10001C990(v134, 1, v360) == 1)
    {
      sub_1000374B8(v134, &qword_1002AFA30, &unk_10020FA10);
      type metadata accessor for InvalidAppAccountTokenDialog();
      sub_1000AD5D0();
      v135 = swift_allocObject();
      v136 = sub_10013DB94();

      v395 = 1;
      sub_1000AD4BC();
      LOBYTE(v415[3]) = v137;
      sub_1000AD470();
      sub_1000AD598();
      v89 = v133;
      v415[10] = v133;
      sub_1000AD508(v138);
      LOBYTE(v415[22]) = 0;
      sub_1000AD584();
      v415[25] = v136;
      LOBYTE(v415[26]) = v94;
      v135[4] = sub_1000AD7DC(&type metadata for LegacyInAppBuyResponse);
      sub_1000AD4FC();
      v139 = swift_allocObject();
      *v135 = v139;
      sub_1000AD728(v139);
      sub_1000AD998();
      v91 = v136;
      goto LABEL_32;
    }

    sub_1000374B8(v134, &qword_1002AFA30, &unk_10020FA10);
  }

  v331 = v98;
  v329 = v132;
  v145 = v373;
  v146 = sub_1000AD680();
  sub_10001AE68(v146, v147);
  v148 = v382;
  v149 = v382[1];
  v332 = *v382;
  v333 = v149;
  v361 = sub_1000795A8(v332, v149);
  memcpy(v389, v99 + 72, sizeof(v389));
  v150 = *(v99 + 888);
  memcpy(v415, v99 + 72, sizeof(v415));
  v416 = v150;
  if (sub_1000AC6F8(v415) == 1)
  {
    goto LABEL_42;
  }

  if (v416 == 1)
  {
  }

  else
  {
    sub_1000AD5DC();
    sub_1001F7EA8();
    sub_1000AD8C0();

    if ((v415 & 1) == 0)
    {
      goto LABEL_42;
    }
  }

  v151 = v99[63];
  if (v151)
  {
    sub_1000AA9A4(v99[62], v151);
    v359 = v152;
    v334 = sub_1000AC7B0;
    goto LABEL_43;
  }

LABEL_42:
  v334 = 0;
  v359 = 0;
LABEL_43:
  type metadata accessor for OctaneSubscription();
  v153 = swift_dynamicCastClass();
  v363 = v97;
  v328 = v150;
  if (!v153)
  {
    v163 = sub_1000AD4F0();
    sub_10001AE68(v163, v164);
    sub_10019814C();
    sub_10008B744(v97, v332, v333, v165, v148 + *(v381 + 44), 0);
    v167 = v166;
    LODWORD(v354) = 0;
    sub_1000AD5F4();
    goto LABEL_118;
  }

  v154 = v153;
  v155 = sub_100197678();
  if (v156)
  {
    v384[0] = v155;
    v384[1] = v156;

    sub_1000AD600();
    sub_1000AA080(v157, v158, v148, v159, v160, v161);
    v162 = v358;

    v330 = *v387;
    v168 = v380;
  }

  else
  {

    v330 = 0;
    v168 = v380;
    v162 = v358;
  }

  sub_1001976E0(v168 ^ 1, v162);
  v169 = v354;
  sub_1000ACFAC();
  if (sub_10001C990(v169, 1, v355) == 1)
  {
    sub_1000374B8(v162, &qword_1002B23D8, &unk_10020CE40);
    v358 = 0;
  }

  else
  {
    sub_1000AD530();
    v170 = v352;
    sub_1000ACE04();
    sub_1000AD600();
    sub_1000AA008(v171, v172);
    sub_1000AD434();
    sub_1000ACCEC(v170, v173);
    sub_1000374B8(v162, &qword_1002B23D8, &unk_10020CE40);
    v358 = v384[0];
  }

  v174 = v99[67];
  if (v174)
  {
    v384[0] = v99[66];
    v384[1] = v174;

    sub_1000AD600();
    sub_1000AA080(v175, v176, v382, v177, v178, v179);

    v180 = *v387;
  }

  else
  {
    v180 = 0;
  }

  if (v180)
  {
    v181 = v168 ^ 1;
  }

  else
  {
    v181 = 0;
  }

  LODWORD(v354) = v181;
  v327 = v180;
  if (v358)
  {
    v182 = 0;
    v183 = v382;
    goto LABEL_66;
  }

  v183 = v382;
  if (!v180)
  {
    if (v330)
    {
      v182 = 0;
      goto LABEL_66;
    }

    goto LABEL_65;
  }

  v182 = 0;
  if (*(v180 + 104) == 1 && !v330)
  {
LABEL_65:
    v182 = sub_1000AAD88(v154, v99);
  }

LABEL_66:
  LODWORD(v364) = v182;
  sub_100026064((v145 + 11), v384);
  sub_10001AE68(v384, v384[3]);
  v184 = *(v381 + 44);
  v185 = v349;
  sub_1000ACFAC();
  v186 = v366;
  if (sub_10001C990(v185, 1, v366) == 1)
  {
    v187 = v348;
    sub_1001F64E8();
    if (sub_10001C990(v185, 1, v186) != 1)
    {
      sub_1000374B8(v185, &unk_1002B3450, &qword_100202EE0);
    }
  }

  else
  {
    v187 = v348;
    (*(v362 + 32))(v348, v185, v186);
  }

  v188 = sub_1000F04DC(v154, v332, v333, 1);
  v189 = *(v362 + 8);
  v348 = (v362 + 8);
  v326 = v189;
  v189(v187, v186);
  if (!v188)
  {
    sub_100019CCC(v384);
    v193 = v184;
    goto LABEL_77;
  }

  sub_100019CCC(v384);
  v190 = sub_1000BFC14();
  v192 = sub_1000EE5B8(v190, v191);

  v193 = v184;
  if (!v192)
  {

    v183 = v382;
LABEL_77:
    sub_1000AD4D0();
    sub_10008C1B4(v154, v332, v333, v183 + v193, v354, v197, v198);
    v167 = v199;
    if (v168)
    {
      v200 = v340;
      sub_1000ACFAC();
      v196 = 1;
      v201 = sub_10001C990(v200, 1, v366);
      sub_1000374B8(v200, &unk_1002B3450, &qword_100202EE0);
      if (v201 == 1)
      {
        sub_1000AD5F4();
        v202 = v367;
        v203 = v347;
        v204 = v330;
LABEL_82:
        v195 = v364;
        goto LABEL_96;
      }

      v205 = sub_1000AD4F0();
      sub_10001AE68(v205, v206);

      sub_100091DC8();
      v208 = v207;

      if (v208)
      {
        v209 = sub_1000C1A68();
        v210 = sub_1000C1A68();
        v195 = v364;
        if (v209 == v210)
        {

          sub_1000AD5F4();
          v167 = v208;
        }

        else
        {

          sub_1000AD5F4();
        }

        goto LABEL_94;
      }

      sub_1000AD5F4();
    }

    else
    {
      sub_1000AD5F4();
      v196 = 1;
    }

    v202 = v367;
    v203 = v347;
    v204 = v330;
    goto LABEL_82;
  }

  v194 = sub_1000258F4(v154);
  if (v194)
  {
    if (v194 == 2)
    {
      sub_1000AD4D0();
      v167 = sub_10008B654(v192, v154, v188, v382 + v184);

      v195 = 0;
      sub_1000AD5F4();
      v196 = 1;
LABEL_94:
      v202 = v367;
      goto LABEL_95;
    }

LABEL_88:
    v211 = v154[10];
    v212 = v154[11];

    v167 = v188;

    sub_1000C1ACC(v211, v212);

    sub_1000C1B88(5u);
    sub_1000C20A4(0, 0);

    if (v327 | v358 || v330)
    {

      sub_1000C39F0(v213, 0, 0);
    }

    sub_1000AD4D0();
    sub_1000AD9C8();

    v214 = v154[11];
    v352 = v154[10];
    v355 = v214;

    v195 = 0;
    v196 = 0;
    goto LABEL_94;
  }

  if (!v327)
  {
    goto LABEL_88;
  }

  v167 = v188;
  sub_1000C23D8(2u);

  type metadata accessor for CannotRedeemOfferCodeDialog();
  sub_1000AD5D0();
  v202 = swift_allocObject();
  sub_10013D2EC();
  sub_1000AD710();

  v195 = 0;
  v196 = 0;
  sub_1000AD5F4();
  v369 = 1;
  v368 = 15;
  v379 = v202;
LABEL_95:
  v203 = v347;
  v204 = v330;
LABEL_96:
  v367 = v202;
  v349 = swift_allocObject();
  *(v349 + 16) = -8;
  if (v196)
  {
    if (v327)
    {

      sub_1000AD768(v215);
    }

    if (v358)
    {

      sub_1000AD768(v216);
    }

    if (v204)
    {

      sub_1000AD768(v217);
    }

    v218 = sub_1000AA124(v349, v145);
    sub_1000C3FF4(v361, v218);
    sub_1000AD4D0();
    sub_1000AD9C8();
  }

  if ((v195 & 1) != 0 && v154[17])
  {
    v219 = v327 != 0;

    sub_1000C39F0(v220, 1, v219);
    v221 = sub_1000AA124(v349, v145);
    sub_1000C3FF4(v361, v221);
    sub_1000AD4D0();
    sub_1000AD9C8();
  }

  sub_1000ACFAC();
  v222 = sub_10001C990(v203, 1, v366);
  v99 = v383;
  if (v222 == 1)
  {

    sub_1000374B8(v203, &unk_1002B3450, &qword_100202EE0);
  }

  else
  {
    sub_1000374B8(v203, &unk_1002B3450, &qword_100202EE0);
    sub_1000C5464(4);
    if ((v223 & 1) == 0)
    {
      sub_1000BFDA8();
      v224 = v342;
      sub_1001F6418();
      v225 = v341;
      sub_1001F6418();
      v226 = sub_1000AD4F0();
      v325 = sub_10001AE68(v226, v227);
      v228 = v154[25];
      v340 = v154[24];
      sub_1000ACD54();
      v347 = v228;

      v364 = v167;
      v229 = v366;
      if ((sub_1001F6A98() & 1) == 0)
      {
        __break(1u);
        JUMPOUT(0x1000A99F4);
      }

      v230 = v362;
      v231 = *(v362 + 16);
      v232 = v336;
      v231(v336, v224, v229);
      v233 = v339;
      v231(v232 + *(v339 + 48), v225, v229);
      v234 = v338;
      sub_1000ACFAC();
      v235 = *(v233 + 48);
      v362 = *(v230 + 32);
      v236 = v337;
      (v362)(v337, v234, v366);
      v237 = v234 + v235;
      v238 = v366;
      v239 = v326;
      v326(v237, v366);
      sub_1000ACDAC();
      (v362)(v236 + *(v335 + 36), v234 + *(v233 + 48), v238);
      v239(v234, v238);
      v240 = v364;
      sub_1000C1A68();
      LOBYTE(v234) = sub_100091A58(v340);

      sub_1000374B8(v236, &qword_1002B2008, &unk_1002081F0);
      if (v234)
      {
        sub_1000AD4D0();
        sub_10008CBB0(v240);

        v239(v341, v238);
        v239(v342, v238);

        v368 = 21;
      }

      else
      {

        v239(v341, v238);
        v239(v342, v238);
      }

      LODWORD(v94) = v369;
      v99 = v383;
      v167 = v240;
      goto LABEL_117;
    }
  }

  LODWORD(v94) = v369;
LABEL_117:
  LOBYTE(v150) = v328;
LABEL_118:
  memcpy(v384, v389, 0x138uLL);
  LOBYTE(v384[39]) = v150;
  v241 = sub_1000AC6F8(v384);
  LODWORD(v242) = v241 != 1;
  v364 = v167;
  v243 = v331;
  if (v241 != 1)
  {
    sub_1000C398C(v384[39]);
    if ((v150 & 1) == 0)
    {
      v244 = v99[43];
      v329 = v99[42];
      v365 = v244;
    }

    if (v365)
    {
      v245 = v353;
      sub_1001F6518();
      v246 = v360;
      if (sub_10001C990(v245, 1, v360) == 1)
      {
        sub_1000374B8(v245, &qword_1002AFA30, &unk_10020FA10);
      }

      else
      {
        v248 = v344;
        v247 = v345;
        (*(v345 + 32))(v344, v245, v246);
        v249 = v343;
        (*(v247 + 16))(v343, v248, v246);
        sub_100018460(v249, 0, 1, v246);
        sub_1000C4280();
        (*(v247 + 8))(v248, v246);
      }
    }
  }

  v250 = sub_1000C257C();
  v251 = v94;
  v252 = v356;
  switch(v250)
  {
    case 1:

      goto LABEL_128;
    default:
      v253 = sub_1001F7EA8();

      if ((v253 & 1) == 0)
      {
        goto LABEL_130;
      }

LABEL_128:
      v254 = v383[33];
      if (v254 && (v255 = v383[32], , v418._countAndFlagsBits = v255, v418._object = v254, v256.value = sub_1001F6FF8(v418).value, v256.value != 2))
      {
        if (v252 && !v256.value)
        {
          goto LABEL_131;
        }
      }

      else
      {
LABEL_130:
        if (v252)
        {
LABEL_131:
          v257 = v355 == 0;
          goto LABEL_135;
        }
      }

      v257 = 0;
LABEL_135:
      v258 = sub_1000AD89C(v373);
      sub_10001AE68(v258, v259);
      v260 = v383[8];
      v261 = v383[9];
      v267 = sub_100079640(32, v260, v261, v262, v263, v264, v265, v266);
      if (v374)
      {
        v368 = 2;
        sub_1000C23D8(2u);
        v369 = 1;
        sub_1000C36CC(1);

        v268 = 0;
        LOBYTE(v260) = 0;
        LODWORD(v242) = 1;
        v269 = v376;
        v270 = v381;
        v271 = v363;
        goto LABEL_169;
      }

      if (v257)
      {
        sub_1000C2320(0);
        sub_1000C23D8(4u);
        v269 = v376;
        v270 = v381;
        v271 = v363;
        if ((v243 & 1) != 0 || (v272 = v346) == 0)
        {

          v268 = 0;
          sub_1000AD664();
        }

        else
        {
          v273 = sub_1000AD89C(v373);
          sub_1000AD62C(v273, v274);
          swift_unknownObjectRetain();
          sub_10007992C();

          v276 = sub_1000E087C(v275);
          v414 = *v387;
          sub_10001C838(&v414);
          v413 = *&v387[16];
          sub_10001C838(&v413);
          v412 = *&v387[32];
          sub_1000374B8(&v412, &qword_1002ACA10, qword_1001FEBF0);

          if (v276)
          {
            v260 = *(v276 + 32);
            v242 = *(v276 + 40);
          }

          else
          {
            LOBYTE(v260) = sub_1001E8450();
            LODWORD(v242) = v301;
          }

          type metadata accessor for AskToBuyDialog();
          v302 = sub_1000C1A68();
          v303 = v333;

          v304 = sub_100075518();
          v268 = sub_10013BA90(v304, v305, v302, v332, v303, v272);

          sub_1000AD664();
          v269 = v376;
        }

        goto LABEL_169;
      }

      if (v267 == 1)
      {
        v271 = v363;
        if (v380)
        {
          goto LABEL_149;
        }

        if ((v243 & 1) == 0)
        {
          sub_1000C23D8(4u);
          v242 = sub_1000BFC14();
          v278 = v277;
          v279 = sub_100197CC4();
          v281 = v280;
          v282 = v346;
          swift_unknownObjectRetain();
          v271 = v363;
          sub_100057098(v242, v278, v279, v281, v282, v372, v371, v387);
          *(&v386[3] + 1) = sub_1000AD644();
          v386[5] = *&v394[15];
          v386[6] = v377;
          sub_1000AD888();
          HIDWORD(v386[7]) = *(v392 + 3);
          v386[8] = v376;
          v386[9] = v375;
          v386[10] = v283;
          sub_1000AD508(v386);
          sub_1000AD85C();
          v386[24] = *&v390[15];
          v386[25] = v367;
          LOBYTE(v386[26]) = v251;
          sub_100057E48(v386);
          v375 = *&v387[72];
          *&v414 = *&v387[64];
          v396 = *v387;
          v397 = *&v387[16];
          v395 = v387[24];
          *v394 = *&v387[25];
          *&v394[15] = *&v387[40];
          v392[0] = *&v387[57];
          *(v392 + 3) = *&v387[60];
          v378 = *&v387[80];
          memcpy(v391, &v387[88], sizeof(v391));
          v368 = v387[176];
          *v390 = *&v387[177];
          *&v390[15] = *&v387[192];
          v369 = v387[208];
          v268 = *&v387[200];
          v269 = sub_1000AA1A4(v260, v261, v334, v359);
          sub_1000374B8(&v414, &qword_1002AFDB8, &qword_1002049E8);
          LOBYTE(v260) = 0;
          v377 = *(v269 + 16);
          v393 = 0;
          LODWORD(v242) = 1;
          v270 = v381;
          goto LABEL_169;
        }
      }

      else
      {
        v271 = v363;
        if (v380)
        {
          goto LABEL_149;
        }
      }

      v284 = sub_1000AD89C(v373);
      sub_1000AD62C(v284, v285);
      v291 = sub_10007A214(1uLL, v332, v333, v286, v287, v288, v289, v290);
      if (v292)
      {
LABEL_149:
        v293 = v328;
        if (!v243)
        {
          goto LABEL_156;
        }

        goto LABEL_152;
      }

      v294 = v291;
      sub_1000C23D8(2u);
      v368 = sub_100087764(v294);

      v379 = 0;
      v367 = 0;
      v251 = 1;
      LODWORD(v242) = 1;
      v293 = v328;
      if ((v243 & 1) == 0)
      {
        goto LABEL_156;
      }

LABEL_152:
      if (sub_1000C43D8() != 2 && sub_1000C43D8() != 1)
      {
        LODWORD(v242) = 1;
        sub_1000C23D8(1u);
      }

      v367 = 0;
LABEL_156:
      if (!sub_1000C43D8())
      {
        LODWORD(v242) = 1;
        sub_1000C23D8(1u);
      }

      memcpy(v387, v389, sizeof(v387));
      v388 = v293;
      v295 = sub_1000AC6F8(v387);
      v369 = v251;
      if (v295 == 1)
      {
        LOBYTE(v260) = 0;
        v270 = v381;
        v296 = v351;
      }

      else
      {
        if (v388 == 1)
        {
          sub_1000AD44C();
          LOBYTE(v260) = sub_1001F7EA8();
        }

        else
        {
          LOBYTE(v260) = 1;
        }

        v270 = v381;
        v296 = v351;
      }

      v297 = v364;
      v298 = v334;
      v299 = v359;
      sub_10003742C(v334, v359);
      sub_1001D4DFC(v297, v298, v299, v296);
      if (v355)
      {

        v300 = v355;
        *(v296 + 88) = v352;
        *(v296 + 96) = v300;
      }

      *&v414 = v405;
      sub_1000183C4(&qword_1002AC7E8, &qword_100200A10);
      v269 = swift_allocObject();
      *(v269 + 16) = xmmword_1001FE9E0;
      sub_1000ACC94();
      sub_1000374B8(&v414, &qword_1002AFDB8, &qword_1002049E8);
      v377 = *(v269 + 16);
      v393 = 0;
      sub_1000ACCEC(v296, type metadata accessor for IAPTransaction);
      v268 = v367;
LABEL_169:
      v367 = v268;
      if (*(v271 + 112) == 3 && (*(v382 + *(v270 + 48)) & 1) == 0)
      {
        sub_1000C1ACC(0, 0);
        v89 = v378;
      }

      else
      {
        v89 = v378;
        if (!v242)
        {
          if ((v260 & 1) == 0)
          {
            goto LABEL_174;
          }

          goto LABEL_173;
        }
      }

      sub_1000AD62C(v373 + 11, v373[14]);
      sub_1000AD9C8();
      if (v260)
      {
LABEL_173:
        sub_1000AA3A8(v383);
        v307 = v306;
        v309 = v308;
        sub_10003A36C(v375, v89);
        v375 = v307;
        v89 = v309;
      }

LABEL_174:
      v310 = v381;
      v311 = v382;
      v312 = v357;
      sub_1000ACFAC();
      v313 = sub_10001C990(v312, 1, v366);
      sub_1000374B8(v312, &unk_1002B3450, &qword_100202EE0);
      if (v313 != 1 && *(v311 + *(v310 + 48)) == 1)
      {
        sub_1000AD62C(v373 + 11, v373[14]);
        sub_10009208C(v364, v314, v315, v316, v317, v318, v319);
      }

      *(&v386[3] + 1) = sub_1000AD644();
      v386[5] = *&v394[15];
      v97 = v377;
      v386[6] = v377;
      sub_1000AD888();
      HIDWORD(v386[7]) = *(v392 + 3);
      v386[8] = v269;
      v386[9] = v375;
      v386[10] = v89;
      sub_1000AD508(v386);
      sub_1000AD85C();
      v386[24] = *&v390[15];
      v91 = v367;
      v386[25] = v367;
      LOBYTE(v94) = v369;
      LOBYTE(v386[26]) = v369;
      v321 = v269;
      v322 = v370;
      v370[3] = &type metadata for LegacyInAppBuyResponse;
      v322[4] = sub_1000AC7BC();
      sub_1000AD4FC();
      v323 = swift_allocObject();
      *v322 = v323;
      v96 = v321;
      sub_100057E10(v386, &v385);
      sub_100037408(v334, v359);

      v324 = (v323 + 16);
      v95 = v368;
      memcpy(v324, v386, 0xD1uLL);
      v114 = v364;
LABEL_34:
      sub_1000AD548();
      v384[5] = v142;
      v384[6] = v97;
      LOBYTE(v384[7]) = v393;
      *(&v384[7] + 1) = v392[0];
      HIDWORD(v384[7]) = *(v392 + 3);
      v384[8] = v96;
      v384[9] = v143;
      v384[10] = v89;
      sub_1000AD508(v384);
      LOBYTE(v384[22]) = v95;
      *(&v384[22] + 1) = *v390;
      v384[24] = *&v390[15];
      v384[25] = v91;
      LOBYTE(v384[26]) = v94;
      sub_100057E48(v384);
      return v114;
  }
}

uint64_t sub_1000A9A04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_1001A3238();
  isa = sub_1001F6FE8().super.super.isa;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_1001E6354(isa, 0x7975426F546B7361, 0xEF64656C62616E45, isUniquelyReferenced_nonNull_native);
  v8 = sub_1001F6FE8().super.super.isa;
  v9 = swift_isUniquelyReferenced_nonNull_native();
  sub_1001E6354(v8, 0x4473676F6C616964, 0xEF64656C62617369, v9);
  v10 = sub_1001F6FE8().super.super.isa;
  v11 = swift_isUniquelyReferenced_nonNull_native();
  sub_1001E6354(v10, 0xD000000000000015, 0x8000000100226AB0, v11);
  v12 = sub_1001F6FE8().super.super.isa;
  v13 = swift_isUniquelyReferenced_nonNull_native();
  sub_1001E6354(v12, 0xD000000000000012, 0x8000000100226AD0, v13);
  sub_10019814C();
  v14 = sub_1001F70D8().super.super.isa;
  v15 = swift_isUniquelyReferenced_nonNull_native();
  __dst[0] = v5;
  sub_1001E6354(v14, 0x797469746E617571, 0xE800000000000000, v15);
  memcpy(__dst, (a4 + 576), 0x139uLL);
  if (sub_1000AC6F8(__dst) != 1)
  {
    if ((__dst[39] & 1) == 0)
    {
      sub_1001F7EA8();
    }

    v16 = sub_1001F6FE8().super.super.isa;
    v17 = swift_isUniquelyReferenced_nonNull_native();
    sub_1001E6354(v16, 0x4B65726F74537369, 0xEB00000000327469, v17);
  }

  type metadata accessor for OctaneSubscription();
  if (swift_dynamicCastClass())
  {
    v18 = sub_1001F6FE8().super.super.isa;
    v19 = swift_isUniquelyReferenced_nonNull_native();
    sub_1001E6354(v18, 0x6F6D6F7250736168, 0xED0000726566664FLL, v19);
    v20 = sub_1001F6FE8().super.super.isa;
    v21 = swift_isUniquelyReferenced_nonNull_native();
    sub_1001E6354(v20, 0x61626E6957736168, 0xEF726566664F6B63, v21);
  }

  v22 = *(a4 + 568);
  if (v22 != 2 && (v22 & 1) != 0)
  {
    sub_1000ACEB0();
    v23 = sub_1001F73B8(1).super.super.isa;
    v24 = swift_isUniquelyReferenced_nonNull_native();
    sub_1001E6354(v23, 0xD000000000000017, 0x8000000100226AF0, v24);
  }

  return v5;
}

BOOL sub_1000A9DB4(uint64_t *a1, uint64_t a2)
{
  v2 = a1 + 11;
  v3 = *a1;
  v4 = sub_1000183C4(&unk_1002B3450, &qword_100202EE0);
  __chkstk_darwin(v4 - 8);
  v6 = &v15[-1] - v5;
  v7 = sub_1001F6508();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v15[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100026064(v2, v15);
  v14 = sub_10001AE68(v15, v15[3]);
  type metadata accessor for InAppBuyRoute.AdditionalBuyOptions(0, *(v3 + 144), *(v3 + 152), v11);
  sub_1000ACFAC();
  if (sub_10001C990(v6, 1, v7) == 1)
  {
    sub_1001F64E8();
    if (sub_10001C990(v6, 1, v7) != 1)
    {
      sub_1000374B8(v6, &unk_1002B3450, &qword_100202EE0);
    }
  }

  else
  {
    (*(v8 + 32))(v10, v6, v7);
  }

  v12 = sub_10008D53C();
  (*(v8 + 8))(v10, v7);
  if (v12)
  {
  }

  sub_100019CCC(v15);
  return v12 != 0;
}

void sub_1000AA008(uint64_t *a5@<X5>, uint64_t *a6@<X8>)
{
  sub_1000AB928();
  v10 = v9;
  if (v6)
  {
    sub_1000AC650();
    v11 = swift_allocError();
    *v12 = v10;
    *a5 = v11;
  }

  else
  {
    *a6 = v9;
  }
}

uint64_t sub_1000AA080@<X0>(void *a1@<X0>, uint64_t a2@<X2>, void *a3@<X3>, uint64_t *a4@<X4>, uint64_t (*a5)(void, void, uint64_t, void, void)@<X5>, uint64_t *a6@<X8>)
{
  result = a5(*a1, a1[1], a2, *a3, a3[1]);
  v10 = result;
  if (v6)
  {
    v11 = sub_1000AC650();
    result = sub_1000276A0(&type metadata for InAppBuyRouteError, v11);
    *v12 = v10;
    *a4 = result;
  }

  else
  {
    *a6 = result;
  }

  return result;
}

uint64_t sub_1000AA0F8(char a1)
{
  if ((a1 - 1) > 8u)
  {
    return 20;
  }

  else
  {
    return byte_1002088DE[(a1 - 1)];
  }
}

uint64_t sub_1000AA124(uint64_t a1, uint64_t a2)
{
  v2 = (a1 + 16);
  v3 = *(a1 + 16);
  if (v3 >= 0xF8)
  {
    sub_10001AE68((a2 + 48), *(a2 + 72));
    v3 = sub_10007A5F0();
    swift_beginAccess();
    *v2 = v3;
  }

  return v3;
}

void *sub_1000AA1A4(uint64_t a1, uint64_t a2, void (*a3)(void *), uint64_t a4)
{
  v8 = type metadata accessor for IAPTransaction(0);
  v9 = sub_1000AD6A4(v8);
  __chkstk_darwin(v9);
  sub_100023510();
  v12 = v11 - v10;
  v13 = sub_1000AD8CC();
  sub_1000AD62C(v13, v14);
  v15 = sub_10008D8C8(a1, a2);
  result = sub_10013B560();
  v17 = result;
  v18 = 0;
  v19 = _swiftEmptyArrayStorage;
  while (1)
  {
    if (v17 == v18)
    {

      return v19;
    }

    if ((v15 & 0xC000000000000001) != 0)
    {
      result = sub_1001F7808();
    }

    else
    {
      if (v18 >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_15;
      }

      result = *(v15 + 8 * v18 + 32);
    }

    v20 = result;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    sub_10003742C(a3, a4);
    sub_1001D4DFC(v20, a3, a4, v12);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_100032DBC(0, v19[2] + 1, 1, v19);
      v19 = v23;
    }

    v22 = v19[2];
    v21 = v19[3];
    if (v22 >= v21 >> 1)
    {
      sub_100032DBC(v21 > 1, v22 + 1, 1, v19);
      v19 = v24;
    }

    v19[2] = v22 + 1;
    result = sub_1000ACE04();
    ++v18;
  }

  __break(1u);
LABEL_15:
  __break(1u);
  return result;
}

void sub_1000AA3A8(uint64_t *a1)
{
  v1 = a1[11];
  if (v1)
  {
    v3 = a1[49];
    if (v3)
    {
      v4 = a1[10];
      v5 = a1[48];
      v6 = sub_1000AD8CC();
      sub_10001AE68(v6, v7);
      sub_10008D944(a1[8], a1[9], v4, v1, v5, v3);
    }
  }
}

uint64_t sub_1000AA424@<X0>(char a1@<W1>, uint64_t *a2@<X8>)
{
  sub_100056A98(1, __src);
  v16 = v15;
  if (a1)
  {
    sub_1000374B8(&v16, &qword_1002AF480, &unk_1002087C0);
    v4 = 0;
  }

  else
  {
    type metadata accessor for IneligibleForOfferDialog();
    sub_1000AD5D0();
    swift_allocObject();
    v4 = sub_10013D8D4();
    sub_1000374B8(&v16, &qword_1002AF480, &unk_1002087C0);
  }

  memcpy(__dst, __src, 0xB0uLL);
  LOBYTE(__dst[22]) = 14;
  *(&__dst[22] + 1) = *v14;
  __dst[24] = *&v14[15];
  __dst[25] = v4;
  LOBYTE(__dst[26]) = 1;
  a2[3] = &type metadata for LegacyInAppBuyResponse;
  a2[4] = sub_1000AC7BC();
  sub_1000AD4FC();
  v5 = swift_allocObject();
  *a2 = v5;
  memcpy((v5 + 16), __dst, 0xD1uLL);
  memcpy(v9, __src, 0xB0uLL);
  v9[176] = 14;
  *v10 = *v14;
  *&v10[15] = *&v14[15];
  v11 = v4;
  v12 = 1;
  sub_100057E10(__dst, v7);
  return sub_100057E48(v9);
}

void sub_1000AA580(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, char a5@<W5>, uint64_t *a6@<X8>)
{
  v7 = v6;
  v49 = sub_1001F6508();
  sub_10001A278();
  v11 = v10;
  __chkstk_darwin(v12);
  sub_100023510();
  v15 = v14 - v13;
  v16 = *(v7 + 112);
  sub_10001AE68((v7 + 88), v16);
  v17 = v16;
  v18 = a4;
  sub_1001B5F98(v17);
  v19 = a3;
  v20 = sub_10008B260(a2);
  (*(v11 + 8))(v15, v49);
  if (v20)
  {
    sub_1000AD62C((v7 + 88), *(v7 + 112));
    sub_10008FD70(v20, a1 & 1);
    if (v45)
    {
    }

    else
    {
      sub_100056A98(1, v56);
      v65 = v57;
      sub_1000374B8(&v65, &qword_1002AF480, &unk_1002087C0);
      v23 = memcpy(v55, v56, sizeof(v55));
      v24 = 0;
      v25 = v58;
      if ((a1 & 1) != 0 && (a5 & 1) == 0)
      {
        v50 = v7;
        v26 = v58;
        v27 = sub_1000C1570(v23);
        if (v28)
        {
          v29 = v27;
          v30 = v28;
          v31 = sub_1000AD89C(v50);
          sub_1000AD62C(v31, v32);
          sub_1000795A8(v19, v18);
          v33 = sub_1000EE5B8(v29, v30);

          if (v33)
          {
            v34 = *(v33 + 16);
            v35 = *(v33 + 24);
            v47 = v34;

            v25 = v26;
          }

          else
          {
            sub_1000BFD40();
            v25 = v26;
            if ((v36 & 0x100000000) != 0)
            {
              v47 = 0;
              v35 = 0xE000000000000000;
            }

            else
            {
              v47 = sub_1001F73F8();
              v35 = v37;
            }
          }

          sub_1000AD62C((v50 + 48), *(v50 + 72));
          sub_10007A340();
          sub_1000AD62C((v50 + 48), *(v50 + 72));
          sub_10007992C();
          v38 = sub_10004B628(v47, v35, v59, v60);
          v40 = v39;
          sub_10001C7E4(v59);

          v64 = v60[0];
          sub_10001C838(&v64);
          v63 = v60[1];
          sub_10001C838(&v63);
          v62 = v61;
          sub_1000374B8(&v62, &qword_1002ACA10, qword_1001FEBF0);
          sub_1000C5464(4);
          if (v41)
          {
            sub_1001F6438();
          }

          type metadata accessor for DidConsentToPriceIncreaseDialog();
          sub_1000AD5D0();
          swift_allocObject();
          v24 = sub_10013DC40(v38, v40);
        }

        else
        {
          v24 = 0;
        }
      }

      memcpy(v51, v55, 0xC8uLL);
      v51[25] = v24;
      LOBYTE(v51[26]) = v25;
      a6[3] = &type metadata for LegacyInAppBuyResponse;
      a6[4] = sub_1000AC7BC();
      sub_1000AD4FC();
      v42 = swift_allocObject();
      *a6 = v42;
      sub_100057E10(v51, v52);

      memcpy((v42 + 16), v51, 0xD1uLL);
      memcpy(v52, v55, sizeof(v52));
      v53 = v24;
      v54 = v25;
      sub_100057E48(v52);
    }
  }

  else
  {
    v21 = sub_1000AC650();
    sub_1000276A0(&type metadata for InAppBuyRouteError, v21);
    *v22 = 6;
    swift_willThrow();
  }
}

uint64_t sub_1000AA9A4(uint64_t a1, uint64_t a2)
{
  v5 = swift_allocObject();
  v5[2] = v2;
  v5[3] = a1;
  v5[4] = a2;

  return sub_1000AD850();
}

uint64_t sub_1000AAA18(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for CheddarTransaction(0);
  __chkstk_darwin(v8 - 8);
  v10 = (&v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = sub_1000BFC24();
  v13 = v12;
  sub_10001AE68(a2 + 6, a2[9]);
  v19 = sub_10007A214(2uLL, v11, v13, v14, v15, v16, v17, v18);
  LOBYTE(v11) = v20;

  v21 = a1;

  sub_100140370(v21, a3, a4, v19, v11 & 1, v10);
  sub_10001AE68(a2 + 11, a2[14]);
  sub_1000B033C(v10, v19, v11 & 1);
  return sub_1000ACCEC(v10, type metadata accessor for CheddarTransaction);
}

void sub_1000AAB5C(uint64_t a2@<X2>, unint64_t a3@<X3>, uint64_t a4@<X8>)
{
  sub_1000AD62C((v4 + 48), *(v4 + 72));
  v8 = sub_10007B9BC();
  v10 = sub_1000795A8(v8, v9);
  v24 = *(v10 + 80);
  if (v24 && ((v11 = *(v10 + 72), v12 = *(v10 + 112), v11 == a2) ? (v13 = v24 == a3) : (v13 = 0), (v23 = *(v10 + 96), v13) || (sub_1001F7EA8() & 1) != 0))
  {

    v15 = v23;
    v14 = v24;
  }

  else
  {
    if (qword_1002AC510 != -1)
    {
      sub_1000216F8();
      swift_once();
    }

    v16 = sub_1001F6688();
    sub_100019C94(v16, qword_1002E6180);
    sub_1000AD710();

    v17 = sub_1001F6668();
    v18 = sub_1001F7298();

    if (os_log_type_enabled(v17, v18))
    {
      sub_1000AD5E8();
      v19 = swift_slowAlloc();
      sub_1000AD68C();
      v25 = swift_slowAlloc();
      *v19 = 136315394;
      *(v19 + 4) = sub_1000E4544(a2, a3, &v25);
      *(v19 + 12) = 2080;
      v20 = sub_10007B9BC();
      *(v19 + 14) = sub_1000E4544(v20, v21, v22);
      _os_log_impl(&_mh_execute_header, v17, v18, "No subscription offers key pair set found with keyID %s for %s", v19, 0x16u);
      sub_1000AD574();
      swift_arrayDestroy();
      sub_100021754();

      sub_100021754();
    }

    v11 = 0;
    v12 = 0;
    v14 = 0uLL;
    v15 = 0uLL;
  }

  *a4 = v11;
  *(a4 + 8) = v14;
  *(a4 + 24) = v15;
  *(a4 + 40) = v12;
}

uint64_t sub_1000AAD88(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for IntroOfferEligibilityOverride(0);
  sub_100023520();
  __chkstk_darwin(v5);
  sub_100023510();
  v8 = v7 - v6;
  v9 = sub_1000183C4(&qword_1002B23C0, &unk_1002087B0);
  sub_100023520();
  sub_10001E844();
  __chkstk_darwin(v10);
  v12 = &v73 - v11;
  v13 = sub_1000183C4(&qword_1002B23C8, &unk_10020CE50);
  v14 = sub_100056658(v13);
  __chkstk_darwin(v14);
  v16 = &v73 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v19 = &v73 - v18;
  __chkstk_darwin(v20);
  if (!a1[17])
  {
    goto LABEL_19;
  }

  v74 = &v73 - v21;
  sub_100198684(v19);
  v73 = v12;
  v22 = v74;
  sub_1000ACDAC();
  sub_1000ACFAC();
  if (sub_10001C990(v16, 1, v9) != 1)
  {
    v27 = v73;
    sub_1000ACDAC();
    v28 = *(a2 + 64);
    v29 = *(a2 + 72);
    sub_1000AAB5C(*(v27 + 16), *(v27 + 24), v76);
    if (*(&v76[0] + 1))
    {
      v77 = v76[0];
      v78 = v76[1];
      v79 = v76[2];
      v30 = sub_1000AD680();
      sub_1000AD62C(v30, v31);
      v37 = sub_10007A214(2uLL, v28, v29, v32, v33, v34, v35, v36);
      sub_1000F46B0(&v77, v37, v38 & 1);
      v40 = v39;
      v80 = v77;
      sub_10001C838(&v80);
      v81 = v78;
      sub_10001C838(&v81);
      v82 = v79;
      sub_1000374B8(&v82, &qword_1002AEBE0, &qword_100203700);
      if (v40)
      {
        v41 = v27;
        v42 = a1[10];
        v43 = a1[11];

        LOBYTE(v42) = sub_100023590(v42, v43, v28, v29);

        if (v42)
        {
          sub_1000374B8(v74, &qword_1002B23C8, &unk_10020CE50);
          sub_1000ACC94();
          sub_1000374B8(v41, &qword_1002B23C0, &unk_1002087B0);
          v26 = *(v8 + *(v4 + 44));
          sub_1000ACCEC(v8, type metadata accessor for IntroOfferEligibilityOverride);
          return v26 & 1;
        }

        if (qword_1002AC510 != -1)
        {
          sub_1000216F8();
          swift_once();
        }

        v63 = sub_1001F6688();
        sub_100019C94(v63, qword_1002E6180);
        sub_1000AD698();

        v64 = sub_1001F6668();
        sub_1001F7298();

        if (sub_1000AD9B0())
        {
          sub_100099504();
          v65 = swift_slowAlloc();
          sub_1000AD524();
          v66 = swift_slowAlloc();
          v75 = v66;
          sub_1000AD784(4.8149e-34);
          v67 = sub_100075518();
          v70 = sub_1000E4544(v67, v68, v69);

          *(v65 + 4) = v70;
          sub_1000AD958(&_mh_execute_header, v71, v72, "Invalid intro offer override data for %s");
          sub_100019CCC(v66);
          sub_100021754();

          sub_100099474();
        }

        sub_1000374B8(v74, &qword_1002B23C8, &unk_10020CE50);
        v61 = v73;
        goto LABEL_18;
      }

      if (qword_1002AC510 != -1)
      {
        sub_1000216F8();
        swift_once();
      }

      v55 = sub_1001F6688();
      sub_100019C94(v55, qword_1002E6180);
      sub_1000AD698();

      v45 = sub_1001F6668();
      sub_1001F7298();

      if (!sub_1000AD9B0())
      {
LABEL_17:

        sub_1000374B8(v74, &qword_1002B23C8, &unk_10020CE50);
        v61 = v27;
LABEL_18:
        sub_1000374B8(v61, &qword_1002B23C0, &unk_1002087B0);
LABEL_19:
        v26 = 0;
        return v26 & 1;
      }

      sub_100099504();
      v56 = swift_slowAlloc();
      sub_1000AD524();
      v47 = swift_slowAlloc();
      v75 = v47;
      sub_1000AD784(4.8149e-34);
      v57 = sub_100075518();
      v60 = sub_1000E4544(v57, v58, v59);

      *(v56 + 4) = v60;
      v27 = v73;
      v54 = "Invalid intro offer override signature for %s";
    }

    else
    {
      if (qword_1002AC510 != -1)
      {
        sub_1000216F8();
        swift_once();
      }

      v44 = sub_1001F6688();
      sub_100019C94(v44, qword_1002E6180);
      sub_1000AD698();

      v45 = sub_1001F6668();
      sub_1001F7298();

      if (!sub_1000AD9B0())
      {
        goto LABEL_17;
      }

      sub_100099504();
      v46 = swift_slowAlloc();
      sub_1000AD524();
      v47 = swift_slowAlloc();
      *&v77 = v47;
      sub_1000AD784(4.8149e-34);
      v48 = sub_100075518();
      v51 = sub_1000E4544(v48, v49, v50);

      *(v46 + 4) = v51;
      v27 = v73;
      v54 = "Missing key pair set to validate intro offer override for %s";
    }

    sub_1000AD958(&_mh_execute_header, v52, v53, v54);
    sub_100019CCC(v47);
    sub_100021754();

    sub_100099474();

    goto LABEL_17;
  }

  sub_1000374B8(v16, &qword_1002B23C8, &unk_10020CE50);
  v23 = sub_1000AD4F0();
  sub_10001AE68(v23, v24);

  sub_100075518();
  v25 = sub_10008D2D0();

  sub_1000374B8(v22, &qword_1002B23C8, &unk_10020CE50);
  v26 = v25 ^ 1;
  return v26 & 1;
}

uint64_t sub_1000AB5CC(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_1000AD8CC();
  sub_1000AD62C(v8, v9);
  v10 = sub_10008D3AC(a3);
  if (!v10)
  {

LABEL_7:
    v12 = 7;
LABEL_8:
    LOBYTE(v29) = v12;
    sub_1000AC650();
    swift_willThrowTypedImpl();
    return v12;
  }

  if (v10 == 1)
  {
    sub_1000AD5BC();
  }

  else
  {
    sub_1000AD5A8();
  }

  sub_1000AD5DC();
  v11 = sub_1001F7EA8();

  if (v11)
  {
    goto LABEL_7;
  }

  v14 = sub_100025820(a1, a2);
  if (!v14)
  {
    if (qword_1002AC510 != -1)
    {
      sub_1000216F8();
      swift_once();
    }

    v24 = sub_1001F6688();
    sub_100019C94(v24, qword_1002E6180);
    sub_1000AD698();

    v25 = sub_1001F6668();
    v26 = sub_1001F7298();

    if (os_log_type_enabled(v25, v26))
    {
      sub_100099504();
      v27 = swift_slowAlloc();
      sub_1000AD524();
      v28 = swift_slowAlloc();
      v29 = v28;
      *v27 = 136315138;
      *(v27 + 4) = sub_1000E4544(a1, a2, &v29);
      _os_log_impl(&_mh_execute_header, v25, v26, "Requested win-back offer with invalid offer identifier %s.", v27, 0xCu);
      sub_100019CCC(v28);
      sub_100021754();

      sub_1000AD4AC();
    }

    v12 = 8;
    goto LABEL_8;
  }

  v12 = v14;
  if (*(v14 + 112))
  {
    sub_10001AE68((v4 + 88), *(v4 + 112));
    sub_1000183C4(&qword_1002AC7E0, &unk_1001FE660);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1001FE9E0;
    v16 = *(a3 + 200);
    *(inited + 32) = *(a3 + 192);
    *(inited + 40) = v16;

    sub_10008B3C8();
    v18 = v17;
    swift_setDeallocating();
    sub_1001E56B4();
    if (sub_10013B560())
    {
      sub_1001C19A8();
      if ((v18 & 0xC000000000000001) != 0)
      {
        sub_1001F7808();
      }

      else
      {
        v19 = *(v18 + 32);
      }

      sub_1000AD698();

      v20 = (v18 & 0xC000000000000001);
      v21 = sub_1000C4418();
      if (v21)
      {
        sub_1000C1570(v21);
        v23 = v22;

        if (!v23)
        {

          return v12;
        }
      }

      else
      {
      }
    }

    else
    {

      v20 = 0;
    }

    LOBYTE(v29) = 7;
    sub_1000AC650();
    swift_willThrowTypedImpl();
  }

  else
  {
    LOBYTE(v29) = 7;
    sub_1000AC650();
    swift_willThrowTypedImpl();
  }

  return 7;
}

void sub_1000AB928()
{
  sub_10001E850();
  v94 = v1;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v114 = v8;
  v93 = type metadata accessor for PromotionalOfferData(0);
  sub_100023520();
  __chkstk_darwin(v9);
  sub_100023510();
  v12 = (v11 - v10);
  v90 = sub_1000183C4(&qword_1002B23B8, &unk_1002087A0);
  sub_100023520();
  sub_10001E844();
  __chkstk_darwin(v13);
  sub_1000AD8B4();
  v91 = v14;
  v15 = sub_1000AD8A8();
  type metadata accessor for PromotionalOfferData.SigningMethod(v15);
  sub_100023520();
  __chkstk_darwin(v16);
  sub_100023510();
  v92 = (v18 - v17);
  v19 = sub_1000183C4(&qword_1002AFA30, &unk_10020FA10);
  sub_100056658(v19);
  sub_10001E844();
  __chkstk_darwin(v20);
  v22 = &v87 - v21;
  v23 = sub_1000AD8CC();
  sub_10001AE68(v23, v24);
  v25 = v5[9];
  v96 = v5[8];
  v97 = v25;
  v26 = sub_10008D3AC(v7);
  if (v26)
  {
    v95 = v7;
    if (v26 == 1)
    {
      sub_1000AD5BC();
    }

    else
    {
      sub_1000AD5A8();
    }

    sub_1000AD5DC();
    v27 = sub_1001F7EA8();

    if (v27)
    {
      goto LABEL_7;
    }

    v29 = *v114;
    v88 = v114[1];
    v89 = v29;
    v30 = sub_100025678(v29, v88);
    if (!v30)
    {
      if (qword_1002AC510 != -1)
      {
        sub_1000216F8();
        swift_once();
      }

      v39 = sub_1001F6688();
      sub_10009951C(v39, qword_1002E6180);
      sub_1000ACC94();
      v40 = sub_1001F6668();
      v41 = sub_1001F7298();
      if (os_log_type_enabled(v40, v41))
      {
        sub_100099504();
        v42 = swift_slowAlloc();
        sub_1000AD524();
        v43 = swift_slowAlloc();
        v98 = v43;
        *v42 = 136315138;
        v44 = *v12;
        v45 = v12[1];

        sub_1000AD434();
        sub_1000ACCEC(v12, v46);
        v47 = sub_1000E4544(v44, v45, &v98);

        *(v42 + 4) = v47;
        sub_1000AD6B4();
        _os_log_impl(v48, v49, v50, v51, v52, v53);
        sub_100019CCC(v43);
        sub_100021754();

        sub_100021754();
      }

      else
      {

        sub_1000AD434();
        sub_1000ACCEC(v12, v70);
      }

      v28 = 3;
      goto LABEL_8;
    }

    v31 = v30;
    if ((v3 & 1) == 0)
    {
      goto LABEL_9;
    }

    v32 = sub_1001C7F80();
    if (!v33 || (sub_1000AAB5C(v32, v33, v99), , !*(&v99[0] + 1)))
    {
      if (qword_1002AC510 != -1)
      {
        sub_1000216F8();
        swift_once();
      }

      v54 = sub_1001F6688();
      sub_10009951C(v54, qword_1002E6180);
      v55 = v95;

      v56 = sub_1001F6668();
      sub_1001F7298();

      v57 = sub_1000AD6D4();
      if (os_log_type_enabled(v57, v58))
      {
        sub_100099504();
        v59 = swift_slowAlloc();
        sub_1000AD524();
        v60 = swift_slowAlloc();
        v98 = v60;
        *v59 = 136315138;
        v61 = *(v55 + 80);
        v62 = *(v55 + 88);

        v63 = sub_1000E4544(v61, v62, &v98);

        *(v59 + 4) = v63;
        sub_1000AD6B4();
        _os_log_impl(v64, v65, v66, v67, v68, v69);
        sub_100019CCC(v60);
        sub_100099474();

        sub_100021754();
      }

      goto LABEL_46;
    }

    v100 = v99[0];
    v101 = v99[1];
    v102 = v99[2];
    memcpy(v113, v5 + 72, 0x139uLL);
    v34 = sub_1000AC6F8(v113);
    v87 = v31;
    if (v34 == 1 || (v113[312] & 1) != 0 && (sub_1000AD44C(), (sub_1001F7EA8() & 1) == 0))
    {
      if (v5[65])
      {
        sub_1001F6518();
        v35 = sub_1001F6578();
        if (sub_10001C990(v22, 1, v35) != 1)
        {
          sub_1001F6528();
          (*(*(v35 - 8) + 8))(v22, v35);
          v36 = sub_1001F6BB8();
          v38 = v37;

          goto LABEL_37;
        }
      }

      else
      {
        v71 = sub_1001F6578();
        sub_100018460(v22, 1, 1, v71);
      }

      sub_1000374B8(v22, &qword_1002AFA30, &unk_10020FA10);
      v36 = 0;
      v38 = 0xE000000000000000;
    }

    else
    {
      if (v5[43])
      {
        v36 = v5[42];
        v38 = v5[43];
      }

      else
      {
        v36 = 0;
        v38 = 0xE000000000000000;
      }
    }

LABEL_37:
    sub_1000AD62C((v0 + 48), *(v0 + 72));
    v77 = sub_10007A214(2uLL, v96, v97, v72, v73, v74, v75, v76);
    v79 = v78;
    if (sub_100025678(v89, v88))
    {

      v80 = v92;
      sub_1000ACC94();
      sub_1000AD87C();
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        memcpy(v112, v80, sizeof(v112));
        v85 = *(v95 + 80);
        v86 = *(v95 + 88);

        v84 = sub_1001C80E8(v96, v97, v85, v86, v36, v38, &v100);
        v106 = v100;
        sub_10001C838(&v106);
        v107 = v101;
        sub_10001C838(&v107);
        v108 = v102;
        sub_1000374B8(&v108, &qword_1002AEBE0, &qword_100203700);

        sub_1000AC71C(v112);
LABEL_43:
        if (v84)
        {
          goto LABEL_9;
        }

        goto LABEL_46;
      }

      v81 = v91;
      sub_1000ACDAC();
      sub_1000F46C4(&v100, v77, v79 & 1);
      v83 = v82;
      v109 = v100;
      sub_10001C838(&v109);
      v110 = v101;
      sub_10001C838(&v110);
      v111 = v102;
      sub_1000374B8(&v111, &qword_1002AEBE0, &qword_100203700);
      if (v83)
      {
        v84 = sub_1001C8BAC(v89, v88, v96, v97);
        sub_1000374B8(v81, &qword_1002B23B8, &unk_1002087A0);
        goto LABEL_43;
      }

      sub_1000374B8(v81, &qword_1002B23B8, &unk_1002087A0);
    }

    else
    {
      v103 = v100;
      sub_10001C838(&v103);
      v104 = v101;
      sub_10001C838(&v104);
      v105 = v102;
      sub_1000374B8(&v105, &qword_1002AEBE0, &qword_100203700);
    }

LABEL_46:
    LOBYTE(v98) = 9;
    sub_1000AC650();
    swift_willThrowTypedImpl();

    goto LABEL_9;
  }

LABEL_7:
  v28 = 4;
LABEL_8:
  LOBYTE(v98) = v28;
  sub_1000AC650();
  swift_willThrowTypedImpl();
LABEL_9:
  sub_10001E868();
}

void sub_1000AC160(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_10001E850();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v27 = sub_10002574C(v25, v26);
  if (v27)
  {
    v28 = v27;
    sub_1000AD62C((v20 + 88), *(v20 + 112));
    v29 = sub_10008D3AC(v24);
    v30 = *(v28 + 96);

    v31 = sub_1000BF948(v29, v30);

    if ((v31 & 1) == 0)
    {
      if (qword_1002AC510 != -1)
      {
        sub_1000216F8();
        swift_once();
      }

      v32 = sub_1001F6688();
      sub_10009951C(v32, qword_1002E6180);

      v33 = sub_1001F6668();
      v34 = sub_1001F7298();

      if (os_log_type_enabled(v33, v34))
      {
        sub_1000AD524();
        v35 = swift_slowAlloc();
        a10 = swift_slowAlloc();
        *v35 = 136315650;
        v36 = sub_10007B9BC();
        *(v35 + 4) = sub_1000E4544(v36, v37, v38);
        *(v35 + 12) = 2080;
        sub_1000AC6A4();

        v39 = sub_1001F70B8();
        v41 = v40;

        v42 = sub_1000E4544(v39, v41, &a10);

        *(v35 + 14) = v42;
        *(v35 + 22) = 2080;
        if (v29)
        {
          if (v29 == 1)
          {
            v43 = 0xE800000000000000;
            v44 = sub_1000AD5BC();
          }

          else
          {
            v43 = 0xE700000000000000;
            v44 = sub_1000AD5A8();
          }
        }

        else
        {
          v43 = 0xE300000000000000;
          v44 = 7824750;
        }

        v56 = sub_1000E4544(v44, v43, &a10);

        *(v35 + 24) = v56;
        _os_log_impl(&_mh_execute_header, v33, v34, " Currently ineligible for offer code  %s: %s does not  contain %s", v35, 0x20u);
        swift_arrayDestroy();
        sub_100021754();

        sub_100021754();
      }

      LOBYTE(a10) = 5;
      sub_1000AC650();
      swift_willThrowTypedImpl();
    }
  }

  else
  {
    if (qword_1002AC510 != -1)
    {
      sub_1000216F8();
      swift_once();
    }

    v45 = sub_1001F6688();
    sub_10009951C(v45, qword_1002E6180);

    v46 = sub_1001F6668();
    v47 = sub_1001F7298();

    if (os_log_type_enabled(v46, v47))
    {
      sub_1000AD5E8();
      v48 = swift_slowAlloc();
      sub_1000AD68C();
      a10 = swift_slowAlloc();
      *v48 = 136315394;
      v49 = sub_10007B9BC();
      *(v48 + 4) = sub_1000E4544(v49, v50, v51);
      *(v48 + 12) = 2080;

      v52 = sub_1000AD850();
      v55 = sub_1000E4544(v52, v53, v54);

      *(v48 + 14) = v55;
      _os_log_impl(&_mh_execute_header, v46, v47, "Internal ID %s did not correspond to a configured offer for codes for %s", v48, 0x16u);
      swift_arrayDestroy();
      sub_100021754();

      sub_100021754();
    }

    LOBYTE(a10) = 2;
    sub_1000AC650();
    swift_willThrowTypedImpl();
  }

  sub_10001E868();
}

void *sub_1000AC55C()
{
  v0 = sub_100082E38();
  sub_100019CCC(v0 + 11);
  swift_unknownObjectWeakDestroy();
  return v0;
}

uint64_t sub_1000AC594()
{
  sub_1000AC55C();

  return swift_deallocClassInstance();
}

uint64_t sub_1000AC5DC(uint64_t a1)
{
  v1 = *(a1 + 72);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

unint64_t sub_1000AC650()
{
  result = qword_1002B23A8;
  if (!qword_1002B23A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B23A8);
  }

  return result;
}

unint64_t sub_1000AC6A4()
{
  result = qword_1002B23B0;
  if (!qword_1002B23B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B23B0);
  }

  return result;
}

uint64_t sub_1000AC6F8(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1000AC770()
{

  return _swift_deallocObject(v0, 40, 7);
}

unint64_t sub_1000AC7BC()
{
  result = qword_1002B23D0;
  if (!qword_1002B23D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B23D0);
  }

  return result;
}

uint64_t sub_1000AC810()
{

  v1 = v0[12];
  if (v1 >> 60 != 15)
  {
    sub_10003A380(v0[11], v1);
  }

  if (v0[15] != 1)
  {
  }

  sub_1000AD4FC();

  return _swift_deallocObject(v2, v3, v4);
}

uint64_t sub_1000AC8CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = (type metadata accessor for InAppBuyRoute.AdditionalBuyOptions(0, *(v4 + 16), *(v4 + 24), a4) - 8);
  v6 = *(*v5 + 80);
  v7 = (v6 + 32) & ~v6;
  v8 = (*(*v5 + 64) + v7 + 9) & 0xFFFFFFFFFFFFFFF8;
  v9 = v4 + v7;

  v10 = v5[13];
  v11 = sub_1001F6508();
  if (!sub_10001C990(v9 + v10, 1, v11))
  {
    (*(*(v11 - 8) + 8))(v9 + v10, v11);
  }

  if (*(v4 + v8 + 600) != 1)
  {
  }

  return _swift_deallocObject(v4, v8 + 889, v6 | 7);
}

uint64_t sub_1000ACB88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for InAppBuyRoute.AdditionalBuyOptions(0, *(v4 + 16), *(v4 + 24), a4);
  sub_1000AD6A4(v5);
  v7 = v6;
  v9 = v8;
  v10 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v11 = v10 + *(v9 + 64);
  v12 = (v11 + 9) & 0xFFFFFFFFFFFFFFF8;
  v13 = (v4 + v11);
  v14 = *v13;
  v15 = v13[1];

  return sub_1000A9A04(v4 + v10, v14, v15, v4 + v12);
}

uint64_t sub_1000ACC3C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000ACC7C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000ACC94()
{
  sub_100023584();
  v1(0);
  sub_100023520();
  v2 = sub_100037A2C();
  v3(v2);
  return v0;
}

uint64_t sub_1000ACCEC(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_100023520();
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t sub_1000ACD54()
{
  result = qword_1002AD110;
  if (!qword_1002AD110)
  {
    sub_1001F6508();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002AD110);
  }

  return result;
}

uint64_t sub_1000ACDAC()
{
  sub_100023584();
  sub_1000183C4(v1, v2);
  sub_100023520();
  v3 = sub_100037A2C();
  v4(v3);
  return v0;
}

uint64_t sub_1000ACE04()
{
  sub_100023584();
  v1(0);
  sub_100023520();
  v2 = sub_100037A2C();
  v3(v2);
  return v0;
}

unint64_t sub_1000ACEB0()
{
  result = qword_1002B23E0[0];
  if (!qword_1002B23E0[0])
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, qword_1002B23E0);
  }

  return result;
}

uint64_t sub_1000ACFAC()
{
  sub_100023584();
  sub_1000183C4(v1, v2);
  sub_100023520();
  v3 = sub_100037A2C();
  v4(v3);
  return v0;
}

void sub_1000AD00C(uint64_t a1)
{
  type metadata accessor for OctaneIAP();
  if (v1 <= 0x3F)
  {
    sub_1000AD1F8(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1000AD0C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1000183C4(&unk_1002B3450, &qword_100202EE0);
    v9 = a1 + *(a3 + 44);

    return sub_10001C990(v9, a2, v8);
  }
}

uint64_t sub_1000AD16C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_1000183C4(&unk_1002B3450, &qword_100202EE0);
    v8 = v5 + *(a4 + 44);

    return sub_100018460(v8, a2, a2, v7);
  }

  return result;
}

void sub_1000AD1F8(uint64_t a1)
{
  if (!qword_1002B2468)
  {
    sub_1001F6508();
    v1 = sub_1001F74B8();
    if (!v2)
    {
      atomic_store(v1, &qword_1002B2468);
    }
  }
}

uint64_t getEnumTagSinglePayload for InAppBuyRouteError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF7)
  {
    if (a2 + 9 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 9) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 10;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v5 = v6 - 10;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for InAppBuyRouteError(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF7)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF6)
  {
    v6 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x1000AD3A4);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 9;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1000AD3E0()
{
  result = qword_1002B2470;
  if (!qword_1002B2470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B2470);
  }

  return result;
}

__n128 sub_1000AD470()
{
  result = *(v0 + 2288);
  *(v0 + 2633) = result;
  *(v0 + 2648) = *(v1 + 143);
  *(v0 + 2656) = *(v0 + 408);
  *(v0 + 2664) = *(v0 + 2280);
  *(v0 + 2665) = *(v0 + 2272);
  *(v0 + 2668) = *(v1 + 115);
  *(v0 + 2672) = v2;
  return result;
}

__n128 sub_1000AD4BC()
{
  result = v0[145];
  v0[163] = result;
  v0[164].n128_u64[0] = v0[146].n128_u64[0];
  return result;
}

void *sub_1000AD508@<X0>(uint64_t a1@<X8>)
{

  return memcpy((a1 + 88), (v1 + 2184), 0x58uLL);
}

__n128 sub_1000AD548()
{
  *(v0 + 464) = *(v0 + 2320);
  *(v0 + 480) = *(v0 + 2336);
  *(v0 + 488) = *(v0 + 2312);
  result = *(v0 + 2288);
  *(v0 + 489) = result;
  return result;
}

__n128 sub_1000AD584()
{
  result = v0[135];
  *(v1 + 177) = result;
  v0[175].n128_u64[0] = *(v2 + 15);
  return result;
}

__n128 sub_1000AD644()
{
  *(v0 + 1312) = *(v0 + 2320);
  *(v0 + 1328) = *(v0 + 2336);
  *(v0 + 1336) = *(v0 + 2312);
  return *(v0 + 2288);
}

uint64_t sub_1000AD6E0(uint64_t a1)
{
  *(v2 + 4) = a1;
  *(v2 + 12) = 2080;
  return v1;
}

uint64_t sub_1000AD71C(uint64_t result)
{
  *(result + 16) = 0;
  *(result + 24) = 0;
  return result;
}

void *sub_1000AD728(uint64_t a1)
{
  v3 = (a1 + 16);

  return memcpy(v3, (v1 + 2608), 0xD1uLL);
}

unint64_t sub_1000AD744(uint64_t a1)
{
  *(v4 + 14) = a1;
  *(v4 + 22) = v2;
  v7 = *(v5 - 72);

  return sub_1000E4544(v3, v7, (v1 + 152));
}

void sub_1000AD768(__objc2_class **a1)
{

  sub_1000C39F0(a1, 1, 0);
}

double sub_1000AD784(float a1)
{
  *v1 = a1;

  return result;
}

uint64_t sub_1000AD7A0()
{

  return sub_1000AC5F4(v1, v0 + 152);
}

unint64_t sub_1000AD7B8()
{
  *(v2 + 4) = v1;
  *(v2 + 12) = 2080;
  v4 = v0[3];
  v5 = v0[4];

  return sub_1000E4544(v4, v5, v0 + 19);
}

unint64_t sub_1000AD7DC@<X0>(uint64_t a1@<X8>)
{
  *(*(v1 + 352) + 24) = a1;

  return sub_1000AC7BC();
}

__n128 sub_1000AD85C()
{
  v0[93].n128_u8[0] = v0[21].n128_u32[2];
  result = v0[135];
  *(v1 + 177) = result;
  return result;
}

uint64_t sub_1000AD8D8()
{

  return sub_1000374B8(v0 + 1088, v1, v2);
}

void *sub_1000AD8F8(uint64_t a1)
{
  *v2 = a1;
  v4 = (a1 + 16);

  return memcpy(v4, (v1 + 1848), 0xD1uLL);
}

void *sub_1000AD918(__n128 a1)
{
  v1[179] = a1;

  return memcpy((v2 + 272), &v1[29], 0x269uLL);
}

uint64_t sub_1000AD938(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return swift_dynamicCast();
}

void sub_1000AD958(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

void *sub_1000AD978@<X0>(uint64_t a1@<X8>)
{
  *(v1 + 128) = a1;

  return memcpy((v1 + 1576), (v2 + 88), 0x58uLL);
}

uint64_t sub_1000AD998()
{

  return sub_100057E10(v0 + 2608, v0 + 464);
}

BOOL sub_1000AD9B0()
{

  return os_log_type_enabled(v0, v1);
}

uint64_t sub_1000AD9C8()
{
  v3 = *(v0 + 232);

  return sub_10008EA08(v1, v3);
}

uint64_t getEnumTagSinglePayload for EmbeddedChannel.WrongTypeError(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for EmbeddedChannel.WrongTypeError(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void *sub_1000ADA68(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_1001F6288();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  __chkstk_darwin(v9);
  v11 = &v31 - v10;
  __chkstk_darwin(v12);
  v14 = &v31 - v13;
  type metadata accessor for OctaneConfiguration();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v16 = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  v32 = a1;
  v17 = sub_1001F6B48();
  if (a4)
  {
    v18 = sub_1001F6B48();
  }

  else
  {
    v18 = 0;
  }

  v19 = [v16 URLForResource:v17 withExtension:v18];

  if (v19)
  {

    sub_1001F6238();

    (*(v8 + 32))(v14, v11, v7);
    v20 = sub_1001F6B38();
    v28 = sub_1000B90D8(v20, v27);
    v33 = 0;
    v29 = sub_1000B9C60(v28, &v33);

    sub_1001F6BD8();

    (*(v8 + 8))(v14, v7);
  }

  else
  {
    if (qword_1002AC510 != -1)
    {
      sub_10001B230(&qword_1002AC510);
    }

    v21 = sub_1001F6688();
    sub_100019C94(v21, qword_1002E6180);

    v22 = sub_1001F6668();
    v23 = sub_1001F7298();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v33 = v25;
      *v24 = 136315138;
      v26 = sub_1000E4544(v32, a2, &v33);

      *(v24 + 4) = v26;
      _os_log_impl(&_mh_execute_header, v22, v23, "No url found for resource: %s", v24, 0xCu);
      sub_100019CCC(v25);
      sub_10003A72C(v25);
      sub_10003A72C(v24);
    }

    else
    {
    }

    return 0;
  }

  return v29;
}

uint64_t sub_1000ADFF4(uint64_t a1, uint64_t a2, Swift::Int a3)
{
  sub_10002F9B0(a1, v10);
  v5 = sub_1000582DC(v10);
  v8 = v5;
  if (v7 != 3)
  {
    sub_100058B70(v5, v6, v7);
    v8 = sub_1001F69B8();
  }

  v10[0] = 0;
  v10[1] = 0xE000000000000000;
  sub_1001F6BF8(a3);
  sub_1000AE2BC(v8, a2, v10);

  return v10[0];
}

uint64_t sub_1000AE0A8(unint64_t *a1, unint64_t *a2)
{
  if ((a1[5] & 1) == 0)
  {
    if ((a2[5] & 1) == 0)
    {
      v4 = a1[4];
      v5 = a2[4];
      v6 = a1[2] == a2[2] && a1[3] == a2[3];
      v7 = v6 && *a1 >> 16 == *a2 >> 16;
      v8 = v7 && a1[1] >> 16 == a2[1] >> 16;
      if (v8 || (sub_1001F7E18() & 1) != 0)
      {
        v3 = v4;
        v2 = v5;
        goto LABEL_17;
      }
    }

    return 0;
  }

  if ((a2[5] & 1) == 0)
  {
    return 0;
  }

  v2 = *a2;
  v3 = *a1;
LABEL_17:

  return sub_1001BD92C(v3, v2);
}

uint64_t sub_1000AE16C(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = a1[4];
  switch(*(a1 + 40))
  {
    case 1:
      if (*(a2 + 40) != 1)
      {
        goto LABEL_35;
      }

      goto LABEL_24;
    case 2:
      if (*(a2 + 40) != 2)
      {
        goto LABEL_35;
      }

      v6 = *a2;
      v4 = *a1;

      result = sub_1001BD72C(v4, v6);
      break;
    case 3:
      if (*(a2 + 40) != 3)
      {
        goto LABEL_35;
      }

      v8 = a2[4];
      sub_1000AF500();
      v15 = v15 && v9 == v12;
      v16 = v15 && v10 == v13;
      v17 = v16 && v11 == v14;
      if (!v17 && (sub_1001F7E18() & 1) == 0)
      {
        goto LABEL_35;
      }

      result = sub_1001BD92C(v5, v8);
      break;
    default:
      if (*(a2 + 40))
      {
LABEL_35:
        result = 0;
      }

      else
      {
LABEL_24:
        sub_1000AF500();
        if (v15 && v18 == v21 && v19 == v22 && v20 == v23)
        {
          result = 1;
        }

        else
        {
          result = sub_1001F7E18() & 1;
        }
      }

      break;
  }

  return result;
}

uint64_t sub_1000AE2BC(uint64_t result, uint64_t a2, uint64_t a3)
{
  v132 = *(a2 + 16);
  if (!v132)
  {
    return result;
  }

  v3 = result;
  v4 = 0;
  v131 = a2 + 32;
  v136 = result;
  while (2)
  {
    v5 = v131 + 48 * v4;
    v7 = *v5;
    v6 = *(v5 + 8);
    v9 = *(v5 + 16);
    v8 = *(v5 + 24);
    v10 = *(v5 + 32);
    v143 = v4 + 1;
    v144 = v6;
    v145 = v9;
    v146 = v10;
    v151 = *v5;
    switch(*(v5 + 40))
    {
      case 1:

        v101 = sub_1001F6BE8();
        if (*(v3 + 16))
        {
          v102 = v8;
          v103 = sub_10011108C(v101);
          v105 = v104;

          if ((v105 & 1) == 0)
          {
            v98 = v7;
            v99 = v6;
            v100 = v9;
            v35 = v102;
            v109 = v10;
            v110 = 1;
            goto LABEL_70;
          }

          v106 = *(v3 + 56) + 24 * v103;
          v108 = *v106;
          v107 = *(v106 + 8);
          switch(*(v106 + 16))
          {
            case 1:
              v124 = (v108 & 1) == 0;
              if (v108)
              {
                v108 = 1702195828;
              }

              else
              {
                v108 = 0x65736C6166;
              }

              if (v124)
              {
                v107 = 0xE500000000000000;
              }

              else
              {
                v107 = 0xE400000000000000;
              }

              break;
            case 2:

              v117 = sub_1001F6F48();
              v119 = v118;
              v120 = v108;
              v121 = v107;
              v122 = 2;
              goto LABEL_73;
            case 3:

              v117 = sub_1001F69A8();
              v119 = v123;
              v120 = v108;
              v121 = v107;
              v122 = 3;
LABEL_73:
              sub_100058B70(v120, v121, v122);
              v108 = v117;
              v107 = v119;
              break;
            default:

              break;
          }

          v159._countAndFlagsBits = v108;
          v159._object = v107;
          sub_1001F6CA8(v159);
          v11 = v7;
          v12 = v6;
          v13 = v9;
          v14 = v102;
        }

        else
        {
          v11 = v7;
          v12 = v6;
          v13 = v9;
          v14 = v8;
        }

        v15 = v10;
        v16 = 1;
        goto LABEL_82;
      case 2:
        v147 = *(v7 + 16);
        v129 = *(v5 + 24);
        sub_1000AF240(v7, v6, v9, v8, v10, 2u);

        v17 = 0;
        v18 = (v7 + 72);
        while (2)
        {
          if (v147 == v17)
          {
            sub_1000AEDD8(v7, v144, v145, v129, v146, 2u);
            v98 = v7;
            v99 = v144;
            v100 = v145;
            v35 = v129;
            v109 = v146;
            v110 = 2;
            goto LABEL_70;
          }

          if (v17 >= *(v7 + 16))
          {
            goto LABEL_86;
          }

          v20 = *(v18 - 5);
          v19 = *(v18 - 4);
          v22 = *(v18 - 3);
          v21 = *(v18 - 2);
          v23 = *(v18 - 1);
          if (*v18)
          {

            sub_1000AEDD8(v7, v144, v145, v129, v146, 2u);

            sub_1000AE2BC(v3, v20, a3);
            sub_1000AEDD8(v151, v144, v145, v129, v146, 2u);
            sub_1000AF2B0(v20, v19, v22, v21, v23, 1);
            v111 = v20;
            v112 = v19;
            v113 = v22;
            v114 = v21;
            v115 = v23;
            v116 = 1;
          }

          else
          {
            sub_1000AF2F0(*(v18 - 5), *(v18 - 4), *(v18 - 3), *(v18 - 2), *(v18 - 1), 0);

            v24 = sub_1001F6BE8();
            if (!*(v3 + 16))
            {

              sub_1000AF2B0(v20, v19, v22, v21, v23, 0);

LABEL_17:
              v18 += 48;
              ++v17;
              continue;
            }

            v149 = v17;
            v25 = sub_10011108C(v24);
            v26 = v3;
            v28 = v27;

            if ((v28 & 1) == 0)
            {

              sub_1000AF2B0(v20, v19, v22, v21, v23, 0);
              v3 = v26;
              goto LABEL_16;
            }

            v29 = *(v26 + 56) + 24 * v25;
            v3 = v26;
            if (*(v29 + 16) == 1 && (*v29 & 1) == 0)
            {

              sub_1000AF2B0(v20, v19, v22, v21, v23, 0);
LABEL_16:
              v17 = v149;
              v7 = v151;
              goto LABEL_17;
            }

            sub_1000AEDD8(v151, v144, v145, v129, v146, 2u);
            sub_1000AE2BC(v26, v23, a3);
            sub_1000AEDD8(v151, v144, v145, v129, v146, 2u);

            v111 = v20;
            v112 = v19;
            v113 = v22;
            v114 = v21;
            v115 = v23;
            v116 = 0;
          }

          break;
        }

        result = sub_1000AF2B0(v111, v112, v113, v114, v115, v116);
        goto LABEL_83;
      case 3:

        v30 = sub_1001F6BE8();
        if (!*(v3 + 16))
        {
          v11 = v7;
          v12 = v6;
          v13 = v9;
          v14 = v8;
          v15 = v10;
          v16 = 3;
LABEL_82:
          sub_1000AEDD8(v11, v12, v13, v14, v15, v16);

          goto LABEL_83;
        }

        v130 = v8;
        v31 = sub_10011108C(v30);
        v33 = v32;

        if ((v33 & 1) == 0)
        {
          goto LABEL_56;
        }

        v34 = *(v3 + 56) + 24 * v31;
        v35 = v130;
        if (*(v34 + 16) != 2 || (v128 = *(*v34 + 16)) == 0)
        {
          v98 = v7;
          v99 = v6;
          v100 = v9;
          goto LABEL_69;
        }

        v125 = *(v34 + 8);
        v127 = *v34 + 32;

        v37 = 0;
        v126 = v36;
        do
        {
          if (v37 >= *(v36 + 16))
          {
            goto LABEL_89;
          }

          v38 = v127 + 24 * v37;
          v40 = *v38;
          v39 = *(v38 + 8);
          v41 = *(v38 + 16);
          v134 = v37;
          v135 = *(v38 + 16);
          v137 = *v38;
          v138 = v39;
          if (v41 != 3)
          {
            sub_1000AEE48(v40, v39, v41);

            v45 = v3;
            goto LABEL_45;
          }

          sub_1000AEE48(v40, v39, 3);
          sub_1000AEE48(v40, v39, 3);

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v156 = v3;
          sub_1000AF204(v40, sub_1000AF1B4, 0, v157);
          v42 = v157[1];
          v43 = v157[3];
          v44 = v157[4];
          v140 = v157[5];
          v141 = v157[0];
          v142 = (v157[2] + 64) >> 6;

          v45 = v3;
          v139 = v42;
          while (v44)
          {
            v46 = v43;
LABEL_32:
            v48 = __clz(__rbit64(v44)) | (v46 << 6);
            v49 = (*(v141 + 48) + 16 * v48);
            v50 = v49[1];
            v51 = *(v141 + 56) + 24 * v48;
            v52 = *v51;
            v53 = *(v51 + 8);
            v54 = *(v51 + 16);
            v154[0] = *v49;
            v154[1] = v50;
            v154[2] = v52;
            v154[3] = v53;
            v155 = v54;

            v55 = sub_1000AEE48(v52, v53, v54);
            v140(v152, v154, v55);

            sub_100058B70(v52, v53, v54);
            v56 = v152[0];
            v57 = v152[1];
            v59 = v152[2];
            v58 = v152[3];
            v148 = v153;
            v61 = sub_10011108C(v152[0]);
            v62 = v45[2];
            v63 = (v60 & 1) == 0;
            v64 = v62 + v63;
            if (__OFADD__(v62, v63))
            {
              goto LABEL_87;
            }

            v65 = v60;
            if (v45[3] >= v64)
            {
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                sub_1000183C4(&qword_1002AF4B0, &qword_1002039C0);
                sub_1001F7AA8();
              }
            }

            else
            {
              sub_1000AEE70(v64, isUniquelyReferenced_nonNull_native & 1);
              v66 = sub_10011108C(v56);
              if ((v65 & 1) != (v67 & 1))
              {
                goto LABEL_92;
              }

              v61 = v66;
            }

            v44 &= v44 - 1;
            v45 = v156;
            if (v65)
            {

              v68 = v45[7] + 24 * v61;
              v69 = *v68;
              v70 = *(v68 + 8);
              *v68 = v59;
              *(v68 + 8) = v58;
              v71 = *(v68 + 16);
              *(v68 + 16) = v148;
              sub_100058B70(v69, v70, v71);
            }

            else
            {
              v156[(v61 >> 6) + 8] |= 1 << v61;
              v72 = (v45[6] + 16 * v61);
              *v72 = v56;
              v72[1] = v57;
              v73 = v45[7] + 24 * v61;
              *v73 = v59;
              *(v73 + 8) = v58;
              *(v73 + 16) = v148;
              v74 = v45[2];
              v75 = __OFADD__(v74, 1);
              v76 = v74 + 1;
              if (v75)
              {
                goto LABEL_88;
              }

              v45[2] = v76;
            }

            isUniquelyReferenced_nonNull_native = 1;
            v43 = v46;
            v3 = v136;
            v9 = v145;
            v10 = v146;
            v6 = v144;
            v7 = v151;
            v42 = v139;
          }

          v47 = v43;
          while (1)
          {
            v46 = v47 + 1;
            if (__OFADD__(v47, 1))
            {
              __break(1u);
LABEL_86:
              __break(1u);
LABEL_87:
              __break(1u);
LABEL_88:
              __break(1u);
LABEL_89:
              __break(1u);
LABEL_90:
              __break(1u);
LABEL_91:
              __break(1u);
              goto LABEL_92;
            }

            if (v46 >= v142)
            {
              break;
            }

            v44 = *(v42 + 8 * v46);
            ++v47;
            if (v44)
            {
              goto LABEL_32;
            }
          }

          sub_100034300(v141);

          sub_100058B70(v137, v138, 3);
LABEL_45:
          v77 = swift_isUniquelyReferenced_nonNull_native();
          v154[0] = v45;
          v78 = sub_10011108C(12324);
          v80 = v45[2];
          v81 = (v79 & 1) == 0;
          v82 = v80 + v81;
          if (__OFADD__(v80, v81))
          {
            goto LABEL_90;
          }

          v83 = v78;
          v84 = v79;
          sub_1000183C4(&qword_1002AF4B0, &qword_1002039C0);
          if (sub_1001F7A98(v77, v82))
          {
            v85 = sub_10011108C(12324);
            v87 = v137;
            if ((v84 & 1) == (v86 & 1))
            {
              v83 = v85;
              v88 = v135;
              goto LABEL_50;
            }

LABEL_92:
            sub_1001F7FC8();
            __break(1u);
            JUMPOUT(0x1000AEDB8);
          }

          v88 = v135;
          v87 = v137;
LABEL_50:
          v89 = v154[0];
          if (v84)
          {
            v90 = *(v154[0] + 56) + 24 * v83;
            v91 = *v90;
            v92 = *(v90 + 8);
            *v90 = v87;
            *(v90 + 8) = v138;
            v93 = *(v90 + 16);
            *(v90 + 16) = v88;
            sub_100058B70(v91, v92, v93);
            goto LABEL_54;
          }

          *(v154[0] + 8 * (v83 >> 6) + 64) |= 1 << v83;
          v94 = (v89[6] + 16 * v83);
          *v94 = 12324;
          v94[1] = 0xE200000000000000;
          v95 = v89[7] + 24 * v83;
          *v95 = v87;
          *(v95 + 8) = v138;
          *(v95 + 16) = v88;
          v96 = v89[2];
          v75 = __OFADD__(v96, 1);
          v97 = v96 + 1;
          if (v75)
          {
            goto LABEL_91;
          }

          v89[2] = v97;
LABEL_54:
          v37 = v134 + 1;
          sub_1000AE2BC(v89, v10, a3);

          v36 = v126;
        }

        while (v134 + 1 != v128);
        sub_100058B70(v126, v125, 2);
LABEL_56:
        v98 = v7;
        v99 = v6;
        v100 = v9;
        v35 = v130;
LABEL_69:
        v109 = v10;
        v110 = 3;
LABEL_70:
        result = sub_1000AEDD8(v98, v99, v100, v35, v109, v110);
LABEL_83:
        v4 = v143;
        if (v143 != v132)
        {
          continue;
        }

        return result;
      default:

        v158._countAndFlagsBits = sub_1001F6BE8();
        sub_1001F6CA8(v158);
        v11 = v7;
        v12 = v6;
        v13 = v9;
        v14 = v8;
        v15 = v10;
        v16 = 0;
        goto LABEL_82;
    }
  }
}

uint64_t sub_1000AEDD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned __int8 a6)
{
  if (a6 < 2u)
  {
  }

  if (a6 == 3)
  {

LABEL_9:
  }

  if (a6 == 2)
  {
    goto LABEL_9;
  }

  return result;
}

double sub_1000AEE48(uint64_t a1, uint64_t a2, char a3)
{
  if (!a3 || a3 == 3 || a3 == 2)
  {
  }

  return result;
}

uint64_t sub_1000AEE70(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1000183C4(&qword_1002AF4B8, &unk_100208940);
  v38 = v4;
  result = sub_1001F7B68();
  v7 = result;
  if (!*(v5 + 16))
  {
LABEL_31:

LABEL_32:
    *v3 = v7;
    return result;
  }

  v36 = v2;
  v37 = v5;
  v8 = 0;
  v9 = (v5 + 64);
  v10 = 1 << *(v5 + 32);
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v12 = v11 & *(v5 + 64);
  v13 = (v10 + 63) >> 6;
  v14 = result + 64;
  if (!v12)
  {
LABEL_7:
    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_34;
      }

      if (v8 >= v13)
      {
        break;
      }

      v17 = v9[v8];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v39 = (v17 - 1) & v17;
        goto LABEL_12;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_32;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      sub_1001D34D8(0, (v35 + 63) >> 6, v9);
    }

    else
    {
      *v9 = -1 << v35;
    }

    *(v5 + 16) = 0;
    goto LABEL_31;
  }

  while (1)
  {
    v15 = __clz(__rbit64(v12));
    v39 = (v12 - 1) & v12;
LABEL_12:
    v18 = v15 | (v8 << 6);
    v19 = (*(v5 + 48) + 16 * v18);
    v20 = v19[1];
    v40 = *v19;
    v21 = *(v5 + 56) + 24 * v18;
    v22 = *v21;
    v23 = *(v21 + 8);
    v24 = *(v21 + 16);
    if ((v38 & 1) == 0)
    {

      sub_1000AEE48(v22, v23, v24);
    }

    sub_1001F8068();
    sub_1001F6C28();
    result = sub_1001F80D8();
    v25 = -1 << *(v7 + 32);
    v26 = result & ~v25;
    v27 = v26 >> 6;
    if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
    {
      break;
    }

    v28 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v14 + ((v28 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v28;
    v33 = (*(v7 + 48) + 16 * v28);
    *v33 = v40;
    v33[1] = v20;
    v34 = *(v7 + 56) + 24 * v28;
    *v34 = v22;
    *(v34 + 8) = v23;
    *(v34 + 16) = v24;
    ++*(v7 + 16);
    v5 = v37;
    v12 = v39;
    if (!v39)
    {
      goto LABEL_7;
    }
  }

  v29 = 0;
  v30 = (63 - v25) >> 6;
  while (++v27 != v30 || (v29 & 1) == 0)
  {
    v31 = v27 == v30;
    if (v27 == v30)
    {
      v27 = 0;
    }

    v29 |= v31;
    v32 = *(v14 + 8 * v27);
    if (v32 != -1)
    {
      v28 = __clz(__rbit64(~v32)) + (v27 << 6);
      goto LABEL_23;
    }
  }

LABEL_34:
  __break(1u);
  return result;
}

uint64_t sub_1000AF14C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  *a1 = a4;
  *(a1 + 8) = a5;
  *(a1 + 16) = a6;

  sub_1000AEE48(a4, a5, a6);
  return a2;
}

__n128 sub_1000AF1B4@<Q0>(uint64_t a1@<X0>, __n128 *a2@<X8>)
{
  v3 = sub_1000AF14C(&v7, *a1, *(a1 + 8), *(a1 + 16), *(a1 + 24), *(a1 + 32));
  v4 = v8;
  result = v7;
  a2->n128_u64[0] = v3;
  a2->n128_u64[1] = v6;
  a2[1] = result;
  a2[2].n128_u8[0] = v4;
  return result;
}

uint64_t sub_1000AF204@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v4 = -1 << *(a1 + 32);
  *a4 = a1;
  v7 = *(a1 + 64);
  result = a1 + 64;
  v6 = v7;
  v8 = ~v4;
  v9 = -v4;
  a4[1] = result;
  a4[2] = v8;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  a4[3] = 0;
  a4[4] = v10 & v6;
  a4[5] = a2;
  a4[6] = a3;
  return result;
}

double sub_1000AF240(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned __int8 a6)
{
  if (a6 < 2u)
  {

    goto LABEL_7;
  }

  if (a6 == 3)
  {

LABEL_9:

LABEL_7:

    return result;
  }

  if (a6 == 2)
  {
    goto LABEL_9;
  }

  return result;
}

uint64_t sub_1000AF2B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  if ((a6 & 1) == 0)
  {

    v6 = vars8;
  }
}

double sub_1000AF2F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  if ((a6 & 1) == 0)
  {

    v6 = vars8;
  }

  return result;
}

unint64_t sub_1000AF330()
{
  result = qword_1002B2478;
  if (!qword_1002B2478)
  {
    sub_1001F6288();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B2478);
  }

  return result;
}

__n128 sub_1000AF394(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1000AF3A8(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 41))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 40);
      if (v3 <= 1)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1000AF3E8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

uint64_t sub_1000AF45C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFD && *(a1 + 41))
    {
      v2 = *a1 + 252;
    }

    else
    {
      v3 = *(a1 + 40);
      if (v3 <= 3)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1000AF49C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

uint64_t sub_1000AF51C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  AppReceiptResponse = type metadata accessor for CreateAppReceiptResponse(0);
  sub_100023520();
  __chkstk_darwin(v5);
  v7 = &v117 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v117 - v9;
  v11 = sub_1000183C4(&qword_1002B0B38, &unk_1002063E0);
  __chkstk_darwin(v11 - 8);
  v13 = &v117 - v12;
  sub_1001F6978();
  sub_10001A278();
  v132 = v15;
  v133 = v14;
  __chkstk_darwin(v14);
  sub_100023510();
  v18 = v17 - v16;
  v134 = sub_1001F6868();
  sub_10001A278();
  *&v139 = v19;
  __chkstk_darwin(v20);
  v22 = &v117 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v138 = &v117 - v24;
  v137 = sub_1001F6578();
  sub_10001A278();
  *&v140 = v25;
  __chkstk_darwin(v26);
  sub_100023510();
  v136 = v28 - v27;
  type metadata accessor for AppTransaction(0);
  sub_100023520();
  __chkstk_darwin(v29);
  sub_100023510();
  v33 = (v32 - v31);
  v34 = *(a1 + 72);
  if (v34)
  {
    v129 = v10;
    v130 = v30;
    v127 = v13;
    v128 = v7;
    v131 = v2;
    v156 = *(a1 + 56);
    v35 = *(a1 + 80);
    v36 = *(a1 + 87);
    v157 = v34;
    v158[0] = v35;
    *(v158 + 7) = v36;
    v37 = sub_1000B74F4();
    v39 = v38;
    sub_1001F6158();
    swift_allocObject();
    sub_1001F6148();
    sub_1000B0064();
    sub_1001F6138();
    v125 = v37;
    v126 = v39;

    memcpy(v141, v142, 0x60uLL);
    v46 = *(a1 + 48);

    sub_1000E32F8(v46, v143);
    if (v150)
    {
      v47 = sub_1001F7EA8();

      sub_1000B00B8(v143);
      if ((v47 & 1) == 0)
      {
        v48 = v141[5];
        if (v141[5])
        {
          v122 = v141[4];
          v49 = v141[0];
          v50 = v141[1];
          sub_10001AE68(v131 + 6, v131[9]);

          v123 = sub_10007A214(2uLL, v49, v50, v51, v52, v53, v54, v55);
          v124 = v56;
          v58 = v141[2];
          v57 = v141[3];
          *v33 = 0x65646F6358;
          v33[1] = 0xE500000000000000;
          v33[6] = 48;
          v33[7] = 0xE100000000000000;
          v33[10] = 5459817;
          v33[11] = 0xE300000000000000;
          v33[2] = v49;
          v33[3] = v50;
          v33[4] = v58;
          v33[5] = v57;
          v33[8] = v58;
          v33[9] = v57;
          v120 = v48;
          swift_bridgeObjectRetain_n();

          sub_1001F64E8();
          sub_1001F64E8();
          sub_1001F6448();
          v59 = v136;
          sub_1001F6568();
          v60 = sub_1001F6528();
          v62 = v61;
          v118 = *(v140 + 8);
          *&v140 = v140 + 8;
          v118(v59, v137);
          v151.n128_u64[0] = v60;
          v151.n128_u64[1] = v62;
          sub_10001C790();
          v63 = sub_1001F75D8();
          v65 = v64;

          v66 = v122;
          v121 = v63;
          v122 = v65;
          v67 = sub_1001410B4(v66, v120, v63, v65);
          v69 = v68;

          v70 = sub_100141134(v67, v69);
          v72 = v71;
          v119 = sub_1000B010C();
          v73 = v133;
          sub_1001F6858();
          sub_100040C70(v70, v72);
          sub_1001442D0(v70, v72, v18);
          v120 = v70;
          v74 = v70;
          v75 = v72;
          sub_10003A380(v74, v72);
          v76 = v138;
          sub_1001F6848();
          (*(v132 + 8))(v18, v73);
          v77 = v134;
          (*(v139 + 16))(v22, v76, v134);
          v78 = sub_100141600(v22);
          v80 = v79;
          v81 = sub_1001F63B8(0);
          v83 = v82;
          sub_10003A380(v78, v80);
          if (v124)
          {
            sub_10003A380(v120, v75);
            sub_10004C8C0(v141);
            v84 = v131;
            v85 = v127;
          }

          else
          {
            v133 = v81;
            v105 = v120;
            v85 = v127;
            if (v123 == 19)
            {

              v106 = v136;
              sub_1001F6568();
              v121 = sub_1001F6528();
              v122 = v107;
              sub_10003A380(v105, v75);
              sub_10004C8C0(v141);
              v118(v106, v137);
            }

            else
            {
              sub_10003A380(v120, v75);
              sub_10004C8C0(v141);
            }

            v84 = v131;
            v81 = v133;
          }

          (*(v139 + 8))(v138, v77);
          v108 = v130;
          v109 = (v33 + *(v130 + 56));
          v110 = v122;
          *v109 = v121;
          v109[1] = v110;
          v111 = (v33 + *(v108 + 52));
          *v111 = v81;
          v111[1] = v83;
          sub_10001AE68(v84 + 11, v84[14]);
          sub_1000B08C4(v33, v123, v124 & 1);
          v112 = v129;
          sub_1000B0164(v85, &v129[*(AppReceiptResponse + 24)]);
          *v112 = 0;
          *(v112 + 8) = 0;
          v42 = v128;
          sub_1000B01D4(v112, v128);
          sub_1001F1830(v42, v113, v114, v115);
          sub_1000B02F8(*v152, v151);
          sub_1000B02A0(v112, type metadata accessor for CreateAppReceiptResponse);
          sub_1000B0238(v85);
          sub_1000B02A0(v33, type metadata accessor for AppTransaction);
          goto LABEL_28;
        }

        sub_10004C8C0(v141);
        v100 = v125;
        if (qword_1002AC510 != -1)
        {
          sub_10001B230(&qword_1002AC510);
        }

        v103 = sub_1001F6688();
        sub_100019C94(v103, qword_1002E6180);
        v96 = sub_1001F6668();
        v97 = sub_1001F7298();
        v104 = os_log_type_enabled(v96, v97);
        v99 = v126;
        if (!v104)
        {
          goto LABEL_22;
        }

        v101 = swift_slowAlloc();
        *v101 = 0;
        v102 = "Unable to create app receipt, no device verification provided";
LABEL_21:
        _os_log_impl(&_mh_execute_header, v96, v97, v102, v101, 2u);

LABEL_22:

        sub_1000AFF9C(&v151);
        sub_10003A380(v100, v99);
        v40 = *&v152[1];
        v41 = *&v152[3];
        v42 = v153 | ((v154 | (v155 << 16)) << 32);
        v44 = v151.n128_u64[1];
        result = v151.n128_u64[0];
        v45 = v152[0];
        goto LABEL_4;
      }
    }

    else
    {

      sub_1000B00B8(v143);
    }

    v42 = v141[11];
    if (v141[11])
    {
      v86 = v141[10];
      v87 = v131;
      v88 = sub_10001AE68(v131 + 11, v131[14]);
      v89 = *v88;
      v90 = *(*(*v88 + 128) + 16);

      os_unfair_lock_lock(v90);
      *(v89 + 112) = 0;
      os_unfair_lock_unlock(v90);

      sub_10001AE68(v87 + 11, v87[14]);
      sub_10008D944(v141[0], v141[1], v141[2], v141[3], v86, v42);
      v92 = v91;
      v94 = v93;

      sub_10004C8C0(v141);
      sub_100040C5C(v92, v94);
      sub_1001C63B0(0, 0, v92, v94);
      sub_1000B02F8(*v152, v151);
      sub_10003A36C(v92, v94);
LABEL_28:
      type metadata accessor for HTTPResponseHead._Storage();
      v116 = swift_allocObject();
      result = sub_1000B0324(v116);
      v45 = 2;
      v44 = _swiftEmptyArrayStorage;
      goto LABEL_4;
    }

    sub_10004C8C0(v141);
    if (qword_1002AC510 != -1)
    {
      sub_10001B230(&qword_1002AC510);
    }

    v95 = sub_1001F6688();
    sub_100019C94(v95, qword_1002E6180);
    v96 = sub_1001F6668();
    v97 = sub_1001F7298();
    v98 = os_log_type_enabled(v96, v97);
    v100 = v125;
    v99 = v126;
    if (!v98)
    {
      goto LABEL_22;
    }

    v101 = swift_slowAlloc();
    *v101 = 0;
    v102 = "Unable to create app receipt, no device identifier provided";
    goto LABEL_21;
  }

  sub_1000AFF9C(v143);
  v40 = v145;
  v41 = v146;
  v42 = v147 | ((v148 | (v149 << 16)) << 32);
  result = v143[0];
  v44 = v143[1];
  v45 = v144;
LABEL_4:
  *a2 = result;
  *(a2 + 8) = v44;
  *(a2 + 16) = v45;
  *(a2 + 24) = v40;
  *(a2 + 40) = v41;
  *(a2 + 56) = v42;
  *(a2 + 62) = BYTE6(v42);
  *(a2 + 60) = WORD2(v42);
  return result;
}

__n128 sub_1000AFF9C@<Q0>(uint64_t a1@<X8>)
{
  sub_1001C63B0(0, 0, 0, 0xF000000000000000);
  type metadata accessor for HTTPResponseHead._Storage();
  v2 = swift_allocObject();
  v3 = sub_1000B0324(v2);
  result = v5;
  *a1 = v3;
  *(a1 + 8) = _swiftEmptyArrayStorage;
  *(a1 + 16) = 2;
  *(a1 + 40) = v6;
  *(a1 + 24) = v5;
  *(a1 + 62) = v9;
  *(a1 + 60) = v8;
  *(a1 + 56) = v7;
  return result;
}

unint64_t sub_1000B0064()
{
  result = qword_1002B2560;
  if (!qword_1002B2560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B2560);
  }

  return result;
}

unint64_t sub_1000B010C()
{
  result = qword_1002B2568;
  if (!qword_1002B2568)
  {
    sub_1001F6978();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B2568);
  }

  return result;
}

uint64_t sub_1000B0164(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000183C4(&qword_1002B0B38, &unk_1002063E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000B01D4(uint64_t a1, uint64_t a2)
{
  AppReceiptResponse = type metadata accessor for CreateAppReceiptResponse(0);
  (*(*(AppReceiptResponse - 8) + 16))(a2, a1, AppReceiptResponse);
  return a2;
}

uint64_t sub_1000B0238(uint64_t a1)
{
  v2 = sub_1000183C4(&qword_1002B0B38, &unk_1002063E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000B02A0(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_100023520();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1000B02F8(__n128 a1, __n128 a2)
{
  v2[11] = a1;
  v2[12] = a2;
  v4 = v2[4].n128_i64[0];
  v5 = v2[4].n128_u64[1];

  return sub_10003A380(v4, v5);
}

uint64_t sub_1000B0324(uint64_t result)
{
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 32) = 3;
  *(result + 40) = 65537;
  return result;
}

uint64_t sub_1000B033C(uint64_t a1, uint64_t a2, int a3)
{
  v5 = sub_1000B2F5C(a1, a2, a3);
  v6 = type metadata accessor for CheddarTransaction(v5);
  v7 = sub_100056658(v6);
  __chkstk_darwin(v7);
  sub_100023510();
  v8 = sub_1000183C4(&qword_1002B2570, &unk_100208B30);
  sub_100056658(v8);
  sub_10001E844();
  __chkstk_darwin(v9);
  sub_1000B2FDC();
  sub_10001A278();
  __chkstk_darwin(v10);
  sub_1000B2F40();
  __chkstk_darwin(v11);
  sub_1000B3018();
  if (qword_1002AC4B0 != -1)
  {
    sub_1000B2EDC(&qword_1002AC4B0);
  }

  sub_100174CDC(v4);
  sub_1000B3048();
  if (v12)
  {
    sub_1000B29A0(v4, &qword_1002B2570, &unk_100208B30);
  }

  else
  {
    v13 = sub_1000B2F8C();
    v14(v13);
    sub_1000B3084();
    v15 = sub_1000B2FA4();
    v16(v15);
    v17 = sub_100174C7C();
    if (v18)
    {
      v19 = v17;
      v20 = v18;
      sub_1000183C4(&qword_1002AC7E0, &unk_1001FE660);
      v21 = swift_allocObject();
      *(v21 + 1) = xmmword_1001FE9E0;
      v21[4] = v19;
      v21[5] = v20;
    }

    else
    {
      v21 = _swiftEmptyArrayStorage;
    }

    v22 = sub_1000B30A0();
    sub_1000B2EFC(v22, v23, v24, v22, v25, v26, v27, &qword_1002AC7C8, &qword_1002008C0, type metadata accessor for CheddarTransaction, &qword_1002B2578, &unk_100208B40, &unk_1002B2580, type metadata accessor for CheddarTransaction, &qword_1002AF1D0, &unk_10020F9AC);
    if (!v21)
    {
      v33 = sub_1000B2F30();
      v34(v33);
      v30 = 0;
      goto LABEL_12;
    }

    v28 = sub_1000B2F30();
    v29(v28);
  }

  v30 = 1;
LABEL_12:
  v31 = sub_1000183C4(&qword_1002AC7C8, &qword_1002008C0);
  return sub_100018460(v3, v30, 1, v31);
}

uint64_t sub_1000B0600(uint64_t a1, uint64_t a2, int a3)
{
  v5 = sub_1000B2F5C(a1, a2, a3);
  v6 = type metadata accessor for RenewalInfo(v5);
  v7 = sub_100056658(v6);
  __chkstk_darwin(v7);
  sub_100023510();
  v8 = sub_1000183C4(&qword_1002B2570, &unk_100208B30);
  sub_100056658(v8);
  sub_10001E844();
  __chkstk_darwin(v9);
  sub_1000B2FDC();
  sub_10001A278();
  __chkstk_darwin(v10);
  sub_1000B2F40();
  __chkstk_darwin(v11);
  sub_1000B3018();
  if (qword_1002AC4B0 != -1)
  {
    sub_1000B2EDC(&qword_1002AC4B0);
  }

  sub_100174CDC(v4);
  sub_1000B3048();
  if (v12)
  {
    sub_1000B29A0(v4, &qword_1002B2570, &unk_100208B30);
  }

  else
  {
    v13 = sub_1000B2F8C();
    v14(v13);
    sub_1000B3084();
    v15 = sub_1000B2FA4();
    v16(v15);
    v17 = sub_100174C7C();
    if (v18)
    {
      v19 = v17;
      v20 = v18;
      sub_1000183C4(&qword_1002AC7E0, &unk_1001FE660);
      v21 = swift_allocObject();
      *(v21 + 1) = xmmword_1001FE9E0;
      v21[4] = v19;
      v21[5] = v20;
    }

    else
    {
      v21 = _swiftEmptyArrayStorage;
    }

    v22 = sub_1000B30A0();
    sub_1000B2EFC(v22, v23, v24, v22, v25, v26, v27, &qword_1002AF148, &qword_100202EC8, type metadata accessor for RenewalInfo, &qword_1002B25A8, &qword_100208B60, &unk_1002B25B0, type metadata accessor for RenewalInfo, &unk_1002AF1E8, &unk_10020E5D8);
    if (!v21)
    {
      v33 = sub_1000B2F30();
      v34(v33);
      v30 = 0;
      goto LABEL_12;
    }

    v28 = sub_1000B2F30();
    v29(v28);
  }

  v30 = 1;
LABEL_12:
  v31 = sub_1000183C4(&qword_1002AF148, &qword_100202EC8);
  return sub_100018460(v3, v30, 1, v31);
}

uint64_t sub_1000B08C4(uint64_t a1, uint64_t a2, int a3)
{
  v5 = sub_1000B2F5C(a1, a2, a3);
  v6 = type metadata accessor for AppTransaction(v5);
  v7 = sub_100056658(v6);
  __chkstk_darwin(v7);
  sub_100023510();
  v8 = sub_1000183C4(&qword_1002B2570, &unk_100208B30);
  sub_100056658(v8);
  sub_10001E844();
  __chkstk_darwin(v9);
  sub_1000B2FDC();
  sub_10001A278();
  __chkstk_darwin(v10);
  sub_1000B2F40();
  __chkstk_darwin(v11);
  sub_1000B3018();
  if (qword_1002AC4B0 != -1)
  {
    sub_1000B2EDC(&qword_1002AC4B0);
  }

  sub_100174CDC(v4);
  sub_1000B3048();
  if (v12)
  {
    sub_1000B29A0(v4, &qword_1002B2570, &unk_100208B30);
  }

  else
  {
    v13 = sub_1000B2F8C();
    v14(v13);
    sub_1000B3084();
    v15 = sub_1000B2FA4();
    v16(v15);
    v17 = sub_100174C7C();
    if (v18)
    {
      v19 = v17;
      v20 = v18;
      sub_1000183C4(&qword_1002AC7E0, &unk_1001FE660);
      v21 = swift_allocObject();
      *(v21 + 1) = xmmword_1001FE9E0;
      v21[4] = v19;
      v21[5] = v20;
    }

    else
    {
      v21 = _swiftEmptyArrayStorage;
    }

    v22 = sub_1000B30A0();
    sub_1000B2EFC(v22, v23, v24, v22, v25, v26, v27, &unk_1002B0BB0, qword_100206410, type metadata accessor for AppTransaction, &qword_1002B2590, &unk_100208B50, &unk_1002B2598, type metadata accessor for AppTransaction, &qword_1002B25A0, &unk_1002124B8);
    if (!v21)
    {
      v33 = sub_1000B2F30();
      v34(v33);
      v30 = 0;
      goto LABEL_12;
    }

    v28 = sub_1000B2F30();
    v29(v28);
  }

  v30 = 1;
LABEL_12:
  v31 = sub_1000183C4(&unk_1002B0BB0, qword_100206410);
  return sub_100018460(v3, v30, 1, v31);
}

uint64_t sub_1000B0B88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X4>, char a4@<W5>, char *a5@<X6>, uint64_t *a6@<X7>, char *a7@<X8>, uint64_t *a8, uint64_t (*a9)(uint64_t), uint64_t *a10, uint64_t *a11, uint64_t a12, uint64_t (*a13)(void), unint64_t *a14, uint64_t a15)
{
  v198 = a9;
  sub_1001F6938();
  sub_10001A278();
  v170 = v18;
  v171 = v17;
  __chkstk_darwin(v17);
  sub_100023510();
  v21 = v20 - v19;
  sub_1001F6B98();
  sub_10001A278();
  v178 = v23;
  v180 = v22;
  __chkstk_darwin(v22);
  sub_100023510();
  v177 = v25 - v24;
  sub_1001F6578();
  sub_10001A278();
  v173 = v27;
  v174 = v26;
  __chkstk_darwin(v26);
  sub_100023510();
  v172 = v29 - v28;
  v30 = sub_1001F5EC8();
  sub_10001A278();
  v32 = v31;
  __chkstk_darwin(v33);
  sub_100023510();
  v37 = v36 - v35;
  v175 = v21;
  v176 = a3;
  if (a4)
  {
    goto LABEL_2;
  }

  v46 = v34;
  if (a3 == 22)
  {

    v38 = &v196;
    goto LABEL_9;
  }

  if (a3 == 20)
  {
    v38 = &v195;
LABEL_9:
    sub_1000B2FBC();
    v44 = v46;
    goto LABEL_10;
  }

  if (a3 != 18)
  {
LABEL_2:
    v38 = v197;
    sub_1000B2FBC();
    goto LABEL_10;
  }

  v47 = v34;

  v38 = &v194;
  sub_1000B2FBC();
  v44 = v47;
LABEL_10:
  sub_1000B265C(v39, v40, v41, v42, v43, v44, v45);
  v48 = v38[8];
  v49 = v38[4];
  v50 = v38[5];
  v51 = *(v38 + 1);
  *v193 = *v38;
  *&v193[16] = v51;
  *&v193[32] = v49;
  *&v193[40] = v50;
  *&v193[48] = *(v38 + 3);
  *&v193[64] = v48;
  memcpy(a7, v193, 0x48uLL);
  v182 = sub_1000183C4(a6, a8);
  v187 = v182[11];
  sub_1000B28E8(a1, &a7[v187], v198);
  sub_1001F5F08();
  swift_allocObject();
  sub_1000B2944(v193, v192, a10, a11);
  v52 = sub_1001F5EF8();
  if (qword_1002AC418 != -1)
  {
    swift_once();
  }

  v53 = sub_100019C94(v30, qword_1002E6060);
  (*(v32 + 16))(v37, v53, v30);
  sub_1001F5ED8();
  memcpy(v192, v193, sizeof(v192));
  sub_1000183C4(a10, a11);
  sub_1000B30F8();
  sub_100019C4C(v54, v55, v56, v57);
  v58 = sub_1001F5EE8();
  if (v184)
  {

    sub_1000B30F8();
    sub_1000B29A0(v60, v61, v62);
    if (qword_1002AC510 != -1)
    {
      sub_10001B230(&qword_1002AC510);
    }

    v75 = sub_1001F6688();
    sub_100019C94(v75, qword_1002E6180);
    swift_errorRetain();
    v76 = sub_1001F6668();
    v77 = sub_1001F7298();

    if (os_log_type_enabled(v76, v77))
    {
      v78 = swift_slowAlloc();
      v79 = swift_slowAlloc();
      *v78 = 138412290;
      swift_errorRetain();
      v80 = _swift_stdlib_bridgeErrorToNSError();
      *(v78 + 4) = v80;
      *v79 = v80;
      _os_log_impl(&_mh_execute_header, v76, v77, "Failed to encode JWS components: %@", v78, 0xCu);
      sub_1000B29A0(v79, &unk_1002BA650, &unk_100203AA0);
      sub_10003A72C(v79);
      sub_10003A72C(v78);
    }

    LOBYTE(v192[0]) = 0;
    sub_1000B2894();
    swift_willThrowTypedImpl();

    sub_1001F68E8();
    sub_1000B2EC8();
    (*(v81 + 8))(a2);
    v82 = v198;
    sub_1000B29F4(a1, v198);
    v83 = 0;
  }

  else
  {
    v63 = v58;
    v64 = v59;
    sub_1000B30F8();
    sub_1000B29A0(v65, v66, v67);
    v192[0] = sub_1001F63B8(0);
    v192[1] = v68;
    sub_1000B30D0(43);
    v165 = v63;
    v69 = sub_10001C790();
    sub_1000B2EB8();
    sub_1000B2EA4();
    sub_1001F75F8();
    sub_1000B2FD0();

    sub_1000B2FFC();
    sub_1000B2EB8();
    sub_1000B2EA4();
    sub_1001F75F8();
    sub_1000B2FD0();
    v71 = v70;

    v192[0] = 0;
    v192[1] = v71;
    sub_1000B3038();
    sub_1000B2EB8();
    sub_1000B2EA4();
    v72 = sub_1001F75F8();
    v185 = v73;
    sub_10003A380(v165, v64);

    a13(0);
    sub_1000B2A48(a14, v198, a15);
    v167 = v72;
    v74 = sub_1001F5EE8();
    v168 = v84;
    v169 = v74;
    v192[0] = sub_1001F63B8(0);
    v192[1] = v85;
    sub_1000B30D0(43);
    sub_1000B2EB8();
    sub_1000B2EA4();
    sub_1000B306C(v86, v87, v88, v89, v90, v91, v92, v93, type metadata for String, v69, v69, v69);
    sub_1000B2FD0();

    sub_1000B2FFC();
    sub_1000B2EB8();
    sub_1000B2EA4();
    sub_1000B306C(v94, v95, v96, v97, v98, v99, v100, v101, type metadata for String, v69, v69, v69);
    sub_1000B2FD0();
    v103 = v102;

    v192[0] = v52;
    v192[1] = v103;
    sub_1000B3038();
    sub_1000B2EB8();
    sub_1000B2EA4();
    v112 = sub_1000B306C(v104, v105, v106, v107, v108, v109, v110, v111, type metadata for String, v69, v69, v69);
    v114 = v113;

    sub_10003A380(v169, v168);

    v183 = v114;
    v166 = v112;
    if ((a4 & 1) != 0 || v176 != 21)
    {
      sub_1000183C4(&qword_1002AC7E0, &unk_1001FE660);
      v116 = swift_allocObject();
      *(v116 + 16) = xmmword_1001FEBE0;
      *(v116 + 32) = v72;
      *(v116 + 40) = v185;
      *(v116 + 48) = v112;
      *(v116 + 56) = v114;
      v192[0] = v116;

      sub_1000183C4(&qword_1002ACA10, qword_1001FEBF0);
      sub_100019C4C(&qword_1002ADF40, &qword_1002ACA10, qword_1001FEBF0, &protocol conformance descriptor for [A]);
      sub_1001F6A68();

      v115 = v177;
      sub_1001F6B88();
    }

    else
    {
      sub_1001F6568();
      sub_1001F6528();
      (*(v173 + 8))(v172, v174);
      v115 = v177;
      sub_1001F6B88();
    }

    v117 = sub_1001F6B68();
    v119 = v118;

    (*(v178 + 8))(v115, v180);
    if (v119 >> 60 != 15)
    {
      v179 = v117;
      v192[0] = v117;
      v192[1] = v119;
      sub_10003A3D8();
      sub_1001F68D8();
      v128 = sub_1001F6918();
      v189 = v129;
      (*(v170 + 8))(v175, v171);
      v192[0] = sub_1001F63B8(0);
      v192[1] = v130;
      sub_1000B2EB8();
      sub_1000B2EA4();
      sub_1000B306C(v131, v132, v133, v134, v135, v136, v137, v138, type metadata for String, v69, v69, v69);
      sub_1000B2FD0();
      v140 = v139;

      v192[0] = v128;
      v192[1] = v140;
      sub_1000B2EB8();
      sub_1000B2EA4();
      sub_1000B306C(v141, v142, v143, v144, v145, v146, v147, v148, type metadata for String, v69, v69, v69);
      sub_1000B2FD0();
      v150 = v149;

      v192[0] = v128;
      v192[1] = v150;
      sub_1000B3038();
      sub_1000B2EB8();
      sub_1000B2EA4();
      sub_1000B306C(v151, v152, v153, v154, v155, v156, v157, v158, type metadata for String, v69, v69, v69);
      sub_1000B2FD0();
      v160 = v159;
      sub_10003A380(v128, v189);

      v161 = &a7[v182[12]];
      *v161 = v128;
      *(v161 + 1) = v160;
      sub_1000183C4(&qword_1002AC7E0, &unk_1001FE660);
      v162 = swift_allocObject();
      *(v162 + 16) = xmmword_100208B20;
      *(v162 + 32) = v167;
      *(v162 + 40) = v185;
      *(v162 + 48) = v166;
      *(v162 + 56) = v183;
      *(v162 + 64) = v128;
      *(v162 + 72) = v160;

      sub_10003A36C(v179, v119);
      sub_1001F68E8();
      sub_1000B2EC8();
      (*(v163 + 8))(a2);
      result = sub_1000B29F4(a1, v198);
      *&a7[v182[13]] = v162;
      return result;
    }

    if (qword_1002AC510 != -1)
    {
      sub_10001B230(&qword_1002AC510);
    }

    v120 = sub_1001F6688();
    sub_100019C94(v120, qword_1002E6180);
    v121 = sub_1001F6668();
    v122 = sub_1001F7298();
    if (os_log_type_enabled(v121, v122))
    {
      v123 = swift_slowAlloc();
      *v123 = 0;
      _os_log_impl(&_mh_execute_header, v121, v122, "Failed to create JWS signing data", v123, 2u);
      sub_10003A72C(v123);
    }

    v83 = 1;
    LOBYTE(v192[0]) = 1;
    sub_1000B2894();
    swift_willThrowTypedImpl();
    sub_10003A36C(v117, v119);
    sub_1001F68E8();
    sub_1000B2EC8();
    (*(v124 + 8))(a2);
    v82 = v198;
    sub_1000B29F4(a1, v198);
  }

  memcpy(v192, a7, sizeof(v192));
  sub_1000B30F8();
  sub_1000B29A0(v125, v126, v127);
  result = sub_1000B29F4(&a7[v187], v82);
  *a5 = v83;
  return result;
}

void sub_1000B19E8(uint64_t a1@<X0>, unint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v108 = a5;
  v99 = a6;
  v10 = type metadata accessor for CheddarTransaction(0);
  v11 = sub_100056658(v10);
  __chkstk_darwin(v11);
  sub_100023510();
  v106 = (v13 - v12);
  v14 = sub_1000183C4(&qword_1002AF150, &unk_100202ED0);
  sub_100056658(v14);
  sub_10001E844();
  __chkstk_darwin(v15);
  v17 = &v93[-v16];
  v105 = sub_1000183C4(&qword_1002AC7C8, &qword_1002008C0);
  sub_10001A278();
  v98 = v18;
  __chkstk_darwin(v19);
  v100 = &v93[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v21);
  v97 = &v93[-v22];
  v23 = *(a1 + 24);
  if (v23)
  {
    v107 = a4;
    v24 = *(a1 + 16);
    v96 = v23;

    sub_10018DA5C();
    v26 = v25;
    v146 = v27 & 1;
    v28 = sub_1000C46EC(a2);
    if (v28)
    {
      v29 = v28;
      v30 = sub_1000C4780();
    }

    else if (*(a1 + 80))
    {
      v30 = 0.0;
    }

    else
    {
      v30 = *(a1 + 64);
    }

    sub_10018DC90();
    v32 = v31;
    v34 = v33;
    sub_1000B2768(a1);
    v144 = v34 & 1;
    v35 = a3 & 1;
    v36 = sub_10013B560();
    v37 = 0;
    v112 = a2 & 0xC000000000000001;
    v113 = v36;
    v111 = a2 & 0xFFFFFFFFFFFFFF8;
    v101 = _swiftEmptyArrayStorage;
    v109 = v26;
    v110 = a2;
    v95 = v32;
    v94 = v35;
    v103 = v17;
    v104 = v24;
    while (v113 != v37)
    {
      if (v112)
      {
        v38 = sub_1001F7808();
      }

      else
      {
        if (v37 >= *(v111 + 16))
        {
          goto LABEL_42;
        }

        v38 = *(a2 + 8 * v37 + 32);
      }

      v39 = v38;
      if (__OFADD__(v37, 1))
      {
        __break(1u);
LABEL_42:
        __break(1u);
LABEL_43:
        __break(1u);
LABEL_44:
        __break(1u);
        return;
      }

      v102 = v37 + 1;
      v40 = sub_1000BFC24();
      v42 = v41;
      v43 = v107;
      sub_10001AE68((v107 + 48), *(v107 + 72));
      v49 = sub_10007A214(2uLL, v40, v42, v44, v45, v46, v47, v48);
      LOBYTE(v40) = v50;

      v52 = *(v108 + 48);
      v51 = *(v108 + 56);
      v53 = v39;

      v54 = v106;
      sub_100140370(v53, v52, v51, v49, v40 & 1, v106);
      v55 = *(v43 + 112);
      v56 = (v43 + 88);
      v57 = v103;
      sub_10001AE68(v56, v55);
      sub_1000B033C(v54, v49, v40 & 1);
      sub_1000B29F4(v54, type metadata accessor for CheddarTransaction);

      if (sub_10001C990(v57, 1, v105) == 1)
      {
        sub_1000B29A0(v57, &qword_1002AF150, &unk_100202ED0);
        ++v37;
        v24 = v104;
        v26 = v109;
        a2 = v110;
      }

      else
      {
        v58 = v97;
        sub_1000B27BC(v57, v97);
        sub_1000B27BC(v58, v100);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v24 = v104;
        v26 = v109;
        a2 = v110;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_100032FDC();
          v101 = v64;
        }

        v60 = v102;
        v61 = v101[2];
        if (v61 >= v101[3] >> 1)
        {
          sub_100032FDC();
          v101 = v65;
        }

        v62 = v100;
        v63 = v101;
        v101[2] = v61 + 1;
        sub_1000B27BC(v62, v63 + ((*(v98 + 80) + 32) & ~*(v98 + 80)) + *(v98 + 72) * v61);
        v37 = v60;
      }
    }

    v66 = v26;
    v67 = v101;

    v68 = 0;
    v69 = _swiftEmptyArrayStorage;
    while (v113 != v68)
    {
      if (v112)
      {
        v70 = sub_1001F7808();
      }

      else
      {
        if (v68 >= *(v111 + 16))
        {
          goto LABEL_44;
        }

        v70 = *(a2 + 8 * v68 + 32);
      }

      v71 = v70;
      v72 = v68 + 1;
      if (__OFADD__(v68, 1))
      {
        goto LABEL_43;
      }

      if (sub_1000C2448())
      {

        ++v68;
        a2 = v110;
      }

      else
      {
        v128 = sub_1000C1A68();
        v73 = sub_1001F7E28();
        v75 = v74;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_100032370();
          v69 = v78;
        }

        v76 = v69[2];
        if (v76 >= v69[3] >> 1)
        {
          sub_100032370();
          v69 = v79;
        }

        v69[2] = v76 + 1;
        v77 = &v69[2 * v76];
        v77[4] = v73;
        v77[5] = v75;
        v68 = v72;
        v67 = v101;
        a2 = v110;
      }
    }

    v80 = sub_10001A07C();

    v81 = v67[2];

    if (v80 == v81)
    {
      v82 = v66;
      v115 = v66;
      LOBYTE(v116) = v146;
      *(&v116 + 1) = *v145;
      HIDWORD(v116) = *&v145[3];
      v117 = v30;
      v83 = 5;
      v118 = 5;
      v119 = v24;
      v84 = v95;
      v85 = v96;
      v120 = v96;
      v121 = v95;
      LOBYTE(v122) = v144;
      *(&v122 + 1) = *v143;
      HIDWORD(v122) = *&v143[3];
      v86 = 0x65646F6358;
      v87 = 0xE500000000000000;
      v123 = 0x65646F6358;
      v124 = 0xE500000000000000;
      v125 = v67;
      v126 = v69;
      v88 = v67;
      v89 = v94;
      v127 = v94;
      v113 = v116;
      v112 = v122;
      v128 = v82;
      v129 = v146;
      *v130 = *v145;
      *&v130[3] = *&v145[3];
      v131 = v30;
      v132 = 5;
      v133 = v24;
      v134 = v96;
      v135 = v95;
      v136 = v144;
      *&v137[3] = *&v143[3];
      *v137 = *v143;
      v138 = 0x65646F6358;
      v139 = 0xE500000000000000;
      v140 = v88;
      v141 = v69;
      v142 = v94;
      sub_1000B282C(&v115, &v114);
      sub_1000B2864(&v128);

      goto LABEL_40;
    }
  }

  else
  {

    sub_1000B2768(a1);
  }

  v109 = 0;
  v112 = 0;
  v113 = 0;
  v83 = 0;
  v24 = 0;
  v85 = 0;
  v84 = 0;
  v86 = 0;
  v87 = 0;
  v88 = 0;
  v69 = 0;
  v89 = 0;
  v30 = 0.0;
LABEL_40:
  sub_1000B2768(v108);
  v90 = v99;
  v91 = v112;
  v92 = v113;
  *v99 = v109;
  v90[1] = v92;
  *(v90 + 2) = v30;
  v90[3] = v83;
  v90[4] = v24;
  v90[5] = v85;
  v90[6] = v84;
  v90[7] = v91;
  v90[8] = v86;
  v90[9] = v87;
  v90[10] = v88;
  v90[11] = v69;
  *(v90 + 96) = v89;
}

unint64_t sub_1000B2128(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_10027AFF8;
  v6._object = a2;
  v4 = sub_1001F7BD8(v3, v6);

  if (v4 >= 8)
  {
    return 8;
  }

  else
  {
    return v4;
  }
}

unint64_t sub_1000B2184(char a1)
{
  result = 1684632420;
  switch(a1)
  {
    case 1:
      result = 0x6E6F697369766572;
      break;
    case 2:
      result = 0x6449656C646E7562;
      break;
    case 3:
      result = 0x496D616441707061;
      break;
    case 4:
      result = 0x6D6E6F7269766E65;
      break;
    case 5:
      result = 0x65726F4D736168;
      break;
    case 6:
      result = 0xD000000000000012;
      break;
    case 7:
      result = 0xD000000000000010;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1000B2298(void *a1)
{
  v3 = v1;
  v5 = sub_1000183C4(&qword_1002B25B8, &qword_100208C08);
  sub_10001A278();
  v7 = v6;
  sub_10001E844();
  __chkstk_darwin(v8);
  v10 = &v12 - v9;
  sub_10001AE68(a1, a1[3]);
  sub_1000B2B3C();
  sub_1001F8198();
  LOBYTE(v14) = 0;
  sub_1000B2F78();
  sub_1001F7D48();
  if (!v2)
  {
    v14 = *(v3 + 16);
    v13 = 1;
    sub_1000B2B90();
    sub_1000B3028();
    sub_100024A88();
    sub_1001F7DC8();
    LOBYTE(v14) = 2;
    sub_1000B2F78();
    sub_1001F7D88();
    LOBYTE(v14) = 3;
    sub_1000B2F78();
    sub_1001F7D48();
    LOBYTE(v14) = 4;
    sub_1000B2F78();
    sub_1001F7D88();
    LOBYTE(v14) = 5;
    sub_100024A88();
    sub_1001F7D98();
    *&v14 = *(v3 + 80);
    v13 = 6;
    sub_1000183C4(&qword_1002B25D0, &qword_100208C10);
    sub_1000B2BE4();
    sub_1000B3028();
    sub_100024A88();
    sub_1001F7DC8();
    *&v14 = *(v3 + 88);
    v13 = 7;
    sub_1000183C4(&qword_1002ACA10, qword_1001FEBF0);
    sub_100057AE0();
    sub_1000B3028();
    sub_100024A88();
    sub_1001F7DC8();
  }

  return (*(v7 + 8))(v10, v5);
}

unint64_t sub_1000B2520@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000B2128(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_1000B2550@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1000B2184(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1000B2598@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1000B2174(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1000B25CC(uint64_t a1)
{
  v2 = sub_1000B2B3C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000B2608(uint64_t a1)
{
  v2 = sub_1000B2B3C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000B265C@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, Swift::Int a6@<X5>, void *a7@<X8>)
{
  if (a6 >= 1)
  {
    sub_1001F6BF8(a6);
    while (1)
    {
      swift_stdlib_random();
    }
  }

  *a7 = a2;
  a7[1] = a3;
  a7[2] = a4;
  a7[3] = a5;
  a7[4] = 5527370;
  a7[5] = 0xE300000000000000;
  a7[6] = result;
  a7[7] = 0;
  a7[8] = 0;
  return result;
}

uint64_t sub_1000B27BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000183C4(&qword_1002AC7C8, &qword_1002008C0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1000B2894()
{
  result = qword_1002B2588;
  if (!qword_1002B2588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B2588);
  }

  return result;
}

uint64_t sub_1000B28E8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  a3(0);
  sub_1000B30E4();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1000B2944(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  sub_1000183C4(a3, a4);
  sub_1000B30E4();
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1000B29A0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  sub_1000183C4(a2, a3);
  sub_1000B2EC8();
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_1000B29F4(uint64_t a1, uint64_t (*a2)(void))
{
  a2(0);
  sub_1000B2EC8();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1000B2A48(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1000B2A90(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 97))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 40);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1000B2AD0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 96) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 97) = 1;
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

    *(result + 97) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1000B2B3C()
{
  result = qword_1002B25C0;
  if (!qword_1002B25C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B25C0);
  }

  return result;
}

unint64_t sub_1000B2B90()
{
  result = qword_1002B25C8;
  if (!qword_1002B25C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B25C8);
  }

  return result;
}

unint64_t sub_1000B2BE4()
{
  result = qword_1002B25D8;
  if (!qword_1002B25D8)
  {
    sub_100019BC4(&qword_1002B25D0, &qword_100208C10);
    sub_100019C4C(&qword_1002AF280, &qword_1002AC7C8, &qword_1002008C0, &unk_100213518);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B25D8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for TransactionHistoryResponse.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xF9)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF8)
  {
    v6 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x1000B2D60);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 7;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1000B2D9C()
{
  result = qword_1002B25E0;
  if (!qword_1002B25E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B25E0);
  }

  return result;
}

unint64_t sub_1000B2DF4()
{
  result = qword_1002B25E8;
  if (!qword_1002B25E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B25E8);
  }

  return result;
}

unint64_t sub_1000B2E4C()
{
  result = qword_1002B25F0;
  if (!qword_1002B25F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B25F0);
  }

  return result;
}

uint64_t sub_1000B2EDC(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_1000B2EFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t *a8, uint64_t *a9, uint64_t (*a10)(uint64_t), uint64_t *a11, uint64_t *a12, uint64_t a13, uint64_t (*a14)(void), unint64_t *a15, uint64_t a16)
{
  v21 = *(v19 - 108) & 1;
  v22 = *(v19 - 104);

  return sub_1000B0B88(v17, v18, v22, v21, (v19 - 89), a8, v16, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_1000B2F5C(uint64_t a1, uint64_t a2, int a3)
{
  *(v3 - 108) = a3;
  *(v3 - 104) = a2;
  return 0;
}

uint64_t sub_1000B2FDC()
{

  return sub_1001F68E8();
}

void sub_1000B2FFC()
{
  v0[29] = v1;
  v0[30] = v3;
  v0[27] = 47;
  v0[28] = v2;
  v0[25] = 95;
  v0[26] = v2;
}

uint64_t sub_1000B306C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{

  return sub_1001F75F8();
}

uint64_t sub_1000B3084()
{

  return sub_1000B28E8(v2, v1, v0);
}

uint64_t sub_1000B30A0()
{
  sub_10001AE68((v0 + 16), *(v0 + 40));

  return sub_10007AB10();
}

void sub_1000B30D0(uint64_t a1@<X8>)
{
  v1[27] = a1;
  v1[28] = 0xE100000000000000;
  v1[25] = 45;
  v1[26] = 0xE100000000000000;
}

uint64_t sub_1000B3104@<X0>(void (*a1)(uint64_t, uint64_t)@<X0>, uint64_t a2@<X4>, uint64_t a3@<X6>, uint64_t a4@<X8>)
{
  sub_10002DFFC();
  v28 = v7;
  v29 = v6;
  __chkstk_darwin(v8);
  sub_100023510();
  v11 = v10 - v9;
  v13 = *(v12 + 16);
  sub_10002DFFC();
  v15 = v14;
  __chkstk_darwin(v16);
  sub_100023510();
  v19 = v18 - v17;
  sub_10002DFFC();
  __chkstk_darwin(v20);
  sub_100023510();
  v23 = v22 - v21;
  (*(v24 + 16))(v22 - v21, v25);
  v26 = 1;
  if (sub_10001C990(v23, 1, v13) != 1)
  {
    (*(v15 + 32))(v19, v23, v13);
    a1(v19, v11);
    (*(v15 + 8))(v19, v13);
    if (v4)
    {
      return (*(v28 + 32))(a3, v11, v29);
    }

    v26 = 0;
  }

  return sub_100018460(a4, v26, 1, a2);
}

BOOL sub_1000B3348()
{
  v1 = *(v0 + 32);
  v2 = pthread_self();
  return pthread_equal(v1, v2) != 0;
}

uint64_t ThreadSpecificVariable.__allocating_init()()
{
  sub_1000856AC();
  v0 = swift_allocObject();
  ThreadSpecificVariable.init()(v0, v1, v2, v3);
  return v0;
}

void *ThreadSpecificVariable.currentValue.getter()
{
  result = sub_1000B3A20();
  if (result)
  {
    swift_unknownObjectRetain();
    swift_dynamicCast();
    return v1;
  }

  return result;
}

uint64_t ThreadSpecificVariable.currentValue.setter(uint64_t a1)
{
  if (sub_1000B3A20())
  {
  }

  sub_1001F74B8();
  sub_1000B3104(sub_1000B3B9C, &type metadata for UnsafeMutableRawPointer, v1, &v3);
  sub_10004B100(v3);
  return swift_unknownObjectRelease();
}

uint64_t sub_1000B3540()
{
  v1 = *(v0 + 32);
  v2 = sub_1001F6F88();
  *(v2 + 16) = 64;
  *(v2 + 32) = 0u;
  v3 = v2 + 32;
  *(v2 + 48) = 0u;
  *(v2 + 64) = 0u;
  *(v2 + 80) = 0u;
  if (pthread_getname_np(v1, (v2 + 32), 0x40uLL))
  {
    v4 = 0;
  }

  else
  {
      ;
    }

    v4 = sub_1001F6C08();
  }

  return v4;
}

uint64_t sub_1000B35F4(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v14 = 0;
  v10 = swift_allocObject();
  *(v10 + 16) = a4;
  *(v10 + 24) = a5;
  sub_1000183C4(&qword_1002B27A0, &unk_100208EC0);
  v11 = swift_allocObject();
  v11[2] = sub_1000B3DB4;
  v11[3] = v10;
  v11[4] = a1;
  v11[5] = a2;

  if (pthread_create(&v14, 0, sub_1001B4310, v11))
  {
    __break(1u);
  }

  if ((a3 & 1) == 0)
  {
  }

  result = v14;
  if (!v14)
  {
    __break(1u);
    return result;
  }

  v13 = pthread_detach(v14);

  if (v13)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000B3734()
{

  return swift_deallocClassInstance();
}

unint64_t sub_1000B376C()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = sub_1000B3540();
  v5 = v3;
  v6 = v4;
  if (!v1)
  {
    if (!v4)
    {
      return 0x61657268544F494ELL;
    }

    sub_1000B3DEC();
    sub_1001F77B8(26);

    sub_1000B3DE0();
    v9 = 0xD000000000000017;
    goto LABEL_15;
  }

  if (!v4)
  {
    sub_1000B3DEC();

    sub_1001F77B8(27);

    sub_1000B3DE0();
    v9 = 0xD000000000000018;
    goto LABEL_12;
  }

  v7 = v2 == v3 && v1 == v4;
  if (!v7 && (sub_1001F7EA8() & 1) == 0)
  {
    sub_1000B3DEC();

    sub_1001F77B8(44);

    sub_1000B3DE0();
    v9 = 0xD000000000000018;
    v11._countAndFlagsBits = v2;
    v11._object = v1;
    sub_1001F6CA8(v11);

    v12._countAndFlagsBits = 0x6C6175746361202CLL;
    v12._object = 0xEF203D20656D614ELL;
    sub_1001F6CA8(v12);
LABEL_15:
    v13._countAndFlagsBits = v5;
    v13._object = v6;
    sub_1001F6CA8(v13);
    goto LABEL_16;
  }

  sub_1000B3DEC();
  sub_1001F77B8(20);

  sub_1000B3DE0();
  v9 = 0xD000000000000011;
LABEL_12:
  v10._countAndFlagsBits = v2;
  v10._object = v1;
  sub_1001F6CA8(v10);
LABEL_16:

  v14._countAndFlagsBits = 41;
  v14._object = 0xE100000000000000;
  sub_1001F6CA8(v14);
  return v9;
}

uint64_t sub_1000B3994(void (__cdecl *a1)(void *))
{
  sub_1000856AC();
  v2 = swift_allocObject();
  sub_10004B094(a1);
  return v2;
}

uint64_t sub_1000B39CC()
{
  result = pthread_key_delete(*(v0 + 16));
  if (!result)
  {
    return v0;
  }

  __break(1u);
  return result;
}

uint64_t sub_1000B39F4()
{
  sub_1000B39CC();
  sub_1000856AC();

  return swift_deallocClassInstance();
}

void *ThreadSpecificVariable.init()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ThreadSpecificVariable.Key(0, *(*v4 + 80), a3, a4);
  v4[2] = sub_1000B3994(j_j__swift_release);
  return v4;
}

uint64_t ThreadSpecificVariable.__allocating_init(value:)(uint64_t a1)
{
  v1 = ThreadSpecificVariable.__allocating_init()();

  v2 = swift_unknownObjectRetain();
  ThreadSpecificVariable.currentValue.setter(v2);

  swift_unknownObjectRelease();
  return v1;
}

uint64_t sub_1000B3AD4@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *a1;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  type metadata accessor for Box(0, TupleTypeMetadata2, v7, v8);
  v10[0] = a2;
  v10[1] = v5;
  *a3 = sub_100073888(v10);

  return swift_unknownObjectRetain();
}

uint64_t (*ThreadSpecificVariable.currentValue.modify(void **a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  *a1 = ThreadSpecificVariable.currentValue.getter();
  return sub_1000B3C1C;
}

uint64_t sub_1000B3C1C(uint64_t *a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    return ThreadSpecificVariable.currentValue.setter(*a1);
  }

  v2 = swift_unknownObjectRetain();
  ThreadSpecificVariable.currentValue.setter(v2);

  return swift_unknownObjectRelease();
}

uint64_t ThreadSpecificVariable.__deallocating_deinit()
{
  ThreadSpecificVariable.deinit();
  sub_1000856AC();

  return swift_deallocClassInstance();
}

uint64_t sub_1000B3D7C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000B3DF8(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;

  sub_1000B40C0();
  if (v3)
  {
  }

  else
  {
    sub_1000183C4(&unk_1002B3460, &qword_100208FD0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_100208ED0;
    *(inited + 32) = a1;
    *(inited + 40) = a2;

    for (i = 0; ; ++i)
    {
      if (i == 2)
      {

        swift_setDeallocating();
        sub_1001E57B0();
        return v4;
      }

      if ((inited & 0xC000000000000001) != 0)
      {
        v10 = sub_1001F7808();
      }

      else
      {
        if (i >= *((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          return result;
        }

        v10 = *(inited + 8 * i + 32);
      }

      sub_100047940();
      swift_beginAccess();
      if (*(v10 + 16) != 1)
      {
        break;
      }

      v11 = *(v10 + 20);
      sub_10019DD84(v11, 3, 0);
      sub_10019DD84(v11, 4, v12 | 4u);
    }

    v13 = sub_1000274C4();
    sub_1000276A0(&type metadata for IOError, v13);
    *v14 = 0xD00000000000001FLL;
    *(v14 + 8) = 0x8000000100224AB0;
    *(v14 + 16) = 9;
    swift_willThrow();
  }

  return v4;
}

uint64_t sub_1000B40C0()
{
  sub_1000183C4(&qword_1002B28C0, qword_100208FD8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1001FEBE0;
  *(inited + 32) = *(v0 + 16);
  *(inited + 40) = *(v0 + 24);

  for (i = 32; ; i += 8)
  {
    if (i == 48)
    {
      swift_setDeallocating();
      return sub_1001E5774();
    }

    v4 = *(inited + i);
    sub_100047940();
    swift_beginAccess();
    if (*(v4 + 16) != 1)
    {
      v7 = sub_100077354();
      v8 = sub_1000276A0(&type metadata for IOError, v7);
      sub_1000B4B14(v8, v9);

      goto LABEL_14;
    }

    v5 = *(v4 + 20);

    sub_10019DD84(v5, 73, 1);
    if (v1)
    {
      break;
    }
  }

  swift_errorRetain();
  sub_1000183C4(&qword_1002ACE88, &unk_1001FF100);
  if (swift_dynamicCast())
  {

    if (v15 == 22)
    {

      v10 = sub_1000B4A80();
      sub_1000276A0(&type metadata for NIOFcntlFailedError, v10);
    }

    else
    {
      sub_10019DE1C(v5);
      v11 = sub_1000274C4();
      sub_1000276A0(&type metadata for IOError, v11);
      *v12 = v13;
      *(v12 + 8) = v14;
      *(v12 + 16) = v15;
    }

    swift_willThrow();
  }

LABEL_14:
  swift_setDeallocating();
  sub_1001E5774();
}

uint64_t sub_1000B42D4()
{
  sub_1001F77B8(26);
  v3._countAndFlagsBits = 0x7269615065706950;
  v3._object = 0xEE003D6E69207B20;
  sub_1001F6CA8(v3);
  sub_1000B4B3C(v0);
  v4._countAndFlagsBits = 0x3D74756F202CLL;
  v4._object = 0xE600000000000000;
  sub_1001F6CA8(v4);
  sub_1000B4B3C(v1);
  v5._countAndFlagsBits = 32032;
  v5._object = 0xE200000000000000;
  sub_1001F6CA8(v5);
  return 0;
}

void sub_1000B43AC(uint64_t a1)
{
  sub_100047940();
  swift_beginAccess();
  sub_1000B4B74();
  if (v2)
  {
    if (a1)
    {
      v3 = sub_1000B4B60();
      sub_10019E03C(v3, v4, v5);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v6 = sub_100077354();
    v7 = sub_1000276A0(&type metadata for IOError, v6);
    sub_1000B4B14(v7, v8);
  }
}

void sub_1000B4448(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);
  sub_100047940();
  swift_beginAccess();
  sub_1000B4B74();
  if (v6)
  {
    sub_10019DE98(*(v5 + 20), a1, a2);
  }

  else
  {
    v7 = sub_100077354();
    v8 = sub_1000276A0(&type metadata for IOError, v7);
    sub_1000B4B14(v8, v9);
  }
}

void sub_1000B44E8(uint64_t a1)
{
  sub_100047940();
  swift_beginAccess();
  sub_1000B4B74();
  if (v2)
  {
    if (a1)
    {
      v3 = sub_1000B4B60();
      sub_10019DF8C(v3, v4, v5);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v6 = sub_100077354();
    v7 = sub_1000276A0(&type metadata for IOError, v6);
    sub_1000B4B14(v7, v8);
  }
}

uint64_t sub_1000B4584()
{
  v0 = sub_10002D678();
  v1 = sub_1000276A0(&type metadata for ChannelError, v0);
  return sub_1000B4AEC(v1, v2);
}

void sub_1000B45BC(unsigned __int8 a1)
{
  if (a1 > 1u)
  {
    sub_1000B4600();
  }

  else
  {
    NIOFileHandle.close()();
  }
}

void sub_1000B4600()
{
  v3 = v1;
  v4 = v0;
  v5 = *(v0 + 16);
  sub_100047940();
  swift_beginAccess();
  if (*(v5 + 16))
  {
    NIOFileHandle.close()();
    if (v6)
    {
      v2 = v6;
    }

    else
    {
      v2 = 1;
    }

    v7 = v6 != 0;
    v3 = 0;
  }

  else
  {
    v8 = *(v4 + 24);
    sub_100047940();
    swift_beginAccess();
    if ((*(v8 + 16) & 1) == 0)
    {
      v12 = sub_10002D678();
      sub_1000276A0(&type metadata for ChannelError, v12);
      *v13 = 3;
      *(v13 + 8) = 3;
      swift_willThrow();
      return;
    }

    v7 = 0;
  }

  sub_100047940();
  swift_beginAccess();
  sub_1000B4B74();
  if (!v9 || (NIOFileHandle.close()(), (v3 = v10) == 0))
  {
    if (!v7)
    {
      return;
    }

    v11 = 0;
    goto LABEL_15;
  }

  if (v7)
  {
    v11 = 1;
LABEL_15:
    swift_errorRetain();
    sub_1000183C4(&qword_1002ACE88, &unk_1001FF100);
    swift_willThrowTypedImpl();
    sub_1000374AC(v3, v11);
    sub_1000374AC(v2, 1);
    return;
  }

  sub_1000183C4(&qword_1002ACE88, &unk_1001FF100);
  swift_willThrowTypedImpl();
}

uint64_t sub_1000B478C()
{
  v1 = *(v0 + 16);
  sub_100047940();
  swift_beginAccess();
  if (*(v1 + 16))
  {
    return 1;
  }

  v3 = *(v0 + 24);
  sub_100047940();
  swift_beginAccess();
  return *(v3 + 16);
}

uint64_t sub_1000B4804()
{
  sub_10004AF74();

  return swift_deallocClassInstance();
}

uint64_t sub_1000B48F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  result = a5(a1, a2, a3, a4);
  if (v5)
  {
    return v7;
  }

  return result;
}

uint64_t sub_1000B49B8(uint64_t a1)
{
  result = sub_1000B4A40(&qword_1002B28A8, &unk_100208F58);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1000B49FC(uint64_t a1)
{
  result = sub_1000B4A40(&qword_1002B28B0, &unk_100208F80);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1000B4A40(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for PipePair();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1000B4A80()
{
  result = qword_1002B28B8;
  if (!qword_1002B28B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B28B8);
  }

  return result;
}

uint64_t sub_1000B4AEC(uint64_t a1, uint64_t a2)
{
  *a2 = 1;
  *(a2 + 8) = 3;

  return swift_willThrow();
}

uint64_t sub_1000B4B14(uint64_t a1, uint64_t a2)
{
  *a2 = 0xD00000000000001FLL;
  *(a2 + 8) = v2;
  *(a2 + 16) = 9;

  return swift_willThrow();
}

uint64_t sub_1000B4B3C(uint64_t a1, ...)
{

  return sub_1001F7A28();
}

uint64_t sub_1000B4B80(char a1)
{
  if (a1 == 3)
  {
    return 0;
  }

  if (!a1)
  {
    return 1;
  }

  if (qword_1002AC510 != -1)
  {
    sub_10001B230(&qword_1002AC510);
  }

  v3 = sub_1001F6688();
  sub_100019C94(v3, qword_1002E6180);
  v4 = sub_1001F6668();
  v5 = sub_1001F7298();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 134217984;
    *(v6 + 4) = qword_1002090B0[a1 - 1];
    sub_1000B558C(&_mh_execute_header, v7, v8, "no developer control info for %ld");
    sub_10003A72C(v6);
  }

  return 2;
}

uint64_t sub_1000B4C78(char a1)
{
  if (a1 == 3)
  {
    return 2;
  }

  if (!a1)
  {
    return 1;
  }

  if (qword_1002AC510 != -1)
  {
    sub_10001B230(&qword_1002AC510);
  }

  v3 = sub_1001F6688();
  sub_100019C94(v3, qword_1002E6180);
  v4 = sub_1001F6668();
  v5 = sub_1001F7298();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 134217984;
    *(v6 + 4) = qword_1002090B0[a1 - 1];
    sub_1000B558C(&_mh_execute_header, v7, v8, "no message reason info for %ld");
    sub_10003A72C(v6);
  }

  return 4;
}

uint64_t sub_1000B4D7C(char a1)
{
  if (!a1)
  {
    return 7107189;
  }

  if (a1 == 1)
  {
    return 0xD00000000000001BLL;
  }

  return 0x526567617373656DLL;
}

uint64_t sub_1000B4DDC(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, void *a5, int a6)
{
  v43 = a6;
  v45 = a2;
  v10 = sub_1000183C4(&qword_1002ACE98, &qword_1001FF1A0);
  __chkstk_darwin(v10 - 8);
  v12 = &v42 - v11;
  v46 = sub_1001F6288();
  v13 = *(v46 - 8);
  __chkstk_darwin(v46);
  v44 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = 0;
  v50 = 0xE000000000000000;
  sub_1001F77B8(21);

  v49 = 0xD000000000000011;
  v50 = 0x8000000100226C60;
  v48 = a1;
  v52._countAndFlagsBits = sub_1001F7E28();
  sub_1001F6CA8(v52);

  v53._countAndFlagsBits = a4;
  v53._object = a5;
  sub_1001F6CA8(v53);
  v15 = v49;
  v16 = v50;
  if (qword_1002AC510 != -1)
  {
    sub_10001B230(&qword_1002AC510);
  }

  v17 = sub_1001F6688();
  sub_100019C94(v17, qword_1002E6180);

  v18 = sub_1001F6668();
  v19 = sub_1001F72B8();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v42 = v13;
    v21 = v20;
    v22 = v15;
    v23 = swift_slowAlloc();
    v49 = v23;
    *v21 = 136315394;
    *(v21 + 4) = sub_1000E4544(v45, a3, &v49);
    *(v21 + 12) = 2080;
    *(v21 + 14) = sub_1000E4544(v22, v16, &v49);
    _os_log_impl(&_mh_execute_header, v18, v19, "message for %s at %s", v21, 0x16u);
    swift_arrayDestroy();
    v24 = v23;
    v15 = v22;
    sub_10003A72C(v24);
    v25 = v21;
    v13 = v42;
    sub_10003A72C(v25);
  }

  sub_1001F6258();
  v26 = v46;
  if (sub_10001C990(v12, 1, v46) == 1)
  {
    sub_100022CE8(v12);

    v27 = sub_1001F6668();
    v28 = sub_1001F7298();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = v15;
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v49 = v31;
      *v30 = 136315394;
      v32 = sub_1000E4544(v29, v16, &v49);

      *(v30 + 4) = v32;
      *(v30 + 12) = 2080;
      *(v30 + 14) = sub_1000E4544(v45, a3, &v49);
      _os_log_impl(&_mh_execute_header, v27, v28, "%s is not a URL, cannot send form message for %s", v30, 0x16u);
      swift_arrayDestroy();
      sub_10003A72C(v31);
      sub_10003A72C(v30);
    }

    else
    {
    }

    return 0;
  }

  else
  {
    v33 = v43;
    v34 = BYTE1(v43);

    v35 = v44;
    (*(v13 + 32))(v44, v12, v26);
    v36 = sub_1001F69B8();
    v51 = v26;
    v37 = sub_1000629FC(&v49);
    (*(v13 + 16))(v37, v35, v26);
    sub_1000B555C();
    v47 = v36;
    sub_1001E5A4C();
    v38 = v47;
    v51 = &type metadata for Bool;
    LOBYTE(v49) = v33 & 1;
    sub_1000B555C();
    v47 = v38;
    sub_1001E5A4C();
    v39 = v47;
    v51 = &type metadata for Int;
    v49 = (v34 + 1);
    sub_1000B555C();
    v47 = v39;
    sub_1001E5A4C();
    v40 = v47;
    (*(v13 + 8))(v35, v26);
  }

  return v40;
}

uint64_t sub_1000B536C(unint64_t a1)
{
  if (a1 >= 5)
  {
    return 4;
  }

  else
  {
    return (0x302010004uLL >> (8 * a1));
  }
}

uint64_t sub_1000B53A8@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000B536C(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1000B53D4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1000B4D70(*v1);
  *a1 = result;
  return result;
}

_BYTE *storeEnumTagSinglePayload for MessageReason(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x1000B54CCLL);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1000B5508()
{
  result = qword_1002B28C8;
  if (!qword_1002B28C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B28C8);
  }

  return result;
}

uint64_t sub_1000B555C()
{
  sub_10003708C((v0 - 112), (v0 - 144));

  return swift_isUniquelyReferenced_nonNull_native();
}

void sub_1000B558C(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t sub_1000B55B0()
{
  if (sub_1000B3348())
  {
    v1 = *(v0 + 168);
    v2 = *(v0 + 176);
    sub_10002D824(v1);
    sub_10002D824(v2);
  }

  else
  {

    Lock.lock()();
    v1 = *(v0 + 168);
    v3 = *(v0 + 176);
    sub_10002D824(v1);
    sub_10002D824(v3);
    Lock.unlock()();
  }

  return v1;
}

void sub_1000B5638()
{
  sub_100047940();
  swift_beginAccess();
  v1 = *(v0 + 249);
  swift_getObjectType();
  debugOnly(_:)();
  if (v1 > 4 || ((1 << v1) & 0x13) == 0)
  {
    sub_100180EBC();
    while (1)
    {
      v3 = *(v0 + 249);
      swift_getObjectType();
      sub_1000B6F6C();
      debugOnly(_:)();
      if (v3 != 3)
      {
        break;
      }

      v4 = sub_1000B5888();
      if ((v4 & 0xFE) == 2)
      {
        break;
      }

      if ((v4 & 1) == 0)
      {
        __break(1u);
        return;
      }
    }
  }
}

void sub_1000B5770(void (*a1)(void), uint64_t (*a2)(void), void (*a3)(void))
{
  sub_100047940();
  swift_beginAccess();
  v7 = *(v3 + 249);
  swift_getObjectType();
  debugOnly(_:)();
  if (v7 > 4 || ((1 << v7) & 0x13) == 0)
  {
    a1(*(v3 + 216) & 0xFD);
    while (1)
    {
      v9 = *(v3 + 249);
      swift_getObjectType();
      sub_1000B6F6C();
      debugOnly(_:)();
      if (v9 != 3)
      {
        break;
      }

      v10 = sub_1000B5DA0(a2, a3);
      if ((v10 & 0xFE) == 2)
      {
        break;
      }

      if ((v10 & 1) == 0)
      {
        __break(1u);
        return;
      }
    }
  }
}

uint64_t sub_1000B5888()
{
  v1 = (*(*v0 + 624))();
  sub_100047940();
  swift_beginAccess();
  v2 = v0[249];
  swift_getObjectType();
  sub_1000B6F6C();
  debugOnly(_:)();
  if (v2 == 3)
  {
    sub_100180E50();
    swift_getObjectType();
    sub_1000B6F8C();
    debugOnly(_:)();
    if (sub_10009D370())
    {
      sub_10009E230();
    }
  }

  sub_10002E0B8();
  (*(v3 + 720))();
  sub_10002E0B8();
  if (((*(v4 + 584))() & 1) != 0 && (v0[88] & 1) == 0)
  {
    sub_100180F2C();
  }

  return v1 & 1;
}

uint64_t sub_1000B5DA0(uint64_t (*a1)(void), void (*a2)(void))
{
  v5 = (*(*v2 + 624))();
  sub_100047940();
  swift_beginAccess();
  v6 = v2[249];
  swift_getObjectType();
  sub_1000B6F6C();
  debugOnly(_:)();
  if (v6 == 3)
  {
    a1();
    swift_getObjectType();
    sub_1000B6F8C();
    debugOnly(_:)();
    if (sub_10009D370())
    {
      sub_10009E230();
    }
  }

  (*(*v2 + 720))(v7);
  sub_10002E258();
  if (((*(v8 + 584))() & 1) != 0 && (v2[88] & 1) == 0)
  {
    a2();
  }

  return v5 & 1;
}

uint64_t sub_1000B6304(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  type metadata accessor for PipePair();
  v9 = swift_allocObject();

  v10 = sub_1000B3DF8(a2, a3);
  if (v4)
  {

    swift_deallocPartialClassInstance();
  }

  else
  {
    *(v5 + 312) = v10;
    AdaptiveRecvByteBufferAllocator.init(minimum:initial:maximum:)(&v16, 64, 2048, 0x10000);
    v15[3] = &type metadata for AdaptiveRecvByteBufferAllocator;
    v15[4] = &protocol witness table for AdaptiveRecvByteBufferAllocator;
    v11 = swift_allocObject();
    v15[0] = v11;
    v12 = *&v16.initial;
    *(v11 + 16) = *&v16.minimum;
    *(v11 + 32) = v12;
    *(v11 + 48) = v16.decreaseNow;

    v9 = sub_10017B3D4(v13, 0, 0, a1, v15);
  }

  return v9;
}

uint64_t sub_1000B6490()
{
  sub_10002D678();
  swift_allocError();
  sub_1000B6F9C(v0, 1);
  return 0;
}

uint64_t sub_1000B64DC()
{
  sub_10002D678();
  swift_allocError();
  return sub_1000B6F9C(v0, 12);
}

uint64_t sub_1000B6524(uint64_t a1, char a2)
{
  v4 = *(*(v2 + 312) + 16);

  sub_10017A608(v4);

  if (!v3)
  {
    __chkstk_darwin(result);

    sub_10017A608(v6);
  }

  return result;
}

void sub_1000B66EC(uint64_t a1, unsigned __int8 a2)
{
  if (a2 - 1 >= 2)
  {
    if (a2)
    {
      return;
    }

    goto LABEL_7;
  }

  v5 = *(*(v2 + 312) + 16);
  sub_100047940();
  swift_beginAccess();
  if (*(v5 + 16) != 1 || (v6 = , sub_10017ADB8(v6), , !v3))
  {
    if (a2 == 2)
    {
LABEL_7:
      v7 = *(*(v2 + 312) + 24);
      sub_100047940();
      swift_beginAccess();
      if (*(v7 + 16) == 1)
      {

        sub_10017ADB8(v8);
      }
    }
  }
}

uint64_t sub_1000B67DC(uint64_t a1, char a2)
{
  v4 = *(v2 + 312);
  v5 = *(v4 + 16);
  sub_100047940();
  swift_beginAccess();
  if (*(v5 + 16) != 1 || (v6 = , sub_10017A9D0(v6), result = , !v3))
  {
    v8 = *(v4 + 24);
    sub_100047940();
    result = swift_beginAccess();
    if (*(v8 + 16) == 1)
    {

      sub_10017A9D0(v9);
    }
  }

  return result;
}

uint64_t sub_1000B68B8()
{
  swift_beginAccess();
  *(v0 + 248) = 1;
  sub_1000B5638();
  v1 = *(*(v0 + 312) + 16);
  sub_100047940();
  result = swift_beginAccess();
  if (*(v1 + 16) == 1)
  {
    sub_10017980C(v0, 1u);

    NIOFileHandle.close()();

    if (v3)
    {
      sub_1000B6F7C();
      result = swift_unexpectedError();
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1000B698C()
{
  v1 = *(*(v0 + 312) + 24);
  sub_100047940();
  result = swift_beginAccess();
  if (*(v1 + 16) == 1)
  {
    sub_10017980C(v0, 0);

    NIOFileHandle.close()();

    if (v3)
    {
      sub_1000B6F7C();
      result = swift_unexpectedError();
      __break(1u);
    }
  }

  return result;
}

void sub_1000B6A40(uint64_t a1)
{
  v3 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      sub_10017980C(v1, 1u);
      if (v2)
      {
        goto LABEL_7;
      }
    }

LABEL_6:
    sub_10017B4EC(v3);
    return;
  }

  sub_10017980C(v1, 0);
  if (!v2)
  {
    goto LABEL_6;
  }

LABEL_7:
  sub_1000B6F7C();
  swift_unexpectedError();
  __break(1u);
}

uint64_t sub_1000B6AE4()
{
  sub_10017B5BC();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for PipeChannel(uint64_t a1)
{
  result = qword_1002B28F8;
  if (!qword_1002B28F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000B6BC0()
{
  sub_1001F77B8(70);
  v17._countAndFlagsBits = 0x6E61684365706950;
  v17._object = 0xEE00207B206C656ELL;
  sub_1001F6CA8(v17);
  sub_1001F6CA8(*(v0 + 72));
  v18._countAndFlagsBits = 0x657669746361202CLL;
  v18._object = 0xEB00000000203D20;
  sub_1001F6CA8(v18);
  v1 = sub_1000069BC((*(v0 + 64) + 16));
  v2 = v1 == 0;
  if (v1)
  {
    v3._countAndFlagsBits = 1702195828;
  }

  else
  {
    v3._countAndFlagsBits = 0x65736C6166;
  }

  if (v2)
  {
    v4 = 0xE500000000000000;
  }

  else
  {
    v4 = 0xE400000000000000;
  }

  v3._object = v4;
  sub_1001F6CA8(v3);

  v19._object = 0x8000000100226CE0;
  v19._countAndFlagsBits = 0xD000000000000011;
  sub_1001F6CA8(v19);
  v5 = sub_1000B55B0();
  sub_10002D83C(v6);
  sub_1000183C4(&qword_1002B2D30, &unk_100209130);
  v7 = sub_1001F74A8();
  v9 = v8;
  sub_10002D83C(v5);
  v20._countAndFlagsBits = v7;
  v20._object = v9;
  sub_1001F6CA8(v20);

  v21._countAndFlagsBits = 0xD000000000000012;
  v21._object = 0x8000000100226D00;
  sub_1001F6CA8(v21);
  v10 = sub_1000B55B0();
  v12 = v11;
  sub_10002D83C(v10);
  v13 = sub_1001F74A8();
  v15 = v14;
  sub_10002D83C(v12);
  v22._countAndFlagsBits = v13;
  v22._object = v15;
  sub_1001F6CA8(v22);

  v23._countAndFlagsBits = 32032;
  v23._object = 0xE200000000000000;
  sub_1001F6CA8(v23);
  return 0;
}

_BYTE *storeEnumTagSinglePayload for PipeChannel.Direction(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x1000B6ED4);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1000B6F10()
{
  result = qword_1002B2D38;
  if (!qword_1002B2D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B2D38);
  }

  return result;
}

uint64_t sub_1000B6F9C@<X0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a2 = a3;
  *(a2 + 8) = 3;

  return swift_willThrow();
}

uint64_t sub_1000B6FBC(uint64_t a1, uint64_t a2)
{

  return swift_unexpectedError();
}

void sub_1000B6FDC()
{

  debugOnly(_:)();
}

uint64_t sub_1000B6FFC()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1000B7060(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a1 + 16);
  os_unfair_lock_lock(v6);
  swift_beginAccess();
  v7 = *(a2 + 40);
  if (*(v7 + 16))
  {

    v8 = sub_10011108C(a3);
    if (v9)
    {
      v10 = *(*(v7 + 56) + 8 * v8);
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  os_unfair_lock_unlock(v6);

  return v10;
}

uint64_t sub_1000B7130(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *(a1 + 16);
  os_unfair_lock_lock(v8);
  sub_10007B13C(a2, a3, &v10);
  os_unfair_lock_unlock(v8);
  if (v5)
  {
  }

  else
  {

    a2 = v10;
  }

  return a2;
}

uint64_t sub_1000B7204(uint64_t a1)
{
  sub_1000B7348(a1);
  v2 = sub_1000B7374();
  sub_10007B028(v2, v3, v4, v5);
  os_unfair_lock_unlock(v1);
}

uint64_t sub_1000B7264(uint64_t a1)
{
  sub_1000B7348(a1);
  v2 = sub_1000B7374();
  sub_10007B260(v2, v3, v4, v5);
  os_unfair_lock_unlock(v1);
}

uint64_t sub_1000B72C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a1 + 16);
  os_unfair_lock_lock(v7);
  sub_10008D1F8(a2, a3, a4);
  os_unfair_lock_unlock(v7);
}

void sub_1000B7348(uint64_t a1)
{
  v2 = *(a1 + 16);

  os_unfair_lock_lock(v2);
}

double sub_1000B738C@<D0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *&v24 = sub_1000B7990(a3);
  *(&v24 + 1) = v7;
  if ((a2 & 0x1000000000000000) != 0)
  {
    sub_10007B9BC();
    v15 = sub_1001F6CF8();
    if (v15 < 0)
    {
      __break(1u);
    }

    if (v15)
    {
      goto LABEL_6;
    }

LABEL_10:
    if (qword_1002AC430 != -1)
    {
      goto LABEL_17;
    }

    goto LABEL_11;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v8 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v8 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v8)
  {
    goto LABEL_10;
  }

LABEL_6:
  type metadata accessor for ByteBuffer._Storage();
  v9 = sub_1000B7E18();
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v13 = 0;
  v14 = *(v9 + 16);
  while (1)
  {
    *v25 = v9;
    *&v25[8] = __PAIR64__(v11, v10);
    *&v25[16] = v14;
    *&v25[20] = v12;
    v25[22] = v13;
    v16 = sub_10007B9BC();
    sub_10007C1D0(v16, v17, v18, v11);
    if (v20)
    {
      v21._countAndFlagsBits = sub_10007B9BC();
      v19 = ByteBuffer._setStringSlowpath(_:at:)(v21, v11);
    }

    v22 = v19;

    if (!__CFADD__(*&v25[12], v22))
    {
      break;
    }

    __break(1u);
LABEL_17:
    sub_100061FE8(&qword_1002AC430);
LABEL_11:
    v10 = qword_1002E6088;
    v11 = HIDWORD(qword_1002E6088);
    v14 = dword_1002E6090;
    v12 = word_1002E6094;
    v13 = byte_1002E6096;
  }

  *&v25[12] += v22;
  result = *&v24;
  *a4 = v24;
  *(a4 + 16) = *v25;
  *(a4 + 31) = *&v25[15];
  return result;
}

unint64_t sub_1000B74F4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 28);
  v4 = *(v0 + 36);
  v5 = *(v0 + 38);
  result = swift_beginAccess();
  if (v3 >= v2)
  {
    return sub_1000B7B5C(*(v1 + 24) + (v5 | (v4 << 8)) + v2, v3 - v2);
  }

  __break(1u);
  return result;
}

uint64_t sub_1000B756C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 7633012 && a2 == 0xE300000000000000;
  if (v3 || (sub_1000B7E74(7633012, 0xE300000000000000) & 1) != 0)
  {

    return 6;
  }

  else
  {
    v6 = a1 == 0x7473696C70 && a2 == 0xE500000000000000;
    if (v6 || (sub_1000B7E74(0x7473696C70, 0xE500000000000000) & 1) != 0)
    {

      return 3;
    }

    else
    {
      v7 = a1 == 1852797802 && a2 == 0xE400000000000000;
      if (v7 || (sub_1000B7E74(1852797802, 0xE400000000000000) & 1) != 0)
      {

        return 5;
      }

      else
      {
        v8 = a1 == 1734701162 && a2 == 0xE400000000000000;
        if (v8 || (sub_1000B7E74(1734701162, 0xE400000000000000) & 1) != 0 || (a1 == 6778986 ? (v9 = a2 == 0xE300000000000000) : (v9 = 0), v9 || (sub_1000B7E74(6778986, 0xE300000000000000) & 1) != 0))
        {

          return 4;
        }

        else
        {
          v10 = a1 == 1819112552 && a2 == 0xE400000000000000;
          if (v10 || (sub_1000B7E74(1819112552, 0xE400000000000000) & 1) != 0)
          {

            return 1;
          }

          else
          {
            v11 = a1 == 7566179 && a2 == 0xE300000000000000;
            if (v11 || (sub_1000B7E74(7566179, 0xE300000000000000) & 1) != 0)
            {

              return 0;
            }

            else
            {
              v12 = a1 == 29546 && a2 == 0xE200000000000000;
              if (v12 || (sub_1000B7E74(29546, 0xE200000000000000) & 1) != 0)
              {

                return 2;
              }

              else
              {
                v13 = a1 == 6778480 && a2 == 0xE300000000000000;
                if (v13 || (sub_1000B7E74(6778480, 0xE300000000000000) & 1) != 0)
                {

                  return 7;
                }

                else if (a1 == 6780531 && a2 == 0xE300000000000000)
                {

                  return 8;
                }

                else
                {
                  v15 = sub_1000B7E74(6780531, 0xE300000000000000);

                  if (v15)
                  {
                    return 8;
                  }

                  else
                  {
                    return 9;
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

double sub_1000B77D0@<D0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *&v24 = a3;
  *(&v24 + 1) = a4;
  sub_100040C5C(a1, a2);
  sub_1000999D4();
  v6 = sub_1001F63E8();
  if (v6 < 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  v23 = a5;
  if (!v6)
  {
    if (qword_1002AC430 != -1)
    {
      goto LABEL_12;
    }

    goto LABEL_5;
  }

  type metadata accessor for ByteBuffer._Storage();
  v7 = sub_1000B7E18();
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v12 = *(v7 + 16);
  while (1)
  {
    *v25 = v7;
    *&v25[8] = v8;
    *&v25[16] = v12;
    *&v25[20] = v10;
    v25[22] = v11;
    v13 = sub_1000999D4();
    v16 = sub_100074F6C(v13, v14, v15, v9);
    if ((v16 & 0x100000000) != 0)
    {
      sub_1000999D4();
      sub_10005FD28();
    }

    v17 = v16;
    v18 = sub_1000999D4();
    sub_10003A380(v18, v19);
    v20 = sub_10007B9BC();
    sub_10003A36C(v20, v21);
    if (!__CFADD__(v9, v17))
    {
      break;
    }

LABEL_11:
    __break(1u);
LABEL_12:
    sub_100061FE8(&qword_1002AC430);
LABEL_5:
    v8 = qword_1002E6088;
    v9 = HIDWORD(qword_1002E6088);
    v12 = dword_1002E6090;
    v10 = word_1002E6094;
    v11 = byte_1002E6096;
  }

  *&v25[12] = v9 + v17;
  result = *&v24;
  *v23 = v24;
  *(v23 + 16) = *v25;
  *(v23 + 31) = *&v25[15];
  return result;
}

unint64_t sub_1000B7944(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_10027B0D8;
  v6._object = a2;
  v4 = sub_1001F7BD8(v3, v6);

  if (v4 >= 9)
  {
    return 9;
  }

  else
  {
    return v4;
  }
}

unint64_t sub_1000B7990(char a1)
{
  result = 0x7373632F74786574;
  switch(a1)
  {
    case 1:
      result = 0x6D74682F74786574;
      break;
    case 2:
      result = 0xD000000000000016;
      break;
    case 3:
      result = 0xD000000000000017;
      break;
    case 4:
      result = 0x706A2F6567616D69;
      break;
    case 5:
      result = 0xD000000000000010;
      break;
    case 6:
      result = 0x616C702F74786574;
      break;
    case 7:
      result = 0x6E702F6567616D69;
      break;
    case 8:
      result = 0x76732F6567616D69;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1000B7B00@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000B7944(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_1000B7B30@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1000B7990(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_1000B7B5C(uint64_t a1, unint64_t a2)
{
  result = 0;
  if (a1 && a2)
  {
    if (a2 <= 14)
    {
      return sub_1001F6298();
    }

    else
    {
      sub_1001F6088();
      swift_allocObject();
      sub_1001F6048();
      if (a2 >= 0x7FFFFFFF)
      {
        sub_1001F6338();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = a2;
      }

      else
      {
        return a2 << 32;
      }
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for HTTPBodyType(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xF8)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF7)
  {
    v6 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x1000B7CD8);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 8;
        }

        break;
    }
  }

  return result;
}

__n128 sub_1000B7D10(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 31) = *(a2 + 31);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1000B7D24(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 39))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 16);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1000B7D64(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 38) = 0;
    *(result + 36) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 39) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 39) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1000B7DC4()
{
  result = qword_1002B2E00;
  if (!qword_1002B2E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B2E00);
  }

  return result;
}

uint64_t sub_1000B7E18()
{

  return static ByteBuffer._Storage.reallocated(minimumCapacity:allocator:)(v0, j_j__malloc, j_j__realloc, j_j__free, sub_10005EC68);
}

uint64_t sub_1000B7E74(uint64_t a1, uint64_t a2)
{

  return sub_1001F7EA8();
}

uint64_t sub_1000B7E90()
{
  result = v0;
  *(v0 + 16) = _swiftEmptyArrayStorage;
  *(v0 + 24) = 4;
  *(v0 + 32) = 0;
  *(v0 + 40) = 1;
  *(v0 + 48) = 0;
  *(v0 + 56) = 0;
  *(v0 + 72) = 0;
  *(v0 + 80) = 0;
  *(v0 + 64) = 0xF000000000000000;
  return result;
}

uint64_t sub_1000B7EC8()
{

  sub_10003A36C(*(v0 + 56), *(v0 + 64));

  return v0;
}

uint64_t sub_1000B7F00(uint64_t a1, char a2)
{
  if (a2)
  {
    *(v2 + 72) = xmmword_100209300;
  }

  else
  {
    *(v2 + 72) = sub_1001F7E28();
    *(v2 + 80) = v4;
  }
}

BOOL sub_1000B7F88(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_10027B1D0;
  v6._object = a2;
  v4 = sub_1001F7BD8(v3, v6);

  return v4 != 0;
}

unint64_t sub_1000B7FF0(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_10027B208;
  v6._object = a2;
  v4 = sub_1001F7BD8(v3, v6);

  if (v4 >= 4)
  {
    return 4;
  }

  else
  {
    return v4;
  }
}

unint64_t sub_1000B803C(char a1)
{
  result = 0x7975427070416E69;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000014;
      break;
    case 2:
      result = 0xD000000000000018;
      break;
    case 3:
      result = 0xD00000000000001BLL;
      break;
    default:
      return result;
  }

  return result;
}

BOOL sub_1000B80F4@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000B7F88(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1000B8128(uint64_t a1@<X8>)
{
  strcpy(a1, "inAppSuccess");
  *(a1 + 13) = 0;
  *(a1 + 14) = -5120;
}

unint64_t sub_1000B8220@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000B7FF0(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_1000B8250@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1000B803C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1000B832C()
{
  sub_1000B7EC8();

  return swift_deallocClassInstance();
}

_BYTE *storeEnumTagSinglePayload for JingleAction(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x1000B8450);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for JingleDocType(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

  switch(v5)
  {
    case 1:
      *result = 0;
      break;
    case 2:
      *result = 0;
      break;
    case 3:
LABEL_19:
      __break(1u);
      JUMPOUT(0x1000B8524);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1000B8560()
{
  result = qword_1002B2F98;
  if (!qword_1002B2F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B2F98);
  }

  return result;
}

unint64_t sub_1000B85B8()
{
  result = qword_1002B2FA0;
  if (!qword_1002B2FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B2FA0);
  }

  return result;
}

unint64_t sub_1000B860C(uint64_t a1, void *a2)
{
  v6._countAndFlagsBits = a1;
  v3._rawValue = &off_10027B288;
  v6._object = a2;
  v4 = sub_1001F7BD8(v3, v6);

  if (v4 >= 7)
  {
    return 7;
  }

  else
  {
    return v4;
  }
}

unint64_t sub_1000B8660(char a1)
{
  result = 0x73676E6970;
  switch(a1)
  {
    case 1:
      result = 0x6F44656C676E696ALL;
      break;
    case 2:
      result = 0xD000000000000019;
      break;
    case 3:
      result = 0x6341656C676E696ALL;
      break;
    case 4:
      result = 1684632420;
      break;
    case 5:
      result = 0x7473696C2D707061;
      break;
    case 6:
      result = 0x2D74706965636572;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1000B875C(void *a1)
{
  v3 = v1;
  v5 = sub_1000183C4(&qword_1002B2FA8, &qword_1002095B0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v12 - v7;
  sub_10001AE68(a1, a1[3]);
  sub_1000B8B90();
  sub_1001F8198();
  v13 = *(v3 + 16);
  v15 = 0;
  sub_1000183C4(&qword_1002ACA10, qword_1001FEBF0);
  sub_100057AE0();
  sub_1000B8EF0();
  sub_100024A88();
  sub_1001F7DC8();
  if (v2)
  {
    return (*(v6 + 8))(v8, v5);
  }

  LOBYTE(v13) = 1;
  sub_100057B5C();
  sub_100024A88();
  sub_1001F7DC8();
  LOBYTE(v13) = 2;
  sub_100024A88();
  sub_1001F7D48();
  LOBYTE(v13) = *(v3 + 24);
  v15 = 3;
  sub_100057BB0();
  sub_1000B8EF0();
  sub_100024A88();
  sub_1001F7D58();
  v10 = *(v3 + 72);
  LOBYTE(v13) = 4;

  sub_100024A88();
  sub_1001F7D18();
  if (!v10)
  {

    v13 = *(v3 + 48);
    v15 = 5;
    sub_1000183C4(&qword_1002AF440, &qword_1002036E0);
    sub_100057C04();
    sub_1000B8EF0();
    sub_100024A88();
    sub_1001F7D58();
    v11 = *(v3 + 64);
    v13 = *(v3 + 56);
    v14 = v11;
    v15 = 6;
    sub_100040C5C(v13, v11);
    sub_10004FAD4();
    sub_1000B8EF0();
    sub_100024A88();
    sub_1001F7D58();
    sub_10003A36C(v13, v14);
    return (*(v6 + 8))(v8, v5);
  }

  (*(v6 + 8))(v8, v5);
}

unint64_t sub_1000B8A54@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000B860C(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_1000B8A84@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1000B8660(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1000B8ACC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1000B8658(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1000B8AF4(uint64_t a1)
{
  v2 = sub_1000B8B90();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000B8B30(uint64_t a1)
{
  v2 = sub_1000B8B90();

  return CodingKey.debugDescription.getter(a1, v2);
}

unint64_t sub_1000B8B90()
{
  result = qword_1002B2FB0;
  if (!qword_1002B2FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B2FB0);
  }

  return result;
}

unint64_t sub_1000B8BE4()
{
  result = qword_1002AF450;
  if (!qword_1002AF450)
  {
    type metadata accessor for IAPTransaction(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002AF450);
  }

  return result;
}

unint64_t sub_1000B8C3C()
{
  result = qword_1002B2FB8;
  if (!qword_1002B2FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B2FB8);
  }

  return result;
}

unint64_t sub_1000B8C90()
{
  result = qword_1002B2FC0;
  if (!qword_1002B2FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002B2FC0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for GenericStoreKitResponse.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x1000B8DB0);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 6;
        }

        break;
    }
  }

  return result;
}