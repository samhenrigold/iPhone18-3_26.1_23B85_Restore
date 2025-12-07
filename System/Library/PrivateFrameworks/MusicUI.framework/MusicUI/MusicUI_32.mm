void sub_2169B9A98(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v20 = a1;
  v21 = a2;
  v5 = type metadata accessor for SocialCardLockup(0);
  MEMORY[0x28223BE20](v5 - 8);
  v18[2] = v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = v18 - v8;
  v10 = 0;
  v11 = *(a3 + 16);
  v19 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v11 == v10)
    {

      return;
    }

    if (v10 >= *(a3 + 16))
    {
      break;
    }

    sub_2169BBAE8();
    v12 = v20(v9);
    if (v3)
    {
      sub_2169BBB3C(v9, type metadata accessor for SocialCardLockup);

      return;
    }

    if (v12)
    {
      sub_2169BBB94();
      v13 = v19;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v22 = v13;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_216AB9BC8(0, *(v13 + 16) + 1, 1);
        v13 = v22;
      }

      v16 = *(v13 + 16);
      v15 = *(v13 + 24);
      v17 = v16 + 1;
      if (v16 >= v15 >> 1)
      {
        v19 = v16 + 1;
        v18[1] = v16;
        sub_216AB9BC8(v15 > 1, v16 + 1, 1);
        v17 = v19;
        v13 = v22;
      }

      ++v10;
      *(v13 + 16) = v17;
      v19 = v13;
      sub_2169BBB94();
    }

    else
    {
      sub_2169BBB3C(v9, type metadata accessor for SocialCardLockup);
      ++v10;
    }
  }

  __break(1u);
}

void sub_2169B9D2C(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v20 = a1;
  v21 = a2;
  v5 = type metadata accessor for ListLockup(0);
  MEMORY[0x28223BE20](v5 - 8);
  v18[2] = v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = v18 - v8;
  v10 = 0;
  v11 = *(a3 + 16);
  v19 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v11 == v10)
    {

      return;
    }

    if (v10 >= *(a3 + 16))
    {
      break;
    }

    sub_2169BBAE8();
    v12 = v20(v9);
    if (v3)
    {
      sub_2169BBB3C(v9, type metadata accessor for ListLockup);

      return;
    }

    if (v12)
    {
      sub_2169BBB94();
      v13 = v19;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v22 = v13;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_216AB9C20(0, *(v13 + 16) + 1, 1);
        v13 = v22;
      }

      v16 = *(v13 + 16);
      v15 = *(v13 + 24);
      v17 = v16 + 1;
      if (v16 >= v15 >> 1)
      {
        v19 = v16 + 1;
        v18[1] = v16;
        sub_216AB9C20(v15 > 1, v16 + 1, 1);
        v17 = v19;
        v13 = v22;
      }

      ++v10;
      *(v13 + 16) = v17;
      v19 = v13;
      sub_2169BBB94();
    }

    else
    {
      sub_2169BBB3C(v9, type metadata accessor for ListLockup);
      ++v10;
    }
  }

  __break(1u);
}

void sub_2169B9FC0(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v20 = a1;
  v21 = a2;
  v5 = type metadata accessor for RecentSearchLockup(0);
  MEMORY[0x28223BE20](v5 - 8);
  v18[2] = v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = v18 - v8;
  v10 = 0;
  v11 = *(a3 + 16);
  v19 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v11 == v10)
    {

      return;
    }

    if (v10 >= *(a3 + 16))
    {
      break;
    }

    sub_2169BBAE8();
    v12 = v20(v9);
    if (v3)
    {
      sub_2169BBB3C(v9, type metadata accessor for RecentSearchLockup);

      return;
    }

    if (v12)
    {
      sub_2169BBB94();
      v13 = v19;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v22 = v13;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_216AB9C78(0, *(v13 + 16) + 1, 1);
        v13 = v22;
      }

      v16 = *(v13 + 16);
      v15 = *(v13 + 24);
      v17 = v16 + 1;
      if (v16 >= v15 >> 1)
      {
        v19 = v16 + 1;
        v18[1] = v16;
        sub_216AB9C78(v15 > 1, v16 + 1, 1);
        v17 = v19;
        v13 = v22;
      }

      ++v10;
      *(v13 + 16) = v17;
      v19 = v13;
      sub_2169BBB94();
    }

    else
    {
      sub_2169BBB3C(v9, type metadata accessor for RecentSearchLockup);
      ++v10;
    }
  }

  __break(1u);
}

uint64_t sub_2169BA254(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_21700F164();
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v11 - v8;
  sub_21700D314();
  (*(*(a3 - 8) + 16))(v9, a2, a3);
  __swift_storeEnumTagSinglePayload(v9, 0, 1, a3);
  sub_21700E3F4();
  return sub_21700E414();
}

void sub_2169BA3CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_22_3();
  a19 = v21;
  a20 = v22;
  v308 = v23;
  v309 = v20;
  v314 = v24;
  v26 = v25;
  v307 = v27;
  v28 = type metadata accessor for SongTrackLockupCollection(0);
  v29 = OUTLINED_FUNCTION_36(v28);
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_6_0();
  v303 = v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABEDF8, &qword_2170312A8);
  OUTLINED_FUNCTION_36(v31);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v32);
  v34 = OUTLINED_FUNCTION_8_0(&v272 - v33);
  v35 = type metadata accessor for PlaylistTrackLockupCollection(v34);
  v36 = OUTLINED_FUNCTION_36(v35);
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_6_0();
  v305 = v37;
  v38 = OUTLINED_FUNCTION_4_1();
  v39 = type metadata accessor for ContentDescriptor(v38);
  v40 = OUTLINED_FUNCTION_36(v39);
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_47_1();
  OUTLINED_FUNCTION_70(v44);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABEE00, &unk_2170312B0);
  OUTLINED_FUNCTION_36(v45);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v46);
  v48 = OUTLINED_FUNCTION_8_0(&v272 - v47);
  v300 = type metadata accessor for AlbumTrackLockupCollection(v48);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_6_0();
  v304 = v50;
  v51 = OUTLINED_FUNCTION_4_1();
  v299 = type metadata accessor for SuperHeroLockup(v51);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_70(v53);
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABEE08, &qword_21707C9A0);
  OUTLINED_FUNCTION_36(v54);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v55);
  v297 = &v272 - v56;
  v57 = OUTLINED_FUNCTION_4_1();
  v298 = type metadata accessor for SuperHeroLockupCollection(v57);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v58);
  OUTLINED_FUNCTION_6_0();
  v301 = v59;
  v60 = OUTLINED_FUNCTION_4_1();
  v294 = type metadata accessor for SquareLockupCollection(v60);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v61);
  OUTLINED_FUNCTION_6_0();
  v302 = v62;
  v63 = OUTLINED_FUNCTION_4_1();
  v64 = type metadata accessor for SocialCardLockupCollection(v63);
  v65 = OUTLINED_FUNCTION_36(v64);
  MEMORY[0x28223BE20](v65);
  OUTLINED_FUNCTION_6_0();
  v295 = v66;
  v67 = OUTLINED_FUNCTION_4_1();
  v68 = type metadata accessor for HorizontalLockupCollection(v67);
  v69 = OUTLINED_FUNCTION_1_77(v68, &a18);
  MEMORY[0x28223BE20](v69);
  OUTLINED_FUNCTION_6_0();
  v296 = v70;
  v71 = OUTLINED_FUNCTION_4_1();
  v72 = type metadata accessor for PosterLockupCollection(v71);
  v73 = OUTLINED_FUNCTION_36(v72);
  MEMORY[0x28223BE20](v73);
  OUTLINED_FUNCTION_6_0();
  v293 = v74;
  v75 = OUTLINED_FUNCTION_4_1();
  v306 = type metadata accessor for SectionContent(v75);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v76);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v77);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v78);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v79);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v80);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v81);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v82);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v83);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v84);
  OUTLINED_FUNCTION_47_1();
  v86 = OUTLINED_FUNCTION_8_0(v85);
  type metadata accessor for CircleLockupCollection(v86);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v87);
  OUTLINED_FUNCTION_7();
  v90 = (v89 - v88);
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABEE10, &qword_2170312C0);
  OUTLINED_FUNCTION_36(v91);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v92);
  v94 = &v272 - v93;
  v95 = type metadata accessor for Section.Content.OneOf_InnerContent(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v96);
  OUTLINED_FUNCTION_69_1();
  MEMORY[0x28223BE20](v97);
  v99 = &v272 - v98;
  sub_216683A80(v26, v94, &qword_27CABEE10, &qword_2170312C0);
  if (__swift_getEnumTagSinglePayload(v94, 1, v95) == 1)
  {

    sub_216697664(v94, &qword_27CABEE10, &qword_2170312C0);
    v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABEE18, &unk_2170312C8);
    v101 = sub_2167880BC();
    OUTLINED_FUNCTION_12(&type metadata for ProtobufError, v101);
    *v102 = xmmword_217030F50;
    *(v102 + 16) = v100;
    swift_willThrow();
    OUTLINED_FUNCTION_3_72();
    v104 = v26;
LABEL_35:
    sub_2169BBB3C(v104, v103);
    goto LABEL_36;
  }

  v272 = v26;
  sub_2169BBB94();
  OUTLINED_FUNCTION_8();
  sub_2169BBAE8();
  v105 = v99;
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      OUTLINED_FUNCTION_63_7();
      v121 = v293;
      sub_2169BBB94();
      v175 = OUTLINED_FUNCTION_82_9();
      type metadata accessor for PosterLockup(v175);
      OUTLINED_FUNCTION_62_7();
      sub_2169BB7B4(v176, v177, &unk_217028170);
      OUTLINED_FUNCTION_110_5();
      v178 = sub_21700DF14();
      v179 = OUTLINED_FUNCTION_77_9(v178);
      if (v20)
      {

        v180 = OUTLINED_FUNCTION_1_91();
        sub_2169BBB3C(v180, v181);
        v140 = type metadata accessor for PosterLockupCollection;
        goto LABEL_30;
      }

      if (!v179)
      {
        goto LABEL_62;
      }

      v236 = OUTLINED_FUNCTION_1_91();
      sub_2169BBB3C(v236, v237);
      OUTLINED_FUNCTION_111_5();
      OUTLINED_FUNCTION_4_55();
      sub_2169BBB3C(v99, v238);
      OUTLINED_FUNCTION_30_23(&v309);
      goto LABEL_53;
    case 2u:
      OUTLINED_FUNCTION_63_7();
      v121 = v296;
      sub_2169BBB94();
      OUTLINED_FUNCTION_41_14();
      v143 = OUTLINED_FUNCTION_79_12(v141 | v142);
      type metadata accessor for HorizontalLockup(v143);
      OUTLINED_FUNCTION_60_9();
      sub_2169BB7B4(v144, v145, &unk_2170151B0);
      OUTLINED_FUNCTION_110_5();
      v146 = sub_21700DF14();
      v147 = OUTLINED_FUNCTION_77_9(v146);
      if (v20)
      {

        v148 = OUTLINED_FUNCTION_1_91();
        sub_2169BBB3C(v148, v149);
        v140 = type metadata accessor for HorizontalLockupCollection;
        goto LABEL_30;
      }

      if (v147)
      {

        v211 = OUTLINED_FUNCTION_1_91();
        sub_2169BBB3C(v211, v212);
        OUTLINED_FUNCTION_111_5();
        OUTLINED_FUNCTION_4_55();
        sub_2169BBB3C(v99, v213);
        OUTLINED_FUNCTION_30_23(&v311);
        goto LABEL_53;
      }

      __break(1u);
      goto LABEL_59;
    case 3u:
      OUTLINED_FUNCTION_63_7();
      OUTLINED_FUNCTION_97_6();
      sub_2169BBB94();
      v150 = type metadata accessor for SocialCardLockup(0);
      OUTLINED_FUNCTION_63_8();
      v153 = sub_2169BB7B4(v151, v152, &unk_217027D28);
      v154 = sub_21700DF14();
      v155 = v153;
      v156 = v309;
      v158 = sub_216F76E04(v154, v157, v150, v155);
      if (v156)
      {

        v159 = OUTLINED_FUNCTION_1_91();
        sub_2169BBB3C(v159, v160);
        v119 = OUTLINED_FUNCTION_53_13();
        goto LABEL_34;
      }

      v214 = v158;
      if (v158)
      {

        v215 = OUTLINED_FUNCTION_1_91();
        sub_2169BBB3C(v215, v216);
        v217 = OUTLINED_FUNCTION_53_13();
        sub_2169BBB3C(v217, v218);
        OUTLINED_FUNCTION_4_55();
        sub_2169BBB3C(v99, v219);
        *v279 = v214;
        swift_storeEnumTagMultiPayload();
        goto LABEL_54;
      }

LABEL_59:
      __break(1u);
      goto LABEL_60;
    case 4u:
      OUTLINED_FUNCTION_63_7();
      v121 = v302;
      sub_2169BBB94();
      v122 = *v121;
      OUTLINED_FUNCTION_41_14();
      if (v126)
      {
        v127 = v124;
      }

      else
      {
        v127 = 0;
      }

      v128 = v123 | v125;
      sub_21700DF14();
      sub_21700DF14();
      v129 = v127;
      v130 = v309;
      v131 = sub_216BA9FB0(v129, v128 & 1);
      if (v130)
      {

        swift_bridgeObjectRelease_n();
        v138 = OUTLINED_FUNCTION_1_91();
        sub_2169BBB3C(v138, v139);
        v140 = type metadata accessor for SquareLockupCollection;
        goto LABEL_30;
      }

      v132 = v131;
      OUTLINED_FUNCTION_41_14();
      if (v126)
      {
        v136 = v134;
      }

      else
      {
        v136 = 0;
      }

      v137 = sub_216BA9FE0(v136, (v133 | v135) & 1);
      v310 = v308;
      v311 = v314;
      LOBYTE(v312) = v132 & 1;
      BYTE1(v312) = v137 & 1;
      v257 = type metadata accessor for SquareLockup(0);
      OUTLINED_FUNCTION_64_11();
      v260 = sub_2169BB7B4(v258, v259, &unk_21704EB48);
      if (!sub_216F76E04(v122, &v310, v257, v260))
      {
        goto LABEL_67;
      }

      v269 = OUTLINED_FUNCTION_1_91();
      sub_2169BBB3C(v269, v270);
      OUTLINED_FUNCTION_111_5();
      OUTLINED_FUNCTION_4_55();
      sub_2169BBB3C(v105, v271);
      OUTLINED_FUNCTION_30_23(&v308);
      goto LABEL_53;
    case 5u:
      OUTLINED_FUNCTION_63_7();
      v182 = v301;
      sub_2169BBB94();
      v184 = v297;
      v183 = v298;
      sub_216683A80(v182 + *(v298 + 20), v297, &qword_27CABEE08, &qword_21707C9A0);
      if (__swift_getEnumTagSinglePayload(v184, 1, v299) == 1)
      {

        sub_216697664(v184, &qword_27CABEE08, &qword_21707C9A0);
        v185 = sub_2167880BC();
        OUTLINED_FUNCTION_12(&type metadata for ProtobufError, v185);
        *v186 = xmmword_217030F40;
        *(v186 + 16) = v183;
        swift_willThrow();
        v187 = OUTLINED_FUNCTION_1_91();
LABEL_33:
        sub_2169BBB3C(v187, v188);
        OUTLINED_FUNCTION_67_8();
        v119 = v182;
        goto LABEL_34;
      }

      sub_216697664(v184, &qword_27CABEE08, &qword_21707C9A0);
      sub_216FD45D8(v292);
      v210 = v309;
      sub_216B0C214(v308, v314, v291);
      v187 = v272;
      if (v210)
      {
        v188 = type metadata accessor for Section.Content;
        goto LABEL_33;
      }

      OUTLINED_FUNCTION_3_72();
      sub_2169BBB3C(v253, v254);
      OUTLINED_FUNCTION_67_8();
      sub_2169BBB3C(v182, v255);
      OUTLINED_FUNCTION_4_55();
      sub_2169BBB3C(v105, v256);
      swift_storeEnumTagMultiPayload();
LABEL_54:
      OUTLINED_FUNCTION_63_7();
      sub_2169BBB94();
LABEL_36:
      OUTLINED_FUNCTION_21_4();
      return;
    case 6u:
      OUTLINED_FUNCTION_63_7();
      v161 = v304;
      sub_2169BBB94();
      v189 = (v161 + *(v300 + 28));
      v190 = *v189;
      v191 = v189[1];
      v192 = *v161;
      v310 = v308;
      v311 = v314;
      v312 = v190;
      v313 = v191;
      v193 = type metadata accessor for AlbumTrackLockup(0);
      OUTLINED_FUNCTION_65_7();
      v196 = sub_2169BB7B4(v194, v195, &unk_2170437D4);
      swift_bridgeObjectRetain_n();
      sub_21700DF14();
      v197 = sub_21700DF14();
      v198 = v309;
      v199 = sub_216F76E04(v197, &v310, v193, v196);
      if (v198)
      {

        v200 = OUTLINED_FUNCTION_1_91();
        sub_2169BBB3C(v200, v201);
        OUTLINED_FUNCTION_4_55();
        sub_2169BBB3C(v105, v202);
        v174 = type metadata accessor for AlbumTrackLockupCollection;
        goto LABEL_27;
      }

      v309 = v105;
      if (!v199)
      {
        goto LABEL_63;
      }

      *v284 = v199;
      v239 = v285;
      sub_216CE0794(v192, v285);
      v240 = type metadata accessor for AlbumTrackLockup(0);
      if (__swift_getEnumTagSinglePayload(v239, 1, v240) == 1)
      {
        goto LABEL_66;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB7D8, &unk_21703F640);

      v241 = v289;
      sub_216F61D00();
      sub_2169BBB3C(v239, type metadata accessor for AlbumTrackLockup);
      OUTLINED_FUNCTION_66_10();
      v242 = v287;
      sub_2169BBAE8();
      sub_21689C518(v242, v243, v244, v245, v246, v247, v248, v249, v272, v273, v274, v275, v276, v277, v278, v279, v280, v281, v282, v283, v284, v285, v286, v287);
      OUTLINED_FUNCTION_15_32();
      sub_2169BBB3C(v241, v265);
      v266 = OUTLINED_FUNCTION_1_91();
      sub_2169BBB3C(v266, v267);
      OUTLINED_FUNCTION_4_55();
      sub_2169BBB3C(v309, v268);
      sub_2169BBB3C(v161, type metadata accessor for AlbumTrackLockupCollection);
      swift_storeEnumTagMultiPayload();
      goto LABEL_54;
    case 7u:
      OUTLINED_FUNCTION_63_7();
      v161 = v305;
      sub_2169BBB94();
      v162 = *v161;
      v163 = OUTLINED_FUNCTION_82_9();
      v164 = type metadata accessor for PlaylistTrackLockup(v163);
      OUTLINED_FUNCTION_55_13();
      sub_2169BB7B4(v165, v166, &unk_217049104);
      OUTLINED_FUNCTION_110_5();
      v167 = sub_21700DF14();
      v168 = v20;
      v169 = v309;
      v170 = sub_216F76E04(v167, &v310, v164, v168);
      if (v169)
      {

        v171 = OUTLINED_FUNCTION_1_91();
        sub_2169BBB3C(v171, v172);
        OUTLINED_FUNCTION_4_55();
        sub_2169BBB3C(v105, v173);
        v174 = type metadata accessor for PlaylistTrackLockupCollection;
LABEL_27:
        v103 = v174;
        v104 = v161;
        goto LABEL_35;
      }

      if (!v170)
      {
LABEL_60:
        __break(1u);
        goto LABEL_61;
      }

      *v283 = v170;
      v220 = v290;
      sub_216CE07C0(v162, v290);
      v221 = type metadata accessor for PlaylistTrackLockup(0);
      if (__swift_getEnumTagSinglePayload(v220, 1, v221) == 1)
      {
        goto LABEL_65;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB7C0, &unk_217030FE0);
      v222 = v288;
      sub_216F5081C(v288);
      sub_2169BBB3C(v220, type metadata accessor for PlaylistTrackLockup);
      OUTLINED_FUNCTION_66_10();
      v223 = v286;
      sub_2169BBAE8();
      sub_21689C518(v223, v224, v225, v226, v227, v228, v229, v230, v272, v273, v274, v275, v276, v277, v278, v279, v280, v281, v282, v283, v284, v285, v286, v287);
      OUTLINED_FUNCTION_15_32();
      sub_2169BBB3C(v222, v261);
      v262 = OUTLINED_FUNCTION_1_91();
      sub_2169BBB3C(v262, v263);
      OUTLINED_FUNCTION_4_55();
      sub_2169BBB3C(v105, v264);
      sub_2169BBB3C(v161, type metadata accessor for PlaylistTrackLockupCollection);
      swift_storeEnumTagMultiPayload();
      goto LABEL_54;
    case 8u:
      OUTLINED_FUNCTION_63_7();
      v121 = v303;
      sub_2169BBB94();
      v203 = OUTLINED_FUNCTION_82_9();
      type metadata accessor for TrackLockup(v203);
      OUTLINED_FUNCTION_24_24();
      sub_2169BB7B4(v204, v205, &unk_21705C6C8);
      OUTLINED_FUNCTION_110_5();
      v206 = sub_21700DF14();
      v207 = OUTLINED_FUNCTION_77_9(v206);
      if (v20)
      {

        v208 = OUTLINED_FUNCTION_1_91();
        sub_2169BBB3C(v208, v209);
        v140 = type metadata accessor for SongTrackLockupCollection;
LABEL_30:
        v120 = v140;
        v119 = v121;
        goto LABEL_34;
      }

      if (!v207)
      {
        goto LABEL_64;
      }

      v250 = OUTLINED_FUNCTION_1_91();
      sub_2169BBB3C(v250, v251);
      OUTLINED_FUNCTION_111_5();
      OUTLINED_FUNCTION_4_55();
      sub_2169BBB3C(v99, v252);
      OUTLINED_FUNCTION_30_23(&v313);
      goto LABEL_53;
    default:
      OUTLINED_FUNCTION_63_7();
      sub_2169BBB94();
      OUTLINED_FUNCTION_41_14();
      v108 = *v90;
      v109 = OUTLINED_FUNCTION_79_12(v106 | v107);
      v110 = type metadata accessor for BubbleLockup(v109);
      OUTLINED_FUNCTION_56_12();
      v113 = sub_2169BB7B4(v111, v112, &unk_21706B080);
      sub_21700DF14();
      sub_21700DF14();
      v114 = v113;
      v115 = v309;
      v116 = sub_216F76E04(v108, &v310, v110, v114);
      if (v115)
      {

        v117 = OUTLINED_FUNCTION_1_91();
        sub_2169BBB3C(v117, v118);
        v119 = OUTLINED_FUNCTION_54_14();
LABEL_34:
        sub_2169BBB3C(v119, v120);
        OUTLINED_FUNCTION_4_55();
        v104 = v105;
        goto LABEL_35;
      }

      if (!v116)
      {
LABEL_61:
        __break(1u);
LABEL_62:
        __break(1u);
LABEL_63:
        __break(1u);
LABEL_64:
        __break(1u);
LABEL_65:
        __break(1u);
LABEL_66:
        __break(1u);
LABEL_67:
        __break(1u);
        return;
      }

      v231 = OUTLINED_FUNCTION_1_91();
      sub_2169BBB3C(v231, v232);
      v233 = OUTLINED_FUNCTION_54_14();
      sub_2169BBB3C(v233, v234);
      OUTLINED_FUNCTION_4_55();
      sub_2169BBB3C(v105, v235);
      OUTLINED_FUNCTION_30_23(&v312);
LABEL_53:
      swift_storeEnumTagMultiPayload();
      goto LABEL_54;
  }
}

unint64_t sub_2169BB698()
{
  result = qword_27CABEB60;
  if (!qword_27CABEB60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABEB60);
  }

  return result;
}

uint64_t sub_2169BB6EC()
{
  v1 = OUTLINED_FUNCTION_102();
  v2(v1);
  OUTLINED_FUNCTION_34();
  v3 = OUTLINED_FUNCTION_8();
  v4(v3);
  return v0;
}

uint64_t sub_2169BB740()
{
  v1 = OUTLINED_FUNCTION_102();
  v2(v1);
  OUTLINED_FUNCTION_34();
  v3 = OUTLINED_FUNCTION_8();
  v4(v3);
  return v0;
}

uint64_t sub_2169BB7B4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_2169BB7FC()
{
  result = qword_280E2C7F8[0];
  if (!qword_280E2C7F8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280E2C7F8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SectionContent.SectionContentError(unsigned __int8 *a1, int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 != 1)
  {
    if ((a2 + 254) >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 254) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 255;
    return (v5 + 1);
  }

LABEL_17:
  if (*a1 >= 0xC0u)
  {
    v5 = 0;
  }

  else
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for SectionContent.SectionContentError(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 254 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 254) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 2)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 1)
  {
    v6 = ((a2 - 2) >> 8) + 1;
    *result = a2 - 2;
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
          *result = -64;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_2169BB9A4(_BYTE *a1)
{
  v1 = *a1;
  if (v1 >= 0)
  {
    return *a1 >> 6;
  }

  else
  {
    return (v1 & 0x3Fu) + 2;
  }
}

_BYTE *sub_2169BB9D0(_BYTE *result, unsigned int a2)
{
  if (a2 < 2)
  {
    v2 = *result & 0x3F | (a2 << 6);
  }

  else
  {
    v2 = (a2 + 62) & 0x3F | 0x80;
  }

  *result = v2;
  return result;
}

uint64_t sub_2169BBAE8()
{
  v1 = OUTLINED_FUNCTION_102();
  v2(v1);
  OUTLINED_FUNCTION_34();
  v3 = OUTLINED_FUNCTION_8();
  v4(v3);
  return v0;
}

uint64_t sub_2169BBB3C(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_34();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_2169BBB94()
{
  v1 = OUTLINED_FUNCTION_102();
  v2(v1);
  OUTLINED_FUNCTION_34();
  v3 = OUTLINED_FUNCTION_8();
  v4(v3);
  return v0;
}

uint64_t OUTLINED_FUNCTION_79_12@<X0>(char a1@<W8>)
{
  *(v3 - 120) = *(v3 - 136);
  *(v3 - 112) = v2;
  *(v3 - 104) = v1;
  *(v3 - 96) = a1 & 1;
  return 0;
}

uint64_t OUTLINED_FUNCTION_88_6@<X0>(_BYTE *a2@<X1>, char a3@<W8>)
{
  *a2 = a3;

  return swift_willThrow();
}

uint64_t OUTLINED_FUNCTION_94_8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, void *, uint64_t, __n128))
{
  v7 = *(v5 - 88);

  return sub_2169B63B0(v7, v4, a3, a4);
}

uint64_t OUTLINED_FUNCTION_109_5(uint64_t a1, uint64_t a2)
{

  return sub_216683A80(a1, a2, v2, v3);
}

uint64_t sub_2169BBE0C@<X0>(_BYTE *a1@<X0>, uint64_t a3@<X8>)
{
  v22 = a3;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABD770, &unk_217015610);
  v4 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v6 = &v20 - v5;
  v7 = type metadata accessor for NoticeAction(0);
  MEMORY[0x28223BE20](v7);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAE0, &unk_217015630);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v20 - v12;
  if (*a1 == 3)
  {
    type metadata accessor for ObjectGraph(0);
    sub_21700E094();
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8E00, &qword_2170313E0);
    __swift_storeEnumTagSinglePayload(v9, 6, 11, v14);
    sub_21700D234();
    v23[3] = v7;
    v23[4] = sub_2169BC150(&qword_27CAB8E08, type metadata accessor for NoticeAction, &unk_21703D8D0);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v23);
    sub_2169BC198(v9, boxed_opaque_existential_1);
    v16 = v21;
    (*(v4 + 104))(v6, *MEMORY[0x277D21E18], v21);
    sub_21700D5E4();

    (*(v4 + 8))(v6, v16);
    sub_2169BC1FC(v9);
    (*(v11 + 8))(v13, v10);
    __swift_destroy_boxed_opaque_existential_1Tm(v23);
  }

  v17 = *MEMORY[0x277D21CA8];
  v18 = sub_21700D2A4();
  return (*(*(v18 - 8) + 104))(v22, v17, v18);
}

uint64_t sub_2169BC150(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2169BC198(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NoticeAction(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2169BC1FC(uint64_t a1)
{
  v2 = type metadata accessor for NoticeAction(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_2169BC258()
{
  OUTLINED_FUNCTION_49();
  v94 = v1;
  v92 = v2;
  v99 = v3;
  v4 = type metadata accessor for SongContextMenu(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_196();
  sub_21700C084();
  OUTLINED_FUNCTION_1();
  v90 = v7;
  v91 = v6;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_6_0();
  v89 = v8;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABEE78, &qword_2170313E8);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_105();
  v96 = v10;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABEE80, &qword_2170313F0);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v11);
  v13 = &v88 - v12;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB0F0, &qword_21702C500);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v14);
  v16 = &v88 - v15;
  v95 = type metadata accessor for MusicVideoContextMenu(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_7();
  v20 = v19 - v18;
  v88 = sub_21700BA44();
  OUTLINED_FUNCTION_1();
  v22 = v21;
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_6_0();
  v25 = v24;
  OUTLINED_FUNCTION_4_1();
  v26 = sub_21700C2F4();
  OUTLINED_FUNCTION_1();
  v28 = v27;
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_7();
  v32 = v31 - v30;
  (*(v28 + 16))(v31 - v30, v94, v26);
  v33 = OUTLINED_FUNCTION_113();
  v35 = v34(v33);
  if (v35 == *MEMORY[0x277CD8368])
  {
    v36 = OUTLINED_FUNCTION_113();
    v37(v36);
    v39 = v89;
    v38 = v90;
    v40 = v32;
    v41 = v91;
    (*(v90 + 32))(v89, v40, v91);
    OUTLINED_FUNCTION_96_5();
    v42(v0, v39, v41);
    OUTLINED_FUNCTION_1_92();
    sub_2169C3618(v92, v0 + v43, v44);
    v45 = (v0 + v4[6]);
    type metadata accessor for MenuBuilder();
    OUTLINED_FUNCTION_0_104();
    sub_2169C3570(v46, v47, &unk_21705881C);
    *v45 = sub_217008CF4();
    v45[1] = v48;
    v49 = (v0 + v4[7]);
    type metadata accessor for PlaybackPresenter(0);
    OUTLINED_FUNCTION_2_69();
    sub_2169C3570(v50, v51, &unk_217058AC0);
    *v49 = sub_217008CF4();
    v49[1] = v52;
    v53 = v4[8];
    *(v0 + v53) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC59E0, &qword_217018AF0);
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_13_31();
    sub_2169C3618(v0, v13, v54);
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_4_56();
    sub_2169C3570(v55, v56, &unk_217033818);
    OUTLINED_FUNCTION_3_73();
    sub_2169C3570(v57, v58, &unk_21705C910);
    sub_217009554();
    sub_216681B04(v16, v96, &qword_27CABB0F0, &qword_21702C500);
    swift_storeEnumTagMultiPayload();
    sub_2168AE608();
    sub_217009554();
    sub_216697664(v16, &qword_27CABB0F0, &qword_21702C500);
    OUTLINED_FUNCTION_15_33();
    sub_2169C3678(v0, v59);
    (*(v38 + 8))(v39, v41);
  }

  else
  {
    v94 = v16;
    v91 = v4;
    v60 = v95;
    v61 = v96;
    if (v35 == *MEMORY[0x277CD8350])
    {
      v62 = OUTLINED_FUNCTION_113();
      v63(v62);
      v64 = v88;
      (*(v22 + 32))(v25, v32, v88);
      (*(v22 + 16))(v20, v25, v64);
      OUTLINED_FUNCTION_1_92();
      sub_2169C3618(v92, v20 + v65, v66);
      v67 = *(v60 + 24);
      *(v20 + v67) = swift_getKeyPath();
      v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC59E0, &qword_217018AF0);
      OUTLINED_FUNCTION_50_14(v68);
      OUTLINED_FUNCTION_76_9();
      type metadata accessor for MenuBuilder();
      OUTLINED_FUNCTION_0_104();
      v71 = sub_2169C3570(v69, v70, &unk_21705881C);
      *v22 = OUTLINED_FUNCTION_89_11(v71);
      *(v22 + 8) = v72;
      v73 = OUTLINED_FUNCTION_76_9();
      type metadata accessor for PlaybackPresenter(v73);
      OUTLINED_FUNCTION_2_69();
      v76 = sub_2169C3570(v74, v75, &unk_217058AC0);
      v77 = OUTLINED_FUNCTION_89_11(v76);
      OUTLINED_FUNCTION_11_40(v77, v78);
      sub_2169C3618(v20, v13, v79);
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_4_56();
      sub_2169C3570(v80, v81, &unk_217033818);
      OUTLINED_FUNCTION_3_73();
      sub_2169C3570(v82, v83, &unk_21705C910);
      v84 = v94;
      sub_217009554();
      sub_216681B04(v84, v61, &qword_27CABB0F0, &qword_21702C500);
      swift_storeEnumTagMultiPayload();
      sub_2168AE608();
      sub_217009554();
      OUTLINED_FUNCTION_53_14();
      OUTLINED_FUNCTION_14_34();
      sub_2169C3678(v20, v85);
      (*(v22 + 8))(v25, v64);
    }

    else
    {
      swift_storeEnumTagMultiPayload();
      sub_2168AE608();
      sub_217009554();
      v86 = OUTLINED_FUNCTION_113();
      v87(v86);
    }
  }

  OUTLINED_FUNCTION_26();
}

