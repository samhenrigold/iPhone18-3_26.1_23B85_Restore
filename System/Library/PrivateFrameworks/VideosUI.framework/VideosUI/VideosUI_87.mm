uint64_t sub_1E3D47BA0(char a1, char a2)
{
  v2 = (a1 & 1) == 0;
  if (a1)
  {
    v3 = 1802658148;
  }

  else
  {
    v3 = 0x746867696CLL;
  }

  if (v2)
  {
    v4 = 0xE500000000000000;
  }

  else
  {
    v4 = 0xE400000000000000;
  }

  if (a2)
  {
    v5 = 1802658148;
  }

  else
  {
    v5 = 0x746867696CLL;
  }

  if (a2)
  {
    v6 = 0xE400000000000000;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1E42079A4();
  }

  return v8 & 1;
}

uint64_t sub_1E3D47C34(char a1, char a2)
{
  v3 = sub_1E3D46F94(a1);
  v5 = v4;
  if (v3 == sub_1E3D46F94(a2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1E42079A4();
  }

  return v8 & 1;
}

uint64_t sub_1E3D47CC0(char a1)
{
  sub_1E4207B44();
  sub_1E3D46F94(a1);
  sub_1E4206014();

  return sub_1E4207BA4();
}

uint64_t sub_1E3D47D38(uint64_t a1, char a2)
{
  sub_1E4206014();
}

uint64_t sub_1E3D47D98(uint64_t a1, char a2)
{
  sub_1E3D46F94(a2);
  sub_1E4206014();
}

uint64_t sub_1E3D47DF4(uint64_t a1, char a2)
{
  sub_1E4207B44();
  sub_1E3D46F94(a2);
  sub_1E4206014();

  return sub_1E4207BA4();
}

uint64_t sub_1E3D47E54(uint64_t a1, char a2)
{
  sub_1E4207B44();
  sub_1E4206014();

  return sub_1E4207BA4();
}

uint64_t sub_1E3D47EC8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1E3D46B48();
  *a1 = result;
  return result;
}

uint64_t sub_1E3D47EF8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1E3D46F94(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1E3D47F2C()
{
  v0 = sub_1E4207784();

  if (v0 == 1)
  {
    v1 = 1;
  }

  else
  {
    v1 = 2;
  }

  if (v0)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1E3D47F80(char a1)
{
  if (a1)
  {
    return 1802658148;
  }

  else
  {
    return 0x746867696CLL;
  }
}

unint64_t sub_1E3D47FC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF37BC8;
  if (!qword_1ECF37BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF37BC8);
  }

  return result;
}

uint64_t sub_1E3D4802C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1E3D47F2C();
  *a1 = result;
  return result;
}

uint64_t sub_1E3D4805C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1E3D47F80(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t getEnumTagSinglePayload for ViewLayoutKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0x86)
  {
    if (a2 + 122 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 122) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 123;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x7B;
  v5 = v6 - 123;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for ViewLayoutKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 122 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 122) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0x86)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0x85)
  {
    v6 = ((a2 - 134) >> 8) + 1;
    *result = a2 + 122;
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
        break;
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
          result = OUTLINED_FUNCTION_15(result, a2 + 122);
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ThemeKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        break;
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
          result = OUTLINED_FUNCTION_15(result, a2 + 1);
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1E3D482C8()
{
  if (*(v0 + 120))
  {
    v1 = *(v0 + 120);
  }

  else
  {
    type metadata accessor for VerticalStackLayout();
    sub_1E3F39F3C(2);
    v1 = v2;
    *(v0 + 120) = v2;
  }

  return v1;
}

uint64_t sub_1E3D48334()
{
  if (*(v0 + 136))
  {
    v1 = *(v0 + 136);
  }

  else
  {
    type metadata accessor for ChannelLogoViewLayout();
    v1 = sub_1E3E390C4();
    *(v0 + 136) = v1;
  }

  return v1;
}

uint64_t sub_1E3D4839C()
{
  if (*(v0 + 144))
  {
    v1 = *(v0 + 144);
  }

  else
  {
    type metadata accessor for ViewLayout();
    v1 = sub_1E3C2F968();
    *(v0 + 144) = v1;
  }

  return v1;
}

uint64_t sub_1E3D48438()
{
  *(v0 + 136) = 0u;
  *(v0 + 120) = 0u;
  *(v0 + 104) = 0u;
  v1 = sub_1E3C2F9A0();

  *&v213 = 0x407F400000000000;
  BYTE8(v213) = 0;
  v265 = 0x407C200000000000;
  LOBYTE(v266) = 0;
  *&v263[0] = 0x4086800000000000;
  BYTE8(v263[0]) = 0;
  *&v261[0] = 0x407E000000000000;
  BYTE8(v261[0]) = 0;
  v2 = MEMORY[0x1E69E7DE0];
  sub_1E3C3DE00();
  v257 = v259;
  v258 = v260;
  sub_1E3C3DE00();
  *&v249 = v253;
  BYTE8(v249) = BYTE8(v253);
  sub_1E3C2FCB8(&v257, &v213, &v265, v263, &v249, v261, v2, v270);
  v11 = OUTLINED_FUNCTION_9_121(v3, v4, v5, v6, v7, v8, v9, v10, v160, v173, v186, v199, v213);
  memcpy(v11, v12, 0x59uLL);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_9_2();
  v14 = *(v13 + 1600);
  (v14)(&v213, 6, v15 & 1, v2);
  v16 = *(MEMORY[0x1E69DDCE0] + 16);
  v213 = *MEMORY[0x1E69DDCE0];
  v214 = v16;
  LOBYTE(v215) = 0;
  sub_1E3952C88();
  v265 = v17;
  v266 = v18;
  v267 = v19;
  v268 = v20;
  v269 = 0;
  type metadata accessor for UIEdgeInsets();
  v22 = v21;
  sub_1E3C2FC98();
  v261[0] = v263[0];
  v261[1] = v263[1];
  v262 = v264;
  sub_1E3C3DE00();
  OUTLINED_FUNCTION_1_204();
  sub_1E3C3DE00();
  v249 = v253;
  v250 = v254;
  LOBYTE(v251) = v255;
  sub_1E3C3DE00();
  v241 = v245;
  v242 = v246;
  LOBYTE(v243) = v247;
  sub_1E3C2FCB8(&v213, v261, &v257, &v249, &v265, &v241, v22, v270);
  v31 = OUTLINED_FUNCTION_9_121(v23, v24, v25, v26, v27, v28, v29, v30, v161, v174, v187, v200, v213);
  memcpy(v31, v32, 0xE9uLL);
  v33 = OUTLINED_FUNCTION_18();
  v41 = OUTLINED_FUNCTION_6_150(v33, v34, v35, v36, v37, v38, v39, v40, v162, v175, v188, v201, v213);
  v14(v41);
  OUTLINED_FUNCTION_9_2();
  v176 = v42 + 1760;
  v43 = *(v42 + 1760);
  v44 = v43();
  v45 = [objc_opt_self() clearColor];
  (*(*v44 + 752))(v45);

  OUTLINED_FUNCTION_9_2();
  v189 = v46 + 1832;
  v202 = *(v46 + 1832);
  v202();
  v213 = 0x4028000000000000uLL;
  *&v214 = 0;
  *(&v214 + 1) = 0x4028000000000000;
  LOBYTE(v215) = 0;
  OUTLINED_FUNCTION_12_112();
  OUTLINED_FUNCTION_13_124();
  OUTLINED_FUNCTION_8_130(0x4032000000000000uLL);
  OUTLINED_FUNCTION_1_204();
  v47 = sub_1E3C3DE00();
  OUTLINED_FUNCTION_2_170(v47, v48, v49, v50, v51, v52, v53, v54, v163, v176, v189, v202, v213, *(&v213 + 1), v214, *(&v214 + 1), v215, v216, v217, v218, v219, v220, v221, v222, v223, v224, v225, v226, v227, v228, v229, v230, v231, v232, v233, v234, v235, v236, v237, v238, v239, v240, v241, *(&v241 + 1), v242, *(&v242 + 1), v243, v244, v245, *(&v245 + 1), v246, *(&v246 + 1), v247, v248, v249, v250, v251, v252, v253, v254, v255, v256, v257);
  v63 = OUTLINED_FUNCTION_9_121(v55, v56, v57, v58, v59, v60, v61, v62, v164, v177, v190, v203, v213);
  memcpy(v63, v64, 0xE9uLL);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_14();
  v73 = OUTLINED_FUNCTION_6_150(v65, v66, v67, v68, v69, v70, v71, v72, v165, v178, v191, v204, v213);
  v74(v73);

  OUTLINED_FUNCTION_9_2();
  v76 = *(v75 + 1808);
  v76();
  *&v213 = 0x4064000000000000;
  BYTE8(v213) = 0;
  v265 = 0x4072600000000000;
  LOBYTE(v266) = 0;
  OUTLINED_FUNCTION_14_122(0x4059000000000000uLL);
  OUTLINED_FUNCTION_11_119();
  v77 = OUTLINED_FUNCTION_96_3();
  OUTLINED_FUNCTION_3_173(v77, v78, v79, v80, v81, v82, v83, v84, v166, v179, v192, v205, v213, *(&v213 + 1), v214, *(&v214 + 1), v215, v216, v217, v218, v219, v220, v221, v222, v223, v224, v225, v226, v227, v228, v229, v230, v231, v232, v233, v234, v235, v236, v237, v238, v239, v240, v241, *(&v241 + 1), v242, *(&v242 + 1), v243, v244, v245, SBYTE8(v245), v246, *(&v246 + 1), v247, v248, v249, SBYTE8(v249), v250, *(&v250 + 1), v251, v252, v253);
  v93 = OUTLINED_FUNCTION_9_121(v85, v86, v87, v88, v89, v90, v91, v92, v167, v180, v193, v206, v213);
  memcpy(v93, v94, 0x59uLL);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_14();
  (*(v95 + 1600))(&v213, 4, v96 & 1, v2);

  (v76)(v97);
  *&v213 = 0x4038000000000000;
  BYTE8(v213) = 0;
  v265 = 0x4046000000000000;
  LOBYTE(v266) = 0;
  OUTLINED_FUNCTION_14_122(0x403A000000000000uLL);
  OUTLINED_FUNCTION_11_119();
  v98 = OUTLINED_FUNCTION_96_3();
  OUTLINED_FUNCTION_3_173(v98, v99, v100, v101, v102, v103, v104, v105, v168, v181, v194, v207, v213, *(&v213 + 1), v214, *(&v214 + 1), v215, v216, v217, v218, v219, v220, v221, v222, v223, v224, v225, v226, v227, v228, v229, v230, v231, v232, v233, v234, v235, v236, v237, v238, v239, v240, v241, *(&v241 + 1), v242, *(&v242 + 1), v243, v244, v245, SBYTE8(v245), v246, *(&v246 + 1), v247, v248, v249, SBYTE8(v249), v250, *(&v250 + 1), v251, v252, v253);
  v114 = OUTLINED_FUNCTION_9_121(v106, v107, v108, v109, v110, v111, v112, v113, v169, v182, v195, v208, v213);
  memcpy(v114, v115, 0x59uLL);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_14();
  (*(v116 + 1600))(&v213, 8, v117 & 1, v2);

  (v76)(v118);
  v213 = 0x4028000000000000uLL;
  *&v214 = 0;
  *(&v214 + 1) = 0x4028000000000000;
  LOBYTE(v215) = 0;
  OUTLINED_FUNCTION_12_112();
  OUTLINED_FUNCTION_13_124();
  OUTLINED_FUNCTION_8_130(0x4030000000000000uLL);
  OUTLINED_FUNCTION_1_204();
  v119 = sub_1E3C3DE00();
  OUTLINED_FUNCTION_2_170(v119, v120, v121, v122, v123, v124, v125, v126, v170, v183, v196, v209, v213, *(&v213 + 1), v214, *(&v214 + 1), v215, v216, v217, v218, v219, v220, v221, v222, v223, v224, v225, v226, v227, v228, v229, v230, v231, v232, v233, v234, v235, v236, v237, v238, v239, v240, v241, *(&v241 + 1), v242, *(&v242 + 1), v243, v244, v245, *(&v245 + 1), v246, *(&v246 + 1), v247, v248, v249, v250, v251, v252, v253, v254, v255, v256, v257);
  v135 = OUTLINED_FUNCTION_9_121(v127, v128, v129, v130, v131, v132, v133, v134, v171, v184, v197, v210, v213);
  memcpy(v135, v136, 0xE9uLL);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_14();
  v145 = OUTLINED_FUNCTION_6_150(v137, v138, v139, v140, v141, v142, v143, v144, v172, v185, v198, v211, v213);
  v146(v145);

  OUTLINED_FUNCTION_9_2();
  v148 = (*(v147 + 1736))();
  sub_1E3C37CBC(v148, 151);

  v150 = (v43)(v149);
  sub_1E3C37CBC(v150, 117);

  OUTLINED_FUNCTION_9_2();
  v152 = (*(v151 + 1784))();
  sub_1E3C37CBC(v152, 97);

  v154 = (v76)(v153);
  sub_1E3C37CBC(v154, 40);

  v156 = v212(v155);
  sub_1E3C37CBC(v156, 99);

  OUTLINED_FUNCTION_9_2();
  v158 = (*(v157 + 1856))();
  sub_1E3C37CBC(v158, 88);

  return v1;
}

uint64_t sub_1E3D48B28()
{
  v0 = sub_1E3C5C6B8();

  return MEMORY[0x1EEE6BDC0](v0, 152, 7);
}

uint64_t sub_1E3D48BD4()
{
  v1 = OBJC_IVAR____TtC8VideosUI13RemoteBarItem_shouldImpress;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1E3D48C18(char a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI13RemoteBarItem_shouldImpress;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1E3D48D4C()
{
  v1 = OBJC_IVAR____TtC8VideosUI13RemoteBarItem____lazy_storage___route;
  if (*(v0 + OBJC_IVAR____TtC8VideosUI13RemoteBarItem____lazy_storage___route))
  {
    v2 = *(v0 + OBJC_IVAR____TtC8VideosUI13RemoteBarItem____lazy_storage___route);
  }

  else
  {
    v3 = v0;
    type metadata accessor for Route(0);
    v4 = *(v0 + OBJC_IVAR____TtC8VideosUI13RemoteBarItem_identifier);
    v5 = *(v0 + OBJC_IVAR____TtC8VideosUI13RemoteBarItem_identifier + 8);

    v2 = sub_1E3F4C85C(v4, v5, 1);
    *(v3 + v1) = v2;
  }

  return v2;
}

double sub_1E3D48DE8(uint64_t a1)
{
  *(v1 + OBJC_IVAR____TtC8VideosUI13RemoteBarItem____lazy_storage___route) = a1;

  return result;
}

uint64_t (*sub_1E3D48E00(uint64_t *a1))()
{
  a1[1] = v1;
  *a1 = sub_1E3D48D4C();
  return sub_1E3D48E48;
}

double sub_1E3D48E48(void *a1)
{
  *(a1[1] + OBJC_IVAR____TtC8VideosUI13RemoteBarItem____lazy_storage___route) = *a1;

  return result;
}

void sub_1E3D48E60()
{
  OUTLINED_FUNCTION_31_1();
  objc_allocWithZone(v0);
  sub_1E3D48EDC();
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3D48EDC()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v95 = v2;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B7B0, &qword_1E429EC30);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v94 = &v93 - v18;
  v19 = OBJC_IVAR____TtC8VideosUI13RemoteBarItem_metrics;
  type metadata accessor for Metrics(0);
  v20 = v19;
  *&v1[v19] = sub_1E3BA54D0();
  v21 = v4;
  v22 = v1;
  v1[OBJC_IVAR____TtC8VideosUI13RemoteBarItem_shouldImpress] = 0;
  *&v1[OBJC_IVAR____TtC8VideosUI13RemoteBarItem____lazy_storage___route] = 0;
  v23 = &v1[OBJC_IVAR____TtC8VideosUI13RemoteBarItem_title];
  *v23 = v16;
  v23[1] = v14;
  v24 = &v1[OBJC_IVAR____TtC8VideosUI13RemoteBarItem_identifier];
  *v24 = v12;
  v24[1] = v10;
  v25 = &v1[OBJC_IVAR____TtC8VideosUI13RemoteBarItem_documentRef];
  *v25 = v8;
  v25[1] = v6;
  *&v1[OBJC_IVAR____TtC8VideosUI13RemoteBarItem_dictionary] = v21;
  *&v1[OBJC_IVAR____TtC8VideosUI13RemoteBarItem_parentDictionary] = v95;
  v97 = sub_1E4205F14();
  v98 = v26;

  sub_1E4207414();
  OUTLINED_FUNCTION_2_171();
  sub_1E375D84C(v99);
  if (!v103)
  {
    v37 = &unk_1ECF296E0;
    v38 = &unk_1E4298030;
    v39 = &v101;
LABEL_14:
    sub_1E325F748(v39, v37, v38);
    goto LABEL_15;
  }

  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B6D0, &unk_1E42A0D50);
  if ((OUTLINED_FUNCTION_1_205(v27, v28, v29, v27) & 1) == 0)
  {
    goto LABEL_15;
  }

  v30 = v97;
  v31 = v20;
  v32 = *&v22[v20];
  sub_1E4205F14();

  OUTLINED_FUNCTION_11_120();

  if (v100)
  {
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770, &qword_1E42992B0);
    v35 = OUTLINED_FUNCTION_6_151(v33, v34, MEMORY[0x1E69E69B8], v33);
    v36 = OUTLINED_FUNCTION_10_115(v35, v101);
  }

  else
  {
    sub_1E325F748(v99, &qword_1ECF40720, &qword_1E429D878);
    v36 = 0;
  }

  (*(*v32 + 184))(v36);

  v40 = *&v22[v31];
  sub_1E4205F14();

  OUTLINED_FUNCTION_11_120();

  if (v100)
  {
    v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770, &qword_1E42992B0);
    v43 = OUTLINED_FUNCTION_6_151(v41, v42, MEMORY[0x1E69E69B8], v41);
    v44 = OUTLINED_FUNCTION_10_115(v43, v101);
  }

  else
  {
    sub_1E325F748(v99, &qword_1ECF40720, &qword_1E429D878);
    v44 = 0;
  }

  (*(*v40 + 208))(v44);

  v45 = sub_1E4205F14();
  sub_1E3D496FC(v45, v46, v30, v99);

  if (!v100)
  {
    v37 = &qword_1ECF40720;
    v38 = &qword_1E429D878;
    v39 = v99;
    goto LABEL_14;
  }

  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770, &qword_1E42992B0);
  if (OUTLINED_FUNCTION_6_151(v47, v48, MEMORY[0x1E69E69B8], v47))
  {
    v49 = *&v22[v31];
    type metadata accessor for BaseImpressionManager();

    v50 = v94;
    static BaseImpressionManager.makeImpressionsData(_:parent:)();

    v51 = sub_1E4204724();
    __swift_storeEnumTagSinglePayload(v50, 0, 1, v51);
    (*(*v49 + 232))(v50);
  }

LABEL_15:
  v101 = sub_1E4205F14();
  v102 = v52;
  OUTLINED_FUNCTION_8_131(v101, MEMORY[0x1E69E6158], MEMORY[0x1E69E6168]);
  OUTLINED_FUNCTION_2_171();
  v53 = sub_1E375D84C(v99);
  if (v103)
  {
    if (OUTLINED_FUNCTION_1_205(v53, v54, v55, MEMORY[0x1E69E6370]))
    {
      v56 = v97;
      goto LABEL_20;
    }
  }

  else
  {
    sub_1E325F748(&v101, &unk_1ECF296E0, &unk_1E4298030);
  }

  v56 = 0;
LABEL_20:
  v22[OBJC_IVAR____TtC8VideosUI13RemoteBarItem_isNonServerTab] = v56;
  v101 = sub_1E4205F14();
  v102 = v57;
  OUTLINED_FUNCTION_8_131(v101, MEMORY[0x1E69E6158], MEMORY[0x1E69E6168]);
  OUTLINED_FUNCTION_2_171();
  v58 = sub_1E375D84C(v99);
  if (v103)
  {
    OUTLINED_FUNCTION_1_205(v58, v59, v60, MEMORY[0x1E69E6158]);
    OUTLINED_FUNCTION_5_156();
    if (v63)
    {
      v62 = 0;
    }
  }

  else
  {
    sub_1E325F748(&v101, &unk_1ECF296E0, &unk_1E4298030);
    v61 = 0;
    v62 = 0;
  }

  v64 = &v22[OBJC_IVAR____TtC8VideosUI13RemoteBarItem_iconResource];
  *v64 = v61;
  v64[1] = v62;
  v101 = sub_1E4205F14();
  v102 = v65;
  OUTLINED_FUNCTION_8_131(v101, MEMORY[0x1E69E6158], MEMORY[0x1E69E6168]);
  OUTLINED_FUNCTION_2_171();
  v66 = sub_1E375D84C(v99);
  if (v103)
  {
    OUTLINED_FUNCTION_1_205(v66, v67, v68, MEMORY[0x1E69E6158]);
    OUTLINED_FUNCTION_5_156();
    if (v63)
    {
      v70 = 0;
    }
  }

  else
  {
    sub_1E325F748(&v101, &unk_1ECF296E0, &unk_1E4298030);
    v69 = 0;
    v70 = 0;
  }

  v71 = &v22[OBJC_IVAR____TtC8VideosUI13RemoteBarItem_sideBarIconResource];
  *v71 = v69;
  v71[1] = v70;
  v101 = sub_1E4205F14();
  v102 = v72;
  OUTLINED_FUNCTION_8_131(v101, MEMORY[0x1E69E6158], MEMORY[0x1E69E6168]);
  OUTLINED_FUNCTION_2_171();
  sub_1E375D84C(v99);
  if (v103)
  {
    v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C8C0, &unk_1E42A1250);
    v76 = OUTLINED_FUNCTION_1_205(v73, v74, v75, v73);
    v77 = v97;
    if (!v76)
    {
      v77 = 0;
    }
  }

  else
  {
    sub_1E325F748(&v101, &unk_1ECF296E0, &unk_1E4298030);
    v77 = 0;
  }

  *&v22[OBJC_IVAR____TtC8VideosUI13RemoteBarItem_contextData] = v77;
  v101 = sub_1E4205F14();
  v102 = v78;
  OUTLINED_FUNCTION_8_131(v101, MEMORY[0x1E69E6158], MEMORY[0x1E69E6168]);
  OUTLINED_FUNCTION_2_171();
  v79 = sub_1E375D84C(v99);
  if (v103)
  {
    OUTLINED_FUNCTION_1_205(v79, v80, v81, MEMORY[0x1E69E6158]);
    OUTLINED_FUNCTION_5_156();
    if (v63)
    {
      v83 = 0;
    }
  }

  else
  {
    sub_1E325F748(&v101, &unk_1ECF296E0, &unk_1E4298030);
    v82 = 0;
    v83 = 0;
  }

  v84 = &v22[OBJC_IVAR____TtC8VideosUI13RemoteBarItem_pageContextData];
  *v84 = v82;
  v84[1] = v83;
  v97 = sub_1E4205F14();
  v98 = v85;
  sub_1E4207414();
  OUTLINED_FUNCTION_2_171();

  sub_1E375D84C(v99);
  if (!v103)
  {
    sub_1E325F748(&v101, &unk_1ECF296E0, &unk_1E4298030);
    goto LABEL_44;
  }

  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B6D0, &unk_1E42A0D50);
  if ((OUTLINED_FUNCTION_1_205(v86, v87, v88, v86) & 1) == 0)
  {
LABEL_44:
    v91 = [objc_allocWithZone(VUIDocumentUIConfiguration) init];
    goto LABEL_45;
  }

  v89 = v97;
  sub_1E3D496B8();
  v90 = sub_1E38206B8(v89);

  v91 = sub_1E3D49768(v90);
LABEL_45:
  *&v22[OBJC_IVAR____TtC8VideosUI13RemoteBarItem_uiConfiguration] = v91;
  v92 = type metadata accessor for RemoteBarItem();
  v96.receiver = v22;
  v96.super_class = v92;
  objc_msgSendSuper2(&v96, sel_init);
  OUTLINED_FUNCTION_25_2();
}

unint64_t sub_1E3D496B8()
{
  result = qword_1ECF37C40;
  if (!qword_1ECF37C40)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ECF37C40);
  }

  return result;
}

double sub_1E3D496FC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (*(a3 + 16) && (v6 = sub_1E327D33C(a1, a2), (v7 & 1) != 0))
  {
    v8 = *(a3 + 56) + 40 * v6;

    sub_1E374E74C(v8, a4);
  }

  else
  {
    *(a4 + 32) = 0;
    result = 0.0;
    *a4 = 0u;
    *(a4 + 16) = 0u;
  }

  return result;
}

id sub_1E3D49768(uint64_t a1)
{
  if (a1)
  {
    v1 = sub_1E4205C44();
  }

  else
  {
    v1 = 0;
  }

  v2 = [swift_getObjCClassFromMetadata() uiConfigurationWithDict_];

  return v2;
}

uint64_t sub_1E3D497F4(uint64_t a1)
{
  sub_1E3294F34(a1, v6);
  if (!v7)
  {
    sub_1E325F748(v6, &unk_1ECF296E0, &unk_1E4298030);
    goto LABEL_9;
  }

  type metadata accessor for RemoteBarItem();
  if ((OUTLINED_FUNCTION_21_4() & 1) == 0)
  {
LABEL_9:
    v3 = 0;
    return v3 & 1;
  }

  if (*(v1 + OBJC_IVAR____TtC8VideosUI13RemoteBarItem_identifier) == *&v5[OBJC_IVAR____TtC8VideosUI13RemoteBarItem_identifier] && *(v1 + OBJC_IVAR____TtC8VideosUI13RemoteBarItem_identifier + 8) == *&v5[OBJC_IVAR____TtC8VideosUI13RemoteBarItem_identifier + 8])
  {

    v3 = 1;
  }

  else
  {
    v3 = sub_1E42079A4();
  }

  return v3 & 1;
}

void sub_1E3D49940()
{
  OUTLINED_FUNCTION_31_1();
  v1 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v3 = v2;
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1E69E7D40];
  v9 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0xD8))(v5);
  type metadata accessor for Route(0);
  v10 = *(v0 + OBJC_IVAR____TtC8VideosUI13RemoteBarItem_identifier);
  v11 = *(v0 + OBJC_IVAR____TtC8VideosUI13RemoteBarItem_identifier + 8);

  v27 = v10;
  v12 = sub_1E3F4C85C(v10, v11, 1);
  v13 = *((*v8 & *v0) + 0xE0);

  v13(v14);
  v15 = sub_1E324FBDC();
  v28 = v3;
  v29 = v1;
  (*(v3 + 16))(v7, v15, v1);

  v16 = v0;

  v17 = sub_1E41FFC94();
  v18 = sub_1E4206814();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v30 = v20;
    *v19 = 136315650;
    *(v19 + 4) = sub_1E3270FC8(v27, v11, &v30);
    *(v19 + 12) = 2080;
    v21 = sub_1E41E1364(v9);
    v23 = sub_1E3270FC8(v21, v22, &v30);

    *(v19 + 14) = v23;
    *(v19 + 22) = 2080;
    v24 = sub_1E41E1364(v12);
    v26 = sub_1E3270FC8(v24, v25, &v30);

    *(v19 + 24) = v26;
    _os_log_impl(&dword_1E323F000, v17, v18, "RemoteBarItem: [%s] reset route from %s to %s", v19, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1E69143B0](v20, -1, -1);
    MEMORY[0x1E69143B0](v19, -1, -1);
  }

  else
  {
  }

  (*(v28 + 8))(v7, v29);
  OUTLINED_FUNCTION_25_2();
}

id sub_1E3D49C78()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RemoteBarItem();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1E3D49E34()
{
  v1 = *(v0 + OBJC_IVAR____TtC8VideosUI13RemoteBarItem_dictionary);
  *&v7 = sub_1E4205F14();
  *(&v7 + 1) = v2;
  sub_1E4207414();
  sub_1E375D7E8(v1, &v7, v6);
  sub_1E375D84C(v6);
  if (v8)
  {
    v3 = OUTLINED_FUNCTION_21_4();
    return OUTLINED_FUNCTION_10_115(v3, v5);
  }

  else
  {
    sub_1E325F748(&v7, &unk_1ECF296E0, &unk_1E4298030);
    return 0;
  }
}

void sub_1E3D49F00()
{
  OUTLINED_FUNCTION_31_1();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF363C0, &unk_1E42A9420);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v26 - v2;
  v4 = sub_1E41FE414();
  OUTLINED_FUNCTION_0_10();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v0 + OBJC_IVAR____TtC8VideosUI13RemoteBarItem_dictionary);
  v33 = sub_1E4205F14();
  v34 = v11;
  sub_1E4207414();
  sub_1E375D7E8(v10, &v36, v35);
  sub_1E375D84C(v35);
  if (!v37)
  {
    sub_1E325F748(&v36, &unk_1ECF296E0, &unk_1E4298030);
    goto LABEL_17;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C420, &qword_1E429CDD0);
  if ((OUTLINED_FUNCTION_21_4() & 1) == 0)
  {
LABEL_17:
    OUTLINED_FUNCTION_25_2();
    return;
  }

  v31 = v9;
  v12 = 0;
  v13 = v33;
  v14 = *(v33 + 16);
  v29 = v6;
  v30 = (v6 + 32);
  v15 = v33 + 40;
  v32 = MEMORY[0x1E69E7CC0];
  v28 = v33 + 40;
LABEL_4:
  for (i = v15 + 16 * v12; ; i += 16)
  {
    if (v14 == v12)
    {

      goto LABEL_17;
    }

    if (v12 >= *(v13 + 16))
    {
      break;
    }

    sub_1E41FE404();

    if (__swift_getEnumTagSinglePayload(v3, 1, v4) != 1)
    {
      v17 = *v30;
      (*v30)(v31, v3, v4);
      v18 = v32;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v18 = sub_1E3D4A270(0, v18[2] + 1, 1, v18);
      }

      v19 = v18;
      v20 = v18[2];
      v32 = v19;
      v21 = *(v19 + 24);
      v22 = v20 + 1;
      if (v20 >= v21 >> 1)
      {
        v27 = v20 + 1;
        v25 = sub_1E3D4A270((v21 > 1), v20 + 1, 1, v32);
        v22 = v27;
        v32 = v25;
      }

      ++v12;
      v23 = v31;
      v24 = v32;
      v32[2] = v22;
      v17((v24 + ((*(v29 + 80) + 32) & ~*(v29 + 80)) + *(v29 + 72) * v20), v23, v4);
      v15 = v28;
      goto LABEL_4;
    }

    sub_1E325F748(v3, &unk_1ECF363C0, &unk_1E42A9420);
    ++v12;
  }

  __break(1u);
}

