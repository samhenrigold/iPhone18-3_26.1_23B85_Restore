BOOL sub_2744D7548(uint64_t a1, void *a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v5 = &v11[-1] - v4;
  sub_2744D4568();
  v7 = v6;
  sub_27463C39C();
  swift_getAssociatedConformanceWitness();
  sub_27463C63C();
  (*(v3 + 8))(v5, AssociatedTypeWitness);
  v8 = sub_2744899C4(v11, v7);

  sub_274430664(v11);
  return v8;
}

uint64_t sub_2744D76F0(void (*a1)(char *, char *, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v61[0] = a3;
  v77 = a1;
  v6 = *(v4 + 80);
  v7 = *(v4 + 88);
  v8 = type metadata accessor for ScrollableTableView.Element(0, v6, v7, a4);
  v80 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = v61 - v9;
  v72 = v11;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v70 = sub_27463C0AC();
  v76 = *(v70 - 8);
  MEMORY[0x28223BE20](v70);
  v69 = v61 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v68 = (v61 - v14);
  v16 = type metadata accessor for ScrollableTableView.LayoutAtom(0, v6, v7, v15);
  MEMORY[0x28223BE20](v16);
  v18 = v61 - v17;
  v20 = type metadata accessor for ScrollableTableView.LayoutItem(0, v6, v7, v19);
  MEMORY[0x28223BE20](v20);
  v22 = v61 - v21;
  v83 = sub_27463B87C();
  v23 = *(a2 + 16);
  if (v23)
  {
    v24 = a2 + 32;
    do
    {
      sub_2744DE3E4(v24, v18);
      swift_storeEnumTagMultiPayload();
      sub_2744DB408(v18, 0, 1, 0, v6, v7, v22);
      sub_27463B92C();
      sub_27463B8CC();
      v24 += 120;
      --v23;
    }

    while (v23);
  }

  v73 = v7;
  v74 = v22;
  v78 = v20;
  v79 = v16;
  v82[1] = v77;
  v25 = v72;
  v26 = sub_27463B92C();
  WitnessTable = swift_getWitnessTable();
  MEMORY[0x277C57F10](v82, v26, WitnessTable);
  v81 = v82[0];
  sub_27463C5BC();
  sub_27463C58C();
  v28 = sub_27463C5AC();
  v66 = (v76 + 32);
  v67 = v28;
  v64 = (v80 + 32);
  v29 = (v6 - 8);
  v62 = (v80 + 8);
  v61[1] = (v6 - 8) & 0xFFFFFFFFFFFFLL | 0x2E3F000000000000;
  v65 = v10;
  for (i = (v6 - 8); ; v29 = i)
  {
    v30 = v69;
    sub_27463C59C();
    v31 = v68;
    (*v66)(v68, v30, v70);
    v32 = TupleTypeMetadata2;
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v31, 1, TupleTypeMetadata2);
    v34 = v74;
    if (EnumTagSinglePayload == 1)
    {
      break;
    }

    v35 = *v31;
    (*v64)(v10, v31 + *(v32 + 48), v25);
    v36 = *&v10[v25[9]];
    v37 = *(v36 + 16);
    v38 = *v29;
    v80 = v35;
    if (v37)
    {
      v75 = v38;
      LODWORD(v77) = v10[v25[11]];
      v39 = v36 + 32;
      v76 = *(v38 + 16);
      v40 = v73;
      v41 = v74;
      do
      {
        v42 = *(swift_getTupleTypeMetadata2() + 48);
        (v76)(v18, v10, v6);
        sub_2744DE3E4(v39, &v18[v42]);
        swift_storeEnumTagMultiPayload();
        sub_2744DB408(v18, v80, 0, v77, v6, v40, v41);
        sub_27463B92C();
        sub_27463B8CC();
        v39 += 120;
        --v37;
      }

      while (v37);
      v25 = v72;
      v35 = v80;
      v38 = v75;
    }

    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280950C40, qword_274653AB0);
    v43 = swift_getTupleTypeMetadata2();
    v44 = v38;
    v45 = &v18[*(v43 + 48)];
    v46 = *(v44 + 16);
    v10 = v65;
    v76 = (v44 + 16);
    v77 = v46;
    v46(v18, v65, v6);
    v47 = &v10[v25[12]];
    v48 = *v47;
    LOBYTE(v47) = v47[8];
    *v45 = v48;
    v45[8] = v47;
    swift_storeEnumTagMultiPayload();
    v49 = v10[v25[11]];
    v50 = v74;
    v51 = v35;
    LODWORD(v75) = v10[v25[11]];
    v52 = v73;
    sub_2744DB408(v18, v51, 0, v49, v6, v73, v74);
    sub_27463B92C();
    sub_27463B8CC();
    v53 = *&v10[v25[10]];
    v54 = *(v53 + 16);
    if (v54)
    {
      v55 = v53 + 32;
      do
      {
        v56 = *(swift_getTupleTypeMetadata2() + 48);
        v77(v18, v10, v6);
        sub_2744DE3E4(v55, &v18[v56]);
        swift_storeEnumTagMultiPayload();
        sub_2744DB408(v18, v80, 0, v75, v6, v52, v50);
        sub_27463B8CC();
        v55 += 120;
        --v54;
      }

      while (v54);
    }

    v25 = v72;
    (*v62)(v10, v72);
  }

  v57 = *(v61[0] + 16);
  v58 = v73;
  if (v57)
  {
    v59 = v61[0] + 32;
    do
    {
      sub_2744DE3E4(v59, v18);
      swift_storeEnumTagMultiPayload();
      sub_2744DB408(v18, 0, 1, 0, v6, v58, v34);
      sub_27463B92C();
      sub_27463B8CC();
      v59 += 120;
      --v57;
    }

    while (v57);
  }

  return v83;
}

double sub_2744D7E60(double a1, double a2, double a3, double a4)
{
  v4 = CGRectGetWidth(*&a1) + -40.0;
  v5 = COERCE_DOUBLE(sub_2744D49F0());
  if (v6)
  {
    v5 = v4;
  }

  if (v5 >= v4)
  {
    v7 = v4;
  }

  else
  {
    v7 = v5;
  }

  return (v4 - v7) * 0.5 + 20.0;
}

uint64_t sub_2744D7EE0(uint64_t result, char a2)
{
  v3 = v2 + *((*MEMORY[0x277D85000] & *v2) + 0x128);
  *v3 = result;
  v3[8] = a2 & 1;
  return result;
}

void sub_2744D7F18()
{
  v1 = v0;
  OUTLINED_FUNCTION_1_0();
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0x50);
  v3 = *((*MEMORY[0x277D85000] & *v0) + 0x58);
  v5 = type metadata accessor for ScrollableTableView.AccessoryID(255, v2, v3, v4);
  v405 = type metadata accessor for TableCell();
  swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_35_0();
  v404 = v6;
  v403 = sub_27463C0AC();
  OUTLINED_FUNCTION_1();
  v362 = v7;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_0();
  v407 = v9;
  OUTLINED_FUNCTION_10();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_19();
  v421 = v11;
  v12 = *(v3 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v14 = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_29_5();
  swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_35_0();
  v420 = v15;
  v412 = sub_27463C0AC();
  OUTLINED_FUNCTION_1();
  v363 = v16;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_0();
  v411 = v18;
  OUTLINED_FUNCTION_10();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_19();
  v410 = v20;
  v21 = OUTLINED_FUNCTION_41_3();
  v378 = _s12OverlayLayerC10LayoutItemVMa(v21, v22, v3, v23);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_60_0();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_40_1();
  v372 = v25;
  OUTLINED_FUNCTION_4_0();
  v399 = v26;
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_0();
  v406 = v28;
  OUTLINED_FUNCTION_10();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_19();
  v401 = v30;
  OUTLINED_FUNCTION_4_0();
  v423 = v31;
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_0();
  v370 = v33;
  OUTLINED_FUNCTION_10();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_19();
  v381 = v35;
  v36 = OUTLINED_FUNCTION_41_3();
  type metadata accessor for ScrollableTableView.LayoutAtom(v36, v37, v3, v38);
  OUTLINED_FUNCTION_1();
  v386 = v40;
  v387 = v39;
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_0();
  v371 = v41;
  OUTLINED_FUNCTION_10();
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_19();
  v408 = v43;
  v44 = OUTLINED_FUNCTION_41_3();
  v391 = v3;
  type metadata accessor for ScrollableTableView.LayoutItem(v44, v45, v3, v46);
  OUTLINED_FUNCTION_1();
  v385 = v47;
  OUTLINED_FUNCTION_60_0();
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_40_1();
  v409 = v49;
  v389 = v50;
  swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_35_0();
  v382 = v51;
  v422 = sub_27463C0AC();
  OUTLINED_FUNCTION_1();
  v390 = v52;
  MEMORY[0x28223BE20](v53);
  OUTLINED_FUNCTION_0();
  v417 = v54;
  OUTLINED_FUNCTION_10();
  MEMORY[0x28223BE20](v55);
  OUTLINED_FUNCTION_19();
  v414 = v56;
  OUTLINED_FUNCTION_28_7();
  sub_27463C0AC();
  OUTLINED_FUNCTION_1();
  v368 = v58;
  v369 = v57;
  MEMORY[0x28223BE20](v57);
  OUTLINED_FUNCTION_0();
  v360 = v59;
  OUTLINED_FUNCTION_10();
  MEMORY[0x28223BE20](v60);
  OUTLINED_FUNCTION_50_3();
  v376 = v61;
  OUTLINED_FUNCTION_10();
  MEMORY[0x28223BE20](v62);
  v64 = v355 - v63;
  OUTLINED_FUNCTION_4_0();
  v394 = v65;
  MEMORY[0x28223BE20](v66);
  OUTLINED_FUNCTION_0();
  v361 = v67;
  OUTLINED_FUNCTION_10();
  MEMORY[0x28223BE20](v68);
  OUTLINED_FUNCTION_50_3();
  v418 = v69;
  OUTLINED_FUNCTION_10();
  MEMORY[0x28223BE20](v70);
  OUTLINED_FUNCTION_50_3();
  v400 = v71;
  OUTLINED_FUNCTION_10();
  MEMORY[0x28223BE20](v72);
  OUTLINED_FUNCTION_50_3();
  v380 = v73;
  OUTLINED_FUNCTION_10();
  MEMORY[0x28223BE20](v74);
  OUTLINED_FUNCTION_19();
  v413 = v75;
  v76 = OUTLINED_FUNCTION_28_7();
  v77 = v14;
  v79 = OUTLINED_FUNCTION_35_3(v76, v78, v14);
  OUTLINED_FUNCTION_34_4(v79, v80);
  v377 = v12;
  v396 = v2;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_29_5();
  v430 = sub_27463B4DC();
  v82 = swift_allocObject();
  v83 = OUTLINED_FUNCTION_21_8();
  v85 = OUTLINED_FUNCTION_35_3(v83, v84, v405);
  OUTLINED_FUNCTION_34_4(v85, v86);
  OUTLINED_FUNCTION_11_8();
  WitnessTable = swift_getWitnessTable();
  v388 = v5;
  v416 = WitnessTable;
  v88 = sub_27463B4DC();
  v379 = v82;
  *(v82 + 16) = v88;
  v402 = v82 + 16;
  v89 = v77;
  v90 = v394;
  v429 = sub_27463B87C();
  v359 = [objc_opt_self() functionWithName_];
  v91 = OUTLINED_FUNCTION_0_0();
  v95 = sub_2744D7E60(v91, v92, v93, v94);
  v97 = v96;
  sub_2744D45E0(v64);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v64, 1, AssociatedTypeWitness);
  v395 = AssociatedTypeWitness;
  v419 = v89;
  v415 = AssociatedConformanceWitness;
  if (EnumTagSinglePayload == 1)
  {
    (*(v368 + 8))(v64, v369);
  }

  else
  {
    (*(v90 + 32))(v413, v64, AssociatedTypeWitness);
    sub_2744D4C68();
    sub_27463B53C();

    v99 = *&v425[0];
    if (*&v425[0])
    {
      [*&v425[0] frame];
      v356 = v100;

      v101 = OUTLINED_FUNCTION_59_2();
      v102(v101);
      v357 = 0;
      goto LABEL_7;
    }

    v103 = OUTLINED_FUNCTION_59_2();
    v105(v103, v104);
  }

  v357 = 1;
  v356 = 0.0;
LABEL_7:
  v106 = v396;
  v107 = v389;
  v108 = swift_allocObject();
  v383 = v108;
  *(v108 + 16) = 0;
  v358 = (v108 + 16);
  sub_2744D4A18(v108 + 16, v431);
  v459 = v431[1];
  v460[0] = v431[0];
  sub_2744DE314(&v459);
  v457 = v432;
  v458 = v433;
  v109 = sub_2744D2D90(&v457);
  *&v425[0] = v460[0];
  MEMORY[0x28223BE20](v109);
  v110 = v391;
  v355[-2] = v106;
  v355[-1] = v110;
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_28_7();
  v112 = sub_27463B92C();
  OUTLINED_FUNCTION_17_7();
  v113 = swift_getWitnessTable();
  v115 = sub_27457591C(sub_2744DE37C, KeyPath, v112, MEMORY[0x277D84030], MEMORY[0x277D84A98], v113, MEMORY[0x277D84AC0], v114);
  v355[2] = 0;
  OUTLINED_FUNCTION_25_0();
  v117 = *(v116 + 8);
  v392 = v116 + 8;
  v393 = v117;
  v117(v460, v112);

  v397 = sub_2745E1B10(v115);
  v461.origin.x = OUTLINED_FUNCTION_0_0();
  Width = CGRectGetWidth(v461);
  v398 = v1;
  v384 = v112;
  if (Width > 0.0)
  {
    sub_2744D4A18(v118, v434);
    v455 = v434[1];
    v456 = v434[0];
    sub_2744DE314(&v455);
    v453 = v435;
    v454 = v436;
    sub_2744D2D90(&v453);
    v440[0] = v456;
    OUTLINED_FUNCTION_18_6();
    v120 = swift_getWitnessTable();
    MEMORY[0x277C57F10](v425, v112, v120);
    v393(&v456, v112);
    v440[0] = *&v425[0];
    OUTLINED_FUNCTION_40_3();
    sub_27463C5BC();
    sub_27463C58C();
    OUTLINED_FUNCTION_40_3();
    v413 = sub_27463C5AC();
    v121 = (v390 + 4);
    v390 = (v385 + 32);
    v386 += 2;
    v374 = (v423 + 4);
    v375 = v399 + 8;
    v373 = (v423 + 1);
    v355[1] = v391 + 32;
    v366 = (v394 + 16);
    v367 = v391 + 40;
    v122 = v409;
    v123 = v382;
    v364 = v385 + 8;
    v365 = (v394 + 8);
    while (1)
    {
      while (1)
      {
        v124 = v417;
        sub_27463C59C();
        v125 = v414;
        (*v121)(v414, v124, v422);
        v126 = OUTLINED_FUNCTION_43_3();
        if (__swift_getEnumTagSinglePayload(v126, v127, v123) == 1)
        {
LABEL_41:

          goto LABEL_42;
        }

        v128 = *v125;
        v129 = (*v390)(v122, v125 + *(v123 + 48), v107);
        sub_2744D4A18(v129, v437);
        OUTLINED_FUNCTION_1_17();
        swift_getWitnessTable();
        v130 = OUTLINED_FUNCTION_28_7();
        v423 = type metadata accessor for LazyStackLayoutEngine(v130, v131, v132, v133);
        sub_2744D202C(v128, v423);
        v135 = v134;
        v137 = v136;
        v452 = v437[0];
        v393(&v452, v112);
        v451 = v437[1];
        sub_2744DE314(&v451);
        v449 = v438;
        v450 = v439;
        sub_2744D2D90(&v449);
        v462.origin.x = OUTLINED_FUNCTION_0_0();
        if (v135 + v137 >= CGRectGetMinY(v462))
        {
          break;
        }

        v138 = OUTLINED_FUNCTION_26_6();
        v139(v138);
      }

      v463.origin.x = OUTLINED_FUNCTION_0_0();
      MaxY = CGRectGetMaxY(v463);
      v464.origin.x = OUTLINED_FUNCTION_0_0();
      if (MaxY + CGRectGetHeight(v464) * 0.5 < v135)
      {
        v231 = OUTLINED_FUNCTION_26_6();
        v232(v231);
        goto LABEL_41;
      }

      v385 = *v386;
      (v385)(v408, v122, v387);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (!EnumCaseMultiPayload)
      {
        break;
      }

      if (EnumCaseMultiPayload == 1)
      {
        v142 = v396;
        v143 = *(OUTLINED_FUNCTION_35_3(0, v396, &type metadata for TableItemAccessory) + 48);
        v144 = v370;
        v145 = v408;
        (*v374)(v370, v408, v142);
        memcpy(v425, &v145[v143], 0x78uLL);
        v146 = v376;
        sub_27463C39C();
        OUTLINED_FUNCTION_65_1();
        __swift_storeEnumTagSinglePayload(v147, v148, v149, v395);
        sub_27448E108(v425, &v426);
        v150 = OUTLINED_FUNCTION_62_2();
        sub_2744D6108(v150, v151, v142, v391, v152);
        v153 = OUTLINED_FUNCTION_12_7();
        sub_2744DA7E8(v154, v155, v156, v157, v383, v379, v153, v158, v159, v160, v161, v162);
        v163 = OUTLINED_FUNCTION_51_2();
        v164(v163);
        sub_2744DE060(v425);
        v165 = v144;
        v122 = v409;
        v166 = v142;
        v112 = v384;
        v107 = v389;
        v167 = (*v373)(v165, v166);
        if (!v146)
        {
          goto LABEL_36;
        }
      }

      else
      {
        memcpy(v425, v408, 0x78uLL);
        v146 = v376;
        __swift_storeEnumTagSinglePayload(v376, 1, 1, v395);
        sub_27448E108(v425, &v426);
        v171 = OUTLINED_FUNCTION_62_2();
        sub_2744D6108(v171, v172, v396, v391, v173);
        v174 = OUTLINED_FUNCTION_12_7();
        sub_2744DA7E8(v175, v176, v177, v178, v383, v379, v174, v179, v180, v181, v182, v183);
        v184 = OUTLINED_FUNCTION_51_2();
        v185(v184);
        v167 = sub_2744DE060(v425);
        if (!v146)
        {
          goto LABEL_36;
        }
      }

LABEL_31:
      v146 = v146;
      v213 = OBJC_IVAR____TtC14WorkflowEditor9TableCell_isEmphasized;
      swift_beginAccess();
      v214 = *(v1 + *((*MEMORY[0x277D85000] & *v1) + 0x118));
      if (v146[v213] != v214)
      {
        v146[v213] = v214;
      }

      sub_2744D4AAC();
      v216 = v215;
      v122 = v409;
      sub_2744D9F04(v389, v425);
      v217 = sub_2744899C4(v425, v216);

      sub_274430664(v425);
      if (!v217)
      {
        [v146 isHidden];
      }

      v107 = v389;
      v112 = v384;
LABEL_36:
      v218 = v1 + *((*MEMORY[0x277D85000] & *v1) + 0x128);
      *v218 = 0;
      v218[8] = 1;
      sub_2744D4A18(v167, v440);
      sub_2744D202C(v128, v423);
      v220 = v219;
      v222 = v221;
      v448 = v440[0];
      v393(&v448, v112);
      v447 = v440[1];
      sub_2744DE314(&v447);
      v445 = v441;
      v446 = v442;
      sub_2744D2D90(&v445);
      v223 = v122 + *(v107 + 36);
      if (v223[8] == 1)
      {
        v224 = OUTLINED_FUNCTION_26_6();
        v225(v224);
      }

      else
      {
        v226 = *v223;
        v227 = v371;
        (v385)(v371, v122, v387);
        v465.origin.x = OUTLINED_FUNCTION_0_0();
        MinY = CGRectGetMinY(v465);
        sub_274540FFC(v227, v226, v396, v391, v372, v95, v220 - MinY, v97, v222);
        sub_27463B92C();
        v122 = v409;
        sub_27463B8CC();

        v229 = OUTLINED_FUNCTION_26_6();
        v230(v229);
      }

      v123 = v382;
    }

    v168 = v396;
    (*v374)(v381, v408, v396);
    sub_27463C39C();
    sub_2744D4C68();
    sub_27463B53C();

    v169 = *&v425[0];
    if (*&v425[0])
    {
      v170 = *&v425[0];
LABEL_28:
      v196 = *(v391 + 40);
      v197 = v169;
      v198 = v170;
      v196();
      v199 = v198;
      v200 = OUTLINED_FUNCTION_12_7();
      sub_2744DA3E0(v201, v202, v203, v383, v200, v204, v205, v206, v207, v208);
      [v199 setHidden_];

      sub_2744DB9EC();
      v209 = sub_27463BA8C() & 1;

      v210 = (*((*MEMORY[0x277D85000] & *v199) + 0x120))() & 1;
      if (v209 != v210)
      {
        (*((*MEMORY[0x277D85000] & *v199) + 0x128))(v209);
      }

      v211 = v380;
      v212 = v395;
      (*v366)(v400, v380, v395);
      *&v425[0] = v199;
      OUTLINED_FUNCTION_21_8();
      sub_27463B51C();
      v146 = v199;
      OUTLINED_FUNCTION_29_5();
      sub_27463B54C();
      (*v365)(v211, v212);
      (*v373)(v381, v396);
      goto LABEL_31;
    }

    memset(v425, 0, 40);
    v186 = sub_2744D501C();
    v188 = type metadata accessor for ScrollableTableView.ReuseIdentifier(255, v168, v391, v187);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094EF10, &qword_274653E18);
    OUTLINED_FUNCTION_9_9();
    swift_getWitnessTable();
    OUTLINED_FUNCTION_40_3();
    sub_27463B51C();
    v189 = sub_27463B52C();
    if (*v190)
    {
      v191 = sub_2744D61CC();
      v189(v424, 0);
      OUTLINED_FUNCTION_25_0();
      (*(v192 + 8))(v425, v188);
      v186(&v426, 0);
      v1 = v398;
      if (v191)
      {
        v193 = swift_dynamicCastClass();
        if (v193)
        {
          v170 = v193;
          v194 = v191;
          goto LABEL_28;
        }
      }
    }

    else
    {
      v189(v424, 0);
      OUTLINED_FUNCTION_25_0();
      (*(v195 + 8))(v425, v188);
      v186(&v426, 0);
      v1 = v398;
    }

    v170 = (*(v391 + 32))(v396);
    goto LABEL_28;
  }

LABEL_42:
  sub_2744D4C68();
  v234 = v420;
  if ((v233 & 0xC000000000000001) != 0)
  {
    v235 = sub_27463C51C();
    v236 = 0;
    v237 = 0;
    v238 = 0;
    v239 = v235 | 0x8000000000000000;
  }

  else
  {
    OUTLINED_FUNCTION_36_2();
    OUTLINED_FUNCTION_57_1();
    v238 = (v240 & v241);
  }

  v242 = v395;
  v243 = 0;
  v422 = (v394 + 32);
  v387 = v237;
  v244 = (v237 + 64) >> 6;
  v390 = (v394 + 16);
  v408 = (v394 + 8);
  v409 = (v363 + 32);
  v245 = v397 + 56;
  v417 = v397 + 56;
  v413 = v236;
  v414 = v239;
  if ((v239 & 0x8000000000000000) != 0)
  {
    goto LABEL_48;
  }