void sub_2169BCA3C()
{
  OUTLINED_FUNCTION_49();
  v148 = v1;
  v142 = v2;
  v143 = v3;
  v141 = v4;
  v153 = v5;
  v149 = type metadata accessor for SongContextMenu(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_8_0(v7);
  sub_21700C084();
  OUTLINED_FUNCTION_1();
  v139 = v9;
  v140 = v8;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_6_0();
  v138 = v10;
  v152 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABEE78, &qword_2170313E8);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_105();
  v150 = v12;
  v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABEE80, &qword_2170313F0);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_105();
  v146 = v14;
  v151 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB0F0, &qword_21702C500);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_105();
  v147 = v16;
  v17 = OUTLINED_FUNCTION_4_1();
  type metadata accessor for MenuContext(v17);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_7();
  v21 = v20 - v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A00, &unk_217016B60);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v22);
  v24 = &v134 - v23;
  v144 = type metadata accessor for MusicVideoContextMenu(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_7();
  v28 = v27 - v26;
  v29 = sub_21700BA44();
  OUTLINED_FUNCTION_1();
  v31 = v30;
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_6_0();
  v34 = v33;
  OUTLINED_FUNCTION_4_1();
  v35 = sub_21700C894();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_196();
  OUTLINED_FUNCTION_96_5();
  v37(v0, v148, v35);
  v38 = OUTLINED_FUNCTION_26_22();
  v40 = v39(v38);
  if (v40 == *MEMORY[0x277CD8540])
  {
    v41 = OUTLINED_FUNCTION_26_22();
    v42(v41);
    v136 = v31;
    v43 = *(v31 + 32);
    v134 = v34;
    v135 = v29;
    v43(v34, v0, v29);
    (*(v31 + 16))(v28, v34, v29);
    v44 = type metadata accessor for ContentDescriptor(0);
    OUTLINED_FUNCTION_88(v24, v45, v46, v44);
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_31_8();
    v47 = v144;
    v48 = v28 + *(v144 + 20);
    sub_216681B04(v24, v48, &qword_27CAB6A00, &unk_217016B60);
    v49 = type metadata accessor for MenuConfiguration(0);
    OUTLINED_FUNCTION_9_44();
    sub_2169C3618(v21, v50, v51);
    v52 = (v48 + v49[6]);
    v53 = v142;
    v54 = v143;
    *v52 = v141;
    v52[1] = v54;
    *(v48 + v49[7]) = v53;
    v55 = OUTLINED_FUNCTION_117_6();
    sub_216681B04(v55, v56, &qword_27CAB6DB0, &qword_217016C00);
    sub_21700DF14();
    sub_21700DF14();
    sub_216697664(v154, &qword_27CAB6DB0, &qword_217016C00);
    OUTLINED_FUNCTION_16_32();
    sub_2169C3678(v21, v57);
    sub_216697664(v24, &qword_27CAB6A00, &unk_217016B60);
    OUTLINED_FUNCTION_82_10(v49[9]);
    v58 = *(v47 + 24);
    *(v28 + v58) = swift_getKeyPath();
    v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC59E0, &qword_217018AF0);
    OUTLINED_FUNCTION_95_9(v59);
    OUTLINED_FUNCTION_97_7();
    type metadata accessor for MenuBuilder();
    OUTLINED_FUNCTION_0_104();
    v62 = sub_2169C3570(v60, v61, &unk_21705881C);
    qword_217016C00 = OUTLINED_FUNCTION_89_11(v62);
    *"MusicUI" = v63;
    v64 = OUTLINED_FUNCTION_97_7();
    type metadata accessor for PlaybackPresenter(v64);
    OUTLINED_FUNCTION_2_69();
    v67 = sub_2169C3570(v65, v66, &unk_217058AC0);
    v68 = OUTLINED_FUNCTION_89_11(v67);
    OUTLINED_FUNCTION_11_40(v68, v69);
    v70 = v146;
    sub_2169C3618(v28, v146, v71);
    OUTLINED_FUNCTION_100_8(v70);
    OUTLINED_FUNCTION_4_56();
    sub_2169C3570(v72, v73, &unk_217033818);
    OUTLINED_FUNCTION_3_73();
    sub_2169C3570(v74, v75, &unk_21705C910);
    OUTLINED_FUNCTION_7_4();
    sub_217009554();
    OUTLINED_FUNCTION_86_0();
    sub_216681B04(v76, v77, v78, &qword_21702C500);
    swift_storeEnumTagMultiPayload();
    sub_2168AE608();
    OUTLINED_FUNCTION_112_6();
    sub_217009554();
    v79 = OUTLINED_FUNCTION_82_1();
    sub_216697664(v79, v80, &qword_21702C500);
    OUTLINED_FUNCTION_14_34();
    sub_2169C3678(v28, v81);
    OUTLINED_FUNCTION_67();
    v83 = v134;
    v84 = v135;
  }

  else
  {
    v85 = v149;
    if (v40 != *MEMORY[0x277CD8548])
    {
      swift_storeEnumTagMultiPayload();
      sub_2168AE608();
      sub_217009554();
      v132 = OUTLINED_FUNCTION_26_22();
      v133(v132);
      goto LABEL_7;
    }

    v86 = OUTLINED_FUNCTION_26_22();
    v87(v86);
    v88 = OUTLINED_FUNCTION_92_0();
    v89(v88);
    v90 = v137;
    OUTLINED_FUNCTION_42_6();
    v91();
    v92 = type metadata accessor for ContentDescriptor(0);
    v93 = v24;
    OUTLINED_FUNCTION_88(v24, v94, v95, v92);
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_31_8();
    v96 = v85;
    v97 = v90 + *(v85 + 20);
    v98 = OUTLINED_FUNCTION_45();
    sub_216681B04(v98, v99, v100, v101);
    v102 = type metadata accessor for MenuConfiguration(0);
    OUTLINED_FUNCTION_9_44();
    sub_2169C3618(v21, v103, v104);
    v105 = (v97 + v102[6]);
    v106 = v142;
    v107 = v143;
    *v105 = v141;
    v105[1] = v107;
    *(v97 + v102[7]) = v106;
    v108 = OUTLINED_FUNCTION_117_6();
    sub_216681B04(v108, v109, &qword_27CAB6DB0, &qword_217016C00);
    sub_21700DF14();
    sub_21700DF14();
    sub_216697664(v154, &qword_27CAB6DB0, &qword_217016C00);
    OUTLINED_FUNCTION_16_32();
    sub_2169C3678(v21, v110);
    sub_216697664(v93, &qword_27CAB6A00, &unk_217016B60);
    OUTLINED_FUNCTION_82_10(v102[9]);
    OUTLINED_FUNCTION_97_7();
    type metadata accessor for MenuBuilder();
    OUTLINED_FUNCTION_0_104();
    v113 = sub_2169C3570(v111, v112, &unk_21705881C);
    *v107 = OUTLINED_FUNCTION_89_11(v113);
    v107[1] = v114;
    v115 = OUTLINED_FUNCTION_97_7();
    type metadata accessor for PlaybackPresenter(v115);
    OUTLINED_FUNCTION_2_69();
    v118 = sub_2169C3570(v116, v117, &unk_217058AC0);
    *v107 = OUTLINED_FUNCTION_89_11(v118);
    v107[1] = v119;
    v120 = *(v96 + 32);
    *(v90 + v120) = swift_getKeyPath();
    v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC59E0, &qword_217018AF0);
    OUTLINED_FUNCTION_95_9(v121);
    OUTLINED_FUNCTION_13_31();
    v122 = v146;
    sub_2169C3618(v90, v146, v123);
    OUTLINED_FUNCTION_101_5(v122);
    OUTLINED_FUNCTION_4_56();
    sub_2169C3570(v124, v125, &unk_217033818);
    OUTLINED_FUNCTION_3_73();
    sub_2169C3570(v126, v127, &unk_21705C910);
    sub_217009554();
    OUTLINED_FUNCTION_86_0();
    sub_216681B04(v128, v129, v130, &qword_21702C500);
    swift_storeEnumTagMultiPayload();
    sub_2168AE608();
    OUTLINED_FUNCTION_112_6();
    sub_217009554();
    OUTLINED_FUNCTION_54_15();
    OUTLINED_FUNCTION_15_33();
    sub_2169C3678(v90, v131);
    v83 = v138;
    v82 = *(v139 + 8);
    v84 = v140;
  }

  v82(v83, v84);
LABEL_7:
  OUTLINED_FUNCTION_26();
}

void sub_2169BD438()
{
  OUTLINED_FUNCTION_49();
  v149 = v1;
  v150 = v2;
  v141 = v4;
  v142 = v3;
  v143 = v5;
  v151 = v6;
  v155 = v7;
  v144 = type metadata accessor for SongContextMenu(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_8_0(v9);
  v140 = sub_21700C084();
  OUTLINED_FUNCTION_1();
  v139 = v10;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_70(v12);
  v153 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABEE78, &qword_2170313E8);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_105();
  v154 = v14;
  v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABEE80, &qword_2170313F0);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_105();
  v147 = v16;
  v152 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB0F0, &qword_21702C500);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_105();
  v148 = v18;
  v19 = OUTLINED_FUNCTION_4_1();
  type metadata accessor for MenuContext(v19);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_7();
  v23 = v22 - v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A00, &unk_217016B60);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v24);
  v26 = &v135 - v25;
  v145 = type metadata accessor for MusicVideoContextMenu(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_7();
  v30 = v29 - v28;
  v31 = sub_21700BA44();
  OUTLINED_FUNCTION_1();
  v33 = v32;
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_6_0();
  v36 = v35;
  OUTLINED_FUNCTION_4_1();
  v37 = sub_21700C894();
  OUTLINED_FUNCTION_1();
  v39 = v38;
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_196();
  (*(v39 + 16))(v0, v149, v37);
  v41 = OUTLINED_FUNCTION_26_22();
  v43 = v42(v41);
  if (v43 == *MEMORY[0x277CD8540])
  {
    v44 = OUTLINED_FUNCTION_26_22();
    v45(v44);
    v137 = v33;
    v46 = *(v33 + 32);
    v135 = v36;
    v136 = v31;
    v46(v36, v0, v31);
    (*(v33 + 16))(v30, v36, v31);
    v47 = type metadata accessor for ContentDescriptor(0);
    OUTLINED_FUNCTION_88(v26, v48, v49, v47);
    v50 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB74B0, &unk_21701F4F0) + 48);
    sub_21700C8E4();
    OUTLINED_FUNCTION_34();
    (*(v51 + 16))(v23, v150);
    sub_216681B04(v151, v23 + v50, &qword_27CAB74B8, &unk_217017110);
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_31_8();
    v52 = v145;
    v53 = v30 + *(v145 + 20);
    v54 = OUTLINED_FUNCTION_92_0();
    sub_216681B04(v54, v55, v56, v57);
    v58 = type metadata accessor for MenuConfiguration(0);
    OUTLINED_FUNCTION_9_44();
    sub_2169C3618(v23, v59, v60);
    v61 = (v53 + v58[6]);
    v62 = v141;
    *v61 = v142;
    v61[1] = v62;
    *(v53 + v58[7]) = v143;
    v63 = OUTLINED_FUNCTION_117_6();
    sub_216681B04(v63, v64, &qword_27CAB6DB0, &qword_217016C00);
    sub_21700DF14();
    sub_21700DF14();
    sub_216697664(v156, &qword_27CAB6DB0, &qword_217016C00);
    OUTLINED_FUNCTION_16_32();
    sub_2169C3678(v23, v65);
    sub_216697664(v26, &qword_27CAB6A00, &unk_217016B60);
    OUTLINED_FUNCTION_82_10(v58[9]);
    v66 = *(v52 + 24);
    *(v30 + v66) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC59E0, &qword_217018AF0);
    swift_storeEnumTagMultiPayload();
    v67 = (v30 + *(v52 + 28));
    type metadata accessor for MenuBuilder();
    OUTLINED_FUNCTION_0_104();
    v70 = sub_2169C3570(v68, v69, &unk_21705881C);
    *v67 = OUTLINED_FUNCTION_89_11(v70);
    v67[1] = v71;
    type metadata accessor for PlaybackPresenter(0);
    OUTLINED_FUNCTION_2_69();
    v74 = sub_2169C3570(v72, v73, &unk_217058AC0);
    v75 = OUTLINED_FUNCTION_89_11(v74);
    OUTLINED_FUNCTION_11_40(v75, v76);
    sub_2169C3618(v30, v147, v77);
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_4_56();
    sub_2169C3570(v78, v79, &unk_217033818);
    OUTLINED_FUNCTION_3_73();
    sub_2169C3570(v80, v81, &unk_21705C910);
    sub_217009554();
    OUTLINED_FUNCTION_86_0();
    sub_216681B04(v82, v83, v84, &qword_21702C500);
    OUTLINED_FUNCTION_112_6();
    swift_storeEnumTagMultiPayload();
    sub_2168AE608();
    sub_217009554();
    v85 = OUTLINED_FUNCTION_82_1();
    sub_216697664(v85, v86, &qword_21702C500);
    OUTLINED_FUNCTION_14_34();
    sub_2169C3678(v30, v87);
    OUTLINED_FUNCTION_67();
    v89 = v135;
    v90 = v136;
  }

  else
  {
    v92 = v150;
    v91 = v151;
    if (v43 != *MEMORY[0x277CD8548])
    {
      swift_storeEnumTagMultiPayload();
      sub_2168AE608();
      sub_217009554();
      v133 = OUTLINED_FUNCTION_26_22();
      v134(v133);
      goto LABEL_7;
    }

    v93 = OUTLINED_FUNCTION_26_22();
    v94(v93);
    OUTLINED_FUNCTION_94_0();
    v95 = OUTLINED_FUNCTION_40_14();
    v96(v95);
    OUTLINED_FUNCTION_118_6();
    OUTLINED_FUNCTION_48_15();
    v97();
    v98 = type metadata accessor for ContentDescriptor(0);
    OUTLINED_FUNCTION_88(v26, v99, v100, v98);
    v101 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB74B0, &unk_21701F4F0) + 48);
    sub_21700C8E4();
    OUTLINED_FUNCTION_34();
    (*(v102 + 16))(v23, v92);
    sub_216681B04(v91, v23 + v101, &qword_27CAB74B8, &unk_217017110);
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_31_8();
    v103 = v144;
    v104 = v31 + *(v144 + 20);
    sub_216681B04(v26, v104, &qword_27CAB6A00, &unk_217016B60);
    v105 = type metadata accessor for MenuConfiguration(0);
    OUTLINED_FUNCTION_9_44();
    sub_2169C3618(v23, v106, v107);
    v108 = (v104 + v105[6]);
    v109 = v141;
    *v108 = v142;
    v108[1] = v109;
    *(v104 + v105[7]) = v143;
    v110 = OUTLINED_FUNCTION_117_6();
    sub_216681B04(v110, v111, &qword_27CAB6DB0, &qword_217016C00);
    sub_21700DF14();
    sub_21700DF14();
    sub_216697664(v156, &qword_27CAB6DB0, &qword_217016C00);
    OUTLINED_FUNCTION_16_32();
    sub_2169C3678(v23, v112);
    sub_216697664(v26, &qword_27CAB6A00, &unk_217016B60);
    OUTLINED_FUNCTION_82_10(v105[9]);
    OUTLINED_FUNCTION_76_9();
    type metadata accessor for MenuBuilder();
    OUTLINED_FUNCTION_0_104();
    v115 = sub_2169C3570(v113, v114, &unk_21705881C);
    *v109 = OUTLINED_FUNCTION_89_11(v115);
    v109[1] = v116;
    v117 = OUTLINED_FUNCTION_76_9();
    type metadata accessor for PlaybackPresenter(v117);
    OUTLINED_FUNCTION_2_69();
    v120 = sub_2169C3570(v118, v119, &unk_217058AC0);
    *v109 = OUTLINED_FUNCTION_89_11(v120);
    v109[1] = v121;
    v122 = *(v103 + 32);
    *(v31 + v122) = swift_getKeyPath();
    v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC59E0, &qword_217018AF0);
    OUTLINED_FUNCTION_50_14(v123);
    OUTLINED_FUNCTION_13_31();
    sub_2169C3618(v31, v147, v124);
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_4_56();
    sub_2169C3570(v125, v126, &unk_217033818);
    OUTLINED_FUNCTION_3_73();
    sub_2169C3570(v127, v128, &unk_21705C910);
    sub_217009554();
    OUTLINED_FUNCTION_86_0();
    sub_216681B04(v129, v130, v131, &qword_21702C500);
    OUTLINED_FUNCTION_112_6();
    swift_storeEnumTagMultiPayload();
    sub_2168AE608();
    sub_217009554();
    OUTLINED_FUNCTION_54_15();
    OUTLINED_FUNCTION_15_33();
    sub_2169C3678(v31, v132);
    OUTLINED_FUNCTION_67();
    v89 = v138;
    v90 = v140;
  }

  v88(v89, v90);
LABEL_7:
  OUTLINED_FUNCTION_26();
}