void *sub_1E3D4A270(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
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

  v8 = *(a4 + 16);
  v9 = sub_1E3D4A35C(v8, v7);
  v10 = *(sub_1E41FE414() - 8);
  if (v5)
  {
    v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    sub_1E3D4A458(a4 + v11, v8, v9 + v11);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v9;
}

void *sub_1E3D4A35C(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF37C48, &qword_1E42CDD18);
  v4 = *(sub_1E41FE414() - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v7);
  if (v5)
  {
    if ((result - v6) != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * ((result - v6) / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1E3D4A458(unint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 < a1 || (result = sub_1E41FE414(), a1 + *(*(result - 8) + 72) * a2 <= a3))
  {
    sub_1E41FE414();

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (a3 != a1)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

void sub_1E3D4A52C(void *a1)
{
  if (!a1)
  {
    OUTLINED_FUNCTION_192();
    return;
  }

  v2 = v1;
  v36 = a1;
  v3 = sub_1E3D4B954(v36);
  if (!v4)
  {
    goto LABEL_31;
  }

  v5 = v3;
  v6 = v4;
  OUTLINED_FUNCTION_12_5();
  v8 = (*(v7 + 544))();
  if (!v8)
  {

LABEL_27:
    OUTLINED_FUNCTION_192();

    return;
  }

  v35 = v8;
  v9 = [v8 navigationController];
  if (!v9)
  {

LABEL_31:
    OUTLINED_FUNCTION_192();

    return;
  }

  v10 = v9;
  OUTLINED_FUNCTION_12_5();
  v12 = (*(v11 + 496))();
  v13 = sub_1E32AE9B0(v12);
  for (i = 0; ; ++i)
  {
    if (v13 == i)
    {

      goto LABEL_27;
    }

    if ((v12 & 0xC000000000000001) != 0)
    {
      v15 = MEMORY[0x1E6911E60](i, v12);
    }

    else
    {
      if (i >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_35;
      }

      v15 = *(v12 + 8 * i + 32);
    }

    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_35:
      __break(1u);
      return;
    }

    v37 = v15;
    v16 = *&v15[OBJC_IVAR____TtC8VideosUI14LibraryBarItem_identifier] == v5 && v6 == *&v15[OBJC_IVAR____TtC8VideosUI14LibraryBarItem_identifier + 8];
    if (v16 || (sub_1E42079A4() & 1) != 0)
    {
      break;
    }
  }

  v17 = OBJC_IVAR____TtC8VideosUI14LibraryBarItem_menuItem;
  sub_1E3EBFB88(*(*&v37[OBJC_IVAR____TtC8VideosUI14LibraryBarItem_menuItem] + 32));
  if ((v18 & 1) == 0)
  {

    goto LABEL_31;
  }

  v19 = MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_12_5();
  v21 = *(v20 + 624);

  v21(v22);
  v23 = *sub_1E3B7B1C8();
  v24 = *((*v19 & *v2) + 0x268);

  v26 = v24(v25);
  (*(*v23 + 416))(v26);

  v27 = *&v37[v17];
  v28 = *((*v19 & *v2) + 0x238);

  v30 = v28(v29);
  sub_1E3D4A928(v27, v30 & 1, v36, v10);

  OUTLINED_FUNCTION_192();
}

void sub_1E3D4A928(unsigned __int8 *a1, int a2, void *a3, void *a4)
{
  v8 = sub_1E41FFCB4();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v95 = &v91 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v91 - v12;
  LODWORD(v98) = a2;
  v99 = a1;
  v97 = v14;
  v96 = v9;
  if (a2)
  {
    v101 = a4;
    v100 = a3;
    v102 = 2;
LABEL_21:
    v27 = sub_1E324FBDC();
    v28 = *(v9 + 16);
    v93 = v27;
    v94 = (v9 + 16);
    v92 = v28;
    (v28)(v13);

    v29 = sub_1E41FFC94();
    v30 = sub_1E4206814();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = v13;
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v107 = v33;
      *v32 = 136315650;
      v34 = (*(*a1 + 432))();
      v36 = sub_1E3270FC8(v34, v35, &v107);

      *(v32 + 4) = v36;
      *(v32 + 12) = 1024;
      *(v32 + 14) = v98 & 1;
      *(v32 + 18) = 2048;
      *(v32 + 20) = v102;
      _os_log_impl(&dword_1E323F000, v29, v30, "LibrarySideBarManager::rebasing %s, from Tabbar %{BOOL}d, index %ld", v32, 0x1Cu);
      __swift_destroy_boxed_opaque_existential_1(v33);
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_6_0();

      v37 = *(v9 + 8);
      v38 = v31;
    }

    else
    {

      v37 = *(v9 + 8);
      v38 = v13;
    }

    v91 = v37;
    v37(v38, v8);
    while (1)
    {
      v39 = [v101 viewControllers];
      sub_1E38DA110();
      v40 = sub_1E42062B4();

      *&v106[0] = v40;
      v107 = v102;
      v108 = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF396B0, &qword_1E42B49B0);
      sub_1E3D4B9C4();
      sub_1E38D2054(&v107, v105);
      v41 = *&v105[0];

      if (!v41)
      {
        break;
      }

      ObjectType = swift_getObjectType();
      if (dynamic_cast_existential_1_conditional(v41, ObjectType, &protocol descriptor for TemplateReparentable))
      {
        v44 = v43;
        v45 = swift_getObjectType();
        v46 = *(v44 + 16);
        v47 = v41;
        v46(1, v45, v44);
      }

      [v100 pushViewController:v41 animated:0];
      v48 = swift_getObjectType();
      if (dynamic_cast_existential_1_conditional(v41, v48, &protocol descriptor for TemplateReparentable))
      {
        v50 = v49;
        v51 = swift_getObjectType();
        v52 = *(v50 + 16);
        v53 = v41;
        v52(0, v51, v50);
      }
    }

    v54 = *(**sub_1E3B7B1C8() + 672);

    v56 = v54(v55);

    v57 = 0;
    v58 = *(v56 + 16);
    for (i = v56 + 32; ; i += 40)
    {
      if (v58 == v57)
      {

        return;
      }

      if (v57 >= *(v56 + 16))
      {
        __break(1u);
        goto LABEL_49;
      }

      sub_1E327F454(i, v105);
      sub_1E327F454(v105, v104);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF3B640, &qword_1E429E310);
      type metadata accessor for LibLocalSource();
      if (swift_dynamicCast())
      {
        break;
      }

      ++v57;
      __swift_destroy_boxed_opaque_existential_1(v105);
    }

    sub_1E37DADF4(v105, v106);
    sub_1E37DADF4(v106, &v107);
    type metadata accessor for Router(0);
    v60 = v109;
    v61 = v110;
    __swift_project_boxed_opaque_existential_1(&v107, v109);
    (*(v61 + 16))(v60, v61);
    sub_1E40C49A8();
    v63 = v62;

    sub_1E40C49A8();
    v65 = v64;
    if (v98)
    {
      v66 = v64;
    }

    else
    {
      v66 = v63;
    }

    if (v98)
    {
      v67 = v63;
    }

    else
    {
      v67 = v64;
    }

    v68 = MEMORY[0x1E69E7D40];
    v69 = *((*MEMORY[0x1E69E7D40] & *v67) + 0x178);
    v70 = v67;
    v98 = v66;
    v99 = v70;
    v71 = v69(v102);
    v72 = v95;
    v73 = v97;
    v92(v95, v93, v97);

    v74 = sub_1E41FFC94();
    v75 = sub_1E4206814();

    if (os_log_type_enabled(v74, v75))
    {
      v76 = swift_slowAlloc();
      v77 = swift_slowAlloc();
      v94 = v63;
      v78 = v77;
      *&v106[0] = v77;
      *v76 = 136315138;
      v79 = type metadata accessor for Route(0);
      v80 = MEMORY[0x1E6910C30](v71, v79);
      v82 = v65;
      v83 = sub_1E3270FC8(v80, v81, v106);

      *(v76 + 4) = v83;
      v65 = v82;
      v68 = MEMORY[0x1E69E7D40];
      _os_log_impl(&dword_1E323F000, v74, v75, "LibrarySideBarManager:: rebasedRoutes %s", v76, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v78);
      v63 = v94;
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_6_0();

      v84 = v95;
    }

    else
    {

      v84 = v72;
    }

    v91(v84, v73);
    v85 = swift_allocObject();
    v86 = v99;
    v85[2] = v71;
    v85[3] = v86;
    v87 = v98;
    v85[4] = v102;
    v85[5] = v87;
    v88 = v86;
    v89 = v87;
    v90 = j__OUTLINED_FUNCTION_51_1();
    (*((*v68 & *v88) + 0x1F0))(v90 & 1, sub_1E3D4BA28, v85);

    __swift_destroy_boxed_opaque_existential_1(&v107);
  }

  else
  {
    v102 = &v91 - v12;
    v15 = sub_1E3B7B1C8();
    v16 = *(**v15 + 456);

    v18 = v16(v17);

    v19 = sub_1E32AE9B0(v18);
    v20 = 0;
    while (1)
    {
      if (v19 == v20)
      {

        return;
      }

      if ((v18 & 0xC000000000000001) != 0)
      {
        v21 = MEMORY[0x1E6911E60](v20, v18);
      }

      else
      {
        if (v20 >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_50;
        }

        v21 = *(v18 + 8 * v20 + 32);
      }

      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (*(v21 + 72) == *(v99 + 9) && *(v21 + 80) == *(v99 + 10))
      {

        goto LABEL_20;
      }

      v23 = sub_1E42079A4();

      ++v20;
      if (v23)
      {

LABEL_20:
        v13 = v102;
        v24 = *(*v15 + OBJC_IVAR____TtC8VideosUI20LibDataSourceManager_shelvedMenuTypesNotOnPhoneRootPage);
        a1 = v99;
        v25 = v99[32];
        v100 = a4;
        v101 = a3;

        LOBYTE(v25) = sub_1E37D7DAC(v25, v24, v26);

        v102 = v25 & 1;
        v8 = v97;
        v9 = v96;
        goto LABEL_21;
      }
    }

LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
  }
}

double sub_1E3D4B3B0(void *a1)
{
  v3 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x238);
  if ((v3() & 1) == 0 || !a1)
  {
    return result;
  }

  OUTLINED_FUNCTION_3_3();
  v6 = *(v5 + 544);
  v24 = a1;
  v7 = v6();
  if (v7)
  {
    v23 = v7;
    v8 = [v7 navigationController];
    if (v8)
    {
      v9 = v8;
      OUTLINED_FUNCTION_3_3();
      v11 = (*(v10 + 616))();
      if (v11)
      {
        v12 = v11;
      }

      else
      {
        v14 = *(**sub_1E3B7B1C8() + 408);

        v12 = v14(v15);

        if (!v12)
        {
LABEL_25:
          sub_1E3D4B7F0(v1);

          return result;
        }
      }

      v16 = v24;

      v17 = sub_1E3D4B954(v16);
      if (v18)
      {
        if (v17 == *(v12 + 72) && v18 == *(v12 + 80))
        {
        }

        else
        {
          v20 = sub_1E42079A4();

          if ((v20 & 1) == 0)
          {
            goto LABEL_24;
          }
        }

        v22 = (v3)(v21);
        sub_1E3D4A928(v12, v22 & 1, v16, v9);
      }

LABEL_24:

      goto LABEL_25;
    }

    v13 = v23;
  }

  else
  {
    v13 = v24;
  }

  return result;
}

uint64_t sub_1E3D4B638(char a1, __n128 a2)
{
  if ((a1 & 1) != 0 && (v3 = MEMORY[0x1E69E7D40], OUTLINED_FUNCTION_12_5(), (v5 = (*(v4 + 544))()) != 0))
  {

    OUTLINED_FUNCTION_3_3();
    (*(v6 + 576))(1);
    (*((*v3 & *v2) + 0x288))(0);
    v7 = *(**sub_1E3B7B1C8() + 408);

    v9 = v7(v8);

    v10 = *((*v3 & *v2) + 0x270);

    return v10(v9);
  }

  else
  {

    return sub_1E3D4B7F0(v2);
  }
}

uint64_t sub_1E3D4B7F0(void *a1)
{
  v1 = MEMORY[0x1E69E7D40];
  (*((*MEMORY[0x1E69E7D40] & *a1) + 0x258))(0, 1);
  OUTLINED_FUNCTION_26_3();
  (*((*v1 & v2) + 0x270))(0);
  OUTLINED_FUNCTION_26_3();
  (*((*v1 & v3) + 0x288))(0);
  OUTLINED_FUNCTION_26_3();
  (*((*v1 & v4) + 0x228))(0);
  OUTLINED_FUNCTION_26_3();
  return (*((*v1 & v5) + 0x240))(0);
}

uint64_t sub_1E3D4B954(void *a1)
{
  v2 = [a1 vuiViewControllerIdentifier];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_1E4205F14();

  return v3;
}

unint64_t sub_1E3D4B9C4()
{
  result = qword_1EE23B4A0;
  if (!qword_1EE23B4A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1ECF396B0, &qword_1E42B49B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE23B4A0);
  }

  return result;
}

uint64_t sub_1E3D4BA28()
{
  v1 = v0;
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v5 = *(v1 + 32);
  v4 = *(v1 + 40);
  if (v2 >> 62)
  {
    result = sub_1E4207384();
    if (!result)
    {
      return result;
    }
  }

  else
  {
    result = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }
  }

  v7 = MEMORY[0x1E69E7D40];
  (*((*MEMORY[0x1E69E7D40] & *v3) + 0x188))(v5);
  return (*((*v7 & *v4) + 0x180))(v2);
}

id sub_1E3D4BB58(void *a1, void *a2)
{
  ObjectType = swift_getObjectType();
  v6 = [objc_opt_self() currentAppContext];
  v18.receiver = v2;
  v18.super_class = ObjectType;
  v7 = objc_msgSendSuper2(&v18, sel_initWithAppContext_, v6);

  v8 = v7;
  v9 = a1;
  OUTLINED_FUNCTION_0_225();
  v10 = sub_1E4205ED4();
  v11 = OUTLINED_FUNCTION_2_172();
  [v11 v12];

  v13 = a2;
  OUTLINED_FUNCTION_1_96();
  v14 = sub_1E4205ED4();
  v15 = OUTLINED_FUNCTION_2_172();
  [v15 v16];

  return v8;
}

id sub_1E3D4BC9C()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = [objc_opt_self() currentThread];
  v4 = sub_1E39051FC();

  if (v4)
  {
    OUTLINED_FUNCTION_0_225();
    v5 = sub_1E4205ED4();
    OUTLINED_FUNCTION_3_174();

    OUTLINED_FUNCTION_1_96();
    v6 = sub_1E4205ED4();
    OUTLINED_FUNCTION_3_174();
  }

  v8.receiver = v1;
  v8.super_class = ObjectType;
  return objc_msgSendSuper2(&v8, sel_dealloc);
}

void sub_1E3D4BD78()
{
  OUTLINED_FUNCTION_0_225();
  v1 = sub_1E4205ED4();
  v2 = [v0 jsValueForProperty_];

  if (v2)
  {
    v3 = sub_1E394E11C(MEMORY[0x1E69E7CC0], v2);
    if (!v3)
    {
      goto LABEL_12;
    }

    v4 = v3;
    v5 = [v3 context];
    if (v5)
    {
      v6 = v5;
      v7 = [v5 globalObject];

      if (v7)
      {
        v8 = sub_1E4205ED4();
        v9 = [v7 valueForProperty_];

        if (v9)
        {
          if (sub_1E3A24240())
          {
            v10 = v9;
            v11 = [v4 isInstanceOf_];

            v2 = v4;
            if (v11)
            {
              return;
            }

            goto LABEL_12;
          }
        }

        else
        {
          v9 = v4;
        }

LABEL_12:
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }
}

void sub_1E3D4BED8()
{
  v1 = sub_1E4205ED4();
  v2 = [v0 jsValueForProperty_];

  if (v2)
  {
    v3 = sub_1E394E11C(MEMORY[0x1E69E7CC0], v2);
  }

  OUTLINED_FUNCTION_0_225();
  v4 = sub_1E4205ED4();
  v5 = OUTLINED_FUNCTION_2_172();
  [v5 v6];

  v9 = sub_1E4205ED4();
  v7 = OUTLINED_FUNCTION_2_172();
  [v7 v8];
}

id sub_1E3D4C0CC(id *a1)
{
  [*a1 setTextStyle_];
  v1 = OUTLINED_FUNCTION_25_74();

  return [v1 v2];
}

id sub_1E3D4C128(id *a1)
{
  [*a1 setTextStyle_];
  v1 = OUTLINED_FUNCTION_25_74();

  return [v1 v2];
}

uint64_t sub_1E3D4C184()
{
  type metadata accessor for TextLayout();
  v0 = sub_1E383BCC0();
  (*(*v0 + 1696))(19);
  OUTLINED_FUNCTION_36();
  (*(v1 + 1792))(10);

  v2 = *sub_1E3E5FDEC();
  v3 = *(*v0 + 680);
  v4 = v2;
  v3(v2);

  OUTLINED_FUNCTION_36();
  (*(v5 + 2056))(1, 0);
  return v0;
}

id sub_1E3D4C2DC(void *a1)
{
  v1 = [objc_opt_self() preferredFontForTextStyle_];

  return v1;
}

id sub_1E3D4C32C(id *a1)
{
  [*a1 setTextStyle_];
  v1 = OUTLINED_FUNCTION_25_74();

  return [v1 v2];
}

void sub_1E3D4C388(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34)
{
  OUTLINED_FUNCTION_16_109();
  v35 = v34;
  v36 = objc_opt_self();
  v37 = [v36 preferredFontForTextStyle_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28F38, &unk_1E4298E90);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E4297BE0;
  v39 = *MEMORY[0x1E69DB8F0];
  *(inited + 32) = *MEMORY[0x1E69DB8F0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28F40, &unk_1E4298B00);
  v40 = swift_initStackObject();
  OUTLINED_FUNCTION_15_114(v40, v41, v42, v43, v44, v45, v46, v47, v48, v49);
  v50 = *MEMORY[0x1E69DB990];
  *(v51 + 32) = *MEMORY[0x1E69DB990];
  OUTLINED_FUNCTION_45_0(v51, *MEMORY[0x1E69DB980]);
  OUTLINED_FUNCTION_2_3();
  sub_1E375874C(v52, v53, &unk_1E4298E20);
  v54 = v39;
  v55 = v50;
  v56 = OUTLINED_FUNCTION_43_5();
  OUTLINED_FUNCTION_28_60(v56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28F50, &qword_1E4298EA0);
  OUTLINED_FUNCTION_1_0();
  v59 = sub_1E375874C(v57, v58, &unk_1E4299268);
  v60 = OUTLINED_FUNCTION_41_14(v59);
  v61 = [v37 fontDescriptor];
  sub_1E3754784(v60);

  v62 = OUTLINED_FUNCTION_42_11();

  v63 = [v61 fontDescriptorByAddingAttributes_];

  [v37 pointSize];
  [v36 fontWithDescriptor:v63 size:?];

  OUTLINED_FUNCTION_17_105();
}

void sub_1E3D4C58C(uint64_t a1)
{
  sub_1E4205BF4();
  OUTLINED_FUNCTION_2_10();
  v4 = v3;
  v6 = MEMORY[0x1EEE9AC00](v5);
  v8 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v8, a1, v1, v6);
  if ((*(v4 + 88))(v8, v1) != *MEMORY[0x1E69D3D88])
  {
    v10 = [objc_opt_self() sharedApplication];
    v11 = [v10 preferredContentSizeCategory];

    v12 = sub_1E4205F14();
    v14 = v13;
    v15 = sub_1E4205F14();
    if (v12 == v15 && v14 == v16)
    {
    }

    else
    {
      v18 = OUTLINED_FUNCTION_23_72(v15);

      if ((v18 & 1) == 0)
      {
        v19 = sub_1E4205F14();
        v21 = v20;
        v22 = sub_1E4205F14();
        if (v19 == v22 && v21 == v23)
        {
        }

        else
        {
          v25 = OUTLINED_FUNCTION_23_72(v22);

          if ((v25 & 1) == 0)
          {
            v26 = *MEMORY[0x1E69DDC20];
            v27 = *MEMORY[0x1E69DDC30];
            v28 = v26;
            if ((sub_1E4206CC4() & 1) == 0)
            {
              __break(1u);
              goto LABEL_45;
            }

            if (sub_1E4206CB4())
            {
              v29 = sub_1E4206CC4();

              if (v29)
              {
                type metadata accessor for LayoutGrid();
                v31 = sub_1E3A256EC();
                sub_1E3A2511C(v31);
                v30.n128_u64[0] = 0x4074000000000000;
              }
            }

            else
            {
            }

LABEL_34:
            (*(v4 + 8))(v8, v1, v30);
            return;
          }
        }

        type metadata accessor for LayoutGrid();
        v50 = sub_1E3A256EC();
        sub_1E3A2511C(v50);
        v30.n128_u64[0] = 0x4070200000000000;
        goto LABEL_34;
      }
    }

    type metadata accessor for LayoutGrid();
    v49 = sub_1E3A256EC();
    sub_1E3A2511C(v49);
    v30.n128_u64[0] = 0x406C800000000000;
    goto LABEL_34;
  }

  type metadata accessor for LayoutGrid();
  v9 = sub_1E3A256EC();
  if (sub_1E3A2511C(v9))
  {
    return;
  }

  v32 = [objc_opt_self() sharedApplication];
  v33 = [v32 preferredContentSizeCategory];

  v34 = sub_1E4205F14();
  v36 = v35;
  v37 = sub_1E4205F14();
  if (v34 == v37 && v36 == v38)
  {

    goto LABEL_36;
  }

  OUTLINED_FUNCTION_22_71(v37);
  OUTLINED_FUNCTION_7_8();

  if (v34)
  {
    goto LABEL_36;
  }

  v40 = sub_1E4205F14();
  v42 = v41;
  v43 = sub_1E4205F14();
  if (v40 == v43 && v42 == v44)
  {

    goto LABEL_36;
  }

  OUTLINED_FUNCTION_22_71(v43);
  OUTLINED_FUNCTION_7_8();

  if (v40)
  {
LABEL_36:

    return;
  }

  v46 = *MEMORY[0x1E69DDC20];
  v47 = *MEMORY[0x1E69DDC30];
  v48 = v46;
  if ((sub_1E4206CC4() & 1) == 0)
  {
LABEL_45:
    __break(1u);
    return;
  }

  if (sub_1E4206CB4())
  {
    sub_1E4206CC4();
  }
}

double sub_1E3D4CA60()
{
  v1 = v0;
  type metadata accessor for LayoutGrid();
  v2 = sub_1E3A256EC();
  v3 = sub_1E3A24FDC(v2);
  v4 = sub_1E3A256EC();
  v5 = sub_1E3A2511C(v4);
  v6 = [objc_opt_self() sharedApplication];
  v7 = [v6 preferredContentSizeCategory];

  v8 = sub_1E4206C84();
  result = 430.0;
  if (v3 & 1) == 0 && (v5 & 1) != 0 && (v8)
  {
    return *(v1 + 232);
  }

  return result;
}

void sub_1E3D4CB1C()
{
  v0 = [objc_opt_self() sharedApplication];
  v1 = [v0 preferredContentSizeCategory];

  LOBYTE(v0) = sub_1E4206C84();
  if ((v0 & 1) == 0)
  {
    v2 = [objc_opt_self() preferredFontForTextStyle_];
    [v2 ascender];
  }
}

id sub_1E3D4CBEC()
{
  v0 = objc_opt_self();
  v1 = [v0 systemFontOfSize:11.0 weight:*MEMORY[0x1E69DB980]];
  v2 = [v1 fontDescriptor];
  v3 = [v2 fontDescriptorWithDesign_];

  if (!v3)
  {
    return v1;
  }

  v4 = [v0 fontWithDescriptor:v3 size:11.0];

  return v4;
}

void sub_1E3D4CCC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34)
{
  OUTLINED_FUNCTION_16_109();
  v34 = objc_opt_self();
  v35 = [v34 preferredFontForTextStyle_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28F38, &unk_1E4298E90);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E4297BE0;
  v37 = *MEMORY[0x1E69DB8F0];
  *(inited + 32) = *MEMORY[0x1E69DB8F0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28F40, &unk_1E4298B00);
  v38 = swift_initStackObject();
  OUTLINED_FUNCTION_15_114(v38, v39, v40, v41, v42, v43, v44, v45, v46, v47);
  v48 = *MEMORY[0x1E69DB990];
  *(v49 + 32) = *MEMORY[0x1E69DB990];
  OUTLINED_FUNCTION_45_0(v49, *MEMORY[0x1E69DB980]);
  OUTLINED_FUNCTION_2_3();
  sub_1E375874C(v50, v51, &unk_1E4298E20);
  v52 = v37;
  v53 = v48;
  v54 = OUTLINED_FUNCTION_43_5();
  OUTLINED_FUNCTION_28_60(v54);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28F50, &qword_1E4298EA0);
  OUTLINED_FUNCTION_1_0();
  v57 = sub_1E375874C(v55, v56, &unk_1E4299268);
  v58 = OUTLINED_FUNCTION_41_14(v57);
  v59 = [v35 fontDescriptor];
  sub_1E3754784(v58);

  v60 = OUTLINED_FUNCTION_42_11();

  v61 = [v59 fontDescriptorByAddingAttributes_];

  v62 = [v61 fontDescriptorWithDesign_];
  if (v62)
  {
    v63 = v62;
    [v35 pointSize];
    [v34 fontWithDescriptor:v63 size:?];

    v61 = v63;
  }

  OUTLINED_FUNCTION_17_105();
}

id sub_1E3D4CF04()
{
  v0 = objc_allocWithZone(MEMORY[0x1E69DC888]);

  return [v0 initWithRed:1.0 green:0.31372549 blue:0.4 alpha:1.0];
}

double sub_1E3D4CF58()
{
  type metadata accessor for LayoutGrid();
  v0 = sub_1E3A256EC();
  if (sub_1E373F630(v0, 0, v1))
  {
    return 45.0;
  }

  v3 = sub_1E3A256EC();
  v5 = sub_1E373F630(v3, 1, v4);
  result = 55.0;
  if (v5)
  {
    return 45.0;
  }

  return result;
}

double sub_1E3D4D0D8()
{
  v0 = [objc_opt_self() preferredFontForTextStyle_];
  [v0 descender];
  v2 = v1;

  return -fabs(v2);
}

id sub_1E3D4D148()
{
  v0 = objc_opt_self();
  v1 = [v0 blackColor];
  v2 = [v0 whiteColor];
  v3 = [v0 vui:v1 dynamicColorWithLightColor:v2 darkColor:?];

  return v3;
}

double sub_1E3D4D1E0()
{
  v0 = objc_opt_self();
  v1 = *MEMORY[0x1E69DDD58];
  v2 = [v0 preferredFontForTextStyle_];
  v3 = sub_1E3DA9F20();

  if (!v3)
  {
    goto LABEL_6;
  }

  v2 = UIFontDescriptor.vuiWithSymbolicTraits(_:)(0x400u);

  if (!v2)
  {
    goto LABEL_6;
  }

  v4 = sub_1E3280A90(0, &qword_1ECF29388, 0x1E69DB878);
  v5 = v2;
  v2 = v4;
  v6 = sub_1E3DA9F68(v5, 0.0);
  if (!v6)
  {

LABEL_6:
    v7 = OUTLINED_FUNCTION_27_61([v0 preferredFontForTextStyle_]);
    goto LABEL_7;
  }

  v7 = OUTLINED_FUNCTION_27_61(v6);

LABEL_7:
  return v7;
}

id sub_1E3D4D2F4(uint64_t a1)
{
  sub_1E4201CF4();
  OUTLINED_FUNCTION_2_10();
  v4 = v3;
  v6 = MEMORY[0x1EEE9AC00](v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v8, a1, v1, v6);
  v9 = (*(v4 + 88))(v8, v1);
  if (v9 == *MEMORY[0x1E697F600])
  {
    v10 = sub_1E3E5FDEC();
  }

  else
  {
    if (v9 != *MEMORY[0x1E697F608])
    {
      v13 = sub_1E3E5FDEC();
      v14 = *(v4 + 8);
      v15 = *v13;
      v14(v8, v1);
      return v15;
    }

    v10 = sub_1E3E5FD88();
  }

  v11 = *v10;

  return v11;
}

double sub_1E3D4D458()
{
  v0 = [objc_opt_self() sharedApplication];
  v1 = [v0 preferredContentSizeCategory];

  LOBYTE(v0) = sub_1E4206C84();
  if (v0)
  {
    return INFINITY;
  }

  type metadata accessor for LayoutGrid();
  v3 = sub_1E3A256EC();
  v2 = 129.0;
  if ((sub_1E373F630(v3, 0, v4) & 1) == 0)
  {
    v5 = sub_1E3A256EC();
    if ((sub_1E373F630(v5, 1, v6) & 1) == 0)
    {
      v7 = sub_1E3A256EC();
      if ((sub_1E373F630(v7, 2, v8) & 1) == 0)
      {
        v9 = sub_1E3A256EC();
        if (sub_1E373F630(v9, 3, v10))
        {
          return 129.0;
        }

        else
        {
          return 105.0;
        }
      }
    }
  }

  return v2;
}

double sub_1E3D4D544()
{
  v0 = [objc_opt_self() sharedApplication];
  v1 = [v0 preferredContentSizeCategory];

  LOBYTE(v0) = sub_1E4206C84();
  if (v0)
  {
    return INFINITY;
  }

  type metadata accessor for LayoutGrid();
  v3 = sub_1E3A256EC();
  v2 = 102.0;
  if ((sub_1E373F630(v3, 0, v4) & 1) == 0)
  {
    v5 = sub_1E3A256EC();
    if ((sub_1E373F630(v5, 1, v6) & 1) == 0)
    {
      v7 = sub_1E3A256EC();
      if ((sub_1E373F630(v7, 2, v8) & 1) == 0)
      {
        v9 = sub_1E3A256EC();
        if (sub_1E373F630(v9, 3, v10))
        {
          return 102.0;
        }

        else
        {
          return 77.0;
        }
      }
    }
  }

  return v2;
}

uint64_t sub_1E3D4D630(uint64_t a1)
{
  (*(**a1 + 1696))(19);
  OUTLINED_FUNCTION_36();
  (*(v1 + 2056))(1, 0);
  v2 = [objc_opt_self() systemGray2Color];
  OUTLINED_FUNCTION_36();
  (*(v3 + 680))();
  OUTLINED_FUNCTION_36();
  return (*(v4 + 1792))(10);
}

double sub_1E3D4D748()
{
  v0 = [objc_opt_self() sharedApplication];
  v1 = [v0 preferredContentSizeCategory];

  LOBYTE(v0) = sub_1E4206C84();
  result = 10.0;
  if (v0)
  {
    return 19.0;
  }

  return result;
}

double sub_1E3D4D7C8()
{
  v0 = [objc_opt_self() sharedApplication];
  v1 = [v0 preferredContentSizeCategory];

  LOBYTE(v0) = sub_1E4206C84();
  result = 12.0;
  if (v0)
  {
    return 20.0;
  }

  return result;
}

double sub_1E3D4D844()
{
  v0 = [objc_opt_self() sharedApplication];
  v1 = [v0 preferredContentSizeCategory];

  LOBYTE(v0) = sub_1E4206C84();
  result = 10.0;
  if (v0)
  {
    return 16.0;
  }

  return result;
}

void sub_1E3D4D8C0()
{
  v0 = [objc_opt_self() sharedApplication];
  v1 = [v0 preferredContentSizeCategory];

  LOBYTE(v0) = sub_1E4206C84();
  if ((v0 & 1) == 0)
  {
    v2 = [objc_opt_self() preferredFontForTextStyle_];
    [v2 leading];
  }
}

void sub_1E3D4D988()
{
  v0 = [objc_opt_self() sharedApplication];
  v1 = [v0 preferredContentSizeCategory];

  LOBYTE(v0) = sub_1E4206C84();
  if ((v0 & 1) == 0)
  {
    v2 = [objc_opt_self() preferredFontForTextStyle_];
    [v2 leading];
  }
}

void sub_1E3D4DA50()
{
  v0 = [objc_opt_self() sharedApplication];
  v1 = [v0 preferredContentSizeCategory];

  LOBYTE(v0) = sub_1E4206C84();
  if ((v0 & 1) == 0)
  {
    v2 = [objc_opt_self() preferredFontForTextStyle_];
    [v2 ascender];
  }
}

double sub_1E3D4DB14()
{
  v1 = [objc_opt_self() sharedApplication];
  v2 = [v1 preferredContentSizeCategory];

  sub_1E4205F14();
  OUTLINED_FUNCTION_4_11();
  OUTLINED_FUNCTION_5_18();
  v5 = v5 && v0 == v4;
  if (v5)
  {

    return 40.0;
  }

  else
  {
    v6 = OUTLINED_FUNCTION_0_68(v3);

    result = 40.0;
    if ((v6 & 1) == 0)
    {
      return 30.0;
    }
  }

  return result;
}

void sub_1E3D4DBE8()
{
  v0 = [objc_opt_self() sharedApplication];
  v1 = [v0 preferredContentSizeCategory];

  LOBYTE(v0) = sub_1E4206C84();
  if ((v0 & 1) == 0)
  {
    sub_1E3D4DB14();
  }
}

double sub_1E3D4DC80()
{
  v2 = [objc_opt_self() sharedApplication];
  v3 = [v2 preferredContentSizeCategory];

  sub_1E4205F14();
  OUTLINED_FUNCTION_4_11();
  OUTLINED_FUNCTION_5_18();
  v6 = v6 && v0 == v5;
  if (v6)
  {
    goto LABEL_18;
  }

  OUTLINED_FUNCTION_0_68(v4);
  OUTLINED_FUNCTION_7_8();

  if (v1)
  {
LABEL_6:

    return 8.0;
  }

  sub_1E4205F14();
  OUTLINED_FUNCTION_4_11();
  OUTLINED_FUNCTION_5_18();
  if (v6 && v0 == v8)
  {
LABEL_18:

    return 8.0;
  }

  OUTLINED_FUNCTION_0_68(v7);
  OUTLINED_FUNCTION_7_8();

  if (v1)
  {
    goto LABEL_6;
  }

  sub_1E4205F14();
  OUTLINED_FUNCTION_4_11();
  OUTLINED_FUNCTION_5_18();
  if (v6 && v0 == v11)
  {
    goto LABEL_32;
  }

  OUTLINED_FUNCTION_0_68(v10);
  OUTLINED_FUNCTION_7_8();

  if (v1)
  {
LABEL_17:

    return 20.0;
  }

  sub_1E4205F14();
  OUTLINED_FUNCTION_4_11();
  OUTLINED_FUNCTION_5_18();
  if (v6 && v0 == v15)
  {
    goto LABEL_32;
  }

  OUTLINED_FUNCTION_0_68(v14);
  OUTLINED_FUNCTION_7_8();

  if (v1)
  {
    goto LABEL_17;
  }

  sub_1E4205F14();
  OUTLINED_FUNCTION_4_11();
  OUTLINED_FUNCTION_5_18();
  if (v6 && v0 == v18)
  {
LABEL_32:

    return 20.0;
  }

  v20 = OUTLINED_FUNCTION_0_68(v17);

  result = 6.0;
  if (v20)
  {
    return 20.0;
  }

  return result;
}

id sub_1E3D4DE48(id *a1)
{
  [*a1 setTextStyle_];
  v1 = OUTLINED_FUNCTION_25_74();

  return [v1 v2];
}

void sub_1E3D4DE98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34)
{
  OUTLINED_FUNCTION_16_109();
  v34 = objc_opt_self();
  v35 = [v34 preferredFontForTextStyle_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28F38, &unk_1E4298E90);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E4297BE0;
  v37 = *MEMORY[0x1E69DB8F0];
  *(inited + 32) = *MEMORY[0x1E69DB8F0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28F40, &unk_1E4298B00);
  v38 = swift_initStackObject();
  OUTLINED_FUNCTION_15_114(v38, v39, v40, v41, v42, v43, v44, v45, v46, v47);
  v48 = *MEMORY[0x1E69DB990];
  *(v49 + 32) = *MEMORY[0x1E69DB990];
  OUTLINED_FUNCTION_45_0(v49, *MEMORY[0x1E69DB980]);
  OUTLINED_FUNCTION_2_3();
  sub_1E375874C(v50, v51, &unk_1E4298E20);
  v52 = v37;
  v53 = v48;
  v54 = OUTLINED_FUNCTION_43_5();
  OUTLINED_FUNCTION_28_60(v54);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28F50, &qword_1E4298EA0);
  OUTLINED_FUNCTION_1_0();
  v57 = sub_1E375874C(v55, v56, &unk_1E4299268);
  v58 = OUTLINED_FUNCTION_41_14(v57);
  v59 = [v35 fontDescriptor];
  sub_1E3754784(v58);

  v60 = OUTLINED_FUNCTION_42_11();

  v61 = [v59 fontDescriptorByAddingAttributes_];

  [v35 pointSize];
  [v34 fontWithDescriptor:v61 size:?];

  OUTLINED_FUNCTION_17_105();
}

uint64_t sub_1E3D4E638(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 520))
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

uint64_t sub_1E3D4E678(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
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
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *(result + 504) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 520) = 1;
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

    *(result + 520) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

id sub_1E3D4E75C()
{
  v1 = OBJC_IVAR___VUIAccountViewController____lazy_storage___accountSettingsViewController;
  v2 = *(v0 + OBJC_IVAR___VUIAccountViewController____lazy_storage___accountSettingsViewController);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR___VUIAccountViewController____lazy_storage___accountSettingsViewController);
LABEL_8:
    v12 = v2;
    return v3;
  }

  v4 = [objc_allocWithZone(VUIAccountSettingsViewController) init];
  v5 = [v4 navigationItem];
  result = [objc_opt_self() sharedInstance];
  if (result)
  {
    v7 = result;
    sub_1E3741090(0xD000000000000010, 0x80000001E4280880, result);
    v9 = v8;

    if (v9)
    {
      v10 = sub_1E4205ED4();
    }

    else
    {
      v10 = 0;
    }

    [v5 setTitle_];

    v11 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
    goto LABEL_8;
  }

  __break(1u);
  return result;
}

id sub_1E3D4E898()
{
  v1 = OBJC_IVAR___VUIAccountViewController____lazy_storage___signInController;
  v2 = *(v0 + OBJC_IVAR___VUIAccountViewController____lazy_storage___signInController);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR___VUIAccountViewController____lazy_storage___signInController);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x1E698BB48]) init];
    [v4 setDelegate_];
    [v4 setServiceType_];
    [v4 setAmpServiceType_];
    v5 = [v4 navigationItem];
    [v5 setLargeTitleDisplayMode_];

    v6 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

id AccountViewController.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id AccountViewController.init()()
{
  OUTLINED_FUNCTION_9_66(&OBJC_IVAR___VUIAccountViewController_activeViewController);
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AccountViewController();
  return objc_msgSendSuper2(&v2, sel_initWithNibName_bundle_, 0, 0);
}

void sub_1E3D4EA78()
{
  OUTLINED_FUNCTION_9_66(&OBJC_IVAR___VUIAccountViewController_activeViewController);
  sub_1E42076B4();
  __break(1u);
}

