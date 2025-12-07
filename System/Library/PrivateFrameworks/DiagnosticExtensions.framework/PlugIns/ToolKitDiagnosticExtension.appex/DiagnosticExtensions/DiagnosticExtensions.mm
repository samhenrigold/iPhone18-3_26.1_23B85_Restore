id sub_1000012A0()
{
  result = [objc_allocWithZone(type metadata accessor for ToolKitDiagnosticWrapper()) init];
  static ToolKitDiagnosticWrapper.shared = result;
  return result;
}

uint64_t *ToolKitDiagnosticWrapper.shared.unsafeMutableAddressor()
{
  if (qword_100014410 != -1)
  {
    sub_100009AC0(&qword_100014410);
  }

  return &static ToolKitDiagnosticWrapper.shared;
}

id static ToolKitDiagnosticWrapper.shared.getter()
{
  if (qword_100014410 != -1)
  {
    sub_100009AC0(&qword_100014410);
  }

  v1 = static ToolKitDiagnosticWrapper.shared;

  return v1;
}

id sub_100001384()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "init");
}

void ToolKitDiagnosticWrapper.getToolKitDatabaseURL()()
{
  sub_100009DBC();
  v1 = v0;
  sub_10000A910();
  sub_100009840();
  __chkstk_darwin(v2);
  sub_1000098E0();
  v3 = sub_1000016A4(&qword_1000142D8, &qword_10000B2F0);
  sub_100009970(v3);
  sub_100009A20();
  __chkstk_darwin(v4);
  v6 = &v13 - v5;
  sub_10000A960();
  sub_10000A950();
  sub_10000A940();
  v7 = sub_10000A930();
  v8 = sub_100009C14();
  sub_1000099F0(v8, v9, v7);
  if (v10)
  {

    sub_1000086B0(v6, &qword_1000142D8, &qword_10000B2F0);
    v12 = 1;
  }

  else
  {
    sub_10000A920();

    (*(*(v7 - 8) + 8))(v6, v7);
    v12 = 0;
  }

  v11 = sub_10000A820();
  sub_1000016EC(v1, v12, 1, v11);
  sub_100009DD4();
}

uint64_t sub_1000016A4(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

void ToolKitDiagnosticWrapper.exportIndexingLogToFile(at:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_100009DBC();
  v21 = v20;
  v482 = sub_10000A910();
  sub_100009840();
  v481 = v22;
  __chkstk_darwin(v23);
  sub_100009854();
  sub_100009894();
  __chkstk_darwin(v24);
  sub_100009B48();
  sub_10000998C(v25);
  v499 = sub_1000016A4(&qword_1000142E8, &qword_10000B300);
  sub_10000997C();
  sub_100009A20();
  __chkstk_darwin(v26);
  sub_100009B3C();
  sub_10000998C(v27);
  v28 = sub_1000016A4(&qword_1000142F0, &qword_10000B308);
  v29 = sub_100009970(v28);
  __chkstk_darwin(v29);
  sub_100009854();
  sub_100009894();
  __chkstk_darwin(v30);
  sub_100009B48();
  sub_10000998C(v31);
  v500 = sub_1000016A4(&qword_1000142F8, &qword_10000B310);
  sub_10000997C();
  sub_100009A20();
  __chkstk_darwin(v32);
  sub_100009B3C();
  sub_10000998C(v33);
  v34 = sub_1000016A4(&qword_100014300, &qword_10000B318);
  v35 = sub_100009970(v34);
  __chkstk_darwin(v35);
  sub_100009854();
  sub_100009894();
  __chkstk_darwin(v36);
  sub_100009B48();
  sub_10000998C(v37);
  v38 = sub_1000016A4(&qword_100014308, &qword_10000B320);
  v39 = sub_100009970(v38);
  __chkstk_darwin(v39);
  sub_100009854();
  sub_100009894();
  __chkstk_darwin(v40);
  sub_100009B48();
  sub_10000998C(v41);
  v42 = sub_1000016A4(&qword_100014310, &qword_10000B328);
  sub_100009970(v42);
  sub_100009A20();
  __chkstk_darwin(v43);
  sub_100009B3C();
  sub_10000998C(v44);
  v513 = sub_10000AA80();
  sub_100009840();
  v490 = v45;
  __chkstk_darwin(v46);
  sub_100009854();
  sub_100009894();
  __chkstk_darwin(v47);
  sub_100009918();
  sub_100009894();
  __chkstk_darwin(v48);
  sub_100009B48();
  sub_10000998C(v49);
  v50 = sub_1000016A4(&qword_100014318, &qword_10000B330);
  sub_100009970(v50);
  sub_100009A20();
  __chkstk_darwin(v51);
  sub_100009B3C();
  sub_10000998C(v52);
  v515 = sub_10000AB30();
  sub_100009840();
  v491 = v53;
  __chkstk_darwin(v54);
  sub_100009854();
  sub_100009894();
  __chkstk_darwin(v55);
  sub_100009918();
  sub_100009894();
  __chkstk_darwin(v56);
  sub_100009B48();
  sub_10000998C(v57);
  v58 = sub_1000016A4(&qword_100014320, &qword_10000B338);
  sub_100009970(v58);
  sub_100009A20();
  __chkstk_darwin(v59);
  sub_100009B3C();
  sub_10000998C(v60);
  *&v519 = sub_10000AA40();
  sub_100009840();
  v511 = v61;
  __chkstk_darwin(v62);
  sub_100009854();
  sub_100009894();
  __chkstk_darwin(v63);
  sub_100009918();
  sub_100009894();
  __chkstk_darwin(v64);
  sub_100009918();
  sub_100009894();
  __chkstk_darwin(v65);
  sub_100009918();
  sub_100009894();
  __chkstk_darwin(v66);
  sub_100009918();
  sub_100009894();
  __chkstk_darwin(v67);
  sub_100009918();
  sub_100009894();
  __chkstk_darwin(v68);
  sub_100009B48();
  sub_10000998C(v69);
  v70 = sub_1000016A4(&qword_100014328, &qword_10000B340);
  sub_100009970(v70);
  sub_100009A20();
  __chkstk_darwin(v71);
  v73 = &v463 - v72;
  v521 = sub_10000ABB0();
  sub_100009840();
  v523 = v74;
  __chkstk_darwin(v75);
  sub_1000098E0();
  sub_10000998C(v77 - v76);
  v479 = sub_10000A890();
  sub_100009840();
  v483 = v78;
  __chkstk_darwin(v79);
  sub_1000098E0();
  v82 = v81 - v80;
  v83 = sub_10000A820();
  sub_100009840();
  v85 = v84;
  v87 = __chkstk_darwin(v86);
  v89 = &v463 - ((v88 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v87);
  sub_10000AB40();
  sub_10000AAB0();
  v90 = sub_10000AAA0();
  v91 = [objc_opt_self() defaultManager];
  sub_10000A810();
  v92 = sub_10000AB70();

  [v91 createFileAtPath:v92 contents:0 attributes:0];

  sub_100008310();
  (*(v85 + 16))(v89, v21, v83);
  v516 = sub_100004478(v89);
  v477 = v90;
  v473 = 0;
  v93 = [objc_allocWithZone(NSDateFormatter) init];
  [v93 setDateStyle:2];
  v518 = v93;
  [v93 setTimeStyle:2];
  sub_100009D0C();
  sub_10000AC50(136);
  v535._countAndFlagsBits = 0xD000000000000027;
  v535._object = 0x800000010000BA90;
  sub_10000ABE0(v535);
  sub_10000A880();
  sub_1000097CC(&qword_100014338, &protocol conformance descriptor for Date);
  sub_100009F50(v506);
  v468 = v94;
  v536._countAndFlagsBits = sub_10000AC90();
  sub_100009E34(v536);

  sub_100009C2C();
  v483 = v95;
  v96 = sub_100009F68();
  v467 = v97;
  v97(v96);
  v537._countAndFlagsBits = 0xD00000000000005FLL;
  v537._object = 0x800000010000BAC0;
  sub_10000ABE0(v537);
  v98 = *(&v531 + 1);
  sub_100009BB4(v99);
  sub_100009B24();
  v472 = v98;
  sub_10000AB90();
  sub_100009C98();
  sub_100009C2C();
  v523 = v100;
  v520 = v101;
  v101(0xD000000000000012, v521);
  sub_100009D3C();
  v102 = v92;
  v469 = v82;
  if (!(!v104 & v103))
  {
    sub_100009998();
    isa = sub_10000A830().super.isa;
    v106 = sub_100009964();
    [v106 v107];

    v108 = sub_100009998();
    sub_1000085C4(v108, v109);
  }

  v471 = sub_10000AA90();
  v110 = *(v471 + 16);
  sub_100009D48();
  v111 = v519;
  if (v110)
  {
    sub_100009D0C();
    sub_10000AC50(113);
    v538._object = 0x800000010000BD00;
    v538._countAndFlagsBits = 0xD00000000000001ALL;
    sub_10000ABE0(v538);
    *&v529[0] = v110;
    v539._countAndFlagsBits = sub_10000AC90();
    sub_10000ABE0(v539);

    v540._countAndFlagsBits = 0xD000000000000052;
    v540._object = 0x800000010000BD20;
    sub_10000ABE0(v540);
    v112._countAndFlagsBits = v110 == 1 ? 0xD000000000000034 : 0xD00000000000001ALL;
    v113 = v110 == 1 ? "Indexer might be crashing." : "ssful full index.\n";
    v112._object = (v113 | 0x8000000000000000);
    sub_10000ABE0(v112);

    v541._countAndFlagsBits = sub_100009C20();
    sub_10000ABE0(v541);
    sub_100009BB4(v114);
    sub_100009B24();
    sub_10000AB90();
    sub_100009C98();

    sub_100009810();
    v115();
    sub_100009D3C();
    if (!(!v104 & v103))
    {
      sub_100009998();
      v116 = sub_10000A830().super.isa;
      v117 = sub_100009964();
      [v117 v118];

      v119 = sub_100009998();
      sub_1000085C4(v119, v120);
    }
  }

  v465 = v110;
  sub_100009C08();
  sub_1000016EC(v121, v122, v123, v102);
  v124 = sub_10000AAC0();
  sub_1000086B0(v73, &qword_100014328, &qword_10000B340);
  sub_100009B54();
  sub_100009D78();
  *&v531 = v126 + 2;
  *(&v531 + 1) = v125;
  v464 = *(v124 + 16);
  *&v529[0] = v464;
  v542._countAndFlagsBits = sub_10000AC90();
  sub_100009E34(v542);

  sub_10000A04C();
  v127 = *(&v531 + 1);
  sub_100009BB4(v128);
  sub_100009B24();
  v470 = v127;
  sub_10000AB90();
  sub_100009C98();
  sub_100009810();
  v129();
  sub_100009D3C();
  if (!(!v104 & v103))
  {
    sub_100009998();
    v130 = sub_10000A830().super.isa;
    v131 = sub_100009964();
    [v131 v132];

    v133 = sub_100009998();
    sub_1000085C4(v133, v134);
  }

  v135 = *(v124 + 16);
  v466 = v124;
  if (v135)
  {
    v136 = v124 + 32;
    v486 = (v490 + 32);
    v476 = v490 + 16;
    v475 = v490 + 8;
    v495 = (v491 + 32);
    v485 = v491 + 16;
    v484 = v491 + 8;
    v137 = (v511 + 32);
    v494 = v511 + 16;
    v493 = v511 + 8;
    v138 = _swiftEmptyArrayStorage;
    sub_100009C60();
    sub_100009EE4();
    v139 = v507;
    v474 = v137;
    do
    {
      sub_100008354(v136, &v531);
      sub_10000A034();
      sub_1000016A4(&qword_100014340, &qword_10000B348);
      if (swift_dynamicCast())
      {
        sub_1000016EC(v139, 0, 1, v111);
        v140 = *v137;
        v124 = v502;
        v141 = sub_100009F68();
        v140(v141);
        sub_100009C38();
        v142(v503, v124, v111);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1000098A4();
          v189 = sub_1000098D0();
          v138 = sub_100007F94(v189, v190, v191, v138, &qword_100014400, &qword_10000B410, v192, v193);
        }

        v144 = *(v138 + 2);
        v143 = *(v138 + 3);
        v145 = v138;
        if (v144 >= v143 >> 1)
        {
          sub_100009900(v143);
          sub_100009BD0();
          v145 = sub_100007F94(v194, v195, v196, v197, &qword_100014400, &qword_10000B410, v198, v199);
        }

        sub_100009D54();
        (*(v124 + 8))(v502, v111);
        sub_1000083B8(&v531);
        *(v145 + 2) = v144 + 1;
        v138 = v145;
        sub_1000099E4();
        (v140)(&v145[v146 + *(v124 + 72) * v144], v503, v111);
        sub_100009EE4();
      }

      else
      {
        sub_100009C08();
        sub_1000016EC(v147, v148, v149, v111);
        sub_1000086B0(v139, &qword_100014320, &qword_10000B338);
        sub_10000A034();
        if (swift_dynamicCast())
        {
          v150 = sub_100009F5C();
          sub_1000016EC(v150, v151, 1, v90);
          v152 = *v495;
          v153 = v487;
          (*v495)(v487, v124, v90);
          sub_100009C38();
          v154(v496, v153, v90);
          sub_100009EF0();
          if (swift_isUniquelyReferenced_nonNull_native())
          {
            v155 = v510;
          }

          else
          {
            v200 = sub_1000098D0();
            v155 = sub_100007F94(v200, v201, v202, v203, &qword_100014388, &qword_10000B3B8, v204, v205);
          }

          v157 = *(v155 + 2);
          v156 = *(v155 + 3);
          v158 = v491;
          if (v157 >= v156 >> 1)
          {
            sub_100009900(v156);
            sub_100009E90();
            v212 = sub_100007F94(v206, v207, v208, v209, &qword_100014388, &qword_10000B3B8, v210, v211);
            v158 = v491;
            v510 = v212;
          }

          else
          {
            v510 = v155;
          }

          v159 = v153;
          v160 = v158;
          (*(v158 + 8))(v159, v90);
          sub_1000083B8(&v531);
          *(v510 + 2) = v157 + 1;
          sub_1000099E4();
          v152(v162 + v161 + *(v160 + 72) * v157, v496, v90);
          v111 = v519;
        }

        else
        {
          sub_100009C08();
          sub_1000016EC(v163, v164, v165, v90);
          sub_1000086B0(v124, &qword_100014318, &qword_10000B330);
          sub_10000A034();
          v124 = v489;
          v166 = v513;
          if (swift_dynamicCast())
          {
            sub_100009F5C();
            sub_100009BD0();
            sub_1000016EC(v167, v168, v169, v170);
            v171 = *v486;
            v172 = v480;
            (*v486)(v480, v124, v166);
            sub_100009C38();
            v173(v488, v172, v166);
            sub_100009EFC();
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v213 = sub_1000098D0();
              sub_100007F94(v213, v214, v215, v216, &qword_100014390, &qword_10000B3C0, v217, v218);
            }

            sub_100009EE4();
            v176 = *(v174 + 16);
            v175 = *(v174 + 24);
            v177 = v490;
            if (v176 >= v175 >> 1)
            {
              sub_100009900(v175);
              sub_100009E90();
              v225 = sub_100007F94(v219, v220, v221, v222, &qword_100014390, &qword_10000B3C0, v223, v224);
              v177 = v490;
              v505 = v225;
            }

            else
            {
              v505 = v174;
            }

            v178 = v172;
            v179 = v513;
            v90 = v177;
            (*(v177 + 8))(v178, v513);
            sub_1000083B8(&v531);
            *(v505 + 2) = v176 + 1;
            sub_1000099E4();
            v171(v181 + v180 + *(v90 + 72) * v176, v488, v179);
            sub_100009D48();
            v137 = v474;
          }

          else
          {
            sub_100009BD0();
            sub_1000016EC(v182, v183, v184, v185);
            sub_1000086B0(v124, &qword_100014310, &qword_10000B328);
            sub_10000A034();
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v226 = sub_1000098D0();
              v492 = sub_100007E5C(v226, v227, v228, v229);
            }

            sub_100009EE4();
            v187 = v492[2];
            v186 = v492[3];
            if (v187 >= v186 >> 1)
            {
              sub_100009900(v186);
              sub_100009E90();
              v492 = sub_100007E5C(v230, v231, v232, v492);
            }

            sub_1000083B8(&v531);
            v188 = v492;
            v492[2] = v187 + 1;
            sub_100008404(v529, &v188[5 * v187 + 4]);
          }
        }
      }

      v136 += 40;
      --v135;
      v139 = v507;
    }

    while (v135);
  }

  else
  {
    v138 = _swiftEmptyArrayStorage;
    sub_100009C60();
  }

  v233 = &_swiftEmptyDictionarySingleton;
  v534 = &_swiftEmptyDictionarySingleton;
  v502 = *(v138 + 2);
  v503 = v138;
  v234 = 0;
  if (v502)
  {
    v235 = 0;
    sub_100009D54();
    sub_1000099E4();
    v496 = v236;
    v497 = &v138[v236];
    v494 = v124 + 8;
    v493 = v124 + 32;
    v238 = v237;
    v495 = (v124 + 16);
    while (v235 < *(v503 + 2))
    {
      v239 = v238;
      v507 = *(v124 + 72);
      v240 = *(v124 + 16);
      v241 = v512;
      (v240)(v512, &v497[v507 * v235], v111);
      v242 = sub_10000AA30();
      v124 = v111;
      if (v243)
      {
        v244 = v242;
        v245 = v243;
        sub_100009E58();
        v240();
        sub_100008630(v234, 0);
        v246 = v534;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v531 = v246;
        v248 = sub_100009E4C();
        v250 = sub_10000841C(v248, v249);
        v252 = *(v246 + 2);
        v253 = (v251 & 1) == 0;
        v254 = v252 + v253;
        if (__OFADD__(v252, v253))
        {
          goto LABEL_154;
        }

        v255 = v250;
        v256 = v251;
        sub_1000016A4(&qword_100014350, &qword_10000B358);
        v241 = &v531;
        v257 = sub_10000AC70(isUniquelyReferenced_nonNull_native, v254);
        v233 = v531;
        if (v257)
        {
          v258 = sub_100009E4C();
          v241 = v233;
          v260 = sub_10000841C(v258, v259);
          v124 = v511;
          if ((v256 & 1) != (v261 & 1))
          {
            goto LABEL_159;
          }

          v255 = v260;
        }

        else
        {
          sub_100009D54();
        }

        v534 = v233;
        if (v256)
        {
        }

        else
        {
          *(v233 + (v255 >> 6) + 8) |= 1 << v255;
          v265 = (*(v233 + 6) + 16 * v255);
          *v265 = v244;
          v265[1] = v245;
          *(*(v233 + 7) + 8 * v255) = _swiftEmptyArrayStorage;
          v266 = *(v233 + 2);
          v267 = __OFADD__(v266, 1);
          v268 = v266 + 1;
          if (v267)
          {
            goto LABEL_158;
          }

          *(v233 + 2) = v268;
        }

        v269 = *(v233 + 7);
        v270 = *(v269 + 8 * v255);
        v271 = swift_isUniquelyReferenced_nonNull_native();
        *(v269 + 8 * v255) = v270;
        v111 = v519;
        if ((v271 & 1) == 0)
        {
          sub_1000098A4();
          v275 = sub_1000098D0();
          *(v269 + 8 * v255) = sub_100007F94(v275, v276, v277, v270, &qword_100014400, &qword_10000B410, v278, v279);
        }

        sub_100009E70();
        if (v103)
        {
          sub_100009900(v272);
          sub_100009BD0();
          *(v269 + 8 * v255) = sub_100007F94(v280, v281, v282, v283, &qword_100014400, &qword_10000B410, v284, v285);
        }

        sub_100009C38();
        v273(v512, v111);
        v264 = *(v269 + 8 * v255);
        v234 = sub_1000045D0;
        v238 = v239;
      }

      else
      {
        sub_100009E58();
        v240();
        v238 = v239;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1000098A4();
          v286 = sub_1000098D0();
          v238 = sub_100007F94(v286, v287, v288, v239, &qword_100014400, &qword_10000B410, v289, v290);
        }

        sub_100009D54();
        sub_100009D48();
        sub_100009E70();
        if (v103)
        {
          v291 = sub_100009900(v262);
          v238 = sub_100007F94(v291, v241, 1, v238, &qword_100014400, &qword_10000B410, &type metadata accessor for IndexingLog.IndexingEvent, &type metadata accessor for IndexingLog.IndexingEvent);
        }

        sub_100009C38();
        v263(v512, v111);
        v264 = v238;
      }

      ++v235;
      *(v264 + 2) = v241;
      sub_100009C38();
      v274();
      if (v502 == v235)
      {
        goto LABEL_71;
      }
    }