void sub_2169BDF30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_49();
  a19 = v21;
  a20 = v22;
  v903 = v23;
  v904 = v24;
  v906 = v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABEE88, &qword_217031428);
  OUTLINED_FUNCTION_1_77(v26, &v909);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_70(v28);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABEE90, &qword_217031430);
  OUTLINED_FUNCTION_1_77(v29, &v906);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_70(v31);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABEE98, &qword_217031438);
  OUTLINED_FUNCTION_1_77(v32, &v908);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_70(v34);
  v907[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABEEA0, &qword_217031440);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_105();
  v37 = OUTLINED_FUNCTION_8_0(v36);
  v38 = type metadata accessor for GenreContextMenu(v37);
  v39 = OUTLINED_FUNCTION_1_77(v38, &v905);
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_8_0(v40);
  v41 = sub_21700C254();
  v42 = OUTLINED_FUNCTION_0(v41, &v891);
  v872[2] = v43;
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_6_0();
  v45 = OUTLINED_FUNCTION_8_0(v44);
  v46 = type metadata accessor for UploadedVideoContextMenu(v45);
  v47 = OUTLINED_FUNCTION_1_77(v46, &v842);
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_8_0(v48);
  v49 = sub_2170070F4();
  v50 = OUTLINED_FUNCTION_0(v49, &v837);
  v826 = v51;
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_70(v52);
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABEEA8, &qword_217031448);
  OUTLINED_FUNCTION_1_77(v53, &v838);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v54);
  OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_70(v55);
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABEEB0, &qword_217031450);
  OUTLINED_FUNCTION_1_77(v56, &v853);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v57);
  OUTLINED_FUNCTION_105();
  v59 = OUTLINED_FUNCTION_8_0(v58);
  v60 = type metadata accessor for UploadedAudioContextMenu(v59);
  v61 = OUTLINED_FUNCTION_1_77(v60, &v839);
  MEMORY[0x28223BE20](v61);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_8_0(v62);
  v63 = sub_217007064();
  v64 = OUTLINED_FUNCTION_0(v63, &v844);
  v827 = v65;
  MEMORY[0x28223BE20](v64);
  OUTLINED_FUNCTION_6_0();
  v67 = OUTLINED_FUNCTION_8_0(v66);
  v68 = type metadata accessor for TVShowContextMenu(v67);
  v69 = OUTLINED_FUNCTION_1_77(v68, &v850);
  MEMORY[0x28223BE20](v69);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_8_0(v70);
  v71 = sub_217007264();
  v72 = OUTLINED_FUNCTION_0(v71, v845);
  v830 = v73;
  MEMORY[0x28223BE20](v72);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_70(v74);
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABEEB8, &qword_217031458);
  OUTLINED_FUNCTION_1_77(v75, &v851);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v76);
  OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_70(v77);
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABEEC0, &qword_217031460);
  OUTLINED_FUNCTION_1_77(v78, &v847);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v79);
  OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_70(v80);
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABEEC8, &qword_217031468);
  OUTLINED_FUNCTION_1_77(v81, &v852);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v82);
  OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_70(v83);
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABEED0, &qword_217031470);
  OUTLINED_FUNCTION_1_77(v84, v872);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v85);
  OUTLINED_FUNCTION_105();
  v87 = OUTLINED_FUNCTION_8_0(v86);
  v88 = type metadata accessor for TVEpisodeContextMenu(v87);
  v89 = OUTLINED_FUNCTION_1_77(v88, &v848);
  MEMORY[0x28223BE20](v89);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_8_0(v90);
  v91 = sub_2170073D4();
  v92 = OUTLINED_FUNCTION_0(v91, v854);
  v831 = v93;
  MEMORY[0x28223BE20](v92);
  OUTLINED_FUNCTION_6_0();
  v95 = OUTLINED_FUNCTION_8_0(v94);
  v96 = type metadata accessor for StationContextMenu(v95);
  v97 = OUTLINED_FUNCTION_1_77(v96, v861);
  MEMORY[0x28223BE20](v97);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_8_0(v98);
  v99 = sub_21700C644();
  v100 = OUTLINED_FUNCTION_0(v99, v855);
  v834 = v101;
  MEMORY[0x28223BE20](v100);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_70(v102);
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABEED8, &qword_217031478);
  OUTLINED_FUNCTION_1_77(v103, &v860);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v104);
  OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_70(v105);
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABEEE0, &qword_217031480);
  OUTLINED_FUNCTION_1_77(v106, &v869);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v107);
  OUTLINED_FUNCTION_105();
  v109 = OUTLINED_FUNCTION_8_0(v108);
  v110 = type metadata accessor for SocialProfileContextMenu(v109);
  v111 = OUTLINED_FUNCTION_1_77(v110, &v858);
  MEMORY[0x28223BE20](v111);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_70(v112);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABEEE8, &unk_217051AD0);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v113);
  OUTLINED_FUNCTION_105();
  v115 = OUTLINED_FUNCTION_8_0(v114);
  v116 = type metadata accessor for SocialProfileDescriptor(v115);
  v117 = OUTLINED_FUNCTION_1_77(v116, v856);
  MEMORY[0x28223BE20](v117);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_70(v118);
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABEEF0, &qword_217031488);
  OUTLINED_FUNCTION_1_77(v119, &v859);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v120);
  OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_8_0(v121);
  v122 = sub_217006FE4();
  v123 = OUTLINED_FUNCTION_0(v122, &v862);
  v849[1] = v124;
  MEMORY[0x28223BE20](v123);
  v839 = &v824 - ((v125 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v126);
  v128 = OUTLINED_FUNCTION_8_0(&v824 - v127);
  v129 = type metadata accessor for SongContextMenu(v128);
  v130 = OUTLINED_FUNCTION_1_77(v129, &v865);
  MEMORY[0x28223BE20](v130);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_8_0(v131);
  v132 = sub_21700C084();
  v133 = OUTLINED_FUNCTION_0(v132, &v857);
  v836 = v134;
  MEMORY[0x28223BE20](v133);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_70(v135);
  v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABEEF8, &qword_217031490);
  OUTLINED_FUNCTION_1_77(v136, &v870);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v137);
  OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_70(v138);
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABEF00, &qword_217031498);
  OUTLINED_FUNCTION_1_77(v139, &v866);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v140);
  OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_70(v141);
  v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABEF08, &qword_2170314A0);
  OUTLINED_FUNCTION_1_77(v142, v864);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v143);
  OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_70(v144);
  v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABEF10, &qword_2170314A8);
  OUTLINED_FUNCTION_1_77(v145, &v867);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v146);
  OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_70(v147);
  v148 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABEF18, &qword_2170314B0);
  OUTLINED_FUNCTION_1_77(v148, v871);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v149);
  OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_70(v150);
  v896 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABEF20, &qword_2170314B8);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v151);
  OUTLINED_FUNCTION_105();
  v153 = OUTLINED_FUNCTION_8_0(v152);
  v154 = type metadata accessor for RecordLabelContextMenu(v153);
  v155 = OUTLINED_FUNCTION_1_77(v154, &v863);
  MEMORY[0x28223BE20](v155);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_8_0(v156);
  v157 = sub_21700BEA4();
  v158 = OUTLINED_FUNCTION_0(v157, v873);
  v847 = v159;
  MEMORY[0x28223BE20](v158);
  OUTLINED_FUNCTION_6_0();
  v161 = OUTLINED_FUNCTION_8_0(v160);
  v162 = type metadata accessor for RadioShowContextMenu(v161);
  v163 = OUTLINED_FUNCTION_1_77(v162, v877);
  MEMORY[0x28223BE20](v163);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_8_0(v164);
  v165 = sub_21700C994();
  v166 = OUTLINED_FUNCTION_0(v165, &v874);
  v855[1] = v167;
  MEMORY[0x28223BE20](v166);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_70(v168);
  v169 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABEF28, &qword_2170314C0);
  OUTLINED_FUNCTION_1_77(v169, &v875);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v170);
  OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_70(v171);
  v172 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABEF30, &qword_2170314C8);
  OUTLINED_FUNCTION_1_77(v172, &v888);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v173);
  OUTLINED_FUNCTION_105();
  v175 = OUTLINED_FUNCTION_8_0(v174);
  v176 = type metadata accessor for PlaylistContextMenu(v175);
  v177 = OUTLINED_FUNCTION_1_77(v176, v876);
  MEMORY[0x28223BE20](v177);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_8_0(v178);
  v179 = sub_21700C924();
  v180 = OUTLINED_FUNCTION_0(v179, v879);
  v861[6] = v181;
  MEMORY[0x28223BE20](v180);
  OUTLINED_FUNCTION_6_0();
  v183 = OUTLINED_FUNCTION_8_0(v182);
  v184 = type metadata accessor for MusicVideoContextMenu(v183);
  v185 = OUTLINED_FUNCTION_1_77(v184, &v883);
  MEMORY[0x28223BE20](v185);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_8_0(v186);
  v187 = sub_21700BA44();
  v188 = OUTLINED_FUNCTION_0(v187, &v880);
  v861[4] = v189;
  MEMORY[0x28223BE20](v188);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_70(v190);
  v191 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABEF38, &qword_2170314D0);
  OUTLINED_FUNCTION_1_77(v191, &v884);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v192);
  OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_70(v193);
  v194 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABEF40, &qword_2170314D8);
  OUTLINED_FUNCTION_1_77(v194, &v881);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v195);
  OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_70(v196);
  v197 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABEF48, &qword_2170314E0);
  OUTLINED_FUNCTION_1_77(v197, &v885);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v198);
  OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_70(v199);
  v895 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABEF50, &qword_2170314E8);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v200);
  OUTLINED_FUNCTION_105();
  v202 = OUTLINED_FUNCTION_8_0(v201);
  v203 = type metadata accessor for MusicMovieContextMenu(v202);
  v204 = OUTLINED_FUNCTION_1_77(v203, &v882);
  MEMORY[0x28223BE20](v204);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_8_0(v205);
  v206 = sub_217006B84();
  v207 = OUTLINED_FUNCTION_0(v206, &v890);
  v863 = v208;
  MEMORY[0x28223BE20](v207);
  OUTLINED_FUNCTION_6_0();
  v210 = OUTLINED_FUNCTION_8_0(v209);
  v211 = type metadata accessor for CuratorContextMenu(v210);
  v212 = OUTLINED_FUNCTION_1_77(v211, &v902);
  MEMORY[0x28223BE20](v212);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_8_0(v213);
  v214 = sub_21700C554();
  v215 = OUTLINED_FUNCTION_0(v214, &v897);
  v873[2] = v216;
  MEMORY[0x28223BE20](v215);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_70(v217);
  v218 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABEF58, &qword_2170314F0);
  OUTLINED_FUNCTION_1_77(v218, &v898);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v219);
  OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_70(v220);
  v221 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABEF60, &qword_2170314F8);
  OUTLINED_FUNCTION_1_77(v221, &a17);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v222);
  OUTLINED_FUNCTION_105();
  v224 = OUTLINED_FUNCTION_8_0(v223);
  v225 = type metadata accessor for CreditArtistContextMenu(v224);
  v226 = OUTLINED_FUNCTION_1_77(v225, &v899);
  MEMORY[0x28223BE20](v226);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_8_0(v227);
  v228 = sub_217006E94();
  v229 = OUTLINED_FUNCTION_0(v228, &v904);
  v874 = v230;
  MEMORY[0x28223BE20](v229);
  OUTLINED_FUNCTION_6_0();
  v232 = OUTLINED_FUNCTION_8_0(v231);
  v901 = type metadata accessor for ArtistContextMenu(v232);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v233);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_8_0(v234);
  v235 = sub_21700C384();
  v236 = OUTLINED_FUNCTION_0(v235, &a11);
  v884 = v237;
  MEMORY[0x28223BE20](v236);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_70(v238);
  v902 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABEF68, &qword_217031500);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v239);
  OUTLINED_FUNCTION_105();
  v905 = v240;
  v899 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABEF70, &qword_217031508);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v241);
  OUTLINED_FUNCTION_105();
  v898 = v242;
  v893 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABEF78, &qword_217031510);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v243);
  OUTLINED_FUNCTION_105();
  v892 = v244;
  v245 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABEF80, &qword_217031518);
  OUTLINED_FUNCTION_1_77(v245, &a14);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v246);
  OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_70(v247);
  v248 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABEF88, &qword_217031520);
  OUTLINED_FUNCTION_1_77(v248, &a12);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v249);
  v251 = &v824 - v250;
  v252 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABEF90, &qword_217031528);
  OUTLINED_FUNCTION_1_77(v252, &a16);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v253);
  v255 = &v824 - v254;
  v894 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABEF98, &qword_217031530);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v256);
  OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_70(v257);
  v900 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABEFA0, &qword_217031538);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v258);
  OUTLINED_FUNCTION_105();
  OUTLINED_FUNCTION_70(v259);
  v907[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABEFA8, qword_217031540);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v260);
  OUTLINED_FUNCTION_105();
  v897 = v261;
  v262 = OUTLINED_FUNCTION_4_1();
  v263 = type metadata accessor for AlbumContextMenu(v262);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v264);
  OUTLINED_FUNCTION_7();
  v267 = v266 - v265;
  v268 = sub_21700C1E4();
  OUTLINED_FUNCTION_1();
  v270 = v269;
  MEMORY[0x28223BE20](v271);
  OUTLINED_FUNCTION_6_0();
  v273 = v272;
  OUTLINED_FUNCTION_4_1();
  v274 = sub_2170067A4();
  OUTLINED_FUNCTION_1();
  v276 = v275;
  MEMORY[0x28223BE20](v277);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_196();
  (*(v276 + 16))(v20, v903, v274);
  v278 = (*(v276 + 88))(v20, v274);
  if (v278 != *MEMORY[0x277D2A400])
  {
    v903 = v255;
    v317 = v887;
    v318 = v901;
    v319 = v904;
    if (v278 == *MEMORY[0x277D2A418])
    {
      v320 = OUTLINED_FUNCTION_21_30();
      v321(v320);
      OUTLINED_FUNCTION_41_15();
      v322 = v886;
      v323(v886, v20, v317);
      OUTLINED_FUNCTION_106_2();
      v324 = v885;
      v326(v885 + v325, v322, v317);
      OUTLINED_FUNCTION_1_92();
      sub_2169C3618(v319, v324 + v327, v328);
      type metadata accessor for MenuBuilder();
      OUTLINED_FUNCTION_0_104();
      v331 = sub_2169C3570(v329, v330, &unk_21705881C);
      *v324 = OUTLINED_FUNCTION_89_11(v331);
      v324[1] = v332;
      v333 = *(v318 + 20);
      *(v324 + v333) = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC59E0, &qword_217018AF0);
      swift_storeEnumTagMultiPayload();
      sub_2169C3618(v324, v251, type metadata accessor for ArtistContextMenu);
      OUTLINED_FUNCTION_94_9();
      OUTLINED_FUNCTION_61_10();
      sub_2169C3570(v334, v335, &unk_217042264);
      OUTLINED_FUNCTION_60_10();
      sub_2169C3570(v336, v337, &unk_217030CF4);
      v338 = v903;
      OUTLINED_FUNCTION_88_7();
      sub_217009554();
      OUTLINED_FUNCTION_36_19(v338, &a13);
      OUTLINED_FUNCTION_93_9();
      sub_2169C2AD0();
      sub_2169C2BBC();
      OUTLINED_FUNCTION_83_10();
      OUTLINED_FUNCTION_47_19(v263);
      OUTLINED_FUNCTION_54_15();
      v339 = v892;
      OUTLINED_FUNCTION_48_15();
      sub_216681B04(v340, v341, v342, &qword_217031530);
      OUTLINED_FUNCTION_122_5(v339);
      sub_2169C2A44();
      sub_2169C2CA8();
      OUTLINED_FUNCTION_22_32();
      OUTLINED_FUNCTION_103_8(v339);
      OUTLINED_FUNCTION_57_13();
      v343 = v898;
      sub_216681B04(v319, v898, &qword_27CABEFA0, &qword_217031538);
      OUTLINED_FUNCTION_100_8(v343);
      sub_2169C29B8();
      sub_2169C2F0C();
      OUTLINED_FUNCTION_24_25();
      OUTLINED_FUNCTION_49_17();
      OUTLINED_FUNCTION_25_25(v339);
      OUTLINED_FUNCTION_44_16();
      sub_2169C292C();
      sub_2169C34E4();
      OUTLINED_FUNCTION_19_31();
      v344 = OUTLINED_FUNCTION_82_1();
      sub_216697664(v344, v345, qword_217031540);
      sub_2169C3678(v324, type metadata accessor for ArtistContextMenu);
      v346 = *(v274 + 8);
      v347 = v886;
      v348 = &a11;
LABEL_5:
      v346(v347, *(v348 - 32));
      goto LABEL_12;
    }

    if (v278 != *MEMORY[0x277D2A438])
    {
      if (v278 == *MEMORY[0x277D2A3C8])
      {
        v354 = OUTLINED_FUNCTION_21_30();
        v355(v354);
        OUTLINED_FUNCTION_39_15();
        v356 = v878;
        OUTLINED_FUNCTION_64_0();
        v357();
        OUTLINED_FUNCTION_96_5();
        v358 = v875;
        v359(v875, v356, v20);
        v360 = v877[0];
        OUTLINED_FUNCTION_1_92();
        sub_2169C3618(v319, v358 + v361, v362);
        v363 = (v358 + *(v360 + 24));
        type metadata accessor for MenuBuilder();
        OUTLINED_FUNCTION_0_104();
        v366 = sub_2169C3570(v364, v365, &unk_21705881C);
        *v363 = OUTLINED_FUNCTION_89_11(v366);
        v363[1] = v367;
        v368 = *(v360 + 28);
        *(v358 + v368) = swift_getKeyPath();
        v369 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC59E0, &qword_217018AF0);
        OUTLINED_FUNCTION_109_6(v369);
        OUTLINED_FUNCTION_64_12();
        sub_2169C3618(v370, v371, v372);
        OUTLINED_FUNCTION_93_9();
        OUTLINED_FUNCTION_63_9();
        sub_2169C3570(v373, v374, &unk_217023B28);
        OUTLINED_FUNCTION_62_8();
        sub_2169C3570(v375, v376, &unk_217019914);
        OUTLINED_FUNCTION_46_18();
        v377 = OUTLINED_FUNCTION_7_4();
        OUTLINED_FUNCTION_107_8(v377, v378);
        v379 = v889;
        OUTLINED_FUNCTION_59_11();
        sub_216681B04(v380, v381, v382, &qword_2170314F8);
        OUTLINED_FUNCTION_94_9();
        sub_2169C2AD0();
        sub_2169C2BBC();
        OUTLINED_FUNCTION_83_10();
        OUTLINED_FUNCTION_47_19(v379);
        OUTLINED_FUNCTION_49_17();
        v383 = v892;
        OUTLINED_FUNCTION_59_11();
        sub_216681B04(v384, v385, v386, &qword_217031530);
        OUTLINED_FUNCTION_122_5(v383);
        sub_2169C2A44();
        sub_2169C2CA8();
        OUTLINED_FUNCTION_22_32();
        OUTLINED_FUNCTION_103_8(v383);
        OUTLINED_FUNCTION_57_13();
        OUTLINED_FUNCTION_81_6();
        OUTLINED_FUNCTION_100_8(v274);
        sub_2169C29B8();
        sub_2169C2F0C();
        OUTLINED_FUNCTION_56_13();
        OUTLINED_FUNCTION_49_17();
        OUTLINED_FUNCTION_25_25(v383);
        OUTLINED_FUNCTION_44_16();
        sub_2169C292C();
        sub_2169C34E4();
        OUTLINED_FUNCTION_19_31();
        v387 = OUTLINED_FUNCTION_45();
        sub_216697664(v387, v388, qword_217031540);
        sub_2169C3678(v358, type metadata accessor for CreditArtistContextMenu);
        (*(v251 + 1))(v878, v879[0]);
        goto LABEL_12;
      }

      if (v278 == *MEMORY[0x277D2A428])
      {
        v389 = OUTLINED_FUNCTION_21_30();
        v390(v389);
        OUTLINED_FUNCTION_39_15();
        v391 = v876[0];
        OUTLINED_FUNCTION_64_0();
        v392();
        v393 = v877[3];
        v394 = v873[3];
        OUTLINED_FUNCTION_86_0();
        v395();
        OUTLINED_FUNCTION_1_92();
        sub_2169C3618(v319, v394 + v396, v397);
        type metadata accessor for MenuBuilder();
        OUTLINED_FUNCTION_0_104();
        v400 = sub_2169C3570(v398, v399, &unk_21705881C);
        *v394 = OUTLINED_FUNCTION_89_11(v400);
        v394[1] = v401;
        v402 = *(v393 + 20);
        *(v394 + v402) = swift_getKeyPath();
        v403 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC59E0, &qword_217018AF0);
        OUTLINED_FUNCTION_109_6(v403);
        OUTLINED_FUNCTION_124_5(v394, &v900, type metadata accessor for CuratorContextMenu);
        OUTLINED_FUNCTION_94_9();
        OUTLINED_FUNCTION_63_9();
        sub_2169C3570(v404, v405, &unk_217023B28);
        OUTLINED_FUNCTION_62_8();
        sub_2169C3570(v406, v407, &unk_217019914);
        OUTLINED_FUNCTION_46_18();
        OUTLINED_FUNCTION_108_7(v391);
        v408 = v889;
        OUTLINED_FUNCTION_59_11();
        sub_216681B04(v409, v410, v411, &qword_2170314F8);
        OUTLINED_FUNCTION_94_9();
        sub_2169C2AD0();
        sub_2169C2BBC();
        OUTLINED_FUNCTION_83_10();
        OUTLINED_FUNCTION_47_19(v408);
        OUTLINED_FUNCTION_49_17();
        v412 = v892;
        OUTLINED_FUNCTION_59_11();
        sub_216681B04(v413, v414, v415, &qword_217031530);
        OUTLINED_FUNCTION_122_5(v412);
        sub_2169C2A44();
        sub_2169C2CA8();
        OUTLINED_FUNCTION_22_32();
        OUTLINED_FUNCTION_103_8(v412);
        OUTLINED_FUNCTION_57_13();
        OUTLINED_FUNCTION_81_6();
        OUTLINED_FUNCTION_100_8(v274);
        sub_2169C29B8();
        sub_2169C2F0C();
        OUTLINED_FUNCTION_56_13();
        OUTLINED_FUNCTION_49_17();
        OUTLINED_FUNCTION_25_25(v412);
        OUTLINED_FUNCTION_44_16();
        sub_2169C292C();
        sub_2169C34E4();
        OUTLINED_FUNCTION_19_31();
        v416 = OUTLINED_FUNCTION_45();
        sub_216697664(v416, v417, qword_217031540);
        sub_2169C3678(v394, type metadata accessor for CuratorContextMenu);
        (*(v251 + 1))(v876[0], v876[1]);
        goto LABEL_12;
      }

      if (v278 != *MEMORY[0x277D2A388])
      {
        if (v278 == *MEMORY[0x277D2A408])
        {
          v418 = OUTLINED_FUNCTION_21_30();
          v419(v418);
          OUTLINED_FUNCTION_39_15();
          OUTLINED_FUNCTION_40_14();
          OUTLINED_FUNCTION_64_0();
          v420();
          v421 = v879[1];
          v422 = v873[0];
          OUTLINED_FUNCTION_48_15();
          v423();
          OUTLINED_FUNCTION_1_92();
          sub_2169C3618(v319, v422 + v424, v425);
          type metadata accessor for MenuBuilder();
          OUTLINED_FUNCTION_0_104();
          v428 = sub_2169C3570(v426, v427, &unk_21705881C);
          *v422 = OUTLINED_FUNCTION_89_11(v428);
          v422[1] = v429;
          v430 = *(v421 + 20);
          *(v422 + v430) = swift_getKeyPath();
          v431 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC59E0, &qword_217018AF0);
          OUTLINED_FUNCTION_95_9(v431);
          OUTLINED_FUNCTION_124_5(v422, v907, type metadata accessor for GenreContextMenu);
          OUTLINED_FUNCTION_93_9();
          OUTLINED_FUNCTION_68_11();
          sub_2169C3570(v432, v433, &unk_217040C74);
          OUTLINED_FUNCTION_58_13();
          OUTLINED_FUNCTION_42_6();
          sub_217009554();
          OUTLINED_FUNCTION_102_8();
          OUTLINED_FUNCTION_93_9();
          v434 = sub_2169C2870();
          OUTLINED_FUNCTION_92_6(v434);
          sub_216697664(v274, &qword_27CABEE98, &qword_217031438);
          OUTLINED_FUNCTION_25_25(v255);
          swift_storeEnumTagMultiPayload();
          sub_2169C292C();
          sub_2169C34E4();
          OUTLINED_FUNCTION_19_31();
          v435 = OUTLINED_FUNCTION_45();
          sub_216697664(v435, v436, &qword_217031440);
          sub_2169C3678(v422, type metadata accessor for GenreContextMenu);
          (*(v251 + 1))(v263, v873[1]);
          goto LABEL_12;
        }

        v255 = v904;
        if (v278 == *MEMORY[0x277D2A3B0])
        {
          v437 = OUTLINED_FUNCTION_21_30();
          v438(v437);
          v439 = v863;
          OUTLINED_FUNCTION_92_0();
          OUTLINED_FUNCTION_64_0();
          v440();
          v441 = v865;
          v442 = v864[0];
          OUTLINED_FUNCTION_42_6();
          v443();
          OUTLINED_FUNCTION_1_92();
          sub_2169C3618(v319, v442 + v444, v445);
          type metadata accessor for MenuBuilder();
          OUTLINED_FUNCTION_0_104();
          v448 = sub_2169C3570(v446, v447, &unk_21705881C);
          v449 = OUTLINED_FUNCTION_89_11(v448);
          OUTLINED_FUNCTION_125_4(v449, v450);
          OUTLINED_FUNCTION_2_69();
          v453 = sub_2169C3570(v451, v452, &unk_217058AC0);
          *(v442 + 16) = OUTLINED_FUNCTION_89_11(v453);
          *(v442 + 24) = v454;
          v455 = *(v441 + 24);
          *(v442 + v455) = swift_getKeyPath();
          v456 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC59E0, &qword_217018AF0);
          OUTLINED_FUNCTION_50_14(v456);
          OUTLINED_FUNCTION_75_8();
          OUTLINED_FUNCTION_64_12();
          sub_2169C3618(v457, v458, v459);
          OUTLINED_FUNCTION_93_9();
          OUTLINED_FUNCTION_74_11();
          sub_2169C3570(v460, v461, &unk_2170395F8);
          OUTLINED_FUNCTION_4_56();
          sub_2169C3570(v462, v463, &unk_217033818);
          OUTLINED_FUNCTION_94_0();
          v464 = OUTLINED_FUNCTION_7_4();
          OUTLINED_FUNCTION_107_8(v464, v465);
          OUTLINED_FUNCTION_59_11();
          sub_216681B04(v466, v467, v468, &qword_2170314E0);
          OUTLINED_FUNCTION_93_9();
          sub_2169C2D34();
          sub_2169C2E20();
          OUTLINED_FUNCTION_87_10();
          sub_217009554();
          OUTLINED_FUNCTION_54_15();
          v469 = v892;
          OUTLINED_FUNCTION_59_11();
          sub_216681B04(v470, v471, v472, &qword_2170314E8);
          swift_storeEnumTagMultiPayload();
          sub_2169C2A44();
          sub_2169C2CA8();
          OUTLINED_FUNCTION_22_32();
          OUTLINED_FUNCTION_103_8(v469);
          OUTLINED_FUNCTION_57_13();
          OUTLINED_FUNCTION_81_6();
          OUTLINED_FUNCTION_100_8(v274);
          sub_2169C29B8();
          sub_2169C2F0C();
          OUTLINED_FUNCTION_56_13();
          OUTLINED_FUNCTION_49_17();
          OUTLINED_FUNCTION_25_25(v469);
          OUTLINED_FUNCTION_44_16();
          sub_2169C292C();
          sub_2169C34E4();
          OUTLINED_FUNCTION_19_31();
          v473 = OUTLINED_FUNCTION_45();
          sub_216697664(v473, v474, qword_217031540);
          OUTLINED_FUNCTION_99_9();
          (*(v439 + 8))(v871[2], v872[0]);
          goto LABEL_12;
        }

        if (v278 == *MEMORY[0x277D2A3B8])
        {
          v475 = OUTLINED_FUNCTION_21_30();
          v476(v475);
          OUTLINED_FUNCTION_39_15();
          OUTLINED_FUNCTION_40_14();
          OUTLINED_FUNCTION_64_0();
          v477();
          OUTLINED_FUNCTION_96_5();
          v478 = v861[5];
          OUTLINED_FUNCTION_48_15();
          v479();
          v480 = v868;
          OUTLINED_FUNCTION_1_92();
          sub_2169C3618(v319, v478 + v481, v482);
          v483 = *(v480 + 24);
          *(v478 + v483) = swift_getKeyPath();
          v484 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC59E0, &qword_217018AF0);
          OUTLINED_FUNCTION_95_9(v484);
          OUTLINED_FUNCTION_97_7();
          type metadata accessor for MenuBuilder();
          OUTLINED_FUNCTION_0_104();
          v487 = sub_2169C3570(v485, v486, &unk_21705881C);
          *v276 = OUTLINED_FUNCTION_89_11(v487);
          *(v276 + 8) = v488;
          v489 = OUTLINED_FUNCTION_97_7();
          type metadata accessor for PlaybackPresenter(v489);
          OUTLINED_FUNCTION_2_69();
          v492 = sub_2169C3570(v490, v491, &unk_217058AC0);
          v493 = OUTLINED_FUNCTION_89_11(v492);
          OUTLINED_FUNCTION_11_40(v493, v494);
          OUTLINED_FUNCTION_64_12();
          sub_2169C3618(v495, v496, v497);
          OUTLINED_FUNCTION_94_9();
          OUTLINED_FUNCTION_74_11();
          sub_2169C3570(v498, v499, &unk_2170395F8);
          OUTLINED_FUNCTION_4_56();
          sub_2169C3570(v500, v501, &unk_217033818);
          OUTLINED_FUNCTION_94_0();
          OUTLINED_FUNCTION_88_7();
          sub_217009554();
          OUTLINED_FUNCTION_80_8(v318);
          OUTLINED_FUNCTION_93_9();
          sub_2169C2D34();
          sub_2169C2E20();
          OUTLINED_FUNCTION_27_24();
          OUTLINED_FUNCTION_54_15();
          v502 = v892;
          OUTLINED_FUNCTION_35_21(v319);
          OUTLINED_FUNCTION_110_6();
          sub_2169C2A44();
          sub_2169C2CA8();
          OUTLINED_FUNCTION_22_32();
          OUTLINED_FUNCTION_103_8(v502);
          v503 = OUTLINED_FUNCTION_45();
          sub_216697664(v503, v504, &qword_2170314E8);
          v505 = v898;
          OUTLINED_FUNCTION_35_21(v319);
          OUTLINED_FUNCTION_100_8(v505);
          sub_2169C29B8();
          sub_2169C2F0C();
          OUTLINED_FUNCTION_26_26();
          OUTLINED_FUNCTION_49_17();
          OUTLINED_FUNCTION_25_25(v274);
          OUTLINED_FUNCTION_44_16();
          sub_2169C292C();
          sub_2169C34E4();
          OUTLINED_FUNCTION_19_31();
          OUTLINED_FUNCTION_53_14();
          OUTLINED_FUNCTION_14_34();
          sub_2169C3678(v478, v506);
          (*(v251 + 1))(v263, v864[1]);
          goto LABEL_12;
        }

        if (v278 == *MEMORY[0x277D2A440])
        {
          v507 = OUTLINED_FUNCTION_21_30();
          v508(v507);
          OUTLINED_FUNCTION_40_14();
          OUTLINED_FUNCTION_64_0();
          v509();
          OUTLINED_FUNCTION_118_6();
          OUTLINED_FUNCTION_48_15();
          v510();
          OUTLINED_FUNCTION_1_92();
          sub_2169C3618(v319, &v251[v511], v512);
          OUTLINED_FUNCTION_76_9();
          type metadata accessor for MenuBuilder();
          OUTLINED_FUNCTION_0_104();
          v515 = sub_2169C3570(v513, v514, &unk_21705881C);
          v516 = OUTLINED_FUNCTION_89_11(v515);
          OUTLINED_FUNCTION_115_6(v516, v517);
          v518 = OUTLINED_FUNCTION_76_9();
          v519 = type metadata accessor for PlaybackPresenter(v518);
          OUTLINED_FUNCTION_2_69();
          v522 = sub_2169C3570(v520, v521, &unk_217058AC0);
          v523 = OUTLINED_FUNCTION_89_11(v522);
          OUTLINED_FUNCTION_114_6(v523, v524);
          *&v251[v519] = swift_getKeyPath();
          v525 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC59E0, &qword_217018AF0);
          OUTLINED_FUNCTION_50_14(v525);
          OUTLINED_FUNCTION_75_8();
          OUTLINED_FUNCTION_64_12();
          sub_2169C3618(v526, v527, v528);
          OUTLINED_FUNCTION_93_9();
          OUTLINED_FUNCTION_70_8();
          sub_2169C3570(v529, v530, &unk_217064054);
          OUTLINED_FUNCTION_69_11();
          sub_2169C3570(v531, v532, &unk_217044178);
          OUTLINED_FUNCTION_87_10();
          v533 = OUTLINED_FUNCTION_7_4();
          OUTLINED_FUNCTION_107_8(v533, v534);
          OUTLINED_FUNCTION_80_8(v268);
          OUTLINED_FUNCTION_94_9();
          sub_2169C2D34();
          sub_2169C2E20();
          OUTLINED_FUNCTION_27_24();
          OUTLINED_FUNCTION_57_13();
          v535 = v892;
          OUTLINED_FUNCTION_35_21(v319);
          OUTLINED_FUNCTION_110_6();
          sub_2169C2A44();
          sub_2169C2CA8();
          OUTLINED_FUNCTION_22_32();
          OUTLINED_FUNCTION_103_8(v535);
          v536 = OUTLINED_FUNCTION_45();
          sub_216697664(v536, v537, &qword_2170314E8);
          v538 = v898;
          OUTLINED_FUNCTION_35_21(v319);
          OUTLINED_FUNCTION_100_8(v538);
          sub_2169C29B8();
          sub_2169C2F0C();
          OUTLINED_FUNCTION_26_26();
          OUTLINED_FUNCTION_49_17();
          OUTLINED_FUNCTION_25_25(v274);
          OUTLINED_FUNCTION_44_16();
          sub_2169C292C();
          sub_2169C34E4();
          OUTLINED_FUNCTION_19_31();
          OUTLINED_FUNCTION_53_14();
          OUTLINED_FUNCTION_99_9();
          OUTLINED_FUNCTION_67();
          v540 = v263;
          v541 = v879;