LABEL_46:
  if (v238)
  {
    v246 = v238;
    v247 = v243;
LABEL_54:
    v423 = ((v246 - 1) & v246);
    v255 = __clz(__rbit64(v246)) | (v247 << 6);
    v256 = v394;
    v257 = v400;
    v258 = v239;
    (*(v394 + 16))(v400, *(v239 + 48) + *(v394 + 72) * v255, v242);
    v259 = *(*(v258 + 56) + 8 * v255);
    v260 = *(v420 + 48);
    v261 = *(v256 + 32);
    v262 = v411;
    v261(v411, v257, v242);
    *(v262 + v260) = v259;
    v234 = v420;
    OUTLINED_FUNCTION_65_1();
    __swift_storeEnumTagSinglePayload(v263, v264, v265, v234);
    v266 = v259;
    v254 = v247;
    v245 = v417;
    goto LABEL_58;
  }

  v254 = v243;
  while (1)
  {
    v247 = v254 + 1;
    if (__OFADD__(v254, 1))
    {
      break;
    }

    if (v247 >= v244)
    {
      v267 = OUTLINED_FUNCTION_43_3();
      __swift_storeEnumTagSinglePayload(v267, v268, 1, v234);
      v423 = 0;
LABEL_58:
      while (1)
      {
        v269 = v410;
        (*v409)();
        v270 = OUTLINED_FUNCTION_43_3();
        if (__swift_getEnumTagSinglePayload(v270, v271, v234) == 1)
        {
          break;
        }

        v243 = *(v269 + *(v234 + 48));
        v272 = v418;
        (*v422)(v418, v269, v242);
        sub_27463B53C();
        v273 = *&v425[0];
        if (*&v425[0])
        {

          OUTLINED_FUNCTION_47_3();
          v274(v272, v242);
          v243 = v254;
          v238 = v423;
        }

        else
        {
          sub_27463C63C();
          v275 = v397;
          if (*(v397 + 16))
          {
            sub_27463C2EC();
            OUTLINED_FUNCTION_36_2();
            v278 = ~v277;
            while (1)
            {
              v234 = v276 & v278;
              if (((*(v245 + (((v276 & v278) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v276 & v278)) & 1) == 0)
              {
                break;
              }

              sub_27448E108(*(v275 + 48) + 40 * v234, &v426);
              v279 = MEMORY[0x277C58A40](&v426, v425);
              sub_274430664(&v426);
              v276 = v234 + 1;
              if (v279)
              {
                sub_274430664(v425);
                memset(v425, 0, 40);
                v238 = v243;
                sub_2744DAE68(v238, v425);

                type metadata accessor for ScrollableTableView.ReuseIdentifier(0, v396, v391, v280);
                OUTLINED_FUNCTION_7();
                (*(v281 + 8))(v425);
                OUTLINED_FUNCTION_47_3();
                v282(v418, v242);
                OUTLINED_FUNCTION_63_1();
                goto LABEL_67;
              }
            }
          }

          sub_274430664(v425);
          v238 = swift_allocObject();
          v283 = v398;
          *(v238 + 2) = v398;
          *(v238 + 3) = v243;
          v234 = (*MEMORY[0x277D85000] & *v243) + 344;
          v284 = *((*MEMORY[0x277D85000] & *v243) + 0x158);
          v285 = v243;
          v286 = v283;
          v284(sub_2744DE3A8, v238);

          OUTLINED_FUNCTION_47_3();
          v242 = v395;
          v287(v418, v395);
          OUTLINED_FUNCTION_63_1();
          v245 = v417;
        }

LABEL_67:
        v236 = v413;
        v239 = v414;
        if ((v414 & 0x8000000000000000) == 0)
        {
          goto LABEL_46;
        }

LABEL_48:
        if (sub_27463C55C())
        {
          v248 = v400;
          sub_27463C68C();
          swift_unknownObjectRelease();
          sub_27463C68C();
          swift_unknownObjectRelease();
          v249 = *(v234 + 48);
          v250 = v411;
          v251 = v248;
          v245 = v417;
          (*v422)(v411, v251, v242);
          *(v250 + v249) = *&v425[0];
          v252 = v250;
          v253 = 0;
        }

        else
        {
          v252 = OUTLINED_FUNCTION_43_3();
        }

        __swift_storeEnumTagSinglePayload(v252, v253, 1, v234);
        v254 = v243;
        v423 = v238;
      }

      sub_274406A24(v414);
      v289.n128_f64[0] = sub_2744D4CB8();
      v290 = 0;
      v291 = v288 + 64;
      v292 = 1 << *(v288 + 32);
      if (v292 < 64)
      {
        v293 = ~(-1 << v292);
      }

      else
      {
        v293 = -1;
      }

      v294 = v293 & *(v288 + 64);
      v295 = (v292 + 63) >> 6;
      v412 = v399 + 16;
      v413 = v288;
      v423 = (v399 + 32);
      v420 = v362 + 32;
      v414 = v399 + 8;
      v296 = v388;
      v297 = v406;
      v298 = v407;
      v299 = v421;
      v418 = v288 + 64;
LABEL_73:
      while (1)
      {
        v300 = v404;
        if (!v294)
        {
          break;
        }

        v301 = v290;
LABEL_79:
        v302 = __clz(__rbit64(v294));
        v294 &= v294 - 1;
        v303 = v302 | (v301 << 6);
        v304 = v413;
        v305 = v399;
        v306 = v401;
        (*(v399 + 16))(v401, *(v413 + 48) + *(v399 + 72) * v303, v296, v289);
        v307 = *(*(v304 + 56) + 8 * v303);
        v308 = *(v300 + 48);
        v309 = *(v305 + 32);
        v298 = v407;
        v309(v407, v306, v296);
        *(v298 + v308) = v307;
        OUTLINED_FUNCTION_65_1();
        __swift_storeEnumTagSinglePayload(v310, v311, v312, v300);
        v313 = v307;
        v299 = v421;
        v297 = v406;
LABEL_80:
        (*v420)(v299, v298, v403);
        if (__swift_getEnumTagSinglePayload(v299, 1, v300) == 1)
        {

          v331 = v398;
          v332 = sub_2744D4C90(v330);
          OUTLINED_FUNCTION_54_2(v332, v424);

          sub_2744D4CE0(v333);
          v334 = sub_2744D4AD4(v397);
          sub_2744D4A18(v334, v425);
          OUTLINED_FUNCTION_1_17();
          v335 = v389;
          v336 = swift_getWitnessTable();
          type metadata accessor for LazyStackLayoutEngine(0, v335, v336, v337);
          v338 = sub_2744D2024();
          v444 = *&v425[0];
          v393(&v444, v384);
          v443 = *(&v425[0] + 1);
          sub_2744DE314(&v443);
          v426 = v425[1];
          v427 = *&v425[2];
          sub_2744D2D90(&v426);
          v339 = *(v331 + *((*MEMORY[0x277D85000] & *v331) + 0x100));
          [v339 contentSize];
          if (v338 != v340)
          {
            v466.origin.x = OUTLINED_FUNCTION_0_0();
            [v339 setContentSize_];
          }

          v341 = v360;
          sub_2744D45E0(v360);
          v342 = v395;
          v343 = __swift_getEnumTagSinglePayload(v341, 1, v395);
          v344 = v361;
          if (v343 == 1)
          {
            v345 = (*(v368 + 8))(v341, v369);
            goto LABEL_100;
          }

          (*v422)(v361, v341, v342);
          if ((v357 & 1) != 0 || (sub_2744D4C68(), OUTLINED_FUNCTION_45_3(), sub_27463B53C(), , (v346 = v428[0]) == 0))
          {
            OUTLINED_FUNCTION_47_3();
            v345 = v353(v344, v342);
LABEL_100:
            v351 = v358;
            v352 = v359;
          }

          else
          {
            [v428[0] frame];
            v348 = v347;

            OUTLINED_FUNCTION_47_3();
            v349(v344, v342);
            v350 = v348 - v356;
            v351 = v358;
            v345 = swift_beginAccess();
            *v351 = v350 + *v351;
            v352 = v359;
          }

          v354 = OUTLINED_FUNCTION_54_2(v345, v428);
          if (*v351 != 0.0)
          {
            [v339 contentOffset];
            [v339 setContentOffset_];
          }

          *(*(v331 + *((*MEMORY[0x277D85000] & *v331) + 0xA0)) + qword_2809508F0 + 48) = v429;

          sub_27454179C();

          return;
        }

        v314 = *(v299 + *(v300 + 48));
        (*v423)(v297, v299, v296);
        swift_beginAccess();
        sub_27463B53C();
        v315 = v297;
        v316 = v426;
        swift_endAccess();
        if (v316)
        {

          (*v414)(v315, v296);
          v297 = v315;
          v299 = v421;
          v291 = v418;
        }

        else
        {
          sub_27463C63C();
          v317 = v397;
          if (*(v397 + 16))
          {
            sub_27463C2EC();
            OUTLINED_FUNCTION_36_2();
            v320 = ~v319;
            v321 = v317;
            v322 = v417;
            while (1)
            {
              v323 = v318 & v320;
              if (((*(v322 + (((v318 & v320) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v318 & v320)) & 1) == 0)
              {
                break;
              }

              sub_27448E108(*(v321 + 48) + 40 * v323, &v426);
              v324 = MEMORY[0x277C58A40](&v426, v425);
              sub_274430664(&v426);
              v318 = v323 + 1;
              if (v324)
              {
                sub_274430664(v425);
                v296 = v388;
                v325 = v406;
                sub_27448E108(v406 + *(v388 + 36), v425);
                sub_2744DAE68(v314, v425);
                v297 = v325;

                type metadata accessor for ScrollableTableView.ReuseIdentifier(0, v396, v391, v326);
                OUTLINED_FUNCTION_7();
                (*(v327 + 8))(v425);
                (*v414)(v325, v296);
                v298 = v407;
                v299 = v421;
                v291 = v418;
                goto LABEL_73;
              }
            }

            v296 = v388;
            v297 = v406;
            v298 = v407;
          }

          else
          {
            v297 = v315;
          }

          v299 = v421;
          sub_274430664(v425);
          sub_2744DAD80(v398, v314, v297, v329, v328);

          (*v414)(v297, v296);
          v291 = v418;
        }
      }

      while (1)
      {
        v301 = v290 + 1;
        if (__OFADD__(v290, 1))
        {
          break;
        }

        if (v301 >= v295)
        {
          __swift_storeEnumTagSinglePayload(v298, 1, 1, v404);
          v294 = 0;
          goto LABEL_80;
        }

        v294 = *(v291 + 8 * v301);
        ++v290;
        if (v294)
        {
          v290 = v301;
          goto LABEL_79;
        }
      }

      __break(1u);
      break;
    }

    v246 = *(v236 + 8 * v247);
    v254 = (v254 + 1);
    if (v246)
    {
      goto LABEL_54;
    }
  }

  __break(1u);
}

uint64_t sub_2744D9F04@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v34 = a2;
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v32 = *(v3 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = sub_27463C0AC();
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v28 - v6;
  v31 = type metadata accessor for ScrollableTableView.AccessoryID(0, v2, v3, v8);
  v30 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v10 = &v28 - v9;
  v29 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v28 - v12;
  v14 = *(v2 - 8);
  MEMORY[0x28223BE20](v15);
  v17 = &v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for ScrollableTableView.LayoutAtom(0, v2, v3, v18);
  v20 = MEMORY[0x28223BE20](v19);
  v22 = &v28 - v21;
  (*(v23 + 16))(&v28 - v21, v33, v19, v20);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    (*(v14 + 32))(v17, v22, v2);
    sub_27463C39C();
    swift_getAssociatedConformanceWitness();
    sub_27463C63C();
    (*(v29 + 8))(v13, AssociatedTypeWitness);
    return (*(v14 + 8))(v17, v2);
  }

  if (EnumCaseMultiPayload == 1)
  {
    v25 = *(swift_getTupleTypeMetadata2() + 48);
    (*(v14 + 32))(v17, v22, v2);
    memcpy(__dst, &v22[v25], 0x78uLL);
    sub_27463C39C();
    __swift_storeEnumTagSinglePayload(v7, 0, 1, AssociatedTypeWitness);
    sub_27448E108(__dst, v35);
    sub_2744D6108(v7, v35, v2, v3, v10);
    v26 = v31;
    swift_getWitnessTable();
    sub_27463C63C();
    (*(v30 + 8))(v10, v26);
    sub_2744DE060(__dst);
    return (*(v14 + 8))(v17, v2);
  }

  memcpy(__dst, v22, 0x78uLL);
  sub_27448E108(__dst, v34);
  return sub_2744DE060(__dst);
}

id sub_2744DA3E0(void *a1, uint64_t a2, uint64_t *a3, uint64_t a4, double a5, CGFloat a6, CGFloat a7, CGFloat a8, CGFloat a9, CGFloat a10)
{
  v19 = *a3;
  v20 = MEMORY[0x277D85000];
  v21 = *MEMORY[0x277D85000];
  sub_2744D4A18(a1, v49);
  v23 = type metadata accessor for ScrollableTableView.LayoutItem(255, *((v21 & v19) + 0x50), *((v21 & v19) + 0x58), v22);
  WitnessTable = swift_getWitnessTable();
  v26 = type metadata accessor for LazyStackLayoutEngine(0, v23, WitnessTable, v25);
  *&v27 = COERCE_DOUBLE(sub_2744D202C(a2, v26));
  v29 = v28;
  v31 = v30;
  v32 = *&v27;
  v34 = v33;
  v55 = v49[0];
  v35 = sub_27463B92C();
  (*(*(v35 - 8) + 8))(&v55, v35);
  v54 = v49[1];
  sub_2744DE314(&v54);
  v52 = v50;
  v53 = v51;
  v36 = sub_2744D2D90(&v52);
  if ((v34 & 1) != 0 || (v37 = v31, v32 != a5))
  {
    v37 = (*((*v20 & *a1) + 0xE0))(v36, a5);
    swift_beginAccess();
    sub_2744D1B00(a2, v26, v37, a5);
    swift_endAccess();
    v56.origin.x = a7;
    v56.origin.y = a8;
    v56.size.width = a9;
    v56.size.height = a10;
    if (v29 < CGRectGetMinY(v56))
    {
      swift_beginAccess();
      *(a4 + 16) = v37 - v31 + *(a4 + 16);
    }
  }

  v38 = a3 + *((*v20 & *a3) + 0x128);
  *v38 = a2;
  v38[8] = 0;
  *(a1 + OBJC_IVAR____TtC14WorkflowEditor9TableCell_host + 8) = &off_288369598;
  swift_unknownObjectWeakAssign();
  v39 = a1 + OBJC_IVAR____TtC14WorkflowEditor9TableCell_currentLayoutAtomIndex;
  *v39 = a2;
  v39[8] = 0;
  v40 = [a1 superview];
  if (v40)
  {

    [a1 frame];
    v58.origin.x = v41;
    v58.origin.y = v42;
    v58.size.width = v43;
    v58.size.height = v44;
    v57.origin.x = a6;
    v57.origin.y = v29;
    v57.size.width = a5;
    v57.size.height = v37;
    if (!CGRectEqualToRect(v57, v58))
    {
      [a1 frame];
      if (v45 == a6 && ([a1 frame], v46 == a5))
      {
        [a1 setFrame_];
        [a1 layoutIfNeeded];
      }

      else
      {
        [a1 setFrame_];
      }
    }
  }

  else
  {
    [a1 setFrame_];
    [*(a3 + *((*v20 & *a3) + 0x108)) addSubview_];
  }

  return [a1 layoutIfNeeded];
}

void *sub_2744DA7E8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, double a7, CGFloat a8, CGFloat a9, CGFloat a10, CGFloat a11, CGFloat a12)
{
  v55 = a6;
  v54 = a5;
  v56 = a4;
  v21 = *((*MEMORY[0x277D85000] & *a3) + 0x50);
  v22 = *((*MEMORY[0x277D85000] & *a3) + 0x58);
  v23 = type metadata accessor for ScrollableTableView.AccessoryID(0, v21, v22, a4);
  v24 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v50 = &v47 - v25;
  sub_2744D4CB8();
  v26 = type metadata accessor for TableCell();
  WitnessTable = swift_getWitnessTable();
  v53 = a1;
  v52 = v26;
  v51 = WitnessTable;
  sub_27463B53C();

  v28 = v59[0];
  if (!v59[0])
  {
    sub_27448E108(a2, v59);
    v49 = sub_2744D501C();
    v48 = v21;
    v31 = type metadata accessor for ScrollableTableView.ReuseIdentifier(255, v21, v22, v30);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094EF10, &qword_274653E18);
    swift_getWitnessTable();
    sub_27463B51C();
    v32 = sub_27463B52C();
    if (*v33)
    {
      v34 = sub_2744D61CC();
      v32(v57, 0);
      (*(*(v31 - 8) + 8))(v59, v31);
      v35 = v49(v58, 0);
      if (v34)
      {
        v36 = v34;
LABEL_9:
        v29 = v36;
        goto LABEL_10;
      }
    }

    else
    {
      v32(v57, 0);
      (*(*(v31 - 8) + 8))(v59, v31);
      v35 = v49(v58, 0);
    }

    v37 = (*(a2 + 88))(v35);
    if (!v37)
    {
      v41 = *(a2 + 40);
      swift_beginAccess();
      v43 = type metadata accessor for ScrollableTableView.LayoutItem(255, v48, v22, v42);
      v44 = swift_getWitnessTable();
      v46 = type metadata accessor for LazyStackLayoutEngine(0, v43, v44, v45);
      sub_2744D1B00(v56, v46, v41, a7);
      swift_endAccess();
      return 0;
    }

    v36 = v37;
    goto LABEL_9;
  }

  v29 = v59[0];
LABEL_10:
  v38 = *(a2 + 104);
  v39 = v28;
  v38(v29);
  sub_2744DA3E0(v29, v56, a3, v54, a7, a8, a9, a10, a11, a12);
  (*(v24 + 16))(v50, v53, v23);
  v58[0] = v29;
  swift_beginAccess();
  sub_27463B51C();
  sub_27463B54C();
  swift_endAccess();
  return v29;
}

uint64_t sub_2744DACC4(uint64_t *a1, char *a2)
{
  v2 = *a1;
  v3 = *MEMORY[0x277D85000];
  v8 = 0;
  memset(v7, 0, sizeof(v7));
  sub_2744DAE68(a2, v7);
  v5 = type metadata accessor for ScrollableTableView.ReuseIdentifier(0, *((v3 & v2) + 0x50), *((v3 & v2) + 0x58), v4);
  return (*(*(v5 - 8) + 8))(v7, v5);
}

uint64_t sub_2744DAD80(void *a1, char *a2, uint64_t a3, double a4, uint64_t a5)
{
  v7 = *((*MEMORY[0x277D85000] & *a1) + 0x50);
  v8 = *((*MEMORY[0x277D85000] & *a1) + 0x58);
  v9 = type metadata accessor for ScrollableTableView.AccessoryID(0, v7, v8, a5);
  sub_27448E108(a3 + *(v9 + 36), v13);
  sub_2744DAE68(a2, v13);
  v11 = type metadata accessor for ScrollableTableView.ReuseIdentifier(0, v7, v8, v10);
  return (*(*(v11 - 8) + 8))(v13, v11);
}

void sub_2744DAE68(char *a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = MEMORY[0x277D85000];
  v8 = *MEMORY[0x277D85000];
  [a1 removeFromSuperview];
  *&a1[OBJC_IVAR____TtC14WorkflowEditor9TableCell_host + 8] = 0;
  swift_unknownObjectWeakAssign();
  OUTLINED_FUNCTION_56(&a1[OBJC_IVAR____TtC14WorkflowEditor9TableCell_currentLayoutAtomIndex]);
  v9 = *((*v7 & *v3) + 0xF8);
  swift_beginAccess();
  swift_isUniquelyReferenced_nonNull_native();
  v24[0] = *(v3 + v9);
  v10 = v24[0];
  *(v3 + v9) = 0x8000000000000000;
  v12 = type metadata accessor for ScrollableTableView.ReuseIdentifier(0, *((v8 & v6) + 0x50), *((v8 & v6) + 0x58), v11);
  OUTLINED_FUNCTION_9_9();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_29_5();
  sub_2744DDADC(v13, v14, v15);
  if (__OFADD__(*(v10 + 16), (v16 & 1) == 0))
  {
    __break(1u);
LABEL_8:
    sub_27463C71C();
    __break(1u);
    return;
  }

  v17 = v16;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094EF10, &qword_274653E18);
  OUTLINED_FUNCTION_28_7();
  sub_27463C50C();
  if (sub_27463C4CC())
  {
    OUTLINED_FUNCTION_29_5();
    sub_2744DDADC(v18, v19, v20);
    if ((v17 & 1) != (v21 & 1))
    {
      goto LABEL_8;
    }
  }

  *(v3 + v9) = v24[0];
  if ((v17 & 1) == 0)
  {
    v24[5] = MEMORY[0x277D84F90];
    OUTLINED_FUNCTION_25_0();
    (*(v22 + 16))(v24, a2, v12);
    sub_27463C4FC();
  }

  v23 = a1;
  MEMORY[0x277C57F30]();
  sub_2745C4440();
  sub_27463B8AC();
  swift_endAccess();
}

_BYTE *sub_2744DB0D4(_BYTE *result, char a2)
{
  if ((result[OBJC_IVAR____TtC14WorkflowEditor9TableCell_currentLayoutAtomIndex + 8] & 1) == 0)
  {
    v4 = *MEMORY[0x277D85000] & *v2;
    v5 = *&result[OBJC_IVAR____TtC14WorkflowEditor9TableCell_currentLayoutAtomIndex];
    result = sub_2744D7EB8();
    if ((v6 & 1) != 0 || v5 != result)
    {
      swift_beginAccess();
      v8 = type metadata accessor for ScrollableTableView.LayoutItem(255, *(v4 + 80), *(v4 + 88), v7);
      OUTLINED_FUNCTION_1_17();
      WitnessTable = swift_getWitnessTable();
      v11 = type metadata accessor for LazyStackLayoutEngine(0, v8, WitnessTable, v10);
      sub_2744D1D30(v5, v11);
      swift_endAccess();
      return sub_2744D6004(a2 & 1);
    }
  }

  return result;
}

double sub_2744DB1D8(uint64_t a1)
{
  v2 = v1;
  v3 = *(a1 + 16);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](a1);
  v6 = &__dst[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v7 + 24);
  v10 = type metadata accessor for ScrollableTableView.LayoutAtom(0, v3, v8, v9);
  v11 = MEMORY[0x28223BE20](v10);
  v13 = &__dst[-1] - v12;
  (*(v14 + 16))(&__dst[-1] - v12, v2, v10, v11);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
      memcpy(__dst, &v13[*(TupleTypeMetadata2 + 48)], sizeof(__dst));
      v17 = *&__dst[5];
      sub_2744DE060(__dst);
      (*(v4 + 8))(v13, v3);
    }

    else
    {
      memcpy(__dst, v13, sizeof(__dst));
      v17 = *&__dst[5];
      sub_2744DE060(__dst);
    }
  }

  else
  {
    (*(v4 + 32))(v6, v13, v3);
    v17 = (*(v8 + 24))(v3, v8);
    (*(v4 + 8))(v6, v3);
  }

  return v17;
}

uint64_t sub_2744DB408@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v10 = a4;
  v15 = type metadata accessor for ScrollableTableView.LayoutAtom(0, a5, a6, a4);
  (*(*(v15 - 8) + 32))(a7, a1, v15);
  result = type metadata accessor for ScrollableTableView.LayoutItem(0, a5, a6, v16);
  v18 = a7 + *(result + 36);
  *v18 = a2;
  *(v18 + 8) = a3 & 1;
  *(a7 + *(result + 40)) = v10;
  return result;
}

uint64_t sub_2744DB4C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v33 = a4;
  v32 = *(a4 + 8);
  v39 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v38 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v31 = &v30 - v7;
  v8 = sub_27463C0AC();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v36 = &v30 - v10;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v12 = *(TupleTypeMetadata2 - 8);
  v13 = MEMORY[0x28223BE20](TupleTypeMetadata2);
  v15 = &v30 - v14;
  v17 = *(v16 + 48);
  v37 = v9;
  v18 = *(v9 + 16);
  v34 = a1;
  v18(&v30 - v14, a1, v8, v13);
  v35 = a2;
  (v18)(&v15[v17], a2, v8);
  if (__swift_getEnumTagSinglePayload(v15, 1, AssociatedTypeWitness) == 1)
  {
    if (__swift_getEnumTagSinglePayload(&v15[v17], 1, AssociatedTypeWitness) == 1)
    {
      (*(v37 + 8))(v15, v8);
      v20 = v39;
LABEL_9:
      v28 = type metadata accessor for ScrollableTableView.AccessoryID(0, v20, v33, v19);
      v22 = MEMORY[0x277C58A40](v34 + *(v28 + 36), v35 + *(v28 + 36));
      return v22 & 1;
    }

    goto LABEL_6;
  }

  v21 = v36;
  (v18)(v36, v15, v8);
  if (__swift_getEnumTagSinglePayload(&v15[v17], 1, AssociatedTypeWitness) == 1)
  {
    (*(v38 + 8))(v21, AssociatedTypeWitness);
LABEL_6:
    (*(v12 + 8))(v15, TupleTypeMetadata2);
    goto LABEL_7;
  }

  v23 = v38;
  v24 = &v15[v17];
  v25 = v31;
  (*(v38 + 32))(v31, v24, AssociatedTypeWitness);
  v20 = v39;
  swift_getAssociatedConformanceWitness();
  v26 = sub_27463B5BC();
  v27 = *(v23 + 8);
  v27(v25, AssociatedTypeWitness);
  v27(v21, AssociatedTypeWitness);
  (*(v37 + 8))(v15, v8);
  if (v26)
  {
    goto LABEL_9;
  }

LABEL_7:
  v22 = 0;
  return v22 & 1;
}

uint64_t sub_2744DB88C(uint64_t a1, uint64_t a2)
{
  swift_getAssociatedTypeWitness();
  sub_27463C0AC();
  swift_getAssociatedConformanceWitness();
  sub_27463C0BC();
  return sub_27463C30C();
}

uint64_t sub_2744DB944(uint64_t a1)
{
  sub_27463C74C();
  sub_2744DB88C(v3, a1);
  return sub_27463C7AC();
}

uint64_t sub_2744DB99C(uint64_t a1, uint64_t a2)
{
  sub_27463C74C();
  sub_2744DB88C(v4, a2);
  return sub_27463C7AC();
}