Swift::Void __swiftcall AccountViewController.viewWillAppear(_:)(Swift::Bool a1)
{
  v2 = v1;
  v36.receiver = v2;
  v36.super_class = type metadata accessor for AccountViewController();
  objc_msgSendSuper2(&v36, sel_viewWillAppear_, a1);
  if ([objc_opt_self() userHasActiveAccount])
  {
    v4 = sub_1E3D4E75C();
  }

  else
  {
    v4 = sub_1E3D4E898();
  }

  v5 = v4;
  v37 = 0;
  v38 = 0xE000000000000000;
  sub_1E42074B4();

  v37 = 0xD00000000000001ELL;
  v38 = 0x80000001E42808A0;
  v6 = [v5 description];
  v7 = sub_1E4205F14();
  v9 = v8;

  MEMORY[0x1E69109E0](v7, v9);

  v10 = v38;
  OUTLINED_FUNCTION_0_58();
  sub_1E3D4F4AC(v11, v10, v12);

  v13 = OBJC_IVAR___VUIAccountViewController_activeViewController;
  v14 = *&v2[OBJC_IVAR___VUIAccountViewController_activeViewController];
  if (v14)
  {
    [v14 vui:0 willMoveToParentViewController:?];
    v14 = *&v2[v13];
    if (v14)
    {
      v15 = [v14 vuiView];
      if (!v15)
      {
LABEL_22:
        __break(1u);
        return;
      }

      v16 = v15;
      [v15 removeFromSuperview];

      v14 = *&v2[v13];
    }
  }

  [v14 vui_removeFromParentViewController];
  [v2 vui:v5 addChildViewController:?];
  [v5 vui:v2 didMoveToParentViewController:?];
  v17 = [v2 vuiView];
  if (!v17)
  {
    __break(1u);
    goto LABEL_21;
  }

  v18 = v17;
  v19 = [v5 vuiView];
  if (!v19)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v20 = v19;
  [v18 addSubview_];

  v21 = *&v2[v13];
  *&v2[v13] = v5;
  v22 = v5;

  v23 = OUTLINED_FUNCTION_6_152();
  v24 = OUTLINED_FUNCTION_2_174();
  if (sub_1E3D4F82C(v24, &selRef_rightBarButtonItems))
  {
    sub_1E3280A90(0, qword_1EE23B2E0, 0x1E69DC708);
    v25 = sub_1E42062A4();
  }

  else
  {
    v25 = 0;
  }

  [v5 setRightBarButtonItems_];

  v26 = OUTLINED_FUNCTION_6_152();
  v27 = OUTLINED_FUNCTION_2_174();
  if (sub_1E3D4F82C(v27, &selRef_leftBarButtonItems))
  {
    sub_1E3280A90(0, qword_1EE23B2E0, 0x1E69DC708);
    v28 = sub_1E42062A4();
  }

  else
  {
    v28 = 0;
  }

  [v5 setLeftBarButtonItems_];

  v29 = OUTLINED_FUNCTION_6_152();
  v30 = OUTLINED_FUNCTION_2_174();
  sub_1E37AD648(v30);
  if (v31)
  {
    v32 = sub_1E4205ED4();
  }

  else
  {
    v32 = 0;
  }

  [v5 setTitle_];

  v33 = OUTLINED_FUNCTION_6_152();
  v34 = [v22 navigationItem];
  v35 = [v34 largeTitleDisplayMode];

  [v33 setLargeTitleDisplayMode_];
}

Swift::Void __swiftcall AccountViewController.viewDidLayoutSubviews()()
{
  v15.receiver = v0;
  v15.super_class = type metadata accessor for AccountViewController();
  objc_msgSendSuper2(&v15, sel_viewDidLayoutSubviews);
  v1 = *&v0[OBJC_IVAR___VUIAccountViewController_activeViewController];
  if (v1)
  {
    v2 = v1;
    [v2 preferredContentSize];
    [v0 setPreferredContentSize_];
    v3 = [v2 vuiView];
    if (v3)
    {
      v4 = v3;
      v5 = [v0 vuiView];
      if (v5)
      {
        v6 = v5;
        [v5 bounds];
        v8 = v7;
        v10 = v9;
        v12 = v11;
        v14 = v13;

        [v4 setFrame_];
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }
}

id AccountViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_1E4205ED4();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id AccountViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AccountViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id AccountViewController.signInControllerDidCancel(_:)()
{
  OUTLINED_FUNCTION_0_58();
  sub_1E3D4F4AC(0xD00000000000001BLL, v0 | 0x8000000000000000, v1);
  OUTLINED_FUNCTION_27_6();
  [v2 v3];
  OUTLINED_FUNCTION_27_6();

  return [v4 v5];
}

id AccountViewController.signInController(_:didCompleteWithOperationsResults:)(uint64_t a1, uint64_t a2)
{
  v3 = sub_1E4205F14();
  v5 = sub_1E378A81C(v3, v4, a2);

  if (v5)
  {
    sub_1E42074B4();

    v6 = [v5 description];
    v7 = sub_1E4205F14();
    v9 = v8;

    MEMORY[0x1E69109E0](v7, v9);

    OUTLINED_FUNCTION_0_58();
    sub_1E3D4F4AC(v10, 0x80000001E4280760, v11);

    v12 = [v5 error];
    if (v12)
    {
      v13 = v12;
      sub_1E42074B4();
      MEMORY[0x1E69109E0](0xD000000000000023, 0x80000001E4280790);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF32480, &unk_1E42A9410);
      sub_1E4207614();
      sub_1E3D4F4AC(0, 0xE000000000000000, MEMORY[0x1E69E9440]);
    }
  }

  OUTLINED_FUNCTION_27_6();
  [v14 v15];
  OUTLINED_FUNCTION_27_6();
  return [v16 v17];
}

uint64_t sub_1E3D4F4AC(uint64_t a1, unint64_t a2, uint64_t (*a3)(void))
{
  v7 = sub_1E41FFCB4();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1E324FBDC();
  (*(v8 + 16))(v10, v11, v7);
  v12 = v3;

  v13 = sub_1E41FFC94();
  v14 = a3();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v19 = v16;
    *v15 = 67109378;
    *(v15 + 4) = [objc_opt_self() userHasActiveAccount];

    *(v15 + 8) = 2080;
    *(v15 + 10) = sub_1E3270FC8(a1, a2, &v19);
    _os_log_impl(&dword_1E323F000, v13, v14, "AccountViewController(SignedIn=%{BOOL}d) - %s", v15, 0x12u);
    __swift_destroy_boxed_opaque_existential_1(v16);
    MEMORY[0x1E69143B0](v16, -1, -1);
    MEMORY[0x1E69143B0](v15, -1, -1);
  }

  else
  {
  }

  return (*(v8 + 8))(v10, v7);
}

id AccountViewController.signInControllerDidSkip(_:)()
{
  OUTLINED_FUNCTION_0_58();
  sub_1E3D4F4AC(0xD000000000000019, v0 | 0x8000000000000000, v1);
  OUTLINED_FUNCTION_27_6();
  [v2 v3];
  OUTLINED_FUNCTION_27_6();

  return [v4 v5];
}

uint64_t sub_1E3D4F82C(void *a1, SEL *a2)
{
  v3 = [a1 *a2];

  if (!v3)
  {
    return 0;
  }

  sub_1E3280A90(0, qword_1EE23B2E0, 0x1E69DC708);
  v4 = sub_1E42062B4();

  return v4;
}

uint64_t sub_1E3D4F8C4()
{
  type metadata accessor for TextLayout();
  v0 = sub_1E383BCC0();

  v1 = *sub_1E3E5FD88();
  v2 = *(*v0 + 680);
  v3 = v1;
  v2(v1);

  (*(*v0 + 1696))(15);
  (*(*v0 + 2176))(0, 0);
  OUTLINED_FUNCTION_8_132();
  __asm { FMOV            V1.2D, #20.0 }

  v40[0] = xmmword_1E42AE100;
  v40[1] = _Q1;
  v41 = 0;
  v38[0] = _Q1;
  v38[1] = _Q1;
  v39 = 0;
  v36[0] = xmmword_1E42AE100;
  v36[1] = xmmword_1E42AE100;
  v37 = 0;
  __asm { FMOV            V1.2D, #24.0 }

  v34[0] = xmmword_1E42CDF90;
  v34[1] = _Q1;
  v35 = 0;
  type metadata accessor for UIEdgeInsets();
  v11 = v10;
  v12 = sub_1E3C3DE00();
  OUTLINED_FUNCTION_107(v12, v13, v14, v15, v16, v17, v18, v19, v31[0], v31[1], v31[2], v31[3], v31[4], v31[5], v31[6], v31[7], v31[8], v31[9], v31[10], v31[11], v31[12], v31[13], v31[14], v31[15], v31[16], v31[17], v31[18], v31[19], v31[20], v31[21], v31[22], v31[23], v31[24], v31[25], v31[26], v31[27], v31[28], v31[29], v32[0], v32[1], v32[2], v32[3], v32[4], v32[5], v33);
  sub_1E3C2FCB8(v31, v40, v38, v32, v36, v34, v11, __src);
  memcpy(v31, __src, 0xE9uLL);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_14();
  v28 = OUTLINED_FUNCTION_6_153(v20, v21, v22, v23, v24, v25, v26, v27, v31[0]);
  v29(v28);
  return v0;
}

uint64_t sub_1E3D4FADC()
{
  type metadata accessor for TextLayout();
  v0[13] = sub_1E383BCC0();
  v0[14] = sub_1E383BCC0();
  v0[15] = sub_1E383BCC0();
  type metadata accessor for DescriptionTemplateLayout();
  v0[16] = sub_1E3D4F8C4();
  v1 = sub_1E3C2F9A0();

  v2 = *sub_1E3E5FD88();
  v3 = *(*v1 + 1720);
  v4 = v2;
  v5 = v3();
  sub_1E3952C58();
  v100[0] = v6;
  v100[1] = v7;
  v100[2] = v8;
  v100[3] = v9;
  v101 = 0;
  (*(*v5 + 160))(v100);

  (v3)(v10);
  OUTLINED_FUNCTION_2_1();
  v12 = *(v11 + 680);
  v84 = v4;
  v85 = v4;
  v12(v4);

  (v3)(v13);
  OUTLINED_FUNCTION_2_1();
  (*(v14 + 1792))(7);

  (v3)(v15);
  LOBYTE(v86[0]) = 10;
  LOBYTE(v93) = 11;
  LOBYTE(v92) = 11;
  LOBYTE(v91) = 7;
  sub_1E3C3DE00();
  v16 = OUTLINED_FUNCTION_9_122();
  LOBYTE(v87) = v88;
  OUTLINED_FUNCTION_1_206(v16, v17, v18, v19, v20, v21);
  OUTLINED_FUNCTION_5_157();
  OUTLINED_FUNCTION_14();
  (*(v22 + 1600))(v86, 54, v23 & 1, &qword_1F5D54AF8);

  (v3)(v24);
  v25 = *sub_1E3E60548();
  v86[0] = v25;
  v92 = 0;
  v93 = 0;
  v26 = objc_opt_self();
  v27 = v25;
  v91 = [v26 clearColor];
  v28 = sub_1E3755B54();
  sub_1E3C3DE00();
  v89 = v90;
  v29 = sub_1E3C3DE00();
  v87 = v88;
  OUTLINED_FUNCTION_1_206(v29, v30, v31, v32, v33, v34);
  v36 = v94;
  v35 = v95;
  v37 = v96;
  v38 = v97;
  v40 = v98;
  v39 = v99;
  v86[0] = v94;
  v86[1] = v95;
  v86[2] = v96;
  v86[3] = v97;
  v86[4] = v98;
  v86[5] = v99;
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_14();
  (*(v41 + 1600))(v86, 24, v42 & 1, v28);

  v3();
  LOBYTE(v86[0]) = 3;
  LOBYTE(v93) = 27;
  LOBYTE(v92) = 27;
  LOBYTE(v91) = 2;
  sub_1E3C3DE00();
  v43 = OUTLINED_FUNCTION_9_122();
  LOBYTE(v87) = v88;
  OUTLINED_FUNCTION_1_206(v43, v44, v45, v46, v47, v48);
  OUTLINED_FUNCTION_5_157();
  OUTLINED_FUNCTION_14();
  (*(v49 + 1600))(v86, 48, v50 & 1, &qword_1F5D549D8);

  (v3)(v51);
  OUTLINED_FUNCTION_2_1();
  (*(v52 + 2056))(2, 0);

  (v3)(v53);
  OUTLINED_FUNCTION_2_1();
  (*(v54 + 1984))(1);

  (v3)(v55);
  OUTLINED_FUNCTION_2_1();
  (*(v56 + 256))(0x408C500000000000, 0);

  (v3)(v57);
  OUTLINED_FUNCTION_2_1();
  (*(v58 + 1720))(3);

  v60 = *(*v1 + 1768);
  v61 = v60(v59);
  sub_1E3952C94();
  v94 = v62;
  v95 = v63;
  v96 = v64;
  v97 = v65;
  LOBYTE(v98) = 0;
  (*(*v61 + 160))(&v94);

  v60(v66);
  OUTLINED_FUNCTION_2_1();
  (*(v67 + 680))(v84);

  v60(v68);
  OUTLINED_FUNCTION_2_1();
  (*(v69 + 1696))(15);

  v71 = *(*v1 + 1744);
  v71(v70);
  OUTLINED_FUNCTION_2_1();
  (*(v72 + 1696))(15);

  v71(v73);
  OUTLINED_FUNCTION_2_1();
  (*(v74 + 1720))(10);

  v76 = (v3)(v75);
  sub_1E3C37CBC(v76, 23);

  v78 = v60(v77);
  sub_1E3C37CBC(v78, 15);

  v80 = (v71)(v79);
  sub_1E3C37CBC(v80, 24);

  v82 = (*(*v1 + 1792))(v81);
  sub_1E3C37CBC(v82, 9);

  return v1;
}

uint64_t sub_1E3D5030C()
{
  type metadata accessor for TextLayout();
  v0 = sub_1E383BCC0();
  (*(*v0 + 1696))(15);
  OUTLINED_FUNCTION_8_132();
  v40[0] = xmmword_1E42CA3A0;
  v40[1] = xmmword_1E42CDFA0;
  v41 = 0;
  type metadata accessor for UIEdgeInsets();
  v2 = v1;
  sub_1E3C2FC98();
  v35[0] = v37;
  v35[1] = v38;
  v36 = v39;
  sub_1E3C3DE00();
  v30[0] = v32;
  v30[1] = v33;
  v31 = v34;
  sub_1E3C3DE00();
  v25[0] = v27;
  v25[1] = v28;
  v26 = v29;
  v3 = sub_1E3C3DE00();
  OUTLINED_FUNCTION_107(v3, v4, v5, v6, v7, v8, v9, v10, v22[0], v22[1], v22[2], v22[3], v22[4], v22[5], v22[6], v22[7], v22[8], v22[9], v22[10], v22[11], v22[12], v22[13], v22[14], v22[15], v22[16], v22[17], v22[18], v22[19], v22[20], v22[21], v22[22], v22[23], v22[24], v22[25], v22[26], v22[27], v22[28], v22[29], v23[0], v23[1], v23[2], v23[3], v23[4], v23[5], v24);
  sub_1E3C2FCB8(v22, v35, v30, v25, v23, v40, v2, __src);
  memcpy(v22, __src, 0xE9uLL);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_14();
  v19 = OUTLINED_FUNCTION_6_153(v11, v12, v13, v14, v15, v16, v17, v18, v22[0]);
  v20(v19);
  return v0;
}

uint64_t sub_1E3D5047C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF37DF0, &qword_1E42CE018);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E429A200;
  *(inited + 32) = DocumentType.rawValue.getter(0);
  *(inited + 40) = v1;
  *(inited + 48) = type metadata accessor for DocumentRequestViewController(0);
  *(inited + 56) = DocumentType.rawValue.getter(1);
  *(inited + 64) = v2;
  *(inited + 72) = type metadata accessor for CanonicalDocumentViewController(0);
  *(inited + 80) = DocumentType.rawValue.getter(3);
  *(inited + 88) = v3;
  v4 = type metadata accessor for PlayerHUDDocumentViewController(0);
  *(inited + 96) = v4;
  *(inited + 104) = DocumentType.rawValue.getter(4);
  *(inited + 112) = v5;
  *(inited + 120) = v4;
  *(inited + 128) = DocumentType.rawValue.getter(5);
  *(inited + 136) = v6;
  *(inited + 144) = type metadata accessor for PostPlayDocumentViewController(0);
  *(inited + 152) = DocumentType.rawValue.getter(7);
  *(inited + 160) = v7;
  *(inited + 168) = type metadata accessor for LivePostPlayDocumentViewController(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF37DF8, &unk_1E42CE020);
  result = sub_1E4205CB4();
  qword_1EE28C478 = result;
  return result;
}

void sub_1E3D50594()
{
  OUTLINED_FUNCTION_31_1();
  v91 = v0;
  v89 = v1;
  v3 = v2;
  v4 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v90 = v5;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5();
  v9 = v8 - v7;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF363C0, &unk_1E42A9420);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v87 - v11;
  v13 = sub_1E41FE414();
  OUTLINED_FUNCTION_0_10();
  v88 = v14;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v87 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v19 = MEMORY[0x1EEE9AC00](v18).n128_u64[0];
  v21 = &v87 - v20;
  v22 = [v3 documentRef];
  v23 = sub_1E4205F14();
  v25 = v24;

  v26 = sub_1E4205F14();
  v28 = v27;
  v29 = v23 == v26 && v25 == v27;
  if (v29)
  {

LABEL_8:

    type metadata accessor for TimedMetadataViewController(0);
    v31 = OUTLINED_FUNCTION_18();
    sub_1E3AEEED4(v31 & 1, 0);
    goto LABEL_9;
  }

  v87 = v4;
  v30 = sub_1E42079A4();

  if (v30)
  {
    goto LABEL_8;
  }

  sub_1E3D50E3C(v23, v25);
  OUTLINED_FUNCTION_30_7();
  sub_1E32859C4(v3, &selRef_controllerRef);
  if (v32)
  {
    OUTLINED_FUNCTION_16_110();
    sub_1E4205F14();
    OUTLINED_FUNCTION_15_115();
    if (v29 && v28 == v34)
    {
    }

    else
    {
      OUTLINED_FUNCTION_1_207(v33);
      OUTLINED_FUNCTION_30_7();

      if ((v30 & 1) == 0)
      {
        goto LABEL_16;
      }
    }

    [objc_allocWithZone(VUIDebugViewController) init];
    goto LABEL_9;
  }

LABEL_16:
  sub_1E32859C4(v3, &selRef_controllerRef);
  if (!v36)
  {
    goto LABEL_22;
  }

  OUTLINED_FUNCTION_16_110();
  sub_1E4205F14();
  OUTLINED_FUNCTION_15_115();
  if (v29 && v28 == v38)
  {

    goto LABEL_44;
  }

  OUTLINED_FUNCTION_1_207(v37);
  OUTLINED_FUNCTION_30_7();

  if (v30)
  {
LABEL_44:
    v55 = *MetricsDiskManager.shared.unsafeMutableAddressor();
    type metadata accessor for MetricsRenderSessionListViewController();
    MetricsRenderSessionListViewController.__allocating_init(storageDataSource:)(v55);
    goto LABEL_9;
  }

LABEL_22:
  sub_1E32859C4(v3, &selRef_controllerRef);
  if (!v40)
  {
    goto LABEL_28;
  }

  OUTLINED_FUNCTION_16_110();
  sub_1E4205F14();
  OUTLINED_FUNCTION_15_115();
  if (v29 && v28 == v42)
  {
  }

  else
  {
    OUTLINED_FUNCTION_1_207(v41);
    OUTLINED_FUNCTION_30_7();

    if ((v30 & 1) == 0)
    {
LABEL_28:
      sub_1E32859C4(v3, &selRef_controllerRef);
      if (!v44)
      {
        goto LABEL_34;
      }

      OUTLINED_FUNCTION_16_110();
      sub_1E4205F14();
      OUTLINED_FUNCTION_15_115();
      if (v29 && v28 == v46)
      {
      }

      else
      {
        OUTLINED_FUNCTION_1_207(v45);
        OUTLINED_FUNCTION_30_7();

        if ((v30 & 1) == 0)
        {
LABEL_34:
          v48 = sub_1E32859C4(v3, &selRef_controllerRef);
          v50 = v49;
          v51 = sub_1E4205F14();
          if (v50)
          {
            if (v48 == v51 && v50 == v52)
            {

LABEL_65:
              type metadata accessor for SportsPlayByPlaySeeAllViewController(0);
              sub_1E41A28F0(v3);
              goto LABEL_9;
            }

            OUTLINED_FUNCTION_74();
            v54 = sub_1E42079A4();

            if (v54)
            {
              goto LABEL_65;
            }
          }

          else
          {
          }

          if (!v89)
          {
            goto LABEL_9;
          }

          v71 = v89;
          v72 = sub_1E32859C4(v3, &selRef_controllerRef);
          v74 = v73;
          v75 = sub_1E4205F14();
          if (v74)
          {
            if (v72 == v75 && v74 == v76)
            {

LABEL_78:
              sub_1E3D50FB8(v3, v71, v91);
LABEL_76:

              goto LABEL_9;
            }

            v78 = sub_1E42079A4();

            if (v78)
            {
              goto LABEL_78;
            }
          }

          else
          {
          }

          if ((sub_1E3D510B4(v3, v79, v80) & 1) == 0)
          {
            sub_1E3D51180();
          }

          goto LABEL_76;
        }
      }

      v63 = [v3 prefetchData];
      v64 = v87;
      if (!v63)
      {
        goto LABEL_68;
      }

      v65 = sub_1E3D52904(v63);
      if (!v65)
      {
        goto LABEL_68;
      }

      v66 = v65;
      v92 = sub_1E4205F14();
      v93 = v67;
      sub_1E4207414();
      sub_1E375D7E8(v66, &v95, v94);

      sub_1E375D84C(v94);
      if (v96)
      {
        if ((swift_dynamicCast() & 1) == 0)
        {
LABEL_68:
          v81 = sub_1E324FBDC();
          v82 = v90;
          (*(v90 + 16))(v9, v81, v64);
          v83 = sub_1E41FFC94();
          v84 = sub_1E4206814();
          if (os_log_type_enabled(v83, v84))
          {
            v85 = swift_slowAlloc();
            *v85 = 0;
            _os_log_impl(&dword_1E323F000, v83, v84, "UIFactory: Invalid url provided for opening web view", v85, 2u);
            OUTLINED_FUNCTION_6_0();
          }

          (*(v82 + 8))(v9, v64);
          goto LABEL_9;
        }

        sub_1E41FE404();

        if (__swift_getEnumTagSinglePayload(v12, 1, v13) != 1)
        {
          v86 = v88;
          (*(v88 + 32))(v21, v12, v13);
          type metadata accessor for WebViewController(0);
          (*(v86 + 16))(v17, v21, v13);
          sub_1E3B97990(v17);
          (*(v86 + 8))(v21, v13);
          goto LABEL_9;
        }

        v68 = &unk_1ECF363C0;
        v69 = &unk_1E42A9420;
        v70 = v12;
      }

      else
      {
        v68 = &unk_1ECF296E0;
        v69 = &unk_1E4298030;
        v70 = &v95;
      }

      sub_1E325F748(v70, v68, v69);
      goto LABEL_68;
    }
  }

  v56 = [objc_opt_self() sharedInstance];
  v57 = [v56 accountViewController];

  type metadata accessor for AccountViewController();
  v58 = swift_dynamicCastClass();
  if (v58)
  {
    v59 = *((*MEMORY[0x1E69E7D40] & *v58) + 0xB8);
    v60 = v57;
    v61 = v59();

    v62 = [v3 uiConfiguration];
    [v62 setNavigationBarHidden_];
  }

LABEL_9:
  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3D50E3C(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2F320, &unk_1E429A280);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E429A230;
  *(inited + 32) = sub_1E4205F14();
  *(inited + 40) = v5;
  *(inited + 48) = sub_1E4205F14();
  *(inited + 56) = v6;
  *(inited + 64) = sub_1E4205F14();
  *(inited + 72) = v7;
  *(inited + 80) = sub_1E4205F14();
  *(inited + 88) = v8;
  *(inited + 96) = sub_1E4205F14();
  *(inited + 104) = v9;
  *(inited + 112) = sub_1E4205F14();
  *(inited + 120) = v10;
  *(inited + 128) = sub_1E4205F14();
  *(inited + 136) = v11;
  v14[0] = a1;
  v14[1] = a2;
  v13[2] = v14;
  LOBYTE(a2) = sub_1E3849DF8(sub_1E3756228, v13, inited);
  swift_setDeallocating();
  sub_1E38272B0();
  return a2 & 1;
}

uint64_t sub_1E3D50F6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_1E327D33C(a1, a2);
  if (v5)
  {
    return *(*(a3 + 56) + 8 * v4);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1E3D50FB8(void *a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for Route(0);
  v4 = j__OUTLINED_FUNCTION_18();
  v5 = sub_1E3F4C85C(0x6D5F736172747865, 0xEB000000006E6961, v4 & 1);
  type metadata accessor for DocumentContext();
  v6 = a1;

  sub_1E3D98A84(v6, v5, 1);
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  type metadata accessor for ExtrasRootHostingController(0);

  v7 = OUTLINED_FUNCTION_16_0();
  v9 = sub_1E3DFD924(v7, v8);

  return v9;
}

uint64_t sub_1E3D510B4(void *a1, uint64_t a2, uint64_t a3)
{
  if ((TVAppFeature.isEnabled.getter(18, a2, a3) & 1) == 0)
  {
    goto LABEL_10;
  }

  v4 = sub_1E32859C4(a1, &selRef_controllerRef);
  v6 = v5;
  v7 = sub_1E4205F14();
  if (!v6)
  {

    v11 = 1;
    return v11 & 1;
  }

  if (v4 == v7 && v6 == v8)
  {

LABEL_10:
    v11 = 0;
    return v11 & 1;
  }

  v10 = sub_1E42079A4();

  v11 = v10 ^ 1;
  return v11 & 1;
}

void *sub_1E3D51180()
{
  OUTLINED_FUNCTION_8_133();
  sub_1E32859C4(v3, &selRef_documentType);
  if (!v4)
  {
    return 0;
  }

  v5._countAndFlagsBits = OUTLINED_FUNCTION_125();
  LOBYTE(v6) = DocumentType.init(rawValue:)(v5);
  if (v6 == 8)
  {
    goto LABEL_11;
  }

  v7 = v6;
  if (_MergedGlobals_232 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v8 = OUTLINED_FUNCTION_125();
  v11 = sub_1E3D50F6C(v8, v9, v10);
  if (!v11)
  {
    swift_endAccess();
LABEL_11:

    return 0;
  }

  v12 = v11;
  swift_endAccess();

  v13 = sub_1E32859C4(v2, &selRef_controllerRef);
  if (!v14)
  {
    return 0;
  }

  v15 = v13;
  v16 = v14;
  type metadata accessor for DocumentServiceRequestContext(0);
  memset(&v40, 0, 32);
  v38 = 0u;
  v39 = 0u;
  v17 = OUTLINED_FUNCTION_18();
  v18 = v1;
  v19 = DocumentServiceRequestContext.__allocating_init(documentType:requestType:controllerRef:appContext:contextDataRef:prefetchDataRef:animateUpdates:)(v7, 0, v15, v16, v1, &v40, &v38, v17 & 1);
  v20 = [v2 contextData];
  if (v20 && (v21 = v20, v22 = [v20 jsonData], v21, v22))
  {
    v23 = sub_1E4205C64();

    *&v40.withZoomTransition = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C8C0, &unk_1E42A1250);
    *&v40.loadImmediately = v23;
  }

  else
  {
    memset(&v40, 0, 32);
  }

  (*(*v19 + 224))(&v40);
  v26 = [v2 prefetchData];
  if (v26 && (v27 = v26, v28 = [v26 jsonData], v27, v28))
  {
    v29 = sub_1E4205C64();

    *&v40.withZoomTransition = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C8C0, &unk_1E42A1250);
    *&v40.loadImmediately = v29;
  }

  else
  {
    memset(&v40, 0, 32);
  }

  (*(*v19 + 248))(&v40);
  v30 = sub_1E32868C0([v2 uiConfiguration], &selRef_viewControllerIdentifier);
  v32 = v31;
  v33 = sub_1E32868C0([v2 uiConfiguration], &selRef_viewControllerDocumentIdentifier);
  v35 = v34;
  DocumentLoadingConfiguration.init(documentDataSource:)(&v40, v2);
  if (v0)
  {
    v0 = sub_1E374BD08(v0);
  }

  v36 = *(v12 + 1568);

  v24 = v36(v37, v0, &v40, 0, v30, v32);
  (*((*MEMORY[0x1E69E7D40] & *v24) + 0x520))(v33, v35);

  return v24;
}

void sub_1E3D5162C(void *a1)
{
  if (a1)
  {
    type metadata accessor for DocumentViewController(0);
    v2 = swift_dynamicCastClass();
    if (v2)
    {
      v3 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x418);
      v4 = a1;
      v3();
    }
  }
}

void sub_1E3D517BC(uint64_t a1)
{
  if ((a1 & 0x8000000000000000) == 0)
  {
    OUTLINED_FUNCTION_31_1();
    v3 = v2;
    if (v1)
    {
      [v1 integerValue];
      if (!v3)
      {
LABEL_6:
        type metadata accessor for ClipsTemplateViewController();

        OUTLINED_FUNCTION_74();
        sub_1E3D7D02C();
        OUTLINED_FUNCTION_25_2();
        return;
      }
    }

    else if (!v2)
    {
      goto LABEL_6;
    }

    [v3 integerValue];
    goto LABEL_6;
  }

  __break(1u);
}

uint64_t (*sub_1E3D51938(unint64_t a1, uint64_t a2, void *a3, void *a4, char a5))(uint64_t)
{
  result = sub_1E374BD08(a2);
  if ((a1 & 0x8000000000000000) == 0)
  {
    v10 = result;
    if (!result)
    {
      v10 = sub_1E4205CB4();
    }

    if (a3)
    {
      v11 = [a3 integerValue];
      if (a4)
      {
LABEL_6:
        v12 = [a4 integerValue];
LABEL_9:
        type metadata accessor for ClipsTemplateViewController();
        return sub_1E3D7DDA4(a1, v10, v11, a3 == 0, v12, a4 == 0, a5 & 1);
      }
    }

    else
    {
      v11 = 0;
      if (a4)
      {
        goto LABEL_6;
      }
    }

    v12 = 0;
    goto LABEL_9;
  }

  __break(1u);
  return result;
}

void sub_1E3D51B08()
{
  OUTLINED_FUNCTION_11_122();
  if (!v2)
  {
    if (v1)
    {
      goto LABEL_3;
    }

LABEL_5:
    OUTLINED_FUNCTION_20_83();
    goto LABEL_6;
  }

  sub_1E396AB60(v2);
  if (!v1)
  {
    goto LABEL_5;
  }

LABEL_3:
  sub_1E396AB60(v1);
  OUTLINED_FUNCTION_20_83();
LABEL_6:
  type metadata accessor for CatchUpToLiveViewController();

  v3 = v0;
  OUTLINED_FUNCTION_4_180();
  sub_1E4152010();
}

void sub_1E3D51BC8()
{
  OUTLINED_FUNCTION_11_122();
  if (!v2)
  {
    if (v1)
    {
      goto LABEL_3;
    }

LABEL_5:
    OUTLINED_FUNCTION_20_83();
    goto LABEL_6;
  }

  sub_1E396AB60(v2);
  if (!v1)
  {
    goto LABEL_5;
  }

LABEL_3:
  sub_1E396AB60(v1);
  OUTLINED_FUNCTION_20_83();
LABEL_6:
  type metadata accessor for CatchUpToLiveViewController();

  v3 = v0;
  OUTLINED_FUNCTION_4_180();
  sub_1E4151AE4();
}

id sub_1E3D51C88(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t (*a8)(uint64_t, id, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v11 = a5;
  if (a5)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C8C0, &unk_1E42A1250);
    v11 = sub_1E42062B4();
  }

  if (a6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C8C0, &unk_1E42A1250);
    a6 = sub_1E42062B4();
  }

  if (a7)
  {
    v15 = sub_1E4205F14();
    a7 = v16;
  }

  else
  {
    v15 = 0;
  }

  v17 = a4;
  v18 = a1;
  v19 = a8(a3, v17, v11, a6, v15, a7);

  return v19;
}

uint64_t sub_1E3D51DAC(void *a1, void *a2)
{
  if (!a1)
  {
    goto LABEL_6;
  }

  v4 = type metadata accessor for DocumentRequestViewController(0);
  v5 = swift_dynamicCastClass();
  v6 = 0;
  if (v5 && a2)
  {
    v7 = v5;
    v8 = swift_dynamicCastClass();
    if (v8)
    {
      v13[3] = v4;
      v13[0] = v8;
      v9 = *((*MEMORY[0x1E69E7D40] & *v7) + 0x628);
      v10 = a1;
      v11 = a2;
      v6 = v9(v13);

      sub_1E325F748(v13, &unk_1ECF296E0, &unk_1E4298030);
      return v6 & 1;
    }

LABEL_6:
    v6 = 0;
  }

  return v6 & 1;
}

uint64_t sub_1E3D51F14(uint64_t a1)
{
  type metadata accessor for MultiPlayerLayoutEngine();
  v1 = sub_1E3952C10(20.0, 20.0);
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = sub_1E3F9C978();
  sub_1E3F9C984(4, v8, v9, v1, v3, v5, v7);
  type metadata accessor for MultiPlayerViewController();

  return sub_1E386B500();
}

void sub_1E3D5213C(void *a1, char a2, char a3)
{
  if (a1)
  {
    type metadata accessor for DocumentViewController(0);
    v6 = swift_dynamicCastClass();
    if (v6)
    {
      v7 = *((*MEMORY[0x1E69E7D40] & *v6) + 0x4A0);
      v8 = a1;
      v7(a2 & 1, a3 & 1);
    }
  }
}

void sub_1E3D52304()
{
  OUTLINED_FUNCTION_8_133();
  type metadata accessor for LivePostPlayController(0);
  v3 = v2;
  v4 = v1;
  v5 = v0;
  sub_1E389DB18();
}