LABEL_22:
          v539(v540, *(v541 - 32));
          goto LABEL_12;
        }

        if (v278 == *MEMORY[0x277D2A450])
        {
          v542 = OUTLINED_FUNCTION_21_30();
          v543(v542);
          OUTLINED_FUNCTION_39_15();
          OUTLINED_FUNCTION_64_0();
          v544();
          OUTLINED_FUNCTION_96_5();
          v545 = v856[0];
          OUTLINED_FUNCTION_86_0();
          v546();
          OUTLINED_FUNCTION_1_92();
          sub_2169C3618(v319, v545 + v547, v548);
          type metadata accessor for MenuBuilder();
          OUTLINED_FUNCTION_0_104();
          v551 = sub_2169C3570(v549, v550, &unk_21705881C);
          v552 = OUTLINED_FUNCTION_89_11(v551);
          OUTLINED_FUNCTION_115_6(v552, v553);
          v554 = type metadata accessor for PlaybackPresenter(0);
          OUTLINED_FUNCTION_2_69();
          v557 = sub_2169C3570(v555, v556, &unk_217058AC0);
          v558 = OUTLINED_FUNCTION_89_11(v557);
          OUTLINED_FUNCTION_114_6(v558, v559);
          *(v545 + v554) = swift_getKeyPath();
          v560 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC59E0, &qword_217018AF0);
          OUTLINED_FUNCTION_109_6(v560);
          OUTLINED_FUNCTION_64_12();
          sub_2169C3618(v561, v562, v563);
          OUTLINED_FUNCTION_94_9();
          OUTLINED_FUNCTION_70_8();
          sub_2169C3570(v564, v565, &unk_217064054);
          OUTLINED_FUNCTION_69_11();
          sub_2169C3570(v566, v567, &unk_217044178);
          OUTLINED_FUNCTION_87_10();
          OUTLINED_FUNCTION_88_7();
          sub_217009554();
          OUTLINED_FUNCTION_80_8(v268);
          OUTLINED_FUNCTION_94_9();
          sub_2169C2D34();
          sub_2169C2E20();
          OUTLINED_FUNCTION_27_24();
          OUTLINED_FUNCTION_57_13();
          v568 = v892;
          OUTLINED_FUNCTION_35_21(v319);
          OUTLINED_FUNCTION_110_6();
          sub_2169C2A44();
          sub_2169C2CA8();
          OUTLINED_FUNCTION_22_32();
          OUTLINED_FUNCTION_103_8(v568);
          v569 = OUTLINED_FUNCTION_45();
          sub_216697664(v569, v570, &qword_2170314E8);
          v571 = v898;
          OUTLINED_FUNCTION_35_21(v319);
          OUTLINED_FUNCTION_100_8(v571);
          sub_2169C29B8();
          sub_2169C2F0C();
          OUTLINED_FUNCTION_26_26();
          OUTLINED_FUNCTION_49_17();
          OUTLINED_FUNCTION_25_25(v274);
          OUTLINED_FUNCTION_44_16();
          sub_2169C292C();
          sub_2169C34E4();
          OUTLINED_FUNCTION_19_31();
          OUTLINED_FUNCTION_53_14();
          sub_2169C3678(v545, type metadata accessor for RadioShowContextMenu);
          (*(v251 + 1))(v859, v860);
          goto LABEL_12;
        }

        if (v278 == *MEMORY[0x277D2A3C0])
        {
          v572 = OUTLINED_FUNCTION_21_30();
          v573(v572);
          OUTLINED_FUNCTION_39_15();
          OUTLINED_FUNCTION_40_14();
          OUTLINED_FUNCTION_64_0();
          v574();
          OUTLINED_FUNCTION_96_5();
          v575 = v848;
          OUTLINED_FUNCTION_48_15();
          v576();
          v577 = v851;
          OUTLINED_FUNCTION_1_92();
          sub_2169C3618(v255, v575 + v578, v579);
          v580 = (v575 + *(v577 + 24));
          type metadata accessor for MenuBuilder();
          OUTLINED_FUNCTION_0_104();
          v583 = sub_2169C3570(v581, v582, &unk_21705881C);
          *v580 = OUTLINED_FUNCTION_89_11(v583);
          v580[1] = v584;
          v585 = *(v577 + 28);
          *(v575 + v585) = swift_getKeyPath();
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC59E0, &qword_217018AF0);
          swift_storeEnumTagMultiPayload();
          OUTLINED_FUNCTION_64_12();
          sub_2169C3618(v586, v587, v588);
          OUTLINED_FUNCTION_93_9();
          OUTLINED_FUNCTION_65_8();
          sub_2169C3570(v589, v590, &unk_217025FE8);
          OUTLINED_FUNCTION_3_73();
          sub_2169C3570(v591, v592, &unk_21705C910);
          OUTLINED_FUNCTION_58_13();
          v593 = OUTLINED_FUNCTION_7_4();
          OUTLINED_FUNCTION_107_8(v593, v594);
          OUTLINED_FUNCTION_35_21(v274);
          OUTLINED_FUNCTION_93_9();
          sub_2169C3024();
          sub_2169C3110();
          OUTLINED_FUNCTION_119_4();
          v596 = *(v595 - 256);
          OUTLINED_FUNCTION_42_20();
          sub_217009554();
          OUTLINED_FUNCTION_53_14();
          OUTLINED_FUNCTION_35_21(v596);
          OUTLINED_FUNCTION_93_9();
          sub_2169C2F98();
          sub_2169C3280();
          OUTLINED_FUNCTION_87_10();
          OUTLINED_FUNCTION_20_27();
          sub_217009554();
          v597 = OUTLINED_FUNCTION_45();
          sub_216697664(v597, v598, &qword_2170314B0);
          v599 = v898;
          OUTLINED_FUNCTION_35_21(v268);
          OUTLINED_FUNCTION_101_5(v599);
          sub_2169C29B8();
          sub_2169C2F0C();
          OUTLINED_FUNCTION_26_26();
          OUTLINED_FUNCTION_57_13();
          OUTLINED_FUNCTION_25_25(v274);
          OUTLINED_FUNCTION_44_16();
          sub_2169C292C();
          sub_2169C34E4();
          OUTLINED_FUNCTION_19_31();
          OUTLINED_FUNCTION_53_14();
          sub_2169C3678(v575, type metadata accessor for RecordLabelContextMenu);
          (*(v251 + 1))(v263, v856[1]);
          goto LABEL_12;
        }

        if (v278 == *MEMORY[0x277D2A3D0])
        {
          v600 = OUTLINED_FUNCTION_21_30();
          v601(v600);
          OUTLINED_FUNCTION_92_0();
          OUTLINED_FUNCTION_64_0();
          v602();
          v603 = v839;
          OUTLINED_FUNCTION_42_6();
          v604();
          v605 = v841;
          sub_216B14DE0(v603, v841);
          if (__swift_getEnumTagSinglePayload(v605, 1, v840) == 1)
          {
            sub_216697664(v605, &qword_27CABEEE8, &unk_217051AD0);
            v606 = 1;
            v607 = v905;
            v608 = v898;
            v609 = v843;
          }

          else
          {
            OUTLINED_FUNCTION_64_12();
            sub_2169C35B8(v642, v643, v644);
            v609 = v843;
            v645 = v835;
            sub_2169C3618(v276, v835 + *(v843 + 36), type metadata accessor for SocialProfileDescriptor);
            OUTLINED_FUNCTION_1_92();
            sub_2169C3618(v319, v645 + v646, v647);
            type metadata accessor for MenuBuilder();
            OUTLINED_FUNCTION_0_104();
            v650 = sub_2169C3570(v648, v649, &unk_21705881C);
            *v645 = OUTLINED_FUNCTION_89_11(v650);
            v645[1] = v651;
            type metadata accessor for SocialGraphController(0);
            v652 = sub_2169C3570(&qword_280E39AC8, type metadata accessor for SocialGraphController, &unk_217070E24);
            v645[2] = OUTLINED_FUNCTION_89_11(v652);
            v645[3] = v653;
            type metadata accessor for UserSocialProfileCoordinator(0);
            v654 = sub_2169C3570(&unk_280E31C00, type metadata accessor for UserSocialProfileCoordinator, &unk_21705D6E8);
            v645[4] = OUTLINED_FUNCTION_89_11(v654);
            v645[5] = v655;
            v656 = *(v609 + 28);
            *(v645 + v656) = swift_getKeyPath();
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC59E0, &qword_217018AF0);
            swift_storeEnumTagMultiPayload();
            v657 = *(v609 + 32);
            v908 = 0;
            sub_21700AEA4();
            sub_2169C3678(v276, type metadata accessor for SocialProfileDescriptor);
            *(v645 + v657) = v909;
            sub_2169C35B8(v645, v846, type metadata accessor for SocialProfileContextMenu);
            v606 = 0;
            v607 = v905;
            v608 = v898;
          }

          v658 = v846;
          __swift_storeEnumTagSinglePayload(v846, v606, 1, v609);
          sub_216681B04(v658, v844, &qword_27CABEEF0, &qword_217031488);
          OUTLINED_FUNCTION_93_9();
          sub_2169C31CC();
          OUTLINED_FUNCTION_73_8();
          sub_2169C3570(v659, v660, &unk_21702AB54);
          OUTLINED_FUNCTION_58_13();
          sub_217009554();
          OUTLINED_FUNCTION_88_7();
          sub_216681B04(v661, v662, v663, v664);
          OUTLINED_FUNCTION_94_9();
          sub_2169C3024();
          sub_2169C3110();
          OUTLINED_FUNCTION_119_4();
          OUTLINED_FUNCTION_94_0();
          OUTLINED_FUNCTION_42_20();
          sub_217009554();
          OUTLINED_FUNCTION_86_0();
          sub_216697664(v665, v666, v667);
          OUTLINED_FUNCTION_88_7();
          sub_216681B04(v668, v669, v670, v671);
          OUTLINED_FUNCTION_38_17();
          swift_storeEnumTagMultiPayload();
          sub_2169C2F98();
          sub_2169C3280();
          OUTLINED_FUNCTION_46_18();
          OUTLINED_FUNCTION_20_27();
          sub_217009554();
          OUTLINED_FUNCTION_86_0();
          sub_216697664(v672, v673, v674);
          OUTLINED_FUNCTION_88_7();
          sub_216681B04(v675, v676, v677, v678);
          OUTLINED_FUNCTION_101_5(v608);
          sub_2169C29B8();
          sub_2169C2F0C();
          v679 = v897;
          sub_217009554();
          OUTLINED_FUNCTION_86_0();
          sub_216697664(v680, v681, v682);
          sub_216681B04(v679, v607, &qword_27CABEFA8, qword_217031540);
          swift_storeEnumTagMultiPayload();
          sub_2169C292C();
          sub_2169C34E4();
          sub_217009554();
          v683 = OUTLINED_FUNCTION_7_4();
          sub_216697664(v683, v684, qword_217031540);
          sub_216697664(v658, &qword_27CABEEF0, &qword_217031488);
          OUTLINED_FUNCTION_67();
          v540 = v849[0];
          v541 = &v862;
          goto LABEL_22;
        }

        if (v278 == *MEMORY[0x277D2A3F8])
        {
          v610 = OUTLINED_FUNCTION_21_30();
          v611(v610);
          OUTLINED_FUNCTION_46_18();
          OUTLINED_FUNCTION_40_14();
          OUTLINED_FUNCTION_64_0();
          v612();
          OUTLINED_FUNCTION_118_6();
          OUTLINED_FUNCTION_48_15();
          v613();
          OUTLINED_FUNCTION_1_92();
          sub_2169C3618(v319, &v251[v614], v615);
          OUTLINED_FUNCTION_76_9();
          type metadata accessor for MenuBuilder();
          OUTLINED_FUNCTION_0_104();
          v618 = sub_2169C3570(v616, v617, &unk_21705881C);
          v619 = OUTLINED_FUNCTION_89_11(v618);
          OUTLINED_FUNCTION_115_6(v619, v620);
          v621 = OUTLINED_FUNCTION_76_9();
          v622 = type metadata accessor for PlaybackPresenter(v621);
          OUTLINED_FUNCTION_2_69();
          v625 = sub_2169C3570(v623, v624, &unk_217058AC0);
          v626 = OUTLINED_FUNCTION_89_11(v625);
          OUTLINED_FUNCTION_114_6(v626, v627);
          *&v251[v622] = swift_getKeyPath();
          v628 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC59E0, &qword_217018AF0);
          OUTLINED_FUNCTION_50_14(v628);
          OUTLINED_FUNCTION_13_31();
          OUTLINED_FUNCTION_64_12();
          sub_2169C3618(v629, v630, v631);
          OUTLINED_FUNCTION_94_9();
          OUTLINED_FUNCTION_65_8();
          sub_2169C3570(v632, v633, &unk_217025FE8);
          OUTLINED_FUNCTION_3_73();
          sub_2169C3570(v634, v635, &unk_21705C910);
          OUTLINED_FUNCTION_58_13();
          OUTLINED_FUNCTION_88_7();
          sub_217009554();
          OUTLINED_FUNCTION_35_21(v274);
          OUTLINED_FUNCTION_93_9();
          sub_2169C3024();
          sub_2169C3110();
          OUTLINED_FUNCTION_119_4();
          v637 = *(v636 - 256);
          OUTLINED_FUNCTION_42_20();
          sub_217009554();
          OUTLINED_FUNCTION_53_14();
          OUTLINED_FUNCTION_35_21(v637);
          OUTLINED_FUNCTION_93_9();
          sub_2169C2F98();
          sub_2169C3280();
          OUTLINED_FUNCTION_87_10();
          OUTLINED_FUNCTION_20_27();
          sub_217009554();
          v638 = OUTLINED_FUNCTION_45();
          sub_216697664(v638, v639, &qword_2170314B0);
          v640 = v898;
          OUTLINED_FUNCTION_35_21(v268);
          OUTLINED_FUNCTION_101_5(v640);
          sub_2169C29B8();
          sub_2169C2F0C();
          OUTLINED_FUNCTION_26_26();
          OUTLINED_FUNCTION_57_13();
          OUTLINED_FUNCTION_25_25(v274);
          OUTLINED_FUNCTION_44_16();
          sub_2169C292C();
          sub_2169C34E4();
          OUTLINED_FUNCTION_19_31();
          OUTLINED_FUNCTION_53_14();
          OUTLINED_FUNCTION_15_33();
          sub_2169C3678(v251, v641);
          (*(v319 + 8))(v263, v842);
          goto LABEL_12;
        }

        if (v278 == *MEMORY[0x277D2A430])
        {
          v685 = OUTLINED_FUNCTION_21_30();
          v686(v685);
          OUTLINED_FUNCTION_41_15();
          OUTLINED_FUNCTION_45();
          OUTLINED_FUNCTION_64_0();
          v687();
          OUTLINED_FUNCTION_118_6();
          OUTLINED_FUNCTION_59_11();
          v688();
          OUTLINED_FUNCTION_1_92();
          OUTLINED_FUNCTION_111_6(v690, v689);
          OUTLINED_FUNCTION_76_9();
          type metadata accessor for MenuBuilder();
          OUTLINED_FUNCTION_0_104();
          v693 = sub_2169C3570(v691, v692, &unk_21705881C);
          v694 = OUTLINED_FUNCTION_89_11(v693);
          OUTLINED_FUNCTION_115_6(v694, v695);
          v696 = OUTLINED_FUNCTION_76_9();
          v697 = type metadata accessor for PlaybackPresenter(v696);
          OUTLINED_FUNCTION_2_69();
          v700 = sub_2169C3570(v698, v699, &unk_217058AC0);
          v701 = OUTLINED_FUNCTION_89_11(v700);
          OUTLINED_FUNCTION_114_6(v701, v702);
          *&v251[v697] = swift_getKeyPath();
          v703 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC59E0, &qword_217018AF0);
          OUTLINED_FUNCTION_50_14(v703);
          OUTLINED_FUNCTION_75_8();
          OUTLINED_FUNCTION_64_12();
          sub_2169C3618(v704, v705, v706);
          OUTLINED_FUNCTION_94_9();
          sub_2169C31CC();
          OUTLINED_FUNCTION_73_8();
          sub_2169C3570(v707, v708, &unk_21702AB54);
          OUTLINED_FUNCTION_46_18();
          OUTLINED_FUNCTION_88_7();
          sub_217009554();
          OUTLINED_FUNCTION_36_19(v319, &v868);
          OUTLINED_FUNCTION_94_9();
          sub_2169C3024();
          sub_2169C3110();
          OUTLINED_FUNCTION_119_4();
          OUTLINED_FUNCTION_94_0();
          OUTLINED_FUNCTION_42_20();
          sub_217009554();
          OUTLINED_FUNCTION_49_17();
          OUTLINED_FUNCTION_31_26(v318);
          OUTLINED_FUNCTION_38_17();
          swift_storeEnumTagMultiPayload();
          sub_2169C2F98();
          sub_2169C3280();
          OUTLINED_FUNCTION_18_28();
          sub_216697664(v318, &qword_27CABEF18, &qword_2170314B0);
          OUTLINED_FUNCTION_30_24();
          OUTLINED_FUNCTION_91_10();
          sub_2169C29B8();
          sub_2169C2F0C();
          OUTLINED_FUNCTION_24_25();
          OUTLINED_FUNCTION_90_8();
          OUTLINED_FUNCTION_25_25(&qword_27CABEF18);
          OUTLINED_FUNCTION_44_16();
          sub_2169C292C();
          sub_2169C34E4();
          OUTLINED_FUNCTION_19_31();
          v709 = OUTLINED_FUNCTION_82_1();
          sub_216697664(v709, v710, qword_217031540);
          OUTLINED_FUNCTION_99_9();
          v347 = OUTLINED_FUNCTION_104_6();
          v348 = v855;
          goto LABEL_5;
        }

        if (v278 == *MEMORY[0x277D2A458])
        {
          v711 = OUTLINED_FUNCTION_21_30();
          v712(v711);
          OUTLINED_FUNCTION_41_15();
          OUTLINED_FUNCTION_45();
          OUTLINED_FUNCTION_64_0();
          v713();
          v714 = v832;
          OUTLINED_FUNCTION_106_2();
          v716 = OUTLINED_FUNCTION_43_20(v715);
          v717(v716);
          OUTLINED_FUNCTION_1_92();
          OUTLINED_FUNCTION_111_6(v719, v718);
          type metadata accessor for MenuBuilder();
          OUTLINED_FUNCTION_0_104();
          v722 = sub_2169C3570(v720, v721, &unk_21705881C);
          v723 = OUTLINED_FUNCTION_89_11(v722);
          OUTLINED_FUNCTION_125_4(v723, v724);
          OUTLINED_FUNCTION_2_69();
          v727 = sub_2169C3570(v725, v726, &unk_217058AC0);
          *(v251 + 2) = OUTLINED_FUNCTION_89_11(v727);
          *(v251 + 3) = v728;
          v729 = *(v714 + 24);
          *&v251[v729] = swift_getKeyPath();
          v730 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC59E0, &qword_217018AF0);
          OUTLINED_FUNCTION_50_14(v730);
          OUTLINED_FUNCTION_75_8();
          OUTLINED_FUNCTION_64_12();
          sub_2169C3618(v731, v732, v733);
          OUTLINED_FUNCTION_93_9();
          OUTLINED_FUNCTION_72_11();
          sub_2169C3570(v734, v735, &unk_217030C88);
          OUTLINED_FUNCTION_71_11();
          sub_2169C3570(v736, v737, &unk_21703D874);
          OUTLINED_FUNCTION_94_0();
          v738 = OUTLINED_FUNCTION_7_4();
          OUTLINED_FUNCTION_107_8(v738, v739);
          OUTLINED_FUNCTION_34_19();
          OUTLINED_FUNCTION_79_13();
          swift_storeEnumTagMultiPayload();
          sub_2169C330C();
          sub_2169C33F8();
          OUTLINED_FUNCTION_23_27();
          OUTLINED_FUNCTION_54_15();
          OUTLINED_FUNCTION_31_26(v319);
          OUTLINED_FUNCTION_38_17();
          swift_storeEnumTagMultiPayload();
          sub_2169C2F98();
          sub_2169C3280();
          OUTLINED_FUNCTION_18_28();
          OUTLINED_FUNCTION_98_9();
          OUTLINED_FUNCTION_30_24();
          OUTLINED_FUNCTION_91_10();
          sub_2169C29B8();
          sub_2169C2F0C();
          OUTLINED_FUNCTION_24_25();
          OUTLINED_FUNCTION_90_8();
          OUTLINED_FUNCTION_25_25(&qword_27CABEED0);
          OUTLINED_FUNCTION_44_16();
          sub_2169C292C();
          sub_2169C34E4();
          OUTLINED_FUNCTION_19_31();
          v740 = OUTLINED_FUNCTION_82_1();
          sub_216697664(v740, v741, qword_217031540);
          OUTLINED_FUNCTION_99_9();
          v347 = OUTLINED_FUNCTION_104_6();
          v348 = v854;
          goto LABEL_5;
        }

        if (v278 != *MEMORY[0x277D2A448])
        {
          if (v278 == *MEMORY[0x277D2A420])
          {
            v742 = OUTLINED_FUNCTION_21_30();
            v743(v742);
            OUTLINED_FUNCTION_41_15();
            OUTLINED_FUNCTION_45();
            OUTLINED_FUNCTION_64_0();
            v744();
            v745 = v833;
            OUTLINED_FUNCTION_106_2();
            v747 = OUTLINED_FUNCTION_43_20(v746);
            v748(v747);
            OUTLINED_FUNCTION_1_92();
            OUTLINED_FUNCTION_111_6(v750, v749);
            type metadata accessor for MenuBuilder();
            OUTLINED_FUNCTION_0_104();
            v753 = sub_2169C3570(v751, v752, &unk_21705881C);
            *v251 = OUTLINED_FUNCTION_89_11(v753);
            *(v251 + 1) = v754;
            v755 = *(v745 + 20);
            *&v251[v755] = swift_getKeyPath();
            v756 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC59E0, &qword_217018AF0);
            OUTLINED_FUNCTION_50_14(v756);
            v757 = OUTLINED_FUNCTION_75_8();
            OUTLINED_FUNCTION_124_5(v757, v849, v758);
            OUTLINED_FUNCTION_94_9();
            OUTLINED_FUNCTION_72_11();
            sub_2169C3570(v759, v760, &unk_217030C88);
            OUTLINED_FUNCTION_71_11();
            sub_2169C3570(v761, v762, &unk_21703D874);
            OUTLINED_FUNCTION_94_0();
            OUTLINED_FUNCTION_108_7(v317);
            OUTLINED_FUNCTION_34_19();
            OUTLINED_FUNCTION_79_13();
            swift_storeEnumTagMultiPayload();
            sub_2169C330C();
            sub_2169C33F8();
            OUTLINED_FUNCTION_23_27();
            OUTLINED_FUNCTION_54_15();
            OUTLINED_FUNCTION_31_26(v319);
            OUTLINED_FUNCTION_38_17();
            swift_storeEnumTagMultiPayload();
            sub_2169C2F98();
            sub_2169C3280();
            OUTLINED_FUNCTION_18_28();
            OUTLINED_FUNCTION_98_9();
            OUTLINED_FUNCTION_30_24();
            OUTLINED_FUNCTION_91_10();
            sub_2169C29B8();
            sub_2169C2F0C();
            OUTLINED_FUNCTION_24_25();
            OUTLINED_FUNCTION_90_8();
            OUTLINED_FUNCTION_25_25(&qword_27CABEED0);
            OUTLINED_FUNCTION_44_16();
            sub_2169C292C();
            sub_2169C34E4();
            OUTLINED_FUNCTION_19_31();
            v763 = OUTLINED_FUNCTION_82_1();
            sub_216697664(v763, v764, qword_217031540);
            OUTLINED_FUNCTION_99_9();
            v347 = OUTLINED_FUNCTION_104_6();
            v348 = v845;
            goto LABEL_5;
          }

          if (v278 == *MEMORY[0x277D2A3D8])
          {
            v765 = OUTLINED_FUNCTION_21_30();
            v766(v765);
            OUTLINED_FUNCTION_41_15();
            OUTLINED_FUNCTION_45();
            OUTLINED_FUNCTION_64_0();
            v767();
            v768 = v828;
            OUTLINED_FUNCTION_106_2();
            v770 = OUTLINED_FUNCTION_43_20(v769);
            v771(v770);
            OUTLINED_FUNCTION_1_92();
            OUTLINED_FUNCTION_111_6(v773, v772);
            type metadata accessor for MenuBuilder();
            OUTLINED_FUNCTION_0_104();
            v776 = sub_2169C3570(v774, v775, &unk_21705881C);
            v777 = OUTLINED_FUNCTION_89_11(v776);
            OUTLINED_FUNCTION_125_4(v777, v778);
            OUTLINED_FUNCTION_2_69();
            v781 = sub_2169C3570(v779, v780, &unk_217058AC0);
            *(v251 + 2) = OUTLINED_FUNCTION_89_11(v781);
            *(v251 + 3) = v782;
            v783 = *(v768 + 24);
            *&v251[v783] = swift_getKeyPath();
            v784 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC59E0, &qword_217018AF0);
            OUTLINED_FUNCTION_50_14(v784);
            OUTLINED_FUNCTION_75_8();
            OUTLINED_FUNCTION_64_12();
            sub_2169C3618(v785, v786, v787);
            OUTLINED_FUNCTION_93_9();
            OUTLINED_FUNCTION_67_9();
            sub_2169C3570(v788, v789, &unk_21706E61C);
            OUTLINED_FUNCTION_66_11();
            sub_2169C3570(v790, v791, &unk_21703551C);
            OUTLINED_FUNCTION_94_0();
            v792 = OUTLINED_FUNCTION_7_4();
            OUTLINED_FUNCTION_107_8(v792, v793);
            OUTLINED_FUNCTION_34_19();
            OUTLINED_FUNCTION_79_13();
            swift_storeEnumTagMultiPayload();
            sub_2169C330C();
            sub_2169C33F8();
            OUTLINED_FUNCTION_23_27();
            OUTLINED_FUNCTION_54_15();
            OUTLINED_FUNCTION_31_26(v319);
            OUTLINED_FUNCTION_38_17();
            swift_storeEnumTagMultiPayload();
            sub_2169C2F98();
            sub_2169C3280();
            OUTLINED_FUNCTION_18_28();
            OUTLINED_FUNCTION_98_9();
            OUTLINED_FUNCTION_30_24();
            OUTLINED_FUNCTION_91_10();
            sub_2169C29B8();
            sub_2169C2F0C();
            OUTLINED_FUNCTION_24_25();
            OUTLINED_FUNCTION_90_8();
            OUTLINED_FUNCTION_25_25(&qword_27CABEED0);
            OUTLINED_FUNCTION_44_16();
            sub_2169C292C();
            sub_2169C34E4();
            OUTLINED_FUNCTION_19_31();
            v794 = OUTLINED_FUNCTION_82_1();
            sub_216697664(v794, v795, qword_217031540);
            OUTLINED_FUNCTION_99_9();
            v347 = OUTLINED_FUNCTION_104_6();
            v348 = &v844;
            goto LABEL_5;
          }

          if (v278 == *MEMORY[0x277D2A3E0])
          {
            v796 = OUTLINED_FUNCTION_21_30();
            v797(v796);
            OUTLINED_FUNCTION_41_15();
            OUTLINED_FUNCTION_45();
            OUTLINED_FUNCTION_64_0();
            v798();
            v799 = v829;
            OUTLINED_FUNCTION_106_2();
            v801 = OUTLINED_FUNCTION_43_20(v800);
            v802(v801);
            OUTLINED_FUNCTION_1_92();
            OUTLINED_FUNCTION_111_6(v804, v803);
            type metadata accessor for MenuBuilder();
            OUTLINED_FUNCTION_0_104();
            v807 = sub_2169C3570(v805, v806, &unk_21705881C);
            v808 = OUTLINED_FUNCTION_89_11(v807);
            OUTLINED_FUNCTION_125_4(v808, v809);
            OUTLINED_FUNCTION_2_69();
            v812 = sub_2169C3570(v810, v811, &unk_217058AC0);
            *(v251 + 2) = OUTLINED_FUNCTION_89_11(v812);
            *(v251 + 3) = v813;
            v814 = *(v799 + 24);
            *&v251[v814] = swift_getKeyPath();
            v815 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC59E0, &qword_217018AF0);
            OUTLINED_FUNCTION_50_14(v815);
            v816 = OUTLINED_FUNCTION_75_8();
            OUTLINED_FUNCTION_124_5(v816, &v840, v817);
            OUTLINED_FUNCTION_94_9();
            OUTLINED_FUNCTION_67_9();
            sub_2169C3570(v818, v819, &unk_21706E61C);
            OUTLINED_FUNCTION_66_11();
            sub_2169C3570(v820, v821, &unk_21703551C);
            OUTLINED_FUNCTION_94_0();
            OUTLINED_FUNCTION_108_7(v317);
            OUTLINED_FUNCTION_34_19();
            OUTLINED_FUNCTION_79_13();
            swift_storeEnumTagMultiPayload();
            sub_2169C330C();
            sub_2169C33F8();
            OUTLINED_FUNCTION_23_27();
            OUTLINED_FUNCTION_54_15();
            OUTLINED_FUNCTION_31_26(v319);
            OUTLINED_FUNCTION_38_17();
            swift_storeEnumTagMultiPayload();
            sub_2169C2F98();
            sub_2169C3280();
            OUTLINED_FUNCTION_18_28();
            OUTLINED_FUNCTION_98_9();
            OUTLINED_FUNCTION_30_24();
            OUTLINED_FUNCTION_91_10();
            sub_2169C29B8();
            sub_2169C2F0C();
            OUTLINED_FUNCTION_24_25();
            OUTLINED_FUNCTION_90_8();
            OUTLINED_FUNCTION_25_25(&qword_27CABEED0);
            OUTLINED_FUNCTION_44_16();
            sub_2169C292C();
            sub_2169C34E4();
            OUTLINED_FUNCTION_19_31();
            v822 = OUTLINED_FUNCTION_82_1();
            sub_216697664(v822, v823, qword_217031540);
            OUTLINED_FUNCTION_99_9();
            v347 = OUTLINED_FUNCTION_104_6();
            v348 = &v837;
            goto LABEL_5;
          }

          if (v278 != *MEMORY[0x277D2A410])
          {
            OUTLINED_FUNCTION_94_9();
            sub_2169C2870();
            OUTLINED_FUNCTION_46_18();
            sub_217009554();
            sub_216681B04(v319, v905, &qword_27CABEEA0, &qword_217031440);
            swift_storeEnumTagMultiPayload();
            sub_2169C292C();
            sub_2169C34E4();
            sub_217009554();
            sub_216697664(v319, &qword_27CABEEA0, &qword_217031440);
            (*(v276 + 8))(v20, v274);
            goto LABEL_12;
          }
        }
      }
    }

    (*(v276 + 8))(v20, v274);
    OUTLINED_FUNCTION_94_9();
    OUTLINED_FUNCTION_68_11();
    sub_2169C3570(v349, v350, &unk_217040C74);
    OUTLINED_FUNCTION_58_13();
    sub_217009554();
    OUTLINED_FUNCTION_102_8();
    OUTLINED_FUNCTION_93_9();
    v351 = sub_2169C2870();
    OUTLINED_FUNCTION_92_6(v351);
    sub_216697664(v274, &qword_27CABEE98, &qword_217031438);
    OUTLINED_FUNCTION_25_25(v255);
    swift_storeEnumTagMultiPayload();
    sub_2169C292C();
    sub_2169C34E4();
    OUTLINED_FUNCTION_19_31();
    v352 = OUTLINED_FUNCTION_45();
    sub_216697664(v352, v353, &qword_217031440);
    goto LABEL_12;
  }

  v279 = OUTLINED_FUNCTION_21_30();
  v280(v279);
  v281 = *(v270 + 32);
  v824 = v273;
  v282 = v20;
  v283 = v268;
  v825 = v268;
  v281(v273, v282, v268);
  v284 = v270;
  (*(v270 + 16))(v267, v273, v283);
  OUTLINED_FUNCTION_1_92();
  sub_2169C3618(v904, v267 + v285, v286);
  v287 = (v267 + v263[6]);
  type metadata accessor for MenuBuilder();
  OUTLINED_FUNCTION_0_104();
  v290 = sub_2169C3570(v288, v289, &unk_21705881C);
  *v287 = OUTLINED_FUNCTION_89_11(v290);
  v287[1] = v291;
  v292 = (v267 + v263[7]);
  type metadata accessor for PlaybackPresenter(0);
  OUTLINED_FUNCTION_2_69();
  v295 = sub_2169C3570(v293, v294, &unk_217058AC0);
  *v292 = OUTLINED_FUNCTION_89_11(v295);
  v292[1] = v296;
  v297 = v263[8];
  *(v267 + v297) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC59E0, &qword_217018AF0);
  swift_storeEnumTagMultiPayload();
  sub_2169C3618(v267, v251, type metadata accessor for AlbumContextMenu);
  OUTLINED_FUNCTION_93_9();
  OUTLINED_FUNCTION_61_10();
  sub_2169C3570(v298, v299, &unk_217042264);
  OUTLINED_FUNCTION_60_10();
  sub_2169C3570(v300, v301, &unk_217030CF4);
  sub_217009554();
  OUTLINED_FUNCTION_36_19(v255, &a13);
  OUTLINED_FUNCTION_93_9();
  sub_2169C2AD0();
  sub_2169C2BBC();
  OUTLINED_FUNCTION_46_18();
  OUTLINED_FUNCTION_47_19(v263);
  v302 = OUTLINED_FUNCTION_45();
  sub_216697664(v302, v303, &qword_217031528);
  v304 = v892;
  OUTLINED_FUNCTION_48_15();
  sub_216681B04(v305, v306, v307, &qword_217031530);
  OUTLINED_FUNCTION_122_5(v304);
  sub_2169C2A44();
  sub_2169C2CA8();
  OUTLINED_FUNCTION_58_13();
  OUTLINED_FUNCTION_103_8(v304);
  OUTLINED_FUNCTION_49_17();
  v308 = v898;
  OUTLINED_FUNCTION_48_15();
  sub_216681B04(v309, v310, v311, &qword_217031538);
  OUTLINED_FUNCTION_100_8(v308);
  sub_2169C29B8();
  sub_2169C2F0C();
  sub_217009554();
  OUTLINED_FUNCTION_53_14();
  OUTLINED_FUNCTION_48_15();
  sub_216681B04(v312, v313, v314, qword_217031540);
  swift_storeEnumTagMultiPayload();
  sub_2169C292C();
  sub_2169C34E4();
  sub_217009554();
  v315 = OUTLINED_FUNCTION_45();
  sub_216697664(v315, v316, qword_217031540);
  sub_2169C3678(v267, type metadata accessor for AlbumContextMenu);
  (*(v284 + 8))(v824, v825);
LABEL_12:
  OUTLINED_FUNCTION_26();
}

unint64_t sub_2169C2870()
{
  result = qword_27CABEFB0;
  if (!qword_27CABEFB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABEE98, &qword_217031438);
    sub_2169C3570(&qword_27CABEFB8, type metadata accessor for GenreContextMenu, &unk_217040C74);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABEFB0);
  }

  return result;
}

unint64_t sub_2169C292C()
{
  result = qword_27CABEFC0;
  if (!qword_27CABEFC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABEFA8, qword_217031540);
    sub_2169C29B8();
    sub_2169C2F0C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABEFC0);
  }

  return result;
}

unint64_t sub_2169C29B8()
{
  result = qword_27CABEFC8;
  if (!qword_27CABEFC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABEFA0, &qword_217031538);
    sub_2169C2A44();
    sub_2169C2CA8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABEFC8);
  }

  return result;
}

unint64_t sub_2169C2A44()
{
  result = qword_27CABEFD0;
  if (!qword_27CABEFD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABEF98, &qword_217031530);
    sub_2169C2AD0();
    sub_2169C2BBC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABEFD0);
  }

  return result;
}

unint64_t sub_2169C2AD0()
{
  result = qword_27CABEFD8;
  if (!qword_27CABEFD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABEF90, &qword_217031528);
    sub_2169C3570(&qword_27CABEFE0, type metadata accessor for AlbumContextMenu, &unk_217042264);
    sub_2169C3570(&qword_27CABEFE8, type metadata accessor for ArtistContextMenu, &unk_217030CF4);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABEFD8);
  }

  return result;
}

unint64_t sub_2169C2BBC()
{
  result = qword_27CABEFF0;
  if (!qword_27CABEFF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABEF60, &qword_2170314F8);
    sub_2169C3570(&qword_27CABEFF8, type metadata accessor for CreditArtistContextMenu, &unk_217023B28);
    sub_2169C3570(&qword_27CABF000, type metadata accessor for CuratorContextMenu, &unk_217019914);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABEFF0);
  }

  return result;
}

unint64_t sub_2169C2CA8()
{
  result = qword_27CABF008;
  if (!qword_27CABF008)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABEF50, &qword_2170314E8);
    sub_2169C2D34();
    sub_2169C2E20();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABF008);
  }

  return result;
}

unint64_t sub_2169C2D34()
{
  result = qword_27CABF010;
  if (!qword_27CABF010)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABEF48, &qword_2170314E0);
    sub_2169C3570(&qword_27CABF018, type metadata accessor for MusicMovieContextMenu, &unk_2170395F8);
    sub_2169C3570(&qword_27CABB0F8, type metadata accessor for MusicVideoContextMenu, &unk_217033818);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABF010);
  }

  return result;
}

unint64_t sub_2169C2E20()
{
  result = qword_27CABF020;
  if (!qword_27CABF020)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABEF30, &qword_2170314C8);
    sub_2169C3570(&qword_27CABF028, type metadata accessor for PlaylistContextMenu, &unk_217064054);
    sub_2169C3570(&qword_27CABF030, type metadata accessor for RadioShowContextMenu, &unk_217044178);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABF020);
  }

  return result;
}

unint64_t sub_2169C2F0C()
{
  result = qword_27CABF038;
  if (!qword_27CABF038)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABEF20, &qword_2170314B8);
    sub_2169C2F98();
    sub_2169C3280();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABF038);
  }

  return result;
}

unint64_t sub_2169C2F98()
{
  result = qword_27CABF040;
  if (!qword_27CABF040)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABEF18, &qword_2170314B0);
    sub_2169C3024();
    sub_2169C3110();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABF040);
  }

  return result;
}

unint64_t sub_2169C3024()
{
  result = qword_27CABF048;
  if (!qword_27CABF048)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABEF10, &qword_2170314A8);
    sub_2169C3570(&qword_27CABF050, type metadata accessor for RecordLabelContextMenu, &unk_217025FE8);
    sub_2169C3570(&qword_27CABB100, type metadata accessor for SongContextMenu, &unk_21705C910);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABF048);
  }

  return result;
}

unint64_t sub_2169C3110()
{
  result = qword_27CABF058;
  if (!qword_27CABF058)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABEEE0, &qword_217031480);
    sub_2169C31CC();
    sub_2169C3570(&qword_27CAB7300, type metadata accessor for StationContextMenu, &unk_21702AB54);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABF058);
  }

  return result;
}

unint64_t sub_2169C31CC()
{
  result = qword_27CABF060;
  if (!qword_27CABF060)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABEEF0, &qword_217031488);
    sub_2169C3570(&qword_27CABF068, type metadata accessor for SocialProfileContextMenu, &unk_2170435DC);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABF060);
  }

  return result;
}

unint64_t sub_2169C3280()
{
  result = qword_27CABF070;
  if (!qword_27CABF070)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABEED0, &qword_217031470);
    sub_2169C330C();
    sub_2169C33F8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABF070);
  }

  return result;
}

unint64_t sub_2169C330C()
{
  result = qword_27CABF078;
  if (!qword_27CABF078)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABEEC8, &qword_217031468);
    sub_2169C3570(&qword_27CABF080, type metadata accessor for TVEpisodeContextMenu, &unk_217030C88);
    sub_2169C3570(&qword_27CABF088, type metadata accessor for TVShowContextMenu, &unk_21703D874);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABF078);
  }

  return result;
}

unint64_t sub_2169C33F8()
{
  result = qword_27CABF090;
  if (!qword_27CABF090)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABEEB0, &qword_217031450);
    sub_2169C3570(&qword_27CABF098, type metadata accessor for UploadedAudioContextMenu, &unk_21706E61C);
    sub_2169C3570(&qword_27CABF0A0, type metadata accessor for UploadedVideoContextMenu, &unk_21703551C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABF090);
  }

  return result;
}

unint64_t sub_2169C34E4()
{
  result = qword_27CABF0A8;
  if (!qword_27CABF0A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABEEA0, &qword_217031440);
    sub_2169C2870();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABF0A8);
  }

  return result;
}

uint64_t sub_2169C3570(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2169C35B8(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_34();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_2169C3618(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_34();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_2169C3678(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_34();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t OUTLINED_FUNCTION_89_11(uint64_t a1)
{

  return sub_217008CF4();
}

uint64_t OUTLINED_FUNCTION_92_6(uint64_t a1)
{

  return sub_217009554();
}

uint64_t OUTLINED_FUNCTION_94_9()
{

  return swift_storeEnumTagMultiPayload();
}

uint64_t OUTLINED_FUNCTION_98_9()
{

  return sub_216697664(v2, v1, v0);
}

uint64_t OUTLINED_FUNCTION_99_9()
{

  return sub_2169C3678(v1, v0);
}

uint64_t OUTLINED_FUNCTION_100_8(uint64_t a1)
{

  return swift_storeEnumTagMultiPayload();
}

uint64_t OUTLINED_FUNCTION_101_5(uint64_t a1)
{

  return swift_storeEnumTagMultiPayload();
}

uint64_t OUTLINED_FUNCTION_103_8(uint64_t a1)
{

  return sub_217009554();
}

uint64_t OUTLINED_FUNCTION_109_6(uint64_t a1)
{

  return swift_storeEnumTagMultiPayload();
}

uint64_t OUTLINED_FUNCTION_115_6(uint64_t result, uint64_t a2)
{
  *v2 = result;
  v2[1] = a2;
  return result;
}

uint64_t sub_2169C3818(uint64_t a1, uint64_t a2)
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = a2;
  sub_2169C53CC(a1, sub_216A8D714, 0, isUniquelyReferenced_nonNull_native, &v8);
  v6 = v8;
  if (v2)
  {
  }

  return v6;
}

uint64_t sub_2169C38B4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, SEL *a5)
{
  v5 = [a1 *a5];
  v6 = sub_21700E514();

  return v6;
}

uint64_t sub_2169C3904(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7)
{
  v42 = a7;
  v41 = a6;
  v39 = a4;
  v40 = a5;
  v37 = a2;
  v38 = a3;
  v36 = a1;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA4A8, &unk_217020680);
  OUTLINED_FUNCTION_1();
  v9 = v8;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v10);
  v12 = &v35 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC3BD0, &unk_21702D440);
  OUTLINED_FUNCTION_1();
  v15 = v14;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v16);
  v18 = &v35 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF0B8, &unk_217049C20);
  OUTLINED_FUNCTION_1();
  v21 = v20;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v22);
  v24 = &v35 - v23;
  v25 = OBJC_IVAR____TtC7MusicUI23ReportAConcernPresenter__selectedConcernID;
  v43 = 0;
  v44 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABAA40, &unk_217014260);
  sub_217007DA4();
  (*(v21 + 32))(v7 + v25, v24, v19);
  v26 = OBJC_IVAR____TtC7MusicUI23ReportAConcernPresenter__isLoading;
  LOBYTE(v43) = 0;
  sub_217007DA4();
  v27 = *(v15 + 32);
  v27(v7 + v26, v18, v13);
  v28 = OBJC_IVAR____TtC7MusicUI23ReportAConcernPresenter__isShowingSuccessAlert;
  LOBYTE(v43) = 0;
  sub_217007DA4();
  v27(v7 + v28, v18, v13);
  v29 = OBJC_IVAR____TtC7MusicUI23ReportAConcernPresenter__commentInput;
  v43 = 0;
  v44 = 0xE000000000000000;
  sub_217007DA4();
  (*(v9 + 32))(v7 + v29, v12, v35);
  v30 = (v7 + OBJC_IVAR____TtC7MusicUI23ReportAConcernPresenter_contentID);
  v31 = v37;
  *v30 = v36;
  v30[1] = v31;
  v32 = v7 + OBJC_IVAR____TtC7MusicUI23ReportAConcernPresenter_reportType;
  v33 = v39;
  *v32 = v38;
  *(v32 + 8) = v33;
  *(v32 + 16) = v40;
  *(v32 + 24) = v41 & 1;
  *(v7 + OBJC_IVAR____TtC7MusicUI23ReportAConcernPresenter_data) = v42;
  return v7;
}

