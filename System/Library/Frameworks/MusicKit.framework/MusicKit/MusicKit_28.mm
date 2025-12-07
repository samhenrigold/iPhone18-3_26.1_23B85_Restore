void sub_217485440(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t (*a21)(uint64_t, __n128), uint64_t *a22, uint64_t *a23)
{
  OUTLINED_FUNCTION_12();
  v26 = v25;
  v146 = v27;
  v145 = v28;
  v144 = v29;
  HIDWORD(v142) = v30;
  v143 = v31;
  v141 = v32;
  v34 = v33;
  v35 = sub_217751428();
  OUTLINED_FUNCTION_0_0();
  v37 = v36;
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_6_1();
  v41 = v39 - v40;
  v43.n128_f64[0] = MEMORY[0x28223BE20](v42);
  v45 = &v134 - v44;
  if (v34 >> 62)
  {
LABEL_152:
    v24 = v45;
    v132 = sub_217752D38();
    v45 = v24;
    if (!v132)
    {
      goto LABEL_131;
    }
  }

  else if (!*((v34 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_131;
  }

  v135 = v45;
  v136 = v41;
  v137 = v37;
  v138 = v35;
  v140 = i;
  v154 = a23;
  v46 = MEMORY[0x277D84F90];
  v153 = a22;
  v139 = a21;
  v166 = MEMORY[0x277D84F90];
  v167 = MEMORY[0x277D84F90];
  v164 = MEMORY[0x277D84F90];
  v165 = MEMORY[0x277D84F90];
  v163 = MEMORY[0x277D84F90];
  v47 = (v26)(v34, v43);
  v26 = 0;
  v156 = v34 & 0xFFFFFFFFFFFFFF8;
  v157 = v34 & 0xC000000000000001;
  v134 = v34;
  v155 = v34 + 32;
  v48 = &unk_217758A10;
  v148 = xmmword_217759C00;
  v147 = v47;
  while (v26 != v47)
  {
    if (v157)
    {
      i = MEMORY[0x21CEA2E30](v26, v134);
    }

    else
    {
      OUTLINED_FUNCTION_833();
      if (v49)
      {
        goto LABEL_133;
      }

      i = *(v155 + 8 * v26);
    }

    v50 = __OFADD__(v26++, 1);
    if (v50)
    {
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
LABEL_141:
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
LABEL_147:
      __break(1u);
LABEL_148:
      __break(1u);
LABEL_149:
      __break(1u);
LABEL_150:
      __break(1u);
LABEL_151:
      __break(1u);
      goto LABEL_152;
    }

    v158 = v26;
    if (*(i + 65) == 1)
    {
      v26 = *(i + 72);
      sub_217751DE8();

      goto LABEL_35;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB275A0, &qword_217757BC0);
    OUTLINED_FUNCTION_1212();
    v26 = swift_allocObject();
    *(v26 + 16) = v148;
    *(v26 + 32) = i;
    v37 = *(i + 72);
    i = v37 >> 62;
    if (v37 >> 62)
    {
      v41 = sub_217752D38();
    }

    else
    {
      v41 = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v34 = v26 & 0xFFFFFFFFFFFFFF8;
    v35 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v24 = v35 + v41;
    if (__OFADD__(v35, v41))
    {
      goto LABEL_141;
    }

    sub_217751DE8();
    if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || v24 > *((v26 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      OUTLINED_FUNCTION_705();
      v26 = sub_217752AE8();
      v34 = v26 & 0xFFFFFFFFFFFFFF8;
    }

    v51 = *(v34 + 16);
    v45 = (*(v34 + 24) >> 1);
    v52 = v34;
    v34 = &v45[-v51];
    v151 = v52;
    v35 = v52 + 8 * v51;
    if (i)
    {
      if (v37 < 0)
      {
        i = v37;
      }

      else
      {
        i = v37 & 0xFFFFFFFFFFFFFF8;
      }

      if (sub_217752D38())
      {
        OUTLINED_FUNCTION_905();
        v150 = sub_217752D38();
        if (v34 < v150)
        {
          goto LABEL_149;
        }

        if (v24 < 1)
        {
          goto LABEL_151;
        }

        v149 = v41;
        v152 = v46;
        v53 = v35 + 32;
        OUTLINED_FUNCTION_599();
        v34 = sub_217498F2C(&unk_27CB277D0, &qword_27CB24520, v48);
        for (i = 0; i != v24; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24520, v48);
          v54 = sub_21773387C(v162, i, v37);
          v35 = *v55;

          v54(v162, 0);
          *(v53 + 8 * i) = v35;
        }

        v46 = v152;
        v47 = v147;
        v41 = v149;
        v24 = v150;
        goto LABEL_30;
      }
    }

    else
    {
      i = v37 & 0xFFFFFFFFFFFFFF8;
      v24 = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v24)
      {
        if (v34 < v24)
        {
          goto LABEL_150;
        }

        type metadata accessor for AnyMusicProperty();
        swift_arrayInitWithCopy();
LABEL_30:

        v45 = v151;
        if (v24 < v41)
        {
          goto LABEL_142;
        }

        if (v24 > 0)
        {
          v56 = *(v151 + 2);
          v50 = __OFADD__(v56, v24);
          v57 = v56 + v24;
          if (v50)
          {
            goto LABEL_148;
          }

          *(v151 + 2) = v57;
        }

        goto LABEL_35;
      }
    }

    if (v41 > 0)
    {
      goto LABEL_142;
    }

LABEL_35:
    i = v26 >> 62;
    if (v26 >> 62)
    {
      v37 = sub_217752D38();
    }

    else
    {
      v37 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v41 = v46 >> 62;
    if (v46 >> 62)
    {
      v58 = sub_217752D38();
    }

    else
    {
      v58 = *((v46 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v35 = v58 + v37;
    if (__OFADD__(v58, v37))
    {
      goto LABEL_134;
    }

    if (!swift_isUniquelyReferenced_nonNull_bridgeObject())
    {
      if (v41)
      {
LABEL_45:
        sub_217752D38();
      }

LABEL_46:
      v46 = sub_217752AE8();
      v41 = v46 & 0xFFFFFFFFFFFFFF8;
      goto LABEL_47;
    }

    if (v41)
    {
      goto LABEL_45;
    }

    v41 = v46 & 0xFFFFFFFFFFFFFF8;
    if (v35 > *((v46 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      goto LABEL_46;
    }

LABEL_47:
    v59 = *(v41 + 16);
    v45 = (*(v41 + 24) >> 1);
    v34 = &v45[-v59];
    v35 = v41 + 8 * v59;
    if (i)
    {
      if (v26 < 0)
      {
        i = v26;
      }

      else
      {
        i = v26 & 0xFFFFFFFFFFFFFF8;
      }

      if (!sub_217752D38())
      {
        goto LABEL_64;
      }

      OUTLINED_FUNCTION_905();
      v60 = sub_217752D38();
      if (v34 < v60)
      {
        goto LABEL_146;
      }

      if (v24 < 1)
      {
        goto LABEL_147;
      }

      v149 = v60;
      v150 = v41;
      v151 = v37;
      v152 = v46;
      v61 = v35 + 32;
      OUTLINED_FUNCTION_599();
      v34 = sub_217498F2C(&unk_27CB277D0, &qword_27CB24520, v48);
      v62 = v48;
      for (j = 0; j != v24; ++j)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24520, v62);
        v35 = sub_21773387C(v162, j, v26);
        v65 = *v64;

        (v35)(v162, 0);
        *(v61 + 8 * j) = v65;
      }

      v37 = v151;
      v46 = v152;
      v47 = v147;
      v48 = v62;
      v41 = v150;
      i = v149;
LABEL_60:

      v26 = v158;
      if (i < v37)
      {
        goto LABEL_135;
      }

      if (i > 0)
      {
        v66 = *(v41 + 16);
        v50 = __OFADD__(v66, i);
        v67 = v66 + i;
        if (v50)
        {
          goto LABEL_143;
        }

        *(v41 + 16) = v67;
      }
    }

    else
    {
      v24 = v26 & 0xFFFFFFFFFFFFFF8;
      i = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (i)
      {
        if (v34 < i)
        {
          goto LABEL_145;
        }

        type metadata accessor for AnyMusicProperty();
        swift_arrayInitWithCopy();
        goto LABEL_60;
      }

LABEL_64:

      v26 = v158;
      if (v37 > 0)
      {
        goto LABEL_135;
      }
    }
  }

  v68 = sub_217204DD0(v46);
  v35 = 0;
  v157 = v46 & 0xC000000000000001;
  v158 = v68;
  v69 = MEMORY[0x277D84F90];
  v41 = v46;
  v70 = v46 & 0xFFFFFFFFFFFFFF8;
  v151 = MEMORY[0x277D84F90];
  v152 = MEMORY[0x277D84F90];
  v155 = MEMORY[0x277D84F90];
  v156 = MEMORY[0x277D84F90];
  v150 = MEMORY[0x277D84F90];
  while (v158 != v35)
  {
    if (v157)
    {
      v86 = OUTLINED_FUNCTION_85_3();
      v34 = MEMORY[0x21CEA2E30](v86);
    }

    else
    {
      if (v35 >= *(v70 + 16))
      {
        goto LABEL_137;
      }

      v34 = *(v41 + 8 * v35 + 32);
    }

    if (__OFADD__(v35, 1))
    {
      goto LABEL_136;
    }

    if (*(v34 + 64))
    {
      if (*(v34 + 64) == 1)
      {

        MEMORY[0x21CEA25D0](v71);
        if (*((v166 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v166 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_2177522F8();
        }

        sub_217752378();
        v156 = v166;
      }

      else
      {
        v73 = *(v34 + 48);
        v74 = *(v34 + 56);
        if (v73 ^ 1 | v74)
        {
          if (v73 ^ 2 | v74)
          {
            v160 = 0;
            v161 = 0xE000000000000000;
            sub_217752AA8();
            MEMORY[0x21CEA23B0](0xD000000000000023, 0x80000002177AE390);
            v159 = v34;
            type metadata accessor for AnyMusicProperty();
            sub_217752C78();
            MEMORY[0x21CEA23B0](0xD00000000000003ALL, 0x80000002177AE460);
            OUTLINED_FUNCTION_42_10();
            sub_217752D08();
            __break(1u);
            return;
          }

          MEMORY[0x21CEA25D0](v76);
          OUTLINED_FUNCTION_860();
          if (v49)
          {
            sub_2177522F8();
          }

          OUTLINED_FUNCTION_15();
          sub_217752378();
          v152 = v164;
        }

        else
        {

          MEMORY[0x21CEA25D0](v75);
          OUTLINED_FUNCTION_860();
          if (v49)
          {
            sub_2177522F8();
          }

          OUTLINED_FUNCTION_15();
          sub_217752378();
          v151 = v165;
        }
      }
    }

    else
    {

      MEMORY[0x21CEA25D0](v72);
      if (*((v167 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v167 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_2177522F8();
      }

      sub_217752378();
      v155 = v167;
    }

    v77 = *(v34 + 88);
    i = *(v77 + 16);
    v37 = *(v69 + 16);
    v26 = v37 + i;
    if (__OFADD__(v37, i))
    {
      goto LABEL_138;
    }

    sub_217751DE8();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (!isUniquelyReferenced_nonNull_native || v26 > *(v69 + 24) >> 1)
    {
      if (v37 <= v26)
      {
        v79 = v37 + i;
      }

      else
      {
        v79 = v37;
      }

      sub_2172AFF2C(isUniquelyReferenced_nonNull_native, v79, 1, v69);
      v69 = v80;
    }

    if (*(v77 + 16))
    {
      v45 = ((*(v69 + 24) >> 1) - *(v69 + 16));
      if (v45 < i)
      {
        goto LABEL_140;
      }

      swift_arrayInitWithCopy();

      if (i)
      {
        v81 = *(v69 + 16);
        v50 = __OFADD__(v81, i);
        v82 = v81 + i;
        if (v50)
        {
          goto LABEL_144;
        }

        *(v69 + 16) = v82;
      }
    }

    else
    {

      if (i)
      {
        goto LABEL_139;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(v153, v154);
    v83 = swift_dynamicCastClass();
    if (v83 && (v84 = v83, OUTLINED_FUNCTION_6(), swift_beginAccess(), *(v84 + 112) != 1))
    {

      i = &v163;
      MEMORY[0x21CEA25D0](v85);
      OUTLINED_FUNCTION_1350();
      if (v49)
      {
        sub_2177522F8();
      }

      OUTLINED_FUNCTION_148();
      sub_217752378();

      v150 = v163;
      ++v35;
    }

    else
    {

      ++v35;
    }
  }

  v87 = v155;
  if (sub_217204DD0(v155))
  {
    v91 = v143;
    OUTLINED_FUNCTION_813(0x646E65747865, 0xE600000000000000, v141, v143, HIDWORD(v142), v88, v89, v90, v87, v133, v134, v135, v136, v137, v138, v139, v140, v141, v142, v143, v144);
    OUTLINED_FUNCTION_44_1();

    v92 = v140;
    sub_21754383C(i);
  }

  else
  {

    v92 = v140;
    v91 = v143;
  }

  v93 = v150;
  v94 = v151;
  v95 = v152;
  v96 = v156;
  if (sub_217204DD0(v156))
  {
    OUTLINED_FUNCTION_1436();
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_813(v97, v98, v99, v100, 0, v101, v102, v103, v96, v133, v134, v135, v136, v137, v138, v139, v140, v141, v142, v143, v144);
    OUTLINED_FUNCTION_1328();
    OUTLINED_FUNCTION_1526();
  }

  else
  {
  }

  if (sub_217204DD0(v94))
  {
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_813(v104, v105, v106, v107, 0, v108, v109, v110, v94, v133, v134, v135, v136, v137, v138, v139, v140, v141, v142, v143, v144);

    OUTLINED_FUNCTION_1526();
  }

  else
  {
  }

  if (sub_217204DD0(v95))
  {
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_813(v111, v112, v113, v114, 0, v115, v116, v117, v95, v133, v134, v135, v136, v137, v138, v139, v140, v141, v142, v143, v144);

    OUTLINED_FUNCTION_1526();
  }

  else
  {
  }

  if ((v139(v93, v118) & 1) != 0 || !v91)
  {
  }

  else
  {
    sub_217486A14();

    OUTLINED_FUNCTION_1526();
  }

  if (*(v69 + 16))
  {
    sub_2173DAF84(v69);
    v120 = v119;

    v160 = v120;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24C58, &unk_2177677B0);
    OUTLINED_FUNCTION_80_3();
    sub_217498F2C(v121, v122, v123);
    sub_217751ED8();

    v124 = v135;
    sub_2177513F8();

    v125 = v137;
    v126 = v136;
    v127 = OUTLINED_FUNCTION_15();
    v128 = v138;
    v129(v127);
    sub_21770B7A4();
    v130 = *(*v92 + 16);
    sub_21770BAD4(v130);
    (*(v125 + 8))(v124, v128);
    v131 = *v92;
    *(v131 + 16) = v130 + 1;
    (*(v125 + 32))(v131 + ((*(v125 + 80) + 32) & ~*(v125 + 80)) + *(v125 + 72) * v130, v126, v128);
    *v92 = v131;
  }

  else
  {
  }

LABEL_131:
  OUTLINED_FUNCTION_13();
}

void sub_217486228(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  OUTLINED_FUNCTION_12();
  i = v21;
  v24 = v23;
  v26 = v25;
  v104 = v27;
  v108 = v28;
  v109 = v29;
  v110 = v30;
  v111 = v31;
  v32 = 0;
  v33 = a21;
  v114 = sub_217751428();
  OUTLINED_FUNCTION_0_0();
  v35 = v34;
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_6_1();
  v113 = v37 - v38;
  OUTLINED_FUNCTION_79_2();
  MEMORY[0x28223BE20](v39);
  v117 = &v103 - v40;
  v41 = MEMORY[0x277D84F90];
  v121[0] = MEMORY[0x277D84F90];
  v118 = MEMORY[0x277D84F90];
  v42 = sub_217204DD0(a21);
  v43 = (a21 & 0xC000000000000001);
  v115 = a21 & 0xFFFFFFFFFFFFFF8;
  v116 = a21;
  v112 = a21 + 32;
  v103 = 0;
  v107 = a21 & 0xC000000000000001;
  while (v42 != v32)
  {
    if (v43)
    {
      v45 = MEMORY[0x21CEA2E30](v32, v116);
    }

    else
    {
      v44 = *(v115 + 16);
      if (v32 >= v44)
      {
        goto LABEL_74;
      }

      v45 = *(v116 + 8 * v32 + 32);
    }

    if (__OFADD__(v32, 1))
    {
      __break(1u);
LABEL_74:
      __break(1u);
LABEL_75:
      __break(1u);
LABEL_76:
      __break(1u);
LABEL_77:
      __break(1u);
LABEL_78:
      __break(1u);
LABEL_79:
      __break(1u);
LABEL_80:
      __break(1u);
LABEL_81:
      __break(1u);
LABEL_82:
      __break(1u);
LABEL_83:
      __break(1u);
LABEL_84:
      __break(1u);
LABEL_85:
      v98 = OUTLINED_FUNCTION_11_1(v44);
      sub_2172B1A50(v98, v99, v100, v41);
      v41 = v101;
      goto LABEL_26;
    }

    if (*(v45 + 40))
    {
    }

    else
    {
      v33 = &v118;
      sub_217752BC8();
      sub_217752C08();
      v43 = v107;
      sub_217752C18();
      sub_217752BD8();
    }

    ++v32;
  }

  v46 = v118;
  if (!sub_217204DD0(v118))
  {

    v32 = v104;
    goto LABEL_27;
  }

  v47 = sub_2174870C0(v110, v111, v26, v24);
  v49 = v48;
  v50 = sub_2171F63F0(v46);
  v105 = v47;
  v106 = v49;
  if (v50)
  {
    v26 = v50;
    v118 = v41;
    sub_217275C90(0, v50 & ~(v50 >> 63), 0, v51, v52, v53, v54);
    if (v26 < 0)
    {
      __break(1u);
      return;
    }

    v55 = 0;
    v56 = v118;
    do
    {
      if ((v46 & 0xC000000000000001) != 0)
      {
        v57 = MEMORY[0x21CEA2E30](v55, v46);
      }

      else
      {
        v57 = *(v46 + 8 * v55 + 32);
      }

      v58 = *(v57 + 16);
      v59 = *(v57 + 24);
      sub_217751DE8();

      v118 = v56;
      v61 = *(v56 + 16);
      v60 = *(v56 + 24);
      if (v61 >= v60 >> 1)
      {
        OUTLINED_FUNCTION_57(v60);
        OUTLINED_FUNCTION_1222();
        sub_217275C90(v63, v64, v65, v66, v67, v68, v69);
        v56 = v118;
      }

      ++v55;
      *(v56 + 16) = v61 + 1;
      v62 = v56 + 16 * v61;
      *(v62 + 32) = v58;
      *(v62 + 40) = v59;
    }

    while (v26 != v55);

    v43 = v107;
  }

  else
  {

    v56 = MEMORY[0x277D84F90];
  }

  sub_2173DAF84(v56);
  OUTLINED_FUNCTION_787();

  v118 = v26;
  v70 = OUTLINED_FUNCTION_135();
  __swift_instantiateConcreteTypeFromMangledNameV2(v70, v71);
  OUTLINED_FUNCTION_149_0();
  sub_217498F2C(v72, v73, v74);
  sub_217751ED8();

  sub_2177513F8();

  v26 = v113;
  i = v114;
  OUTLINED_FUNCTION_6_32();
  v76 = v75();
  OUTLINED_FUNCTION_137_0(v76, v77, v78, MEMORY[0x277D84F90]);
  v41 = v79;
  v24 = *(v79 + 16);
  v44 = *(v79 + 24);
  v33 = (v24 + 1);
  v32 = v104;
  if (v24 >= v44 >> 1)
  {
    goto LABEL_85;
  }

LABEL_26:
  (v35[1])(v117, i);
  *(v41 + 16) = v33;
  (v35[4])(v41 + ((*(v35 + 80) + 32) & ~*(v35 + 80)) + v35[9] * v24, v26, i);
  v121[0] = v41;
LABEL_27:
  v113 = sub_217204DD0(v116);
  v35 = 0;
  v117 = MEMORY[0x277D84F90];
  while (v35 != v113)
  {
    if (v43)
    {
      i = MEMORY[0x21CEA2E30](v35, v116);
    }

    else
    {
      v44 = *(v115 + 16);
      if (v35 >= v44)
      {
        goto LABEL_76;
      }

      i = *(v112 + 8 * v35);
    }

    v80 = __OFADD__(v35, 1);
    v35 = (v35 + 1);
    if (v80)
    {
      goto LABEL_75;
    }

    v24 = *(i + 80);
    sub_217751DE8();

    i = v24 >> 62;
    if (v24 >> 62)
    {
      v26 = sub_217752D38();
    }

    else
    {
      v26 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v41 = v117 >> 62;
    if (v117 >> 62)
    {
      v81 = OUTLINED_FUNCTION_1505();
    }

    else
    {
      v44 = v117 & 0xFFFFFFFFFFFFFF8;
      v81 = *((v117 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v33 = (v81 + v26);
    if (__OFADD__(v81, v26))
    {
      goto LABEL_77;
    }

    isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
    v114 = v26;
    if (!isUniquelyReferenced_nonNull_bridgeObject)
    {
      if (v41)
      {
LABEL_43:
        OUTLINED_FUNCTION_1505();
      }

LABEL_44:
      v117 = sub_217752AE8();
      v41 = v117 & 0xFFFFFFFFFFFFFF8;
      goto LABEL_45;
    }

    if (v41)
    {
      goto LABEL_43;
    }

    v41 = v117 & 0xFFFFFFFFFFFFFF8;
    if (v33 > *((v117 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      goto LABEL_44;
    }

LABEL_45:
    v44 = *(v41 + 16);
    v26 = (*(v41 + 24) >> 1) - v44;
    v33 = (v41 + 8 * v44);
    if (i)
    {
      if ((v24 & 0x8000000000000000) != 0)
      {
        i = v24;
      }

      else
      {
        i = v24 & 0xFFFFFFFFFFFFFF8;
      }

      v84 = sub_217752D38();
      if (!v84)
      {
        goto LABEL_62;
      }

      v85 = v84;
      v86 = sub_217752D38();
      if (v26 < v86)
      {
        goto LABEL_83;
      }

      if (v85 < 1)
      {
        goto LABEL_84;
      }

      v83 = v86;
      v105 = v41;
      v106 = v35;
      v33 += 4;
      OUTLINED_FUNCTION_599();
      sub_217498F2C(&unk_27CB277D0, &qword_27CB24520, &unk_217758A10);
      for (i = 0; i != v85; ++i)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24520, &unk_217758A10);
        v87 = sub_21773387C(&v118, i, v24);
        v89 = *v88;

        v87(&v118, 0);
        v26 = &qword_27CB24520;
        v33[i] = v89;
      }

      v32 = v104;
      v35 = v106;
      v43 = v107;
      v41 = v105;
LABEL_58:

      v44 = v114;
      if (v83 < v114)
      {
        goto LABEL_78;
      }

      if (v83 > 0)
      {
        v90 = *(v41 + 16);
        v80 = __OFADD__(v90, v83);
        v44 = v90 + v83;
        if (v80)
        {
          goto LABEL_81;
        }

        *(v41 + 16) = v44;
      }
    }

    else
    {
      i = v24 & 0xFFFFFFFFFFFFFF8;
      v83 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v83)
      {
        if (v26 < v83)
        {
          goto LABEL_82;
        }

        type metadata accessor for AnyMusicProperty();
        swift_arrayInitWithCopy();
        goto LABEL_58;
      }

LABEL_62:

      v44 = v114;
      if (v114 > 0)
      {
        goto LABEL_78;
      }
    }
  }

  v118 = sub_2174928EC(MEMORY[0x277D84F90]);
  v119 = v91;
  v120 = v92;
  sub_21771ED20(v116, v117);
  OUTLINED_FUNCTION_1328();
  i = v103;
  sub_2173E9E18(v41, &v118);

  v93 = 0;
  v41 = v119;
  v33 = v120;
  v94 = v120[2];
  v43 = (v119 + 40);
  v35 = v121;
  while (v94 != v93)
  {
    v44 = *(v41 + 16);
    if (v93 >= v44)
    {
      goto LABEL_79;
    }

    v44 = v33[2];
    if (v93 >= v44)
    {
      goto LABEL_80;
    }

    v24 = *(v43 - 1);
    i = *v43;
    v26 = v33[v93++ + 4];
    sub_217751DE8();
    sub_217751DE8();
    v102 = v111;
    OUTLINED_FUNCTION_88_3();
    sub_2174872F4(v95, v96, v97, v108, v109, v32, v116, v110, v102, v121);

    v43 += 2;
  }

  OUTLINED_FUNCTION_13();
}

void sub_217486A14()
{
  OUTLINED_FUNCTION_12();
  v70 = v0;
  v69 = v1;
  v3 = v2;
  v80 = v4;
  v81 = v5;
  v6 = sub_217751428();
  OUTLINED_FUNCTION_0_0();
  v77 = v7;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_6_1();
  v72 = (v9 - v10);
  OUTLINED_FUNCTION_79_2();
  MEMORY[0x28223BE20](v11);
  v71 = &v68 - v12;
  OUTLINED_FUNCTION_79_2();
  MEMORY[0x28223BE20](v13);
  v84 = &v68 - v14;
  OUTLINED_FUNCTION_79_2();
  MEMORY[0x28223BE20](v15);
  v83 = &v68 - v17;
  if (v3 >> 62)
  {
    v18 = sub_217752D38();
    if (v18)
    {
      goto LABEL_3;
    }

LABEL_30:
    OUTLINED_FUNCTION_13();
    return;
  }

  v18 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v18)
  {
    goto LABEL_30;
  }

LABEL_3:
  if (v18 >= 1)
  {
    v19 = 0;
    v20 = v3 & 0xC000000000000001;
    v78 = v77 + 32;
    v79 = (v77 + 16);
    v73 = (v77 + 8);
    v21 = MEMORY[0x277D84F90];
    *&v16 = 136446210;
    v68 = v16;
    v75 = v18;
    v76 = v3;
    v82 = v6;
    v74 = v3 & 0xC000000000000001;
    while (1)
    {
      if (v20)
      {
        v22 = MEMORY[0x21CEA2E30](v19, v3);
      }

      else
      {
        v22 = *(v3 + 8 * v19 + 32);
      }

      OUTLINED_FUNCTION_6();
      swift_beginAccess();
      if (*(v22 + 112))
      {
      }

      else
      {
        v23 = *(v22 + 104);
        *&v87[0] = 0x5B74696D696CLL;
        *(&v87[0] + 1) = 0xE600000000000000;
        MEMORY[0x21CEA23B0](v80, v81);
        MEMORY[0x21CEA23B0](58, 0xE100000000000000);
        v24 = *(v22 + 16);
        v25 = *(v22 + 24);

        sub_217751DE8();
        MEMORY[0x21CEA23B0](v24, v25);

        MEMORY[0x21CEA23B0](93, 0xE100000000000000, v26);
        *&v87[0] = v23;
        sub_217752FC8();
        v27 = v83;
        sub_2177513F8();
        v28 = v82;

        v30 = *v79;
        (*v79)(v84, v27, v28, v29);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v62 = OUTLINED_FUNCTION_17();
          sub_2172B1A50(v62, v63, v64, v21);
          v21 = v65;
        }

        v32 = *(v21 + 16);
        v31 = *(v21 + 24);
        if (v32 >= v31 >> 1)
        {
          sub_2172B1A50(v31 > 1, v32 + 1, 1, v21);
          v21 = v66;
        }

        *(v21 + 16) = v32 + 1;
        v33 = (*(v77 + 80) + 32) & ~*(v77 + 80);
        v85 = v21;
        v34 = *(v77 + 72);
        v35 = v21 + v33 + v34 * v32;
        v36 = *(v77 + 32);
        v36(v35, v84, v28);
        if (v23 <= 300)
        {
          v50 = OUTLINED_FUNCTION_1471();
          v51(v50);
        }

        else
        {
          v37 = [objc_opt_self() mainBundle];
          v38 = NSBundle.isMusicApp.getter();

          if (v38)
          {
            *&v87[0] = 0;
            *(&v87[0] + 1) = 0xE000000000000000;
            sub_217752AA8();

            strcpy(v87, "overrideLimit[");
            HIBYTE(v87[0]) = -18;
            MEMORY[0x21CEA23B0](v80, v81, v39);
            MEMORY[0x21CEA23B0](58, 0xE100000000000000);
            v40 = *(v22 + 16);
            v41 = *(v22 + 24);
            sub_217751DE8();

            MEMORY[0x21CEA23B0](v40, v41);
            v42 = v82;

            MEMORY[0x21CEA23B0](93, 0xE100000000000000, v43);
            v44 = v71;
            sub_2177513F8();

            v30(v72, v44, v42, v45);
            v47 = *(v85 + 16);
            v46 = *(v85 + 24);
            if (v47 >= v46 >> 1)
            {
              sub_2172B1A50(v46 > 1, v47 + 1, 1, v85);
              v85 = v67;
            }

            v48 = *v73;
            (*v73)(v71, v42);
            v48(v83, v42);
            v49 = v85;
            *(v85 + 16) = v47 + 1;
            v36(v49 + v33 + v47 * v34, v72, v42);
            v21 = v49;
            v18 = v75;
            v3 = v76;
            v20 = v74;
            goto LABEL_27;
          }

          if (qword_280BE8358 != -1)
          {
            swift_once();
          }

          v52 = sub_217751AF8();
          __swift_project_value_buffer(v52, qword_280C02570);

          v53 = sub_217751AD8();
          v54 = sub_217752808();

          if (os_log_type_enabled(v53, v54))
          {
            v55 = OUTLINED_FUNCTION_1182();
            v56 = swift_slowAlloc();
            v86 = v22;
            *&v87[0] = v56;
            *v55 = v68;

            __swift_instantiateConcreteTypeFromMangledNameV2(v69, v70);
            v57 = sub_217751FA8();
            v59 = sub_21729C0E8(v57, v58, v87);

            *(v55 + 4) = v59;
            _os_log_impl(&dword_2171EE000, v53, v54, "Unable to override limit for property %{public}s because the requesting app is not the first-party music app.", v55, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v56);
            MEMORY[0x21CEA4360](v56, -1, -1);
            MEMORY[0x21CEA4360](v55, -1, -1);
          }

          else
          {
          }

          v60 = OUTLINED_FUNCTION_1471();
          v61(v60);
        }

        v18 = v75;
        v3 = v76;
        v20 = v74;
        v21 = v85;
      }

LABEL_27:
      if (v18 == ++v19)
      {
        goto LABEL_30;
      }
    }
  }

  __break(1u);
}

uint64_t sub_2174870C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    sub_217751DE8();
    MEMORY[0x21CEA23B0](a3, a4);
    MEMORY[0x21CEA23B0](93, 0xE100000000000000);
    MEMORY[0x21CEA23B0](91, 0xE100000000000000);

    return a1;
  }

  else
  {
    v6 = a1;
    sub_217751DE8();
  }

  return v6;
}

void sub_217487168(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v3;
  v7 = v3[1];
  v23[0] = a2;
  v23[1] = a3;
  v22[2] = v8;
  v22[3] = v7;
  v22[4] = v23;
  v9 = sub_2172CB6EC(sub_217498E14, v22, v7);
  v11 = v10;
  if (v12)
  {
    if (a1)
    {
      sub_2172C97D8(a2, a3);

      v15 = v3[2];
      v13 = v3 + 2;
      v14 = v15;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v13 = v15;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_217276548(0, *(v14 + 16) + 1, 1);
        v14 = *v13;
      }

      v18 = *(v14 + 16);
      v17 = *(v14 + 24);
      if (v18 >= v17 >> 1)
      {
        sub_217276548(v17 > 1, v18 + 1, 1);
        v14 = *v13;
      }

      *(v14 + 16) = v18 + 1;
      *(v14 + 8 * v18 + 32) = a1;
      *v13 = v14;
      return;
    }

LABEL_16:

    return;
  }

  v19 = v9;

  if (!a1)
  {
    sub_2174974A4(v19, v11);

    sub_217497654(v19);
    goto LABEL_16;
  }

  v20 = v3[2];
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_217492638();
    v20 = v21;
  }

  if ((v19 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v19 < *(v20 + 16))
  {
    *(v20 + 8 * v19 + 32) = a1;

    v3[2] = v20;
    return;
  }

  __break(1u);
}

void sub_2174872F4(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t *a10)
{
  v53 = sub_217751428();
  v16 = *(v53 - 8);
  MEMORY[0x28223BE20](v53);
  v52 = v50 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v51 = v50 - v19;
  if (a5 && (a1 == a4 ? (v20 = a2 == a5) : (v20 = 0), v20 || (sub_217753058() & 1) != 0))
  {
    a1 = 0;
    a2 = 0xE000000000000000;
  }

  else
  {
    sub_217751DE8();
  }

  v21 = sub_21748767C(a8, a9, a1, a2);
  v23 = v22;

  v24 = sub_2171F63F0(a3);
  v29 = MEMORY[0x277D84F90];
  if (!v24)
  {
    goto LABEL_18;
  }

  v30 = v24;
  v54 = MEMORY[0x277D84F90];
  sub_217275C90(0, v24 & ~(v24 >> 63), 0, v25, v26, v27, v28);
  if ((v30 & 0x8000000000000000) == 0)
  {
    v50[0] = v21;
    v50[1] = v23;
    v31 = 0;
    v29 = v54;
    do
    {
      if ((a3 & 0xC000000000000001) != 0)
      {
        v32 = MEMORY[0x21CEA2E30](v31, a3);
      }

      else
      {
        v32 = *(a3 + 8 * v31 + 32);
      }

      v33 = *(v32 + 16);
      v34 = *(v32 + 24);
      sub_217751DE8();

      v54 = v29;
      v40 = *(v29 + 16);
      v39 = *(v29 + 24);
      if (v40 >= v39 >> 1)
      {
        sub_217275C90(v39 > 1, v40 + 1, 1, v35, v36, v37, v38);
        v29 = v54;
      }

      ++v31;
      *(v29 + 16) = v40 + 1;
      v41 = v29 + 16 * v40;
      *(v41 + 32) = v33;
      *(v41 + 40) = v34;
    }

    while (v30 != v31);
LABEL_18:
    sub_2173DAF84(v29);
    v43 = v42;

    v54 = v43;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24C58, &unk_2177677B0);
    sub_217498F2C(&qword_280BE2320, &qword_27CB24C58, &unk_2177677B0);
    sub_217751ED8();

    v44 = v51;
    sub_2177513F8();

    v47 = v52;
    v46 = v53;
    (*(v16 + 16))(v52, v44, v53, v45);
    sub_21770B7A4();
    v48 = *(*a10 + 16);
    sub_21770BAD4(v48);
    (*(v16 + 8))(v44, v46);
    v49 = *a10;
    *(v49 + 16) = v48 + 1;
    (*(v16 + 32))(v49 + ((*(v16 + 80) + 32) & ~*(v16 + 80)) + *(v16 + 72) * v48, v47, v46);
    return;
  }

  __break(1u);
}

uint64_t sub_21748767C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = a1;
  if (!a3 && a4 == 0xE000000000000000 || (sub_217753058() & 1) != 0)
  {
    sub_217751DE8();
  }

  else
  {
    sub_217751DE8();
    MEMORY[0x21CEA23B0](a3, a4);
    MEMORY[0x21CEA23B0](93, 0xE100000000000000);
    MEMORY[0x21CEA23B0](91, 0xE100000000000000);

    return a1;
  }

  return v6;
}

uint64_t sub_21748774C(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v4[10] = 0;
  v4[11] = 0;
  v4[12] = a3;
  v4[13] = a4;
  v6 = a1;
  v7 = a2;
  return AnyLibraryRequestConfigurationParameters.init(filteringOptions:)(&v6);
}

uint64_t sub_217487780(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, unint64_t, uint64_t))
{
  v4 = *(v3 + 8);
  v5 = 256;
  if ((*(v3 + 25) & 1) == 0)
  {
    v5 = 0;
  }

  v6 = v5 & 0xFFFFFFFFFFFFFFFELL | *(v3 + 24) & 1;
  v7 = 0x10000;
  if ((*(v3 + 26) & 1) == 0)
  {
    v7 = 0;
  }

  v8 = 0x1000000;
  if ((*(v3 + 27) & 1) == 0)
  {
    v8 = 0;
  }

  v9 = v6 | v7 | v8;
  v10 = 0x1000000000000;
  if ((*(v3 + 28) & 1) == 0)
  {
    v10 = 0;
  }

  v11 = 0x100000000000000;
  if ((*(v3 + 29) & 1) == 0)
  {
    v11 = 0;
  }

  sub_2173EA4B0(*(v3 + 48), *(v3 + 56), *(v3 + 32), *(v3 + 40), v9 | v10 | v11, 0, a1, a2, v15, a3);
  if (v4 && __OFADD__(v4, 1))
  {
    __break(1u);
  }

  sub_2173EAB38();
  v13 = v12;
  sub_21721D674(v15);
  return v13;
}

void sub_217487880(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, unsigned __int8 a9, uint64_t *a10)
{
  v36 = a8;
  v37 = a7;
  v34 = a6;
  v35 = a9;
  v14 = sub_217751968();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v33 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = MEMORY[0x21CEA3980](v16);
  v19 = *(a5 + 8);
  swift_unknownObjectRetain();
  v19(&v39, a4, a5);
  v43 = v39;
  v44 = v40;
  *&v42[0] = &unk_282960210;
  v49[0] = 4;
  sub_2172B6904(a2, &v43, v42, v49, &v46);
  (*(v15 + 16))(v18, a1, v14);
  v20 = [v34 results];
  v21 = [v20 itemAtIndexPathBlock];

  *(swift_allocObject() + 16) = v21;
  *&v41[0] = 0;
  v39 = 0u;
  v40 = 0u;
  v19(&v43, a4, a5);
  v42[0] = v43;
  v42[1] = v44;
  v49[0] = 1;
  v22 = type metadata accessor for LegacySectionedCollectionBackedPropertyProvider(0);
  swift_allocObject();
  LegacySectionedCollectionBackedPropertyProvider.init(identifierSet:sectionedCollectionMappingItemBlock:existingItem:typeValue:source:requestedRelationships:)();
  *(&v47 + 1) = v22;
  *&v48[0] = &protocol witness table for LegacySectionedCollectionBackedPropertyProvider;
  *&v46 = v23;
  LOBYTE(v39) = v35;
  v24 = v36;
  v25 = v37;
  v26 = *(v36 + 24);
  *(&v44 + 1) = v37;
  v45 = v36;
  __swift_allocate_boxed_opaque_existential_0(&v43);

  v26(&v46, &v39, v25, v24);
  sub_21749A32C(&v43, v42);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB24D20, &unk_21776B0D0);
  if (swift_dynamicCast())
  {
    v46 = v39;
    v47 = v40;
    v48[0] = v41[0];
    *(v48 + 9) = *(v41 + 9);
    sub_217275710(&v46, &v39);
    sub_21770B78C();
    v27 = *(*a10 + 16);
    sub_21770BABC(v27);

    sub_21727576C(&v46);
    v28 = *a10;
    *(v28 + 16) = v27 + 1;
    v29 = (v28 + (v27 << 6));
    v30 = v39;
    v31 = v40;
    v32 = v41[0];
    *(v29 + 73) = *(v41 + 9);
    v29[3] = v31;
    v29[4] = v32;
    v29[2] = v30;
  }

  else
  {

    v40 = 0u;
    memset(v41, 0, 24);
    v39 = 0u;
    BYTE8(v41[1]) = -1;
    sub_2171F0790(&v39, &unk_27CB28AA0, &qword_21775A020);
  }

  __swift_destroy_boxed_opaque_existential_1(&v43);
  objc_autoreleasePoolPop(v38);
}

void sub_217487C30(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, unsigned __int8 a9, uint64_t *a10)
{
  v36 = a8;
  v37 = a7;
  v34 = a6;
  v35 = a9;
  v14 = sub_217751968();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v33 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = MEMORY[0x21CEA3980](v16);
  v19 = *(a5 + 8);
  swift_unknownObjectRetain();
  v19(&v39, a4, a5);
  v44 = v39;
  v45 = v40;
  *&v43[0] = &unk_282960250;
  v51[0] = 4;
  sub_2172B6904(a2, &v44, v43, v51, &v47);
  (*(v15 + 16))(v18, a1, v14);
  v20 = [v34 results];
  v21 = [v20 itemAtIndexPathBlock];

  *(swift_allocObject() + 16) = v21;
  *&v41 = 0;
  v39 = 0u;
  v40 = 0u;
  v19(&v44, a4, a5);
  v43[0] = v44;
  v43[1] = v45;
  v51[0] = 1;
  v22 = type metadata accessor for LegacySectionedCollectionBackedPropertyProvider(0);
  swift_allocObject();
  LegacySectionedCollectionBackedPropertyProvider.init(identifierSet:sectionedCollectionMappingItemBlock:existingItem:typeValue:source:requestedRelationships:)();
  *(&v48 + 1) = v22;
  *&v49 = &protocol witness table for LegacySectionedCollectionBackedPropertyProvider;
  *&v47 = v23;
  LOBYTE(v39) = v35;
  v24 = v36;
  v25 = v37;
  v26 = *(v36 + 24);
  *(&v45 + 1) = v37;
  v46 = v36;
  __swift_allocate_boxed_opaque_existential_0(&v44);

  v26(&v47, &v39, v25, v24);
  sub_21749A32C(&v44, v43);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB24D20, &unk_21776B0D0);
  if (swift_dynamicCast())
  {
    v47 = v39;
    v48 = v40;
    v49 = v41;
    v50 = v42;
    sub_2172757C0(&v47, &v39);
    sub_21770B63C();
    v27 = *(*a10 + 16);
    sub_21770B96C(v27);

    sub_21726B8C4(&v47);
    v28 = *a10;
    *(v28 + 16) = v27 + 1;
    v29 = v28 + 56 * v27;
    v30 = v39;
    v31 = v40;
    v32 = v41;
    *(v29 + 80) = v42;
    *(v29 + 48) = v31;
    *(v29 + 64) = v32;
    *(v29 + 32) = v30;
  }

  else
  {

    v42 = 0;
    v40 = 0u;
    v41 = 0u;
    v39 = 0u;
    sub_2171F0790(&v39, &unk_27CB28A90, &qword_217758F90);
  }

  __swift_destroy_boxed_opaque_existential_1(&v44);
  objc_autoreleasePoolPop(v38);
}

void sub_217487FDC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, unsigned __int8 a9, uint64_t *a10)
{
  v36 = a8;
  v37 = a7;
  v34 = a6;
  v35 = a9;
  v14 = sub_217751968();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v33 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = MEMORY[0x21CEA3980](v16);
  v19 = *(a5 + 8);
  swift_unknownObjectRetain();
  v19(&v39, a4, a5);
  v44 = v39;
  v45 = v40;
  *&v43[0] = &unk_282960290;
  v51[0] = 4;
  sub_2172B6904(a2, &v44, v43, v51, &v47);
  (*(v15 + 16))(v18, a1, v14);
  v20 = [v34 results];
  v21 = [v20 itemAtIndexPathBlock];

  *(swift_allocObject() + 16) = v21;
  *&v41 = 0;
  v39 = 0u;
  v40 = 0u;
  v19(&v44, a4, a5);
  v43[0] = v44;
  v43[1] = v45;
  v51[0] = 1;
  v22 = type metadata accessor for LegacySectionedCollectionBackedPropertyProvider(0);
  swift_allocObject();
  LegacySectionedCollectionBackedPropertyProvider.init(identifierSet:sectionedCollectionMappingItemBlock:existingItem:typeValue:source:requestedRelationships:)();
  *(&v48 + 1) = v22;
  *&v49 = &protocol witness table for LegacySectionedCollectionBackedPropertyProvider;
  *&v47 = v23;
  LOBYTE(v39) = v35;
  v24 = v36;
  v25 = v37;
  v26 = *(v36 + 24);
  *(&v45 + 1) = v37;
  v46 = v36;
  __swift_allocate_boxed_opaque_existential_0(&v44);

  v26(&v47, &v39, v25, v24);
  sub_21749A32C(&v44, v43);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB24D20, &unk_21776B0D0);
  if (swift_dynamicCast())
  {
    v47 = v39;
    v48 = v40;
    v49 = v41;
    v50 = v42;
    sub_217283BAC(&v47, &v39);
    sub_21770B66C();
    v27 = *(*a10 + 16);
    sub_21770B99C(v27);

    sub_217283C08(&v47);
    v28 = *a10;
    *(v28 + 16) = v27 + 1;
    v29 = v28 + 56 * v27;
    v30 = v39;
    v31 = v40;
    v32 = v41;
    *(v29 + 80) = v42;
    *(v29 + 48) = v31;
    *(v29 + 64) = v32;
    *(v29 + 32) = v30;
  }

  else
  {

    v42 = 0;
    v40 = 0u;
    v41 = 0u;
    v39 = 0u;
    sub_2171F0790(&v39, &qword_27CB24550, &qword_217758A58);
  }

  __swift_destroy_boxed_opaque_existential_1(&v44);
  objc_autoreleasePoolPop(v38);
}

void sub_217488388(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, unsigned __int8 a9, uint64_t *a10)
{
  v36 = a8;
  v37 = a7;
  v34 = a6;
  v35 = a9;
  v14 = sub_217751968();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v33 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = MEMORY[0x21CEA3980](v16);
  v19 = *(a5 + 8);
  swift_unknownObjectRetain();
  v19(&v39, a4, a5);
  v44 = v39;
  v45 = v40;
  *&v43[0] = &unk_2829602D0;
  v51[0] = 4;
  sub_2172B6904(a2, &v44, v43, v51, &v47);
  (*(v15 + 16))(v18, a1, v14);
  v20 = [v34 results];
  v21 = [v20 itemAtIndexPathBlock];

  *(swift_allocObject() + 16) = v21;
  *&v41 = 0;
  v39 = 0u;
  v40 = 0u;
  v19(&v44, a4, a5);
  v43[0] = v44;
  v43[1] = v45;
  v51[0] = 1;
  v22 = type metadata accessor for LegacySectionedCollectionBackedPropertyProvider(0);
  swift_allocObject();
  LegacySectionedCollectionBackedPropertyProvider.init(identifierSet:sectionedCollectionMappingItemBlock:existingItem:typeValue:source:requestedRelationships:)();
  *(&v48 + 1) = v22;
  *&v49 = &protocol witness table for LegacySectionedCollectionBackedPropertyProvider;
  *&v47 = v23;
  LOBYTE(v39) = v35;
  v24 = v36;
  v25 = v37;
  v26 = *(v36 + 24);
  *(&v45 + 1) = v37;
  v46 = v36;
  __swift_allocate_boxed_opaque_existential_0(&v44);

  v26(&v47, &v39, v25, v24);
  sub_21749A32C(&v44, v43);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB24D20, &unk_21776B0D0);
  if (swift_dynamicCast())
  {
    v47 = v39;
    v48 = v40;
    v49 = v41;
    v50 = v42;
    sub_21725CF0C(&v47, &v39);
    sub_21770B6E4();
    v27 = *(*a10 + 16);
    sub_21770BA14(v27);

    sub_21725CE44(&v47);
    v28 = *a10;
    *(v28 + 16) = v27 + 1;
    v29 = v28 + 56 * v27;
    v30 = v39;
    v31 = v40;
    v32 = v41;
    *(v29 + 80) = v42;
    *(v29 + 48) = v31;
    *(v29 + 64) = v32;
    *(v29 + 32) = v30;
  }

  else
  {

    v42 = 0;
    v40 = 0u;
    v41 = 0u;
    v39 = 0u;
    sub_2171F0790(&v39, &unk_27CB275E0, &qword_2177589D0);
  }

  __swift_destroy_boxed_opaque_existential_1(&v44);
  objc_autoreleasePoolPop(v38);
}

uint64_t sub_217488734(uint64_t result, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v5 = *(a2 + 16);
    OUTLINED_FUNCTION_784();
    result = v6();
    if (v7)
    {
      v8 = v5;
    }

    else
    {
      v8 = result;
    }

    if ((v8 & 0x8000000000000000) == 0)
    {
      v9 = a4(0);

      return v9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2174887D8(uint64_t a1, void *a2, _BYTE *a3, uint64_t a4, uint64_t a5, uint64_t *a6, void *a7, uint64_t a8, uint64_t a9)
{
  v23 = a7;
  v24 = a8;
  v26 = a6;
  v27 = a3;
  v25 = a9;
  v13 = sub_217751968();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(a5 + 8);
  swift_unknownObjectRetain();
  v17(&v31, a4, a5);
  v37 = v31;
  v38 = v32;
  v39 = v33;
  *&v28 = &unk_282960350;
  v36 = 4;
  sub_2172B6904(a2, &v37, &v28, &v36, &v35);
  (*(v14 + 16))(v16, a1, v13);
  v18 = [v23 results];
  v19 = [v18 itemAtIndexPathBlock];

  *(swift_allocObject() + 16) = v19;
  v33 = &type metadata for MusicVideo;
  v34 = &protocol witness table for MusicVideo;
  *&v31 = swift_allocObject();
  sub_217283BAC(v24, v31 + 16);
  v17(&v37, a4, a5);
  v28 = v37;
  v29 = v38;
  v30 = v39;
  v36 = 1;
  type metadata accessor for LegacySectionedCollectionBackedPropertyProvider(0);
  swift_allocObject();
  sub_217751DE8();
  LegacySectionedCollectionBackedPropertyProvider.init(identifierSet:sectionedCollectionMappingItemBlock:existingItem:typeValue:source:requestedRelationships:)();
  *v26 = v20;

  *v27 = 1;
  return result;
}

uint64_t sub_217488A68(uint64_t a1, void *a2, _BYTE *a3, uint64_t a4, uint64_t a5, uint64_t *a6, void *a7, uint64_t a8, uint64_t a9)
{
  v23 = a7;
  v24 = a8;
  v26 = a6;
  v27 = a3;
  v25 = a9;
  v13 = sub_217751968();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(a5 + 8);
  swift_unknownObjectRetain();
  v17(&v31, a4, a5);
  v37 = v31;
  v38 = v32;
  v39 = v33;
  *&v28 = &unk_282960390;
  v36 = 4;
  sub_2172B6904(a2, &v37, &v28, &v36, &v35);
  (*(v14 + 16))(v16, a1, v13);
  v18 = [v23 results];
  v19 = [v18 itemAtIndexPathBlock];

  *(swift_allocObject() + 16) = v19;
  v33 = &type metadata for Song;
  v34 = &protocol witness table for Song;
  *&v31 = swift_allocObject();
  sub_217283AFC(v24, v31 + 16);
  v17(&v37, a4, a5);
  v28 = v37;
  v29 = v38;
  v30 = v39;
  v36 = 1;
  type metadata accessor for LegacySectionedCollectionBackedPropertyProvider(0);
  swift_allocObject();
  sub_217751DE8();
  LegacySectionedCollectionBackedPropertyProvider.init(identifierSet:sectionedCollectionMappingItemBlock:existingItem:typeValue:source:requestedRelationships:)();
  *v26 = v20;

  *v27 = 1;
  return result;
}

uint64_t sub_217488CF8(uint64_t a1, void *a2, _BYTE *a3, uint64_t a4, uint64_t a5, uint64_t *a6, void *a7, uint64_t a8, uint64_t a9)
{
  v23 = a7;
  v24 = a8;
  v26 = a6;
  v27 = a3;
  v25 = a9;
  v13 = sub_217751968();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(a5 + 8);
  swift_unknownObjectRetain();
  v17(&v31, a4, a5);
  v37 = v31;
  v38 = v32;
  v39 = v33;
  *&v28 = &unk_2829603D0;
  v36 = 4;
  sub_2172B6904(a2, &v37, &v28, &v36, &v35);
  (*(v14 + 16))(v16, a1, v13);
  v18 = [v23 results];
  v19 = [v18 itemAtIndexPathBlock];

  *(swift_allocObject() + 16) = v19;
  v33 = &type metadata for Album;
  v34 = &protocol witness table for Album;
  *&v31 = swift_allocObject();
  sub_21725CF0C(v24, v31 + 16);
  v17(&v37, a4, a5);
  v28 = v37;
  v29 = v38;
  v30 = v39;
  v36 = 1;
  type metadata accessor for LegacySectionedCollectionBackedPropertyProvider(0);
  swift_allocObject();
  sub_217751DE8();
  LegacySectionedCollectionBackedPropertyProvider.init(identifierSet:sectionedCollectionMappingItemBlock:existingItem:typeValue:source:requestedRelationships:)();
  *v26 = v20;

  *v27 = 1;
  return result;
}

uint64_t sub_217488F88(uint64_t a1, void *a2, _BYTE *a3, uint64_t a4, uint64_t a5, uint64_t *a6, void *a7, uint64_t a8, uint64_t a9)
{
  v23 = a7;
  v24 = a8;
  v26 = a6;
  v27 = a3;
  v25 = a9;
  v13 = sub_217751968();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(a5 + 8);
  swift_unknownObjectRetain();
  v17(&v31, a4, a5);
  v37 = v31;
  v38 = v32;
  v39 = v33;
  *&v28 = &unk_282960410;
  v36 = 4;
  sub_2172B6904(a2, &v37, &v28, &v36, &v35);
  (*(v14 + 16))(v16, a1, v13);
  v18 = [v23 results];
  v19 = [v18 itemAtIndexPathBlock];

  *(swift_allocObject() + 16) = v19;
  v33 = &type metadata for Genre;
  v34 = &protocol witness table for Genre;
  *&v31 = swift_allocObject();
  sub_217284130(v24, v31 + 16);
  v17(&v37, a4, a5);
  v28 = v37;
  v29 = v38;
  v30 = v39;
  v36 = 1;
  type metadata accessor for LegacySectionedCollectionBackedPropertyProvider(0);
  swift_allocObject();
  sub_217751DE8();
  LegacySectionedCollectionBackedPropertyProvider.init(identifierSet:sectionedCollectionMappingItemBlock:existingItem:typeValue:source:requestedRelationships:)();
  *v26 = v20;

  *v27 = 1;
  return result;
}

uint64_t sub_217489218(uint64_t a1, void *a2, _BYTE *a3, uint64_t a4, uint64_t a5, uint64_t *a6, void *a7, uint64_t a8, uint64_t a9)
{
  v23 = a7;
  v24 = a8;
  v26 = a6;
  v27 = a3;
  v25 = a9;
  v13 = sub_217751968();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(a5 + 8);
  swift_unknownObjectRetain();
  v17(&v31, a4, a5);
  v37 = v31;
  v38 = v32;
  v39 = v33;
  *&v28 = &unk_282960450;
  v36 = 4;
  sub_2172B6904(a2, &v37, &v28, &v36, &v35);
  (*(v14 + 16))(v16, a1, v13);
  v18 = [v23 results];
  v19 = [v18 itemAtIndexPathBlock];

  *(swift_allocObject() + 16) = v19;
  v33 = &type metadata for Track;
  v34 = &protocol witness table for Track;
  *&v31 = swift_allocObject();
  sub_217275710(v24, v31 + 16);
  v17(&v37, a4, a5);
  v28 = v37;
  v29 = v38;
  v30 = v39;
  v36 = 1;
  type metadata accessor for LegacySectionedCollectionBackedPropertyProvider(0);
  swift_allocObject();
  sub_217751DE8();
  LegacySectionedCollectionBackedPropertyProvider.init(identifierSet:sectionedCollectionMappingItemBlock:existingItem:typeValue:source:requestedRelationships:)();
  *v26 = v20;

  *v27 = 1;
  return result;
}

uint64_t sub_2174894A8(uint64_t a1, void *a2, _BYTE *a3, uint64_t a4, uint64_t a5, uint64_t *a6, void *a7, uint64_t a8, uint64_t a9)
{
  v23 = a7;
  v24 = a8;
  v26 = a6;
  v27 = a3;
  v25 = a9;
  v13 = sub_217751968();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(a5 + 8);
  swift_unknownObjectRetain();
  v17(&v31, a4, a5);
  v37 = v31;
  v38 = v32;
  v39 = v33;
  *&v28 = &unk_282960490;
  v36 = 4;
  sub_2172B6904(a2, &v37, &v28, &v36, &v35);
  (*(v14 + 16))(v16, a1, v13);
  v18 = [v23 results];
  v19 = [v18 itemAtIndexPathBlock];

  *(swift_allocObject() + 16) = v19;
  v33 = &type metadata for Artist;
  v34 = &protocol witness table for Artist;
  *&v31 = swift_allocObject();
  sub_21725CF68(v24, v31 + 16);
  v17(&v37, a4, a5);
  v28 = v37;
  v29 = v38;
  v30 = v39;
  v36 = 1;
  type metadata accessor for LegacySectionedCollectionBackedPropertyProvider(0);
  swift_allocObject();
  sub_217751DE8();
  LegacySectionedCollectionBackedPropertyProvider.init(identifierSet:sectionedCollectionMappingItemBlock:existingItem:typeValue:source:requestedRelationships:)();
  *v26 = v20;

  *v27 = 1;
  return result;
}

uint64_t sub_217489738(uint64_t a1, void *a2, _BYTE *a3, uint64_t a4, uint64_t a5, uint64_t *a6, void *a7, uint64_t a8, uint64_t a9)
{
  v23 = a7;
  v24 = a8;
  v26 = a6;
  v27 = a3;
  v25 = a9;
  v13 = sub_217751968();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(a5 + 8);
  swift_unknownObjectRetain();
  v17(&v31, a4, a5);
  v37 = v31;
  v38 = v32;
  v39 = v33;
  *&v28 = &unk_2829604D0;
  v36 = 4;
  sub_2172B6904(a2, &v37, &v28, &v36, &v35);
  (*(v14 + 16))(v16, a1, v13);
  v18 = [v23 results];
  v19 = [v18 itemAtIndexPathBlock];

  *(swift_allocObject() + 16) = v19;
  v33 = &type metadata for Playlist.Entry;
  v34 = &protocol witness table for Playlist.Entry;
  *&v31 = swift_allocObject();
  sub_217275858(v24, v31 + 16);
  v17(&v37, a4, a5);
  v28 = v37;
  v29 = v38;
  v30 = v39;
  v36 = 1;
  type metadata accessor for LegacySectionedCollectionBackedPropertyProvider(0);
  swift_allocObject();
  sub_217751DE8();
  LegacySectionedCollectionBackedPropertyProvider.init(identifierSet:sectionedCollectionMappingItemBlock:existingItem:typeValue:source:requestedRelationships:)();
  *v26 = v20;

  *v27 = 1;
  return result;
}

uint64_t sub_2174899C8(uint64_t a1, void *a2, _BYTE *a3, uint64_t a4, uint64_t a5, uint64_t *a6, void *a7, uint64_t a8, uint64_t a9)
{
  v23 = a7;
  v24 = a8;
  v26 = a6;
  v27 = a3;
  v25 = a9;
  v13 = sub_217751968();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(a5 + 8);
  swift_unknownObjectRetain();
  v17(&v31, a4, a5);
  v37 = v31;
  v38 = v32;
  v39 = v33;
  *&v28 = &unk_282960510;
  v36 = 4;
  sub_2172B6904(a2, &v37, &v28, &v36, &v35);
  (*(v14 + 16))(v16, a1, v13);
  v18 = [v23 results];
  v19 = [v18 itemAtIndexPathBlock];

  *(swift_allocObject() + 16) = v19;
  v33 = &type metadata for Playlist;
  v34 = &protocol witness table for Playlist;
  *&v31 = swift_allocObject();
  sub_2172757C0(v24, v31 + 16);
  v17(&v37, a4, a5);
  v28 = v37;
  v29 = v38;
  v30 = v39;
  v36 = 1;
  type metadata accessor for LegacySectionedCollectionBackedPropertyProvider(0);
  swift_allocObject();
  sub_217751DE8();
  LegacySectionedCollectionBackedPropertyProvider.init(identifierSet:sectionedCollectionMappingItemBlock:existingItem:typeValue:source:requestedRelationships:)();
  *v26 = v20;

  *v27 = 1;
  return result;
}

uint64_t sub_217489C58()
{
  OUTLINED_FUNCTION_1303();
  OUTLINED_FUNCTION_6();
  swift_beginAccess();
  if (!*(*(v0 + 40) + 16))
  {
    return 0;
  }

  OUTLINED_FUNCTION_1439();
  v48 = v2;
  v50 = MEMORY[0x277D84F90];
  v46 = v3;
  while (1)
  {
    v4 = ~v1;
    v5 = v3 + 16 * v1;
    v6 = v2 - v1;
    if (v2 == v1)
    {
      break;
    }

    while (1)
    {
      if (*(*(v0 + 40) + 16))
      {
        sub_217751DE8();
        sub_217751DE8();
        v7 = OUTLINED_FUNCTION_83();
        v9 = sub_21763246C(v7, v8);
        if (v10)
        {
          OUTLINED_FUNCTION_1506(v9, v10, v11, v12, v13, v14, v15, v16, v44);
        }

        else
        {
          OUTLINED_FUNCTION_1469();
        }
      }

      else
      {
        OUTLINED_FUNCTION_1504();
      }

      sub_2171F0790(v52, &unk_27CB27760, &unk_21775A2D0);
      OUTLINED_FUNCTION_1483();

      if (v56)
      {
        break;
      }

      OUTLINED_FUNCTION_719();
      sub_2171F0790(v25, v26, v27);
      --v4;
      v5 += 16;
      if (!--v6)
      {
        return v50;
      }
    }

    OUTLINED_FUNCTION_1440(v17, v18, v19, v20, v21, v22, v23, v24, v44, v46, v48, v50, *v52, *&v52[8], *&v52[16], *&v52[24], *&v52[32], *&v52[40], v53, v54, *v55, v56, v57, v58, v59);
    v53 = v60;
    v28 = v51;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v42 = OUTLINED_FUNCTION_87_11();
      isUniquelyReferenced_nonNull_native = (v45)(v42);
      v28 = isUniquelyReferenced_nonNull_native;
    }

    v37 = *(v28 + 16);
    if (v37 >= *(v28 + 24) >> 1)
    {
      OUTLINED_FUNCTION_722();
      isUniquelyReferenced_nonNull_native = v45();
      v28 = isUniquelyReferenced_nonNull_native;
    }

    *(v28 + 16) = v37 + 1;
    v38 = OUTLINED_FUNCTION_1465(isUniquelyReferenced_nonNull_native, v30, v31, v32, v33, v34, v35, v36, v45, v47, v49, v28, *v52);
    *(v39 + 80) = v53;
    OUTLINED_FUNCTION_1468(v38, v40, v41);
  }

  return v50;
}

uint64_t sub_217489E20(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  os_unfair_lock_assert_owner(*(*(v3 + 56) + 16));
  swift_beginAccess();
  if (!*(*(v3 + 40) + 16))
  {
    return 0;
  }

  v5 = 0;
  v6 = *(a2 + 16);
  v7 = a2 + 40;
  v28 = MEMORY[0x277D84F90];
  v26 = a2 + 40;
  for (i = v6; ; v6 = i)
  {
    v8 = ~v5;
    v9 = (v7 + 16 * v5);
    v10 = v6 - v5;
    if (v6 == v5)
    {
      break;
    }

    while (1)
    {
      v11 = *v9;
      v12 = *(v3 + 40);
      if (*(v12 + 16))
      {
        v13 = *(v9 - 1);
        sub_217751DE8();
        sub_217751DE8();
        v14 = sub_21763246C(v13, v11);
        if (v15)
        {
          sub_217284130(*(v12 + 56) + 56 * v14, &v29);
        }

        else
        {
          v32 = 0;
          v30 = 0u;
          v31 = 0u;
          v29 = 0u;
        }
      }

      else
      {
        v32 = 0;
        v30 = 0u;
        v31 = 0u;
        v29 = 0u;
        sub_217751DE8();
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB27760, &unk_21775A2D0);
      if ((swift_dynamicCast() & 1) == 0)
      {
        v36 = 0;
        v34 = 0u;
        v35 = 0u;
        v33 = 0u;
      }

      if (*(&v33 + 1))
      {
        break;
      }

      sub_2171F0790(&v33, &unk_27CB27760, &unk_21775A2D0);
      --v8;
      v9 += 2;
      if (!--v10)
      {
        return v28;
      }
    }

    v29 = v33;
    v30 = v34;
    v31 = v35;
    v32 = v36;
    v16 = v28;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_2172B2848(0, *(v28 + 16) + 1, 1, v28);
      v16 = v23;
    }

    v7 = v26;
    v18 = *(v16 + 16);
    v17 = *(v16 + 24);
    if (v18 >= v17 >> 1)
    {
      sub_2172B2848(v17 > 1, v18 + 1, 1, v16);
      v16 = v24;
    }

    v5 = -v8;
    *(v16 + 16) = v18 + 1;
    v28 = v16;
    v19 = v16 + 56 * v18;
    v20 = v29;
    v21 = v30;
    v22 = v31;
    *(v19 + 80) = v32;
    *(v19 + 48) = v21;
    *(v19 + 64) = v22;
    *(v19 + 32) = v20;
  }

  return v28;
}

uint64_t sub_21748A09C()
{
  OUTLINED_FUNCTION_1303();
  OUTLINED_FUNCTION_6();
  swift_beginAccess();
  if (!*(*(v0 + 40) + 16))
  {
    return 0;
  }

  OUTLINED_FUNCTION_1439();
  v48 = v2;
  v50 = MEMORY[0x277D84F90];
  v46 = v3;
  while (1)
  {
    v4 = ~v1;
    v5 = v3 + 16 * v1;
    v6 = v2 - v1;
    if (v2 == v1)
    {
      break;
    }

    while (1)
    {
      if (*(*(v0 + 40) + 16))
      {
        sub_217751DE8();
        sub_217751DE8();
        v7 = OUTLINED_FUNCTION_83();
        v9 = sub_21763246C(v7, v8);
        if (v10)
        {
          OUTLINED_FUNCTION_1506(v9, v10, v11, v12, v13, v14, v15, v16, v44);
        }

        else
        {
          OUTLINED_FUNCTION_1469();
        }
      }

      else
      {
        OUTLINED_FUNCTION_1504();
      }

      sub_2171F0790(&v52, &unk_27CB27760, &unk_21775A2D0);
      OUTLINED_FUNCTION_1483();
      v61[24] = -1;

      if (v61[24] != 255)
      {
        break;
      }

      OUTLINED_FUNCTION_719();
      sub_2171F0790(v25, v26, v27);
      --v4;
      v5 += 16;
      if (!--v6)
      {
        return v50;
      }
    }

    OUTLINED_FUNCTION_1440(v17, v18, v19, v20, v21, v22, v23, v24, v44, v46, v48, v50, v52, *(&v52 + 1), v53, v54, v55, *v56, *&v56[8], *&v56[16], v57, v58, v59, v60, *v61);
    *&v56[1] = *&v61[9];
    v28 = v51;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v42 = OUTLINED_FUNCTION_87_11();
      isUniquelyReferenced_nonNull_native = (v45)(v42);
      v28 = isUniquelyReferenced_nonNull_native;
    }

    v37 = *(v28 + 16);
    if (v37 >= *(v28 + 24) >> 1)
    {
      OUTLINED_FUNCTION_722();
      isUniquelyReferenced_nonNull_native = v45();
      v28 = isUniquelyReferenced_nonNull_native;
    }

    *(v28 + 16) = v37 + 1;
    v38 = OUTLINED_FUNCTION_1465(isUniquelyReferenced_nonNull_native, v30, v31, v32, v33, v34, v35, v36, v45, v47, v49, v28, v52);
    *(v39 + 73) = *&v56[1];
    OUTLINED_FUNCTION_1468(v38, v40, v41);
  }

  return v50;
}