uint64_t sub_1E3D523E4@<X0>(uint64_t a1@<X8>)
{
  v2 = [objc_opt_self() sharedInstance];
  v3 = sub_1E4205ED4();
  v4 = [v2 URLForResource_];

  if (v4)
  {
    sub_1E41FE3C4();

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = sub_1E41FE414();

  return __swift_storeEnumTagSinglePayload(a1, v5, 1, v6);
}

id sub_1E3D525D8()
{
  v0 = [objc_opt_self() sharedInstance];
  OUTLINED_FUNCTION_16_0();
  v1 = sub_1E4205ED4();
  v2 = [v0 imageForResource_];

  if (v2)
  {
    return v2;
  }

  v4 = [objc_opt_self() sharedInterfaceFactory];
  v5 = OUTLINED_FUNCTION_16_0();
  v7 = sub_1E3D5297C(v5, v6, v4);

  return v7;
}

id sub_1E3D52728(uint64_t a1, uint64_t a2)
{
  v4 = [objc_opt_self() sharedInstance];
  v5 = [v4 imageProxyForElement:a1 withLayout:a2];

  return v5;
}

id sub_1E3D52810()
{
  OUTLINED_FUNCTION_8_133();
  v3 = [objc_opt_self() sharedInstance];
  v4 = [v3 *v0];

  return v4;
}

id sub_1E3D5288C(void *a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = a1;
  OUTLINED_FUNCTION_17_106();
  v9 = sub_1E3D52810();

  return v9;
}

uint64_t sub_1E3D52904(void *a1)
{
  v2 = [a1 prefetchedDataDict];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_1E4205C64();

  return v3;
}

id sub_1E3D5297C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1E4205ED4();
  v5 = [a3 _resourceImageNamed_];

  return v5;
}

unint64_t sub_1E3D529CC()
{
  result = qword_1ECF2C3E0;
  if (!qword_1ECF2C3E0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ECF2C3E0);
  }

  return result;
}

uint64_t sub_1E3D52A10()
{
  v1 = v0;
  if ([objc_opt_self() isVision])
  {

    return sub_1E414707C();
  }

  else
  {
    swift_beginAccess();
    v0[28] = 0x4054800000000000;
    sub_1E3D54258(v0[27]);
    swift_beginAccess();
    OUTLINED_FUNCTION_33_58();
    BYTE8(v738) = 0;
    v3 = OUTLINED_FUNCTION_31_56();
    v4 = MEMORY[0x1E69E7DE0];
    v12 = OUTLINED_FUNCTION_12_20(v3, v5, v6, v7, v8, v9, v10, v11, v368, v404, v440, v476, v512, v548, v584, v620, v656, v692, __dst[0], __dst[1], __dst[2], __dst[3], __dst[4], __dst[5], __dst[6], __dst[7], __dst[8], __dst[9], __dst[10], __dst[11], v729, v730, v731, v732, v733, *(&v733 + 1), v734, *(&v734 + 1), v735, *(&v735 + 1), v736, *(&v736 + 1), v737, *(&v737 + 1), 0x4043000000000000, *(&v738 + 1), 0);
    OUTLINED_FUNCTION_25_12(v12, v13, v369, v405, v441, v477, v513, v549, v585, v621, v657, v693, __dst[0], __dst[1], __dst[2], __dst[3], __dst[4], __dst[5], __dst[6], __dst[7], __dst[8], __dst[9], __dst[10], __dst[11], v729, v730, v731, v732, v733, *(&v733 + 1), v734, *(&v734 + 1), v735, *(&v735 + 1), v736, *(&v736 + 1), v737, *(&v737 + 1));
    OUTLINED_FUNCTION_15_116(v14, v15, v16, v17, v18, v19, v20, v21, v370, v406, v442, v478, v514, v550, v586, v622, v658, v694, __dst[0], __dst[1], __dst[2], __dst[3], __dst[4], __dst[5], __dst[6], __dst[7], __dst[8], __dst[9], __dst[10], __dst[11], v729, v730, v731, v732, v733, *(&v733 + 1), v734, *(&v734 + 1), v735, *(&v735 + 1), v736, *(&v736 + 1), v737, *(&v737 + 1), v738, *(&v738 + 1));
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_14();
    v30 = OUTLINED_FUNCTION_70_2(v22, v23, v24, v25, v26, v27, v28, v29, v371, v407, v443, v479, v515, v551, v587, v623, v659, v695, __dst[0], __dst[1], __dst[2], __dst[3], __dst[4], __dst[5], __dst[6], __dst[7], __dst[8], __dst[9], __dst[10], __dst[11], v729, v730, v731, v732, v733, *(&v733 + 1), v734, *(&v734 + 1), v735, *(&v735 + 1), v736, *(&v736 + 1), v737, *(&v737 + 1), v738, *(&v738 + 1), __src[0]);
    v31(v30, 2);

    LOBYTE(__src[1]) = 0;
    OUTLINED_FUNCTION_33_58();
    BYTE8(v738) = 0;
    v32 = OUTLINED_FUNCTION_31_56();
    v40 = OUTLINED_FUNCTION_12_20(v32, v33, v34, v35, v36, v37, v38, v39, v372, v408, v444, v480, v516, v552, v588, v624, v660, v696, __dst[0], __dst[1], __dst[2], __dst[3], __dst[4], __dst[5], __dst[6], __dst[7], __dst[8], __dst[9], __dst[10], __dst[11], v729, v730, v731, v732, v733, *(&v733 + 1), v734, *(&v734 + 1), v735, *(&v735 + 1), v736, *(&v736 + 1), v737, *(&v737 + 1), 0x4043000000000000, *(&v738 + 1), 0);
    OUTLINED_FUNCTION_25_12(v40, v41, v373, v409, v445, v481, v517, v553, v589, v625, v661, v697, __dst[0], __dst[1], __dst[2], __dst[3], __dst[4], __dst[5], __dst[6], __dst[7], __dst[8], __dst[9], __dst[10], __dst[11], v729, v730, v731, v732, v733, *(&v733 + 1), v734, *(&v734 + 1), v735, *(&v735 + 1), v736, *(&v736 + 1), v737, *(&v737 + 1));
    OUTLINED_FUNCTION_15_116(v42, v43, v44, v45, v46, v47, v48, v49, v374, v410, v446, v482, v518, v554, v590, v626, v662, v698, __dst[0], __dst[1], __dst[2], __dst[3], __dst[4], __dst[5], __dst[6], __dst[7], __dst[8], __dst[9], __dst[10], __dst[11], v729, v730, v731, v732, v733, *(&v733 + 1), v734, *(&v734 + 1), v735, *(&v735 + 1), v736, *(&v736 + 1), v737, *(&v737 + 1), v738, *(&v738 + 1));
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_14();
    v58 = OUTLINED_FUNCTION_70_2(v50, v51, v52, v53, v54, v55, v56, v57, v375, v411, v447, v483, v519, v555, v591, v627, v663, v699, __dst[0], __dst[1], __dst[2], __dst[3], __dst[4], __dst[5], __dst[6], __dst[7], __dst[8], __dst[9], __dst[10], __dst[11], v729, v730, v731, v732, v733, *(&v733 + 1), v734, *(&v734 + 1), v735, *(&v735 + 1), v736, *(&v736 + 1), v737, *(&v737 + 1), v738, *(&v738 + 1), __src[0]);
    v59(v58, 6);

    swift_beginAccess();
    v60 = OUTLINED_FUNCTION_13_16();
    OUTLINED_FUNCTION_1_15(v60, v61, v62, v63, v64, v65, v66, v67, v376, v412, v448, v484, v520, v556, v592, v628, v664, v700, __dst[0], __dst[1], __dst[2], __dst[3], __dst[4], __dst[5], __dst[6], __dst[7], __dst[8], __dst[9], __dst[10], __dst[11], v729, v730, v731, v732, v733, *(&v733 + 1), v734, *(&v734 + 1), v735, *(&v735 + 1), v736, *(&v736 + 1), v737, *(&v737 + 1), v738, *(&v738 + 1), __src[0]);
    OUTLINED_FUNCTION_34_2();
    sub_1E3C2FCB8(v68, v69, v70, v71, v72, &v735, v4, v73);
    OUTLINED_FUNCTION_15_116(v74, v75, v76, v77, v78, v79, v80, v81, v377, v413, v449, v485, v521, v557, v593, v629, v665, v701, __dst[0], __dst[1], __dst[2], __dst[3], __dst[4], __dst[5], __dst[6], __dst[7], __dst[8], __dst[9], __dst[10], __dst[11], v729, v730, v731, v732, v733, *(&v733 + 1), v734, *(&v734 + 1), v735, *(&v735 + 1), v736, *(&v736 + 1), v737, *(&v737 + 1), v738, *(&v738 + 1));
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_14();
    v90 = OUTLINED_FUNCTION_70_2(v82, v83, v84, v85, v86, v87, v88, v89, v378, v414, v450, v486, v522, v558, v594, v630, v666, v702, __dst[0], __dst[1], __dst[2], __dst[3], __dst[4], __dst[5], __dst[6], __dst[7], __dst[8], __dst[9], __dst[10], __dst[11], v729, v730, v731, v732, v733, *(&v733 + 1), v734, *(&v734 + 1), v735, *(&v735 + 1), v736, *(&v736 + 1), v737, *(&v737 + 1), v738, *(&v738 + 1), __src[0]);
    v91(v90, 2);

    v92 = OUTLINED_FUNCTION_13_16();
    OUTLINED_FUNCTION_1_15(v92, v93, v94, v95, v96, v97, v98, v99, v379, v415, v451, v487, v523, v559, v595, v631, v667, v703, __dst[0], __dst[1], __dst[2], __dst[3], __dst[4], __dst[5], __dst[6], __dst[7], __dst[8], __dst[9], __dst[10], __dst[11], v729, v730, v731, v732, v733, *(&v733 + 1), v734, *(&v734 + 1), v735, *(&v735 + 1), v736, *(&v736 + 1), v737, *(&v737 + 1), v738, *(&v738 + 1), __src[0]);
    OUTLINED_FUNCTION_34_2();
    sub_1E3C2FCB8(v100, v101, v102, v103, v104, &v735, v4, v105);
    OUTLINED_FUNCTION_15_116(v106, v107, v108, v109, v110, v111, v112, v113, v380, v416, v452, v488, v524, v560, v596, v632, v668, v704, __dst[0], __dst[1], __dst[2], __dst[3], __dst[4], __dst[5], __dst[6], __dst[7], __dst[8], __dst[9], __dst[10], __dst[11], v729, v730, v731, v732, v733, *(&v733 + 1), v734, *(&v734 + 1), v735, *(&v735 + 1), v736, *(&v736 + 1), v737, *(&v737 + 1), v738, *(&v738 + 1));
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_14();
    v122 = OUTLINED_FUNCTION_70_2(v114, v115, v116, v117, v118, v119, v120, v121, v381, v417, v453, v489, v525, v561, v597, v633, v669, v705, __dst[0], __dst[1], __dst[2], __dst[3], __dst[4], __dst[5], __dst[6], __dst[7], __dst[8], __dst[9], __dst[10], __dst[11], v729, v730, v731, v732, v733, *(&v733 + 1), v734, *(&v734 + 1), v735, *(&v735 + 1), v736, *(&v736 + 1), v737, *(&v737 + 1), v738, *(&v738 + 1), __src[0]);
    v123(v122, 6);

    v124 = v0[19];
    OUTLINED_FUNCTION_36();
    v125 = OUTLINED_FUNCTION_15_8();
    v126(v125);
    OUTLINED_FUNCTION_36();
    (*(v127 + 1984))(1);
    OUTLINED_FUNCTION_36();
    (*(v128 + 2008))(1);
    v129 = *sub_1E3E5FDEC();
    v130 = *(*v124 + 680);
    v131 = v129;
    v130(v129);
    OUTLINED_FUNCTION_36();
    (*(v132 + 1720))(10);
    LOBYTE(__src[0]) = 11;
    LOBYTE(__dst[0]) = 2;
    LOBYTE(v738) = 0;
    LOBYTE(v737) = 2;
    LOBYTE(v736) = 0;
    v133 = sub_1E3C3DE00();
    LOBYTE(v734) = v735;
    OUTLINED_FUNCTION_1_15(v133, v134, v135, v136, v137, v138, v139, v140, v382, v418, v454, v490, v526, v562, v598, v634, v670, v706, __dst[0], __dst[1], __dst[2], __dst[3], __dst[4], __dst[5], __dst[6], __dst[7], __dst[8], __dst[9], __dst[10], __dst[11], v729, v730, v731, v732, v733, *(&v733 + 1), v734, *(&v734 + 1), v735, *(&v735 + 1), v736, *(&v736 + 1), v737, *(&v737 + 1), v738, *(&v738 + 1), __src[0]);
    OUTLINED_FUNCTION_34_2();
    sub_1E3C2FCB8(v141, v142, v143, v144, v145, &v734, &unk_1F5D999E0, v146);
    OUTLINED_FUNCTION_8_134();
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_14();
    v148 = *(v147 + 1600);
    v157 = OUTLINED_FUNCTION_70_2(v149, v150, v151, v152, v153, v154, v155, v156, v383, v419, v455, v491, v527, v563, v599, v635, v671, v707, __dst[0], __dst[1], __dst[2], __dst[3], __dst[4], __dst[5], __dst[6], __dst[7], __dst[8], __dst[9], __dst[10], __dst[11], v729, v730, v731, v732, v733, *(&v733 + 1), v734, *(&v734 + 1), v735, *(&v735 + 1), v736, *(&v736 + 1), v737, *(&v737 + 1), v738, *(&v738 + 1), __src[0]);
    v148(v157, 23);
    LOBYTE(__src[0]) = 4;
    LOBYTE(__dst[0]) = 1;
    LOBYTE(v738) = 1;
    LOBYTE(v737) = 1;
    LOBYTE(v736) = 1;
    v158 = sub_1E3C3DE00();
    LOBYTE(v734) = v735;
    OUTLINED_FUNCTION_1_15(v158, v159, v160, v161, v162, v163, v164, v165, v384, v420, v456, v492, v528, v564, v600, v636, v672, v708, __dst[0], __dst[1], __dst[2], __dst[3], __dst[4], __dst[5], __dst[6], __dst[7], __dst[8], __dst[9], __dst[10], __dst[11], v729, v730, v731, v732, v733, *(&v733 + 1), v734, *(&v734 + 1), v735, *(&v735 + 1), v736, *(&v736 + 1), v737, *(&v737 + 1), v738, *(&v738 + 1), __src[0]);
    OUTLINED_FUNCTION_34_2();
    sub_1E3C2FCB8(v166, v167, v168, v169, v170, &v734, &unk_1F5D99950, v171);
    OUTLINED_FUNCTION_8_134();
    v172 = OUTLINED_FUNCTION_18();
    v180 = OUTLINED_FUNCTION_70_2(v172, v173, v174, v175, v176, v177, v178, v179, v385, v421, v457, v493, v529, v565, v601, v637, v673, v709, __dst[0], __dst[1], __dst[2], __dst[3], __dst[4], __dst[5], __dst[6], __dst[7], __dst[8], __dst[9], __dst[10], __dst[11], v729, v730, v731, v732, v733, *(&v733 + 1), v734, *(&v734 + 1), v735, *(&v735 + 1), v736, *(&v736 + 1), v737, *(&v737 + 1), v738, *(&v738 + 1), __src[0]);
    v148(v180, 22);
    LOBYTE(__src[0]) = 27;
    LOBYTE(__dst[0]) = 22;
    LOBYTE(v738) = 22;
    LOBYTE(v737) = 14;
    sub_1E3C3DE00();
    OUTLINED_FUNCTION_5_158();
    sub_1E3C3DE00();
    OUTLINED_FUNCTION_0_226();
    sub_1E3C2FCB8(v181, v182, v183, v184, v185, v186, &qword_1F5D549D8, v187);
    OUTLINED_FUNCTION_8_134();
    v188 = OUTLINED_FUNCTION_18();
    v196 = OUTLINED_FUNCTION_33_1(v188, v189, v190, v191, v192, v193, v194, v195, v386, v422, v458, v494, v530, v566, v602, v638, v674, v710, __dst[0], __dst[1], __dst[2], __dst[3], __dst[4], __dst[5], __dst[6], __dst[7], __dst[8], __dst[9], __dst[10], __dst[11], v729, v730, v731, v732, v733, *(&v733 + 1), v734, *(&v734 + 1), v735, *(&v735 + 1), v736, *(&v736 + 1), v737, *(&v737 + 1), v738, *(&v738 + 1), __src[0]);
    v148(v196, 48);
    LOBYTE(__src[0]) = 10;
    LOBYTE(__dst[0]) = 10;
    sub_1E3C2FC98();
    OUTLINED_FUNCTION_22_72();
    sub_1E3C3DE00();
    OUTLINED_FUNCTION_5_158();
    sub_1E3C3DE00();
    v197 = OUTLINED_FUNCTION_37_56();
    LOBYTE(v729) = v731;
    v205 = OUTLINED_FUNCTION_12_20(v197, v198, v199, v200, v201, v202, v203, v204, v387, v423, v459, v495, v531, v567, v603, v639, v675, v711, __dst[0], __dst[1], __dst[2], __dst[3], __dst[4], __dst[5], __dst[6], __dst[7], __dst[8], __dst[9], __dst[10], __dst[11], v729, v730, v731, v732, v733, *(&v733 + 1), v734, *(&v734 + 1), v735, *(&v735 + 1), v736, *(&v736 + 1), v737, *(&v737 + 1), v738, *(&v738 + 1), __src[0]);
    OUTLINED_FUNCTION_24_77(v205, v206, v388, v424, v460, v496, v532, v568, v604, v640, v676, v712, __dst[0], __dst[1], __dst[2], __dst[3], __dst[4], __dst[5], __dst[6], __dst[7], __dst[8], __dst[9], __dst[10], __dst[11], v729, v730, v731, v732, v733, *(&v733 + 1), v734, *(&v734 + 1), v735, *(&v735 + 1), v736, *(&v736 + 1));
    OUTLINED_FUNCTION_8_134();
    v207 = OUTLINED_FUNCTION_18();
    v215 = OUTLINED_FUNCTION_33_1(v207, v208, v209, v210, v211, v212, v213, v214, v389, v425, v461, v497, v533, v569, v605, v641, v677, v713, __dst[0], __dst[1], __dst[2], __dst[3], __dst[4], __dst[5], __dst[6], __dst[7], __dst[8], __dst[9], __dst[10], __dst[11], v729, v730, v731, v732, v733, *(&v733 + 1), v734, *(&v734 + 1), v735, *(&v735 + 1), v736, *(&v736 + 1), v737, *(&v737 + 1), v738, *(&v738 + 1), __src[0]);
    v148(v215, 54);
    v216 = v1[20];
    OUTLINED_FUNCTION_36();
    v217 = OUTLINED_FUNCTION_15_8();
    v218(v217);
    OUTLINED_FUNCTION_36();
    (*(v219 + 1984))(1);
    OUTLINED_FUNCTION_36();
    (*(v220 + 2008))(1);
    v221 = *sub_1E3E5FD88();
    v222 = *(*v216 + 680);
    v223 = v221;
    v222(v221);
    OUTLINED_FUNCTION_36();
    (*(v224 + 1720))(10);
    OUTLINED_FUNCTION_27_62();
    LOBYTE(v737) = 14;
    sub_1E3C3DE00();
    OUTLINED_FUNCTION_5_158();
    sub_1E3C3DE00();
    OUTLINED_FUNCTION_0_226();
    sub_1E3C2FCB8(v225, v226, v227, v228, v229, v230, &qword_1F5D549D8, v231);
    OUTLINED_FUNCTION_2_175();
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_14();
    v233 = *(v232 + 1600);
    v242 = OUTLINED_FUNCTION_70_2(v234, v235, v236, v237, v238, v239, v240, v241, v390, v426, v462, v498, v534, v570, v606, v642, v678, v714, __dst[0], __dst[1], __dst[2], __dst[3], __dst[4], __dst[5], __dst[6], __dst[7], __dst[8], __dst[9], __dst[10], __dst[11], v729, v730, v731, v732, v733, *(&v733 + 1), v734, *(&v734 + 1), v735, *(&v735 + 1), v736, *(&v736 + 1), v737, *(&v737 + 1), v738, *(&v738 + 1), __src[0]);
    v233(v242, 48);
    LOBYTE(__src[0]) = 10;
    LOBYTE(__dst[0]) = 10;
    sub_1E3C2FC98();
    OUTLINED_FUNCTION_22_72();
    sub_1E3C3DE00();
    OUTLINED_FUNCTION_5_158();
    sub_1E3C3DE00();
    v243 = OUTLINED_FUNCTION_37_56();
    LOBYTE(v729) = v731;
    v251 = OUTLINED_FUNCTION_12_20(v243, v244, v245, v246, v247, v248, v249, v250, v391, v427, v463, v499, v535, v571, v607, v643, v679, v715, __dst[0], __dst[1], __dst[2], __dst[3], __dst[4], __dst[5], __dst[6], __dst[7], __dst[8], __dst[9], __dst[10], __dst[11], v729, v730, v731, v732, v733, *(&v733 + 1), v734, *(&v734 + 1), v735, *(&v735 + 1), v736, *(&v736 + 1), v737, *(&v737 + 1), v738, *(&v738 + 1), __src[0]);
    OUTLINED_FUNCTION_24_77(v251, v252, v392, v428, v464, v500, v536, v572, v608, v644, v680, v716, __dst[0], __dst[1], __dst[2], __dst[3], __dst[4], __dst[5], __dst[6], __dst[7], __dst[8], __dst[9], __dst[10], __dst[11], v729, v730, v731, v732, v733, *(&v733 + 1), v734, *(&v734 + 1), v735, *(&v735 + 1), v736, *(&v736 + 1));
    OUTLINED_FUNCTION_2_175();
    v253 = OUTLINED_FUNCTION_18();
    v261 = OUTLINED_FUNCTION_33_1(v253, v254, v255, v256, v257, v258, v259, v260, v393, v429, v465, v501, v537, v573, v609, v645, v681, v717, __dst[0], __dst[1], __dst[2], __dst[3], __dst[4], __dst[5], __dst[6], __dst[7], __dst[8], __dst[9], __dst[10], __dst[11], v729, v730, v731, v732, v733, *(&v733 + 1), v734, *(&v734 + 1), v735, *(&v735 + 1), v736, *(&v736 + 1), v737, *(&v737 + 1), v738, *(&v738 + 1), __src[0]);
    v233(v261, 54);
    v262 = v1[21];
    OUTLINED_FUNCTION_36();
    v263 = OUTLINED_FUNCTION_15_8();
    v264(v263);
    OUTLINED_FUNCTION_36();
    v265 = OUTLINED_FUNCTION_15_8();
    v266(v265);
    OUTLINED_FUNCTION_36();
    v267 = OUTLINED_FUNCTION_15_8();
    v268(v267);
    OUTLINED_FUNCTION_36();
    (*(v269 + 1984))(1);
    OUTLINED_FUNCTION_36();
    (*(v270 + 2008))(1);
    OUTLINED_FUNCTION_36();
    (*(v271 + 1720))(9);
    __src[0] = 0;
    LOBYTE(__src[1]) = 1;
    LOBYTE(__dst[1]) = 1;
    *&v738 = 0;
    BYTE8(v738) = 1;
    *&v737 = 0x4050000000000000;
    BYTE8(v737) = 0;
    sub_1E3C3DE00();
    OUTLINED_FUNCTION_20_84();
    sub_1E3C3DE00();
    OUTLINED_FUNCTION_35_52();
    v280 = OUTLINED_FUNCTION_1_15(v272, v273, v274, v275, v276, v277, v278, v279, v394, v430, v466, v502, v538, v574, v610, v646, v682, v718, 0, __dst[1], __dst[2], __dst[3], __dst[4], __dst[5], __dst[6], __dst[7], __dst[8], __dst[9], __dst[10], __dst[11], v729, v730, v731, v732, v733, *(&v733 + 1), v734, *(&v734 + 1), v735, *(&v735 + 1), v736, *(&v736 + 1), v737, *(&v737 + 1), v738, *(&v738 + 1), __src[0]);
    sub_1E3C2FCB8(v280, v281, v282, &v737, &v735, &v733, v4, v283);
    OUTLINED_FUNCTION_15_116(v284, v285, v286, v287, v288, v289, v290, v291, v395, v431, v467, v503, v539, v575, v611, v647, v683, v719, __dst[0], __dst[1], __dst[2], __dst[3], __dst[4], __dst[5], __dst[6], __dst[7], __dst[8], __dst[9], __dst[10], __dst[11], v729, v730, v731, v732, v733, *(&v733 + 1), v734, *(&v734 + 1), v735, *(&v735 + 1), v736, *(&v736 + 1), v737, *(&v737 + 1), v738, *(&v738 + 1));
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_14();
    v293 = *(v292 + 1600);
    v302 = OUTLINED_FUNCTION_70_2(v294, v295, v296, v297, v298, v299, v300, v301, v396, v432, v468, v504, v540, v576, v612, v648, v684, v720, __dst[0], __dst[1], __dst[2], __dst[3], __dst[4], __dst[5], __dst[6], __dst[7], __dst[8], __dst[9], __dst[10], __dst[11], v729, v730, v731, v732, v733, *(&v733 + 1), v734, *(&v734 + 1), v735, *(&v735 + 1), v736, *(&v736 + 1), v737, *(&v737 + 1), v738, *(&v738 + 1), __src[0]);
    v293(v302, 2);
    v303 = *sub_1E3E5FD88();
    v304 = *(*v262 + 680);
    v305 = v303;
    v304(v303);
    OUTLINED_FUNCTION_27_62();
    LOBYTE(v737) = 14;
    sub_1E3C3DE00();
    OUTLINED_FUNCTION_5_158();
    sub_1E3C3DE00();
    OUTLINED_FUNCTION_0_226();
    sub_1E3C2FCB8(v306, v307, v308, v309, v310, v311, &qword_1F5D549D8, v312);
    OUTLINED_FUNCTION_2_175();
    v313 = OUTLINED_FUNCTION_18();
    v321 = OUTLINED_FUNCTION_33_1(v313, v314, v315, v316, v317, v318, v319, v320, v397, v433, v469, v505, v541, v577, v613, v649, v685, v721, __dst[0], __dst[1], __dst[2], __dst[3], __dst[4], __dst[5], __dst[6], __dst[7], __dst[8], __dst[9], __dst[10], __dst[11], v729, v730, v731, v732, v733, *(&v733 + 1), v734, *(&v734 + 1), v735, *(&v735 + 1), v736, *(&v736 + 1), v737, *(&v737 + 1), v738, *(&v738 + 1), __src[0]);
    v293(v321, 48);
    LOBYTE(__src[0]) = 5;
    LOBYTE(__dst[0]) = 10;
    LOBYTE(v738) = 10;
    OUTLINED_FUNCTION_22_72();
    sub_1E3C3DE00();
    OUTLINED_FUNCTION_5_158();
    sub_1E3C3DE00();
    OUTLINED_FUNCTION_0_226();
    sub_1E3C2FCB8(v322, v323, v324, v325, v326, v327, &qword_1F5D54AF8, v328);
    OUTLINED_FUNCTION_2_175();
    v329 = OUTLINED_FUNCTION_18();
    v337 = OUTLINED_FUNCTION_33_1(v329, v330, v331, v332, v333, v334, v335, v336, v398, v434, v470, v506, v542, v578, v614, v650, v686, v722, __dst[0], __dst[1], __dst[2], __dst[3], __dst[4], __dst[5], __dst[6], __dst[7], __dst[8], __dst[9], __dst[10], __dst[11], v729, v730, v731, v732, v733, *(&v733 + 1), v734, *(&v734 + 1), v735, *(&v735 + 1), v736, *(&v736 + 1), v737, *(&v737 + 1), v738, *(&v738 + 1), __src[0]);
    v293(v337, 54);
    __src[0] = 0;
    LOBYTE(__src[1]) = 1;
    LOBYTE(__dst[1]) = 0;
    sub_1E3C2FC98();
    *&v737 = v738;
    BYTE8(v737) = BYTE8(v738);
    sub_1E3C3DE00();
    OUTLINED_FUNCTION_20_84();
    sub_1E3C3DE00();
    OUTLINED_FUNCTION_35_52();
    v338 = sub_1E3C3DE00();
    LOBYTE(v730) = v732;
    v346 = OUTLINED_FUNCTION_12_20(v338, v339, v340, v341, v342, v343, v344, v345, v399, v435, v471, v507, v543, v579, v615, v651, v687, v723, 0x4030000000000000, __dst[1], __dst[2], __dst[3], __dst[4], __dst[5], __dst[6], __dst[7], __dst[8], __dst[9], __dst[10], __dst[11], v731, v730, v731, v732, v733, *(&v733 + 1), v734, *(&v734 + 1), v735, *(&v735 + 1), v736, *(&v736 + 1), v737, *(&v737 + 1), v738, *(&v738 + 1), __src[0]);
    OUTLINED_FUNCTION_23_73(v346, v347, v400, v436, v472, v508, v544, v580, v616, v652, v688, v724, __dst[0], __dst[1], __dst[2], __dst[3], __dst[4], __dst[5], __dst[6], __dst[7], __dst[8], __dst[9], __dst[10], __dst[11], v729, v730, v731, v732, v733, *(&v733 + 1), v734, *(&v734 + 1), v735, *(&v735 + 1), v736, *(&v736 + 1));
    OUTLINED_FUNCTION_15_116(v348, v349, v350, v351, v352, v353, v354, v355, v401, v437, v473, v509, v545, v581, v617, v653, v689, v725, __dst[0], __dst[1], __dst[2], __dst[3], __dst[4], __dst[5], __dst[6], __dst[7], __dst[8], __dst[9], __dst[10], __dst[11], v729, v730, v731, v732, v733, *(&v733 + 1), v734, *(&v734 + 1), v735, *(&v735 + 1), v736, *(&v736 + 1), v737, *(&v737 + 1), v738, *(&v738 + 1));
    v356 = OUTLINED_FUNCTION_18();
    v364 = OUTLINED_FUNCTION_33_1(v356, v357, v358, v359, v360, v361, v362, v363, v402, v438, v474, v510, v546, v582, v618, v654, v690, v726, __dst[0], __dst[1], __dst[2], __dst[3], __dst[4], __dst[5], __dst[6], __dst[7], __dst[8], __dst[9], __dst[10], __dst[11], v729, v730, v731, v732, v733, *(&v733 + 1), v734, *(&v734 + 1), v735, *(&v735 + 1), v736, *(&v736 + 1), v737, *(&v737 + 1), v738, *(&v738 + 1), __src[0]);
    v293(v364, 52);
    v740[0] = 0;
    v740[1] = 0;
    __dst[0] = sub_1E4205F14();
    __dst[1] = v365;
    v366 = MEMORY[0x1E69E6158];
    sub_1E3C2FC98();
    v737 = v738;
    sub_1E3C3DE00();
    v735 = v736;
    sub_1E3C3DE00();
    v733 = v734;
    sub_1E3C3DE00();
    OUTLINED_FUNCTION_23_73(v740, __src, v403, v439, v475, v511, v547, v583, v619, v655, v691, v727, __dst[0], __dst[1], __dst[2], __dst[3], __dst[4], __dst[5], __dst[6], __dst[7], __dst[8], __dst[9], __dst[10], __dst[11], v731, v732, v731, v732, v733, *(&v733 + 1), v734, *(&v734 + 1), v735, *(&v735 + 1), v736, *(&v736 + 1));
    memcpy(__dst, __src, sizeof(__dst));
    v367 = OUTLINED_FUNCTION_18();
    (v293)(__dst, 51, v367 & 1, v366);
    memcpy(v740, __dst, 0x60uLL);
    sub_1E325F748(v740, &qword_1ECF346E8, &unk_1E42C0DD0);
    sub_1E3D53664();
    return sub_1E3D539CC();
  }
}

uint64_t sub_1E3D53664()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF335F8, &qword_1E42BB500);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = v34 - v2;
  v4 = *(v0 + 184);
  v5 = *sub_1E3E5FD88();
  v6 = *(*v4 + 680);
  v7 = v5;
  v6(v5);
  v34[0] = 2;
  LOBYTE(v34[1]) = 0;
  v49 = 1;
  v50 = 0;
  v47 = 1;
  v48 = 0;
  type metadata accessor for SymbolScale(0);
  v9 = v8;
  sub_1E3C3DE00();
  v43 = v45;
  v44 = v46;
  sub_1E3C3DE00();
  v39 = v41;
  v40 = v42;
  sub_1E3C3DE00();
  v35 = v37;
  v36 = v38;
  v10 = OUTLINED_FUNCTION_17_107();
  sub_1E3C2FCB8(v10, v11, v12, v13, v14, v15, v9, v16);
  memcpy(v34, __src, 0x59uLL);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_14();
  v18 = *(v17 + 1600);
  v18(v34, 91, v19 & 1, v9);
  v20 = objc_opt_self();
  v21 = 8.0;
  if (([v20 isPad] & 1) == 0 && (objc_msgSend(v20, sel_isPhone) & 1) == 0)
  {
    if ([v20 isMac])
    {
      v21 = 6.0;
    }

    else
    {
      v21 = 10.0;
    }
  }

  v22 = sub_1E42028E4();
  __swift_storeEnumTagSinglePayload(v3, 1, 1, v22);
  v23 = sub_1E42029B4();
  sub_1E325F748(v3, &qword_1ECF335F8, &qword_1E42BB500);
  OUTLINED_FUNCTION_36();
  (*(v24 + 2120))(v23);
  (*(*v4 + 208))(COERCE_DOUBLE(*&v21), 0);
  LOBYTE(v34[0]) = 5;
  LOBYTE(v49) = 6;
  LOBYTE(v47) = 6;
  sub_1E3C3DE00();
  LOBYTE(v43) = v45;
  sub_1E3C3DE00();
  LOBYTE(v39) = v41;
  sub_1E3C3DE00();
  LOBYTE(v35) = v37;
  v25 = OUTLINED_FUNCTION_17_107();
  sub_1E3C2FCB8(v25, v26, v27, v28, v29, v30, &qword_1F5D54AF8, v31);
  LODWORD(v34[0]) = __src[0];
  WORD2(v34[0]) = __src[1];
  v32 = OUTLINED_FUNCTION_18();
  return v18(v34, 97, v32 & 1, &qword_1F5D54AF8);
}

