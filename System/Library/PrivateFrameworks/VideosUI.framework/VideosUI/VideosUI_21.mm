uint64_t sub_1E37B5644(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 56))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 32);
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

uint64_t sub_1E37B5684(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1E37B5754(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for VideosEnginePromiseResponse(255, *(a1 + 16), a3, a4);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1ECF2C3F0, qword_1E42A0B50);
  swift_getTupleTypeMetadata2();
  if (v4 <= 0x3F)
  {
    sub_1E37B5A54(319);
    if (v5 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_1E37B5800(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_57_5();
  if (!(!v6 & v5))
  {
    v3 = v4;
  }

  if (v2 > 0xFE)
  {
    if ((v3 | 1u) <= 3)
    {
      v7 = ((v2 + 1) >> 8) + 1;
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
      case 3:
        __break(1u);
        break;
      default:
        return;
    }
  }
}

void sub_1E37B58FC(unsigned int *a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_57_5();
  if (!(!v9 & v8))
  {
    v6 = v7;
  }

  v10 = v6 | 1;
  if (v5 < 0xFF)
  {
    v13 = 0;
  }

  else
  {
    if (v10 <= 3)
    {
      v11 = ((v5 + 1) >> 8) + 1;
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
  }

  if (v4 > 0xFE)
  {
    v14 = v4 - 255;
    v15 = (v4 - 255) >> 8;
    bzero(a1, v6 | 1);
    if (v10 <= 3)
    {
      v16 = v15 + 1;
    }

    else
    {
      v16 = 1;
    }

    if (v10 > 3)
    {
      *a1 = v14;
    }

    else
    {
      *a1 = v14;
    }

    switch(v13)
    {
      case 1:
        *(a1 + v10) = v16;
        break;
      case 2:
        *(a1 + v10) = v16;
        break;
      case 3:
LABEL_36:
        __break(1u);
        break;
      case 4:
        *(a1 + v10) = v16;
        break;
      default:
        return;
    }
  }

  else
  {
    switch(v13)
    {
      case 1:
        *(a1 + v10) = 0;
        if (!v4)
        {
          return;
        }

        goto LABEL_30;
      case 2:
        *(a1 + v10) = 0;
        goto LABEL_29;
      case 3:
        goto LABEL_36;
      case 4:
        *(a1 + v10) = 0;
        if (!v4)
        {
          return;
        }

        goto LABEL_30;
      default:
LABEL_29:
        if (v4)
        {
LABEL_30:
          *(a1 + v6) = -v4;
        }

        break;
    }
  }
}

void sub_1E37B5A54(uint64_t a1)
{
  if (!qword_1EE288230[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1ECF2C3F0, qword_1E42A0B50);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, qword_1EE288230);
    }
  }
}

uint64_t sub_1E37B5ACC(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 5u)
  {
  }

  return result;
}

uint64_t sub_1E37B5BC0(uint64_t a1, uint64_t a2, unsigned __int8 a3, char a4)
{
  if (a4)
  {
    return sub_1E3781F8C(a1, a2, a3);
  }

  else
  {
  }
}

void sub_1E37B5BCC()
{
  sub_1E41FFBF4();
  OUTLINED_FUNCTION_34_13();
  OUTLINED_FUNCTION_53_9();

  sub_1E37B10BC();
}

uint64_t sub_1E37B5D30(uint64_t a1, uint64_t a2)
{
  v13 = *(v2 + 16);
  v5 = *(v2 + 32);
  v7 = *(v2 + 48);
  v6 = *(v2 + 56);
  OUTLINED_FUNCTION_5_0(v5 + 16, v15);
  result = swift_weakLoadStrong();
  if (result)
  {
    v9 = result;
    OUTLINED_FUNCTION_4_0();
    v10 = swift_allocObject();
    OUTLINED_FUNCTION_5_0(v5 + 16, v14);
    swift_weakLoadStrong();
    swift_weakInit();

    OUTLINED_FUNCTION_67_6();
    v11 = swift_allocObject();
    *(v11 + 16) = v13;
    *(v11 + 32) = v10;
    *(v11 + 40) = v7;
    *(v11 + 48) = v6;
    *(v11 + 56) = a1;
    *(v11 + 64) = a2;

    v12 = sub_1E41EC148(sub_1E37B5EB0, v11);

    *(v9 + 144) = v12;
  }

  return result;
}

uint64_t objectdestroy_3Tm(void (*a1)(void))
{

  a1(*(v1 + 64));
  OUTLINED_FUNCTION_67_6();

  return swift_deallocObject();
}

uint64_t OUTLINED_FUNCTION_68_7()
{

  return swift_storeEnumTagMultiPayload();
}

uint64_t OUTLINED_FUNCTION_69_3()
{

  return sub_1E41FFCB4();
}

unint64_t OUTLINED_FUNCTION_70_6(float a1)
{
  *v1 = a1;
  v5 = *(v3 - 184);

  return sub_1E3270FC8(v5, v2, (v3 - 88));
}

uint64_t sub_1E37B5FBC@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x1E697F600];
  sub_1E4201CF4();
  OUTLINED_FUNCTION_2();
  v5 = *(v4 + 104);

  return v5(a1, v2, v3);
}

void sub_1E37B6028(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X4>, int a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v293 = a7;
  LODWORD(v267) = a6;
  v266 = a5;
  v268 = a4;
  v251 = a3;
  v278 = a2;
  v253 = a9;
  v252 = sub_1E4201324();
  OUTLINED_FUNCTION_0_10();
  v250 = v11;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_5();
  v249 = v14 - v13;
  v288 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A1F8, &qword_1E429E7F0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_44();
  v247 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A200, &qword_1E42F3640);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_44();
  v279 = v18;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2A208, &unk_1E42BB350);
  OUTLINED_FUNCTION_13_10();
  v19 = sub_1E42013A4();
  v20 = MEMORY[0x1E6980A18];
  v284 = MEMORY[0x1E6980A18];
  v21 = sub_1E32752B0(&qword_1EE2887A0, &qword_1ECF2A208, &unk_1E42BB350, MEMORY[0x1E6980A18]);
  v275 = a8;
  v322 = a8;
  v323 = v21;
  OUTLINED_FUNCTION_13_33();
  WitnessTable = swift_getWitnessTable();
  v324 = v19;
  v325 = WitnessTable;
  v23 = v19;
  v285 = v19;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v289 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2A210, &qword_1E429D108);
  v24 = sub_1E42013A4();
  v324 = v23;
  v325 = WitnessTable;
  v272 = WitnessTable;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v26 = sub_1E32752B0(&unk_1EE2887E0, &qword_1ECF2A210, &qword_1E429D108, v20);
  v271 = OpaqueTypeConformance2;
  v320 = OpaqueTypeConformance2;
  v321 = v26;
  v248 = v26;
  v27 = v24;
  v28 = swift_getWitnessTable();
  v324 = v27;
  v325 = v28;
  v265 = v27;
  v29 = swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2A218, &qword_1E42AFD10);
  OUTLINED_FUNCTION_13_10();
  sub_1E42013A4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2A220, &qword_1E429D110);
  OUTLINED_FUNCTION_13_10();
  v287 = v29;
  sub_1E42013A4();
  sub_1E4201F54();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF28998, &unk_1E4297E30);
  OUTLINED_FUNCTION_13_10();
  v282 = sub_1E42013A4();
  v286 = sub_1E4201F54();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2A228, &qword_1E429D118);
  OUTLINED_FUNCTION_13_10();
  v283 = sub_1E42013A4();
  v291 = sub_1E4201F54();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2A230, &qword_1E429D120);
  OUTLINED_FUNCTION_18_12();
  v30 = sub_1E42013A4();
  OUTLINED_FUNCTION_0_10();
  v241 = v31;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_44();
  v276 = v33;
  v324 = v27;
  v325 = v28;
  v274 = v28;
  v34 = swift_getOpaqueTypeConformance2();
  OUTLINED_FUNCTION_16_16();
  v37 = sub_1E32752B0(v35, &qword_1ECF2A218, &qword_1E42AFD10, v36);
  v318 = v34;
  v319 = v37;
  v38 = swift_getWitnessTable();
  v39 = sub_1E32752B0(&qword_1EE288878, &qword_1ECF2A220, &qword_1E429D110, v27);
  v316 = v34;
  v317 = v39;
  v40 = swift_getWitnessTable();
  v314 = v38;
  v315 = v40;
  OUTLINED_FUNCTION_15_28();
  v41 = swift_getWitnessTable();
  v42 = v284;
  v43 = sub_1E32752B0(&qword_1EE288788, &qword_1ECF28998, &unk_1E4297E30, v284);
  v270 = v34;
  v312 = v34;
  v313 = v43;
  v44 = swift_getWitnessTable();
  v310 = v41;
  v311 = v44;
  v45 = v286;
  v46 = swift_getWitnessTable();
  v47 = sub_1E32752B0(&qword_1EE288778, &qword_1ECF2A228, &qword_1E429D118, v42);
  v308 = v46;
  v309 = v47;
  v306 = swift_getWitnessTable();
  v269 = v46;
  v307 = v46;
  v48 = v291;
  v49 = swift_getWitnessTable();
  v50 = sub_1E32752B0(&qword_1EE288790, &qword_1ECF2A230, &qword_1E429D120, v42);
  v273 = v49;
  v304 = v49;
  v305 = v50;
  v51 = swift_getWitnessTable();
  OUTLINED_FUNCTION_14_2();
  v54 = sub_1E32752B0(v52, &qword_1ECF2A1F8, &qword_1E429E7F0, v53);
  v243 = v30;
  v324 = v30;
  v325 = v288;
  v282 = v54;
  v283 = v51;
  v326 = v51;
  v327 = v54;
  v55 = swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_0_10();
  v227 = v56;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v57);
  OUTLINED_FUNCTION_44();
  v281 = v58;
  sub_1E42015B4();
  OUTLINED_FUNCTION_18_12();
  v229 = v55;
  v59 = sub_1E42013A4();
  OUTLINED_FUNCTION_0_10();
  v230 = v60;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v61);
  OUTLINED_FUNCTION_44();
  v228 = v62;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2A238, &qword_1E429D128);
  OUTLINED_FUNCTION_18_12();
  v231 = v59;
  sub_1E42013A4();
  OUTLINED_FUNCTION_0_10();
  v233 = v63;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v64);
  OUTLINED_FUNCTION_44();
  v232 = v65;
  OUTLINED_FUNCTION_138();
  v234 = v66;
  v67 = sub_1E42013A4();
  OUTLINED_FUNCTION_0_10();
  v237 = v68;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v69);
  OUTLINED_FUNCTION_44();
  v236 = v70;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2A240, &qword_1E42E4570);
  OUTLINED_FUNCTION_18_12();
  v238 = v67;
  v71 = sub_1E42013A4();
  OUTLINED_FUNCTION_0_10();
  v240 = v72;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v73);
  OUTLINED_FUNCTION_44();
  v239 = v74;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2A248, &qword_1E42AE030);
  OUTLINED_FUNCTION_18_12();
  v242 = v71;
  sub_1E42013A4();
  OUTLINED_FUNCTION_0_10();
  v245 = v76;
  v246 = v75;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v77);
  OUTLINED_FUNCTION_44();
  v244 = v78;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A250, " B\r");
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v79);
  OUTLINED_FUNCTION_44();
  v280 = v80;
  OUTLINED_FUNCTION_138();
  v277 = sub_1E42012F4();
  OUTLINED_FUNCTION_0_10();
  v289 = v81;
  MEMORY[0x1EEE9AC00](v82);
  OUTLINED_FUNCTION_5();
  v284 = v84 - v83;
  OUTLINED_FUNCTION_138();
  swift_checkMetadataState();
  OUTLINED_FUNCTION_0_10();
  v255 = v86;
  v256 = v85;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v87);
  OUTLINED_FUNCTION_44();
  v254 = v88;
  OUTLINED_FUNCTION_138();
  swift_checkMetadataState();
  OUTLINED_FUNCTION_0_10();
  v258 = v90;
  v259 = v89;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v91);
  OUTLINED_FUNCTION_44();
  v257 = v92;
  OUTLINED_FUNCTION_138();
  swift_checkMetadataState();
  OUTLINED_FUNCTION_0_10();
  v260 = v94;
  v261 = v93;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v95);
  OUTLINED_FUNCTION_44();
  v285 = v96;
  OUTLINED_FUNCTION_1_2();
  v263 = v97;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v98);
  OUTLINED_FUNCTION_44();
  v262 = v99;
  v265 = *(v45 - 8);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v100);
  OUTLINED_FUNCTION_44();
  v264 = v101;
  v235 = *(v48 - 8);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v102);
  OUTLINED_FUNCTION_44();
  OpaqueTypeMetadata2 = v103;
  OUTLINED_FUNCTION_1_2();
  v105 = v104;
  MEMORY[0x1EEE9AC00](v106);
  OUTLINED_FUNCTION_4_6();
  v109 = (v107 - v108);
  MEMORY[0x1EEE9AC00](v110);
  v112 = &v227 - v111;
  v113 = sub_1E4201CF4();
  OUTLINED_FUNCTION_0_10();
  v115 = v114;
  MEMORY[0x1EEE9AC00](v116);
  OUTLINED_FUNCTION_5();
  v119 = v118 - v117;
  if (a1)
  {
    OUTLINED_FUNCTION_12_6();
    v121 = (*(v120 + 672))();
  }

  else
  {
    v121 = 0;
  }

  (*(v115 + 104))(v119, *MEMORY[0x1E697F608], v113);
  v122 = sub_1E4200B34();
  (*(v115 + 8))(v119, v113);
  if (a1)
  {
    v123 = v279;
    v124 = v121;
    if (v122)
    {
      OUTLINED_FUNCTION_12_6();
      v126 = (*(v125 + 1952))();
      if (v126)
      {
        v127 = v126;

        v124 = v127;
      }
    }
  }

  else
  {
    v123 = v279;
    v124 = v121;
  }

  if ((v267 & 1) != 0 && v124)
  {
    sub_1E3755B54();
    v128 = v124;
    v124 = sub_1E3E5F3B8(v128);
  }

  v267 = v124;
  switch(v268)
  {
    case 1:
      if (a1)
      {
        OUTLINED_FUNCTION_12_6();
        v130 = (*(v129 + 888))();
        if (v130)
        {
          goto LABEL_21;
        }
      }

      goto LABEL_22;
    case 2:
      if (!a1)
      {
        goto LABEL_22;
      }

      OUTLINED_FUNCTION_12_6();
      v130 = (*(v131 + 864))();
      if (!v130)
      {
        goto LABEL_22;
      }

      goto LABEL_21;
    case 3:
      if (!a1)
      {
        goto LABEL_22;
      }

      OUTLINED_FUNCTION_12_6();
      v130 = (*(v132 + 912))();
      if (!v130)
      {
        goto LABEL_22;
      }

LABEL_21:
      v133 = v130;
      break;
    default:
LABEL_22:
      v134 = v124;
      v133 = v124;
      break;
  }

  v135 = *(v105 + 16);
  v135(v112, v292, v293);
  v136 = swift_dynamicCast();
  if (v136)
  {
    sub_1E37434B8(v324, v325, v326);
  }

  v135(v109, v292, v293);
  if (swift_dynamicCast())
  {
    sub_1E37434B8(v324, v325, v326);

    LODWORD(v279) = v133 != 0;
  }

  else
  {
    LODWORD(v279) = 0;
  }

  v137 = v254;
  if (a1)
  {
    sub_1E3E3B878();
    sub_1E4203404();

    v139 = (*(*a1 + 2144))(v138);
    if (v139)
    {
      v140 = v139;
      [v139 doubleValue];
    }
  }

  else
  {
    sub_1E4203404();
  }

  v141 = v256;
  sub_1E42034C4();
  (*(v255 + 8))(v137, v141);
  if (a1)
  {
    OUTLINED_FUNCTION_12_6();
    (*(v142 + 1176))();
  }

  sub_1E4202E04();
  v143 = OUTLINED_FUNCTION_8_6();
  v144(v143);
  v145 = 0;
  if (a1)
  {
    v146 = v136 ^ 1;
    v147 = v277;
    if ((v146 & 1) == 0)
    {
      OUTLINED_FUNCTION_12_6();
      v145 = (*(v148 + 600))();
    }
  }

  else
  {
    v147 = v277;
  }

  v149 = v123;
  v150 = v261;
  v151 = v285;
  sub_1E3C42EB4(v145, 0, v261, v274, v262);

  (*(v260 + 8))(v151, v150);
  v268 = v133;
  if (a1)
  {
    OUTLINED_FUNCTION_12_6();
    v153 = (*(v152 + 696))();
    OUTLINED_FUNCTION_12_6();
    v155 = (*(v154 + 840))();
    v156 = v264;
    OUTLINED_FUNCTION_24_8(v153, v133, v155);

    v157 = OUTLINED_FUNCTION_8_6();
    v159 = v158(v157);
    (*(*a1 + 720))(v159);
  }

  else
  {
    v156 = v264;
    OUTLINED_FUNCTION_24_8(4, v133, 0);
    v160 = OUTLINED_FUNCTION_8_6();
    v161(v160);
  }

  v162 = v286;
  sub_1E37B8438();
  (*(v265 + 8))(v156, v162);
  sub_1E37B89FC(a1);
  v163 = v288;
  if (a1 && (OUTLINED_FUNCTION_12_6(), v165 = (*(v164 + 1712))(), v165 != 13))
  {
    v173 = v280;
    sub_1E3B033CC(v165, v280);
    OUTLINED_FUNCTION_22_12();
    v166 = v284;
    v167 = v149;
    if (!v171)
    {
      (*(v289 + 32))(v284, v173, v147);
      goto LABEL_50;
    }
  }

  else
  {
    __swift_storeEnumTagSinglePayload(v280, 1, 1, v147);
    v166 = v284;
    v167 = v149;
  }

  v168 = sub_1E3B030C0();
  swift_beginAccess();
  v169 = v168;
  v170 = v280;
  (*(v289 + 16))(v166, v169, v147);
  OUTLINED_FUNCTION_22_12();
  if (!v171)
  {
    sub_1E325F6F0(v170, &qword_1ECF2A250, " B\r");
  }

  if (!a1)
  {
    v172 = sub_1E4202BE4();
    __swift_storeEnumTagSinglePayload(v167, 1, 1, v172);
    goto LABEL_51;
  }

LABEL_50:
  sub_1E3E3B67C(v167);
LABEL_51:
  v174 = v276;
  sub_1E4203554();
  sub_1E325F6F0(v167, &qword_1ECF2A200, &qword_1E42F3640);
  sub_1E37B8B2C();
  if (sub_1E4205E84())
  {
    v175 = v247;
    OUTLINED_FUNCTION_20_21();
    v176();
    v177 = v243;
    sub_1E4202FA4();
    sub_1E325F6F0(v175, &qword_1ECF2A1F8, &qword_1E429E7F0);
    (*(v241 + 8))(v174, v177);
    if (a1)
    {
      OUTLINED_FUNCTION_12_6();
      v179 = (*(v178 + 1904))();
    }

    else
    {
      v179 = 28;
    }

    v180 = v236;
    v324 = v177;
    v325 = v163;
    v326 = v283;
    v327 = v282;
    v181 = swift_getOpaqueTypeConformance2();
    v183 = v228;
    v182 = v229;
    v184 = v179;
    v185 = v281;
    sub_1E37B8B84(v184, v229, v181);
    (*(v227 + 8))(v185, v182);
    v302 = v181;
    v303 = MEMORY[0x1E697EBB8];
    OUTLINED_FUNCTION_4_1();
    v186 = v231;
    v187 = swift_getWitnessTable();
    v188 = v232;
    sub_1E42035A4();
    (*(v230 + 8))(v183, v186);
    if (a1)
    {
      OUTLINED_FUNCTION_12_6();
      (*(v189 + 2120))();
    }

    OUTLINED_FUNCTION_1_25();
    v194 = sub_1E32752B0(v190, v191, v192, v193);
    v300 = v187;
    v301 = v194;
    OUTLINED_FUNCTION_4_1();
    v195 = v234;
    v196 = swift_getWitnessTable();
    sub_1E4203144();
    (*(v233 + 8))(v188, v195);
    if (a1)
    {
      OUTLINED_FUNCTION_12_6();
      v198 = (*(v197 + 1976))();
    }

    else
    {
      v198 = 7;
    }

    v200 = v249;
    v199 = v250;
    v201 = v252;
    (*(v250 + 104))(v249, *MEMORY[0x1E697E7D8], v252);
    v202 = sub_1E4201314();
    (*(v199 + 8))(v200, v201);
    v298 = v196;
    v299 = v248;
    OUTLINED_FUNCTION_4_1();
    v203 = v238;
    v204 = swift_getWitnessTable();
    v205 = v239;
    sub_1E37B8C10(v198, v202 & 1, v203, v204);
    (*(v237 + 8))(v180, v203);
    if (a1)
    {
      OUTLINED_FUNCTION_12_6();
      (*(v206 + 2168))();
    }

    v207 = v284;
    OUTLINED_FUNCTION_1_25();
    v212 = sub_1E32752B0(v208, v209, v210, v211);
    v296 = v204;
    v297 = v212;
    OUTLINED_FUNCTION_4_1();
    v213 = v242;
    v214 = swift_getWitnessTable();
    v215 = v244;
    sub_1E37B8C6C();
    (*(v240 + 8))(v205, v213);
    if (a1 && (OUTLINED_FUNCTION_12_6(), (*(v216 + 176))(&v324), (v328 & 1) == 0))
    {
      v219.n128_u64[0] = v326;
      v220.n128_u64[0] = v327;
      v217.n128_u64[0] = v324;
      v218.n128_u64[0] = v325;
      j_nullsub_1(v217, v218, v219, v220);
    }

    else
    {
      OUTLINED_FUNCTION_5_8();
    }

    OUTLINED_FUNCTION_1_25();
    v225 = sub_1E32752B0(v221, v222, v223, v224);
    v294 = v214;
    v295 = v225;
    OUTLINED_FUNCTION_4_1();
    v226 = v246;
    swift_getWitnessTable();
    sub_1E42034D4();

    (*(v245 + 8))(v215, v226);
    (*(v289 + 8))(v207, v147);
    (*(v235 + 8))(OpaqueTypeMetadata2, v291);
  }

  else
  {
    __break(1u);
  }
}

void sub_1E37B796C()
{
  OUTLINED_FUNCTION_31_1();
  v146 = v0;
  v154 = v1;
  v155 = v2;
  v4 = v3;
  v6 = v5;
  v144 = v7;
  v137 = v8;
  v10 = v9;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF28998, &unk_1E4297E30);
  OUTLINED_FUNCTION_18_12();
  v11 = sub_1E42013A4();
  OUTLINED_FUNCTION_0_10();
  WitnessTable = v12;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_4_6();
  v139 = v14 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v137 - v17;
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_25_3();
  v143 = v20;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2A220, &qword_1E429D110);
  OUTLINED_FUNCTION_18_12();
  v21 = sub_1E42013A4();
  OUTLINED_FUNCTION_0_10();
  v138 = v22;
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_4_6();
  v142 = v24 - v25;
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_25_3();
  v141 = v27;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2A218, &qword_1E42AFD10);
  OUTLINED_FUNCTION_13_10();
  v28 = sub_1E42013A4();
  v152 = v21;
  sub_1E4201F54();
  OUTLINED_FUNCTION_0_10();
  v30 = v29;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v137 - v32;
  v147 = v28;
  v34 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_4_6();
  v38 = v36 - v37;
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_25_3();
  v145 = v40;
  OUTLINED_FUNCTION_138();
  v151 = v41;
  v153 = v11;
  sub_1E4201F54();
  OUTLINED_FUNCTION_0_10();
  v149 = v43;
  v150 = v42;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_44();
  v148 = v45;
  if ((v6 & 1) != 0 || v10 == 4)
  {
    if (v144)
    {

      sub_1E3A9D168();
      if (v193)
      {
        v173 = v194;
        v174 = v195;
        v172 = v193;
        OUTLINED_FUNCTION_30_12(&v172, v70, MEMORY[0x1E697E3F0]);
        sub_1E325F6F0(&v193, &qword_1ECF2A260, &qword_1E42CEDA0);
        OUTLINED_FUNCTION_17_18();
        v75 = sub_1E32752B0(v71, v72, v73, v74);
        v170 = v4;
        v171 = v75;
        OUTLINED_FUNCTION_13_33();
        v146 = v33;
        v76 = v152;
        WitnessTable = swift_getWitnessTable();
        v77 = v138;
        v143 = v30;
        v78 = *(v138 + 16);
        v80 = v141;
        v79 = v142;
        v78(v141, v142, v76);
        v145 = *(v77 + 8);
        v145(v79, v76);
        v78(v79, v80, v76);
        v69 = v4;
        v81 = sub_1E32752B0(&qword_1EE288880, &qword_1ECF2A218, &qword_1E42AFD10, v38);
        v168 = v4;
        v169 = v81;
        v82 = v147;
        v83 = swift_getWitnessTable();
        v84 = v79;
        v85 = WitnessTable;
        sub_1E37B8E90(v84, v82, v76);
        v166 = v83;
        v167 = v85;
        OUTLINED_FUNCTION_2_25();
        v86 = v151;
        swift_getWitnessTable();
        OUTLINED_FUNCTION_1_25();
        v91 = sub_1E32752B0(v87, v88, v89, v90);
        v164 = v69;
        v165 = v91;
        swift_getWitnessTable();
        v65 = v148;
        v92 = v146;
        OUTLINED_FUNCTION_20_21();
        sub_1E37B8D98(v93, v94);

        (*(v143 + 8))(v92, v86);
        v95 = v145;
        v145(v142, v76);
        v95(v141, v76);
        goto LABEL_15;
      }
    }

    if (v6)
    {
      v96 = v137;
      if (v137)
      {
        v97 = v137;
      }

      else
      {
        v97 = *sub_1E3E5FD88();
      }

      v98 = v96;
      sub_1E38F08C4(v97);
    }

    v99 = v154;
    sub_1E4202FB4();

    OUTLINED_FUNCTION_1_25();
    v104 = sub_1E32752B0(v100, v101, v102, v103);
    v191 = v99;
    v192 = v104;
    v105 = v153;
    v146 = swift_getWitnessTable();
    v106 = WitnessTable;
    v107 = WitnessTable + 16;
    v108 = *(WitnessTable + 16);
    (v108)(v143, v18, v105);
    v145 = *(v106 + 8);
    v109 = v18;
    v69 = v99;
    v145(v109, v105);
    v110 = v139;
    OUTLINED_FUNCTION_20_21();
    v108();
    OUTLINED_FUNCTION_17_18();
    v115 = sub_1E32752B0(v111, v112, v113, v114);
    v189 = v99;
    v190 = v115;
    v116 = swift_getWitnessTable();
    v117 = sub_1E32752B0(&qword_1EE288878, &qword_1ECF2A220, &qword_1E429D110, v107);
    v187 = v99;
    v188 = v117;
    v118 = swift_getWitnessTable();
    v185 = v116;
    v186 = v118;
    OUTLINED_FUNCTION_2_25();
    swift_getWitnessTable();
    v65 = v148;
    OUTLINED_FUNCTION_20_21();
    sub_1E37B8E90(v119, v120, v121);
    v122 = v145;
    v145(v110, v105);
    v122(v143, v105);
  }

  else
  {
    LODWORD(v193) = sub_1E41261D8(v10);
    OUTLINED_FUNCTION_30_12(&v193, v46, MEMORY[0x1E697FE80]);
    v47 = MEMORY[0x1E6980490];
    v48 = sub_1E32752B0(&qword_1EE288880, &qword_1ECF2A218, &qword_1E42AFD10, MEMORY[0x1E6980490]);
    v162 = v4;
    v163 = v48;
    OUTLINED_FUNCTION_4_1();
    v141 = v49;
    v143 = v30;
    v50 = v147;
    v142 = swift_getWitnessTable();
    v146 = v33;
    v51 = *(v34 + 16);
    v52 = v145;
    v51(v145, v38, v50);
    v144 = *(v34 + 8);
    v144(v38, v50);
    v51(v38, v52, v50);
    v53 = v4;
    v54 = sub_1E32752B0(&qword_1EE288878, &qword_1ECF2A220, &qword_1E429D110, v47);
    v160 = v4;
    v161 = v54;
    v55 = swift_getWitnessTable();
    v56 = v146;
    v57 = v142;
    sub_1E37B8D98(v38, v50);
    v158 = v57;
    v159 = v55;
    OUTLINED_FUNCTION_2_25();
    v58 = v151;
    swift_getWitnessTable();
    OUTLINED_FUNCTION_1_25();
    v63 = sub_1E32752B0(v59, v60, v61, v62);
    v156 = v53;
    v157 = v63;
    swift_getWitnessTable();
    OUTLINED_FUNCTION_20_21();
    v65 = v64;
    sub_1E37B8D98(v66, v67);
    (*(v143 + 8))(v56, v58);
    v68 = v144;
    v144(v38, v50);
    v68(v145, v50);
    v69 = v53;
  }