LABEL_149:
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
    sub_10000ACB0();
    __break(1u);
    goto LABEL_160;
  }

  v238 = _swiftEmptyArrayStorage;
  sub_100009D54();
LABEL_71:
  v497 = v238;
  v496 = v234;
  *&v531 = 8254;
  *(&v531 + 1) = 0xE200000000000000;
  *&v529[0] = *(v233 + 2);
  v543._countAndFlagsBits = sub_10000AC90();
  sub_100009E34(v543);

  sub_100009D78();
  v544._countAndFlagsBits = v292 - 2;
  v544._object = (v293 | 0x8000000000000000);
  v495 = (v292 - 2);
  sub_10000ABE0(v544);
  sub_100009BB4(v294);
  v295 = sub_10000AB90();
  v297 = v296;
  sub_100009810();
  v298();
  sub_100009BDC();
  if (!(!v104 & v103))
  {
    v299 = sub_10000A830().super.isa;
    v300 = sub_100009964();
    [v300 v301];

    sub_1000085C4(v295, v297);
  }

  *&v531 = sub_100008508(v302);
  v303 = v473;
  sub_100008494(&v531, &v534);
  v494 = v303;
  if (v303)
  {
LABEL_160:

    __break(1u);
    return;
  }

  v304 = 0;
  v305 = v531;
  v507 = *(v531 + 16);
  v503 = (v531 + 32);
  v306 = (v124 + 8);
  v307 = v506[0];
  v502 = v531;
  while (v304 != v507)
  {
    if (v304 >= *(v305 + 16))
    {
      __break(1u);
      goto LABEL_149;
    }

    v304 = (v304 + 1);
    v308 = v534;
    if (*(v534 + 2))
    {
      v512 = v304;

      v309 = sub_100009E4C();
      v311 = sub_10000841C(v309, v310);
      if (v312)
      {
        v313 = *(*(v308 + 7) + 8 * v311);
        *&v531 = 544109906;
        *(&v531 + 1) = 0xE400000000000000;
        *&v529[0] = v512;
        v504 = v313;

        v545._countAndFlagsBits = sub_10000AC90();
        sub_10000ABE0(v545);

        v546._countAndFlagsBits = 0x203A44492820;
        v546._object = 0xE600000000000000;
        sub_10000ABE0(v546);
        v547._countAndFlagsBits = sub_100009E4C();
        sub_10000ABE0(v547);

        v548._countAndFlagsBits = 2601;
        v548._object = 0xE200000000000000;
        sub_10000ABE0(v548);
        sub_10000ABA0();
        sub_100009B24();
        sub_10000AB90();
        sub_100009C7C();
        sub_100009810();
        v314();
        sub_100009BDC();
        if (!(!v104 & v103))
        {
          sub_100009BA8();
          v315 = sub_10000A830().super.isa;
          v316 = sub_100009964();
          [v316 v317];

          v318 = sub_100009BA8();
          sub_1000085C4(v318, v319);
        }

        v320 = *(v504 + 16);
        v321 = v517;
        if (v320)
        {
          sub_1000099E4();
          v324 = v322 + v323;
          v325 = *(v124 + 72);
          v326 = *(v124 + 16);
          do
          {
            v327 = v519;
            v326(v321, v324, v519);
            sub_1000051CC(v321, v518);
            (*v306)(v321, v327);
            sub_10000ABA0();
            sub_100009F5C();
            v328 = sub_10000AB90();
            v330 = v329;

            sub_100009810();
            v331();
            if (v330 >> 60 != 15)
            {
              v332 = sub_10000A830().super.isa;
              v333 = sub_100009964();
              [v333 v334];
              sub_1000085C4(v328, v330);
            }

            v324 += v325;
            --v320;
            v321 = v517;
          }

          while (v320);

          sub_100009D48();
        }

        else
        {
        }

        sub_10000ABA0();
        sub_100009F5C();
        sub_10000AB90();
        sub_100009C98();
        sub_100009810();
        v335();
        sub_100009D3C();
        v307 = v506[0];
        v124 = v511;
        v305 = v502;
        v304 = v512;
        if (!(!v104 & v103))
        {
          sub_100009998();
          v336 = sub_10000A830().super.isa;
          v337 = sub_100009964();
          [v337 v338];

          v307 = v506[0];
          v339 = sub_100009998();
          sub_1000085C4(v339, v340);
        }
      }

      else
      {

        v304 = v512;
      }
    }
  }

  v341 = *(v497 + 2);
  if (v341)
  {
    *&v531 = 8254;
    *(&v531 + 1) = 0xE200000000000000;
    *&v529[0] = v341;

    v549._countAndFlagsBits = sub_10000AC90();
    sub_100009E1C(v549);

    sub_100009D78();
    v550._countAndFlagsBits = v342 + 12;
    v550._object = (v343 | 0x8000000000000000);
    sub_10000ABE0(v550);
    sub_100009BB4(v344);
    sub_10000AB90();
    sub_100009CA4();
    sub_100009810();
    v345();
    sub_100009E9C();
    if (!(!v104 & v103))
    {
      sub_1000099A4();
      v346 = sub_10000A830().super.isa;
      v347 = sub_100009964();
      [v347 v348];

      v349 = sub_1000099A4();
      sub_1000085C4(v349, v350);
    }

    v351 = (v511 + 32);
    *&v532 = 0;
    v531 = v497;
    while (1)
    {
      sub_100005050(v307);
      v352 = v307;
      v353 = v501;
      sub_100009770(v352, v501, &qword_100014308, &qword_10000B320);
      v354 = sub_1000016A4(&qword_100014348, &qword_10000B350);
      v355 = sub_100009C14();
      sub_1000099F0(v355, v356, v354);
      if (v104)
      {
        break;
      }

      v357 = v353;
      v358 = *v353;
      (*v351)(v514, &v357[*(v354 + 48)], v519);
      *&v529[0] = 0xD000000000000012;
      *(&v529[0] + 1) = 0x800000010000BCE0;
      if (__OFADD__(v358, 1))
      {
        goto LABEL_150;
      }

      v524 = v358 + 1;
      v551._countAndFlagsBits = sub_10000AC90();
      sub_10000ABE0(v551);

      v552._countAndFlagsBits = sub_100009C20();
      sub_10000ABE0(v552);
      sub_100009D84(v359);
      sub_100009B24();
      sub_10000AB90();
      sub_100009C7C();
      sub_100009810();
      v360();
      sub_100009BDC();
      if (!(!v104 & v103))
      {
        sub_100009BA8();
        v361 = sub_10000A830().super.isa;
        v362 = sub_100009964();
        [v362 v363];

        v364 = sub_100009BA8();
        sub_1000085C4(v364, v365);
      }

      v366 = sub_1000051CC(v514, v518);
      sub_100009D84(v366);
      sub_100009B24();
      sub_10000AB90();
      sub_100009C7C();
      sub_100009810();
      v367();
      sub_100009BDC();
      if (!(!v104 & v103))
      {
        sub_100009BA8();
        v368 = sub_10000A830().super.isa;
        v369 = sub_100009964();
        [v369 v370];
        v371 = sub_100009BA8();
        sub_1000085C4(v371, v372);
      }

      (*v306)(v514, v519);
      sub_100009D48();
      v307 = v506[0];
    }
  }

  v373 = *(sub_100009EF0() + 16);
  i = v522;
  v375 = v509;
  if (v373)
  {
    sub_100009CCC(v373);

    v553._countAndFlagsBits = sub_10000AC90();
    sub_100009E1C(v553);

    v554._countAndFlagsBits = 0x657665204C415720;
    v554._object = 0xED00000A0A73746ELL;
    sub_10000ABE0(v554);
    v376 = *(&v531 + 1);
    sub_10000ABA0();
    sub_100009BE8();
    sub_100009CA4();
    sub_100009810();
    v377();
    sub_100009E9C();
    if (!(!v104 & v103))
    {
      sub_1000099A4();
      v376 = sub_10000A830().super.isa;
      v378 = sub_100009964();
      [v378 v379];

      v380 = sub_1000099A4();
      sub_1000085C4(v380, v381);
    }

    v382 = 0;
    sub_100009F80();
    i = v500;
    while (1)
    {
      v383 = *(v510 + 2);
      if (v382 != v383)
      {
        if (v382 >= v383)
        {
          goto LABEL_155;
        }

        v384 = sub_1000099B0();
        v385(v384);
        sub_100009770(v382++, v509, &qword_1000142F8, &qword_10000B310);
        v375 = v509;
      }

      sub_100009BD0();
      sub_1000016EC(v386, v387, v388, v389);
      sub_100009F94(v375, &v526);
      sub_1000099F0(v375, 1, i);
      if (v104)
      {
        break;
      }

      sub_100009D60();
      v390 = sub_100009F50(&v531 + 8);
      v391(v390);
      if (__OFADD__(v375, 1))
      {
        goto LABEL_151;
      }

      sub_100006684(i);
      sub_100009D84(v392);
      sub_10000A014();

      sub_100009810();
      v393();
      sub_100009BDC();
      if (!(!v104 & v103))
      {
        sub_100009F74();
        v394 = sub_10000A830().super.isa;
        v395 = sub_100009964();
        [v395 v396];
        v397 = sub_100009F74();
        sub_1000085C4(v397, v398);
      }

      (*v376)(v508, v515);
      i = v500;
      v375 = v509;
    }

    sub_100009EF0();

    sub_100009E7C();
  }

  v399 = *(sub_100009EFC() + 16);
  if (v399)
  {
    sub_100009CCC(v399);

    v555._countAndFlagsBits = sub_10000AC90();
    sub_100009E1C(v555);

    v556._object = 0x800000010000BB80;
    v556._countAndFlagsBits = v495;
    sub_10000ABE0(v556);
    v400 = *(&v531 + 1);
    sub_10000ABA0();
    sub_100009BE8();
    sub_100009CA4();
    sub_100009810();
    v401();
    sub_100009E9C();
    if (!(!v104 & v103))
    {
      sub_1000099A4();
      v400 = sub_10000A830().super.isa;
      v402 = sub_100009964();
      [v402 v403];

      v404 = sub_1000099A4();
      sub_1000085C4(v404, v405);
    }

    v406 = 0;
    sub_100009F80();
    for (i = v499; ; i = v499)
    {
      v407 = *(v505 + 2);
      if (v406 != v407)
      {
        if (v406 >= v407)
        {
          goto LABEL_156;
        }

        v408 = sub_1000099B0();
        v409(v408);
        sub_100009770(v406++, v498, &qword_1000142E8, &qword_10000B300);
      }

      sub_100009BD0();
      v411 = v410;
      sub_1000016EC(v410, v412, v413, v414);
      sub_100009F94(v411, &v525);
      sub_1000099F0(v411, 1, i);
      if (v104)
      {
        break;
      }

      sub_100009D60();
      v415 = sub_100009F50(&v530 + 8);
      v416(v415);
      if (__OFADD__(v411, 1))
      {
        goto LABEL_152;
      }

      sub_100006F98(i);
      sub_10000ABA0();
      sub_10000A014();

      sub_100009810();
      v417();
      sub_100009BDC();
      if (!(!v104 & v103))
      {
        sub_100009F74();
        v418 = sub_10000A830().super.isa;
        v419 = sub_100009964();
        [v419 v420];
        v421 = sub_100009F74();
        sub_1000085C4(v421, v422);
      }

      (*v400)(v506[1], v513);
    }

    sub_100009EFC();

    sub_100009E7C();
  }

  v423 = v492[2];
  if (v423)
  {
    sub_100009CCC(v423);
    v557._countAndFlagsBits = sub_10000AC90();
    sub_100009E1C(v557);

    v558._countAndFlagsBits = 0x6520726568746F20;
    v558._object = 0xEF0A0A73746E6576;
    sub_10000ABE0(v558);
    sub_10000ABA0();
    sub_100009BE8();
    sub_100009CA4();
    sub_100009810();
    v424();
    sub_100009E9C();
    if (!(!v104 & v103))
    {
      sub_1000099A4();
      v425 = sub_10000A830().super.isa;
      v426 = sub_100009964();
      [v426 v427];

      v428 = sub_1000099A4();
      sub_1000085C4(v428, v429);
    }

    v430 = 0;
    v431 = v492[2];
    v432 = v492 + 4;
    while (1)
    {
      v433 = 0uLL;
      v434 = v431;
      v435 = 0uLL;
      v436 = 0uLL;
      if (v430 != v431)
      {
        if (v430 >= v492[2])
        {
          goto LABEL_157;
        }

        v434 = v430 + 1;
        *&v529[0] = v430;
        sub_100008354(&v432[5 * v430], v529 + 8);
        v433 = v529[0];
        v435 = v529[1];
        v436 = v530;
      }

      v531 = v433;
      v532 = v435;
      v533 = v436;
      if (!v436)
      {
        break;
      }

      v519 = v433;
      sub_100008404((&v531 + 8), v529);
      strcpy(v527, "Other Event ");
      v527[13] = 0;
      v528 = -5120;
      if (__OFADD__(v519, 1))
      {
        goto LABEL_153;
      }

      v524 = v519 + 1;
      v559._countAndFlagsBits = sub_10000AC90();
      sub_10000ABE0(v559);

      v560._countAndFlagsBits = 8250;
      v560._object = 0xE200000000000000;
      sub_10000ABE0(v560);
      sub_100008354(v529, &v524);
      sub_1000016A4(&qword_100014340, &qword_10000B348);
      v561._countAndFlagsBits = sub_10000ABC0();
      sub_10000ABE0(v561);

      sub_10000A04C();
      sub_10000ABA0();
      sub_100009B24();
      sub_10000AB90();
      sub_100009C7C();
      sub_100009810();
      v437();
      sub_100009BDC();
      if (!(!v104 & v103))
      {
        sub_100009BA8();
        v438 = sub_10000A830().super.isa;
        v439 = sub_100009964();
        [v439 v440];
        v441 = sub_100009BA8();
        sub_1000085C4(v441, v442);
      }

      sub_1000083B8(v529);
      v430 = v434;
    }

    i = v522;
  }

  sub_100009D0C();
  sub_10000AC50(263);
  v562._countAndFlagsBits = 0xD000000000000068;
  v562._object = 0x800000010000BBA0;
  sub_10000ABE0(v562);
  *&v529[0] = v464;
  v563._countAndFlagsBits = sub_100009A2C();
  sub_100009E1C(v563);

  sub_100009FB4("\n- Indexing runs: ");
  *&v529[0] = *(v534 + 2);
  v564._countAndFlagsBits = sub_100009A2C();
  sub_100009DEC(v564);

  v565._countAndFlagsBits = 0xD000000000000020;
  v565._object = 0x800000010000BC30;
  sub_10000ABE0(v565);
  v443 = *(v497 + 2);

  *&v529[0] = v443;
  v566._countAndFlagsBits = sub_100009A2C();
  sub_100009DEC(v566);

  v567._countAndFlagsBits = 0x65204C4157202D0ALL;
  v567._object = 0xEF203A73746E6576;
  sub_10000ABE0(v567);
  v444 = *(sub_100009EF0() + 16);

  *&v529[0] = v444;
  v568._countAndFlagsBits = sub_100009A2C();
  sub_100009DEC(v568);

  sub_100009FB4("\n- Vacuum events: ");
  v445 = *(sub_100009EFC() + 16);

  *&v529[0] = v445;
  v569._countAndFlagsBits = sub_100009A2C();
  sub_100009DEC(v569);

  v570._countAndFlagsBits = 0xD000000000000011;
  v570._object = 0x800000010000BC80;
  sub_10000ABE0(v570);
  v446 = v492[2];

  *&v529[0] = v446;
  v571._countAndFlagsBits = sub_100009A2C();
  sub_100009DEC(v571);

  v572._countAndFlagsBits = 0xD000000000000017;
  v572._object = 0x800000010000BCA0;
  sub_10000ABE0(v572);
  *&v529[0] = v465;
  v573._countAndFlagsBits = sub_100009A2C();
  sub_100009E34(v573);

  v574._countAndFlagsBits = 0xD000000000000014;
  v574._object = 0x800000010000BCC0;
  sub_10000ABE0(v574);
  v447 = v469;
  sub_10000A880();
  v448 = v479;
  v575._countAndFlagsBits = sub_10000AC90();
  sub_100009E34(v575);

  v467(v447, v448);
  sub_10000ABA0();
  sub_100009B24();
  sub_10000AB90();
  sub_100009C98();

  sub_100009810();
  v449();
  sub_100009D3C();
  if (!(!v104 & v103))
  {
    sub_100009998();
    v450 = sub_10000A830().super.isa;
    v451 = sub_100009964();
    [v451 v452];

    v453 = sub_100009998();
    sub_1000085C4(v453, v454);
  }

  v455 = v478;
  sub_10000A8F0();
  sub_100009F50(&v495);

  v456 = sub_10000A900();
  v457 = sub_10000AC20();
  if (os_log_type_enabled(v456, v457))
  {
    v458 = swift_slowAlloc();
    *v458 = 134217984;
    v459 = *(i + 16);

    *(v458 + 4) = v459;

    _os_log_impl(&_mh_execute_header, v456, v457, "ToolKitDiagnosticExtension - Successfully exported ALL %ld ToolKit indexing log events (unlimited)", v458, 0xCu);
    v460 = v458;
    v455 = v478;
    sub_100009E04(v460);
  }

  else
  {

    swift_bridgeObjectRelease_n();
  }

  sub_100009C2C();
  v461(v455, v482);

  v462 = v516;
  [v516 closeFile];

  sub_100008630(v496, 0);
  sub_100009DD4();
}