id sub_2744DBA2C(uint64_t (*a1)(void, void, void))
{
  v2 = a1(0, *((*MEMORY[0x277D85000] & *v1) + 0x50), *((*MEMORY[0x277D85000] & *v1) + 0x58));
  v4.receiver = v1;
  v4.super_class = v2;
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_2744DBAA4(char *a1)
{
  sub_2743F6ED0(&a1[*((*MEMORY[0x277D85000] & *a1) + 0x60)]);
  OUTLINED_FUNCTION_2_17();

  OUTLINED_FUNCTION_2_17();

  OUTLINED_FUNCTION_2_17();

  OUTLINED_FUNCTION_2_17();

  OUTLINED_FUNCTION_2_17();
  v3 = *(v2 + 136);
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_35_0();
  v4 = sub_27463C0AC();
  OUTLINED_FUNCTION_7();
  v14 = *(v5 + 8);
  v14(&a1[v3], v4);
  OUTLINED_FUNCTION_2_17();

  OUTLINED_FUNCTION_2_17();

  OUTLINED_FUNCTION_2_17();

  OUTLINED_FUNCTION_2_17();
  sub_2744DE3D0(*&a1[*(v7 + 168)], *&a1[*(v7 + 168) + 8], a1[*(v7 + 168) + 16]);
  OUTLINED_FUNCTION_2_17();

  OUTLINED_FUNCTION_2_17();

  OUTLINED_FUNCTION_2_17();

  OUTLINED_FUNCTION_2_17();

  OUTLINED_FUNCTION_2_17();

  OUTLINED_FUNCTION_2_17();

  OUTLINED_FUNCTION_2_17();

  OUTLINED_FUNCTION_2_17();

  OUTLINED_FUNCTION_2_17();
  OUTLINED_FUNCTION_2_17();

  OUTLINED_FUNCTION_2_17();

  OUTLINED_FUNCTION_2_17();
  v12 = &a1[*(v11 + 312)];

  return (v14)(v12, v4);
}

uint64_t sub_2744DBDD0(uint64_t a1)
{
  result = sub_2744DE2CC(&unk_28094EAA0, type metadata accessor for EditorDragItem, &protocol conformance descriptor for EditorDragItem);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2744DC348(uint64_t a1)
{
  swift_getAssociatedTypeWitness();
  result = sub_27463C0AC();
  if (v2 <= 0x3F)
  {
    return swift_initClassMetadata2();
  }

  return result;
}

uint64_t sub_2744DC504(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_2744DC540(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 40))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 24);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2744DC590(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

double sub_2744DC5EC(uint64_t a1, int a2)
{
  if (a2 < 0)
  {
    result = 0.0;
    *(a1 + 8) = 0u;
    *(a1 + 24) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
  }

  else if (a2)
  {
    *(a1 + 24) = (a2 - 1);
  }

  return result;
}

uint64_t sub_2744DC630(uint64_t a1)
{
  swift_getAssociatedTypeWitness();
  result = sub_27463C0AC();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_2744DC6C8(int *a1, unsigned int a2)
{
  result = swift_getAssociatedTypeWitness();
  v5 = *(*(result - 8) + 84);
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

  v8 = *(*(result - 8) + 64);
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
LABEL_30:
    if (v6 < 0x7FFFFFFF)
    {
      v18 = *(((a1 + v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 24);
      if (v18 >= 0xFFFFFFFF)
      {
        LODWORD(v18) = -1;
      }

      return (v18 + 1);
    }

    else
    {
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(a1, v5, result);
      if (EnumTagSinglePayload >= 2)
      {
        return EnumTagSinglePayload - 1;
      }

      else
      {
        return 0;
      }
    }
  }

  else
  {
    v9 = ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 40;
    v10 = v9 & 0xFFFFFFF8;
    if ((v9 & 0xFFFFFFF8) != 0)
    {
      v11 = 2;
    }

    else
    {
      v11 = a2 - v7 + 1;
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

    switch(v13)
    {
      case 1:
        v14 = *(a1 + v9);
        if (!v14)
        {
          goto LABEL_30;
        }

        goto LABEL_27;
      case 2:
        v14 = *(a1 + v9);
        if (!v14)
        {
          goto LABEL_30;
        }

        goto LABEL_27;
      case 3:
        __break(1u);
        return result;
      case 4:
        v14 = *(a1 + v9);
        if (!v14)
        {
          goto LABEL_30;
        }

LABEL_27:
        v15 = v14 - 1;
        if (v10)
        {
          v15 = 0;
          v16 = *a1;
        }

        else
        {
          v16 = 0;
        }

        result = v7 + (v16 | v15) + 1;
        break;
      default:
        goto LABEL_30;
    }
  }

  return result;
}

void sub_2744DC86C(_BYTE *a1, unsigned int a2, unsigned int a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = 0;
  v8 = *(*(AssociatedTypeWitness - 8) + 84);
  v9 = v8 - 1;
  if (!v8)
  {
    v9 = 0;
  }

  if (v9 <= 0x7FFFFFFF)
  {
    v10 = 0x7FFFFFFF;
  }

  else
  {
    v10 = v9;
  }

  if (v8)
  {
    v11 = *(*(AssociatedTypeWitness - 8) + 64);
  }

  else
  {
    v11 = *(*(AssociatedTypeWitness - 8) + 64) + 1;
  }

  v12 = ((v11 + 7) & 0xFFFFFFFFFFFFFFF8) + 40;
  if (v10 < a3)
  {
    if (((v11 + 7) & 0xFFFFFFF8) == 0xFFFFFFD8)
    {
      v13 = a3 - v10 + 1;
    }

    else
    {
      v13 = 2;
    }

    if (v13 >= 0x10000)
    {
      v14 = 4;
    }

    else
    {
      v14 = 2;
    }

    if (v13 < 0x100)
    {
      v14 = 1;
    }

    if (v13 >= 2)
    {
      v7 = v14;
    }

    else
    {
      v7 = 0;
    }
  }

  if (a2 <= v10)
  {
    switch(v7)
    {
      case 1:
        a1[v12] = 0;
        if (a2)
        {
          goto LABEL_36;
        }

        break;
      case 2:
        *&a1[v12] = 0;
        if (a2)
        {
          goto LABEL_36;
        }

        break;
      case 3:
LABEL_59:
        __break(1u);
        break;
      case 4:
        *&a1[v12] = 0;
        goto LABEL_35;
      default:
LABEL_35:
        if (a2)
        {
LABEL_36:
          if (v9 < 0x7FFFFFFF)
          {
            v20 = &a1[v11 + 7] & 0xFFFFFFFFFFFFFFF8;
            if ((a2 & 0x80000000) != 0)
            {
              *(v20 + 8) = 0u;
              *(v20 + 24) = 0u;
              *v20 = a2 & 0x7FFFFFFF;
            }

            else
            {
              *(v20 + 24) = a2 - 1;
            }
          }

          else if (v9 >= a2)
          {

            __swift_storeEnumTagSinglePayload(a1, a2 + 1, v8, AssociatedTypeWitness);
          }

          else
          {
            if (v11 <= 3)
            {
              v17 = ~(-1 << (8 * v11));
            }

            else
            {
              v17 = -1;
            }

            if (v11)
            {
              v18 = v17 & (~v9 + a2);
              if (v11 <= 3)
              {
                v19 = v11;
              }

              else
              {
                v19 = 4;
              }

              bzero(a1, v11);
              switch(v19)
              {
                case 2:
                  *a1 = v18;
                  break;
                case 3:
                  *a1 = v18;
                  a1[2] = BYTE2(v18);
                  break;
                case 4:
                  *a1 = v18;
                  break;
                default:
                  *a1 = v18;
                  break;
              }
            }
          }
        }

        break;
    }
  }

  else
  {
    if (((v11 + 7) & 0xFFFFFFF8) == 0xFFFFFFD8)
    {
      v15 = a2 - v10;
    }

    else
    {
      v15 = 1;
    }

    if (((v11 + 7) & 0xFFFFFFF8) != 0xFFFFFFD8)
    {
      v16 = ~v10 + a2;
      bzero(a1, ((v11 + 7) & 0xFFFFFFFFFFFFFFF8) + 40);
      *a1 = v16;
    }

    switch(v7)
    {
      case 1:
        a1[v12] = v15;
        break;
      case 2:
        *&a1[v12] = v15;
        break;
      case 3:
        goto LABEL_59;
      case 4:
        *&a1[v12] = v15;
        break;
      default:
        return;
    }
  }
}

void sub_2744DCB28(uint64_t a1)
{
  swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    sub_2744DCF88(319, &qword_28094ED68, &type metadata for TableItemAccessory, MEMORY[0x277D83940]);
    if (v2 <= 0x3F)
    {
      sub_2744DCF88(319, qword_28094ED70, MEMORY[0x277D83B88], MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_2744DCC20(uint64_t result, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = *(*(v4 - 8) + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(*(v4 - 8) + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
LABEL_26:
    if (v5 < 0x7FFFFFFF)
    {
      v16 = *((result + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
      if (v16 >= 0xFFFFFFFF)
      {
        LODWORD(v16) = -1;
      }

      return (v16 + 1);
    }

    else
    {
      return __swift_getEnumTagSinglePayload(result, v5, v4);
    }
  }

  else
  {
    v8 = ((((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 9;
    v9 = (a2 - v7 + 255) >> 8;
    if (v8 <= 3)
    {
      v10 = v9 + 1;
    }

    else
    {
      v10 = 2;
    }

    if (v10 >= 0x10000)
    {
      v11 = 4;
    }

    else
    {
      v11 = 2;
    }

    if (v10 < 0x100)
    {
      v11 = 1;
    }

    if (v10 >= 2)
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }

    switch(v12)
    {
      case 1:
        v13 = *(result + v8);
        if (!*(result + v8))
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 2:
        v13 = *(result + v8);
        if (!*(result + v8))
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 3:
        __break(1u);
        return result;
      case 4:
        v13 = *(result + v8);
        if (!v13)
        {
          goto LABEL_26;
        }

LABEL_22:
        v14 = (v13 - 1) << (8 * v8);
        if (v8 <= 3)
        {
          v15 = *result;
        }

        else
        {
          v14 = 0;
          v15 = *result;
        }

        result = v7 + (v15 | v14) + 1;
        break;
      default:
        goto LABEL_26;
    }
  }

  return result;
}

void sub_2744DCD7C(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(*(v6 - 8) + 84);
  }

  v9 = *(*(v6 - 8) + 64);
  v10 = ((((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 9;
  if (v8 >= a3)
  {
    v14 = 0;
  }

  else
  {
    v11 = (a3 - v8 + 255) >> 8;
    if (v10 <= 3)
    {
      v12 = v11 + 1;
    }

    else
    {
      v12 = 2;
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
  }

  if (v8 >= a2)
  {
    switch(v14)
    {
      case 1:
        a1[v10] = 0;
        if (a2)
        {
          goto LABEL_31;
        }

        break;
      case 2:
        *&a1[v10] = 0;
        if (a2)
        {
          goto LABEL_31;
        }

        break;
      case 3:
LABEL_44:
        __break(1u);
        break;
      case 4:
        *&a1[v10] = 0;
        goto LABEL_30;
      default:
LABEL_30:
        if (a2)
        {
LABEL_31:
          if (v7 < 0x7FFFFFFF)
          {
            v17 = (&a1[v9 + 7] & 0xFFFFFFFFFFFFFFF8);
            if ((a2 & 0x80000000) != 0)
            {
              v18 = a2 & 0x7FFFFFFF;
            }

            else
            {
              v18 = (a2 - 1);
            }

            *v17 = v18;
          }

          else
          {

            __swift_storeEnumTagSinglePayload(a1, a2, v7, v6);
          }
        }

        break;
    }
  }

  else
  {
    v15 = ~v8 + a2;
    bzero(a1, ((((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 9);
    if (v10 <= 3)
    {
      v16 = (v15 >> 8) + 1;
    }

    else
    {
      v16 = 1;
    }

    if (v10 > 3)
    {
      *a1 = v15;
    }

    else
    {
      *a1 = v15;
    }

    switch(v14)
    {
      case 1:
        a1[v10] = v16;
        break;
      case 2:
        *&a1[v10] = v16;
        break;
      case 3:
        goto LABEL_44;
      case 4:
        *&a1[v10] = v16;
        break;
      default:
        return;
    }
  }
}

void sub_2744DCF88(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_2744DCFD8(uint64_t a1, __n128 a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for ScrollableTableView.LayoutAtom(319, *(a1 + 16), *(a1 + 24), a5);
  if (v5 <= 0x3F)
  {
    sub_2744DCF88(319, qword_28094ED70, MEMORY[0x277D83B88], MEMORY[0x277D83D88]);
    if (v6 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_2744DD08C(unint64_t result, unsigned int a2, uint64_t a3)
{
  v3 = (*(*(*(a3 + 16) - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = v3 + 9;
  v5 = v3 + 120;
  if (v5 <= v4)
  {
    v5 = v4;
  }

  if (v5 <= 0x78)
  {
    v5 = 120;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
LABEL_26:
    v13 = *(((result + v5 + 8) & 0xFFFFFFFFFFFFFFF8) + 9);
    if (v13 >= 2)
    {
      return ((v13 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    return 0;
  }

  v6 = (v5 & 0xFFFFFFFFFFFFFFF8) + 18;
  if (v6 <= 3)
  {
    v7 = ((a2 + 65281) >> 16) + 1;
  }

  else
  {
    v7 = 2;
  }

  if (v7 >= 0x10000)
  {
    v8 = 4;
  }

  else
  {
    v8 = 2;
  }

  if (v7 < 0x100)
  {
    v8 = 1;
  }

  if (v7 >= 2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  switch(v9)
  {
    case 1:
      v10 = *(result + v6);
      if (!*(result + v6))
      {
        goto LABEL_26;
      }

      goto LABEL_22;
    case 2:
      v10 = *(result + v6);
      if (!*(result + v6))
      {
        goto LABEL_26;
      }

      goto LABEL_22;
    case 3:
      __break(1u);
      return result;
    case 4:
      v10 = *(result + v6);
      if (!v10)
      {
        goto LABEL_26;
      }

LABEL_22:
      v11 = (v10 - 1) << (8 * v6);
      if (v6 <= 3)
      {
        v12 = *result;
      }

      else
      {
        v11 = 0;
        v12 = *result;
      }

      result = (v12 | v11) + 255;
      break;
    default:
      goto LABEL_26;
  }

  return result;
}

void sub_2744DD1B4(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = (*(*(*(a4 + 16) - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = v5 + 9;
  v7 = v5 + 120;
  if (v7 <= v6)
  {
    v7 = v6;
  }

  if (v7 <= 0x78)
  {
    v7 = 120;
  }

  v8 = (v7 & 0xFFFFFFFFFFFFFFF8) + 18;
  if (a3 < 0xFF)
  {
    v11 = 0;
  }

  else
  {
    if (v8 <= 3)
    {
      v9 = ((a3 + 65281) >> 16) + 1;
    }

    else
    {
      v9 = 2;
    }

    if (v9 >= 0x10000)
    {
      v10 = 4;
    }

    else
    {
      v10 = 2;
    }

    if (v9 < 0x100)
    {
      v10 = 1;
    }

    if (v9 >= 2)
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }
  }

  if (a2 > 0xFE)
  {
    v12 = a2 - 255;
    v13 = (a2 - 255) >> 16;
    bzero(a1, (v7 & 0xFFFFFFFFFFFFFFF8) + 18);
    if (v8 <= 3)
    {
      v14 = v13 + 1;
    }

    else
    {
      v14 = 1;
    }

    if (v8 > 3)
    {
      *a1 = v12;
    }

    else
    {
      *a1 = v12;
    }

    switch(v11)
    {
      case 1:
        a1[v8] = v14;
        break;
      case 2:
        *&a1[v8] = v14;
        break;
      case 3:
LABEL_38:
        __break(1u);
        break;
      case 4:
        *&a1[v8] = v14;
        break;
      default:
        return;
    }
  }

  else
  {
    switch(v11)
    {
      case 1:
        a1[v8] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_32;
      case 2:
        *&a1[v8] = 0;
        goto LABEL_31;
      case 3:
        goto LABEL_38;
      case 4:
        *&a1[v8] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_32;
      default:
LABEL_31:
        if (a2)
        {
LABEL_32:
          *((&a1[v7 + 8] & 0xFFFFFFFFFFFFFFF8) + 9) = a2 + 1;
        }

        break;
    }
  }
}

uint64_t sub_2744DD36C(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280950C40, qword_274653AB0);
  result = swift_getTupleTypeMetadata2();
  if (v2 <= 0x3F)
  {
    result = swift_getTupleTypeMetadata2();
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_2744DD42C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = (*(*(*(a3 + 16) - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = v3 + 9;
  v5 = v3 + 120;
  if (v5 <= v4)
  {
    v5 = v4;
  }

  v6 = 120;
  if (v5 > 0x78)
  {
    v6 = v5;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_24;
  }

  v7 = v6 + 1;
  v8 = 8 * (v6 + 1);
  if ((v6 + 1) <= 3)
  {
    v11 = ((a2 + ~(-1 << v8) - 253) >> v8) + 1;
    if (HIWORD(v11))
    {
      v9 = *(a1 + v7);
      if (!v9)
      {
        goto LABEL_24;
      }

      goto LABEL_16;
    }

    if (v11 > 0xFF)
    {
      v9 = *(a1 + v7);
      if (!*(a1 + v7))
      {
        goto LABEL_24;
      }

      goto LABEL_16;
    }

    if (v11 < 2)
    {
LABEL_24:
      v13 = *(a1 + v6);
      if (v13 >= 3)
      {
        return (v13 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v9 = *(a1 + v7);
  if (!*(a1 + v7))
  {
    goto LABEL_24;
  }

LABEL_16:
  v12 = (v9 - 1) << v8;
  if (v7 > 3)
  {
    v12 = 0;
  }

  if (v7)
  {
    if (v7 > 3)
    {
      LODWORD(v7) = 4;
    }

    switch(v7)
    {
      case 2:
        LODWORD(v7) = *a1;
        break;
      case 3:
        LODWORD(v7) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v7) = *a1;
        break;
      default:
        LODWORD(v7) = *a1;
        break;
    }
  }

  return (v7 | v12) + 254;
}

void sub_2744DD568(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = (*(*(*(a4 + 16) - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = v5 + 9;
  v7 = v5 + 120;
  if (v7 <= v6)
  {
    v7 = v6;
  }

  if (v7 <= 0x78)
  {
    v7 = 120;
  }

  v8 = v7 + 1;
  v9 = 8 * (v7 + 1);
  if (a3 < 0xFE)
  {
    v10 = 0;
  }

  else if (v8 <= 3)
  {
    v13 = ((a3 + ~(-1 << v9) - 253) >> v9) + 1;
    if (HIWORD(v13))
    {
      v10 = 4;
    }

    else
    {
      if (v13 < 0x100)
      {
        v14 = 1;
      }

      else
      {
        v14 = 2;
      }

      if (v13 >= 2)
      {
        v10 = v14;
      }

      else
      {
        v10 = 0;
      }
    }
  }

  else
  {
    v10 = 1;
  }

  if (a2 > 0xFD)
  {
    v11 = a2 - 254;
    if (v8 < 4)
    {
      v12 = (v11 >> v9) + 1;
      if (v7 != -1)
      {
        v15 = v11 & ~(-1 << v9);
        bzero(a1, v8);
        if (v8 == 3)
        {
          *a1 = v15;
          a1[2] = BYTE2(v15);
        }

        else if (v8 == 2)
        {
          *a1 = v15;
        }

        else
        {
          *a1 = v11;
        }
      }
    }

    else
    {
      bzero(a1, v7 + 1);
      *a1 = v11;
      v12 = 1;
    }

    switch(v10)
    {
      case 1:
        a1[v8] = v12;
        break;
      case 2:
        *&a1[v8] = v12;
        break;
      case 3:
LABEL_39:
        __break(1u);
        break;
      case 4:
        *&a1[v8] = v12;
        break;
      default:
        return;
    }
  }

  else
  {
    switch(v10)
    {
      case 1:
        a1[v8] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_28;
      case 2:
        *&a1[v8] = 0;
        goto LABEL_27;
      case 3:
        goto LABEL_39;
      case 4:
        *&a1[v8] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_28;
      default:
LABEL_27:
        if (a2)
        {
LABEL_28:
          a1[v7] = -a2;
        }

        break;
    }
  }
}

uint64_t get_enum_tag_for_layout_string_14WorkflowEditor32ScrollableTableViewDragDropStateO(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

uint64_t sub_2744DD760(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 17))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 <= 2)
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

uint64_t sub_2744DD7A0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_2744DD7E4(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t sub_2744DD80C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_2744DD860(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 120))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
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

uint64_t sub_2744DD8A0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 120) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 120) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_2744DD910()
{
  result = qword_28094EF00;
  if (!qword_28094EF00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094EF00);
  }

  return result;
}

uint64_t sub_2744DD964(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2744DD9D8(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = sub_27463C27C();
  if (v3 != result)
  {
    return 0;
  }

  v5 = 0;
  v6 = 1 << *(a2 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a2 + 56);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v8 &= v8 - 1;
LABEL_12:

    v12 = sub_27463C2CC();

    if ((v12 & 1) == 0)
    {
      return 0;
    }
  }

  v10 = v5;
  while (1)
  {
    v5 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v5 >= v9)
    {
      return 1;
    }

    v11 = *(a2 + 56 + 8 * v5);
    ++v10;
    if (v11)
    {
      v8 = (v11 - 1) & v11;
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_2744DDADC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_27463B55C();

  return sub_2744DDB38(a1, v6, a2, a3);
}

unint64_t sub_2744DDB38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[0] = a1;
  v15[1] = a4;
  v6 = *(a3 - 8);
  v7 = MEMORY[0x28223BE20](a1);
  v9 = v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = v4;
  v17 = v4 + 64;
  v10 = ~(-1 << *(v4 + 32));
  for (i = v11 & v10; ((1 << i) & *(v17 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v10)
  {
    (*(v6 + 16))(v9, *(v16 + 48) + *(v6 + 72) * i, a3, v7);
    v13 = sub_27463B5BC();
    (*(v6 + 8))(v9, a3);
    if (v13)
    {
      break;
    }
  }

  return i;
}

uint64_t sub_2744DDCAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v6 = *(a2 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](a1);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v43 = &v33 - v10;
  MEMORY[0x28223BE20](v11);
  v13 = &v33 - v12;
  if (sub_27463B8BC())
  {
    sub_27463C36C();
    v14 = sub_27463C35C();
  }

  else
  {
    v14 = MEMORY[0x277D84FA0];
  }

  v36 = sub_27463B8BC();
  if (v36)
  {
    v33 = v7;
    v34 = v5;
    v15 = 0;
    v41 = (v6 + 16);
    v42 = v14 + 56;
    v38 = (v6 + 32);
    v40 = v6 + 8;
    v35 = v13;
    while (1)
    {
      v16 = sub_27463B89C();
      sub_27463B84C();
      if (v16)
      {
        v17 = *(v6 + 16);
        result = (v17)(v13, v5 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v15, a2);
      }

      else
      {
        v39 = v15;
        result = sub_27463C3CC();
        if (v33 != 8)
        {
          goto LABEL_23;
        }

        v44 = result;
        v17 = *v41;
        (*v41)(v13, &v44, a2);
        result = swift_unknownObjectRelease();
        v15 = v39;
      }

      v39 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      v37 = *v38;
      v37(v43, v13, a2);
      v19 = sub_27463B55C();
      v20 = ~(-1 << *(v14 + 32));
      while (1)
      {
        v21 = v19 & v20;
        v22 = (v19 & v20) >> 6;
        v23 = *(v42 + 8 * v22);
        v24 = 1 << (v19 & v20);
        if ((v24 & v23) == 0)
        {
          break;
        }

        v25 = v14;
        v17(v8, (*(v14 + 48) + *(v6 + 72) * v21), a2);
        v26 = a3;
        v27 = sub_27463B5BC();
        v28 = *(v6 + 8);
        v28(v8, a2);
        if (v27)
        {
          v28(v43, a2);
          a3 = v26;
          v13 = v35;
          v14 = v25;
          v15 = v39;
          goto LABEL_16;
        }

        v19 = v21 + 1;
        a3 = v26;
        v14 = v25;
      }

      v29 = v43;
      *(v42 + 8 * v22) = v24 | v23;
      result = (v37)(*(v14 + 48) + *(v6 + 72) * v21, v29, a2);
      v30 = *(v14 + 16);
      v31 = __OFADD__(v30, 1);
      v32 = v30 + 1;
      v13 = v35;
      v15 = v39;
      if (v31)
      {
        goto LABEL_22;
      }

      *(v14 + 16) = v32;
LABEL_16:
      v5 = v34;
      if (v15 == v36)
      {
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
  }

  else
  {
LABEL_20:

    return v14;
  }

  return result;
}

void sub_2744DE090(void *__src, uint64_t a2)
{
  memcpy(__dst, __src, sizeof(__dst));
  sub_27463C7AC();
  if ((a2 & 0xC000000000000001) != 0)
  {

    sub_27463C23C();
    type metadata accessor for EditorDropItem();
    sub_2744DE2CC(&qword_28094EF08, type metadata accessor for EditorDropItem, &unk_274653488);
    sub_27463BA7C();
    a2 = v18;
    v3 = v19;
    v4 = v20;
    v5 = v21;
    v6 = v22;
  }

  else
  {
    v7 = -1 << *(a2 + 32);
    v3 = a2 + 56;
    v4 = ~v7;
    v8 = -v7;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v6 = v9 & *(a2 + 56);

    v5 = 0;
  }

  v10 = 0;
  if (a2 < 0)
  {
    goto LABEL_10;
  }

  while (v6)
  {
    v11 = v5;
LABEL_17:
    v14 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v12 = *(*(a2 + 48) + ((v11 << 9) | (8 * v14)));
    v16 = v12;

    while (1)
    {
      sub_27463C74C();
      MEMORY[0x277C58EA0](v12);
      v15 = sub_27463C7AC();

      v10 ^= v15;
      if ((a2 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_10:
      if (!sub_27463C2BC())
      {
        goto LABEL_20;
      }

      type metadata accessor for EditorDropItem();
      swift_dynamicCast();
      v12 = v16;
    }
  }

  v13 = v5;
  while (1)
  {
    v11 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v11 >= ((v4 + 64) >> 6))
    {
LABEL_20:
      sub_274406A24(a2);
      MEMORY[0x277C58EA0](v10);
      return;
    }

    v6 = *(v3 + 8 * v11);
    ++v13;
    if (v6)
    {
      v5 = v11;
      goto LABEL_17;
    }
  }

  __break(1u);
}

uint64_t sub_2744DE2CC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2744DE314(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094EF18, &qword_274653E20);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2744DE3D0(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
  }

  return result;
}

double sub_2744DE41C(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_16_7(uint64_t a1)
{

  return swift_getTupleTypeMetadata2();
}

uint64_t OUTLINED_FUNCTION_19_6(uint64_t a1)
{

  return swift_getWitnessTable();
}

double OUTLINED_FUNCTION_20_8()
{

  swift_beginAccess();
  return result;
}

uint64_t OUTLINED_FUNCTION_23_5()
{

  return swift_getWitnessTable();
}

double OUTLINED_FUNCTION_31_4(uint64_t a1, ...)
{

  swift_beginAccess();
  return result;
}

double OUTLINED_FUNCTION_32_4(uint64_t a1, ...)
{

  swift_beginAccess();
  return result;
}

uint64_t OUTLINED_FUNCTION_33_2(uint64_t a1)
{

  return sub_27463B4DC();
}

uint64_t OUTLINED_FUNCTION_34_4(uint64_t a1, __n128 a2)
{

  return sub_27463B87C();
}

uint64_t OUTLINED_FUNCTION_35_3(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return swift_getTupleTypeMetadata2();
}

uint64_t OUTLINED_FUNCTION_37_2(uint64_t a1, void x1_0, void x2_0, void x3_0, void x4_0, uint64_t a2, void a7, void a8, uint64_t a4, int a5)
{

  return sub_27463C56C();
}

id OUTLINED_FUNCTION_53_2()
{

  return [v1 (v0 + 3941)];
}

double OUTLINED_FUNCTION_54_2(uint64_t a1, uint64_t a2)
{

  swift_beginAccess();
  return result;
}

uint64_t OUTLINED_FUNCTION_68_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return swift_getAssociatedConformanceWitness();
}

uint64_t OUTLINED_FUNCTION_69_0()
{

  return swift_getAssociatedTypeWitness();
}

uint64_t OUTLINED_FUNCTION_70_1(uint64_t a1)
{
  *(a1 + 8) = 0;

  return swift_unknownObjectWeakInit();
}

void sub_2744DE8D4(uint64_t a1)
{
  sub_2744DEDBC();
  if (v1 <= 0x3F)
  {
    sub_27463C0AC();
    if (v2 <= 0x3F)
    {
      sub_274431930();
      if (v3 <= 0x3F)
      {
        sub_2744DEE0C(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_2744DE98C(uint64_t result, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 24);
  v5 = *(v4 - 8);
  v6 = *(v5 + 84);
  if (v6)
  {
    v7 = v6 - 1;
  }

  else
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

  v9 = *(v5 + 80);
  v10 = 7;
  if (!v6)
  {
    v10 = 8;
  }

  if (!a2)
  {
    return 0;
  }

  if (v8 >= a2)
  {
LABEL_31:
    if ((v7 & 0x80000000) != 0)
    {
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload((result + v9 + 17) & ~v9, v6, v4);
      if (EnumTagSinglePayload >= 2)
      {
        return EnumTagSinglePayload - 1;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      v19 = *(result + 8);
      if (v19 >= 0xFFFFFFFF)
      {
        LODWORD(v19) = -1;
      }

      return (v19 + 1);
    }
  }

  else
  {
    v11 = ((((v10 + *(*(v4 - 8) + 64) + ((v9 + 17) & ~v9)) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 32;
    v12 = a2 - v8;
    v13 = v11 & 0xFFFFFFF8;
    if ((v11 & 0xFFFFFFF8) != 0)
    {
      v14 = 2;
    }

    else
    {
      v14 = v12 + 1;
    }

    if (v14 >= 0x10000)
    {
      v15 = 4;
    }

    else
    {
      v15 = 2;
    }

    if (v14 < 0x100)
    {
      v15 = 1;
    }

    if (v14 >= 2)
    {
      v16 = v15;
    }

    else
    {
      v16 = 0;
    }

    switch(v16)
    {
      case 1:
        v17 = *(result + v11);
        if (!v17)
        {
          goto LABEL_31;
        }

        goto LABEL_27;
      case 2:
        v17 = *(result + v11);
        if (!v17)
        {
          goto LABEL_31;
        }

        goto LABEL_27;
      case 3:
        __break(1u);
        return result;
      case 4:
        v17 = *(result + v11);
        if (!v17)
        {
          goto LABEL_31;
        }

LABEL_27:
        v18 = v17 - 1;
        if (v13)
        {
          v18 = 0;
          LODWORD(v13) = *result;
        }

        result = v8 + (v13 | v18) + 1;
        break;
      default:
        goto LABEL_31;
    }
  }

  return result;
}

void sub_2744DEB14(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = 0;
  v7 = *(a4 + 24);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  v10 = v9 - 1;
  if (!v9)
  {
    v10 = 0;
  }

  if (v10 <= 0x7FFFFFFF)
  {
    v11 = 0x7FFFFFFF;
  }

  else
  {
    v11 = v10;
  }

  v12 = *(v8 + 80);
  v13 = *(*(v7 - 8) + 64);
  if (!v9)
  {
    ++v13;
  }

  v14 = ((((v13 + ((v12 + 17) & ~v12) + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 32;
  if (v11 < a3)
  {
    v15 = a3 - v11;
    if (((((v13 + ((v12 + 17) & ~v12) + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFE0)
    {
      v16 = v15 + 1;
    }

    else
    {
      v16 = 2;
    }

    if (v16 >= 0x10000)
    {
      v17 = 4;
    }

    else
    {
      v17 = 2;
    }

    if (v16 < 0x100)
    {
      v17 = 1;
    }

    if (v16 >= 2)
    {
      v6 = v17;
    }

    else
    {
      v6 = 0;
    }
  }

  if (a2 <= v11)
  {
    switch(v6)
    {
      case 1:
        a1[v14] = 0;
        if (a2)
        {
          goto LABEL_35;
        }

        break;
      case 2:
        *&a1[v14] = 0;
        if (a2)
        {
          goto LABEL_35;
        }

        break;
      case 3:
LABEL_58:
        __break(1u);
        break;
      case 4:
        *&a1[v14] = 0;
        goto LABEL_34;
      default:
LABEL_34:
        if (a2)
        {
LABEL_35:
          if ((v10 & 0x80000000) != 0)
          {
            v20 = (&a1[v12 + 17] & ~v12);
            if (v10 >= a2)
            {
              v24 = a2 + 1;
              v25 = &a1[v12 + 17] & ~v12;

              __swift_storeEnumTagSinglePayload(v25, v24, v9, v7);
            }

            else
            {
              if (v13 <= 3)
              {
                v21 = ~(-1 << (8 * v13));
              }

              else
              {
                v21 = -1;
              }

              if (v13)
              {
                v22 = v21 & (~v10 + a2);
                if (v13 <= 3)
                {
                  v23 = v13;
                }

                else
                {
                  v23 = 4;
                }

                bzero(v20, v13);
                switch(v23)
                {
                  case 2:
                    *v20 = v22;
                    break;
                  case 3:
                    *v20 = v22;
                    v20[2] = BYTE2(v22);
                    break;
                  case 4:
                    *v20 = v22;
                    break;
                  default:
                    *v20 = v22;
                    break;
                }
              }
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

        break;
    }
  }

  else
  {
    if (((((v13 + ((v12 + 17) & ~v12) + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFE0)
    {
      v18 = a2 - v11;
    }

    else
    {
      v18 = 1;
    }

    if (((((v13 + ((v12 + 17) & ~v12) + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) != 0xFFFFFFE0)
    {
      v19 = ~v11 + a2;
      bzero(a1, v14);
      *a1 = v19;
    }

    switch(v6)
    {
      case 1:
        a1[v14] = v18;
        break;
      case 2:
        *&a1[v14] = v18;
        break;
      case 3:
        goto LABEL_58;
      case 4:
        *&a1[v14] = v18;
        break;
      default:
        return;
    }
  }
}

void sub_2744DEDBC()
{
  if (!qword_28094EFB8)
  {
    v0 = sub_27463AF4C();
    if (!v1)
    {
      atomic_store(v0, &qword_28094EFB8);
    }
  }
}

void sub_2744DEE0C(uint64_t a1)
{
  if (!qword_28094EFC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094EFC8, qword_274653E88);
    v1 = sub_27463AD1C();
    if (!v2)
    {
      atomic_store(v1, &qword_28094EFC0);
    }
  }
}

double sub_2744DEEB4(uint64_t a1, unsigned int a2, double a3, double a4, double a5, double a6, double a7)
{
  v10 = a1;
  v11 = sub_27463A35C();
  sub_27463A36C();
  if (sub_27463A36C() != v11)
  {
    a4 = 0.0;
  }

  v12 = sub_27463A37C();
  sub_27463A36C();
  if (sub_27463A36C() != v12)
  {
    a6 = 0.0;
  }

  sub_27463A34C();
  sub_27463A36C();
  sub_27463A36C();
  sub_27463A33C();
  sub_27463A36C();
  sub_27463A36C();
  v13 = -(a4 + a6);
  if (v10)
  {
    v13 = a4 + a6;
  }

  return v13 + a7;
}

uint64_t sub_2744DEFC0()
{
  v1 = v0[1];
  v2 = *(v0 + 16);
  v6 = *v0;
  v7 = v1;
  v8 = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280950E20, &qword_27464D880);
  MEMORY[0x277C575F0](&v5, v3);
  return v5;
}

uint64_t sub_2744DF018()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280950E20, &qword_27464D880);
  sub_27463AEEC();
  return v1;
}

uint64_t sub_2744DF074@<X0>(uint64_t a1@<X0>, int64x2_t *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v48 = a3;
  OUTLINED_FUNCTION_4_0();
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v11);
  v12 = &v45.i8[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  OUTLINED_FUNCTION_0_27();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_43();
  v13 = sub_274639F5C();
  OUTLINED_FUNCTION_4_0();
  v15 = v14;
  v17 = *(v16 + 64);
  v19 = MEMORY[0x28223BE20](v18);
  v21 = &v45.i8[-v20];
  (*(v15 + 16))(&v45.i8[-v20], a1, v13, v19);
  (*(v8 + 16))(v12, v4, a2);
  v22 = (*(v15 + 80) + 48) & ~*(v15 + 80);
  v23 = (v17 + *(v8 + 80) + v22) & ~*(v8 + 80);
  v24 = swift_allocObject();
  v25 = a2[1];
  v45 = a2[2];
  v26 = v45;
  v46 = v25;
  *(v24 + 16) = v25;
  *(v24 + 32) = v26;
  v27 = *(v15 + 32);
  v28 = v24;
  v47 = v24;
  v27(v24 + v22, v21, v13);
  (*(v8 + 32))(v28 + v23, v12, a2);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094EFD0, &unk_274653EF0);
  OUTLINED_FUNCTION_22();
  v29 = sub_27463965C();
  v46 = vzip1q_s64(v46, v45);
  v52 = v46;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v52 = v46;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v52.i64[0] = OpaqueTypeMetadata2;
  v52.i64[1] = OpaqueTypeConformance2;
  swift_getOpaqueTypeMetadata2();
  sub_27463965C();
  v52.i64[0] = OpaqueTypeMetadata2;
  v52.i64[1] = OpaqueTypeConformance2;
  v58 = swift_getOpaqueTypeConformance2();
  v59 = MEMORY[0x277CE0790];
  swift_getWitnessTable();
  OUTLINED_FUNCTION_22();
  sub_2746394AC();
  v32 = sub_27463C0AC();
  OUTLINED_FUNCTION_5_19();
  WitnessTable = swift_getWitnessTable();
  OUTLINED_FUNCTION_4_17();
  v36 = sub_27440CA78(v34, &qword_28094EFD0, &unk_274653EF0, v35);
  v56 = WitnessTable;
  v57 = v36;
  v37 = swift_getWitnessTable();
  OUTLINED_FUNCTION_8_14();
  v55 = swift_getWitnessTable();
  OUTLINED_FUNCTION_2_2();
  v38 = swift_getWitnessTable();
  v52.i64[0] = v29;
  v52.i64[1] = v32;
  v53 = v37;
  v54 = v38;
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280953AD0, &qword_274651698);
  OUTLINED_FUNCTION_43();
  sub_27463965C();
  v52.i64[0] = v29;
  v52.i64[1] = v32;
  v53 = v37;
  v54 = v38;
  v39 = swift_getOpaqueTypeConformance2();
  OUTLINED_FUNCTION_6_10();
  v42 = sub_27440CA78(v40, &qword_280953AD0, &qword_274651698, v41);
  v50 = v39;
  v51 = v42;
  swift_getWitnessTable();
  v49.i64[0] = sub_27463949C();
  v49.i64[1] = v43;
  sub_2746394AC();
  swift_getWitnessTable();
  sub_2744E9688();

  v49 = v52;
  sub_2744E9688();
}

uint64_t sub_2744DF53C@<X0>(uint64_t a1@<X0>, void (*a2)(char *, uint64_t, uint64_t)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v77 = a7;
  v76 = a5;
  v78 = a3;
  v69 = a2;
  v66 = a1;
  v71 = a8;
  v96 = a4;
  v97 = a5;
  v98 = a6;
  v99 = a7;
  v79 = type metadata accessor for ContentAvoidingSheet(0, &v96);
  v68 = *(v79 - 8);
  v81 = *(v68 + 64);
  MEMORY[0x28223BE20](v79);
  v80 = v53 - v10;
  swift_getWitnessTable();
  v11 = sub_274639F5C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094EFD0, &unk_274653EF0);
  v57 = v11;
  v12 = sub_27463965C();
  v70 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v54 = v53 - v13;
  v96 = a4;
  v97 = a6;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v96 = a4;
  v97 = a6;
  v72 = a4;
  v73 = a6;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v96 = OpaqueTypeMetadata2;
  v97 = OpaqueTypeConformance2;
  swift_getOpaqueTypeMetadata2();
  sub_27463965C();
  v96 = OpaqueTypeMetadata2;
  v97 = OpaqueTypeConformance2;
  v94 = swift_getOpaqueTypeConformance2();
  v95 = MEMORY[0x277CE0790];
  v67 = MEMORY[0x277CDFAD8];
  swift_getWitnessTable();
  sub_2746394AC();
  v16 = sub_27463C0AC();
  WitnessTable = swift_getWitnessTable();
  v18 = sub_27440CA78(&qword_28094EFD8, &qword_28094EFD0, &unk_274653EF0, MEMORY[0x277CE01C8]);
  v92 = WitnessTable;
  v93 = v18;
  v58 = v12;
  v19 = swift_getWitnessTable();
  v56 = v19;
  v91 = swift_getWitnessTable();
  v55 = v16;
  v75 = swift_getWitnessTable();
  v96 = v12;
  v97 = v16;
  v98 = v19;
  v99 = v75;
  v62 = MEMORY[0x277CDEE28];
  v60 = swift_getOpaqueTypeMetadata2();
  v64 = *(v60 - 8);
  MEMORY[0x28223BE20](v60);
  v74 = v53 - v20;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280953AD0, &qword_274651698);
  v63 = sub_27463965C();
  v65 = *(v63 - 8);
  MEMORY[0x28223BE20](v63);
  v59 = v53 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v61 = v53 - v23;
  v24 = v76;
  v82 = a4;
  v83 = v76;
  v25 = v77;
  v84 = a6;
  v85 = v77;
  v26 = v78;
  v86 = v78;
  v87 = v66;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094EFE0, &unk_274653F00);
  sub_2744E13D4();
  sub_274639C5C();
  sub_27463A74C();
  v57 = sub_2744DF018();
  v53[3] = v27;
  v28 = v68;
  v69 = *(v68 + 16);
  v29 = v80;
  v30 = v79;
  v69(v80, v26, v79);
  v31 = (*(v28 + 80) + 48) & ~*(v28 + 80);
  v32 = swift_allocObject();
  v32[2] = v72;
  v32[3] = v24;
  v32[4] = v73;
  v32[5] = v25;
  v68 = *(v28 + 32);
  (v68)(v32 + v31, v29, v30);
  v66 = swift_checkMetadataState();
  v33 = v56;
  v34 = v58;
  v35 = v54;
  sub_27463A91C();

  v36 = v34;
  (*(v70 + 8))(v35, v34);
  v37 = v78;
  v90 = sub_2744DEFC0() & 1;
  v38 = v80;
  v39 = v37;
  v40 = v79;
  v69(v80, v39, v79);
  v41 = swift_allocObject();
  v42 = v76;
  v41[2] = v72;
  v41[3] = v42;
  v43 = v77;
  v41[4] = v73;
  v41[5] = v43;
  (v68)(v41 + v31, v38, v40);
  v96 = v36;
  v97 = v66;
  v98 = v33;
  v99 = v75;
  v44 = swift_getOpaqueTypeConformance2();
  v45 = v59;
  v46 = v60;
  v47 = v74;
  sub_27463AA5C();

  (*(v64 + 8))(v47, v46);
  v48 = sub_27440CA78(&unk_28094DDA0, &qword_280953AD0, &qword_274651698, MEMORY[0x277CE0400]);
  v88 = v44;
  v89 = v48;
  v49 = v63;
  swift_getWitnessTable();
  v50 = v61;
  sub_2744E9688();
  v51 = *(v65 + 8);
  v51(v45, v49);
  sub_2744E9688();
  return (v51)(v50, v49);
}

void sub_2744DFEC4(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  *&v29 = a2;
  *(&v29 + 1) = a3;
  v30 = a4;
  v31 = a5;
  v7 = (a1 + *(type metadata accessor for ContentAvoidingSheet(0, &v29) + 60));
  v8 = *(v7 + 16);
  v9 = *(v7 + 3);
  v29 = *v7;
  LOBYTE(v30) = v8;
  v31 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094EFF0, &unk_274653F10);
  sub_27463ACEC();
  if (v28)
  {
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0uLL;
  }

  else
  {
    sub_2746393AC();
    v17 = v16;
    v19 = v18;
    v21 = v20;
    v23 = v22;
    v24 = sub_27463A34C();
    v25 = sub_27463A36C();
    sub_27463A36C();
    if (sub_27463A36C() != v24)
    {
      v25 = sub_27463A36C();
    }

    sub_2744DEEB4(v27 == 0.0, v25, v17, v19, v21, v23, v26);
    v10 = sub_27463AB7C();
    sub_27463B0CC();
    sub_2746392FC();
    v11 = v29;
    v12 = BYTE8(v29);
    v13 = v30;
    v14 = v31;
    v15 = v32;
  }

  *a6 = v10;
  *(a6 + 8) = v11;
  *(a6 + 16) = v12;
  *(a6 + 24) = v13;
  *(a6 + 32) = v14;
  *(a6 + 40) = v15;
}

uint64_t sub_2744E0060@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v58 = a6;
  *&v57[0] = a2;
  *&v70 = a2;
  *(&v70 + 1) = a3;
  *(&v57[0] + 1) = a4;
  v71 = a4;
  v72 = a5;
  v54 = a5;
  v8 = type metadata accessor for ContentAvoidingSheet(0, &v70);
  v52 = *(v8 - 8);
  v9 = *(v52 + 64);
  MEMORY[0x28223BE20](v8);
  v55 = &v50 - v10;
  v11 = sub_27463C0AC();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v50 - v13;
  v56 = *(a3 - 8);
  v15 = *(v56 + 64);
  MEMORY[0x28223BE20](v16);
  v17 = &v50 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v18);
  v21 = &v50 - v20;
  v53 = v8;
  v22 = *(v8 + 52);
  v23 = a1;
  (*(v12 + 16))(v14, a1 + v22, v11, v19);
  if (__swift_getEnumTagSinglePayload(v14, 1, a3) == 1)
  {
    (*(v12 + 8))(v14, v11);
    v68 = 0;
    v69 = 0;
    v24 = *(&v57[0] + 1);
    v25 = *&v57[0];
    v70 = v57[0];
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    v70 = __PAIR128__(v24, v25);
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    *&v70 = OpaqueTypeMetadata2;
    *(&v70 + 1) = OpaqueTypeConformance2;
    swift_getOpaqueTypeMetadata2();
    sub_27463965C();
    *&v70 = OpaqueTypeMetadata2;
    *(&v70 + 1) = OpaqueTypeConformance2;
    v66 = swift_getOpaqueTypeConformance2();
    v28 = MEMORY[0x277CE0790];
    v67 = MEMORY[0x277CE0790];
    swift_getWitnessTable();
    sub_2746394AC();
    swift_getWitnessTable();
    sub_2745758B8(&v68, &v70);
    v29 = v70;
  }

  else
  {
    v30 = v56;
    v50 = *(v56 + 32);
    v51 = v21;
    v50(v21, v14, a3);
    v31 = v52;
    v32 = v23;
    v33 = v53;
    (*(v52 + 16))(v55, v32, v53);
    (*(v30 + 16))(v17, v21, a3);
    v34 = (*(v31 + 80) + 48) & ~*(v31 + 80);
    v35 = (v9 + *(v30 + 80) + v34) & ~*(v30 + 80);
    v36 = swift_allocObject();
    v37 = *&v57[0];
    *(v36 + 2) = *&v57[0];
    *(v36 + 3) = a3;
    v38 = *(&v57[0] + 1);
    v39 = v54;
    *(v36 + 4) = *(&v57[0] + 1);
    *(v36 + 5) = v39;
    v40 = v33;
    v41 = v37;
    (*(v31 + 32))(&v36[v34], v55, v40);
    v25 = v41;
    v24 = v38;
    v50(&v36[v35], v17, a3);
    *&v70 = v25;
    *(&v70 + 1) = v38;
    v42 = swift_getOpaqueTypeMetadata2();
    *&v70 = v25;
    *(&v70 + 1) = v24;
    v43 = swift_getOpaqueTypeConformance2();
    *&v70 = v42;
    *(&v70 + 1) = v43;
    swift_getOpaqueTypeMetadata2();
    sub_27463965C();
    *&v70 = v42;
    *(&v70 + 1) = v43;
    v61 = swift_getOpaqueTypeConformance2();
    v28 = MEMORY[0x277CE0790];
    v62 = MEMORY[0x277CE0790];
    swift_getWitnessTable();
    v44 = sub_27463949C();
    v46 = v45;
    (*(v56 + 8))(v51, a3);
    v68 = v44;
    v69 = v46;
    sub_2746394AC();
    swift_getWitnessTable();
    sub_2744E9688();

    v60 = v70;
    sub_2744E9688();

    v59[0] = v68;
    v59[1] = v69;
    sub_2745758B8(v59, &v60);

    v29 = v60;
  }

  *(v57 + 8) = v29;
  v70 = v29;
  v68 = v25;
  v69 = v24;
  v47 = swift_getOpaqueTypeMetadata2();
  v68 = v25;
  v69 = v24;
  v48 = swift_getOpaqueTypeConformance2();
  v68 = v47;
  v69 = v48;
  swift_getOpaqueTypeMetadata2();
  sub_27463965C();
  v68 = v47;
  v69 = v48;
  v64 = swift_getOpaqueTypeConformance2();
  v65 = v28;
  swift_getWitnessTable();
  sub_2746394AC();
  sub_27463C0AC();
  WitnessTable = swift_getWitnessTable();
  swift_getWitnessTable();
  sub_2744E9688();
  return sub_274406A94(*(&v57[0] + 1), *&v57[1]);
}

uint64_t sub_2744E0848@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v75 = a5;
  v76 = a7;
  v61 = a3;
  v54 = a2;
  v77 = a1;
  v78 = a8;
  v13 = sub_2746393DC();
  v72 = *(v13 - 8);
  v73 = v13;
  v74 = *(v72 + 64);
  MEMORY[0x28223BE20](v13);
  v71 = &v51 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = a4;
  v83 = a5;
  v84 = a6;
  v85 = a7;
  v15 = type metadata accessor for ContentAvoidingSheet(0, &v82);
  v69 = *(v15 - 8);
  v70 = *(v69 + 64);
  MEMORY[0x28223BE20](v15);
  v68 = &v51 - v16;
  v67 = sub_27463A2DC();
  v65 = *(v67 - 8);
  MEMORY[0x28223BE20](v67);
  v18 = &v51 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = *(a4 - 8);
  MEMORY[0x28223BE20](v19);
  v21 = &v51 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = a4;
  v83 = a6;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v79 = OpaqueTypeMetadata2;
  v57 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v24 = &v51 - v23;
  v82 = a4;
  v83 = a6;
  v52 = a6;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v82 = OpaqueTypeMetadata2;
  v83 = OpaqueTypeConformance2;
  v62 = MEMORY[0x277CDED50];
  v59 = swift_getOpaqueTypeMetadata2();
  v64 = *(v59 - 8);
  MEMORY[0x28223BE20](v59);
  v53 = &v51 - v25;
  v63 = sub_27463965C();
  v66 = *(v63 - 8);
  MEMORY[0x28223BE20](v63);
  v56 = &v51 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x28223BE20](v27);
  v60 = &v51 - v29;
  (*(a2 + *(v15 + 56)))(v61, v28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094EFF8, &unk_274653F20);
  sub_274639BEC();
  *(swift_allocObject() + 16) = xmmword_2746486A0;
  sub_274639BDC();
  sub_274639BCC();
  sub_274574354();
  v51 = a4;
  sub_27463A81C();

  (*(v58 + 8))(v21, a4);
  sub_27463A2CC();
  v30 = v79;
  v31 = OpaqueTypeConformance2;
  sub_27463A8CC();
  (*(v65 + 8))(v18, v67);
  (*(v57 + 8))(v24, v30);
  v32 = v68;
  v33 = v69;
  (*(v69 + 16))(v68, v54, v15);
  v35 = v71;
  v34 = v72;
  v36 = v73;
  (*(v72 + 16))(v71, v77, v73);
  v37 = (*(v33 + 80) + 48) & ~*(v33 + 80);
  v38 = v34;
  v39 = (v70 + *(v34 + 80) + v37) & ~*(v34 + 80);
  v40 = swift_allocObject();
  v41 = v75;
  *(v40 + 2) = v51;
  *(v40 + 3) = v41;
  v42 = v76;
  *(v40 + 4) = v52;
  *(v40 + 5) = v42;
  (*(v33 + 32))(&v40[v37], v32, v15);
  (*(v38 + 32))(&v40[v39], v35, v36);
  v82 = v79;
  v83 = v31;
  v43 = swift_getOpaqueTypeConformance2();
  v44 = v56;
  v45 = v59;
  v46 = v53;
  sub_27463AA2C();

  (*(v64 + 8))(v46, v45);
  v80 = v43;
  v81 = MEMORY[0x277CE0790];
  v47 = v63;
  swift_getWitnessTable();
  v48 = v60;
  sub_2744E9688();
  v49 = *(v66 + 8);
  v49(v44, v47);
  sub_2744E9688();
  return (v49)(v48, v47);
}

uint64_t sub_2744E1050(uint64_t a1, __n128 a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  sub_2746393BC();
  v13 = v12;
  sub_2746393AC();
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094F000, &qword_27465BD40);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2746486A0;
  v23 = sub_27463A33C();
  *(inited + 32) = v23;
  v24 = sub_27463A34C();
  *(inited + 33) = v24;
  v25 = sub_27463A36C();
  sub_27463A36C();
  if (sub_27463A36C() != v23)
  {
    v25 = sub_27463A36C();
  }

  sub_27463A36C();
  if (sub_27463A36C() != v24)
  {
    v25 = sub_27463A36C();
  }

  sub_2744DEEB4(1, v25, v15, v17, v19, v21, v13);
  *&v30 = a4;
  *(&v30 + 1) = a5;
  v31 = a6;
  v32 = a7;
  v26 = (a1 + *(type metadata accessor for ContentAvoidingSheet(0, &v30) + 60));
  v27 = *(v26 + 16);
  v28 = *(v26 + 3);
  v30 = *v26;
  LOBYTE(v31) = v27;
  v32 = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094EFF0, &unk_274653F10);
  return sub_27463ACFC();
}

_BYTE *sub_2744E1214(_BYTE *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if ((*result & 1) == 0)
  {
    *&v9 = a3;
    *(&v9 + 1) = a4;
    v10 = a5;
    v11 = a6;
    v6 = (a2 + *(type metadata accessor for ContentAvoidingSheet(0, &v9) + 60));
    v7 = *(v6 + 16);
    v8 = *(v6 + 3);
    v9 = *v6;
    LOBYTE(v10) = v7;
    v11 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094EFF0, &unk_274653F10);
    return sub_27463ACFC();
  }

  return result;
}

uint64_t sub_2744E12B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  OUTLINED_FUNCTION_3_21();
  v10 = type metadata accessor for ContentAvoidingSheet(255, v9);
  OUTLINED_FUNCTION_0_27();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_43();
  v11 = sub_274639F5C();
  OUTLINED_FUNCTION_19_0(v11);
  v13 = v12;
  v15 = v14;
  v16 = (*(v13 + 80) + 48) & ~*(v13 + 80);
  v17 = v2 + ((v16 + *(v15 + 64) + *(*(v10 - 8) + 80)) & ~*(*(v10 - 8) + 80));

  return sub_2744DF53C(a1, (v2 + v16), v17, v3, v4, v5, v6, a2);
}

unint64_t sub_2744E13D4()
{
  result = qword_28094EFE8;
  if (!qword_28094EFE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094EFE0, &unk_274653F00);
    sub_2744C98E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094EFE8);
  }

  return result;
}

uint64_t sub_2744E1458@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_3_21();
  v8 = *(type metadata accessor for ContentAvoidingSheet(0, v7) - 8);
  v9 = v1 + ((*(v8 + 80) + 48) & ~*(v8 + 80));

  return sub_2744E0060(v9, v2, v3, v4, v5, a1);
}

uint64_t objectdestroy_5Tm()
{
  OUTLINED_FUNCTION_1_18();
  type metadata accessor for ContentAvoidingSheet(0, v2);
  OUTLINED_FUNCTION_3_14();
  v4 = v1 + ((*(v3 + 80) + 48) & ~*(v3 + 80));

  v5 = *(v0 + 52);
  if (!__swift_getEnumTagSinglePayload(v4 + v5, 1, v8))
  {
    OUTLINED_FUNCTION_25_0();
    (*(v6 + 8))(v4 + v5);
  }

  return swift_deallocObject();
}

_BYTE *sub_2744E1610(_BYTE *a1)
{
  OUTLINED_FUNCTION_3_21();
  v8 = *(type metadata accessor for ContentAvoidingSheet(0, v7) - 8);
  v9 = v1 + ((*(v8 + 80) + 48) & ~*(v8 + 80));

  return sub_2744E1214(a1, v9, v2, v3, v4, v5);
}

uint64_t sub_2744E16AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = v2[3];
  v7 = v2[4];
  v8 = v2[5];
  v17[0] = v2[2];
  v5 = v17[0];
  v17[1] = v6;
  v17[2] = v7;
  v17[3] = v8;
  v9 = type metadata accessor for ContentAvoidingSheet(0, v17);
  OUTLINED_FUNCTION_19_0(v9);
  v11 = v10;
  v13 = v12;
  v14 = (*(v11 + 80) + 48) & ~*(v11 + 80);
  v15 = v2 + ((v14 + *(v13 + 64) + *(*(v6 - 8) + 80)) & ~*(*(v6 - 8) + 80));

  return sub_2744E0848(a1, v2 + v14, v15, v5, v6, v7, v8, a2);
}

uint64_t sub_2744E17B4()
{
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v14[0] = v0[2];
  v1 = v14[0];
  v14[1] = v2;
  v14[2] = v3;
  v14[3] = v4;
  v5 = type metadata accessor for ContentAvoidingSheet(0, v14);
  OUTLINED_FUNCTION_19_0(v5);
  v7 = (*(v6 + 80) + 48) & ~*(v6 + 80);
  v9 = *(v8 + 64);
  v10 = *(sub_2746393DC() - 8);
  v12 = v0 + ((v7 + v9 + *(v10 + 80)) & ~*(v10 + 80));

  return sub_2744E1050(v0 + v7, v11, v12, v1, v2, v3, v4);
}

void ParameterLayoutView.init(parameter:label:description:isSelected:forceHorizontalLayout:control:)(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char a8@<W7>, uint64_t *a9@<X8>, char a10, void (*a11)(void), uint64_t a12, uint64_t a13, uint64_t a14)
{
  v19 = type metadata accessor for ParameterLayoutView(0, a13, a14, a4);
  v20 = v19[14];
  *(a9 + v20) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094BDF0, &qword_274653F70);
  swift_storeEnumTagMultiPayload();
  v21 = a9 + v19[15];
  *v21 = swift_getKeyPath();
  *(v21 + 4) = 0;
  v22 = a9 + v19[16];
  *v22 = swift_getKeyPath();
  v22[8] = 0;
  v23 = a9 + v19[17];
  *v23 = swift_getKeyPath();
  v23[40] = 0;
  v24 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094B440, &qword_27464C470));
  v25 = a1;
  sub_27444A564(v25);
  sub_27440CA78(&qword_28094CF70, &unk_28094B440, &qword_27464C470, &unk_274648AD8);
  *a9 = sub_27463950C();
  a9[1] = v26;
  if (!a3)
  {
    v27 = [v25 localizedLabel];
    a2 = sub_27463B6AC();
    a3 = v28;
  }

  v29 = a4;
  if (!a5)
  {
    v30 = [v25 localizedDescription];
    if (v30)
    {
      v31 = v30;
      v29 = sub_27463B6AC();
      a5 = v32;
    }

    else
    {
      v29 = 0;
      a5 = 0xE000000000000000;
    }
  }

  a9[2] = a2;
  a9[3] = a3;
  a9[4] = v29;
  a9[5] = a5;
  v33 = a9 + v19[12];
  *v33 = a6;
  *(v33 + 1) = a7;
  v33[16] = a8;
  a11();

  *(a9 + v19[13]) = a10 & 1;
}

uint64_t sub_2744E1C00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_274639ABC();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094BDF0, &qword_274653F70);
  MEMORY[0x28223BE20](v9);
  v11 = &v15 - v10;
  sub_27445EAD4(v2 + *(a1 + 56), &v15 - v10, &qword_28094BDF0, &qword_274653F70);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_274639C4C();
    return (*(*(v12 - 8) + 32))(a2, v11, v12);
  }

  else
  {
    sub_27463BC0C();
    v14 = sub_27463A2FC();
    sub_274638CEC();

    sub_274639AAC();
    swift_getAtKeyPath();

    return (*(v6 + 8))(v8, v5);
  }
}

void sub_2744E1E04(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_274639ABC();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = v2 + *(a1 + 60);
  v10 = *v9;
  v11 = *(v9 + 8);
  if (*(v9 + 9) == 1)
  {
    *a2 = v10;
    *(a2 + 8) = v11 & 1;
  }

  else
  {

    sub_27463BC0C();
    v12 = sub_27463A2FC();
    sub_274638CEC();

    sub_274639AAC();
    swift_getAtKeyPath();
    sub_274458484(v10, v11, 0);
    (*(v6 + 8))(v8, v5);
  }
}

void sub_2744E1F70(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = sub_274639ABC();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = v2 + *(a1 + 64);
  v10 = *v9;
  if (*(v9 + 8) == 1)
  {
    *a2 = v10;
  }

  else
  {

    sub_27463BC0C();
    v11 = sub_27463A2FC();
    sub_274638CEC();

    sub_274639AAC();
    swift_getAtKeyPath();
    sub_274435568(v10, 0);
    (*(v6 + 8))(v8, v5);
  }
}

uint64_t sub_2744E20CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_274639ABC();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_27445EAD4(v2 + *(a1 + 68), v12, &qword_28094E078, &qword_27465AF70);
  if (v14 == 1)
  {
    v10 = v12[1];
    *a2 = v12[0];
    *(a2 + 16) = v10;
    *(a2 + 32) = v13;
  }

  else
  {
    sub_27463BC0C();
    v11 = sub_27463A2FC();
    sub_274638CEC();

    sub_274639AAC();
    swift_getAtKeyPath();

    return (*(v6 + 8))(v8, v5);
  }

  return result;
}

uint64_t ParameterLayoutView.body.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v47 = a1;
  v49 = a2;
  v2 = *(a1 + 16);
  v3 = MEMORY[0x277CE1180];
  OUTLINED_FUNCTION_12_8();
  v46 = v2;
  swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_26_0();
  sub_27463B19C();
  OUTLINED_FUNCTION_7_17();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_20_0();
  sub_27463ADAC();
  OUTLINED_FUNCTION_15_7(255, v3, v2, v3);
  OUTLINED_FUNCTION_26_0();
  sub_27463B19C();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_20_0();
  sub_27463AE6C();
  v4 = sub_274639DEC();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094F008, &qword_274653FF8);
  OUTLINED_FUNCTION_16_8();
  sub_27463965C();
  v5 = OUTLINED_FUNCTION_12_8();
  OUTLINED_FUNCTION_15_7(v5, v6, v3, v7);
  OUTLINED_FUNCTION_26_0();
  sub_27463B19C();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_20_0();
  sub_27463ADAC();
  OUTLINED_FUNCTION_16_8();
  sub_274639DEC();
  v8 = OUTLINED_FUNCTION_12_8();
  OUTLINED_FUNCTION_15_7(v8, v9, v3, v4);
  OUTLINED_FUNCTION_26_0();
  sub_27463B19C();
  OUTLINED_FUNCTION_24_5();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_22();
  sub_27463AE6C();
  sub_27463965C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_28094F010, &unk_274654000);
  v10 = OUTLINED_FUNCTION_26_0();
  OUTLINED_FUNCTION_15_7(v10, v11, v3, v4);
  OUTLINED_FUNCTION_26_0();
  sub_27463B19C();
  OUTLINED_FUNCTION_24_5();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_22();
  sub_27463ADAC();
  OUTLINED_FUNCTION_62_0();
  sub_274639DEC();
  OUTLINED_FUNCTION_16_8();
  sub_274639DEC();
  OUTLINED_FUNCTION_30();
  sub_274639DEC();
  WitnessTable = swift_getWitnessTable();
  v79 = swift_getWitnessTable();
  v12 = MEMORY[0x277CE0340];
  v76 = swift_getWitnessTable();
  v77 = swift_getWitnessTable();
  v13 = swift_getWitnessTable();
  v14 = swift_getWitnessTable();
  OUTLINED_FUNCTION_11_9(v14, MEMORY[0x277CDF918]);
  v16 = v15;
  v74 = swift_getWitnessTable();
  v75 = swift_getWitnessTable();
  v72 = v76;
  v73 = swift_getWitnessTable();
  v45 = v12;
  v70 = v13;
  v71 = swift_getWitnessTable();
  swift_getWitnessTable();
  sub_274412BBC();
  OUTLINED_FUNCTION_4_18();
  swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_26_0();
  sub_27463965C();
  OUTLINED_FUNCTION_16_8();
  sub_27463965C();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v65 = MEMORY[0x277CDF918];
  v43 = v16;
  v62 = swift_getWitnessTable();
  v63 = MEMORY[0x277CDFC60];
  v44 = swift_getWitnessTable();
  OUTLINED_FUNCTION_30();
  v17 = sub_27463AD8C();
  OUTLINED_FUNCTION_9_10();
  v41 = swift_getWitnessTable();
  v40 = sub_274482428();
  v66 = v17;
  v67 = &type metadata for ParameterRowButtonStyle;
  v68 = v41;
  v69 = v40;
  swift_getOpaqueTypeMetadata2();
  sub_27463A29C();
  OUTLINED_FUNCTION_22();
  sub_27463965C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094AA90, &qword_2746498B0);
  OUTLINED_FUNCTION_20_0();
  sub_27463965C();
  v42 = sub_274639DEC();
  OUTLINED_FUNCTION_62_0();
  sub_274639DEC();
  v18 = sub_27463AC1C();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = &v40 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v24 = &v40 - v23;
  v25 = *(v47 + 24);
  v50 = v46;
  v51 = v25;
  v52 = v48;
  v66 = v17;
  v67 = &type metadata for ParameterRowButtonStyle;
  v68 = v41;
  v69 = v40;
  v26 = swift_getOpaqueTypeConformance2();
  OUTLINED_FUNCTION_8_15();
  v29 = sub_2744E9640(v27, v28, MEMORY[0x277CDE458]);
  v60 = v26;
  v61 = v29;
  v30 = swift_getWitnessTable();
  OUTLINED_FUNCTION_5_20();
  v33 = sub_27440CA78(v31, &qword_28094AA90, &qword_2746498B0, v32);
  v58 = v44;
  v59 = v33;
  v56 = swift_getWitnessTable();
  v57 = v56;
  v34 = swift_getWitnessTable();
  v54 = v30;
  v55 = v34;
  v35 = swift_getWitnessTable();
  sub_27463AC0C();
  v53 = v35;
  OUTLINED_FUNCTION_39_0();
  swift_getWitnessTable();
  v36 = *(v19 + 16);
  v37 = OUTLINED_FUNCTION_24_5();
  v36(v37);
  v38 = *(v19 + 8);
  v38(v21, v18);
  (v36)(v49, v24, v18);
  return (v38)(v24, v18);
}

uint64_t sub_2744E2914@<X0>(uint64_t a1@<X0>, void *a2@<X1>, char *a3@<X2>, uint64_t a4@<X8>)
{
  v136 = a3;
  v133 = a1;
  v143 = a4;
  v6 = sub_274639C2C();
  v130 = *(v6 - 8);
  v131 = v6;
  MEMORY[0x28223BE20](v6);
  v129 = &v115 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v135 = a2;
  swift_getTupleTypeMetadata2();
  sub_27463B19C();
  swift_getWitnessTable();
  sub_27463ADAC();
  swift_getTupleTypeMetadata3();
  sub_27463B19C();
  swift_getWitnessTable();
  v147 = sub_27463AE6C();
  sub_274639DEC();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094F008, &qword_274653FF8);
  sub_27463965C();
  swift_getTupleTypeMetadata3();
  sub_27463B19C();
  swift_getWitnessTable();
  v146 = sub_27463ADAC();
  sub_274639DEC();
  swift_getTupleTypeMetadata3();
  sub_27463B19C();
  swift_getWitnessTable();
  v145 = sub_27463AE6C();
  sub_27463965C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_28094F010, &unk_274654000);
  swift_getTupleTypeMetadata3();
  sub_27463B19C();
  swift_getWitnessTable();
  sub_27463ADAC();
  sub_274639DEC();
  sub_274639DEC();
  v144 = sub_274639DEC();
  WitnessTable = swift_getWitnessTable();
  v9 = swift_getWitnessTable();
  v190 = WitnessTable;
  v191 = v9;
  v10 = swift_getWitnessTable();
  v11 = swift_getWitnessTable();
  v188 = v10;
  v189 = v11;
  v12 = swift_getWitnessTable();
  v186 = swift_getWitnessTable();
  v187 = MEMORY[0x277CDF918];
  v13 = swift_getWitnessTable();
  v14 = swift_getWitnessTable();
  v184 = v13;
  v185 = v14;
  v15 = swift_getWitnessTable();
  v182 = v10;
  v183 = v15;
  v16 = swift_getWitnessTable();
  v180 = v12;
  v181 = v16;
  v17 = v144;
  v18 = swift_getWitnessTable();
  v19 = sub_274412BBC();
  v20 = MEMORY[0x277D837D0];
  *&v173 = v17;
  *(&v173 + 1) = MEMORY[0x277D837D0];
  *&v174 = v18;
  *(&v174 + 1) = v19;
  swift_getOpaqueTypeMetadata2();
  sub_27463965C();
  v21 = sub_27463965C();
  *&v173 = v17;
  *(&v173 + 1) = v20;
  *&v174 = v18;
  *(&v174 + 1) = v19;
  v22 = v133;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v179 = MEMORY[0x277CDF918];
  v176 = swift_getWitnessTable();
  v177 = MEMORY[0x277CDFC60];
  v146 = swift_getWitnessTable();
  v23 = sub_27463AD8C();
  v122 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v121 = &v115 - v24;
  v25 = swift_getWitnessTable();
  v26 = sub_274482428();
  v144 = v23;
  v145 = v25;
  *&v173 = v23;
  *(&v173 + 1) = &type metadata for ParameterRowButtonStyle;
  *&v174 = v25;
  v147 = v26;
  *(&v174 + 1) = v26;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v124 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v120 = &v115 - v28;
  sub_27463A29C();
  v125 = OpaqueTypeMetadata2;
  v29 = sub_27463965C();
  v128 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v127 = &v115 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v123 = &v115 - v32;
  MEMORY[0x28223BE20](v33);
  v126 = &v115 - v34;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094AA90, &qword_2746498B0);
  v35 = sub_27463965C();
  v36 = sub_274639DEC();
  v119 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v118 = &v115 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v38);
  v132 = &v115 - v39;
  v134 = v21;
  v116 = *(v21 - 8);
  MEMORY[0x28223BE20](v40);
  v42 = &v115 - v41;
  v140 = v35;
  v117 = *(v35 - 8);
  MEMORY[0x28223BE20](v43);
  v45 = &v115 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v46);
  v48 = &v115 - v47;
  MEMORY[0x28223BE20](v49);
  v51 = &v115 - v50;
  v141 = v52;
  v142 = v29;
  v53 = sub_274639DEC();
  v138 = *(v53 - 8);
  v139 = v53;
  MEMORY[0x28223BE20](v53);
  v137 = &v115 - v54;
  v55 = v135;
  v56 = v136;
  v58 = type metadata accessor for ParameterLayoutView(0, v135, v136, v57);
  v59 = v22 + *(v58 + 48);
  v60 = *(v59 + 8);
  if (v60)
  {
    v61 = *v59;
    v62 = *(v59 + 16);
    v63 = swift_allocObject();
    v132 = &v115;
    *(v63 + 16) = v61;
    *(v63 + 24) = v60;
    v64 = v62 & 1;
    *(v63 + 32) = v62 & 1;
    MEMORY[0x28223BE20](v63);
    *(&v115 - 4) = v55;
    *(&v115 - 3) = v56;
    *(&v115 - 2) = v22;
    sub_274483110(v61, v60);

    v65 = v121;
    sub_27463AD5C();
    v66 = v120;
    v67 = v144;
    v68 = v145;
    sub_27463A6AC();
    (*(v122 + 8))(v65, v67);
    v135 = v61;
    v136 = v60;
    *&v173 = v61;
    *(&v173 + 1) = v60;
    LOBYTE(v174) = v64;
    v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280950E20, &qword_27464D880);
    MEMORY[0x277C575F0](v172, v69);
    if (v172[0])
    {
      v70 = v129;
      sub_274639C0C();
      v71 = v131;
    }

    else
    {
      *&v173 = MEMORY[0x277D84F90];
      sub_2744E9640(&qword_28094C3B8, MEMORY[0x277CE01F0], MEMORY[0x277CE0200]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094C3C0, &qword_27464D650);
      sub_27440CA78(&qword_28094C3C8, &qword_28094C3C0, &qword_27464D650, MEMORY[0x277D83970]);
      v70 = v129;
      v71 = v131;
      sub_27463C1EC();
    }

    *&v173 = v67;
    *(&v173 + 1) = &type metadata for ParameterRowButtonStyle;
    *&v174 = v68;
    *(&v174 + 1) = v147;
    v78 = swift_getOpaqueTypeConformance2();
    v79 = v123;
    v80 = v125;
    sub_27463A85C();
    (*(v130 + 8))(v70, v71);
    (*(v124 + 8))(v66, v80);
    v81 = sub_2744E9640(&qword_28094A6C0, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    v152 = v78;
    v153 = v81;
    v82 = v142;
    v134 = swift_getWitnessTable();
    v83 = v128;
    v84 = *(v128 + 16);
    v85 = v126;
    v84(v126, v79, v82);
    v86 = *(v83 + 8);
    v86(v79, v82);
    v87 = v127;
    v84(v127, v85, v82);
    v88 = sub_27440CA78(&unk_28094DE30, &qword_28094AA90, &qword_2746498B0, MEMORY[0x277CE0470]);
    v89 = v146;
    v150 = v146;
    v151 = v88;
    v148 = swift_getWitnessTable();
    v149 = v148;
    swift_getWitnessTable();
    v90 = v137;
    sub_27456E7CC();

    v86(v87, v82);
    v86(v85, v82);
  }

  else
  {
    v72 = v58;
    v131 = v48;
    v135 = v45;
    sub_2744E42E4(v58, v42);
    sub_2744E8F6C();
    v73 = v134;
    v74 = v146;
    sub_27463A6FC();
    (*(v116 + 8))(v42, v73);
    sub_2744E20CC(v72, v172);
    v136 = v51;
    if (v172[3])
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094F0B0, &qword_274659E00);
      v75 = swift_dynamicCast();
      v76 = v117;
      if (v75)
      {
        v77 = v175 == 1;
      }

      else
      {
        v173 = 0u;
        v174 = 0u;
        v175 = xmmword_274653F30;
        v77 = 1;
      }

      v91 = v135;
    }

    else
    {
      sub_27440CB1C(v172, &unk_2809507C0, &qword_274649C60);
      v173 = 0u;
      v174 = 0u;
      v175 = xmmword_274653F30;
      v77 = 1;
      v91 = v135;
      v76 = v117;
    }

    sub_27440CB1C(&v173, &qword_280951AF0, &unk_274654100);
    v92 = sub_27440CA78(&unk_28094DE30, &qword_28094AA90, &qword_2746498B0, MEMORY[0x277CE0470]);
    v93 = v92;
    v94 = (v76 + 16);
    v135 = (v76 + 8);
    if (v77)
    {
      v170 = v74;
      v171 = v92;
      v95 = v140;
      swift_getWitnessTable();
      v96 = *v94;
      v97 = v131;
      (*v94)(v131, v136, v95);
      v96(v91, v97, v95);
      v98 = v132;
      sub_27456E878();
    }

    else
    {
      v154 = v74;
      v155 = v92;
      v95 = v140;
      swift_getWitnessTable();
      v99 = *v94;
      v97 = v131;
      (*v94)(v131, v136, v95);
      v99(v91, v97, v95);
      v98 = v132;
      sub_27456E7CC();
    }

    v100 = *v135;
    v140 = v100;
    v100(v91, v95);
    v100(v97, v95);
    v168 = v74;
    v169 = v93;
    v166 = swift_getWitnessTable();
    v167 = v166;
    v101 = v141;
    v134 = swift_getWitnessTable();
    v102 = v118;
    v103 = v119;
    (*(v119 + 16))(v118, v98, v101);
    *&v173 = v144;
    *(&v173 + 1) = &type metadata for ParameterRowButtonStyle;
    *&v174 = v145;
    *(&v174 + 1) = v147;
    v104 = swift_getOpaqueTypeConformance2();
    v105 = sub_2744E9640(&qword_28094A6C0, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    v164 = v104;
    v165 = v105;
    swift_getWitnessTable();
    v90 = v137;
    sub_27456E878();
    v106 = *(v103 + 8);
    v106(v102, v101);
    v106(v132, v101);
    v140(v136, v95);
    v89 = v146;
  }

  *&v173 = v144;
  *(&v173 + 1) = &type metadata for ParameterRowButtonStyle;
  *&v174 = v145;
  *(&v174 + 1) = v147;
  v107 = swift_getOpaqueTypeConformance2();
  v108 = sub_2744E9640(&qword_28094A6C0, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
  v162 = v107;
  v163 = v108;
  v109 = swift_getWitnessTable();
  v110 = sub_27440CA78(&unk_28094DE30, &qword_28094AA90, &qword_2746498B0, MEMORY[0x277CE0470]);
  v160 = v89;
  v161 = v110;
  v158 = swift_getWitnessTable();
  v159 = v158;
  v111 = swift_getWitnessTable();
  v156 = v109;
  v157 = v111;
  v112 = v139;
  swift_getWitnessTable();
  v113 = v138;
  (*(v138 + 16))(v143, v90, v112);
  return (*(v113 + 8))(v90, v112);
}

uint64_t sub_2744E3D0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v21 = a3;
  v22 = a1;
  v23 = a4;
  v20 = a2;
  swift_getTupleTypeMetadata2();
  sub_27463B19C();
  swift_getWitnessTable();
  sub_27463ADAC();
  swift_getTupleTypeMetadata3();
  sub_27463B19C();
  swift_getWitnessTable();
  v19[1] = sub_27463AE6C();
  sub_274639DEC();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094F008, &qword_274653FF8);
  sub_27463965C();
  swift_getTupleTypeMetadata3();
  sub_27463B19C();
  swift_getWitnessTable();
  v19[0] = sub_27463ADAC();
  sub_274639DEC();
  swift_getTupleTypeMetadata3();
  sub_27463B19C();
  swift_getWitnessTable();
  sub_27463AE6C();
  sub_27463965C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_28094F010, &unk_274654000);
  swift_getTupleTypeMetadata3();
  sub_27463B19C();
  swift_getWitnessTable();
  sub_27463ADAC();
  sub_274639DEC();
  sub_274639DEC();
  v24 = sub_274639DEC();
  WitnessTable = swift_getWitnessTable();
  v44 = swift_getWitnessTable();
  v41 = swift_getWitnessTable();
  v42 = swift_getWitnessTable();
  v4 = swift_getWitnessTable();
  v39 = swift_getWitnessTable();
  v40 = MEMORY[0x277CDF918];
  v37 = swift_getWitnessTable();
  v38 = swift_getWitnessTable();
  v35 = v41;
  v36 = swift_getWitnessTable();
  v33 = v4;
  v34 = swift_getWitnessTable();
  v5 = swift_getWitnessTable();
  v6 = sub_274412BBC();
  v29 = v24;
  v30 = MEMORY[0x277D837D0];
  v31 = v5;
  v32 = v6;
  swift_getOpaqueTypeMetadata2();
  sub_27463965C();
  v7 = sub_27463965C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = v19 - v12;
  v15 = type metadata accessor for ParameterLayoutView(0, v20, v21, v14);
  sub_2744E42E4(v15, v10);
  v29 = v24;
  v30 = MEMORY[0x277D837D0];
  v31 = v5;
  v32 = v6;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v28 = MEMORY[0x277CDF918];
  v25 = swift_getWitnessTable();
  v26 = MEMORY[0x277CDFC60];
  swift_getWitnessTable();
  v16 = *(v8 + 16);
  v16(v13, v10, v7);
  v17 = *(v8 + 8);
  v17(v10, v7);
  v16(v23, v13, v7);
  return (v17)(v13, v7);
}

uint64_t sub_2744E42E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v39 = a1;
  v40 = a2;
  swift_getTupleTypeMetadata2();
  sub_27463B19C();
  swift_getWitnessTable();
  sub_27463ADAC();
  swift_getTupleTypeMetadata3();
  sub_27463B19C();
  swift_getWitnessTable();
  v37 = sub_27463AE6C();
  sub_274639DEC();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094F008, &qword_274653FF8);
  sub_27463965C();
  swift_getTupleTypeMetadata3();
  sub_27463B19C();
  swift_getWitnessTable();
  v35 = sub_27463ADAC();
  sub_274639DEC();
  swift_getTupleTypeMetadata3();
  sub_27463B19C();
  swift_getWitnessTable();
  v34 = sub_27463AE6C();
  v33 = sub_27463965C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_28094F010, &unk_274654000);
  swift_getTupleTypeMetadata3();
  sub_27463B19C();
  swift_getWitnessTable();
  sub_27463ADAC();
  sub_274639DEC();
  sub_274639DEC();
  v2 = sub_274639DEC();
  v36 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v32 - v3;
  WitnessTable = swift_getWitnessTable();
  v6 = swift_getWitnessTable();
  v57 = WitnessTable;
  v58 = v6;
  v7 = swift_getWitnessTable();
  v8 = swift_getWitnessTable();
  v55 = v7;
  v56 = v8;
  v9 = swift_getWitnessTable();
  v53 = swift_getWitnessTable();
  v54 = MEMORY[0x277CDF918];
  v10 = swift_getWitnessTable();
  v11 = swift_getWitnessTable();
  v51 = v10;
  v52 = v11;
  v12 = swift_getWitnessTable();
  v49 = v7;
  v50 = v12;
  v13 = swift_getWitnessTable();
  v47 = v9;
  v48 = v13;
  v14 = v38;
  v15 = swift_getWitnessTable();
  v16 = sub_274412BBC();
  v37 = v2;
  v43 = v2;
  v44 = MEMORY[0x277D837D0];
  v17 = v15;
  v45 = v15;
  v46 = v16;
  v18 = v16;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v33 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v21 = &v32 - v20;
  v32 = sub_27463965C();
  v35 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v34 = &v32 - v22;
  v23 = v39;
  sub_2744E4AB0(v39, v4);
  v24 = v23;
  if (sub_2744E4A80(v23))
  {
    v26 = *(v14 + 32);
    v25 = *(v14 + 40);
  }

  else
  {
    v26 = 0;
    v25 = 0xE000000000000000;
  }

  v43 = v26;
  v44 = v25;
  v27 = v37;
  sub_27463A8DC();

  (*(v36 + 8))(v4, v27);
  sub_27463A31C();
  sub_2744E5B88(v24);
  v43 = v27;
  v44 = MEMORY[0x277D837D0];
  v45 = v17;
  v46 = v18;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v29 = v34;
  sub_27463A9FC();
  (*(v33 + 8))(v21, OpaqueTypeMetadata2);
  sub_2744E5C4C(v24);
  v41 = OpaqueTypeConformance2;
  v42 = MEMORY[0x277CDF918];
  v31 = v32;
  swift_getWitnessTable();
  sub_27457574C(v31);
  sub_27463A90C();
  return (*(v35 + 8))(v29, v31);
}

uint64_t sub_2744E4AB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v130 = a2;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094F008, &qword_274653FF8);
  v3 = *(a1 + 16);
  swift_getTupleTypeMetadata2();
  sub_27463B19C();
  swift_getWitnessTable();
  v4 = sub_27463ADAC();
  v117 = v3;
  swift_getTupleTypeMetadata3();
  sub_27463B19C();
  swift_getWitnessTable();
  v139 = v4;
  v136 = sub_27463AE6C();
  v5 = sub_274639DEC();
  swift_getTupleTypeMetadata3();
  sub_27463B19C();
  swift_getWitnessTable();
  v137 = sub_27463AE6C();
  v6 = sub_27463965C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_28094F010, &unk_274654000);
  swift_getTupleTypeMetadata3();
  sub_27463B19C();
  swift_getWitnessTable();
  v7 = sub_27463ADAC();
  v138 = v6;
  v8 = sub_274639DEC();
  v116 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v115 = &v111 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v114 = &v111 - v11;
  v135 = v12;
  v13 = sub_274639DEC();
  v122 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v121 = &v111 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v125 = &v111 - v16;
  sub_27463965C();
  swift_getTupleTypeMetadata3();
  v17 = sub_27463B19C();
  swift_getWitnessTable();
  v18 = sub_27463ADAC();
  v113 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v112 = &v111 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v111 = &v111 - v21;
  v119 = *(v5 - 8);
  MEMORY[0x28223BE20](v22);
  v24 = &v111 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v118 = &v111 - v26;
  v133 = v5;
  v134 = v27;
  v28 = sub_274639DEC();
  v120 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v30 = &v111 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v131 = &v111 - v32;
  v124 = v33;
  v129 = v13;
  v34 = sub_274639DEC();
  v127 = *(v34 - 8);
  v128 = v34;
  MEMORY[0x28223BE20](v34);
  v36 = &v111 - v35;
  v37 = v123;
  sub_2744E1F70(a1, &v188);
  v132 = v7;
  v126 = v36;
  if (v188 == 2)
  {
    v125 = v30;
    sub_2744E1E04(a1, &v188);
    if (v189 == 1 && v188)
    {
      sub_2744E5CC0(a1, v24);
      WitnessTable = swift_getWitnessTable();
      v40 = swift_getWitnessTable();
      v140 = WitnessTable;
      v141 = v40;
      v41 = v133;
      swift_getWitnessTable();
      v43 = v118;
      v42 = v119;
      v44 = *(v119 + 16);
      v44(v118, v24, v41);
      v45 = *(v42 + 8);
      v45(v24, v41);
      v44(v24, v43, v41);
      swift_getWitnessTable();
      sub_27456E7CC();
      v45(v24, v41);
      v45(v43, v41);
    }

    else
    {
      MEMORY[0x28223BE20](v38);
      v56 = *(a1 + 24);
      *(&v111 - 4) = v117;
      *(&v111 - 3) = v56;
      *(&v111 - 2) = v37;
      sub_27456E924(v17);
      v57 = v112;
      sub_27463AD9C();
      v58 = v134;
      v123 = swift_getWitnessTable();
      v59 = v113;
      v60 = *(v113 + 16);
      v61 = v111;
      v60(v111, v57, v58);
      v62 = *(v59 + 8);
      v62(v57, v58);
      v60(v57, v61, v58);
      v63 = swift_getWitnessTable();
      v64 = swift_getWitnessTable();
      v152 = v63;
      v153 = v64;
      swift_getWitnessTable();
      sub_27456E878();
      v62(v57, v58);
      v62(v61, v58);
    }

    v65 = swift_getWitnessTable();
    v66 = swift_getWitnessTable();
    v150 = v65;
    v151 = v66;
    v67 = swift_getWitnessTable();
    v68 = swift_getWitnessTable();
    v148 = v67;
    v149 = v68;
    v69 = v124;
    v123 = swift_getWitnessTable();
    v70 = v120;
    v71 = v125;
    (*(v120 + 16))(v125, v131, v69);
    v146 = swift_getWitnessTable();
    v147 = MEMORY[0x277CDF918];
    v72 = swift_getWitnessTable();
    v73 = swift_getWitnessTable();
    v144 = v72;
    v145 = v73;
    v74 = swift_getWitnessTable();
    v142 = v67;
    v143 = v74;
    swift_getWitnessTable();
    v75 = v126;
    sub_27456E7CC();
    v76 = *(v70 + 8);
    v76(v71, v69);
    v76(v131, v69);
  }

  else
  {
    v46 = MEMORY[0x277CDF918];
    sub_2744E1E04(a1, &v188);
    if (v189 == 1 && v188)
    {
      sub_2744E5CC0(a1, v24);
      v131 = MEMORY[0x277CE1138];
      v47 = swift_getWitnessTable();
      v48 = swift_getWitnessTable();
      v158 = v47;
      v159 = v48;
      v120 = MEMORY[0x277CE0340];
      v49 = v133;
      v123 = swift_getWitnessTable();
      v50 = v118;
      v51 = v119;
      v52 = *(v119 + 16);
      v52(v118, v24, v49);
      v53 = *(v51 + 8);
      v53(v24, v49);
      v52(v24, v50, v49);
      v156 = swift_getWitnessTable();
      v157 = MEMORY[0x277CDF918];
      v54 = swift_getWitnessTable();
      v55 = swift_getWitnessTable();
      v154 = v54;
      v155 = v55;
      swift_getWitnessTable();
      sub_27456E7CC();
      v53(v24, v49);
      v53(v50, v49);
    }

    else
    {
      v77 = v115;
      sub_2744E6FF0(a1, v115);
      v131 = MEMORY[0x277CE1198];
      v186 = swift_getWitnessTable();
      v187 = v46;
      v78 = swift_getWitnessTable();
      v79 = swift_getWitnessTable();
      v184 = v78;
      v185 = v79;
      v120 = MEMORY[0x277CE0340];
      v80 = v135;
      v123 = swift_getWitnessTable();
      v81 = v116;
      v82 = *(v116 + 16);
      v83 = v114;
      v82(v114, v77, v80);
      v84 = *(v81 + 8);
      v84(v77, v80);
      v82(v77, v83, v80);
      v85 = swift_getWitnessTable();
      v86 = swift_getWitnessTable();
      v182 = v85;
      v183 = v86;
      swift_getWitnessTable();
      sub_27456E878();
      v84(v77, v80);
      v84(v83, v80);
    }

    v87 = swift_getWitnessTable();
    v88 = swift_getWitnessTable();
    v180 = v87;
    v181 = v88;
    v89 = swift_getWitnessTable();
    v178 = swift_getWitnessTable();
    v179 = MEMORY[0x277CDF918];
    v90 = swift_getWitnessTable();
    v91 = swift_getWitnessTable();
    v176 = v90;
    v177 = v91;
    v92 = swift_getWitnessTable();
    v174 = v89;
    v175 = v92;
    v93 = v129;
    swift_getWitnessTable();
    v94 = v121;
    v95 = v122;
    v96 = v125;
    (*(v122 + 16))(v121, v125, v93);
    v97 = swift_getWitnessTable();
    v172 = v89;
    v173 = v97;
    swift_getWitnessTable();
    v75 = v126;
    sub_27456E878();
    v98 = *(v95 + 8);
    v98(v94, v93);
    v98(v96, v93);
  }

  v99 = swift_getWitnessTable();
  v100 = swift_getWitnessTable();
  v170 = v99;
  v171 = v100;
  v101 = swift_getWitnessTable();
  v102 = swift_getWitnessTable();
  v168 = v101;
  v169 = v102;
  v103 = swift_getWitnessTable();
  v166 = swift_getWitnessTable();
  v167 = MEMORY[0x277CDF918];
  v104 = swift_getWitnessTable();
  v105 = swift_getWitnessTable();
  v164 = v104;
  v165 = v105;
  v106 = swift_getWitnessTable();
  v162 = v101;
  v163 = v106;
  v107 = swift_getWitnessTable();
  v160 = v103;
  v161 = v107;
  v108 = v128;
  swift_getWitnessTable();
  v109 = v127;
  (*(v127 + 16))(v130, v75, v108);
  return (*(v109 + 8))(v75, v108);
}

double sub_2744E5B88(uint64_t a1)
{
  sub_2744E1E04(a1, &v9);
  v3 = 0.0;
  if (v10 != 1 || v9 == 0)
  {
    sub_2744E1F70(a1, &v9);
    if (v9 != 2)
    {
      v5 = *(v1 + 24);
      v6 = *(v1 + 16) & 0xFFFFFFFFFFFFLL;
      if ((v5 & 0x2000000000000000) != 0)
      {
        v6 = HIBYTE(v5) & 0xF;
      }

      if (v6)
      {
        sub_2744E20CC(a1, &v9);
        v7 = v11;
        sub_27440CB1C(&v9, &unk_2809507C0, &qword_274649C60);
        if (v7)
        {
          return 19.0;
        }

        else
        {
          return 16.0;
        }
      }

      else
      {
        return 8.0;
      }
    }
  }

  return v3;
}

uint64_t sub_2744E5C4C(uint64_t a1)
{
  sub_2744E1F70(a1, &v5);
  if (v5 == 2)
  {
    return 0;
  }

  sub_2744E1E04(a1, &v3);
  if ((v4 & (v3 != 0)) != 0)
  {
    return 0;
  }

  else
  {
    return 0x4046000000000000;
  }
}

uint64_t sub_2744E5CC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v57 = a2;
  v3 = *(a1 + 16);
  swift_getTupleTypeMetadata3();
  v4 = sub_27463B19C();
  WitnessTable = swift_getWitnessTable();
  v48 = v4;
  v5 = sub_27463AE6C();
  v51 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v50 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v49 = &v44 - v8;
  v53 = v3;
  swift_getTupleTypeMetadata2();
  v9 = sub_27463B19C();
  v44 = swift_getWitnessTable();
  v10 = sub_27463ADAC();
  v46 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v45 = &v44 - v14;
  v15 = sub_274639C4C();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v44 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_274639DEC();
  v55 = *(v19 - 8);
  v56 = v19;
  MEMORY[0x28223BE20](v19);
  v54 = &v44 - v20;
  v21 = a1;
  v22 = a1;
  v23 = v52;
  sub_2744E1C00(v22, v18);
  v24 = sub_274639C3C();
  v25 = (*(v16 + 8))(v18, v15);
  if (v24)
  {
    MEMORY[0x28223BE20](v25);
    v26 = *(v21 + 24);
    *(&v44 - 4) = v53;
    *(&v44 - 3) = v26;
    *(&v44 - 2) = v23;
    sub_27456E924(v9);
    sub_27463AD9C();
    swift_getWitnessTable();
    v28 = v45;
    v27 = v46;
    v29 = *(v46 + 16);
    v29(v45, v12, v10);
    v30 = *(v27 + 8);
    v30(v12, v10);
    v29(v12, v28, v10);
    swift_getWitnessTable();
    v31 = v54;
    sub_27456E7CC();
    v30(v12, v10);
    v30(v28, v10);
  }

  else
  {
    v32 = sub_274639C6C();
    MEMORY[0x28223BE20](v32);
    v33 = *(v21 + 24);
    *(&v44 - 4) = v53;
    *(&v44 - 3) = v33;
    *(&v44 - 2) = v23;
    v34 = v50;
    sub_27463AE5C();
    swift_getWitnessTable();
    v35 = v51;
    v36 = *(v51 + 16);
    v37 = v49;
    v36(v49, v34, v5);
    v38 = *(v35 + 8);
    v38(v34, v5);
    v36(v34, v37, v5);
    swift_getWitnessTable();
    v31 = v54;
    sub_27456E878();
    v38(v34, v5);
    v38(v37, v5);
  }

  v39 = swift_getWitnessTable();
  v40 = swift_getWitnessTable();
  v58 = v39;
  v59 = v40;
  v41 = v56;
  swift_getWitnessTable();
  v42 = v55;
  (*(v55 + 16))(v57, v31, v41);
  return (*(v42 + 8))(v31, v41);
}

uint64_t sub_2744E6360@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v32 = a2;
  v33 = a3;
  swift_getTupleTypeMetadata2();
  sub_27463B19C();
  swift_getWitnessTable();
  sub_27463ADAC();
  swift_getTupleTypeMetadata3();
  sub_27463B19C();
  swift_getWitnessTable();
  v28 = sub_27463AE6C();
  v4 = sub_274639DEC();
  v30 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v28 - v5;
  v7 = sub_27463965C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v29 = &v28 - v12;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094F008, &qword_274653FF8);
  MEMORY[0x28223BE20](v31);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v28 - v16;
  v19 = type metadata accessor for ParameterLayoutView(0, a1, v32, v18);
  sub_2744E682C(v19, v17);
  sub_2744E5CC0(v19, v6);
  sub_27463B0EC();
  WitnessTable = swift_getWitnessTable();
  v21 = swift_getWitnessTable();
  v40[5] = WitnessTable;
  v40[6] = v21;
  v22 = swift_getWitnessTable();
  sub_27463A8FC();
  (*(v30 + 8))(v6, v4);
  v40[3] = v22;
  v40[4] = MEMORY[0x277CDF678];
  v23 = swift_getWitnessTable();
  v24 = *(v8 + 16);
  v25 = v29;
  v24(v29, v10, v7);
  v26 = *(v8 + 8);
  v26(v10, v7);
  sub_27445EAD4(v17, v14, &qword_28094F008, &qword_274653FF8);
  v38 = 0x4034000000000000;
  v39 = 0;
  v40[0] = v14;
  v40[1] = &v38;
  v24(v10, v25, v7);
  v40[2] = v10;
  v37[0] = v31;
  v37[1] = MEMORY[0x277CE1180];
  v37[2] = v7;
  v34 = sub_2744E8FE4();
  v35 = MEMORY[0x277CE1170];
  v36 = v23;
  sub_274575750(v40, 3, v37);
  v26(v25, v7);
  sub_27440CB1C(v17, &qword_28094F008, &qword_274653FF8);
  v26(v10, v7);
  return sub_27440CB1C(v14, &qword_28094F008, &qword_274653FF8);
}

uint64_t sub_2744E682C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v69 = a2;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094F128, &qword_274654150);
  MEMORY[0x28223BE20](v67);
  v68 = &v56 - v4;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094F130, &qword_274654158);
  MEMORY[0x28223BE20](v56);
  v58 = &v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v57 = &v56 - v7;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094F0C8, &qword_274654110);
  MEMORY[0x28223BE20](v66);
  v59 = (&v56 - v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094F008, &qword_274653FF8);
  MEMORY[0x28223BE20](v9 - 8);
  v65 = &v56 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094F138, &qword_274654160);
  v62 = *(v11 - 8);
  v63 = v11;
  MEMORY[0x28223BE20](v11);
  v13 = &v56 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094F0F8, &qword_274654128);
  v15 = v14 - 8;
  MEMORY[0x28223BE20](v14);
  v61 = &v56 - v16;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094F0E8, &qword_274654120);
  MEMORY[0x28223BE20](v70);
  v64 = &v56 - v17;
  v60 = v2;
  sub_2744E78E8();
  sub_2744E81FC();
  v18 = sub_27463A50C();
  v20 = v19;
  v22 = v21;
  v24 = v23;

  v25 = sub_27463A38C();
  sub_2746390AC();
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v22 &= 1u;
  __dst[0] = v22;
  LOBYTE(v73[0]) = 0;
  KeyPath = swift_getKeyPath();
  v71[0] = 0;
  *&v73[0] = v18;
  *(&v73[0] + 1) = v20;
  LOBYTE(v73[1]) = v22;
  *(&v73[1] + 1) = v24;
  LOBYTE(v73[2]) = v25;
  *(&v73[2] + 1) = v27;
  *&v73[3] = v29;
  *(&v73[3] + 1) = v31;
  *&v73[4] = v33;
  BYTE8(v73[4]) = 0;
  *&v73[5] = KeyPath;
  *(&v73[5] + 1) = 6;
  LOBYTE(v73[6]) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094F100, &unk_274654130);
  sub_2744E92A8();
  sub_27463A7BC();
  memcpy(__dst, v73, 0x61uLL);
  v35 = v61;
  sub_27440CB1C(__dst, &qword_28094F100, &unk_274654130);
  sub_2744E20CC(a1, v73);
  LOBYTE(v24) = *(&v73[1] + 1) == 0;
  sub_27440CB1C(v73, &unk_2809507C0, &qword_274649C60);
  (*(v62 + 32))(v35, v13, v63);
  v36 = *(v15 + 44);
  v37 = a1;
  v38 = (v35 + v36);
  *v38 = 0;
  v38[1] = v24;
  sub_2744E20CC(a1, v71);
  if (!v72)
  {
    sub_27440CB1C(v71, &unk_2809507C0, &qword_274649C60);
    goto LABEL_6;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094F0B0, &qword_274659E00);
  if (!swift_dynamicCast())
  {
LABEL_6:
    memset(v73, 0, 32);
    v73[2] = xmmword_274653F30;
    sub_27440CB1C(v73, &qword_280951AF0, &unk_274654100);
    v41 = v64;
    v40 = v65;
    v42 = v70;
    goto LABEL_7;
  }

  v39 = *&v73[2];
  sub_27440CB1C(v73, &qword_280951AF0, &unk_274654100);
  v41 = v64;
  v40 = v65;
  v42 = v70;
  if (v39 != 1)
  {
    v43 = sub_274639FAC();
    goto LABEL_8;
  }

LABEL_7:
  v43 = sub_274639F8C();
LABEL_8:
  v44 = v43;
  sub_27445EA84(v35, v41, &qword_28094F0F8, &qword_274654128);
  *(v41 + *(v42 + 36)) = v44;
  sub_2744E1E04(v37, v73);
  if (BYTE8(v73[0]))
  {
    sub_27445EAD4(v41, v68, &qword_28094F0E8, &qword_274654120);
    swift_storeEnumTagMultiPayload();
    sub_2744E9070();
    sub_2744E9128();
    sub_274639DDC();
  }

  else
  {
    v45 = sub_274639B2C();
    v46 = v59;
    *v59 = v45;
    *(v46 + 8) = 0;
    *(v46 + 16) = 0;
    v47 = v46 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094F140, &qword_274654198) + 44);
    v48 = swift_getKeyPath();
    v49 = v57;
    sub_27445EAD4(v41, v57, &qword_28094F0E8, &qword_274654120);
    v50 = v49 + *(v56 + 36);
    *v50 = v48;
    *(v50 + 8) = 2;
    v51 = v58;
    sub_27445EAD4(v49, v58, &qword_28094F130, &qword_274654158);
    *v47 = 0;
    *(v47 + 8) = 0;
    v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094F148, &qword_2746541D0);
    sub_27445EAD4(v51, v47 + *(v52 + 48), &qword_28094F130, &qword_274654158);
    sub_27440CB1C(v49, &qword_28094F130, &qword_274654158);
    sub_27440CB1C(v51, &qword_28094F130, &qword_274654158);
    sub_27463B0CC();
    sub_2746392FC();
    v53 = (v46 + *(v66 + 36));
    v54 = v73[1];
    *v53 = v73[0];
    v53[1] = v54;
    v53[2] = v73[2];
    sub_27445EAD4(v46, v68, &qword_28094F0C8, &qword_274654110);
    swift_storeEnumTagMultiPayload();
    sub_2744E9070();
    sub_2744E9128();
    sub_274639DDC();
    sub_27440CB1C(v46, &qword_28094F0C8, &qword_274654110);
  }

  sub_27445EA84(v40, v69, &qword_28094F008, &qword_274653FF8);
  return sub_27440CB1C(v41, &qword_28094F0E8, &qword_274654120);
}

uint64_t sub_2744E6FF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v64 = a2;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_28094F010, &unk_274654000);
  v3 = *(a1 + 16);
  swift_getTupleTypeMetadata2();
  sub_27463B19C();
  swift_getWitnessTable();
  sub_27463ADAC();
  v58 = v3;
  swift_getTupleTypeMetadata3();
  sub_27463B19C();
  swift_getWitnessTable();
  sub_27463AE6C();
  sub_274639DEC();
  swift_getTupleTypeMetadata3();
  v4 = sub_27463B19C();
  WitnessTable = swift_getWitnessTable();
  v54 = v4;
  v5 = sub_27463ADAC();
  v56 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v55 = &v48 - v9;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094F008, &qword_274653FF8);
  swift_getTupleTypeMetadata3();
  sub_27463B19C();
  v48 = swift_getWitnessTable();
  v10 = sub_27463AE6C();
  v50 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v49 = &v48 - v11;
  v63 = v12;
  v13 = sub_27463965C();
  v52 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v15 = &v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v51 = &v48 - v17;
  v18 = sub_274639C4C();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = &v48 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = v5;
  v22 = sub_274639DEC();
  v61 = *(v22 - 8);
  v62 = v22;
  MEMORY[0x28223BE20](v22);
  v59 = &v48 - v23;
  v24 = v57;
  sub_2744E1C00(a1, v21);
  v25 = sub_274639C3C();
  v26 = (*(v19 + 8))(v21, v18);
  if (v25)
  {
    v27 = sub_274639C6C();
    MEMORY[0x28223BE20](v27);
    v28 = *(a1 + 24);
    *(&v48 - 4) = v58;
    *(&v48 - 3) = v28;
    *(&v48 - 2) = v24;
    v29 = v49;
    sub_27463AE5C();
    sub_27463A38C();
    v30 = v63;
    v31 = swift_getWitnessTable();
    sub_27463A9FC();
    (*(v50 + 8))(v29, v30);
    v65 = v31;
    v66 = MEMORY[0x277CDF918];
    v58 = swift_getWitnessTable();
    v32 = v52;
    v33 = *(v52 + 16);
    v34 = v51;
    v33(v51, v15, v13);
    v35 = *(v32 + 8);
    v35(v15, v13);
    v33(v15, v34, v13);
    swift_getWitnessTable();
    v36 = v59;
    sub_27456E7CC();
    v35(v15, v13);
    v35(v34, v13);
  }

  else
  {
    MEMORY[0x28223BE20](v26);
    v37 = *(a1 + 24);
    *(&v48 - 4) = v58;
    *(&v48 - 3) = v37;
    *(&v48 - 2) = v24;
    sub_27456E924(v54);
    sub_27463AD9C();
    v38 = v60;
    swift_getWitnessTable();
    v39 = v55;
    v40 = v56;
    v41 = *(v56 + 16);
    v41(v55, v7, v38);
    v42 = *(v40 + 8);
    v42(v7, v38);
    v41(v7, v39, v38);
    v71 = swift_getWitnessTable();
    v72 = MEMORY[0x277CDF918];
    swift_getWitnessTable();
    v36 = v59;
    sub_27456E878();
    v42(v7, v38);
    v42(v39, v38);
  }

  v69 = swift_getWitnessTable();
  v70 = MEMORY[0x277CDF918];
  v43 = swift_getWitnessTable();
  v44 = swift_getWitnessTable();
  v67 = v43;
  v68 = v44;
  v45 = v62;
  swift_getWitnessTable();
  v46 = v61;
  (*(v61 + 16))(v64, v36, v45);
  return (*(v46 + 8))(v36, v45);
}

uint64_t sub_2744E78E8()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_2744E7918@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v25 = a2;
  v26 = a3;
  swift_getTupleTypeMetadata2();
  sub_27463B19C();
  swift_getWitnessTable();
  sub_27463ADAC();
  swift_getTupleTypeMetadata3();
  sub_27463B19C();
  swift_getWitnessTable();
  sub_27463AE6C();
  v4 = sub_274639DEC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v24 - v9;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094F008, &qword_274653FF8);
  MEMORY[0x28223BE20](v24);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v24 - v14;
  v17 = type metadata accessor for ParameterLayoutView(0, a1, v25, v16);
  sub_2744E682C(v17, v15);
  sub_2744E5CC0(v17, v7);
  WitnessTable = swift_getWitnessTable();
  v19 = swift_getWitnessTable();
  v33[3] = WitnessTable;
  v33[4] = v19;
  v20 = swift_getWitnessTable();
  v21 = *(v5 + 16);
  v21(v10, v7, v4);
  v22 = *(v5 + 8);
  v22(v7, v4);
  sub_27445EAD4(v15, v12, &qword_28094F008, &qword_274653FF8);
  v31 = 0;
  v32 = 1;
  v33[0] = v12;
  v33[1] = &v31;
  v21(v7, v10, v4);
  v33[2] = v7;
  v30[0] = v24;
  v30[1] = MEMORY[0x277CE1180];
  v30[2] = v4;
  v27 = sub_2744E8FE4();
  v28 = MEMORY[0x277CE1170];
  v29 = v20;
  sub_274575750(v33, 3, v30);
  v22(v10, v4);
  sub_27440CB1C(v15, &qword_28094F008, &qword_274653FF8);
  v22(v7, v4);
  return sub_27440CB1C(v12, &qword_28094F008, &qword_274653FF8);
}

uint64_t sub_2744E7CD4@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v33 = a2;
  v36 = a3;
  swift_getTupleTypeMetadata2();
  sub_27463B19C();
  swift_getWitnessTable();
  sub_27463ADAC();
  swift_getTupleTypeMetadata3();
  sub_27463B19C();
  swift_getWitnessTable();
  v35 = sub_27463AE6C();
  v4 = sub_274639DEC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v34 = &v31 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094F008, &qword_274653FF8);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v31 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_28094F010, &unk_274654000);
  v31 = v13;
  MEMORY[0x28223BE20](v13);
  v32 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v31 - v16;
  MEMORY[0x28223BE20](v18);
  v20 = &v31 - v19;
  v22 = type metadata accessor for ParameterLayoutView(0, a1, v33, v21);
  sub_2744E682C(v22, v12);
  sub_27463B0DC();
  sub_27463973C();
  sub_27445EA84(v12, v17, &qword_28094F008, &qword_274653FF8);
  memcpy(&v17[*(v13 + 36)], __src, 0x70uLL);
  sub_27445EA84(v17, v20, qword_28094F010, &unk_274654000);
  sub_2744E5CC0(v22, v7);
  WitnessTable = swift_getWitnessTable();
  v24 = swift_getWitnessTable();
  v41[3] = WitnessTable;
  v41[4] = v24;
  v25 = swift_getWitnessTable();
  v26 = *(v5 + 16);
  v27 = v34;
  v26(v34, v7, v4);
  v28 = *(v5 + 8);
  v28(v7, v4);
  v29 = v32;
  sub_27445EAD4(v20, v32, qword_28094F010, &unk_274654000);
  v39 = 0;
  v40 = 1;
  v41[0] = v29;
  v41[1] = &v39;
  v26(v7, v27, v4);
  v41[2] = v7;
  v38[0] = v31;
  v38[1] = MEMORY[0x277CE1180];
  v38[2] = v4;
  v37[0] = sub_2744E9414();
  v37[1] = MEMORY[0x277CE1170];
  v37[2] = v25;
  sub_274575750(v41, 3, v38);
  v28(v27, v4);
  sub_27440CB1C(v20, qword_28094F010, &unk_274654000);
  v28(v7, v4);
  return sub_27440CB1C(v29, qword_28094F010, &unk_274654000);
}