uint64_t sub_2169C3BFC()
{
  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_5_2();
  sub_217007DE4();

  return v1;
}

uint64_t sub_2169C3C68(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_217007DF4();
}

uint64_t sub_2169C3D34(uint64_t a1, uint64_t a2)
{
  sub_2169C3DBC();
  v4 = sub_21700E624();

  if (v4 >= 401)
  {
    sub_21700DF14();

    return sub_2169C3E28(a1, a2);
  }

  return result;
}

uint64_t sub_2169C3DBC()
{
  swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_5_2();
  sub_217007DE4();

  return v1;
}

uint64_t sub_2169C3E28(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_217007DE4();

  swift_getKeyPath();
  swift_getKeyPath();

  sub_217007DF4();
  sub_2169C3D34(v3, v4);
}

uint64_t sub_2169C3F08()
{
  sub_2169C3BFC();
  v1 = v0;
  if (qword_27CAB5B78 == -1)
  {
    if (v0)
    {
LABEL_3:
      sub_21700DF14();
      sub_21700DF14();
      v2 = OUTLINED_FUNCTION_5_2();
      v5 = sub_216CE11AC(v2, v3, v4);
      swift_bridgeObjectRelease_n();

      return v5 & 1;
    }
  }

  else
  {
    swift_once();
    if (v1)
    {
      goto LABEL_3;
    }
  }

  return 0;
}

void sub_2169C3FB0()
{
  v1 = v0 + OBJC_IVAR____TtC7MusicUI23ReportAConcernPresenter_reportType;
  v2 = *(v0 + OBJC_IVAR____TtC7MusicUI23ReportAConcernPresenter_reportType);
  if (*(v0 + OBJC_IVAR____TtC7MusicUI23ReportAConcernPresenter_reportType + 24) != 1)
  {
    v20 = [objc_opt_self() sharedReporter];
    v21 = sub_21700E4D4();
    sub_2169C3DBC();
    v22 = sub_21700E4D4();

    v23 = [v20 reportsForType:v2 contentID:v21 aucType:0 commentText:v22];

    sub_216685F4C(0, &qword_27CABF0C8, 0x277CD6088);
    v24 = sub_21700E824();

    v25 = sub_2166BF3C8(v24);
    if (v25)
    {
      v26 = v25;
      OUTLINED_FUNCTION_7_51(v25);
      if ((v26 & 0x8000000000000000) == 0)
      {
        for (i = 0; i != v26; ++i)
        {
          if ((v24 & 0xC000000000000001) != 0)
          {
            v28 = MEMORY[0x21CEA0220](i, v24);
          }

          else
          {
            v28 = *(v24 + 8 * i + 32);
          }

          v29 = v28;
          v31 = *(v34 + 16);
          v30 = *(v34 + 24);
          if (v31 >= v30 >> 1)
          {
            OUTLINED_FUNCTION_8_43(v30);
          }

          *(v34 + 16) = v31 + 1;
          v32 = v34 + 32 * v31;
          *(v32 + 40) = 0;
          *(v32 + 48) = 0;
          *(v32 + 32) = v29;
          *(v32 + 56) = 0;
        }

        goto LABEL_21;
      }

      goto LABEL_24;
    }

LABEL_21:

    return;
  }

  v4 = *(v1 + 8);
  v3 = *(v1 + 16);
  v5 = [objc_opt_self() sharedReporter];
  v6 = sub_21700E4D4();
  sub_2169C3DBC();
  v7 = sub_21700E4D4();

  v8 = [v5 reportsForType:v2 contentID:v6 commentText:v7 concernParentItemID:0 concernParentItemType:0];

  sub_216685F4C(0, &qword_27CABF0C0, 0x277CD5DF8);
  v9 = sub_21700E824();

  v10 = sub_2166BF3C8(v9);
  if (!v10)
  {
    goto LABEL_21;
  }

  v11 = v10;
  OUTLINED_FUNCTION_7_51(v10);
  if ((v11 & 0x8000000000000000) == 0)
  {
    v12 = 0;
    v33 = v9 & 0xC000000000000001;
    v13 = v9;
    do
    {
      if (v33)
      {
        v14 = MEMORY[0x21CEA0220](v12, v9);
      }

      else
      {
        v14 = *(v9 + 8 * v12 + 32);
      }

      v15 = v14;
      v16 = v2;
      sub_2169C5600(v2, v4, v3, 1);
      v18 = *(v34 + 16);
      v17 = *(v34 + 24);
      if (v18 >= v17 >> 1)
      {
        OUTLINED_FUNCTION_8_43(v17);
      }

      ++v12;
      *(v34 + 16) = v18 + 1;
      v19 = v34 + 32 * v18;
      *(v19 + 32) = v15;
      *(v19 + 40) = v4;
      *(v19 + 48) = v3;
      *(v19 + 56) = 1;
      v2 = v16;
      v9 = v13;
    }

    while (v11 != v12);
    goto LABEL_21;
  }

  __break(1u);
LABEL_24:
  __break(1u);
}

uint64_t sub_2169C4318()
{
  sub_2169C3BFC();
  if (!v0)
  {
    return 1;
  }

  return sub_2169C3CE4();
}

uint64_t sub_2169C4358(void *a1)
{
  v2 = sub_2169C3BFC();
  v4 = v3;
  v7 = sub_2169C38B4(a1, v3, v5, v6, &selRef_concernTypeID);
  if (!v4)
  {

    goto LABEL_9;
  }

  if (v2 != v7 || v4 != v8)
  {
    v10 = sub_21700F7D4();

    if (v10)
    {
      goto LABEL_11;
    }

LABEL_9:
    v14 = sub_2169C38B4(a1, v11, v12, v13, &selRef_concernTypeID);
    goto LABEL_12;
  }

LABEL_11:
  v14 = 0;
  v15 = 0;
LABEL_12:

  return sub_2169C3C68(v14, v15);
}

void sub_2169C4430()
{
  v71 = *MEMORY[0x277D85DE8];
  sub_2169C3FB0();
  v2 = v1;
  v3 = 0;
  v65 = *(v1 + 16);
  v4 = (v1 + 56);
  while (v65 != v3)
  {
    if (v3 >= *(v2 + 16))
    {
      __break(1u);
    }

    v5 = *(v4 - 3);
    v67 = *(v4 - 2);
    v6 = *(v4 - 1);
    v7 = *v4;
    if (*v4)
    {
      v8 = v5;
      v9 = v6;
      sub_21700DF14();
    }

    else
    {
      v9 = *(v4 - 1);
      v10 = v5;
    }

    v11 = [v5 concernTypeID];
    v12 = sub_21700E514();
    v14 = v13;

    v15 = sub_2169C3BFC();
    if (v16)
    {
      if (v12 == v15 && v16 == v14)
      {

LABEL_20:

        sub_2169C3CF8(1);
        if (v7)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF810, &unk_21701A5D0);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_217015230;
          *(inited + 32) = 1684957547;
          *(inited + 40) = 0xE400000000000000;
          v34 = MEMORY[0x277D837D0];
          *(inited + 48) = v67;
          *(inited + 56) = v9;
          *(inited + 72) = v34;
          *(inited + 80) = 0x6E6F73616572;
          *(inited + 88) = 0xE600000000000000;
          v66 = v9;
          v35 = v5;
          sub_21700DF14();
          v36 = [v35 concernTypeID];
          v37 = sub_21700E514();
          v39 = v38;

          *(inited + 96) = v37;
          *(inited + 104) = v39;
          *(inited + 120) = v34;
          *(inited + 128) = 0x73746E656D6D6F63;
          *(inited + 136) = 0xE800000000000000;
          v40 = sub_2169C3DBC();
          *(inited + 168) = v34;
          *(inited + 144) = v40;
          *(inited + 152) = v41;
          v42 = sub_21700E384();
          v43 = swift_initStackObject();
          *(v43 + 16) = xmmword_217013DA0;
          *(v43 + 32) = 0x6E7265636E6F63;
          *(v43 + 40) = 0xE700000000000000;
          *(v43 + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFB20, &unk_217015300);
          *(v43 + 48) = v42;
          v44 = sub_21700E384();
          if (*(v0 + OBJC_IVAR____TtC7MusicUI23ReportAConcernPresenter_data))
          {
            v45 = *(v0 + OBJC_IVAR____TtC7MusicUI23ReportAConcernPresenter_data);
          }

          else
          {
            v45 = sub_21700E384();
          }

          sub_21700DF14();
          sub_2169C3818(v45, v44);
          v51 = [objc_opt_self() sharedReporter];
          v52 = objc_opt_self();
          v53 = sub_21700E344();

          aBlock[0] = 0;
          v54 = [v52 dataWithJSONObject:v53 options:0 error:aBlock];

          v55 = aBlock[0];
          if (v54)
          {
            v56 = sub_217005FB4();
            v58 = v57;

            v59 = sub_217005F94();
            sub_21677A524(v56, v58);
          }

          else
          {
            v60 = v55;
            v61 = sub_217005D34();

            swift_willThrow();
            v59 = 0;
          }

          OUTLINED_FUNCTION_0_105();
          OUTLINED_FUNCTION_1_93();
          v69 = v62;
          v70 = &block_descriptor_12;
          v63 = _Block_copy(aBlock);

          [v51 submitReport:v35 body:v59 completion:v63];
          sub_2169C50D4(v5, v67, v66, 1);
          _Block_release(v63);
        }

        else
        {
          v46 = objc_opt_self();
          v47 = v5;
          v48 = [v46 sharedReporter];
          OUTLINED_FUNCTION_0_105();
          OUTLINED_FUNCTION_1_93();
          v69 = v49;
          v70 = &block_descriptor_21;
          v50 = _Block_copy(aBlock);

          [v48 submitReport:v47 completion:v50];
          sub_2169C50D4(v5, v67, v9, 0);
          _Block_release(v50);

          sub_2169C50D4(v5, v67, v9, 0);
        }

        return;
      }

      v24 = sub_21700F7D4();

      if (v24)
      {
        goto LABEL_20;
      }

      OUTLINED_FUNCTION_10_43(v25, v26, v27, v28, v29, v30, v31, v32, v64, v65, v67);
    }

    else
    {
      OUTLINED_FUNCTION_10_43(v15, 0, v17, v18, v19, v20, v21, v22, v64, v65, v67);
    }

    v4 += 32;
    ++v3;
  }
}

uint64_t sub_2169C4A20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  sub_21700EA34();
  *(v4 + 24) = sub_21700EA24();
  v6 = sub_21700E9B4();

  return MEMORY[0x2822009F8](sub_2169C4AB8, v6, v5);
}

uint64_t sub_2169C4AB8()
{

  sub_2169C3D20(1);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2169C4B20(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAC0, &qword_21701B9F0);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v3);
  v5 = &v11 - v4;
  v6 = sub_21700EA74();
  __swift_storeEnumTagSinglePayload(v5, 1, 1, v6);
  sub_21700EA34();

  v7 = sub_21700EA24();
  v8 = swift_allocObject();
  v9 = MEMORY[0x277D85700];
  v8[2] = v7;
  v8[3] = v9;
  v8[4] = a1;
  sub_21677BBA0();
}

uint64_t sub_2169C4C18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  sub_21700EA34();
  *(v4 + 24) = sub_21700EA24();
  v6 = sub_21700E9B4();

  return MEMORY[0x2822009F8](sub_2169C56C0, v6, v5);
}

uint64_t sub_2169C4CD8()
{
  v1 = OBJC_IVAR____TtC7MusicUI23ReportAConcernPresenter__selectedConcernID;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF0B8, &unk_217049C20);
  OUTLINED_FUNCTION_34();
  (*(v2 + 8))(v0 + v1);
  v3 = OBJC_IVAR____TtC7MusicUI23ReportAConcernPresenter__isLoading;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAC3BD0, &unk_21702D440);
  OUTLINED_FUNCTION_34();
  v6 = *(v5 + 8);
  v6(v0 + v3, v4);
  v6(v0 + OBJC_IVAR____TtC7MusicUI23ReportAConcernPresenter__isShowingSuccessAlert, v4);
  v7 = OBJC_IVAR____TtC7MusicUI23ReportAConcernPresenter__commentInput;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA4A8, &unk_217020680);
  OUTLINED_FUNCTION_34();
  (*(v8 + 8))(v0 + v7);

  sub_2169C5610(*(v0 + OBJC_IVAR____TtC7MusicUI23ReportAConcernPresenter_reportType), *(v0 + OBJC_IVAR____TtC7MusicUI23ReportAConcernPresenter_reportType + 8), *(v0 + OBJC_IVAR____TtC7MusicUI23ReportAConcernPresenter_reportType + 16), *(v0 + OBJC_IVAR____TtC7MusicUI23ReportAConcernPresenter_reportType + 24));

  return v0;
}

uint64_t sub_2169C4E34()
{
  sub_2169C4CD8();

  return MEMORY[0x2821FE8D8](v0);
}

uint64_t type metadata accessor for ReportAConcernPresenter(uint64_t a1)
{
  result = qword_280E37998;
  if (!qword_280E37998)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2169C4EE0(uint64_t a1)
{
  sub_2169C5020(319);
  if (v1 <= 0x3F)
  {
    sub_2166B2E20(319, &qword_280E48380, MEMORY[0x277D839B0]);
    if (v2 <= 0x3F)
    {
      sub_2166B2E20(319, &qword_280E483C8, MEMORY[0x277D837D0]);
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_2169C5020(uint64_t a1)
{
  if (!qword_280E483C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABAA40, &unk_217014260);
    v1 = sub_217007E14();
    if (!v2)
    {
      atomic_store(v1, &qword_280E483C0);
    }
  }
}

uint64_t sub_2169C5094@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for ReportAConcernPresenter(0);
  result = sub_217007D64();
  *a1 = result;
  return result;
}

void sub_2169C50D4(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
  }
}

uint64_t sub_2169C5120()
{
  OUTLINED_FUNCTION_0_0();
  result = sub_2169C3DBC();
  *v0 = result;
  v0[1] = v2;
  return result;
}

uint64_t sub_2169C5148(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_21700DF14();
  return sub_2169C3E28(v1, v2);
}

uint64_t sub_2169C5188()
{
  OUTLINED_FUNCTION_0_0();
  result = sub_2169C3D0C();
  *v0 = result & 1;
  return result;
}

uint64_t sub_2169C51DC(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_21700DF14();
  return sub_2169C3C68(v1, v2);
}

uint64_t sub_2169C528C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v2 = OUTLINED_FUNCTION_2_10(v1);

  return sub_2169C4A20(v2, v3, v4, v5);
}

uint64_t sub_2169C532C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v2 = OUTLINED_FUNCTION_2_10(v1);

  return sub_2169C4C18(v2, v3, v4, v5);
}

uint64_t sub_2169C53CC(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5)
{
  sub_216ABEAA0();
  v29 = v33;
  v30 = v34;
  v31 = v35;
  v32 = v36;
  sub_21700DF14();

  while (1)
  {
    sub_216ABDB24(&v27);
    v7 = *(&v27 + 1);
    if (!*(&v27 + 1))
    {
      sub_216687978(v29);
    }

    v8 = v27;
    sub_2166EF9C4(&v28, v26);
    v9 = *a5;
    v11 = sub_2166AF66C(v8, v7);
    v12 = *(v9 + 16);
    v13 = (v10 & 1) == 0;
    if (__OFADD__(v12, v13))
    {
      break;
    }

    v14 = v10;
    if (*(v9 + 24) >= v12 + v13)
    {
      if (a4)
      {
        if (v10)
        {
          goto LABEL_10;
        }
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB82A8, &unk_2170198D0);
        sub_21700F564();
        if (v14)
        {
          goto LABEL_10;
        }
      }
    }

    else
    {
      sub_216AB9018();
      v15 = sub_2166AF66C(v8, v7);
      if ((v14 & 1) != (v16 & 1))
      {
        goto LABEL_18;
      }

      v11 = v15;
      if (v14)
      {
LABEL_10:
        v17 = *a5;
        sub_2166A6DF8(*(*a5 + 56) + 32 * v11, v25);
        __swift_destroy_boxed_opaque_existential_1Tm(v26);

        v18 = (*(v17 + 56) + 32 * v11);
        __swift_destroy_boxed_opaque_existential_1Tm(v18);
        sub_2166EF9C4(v25, v18);
        goto LABEL_14;
      }
    }

    v19 = *a5;
    *(*a5 + 8 * (v11 >> 6) + 64) |= 1 << v11;
    v20 = (v19[6] + 16 * v11);
    *v20 = v8;
    v20[1] = v7;
    sub_2166EF9C4(v26, (v19[7] + 32 * v11));
    v21 = v19[2];
    v22 = __OFADD__(v21, 1);
    v23 = v21 + 1;
    if (v22)
    {
      goto LABEL_17;
    }

    v19[2] = v23;
LABEL_14:
    a4 = 1;
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  result = sub_21700F824();
  __break(1u);
  return result;
}

double sub_2169C5600(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
    sub_21700DF14();
  }

  return result;
}

uint64_t sub_2169C5610(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
  }

  return result;
}

uint64_t sub_2169C5620(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 25))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 24);
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

uint64_t sub_2169C5660(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = -a2;
    }
  }

  return result;
}

uint64_t type metadata accessor for OpaqueReplayPageIntent(uint64_t a1)
{
  result = qword_27CABF0D8;
  if (!qword_27CABF0D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2169C574C(uint64_t a1)
{
  sub_2169C57B8(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_2169C57B8(uint64_t a1)
{
  if (!qword_280E499C0)
  {
    type metadata accessor for AnyReplayPageRequest(255);
    v1 = sub_21700F164();
    if (!v2)
    {
      atomic_store(v1, &qword_280E499C0);
    }
  }
}

uint64_t sub_2169C58D4(uint64_t a1)
{
  *(a1 + 8) = sub_2169C5958(&qword_27CABF0E8, type metadata accessor for OpaqueReplayPageIntent, &unk_217031884);
  result = sub_2169C5958(&qword_27CABF0F0, type metadata accessor for OpaqueReplayPageIntent, &unk_217031868);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_2169C5958(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2169C59A0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF0D0, &unk_217031840);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2169C5A10()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA820, &unk_217018CE0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v13 - v3;
  v5 = sub_217005EF4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_217005ED4();
  if (__swift_getEnumTagSinglePayload(v4, 1, v5) == 1)
  {
    sub_216846CF0(v4);
    v9 = 0;
  }

  else
  {
    (*(v6 + 32))(v8, v4, v5);
    v10 = sub_217005E04();
    v11 = sub_21700E384();
    v9 = sub_2169C5BD4(v10, v11, v1);

    (*(v6 + 8))(v8, v5);
  }

  return v9 & 1;
}

id sub_2169C5BD4(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_21700E344();

  v6 = [a3 openSensitiveURL:a1 withOptions:v5];

  return v6;
}

uint64_t sub_2169C5CB0(uint64_t a1, uint64_t a2)
{
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABD770, &unk_217015610);
  OUTLINED_FUNCTION_1();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  v6 = &v27 - v5;
  v7 = type metadata accessor for ModalFlowAction(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v8);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAE0, &unk_217015630);
  OUTLINED_FUNCTION_1();
  v28 = v12;
  MEMORY[0x28223BE20](v13);
  v15 = &v27 - v14;
  v16 = type metadata accessor for SocialOnboardingNotificationSettingsPageIntent(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v17);
  v19 = &v27 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for ReferrerInfo(0);
  __swift_storeEnumTagSinglePayload(v19, 1, 1, v20);
  v19[*(v16 + 20)] = 1;
  v19[*(v16 + 24)] = 0;
  type metadata accessor for ObjectGraph(0);
  sub_21700E094();
  sub_21700D234();
  v21 = &v10[*(v7 + 20)];
  v21[3] = v16;
  v21[4] = sub_2169C607C(&qword_27CAB7908, type metadata accessor for SocialOnboardingNotificationSettingsPageIntent, &unk_217065C78);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v21);
  sub_2169C60C4(v19, boxed_opaque_existential_1, type metadata accessor for SocialOnboardingNotificationSettingsPageIntent);
  type metadata accessor for FlowAction.Destination(0);
  swift_storeEnumTagMultiPayload();
  *&v10[*(v7 + 24)] = xmmword_217015580;
  v30[3] = v7;
  v30[4] = sub_2169C607C(qword_280E426A8, type metadata accessor for ModalFlowAction, &unk_217063664);
  v23 = __swift_allocate_boxed_opaque_existential_1(v30);
  sub_2169C60C4(v10, v23, type metadata accessor for ModalFlowAction);
  v24 = v29;
  (*(v3 + 104))(v6, *MEMORY[0x277D21E18], v29);
  v25 = sub_21700D5E4();
  (*(v3 + 8))(v6, v24);
  sub_2169C6124(v10, type metadata accessor for ModalFlowAction);
  (*(v28 + 8))(v15, v11);
  sub_2169C6124(v19, type metadata accessor for SocialOnboardingNotificationSettingsPageIntent);
  __swift_destroy_boxed_opaque_existential_1Tm(v30);
  return v25;
}

uint64_t sub_2169C607C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2169C60C4(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_34();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_2169C6124(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_34();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_2169C61A4@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v60 = a2;
  v58 = a3;
  v59 = sub_21700CF34();
  OUTLINED_FUNCTION_1();
  v61 = v5;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_7();
  v54 = v8 - v7;
  sub_21700D284();
  OUTLINED_FUNCTION_1();
  v51 = v10;
  v52 = v9;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_7();
  v55 = v12 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA820, &unk_217018CE0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v48 - v14;
  v16 = sub_21700CDF4();
  OUTLINED_FUNCTION_1();
  v18 = v17;
  MEMORY[0x28223BE20](v19);
  v53 = &v48 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v23 = &v48 - v22;
  MEMORY[0x28223BE20](v24);
  v26 = &v48 - v25;
  v27 = sub_217005EF4();
  OUTLINED_FUNCTION_1();
  v56 = v28;
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_7();
  v32 = v31 - v30;
  v62 = a1;
  sub_21700CE04();
  sub_21700CD34();
  v57 = *(v18 + 8);
  v57(v26, v16);
  if (__swift_getEnumTagSinglePayload(v15, 1, v27) == 1)
  {
    sub_216846CF0(v15);
    v33 = sub_21700E2E4();
    sub_2167B1EA4();
    swift_allocError();
    v35 = v34;
    v36 = type metadata accessor for OpenExternalURLAction(0);
    *v35 = 7107189;
    v35[1] = 0xE300000000000000;
    v35[2] = v36;
    (*(*(v33 - 8) + 104))(v35, *MEMORY[0x277D22530], v33);
    swift_willThrow();
    (*(v61 + 8))(v60, v59);
    return (v57)(v62, v16);
  }

  else
  {
    v38 = v56;
    (*(v56 + 32))(v32, v15, v27);
    v39 = *(v38 + 16);
    v49 = v3;
    v40 = v58;
    v39(v58, v32, v27);
    sub_21700CE04();
    LOBYTE(v38) = sub_21700CD44();
    v50 = v16;
    v41 = v16;
    v42 = v57;
    v57(v23, v41);
    v48 = type metadata accessor for OpenExternalURLAction(0);
    *(v40 + *(v48 + 20)) = v38 & 1;
    sub_21700CE04();
    (*(v61 + 16))(v54, v60, v59);
    v43 = v55;
    v44 = v49;
    sub_21700D224();
    v45 = OUTLINED_FUNCTION_2_70();
    v46(v45);
    v42(v62, v50);
    if (v44)
    {
      v47 = *(v56 + 8);
      v47(v32, v27);
      return (v47)(v58, v27);
    }

    else
    {
      (*(v56 + 8))(v32, v27);
      return (*(v51 + 32))(v58 + *(v48 + 24), v43, v52);
    }
  }
}

uint64_t sub_2169C6750()
{
  OUTLINED_FUNCTION_33();
  v0[11] = v1;
  v0[12] = v2;
  v0[10] = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB70A8, &qword_21701B9E0);
  v0[13] = swift_task_alloc();
  v4 = sub_217006DE4();
  v0[14] = v4;
  OUTLINED_FUNCTION_2(v4);
  v0[15] = v5;
  v0[16] = swift_task_alloc();
  v0[17] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB70B0, &qword_217015AA0);
  v0[18] = v6;
  OUTLINED_FUNCTION_2(v6);
  v0[19] = v7;
  v0[20] = swift_task_alloc();
  v8 = sub_217006E04();
  v0[21] = v8;
  OUTLINED_FUNCTION_2(v8);
  v0[22] = v9;
  v0[23] = swift_task_alloc();
  v0[24] = swift_task_alloc();
  v0[25] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2169C6918, 0, 0);
}

uint64_t sub_2169C6918()
{
  v1 = sub_217006E14();
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v0[22];
    v53 = v0[19];
    v54 = v0[20];
    v52 = v0[18];
    v4 = v0[15];
    v59 = MEMORY[0x277D84F90];
    sub_216AB97C8(0, v2, 0);
    v5 = v59;
    v6 = *(v3 + 16);
    v3 += 16;
    v7 = v1 + ((*(v3 + 64) + 32) & ~*(v3 + 64));
    v50 = *(v3 + 56);
    v51 = v6;
    v48 = (v4 + 88);
    v49 = (v4 + 16);
    v47 = *MEMORY[0x277D2A928];
    v46 = (v4 + 8);
    v45 = (v3 + 16);
    v44 = *MEMORY[0x277D2A920];
    while (1)
    {
      v57 = v2;
      v58 = v5;
      v9 = v0[23];
      v8 = v0[24];
      v10 = v0[21];
      v12 = v0[16];
      v11 = v0[17];
      v13 = v0[14];
      v51(v8, v7, v10);
      v56 = sub_217006DC4();
      v55 = v14;
      v51(v9, v8, v10);
      sub_217006DF4();
      (*v49)(v12, v11, v13);
      v15 = (*v48)(v12, v13);
      if (v15 == v47)
      {
        v16 = v0[21];
        v17 = v0[17];
        v19 = v0[13];
        v18 = v0[14];
        sub_217007EF4();
        (*v46)(v17, v18);
        v20 = OUTLINED_FUNCTION_14_5();
        v22 = v16;
      }

      else
      {
        v23 = v0[21];
        v24 = v0[17];
        if (v15 != v44)
        {
          v27 = v0[16];
          v29 = v0[13];
          v28 = v0[14];
          v30 = *v46;
          (*v46)(v0[17], v28);
          v31 = OUTLINED_FUNCTION_14_5();
          v32(v31, v23);
          v33 = sub_217007F04();
          __swift_storeEnumTagSinglePayload(v29, 1, 1, v33);
          v30(v27, v28);
          goto LABEL_9;
        }

        v19 = v0[13];
        v25 = v0[14];
        sub_217007ED4();
        (*v46)(v24, v25);
        v20 = OUTLINED_FUNCTION_14_5();
        v22 = v23;
      }

      v21(v20, v22);
      v26 = sub_217007F04();
      __swift_storeEnumTagSinglePayload(v19, 0, 1, v26);
LABEL_9:
      v34 = v0[23];
      v36 = v0[20];
      v35 = v0[21];
      v37 = v0[13];
      *v36 = v56;
      *(v54 + 8) = v55;
      (*v45)(v36 + *(v52 + 28), v34, v35);
      sub_2169490EC(v37, v36 + *(v52 + 32), &qword_27CAB70A8, &qword_21701B9E0);
      v5 = v58;
      v39 = *(v58 + 16);
      v38 = *(v58 + 24);
      if (v39 >= v38 >> 1)
      {
        sub_216AB97C8((v38 > 1), v39 + 1, 1);
        v5 = v58;
      }

      v40 = v0[20];
      *(v5 + 16) = v39 + 1;
      sub_2169490EC(v40, v5 + ((*(v53 + 80) + 32) & ~*(v53 + 80)) + *(v53 + 72) * v39, &qword_27CAB70B0, &qword_217015AA0);
      v7 += v50;
      --v2;
      if (v57 == 1)
      {

        goto LABEL_14;
      }
    }
  }

  v5 = MEMORY[0x277D84F90];
LABEL_14:
  v0[26] = v5;
  v0[27] = sub_217006DA4();
  v0[28] = v41;
  v0[29] = sub_217006DB4();
  v0[30] = v42;

  return MEMORY[0x2822009F8](sub_2169C6D28, 0, 0);
}

uint64_t sub_2169C6D28()
{
  v2 = v0[29];
  v1 = v0[30];
  v4 = v0[27];
  v3 = v0[28];
  v5 = v0[25];
  v6 = v0[26];
  v7 = v0[12];
  v0[2] = v0;
  v0[7] = v5;
  v0[3] = sub_2169C6DFC;
  v8 = swift_continuation_init();
  sub_2167AC040(v8, v4, v3, v6, v2, v1, v7);

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_2169C6DFC()
{
  OUTLINED_FUNCTION_11();
  *v2 = v1;
  v3 = *v0;
  *v2 = *v0;
  v5 = *(v4 + 200);
  if (*(v4 + 48))
  {
    swift_willThrow();
  }

  else
  {
    v7 = v1[21];
    v8 = v1[22];
    v9 = v1[10];

    (*(v8 + 32))(v9, v5, v7);
  }

  v6 = *(v3 + 8);

  return v6();
}

uint64_t sub_2169C7090(uint64_t a1, _BYTE *a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v24 = a5;
  v25 = a1;
  OUTLINED_FUNCTION_16();
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v14);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAC0, &qword_21701B9F0);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v24 - v16;
  LOBYTE(a2) = *a2;
  v18 = *a3;
  LOBYTE(a3) = *(a3 + 8);
  v19 = sub_21700EA74();
  __swift_storeEnumTagSinglePayload(v17, 1, 1, v19);
  (*(v11 + 16))(&v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v6, a4);
  v20 = (*(v11 + 80) + 65) & ~*(v11 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = 0;
  *(v21 + 24) = 0;
  v22 = v24;
  *(v21 + 32) = a4;
  *(v21 + 40) = v22;
  *(v21 + 48) = a2;
  *(v21 + 56) = v18;
  *(v21 + 64) = a3;
  (*(v11 + 32))(v21 + v20, &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), a4);
  *(v21 + ((v13 + v20 + 7) & 0xFFFFFFFFFFFFFFF8)) = v25;

  sub_21677E228(0, 0, v17, &unk_217031A40, v21);
}

uint64_t sub_2169C727C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 80) = v12;
  *(v8 + 88) = v13;
  *(v8 + 64) = a7;
  *(v8 + 72) = a8;
  *(v8 + 153) = a6;
  *(v8 + 56) = a5;
  *(v8 + 152) = a4;
  v9 = sub_21700D2A4();
  *(v8 + 96) = v9;
  *(v8 + 104) = *(v9 - 8);
  *(v8 + 112) = swift_task_alloc();
  *(v8 + 120) = type metadata accessor for PushNowPlayingAction(0);
  *(v8 + 128) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2169C7384, 0, 0);
}

uint64_t sub_2169C7384(uint64_t a1)
{
  v2 = *(v1 + 120);
  v3 = *(v1 + 128);
  v4 = *(v1 + 153);
  v5 = *(v1 + 56);
  v6 = *(v1 + 152);
  sub_21700D234();
  *v3 = v6;
  *(v3 + 8) = v5;
  *(v3 + 16) = v4 & 1;
  *(v1 + 40) = v2;
  *(v1 + 48) = sub_2169C78E4();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v1 + 16));
  sub_2169C793C(v3, boxed_opaque_existential_1);
  v8 = swift_task_alloc();
  *(v1 + 136) = v8;
  *v8 = v1;
  v8[1] = sub_2169C748C;

  return sub_216B6DB60();
}