id sub_100004478(uint64_t a1)
{
  sub_10000A7F0(__stack_chk_guard);
  v3 = v2;
  v12 = 0;
  v4 = [swift_getObjCClassFromMetadata() fileHandleForWritingToURL:v2 error:&v12];

  v5 = v12;
  if (v4)
  {
    v6 = sub_10000A820();
    v7 = *(*(v6 - 8) + 8);
    v8 = v5;
    v7(a1, v6);
  }

  else
  {
    v9 = v12;
    sub_10000A7E0();

    swift_willThrow();
    v10 = sub_10000A820();
    (*(*(v10 - 8) + 8))(a1, v10);
  }

  return v4;
}

void sub_1000045E0(uint64_t a1)
{
  sub_100009DBC();
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v115 = sub_10000AA40();
  sub_100009840();
  v112 = v10;
  __chkstk_darwin(v11);
  sub_100009854();
  v110 = v12;
  sub_10000990C();
  __chkstk_darwin(v13);
  v15 = &v95 - v14;
  v16 = sub_1000016A4(&qword_100014328, &qword_10000B340);
  v17 = sub_100009970(v16);
  __chkstk_darwin(v17);
  sub_100009854();
  v109 = v18;
  sub_10000990C();
  v20 = __chkstk_darwin(v19);
  v22 = &v95 - v21;
  __chkstk_darwin(v20);
  sub_100009918();
  v114 = v23;
  sub_10000990C();
  __chkstk_darwin(v24);
  sub_100009EBC();
  __chkstk_darwin(v25);
  v27 = &v95 - v26;
  v28 = sub_10000A890();
  sub_100009840();
  v113 = v29;
  __chkstk_darwin(v30);
  sub_100009854();
  v108 = v31;
  sub_10000990C();
  __chkstk_darwin(v32);
  sub_100009EA8();
  __chkstk_darwin(v33);
  sub_100009918();
  v107 = v34;
  sub_10000990C();
  __chkstk_darwin(v35);
  sub_100009CFC();
  v36 = *v9;
  v37 = v9[1];
  v39 = *v7;
  v38 = v7[1];
  v40 = sub_100004DA8(v36, v37, *v5);
  v111 = v28;
  v101 = v1;
  v102 = v22;
  v100 = v3;
  if (v40)
  {
    v98 = v39;
    v99 = v27;
    v41 = *(v40 + 16);
    if (v41)
    {
      v96 = v38;
      v97 = v5;
      v105 = *(v112 + 16);
      sub_1000099E4();
      v95 = v42;
      v44 = v42 + v43;
      v103 = (v113 + 32);
      v45 = _swiftEmptyArrayStorage;
      v106 = v46;
      v104 = *(v46 + 56);
      do
      {
        (v105)(v15, v44, v115);
        v47 = v114;
        sub_10000A9F0();
        sub_100009770(v47, v2, &qword_100014328, &qword_10000B340);
        v48 = sub_100009998();
        v49(v48);
        sub_100009924(v2);
        if (v50)
        {
          sub_1000086B0(v2, &qword_100014328, &qword_10000B340);
        }

        else
        {
          v51 = *v103;
          (*v103)(v107, v2, v28);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_100009A08();
            v58 = sub_1000098D0();
            v45 = sub_100007F94(v58, v59, v60, v45, &qword_1000143F0, &qword_10000B408, v61, v62);
          }

          v54 = *(v45 + 2);
          v53 = *(v45 + 3);
          if (v54 >= v53 >> 1)
          {
            v45 = sub_100007F94((v53 > 1), v54 + 1, 1, v45, &qword_1000143F0, &qword_10000B408, &type metadata accessor for Date, &type metadata accessor for Date);
          }

          *(v45 + 2) = v54 + 1;
          sub_1000099E4();
          v57 = &v45[v55 + *(v56 + 72) * v54];
          v28 = v111;
          v51(v57, v107, v111);
        }

        v44 += v104;
        --v41;
      }

      while (v41);

      v1 = v101;
      v22 = v102;
      v3 = v100;
      v38 = v96;
      v5 = v97;
    }

    else
    {

      v45 = _swiftEmptyArrayStorage;
    }

    v27 = v99;
    sub_100004DF8(v45, v99);

    sub_100009924(v27);
    v39 = v98;
    if (!v50)
    {
      (*(v113 + 32))(v3, v27, v28);
      goto LABEL_20;
    }
  }

  else
  {
    sub_100009C08();
    sub_1000016EC(v63, v64, v65, v28);
  }

  sub_10000A840();
  sub_100009924(v27);
  if (!v50)
  {
    sub_1000086B0(v27, &qword_100014328, &qword_10000B340);
  }