uint64_t sub_21748A26C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[62] = a4;
  v5[63] = v4;
  v5[60] = a2;
  v5[61] = a3;
  return MEMORY[0x2822009F8](sub_21748A290, 0, 0);
}

uint64_t sub_21748A674()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v5 = v4;
  *(v6 + 544) = v0;

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_21748AA5C()
{
  OUTLINED_FUNCTION_10();

  OUTLINED_FUNCTION_20_0();

  return v0();
}

uint64_t sub_21748AAC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[86] = v4;
  v5[85] = a4;
  v5[84] = a3;
  v5[83] = a2;
  return MEMORY[0x2822009F8](sub_21748AAF0, 0, 0);
}

uint64_t sub_21748AFEC()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v5 = v4;
  *(v6 + 728) = v0;

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_21748B4C0()
{
  OUTLINED_FUNCTION_10();

  OUTLINED_FUNCTION_20_0();

  return v0();
}

uint64_t sub_21748B528(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[62] = a4;
  v5[63] = v4;
  v5[60] = a2;
  v5[61] = a3;
  return MEMORY[0x2822009F8](sub_21748B54C, 0, 0);
}

uint64_t sub_21748B930()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v5 = v4;
  *(v6 + 544) = v0;

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_21748BD18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[62] = a4;
  v5[63] = v4;
  v5[60] = a2;
  v5[61] = a3;
  return MEMORY[0x2822009F8](sub_21748BD3C, 0, 0);
}