LABEL_15:
  v123 = MEMORY[0x1E6980490];
  v124 = sub_1E32752B0(&qword_1EE288880, &qword_1ECF2A218, &qword_1E42AFD10, MEMORY[0x1E6980490]);
  v183 = v69;
  v184 = v124;
  v125 = swift_getWitnessTable();
  v126 = sub_1E32752B0(&qword_1EE288878, &qword_1ECF2A220, &qword_1E429D110, v123);
  v181 = v69;
  v182 = v126;
  v127 = swift_getWitnessTable();
  v179 = v125;
  v180 = v127;
  v128 = swift_getWitnessTable();
  OUTLINED_FUNCTION_1_25();
  v133 = sub_1E32752B0(v129, v130, v131, v132);
  v177 = v69;
  v178 = v133;
  v134 = swift_getWitnessTable();
  v175 = v128;
  v176 = v134;
  v135 = v150;
  swift_getWitnessTable();
  v136 = v149;
  (*(v149 + 16))(v155, v65, v135);
  (*(v136 + 8))(v65, v135);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E37B8438()
{
  OUTLINED_FUNCTION_31_1();
  WitnessTable = v0;
  v86 = v2;
  v87 = v1;
  v4 = v3;
  v80 = v5;
  v82 = v5;
  OUTLINED_FUNCTION_1_2();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_4_6();
  v11 = (v9 - v10);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v75 - v13;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2A228, &qword_1E429D118);
  OUTLINED_FUNCTION_18_12();
  v15 = sub_1E42013A4();
  OUTLINED_FUNCTION_0_10();
  v79 = v16;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_4_6();
  v78 = v18 - v19;
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_25_3();
  v77 = v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A258, &qword_1E42DE8A0);
  MEMORY[0x1EEE9AC00](v22 - 8);
  OUTLINED_FUNCTION_4_6();
  v25 = v23 - v24;
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v75 - v27;
  v29 = sub_1E4203D34();
  OUTLINED_FUNCTION_0_10();
  v81 = v30;
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_5();
  v34 = v33 - v32;
  OUTLINED_FUNCTION_138();
  v85 = sub_1E4201F54();
  OUTLINED_FUNCTION_0_10();
  v83 = v35;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v36);
  v38 = &v75 - v37;
  if (v82 == 11)
  {
    __swift_storeEnumTagSinglePayload(v28, 1, 1, v29);
LABEL_5:
    sub_1E325F6F0(v28, &qword_1ECF2A258, &qword_1E42DE8A0);
    v40 = *(v7 + 16);
    v40(v14, WitnessTable, v4);
    v40(v11, v14, v4);
    OUTLINED_FUNCTION_1_25();
    v45 = sub_1E32752B0(v41, v42, v43, v44);
    v64 = v87;
    v94 = v87;
    v95 = v45;
    OUTLINED_FUNCTION_4_1();
    swift_getWitnessTable();
    v46 = OUTLINED_FUNCTION_134_0();
    sub_1E37B8E90(v46, v47, v4);
    v48 = *(v7 + 8);
    v48(v11, v4);
    v49 = OUTLINED_FUNCTION_23_16();
    (v48)(v49);
    goto LABEL_6;
  }

  sub_1E41263A0(v80, v28);
  OUTLINED_FUNCTION_22_12();
  if (v39)
  {
    goto LABEL_5;
  }

  v50 = *(v81 + 32);
  v76 = v34;
  v50(v34, v28, v29);
  swift_getKeyPath();
  OUTLINED_FUNCTION_20_21();
  v51();
  __swift_storeEnumTagSinglePayload(v25, 0, 1, v29);
  v52 = v78;
  v53 = v87;
  sub_1E4202DE4();

  sub_1E325F6F0(v25, &qword_1ECF2A258, &qword_1E42DE8A0);
  OUTLINED_FUNCTION_1_25();
  v58 = sub_1E32752B0(v54, v55, v56, v57);
  v88 = v53;
  v89 = v58;
  OUTLINED_FUNCTION_4_1();
  WitnessTable = swift_getWitnessTable();
  v59 = v79;
  v60 = *(v79 + 16);
  v61 = v77;
  v60(v77, v52, v15);
  v62 = *(v59 + 8);
  v63 = OUTLINED_FUNCTION_134_0();
  v62(v63);
  v60(v52, v61, v15);
  v64 = v87;
  v65 = OUTLINED_FUNCTION_134_0();
  sub_1E37B8D98(v65, v66);
  v67 = OUTLINED_FUNCTION_134_0();
  v62(v67);
  (v62)(v61, v15);
  (*(v81 + 8))(v76, v29);
LABEL_6:
  OUTLINED_FUNCTION_1_25();
  v72 = sub_1E32752B0(v68, v69, v70, v71);
  v92 = v64;
  v93 = v72;
  OUTLINED_FUNCTION_4_1();
  v90 = swift_getWitnessTable();
  v91 = v64;
  OUTLINED_FUNCTION_2_25();
  v73 = v85;
  swift_getWitnessTable();
  v74 = v83;
  (*(v83 + 16))(v86, v38, v73);
  (*(v74 + 8))(v38, v73);
  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E37B89FC(uint64_t a1)
{
  if (a1)
  {
    v2 = (*(*a1 + 2048))(a1);
    v4 = v3;
  }

  else
  {
    v2 = 0;
    v4 = 1;
  }

  if (sub_1E3B028AC())
  {
    if (!a1)
    {
      return 0;
    }

    v5 = (*(*a1 + 2072))();
    if (v6)
    {
      return 0;
    }

    v2 = v5;
LABEL_15:
    if (v2)
    {
      return v2;
    }

    return 0;
  }

  if ((sub_1E3B02A04() & 1) == 0)
  {
    if (v4)
    {
      return v2;
    }

    goto LABEL_15;
  }

  if (!a1)
  {
    return 0;
  }

  v7 = (*(*a1 + 2096))();
  if (v8)
  {
    return 0;
  }

  v2 = v7;
  if (!v7)
  {
    return 0;
  }

  return v2;
}

unint64_t sub_1E37B8B2C()
{
  result = qword_1EE289CC8;
  if (!qword_1EE289CC8)
  {
    sub_1E42012F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE289CC8);
  }

  return result;
}

void sub_1E37B8B84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 != 28)
  {
    sub_1E376BD24(a1);
  }

  sub_1E37B93F0();
}

uint64_t sub_1E37B8C10(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  switch(a1)
  {
    case 1:
      return MEMORY[0x1EEDE3BB0](a1, a3, a4);
    case 2:
      if (a2)
      {
        a1 = 0;
      }

      else
      {
        a1 = 2;
      }

      break;
    case 3:
    case 4:
    case 5:
    case 7:
      a1 = 0;
      break;
    case 6:
      a1 = 2;
      break;
    default:
      if (a2)
      {
        a1 = 2;
      }

      else
      {
        a1 = 0;
      }

      break;
  }

  return MEMORY[0x1EEDE3BB0](a1, a3, a4);
}

void sub_1E37B8C6C()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  v4 = sub_1E4202B84();
  OUTLINED_FUNCTION_0_10();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  v10 = v9 - v8;
  v11 = *MEMORY[0x1E6980FA0];
  v12 = *MEMORY[0x1E6980FB0];
  if (v3 != 5)
  {
    v12 = *MEMORY[0x1E6980FA8];
  }

  if (v3 != 3)
  {
    v11 = v12;
  }

  if (v1)
  {
    v13 = *MEMORY[0x1E6980FA8];
  }

  else
  {
    v13 = v11;
  }

  (*(v6 + 104))(v10, v13, v4);
  sub_1E4202F64();
  (*(v6 + 8))(v10, v4);
  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E37B8D98(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E4201F34();
  v5 = MEMORY[0x1EEE9AC00](v4);
  (*(*(a2 - 8) + 16))(&v8 - v6, a1, a2, v5);
  swift_storeEnumTagMultiPayload();
  return sub_1E4201F44();
}

uint64_t sub_1E37B8E90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1E4201F34();
  v6 = MEMORY[0x1EEE9AC00](v5);
  (*(*(a3 - 8) + 16))(&v9 - v7, a1, a3, v6);
  swift_storeEnumTagMultiPayload();
  return sub_1E4201F44();
}

uint64_t sub_1E37B8FAC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A258, &qword_1E42DE8A0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_1E37B9808(a1, &v5 - v3);
  return sub_1E42018A4();
}

void sub_1E37B903C()
{
  OUTLINED_FUNCTION_31_1();
  WitnessTable = v0;
  v2 = v1;
  v4 = v3;
  v51 = v5;
  v46 = v6;
  v47 = v6;
  OUTLINED_FUNCTION_1_2();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_4_6();
  v12 = v10 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v45 - v14;
  sub_1E42015B4();
  OUTLINED_FUNCTION_18_12();
  v16 = sub_1E42013A4();
  OUTLINED_FUNCTION_0_10();
  v18 = v17;
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_4_6();
  v22 = (v20 - v21);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v45 - v24;
  sub_1E4201F54();
  OUTLINED_FUNCTION_0_10();
  v49 = v27;
  v50 = v26;
  OUTLINED_FUNCTION_5_7();
  v29 = MEMORY[0x1EEE9AC00](v28);
  v31 = &v45 - v30;
  if (v47 == 28)
  {
    v32 = v8;
    v33 = v8;
    v34 = v2;
    v35 = *(v32 + 16);
    v35(v15, WitnessTable, v4, v29);
    (v35)(v12, v15, v4);
    v58 = v34;
    v59 = MEMORY[0x1E697EBB8];
    OUTLINED_FUNCTION_4_1();
    swift_getWitnessTable();
    sub_1E37B8E90(v12, v16, v4);
    v36 = *(v33 + 8);
    v36(v12, v4);
    v36(v15, v4);
  }

  else
  {
    sub_1E37B8B84(v46, v4, v2);
    v52 = v2;
    v53 = MEMORY[0x1E697EBB8];
    OUTLINED_FUNCTION_4_1();
    WitnessTable = swift_getWitnessTable();
    v37 = *(v18 + 16);
    v37(v25, v22, v16);
    v34 = v2;
    v38 = *(v18 + 8);
    v39 = OUTLINED_FUNCTION_23_16();
    v38(v39);
    v37(v22, v25, v16);
    v40 = OUTLINED_FUNCTION_23_16();
    sub_1E37B8D98(v40, v41);
    v42 = OUTLINED_FUNCTION_23_16();
    v38(v42);
    (v38)(v25, v16);
  }

  v56 = v34;
  v57 = MEMORY[0x1E697EBB8];
  OUTLINED_FUNCTION_4_1();
  v54 = swift_getWitnessTable();
  v55 = v34;
  OUTLINED_FUNCTION_2_25();
  v43 = v50;
  swift_getWitnessTable();
  v44 = v49;
  (*(v49 + 16))(v51, v31, v43);
  (*(v44 + 8))(v31, v43);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E37B93F0()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v2 = sub_1E4203E94();
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  v8 = v7 - v6;
  v9 = *MEMORY[0x1E6981DF0];
  v10 = *(v4 + 104);
  v10(v7 - v6, v9, v2);
  if ((v1 & 0x100000000) == 0)
  {
    switch(v1)
    {
      case 0:
        break;
      case 1:
        v30 = OUTLINED_FUNCTION_4_28();
        v31(v30);
        v15 = MEMORY[0x1E6981E10];
        goto LABEL_24;
      case 2:
        v24 = OUTLINED_FUNCTION_4_28();
        v25(v24);
        v15 = MEMORY[0x1E6981DF8];
        goto LABEL_24;
      case 3:
        v40 = OUTLINED_FUNCTION_4_28();
        v41(v40);
        v15 = MEMORY[0x1E6981E08];
        goto LABEL_24;
      case 4:
        v42 = OUTLINED_FUNCTION_4_28();
        v43(v42);
        v15 = MEMORY[0x1E6981DE8];
        goto LABEL_24;
      case 5:
        v26 = OUTLINED_FUNCTION_4_28();
        v27(v26);
        v15 = MEMORY[0x1E6981E00];
        goto LABEL_24;
      case 6:
        v32 = OUTLINED_FUNCTION_4_28();
        v33(v32);
        v15 = MEMORY[0x1E6981D88];
        goto LABEL_24;
      case 7:
        v34 = OUTLINED_FUNCTION_4_28();
        v35(v34);
        v15 = MEMORY[0x1E6981E18];
        goto LABEL_24;
      case 8:
        v46 = OUTLINED_FUNCTION_4_28();
        v47(v46);
        v15 = MEMORY[0x1E6981E30];
        goto LABEL_24;
      case 9:
        v44 = OUTLINED_FUNCTION_4_28();
        v45(v44);
        v15 = MEMORY[0x1E6981E28];
        goto LABEL_24;
      case 10:
        v18 = OUTLINED_FUNCTION_4_28();
        v19(v18);
        v15 = MEMORY[0x1E6981D90];
        goto LABEL_24;
      case 11:
        v28 = OUTLINED_FUNCTION_4_28();
        v29(v28);
        v15 = MEMORY[0x1E6981E20];
        goto LABEL_24;
      case 12:
        v20 = OUTLINED_FUNCTION_4_28();
        v21(v20);
        v15 = MEMORY[0x1E6981DD8];
        goto LABEL_24;
      case 13:
        v16 = OUTLINED_FUNCTION_4_28();
        v17(v16);
        v15 = MEMORY[0x1E6981DA8];
        goto LABEL_24;
      case 14:
        v36 = OUTLINED_FUNCTION_4_28();
        v37(v36);
        v15 = MEMORY[0x1E6981DE0];
        goto LABEL_24;
      case 15:
        v38 = OUTLINED_FUNCTION_4_28();
        v39(v38);
        v15 = MEMORY[0x1E6981D98];
        goto LABEL_24;
      case 20:
        v50 = OUTLINED_FUNCTION_4_28();
        v51(v50);
        v15 = MEMORY[0x1E6981DB0];
        goto LABEL_24;
      case 21:
        v48 = OUTLINED_FUNCTION_4_28();
        v49(v48);
        v15 = MEMORY[0x1E6981DD0];
        goto LABEL_24;
      case 23:
        v13 = OUTLINED_FUNCTION_4_28();
        v14(v13);
        v15 = MEMORY[0x1E6981DC0];
        goto LABEL_24;
      case 26:
        v22 = OUTLINED_FUNCTION_4_28();
        v23(v22);
        v15 = MEMORY[0x1E6981DA0];
        goto LABEL_24;
      case 27:
        v52 = OUTLINED_FUNCTION_4_28();
        v53(v52);
        v15 = MEMORY[0x1E6981DB8];
LABEL_24:
        v9 = *v15;
        goto LABEL_25;
      default:
        goto LABEL_26;
    }
  }

  v11 = OUTLINED_FUNCTION_4_28();
  v12(v11);
LABEL_25:
  v10(v8, v9, v2);
LABEL_26:
  sub_1E4203564();
  v54 = OUTLINED_FUNCTION_8_6();
  v55(v54);
  OUTLINED_FUNCTION_25_2();
}

uint64_t get_witness_table_7SwiftUI4ViewRzlAA15ModifiedContentVyxAA30_EnvironmentKeyWritingModifierVyAA13TextAlignmentOGGAaBHPxAaBHD1__AiA0cI0HPyHCHCTm(uint64_t *a1, uint64_t *a2, uint64_t *a3, unint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
  OUTLINED_FUNCTION_13_10();
  sub_1E42013A4();
  OUTLINED_FUNCTION_1_25();
  sub_1E32752B0(a4, a2, a3, v7);
  OUTLINED_FUNCTION_4_1();
  return swift_getWitnessTable();
}

uint64_t sub_1E37B9808(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A258, &qword_1E42DE8A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E37B9878()
{
  OUTLINED_FUNCTION_5_16();
  swift_beginAccess();
  *(v0 + 24) = v2;
  *(v0 + 32) = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF326C0, &qword_1E429D160);
  sub_1E37B9FD8();
  return sub_1E4200624();
}

uint64_t (*sub_1E37B98EC(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1E37B9940;
}

uint64_t sub_1E37B9940(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF326C0, &qword_1E429D160);
    sub_1E37B9FD8();
    return sub_1E4200624();
  }

  return result;
}

double sub_1E37B999C()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_8();
  (*(v1 + 168))();

  swift_beginAccess();
  return *(v0 + 24);
}

uint64_t sub_1E37B9AA4()
{
  OUTLINED_FUNCTION_5_16();
  swift_beginAccess();
  if (*(v0 + 24) == v2 && *(v0 + 32) == v1)
  {
    OUTLINED_FUNCTION_6_12();
    return sub_1E37B9878();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    OUTLINED_FUNCTION_8();
    (*(v5 + 176))();
  }
}

uint64_t (*sub_1E37B9B98(void *a1))()
{
  v3 = __swift_coroFrameAllocStub(0x40uLL);
  *a1 = v3;
  v3[4] = v1;
  swift_getKeyPath();
  OUTLINED_FUNCTION_8();
  (*(v4 + 168))();

  v3[5] = OBJC_IVAR____TtC8VideosUI30LeagueStandingsCardSharedModel___observationRegistrar;
  *v3 = v1;
  swift_getKeyPath();
  v3[6] = sub_1E37B9F34();
  sub_1E41FE914();

  v3[7] = sub_1E37B98EC(v3);
  return sub_1E37B9C88;
}

void sub_1E37B9C88(void *a1)
{
  v1 = *a1;
  (*(*a1 + 56))(*a1, 0);
  *v1 = v1[4];
  swift_getKeyPath();
  sub_1E41FE904();

  free(v1);
}

uint64_t sub_1E37B9D1C()
{
  OUTLINED_FUNCTION_5_16();
  v0 = swift_allocObject();
  OUTLINED_FUNCTION_6_12();
  sub_1E37B9D64();
  return v0;
}

void *sub_1E37B9D64()
{
  OUTLINED_FUNCTION_5_16();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF326C0, &qword_1E429D160);
  OUTLINED_FUNCTION_119(v1);
  v2 = sub_1E4200544();
  v0[3] = 0;
  v0[4] = 0;
  v0[2] = v2;
  sub_1E41FE924();
  OUTLINED_FUNCTION_6_12();
  sub_1E37B9AA4();
  return v0;
}

uint64_t sub_1E37B9DD8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF326C0, &qword_1E429D160);
  sub_1E37B9FD8();
  return sub_1E4200624();
}

unint64_t sub_1E37B9F34()
{
  result = qword_1ECF2A268;
  if (!qword_1ECF2A268)
  {
    type metadata accessor for LeagueStandingsCardSharedModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2A268);
  }

  return result;
}

uint64_t type metadata accessor for LeagueStandingsCardSharedModel(uint64_t a1)
{
  result = qword_1EE292EF0;
  if (!qword_1EE292EF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1E37B9FD8()
{
  result = qword_1EE28A140;
  if (!qword_1EE28A140)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1ECF326C0, &qword_1E429D160);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE28A140);
  }

  return result;
}

uint64_t sub_1E37BA03C()
{

  v1 = OBJC_IVAR____TtC8VideosUI30LeagueStandingsCardSharedModel___observationRegistrar;
  sub_1E41FE934();
  OUTLINED_FUNCTION_10();
  (*(v2 + 8))(v0 + v1);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v3, v4);
}

uint64_t sub_1E37BA10C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI19LeagueStandingsCard_layout;
  OUTLINED_FUNCTION_37(a1);
  *(v1 + v3) = a1;
}

void *sub_1E37BA1A0(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC8VideosUI19LeagueStandingsCard_hostingView;
  OUTLINED_FUNCTION_0_12(a1);
  v3 = *(v1 + v2);
  v4 = v3;
  return v3;
}

void sub_1E37BA1DC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI19LeagueStandingsCard_hostingView;
  OUTLINED_FUNCTION_37(a1);
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_1E37BA270(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC8VideosUI19LeagueStandingsCard_isPrototypeCell;
  OUTLINED_FUNCTION_0_12(a1);
  return *(v1 + v2);
}

uint64_t sub_1E37BA2A4(uint64_t a1)
{
  v2 = a1;
  v3 = OBJC_IVAR____TtC8VideosUI19LeagueStandingsCard_isPrototypeCell;
  result = OUTLINED_FUNCTION_37(a1);
  *(v1 + v3) = v2;
  return result;
}

uint64_t sub_1E37BA368(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI19LeagueStandingsCard_cardObservableModel;
  OUTLINED_FUNCTION_37(a1);
  *(v1 + v3) = a1;
}

id sub_1E37BA3FC()
{
  OUTLINED_FUNCTION_9_23();
  *(v0 + OBJC_IVAR____TtC8VideosUI19LeagueStandingsCard_layout) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI19LeagueStandingsCard_hostingView) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI19LeagueStandingsCard_isPrototypeCell) = 0;
  v1 = OBJC_IVAR____TtC8VideosUI19LeagueStandingsCard_cardObservableModel;
  v2 = type metadata accessor for LeagueStandingsCardSharedModel(0);
  OUTLINED_FUNCTION_119(v2);
  OUTLINED_FUNCTION_13_34(v3, v4);
  *(v0 + v1) = v0;
  v10 = type metadata accessor for LeagueStandingsCard();
  v5 = OUTLINED_FUNCTION_2_0();
  v8 = objc_msgSendSuper2(v6, v7, v5, v0, v10);
  [v8 setAutoresizingMask_];
  sub_1E37BA6CC();

  return v8;
}

void sub_1E37BA510()
{
  *(v0 + OBJC_IVAR____TtC8VideosUI19LeagueStandingsCard_layout) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI19LeagueStandingsCard_hostingView) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI19LeagueStandingsCard_isPrototypeCell) = 0;
  v1 = OBJC_IVAR____TtC8VideosUI19LeagueStandingsCard_cardObservableModel;
  v2 = type metadata accessor for LeagueStandingsCardSharedModel(0);
  OUTLINED_FUNCTION_119(v2);
  OUTLINED_FUNCTION_13_34(v3, v4);
  *(v0 + v1) = v0;
  sub_1E42076B4();
  __break(1u);
}

id sub_1E37BA5D4()
{
  v1 = [objc_opt_self() defaultCenter];
  [v1 removeObserver_];

  v3.receiver = v0;
  v3.super_class = type metadata accessor for LeagueStandingsCard();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void sub_1E37BA6CC()
{
  v1 = [objc_opt_self() defaultCenter];
  [v1 addObserver:v0 selector:sel_contentSizeCategoryDidChange name:*MEMORY[0x1E69DDC48] object:0];
}

uint64_t sub_1E37BA748()
{
  OUTLINED_FUNCTION_21();
  (*(v0 + 184))();
  OUTLINED_FUNCTION_30();
  (*(v1 + 160))();
}

void sub_1E37BA810(uint64_t a1, double a2, double a3, double a4)
{
  v5 = v4;
  OUTLINED_FUNCTION_21();
  v54 = v10;
  v11 = (*(v9 + 168))(v10);
  v12 = *(*a1 + 392);
  if ((v12)(v11))
  {
    type metadata accessor for LeagueStandingsCardLayout();
    if (!swift_dynamicCastClass())
    {
    }
  }

  OUTLINED_FUNCTION_3_3();
  (*(v13 + 120))();
  OUTLINED_FUNCTION_3_3();
  v15 = (*(v14 + 112))();
  if (!v15 || (v16 = (*(*v15 + 984))(), v18 = v17, , (v18 & 1) != 0))
  {
    v16 = 24;
  }

  type metadata accessor for LayoutGrid();
  v19 = sub_1E3A25D00(v16, 0, a2, 1.0);
  OUTLINED_FUNCTION_3_3();
  v21 = *(v20 + 184);
  v21();
  OUTLINED_FUNCTION_30();
  (*(v22 + 136))(v19, 0.0);

  sub_1E3A256EC();
  v23 = [objc_opt_self() current];
  sub_1E3C2AE10();
  v25 = v24;
  v27 = v26;
  v29 = v28;
  if (v12())
  {
    OUTLINED_FUNCTION_30();
    (*(v30 + 1640))(v25, v27, v29);
  }

  v53 = v27;

  (v21)(v31);
  sub_1E3ABFC6C();
  v32 = MEMORY[0x1E69E7D40];
  v33 = (*((*MEMORY[0x1E69E7D40] & *v5) + 0x88))();
  if (v33)
  {
    v34 = v33;
    OUTLINED_FUNCTION_11_27();

    v35 = v34;

    sub_1E4201234();
  }

  else
  {
    OUTLINED_FUNCTION_11_27();
    v36 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A290, "Hb\r"));

    v37 = sub_1E4201214();
    [v37 _setSafeAreaInsetsFrozen_];
    [v37 setAutoresizingMask_];
    v38 = *((*v32 & *v5) + 0x90);
    v35 = v37;
    v38(v37);
  }

  v39 = [v5 vuiContentView];
  [v39 vui:v35 addSubview:v35 oldView:?];

  v40 = [v35 vui_setNeedsLayout];
  OUTLINED_FUNCTION_10_26(v41, v42, v43, v44, v40, sel_systemLayoutSizeFittingSize_withHorizontalFittingPriority_verticalFittingPriority_);
  v46 = v45;
  sub_1E37BAF90();
  if ((v54 & 1) == 0 && a4 - v46 > 1.0)
  {

    (v21)(v47);
    sub_1E3ABFC6C();

    sub_1E4201234();
    v48 = [v35 vui_setNeedsLayout];
    OUTLINED_FUNCTION_10_26(v49, v50, v51, v52, v48, sel_systemLayoutSizeFittingSize_withHorizontalFittingPriority_verticalFittingPriority_);
    sub_1E37BAF90();
  }
}

void *sub_1E37BAD44(uint64_t a1, void *a2, double a3, double a4, double a5)
{
  if (a2)
  {
    v9 = a2;
    sub_1E37BA810(a1, a3, v10, a5);
  }

  return a2;
}

double sub_1E37BADAC(char a1, double a2, double a3)
{
  OUTLINED_FUNCTION_21();
  v8 = (*(v7 + 136))();
  if (!v8)
  {
    return 0.0;
  }

  v9 = v8;
  sub_1E4201224();

  if (!v25 || ((OUTLINED_FUNCTION_8(), v11 = (*(v10 + 128))(), v13 = v12, , v11 == a2) ? (v14 = v13 == a3) : (v14 = 0), !v14))
  {
    sub_1E37BAF90();
  }

  sub_1E37BB170();
  v17 = v16;
  if (a1)
  {
    v18 = v15;

    return v18;
  }

  else
  {
    v19 = [v3 vuiContentView];
    [v19 frame];
    v21 = v20;
    v23 = v22;

    [v9 setFrame_];
  }

  return a2;
}

void sub_1E37BAF90()
{
  OUTLINED_FUNCTION_5_16();
  OUTLINED_FUNCTION_21();
  v3 = *(v2 + 136);
  v4 = v3();
  v5 = 0.0;
  if (v4 && (v6 = v4, sub_1E4201224(), v6, v4 = , v23))
  {
    OUTLINED_FUNCTION_8();
    v5 = (*(v7 + 128))();
    v9 = v8;
  }

  else
  {
    v9 = 0.0;
  }

  if (v5 != v1 || v9 != v0)
  {
    v11 = (v3)(v4);
    if (v11)
    {
      v12 = v11;
      sub_1E4201224();

      if (v23)
      {
        OUTLINED_FUNCTION_8();
        v13 = OUTLINED_FUNCTION_6_12();
        v14(v13);
      }
    }

    v15 = (v3)(v11);
    if (v15)
    {
      v16 = v15;
      [v15 invalidateIntrinsicContentSize];
    }

    v17 = v3();
    if (v17)
    {
      v18 = v17;
      [v17 vui_setNeedsLayout];
    }

    v19 = v3();
    if (v19)
    {
      v20 = v19;
      [v19 vui_layoutIfNeeded];
    }

    v21 = v3();
    if (v21)
    {
      v22 = v21;
      [v21 _resetContentRect];
    }
  }
}

void sub_1E37BB170()
{
  OUTLINED_FUNCTION_5_16();
  [v0 sizeThatFits_];
  OUTLINED_FUNCTION_21();
  (*(v1 + 160))();
  OUTLINED_FUNCTION_6_12();
}

void *sub_1E37BB204(double a1, double a2, double a3, double a4, double a5)
{
  OUTLINED_FUNCTION_9_23();
  v12 = v11;
  v13 = MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_21();
  v15 = (*(v14 + 136))();
  if (v15)
  {

    if ((TVAppFeature.isEnabled.getter(10, v16, v17) & 1) == 0)
    {
      if ((*((*v13 & *v5) + 0x70))())
      {
        OUTLINED_FUNCTION_30();
        (*(v18 + 176))(v24);

        if (v25)
        {
          a4 = 0.0;
        }

        else
        {
          a4 = *&v24[2];
        }
      }

      else
      {
        a4 = 0.0;
      }
    }

    sub_1E41A300C(__src);
    v19 = [v5 vui:1 layoutSubviews:v8 computationOnly:1.79769313e308];
    sub_1E41A2FE8(v19, v20, v21);
    __src[6] = v7;
    __src[7] = v6;
    *&__src[8] = a4;
    *&__src[9] = a5;
  }

  else
  {
    sub_1E41A300C(__src);
  }

  return memcpy(v12, __src, 0x50uLL);
}

uint64_t sub_1E37BB3BC(uint64_t a1)
{
  result = sub_1E41FE934();
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

uint64_t sub_1E37BB498(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 256) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_1E37BB4F8(void *a1))(uint64_t a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  v3[5] = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v5 = *(v1 + 256);
  v3[3] = Strong;
  v3[4] = v5;
  return sub_1E37BB578;
}

void sub_1E37BB578(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + 256) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

uint64_t sub_1E37BB5FC()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_8();
  (*(v0 + 1056))();
}

uint64_t sub_1E37BB66C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 936))();
  *a2 = result;
  return result;
}

uint64_t sub_1E37BB6EC(uint64_t a1)
{
  v2 = v1;
  v4 = v1[33];

  if (v4)
  {
    v12 = v4;
    if (!a1)
    {

      goto LABEL_8;
    }

    v11 = a1;
    type metadata accessor for ViewModel();
    sub_1E37BD020(&qword_1EE23BA60, type metadata accessor for ViewModel, &protocol conformance descriptor for ViewModel);

    v5 = sub_1E4205E84();
  }

  else
  {
    v5 = a1 == 0;
  }

  if (v5)
  {
    v2[33] = a1;
  }

LABEL_8:
  KeyPath = swift_getKeyPath();
  v8 = MEMORY[0x1EEE9AC00](KeyPath);
  v9 = v2;
  v10 = a1;
  (*(*v2 + 1064))(v8);
}

uint64_t sub_1E37BB8BC(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 296) = a1;
}