uint64_t sub_2744E81FC()
{
  sub_27463A46C();
  sub_27463A3EC();
  v0 = sub_27463A42C();

  return v0;
}

uint64_t sub_2744E823C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  v8 = v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = v19 - v10;
  v15 = type metadata accessor for ParameterLayoutView(0, v12, v13, v14);
  v16 = *(v6 + 16);
  v16(v11, a1 + *(v15 + 44), a2);
  v16(v8, v11, a2);
  v21 = 0;
  v22 = 0;
  v23[0] = v8;
  v23[1] = &v21;
  v20[0] = a2;
  v20[1] = MEMORY[0x277CE1180];
  v19[0] = a3;
  v19[1] = MEMORY[0x277CE1170];
  sub_274575750(v23, 2, v20);
  v17 = *(v6 + 8);
  v17(v11, a2);
  return (v17)(v8, a2);
}

uint64_t sub_2744E83CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  v8 = v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = v19 - v10;
  v15 = type metadata accessor for ParameterLayoutView(0, v12, v13, v14);
  v16 = *(v6 + 16);
  v16(v11, a1 + *(v15 + 44), a2);
  v23 = 0;
  v24 = 0;
  v25[0] = &v23;
  v16(v8, v11, a2);
  v21 = 0;
  v22 = 0;
  v25[1] = v8;
  v25[2] = &v21;
  v20[0] = MEMORY[0x277CE1180];
  v20[1] = a2;
  v20[2] = MEMORY[0x277CE1180];
  v19[1] = MEMORY[0x277CE1170];
  v19[2] = a3;
  v19[3] = MEMORY[0x277CE1170];
  sub_274575750(v25, 3, v20);
  v17 = *(v6 + 8);
  v17(v11, a2);
  return (v17)(v8, a2);
}