uint64_t sub_2169C748C()
{
  OUTLINED_FUNCTION_33();
  v2 = *v1;
  OUTLINED_FUNCTION_11();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_11();
  *v5 = v4;
  v2[18] = v0;

  if (v0)
  {
    v6 = sub_2169C762C;
  }

  else
  {
    (*(v2[13] + 8))(v2[14], v2[12]);
    __swift_destroy_boxed_opaque_existential_1Tm(v2 + 2);
    v6 = sub_2169C75B4;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_2169C75B4()
{
  OUTLINED_FUNCTION_33();
  sub_2169C79A0(*(v0 + 128));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2169C762C()
{
  OUTLINED_FUNCTION_33();
  sub_2169C79A0(v0[16]);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);

  v1 = v0[1];

  return v1();
}

uint64_t sub_2169C76AC(uint64_t a1)
{
  v3 = v2;
  OUTLINED_FUNCTION_16();
  v5 = (*(v4 + 80) + 65) & ~*(v4 + 80);
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = *(v1 + 56);
  v10 = *(v1 + 64);
  v11 = *(v1 + ((*(v6 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v12 = *(v1 + 48);
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_2169C77F8;

  return sub_2169C727C(a1, v7, v8, v12, v9, v10, v1 + v5, v11);
}

uint64_t sub_2169C77F8()
{
  OUTLINED_FUNCTION_33();
  v1 = *v0;
  OUTLINED_FUNCTION_11();
  *v2 = v1;

  v3 = *(v1 + 8);

  return v3();
}

unint64_t sub_2169C78E4()
{
  result = qword_27CAB70A0;
  if (!qword_27CAB70A0)
  {
    type metadata accessor for PushNowPlayingAction(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CAB70A0);
  }

  return result;
}

uint64_t sub_2169C793C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PushNowPlayingAction(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2169C79A0(uint64_t a1)
{
  v2 = type metadata accessor for PushNowPlayingAction(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2169C7A8C()
{
  v1 = v0;
  type metadata accessor for GenericContextMenu(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v2);
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF110, &unk_217031AD0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v5);
  v7 = &v25 - v6;
  type metadata accessor for GroupingContextMenu(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v8);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(type metadata accessor for ContextAccessoryButton(0) + 24);
  if (sub_216C6CCFC())
  {
    sub_2169C7E00(v0 + v11, v10, type metadata accessor for ContentDescriptor);
    sub_2169C7E00(v10, v7, type metadata accessor for GroupingContextMenu);
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_4_57();
    sub_2169C7DB8(v12, v13, &unk_217031B70);
    OUTLINED_FUNCTION_3_74();
    sub_2169C7DB8(v14, v15, &unk_217031B20);
    OUTLINED_FUNCTION_6_47();
    v16 = type metadata accessor for GroupingContextMenu;
    v17 = v10;
  }

  else
  {
    v18 = *(type metadata accessor for ContextAccessoryButtonView(0) + 20);
    sub_2170067A4();
    OUTLINED_FUNCTION_34();
    (*(v19 + 16))(v4, v1 + v18);
    type metadata accessor for MenuContext(0);
    swift_storeEnumTagMultiPayload();
    sub_2169C7E00(v4, v7, type metadata accessor for GenericContextMenu);
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_4_57();
    sub_2169C7DB8(v20, v21, &unk_217031B70);
    OUTLINED_FUNCTION_3_74();
    sub_2169C7DB8(v22, v23, &unk_217031B20);
    OUTLINED_FUNCTION_6_47();
    v16 = type metadata accessor for GenericContextMenu;
    v17 = v4;
  }

  return sub_2169C7E5C(v17, v16);
}

uint64_t sub_2169C7DB8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2169C7E00(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_34();
  v4 = OUTLINED_FUNCTION_8();
  v5(v4);
  return a2;
}

uint64_t sub_2169C7E5C(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_34();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t __swift_get_extra_inhabitant_indexTm_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v9 = OUTLINED_FUNCTION_102();
  v11 = v10(v9);
  if (*(*(v11 - 8) + 84) == v5)
  {
    v12 = v11;
    v13 = v6;
  }

  else
  {
    v12 = a5(0);
    v13 = v6 + *(a3 + 20);
  }

  return __swift_getEnumTagSinglePayload(v13, v5, v12);
}

uint64_t __swift_store_extra_inhabitant_indexTm_2(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void))
{
  v11 = OUTLINED_FUNCTION_102();
  v13 = v12(v11);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v14 = v13;
    v15 = v7;
  }

  else
  {
    v14 = a6(0);
    v15 = v7 + *(a4 + 20);
  }

  return __swift_storeEnumTagSinglePayload(v15, v6, v6, v14);
}

uint64_t sub_2169C8058(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t (*a5)(uint64_t))
{
  result = a4(319, a2, a3);
  if (v7 <= 0x3F)
  {
    result = a5(319);
    if (v8 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_2169C8110()
{
  result = qword_27CABF148;
  if (!qword_27CABF148)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABF150, &qword_217031B18);
    sub_2169C7DB8(&qword_27CABF118, type metadata accessor for GroupingContextMenu, &unk_217031B70);
    sub_2169C7DB8(&qword_27CABF120, type metadata accessor for GenericContextMenu, &unk_217031B20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABF148);
  }

  return result;
}

uint64_t sub_2169C8218@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_21700D8E4();
  v53 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v52 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for GroupingContextMenu(0);
  v49 = *(v5 - 8);
  v6 = *(v49 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF158, &qword_217031BC0);
  v51 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v50 = &v43 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA820, &unk_217018CE0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v43 - v11;
  v13 = sub_217005EF4();
  v56 = *(v13 - 8);
  v14 = *(v56 + 64);
  MEMORY[0x28223BE20](v13);
  MEMORY[0x28223BE20](v15);
  v54 = v3;
  v55 = &v43 - v16;
  v17 = v1[6];
  v48 = v18;
  if (!v17)
  {
    if (!v1[2])
    {
      if (v1[12])
      {
        goto LABEL_5;
      }

      if (!v1[4])
      {
        goto LABEL_7;
      }
    }

    sub_21700DF14();
  }

LABEL_5:
  sub_21700DF14();
  v19 = sub_21700BA64();
  v21 = v20;
  v22 = type metadata accessor for ContentDescriptor(0);
  sub_2168282D4(v1 + *(v22 + 24), v12, &qword_27CABA820, &unk_217018CE0);
  if (__swift_getEnumTagSinglePayload(v12, 1, v13) == 1)
  {

    sub_216697664(v12, &qword_27CABA820, &unk_217018CE0);
LABEL_7:
    v23 = 1;
    return __swift_storeEnumTagSinglePayload(a1, v23, 1, v8);
  }

  v46 = v8;
  v47 = a1;
  v45 = v19;
  v24 = v56;
  v25 = v1;
  v43 = v1;
  v26 = *(v56 + 32);
  v44 = v21;
  v27 = v6;
  v28 = v55;
  v26(v55, v12, v13);
  sub_2169C7E00(v25, v7, type metadata accessor for GroupingContextMenu);
  v29 = v24 + 16;
  v30 = v48;
  (*(v24 + 16))(v48, v28, v13);
  v31 = (*(v49 + 80) + 16) & ~*(v49 + 80);
  v32 = (v27 + *(v29 + 64) + v31) & ~*(v29 + 64);
  v33 = (v14 + v32 + 7) & 0xFFFFFFFFFFFFFFF8;
  v34 = swift_allocObject();
  sub_2169C99FC(v7, v34 + v31, type metadata accessor for GroupingContextMenu);
  v26((v34 + v32), v30, v13);
  v35 = (v34 + v33);
  v36 = v44;
  *v35 = v45;
  v35[1] = v36;
  v58[4] = sub_2169C990C;
  v58[5] = v34;
  v37 = sub_216C6CE58();
  if (v38)
  {
    v39 = MEMORY[0x277CD7E90];
  }

  else
  {
    v37 = 0;
    v39 = 0;
    v58[2] = 0;
  }

  a1 = v47;
  v8 = v46;
  v58[0] = v37;
  v58[1] = v38;
  v58[3] = v39;
  memset(v57, 0, sizeof(v57));
  v40 = v52;
  sub_21700D854();
  sub_216697664(v57, &unk_27CABF7A0, &unk_217014D20);
  sub_216697664(v58, &unk_27CABF7A0, &unk_217014D20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF160, &unk_217031BC8);
  sub_2169C9B18(&qword_27CABF168, &qword_27CABF160, &unk_217031BC8);
  v41 = v50;
  sub_21700A204();
  (*(v53 + 8))(v40, v54);

  (*(v56 + 8))(v55, v13);
  (*(v51 + 32))(a1, v41, v8);
  v23 = 0;
  return __swift_storeEnumTagSinglePayload(a1, v23, 1, v8);
}

uint64_t sub_2169C8828@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v85 = a4;
  v83 = a3;
  v77 = a5;
  v7 = type metadata accessor for GroupingContextMenu(0);
  v90 = *(v7 - 8);
  MEMORY[0x28223BE20](v7 - 8);
  v91 = v8;
  v93 = &v71 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = type metadata accessor for ShareMusicItemAction(0);
  MEMORY[0x28223BE20](v88);
  v78 = &v71 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = sub_21700CFB4();
  v72 = *(v87 - 8);
  MEMORY[0x28223BE20](v87);
  v82 = &v71 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_217005EF4();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v71 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = sub_21700D704();
  v71 = *(v81 - 8);
  MEMORY[0x28223BE20](v81);
  v75 = &v71 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v71 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA820, &unk_217018CE0);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = &v71 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v24 = &v71 - v23;
  v86 = sub_21700D284();
  v84 = *(v86 - 8);
  MEMORY[0x28223BE20](v86);
  v80 = &v71 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for ShareURLDescriptor(0);
  v27 = (v26 - 8);
  MEMORY[0x28223BE20](v26);
  v29 = &v71 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_21700C4B4();
  __swift_storeEnumTagSinglePayload(v29, 1, 1, v30);
  v92 = a1;
  LOBYTE(a1) = *a1;
  v31 = *(v12 + 16);
  v32 = &v29[v27[9]];
  v89 = a2;
  v74 = v12 + 16;
  v73 = v31;
  v31(v32, a2, v11);
  v29[v27[7]] = a1;
  v33 = &v29[v27[8]];
  *v33 = 0;
  *(v33 + 1) = 0;
  __swift_storeEnumTagSinglePayload(v24, 1, 1, v11);
  v79 = v18;
  sub_21700D6F4();
  v34 = MEMORY[0x277D837D0];
  v98 = MEMORY[0x277D837D0];
  *&v97 = 0x6572616873;
  *(&v97 + 1) = 0xE500000000000000;
  sub_2166EF9C4(&v97, v96);
  v35 = MEMORY[0x277D84F98];
  swift_isUniquelyReferenced_nonNull_native();
  v95 = v35;
  sub_2166EF9D4();
  v36 = v95;
  v76 = v24;
  sub_2168282D4(v24, v21, &qword_27CABA820, &unk_217018CE0);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v21, 1, v11);
  v94 = v11;
  if (EnumTagSinglePayload == 1)
  {
    sub_216697664(v21, &qword_27CABA820, &unk_217018CE0);
  }

  else
  {
    (*(v12 + 32))(v14, v21, v11);
    v38 = sub_217005DE4();
    v98 = v34;
    *&v97 = v38;
    *(&v97 + 1) = v39;
    sub_2166EF9C4(&v97, v96);
    swift_isUniquelyReferenced_nonNull_native();
    v95 = v36;
    sub_2166EF9D4();
    v36 = v95;
    (*(v12 + 8))(v14, v94);
  }

  if (qword_280E46040 != -1)
  {
    swift_once();
  }

  v40 = sub_21700CF84();
  v41 = __swift_project_value_buffer(v40, qword_280E73DB0);
  v42 = v82;
  MEMORY[0x21CE9DD70](v83, v85, 0x6E6F74747562, 0xE600000000000000, v36, v41);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6E20, &unk_217017100);
  v43 = v72;
  v44 = (*(v72 + 80) + 32) & ~*(v72 + 80);
  v45 = swift_allocObject();
  *(v45 + 16) = xmmword_217013DA0;
  v46 = v45 + v44;
  v47 = v87;
  (*(v43 + 16))(v46, v42, v87);
  v48 = v71;
  v49 = v79;
  v50 = v81;
  (*(v71 + 16))(v75, v79, v81);
  v51 = v80;
  sub_21700D244();
  (*(v43 + 8))(v42, v47);
  (*(v48 + 8))(v49, v50);
  sub_216697664(v76, &qword_27CABA820, &unk_217018CE0);
  v52 = v84;
  v53 = v78;
  v54 = v86;
  (*(v84 + 16))(v78, v51, v86);
  v55 = v88;
  v56 = *(v88 + 20);
  sub_2169C7E00(v29, v53 + v56, type metadata accessor for ShareURLDescriptor);
  v57 = type metadata accessor for ShareableMusicItem(0);
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v53 + v56, 0, 1, v57);
  v58 = *(v55 + 24);
  v59 = v94;
  v73(v53 + v58, v89, v94);
  __swift_storeEnumTagSinglePayload(v53 + v58, 0, 1, v59);
  v60 = v77;
  v77[3] = v55;
  v60[4] = sub_2169C7DB8(&qword_27CAB82E0, type metadata accessor for ShareMusicItemAction, &unk_217035FF8);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v60);
  sub_2169C99FC(v53, boxed_opaque_existential_1, type metadata accessor for ShareMusicItemAction);
  (*(v52 + 8))(v51, v54);
  sub_2169C7E5C(v29, type metadata accessor for ShareURLDescriptor);
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF170, &qword_217031BD8);
  v63 = v62[11];
  v64 = sub_217007F04();
  __swift_storeEnumTagSinglePayload(v60 + v63, 1, 1, v64);
  v65 = v93;
  sub_2169C7E00(v92, v93, type metadata accessor for GroupingContextMenu);
  v66 = (*(v90 + 80) + 16) & ~*(v90 + 80);
  v67 = swift_allocObject();
  sub_2169C99FC(v65, v67 + v66, type metadata accessor for GroupingContextMenu);
  v68 = v62[12];
  *(v60 + v68) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CAC59E0, &qword_217018AF0);
  swift_storeEnumTagMultiPayload();
  v69 = v60 + v62[13];
  result = swift_getKeyPath();
  *v69 = result;
  v69[40] = 0;
  v60[5] = sub_2169C9A58;
  v60[6] = v67;
  v60[7] = 0;
  v60[8] = 0;
  return result;
}

uint64_t sub_2169C921C@<X0>(_BYTE *a1@<X0>, _BYTE *a2@<X8>)
{
  *a2 = *a1;
  type metadata accessor for MenuActionType(0);
  swift_storeEnumTagMultiPayload();
  v3 = type metadata accessor for ContextMenuItem(0);
  a2[v3[5]] = 0;
  a2[v3[6]] = 0;
  v4 = v3[7];
  *&a2[v4] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7580, &qword_21701F580);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_2169C92BC()
{
  v1 = sub_21700D8E4();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for GenericContextMenu(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  sub_2169C7E00(v0, v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for GenericContextMenu);
  v8 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v9 = swift_allocObject();
  sub_2169C99FC(v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v8, type metadata accessor for GenericContextMenu);
  v15 = sub_2169C9AB8;
  v16 = v9;
  memset(v14, 0, sizeof(v14));
  v10 = sub_217006784();
  v13[3] = MEMORY[0x277CD7E90];
  v13[0] = v10;
  v13[1] = v11;
  sub_21700D854();
  sub_216697664(v14, &unk_27CABF7A0, &unk_217014D20);
  sub_216697664(v13, &unk_27CABF7A0, &unk_217014D20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF178, &qword_2170504C0);
  sub_2169C9B18(&qword_27CABF180, &qword_27CABF178, &qword_2170504C0);
  sub_21700A204();
  (*(v2 + 8))(v4, v1);
}

uint64_t sub_2169C9544@<X0>(uint64_t a1@<X0>, void (**a2)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)@<X8>)
{
  v35 = a2;
  v34 = sub_2170067A4();
  v3 = *(v34 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v34);
  v32 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for MenuContext(0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6A00, &unk_217016B60);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v30 - v9;
  v11 = type metadata accessor for MenuConfiguration(0);
  v12 = (v11 - 8);
  v33 = *(v11 - 8);
  v13 = *(v33 + 64);
  MEMORY[0x28223BE20](v11);
  v31 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v30 - v15;
  v17 = type metadata accessor for ContentDescriptor(0);
  __swift_storeEnumTagSinglePayload(v10, 1, 1, v17);
  v18 = type metadata accessor for GenericContextMenu(0);
  sub_2169C7E00(a1 + *(v18 + 20), v7, type metadata accessor for MenuContext);
  sub_2168282D4(v10, v16, &qword_27CAB6A00, &unk_217016B60);
  sub_2169C7E00(v7, &v16[v12[7]], type metadata accessor for MenuContext);
  v19 = &v16[v12[8]];
  *v19 = 0;
  *(v19 + 1) = 0;
  *&v16[v12[9]] = 0;
  v20 = &v16[v12[10]];
  *(v20 + 4) = 0;
  *v20 = 0u;
  *(v20 + 1) = 0u;
  sub_2169C7E5C(v7, type metadata accessor for MenuContext);
  sub_216697664(v10, &qword_27CAB6A00, &unk_217016B60);
  v21 = &v16[v12[11]];
  *v21 = 0;
  *(v21 + 1) = 0xE000000000000000;
  v22 = v32;
  v23 = v34;
  (*(v3 + 16))(v32, a1, v34);
  v24 = v31;
  sub_2169C99FC(v16, v31, type metadata accessor for MenuConfiguration);
  v25 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v26 = (v4 + *(v33 + 80) + v25) & ~*(v33 + 80);
  v27 = swift_allocObject();
  (*(v3 + 32))(v27 + v25, v22, v23);
  result = sub_2169C99FC(v24, v27 + v26, type metadata accessor for MenuConfiguration);
  v29 = v35;
  *v35 = sub_2169C9B6C;
  v29[1] = v27;
  return result;
}

uint64_t sub_2169C990C()
{
  v2 = OUTLINED_FUNCTION_8_1();
  v3 = type metadata accessor for GroupingContextMenu(v2);
  OUTLINED_FUNCTION_2(v3);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = *(v6 + 64);
  v8 = sub_217005EF4();
  OUTLINED_FUNCTION_2(v8);
  v10 = v9;
  v12 = v11;
  v13 = (v5 + v7 + *(v10 + 80)) & ~*(v10 + 80);
  v14 = (v1 + ((*(v12 + 64) + v13 + 7) & 0xFFFFFFFFFFFFFFF8));
  v15 = *v14;
  v16 = v14[1];

  return sub_2169C8828((v1 + v5), v1 + v13, v15, v16, v0);
}

uint64_t sub_2169C99FC(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_34();
  v4 = OUTLINED_FUNCTION_8();
  v5(v4);
  return a2;
}

uint64_t sub_2169C9A58()
{
  v0 = OUTLINED_FUNCTION_8_1();
  v1 = *(type metadata accessor for GroupingContextMenu(v0) - 8);
  v2 = OUTLINED_FUNCTION_8_44(*(v1 + 80));

  return sub_2169C921C(v2, v3);
}

uint64_t sub_2169C9AB8()
{
  v0 = OUTLINED_FUNCTION_8_1();
  v1 = *(type metadata accessor for GenericContextMenu(v0) - 8);
  v2 = OUTLINED_FUNCTION_8_44(*(v1 + 80));

  return sub_2169C9544(v2, v3);
}

uint64_t sub_2169C9B18(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_2169C9B6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_8_1();
  v21 = sub_2170067A4();
  OUTLINED_FUNCTION_2(v21);
  v23 = (*(v22 + 80) + 16) & ~*(v22 + 80);
  v25 = *(v24 + 64);
  v32 = *(type metadata accessor for MenuConfiguration(0) - 8);
  v33 = v20 + ((v23 + v25 + *(v32 + 80)) & ~*(v32 + 80));

  sub_2169BDF30(v20 + v23, v33, v26, v27, v28, v29, v30, v31, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
}

unint64_t sub_2169C9C34()
{
  result = qword_27CABF188;
  if (!qword_27CABF188)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABF190, &qword_217031C78);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABF160, &unk_217031BC8);
    sub_2169C9B18(&qword_27CABF168, &qword_27CABF160, &unk_217031BC8);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABF188);
  }

  return result;
}

uint64_t sub_2169C9D14(uint64_t *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 24))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2169C9D68(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

void sub_2169C9DF0(void *a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, char a4@<W3>, void *a5@<X8>)
{
  v10 = [objc_opt_self() valueWithNewObjectInContext_];
  if (v10)
  {
    v11 = v10;
    v12 = sub_2166F1DCC();
    v13 = MEMORY[0x277D837D0];
    v23 = MEMORY[0x277D837D0];
    v21 = a2;
    v22 = a3;
    sub_21700DF14();
    v14 = a1;
    v15 = sub_2166F1E10(&v21, a1);
    sub_2166F1F64(v15, 0x72506C6169636F73, 0xEF4449656C69666FLL);
    v16 = 0x747065636361;
    if (a4)
    {
      v16 = 0x656E696C636564;
    }

    v17 = 0xE600000000000000;
    if (a4)
    {
      v17 = 0xE700000000000000;
    }

    v23 = v13;
    v21 = v16;
    v22 = v17;
    v18 = v14;
    v19 = sub_2166F1E10(&v21, a1);
    sub_2166F1F64(v19, 0xD000000000000014, 0x8000000217085C50);
    v20 = MEMORY[0x277D225C8];
    a5[3] = v12;
    a5[4] = v20;
    *a5 = v11;
  }

  else
  {
    __break(1u);
  }
}

void sub_2169C9F8C()
{
  OUTLINED_FUNCTION_2_71();
  if ([objc_opt_self() valueWithNewObjectInContext_])
  {
    sub_2166F1DCC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB74F8, &unk_217017160);
    OUTLINED_FUNCTION_6_48();
    v1 = v0;
    v9 = OUTLINED_FUNCTION_5_55(v1, v2, v3, v4, v5, v6, v7, v8, v10);
    sub_2166F1F64(v9, 0xD000000000000010, 0x8000000217085C70);
    OUTLINED_FUNCTION_4_58(MEMORY[0x277D225C8]);
  }

  else
  {
    __break(1u);
  }
}

void sub_2169CA084()
{
  OUTLINED_FUNCTION_2_71();
  if ([objc_opt_self() valueWithNewObjectInContext_])
  {
    sub_2166F1DCC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFB20, &unk_217015300);
    OUTLINED_FUNCTION_6_48();
    v1 = v0;
    v9 = OUTLINED_FUNCTION_5_55(v1, v2, v3, v4, v5, v6, v7, v8, v10);
    sub_2166F1F64(v9, 0x7475626972747461, 0xEA00000000007365);
    OUTLINED_FUNCTION_4_58(MEMORY[0x277D225C8]);
  }

  else
  {
    __break(1u);
  }
}

void sub_2169CA178()
{
  OUTLINED_FUNCTION_2_71();
  if ([objc_opt_self() valueWithNewObjectInContext_])
  {
    sub_2166F1DCC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB74F8, &unk_217017160);
    OUTLINED_FUNCTION_6_48();
    v1 = v0;
    v9 = OUTLINED_FUNCTION_5_55(v1, v2, v3, v4, v5, v6, v7, v8, v10);
    sub_2166F1F64(v9, 0xD000000000000011, 0x8000000217085C10);
    OUTLINED_FUNCTION_4_58(MEMORY[0x277D225C8]);
  }

  else
  {
    __break(1u);
  }
}

void sub_2169CA294(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v12 = [objc_opt_self() valueWithNewObjectInContext_];
  if (v12)
  {
    v13 = v12;
    v14 = sub_2166F1DCC();
    v18[3] = MEMORY[0x277D837D0];
    v18[0] = a2;
    v18[1] = a3;
    sub_21700DF14();
    v15 = a1;
    v16 = sub_2166F1E10(v18, a1);
    sub_2166F1F64(v16, a4, a5);
    v17 = MEMORY[0x277D225C8];
    a6[3] = v14;
    a6[4] = v17;
    *a6 = v13;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_2169CA3BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_21700CDF4();
  OUTLINED_FUNCTION_1();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21700CE04();
  v10 = sub_21700CD24();
  v12 = v11;
  sub_21700CF34();
  OUTLINED_FUNCTION_9_0();
  (*(v13 + 8))(a2);
  v14 = *(v6 + 8);
  v14(a1, v4);
  v14(v9, v4);
  if (v12)
  {
    v15 = 0;
  }

  else
  {
    v15 = v10;
  }

  LODWORD(result) = sub_2169CA52C(v15);
  if (result == 6)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

uint64_t sub_2169CA52C(uint64_t a1)
{
  if (a1 == 401)
  {
    v1 = 2;
  }

  else
  {
    v1 = 6;
  }

  if (a1 == 409)
  {
    v2 = 4;
  }

  else
  {
    v2 = v1;
  }

  if (a1 == 403)
  {
    v3 = 3;
  }

  else
  {
    v3 = v2;
  }

  if (a1 == 500)
  {
    v4 = 5;
  }

  else
  {
    v4 = v3;
  }

  if (a1 == 202)
  {
    v5 = 1;
  }

  else
  {
    v5 = v4;
  }

  if (a1)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2169CA578(char a1)
{
  result = 0;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
      a1 = 1;
      goto LABEL_5;
    case 3:
      a1 = 2;
      goto LABEL_5;
    case 5:
      a1 = 3;
      goto LABEL_5;
    default:
LABEL_5:
      sub_2169CAE18();
      result = swift_allocError();
      *v3 = a1;
      return result;
  }
}

uint64_t sub_2169CA618@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_2169CA52C(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_2169CA644@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2169CA518(*v1);
  *a1 = result;
  return result;
}

uint64_t sub_2169CA670@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2169CA3BC(a1, a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_2169CA69C(uint64_t a1, uint64_t a2)
{
  v31 = a2;
  v28 = sub_21700CF34();
  OUTLINED_FUNCTION_1();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_21700CDF4();
  OUTLINED_FUNCTION_1();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  MEMORY[0x28223BE20](v12);
  v14 = &v26 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7D20, &qword_217018700);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v26 - v16;
  sub_21700CE04();
  sub_21700CCB4();
  v18 = *(v10 + 8);
  v29 = v10 + 8;
  v30 = v8;
  v27 = v18;
  v18(v14, v8);
  v19 = sub_21700D3E4();
  if (__swift_getEnumTagSinglePayload(v17, 1, v19) == 1)
  {
    sub_2169CADB0(v17);
    v26 = 0;
  }

  else
  {
    v20 = v32;
    v26 = sub_21700D3C4();
    v32 = v20;
    (*(*(v19 - 8) + 8))(v17, v19);
  }

  sub_21700CE04();
  v21 = *(v4 + 16);
  v22 = v4;
  v23 = v31;
  v24 = v28;
  v21(v7, v31, v28);
  sub_216AC5BB0();
  sub_21700CE04();
  v21(v7, v23, v24);
  sub_216AC5BB0();
  (*(v22 + 8))(v23, v24);
  v27(a1, v30);
  return v26;
}

double sub_2169CAA1C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_21700CDB4();
  if (v8 && (v9 = sub_216F071C0(v6), v9 != 6))
  {
    *a3 = a1;
    *(a3 + 8) = a2;
    *(a3 + 16) = v9;
    sub_21700DF14();
  }

  else
  {
    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
  }

  return result;
}

uint64_t sub_2169CAA94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_2169CA69C(a1, a2);
  if (!v3)
  {
    *a3 = result;
    a3[1] = v6;
    a3[2] = v7;
  }

  return result;
}

uint64_t sub_2169CAAC4(char *a1, uint64_t a2)
{
  v4 = sub_21700CDF4();
  OUTLINED_FUNCTION_1();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v17 - v11;
  sub_21700CE04();
  v13 = sub_21700CD44();
  v14 = *(v6 + 8);
  v14(v12, v4);
  sub_21700CE04();
  sub_21700CDB4();
  sub_21700CF34();
  OUTLINED_FUNCTION_9_0();
  (*(v15 + 8))(a2);
  v14(a1, v4);
  v14(v9, v4);
  return v13 & 1;
}

uint64_t sub_2169CAC84@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = sub_2169CAAC4(a1, a2);
  if (!v3)
  {
    *a3 = result & 1;
    *(a3 + 8) = v6;
    *(a3 + 16) = v7;
  }

  return result;
}

unint64_t sub_2169CACB8(uint64_t a1)
{
  result = sub_2169CACE0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2169CACE0()
{
  result = qword_27CABF198;
  if (!qword_27CABF198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABF198);
  }

  return result;
}

unint64_t sub_2169CAD34(uint64_t a1)
{
  result = sub_2169CAD5C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2169CAD5C()
{
  result = qword_27CABF1A0;
  if (!qword_27CABF1A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABF1A0);
  }

  return result;
}

uint64_t sub_2169CADB0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7D20, &qword_217018700);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2169CAE18()
{
  result = qword_27CABF1A8;
  if (!qword_27CABF1A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABF1A8);
  }

  return result;
}

_BYTE *sub_2169CAE84(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Social.FollowState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFB)
  {
    if (a2 + 5 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 5) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 6;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v5 = v6 - 6;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_2169CAFF0(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_2169CB0C8(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 24))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2169CB11C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

unint64_t sub_2169CB180()
{
  result = qword_27CABF1B0;
  if (!qword_27CABF1B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABF1B0);
  }

  return result;
}

unint64_t sub_2169CB1D8()
{
  result = qword_27CABF1B8;
  if (!qword_27CABF1B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABF1B8);
  }

  return result;
}

unint64_t sub_2169CB258()
{
  result = qword_27CABF1C0;
  if (!qword_27CABF1C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABF1C0);
  }

  return result;
}

unint64_t sub_2169CB2AC()
{
  result = qword_27CABF1C8;
  if (!qword_27CABF1C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABF1C8);
  }

  return result;
}

unint64_t sub_2169CB32C()
{
  result = qword_27CABF1D0;
  if (!qword_27CABF1D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABF1D0);
  }

  return result;
}

unint64_t sub_2169CB380()
{
  result = qword_27CABF1D8;
  if (!qword_27CABF1D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABF1D8);
  }

  return result;
}

unint64_t sub_2169CB46C()
{
  result = qword_27CABF1E0;
  if (!qword_27CABF1E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABF1E0);
  }

  return result;
}

unint64_t sub_2169CB4C0()
{
  result = qword_27CABF1E8;
  if (!qword_27CABF1E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABF1E8);
  }

  return result;
}

unint64_t sub_2169CB540()
{
  result = qword_27CABF1F0;
  if (!qword_27CABF1F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABF1F0);
  }

  return result;
}

unint64_t sub_2169CB594()
{
  result = qword_27CABF1F8;
  if (!qword_27CABF1F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABF1F8);
  }

  return result;
}

unint64_t sub_2169CB614()
{
  result = qword_27CABF200;
  if (!qword_27CABF200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABF200);
  }

  return result;
}

unint64_t sub_2169CB668()
{
  result = qword_27CABF208;
  if (!qword_27CABF208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABF208);
  }

  return result;
}

unint64_t sub_2169CB6E8()
{
  result = qword_27CABF210;
  if (!qword_27CABF210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABF210);
  }

  return result;
}

unint64_t sub_2169CB73C()
{
  result = qword_27CABF218;
  if (!qword_27CABF218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABF218);
  }

  return result;
}

unint64_t sub_2169CB7BC()
{
  result = qword_27CABF220;
  if (!qword_27CABF220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABF220);
  }

  return result;
}

unint64_t sub_2169CB810()
{
  result = qword_27CABF228;
  if (!qword_27CABF228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABF228);
  }

  return result;
}

unint64_t sub_2169CB868()
{
  result = qword_27CABF230;
  if (!qword_27CABF230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABF230);
  }

  return result;
}

unint64_t sub_2169CB8E8()
{
  result = qword_27CABF238;
  if (!qword_27CABF238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABF238);
  }

  return result;
}

unint64_t sub_2169CB93C()
{
  result = qword_27CABF240;
  if (!qword_27CABF240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABF240);
  }

  return result;
}

unint64_t sub_2169CB9BC()
{
  result = qword_27CABF248;
  if (!qword_27CABF248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABF248);
  }

  return result;
}

unint64_t sub_2169CBA10()
{
  result = qword_27CABF250;
  if (!qword_27CABF250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABF250);
  }

  return result;
}

unint64_t sub_2169CBA90()
{
  result = qword_27CABF258;
  if (!qword_27CABF258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABF258);
  }

  return result;
}

unint64_t sub_2169CBAE4()
{
  result = qword_27CABF260;
  if (!qword_27CABF260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABF260);
  }

  return result;
}

uint64_t sub_2169CBB64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4(a1, a2, a3);
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_2169CBBA0()
{
  result = qword_27CABF268;
  if (!qword_27CABF268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABF268);
  }

  return result;
}

unint64_t sub_2169CBBF4()
{
  result = qword_27CABF270;
  if (!qword_27CABF270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABF270);
  }

  return result;
}