uint64_t sub_1E37BB9A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = a1;
  *(v3 + 256) = 0;
  swift_unknownObjectWeakInit();
  *(v3 + 264) = 0u;
  *(v3 + 280) = 0u;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3E1E0, &unk_1E42D6EC0);
  swift_allocObject();
  *(v3 + 296) = sub_1E4200544();
  sub_1E41FE924();

  v7 = sub_1E39BEDCC(v6, a2, a3);
  if (!v7)
  {

    goto LABEL_7;
  }

  ViewModelKeys.rawValue.getter(31);
  sub_1E3277E60(v8, v9, a2, &v12);

  if (!v13)
  {

    sub_1E329505C(&v12);
    return v7;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770, &qword_1E42992B0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_7:

    return v7;
  }

  *(v7 + 272) = v11;

  return v7;
}

uint64_t sub_1E37BBB38(uint64_t a1)
{
  OUTLINED_FUNCTION_0_26();
  sub_1E37BD020(v1, v2, &unk_1E429D288);
  return sub_1E41FE8F4();
}

uint64_t sub_1E37BBBAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_0_26();
  sub_1E37BD020(v4, v5, &unk_1E429D288);
  return sub_1E41FE8E4();
}

uint64_t sub_1E37BBC58()
{
  *(*(v0 + 16) + 264) = *(v0 + 24);
}

uint64_t type metadata accessor for ListLockupWithDetailsViewModel(uint64_t a1)
{
  result = qword_1ECF463D0;
  if (!qword_1ECF463D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E37BBD10()
{
  sub_1E32AF6F8(v0 + 248);

  v1 = OBJC_IVAR____TtC8VideosUI30ListLockupWithDetailsViewModel___observationRegistrar;
  sub_1E41FE934();
  OUTLINED_FUNCTION_10();
  v3 = *(v2 + 8);

  return v3(v0 + v1);
}

char *sub_1E37BBD9C()
{
  v0 = ViewModel.deinit();
  sub_1E32AF6F8(v0 + 248);

  v1 = OBJC_IVAR____TtC8VideosUI30ListLockupWithDetailsViewModel___observationRegistrar;
  sub_1E41FE934();
  OUTLINED_FUNCTION_10();
  (*(v2 + 8))(v0 + v1);
  return v0;
}

uint64_t sub_1E37BBE28()
{
  v0 = sub_1E37BBD9C();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1E37BBE8C()
{
  OUTLINED_FUNCTION_8();
  (*(v0 + 1032))();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3E1E0, &unk_1E42D6EC0);
  sub_1E37BBF24();
  v1 = sub_1E42006B4();

  return v1;
}

unint64_t sub_1E37BBF24()
{
  result = qword_1ECF2A2A0;
  if (!qword_1ECF2A2A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3E1E0, &unk_1E42D6EC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2A2A0);
  }

  return result;
}

uint64_t sub_1E37BBF88(void (*a1)(void), uint64_t a2)
{
  v5 = v2;
  sub_1E41FFCB4();
  OUTLINED_FUNCTION_8_1();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_4_29();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v66 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v66 - v15;
  v18 = MEMORY[0x1EEE9AC00](v17);
  v20 = &v66 - v19;
  v21 = (*(*v2 + 936))(v18);
  v68 = v3;
  if (v21)
  {
    v67 = v16;
    v22 = v13;
    v23 = a1;
    v24 = a2;

    sub_1E324FBDC();
    OUTLINED_FUNCTION_2_26();
    v25(v20);
    v26 = sub_1E41FFC94();
    v27 = sub_1E4206814();
    if (OUTLINED_FUNCTION_104(v27))
    {
      v28 = OUTLINED_FUNCTION_125_0();
      OUTLINED_FUNCTION_9_11(v28);
      OUTLINED_FUNCTION_5_37(&dword_1E323F000, v29, v27, "ListLockupWithDetailsViewModel:: detailsViewModel already set, skipping fetch");
      OUTLINED_FUNCTION_1_59();
    }

    (*(v9 + 8))(v20, v3);
    a2 = v24;
    a1 = v23;
    v23(1);
    v13 = v22;
    v16 = v67;
  }

  v30 = (*(*v5 + 648))();
  if (v30 && (OUTLINED_FUNCTION_5_0(v30 + 48, v69), Strong = swift_unknownObjectWeakLoadStrong(), , Strong))
  {
    if (v5[35])
    {
      sub_1E324FBDC();
      OUTLINED_FUNCTION_2_26();
      v32 = v68;
      v33(v16);
      v34 = sub_1E41FFC94();
      v35 = sub_1E42067E4();
      if (OUTLINED_FUNCTION_104(v35))
      {
        v36 = OUTLINED_FUNCTION_125_0();
        OUTLINED_FUNCTION_9_11(v36);
        OUTLINED_FUNCTION_5_37(&dword_1E323F000, v37, v35, "ListLockupWithDetailsViewModel::cancelling to handle new request of type");
        OUTLINED_FUNCTION_1_59();
      }

      (*(v9 + 8))(v16, v32);
      if (v5[35])
      {
        OUTLINED_FUNCTION_8();
        v39 = *(v38 + 376);

        v39(v40);
      }

      v5[35] = 0;
    }

    type metadata accessor for CollectionServiceRequestContext(0);
    v47 = Strong;
    v48 = sub_1E3E3D284(1, 0xD000000000000014, 0x80000001E425C780, Strong);
    v49 = *(*v48 + 232);

    v49(v50);

    v51 = sub_1E4205CB4();
    v52 = sub_1E37BC604(v5, v51);

    (*(*v48 + 280))(v52);
    (*(*v48 + 184))(v5);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A2A8, qword_1E429D270);
    v5[35] = sub_1E37B2890();

    sub_1E324FBDC();
    OUTLINED_FUNCTION_2_26();
    v53 = v68;
    v54(v13);
    v55 = sub_1E41FFC94();
    v56 = sub_1E42067E4();
    if (OUTLINED_FUNCTION_104(v56))
    {
      v57 = OUTLINED_FUNCTION_125_0();
      OUTLINED_FUNCTION_9_11(v57);
      OUTLINED_FUNCTION_5_37(&dword_1E323F000, v58, v56, "ListLockupWithDetailsViewModel::starting fetch");
      OUTLINED_FUNCTION_1_59();
    }

    (*(v9 + 8))(v13, v53);
    v59 = v5[35];
    if (v59 && (v60 = *(*v59 + 352), v61 = , v62 = v60(v61), , v62))
    {
      v63 = swift_allocObject();
      swift_weakInit();
      v64 = swift_allocObject();
      v64[2] = v63;
      v64[3] = a1;
      v64[4] = a2;

      v65 = sub_1E41EC148(sub_1E37BCF54, v64);
    }

    else
    {

      v65 = 0;
    }

    v5[36] = v65;
  }

  else
  {
    sub_1E324FBDC();
    OUTLINED_FUNCTION_2_26();
    v41(v4);
    v42 = sub_1E41FFC94();
    v43 = sub_1E42067E4();
    if (OUTLINED_FUNCTION_104(v43))
    {
      v44 = OUTLINED_FUNCTION_125_0();
      OUTLINED_FUNCTION_9_11(v44);
      OUTLINED_FUNCTION_5_37(&dword_1E323F000, v45, v43, "ListLockupWithDetailsViewModel::failed to make update request.");
      OUTLINED_FUNCTION_1_59();
    }

    (*(v9 + 8))(v4, v3);
    return (a1)(0);
  }
}

uint64_t sub_1E37BC604(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v4 = *(*a1 + 672);

    v6 = v4(v5);
    ViewModelKeys.rawValue.getter(34);
    v9 = sub_1E39BD118(v7, v8, v6);

    v10 = sub_1E4149E18(a2, v9, MEMORY[0x1E69E6158], MEMORY[0x1E69E6168]);

    v12 = (*(*a1 + 624))(v11);
    v13 = sub_1E37BC604(v12, v10);

    return v13;
  }

  else
  {
  }
}

uint64_t sub_1E37BC74C(uint64_t *a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4)
{
  v54[1] = a4;
  v55 = a3;
  sub_1E41FFCB4();
  OUTLINED_FUNCTION_8_1();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_4_29();
  MEMORY[0x1EEE9AC00](v11);
  v13 = v54 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = v54 - v15;
  v17 = *a1;
  v18 = a1[1];
  v19 = *(a1 + 16);
  v20 = *(a1 + 17);
  OUTLINED_FUNCTION_5_0(a2 + 16, v56);
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v22 = Strong;
    if (v20)
    {
      *&v62 = sub_1E3F6FB3C(v17, v18, v19);
      *(&v62 + 1) = v23;
      v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D960, &unk_1E4298000);
      sub_1E4148C68(sub_1E37BCD7C, v24, &v57);

      v26 = v57;
      v25 = v58;
      sub_1E3E37F30();
      OUTLINED_FUNCTION_6_30();
      v27(v5);

      v28 = sub_1E41FFC94();
      v29 = sub_1E42067F4();

      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        v31 = swift_slowAlloc();
        v57 = v31;
        *v30 = 136315138;
        v32 = sub_1E3270FC8(v26, v25, &v57);

        *(v30 + 4) = v32;
        _os_log_impl(&dword_1E323F000, v28, v29, "ListLockupWithDetailsViewModel::received error [%s]", v30, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v31);
        OUTLINED_FUNCTION_6_0();
        OUTLINED_FUNCTION_6_0();
      }

      else
      {
      }

      (*(v9 + 8))(v5, v4);
      v22[35] = 0;

      v55(0);
      goto LABEL_30;
    }

    sub_1E324FBDC();
    OUTLINED_FUNCTION_6_30();
    v38(v13);
    v39 = sub_1E41FFC94();
    v40 = sub_1E42067E4();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = OUTLINED_FUNCTION_125_0();
      *v41 = 0;
      _os_log_impl(&dword_1E323F000, v39, v40, "ListLockupWithDetailsViewModel::received success response", v41, 2u);
      OUTLINED_FUNCTION_6_0();
    }

    (*(v9 + 8))(v13, v4);
    OUTLINED_FUNCTION_5_0(v17 + 40, v61);
    v42 = *(v17 + 40);
    if (v42)
    {
      v59 = &type metadata for ViewModelKeys;
      v60 = &off_1F5D7BCA8;
      LOBYTE(v57) = 7;

      sub_1E3F9F164(&v57, v42, MEMORY[0x1E69E7CA0] + 8);

      __swift_destroy_boxed_opaque_existential_1(&v57);
      if (*(&v63 + 1))
      {
        if (swift_dynamicCast())
        {
          if (v57 == 0x44524143534944 && v58 == 0xE700000000000000)
          {
            goto LABEL_28;
          }

          v44 = sub_1E42079A4();

          if (v44)
          {
            goto LABEL_29;
          }
        }

LABEL_23:
        OUTLINED_FUNCTION_5_0(v17 + 32, &v57);
        v45 = *(*v22 + 472);

        v45(v46);
        if (!*(v17 + 40))
        {
LABEL_29:
          v55(1);
          v22[35] = 0;

LABEL_30:
          v22[36] = 0;
        }

        type metadata accessor for CollectionViewModel();

        sub_1E40B947C(v47, 0);
        v49 = v48;

        v50 = sub_1E37BB6EC(v49);
        (*(*v22 + 1032))(v50);
        v51 = (*(*v22 + 936))();
        if (!v51 || (v52 = *(v51 + 16), v53 = *(v51 + 24), , , !v53))
        {

          v52 = 0;
          v53 = 0xE000000000000000;
        }

        *&v62 = v52;
        *(&v62 + 1) = v53;
        sub_1E4200524();

LABEL_28:

        goto LABEL_29;
      }
    }

    else
    {
      v62 = 0u;
      v63 = 0u;
    }

    sub_1E329505C(&v62);
    goto LABEL_23;
  }

  sub_1E3E37F30();
  OUTLINED_FUNCTION_6_30();
  v33(v16);
  v34 = sub_1E41FFC94();
  v35 = sub_1E42067F4();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = OUTLINED_FUNCTION_125_0();
    OUTLINED_FUNCTION_9_11(v36);
    _os_log_impl(&dword_1E323F000, v34, v35, "ListLockupWithDetailsViewModel::view model object is invalid.", v4, 2u);
    OUTLINED_FUNCTION_6_0();
  }

  return (*(v9 + 8))(v16, v4);
}

uint64_t sub_1E37BCD9C()
{
  if (*(v0 + 280))
  {
    OUTLINED_FUNCTION_8();
    v2 = *(v1 + 376);

    v2(v3);
  }

  *(v0 + 280) = 0;
}

uint64_t (*sub_1E37BCE8C(void *a1))()
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  OUTLINED_FUNCTION_8();
  v2[4] = (*(v3 + 904))();
  return sub_1E37BCF0C;
}

void sub_1E37BCF0C(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

uint64_t sub_1E37BCF68(uint64_t a1)
{
  result = sub_1E41FE934();
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

uint64_t sub_1E37BD020(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1E37BD068()
{
  if (*(v0 + 104))
  {
    v1 = *(v0 + 104);
  }

  else
  {
    type metadata accessor for TextLayout();
    v1 = sub_1E383BCC0();
    *(v0 + 104) = v1;
  }

  return v1;
}

uint64_t sub_1E37BD0DC()
{
  if (*(v0 + 112))
  {
    v1 = *(v0 + 112);
  }

  else
  {
    type metadata accessor for ImageLayout();
    v1 = sub_1E3BD61D8();
    *(v0 + 112) = v1;
  }

  return v1;
}

uint64_t sub_1E37BD184()
{
  *(v0 + 104) = 0;
  *(v0 + 112) = 0;
  v1 = sub_1E3C2F9A0();

  sub_1E37BD1C0();

  return v1;
}

uint64_t sub_1E37BD1C0()
{
  sub_1E37BD278();
  sub_1E37BD360();
  OUTLINED_FUNCTION_8();
  v2 = (*(v1 + 1704))();
  sub_1E3C37CBC(v2, 23);

  v4 = (*(*v0 + 1728))(v3);
  sub_1E3C37CBC(v4, 39);
}

uint64_t sub_1E37BD278()
{
  OUTLINED_FUNCTION_8();
  v0 += 213;
  v1 = *v0;
  v2 = (*v0)();
  (*(*v2 + 1696))(17);

  (v1)(v3);
  OUTLINED_FUNCTION_2_1();
  (*(v4 + 1792))(10);
}

uint64_t sub_1E37BD360()
{
  OUTLINED_FUNCTION_8();
  v0 += 216;
  v1 = *v0;
  (*v0)();
  OUTLINED_FUNCTION_2_1();
  (*(v2 + 680))(0);

  (v1)(v3);
  OUTLINED_FUNCTION_2_1();
  (*(v4 + 1808))(1);

  (v1)(v5);
  OUTLINED_FUNCTION_2_1();
  (*(v6 + 1712))(1);

  (v1)(v7);
  v17[0] = sub_1E3952CA4();
  v17[1] = v8;
  v17[2] = v9;
  v17[3] = v10;
  v18 = 0;
  OUTLINED_FUNCTION_8();
  (*(v11 + 184))(v17);

  (v1)(v12);
  OUTLINED_FUNCTION_2_1();
  (*(v13 + 312))(0x403C000000000000, 0);

  v15 = (v1)(v14);
  (*(*v15 + 208))(0x403C000000000000, 0);
}

uint64_t sub_1E37BD594()
{
}

uint64_t sub_1E37BD5C4()
{
  v0 = sub_1E3C36C6C();

  return v0;
}

uint64_t sub_1E37BD5FC()
{
  v0 = sub_1E37BD5C4();

  return MEMORY[0x1EEE6BDC0](v0, 120, 7);
}

uint64_t sub_1E37BD678()
{
  v1 = OBJC_IVAR____TtC8VideosUI35StackCollectionViewLayoutAttributes_forcedSize;
  OUTLINED_FUNCTION_5_0(v0 + OBJC_IVAR____TtC8VideosUI35StackCollectionViewLayoutAttributes_forcedSize, v3);
  return *(v0 + v1);
}

uint64_t sub_1E37BD6DC(char a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI35StackCollectionViewLayoutAttributes_forcedSize;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1E37BD72C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v14.receiver = v3;
  v14.super_class = ObjectType;
  objc_msgSendSuper2(&v14, sel_copyWithZone_, a1);
  sub_1E4207264();
  swift_unknownObjectRelease();
  if (swift_dynamicCast())
  {
    v7 = v12;
  }

  else
  {
    v7 = [objc_allocWithZone(ObjectType) init];
  }

  v8 = OBJC_IVAR____TtC8VideosUI35StackCollectionViewLayoutAttributes_forcedSize;
  OUTLINED_FUNCTION_5_0(v3 + OBJC_IVAR____TtC8VideosUI35StackCollectionViewLayoutAttributes_forcedSize, v13);
  v9 = *(v3 + v8);
  v10 = OBJC_IVAR____TtC8VideosUI35StackCollectionViewLayoutAttributes_forcedSize;
  result = swift_beginAccess();
  v7[v10] = v9;
  a2[3] = ObjectType;
  *a2 = v7;
  return result;
}

uint64_t sub_1E37BD88C()
{
  OUTLINED_FUNCTION_12_1();
  ObjectType = swift_getObjectType();
  sub_1E3294F34(v0, v11);
  if (!v12)
  {
    sub_1E329505C(v11);
    goto LABEL_7;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_7:
    v7 = 0;
    return v7 & 1;
  }

  v3 = v9[0];
  v10.receiver = v1;
  v10.super_class = ObjectType;
  if (!objc_msgSendSuper2(&v10, sel_isEqual_, v9[0]))
  {

    goto LABEL_7;
  }

  v4 = OBJC_IVAR____TtC8VideosUI35StackCollectionViewLayoutAttributes_forcedSize;
  OUTLINED_FUNCTION_5_0(v1 + OBJC_IVAR____TtC8VideosUI35StackCollectionViewLayoutAttributes_forcedSize, v11);
  v5 = *(v1 + v4);
  v6 = OBJC_IVAR____TtC8VideosUI35StackCollectionViewLayoutAttributes_forcedSize;
  OUTLINED_FUNCTION_5_0(v9[0] + OBJC_IVAR____TtC8VideosUI35StackCollectionViewLayoutAttributes_forcedSize, v9);
  LOBYTE(v6) = v3[v6];

  v7 = v5 ^ v6 ^ 1;
  return v7 & 1;
}

id sub_1E37BD9E8()
{
  ObjectType = swift_getObjectType();
  v0[OBJC_IVAR____TtC8VideosUI35StackCollectionViewLayoutAttributes_forcedSize] = 0;
  v3.receiver = v0;
  v3.super_class = ObjectType;
  return objc_msgSendSuper2(&v3, sel_init);
}

id sub_1E37BDA50()
{
  result = [v0 collectionView];
  if (result)
  {
    v2 = result;
    type metadata accessor for BaseCollectionView();
    v3 = swift_dynamicCastClass();
    if (v3)
    {
      v4 = (*((*MEMORY[0x1E69E7D40] & *v3) + 0x68))();

      if (v4)
      {
        result = swift_dynamicCastObjCProtocolConditional();
        if (result)
        {
          return result;
        }

        swift_unknownObjectRelease();
      }
    }

    else
    {
    }

    return 0;
  }

  return result;
}

uint64_t sub_1E37BDB74()
{
  OUTLINED_FUNCTION_0_8();
  swift_getObjectType();
  sub_1E41FE874();
  OUTLINED_FUNCTION_0_10();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_8_31();
  v8 = [v0 collectionView];
  if (!v8)
  {
    return 0;
  }

  v9 = v8;
  [v8 bounds];
  v28.width = v10;
  v28.height = v11;
  v29.width = v2;
  v29.height = v1;
  if (!CGSizeEqualToSize(v28, v29))
  {

    return 1;
  }

  if (!sub_1E37BDA50())
  {

    return 0;
  }

  MEMORY[0x1E6909170](0, 0);
  if (v3 <= 0.0)
  {
    v14 = sub_1E41FE7E4();
    v12 = OUTLINED_FUNCTION_15_29(v14, sel_shouldRubberbandElementWithCategory_in_at_);
  }

  else
  {
    v12 = 0;
  }

  result = [v9 numberOfSections];
  if (!__OFSUB__(result, 1))
  {
    MEMORY[0x1E6909170](0, result - 1);
    sub_1E37BDE0C();
    if ((OUTLINED_FUNCTION_6_31() & 1) != 0 || ([v9 contentSize], v16 > v3 + v1))
    {
      if (v12)
      {
LABEL_14:
        swift_unknownObjectRelease();

        v17 = *(v5 + 8);
        v18 = OUTLINED_FUNCTION_11_6();
        v17(v18);
        v19 = OUTLINED_FUNCTION_13_8();
        v17(v19);
        return 1;
      }
    }

    else
    {
      v20 = sub_1E41FE7E4();
      v27 = OUTLINED_FUNCTION_15_29(v20, sel_shouldRubberbandElementWithCategory_in_at_);

      if ((v12 | v27))
      {
        goto LABEL_14;
      }
    }

    v21 = OUTLINED_FUNCTION_2_0();
    v13 = objc_msgSendSuper2(v22, v23, v21);

    swift_unknownObjectRelease();
    v24 = *(v5 + 8);
    v25 = OUTLINED_FUNCTION_11_6();
    v24(v25);
    v26 = OUTLINED_FUNCTION_13_8();
    v24(v26);
    return v13;
  }

  __break(1u);
  return result;
}

unint64_t sub_1E37BDE0C()
{
  result = qword_1EE28A410;
  if (!qword_1EE28A410)
  {
    sub_1E41FE874();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE28A410);
  }

  return result;
}

id sub_1E37BDEB0()
{
  OUTLINED_FUNCTION_0_8();
  swift_getObjectType();
  v1 = OUTLINED_FUNCTION_2_0();
  result = objc_msgSendSuper2(v2, v3, v1);
  if (!result)
  {
    return result;
  }

  v5 = result;
  sub_1E37BE048();
  v6 = sub_1E42062B4();

  v7 = sub_1E32AE9B0(v6);
  if (!v7)
  {

    return MEMORY[0x1E69E7CC0];
  }

  v8 = v7;
  v13 = MEMORY[0x1E69E7CC0];
  v9 = v0;
  result = sub_1E4207574();
  if (v8 < 0)
  {
    goto LABEL_16;
  }

  v10 = 0;
  while (1)
  {
    if ((v6 & 0xC000000000000001) != 0)
    {
      v11 = MEMORY[0x1E6911E60](v10, v6);
      goto LABEL_10;
    }

    if ((v10 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v10 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_15;
    }

    v11 = *(v6 + 8 * v10 + 32);
LABEL_10:
    v12 = v11;
    ++v10;
    sub_1E37BE08C(v11);

    sub_1E4207544();
    sub_1E4207584();
    sub_1E4207594();
    result = sub_1E4207554();
    if (v8 == v10)
    {

      return v13;
    }
  }

  __break(1u);
LABEL_15:
  __break(1u);
LABEL_16:
  __break(1u);
  return result;
}

unint64_t sub_1E37BE048()
{
  result = qword_1EE23AF18;
  if (!qword_1EE23AF18)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE23AF18);
  }

  return result;
}

char *sub_1E37BE08C(void *a1)
{
  v46 = a1;
  v2 = sub_1E41FE874();
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_8_31();
  MEMORY[0x1EEE9AC00](v6);
  *&v8 = MEMORY[0x1EEE9AC00](v7).n128_u64[0];
  v10 = &v44 - v9;
  v11 = [v46 representedElementCategory];
  v12 = sub_1E37BDA50();
  if (v12)
  {
    v13 = v12;
    v14 = [v1 collectionView];
    if (v14)
    {
      v15 = v14;
      OUTLINED_FUNCTION_17_19([v46 indexPath]);

      v16 = sub_1E41FE7E4();
      v17 = *(v4 + 8);
      v17(v10, v2);
      v18 = [v13 shouldRubberbandElementWithCategory:v11 in:v15 at:v16];

      if (v18)
      {
        MEMORY[0x1E6909170](0, 0);
        result = [v15 numberOfSections];
        if (__OFSUB__(result, 1))
        {
          __break(1u);
          return result;
        }

        MEMORY[0x1E6909170](0, result - 1);
        OUTLINED_FUNCTION_17_19([v46 indexPath]);

        sub_1E41FE7F4();
        v20 = OUTLINED_FUNCTION_9_24();
        (v17)(v20);
        if (v16)
        {
          sub_1E37BDE0C();
          v21 = OUTLINED_FUNCTION_6_31() ^ 1;
        }

        else
        {
          v21 = 0;
        }

        v22 = v15;
        if ([v22 isDragging] & 1) != 0 || ((objc_msgSend(v22, sel_isDecelerating) | v21))
        {
          [v46 copy];
          sub_1E4207264();
          swift_unknownObjectRelease();
          type metadata accessor for StackCollectionViewLayoutAttributes();
          if (swift_dynamicCast())
          {
            v23 = v47;
            v24 = OBJC_IVAR____TtC8VideosUI35StackCollectionViewLayoutAttributes_forcedSize;
            swift_beginAccess();
            v45 = v24;
            v23[v24] = 0;
            [v22 contentOffset];
            v26 = -v25;
            [v22 adjustedContentInset];
            if (v26 - v27 > 0.0)
            {
              OUTLINED_FUNCTION_17_19([v46 indexPath]);

              sub_1E41FE7F4();
              v28 = OUTLINED_FUNCTION_9_24();
              (v17)(v28);
              if (v24)
              {
                v24 = v23;
                [v24 frame];
                [v24 setFrame_];
                [v24 frame];
                [v24 setFrame_];
                v23[v45] = 1;
                [v24 setZIndex_];
              }
            }

            [v22 bounds];
            v30 = v29;
            [v22 contentOffset];
            v32 = v30 + v31;
            [v22 contentSize];
            v34 = v33;

            if (v32 - v34 > 0.0 && (OUTLINED_FUNCTION_17_19([v46 indexPath]), v24, sub_1E41FE7F4(), v35 = OUTLINED_FUNCTION_9_24(), (v17)(v35), (v24 & 1) != 0) && (sub_1E37BDE0C(), (OUTLINED_FUNCTION_6_31() & 1) == 0))
            {
              v41 = v23;
              [v41 frame];
              [v41 setFrame_];
              v23[v45] = 1;
              [v41 setZIndex_];

              swift_unknownObjectRelease();
              v42 = OUTLINED_FUNCTION_11_6();
              (v17)(v42);
              v43 = OUTLINED_FUNCTION_13_8();
              (v17)(v43);
              return v41;
            }

            else
            {

              swift_unknownObjectRelease();
              v36 = OUTLINED_FUNCTION_11_6();
              (v17)(v36);
              v37 = OUTLINED_FUNCTION_13_8();
              (v17)(v37);
            }

            return v23;
          }
        }

        swift_unknownObjectRelease();

        v38 = OUTLINED_FUNCTION_11_6();
        (v17)(v38);
        v39 = OUTLINED_FUNCTION_13_8();
        (v17)(v39);
      }

      else
      {
        swift_unknownObjectRelease();
      }
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

  v40 = v46;

  return v40;
}

char *sub_1E37BE680()
{
  OUTLINED_FUNCTION_50();
  ObjectType = swift_getObjectType();
  v2 = sub_1E41FE7E4();
  v7.receiver = v0;
  v7.super_class = ObjectType;
  v3 = objc_msgSendSuper2(&v7, sel_layoutAttributesForItemAtIndexPath_, v2);

  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = sub_1E37BE08C(v4);

  return v5;
}

id sub_1E37BE80C()
{
  OUTLINED_FUNCTION_12_1();
  v4.receiver = v1;
  v4.super_class = swift_getObjectType();
  v2 = objc_msgSendSuper2(&v4, sel_initWithSection_, v0);

  return v2;
}

id sub_1E37BE884()
{
  OUTLINED_FUNCTION_7_47();
  v5.receiver = v1;
  v5.super_class = swift_getObjectType();
  v3 = objc_msgSendSuper2(&v5, sel_initWithSection_configuration_, v2, v0);

  return v3;
}

id sub_1E37BE928(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);

  swift_unknownObjectRetain();
  v6 = v5(a2, a3);

  swift_unknownObjectRelease();

  return v6;
}

void *sub_1E37BE9A4()
{
  OUTLINED_FUNCTION_7_47();
  ObjectType = swift_getObjectType();
  v12 = v2;
  v13 = v0;
  OUTLINED_FUNCTION_4_30();
  v9 = 1107296256;
  OUTLINED_FUNCTION_0_27();
  v10 = v4;
  v11 = &block_descriptor_3;
  v5 = _Block_copy(aBlock);

  v7.receiver = v1;
  v7.super_class = ObjectType;
  objc_msgSendSuper2(&v7, sel_initWithSectionProvider_, v5);
  OUTLINED_FUNCTION_50();

  _Block_release(v5);
  return v1;
}

id sub_1E37BEAB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = (*(a3 + 16))(a3, a1, a2);

  return v3;
}

id sub_1E37BEAF8()
{
  v3 = objc_allocWithZone(OUTLINED_FUNCTION_13_20());
  v9 = v2;
  v10 = v1;
  OUTLINED_FUNCTION_3_4();
  v8[1] = 1107296256;
  OUTLINED_FUNCTION_0_27();
  v8[2] = v4;
  v8[3] = &block_descriptor_6;
  v5 = _Block_copy(v8);
  v6 = [v3 initWithSectionProvider:v5 configuration:v0];

  _Block_release(v5);

  return v6;
}

id sub_1E37BEB94()
{
  OUTLINED_FUNCTION_13_20();
  ObjectType = swift_getObjectType();
  v14 = v3;
  v15 = v2;
  OUTLINED_FUNCTION_4_30();
  v11 = 1107296256;
  OUTLINED_FUNCTION_0_27();
  v12 = v5;
  v13 = &block_descriptor_9;
  v6 = _Block_copy(aBlock);

  v9.receiver = v1;
  v9.super_class = ObjectType;
  v7 = objc_msgSendSuper2(&v9, sel_initWithSectionProvider_configuration_, v6, v0);

  _Block_release(v6);
  return v7;
}

id sub_1E37BECC8(void *a1)
{
  v5.receiver = v1;
  v5.super_class = swift_getObjectType();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

double sub_1E37BEDA4()
{
  if ((*(v0 + 56) & 1) == 0)
  {
    return *(v0 + 48);
  }

  result = *(v0 + 16) * *(v0 + 24) * 20.0;
  *(v0 + 48) = result;
  *(v0 + 56) = 0;
  return result;
}

uint64_t sub_1E37BEDE4(double a1, double a2, double a3)
{
  result = swift_allocObject();
  *(result + 40) = 0;
  *(result + 48) = 0;
  *(result + 56) = 1;
  *(result + 64) = 0;
  *(result + 16) = a1;
  *(result + 24) = a2;
  *(result + 32) = a3;
  return result;
}

uint64_t sub_1E37BEE3C()
{
  if (*(v0 + 64))
  {

    sub_1E42004E4();
  }

  return v0;
}

uint64_t sub_1E37BEE8C()
{
  sub_1E37BEE3C();

  return MEMORY[0x1EEE6BDC0](v0, 72, 7);
}

double sub_1E37BEEC0(uint64_t a1)
{
  v3 = *(v1 + 16);
  v2 = *(v1 + 24);
  v4 = a1 / (sub_1E37BEDA4() / (v3 * v2 + v3 * v2));
  v5 = v3 + v3;
  v6 = v4 / v2;
  if (v4 / v2 >= (v3 + v3) * 0.25)
  {
    if (v6 >= v5 * 0.5)
    {
      v8 = v6 < v5 * 3.0 * 0.25;
      v9 = v5 - v6 + 0.0;
      v10 = v6 - v3 + 0.0;
      if (v8)
      {
        v7 = v10;
      }

      else
      {
        v7 = v9;
      }
    }

    else
    {
      v7 = v6 - v3 + 0.0;
    }
  }

  else
  {
    v7 = 0.0 - v6;
  }

  fmod(v4, v2);
  return v7;
}

uint64_t sub_1E37BEFCC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v29 = a1;
  v30 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2D2B0, &unk_1E429D3D0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v27 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF3DB30, &unk_1E42A89B0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v27 - v8;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A380, &unk_1E429D3E0);
  v10 = *(v28 - 8);
  v11 = MEMORY[0x1EEE9AC00](v28);
  v13 = &v27 - v12;
  (*(*v2 + 232))(v11);
  sub_1E3280A90(0, &qword_1EE23AE40, 0x1E695DFF0);
  v14 = [objc_opt_self() mainRunLoop];
  v15 = sub_1E4207054();
  __swift_storeEnumTagSinglePayload(v9, 1, 1, v15);
  v16 = sub_1E4206F14();

  sub_1E325F748(v9, &unk_1ECF3DB30, &unk_1E42A89B0);
  v32 = v16;
  sub_1E4206F04();
  sub_1E37BF3F8();
  v17 = sub_1E4200584();

  v32 = v17;
  sub_1E3280A90(0, &qword_1EE23B1D0, 0x1E69E9610);
  v18 = sub_1E4206A04();
  v31 = v18;
  v19 = sub_1E42069A4();
  __swift_storeEnumTagSinglePayload(v6, 1, 1, v19);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF3DB40, &qword_1E429B180);
  sub_1E32752B0(&qword_1EE28A360, &unk_1ECF3DB40, &qword_1E429B180, MEMORY[0x1E695BCA0]);
  sub_1E3746800();
  sub_1E42007D4();
  sub_1E325F748(v6, &unk_1ECF2D2B0, &unk_1E429D3D0);

  v20 = swift_allocObject();
  swift_weakInit();
  v21 = swift_allocObject();
  v22 = v29;
  v23 = v30;
  v21[2] = v20;
  v21[3] = v22;
  v21[4] = v23;
  sub_1E32752B0(&qword_1ECF2A388, &qword_1ECF2A380, &unk_1E429D3E0, MEMORY[0x1E695BE98]);

  v24 = v28;
  v25 = sub_1E4200844();

  (*(v10 + 8))(v13, v24);
  *(v3 + 64) = v25;
}