uint64_t sub_2744E8578@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094F098, &qword_2746540F0);
  v3 = v2 - 8;
  MEMORY[0x28223BE20](v2);
  v5 = &v14 - v4;
  sub_27463A0CC();
  v5[*(v3 + 44)] = 0;
  v6 = [objc_opt_self() systemGray4Color];
  sub_27463AB0C();
  sub_27463A0DC();
  v7 = sub_27463ABAC();

  if (sub_27463A0DC())
  {
    v8 = 0;
  }

  else
  {
    v8 = sub_27463B10C();
  }

  v9 = sub_27463B0CC();
  v11 = v10;
  sub_2744E8EFC(v5, a1);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094F0A0, &qword_2746540F8);
  v13 = (a1 + *(result + 36));
  *v13 = v7;
  v13[1] = v8;
  v13[2] = v9;
  v13[3] = v11;
  return result;
}

void sub_2744E8710(uint64_t a1)
{
  sub_2744E8E08(319, &qword_280950070, sub_274439BAC, type metadata accessor for Parameter);
  if (v1 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      sub_2744E8E6C(319, &unk_28094C490, &qword_280950E20, &qword_27464D880, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        sub_2744E8E08(319, qword_28094E1A8, MEMORY[0x277CE02A8], MEMORY[0x277CDF468]);
        if (v4 <= 0x3F)
        {
          sub_2744335D4(319, &qword_28094BC08, &type metadata for ParameterLayoutMode);
          if (v5 <= 0x3F)
          {
            sub_2744335D4(319, &unk_28094A600, &type metadata for EditorPresentationEnvironment);
            if (v6 <= 0x3F)
            {
              sub_2744E8E6C(319, &qword_28094A5F0, &unk_2809507C0, &qword_274649C60, MEMORY[0x277CDF468]);
              if (v7 <= 0x3F)
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

uint64_t sub_2744E8900(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = sub_274639C4C();
  v11 = *(v9 - 8);
  result = v9 - 8;
  v12 = v11;
  v13 = *(v11 + 64);
  v14 = 8;
  if (v13 > 8)
  {
    v14 = v13;
  }

  v15 = *(v6 + 80);
  if (!a2)
  {
    return 0;
  }

  if (v8 >= a2)
  {
LABEL_31:
    if ((v7 & 0x80000000) != 0)
    {

      return __swift_getEnumTagSinglePayload((((((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + v15 + 16) & ~v15, v7, v5);
    }

    else
    {
      v24 = *(a1 + 1);
      if (v24 >= 0xFFFFFFFF)
      {
        LODWORD(v24) = -1;
      }

      return (v24 + 1);
    }
  }

  else
  {
    v16 = *(v12 + 80) & 0xF8 | 7;
    v17 = ((((v14 + ((v16 + ((*(v6 + 64) + ((v15 + 48) & ~v15) + 7) & 0xFFFFFFFFFFFFFFF8) + 18) & ~v16) + 8) & 0xFFFFFFFFFFFFFFF8) + 33) & 0xFFFFFFFFFFFFFFF8) + 41;
    if (v17 <= 3)
    {
      v18 = ((a2 - v8 + 255) >> 8) + 1;
    }

    else
    {
      v18 = 2;
    }

    if (v18 >= 0x10000)
    {
      v19 = 4;
    }

    else
    {
      v19 = 2;
    }

    if (v18 < 0x100)
    {
      v19 = 1;
    }

    if (v18 >= 2)
    {
      v20 = v19;
    }

    else
    {
      v20 = 0;
    }

    switch(v20)
    {
      case 1:
        v21 = a1[v17];
        if (!a1[v17])
        {
          goto LABEL_31;
        }

        goto LABEL_24;
      case 2:
        v21 = *&a1[v17];
        if (!*&a1[v17])
        {
          goto LABEL_31;
        }

        goto LABEL_24;
      case 3:
        __break(1u);
        return result;
      case 4:
        v21 = *&a1[v17];
        if (!v21)
        {
          goto LABEL_31;
        }

LABEL_24:
        v22 = v17 > 3;
        if (v17 <= 3)
        {
          v23 = (v21 - 1) << (8 * v17);
        }

        else
        {
          v23 = 0;
        }

        if (v22)
        {
          v25 = *a1;
        }

        else
        {
          v25 = *a1;
        }

        result = v8 + (v25 | v23) + 1;
        break;
      default:
        goto LABEL_31;
    }
  }

  return result;
}

void sub_2744E8B54(uint64_t *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  if (v9 <= 0x7FFFFFFF)
  {
    v10 = 0x7FFFFFFF;
  }

  else
  {
    v10 = *(v8 + 84);
  }

  v11 = *(sub_274639C4C() - 8);
  v12 = 8;
  if (*(v11 + 64) > 8uLL)
  {
    v12 = *(v11 + 64);
  }

  v13 = *(v8 + 80);
  v14 = *(v11 + 80) & 0xF8 | 7;
  v15 = ((((v12 + ((v14 + ((*(v8 + 64) + ((v13 + 48) & ~v13) + 7) & 0xFFFFFFFFFFFFFFF8) + 18) & ~v14) + 8) & 0xFFFFFFFFFFFFFFF8) + 33) & 0xFFFFFFFFFFFFFFF8) + 41;
  if (v10 >= a3)
  {
    v18 = 0;
  }

  else
  {
    if (v15 <= 3)
    {
      v16 = ((a3 - v10 + 255) >> 8) + 1;
    }

    else
    {
      v16 = 2;
    }

    if (v16 >= 0x10000)
    {
      v17 = 4;
    }

    else
    {
      v17 = 2;
    }

    if (v16 < 0x100)
    {
      v17 = 1;
    }

    if (v16 >= 2)
    {
      v18 = v17;
    }

    else
    {
      v18 = 0;
    }
  }

  if (v10 >= a2)
  {
    switch(v18)
    {
      case 1:
        *(a1 + v15) = 0;
        if (a2)
        {
          goto LABEL_33;
        }

        break;
      case 2:
        *(a1 + v15) = 0;
        if (a2)
        {
          goto LABEL_33;
        }

        break;
      case 3:
LABEL_45:
        __break(1u);
        break;
      case 4:
        *(a1 + v15) = 0;
        goto LABEL_32;
      default:
LABEL_32:
        if (a2)
        {
LABEL_33:
          if ((v9 & 0x80000000) != 0)
          {

            __swift_storeEnumTagSinglePayload((((((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + v13 + 16) & ~v13, a2, v9, v7);
          }

          else if ((a2 & 0x80000000) != 0)
          {
            *a1 = a2 & 0x7FFFFFFF;
            a1[1] = 0;
          }

          else
          {
            a1[1] = (a2 - 1);
          }
        }

        break;
    }
  }

  else
  {
    v19 = ~v10 + a2;
    bzero(a1, v15);
    if (v15 <= 3)
    {
      v20 = (v19 >> 8) + 1;
    }

    else
    {
      v20 = 1;
    }

    if (v15 > 3)
    {
      *a1 = v19;
    }

    else
    {
      *a1 = v19;
    }

    switch(v18)
    {
      case 1:
        *(a1 + v15) = v20;
        break;
      case 2:
        *(a1 + v15) = v20;
        break;
      case 3:
        goto LABEL_45;
      case 4:
        *(a1 + v15) = v20;
        break;
      default:
        return;
    }
  }
}

void sub_2744E8E08(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_2744E8E6C(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_2744E8EFC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094F098, &qword_2746540F0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_2744E8F6C()
{
  result = qword_28094F0A8;
  if (!qword_28094F0A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094F0A8);
  }

  return result;
}

unint64_t sub_2744E8FE4()
{
  result = qword_28094F0B8;
  if (!qword_28094F0B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094F008, &qword_274653FF8);
    sub_2744E9070();
    sub_2744E9128();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094F0B8);
  }

  return result;
}

unint64_t sub_2744E9070()
{
  result = qword_28094F0C0;
  if (!qword_28094F0C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094F0C8, &qword_274654110);
    sub_27440CA78(&qword_28094F0D0, &qword_28094F0D8, &qword_274654118, MEMORY[0x277CE1138]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094F0C0);
  }

  return result;
}

unint64_t sub_2744E9128()
{
  result = qword_28094F0E0;
  if (!qword_28094F0E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094F0E8, &qword_274654120);
    sub_2744E91E0();
    sub_27440CA78(&qword_28094AA10, &qword_28094AA18, &qword_2746497E0, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094F0E0);
  }

  return result;
}

unint64_t sub_2744E91E0()
{
  result = qword_28094F0F0;
  if (!qword_28094F0F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094F0F8, &qword_274654128);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094F100, &unk_274654130);
    sub_2744E92A8();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094F0F0);
  }

  return result;
}

unint64_t sub_2744E92A8()
{
  result = qword_28094F108;
  if (!qword_28094F108)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094F100, &unk_274654130);
    sub_2744E9360();
    sub_27440CA78(&qword_28094F118, &qword_28094F120, &unk_274654140, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094F108);
  }

  return result;
}

unint64_t sub_2744E9360()
{
  result = qword_28094F110;
  if (!qword_28094F110)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280949FF0, &unk_274648860);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094F110);
  }

  return result;
}

unint64_t sub_2744E9414()
{
  result = qword_28094F150;
  if (!qword_28094F150)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_28094F010, &unk_274654000);
    sub_2744E8FE4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094F150);
  }

  return result;
}