uint64_t sub_2169CBCE4(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 353))
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

uint64_t sub_2169CBD24(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 344) = 0;
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
    *(result + 328) = 0u;
    *(result + 352) = 0;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 353) = 1;
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

    *(result + 353) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2169CBDDC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 153))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
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

uint64_t sub_2169CBE1C(uint64_t result, int a2, int a3)
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
    *(result + 152) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 153) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 153) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2169CBEB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v53 = a1;
  v63 = a2;
  v62 = sub_2170090F4();
  OUTLINED_FUNCTION_1();
  v61 = v4;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_7();
  v8 = v7 - v6;
  v9 = *(a1 + 16);
  swift_getTupleTypeMetadata3();
  sub_21700B4E4();
  OUTLINED_FUNCTION_0_2();
  swift_getWitnessTable();
  v10 = sub_21700AF94();
  OUTLINED_FUNCTION_1();
  v54 = v11;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v12);
  v14 = v50 - v13;
  v15 = sub_2170089F4();
  OUTLINED_FUNCTION_1();
  v57 = v16;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v17);
  v64 = v50 - v18;
  v19 = sub_2170089F4();
  OUTLINED_FUNCTION_1();
  v59 = v20;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v21);
  v55 = v50 - v22;
  v23 = sub_2170089F4();
  OUTLINED_FUNCTION_1();
  v60 = v24;
  MEMORY[0x28223BE20](v25);
  v56 = v50 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v58 = v50 - v28;
  sub_217009194();
  v29 = *(v53 + 24);
  v65 = v9;
  v66 = v29;
  v67 = v2;
  sub_21700AF84();
  v52 = sub_217009CB4();
  v75 = *(v2 + 48);
  v30 = *(v2 + 32);
  v74[0] = *(v2 + 16);
  v74[1] = v30;
  v53 = *(&v30 + 1);
  v31 = v75;
  v51 = v8;
  v50[1] = *&v74[0];
  if ((v75 & 1) == 0)
  {

    sub_21700ED94();
    v32 = sub_217009C34();
    sub_217007BC4();

    sub_2170090E4();
    swift_getAtKeyPath();
    sub_216699778(v74, &unk_27CABF458);
    (*(v61 + 8))(v8, v62);
  }

  WitnessTable = swift_getWitnessTable();
  sub_21700AAB4();
  OUTLINED_FUNCTION_67();
  v34(v14, v10);
  sub_217009CD4();
  if ((v31 & 1) == 0)
  {

    sub_21700ED94();
    v35 = sub_217009C34();
    sub_217007BC4();

    v36 = v51;
    sub_2170090E4();
    swift_getAtKeyPath();
    sub_216699778(v74, &unk_27CABF458);
    OUTLINED_FUNCTION_67();
    v37(v36, v62);
  }

  v38 = MEMORY[0x277CDF918];
  v72 = WitnessTable;
  v73 = MEMORY[0x277CDF918];
  v39 = swift_getWitnessTable();
  v40 = v55;
  v41 = v64;
  sub_21700AAB4();
  OUTLINED_FUNCTION_67();
  v42(v41, v15);
  sub_217009CA4();
  v70 = v39;
  v71 = v38;
  v43 = swift_getWitnessTable();
  v44 = v56;
  sub_21700AAB4();
  OUTLINED_FUNCTION_67();
  v45(v40, v19);
  v68 = v43;
  v69 = v38;
  v46 = swift_getWitnessTable();
  v47 = v58;
  sub_2166C24DC(v44, v23, v46);
  v48 = *(v60 + 8);
  v48(v44, v23);
  sub_2166C24DC(v47, v23, v46);
  return (v48)(v47, v23);
}

uint64_t sub_2169CC584@<X0>(void (*a1)(_BYTE *, uint64_t)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v33 = a3;
  v34 = a4;
  v5 = *(a2 - 8);
  v31 = a1;
  v32 = v5;
  MEMORY[0x28223BE20](a1);
  v7 = &v28[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v8);
  v30 = &v28[-v9];
  sub_216983738(267);
  sub_217009D34();
  v10 = sub_21700A094();
  v12 = v11;
  v14 = v13;

  sub_217009D94();
  v15 = sub_217009FA4();
  v17 = v16;
  v29 = v18;
  v20 = v19;
  sub_21678817C(v10, v12, v14 & 1);

  (*v31)(v21);
  v22 = v30;
  v23 = v33;
  sub_2166C24DC(v7, a2, v33);
  v24 = v32;
  v31 = *(v32 + 8);
  v31(v7, a2);
  v41 = v15;
  v42 = v17;
  v25 = v29 & 1;
  v43 = v29 & 1;
  v39 = 0;
  v40 = 1;
  v44 = v20;
  v45[0] = &v41;
  v45[1] = &v39;
  (*(v24 + 16))(v7, v22, a2);
  v45[2] = v7;
  sub_216777114(v15, v17, v25);
  sub_21700DF14();
  v38[0] = MEMORY[0x277CE0BD8];
  v38[1] = MEMORY[0x277CE1180];
  v38[2] = a2;
  v35 = MEMORY[0x277CE0BC8];
  v36 = MEMORY[0x277CE1170];
  v37 = v23;
  sub_216984F84(v45, 3, v38);
  sub_21678817C(v15, v17, v25);

  v26 = v31;
  v31(v22, a2);
  v26(v7, a2);
  sub_21678817C(v41, v42, v43);
}

uint64_t sub_2169CC8A8@<X0>(uint64_t a1@<X8>)
{
  v49 = sub_2170098F4();
  OUTLINED_FUNCTION_1();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_7();
  v8 = (v7 - v6);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6330, &qword_217012D70);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v9);
  v11 = &v37 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF370, &unk_217032FC0);
  OUTLINED_FUNCTION_1();
  v14 = v13;
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v15);
  v48 = &v37 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA6D8, &qword_217020F20);
  MEMORY[0x21CE9BEE0](v50, v17);
  if (v50[1])
  {
    v43 = v11;
    v39 = v8;
    memcpy(__dst, v50, 0x80uLL);
    sub_216880D18(__dst, v50);
    v18 = *(*(v1 + 160) + 16);
    v38 = v4;
    v19 = v18 == 1;
    v45 = v14;
    v46 = v12;
    v21 = *(v1 + 8);
    v54 = *v1;
    v20 = v54;
    v55 = v21;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7C78, &qword_21701E920);
    v44 = a1;
    sub_21700AED4();
    LOBYTE(v50[16]) = v19;
    v50[17] = v51;
    v50[18] = v52;
    LOBYTE(v50[19]) = v53;
    sub_216776FB8();
    sub_21700A804();
    sub_2169D00A8(v50);
    LOBYTE(v51) = v20;
    v52 = v21;
    sub_21700AED4();
    v40 = v50[1];
    v41 = v50[0];
    v42 = LOBYTE(v50[2]);
    sub_2169D00D8(v1, v50);
    v22 = swift_allocObject();
    memcpy((v22 + 16), v50, 0xC0uLL);
    v23 = sub_21700AEF4();
    v24 = v39;
    *v39 = v23;
    (*(v4 + 104))(v24, *MEMORY[0x277CDE248], v49);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6338, &qword_217012D78);
    sub_2169CFF94(&qword_27CAB6340, &qword_27CAB6330, &qword_217012D70, sub_216776FB8);
    v25 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB6358, &qword_217012D80);
    v26 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB6360, &qword_217012D88);
    v27 = sub_21669E098(&qword_27CAB6368, &qword_27CAB6360, &qword_217012D88, MEMORY[0x277CDD6E0]);
    v51 = v26;
    v52 = v27;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v51 = v25;
    v52 = OpaqueTypeConformance2;
    swift_getOpaqueTypeConformance2();
    v29 = v48;
    v30 = v43;
    sub_21700A434();

    (*(v38 + 8))(v24, v49);
    sub_216699778(v30, &qword_27CAB6330);
    sub_216880DBC(__dst);
    v31 = v44;
    v32 = v46;
    (*(v45 + 32))(v44, v29, v46);
    v33 = v31;
    v34 = 0;
    v35 = v32;
  }

  else
  {
    sub_216699778(v50, &qword_27CABA690);
    v33 = a1;
    v34 = 1;
    v35 = v12;
  }

  return __swift_storeEnumTagSinglePayload(v33, v34, 1, v35);
}

uint64_t sub_2169CCD94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  v18 = sub_2170095A4();
  v16 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6360, &qword_217012D88);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v15 - v7;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB6358, &qword_217012D80);
  v9 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v11 = &v15 - v10;
  v19 = a1;
  sub_217009C64();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF378, &qword_217032FD0);
  sub_2169D0120();
  sub_217008054();
  v12 = sub_21669E098(&qword_27CAB6368, &qword_27CAB6360, &qword_217012D88, MEMORY[0x277CDD6E0]);
  sub_21700A874();
  (*(v6 + 8))(v8, v5);
  sub_217009594();
  LOBYTE(v8) = sub_217009C64();
  sub_217009C54();
  sub_217009C54();
  if (sub_217009C54() != v8)
  {
    sub_217009C54();
  }

  v20 = v5;
  v21 = v12;
  swift_getOpaqueTypeConformance2();
  v13 = v15;
  sub_21700A7A4();
  (*(v16 + 8))(v4, v18);
  return (*(v9 + 8))(v11, v13);
}

uint64_t sub_2169CD0CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a2;
  v31 = sub_217009854();
  v29 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v28 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_21700B2F4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF390, &qword_217032FE0);
  MEMORY[0x28223BE20](v8);
  v10 = &v28 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF388, &qword_217032FD8);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v28 - v13;
  *v10 = sub_2170093B4();
  *(v10 + 1) = 0;
  v10[16] = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF3A0, &unk_217032FE8);
  sub_2169CD48C(a1);
  sub_21700B2C4();
  v15 = sub_21669E098(&qword_27CABF398, &qword_27CABF390, &qword_217032FE0, MEMORY[0x277CE1198]);
  sub_21700A854();
  (*(v5 + 8))(v7, v4);
  sub_216699778(v10, &qword_27CABF390);
  v16 = v28;
  sub_217009844();
  v32 = v8;
  v33 = v4;
  v34 = v15;
  v35 = MEMORY[0x277CE1320];
  swift_getOpaqueTypeConformance2();
  v17 = v30;
  sub_21700A914();
  (*(v29 + 8))(v16, v31);
  (*(v12 + 8))(v14, v11);
  LOBYTE(v16) = sub_217009CE4();
  sub_217007F24();
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF378, &qword_217032FD0);
  v27 = v17 + *(result + 36);
  *v27 = v16;
  *(v27 + 8) = v19;
  *(v27 + 16) = v21;
  *(v27 + 24) = v23;
  *(v27 + 32) = v25;
  *(v27 + 40) = 0;
  return result;
}

uint64_t sub_2169CD48C(uint64_t a1)
{
  v2 = *(*(a1 + 160) + 16);
  v6 = 0;
  v7 = v2;
  swift_getKeyPath();
  sub_2169D00D8(a1, __src);
  v3 = swift_allocObject();
  memcpy((v3 + 16), __src, 0xC0uLL);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB688, &qword_217023FB0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF3A8, &unk_217033018);
  sub_2168B98BC();
  sub_21669E098(&qword_27CABF3B0, &qword_27CABF3A8, &unk_217033018, MEMORY[0x277CE14C0]);
  return sub_21700B154();
}

void sub_2169CD5D0(unint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_21700B134();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB6B0, &qword_217023FC0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v37 - v14;
  v16 = *a1;
  if ((*a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_22;
  }

  v17 = *(a2 + 160);
  if (v16 >= *(v17 + 16))
  {
LABEL_22:
    __break(1u);
    return;
  }

  v37 = v9;
  v39 = v16;
  v41 = v17;
  sub_216880D18(v17 + (v16 << 7) + 32, v51);
  sub_216880D18(v51, v49);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA6D8, &qword_217020F20);
  MEMORY[0x21CE9BEE0](v48, v18);
  sub_216681B04(v49, v50, &qword_27CABA690, &qword_217020E30);
  sub_216681B04(v48, &v50[16], &qword_27CABA690, &qword_217020E30);
  v44 = v12;
  v45 = a3;
  v42 = v15;
  v43 = v6;
  v38 = v7;
  if (!v50[1])
  {
    sub_216699778(v48, &qword_27CABA690);
    sub_216699778(v49, &qword_27CABA690);
    if (!v50[17])
    {
      sub_216699778(v50, &qword_27CABA690);
      v40 = 1;
      goto LABEL_16;
    }

    goto LABEL_13;
  }

  sub_216681B04(v50, v47, &qword_27CABA690, &qword_217020E30);
  if (!v50[17])
  {
    sub_216699778(v48, &qword_27CABA690);
    sub_216699778(v49, &qword_27CABA690);
    sub_216880DBC(v47);
LABEL_13:
    sub_216699778(v50, &unk_27CABF3B8);
    v40 = 0;
    goto LABEL_16;
  }

  memcpy(v46, &v50[16], sizeof(v46));
  if (v47[12] == v46[12] && v47[13] == v46[13])
  {
    v20 = 1;
  }

  else
  {
    v20 = sub_21700F7D4();
  }

  v40 = v20;
  sub_216699778(v48, &qword_27CABA690);
  sub_216699778(v49, &qword_27CABA690);
  sub_216880DBC(v46);
  sub_216880DBC(v47);
  sub_216699778(v50, &qword_27CABA690);
LABEL_16:
  sub_216880D18(v51, v48);
  v21 = *(a2 + 8);
  LOBYTE(v49[0]) = *a2;
  v49[1] = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7C78, &qword_21701E920);
  sub_21700AED4();
  v22 = v50[0];
  v23 = v50[1];
  v24 = v50[2];
  sub_216681B04(a2 + 16, v50, &qword_27CABA6D8, &qword_217020F20);
  v49[39] = swift_getKeyPath();
  LOBYTE(v49[44]) = 0;
  LOBYTE(v49[0]) = v40 & 1;
  sub_216880D18(v48, &v49[1]);
  v49[17] = v22;
  v49[18] = v23;
  LOBYTE(v49[19]) = v24;
  sub_216681B04(v50, &v49[20], &qword_27CABA6D8, &qword_217020F20);
  sub_216EC80A4();
  v26 = v25;
  sub_216699778(v50, &qword_27CABA6D8);
  sub_216880DBC(v48);
  v49[38] = v26;
  memcpy(v50, v49, 0x161uLL);
  v27 = sub_216AEE3C0(0, *(v41 + 16));
  if ((v28 & 1) != 0 || v39 != v27)
  {
    v34 = v37;
    sub_21700B124();
    v33 = v42;
    v35 = v34;
    v32 = v43;
    (*(v38 + 32))(v42, v35, v43);
    v29 = 0;
    v31 = v44;
    v30 = v45;
  }

  else
  {
    v29 = 1;
    v31 = v44;
    v30 = v45;
    v33 = v42;
    v32 = v43;
  }

  __swift_storeEnumTagSinglePayload(v33, v29, 1, v32);
  sub_2169CFA70(v50, v49);
  sub_216681B04(v33, v31, &qword_27CABB6B0, &qword_217023FC0);
  sub_2169CFA70(v49, v30);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF3C0, &qword_217033060);
  sub_216681B04(v31, v30 + *(v36 + 48), &qword_27CABB6B0, &qword_217023FC0);
  sub_216699778(v33, &qword_27CABB6B0);
  sub_2169D031C(v50);
  sub_216880DBC(v51);
  sub_216699778(v31, &qword_27CABB6B0);
  sub_2169D031C(v49);
}

uint64_t sub_2169CDB1C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v27[1] = a1;
  v27[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB75D0, &qword_217017420);
  MEMORY[0x28223BE20](v27[0]);
  v31 = v27 - v3;
  v4 = sub_2170096A4();
  v5 = *(v4 - 8);
  v29 = v4;
  v30 = v5;
  MEMORY[0x28223BE20](v4);
  v7 = v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF300, &qword_217032E50);
  v28 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = v27 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF308, &qword_217032E58);
  v12 = v11 - 8;
  MEMORY[0x28223BE20](v11);
  v14 = v27 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF310, &qword_217032E60);
  MEMORY[0x28223BE20](v15);
  v17 = v27 - v16;
  sub_2169CFA70(v2, v33);
  v18 = swift_allocObject();
  memcpy((v18 + 16), v33, 0x161uLL);
  v32 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF318, &qword_217032E68);
  sub_2169CFAB8();
  sub_21700AF14();
  sub_217009694();
  sub_21669E098(&qword_27CABF348, &qword_27CABF300, &qword_217032E50, MEMORY[0x277CDF028]);
  sub_2169D0044(&qword_280E2A8F8, MEMORY[0x277CDE0B8], MEMORY[0x277CDE0A0]);
  v19 = v29;
  sub_21700A364();
  (*(v30 + 8))(v7, v19);
  (*(v28 + 8))(v10, v8);
  v20 = v31;
  v21 = sub_21700AD14();
  KeyPath = swift_getKeyPath();
  v23 = &v14[*(v12 + 44)];
  *v23 = KeyPath;
  v23[1] = v21;
  sub_21700B3B4();
  sub_217008BB4();
  sub_21671E8B8(v14, v17);
  memcpy(&v17[*(v15 + 36)], v33, 0x70uLL);
  v24 = *MEMORY[0x277CDF988];
  v25 = sub_217008844();
  (*(*(v25 - 8) + 104))(v20, v24, v25);
  sub_2169D0044(&qword_280E2B340, MEMORY[0x277CDFA28], MEMORY[0x277CDFA48]);
  result = sub_21700E494();
  if (result)
  {
    sub_2169CFBFC();
    sub_21669E098(&qword_280E29AE8, &qword_27CAB75D0, &qword_217017420, MEMORY[0x277D84470]);
    sub_21700A5B4();
    sub_216699778(v20, &qword_27CAB75D0);
    return sub_216699778(v17, &qword_27CABF310);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2169CE074(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFAC0, &qword_21701B9F0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v14[-v3];
  sub_216C0C534(v14);
  if (!*&v14[24])
  {
    v9 = &qword_27CAB7310;
LABEL_6:
    sub_216699778(v14, v9);
    sub_21700B414();
    *v14 = sub_217008244();
    v10 = sub_217008224();
    MEMORY[0x28223BE20](v10);
    *&v14[-16] = a1;
    sub_217008A84();

    goto LABEL_7;
  }

  sub_2166A0F18(v14, v18);
  sub_216681B04(a1 + 64, v14, &qword_27CAB6DB0, &qword_217016C00);
  if (!*&v14[24])
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v18);
    v9 = &qword_27CAB6DB0;
    goto LABEL_6;
  }

  sub_2166A0F18(v14, v17);
  v5 = sub_21700EA74();
  __swift_storeEnumTagSinglePayload(v4, 1, 1, v5);
  sub_2167B7D58(v18, v16);
  sub_2167B7D58(v17, v15);
  sub_2169CFA70(a1, v14);
  sub_21700EA34();
  v6 = sub_21700EA24();
  v7 = swift_allocObject();
  v8 = MEMORY[0x277D85700];
  v7[2] = v6;
  v7[3] = v8;
  sub_2166A0F18(v16, (v7 + 4));
  sub_2166A0F18(v15, (v7 + 9));
  memcpy(v7 + 14, v14, 0x161uLL);
  sub_21677E228(0, 0, v4, &unk_217032E90, v7);

  __swift_destroy_boxed_opaque_existential_1Tm(v17);
  __swift_destroy_boxed_opaque_existential_1Tm(v18);
LABEL_7:
  v11 = *(a1 + 144);
  v12 = *(a1 + 152);
  *v14 = *(a1 + 136);
  *&v14[8] = v11;
  v14[16] = v12;
  LOBYTE(v18[0]) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABDA20, &unk_2170187A0);
  return sub_21700B0D4();
}

uint64_t sub_2169CE31C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF360, &unk_217041900);
  v6[5] = swift_task_alloc();
  sub_21700EA34();
  v6[6] = sub_21700EA24();
  v8 = sub_21700E9B4();
  v6[7] = v8;
  v6[8] = v7;

  return MEMORY[0x2822009F8](sub_2169CE3F0, v8, v7);
}

uint64_t sub_2169CE3F0()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[2];
  v4 = v3[3];
  v5 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v4);
  v6 = sub_2170075A4();
  __swift_storeEnumTagSinglePayload(v1, 1, 1, v6);
  v7 = *(v2 + 304);
  v8 = swift_task_alloc();
  v0[9] = v8;
  *v8 = v0;
  v8[1] = sub_2169CE4E0;
  v9 = v0[5];
  v10 = v0[3];

  return sub_216B4FF04(v10, v9, v7, v4, v5);
}

uint64_t sub_2169CE4E0()
{
  v2 = *v1;
  v3 = *(*v1 + 40);
  *(*v1 + 80) = v0;

  sub_216699778(v3, &qword_27CABF360);
  v4 = *(v2 + 64);
  v5 = *(v2 + 56);
  if (v0)
  {
    v6 = sub_2169CE6B4;
  }

  else
  {
    v6 = sub_2169CE648;
  }

  return MEMORY[0x2822009F8](v6, v5, v4);
}

uint64_t sub_2169CE648()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2169CE6B4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2169CE720(uint64_t a1)
{
  sub_216880D18(a1 + 8, &v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABA6D8, &qword_217020F20);
  return sub_21700B0D4();
}

void sub_2169CE780(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_2170091A4();
  sub_2169CE884(a1, v19);
  *&v18[7] = v19[0];
  *&v18[23] = v19[1];
  *&v18[39] = v20[0];
  *&v18[48] = *(v20 + 9);
  LOBYTE(a1) = sub_217009C94();
  sub_217007F24();
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = sub_217009C74();
  sub_217007F24();
  *(a2 + 17) = *v18;
  *(a2 + 33) = *&v18[16];
  *(a2 + 49) = *&v18[32];
  *a2 = v4;
  *(a2 + 8) = 0x4020000000000000;
  *(a2 + 16) = 0;
  *(a2 + 65) = *&v18[48];
  *(a2 + 88) = a1;
  *(a2 + 96) = v6;
  *(a2 + 104) = v8;
  *(a2 + 112) = v10;
  *(a2 + 120) = v12;
  *(a2 + 128) = 0;
  *(a2 + 136) = v13;
  *(a2 + 144) = v14;
  *(a2 + 152) = v15;
  *(a2 + 160) = v16;
  *(a2 + 168) = v17;
  *(a2 + 176) = 0;
}

uint64_t sub_2169CE884@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_21700ADB4();
  v5 = 0.0;
  if (*a1)
  {
    v5 = 1.0;
  }

  v7 = *(a1 + 8);
  v6 = *(a1 + 16);
  *a2 = v4;
  *(a2 + 8) = v5;
  *(a2 + 16) = v7;
  *(a2 + 24) = v6;
  v8 = MEMORY[0x277D84F90];
  *(a2 + 32) = 0;
  *(a2 + 40) = v8;
  *(a2 + 48) = 0;
  *(a2 + 56) = 1;
  sub_21700DF14();

  sub_2167770D0(v7, v6, 0, v8);
  sub_2167C4DF0(v7, v6, 0, v8);
}

uint64_t sub_2169CE98C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v52 = a1;
  v53 = sub_217009314();
  v51 = *(v53 - 8);
  MEMORY[0x28223BE20](v53);
  v50 = &v44 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_217009A84();
  v47 = *(v46 - 8);
  MEMORY[0x28223BE20](v46);
  v5 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF278, &qword_217032CF8);
  MEMORY[0x28223BE20](v6);
  v8 = &v44 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF280, &qword_217032D00);
  MEMORY[0x28223BE20](v9);
  v11 = &v44 - v10;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF288, &qword_217032D08);
  MEMORY[0x28223BE20](v44);
  v13 = &v44 - v12;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF290, &qword_217032D10);
  MEMORY[0x28223BE20](v49);
  v45 = &v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v48 = &v44 - v16;
  sub_2169CF328(v2, __src);
  v17 = swift_allocObject();
  memcpy((v17 + 16), __src, 0x99uLL);
  v54 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF298, &qword_217032D18);
  sub_2169CF370();
  sub_21700AF14();
  v18 = *(v2 + 128);
  KeyPath = swift_getKeyPath();
  v20 = swift_allocObject();
  *(v20 + 16) = v18;
  v21 = &v8[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF2A8, &qword_217032D50) + 36)];
  *v21 = KeyPath;
  v21[1] = sub_2169CF4A8;
  v21[2] = v20;
  v22 = sub_217009D54();
  v23 = swift_getKeyPath();
  v24 = &v8[*(v6 + 36)];
  *v24 = v23;
  v24[1] = v22;
  sub_217009DC4();
  sub_2169CF4B8();
  sub_21700A304();
  sub_216699778(v8, &qword_27CABF278);
  v25 = sub_21700AD14();
  v26 = swift_getKeyPath();
  v27 = &v11[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF2D8, &unk_217032DD0) + 36)];
  *v27 = v26;
  v27[1] = v25;
  v28 = &v11[*(v9 + 36)];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8A60, &qword_217050220);
  sub_217008BF4();
  *v28 = swift_getKeyPath();
  sub_217009A74();
  sub_2169CF780();
  sub_2169D0044(&qword_27CABF2F0, MEMORY[0x277CDE400], MEMORY[0x277CDE3E8]);
  v29 = v46;
  sub_21700A364();
  (*(v47 + 8))(v5, v29);
  sub_216699778(v11, &qword_27CABF280);
  v30 = [objc_opt_self() tertiarySystemFillColor];
  v31 = sub_21700AC44();
  v32 = swift_getKeyPath();
  __src[0] = v31;
  v33 = sub_2170083D4();
  v34 = &v13[*(v44 + 36)];
  *v34 = v32;
  v34[1] = v33;
  v35 = *(v2 + 8);
  __src[0] = *v2;
  __src[1] = v35;
  sub_2167B2E14();
  sub_21700DF14();
  v36 = sub_21700A174();
  v38 = v37;
  LOBYTE(v2) = v39;
  sub_2169CF92C();
  v40 = v45;
  sub_21700A6A4();
  sub_21678817C(v36, v38, v2 & 1);

  sub_216699778(v13, &qword_27CABF288);
  v41 = v48;
  sub_2170089B4();
  sub_216699778(v40, &qword_27CABF290);
  v42 = v50;
  sub_2170092F4();
  sub_2170089E4();
  (*(v51 + 8))(v42, v53);
  return sub_216699778(v41, &qword_27CABF290);
}

void sub_2169CF0F4(uint64_t a1@<X8>)
{
  v2 = sub_2169CF17C();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = sub_217009C74();
  sub_217007F24();
  *a1 = v2;
  *(a1 + 8) = v4;
  *(a1 + 16) = v6 & 1;
  *(a1 + 24) = v8;
  *(a1 + 32) = v9;
  *(a1 + 40) = v10;
  *(a1 + 48) = v11;
  *(a1 + 56) = v12;
  *(a1 + 64) = v13;
  *(a1 + 72) = 0;
}

uint64_t sub_2169CF17C()
{
  v1 = sub_217009254();
  MEMORY[0x28223BE20](v1 - 8);
  if (*(v0 + 128) == 1)
  {
    sub_217009244();
    sub_217009234();
    sub_217009224();
  }

  else
  {
    sub_217009244();
    sub_217009234();
    sub_217009224();
    sub_217009234();
    sub_217009224();
    sub_217009234();
    sub_217009224();
    sub_217009234();
    sub_21700ADB4();
    v2 = sub_21700A184();
    v4 = v3;
    v6 = v5;
    sub_217009204();
    sub_21678817C(v2, v4, v6 & 1);
  }

  sub_217009234();
  sub_217009274();
  return sub_21700A154();
}

unint64_t sub_2169CF370()
{
  result = qword_27CABF2A0;
  if (!qword_27CABF2A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABF298, &qword_217032D18);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABF2A0);
  }

  return result;
}

uint64_t sub_2169CF3F4()
{
  OUTLINED_FUNCTION_17_6();
  result = sub_217009014();
  *v0 = result;
  return result;
}

uint64_t sub_2169CF448()
{
  OUTLINED_FUNCTION_17_6();
  result = sub_217009084();
  *v0 = result & 1;
  return result;
}

unint64_t sub_2169CF4B8()
{
  result = qword_27CABF2B0;
  if (!qword_27CABF2B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABF278, &qword_217032CF8);
    sub_2169CF570();
    sub_21669E098(&qword_280E2A720, &qword_27CAB7670, &qword_217018330, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABF2B0);
  }

  return result;
}

unint64_t sub_2169CF570()
{
  result = qword_27CABF2B8;
  if (!qword_27CABF2B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABF2A8, &qword_217032D50);
    sub_21669E098(&qword_27CABF2C0, &unk_27CABF2C8, &unk_217032D88, MEMORY[0x277CDF028]);
    sub_21669E098(&qword_280E2A6E0, &unk_27CABF2D0, &unk_217032D90, MEMORY[0x277CE08A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABF2B8);
  }

  return result;
}

uint64_t sub_2169CF654()
{
  OUTLINED_FUNCTION_17_6();
  result = MEMORY[0x21CE99E50]();
  *v0 = result;
  return result;
}

uint64_t sub_2169CF6CC(uint64_t a1)
{
  sub_217008C14();
  OUTLINED_FUNCTION_1();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_7();
  (*(v5 + 16))(v4 - v3, a1);
  return sub_217008F24();
}

unint64_t sub_2169CF780()
{
  result = qword_27CABF2E0;
  if (!qword_27CABF2E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABF280, &qword_217032D00);
    sub_2169CF838();
    sub_21669E098(&qword_280E2A728, &qword_27CAB8A60, &qword_217050220, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABF2E0);
  }

  return result;
}

unint64_t sub_2169CF838()
{
  result = qword_27CABF2E8;
  if (!qword_27CABF2E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABF2D8, &unk_217032DD0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABF278, &qword_217032CF8);
    sub_2169CF4B8();
    swift_getOpaqueTypeConformance2();
    sub_21669E098(&qword_280E2A718, &qword_27CAB7BE0, &unk_217018250, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABF2E8);
  }

  return result;
}

unint64_t sub_2169CF92C()
{
  result = qword_27CABF2F8;
  if (!qword_27CABF2F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABF288, &qword_217032D08);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABF280, &qword_217032D00);
    sub_217009A84();
    sub_2169CF780();
    sub_2169D0044(&qword_27CABF2F0, MEMORY[0x277CDE400], MEMORY[0x277CDE3E8]);
    swift_getOpaqueTypeConformance2();
    sub_21669E098(&qword_27CAB7CD8, &qword_27CAB7CE0, &unk_217025AA0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABF2F8);
  }

  return result;
}

unint64_t sub_2169CFAB8()
{
  result = qword_27CABF320;
  if (!qword_27CABF320)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABF318, &qword_217032E68);
    sub_2169CFB44();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABF320);
  }

  return result;
}

unint64_t sub_2169CFB44()
{
  result = qword_27CABF328;
  if (!qword_27CABF328)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABF330, &qword_217032E70);
    sub_21669E098(&qword_27CABF338, &unk_27CABF340, &unk_217032E78, MEMORY[0x277CE1138]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABF328);
  }

  return result;
}

unint64_t sub_2169CFBFC()
{
  result = qword_27CABF350;
  if (!qword_27CABF350)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABF310, &qword_217032E60);
    sub_2169CFC88();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABF350);
  }

  return result;
}

unint64_t sub_2169CFC88()
{
  result = qword_27CABF358;
  if (!qword_27CABF358)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABF308, &qword_217032E58);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABF300, &qword_217032E50);
    sub_2170096A4();
    sub_21669E098(&qword_27CABF348, &qword_27CABF300, &qword_217032E50, MEMORY[0x277CDF028]);
    sub_2169D0044(&qword_280E2A8F8, MEMORY[0x277CDE0B8], MEMORY[0x277CDE0A0]);
    swift_getOpaqueTypeConformance2();
    sub_21669E098(&qword_280E2A718, &qword_27CAB7BE0, &unk_217018250, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABF358);
  }

  return result;
}

uint64_t sub_2169CFE1C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2166DFAC0;

  return sub_2169CE31C(a1, v4, v5, v1 + 32, v1 + 72, v1 + 112);
}

uint64_t sub_2169CFED4(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 192))
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