unint64_t sub_1E37BF3F8()
{
  result = qword_1EE23AE48;
  if (!qword_1EE23AE48)
  {
    sub_1E4206F04();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE23AE48);
  }

  return result;
}

void sub_1E37BF450()
{
  v1 = *(v0 + 24);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = *(Strong + 40);
    v5 = sub_1E37BEEC0(v4);
    v7 = __OFADD__(v4, 1);
    v8 = v4 + 1;
    if (v7)
    {
      __break(1u);
    }

    else
    {
      v9 = v5;
      v10 = v6;
      v11 = sub_1E37BEDA4();
      if ((*&v11 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
      {
        if (v11 > -9.22337204e18)
        {
          if (v11 < 9.22337204e18)
          {
            v12 = v11;
            if (v11)
            {
              if (v8 != 0x8000000000000000 || v12 != -1)
              {
                *(v3 + 40) = v8 % v12;
                v1(v9, v10);

                return;
              }

LABEL_18:
              __break(1u);
              return;
            }

LABEL_17:
            __break(1u);
            goto LABEL_18;
          }

LABEL_16:
          __break(1u);
          goto LABEL_17;
        }

LABEL_15:
        __break(1u);
        goto LABEL_16;
      }
    }

    __break(1u);
    goto LABEL_15;
  }
}

uint64_t sub_1E37BF56C()
{
  if (*(v0 + 64))
  {

    sub_1E42004E4();
  }

  *(v0 + 64) = 0;
}

void sub_1E37BF5EC()
{
  sub_1E384EE08(119);
  qword_1EE28B308 = v0;
  *algn_1EE28B310 = v1;
}

uint64_t sub_1E37BF614(uint64_t a1, void *a2)
{
  v4 = swift_allocObject();
  sub_1E37BF664(a1, a2);
  return v4;
}

uint64_t sub_1E37BF664(uint64_t a1, void *a2)
{
  v3 = v2;
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  v6 = sub_1E3C7E1CC(1);
  sub_1E3277E60(v6, v7, a1, &v46);

  if (!v47)
  {
    __swift_destroy_boxed_opaque_existential_1(a2);
LABEL_19:
    sub_1E329505C(&v46);
    return v3;
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770, &qword_1E42992B0);
  v9 = MEMORY[0x1E69E7CA0];
  OUTLINED_FUNCTION_0_28(v8, v10, v11, v12, v13, v14, v15, v16, v41, v44);
  if ((swift_dynamicCast() & 1) == 0)
  {
    __swift_destroy_boxed_opaque_existential_1(a2);
    return v3;
  }

  v17 = v44;
  if (!*(v44 + 16))
  {
    goto LABEL_14;
  }

  v44 = sub_1E3C7E1CC(2);
  v45 = v18;
  MEMORY[0x1E69109E0](46, 0xE100000000000000);
  if (_MergedGlobals_148 != -1)
  {
    swift_once();
  }

  MEMORY[0x1E69109E0](qword_1EE28B308, *algn_1EE28B310);
  sub_1E3F9F204(v17, v9 + 8, &v46, v44, v45);

  if (!v47)
  {
    __swift_destroy_boxed_opaque_existential_1(a2);
LABEL_18:

    goto LABEL_19;
  }

  OUTLINED_FUNCTION_0_28(v19, v20, v21, v22, v23, v24, v25, v26, v42, v44);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_14;
  }

  v27 = v44;
  v28 = sub_1E3C7E1CC(3);
  sub_1E3277E60(v28, v29, v17, &v46);

  if (!v47)
  {
    __swift_destroy_boxed_opaque_existential_1(a2);

    goto LABEL_18;
  }

  OUTLINED_FUNCTION_0_28(v30, v31, v32, MEMORY[0x1E69E6158], v33, v34, v35, v36, v43, v44);
  if ((swift_dynamicCast() & 1) == 0)
  {
    __swift_destroy_boxed_opaque_existential_1(a2);

    goto LABEL_15;
  }

  type metadata accessor for CollectionViewModel();
  v37 = sub_1E40B198C(119, v27, 0);
  if (!v37)
  {
LABEL_14:
    __swift_destroy_boxed_opaque_existential_1(a2);
LABEL_15:

    return v3;
  }

  v38 = v37;
  type metadata accessor for PagePerformanceReporter();
  v39 = sub_1E3C69AA0(v17);

  __swift_destroy_boxed_opaque_existential_1(a2);
  OUTLINED_FUNCTION_3_0(v3 + 24, &v46);
  *(v3 + 24) = v39;

  OUTLINED_FUNCTION_3_0(v3 + 16, &v44);
  *(v3 + 16) = v38;

  return v3;
}

uint64_t sub_1E37BF908()
{

  return v0;
}

uint64_t sub_1E37BF930()
{
  sub_1E37BF908();

  return MEMORY[0x1EEE6BDC0](v0, 32, 7);
}

uint64_t sub_1E37BF964@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_1E37BF614(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1E37BF9E4()
{
  *(v0 + 104) = 0;
  v1 = sub_1E3C2F9A0();

  v41 = sub_1E3952C10(64.0, 32.0);
  v42 = v2;
  v43 = v3;
  v44 = v4;
  v45 = 0;
  sub_1E3C2CC78();
  v5 = sub_1E37BD068();
  LOBYTE(v32) = 17;
  sub_1E3C2FC98();
  OUTLINED_FUNCTION_3_27();
  OUTLINED_FUNCTION_2_27();
  OUTLINED_FUNCTION_5_38();
  v6 = OUTLINED_FUNCTION_4_31();
  OUTLINED_FUNCTION_0_29(v6, v7, v8, v9, v10, v11, v12, v13, v32, v33, v34, v35, v36, v37, v38, v39, v40);
  v14 = OUTLINED_FUNCTION_1_60();
  (*(*v5 + 1600))(&v32, 48, v14 & 1, &qword_1F5D549D8);

  v15 = *(**(v1 + 104) + 2056);

  v15(0, 0);

  v16 = *(v1 + 104);
  LOBYTE(v32) = 4;

  sub_1E3C2FC98();
  OUTLINED_FUNCTION_3_27();
  OUTLINED_FUNCTION_2_27();
  OUTLINED_FUNCTION_5_38();
  v17 = OUTLINED_FUNCTION_4_31();
  OUTLINED_FUNCTION_0_29(v17, v18, v19, v20, v21, v22, v23, v24, v32, v33, v34, v35, v36, v37, v38, v39, v40);
  v25 = OUTLINED_FUNCTION_1_60();
  (*(*v16 + 1600))(&v32, 54, v25 & 1, &qword_1F5D54AF8);

  v26 = *(v1 + 104);

  v27 = *sub_1E3E5FD88();
  v28 = *(*v26 + 680);
  v29 = v27;
  v28(v27);

  sub_1E3C37CBC(v30, 23);

  return v1;
}

uint64_t sub_1E37BFC54()
{
  v0 = sub_1E3C36C6C();

  return MEMORY[0x1EEE6BDC0](v0, 112, 7);
}

uint64_t sub_1E37BFCCC(uint64_t result, uint64_t a2)
{
  if (result)
  {
    v3 = result;
    v4 = *(*result + 624);

    v5 = v4();
    v15 = 9;
    (*(*v3 + 776))(v16, &v15, &unk_1F5D5D0A8, &off_1F5D5C758);
    if (!v16[3])
    {
      sub_1E329505C(v16);
      goto LABEL_10;
    }

    if (!swift_dynamicCast() || (v15 & 1) == 0)
    {
LABEL_10:
      while (v5)
      {
        type metadata accessor for CollectionViewModel();
        v6 = swift_dynamicCastClass();
        if (v6)
        {
          v7 = *(*v6 + 1440);

          v9 = v7(v8);

          if (v9)
          {
            goto LABEL_12;
          }
        }

        v10 = (*(*v5 + 624))();

        v5 = v10;
      }
    }

    v9 = 0;
LABEL_12:
    v11 = [objc_opt_self() standardUserDefaults];
    v12 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
    v13 = sub_1E4205ED4();
    [v11 setObject:v12 forKey:v13];

    v14 = *sub_1E3D54C24();
    sub_1E3D59D70(v14);

    sub_1E37BFF60(v3, v9, a2);
  }

  return result;
}

void sub_1E37BFF60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1E41FFCB4();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1E39BE4D0();
  if (v10)
  {
    v11 = v10;
    v12 = sub_1E324FBDC();
    (*(v7 + 16))(v9, v12, v6);

    v13 = sub_1E41FFC94();
    v14 = sub_1E42067E4();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v39 = a3;
      v16 = v15;
      v37 = v15;
      v38 = swift_slowAlloc();
      v40[0] = v38;
      *v16 = 136315138;
      v17 = *(*a1 + 368);
      v36 = v14;
      v18 = v17();
      v20 = v11;
      v21 = a2;
      v22 = sub_1E3270FC8(v18, v19, v40);

      v23 = v37;
      *(v37 + 4) = v22;
      a2 = v21;
      v11 = v20;
      _os_log_impl(&dword_1E323F000, v13, v36, "Button(%s dispatching select event", v23, 0xCu);
      v24 = v38;
      __swift_destroy_boxed_opaque_existential_1(v38);
      MEMORY[0x1E69143B0](v24, -1, -1);
      a3 = v39;
      MEMORY[0x1E69143B0](v23, -1, -1);
    }

    v25 = (*(v7 + 8))(v9, v6);
    v27 = (*(*a1 + 544))(v25);
    if (a2)
    {
      v28 = sub_1E3744600(v11);

      v29 = sub_1E3744600(a2);
      v30 = objc_allocWithZone(VUIRouterDataSource);
      v31 = sub_1E37C07A4(v28, v29);
    }

    else
    {

      v31 = v27;
    }

    (*(*a1 + 808))(2, 0);
    ViewModelEvent.description.getter(2);
    v32 = sub_1E4205ED4();

    if ((*(*a1 + 648))(v33))
    {
      OUTLINED_FUNCTION_25();
      swift_beginAccess();
      Strong = swift_unknownObjectWeakLoadStrong();
    }

    else
    {
      Strong = 0;
    }

    [objc_opt_self() handleEvent:v32 targetResponder:a3 appContext:Strong routerDataSource:v31 supplementaryData:0 extraInfo:0];
  }

  else
  {
    OUTLINED_FUNCTION_25();
    v26();
  }
}

void sub_1E37C0398()
{
  OUTLINED_FUNCTION_4_0();
  v1 = swift_allocObject();
  swift_weakInit();
  OUTLINED_FUNCTION_4_0();
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v5[4] = sub_1E37C04A8;
  v5[5] = v3;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 1107296256;
  v5[2] = sub_1E37C0588;
  v5[3] = &block_descriptor_6;
  v4 = _Block_copy(v5);

  [v0 setSelectActionHandler_];
  _Block_release(v4);
}

void sub_1E37C04A8(uint64_t a1)
{
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {

    sub_1E3294F34(a1, v6);
    if (v7)
    {
      sub_1E37C0760();
      if (swift_dynamicCast())
      {
        v3 = v5;
      }

      else
      {
        v3 = 0;
      }
    }

    else
    {
      sub_1E329505C(v6);
      v3 = 0;
    }

    type metadata accessor for SportsBridgeButton();
    OUTLINED_FUNCTION_25();
    swift_beginAccess();
    v4 = swift_weakLoadStrong();
    sub_1E37BFCCC(v4, v3);
  }
}

uint64_t sub_1E37C0588(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  if (a2)
  {
    ObjectType = swift_getObjectType();
    *&v5 = a2;
    sub_1E329504C(&v5, v7);
  }

  else
  {
    memset(v7, 0, sizeof(v7));
  }

  swift_unknownObjectRetain();
  v3(v7);

  return sub_1E329505C(v7);
}

id sub_1E37C0614(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);

  return [v5 initWithType:a1 interfaceStyle:a2];
}

id sub_1E37C0668(uint64_t a1, uint64_t a2)
{
  v6.receiver = v2;
  v6.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v6, sel_initWithType_interfaceStyle_, a1, a2);
}

unint64_t sub_1E37C0760()
{
  result = qword_1EE23B3D0;
  if (!qword_1EE23B3D0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE23B3D0);
  }

  return result;
}

id sub_1E37C07A4(uint64_t a1, uint64_t a2)
{
  v3 = sub_1E4205C44();

  v4 = sub_1E4205C44();

  v5 = [v2 initWithRouterData:v3 prefetchedData:v4];

  return v5;
}

uint64_t sub_1E37C085C()
{
  v1 = OBJC_IVAR____TtC8VideosUI20TimedMetadataManager_playbackInfos;
  swift_beginAccess();
  if (*(*(v0 + v1) + 16))
  {
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1E37C08B8(void *a1)
{
  v2 = v1;
  type metadata accessor for PlayerBasedMetadataVendor(0);
  v4 = a1;
  v5 = sub_1E3DBA374(v4);
  v6 = OBJC_IVAR____TtC8VideosUI20TimedMetadataManager_playbackInfos;
  swift_beginAccess();
  v7 = v4;

  sub_1E37C0BD0();
  v8 = *(*(v2 + v6) + 16);
  sub_1E37C0C1C(v8);
  v9 = *(v2 + v6);
  *(v9 + 16) = v8 + 1;
  v10 = v9 + 16 * v8;
  *(v10 + 32) = v5;
  *(v10 + 40) = v7;
  *(v2 + v6) = v9;
  swift_endAccess();
}

uint64_t sub_1E37C09E0(void *a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI20TimedMetadataManager_playbackInfos;
  swift_beginAccess();
  v4 = *(v1 + v3);
  v5 = *(v4 + 16);
  if (v5)
  {

    v6 = (v4 + 40);
    do
    {
      v7 = *v6;
      if (*v6 == a1)
      {

        v8 = v7;
        sub_1E41FEF24();
      }

      v6 += 2;
      --v5;
    }

    while (v5);
  }

  swift_beginAccess();
  v9 = sub_1E37C0D64((v1 + v3), a1);
  v10 = *(*(v1 + v3) + 16);
  if (v10 < v9)
  {
    __break(1u);
    result = swift_endAccess();
    __break(1u);
  }

  else
  {
    sub_1E37C0F60(v9, v10);
    return swift_endAccess();
  }

  return result;
}

char *sub_1E37C0BD0()
{
  v1 = *v0;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v0 = v1;
  if (!result)
  {
    result = sub_1E37C0C5C(result, *(v1 + 2) + 1, 1, v1);
    *v0 = result;
  }

  return result;
}

char *sub_1E37C0C1C(char *result)
{
  v2 = *(*v1 + 3);
  if ((result + 1) > (v2 >> 1))
  {
    result = sub_1E37C0C5C((v2 > 1), (result + 1), 1, *v1);
    *v1 = result;
  }

  return result;
}

char *sub_1E37C0C5C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2A400, &qword_1E429D528);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
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

uint64_t sub_1E37C0D64(char **a1, void *a2)
{
  v4 = *a1;
  v5 = a2;
  result = sub_1E37C0EE8(v4, v5);
  v8 = result;
  if (v2)
  {
    goto LABEL_17;
  }

  if (v7)
  {
    v8 = *(v4 + 2);
LABEL_17:

    return v8;
  }

  v9 = result + 1;
  if (!__OFADD__(result, 1))
  {
    for (i = 16 * result; ; i += 16)
    {
      v11 = *(v4 + 2);
      if (v9 == v11)
      {
        break;
      }

      if (v9 >= v11)
      {
        __break(1u);
LABEL_19:
        __break(1u);
LABEL_20:
        __break(1u);
        goto LABEL_21;
      }

      v12 = *&v4[i + 56];
      if (v12 != v5)
      {
        if (v9 != v8)
        {
          if (v8 >= v11)
          {
            goto LABEL_19;
          }

          v19 = *&v4[16 * v8 + 32];
          v13 = *&v4[i + 48];

          v14 = *(&v19 + 1);

          v15 = v12;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v4 = sub_1E37C10D0(v4);
          }

          v16 = &v4[16 * v8];
          v17 = *(v16 + 5);
          *(v16 + 4) = v13;
          *(v16 + 5) = v15;

          if (v9 >= *(v4 + 2))
          {
            goto LABEL_20;
          }

          v18 = *&v4[i + 56];
          *&v4[i + 48] = v19;

          *a1 = v4;
        }

        ++v8;
      }

      ++v9;
    }

    goto LABEL_17;
  }

LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_1E37C0EE8(uint64_t a1, void *a2)
{
  v2 = 0;
  for (i = (a1 + 40); ; i += 2)
  {
    if (*(a1 + 16) == v2)
    {
      v4 = 0;
      goto LABEL_7;
    }

    if (*i == a2)
    {
      break;
    }

    ++v2;
  }

  v4 = v2;
LABEL_7:

  return v4;
}

uint64_t sub_1E37C0F60(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_17;
  }

  v4 = *(*v2 + 16);
  if (v4 < a2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v5 = result;
  v6 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v7 = result - a2;
  if (__OFSUB__(0, v6))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  result = v4 - v6;
  if (__OFADD__(v4, v7))
  {
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  sub_1E37C1068(result, 1);
  v8 = *v2;
  v9 = *v2 + 32;
  result = swift_arrayDestroy();
  if (!v6)
  {
LABEL_15:
    *v2 = v8;
    return result;
  }

  v10 = *(v8 + 16);
  v11 = v10 - a2;
  if (__OFSUB__(v10, a2))
  {
    goto LABEL_21;
  }

  v12 = (v9 + 16 * a2);
  if (v5 != a2 || v12 + 16 * v11 <= v9 + 16 * v5)
  {
    result = memmove((v9 + 16 * v5), v12, 16 * v11);
    v10 = *(v8 + 16);
  }

  v14 = __OFADD__(v10, v7);
  v15 = v10 - v6;
  if (!v14)
  {
    *(v8 + 16) = v15;
    goto LABEL_15;
  }

LABEL_22:
  __break(1u);
  return result;
}

char *sub_1E37C1068(int64_t a1, char a2)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v5;
  if (!result || a1 > *(v5 + 24) >> 1)
  {
    if (*(v5 + 16) <= a1)
    {
      v7 = a1;
    }

    else
    {
      v7 = *(v5 + 16);
    }

    result = sub_1E37C0C5C(result, v7, a2 & 1, v5);
    *v2 = result;
  }

  return result;
}

void sub_1E37C10E4()
{
  v0 = objc_opt_self();
  v1 = [v0 blackColor];
  v2 = [v1 colorWithAlphaComponent_];

  v3 = [v0 whiteColor];
  v4 = [v3 colorWithAlphaComponent_];

  v5 = [v0 vui:v2 dynamicColorWithLightColor:v4 darkColor:?];
  qword_1ECF71238 = v5;
}

uint64_t *sub_1E37C11CC()
{
  if (qword_1ECF463E0 != -1)
  {
    OUTLINED_FUNCTION_1_61(&qword_1ECF463E0);
  }

  return &qword_1ECF71238;
}

uint64_t sub_1E37C120C()
{
  if (*(v0 + 104))
  {
    v1 = *(v0 + 104);
  }

  else
  {
    v2 = v0;
    v3 = type metadata accessor for ImageLayout();
    sub_1E3BD61D8();
    OUTLINED_FUNCTION_21_13();
    v12 = OUTLINED_FUNCTION_2_28(v4, v5, v6, v7, v8, v9, v10, v11, v16);
    sub_1E41E1A64(v12, v13, v3, v14);

    v1 = v17;
    *(v2 + 104) = v17;
  }

  return v1;
}

uint64_t sub_1E37C12AC()
{
  OUTLINED_FUNCTION_6_17();
  (*(v1 + 1808))(3);
  if (([objc_opt_self() isPad] & 1) == 0)
  {
    (*(*v0 + 312))(0x4084000000000000, 0);
  }

  result = OUTLINED_FUNCTION_15_0((v0 + 256), v2);
  if (v0[256] == 1)
  {
    return (*(*v0 + 440))(0x3FE2000000000000, 0);
  }

  return result;
}

uint64_t sub_1E37C1398()
{
  if (*(v0 + 112))
  {
    v1 = *(v0 + 112);
  }

  else
  {
    v2 = v0;
    type metadata accessor for TextLayout();
    sub_1E383BCC0();
    OUTLINED_FUNCTION_21_13();
    v11 = OUTLINED_FUNCTION_2_28(v3, v4, v5, v6, v7, v8, v9, v10, v15);
    OUTLINED_FUNCTION_15_30(v11, v12, v13);

    v1 = v16;
    *(v2 + 112) = v16;
  }

  return v1;
}

uint64_t sub_1E37C1430()
{
  OUTLINED_FUNCTION_6_17();
  (*(v1 + 1696))(7);
  LOBYTE(v8) = 10;
  v14 = 11;
  sub_1E3C2FC98();
  v13[0] = v13[1];
  sub_1E3C3DE00();
  v12[0] = v12[1];
  sub_1E3C3DE00();
  v11[0] = v11[1];
  sub_1E3C3DE00();
  v10[0] = v10[1];
  sub_1E3C2FCB8(&v8, v13, v12, v11, v10, &v14, &qword_1F5D54AF8, &v15);
  v8 = v15;
  v9 = v16;
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_36();
  (*(v2 + 1600))(&v8, 54, v3 & 1, &qword_1F5D54AF8);
  v4 = *sub_1E3E5FD88();
  v5 = *(*v0 + 680);
  v6 = v4;
  return v5(v4);
}

uint64_t sub_1E37C15BC()
{
  if (*(v0 + 120))
  {
    v1 = *(v0 + 120);
  }

  else
  {
    v2 = v0;
    type metadata accessor for TextLayout();
    sub_1E383BCC0();
    OUTLINED_FUNCTION_21_13();
    v11 = OUTLINED_FUNCTION_2_28(v3, v4, v5, v6, v7, v8, v9, v10, v15);
    OUTLINED_FUNCTION_15_30(v11, v12, v13);

    v1 = v16;
    *(v2 + 120) = v16;
  }

  return v1;
}

uint64_t sub_1E37C1654()
{
  OUTLINED_FUNCTION_6_17();
  (*(v0 + 1696))(19);
  OUTLINED_FUNCTION_36();
  (*(v1 + 1792))(10);
  if (qword_1ECF463E0 != -1)
  {
    OUTLINED_FUNCTION_1_61(&qword_1ECF463E0);
  }

  v2 = qword_1ECF71238;
  OUTLINED_FUNCTION_8();
  v4 = *(v3 + 680);
  v5 = v2;
  return v4(v2);
}

uint64_t sub_1E37C1734()
{
  if (*(v0 + 128))
  {
    v1 = *(v0 + 128);
  }

  else
  {
    v2 = v0;
    type metadata accessor for TextLayout();
    sub_1E383BCC0();
    OUTLINED_FUNCTION_21_13();
    v11 = OUTLINED_FUNCTION_2_28(v3, v4, v5, v6, v7, v8, v9, v10, v15);
    OUTLINED_FUNCTION_15_30(v11, v12, v13);

    v1 = v16;
    *(v2 + 128) = v16;
  }

  return v1;
}

uint64_t sub_1E37C17CC()
{
  OUTLINED_FUNCTION_6_17();
  (*(v0 + 1696))(21);
  if (qword_1ECF463E0 != -1)
  {
    OUTLINED_FUNCTION_1_61(&qword_1ECF463E0);
  }

  v1 = qword_1ECF71238;
  OUTLINED_FUNCTION_8();
  v3 = *(v2 + 680);
  v4 = v1;
  v3(v1);
  OUTLINED_FUNCTION_36();
  (*(v5 + 1984))(1);
  OUTLINED_FUNCTION_36();
  (*(v6 + 2056))(0, 0);
  sub_1E3952C58();
  v13[0] = v7;
  v13[1] = v8;
  v13[2] = v9;
  v13[3] = v10;
  v14 = 0;
  OUTLINED_FUNCTION_8();
  return (*(v11 + 160))(v13);
}

uint64_t sub_1E37C192C()
{
  if (*(v0 + 136))
  {
    v1 = *(v0 + 136);
  }

  else
  {
    v2 = v0;
    type metadata accessor for TextLayout();
    sub_1E383BCC0();
    OUTLINED_FUNCTION_21_13();
    v11 = OUTLINED_FUNCTION_2_28(v3, v4, v5, v6, v7, v8, v9, v10, v15);
    OUTLINED_FUNCTION_15_30(v11, v12, v13);

    v1 = v16;
    *(v2 + 136) = v16;
  }

  return v1;
}

uint64_t sub_1E37C19C4()
{
  OUTLINED_FUNCTION_6_17();
  (*(v0 + 1696))(19);
  if (qword_1ECF463E0 != -1)
  {
    OUTLINED_FUNCTION_1_61(&qword_1ECF463E0);
  }

  v1 = qword_1ECF71238;
  OUTLINED_FUNCTION_8();
  v3 = *(v2 + 680);
  v4 = v1;
  v3(v1);
  OUTLINED_FUNCTION_36();
  (*(v5 + 1984))(1);
  OUTLINED_FUNCTION_36();
  return (*(v6 + 256))(0x4070600000000000, 0);
}

uint64_t sub_1E37C1AE4()
{
  if (*(v0 + 144))
  {
    v1 = *(v0 + 144);
  }

  else
  {
    v2 = v0;
    type metadata accessor for ViewLayout();
    sub_1E3C2F968();
    OUTLINED_FUNCTION_21_13();
    v11 = OUTLINED_FUNCTION_2_28(v3, v4, v5, v6, v7, v8, v9, v10, v15);
    OUTLINED_FUNCTION_15_30(v11, v12, v13);

    v1 = v16;
    *(v2 + 144) = v16;
  }

  return v1;
}

uint64_t sub_1E37C1B7C()
{
  OUTLINED_FUNCTION_6_17();
  (*(v0 + 1184))(0x403E000000000000, 0);
  v3[0] = xmmword_1E429D530;
  v3[1] = xmmword_1E429D540;
  v4 = 0;
  OUTLINED_FUNCTION_8();
  return (*(v1 + 184))(v3);
}

uint64_t sub_1E37C1C0C()
{
  if (*(v0 + 152))
  {
    v1 = *(v0 + 152);
  }

  else
  {
    v2 = v0;
    v3 = type metadata accessor for ButtonLayout();
    j__OUTLINED_FUNCTION_18();
    sub_1E3B050E8();
    v4 = j__OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_17_20(v4);
    OUTLINED_FUNCTION_21_13();
    v13 = OUTLINED_FUNCTION_2_28(v5, v6, v7, v8, v9, v10, v11, v12, v17);
    sub_1E41E1A64(v13, v14, v3, v15);

    v1 = v18;
    *(v2 + 152) = v18;
  }

  return v1;
}

uint64_t sub_1E37C1CC8(uint64_t a1)
{
  (*(*a1 + 360))(0, 1);
  v14[0] = 0x4080C00000000000;
  LOBYTE(v14[1]) = 0;
  v2 = MEMORY[0x1E69E7DE0];
  sub_1E3C3DE00();
  v31 = v33;
  v32 = v34;
  sub_1E3C2FC98();
  v27 = v29;
  v28 = v30;
  sub_1E3C3DE00();
  v23 = v25;
  v24 = v26;
  sub_1E3C3DE00();
  v19 = v21;
  v20 = v22;
  sub_1E3C3DE00();
  v15 = v17;
  v16 = v18;
  sub_1E3C2FCB8(&v31, &v27, v14, &v23, &v19, &v15, v2, __src);
  memcpy(v14, __src, 0x59uLL);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_9_2();
  OUTLINED_FUNCTION_16_17();
  v3();
  __src[0] = sub_1E3952C64();
  __src[1] = v4;
  __src[2] = v5;
  __src[3] = v6;
  LOBYTE(__src[4]) = 0;
  (*(*a1 + 160))(__src);
  OUTLINED_FUNCTION_9_2();
  (*(v7 + 1912))(1);
  OUTLINED_FUNCTION_9_2();
  v9 = *(v8 + 2048);
  v9();
  OUTLINED_FUNCTION_2_1();
  (*(v10 + 2056))(2, 0);

  (v9)(v11);
  OUTLINED_FUNCTION_2_1();
  (*(v12 + 1720))(12);
}

uint64_t sub_1E37C1F98()
{
  if (*(v0 + 160))
  {
    v1 = *(v0 + 160);
  }

  else
  {
    v2 = v0;
    v3 = type metadata accessor for ButtonLayout();
    j__OUTLINED_FUNCTION_18();
    sub_1E3B050E8();
    v4 = j__OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_17_20(v4);
    OUTLINED_FUNCTION_21_13();
    v13 = OUTLINED_FUNCTION_2_28(v5, v6, v7, v8, v9, v10, v11, v12, v17);
    sub_1E41E1A64(v13, v14, v3, v15);

    v1 = v18;
    *(v2 + 160) = v18;
  }

  return v1;
}

void sub_1E37C204C(uint64_t *a1)
{
  v2 = v1;
  v3 = *a1;
  (*(**a1 + 360))(0, 1);
  __dst[0] = 0x4080C00000000000;
  LOBYTE(__dst[1]) = 0;
  v4 = MEMORY[0x1E69E7DE0];
  sub_1E3C3DE00();
  v52 = v54;
  v53 = v55;
  sub_1E3C2FC98();
  v48 = v50;
  v49 = v51;
  sub_1E3C3DE00();
  v44 = v46;
  v45 = v47;
  sub_1E3C3DE00();
  v40 = v42;
  v41 = v43;
  sub_1E3C3DE00();
  v36 = v38;
  v37 = v39;
  sub_1E3C2FCB8(&v52, &v48, __dst, &v44, &v40, &v36, v4, __src);
  memcpy(__dst, __src, 0x59uLL);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_9_2();
  OUTLINED_FUNCTION_16_17();
  v5();
  __src[0] = sub_1E3952C64();
  __src[1] = v6;
  __src[2] = v7;
  __src[3] = v8;
  LOBYTE(__src[4]) = 0;
  (*(*v3 + 160))(__src);
  OUTLINED_FUNCTION_9_2();
  (*(v9 + 1912))(1);
  OUTLINED_FUNCTION_9_2();
  v11 = *(v10 + 2048);
  v11();
  OUTLINED_FUNCTION_2_1();
  (*(v12 + 2056))(2, 0);

  (v11)(v13);
  OUTLINED_FUNCTION_2_1();
  (*(v14 + 1696))(15);

  (v11)(v15);
  OUTLINED_FUNCTION_2_1();
  (*(v16 + 1792))(10);

  (v11)(v17);
  OUTLINED_FUNCTION_2_1();
  (*(v18 + 1720))(12);

  OUTLINED_FUNCTION_15_0(v2 + 256, v19);
  if (*(v2 + 256) == 1)
  {
    sub_1E3755B54();
    v20 = objc_opt_self();
    v21 = [v20 blackColor];
    v22 = [v21 colorWithAlphaComponent_];

    v23 = [v20 whiteColor];
    v24 = [v23 colorWithAlphaComponent_];

    v25 = sub_1E3E5F2F8(v22, v24);
    OUTLINED_FUNCTION_9_2();
    v27 = *(v26 + 752);
    v28 = v25;
    v27(v25);
    v29 = [v20 whiteColor];
    v30 = [v20 blackColor];
    v31 = sub_1E3E5F2F8(v29, v30);

    OUTLINED_FUNCTION_9_2();
    (*(v32 + 2096))();
    v54 = v31;
    v33 = v31;
    sub_1E3C2CA00();

    v11();
    OUTLINED_FUNCTION_2_1();
    (*(v34 + 680))(v31);
  }
}

uint64_t sub_1E37C25F0()
{
  if (*(v0 + 232))
  {
    v1 = *(v0 + 232);
  }

  else
  {
    _s20ScoreboardViewLayoutCMa();
    v1 = sub_1E3757A38();
    *(v0 + 232) = v1;
  }

  return v1;
}

uint64_t sub_1E37C2658()
{
  if (*(v0 + 240))
  {
    v1 = *(v0 + 240);
  }

  else
  {
    _s26ScoreAccessoryDetailLayoutCMa();
    v1 = sub_1E37585E0();
    *(v0 + 240) = v1;
  }

  return v1;
}

void sub_1E37C26C0()
{
  type metadata accessor for LayoutGrid();
  sub_1E3A256EC();
  sub_1E3A25980();
}

uint64_t sub_1E37C2734()
{
  type metadata accessor for ViewLayout();
  *(v0 + 168) = OUTLINED_FUNCTION_13_35();
  *(v0 + 176) = sub_1E3952C10(16.0, 8.0);
  *(v0 + 184) = v1;
  *(v0 + 192) = v2;
  *(v0 + 200) = v3;
  OUTLINED_FUNCTION_11_28(xmmword_1E429D550);
  v4 = sub_1E3C2F9A0();

  sub_1E3C2D150();
  sub_1E37C27B0();

  return v4;
}

uint64_t sub_1E37C27B0()
{
  sub_1E3C37CBC(*(v0 + 168), 91);
  v1 = sub_1E37C1C0C();
  sub_1E3C37CBC(v1, 59);

  v2 = sub_1E37C1F98();
  sub_1E3C37CBC(v2, 66);

  v3 = sub_1E37C25F0();
  sub_1E3C37CBC(v3, 234);

  v4 = sub_1E37C120C();
  sub_1E3C37CBC(v4, 35);

  sub_1E3C37CBC(v5, 37);

  v6 = sub_1E37C1398();
  sub_1E3C37CBC(v6, 15);

  v7 = sub_1E37C15BC();
  sub_1E3C37EC8(v7, &unk_1F5D56B68);

  v8 = sub_1E37C192C();
  sub_1E3C37CBC(v8, 17);

  v9 = sub_1E3757238();

  sub_1E3C37CBC(v9, 34);

  v10 = sub_1E37C1734();
  sub_1E3C37CBC(v10, 11);

  v11 = sub_1E37C2658();
  sub_1E3C37CBC(v11, 97);
}

uint64_t sub_1E37C2930(uint64_t a1)
{
  v1 = a1;
  swift_allocObject();
  return sub_1E37C296C(v1);
}

uint64_t sub_1E37C296C(char a1)
{
  type metadata accessor for ViewLayout();
  *(v1 + 168) = OUTLINED_FUNCTION_13_35();
  *(v1 + 176) = sub_1E3952C10(16.0, 8.0);
  *(v1 + 184) = v3;
  *(v1 + 192) = v4;
  *(v1 + 200) = v5;
  OUTLINED_FUNCTION_11_28(xmmword_1E429D550);
  swift_beginAccess();
  *(v1 + 256) = a1;
  v6 = sub_1E3C2F9A0();

  sub_1E3C2D150();
  if (a1)
  {
    v7 = sub_1E37C1AE4();
    v12[0] = xmmword_1E429D540;
    v12[1] = xmmword_1E429D530;
    v13 = 0;
    (*(*v7 + 184))(v12);

    sub_1E37C1C0C();
    j__OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_36();
    (*(v8 + 2352))(1, v9 & 1, 2);

    sub_1E37C1CC8(v10);
  }

  sub_1E37C27B0();

  return v6;
}

void *sub_1E37C2AE4(uint64_t a1, void *a2)
{
  sub_1E3C35CF4(a1, a2);
  result = sub_1E3C2F8E8();
  if (result)
  {
    v3 = result;
    v4 = sub_1E37C1398();
    v5 = [v3 isAXEnabled];
    (*(*v4 + 2056))(v5 ^ 1, v5);

    v6 = sub_1E37C15BC();
    v7 = [v3 isAXEnabled];
    (*(*v6 + 2056))(v7 ^ 1, v7);
  }

  return result;
}

uint64_t sub_1E37C2C00()
{
}

void *sub_1E37C2C78()
{
  v0 = sub_1E3C36C6C();

  return v0;
}

uint64_t sub_1E37C2CF8()
{
  v0 = sub_1E37C2C78();

  return MEMORY[0x1EEE6BDC0](v0, 257, 7);
}

uint64_t sub_1E37C2D5C()
{
  v39 = *MEMORY[0x1E69E9840];
  v1 = sub_1E41FFCB4();
  v2 = *(v1 - 8);
  *&v3 = MEMORY[0x1EEE9AC00](v1).n128_u64[0];
  v5 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37[0] = 0;
  v6 = [v0 exportDictionaryAndReturnError_];
  v7 = v37[0];
  if (v6)
  {
    v8 = v6;
    _s3__C3KeyVMa_0();
    sub_1E37C388C(&qword_1ECF2A410, &unk_1E429D77C);
    v9 = sub_1E4205C64();
    v10 = v7;

    sub_1E37C31D0(*MEMORY[0x1E695F538], v9, v37);

    if (v38)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A418, &qword_1E429D628);
      if (swift_dynamicCast())
      {
        v11 = 0;
        v12 = v36;
        v13 = MEMORY[0x1E69E7CC0];
        v36 = MEMORY[0x1E69E7CC0];
        v14 = MEMORY[0x1E695F508];
        v15 = *(v12 + 16);
        while (1)
        {
          while (1)
          {
            if (v15 == v11)
            {

              return v13;
            }

            if (v11 >= *(v12 + 16))
            {
              __break(1u);
            }

            v16 = *(v12 + 8 * v11 + 32);
            if (*(v16 + 16))
            {
              break;
            }

LABEL_15:
            ++v11;
          }

          v17 = *v14;

          v18 = sub_1E37C375C(v17);
          if ((v19 & 1) == 0 || (sub_1E328438C(*(v16 + 56) + 32 * v18, v37), __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF3A0C0, &qword_1E429D630), (swift_dynamicCast() & 1) == 0))
          {

            goto LABEL_15;
          }

          v20 = v35;
          sub_1E3280A90(0, &qword_1ECF2A420, 0x1E695F588);
          v21 = sub_1E37C3234(v20);

          if (!v21)
          {
            goto LABEL_15;
          }

          MEMORY[0x1E6910BF0](v22);
          if (*((v36 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v36 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_1E42062F4();
          }

          ++v11;
          sub_1E4206324();
          v13 = v36;
        }
      }
    }

    else
    {
      sub_1E329505C(v37);
    }
  }

  else
  {
    v23 = v37[0];
    v24 = sub_1E41FE274();

    swift_willThrow();
    v25 = sub_1E324FBDC();
    (*(v2 + 16))(v5, v25, v1);
    v26 = v24;
    v27 = sub_1E41FFC94();
    v28 = sub_1E42067F4();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v37[0] = v30;
      *v29 = 136315138;
      swift_getErrorValue();
      v31 = sub_1E4207AB4();
      v33 = sub_1E3270FC8(v31, v32, v37);

      *(v29 + 4) = v33;
      _os_log_impl(&dword_1E323F000, v27, v28, "CHHapticPattern:: failed to export dictionary %s", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v30);
      MEMORY[0x1E69143B0](v30, -1, -1);
      MEMORY[0x1E69143B0](v29, -1, -1);
    }

    (*(v2 + 8))(v5, v1);
  }

  return MEMORY[0x1E69E7CC0];
}