uint64_t sub_1E3D539CC()
{
  v1 = sub_1E42012F4();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v119 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A250, " B\r");
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v119 - v6;
  v8 = *(v0 + 176);
  v9 = *sub_1E3E5FD88();
  v10 = *(*v8 + 680);
  v11 = v9;
  v10(v9);
  OUTLINED_FUNCTION_13();
  (*(v12 + 1720))(6);
  OUTLINED_FUNCTION_13();
  v13 = OUTLINED_FUNCTION_15_8();
  v14(v13);
  OUTLINED_FUNCTION_13();
  v15 = OUTLINED_FUNCTION_15_8();
  v16(v15);
  OUTLINED_FUNCTION_13();
  v17 = OUTLINED_FUNCTION_15_8();
  v18(v17);
  OUTLINED_FUNCTION_13();
  (*(v19 + 1984))(1);
  OUTLINED_FUNCTION_13();
  (*(v20 + 2008))(1);
  v21 = type metadata accessor for TextBadgeLayout(0);
  v23 = sub_1E39DFD8C(v7, v21, v22);
  sub_1E3831898(v23);
  sub_1E3831908(1, 9u, v7, v144);
  v24 = v144[0];
  v25 = v144[3];
  v119 = *&v144[7];
  v120 = *&v144[5];
  (*(v2 + 8))(v4, v1);
  sub_1E325F748(v7, &qword_1ECF2A250, " B\r");
  v26 = [objc_opt_self() blackColor];
  v27 = [v26 colorWithAlphaComponent_];

  OUTLINED_FUNCTION_13();
  v29 = (*(v28 + 752))(v27);
  v29.n128_u64[0] = v24;
  *&v122[0] = j__OUTLINED_FUNCTION_7_78(v29);
  *(&v122[0] + 1) = v30;
  *&v122[1] = v31;
  *(&v122[1] + 1) = v32;
  LOBYTE(v122[2]) = 0;
  v33.n128_u64[0] = 6.0;
  v34 = j__OUTLINED_FUNCTION_7_78(v33);
  OUTLINED_FUNCTION_21_82(v34, v35, v36, v37);
  type metadata accessor for UIEdgeInsets();
  v39 = v38;
  sub_1E3C2FC98();
  v139[0] = v141;
  v139[1] = v142;
  v140 = v143;
  sub_1E3C3DE00();
  OUTLINED_FUNCTION_18_91();
  sub_1E3C3DE00();
  OUTLINED_FUNCTION_32_64();
  sub_1E3C3DE00();
  v123 = v126;
  v124 = v127;
  v125 = v128;
  OUTLINED_FUNCTION_10_116();
  sub_1E3C2FCB8(v40, v41, v42, v43, v44, v45, v39, v46);
  OUTLINED_FUNCTION_30_62();
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_13();
  v48 = *(v47 + 1600);
  (v48)(v122, 17, v49 & 1, v39);
  v122[0] = v120;
  v122[1] = v119;
  LOBYTE(v122[2]) = 0;
  v50 = sub_1E3952C10(7.0, 5.0);
  OUTLINED_FUNCTION_21_82(v50, v51, v52, v53);
  v54 = sub_1E3952C10(7.0, 5.0);
  OUTLINED_FUNCTION_28_61(v54, v55, v56, v57);
  v58 = sub_1E3952C10(9.0, 4.0);
  OUTLINED_FUNCTION_26_80(v58, v59, v60, v61);
  sub_1E3C3DE00();
  OUTLINED_FUNCTION_18_91();
  sub_1E3C3DE00();
  OUTLINED_FUNCTION_32_64();
  v62 = OUTLINED_FUNCTION_7_166();
  sub_1E3C2FCB8(v62, v63, v64, v139, &v131, v129, v39, v65);
  OUTLINED_FUNCTION_30_62();
  OUTLINED_FUNCTION_18();
  v66 = OUTLINED_FUNCTION_9_124();
  v48(v66, 1);
  v67 = *(MEMORY[0x1E69DDCE0] + 16);
  v122[0] = *MEMORY[0x1E69DDCE0];
  v122[1] = v67;
  LOBYTE(v122[2]) = 0;
  sub_1E3952C94();
  OUTLINED_FUNCTION_21_82(v68, v69, v70, v71);
  sub_1E3952C94();
  OUTLINED_FUNCTION_28_61(v72, v73, v74, v75);
  sub_1E3952C94();
  OUTLINED_FUNCTION_26_80(v76, v77, v78, v79);
  sub_1E3952C94();
  *&v135 = v80;
  *(&v135 + 1) = v81;
  v136 = v82;
  v137 = v83;
  v138 = 0;
  sub_1E3952C94();
  *&v131 = v84;
  *(&v131 + 1) = v85;
  v132 = v86;
  v133 = v87;
  v134 = 0;
  v88 = OUTLINED_FUNCTION_7_166();
  sub_1E3C2FCB8(v88, v89, v90, v139, &v135, &v131, v39, v91);
  OUTLINED_FUNCTION_30_62();
  OUTLINED_FUNCTION_18();
  v92 = OUTLINED_FUNCTION_9_124();
  v48(v92, 0);
  LOBYTE(v122[0]) = 27;
  LOBYTE(v121[0]) = 22;
  LOBYTE(v141) = 22;
  LOBYTE(v139[0]) = 18;
  LOBYTE(v135) = 21;
  sub_1E3C3DE00();
  LOBYTE(v130) = v131;
  v93 = OUTLINED_FUNCTION_7_166();
  sub_1E3C2FCB8(v93, v94, v95, &v130, v139, &v135, &qword_1F5D549D8, v96);
  OUTLINED_FUNCTION_29_71();
  OUTLINED_FUNCTION_9_124();
  OUTLINED_FUNCTION_36_7();
  (v48)();
  LOBYTE(v122[0]) = 5;
  LOBYTE(v121[0]) = 10;
  LOBYTE(v141) = 10;
  LOBYTE(v139[0]) = 10;
  sub_1E3C3DE00();
  LOBYTE(v131) = v135;
  sub_1E3C3DE00();
  LOBYTE(v129[0]) = v130;
  v97 = OUTLINED_FUNCTION_7_166();
  sub_1E3C2FCB8(v97, v98, v99, &v131, v139, v129, &qword_1F5D54AF8, v100);
  OUTLINED_FUNCTION_29_71();
  OUTLINED_FUNCTION_9_124();
  OUTLINED_FUNCTION_36_7();
  (v48)();
  *&v122[0] = 0;
  BYTE8(v122[0]) = 1;
  v121[0] = 0x402C000000000000;
  LOBYTE(v121[1]) = 0;
  v101 = MEMORY[0x1E69E7DE0];
  sub_1E3C2FC98();
  *&v139[0] = v141;
  BYTE8(v139[0]) = BYTE8(v141);
  sub_1E3C3DE00();
  *&v131 = v135;
  BYTE8(v131) = BYTE8(v135);
  sub_1E3C3DE00();
  *&v129[0] = v130;
  BYTE8(v129[0]) = BYTE8(v130);
  sub_1E3C3DE00();
  *&v123 = v126;
  BYTE8(v123) = BYTE8(v126);
  OUTLINED_FUNCTION_10_116();
  sub_1E3C2FCB8(v102, v103, v104, v105, v106, v107, v101, v108);
  memcpy(v122, v144, 0x59uLL);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_9_124();
  OUTLINED_FUNCTION_36_7();
  (v48)();
  v144[1] = 0;
  v144[0] = 0;
  v121[0] = sub_1E4205F14();
  v121[1] = v109;
  v110 = MEMORY[0x1E69E6158];
  sub_1E3C2FC98();
  v139[0] = v141;
  sub_1E3C3DE00();
  v131 = v135;
  sub_1E3C3DE00();
  v129[0] = v130;
  sub_1E3C3DE00();
  v123 = v126;
  OUTLINED_FUNCTION_10_116();
  sub_1E3C2FCB8(v111, v112, v113, v114, v115, v116, v110, v117);
  memcpy(v121, v122, sizeof(v121));
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_36_7();
  (v48)();

  memcpy(v144, v121, 0x60uLL);
  return sub_1E325F748(v144, &qword_1ECF346E8, &unk_1E42C0DD0);
}

uint64_t sub_1E3D54258(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_15_8();
  v3(v2);
  OUTLINED_FUNCTION_36();
  v4 = OUTLINED_FUNCTION_15_8();
  v5(v4);
  OUTLINED_FUNCTION_36();
  v6 = OUTLINED_FUNCTION_15_8();
  v7(v6);
  OUTLINED_FUNCTION_36();
  (*(v8 + 1984))(0);
  OUTLINED_FUNCTION_36();
  (*(v9 + 2008))(1);
  v10 = *sub_1E3E5FD88();
  v11 = *(*a1 + 680);
  v12 = v10;
  v11(v10);
  sub_1E4205F14();
  OUTLINED_FUNCTION_36();
  (*(v13 + 1768))();
  OUTLINED_FUNCTION_36();
  (*(v14 + 1840))(4);
  v64 = 0;
  v65 = 1;
  v62 = 0x403C000000000000;
  v63 = 0;
  v60 = 0x404C000000000000;
  v61 = 0;
  v58 = 0x4044000000000000;
  v59 = 0;
  v15 = MEMORY[0x1E69E7DE0];
  v16 = sub_1E3C3DE00();
  v54 = v56;
  v55 = v57;
  v24 = OUTLINED_FUNCTION_19_98(v16, v17, v18, v19, v20, v21, v22, v23, v50, v52, 0);
  sub_1E3C2FCB8(v24, v25, v26, v27, v28, &v54, v15, v29);
  memcpy(__dst, __src, 0x59uLL);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_14();
  v31 = *(v30 + 1600);
  v33 = v31(__dst, 2, v32 & 1, v15);
  LOBYTE(__dst[1]) = 1;
  v64 = 0x4032000000000000;
  v65 = 0;
  v62 = 0x4032000000000000;
  v63 = 0;
  v60 = 0x4043000000000000;
  v61 = 0;
  v58 = 0x4038000000000000;
  v59 = 0;
  v56 = 0x4036000000000000;
  v57 = 0;
  v41 = OUTLINED_FUNCTION_19_98(v33, v34, v35, v36, v37, v38, v39, v40, v51, v52, 0);
  sub_1E3C2FCB8(v41, v42, v43, v44, v45, &v56, v15, v46);
  memcpy(__dst, __src, 0x59uLL);
  v47 = OUTLINED_FUNCTION_18();
  v31(__dst, 52, v47 & 1, v15);
  LOBYTE(__dst[0]) = 5;
  LOBYTE(v64) = 6;
  sub_1E3C2FC98();
  LOBYTE(v60) = v62;
  sub_1E3C3DE00();
  LOBYTE(v56) = v58;
  sub_1E3C3DE00();
  HIBYTE(v52) = v54;
  sub_1E3C3DE00();
  BYTE5(v52) = BYTE6(v52);
  sub_1E3C2FCB8(__dst, &v60, &v56, &v52 + 7, &v64, &v52 + 5, &qword_1F5D54AF8, __src);
  LODWORD(__dst[0]) = __src[0];
  WORD2(__dst[0]) = __src[1];
  v48 = OUTLINED_FUNCTION_18();
  return v31(__dst, 54, v48 & 1, &qword_1F5D54AF8);
}

__n128 OUTLINED_FUNCTION_32_64()
{
  v1 = *(v0 + 544);
  result = *(v0 + 512);
  v3 = *(v0 + 528);
  *(v0 + 464) = result;
  *(v0 + 480) = v3;
  *(v0 + 496) = v1;
  return result;
}

uint64_t sub_1E3D54698@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  v25[0] = a6;
  v11 = sub_1E42013A4();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = v25 - v16;

  v26 = sub_1E3D54860(a1, a2, a3);
  MEMORY[0x1E690DE70](&v26, a4, &type metadata for LockupUpdatingDelegateModifier, a5);

  v21 = sub_1E3D54980(v18, v19, v20);
  v25[1] = a5;
  v25[2] = v21;
  OUTLINED_FUNCTION_4_1();
  swift_getWitnessTable();
  v22 = *(v12 + 16);
  v22(v17, v14, v11);
  v23 = *(v12 + 8);
  v23(v14, v11);
  v22(v25[0], v17, v11);
  return (v23)(v17, v11);
}

uint64_t sub_1E3D54860(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = dynamic_cast_existential_1_conditional(a1, *a1, &protocol descriptor for CollectionChildViewModelDataUpdating);
  if (v5)
  {
    v7 = v5;
    v8 = v6;
    type metadata accessor for LockupUpdatingDelegateModifier.Proxy();
    v9 = swift_allocObject();
    *(v9 + 16) = a2;
    *(v9 + 24) = a3;
    v10 = *v7;
    v11 = *(v8 + 48);

    v11(v12, &off_1F5D82700, v10, v8);
  }

  else
  {

    return 0;
  }

  return v9;
}

unint64_t sub_1E3D54980(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF37E60;
  if (!qword_1ECF37E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF37E60);
  }

  return result;
}

uint64_t sub_1E3D54A28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF37E68, &qword_1E42CE030);
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, a1, v4);
}

unint64_t sub_1E3D54AD0()
{
  result = qword_1ECF37E70;
  if (!qword_1ECF37E70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF37E68, &qword_1E42CE030);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF37E70);
  }

  return result;
}

id sub_1E3D54B34(double a1, double a2, double a3, double a4)
{
  v9 = objc_opt_self();
  [v9 begin];
  [v9 setDisableActions_];
  [v4 setFrame_];

  return [v9 commit];
}

id sub_1E3D54BF4(uint64_t a1)
{
  result = [objc_allocWithZone(type metadata accessor for UnifiedMessagingSignalProvider()) init];
  qword_1EE2AA9C0 = result;
  return result;
}

uint64_t *sub_1E3D54C24()
{
  if (qword_1EE292B70 != -1)
  {
    OUTLINED_FUNCTION_9_125(&qword_1EE292B70);
  }

  return &qword_1EE2AA9C0;
}

void sub_1E3D54C64()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  ObjectType = swift_getObjectType();
  sub_1E42069F4();
  OUTLINED_FUNCTION_0_10();
  v65 = v3;
  v66 = v2;
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5();
  v64 = v5 - v4;
  OUTLINED_FUNCTION_138();
  sub_1E4206974();
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5();
  v7 = sub_1E4203FF4();
  v8 = OUTLINED_FUNCTION_17_2(v7);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5();
  v9 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_42_1();
  v13 = OBJC_IVAR____TtC8VideosUI30UnifiedMessagingSignalProvider_engagement;
  *&v0[OBJC_IVAR____TtC8VideosUI30UnifiedMessagingSignalProvider_engagement] = 0;
  v0[OBJC_IVAR____TtC8VideosUI30UnifiedMessagingSignalProvider_upsellOfferPresented] = 0;
  *&v0[OBJC_IVAR____TtC8VideosUI30UnifiedMessagingSignalProvider_lastPlaybackEvent] = 0;
  *&v0[OBJC_IVAR____TtC8VideosUI30UnifiedMessagingSignalProvider_playbackElapsedTime] = 0;
  *&v0[OBJC_IVAR____TtC8VideosUI30UnifiedMessagingSignalProvider_notifAuthStatus] = 0;
  v0[OBJC_IVAR____TtC8VideosUI30UnifiedMessagingSignalProvider_hasEventForTVPlusonLargeTV] = 0;
  v0[OBJC_IVAR____TtC8VideosUI30UnifiedMessagingSignalProvider_hasEventForTVPlusonATV] = 0;
  v0[OBJC_IVAR____TtC8VideosUI30UnifiedMessagingSignalProvider_hasItunesPurchases] = 0;
  v0[OBJC_IVAR____TtC8VideosUI30UnifiedMessagingSignalProvider_hasItunesDownloads] = 0;
  v0[OBJC_IVAR____TtC8VideosUI30UnifiedMessagingSignalProvider_hasSubscriptionDownloads] = 0;
  v0[OBJC_IVAR____TtC8VideosUI30UnifiedMessagingSignalProvider_hasFavoriteTeamsAdded] = 0;
  v0[OBJC_IVAR____TtC8VideosUI30UnifiedMessagingSignalProvider_hasFavoriteTeamsRemoved] = 0;
  v14 = &v0[OBJC_IVAR____TtC8VideosUI30UnifiedMessagingSignalProvider_lastNLSQueryDate];
  *v14 = 0;
  v14[8] = 1;
  v0[OBJC_IVAR____TtC8VideosUI30UnifiedMessagingSignalProvider_hasUsedSportsBridgeButton] = 0;
  v15 = [objc_opt_self() mainBundle];
  v16 = sub_1E3ABF2D0(v15);
  v18 = 0x6C7070612E6D6F63;
  if (v17)
  {
    v18 = v16;
  }

  v19 = 0xEC00000076742E65;
  if (v17)
  {
    v19 = v17;
  }

  v20 = &v0[OBJC_IVAR____TtC8VideosUI30UnifiedMessagingSignalProvider_bundleId];
  *v20 = v18;
  v20[1] = v19;
  v21 = [objc_opt_self() vui_defaultBag];
  if (v21)
  {
    v22 = v21;
    v23 = [objc_allocWithZone(MEMORY[0x1E698C8D8]) initWithBag_];

    v24 = *&v1[v13];
    *&v1[v13] = v23;
  }

  else
  {
    sub_1E324FBDC();
    v25 = OUTLINED_FUNCTION_101();
    v26(v25);
    v27 = sub_1E41FFC94();
    v28 = sub_1E42067F4();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = OUTLINED_FUNCTION_125_0();
      *v29 = 0;
      _os_log_impl(&dword_1E323F000, v27, v28, "UnifiedMessagingSignalProvider::Failed to load AMS bag", v29, 2u);
      OUTLINED_FUNCTION_6_0();
    }

    (*(v11 + 8))(v0, v9);
  }

  sub_1E3280A90(0, &qword_1EE23B1D0, 0x1E69E9610);
  sub_1E4203FE4();
  v69 = MEMORY[0x1E69E7CC0];
  sub_1E3274998(&qword_1EE23B1F0, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF326B0, &qword_1E429D100);
  sub_1E328FD7C(&qword_1EE23B490, &unk_1ECF326B0, &qword_1E429D100);
  sub_1E42072E4();
  (*(v65 + 104))(v64, *MEMORY[0x1E69E8090], v66);
  *&v1[OBJC_IVAR____TtC8VideosUI30UnifiedMessagingSignalProvider_downloadAndPurchaseAccessQueue] = sub_1E4206A44();
  v30 = [objc_opt_self() defaultMediaLibrary];
  *&v1[OBJC_IVAR____TtC8VideosUI30UnifiedMessagingSignalProvider_mediaLibrary] = v30;
  *&v1[OBJC_IVAR____TtC8VideosUI30UnifiedMessagingSignalProvider_signalLock] = 0;
  v68.receiver = v1;
  v68.super_class = ObjectType;
  v31 = objc_msgSendSuper2(&v68, sel_init);
  objc_opt_self();
  v32 = v31;
  v33 = OUTLINED_FUNCTION_69_24();
  OUTLINED_FUNCTION_34_59(v33, v34, v35, sel_handleActiveDownloadButtonsDidChange_, @"VUIUnifiedMessagingRegistryActiveButtonsDidChange");

  v36 = OUTLINED_FUNCTION_69_24();
  v37 = VUIPlaybackManagerIsPlaybackUIBeingShownDidChange[0];
  v38 = objc_opt_self();
  v39 = v32;
  v40 = v37;
  v41 = [v38 sharedInstance];
  [v36 addObserver:v39 selector:sel_handleIsPlaybackUIBeingShownDidChange_ name:v40 object:v41];

  v42 = OUTLINED_FUNCTION_69_24();
  OUTLINED_FUNCTION_34_59(v42, v43, v44, sel_handleHasFavoriteTeamsDidChange_, @"VUIUnifiedMessagingRegistryHasFavoriteTeamsDidChange");

  v45 = OUTLINED_FUNCTION_69_24();
  OUTLINED_FUNCTION_34_59(v45, v46, v47, sel_handleLibraryContentsDidChange_, @"VUISideBandContentsDidChangeNotification");

  v48 = OUTLINED_FUNCTION_69_24();
  OUTLINED_FUNCTION_34_59(v48, v49, v50, sel_handleNotifAuthStatusDidChange, *MEMORY[0x1E69DDAB0]);

  v51 = OUTLINED_FUNCTION_69_24();
  OUTLINED_FUNCTION_34_59(v51, v52, v53, sel_handleHasEventforTVPlus_, *MEMORY[0x1E69E1690]);

  if (TVAppFeature.isEnabled.getter(12, v54, v55))
  {
    v56 = _s8VideosUI43VUILocationServiceProxyObjCNotificationNameC30locationAuthorizationDidChangeSo014NSNotificationH0avgZ_0();
  }

  else
  {
    v56 = *MEMORY[0x1E69E16C8];
  }

  v57 = v56;
  v58 = objc_opt_self();
  v59 = v57;
  v60 = [v58 defaultCenter];
  [v60 addObserver:v39 selector:sel_handleLocationStatusDidChange_ name:v59 object:0];

  sub_1E3D553AC();
  sub_1E3D555E0(0);
  sub_1E3D55954();
  v61 = [objc_opt_self() standardUserDefaults];
  sub_1E37BFCC0();

  v62 = sub_1E4205ED4();

  v63 = [v61 BOOLForKey_];

  *(v39 + OBJC_IVAR____TtC8VideosUI30UnifiedMessagingSignalProvider_hasUsedSportsBridgeButton) = v63;
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3D553AC()
{
  OUTLINED_FUNCTION_31_1();
  sub_1E4203FC4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_71_0();
  sub_1E4203FF4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5();
  v3 = *(v0 + OBJC_IVAR____TtC8VideosUI30UnifiedMessagingSignalProvider_downloadAndPurchaseAccessQueue);
  OUTLINED_FUNCTION_4_0();
  v4 = swift_allocObject();
  OUTLINED_FUNCTION_141_0(v4);
  v17[4] = sub_1E3D5BB48;
  v17[5] = v4;
  OUTLINED_FUNCTION_12_0();
  v17[1] = 1107296256;
  OUTLINED_FUNCTION_0_48();
  v17[2] = v5;
  v17[3] = &block_descriptor_81_0;
  v6 = _Block_copy(v17);
  v7 = v3;

  sub_1E4203FE4();
  OUTLINED_FUNCTION_4_2();
  sub_1E3274998(v8, v9, MEMORY[0x1E69E7F70]);
  v10 = OUTLINED_FUNCTION_153_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(v10, v11);
  OUTLINED_FUNCTION_96_16(&qword_1EE23B5D0);
  OUTLINED_FUNCTION_31_57();
  OUTLINED_FUNCTION_151_0();
  sub_1E42072E4();
  v12 = OUTLINED_FUNCTION_62_0();
  MEMORY[0x1E6911380](v12);
  _Block_release(v6);

  v13 = OUTLINED_FUNCTION_16_80();
  v14(v13);
  v15 = OUTLINED_FUNCTION_41_49();
  v16(v15);

  OUTLINED_FUNCTION_25_2();
}

void sub_1E3D555E0(char a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C400, &qword_1E429ABE0);
  v5 = OUTLINED_FUNCTION_17_2(v4);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_71_0();
  v6 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_42_1();
  OUTLINED_FUNCTION_4_0();
  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  *(v11 + 24) = a1;
  if (TVAppFeature.isEnabled.getter(12, v12, v13))
  {
    if ([objc_opt_self() isRunningInTVExtension])
    {
      sub_1E324FBDC();
      v14 = OUTLINED_FUNCTION_101();
      v15(v14);
      v16 = sub_1E41FFC94();
      sub_1E42067E4();
      OUTLINED_FUNCTION_41_15();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = OUTLINED_FUNCTION_125_0();
        OUTLINED_FUNCTION_50_4(v18);
        OUTLINED_FUNCTION_24_2(&dword_1E323F000, v19, v20, "UnifiedMessagingSignalProvider:: local notification services not available in TV extension.");
        OUTLINED_FUNCTION_6_0();
      }

      else
      {
      }

      (*(v8 + 8))(v1, v6);
    }

    else
    {
      v25 = sub_1E4206474();
      __swift_storeEnumTagSinglePayload(v2, 1, 1, v25);
      OUTLINED_FUNCTION_10_9();
      v26 = swift_allocObject();
      v26[2] = 0;
      v26[3] = 0;
      v26[4] = sub_1E3D5B9E4;
      v26[5] = v11;
      sub_1E376FE58(0, 0, v2, &unk_1E42CE268, v26);
    }
  }

  else
  {
    v21 = [objc_opt_self() vuiNotificationCenter];
    if (v21)
    {
      v22 = v21;
      OUTLINED_FUNCTION_2_4();
      v23 = swift_allocObject();
      *(v23 + 16) = sub_1E3D5B9E4;
      *(v23 + 24) = v11;
      aBlock[4] = sub_1E3D5B9F0;
      aBlock[5] = v23;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1E377674C;
      aBlock[3] = &block_descriptor_54;
      v24 = _Block_copy(aBlock);

      [v22 getNotificationSettingsWithCompletionHandler_];

      _Block_release(v24);
    }

    else
    {
    }
  }
}

void sub_1E3D55954()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C400, &qword_1E429ABE0);
  v2 = OUTLINED_FUNCTION_17_2(v1);
  MEMORY[0x1EEE9AC00](v2);
  v4 = aBlock - v3;
  if (TVAppFeature.isEnabled.getter(12, v5, v6))
  {
    v7 = sub_1E4206474();
    __swift_storeEnumTagSinglePayload(v4, 1, 1, v7);
    v8 = swift_allocObject();
    v8[2] = 0;
    v8[3] = 0;
    v8[4] = v0;
    v9 = v0;
    sub_1E37748D8(0, 0, v4, &unk_1E42CE280, v8);
  }

  else
  {
    v10 = [objc_opt_self() sharedInstance];
    OUTLINED_FUNCTION_4_0();
    v11 = swift_allocObject();
    OUTLINED_FUNCTION_141_0(v11);
    aBlock[4] = sub_1E3D5BFE8;
    aBlock[5] = v11;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1E39CF930;
    aBlock[3] = &block_descriptor_104_1;
    v12 = _Block_copy(aBlock);

    OUTLINED_FUNCTION_25();
    [v13 v14];

    _Block_release(v12);
  }
}

uint64_t sub_1E3D55BC8()
{
  sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_139();
  sub_1E41FE9C4();
  v1 = sub_1E41FE9A4();
  if (v1)
  {
    v2 = v1;
    v3 = objc_opt_self();
    v4 = @"com.apple.onboarding.tvapp";
    LODWORD(v3) = [v3 acknowledgementNeededForPrivacyIdentifier:v4 account:v2];

    return v3 ^ 1;
  }

  else
  {
    sub_1E324FBDC();
    OUTLINED_FUNCTION_22_6();
    v6 = OUTLINED_FUNCTION_33_14();
    v7(v6);
    v8 = sub_1E41FFC94();
    v9 = sub_1E42067F4();
    if (OUTLINED_FUNCTION_104(v9))
    {
      v10 = OUTLINED_FUNCTION_125_0();
      OUTLINED_FUNCTION_34_10(v10);
      OUTLINED_FUNCTION_5_20(&dword_1E323F000, v11, v12, "Could not resolve an account to check for acceptance of GDPR, returning false");
      OUTLINED_FUNCTION_65_0();
    }

    v13 = OUTLINED_FUNCTION_13_8();
    v14(v13);
    return 0;
  }
}