unint64_t sub_2744E94A0()
{
  result = qword_28094F158;
  if (!qword_28094F158)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094F0A0, &qword_2746540F8);
    sub_2744E9558();
    sub_27440CA78(&qword_28094F170, &qword_28094F178, &qword_2746541D8, MEMORY[0x277CE0328]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094F158);
  }

  return result;
}

unint64_t sub_2744E9558()
{
  result = qword_28094F160;
  if (!qword_28094F160)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094F098, &qword_2746540F0);
    sub_2744E9640(&qword_28094F168, MEMORY[0x277CDE278], MEMORY[0x277CDE270]);
    sub_27440CA78(&unk_28094DE30, &qword_28094AA90, &qword_2746498B0, MEMORY[0x277CE0470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094F160);
  }

  return result;
}

uint64_t sub_2744E9640(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t OUTLINED_FUNCTION_11_9@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(v2 - 136) = result;
  *(v2 - 128) = a2;
  return result;
}

uint64_t OUTLINED_FUNCTION_15_7(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return swift_getTupleTypeMetadata3();
}

uint64_t VariableConfigurationAggrandizementsViewModel.init(variable:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

uint64_t sub_2744E9758@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + 16);
  v10[0] = *v1;
  v10[1] = v3;
  v4 = *(v1 + 48);
  v11 = *(v1 + 32);
  v12 = v4;
  v14 = *(v1 + 56);
  v5 = v14;
  v13 = *(v1 + 40);
  v6 = v11;
  sub_2744EBCAC(&v13, v9);
  v7 = sub_2744E97F4(v6);

  return sub_2744E98C0(v10, v7, a1);
}

uint64_t sub_2744E97F4(uint64_t a1)
{
  OUTLINED_FUNCTION_14_10();
  v2 = VariableConfigurationAggrandizementsViewModel.propertyAggrandizement.getter();
  if (v2)
  {
    v3 = v2;
    v4 = [v2 propertyName];
    if (!v4)
    {
      sub_27463B6AC();
      v4 = sub_27463B66C();
    }

    v5 = [swift_getObjCClassFromMetadata() propertyForName_];

    if (v5)
    {
      v6 = sub_27463BD1C();

      if (v6)
      {
        return v6;
      }
    }

    else
    {
    }
  }

  return a1;
}