double sub_1E37C31D0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  if (*(a2 + 16) && (v5 = sub_1E37C375C(a1), (v6 & 1) != 0))
  {
    v7 = *(a2 + 56) + 32 * v5;

    sub_1E328438C(v7, a3);
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

uint64_t sub_1E37C3234(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    goto LABEL_11;
  }

  v2 = sub_1E37C375C(*MEMORY[0x1E695F520]);
  if ((v3 & 1) == 0)
  {
    goto LABEL_11;
  }

  v4 = sub_1E328438C(*(a1 + 56) + 32 * v2, &v38);
  if ((OUTLINED_FUNCTION_0_31(v4, v5, v6, MEMORY[0x1E69E6158], v7, v8) & 1) == 0)
  {
    goto LABEL_11;
  }

  v14 = sub_1E37C31D0(*MEMORY[0x1E695F548], a1, &v38);
  if (!v39)
  {
    goto LABEL_14;
  }

  if ((OUTLINED_FUNCTION_0_31(v9, v10, v11, MEMORY[0x1E69E63B0], v12, v13, v14) & 1) == 0)
  {
LABEL_15:

LABEL_11:

    return 0;
  }

  v20 = sub_1E37C31D0(*MEMORY[0x1E695F510], a1, &v38);
  if (!v39)
  {
LABEL_14:

    sub_1E329505C(&v38);
    return 0;
  }

  if ((OUTLINED_FUNCTION_0_31(v15, v16, v17, MEMORY[0x1E69E63B0], v18, v19, v20) & 1) == 0)
  {
    goto LABEL_15;
  }

  sub_1E37C31D0(*MEMORY[0x1E695F518], a1, &v38);

  v21 = MEMORY[0x1E69E7CC0];
  if (v39)
  {
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A418, &qword_1E429D628);
    result = OUTLINED_FUNCTION_0_31(v22, v23, v24, v22, v25, v26);
    if (result)
    {
      v28 = v37;
      goto LABEL_18;
    }
  }

  else
  {
    result = sub_1E329505C(&v38);
  }

  v28 = MEMORY[0x1E69E7CC0];
LABEL_18:
  v30 = 0;
  *&v38 = v21;
  v31 = *(*&v28 + 16);
LABEL_19:
  v32 = v30;
  while (1)
  {
    if (v31 == v32)
    {

      v34 = objc_allocWithZone(swift_getObjCClassFromMetadata());
      v35 = sub_1E4205ED4();

      sub_1E3280A90(0, &qword_1ECF2A428, 0x1E695F590);
      v36 = sub_1E42062A4();

      v29 = [v34 initWithEventType:v35 parameters:v36 relativeTime:v37 duration:v37];

      return v29;
    }

    if (v32 >= *(*&v28 + 16))
    {
      break;
    }

    v30 = v32 + 1;
    sub_1E3280A90(0, &qword_1ECF2A428, 0x1E695F590);

    result = sub_1E37C3534(v33);
    v32 = v30;
    if (result)
    {
      MEMORY[0x1E6910BF0]();
      if (*((v38 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v38 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1E42062F4();
      }

      result = sub_1E4206324();
      goto LABEL_19;
    }
  }

  __break(1u);
  return result;
}

id sub_1E37C3534(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    goto LABEL_7;
  }

  v2 = sub_1E37C375C(*MEMORY[0x1E695F528]);
  if ((v3 & 1) == 0)
  {
    goto LABEL_7;
  }

  v4 = sub_1E328438C(*(a1 + 56) + 32 * v2, &v28);
  if ((OUTLINED_FUNCTION_1_62(v4, v5, v6, MEMORY[0x1E69E6158], v7, v8, v9, v10, v23, v26, v28) & 1) == 0)
  {
    goto LABEL_7;
  }

  sub_1E37C31D0(*MEMORY[0x1E695F530], a1, &v28);

  if (!v29)
  {

    sub_1E329505C(&v28);
    return 0;
  }

  if ((OUTLINED_FUNCTION_1_62(v11, v12, v13, MEMORY[0x1E69E6448], v14, v15, v16, v17, v24, v27, v28) & 1) == 0)
  {
LABEL_7:

    return 0;
  }

  v18 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v19 = sub_1E4205ED4();

  LODWORD(v20) = v25;
  v21 = [v18 initWithParameterID:v19 value:v20];

  return v21;
}

uint64_t sub_1E37C3674(uint64_t a1)
{
  sub_1E37C388C(&qword_1ECF2A410, &unk_1E429D77C);
  sub_1E37C388C(&qword_1ECF2A448, &unk_1E429D6DC);

  return sub_1E4207764();
}

void _s3__C3KeyVMa_0()
{
  if (!qword_1ECF2A430)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_1ECF2A430);
    }
  }
}

unint64_t sub_1E37C375C(uint64_t a1)
{
  sub_1E4205F14();
  sub_1E4207B44();
  sub_1E4206014();
  v2 = sub_1E4207BA4();

  return sub_1E37C38D0(a1, v2);
}

uint64_t sub_1E37C388C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    _s3__C3KeyVMa_0();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1E37C38D0(uint64_t a1, uint64_t a2)
{
  v3 = ~(-1 << *(v2 + 32));
  for (i = a2 & v3; ((1 << i) & *(v2 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v3)
  {
    v5 = sub_1E4205F14();
    v7 = v6;
    if (v5 == sub_1E4205F14() && v7 == v8)
    {

      return i;
    }

    v10 = sub_1E42079A4();

    if (v10)
    {
      return i;
    }
  }

  return i;
}

uint64_t sub_1E37C39C8()
{
  v1 = (v0 + OBJC_IVAR____TtC8VideosUI31LibFamilySharingShowMediaEntity____lazy_storage___episodeCount);
  if ((*(v0 + OBJC_IVAR____TtC8VideosUI31LibFamilySharingShowMediaEntity____lazy_storage___episodeCount + 9) & 1) == 0)
  {
    return *v1;
  }

  result = 0;
  *v1 = 0;
  v1[4] = 1;
  return result;
}

uint64_t sub_1E37C3A00(uint64_t result, char a2)
{
  v3 = v2 + OBJC_IVAR____TtC8VideosUI31LibFamilySharingShowMediaEntity____lazy_storage___episodeCount;
  *v3 = result;
  *(v3 + 8) = a2 & 1;
  *(v3 + 9) = 0;
  return result;
}

uint64_t (*sub_1E37C3A20(uint64_t a1))(uint64_t result)
{
  *(a1 + 16) = v1;
  *a1 = sub_1E37C39C8();
  *(a1 + 8) = v3 & 1;
  return sub_1E37C3A70;
}

uint64_t sub_1E37C3A70(uint64_t result)
{
  v1 = *(result + 8);
  v2 = *(result + 16) + OBJC_IVAR____TtC8VideosUI31LibFamilySharingShowMediaEntity____lazy_storage___episodeCount;
  *v2 = *result;
  *(v2 + 8) = v1;
  return result;
}

uint64_t sub_1E37C3A98()
{
  v1 = *(v0 + OBJC_IVAR____TtC8VideosUI31LibFamilySharingShowMediaEntity____lazy_storage___seasons);
  v2 = v1;
  if (v1 == 1)
  {
    v2 = 0;
    *(v0 + OBJC_IVAR____TtC8VideosUI31LibFamilySharingShowMediaEntity____lazy_storage___seasons) = 0;
  }

  sub_1E37C3ADC(v1);
  return v2;
}

uint64_t sub_1E37C3ADC(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

uint64_t sub_1E37C3AEC(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC8VideosUI31LibFamilySharingShowMediaEntity____lazy_storage___seasons);
  *(v1 + OBJC_IVAR____TtC8VideosUI31LibFamilySharingShowMediaEntity____lazy_storage___seasons) = a1;
  return sub_1E37C3B04(v2);
}

uint64_t sub_1E37C3B04(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

uint64_t (*sub_1E37C3B14(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  *a1 = sub_1E37C3A98();
  return sub_1E37C3B5C;
}

uint64_t sub_1E37C3B5C(uint64_t *a1, char a2)
{
  v2 = a1[1];
  v3 = *(v2 + OBJC_IVAR____TtC8VideosUI31LibFamilySharingShowMediaEntity____lazy_storage___seasons);
  *(v2 + OBJC_IVAR____TtC8VideosUI31LibFamilySharingShowMediaEntity____lazy_storage___seasons) = *a1;
  if (a2)
  {

    sub_1E37C3B04(v3);
  }

  else
  {

    return sub_1E37C3B04(v3);
  }
}

uint64_t sub_1E37C3BD4()
{
  v1 = v0 + OBJC_IVAR____TtC8VideosUI31LibFamilySharingShowMediaEntity____lazy_storage___storeID;
  if ((*(v0 + OBJC_IVAR____TtC8VideosUI31LibFamilySharingShowMediaEntity____lazy_storage___storeID + 5) & 1) == 0)
  {
    LODWORD(v9) = *v1;
    v15 = *(v1 + 4) & 1;
    return v9 | (v15 << 32);
  }

  result = (*(*v0 + 184))();
  v4 = v3;
  v5 = HIBYTE(v3) & 0xF;
  v6 = result & 0xFFFFFFFFFFFFLL;
  if ((v4 & 0x2000000000000000) != 0)
  {
    v7 = v5;
  }

  else
  {
    v7 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v7)
  {

    v27 = 0;
    goto LABEL_73;
  }

  if ((v4 & 0x1000000000000000) != 0)
  {
    v9 = sub_1E37C4D2C(result, v4, 10);

    v27 = v9;
    if ((v9 & 0x100000000) != 0)
    {
      v27 = 0;
      goto LABEL_73;
    }

    v15 = 0;
    goto LABEL_78;
  }

  if ((v4 & 0x2000000000000000) == 0)
  {
    if ((result & 0x1000000000000000) != 0)
    {
      result = (v4 & 0xFFFFFFFFFFFFFFFLL) + 32;
    }

    else
    {
      result = sub_1E4207524();
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v6 >= 1)
      {
        if (v6 != 1)
        {
          LODWORD(v9) = 0;
          if (result)
          {
            while (1)
            {
              OUTLINED_FUNCTION_1_4();
              if (!v11 & v10)
              {
                goto LABEL_70;
              }

              OUTLINED_FUNCTION_5_26();
              if (!v11)
              {
                goto LABEL_70;
              }

              LODWORD(v9) = v19 + v18;
              if (__OFADD__(v19, v18))
              {
                goto LABEL_70;
              }

              OUTLINED_FUNCTION_132();
              if (v11)
              {
                goto LABEL_71;
              }
            }
          }

          goto LABEL_61;
        }

        goto LABEL_70;
      }

      goto LABEL_84;
    }

    if (v8 != 45)
    {
      if (v6)
      {
        LODWORD(v9) = 0;
        if (result)
        {
          while (1)
          {
            v22 = *result - 48;
            if (v22 > 9)
            {
              goto LABEL_70;
            }

            v23 = 10 * v9;
            if (v23 != v23)
            {
              goto LABEL_70;
            }

            LODWORD(v9) = v23 + v22;
            if (__OFADD__(v23, v22))
            {
              goto LABEL_70;
            }

            ++result;
            if (!--v6)
            {
              goto LABEL_61;
            }
          }
        }

        goto LABEL_61;
      }

LABEL_70:
      LODWORD(v9) = 0;
      v14 = 1;
LABEL_71:
      v26 = v14;

      v27 = v9;
      v15 = v26 & 1;
      if (v26)
      {
        v27 = 0;
LABEL_73:
        LODWORD(v9) = 0;
        v28 = 0x100000000;
        v15 = 1;
LABEL_79:
        *(v1 + 4) = BYTE4(v28);
        *v1 = v28 | v27;
        *(v1 + 5) = 0;
        return v9 | (v15 << 32);
      }

LABEL_78:
      v28 = 0;
      goto LABEL_79;
    }

    if (v6 >= 1)
    {
      if (v6 != 1)
      {
        LODWORD(v9) = 0;
        if (result)
        {
          while (1)
          {
            OUTLINED_FUNCTION_1_4();
            if (!v11 & v10)
            {
              goto LABEL_70;
            }

            OUTLINED_FUNCTION_5_26();
            if (!v11)
            {
              goto LABEL_70;
            }

            LODWORD(v9) = v13 - v12;
            if (__OFSUB__(v13, v12))
            {
              goto LABEL_70;
            }

            OUTLINED_FUNCTION_132();
            if (v11)
            {
              goto LABEL_71;
            }
          }
        }

LABEL_61:
        v14 = 0;
        goto LABEL_71;
      }

      goto LABEL_70;
    }

    __break(1u);
LABEL_83:
    __break(1u);
LABEL_84:
    __break(1u);
    goto LABEL_85;
  }

  if (result != 43)
  {
    if (result != 45)
    {
      if (v5)
      {
        while (1)
        {
          OUTLINED_FUNCTION_1_4();
          if (!v11 & v10)
          {
            break;
          }

          OUTLINED_FUNCTION_5_26();
          if (!v11)
          {
            break;
          }

          LODWORD(v9) = v25 + v24;
          if (__OFADD__(v25, v24))
          {
            break;
          }

          OUTLINED_FUNCTION_132();
          if (v11)
          {
            goto LABEL_71;
          }
        }
      }

      goto LABEL_70;
    }

    if (v5)
    {
      if (v5 != 1)
      {
        OUTLINED_FUNCTION_8_13();
        while (1)
        {
          OUTLINED_FUNCTION_1_4();
          if (!v11 & v10)
          {
            break;
          }

          OUTLINED_FUNCTION_5_26();
          if (!v11)
          {
            break;
          }

          LODWORD(v9) = v17 - v16;
          if (__OFSUB__(v17, v16))
          {
            break;
          }

          OUTLINED_FUNCTION_132();
          if (v11)
          {
            goto LABEL_71;
          }
        }
      }

      goto LABEL_70;
    }

    goto LABEL_83;
  }

  if (v5)
  {
    if (v5 != 1)
    {
      OUTLINED_FUNCTION_8_13();
      while (1)
      {
        OUTLINED_FUNCTION_1_4();
        if (!v11 & v10)
        {
          break;
        }

        OUTLINED_FUNCTION_5_26();
        if (!v11)
        {
          break;
        }

        LODWORD(v9) = v21 + v20;
        if (__OFADD__(v21, v20))
        {
          break;
        }

        OUTLINED_FUNCTION_132();
        if (v11)
        {
          goto LABEL_71;
        }
      }
    }

    goto LABEL_70;
  }

LABEL_85:
  __break(1u);
  return result;
}

uint64_t sub_1E37C3ECC(uint64_t result)
{
  v2 = v1 + OBJC_IVAR____TtC8VideosUI31LibFamilySharingShowMediaEntity____lazy_storage___storeID;
  *(v2 + 4) = BYTE4(result) & 1;
  *v2 = result;
  *(v2 + 5) = 0;
  return result;
}

uint64_t (*sub_1E37C3EEC(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = sub_1E37C3BD4();
  *(a1 + 8) = v3;
  *(a1 + 12) = BYTE4(v3) & 1;
  return sub_1E37C3F3C;
}

uint64_t sub_1E37C3F3C(uint64_t result)
{
  v1 = *(result + 12) != 0;
  v2 = *result + OBJC_IVAR____TtC8VideosUI31LibFamilySharingShowMediaEntity____lazy_storage___storeID;
  *v2 = *(result + 8);
  *(v2 + 4) = v1;
  *(v2 + 5) = 0;
  return result;
}

double sub_1E37C3F74@<D0>(uint64_t a1@<X8>)
{
  sub_1E37C4330(v4);
  result = *v4;
  v3 = v4[1];
  *a1 = v4[0];
  *(a1 + 16) = v3;
  *(a1 + 32) = v5;
  return result;
}

void sub_1E37C3FB8(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = v1 + OBJC_IVAR____TtC8VideosUI31LibFamilySharingShowMediaEntity____lazy_storage____imageData;
  v5 = *(v1 + OBJC_IVAR____TtC8VideosUI31LibFamilySharingShowMediaEntity____lazy_storage____imageData);
  v4 = *(v1 + OBJC_IVAR____TtC8VideosUI31LibFamilySharingShowMediaEntity____lazy_storage____imageData + 8);
  v6 = *(v1 + OBJC_IVAR____TtC8VideosUI31LibFamilySharingShowMediaEntity____lazy_storage____imageData + 16);
  v7 = *(v1 + OBJC_IVAR____TtC8VideosUI31LibFamilySharingShowMediaEntity____lazy_storage____imageData + 24);
  v8 = *(a1 + 16);
  *v3 = *a1;
  *(v3 + 16) = v8;
  v9 = *(v3 + 32);
  *(v3 + 32) = v2;
  sub_1E37C52A4(v5, v4, v6, v7, v9);
}

void (*sub_1E37C3FE8(void *a1))(void ***a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  v3[5] = v1;
  sub_1E37C4330(v3);
  return sub_1E37C404C;
}

void sub_1E37C404C(void ***a1, char a2)
{
  v3 = *a1;
  v4 = (*a1)[5];
  v5 = **a1;
  v6 = v3[1];
  v7 = v3[2];
  v8 = v3[3];
  v9 = *(v3 + 32);
  v10 = &v4[OBJC_IVAR____TtC8VideosUI31LibFamilySharingShowMediaEntity____lazy_storage____imageData];
  *v10 = v5;
  *(v10 + 1) = v6;
  *(v10 + 2) = v7;
  *(v10 + 3) = v8;
  v10[32] = v9;
  if (a2)
  {
    sub_1E37C5358(v5, v6, v7, v8, v9);
    OUTLINED_FUNCTION_7_38();
    sub_1E37C52B8(*v3, v3[1], v3[2], v3[3], *(v3 + 32));
  }

  else
  {
    OUTLINED_FUNCTION_7_38();
  }

  free(v3);
}

uint64_t sub_1E37C40EC()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC8VideosUI31LibFamilySharingShowMediaEntity____lazy_storage___representationEpisode;
  v3 = *(v0 + OBJC_IVAR____TtC8VideosUI31LibFamilySharingShowMediaEntity____lazy_storage___representationEpisode);
  v4 = v3;
  if (v3 == 1)
  {
    v5 = *(v1 + OBJC_IVAR____TtC8VideosUI31LibFamilySharingBaseMediaEntity_familySharingDict);
    v6 = sub_1E38ADF4C();
    v7 = *v6;
    v8 = v6[1];

    sub_1E3277E60(v7, v8, v5, &v84);

    if (v85)
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770, &qword_1E42992B0);
      OUTLINED_FUNCTION_2_29(v9, v10, v11, v12, v13, v14, v15, v16, v70, v77);
      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_15;
      }

      v17 = sub_1E38ADFA0();
      v18 = OUTLINED_FUNCTION_9_25(v17);
      OUTLINED_FUNCTION_3_28(v18, v19, v20, v21, v22, v23, v24, v25, v71, v78, v84);

      if (v85)
      {
        OUTLINED_FUNCTION_2_29(v26, v27, v28, v29, v30, v31, v32, v33, v72, v79);
        if ((swift_dynamicCast() & 1) == 0)
        {
          goto LABEL_15;
        }

        v34 = sub_1E38ADE84();
        v35 = OUTLINED_FUNCTION_9_25(v34);
        OUTLINED_FUNCTION_3_28(v35, v36, v37, v38, v39, v40, v41, v42, v73, v80, v84);

        if (v85)
        {
          v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E9B0, qword_1E4298110);
          OUTLINED_FUNCTION_2_29(v43, v44, v45, v43, v46, v47, v48, v49, v74, v81);
          if (swift_dynamicCast())
          {
            if (!*(v82 + 16))
            {
LABEL_18:

              goto LABEL_15;
            }

            v50 = *(v82 + 32);

            v51 = sub_1E38ADEA8();
            v52 = OUTLINED_FUNCTION_9_25(v51);
            OUTLINED_FUNCTION_3_28(v52, v53, v54, v55, v56, v57, v58, v59, v75, v82, v84);

            if (v85)
            {
              OUTLINED_FUNCTION_2_29(v60, v61, v62, v63, v64, v65, v66, v67, v76, v83);
              if (swift_dynamicCast())
              {

                type metadata accessor for LibFamilySharingEpisodeMediaEntity(0);
                v4 = sub_1E3CEF970(v50);
LABEL_16:
                v68 = *(v1 + v2);
                *(v1 + v2) = v4;

                sub_1E3781D80(v68);
                goto LABEL_17;
              }

              goto LABEL_18;
            }

            goto LABEL_14;
          }

LABEL_15:
          v4 = 0;
          goto LABEL_16;
        }
      }
    }

LABEL_14:
    sub_1E325F748(&v84, &unk_1ECF296E0, &unk_1E4298030);
    goto LABEL_15;
  }