uint64_t sub_21748C120()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v5 = v4;
  *(v6 + 544) = v0;

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_21748C508(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[62] = a4;
  v5[63] = v4;
  v5[60] = a2;
  v5[61] = a3;
  return MEMORY[0x2822009F8](sub_21748C52C, 0, 0);
}

uint64_t sub_21748C910()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v5 = v4;
  *(v6 + 544) = v0;

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_21748CCF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[62] = a4;
  v5[63] = v4;
  v5[60] = a2;
  v5[61] = a3;
  return MEMORY[0x2822009F8](sub_21748CD1C, 0, 0);
}

uint64_t sub_21748D0E4()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v5 = v4;
  *(v6 + 544) = v0;

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_21748D4CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[86] = v4;
  v5[85] = a4;
  v5[84] = a3;
  v5[83] = a2;
  return MEMORY[0x2822009F8](sub_21748D4F8, 0, 0);
}

uint64_t sub_21748D9F4()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v5 = v4;
  *(v6 + 728) = v0;

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_21748DEC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[62] = a4;
  v5[63] = v4;
  v5[60] = a2;
  v5[61] = a3;
  return MEMORY[0x2822009F8](sub_21748DEEC, 0, 0);
}

uint64_t sub_21748E2D0()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v5 = v4;
  *(v6 + 544) = v0;

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_21748E6B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[62] = a4;
  v5[63] = v4;
  v5[60] = a2;
  v5[61] = a3;
  return MEMORY[0x2822009F8](sub_21748E6DC, 0, 0);
}

uint64_t sub_21748EAC0()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v5 = v4;
  *(v6 + 544) = v0;

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_21748EEA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[62] = a4;
  v5[63] = v4;
  v5[60] = a2;
  v5[61] = a3;
  return MEMORY[0x2822009F8](sub_21748EECC, 0, 0);
}

uint64_t sub_21748F2B0()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v5 = v4;
  *(v6 + 544) = v0;

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_21748F698(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[86] = v4;
  v5[85] = a4;
  v5[84] = a3;
  v5[83] = a2;
  return MEMORY[0x2822009F8](sub_21748F6C4, 0, 0);
}

uint64_t sub_21748FBC0()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v5 = v4;
  *(v6 + 728) = v0;

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_217490094(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[62] = a4;
  v5[63] = v4;
  v5[60] = a2;
  v5[61] = a3;
  return MEMORY[0x2822009F8](sub_2174900B8, 0, 0);
}

uint64_t sub_21749049C()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v5 = v4;
  *(v6 + 544) = v0;

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_217490884(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[62] = a4;
  v5[63] = v4;
  v5[60] = a2;
  v5[61] = a3;
  return MEMORY[0x2822009F8](sub_2174908A8, 0, 0);
}

uint64_t sub_217490C8C()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v5 = v4;
  *(v6 + 544) = v0;

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_217491074(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[62] = a4;
  v5[63] = v4;
  v5[60] = a2;
  v5[61] = a3;
  return MEMORY[0x2822009F8](sub_217491098, 0, 0);
}

uint64_t sub_21749147C()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  OUTLINED_FUNCTION_13_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v5 = v4;
  *(v6 + 544) = v0;

  OUTLINED_FUNCTION_35_1();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

double sub_217491864(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  sub_217732098(a2);
  v8 = sub_217489E20(a4, a5);
  v9 = MEMORY[0x277D84F90];
  if (v8)
  {
    v9 = v8;
  }

  *a3 = v9;
}

double sub_2174918D8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t (*a9)(uint64_t))
{
  sub_217732098(a2);
  v10 = OUTLINED_FUNCTION_86();
  v11 = a9(v10);
  v12 = MEMORY[0x277D84F90];
  if (v11)
  {
    v12 = v11;
  }

  *a3 = v12;
}

uint64_t sub_217491978(void *a1, uint64_t a2, char a3, uint64_t a4, char a5)
{
  type metadata accessor for UnfairLock();
  OUTLINED_FUNCTION_37_3();
  v11 = swift_allocObject();
  v12 = swift_slowAlloc();
  *(v11 + 16) = v12;
  *v12 = 0;
  *(v5 + 64) = v11;
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  *(v5 + 32) = a3 & 1;
  *(v5 + 40) = a4;
  *(v5 + 48) = a5;
  v13 = a1;
  sub_2173EB3A4(v13, a2, a3 & 1, &v28);
  OUTLINED_FUNCTION_1170(v14, v15, v16, v17, v18, v19, v20, v21, v22, v28, v23, v29, v30);
  v24 = OUTLINED_FUNCTION_889();
  v31 = -1;
  if (a3)
  {
    v25 = [v13 totalItemCount];
  }

  else
  {
    v25 = [v13 numberOfItemsInSection_];
  }

  v26 = sub_217491B98(&v28, v25);

  *(v5 + 56) = v26;
  return v5;
}

uint64_t sub_217491B98(uint64_t result, uint64_t a2)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v2 = a2;
    v3 = result;
    if (a2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB28AA0, &qword_21775A020);
      v4 = sub_217752348();
      *(v4 + 16) = v2;
      v5 = v4 + 32;
      do
      {
        sub_2171F0688(v3, v5, &unk_27CB28AA0, &qword_21775A020);
        v5 += 64;
        --v2;
      }

      while (v2);
    }

    else
    {
      v4 = MEMORY[0x277D84F90];
    }

    sub_2171F0790(v3, &unk_27CB28AA0, &qword_21775A020);
    return v4;
  }

  return result;
}

void sub_217491C54(uint64_t a1, uint64_t a2)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v2 = a2;
    if (a2)
    {
      v3 = OUTLINED_FUNCTION_56_0();
      __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
      v5 = sub_217752348();
      *(v5 + 16) = v2;
      v6 = v5 + 32;
      do
      {
        OUTLINED_FUNCTION_148();
        OUTLINED_FUNCTION_742();
        sub_2171F0688(v7, v8, v9, v10);
        v6 += 56;
        --v2;
      }

      while (v2);
    }

    OUTLINED_FUNCTION_709();
    sub_2171F0790(v11, v12, v13);
  }
}

uint64_t sub_217491CF0()
{

  sub_217586944(v1, v0, v3);

  return sub_2171F0790(v3, &unk_27CB28AA0, &qword_21775A020);
}

uint64_t sub_217491D60()
{
  OUTLINED_FUNCTION_1348();

  v3(v6, v4, v1);

  return sub_2171F0790(v6, v2, v0);
}

id sub_217491DD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_217752288();
  OUTLINED_FUNCTION_967();

  v7 = sub_217751F18();
  v8 = [v4 initWithKeys:v5 value:v7 type:{a4, }];

  return v8;
}

id sub_217491E6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, double a8)
{
  if (a1)
  {
    sub_217215924(0, &qword_280BE22D8, off_278228D58);
    v12 = sub_217752288();

    if (a3)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v12 = 0;
    if (a3)
    {
LABEL_3:
      v13 = sub_217751F18();

      if (a5)
      {
        goto LABEL_4;
      }

LABEL_8:
      v14 = 0;
      if (a7)
      {
        goto LABEL_5;
      }

LABEL_9:
      v15 = 0;
      goto LABEL_10;
    }
  }

  v13 = 0;
  if (!a5)
  {
    goto LABEL_8;
  }

LABEL_4:
  v14 = sub_217751F18();

  if (!a7)
  {
    goto LABEL_9;
  }

LABEL_5:
  v15 = sub_217751F18();

LABEL_10:
  v16 = [v8 initWithPlaylistEntries:v12 playlistName:v13 playlistDescription:v14 authorDisplayName:{v15, a8}];

  return v16;
}

id sub_217491FA4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9)
{
  if (a2)
  {
    sub_217215924(0, &qword_280BE22D8, off_278228D58);
    v14 = sub_217752288();

    if (a4)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v14 = 0;
    if (a4)
    {
LABEL_3:
      v15 = sub_217751F18();

      if (a6)
      {
        goto LABEL_4;
      }

LABEL_8:
      v16 = 0;
      if (a8)
      {
        goto LABEL_5;
      }

LABEL_9:
      v17 = 0;
      goto LABEL_10;
    }
  }

  v15 = 0;
  if (!a6)
  {
    goto LABEL_8;
  }

LABEL_4:
  v16 = sub_217751F18();

  if (!a8)
  {
    goto LABEL_9;
  }

LABEL_5:
  v17 = sub_217751F18();

LABEL_10:
  v18 = [v9 initWithPlaylist:a1 playlistEntries:v14 playlistName:v15 playlistDescription:v16 authorDisplayName:{v17, a9}];

  return v18;
}

id sub_2174920E8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, void *a13)
{
  v15 = sub_217752288();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB24F40, &unk_21775A460);
  v16 = sub_217752288();

  sub_217215924(0, &qword_280BE84A0, 0x277CCAC98);
  v17 = sub_217752288();

  if (a7)
  {
    OUTLINED_FUNCTION_178_0();
    v18 = sub_217751F18();
  }

  else
  {
    v18 = 0;
  }

  sub_217215924(0, &unk_280BE8368, off_278228D50);
  OUTLINED_FUNCTION_164_4();
  v19 = sub_217752288();
  v20 = [v23 initWithLegacyModelObjectType:a1 itemKind:a2 allowedItemIdentifiers:v15 allowedItemIdentifierSets:v16 itemSortDescriptors:v17 itemFilterText:v18 itemPropertyFilters: range:v19 filteringOptions:a9 mediaLibrary:{a10, a11 & 0x101010101010101, a12 & 1, a13}];

  return v20;
}

uint64_t sub_2174922AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a1 == a4 && a2 == a5)
  {
    return 1;
  }

  else
  {
    return sub_217753058() & 1;
  }
}

uint64_t sub_2174922F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6[1] = a2;
  v5[1] = a4;
  v6[0] = a1;
  v5[0] = a3;
  return static MusicItemDataSource.== infix(_:_:)(v6, v5) & 1;
}

uint64_t sub_21749264C(uint64_t result, uint64_t a2)
{
  if (*(a2 + 16) < result)
  {
    __break(1u);
  }

  else if ((result & 0x8000000000000000) == 0)
  {
  }

  __break(1u);
  return result;
}

void sub_2174926AC(uint64_t a1)
{
  v30 = a1 + 64;
  v2 = -1 << *(a1 + 32);
  if (-v2 < 64)
  {
    v3 = ~(-1 << -v2);
  }

  else
  {
    v3 = -1;
  }

  v4 = v3 & *(a1 + 64);
  v29 = (63 - v2) >> 6;
  sub_217751DE8();
  v28 = 0;
  v5 = 0;
  v6 = 0;
  while (2)
  {
    v7 = 0;
LABEL_6:
    while (v5)
    {
      v8 = *(v5 + 16);
      if (v7 == v8)
      {
        break;
      }

      if (v7 >= v8)
      {
        __break(1u);
        goto LABEL_34;
      }

      v9 = (v5 + 32 + 16 * v7);
      v11 = *v9;
      v10 = v9[1];
      ++v7;
      v13 = *v1;
      v12 = v1[1];
      v14 = *(v12 + 16);
      if (!*v1)
      {
        v17 = (v12 + 40);
        v18 = v14 + 1;
        while (--v18)
        {
          v19 = v17 + 2;
          if (*(v17 - 1) != v11 || *v17 != v10)
          {
            v21 = sub_217753058();
            v17 = v19;
            if ((v21 & 1) == 0)
            {
              continue;
            }
          }

          goto LABEL_6;
        }

        sub_217751DE8();
LABEL_21:
        sub_2172C97D8(v11, v10);
        goto LABEL_22;
      }

      sub_217751DE8();

      sub_2172CA228(v11, v10, v12 + 32, v14, (v13 + 16));
      v16 = v15;

      if (v16)
      {
        goto LABEL_21;
      }

LABEL_22:
    }

    if (v4)
    {
      v22 = v6;
LABEL_29:
      v23 = __clz(__rbit64(v4));
      v4 &= v4 - 1;
      v24 = (*(a1 + 56) + ((v22 << 10) | (16 * v23)));
      v25 = *v24;
      v26 = v24[1];

      sub_217498E38(v28, v5);
      v28 = v25;
      v5 = v26;
      continue;
    }

    break;
  }

  while (1)
  {
    v22 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      break;
    }

    if (v22 >= v29)
    {
      sub_2172303F0(a1);

      sub_217498E38(v28, v5);
      return;
    }

    v4 = *(v30 + 8 * v22);
    ++v6;
    if (v4)
    {
      v6 = v22;
      goto LABEL_29;
    }
  }

LABEL_34:
  __break(1u);
}

uint64_t sub_2174928EC(uint64_t a1)
{
  v2 = MEMORY[0x277D84F90];
  v19 = MEMORY[0x277D84F90];
  v3 = *(a1 + 16);
  sub_217497354(v3, 0, sub_217545658, sub_2172C9C58, sub_2172CB704);
  sub_217276548(0, v3, 0);
  v4 = 0;
  v5 = v2;
  v6 = *(a1 + 16);
  v7 = a1;
  v18 = a1 + 32;
  while (1)
  {
    if (v4 == v6)
    {

      return 0;
    }

    if (v4 >= *(v7 + 16))
    {
      break;
    }

    v8 = (v18 + 24 * v4);
    v10 = *v8;
    v9 = v8[1];
    v11 = v8[2];
    v12 = (v19 + 40);
    v13 = *(v19 + 16) + 1;
    while (--v13)
    {
      if (*(v12 - 1) != v10 || *v12 != v9)
      {
        v12 += 2;
        if ((sub_217753058() & 1) == 0)
        {
          continue;
        }
      }

      goto LABEL_17;
    }

    sub_217751DE8();
    sub_217751DE8();
    sub_2172C97D8(v10, v9);
    v16 = *(v5 + 16);
    v15 = *(v5 + 24);
    if (v16 >= v15 >> 1)
    {
      sub_217276548(v15 > 1, v16 + 1, 1);
    }

    ++v4;
    *(v5 + 16) = v16 + 1;
    *(v5 + 8 * v16 + 32) = v11;
  }

  __break(1u);
LABEL_17:
  sub_217751DE8();
  result = sub_217751DE8();
  __break(1u);
  return result;
}