uint64_t sub_2744E98C0@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v108 = a2;
  v109 = a3;
  v122 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094F1A8, &qword_274654340) - 8);
  MEMORY[0x28223BE20](v122);
  v113 = &v103 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v110 = (&v103 - v6);
  v7 = sub_274638B1C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v103 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094F1B0, &qword_274654348);
  v12 = v11 - 8;
  MEMORY[0x28223BE20](v11);
  v112 = &v103 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v14);
  v17 = (&v103 - v16);
  LODWORD(v121) = *MEMORY[0x277D7D450];
  v120 = *(v8 + 104);
  v120(v10, v15);
  v18 = swift_allocObject();
  v19 = a1[1];
  *(v18 + 1) = *a1;
  *(v18 + 2) = v19;
  v20 = a1[3];
  *(v18 + 3) = a1[2];
  *(v18 + 4) = v20;
  v21 = *(v12 + 64);
  v119 = *(v8 + 32);
  v119(v17 + v21, v10, v7);
  __swift_storeEnumTagSinglePayload(v17 + v21, 0, 1, v7);
  *(v17 + *(v12 + 68)) = 0;
  *v17 = sub_2744EBCE4;
  v17[1] = v18;
  v111 = v17;
  v22 = v10;
  (v120)(v10, v121, v7);
  v23 = swift_allocObject();
  v24 = a1[1];
  v23[1] = *a1;
  v23[2] = v24;
  v25 = a1[3];
  v23[3] = a1[2];
  v23[4] = v25;
  v26 = v122;
  v27 = v122[16];
  v28 = v110;
  v119(v110 + v27, v22, v7);
  __swift_storeEnumTagSinglePayload(v28 + v27, 0, 1, v7);
  *(v28 + v26[17]) = 0;
  *v28 = sub_2744EBD4C;
  v28[1] = v23;
  v29 = v28;
  sub_274412734(0, &qword_28094F1B8, 0x277CFC368);
  v30 = swift_dynamicCastMetatype();
  v31 = MEMORY[0x277D85700];
  if (v30)
  {
    v32 = a1[1];
    v127 = *a1;
    v128 = v32;
    v33 = a1[3];
    v129 = a1[2];
    v130 = v33;
    sub_2744EBD54(a1, v123);
    sub_2744EBD54(a1, v123);
    v34 = sub_2744EADB0();
    v35 = v34;
    if (v34)
    {
      v36 = [v34 timeUnits];
    }

    else
    {
      v36 = 0;
    }

    sub_27463B9CC();
    sub_2744EBD54(a1, &v127);
    v37 = sub_27463B9BC();
    v38 = swift_allocObject();
    *(v38 + 16) = v37;
    *(v38 + 24) = v31;
    v39 = a1[1];
    *(v38 + 32) = *a1;
    *(v38 + 48) = v39;
    v40 = a1[3];
    *(v38 + 64) = a1[2];
    *(v38 + 80) = v40;
    *(v38 + 96) = v36;
    v115 = v35 == 0;
    *(v38 + 104) = v115;
    sub_2744EBD54(a1, &v127);
    v41 = sub_27463B9BC();
    v42 = swift_allocObject();
    *(v42 + 16) = v41;
    *(v42 + 24) = v31;
    v43 = a1[1];
    *(v42 + 32) = *a1;
    *(v42 + 48) = v43;
    v44 = a1[3];
    *(v42 + 64) = a1[2];
    *(v42 + 80) = v44;
    sub_274412734(0, &qword_28094F1F0, 0x277D7C318);
    sub_27463AF0C();
    v45 = *(&v127 + 1);
    v46 = v128;
    v120 = v127;

    v119 = v45;

    v122 = v46;
    v47 = v46;
  }

  else
  {
    sub_2744EBD54(a1, &v127);
    sub_2744EBD54(a1, &v127);
    v36 = 0;
    v115 = 0;
    v120 = 0;
    v119 = 0;
    v122 = 0;
  }

  v121 = v36;
  sub_274412734(0, &qword_28094F1C0, 0x277CFC388);
  if (swift_dynamicCastMetatype())
  {
    sub_27463B9CC();
    sub_2744EBD54(a1, &v127);
    v48 = sub_27463B9BC();
    v49 = swift_allocObject();
    *(v49 + 16) = v48;
    *(v49 + 24) = v31;
    v50 = a1[1];
    *(v49 + 32) = *a1;
    *(v49 + 48) = v50;
    v51 = a1[3];
    *(v49 + 64) = a1[2];
    *(v49 + 80) = v51;
    sub_2744EBD54(a1, &v127);
    v52 = sub_27463B9BC();
    v53 = swift_allocObject();
    *(v53 + 16) = v52;
    *(v53 + 24) = v31;
    v54 = a1[1];
    *(v53 + 32) = *a1;
    *(v53 + 48) = v54;
    v55 = a1[3];
    *(v53 + 64) = a1[2];
    *(v53 + 80) = v55;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094F1E0, &unk_274654360);
    sub_27463AF0C();
    sub_274540484(v127, *(&v127 + 1), v128, v123);
    v56 = v123[1];
    v107 = *(&v125 + 1);
    v116 = v125;
    v118 = v123[0];
    v133 = v124;
    v134 = v123[0];
    v114 = v124;
    v132 = v125;
    v106 = v126;
    v131 = v126;
    sub_27445E9E4(&v134, &v127);
    v117 = v56;

    sub_274439BF0(&v133, &v127, &qword_28094F1E0, &unk_274654360);
    sub_27448E448(&v132, &v127);
    sub_274439BF0(&v131, &v127, &qword_28094F1E8, &qword_274658270);
  }

  else
  {
    v118 = 0;
    v117 = 0;
    v114 = 0;
    v116 = 0;
    v107 = 0;
    v106 = 0;
  }

  sub_274412734(0, &qword_28094F1C8, 0x277CFC458);
  if (swift_dynamicCastMetatype() && (v57 = a1[1], v127 = *a1, v128 = v57, v58 = a1[3], v129 = a1[2], v130 = v58, (v59 = sub_2744EADB0()) != 0) && (v60 = v59, v61 = [v59 measurementUnitType], v60, v61))
  {
    sub_27463B9CC();
    sub_2744EBD54(a1, &v127);
    v62 = sub_27463B9BC();
    v63 = swift_allocObject();
    *(v63 + 16) = v62;
    *(v63 + 24) = v31;
    v64 = a1[1];
    *(v63 + 32) = *a1;
    *(v63 + 48) = v64;
    v65 = a1[3];
    *(v63 + 64) = a1[2];
    *(v63 + 80) = v65;
    sub_2744EBD54(a1, &v127);
    v66 = sub_27463B9BC();
    v67 = swift_allocObject();
    *(v67 + 16) = v66;
    *(v67 + 24) = v31;
    v68 = a1[1];
    *(v67 + 32) = *a1;
    *(v67 + 48) = v68;
    v69 = a1[3];
    *(v67 + 64) = a1[2];
    *(v67 + 80) = v69;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094F1D8, &qword_274654358);
    sub_27463AF0C();
    v70 = v127;
    v105 = v128;
    v71 = v128;
    v104 = v61;
    v72 = v61;
    v108 = v70;

    v103 = *(&v70 + 1);
  }

  else
  {
    v104 = 0;
    v108 = 0;
    v103 = 0;
    v105 = 0;
  }

  v73 = v112;
  sub_274439BF0(v111, v112, &qword_28094F1B0, &qword_274654348);
  v74 = v113;
  sub_274439BF0(v29, v113, &qword_28094F1A8, &qword_274654340);
  v75 = v109;
  sub_274439BF0(v73, v109, &qword_28094F1B0, &qword_274654348);
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094F1D0, &qword_274654350);
  sub_274439BF0(v74, v75 + v76[12], &qword_28094F1A8, &qword_274654340);
  v77 = (v75 + v76[16]);
  v78 = v121;
  *v77 = v121;
  v79 = v78;
  v80 = v115;
  v77[1] = v115;
  v81 = v80;
  v115 = v80;
  v82 = v120;
  v77[2] = v120;
  v83 = v82;
  v120 = v82;
  v84 = v119;
  v77[3] = v119;
  v85 = v84;
  v119 = v84;
  v86 = v122;
  v77[4] = v122;
  v122 = v86;
  v87 = (v75 + v76[20]);
  v88 = v118;
  v89 = v117;
  *v87 = v118;
  v87[1] = v89;
  v90 = v114;
  v91 = v116;
  v87[2] = v114;
  v87[3] = v91;
  v92 = v107;
  v93 = v106;
  v87[4] = v107;
  v87[5] = v93;
  v109 = (v75 + v76[24]);
  sub_2744EBD8C(v79, v81, v83, v85, v86);
  v118 = v88;
  v117 = v89;
  v114 = v90;
  v116 = v91;
  sub_2744EBDE4(v88, v89, v90, v91, v92, v93);
  v94 = v104;
  v95 = v108;
  v96 = v103;
  v97 = v105;
  sub_2744EBE50(v104, v108, v103, v105);
  sub_2744EBEAC(v88, v89, v90);
  v98 = v115;
  v99 = v120;
  v100 = v119;
  sub_2744EBF18(v121, v115, v120, v119, v122);
  sub_2744EBF64(v94, v95, v96, v97);
  v101 = v109;
  *v109 = v94;
  v101[1] = v95;
  v101[2] = v96;
  v101[3] = v97;
  sub_274415174(v110, &qword_28094F1A8, &qword_274654340);
  sub_274415174(v111, &qword_28094F1B0, &qword_274654348);
  sub_2744EBF64(v94, v95, v96, v97);
  sub_2744EBEAC(v118, v117, v114);
  sub_2744EBF18(v121, v98, v99, v100, v122);
  sub_274415174(v113, &qword_28094F1A8, &qword_274654340);
  return sub_274415174(v112, &qword_28094F1B0, &qword_274654348);
}

uint64_t sub_2744EA4F8@<X0>(uint64_t a1@<X0>, uint64_t a4@<X8>)
{
  *v21 = *(a1 + 40);
  *&v21[16] = *(a1 + 56);
  result = sub_2744EA6A0();
  if (result)
  {
    *v21 = *a1;
    *&v21[16] = *(a1 + 16);
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094F180, &qword_2746541F0);
    MEMORY[0x277C575F0](&v22, v7);
    v8 = v22;
    v9 = sub_27463BB9C();

    sub_27463B9CC();
    sub_2744EBD54(a1, v21);
    v10 = sub_27463B9BC();
    v11 = swift_allocObject();
    v12 = MEMORY[0x277D85700];
    *(v11 + 16) = v10;
    *(v11 + 24) = v12;
    v13 = *(a1 + 16);
    *(v11 + 32) = *a1;
    *(v11 + 48) = v13;
    v14 = *(a1 + 48);
    *(v11 + 64) = *(a1 + 32);
    *(v11 + 80) = v14;
    sub_2744EBD54(a1, v21);
    v15 = sub_27463B9BC();
    v16 = swift_allocObject();
    *(v16 + 16) = v15;
    *(v16 + 24) = v12;
    v17 = *(a1 + 16);
    *(v16 + 32) = *a1;
    *(v16 + 48) = v17;
    v18 = *(a1 + 48);
    *(v16 + 64) = *(a1 + 32);
    *(v16 + 80) = v18;
    sub_274412734(0, &qword_28094F208, 0x277D7C258);
    result = sub_27463AF0C();
    v19 = *v21;
    v20 = *&v21[8];
  }

  else
  {
    v9 = 0;
    v19 = 0;
    v20 = 0uLL;
  }

  *a4 = v9;
  *(a4 + 8) = v19;
  *(a4 + 16) = v20;
  return result;
}

uint64_t sub_2744EA6A0()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v18 = *v0;
  v19 = v2;
  v20 = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094F180, &qword_2746541F0);
  MEMORY[0x277C575F0](&v17);
  v5 = v17;
  v6 = [v17 supportsAggrandizements];

  if (!v6)
  {
    goto LABEL_8;
  }

  v18 = v1;
  v19 = v2;
  v20 = v3;
  MEMORY[0x277C575F0](&v17, v4);
  v7 = v17;
  v8 = [v17 type];

  v9 = sub_27463B6AC();
  v11 = v10;

  if (v9 == sub_27463B6AC() && v11 == v12)
  {

LABEL_8:
    v15 = 0;
    return v15 & 1;
  }

  v14 = sub_27463C6BC();

  v15 = v14 ^ 1;
  return v15 & 1;
}

id sub_2744EA7E8@<X0>(void *a2@<X8>)
{
  result = [objc_allocWithZone(MEMORY[0x277D7C258]) initWithCoercionItemClass_];
  *a2 = result;
  return result;
}

uint64_t VariableConfigurationAggrandizementsViewModel.apply(_:)()
{
  OUTLINED_FUNCTION_4_19();
  OUTLINED_FUNCTION_10_13();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094F180, &qword_2746541F0);
  MEMORY[0x277C575F0](v19);
  v2 = v19[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094F188, &qword_2746541F8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_274648570;
  *(inited + 32) = v0;
  v19[1] = MEMORY[0x277D84F90];
  v4 = v0;
  v5 = *(inited + 32);
  if (v5)
  {
    v6 = v5;
    MEMORY[0x277C57F30]();
    OUTLINED_FUNCTION_3_22();
    if (v8)
    {
      OUTLINED_FUNCTION_2_18(v7);
      sub_27463B85C();
    }

    sub_27463B8AC();
  }

  swift_setDeallocating();
  sub_2744EBC28(&qword_28094F1A0, &qword_274654270);
  sub_274412734(0, &unk_28094F190, 0x277D7CA00);
  v9 = sub_27463B7FC();

  v11 = OUTLINED_FUNCTION_13_9(v10, sel_variableBySettingAggrandizements_);

  OUTLINED_FUNCTION_10_13();
  v19[0] = v11;

  v12 = v1;
  OUTLINED_FUNCTION_17_8(v12, v13, v14, v15, v16, v17);
}

void *sub_2744EA9FC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(a1 + 32);
  v5 = [swift_getObjCClassFromMetadata() allProperties];
  sub_274412734(0, &qword_28094F1F8, 0x277CFC330);
  sub_27463B81C();

  v6 = sub_274453594();

  if (v6)
  {
    sub_27463B9CC();
    sub_2744EBD54(a1, v21);
    v8 = sub_27463B9BC();
    v9 = swift_allocObject();
    v10 = MEMORY[0x277D85700];
    *(v9 + 16) = v8;
    *(v9 + 24) = v10;
    v11 = *(a1 + 16);
    *(v9 + 32) = *a1;
    *(v9 + 48) = v11;
    v12 = *(a1 + 48);
    *(v9 + 64) = *(a1 + 32);
    *(v9 + 80) = v12;
    sub_2744EBD54(a1, v21);
    v13 = sub_27463B9BC();
    v14 = swift_allocObject();
    *(v14 + 16) = v13;
    *(v14 + 24) = v10;
    v15 = *(a1 + 16);
    *(v14 + 32) = *a1;
    *(v14 + 48) = v15;
    v16 = *(a1 + 48);
    *(v14 + 64) = *(a1 + 32);
    *(v14 + 80) = v16;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094F200, &qword_274654370);
    result = sub_27463AF0C();
    v17 = v21[0];
    v18 = v21[1];
    v19 = v21[2];
    v20 = *(a1 + 24);
  }

  else
  {
    v17 = 0;
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v4 = 0;
  }

  *a2 = v17;
  a2[1] = v18;
  a2[2] = v19;
  a2[3] = v20;
  a2[4] = v4;
  return result;
}

void VariableConfigurationAggrandizementsViewModel.apply(_:)()
{
  OUTLINED_FUNCTION_4_19();
  OUTLINED_FUNCTION_10_13();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094F180, &qword_2746541F0);
  MEMORY[0x277C575F0](v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094F188, &qword_2746541F8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2746486A0;
  OUTLINED_FUNCTION_10_13();
  *(inited + 32) = VariableConfigurationAggrandizementsViewModel.coercionAggrandizement.getter();
  *(inited + 40) = v0;
  v7[1] = MEMORY[0x277D84F90];
  v2 = v0;
  while (1)
  {
    do
    {
      OUTLINED_FUNCTION_5_21();
    }

    while (!v3);
    v4 = v3;
    MEMORY[0x277C57F30]();
    OUTLINED_FUNCTION_3_22();
    if (v6)
    {
      OUTLINED_FUNCTION_2_18(v5);
      sub_27463B85C();
    }

    sub_27463B8AC();
  }
}

id sub_2744EADB0()
{
  v16 = *v0;
  v17 = *(v0 + 1);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094F180, &qword_2746541F0);
  MEMORY[0x277C575F0](&v15, v1);
  v2 = v15;
  v3 = [v15 aggrandizements];

  sub_274412734(0, &unk_28094F190, 0x277D7CA00);
  v4 = sub_27463B81C();

  v5 = MEMORY[0x277D84F90];
  v16 = MEMORY[0x277D84F90];
  v6 = sub_274453594();
  v7 = 0;
  while (v6 != v7)
  {
    if ((v4 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x277C58B20](v7, v4);
    }

    else
    {
      if (v7 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_24;
      }

      v8 = *(v4 + 8 * v7 + 32);
    }

    v9 = v8;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
LABEL_24:
      __break(1u);
LABEL_25:
      v10 = MEMORY[0x277C58B20](0, v5);
      goto LABEL_16;
    }

    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      MEMORY[0x277C57F30]();
      if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_27463B85C();
      }

      sub_27463B8AC();
      v5 = v16;
      ++v7;
    }

    else
    {

      ++v7;
    }
  }

  if (!sub_274453594())
  {

    return 0;
  }

  sub_2744535A4();
  if ((v5 & 0xC000000000000001) != 0)
  {
    goto LABEL_25;
  }

  v10 = *(v5 + 32);
LABEL_16:
  v11 = v10;

  v12 = [v11 propertyName];
  if (!v12)
  {
    sub_27463B6AC();
    v12 = sub_27463B66C();
  }

  v13 = [swift_getObjCClassFromMetadata() propertyForName_];

  if (!v13)
  {
    return 0;
  }

  return v13;
}

uint64_t sub_2744EB038@<X0>(uint64_t a1@<X2>, __int16 a2@<W3>, char a3@<W4>, uint64_t *a4@<X8>)
{
  v17 = *(a1 + 40);
  v18 = *(a1 + 56);
  sub_2744EBCAC(&v17, v16);
  v7 = VariableConfigurationAggrandizementsViewModel.dateAggrandizement.getter();
  if (!v7)
  {
    if (a3)
    {
      goto LABEL_5;
    }

    if ((a2 & 0xE0) == 0)
    {
      sub_274412734(0, &qword_28094F1F0, 0x277D7C318);
      v9 = *MEMORY[0x277CFC678];
      v10 = MEMORY[0x277CFC680];
      goto LABEL_7;
    }

    if ((a2 & 0x201C) != 0)
    {
LABEL_5:
      sub_274412734(0, &qword_28094F1F0, 0x277D7C318);
      v8 = MEMORY[0x277CFC678];
    }

    else
    {
      sub_274412734(0, &qword_28094F1F0, 0x277D7C318);
      v8 = MEMORY[0x277CFC680];
    }

    v9 = *v8;
    v10 = MEMORY[0x277CFC698];
LABEL_7:
    v11 = *v10;
    v12 = v9;
    v13 = v11;
    v7 = sub_2744EBB30(v9, v11, 0);
  }

  v14 = v7;
  result = sub_2744EC0C0(&v17);
  *a4 = v14;
  return result;
}

id sub_2744EB1A0(void *a1, uint64_t (*a2)(uint64_t), void (*a3)(void, BOOL, uint64_t))
{
  v19 = *v3;
  v20 = *(v3 + 8);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094F180, &qword_2746541F0);
  MEMORY[0x277C575F0](&v18, v4);
  v5 = v18;
  v6 = [v18 aggrandizements];

  sub_274412734(0, &unk_28094F190, 0x277D7CA00);
  v7 = sub_27463B81C();

  v8 = MEMORY[0x277D84F90];
  v19 = MEMORY[0x277D84F90];
  v9 = sub_274453594();
  v10 = 0;
  while (v9 != v10)
  {
    if ((v7 & 0xC000000000000001) != 0)
    {
      v11 = MEMORY[0x277C58B20](v10, v7);
    }

    else
    {
      if (v10 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_20;
      }

      v11 = *(v7 + 8 * v10 + 32);
    }

    v12 = v11;
    if (__OFADD__(v10, 1))
    {
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      v13 = MEMORY[0x277C58B20](0, v8);
      goto LABEL_16;
    }

    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      MEMORY[0x277C57F30]();
      if (*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_27463B85C();
      }

      sub_27463B8AC();
      v8 = v19;
      ++v10;
    }

    else
    {

      ++v10;
    }
  }

  if (a2(v8))
  {
    a3(0, (v8 & 0xC000000000000001) == 0, v8);
    if ((v8 & 0xC000000000000001) != 0)
    {
      goto LABEL_21;
    }

    v13 = *(v8 + 32);
LABEL_16:
    v14 = v13;

    return v14;
  }

  return 0;
}

uint64_t sub_2744EB3C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  OUTLINED_FUNCTION_6_11(a1, a2, a3, a4, a5, a6, a7, a8, v12, v13, v14, v15, v16, v17);
  v8(v9);
}

uint64_t sub_2744EB808(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  OUTLINED_FUNCTION_6_11(a1, a2, a3, a4, a5, a6, a7, a8, v12, v13, v14, v15, v16, v17);
  v8(v9);
}

uint64_t VariableConfigurationAggrandizementsViewModel.coercionAggrandizement.getter()
{
  OUTLINED_FUNCTION_14_10();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094F180, &qword_2746541F0);
  MEMORY[0x277C575F0](&v7, v0);
  v1 = v7;
  v2 = [v7 aggrandizements];

  sub_274412734(0, &unk_28094F190, 0x277D7CA00);
  v3 = sub_27463B81C();

  if (!sub_274453594())
  {

    return 0;
  }

  sub_2744535A4();
  if ((v3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x277C58B20](0, v3);
  }

  else
  {
    v4 = *(v3 + 32);
  }

  v5 = v4;

  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  if (!result)
  {

    return 0;
  }

  return result;
}

id sub_2744EBB30(void *a1, void *a2, void *a3)
{
  v6 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithDateStyle:a1 timeStyle:a2 relativeDateStyle:a3];

  return v6;
}

uint64_t sub_2744EBB98()
{
  swift_arrayDestroy();
  v0 = OUTLINED_FUNCTION_38_2();

  return MEMORY[0x2821FE8D8](v0);
}

uint64_t sub_2744EBBEC()
{
  swift_arrayDestroy();
  v0 = OUTLINED_FUNCTION_38_2();

  return MEMORY[0x2821FE8D8](v0);
}

uint64_t sub_2744EBC28(uint64_t *a1, uint64_t *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  swift_arrayDestroy();
  v2 = OUTLINED_FUNCTION_38_2();

  return MEMORY[0x2821FE8D8](v2);
}

uint64_t objectdestroyTm_6()
{

  return swift_deallocObject();
}

void sub_2744EBD8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (a4)
  {

    v5 = a5;
  }
}

double sub_2744EBDE4(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2)
  {

    v7 = a3;
  }

  return result;
}

void *sub_2744EBE50(void *result, uint64_t a2, uint64_t a3, void *a4)
{
  if (result)
  {
    v4 = result;
    v5 = a4;
    v6 = v4;
  }

  return result;
}

uint64_t sub_2744EBEAC(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_2744EBF18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  if (a4)
  {
  }

  return result;
}

void sub_2744EBF64(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a1)
  {
  }
}

id sub_2744EBFC4@<X0>(void *a1@<X8>)
{
  result = VariableConfigurationAggrandizementsViewModel.unitAggrandizement.getter();
  *a1 = result;
  return result;
}

id sub_2744EC020@<X0>(void *a1@<X8>)
{
  result = VariableConfigurationAggrandizementsViewModel.dictionaryAggrandizement.getter();
  *a1 = result;
  return result;
}

id sub_2744EC0F0@<X0>(uint64_t *a1@<X8>)
{
  result = VariableConfigurationAggrandizementsViewModel.propertyAggrandizement.getter();
  *a1 = result;
  return result;
}

uint64_t objectdestroy_10Tm()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

unint64_t sub_2744EC1FC()
{
  result = qword_28094F210;
  if (!qword_28094F210)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094F218, &qword_274654378);
    sub_2744EC280();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094F210);
  }

  return result;
}

unint64_t sub_2744EC280()
{
  result = qword_28094F220;
  if (!qword_28094F220)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_28094F228, &qword_274654380);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094F220);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_6_11(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, __int128 a13, uint64_t a14)
{
  a13 = *(a4 + 40);
  a14 = *(a4 + 56);

  return sub_2744EBCAC(&a13, &a10);
}

uint64_t OUTLINED_FUNCTION_7_18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{

  return sub_27463AEBC();
}

void OUTLINED_FUNCTION_11_10()
{

  JUMPOUT(0x277C575F0);
}

uint64_t OUTLINED_FUNCTION_12_9()
{

  return sub_27463B8AC();
}

id OUTLINED_FUNCTION_13_9(uint64_t a1, const char *a2)
{

  return [v3 a2];
}

uint64_t OUTLINED_FUNCTION_17_8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{

  return sub_27463AEBC();
}