LABEL_20:
  v66 = sub_100004DA8(v39, v38, *v5);
  if (v66)
  {
    v67 = *(v66 + 16);
    v104 = v66;
    if (v67)
    {
      v107 = *(v112 + 16);
      sub_1000099E4();
      v70 = v68 + v69;
      v105 = (v113 + 32);
      v71 = _swiftEmptyArrayStorage;
      v112 = v72;
      v106 = *(v72 + 56);
      do
      {
        v107(v110, v70, v115);
        v73 = v114;
        sub_10000A9F0();
        v74 = v109;
        sub_100009770(v73, v109, &qword_100014328, &qword_10000B340);
        v75 = sub_100009F44();
        v76(v75);
        sub_100009924(v74);
        if (v50)
        {
          sub_1000086B0(v74, &qword_100014328, &qword_10000B340);
        }

        else
        {
          v77 = *v105;
          (*v105)(v108, v74, v28);
          v78 = swift_isUniquelyReferenced_nonNull_native();
          if ((v78 & 1) == 0)
          {
            sub_100009A08();
            v84 = sub_1000098D0();
            v71 = sub_100007F94(v84, v85, v86, v71, &qword_1000143F0, &qword_10000B408, v87, v88);
          }

          v80 = *(v71 + 2);
          v79 = *(v71 + 3);
          if (v80 >= v79 >> 1)
          {
            v71 = sub_100007F94((v79 > 1), v80 + 1, 1, v71, &qword_1000143F0, &qword_10000B408, &type metadata accessor for Date, &type metadata accessor for Date);
          }

          *(v71 + 2) = v80 + 1;
          sub_1000099E4();
          v83 = &v71[v81 + *(v82 + 72) * v80];
          v28 = v111;
          v77(v83, v108, v111);
        }

        v70 += v106;
        --v67;
      }

      while (v67);
    }

    else
    {
      v71 = _swiftEmptyArrayStorage;
    }

    v22 = v102;
    sub_100004DF8(v71, v102);

    sub_100009924(v22);
    v3 = v100;
    v1 = v101;
    if (!v50)
    {
      v92 = sub_100009F44();
      v93(v92);
      goto LABEL_39;
    }
  }

  else
  {
    sub_100009C08();
    sub_1000016EC(v89, v90, v91, v28);
  }

  sub_10000A840();
  sub_100009924(v22);
  if (!v50)
  {
    sub_1000086B0(v22, &qword_100014328, &qword_10000B340);
  }

LABEL_39:
  sub_10000A870();
  v94 = *(v113 + 8);
  v94(v1, v28);
  v94(v3, v28);
  sub_100009DD4();
}

uint64_t sub_100004DA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_10000841C(a1, a2);
  if (v3)
  {
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100004DF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_10000A890();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v19 - v9;
  v20 = *(a1 + 16);
  if (v20)
  {
    v19 = a2;
    v11 = *(v5 + 16);
    v12 = a1 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v11(&v19 - v9, v12, v4);
    v13 = (v5 + 32);
    for (i = 1; v20 != i; ++i)
    {
      v11(v8, v12 + *(v5 + 72) * i, v4);
      sub_1000097CC(&qword_1000143F8, &protocol conformance descriptor for Date);
      v15 = sub_10000AB60();
      v16 = *(v5 + 8);
      if (v15)
      {
        v16(v10, v4);
        (*v13)(v10, v8, v4);
      }

      else
      {
        v16(v8, v4);
      }
    }

    v17 = v19;
    (*v13)(v19, v10, v4);
    return sub_1000016EC(v17, 0, 1, v4);
  }

  else
  {

    return sub_1000016EC(a2, 1, 1, v4);
  }
}