void sub_217492B20()
{
  OUTLINED_FUNCTION_133_7();
  v1 = v0;
  v2 = MEMORY[0x277D84F90];
  v24 = MEMORY[0x277D84F90];
  sub_217497354(*(v0 + 16), 0, sub_217545670, sub_2172C9C88, sub_2172CB704);
  v23 = v2;
  v3 = OUTLINED_FUNCTION_1352();
  sub_2172768E8(v3, v4, v5);
  v6 = 0;
  v22 = *(v1 + 16);
  v21 = v1 + 32;
  while (1)
  {
    if (v6 == v22)
    {
LABEL_16:

      OUTLINED_FUNCTION_132_5();
      return;
    }

    OUTLINED_FUNCTION_833();
    if (v7)
    {
      break;
    }

    v8 = (v21 + 40 * v6);
    v10 = *v8;
    v9 = v8[1];
    v11 = v8[3];
    v12 = v8[4];
    sub_217751DE8();

    if (!v9)
    {
      goto LABEL_16;
    }

    v16 = (v24 + 40);
    v17 = *(v24 + 16) + 1;
    while (--v17)
    {
      v18 = *(v16 - 1);
      v19 = *v16;
      if (v18 != v10 || v9 != v19)
      {
        v16 += 3;
        if ((OUTLINED_FUNCTION_1407(v18, v19, v10) & 1) == 0)
        {
          continue;
        }
      }

      goto LABEL_18;
    }

    OUTLINED_FUNCTION_972();
    sub_2172C9A08();
    v14 = *(v23 + 16);
    v13 = *(v23 + 24);
    if (v14 >= v13 >> 1)
    {
      sub_2172768E8(v13 > 1, v14 + 1, 1);
    }

    ++v6;
    *(v23 + 16) = v14 + 1;
    v15 = v23 + 16 * v14;
    *(v15 + 32) = v11;
    *(v15 + 40) = v12;
  }

  __break(1u);
LABEL_18:
  __break(1u);
}