LABEL_17:
  sub_1E37C5408(v3);
  return v4;
}

uint64_t sub_1E37C4318(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC8VideosUI31LibFamilySharingShowMediaEntity____lazy_storage___representationEpisode);
  *(v1 + OBJC_IVAR____TtC8VideosUI31LibFamilySharingShowMediaEntity____lazy_storage___representationEpisode) = a1;
  return sub_1E3781D80(v2);
}

__n128 sub_1E37C4330@<Q0>(uint64_t a1@<X8>)
{
  v5 = v1 + OBJC_IVAR____TtC8VideosUI31LibFamilySharingShowMediaEntity____lazy_storage____imageData;
  v7 = *(v1 + OBJC_IVAR____TtC8VideosUI31LibFamilySharingShowMediaEntity____lazy_storage____imageData);
  v6 = *(v1 + OBJC_IVAR____TtC8VideosUI31LibFamilySharingShowMediaEntity____lazy_storage____imageData + 16);
  v8 = *(v1 + OBJC_IVAR____TtC8VideosUI31LibFamilySharingShowMediaEntity____lazy_storage____imageData + 32);
  v9 = *(v1 + OBJC_IVAR____TtC8VideosUI31LibFamilySharingShowMediaEntity____lazy_storage____imageData + 32);
  v43 = v6;
  v44 = v7;
  if (v8 == 254)
  {
    v41 = *(v1 + OBJC_IVAR____TtC8VideosUI31LibFamilySharingShowMediaEntity____lazy_storage____imageData);
    v42 = *(v1 + OBJC_IVAR____TtC8VideosUI31LibFamilySharingShowMediaEntity____lazy_storage____imageData + 16);
    v10 = *(v1 + OBJC_IVAR____TtC8VideosUI31LibFamilySharingBaseMediaEntity_attributeDict);
    if (v10)
    {
      v11 = sub_1E38ADF34();
      OUTLINED_FUNCTION_9_25(v11);
      sub_1E3277E60(v2, v3, v10, &v47);

      if (*(&v48 + 1))
      {
        v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770, &qword_1E42992B0);
        v20 = OUTLINED_FUNCTION_6_32(v12, v13, v14, v15, v16, v17, v18, v19, v41);
        if ((v20 & 1) == 0)
        {
          goto LABEL_10;
        }

        v21 = sub_1E38ADF40();
        v22 = *v21;
        v23 = v21[1];

        sub_1E3277E60(v22, v23, *&v45[0], &v47);

        if (*(&v48 + 1))
        {
          v20 = OUTLINED_FUNCTION_6_32(v24, v25, v26, v27, v28, v29, v30, v31, v41);
          if (v20)
          {
            type metadata accessor for LibFamilySharingBaseMediaEntity(0);
            sub_1E38AEAB0(*&v45[0], &v47);
            v43 = v48;
            v44 = v47;
            v9 = v49;

LABEL_16:
            v47 = v44;
            v48 = v43;
            v49 = v9;
            v35 = *v5;
            v36 = *(v5 + 8);
            v37 = *(v5 + 16);
            v38 = *(v5 + 24);
            *v5 = v44;
            *(v5 + 16) = v43;
            v39 = *(v5 + 32);
            *(v5 + 32) = v9;
            sub_1E37C5550(&v47, v45);
            sub_1E37C52A4(v35, v36, v37, v38, v39);
            v7 = v41;
            v6 = v42;
            goto LABEL_17;
          }

LABEL_10:
          v32 = (*(*v1 + 584))(v20);
          if (v32)
          {
            v33 = v32;
            v34 = (*(*v32 + 1240))(v45);
            v9 = v46;
            if (v46 == 255)
            {
              (*(*v33 + 312))(&v47, v34);
              v43 = v48;
              v44 = v47;
              v9 = v49;
            }

            else
            {
              v43 = v45[1];
              v44 = v45[0];
            }
          }

          else
          {
            v43 = 0u;
            v44 = 0u;
            v9 = -1;
          }

          goto LABEL_16;
        }
      }
    }

    else
    {
      v47 = 0u;
      v48 = 0u;
    }

    v20 = sub_1E325F748(&v47, &unk_1ECF296E0, &unk_1E4298030);
    goto LABEL_10;
  }

LABEL_17:
  sub_1E37C55C0(v7.n128_u64[0], v7.n128_i64[1], v6, *(&v6 + 1), v8);
  result = v44;
  *a1 = v44;
  *(a1 + 16) = v43;
  *(a1 + 32) = v9;
  return result;
}

uint64_t sub_1E37C4620(uint64_t a1)
{
  v2 = sub_1E41FFCB4();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = v1 + OBJC_IVAR____TtC8VideosUI31LibFamilySharingShowMediaEntity____lazy_storage___episodeCount;
  *v6 = 0;
  *(v6 + 8) = 256;
  *(v1 + OBJC_IVAR____TtC8VideosUI31LibFamilySharingShowMediaEntity____lazy_storage___seasons) = 1;
  v7 = v1 + OBJC_IVAR____TtC8VideosUI31LibFamilySharingShowMediaEntity____lazy_storage___storeID;
  *(v7 + 4) = 256;
  *v7 = 0;
  *(v1 + OBJC_IVAR____TtC8VideosUI31LibFamilySharingShowMediaEntity____lazy_storage___representationEpisode) = 1;
  v8 = v1 + OBJC_IVAR____TtC8VideosUI31LibFamilySharingShowMediaEntity____lazy_storage____imageData;
  *v8 = 0u;
  *(v8 + 16) = 0u;
  *(v8 + 32) = -2;

  v10 = sub_1E38AFA6C(v9);
  v11 = v10;
  if (!v10)
  {
LABEL_6:

    return v11;
  }

  v12 = *(*v10 + 312);

  v12(v33, v13);
  if (v34 == 255)
  {
  }

  else
  {
    v14 = sub_1E325F748(v33, &qword_1ECF2A450, &qword_1E429D7C0);
    v15 = (*(*v11 + 232))(v14);
    v17 = v16;

    v18 = HIBYTE(v17) & 0xF;
    if ((v17 & 0x2000000000000000) == 0)
    {
      v18 = v15 & 0xFFFFFFFFFFFFLL;
    }

    if (v18)
    {
      goto LABEL_6;
    }
  }

  v19 = sub_1E41A3110();
  (*(v3 + 16))(v5, v19, v2);

  v20 = sub_1E41FFC94();
  v21 = sub_1E4206814();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v31 = v3;
    v32 = v23;
    v24 = v23;
    *v22 = 136315138;
    v25 = sub_1E4205C74();
    v27 = v26;

    v28 = sub_1E3270FC8(v25, v27, &v32);

    *(v22 + 4) = v28;
    _os_log_impl(&dword_1E323F000, v20, v21, "LibFamilySharingShowMediaEntity::received family sharing bad data %s", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v24);
    MEMORY[0x1E69143B0](v24, -1, -1);
    MEMORY[0x1E69143B0](v22, -1, -1);

    (*(v31 + 8))(v5, v2);
  }

  else
  {

    (*(v3 + 8))(v5, v2);
  }

  return 0;
}

void sub_1E37C4994()
{
  sub_1E37C3B04(*(v0 + OBJC_IVAR____TtC8VideosUI31LibFamilySharingShowMediaEntity____lazy_storage___seasons));
  sub_1E3781D80(*(v0 + OBJC_IVAR____TtC8VideosUI31LibFamilySharingShowMediaEntity____lazy_storage___representationEpisode));
  v1 = *(v0 + OBJC_IVAR____TtC8VideosUI31LibFamilySharingShowMediaEntity____lazy_storage____imageData);
  v2 = *(v0 + OBJC_IVAR____TtC8VideosUI31LibFamilySharingShowMediaEntity____lazy_storage____imageData + 8);
  v3 = *(v0 + OBJC_IVAR____TtC8VideosUI31LibFamilySharingShowMediaEntity____lazy_storage____imageData + 16);
  v4 = *(v0 + OBJC_IVAR____TtC8VideosUI31LibFamilySharingShowMediaEntity____lazy_storage____imageData + 24);
  v5 = *(v0 + OBJC_IVAR____TtC8VideosUI31LibFamilySharingShowMediaEntity____lazy_storage____imageData + 32);

  sub_1E37C52A4(v1, v2, v3, v4, v5);
}

uint64_t sub_1E37C49F4()
{
  v0 = sub_1E38AFC04();
  sub_1E37C3B04(*(v0 + OBJC_IVAR____TtC8VideosUI31LibFamilySharingShowMediaEntity____lazy_storage___seasons));
  sub_1E3781D80(*(v0 + OBJC_IVAR____TtC8VideosUI31LibFamilySharingShowMediaEntity____lazy_storage___representationEpisode));
  sub_1E37C52A4(*(v0 + OBJC_IVAR____TtC8VideosUI31LibFamilySharingShowMediaEntity____lazy_storage____imageData), *(v0 + OBJC_IVAR____TtC8VideosUI31LibFamilySharingShowMediaEntity____lazy_storage____imageData + 8), *(v0 + OBJC_IVAR____TtC8VideosUI31LibFamilySharingShowMediaEntity____lazy_storage____imageData + 16), *(v0 + OBJC_IVAR____TtC8VideosUI31LibFamilySharingShowMediaEntity____lazy_storage____imageData + 24), *(v0 + OBJC_IVAR____TtC8VideosUI31LibFamilySharingShowMediaEntity____lazy_storage____imageData + 32));
  return v0;
}

uint64_t sub_1E37C4A54()
{
  v0 = sub_1E37C49F4();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

void (*sub_1E37C4B78(void *a1))(void *)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  OUTLINED_FUNCTION_5_2();
  v2[4] = (*(v3 + 552))();
  return sub_1E37C4BF8;
}

unint64_t sub_1E37C4BFC()
{
  OUTLINED_FUNCTION_5_2();
  v1 = (*(v0 + 560))();
  return v1 | ((HIDWORD(v1) & 1) << 32);
}

void (*sub_1E37C4CAC(void *a1))(void *)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  OUTLINED_FUNCTION_5_2();
  v2[4] = (*(v3 + 576))();
  return sub_1E37C55D4;
}