uint64_t sub_100005050@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1000016A4(&qword_100014348, &qword_10000B350);
  result = __chkstk_darwin(v3);
  v6 = &v16 - v5;
  v7 = *v1;
  v8 = v1[1];
  v9 = *(*v1 + 16);
  if (v8 == v9)
  {

    return sub_1000016EC(a1, 1, 1, v3);
  }

  else
  {
    if (v8 >= v9)
    {
      __break(1u);
    }

    else
    {
      v10 = sub_10000AA40();
      v11 = *(v10 - 8);
      v12 = *(v11 + 16);
      v13 = v7 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v8;
      v1[1] = v8 + 1;
      v14 = *(v3 + 48);
      v15 = v1[2];
      *v6 = v15;
      result = v12(&v6[v14], v13, v10);
      if (!__OFADD__(v15, 1))
      {
        v1[2] = v15 + 1;
        sub_100009770(v6, a1, &qword_100014348, &qword_10000B350);
        return sub_1000016EC(a1, 0, 1, v3);
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1000051CC(void *a1, void *a2)
{
  v272 = a2;
  v276 = a1;
  v4 = sub_1000016A4(&qword_1000143B0, &qword_10000B3D8);
  sub_100009970(v4);
  sub_100009A20();
  __chkstk_darwin(v5);
  sub_100009B3C();
  v270 = v6;
  v274 = sub_10000A8D0();
  sub_100009840();
  v268 = v7;
  __chkstk_darwin(v8);
  sub_1000098E0();
  v267 = v10 - v9;
  v253 = sub_10000A8B0();
  sub_100009840();
  v252[1] = v11;
  __chkstk_darwin(v12);
  sub_1000098E0();
  sub_10000998C(v14 - v13);
  v260 = sub_10000A8E0();
  sub_100009840();
  v259 = v15;
  __chkstk_darwin(v16);
  sub_1000098E0();
  sub_10000998C(v18 - v17);
  v19 = sub_1000016A4(&qword_1000143B8, &qword_10000B3E0);
  sub_100009970(v19);
  sub_100009A20();
  __chkstk_darwin(v20);
  sub_100009B3C();
  v275 = v21;
  v273 = sub_1000016A4(&qword_1000143C0, &qword_10000B3E8);
  sub_100009840();
  v266 = v22;
  __chkstk_darwin(v23);
  sub_100009854();
  v269 = v24;
  sub_10000990C();
  __chkstk_darwin(v25);
  sub_100009B48();
  v265 = v26;
  v27 = sub_1000016A4(&qword_100014328, &qword_10000B340);
  v28 = sub_100009970(v27);
  v29 = __chkstk_darwin(v28);
  v31 = v252 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  sub_100009918();
  v264 = v32;
  sub_10000990C();
  __chkstk_darwin(v33);
  sub_100009918();
  sub_100009894();
  __chkstk_darwin(v34);
  sub_100009918();
  v263 = v35;
  sub_10000990C();
  v37 = __chkstk_darwin(v36);
  v39 = v252 - v38;
  __chkstk_darwin(v37);
  sub_100009ED0();
  __chkstk_darwin(v40);
  sub_100009CFC();
  v41 = sub_10000A890();
  sub_100009840();
  v277 = v42;
  __chkstk_darwin(v43);
  sub_100009854();
  sub_100009894();
  __chkstk_darwin(v44);
  sub_100009918();
  sub_100009894();
  __chkstk_darwin(v45);
  sub_100009918();
  sub_100009894();
  __chkstk_darwin(v46);
  sub_100009918();
  sub_100009894();
  __chkstk_darwin(v47);
  sub_100009918();
  v271 = v48;
  sub_10000990C();
  v50 = __chkstk_darwin(v49);
  v52 = v252 - v51;
  v53 = __chkstk_darwin(v50);
  v55 = v252 - v54;
  v58 = sub_100009DA0(v53, v56, v57, _swiftEmptyArrayStorage);
  v60 = *(v58 + 2);
  v59 = *(v58 + 3);
  v256 = v31;
  if (v60 >= v59 >> 1)
  {
    v203 = sub_10000982C(v59);
    v58 = sub_100007C54(v203, v204, v205, v58);
  }

  *(v58 + 2) = v60 + 1;
  v61 = &v58[16 * v60];
  *(v61 + 4) = 0x3A746E6576452020;
  *(v61 + 5) = 0xE800000000000000;
  sub_10000A9F0();
  v62 = &ToolKitDiagnosticWrapper;
  if (sub_1000082E8(v2, 1, v41) == 1)
  {
    sub_1000086B0(v2, &qword_100014328, &qword_10000B340);
  }

  else
  {
    (*(v277 + 32))(v55, v2, v41);
    strcpy(v279, "    Queued: ");
    BYTE5(v279[1]) = 0;
    HIWORD(v279[1]) = -5120;
    isa = sub_10000A860().super.isa;
    v64 = [v272 stringFromDate:isa];

    v65 = sub_10000AB80();
    v67 = v66;

    v284._countAndFlagsBits = v65;
    v284._object = v67;
    sub_10000ABE0(v284);

    v62 = v279[0];
    v68 = v279[1];
    v69 = *(v58 + 2);
    sub_100009E70();
    if (v75)
    {
      v216 = sub_10000982C(v70);
      v58 = sub_100007C54(v216, v217, v218, v58);
    }

    (*(v277 + 8))(v55, v41);
    *(v58 + 2) = v279;
    v71 = &v58[16 * v69];
    *(v71 + 4) = v62;
    *(v71 + 5) = v68;
  }

  v72 = v276;
  sub_10000AA10();
  sub_100009944(v3);
  if (v103)
  {
    sub_1000086B0(v3, &qword_100014328, &qword_10000B340);
  }

  else
  {
    (*(v277 + 32))(v52, v3, v41);
    strcpy(v279, "    Started: ");
    HIWORD(v279[1]) = -4864;
    v73 = sub_10000A860().super.isa;
    v74 = [v272 stringFromDate:v73];

    sub_10000AB80();
    sub_100009CC0();

    sub_100009C44();

    v62 = v279[0];
    sub_100009A84();
    if (v75)
    {
      v219 = sub_10000982C(v76);
      v58 = sub_100007C54(v219, v220, v221, v58);
    }

    v77 = sub_100009CEC();
    v78(v77);
    sub_100009D2C();
  }

  v79 = v72;
  sub_10000AA20();
  sub_100009944(v39);
  v80 = v275;
  if (v103)
  {
    sub_1000086B0(v39, &qword_100014328, &qword_10000B340);
    sub_100009A74();
    if (v75)
    {
      v222 = sub_10000982C(v81);
      v58 = sub_100007C54(v222, v223, v224, v58);
    }

    v82 = v274;
    v83 = v80;
    v84 = 0x800000010000BF00;
    sub_100009B18();
    v85 = v80 + 32;
  }

  else
  {
    (*(v277 + 32))(v271, v39, v41);
    v86 = sub_10000A970();
    if (v87)
    {
      v88 = v86;
      v89 = v87;
      strcpy(v279, "    Failed: ");
      BYTE5(v279[1]) = 0;
      HIWORD(v279[1]) = -5120;
      v90 = sub_10000A860().super.isa;
      v91 = [v272 stringFromDate:v90];

      sub_10000AB80();
      sub_100009CC0();

      sub_100009C44();

      v62 = v279[0];
      v92 = v279[1];
      v94 = *(v58 + 2);
      v93 = *(v58 + 3);
      v82 = v274;
      if (v94 >= v93 >> 1)
      {
        v228 = sub_10000982C(v93);
        v58 = sub_100007C54(v228, v229, v230, v58);
      }

      sub_100009B18();
      *(v58 + 2) = v94 + 1;
      v95 = &v58[16 * v94];
      *(v95 + 4) = v62;
      *(v95 + 5) = v92;
      strcpy(v279, "    Error: ");
      HIDWORD(v279[1]) = -352321536;
      v79 = v279;
      v285._countAndFlagsBits = v88;
      v285._object = v89;
      sub_10000ABE0(v285);

      v85 = v279[0];
      v84 = v279[1];
      sub_100009A74();
      if (v75)
      {
        v231 = sub_10000982C(v96);
        v58 = sub_100007C54(v231, v232, v233, v58);
      }

      v83 = v275;
      (*(v277 + 8))(v271, v41);
    }

    else
    {
      sub_1000098F0();
      sub_10000AC50(16);

      strcpy(v279, "    Finished: ");
      HIBYTE(v279[1]) = -18;
      v62 = sub_10000A860().super.isa;
      v79 = [v272 stringFromDate:v62];

      sub_10000AB80();
      sub_100009CC0();

      sub_100009C44();

      v85 = v279[0];
      v84 = v279[1];
      sub_100009A74();
      v82 = v274;
      if (v75)
      {
        v243 = sub_10000982C(v97);
        v58 = sub_100007C54(v243, v244, v245, v58);
      }

      v98 = sub_100009CEC();
      v99(v98);
      v83 = v80;
      sub_100009B18();
    }
  }

  *(v58 + 2) = v79;
  v100 = &v58[16 * v62];
  *(v100 + 4) = v85;
  *(v100 + 5) = v84;
  v101 = v263;
  sub_10000AA10();
  sub_100009944(v101);
  if (v103)
  {
    sub_1000086B0(v101, &qword_100014328, &qword_10000B340);
  }

  else
  {
    v102 = *(v277 + 32);
    v102(v261, v101, v41);
    v80 = v254;
    sub_10000AA20();
    sub_100009944(v80);
    if (v103)
    {
      v104 = sub_100009CEC();
      v105(v104);
      sub_1000086B0(v80, &qword_100014328, &qword_10000B340);
      v106 = v270;
      sub_100009B18();
      v82 = v274;
      goto LABEL_38;
    }

    v102(v255, v80, v41);
    sub_10000A850();
    v108 = v107;
    sub_1000098F0();
    sub_10000AC50(16);

    strcpy(v279, "    Duration: ");
    HIBYTE(v279[1]) = -18;
    v286._countAndFlagsBits = sub_100007794(v108);
    sub_10000ABE0(v286);

    sub_100009A84();
    if (v109)
    {
      v234 = sub_10000982C(v110);
      v58 = sub_100007C54(v234, v235, v236, v58);
    }

    sub_100009B18();
    v82 = v274;
    v111 = *(v277 + 8);
    v112 = sub_100009E64(&v280);
    v111(v112);
    v113 = sub_100009E64(&v282);
    v111(v113);
    sub_100009D2C();
    v83 = v275;
  }

  v106 = v270;
LABEL_38:
  v114 = v264;
  sub_10000A9F0();
  sub_100009944(v114);
  if (v103)
  {
    sub_1000086B0(v114, &qword_100014328, &qword_10000B340);
    v115 = v273;
  }

  else
  {
    v116 = v277;
    v117 = *(v277 + 32);
    v118 = v262;
    v117(v262, v114, v41);
    v119 = v256;
    sub_10000AA10();
    sub_100009944(v119);
    if (v120)
    {
      v121 = *(v116 + 8);
      v80 = v116 + 8;
      v121(v118, v41);
      sub_1000086B0(v119, &qword_100014328, &qword_10000B340);
      v115 = v273;
      v82 = v274;
      sub_100009B18();
      v83 = v275;
    }

    else
    {
      v117(v257, v119, v41);
      sub_10000A850();
      v123 = v122;
      sub_1000098F0();
      sub_10000AC50(18);

      sub_100009B54();
      sub_100009D78();
      v279[0] = v125 - 2;
      v279[1] = v124;
      v287._countAndFlagsBits = sub_100007794(v123);
      sub_10000ABE0(v287);

      sub_100009A84();
      if (v126)
      {
        v237 = sub_10000982C(v127);
        v58 = sub_100007C54(v237, v238, v239, v58);
      }

      v82 = v274;
      v83 = v275;
      v80 = v277 + 8;
      v128 = *(v277 + 8);
      v129 = sub_100009E64(&v281);
      v128(v129);
      v130 = sub_100009E64(&v283);
      v128(v130);
      sub_100009D2C();
      v106 = v270;
      v115 = v273;
      sub_100009B18();
    }
  }

  sub_10000AA00();
  sub_1000099F0(v83, 1, v115);
  v131 = v269;
  if (v103)
  {
    sub_1000086B0(v83, &qword_1000143B8, &qword_10000B3E0);
    goto LABEL_61;
  }

  v133 = v265;
  v132 = v266;
  (*(v266 + 32))(v265, v83, v115);
  (*(v132 + 16))(v131, v133, v115);
  v134 = (*(v132 + 88))(v131, v115);
  if (v134 == enum case for IndexingLog.IndexingEvent.Either.left<A, B>(_:))
  {
    v135 = sub_100009F08();
    v136(v135);
    (*(v259 + 32))(v258, v131, v260);
    strcpy(v279, "    Reason: ");
    BYTE5(v279[1]) = 0;
    HIWORD(v279[1]) = -5120;
    v137 = v252[0];
    sub_10000A8C0();
    sub_10000A8A0();
    sub_100009CC0();
    sub_100009C2C();
    v138(v137, v253);
    sub_100009C44();

    sub_1000098BC();
    if (v75)
    {
      v240 = sub_10000982C(v139);
      v58 = sub_100007C54(v240, v241, v242, v58);
    }

    sub_100009C2C();
    v140(v258, v260);
LABEL_57:
    (*(v266 + 8))(v265, v273);
    sub_100009AB0();
    goto LABEL_61;
  }

  if (v134 == enum case for IndexingLog.IndexingEvent.Either.right<A, B>(_:))
  {
    v141 = sub_100009F08();
    v142(v141);
    v143 = *v131;
    v144 = v131[1];
    sub_1000098F0();
    sub_10000AC50(33);

    strcpy(v279, "    Reason: ");
    BYTE5(v279[1]) = 0;
    HIWORD(v279[1]) = -5120;
    v288._countAndFlagsBits = v143;
    v288._object = v144;
    sub_10000ABE0(v288);

    v289._countAndFlagsBits = v80 + 1;
    v289._object = 0x800000010000C000;
    sub_10000ABE0(v289);
    sub_1000098BC();
    if (v75)
    {
      v246 = sub_10000982C(v145);
      v58 = sub_100007C54(v246, v247, v248, v58);
    }

    goto LABEL_57;
  }

  sub_100009A74();
  if (v75)
  {
    v249 = sub_10000982C(v146);
    v58 = sub_100007C54(v249, v250, v251, v58);
  }

  v80 = v266 + 8;
  v147 = *(v266 + 8);
  v148 = v273;
  v147(v265, v273);
  *(v58 + 2) = v132;
  sub_100009D78();
  *(v150 + 32) = v149 + 1;
  *(v150 + 40) = 0x800000010000BFE0;
  v147(v269, v148);
  sub_100009B18();
LABEL_61:
  sub_10000A9E0();
  v151 = sub_100009C14();
  sub_1000099F0(v151, v152, v82);
  if (v103)
  {
    sub_1000086B0(v106, &qword_1000143B0, &qword_10000B3D8);
  }

  else
  {
    v153 = sub_100009F68();
    v154(v153);
    sub_1000098F0();
    sub_10000AC50(19);
    v290._countAndFlagsBits = v80 - 1;
    v290._object = 0x800000010000BFC0;
    sub_10000ABE0(v290);
    sub_10000AC60();
    sub_1000098BC();
    if (v155)
    {
      v225 = sub_10000982C(v156);
      v58 = sub_100007C54(v225, v226, v227, v58);
    }

    (*(v268 + 8))(v267, v82);
    sub_100009AB0();
  }

  v157 = *(sub_10000A9A0() + 16);

  if (v157)
  {
    sub_1000098F0();
    sub_10000AC50(24);

    sub_100009B54();
    v279[0] = v80 + 4;
    v279[1] = v158;
    v278 = sub_10000A9A0();
    v159 = sub_100009998();
    sub_1000016A4(v159, v160);
    sub_100009A48(&qword_1000143D0);
    sub_100008750();
    sub_100009CDC();
    v161 = sub_10000ABF0();
    v163 = v162;

    v291._countAndFlagsBits = v161;
    v291._object = v163;
    sub_10000ABE0(v291);

    sub_1000098BC();
    if (v75)
    {
      v206 = sub_10000982C(v164);
      v58 = sub_100007C54(v206, v207, v208, v58);
    }

    sub_100009AB0();
  }

  v165 = *(sub_10000A9B0() + 16);

  if (v165)
  {
    sub_1000098F0();
    sub_10000AC50(24);

    sub_100009B54();
    v279[0] = v80 + 4;
    v279[1] = v166;
    v278 = sub_10000A9B0();
    v167 = sub_100009998();
    sub_1000016A4(v167, v168);
    sub_100009A48(&qword_1000143D0);
    sub_100008750();
    sub_100009CDC();
    v169 = sub_10000ABF0();
    v171 = v170;

    v292._countAndFlagsBits = v169;
    v292._object = v171;
    sub_10000ABE0(v292);

    sub_1000098BC();
    if (v75)
    {
      v209 = sub_10000982C(v172);
      v58 = sub_100007C54(v209, v210, v211, v58);
    }

    sub_100009AB0();
  }

  v173 = *(sub_10000A980() + 16);

  if (v173)
  {
    v174 = sub_10000A980();
    v175 = sub_100007870(v174);

    v279[0] = v175;
    v176 = sub_1000099A4();
    sub_1000016A4(v176, v177);
    sub_100009868(&qword_1000143A0);
    sub_10000AB50();
    v179 = v178;

    v279[0] = 0;
    v279[1] = 0xE000000000000000;
    sub_10000AC50(20);

    sub_100009B54();
    v279[0] = v80;
    v279[1] = v180;
    v293._countAndFlagsBits = sub_100009F68();
    sub_10000ABE0(v293);

    v181 = v279[0];
    v182 = v279[1];
    sub_100009A84();
    if (v75)
    {
      v212 = sub_10000982C(v183);
      v58 = sub_100007C54(v212, v213, v214, v58);
    }

    *(v58 + 2) = v279;
    v184 = &v58[16 * v179];
    *(v184 + 4) = v181;
    *(v184 + 5) = v182;
  }

  v185 = *(sub_10000A990() + 16);

  if (v185)
  {
    v186 = sub_10000A990();
    v187 = sub_100007870(v186);

    v279[0] = v187;
    v188 = sub_1000099A4();
    sub_1000016A4(v188, v189);
    sub_100009868(&qword_1000143A0);
    sub_100009CDC();
    v190 = sub_10000AB50();
    v192 = v191;

    v279[0] = 0;
    v279[1] = 0xE000000000000000;
    sub_10000AC50(20);

    sub_100009B54();
    v279[0] = v80;
    v279[1] = v193;
    v294._countAndFlagsBits = v190;
    v294._object = v192;
    sub_10000ABE0(v294);

    v194 = v279[0];
    v195 = v279[1];
    v197 = *(v58 + 2);
    v196 = *(v58 + 3);
    if (v197 >= v196 >> 1)
    {
      v215 = sub_100009900(v196);
      v58 = sub_100007C54(v215, v197 + 1, 1, v58);
    }

    *(v58 + 2) = v197 + 1;
    v198 = &v58[16 * v197];
    *(v198 + 4) = v194;
    *(v198 + 5) = v195;
  }

  v279[0] = v58;
  v199 = sub_1000099A4();
  v201 = sub_1000016A4(v199, v200);
  sub_100009868(&qword_1000143A0);
  sub_100009C20();
  sub_10000AB50();
  sub_100009CC0();

  v279[0] = &unk_100014398;
  v279[1] = v201;

  v295._countAndFlagsBits = sub_100009C20();
  sub_10000ABE0(v295);

  return v279[0];
}

void sub_100006684(uint64_t a1)
{
  sub_100009DBC();
  v154 = v3;
  v5 = v4;
  v7 = v6;
  v8 = sub_1000016A4(&qword_100014328, &qword_10000B340);
  v9 = sub_100009970(v8);
  __chkstk_darwin(v9);
  sub_100009854();
  v156 = v10;
  sub_10000990C();
  __chkstk_darwin(v11);
  sub_100009918();
  v155 = v12;
  sub_10000990C();
  __chkstk_darwin(v13);
  sub_100009EBC();
  __chkstk_darwin(v14);
  sub_100009CFC();
  v15 = sub_10000A890();
  sub_100009840();
  v157 = v16;
  __chkstk_darwin(v17);
  sub_100009854();
  v152 = v18;
  sub_10000990C();
  __chkstk_darwin(v19);
  sub_100009918();
  v153 = v20;
  sub_10000990C();
  __chkstk_darwin(v21);
  sub_100009918();
  v158 = v22;
  sub_10000990C();
  __chkstk_darwin(v23);
  v25 = &v151 - v24;
  v161 = 0x6E657645204C4157;
  v162 = 0xEA00000000002074;
  v160 = v5;
  v163._countAndFlagsBits = sub_10000AC90();
  sub_10000ABE0(v163);

  v164._countAndFlagsBits = 58;
  v164._object = 0xE100000000000000;
  sub_10000ABE0(v164);
  v26 = v161;
  v27 = v162;
  v31 = sub_100009DA0(v28, v29, v30, _swiftEmptyArrayStorage);
  v33 = *(v31 + 2);
  v32 = *(v31 + 3);
  if (v33 >= v32 >> 1)
  {
    v123 = sub_10000982C(v32);
    v31 = sub_100007C54(v123, v124, v125, v31);
  }

  *(v31 + 2) = v33 + 1;
  v34 = &v31[16 * v33];
  *(v34 + 4) = v26;
  *(v34 + 5) = v27;
  v159 = v7;
  sub_10000AB10();
  if (sub_1000082E8(v2, 1, v15) == 1)
  {
    sub_1000086B0(v2, &qword_100014328, &qword_10000B340);
    v35 = v157;
  }

  else
  {
    v35 = v157;
    (*(v157 + 32))(v25, v2, v15);
    sub_100009B84();
    isa = sub_10000A860().super.isa;
    v37 = [v154 stringFromDate:isa];

    v38 = sub_10000AB80();
    v40 = v39;

    v165._countAndFlagsBits = v38;
    v165._object = v40;
    sub_10000ABE0(v165);

    v41 = v161;
    v42 = v162;
    v44 = *(v31 + 2);
    v43 = *(v31 + 3);
    if (v44 >= v43 >> 1)
    {
      v126 = sub_10000982C(v43);
      v31 = sub_100007C54(v126, v127, v128, v31);
    }

    (*(v35 + 8))(v25, v15);
    *(v31 + 2) = v44 + 1;
    v45 = &v31[16 * v44];
    *(v45 + 4) = v41;
    *(v45 + 5) = v42;
  }

  v46 = v159;
  sub_10000AB20();
  v47 = sub_100009C14();
  sub_1000099F0(v47, v48, v15);
  v49 = v156;
  v50 = v158;
  if (v84)
  {
    sub_1000086B0(v1, &qword_100014328, &qword_10000B340);
    v51 = *(v31 + 2);
    sub_100009A94();
    if (v89)
    {
      v129 = sub_10000982C(v52);
      v31 = sub_100007C54(v129, v130, v131, v31);
    }

    v53 = 0x800000010000BE90;
    v54 = 0xD00000000000002ELL;
  }

  else
  {
    (*(v35 + 32))(v158, v1, v15);
    v55 = sub_10000AB00();
    if (v56)
    {
      v57 = v55;
      v58 = v56;
      sub_100009F30();
      v161 = v59;
      v162 = 0xEA0000000000203ALL;
      v60 = v50;
      v61.super.isa = sub_10000A860().super.isa;
      v62 = sub_100009FF4(v61.super.isa);

      v63 = sub_10000AB80();
      v65 = v64;

      v166._countAndFlagsBits = v63;
      v166._object = v65;
      sub_10000ABE0(v166);

      v66 = v161;
      v67 = v162;
      v69 = *(v31 + 2);
      v68 = *(v31 + 3);
      v46 = (v69 + 1);
      if (v69 >= v68 >> 1)
      {
        v139 = sub_10000982C(v68);
        v31 = sub_100007C54(v139, v140, v141, v31);
      }

      *(v31 + 2) = v46;
      v70 = &v31[16 * v69];
      *(v70 + 4) = v66;
      *(v70 + 5) = v67;
      sub_100009B60();
      v167._countAndFlagsBits = v57;
      v167._object = v58;
      sub_10000ABE0(v167);

      v54 = v161;
      v53 = v162;
      v51 = *(v31 + 2);
      sub_100009A94();
      if (v89)
      {
        v142 = sub_10000982C(v71);
        v31 = sub_100007C54(v142, v143, v144, v31);
      }

      v49 = v156;
      v35 = v157;
    }

    else
    {
      sub_100009F1C();
      v161 = v72;
      v162 = 0xEC000000203A6465;
      v73.super.isa = sub_10000A860().super.isa;
      v74 = sub_100009FF4(v73.super.isa);

      v75 = sub_10000AB80();
      v77 = v76;

      v46 = &v161;
      v168._countAndFlagsBits = v75;
      v168._object = v77;
      sub_10000ABE0(v168);

      v54 = v161;
      v53 = v162;
      v51 = *(v31 + 2);
      sub_100009A94();
      if (v89)
      {
        v148 = sub_10000982C(v78);
        v31 = sub_100007C54(v148, v149, v150, v31);
      }
    }

    (*(v35 + 8))(v158, v15);
  }

  *(v31 + 2) = v46;
  v79 = &v31[16 * v51];
  *(v79 + 4) = v54;
  *(v79 + 5) = v53;
  v80 = v155;
  sub_10000AB10();
  sub_1000099F0(v80, 1, v15);
  if (v84)
  {
    v81 = v80;
LABEL_28:
    sub_1000086B0(v81, &qword_100014328, &qword_10000B340);
    goto LABEL_32;
  }

  v82 = *(v35 + 32);
  v83 = v153;
  v82(v153, v80, v15);
  sub_10000AB20();
  sub_1000099F0(v49, 1, v15);
  if (v84)
  {
    (*(v35 + 8))(v83, v15);
    v81 = v49;
    goto LABEL_28;
  }

  v82(v152, v49, v15);
  sub_10000A850();
  v169._countAndFlagsBits = sub_100009AE0(v85);
  sub_10000ABE0(v169);

  v86 = v161;
  v87 = v162;
  v88 = *(v31 + 2);
  sub_100009E70();
  if (v89)
  {
    v145 = sub_10000982C(v90);
    v31 = sub_100007C54(v145, v146, v147, v31);
  }

  v91 = *(v35 + 8);
  v91(v152, v15);
  v91(v153, v15);
  *(v31 + 2) = &v161;
  v92 = &v31[16 * v88];
  *(v92 + 4) = v86;
  *(v92 + 5) = v87;
LABEL_32:
  v93 = sub_10000AAF0();
  if (v93 != 2)
  {
    v161 = 0x203A797375422020;
    v162 = 0xE800000000000000;
    v94 = (v93 & 1) == 0;
    if (v93)
    {
      v95._countAndFlagsBits = 1702195828;
    }

    else
    {
      v95._countAndFlagsBits = 0x65736C6166;
    }

    if (v94)
    {
      v96 = 0xE500000000000000;
    }

    else
    {
      v96 = 0xE400000000000000;
    }

    v95._object = v96;
    sub_10000ABE0(v95);

    v97 = v161;
    v98 = v162;
    v99 = *(v31 + 2);
    sub_100009B30();
    if (v89)
    {
      v132 = sub_10000982C(v100);
      v31 = sub_100007C54(v132, v133, v134, v31);
    }

    *(v31 + 2) = &v161;
    v101 = &v31[16 * v99];
    *(v101 + 4) = v97;
    *(v101 + 5) = v98;
  }

  v102 = sub_10000AAD0();
  if ((v102 & 0x100000000) == 0)
  {
    v103 = v102;
    sub_100009AA0();
    sub_10000AC50(18);

    sub_100009B54();
    v161 = 0xD000000000000010;
    v162 = v104;
    LODWORD(v160) = v103;
    v170._countAndFlagsBits = sub_10000AC90();
    sub_10000ABE0(v170);

    v105 = v161;
    v106 = v162;
    v107 = *(v31 + 2);
    sub_100009B30();
    if (v89)
    {
      v135 = sub_10000982C(v108);
      v31 = sub_100007C54(v135, v136, v137, v31);
    }

    *(v31 + 2) = &v161;
    v109 = &v31[16 * v107];
    *(v109 + 4) = v105;
    *(v109 + 5) = v106;
  }

  v110 = sub_10000AAE0();
  if ((v110 & 0x100000000) == 0)
  {
    v111 = v110;
    sub_100009AA0();
    sub_10000AC50(25);

    sub_100009B54();
    v161 = 0xD000000000000017;
    v162 = v112;
    LODWORD(v160) = v111;
    v171._countAndFlagsBits = sub_10000AC90();
    sub_10000ABE0(v171);

    v113 = v161;
    v114 = v162;
    v116 = *(v31 + 2);
    v115 = *(v31 + 3);
    if (v116 >= v115 >> 1)
    {
      v138 = sub_100009900(v115);
      v31 = sub_100007C54(v138, v116 + 1, 1, v31);
    }

    *(v31 + 2) = v116 + 1;
    v117 = &v31[16 * v116];
    *(v117 + 4) = v113;
    *(v117 + 5) = v114;
  }

  v161 = v31;
  v118 = sub_1000099A4();
  sub_1000016A4(v118, v119);
  sub_100009868(&qword_1000143A0);
  sub_100009C20();
  v120 = sub_10000AB50();
  v122 = v121;

  v161 = v120;
  v162 = v122;

  sub_10000A04C();

  sub_100009DD4();
}

void sub_100006F98(uint64_t a1)
{
  sub_100009DBC();
  v106 = v3;
  v5 = v4;
  v109 = v6;
  v7 = sub_1000016A4(&qword_100014328, &qword_10000B340);
  v8 = sub_100009970(v7);
  __chkstk_darwin(v8);
  sub_100009854();
  v102 = v9;
  sub_10000990C();
  __chkstk_darwin(v10);
  sub_100009ED0();
  __chkstk_darwin(v11);
  sub_100009EA8();
  __chkstk_darwin(v12);
  v14 = &v101 - v13;
  v15 = sub_10000A890();
  sub_100009840();
  v108 = v16;
  __chkstk_darwin(v17);
  sub_100009854();
  v103 = v18;
  sub_10000990C();
  __chkstk_darwin(v19);
  sub_100009918();
  v104 = v20;
  sub_10000990C();
  __chkstk_darwin(v21);
  sub_100009918();
  v107 = v22;
  sub_10000990C();
  __chkstk_darwin(v23);
  v25 = &v101 - v24;
  sub_100009AA0();
  sub_10000AC50(16);

  strcpy(&v111, "Vacuum Event ");
  HIWORD(v111) = -4864;
  v110 = v5;
  v112._countAndFlagsBits = sub_10000AC90();
  sub_10000ABE0(v112);

  v113._countAndFlagsBits = 58;
  v113._object = 0xE100000000000000;
  sub_10000ABE0(v113);
  v26 = v111;
  v30 = sub_100009DA0(v27, v28, v29, _swiftEmptyArrayStorage);
  v31 = *(v30 + 2);
  sub_100009B30();
  if (v74)
  {
    v80 = sub_10000982C(v32);
    v30 = sub_100007C54(v80, v81, v82, v30);
  }

  v105 = v2;
  *(v30 + 2) = &v111;
  *&v30[16 * v31 + 32] = v26;
  v33 = v109;
  sub_10000AA60();
  if (sub_1000082E8(v14, 1, v15) == 1)
  {
    sub_1000086B0(v14, &qword_100014328, &qword_10000B340);
    v34 = v108;
  }

  else
  {
    v34 = v108;
    (*(v108 + 32))(v25, v14, v15);
    sub_100009B84();
    isa = sub_10000A860().super.isa;
    v36 = [v106 stringFromDate:isa];

    v37 = sub_10000AB80();
    v39 = v38;

    v114._countAndFlagsBits = v37;
    v114._object = v39;
    sub_10000ABE0(v114);

    v40 = v111;
    v42 = *(v30 + 2);
    v41 = *(v30 + 3);
    if (v42 >= v41 >> 1)
    {
      v83 = sub_10000982C(v41);
      v30 = sub_100007C54(v83, v84, v85, v30);
    }

    (*(v34 + 8))(v25, v15);
    *(v30 + 2) = v42 + 1;
    *&v30[16 * v42 + 32] = v40;
    v33 = v109;
  }

  v43 = v33;
  sub_10000AA70();
  v44 = sub_1000082E8(v1, 1, v15);
  v45 = v107;
  if (v44 == 1)
  {
    sub_1000086B0(v1, &qword_100014328, &qword_10000B340);
    sub_100009D1C();
    if (v74)
    {
      v86 = sub_10000982C(v46);
      v30 = sub_100007C54(v86, v87, v88, v30);
    }

    v47 = v105;
    v48 = 0x800000010000BE90;
    v49 = 0xD00000000000002ELL;
  }

  else
  {
    (*(v34 + 32))(v107, v1, v15);
    sub_10000AA50();
    if (v50)
    {
      v25 = v50;
      sub_100009F30();
      *&v111 = v51;
      *(&v111 + 1) = 0xEA0000000000203ALL;
      v52.super.isa = sub_10000A860().super.isa;
      v53 = sub_100009FD4(v52.super.isa);

      v54 = sub_10000AB80();
      v56 = v55;

      v43 = &v111;
      v115._countAndFlagsBits = v54;
      v115._object = v56;
      sub_10000ABE0(v115);

      v57 = v111;
      v58 = *(v30 + 2);
      sub_100009B30();
      if (v74)
      {
        v89 = sub_10000982C(v59);
        v30 = sub_100007C54(v89, v90, v91, v30);
      }

      v47 = v105;
      *(v30 + 2) = &v111;
      *&v30[16 * v58 + 32] = v57;
      sub_100009B60();
      v116._countAndFlagsBits = sub_100009F44();
      sub_10000ABE0(v116);

      v48 = *(&v111 + 1);
      v49 = v111;
      sub_100009D1C();
      v45 = v107;
      if (v74)
      {
        v92 = sub_10000982C(v60);
        v30 = sub_100007C54(v92, v93, v94, v30);
      }

      v34 = v108;
    }

    else
    {
      sub_100009F1C();
      *&v111 = v61;
      *(&v111 + 1) = 0xEC000000203A6465;
      v62.super.isa = sub_10000A860().super.isa;
      v25 = sub_100009FD4(v62.super.isa);

      v63 = sub_10000AB80();
      v65 = v64;

      v43 = &v111;
      v117._countAndFlagsBits = v63;
      v117._object = v65;
      sub_10000ABE0(v117);

      v48 = *(&v111 + 1);
      v49 = v111;
      sub_100009D1C();
      if (v74)
      {
        v98 = sub_10000982C(v66);
        v30 = sub_100007C54(v98, v99, v100, v30);
      }

      v47 = v105;
    }

    (*(v34 + 8))(v45, v15);
  }

  *(v30 + 2) = v43;
  v67 = &v30[16 * v25];
  *(v67 + 4) = v49;
  *(v67 + 5) = v48;
  sub_10000AA60();
  sub_1000099F0(v47, 1, v15);
  if (v68)
  {
    goto LABEL_26;
  }

  v69 = *(v34 + 32);
  v70 = v104;
  v69(v104, v47, v15);
  v47 = v102;
  sub_10000AA70();
  sub_1000099F0(v47, 1, v15);
  if (v68)
  {
    (*(v34 + 8))(v70, v15);
LABEL_26:
    sub_1000086B0(v47, &qword_100014328, &qword_10000B340);
    goto LABEL_30;
  }

  v69(v103, v47, v15);
  sub_10000A850();
  v118._countAndFlagsBits = sub_100009AE0(v71);
  sub_10000ABE0(v118);

  v72 = v111;
  v73 = *(v30 + 2);
  sub_100009A94();
  if (v74)
  {
    v95 = sub_10000982C(v75);
    v30 = sub_100007C54(v95, v96, v97, v30);
  }

  v76 = *(v34 + 8);
  v76(v103, v15);
  v76(v104, v15);
  *(v30 + 2) = &v111;
  *&v30[16 * v73 + 32] = v72;
LABEL_30:
  *&v111 = v30;
  v77 = sub_1000099A4();
  v79 = sub_1000016A4(v77, v78);
  sub_100009868(&qword_1000143A0);
  sub_100009C20();
  sub_10000AB50();
  sub_100009CC0();

  *&v111 = &unk_100014398;
  *(&v111 + 1) = v79;

  sub_10000A04C();

  sub_100009DD4();
}

uint64_t sub_100007794(double a1)
{
  v2 = [objc_allocWithZone(NSDateComponentsFormatter) init];
  [v2 setUnitsStyle:1];
  v3 = [v2 stringFromTimeInterval:a1];
  if (v3)
  {
    v4 = v3;
    sub_10000AB80();
    sub_100009C98();
  }

  else
  {
    sub_10000AC10();
    v6._countAndFlagsBits = 115;
    v6._object = 0xE100000000000000;
    sub_10000ABE0(v6);
  }

  return sub_100009998();
}

uint64_t sub_100007870(uint64_t a1)
{
  v36 = sub_1000016A4(&qword_1000143E0, &qword_10000B3F8);
  sub_100009840();
  v3 = v2;
  sub_100009A20();
  __chkstk_darwin(v4);
  sub_100009B3C();
  v35 = v5;
  v6 = *(a1 + 16);
  if (!v6)
  {
    return &_swiftEmptyArrayStorage;
  }

  sub_100009484(0, v6, 0);
  result = sub_1000095AC(a1);
  v10 = result;
  v11 = 0;
  v12 = a1 + 56;
  v34 = v3;
  v33 = a1;
  v30 = a1 + 64;
  v31 = v6;
  v32 = a1 + 56;
  if ((result & 0x8000000000000000) == 0)
  {
    while (v10 < 1 << *(a1 + 32))
    {
      v13 = v10 >> 6;
      if ((*(v12 + 8 * (v10 >> 6)) & (1 << v10)) == 0)
      {
        goto LABEL_27;
      }

      if (*(a1 + 36) != v8)
      {
        goto LABEL_28;
      }

      v38 = v8;
      v39 = v9;
      v37 = v11;
      (*(v34 + 16))(v35, *(a1 + 48) + *(v34 + 72) * v10, v36);
      sub_100009AA0();
      sub_10000AC50(16);
      sub_10000A9C0();

      v42._countAndFlagsBits = 0x72756C6961662820;
      v42._object = 0xEB00000000203A65;
      sub_10000ABE0(v42);
      v14._countAndFlagsBits = sub_10000A9D0();
      if (v14._object)
      {
        object = v14._object;
      }

      else
      {
        v14._countAndFlagsBits = 0x6E776F6E6B6E75;
        object = 0xE700000000000000;
      }

      v14._object = object;
      sub_10000ABE0(v14);

      v43._countAndFlagsBits = 41;
      v43._object = 0xE100000000000000;
      sub_10000ABE0(v43);
      result = (*(v34 + 8))(v35, v36);
      v16 = *(&_swiftEmptyArrayStorage + 2);
      if (v16 >= *(&_swiftEmptyArrayStorage + 3) >> 1)
      {
        sub_100009E90();
        result = sub_100009484(v27, v28, v29);
      }

      *(&_swiftEmptyArrayStorage + 2) = v16 + 1;
      v17 = &_swiftEmptyArrayStorage + 16 * v16;
      *(v17 + 4) = v40;
      *(v17 + 5) = v41;
      if (v39)
      {
        goto LABEL_32;
      }

      v12 = v32;
      a1 = v33;
      v18 = 1 << *(v33 + 32);
      if (v10 >= v18)
      {
        goto LABEL_29;
      }

      v19 = *(v32 + 8 * v13);
      if ((v19 & (1 << v10)) == 0)
      {
        goto LABEL_30;
      }

      if (*(v33 + 36) != v38)
      {
        goto LABEL_31;
      }

      v20 = v19 & (-2 << (v10 & 0x3F));
      if (v20)
      {
        v18 = __clz(__rbit64(v20)) | v10 & 0x7FFFFFFFFFFFFFC0;
        v21 = v31;
      }

      else
      {
        v22 = v13 << 6;
        v23 = v13 + 1;
        v24 = (v30 + 8 * v13);
        v21 = v31;
        while (v23 < (v18 + 63) >> 6)
        {
          v26 = *v24++;
          v25 = v26;
          v22 += 64;
          ++v23;
          if (v26)
          {
            result = sub_1000095EC(v10, v38, 0);
            v18 = __clz(__rbit64(v25)) + v22;
            goto LABEL_22;
          }
        }

        result = sub_1000095EC(v10, v38, 0);
      }

LABEL_22:
      v11 = v37 + 1;
      if (v37 + 1 == v21)
      {
        return &_swiftEmptyArrayStorage;
      }

      v9 = 0;
      v8 = *(v33 + 36);
      v10 = v18;
      if (v18 < 0)
      {
        break;
      }
    }
  }

  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

id ToolKitDiagnosticWrapper.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

char *sub_100007C54(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1000016A4(&qword_1000143A8, &qword_10000B3D0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100007D5C(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1000016A4(&qword_1000143E8, &qword_10000B400);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 16 * v8);
  }

  return v10;
}

void *sub_100007E5C(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1000016A4(&qword_100014408, &unk_10000B418);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || &a4[5 * v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1000016A4(&qword_100014340, &qword_10000B348);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100007F94(char *result, int64_t a2, char a3, uint64_t a4, uint64_t *a5, uint64_t *a6, void (*a7)(void), uint64_t (*a8)(void))
{
  v11 = result;
  if (a3)
  {
    v12 = *(a4 + 24);
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = *(a4 + 16);
  v15 = sub_10000811C(v14, v13, a5, a6, a7);
  a8(0);
  sub_1000099E4();
  if (v11)
  {
    sub_100008218(a4 + v16, v14, &v15[v16], a7);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v15;
}

void *sub_1000080A0(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_1000016A4(&qword_1000143A8, &qword_10000B3D0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * ((v5 - 32) / 16);
  return v4;
}

char *sub_10000811C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
{
  if (a2 <= a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = a2;
  }

  if (!v5)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_1000016A4(a3, a4);
  v8 = *(a5(0) - 8);
  v9 = *(v8 + 72);
  v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v11 = swift_allocObject();
  result = j__malloc_size(v11);
  if (v9)
  {
    if (&result[-v10] != 0x8000000000000000 || v9 != -1)
    {
      v11[2] = a1;
      v11[3] = 2 * (&result[-v10] / v9);
      return v11;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_100008218(unint64_t a1, uint64_t a2, unint64_t a3, void (*a4)(void))
{
  if (a3 < a1 || (a4(0), sub_10000997C(), a1 + *(v8 + 72) * a2 <= a3))
  {
    a4(0);
    sub_100009E58();

    _swift_arrayInitWithTakeFrontToBack(v10);
  }

  else if (a3 != a1)
  {
    sub_100009E58();

    _swift_arrayInitWithTakeBackToFront(v9);
  }
}

unint64_t sub_100008310()
{
  result = qword_100014330;
  if (!qword_100014330)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100014330);
  }

  return result;
}

uint64_t sub_100008354(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1000083B8(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t sub_100008404(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

unint64_t sub_10000841C(uint64_t a1, uint64_t a2)
{
  sub_10000ACC0();
  sub_10000ABD0();
  v4 = sub_10000ACD0();

  return sub_1000087A4(a1, a2, v4);
}

Swift::Int sub_100008494(char **a1, uint64_t a2)
{
  v4 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v4 = sub_10000975C(v4);
  }

  v5 = *(v4 + 2);
  v7[0] = (v4 + 32);
  v7[1] = v5;
  result = sub_100008858(v7, a2);
  *a1 = v4;
  return result;
}

void *sub_100008508(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return _swiftEmptyArrayStorage;
  }

  v3 = sub_1000080A0(*(a1 + 16), 0);
  v4 = sub_1000095F8(&v7, v3 + 4, v1, a1);
  v5 = v7;

  sub_100009754(v5);
  if (v4 != v1)
  {
    __break(1u);
    return _swiftEmptyArrayStorage;
  }

  return v3;
}

uint64_t sub_1000085C4(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1000085D8(a1, a2);
  }

  return a1;
}

uint64_t sub_1000085D8(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v2;
    }
  }
}

uint64_t sub_100008630(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_100008668(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_1000086B0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  sub_1000016A4(a2, a3);
  sub_10000997C();
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_100008708(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_100008668(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100008750()
{
  result = qword_1000143D8;
  if (!qword_1000143D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000143D8);
  }

  return result;
}

unint64_t sub_1000087A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (sub_10000ACA0() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

Swift::Int sub_100008858(uint64_t *a1, uint64_t a2)
{
  v4 = a1[1];
  result = sub_10000AC80(v4);
  if (result < v4)
  {
    if (v4 >= -1)
    {
      v6 = result;
      v7 = v4 / 2;
      if (v4 <= 1)
      {
        v8 = _swiftEmptyArrayStorage;
      }

      else
      {
        v8 = sub_10000AC00();
        v8[2] = v7;
      }

      v9[0] = v8 + 4;
      v9[1] = v7;
      sub_100008A64(v9, v10, a1, v6, a2);
      v8[2] = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v4 < 0)
  {
    goto LABEL_12;
  }

  if (v4)
  {
    return sub_100008958(0, v4, 1, a1);
  }

  return result;
}

uint64_t sub_100008958(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v5 = *a4;
    v6 = (*a4 + 16 * a3);
    v7 = result - a3;
LABEL_4:
    v18 = a3;
    v8 = (v5 + 16 * a3);
    v9 = *v8;
    v10 = v8[1];
    v15 = v7;
    v16 = v6;
    while (1)
    {
      v17[0] = v9;
      v17[1] = v10;

      sub_1000045E0(v17);
      v12 = v11;

      if (v4)
      {
        break;
      }

      if (v12)
      {
        if (!v5)
        {
          __break(1u);
          return result;
        }

        v9 = *v6;
        v10 = v6[1];
        *v6 = *(v6 - 1);
        *(v6 - 1) = v10;
        *(v6 - 2) = v9;
        v6 -= 2;
        if (!__CFADD__(v7++, 1))
        {
          continue;
        }
      }

      a3 = v18 + 1;
      v6 = v16 + 2;
      v7 = v15 - 1;
      if (v18 + 1 != a2)
      {
        goto LABEL_4;
      }

      return result;
    }
  }

  return result;
}

uint64_t sub_100008A64(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v115 = a5;
  v107 = result;
  v7 = a3[1];
  if (v7 < 1)
  {
    v9 = _swiftEmptyArrayStorage;
LABEL_94:
    v111 = *v107;
    if (*v107)
    {
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        goto LABEL_131;
      }

      goto LABEL_96;
    }

    goto LABEL_140;
  }

  v8 = 0;
  v9 = _swiftEmptyArrayStorage;
  while (1)
  {
    v10 = v8;
    v11 = v8 + 1;
    if (v8 + 1 >= v7)
    {
      goto LABEL_23;
    }

    v111 = v7;
    v12 = *a3;
    v13 = (*a3 + 16 * v11);
    v14 = v13[1];
    v113 = *v13;
    v114 = v14;
    v15 = v12 + 16 * v10;

    sub_1000045E0(&v113);
    if (v6)
    {
LABEL_107:
    }

    v17 = v16;
    v108 = v9;

    v18 = 16 * v10;
    v19 = v15 + 24;
    v105 = v10;
    v20 = v10 + 2;
    v21 = v111;
    do
    {
      v22 = v20;
      v23 = v11 + 1;
      if (v23 >= v21)
      {
        v11 = v21;
        if ((v17 & 1) == 0)
        {
          goto LABEL_21;
        }

LABEL_9:
        v10 = v105;
        if (v11 >= v105)
        {
          if (v105 >= v11)
          {
            v9 = v108;
          }

          else
          {
            if (v21 >= v22)
            {
              v31 = v22;
            }

            else
            {
              v31 = v21;
            }

            v32 = 16 * v31;
            v33 = v11;
            v34 = v105;
            v9 = v108;
            do
            {
              if (v34 != --v33)
              {
                v35 = *a3;
                if (!*a3)
                {
                  goto LABEL_138;
                }

                v36 = (v35 + v18);
                v37 = v35 + v32;
                v38 = *v36;
                v39 = v36[1];
                *v36 = *(v37 - 16);
                *(v37 - 16) = v38;
                *(v37 - 8) = v39;
              }

              ++v34;
              v32 -= 16;
              v18 += 16;
            }

            while (v34 < v33);
          }

          goto LABEL_23;
        }

        goto LABEL_134;
      }

      v24 = v19 + 16;
      v25 = *(v19 + 16);
      v113 = *(v19 + 8);
      v114 = v25;

      sub_1000045E0(&v113);
      v26 = v23;
      v27 = v6;
      v29 = v28 & 1;

      v20 = v22 + 1;
      v19 = v24;
      v30 = (v17 & 1) == v29;
      v21 = v111;
      v6 = v27;
      v11 = v26;
    }

    while (v30);
    if (v17)
    {
      goto LABEL_9;
    }

LABEL_21:
    v9 = v108;
    v10 = v105;
LABEL_23:
    v40 = a3[1];
    if (v11 < v40)
    {
      if (__OFSUB__(v11, v10))
      {
        goto LABEL_130;
      }

      if (v11 - v10 < a4)
      {
        v41 = v10 + a4;
        if (__OFADD__(v10, a4))
        {
          __break(1u);
        }

        else
        {
          if (v41 >= v40)
          {
            v41 = a3[1];
          }

          if (v41 >= v10)
          {
            if (v11 != v41)
            {
              v84 = *a3;
              v85 = (*a3 + 16 * v11);
              v106 = v10;
              v86 = v10 - v11;
              v102 = v41;
              do
              {
                v110 = v11;
                v111 = v85;
                v87 = (v84 + 16 * v11);
                v88 = *v87;
                v89 = v87[1];
                v103 = v86;
                v90 = v86;
                while (1)
                {
                  v91 = v84;
                  v113 = v88;
                  v114 = v89;

                  sub_1000045E0(&v113);
                  if (v6)
                  {
                    goto LABEL_107;
                  }

                  v93 = v92;

                  if ((v93 & 1) == 0)
                  {
                    break;
                  }

                  if (!v91)
                  {
                    goto LABEL_137;
                  }

                  v84 = v91;
                  v88 = *v85;
                  v89 = *(v85 + 1);
                  *v85 = *(v85 - 1);
                  *(v85 - 1) = v89;
                  *(v85 - 2) = v88;
                  v85 -= 16;
                  if (__CFADD__(v90++, 1))
                  {
                    goto LABEL_91;
                  }
                }

                v84 = v91;
LABEL_91:
                v11 = v110 + 1;
                v85 = v111 + 16;
                v86 = v103 - 1;
              }

              while (v110 + 1 != v102);
              v11 = v102;
              v10 = v106;
            }

            goto LABEL_31;
          }
        }

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
    }

LABEL_31:
    if (v11 < v10)
    {
      goto LABEL_129;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_100007D5C(0, *(v9 + 16) + 1, 1, v9);
      v9 = result;
    }

    v43 = *(v9 + 16);
    v42 = *(v9 + 24);
    v44 = v43 + 1;
    if (v43 >= v42 >> 1)
    {
      result = sub_100007D5C((v42 > 1), v43 + 1, 1, v9);
      v9 = result;
    }

    *(v9 + 16) = v44;
    v45 = v9 + 32;
    v46 = (v9 + 32 + 16 * v43);
    *v46 = v10;
    v46[1] = v11;
    v111 = *v107;
    if (!*v107)
    {
LABEL_139:
      __break(1u);
LABEL_140:
      __break(1u);
      return result;
    }

    v109 = v11;
    if (v43)
    {
      break;
    }

LABEL_80:
    v7 = a3[1];
    v8 = v109;
    if (v109 >= v7)
    {
      goto LABEL_94;
    }
  }

  while (1)
  {
    v47 = v44 - 1;
    v48 = (v45 + 16 * (v44 - 1));
    v49 = (v9 + 16 * v44);
    if (v44 >= 4)
    {
      v54 = v45 + 16 * v44;
      v55 = *(v54 - 64);
      v56 = *(v54 - 56);
      v60 = __OFSUB__(v56, v55);
      v57 = v56 - v55;
      if (v60)
      {
        goto LABEL_117;
      }

      v59 = *(v54 - 48);
      v58 = *(v54 - 40);
      v60 = __OFSUB__(v58, v59);
      v52 = v58 - v59;
      v53 = v60;
      if (v60)
      {
        goto LABEL_118;
      }

      v61 = v49[1];
      v62 = v61 - *v49;
      if (__OFSUB__(v61, *v49))
      {
        goto LABEL_120;
      }

      v60 = __OFADD__(v52, v62);
      v63 = v52 + v62;
      if (v60)
      {
        goto LABEL_123;
      }

      if (v63 >= v57)
      {
        v77 = *v48;
        v76 = v48[1];
        v60 = __OFSUB__(v76, v77);
        v78 = v76 - v77;
        if (v60)
        {
          goto LABEL_128;
        }

        if (v52 < v78)
        {
          v47 = v44 - 2;
        }

        goto LABEL_73;
      }

      goto LABEL_51;
    }

    if (v44 == 3)
    {
      v50 = *(v9 + 32);
      v51 = *(v9 + 40);
      v60 = __OFSUB__(v51, v50);
      v52 = v51 - v50;
      v53 = v60;
LABEL_51:
      if (v53)
      {
        goto LABEL_119;
      }

      v65 = *v49;
      v64 = v49[1];
      v66 = __OFSUB__(v64, v65);
      v67 = v64 - v65;
      v68 = v66;
      if (v66)
      {
        goto LABEL_122;
      }

      v69 = v48[1];
      v70 = v69 - *v48;
      if (__OFSUB__(v69, *v48))
      {
        goto LABEL_125;
      }

      if (__OFADD__(v67, v70))
      {
        goto LABEL_127;
      }

      if (v67 + v70 >= v52)
      {
        if (v52 < v70)
        {
          v47 = v44 - 2;
        }

        goto LABEL_73;
      }

      goto LABEL_66;
    }

    if (v44 < 2)
    {
      goto LABEL_121;
    }

    v72 = *v49;
    v71 = v49[1];
    v60 = __OFSUB__(v71, v72);
    v67 = v71 - v72;
    v68 = v60;
LABEL_66:
    if (v68)
    {
      goto LABEL_124;
    }

    v74 = *v48;
    v73 = v48[1];
    v60 = __OFSUB__(v73, v74);
    v75 = v73 - v74;
    if (v60)
    {
      goto LABEL_126;
    }

    if (v75 < v67)
    {
      goto LABEL_80;
    }

LABEL_73:
    if (v47 - 1 >= v44)
    {
      break;
    }

    if (!*a3)
    {
      goto LABEL_135;
    }

    v79 = v9;
    v80 = (v45 + 16 * (v47 - 1));
    v81 = *v80;
    v82 = (v45 + 16 * v47);
    v9 = v82[1];
    sub_100009130((*a3 + 16 * *v80), (*a3 + 16 * *v82), *a3 + 16 * v9, v111, v115);
    if (v6)
    {
    }

    if (v9 < v81)
    {
      goto LABEL_111;
    }

    v83 = *(v79 + 16);
    if (v47 > v83)
    {
      goto LABEL_112;
    }

    *v80 = v81;
    v80[1] = v9;
    if (v47 >= v83)
    {
      goto LABEL_113;
    }

    v44 = v83 - 1;
    result = memmove((v45 + 16 * v47), v82 + 2, 16 * (v83 - 1 - v47));
    v9 = v79;
    *(v79 + 16) = v83 - 1;
    if (v83 <= 2)
    {
      goto LABEL_80;
    }
  }

  __break(1u);
LABEL_111:
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
  result = sub_100009470(v9);
  v9 = result;
LABEL_96:
  v96 = (v9 + 16);
  v95 = *(v9 + 16);
  while (v95 >= 2)
  {
    if (!*a3)
    {
      goto LABEL_136;
    }

    v97 = v9;
    v98 = (v9 + 16 * v95);
    v99 = *v98;
    v100 = &v96[2 * v95];
    v9 = v100[1];
    sub_100009130((*a3 + 16 * *v98), (*a3 + 16 * *v100), *a3 + 16 * v9, v111, v115);
    if (v6)
    {
      break;
    }

    if (v9 < v99)
    {
      goto LABEL_114;
    }

    if (v95 - 2 >= *v96)
    {
      goto LABEL_115;
    }

    *v98 = v99;
    v98[1] = v9;
    v101 = *v96 - v95;
    if (*v96 < v95)
    {
      goto LABEL_116;
    }

    v95 = *v96 - 1;
    result = memmove(v100, v100 + 2, 16 * v101);
    *v96 = v95;
    v9 = v97;
  }
}

uint64_t sub_100009130(char *__src, char *a2, unint64_t a3, char *a4, uint64_t a5)
{
  v47 = a5;
  v5 = a4;
  v6 = a3;
  v7 = a2;
  v8 = __src;
  v9 = (a2 - __src) / 16;
  v10 = (a3 - a2) / 16;
  if (v9 < v10)
  {
    if (a4 != __src || &__src[16 * v9] <= a4)
    {
      memmove(a4, __src, 16 * v9);
    }

    v12 = &v5[16 * v9];
    while (1)
    {
      if (v5 >= v12 || v7 >= v6)
      {
        v7 = v8;
        goto LABEL_39;
      }

      v14 = *(v7 + 1);
      v15 = v7;
      v45 = *v7;
      v46 = v14;

      sub_1000045E0(&v45);
      if (v44)
      {

        v35 = (v12 - v5) / 16;
        v36 = v8 < v5 || v8 >= &v5[16 * v35];
        if (v36 || v8 != v5)
        {
          v33 = 16 * v35;
          v34 = v8;
LABEL_51:
          v37 = v5;
LABEL_52:
          memmove(v34, v37, v33);
        }

        return 1;
      }

      v17 = v16;

      if ((v17 & 1) == 0)
      {
        break;
      }

      v18 = v15;
      v7 = v15 + 16;
      if (v8 != v15)
      {
        goto LABEL_17;
      }

LABEL_18:
      v8 += 16;
    }

    v18 = v5;
    v19 = v8 == v5;
    v5 += 16;
    v7 = v15;
    if (v19)
    {
      goto LABEL_18;
    }

LABEL_17:
    *v8 = *v18;
    goto LABEL_18;
  }

  if (a4 != a2 || &a2[16 * v10] <= a4)
  {
    memmove(a4, a2, 16 * v10);
  }

  v42 = v5;
  v43 = &v5[16 * v10];
LABEL_25:
  v21 = 0;
  v41 = v7 - 16;
  while (1)
  {
    v12 = &v43[v21];
    if (&v43[v21] <= v5 || v7 <= v8)
    {
LABEL_39:
      v31 = (v12 - v5) / 16;
      v32 = v7 < v5 || v7 >= &v5[16 * v31];
      if (v32 || v7 != v5)
      {
        v33 = 16 * v31;
        v34 = v7;
        goto LABEL_51;
      }

      return 1;
    }

    v23 = *(v12 - 2);
    v25 = *(v12 - 1);
    v24 = v12 - 16;
    v45 = v23;
    v46 = v25;
    v26 = v7;

    sub_1000045E0(&v45);
    if (v44)
    {
      break;
    }

    v28 = v27;

    v29 = (v6 + v21);
    v30 = (v6 + v21 - 16);
    if (v28)
    {
      v43 += v21;
      v6 = v6 + v21 - 16;
      v7 = v41;
      v5 = v42;
      if (v29 != v26)
      {
        *v30 = *v41;
        v7 = v41;
        v6 = v30;
      }

      goto LABEL_25;
    }

    if (&v43[v21] != (v6 + v21))
    {
      *v30 = *v24;
    }

    v21 -= 16;
    v5 = v42;
    v7 = v26;
  }

  v37 = v42;
  v39 = (v43 - v42 + v21) / 16;
  if (v7 < v42 || v7 >= &v42[16 * v39])
  {
    memmove(v7, v42, 16 * v39);
  }

  else if (v7 != v42)
  {
    v33 = 16 * v39;
    v34 = v7;
    goto LABEL_52;
  }

  return 1;
}

char *sub_100009484(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1000094A4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1000094A4(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1000016A4(&qword_1000143A8, &qword_10000B3D0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1000095EC(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return v3;
}

void *sub_1000095F8(void *result, void *a2, unint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
    v13 = 0;
    v10 = 0;
LABEL_20:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v13;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v13 = 0;
    goto LABEL_20;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    v12 = 0;
    v13 = 0;
    while (v12 < v10)
    {
      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_24;
      }

      if (!v9)
      {
        while (1)
        {
          v15 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            break;
          }

          if (v15 >= ((63 - v7) >> 6))
          {
            v9 = 0;
            v10 = v12;
            goto LABEL_20;
          }

          v9 = *(v6 + 8 * v15);
          ++v13;
          if (v9)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
        break;
      }

      v15 = v13;
LABEL_15:
      v16 = (*(a4 + 48) + ((v15 << 10) | (16 * __clz(__rbit64(v9)))));
      v17 = v16[1];
      v9 &= v9 - 1;
      *v11 = *v16;
      v11[1] = v17;
      if (v14 == v10)
      {

        v13 = v15;
        goto LABEL_20;
      }

      v11 += 2;

      v12 = v14;
      v13 = v15;
    }

    __break(1u);
LABEL_24:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_100009770(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  sub_1000016A4(a3, a4);
  sub_10000997C();
  v5 = sub_1000099A4();
  v6(v5);
  return a2;
}

uint64_t sub_1000097CC(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_10000A890();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100009868(unint64_t *a1)
{

  return sub_100008708(a1, v1, v2, &protocol conformance descriptor for [A]);
}

char *sub_1000099B0()
{
  v3 = *(v2 + 48);
  *v0 = v1;
  return v0 + v3;
}

uint64_t sub_100009A2C()
{

  return sub_10000AC90();
}

uint64_t sub_100009A48(unint64_t *a1)
{

  return sub_100008708(a1, v1, v2, &protocol conformance descriptor for Set<A>);
}

void sub_100009AB0()
{
  *(v3 + 16) = v1;
  v5 = v3 + 16 * v4;
  *(v5 + 32) = v0;
  *(v5 + 40) = v2;
}

uint64_t sub_100009AC0(uint64_t a1)
{

  return _swift_once(a1, sub_1000012A0);
}

uint64_t sub_100009AE0(double a1)
{
  strcpy((v1 - 96), "  Duration: ");
  *(v1 - 83) = 0;
  *(v1 - 82) = -5120;

  return sub_100007794(a1);
}

uint64_t sub_100009BB4(uint64_t a1)
{

  return sub_10000ABA0();
}

uint64_t sub_100009BE8()
{

  return sub_10000AB90();
}

void sub_100009C44()
{
  v3._countAndFlagsBits = v0;
  v3._object = v1;

  sub_10000ABE0(v3);
}

void sub_100009C60()
{
  *(v1 - 440) = v0;
  *(v1 - 392) = v0;
  *(v1 - 560) = v0;
}

uint64_t sub_100009C7C()
{
}

uint64_t sub_100009CA4()
{
}

void sub_100009CCC(uint64_t a1@<X8>)
{
  *(v2 - 160) = v1;
  *(v2 - 152) = 0xE300000000000000;
  *(v2 - 208) = a1;
}

void sub_100009D2C()
{
  *(v3 + 16) = v1;
  v5 = v3 + 16 * v4;
  *(v5 + 32) = v0;
  *(v5 + 40) = v2;
}

uint64_t sub_100009D84(uint64_t a1)
{

  return sub_10000ABA0();
}

char *sub_100009DA0(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{

  return sub_100007C54(0, 1, 1, a4);
}

void sub_100009DEC(Swift::String a1)
{

  sub_10000ABE0(a1);
}

uint64_t sub_100009E04(uint64_t a1)
{

  return _swift_slowDealloc(a1, -1, -1);
}

void sub_100009E1C(Swift::String a1)
{

  sub_10000ABE0(a1);
}

void sub_100009E34(Swift::String a1)
{

  sub_10000ABE0(a1);
}

uint64_t sub_100009F94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(a2 - 256);

  return sub_100009770(a1, v5, v2, v3);
}

void sub_100009FB4(uint64_t a1@<X8>)
{
  v2._countAndFlagsBits = 0xD000000000000012;

  v2._object = ((a1 - 32) | 0x8000000000000000);
  sub_10000ABE0(v2);
}

id sub_100009FD4(uint64_t a1)
{
  v5 = *(v1 + 296);
  v6 = *(v2 - 136);

  return [v6 v5];
}

id sub_100009FF4(uint64_t a1)
{
  v5 = *(v1 + 296);
  v6 = *(v2 - 152);

  return [v6 v5];
}

uint64_t sub_10000A014()
{

  return sub_10000AB90();
}

uint64_t sub_10000A034()
{

  return sub_100008354(v0 - 160, v0 - 208);
}

void sub_10000A04C()
{
  v1._countAndFlagsBits = 2570;
  v1._object = 0xE200000000000000;

  sub_10000ABE0(v1);
}

id sub_10000A3A4()
{
  if (qword_100014418 != -1)
  {
    dispatch_once(&qword_100014418, &stru_100010658);
  }

  v1 = qword_100014420;

  return v1;
}

void sub_10000A3F8(id a1)
{
  qword_100014420 = os_log_create(WFLogSubsystem, "DiagnosticExtension");

  _objc_release_x1();
}