uint64_t sub_1E3D55D30()
{
  v1 = sub_1E41FF214();
  OUTLINED_FUNCTION_0_10();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_4_6();
  v7 = v5 - v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_78();
  if (TVAppFeature.isEnabled.getter(12, v9, v10))
  {
    sub_1E41FEDE4();
    sub_1E41FEDD4();
    sub_1E41FED94();

    (*(v3 + 32))(v7, v0, v1);
    v11 = OUTLINED_FUNCTION_13_8();
    v13 = v12(v11);
    result = 0;
    if (v13 != *MEMORY[0x1E69D5900])
    {
      if (v13 == *MEMORY[0x1E69D5908])
      {
        return 1;
      }

      else
      {
        v18 = OUTLINED_FUNCTION_13_8();
        v19(v18);
        return -1;
      }
    }
  }

  else
  {
    result = [objc_opt_self() defaultLocationManager];
    if (result)
    {
      v15 = result;
      v16 = [result authorizationStatus];

      if (v16 == 1)
      {
        v17 = 1;
      }

      else
      {
        v17 = -1;
      }

      if (v16)
      {
        return v17;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1E3D55EE8()
{
  result = [objc_opt_self() sharedSettings];
  if (result)
  {
    v1 = result;
    v2 = [result networkStatus];

    if (v2 == 1)
    {
      return 1;
    }

    else
    {
      return 2 * (v2 == 2);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1E3D55F60(char *a1, char *a2)
{
  isEscapingClosureAtFileLocation = 0xD00000000000001BLL;
  v6 = [objc_allocWithZone(MEMORY[0x1E698CA08]) initForEngagement];
  OUTLINED_FUNCTION_95_17();
  v7 = sub_1E4205ED4();
  v8 = &selRef_alwaysPrefetchAppConfiguration;
  [v6 setEventType:v7];

  v9 = sub_1E4205ED4();
  OUTLINED_FUNCTION_71_27();
  v10 = sub_1E4205ED4();
  OUTLINED_FUNCTION_66_25(v10, sel_setProperty_forBodyKey_);

  v11 = a1 == 0xD00000000000001ELL && 0x80000001E4280C70 == a2;
  if (v11 || (OUTLINED_FUNCTION_43_17(0xD00000000000001ELL, 0x80000001E4280C70) & 1) != 0)
  {
    goto LABEL_6;
  }

  v23 = a1 == 0xD00000000000001BLL && 0x80000001E4280C90 == a2;
  if (v23 || (OUTLINED_FUNCTION_43_17(0xD00000000000001BLL, 0x80000001E4280C90) & 1) != 0)
  {
    v24 = *(v2 + OBJC_IVAR____TtC8VideosUI30UnifiedMessagingSignalProvider_downloadAndPurchaseAccessQueue);
    OUTLINED_FUNCTION_4_0();
    v25 = swift_allocObject();
    swift_unknownObjectWeakInit();
    OUTLINED_FUNCTION_2_4();
    v26 = swift_allocObject();
    *(v26 + 16) = v25;
    *(v26 + 24) = v6;
    v10 = v26;
    OUTLINED_FUNCTION_2_4();
    v27 = swift_allocObject();
    *(v27 + 16) = sub_1E3D5C118;
    *(v27 + 24) = v10;
    v109 = sub_1E379E500;
    v110 = v27;
    OUTLINED_FUNCTION_3_26();
    v106 = 1107296256;
    v107 = sub_1E3839B50;
    v108 = &block_descriptor_127_0;
    v28 = _Block_copy(aBlock);
    v8 = v110;
    v29 = v24;
    v30 = v6;
    v6 = v29;
    v31 = v30;
    v32 = v30;

    dispatch_sync(v6, v28);

    _Block_release(v28);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      v6 = v31;
      v12 = sub_1E3D5C118;
      goto LABEL_7;
    }

    __break(1u);
    goto LABEL_49;
  }

  v34 = a1 == 0xD000000000000010 && 0x80000001E4280CB0 == a2;
  if (v34 || (OUTLINED_FUNCTION_43_17(0xD000000000000010, 0x80000001E4280CB0) & 1) != 0)
  {
    goto LABEL_6;
  }

  v35 = a1 == 0xD000000000000012 && 0x80000001E4280CD0 == a2;
  if (v35 || (OUTLINED_FUNCTION_43_17(0xD000000000000012, 0x80000001E4280CD0) & 1) != 0)
  {
    sub_1E3D55BC8();
    v36 = sub_1E4206394();
    OUTLINED_FUNCTION_23_74();
  }

  else
  {
    v39 = a1 == 0xD000000000000019 && 0x80000001E4280CF0 == a2;
    if (v39 || (OUTLINED_FUNCTION_43_17(0xD000000000000019, 0x80000001E4280CF0) & 1) != 0)
    {
      v10 = sub_1E4206394();
      v40 = sub_1E4205ED4();
      [v6 setProperty:v10 forBodyKey:v40];

      v36 = sub_1E4206394();
    }

    else
    {
      v41 = a1 == 0xD000000000000018 && 0x80000001E4280D10 == a2;
      if (v41 || (OUTLINED_FUNCTION_43_17(0xD000000000000018, 0x80000001E4280D10) & 1) != 0)
      {
        goto LABEL_6;
      }

      v10 = 0xD000000000000017;
      v42 = a1 == 0xD000000000000017 && 0x80000001E4280D30 == a2;
      if (!v42 && (OUTLINED_FUNCTION_43_17(0xD000000000000017, 0x80000001E4280D30) & 1) == 0)
      {
LABEL_49:
        v104 = v6;
        v43 = v2;
        if (a1 == 0x6B63616279616C70 && a2 == 0xEE00646E45646944)
        {
          v12 = 0;
          v10 = 0;
          goto LABEL_61;
        }

        v102 = a1;
        v103 = a2;
        if (OUTLINED_FUNCTION_43_17(0x6B63616279616C70, 0xEE00646E45646944) & 1) != 0 || ((OUTLINED_FUNCTION_78_17(), v11) ? (v54 = v53 == v46) : (v54 = 0), v54 || (OUTLINED_FUNCTION_73_18(v45, v46, v47, v48, v49, v50, v51, v52, v97, a1, a2)))
        {
LABEL_59:
          v12 = 0;
          v10 = 0;
          a1 = v102;
          a2 = v103;
LABEL_61:
          v6 = v104;
          goto LABEL_7;
        }

        OUTLINED_FUNCTION_78_17();
        v64 = v11 && v56 == v63;
        if (v64 || (v55 = OUTLINED_FUNCTION_73_18(v55, v56, v57, v58, v59, v60, v61, v62, v98, v102, v103), (v55 & 1) != 0))
        {
          sub_1E3D567E4(v55);
          v36 = sub_1E41FE954();
        }

        else
        {
          if (v102 != isEscapingClosureAtFileLocation || 0x80000001E4280D70 != v103)
          {
            v55 = OUTLINED_FUNCTION_73_18(0xD00000000000001BLL, 0x80000001E4280D70, v65, v66, v67, v68, v69, v70, v99, v102, v103);
            if ((v55 & 1) == 0)
            {
              OUTLINED_FUNCTION_78_17();
              v83 = v11 && v75 == v82;
              if (v83 || (OUTLINED_FUNCTION_73_18(v74, v75, v76, v77, v78, v79, v80, v81, v100, v102, v103) & 1) != 0)
              {
                sub_1E4146278();

                v84 = sub_1E4146670();

                sub_1E39701B0(v84);
                v36 = sub_1E42062A4();

                sub_1E4205ED4();
                OUTLINED_FUNCTION_83_13();
                [v104 v85];
                a1 = v102;
                a2 = v103;
                v6 = v104;
                goto LABEL_30;
              }

              OUTLINED_FUNCTION_78_17();
              v95 = v11 && v87 == v94;
              if (!v95 && (OUTLINED_FUNCTION_73_18(v86, v87, v88, v89, v90, v91, v92, v93, v101, v102, v103) & 1) == 0)
              {
                goto LABEL_59;
              }

              OUTLINED_FUNCTION_70_24();
              v96 = sub_1E4205ED4();
              [v104 v8[102]];

              v2 = v43;
              v6 = v104;
              v36 = sub_1E4205ED4();
              sub_1E4205ED4();
              OUTLINED_FUNCTION_83_13();
              goto LABEL_69;
            }
          }

          sub_1E3D56848(v55);
          v36 = sub_1E4206694();
        }

        sub_1E4205ED4();
        OUTLINED_FUNCTION_83_13();
        v6 = v104;
LABEL_69:
        OUTLINED_FUNCTION_66_25(v71, v72);
        a1 = v102;
        a2 = v103;
        goto LABEL_30;
      }

      sub_1E3D55D30();
      v36 = sub_1E4206694();
      OUTLINED_FUNCTION_35_53();
    }
  }

  sub_1E4205ED4();
  OUTLINED_FUNCTION_83_13();
  OUTLINED_FUNCTION_66_25(v37, v38);
LABEL_30:

LABEL_6:
  v12 = 0;
  v10 = 0;
LABEL_7:
  v13 = *(v2 + OBJC_IVAR____TtC8VideosUI30UnifiedMessagingSignalProvider_engagement);
  if (v13)
  {
    v14 = v13;
    v15 = [v6 dictionaryForPosting];
    sub_1E4205C64();

    v16 = sub_1E4205C44();

    v17 = [v14 enqueueData_];

    if (v17)
    {
      OUTLINED_FUNCTION_4_0();
      v18 = swift_allocObject();
      OUTLINED_FUNCTION_141_0(v18);
      OUTLINED_FUNCTION_10_9();
      v19 = swift_allocObject();
      v19[2] = v18;
      v19[3] = a1;
      v19[4] = a2;
      v19[5] = v6;
      v109 = sub_1E3D5C10C;
      v110 = v19;
      OUTLINED_FUNCTION_3_26();
      v106 = 1107296256;
      OUTLINED_FUNCTION_27_63();
      v107 = v20;
      v108 = &block_descriptor_117_0;
      v21 = _Block_copy(aBlock);
      v22 = v6;
      v6 = v17;

      [v6 addFinishBlock:v21];

      _Block_release(v21);
    }
  }

  return sub_1E37FAED8(v12, v10);
}

uint64_t sub_1E3D5676C()
{
  v1 = OBJC_IVAR____TtC8VideosUI30UnifiedMessagingSignalProvider_signalLock;
  OUTLINED_FUNCTION_23_2();
  swift_beginAccess();
  os_unfair_lock_lock((v0 + v1));
  v2 = *(v0 + OBJC_IVAR____TtC8VideosUI30UnifiedMessagingSignalProvider_lastNLSQueryDate);
  os_unfair_lock_unlock((v0 + v1));
  swift_endAccess();
  return v2;
}

double sub_1E3D567E4(uint64_t a1)
{
  OUTLINED_FUNCTION_8_135(a1);
  os_unfair_lock_lock((v1 + v2));
  v3 = *(v1 + OBJC_IVAR____TtC8VideosUI30UnifiedMessagingSignalProvider_playbackElapsedTime);
  os_unfair_lock_unlock((v1 + v2));
  swift_endAccess();
  return v3;
}

uint64_t sub_1E3D56848(uint64_t a1)
{
  OUTLINED_FUNCTION_8_135(a1);
  os_unfair_lock_lock((v1 + v2));
  v3 = *(v1 + OBJC_IVAR____TtC8VideosUI30UnifiedMessagingSignalProvider_notifAuthStatus);
  os_unfair_lock_unlock((v1 + v2));
  swift_endAccess();
  if ((v3 - 1) >= 4)
  {
    return 0;
  }

  else
  {
    return v3;
  }
}

void sub_1E3D568AC()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_4_6();
  v14 = v12 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v51 - v16;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v19 = Strong;
    v54 = v3;
    if (v5)
    {
      v20 = v5;
      v21 = sub_1E324FBDC();
      (*(v10 + 16))(v17, v21, v8);
      v22 = v5;

      v23 = sub_1E41FFC94();
      v24 = sub_1E42067F4();

      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        v53 = v8;
        v26 = v25;
        v55 = swift_slowAlloc();
        *(v26 + 4) = OUTLINED_FUNCTION_86_11(4.8151e-34);
        *(v26 + 12) = 2080;
        swift_getErrorValue();
        v27 = sub_1E4207AB4();
        v29 = sub_1E3270FC8(v27, v28, &v55);

        *(v26 + 14) = v29;
        _os_log_impl(&dword_1E323F000, v23, v24, "UnifiedMessagingSignalProvider::Promise for data enqueue %s finish with error: %s", v26, 0x16u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_65_0();
        OUTLINED_FUNCTION_6_0();

        (*(v10 + 8))(v17, v53);
      }

      else
      {

        (*(v10 + 8))(v17, v8);
      }
    }

    else
    {
      v30 = [v1 dictionaryForPosting];
      v31 = sub_1E4205C64();

      v32 = sub_1E374BD08(v31);

      sub_1E324FBDC();
      v33 = OUTLINED_FUNCTION_101();
      v34(v33);

      v35 = v7;
      v36 = sub_1E41FFC94();
      v37 = sub_1E4206814();

      if (os_log_type_enabled(v36, v37))
      {
        v53 = v8;
        v38 = swift_slowAlloc();
        v52 = swift_slowAlloc();
        v55 = v52;
        *(v38 + 4) = OUTLINED_FUNCTION_86_11(4.8152e-34);
        *(v38 + 12) = 2080;
        if (v7)
        {
          v39 = [v35 debugDescription];
          sub_1E4205F14();
        }

        v43 = OUTLINED_FUNCTION_53();
        v46 = sub_1E3270FC8(v43, v44, v45);

        *(v38 + 14) = v46;
        *(v38 + 22) = 2080;
        if (v32)
        {
          sub_1E4205CA4();
        }

        v47 = OUTLINED_FUNCTION_53();
        v50 = sub_1E3270FC8(v47, v48, v49);

        *(v38 + 24) = v50;
        _os_log_impl(&dword_1E323F000, v36, v37, "UnifiedMessagingSignalProvider::Promise for data enqueue %s did finish with result: %s for data: %s", v38, 0x20u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_6_0();
        OUTLINED_FUNCTION_6_0();

        v42 = *(v10 + 8);
        v40 = v14;
        v41 = v53;
      }

      else
      {

        v40 = OUTLINED_FUNCTION_153_2();
      }

      v42(v40, v41);
      sub_1E3D56D70();
    }
  }

  OUTLINED_FUNCTION_25_2();
}

void sub_1E3D56D70()
{
  v0 = [objc_opt_self() defaultLocationManager];
  if (v0)
  {
    v1 = v0;
    v3[4] = sub_1E3D592BC;
    v3[5] = 0;
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 1107296256;
    v3[2] = sub_1E39EBA28;
    v3[3] = &block_descriptor_102;
    v2 = _Block_copy(v3);
    [v1 fetchAuthorizationStatus_];
    _Block_release(v2);
  }

  else
  {
    __break(1u);
  }
}

void sub_1E3D56E44()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1;
  v4 = v3;
  v5 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_42_1();
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    v11 = OBJC_IVAR____TtC8VideosUI30UnifiedMessagingSignalProvider_signalLock;
    OUTLINED_FUNCTION_23_2();
    swift_beginAccess();
    os_unfair_lock_lock(&v10[v11]);
    v12 = *&v10[OBJC_IVAR____TtC8VideosUI30UnifiedMessagingSignalProvider_notifAuthStatus];
    *&v10[OBJC_IVAR____TtC8VideosUI30UnifiedMessagingSignalProvider_notifAuthStatus] = v4;
    os_unfair_lock_unlock(&v10[v11]);
    swift_endAccess();
    sub_1E324FBDC();
    v13 = OUTLINED_FUNCTION_101();
    v14(v13);
    v15 = sub_1E41FFC94();
    v16 = sub_1E4206814();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 67109376;
      *(v17 + 4) = v12 != v4;
      *(v17 + 8) = 1024;
      *(v17 + 10) = v2 & 1;
      _os_log_impl(&dword_1E323F000, v15, v16, "UnifiedMessagingSignalProvider:: notif auth status changed %{BOOL}d - should notify change %{BOOL}d", v17, 0xEu);
      OUTLINED_FUNCTION_6_0();
    }

    (*(v7 + 8))(v0, v5);
    if ((v2 & 1) != 0 && v12 != v4)
    {
      v18 = OUTLINED_FUNCTION_35_53();
      sub_1E3D55F60(v18, v19);
    }
  }

  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3D57030()
{
  OUTLINED_FUNCTION_24();
  v0[2] = v1;
  v0[3] = v2;
  type metadata accessor for LocalNotificationService();
  v3 = swift_task_alloc();
  v0[4] = v3;
  *v3 = v0;
  OUTLINED_FUNCTION_56_1(v3);

  return static LocalNotificationService.authorizationStatus()();
}

uint64_t sub_1E3D570C8()
{
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_39();
  *(v1 + 40) = v0;

  return MEMORY[0x1EEE6DFA0](sub_1E3D571C0, 0, 0);
}

uint64_t sub_1E3D571C0()
{
  OUTLINED_FUNCTION_24();
  (*(v0 + 16))(*(v0 + 40));
  OUTLINED_FUNCTION_54();

  return v1();
}

uint64_t sub_1E3D57220()
{
  OUTLINED_FUNCTION_24();
  v0[7] = v1;
  v2 = sub_1E41FFCB4();
  v0[8] = v2;
  v0[9] = *(v2 - 8);
  v0[10] = swift_task_alloc();
  v0[11] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E3D572E8, 0, 0);
}

uint64_t sub_1E3D572E8()
{
  OUTLINED_FUNCTION_24();
  sub_1E41FEE44();
  *(v0 + 96) = sub_1E41FEE24();
  v1 = swift_task_alloc();
  *(v0 + 104) = v1;
  *v1 = v0;
  OUTLINED_FUNCTION_56_1(v1);

  return MEMORY[0x1EEE43608](0);
}

uint64_t sub_1E3D5738C()
{
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_39();
  *(v2 + 112) = v1;
  *(v2 + 120) = v0;

  if (v0)
  {
    v3 = sub_1E3D57704;
  }

  else
  {

    v3 = sub_1E3D574A0;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1E3D574A0()
{
  v1 = [*(v0 + 112) data];
  sub_1E41FE464();

  OUTLINED_FUNCTION_27_0();
  v2 = sub_1E41FE434();
  v3 = OUTLINED_FUNCTION_27_0();
  sub_1E38DCCB0(v3, v4);
  if (v2)
  {
    v5 = sub_1E4205F14();
    sub_1E3277E60(v5, v6, v2, (v0 + 16));

    if (*(v0 + 40))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770, &qword_1E42992B0);
      if (swift_dynamicCast())
      {
        v7 = *(v0 + 112);
        v8 = sub_1E3744600(*(v0 + 48));

        sub_1E3D57A9C(v8);

        goto LABEL_12;
      }
    }

    else
    {
      sub_1E325F6F0(v0 + 16, &unk_1ECF296E0, &unk_1E4298030);
    }

    sub_1E324FBDC();
    v19 = OUTLINED_FUNCTION_22_34();
    v20(v19);
    v11 = sub_1E41FFC94();
    sub_1E42067F4();
    OUTLINED_FUNCTION_41_15();
    v22 = os_log_type_enabled(v11, v21);
    v14 = *(v0 + 112);
    if (v22)
    {
      v23 = OUTLINED_FUNCTION_125_0();
      OUTLINED_FUNCTION_50_4(v23);
      v18 = "Configuration response missing data key dictionary";
      goto LABEL_10;
    }
  }

  else
  {
    sub_1E324FBDC();
    v9 = OUTLINED_FUNCTION_22_34();
    v10(v9);
    v11 = sub_1E41FFC94();
    sub_1E42067F4();
    OUTLINED_FUNCTION_41_15();
    v13 = os_log_type_enabled(v11, v12);
    v14 = *(v0 + 112);
    if (v13)
    {
      v15 = OUTLINED_FUNCTION_125_0();
      OUTLINED_FUNCTION_50_4(v15);
      v18 = "Configuration response is not a valid dictionary";
LABEL_10:
      OUTLINED_FUNCTION_48_5(&dword_1E323F000, v16, v17, v18);
      OUTLINED_FUNCTION_6_0();
    }
  }

  v24 = OUTLINED_FUNCTION_27_0();
  v25(v24);
LABEL_12:

  OUTLINED_FUNCTION_54();

  return v26();
}

uint64_t sub_1E3D57704()
{
  OUTLINED_FUNCTION_24();

  OUTLINED_FUNCTION_54();

  return v0();
}

uint64_t sub_1E3D57774(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 2;
  }

  v4 = sub_1E327D33C(a1, a2);
  if (v5)
  {
    return *(*(a3 + 56) + v4);
  }

  else
  {
    return 2;
  }
}

void sub_1E3D577C0(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C8D0, &qword_1E429A1F0);
    v2 = sub_1E4207744();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v8 = 0;
  if (!v5)
  {
    goto LABEL_8;
  }

  do
  {
LABEL_12:
    v10 = __clz(__rbit64(v5)) | (v8 << 6);
    sub_1E374E74C(*(a1 + 48) + 40 * v10, v33);
    sub_1E37E93E8(*(a1 + 56) + 32 * v10, v35, &unk_1ECF296E0, &unk_1E4298030);
    v21 = v33[0];
    v23 = v33[1];
    v25 = v34;
    v32[0] = v35[0];
    v32[1] = v35[1];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF296E0, &unk_1E4298030);
    swift_dynamicCast();
    v28 = v21;
    v29 = v23;
    v30 = v25;
    sub_1E329504C(&v27, v31);
    v22 = v28;
    v24 = v29;
    v26 = v30;
    sub_1E329504C(v31, v32);
    v11 = sub_1E42073F4();
    v12 = -1 << *(v2 + 32);
    v13 = v11 & ~v12;
    v14 = v13 >> 6;
    if (((-1 << v13) & ~*(v7 + 8 * (v13 >> 6))) == 0)
    {
      v16 = 0;
      v17 = (63 - v12) >> 6;
      while (++v14 != v17 || (v16 & 1) == 0)
      {
        v18 = v14 == v17;
        if (v14 == v17)
        {
          v14 = 0;
        }

        v16 |= v18;
        v19 = *(v7 + 8 * v14);
        if (v19 != -1)
        {
          v15 = __clz(__rbit64(~v19)) + (v14 << 6);
          goto LABEL_21;
        }
      }

      goto LABEL_25;
    }

    v15 = __clz(__rbit64((-1 << v13) & ~*(v7 + 8 * (v13 >> 6)))) | v13 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    v5 &= v5 - 1;
    *(v7 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
    v20 = *(v2 + 48) + 40 * v15;
    *v20 = v22;
    *(v20 + 16) = v24;
    *(v20 + 32) = v26;
    sub_1E329504C(v32, (*(v2 + 56) + 32 * v15));
    ++*(v2 + 16);
  }

  while (v5);
LABEL_8:
  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v9 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v9);
    ++v8;
    if (v5)
    {
      v8 = v9;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
}

uint64_t sub_1E3D57A9C(uint64_t a1)
{
  v2 = sub_1E3D57B10(31350, 0xE200000000000000, a1);
  sub_1E3D59C24(v2 & 1, &OBJC_IVAR____TtC8VideosUI30UnifiedMessagingSignalProvider_hasEventForTVPlusonLargeTV);
  v3 = sub_1E3D57B10(0x5654656C707041, 0xE700000000000000, a1);
  return sub_1E3D59C24(v3 & 1, &OBJC_IVAR____TtC8VideosUI30UnifiedMessagingSignalProvider_hasEventForTVPlusonATV);
}

uint64_t sub_1E3D57B10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1E4207414();
  sub_1E375D7E8(a3, &v55, &v51);
  sub_1E375D84C(&v51);
  if (!v56)
  {
    v43 = &v55;
LABEL_32:
    sub_1E325F6F0(v43, &unk_1ECF296E0, &unk_1E4298030);
    return 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770, &qword_1E42992B0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  sub_1E3277E60(0x6D726F6674616C70, 0xED00006465735573, 0x706F725072657375, &v51);

  if (!v53)
  {
LABEL_31:
    v43 = &v51;
    goto LABEL_32;
  }

  OUTLINED_FUNCTION_53_36(v6, v7, v8, v9, v10, v11, v12, v13, v44, 0x706F725072657375, 0xE900000000000073, v51, *(&v51 + 1), v52, v53, v54, v55);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  sub_1E3277E60(a1, a2, v55, &v51);

  if (!v53)
  {
    goto LABEL_31;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E9B0, qword_1E4298110);
  OUTLINED_FUNCTION_53_36(v14, v15, v16, v14, v17, v18, v19, v20, v45, v47, v49, v51, *(&v51 + 1), v52, v53, v54, v55);
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
    return 0;
  }

  v22 = v55;
  v23 = *(v55 + 16);
  if (!v23)
  {
LABEL_36:

    return 0;
  }

  v24 = 0;
  v25 = 0x6573776F7242;
  while (1)
  {
    if (v24 >= *(v22 + 16))
    {
      __break(1u);
      return result;
    }

    v26 = *(v22 + 32 + 8 * v24);
    if (*(v26 + 16))
    {

      v27 = sub_1E327D33C(0x73746E657665, 0xE600000000000000);
      if ((v28 & 1) == 0)
      {

        goto LABEL_27;
      }

      sub_1E328438C(*(v26 + 56) + 32 * v27, &v51);

      v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C420, &qword_1E429CDD0);
      OUTLINED_FUNCTION_53_36(v29, v30, v31, v29, v32, v33, v34, v35, v46, v48, v50, v51, *(&v51 + 1), v52, v53, v54, v55);
      result = swift_dynamicCast();
      if (result)
      {
        break;
      }
    }

LABEL_27:
    if (++v24 == v23)
    {
      goto LABEL_36;
    }
  }

  v36 = v25;
  v46 = v55;
  v37 = (v55 + 40);
  v38 = *(v55 + 16) + 1;
  do
  {
    if (!--v38)
    {

      v25 = v36;
      goto LABEL_27;
    }

    v39 = *(v37 - 1);
    v40 = *v37;
    v41 = v39 == v36 && v40 == 0xE600000000000000;
    if (v41 || (sub_1E42079A4() & 1) != 0)
    {
      break;
    }

    if (v39 == 2036427856 && v40 == 0xE400000000000000)
    {
      break;
    }

    v37 += 2;
  }

  while ((sub_1E42079A4() & 1) == 0);

  return 1;
}

uint64_t sub_1E3D57E54()
{
  v2 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_42_1();
  [objc_opt_self() cancelPreviousPerformRequestsWithTarget:v0 selector:sel_debounceActiveDownloadButtonDidChange object:0];
  [v0 performSelector:sel_debounceActiveDownloadButtonDidChange withObject:0 afterDelay:1.0];
  sub_1E324FBDC();
  OUTLINED_FUNCTION_22_6();
  v6(v0);
  v7 = sub_1E41FFC94();
  v8 = sub_1E42067E4();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = OUTLINED_FUNCTION_125_0();
    OUTLINED_FUNCTION_34_10(v9);
    _os_log_impl(&dword_1E323F000, v7, v8, "UnifiedMessagingSignalProvider:: scheduled active download buttons notification", v1, 2u);
    OUTLINED_FUNCTION_65_0();
  }

  return (*(v4 + 8))(v0, v2);
}

void *sub_1E3D57FD0(uint64_t a1)
{
  sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_139();
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = result;
    sub_1E3D55F60(0xD00000000000001ELL, 0x80000001E4280C70);
    sub_1E324FBDC();
    v4 = OUTLINED_FUNCTION_33_14();
    v5(v4);
    v6 = sub_1E41FFC94();
    sub_1E42067E4();
    OUTLINED_FUNCTION_41_15();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = OUTLINED_FUNCTION_125_0();
      OUTLINED_FUNCTION_50_4(v8);
      OUTLINED_FUNCTION_48_5(&dword_1E323F000, v9, v10, "UnifiedMessagingSignalProvider:: handling debounced active download buttons notification");
      OUTLINED_FUNCTION_6_0();
    }

    v11 = OUTLINED_FUNCTION_13_8();
    return v12(v11);
  }

  return result;
}

void sub_1E3D58198()
{
  OUTLINED_FUNCTION_31_1();
  v33 = v0;
  v34 = v1;
  v35 = sub_1E4203FC4();
  OUTLINED_FUNCTION_0_10();
  v38 = v2;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_71_0();
  sub_1E4203FF4();
  OUTLINED_FUNCTION_0_10();
  v36 = v5;
  v37 = v4;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_28_4();
  v6 = sub_1E41FDF34();
  OUTLINED_FUNCTION_0_10();
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v12 = sub_1E4203FD4();
  OUTLINED_FUNCTION_0_10();
  v14 = v13;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_5();
  v18 = v17 - v16;
  sub_1E3280A90(0, &qword_1EE23B1D0, 0x1E69E9610);
  (*(v14 + 104))(v18, *MEMORY[0x1E69E7F98], v12);
  v32 = sub_1E4206A54();
  (*(v14 + 8))(v18, v12);
  OUTLINED_FUNCTION_4_0();
  v19 = swift_allocObject();
  swift_unknownObjectWeakInit();
  (*(v8 + 16))(&v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v34, v6);
  v20 = (*(v8 + 80) + 24) & ~*(v8 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = v19;
  (*(v8 + 32))(v21 + v20, &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
  v40[4] = sub_1E3D5BE4C;
  v40[5] = v21;
  OUTLINED_FUNCTION_12_0();
  v40[1] = 1107296256;
  OUTLINED_FUNCTION_0_48();
  v40[2] = v22;
  v40[3] = &block_descriptor_96_0;
  v23 = _Block_copy(v40);

  sub_1E4203FE4();
  v39 = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_4_2();
  sub_1E3274998(v24, v25, MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A730, &qword_1E429B000);
  sub_1E328FD7C(&qword_1EE23B5D0, &qword_1ECF2A730, &qword_1E429B000);
  OUTLINED_FUNCTION_31_57();
  OUTLINED_FUNCTION_151_0();
  sub_1E42072E4();
  v26 = OUTLINED_FUNCTION_62_0();
  v27 = v32;
  MEMORY[0x1E6911380](v26);
  _Block_release(v23);

  v28 = OUTLINED_FUNCTION_16_80();
  v29(v28);
  v30 = OUTLINED_FUNCTION_41_49();
  v31(v30);

  OUTLINED_FUNCTION_25_2();
}

void sub_1E3D58580()
{
  OUTLINED_FUNCTION_31_1();
  sub_1E4203FC4();
  OUTLINED_FUNCTION_0_10();
  v29 = v2;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_71_0();
  sub_1E4203FF4();
  OUTLINED_FUNCTION_0_10();
  v27 = v5;
  v28 = v4;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_28_4();
  v6 = sub_1E4204014();
  v26 = v6;
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_4_6();
  v10 = v8 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v24 - v12;
  sub_1E3280A90(0, &qword_1EE23B1D0, 0x1E69E9610);
  v24 = sub_1E4206A04();
  sub_1E4204004();
  v14.n128_u64[0] = 2.0;
  sub_1E4204074(v14);
  v25 = *(v7 + 8);
  v25(v10, v6);
  OUTLINED_FUNCTION_4_0();
  v15 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v30[4] = sub_1E3D5BDD0;
  v30[5] = v15;
  OUTLINED_FUNCTION_12_0();
  v30[1] = 1107296256;
  v30[2] = sub_1E378AEA4;
  v30[3] = &block_descriptor_85_0;
  v16 = _Block_copy(v30);

  sub_1E4203FE4();
  v30[0] = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_4_2();
  sub_1E3274998(v17, v18, MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A730, &qword_1E429B000);
  sub_1E328FD7C(&qword_1EE23B5D0, &qword_1ECF2A730, &qword_1E429B000);
  OUTLINED_FUNCTION_151_0();
  sub_1E42072E4();
  v19 = v24;
  MEMORY[0x1E69112E0](v13, v1, v0, v16);
  _Block_release(v16);

  v20 = OUTLINED_FUNCTION_16_80();
  v21(v20);
  v22 = OUTLINED_FUNCTION_41_49();
  v23(v22);
  v25(v13, v26);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3D588B8()
{
  OUTLINED_FUNCTION_31_1();
  v1 = sub_1E4203FC4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5();
  v42 = v4 - v3;
  OUTLINED_FUNCTION_138();
  v43 = sub_1E4203FF4();
  OUTLINED_FUNCTION_0_10();
  v41 = v5;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5();
  v9 = v8 - v7;
  v10 = sub_1E4203FD4();
  OUTLINED_FUNCTION_0_10();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_5();
  v16 = v15 - v14;
  v17 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v19 = v18;
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_42_1();
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v22 = Strong;
    v40 = v1;
    v23 = [objc_opt_self() sharedInstance];
    v24 = [v23 isPlaybackUIBeingShown];

    if (v24)
    {
      sub_1E324FBDC();
      v25 = OUTLINED_FUNCTION_101();
      v26(v25);
      v27 = sub_1E41FFC94();
      v28 = sub_1E42067E4();
      if (os_log_type_enabled(v27, v28))
      {
        v29 = OUTLINED_FUNCTION_125_0();
        *v29 = 0;
        _os_log_impl(&dword_1E323F000, v27, v28, "UnifiedMessagingSignalProvider: handling playback UI shown notification", v29, 2u);
        OUTLINED_FUNCTION_6_0();
      }

      else
      {
      }

      (*(v19 + 8))(v0, v17);
    }

    else
    {
      sub_1E3280A90(0, &qword_1EE23B1D0, 0x1E69E9610);
      (*(v12 + 104))(v16, *MEMORY[0x1E69E7F98], v10);
      v39 = sub_1E4206A54();
      (*(v12 + 8))(v16, v10);
      OUTLINED_FUNCTION_4_0();
      v30 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v44[4] = sub_1E3D5BDD8;
      v44[5] = v30;
      v44[0] = MEMORY[0x1E69E9820];
      v44[1] = 1107296256;
      OUTLINED_FUNCTION_0_48();
      v44[2] = v31;
      v44[3] = &block_descriptor_89_0;
      v32 = _Block_copy(v44);

      sub_1E4203FE4();
      OUTLINED_FUNCTION_4_2();
      sub_1E3274998(v33, v34, MEMORY[0x1E69E7F70]);
      v35 = OUTLINED_FUNCTION_153_2();
      __swift_instantiateConcreteTypeFromMangledNameV2(v35, v36);
      OUTLINED_FUNCTION_96_16(&qword_1EE23B5D0);
      sub_1E42072E4();
      MEMORY[0x1E6911380](0, v9, v42, v32);
      _Block_release(v32);

      v37 = OUTLINED_FUNCTION_41_49();
      v38(v37, v40);
      (*(v41 + 8))(v9, v43);
    }
  }

  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3D58D80()
{
  OUTLINED_FUNCTION_89_12();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_90_16();
  v3 = v1;
  v0();

  v4 = OUTLINED_FUNCTION_53();
  return v5(v4);
}

uint64_t sub_1E3D58E54(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1E41FDF34();
  OUTLINED_FUNCTION_0_10();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  v10 = v9 - v8;
  sub_1E41FDEE4();
  v11 = a1;
  OUTLINED_FUNCTION_13_8();
  sub_1E3D59FD8();

  return (*(v6 + 8))(v10, v4);
}

void sub_1E3D58F58()
{
  v1 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_42_1();
  sub_1E324FBDC();
  v5 = OUTLINED_FUNCTION_101();
  v6(v5);
  v7 = sub_1E41FFC94();
  sub_1E4206814();
  OUTLINED_FUNCTION_41_15();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = OUTLINED_FUNCTION_125_0();
    OUTLINED_FUNCTION_50_4(v9);
    OUTLINED_FUNCTION_24_2(&dword_1E323F000, v10, v11, "UnifiedMessagingSignalProvider:: handle notif auth status did change");
    OUTLINED_FUNCTION_6_0();
  }

  (*(v3 + 8))(v0, v1);
  sub_1E3D555E0(1);
}

uint64_t sub_1E3D590C4(__n128 a1)
{
  sub_1E41FDF14();
  if (!v8)
  {
    return sub_1E325F6F0(v7, &unk_1ECF296E0, &unk_1E4298030);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770, &qword_1E42992B0);
  result = swift_dynamicCast();
  if (result)
  {
    v2 = sub_1E3744600(v6);
    v3 = sub_1E3D57B10(31350, 0xE200000000000000, v2);

    sub_1E3D59C24(v3 & 1, &OBJC_IVAR____TtC8VideosUI30UnifiedMessagingSignalProvider_hasEventForTVPlusonLargeTV);
    v4 = sub_1E3744600(v6);

    v5 = sub_1E3D57B10(7763041, 0xE300000000000000, v4);

    return sub_1E3D59C24(v5 & 1, &OBJC_IVAR____TtC8VideosUI30UnifiedMessagingSignalProvider_hasEventForTVPlusonATV);
  }

  return result;
}

uint64_t sub_1E3D59204()
{
  OUTLINED_FUNCTION_89_12();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_90_16();
  v4 = v1;
  v0(v2);

  v5 = OUTLINED_FUNCTION_53();
  return v6(v5);
}

uint64_t sub_1E3D592BC(uint64_t a1)
{
  sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_139();
  if (qword_1EE292B70 != -1)
  {
    OUTLINED_FUNCTION_9_125(&qword_1EE292B70);
  }

  if (a1 == 1)
  {
    v3 = 1;
  }

  else
  {
    v3 = -1;
  }

  if (a1)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = sub_1E3D595C0(0x64616F4C65676170, 0xE800000000000000, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2F240, &unk_1E4298910);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E4297BE0;
  v7 = sub_1E3B58240();
  v8 = *(v7 + 1);
  *(inited + 32) = *v7;
  *(inited + 40) = v8;
  *(inited + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3E4D0, &qword_1E429FAB0);
  *(inited + 48) = v5;

  v9 = MEMORY[0x1E69E6158];
  v27 = sub_1E4205CB4();
  v25 = v9;
  *&v24 = 0x6E6F6349707061;
  *(&v24 + 1) = 0xE700000000000000;
  sub_1E3D5AF54(&v24, 0x64496567646162, 0xE700000000000000, v26);
  sub_1E325F6F0(v26, &unk_1ECF296E0, &unk_1E4298030);
  v10 = sub_1E3286BF0();
  v11 = *((*MEMORY[0x1E69E7D40] & **v10) + 0xE0);
  v12 = *v10;
  LOBYTE(v11) = v11();

  if (v11)
  {

    sub_1E324FBDC();
    OUTLINED_FUNCTION_22_6();
    v13 = OUTLINED_FUNCTION_33_14();
    v14(v13);
    v15 = sub_1E41FFC94();
    v16 = sub_1E4206814();
    if (OUTLINED_FUNCTION_104(v16))
    {
      v17 = OUTLINED_FUNCTION_125_0();
      OUTLINED_FUNCTION_34_10(v17);
      OUTLINED_FUNCTION_5_20(&dword_1E323F000, v18, v19, "UnifiedMessagingSignalProvider: suppress fetching app level sheet");
      OUTLINED_FUNCTION_65_0();
    }

    v20 = OUTLINED_FUNCTION_13_8();
    return v21(v20);
  }

  else
  {
    v23 = *_s8VideosUIAAC33initializeUnifiedMessagingManageryyFZ_0();
    sub_1E3B58258();

    OUTLINED_FUNCTION_27_0();
    sub_1E3B584A8();
  }
}

uint64_t sub_1E3D595AC(uint64_t a1)
{
  if (a1 == 1)
  {
    v1 = 1;
  }

  else
  {
    v1 = -1;
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1E3D595C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + OBJC_IVAR____TtC8VideosUI30UnifiedMessagingSignalProvider_downloadAndPurchaseAccessQueue);
  OUTLINED_FUNCTION_4_0();
  v5 = swift_allocObject();
  OUTLINED_FUNCTION_141_0(v5);
  v6 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3E4D0, &qword_1E429FAB0);
  sub_1E4206A14();

  return v8;
}

void sub_1E3D59680()
{
  OUTLINED_FUNCTION_31_1();
  v35 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v1 = v0;
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5();
  v5 = v4 - v3;
  sub_1E4203FC4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_71_0();
  sub_1E4203FF4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_28_4();
  v8 = sub_1E4203FD4();
  OUTLINED_FUNCTION_0_10();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5();
  v14 = v13 - v12;
  v15 = sub_1E3286BF0();
  v16 = *((*MEMORY[0x1E69E7D40] & **v15) + 0xE0);
  v17 = *v15;
  LOBYTE(v16) = v16();

  if (v16)
  {
    sub_1E324FBDC();
    OUTLINED_FUNCTION_22_6();
    v18(v5);
    v19 = sub_1E41FFC94();
    v20 = sub_1E4206814();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = OUTLINED_FUNCTION_125_0();
      *v21 = 0;
      _os_log_impl(&dword_1E323F000, v19, v20, "UnifiedMessagingSignalProvider: suppress fetching app level sheet", v21, 2u);
      OUTLINED_FUNCTION_6_0();
    }

    (*(v1 + 8))(v5, v35);
  }

  else
  {
    sub_1E3280A90(0, &qword_1EE23B1D0, 0x1E69E9610);
    (*(v10 + 104))(v14, *MEMORY[0x1E69E7F98], v8);
    v22 = sub_1E4206A54();
    (*(v10 + 8))(v14, v8);
    OUTLINED_FUNCTION_4_0();
    v23 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v36[4] = sub_1E3D5B740;
    v36[5] = v23;
    OUTLINED_FUNCTION_12_0();
    v36[1] = 1107296256;
    OUTLINED_FUNCTION_0_48();
    v36[2] = v24;
    v36[3] = &block_descriptor_4_0;
    v25 = _Block_copy(v36);

    sub_1E4203FE4();
    OUTLINED_FUNCTION_4_2();
    sub_1E3274998(v26, v27, MEMORY[0x1E69E7F70]);
    v28 = OUTLINED_FUNCTION_153_2();
    __swift_instantiateConcreteTypeFromMangledNameV2(v28, v29);
    OUTLINED_FUNCTION_96_16(&qword_1EE23B5D0);
    OUTLINED_FUNCTION_31_57();
    OUTLINED_FUNCTION_151_0();
    sub_1E42072E4();
    v30 = OUTLINED_FUNCTION_62_0();
    MEMORY[0x1E6911380](v30);
    _Block_release(v25);

    v31 = OUTLINED_FUNCTION_16_80();
    v32(v31);
    v33 = OUTLINED_FUNCTION_41_49();
    v34(v33);
  }

  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3D59C24(char a1, void *a2)
{
  v5 = OBJC_IVAR____TtC8VideosUI30UnifiedMessagingSignalProvider_signalLock;
  OUTLINED_FUNCTION_23_2();
  swift_beginAccess();
  os_unfair_lock_lock((v2 + v5));
  *(v2 + *a2) = a1;
  os_unfair_lock_unlock((v2 + v5));
  return swift_endAccess();
}

uint64_t sub_1E3D59CA0(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI30UnifiedMessagingSignalProvider_signalLock;
  OUTLINED_FUNCTION_23_2();
  swift_beginAccess();
  os_unfair_lock_lock((v1 + v3));
  *(v1 + OBJC_IVAR____TtC8VideosUI30UnifiedMessagingSignalProvider_lastPlaybackEvent) = a1;
  os_unfair_lock_unlock((v1 + v3));
  return swift_endAccess();
}

uint64_t sub_1E3D59D0C(uint64_t a1, double a2)
{
  OUTLINED_FUNCTION_8_135(a1);
  os_unfair_lock_lock((v2 + v3));
  *(v2 + OBJC_IVAR____TtC8VideosUI30UnifiedMessagingSignalProvider_playbackElapsedTime) = a2;
  os_unfair_lock_unlock((v2 + v3));
  return swift_endAccess();
}

uint64_t sub_1E3D59D70(uint64_t a1)
{
  OUTLINED_FUNCTION_8_135(a1);
  os_unfair_lock_lock((v1 + v2));
  *(v1 + OBJC_IVAR____TtC8VideosUI30UnifiedMessagingSignalProvider_hasUsedSportsBridgeButton) = 1;
  os_unfair_lock_unlock((v1 + v2));
  return swift_endAccess();
}

uint64_t sub_1E3D59DCC()
{
  v3 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_4_6();
  v9 = v7 - v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_78();
  if (sub_1E3D56848(v11))
  {
    sub_1E324FBDC();
    OUTLINED_FUNCTION_22_6();
    v12(v1);
    v13 = sub_1E41FFC94();
    v14 = sub_1E4206814();
    if (OUTLINED_FUNCTION_104(v14))
    {
      v15 = OUTLINED_FUNCTION_125_0();
      OUTLINED_FUNCTION_34_10(v15);
      _os_log_impl(&dword_1E323F000, v13, v14, "UnifiedMessagingSignalProvider: Notification Authorization Status is already set", v2, 2u);
      OUTLINED_FUNCTION_65_0();
    }

    return (*(v5 + 8))(v1, v3);
  }

  else if (*(v0 + OBJC_IVAR____TtC8VideosUI30UnifiedMessagingSignalProvider_lastPlaybackEvent))
  {
    sub_1E324FBDC();
    OUTLINED_FUNCTION_22_6();
    v17 = OUTLINED_FUNCTION_33_14();
    v18(v17);
    v19 = sub_1E41FFC94();
    v20 = sub_1E4206814();
    if (OUTLINED_FUNCTION_104(v20))
    {
      v21 = OUTLINED_FUNCTION_125_0();
      OUTLINED_FUNCTION_34_10(v21);
      OUTLINED_FUNCTION_5_20(&dword_1E323F000, v22, v23, "UnifiedMessagingSignalProvider: Skip TCC Prompt as last playback event was either an error or upsell presented");
      OUTLINED_FUNCTION_65_0();
    }

    return (*(v5 + 8))(v9, v3);
  }

  else
  {

    return sub_1E3D55F60(0xD000000000000014, 0x80000001E4280D50);
  }
}

void sub_1E3D59FD8()
{
  OUTLINED_FUNCTION_31_1();
  v23 = v0;
  v2 = v1;
  sub_1E4203FC4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_71_0();
  sub_1E4203FF4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_28_4();
  v5 = sub_1E4203FD4();
  OUTLINED_FUNCTION_0_10();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5();
  v11 = v10 - v9;
  sub_1E3280A90(0, &qword_1EE23B1D0, 0x1E69E9610);
  (*(v7 + 104))(v11, *MEMORY[0x1E69E7F98], v5);
  v12 = sub_1E4206A54();
  (*(v7 + 8))(v11, v5);
  OUTLINED_FUNCTION_4_0();
  v13 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v24[4] = v2;
  v24[5] = v13;
  OUTLINED_FUNCTION_12_0();
  v24[1] = 1107296256;
  OUTLINED_FUNCTION_0_48();
  v24[2] = v14;
  v24[3] = v23;
  v15 = _Block_copy(v24);

  sub_1E4203FE4();
  OUTLINED_FUNCTION_4_2();
  sub_1E3274998(v16, v17, MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A730, &qword_1E429B000);
  sub_1E328FD7C(&qword_1EE23B5D0, &qword_1ECF2A730, &qword_1E429B000);
  OUTLINED_FUNCTION_31_57();
  OUTLINED_FUNCTION_151_0();
  sub_1E42072E4();
  v18 = OUTLINED_FUNCTION_62_0();
  MEMORY[0x1E6911380](v18);
  _Block_release(v15);

  v19 = OUTLINED_FUNCTION_16_80();
  v20(v19);
  v21 = OUTLINED_FUNCTION_41_49();
  v22(v21);

  OUTLINED_FUNCTION_25_2();
}

void sub_1E3D5A2C8()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v0;
  v4 = v3;
  v6 = v5;
  sub_1E4203FC4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_138();
  v30 = sub_1E4203FF4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_138();
  v9 = sub_1E4203FD4();
  OUTLINED_FUNCTION_0_10();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_139();
  v13 = OBJC_IVAR____TtC8VideosUI30UnifiedMessagingSignalProvider_signalLock;
  OUTLINED_FUNCTION_23_2();
  swift_beginAccess();
  os_unfair_lock_lock((v2 + v13));
  swift_endAccess();
  v14 = 0;
  v15 = v2 + OBJC_IVAR____TtC8VideosUI30UnifiedMessagingSignalProvider_lastNLSQueryDate;
  v31 = *(v2 + OBJC_IVAR____TtC8VideosUI30UnifiedMessagingSignalProvider_lastNLSQueryDate);
  v16 = *(v2 + OBJC_IVAR____TtC8VideosUI30UnifiedMessagingSignalProvider_lastNLSQueryDate + 8);
  if ((v4 & 1) == 0 && v6 >= 1)
  {
    if (*(v2 + OBJC_IVAR____TtC8VideosUI30UnifiedMessagingSignalProvider_lastNLSQueryDate + 8) & 1) != 0 || (v32 = v6, v33 = v31, LOBYTE(v34) = 0, v14 = 0, (sub_1E414A6BC(&v33, &v32, MEMORY[0x1E69E7360], MEMORY[0x1E69E7378])))
    {
      *v15 = v6;
      *(v15 + 8) = 0;
      v14 = 1;
    }
  }

  OUTLINED_FUNCTION_23_2();
  swift_beginAccess();
  os_unfair_lock_unlock((v2 + v13));
  swift_endAccess();
  if (v14)
  {
    sub_1E3280A90(0, &qword_1EE23B1D0, 0x1E69E9610);
    (*(v11 + 104))(v1, *MEMORY[0x1E69E7F98], v9);
    v29 = sub_1E4206A54();
    (*(v11 + 8))(v1, v9);
    OUTLINED_FUNCTION_4_0();
    v17 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v18 = swift_allocObject();
    *(v18 + 16) = v17;
    *(v18 + 24) = v31;
    *(v18 + 32) = v16;
    *(v18 + 40) = v6;
    *(v18 + 48) = v4 & 1;
    v37 = sub_1E3D5B8E0;
    v38 = v18;
    v33 = MEMORY[0x1E69E9820];
    v34 = 1107296256;
    v35 = sub_1E329EEC4;
    v36 = &block_descriptor_31_0;
    v19 = _Block_copy(&v33);

    sub_1E4203FE4();
    v32 = MEMORY[0x1E69E7CC0];
    OUTLINED_FUNCTION_4_2();
    sub_1E3274998(v20, v21, MEMORY[0x1E69E7F70]);
    v22 = OUTLINED_FUNCTION_153_2();
    __swift_instantiateConcreteTypeFromMangledNameV2(v22, v23);
    OUTLINED_FUNCTION_96_16(&qword_1EE23B5D0);
    OUTLINED_FUNCTION_151_0();
    sub_1E42072E4();
    v24 = OUTLINED_FUNCTION_62_0();
    MEMORY[0x1E6911380](v24);
    _Block_release(v19);

    v25 = OUTLINED_FUNCTION_16_80();
    v26(v25);
    v27 = OUTLINED_FUNCTION_41_49();
    v28(v27, v30);
  }

  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3D5A6F4(uint64_t a1, char a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = MEMORY[0x1E69E6158];
  OUTLINED_FUNCTION_91_14();
  *&v55 = 0xD000000000000016;
  *(&v55 + 1) = 0x80000001E4280C50;
  *(&v56 + 1) = v10;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_68_24(isUniquelyReferenced_nonNull_native, v12, v13, v14, v15, v16, v17, v18, v42, aBlock, v45, v46, v47, v48, v49, v50, v51, *(&v51 + 1), v52, *(&v52 + 1), v53);
  sub_1E375D84C(&aBlock);
  *&v55 = 7368801;
  *(&v55 + 1) = 0xE300000000000000;
  OUTLINED_FUNCTION_91_14();
  v19 = *(v4 + OBJC_IVAR____TtC8VideosUI30UnifiedMessagingSignalProvider_bundleId + 8);
  *&v55 = *(v4 + OBJC_IVAR____TtC8VideosUI30UnifiedMessagingSignalProvider_bundleId);
  *(&v55 + 1) = v19;
  *(&v56 + 1) = v10;

  v20 = swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_68_24(v20, v21, v22, v23, v24, v25, v26, v27, v43, aBlock, v45, v46, v47, v48, v49, v50, v51, *(&v51 + 1), v52, *(&v52 + 1), v53);
  sub_1E375D84C(&aBlock);
  v55 = 0u;
  v56 = 0u;
  OUTLINED_FUNCTION_79_19();
  sub_1E4207414();
  v28 = MEMORY[0x1E69E7360];
  if (a2)
  {
    sub_1E37E93E8(&v55, &v53, &unk_1ECF296E0, &unk_1E4298030);
  }

  else
  {
    *(&v52 + 1) = MEMORY[0x1E69E7360];
    *&v51 = a1;
    sub_1E329504C(&v51, &v53);
  }

  v51 = v53;
  v52 = v54;
  v29 = swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_67_19(v29, v30);
  sub_1E375D84C(&aBlock);
  OUTLINED_FUNCTION_79_19();
  sub_1E4207414();
  if (a4)
  {
    sub_1E37E93E8(&v55, &v53, &unk_1ECF296E0, &unk_1E4298030);
  }

  else
  {
    *(&v52 + 1) = v28;
    *&v51 = a3;
    sub_1E329504C(&v51, &v53);
  }

  v51 = v53;
  v52 = v54;
  v31 = swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_67_19(v31, v32);
  v33 = v50;
  sub_1E375D84C(&aBlock);
  v34 = *(v5 + OBJC_IVAR____TtC8VideosUI30UnifiedMessagingSignalProvider_engagement);
  if (v34)
  {
    v35 = v34;
    sub_1E3D577C0(v33);

    v36 = sub_1E4205C44();

    v37 = [v35 enqueueData_];

    if (v37)
    {
      v48 = sub_1E3D5AA94;
      v49 = 0;
      aBlock = MEMORY[0x1E69E9820];
      v45 = 1107296256;
      OUTLINED_FUNCTION_27_63();
      v46 = v38;
      v47 = &block_descriptor_34_0;
      v39 = _Block_copy(&aBlock);
      v40 = v37;
      [v40 addFinishBlock_];
      _Block_release(v39);
    }
  }

  else
  {
  }

  return sub_1E325F6F0(&v55, &unk_1ECF296E0, &unk_1E4298030);
}

uint64_t sub_1E3D5AA30(uint64_t a1)
{
  OUTLINED_FUNCTION_8_135(a1);
  os_unfair_lock_lock((v1 + v2));
  v3 = v1 + OBJC_IVAR____TtC8VideosUI30UnifiedMessagingSignalProvider_lastNLSQueryDate;
  *v3 = 0;
  *(v3 + 8) = 1;
  os_unfair_lock_unlock((v1 + v2));
  return swift_endAccess();
}

void sub_1E3D5AA94()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1;
  v4 = v3;
  v5 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_4_6();
  v11 = v9 - v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_78();
  if (v2)
  {
    v13 = v2;
    v14 = sub_1E324FBDC();
    (*(v7 + 16))(v0, v14, v5);
    v15 = v2;
    v16 = sub_1E41FFC94();
    v17 = sub_1E42067F4();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v32 = v19;
      *v18 = 136315138;
      swift_getErrorValue();
      v20 = sub_1E4207AB4();
      v22 = sub_1E3270FC8(v20, v21, &v32);

      *(v18 + 4) = v22;
      _os_log_impl(&dword_1E323F000, v16, v17, "UnifiedMessagingSignalProvider::Promise for last NLS query change datefinish with error: %s", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v19);
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_6_0();
    }

    else
    {
    }

    (*(v7 + 8))(v0, v5);
  }

  else
  {
    v23 = sub_1E324FBDC();
    (*(v7 + 16))(v11, v23, v5);
    v24 = v4;
    v25 = sub_1E41FFC94();
    v26 = sub_1E4206814();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v32 = v28;
      *v27 = 136315138;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF37E78, &unk_1E42CE288);
      v29 = sub_1E42070D4();
      v31 = sub_1E3270FC8(v29, v30, &v32);

      *(v27 + 4) = v31;
      _os_log_impl(&dword_1E323F000, v25, v26, "UnifiedMessagingSignalProvider::Promise for last NLS query change datedid finish. %s", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v28);
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_6_0();
    }

    (*(v7 + 8))(v11, v5);
  }

  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3D5AD90(unint64_t a1)
{
  v1 = a1;
  if (sub_1E32AE9B0(a1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2FBB8, &qword_1E42CE270);
    v2 = sub_1E4207464();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CD0];
  }

  v20 = sub_1E32AE9B0(v1);
  if (v20)
  {
    v3 = 0;
    v4 = v2 + 56;
    v18 = v1;
    v19 = v1 & 0xC000000000000001;
    v17 = v1 + 32;
    while (1)
    {
      sub_1E34AF4E4(v3, v19 == 0, v1);
      result = v19 ? MEMORY[0x1E6911E60](v3, v1) : *(v17 + 8 * v3);
      v6 = result;
      v7 = __OFADD__(v3++, 1);
      if (v7)
      {
        break;
      }

      result = sub_1E4206F54();
      v8 = ~(-1 << *(v2 + 32));
      while (1)
      {
        v9 = result & v8;
        v10 = (result & v8) >> 6;
        v11 = *(v4 + 8 * v10);
        v12 = 1 << (result & v8);
        if ((v12 & v11) == 0)
        {
          break;
        }

        sub_1E3280A90(0, &unk_1EE23B2B0, 0x1E6970608);
        v13 = *(*(v2 + 48) + 8 * v9);
        v14 = sub_1E4206F64();

        if (v14)
        {

          goto LABEL_17;
        }

        result = v9 + 1;
      }

      *(v4 + 8 * v10) = v12 | v11;
      *(*(v2 + 48) + 8 * v9) = v6;
      v15 = *(v2 + 16);
      v7 = __OFADD__(v15, 1);
      v16 = v15 + 1;
      if (v7)
      {
        goto LABEL_20;
      }

      *(v2 + 16) = v16;
LABEL_17:
      v1 = v18;
      if (v3 == v20)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
  }

  else
  {
LABEL_18:

    return v2;
  }

  return result;
}