unsigned __int8 *sub_1E37C4D2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v70 = a1;
  v71 = a2;

  result = sub_1E4206174();
  v6 = result;
  v7 = v5;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_1E378072C(result, v5);
    v41 = v40;

    v7 = v41;
    if ((v41 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v7 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v8 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_1E4207524();
    }

    v9 = *result;
    if (v9 == 43)
    {
      if (v8 >= 1)
      {
        v23 = v8 - 1;
        if (v8 != 1)
        {
          v24 = a3 + 48;
          v25 = a3 + 55;
          v26 = a3 + 87;
          if (a3 > 10)
          {
            v24 = 58;
          }

          else
          {
            v26 = 97;
            v25 = 65;
          }

          if (result)
          {
            v14 = 0;
            v27 = result + 1;
            v16 = 1;
            do
            {
              v28 = *v27;
              if (v28 < 0x30 || v28 >= v24)
              {
                if (v28 < 0x41 || v28 >= v25)
                {
                  v19 = 0;
                  if (v28 < 0x61 || v28 >= v26)
                  {
                    goto LABEL_127;
                  }

                  v29 = -87;
                }

                else
                {
                  v29 = -55;
                }
              }

              else
              {
                v29 = -48;
              }

              v30 = v14 * a3;
              if (v30 != v30)
              {
                goto LABEL_126;
              }

              v31 = v28 + v29;
              v22 = __OFADD__(v30, v31);
              v14 = v30 + v31;
              if (v22)
              {
                goto LABEL_126;
              }

              ++v27;
              --v23;
            }

            while (v23);
LABEL_46:
            v16 = 0;
            v19 = v14;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v19 = 0;
        v16 = 1;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v9 != 45)
    {
      if (v8)
      {
        v32 = a3 + 48;
        v33 = a3 + 55;
        v34 = a3 + 87;
        if (a3 > 10)
        {
          v32 = 58;
        }

        else
        {
          v34 = 97;
          v33 = 65;
        }

        if (result)
        {
          v35 = 0;
          v16 = 1;
          do
          {
            v36 = *result;
            if (v36 < 0x30 || v36 >= v32)
            {
              if (v36 < 0x41 || v36 >= v33)
              {
                v19 = 0;
                if (v36 < 0x61 || v36 >= v34)
                {
                  goto LABEL_127;
                }

                v37 = -87;
              }

              else
              {
                v37 = -55;
              }
            }

            else
            {
              v37 = -48;
            }

            v38 = v35 * a3;
            if (v38 != v38)
            {
              goto LABEL_126;
            }

            v39 = v36 + v37;
            v22 = __OFADD__(v38, v39);
            v35 = v38 + v39;
            if (v22)
            {
              goto LABEL_126;
            }

            ++result;
            --v8;
          }

          while (v8);
          v16 = 0;
          v19 = v35;
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v8 >= 1)
    {
      v10 = v8 - 1;
      if (v8 != 1)
      {
        v11 = a3 + 48;
        v12 = a3 + 55;
        v13 = a3 + 87;
        if (a3 > 10)
        {
          v11 = 58;
        }

        else
        {
          v13 = 97;
          v12 = 65;
        }

        if (result)
        {
          v14 = 0;
          v15 = result + 1;
          v16 = 1;
          while (1)
          {
            v17 = *v15;
            if (v17 < 0x30 || v17 >= v11)
            {
              if (v17 < 0x41 || v17 >= v12)
              {
                v19 = 0;
                if (v17 < 0x61 || v17 >= v13)
                {
                  goto LABEL_127;
                }

                v18 = -87;
              }

              else
              {
                v18 = -55;
              }
            }

            else
            {
              v18 = -48;
            }

            v20 = v14 * a3;
            if (v20 != v20)
            {
              goto LABEL_126;
            }

            v21 = v17 + v18;
            v22 = __OFSUB__(v20, v21);
            v14 = v20 - v21;
            if (v22)
            {
              goto LABEL_126;
            }

            ++v15;
            if (!--v10)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v19 = 0;
        v16 = 0;
LABEL_127:

        LOBYTE(v70) = v16;
        return (v19 | (v16 << 32));
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v42 = HIBYTE(v7) & 0xF;
  v70 = v6;
  v71 = v7 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v42)
      {
        v44 = 0;
        v62 = a3 + 48;
        v63 = a3 + 55;
        v64 = a3 + 87;
        if (a3 > 10)
        {
          v62 = 58;
        }

        else
        {
          v64 = 97;
          v63 = 65;
        }

        v65 = &v70;
        v16 = 1;
        while (1)
        {
          v66 = *v65;
          if (v66 < 0x30 || v66 >= v62)
          {
            if (v66 < 0x41 || v66 >= v63)
            {
              v19 = 0;
              if (v66 < 0x61 || v66 >= v64)
              {
                goto LABEL_127;
              }

              v67 = -87;
            }

            else
            {
              v67 = -55;
            }
          }

          else
          {
            v67 = -48;
          }

          v68 = v44 * a3;
          if (v68 != v68)
          {
            goto LABEL_126;
          }

          v69 = v66 + v67;
          v22 = __OFADD__(v68, v69);
          v44 = v68 + v69;
          if (v22)
          {
            goto LABEL_126;
          }

          v65 = (v65 + 1);
          if (!--v42)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v42)
    {
      v43 = v42 - 1;
      if (v43)
      {
        v44 = 0;
        v45 = a3 + 48;
        v46 = a3 + 55;
        v47 = a3 + 87;
        if (a3 > 10)
        {
          v45 = 58;
        }

        else
        {
          v47 = 97;
          v46 = 65;
        }

        v48 = &v70 + 1;
        v16 = 1;
        while (1)
        {
          v49 = *v48;
          if (v49 < 0x30 || v49 >= v45)
          {
            if (v49 < 0x41 || v49 >= v46)
            {
              v19 = 0;
              if (v49 < 0x61 || v49 >= v47)
              {
                goto LABEL_127;
              }

              v50 = -87;
            }

            else
            {
              v50 = -55;
            }
          }

          else
          {
            v50 = -48;
          }

          v51 = v44 * a3;
          if (v51 != v51)
          {
            goto LABEL_126;
          }

          v52 = v49 + v50;
          v22 = __OFSUB__(v51, v52);
          v44 = v51 - v52;
          if (v22)
          {
            goto LABEL_126;
          }

          ++v48;
          if (!--v43)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v42)
  {
    v53 = v42 - 1;
    if (v53)
    {
      v44 = 0;
      v54 = a3 + 48;
      v55 = a3 + 55;
      v56 = a3 + 87;
      if (a3 > 10)
      {
        v54 = 58;
      }

      else
      {
        v56 = 97;
        v55 = 65;
      }

      v57 = &v70 + 1;
      v16 = 1;
      do
      {
        v58 = *v57;
        if (v58 < 0x30 || v58 >= v54)
        {
          if (v58 < 0x41 || v58 >= v55)
          {
            v19 = 0;
            if (v58 < 0x61 || v58 >= v56)
            {
              goto LABEL_127;
            }

            v59 = -87;
          }

          else
          {
            v59 = -55;
          }
        }

        else
        {
          v59 = -48;
        }

        v60 = v44 * a3;
        if (v60 != v60)
        {
          goto LABEL_126;
        }

        v61 = v58 + v59;
        v22 = __OFADD__(v60, v61);
        v44 = v60 + v61;
        if (v22)
        {
          goto LABEL_126;
        }

        ++v57;
        --v53;
      }

      while (v53);
LABEL_125:
      v16 = 0;
      v19 = v44;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

void sub_1E37C52A4(void *result, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5 != 254)
  {
    sub_1E37C52B8(result, a2, a3, a4, a5);
  }
}

void sub_1E37C52B8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5 != -1)
  {
    sub_1E37C52CC(a1, a2, a3, a4, a5);
  }
}

void sub_1E37C52CC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5 == 2)
  {

LABEL_9:

    return;
  }

  if (a5 != 1)
  {
    if (a5)
    {
      return;
    }

    goto LABEL_9;
  }
}

id sub_1E37C5358(id a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5 != -1)
  {
    return sub_1E37C536C(a1, a2, a3, a4, a5);
  }

  return a1;
}

id sub_1E37C536C(id result, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5 == 2)
  {
  }

  else
  {
    if (a5 != 1)
    {
      if (a5)
      {
        return result;
      }

      v5 = result;

      result = v5;
    }

    return result;
  }
}

uint64_t sub_1E37C5408(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

unint64_t sub_1E37C5418(uint64_t a1)
{
  result = sub_1E37C5440();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1E37C5440()
{
  result = qword_1ECF2A458;
  if (!qword_1ECF2A458)
  {
    type metadata accessor for LibFamilySharingShowMediaEntity(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2A458);
  }

  return result;
}

uint64_t type metadata accessor for LibFamilySharingShowMediaEntity(uint64_t a1)
{
  result = qword_1ECF46770;
  if (!qword_1ECF46770)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E37C5550(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A450, &qword_1E429D7C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id sub_1E37C55C0(id a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5 != 254)
  {
    return sub_1E37C5358(a1, a2, a3, a4, a5);
  }

  return a1;
}

uint64_t sub_1E37C55D8(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI22CarouselViewController_viewImpressioner;
  OUTLINED_FUNCTION_11_3(v1 + OBJC_IVAR____TtC8VideosUI22CarouselViewController_viewImpressioner, v5);
  sub_1E37C5630(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_1E37C5630(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C970, &qword_1E429D870);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

char *sub_1E37C56A0()
{
  v1 = OBJC_IVAR____TtC8VideosUI22CarouselViewController____lazy_storage___carouselViewContainer;
  v2 = *(v0 + OBJC_IVAR____TtC8VideosUI22CarouselViewController____lazy_storage___carouselViewContainer);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC8VideosUI22CarouselViewController____lazy_storage___carouselViewContainer);
  }

  else
  {
    v4 = v0;
    if (*(v0 + OBJC_IVAR____TtC8VideosUI22CarouselViewController_collectionViewModel))
    {
      OUTLINED_FUNCTION_8();
      v6 = *(v5 + 392);

      v8 = v6(v7);

      if (v8)
      {
        type metadata accessor for CarouselViewLayout();
        if (swift_dynamicCastClass())
        {
          OUTLINED_FUNCTION_26_0();
          (*(v9 + 1704))();
        }
      }
    }

    type metadata accessor for CarouselViewContainer();
    v10 = sub_1E3EE0074();
    v11 = *(v0 + v1);
    *(v4 + v1) = v10;
    v3 = v10;

    v2 = 0;
  }

  v12 = v2;
  return v3;
}

uint64_t sub_1E37C57D0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *a1;
  OUTLINED_FUNCTION_15_0(v4 + *a1, a2);
  return sub_1E37C5830(v4 + v8, a4, a2, a3);
}

uint64_t sub_1E37C5830(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1E37C5898(uint64_t a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC8VideosUI22CarouselViewController_headerViewModel;
  OUTLINED_FUNCTION_5_0(v1 + OBJC_IVAR____TtC8VideosUI22CarouselViewController_headerViewModel, &v31);
  OUTLINED_FUNCTION_38_2();
  sub_1E37C5830(v5, v6, v7, v8);
  OUTLINED_FUNCTION_11_3(v1 + v4, &v37);
  sub_1E37C5BDC(a1, v1 + v4);
  swift_endAccess();
  v9 = OBJC_IVAR____TtC8VideosUI22CarouselViewController_headerViewModel;
  OUTLINED_FUNCTION_5_0(v1 + OBJC_IVAR____TtC8VideosUI22CarouselViewController_headerViewModel, v43);
  OUTLINED_FUNCTION_38_2();
  sub_1E37C5830(v10, v11, v12, v13);
  OUTLINED_FUNCTION_38_2();
  sub_1E37C5830(v14, v15, v16, v17);
  if (*(&v38 + 1))
  {
    sub_1E37C5830(&v37, v35, &qword_1ECF40720, &qword_1E429D878);
    if (*(&v41 + 1))
    {
      v33[0] = v40;
      v33[1] = v41;
      v34 = v42;
      v18 = MEMORY[0x1E6911D60](v35, v33);
      sub_1E375D84C(v33);
      sub_1E375D84C(v35);
      sub_1E325F748(&v37, &qword_1ECF40720, &qword_1E429D878);
      if (v18)
      {
        goto LABEL_16;
      }

      goto LABEL_9;
    }

    sub_1E375D84C(v35);
  }

  else if (!*(&v41 + 1))
  {
    sub_1E325F748(&v37, &qword_1ECF40720, &qword_1E429D878);
    goto LABEL_16;
  }

  sub_1E325F748(&v37, &qword_1ECF2A678, &qword_1E429D960);
LABEL_9:
  v19 = sub_1E37C56A0();
  v20 = OBJC_IVAR____TtC8VideosUI21CarouselViewContainer_headerView;
  OUTLINED_FUNCTION_5_0(&v19[OBJC_IVAR____TtC8VideosUI21CarouselViewContainer_headerView], v33);
  v21 = *&v19[v20];
  v22 = v21;

  sub_1E37C5830(v2 + v9, &v37, &qword_1ECF40720, &qword_1E429D878);
  if (*(&v38 + 1))
  {
    v35[0] = v37;
    v35[1] = v38;
    v36 = v39;
    v23 = *(v2 + OBJC_IVAR____TtC8VideosUI22CarouselViewController____lazy_storage___carouselViewContainer);
    sub_1E374E74C(v35, &v37);
    type metadata accessor for ViewModel();
    if (swift_dynamicCast())
    {
      v24 = v44;
      v25 = *_s8VideosUIAAC19initializeUIFactoryyyFZ_0();
      v39 = 0;
      v37 = 0u;
      v38 = 0u;
      v26 = v25;
      v27 = sub_1E393D9C4(v24, v21, &v37, 0);

      sub_1E325F748(&v37, &qword_1ECF296C0, &unk_1E429BBE0);
    }

    else
    {
      v27 = 0;
    }

    sub_1E3EE0008(v27);

    sub_1E375D84C(v35);
  }

  else
  {
    sub_1E325F748(&v37, &qword_1ECF40720, &qword_1E429D878);
    v28 = *(v2 + OBJC_IVAR____TtC8VideosUI22CarouselViewController____lazy_storage___carouselViewContainer);
    v29 = OUTLINED_FUNCTION_106();
    sub_1E3EE0008(v29);
  }

  [*(v2 + OBJC_IVAR____TtC8VideosUI22CarouselViewController____lazy_storage___carouselViewContainer) setNeedsLayout];

LABEL_16:
  sub_1E325F748(a1, &qword_1ECF40720, &qword_1E429D878);
  return sub_1E325F748(v32, &qword_1ECF40720, &qword_1E429D878);
}

uint64_t sub_1E37C5BDC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF40720, &qword_1E429D878);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E37C5C4C()
{
  v0 = sub_1E37C56A0();
  v1 = OBJC_IVAR____TtC8VideosUI21CarouselViewContainer_layout;
  OUTLINED_FUNCTION_15_0(&v0[OBJC_IVAR____TtC8VideosUI21CarouselViewContainer_layout], v2);
  v3 = *&v0[v1];

  return v3;
}

id sub_1E37C5CA0(uint64_t a1)
{

  v3 = sub_1E37C56A0();
  v4 = OBJC_IVAR____TtC8VideosUI21CarouselViewContainer_layout;
  OUTLINED_FUNCTION_5_0(&v3[OBJC_IVAR____TtC8VideosUI21CarouselViewContainer_layout], v13);
  v5 = *&v3[v4];

  if (v5 == a1)
  {
  }

  v6 = *&v1[OBJC_IVAR____TtC8VideosUI22CarouselViewController____lazy_storage___carouselViewContainer];
  v7 = OBJC_IVAR____TtC8VideosUI21CarouselViewContainer_layout;
  OUTLINED_FUNCTION_3_0(v6 + OBJC_IVAR____TtC8VideosUI21CarouselViewContainer_layout, &v12);
  *(v6 + v7) = a1;

  result = [v1 view];
  if (result)
  {
    v9 = result;
    [result bounds];
    OUTLINED_FUNCTION_22_13();

    v10 = OUTLINED_FUNCTION_17_4();
    sub_1E37C5D9C(1, v10, v11);
  }

  __break(1u);
  return result;
}

void sub_1E37C5D9C(char a1, double a2, double a3)
{
  v4 = v3;
  if (a2 == 0.0 && a3 == 0.0)
  {
    return;
  }

  v6 = OBJC_IVAR____TtC8VideosUI22CarouselViewController_lastViewWidth;
  v7 = *&v3[OBJC_IVAR____TtC8VideosUI22CarouselViewController_lastViewWidth];
  if (v7 != a2 || (a1 & 1) != 0)
  {
    type metadata accessor for LayoutGrid();
    sub_1E3A2579C(a2);
    sub_1E37C5C4C();
    v8 = [v3 traitCollection];
    sub_1E3C2AE10();
    v10 = v9;
    OUTLINED_FUNCTION_36();
    (*(v11 + 1640))();

    v7 = *&v3[v6];
  }

  if (v7 == a2)
  {
    return;
  }

  sub_1E37C5C4C();
  OUTLINED_FUNCTION_26_0();
  (*(v12 + 304))();

  v13 = sub_1E37C56A0();
  v14 = OUTLINED_FUNCTION_17_4();
  v16 = sub_1E3EE0A1C(v14, v15);

  if (!*&v4[OBJC_IVAR____TtC8VideosUI22CarouselViewController_collectionViewModel])
  {
    v50 = 0u;
    v51 = 0u;
    goto LABEL_12;
  }

  v49[0] = 0;
  OUTLINED_FUNCTION_8();
  v18 = *(v17 + 776);

  v18(&v50, v49, &unk_1F5D5D138, &off_1F5D5C778);

  if (!*(&v51 + 1))
  {
LABEL_12:
    sub_1E325F748(&v50, &unk_1ECF296E0, &unk_1E4298030);
    goto LABEL_13;
  }

  if (!swift_dynamicCast())
  {
LABEL_13:
    v19 = 0;
    goto LABEL_14;
  }

  v19 = v49[0];
LABEL_14:
  sub_1E37C5C4C();
  v20 = OBJC_IVAR____TtC8VideosUI22CarouselViewController_dataModelItems;
  OUTLINED_FUNCTION_5_0(&v4[OBJC_IVAR____TtC8VideosUI22CarouselViewController_dataModelItems], v49);
  v21 = sub_1E3A2BF78(v19, *(*&v4[v20] + 16));

  sub_1E37C5C4C();
  sub_1E3A2C2F8();
  v23 = v22;

  v24 = OBJC_IVAR____TtC8VideosUI22CarouselViewController____lazy_storage___carouselViewContainer;
  [OUTLINED_FUNCTION_30_13(*&v4[OBJC_IVAR____TtC8VideosUI22CarouselViewController____lazy_storage___carouselViewContainer]) setItemSize_];
  [OUTLINED_FUNCTION_30_13(*&v4[v24]) setInteritemSpacing_];
  *&v4[v6] = a2;
  type metadata accessor for LayoutGrid();
  sub_1E3A2579C(a2);
  v25 = sub_1E37C646C();
  if ((v25 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_1E4207344();
    OUTLINED_FUNCTION_106();
    type metadata accessor for ViewModel();
    OUTLINED_FUNCTION_1_17();
    sub_1E32749E0(v26, v27);
    sub_1E4206664();
    v28 = *(&v50 + 1);
    v29 = v50;
    v31 = *(&v51 + 1);
    v30 = v51;
    v32 = v52;
  }

  else
  {
    v33 = -1 << *(v25 + 32);
    v28 = v25 + 56;
    v30 = ~v33;
    v34 = -v33;
    if (v34 < 64)
    {
      v35 = ~(-1 << v34);
    }

    else
    {
      v35 = -1;
    }

    v32 = v35 & *(v25 + 56);
    v31 = 0;
  }

  if (v29 < 0)
  {
    goto LABEL_27;
  }

  while (1)
  {
    v36 = v31;
    v37 = v32;
    v38 = v31;
    if (!v32)
    {
      break;
    }

LABEL_25:
    v39 = (v37 - 1) & v37;
    v40 = *(*(v29 + 48) + ((v38 << 9) | (8 * __clz(__rbit64(v37)))));

    if (!v40)
    {
LABEL_35:
      sub_1E34AF4DC(v29);

      return;
    }

    while (1)
    {
      if ((*(*v40 + 392))(v41))
      {
        v42 = [v4 view];
        if (!v42)
        {
          goto LABEL_38;
        }

        v43 = v42;
        v44 = [v42 traitCollection];

        sub_1E3C2AE10();
        v46 = v45;
        OUTLINED_FUNCTION_36();
        (*(v47 + 1640))();
      }

      else
      {
      }

      v31 = v38;
      v32 = v39;
      if ((v29 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_27:
      if (sub_1E42073C4())
      {
        type metadata accessor for ViewModel();
        v41 = swift_dynamicCast();
        v40 = v48;
        v38 = v31;
        v39 = v32;
        if (v48)
        {
          continue;
        }
      }

      goto LABEL_35;
    }
  }

  while (1)
  {
    v38 = v36 + 1;
    if (__OFADD__(v36, 1))
    {
      break;
    }

    if (v38 >= ((v30 + 64) >> 6))
    {
      goto LABEL_35;
    }

    v37 = *(v28 + 8 * v38);
    ++v36;
    if (v37)
    {
      goto LABEL_25;
    }
  }

  __break(1u);
LABEL_38:
  __break(1u);
}

uint64_t sub_1E37C6334(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC8VideosUI22CarouselViewController_collectionViewModel);
  *(v1 + OBJC_IVAR____TtC8VideosUI22CarouselViewController_collectionViewModel) = a1;
  v3 = *(v1 + OBJC_IVAR____TtC8VideosUI22CarouselViewController_collectionViewModel);

  if (v3)
  {
    v4 = v3 == v2;
  }

  else
  {
    v4 = 1;
  }

  if (!v4)
  {
    OUTLINED_FUNCTION_8();
    v6 = *(v5 + 392);

    v8 = v6(v7);

    if (v8)
    {
      type metadata accessor for LayoutGrid();
      sub_1E3A256EC();
      v9 = [objc_opt_self() current];
      OUTLINED_FUNCTION_8_21(v9);
      v11 = v10;
      (*(*v8 + 1640))();
    }
  }
}

uint64_t sub_1E37C646C()
{
  v1 = OBJC_IVAR____TtC8VideosUI22CarouselViewController____lazy_storage___visibleCellViewModels;
  if (*(v0 + OBJC_IVAR____TtC8VideosUI22CarouselViewController____lazy_storage___visibleCellViewModels))
  {
    v2 = *(v0 + OBJC_IVAR____TtC8VideosUI22CarouselViewController____lazy_storage___visibleCellViewModels);
  }

  else
  {
    if (sub_1E32AE9B0(MEMORY[0x1E69E7CC0]))
    {
      v2 = sub_1E37CB554(MEMORY[0x1E69E7CC0]);
    }

    else
    {
      v2 = MEMORY[0x1E69E7CD0];
    }

    *(v0 + v1) = v2;
  }

  return v2;
}

uint64_t sub_1E37C64F8()
{
  v1 = OBJC_IVAR____TtC8VideosUI22CarouselViewController____lazy_storage___cellVisibilityMonitor;
  if (*(v0 + OBJC_IVAR____TtC8VideosUI22CarouselViewController____lazy_storage___cellVisibilityMonitor))
  {
    v2 = *(v0 + OBJC_IVAR____TtC8VideosUI22CarouselViewController____lazy_storage___cellVisibilityMonitor);
  }

  else
  {
    v3 = v0;
    type metadata accessor for ScrollViewVisibilityMonitor();
    v4 = sub_1E37C56A0();
    v5 = *&v4[OBJC_IVAR____TtC8VideosUI21CarouselViewContainer_carouselView];

    v6 = [v5 _collectionView];
    OUTLINED_FUNCTION_51_1();
    j__OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_21_7();
    v2 = sub_1E414F9CC();
    *(v3 + v1) = v2;
  }

  return v2;
}

uint64_t sub_1E37C65D4()
{
  v1 = sub_1E37C56A0();
  [v0 setView_];

  v2 = OBJC_IVAR____TtC8VideosUI22CarouselViewController____lazy_storage___carouselViewContainer;
  [OUTLINED_FUNCTION_30_13(*&v0[OBJC_IVAR____TtC8VideosUI22CarouselViewController____lazy_storage___carouselViewContainer]) setDelegate_];
  [OUTLINED_FUNCTION_30_13(*&v0[v2]) setDataSource_];
  v3 = [objc_opt_self() defaultCenter];
  [v3 addObserver:v0 selector:sel_handleFullscreenPlaybackUIDidChange_ name:VUIPlaybackManagerFullscreenPlaybackUIDidChangeNotification[0] object:0];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D2C0, &unk_1E429D880);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1E4297BE0;
  v5 = sub_1E41FFEA4();
  v6 = MEMORY[0x1E69DC0F8];
  *(v4 + 32) = v5;
  *(v4 + 40) = v6;
  OUTLINED_FUNCTION_4_0();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A4F0, &unk_1E429D890);
  sub_1E4206944();
  swift_unknownObjectRelease();
}

void sub_1E37C6764(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_15_0(v2 + 16, a2);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = [Strong view];
    if (v5)
    {
      v6 = v5;
      [v5 bounds];
      OUTLINED_FUNCTION_22_13();

      v7 = OUTLINED_FUNCTION_17_4();
      sub_1E37C5D9C(1, v7, v8);
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_1E37C6834(char a1)
{
  v5.receiver = v1;
  v5.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v5, sel_viewWillAppear_, a1 & 1);
  v3 = sub_1E37C56A0();
  v4 = *&v3[OBJC_IVAR____TtC8VideosUI21CarouselViewContainer_carouselView];

  [v4 setNeedsLayout];
}

id sub_1E37C68FC(uint64_t a1)
{
  v10.receiver = v1;
  v10.super_class = swift_getObjectType();
  result = objc_msgSendSuper2(&v10, sel_vui_willMoveToParentViewController_, a1);
  v4 = *&v1[OBJC_IVAR____TtC8VideosUI22CarouselViewController_selfVisibilityMonitor];
  if (a1)
  {
    if (!v4)
    {
      return result;
    }

    OUTLINED_FUNCTION_8();
    v6 = *(v5 + 304);

    v6(v7);
  }

  else
  {
    if (!v4)
    {
      return result;
    }

    OUTLINED_FUNCTION_8();
    v9 = *(v8 + 312);

    v9(0);
  }
}

id sub_1E37C6A40(char a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_1E4203FC4();
  OUTLINED_FUNCTION_0_10();
  v34 = v6;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  v10 = v9 - v8;
  sub_1E4203FF4();
  OUTLINED_FUNCTION_0_10();
  v32 = v12;
  v33 = v11;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5();
  v15 = v14 - v13;
  v36.receiver = v2;
  v36.super_class = ObjectType;
  objc_msgSendSuper2(&v36, sel_viewDidAppear_, a1 & 1);
  v16 = OBJC_IVAR____TtC8VideosUI22CarouselViewController_selfVisibilityMonitor;
  if (*&v2[OBJC_IVAR____TtC8VideosUI22CarouselViewController_selfVisibilityMonitor])
  {
LABEL_8:
    sub_1E37C6EDC();
    sub_1E3280A90(0, &qword_1EE23B1D0, 0x1E69E9610);
    v27 = sub_1E4206A04();
    OUTLINED_FUNCTION_4_0();
    v28 = swift_allocObject();
    *(v28 + 16) = v2;
    aBlock[4] = sub_1E37C715C;
    aBlock[5] = v28;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    OUTLINED_FUNCTION_14_1();
    aBlock[2] = v29;
    aBlock[3] = &block_descriptor_7;
    v30 = _Block_copy(aBlock);
    v31 = v2;

    sub_1E4203FE4();
    aBlock[0] = MEMORY[0x1E69E7CC0];
    sub_1E32749E0(&qword_1EE2882E0, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A730, &qword_1E429B000);
    sub_1E328FCF4(&qword_1EE23B5D0, &qword_1ECF2A730, &qword_1E429B000);
    sub_1E42072E4();
    MEMORY[0x1E6911380](0, v15, v10, v30);
    _Block_release(v30);

    (*(v34 + 8))(v10, v5);
    return (*(v32 + 8))(v15, v33);
  }

  result = [v2 view];
  if (result)
  {
    v18 = result;
    while (1)
    {
      v19 = v18;
      v18 = [v18 superview];

      if (!v18)
      {
        goto LABEL_8;
      }

      objc_opt_self();
      OUTLINED_FUNCTION_20_2();
      if (swift_dynamicCastObjCClass())
      {
        type metadata accessor for ScrollViewVisibilityMonitor();
        v20 = v18;
        OUTLINED_FUNCTION_51_1();
        j__OUTLINED_FUNCTION_18();
        OUTLINED_FUNCTION_21_7();
        v21 = sub_1E414F9CC();
        result = [v2 view];
        if (!result)
        {
          goto LABEL_10;
        }

        v22 = result;
        OUTLINED_FUNCTION_4_0();
        v23 = swift_allocObject();
        swift_unknownObjectWeakInit();

        j__OUTLINED_FUNCTION_18();
        OUTLINED_FUNCTION_36();
        (*(v24 + 288))(v22, v25 & 1, sub_1E37CCE50, v23);

        OUTLINED_FUNCTION_36();
        (*(v26 + 304))();

        *&v2[v16] = v21;

        goto LABEL_8;
      }
    }
  }

  __break(1u);
LABEL_10:
  __break(1u);
  return result;
}

void sub_1E37C6EDC()
{
  sub_1E37CA928();
  if (v3)
  {
    v4 = v3;
    OUTLINED_FUNCTION_26_0();
    v6 = (*(v5 + 576))();
    if (v6)
    {
      v7 = v6;
      v8 = v0 + OBJC_IVAR____TtC8VideosUI22CarouselViewController_viewImpressioner;
      OUTLINED_FUNCTION_5_0(v0 + OBJC_IVAR____TtC8VideosUI22CarouselViewController_viewImpressioner, v24);
      if (*(v8 + 24))
      {
        sub_1E327F454(v8, v21);
        v9 = v22;
        v10 = v23;
        __swift_project_boxed_opaque_existential_1(v21, v22);
        v11 = [v0 view];
        if (!v11)
        {
          __break(1u);
          goto LABEL_16;
        }

        v12 = v11;
        [v11 frame];
        OUTLINED_FUNCTION_22_13();

        (*(*(v10 + 8) + 24))(v9, 0.0, 0.0, v1, v2);
        __swift_destroy_boxed_opaque_existential_1(v21);
        if (*(v8 + 24))
        {
          sub_1E327F454(v8, v21);
          v13 = v22;
          v14 = v23;
          __swift_project_boxed_opaque_existential_1(v21, v22);
          v15 = [v0 view];
          if (v15)
          {
            v16 = v15;
            (*(v14 + 16))(v15, v7, v13, v14);

            __swift_destroy_boxed_opaque_existential_1(v21);
            if (*(v8 + 24))
            {
              sub_1E327F454(v8, v21);
              v17 = v22;
              v18 = v23;
              __swift_project_boxed_opaque_existential_1(v21, v22);
              v19 = [v0 view];
              if (v19)
              {
                v20 = v19;
                (*(*(v18 + 8) + 56))(v19, v4, v17);

                __swift_destroy_boxed_opaque_existential_1(v21);
                return;
              }

              goto LABEL_17;
            }

            goto LABEL_10;
          }

LABEL_16:
          __break(1u);
LABEL_17:
          __break(1u);
          return;
        }
      }

LABEL_10:

      return;
    }
  }
}

void sub_1E37C715C()
{
  if (*(*(v0 + 16) + OBJC_IVAR____TtC8VideosUI22CarouselViewController_selfVisibilityMonitor))
  {
    OUTLINED_FUNCTION_8();
    v2 = *(v1 + 304);

    v2(v3);
  }
}

void sub_1E37C7230(char a1)
{
  v2 = v1;
  v6.receiver = v2;
  v6.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v6, sel_viewWillDisappear_, a1 & 1);
  if (*&v2[OBJC_IVAR____TtC8VideosUI22CarouselViewController_selfVisibilityMonitor])
  {
    OUTLINED_FUNCTION_8();
    v5 = *(v4 + 312);

    v5(0);
  }

  sub_1E37C72D8();
}

void sub_1E37C72D8()
{
  sub_1E37CA928();
  if (v1)
  {
    v2 = v1;
    OUTLINED_FUNCTION_26_0();
    v4 = (*(v3 + 576))();
    if (v4)
    {
      v5 = v4;
      v6 = v0 + OBJC_IVAR____TtC8VideosUI22CarouselViewController_viewImpressioner;
      OUTLINED_FUNCTION_5_0(v0 + OBJC_IVAR____TtC8VideosUI22CarouselViewController_viewImpressioner, v14);
      if (*(v6 + 24) && (sub_1E327F454(v6, v11), v7 = v12, v8 = v13, __swift_project_boxed_opaque_existential_1(v11, v12), (*(v8 + 24))(v5, v7, v8), __swift_destroy_boxed_opaque_existential_1(v11), *(v6 + 24)))
      {
        sub_1E327F454(v6, v11);
        v9 = v12;
        v10 = v13;
        __swift_project_boxed_opaque_existential_1(v11, v12);
        (*(*(v10 + 8) + 64))(v2, v9);

        __swift_destroy_boxed_opaque_existential_1(v11);
      }

      else
      {
      }
    }

    else
    {
    }
  }
}

void sub_1E37C74A0()
{
  v14.receiver = v0;
  v14.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v14, sel_viewDidLayoutSubviews);
  v3 = [v0 view];
  if (v3)
  {
    v4 = v3;
    [v3 bounds];
    OUTLINED_FUNCTION_22_13();

    if (v1 != 0.0 || v2 != 0.0)
    {
      if ((sub_1E39DFFC8() & 1) == 0)
      {
        v5 = sub_1E37C56A0();
        v6 = OUTLINED_FUNCTION_17_4();
        [v7 v8];

        OUTLINED_FUNCTION_20_5();
        [v9 v10];
      }

      v11 = sub_1E37C56A0();
      sub_1E3EE088C(v11);

      v12 = OUTLINED_FUNCTION_17_4();
      sub_1E37C5D9C(0, v12, v13);
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_1E37C75FC(uint64_t a1, double a2, double a3)
{
  v4 = v3;
  v24.receiver = v3;
  v24.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v24, sel_viewWillTransitionToSize_withTransitionCoordinator_, a1, a2, a3);
  if (*&v3[OBJC_IVAR____TtC8VideosUI22CarouselViewController_selfVisibilityMonitor])
  {
    OUTLINED_FUNCTION_8();
    v9 = *(v8 + 312);

    v9(0);
  }

  OUTLINED_FUNCTION_4_0();
  v10 = swift_allocObject();
  *(v10 + 16) = v3;
  v22 = sub_1E37C77E4;
  v23 = v10;
  v18 = MEMORY[0x1E69E9820];
  v19 = 1107296256;
  v20 = sub_1E37C7850;
  v21 = &block_descriptor_9_0;
  v11 = _Block_copy(&v18);
  v12 = v4;

  OUTLINED_FUNCTION_4_0();
  v13 = swift_allocObject();
  *(v13 + 16) = v12;
  v22 = sub_1E37C715C;
  v23 = v13;
  v18 = MEMORY[0x1E69E9820];
  v19 = 1107296256;
  v20 = sub_1E37C7850;
  v21 = &block_descriptor_15;
  v14 = _Block_copy(&v18);
  v15 = v12;

  OUTLINED_FUNCTION_38_2();
  [v16 v17];
  _Block_release(v14);
  _Block_release(v11);
}

void sub_1E37C77E4()
{
  v1 = [*(v0 + 16) view];
  if (v1)
  {
    v2 = v1;
    [v1 bounds];
    OUTLINED_FUNCTION_22_13();

    v3 = OUTLINED_FUNCTION_17_4();
    sub_1E37C5D9C(0, v3, v4);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1E37C7850(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

id sub_1E37C7930()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  if (*&v0[OBJC_IVAR____TtC8VideosUI22CarouselViewController_selfVisibilityMonitor])
  {

    OUTLINED_FUNCTION_51_1();
    OUTLINED_FUNCTION_8();
    (*(v3 + 312))(v4 & 1);
  }

  sub_1E37C64F8();
  OUTLINED_FUNCTION_51_1();
  OUTLINED_FUNCTION_8();
  (*(v5 + 312))(v6 & 1);

  v7 = [objc_opt_self() defaultCenter];
  [v7 removeObserver_];

  v9.receiver = v1;
  v9.super_class = ObjectType;
  return objc_msgSendSuper2(&v9, sel_dealloc);
}

uint64_t sub_1E37C7B40(unsigned __int16 *a1, uint64_t a2)
{
  v103[0] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2A4F8, &unk_1E429D8A0);
  sub_1E4148C68(sub_1E37C821C, v3, &v100);
  v4 = v100;

  v6 = sub_1E37C6334(v5);
  v7 = (*(*a1 + 1040))(v6);
  if (!v7)
  {
    return v4;
  }

  v8 = v7;
  result = sub_1E32AE9B0(v7);
  if (!result)
  {
    goto LABEL_16;
  }

  if ((v8 & 0xC000000000000001) != 0)
  {
    v10 = MEMORY[0x1E6911E60](0, v8);
    goto LABEL_6;
  }

  if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v10 = *(v8 + 32);

LABEL_6:

    v12 = (*(*v10 + 872))(v11);
    if (!v12)
    {
      goto LABEL_45;
    }

    v13 = v12;
    if ((*(*a1 + 392))())
    {
      type metadata accessor for CarouselViewLayout();
      v14 = swift_dynamicCastClass();
      if (v14)
      {
        v15 = v14;
        LOBYTE(v103[0]) = 0;
        v90 = *(*a1 + 776);
        (v90)(&v100, v103, &unk_1F5D5D138, &off_1F5D5C778);
        if (*(&v101 + 1))
        {
          if (swift_dynamicCast())
          {
            v16 = v103[0];
            goto LABEL_19;
          }
        }

        else
        {
          sub_1E325F748(&v100, &unk_1ECF296E0, &unk_1E4298030);
        }

        v16 = 0;
LABEL_19:
        v17 = sub_1E37C56A0();
        v18 = OBJC_IVAR____TtC8VideosUI21CarouselViewContainer_shouldShowPageControl;
        OUTLINED_FUNCTION_3_0(&v17[OBJC_IVAR____TtC8VideosUI21CarouselViewContainer_shouldShowPageControl], v103);
        v17[v18] = v16;

        v19 = sub_1E37C889C(v13);

        sub_1E37C89F4(v19, 0);

        sub_1E37C5CA0(v15);

        v21 = sub_1E37C6334(v20);
        v22 = (*(*a1 + 968))(v21);
        if (v22)
        {
          LOBYTE(v99[0]) = v22;
          type metadata accessor for ViewModel();
          OUTLINED_FUNCTION_1_17();
          v25 = sub_1E32749E0(v23, v24);
          OUTLINED_FUNCTION_37_11(v25, v26, v25, v27, v28, v29, v30, v31, v90, v93, v94, v95, v96, v97, v98, v99[0]);
          sub_1E4207414();
        }

        else
        {
          v102 = 0;
          v100 = 0u;
          v101 = 0u;
        }

        v32 = v90;
        sub_1E37C5898(&v100);
        v33 = OUTLINED_FUNCTION_17_4();
        sub_1E37C5D9C(0, v33, v34);
        v41 = OUTLINED_FUNCTION_37_11(v35, &unk_1F5D5D138, &off_1F5D5C778, v36, v37, v38, v39, v40, v90, v93, v94, v95, v96, v97, v98, 1);
        v42 = v32(v41);
        if (*(&v101 + 1))
        {
          OUTLINED_FUNCTION_18_13(v42, v43, v44, MEMORY[0x1E69E6370], v45, v46, v47, v48, v91, v93, v94, v95, v96, v97, v98, v99[0]);
          if (swift_dynamicCast())
          {
            if (LOBYTE(v99[0]))
            {
              v49 = 0;
            }

            else
            {
              v49 = 2;
            }

LABEL_29:
            v50 = [*(*(v4 + OBJC_IVAR____TtC8VideosUI22CarouselViewController____lazy_storage___carouselViewContainer) + OBJC_IVAR____TtC8VideosUI21CarouselViewContainer_carouselView) setScrollMode_];
            v56 = OUTLINED_FUNCTION_37_11(v50, &unk_1F5D5D258, &off_1F5D5C7B8, v51, v52, v53, v54, v55, v91, v93, v94, v95, v96, v97, v98, 4);
            v57 = v32(v56);
            if (*(&v101 + 1))
            {
              OUTLINED_FUNCTION_18_13(v57, v58, v59, MEMORY[0x1E69E63B0], v60, v61, v62, v63, v92, v93, v94, v95, v96, v97, v98, v99[0]);
              if (swift_dynamicCast())
              {
                v64 = v99[0];
                goto LABEL_34;
              }
            }

            else
            {
              sub_1E325F748(&v100, &unk_1ECF296E0, &unk_1E4298030);
            }

            v65 = sub_1E3DE9DF4();
            OUTLINED_FUNCTION_5_0(v65, v99);
            v64 = *v65;
LABEL_34:
            LOBYTE(v96) = 5;
            (v32)(&v100, &v96, &unk_1F5D5D258, &off_1F5D5C7B8);
            if (*(&v101 + 1))
            {
              if (swift_dynamicCast())
              {
                v70 = v96;
                goto LABEL_39;
              }
            }

            else
            {
              sub_1E325F748(&v100, &unk_1ECF296E0, &unk_1E4298030);
            }

            v71 = sub_1E3DE9E00();
            OUTLINED_FUNCTION_5_0(v71, &v100);
            v70 = *v71;
LABEL_39:
            v72 = a1[49];
            if (sub_1E373F6E0(v72, 127, v66, v67, v68, v69))
            {
              OUTLINED_FUNCTION_9_26();
              type metadata accessor for FlowcaseViewCell();
              ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
              v78 = v32;
              v79 = 174;
            }

            else
            {
              if ((sub_1E373F6E0(v72, 126, v73, v74, v75, v76) & 1) == 0)
              {
                if (sub_1E373F6E0(v72, 128, v80, v81, v82, v83))
                {
                  OUTLINED_FUNCTION_9_26();
                  type metadata accessor for FeaturedLockupCell();
                  v87 = swift_getObjCClassFromMetadata();
                  v88 = v32;
                  sub_1E384EE08(167);
                  v89 = sub_1E4205ED4();

                  [v88 registerClass:v87 forCellWithReuseIdentifier:v89];

                  return v4;
                }

                goto LABEL_44;
              }

              OUTLINED_FUNCTION_9_26();
              type metadata accessor for FlowcaseViewCell();
              ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
              v78 = v32;
              v79 = 175;
            }

            sub_1E384EE08(v79);
            v84 = sub_1E4205ED4();

            [v78 registerClass:ObjCClassFromMetadata forCellWithReuseIdentifier:v84];

            v85 = sub_1E3DE9DF4();
            OUTLINED_FUNCTION_3_0(v85, &v96);
            *v85 = v64;
            v86 = sub_1E3DE9E00();
            OUTLINED_FUNCTION_3_0(v86, &v93);
            *v86 = v70;
LABEL_44:

LABEL_45:

            return v4;
          }
        }

        else
        {
          sub_1E325F748(&v100, &unk_1ECF296E0, &unk_1E4298030);
        }

        v49 = 2;
        goto LABEL_29;
      }
    }

LABEL_16:

    return v4;
  }

  __break(1u);
  return result;
}

id sub_1E37C821C@<X0>(void *a1@<X8>)
{
  type metadata accessor for CarouselViewController();
  result = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *a1 = result;
  return result;
}

id sub_1E37C8258(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  *&v8 = OUTLINED_FUNCTION_28(OBJC_IVAR____TtC8VideosUI22CarouselViewController_viewImpressioner);
  v9 = &v3[OBJC_IVAR____TtC8VideosUI22CarouselViewController_headerViewModel];
  *(v9 + 4) = 0;
  *v9 = v8;
  *(v9 + 1) = v8;
  v10 = OBJC_IVAR____TtC8VideosUI22CarouselViewController_contextMenuInteractor;
  type metadata accessor for ContextMenuInteractor(0);
  *&v3[v10] = _s8VideosUI26MetricsRecorderFactoryObjCCACycfC_0();
  *&v3[OBJC_IVAR____TtC8VideosUI22CarouselViewController_collectionViewModel] = 0;
  *&v3[OBJC_IVAR____TtC8VideosUI22CarouselViewController____lazy_storage___visibleCellViewModels] = 0;
  *&v3[OBJC_IVAR____TtC8VideosUI22CarouselViewController____lazy_storage___carouselViewContainer] = 0;
  *&v3[OBJC_IVAR____TtC8VideosUI22CarouselViewController_dataModelItems] = MEMORY[0x1E69E7CC0];
  *&v3[OBJC_IVAR____TtC8VideosUI22CarouselViewController_lastViewWidth] = 0;
  *&v3[OBJC_IVAR____TtC8VideosUI22CarouselViewController_centeredItemIndex] = 0;
  *&v3[OBJC_IVAR____TtC8VideosUI22CarouselViewController_selfVisibilityMonitor] = 0;
  *&v3[OBJC_IVAR____TtC8VideosUI22CarouselViewController____lazy_storage___cellVisibilityMonitor] = 0;
  if (a2)
  {
    v11 = sub_1E4205ED4();
  }

  else
  {
    v11 = 0;
  }

  v14.receiver = v4;
  v14.super_class = ObjectType;
  v12 = objc_msgSendSuper2(&v14, sel_initWithNibName_bundle_, v11, a3);

  return v12;
}

id sub_1E37C83E8(void *a1)
{
  ObjectType = swift_getObjectType();
  *&v4 = OUTLINED_FUNCTION_28(OBJC_IVAR____TtC8VideosUI22CarouselViewController_viewImpressioner);
  v5 = &v1[OBJC_IVAR____TtC8VideosUI22CarouselViewController_headerViewModel];
  *(v5 + 4) = 0;
  *v5 = v4;
  *(v5 + 1) = v4;
  v6 = OBJC_IVAR____TtC8VideosUI22CarouselViewController_contextMenuInteractor;
  type metadata accessor for ContextMenuInteractor(0);
  *&v1[v6] = _s8VideosUI26MetricsRecorderFactoryObjCCACycfC_0();
  *&v1[OBJC_IVAR____TtC8VideosUI22CarouselViewController_collectionViewModel] = 0;
  *&v1[OBJC_IVAR____TtC8VideosUI22CarouselViewController____lazy_storage___visibleCellViewModels] = 0;
  *&v1[OBJC_IVAR____TtC8VideosUI22CarouselViewController____lazy_storage___carouselViewContainer] = 0;
  *&v1[OBJC_IVAR____TtC8VideosUI22CarouselViewController_dataModelItems] = MEMORY[0x1E69E7CC0];
  *&v1[OBJC_IVAR____TtC8VideosUI22CarouselViewController_lastViewWidth] = 0;
  *&v1[OBJC_IVAR____TtC8VideosUI22CarouselViewController_centeredItemIndex] = 0;
  *&v1[OBJC_IVAR____TtC8VideosUI22CarouselViewController_selfVisibilityMonitor] = 0;
  *&v1[OBJC_IVAR____TtC8VideosUI22CarouselViewController____lazy_storage___cellVisibilityMonitor] = 0;
  v9.receiver = v1;
  v9.super_class = ObjectType;
  v7 = objc_msgSendSuper2(&v9, sel_initWithCoder_, a1);

  if (v7)
  {
  }

  return v7;
}

uint64_t sub_1E37C85D4(uint64_t a1)
{
  type metadata accessor for CollectionViewModel();
  v1 = swift_dynamicCastClass();
  v2 = v1;
  if (!v1)
  {
    return v2;
  }

  v3 = *(*v1 + 392);

  if (!v3(v4))
  {
LABEL_19:

    return 0;
  }

  type metadata accessor for CarouselViewLayout();
  v5 = swift_dynamicCastClass();
  if (!v5)
  {
    goto LABEL_18;
  }

  v6 = v5;
  v7 = (*(*v2 + 1040))();
  if (!v7)
  {
    goto LABEL_18;
  }

  v8 = v7;
  result = sub_1E32AE9B0(v7);
  if (!result)
  {
LABEL_17:

    goto LABEL_18;
  }

  if ((v8 & 0xC000000000000001) != 0)
  {
    v10 = MEMORY[0x1E6911E60](0, v8);
    goto LABEL_9;
  }

  if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v10 = *(v8 + 32);

LABEL_9:

    v12 = (*(*v10 + 872))(v11);
    if (v12)
    {
      v13 = v12;
      if (sub_1E32AE9B0(v12))
      {

        sub_1E37C6334(v2);

        v14 = sub_1E37C5CA0(v6);
        if ((*(*v2 + 968))(v14))
        {
          type metadata accessor for ViewModel();
          OUTLINED_FUNCTION_1_17();
          sub_1E32749E0(v15, v16);
          sub_1E4207414();
        }

        else
        {
          OUTLINED_FUNCTION_19_9();
        }

        sub_1E37C5898(v18);
        v17 = sub_1E37C889C(v13);

        v2 = 1;
        sub_1E37C89F4(v17, 1);

        return v2;
      }

      goto LABEL_17;
    }

LABEL_18:

    goto LABEL_19;
  }

  __break(1u);
  return result;
}

char *sub_1E37C889C(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_1E4207384();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x1E69E7CC0];
  if (!v2)
  {
    return v3;
  }

  v12 = MEMORY[0x1E69E7CC0];
  result = sub_1E37CB78C(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v5 = 0;
    v3 = v12;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        MEMORY[0x1E6911E60](v5, a1);
      }

      else
      {
      }

      type metadata accessor for ViewModel();
      swift_dynamicCast();
      v7 = *(v12 + 16);
      v6 = *(v12 + 24);
      if (v7 >= v6 >> 1)
      {
        sub_1E37CB78C((v6 > 1), v7 + 1, 1);
      }

      ++v5;
      *(v12 + 16) = v7 + 1;
      v8 = v12 + 40 * v7;
      *(v8 + 64) = v11;
      *(v8 + 32) = v9;
      *(v8 + 48) = v10;
    }

    while (v2 != v5);
    return v3;
  }

  __break(1u);
  return result;
}

void sub_1E37C89F4(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = OBJC_IVAR____TtC8VideosUI22CarouselViewController_dataModelItems;
  v6 = &v3[OBJC_IVAR____TtC8VideosUI22CarouselViewController_dataModelItems];
  if ((a2 & 1) == 0)
  {
    OUTLINED_FUNCTION_3_0(v6, __src);

    v55 = sub_1E37CB37C(v54, a1);

    if (v55)
    {
      return;
    }

    *&v3[v5] = a1;

    goto LABEL_28;
  }

  OUTLINED_FUNCTION_3_0(v6, &v60);
  v7 = *&v3[v5];

  v8 = sub_1E41E1E3C(a1, v7, MEMORY[0x1E69E69B8], MEMORY[0x1E69E69C0]);

  *&v3[v5] = a1;

  v9 = *(v8 + 16);

  if (v9)
  {
LABEL_28:
    sub_1E37CAEC0();
    return;
  }

  v10 = *&v3[OBJC_IVAR____TtC8VideosUI22CarouselViewController_collectionViewModel];
  if (!v10)
  {
    return;
  }

  LOBYTE(v66[0]) = 30;
  v11 = *(*v10 + 776);

  v11(__src, v66, &unk_1F5D5DAC8, &off_1F5D5C998);
  if (!__src[3])
  {

    sub_1E325F748(__src, &unk_1ECF296E0, &unk_1E4298030);
    return;
  }

  if (!swift_dynamicCast() || (v66[0] & 1) == 0)
  {
LABEL_25:

    return;
  }

  v12 = sub_1E37C56A0();
  v13 = *&v12[OBJC_IVAR____TtC8VideosUI21CarouselViewContainer_carouselView];

  v14 = [v13 visibleCells];
  v15 = sub_1E42062B4();

  v16 = OBJC_IVAR____TtC8VideosUI22CarouselViewController_dataModelItems;
  OUTLINED_FUNCTION_5_0(&v3[OBJC_IVAR____TtC8VideosUI22CarouselViewController_dataModelItems], v69);
  v59 = v16;
  if (!*(*&v3[v16] + 16) || (v17 = *(v15 + 16)) == 0)
  {
LABEL_24:

    goto LABEL_25;
  }

  v18 = 0;
  v57 = v15;
  v58 = OBJC_IVAR____TtC8VideosUI22CarouselViewController____lazy_storage___carouselViewContainer;
  v19 = v15 + 32;
  v56 = *(v15 + 16);
  while (v18 < *(v15 + 16))
  {
    sub_1E328438C(v19, v66);
    v20 = sub_1E3280A90(0, &qword_1EE23B120, 0x1E69DC7F8);
    OUTLINED_FUNCTION_18_13(v20, v21, v22, v23, v24, v25, v26, v27, v56, v57, v58, v59, v60, v61, v62, v63);
    if (swift_dynamicCast())
    {
      v28 = v63;
      v29 = [*(*&v3[v58] + OBJC_IVAR____TtC8VideosUI21CarouselViewContainer_carouselView) indexForCell_];
      if ((v29 & 0x8000000000000000) != 0)
      {
        goto LABEL_32;
      }

      v65 = *&v3[v59];
      v63 = v29;
      v64 = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2A508, &qword_1E429D8B0);
      OUTLINED_FUNCTION_0_32();
      v30 = sub_1E328FCF4(&qword_1EE23B440, &unk_1ECF2A508, &qword_1E429D8B0);
      v37 = OUTLINED_FUNCTION_37_11(v30, v31, v30, v32, v33, v34, v35, v36, v56, v57, v58, v59, v60, v61, v62, v63);
      sub_1E38D2054(v37, v38);
      if (v67)
      {
        type metadata accessor for ViewModel();
        if (swift_dynamicCast())
        {
          v39 = v63;
          v40 = (*(*v63 + 392))();
          if (v40)
          {
            v41 = v40;
            if (![v3 view])
            {
              goto LABEL_33;
            }

            OUTLINED_FUNCTION_106();
            type metadata accessor for LayoutGrid();
            [v39 bounds];
            OUTLINED_FUNCTION_3();

            OUTLINED_FUNCTION_17_4();
            OUTLINED_FUNCTION_20_5();
            Width = CGRectGetWidth(v71);
            sub_1E3A2579C(Width);
            OUTLINED_FUNCTION_8_21([v3 traitCollection]);
            v44 = v43;
            (*(*v41 + 1640))();
          }

          sub_1E37C93F0(__src);
          type metadata accessor for UIFactory();
          v65 = v28;
          v67 = &unk_1F5D869A0;
          v68 = &off_1F5D868A0;
          OUTLINED_FUNCTION_29_7();
          v66[0] = swift_allocObject();
          memcpy((v66[0] + 16), __src, 0x52uLL);

          v45 = v28;
          OUTLINED_FUNCTION_21_7();
          sub_1E38E5240(v46, v47, v48, v49, v50, v20, v51);

          v52 = &qword_1ECF296C0;
          v53 = &unk_1E429BBE0;
LABEL_20:
          sub_1E325F748(v66, v52, v53);
        }

        else
        {
        }

        v17 = v56;
        v15 = v57;
        goto LABEL_23;
      }

      v52 = &qword_1ECF40720;
      v53 = &qword_1E429D878;
      goto LABEL_20;
    }

LABEL_23:
    ++v18;
    v19 += 32;
    if (v17 == v18)
    {
      goto LABEL_24;
    }
  }

  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
}

uint64_t sub_1E37C8F9C(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  result = sub_1E41FE844();
  if (result < 0)
  {
    return result;
  }

  v6 = result;
  v7 = OBJC_IVAR____TtC8VideosUI22CarouselViewController_dataModelItems;
  result = OUTLINED_FUNCTION_5_0(v2 + OBJC_IVAR____TtC8VideosUI22CarouselViewController_dataModelItems, v37);
  if (v6 >= *(*(v2 + v7) + 16))
  {
    return result;
  }

  v36[0] = a2;
  type metadata accessor for ViewModel();
  OUTLINED_FUNCTION_1_17();
  sub_1E32749E0(v8, v9);

  sub_1E4207414();
  OUTLINED_FUNCTION_11_3(v2 + v7, v36);
  i = *(v2 + v7);
  result = swift_isUniquelyReferenced_nonNull_native();
  *(v3 + v7) = i;
  if ((result & 1) == 0)
  {
LABEL_20:
    result = sub_1E37CB8C4(i);
    i = result;
    *(v3 + v7) = result;
  }

  if (v6 >= *(i + 16))
  {
    __break(1u);
LABEL_22:
    __break(1u);
    return result;
  }

  sub_1E37CB8D8(__src, i + 40 * v6 + 32);
  *(v3 + v7) = i;
  swift_endAccess();
  v35 = v3;
  v11 = sub_1E37C56A0();
  v12 = *&v11[OBJC_IVAR____TtC8VideosUI21CarouselViewContainer_carouselView];

  v13 = [v12 visibleCells];
  v14 = MEMORY[0x1E69E7CA0];
  v3 = sub_1E42062B4();

  v15 = *(v3 + 16);
  if (!v15)
  {
  }

  v33 = a2;
  v34 = v6;
  a2 = 0;
  v7 = OBJC_IVAR____TtC8VideosUI22CarouselViewController____lazy_storage___carouselViewContainer;
  for (i = v3 + 32; ; i += 32)
  {
    if (a2 >= *(v3 + 16))
    {
      __break(1u);
      goto LABEL_20;
    }

    sub_1E328438C(i, __src);
    v16 = sub_1E3280A90(0, &qword_1EE23B120, 0x1E69DC7F8);
    if (swift_dynamicCast())
    {
      break;
    }

LABEL_11:
    if (v15 == ++a2)
    {
    }
  }

  v6 = v14;
  v17 = v36[0];
  if ([*(*&v35[v7] + OBJC_IVAR____TtC8VideosUI21CarouselViewContainer_carouselView) indexForCell_] != v34)
  {

    v14 = v6;
    goto LABEL_11;
  }

  v18 = *(*v33 + 392);
  v19 = v17;
  v20 = v18();
  if (v20)
  {
    v21 = v20;
    result = [v35 view];
    if (!result)
    {
      goto LABEL_22;
    }

    v22 = result;

    type metadata accessor for LayoutGrid();
    [v22 bounds];
    OUTLINED_FUNCTION_3();

    OUTLINED_FUNCTION_17_4();
    OUTLINED_FUNCTION_20_5();
    Width = CGRectGetWidth(v39);
    sub_1E3A2579C(Width);
    OUTLINED_FUNCTION_8_21([v35 traitCollection]);
    v25 = v24;
    (*(*v21 + 1640))();
  }

  else
  {
  }

  sub_1E37C93F0(__src);
  type metadata accessor for UIFactory();
  v36[5] = v19;
  v36[3] = &unk_1F5D869A0;
  v36[4] = &off_1F5D868A0;
  OUTLINED_FUNCTION_29_7();
  v36[0] = swift_allocObject();
  memcpy((v36[0] + 16), __src, 0x52uLL);
  v26 = v19;
  OUTLINED_FUNCTION_21_7();
  sub_1E38E5240(v27, v28, v29, v30, v31, v16, v32);

  return sub_1E325F748(v36, &qword_1ECF296C0, &unk_1E429BBE0);
}

void *sub_1E37C93F0@<X0>(void *a2@<X8>)
{
  sub_1E3DF9E68(__src);
  v4 = sub_1E37C56A0();
  v5 = *&v4[OBJC_IVAR____TtC8VideosUI21CarouselViewContainer_carouselView];

  [v5 itemSize];
  v7 = v6;
  v9 = v8;

  __src[0] = v7;
  __src[1] = v9;
  LOBYTE(__src[2]) = 0;
  BYTE1(__src[5]) = 1;
  [*(*(v2 + OBJC_IVAR____TtC8VideosUI22CarouselViewController____lazy_storage___carouselViewContainer) + OBJC_IVAR____TtC8VideosUI21CarouselViewContainer_carouselView) itemSize];
  v14[0] = sub_1E3D43D3C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF390E0, &unk_1E42D38F0);
  sub_1E4148DE0(sub_1E37CCD5C);

  memcpy(__dst, __src, 0x52uLL);
  memcpy(v14, __src, 0x52uLL);
  sub_1E37CCDA0(__dst, v11);
  sub_1E37CCDFC(v14);
  return memcpy(a2, __dst, 0x52uLL);
}

uint64_t sub_1E37C9558(uint64_t a1, uint64_t a2)
{
  v3 = OBJC_IVAR____TtC8VideosUI22CarouselViewController_dataModelItems;
  OUTLINED_FUNCTION_15_0(v2 + OBJC_IVAR____TtC8VideosUI22CarouselViewController_dataModelItems, a2);
  return *(*(v2 + v3) + 16);
}

id sub_1E37C95B8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = OBJC_IVAR____TtC8VideosUI22CarouselViewController_dataModelItems;
  OUTLINED_FUNCTION_5_0(&v3[OBJC_IVAR____TtC8VideosUI22CarouselViewController_dataModelItems], v31);
  if (a2 < 0)
  {
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  *&v34 = *&v3[v5];
  v37 = a2;
  v38 = 0;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2A508, &qword_1E429D8B0);
  OUTLINED_FUNCTION_0_32();
  sub_1E328FCF4(v6, &unk_1ECF2A508, &qword_1E429D8B0);
  sub_1E38D2054(&v37, __src);
  if (*&__src[24])
  {
    v32[0] = *__src;
    v32[1] = *&__src[16];
    v33 = *&__src[32];

    sub_1E374E74C(v32, __src);
    type metadata accessor for ViewModel();
    if (!swift_dynamicCast())
    {
      goto LABEL_24;
    }

    v7 = v37;
    v8 = v37;
    v9 = (*(*v37 + 392))();
    if (!v9)
    {
      OUTLINED_FUNCTION_34_14();
      goto LABEL_24;
    }

    v10 = v9;
    if ([v3 view])
    {
      OUTLINED_FUNCTION_106();
      type metadata accessor for LayoutGrid();
      [v8 bounds];
      OUTLINED_FUNCTION_3();

      OUTLINED_FUNCTION_17_4();
      OUTLINED_FUNCTION_20_5();
      Width = CGRectGetWidth(v43);
      sub_1E3A2579C(Width);
      OUTLINED_FUNCTION_8_21([v3 traitCollection]);
      v13 = v12;
      (*(*v10 + 1640))();

      v14 = sub_1E37C56A0();
      v15 = *&v14[OBJC_IVAR____TtC8VideosUI21CarouselViewContainer_carouselView];

      sub_1E384EE08(*(v7 + 98));
      v16 = sub_1E4205ED4();

      v17 = [v15 dequeueReusableCellWithReuseIdentifier:v16 forIndex:a2];

      sub_1E4207264();
      swift_unknownObjectRelease();
      v18 = sub_1E3280A90(0, &qword_1EE23B120, 0x1E69DC7F8);
      if (swift_dynamicCast())
      {
        v19 = v37;
      }

      else
      {
        v19 = 0;
      }

      sub_1E37C93F0(__src);
      type metadata accessor for UIFactory();
      v41 = v19;
      v39 = &unk_1F5D869A0;
      v40 = &off_1F5D868A0;
      OUTLINED_FUNCTION_29_7();
      v37 = swift_allocObject();
      memcpy((v37 + 16), __src, 0x52uLL);

      OUTLINED_FUNCTION_21_7();
      sub_1E38E5240(v20, v21, v22, v23, v24, v18, v25);

      sub_1E325F748(&v37, &qword_1ECF296C0, &unk_1E429BBE0);
      if (v19 && (v41 = v19, v26 = v19, __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2A660, &unk_1E429D940), (swift_dynamicCast() & 1) != 0))
      {
        if (*(&v35 + 1))
        {
          sub_1E3251BE8(&v34, &v37);
          v27 = sub_1E37C64F8();
          v28 = v39;
          v29 = v40;
          __swift_mutable_project_boxed_opaque_existential_1(&v37, v39);
          (v29[5])(v27, v28, v29);
          __swift_destroy_boxed_opaque_existential_1(&v37);
          goto LABEL_17;
        }
      }

      else
      {
        v36 = 0;
        v34 = 0u;
        v35 = 0u;
      }

      sub_1E325F748(&v34, &unk_1ECF40740, &qword_1E429D938);
      if (v19)
      {

        v26 = v19;
LABEL_18:
        sub_1E375D84C(v32);
        return v26;
      }

      v26 = [objc_allocWithZone(MEMORY[0x1E69DC7F8]) initWithFrame_];
LABEL_17:

      goto LABEL_18;
    }

    goto LABEL_20;
  }

LABEL_21:
  sub_1E325F748(__src, &qword_1ECF40720, &qword_1E429D878);

  OUTLINED_FUNCTION_34_14();
LABEL_24:
  result = sub_1E42076B4();
  __break(1u);
  return result;
}

uint64_t sub_1E37C9BA4(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v7 = OBJC_IVAR____TtC8VideosUI22CarouselViewController_dataModelItems;
  result = OUTLINED_FUNCTION_5_0(&v4[OBJC_IVAR____TtC8VideosUI22CarouselViewController_dataModelItems], v48);
  if (a3 < 0)
  {
    __break(1u);
  }

  else
  {
    v47 = *&v4[v7];
    v45 = a3;
    v46 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2A508, &qword_1E429D8B0);
    OUTLINED_FUNCTION_0_32();
    v10 = sub_1E328FCF4(v9, &unk_1ECF2A508, &qword_1E429D8B0);
    OUTLINED_FUNCTION_25_18(v10, v11, v12, v13, v14);
    if (v50)
    {
      v15 = type metadata accessor for ViewModel();
      OUTLINED_FUNCTION_36_11(v15, v16, MEMORY[0x1E69E69B8], v15, v17, v18, v19, v20, v43, v44, v45);
      if (swift_dynamicCast())
      {
        v21 = v45;

        v45 = sub_1E37C646C();
        sub_1E37CB934(v49, v21);

        *&v4[OBJC_IVAR____TtC8VideosUI22CarouselViewController____lazy_storage___visibleCellViewModels] = v45;
      }
    }

    else
    {
      sub_1E325F748(v49, &qword_1ECF40720, &qword_1E429D878);
    }

    v47 = a2;
    sub_1E3280A90(0, &qword_1EE23B120, 0x1E69DC7F8);
    v22 = a2;
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A518, &qword_1E429D8B8);
    v26 = OUTLINED_FUNCTION_26_16(v23, v24, v25);
    if (v26)
    {
      v34 = OUTLINED_FUNCTION_36_11(v26, v27, v28, v29, v30, v31, v32, v33, v43, v44, v45);
      sub_1E3251BE8(v34, v35);
      v36 = v51;
      __swift_project_boxed_opaque_existential_1(v49, v50);
      v37 = OUTLINED_FUNCTION_31_4();
      v39 = v38(v37, v36);
      if (v39)
      {
        v40 = v39;
        [v4 addChildViewController_];
        [v40 didMoveToParentViewController_];
        v41 = swift_dynamicCastObjCProtocolConditional();
        if (v41)
        {
          v42 = v41;
          if ([v41 respondsToSelector_])
          {
            [v42 willBeDisplayed];
          }
        }
      }

      return __swift_destroy_boxed_opaque_existential_1(v49);
    }

    else
    {
      OUTLINED_FUNCTION_19_9();
      return sub_1E325F748(&v45, &unk_1ECF2A520, qword_1E429D8C0);
    }
  }

  return result;
}