uint64_t sub_2169CFF14(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 184) = 0;
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 192) = 1;
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

    *(result + 192) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2169CFF94(unint64_t *a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    v7 = OUTLINED_FUNCTION_100(0, a2);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v7, v8);
    a4();
    sub_2169D0044(&qword_280E2A6F0, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2169D0044(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_2169D0120()
{
  result = qword_27CABF380;
  if (!qword_27CABF380)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABF378, &qword_217032FD0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABF388, &qword_217032FD8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABF390, &qword_217032FE0);
    sub_21700B2F4();
    sub_21669E098(&qword_27CABF398, &qword_27CABF390, &qword_217032FE0, MEMORY[0x277CE1198]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABF380);
  }

  return result;
}

uint64_t objectdestroy_45Tm()
{

  if (v0[7])
  {

    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 8);
    if (v0[16])
    {
      __swift_destroy_boxed_opaque_existential_1Tm(v0 + 13);
    }
  }

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

unint64_t sub_2169D034C()
{
  result = qword_27CABF3C8;
  if (!qword_27CABF3C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27CABF3D0, &qword_217033068);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB6330, &qword_217012D70);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB6338, &qword_217012D78);
    sub_2169CFF94(&qword_27CAB6340, &qword_27CAB6330, &qword_217012D70, sub_216776FB8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB6358, &qword_217012D80);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CAB6360, &qword_217012D88);
    sub_21669E098(&qword_27CAB6368, &qword_27CAB6360, &qword_217012D88, MEMORY[0x277CDD6E0]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CABF3C8);
  }

  return result;
}

uint64_t sub_2169D0518(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_2169D0554(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 49))
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

uint64_t sub_2169D0594(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 49) = 1;
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

    *(result + 49) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2169D0660()
{
  OUTLINED_FUNCTION_33();
  v0[3] = v1;
  v0[4] = v2;
  v0[2] = v3;
  v0[5] = type metadata accessor for ProcessDeepLinkIntent(0);
  v0[6] = swift_task_alloc();
  sub_21700EA34();
  v0[7] = sub_21700EA24();
  v5 = sub_21700E9B4();
  v0[8] = v5;
  v0[9] = v4;

  return MEMORY[0x2822009F8](sub_2169D0728, v5, v4);
}

uint64_t sub_2169D0728()
{
  OUTLINED_FUNCTION_93();
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[3];
  v4 = type metadata accessor for ProcessDeepLinkAction(0);
  v5 = sub_217005DE4();
  v7 = v6;
  sub_2168CC268(v3 + *(v4 + 24), v1 + *(v2 + 20));
  v8 = *(v3 + *(v4 + 28));
  *v1 = v5;
  v1[1] = v7;
  *(v1 + *(v2 + 24)) = v8;
  swift_task_alloc();
  OUTLINED_FUNCTION_52();
  v0[10] = v9;
  *v9 = v10;
  v9[1] = sub_2169D081C;

  return sub_2169D0A28();
}

uint64_t sub_2169D081C()
{
  v2 = *v1;
  OUTLINED_FUNCTION_26_0();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 88) = v0;

  v5 = *(v2 + 72);
  v6 = *(v2 + 64);
  if (v0)
  {
    v7 = sub_2169D09BC;
  }

  else
  {
    v7 = sub_2169D0950;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_2169D0950()
{
  OUTLINED_FUNCTION_33();
  v1 = *(v0 + 48);

  sub_2169D1860(v1);

  OUTLINED_FUNCTION_3();

  return v2();
}

uint64_t sub_2169D09BC()
{
  OUTLINED_FUNCTION_33();
  v1 = *(v0 + 48);

  sub_2169D1860(v1);

  OUTLINED_FUNCTION_3();

  return v2();
}

uint64_t sub_2169D0A28()
{
  OUTLINED_FUNCTION_33();
  v0[18] = v1;
  v0[19] = v2;
  v0[17] = v3;
  v4 = sub_21700D3B4();
  v0[20] = v4;
  v0[21] = *(v4 - 8);
  v0[22] = swift_task_alloc();
  v5 = sub_217006224();
  v0[23] = v5;
  v0[24] = *(v5 - 8);
  v0[25] = swift_task_alloc();
  sub_21700EA34();
  v0[26] = sub_21700EA24();
  v7 = sub_21700E9B4();
  v0[27] = v7;
  v0[28] = v6;

  return MEMORY[0x2822009F8](sub_2169D0B78, v7, v6);
}

uint64_t sub_2169D0B78()
{
  v2 = v0[24];
  v1 = v0[25];
  v3 = v0[23];
  v4 = v0[18];
  v5 = type metadata accessor for ProcessDeepLinkIntent(0);
  v0[14] = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF460, &qword_217033238);
  v15 = sub_21700E594();
  v16 = v6;
  MEMORY[0x21CE9F490](45, 0xE100000000000000);
  sub_217006214();
  v7 = sub_2170061F4();
  v9 = v8;
  (*(v2 + 8))(v1, v3);
  MEMORY[0x21CE9F490](v7, v9);

  v0[5] = v5;
  v0[6] = sub_2169D18BC(&qword_27CABF468, type metadata accessor for ProcessDeepLinkIntent, &unk_2170301AC);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 2);
  sub_2169D1904(v4, boxed_opaque_existential_1);
  v0[7] = v15;
  v0[8] = v16;
  type metadata accessor for ResponseMapper(0);
  swift_allocObject();
  sub_21700DF14();
  v11 = sub_216A59BF0();
  v0[29] = v11;
  type metadata accessor for IntentNetworkResponseReceiver();
  type metadata accessor for ObjectGraph(0);
  sub_21700E094();
  v0[30] = v0[15];
  swift_retain_n();
  v0[31] = sub_216E46AB4(v15, v16, sub_2169D1968, v11);

  type metadata accessor for JSIntentDispatcher();
  sub_21700E094();
  v0[32] = v0[16];
  swift_task_alloc();
  OUTLINED_FUNCTION_52();
  v0[33] = v12;
  *v12 = v13;
  v12[1] = sub_2169D0E08;

  return sub_216CC7FF8();
}

uint64_t sub_2169D0E08()
{
  OUTLINED_FUNCTION_33();
  v2 = *v1;
  OUTLINED_FUNCTION_26_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_28();
  *v5 = v4;
  v2[34] = v0;

  if (v0)
  {
    v6 = v2[27];
    v7 = v2[28];

    return MEMORY[0x2822009F8](sub_2169D1384, v6, v7);
  }

  else
  {
    v8 = swift_task_alloc();
    v2[35] = v8;
    *v8 = v4;
    v8[1] = sub_2169D0F5C;

    return sub_216E46B40();
  }
}

uint64_t sub_2169D0F5C()
{
  v2 = *v1;
  OUTLINED_FUNCTION_26_0();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 288) = v0;

  v5 = *(v2 + 224);
  v6 = *(v2 + 216);
  if (v0)
  {
    v7 = sub_2169D1434;
  }

  else
  {
    v7 = sub_2169D1090;
  }

  return MEMORY[0x2822009F8](v7, v6, v5);
}

uint64_t sub_2169D1090()
{
  OUTLINED_FUNCTION_93();
  v2 = v0[21];
  v1 = v0[22];
  v3 = v0[20];
  v4 = sub_216E9C8E8(v0[29]);
  v0[37] = v4;
  v5 = MEMORY[0x277D21D10];
  v0[12] = v3;
  v0[13] = v5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 9);
  (*(v2 + 16))(boxed_opaque_existential_1, v1, v3);
  swift_task_alloc();
  OUTLINED_FUNCTION_52();
  v0[38] = v7;
  *v7 = v8;
  v7[1] = sub_2169D1188;
  v9 = v0[17];

  return (sub_216EAE324)(v9, v0 + 9, v4);
}

uint64_t sub_2169D1188()
{
  OUTLINED_FUNCTION_33();
  v2 = *v1;
  OUTLINED_FUNCTION_26_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_28();
  *v5 = v4;
  v2[39] = v0;

  if (v0)
  {
    v6 = v2[27];
    v7 = v2[28];
    v8 = sub_2169D1504;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v2 + 9);
    v6 = v2[27];
    v7 = v2[28];
    v8 = sub_2169D1290;
  }

  return MEMORY[0x2822009F8](v8, v6, v7);
}

uint64_t sub_2169D1290()
{
  v2 = v0[21];
  v1 = v0[22];
  v3 = v0[20];

  (*(v2 + 8))(v1, v3);
  sub_216E47F84();

  sub_2169D1970((v0 + 2));

  OUTLINED_FUNCTION_3();

  return v4();
}

uint64_t sub_2169D1384()
{
  OUTLINED_FUNCTION_93();

  OUTLINED_FUNCTION_3_76();

  sub_2169D1970(v0 + 16);

  OUTLINED_FUNCTION_3();

  return v1();
}

uint64_t sub_2169D1434()
{
  OUTLINED_FUNCTION_93();
  v2 = v0[21];
  v1 = v0[22];
  v3 = v0[20];

  (*(v2 + 8))(v1, v3);
  OUTLINED_FUNCTION_3_76();

  sub_2169D1970((v0 + 2));

  OUTLINED_FUNCTION_3();

  return v4();
}

uint64_t sub_2169D1504()
{
  OUTLINED_FUNCTION_93();
  v2 = v0[21];
  v1 = v0[22];
  v3 = v0[20];

  (*(v2 + 8))(v1, v3);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 9);
  OUTLINED_FUNCTION_3_76();

  sub_2169D1970((v0 + 2));

  OUTLINED_FUNCTION_3();

  return v4();
}

uint64_t sub_2169D15E8(void *a1)
{
  v1 = [a1 data];
  v2 = sub_217005FB4();
  v4 = v3;

  sub_216A59A98(v2, v4);

  return sub_21677A524(v2, v4);
}

uint64_t sub_2169D165C()
{
  swift_task_alloc();
  OUTLINED_FUNCTION_52();
  *(v0 + 16) = v1;
  *v1 = v2;
  v1[1] = sub_2169D1708;

  return sub_2169D0660();
}

uint64_t sub_2169D1708()
{
  OUTLINED_FUNCTION_33();
  v1 = *v0;
  OUTLINED_FUNCTION_28();
  *v2 = v1;

  OUTLINED_FUNCTION_3();

  return v3();
}

unint64_t sub_2169D17EC(uint64_t a1)
{
  result = sub_2166D4E8C();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2169D1860(uint64_t a1)
{
  v2 = type metadata accessor for ProcessDeepLinkIntent(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2169D18BC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2169D1904(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ProcessDeepLinkIntent(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2169D1970(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF470, &unk_217033240);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2169D19D8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF478, &qword_217033250);
  swift_allocObject();

  return sub_2169D3D20(v0);
}

uint64_t sub_2169D1A28@<X0>(uint64_t a1@<X8>)
{
  v31 = a1;
  v2 = sub_217006274();
  MEMORY[0x28223BE20](v2 - 8);
  OUTLINED_FUNCTION_6_0();
  v30 = v3;
  v4 = sub_21700E4C4();
  MEMORY[0x28223BE20](v4 - 8);
  OUTLINED_FUNCTION_6_0();
  v29 = v5;
  v6 = type metadata accessor for SearchLandingPageView(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8600, &qword_217020AD0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v9);
  v11 = &v27 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF490, &qword_2170332F0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v13);
  v15 = &v27 - v14;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF498, &unk_2170332F8);
  v16 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v18 = &v27 - v17;
  sub_2169D1E14(v1, v15);
  sub_216C0C900();
  sub_2169D41F4(v1, &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v20 = swift_allocObject();
  sub_2169D4258(&v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v20 + v19);
  v21 = sub_2169D431C();
  v22 = sub_2169D46A0();
  v23 = v27;
  sub_21700AB14();

  sub_216697664(v11, &qword_27CAB8600, &qword_217020AD0);
  sub_216697664(v15, &qword_27CABF490, &qword_2170332F0);
  sub_21700E4B4();
  sub_217006264();
  v36 = sub_21700E584();
  v37 = v24;
  v32 = v12;
  v33 = v23;
  v34 = v21;
  v35 = v22;
  OUTLINED_FUNCTION_0_12();
  swift_getOpaqueTypeConformance2();
  sub_2167B2E14();
  v25 = v28;
  sub_21700A5D4();

  return (*(v16 + 8))(v18, v25);
}

uint64_t sub_2169D1E14@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9140, &qword_21701C730);
  v53 = *(v58 - 8);
  MEMORY[0x28223BE20](v58);
  v5 = &v48 - v4;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9150, &qword_21701C740);
  *&v52 = *(v62 - 8);
  MEMORY[0x28223BE20](v62);
  v7 = &v48 - v6;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF4D8, &qword_2170333A0);
  MEMORY[0x28223BE20](v59);
  v61 = &v48 - v8;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF4E0, &qword_2170333A8);
  MEMORY[0x28223BE20](v54);
  v56 = &v48 - v9;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF4B8, &unk_217033320);
  MEMORY[0x28223BE20](v60);
  v57 = &v48 - v10;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF4C0, &qword_217033330);
  MEMORY[0x28223BE20](v55);
  v12 = &v48 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF4B0, &qword_217033318);
  MEMORY[0x28223BE20](v13);
  v15 = &v48 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF4E8, &qword_2170333B0);
  MEMORY[0x28223BE20](v16);
  v18 = &v48 - v17;
  if (sub_2169D2A78())
  {
    sub_2169D2F40(&v66);
    v19 = v68;
    v20 = v67;
    *v18 = v66;
    *(v18 + 1) = v20;
    *(v18 + 4) = v19;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF4A8, &qword_217033310);
    sub_2169D442C();
    sub_2169D4504();
    return sub_217009554();
  }

  v49 = v16;
  v50 = v13;
  v51 = a2;
  v22 = *a1;
  v23 = v15;
  if ((~*a1 & 0xF000000000000007) == 0)
  {
    goto LABEL_7;
  }

  if (v22 >> 62)
  {
    if (v22 >> 62 == 1)
    {
      sub_2169D4E84(*a1, a1[1], a1[2]);
      v24 = (v22 & 0x3FFFFFFFFFFFFFFFLL);

      sub_217007564();
      v25 = v52;
      v26 = v62;
      (*(v52 + 16))(v61, v7, v62);
      swift_storeEnumTagMultiPayload();
      sub_2169D45BC();
      sub_2166D9530(&qword_280E48630, &qword_27CAB9150, &qword_21701C740, MEMORY[0x277D7EB80]);
      sub_217009554();

      (*(v25 + 8))(v7, v26);
      goto LABEL_8;
    }

LABEL_7:
    sub_217007514();
    v27 = v53;
    v28 = v58;
    (*(v53 + 16))(v56, v5, v58);
    swift_storeEnumTagMultiPayload();
    sub_2166D9530(qword_280E48638, &qword_27CAB9140, &qword_21701C730, MEMORY[0x277D7EAF0]);
    sub_2166D9530(&qword_280E2B938, &qword_27CABF4C0, &qword_217033330, &unk_217024E70);
    v29 = v57;
    sub_217009554();
    sub_216681B04(v29, v61, &qword_27CABF4B8, &unk_217033320);
    swift_storeEnumTagMultiPayload();
    sub_2169D45BC();
    sub_2166D9530(&qword_280E48630, &qword_27CAB9150, &qword_21701C740, MEMORY[0x277D7EB80]);
    sub_217009554();
    sub_216697664(v29, &qword_27CABF4B8, &unk_217033320);
    (*(v27 + 8))(v5, v28);
    goto LABEL_8;
  }

  if (!a1[9])
  {
    type metadata accessor for SearchPagePresenter(0);
    sub_2169D4EA0(&qword_280E3D248, type metadata accessor for SearchPagePresenter, &unk_21705C040);
    result = sub_217008CD4();
    __break(1u);
    return result;
  }

  v30 = a1[3];

  v31 = sub_216C98B74(v30);

  sub_2169D3468(v69);
  sub_2169D2F40(&v66);
  v53 = v68;
  type metadata accessor for MusicStackAuthority(0);
  sub_2169D4EA0(&qword_280E46D08, type metadata accessor for MusicStackAuthority, &protocol conformance descriptor for MusicStackAuthority);
  v52 = v66;
  v48 = v67;
  *(v12 + 23) = sub_217008CF4();
  *(v12 + 24) = v32;
  v33 = v55;
  v34 = *(v55 + 96);
  *&v12[v34] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9128, &qword_21701C710);
  swift_storeEnumTagMultiPayload();
  v35 = &v12[v33[25]];
  *v35 = swift_getKeyPath();
  v35[8] = 0;
  v36 = &v12[v33[26]];
  *v36 = sub_216CEB550;
  *(v36 + 1) = 0;
  v36[16] = 0;
  v37 = v69[1];
  *(v12 + 4) = v69[0];
  *(v12 + 5) = v37;
  *(v12 + 48) = v70;
  type metadata accessor for UserSocialProfileCoordinator(0);
  type metadata accessor for ObjectGraph(0);
  sub_21700E094();
  *(v12 + 16) = v63[0];
  type metadata accessor for SocialGraphController(0);
  sub_21700E094();
  *(v12 + 17) = v63[0];
  type metadata accessor for SubscriptionStatusCoordinator();
  sub_21700E094();
  *(v12 + 18) = v63[0];
  type metadata accessor for AppDestinationPageProviderBox();
  sub_21700E094();
  *(v12 + 13) = v63[0];
  type metadata accessor for CloudLibraryStatusController(0);
  sub_21700E094();
  *(v12 + 19) = v63[0];
  type metadata accessor for UnifiedMessages.Coordinator(0);
  sub_21700E094();
  *(v12 + 22) = v63[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CABFB30, &unk_2170198C0);
  sub_21700E094();
  v38 = v64;
  v39 = v65;
  __swift_project_boxed_opaque_existential_1(v63, v64);
  v40 = (*(v39 + 8))(v38, v39);
  v42 = v41;
  __swift_destroy_boxed_opaque_existential_1Tm(v63);
  *(v12 + 14) = v40;
  *(v12 + 15) = v42;
  *v12 = sub_2169D4E98;
  *(v12 + 1) = v31;
  v12[16] = 0;
  type metadata accessor for MusicTabChangePublisher(0);

  sub_21700E094();
  sub_2169D4EA0(&qword_280E46AC8, type metadata accessor for MusicTabChangePublisher, &unk_2170554F8);
  v43 = sub_217008684();
  v45 = v44;

  *(v12 + 20) = v43;
  *(v12 + 21) = v45;
  v46 = &v12[v33[27]];
  *v46 = 0;
  *(v46 + 1) = 0;
  *(v12 + 40) = v48;
  *(v12 + 24) = v52;
  *(v12 + 7) = v53;
  sub_216681B04(v12, v56, &qword_27CABF4C0, &qword_217033330);
  swift_storeEnumTagMultiPayload();
  sub_2166D9530(qword_280E48638, &qword_27CAB9140, &qword_21701C730, MEMORY[0x277D7EAF0]);
  sub_2166D9530(&qword_280E2B938, &qword_27CABF4C0, &qword_217033330, &unk_217024E70);
  v47 = v57;
  sub_217009554();
  sub_216681B04(v47, v61, &qword_27CABF4B8, &unk_217033320);
  swift_storeEnumTagMultiPayload();
  sub_2169D45BC();
  sub_2166D9530(&qword_280E48630, &qword_27CAB9150, &qword_21701C740, MEMORY[0x277D7EB80]);
  sub_217009554();
  sub_216697664(v47, &qword_27CABF4B8, &unk_217033320);
  sub_216697664(v12, &qword_27CABF4C0, &qword_217033330);
LABEL_8:
  sub_216681B04(v23, v18, &qword_27CABF4B0, &qword_217033318);
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF4A8, &qword_217033310);
  sub_2169D442C();
  sub_2169D4504();
  sub_217009554();
  return sub_216697664(v23, &qword_27CABF4B0, &qword_217033318);
}

uint64_t sub_2169D2A78()
{
  v1 = sub_2170098A4();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v24 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8708, &qword_21701A3E0);
  v5 = v4 - 8;
  MEMORY[0x28223BE20](v4);
  v7 = &v24 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8600, &qword_217020AD0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v24 - v12;
  MEMORY[0x28223BE20](v14);
  v16 = &v24 - v15;
  type metadata accessor for SearchLandingPageView(0);
  v25 = v0;
  sub_216C0C900();
  (*(v2 + 104))(v13, *MEMORY[0x277CE0560], v1);
  __swift_storeEnumTagSinglePayload(v13, 0, 1, v1);
  v17 = *(v5 + 56);
  sub_216681B04(v16, v7, &qword_27CAB8600, &qword_217020AD0);
  sub_216681B04(v13, &v7[v17], &qword_27CAB8600, &qword_217020AD0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v1) != 1)
  {
    sub_216681B04(v7, v10, &qword_27CAB8600, &qword_217020AD0);
    if (__swift_getEnumTagSinglePayload(&v7[v17], 1, v1) != 1)
    {
      v18 = &v7[v17];
      v19 = v24;
      (*(v2 + 32))(v24, v18, v1);
      sub_2169D4EA0(&qword_280E2A858, MEMORY[0x277CE0570], MEMORY[0x277CE0590]);
      v20 = sub_21700E494();
      v21 = *(v2 + 8);
      v21(v19, v1);
      sub_216697664(v13, &qword_27CAB8600, &qword_217020AD0);
      sub_216697664(v16, &qword_27CAB8600, &qword_217020AD0);
      v21(v10, v1);
      sub_216697664(v7, &qword_27CAB8600, &qword_217020AD0);
      if ((v20 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_8;
    }

    sub_216697664(v13, &qword_27CAB8600, &qword_217020AD0);
    sub_216697664(v16, &qword_27CAB8600, &qword_217020AD0);
    (*(v2 + 8))(v10, v1);
LABEL_6:
    sub_216697664(v7, &qword_27CAB8708, &qword_21701A3E0);
    return 0;
  }

  sub_216697664(v13, &qword_27CAB8600, &qword_217020AD0);
  sub_216697664(v16, &qword_27CAB8600, &qword_217020AD0);
  if (__swift_getEnumTagSinglePayload(&v7[v17], 1, v1) != 1)
  {
    goto LABEL_6;
  }

  sub_216697664(v7, &qword_27CAB8600, &qword_217020AD0);
LABEL_8:
  if ((sub_2166C129C() & 1) == 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF478, &qword_217033250);
    sub_2166D9530(qword_280E42FA0, &qword_27CABF478, &qword_217033250, &unk_217065494);
    sub_2170081B4();
    v22 = sub_2169D3BF8();

    if (v22)
    {

      return 1;
    }
  }

  return 0;
}

uint64_t sub_2169D2F40@<X0>(uint64_t *a1@<X8>)
{
  v33 = a1;
  v2 = sub_2170098A4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v31 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8708, &qword_21701A3E0);
  v6 = v5 - 8;
  MEMORY[0x28223BE20](v5);
  v8 = &v30 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8600, &qword_217020AD0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v30 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v30 - v16;
  type metadata accessor for SearchLandingPageView(0);
  v32 = v1;
  sub_216C0C900();
  (*(v3 + 104))(v14, *MEMORY[0x277CE0560], v2);
  __swift_storeEnumTagSinglePayload(v14, 0, 1, v2);
  v18 = *(v6 + 56);
  sub_216681B04(v17, v8, &qword_27CAB8600, &qword_217020AD0);
  sub_216681B04(v14, &v8[v18], &qword_27CAB8600, &qword_217020AD0);
  if (__swift_getEnumTagSinglePayload(v8, 1, v2) == 1)
  {
    sub_216697664(v14, &qword_27CAB8600, &qword_217020AD0);
    sub_216697664(v17, &qword_27CAB8600, &qword_217020AD0);
    if (__swift_getEnumTagSinglePayload(&v8[v18], 1, v2) == 1)
    {
      sub_216697664(v8, &qword_27CAB8600, &qword_217020AD0);
LABEL_9:
      v27 = v32;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF478, &qword_217033250);
      sub_2166D9530(qword_280E42FA0, &qword_27CABF478, &qword_217033250, &unk_217065494);
      sub_2170081B4();
      v21 = *(v27 + 24);

      v19 = sub_217008684();
      v20 = v28;
      type metadata accessor for MusicStackAuthority(0);
      sub_2169D4EA0(&qword_280E46D08, type metadata accessor for MusicStackAuthority, &protocol conformance descriptor for MusicStackAuthority);
      result = sub_217008CF4();
      goto LABEL_10;
    }

    goto LABEL_6;
  }

  sub_216681B04(v8, v11, &qword_27CAB8600, &qword_217020AD0);
  if (__swift_getEnumTagSinglePayload(&v8[v18], 1, v2) == 1)
  {
    sub_216697664(v14, &qword_27CAB8600, &qword_217020AD0);
    sub_216697664(v17, &qword_27CAB8600, &qword_217020AD0);
    (*(v3 + 8))(v11, v2);
LABEL_6:
    sub_216697664(v8, &qword_27CAB8708, &qword_21701A3E0);
    goto LABEL_7;
  }

  v24 = v31;
  (*(v3 + 32))(v31, &v8[v18], v2);
  sub_2169D4EA0(&qword_280E2A858, MEMORY[0x277CE0570], MEMORY[0x277CE0590]);
  v25 = sub_21700E494();
  v26 = *(v3 + 8);
  v26(v24, v2);
  sub_216697664(v14, &qword_27CAB8600, &qword_217020AD0);
  sub_216697664(v17, &qword_27CAB8600, &qword_217020AD0);
  v26(v11, v2);
  sub_216697664(v8, &qword_27CAB8600, &qword_217020AD0);
  if (v25)
  {
    goto LABEL_9;
  }

LABEL_7:
  v19 = 0;
  v20 = 0;
  v21 = 0;
  result = 0;
  v23 = 0;
LABEL_10:
  v29 = v33;
  *v33 = v19;
  v29[1] = v20;
  v29[2] = v21;
  v29[3] = result;
  v29[4] = v23;
  return result;
}

double sub_2169D3468@<D0>(uint64_t a2@<X8>)
{
  if ((sub_21700B304() & 1) != 0 && (v3 = [objc_opt_self() currentTraitCollection], v4 = objc_msgSend(v3, sel_userInterfaceIdiom), v3, v4 == 1))
  {
    v5 = 0;
    v6 = 1;
  }

  else
  {
    v5 = 1;
    v6 = 4;
  }

  result = 0.0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = v6;
  *(a2 + 33) = v5;
  return result;
}

uint64_t sub_2169D34FC(uint64_t a1)
{
  v2 = sub_2170098A4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v24[0] = v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8708, &qword_21701A3E0);
  v6 = v5 - 8;
  MEMORY[0x28223BE20](v5);
  v8 = v24 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB8600, &qword_217020AD0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = v24 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = v24 - v16;
  type metadata accessor for SearchLandingPageView(0);
  v24[1] = a1;
  sub_216C0C900();
  (*(v3 + 104))(v14, *MEMORY[0x277CE0560], v2);
  __swift_storeEnumTagSinglePayload(v14, 0, 1, v2);
  v18 = *(v6 + 56);
  sub_216681B04(v17, v8, &qword_27CAB8600, &qword_217020AD0);
  sub_216681B04(v14, &v8[v18], &qword_27CAB8600, &qword_217020AD0);
  if (__swift_getEnumTagSinglePayload(v8, 1, v2) != 1)
  {
    sub_216681B04(v8, v11, &qword_27CAB8600, &qword_217020AD0);
    if (__swift_getEnumTagSinglePayload(&v8[v18], 1, v2) != 1)
    {
      v20 = &v8[v18];
      v21 = v24[0];
      (*(v3 + 32))(v24[0], v20, v2);
      sub_2169D4EA0(&qword_280E2A858, MEMORY[0x277CE0570], MEMORY[0x277CE0590]);
      v22 = sub_21700E494();
      v23 = *(v3 + 8);
      v23(v21, v2);
      sub_216697664(v14, &qword_27CAB8600, &qword_217020AD0);
      sub_216697664(v17, &qword_27CAB8600, &qword_217020AD0);
      v23(v11, v2);
      result = sub_216697664(v8, &qword_27CAB8600, &qword_217020AD0);
      if ((v22 & 1) == 0)
      {
        return result;
      }

      goto LABEL_8;
    }

    sub_216697664(v14, &qword_27CAB8600, &qword_217020AD0);
    sub_216697664(v17, &qword_27CAB8600, &qword_217020AD0);
    (*(v3 + 8))(v11, v2);
    return sub_216697664(v8, &qword_27CAB8708, &qword_21701A3E0);
  }

  sub_216697664(v14, &qword_27CAB8600, &qword_217020AD0);
  sub_216697664(v17, &qword_27CAB8600, &qword_217020AD0);
  if (__swift_getEnumTagSinglePayload(&v8[v18], 1, v2) != 1)
  {
    return sub_216697664(v8, &qword_27CAB8708, &qword_21701A3E0);
  }

  sub_216697664(v8, &qword_27CAB8600, &qword_217020AD0);
LABEL_8:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF478, &qword_217033250);
  sub_2166D9530(qword_280E42FA0, &qword_27CABF478, &qword_217033250, &unk_217065494);
  sub_2170081B4();
  sub_2169D39A0();
}

void sub_2169D39A0()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF4C8, &qword_217033338);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v12 - v4;
  v6 = *(*v0 + 128);
  if (!*(v0 + v6))
  {
    if (qword_27CAB6158 != -1)
    {
      swift_once();
    }

    v7 = sub_217007CA4();
    __swift_project_value_buffer(v7, qword_27CB22AC8);
    v8 = sub_217007C84();
    v9 = sub_21700EDA4();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_216679000, v8, v9, "Starting observation.", v10, 2u);
      MEMORY[0x21CEA1440](v10, -1, -1);
    }

    sub_2170069A4();
    swift_allocObject();
    swift_weakInit();
    sub_2166D9530(&qword_27CABF4D0, &qword_27CABF4C8, &qword_217033338, MEMORY[0x277CBCEC8]);
    v11 = sub_217007E84();

    (*(v3 + 8))(v5, v2);
    *(v1 + v6) = v11;
  }
}

uint64_t sub_2169D3BF8()
{
  type metadata accessor for RecentSearchLockup(0);
  sub_2169D4EA0(qword_280E3E960, type metadata accessor for RecentSearchLockup, &unk_217025D44);
  sub_2169D4EA0(&qword_280E3E948, type metadata accessor for RecentSearchLockup, &unk_21702C08C);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_217007DE4();

  return v1;
}

uint64_t sub_2169D3D20(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF480, &qword_217033258);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v9 - v5;
  v7 = *(*v1 + 120);
  v9[0] = 0;
  v9[1] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABF488, qword_217033260);
  sub_217007DA4();
  (*(v4 + 32))(v1 + v7, v6, v3);
  *(v1 + *(*v1 + 128)) = 0;
  *(v1 + *(*v1 + 136)) = a1;
  return v1;
}

uint64_t type metadata accessor for SearchLandingPageView(uint64_t a1)
{
  result = qword_280E39E60;
  if (!qword_280E39E60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2169D3ED8(uint64_t a1)
{
  sub_2169D3FBC();
  if (v1 <= 0x3F)
  {
    type metadata accessor for ObjectGraph(319);
    if (v2 <= 0x3F)
    {
      sub_2169D400C(319);
      if (v3 <= 0x3F)
      {
        sub_2169D40B0(319);
        if (v4 <= 0x3F)
        {
          sub_2169D4144(319);
          if (v5 <= 0x3F)
          {
            sub_2167FCA6C(319);
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_2169D3FBC()
{
  if (!qword_280E43838)
  {
    v0 = sub_21700F164();
    if (!v1)
    {
      atomic_store(v0, &qword_280E43838);
    }
  }
}

void sub_2169D400C(uint64_t a1)
{
  if (!qword_280E2B410)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CABF478, &qword_217033250);
    sub_2166D9530(qword_280E42FA0, &qword_27CABF478, &qword_217033250, &unk_217065494);
    v1 = sub_2170081D4();
    if (!v2)
    {
      atomic_store(v1, &qword_280E2B410);
    }
  }
}

void sub_2169D40B0(uint64_t a1)
{
  if (!qword_280E2B348)
  {
    type metadata accessor for MusicUINetworkConnectivityMonitor(255);
    sub_2169D4EA0(&qword_280E464A8, type metadata accessor for MusicUINetworkConnectivityMonitor, &unk_21701F990);
    v1 = sub_2170086B4();
    if (!v2)
    {
      atomic_store(v1, &qword_280E2B348);
    }
  }
}

void sub_2169D4144(uint64_t a1)
{
  if (!qword_280E2ACB8)
  {
    type metadata accessor for SearchPagePresenter(255);
    sub_2169D4EA0(&qword_280E3D248, type metadata accessor for SearchPagePresenter, &unk_21705C040);
    v1 = sub_217008D04();
    if (!v2)
    {
      atomic_store(v1, &qword_280E2ACB8);
    }
  }
}