void sub_1E3D5AF54(_OWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  swift_isUniquelyReferenced_nonNull_native();
  v15 = *v4;
  v9 = sub_1E327D33C(a2, a3);
  if (__OFADD__(v15[2], (v10 & 1) == 0))
  {
    __break(1u);
    goto LABEL_10;
  }

  v11 = v9;
  v12 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2F310, &qword_1E429B110);
  if (sub_1E4207644())
  {
    v13 = sub_1E327D33C(a2, a3);
    if ((v12 & 1) == (v14 & 1))
    {
      v11 = v13;
      goto LABEL_5;
    }

LABEL_10:
    sub_1E4207A74();
    __break(1u);
    return;
  }

LABEL_5:
  if (v12)
  {
    sub_1E329504C((v15[7] + 32 * v11), a4);
    sub_1E329504C(a1, (v15[7] + 32 * v11));
  }

  else
  {
    sub_1E32A8908(v11, a2, a3, a1, v15);
    *a4 = 0u;
    a4[1] = 0u;
  }

  *v4 = v15;
}

unint64_t sub_1E3D5B0A4(unint64_t result, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  v4 = a4[6] + 40 * result;
  v5 = *(a2 + 16);
  *v4 = *a2;
  *(v4 + 16) = v5;
  *(v4 + 32) = *(a2 + 32);
  v6 = (a4[7] + 32 * result);
  v7 = a3[1];
  *v6 = *a3;
  v6[1] = v7;
  v8 = a4[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v10;
  }

  return result;
}

unint64_t sub_1E3D5B104(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_1E375D924(a2);
  if (__OFADD__(v7[2], (v9 & 1) == 0))
  {
    __break(1u);
    goto LABEL_11;
  }

  v10 = v8;
  v11 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF37E80, &qword_1E42CE298);
  if ((sub_1E4207644() & 1) == 0)
  {
    goto LABEL_5;
  }

  v12 = sub_1E375D924(a2);
  if ((v11 & 1) != (v13 & 1))
  {
LABEL_11:
    result = sub_1E4207A74();
    __break(1u);
    return result;
  }

  v10 = v12;
LABEL_5:
  v14 = *v4;
  if (v11)
  {
    v15 = v14[7] + 32 * v10;

    return sub_1E37EB5D0(a1, v15);
  }

  else
  {
    sub_1E374E74C(a2, v17);
    return sub_1E3D5B0A4(v10, v17, a1, v14);
  }
}

void sub_1E3D5B238(void *a1@<X8>)
{
  v3 = v1[3];
  v5 = v1[4];
  v4 = v1[5];
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v44 = v5;
    LOBYTE(v48) = *(Strong + OBJC_IVAR____TtC8VideosUI30UnifiedMessagingSignalProvider_hasItunesPurchases);
    v8 = MEMORY[0x1E69E6370];
    *(&v49 + 1) = MEMORY[0x1E69E6370];
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_40_50();
    sub_1E3807164(&v48, 0xD000000000000012, 0x80000001E4280AD0, v9);
    v10 = OBJC_IVAR____TtC8VideosUI30UnifiedMessagingSignalProvider_hasSubscriptionDownloads;
    if (v7[OBJC_IVAR____TtC8VideosUI30UnifiedMessagingSignalProvider_hasSubscriptionDownloads])
    {
      v11 = 1;
    }

    else
    {
      v11 = v7[OBJC_IVAR____TtC8VideosUI30UnifiedMessagingSignalProvider_hasItunesDownloads];
    }

    LOBYTE(v48) = v11;
    *(&v49 + 1) = v8;
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_40_50();
    sub_1E3807164(&v48, 0x6C6E776F44736168, 0xEC0000007364616FLL, v12);
    LOBYTE(v48) = v7[v10];
    *(&v49 + 1) = v8;
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_40_50();
    sub_1E3807164(&v48, 0xD000000000000018, 0x80000001E4280AF0, v13);
    LOBYTE(v48) = sub_1E3D55BC8() & 1;
    *(&v49 + 1) = v8;
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_40_50();
    sub_1E3807164(&v48, 0x6563634172706467, 0xEC00000064657470, v14);
    v15 = MEMORY[0x1E69E6530];
    *&v48 = v3;
    *(&v49 + 1) = MEMORY[0x1E69E6530];
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_40_50();
    sub_1E3807164(&v48, 0xD00000000000001BLL, 0x80000001E4280B10, v16);
    *&v48 = sub_1E3D55EE8();
    *(&v49 + 1) = v15;
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_40_50();
    sub_1E3807164(&v48, 0x536B726F7774656ELL, 0xED00007375746174, v17);
    v18 = *&v7[OBJC_IVAR____TtC8VideosUI30UnifiedMessagingSignalProvider_notifAuthStatus];
    if ((v18 - 1) >= 4)
    {
      v18 = 0;
    }

    *&v48 = v18;
    *(&v49 + 1) = v15;
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_40_50();
    sub_1E3807164(&v48, 0xD000000000000016, 0x80000001E4280B50, v19);
    v20 = v46;
    v48 = 0u;
    v49 = 0u;
    v21 = sub_1E3D5676C();
    if (v22)
    {
      sub_1E37E93E8(&v48, &v46, &unk_1ECF296E0, &unk_1E4298030);
    }

    else
    {
      *&v46 = v21;
      *(&v47 + 1) = MEMORY[0x1E69E7360];
    }

    v45[0] = v46;
    v45[1] = v47;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v50 = v20;
    sub_1E3807164(v45, 0xD000000000000010, 0x80000001E4280C10, isUniquelyReferenced_nonNull_native);
    v24 = OBJC_IVAR____TtC8VideosUI30UnifiedMessagingSignalProvider_signalLock;
    OUTLINED_FUNCTION_23_2();
    swift_beginAccess();
    os_unfair_lock_lock(&v7[v24]);
    swift_endAccess();
    LOBYTE(v46) = v7[OBJC_IVAR____TtC8VideosUI30UnifiedMessagingSignalProvider_upsellOfferPresented];
    *(&v47 + 1) = v8;
    swift_isUniquelyReferenced_nonNull_native();
    OUTLINED_FUNCTION_28_62();
    OUTLINED_FUNCTION_92_11(v25, v26, v27, v28);
    OUTLINED_FUNCTION_47_41();
    OUTLINED_FUNCTION_28_62();
    OUTLINED_FUNCTION_92_11(v29, v30, v31, v32);
    OUTLINED_FUNCTION_47_41();
    OUTLINED_FUNCTION_28_62();
    sub_1E3807164(v33, 0xD000000000000019, 0x80000001E4280B90, v34);
    v35 = *&v45[0];
    *&v46 = v44;
    *(&v46 + 1) = v4;
    *(&v47 + 1) = MEMORY[0x1E69E6158];

    v36 = swift_isUniquelyReferenced_nonNull_native();
    *&v45[0] = v35;
    sub_1E3807164(&v46, 0x5472656767697274, 0xEB00000000657079, v36);
    OUTLINED_FUNCTION_47_41();
    OUTLINED_FUNCTION_28_62();
    sub_1E3807164(v37, 0xD000000000000019, 0x80000001E4280C30, v38);
    v39 = *&v45[0];
    sub_1E4146278();

    v40 = sub_1E4146670();

    v41 = sub_1E39701B0(v40)[2];

    *&v46 = v41;
    *(&v47 + 1) = v15;
    v42 = swift_isUniquelyReferenced_nonNull_native();
    *&v45[0] = v39;
    sub_1E3807164(&v46, 0xD000000000000017, 0x80000001E4280BB0, v42);
    v43 = *&v45[0];
    OUTLINED_FUNCTION_23_2();
    swift_beginAccess();
    os_unfair_lock_unlock(&v7[v24]);
    swift_endAccess();
    sub_1E325F6F0(&v48, &unk_1ECF296E0, &unk_1E4298030);

    *a1 = v43;
  }

  else
  {
    *a1 = MEMORY[0x1E69E7CC8];
  }
}

void sub_1E3D5B740(uint64_t a1)
{
  OUTLINED_FUNCTION_7_4(a1);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = OUTLINED_FUNCTION_35_53();
    sub_1E3D55F60(v3, v4);
  }
}

void sub_1E3D5B78C(uint64_t a1)
{
  OUTLINED_FUNCTION_7_4(a1);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    sub_1E3D55F60(0xD000000000000010, 0x80000001E4280CB0);
  }
}

void sub_1E3D5B7E4(uint64_t a1)
{
  OUTLINED_FUNCTION_7_4(a1);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = OUTLINED_FUNCTION_24_50();
    sub_1E3D55F60(v3, v4);
  }
}

void sub_1E3D5B830(uint64_t a1)
{
  OUTLINED_FUNCTION_7_4(a1);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    sub_1E3D55F60(0xD00000000000001ALL, 0x80000001E4280D90);
  }
}

void sub_1E3D5B888(uint64_t a1)
{
  OUTLINED_FUNCTION_7_4(a1);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    sub_1E3D55F60(0xD00000000000001FLL, 0x80000001E4280DB0);
  }
}

void sub_1E3D5B8E0()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    sub_1E3D5A6F4(v1, v2, v3, v4);
  }
}

uint64_t sub_1E3D5BA24()
{
  OUTLINED_FUNCTION_24();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_30_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_56_1(v1);

  return sub_1E3D57030();
}

void sub_1E3D5BAB0(uint64_t a1)
{
  OUTLINED_FUNCTION_7_4(a1);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    sub_1E3D55F60(0xD000000000000017, 0x80000001E4280D30);
  }
}

void sub_1E3D5BB08(uint64_t a1)
{
  OUTLINED_FUNCTION_7_4(a1);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    sub_1E3D553AC();
  }
}

void sub_1E3D5BB48(uint64_t a1)
{
  OUTLINED_FUNCTION_7_4(a1);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = [objc_allocWithZone(MEMORY[0x1E6970618]) init];
    sub_1E3280A90(0, &qword_1EE23B020, 0x1E6970610);
    v4 = sub_1E4205F14();
    v12 = OUTLINED_FUNCTION_63_24(v4, v5, v6, v7, v8, v9, v10, v11, v40, v42, v44, v46, 0);
    v13 = sub_1E39A09C0(v12);
    [v3 addFilterPredicate_];
    [v3 setMediaLibrary_];
    v14 = [v3 _hasItems];

    v2[OBJC_IVAR____TtC8VideosUI30UnifiedMessagingSignalProvider_hasItunesPurchases] = v14;
    v15 = [objc_opt_self() vui:1 isLocalPredicate:0 comparison:?];
    v16 = sub_1E4205F14();
    v24 = OUTLINED_FUNCTION_63_24(v16, v17, v18, v19, v20, v21, v22, v23, v41, v43, v45, v47, 0);
    v27 = sub_1E39A0840(v24, v25, v26, 100);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29750, &unk_1E429DD30);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1E429DCC0;
    *(inited + 32) = v15;
    *(inited + 40) = v27;
    if (sub_1E32AE9B0(inited))
    {
      v29 = v15;
      v30 = v27;
      v31 = sub_1E3D5AD90(inited);
    }

    else
    {
      swift_setDeallocating();
      v32 = v15;
      v33 = v27;
      sub_1E377D458();
      v31 = MEMORY[0x1E69E7CD0];
    }

    v34 = objc_allocWithZone(MEMORY[0x1E6970618]);
    v35 = sub_1E39A26C0(v31);
    v36 = [v35 _hasItems];

    v2[OBJC_IVAR____TtC8VideosUI30UnifiedMessagingSignalProvider_hasItunesDownloads] = v36;
    v37 = [objc_opt_self() defaultManager];
    v38 = [v37 sidebandMediaLibrary];

    v39 = [v38 countOfDownloadedOrDownloadingOrEnqueuedSubscriptionVideosForNonMainQueue];
    v2[OBJC_IVAR____TtC8VideosUI30UnifiedMessagingSignalProvider_hasSubscriptionDownloads] = v39 != 0;
  }
}

void sub_1E3D5BDF8(uint64_t a1)
{
  OUTLINED_FUNCTION_7_4(a1);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = OUTLINED_FUNCTION_13_8();
    sub_1E3D55F60(v3, v4);
  }
}

void sub_1E3D5BE4C()
{
  v0 = sub_1E41FDF34();
  OUTLINED_FUNCTION_17_2(v0);
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    sub_1E41FDF14();
    if (v11)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF36120, &unk_1E42C7BE0);
      if (swift_dynamicCast())
      {
        v3 = sub_1E4205F14();
        v5 = sub_1E3D57774(v3, v4, v9);

        v2[OBJC_IVAR____TtC8VideosUI30UnifiedMessagingSignalProvider_hasFavoriteTeamsAdded] = v5 & 1;
        v6 = sub_1E4205F14();
        v8 = sub_1E3D57774(v6, v7, v9);

        v2[OBJC_IVAR____TtC8VideosUI30UnifiedMessagingSignalProvider_hasFavoriteTeamsRemoved] = v8 & 1;
      }
    }

    else
    {
      sub_1E325F6F0(v10, &unk_1ECF296E0, &unk_1E4298030);
    }

    sub_1E3D55F60(0xD000000000000019, 0x80000001E4280CF0);
  }
}

void sub_1E3D5BFE8(void *a1)
{
  OUTLINED_FUNCTION_7_4(a1);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = [a1 responseDictionary];
    v5 = sub_1E4205C64();

    sub_1E3D57A9C(v5);
  }
}

uint64_t sub_1E3D5C084()
{
  OUTLINED_FUNCTION_24();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_30_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_56_1(v1);

  return sub_1E3D57220();
}

void sub_1E3D5C118()
{
  v1 = *(v0 + 24);
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = sub_1E4206394();
    OUTLINED_FUNCTION_24_50();
    v5 = sub_1E4205ED4();
    [v1 setProperty:v4 forBodyKey:v5];

    v6 = sub_1E4206394();
    OUTLINED_FUNCTION_72_22();
    v7 = sub_1E4205ED4();
    OUTLINED_FUNCTION_5_159(v7);

    v8 = sub_1E4206394();
    OUTLINED_FUNCTION_24_50();
    v9 = sub_1E4205ED4();
    OUTLINED_FUNCTION_5_159(v9);

    v10 = sub_1E4206394();
    v11 = sub_1E4205ED4();
    OUTLINED_FUNCTION_5_159(v11);

    sub_1E3D55BC8();
    v12 = sub_1E4206394();
    OUTLINED_FUNCTION_23_74();
    v13 = sub_1E4205ED4();
    OUTLINED_FUNCTION_5_159(v13);

    sub_1E3D55D30();
    v14 = sub_1E4206694();
    v15 = sub_1E4205ED4();
    OUTLINED_FUNCTION_5_159(v15);

    sub_1E3D5676C();
    if ((v16 & 1) == 0)
    {
      sub_1E4207B04();
    }

    v17 = sub_1E4205ED4();
    OUTLINED_FUNCTION_5_159(v17);

    swift_unknownObjectRelease();
    v18 = sub_1E4206394();
    v19 = sub_1E4205ED4();
    OUTLINED_FUNCTION_5_159(v19);

    v20 = OBJC_IVAR____TtC8VideosUI30UnifiedMessagingSignalProvider_signalLock;
    OUTLINED_FUNCTION_23_2();
    swift_beginAccess();
    os_unfair_lock_lock(&v3[v20]);
    swift_endAccess();
    v21 = sub_1E4206394();
    v22 = sub_1E4205ED4();
    OUTLINED_FUNCTION_5_159(v22);

    v23 = sub_1E4206394();
    v24 = sub_1E4205ED4();
    OUTLINED_FUNCTION_5_159(v24);

    v25 = sub_1E4206394();
    v26 = sub_1E4205ED4();
    OUTLINED_FUNCTION_5_159(v26);

    sub_1E3D55EE8();
    v27 = sub_1E4206694();
    OUTLINED_FUNCTION_65_23();
    v28 = sub_1E4205ED4();
    OUTLINED_FUNCTION_5_159(v28);

    v29 = sub_1E4206694();
    v30 = sub_1E4205ED4();
    OUTLINED_FUNCTION_5_159(v30);

    OUTLINED_FUNCTION_23_2();
    swift_beginAccess();
    os_unfair_lock_unlock(&v3[v20]);
    swift_endAccess();
    v31 = sub_1E4205ED4();
    v32 = sub_1E4205ED4();
    OUTLINED_FUNCTION_5_159(v32);
  }
}

unint64_t OUTLINED_FUNCTION_68_24(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  a21 = v21;

  return sub_1E3D5B104((v22 - 96), &a10, a1);
}

id OUTLINED_FUNCTION_69_24()
{

  return [v0 (v1 + 901)];
}

unint64_t OUTLINED_FUNCTION_86_11(float a1)
{
  *v2 = a1;
  v5 = *(v3 - 152);

  return sub_1E3270FC8(v5, v1, (v3 - 112));
}

uint64_t OUTLINED_FUNCTION_89_12()
{

  return sub_1E41FDF34();
}

uint64_t OUTLINED_FUNCTION_91_14()
{

  return sub_1E4207414();
}

uint64_t OUTLINED_FUNCTION_96_16(unint64_t *a1)
{

  return sub_1E328FD7C(a1, v1, v2);
}

id SportsDisplayError.title.getter()
{
  result = [objc_opt_self() sharedInstance];
  if (result)
  {
    v1 = result;
    v2 = OUTLINED_FUNCTION_0_227();
    v4 = sub_1E3741090(v2, v3, v1);
    v6 = v5;

    if (v6)
    {
      return v4;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

id SportsDisplayError.subtitle.getter(unsigned __int8 a1)
{
  v1 = a1;
  result = [objc_opt_self() sharedInstance];
  v3 = result;
  if (v1 != 1)
  {
    if (result)
    {
      v4 = OUTLINED_FUNCTION_0_227();
      goto LABEL_6;
    }

LABEL_10:
    __break(1u);
    return result;
  }

  if (!result)
  {
    __break(1u);
    goto LABEL_10;
  }

  v4 = 0xD00000000000001ALL;
  v5 = 0x80000001E4281000;
LABEL_6:
  v6 = sub_1E3741090(v4, v5, v3);
  v8 = v7;

  if (!v8)
  {
    return 0;
  }

  return v6;
}

uint64_t sub_1E3D5C7A0(uint64_t a1)
{
  v2 = sub_1E4204DD4();
  v3 = *(v2 - 8);
  v4 = (*(v3 + 88))(a1, v2);
  if (v4 == *MEMORY[0x1E69D39D8])
  {
    return 2;
  }

  if (v4 == *MEMORY[0x1E69D39E0])
  {
    return 0;
  }

  if (v4 != *MEMORY[0x1E69D39E8])
  {
    (*(v3 + 8))(a1, v2);
    return 2;
  }

  return 1;
}

uint64_t SportsDisplayError.hashValue.getter(unsigned __int8 a1)
{
  sub_1E4207B44();
  MEMORY[0x1E69124B0](a1);
  return sub_1E4207BA4();
}

uint64_t sub_1E3D5C92C(uint64_t a1)
{
  v2 = *v1;
  sub_1E4207B44();
  SportsDisplayError.hash(into:)(v4, v2);
  return sub_1E4207BA4();
}

_BYTE *storeEnumTagSinglePayload for SportsDisplayError(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
        break;
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

void *sub_1E3D5CAB8@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for ButtonLayout();
  v2 = sub_1E3B050E8();
  v3 = j__OUTLINED_FUNCTION_18();
  v4 = sub_1E3BBD964(3, 0, v2, v3 & 1);

  v5 = *sub_1E39D021C();

  sub_1E42038E4();
  v6 = __dst[0];
  v7 = __dst[1];

  sub_1E3E5B9FC();
  memcpy(__dst, __src, sizeof(__dst));
  v8 = sub_1E3E5C294();

  result = memcpy(a1, __src, 0x70uLL);
  *(a1 + 112) = v4;
  *(a1 + 120) = v8;
  *(a1 + 128) = v5;
  *(a1 + 136) = v6;
  *(a1 + 144) = v7;
  return result;
}

void sub_1E3D5CBB8(uint64_t a1@<X8>)
{
  v2 = v1;
  v49 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF37E88, &qword_1E42CE330);
  OUTLINED_FUNCTION_0_10();
  v50 = v4;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v46 - v6;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF37E90, &qword_1E42CE338);
  MEMORY[0x1EEE9AC00](v51);
  v9 = (&v46 - v8);
  memcpy(v58, v1, sizeof(v58));
  memcpy(v56, v1, 0x70uLL);
  v10 = v1[14];

  sub_1E3D5CA5C(v58, __dst);
  v54 = sub_1E3751C54(v10);
  LOBYTE(v55) = v11;
  v13 = sub_1E3D5D058(v54, v11, v12);
  v16 = sub_1E375320C(v13, v14, v15);
  sub_1E3EC5F84(&v54, &type metadata for DefaultButton, &type metadata for SystemButtonStyle, v13, v16, v17, v18, v19, v46, v47, v48, v49, v50, v51, v52, *(&v52 + 1), v53, v54, v55, v56[0]);

  memcpy(__dst, v56, 0x70uLL);
  sub_1E3D5D0AC(__dst);
  v56[0] = &type metadata for DefaultButton;
  v56[1] = &type metadata for SystemButtonStyle;
  v56[2] = v13;
  v56[3] = v16;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  LOBYTE(v13) = j__OUTLINED_FUNCTION_18();
  v21 = OUTLINED_FUNCTION_51_1();
  sub_1E383F6D4(v10, v13 & 1, 0, 1, v21 & 1, v3, OpaqueTypeConformance2);
  v50[1](v7, v3);
  v57 = *(v2 + 120);
  v22 = v57;
  v23 = swift_allocObject();
  memcpy((v23 + 16), v2, 0x98uLL);
  v24 = v51;
  *(v9 + *(v51 + 52)) = v22;
  v25 = *(v24 + 56);
  v50 = v9;
  v26 = (v9 + v25);
  *v26 = sub_1E3D5D100;
  v26[1] = v23;
  v27 = objc_opt_self();
  sub_1E3D5D158(&v57, v56);
  sub_1E3D5D1C8(v2, v56);
  v28 = [v27 sharedInstance];
  if (v28)
  {
    v29 = v28;
    v30 = OUTLINED_FUNCTION_2_176();
    v32 = sub_1E3741090(v30, v31, v29);
    v34 = v33;

    if (v34)
    {
      v54 = v32;
      v55 = v34;
      v52 = *(v2 + 136);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF294E0, &qword_1E429C8B0);
      v35 = sub_1E4203914();
      v48 = &v46;
      HIDWORD(v47) = LOBYTE(v56[2]);
      MEMORY[0x1EEE9AC00](v35);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32160, &qword_1E42B7C00);
      OUTLINED_FUNCTION_1_33();
      v40 = sub_1E32752B0(v36, v37, v38, v39);
      sub_1E32822E0(v40, v41, v42);
      OUTLINED_FUNCTION_6_1();
      sub_1E32752B0(v43, &qword_1ECF32160, &qword_1E42B7C00, v44);
      v45 = v50;
      sub_1E4203444();

      sub_1E32D2344(v45);
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

unint64_t sub_1E3D5D058(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EE284600;
  if (!qword_1EE284600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE284600);
  }

  return result;
}

double sub_1E3D5D100()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF294E0, &qword_1E429C8B0);
  sub_1E4203904();
  return result;
}