uint64_t sub_1E37C9E6C(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v7 = OBJC_IVAR____TtC8VideosUI22CarouselViewController_dataModelItems;
  result = OUTLINED_FUNCTION_5_0(v4 + OBJC_IVAR____TtC8VideosUI22CarouselViewController_dataModelItems, v46);
  if (a3 < 0)
  {
    __break(1u);
  }

  else
  {
    v45 = *(v4 + v7);
    v43 = a3;
    v44 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2A508, &qword_1E429D8B0);
    OUTLINED_FUNCTION_0_32();
    v10 = sub_1E328FCF4(v9, &unk_1ECF2A508, &qword_1E429D8B0);
    OUTLINED_FUNCTION_25_18(v10, v11, v12, v13, v14);
    if (v48)
    {
      v15 = type metadata accessor for ViewModel();
      OUTLINED_FUNCTION_36_11(v15, v16, MEMORY[0x1E69E69B8], v15, v17, v18, v19, v20, v41, v42, v43);
      if (swift_dynamicCast())
      {
        v47[0] = sub_1E37C646C();
        sub_1E37CC6E0(v43);
        OUTLINED_FUNCTION_31_4();

        *(v4 + OBJC_IVAR____TtC8VideosUI22CarouselViewController____lazy_storage___visibleCellViewModels) = v47[0];
      }
    }

    else
    {
      sub_1E325F748(v47, &qword_1ECF40720, &qword_1E429D878);
    }

    v45 = a2;
    sub_1E3280A90(0, &qword_1EE23B120, 0x1E69DC7F8);
    v21 = a2;
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A518, &qword_1E429D8B8);
    v25 = OUTLINED_FUNCTION_26_16(v22, v23, v24);
    if (v25)
    {
      v33 = OUTLINED_FUNCTION_36_11(v25, v26, v27, v28, v29, v30, v31, v32, v41, v42, v43);
      sub_1E3251BE8(v33, v34);
      v35 = v48;
      v36 = v49;
      __swift_project_boxed_opaque_existential_1(v47, v48);
      v37 = (*(v36 + 8))(v35, v36);
      if (v37)
      {
        v38 = v37;
        [v37 willMoveToParentViewController_];
        [v38 removeFromParentViewController];
        v39 = swift_dynamicCastObjCProtocolConditional();
        if (v39)
        {
          v40 = v39;
          if ([v39 respondsToSelector_])
          {
            [v40 didEndDisplaying];
          }
        }
      }

      return __swift_destroy_boxed_opaque_existential_1(v47);
    }

    else
    {
      OUTLINED_FUNCTION_19_9();
      return sub_1E325F748(&v43, &unk_1ECF2A520, qword_1E429D8C0);
    }
  }

  return result;
}

void sub_1E37CA124(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E37C56A0();
  v5 = OBJC_IVAR____TtC8VideosUI21CarouselViewContainer_pageControl;
  OUTLINED_FUNCTION_15_0(&v4[OBJC_IVAR____TtC8VideosUI21CarouselViewContainer_pageControl], v6);
  v7 = *&v4[v5];
  if (!v7)
  {
    goto LABEL_4;
  }

  v8 = v7;

  if ((a2 & 0x8000000000000000) == 0)
  {
    [v8 setCurrentPage_];
    v4 = v8;
LABEL_4:

    sub_1E37C72D8();
    *(v2 + OBJC_IVAR____TtC8VideosUI22CarouselViewController_centeredItemIndex) = a2;
    sub_1E37C6EDC();
    return;
  }

  __break(1u);
}

uint64_t sub_1E37CA228()
{
  v1 = v0;
  OUTLINED_FUNCTION_106();
  v2 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  v8 = v7 - v6;
  v9 = OBJC_IVAR____TtC8VideosUI22CarouselViewController_dataModelItems;
  result = OUTLINED_FUNCTION_5_0(v0 + OBJC_IVAR____TtC8VideosUI22CarouselViewController_dataModelItems, v37);
  if (v0 < 0)
  {
    __break(1u);
  }

  else
  {
    v36 = *(v0 + v9);
    v34 = v0;
    v35 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2A508, &qword_1E429D8B0);
    OUTLINED_FUNCTION_0_32();
    sub_1E328FCF4(v11, &unk_1ECF2A508, &qword_1E429D8B0);
    sub_1E38D2054(&v34, v38);
    if (v39)
    {
      type metadata accessor for ViewModel();
      result = swift_dynamicCast();
      if (result)
      {
        v12 = v34;
        v13 = sub_1E324FBDC();
        (*(v4 + 16))(v8, v13, v2);

        v14 = sub_1E41FFC94();
        v15 = sub_1E42067E4();

        if (os_log_type_enabled(v14, v15))
        {
          v16 = swift_slowAlloc();
          v33 = swift_slowAlloc();
          v38[0] = v33;
          *v16 = 136315394;
          v17 = ViewModelEvent.description.getter(2);
          v19 = sub_1E3270FC8(v17, v18, v38);

          *(v16 + 4) = v19;
          *(v16 + 12) = 2080;
          v21 = (*(*v12 + 368))(v20);
          v23 = sub_1E3270FC8(v21, v22, v38);

          *(v16 + 14) = v23;
          _os_log_impl(&dword_1E323F000, v14, v15, "FlowcaseViewController::dispatching %s event on viewModel: %s", v16, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x1E69143B0](v33, -1, -1);
          MEMORY[0x1E69143B0](v16, -1, -1);
        }

        (*(v4 + 8))(v8, v2);
        if ((sub_1E378CB90(2, 2, v24) & 1) != 0 || (sub_1E378CB90(2, 1, v25)) && (v26 = v0 + OBJC_IVAR____TtC8VideosUI22CarouselViewController_viewImpressioner, OUTLINED_FUNCTION_5_0(v1 + OBJC_IVAR____TtC8VideosUI22CarouselViewController_viewImpressioner, &v34), *(v26 + 24)))
        {
          sub_1E327F454(v26, v38);
          __swift_project_boxed_opaque_existential_1(v38, v39);
          v27 = OUTLINED_FUNCTION_31_4();
          v29 = v28(v27);
          __swift_destroy_boxed_opaque_existential_1(v38);
        }

        else
        {
          v29 = 0;
        }

        v30 = sub_1E37C56A0();
        v31 = *&v30[OBJC_IVAR____TtC8VideosUI21CarouselViewContainer_carouselView];

        v32 = [v31 focusedCell];
        (*(*v12 + 800))(2, v29, v32, 0);
      }
    }

    else
    {
      return sub_1E325F748(v38, &qword_1ECF40720, &qword_1E429D878);
    }
  }

  return result;
}

id sub_1E37CA6C0()
{
  v0 = sub_1E37C56A0();
  v1 = *&v0[OBJC_IVAR____TtC8VideosUI21CarouselViewContainer_carouselView];

  v2 = [v1 _collectionView];
  return v2;
}

id sub_1E37CA724(uint64_t a1)
{
  v3 = sub_1E41FE874();
  OUTLINED_FUNCTION_0_10();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v22 - v10;
  sub_1E37CA928();
  if (!v12)
  {
    return 0;
  }

  v13 = v12;
  v14 = sub_1E37C56A0();
  v15 = *&v14[OBJC_IVAR____TtC8VideosUI21CarouselViewContainer_carouselView];

  v16 = [v15 focusedCell];
  if (!v16)
  {
LABEL_6:

    return 0;
  }

  v17 = sub_1E37CA6C0();
  v18 = [v17 indexPathForCell_];

  if (!v18)
  {

    goto LABEL_6;
  }

  sub_1E41FE804();

  (*(v5 + 32))(v11, v8, v3);
  v19 = sub_1E37CA6C0();
  v20 = sub_1E3C9C60C(v13, v11, a1, v19, &off_1F5D7CF38, v1, &off_1F5D56E00);

  (*(v5 + 8))(v11, v3);
  return v20;
}