void sub_217492D1C(uint64_t a1)
{
  v2 = MEMORY[0x277D84F90];
  v35 = 0;
  v36 = MEMORY[0x277D84F90];
  v3 = *(a1 + 16);
  sub_217497354(v3, 0, sub_217545688, sub_2172C9C70, sub_2172CB704);
  v34 = v2;
  sub_217276908(0, v3, 0);
  v4 = 0;
  v5 = v2;
  v24 = a1;
  v22 = a1 + 32;
  v23 = *(a1 + 16);
  while (1)
  {
    if (v4 == v23)
    {

      return;
    }

    if (v4 >= *(v24 + 16))
    {
      break;
    }

    sub_2171F0688(v22 + 72 * v4, v29, &qword_27CB27950, &qword_21776B4C0);
    v7 = v29[0];
    v6 = v29[1];
    v28 = v33;
    v27[1] = v31;
    v27[2] = v32;
    v27[0] = v30;
    v8 = v35;
    v9 = v36;
    v10 = *(v36 + 16);
    if (v35)
    {

      sub_2172CA228(v7, v6, v9 + 32, v10, (v8 + 16));
      v12 = v11;

      if ((v12 & 1) == 0)
      {
        goto LABEL_21;
      }
    }

    else
    {
      v13 = (v36 + 40);
      v14 = v10 + 1;
      while (--v14)
      {
        if (*(v13 - 1) != v7 || *v13 != v6)
        {
          v13 += 2;
          if ((sub_217753058() & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_21;
      }
    }

    sub_2172C98F0(v7, v6);
    sub_2171F0688(v27, v25, &qword_27CB24550, &qword_217758A58);
    v34 = v5;
    v17 = *(v5 + 16);
    v16 = *(v5 + 24);
    if (v17 >= v16 >> 1)
    {
      sub_217276908(v16 > 1, v17 + 1, 1);

      v5 = v34;
    }

    else
    {
    }

    ++v4;
    sub_2171F0790(v27, &qword_27CB24550, &qword_217758A58);
    *(v5 + 16) = v17 + 1;
    v18 = v5 + 56 * v17;
    v19 = v25[2];
    v20 = v25[0];
    v21 = v25[1];
    *(v18 + 80) = v26;
    *(v18 + 48) = v21;
    *(v18 + 64) = v19;
    *(v18 + 32) = v20;
  }

  __break(1u);
LABEL_21:
  __break(1u);
}

void sub_217492FAC(uint64_t a1)
{
  v2 = MEMORY[0x277D84F90];
  v26 = 0;
  v27 = MEMORY[0x277D84F90];
  v3 = *(a1 + 16);
  sub_217497354(v3, 0, sub_217545688, sub_2172C9C70, sub_2172CB704);
  v25 = v2;
  sub_217276928(0, v3, 0);
  v4 = 0;
  v5 = v2;
  v19 = a1 + 32;
  v20 = a1;
  v6 = *(a1 + 16);
  while (1)
  {
    if (v4 == v6)
    {

      return;
    }

    if (v4 >= *(v20 + 16))
    {
      break;
    }

    sub_2171F0688(v19 + 88 * v4, v23, &qword_27CB27960, &qword_21776B4D0);
    v8 = v23[0];
    v7 = v23[1];
    memcpy(__dst, v24, 0x41uLL);
    v9 = v26;
    v10 = v27;
    v11 = *(v27 + 16);
    if (v26)
    {

      sub_2172CA228(v8, v7, v10 + 32, v11, (v9 + 16));
      v13 = v12;

      if ((v13 & 1) == 0)
      {
        goto LABEL_21;
      }
    }

    else
    {
      v14 = (v27 + 40);
      v15 = v11 + 1;
      while (--v15)
      {
        if (*(v14 - 1) != v8 || *v14 != v7)
        {
          v14 += 2;
          if ((sub_217753058() & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_21;
      }
    }

    sub_2172C98F0(v8, v7);
    sub_2171F0688(__dst, __src, &qword_27CB24560, &unk_2177A07F0);
    v25 = v5;
    v18 = *(v5 + 16);
    v17 = *(v5 + 24);
    if (v18 >= v17 >> 1)
    {
      sub_217276928(v17 > 1, v18 + 1, 1);

      v5 = v25;
    }

    else
    {
    }

    ++v4;
    sub_2171F0790(__dst, &qword_27CB24560, &unk_2177A07F0);
    *(v5 + 16) = v18 + 1;
    memcpy((v5 + 72 * v18 + 32), __src, 0x41uLL);
  }

  __break(1u);
LABEL_21:
  __break(1u);
}

void sub_217493220(uint64_t a1)
{
  v2 = MEMORY[0x277D84F90];
  v36 = 0;
  v37 = MEMORY[0x277D84F90];
  v3 = *(a1 + 16);
  sub_217497354(v3, 0, sub_217545688, sub_2172C9C70, sub_2172CB704);
  v35 = v2;
  sub_2172769B4(0, v3, 0);
  v4 = 0;
  v5 = v2;
  v26 = a1;
  v24 = a1 + 32;
  v25 = *(a1 + 16);
  v6 = &qword_27CB245B8;
  while (1)
  {
    if (v4 == v25)
    {

      return;
    }

    if (v4 >= *(v26 + 16))
    {
      break;
    }

    v7 = v6;
    sub_2171F0688(v24 + 80 * v4, v31, &qword_27CB27AF0, &qword_21776B760);
    v9 = v31[0];
    v8 = v31[1];
    *&v30[9] = *(v34 + 9);
    v29[1] = v33;
    *v30 = v34[0];
    v29[0] = v32;
    v10 = v36;
    v11 = v37;
    v12 = *(v37 + 16);
    if (v36)
    {

      sub_2172CA228(v9, v8, v11 + 32, v12, (v10 + 16));
      v14 = v13;

      if ((v14 & 1) == 0)
      {
        goto LABEL_21;
      }
    }

    else
    {
      v15 = (v37 + 40);
      v16 = v12 + 1;
      while (--v16)
      {
        if (*(v15 - 1) != v9 || *v15 != v8)
        {
          v15 += 2;
          if ((sub_217753058() & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_21;
      }
    }

    sub_2172C98F0(v9, v8);
    v6 = v7;
    sub_2171F0688(v29, v27, v7, &qword_217758AE0);
    v35 = v5;
    v19 = *(v5 + 16);
    v18 = *(v5 + 24);
    if (v19 >= v18 >> 1)
    {
      sub_2172769B4(v18 > 1, v19 + 1, 1);

      v5 = v35;
    }

    else
    {
    }

    ++v4;
    sub_2171F0790(v29, v7, &qword_217758AE0);
    *(v5 + 16) = v19 + 1;
    v20 = (v5 + (v19 << 6));
    v22 = v27[1];
    v21 = v28[0];
    v23 = v27[0];
    *(v20 + 73) = *(v28 + 9);
    v20[3] = v22;
    v20[4] = v21;
    v20[2] = v23;
  }

  __break(1u);
LABEL_21:
  __break(1u);
}

void sub_2174934B0(uint64_t a1)
{
  v2 = MEMORY[0x277D84F90];
  v26 = 0;
  v27 = MEMORY[0x277D84F90];
  v3 = *(a1 + 16);
  sub_217497354(v3, 0, sub_217545688, sub_2172C9C70, sub_2172CB704);
  v25 = v2;
  sub_2172769D4(0, v3, 0);
  v4 = 0;
  v5 = v2;
  v19 = a1 + 32;
  v20 = a1;
  v6 = *(a1 + 16);
  while (1)
  {
    if (v4 == v6)
    {

      return;
    }

    if (v4 >= *(v20 + 16))
    {
      break;
    }

    sub_2171F0688(v19 + 96 * v4, v23, &qword_27CB27B00, &qword_21776B770);
    v8 = v23[0];
    v7 = v23[1];
    memcpy(__dst, v24, 0x49uLL);
    v9 = v26;
    v10 = v27;
    v11 = *(v27 + 16);
    if (v26)
    {

      sub_2172CA228(v8, v7, v10 + 32, v11, (v9 + 16));
      v13 = v12;

      if ((v13 & 1) == 0)
      {
        goto LABEL_21;
      }
    }

    else
    {
      v14 = (v27 + 40);
      v15 = v11 + 1;
      while (--v15)
      {
        if (*(v14 - 1) != v8 || *v14 != v7)
        {
          v14 += 2;
          if ((sub_217753058() & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_21;
      }
    }

    sub_2172C98F0(v8, v7);
    sub_2171F0688(__dst, __src, &qword_27CB245C8, &qword_217758AF0);
    v25 = v5;
    v18 = *(v5 + 16);
    v17 = *(v5 + 24);
    if (v18 >= v17 >> 1)
    {
      sub_2172769D4(v17 > 1, v18 + 1, 1);

      v5 = v25;
    }

    else
    {
    }

    ++v4;
    sub_2171F0790(__dst, &qword_27CB245C8, &qword_217758AF0);
    *(v5 + 16) = v18 + 1;
    memcpy((v5 + 80 * v18 + 32), __src, 0x49uLL);
  }

  __break(1u);
LABEL_21:
  __break(1u);
}

void sub_217493724(uint64_t a1)
{
  v2 = MEMORY[0x277D84F90];
  v35 = 0;
  v36 = MEMORY[0x277D84F90];
  v3 = *(a1 + 16);
  sub_217497354(v3, 0, sub_217545688, sub_2172C9C70, sub_2172CB704);
  v34 = v2;
  sub_2172769F4(0, v3, 0);
  v4 = 0;
  v5 = v2;
  v24 = a1;
  v22 = a1 + 32;
  v23 = *(a1 + 16);
  while (1)
  {
    if (v4 == v23)
    {

      return;
    }

    if (v4 >= *(v24 + 16))
    {
      break;
    }

    sub_2171F0688(v22 + 72 * v4, v29, &qword_27CB28020, &qword_21776BFB8);
    v7 = v29[0];
    v6 = v29[1];
    v28 = v33;
    v27[1] = v31;
    v27[2] = v32;
    v27[0] = v30;
    v8 = v35;
    v9 = v36;
    v10 = *(v36 + 16);
    if (v35)
    {

      sub_2172CA228(v7, v6, v9 + 32, v10, (v8 + 16));
      v12 = v11;

      if ((v12 & 1) == 0)
      {
        goto LABEL_21;
      }
    }

    else
    {
      v13 = (v36 + 40);
      v14 = v10 + 1;
      while (--v14)
      {
        if (*(v13 - 1) != v7 || *v13 != v6)
        {
          v13 += 2;
          if ((sub_217753058() & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_21;
      }
    }

    sub_2172C98F0(v7, v6);
    sub_2171F0688(v27, v25, &unk_27CB2AF60, &qword_217758C00);
    v34 = v5;
    v17 = *(v5 + 16);
    v16 = *(v5 + 24);
    if (v17 >= v16 >> 1)
    {
      sub_2172769F4(v16 > 1, v17 + 1, 1);

      v5 = v34;
    }

    else
    {
    }

    ++v4;
    sub_2171F0790(v27, &unk_27CB2AF60, &qword_217758C00);
    *(v5 + 16) = v17 + 1;
    v18 = v5 + 56 * v17;
    v19 = v25[2];
    v20 = v25[0];
    v21 = v25[1];
    *(v18 + 80) = v26;
    *(v18 + 48) = v21;
    *(v18 + 64) = v19;
    *(v18 + 32) = v20;
  }

  __break(1u);
LABEL_21:
  __break(1u);
}

void sub_2174939B4(uint64_t a1)
{
  v2 = MEMORY[0x277D84F90];
  v26 = 0;
  v27 = MEMORY[0x277D84F90];
  v3 = *(a1 + 16);
  sub_217497354(v3, 0, sub_217545688, sub_2172C9C70, sub_2172CB704);
  v25 = v2;
  sub_217276A14(0, v3, 0);
  v4 = 0;
  v5 = v2;
  v19 = a1 + 32;
  v20 = a1;
  v6 = *(a1 + 16);
  while (1)
  {
    if (v4 == v6)
    {

      return;
    }

    if (v4 >= *(v20 + 16))
    {
      break;
    }

    sub_2171F0688(v19 + 88 * v4, v23, &qword_27CB28030, &qword_21776BFC8);
    v8 = v23[0];
    v7 = v23[1];
    memcpy(__dst, v24, 0x41uLL);
    v9 = v26;
    v10 = v27;
    v11 = *(v27 + 16);
    if (v26)
    {

      sub_2172CA228(v8, v7, v10 + 32, v11, (v9 + 16));
      v13 = v12;

      if ((v13 & 1) == 0)
      {
        goto LABEL_21;
      }
    }

    else
    {
      v14 = (v27 + 40);
      v15 = v11 + 1;
      while (--v15)
      {
        if (*(v14 - 1) != v8 || *v14 != v7)
        {
          v14 += 2;
          if ((sub_217753058() & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_21;
      }
    }

    sub_2172C98F0(v8, v7);
    sub_2171F0688(__dst, __src, &qword_27CB246A8, &qword_217758C10);
    v25 = v5;
    v18 = *(v5 + 16);
    v17 = *(v5 + 24);
    if (v18 >= v17 >> 1)
    {
      sub_217276A14(v17 > 1, v18 + 1, 1);

      v5 = v25;
    }

    else
    {
    }

    ++v4;
    sub_2171F0790(__dst, &qword_27CB246A8, &qword_217758C10);
    *(v5 + 16) = v18 + 1;
    memcpy((v5 + 72 * v18 + 32), __src, 0x41uLL);
  }

  __break(1u);
LABEL_21:
  __break(1u);
}

void sub_217493C28(uint64_t a1)
{
  v2 = MEMORY[0x277D84F90];
  v35 = 0;
  v36 = MEMORY[0x277D84F90];
  v3 = *(a1 + 16);
  sub_217497354(v3, 0, sub_217545688, sub_2172C9C70, sub_2172CB704);
  v34 = v2;
  sub_217276A34(0, v3, 0);
  v4 = 0;
  v5 = v2;
  v24 = a1;
  v22 = a1 + 32;
  v23 = *(a1 + 16);
  while (1)
  {
    if (v4 == v23)
    {

      return;
    }

    if (v4 >= *(v24 + 16))
    {
      break;
    }

    sub_2171F0688(v22 + 72 * v4, v29, &qword_27CB27888, &qword_21776B378);
    v7 = v29[0];
    v6 = v29[1];
    v28 = v33;
    v27[1] = v31;
    v27[2] = v32;
    v27[0] = v30;
    v8 = v35;
    v9 = v36;
    v10 = *(v36 + 16);
    if (v35)
    {

      sub_2172CA228(v7, v6, v9 + 32, v10, (v8 + 16));
      v12 = v11;

      if ((v12 & 1) == 0)
      {
        goto LABEL_21;
      }
    }

    else
    {
      v13 = (v36 + 40);
      v14 = v10 + 1;
      while (--v14)
      {
        if (*(v13 - 1) != v7 || *v13 != v6)
        {
          v13 += 2;
          if ((sub_217753058() & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_21;
      }
    }

    sub_2172C98F0(v7, v6);
    sub_2171F0688(v27, v25, &qword_27CB277F0, &unk_21775A2B0);
    v34 = v5;
    v17 = *(v5 + 16);
    v16 = *(v5 + 24);
    if (v17 >= v16 >> 1)
    {
      sub_217276A34(v16 > 1, v17 + 1, 1);

      v5 = v34;
    }

    else
    {
    }

    ++v4;
    sub_2171F0790(v27, &qword_27CB277F0, &unk_21775A2B0);
    *(v5 + 16) = v17 + 1;
    v18 = v5 + 56 * v17;
    v19 = v25[2];
    v20 = v25[0];
    v21 = v25[1];
    *(v18 + 80) = v26;
    *(v18 + 48) = v21;
    *(v18 + 64) = v19;
    *(v18 + 32) = v20;
  }

  __break(1u);
LABEL_21:
  __break(1u);
}

void sub_217493EB8(uint64_t a1)
{
  v2 = MEMORY[0x277D84F90];
  v26 = 0;
  v27 = MEMORY[0x277D84F90];
  v3 = *(a1 + 16);
  sub_217497354(v3, 0, sub_217545688, sub_2172C9C70, sub_2172CB704);
  v25 = v2;
  sub_217276A54(0, v3, 0);
  v4 = 0;
  v5 = v2;
  v19 = a1 + 32;
  v20 = a1;
  v6 = *(a1 + 16);
  while (1)
  {
    if (v4 == v6)
    {

      return;
    }

    if (v4 >= *(v20 + 16))
    {
      break;
    }

    sub_2171F0688(v19 + 88 * v4, v23, &qword_27CB27898, &qword_21776B388);
    v8 = v23[0];
    v7 = v23[1];
    memcpy(__dst, v24, 0x41uLL);
    v9 = v26;
    v10 = v27;
    v11 = *(v27 + 16);
    if (v26)
    {

      sub_2172CA228(v8, v7, v10 + 32, v11, (v9 + 16));
      v13 = v12;

      if ((v13 & 1) == 0)
      {
        goto LABEL_21;
      }
    }

    else
    {
      v14 = (v27 + 40);
      v15 = v11 + 1;
      while (--v15)
      {
        if (*(v14 - 1) != v8 || *v14 != v7)
        {
          v14 += 2;
          if ((sub_217753058() & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_21;
      }
    }

    sub_2172C98F0(v8, v7);
    sub_2171F0688(__dst, __src, &qword_27CB27880, &qword_21776B370);
    v25 = v5;
    v18 = *(v5 + 16);
    v17 = *(v5 + 24);
    if (v18 >= v17 >> 1)
    {
      sub_217276A54(v17 > 1, v18 + 1, 1);

      v5 = v25;
    }

    else
    {
    }

    ++v4;
    sub_2171F0790(__dst, &qword_27CB27880, &qword_21776B370);
    *(v5 + 16) = v18 + 1;
    memcpy((v5 + 72 * v18 + 32), __src, 0x41uLL);
  }

  __break(1u);
LABEL_21:
  __break(1u);
}

void sub_21749412C(uint64_t a1)
{
  v2 = MEMORY[0x277D84F90];
  v35 = 0;
  v36 = MEMORY[0x277D84F90];
  v3 = *(a1 + 16);
  sub_217497354(v3, 0, sub_217545688, sub_2172C9C70, sub_2172CB704);
  v34 = v2;
  sub_217276A74(0, v3, 0);
  v4 = 0;
  v5 = v2;
  v24 = a1;
  v22 = a1 + 32;
  v23 = *(a1 + 16);
  while (1)
  {
    if (v4 == v23)
    {

      return;
    }

    if (v4 >= *(v24 + 16))
    {
      break;
    }

    sub_2171F0688(v22 + 72 * v4, v29, &qword_27CB27740, &qword_21776B1A8);
    v7 = v29[0];
    v6 = v29[1];
    v28 = v33;
    v27[1] = v31;
    v27[2] = v32;
    v27[0] = v30;
    v8 = v35;
    v9 = v36;
    v10 = *(v36 + 16);
    if (v35)
    {

      sub_2172CA228(v7, v6, v9 + 32, v10, (v8 + 16));
      v12 = v11;

      if ((v12 & 1) == 0)
      {
        goto LABEL_21;
      }
    }

    else
    {
      v13 = (v36 + 40);
      v14 = v10 + 1;
      while (--v14)
      {
        if (*(v13 - 1) != v7 || *v13 != v6)
        {
          v13 += 2;
          if ((sub_217753058() & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_21;
      }
    }

    sub_2172C98F0(v7, v6);
    sub_2171F0688(v27, v25, &unk_27CB275E0, &qword_2177589D0);
    v34 = v5;
    v17 = *(v5 + 16);
    v16 = *(v5 + 24);
    if (v17 >= v16 >> 1)
    {
      sub_217276A74(v16 > 1, v17 + 1, 1);

      v5 = v34;
    }

    else
    {
    }

    ++v4;
    sub_2171F0790(v27, &unk_27CB275E0, &qword_2177589D0);
    *(v5 + 16) = v17 + 1;
    v18 = v5 + 56 * v17;
    v19 = v25[2];
    v20 = v25[0];
    v21 = v25[1];
    *(v18 + 80) = v26;
    *(v18 + 48) = v21;
    *(v18 + 64) = v19;
    *(v18 + 32) = v20;
  }

  __break(1u);
LABEL_21:
  __break(1u);
}

void sub_2174943BC(uint64_t a1)
{
  v2 = MEMORY[0x277D84F90];
  v26 = 0;
  v27 = MEMORY[0x277D84F90];
  v3 = *(a1 + 16);
  sub_217497354(v3, 0, sub_217545688, sub_2172C9C70, sub_2172CB704);
  v25 = v2;
  sub_217276A94(0, v3, 0);
  v4 = 0;
  v5 = v2;
  v19 = a1 + 32;
  v20 = a1;
  v6 = *(a1 + 16);
  while (1)
  {
    if (v4 == v6)
    {

      return;
    }

    if (v4 >= *(v20 + 16))
    {
      break;
    }

    sub_2171F0688(v19 + 88 * v4, v23, &qword_27CB27758, &unk_21776B1C0);
    v8 = v23[0];
    v7 = v23[1];
    memcpy(__dst, v24, 0x41uLL);
    v9 = v26;
    v10 = v27;
    v11 = *(v27 + 16);
    if (v26)
    {

      sub_2172CA228(v8, v7, v10 + 32, v11, (v9 + 16));
      v13 = v12;

      if ((v13 & 1) == 0)
      {
        goto LABEL_21;
      }
    }

    else
    {
      v14 = (v27 + 40);
      v15 = v11 + 1;
      while (--v15)
      {
        if (*(v14 - 1) != v8 || *v14 != v7)
        {
          v14 += 2;
          if ((sub_217753058() & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_21;
      }
    }

    sub_2172C98F0(v8, v7);
    sub_2171F0688(__dst, __src, &qword_27CB24508, &unk_2177589F0);
    v25 = v5;
    v18 = *(v5 + 16);
    v17 = *(v5 + 24);
    if (v18 >= v17 >> 1)
    {
      sub_217276A94(v17 > 1, v18 + 1, 1);

      v5 = v25;
    }

    else
    {
    }

    ++v4;
    sub_2171F0790(__dst, &qword_27CB24508, &unk_2177589F0);
    *(v5 + 16) = v18 + 1;
    memcpy((v5 + 72 * v18 + 32), __src, 0x41uLL);
  }

  __break(1u);
LABEL_21:
  __break(1u);
}

void sub_217494630(uint64_t a1)
{
  v2 = MEMORY[0x277D84F90];
  v35 = 0;
  v36 = MEMORY[0x277D84F90];
  v3 = *(a1 + 16);
  sub_217497354(v3, 0, sub_217545688, sub_2172C9C70, sub_2172CB704);
  v34 = v2;
  sub_217276AB4(0, v3, 0);
  v4 = 0;
  v5 = v2;
  v24 = a1;
  v22 = a1 + 32;
  v23 = *(a1 + 16);
  while (1)
  {
    if (v4 == v23)
    {

      return;
    }

    if (v4 >= *(v24 + 16))
    {
      break;
    }

    sub_2171F0688(v22 + 72 * v4, v29, &qword_27CB27CE0, &qword_21776BA88);
    v7 = v29[0];
    v6 = v29[1];
    v28 = v33;
    v27[1] = v31;
    v27[2] = v32;
    v27[0] = v30;
    v8 = v35;
    v9 = v36;
    v10 = *(v36 + 16);
    if (v35)
    {

      sub_2172CA228(v7, v6, v9 + 32, v10, (v8 + 16));
      v12 = v11;

      if ((v12 & 1) == 0)
      {
        goto LABEL_21;
      }
    }

    else
    {
      v13 = (v36 + 40);
      v14 = v10 + 1;
      while (--v14)
      {
        if (*(v13 - 1) != v7 || *v13 != v6)
        {
          v13 += 2;
          if ((sub_217753058() & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_21;
      }
    }

    sub_2172C98F0(v7, v6);
    sub_2171F0688(v27, v25, &unk_27CB27760, &unk_21775A2D0);
    v34 = v5;
    v17 = *(v5 + 16);
    v16 = *(v5 + 24);
    if (v17 >= v16 >> 1)
    {
      sub_217276AB4(v16 > 1, v17 + 1, 1);

      v5 = v34;
    }

    else
    {
    }

    ++v4;
    sub_2171F0790(v27, &unk_27CB27760, &unk_21775A2D0);
    *(v5 + 16) = v17 + 1;
    v18 = v5 + 56 * v17;
    v19 = v25[2];
    v20 = v25[0];
    v21 = v25[1];
    *(v18 + 80) = v26;
    *(v18 + 48) = v21;
    *(v18 + 64) = v19;
    *(v18 + 32) = v20;
  }

  __break(1u);
LABEL_21:
  __break(1u);
}

void sub_2174948C0(uint64_t a1)
{
  v2 = MEMORY[0x277D84F90];
  v26 = 0;
  v27 = MEMORY[0x277D84F90];
  v3 = *(a1 + 16);
  sub_217497354(v3, 0, sub_217545688, sub_2172C9C70, sub_2172CB704);
  v25 = v2;
  sub_217276AD4(0, v3, 0);
  v4 = 0;
  v5 = v2;
  v19 = a1 + 32;
  v20 = a1;
  v6 = *(a1 + 16);
  while (1)
  {
    if (v4 == v6)
    {

      return;
    }

    if (v4 >= *(v20 + 16))
    {
      break;
    }

    sub_2171F0688(v19 + 88 * v4, v23, &qword_27CB27CF0, &qword_21776BA98);
    v8 = v23[0];
    v7 = v23[1];
    memcpy(__dst, v24, 0x41uLL);
    v9 = v26;
    v10 = v27;
    v11 = *(v27 + 16);
    if (v26)
    {

      sub_2172CA228(v8, v7, v10 + 32, v11, (v9 + 16));
      v13 = v12;

      if ((v13 & 1) == 0)
      {
        goto LABEL_21;
      }
    }

    else
    {
      v14 = (v27 + 40);
      v15 = v11 + 1;
      while (--v15)
      {
        if (*(v14 - 1) != v8 || *v14 != v7)
        {
          v14 += 2;
          if ((sub_217753058() & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_21;
      }
    }

    sub_2172C98F0(v8, v7);
    sub_2171F0688(__dst, __src, &qword_27CB24608, &qword_21776BA80);
    v25 = v5;
    v18 = *(v5 + 16);
    v17 = *(v5 + 24);
    if (v18 >= v17 >> 1)
    {
      sub_217276AD4(v17 > 1, v18 + 1, 1);

      v5 = v25;
    }

    else
    {
    }

    ++v4;
    sub_2171F0790(__dst, &qword_27CB24608, &qword_21776BA80);
    *(v5 + 16) = v18 + 1;
    memcpy((v5 + 72 * v18 + 32), __src, 0x41uLL);
  }

  __break(1u);
LABEL_21:
  __break(1u);
}

void sub_217494B34(uint64_t a1)
{
  v2 = MEMORY[0x277D84F90];
  v36 = 0;
  v37 = MEMORY[0x277D84F90];
  v3 = *(a1 + 16);
  sub_217497354(v3, 0, sub_217545688, sub_2172C9C70, sub_2172CB704);
  v35 = v2;
  sub_217276AF4(0, v3, 0);
  v4 = 0;
  v5 = v2;
  v26 = a1;
  v24 = a1 + 32;
  v25 = *(a1 + 16);
  v6 = &unk_27CB28AA0;
  while (1)
  {
    if (v4 == v25)
    {

      return;
    }

    if (v4 >= *(v26 + 16))
    {
      break;
    }

    v7 = v6;
    sub_2171F0688(v24 + 80 * v4, v31, &qword_27CB27E70, &qword_21776BD28);
    v9 = v31[0];
    v8 = v31[1];
    *&v30[9] = *(v34 + 9);
    v29[1] = v33;
    *v30 = v34[0];
    v29[0] = v32;
    v10 = v36;
    v11 = v37;
    v12 = *(v37 + 16);
    if (v36)
    {

      sub_2172CA228(v9, v8, v11 + 32, v12, (v10 + 16));
      v14 = v13;

      if ((v14 & 1) == 0)
      {
        goto LABEL_21;
      }
    }

    else
    {
      v15 = (v37 + 40);
      v16 = v12 + 1;
      while (--v16)
      {
        if (*(v15 - 1) != v9 || *v15 != v8)
        {
          v15 += 2;
          if ((sub_217753058() & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_21;
      }
    }

    sub_2172C98F0(v9, v8);
    v6 = v7;
    sub_2171F0688(v29, v27, v7, &qword_21775A020);
    v35 = v5;
    v19 = *(v5 + 16);
    v18 = *(v5 + 24);
    if (v19 >= v18 >> 1)
    {
      sub_217276AF4(v18 > 1, v19 + 1, 1);

      v5 = v35;
    }

    else
    {
    }

    ++v4;
    sub_2171F0790(v29, v7, &qword_21775A020);
    *(v5 + 16) = v19 + 1;
    v20 = (v5 + (v19 << 6));
    v22 = v27[1];
    v21 = v28[0];
    v23 = v27[0];
    *(v20 + 73) = *(v28 + 9);
    v20[3] = v22;
    v20[4] = v21;
    v20[2] = v23;
  }

  __break(1u);
LABEL_21:
  __break(1u);
}

void sub_217494DC4(uint64_t a1)
{
  v2 = MEMORY[0x277D84F90];
  v26 = 0;
  v27 = MEMORY[0x277D84F90];
  v3 = *(a1 + 16);
  sub_217497354(v3, 0, sub_217545688, sub_2172C9C70, sub_2172CB704);
  v25 = v2;
  sub_217276B14(0, v3, 0);
  v4 = 0;
  v5 = v2;
  v19 = a1 + 32;
  v20 = a1;
  v6 = *(a1 + 16);
  while (1)
  {
    if (v4 == v6)
    {

      return;
    }

    if (v4 >= *(v20 + 16))
    {
      break;
    }

    sub_2171F0688(v19 + 96 * v4, v23, &qword_27CB27E80, &qword_21776BD38);
    v8 = v23[0];
    v7 = v23[1];
    memcpy(__dst, v24, 0x49uLL);
    v9 = v26;
    v10 = v27;
    v11 = *(v27 + 16);
    if (v26)
    {

      sub_2172CA228(v8, v7, v10 + 32, v11, (v9 + 16));
      v13 = v12;

      if ((v13 & 1) == 0)
      {
        goto LABEL_21;
      }
    }

    else
    {
      v14 = (v27 + 40);
      v15 = v11 + 1;
      while (--v15)
      {
        if (*(v14 - 1) != v8 || *v14 != v7)
        {
          v14 += 2;
          if ((sub_217753058() & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_21;
      }
    }

    sub_2172C98F0(v8, v7);
    sub_2171F0688(__dst, __src, &qword_27CB24660, &qword_21776BD20);
    v25 = v5;
    v18 = *(v5 + 16);
    v17 = *(v5 + 24);
    if (v18 >= v17 >> 1)
    {
      sub_217276B14(v17 > 1, v18 + 1, 1);

      v5 = v25;
    }

    else
    {
    }

    ++v4;
    sub_2171F0790(__dst, &qword_27CB24660, &qword_21776BD20);
    *(v5 + 16) = v18 + 1;
    memcpy((v5 + 80 * v18 + 32), __src, 0x49uLL);
  }

  __break(1u);
LABEL_21:
  __break(1u);
}

void sub_217495038(uint64_t a1)
{
  v2 = MEMORY[0x277D84F90];
  v35 = 0;
  v36 = MEMORY[0x277D84F90];
  v3 = *(a1 + 16);
  sub_217497354(v3, 0, sub_217545688, sub_2172C9C70, sub_2172CB704);
  v34 = v2;
  sub_217276B34(0, v3, 0);
  v4 = 0;
  v5 = v2;
  v24 = a1;
  v22 = a1 + 32;
  v23 = *(a1 + 16);
  while (1)
  {
    if (v4 == v23)
    {

      return;
    }

    if (v4 >= *(v24 + 16))
    {
      break;
    }

    sub_2171F0688(v22 + 72 * v4, v29, &qword_27CB27C20, &qword_21776B938);
    v7 = v29[0];
    v6 = v29[1];
    v28 = v33;
    v27[1] = v31;
    v27[2] = v32;
    v27[0] = v30;
    v8 = v35;
    v9 = v36;
    v10 = *(v36 + 16);
    if (v35)
    {

      sub_2172CA228(v7, v6, v9 + 32, v10, (v8 + 16));
      v12 = v11;

      if ((v12 & 1) == 0)
      {
        goto LABEL_21;
      }
    }

    else
    {
      v13 = (v36 + 40);
      v14 = v10 + 1;
      while (--v14)
      {
        if (*(v13 - 1) != v7 || *v13 != v6)
        {
          v13 += 2;
          if ((sub_217753058() & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_21;
      }
    }

    sub_2172C98F0(v7, v6);
    sub_2171F0688(v27, v25, &qword_27CB2CD90, &unk_21775A2C0);
    v34 = v5;
    v17 = *(v5 + 16);
    v16 = *(v5 + 24);
    if (v17 >= v16 >> 1)
    {
      sub_217276B34(v16 > 1, v17 + 1, 1);

      v5 = v34;
    }

    else
    {
    }

    ++v4;
    sub_2171F0790(v27, &qword_27CB2CD90, &unk_21775A2C0);
    *(v5 + 16) = v17 + 1;
    v18 = v5 + 56 * v17;
    v19 = v25[2];
    v20 = v25[0];
    v21 = v25[1];
    *(v18 + 80) = v26;
    *(v18 + 48) = v21;
    *(v18 + 64) = v19;
    *(v18 + 32) = v20;
  }

  __break(1u);
LABEL_21:
  __break(1u);
}

void sub_2174952C8(uint64_t a1)
{
  v2 = MEMORY[0x277D84F90];
  v26 = 0;
  v27 = MEMORY[0x277D84F90];
  v3 = *(a1 + 16);
  sub_217497354(v3, 0, sub_217545688, sub_2172C9C70, sub_2172CB704);
  v25 = v2;
  sub_217276B54(0, v3, 0);
  v4 = 0;
  v5 = v2;
  v19 = a1 + 32;
  v20 = a1;
  v6 = *(a1 + 16);
  while (1)
  {
    if (v4 == v6)
    {

      return;
    }

    if (v4 >= *(v20 + 16))
    {
      break;
    }

    sub_2171F0688(v19 + 88 * v4, v23, &qword_27CB27C30, &qword_21776B948);
    v8 = v23[0];
    v7 = v23[1];
    memcpy(__dst, v24, 0x41uLL);
    v9 = v26;
    v10 = v27;
    v11 = *(v27 + 16);
    if (v26)
    {

      sub_2172CA228(v8, v7, v10 + 32, v11, (v9 + 16));
      v13 = v12;

      if ((v13 & 1) == 0)
      {
        goto LABEL_21;
      }
    }

    else
    {
      v14 = (v27 + 40);
      v15 = v11 + 1;
      while (--v15)
      {
        if (*(v14 - 1) != v8 || *v14 != v7)
        {
          v14 += 2;
          if ((sub_217753058() & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_21;
      }
    }

    sub_2172C98F0(v8, v7);
    sub_2171F0688(__dst, __src, &qword_27CB245E8, &qword_21776B930);
    v25 = v5;
    v18 = *(v5 + 16);
    v17 = *(v5 + 24);
    if (v18 >= v17 >> 1)
    {
      sub_217276B54(v17 > 1, v18 + 1, 1);

      v5 = v25;
    }

    else
    {
    }

    ++v4;
    sub_2171F0790(__dst, &qword_27CB245E8, &qword_21776B930);
    *(v5 + 16) = v18 + 1;
    memcpy((v5 + 72 * v18 + 32), __src, 0x41uLL);
  }

  __break(1u);
LABEL_21:
  __break(1u);
}

void sub_21749553C(uint64_t a1)
{
  v2 = MEMORY[0x277D84F90];
  v35 = 0;
  v36 = MEMORY[0x277D84F90];
  v3 = *(a1 + 16);
  sub_217497354(v3, 0, sub_217545688, sub_2172C9C70, sub_2172CB704);
  v34 = v2;
  sub_217276B74(0, v3, 0);
  v4 = 0;
  v5 = v2;
  v24 = a1;
  v22 = a1 + 32;
  v23 = *(a1 + 16);
  while (1)
  {
    if (v4 == v23)
    {

      return;
    }

    if (v4 >= *(v24 + 16))
    {
      break;
    }

    sub_2171F0688(v22 + 72 * v4, v29, &qword_27CB281A0, &qword_21776C218);
    v7 = v29[0];
    v6 = v29[1];
    v28 = v33;
    v27[1] = v31;
    v27[2] = v32;
    v27[0] = v30;
    v8 = v35;
    v9 = v36;
    v10 = *(v36 + 16);
    if (v35)
    {

      sub_2172CA228(v7, v6, v9 + 32, v10, (v8 + 16));
      v12 = v11;

      if ((v12 & 1) == 0)
      {
        goto LABEL_21;
      }
    }

    else
    {
      v13 = (v36 + 40);
      v14 = v10 + 1;
      while (--v14)
      {
        if (*(v13 - 1) != v7 || *v13 != v6)
        {
          v13 += 2;
          if ((sub_217753058() & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_21;
      }
    }

    sub_2172C98F0(v7, v6);
    sub_2171F0688(v27, v25, &qword_27CB246E8, &qword_21776C140);
    v34 = v5;
    v17 = *(v5 + 16);
    v16 = *(v5 + 24);
    if (v17 >= v16 >> 1)
    {
      sub_217276B74(v16 > 1, v17 + 1, 1);

      v5 = v34;
    }

    else
    {
    }

    ++v4;
    sub_2171F0790(v27, &qword_27CB246E8, &qword_21776C140);
    *(v5 + 16) = v17 + 1;
    v18 = v5 + 56 * v17;
    v19 = v25[2];
    v20 = v25[0];
    v21 = v25[1];
    *(v18 + 80) = v26;
    *(v18 + 48) = v21;
    *(v18 + 64) = v19;
    *(v18 + 32) = v20;
  }

  __break(1u);
LABEL_21:
  __break(1u);
}

void sub_2174957CC(uint64_t a1)
{
  v2 = MEMORY[0x277D84F90];
  v26 = 0;
  v27 = MEMORY[0x277D84F90];
  v3 = *(a1 + 16);
  sub_217497354(v3, 0, sub_217545688, sub_2172C9C70, sub_2172CB704);
  v25 = v2;
  sub_217276B94(0, v3, 0);
  v4 = 0;
  v5 = v2;
  v19 = a1 + 32;
  v20 = a1;
  v6 = *(a1 + 16);
  while (1)
  {
    if (v4 == v6)
    {

      return;
    }

    if (v4 >= *(v20 + 16))
    {
      break;
    }

    sub_2171F0688(v19 + 88 * v4, v23, &qword_27CB281B0, &qword_21776C228);
    v8 = v23[0];
    v7 = v23[1];
    memcpy(__dst, v24, 0x41uLL);
    v9 = v26;
    v10 = v27;
    v11 = *(v27 + 16);
    if (v26)
    {

      sub_2172CA228(v8, v7, v10 + 32, v11, (v9 + 16));
      v13 = v12;

      if ((v13 & 1) == 0)
      {
        goto LABEL_21;
      }
    }

    else
    {
      v14 = (v27 + 40);
      v15 = v11 + 1;
      while (--v15)
      {
        if (*(v14 - 1) != v8 || *v14 != v7)
        {
          v14 += 2;
          if ((sub_217753058() & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_21;
      }
    }

    sub_2172C98F0(v8, v7);
    sub_2171F0688(__dst, __src, &qword_27CB246F8, &qword_21776C210);
    v25 = v5;
    v18 = *(v5 + 16);
    v17 = *(v5 + 24);
    if (v18 >= v17 >> 1)
    {
      sub_217276B94(v17 > 1, v18 + 1, 1);

      v5 = v25;
    }

    else
    {
    }

    ++v4;
    sub_2171F0790(__dst, &qword_27CB246F8, &qword_21776C210);
    *(v5 + 16) = v18 + 1;
    memcpy((v5 + 72 * v18 + 32), __src, 0x41uLL);
  }

  __break(1u);
LABEL_21:
  __break(1u);
}

void sub_217495A40(uint64_t a1)
{
  v2 = MEMORY[0x277D84F90];
  v35 = 0;
  v36 = MEMORY[0x277D84F90];
  v3 = *(a1 + 16);
  sub_217497354(v3, 0, sub_217545688, sub_2172C9C70, sub_2172CB704);
  v34 = v2;
  sub_217276BB4(0, v3, 0);
  v4 = 0;
  v5 = v2;
  v24 = a1;
  v22 = a1 + 32;
  v23 = *(a1 + 16);
  while (1)
  {
    if (v4 == v23)
    {

      return;
    }

    if (v4 >= *(v24 + 16))
    {
      break;
    }

    sub_2171F0688(v22 + 72 * v4, v29, &qword_27CB280E0, &qword_21776C0E8);
    v7 = v29[0];
    v6 = v29[1];
    v28 = v33;
    v27[1] = v31;
    v27[2] = v32;
    v27[0] = v30;
    v8 = v35;
    v9 = v36;
    v10 = *(v36 + 16);
    if (v35)
    {

      sub_2172CA228(v7, v6, v9 + 32, v10, (v8 + 16));
      v12 = v11;

      if ((v12 & 1) == 0)
      {
        goto LABEL_21;
      }
    }

    else
    {
      v13 = (v36 + 40);
      v14 = v10 + 1;
      while (--v14)
      {
        if (*(v13 - 1) != v7 || *v13 != v6)
        {
          v13 += 2;
          if ((sub_217753058() & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_21;
      }
    }

    sub_2172C98F0(v7, v6);
    sub_2171F0688(v27, v25, &unk_27CB2AF80, &qword_217758C30);
    v34 = v5;
    v17 = *(v5 + 16);
    v16 = *(v5 + 24);
    if (v17 >= v16 >> 1)
    {
      sub_217276BB4(v16 > 1, v17 + 1, 1);

      v5 = v34;
    }

    else
    {
    }

    ++v4;
    sub_2171F0790(v27, &unk_27CB2AF80, &qword_217758C30);
    *(v5 + 16) = v17 + 1;
    v18 = v5 + 56 * v17;
    v19 = v25[2];
    v20 = v25[0];
    v21 = v25[1];
    *(v18 + 80) = v26;
    *(v18 + 48) = v21;
    *(v18 + 64) = v19;
    *(v18 + 32) = v20;
  }

  __break(1u);
LABEL_21:
  __break(1u);
}

void sub_217495CD0(uint64_t a1)
{
  v2 = MEMORY[0x277D84F90];
  v26 = 0;
  v27 = MEMORY[0x277D84F90];
  v3 = *(a1 + 16);
  sub_217497354(v3, 0, sub_217545688, sub_2172C9C70, sub_2172CB704);
  v25 = v2;
  sub_217276BD4(0, v3, 0);
  v4 = 0;
  v5 = v2;
  v19 = a1 + 32;
  v20 = a1;
  v6 = *(a1 + 16);
  while (1)
  {
    if (v4 == v6)
    {

      return;
    }

    if (v4 >= *(v20 + 16))
    {
      break;
    }

    sub_2171F0688(v19 + 88 * v4, v23, &qword_27CB280F0, &qword_21776C0F8);
    v8 = v23[0];
    v7 = v23[1];
    memcpy(__dst, v24, 0x41uLL);
    v9 = v26;
    v10 = v27;
    v11 = *(v27 + 16);
    if (v26)
    {

      sub_2172CA228(v8, v7, v10 + 32, v11, (v9 + 16));
      v13 = v12;

      if ((v13 & 1) == 0)
      {
        goto LABEL_21;
      }
    }

    else
    {
      v14 = (v27 + 40);
      v15 = v11 + 1;
      while (--v15)
      {
        if (*(v14 - 1) != v8 || *v14 != v7)
        {
          v14 += 2;
          if ((sub_217753058() & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_21;
      }
    }

    sub_2172C98F0(v8, v7);
    sub_2171F0688(__dst, __src, &qword_27CB246C8, &unk_217758C40);
    v25 = v5;
    v18 = *(v5 + 16);
    v17 = *(v5 + 24);
    if (v18 >= v17 >> 1)
    {
      sub_217276BD4(v17 > 1, v18 + 1, 1);

      v5 = v25;
    }

    else
    {
    }

    ++v4;
    sub_2171F0790(__dst, &qword_27CB246C8, &unk_217758C40);
    *(v5 + 16) = v18 + 1;
    memcpy((v5 + 72 * v18 + 32), __src, 0x41uLL);
  }

  __break(1u);
LABEL_21:
  __break(1u);
}

void sub_217495F44(uint64_t a1)
{
  v2 = MEMORY[0x277D84F90];
  v36 = 0;
  v37 = MEMORY[0x277D84F90];
  v3 = *(a1 + 16);
  sub_217497354(v3, 0, sub_217545688, sub_2172C9C70, sub_2172CB704);
  v35 = v2;
  sub_217276C60(0, v3, 0);
  v4 = 0;
  v5 = v2;
  v26 = a1;
  v24 = a1 + 32;
  v25 = *(a1 + 16);
  v6 = &qword_27CB27D20;
  while (1)
  {
    if (v4 == v25)
    {

      return;
    }

    if (v4 >= *(v26 + 16))
    {
      break;
    }

    v7 = v6;
    sub_2171F0688(v24 + 80 * v4, v31, &qword_27CB27DA8, &qword_21776BBD0);
    v9 = v31[0];
    v8 = v31[1];
    *&v30[9] = *(v34 + 9);
    v29[1] = v33;
    *v30 = v34[0];
    v29[0] = v32;
    v10 = v36;
    v11 = v37;
    v12 = *(v37 + 16);
    if (v36)
    {

      sub_2172CA228(v9, v8, v11 + 32, v12, (v10 + 16));
      v14 = v13;

      if ((v14 & 1) == 0)
      {
        goto LABEL_21;
      }
    }

    else
    {
      v15 = (v37 + 40);
      v16 = v12 + 1;
      while (--v16)
      {
        if (*(v15 - 1) != v9 || *v15 != v8)
        {
          v15 += 2;
          if ((sub_217753058() & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_21;
      }
    }

    sub_2172C98F0(v9, v8);
    v6 = v7;
    sub_2171F0688(v29, v27, v7, &qword_217758B80);
    v35 = v5;
    v19 = *(v5 + 16);
    v18 = *(v5 + 24);
    if (v19 >= v18 >> 1)
    {
      sub_217276C60(v18 > 1, v19 + 1, 1);

      v5 = v35;
    }

    else
    {
    }

    ++v4;
    sub_2171F0790(v29, v7, &qword_217758B80);
    *(v5 + 16) = v19 + 1;
    v20 = (v5 + (v19 << 6));
    v22 = v27[1];
    v21 = v28[0];
    v23 = v27[0];
    *(v20 + 73) = *(v28 + 9);
    v20[3] = v22;
    v20[4] = v21;
    v20[2] = v23;
  }

  __break(1u);
LABEL_21:
  __break(1u);
}

void sub_2174961D4(uint64_t a1)
{
  v2 = MEMORY[0x277D84F90];
  v26 = 0;
  v27 = MEMORY[0x277D84F90];
  v3 = *(a1 + 16);
  sub_217497354(v3, 0, sub_217545688, sub_2172C9C70, sub_2172CB704);
  v25 = v2;
  sub_217276C80(0, v3, 0);
  v4 = 0;
  v5 = v2;
  v19 = a1 + 32;
  v20 = a1;
  v6 = *(a1 + 16);
  while (1)
  {
    if (v4 == v6)
    {

      return;
    }

    if (v4 >= *(v20 + 16))
    {
      break;
    }

    sub_2171F0688(v19 + 96 * v4, v23, &qword_27CB27DB8, &qword_21776BBE0);
    v8 = v23[0];
    v7 = v23[1];
    memcpy(__dst, v24, 0x49uLL);
    v9 = v26;
    v10 = v27;
    v11 = *(v27 + 16);
    if (v26)
    {

      sub_2172CA228(v8, v7, v10 + 32, v11, (v9 + 16));
      v13 = v12;

      if ((v13 & 1) == 0)
      {
        goto LABEL_21;
      }
    }

    else
    {
      v14 = (v27 + 40);
      v15 = v11 + 1;
      while (--v15)
      {
        if (*(v14 - 1) != v8 || *v14 != v7)
        {
          v14 += 2;
          if ((sub_217753058() & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_21;
      }
    }

    sub_2172C98F0(v8, v7);
    sub_2171F0688(__dst, __src, &qword_27CB27DA0, &unk_217758B90);
    v25 = v5;
    v18 = *(v5 + 16);
    v17 = *(v5 + 24);
    if (v18 >= v17 >> 1)
    {
      sub_217276C80(v17 > 1, v18 + 1, 1);

      v5 = v25;
    }

    else
    {
    }

    ++v4;
    sub_2171F0790(__dst, &qword_27CB27DA0, &unk_217758B90);
    *(v5 + 16) = v18 + 1;
    memcpy((v5 + 80 * v18 + 32), __src, 0x49uLL);
  }

  __break(1u);
LABEL_21:
  __break(1u);
}

void sub_217496448(uint64_t a1)
{
  v2 = MEMORY[0x277D84F90];
  v35 = 0;
  v36 = MEMORY[0x277D84F90];
  v3 = *(a1 + 16);
  sub_217497354(v3, 0, sub_217545688, sub_2172C9C70, sub_2172CB704);
  v34 = v2;
  sub_217276CA0(0, v3, 0);
  v4 = 0;
  v5 = v2;
  v24 = a1;
  v22 = a1 + 32;
  v23 = *(a1 + 16);
  while (1)
  {
    if (v4 == v23)
    {

      return;
    }

    if (v4 >= *(v24 + 16))
    {
      break;
    }

    sub_2171F0688(v22 + 72 * v4, v29, &qword_27CB27A30, &qword_21776B630);
    v7 = v29[0];
    v6 = v29[1];
    v28 = v33;
    v27[1] = v31;
    v27[2] = v32;
    v27[0] = v30;
    v8 = v35;
    v9 = v36;
    v10 = *(v36 + 16);
    if (v35)
    {

      sub_2172CA228(v7, v6, v9 + 32, v10, (v8 + 16));
      v12 = v11;

      if ((v12 & 1) == 0)
      {
        goto LABEL_21;
      }
    }

    else
    {
      v13 = (v36 + 40);
      v14 = v10 + 1;
      while (--v14)
      {
        if (*(v13 - 1) != v7 || *v13 != v6)
        {
          v13 += 2;
          if ((sub_217753058() & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_21;
      }
    }

    sub_2172C98F0(v7, v6);
    sub_2171F0688(v27, v25, &unk_27CB2ACC0, &qword_217758AA8);
    v34 = v5;
    v17 = *(v5 + 16);
    v16 = *(v5 + 24);
    if (v17 >= v16 >> 1)
    {
      sub_217276CA0(v16 > 1, v17 + 1, 1);

      v5 = v34;
    }

    else
    {
    }

    ++v4;
    sub_2171F0790(v27, &unk_27CB2ACC0, &qword_217758AA8);
    *(v5 + 16) = v17 + 1;
    v18 = v5 + 56 * v17;
    v19 = v25[2];
    v20 = v25[0];
    v21 = v25[1];
    *(v18 + 80) = v26;
    *(v18 + 48) = v21;
    *(v18 + 64) = v19;
    *(v18 + 32) = v20;
  }

  __break(1u);
LABEL_21:
  __break(1u);
}

void sub_2174966D8(uint64_t a1)
{
  v2 = MEMORY[0x277D84F90];
  v26 = 0;
  v27 = MEMORY[0x277D84F90];
  v3 = *(a1 + 16);
  sub_217497354(v3, 0, sub_217545688, sub_2172C9C70, sub_2172CB704);
  v25 = v2;
  sub_217276CC0(0, v3, 0);
  v4 = 0;
  v5 = v2;
  v19 = a1 + 32;
  v20 = a1;
  v6 = *(a1 + 16);
  while (1)
  {
    if (v4 == v6)
    {

      return;
    }

    if (v4 >= *(v20 + 16))
    {
      break;
    }

    sub_2171F0688(v19 + 88 * v4, v23, &qword_27CB27A40, &qword_21776B640);
    v8 = v23[0];
    v7 = v23[1];
    memcpy(__dst, v24, 0x41uLL);
    v9 = v26;
    v10 = v27;
    v11 = *(v27 + 16);
    if (v26)
    {

      sub_2172CA228(v8, v7, v10 + 32, v11, (v9 + 16));
      v13 = v12;

      if ((v13 & 1) == 0)
      {
        goto LABEL_21;
      }
    }

    else
    {
      v14 = (v27 + 40);
      v15 = v11 + 1;
      while (--v15)
      {
        if (*(v14 - 1) != v8 || *v14 != v7)
        {
          v14 += 2;
          if ((sub_217753058() & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_21;
      }
    }

    sub_2172C98F0(v8, v7);
    sub_2171F0688(__dst, __src, &qword_27CB24598, &unk_2177A0800);
    v25 = v5;
    v18 = *(v5 + 16);
    v17 = *(v5 + 24);
    if (v18 >= v17 >> 1)
    {
      sub_217276CC0(v17 > 1, v18 + 1, 1);

      v5 = v25;
    }

    else
    {
    }

    ++v4;
    sub_2171F0790(__dst, &qword_27CB24598, &unk_2177A0800);
    *(v5 + 16) = v18 + 1;
    memcpy((v5 + 72 * v18 + 32), __src, 0x41uLL);
  }

  __break(1u);
LABEL_21:
  __break(1u);
}

void sub_21749694C(uint64_t a1)
{
  v2 = MEMORY[0x277D84F90];
  v35 = 0;
  v36 = MEMORY[0x277D84F90];
  v3 = *(a1 + 16);
  sub_217497354(v3, 0, sub_217545688, sub_2172C9C70, sub_2172CB704);
  v34 = v2;
  sub_217276CE0(0, v3, 0);
  v4 = 0;
  v5 = v2;
  v24 = a1;
  v22 = a1 + 32;
  v23 = *(a1 + 16);
  while (1)
  {
    if (v4 == v23)
    {

      return;
    }

    if (v4 >= *(v24 + 16))
    {
      break;
    }

    sub_2171F0688(v22 + 72 * v4, v29, &qword_27CB28298, &qword_21776C380);
    v7 = v29[0];
    v6 = v29[1];
    v28 = v33;
    v27[1] = v31;
    v27[2] = v32;
    v27[0] = v30;
    v8 = v35;
    v9 = v36;
    v10 = *(v36 + 16);
    if (v35)
    {

      sub_2172CA228(v7, v6, v9 + 32, v10, (v8 + 16));
      v12 = v11;

      if ((v12 & 1) == 0)
      {
        goto LABEL_21;
      }
    }

    else
    {
      v13 = (v36 + 40);
      v14 = v10 + 1;
      while (--v14)
      {
        if (*(v13 - 1) != v7 || *v13 != v6)
        {
          v13 += 2;
          if ((sub_217753058() & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_21;
      }
    }

    sub_2172C98F0(v7, v6);
    sub_2171F0688(v27, v25, &unk_27CB28A90, &qword_217758F90);
    v34 = v5;
    v17 = *(v5 + 16);
    v16 = *(v5 + 24);
    if (v17 >= v16 >> 1)
    {
      sub_217276CE0(v16 > 1, v17 + 1, 1);

      v5 = v34;
    }

    else
    {
    }

    ++v4;
    sub_2171F0790(v27, &unk_27CB28A90, &qword_217758F90);
    *(v5 + 16) = v17 + 1;
    v18 = v5 + 56 * v17;
    v19 = v25[2];
    v20 = v25[0];
    v21 = v25[1];
    *(v18 + 80) = v26;
    *(v18 + 48) = v21;
    *(v18 + 64) = v19;
    *(v18 + 32) = v20;
  }

  __break(1u);
LABEL_21:
  __break(1u);
}

void sub_217496BDC(uint64_t a1)
{
  v2 = MEMORY[0x277D84F90];
  v26 = 0;
  v27 = MEMORY[0x277D84F90];
  v3 = *(a1 + 16);
  sub_217497354(v3, 0, sub_217545688, sub_2172C9C70, sub_2172CB704);
  v25 = v2;
  sub_217276D00(0, v3, 0);
  v4 = 0;
  v5 = v2;
  v19 = a1 + 32;
  v20 = a1;
  v6 = *(a1 + 16);
  while (1)
  {
    if (v4 == v6)
    {

      return;
    }

    if (v4 >= *(v20 + 16))
    {
      break;
    }

    sub_2171F0688(v19 + 88 * v4, v23, &qword_27CB282A8, &qword_21776C390);
    v8 = v23[0];
    v7 = v23[1];
    memcpy(__dst, v24, 0x41uLL);
    v9 = v26;
    v10 = v27;
    v11 = *(v27 + 16);
    if (v26)
    {

      sub_2172CA228(v8, v7, v10 + 32, v11, (v9 + 16));
      v13 = v12;

      if ((v13 & 1) == 0)
      {
        goto LABEL_21;
      }
    }

    else
    {
      v14 = (v27 + 40);
      v15 = v11 + 1;
      while (--v15)
      {
        if (*(v14 - 1) != v8 || *v14 != v7)
        {
          v14 += 2;
          if ((sub_217753058() & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_21;
      }
    }

    sub_2172C98F0(v8, v7);
    sub_2171F0688(__dst, __src, &qword_27CB28290, &qword_217758FA0);
    v25 = v5;
    v18 = *(v5 + 16);
    v17 = *(v5 + 24);
    if (v18 >= v17 >> 1)
    {
      sub_217276D00(v17 > 1, v18 + 1, 1);

      v5 = v25;
    }

    else
    {
    }

    ++v4;
    sub_2171F0790(__dst, &qword_27CB28290, &qword_217758FA0);
    *(v5 + 16) = v18 + 1;
    memcpy((v5 + 72 * v18 + 32), __src, 0x41uLL);
  }

  __break(1u);
LABEL_21:
  __break(1u);
}

void sub_217496E50(uint64_t a1)
{
  v2 = MEMORY[0x277D84F90];
  v35 = 0;
  v36 = MEMORY[0x277D84F90];
  v3 = *(a1 + 16);
  sub_217497354(v3, 0, sub_217545688, sub_2172C9C70, sub_2172CB704);
  v34 = v2;
  sub_217276D20(0, v3, 0);
  v4 = 0;
  v5 = v2;
  v24 = a1;
  v22 = a1 + 32;
  v23 = *(a1 + 16);
  while (1)
  {
    if (v4 == v23)
    {

      return;
    }

    if (v4 >= *(v24 + 16))
    {
      break;
    }

    sub_2171F0688(v22 + 72 * v4, v29, &qword_27CB27F30, &qword_21776BE58);
    v7 = v29[0];
    v6 = v29[1];
    v28 = v33;
    v27[1] = v31;
    v27[2] = v32;
    v27[0] = v30;
    v8 = v35;
    v9 = v36;
    v10 = *(v36 + 16);
    if (v35)
    {

      sub_2172CA228(v7, v6, v9 + 32, v10, (v8 + 16));
      v12 = v11;

      if ((v12 & 1) == 0)
      {
        goto LABEL_21;
      }
    }

    else
    {
      v13 = (v36 + 40);
      v14 = v10 + 1;
      while (--v14)
      {
        if (*(v13 - 1) != v7 || *v13 != v6)
        {
          v13 += 2;
          if ((sub_217753058() & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_21;
      }
    }

    sub_2172C98F0(v7, v6);
    sub_2171F0688(v27, v25, &qword_27CB24678, &qword_217758BD0);
    v34 = v5;
    v17 = *(v5 + 16);
    v16 = *(v5 + 24);
    if (v17 >= v16 >> 1)
    {
      sub_217276D20(v16 > 1, v17 + 1, 1);

      v5 = v34;
    }

    else
    {
    }

    ++v4;
    sub_2171F0790(v27, &qword_27CB24678, &qword_217758BD0);
    *(v5 + 16) = v17 + 1;
    v18 = v5 + 56 * v17;
    v19 = v25[2];
    v20 = v25[0];
    v21 = v25[1];
    *(v18 + 80) = v26;
    *(v18 + 48) = v21;
    *(v18 + 64) = v19;
    *(v18 + 32) = v20;
  }

  __break(1u);
LABEL_21:
  __break(1u);
}

void sub_2174970E0(uint64_t a1)
{
  v2 = MEMORY[0x277D84F90];
  v26 = 0;
  v27 = MEMORY[0x277D84F90];
  v3 = *(a1 + 16);
  sub_217497354(v3, 0, sub_217545688, sub_2172C9C70, sub_2172CB704);
  v25 = v2;
  sub_217276D40(0, v3, 0);
  v4 = 0;
  v5 = v2;
  v19 = a1 + 32;
  v20 = a1;
  v6 = *(a1 + 16);
  while (1)
  {
    if (v4 == v6)
    {

      return;
    }

    if (v4 >= *(v20 + 16))
    {
      break;
    }

    sub_2171F0688(v19 + 88 * v4, v23, &qword_27CB27F40, &qword_21776BE68);
    v8 = v23[0];
    v7 = v23[1];
    memcpy(__dst, v24, 0x41uLL);
    v9 = v26;
    v10 = v27;
    v11 = *(v27 + 16);
    if (v26)
    {

      sub_2172CA228(v8, v7, v10 + 32, v11, (v9 + 16));
      v13 = v12;

      if ((v13 & 1) == 0)
      {
        goto LABEL_21;
      }
    }

    else
    {
      v14 = (v27 + 40);
      v15 = v11 + 1;
      while (--v15)
      {
        if (*(v14 - 1) != v8 || *v14 != v7)
        {
          v14 += 2;
          if ((sub_217753058() & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_21;
      }
    }

    sub_2172C98F0(v8, v7);
    sub_2171F0688(__dst, __src, &qword_27CB24688, &qword_217758BE0);
    v25 = v5;
    v18 = *(v5 + 16);
    v17 = *(v5 + 24);
    if (v18 >= v17 >> 1)
    {
      sub_217276D40(v17 > 1, v18 + 1, 1);

      v5 = v25;
    }

    else
    {
    }

    ++v4;
    sub_2171F0790(__dst, &qword_27CB24688, &qword_217758BE0);
    *(v5 + 16) = v18 + 1;
    memcpy((v5 + 72 * v18 + 32), __src, 0x41uLL);
  }

  __break(1u);
LABEL_21:
  __break(1u);
}

uint64_t sub_217497354(uint64_t result, char a2, void (*a3)(void), uint64_t (*a4)(uint64_t, uint64_t), uint64_t (*a5)(void))
{
  if (result < 0)
  {
    goto LABEL_25;
  }

  v8 = v5;
  v10 = result;
  a3();
  v11 = *v5;
  if (*v5)
  {
    OUTLINED_FUNCTION_6();
    swift_beginAccess();
    v12 = *(v11 + 16) & 0x3FLL;
  }

  else
  {
    v12 = 0;
  }

  v13 = MEMORY[0x21CEA1DB0](v10);
  v14 = v13;
  if (a2)
  {
    v15 = v13;
  }

  else
  {
    v15 = 0;
  }

  if (v11 && (a2 & 1) == 0)
  {
    OUTLINED_FUNCTION_6();
    swift_beginAccess();
    v15 = *(v11 + 24) & 0x3FLL;
  }

  if (v12 < v14)
  {
    v16 = v14;
    return a4(v16, v15);
  }

  if (v15 > v14)
  {
    v14 = v15;
  }

  v16 = MEMORY[0x21CEA1DB0](*(v8[1] + 16));
  if (v16 <= v14)
  {
    v16 = v14;
  }

  if (v16 < v12)
  {
    return a4(v16, v15);
  }

  result = a5();
  v17 = *v8;
  if (!v17)
  {
    if (!v15)
    {
      return result;
    }

    __break(1u);
LABEL_25:
    __break(1u);
    return result;
  }

  result = swift_beginAccess();
  if ((*(v17 + 24) & 0x3FLL) != v15)
  {
    *(v17 + 24) = *(v17 + 24) & 0xFFFFFFFFFFFFFFC0 | v15 & 0x3F;
  }

  return result;
}

void sub_2174974A4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = v2 + 1;
  v6 = *(v2[1] + 16);
  v7 = *v3;
  if (!*v3)
  {
    if (v6)
    {
      sub_2174976CC(a1);
      return;
    }

    goto LABEL_12;
  }

  swift_beginAccess();
  if ((*(v7 + 16) & 0x3FLL) == (*(v7 + 24) & 0x3FLL))
  {
    if (!v6)
    {
      goto LABEL_12;
    }
  }

  else if (v6 <= MEMORY[0x21CEA1D90]())
  {
LABEL_12:
    sub_2174976CC(a1);
    if (v7)
    {
      swift_beginAccess();
      v11 = *(v7 + 24) & 0x3FLL;
    }

    else
    {
      v11 = 0;
    }

    v12 = *(*v5 + 16);
    if (v11 || v12 >= 0x10)
    {
      v13 = MEMORY[0x21CEA1DB0](v12);
      sub_2172C9C58(v13, v11);
    }

    else
    {

      *v3 = 0;
    }

    return;
  }

  sub_2172CB704();
  v9 = *v3;
  if (*v3)
  {

    sub_217497750(a2, (v9 + 16), v9 + 32, v3);
    if (__OFADD__(a1, 1))
    {
      __break(1u);
    }

    else if (a1 + 1 >= a1)
    {
      v10 = v3[1];

      sub_217497940(a1, a1 + 1, v10, (v9 + 16), v9 + 32);

      sub_2174976CC(a1);
      return;
    }

    __break(1u);
  }

  __break(1u);
}

void sub_217497654(unint64_t a1)
{
  v3 = *v1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_217492638();
    v3 = v4;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    sub_217504014((v3 + 8 * a1 + 40), v5 - 1 - a1, (v3 + 8 * a1 + 32));
    *(v3 + 16) = v6;
    *v1 = v3;
  }
}

void sub_2174976CC(unint64_t a1)
{
  v3 = *v1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_2174923A8();
    v3 = v4;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    sub_217230498((v3 + 16 * a1 + 48), v5 - 1 - a1, (v3 + 16 * a1 + 32));
    *(v3 + 16) = v6;
    *v1 = v3;
  }
}

void sub_217497750(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v17 = sub_2177519B8();
  sub_217751A18();
  if (v17)
  {
    v7 = sub_2177519C8();
    v8 = a1;
    while (1)
    {
      v9 = sub_2177519F8();
      if (v10)
      {
LABEL_26:
        __break(1u);
        return;
      }

      if ((v9 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_24:
        __break(1u);
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      if (v9 >= *(*(a4 + 8) + 16))
      {
        goto LABEL_24;
      }

      sub_2177531E8();
      sub_217751DE8();
      sub_217751FF8();
      v11 = sub_217753238();

      v12 = 1 << *a2;
      if (__OFSUB__(v12, 1))
      {
        goto LABEL_25;
      }

      v13 = (v12 - 1) & v11;
      if (v8 >= v7)
      {
        if (v13 >= v7 && v8 >= v13)
        {
LABEL_18:
          sub_2177519F8();
          v8 = a1;
          sub_2177519D8();
        }
      }

      else if (v13 >= v7 || v8 >= v13)
      {
        goto LABEL_18;
      }

      sub_217751A18();
    }
  }

  sub_2177519D8();
}

void sub_217497940(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v5 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    goto LABEL_57;
  }

  if (v5 >= 1)
  {
    v9 = *(a3 + 16);
    if ((v9 - v5) / 2 <= a1)
    {
      v13 = a2;
      v14 = __OFSUB__(v9, a2);
      v15 = v9 - a2;
      if (v14)
      {
LABEL_58:
        __break(1u);
LABEL_59:
        __break(1u);
        goto LABEL_60;
      }

      if (v15 >= MEMORY[0x21CEA1D80](*a4 & 0x3FLL) / 3)
      {
        sub_2177519B8();
        v24 = sub_2177519F8();
        if ((v25 & 1) == 0 && v24 >= v13)
        {
          if (__OFSUB__(v24, v5))
          {
LABEL_56:
            __break(1u);
LABEL_57:
            __break(1u);
            goto LABEL_58;
          }

          sub_217751A08();
        }

        sub_217751A18();
        return;
      }

      sub_21749264C(v13, a3);
      v17 = v16;
      v19 = v18 >> 1;
      while (v17 != v19)
      {
        if (v17 >= v19)
        {
          goto LABEL_51;
        }

        sub_2177531E8();
        sub_217751DE8();
        sub_217751FF8();
        sub_217753238();
        if (__OFSUB__(1 << *a4, 1))
        {
          goto LABEL_52;
        }

        if (sub_2177519B8())
        {
          while (1)
          {
            v20 = sub_2177519F8();
            if ((v21 & 1) == 0 && v20 == v13)
            {
              break;
            }

            sub_217751A18();
          }
        }

        if (__OFSUB__(v13, v5))
        {
          goto LABEL_53;
        }

        sub_217751A08();

        v14 = __OFADD__(v13++, 1);
        if (v14)
        {
          goto LABEL_54;
        }

        ++v17;
      }

      swift_unknownObjectRelease();
    }

    else
    {
      if (MEMORY[0x21CEA1D80](*a4 & 0x3FLL) / 3 > a1)
      {
        if (a1 < 0)
        {
LABEL_61:
          __break(1u);
          goto LABEL_62;
        }

        if (v9 < a1)
        {
LABEL_62:
          __break(1u);
          return;
        }

        for (i = 0; ; ++i)
        {
          if (i == a1)
          {

            goto LABEL_40;
          }

          sub_2177531E8();
          sub_217751DE8();
          sub_217751FF8();
          sub_217753238();
          if (__OFSUB__(1 << *a4, 1))
          {
            break;
          }

          if (sub_2177519B8())
          {
            while (1)
            {
              v11 = sub_2177519F8();
              if ((v12 & 1) == 0 && v11 == i)
              {
                break;
              }

              sub_217751A18();
            }
          }

          if (__OFADD__(i, v5))
          {
            goto LABEL_50;
          }

          sub_217751A08();
        }

        __break(1u);
LABEL_50:
        __break(1u);
LABEL_51:
        __break(1u);
LABEL_52:
        __break(1u);
LABEL_53:
        __break(1u);
LABEL_54:
        __break(1u);
        goto LABEL_55;
      }

      sub_2177519B8();
      v22 = sub_2177519F8();
      if ((v23 & 1) == 0 && v22 < a1)
      {
        if (__OFADD__(v22, v5))
        {
LABEL_55:
          __break(1u);
          goto LABEL_56;
        }

        sub_217751A08();
      }

      sub_217751A18();
LABEL_40:
      v26 = a4[1];
      if (__OFSUB__(v26 >> 6, v5))
      {
        goto LABEL_59;
      }

      v27 = 1 << *a4;
      v14 = __OFSUB__(v27, 1);
      v28 = v27 - 1;
      if (v14)
      {
LABEL_60:
        __break(1u);
        goto LABEL_61;
      }

      v29 = (v28 & (((v26 >> 6) - v5) >> 63)) + (v26 >> 6) - v5;
      if (v29 < v28)
      {
        v28 = 0;
      }

      a4[1] = a4[1] & 0x3FLL | ((v29 - v28) << 6);
    }
  }
}

void *sub_217497D90(uint64_t a1)
{
  v2 = a1 + 64;
  v3 = -1 << *(a1 + 32);
  if (-v3 < 64)
  {
    v4 = ~(-1 << -v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (63 - v3) >> 6;
  result = sub_217751DE8();
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v34 = 0;
  v11 = 0;
  v36 = MEMORY[0x277D84F90];
  v33 = (MEMORY[0x277D84F90] + 32);
  while (1)
  {
    while (v9)
    {
      v12 = *(v9 + 16);
      if (v10 == v12)
      {
        break;
      }

      if (v10 >= v12)
      {
        goto LABEL_39;
      }

      v18 = v9 + 16 * v10;
      v19 = *(v18 + 32);
      result = *(v18 + 40);
      v32 = result;
      if (v34)
      {
        result = sub_217751DE8();
        v20 = v36;
      }

      else
      {
        v21 = v36[3];
        if (((v21 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_41;
        }

        v22 = v21 & 0xFFFFFFFFFFFFFFFELL;
        if (v22 <= 1)
        {
          v23 = 1;
        }

        else
        {
          v23 = v22;
        }

        v35 = v23;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB27780, &unk_21775A2F0);
        v20 = swift_allocObject();
        v24 = (_swift_stdlib_malloc_size(v20) - 32) / 16;
        v20[2] = v35;
        v20[3] = 2 * v24;
        v25 = v20 + 4;
        v26 = v36[3] >> 1;
        v33 = &v20[2 * v26 + 4];
        v34 = (v24 & 0x7FFFFFFFFFFFFFFFLL) - v26;
        if (v36[2])
        {
          if (v20 != v36 || v25 >= &v36[2 * v26 + 4])
          {
            memmove(v25, v36 + 4, 16 * v26);
          }

          sub_217751DE8();
          v36[2] = 0;
        }

        else
        {
          sub_217751DE8();
        }
      }

      v28 = __OFSUB__(v34--, 1);
      if (v28)
      {
        goto LABEL_40;
      }

      ++v10;
      *v33 = v19;
      v33[1] = v32;
      v33 += 2;
      v36 = v20;
    }

    if (!v5)
    {
      break;
    }

    v13 = v11;
LABEL_13:
    v14 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v15 = (*(a1 + 56) + ((v13 << 10) | (16 * v14)));
    v16 = *v15;
    v17 = v15[1];

    result = sub_217498E38(v8, v9);
    v10 = 0;
    v8 = v16;
    v9 = v17;
  }

  while (1)
  {
    v13 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      __break(1u);
      goto LABEL_38;
    }

    if (v13 >= v6)
    {
      break;
    }

    v5 = *(v2 + 8 * v13);
    ++v11;
    if (v5)
    {
      v11 = v13;
      goto LABEL_13;
    }
  }

  sub_2172303F0(a1);
  sub_217498E38(v8, v9);
  result = v36;
  v29 = v36[3];
  if (v29 < 2)
  {
    return result;
  }

  v30 = v29 >> 1;
  v28 = __OFSUB__(v30, v34);
  v31 = v30 - v34;
  if (!v28)
  {
    v36[2] = v31;
    return result;
  }

LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
  return result;
}

unint64_t sub_2174980BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB275D8;
  if (!qword_27CB275D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB275D8);
  }

  return result;
}

uint64_t dispatch thunk of MusicLibrary.add<A>(_:)()
{
  OUTLINED_FUNCTION_173_0();
  OUTLINED_FUNCTION_209();
  OUTLINED_FUNCTION_0_41();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2172849C8;
  OUTLINED_FUNCTION_351();
  OUTLINED_FUNCTION_1385();

  return v5(v2, v3, v4, v5, v6, v7, v8, v9);
}

uint64_t dispatch thunk of MusicLibrary.add<A>(_:to:)(uint64_t a1)
{
  OUTLINED_FUNCTION_1077();
  OUTLINED_FUNCTION_182();
  OUTLINED_FUNCTION_0_41();
  v14 = (v1 + 288);
  v15 = *v14 + **v14;
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_19(v2);
  *v3 = v4;
  v3[1] = sub_2172849C8;
  OUTLINED_FUNCTION_849();
  OUTLINED_FUNCTION_1029();

  return v10(v5, v6, v7, v8, v9, v10, v11, v12, v14, v15);
}

uint64_t dispatch thunk of MusicLibrary.createPlaylist(name:description:authorDisplayName:)()
{
  OUTLINED_FUNCTION_845();
  OUTLINED_FUNCTION_1210();
  OUTLINED_FUNCTION_0_41();
  v5 = (*(v0 + 296) + **(v0 + 296));
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_19(v1);
  *v2 = v3;
  v2[1] = sub_2172849C8;
  OUTLINED_FUNCTION_1071();
  OUTLINED_FUNCTION_1463();

  return v5();
}

uint64_t dispatch thunk of MusicLibrary.createPlaylist<A, B>(name:description:authorDisplayName:items:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_171_0();
  OUTLINED_FUNCTION_184_0();
  v45 = v22;
  v46 = v23;
  v43 = v24;
  v44 = v25;
  OUTLINED_FUNCTION_1109();
  OUTLINED_FUNCTION_0_41();
  v41 = (v26 + 304);
  v42 = *v41 + **v41;
  v27 = swift_task_alloc();
  v28 = OUTLINED_FUNCTION_19(v27);
  *v28 = v29;
  v28[1] = sub_217282D8C;
  OUTLINED_FUNCTION_897();
  OUTLINED_FUNCTION_172_1();

  return v38(v30, v31, v32, v33, v34, v35, v36, v37, a9, v41, v42, v43, v44, v45, v46, a16, a17, a18, a19, a20, a21, a22);
}

uint64_t dispatch thunk of MusicLibrary.edit(_:name:description:authorDisplayName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_121();
  OUTLINED_FUNCTION_142();
  OUTLINED_FUNCTION_1109();
  OUTLINED_FUNCTION_0_41();
  v29 = (v14 + 312);
  v30 = *v29 + **v29;
  v15 = swift_task_alloc();
  v16 = OUTLINED_FUNCTION_19(v15);
  *v16 = v17;
  v16[1] = sub_2172849C8;
  OUTLINED_FUNCTION_897();
  OUTLINED_FUNCTION_1399();
  OUTLINED_FUNCTION_120_0();

  return v26(v18, v19, v20, v21, v22, v23, v24, v25, a9, v29, v30, a12, a13, a14);
}

uint64_t dispatch thunk of MusicLibrary.edit<A, B>(_:name:description:authorDisplayName:items:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_171_0();
  OUTLINED_FUNCTION_184_0();
  v48 = v23;
  v49 = v24;
  v46 = v25;
  v47 = v26;
  v45 = v27;
  OUTLINED_FUNCTION_1109();
  OUTLINED_FUNCTION_0_41();
  v43 = (v28 + 320);
  v44 = *v43 + **v43;
  v29 = swift_task_alloc();
  v30 = OUTLINED_FUNCTION_19(v29);
  *v30 = v31;
  v30[1] = sub_2172849C8;
  OUTLINED_FUNCTION_897();
  OUTLINED_FUNCTION_172_1();

  return v40(v32, v33, v34, v35, v36, v37, v38, v39, v43, v44, v45, v46, v47, v48, v49, a16, a17, a18, a19, a20, a21, a22, a23);
}

uint64_t dispatch thunk of MusicLibrary._connect()()
{
  OUTLINED_FUNCTION_30_0();
  OUTLINED_FUNCTION_0_41();
  v4 = (*(v1 + 344) + **(v1 + 344));
  v2 = swift_task_alloc();
  *(v0 + 16) = v2;
  *v2 = v0;
  v2[1] = sub_2172849C8;

  return v4();
}

uint64_t __swift_memcpy5_4(uint64_t result, int *a2)
{
  v2 = *a2;
  *(result + 4) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for MusicLibrary.UnderlyingConnectionStatus(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 5))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for MusicLibrary.UnderlyingConnectionStatus(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 4) = 0;
    *result = a2 - 1;
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

  *(result + 5) = v3;
  return result;
}

uint64_t sub_217498B78(uint64_t a1)
{
  if (*(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_217498B94(uint64_t result, int a2)
{
  if (a2)
  {
    *result = a2 - 1;
    v2 = 1;
  }

  else
  {
    v2 = 0;
  }

  *(result + 4) = v2;
  return result;
}

uint64_t objectdestroyTm_1()
{

  OUTLINED_FUNCTION_1101((v0 + 32));
  OUTLINED_FUNCTION_197();

  return MEMORY[0x2821FE8E8](v1);
}

unint64_t sub_217498C10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB275F8;
  if (!qword_27CB275F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB275F8);
  }

  return result;
}

uint64_t sub_217498C64(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_1304();
  OUTLINED_FUNCTION_182();
  OUTLINED_FUNCTION_258_0();
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_19(v2);
  *v3 = v4;
  OUTLINED_FUNCTION_103_9(v3);
  OUTLINED_FUNCTION_1279();

  return sub_217481678(v5, v6, v7, v8, v9, v10, v11, v12);
}

uint64_t sub_217498CF0()
{
  OUTLINED_FUNCTION_233_0();
  OUTLINED_FUNCTION_182();
  OUTLINED_FUNCTION_395();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_19(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_132_8(v1);
  OUTLINED_FUNCTION_234();

  return sub_217483FDC(v3, v4, v5, v6, v7, v8, v9);
}

uint64_t block_copy_helper_106(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_217498E38(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_217498E7C(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_41_0();
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t sub_217498ED8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB277A8;
  if (!qword_27CB277A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB277A8);
  }

  return result;
}

uint64_t sub_217498F2C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    OUTLINED_FUNCTION_1302();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_217498F70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB27800;
  if (!qword_27CB27800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB27800);
  }

  return result;
}

uint64_t sub_217498FC4(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_1304();
  OUTLINED_FUNCTION_182();
  OUTLINED_FUNCTION_258_0();
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_19(v2);
  *v3 = v4;
  OUTLINED_FUNCTION_103_9(v3);
  OUTLINED_FUNCTION_1279();

  return sub_217481088(v5, v6, v7, v8, v9, v10, v11, v12);
}

uint64_t objectdestroy_64Tm()
{
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1((v0 + 48));

  OUTLINED_FUNCTION_953();

  return MEMORY[0x2821FE8E8](v1);
}

uint64_t sub_2174990A4()
{
  OUTLINED_FUNCTION_233_0();
  OUTLINED_FUNCTION_182();
  OUTLINED_FUNCTION_395();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_19(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_132_8(v1);
  OUTLINED_FUNCTION_234();

  return sub_217483E20(v3, v4, v5, v6, v7, v8);
}

uint64_t objectdestroy_100Tm()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 64));

  OUTLINED_FUNCTION_953();

  return MEMORY[0x2821FE8E8](v1);
}

unint64_t sub_217499260(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB278B0;
  if (!qword_27CB278B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB278B0);
  }

  return result;
}

unint64_t sub_2174992B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB278C8;
  if (!qword_27CB278C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB278C8);
  }

  return result;
}

uint64_t sub_217499308(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_1304();
  OUTLINED_FUNCTION_182();
  OUTLINED_FUNCTION_258_0();
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_19(v2);
  *v3 = v4;
  OUTLINED_FUNCTION_103_9(v3);
  OUTLINED_FUNCTION_1279();

  return sub_217480A04(v5, v6, v7, v8, v9, v10, v11, v12);
}

uint64_t sub_217499394()
{
  OUTLINED_FUNCTION_233_0();
  OUTLINED_FUNCTION_182();
  OUTLINED_FUNCTION_395();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_19(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_132_8(v1);
  OUTLINED_FUNCTION_234();

  return sub_217483BC0(v3, v4, v5, v6, v7, v8, v9);
}

unint64_t sub_217499488(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB27978;
  if (!qword_27CB27978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB27978);
  }

  return result;
}

unint64_t sub_2174994DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB27998;
  if (!qword_27CB27998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB27998);
  }

  return result;
}

uint64_t sub_217499530(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_1304();
  OUTLINED_FUNCTION_182();
  OUTLINED_FUNCTION_258_0();
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_19(v2);
  *v3 = v4;
  OUTLINED_FUNCTION_103_9(v3);
  OUTLINED_FUNCTION_1279();

  return sub_217482FE0(v5, v6, v7, v8, v9, v10, v11, v12);
}

uint64_t sub_2174995BC()
{
  OUTLINED_FUNCTION_233_0();
  OUTLINED_FUNCTION_182();
  OUTLINED_FUNCTION_395();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_19(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_132_8(v1);
  OUTLINED_FUNCTION_234();

  return sub_21748432C(v3, v4, v5, v6, v7);
}

unint64_t sub_2174996B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB27A58;
  if (!qword_27CB27A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB27A58);
  }

  return result;
}

unint64_t sub_217499754(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB27B18;
  if (!qword_27CB27B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB27B18);
  }

  return result;
}

unint64_t sub_2174997A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB27B38;
  if (!qword_27CB27B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB27B38);
  }

  return result;
}

uint64_t sub_2174997FC(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_1304();
  OUTLINED_FUNCTION_182();
  OUTLINED_FUNCTION_258_0();
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_19(v2);
  *v3 = v4;
  OUTLINED_FUNCTION_103_9(v3);
  OUTLINED_FUNCTION_1279();

  return sub_2174829F0(v5, v6, v7, v8, v9, v10, v11, v12);
}

uint64_t sub_217499888()
{
  OUTLINED_FUNCTION_233_0();
  OUTLINED_FUNCTION_182();
  OUTLINED_FUNCTION_395();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_19(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_132_8(v1);
  OUTLINED_FUNCTION_234();

  return sub_217484268(v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_2174999D0(uint64_t *a1, uint64_t *a2, _BYTE *a3, uint64_t (*a4)(uint64_t, uint64_t, unint64_t, void))
{
  v4 = *a1;
  v5 = *a2;
  v6 = 256;
  if ((a3[1] & 1) == 0)
  {
    v6 = 0;
  }

  v7 = v6 & 0xFFFFFFFFFFFFFFFELL | *a3 & 1;
  v8 = 0x10000;
  if ((a3[2] & 1) == 0)
  {
    v8 = 0;
  }

  v9 = 0x1000000;
  if ((a3[3] & 1) == 0)
  {
    v9 = 0;
  }

  v10 = v7 | v8 | v9;
  v11 = 0x100000000;
  if ((a3[4] & 1) == 0)
  {
    v11 = 0;
  }

  v12 = 0x10000000000;
  if ((a3[5] & 1) == 0)
  {
    v12 = 0;
  }

  v13 = 0x1000000000000;
  if ((a3[6] & 1) == 0)
  {
    v13 = 0;
  }

  v14 = v11 | v12;
  v15 = 0x100000000000000;
  if ((a3[7] & 1) == 0)
  {
    v15 = 0;
  }

  return a4(v4, v5, v10 | v14 | v13 | v15, a3[8] & 1);
}

unint64_t sub_217499AFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB27C48;
  if (!qword_27CB27C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB27C48);
  }

  return result;
}

unint64_t sub_217499B50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB27C60;
  if (!qword_27CB27C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB27C60);
  }

  return result;
}

uint64_t sub_217499BA4(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_1304();
  OUTLINED_FUNCTION_182();
  OUTLINED_FUNCTION_258_0();
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_19(v2);
  *v3 = v4;
  OUTLINED_FUNCTION_103_9(v3);
  OUTLINED_FUNCTION_1279();

  return sub_217481C68(v5, v6, v7, v8, v9, v10, v11, v12);
}

uint64_t sub_217499C30()
{
  OUTLINED_FUNCTION_233_0();
  OUTLINED_FUNCTION_182();
  OUTLINED_FUNCTION_395();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_19(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_132_8(v1);
  OUTLINED_FUNCTION_234();

  return sub_2174840A0(v3, v4, v5, v6, v7);
}

unint64_t sub_217499CF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB27D08;
  if (!qword_27CB27D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB27D08);
  }

  return result;
}

uint64_t objectdestroy_470Tm()
{

  OUTLINED_FUNCTION_1101((v0 + 32));
  OUTLINED_FUNCTION_203_0();

  return MEMORY[0x2821FE8E8](v1);
}

unint64_t sub_217499DD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB27DD0;
  if (!qword_27CB27DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB27DD0);
  }

  return result;
}

unint64_t sub_217499E28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB27DE8;
  if (!qword_27CB27DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB27DE8);
  }

  return result;
}

uint64_t sub_217499E7C(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_1304();
  OUTLINED_FUNCTION_182();
  OUTLINED_FUNCTION_258_0();
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_19(v2);
  *v3 = v4;
  OUTLINED_FUNCTION_103_9(v3);
  OUTLINED_FUNCTION_1279();

  return sub_217482258(v5, v6, v7, v8, v9, v10, v11, v12);
}

uint64_t sub_217499F08()
{
  OUTLINED_FUNCTION_233_0();
  OUTLINED_FUNCTION_182();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_19(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_132_8(v1);
  OUTLINED_FUNCTION_234();

  return sub_217484184(v3, v4, v5, v6, v7);
}

unint64_t sub_21749A028(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB27E98;
  if (!qword_27CB27E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB27E98);
  }

  return result;
}

unint64_t sub_21749A0CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB27F58;
  if (!qword_27CB27F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB27F58);
  }

  return result;
}

unint64_t sub_21749A170(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB28048;
  if (!qword_27CB28048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB28048);
  }

  return result;
}

unint64_t sub_21749A214(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB28108;
  if (!qword_27CB28108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB28108);
  }

  return result;
}

unint64_t sub_21749A2B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB281C8;
  if (!qword_27CB281C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB281C8);
  }

  return result;
}

uint64_t sub_21749A32C(uint64_t a1, uint64_t a2)
{
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 32) = *(a1 + 32);
  OUTLINED_FUNCTION_41_0();
  (*v3)(a2);
  return a2;
}

uint64_t objectdestroy_85Tm()
{

  OUTLINED_FUNCTION_1142();

  return MEMORY[0x2821FE8E8](v0);
}

unint64_t sub_21749A400(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280BE2658;
  if (!qword_280BE2658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE2658);
  }

  return result;
}

uint64_t sub_21749A454(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_1304();
  OUTLINED_FUNCTION_182();
  OUTLINED_FUNCTION_258_0();
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_19(v2);
  *v3 = v4;
  OUTLINED_FUNCTION_103_9(v3);
  OUTLINED_FUNCTION_1279();

  return sub_2174835D0(v5, v6, v7, v8, v9, v10, v11, v12);
}

uint64_t sub_21749A4E0()
{
  OUTLINED_FUNCTION_233_0();
  OUTLINED_FUNCTION_182();
  OUTLINED_FUNCTION_395();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_19(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_132_8(v1);
  OUTLINED_FUNCTION_234();

  return sub_217484410(v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_21749A584(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_99_0(a1, a2, a3, a4);
  OUTLINED_FUNCTION_41_0();
  v5 = OUTLINED_FUNCTION_93();
  v6(v5);
  return v4;
}

uint64_t sub_21749A624(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_99_0(a1, a2, a3, a4);
  OUTLINED_FUNCTION_41_0();
  v5 = OUTLINED_FUNCTION_93();
  v6(v5);
  return v4;
}

uint64_t sub_21749A674(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_21749A6F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB282C0;
  if (!qword_27CB282C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB282C0);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_14_25()
{
  v1 = v0[20];
  __swift_project_boxed_opaque_existential_1(v0 + 16, v0[19]);
  return v1 + 16;
}

uint64_t OUTLINED_FUNCTION_16_30@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v2 + 1872);
  v4 = *(v2 + 1848);
  *(v2 + 2168) = *(v2 + 1784);
  *(v2 + 2176) = *(v2 + 1792);
  *(v2 + 2192) = *(v2 + 1808);
  *(v2 + 2208) = *(v2 + 1824);
  *(v2 + 2224) = a1 & 0x7FFFFFFFFFFFFFFFLL;
  *(v2 + 2232) = v4;
  *(v2 + 2240) = *(v2 + 1856);
  *(v2 + 2256) = v3;
  return v1 + 128;
}

double OUTLINED_FUNCTION_18_23()
{
  *(v0 + 106) = 0;
  result = 0.0;
  *(v0 + 432) = 0u;
  *(v0 + 448) = 0u;
  *(v0 + 464) = 0;
  *(v0 + 105) = v1;
  v3 = *(*(v0 + 240) + 24);
  *(v0 + 472) = v3;
  *(v0 + 208) = v3;
  return result;
}

uint64_t OUTLINED_FUNCTION_20_26(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, __int128 a23, __int128 a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35)
{
  __swift_destroy_boxed_opaque_existential_1(a18);
  sub_2172202A4(a20, 0);
  sub_2172202A4(v39, 0);
  *v41 = a24;
  *(v41 + 16) = a23;
  *(v41 + 32) = v42;
  *(v41 + 40) = a27;
  *(v41 + 48) = a26;
  *(v41 + 56) = a30;
  *(v41 + 64) = v36;
  *(v41 + 72) = v35;
  *(v41 + 80) = v40;
  *(v41 + 88) = v38;
  *(v41 + 96) = a35;
  *(v41 + 104) = a33;
  *(v41 + 112) = a31;
  return v37 + 8;
}

uint64_t OUTLINED_FUNCTION_21_22(uint64_t result, uint64_t a2)
{
  *(v2 - 184) = result;
  *(v2 - 176) = a2;
  *(v2 - 216) = a2;
  return result;
}

uint64_t OUTLINED_FUNCTION_22_23()
{

  return sub_2177513F8();
}

void OUTLINED_FUNCTION_26_23()
{
  v3 = v0 + 16 * v1;
  v4 = *(v2 - 120);
  *(v3 + 32) = *(v2 - 128);
  *(v3 + 40) = v4;
}

__n128 OUTLINED_FUNCTION_34_18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a12, uint64_t a9, __int128 a10, __int128 a11, __n128 a13, uint64_t a14)
{
  *v14 = a10;
  *(v14 + 16) = a11;
  result = a13;
  *(v14 + 32) = a13;
  *(v14 + 48) = a14;
  return result;
}

__n128 OUTLINED_FUNCTION_40_16()
{
  v2 = *(v1 + 16);
  *(v0 + 3072) = *v1;
  *(v0 + 3088) = v2;
  result = *(v1 + 32);
  *(v0 + 3104) = result;
  *(v0 + 3120) = *(v1 + 48);
  return result;
}

__n128 OUTLINED_FUNCTION_42_14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a15, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, __n128 a16, __int128 a17, __int128 a18)
{
  *(v20 + 480) = v19;
  *(v20 + 880) = a18;
  *(v20 + 896) = a17;
  result = a16;
  *(v20 + 912) = a16;
  *(v20 + 928) = v18;
  return result;
}

uint64_t OUTLINED_FUNCTION_43_9()
{
  v1 = *(v0 + 144);
  *(v0 + 16) = *(v0 + 128);
  *(v0 + 32) = v1;
  *(v0 + 48) = *(v0 + 160);
  *(v0 + 64) = *(v0 + 176);
  *(v0 + 488) = *(v0 + 520);
  v2 = *(*(v0 + 472) + 80);
  *(v0 + 496) = v2;
  return v2;
}

uint64_t OUTLINED_FUNCTION_45_15(uint64_t a1)
{

  return swift_once();
}

__n128 OUTLINED_FUNCTION_47_12()
{
  v2 = *(v1 + 16);
  *(v0 + 224) = *v1;
  *(v0 + 240) = v2;
  result = *(v1 + 32);
  *(v0 + 256) = result;
  *(v0 + 272) = *(v1 + 48);
  return result;
}

uint64_t OUTLINED_FUNCTION_48_13@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 112) = 0;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  return v1 + 8;
}

uint64_t OUTLINED_FUNCTION_49_15(uint64_t a1, __n128 a2)
{
  *(v3 + 200) = a2;
  *(v3 + 216) = v2;
  *(v3 + 224) = 0u;
  *(v3 + 240) = 0u;
  *(v3 + 256) = 0u;
  *(v3 + 312) = v4;
  *(v3 + 320) = a1;
  return v3 + 200;
}

uint64_t OUTLINED_FUNCTION_50_12(uint64_t a1, __n128 a2)
{
  *(v3 + 200) = a2;
  *(v3 + 216) = v2;
  *(v3 + 224) = 0u;
  *(v3 + 240) = 0u;
  *(v3 + 256) = 0u;
  *(v3 + 312) = v4;
  *(v3 + 320) = a1;
  return v3 + 200;
}

__n128 OUTLINED_FUNCTION_55_10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a23, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, __int128 a21, __int128 a22, __n128 a24, uint64_t a25)
{
  *(v25 + 144) = a21;
  *(v25 + 160) = a22;
  result = a24;
  *(v25 + 176) = a24;
  *(v25 + 192) = a25;
  return result;
}

__n128 OUTLINED_FUNCTION_56_10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a12, uint64_t a9, __int128 a10, __int128 a11, __n128 a13, uint64_t a14)
{
  *v14 = a10;
  *(v14 + 16) = a11;
  result = a13;
  *(v14 + 32) = a13;
  *(v14 + 48) = a14;
  return result;
}

__n128 OUTLINED_FUNCTION_57_13()
{
  *(v0 + 160) = *(v0 + 64);
  v1 = *(v0 + 32);
  *(v0 + 112) = *(v0 + 16);
  *(v0 + 128) = v1;
  result = *(v0 + 48);
  *(v0 + 144) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_59_6()
{
  v1 = *(v0 + 136);
  v2 = *(v1 + 152);
  __swift_project_boxed_opaque_existential_1((v1 + 128), v2);
  return v2;
}

uint64_t OUTLINED_FUNCTION_60_14()
{
  v1 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v0[3]);
  return v1 + 104;
}

uint64_t OUTLINED_FUNCTION_62_11()
{
  *(v0 + 448) = 0;
  *(v0 + 416) = 0u;
  *(v0 + 432) = 0u;
  *(v0 + 400) = 0u;
  return v0 + 400;
}

uint64_t OUTLINED_FUNCTION_63_12(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  *(a16 + 48) = 0;
  *(a16 + 16) = 0u;
  *(a16 + 32) = 0u;
  *a16 = 0u;
  return a16;
}

__n128 OUTLINED_FUNCTION_64_14()
{
  v2 = *(v1 + 16);
  *(v0 + 3296) = *v1;
  *(v0 + 3312) = v2;
  result = *(v1 + 32);
  *(v0 + 3328) = result;
  *(v0 + 3344) = *(v1 + 48);
  return result;
}

__n128 OUTLINED_FUNCTION_65_12(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a13, uint64_t a9, uint64_t a10, __int128 a11, __int128 a12, __n128 a14, uint64_t a15)
{
  v16 = *(v15 + 4256);
  *v16 = a11;
  *(v16 + 16) = a12;
  result = a14;
  *(v16 + 32) = a14;
  *(v16 + 48) = a15;
  return result;
}

uint64_t OUTLINED_FUNCTION_71_11()
{
  __swift_project_boxed_opaque_existential_1((v0 + 128), v1);
  result = v2 + 40;
  *(v3 - 88) = v2 + 40;
  return result;
}

__n128 OUTLINED_FUNCTION_74_9(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19)
{
  v20 = *(v19 + 120);
  *a19 = *(v19 + 104);
  *(a19 + 16) = v20;
  result = *(v19 + 136);
  *(a19 + 32) = result;
  *(a19 + 48) = *(v19 + 152);
  return result;
}

__n128 OUTLINED_FUNCTION_76_8()
{
  v1 = *(v0 + 904);
  v3 = *(v1 + 16);
  result = *(v1 + 32);
  v4 = *(v1 + 48);
  *(v0 + 232) = *v1;
  *(v0 + 280) = v4;
  *(v0 + 264) = result;
  *(v0 + 248) = v3;
  return result;
}

void OUTLINED_FUNCTION_77_8(uint64_t a1@<X8>, __n128 a2@<Q0>, __n128 a3@<Q1>, __n128 a4@<Q2>)
{
  *(v10 + 24) = a2;
  *(v10 + 40) = a3;
  *(v9 + 2600) = a1;
  *(v9 + 2608) = v4;
  *(v9 + 2616) = v5;
  *(v9 + 2624) = v8;
  *(v10 + 88) = a4;
  *(v9 + 2648) = v6;
  *(v9 + 2656) = v7;
}

uint64_t OUTLINED_FUNCTION_78_7()
{
  *(v0 + 72) = *(v0 + 184);
  *(v0 + 88) = *(v0 + 200);
  *(v0 + 104) = *(v0 + 216);
  *(v0 + 120) = *(v0 + 232);
  return *(v0 + 472);
}

uint64_t OUTLINED_FUNCTION_83_9(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, char a12)
{
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  v16 = *(v14 + 32);
  *(a1 + 32) = *(v14 + 16);
  *(a1 + 48) = v16;
  *(a1 + 64) = *(v14 + 48);
  *(a1 + 80) = *(v14 + 64);
  *(a1 + 88) = v15;
  *(a1 + 96) = a12;
  *(a1 + 104) = v13;
  return v12;
}

uint64_t OUTLINED_FUNCTION_86_7()
{
  *(v1 + 3008) = 0;
  *(v1 + 2992) = 0u;
  *(v1 + 2976) = 0u;
  *(v1 + 2960) = 0u;
  *v0 = 0u;
  v0[1] = 0u;
  v0[2] = 0u;
  *(v1 + 3064) = 0;
  return v2;
}

__n128 OUTLINED_FUNCTION_88_8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a12, uint64_t a9, __int128 a10, __int128 a11, __n128 a13)
{
  *v13 = a10;
  v13[1] = a11;
  result = a13;
  v13[2] = a13;
  return result;
}

void OUTLINED_FUNCTION_91_9()
{
  *(v0 + 16) = v1;
  v5 = v0 + v3;
  *(v5 + 32) = v4;
  *(v5 + 40) = v2;
}

uint64_t OUTLINED_FUNCTION_98_11(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_100_9()
{
}

__n128 OUTLINED_FUNCTION_102_8()
{
  v2 = *(v0 + 16);
  *v1 = *v0;
  *(v1 + 16) = v2;
  result = *(v0 + 32);
  *(v1 + 32) = result;
  return result;
}

__n128 OUTLINED_FUNCTION_104_7()
{
  v2 = *(v0 + 16);
  *(v1 + 3072) = *v0;
  *(v1 + 3088) = v2;
  result = *(v0 + 32);
  *(v1 + 3104) = result;
  *(v1 + 3120) = *(v0 + 48);
  return result;
}

uint64_t OUTLINED_FUNCTION_105_9(uint64_t result)
{
  *(v1 + 136) = result;
  *(v1 + 80) = MEMORY[0x277D85DD0];
  return result;
}

uint64_t OUTLINED_FUNCTION_106_6(uint64_t a1)
{

  return swift_once();
}

void OUTLINED_FUNCTION_107_7()
{
  v2[12] = sub_2172AB494;
  v2[13] = v0;
  v2[14] = v1;
}

uint64_t OUTLINED_FUNCTION_108_9()
{
  result = v0;
  *(v2 - 80) = *(v1 + 16);
  return result;
}

uint64_t OUTLINED_FUNCTION_109_8()
{
  v1 = v0[458];
  v2 = v0[459];
  __swift_project_boxed_opaque_existential_1(v0 + 455, v1);

  return MusicDataRequestConfiguration.eraseToAnyDataRequestConfiguration()(v1, v2, (v0 + 333));
}

uint64_t OUTLINED_FUNCTION_110_7(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_2177513F8();
}

uint64_t OUTLINED_FUNCTION_116_11()
{
  v3 = *(v0 + 16);
  *(v1 + 352) = *v0;
  *(v1 + 368) = v3;
  *(v1 + 384) = *(v0 + 32);
  *(v1 + 400) = *(v0 + 48);

  return sub_217751DE8();
}

__n128 OUTLINED_FUNCTION_117_11(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v11 = *(v10 + 16);
  *a10 = *v10;
  *(a10 + 16) = v11;
  result = *(v10 + 32);
  *(a10 + 32) = result;
  *(a10 + 48) = *(v10 + 48);
  return result;
}

void OUTLINED_FUNCTION_121_9(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  v24 = (a22 + 16 * v22);
  v25 = v24[1];
  *(v23 + 16) = *v24;
  *(v23 + 24) = v25;
}

__n128 OUTLINED_FUNCTION_125_6(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a12, uint64_t a9, __int128 a10, __int128 a11, __n128 a13)
{
  *v13 = a10;
  v13[1] = a11;
  result = a13;
  v13[2] = a13;
  return result;
}

void OUTLINED_FUNCTION_130_8(uint64_t a1@<X8>, __n128 a2@<Q0>, __n128 a3@<Q1>, __n128 a4@<Q2>)
{
  *(v10 + 24) = a2;
  *(v10 + 40) = a3;
  *(v9 + 2600) = a1;
  *(v9 + 2608) = v4;
  *(v9 + 2616) = v5;
  *(v9 + 2624) = v8;
  *(v10 + 88) = a4;
  *(v9 + 2648) = v6;
  *(v9 + 2656) = v7;
}

__n128 OUTLINED_FUNCTION_137_6()
{
  v2 = *(v1 + 16);
  *v0 = *v1;
  *(v0 + 16) = v2;
  result = *(v1 + 32);
  *(v0 + 32) = result;
  return result;
}

double OUTLINED_FUNCTION_138_4()
{
  result = 0.0;
  *(v0 + 176) = 0u;
  *(v0 + 192) = 0u;
  *(v0 + 144) = 0u;
  *(v0 + 160) = 0u;
  *(v0 + 208) = 2;
  return result;
}

__n128 OUTLINED_FUNCTION_142_8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a11, __int128 a9, __int128 a10, __n128 a12, uint64_t a13)
{
  v14 = *(v13 + 4256);
  *v14 = a9;
  *(v14 + 16) = a10;
  result = a12;
  *(v14 + 32) = a12;
  *(v14 + 48) = a13;
  return result;
}

void OUTLINED_FUNCTION_148_5()
{

  JUMPOUT(0x21CEA23B0);
}

__n128 OUTLINED_FUNCTION_150_6(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, __int128 a23, __int128 a24, __int128 a25, uint64_t a27, char a28)
{
  v27[9] = a23;
  v27[10] = a24;
  v27[11] = a25;
  result = *(&a25 + 9);
  *(v27 + 185) = *(&a25 + 9);
  return result;
}

__n128 OUTLINED_FUNCTION_151_5()
{
  v2 = *(v0 + 16);
  *(v1 + 272) = *v0;
  *(v1 + 288) = v2;
  *(v1 + 304) = *(v0 + 32);
  result = *(v0 + 41);
  *(v1 + 313) = result;
  return result;
}

__n128 OUTLINED_FUNCTION_152_8()
{
  v2 = *(v0 + 16);
  *v1 = *v0;
  *(v1 + 16) = v2;
  result = *(v0 + 32);
  *(v1 + 32) = result;
  *(v1 + 48) = *(v0 + 48);
  return result;
}

uint64_t OUTLINED_FUNCTION_156_7()
{
  v3 = *v0;
  v4 = v0[1];
  v5 = v0[2];
  *(v1 + 48) = *(v0 + 6);
  *(v1 + 16) = v4;
  *(v1 + 32) = v5;
  *v1 = v3;
  return v2 + 8;
}

uint64_t OUTLINED_FUNCTION_157_6()
{
  *(v1 + 2888) = v0;
  *(v1 + 2896) = 0;
  return 25705;
}

void OUTLINED_FUNCTION_164_5()
{
  *(v1 + 16) = v4;
  v5 = v1 + 16 * v0;
  *(v5 + 32) = v2;
  *(v5 + 40) = v3;
}

uint64_t OUTLINED_FUNCTION_166_5(uint64_t a1, uint64_t a2)
{
  v2[116] = a1;
  v2[117] = a2;
  return v2[114];
}

uint64_t OUTLINED_FUNCTION_167_7()
{
  v1 = __swift_project_boxed_opaque_existential_1((v0 + 792), *(v0 + 816));
  v2 = *(*v1 + 24);
  v3 = *(*v1 + 32);
  *(v0 + 872) = *(*v1 + 16);
  *(v0 + 880) = v2;
  *(v0 + 888) = v3;

  return swift_task_alloc();
}

void OUTLINED_FUNCTION_169_6(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  v27 = sub_2172CB1B0(*(v26 + 80), *(v26 + 88), *(v26 + 96));

  sub_2174417EC(v27, v28, v29, v30, v31, v32, v33, v34, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22, a23, a24, a25, a26);
}

__n128 OUTLINED_FUNCTION_175_5()
{
  v2 = *(v1 + 16);
  *v0 = *v1;
  *(v0 + 16) = v2;
  result = *(v1 + 32);
  *(v0 + 32) = result;
  return result;
}

__n128 OUTLINED_FUNCTION_178_5()
{
  v2 = *(v0 + 16);
  *v1 = *v0;
  *(v1 + 16) = v2;
  result = *(v0 + 32);
  *(v1 + 32) = result;
  return result;
}

__n128 OUTLINED_FUNCTION_181_5()
{
  v3 = *(v2 + 16);
  *v0 = *v2;
  *(v0 + 16) = v3;
  result = *(v2 + 32);
  *(v0 + 32) = result;
  *(v1 + 3064) = *(v1 + 2952);
  return result;
}

uint64_t OUTLINED_FUNCTION_184_4()
{

  return sub_2173B6DA4(0xD000000000000015, v3 | 0x8000000000000000, v1, 0, (v0 + 112), v2);
}

void OUTLINED_FUNCTION_185_2()
{

  JUMPOUT(0x21CEA23B0);
}

uint64_t OUTLINED_FUNCTION_186_4()
{

  return sub_2177513F8();
}

__n128 OUTLINED_FUNCTION_187_5@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a1 + 16) = v2;
  *(a1 + 24) = a2;
  *(a1 + 32) = v4;
  *(a1 + 40) = v6;
  v7 = *(v3 + 16);
  *(a1 + 48) = *v3;
  *(a1 + 64) = v7;
  result = *(v3 + 32);
  *(a1 + 80) = result;
  *(a1 + 96) = *(v3 + 48);
  *(a1 + 104) = v5;
  return result;
}

__n128 OUTLINED_FUNCTION_189_4()
{
  *(v0 + 176) = *(v0 + 232);
  v1 = *(v0 + 216);
  result = *(v0 + 200);
  v3 = *(v0 + 184);
  *(v0 + 144) = result;
  *(v0 + 160) = v1;
  *(v0 + 128) = v3;
  return result;
}

uint64_t OUTLINED_FUNCTION_191_4()
{
  v2 = v0[21];
  v3 = v0[22];
  __swift_project_boxed_opaque_existential_1(v0 + 18, v2);

  return MusicDataRequestConfiguration.eraseToAnyDataRequestConfiguration()(v2, v3, v1);
}

uint64_t OUTLINED_FUNCTION_192_5()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 832));
  __swift_destroy_boxed_opaque_existential_1((v0 + 792));
  return v0 + 8;
}

uint64_t OUTLINED_FUNCTION_197_4(uint64_t result)
{
  *(result + 8) = v1;
  *(v4 + 16) = v2;
  *(v4 + 24) = v3;
  return result;
}

uint64_t OUTLINED_FUNCTION_198_4(uint64_t result, uint64_t a2)
{
  *(v2 - 184) = result;
  *(v2 - 176) = a2;
  *(v2 - 216) = a2;
  return result;
}

uint64_t OUTLINED_FUNCTION_201_4()
{
  result = *(v1 - 184);
  v3 = *(v1 - 216);
  *(v1 - 160) = result;
  *(v1 - 152) = v3;
  *(v1 - 144) = v0;
  *(v1 - 136) = 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_208_4()
{
  v3 = *(v1 + 16);
  *(v0 + 336) = *v1;
  *(v0 + 352) = v3;
  *(v0 + 368) = *(v1 + 32);
  *(v0 + 384) = *(v1 + 48);

  return sub_217751DE8();
}

uint64_t OUTLINED_FUNCTION_211_2()
{
  v2 = *(v0 + 376);
  v3 = *(v0 + 368);

  return sub_2172CB230(v2, v3);
}

uint64_t OUTLINED_FUNCTION_212_2()
{
  *(v1 - 128) = v0;

  return sub_2172C8720();
}

uint64_t OUTLINED_FUNCTION_213_4()
{
  *(v0 + 952) = 0;
  *(v0 + 920) = 0u;
  *(v0 + 936) = 0u;
  *(v0 + 888) = 0u;
  *(v0 + 904) = 0u;
  *(v0 + 856) = 0u;
  *(v0 + 872) = 0u;
  *(v0 + 840) = 0u;

  return type metadata accessor for SharedRelatedItemStore();
}

__n128 OUTLINED_FUNCTION_215_4()
{
  v2[121].n128_u64[1] = v1;
  result = v2[87];
  v2[122] = result;
  v2[123].n128_u8[0] = v0;
  return result;
}

uint64_t OUTLINED_FUNCTION_216_4()
{
  *(v0 + 304) = 0;
  *(v0 + 272) = 0u;
  *(v0 + 288) = 0u;
  return v0 + 1560;
}

__n128 OUTLINED_FUNCTION_218_2()
{
  v2 = *(v1 + 16);
  *v0 = *v1;
  *(v0 + 16) = v2;
  result = *(v1 + 32);
  *(v0 + 32) = result;
  return result;
}

double OUTLINED_FUNCTION_219_4()
{
  result = 0.0;
  v0[11] = 0u;
  v0[12] = 0u;
  v0[9] = 0u;
  v0[10] = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_220_4()
{
  v2 = *(v0 + 488);

  return sub_217204DD0(v2);
}

__n128 OUTLINED_FUNCTION_221_4()
{
  v2 = *(v0 + 16);
  *v1 = *v0;
  *(v1 + 16) = v2;
  *(v1 + 32) = *(v0 + 32);
  result = *(v0 + 41);
  *(v1 + 41) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_222_3()
{
  v1 = *(v0 + 248);
  __swift_project_boxed_opaque_existential_1((v0 + 224), v1);
  return v1;
}

__n128 OUTLINED_FUNCTION_226_4@<Q0>(_OWORD *a1@<X8>, uint64_t a2, uint64_t a3, __int128 a4, __int128 a5, __n128 a6)
{
  *a1 = a4;
  a1[1] = a5;
  result = a6;
  a1[2] = a6;
  return result;
}

double OUTLINED_FUNCTION_227_4()
{
  *(v0 + 48) = 0;
  result = 0.0;
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  *v0 = 0u;
  return result;
}

__n128 OUTLINED_FUNCTION_228_4()
{
  v2 = *(v0 + 16);
  *v1 = *v0;
  *(v1 + 16) = v2;
  result = *(v0 + 32);
  *(v1 + 32) = result;
  return result;
}

void OUTLINED_FUNCTION_229_3(uint64_t a1@<X8>)
{
  v4[325] = a1;
  v4[326] = v1;
  v4[327] = v2;
  v4[328] = v3;
}

double OUTLINED_FUNCTION_237_2()
{
  *(v0 + 336) = 0;
  result = 0.0;
  *(v0 + 304) = 0u;
  *(v0 + 320) = 0u;
  *(v0 + 288) = 0u;
  return result;
}

void OUTLINED_FUNCTION_240_1()
{
  v3 = v1 + 16 * v0;
  v4 = *(v3 + 40);
  *(v2 - 128) = *(v3 + 32);
  *(v2 - 120) = v4;
}

uint64_t OUTLINED_FUNCTION_244_0()
{
  v0[61] = v1;
  v2 = *(v0[59] + 80);
  v0[62] = v2;
  return v2;
}

double OUTLINED_FUNCTION_245_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  result = 0.0;
  *a10 = 0u;
  *(a10 + 16) = 0u;
  *(a10 + 32) = 0u;
  *(a10 + 48) = 0;
  return result;
}

void OUTLINED_FUNCTION_247_0(float a1)
{
  *v1 = a1;

  JUMPOUT(0x21CEA23B0);
}

void OUTLINED_FUNCTION_248_0(float a1)
{
  *v1 = a1;

  JUMPOUT(0x21CEA23B0);
}

double OUTLINED_FUNCTION_250_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  *(a12 + 48) = 0;
  result = 0.0;
  *(a12 + 16) = 0u;
  *(a12 + 32) = 0u;
  *a12 = 0u;
  *(v12 + 360) = -1;
  return result;
}

uint64_t OUTLINED_FUNCTION_252_0(uint64_t a1, uint64_t a2)
{

  return sub_2177513F8();
}

uint64_t OUTLINED_FUNCTION_253_0(uint64_t a1, uint64_t a2)
{

  return sub_2177513F8();
}

uint64_t OUTLINED_FUNCTION_254_0(uint64_t a1, uint64_t a2)
{

  return sub_2177513F8();
}

uint64_t OUTLINED_FUNCTION_259()
{
  v3 = *(v1 + 136);
  v4 = *(v1 + 152);
  v5 = *(v1 + 120);
  *(v0 + 48) = *(v1 + 168);
  *(v0 + 16) = v3;
  *(v0 + 32) = v4;
  *v0 = v5;
}

void OUTLINED_FUNCTION_260()
{

  sub_2172CA2C4(v3, v4, v5, v2 + 32, v0, (v1 + 16), v1 + 32);
}

uint64_t OUTLINED_FUNCTION_261()
{

  return sub_217751DE8();
}

uint64_t OUTLINED_FUNCTION_262(uint64_t a1, uint64_t a2)
{
  v3[64] = a1;
  v3[65] = a2;
  v3[59] = v4;
  v3[66] = *(v2 + 56);
}

uint64_t OUTLINED_FUNCTION_263()
{

  return sub_2171F0688(v2 + 456, v2 + 712, v1, v0);
}

uint64_t *OUTLINED_FUNCTION_264()
{
  v1 = v0[21];
  v2 = v0[22];
  __swift_project_boxed_opaque_existential_1(v0 + 18, v1);
  v0[41] = v1;
  v0[42] = *(v2 + 8);

  return __swift_allocate_boxed_opaque_existential_0(v0 + 38);
}

double OUTLINED_FUNCTION_265()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 264));
  sub_2171F3F0C((v0 + 424), v0 + 264);
  __swift_destroy_boxed_opaque_existential_1((v0 + 344));
  sub_2171F3F0C((v0 + 264), *(v0 + 512));
}

uint64_t OUTLINED_FUNCTION_266()
{
  __swift_project_boxed_opaque_existential_1((v0 + v1), *(v0 + 4184));

  return sub_217751DE8();
}

uint64_t OUTLINED_FUNCTION_268(uint64_t a1)
{

  return sub_217751618();
}

uint64_t OUTLINED_FUNCTION_271()
{
}

__n128 OUTLINED_FUNCTION_273()
{
  v2 = *(v0 + 16);
  *v1 = *v0;
  *(v1 + 16) = v2;
  result = *(v0 + 32);
  *(v1 + 32) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_290(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, v1);

  return sub_217751DE8();
}

__n128 OUTLINED_FUNCTION_291()
{
  *(v0 + 120) = *(v1 + 112);
  v3 = *(v1 + 80);
  result = *(v1 + 96);
  *(v0 + 104) = result;
  *(v0 + 88) = v3;
  return result;
}

uint64_t *OUTLINED_FUNCTION_292()
{
  v2 = v1[21];
  v3 = v1[22];
  __swift_project_boxed_opaque_existential_1(v0, v2);
  v1[41] = v2;
  v1[42] = *(v3 + 8);

  return __swift_allocate_boxed_opaque_existential_0(v1 + 38);
}

uint64_t *OUTLINED_FUNCTION_293()
{
  sub_2171F3F0C((v0 + 88), v0 + 48);
  v2 = *(v1 + 144);
  __swift_project_boxed_opaque_existential_1((v0 + 48), v2);
  *(v1 + 256) = v2;

  return __swift_allocate_boxed_opaque_existential_0((v0 + 160));
}

void OUTLINED_FUNCTION_294(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[33] = 1;
  v6[34] = a1;
  v6[35] = a6;
}

uint64_t OUTLINED_FUNCTION_295()
{
  sub_217283C5C(v0, 0);

  return sub_217751DE8();
}

uint64_t OUTLINED_FUNCTION_296()
{
  sub_217283C5C(*(v2 + 592), *(v2 + 600));

  return sub_2171F0790(v2 + 592, v1, v0);
}

__n128 OUTLINED_FUNCTION_302(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v13 = *(v12 + 16);
  *a12 = *v12;
  *(a12 + 16) = v13;
  *(a12 + 32) = *(v12 + 32);
  result = *(v12 + 41);
  *(a12 + 41) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_304()
{
  v3 = v0[1];
  v1[25] = *v0;
  v1[26] = v3;
  v1[27] = v0[2];
  *(v1 + 441) = *(v0 + 41);

  return sub_217751DE8();
}

__n128 OUTLINED_FUNCTION_305(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __int128 a10, __int128 a11, __int128 a12, uint64_t a14, char a15)
{
  *v14 = a10;
  v14[1] = a11;
  v14[2] = a12;
  result = *(&a12 + 9);
  *(v14 + 41) = *(&a12 + 9);
  return result;
}

uint64_t OUTLINED_FUNCTION_307(uint64_t result)
{
  *(v3 + 624) = result;
  *(result + 16) = v2;
  *(result + 24) = v4;
  *(result + 32) = v6;
  *(result + 40) = v5;
  *(result + 48) = v1;
  *(result + 56) = v7;
  return result;
}

void OUTLINED_FUNCTION_316()
{
  v3 = v1 + 16 * v0;
  v4 = *(v3 + 40);
  *(v2 - 128) = *(v3 + 32);
  *(v2 - 120) = v4;
}

void OUTLINED_FUNCTION_317()
{
  v3 = v0 + 16 * v1;
  v4 = *(v3 + 40);
  *(v2 - 128) = *(v3 + 32);
  *(v2 - 120) = v4;
}

__n128 OUTLINED_FUNCTION_320@<Q0>(_OWORD *a1@<X8>, __int128 a2, __int128 a3, __n128 a4)
{
  *a1 = a2;
  a1[1] = a3;
  result = a4;
  a1[2] = a4;
  return result;
}

double OUTLINED_FUNCTION_322()
{
  result = 0.0;
  *(v0 + 16) = 0u;
  return result;
}

void *OUTLINED_FUNCTION_323(void *result)
{
  result[2] = v5;
  result[3] = v1;
  result[4] = v2;
  result[5] = v4;
  result[6] = v3;
  return result;
}

uint64_t OUTLINED_FUNCTION_326()
{

  return swift_task_alloc();
}

__n128 OUTLINED_FUNCTION_328()
{
  v2 = *(v1 + 16);
  *v0 = *v1;
  *(v0 + 16) = v2;
  result = *(v1 + 32);
  *(v0 + 32) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_332()
{
  v3 = v0[31];
  v4 = v0[32];
  v5 = v0[43];

  return sub_217441D1C(v3, v4, v5, v1 + 128);
}

void OUTLINED_FUNCTION_333()
{

  JUMPOUT(0x21CEA23B0);
}

uint64_t OUTLINED_FUNCTION_334(uint64_t a1, uint64_t a2)
{

  return sub_2177513F8();
}

double OUTLINED_FUNCTION_335()
{
  result = 0.0;
  *v0 = 0u;
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_336()
{
  v1 = *(v0 + 520);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v4 = *(v3 + 8);

  return PropertyProviderBackedItem.staticPropertyProvider.getter(v2, v4);
}

uint64_t OUTLINED_FUNCTION_337(uint64_t a1)
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_338()
{

  return sub_217753058();
}

uint64_t OUTLINED_FUNCTION_343(uint64_t result)
{
  *(v1 + 136) = result;
  *(v1 + 80) = MEMORY[0x277D85DD0];
  return result;
}

uint64_t OUTLINED_FUNCTION_346()
{
  v2 = *(v1 + 832);
  sub_2171F3F0C(v0, v1 + 648);
  v3 = *(v1 + 680);
  __swift_project_boxed_opaque_existential_1((v1 + 648), *(v1 + 672));
  *(v1 + 369) = *(v2 + 56);
  return v3 + 24;
}

uint64_t OUTLINED_FUNCTION_348(uint64_t a1)
{

  return sub_217751308();
}

uint64_t OUTLINED_FUNCTION_367()
{
  v4 = *(v3 - 120);
  v5 = v0 + 16 * v1;
  *(v5 + 32) = *(v3 - 128);
  *(v5 + 40) = v4;
  return v2 + 104;
}

void OUTLINED_FUNCTION_371()
{
  *(v1 + 16) = v4;
  v5 = v1 + 16 * v0;
  *(v5 + 32) = v2;
  *(v5 + 40) = v3;
}

uint64_t OUTLINED_FUNCTION_372(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18)
{
  __swift_project_boxed_opaque_existential_1(a18, *(v18 + 816));

  return sub_217751DE8();
}

void OUTLINED_FUNCTION_381(unint64_t a1@<X8>)
{

  sub_2172B1A50(a1 > 1, v1, 1, v2);
}

uint64_t OUTLINED_FUNCTION_382()
{
  *(v0 + 584) = *(v0 + 664);
  v2 = *(v0 + 648);
  *(v0 + 552) = *(v0 + 632);
  *(v0 + 568) = v2;

  return __swift_destroy_boxed_opaque_existential_1((v0 + 592));
}

void OUTLINED_FUNCTION_389(unint64_t a1@<X8>)
{

  sub_2172768E8(a1 > 1, v1, 1);
}

void OUTLINED_FUNCTION_390()
{
  v2 = *(v0 + 16) + 1;

  sub_2172768E8(0, v2, 1);
}

uint64_t OUTLINED_FUNCTION_394()
{
  __swift_project_boxed_opaque_existential_1((v0 + 512), *(v0 + 536));
}

uint64_t OUTLINED_FUNCTION_402()
{
  *(v0 + 32) = 0;
  *v0 = 0u;
  *(v0 + 16) = 0u;
  return v0;
}

double OUTLINED_FUNCTION_403()
{
}

void OUTLINED_FUNCTION_405()
{

  JUMPOUT(0x21CEA23B0);
}

double OUTLINED_FUNCTION_407(uint64_t a1)
{
  *(v2 - 16) = v1;
  *(v2 - 8) = 1;
  result = 0.0;
  *(v2 + 40) = 0u;
  *(v2 + 56) = 0u;
  *(v2 + 72) = v3;
  *(v2 + 80) = a1;
  return result;
}

double OUTLINED_FUNCTION_408()
{
  result = 0.0;
  *v0 = 0u;
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_409()
{
}

void OUTLINED_FUNCTION_410()
{

  sub_2172CA228(v3, v4, v1 + 32, v2, (v0 + 16));
}

uint64_t OUTLINED_FUNCTION_412(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{

  return sub_217504048();
}

uint64_t OUTLINED_FUNCTION_418()
{
}

uint64_t OUTLINED_FUNCTION_426()
{
  v4 = *v0;
  v5 = v0[1];
  v6 = v0[2];
  *(v2 + 48) = *(v0 + 6);
  *(v2 + 16) = v5;
  *(v2 + 32) = v6;
  *v2 = v4;

  return __swift_destroy_boxed_opaque_existential_1(v1);
}

uint64_t OUTLINED_FUNCTION_428()
{

  return sub_2177522F8();
}

uint64_t OUTLINED_FUNCTION_435()
{

  return sub_217751ED8();
}

uint64_t OUTLINED_FUNCTION_436()
{

  return sub_217751ED8();
}

uint64_t OUTLINED_FUNCTION_437()
{

  return sub_217751ED8();
}

uint64_t OUTLINED_FUNCTION_438()
{

  return sub_217751ED8();
}

uint64_t OUTLINED_FUNCTION_439()
{

  return sub_217751ED8();
}

uint64_t OUTLINED_FUNCTION_440(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{

  return sub_2177513F8();
}

uint64_t OUTLINED_FUNCTION_441()
{

  return sub_217753058();
}

uint64_t OUTLINED_FUNCTION_442()
{

  return sub_2171F0688(v2 + 456, v2 + 712, v1, v0);
}

__n128 OUTLINED_FUNCTION_445(__n128 a1, __n128 a2)
{
  *v2 = a1;
  v2[1] = a2;
  result = v3[2];
  v2[2] = result;
  v2[3].n128_u64[0] = v3[3].n128_u64[0];
  return result;
}

uint64_t OUTLINED_FUNCTION_452()
{

  return sub_217751348();
}

uint64_t OUTLINED_FUNCTION_454()
{
  v2 = *(v0 - 104);
  v3 = *(v0 - 96);

  return sub_2172C62BC(v2, v3);
}

uint64_t OUTLINED_FUNCTION_455()
{

  return type metadata accessor for AnyMusicProperty();
}

uint64_t OUTLINED_FUNCTION_456(uint64_t a1)
{

  return swift_dynamicCast();
}

id OUTLINED_FUNCTION_457()
{
  v2 = *(v0 + 224);
  *(v0 + 120) = v2;

  return v2;
}

uint64_t OUTLINED_FUNCTION_458(uint64_t a1)
{

  return sub_2177521E8();
}

uint64_t OUTLINED_FUNCTION_461()
{
  __swift_getEnumTagSinglePayload(v0, 1, v1);
}

uint64_t OUTLINED_FUNCTION_463(uint64_t a1)
{

  return swift_dynamicCast();
}

double OUTLINED_FUNCTION_476()
{
}

double OUTLINED_FUNCTION_477(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, __int128 *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  *(v16 + 16) = v15;
  v20 = a11[1];
  v19 = a11[2];
  v21 = (v16 + (v17 << 6));
  v22 = *a11;
  *(v21 + 73) = *(a11 + 41);
  v21[3] = v20;
  v21[4] = v19;
  v21[2] = v22;
  *(a15 + 48) = 0;
  result = 0.0;
  *(a15 + 16) = 0u;
  *(a15 + 32) = 0u;
  *a15 = 0u;
  *(v18 + 568) = -2;
  return result;
}

uint64_t OUTLINED_FUNCTION_480()
{
  v2 = *(v0 + 672);

  return sub_217204DD0(v2);
}

void OUTLINED_FUNCTION_484()
{
  __swift_destroy_boxed_opaque_existential_1(v0);

  JUMPOUT(0x21CEA4360);
}

void OUTLINED_FUNCTION_485()
{
  __swift_destroy_boxed_opaque_existential_1(v0);

  JUMPOUT(0x21CEA4360);
}

uint64_t OUTLINED_FUNCTION_492()
{

  return sub_217751DE8();
}

uint64_t OUTLINED_FUNCTION_493()
{
}

uint64_t OUTLINED_FUNCTION_494()
{

  return sub_217751DE8();
}

void *OUTLINED_FUNCTION_495(uint64_t a1)
{
  v1[345] = a1;

  return memcpy(v1 + 165, v1 + 105, 0x78uLL);
}

void *OUTLINED_FUNCTION_496(uint64_t a1)
{
  *(v2 + 2760) = a1;

  return memcpy((v2 + 1320), v1, 0x78uLL);
}

double OUTLINED_FUNCTION_498()
{
  *(v0 + 416) = 0;
  result = 0.0;
  *(v0 + 384) = 0u;
  *(v0 + 400) = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_502(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  __swift_destroy_boxed_opaque_existential_1((v11 + 144));

  return sub_21725EE54(a11 + 128, v12);
}

void OUTLINED_FUNCTION_508()
{
  v3 = v0 + 16 * v1;
  v4 = *(v2 - 120);
  *(v3 + 32) = *(v2 - 128);
  *(v3 + 40) = v4;
}

void OUTLINED_FUNCTION_514(unint64_t a1@<X8>, __n128 a2@<Q0>, __n128 a3@<Q1>, __n128 a4@<Q2>)
{
  v4[3].n128_u64[0] = a1;
  v4[1] = a3;
  v4[2] = a4;
  *v4 = a2;
}

uint64_t OUTLINED_FUNCTION_538@<X0>(uint64_t a1@<X8>)
{
  *(v1 + 2736) = a1;

  return swift_task_alloc();
}

uint64_t OUTLINED_FUNCTION_557()
{
  *(v0 + 304) = 0;
  *(v0 + 272) = 0u;
  *(v0 + 288) = 0u;
  *(v0 + 256) = 0u;
  *(v0 + 312) = -1;
  return v0 + 256;
}

uint64_t OUTLINED_FUNCTION_563()
{
  v1 = *(v0 + 160);
  *(v0 + 16) = *(v0 + 144);
  *(v0 + 32) = v1;
  *(v0 + 48) = *(v0 + 176);
  *(v0 + 57) = *(v0 + 185);
  *(v0 + 552) = *(v0 + 584);
  v2 = *(*(v0 + 536) + 80);
  *(v0 + 560) = v2;
  return v2;
}

__n128 OUTLINED_FUNCTION_564()
{
  v2 = *(v1 + 16);
  *(v0 + 256) = *v1;
  *(v0 + 272) = v2;
  *(v0 + 288) = *(v1 + 32);
  result = *(v1 + 41);
  *(v0 + 297) = result;
  return result;
}

unint64_t OUTLINED_FUNCTION_565(__n128 a1)
{
  v2[4] = a1;
  v3 = v1[32].n128_u64[1];
  v1[1] = a1;
  v1[2] = a1;
  v1[3].n128_u64[0] = 0;
  v1[3].n128_u8[8] = -1;
  v1[5] = a1;
  v1[6] = a1;
  v1[7].n128_u64[0] = 0;
  v1[7].n128_u8[8] = -1;
  v4 = *(v3 + 64);
  v1[33].n128_u64[0] = v4;
  return v4;
}

uint64_t OUTLINED_FUNCTION_567()
{
  *(v0 + 200) = *(v0 + 488);
  *(v0 + 208) = 1;

  return sub_217751DE8();
}

void *OUTLINED_FUNCTION_568()
{
  v2 = (*(v0 + 2736) + 32);

  return memcpy((v0 + 1976), v2, 0x59uLL);
}

void OUTLINED_FUNCTION_572(unint64_t a1@<X8>, __n128 a2@<Q0>, __n128 a3@<Q1>, __n128 a4@<Q2>)
{
  *v4 = a4;
  v4[1] = a3;
  v4[2] = a2;
  v4[3].n128_u64[0] = a1;
}

uint64_t OUTLINED_FUNCTION_575()
{
  v1 = __swift_project_boxed_opaque_existential_1((v0 + 1048), *(v0 + 1072)) + 2;

  return sub_21729C5E8(v1, v0 + 1088);
}

uint64_t OUTLINED_FUNCTION_580()
{
  *(v0 + 432) = 0;
  *(v0 + 400) = 0u;
  *(v0 + 416) = 0u;
  *(v0 + 384) = 0u;
  *(v0 + 440) = -1;
  return v0 + 384;
}

uint64_t OUTLINED_FUNCTION_586()
{
  __swift_project_boxed_opaque_existential_1((v0 + 792), *(v0 + 816));

  return sub_217442084();
}

double OUTLINED_FUNCTION_608()
{
  *(v1 + 80) = v0;
  *(v1 + 88) = v4;
  result = 0.0;
  *(v1 + 136) = 0u;
  *(v1 + 152) = 0u;
  *(v1 + 168) = v3;
  *(v1 + 176) = v2;
  return result;
}

uint64_t OUTLINED_FUNCTION_609(uint64_t a1, uint64_t a2)
{

  return swift_isEscapingClosureAtFileLocation();
}

uint64_t OUTLINED_FUNCTION_612()
{

  return sub_217752C78();
}

uint64_t OUTLINED_FUNCTION_613(uint64_t a1, uint64_t a2)
{
  v2[68] = a1;
  v2[69] = a2;
  v2[70] = v3;
}

uint64_t OUTLINED_FUNCTION_614(uint64_t a1, uint64_t a2)
{
  v2[64] = a1;
  v2[65] = a2;
  v2[66] = v3;
}

void OUTLINED_FUNCTION_615(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

double OUTLINED_FUNCTION_616()
{
}

void OUTLINED_FUNCTION_617(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_618()
{
}

uint64_t OUTLINED_FUNCTION_619()
{

  return ResourceType.supportsFilteredByEquivalencies.getter();
}

void OUTLINED_FUNCTION_620()
{

  JUMPOUT(0x21CEA23B0);
}

uint64_t OUTLINED_FUNCTION_621()
{

  return sub_217751DE8();
}

void OUTLINED_FUNCTION_622()
{

  sub_217434F08();
}