uint64_t sub_1E3D5D158(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF37E98, qword_1E42CE340);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1E3D5D200(const void *a1@<X0>, char *a2@<X8>)
{
  v46 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F570, &unk_1E42B7C40);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F428, &qword_1E42AE420);
  OUTLINED_FUNCTION_0_10();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v43 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v43 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v43 - v17;
  v19 = objc_opt_self();
  v20 = [v19 sharedInstance];
  if (!v20)
  {
    __break(1u);
    goto LABEL_7;
  }

  v21 = v20;
  v43 = v12;
  v44 = v9;
  v45 = a2;
  v22 = sub_1E3741090(0x4C45434E4143, 0xE600000000000000, v20);
  v24 = v23;

  if (!v24)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v47[0] = v22;
  v47[1] = v24;
  sub_1E4200A14();
  sub_1E4200A34();
  v25 = OUTLINED_FUNCTION_4_181();
  sub_1E32822E0(v25, v26, v27);
  sub_1E4203974();
  v28 = [v19 sharedInstance];
  if (!v28)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v29 = v28;
  v30 = OUTLINED_FUNCTION_2_176();
  v32 = sub_1E3741090(v30, v31, v29);
  v34 = v33;

  if (v34)
  {
    v47[19] = v32;
    v47[20] = v34;
    sub_1E4200A04();
    OUTLINED_FUNCTION_4_181();
    v35 = swift_allocObject();
    v36 = v46;
    memcpy((v35 + 16), v46, 0x98uLL);
    sub_1E3D5D1C8(v36, v47);
    sub_1E4203974();
    v37 = *(v6 + 16);
    v38 = v43;
    v37(v43, v18, v4);
    v39 = v44;
    v37(v44, v15, v4);
    v40 = v45;
    v37(v45, v38, v4);
    v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32178, &qword_1E42B7C50);
    v37(&v40[*(v41 + 48)], v39, v4);
    v42 = *(v6 + 8);
    v42(v15, v4);
    v42(v18, v4);
    v42(v39, v4);
    v42(v38, v4);
    return;
  }

LABEL_9:
  __break(1u);
}

void sub_1E3D5D5F8(uint64_t a1@<X8>)
{
  v2 = [objc_opt_self() sharedInstance];
  if (v2)
  {
    v3 = v2;
    sub_1E3741090(0xD000000000000025, 0x80000001E4268570, v2);
    v5 = v4;

    if (v5)
    {
      sub_1E32822E0(v6, v7, v8);
      *a1 = sub_1E4202C44();
      *(a1 + 8) = v9;
      *(a1 + 16) = v10 & 1;
      *(a1 + 24) = v11;
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1E3D5D71C(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 152))
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

uint64_t sub_1E3D5D75C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0u;
    *(result + 120) = 0u;
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
      *(result + 152) = 1;
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

    *(result + 152) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t objectdestroyTm_38()
{

  return swift_deallocObject();
}

void sub_1E3D5D8AC(void *a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI31ChannelBannerCollectionViewCell_bannerView;
  swift_beginAccess();
  v4 = *&v1[v3];
  *&v1[v3] = a1;
  v5 = OBJC_IVAR____TtC8VideosUI31ChannelBannerCollectionViewCell_bannerView;
  v6 = a1;
  OUTLINED_FUNCTION_5_0(&v1[v5], v10);
  v7 = *&v1[v5];
  if (v7)
  {
    if (v7 == v4)
    {
      goto LABEL_8;
    }

    if (!v4)
    {
      goto LABEL_7;
    }
  }

  else if (!v4)
  {
    goto LABEL_8;
  }

  [v4 removeFromSuperview];
  v7 = *&v1[v5];
  if (v7)
  {
LABEL_7:
    v8 = v7;
    v9 = [v1 vuiContentView];
    [v9 addSubview_];
  }

LABEL_8:
}

id sub_1E3D5D998()
{
  OUTLINED_FUNCTION_0_8();
  swift_getObjectType();
  *(v0 + OBJC_IVAR____TtC8VideosUI31ChannelBannerCollectionViewCell_layout) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI31ChannelBannerCollectionViewCell_bannerView) = 0;
  OUTLINED_FUNCTION_5_160(&OBJC_IVAR____TtC8VideosUI31ChannelBannerCollectionViewCell_transitionBackgroundView);
  v7 = v1;
  v2 = OUTLINED_FUNCTION_2_0();
  v5 = objc_msgSendSuper2(v3, v4, v2, v0, v7);
  [v5 setAutoresizingMask_];
  return v5;
}

void sub_1E3D5DA50()
{
  *(v0 + OBJC_IVAR____TtC8VideosUI31ChannelBannerCollectionViewCell_layout) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI31ChannelBannerCollectionViewCell_bannerView) = 0;
  OUTLINED_FUNCTION_5_160(&OBJC_IVAR____TtC8VideosUI31ChannelBannerCollectionViewCell_transitionBackgroundView);
  sub_1E42076B4();
  __break(1u);
}

void sub_1E3D5DAF0(char a1, double a2)
{
  v3 = v2;
  if ((a1 & 1) == 0)
  {
    v17 = OBJC_IVAR____TtC8VideosUI31ChannelBannerCollectionViewCell_layout;
    OUTLINED_FUNCTION_5_0(&v3[OBJC_IVAR____TtC8VideosUI31ChannelBannerCollectionViewCell_layout], v91);
    v18 = *&v3[v17];
    if (v18)
    {

      v19 = sub_1E37BD068();

      v21 = (*(*v19 + 936))(v20);

      if (v21 == 2)
      {
        LOBYTE(v18) = 0;
      }

      else
      {
        LOBYTE(v18) = v21 ^ 1;
      }
    }

    v22 = OBJC_IVAR____TtC8VideosUI31ChannelBannerCollectionViewCell_bannerView;
    OUTLINED_FUNCTION_5_0(&v3[OBJC_IVAR____TtC8VideosUI31ChannelBannerCollectionViewCell_bannerView], v90);
    v23 = *&v3[v22];
    if (v23)
    {
      [v23 setIsDescriptionPreferredOnPhoneSizeClass_];
    }

    v24 = objc_opt_self();
    if (([v24 isPad] & 1) == 0 && !objc_msgSend(v24, sel_isMac))
    {
LABEL_74:
      v82 = [v3 vuiContentView];
      [v82 bounds];

      v83 = *&v3[v22];
      if (v83)
      {
        OUTLINED_FUNCTION_15_117(v83);
      }

      v84 = *&v3[OBJC_IVAR____TtC8VideosUI31ChannelBannerCollectionViewCell_transitionBackgroundView];
      if (v84)
      {
        OUTLINED_FUNCTION_15_117(v84);
      }

      v3[OBJC_IVAR____TtC8VideosUI31ChannelBannerCollectionViewCell_hasLayedOutSubviews] = 1;
      goto LABEL_79;
    }

    v25 = [v24 isMac];
    v26 = &OBJC_IVAR____TtC8VideosUI32TVAppExtensionHostViewController_loadingViewController;
    v27 = &selRef_textLayout;
    if (!v25 || ((v28 = *&v3[OBJC_IVAR____TtC8VideosUI31ChannelBannerCollectionViewCell_previousSize], v29 = *&v3[OBJC_IVAR____TtC8VideosUI31ChannelBannerCollectionViewCell_previousSize + 8], OUTLINED_FUNCTION_26_9(), v28 == v31) ? (v32 = v29 == v30) : (v32 = 0), v32 || (v33 = *&v3[OBJC_IVAR____TtC8VideosUI31ChannelBannerCollectionViewCell_bgImageViewModel]) == 0))
    {
LABEL_48:
      OUTLINED_FUNCTION_26_9();
      v63 = &v3[v26[405]];
      *v63 = v64;
      *(v63 + 1) = v65;
      v66 = OBJC_IVAR____TtC8VideosUI31ChannelBannerCollectionViewCell_bannerView;
      OUTLINED_FUNCTION_5_0(&v3[OBJC_IVAR____TtC8VideosUI31ChannelBannerCollectionViewCell_bannerView], v94);
      v67 = *&v3[v66];
      if (v67)
      {
        v68 = v67;
        v69 = sub_1E3D603E8(v68);
        if (v69)
        {
          v70 = v69;
          v89 = v22;
          type metadata accessor for LayoutGrid();
          v71 = sub_1E3A2579C(a2);
          v72 = [v3 v27[437]];
          v73 = [v72 isAXEnabled];

          LOBYTE(v72) = sub_1E3A24FDC(v71);
          v74 = sub_1E32AE9B0(v70);
          v75 = v70 & 0xC000000000000001;
          if (v72 & 1) != 0 || (v73)
          {
            for (i = 0; v74 != i; ++i)
            {
              if (v75)
              {
                v80 = MEMORY[0x1E6911E60](i, v70);
              }

              else
              {
                if (i >= *((v70 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_88;
                }

                v80 = *(v70 + 8 * i + 32);
              }

              v81 = v80;
              if (__OFADD__(i, 1))
              {
                __break(1u);
LABEL_87:
                __break(1u);
LABEL_88:
                __break(1u);
LABEL_89:
                __break(1u);
                return;
              }

              if ([v80 vuiTextAlignment] != 1)
              {
                [v81 setVuiTextAlignment_];
              }
            }
          }

          else
          {
            for (j = 0; v74 != j; ++j)
            {
              if (v75)
              {
                v77 = MEMORY[0x1E6911E60](j, v70);
              }

              else
              {
                if (j >= *((v70 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_89;
                }

                v77 = *(v70 + 8 * j + 32);
              }

              v78 = v77;
              if (__OFADD__(j, 1))
              {
                goto LABEL_87;
              }

              if ([v77 vuiTextAlignment] != 4)
              {
                [v78 setVuiTextAlignment_];
              }
            }
          }
        }
      }

      goto LABEL_74;
    }

    OUTLINED_FUNCTION_26_9();
    Width = CGRectGetWidth(v95);
    OUTLINED_FUNCTION_26_9();
    CGRectGetHeight(v96);
    v35 = OBJC_IVAR____TtC8VideosUI31ChannelBannerCollectionViewCell_layout;
    OUTLINED_FUNCTION_5_0(&v3[OBJC_IVAR____TtC8VideosUI31ChannelBannerCollectionViewCell_layout], v93);
    if (*&v3[v35])
    {

      v36 = [v3 vuiTraitCollection];
      sub_1E4041CF4(v36, Width);
    }

    type metadata accessor for LayoutGrid();
    v37 = sub_1E3A2579C(Width);
    v38 = *(*v33 + 392);

    v40 = v38(v39);

    if (v40)
    {
      type metadata accessor for ImageLayout();
      v41 = swift_dynamicCastClass();
      if (v41)
      {
        v42 = *(*v41 + 432);
        v43 = v41;

        v45 = v43;
        v46 = v42(v44);
        LOBYTE(v42) = v47;

        v32 = (v42 & 1) == 0;
        v27 = &selRef_textLayout;
        if (!v32)
        {
          v46 = 0x3FF0000000000000;
        }

LABEL_31:
        type metadata accessor for ChannelBannerLayout();
        sub_1E40420F0(v37, v46, 0, Width);
        v50 = sub_1E3C3E520(v33, v48, v49);
        v51 = OBJC_IVAR____TtC8VideosUI31ChannelBannerCollectionViewCell_bannerView;
        OUTLINED_FUNCTION_5_0(&v3[OBJC_IVAR____TtC8VideosUI31ChannelBannerCollectionViewCell_bannerView], v92);
        v52 = *&v3[v51];
        if (v52)
        {
          v53 = [v52 bgImageView];
          if (v53)
          {
            v54 = v53;
            v55 = [v53 imageView];

            if (v55)
            {
              objc_opt_self();
              v56 = swift_dynamicCastObjCClass();
              if (v56)
              {
                v57 = v56;
                v89 = v45;
                v58 = v27;
                v59 = v50;
                v60 = [v57 imageProxy];
                v61 = v60;
                if (!v50)
                {
                  if (!v60)
                  {
                    v27 = v58;
                    v26 = &OBJC_IVAR____TtC8VideosUI32TVAppExtensionHostViewController_loadingViewController;
                    goto LABEL_47;
                  }

                  swift_unknownObjectRelease();
                  v27 = v58;
                  v26 = &OBJC_IVAR____TtC8VideosUI32TVAppExtensionHostViewController_loadingViewController;
                  goto LABEL_44;
                }

                if (v60)
                {

                  swift_unknownObjectRelease();
                  v32 = v50 == v61;
                  v27 = v58;
                  v26 = &OBJC_IVAR____TtC8VideosUI32TVAppExtensionHostViewController_loadingViewController;
                  if (v32)
                  {
                    goto LABEL_45;
                  }

                  goto LABEL_44;
                }

                v27 = v58;
LABEL_43:

                v26 = &OBJC_IVAR____TtC8VideosUI32TVAppExtensionHostViewController_loadingViewController;
LABEL_44:
                v57 = v57;
                [v57 setImageProxy_];

                v59 = v57;
LABEL_45:

LABEL_47:

                goto LABEL_48;
              }
            }
          }
        }

        v62 = v50;
        v57 = 0;
        if (!v50)
        {
          v26 = &OBJC_IVAR____TtC8VideosUI32TVAppExtensionHostViewController_loadingViewController;
          goto LABEL_47;
        }

        v59 = v62;
        goto LABEL_43;
      }
    }

    v45 = 0;
    v46 = 0x3FF0000000000000;
    goto LABEL_31;
  }

  v5 = OBJC_IVAR____TtC8VideosUI31ChannelBannerCollectionViewCell_bannerView;
  OUTLINED_FUNCTION_5_0(&v3[OBJC_IVAR____TtC8VideosUI31ChannelBannerCollectionViewCell_bannerView], v94);
  v7 = *&v3[v5];
  if (v7)
  {
    v8 = OBJC_IVAR____TtC8VideosUI31ChannelBannerCollectionViewCell_layout;
    OUTLINED_FUNCTION_5_0(&v3[OBJC_IVAR____TtC8VideosUI31ChannelBannerCollectionViewCell_layout], v93);
    v9 = *&v3[v8];
    if (v9)
    {
      v10 = *(*v9 + 304);
      v11 = v7;

      v13 = v10(v12);
      v15 = v14;

      v16 = 0.0;
      if ((v15 & 1) == 0)
      {
        v16 = *&v13;
      }
    }

    else
    {
      v11 = v7;
      v16 = 0.0;
    }

    [v11 setHeight_];
  }

LABEL_79:
  v85 = OBJC_IVAR____TtC8VideosUI31ChannelBannerCollectionViewCell_bannerView;
  OUTLINED_FUNCTION_15_0(&v3[OBJC_IVAR____TtC8VideosUI31ChannelBannerCollectionViewCell_bannerView], v6);
  if (*&v3[v85])
  {
    v86 = OUTLINED_FUNCTION_6_12();
    [v87 v88];
  }
}

void *sub_1E3D5E300(unint64_t a1, void *a2)
{
  if (!a2)
  {
    result = sub_1E42076B4();
    __break(1u);
    return result;
  }

  v4 = a2;
  v5 = [v4 vuiContentView];
  [v5 bounds];

  v6 = OUTLINED_FUNCTION_5_0(&v4[OBJC_IVAR____TtC8VideosUI31ChannelBannerCollectionViewCell_bannerView], v35);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF37EB8, qword_1E42CE430);
  sub_1E4148C68(sub_1E3D60384, v9, &v36);

  v10 = v36;
  v11 = v36;
  sub_1E3D5D8AC(v10);
  sub_1E3D5E6E4(a1);
  v12 = OBJC_IVAR____TtC8VideosUI31ChannelBannerCollectionViewCell_transitionBackgroundView;
  if (!*&v4[OBJC_IVAR____TtC8VideosUI31ChannelBannerCollectionViewCell_transitionBackgroundView])
  {
    v13 = OUTLINED_FUNCTION_6_40(objc_allocWithZone(MEMORY[0x1E69DD250]), sel_initWithFrame_);
    [v13 setAlpha_];
    [v13 setUserInteractionEnabled_];
    [v13 setBackgroundColor_];
    v14 = *&v4[OBJC_IVAR____TtC8VideosUI31ChannelBannerCollectionViewCell_transitionBackgroundView];
    *&v4[OBJC_IVAR____TtC8VideosUI31ChannelBannerCollectionViewCell_transitionBackgroundView] = v13;
    v15 = OBJC_IVAR____TtC8VideosUI31ChannelBannerCollectionViewCell_transitionBackgroundView;
    v16 = *&v4[OBJC_IVAR____TtC8VideosUI31ChannelBannerCollectionViewCell_transitionBackgroundView];
    v17 = v13;
    if (v16)
    {
      if (v16 == v14)
      {
        goto LABEL_9;
      }
    }

    else if (!v14)
    {
LABEL_9:

      goto LABEL_10;
    }

    [v14 removeFromSuperview];
    v18 = objc_opt_self();
    v19 = [v18 defaultCenter];
    v34 = *MEMORY[0x1E69DEA38];
    [v19 removeObserver:v4 name:? object:?];

    v20 = *&v4[v15];
    if (v20)
    {
      v21 = v20;
      v22 = [v4 contentView];
      [v22 addSubview_];

      v23 = [v18 defaultCenter];
      [v23 addObserver:v4 selector:sel_onSystemTraitCollectionDidChange_ name:v34 object:0];
    }

    goto LABEL_9;
  }

LABEL_10:
  v24 = [objc_opt_self() mainScreen];
  v25 = [v24 traitCollection];

  v26 = [v25 userInterfaceStyle];
  v27 = *&v4[v12];
  if (v27)
  {
    [v27 setOverrideUserInterfaceStyle_];
  }

  type metadata accessor for Accessibility();
  OUTLINED_FUNCTION_31_4();
  sub_1E40A8408();
  if (v29)
  {
    v30 = v28;
    v31 = v29;
    v32 = v4;
    sub_1E38E89A0(v30, v31, v32);
  }

  return a2;
}

void sub_1E3D5E6E4(unint64_t a1)
{
  v2 = v1;
  v4 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v155 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v155 - v11;
  v13 = OBJC_IVAR____TtC8VideosUI31ChannelBannerCollectionViewCell_bannerView;
  OUTLINED_FUNCTION_5_0(v2 + OBJC_IVAR____TtC8VideosUI31ChannelBannerCollectionViewCell_bannerView, v186);
  v14 = *(v2 + v13);
  if (!v14)
  {
    return;
  }

  v173 = v12;
  v174 = v9;
  v15 = *(*a1 + 392);
  v16 = v14;
  v17 = v15();
  if (!v17)
  {

    return;
  }

  v18 = v17;
  if (*v17 == _TtC8VideosUI19ChannelBannerLayout)
  {
    v19 = v17;
  }

  else
  {
    v19 = 0;
  }

  if (*v17 != _TtC8VideosUI19ChannelBannerLayout || (v175 = (*(*a1 + 464))()) == 0)
  {

LABEL_88:

    return;
  }

  v170 = v4;
  v20 = v16;
  [v20 bounds];
  Width = CGRectGetWidth(v193);
  v180 = v20;
  [v20 bounds];
  CGRectGetHeight(v194);
  type metadata accessor for LayoutGrid();
  v22 = sub_1E3A2579C(Width);
  type metadata accessor for ChannelBannerLayout();
  v23 = *sub_1E38A86A4();
  v24 = (*(v23 + 432))();
  v159 = v18;
  v26 = v25;

  sub_1E40420F0(v22, v24, v26 & 1, Width);
  v28 = v27;
  v30 = v29;
  v31 = sub_1E38A86A4();
  (*(*v31 + 208))(v28, 0);

  v32 = sub_1E38A86A4();
  (*(*v32 + 312))(v30, 0);

  LOBYTE(v182) = 27;
  (*(*a1 + 776))(&v187, &v182, &unk_1F5D5DAC8, &off_1F5D5C998);
  if (v188[2])
  {
    swift_dynamicCast();
    OUTLINED_FUNCTION_22_73();
    if (v33)
    {
      v34 = sub_1E4205ED4();

      goto LABEL_15;
    }
  }

  else
  {
    sub_1E325F748(&v187, &unk_1ECF296E0, &unk_1E4298030);
    OUTLINED_FUNCTION_22_73();
  }

  v34 = 0;
LABEL_15:
  v165 = VUIUserInterfaceStyleFromTheme();

  v35 = MEMORY[0x1E69E7CC0];
  v185 = MEMORY[0x1E69E7CC0];
  v36 = v180;
  v37 = sub_1E3D603E8(v180);
  if (v37)
  {
    v38 = v37;
  }

  else
  {
    v38 = v35;
  }

  v166 = v38;
  v164 = [v36 bgImageView];
  if (!v164)
  {
    v164 = OUTLINED_FUNCTION_6_40(objc_allocWithZone(VUIProductUberBackgroundView), sel_initWithFrame_);
  }

  v39 = sub_1E32AE9B0(a1);
  if (!v39)
  {

    v124 = 0;
    v123 = 0;
    v125 = 0;
    v122 = 0;
    v121 = 0;
    v45 = MEMORY[0x1E69E7CC0];
    goto LABEL_72;
  }

  v41 = v39;
  v156 = v19;
  if (v39 < 1)
  {
    goto LABEL_92;
  }

  v177 = 0;
  v171 = 0;
  v176 = 0;
  v172 = 0;
  v42 = 0;
  v43 = 0;
  v160 = OBJC_IVAR____TtC8VideosUI31ChannelBannerCollectionViewCell_bgImageViewModel;
  v181 = a1 & 0xC000000000000001;
  v44 = v166 & 0xFFFFFFFFFFFFFF8;
  v163 = v166 & 0xFFFFFFFFFFFFFF8;
  if (v166 < 0)
  {
    v44 = v166;
  }

  v155 = v44;
  v158 = v166 & 0xC000000000000001;
  v157 = v166 + 32;
  v168 = v6 + 16;
  v169 = v6 + 8;
  v45 = MEMORY[0x1E69E7CC0];
  *&v40 = 136315138;
  v161 = v40;
  v162 = v2;
  v167 = v39;
  while (2)
  {
    if (v181)
    {
      v46 = MEMORY[0x1E6911E60](v43, a1);
    }

    else
    {
      v46 = *(a1 + 8 * v43 + 32);
    }

    v47 = *(v46 + 98);
    switch(*(v46 + 98))
    {
      case 9:
        type metadata accessor for UIFactory();
        OUTLINED_FUNCTION_31_4();

        v48 = OUTLINED_FUNCTION_116_1();
        v50 = [v48 v49];
        v51 = OUTLINED_FUNCTION_9_5();
        sub_1E3280A90(v51, &qword_1EE23AE80, 0x1E69DD250);
        v182 = 0u;
        v183 = 0u;
        v184 = 0;
        v52 = OUTLINED_FUNCTION_0_228();
        sub_1E393D92C(v52, v53, v54, v55, v56);
        OUTLINED_FUNCTION_31_4();

        sub_1E325F748(&v182, &qword_1ECF296C0, &unk_1E429BBE0);
        v57 = &v191;
        goto LABEL_50;
      case 0xA:
      case 0xC:
      case 0xE:
      case 0xF:
      case 0x10:
        goto LABEL_34;
      case 0xB:
        type metadata accessor for UIFactory();
        OUTLINED_FUNCTION_31_4();

        v76 = OUTLINED_FUNCTION_116_1();
        v78 = [v76 v77];
        v79 = OUTLINED_FUNCTION_9_5();
        sub_1E3280A90(v79, &qword_1EE23AD40, off_1E87283A8);
        v182 = 0u;
        v183 = 0u;
        v184 = 0;
        v80 = OUTLINED_FUNCTION_0_228();
        sub_1E393D92C(v80, v81, v82, v83, v84);
        OUTLINED_FUNCTION_31_4();

        sub_1E325F748(&v182, &qword_1ECF296C0, &unk_1E429BBE0);
        v57 = &v192;
        goto LABEL_50;
      case 0xD:
        v179 = v42;
        sub_1E324FBDC();
        OUTLINED_FUNCTION_21_83();
        v87 = OUTLINED_FUNCTION_13_125();
        v88(v87);

        v36 = sub_1E41FFC94();
        v89 = sub_1E4206814();

        if (os_log_type_enabled(v36, v89))
        {
          v35 = swift_slowAlloc();
          v90 = swift_slowAlloc();
          v178 = v45;
          v91 = v90;
          OUTLINED_FUNCTION_12_113(v90);
          sub_1E384EE08(13);
          v94 = sub_1E3270FC8(v92, v93, &v182);
          v2 = v162;

          *(v35 + 4) = v94;
          v41 = v167;
          _os_log_impl(&dword_1E323F000, v36, v89, "Channel banner view factory: unhandled type [%s]", v35, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v91);
          v45 = v178;
          OUTLINED_FUNCTION_6_0();
          OUTLINED_FUNCTION_6_0();
        }

        v95 = OUTLINED_FUNCTION_11_123();
        v96(v95);
        OUTLINED_FUNCTION_22_73();
        goto LABEL_48;
      case 0x11:
        if (v45 >> 62)
        {
          v36 = sub_1E4207384();
        }

        else
        {
          v36 = *((v45 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        if (v166 >> 62)
        {
          v85 = sub_1E4207384();
        }

        else
        {
          v85 = *(v163 + 16);
        }

        if (v36 >= v85)
        {
          v115 = 0;
          goto LABEL_63;
        }

        if (v45 >> 62)
        {
          v86 = sub_1E4207384();
        }

        else
        {
          v86 = *((v45 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        if (v158)
        {
          v116 = MEMORY[0x1E6911E60](v86, v166);
LABEL_62:
          v115 = v116;
LABEL_63:
          type metadata accessor for UIFactory();
          v117 = OUTLINED_FUNCTION_6_154();
          v118 = sub_1E3280A90(v117, &qword_1EE23AD40, off_1E87283A8);

          v35 = sub_1E393D92C(v119, v115, &v182, 0, v118);

          sub_1E325F748(&v182, &qword_1ECF296C0, &unk_1E429BBE0);
          if (v35)
          {
            v120 = v35;
            v36 = &v185;
            MEMORY[0x1E6910BF0]();
            v35 = *((v185 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (v35 >= *((v185 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_1E42062F4();
            }

            sub_1E4206324();

            v45 = v185;
          }

          else
          {
          }

LABEL_51:
          if (v41 == ++v43)
          {

            v121 = v42;
            v19 = v156;
            v122 = v172;
            v123 = v171;
            v124 = v177;
            v125 = v176;
LABEL_72:
            v126 = v180;
            v176 = v125;
            [v180 setDescriptionTextView:v155];
            v172 = v122;
            [v126 setSubscribeButton:v122];
            sub_1E3280A90(0, &qword_1EE23AD40, off_1E87283A8);
            v178 = v45;
            v127 = sub_1E42062A4();
            [v126 setTextLabels:v127];

            v171 = v123;
            [v126 setAppleTVChannelLogoView:v123];
            v177 = v124;
            [v126 setDisclaimerTextLabel:v124];
            vtable = (*v19)[18].vtable;

            v130 = vtable(v129);
            [v126 setVuiBackgroundColor:v130];
            v131 = v164;
            [v131 setVuiBackgroundColor_];
            v132 = v121;
            [v131 setImageView_];
            [v131 setIsChannelBanner_];
            if (v121)
            {

              OUTLINED_FUNCTION_19_99();
              if (v134)
              {
                v135 = v133;
              }

              else
              {
                v135 = v133 + 1;
              }

              [v131 configureBlurWithInterfaceStyle_];
              [v131 setVuiBackgroundColor_];

              v136 = v180;
              [v180 setVuiBackgroundColor:0];
            }

            else
            {

              [v131 configureBlurWithInterfaceStyle_];
            }

            v137 = OUTLINED_FUNCTION_116_1();
            [v137 v138];
            if ([objc_opt_self() isSUIEnabled])
            {
              sub_1E4040D7C();
              OUTLINED_FUNCTION_30();
              (*(v139 + 304))();

              v140 = OUTLINED_FUNCTION_116_1();
              [v140 v141];
            }

            sub_1E4040D10();
            OUTLINED_FUNCTION_30();
            *&v143 = COERCE_DOUBLE((*(v142 + 304))());
            v145 = v144;

            v146 = *&v143;
            if (v145)
            {
              v146 = 0.0;
            }

            v147 = v180;
            *&v148 = COERCE_DOUBLE(((*v19)[7].vtable)([v180 setLogoHeight:v146]));
            v150 = v149;

            v151 = *&v148;
            if (v150)
            {
              v151 = 0.0;
            }

            [v147 setHeight:v151];
            OUTLINED_FUNCTION_19_99();
            if (v134)
            {
              v153 = v152;
            }

            else
            {
              v153 = v152 + 1;
            }

            [v147 vui_setOverrideUserInterfaceStyle:v153];

            v154 = OBJC_IVAR____TtC8VideosUI31ChannelBannerCollectionViewCell_layout;
            swift_beginAccess();
            *(v2 + v154) = v19;
            goto LABEL_88;
          }

          continue;
        }

        if ((v86 & 0x8000000000000000) == 0)
        {
          if (v86 >= *(v163 + 16))
          {
            goto LABEL_91;
          }

          v116 = *(v157 + 8 * v86);
          goto LABEL_62;
        }

        __break(1u);
LABEL_91:
        __break(1u);
LABEL_92:
        __break(1u);
        return;
      default:
        if (v47 != 39)
        {
          if (v47 == 59)
          {
            sub_1E3F86AA4(&v187);
            type metadata accessor for UIFactory();
            OUTLINED_FUNCTION_31_4();

            v97 = OUTLINED_FUNCTION_116_1();
            v35 = [v97 v98];
            *(&v183 + 1) = &type metadata for ButtonViewContext;
            v184 = &off_1F5D8FAD0;
            v99 = swift_allocObject();
            *&v182 = v99;
            *(v99 + 16) = v165;
            memcpy((v99 + 24), v188, 0x52uLL);
            sub_1E3280A90(0, &qword_1EE23AE80, 0x1E69DD250);
            v100 = OUTLINED_FUNCTION_0_228();
            sub_1E393D92C(v100, v101, v102, v103, v104);
            OUTLINED_FUNCTION_31_4();

            sub_1E325F748(&v182, &qword_1ECF296C0, &unk_1E429BBE0);
            v57 = &v190;
          }

          else
          {
            if (v47 != 99)
            {
LABEL_34:
              v179 = v42;
              v178 = v45;
              sub_1E324FBDC();
              OUTLINED_FUNCTION_21_83();
              v67 = OUTLINED_FUNCTION_13_125();
              v68(v67);

              v36 = sub_1E41FFC94();
              v69 = sub_1E4206814();

              if (os_log_type_enabled(v36, v69))
              {
                v35 = swift_slowAlloc();
                v70 = swift_slowAlloc();
                OUTLINED_FUNCTION_12_113(v70);
                sub_1E384EE08(v47);
                v73 = sub_1E3270FC8(v71, v72, &v182);

                *(v35 + 4) = v73;
                v41 = v167;
                _os_log_impl(&dword_1E323F000, v36, v69, "Channel banner view factory: unhandled type [%s]", v35, 0xCu);
                __swift_destroy_boxed_opaque_existential_1(v70);
                v2 = v162;
                OUTLINED_FUNCTION_6_0();
                OUTLINED_FUNCTION_6_0();
              }

              v74 = OUTLINED_FUNCTION_11_123();
              v75(v74);
              OUTLINED_FUNCTION_22_73();
              v45 = v178;
LABEL_48:
              v42 = v179;
              goto LABEL_51;
            }

            type metadata accessor for UIFactory();
            OUTLINED_FUNCTION_31_4();

            v58 = OUTLINED_FUNCTION_116_1();
            v60 = [v58 v59];
            v61 = OUTLINED_FUNCTION_9_5();
            sub_1E3280A90(v61, &qword_1EE23AE80, 0x1E69DD250);
            v182 = 0u;
            v183 = 0u;
            v184 = 0;
            v62 = OUTLINED_FUNCTION_0_228();
            sub_1E393D92C(v62, v63, v64, v65, v66);
            OUTLINED_FUNCTION_31_4();

            sub_1E325F748(&v182, &qword_1ECF296C0, &unk_1E429BBE0);
            v57 = &v189;
          }

LABEL_50:
          *(v57 - 32) = v36;
          goto LABEL_51;
        }

        v105 = v45;
        v106 = [v164 imageView];
        OUTLINED_FUNCTION_9_5();
        type metadata accessor for UIFactory();
        v107 = OUTLINED_FUNCTION_6_154();
        v108 = sub_1E3280A90(v107, &qword_1EE23AE80, 0x1E69DD250);

        v109 = v35;
        v110 = OUTLINED_FUNCTION_0_228();
        sub_1E393D92C(v110, v111, v112, v113, v108);
        OUTLINED_FUNCTION_31_4();

        sub_1E325F748(&v182, &qword_1ECF296C0, &unk_1E429BBE0);
        type metadata accessor for ImageViewModel();
        v114 = swift_dynamicCastClass();
        if (!v114)
        {

          v114 = 0;
        }

        v45 = v105;
        *(v2 + v160) = v114;

        v42 = v36;
        v41 = v167;
        goto LABEL_51;
    }
  }
}