void sub_2744EC474(uint64_t a1)
{
  sub_2744F28BC(319, &qword_28094A888, MEMORY[0x277D85048], MEMORY[0x277CDF468]);
  if (v1 <= 0x3F)
  {
    sub_2744ECA38(319, &qword_28094C4D0, &qword_28094C4D8, &qword_27464D890, MEMORY[0x277CDF468]);
    if (v2 <= 0x3F)
    {
      sub_274480F90(319);
      if (v3 <= 0x3F)
      {
        sub_274481024(319);
        if (v4 <= 0x3F)
        {
          sub_2744F28BC(319, &qword_28094F2B0, &type metadata for ActionSummarySection, MEMORY[0x277D83D88]);
          if (v5 <= 0x3F)
          {
            sub_2744ECA38(319, &unk_28094C490, &qword_280950E20, &qword_27464D880, MEMORY[0x277D83D88]);
            if (v6 <= 0x3F)
            {
              swift_checkMetadataState();
              if (v7 <= 0x3F)
              {
                sub_2744ECA38(319, &unk_28094C480, &unk_2809540F0, ">%", MEMORY[0x277D83D88]);
                if (v8 <= 0x3F)
                {
                  type metadata accessor for CGPoint(319);
                  if (v9 <= 0x3F)
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

uint64_t sub_2744EC690(uint64_t result, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 80);
  if (v6 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v5 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v8 >= a2)
  {
LABEL_26:
    v17 = result & 0xFFFFFFFFFFFFFFF8;
    if ((v6 & 0x80000000) != 0)
    {
      return __swift_getEnumTagSinglePayload((((((((v17 + 55) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 79) & 0xFFFFFFFFFFFFFFF8) + v7 + 17) & ~v7, v6, v4);
    }

    else
    {
      v18 = *(v17 + 40);
      if (v18 >= 0xFFFFFFFF)
      {
        LODWORD(v18) = -1;
      }

      return (v18 + 1);
    }
  }

  else
  {
    v9 = ((((((((*(*(v4 - 8) + 64) + ((v7 + 153) & ~v7) + 7) & 0xFFFFFFFFFFFFFFF8) + 26) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
    v10 = a2 - v8;
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

    switch(v14)
    {
      case 1:
        v15 = *(result + v9);
        if (!v15)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 2:
        v15 = *(result + v9);
        if (!v15)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 3:
        __break(1u);
        return result;
      case 4:
        v15 = *(result + v9);
        if (!v15)
        {
          goto LABEL_26;
        }

LABEL_22:
        v16 = v15 - 1;
        if (v11)
        {
          v16 = 0;
          LODWORD(v11) = *result;
        }

        result = v8 + (v11 | v16) + 1;
        break;
      default:
        goto LABEL_26;
    }
  }

  return result;
}

void sub_2744EC80C(unint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  if (v8 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = *(v7 + 84);
  }

  v10 = *(v7 + 80);
  v11 = ((((((((*(*(v6 - 8) + 64) + ((v10 + 153) & ~v10) + 7) & 0xFFFFFFFFFFFFFFF8) + 26) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v9 >= a3)
  {
    v15 = 0;
  }

  else
  {
    v12 = a3 - v9;
    if (((((((((*(*(v6 - 8) + 64) + ((v10 + 153) & ~v10) + 7) & 0xFFFFFFF8) + 26) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v13 = v12 + 1;
    }

    else
    {
      v13 = 2;
    }

    if (v13 >= 0x10000)
    {
      v14 = 4;
    }

    else
    {
      v14 = 2;
    }

    if (v13 < 0x100)
    {
      v14 = 1;
    }

    if (v13 >= 2)
    {
      v15 = v14;
    }

    else
    {
      v15 = 0;
    }
  }

  if (a2 <= v9)
  {
    switch(v15)
    {
      case 1:
        *(a1 + v11) = 0;
        if (a2)
        {
          goto LABEL_32;
        }

        break;
      case 2:
        *(a1 + v11) = 0;
        if (a2)
        {
          goto LABEL_32;
        }

        break;
      case 3:
LABEL_42:
        __break(1u);
        break;
      case 4:
        *(a1 + v11) = 0;
        goto LABEL_31;
      default:
LABEL_31:
        if (a2)
        {
LABEL_32:
          v18 = a1 & 0xFFFFFFFFFFFFFFF8;
          if ((v8 & 0x80000000) != 0)
          {

            __swift_storeEnumTagSinglePayload((((((((v18 + 55) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 79) & 0xFFFFFFFFFFFFFFF8) + v10 + 17) & ~v10, a2, v8, v6);
          }

          else if ((a2 & 0x80000000) != 0)
          {
            *(v18 + 32) = a2 & 0x7FFFFFFF;
            *(v18 + 40) = 0;
          }

          else
          {
            *(v18 + 40) = (a2 - 1);
          }
        }

        break;
    }
  }

  else
  {
    if (((((((((*(*(v6 - 8) + 64) + ((v10 + 153) & ~v10) + 7) & 0xFFFFFFF8) + 26) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v16 = a2 - v9;
    }

    else
    {
      v16 = 1;
    }

    if (((((((((*(*(v6 - 8) + 64) + ((v10 + 153) & ~v10) + 7) & 0xFFFFFFF8) + 26) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v17 = ~v9 + a2;
      bzero(a1, v11);
      *a1 = v17;
    }

    switch(v15)
    {
      case 1:
        *(a1 + v11) = v16;
        break;
      case 2:
        *(a1 + v11) = v16;
        break;
      case 3:
        goto LABEL_42;
      case 4:
        *(a1 + v11) = v16;
        break;
      default:
        return;
    }
  }
}

void sub_2744ECA38(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_2744ECAE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v41 = a2;
  sub_274639ABC();
  OUTLINED_FUNCTION_1();
  v37 = v5;
  v38 = v4;
  MEMORY[0x28223BE20](v4);
  v36 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094F2B8, &qword_274654430);
  v8 = *(a1 + 16);
  v9 = *(a1 + 24);
  v39 = v8;
  type metadata accessor for ActionAttributionView(255, v8, v9, v10);
  sub_27463965C();
  OUTLINED_FUNCTION_26_0();
  sub_27463965C();
  OUTLINED_FUNCTION_26_0();
  v11 = sub_27463965C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094F2C0, &qword_274654438);
  v12 = OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_35_3(v12, v11, v13);
  OUTLINED_FUNCTION_26_0();
  sub_27463B19C();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_22();
  sub_27463ADAC();
  v14 = OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_35_3(v14, v7, v15);
  OUTLINED_FUNCTION_26_0();
  sub_27463B19C();
  swift_getWitnessTable();
  v16 = sub_27463AE8C();
  OUTLINED_FUNCTION_1();
  v40 = v17;
  MEMORY[0x28223BE20](v18);
  v20 = &v36 - v19;
  v21 = sub_27463965C();
  OUTLINED_FUNCTION_1();
  v23 = v22;
  MEMORY[0x28223BE20](v24);
  v26 = &v36 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v29 = &v36 - v28;
  sub_27463B09C();
  v42 = v39;
  v43 = v9;
  v44 = v2;
  sub_27463AE7C();
  v30 = *v2;
  if (*(v2 + 8) != 1)
  {

    sub_27463BC0C();
    v31 = sub_27463A2FC();
    sub_274638CEC();

    v32 = v36;
    sub_274639AAC();
    swift_getAtKeyPath();
    sub_2743F45E8(v30, 0);
    (*(v37 + 8))(v32, v38);
  }

  OUTLINED_FUNCTION_2_19();
  WitnessTable = swift_getWitnessTable();
  sub_27457574C(v16);
  sub_27463A90C();
  (*(v40 + 8))(v20, v16);
  v45 = WitnessTable;
  v46 = MEMORY[0x277CDFC60];
  OUTLINED_FUNCTION_10_0();
  swift_getWitnessTable();
  sub_2744E9688();
  v33 = *(v23 + 8);
  v33(v26, v21);
  sub_2744E9688();
  return (v33)(v29, v21);
}

uint64_t sub_2744ECF70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, uint64_t a5@<X3>)
{
  v5 = a3;
  v72 = a4;
  v75 = a2;
  type metadata accessor for ActionAttributionView(255, a2, a3, a5);
  sub_27463965C();
  sub_27463965C();
  sub_27463965C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094F2C0, &qword_274654438);
  swift_getTupleTypeMetadata2();
  v7 = sub_27463B19C();
  WitnessTable = swift_getWitnessTable();
  v8 = sub_27463ADAC();
  v74 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v51[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v11);
  v14 = &v51[-v13];
  v15 = *(a1 + 88);
  if (v15)
  {
    v71 = &v51[-v13];
    v68 = v8;
    v69 = v7;
    v16 = v10;
    v17 = *(a1 + 96);
    v18 = *(a1 + 104);
    v20 = *(a1 + 80);
    v64 = *(a1 + 72);
    v19 = v64;
    v66 = *(a1 + 64);
    v21 = v66;
    v67 = v20;
    v22 = type metadata accessor for ActionHeaderView(0, v75, v5, v12);
    v70 = v5;
    v23 = v22;
    v24 = *(a1 + *(v22 + 80)) + 2.0;
    v61 = *(a1 + 40);
    v62 = v17;
    v25 = v20;
    v26 = v17;
    v10 = v16;
    v8 = v68;
    sub_27448287C(v21, v19, v25, v15, v26, v18);

    v57 = v18;
    v65 = sub_2744ED520(v23);
    v27 = *(a1 + 112);
    v59 = *(a1 + 120);
    v28 = v59;
    v60 = v27;
    v29 = *(a1 + 136);
    v55 = *(a1 + 144);
    v30 = v55;
    v56 = v29;
    v53 = v15;
    v58 = *(a1 + 128);
    v54 = *(a1 + 152);
    KeyPath = swift_getKeyPath();
    v82[0] = 0;
    sub_274483110(v27, v28);
    sub_274483110(v29, v30);
    type metadata accessor for ActionViewModel();
    sub_2744F32CC(&qword_28094C460, type metadata accessor for ActionViewModel, &protocol conformance descriptor for ActionViewModel);
    v31 = sub_27463950C();
    v33 = v32;
    LODWORD(v61) = v82[0];
    v52 = sub_27463A33C();
    sub_2746390AC();
    v35 = v34;
    v37 = v36;
    v39 = v38;
    v41 = v40;
    v42 = v57;

    v43 = v62;

    v44 = v53;

    v45 = v64;

    v81[0] = v31;
    v81[1] = v33;
    v81[2] = v66;
    v81[3] = v45;
    v5 = v70;
    v81[4] = v67;
    v81[5] = v44;
    v81[6] = v43;
    v81[7] = v42;
    v14 = v71;
    *&v81[8] = v24;
    v81[9] = v65;
    v81[10] = v60;
    v81[11] = v59;
    LOBYTE(v81[12]) = v58;
    v81[13] = v56;
    v81[14] = v55;
    LOBYTE(v81[15]) = v54;
    v81[16] = KeyPath;
    LOBYTE(v81[17]) = v61;
    LOBYTE(v81[18]) = v52;
    v81[19] = v35;
    v81[20] = v37;
    v81[21] = v39;
    v81[22] = v41;
    LOBYTE(v81[23]) = 0;
    *(&v81[23] + 1) = 256;
    CGSizeMake();
    memcpy(v82, v81, 0xBBuLL);
  }

  else
  {
    sub_2744EE9B8(v82);
  }

  v46 = sub_274639B1C();
  MEMORY[0x28223BE20](v46);
  *&v51[-32] = v75;
  *&v51[-24] = v5;
  *&v51[-16] = a1;
  sub_27463AD9C();
  v47 = swift_getWitnessTable();
  sub_2744E9688();
  v48 = v74;
  v49 = *(v74 + 8);
  v49(v10, v8);
  memcpy(v79, v82, 0xBBuLL);
  v80[0] = v79;
  (*(v48 + 16))(v10, v14, v8);
  v80[1] = v10;
  sub_27445EAD4(v82, v81, &qword_28094F2B8, &qword_274654430);
  v78[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094F2B8, &qword_274654430);
  v78[1] = v8;
  v76 = sub_2744EE9CC();
  v77 = v47;
  sub_274575750(v80, 2, v78);
  sub_27440CB1C(v82, &qword_28094F2B8, &qword_274654430);
  v49(v14, v8);
  v49(v10, v8);
  memcpy(v81, v79, 0xBBuLL);
  return sub_27440CB1C(v81, &qword_28094F2B8, &qword_274654430);
}

uint64_t sub_2744ED520(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094C820, &unk_27464AF60);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_27464AEE0;
  v4 = *MEMORY[0x277D76918];
  v5 = [objc_allocWithZone(MEMORY[0x277D75520]) initForTextStyle_];
  [v5 scaledValueForValue_];
  v7 = v6;

  v8 = [objc_allocWithZone(MEMORY[0x277D75520]) initForTextStyle_];
  [v8 scaledValueForValue_];
  v10 = v9;

  *(v3 + 32) = [objc_allocWithZone(MEMORY[0x277D7D7A8]) initWithRect:0 fromEdge:{0.0, 0.0, v7 * 1.1 + 10.0, v10 + -1.3 + 4.0}];
  v11 = [objc_allocWithZone(MEMORY[0x277D75520]) initForTextStyle_];
  [v11 scaledValueForValue_];
  v13 = v12;

  v14 = v13 + 8.0 + *(v1 + *(a1 + 80));
  v15 = [objc_allocWithZone(MEMORY[0x277D75520]) initForTextStyle_];
  [v15 scaledValueForValue_];
  v17 = v16;

  *(v3 + 40) = [objc_allocWithZone(MEMORY[0x277D7D7A8]) initWithRect:1 fromEdge:{0.0, 0.0, v14, v17 + 5.7 + -1.3}];
  return v3;
}

uint64_t sub_2744ED710@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v47 = a4;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094F2F0, &qword_274654488);
  MEMORY[0x28223BE20](v46);
  v43 = (&v38 - v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094F2F8, &qword_274654490);
  MEMORY[0x28223BE20](v8 - 8);
  v42 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v41 = &v38 - v11;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094F2C0, &qword_274654438);
  MEMORY[0x28223BE20](v44);
  v45 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v48 = &v38 - v14;
  type metadata accessor for ActionAttributionView(255, a2, a3, v15);
  sub_27463965C();
  sub_27463965C();
  v16 = sub_27463965C();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v38 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = &v38 - v21;
  v24 = type metadata accessor for ActionHeaderView(0, a2, a3, v23);
  sub_2744EDC10(v24, v19);
  WitnessTable = swift_getWitnessTable();
  v26 = MEMORY[0x277CDF918];
  v52[6] = WitnessTable;
  v52[7] = MEMORY[0x277CDF918];
  v52[4] = swift_getWitnessTable();
  v52[5] = v26;
  v52[2] = swift_getWitnessTable();
  v52[3] = v26;
  v27 = swift_getWitnessTable();
  sub_2744E9688();
  v28 = *(v17 + 8);
  v28(v19, v16);
  v29 = 1;
  if ((*(a1 + *(v24 + 72)) & 1) == 0)
  {
    v40 = v27;
    v30 = v41;
    sub_2744EE180(v24, v41);
    v31 = v42;
    v39 = v22;
    sub_27445EAD4(v30, v42, &qword_28094F2F8, &qword_274654490);
    v32 = v43;
    *v43 = 0;
    *(v32 + 8) = 1;
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094F300, &qword_274654498);
    sub_27445EAD4(v31, v32 + *(v33 + 48), &qword_28094F2F8, &qword_274654490);
    v34 = v30;
    v27 = v40;
    sub_27440CB1C(v34, &qword_28094F2F8, &qword_274654490);
    v22 = v39;
    sub_27440CB1C(v31, &qword_28094F2F8, &qword_274654490);
    sub_27445EA84(v32, v48, &qword_28094F2F0, &qword_274654488);
    v29 = 0;
  }

  v35 = v48;
  __swift_storeEnumTagSinglePayload(v48, v29, 1, v46);
  (*(v17 + 16))(v19, v22, v16);
  v52[0] = v19;
  v36 = v45;
  sub_27445EAD4(v35, v45, &qword_28094F2C0, &qword_274654438);
  v52[1] = v36;
  v51[0] = v16;
  v51[1] = v44;
  v49 = v27;
  v50 = sub_2744F21A4();
  sub_274575750(v52, 2, v51);
  sub_27440CB1C(v35, &qword_28094F2C0, &qword_274654438);
  v28(v22, v16);
  sub_27440CB1C(v36, &qword_28094F2C0, &qword_274654438);
  return (v28)(v19, v16);
}

uint64_t sub_2744EDC10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v59 = a2;
  v4 = sub_274639ABC();
  v46 = *(v4 - 8);
  v47 = v4;
  MEMORY[0x28223BE20](v4);
  v45 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v8);
  v49 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a1 + 24);
  v12 = type metadata accessor for ActionAttributionView(0, v6, v10, v11);
  v52 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v14 = &v44 - v13;
  v54 = v15;
  v16 = sub_27463965C();
  v55 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v51 = &v44 - v17;
  v57 = v18;
  v58 = sub_27463965C();
  v56 = *(v58 - 8);
  MEMORY[0x28223BE20](v58);
  v53 = &v44 - v19;
  v20 = *(v2 + 40);
  v48 = a1;
  v21 = *(a1 + 60);
  v22 = *(v7 + 16);
  v23 = *(v2 + *(a1 + 76));
  v24 = v20;
  v25 = v49;
  v22(v49, v2 + v21, v6);
  v26 = sub_2744EE294();
  v28 = v27;
  v29 = sub_2744EE308();
  v50 = v14;
  sub_2744EE32C(v24, v23, v25, v26, v28, v29, v30 & 1, v6, v14, v10);
  sub_27463A35C();
  v31 = *v2;
  if (*(v2 + 8) != 1)
  {

    sub_27463BC0C();
    v32 = sub_27463A2FC();
    sub_274638CEC();

    v33 = v45;
    sub_274639AAC();
    swift_getAtKeyPath();
    sub_2743F45E8(v31, 0);
    (*(v46 + 8))(v33, v47);
  }

  v34 = v54;
  WitnessTable = swift_getWitnessTable();
  v36 = v50;
  v37 = v51;
  sub_27463A9FC();
  (*(v52 + 8))(v36, v34);
  sub_27463A33C();
  v38 = MEMORY[0x277CDF918];
  v62 = WitnessTable;
  v63 = MEMORY[0x277CDF918];
  v39 = v57;
  v40 = swift_getWitnessTable();
  v41 = v53;
  sub_27463A9FC();
  (*(v55 + 8))(v37, v39);
  sub_27463A34C();
  v60 = v40;
  v61 = v38;
  v42 = v58;
  swift_getWitnessTable();
  sub_27463A9FC();
  return (*(v56 + 8))(v41, v42);
}

uint64_t sub_2744EE180@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_274639B2C();
  *(a2 + 8) = 0x4024000000000000;
  *(a2 + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094F318, &qword_2746544A0);
  sub_2744EE428(v2, *(a1 + 16), *(a1 + 24), v5);
  v6 = sub_27463A33C();
  sub_2746390AC();
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v15 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094F320, &qword_2746544A8) + 36);
  *v15 = v6;
  *(v15 + 8) = v8;
  *(v15 + 16) = v10;
  *(v15 + 24) = v12;
  *(v15 + 32) = v14;
  *(v15 + 40) = 0;
  v16 = sub_27463A37C();
  sub_2746390AC();
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094F2F8, &qword_274654490);
  v26 = a2 + *(result + 36);
  *v26 = v16;
  *(v26 + 8) = v18;
  *(v26 + 16) = v20;
  *(v26 + 24) = v22;
  *(v26 + 32) = v24;
  *(v26 + 40) = 0;
  return result;
}

uint64_t sub_2744EE294()
{
  type metadata accessor for WorkflowEditorOptions(0);
  sub_2744F32CC(&qword_28094A730, type metadata accessor for WorkflowEditorOptions, &protocol conformance descriptor for WorkflowEditorOptions);

  return sub_27463979C();
}

uint64_t sub_2744EE32C@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  *a9 = sub_2744EF678(a1);
  *(a9 + 8) = v18;
  *(a9 + 16) = a2;
  v20 = type metadata accessor for ActionAttributionView(0, a8, a10, v19);
  (*(*(a8 - 8) + 32))(a9 + v20[10], a3, a8);
  v21 = (a9 + v20[11]);
  *v21 = a4;
  v21[1] = a5;
  v22 = a9 + v20[12];
  result = swift_getKeyPath();
  *v22 = result;
  *(v22 + 8) = 0;
  v24 = a9 + v20[13];
  *v24 = a6;
  *(v24 + 8) = a7 & 1;
  return result;
}

uint64_t sub_2744EE428(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = (a1 + *(type metadata accessor for ActionHeaderView(0, a2, a3, a4) + 64));
  v6 = *v5;
  v7 = v5[1];
  v8 = *(a1 + 40);
  sub_2744069F0(v6, v7);
  type metadata accessor for WorkflowEditorOptions(0);
  sub_2744F32CC(&qword_28094A730, type metadata accessor for WorkflowEditorOptions, &protocol conformance descriptor for WorkflowEditorOptions);
  v19 = sub_27463979C();
  v10 = v9;
  KeyPath = swift_getKeyPath();
  type metadata accessor for ActionViewModel();
  sub_2744F32CC(&qword_28094C460, type metadata accessor for ActionViewModel, &protocol conformance descriptor for ActionViewModel);
  v12 = sub_27463950C();
  v14 = v13;
  v15 = [objc_opt_self() workflowUserDefaults];
  v16 = [v15 BOOLForKey_];

  if (v16)
  {
    v17 = 0.0;
  }

  else
  {
    v17 = 16.0;
  }

  v21 = 0;
  __src[0] = v12;
  __src[1] = v14;
  __src[2] = v6;
  __src[3] = v7;
  __src[4] = v19;
  __src[5] = v10;
  __src[6] = KeyPath;
  LOBYTE(__src[7]) = 0;
  *&__src[8] = v17;
  __src[9] = swift_getKeyPath();
  LOBYTE(__src[10]) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094F328, &unk_274654508);
  sub_2744F2260();
  sub_2744F2318();
  sub_27463A88C();
  memcpy(__dst, __src, 0x51uLL);
  return sub_27440CB1C(__dst, &qword_28094F328, &unk_274654508);
}

void sub_2744EE68C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v7 = type metadata accessor for ActionHeaderView(0, a2, a3, a4);
  v8 = *(a1 + 40);
  v9 = (a1 + *(v7 + 64));
  v10 = *v9;
  v11 = v9[1];
  v12 = v8;
  sub_2744069F0(v10, v11);
  type metadata accessor for WorkflowEditorOptions(0);
  sub_2744F32CC(&qword_28094A730, type metadata accessor for WorkflowEditorOptions, &protocol conformance descriptor for WorkflowEditorOptions);
  v13 = sub_27463979C();
  v15 = v14;
  KeyPath = swift_getKeyPath();
  type metadata accessor for ActionViewModel();
  sub_2744F32CC(&qword_28094C460, type metadata accessor for ActionViewModel, &protocol conformance descriptor for ActionViewModel);
  v17 = sub_27463950C();
  v19 = v18;
  v20 = [objc_opt_self() workflowUserDefaults];
  v21 = [v20 BOOLForKey_];

  v22 = 16.0;
  if (v21)
  {
    v22 = 0.0;
  }

  *a5 = v17;
  *(a5 + 8) = v19;
  *(a5 + 16) = v10;
  *(a5 + 24) = v11;
  *(a5 + 32) = v13;
  *(a5 + 40) = v15;
  *(a5 + 48) = KeyPath;
  *(a5 + 56) = 0;
  *(a5 + 64) = v22;
}

uint64_t sub_2744EE830()
{
  v1 = sub_274639ABC();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v8[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = *(v0 + 56);
  v5 = *(v0 + 48);
  v9 = v5;
  if (v10 != 1)
  {

    sub_27463BC0C();
    v6 = sub_27463A2FC();
    sub_274638CEC();

    sub_274639AAC();
    swift_getAtKeyPath();
    sub_27440CB1C(&v9, &qword_28094CD80, &qword_27464ED40);
    (*(v2 + 8))(v4, v1);
    LOBYTE(v5) = v8[15];
  }

  return v5 & 1;
}

unint64_t sub_2744EE9CC()
{
  result = qword_28094F2C8;
  if (!qword_28094F2C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094F2B8, &qword_274654430);
    sub_2744EEA50();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094F2C8);
  }

  return result;
}

unint64_t sub_2744EEA50()
{
  result = qword_28094F2D0;
  if (!qword_28094F2D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094F2D8, &qword_274654440);
    sub_2744EEADC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094F2D0);
  }

  return result;
}

unint64_t sub_2744EEADC()
{
  result = qword_28094F2E0;
  if (!qword_28094F2E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094F2E8, &qword_274654448);
    sub_2744829A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28094F2E0);
  }

  return result;
}

uint64_t sub_2744EEB68@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_2746396BC();
  v60 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094F450, &qword_2746547C8);
  v59 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = v53 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094F458, &qword_2746547D0);
  v62 = *(v10 - 8);
  v63 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = v53 - v11;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094F460, &qword_2746547D8);
  MEMORY[0x28223BE20](v61);
  v65 = v53 - v13;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094F468, &qword_2746547E0);
  MEMORY[0x28223BE20](v64);
  v15 = v53 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094F470, &qword_2746547E8);
  *&v17 = MEMORY[0x28223BE20](v16).n128_u64[0];
  v66 = v53 - v18;
  v19 = [*(v2[1] + OBJC_IVAR____TtC14WorkflowEditor15ActionViewModel_action) isDeletable];
  if (v19 && (v20 = v2[2]) != 0)
  {
    v56 = v15;
    v57 = v16;
    v58 = a1;
    v53[1] = v53;
    v21 = v2[3];
    MEMORY[0x28223BE20](v19);
    v53[-2] = v2;
    sub_2744069F0(v20, v21);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094F478, &qword_2746547F0);
    sub_2744F3078();
    v54 = v21;
    v55 = v20;
    sub_27463AD5C();
    sub_2746396AC();
    v22 = sub_27440CA78(&qword_28094F4B8, &qword_28094F450, &qword_2746547C8, MEMORY[0x277CDF028]);
    v23 = sub_2744F32CC(&qword_280949470, MEMORY[0x277CDDB18], MEMORY[0x277CDDB08]);
    sub_27463A69C();
    (*(v60 + 8))(v6, v4);
    (*(v59 + 8))(v9, v7);
    sub_27463B70C("Remove Action From Shortcut", 27);
    if (qword_2809492C0 != -1)
    {
      swift_once();
    }

    v24 = qword_28094BB00;
    v25 = sub_27463B66C();
    v26 = sub_27463B66C();

    v27 = [v24 localizedStringForKey:v25 value:v26 table:0];

    v28 = sub_27463B6AC();
    v30 = v29;

    v71 = v28;
    v72 = v30;
    v67 = v7;
    v68 = v4;
    v69 = v22;
    v70 = v23;
    swift_getOpaqueTypeConformance2();
    sub_274412BBC();
    v31 = v65;
    v32 = v63;
    sub_27463A7CC();

    (*(v62 + 8))(v12, v32);
    LOBYTE(v32) = sub_27463A32C();
    sub_2746390AC();
    v33 = v31 + *(v61 + 36);
    *v33 = v32;
    *(v33 + 8) = v34;
    *(v33 + 16) = v35;
    *(v33 + 24) = v36;
    *(v33 + 32) = v37;
    *(v33 + 40) = 0;
    v38 = v2[4];
    if (v38)
    {
      v39 = v38;
      v40 = sub_27443B4C4();
      v41 = v58;
      v42 = v56;
      if (v40)
      {
        v43 = 1;
      }

      else
      {
        v43 = sub_2744EE830();
      }

      KeyPath = swift_getKeyPath();
      v46 = swift_allocObject();
      *(v46 + 16) = v43 & 1;
      sub_27445EA84(v31, v42, &qword_28094F460, &qword_2746547D8);
      v47 = (v42 + *(v64 + 36));
      *v47 = KeyPath;
      v47[1] = sub_2744826D8;
      v47[2] = v46;
      v48 = sub_27443B4C4();

      if (v48)
      {
        sub_274406A94(v55, v54);
        v49 = 0.0;
      }

      else
      {
        v50 = sub_2744EE830();
        sub_274406A94(v55, v54);
        if (v50)
        {
          v49 = 0.0;
        }

        else
        {
          v49 = 1.0;
        }
      }

      v51 = v57;
      v52 = v66;
      sub_27445EA84(v42, v66, &qword_28094F468, &qword_2746547E0);
      *(v52 + *(v51 + 36)) = v49;
      sub_27445EA84(v52, v41, &qword_28094F470, &qword_2746547E8);
      return __swift_storeEnumTagSinglePayload(v41, 0, 1, v51);
    }

    else
    {
      type metadata accessor for WorkflowEditorOptions(0);
      sub_2744F32CC(&qword_28094A730, type metadata accessor for WorkflowEditorOptions, &protocol conformance descriptor for WorkflowEditorOptions);
      result = sub_27463978C();
      __break(1u);
    }
  }

  else
  {

    return __swift_storeEnumTagSinglePayload(a1, 1, 1, v16);
  }

  return result;
}

void *sub_2744EF334@<X0>(_BYTE *a1@<X8>)
{
  sub_2744EF4B4(__src);
  v2 = *MEMORY[0x277D76918];
  v3 = [objc_allocWithZone(MEMORY[0x277D75520]) initForTextStyle_];
  [v3 scaledValueForValue_];

  v4 = [objc_allocWithZone(MEMORY[0x277D75520]) initForTextStyle_];
  [v4 scaledValueForValue_];

  sub_27463B0CC();
  sub_27463973C();
  memcpy(__dst, __src, 0x51uLL);
  result = memcpy(a1, __dst, 0xC8uLL);
  a1[200] = 0;
  return result;
}

void sub_2744EF4B4(uint64_t a2@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280949FF8, &qword_274654850);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v19 - v4;
  v6 = sub_27463AC2C();
  v7 = [objc_allocWithZone(MEMORY[0x277D75520]) initForTextStyle_];
  [v7 scaledValueForValue_];

  v8 = sub_27463A3BC();
  __swift_storeEnumTagSinglePayload(v5, 1, 1, v8);
  v9 = sub_27463A40C();
  sub_27440CB1C(v5, &qword_280949FF8, &qword_274654850);
  KeyPath = swift_getKeyPath();
  v11 = [objc_opt_self() quaternaryLabelColor];
  v12 = sub_27463AB0C();
  v13 = swift_getKeyPath();
  v14 = sub_27463A32C();
  sub_2746390AC();
  *a2 = v6;
  *(a2 + 8) = KeyPath;
  *(a2 + 16) = v9;
  *(a2 + 24) = v13;
  *(a2 + 32) = v12;
  *(a2 + 40) = v14;
  *(a2 + 48) = v15;
  *(a2 + 56) = v16;
  *(a2 + 64) = v17;
  *(a2 + 72) = v18;
  *(a2 + 80) = 0;
}

uint64_t sub_2744EF678(uint64_t a1)
{
  type metadata accessor for ActionViewModel();
  sub_2744F32CC(&qword_28094C460, type metadata accessor for ActionViewModel, &protocol conformance descriptor for ActionViewModel);

  return sub_27463950C();
}

id sub_2744EF6F4(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 44));
  if (v2)
  {

    return v2;
  }

  else
  {
    type metadata accessor for WorkflowEditorOptions(0);
    sub_2744F32CC(&qword_28094A730, type metadata accessor for WorkflowEditorOptions, &protocol conformance descriptor for WorkflowEditorOptions);
    result = sub_27463978C();
    __break(1u);
  }

  return result;
}

uint64_t sub_2744EF788(uint64_t a1)
{
  v3 = sub_274639ABC();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v11[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = v1 + *(a1 + 52);
  v8 = *v7;
  if (*(v7 + 8) != 1)
  {

    sub_27463BC0C();
    v9 = sub_27463A2FC();
    sub_274638CEC();

    sub_274639AAC();
    swift_getAtKeyPath();
    sub_2743F45E8(v8, 0);
    (*(v4 + 8))(v6, v3);
    LOBYTE(v8) = v11[15];
  }

  return v8 & 1;
}

uint64_t sub_2744EF920@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v108 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094F3C0, &qword_2746546C8);
  MEMORY[0x28223BE20](v5);
  v7 = &v87 - v6;
  v98 = *(a1 - 8);
  MEMORY[0x28223BE20](v8);
  v101 = v9;
  v102 = &v87 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_27463A15C();
  v93 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v87 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a1 + 16);
  v14 = sub_2744F296C();
  v15 = *(a1 + 24);
  v124 = v5;
  v125 = v13;
  v104 = v13;
  v110 = v14;
  v126 = v14;
  v127 = v15;
  v103 = v15;
  v16 = sub_27463A4BC();
  v92 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v18 = &v87 - v17;
  WitnessTable = swift_getWitnessTable();
  v20 = sub_2744F32CC(&qword_28094F430, MEMORY[0x277CDE310], MEMORY[0x277CDE308]);
  v112 = WitnessTable;
  v113 = v16;
  v124 = v16;
  v125 = v10;
  v109 = v10;
  v126 = WitnessTable;
  v127 = v20;
  v111 = v20;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v94 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v23 = &v87 - v22;
  sub_27463A29C();
  v24 = sub_27463965C();
  v97 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v99 = &v87 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v100 = &v87 - v27;
  MEMORY[0x28223BE20](v28);
  v96 = &v87 - v29;
  MEMORY[0x28223BE20](v30);
  v95 = &v87 - v31;
  v107 = sub_274639DEC();
  v106 = *(v107 - 8);
  MEMORY[0x28223BE20](v107);
  v105 = &v87 - v32;
  v33 = sub_2744F068C(a1);
  if ((v33 & 1) != 0 || *(v3 + 16) == 1)
  {
    sub_2744F0824(a1, v7);
    v35 = v112;
    v34 = v113;
    v36 = v109;
    v124 = v113;
    v125 = v109;
    v37 = v111;
    v126 = v112;
    v127 = v111;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v39 = sub_2744F32CC(&qword_28094A6C0, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    v114 = OpaqueTypeConformance2;
    v115 = v39;
    swift_getWitnessTable();
    v40 = v105;
    v41 = v110;
    sub_27456E878();
    sub_27440CB1C(v7, &qword_28094F3C0, &qword_2746546C8);
  }

  else
  {
    MEMORY[0x28223BE20](v33);
    v42 = v103;
    *(&v87 - 4) = v104;
    *(&v87 - 3) = v42;
    *(&v87 - 2) = v3;
    MEMORY[0x28223BE20](v43);
    *(&v87 - 4) = v44;
    *(&v87 - 3) = v45;
    *(&v87 - 2) = v3;
    v90 = v5;
    v91 = v3;
    sub_27463A4AC();
    sub_27463A14C();
    v46 = v113;
    v47 = v109;
    sub_27463AABC();
    (*(v93 + 8))(v12, v47);
    (*(v92 + 8))(v18, v46);
    sub_27463B70C("Show options menu", 17);
    if (qword_2809492C0 != -1)
    {
      swift_once();
    }

    v48 = qword_28094BB00;
    v49 = sub_27463B66C();
    v50 = sub_27463B66C();

    v89 = v48;
    v51 = [v48 localizedStringForKey:v49 value:v50 table:0];

    v52 = sub_27463B6AC();
    v54 = v53;

    v122 = v52;
    v123 = v54;
    v124 = v113;
    v125 = v47;
    v126 = v112;
    v127 = v111;
    v92 = swift_getOpaqueTypeConformance2();
    v93 = sub_274412BBC();
    sub_27463A7CC();

    (*(v94 + 8))(v23, OpaqueTypeMetadata2);
    sub_27463B70C("Move up", 7);
    v55 = sub_27463B66C();
    v56 = sub_27463B66C();

    v57 = [v48 localizedStringForKey:v55 value:v56 table:0];

    v58 = sub_27463B6AC();
    v60 = v59;

    v124 = v58;
    v125 = v60;
    v61 = v98;
    v94 = *(v98 + 16);
    v62 = v102;
    (v94)(v102, v91, a1);
    v88 = (*(v61 + 80) + 32) & ~*(v61 + 80);
    v63 = v88;
    v64 = swift_allocObject();
    v65 = v103;
    *(v64 + 16) = v104;
    *(v64 + 24) = v65;
    v98 = *(v61 + 32);
    (v98)(v64 + v63, v62, a1);
    v66 = v99;
    sub_27463961C();

    v97 = *(v97 + 8);
    (v97)(v66, v24);
    sub_27463B70C("Move down", 9);
    v67 = sub_27463B66C();
    v68 = sub_27463B66C();

    v69 = [v89 localizedStringForKey:v67 value:v68 table:0];

    v70 = sub_27463B6AC();
    v72 = v71;

    v124 = v70;
    v125 = v72;
    v73 = v102;
    (v94)(v102, v91, a1);
    v74 = v88;
    v75 = swift_allocObject();
    v76 = v103;
    *(v75 + 16) = v104;
    *(v75 + 24) = v76;
    (v98)(v75 + v74, v73, a1);
    v77 = v96;
    v78 = v100;
    sub_27463961C();

    v79 = v97;
    (v97)(v78, v24);
    v80 = sub_2744F32CC(&qword_28094A6C0, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    v120 = v92;
    v121 = v80;
    swift_getWitnessTable();
    v81 = v95;
    sub_2744E9688();
    v79(v77, v24);
    sub_2744E9688();
    v40 = v105;
    v82 = v110;
    sub_27456E7CC();
    v79(v77, v24);
    v79(v81, v24);
    v36 = v109;
    v41 = v82;
    v35 = v112;
    v34 = v113;
    v37 = v111;
  }

  v124 = v34;
  v125 = v36;
  v126 = v35;
  v127 = v37;
  v83 = swift_getOpaqueTypeConformance2();
  v84 = sub_2744F32CC(&qword_28094A6C0, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
  v118 = v83;
  v119 = v84;
  v116 = swift_getWitnessTable();
  v117 = v41;
  v85 = v107;
  swift_getWitnessTable();
  sub_2744E9688();
  return (*(v106 + 8))(v40, v85);
}