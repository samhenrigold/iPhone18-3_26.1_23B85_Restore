void sub_24E6F4280(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  v28 = a8;
  v29 = a3;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219020, &qword_24F94BAD8);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v28 - v15;
  v17 = [objc_opt_self() proxyForPlayer_];
  v18 = [v17 gameServicePrivate];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222F80, &qword_24F93DF10);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_24F93DE60;
  *(v19 + 56) = MEMORY[0x277D837D0];
  *(v19 + 32) = a6;
  *(v19 + 40) = a7;

  v20 = sub_24F92B588();

  (*(v13 + 16))(v16, a1, v12);
  v21 = (*(v13 + 80) + 16) & ~*(v13 + 80);
  v22 = (v14 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
  v23 = swift_allocObject();
  (*(v13 + 32))(v23 + v21, v16, v12);
  *(v23 + v22) = a2;
  v24 = v28;
  *(v23 + ((v22 + 15) & 0xFFFFFFFFFFFFFFF8)) = v28;
  aBlock[4] = sub_24E6F6488;
  aBlock[5] = v23;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24F3A0E9C;
  aBlock[3] = &block_descriptor_8;
  v25 = _Block_copy(aBlock);
  v26 = a2;
  v27 = v24;

  [v18 getGameStatsForPlayer:v29 bundleIDs:v20 handler:v25];
  _Block_release(v25);
  swift_unknownObjectRelease();
}

void sub_24E6F4530(unint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219020, &qword_24F94BAD8);
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v27 - v13;
  if (a2)
  {
    aBlock[0] = a2;
    v15 = a2;
    sub_24F92B788();
    return;
  }

  if (a1 >> 62)
  {
    if (sub_24F92C738())
    {
      goto LABEL_5;
    }

LABEL_10:
    aBlock[0] = MEMORY[0x277D84F90];
    sub_24F92B798();
    return;
  }

  if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_10;
  }

LABEL_5:
  if ((a1 & 0xC000000000000001) != 0)
  {
    v16 = MEMORY[0x253052270](0, a1, v12);
    goto LABEL_8;
  }

  if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v16 = *(a1 + 32);
LABEL_8:
    v27 = v16;
    v17 = [objc_allocWithZone(MEMORY[0x277D0C068]) initWithInternalRepresentation_];
    v28 = v17;
    v18 = [objc_opt_self() proxyForPlayer_];
    v19 = [v18 gameStatServicePrivate];

    v20 = [v17 gameDescriptor];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F223440, &qword_24F941F10);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_24F941C80;
    *(v21 + 32) = [a5 internal];
    sub_24E69A5C4(0, &qword_27F235850, 0x277D0C1C8);
    v22 = sub_24F92B588();

    (*(v11 + 16))(v14, a3, v10);
    v23 = (*(v11 + 80) + 24) & ~*(v11 + 80);
    v24 = swift_allocObject();
    *(v24 + 16) = a5;
    (*(v11 + 32))(v24 + v23, v14, v10);
    aBlock[4] = sub_24E6F6634;
    aBlock[5] = v24;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_24E6F5B9C;
    aBlock[3] = &block_descriptor_17;
    v25 = _Block_copy(aBlock);
    v26 = a5;

    [v19 loadAchievementsForGameWithProfileFetchOptions:v20 players:v22 includeUnreported:1 includeHidden:1 profileFetchOptions:1 withCompletionHandler:v25];
    _Block_release(v25);

    swift_unknownObjectRelease();
    return;
  }

  __break(1u);
}

uint64_t sub_24E6F48D8(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v8 = type metadata accessor for Achievement(0);
  v44 = *(v8 - 8);
  *&v9 = MEMORY[0x28223BE20](v8 - 8).n128_u64[0];
  v11 = (v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = [a3 referenceKey];
  v13 = sub_24F92B0D8();
  v15 = v14;

  if (!*(a1 + 16))
  {

    goto LABEL_13;
  }

  v16 = sub_24E76D644(v13, v15);
  v18 = v17;

  if ((v18 & 1) == 0)
  {
LABEL_13:
    v46 = a2;
    v26 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219020, &qword_24F94BAD8);
    return sub_24F92B788();
  }

  v19 = *(*(a1 + 56) + 8 * v16);
  if (v19 >> 62)
  {
    goto LABEL_33;
  }

  for (i = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_24F92C738())
  {
    v21 = MEMORY[0x277D84F90];
    if (i)
    {
      break;
    }

    v27 = MEMORY[0x277D84F90];
    if (MEMORY[0x277D84F90] >> 62)
    {
      goto LABEL_28;
    }

LABEL_15:
    v28 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v28)
    {
      goto LABEL_29;
    }

LABEL_16:
    v29 = v27;
    v41[1] = a4;
    v46 = v21;
    result = sub_24F457DCC(0, v28 & ~(v28 >> 63), 0);
    if (v28 < 0)
    {
      goto LABEL_35;
    }

    v30 = 0;
    v19 = 0;
    v31 = v46;
    v32 = v29;
    v42 = v29 & 0xFFFFFFFFFFFFFF8;
    v43 = v29 & 0xC000000000000001;
    v33 = v29;
    a4 = v28;
    while (1)
    {
      v34 = v30 + 1;
      if (__OFADD__(v30, 1))
      {
        break;
      }

      if (v43)
      {
        v35 = MEMORY[0x253052270](v30, v32);
      }

      else
      {
        if (v30 >= *(v42 + 16))
        {
          goto LABEL_32;
        }

        v35 = *(v32 + 8 * v30 + 32);
      }

      v36 = v35;
      v45 = v35;
      sub_24E6F4CE8(&v45, v11);

      v46 = v31;
      v37 = v11;
      v39 = v31[2];
      v38 = v31[3];
      if (v39 >= v38 >> 1)
      {
        sub_24F457DCC((v38 > 1), v39 + 1, 1);
        v31 = v46;
      }

      v31[2] = v39 + 1;
      sub_24E6F6734(v37, v31 + ((*(v44 + 80) + 32) & ~*(v44 + 80)) + *(v44 + 72) * v39, type metadata accessor for Achievement);
      ++v30;
      v11 = v37;
      v32 = v33;
      if (v34 == a4)
      {

        goto LABEL_30;
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    ;
  }

  v43 = v11;
  v46 = MEMORY[0x277D84F90];

  result = sub_24F92C978();
  if (i < 0)
  {
    __break(1u);
LABEL_35:
    __break(1u);
    return result;
  }

  v23 = 0;
  do
  {
    if ((v19 & 0xC000000000000001) != 0)
    {
      v24 = MEMORY[0x253052270](v23, v19);
    }

    else
    {
      v24 = *(v19 + 8 * v23 + 32);
    }

    v25 = v24;
    ++v23;
    [objc_allocWithZone(MEMORY[0x277D0BFB0]) initWithInternalRepresentation_];

    sub_24F92C948();
    sub_24F92C988();
    sub_24F92C998();
    sub_24F92C958();
  }

  while (i != v23);

  v27 = v46;
  v11 = v43;
  v21 = MEMORY[0x277D84F90];
  if (!(v46 >> 62))
  {
    goto LABEL_15;
  }

LABEL_28:
  v40 = v27;
  v28 = sub_24F92C738();
  v27 = v40;
  if (v28)
  {
    goto LABEL_16;
  }

LABEL_29:

  v31 = MEMORY[0x277D84F90];
LABEL_30:
  v46 = v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219020, &qword_24F94BAD8);
  return sub_24F92B798();
}

id sub_24E6F4CE8@<X0>(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v137 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219030, &qword_24F94BAE8);
  MEMORY[0x28223BE20](v3 - 8);
  v136 = v125 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530, &unk_24F93C6E0);
  MEMORY[0x28223BE20](v5 - 8);
  v131 = v125 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213FB0, &qword_24F93E6B0);
  MEMORY[0x28223BE20](v7 - 8);
  v144 = v125 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v132 = v125 - v10;
  MEMORY[0x28223BE20](v11);
  v135 = v125 - v12;
  v153 = sub_24F91F648();
  v159 = *(v153 - 8);
  MEMORY[0x28223BE20](v153);
  v152 = v125 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v151 = v125 - v15;
  v16 = type metadata accessor for PlayerWithTimeStamp(0);
  v149 = *(v16 - 8);
  v150 = v16;
  MEMORY[0x28223BE20](v16);
  v148 = (v125 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v18);
  v158 = v125 - v19;
  v20 = sub_24F91F4A8();
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v127 = v125 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v25 = v125 - v24;
  v26 = type metadata accessor for AchievementProgressStatus(0);
  MEMORY[0x28223BE20](v26);
  v143 = v125 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v29 = MEMORY[0x28223BE20](v28).n128_u64[0];
  v31 = (v125 - v30);
  v32 = *a1;
  v33 = [*a1 title];
  v139 = sub_24F92B0D8();
  v141 = v34;

  v35 = [v32 isCompleted];
  v36 = &selRef_achievedDescription;
  if (!v35)
  {
    v36 = &selRef_unachievedDescription;
  }

  v37 = [v32 *v36];
  v138 = sub_24F92B0D8();
  v140 = v38;

  v39 = [v32 game];
  v40 = [v39 internal];

  v41 = [v40 storeURL];
  sub_24F91F428();

  v134 = sub_24F91F398();
  v133 = v42;
  v129 = v21;
  v43 = *(v21 + 8);
  v126 = v25;
  v130 = v20;
  v125[1] = v21 + 8;
  v125[0] = v43;
  v43(v25, v20);
  v44 = [v32 isCompleted];
  v142 = v32;
  if (!v44)
  {
    [v32 percentComplete];
    if (v47 <= 0.0)
    {
      v50 = [v32 internal];
      v51 = [v50 isHidden];

      if (v51)
      {

        v138 = 0;
        v139 = 0;
        v140 = 0xE000000000000000;
        v141 = 0xE000000000000000;
      }

      v46 = v31;
      goto LABEL_13;
    }

    result = [v32 percentComplete];
    if ((*&v49 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v49 > -9.22337204e18)
    {
      if (v49 < 9.22337204e18)
      {
        v46 = v31;
        *v31 = v49;
LABEL_13:
        v32 = v142;
        goto LABEL_14;
      }

LABEL_51:
      __break(1u);
LABEL_52:
      __break(1u);
      return result;
    }

    __break(1u);
    goto LABEL_51;
  }

  v45 = [v32 lastReportedDate];
  sub_24F91F608();

  v46 = v31;
LABEL_14:
  v128 = v46;
  swift_storeEnumTagMultiPayload();
  v52 = [v32 friendsWhoHaveThis];
  sub_24E69A5C4(0, &qword_27F219038, 0x277D0BFC8);
  v53 = sub_24F92B5A8();

  if (v53 >> 62)
  {
    goto LABEL_33;
  }

  for (i = *((v53 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_24F92C738())
  {
    v55 = 0;
    v154 = v53 & 0xFFFFFFFFFFFFFF8;
    v155 = v53 & 0xC000000000000001;
    v145 = (v159 + 1);
    v56 = MEMORY[0x277D84F90];
    v146 = i;
    v147 = v53;
    while (1)
    {
      if (v155)
      {
        v57 = MEMORY[0x253052270](v55, v53);
      }

      else
      {
        if (v55 >= *(v154 + 16))
        {
          goto LABEL_32;
        }

        v57 = *(v53 + 8 * v55 + 32);
      }

      v58 = v57;
      v59 = v55 + 1;
      if (__OFADD__(v55, 1))
      {
        break;
      }

      v60 = [objc_allocWithZone(MEMORY[0x277CCAC78]) init];
      [v60 setUnitsStyle_];
      v61 = [v58 friendPlayer];
      if (v61)
      {
        v62 = v61;
        v157 = v55 + 1;
        v159 = v56;
        result = [v58 timestamp];
        v156 = v58;
        if (!result)
        {
          goto LABEL_52;
        }

        v63 = result;
        v64 = v151;
        sub_24F91F608();

        v65 = sub_24F91F578();
        v66 = *v145;
        v67 = v64;
        v68 = v153;
        (*v145)(v67, v153);
        v69 = v152;
        sub_24F91F618();
        v70 = sub_24F91F578();
        v66(v69, v68);
        v71 = [v60 localizedStringForDate:v65 relativeToDate:v70];

        v72 = sub_24F92B0D8();
        v74 = v73;

        v75 = v148;
        sub_24F3FAC70(v62, 0, 0, v148);

        v76 = (v75 + *(v150 + 20));
        *v76 = v72;
        v76[1] = v74;
        sub_24E6F6734(v75, v158, type metadata accessor for PlayerWithTimeStamp);
        v56 = v159;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v56 = sub_24E616F9C(0, v56[2] + 1, 1, v56);
        }

        v78 = v56[2];
        v77 = v56[3];
        i = v146;
        if (v78 >= v77 >> 1)
        {
          v56 = sub_24E616F9C((v77 > 1), v78 + 1, 1, v56);
        }

        v56[2] = v78 + 1;
        sub_24E6F6734(v158, v56 + ((*(v149 + 80) + 32) & ~*(v149 + 80)) + *(v149 + 72) * v78, type metadata accessor for PlayerWithTimeStamp);
        v53 = v147;
        v59 = v157;
      }

      else
      {
      }

      ++v55;
      if (v59 == i)
      {
        goto LABEL_35;
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    ;
  }

  v56 = MEMORY[0x277D84F90];
LABEL_35:
  v159 = v56;

  v79 = v142;
  v80 = [v142 imageURL];
  sub_24F92B0D8();

  v81 = v131;
  sub_24F91F488();

  v82 = v129;
  v83 = v130;
  if ((*(v129 + 48))(v81, 1, v130) == 1)
  {
    sub_24E601704(v81, &qword_27F228530, &unk_24F93C6E0);
    v84 = 1;
    v85 = v135;
    v86 = &off_279691000;
    v87 = v132;
  }

  else
  {
    v88 = v127;
    (*(v82 + 32))(v127, v81, v83);
    (*(v82 + 16))(v126, v88, v83);
    v87 = v132;
    sub_24F928978();
    (v125[0])(v88, v83);
    v84 = 0;
    v85 = v135;
    v86 = &off_279691000;
  }

  v89 = sub_24F9289E8();
  (*(*(v89 - 8) + 56))(v87, v84, 1, v89);
  sub_24E6009C8(v87, v85, &qword_27F213FB0, &qword_24F93E6B0);
  v90 = [v79 identifier];
  if (v90)
  {
    v91 = v90;
    v157 = sub_24F92B0D8();
    v158 = v92;
  }

  else
  {
    v157 = 0;
    v158 = 0xE000000000000000;
  }

  v93 = v128;
  sub_24E6F66C4(v85, v144);
  sub_24E6C059C(v93, v143);
  v94 = [v79 v86[265]];
  v95 = [v94 rarityPercent];

  if (v95)
  {
    [v95 doubleValue];
    v97 = v96;
  }

  else
  {
    v97 = 0;
  }

  v98 = [v79 v86[265]];
  v99 = [v98 activityIdentifier];

  v100 = sub_24F92B0D8();
  v155 = v101;
  v156 = v100;

  v102 = [v79 v86[265]];
  v103 = v79;
  v104 = [v102 activityProperties];

  v105 = sub_24F92AE38();
  sub_24E9E19FC(v105);
  v107 = v106;

  if (!v107)
  {
    v107 = sub_24E6086DC(MEMORY[0x277D84F90]);
  }

  v108 = v95 == 0;
  v109 = [v103 v86[265]];
  v110 = [v109 releaseState];

  sub_24E601704(v85, &qword_27F213FB0, &qword_24F93E6B0);
  sub_24E6C0600(v93);
  v111 = sub_24F920818();
  v112 = *(v111 - 8);
  v113 = MEMORY[0x277D0CEF0];
  if (v110 != 2)
  {
    v113 = MEMORY[0x277D0CEE8];
  }

  v114 = v136;
  (*(*(v111 - 8) + 104))(v136, *v113, v111);
  (*(v112 + 56))(v114, 0, 1, v111);
  v115 = v137;
  v116 = v158;
  *v137 = v157;
  v115[1] = v116;
  v117 = v141;
  v115[2] = v139;
  v115[3] = v117;
  v118 = v140;
  v115[4] = v138;
  v115[5] = v118;
  v119 = type metadata accessor for Achievement(0);
  sub_24E6009C8(v144, v115 + v119[7], &qword_27F213FB0, &qword_24F93E6B0);
  sub_24E6F6734(v143, v115 + v119[8], type metadata accessor for AchievementProgressStatus);
  v120 = v115 + v119[9];
  *v120 = v97;
  v120[8] = v108;
  *(v115 + v119[10]) = v159;
  v121 = (v115 + v119[11]);
  v122 = v133;
  *v121 = v134;
  v121[1] = v122;
  v123 = (v115 + v119[12]);
  v124 = v155;
  *v123 = v156;
  v123[1] = v124;
  *(v115 + v119[13]) = v107;
  return sub_24E6009C8(v114, v115 + v119[14], &qword_27F219030, &qword_24F94BAE8);
}

void sub_24E6F5B9C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219028, &qword_24F94BAE0);
  v5 = sub_24F92AE38();

  v6 = a3;
  v4(v5, v6);
}

uint64_t sub_24E6F5C58(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_24E67D244;

  return sub_24E6F5D08(a2);
}

uint64_t sub_24E6F5D08(uint64_t a1)
{
  *(v1 + 32) = *a1;
  *(v1 + 40) = *(a1 + 8);
  *(v1 + 56) = *(a1 + 24);
  return MEMORY[0x2822009F8](sub_24E6F5D3C, 0, 0);
}

uint64_t sub_24E6F5D3C()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = swift_task_alloc();
  v0[8] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = swift_task_alloc();
  v0[9] = v4;
  v5 = sub_24E69A5C4(0, &qword_27F216FC8, 0x277D0C170);
  *v4 = v0;
  v4[1] = sub_24E6F5E48;

  return MEMORY[0x2822008A0](v0 + 2, 0, 0, 0xD000000000000013, 0x800000024FA45A60, sub_24E69A5A8, v3, v5);
}

uint64_t sub_24E6F5E48()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_24E6F61FC;
  }

  else
  {

    v2 = sub_24E6F5F64;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24E6F5F64()
{
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  v10 = *(v0 + 32);
  v3 = *(v0 + 16);
  *(v0 + 88) = v3;
  v4 = [v3 internal];
  *(v0 + 96) = v4;
  v5 = [objc_allocWithZone(MEMORY[0x277D0C138]) initWithInternalRepresentation_];
  *(v0 + 104) = v5;
  v6 = swift_task_alloc();
  *(v0 + 112) = v6;
  *(v6 + 16) = v5;
  *(v6 + 24) = v4;
  *(v6 + 32) = v10;
  *(v6 + 48) = v2;
  *(v6 + 56) = v1;
  *(v6 + 64) = v3;
  v7 = swift_task_alloc();
  *(v0 + 120) = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219018, &qword_24F94BAD0);
  *v7 = v0;
  v7[1] = sub_24E6F60E0;

  return MEMORY[0x2822008A0](v0 + 24, 0, 0, 0xD000000000000017, 0x800000024FA460C0, sub_24E6F63BC, v6, v8);
}

uint64_t sub_24E6F60E0()
{
  *(*v1 + 128) = v0;

  if (v0)
  {
    v2 = sub_24E6F62D4;
  }

  else
  {

    v2 = sub_24E6F6260;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24E6F61FC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24E6F6260()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 88);

  v3 = *(v0 + 24);
  v4 = *(v0 + 8);

  return v4(v3);
}

uint64_t sub_24E6F62D4()
{
  v2 = *(v0 + 88);
  v1 = *(v0 + 96);

  v3 = *(v0 + 8);

  return v3();
}

unint64_t sub_24E6F6358()
{
  result = qword_27F219010;
  if (!qword_27F219010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F219010);
  }

  return result;
}

uint64_t sub_24E6F63D0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219020, &qword_24F94BAD8);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

void sub_24E6F6488(unint64_t a1, void *a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219020, &qword_24F94BAD8) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v2 + v7);
  v9 = *(v2 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));

  sub_24E6F4530(a1, a2, v2 + v6, v8, v9);
}

uint64_t block_copy_helper_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24E6F6564()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219020, &qword_24F94BAD8);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_24E6F6634(uint64_t a1, void *a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219020, &qword_24F94BAD8) - 8);
  v6 = *(v2 + 16);
  v7 = v2 + ((*(v5 + 80) + 24) & ~*(v5 + 80));

  return sub_24E6F48D8(a1, a2, v6, v7);
}

uint64_t sub_24E6F66C4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213FB0, &qword_24F93E6B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24E6F6734(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24E6F67C0(uint64_t a1)
{
  v2 = sub_24E6F694C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24E6F67FC(uint64_t a1)
{
  v2 = sub_24E6F694C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t GameKitAuthenticationDataIntent.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219040, &qword_24F94BB10);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24E6F694C();
  sub_24F92D128();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_24E6F694C()
{
  result = qword_27F219048;
  if (!qword_27F219048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F219048);
  }

  return result;
}

uint64_t sub_24E6F6A10(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219040, &qword_24F94BB10);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24E6F694C();
  sub_24F92D128();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_24E6F6B48()
{
  result = qword_27F219050;
  if (!qword_27F219050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F219050);
  }

  return result;
}

unint64_t sub_24E6F6BA0()
{
  result = qword_27F219058;
  if (!qword_27F219058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F219058);
  }

  return result;
}

uint64_t sub_24E6F6C68(uint64_t a1)
{
  v1 = sub_24F927618();
  v3 = v2;
  if (qword_27F211948 != -1)
  {
    swift_once();
  }

  v10 = xmmword_27F2543E0;
  v4 = qword_27F2543F0;
  v5 = qword_27F2543F8;
  v6 = sub_24E609BDC(&unk_2861BD840);
  v7 = sub_24E609BF0(&unk_2861BD8B0);
  v8 = sub_24E609CD8(&unk_2861BD948);
  xmmword_27F39A5F0 = 5uLL;
  *&xmmword_27F39A600 = v1;
  *(&xmmword_27F39A600 + 1) = v3;
  xmmword_27F39A610 = v10;
  *&xmmword_27F39A620 = v4;
  *(&xmmword_27F39A620 + 1) = v5;
  unk_27F39A630 = v6;
  qword_27F39A638 = v7;
  unk_27F39A640 = v8;
  byte_27F39A648 = 1;
}

uint64_t sub_24E6F6D68(double a1)
{
  v1 = sub_24F9275F8();
  v3 = v2;
  if (qword_27F211948 != -1)
  {
    swift_once();
  }

  v10 = xmmword_27F2543E0;
  v4 = qword_27F2543F0;
  v5 = qword_27F2543F8;
  v6 = sub_24E609BDC(&unk_2861BD9B8);
  v7 = sub_24E609BF0(&unk_2861BDA28);
  v8 = sub_24E609CD8(&unk_2861BDAC0);
  *&xmmword_27F39A650 = 5;
  *(&xmmword_27F39A650 + 1) = 0x4050000000000000;
  *&xmmword_27F39A660 = v1;
  *(&xmmword_27F39A660 + 1) = v3;
  xmmword_27F39A670 = v10;
  *&xmmword_27F39A680 = v4;
  *(&xmmword_27F39A680 + 1) = v5;
  unk_27F39A690 = v6;
  qword_27F39A698 = v7;
  unk_27F39A6A0 = v8;
  byte_27F39A6A8 = 1;
}

uint64_t sub_24E6F6E6C(uint64_t a1)
{
  v1 = sub_24F927618();
  v3 = v2;
  if (qword_27F211958 != -1)
  {
    swift_once();
  }

  v10 = xmmword_27F254420;
  v4 = qword_27F254430;
  v5 = qword_27F254438;
  v6 = sub_24E609BDC(&unk_2861BDB30);
  v7 = sub_24E609BF0(&unk_2861BDB80);
  v8 = sub_24E609CD8(&unk_2861BDBE8);
  xmmword_27F39A6B0 = 3uLL;
  *&xmmword_27F39A6C0 = v1;
  *(&xmmword_27F39A6C0 + 1) = v3;
  xmmword_27F39A6D0 = v10;
  *&xmmword_27F39A6E0 = v4;
  *(&xmmword_27F39A6E0 + 1) = v5;
  unk_27F39A6F0 = v6;
  qword_27F39A6F8 = v7;
  unk_27F39A700 = v8;
  byte_27F39A708 = 0;
}

uint64_t sub_24E6F6F68(uint64_t a1)
{
  v1 = sub_24F927618();
  v3 = v2;
  if (qword_27F211968 != -1)
  {
    swift_once();
  }

  v10 = xmmword_27F254460;
  v4 = qword_27F254470;
  v5 = qword_27F254478;
  v6 = sub_24E609BDC(&unk_2861BD7A8);
  v7 = sub_24E609BF0(&unk_2861BD7D8);
  v8 = sub_24E609CD8(&unk_2861BD810);
  xmmword_27F39A710 = 1uLL;
  *&xmmword_27F39A720 = v1;
  *(&xmmword_27F39A720 + 1) = v3;
  xmmword_27F39A730 = v10;
  *&xmmword_27F39A740 = v4;
  *(&xmmword_27F39A740 + 1) = v5;
  unk_27F39A750 = v6;
  qword_27F39A758 = v7;
  unk_27F39A760 = v8;
  byte_27F39A768 = 0;
}

uint64_t sub_24E6F7064(uint64_t a1)
{
  v1 = sub_24F927618();
  v3 = v2;
  if (qword_27F211948 != -1)
  {
    swift_once();
  }

  v10 = xmmword_27F2543E0;
  v4 = qword_27F2543F0;
  v5 = qword_27F2543F8;
  v6 = sub_24E609BDC(&unk_2861BDC58);
  v7 = sub_24E609BF0(&unk_2861BDCC8);
  v8 = sub_24E609CD8(&unk_2861BDD60);
  xmmword_27F39A770 = 5uLL;
  *&xmmword_27F39A780 = v1;
  *(&xmmword_27F39A780 + 1) = v3;
  xmmword_27F39A790 = v10;
  *&xmmword_27F39A7A0 = v4;
  *(&xmmword_27F39A7A0 + 1) = v5;
  unk_27F39A7B0 = v6;
  qword_27F39A7B8 = v7;
  unk_27F39A7C0 = v8;
  byte_27F39A7C8 = 0;
}

double sub_24E6F7160@<D0>(unsigned __int8 a1@<W1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for CardLayoutMetrics(0);
  MEMORY[0x28223BE20](v6);
  v8 = (&v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (a1 > 2u)
  {
    if (a1 == 3)
    {
      sub_24F4E9558(a2, v8);
      goto LABEL_21;
    }

    if (a1 == 4)
    {
      if (qword_27F2112F0 != -1)
      {
        swift_once();
      }

      v9 = qword_27F39E610;
    }

    else
    {
      if (qword_27F211308 != -1)
      {
        swift_once();
      }

      v9 = qword_27F39E658;
    }

LABEL_20:
    v10 = __swift_project_value_buffer(v6, v9);
    sub_24E701D44(v10, v8, type metadata accessor for CardLayoutMetrics);
    goto LABEL_21;
  }

  if (!a1)
  {
    if (qword_27F211300 != -1)
    {
      swift_once();
    }

    v9 = qword_27F39E640;
    goto LABEL_20;
  }

  if (a1 != 1)
  {
    if (qword_27F2112F8 != -1)
    {
      swift_once();
    }

    v9 = qword_27F39E628;
    goto LABEL_20;
  }

  sub_24F4E9E44(a2, v8);
LABEL_21:
  sub_24E701C34(v8, a3, type metadata accessor for CardLayoutMetrics);
  *(a3 + *(v6 + 60)) = 0x4030000000000000;
  v11 = (a3 + *(v6 + 56));
  result = 0.0;
  *v11 = xmmword_24F94BC80;
  v11[1] = xmmword_24F94BC80;
  return result;
}

uint64_t sub_24E6F7380@<X0>(int a1@<W0>, unint64_t a2@<X1>, unsigned int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v216 = a4;
  v244 = a3;
  LODWORD(v241) = a1;
  v238 = a6;
  v232 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214A20, &unk_24F94D670);
  MEMORY[0x28223BE20](v232);
  v201 = &v183 - v8;
  v190 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219068, &unk_24F94BCF0);
  MEMORY[0x28223BE20](v190);
  v192 = (&v183 - v9);
  v191 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219070, &qword_24F94FF00);
  MEMORY[0x28223BE20](v191);
  v187 = (&v183 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v11);
  v188 = &v183 - v12;
  v205 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219078, &qword_24F94BD00);
  MEMORY[0x28223BE20](v205);
  v193 = &v183 - v13;
  v202 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219080, &qword_24F94BD08);
  MEMORY[0x28223BE20](v202);
  v204 = (&v183 - v14);
  v215 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219088, &qword_24F94BD10);
  MEMORY[0x28223BE20](v215);
  v206 = &v183 - v15;
  v219 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219090, &qword_24F94BD18);
  MEMORY[0x28223BE20](v219);
  v220 = &v183 - v16;
  v228 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219098, &unk_24F94BD20);
  MEMORY[0x28223BE20](v228);
  v221 = &v183 - v17;
  v195 = type metadata accessor for ColorGroup(0);
  v194 = *(v195 - 8);
  MEMORY[0x28223BE20](v195);
  v186 = &v183 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = &v183 - v20;
  v218 = type metadata accessor for CardContentBackgroundStyle(0);
  MEMORY[0x28223BE20](v218);
  v185 = &v183 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v200 = &v183 - v24;
  MEMORY[0x28223BE20](v25);
  v203 = &v183 - v26;
  v198 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F10, &unk_24F93BE10);
  MEMORY[0x28223BE20](v198);
  v199 = &v183 - v27;
  v214 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2190A0, &qword_24F94BD30);
  MEMORY[0x28223BE20](v214);
  v29 = &v183 - v28;
  v234 = sub_24F9289E8();
  v243 = *(v234 - 8);
  MEMORY[0x28223BE20](v234);
  *&v235 = &v183 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v230 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2190A8, &qword_24F94BD38);
  MEMORY[0x28223BE20](v230);
  v231 = &v183 - v31;
  v224 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2190B0, &qword_24F94BD40);
  MEMORY[0x28223BE20](v224);
  v226 = &v183 - v32;
  v210 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2190B8, &qword_24F94BD48);
  MEMORY[0x28223BE20](v210);
  v212 = &v183 - v33;
  v225 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2190C0, &qword_24F94BD50);
  MEMORY[0x28223BE20](v225);
  v213 = &v183 - v34;
  v229 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2190C8, &qword_24F94BD58);
  MEMORY[0x28223BE20](v229);
  v227 = &v183 - v35;
  v211 = type metadata accessor for SearchCardConfiguration.CardVisual(0);
  MEMORY[0x28223BE20](v211);
  v196 = (&v183 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v37);
  v197 = &v183 - v38;
  v237 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2190D0, &unk_24F94BD60);
  v236 = *(v237 - 8);
  MEMORY[0x28223BE20](v237);
  v233 = &v183 - v39;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213FB8, &unk_24F93C010);
  MEMORY[0x28223BE20](v40 - 8);
  v209 = &v183 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v42);
  v44 = &v183 - v43;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2190D8, &unk_24F94BD70);
  MEMORY[0x28223BE20](v45 - 8);
  v47 = &v183 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v48);
  v184 = &v183 - v49;
  MEMORY[0x28223BE20](v50);
  v242 = &v183 - v51;
  v217 = a5;
  sub_24E6F99F8(a2, &v183 - v51);
  v223 = type metadata accessor for SearchCard(0);
  v52 = a2 + v223[8];
  v53 = type metadata accessor for CommonCardAttributes(0);
  v54 = v53;
  v55 = (v52 + *(v53 + 36));
  v56 = *v55;
  v207 = v55[1];
  if (v56)
  {
    v57 = 1;
  }

  else
  {
    sub_24E60169C(v52 + *(v53 + 32), v44, &qword_27F213FB8, &unk_24F93C010);
    v58 = type metadata accessor for GSKVideo(0);
    v59 = *(*(v58 - 8) + 48);
    LODWORD(v222) = 1;
    v60 = v59(v44, 1, v58);
    sub_24E601704(v44, &qword_27F213FB8, &unk_24F93C010);
    if (v60 != 1)
    {
      goto LABEL_8;
    }

    v61 = *(a2 + v223[9]);
    if (v61 >> 62)
    {
      v62 = sub_24F92C738();
    }

    else
    {
      v62 = *((v61 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v57 = v62 != 0;
  }

  LODWORD(v222) = v57;
LABEL_8:
  v208 = v52;
  v189 = v47;
  if (v244 > 2u)
  {
    if (v244 == 3)
    {
      if (qword_27F20FDD0 != -1)
      {
        swift_once();
      }

      v63 = &xmmword_27F39A650;
    }

    else if (v244 == 4)
    {
      if (qword_27F20FDC8 != -1)
      {
        swift_once();
      }

      v63 = &xmmword_27F39A5F0;
    }

    else
    {
      if (qword_27F20FDE8 != -1)
      {
        swift_once();
      }

      v63 = &xmmword_27F39A770;
    }
  }

  else
  {
    if (!v244 || v244 == 1)
    {
      if (qword_27F20FDE0 != -1)
      {
        goto LABEL_95;
      }

      goto LABEL_12;
    }

    if (qword_27F20FDD8 != -1)
    {
      swift_once();
    }

    v63 = &xmmword_27F39A6B0;
  }

LABEL_27:
  *&v250[25] = *(v63 + 73);
  v64 = v63[4];
  *v250 = v63[3];
  *&v250[16] = v64;
  v65 = v63[2];
  v248 = v63[1];
  v249 = v65;
  v247 = *v63;
  v66 = v250[40];
  v240 = *&v250[24];
  v67 = v65;
  v68 = *v250;
  v239 = *&v250[8];
  v69 = v248;
  v70 = *(&v247 + 1);
  v71 = v247;
  sub_24E701364(&v247, &v246);
  v247 = __PAIR128__(v70, v71);
  v248 = v69;
  v249 = v67;
  *v250 = v68;
  *&v250[8] = v239;
  *&v250[24] = v240;
  v250[40] = v66;
  v72 = v241;
  if ((sub_24E70139C(v241, a2, v244) & 1) == 0)
  {
    sub_24E601704(v242, &qword_27F2190D8, &unk_24F94BD70);
    sub_24E701614(&v247);
    return (*(v236 + 56))(v238, 1, 1, v237);
  }

  if (v72 > 0xAu)
  {
    if (v72 != 11)
    {
      if (v72 == 12)
      {
        if (v244)
        {
          v103 = v189;
          sub_24E60169C(v242, v189, &qword_27F2190D8, &unk_24F94BD70);
          v104 = (*(v194 + 48))(v103, 1, v195);
          v105 = v206;
          if (v104 == 1)
          {
            sub_24E601704(v103, &qword_27F2190D8, &unk_24F94BD70);
            v106 = sub_24F926C98();
            v107 = sub_24F925808();
            v108 = v192;
            *v192 = v106;
            *(v108 + 8) = v107;
            swift_storeEnumTagMultiPayload();
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214CB8, &unk_24F93E7C0);
            sub_24E602068(&qword_27F219118, &qword_27F219070, &qword_24F94FF00, MEMORY[0x277CE11A8]);
            sub_24E63D098();
            v109 = v193;
            sub_24F924E28();
          }

          else
          {
            v167 = v186;
            sub_24E701C34(v103, v186, type metadata accessor for ColorGroup);
            v168 = v244 != 5;
            v169 = sub_24F927618();
            v170 = v187;
            *v187 = v169;
            *(v170 + 8) = v171;
            v172 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219120, &unk_24F94BDB0);
            sub_24F594F18(v168, v167, v170 + *(v172 + 44));
            v173 = v188;
            sub_24E6009C8(v170, v188, &qword_27F219070, &qword_24F94FF00);
            sub_24E60169C(v173, v192, &qword_27F219070, &qword_24F94FF00);
            swift_storeEnumTagMultiPayload();
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214CB8, &unk_24F93E7C0);
            sub_24E602068(&qword_27F219118, &qword_27F219070, &qword_24F94FF00, MEMORY[0x277CE11A8]);
            sub_24E63D098();
            v109 = v193;
            sub_24F924E28();
            sub_24E601704(v173, &qword_27F219070, &qword_24F94FF00);
            sub_24E701C9C(v167, type metadata accessor for ColorGroup);
          }

          v139 = v238;
          v140 = v237;
          sub_24E60169C(v109, v204, &qword_27F219078, &qword_24F94BD00);
          swift_storeEnumTagMultiPayload();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214CB8, &unk_24F93E7C0);
          sub_24E63D098();
          sub_24E7018B8();
          sub_24F924E28();
          sub_24E601704(v109, &qword_27F219078, &qword_24F94BD00);
        }

        else
        {
          v146 = sub_24F926C98();
          v147 = sub_24F925808();
          v148 = v204;
          *v204 = v146;
          *(v148 + 8) = v147;
          swift_storeEnumTagMultiPayload();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214CB8, &unk_24F93E7C0);
          sub_24E63D098();
          sub_24E7018B8();
          v105 = v206;
          sub_24F924E28();
          v139 = v238;
          v140 = v237;
        }

        sub_24E60169C(v105, v220, &qword_27F219088, &qword_24F94BD10);
        swift_storeEnumTagMultiPayload();
        sub_24E7017E4(&qword_27F214AE0, type metadata accessor for CardContentBackgroundStyle, &unk_24F960438);
        sub_24E70182C();
        v174 = v221;
        sub_24F924E28();
        sub_24E60169C(v174, v226, &qword_27F219098, &unk_24F94BD20);
        swift_storeEnumTagMultiPayload();
        sub_24E7016FC();
        sub_24E701B80(&qword_27F219100, &qword_27F219098, &unk_24F94BD20, sub_24E70182C);
        v175 = v227;
        sub_24F924E28();
        sub_24E601704(v174, &qword_27F219098, &unk_24F94BD20);
        sub_24E60169C(v175, v231, &qword_27F2190C8, &qword_24F94BD58);
        swift_storeEnumTagMultiPayload();
        sub_24E701644();
        sub_24E701970();
        v98 = v233;
        sub_24F924E28();
        sub_24E701614(&v247);
        sub_24E601704(v175, &qword_27F2190C8, &qword_24F94BD58);
        sub_24E601704(v105, &qword_27F219088, &qword_24F94BD10);
        goto LABEL_92;
      }

      goto LABEL_38;
    }

    if (v244 <= 1u)
    {
      v139 = v238;
      v140 = v237;
      v98 = v233;
      v141 = v200;
      if (v244)
      {
        v159 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214D08, &unk_24F94D6F0);
        (*(*(v159 - 8) + 56))(v141, 2, 5, v159);
LABEL_91:
        v179 = v141;
        v180 = v203;
        sub_24E701C34(v179, v203, type metadata accessor for CardContentBackgroundStyle);
        sub_24E701D44(v180, v220, type metadata accessor for CardContentBackgroundStyle);
        swift_storeEnumTagMultiPayload();
        sub_24E7017E4(&qword_27F214AE0, type metadata accessor for CardContentBackgroundStyle, &unk_24F960438);
        sub_24E70182C();
        v181 = v221;
        sub_24F924E28();
        sub_24E60169C(v181, v226, &qword_27F219098, &unk_24F94BD20);
        swift_storeEnumTagMultiPayload();
        sub_24E7016FC();
        sub_24E701B80(&qword_27F219100, &qword_27F219098, &unk_24F94BD20, sub_24E70182C);
        v182 = v227;
        sub_24F924E28();
        sub_24E601704(v181, &qword_27F219098, &unk_24F94BD20);
        sub_24E60169C(v182, v231, &qword_27F2190C8, &qword_24F94BD58);
        swift_storeEnumTagMultiPayload();
        sub_24E701644();
        sub_24E701970();
        sub_24F924E28();
        sub_24E701614(&v247);
        sub_24E601704(v182, &qword_27F2190C8, &qword_24F94BD58);
        sub_24E701C9C(v180, type metadata accessor for CardContentBackgroundStyle);
        goto LABEL_92;
      }
    }

    else
    {
      v139 = v238;
      v140 = v237;
      v98 = v233;
      v141 = v200;
      if (v244 - 2 < 2)
      {
        v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214D08, &unk_24F94D6F0);
        if (v222)
        {
          v143 = 5;
        }

        else
        {
          v143 = 1;
        }

        (*(*(v142 - 8) + 56))(v141, v143, 5, v142);
        goto LABEL_91;
      }

      if (v244 == 4)
      {
        v160 = v21;
        v161 = v184;
        sub_24E60169C(v242, v184, &qword_27F2190D8, &unk_24F94BD70);
        v162 = v194;
        v163 = v195;
        if ((*(v194 + 48))(v161, 1, v195) == 1)
        {
          sub_24E601704(v161, &qword_27F2190D8, &unk_24F94BD70);
          v164 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214D08, &unk_24F94D6F0);
          v165 = v185;
          (*(*(v164 - 8) + 56))(v185, 1, 5, v164);
        }

        else
        {
          v176 = v162;
          sub_24E701C34(v161, v160, type metadata accessor for ColorGroup);
          v177 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214D08, &unk_24F94D6F0);
          v178 = *(v177 + 48);
          v165 = v185;
          sub_24E701C34(v160, v185, type metadata accessor for ColorGroup);
          (*(v176 + 56))(v165, 0, 1, v163);
          *(v165 + v178) = 1;
          (*(*(v177 - 8) + 56))(v165, 0, 5, v177);
        }

        sub_24E701C34(v165, v141, type metadata accessor for CardContentBackgroundStyle);
        goto LABEL_91;
      }
    }

    v166 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214D08, &unk_24F94D6F0);
    (*(*(v166 - 8) + 56))(v141, 1, 5, v166);
    goto LABEL_91;
  }

  if (v72 != 2)
  {
    if (v72 == 8)
    {
      v74 = v223[11];
      v234 = *(a2 + v223[10]);
      v241 = *(a2 + v74);
      LODWORD(v243) = *(a2 + v74 + 8);
      v75 = (a2 + v223[12]);
      v76 = v75[1];
      v77 = (a2 + v223[13]);
      *&v239 = v77[1];
      v78 = v214;
      v79 = *(v214 + 48);
      *&v73 = *v77;
      v240 = v73;
      *&v73 = *v75;
      v235 = v73;

      sub_24E91E34C(8, a2, v244, v216, v217, v29 + v79);
      v80 = sub_24F9251C8();
      v81 = *(v198 + 36);
      v82 = *MEMORY[0x277CE13B8];
      v83 = sub_24F927748();
      v84 = v199;
      (*(*(v83 - 8) + 104))(&v199[v81], v82, v83);
      *v84 = v80;
      sub_24E602068(&qword_27F214428, &qword_27F213F10, &unk_24F93BE10, MEMORY[0x277CE03C0]);
      v85 = sub_24F925C58();
      v87 = v86;
      v89 = v88;
      v91 = v90;
      sub_24E601704(v84, &qword_27F213F10, &unk_24F93BE10);
      *(v29 + *(v78 + 56)) = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214D90, &qword_24F93E920);
      swift_storeEnumTagMultiPayload();
      v92 = v241;
      *v29 = v234;
      *(v29 + 8) = v92;
      *&v93 = v235;
      *(&v93 + 1) = v76;
      *(v29 + 16) = v243;
      *&v94 = v240;
      *(&v94 + 1) = v239;
      *(v29 + 40) = v94;
      *(v29 + 24) = v93;
      v95 = v29 + *(v78 + 52);
      *v95 = v85;
      *(v95 + 8) = v87;
      *(v95 + 16) = v89 & 1;
      *(v95 + 24) = v91;
      sub_24E60169C(v29, v212, &qword_27F2190A0, &qword_24F94BD30);
      swift_storeEnumTagMultiPayload();
      sub_24E7017E4(&qword_27F2190F0, type metadata accessor for SearchCardConfiguration.CardVisual, &unk_24F94BED0);
      sub_24E602068(&qword_27F2190F8, &qword_27F2190A0, &qword_24F94BD30, &unk_24F94BE80);
      v96 = v213;
      sub_24F924E28();
      sub_24E60169C(v96, v226, &qword_27F2190C0, &qword_24F94BD50);
      swift_storeEnumTagMultiPayload();
      sub_24E7016FC();
      sub_24E701B80(&qword_27F219100, &qword_27F219098, &unk_24F94BD20, sub_24E70182C);
      v97 = v227;
      sub_24F924E28();
      sub_24E601704(v96, &qword_27F2190C0, &qword_24F94BD50);
      sub_24E60169C(v97, v231, &qword_27F2190C8, &qword_24F94BD58);
      swift_storeEnumTagMultiPayload();
      sub_24E701644();
      sub_24E701970();
      v98 = v233;
      sub_24F924E28();
      sub_24E701614(&v247);
      sub_24E601704(v97, &qword_27F2190C8, &qword_24F94BD58);
      v99 = v29;
      v100 = &qword_27F2190A0;
      v101 = &qword_24F94BD30;
LABEL_39:
      sub_24E601704(v99, v100, v101);
LABEL_77:
      v139 = v238;
      v140 = v237;
LABEL_92:
      sub_24E601704(v242, &qword_27F2190D8, &unk_24F94BD70);
      sub_24E6009C8(v98, v139, &qword_27F2190D0, &unk_24F94BD60);
      return (*(v236 + 56))(v139, 0, 1, v140);
    }

LABEL_38:
    v110 = v201;
    sub_24E91E34C(v72, a2, v244, v216, v217, v201);
    sub_24E60169C(v110, v231, &qword_27F214A20, &unk_24F94D670);
    swift_storeEnumTagMultiPayload();
    sub_24E701644();
    sub_24E701970();
    v98 = v233;
    sub_24F924E28();
    sub_24E701614(&v247);
    v99 = v110;
    v100 = &qword_27F214A20;
    v101 = &unk_24F94D670;
    goto LABEL_39;
  }

  v221 = v56;
  sub_24E60169C(v208 + *(v54 + 32), v209, &qword_27F213FB8, &unk_24F93C010);
  v111 = *(a2 + v223[9]);
  if (v111 >> 62)
  {
    v112 = sub_24F92C738();
  }

  else
  {
    v112 = *((v111 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v98 = v233;
  v29 = v234;
  v113 = v235;
  v220 = v54;
  if (!v112)
  {
    v144 = v221;
    v145 = v207;
    sub_24E701D04(v221, v207);
    v114 = MEMORY[0x277D84F90];
LABEL_76:
    v149 = v211;
    v150 = v196;
    sub_24E60169C(v208 + *(v220 + 40), v196 + *(v211 + 28), &qword_27F213FB0, &qword_24F93E6B0);
    *v150 = v144;
    v150[1] = v145;
    sub_24E6009C8(v209, v150 + v149[5], &qword_27F213FB8, &unk_24F93C010);
    *(v150 + v149[6]) = v114;
    v151 = (v150 + v149[8]);
    v152 = *v250;
    v151[2] = v249;
    v151[3] = v152;
    v151[4] = *&v250[16];
    *(v151 + 73) = *&v250[25];
    v153 = v248;
    *v151 = v247;
    v151[1] = v153;
    *(v150 + v149[9]) = v244;
    v154 = v150 + v149[10];
    type metadata accessor for CardSafeArea(0);
    sub_24E701364(&v247, &v246);
    sub_24E7017E4(&qword_27F214D10, type metadata accessor for CardSafeArea, &unk_24F95FFC8);
    *v154 = sub_24F923598();
    v154[8] = v155 & 1;
    v156 = v197;
    sub_24E701C34(v150, v197, type metadata accessor for SearchCardConfiguration.CardVisual);
    sub_24E701D44(v156, v212, type metadata accessor for SearchCardConfiguration.CardVisual);
    swift_storeEnumTagMultiPayload();
    sub_24E7017E4(&qword_27F2190F0, type metadata accessor for SearchCardConfiguration.CardVisual, &unk_24F94BED0);
    sub_24E602068(&qword_27F2190F8, &qword_27F2190A0, &qword_24F94BD30, &unk_24F94BE80);
    v157 = v213;
    sub_24F924E28();
    sub_24E60169C(v157, v226, &qword_27F2190C0, &qword_24F94BD50);
    swift_storeEnumTagMultiPayload();
    sub_24E7016FC();
    sub_24E701B80(&qword_27F219100, &qword_27F219098, &unk_24F94BD20, sub_24E70182C);
    v158 = v227;
    sub_24F924E28();
    sub_24E601704(v157, &qword_27F2190C0, &qword_24F94BD50);
    sub_24E60169C(v158, v231, &qword_27F2190C8, &qword_24F94BD58);
    swift_storeEnumTagMultiPayload();
    sub_24E701644();
    sub_24E701970();
    sub_24F924E28();
    sub_24E701614(&v247);
    sub_24E601704(v158, &qword_27F2190C8, &qword_24F94BD58);
    sub_24E701C9C(v156, type metadata accessor for SearchCardConfiguration.CardVisual);
    goto LABEL_77;
  }

  sub_24E701D04(v221, v207);
  v246 = MEMORY[0x277D84F90];
  sub_24F457BB4(0, v112 & ~(v112 >> 63), 0);
  if ((v112 & 0x8000000000000000) == 0)
  {
    v56 = 0;
    v114 = v246;
    v241 = v111 & 0xC000000000000001;
    *&v239 = *MEMORY[0x277CEE210];
    *&v240 = v243 + 32;
    v115 = MEMORY[0x277D84F98];
    v223 = v111;
    v222 = v112;
    while (1)
    {
      if (v241)
      {
        v21 = MEMORY[0x253052270](v56, v111);
        v116 = *(v21 + 6);
        if (!v116)
        {
          goto LABEL_53;
        }
      }

      else
      {
        v21 = *&v111[2 * v56 + 8];

        v116 = *(v21 + 6);
        if (!v116)
        {
LABEL_53:

          goto LABEL_66;
        }
      }

      v117 = v239;
      v118 = v116;
      v119 = [v118 CGColor];
      if (v119)
      {
        v120 = v119;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v245 = v115;
        v54 = MEMORY[0x277D84F98];
        a2 = sub_24E7728E8();
        v123 = *(MEMORY[0x277D84F98] + 16);
        v124 = (v122 & 1) == 0;
        v125 = v123 + v124;
        if (__OFADD__(v123, v124))
        {
          __break(1u);
LABEL_94:
          __break(1u);
LABEL_95:
          swift_once();
LABEL_12:
          v63 = &xmmword_27F39A710;
          goto LABEL_27;
        }

        v29 = v122;
        if (*(MEMORY[0x277D84F98] + 24) >= v125)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_24E8ADF98();
          }
        }

        else
        {
          sub_24E899898(v125, isUniquelyReferenced_nonNull_native);
          v126 = sub_24E7728E8();
          if ((v29 & 1) != (v127 & 1))
          {
            goto LABEL_99;
          }

          a2 = v126;
        }

        v113 = v235;
        v54 = v245;
        if (v29)
        {
          v132 = *(v245 + 56);
          v133 = *(v132 + 8 * a2);
          *(v132 + 8 * a2) = v120;

          v118 = v133;
        }

        else
        {
          *(v245 + 8 * (a2 >> 6) + 64) |= 1 << a2;
          *(*(v54 + 48) + 8 * a2) = v117;
          *(*(v54 + 56) + 8 * a2) = v120;
          v134 = *(v54 + 16);
          v135 = __OFADD__(v134, 1);
          v136 = v134 + 1;
          if (v135)
          {
            goto LABEL_94;
          }

          *(v54 + 16) = v136;
        }

        v29 = v234;
        v111 = v223;
        v112 = v222;
      }

      else
      {
        v128 = sub_24E7728E8();
        v112 = v222;
        if (v129)
        {
          v130 = v128;
          v131 = swift_isUniquelyReferenced_nonNull_native();
          v245 = v115;
          if ((v131 & 1) == 0)
          {
            sub_24E8ADF98();
            v115 = v245;
          }

          sub_24EB52DDC(v130, v115);
        }

        v111 = v223;
      }

LABEL_66:

      sub_24F928948();

      v246 = v114;
      v138 = *(v114 + 16);
      v137 = *(v114 + 24);
      if (v138 >= v137 >> 1)
      {
        sub_24F457BB4((v137 > 1), v138 + 1, 1);
        v114 = v246;
      }

      ++v56;
      *(v114 + 16) = v138 + 1;
      (*(v243 + 32))(v114 + ((*(v243 + 80) + 32) & ~*(v243 + 80)) + *(v243 + 72) * v138, v113, v29);
      v115 = MEMORY[0x277D84F98];
      if (v112 == v56)
      {
        v98 = v233;
        v144 = v221;
        v145 = v207;
        goto LABEL_76;
      }
    }
  }

  __break(1u);
LABEL_99:
  type metadata accessor for AMSMediaArtworkColorKind(0);
  result = sub_24F92CF88();
  __break(1u);
  return result;
}

uint64_t sub_24E6F99F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v81 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213FB0, &qword_24F93E6B0);
  MEMORY[0x28223BE20](v3 - 8);
  v77 = &v72 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213FB8, &unk_24F93C010);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v72 - v6;
  v80 = type metadata accessor for GSKVideo(0);
  v8 = *(v80 - 8);
  MEMORY[0x28223BE20](v80);
  v76 = &v72 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v73 = &v72 - v11;
  v12 = sub_24F9289E8();
  v78 = *(v12 - 8);
  v79 = v12;
  MEMORY[0x28223BE20](v12);
  v75 = &v72 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v72 = &v72 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2190D8, &unk_24F94BD70);
  MEMORY[0x28223BE20](v16 - 8);
  v74 = &v72 - v17;
  v18 = type metadata accessor for MixedMediaItem.ContentType(0);
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = &v72 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v24 = &v72 - v23;
  MEMORY[0x28223BE20](v25);
  v27 = &v72 - v26;
  v28 = a1 + *(type metadata accessor for SearchCard(0) + 32);
  v29 = type metadata accessor for CommonCardAttributes(0);
  v30 = (v28 + v29[9]);
  if (*v30)
  {
    v31 = v30[1];
    if (*(v31 + 16))
    {
      v32 = sub_24E76DCB8(0);
      if (v33)
      {
        sub_24E701D44(*(v31 + 56) + *(v19 + 72) * v32, v24, type metadata accessor for MixedMediaItem.ContentType);
        sub_24E701C34(v24, v27, type metadata accessor for MixedMediaItem.ContentType);
        sub_24E701D44(v27, v21, type metadata accessor for MixedMediaItem.ContentType);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v34 = v73;
          sub_24E701C34(v21, v73, type metadata accessor for GSKVideo);
          v35 = sub_24F9289A8();
          v36 = v74;
          if (v35)
          {
            v37 = qword_27F20FEE0;
            v38 = v35;
            if (v37 != -1)
            {
              v70 = v38;
              swift_once();
              v38 = v70;
            }

            v39 = v38;
            v40 = sub_24F926BD8();
            ColorGrouping.colorGroup(for:)(v40);

            sub_24E701C9C(v34, type metadata accessor for GSKVideo);
LABEL_25:
            sub_24E701C9C(v27, type metadata accessor for MixedMediaItem.ContentType);
            return sub_24E6009C8(v36, v81, &qword_27F2190D8, &unk_24F94BD70);
          }

          sub_24E701C9C(v34, type metadata accessor for GSKVideo);
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F219128, &qword_24F94BDF0);

          v59 = v78;
          v58 = v79;
          v60 = v72;
          (*(v78 + 32))(v72, v21, v79);
          v61 = sub_24F9289A8();
          v36 = v74;
          if (v61)
          {
            v62 = qword_27F20FEE0;
            v63 = v61;
            if (v62 != -1)
            {
              v71 = v63;
              swift_once();
              v63 = v71;
            }

            v64 = v63;
            v65 = sub_24F926BD8();
            ColorGrouping.colorGroup(for:)(v65);

            (*(v59 + 8))(v60, v58);
            goto LABEL_25;
          }

          (*(v59 + 8))(v60, v58);
        }

        sub_24E701C9C(v27, type metadata accessor for MixedMediaItem.ContentType);
        v67 = type metadata accessor for ColorGroup(0);
        (*(*(v67 - 8) + 56))(v36, 1, 1, v67);
        return sub_24E6009C8(v36, v81, &qword_27F2190D8, &unk_24F94BD70);
      }
    }
  }

  sub_24E60169C(v28 + v29[8], v7, &qword_27F213FB8, &unk_24F93C010);
  if ((*(v8 + 48))(v7, 1, v80) == 1)
  {
    sub_24E601704(v7, &qword_27F213FB8, &unk_24F93C010);
    v41 = v77;
    sub_24E60169C(v28 + v29[10], v77, &qword_27F213FB0, &qword_24F93E6B0);
    v43 = v78;
    v42 = v79;
    if ((*(v78 + 48))(v41, 1, v79) == 1)
    {
      sub_24E601704(v41, &qword_27F213FB0, &qword_24F93E6B0);
LABEL_27:
      v66 = type metadata accessor for ColorGroup(0);
      return (*(*(v66 - 8) + 56))(v81, 1, 1, v66);
    }

    v52 = v75;
    (*(v43 + 32))(v75, v41, v42);
    v53 = sub_24F9289A8();
    if (!v53)
    {
      (*(v43 + 8))(v52, v42);
      goto LABEL_27;
    }

    v54 = qword_27F20FEE0;
    v55 = v53;
    if (v54 != -1)
    {
      v69 = v55;
      swift_once();
      v55 = v69;
    }

    v56 = v55;
    v57 = sub_24F926BD8();
    ColorGrouping.colorGroup(for:)(v57);

    return (*(v43 + 8))(v52, v42);
  }

  else
  {
    v44 = v7;
    v45 = v76;
    sub_24E701C34(v44, v76, type metadata accessor for GSKVideo);
    v46 = sub_24F9289A8();
    if (!v46)
    {
      sub_24E701C9C(v45, type metadata accessor for GSKVideo);
      goto LABEL_27;
    }

    v47 = qword_27F20FEE0;
    v48 = v46;
    if (v47 != -1)
    {
      v68 = v48;
      swift_once();
      v48 = v68;
    }

    v49 = v48;
    v50 = sub_24F926BD8();
    ColorGrouping.colorGroup(for:)(v50);

    return sub_24E701C9C(v45, type metadata accessor for GSKVideo);
  }
}

uint64_t sub_24E6FA354@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v28[1] = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219450, &qword_24F94C148);
  MEMORY[0x28223BE20](v4);
  v6 = v28 - v5;
  v7 = *(a1 + 16);
  v28[0] = *(v7 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = v28 - v12;
  v14 = sub_24F924E38();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = v28 - v16;
  if (*(*v2 + 16) || *(v2 + 16) != 1 || *(v2 + 32) || *(v2 + 48))
  {
    *v6 = sub_24F9249A8();
    *(v6 + 1) = 0;
    v6[16] = 0;
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219458, &qword_24F94C150);
    v19 = *(a1 + 24);
    sub_24E6FA6A4(v2, v7, v19, &v6[*(v18 + 44)]);
    sub_24F925A08();
    v20 = sub_24F9258E8();

    KeyPath = swift_getKeyPath();
    v22 = &v6[*(v4 + 36)];
    *v22 = KeyPath;
    v22[1] = v20;
    v23 = sub_24E703FA4();
    sub_24ECCCC98(v6, v7, v4, v19, v23);
    sub_24E601704(v6, &qword_27F219450, &qword_24F94C148);
  }

  else
  {
    v19 = *(a1 + 24);
    sub_24E7896B8();
    sub_24E7896B8();
    v26 = sub_24E703FA4();
    sub_24ECCCBA0(v10, v7, v4, v19, v26);
    v27 = *(v28[0] + 8);
    v27(v10, v7);
    v27(v13, v7);
  }

  v24 = sub_24E703FA4();
  v28[2] = v19;
  v28[3] = v24;
  swift_getWitnessTable();
  sub_24E7896B8();
  return (*(v15 + 8))(v17, v14);
}

uint64_t sub_24E6FA6A4@<X0>(double *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v177 = a3;
  v176 = a2;
  v183 = a4;
  v181 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219478, &qword_24F94C198);
  v180 = *(v181 - 8);
  MEMORY[0x28223BE20](v181);
  v170 = &v162 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219480, &qword_24F94C1A0);
  MEMORY[0x28223BE20](v6 - 8);
  v182 = &v162 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v186 = &v162 - v9;
  v184 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219488, &qword_24F94C1A8);
  v10 = *(v184 - 8);
  MEMORY[0x28223BE20](v184);
  v164 = &v162 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219490, &qword_24F94C1B0);
  MEMORY[0x28223BE20](v12 - 8);
  v163 = &v162 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v162 = (&v162 - v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219498, &qword_24F94C1B8);
  MEMORY[0x28223BE20](v16 - 8);
  v179 = &v162 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v162 - v19;
  v193 = type metadata accessor for PlayerAvatarView.Overlay(0);
  v168 = *(v193 - 8);
  MEMORY[0x28223BE20](v193);
  v189 = &v162 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  KeyPath = type metadata accessor for PlayerAvatarView(0);
  v192 = *(KeyPath - 8);
  MEMORY[0x28223BE20](KeyPath);
  v169 = &v162 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2194A0, &unk_24F94C1C0);
  v24 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v175 = &v162 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22DF80, &unk_24F942E50);
  MEMORY[0x28223BE20](v26 - 8);
  v191 = &v162 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v198 = (&v162 - v29);
  v30 = type metadata accessor for Player(0);
  v31 = *(v30 - 8);
  MEMORY[0x28223BE20](v30 - 8);
  v197 = (&v162 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0));
  v204 = type metadata accessor for PlayerAvatar(0);
  v196 = *(v204 - 8);
  MEMORY[0x28223BE20](v204);
  v199 = &v162 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34);
  v190 = &v162 - v35;
  MEMORY[0x28223BE20](v36);
  v38 = (&v162 - v37);
  v172 = type metadata accessor for OverlappingPlayerAvatarsView(0);
  MEMORY[0x28223BE20](v172);
  v174 = &v162 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v40);
  v42 = &v162 - v41;
  MEMORY[0x28223BE20](v43);
  v173 = &v162 - v44;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2194A8, &qword_24F94C1D0);
  MEMORY[0x28223BE20](v45 - 8);
  v178 = &v162 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = MEMORY[0x28223BE20](v47);
  v50 = &v162 - v48;
  v185 = a1;
  v51 = *a1;
  v52 = *(v51 + 16);
  v187 = v20;
  v188 = &v162 - v48;
  if (v52)
  {
    v165 = v42;
    v166 = v24;
    v167 = v23;
    v171 = v10;
    v211 = MEMORY[0x277D84F90];
    sub_24F457BF8(0, v52, 0);
    v53 = v211;
    v54 = v51 + ((*(v31 + 80) + 32) & ~*(v31 + 80));
    v195 = *(v31 + 72);
    v55 = v38;
    do
    {
      v203 = v53;
      v56 = v197;
      sub_24E701D44(v54, v197, type metadata accessor for Player);
      v57 = v56[3];
      v202 = v56[2];

      sub_24E701C9C(v56, type metadata accessor for Player);
      v58 = type metadata accessor for PlayerAvatar.Overlay(0);
      v194 = *(v58 - 8);
      v59 = *(v194 + 56);
      v60 = v198;
      v59(v198, 1, 1, v58);
      v210 = 0;
      v208 = 0u;
      v209 = 0u;
      v61 = v204;
      v62 = *(v204 + 20);
      v201 = v58;
      v59((v55 + v62), 1, 1, v58);
      v63 = v55 + *(v61 + 24);
      v207 = 0;
      memset(v206, 0, sizeof(v206));
      *v63 = 0u;
      *(v63 + 16) = 0u;
      *(v63 + 32) = 0;
      sub_24E61DA68(v206, v63, qword_27F21B590, &unk_24F93BE30);
      *v55 = v202;
      v55[1] = v57;
      v53 = v203;
      sub_24E61DA68(v60, v55 + v62, &qword_27F22DF80, &unk_24F942E50);
      sub_24E61DA68(&v208, v63, qword_27F21B590, &unk_24F93BE30);
      v211 = v53;
      v65 = *(v53 + 16);
      v64 = *(v53 + 24);
      if (v65 >= v64 >> 1)
      {
        sub_24F457BF8((v64 > 1), v65 + 1, 1);
        v53 = v211;
      }

      *(v53 + 16) = v65 + 1;
      v66 = (*(v196 + 80) + 32) & ~*(v196 + 80);
      v67 = *(v196 + 72);
      sub_24E701C34(v55, v53 + v66 + v67 * v65, type metadata accessor for PlayerAvatar);
      v54 += v195;
      --v52;
    }

    while (v52);
    v68 = *(v53 + 16);
    if (v68)
    {
      *&v206[0] = MEMORY[0x277D84F90];
      sub_24F457C7C(0, v68, 0);
      v198 = (v194 + 48);
      v197 = (v168 + 56);
      v203 = v53;
      v69 = v53 + v66;
      v70 = *&v206[0];
      v71 = &qword_27F22DF80;
      v72 = &unk_24F942E50;
      v73 = v169;
      do
      {
        v202 = v70;
        v74 = v72;
        v75 = v71;
        v76 = v190;
        sub_24E701D44(v69, v190, type metadata accessor for PlayerAvatar);
        v77 = v199;
        sub_24E701D44(v76, v199, type metadata accessor for PlayerAvatar);

        sub_24F928948();
        v78 = v76;
        v71 = v75;
        v72 = v74;
        sub_24E701C9C(v78, type metadata accessor for PlayerAvatar);
        type metadata accessor for PlayerAvatarView.AvatarType(0);
        swift_storeEnumTagMultiPayload();
        v79 = v77 + *(v204 + 20);
        v80 = v191;
        sub_24E60169C(v79, v191, v71, v74);
        v81 = *(KeyPath + 20);
        if ((*v198)(v80, 1, v201) == 1)
        {
          sub_24E601704(v80, v71, v74);
          v82 = 1;
          v83 = v193;
        }

        else
        {
          v84 = v80;
          v85 = v189;
          sub_24E701C34(v84, v189, type metadata accessor for PlayerAvatar.Overlay);
          v83 = v193;
          v86 = v85 + *(v193 + 20);
          *v86 = 0;
          *(v86 + 8) = 1;
          v87 = (v85 + *(v83 + 24));
          *v87 = 0;
          v87[1] = 0;
          sub_24E701C34(v85, v73 + v81, type metadata accessor for PlayerAvatarView.Overlay);
          v82 = 0;
        }

        (*v197)(v73 + v81, v82, 1, v83);
        v88 = KeyPath;
        v89 = v73 + *(KeyPath + 24);
        v90 = v199;
        sub_24E60169C(v199 + *(v204 + 24), &v208, qword_27F24EC90, &unk_24F93C1D0);
        sub_24E701C9C(v90, type metadata accessor for PlayerAvatar);
        v91 = v209;
        *v89 = v208;
        *(v89 + 16) = v91;
        *(v89 + 32) = v210;
        *(v73 + *(v88 + 28)) = 7;
        v70 = v202;
        *&v206[0] = v202;
        v93 = *(v202 + 2);
        v92 = *(v202 + 3);
        if (v93 >= v92 >> 1)
        {
          sub_24F457C7C((v92 > 1), v93 + 1, 1);
          v70 = *&v206[0];
        }

        *(v70 + 2) = v93 + 1;
        sub_24E701C34(v73, v70 + ((*(v192 + 80) + 32) & ~*(v192 + 80)) + *(v192 + 72) * v93, type metadata accessor for PlayerAvatarView);
        v69 += v67;
        --v68;
      }

      while (v68);
    }

    else
    {

      v70 = MEMORY[0x277D84F90];
    }

    v97 = v185;
    *&v208 = 0x4010000000000000;
    sub_24E66ED98();
    v98 = v165;
    sub_24F9237C8();
    v99 = v172;
    *(v98 + *(v172 + 20)) = v70;
    v100 = v98 + *(v99 + 24);
    *v100 = 3;
    *(v100 + 8) = 0;
    *(v98 + *(v99 + 28)) = 0;
    v101 = v173;
    sub_24E701C34(v98, v173, type metadata accessor for OverlappingPlayerAvatarsView);
    v103 = v97 + *(type metadata accessor for SearchCardConfiguration.SubtitleTextStack(0, v176, v177, v102) + 52);
    v104 = *v103;
    v105 = *(v103 + 1);
    v106 = v103[16];
    v107 = *(v103 + 3);
    v108 = v174;
    sub_24E701D44(v101, v174, type metadata accessor for OverlappingPlayerAvatarsView);
    v109 = v175;
    sub_24E701D44(v108, v175, type metadata accessor for OverlappingPlayerAvatarsView);
    v110 = v109 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2194B0, &qword_24F94C1D8) + 48);
    sub_24E5FD138(v104, v105, v106);

    sub_24E5FD138(v104, v105, v106);

    sub_24E701C9C(v101, type metadata accessor for OverlappingPlayerAvatarsView);
    *v110 = v104;
    *(v110 + 8) = v105;
    *(v110 + 16) = v106;
    *(v110 + 24) = v107;
    v111 = v105;
    v94 = v97;
    sub_24E600B40(v104, v111, v106);

    sub_24E701C9C(v108, type metadata accessor for OverlappingPlayerAvatarsView);
    v50 = v188;
    sub_24E6009C8(v109, v188, &qword_27F2194A0, &unk_24F94C1C0);
    (*(v166 + 56))(v50, 0, 1, v167);
    v95 = v186;
    v20 = v187;
    v96 = v184;
    v10 = v171;
    if (v94[2])
    {
      goto LABEL_25;
    }
  }

  else
  {
    (*(v24 + 56))(&v162 - v48, 1, 1, v23, v49);
    v94 = v185;
    v95 = v186;
    v96 = v184;
    if (v185[2])
    {
LABEL_25:
      v132 = 1;
      goto LABEL_26;
    }
  }

  v112 = v94[1];
  if (v112 <= 0.0)
  {
    goto LABEL_25;
  }

  v113 = *(v94 + 4);
  if (!v113)
  {
    goto LABEL_25;
  }

  v114 = *(v94 + 3);
  v115 = HIBYTE(v113) & 0xF;
  if ((v113 & 0x2000000000000000) == 0)
  {
    v115 = v114 & 0xFFFFFFFFFFFFLL;
  }

  if (v115)
  {
    v116 = sub_24F924978();
    v117 = v162;
    *v162 = v116;
    *(v117 + 8) = 0x4000000000000000;
    *(v117 + 16) = 0;
    v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2194C0, &qword_24F94C218);
    sub_24E6FBB84(v114, v113, v117 + *(v118 + 44), v112);
    v120 = v94 + *(type metadata accessor for SearchCardConfiguration.SubtitleTextStack(0, v176, v177, v119) + 52);
    v121 = *v120;
    v122 = *(v120 + 1);
    v171 = v10;
    v123 = v120[16];
    v124 = *(v120 + 3);
    v125 = v163;
    sub_24E60169C(v117, v163, &qword_27F219490, &qword_24F94C1B0);
    v126 = v164;
    sub_24E60169C(v125, v164, &qword_27F219490, &qword_24F94C1B0);
    v127 = v126 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2194C8, &qword_24F94C220) + 48);
    sub_24E5FD138(v121, v122, v123);

    sub_24E5FD138(v121, v122, v123);

    sub_24E601704(v117, &qword_27F219490, &qword_24F94C1B0);
    *v127 = v121;
    *(v127 + 8) = v122;
    *(v127 + 16) = v123;
    *(v127 + 24) = v124;
    v128 = v121;
    v129 = v122;
    v95 = v186;
    v130 = v184;
    v131 = v123;
    v10 = v171;
    sub_24E600B40(v128, v129, v131);
    v94 = v185;

    sub_24E601704(v125, &qword_27F219490, &qword_24F94C1B0);
    sub_24E6009C8(v126, v20, &qword_27F219488, &qword_24F94C1A8);
    v96 = v130;
    v132 = 0;
  }

  else
  {
    v132 = 1;
  }

  v50 = v188;
LABEL_26:
  (*(v10 + 56))(v20, v132, 1, v96);
  v133 = *(v94 + 6);
  if (!v133)
  {
    goto LABEL_31;
  }

  v134 = HIBYTE(v133) & 0xF;
  if ((v133 & 0x2000000000000000) == 0)
  {
    v134 = v94[5] & 0xFFFFFFFFFFFFLL;
  }

  if (v134)
  {
    *&v208 = v94[5];
    *(&v208 + 1) = v133;
    sub_24E600AEC();

    v135 = sub_24F925E18();
    v202 = v136;
    v203 = v135;
    v138 = v137;
    v204 = v139;
    KeyPath = swift_getKeyPath();
    sub_24F925A08();
    v201 = sub_24F9258E8();

    v140 = swift_getKeyPath();
    v141 = v138 & 1;
    LOBYTE(v211) = v138 & 1;
    v205 = 0;
    v142 = sub_24F9251C8();
    v143 = v181;
    v144 = v95;
    v145 = v170;
    v146 = v20;
    v147 = &v170[*(v181 + 36)];
    v148 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F10, &unk_24F93BE10) + 36);
    v149 = *MEMORY[0x277CE13B8];
    v150 = sub_24F927748();
    (*(*(v150 - 8) + 104))(&v147[v148], v149, v150);
    *v147 = v142;
    v20 = v146;
    v95 = v144;
    v50 = v188;
    v151 = v202;
    *v145 = v203;
    *(v145 + 8) = v151;
    *(v145 + 16) = v141;
    *(v145 + 17) = v208;
    *(v145 + 20) = *(&v208 + 3);
    v152 = KeyPath;
    *(v145 + 24) = v204;
    *(v145 + 32) = v152;
    *(v145 + 40) = 1;
    *(v145 + 48) = 0;
    *(v145 + 49) = v206[0];
    *(v145 + 52) = *(v206 + 3);
    v153 = v201;
    *(v145 + 56) = v140;
    *(v145 + 64) = v153;
    sub_24E6009C8(v145, v95, &qword_27F219478, &qword_24F94C198);
    (*(v180 + 56))(v95, 0, 1, v143);
  }

  else
  {
LABEL_31:
    (*(v180 + 56))(v95, 1, 1, v181);
  }

  v154 = v50;
  v155 = v178;
  sub_24E60169C(v154, v178, &qword_27F2194A8, &qword_24F94C1D0);
  v156 = v20;
  v157 = v179;
  sub_24E60169C(v156, v179, &qword_27F219498, &qword_24F94C1B8);
  v158 = v182;
  sub_24E60169C(v95, v182, &qword_27F219480, &qword_24F94C1A0);
  v159 = v183;
  sub_24E60169C(v155, v183, &qword_27F2194A8, &qword_24F94C1D0);
  v160 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2194B8, &qword_24F94C1E0);
  sub_24E60169C(v157, v159 + *(v160 + 48), &qword_27F219498, &qword_24F94C1B8);
  sub_24E60169C(v158, v159 + *(v160 + 64), &qword_27F219480, &qword_24F94C1A0);
  sub_24E601704(v95, &qword_27F219480, &qword_24F94C1A0);
  sub_24E601704(v187, &qword_27F219498, &qword_24F94C1B8);
  sub_24E601704(v188, &qword_27F2194A8, &qword_24F94C1D0);
  sub_24E601704(v158, &qword_27F219480, &qword_24F94C1A0);
  sub_24E601704(v157, &qword_27F219498, &qword_24F94C1B8);
  return sub_24E601704(v155, &qword_27F2194A8, &qword_24F94C1D0);
}

uint64_t sub_24E6FBB84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  v40 = a2;
  v41 = a1;
  v45 = a3;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2194D0, &qword_24F94C228) - 8;
  MEMORY[0x28223BE20](v43);
  v44 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v36 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2194D8, &qword_24F94C230);
  v10 = v9 - 8;
  MEMORY[0x28223BE20](v9);
  v42 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v36 - v13;
  v15 = sub_24F925A08();
  v16 = sub_24F9251C8();
  v17 = &v14[*(v10 + 44)];
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F10, &unk_24F93BE10);
  v18 = *(v39 + 36);
  v38 = *MEMORY[0x277CE13B8];
  v19 = v38;
  v20 = sub_24F927748();
  v21 = *(*(v20 - 8) + 104);
  v21(&v17[v18], v19, v20);
  *v17 = v16;
  *v14 = a4;
  *(v14 + 1) = 5;
  v14[16] = 0;
  *(v14 + 3) = 0x4008000000000000;
  *(v14 + 4) = v15;
  v46 = v41;
  v47 = v40;
  sub_24E600AEC();

  v40 = sub_24F925E18();
  v41 = v22;
  v37 = v23;
  LOBYTE(v16) = v24;
  KeyPath = swift_getKeyPath();
  sub_24F925A08();
  v36 = sub_24F9258E8();

  v26 = swift_getKeyPath();
  LOBYTE(v15) = v16 & 1;
  v49 = v16 & 1;
  v48 = 0;
  v27 = sub_24F9251C8();
  v28 = &v8[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219478, &qword_24F94C198) + 36)];
  v21(&v28[*(v39 + 36)], v38, v20);
  *v28 = v27;
  v29 = v37;
  *v8 = v40;
  *(v8 + 1) = v29;
  v8[16] = v15;
  *(v8 + 17) = v46;
  *(v8 + 5) = *(&v46 + 3);
  *(v8 + 3) = v41;
  *(v8 + 4) = KeyPath;
  *(v8 + 5) = 1;
  v8[48] = 0;
  *(v8 + 49) = *v50;
  *(v8 + 13) = *&v50[3];
  v30 = v36;
  *(v8 + 7) = v26;
  *(v8 + 8) = v30;
  v31 = v42;
  *&v8[*(v43 + 44)] = 257;
  sub_24E60169C(v14, v31, &qword_27F2194D8, &qword_24F94C230);
  v32 = v44;
  sub_24E60169C(v8, v44, &qword_27F2194D0, &qword_24F94C228);
  v33 = v45;
  sub_24E60169C(v31, v45, &qword_27F2194D8, &qword_24F94C230);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2194E0, &qword_24F94C238);
  sub_24E60169C(v32, v33 + *(v34 + 48), &qword_27F2194D0, &qword_24F94C228);
  sub_24E601704(v8, &qword_27F2194D0, &qword_24F94C228);
  sub_24E601704(v14, &qword_27F2194D8, &qword_24F94C230);
  sub_24E601704(v32, &qword_27F2194D0, &qword_24F94C228);
  return sub_24E601704(v31, &qword_27F2194D8, &qword_24F94C230);
}

uint64_t sub_24E6FBF60(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219530, &unk_24F94C440);
  MEMORY[0x28223BE20](v2);
  v3 = sub_24E6B7C74(*(a1 + 8), *a1);
  v5 = v4;
  v7 = v6;
  v9 = v8;
  if ((v8 & 1) == 0)
  {

LABEL_3:
    sub_24E6B88C8(v3, v5, v7, v9);
    v11 = v10;
LABEL_10:
    swift_unknownObjectRelease();
    goto LABEL_11;
  }

  sub_24F92CEF8();
  swift_unknownObjectRetain_n();

  v12 = swift_dynamicCastClass();
  if (!v12)
  {
    swift_unknownObjectRelease();
    v12 = MEMORY[0x277D84F90];
  }

  v13 = *(v12 + 16);

  if (__OFSUB__(v9 >> 1, v7))
  {
    __break(1u);
    goto LABEL_13;
  }

  if (v13 != (v9 >> 1) - v7)
  {
LABEL_13:
    swift_unknownObjectRelease();
    goto LABEL_3;
  }

  v11 = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  if (!v11)
  {
    v11 = MEMORY[0x277D84F90];
    goto LABEL_10;
  }

LABEL_11:
  v20[0] = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219538, &qword_24F950560);
  sub_24E602068(&qword_27F219540, &qword_27F219538, &qword_24F950560, MEMORY[0x277D83980]);
  sub_24F921BA8();
  swift_getKeyPath();
  v14 = swift_allocObject();
  v15 = *(a1 + 80);
  *(v14 + 80) = *(a1 + 64);
  *(v14 + 96) = v15;
  *(v14 + 112) = *(a1 + 96);
  v16 = *(a1 + 16);
  *(v14 + 16) = *a1;
  *(v14 + 32) = v16;
  v17 = *(a1 + 48);
  *(v14 + 48) = *(a1 + 32);
  *(v14 + 64) = v17;
  v18 = swift_allocObject();
  *(v18 + 16) = sub_24E7045D0;
  *(v18 + 24) = v14;
  sub_24E704678(a1, v20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219548, &qword_24F94C470);
  sub_24E602068(&qword_27F219550, &qword_27F219530, &unk_24F94C440, MEMORY[0x277D7EC38]);
  sub_24E7046B0();
  return sub_24F927228();
}

uint64_t sub_24E6FC24C@<X0>(uint64_t result@<X0>, uint64_t *a2@<X2>, uint64_t a3@<X8>)
{
  v4 = result;
  v6 = *(a2 + 3);
  v50 = *(a2 + 1);
  v51 = v6;
  v7 = *(a2 + 7);
  v52 = *(a2 + 5);
  v53 = v7;
  v8 = a2[10];
  v9 = a2[11];
  if (*(a2[9] + 16))
  {
    result = sub_24E7728CC(result);
  }

  v10 = 0;
  v11 = 0;
  if (*(v9 + 16))
  {
    result = sub_24E7728CC(v4);
    if (v12)
    {
      v11 = *(*(v9 + 56) + 8 * result);
    }
  }

  if (*(v8 + 16))
  {
    result = sub_24E7728CC(v4);
    v13 = 0;
    if (v14)
    {
      v15 = (*(v8 + 56) + 16 * result);
      v10 = *v15;
      v13 = v15[1];
    }
  }

  else
  {
    v13 = 0;
  }

  if ((v4 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v16 = *a2;
    if (*(v16 + 16) > v4)
    {
      v17 = sub_24F9289E8();
      v18 = *(v17 - 8);
      (*(v18 + 16))(a3, v16 + ((*(v18 + 80) + 32) & ~*(v18 + 80)) + *(v18 + 72) * v4, v17);
      (*(v18 + 56))(a3, 0, 1, v17);
      v19 = type metadata accessor for GameIcon(0);
      v20 = v19[8];
      *(a3 + v20) = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2167A0, &unk_24F942EF0);
      swift_storeEnumTagMultiPayload();
      *(a3 + v19[5]) = 1;
      *(a3 + v19[6]) = 1;
      *(a3 + v19[7]) = 0;
      v54[0] = v52;
      v54[1] = v53;
      v21 = sub_24F927618();
      v23 = v22;
      v24 = v52;
      v25 = v53;
      LOBYTE(v38) = 1;
      *(&v38 + 1) = 0;
      *&v39 = 0;
      *(&v39 + 1) = *(&v53 + 1);
      *v40 = v53;
      *&v40[8] = v52;
      *&v40[24] = v21;
      v41 = v22;
      v26 = a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219598, &unk_24F94C490) + 36);
      v27 = *&v40[16];
      *(v26 + 32) = *v40;
      *(v26 + 48) = v27;
      *(v26 + 64) = v41;
      v28 = v39;
      *v26 = v38;
      *(v26 + 16) = v28;
      v42[0] = 1;
      v43 = 0;
      v44 = 0;
      v45 = *(&v25 + 1);
      v46 = v25;
      v47 = v24;
      v48 = v21;
      v49 = v23;
      sub_24E7049FC(v54, v37);
      sub_24E60169C(&v38, v37, &qword_27F2195A8, &qword_24F97FA00);
      sub_24E601704(v42, &qword_27F2195A8, &qword_24F97FA00);
      sub_24F927618();
      sub_24F9238C8();
      v29 = (a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219588, &unk_24F97F9F0) + 36));
      v30 = v37[1];
      *v29 = v37[0];
      v29[1] = v30;
      v29[2] = v37[2];
      *(a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219578, &unk_24F94C480) + 36)) = -v4;
      sub_24F9278A8();
      v32 = v31;
      v34 = v33;
      v35 = (a3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219568, &qword_24F94C478) + 36));
      *v35 = v11;
      v35[1] = v32;
      v35[2] = v34;
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219548, &qword_24F94C470);
      v36 = (a3 + *(result + 36));
      *v36 = v10;
      v36[1] = v13;
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_24E6FC614@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 80);
  v8[4] = *(v1 + 64);
  v8[5] = v3;
  v9 = *(v1 + 96);
  v4 = *(v1 + 16);
  v8[0] = *v1;
  v8[1] = v4;
  v5 = *(v1 + 48);
  v8[2] = *(v1 + 32);
  v8[3] = v5;
  *a1 = sub_24F9275F8();
  a1[1] = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219528, &qword_24F94C438);
  return sub_24E6FBF60(v8);
}

uint64_t sub_24E6FC688()
{
  v1 = v0;
  v2 = sub_24F9289E8();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for GSKVideo(0);
  MEMORY[0x28223BE20](v6);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for SearchCardConfiguration.CardVisual.PortraitItem(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24E701D44(v1, v11, type metadata accessor for SearchCardConfiguration.CardVisual.PortraitItem);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v3 + 32))(v5, v11, v2);
    sub_24F921BE8();
    _sSo6CGSizeV12GameStoreKitE11aspectRatio5JetUI06AspectF0Vvg_0();
    return (*(v3 + 8))(v5, v2);
  }

  else
  {
    sub_24E701C34(v11, v8, type metadata accessor for GSKVideo);
    sub_24F921BE8();
    _sSo6CGSizeV12GameStoreKitE11aspectRatio5JetUI06AspectF0Vvg_0();
    return sub_24E701C9C(v8, type metadata accessor for GSKVideo);
  }
}

uint64_t *sub_24E6FC8AC()
{
  v1 = v0;
  v2 = sub_24F9289E8();
  v63 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v61 = &v51 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v56 = &v51 - v5;
  v53 = type metadata accessor for SearchCardConfiguration.CardVisual.PortraitItem(0);
  v62 = *(v53 - 8);
  MEMORY[0x28223BE20](v53);
  v52 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v58 = &v51 - v8;
  v9 = sub_24F922348();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213FB8, &unk_24F93C010);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v51 - v14;
  v16 = type metadata accessor for GSKVideo(0);
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v51 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = MEMORY[0x277D84F90];
  v20 = type metadata accessor for SearchCardConfiguration.CardVisual(0);
  v59 = v1;
  v60 = v20;
  sub_24E60169C(v1 + *(v20 + 20), v15, &qword_27F213FB8, &unk_24F93C010);
  v21 = (*(v17 + 48))(v15, 1, v16);
  v55 = v9;
  if (v21 == 1)
  {
    sub_24E601704(v15, &qword_27F213FB8, &unk_24F93C010);
    v22 = v56;
    v23 = v9;
    v24 = v10;
  }

  else
  {
    sub_24E701C34(v15, v19, type metadata accessor for GSKVideo);
    sub_24F921BE8();
    _sSo6CGSizeV12GameStoreKitE11aspectRatio5JetUI06AspectF0Vvg_0();
    sub_24F9222C8();
    v26 = v25;
    sub_24F922338();
    v28 = v27;
    (*(v10 + 8))(v12, v9);
    v24 = v10;
    if (v26 < v28)
    {
      v29 = v58;
      sub_24E701D44(v19, v58, type metadata accessor for GSKVideo);
      swift_storeEnumTagMultiPayload();
      v24 = sub_24E616FC4(0, 1, 1, MEMORY[0x277D84F90]);
      v23 = v24[2];
      v30 = v24[3];
      v31 = v23 + 1;
      v22 = v56;
      if (v23 >= v30 >> 1)
      {
        goto LABEL_27;
      }

      goto LABEL_5;
    }

    v23 = v9;
    sub_24E701C9C(v19, type metadata accessor for GSKVideo);
    v22 = v56;
  }

  while (1)
  {
    v10 = *(v59 + *(v60 + 24));
    v31 = MEMORY[0x277D84F90];
    v60 = *(v10 + 16);
    v64 = v2;
    if (!v60)
    {
      break;
    }

    v29 = 0;
    v58 = v63 + 16;
    v59 = v12;
    v32 = (v24 + 1);
    v54 = (v63 + 8);
    v57 = (v63 + 32);
    while (1)
    {
      v30 = *(v10 + 16);
      if (v29 >= v30)
      {
        break;
      }

      v12 = ((*(v63 + 80) + 32) & ~*(v63 + 80));
      v19 = *(v63 + 72);
      (*(v63 + 16))(v22, &v12[v10 + v19 * v29], v2);
      sub_24F921BE8();
      v24 = v59;
      _sSo6CGSizeV12GameStoreKitE11aspectRatio5JetUI06AspectF0Vvg_0();
      sub_24F9222C8();
      v34 = v33;
      sub_24F922338();
      v36 = v35;
      (*v32)(v24, v23);
      if (v34 >= v36)
      {
        (*v54)(v22, v2);
      }

      else
      {
        v37 = *v57;
        (*v57)(v61, v22, v2);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v65 = v31;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v24 = &v65;
          sub_24F457BB4(0, *(v31 + 16) + 1, 1);
          v31 = v65;
        }

        v40 = *(v31 + 16);
        v39 = *(v31 + 24);
        if (v40 >= v39 >> 1)
        {
          v24 = &v65;
          sub_24F457BB4((v39 > 1), v40 + 1, 1);
          v31 = v65;
        }

        *(v31 + 16) = v40 + 1;
        v41 = &v12[v31 + v40 * v19];
        v2 = v64;
        v37(v41, v61, v64);
        v23 = v55;
        v22 = v56;
      }

      if (v60 == ++v29)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_27:
    v24 = sub_24E616FC4((v30 > 1), v31, 1, v24);
LABEL_5:
    sub_24E701C9C(v19, type metadata accessor for GSKVideo);
    v24[2] = v31;
    sub_24E701C34(v29, v24 + ((*(v62 + 80) + 32) & ~*(v62 + 80)) + *(v62 + 72) * v23, type metadata accessor for SearchCardConfiguration.CardVisual.PortraitItem);
    v66 = v24;
    v23 = v55;
    v24 = v10;
  }

LABEL_18:
  v42 = *(v31 + 16);
  if (v42)
  {
    v65 = MEMORY[0x277D84F90];
    sub_24F457E10(0, v42, 0);
    v43 = v63 + 16;
    v63 = *(v63 + 16);
    v44 = v65;
    v45 = v31 + ((*(v43 + 64) + 32) & ~*(v43 + 64));
    v46 = *(v43 + 56);
    v47 = v52;
    do
    {
      (v63)(v47, v45, v64);
      swift_storeEnumTagMultiPayload();
      v65 = v44;
      v49 = *(v44 + 16);
      v48 = *(v44 + 24);
      if (v49 >= v48 >> 1)
      {
        sub_24F457E10((v48 > 1), v49 + 1, 1);
        v44 = v65;
      }

      *(v44 + 16) = v49 + 1;
      sub_24E701C34(v47, v44 + ((*(v62 + 80) + 32) & ~*(v62 + 80)) + *(v62 + 72) * v49, type metadata accessor for SearchCardConfiguration.CardVisual.PortraitItem);
      v45 += v46;
      --v42;
    }

    while (v42);
  }

  else
  {

    v44 = MEMORY[0x277D84F90];
  }

  sub_24EA0A8AC(v44);
  return v66;
}

BOOL sub_24E6FD060()
{
  v1 = sub_24F9289E8();
  v28 = *(v1 - 8);
  v29 = v1;
  MEMORY[0x28223BE20](v1);
  v27 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_24F922348();
  v3 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213FB8, &unk_24F93C010);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v27 - v7;
  v9 = type metadata accessor for GSKVideo(0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for SearchCardConfiguration.CardVisual(0);
  sub_24E60169C(v0 + *(v13 + 20), v8, &qword_27F213FB8, &unk_24F93C010);
  if ((*(v10 + 48))(v8, 1, v9) != 1)
  {
    sub_24E701C34(v8, v12, type metadata accessor for GSKVideo);
    sub_24F921BE8();
    _sSo6CGSizeV12GameStoreKitE11aspectRatio5JetUI06AspectF0Vvg_0();
    sub_24F9222C8();
    v21 = v24;
    sub_24F922338();
    v23 = v25;
    (*(v3 + 8))(v5, v30);
    sub_24E701C9C(v12, type metadata accessor for GSKVideo);
    return v21 < v23;
  }

  v14 = v3;
  v15 = v30;
  sub_24E601704(v8, &qword_27F213FB8, &unk_24F93C010);
  v16 = *(v0 + *(v13 + 24));
  if (*(v16 + 16))
  {
    v18 = v27;
    v17 = v28;
    v19 = v29;
    (*(v28 + 16))(v27, v16 + ((*(v17 + 80) + 32) & ~*(v17 + 80)), v29);
    sub_24F921BE8();
    _sSo6CGSizeV12GameStoreKitE11aspectRatio5JetUI06AspectF0Vvg_0();
    sub_24F9222C8();
    v21 = v20;
    sub_24F922338();
    v23 = v22;
    (*(v14 + 8))(v5, v15);
    (*(v17 + 8))(v18, v19);
    return v21 < v23;
  }

  return 0;
}

uint64_t sub_24E6FD3F8@<X0>(uint64_t a1@<X8>)
{
  v336 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213FB0, &qword_24F93E6B0);
  MEMORY[0x28223BE20](v2 - 8);
  v276 = &v276 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214148, &qword_24F93C520);
  v281 = *(v4 - 8);
  MEMORY[0x28223BE20](v4 - 8);
  v282 = v5;
  v283 = &v276 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v280 = &v276 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2191F8, &unk_24F950190);
  MEMORY[0x28223BE20](v8 - 8);
  v284 = &v276 - v9;
  v295 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219200, &qword_24F94BF20);
  MEMORY[0x28223BE20](v295);
  v285 = &v276 - v10;
  v296 = sub_24F9289E8();
  v309 = *(v296 - 8);
  MEMORY[0x28223BE20](v296);
  v277 = &v276 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v278 = v14;
  v279 = &v276 - v13;
  MEMORY[0x28223BE20](v15);
  v290 = &v276 - v16;
  v292 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219208, &qword_24F94BF28);
  MEMORY[0x28223BE20](v292);
  v293 = &v276 - v17;
  v332 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219210, &unk_24F94BF30);
  MEMORY[0x28223BE20](v332);
  v294 = &v276 - v18;
  v286 = type metadata accessor for GSKVideoView(0);
  MEMORY[0x28223BE20](v286);
  v300 = &v276 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v287 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219218, &unk_24F9501A0);
  MEMORY[0x28223BE20](v287);
  v301 = &v276 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219220, &unk_24F94BF40);
  MEMORY[0x28223BE20](v21 - 8);
  v288 = &v276 - v22;
  v291 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219228, &qword_24F9501B0);
  MEMORY[0x28223BE20](v291);
  v289 = &v276 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213FB8, &unk_24F93C010);
  MEMORY[0x28223BE20](v24 - 8);
  v299 = &v276 - v25;
  v26 = type metadata accessor for GSKVideo(0);
  v297 = *(v26 - 8);
  v298 = v26;
  MEMORY[0x28223BE20](v26);
  v302 = &v276 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v310 = type metadata accessor for CardElementView.PrimaryMixedMediaView(0);
  MEMORY[0x28223BE20](v310);
  v320 = &v276 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v311 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219230, &qword_24F94BF50);
  MEMORY[0x28223BE20](v311);
  v312 = &v276 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219238, &qword_24F94BF58);
  MEMORY[0x28223BE20](v30 - 8);
  v313 = &v276 - v31;
  v326 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219240, &qword_24F94BF60);
  MEMORY[0x28223BE20](v326);
  v314 = &v276 - v32;
  v335 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219248, &qword_24F94BF68);
  MEMORY[0x28223BE20](v335);
  v334 = (&v276 - v33);
  v328 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219250, &qword_24F94BF70);
  MEMORY[0x28223BE20](v328);
  v330 = &v276 - v34;
  v327 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219258, &qword_24F94BF78);
  MEMORY[0x28223BE20](v327);
  v324 = &v276 - v35;
  v329 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219260, &qword_24F94BF80);
  MEMORY[0x28223BE20](v329);
  v325 = &v276 - v36;
  v333 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219268, &qword_24F94BF88);
  MEMORY[0x28223BE20](v333);
  v331 = &v276 - v37;
  v38 = sub_24F924848();
  v316 = *(v38 - 8);
  v317 = v38;
  MEMORY[0x28223BE20](v38);
  v315 = &v276 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219270, &qword_24F94BF90);
  MEMORY[0x28223BE20](v40 - 8);
  v42 = &v276 - v41;
  v303 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219278, &qword_24F94BF98);
  MEMORY[0x28223BE20](v303);
  v44 = &v276 - v43;
  v45 = type metadata accessor for ScreenshotHStackLayout(0);
  MEMORY[0x28223BE20](v45);
  v47 = &v276 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v48);
  v50 = &v276 - v49;
  v304 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219280, &qword_24F94BFA0);
  MEMORY[0x28223BE20](v304);
  v52 = &v276 - v51;
  v305 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219288, &qword_24F94BFA8);
  MEMORY[0x28223BE20](v305);
  v307 = &v276 - v53;
  v323 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219290, &qword_24F94BFB0);
  MEMORY[0x28223BE20](v323);
  v306 = &v276 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v55);
  v308 = &v276 - v56;
  v57 = sub_24F922348();
  v321 = *(v57 - 8);
  v322 = v57;
  MEMORY[0x28223BE20](v57);
  v319 = &v276 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = type metadata accessor for SearchCardConfiguration.CardVisual.PortraitItem(0);
  v60 = *(v59 - 8);
  MEMORY[0x28223BE20](v59 - 8);
  v318 = &v276 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = sub_24E6FC8AC();
  v337 = v1;
  if (sub_24E6FD060() && v62[2])
  {
    sub_24E701D44(v62 + ((*(v60 + 80) + 32) & ~*(v60 + 80)), v318, type metadata accessor for SearchCardConfiguration.CardVisual.PortraitItem);
    v63 = v319;
    sub_24E6FC688();
    (*(v321 + 16))(v50, v63, v322);
    *&v50[*(v45 + 20)] = 0x4024000000000000;
    sub_24E701C34(v50, v47, type metadata accessor for ScreenshotHStackLayout);
    sub_24E701D44(v47, v42, type metadata accessor for ScreenshotHStackLayout);
    sub_24E60169C(v42, v44, &qword_27F219270, &qword_24F94BF90);
    sub_24E7004D8(v62);

    sub_24E601704(v42, &qword_27F219270, &qword_24F94BF90);
    sub_24E701C9C(v47, type metadata accessor for ScreenshotHStackLayout);
    sub_24F927618();
    sub_24F9242E8();
    sub_24E6009C8(v44, v52, &qword_27F219278, &qword_24F94BF98);
    v64 = &v52[*(v304 + 36)];
    v65 = v356;
    *(v64 + 4) = v355;
    *(v64 + 5) = v65;
    *(v64 + 6) = v357;
    v66 = v352;
    *v64 = v351;
    *(v64 + 1) = v66;
    v67 = v354;
    *(v64 + 2) = v353;
    *(v64 + 3) = v67;
    v68 = sub_24F925808();
    sub_24F923318();
    v70 = v69;
    v72 = v71;
    v74 = v73;
    v76 = v75;
    v77 = v307;
    sub_24E6009C8(v52, v307, &qword_27F219280, &qword_24F94BFA0);
    v78 = v77 + *(v305 + 36);
    *v78 = v68;
    *(v78 + 8) = v70;
    *(v78 + 16) = v72;
    *(v78 + 24) = v74;
    *(v78 + 32) = v76;
    *(v78 + 40) = 0;
    v79 = type metadata accessor for SearchCardConfiguration.CardVisual(0);
    v80 = v337;
    v81 = v337 + *(v79 + 40);
    v82 = *v81;
    v83 = v81[8];

    if ((v83 & 1) == 0)
    {
      sub_24F92BDC8();
      v84 = sub_24F9257A8();
      sub_24F921FD8();

      v85 = v315;
      sub_24F924838();
      swift_getAtKeyPath();

      (*(v316 + 8))(v85, v317);
      v82 = v340;
    }

    swift_getKeyPath();
    *&v340 = v82;
    sub_24E7017E4(&qword_27F214D10, type metadata accessor for CardSafeArea, &unk_24F95FFC8);
    sub_24F91FD88();

    v86 = *(v82 + 16);

    v87 = *(v80 + *(v79 + 36));
    if (v87 < 4 || v87 == 4)
    {
      v150 = sub_24F92CE08();

      if ((v150 & 1) == 0)
      {
        v151 = sub_24F925818();
LABEL_37:
        v152 = sub_24EA91914(v151, v86);
        v154 = v153;
        v156 = v155;
        v158 = v157;
        v159 = sub_24F925808();
        v160 = v306;
        sub_24E6009C8(v77, v306, &qword_27F219288, &qword_24F94BFA8);
        v161 = v160 + *(v323 + 36);
        *v161 = v159;
        *(v161 + 8) = v152;
        *(v161 + 16) = v154;
        *(v161 + 24) = v156;
        *(v161 + 32) = v158;
        *(v161 + 40) = 0;
        v162 = v308;
        sub_24E6009C8(v160, v308, &qword_27F219290, &qword_24F94BFB0);
        sub_24E60169C(v162, v324, &qword_27F219290, &qword_24F94BFB0);
        swift_storeEnumTagMultiPayload();
        sub_24E70340C();
        sub_24E70388C();
        v163 = v325;
        sub_24F924E28();
        sub_24E60169C(v163, v330, &qword_27F219260, &qword_24F94BF80);
        swift_storeEnumTagMultiPayload();
        sub_24E703380();
        sub_24E703B18();
        v164 = v331;
        sub_24F924E28();
        sub_24E601704(v163, &qword_27F219260, &qword_24F94BF80);
        sub_24E60169C(v164, v334, &qword_27F219268, &qword_24F94BF88);
        swift_storeEnumTagMultiPayload();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2193D0, &qword_24F94C048);
        sub_24E703BA4();
        sub_24E703C30();
        v165 = v336;
        sub_24F924E28();
        sub_24E601704(v164, &qword_27F219268, &qword_24F94BF88);
        sub_24E601704(v162, &qword_27F219290, &qword_24F94BFB0);
        (*(v321 + 8))(v319, v322);
        v166 = type metadata accessor for SearchCardConfiguration.CardVisual.PortraitItem;
        v167 = v318;
LABEL_80:
        sub_24E701C9C(v167, v166);
LABEL_81:
        v239 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219410, &unk_24F94C060);
        v240 = *(*(v239 - 8) + 56);
        v241 = v165;
        return v240(v241, 0, 1, v239);
      }
    }

    else
    {
    }

    v151 = sub_24F925848();
    goto LABEL_37;
  }

  v88 = v337;
  v89 = *v337;
  v90 = v320;
  if (*v337)
  {
    v91 = v337[1];
    v92 = type metadata accessor for SearchCardConfiguration.CardVisual(0);
    v93 = *(v88 + *(v92 + 36));
    *v90 = v89;
    *(v90 + 8) = v91;
    *(v90 + 16) = v93;
    v94 = v310;
    v95 = *(v310 + 24);
    *(v90 + v95) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254ED0, &qword_24F9407C0);
    swift_storeEnumTagMultiPayload();
    v96 = *(v94 + 28);
    *(v90 + v96) = swift_getKeyPath();
    swift_storeEnumTagMultiPayload();
    v97 = v90 + *(v94 + 32);
    *v97 = swift_getKeyPath();
    *(v97 + 8) = 0;
    v98 = v88 + *(v92 + 40);
    if (v98[8] == 1)
    {
      *&v351 = *v98;
      sub_24E701D04(v89, v91);
    }

    else
    {
      sub_24E701D04(v89, v91);

      sub_24F92BDC8();
      v125 = sub_24F9257A8();
      sub_24F921FD8();

      v126 = v315;
      sub_24F924838();
      swift_getAtKeyPath();

      (*(v316 + 8))(v126, v317);
    }

    v127 = v313;
    v128 = v351;
    swift_getKeyPath();
    *&v351 = v128;
    sub_24E7017E4(&qword_27F214D10, type metadata accessor for CardSafeArea, &unk_24F95FFC8);
    sub_24F91FD88();

    v129 = *(v128 + 16);

    v130 = v312;
    if (v93 == 3)
    {

      v148 = sub_24F925868();
    }

    else
    {
      v149 = sub_24F92CE08();

      if ((v149 & 1) == 0)
      {
        if (v93 <= 2 || v93 == 4)
        {
          v173 = sub_24F92CE08();

          if ((v173 & 1) == 0)
          {
            v148 = sub_24F925818();
            goto LABEL_46;
          }
        }

        else
        {
        }

        v148 = sub_24F925808();
        goto LABEL_46;
      }

      v148 = sub_24F925868();
    }

LABEL_46:
    v174 = sub_24EA91914(v148, v129);
    v176 = v175;
    v178 = v177;
    v180 = v179;
    v181 = sub_24F925808();
    sub_24E701C34(v90, v130, type metadata accessor for CardElementView.PrimaryMixedMediaView);
    v182 = v130 + *(v311 + 36);
    *v182 = v181;
    *(v182 + 8) = v174;
    *(v182 + 16) = v176;
    *(v182 + 24) = v178;
    *(v182 + 32) = v180;
    *(v182 + 40) = 0;
    if (v93 > 4)
    {

      v184 = 1;
      sub_24E9240A4(1);
      sub_24E601704(v130, &qword_27F219230, &qword_24F94BF50);
    }

    else
    {
      v183 = sub_24F92CE08();

      sub_24E9240A4(v183 & 1);
      sub_24E601704(v130, &qword_27F219230, &qword_24F94BF50);
      v184 = sub_24F92CE08();
    }

    *(&v352 + 1) = sub_24F925048();
    *&v353 = MEMORY[0x277CE0420];
    __swift_allocate_boxed_opaque_existential_1(&v351);
    sub_24F925258();
    v185 = v184 & 1;
    v186 = v314;
    sub_24E923A50(v185, &v351);
    sub_24E601704(v127, &qword_27F219238, &qword_24F94BF58);
    __swift_destroy_boxed_opaque_existential_1(&v351);
    sub_24E60169C(v186, v324, &qword_27F219240, &qword_24F94BF60);
    swift_storeEnumTagMultiPayload();
    sub_24E70340C();
    sub_24E70388C();
    v187 = v325;
    sub_24F924E28();
    sub_24E60169C(v187, v330, &qword_27F219260, &qword_24F94BF80);
    swift_storeEnumTagMultiPayload();
    sub_24E703380();
    sub_24E703B18();
    v188 = v331;
    sub_24F924E28();
    sub_24E601704(v187, &qword_27F219260, &qword_24F94BF80);
    sub_24E60169C(v188, v334, &qword_27F219268, &qword_24F94BF88);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2193D0, &qword_24F94C048);
    sub_24E703BA4();
    sub_24E703C30();
    v165 = v336;
    sub_24F924E28();
    sub_24E601704(v188, &qword_27F219268, &qword_24F94BF88);
    sub_24E601704(v186, &qword_27F219240, &qword_24F94BF60);
    goto LABEL_81;
  }

  v99 = type metadata accessor for SearchCardConfiguration.CardVisual(0);
  v100 = v299;
  sub_24E60169C(v88 + v99[5], v299, &qword_27F213FB8, &unk_24F93C010);
  if ((*(v297 + 48))(v100, 1, v298) != 1)
  {
    v131 = v100;
    v132 = v302;
    sub_24E701C34(v131, v302, type metadata accessor for GSKVideo);
    v133 = v300;
    sub_24E701D44(v132, v300, type metadata accessor for GSKVideo);
    v134 = v286;
    v135 = *(v286 + 20);
    v136 = type metadata accessor for VideoConfiguration(0);
    (*(*(v136 - 8) + 56))(v133 + v135, 1, 1, v136);
    v137 = sub_24F9238D8();
    v138 = (v133 + v134[12]);
    type metadata accessor for GSKVideoPlaybackCoordinator(0);
    sub_24E7017E4(&qword_27F2141F0, type metadata accessor for GSKVideoPlaybackCoordinator, &unk_24F95FAB8);
    *v138 = sub_24F9243D8();
    v138[1] = v139;
    *(v133 + v134[9]) = 1;
    *(v133 + v134[10]) = v137;
    *(v133 + v134[11]) = 0;
    *(v133 + v134[6]) = 0x3FE8000000000000;
    *(v133 + v134[7]) = 0x3FE0000000000000;
    v140 = v133 + v134[8];
    *(v140 + 32) = 0u;
    *(v140 + 48) = 0u;
    *v140 = 0u;
    *(v140 + 16) = 0u;
    *(v140 + 64) = 5;
    v141 = v88 + v99[10];
    v142 = *v141;
    LOBYTE(v137) = v141[8];

    if ((v137 & 1) == 0)
    {
      sub_24F92BDC8();
      v143 = sub_24F9257A8();
      sub_24F921FD8();

      v144 = v315;
      sub_24F924838();
      swift_getAtKeyPath();

      (*(v316 + 8))(v144, v317);
      v142 = v351;
    }

    swift_getKeyPath();
    *&v351 = v142;
    sub_24E7017E4(&qword_27F214D10, type metadata accessor for CardSafeArea, &unk_24F95FFC8);
    sub_24F91FD88();

    v145 = *(v142 + 16);

    v146 = *(v88 + v99[9]);
    if (v146 > 2)
    {
      v147 = v288;
      if (v146 == 3)
      {

        v213 = sub_24F925868();
        goto LABEL_77;
      }
    }

    else
    {
      v147 = v288;
    }

    v214 = sub_24F92CE08();

    if ((v214 & 1) == 0)
    {
      if (v146 <= 2 || v146 == 4)
      {
        v242 = sub_24F92CE08();

        if ((v242 & 1) == 0)
        {
          v213 = sub_24F925818();
          goto LABEL_77;
        }
      }

      else
      {
      }

      v213 = sub_24F925808();
      goto LABEL_77;
    }

    v213 = sub_24F925868();
LABEL_77:
    v243 = sub_24EA91914(v213, v145);
    v245 = v244;
    v247 = v246;
    v249 = v248;
    v250 = sub_24F925808();
    v251 = v301;
    sub_24E701C34(v300, v301, type metadata accessor for GSKVideoView);
    v252 = v251 + *(v287 + 36);
    *v252 = v250;
    *(v252 + 8) = v243;
    *(v252 + 16) = v245;
    *(v252 + 24) = v247;
    *(v252 + 32) = v249;
    *(v252 + 40) = 0;
    if (v146 > 4)
    {

      v255 = 1;
      v259 = v301;
      sub_24E924370(1);
      sub_24E601704(v259, &qword_27F219218, &unk_24F9501A0);
    }

    else
    {
      v253 = sub_24F92CE08();

      v254 = v301;
      sub_24E924370(v253 & 1);
      sub_24E601704(v254, &qword_27F219218, &unk_24F9501A0);
      v255 = sub_24F92CE08();
    }

    *(&v352 + 1) = sub_24F925048();
    *&v353 = MEMORY[0x277CE0420];
    __swift_allocate_boxed_opaque_existential_1(&v351);
    sub_24F925258();
    v256 = v289;
    sub_24E923C6C(v255 & 1, &v351);
    sub_24E601704(v147, &qword_27F219220, &unk_24F94BF40);
    __swift_destroy_boxed_opaque_existential_1(&v351);
    sub_24E60169C(v256, v293, &qword_27F219228, &qword_24F9501B0);
    swift_storeEnumTagMultiPayload();
    sub_24E702DB8();
    sub_24E703044();
    v257 = v294;
    sub_24F924E28();
    sub_24E60169C(v257, v330, &qword_27F219210, &unk_24F94BF30);
    swift_storeEnumTagMultiPayload();
    sub_24E703380();
    sub_24E703B18();
    v258 = v331;
    sub_24F924E28();
    sub_24E601704(v257, &qword_27F219210, &unk_24F94BF30);
    sub_24E60169C(v258, v334, &qword_27F219268, &qword_24F94BF88);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2193D0, &qword_24F94C048);
    sub_24E703BA4();
    sub_24E703C30();
    v165 = v336;
    sub_24F924E28();
    sub_24E601704(v258, &qword_27F219268, &qword_24F94BF88);
    sub_24E601704(v256, &qword_27F219228, &qword_24F9501B0);
    v166 = type metadata accessor for GSKVideo;
    v167 = v302;
    goto LABEL_80;
  }

  sub_24E601704(v100, &qword_27F213FB8, &unk_24F93C010);
  v101 = *(v88 + v99[6]);
  if (*(v101 + 16))
  {
    v102 = *(v309 + 80);
    v103 = *(v309 + 16);
    v104 = v290;
    v105 = v296;
    v103(v290, v101 + ((v102 + 32) & ~v102), v296);
    v106 = v280;
    (*(v321 + 56))(v280, 1, 1, v322);
    v327 = *MEMORY[0x277CEE240];
    v107 = v279;
    v103(v279, v104, v105);
    v108 = v283;
    sub_24E6009C8(v106, v283, &qword_27F214148, &qword_24F93C520);
    v109 = (v102 + 16) & ~v102;
    v110 = v99;
    v111 = (v278 + v109 + 7) & 0xFFFFFFFFFFFFFFF8;
    v112 = (v111 + *(v281 + 80) + 8) & ~*(v281 + 80);
    v113 = v112 + v282;
    v114 = swift_allocObject();
    (*(v309 + 32))(v114 + v109, v107, v105);
    v115 = v327;
    *(v114 + v111) = v327;
    v116 = v110;
    v117 = v337;
    sub_24E6009C8(v108, v114 + v112, &qword_27F214148, &qword_24F93C520);
    *(v114 + v113) = 1;
    v118 = v117 + v110[10];
    v119 = *v118;
    LOBYTE(v108) = v118[8];
    v120 = v115;

    if ((v108 & 1) == 0)
    {
      sub_24F92BDC8();
      v121 = sub_24F9257A8();
      sub_24F921FD8();

      v122 = v315;
      sub_24F924838();
      swift_getAtKeyPath();

      (*(v316 + 8))(v122, v317);
      v119 = v351;
    }

    swift_getKeyPath();
    *&v351 = v119;
    sub_24E7017E4(&qword_27F214D10, type metadata accessor for CardSafeArea, &unk_24F95FFC8);
    sub_24F91FD88();

    v123 = *(v119 + 16);

    v124 = *(v117 + v116[9]);
    if (v124 > 2 && v124 == 3)
    {

LABEL_62:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217E08, &qword_24F9476F0);
      v216 = swift_allocObject();
      *(v216 + 16) = xmmword_24F93A400;
      v217 = sub_24F925818();
      *(v216 + 32) = v217;
      v218 = sub_24F925828();
      *(v216 + 33) = v218;
      v219 = sub_24F925848();
      sub_24F925848();
      if (sub_24F925848() != v217)
      {
        v219 = sub_24F925848();
      }

      sub_24F925848();
      if (sub_24F925848() != v218)
      {
        v219 = sub_24F925848();
      }

      v220 = v284;
      goto LABEL_89;
    }

    v215 = sub_24F92CE08();

    if (v215)
    {
      goto LABEL_62;
    }

    if (v124 > 2)
    {
      v220 = v284;
      if (v124 != 4)
      {

        goto LABEL_87;
      }
    }

    else
    {
      v220 = v284;
    }

    v260 = sub_24F92CE08();

    if ((v260 & 1) == 0)
    {
      v261 = sub_24F925818();
LABEL_88:
      v219 = v261;
LABEL_89:
      v262 = sub_24EA91914(v219, v123);
      v264 = v263;
      v266 = v265;
      v268 = v267;
      v269 = sub_24F925808();
      if (v124 > 4)
      {
        v270 = 1;
      }

      else
      {
        v270 = sub_24F92CE08();
      }

      v350 = 0;
      *&v351 = sub_24E623C20;
      *(&v351 + 1) = v114;
      LOBYTE(v352) = v269;
      *(&v352 + 1) = v262;
      *&v353 = v264;
      *(&v353 + 1) = v266;
      *&v354 = v268;
      BYTE8(v354) = 0;
      sub_24E92463C(v270 & 1);

      if (v124 > 4)
      {
        v271 = 1;
      }

      else
      {
        v271 = sub_24F92CE08();
      }

      *(&v341 + 1) = sub_24F925048();
      *&v342 = MEMORY[0x277CE0420];
      __swift_allocate_boxed_opaque_existential_1(&v340);
      sub_24F925258();
      v272 = v271 & 1;
      v273 = v285;
      sub_24E923E88(v272, &v340);
      sub_24E601704(v220, &qword_27F2191F8, &unk_24F950190);
      __swift_destroy_boxed_opaque_existential_1(&v340);
      sub_24E60169C(v273, v293, &qword_27F219200, &qword_24F94BF20);
      swift_storeEnumTagMultiPayload();
      sub_24E702DB8();
      sub_24E703044();
      v274 = v294;
      sub_24F924E28();
      sub_24E60169C(v274, v330, &qword_27F219210, &unk_24F94BF30);
      swift_storeEnumTagMultiPayload();
      sub_24E703380();
      sub_24E703B18();
      v275 = v331;
      sub_24F924E28();
      sub_24E601704(v274, &qword_27F219210, &unk_24F94BF30);
      sub_24E60169C(v275, v334, &qword_27F219268, &qword_24F94BF88);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2193D0, &qword_24F94C048);
      sub_24E703BA4();
      sub_24E703C30();
      v165 = v336;
      sub_24F924E28();
      sub_24E601704(v275, &qword_27F219268, &qword_24F94BF88);
      sub_24E601704(v273, &qword_27F219200, &qword_24F94BF20);
      (*(v309 + 8))(v290, v296);
      goto LABEL_81;
    }

LABEL_87:
    v261 = sub_24F925808();
    goto LABEL_88;
  }

  v168 = v276;
  sub_24E60169C(v88 + v99[7], v276, &qword_27F213FB0, &qword_24F93E6B0);
  v169 = v309;
  v170 = v296;
  if ((*(v309 + 48))(v168, 1, v296) == 1)
  {
    sub_24E601704(v168, &qword_27F213FB0, &qword_24F93E6B0);
    v171 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219410, &unk_24F94C060);
    return (*(*(v171 - 8) + 56))(v336, 1, 1, v171);
  }

  v189 = v277;
  (*(v169 + 32))(v277, v168, v170);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217C28, &qword_24F94C070);
  v190 = v169;
  v191 = (*(v169 + 80) + 32) & ~*(v169 + 80);
  v192 = swift_allocObject();
  *(v192 + 16) = xmmword_24F93DE60;
  (*(v190 + 16))(v192 + v191, v189, v170);
  v193 = (v88 + v99[8]);
  v194 = v193[3];
  v342 = v193[2];
  v343 = v194;
  v344[0] = v193[4];
  v195 = v344[0];
  *(v344 + 9) = *(v193 + 73);
  v196 = v193[1];
  v340 = *v193;
  v341 = v196;
  v348 = v194;
  v349[0] = v195;
  v346 = v196;
  v347 = v342;
  *(v349 + 9) = *(v344 + 9);
  v345 = v340;
  sub_24E701364(&v340, &v351);
  v197 = sub_24F925818();
  sub_24F923318();
  v199 = v198;
  v201 = v200;
  v203 = v202;
  v205 = v204;
  v338 = 0;
  v206 = v88 + v99[10];
  v207 = *v206;
  LOBYTE(v191) = v206[8];

  if ((v191 & 1) == 0)
  {
    sub_24F92BDC8();
    v208 = sub_24F9257A8();
    sub_24F921FD8();

    v209 = v315;
    sub_24F924838();
    swift_getAtKeyPath();

    (*(v316 + 8))(v209, v317);
    v207 = v351;
  }

  v210 = BYTE8(v344[1]);
  swift_getKeyPath();
  *&v351 = v207;
  sub_24E7017E4(&qword_27F214D10, type metadata accessor for CardSafeArea, &unk_24F95FFC8);
  sub_24F91FD88();

  v211 = *(v207 + 16);

  if (v210 == 1)
  {
    v212 = sub_24F925868();
  }

  else
  {
    v212 = sub_24F925848();
  }

  v221 = sub_24EA91914(v212, v211);
  v223 = v222;
  v225 = v224;
  v227 = v226;
  v228 = sub_24F925808();
  v350 = 0;
  sub_24F9242E8();
  *&v339[55] = v354;
  *&v339[71] = v355;
  *&v339[87] = v356;
  *&v339[103] = v357;
  *&v339[7] = v351;
  *&v339[23] = v352;
  *&v339[39] = v353;
  v229 = v334;
  *v334 = v192;
  v230 = v346;
  *(v229 + 1) = v345;
  *(v229 + 3) = v230;
  v231 = v347;
  v232 = v348;
  v233 = v349[0];
  *(v229 + 81) = *(v349 + 9);
  *(v229 + 9) = v233;
  *(v229 + 7) = v232;
  *(v229 + 5) = v231;
  *(v229 + 104) = v197;
  v229[14] = v199;
  v229[15] = v201;
  v229[16] = v203;
  v229[17] = v205;
  *(v229 + 144) = 0;
  *(v229 + 152) = v228;
  *(v229 + 20) = v221;
  v229[21] = v223;
  v229[22] = v225;
  v229[23] = v227;
  *(v229 + 192) = 0;
  v234 = *&v339[32];
  *(v229 + 241) = *&v339[48];
  *(v229 + 225) = v234;
  v235 = *v339;
  *(v229 + 209) = *&v339[16];
  *(v229 + 193) = v235;
  v229[38] = *&v339[111];
  v236 = *&v339[96];
  v237 = *&v339[64];
  *(v229 + 273) = *&v339[80];
  *(v229 + 289) = v236;
  *(v229 + 257) = v237;
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2193D0, &qword_24F94C048);
  sub_24E703BA4();
  sub_24E703C30();
  v238 = v336;
  sub_24F924E28();
  (*(v309 + 8))(v277, v296);
  v239 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219410, &unk_24F94C060);
  v240 = *(*(v239 - 8) + 56);
  v241 = v238;
  return v240(v241, 0, 1, v239);
}

uint64_t sub_24E7004D8(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219418, &qword_24F94C108);
  MEMORY[0x28223BE20](v1);
  type metadata accessor for SearchCardConfiguration.CardVisual.PortraitItem(0);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219420, &qword_24F94C110);
  sub_24E602068(&qword_27F219428, &qword_27F219420, &qword_24F94C110, MEMORY[0x277D83FB8]);
  sub_24F921BA8();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219360, &qword_24F94C018);
  sub_24E602068(&qword_27F219430, &qword_27F219418, &qword_24F94C108, MEMORY[0x277D7EC38]);
  sub_24E7036EC();
  return sub_24F927228();
}

uint64_t sub_24E7006D4@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v40 = a1;
  v43 = a2;
  v2 = sub_24F9289E8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v40 - v7;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219440, &qword_24F94C140);
  MEMORY[0x28223BE20](v41);
  v10 = (&v40 - v9);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219370, &unk_24F94C020);
  MEMORY[0x28223BE20](v42);
  v12 = &v40 - v11;
  v13 = type metadata accessor for GSKVideo(0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for SearchCardConfiguration.CardVisual.PortraitItem(0);
  MEMORY[0x28223BE20](v16);
  v18 = &v40 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24E701D44(v40, v18, type metadata accessor for SearchCardConfiguration.CardVisual.PortraitItem);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v19 = *(v3 + 32);
    v19(v8, v18, v2);
    (*(v3 + 16))(v5, v8, v2);
    v20 = (*(v3 + 80) + 16) & ~*(v3 + 80);
    v21 = swift_allocObject();
    v19((v21 + v20), v5, v2);
    *v10 = sub_24E703EC8;
    v10[1] = v21;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219380, &qword_24F94C030);
    sub_24E7037A4();
    sub_24E602068(&qword_27F219378, &qword_27F219380, &qword_24F94C030, MEMORY[0x277CDF7D8]);
    sub_24F924E28();
    return (*(v3 + 8))(v8, v2);
  }

  else
  {
    v23 = v15;
    sub_24E701C34(v18, v15, type metadata accessor for GSKVideo);
    sub_24E701D44(v15, v12, type metadata accessor for GSKVideo);
    v24 = type metadata accessor for GSKVideoView(0);
    v25 = v24[5];
    v26 = type metadata accessor for VideoConfiguration(0);
    (*(*(v26 - 8) + 56))(&v12[v25], 1, 1, v26);
    v27 = sub_24F9238D8();
    v28 = &v12[v24[12]];
    type metadata accessor for GSKVideoPlaybackCoordinator(0);
    sub_24E7017E4(&qword_27F2141F0, type metadata accessor for GSKVideoPlaybackCoordinator, &unk_24F95FAB8);
    *v28 = sub_24F9243D8();
    v28[1] = v29;
    v12[v24[9]] = 1;
    *&v12[v24[10]] = v27;
    v12[v24[11]] = 0;
    *&v12[v24[6]] = 0x3FE8000000000000;
    *&v12[v24[7]] = 0x3FE0000000000000;
    v30 = &v12[v24[8]];
    *(v30 + 2) = 0u;
    *(v30 + 3) = 0u;
    *v30 = 0u;
    *(v30 + 1) = 0u;
    *(v30 + 32) = 5;
    v31 = &v12[*(v42 + 36)];
    v32 = *(sub_24F924258() + 20);
    v33 = *MEMORY[0x277CE0118];
    v34 = sub_24F924B38();
    (*(*(v34 - 8) + 104))(&v31[v32], v33, v34);
    __asm { FMOV            V0.2D, #12.0 }

    *v31 = _Q0;
    *&v31[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2164C8, &qword_24F9423C0) + 36)] = 256;
    sub_24E60169C(v12, v10, &qword_27F219370, &unk_24F94C020);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219380, &qword_24F94C030);
    sub_24E7037A4();
    sub_24E602068(&qword_27F219378, &qword_27F219380, &qword_24F94C030, MEMORY[0x277CDF7D8]);
    sub_24F924E28();
    sub_24E601704(v12, &qword_27F219370, &unk_24F94C020);
    return sub_24E701C9C(v23, type metadata accessor for GSKVideo);
  }
}

uint64_t sub_24E700CF4()
{
  v0 = sub_24F9289E8();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24F923998();
  sub_24F9289C8();
  sub_24E7017E4(&qword_27F214C28, MEMORY[0x277D21C48], MEMORY[0x277D7EEB8]);
  sub_24E703F48();
  sub_24F925ED8();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_24E700E38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219438, &qword_24F94C138) + 48);

  return sub_24E7006D4(v3, a2);
}

double sub_24E700EBC(uint64_t a1, char a2)
{
  result = *&a1;
  if (a2)
  {
    return 10.0;
  }

  return result;
}

void (*sub_24E700F9C(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_24F923238();
  return sub_24E622878;
}

uint64_t sub_24E701024()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2195C8, &qword_24F94C4E8);
  MEMORY[0x28223BE20](v0);
  v2 = (&v21 - v1);
  v3 = sub_24F926E08();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2195D0, &unk_24F94C4F0);
  MEMORY[0x28223BE20](v7);
  v9 = &v21 - v8;
  if (sub_24F921C08())
  {
    (*(v4 + 104))(v6, *MEMORY[0x277CE0FE0], v3);
    v10 = sub_24F926E88();
    (*(v4 + 8))(v6, v3);
    v11 = &v9[*(v7 + 36)];
    v12 = *(sub_24F924258() + 20);
    v13 = *MEMORY[0x277CE0118];
    v14 = sub_24F924B38();
    (*(*(v14 - 8) + 104))(&v11[v12], v13, v14);
    __asm { FMOV            V0.2D, #12.0 }

    *v11 = _Q0;
    *&v11[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2164C8, &qword_24F9423C0) + 36)] = 256;
    *v9 = v10;
    *(v9 + 1) = 0;
    *(v9 + 8) = 257;
    sub_24E60169C(v9, v2, &qword_27F2195D0, &unk_24F94C4F0);
    swift_storeEnumTagMultiPayload();
    sub_24E704A58();
    sub_24F924E28();

    return sub_24E601704(v9, &qword_27F2195D0, &unk_24F94C4F0);
  }

  else
  {
    *v2 = sub_24F926C98();
    swift_storeEnumTagMultiPayload();
    sub_24E704A58();
    return sub_24F924E28();
  }
}

uint64_t sub_24E70139C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213FB8, &unk_24F93C010);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v19 - v8;
  if (v6 == 3)
  {
    if (a3)
    {
      v11 = sub_24F92CE08();

      if ((v11 & 1) == 0)
      {
        v12 = type metadata accessor for SearchCard(0);
        v13 = a2 + *(v12 + 32);
        v14 = type metadata accessor for CommonCardAttributes(0);
        if (!*(v13 + *(v14 + 36)))
        {
          sub_24E60169C(v13 + *(v14 + 32), v9, &qword_27F213FB8, &unk_24F93C010);
          v15 = type metadata accessor for GSKVideo(0);
          v16 = (*(*(v15 - 8) + 48))(v9, 1, v15);
          sub_24E601704(v9, &qword_27F213FB8, &unk_24F93C010);
          result = 1;
          if (v16 == 1)
          {
            v17 = *(a2 + *(v12 + 36));
            if (v17 >> 62)
            {
              v18 = sub_24F92C738();
            }

            else
            {
              v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
            }

            return v18 != 0;
          }

          return result;
        }
      }
    }

    else
    {
    }

    return 1;
  }

  return sub_24E92D030(a1, a2, a3);
}

unint64_t sub_24E701644()
{
  result = qword_27F2190E0;
  if (!qword_27F2190E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2190C8, &qword_24F94BD58);
    sub_24E7016FC();
    sub_24E701B80(&qword_27F219100, &qword_27F219098, &unk_24F94BD20, sub_24E70182C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2190E0);
  }

  return result;
}

unint64_t sub_24E7016FC()
{
  result = qword_27F2190E8;
  if (!qword_27F2190E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2190C0, &qword_24F94BD50);
    sub_24E7017E4(&qword_27F2190F0, type metadata accessor for SearchCardConfiguration.CardVisual, &unk_24F94BED0);
    sub_24E602068(&qword_27F2190F8, &qword_27F2190A0, &qword_24F94BD30, &unk_24F94BE80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2190E8);
  }

  return result;
}

uint64_t sub_24E7017E4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_24E70182C()
{
  result = qword_27F219108;
  if (!qword_27F219108)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F219088, &qword_24F94BD10);
    sub_24E63D098();
    sub_24E7018B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F219108);
  }

  return result;
}

unint64_t sub_24E7018B8()
{
  result = qword_27F219110;
  if (!qword_27F219110)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F219078, &qword_24F94BD00);
    sub_24E602068(&qword_27F219118, &qword_27F219070, &qword_24F94FF00, MEMORY[0x277CE11A8]);
    sub_24E63D098();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F219110);
  }

  return result;
}

unint64_t sub_24E701970()
{
  result = qword_27F214AF0;
  if (!qword_27F214AF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F214A20, &unk_24F94D670);
    sub_24E63C290();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F214AF0);
  }

  return result;
}

unint64_t sub_24E7019F4()
{
  result = qword_27F214B38;
  if (!qword_27F214B38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F214B40, &unk_24F94FFA0);
    sub_24E63C518();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F214B38);
  }

  return result;
}

unint64_t sub_24E701A78()
{
  result = qword_27F214B80;
  if (!qword_27F214B80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F214B88, &unk_24F94FFC0);
    sub_24E63C774();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F214B80);
  }

  return result;
}

unint64_t sub_24E701AFC()
{
  result = qword_27F214BF8;
  if (!qword_27F214BF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F214C00, &unk_24F93E770);
    sub_24E63CB8C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F214BF8);
  }

  return result;
}

uint64_t sub_24E701B80(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    sub_24E7017E4(&qword_27F214AE0, type metadata accessor for CardContentBackgroundStyle, &unk_24F960438);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_24E701C34(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24E701C9C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

double sub_24E701D04(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
  }

  return result;
}

uint64_t sub_24E701D44(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

__n128 __swift_memcpy89_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 73) = *(a2 + 73);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_24E701DD0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 89))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 56);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24E701E18(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 88) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 89) = 1;
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
      *(result + 56) = (a2 - 1);
      return result;
    }

    *(result + 89) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_24E701E88(uint64_t a1)
{
  sub_24E7029DC(319, &qword_27F2191B0, type metadata accessor for Player, MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    sub_24E66ECF0(319, &qword_27F2191B8, MEMORY[0x277D839F8]);
    if (v2 <= 0x3F)
    {
      sub_24E66ECF0(319, &qword_27F254DE0, MEMORY[0x277D837D0]);
      if (v3 <= 0x3F)
      {
        swift_checkMetadataState();
        if (v4 <= 0x3F)
        {
          sub_24E7029DC(319, &qword_27F2168D0, MEMORY[0x277CDFAA0], MEMORY[0x277CDF468]);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_24E701FE0(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
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

  v9 = *(sub_24F923F78() - 8);
  v10 = 8;
  if (*(v9 + 64) > 8uLL)
  {
    v10 = *(v9 + 64);
  }

  v11 = *(v6 + 80);
  if (!a2)
  {
    return 0;
  }

  if (a2 <= v8)
  {
    goto LABEL_28;
  }

  v12 = *(v9 + 80) & 0xF8 | 7;
  v13 = v10 + ((v12 + ((*(v6 + 64) + ((v11 + 56) & ~v11) + 7) & 0xFFFFFFFFFFFFFFF8) + 32) & ~v12) + 1;
  v14 = 8 * v13;
  if (v13 <= 3)
  {
    v17 = ((a2 - v8 + ~(-1 << v14)) >> v14) + 1;
    if (HIWORD(v17))
    {
      v15 = *(a1 + v13);
      if (!v15)
      {
        goto LABEL_28;
      }

      goto LABEL_17;
    }

    if (v17 > 0xFF)
    {
      v15 = *(a1 + v13);
      if (!*(a1 + v13))
      {
        goto LABEL_28;
      }

      goto LABEL_17;
    }

    if (v17 < 2)
    {
LABEL_28:
      if ((v7 & 0x80000000) != 0)
      {
        v20 = *(v6 + 48);

        return v20((((((a1 + 15) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + v11 + 16) & ~v11, v7, v5);
      }

      else
      {
        v19 = *a1;
        if (*a1 >= 0xFFFFFFFFuLL)
        {
          LODWORD(v19) = -1;
        }

        return (v19 + 1);
      }
    }
  }

  v15 = *(a1 + v13);
  if (!*(a1 + v13))
  {
    goto LABEL_28;
  }

LABEL_17:
  v18 = (v15 - 1) << v14;
  if (v13 > 3)
  {
    v18 = 0;
  }

  if (v13)
  {
    if (v13 > 3)
    {
      LODWORD(v13) = 4;
    }

    if (v13 > 2)
    {
      if (v13 == 3)
      {
        LODWORD(v13) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v13) = *a1;
      }
    }

    else if (v13 == 1)
    {
      LODWORD(v13) = *a1;
    }

    else
    {
      LODWORD(v13) = *a1;
    }
  }

  return v8 + (v13 | v18) + 1;
}

void sub_24E702260(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v24 = v8;
  v9 = *(v8 + 84);
  if (v9 <= 0x7FFFFFFF)
  {
    v10 = 0x7FFFFFFF;
  }

  else
  {
    v10 = *(v8 + 84);
  }

  v11 = *(sub_24F923F78() - 8);
  v12 = 8;
  if (*(v11 + 64) > 8uLL)
  {
    v12 = *(v11 + 64);
  }

  v13 = *(v8 + 80);
  v14 = *(v11 + 80) & 0xF8 | 7;
  v15 = v12 + ((v14 + ((*(v8 + 64) + ((v13 + 56) & ~v13) + 7) & 0xFFFFFFFFFFFFFFF8) + 32) & ~v14) + 1;
  if (a3 <= v10)
  {
    v16 = 0;
  }

  else if (v15 <= 3)
  {
    v19 = ((a3 - v10 + ~(-1 << (8 * v15))) >> (8 * v15)) + 1;
    if (HIWORD(v19))
    {
      v16 = 4;
    }

    else
    {
      if (v19 < 0x100)
      {
        v20 = 1;
      }

      else
      {
        v20 = 2;
      }

      if (v19 >= 2)
      {
        v16 = v20;
      }

      else
      {
        v16 = 0;
      }
    }
  }

  else
  {
    v16 = 1;
  }

  if (v10 < a2)
  {
    v17 = ~v10 + a2;
    if (v15 < 4)
    {
      v18 = (v17 >> (8 * v15)) + 1;
      if (v15)
      {
        v21 = v17 & ~(-1 << (8 * v15));
        bzero(a1, v15);
        if (v15 != 3)
        {
          if (v15 == 2)
          {
            *a1 = v21;
            if (v16 > 1)
            {
LABEL_49:
              if (v16 == 2)
              {
                *&a1[v15] = v18;
              }

              else
              {
                *&a1[v15] = v18;
              }

              return;
            }
          }

          else
          {
            *a1 = v17;
            if (v16 > 1)
            {
              goto LABEL_49;
            }
          }

          goto LABEL_46;
        }

        *a1 = v21;
        a1[2] = BYTE2(v21);
      }

      if (v16 > 1)
      {
        goto LABEL_49;
      }
    }

    else
    {
      bzero(a1, v15);
      *a1 = v17;
      v18 = 1;
      if (v16 > 1)
      {
        goto LABEL_49;
      }
    }

LABEL_46:
    if (v16)
    {
      a1[v15] = v18;
    }

    return;
  }

  if (v16 > 1)
  {
    if (v16 != 2)
    {
      *&a1[v15] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_33;
    }

    *&a1[v15] = 0;
  }

  else if (v16)
  {
    a1[v15] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_33;
  }

  if (!a2)
  {
    return;
  }

LABEL_33:
  if ((v9 & 0x80000000) != 0)
  {
    v23 = *(v24 + 56);

    v23((((((a1 + 15) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + v13 + 16) & ~v13, a2, v9, v7);
  }

  else
  {
    if ((a2 & 0x80000000) != 0)
    {
      v22 = a2 & 0x7FFFFFFF;
    }

    else
    {
      v22 = (a2 - 1);
    }

    *a1 = v22;
  }
}

uint64_t sub_24E702594(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213FB8, &unk_24F93C010);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + a3[5];

    return v9(v10, a2, v8);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v12 = *(a1 + a3[6]);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213FB0, &qword_24F93E6B0);
    v14 = *(*(v13 - 8) + 48);
    v15 = a1 + a3[7];

    return v14(v15, a2, v13);
  }
}

uint64_t sub_24E7026E8(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213FB8, &unk_24F93C010);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + a4[5];

    return v11(v12, a2, a2, v10);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[6]) = (a2 - 1);
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213FB0, &qword_24F93E6B0);
    v14 = *(*(v13 - 8) + 56);
    v15 = a1 + a4[7];

    return v14(v15, a2, a2, v13);
  }

  return result;
}

void sub_24E702828(uint64_t a1)
{
  sub_24E66ECF0(319, &qword_27F2191D0, &type metadata for MixedMediaItem);
  if (v1 <= 0x3F)
  {
    sub_24E7029DC(319, &qword_27F213FD8, type metadata accessor for GSKVideo, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_24E7029DC(319, &qword_27F2191D8, MEMORY[0x277D21C48], MEMORY[0x277D83940]);
      if (v3 <= 0x3F)
      {
        sub_24E7029DC(319, &qword_27F213FD0, MEMORY[0x277D21C48], MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          sub_24E7029DC(319, &qword_27F214D30, type metadata accessor for CardSafeArea, MEMORY[0x277CDF468]);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_24E7029DC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_24E702A44()
{
  result = qword_27F2191E0;
  if (!qword_27F2191E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2191E8, &qword_24F94BE78);
    sub_24E702AC8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2191E0);
  }

  return result;
}

unint64_t sub_24E702AC8()
{
  result = qword_27F2191F0;
  if (!qword_27F2191F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2190D0, &unk_24F94BD60);
    sub_24E701644();
    sub_24E701970();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2191F0);
  }

  return result;
}

uint64_t sub_24E702BF4()
{
  v1 = sub_24F9289E8();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214148, &qword_24F93C520) - 8);
  v6 = (v4 + *(v5 + 80) + 8) & ~*(v5 + 80);
  (*(v2 + 8))(v0 + v3, v1);

  v7 = sub_24F922348();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(v0 + v6, 1, v7))
  {
    (*(v8 + 8))(v0 + v6, v7);
  }

  return swift_deallocObject();
}

unint64_t sub_24E702DB8()
{
  result = qword_27F219298;
  if (!qword_27F219298)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F219228, &qword_24F9501B0);
    sub_24E702E44();
    sub_24E702ED0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F219298);
  }

  return result;
}

unint64_t sub_24E702E44()
{
  result = qword_27F2192A0;
  if (!qword_27F2192A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2192A8, &unk_24F94BFE0);
    sub_24E702ED0();
    sub_24E63E080();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2192A0);
  }

  return result;
}

unint64_t sub_24E702ED0()
{
  result = qword_27F2192B0;
  if (!qword_27F2192B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F219220, &unk_24F94BF40);
    sub_24E703214(&qword_27F2192B8, &qword_27F2192C0, &qword_24F950260, sub_24E702F88);
    sub_24E702F88();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2192B0);
  }

  return result;
}

unint64_t sub_24E702F88()
{
  result = qword_27F2192C8;
  if (!qword_27F2192C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F219218, &unk_24F9501A0);
    sub_24E7017E4(&qword_27F2141D8, type metadata accessor for GSKVideoView, &unk_24F949084);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2192C8);
  }

  return result;
}

unint64_t sub_24E703044()
{
  result = qword_27F2192D8;
  if (!qword_27F2192D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F219200, &qword_24F94BF20);
    sub_24E7030D0();
    sub_24E70315C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2192D8);
  }

  return result;
}

unint64_t sub_24E7030D0()
{
  result = qword_27F2192E0;
  if (!qword_27F2192E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2192E8, &unk_24F94BFF0);
    sub_24E70315C();
    sub_24E63E080();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2192E0);
  }

  return result;
}

unint64_t sub_24E70315C()
{
  result = qword_27F2192F0;
  if (!qword_27F2192F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2191F8, &unk_24F950190);
    sub_24E703214(&qword_27F2192F8, &qword_27F219300, &unk_24F950250, sub_24E7032C8);
    sub_24E7032C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2192F0);
  }

  return result;
}

uint64_t sub_24E703214(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    sub_24E7017E4(&qword_27F2192D0, type metadata accessor for HeroMediaBlurModifier, &unk_24F9B5F88);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_24E7032C8()
{
  result = qword_27F219308;
  if (!qword_27F219308)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F219310, &unk_24F94C000);
    sub_24E602068(&qword_27F2141B8, &qword_27F2141C0, &qword_24F93C5B0, MEMORY[0x277CDF7D8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F219308);
  }

  return result;
}

unint64_t sub_24E703380()
{
  result = qword_27F219318;
  if (!qword_27F219318)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F219260, &qword_24F94BF80);
    sub_24E70340C();
    sub_24E70388C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F219318);
  }

  return result;
}

unint64_t sub_24E70340C()
{
  result = qword_27F219320;
  if (!qword_27F219320)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F219290, &qword_24F94BFB0);
    sub_24E703498();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F219320);
  }

  return result;
}

unint64_t sub_24E703498()
{
  result = qword_27F219328;
  if (!qword_27F219328)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F219288, &qword_24F94BFA8);
    sub_24E703524();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F219328);
  }

  return result;
}

unint64_t sub_24E703524()
{
  result = qword_27F219330;
  if (!qword_27F219330)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F219280, &qword_24F94BFA0);
    sub_24E7035B0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F219330);
  }

  return result;
}

unint64_t sub_24E7035B0()
{
  result = qword_27F219338;
  if (!qword_27F219338)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F219278, &qword_24F94BF98);
    sub_24E602068(&qword_27F219340, &qword_27F219270, &qword_24F94BF90, MEMORY[0x277CDF510]);
    sub_24E703668();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F219338);
  }

  return result;
}

unint64_t sub_24E703668()
{
  result = qword_27F219348;
  if (!qword_27F219348)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F219350, &qword_24F94C010);
    sub_24E7036EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F219348);
  }

  return result;
}

unint64_t sub_24E7036EC()
{
  result = qword_27F219358;
  if (!qword_27F219358)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F219360, &qword_24F94C018);
    sub_24E7037A4();
    sub_24E602068(&qword_27F219378, &qword_27F219380, &qword_24F94C030, MEMORY[0x277CDF7D8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F219358);
  }

  return result;
}

unint64_t sub_24E7037A4()
{
  result = qword_27F219368;
  if (!qword_27F219368)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F219370, &unk_24F94C020);
    sub_24E7017E4(&qword_27F2141D8, type metadata accessor for GSKVideoView, &unk_24F949084);
    sub_24E602068(&qword_27F216528, &qword_27F2164C8, &qword_24F9423C0, MEMORY[0x277CDF4F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F219368);
  }

  return result;
}

unint64_t sub_24E70388C()
{
  result = qword_27F219388;
  if (!qword_27F219388)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F219240, &qword_24F94BF60);
    sub_24E703918();
    sub_24E7039A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F219388);
  }

  return result;
}

unint64_t sub_24E703918()
{
  result = qword_27F219390;
  if (!qword_27F219390)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F219398, &qword_24F94C038);
    sub_24E7039A4();
    sub_24E63E080();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F219390);
  }

  return result;
}

unint64_t sub_24E7039A4()
{
  result = qword_27F2193A0;
  if (!qword_27F2193A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F219238, &qword_24F94BF58);
    sub_24E703214(&qword_27F2193A8, &qword_27F2193B0, &qword_24F94C040, sub_24E703A5C);
    sub_24E703A5C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2193A0);
  }

  return result;
}

unint64_t sub_24E703A5C()
{
  result = qword_27F2193B8;
  if (!qword_27F2193B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F219230, &qword_24F94BF50);
    sub_24E7017E4(&qword_27F2193C0, type metadata accessor for CardElementView.PrimaryMixedMediaView, &unk_24FA04A98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2193B8);
  }

  return result;
}

unint64_t sub_24E703B18()
{
  result = qword_27F2193C8;
  if (!qword_27F2193C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F219210, &unk_24F94BF30);
    sub_24E702DB8();
    sub_24E703044();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2193C8);
  }

  return result;
}

unint64_t sub_24E703BA4()
{
  result = qword_27F2193D8;
  if (!qword_27F2193D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F219268, &qword_24F94BF88);
    sub_24E703380();
    sub_24E703B18();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2193D8);
  }

  return result;
}

unint64_t sub_24E703C30()
{
  result = qword_27F2193E0;
  if (!qword_27F2193E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2193D0, &qword_24F94C048);
    sub_24E703CBC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2193E0);
  }

  return result;
}

unint64_t sub_24E703CBC()
{
  result = qword_27F2193E8;
  if (!qword_27F2193E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2193F0, &qword_24F94C050);
    sub_24E703D48();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2193E8);
  }

  return result;
}

unint64_t sub_24E703D48()
{
  result = qword_27F2193F8;
  if (!qword_27F2193F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F219400, &qword_24F94C058);
    sub_24E703DD4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2193F8);
  }

  return result;
}

unint64_t sub_24E703DD4()
{
  result = qword_27F219408;
  if (!qword_27F219408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F219408);
  }

  return result;
}

uint64_t sub_24E703E40()
{
  v1 = sub_24F9289E8();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_24E703EC8()
{
  sub_24F9289E8();

  return sub_24E700CF4();
}

unint64_t sub_24E703F48()
{
  result = qword_27F219448;
  if (!qword_27F219448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F219448);
  }

  return result;
}

unint64_t sub_24E703FA4()
{
  result = qword_27F219460;
  if (!qword_27F219460)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F219450, &qword_24F94C148);
    sub_24E602068(&qword_27F219468, &qword_27F219470, &unk_24F94C188, MEMORY[0x277CE1138]);
    sub_24E602068(&unk_27F212AB0, &qword_27F236350, &qword_24F939870, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F219460);
  }

  return result;
}

__n128 __swift_memcpy97_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_24E7040BC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 97))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24E704104(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_24E704180(uint64_t a1)
{
  result = type metadata accessor for GSKVideo(319);
  if (v2 <= 0x3F)
  {
    result = sub_24F9289E8();
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_24E704208(uint64_t a1, uint64_t a2)
{
  v4 = sub_24F922348();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_24E704288(uint64_t a1, uint64_t a2)
{
  v4 = sub_24F922348();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_24E7042F8(uint64_t a1)
{
  result = sub_24F922348();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_24E704370()
{
  result = qword_27F219508;
  if (!qword_27F219508)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F219510, &qword_24F94C2D8);
    sub_24E7043F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F219508);
  }

  return result;
}

unint64_t sub_24E7043F4()
{
  result = qword_27F219518;
  if (!qword_27F219518)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F219410, &unk_24F94C060);
    sub_24E703BA4();
    sub_24E703C30();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F219518);
  }

  return result;
}

uint64_t sub_24E704480(uint64_t *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F219450, &qword_24F94C148);
  sub_24F924E38();
  sub_24E703FA4();
  return swift_getWitnessTable();
}

uint64_t sub_24E704578()
{

  return swift_deallocObject();
}

uint64_t sub_24E7045D8()
{

  return swift_deallocObject();
}

uint64_t sub_24E704610(char *a1)
{
  v3 = *(v1 + 16);
  v4 = *a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2195C0, &qword_24F94C4A8);
  return v3(v4, &a1[*(v5 + 48)]);
}

unint64_t sub_24E7046B0()
{
  result = qword_27F219558;
  if (!qword_27F219558)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F219548, &qword_24F94C470);
    sub_24E70473C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F219558);
  }

  return result;
}

unint64_t sub_24E70473C()
{
  result = qword_27F219560;
  if (!qword_27F219560)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F219568, &qword_24F94C478);
    sub_24E7047C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F219560);
  }

  return result;
}

unint64_t sub_24E7047C8()
{
  result = qword_27F219570;
  if (!qword_27F219570)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F219578, &unk_24F94C480);
    sub_24E704880();
    sub_24E602068(&qword_27F2195B0, &qword_27F2195B8, &qword_24F94C4A0, MEMORY[0x277CE04A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F219570);
  }

  return result;
}

unint64_t sub_24E704880()
{
  result = qword_27F219580;
  if (!qword_27F219580)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F219588, &unk_24F97F9F0);
    sub_24E70490C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F219580);
  }

  return result;
}

unint64_t sub_24E70490C()
{
  result = qword_27F219590;
  if (!qword_27F219590)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F219598, &unk_24F94C490);
    sub_24E7017E4(&qword_27F216790, type metadata accessor for GameIcon, &protocol conformance descriptor for GameIcon);
    sub_24E602068(&qword_27F2195A0, &qword_27F2195A8, &qword_24F97FA00, MEMORY[0x277CE0328]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F219590);
  }

  return result;
}

unint64_t sub_24E704A58()
{
  result = qword_27F2195D8;
  if (!qword_27F2195D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2195D0, &unk_24F94C4F0);
    sub_24E6E97A8();
    sub_24E602068(&qword_27F216528, &qword_27F2164C8, &qword_24F9423C0, MEMORY[0x277CDF4F0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2195D8);
  }

  return result;
}

void sub_24E704B10(uint64_t a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v10 = sub_24F923A38();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2195E0, &qword_24F94C500);
  MEMORY[0x28223BE20](v14 - 8);
  v67 = &v54 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v65 = (&v54 - v17);
  v18 = sub_24F923BB8();
  v58 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v60 = &v54 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2195E8, &qword_24F94C508);
  v20 = *(v66 - 8);
  MEMORY[0x28223BE20](v66);
  v63 = &v54 - v21;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2195F0, &unk_24F94C510);
  MEMORY[0x28223BE20](v57);
  v23 = &v54 - v22;
  sub_24E7017E4(&qword_27F2195F8, MEMORY[0x277CDF7F8], MEMORY[0x277CDF820]);
  sub_24F92BB88();
  sub_24F92BC08();
  if (sub_24F92BBF8() < 1)
  {
    return;
  }

  v55 = v20;
  v56 = v11;
  v70.origin.x = a2;
  v70.origin.y = a3;
  v70.size.width = a4;
  v70.size.height = a5;
  CGRectGetHeight(v70);
  v24 = v64;
  sub_24F9222F8();
  v26 = v25;
  v27 = type metadata accessor for ScreenshotHStackLayout(0);
  v28 = 0;
  v29 = *(v24 + *(v27 + 20));
  do
  {
    v30 = v28 + 1;
    if (__OFADD__(v28, 1))
    {
      __break(1u);
      goto LABEL_19;
    }

    v31 = v28;
    v71.origin.x = a2;
    v71.origin.y = a3;
    v71.size.width = a4;
    v71.size.height = a5;
    if (v26 * (v28 + 1) + v29 * v28 >= CGRectGetWidth(v71))
    {
      break;
    }

    sub_24F92BB88();
    sub_24F92BC08();
    v32 = sub_24F92BBF8();
    v28 = v31 + 1;
  }

  while (v32 >= v30);
  if (__OFSUB__(v31, 1))
  {
LABEL_19:
    __break(1u);
    return;
  }

  v61 = v13;
  v62 = v10;
  v72.origin.x = a2;
  v72.origin.y = a3;
  v72.size.width = a4;
  v72.size.height = a5;
  v33 = v31 - 1;
  v34 = (CGRectGetWidth(v72) - (v26 * v31 + v29 * v33)) * 0.5;
  v73.origin.x = a2;
  v73.origin.y = a3;
  v73.size.width = a4;
  v73.size.height = a5;
  v35 = CGRectGetMinX(v73) + v34;
  (*(*&v58 + 16))(v60, a1, v18);
  sub_24E7017E4(&qword_27F219600, MEMORY[0x277CDF7F8], MEMORY[0x277CDF818]);
  v36 = v63;
  sub_24F921BA8();
  v37 = v55;
  v38 = v66;
  (*(v55 + 16))(v23, v36, v66);
  v39 = *(v57 + 36);
  sub_24E602068(&qword_27F219608, &qword_27F2195E8, &qword_24F94C508, MEMORY[0x277D7EC40]);
  sub_24F92BB88();
  (*(v37 + 8))(v36, v38);
  v60 = (v56 + 32);
  v63 = (v56 + 8);
  v58 = v26;
  v40 = v26 + v29;
  v64 = v39;
  v59 = v31;
LABEL_8:
  v41 = v67;
  while (1)
  {
    sub_24F92BC08();
    if (*&v23[v39] == v68[0])
    {
      v42 = 1;
    }

    else
    {
      v43 = sub_24F92BC88();
      sub_24E60169C(v44, v41, &qword_27F219610, &unk_24F9BFEA0);
      v43(v68, 0);
      v31 = v59;
      sub_24F92BC18();
      v42 = 0;
    }

    v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219610, &unk_24F9BFEA0);
    (*(*(v45 - 8) + 56))(v41, v42, 1, v45);
    v46 = v41;
    v47 = v65;
    sub_24E6009C8(v46, v65, &qword_27F2195E0, &qword_24F94C500);
    v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219610, &unk_24F9BFEA0);
    if ((*(*(v48 - 8) + 48))(v47, 1, v48) == 1)
    {
      break;
    }

    v49 = *v47;
    v50 = *(v48 + 48);
    v51 = v61;
    v52 = v47 + v50;
    v53 = v62;
    (*v60)(v61, v52, v62);
    if (v49 < v31)
    {
      v74.origin.x = a2;
      v74.origin.y = a3;
      v74.size.width = a4;
      v74.size.height = a5;
      CGRectGetMinY(v74);
      v75.origin.x = a2;
      v75.origin.y = a3;
      v75.size.width = a4;
      v75.size.height = a5;
      CGRectGetHeight(v75);
      sub_24F927828();
      LOBYTE(v68[0]) = 0;
      v69 = 0;
      sub_24F923A28();
      (*v63)(v51, v53);
      v35 = v40 + v35;
      v39 = v64;
      goto LABEL_8;
    }

    sub_24F927828();
    LOBYTE(v68[0]) = 0;
    v69 = 0;
    sub_24F923A28();
    (*v63)(v51, v53);
    v41 = v67;
    v39 = v64;
  }

  sub_24E601704(v23, &qword_27F2195F0, &unk_24F94C510);
}

unint64_t sub_24E7053B8()
{
  result = qword_27F219628;
  if (!qword_27F219628)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F219630, &qword_24F94C528);
    sub_24E704A58();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F219628);
  }

  return result;
}

uint64_t sub_24E705458(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440, &unk_24F942BD0);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[6];
LABEL_11:
    v14 = *(v10 + 48);

    return v14(a1 + v11, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[7];
    goto LABEL_11;
  }

  v13 = type metadata accessor for CommonCardAttributes(0);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a3[8];
    goto LABEL_11;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213FB0, &qword_24F93E6B0);
  v16 = *(*(v15 - 8) + 48);
  v17 = a1 + a3[14];

  return v16(v17, a2, v15);
}

uint64_t sub_24E705644(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
    return result;
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440, &unk_24F942BD0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[6];
LABEL_9:
    v14 = *(v10 + 56);

    return v14(v5 + v11, a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[7];
    goto LABEL_9;
  }

  v13 = type metadata accessor for CommonCardAttributes(0);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[8];
    goto LABEL_9;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213FB0, &qword_24F93E6B0);
  v16 = *(*(v15 - 8) + 56);
  v17 = v5 + a4[14];

  return v16(v17, a2, a2, v15);
}

uint64_t type metadata accessor for SearchCard(uint64_t a1)
{
  result = qword_27F219638;
  if (!qword_27F219638)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24E705868(uint64_t a1)
{
  sub_24E61C7D0(319);
  if (v1 <= 0x3F)
  {
    sub_24E65B038(319, &qword_27F213EA0, &qword_27F213EA8, &unk_24F93D030);
    if (v2 <= 0x3F)
    {
      sub_24E65B038(319, &qword_27F215458, &qword_27F215460, &qword_24F942C00);
      if (v3 <= 0x3F)
      {
        sub_24E705BB0(319, &qword_27F213EB0, MEMORY[0x277D21F70], MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          type metadata accessor for CommonCardAttributes(319);
          if (v5 <= 0x3F)
          {
            sub_24E705A8C(319);
            if (v6 <= 0x3F)
            {
              sub_24E705BB0(319, &qword_27F2191B0, type metadata accessor for Player, MEMORY[0x277D83940]);
              if (v7 <= 0x3F)
              {
                sub_24E66ECF0(319, &qword_27F2191B8, MEMORY[0x277D839F8]);
                if (v8 <= 0x3F)
                {
                  sub_24E66ECF0(319, &qword_27F254DE0, MEMORY[0x277D837D0]);
                  if (v9 <= 0x3F)
                  {
                    sub_24E705BB0(319, &qword_27F213FD0, MEMORY[0x277D21C48], MEMORY[0x277D83D88]);
                    if (v10 <= 0x3F)
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
}

void sub_24E705A8C(uint64_t a1)
{
  if (!qword_27F219648)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F219650, qword_24F974DB0);
    sub_24E705AFC();
    v1 = sub_24F927EA8();
    if (!v2)
    {
      atomic_store(v1, &qword_27F219648);
    }
  }
}

unint64_t sub_24E705AFC()
{
  result = qword_27F219658;
  if (!qword_27F219658)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F219650, qword_24F974DB0);
    sub_24E706CA8(&qword_27F219660, type metadata accessor for Artwork, &protocol conformance descriptor for Artwork);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F219658);
  }

  return result;
}

void sub_24E705BB0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_24E705C14(unsigned __int8 a1)
{
  if (a1 <= 4u)
  {
    v6 = 25705;
    v7 = 0x4D747865746E6F63;
    v8 = 0xD000000000000011;
    if (a1 != 3)
    {
      v8 = 0xD000000000000014;
    }

    if (a1 != 2)
    {
      v7 = v8;
    }

    if (a1)
    {
      v6 = 0x6575676573;
    }

    if (a1 <= 1u)
    {
      return v6;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    v1 = 0xD000000000000014;
    v2 = 0x65726E6567;
    if (a1 != 9)
    {
      v2 = 0x74724165726E6567;
    }

    if (a1 != 8)
    {
      v1 = v2;
    }

    v3 = 0x68736E6565726373;
    v4 = 0x5073646E65697266;
    if (a1 != 6)
    {
      v4 = 0x7641676E69746172;
    }

    if (a1 != 5)
    {
      v3 = v4;
    }

    if (a1 <= 7u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_24E705D9C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v43 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213FB0, &qword_24F93E6B0);
  MEMORY[0x28223BE20](v3 - 8);
  v44 = &v42 - v4;
  v5 = type metadata accessor for CommonCardAttributes(0);
  MEMORY[0x28223BE20](v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v42 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440, &unk_24F942BD0);
  MEMORY[0x28223BE20](v9);
  v11 = &v42 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219680, &qword_24F94C5F0);
  v13 = *(v12 - 8);
  v46 = v12;
  v47 = v13;
  MEMORY[0x28223BE20](v12);
  v15 = &v42 - v14;
  v16 = type metadata accessor for SearchCard(0);
  MEMORY[0x28223BE20](v16);
  v18 = &v42 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v18 + 40) = 0u;
  v56 = 0;
  v54 = 0u;
  v55 = 0u;
  *(v18 + 56) = 0u;
  *(v18 + 9) = 0;
  v52 = v18 + 40;
  sub_24E61DA68(&v54, (v18 + 40), qword_27F21B590, &unk_24F93BE30);
  v50 = v16;
  v19 = *(v16 + 24);
  v20 = sub_24F92A6D8();
  v21 = *(*(v20 - 8) + 56);
  v51 = v19;
  v53 = v18;
  v21(&v18[v19], 1, 1, v20);
  v22 = a1[3];
  v49 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v22);
  sub_24E706B3C();
  v45 = v15;
  v23 = v48;
  sub_24F92D108();
  if (v23)
  {
    __swift_destroy_boxed_opaque_existential_1(v49);
    v25 = v53;
    sub_24E601704(v52, qword_27F24EC90, &unk_24F93C1D0);
    return sub_24E601704(v25 + v51, &qword_27F215440, &unk_24F942BD0);
  }

  else
  {
    v24 = v8;
    v48 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F18, &qword_24F93BE20);
    v57 = 0;
    sub_24E602068(&qword_27F213F30, &qword_27F213F18, &qword_24F93BE20, MEMORY[0x277D21DC0]);
    sub_24F92CC68();
    v26 = v55;
    v27 = v53;
    *v53 = v54;
    v27[1] = v26;
    *(v27 + 4) = v56;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F24EC90, &unk_24F93C1D0);
    v57 = 1;
    sub_24E61D970();
    sub_24F92CC68();
    v28 = v50;
    sub_24E61DA68(&v54, v52, qword_27F24EC90, &unk_24F93C1D0);
    LOBYTE(v54) = 2;
    sub_24E65CAA0();
    v29 = v11;
    sub_24F92CC68();
    v30 = v53;
    sub_24E61DA68(v29, v53 + v51, &qword_27F215440, &unk_24F942BD0);
    sub_24F929608();
    LOBYTE(v54) = 3;
    sub_24E706CA8(&qword_27F213F48, MEMORY[0x277D21F70], MEMORY[0x277D21F88]);
    sub_24F92CC18();
    sub_24E6009C8(v24, v30 + v28[7], &qword_27F213E68, &unk_24F93BC80);
    LOBYTE(v54) = 4;
    sub_24E706CA8(&qword_27F219690, type metadata accessor for CommonCardAttributes, &unk_24F9600E0);
    sub_24F92CC68();
    sub_24E706B90(0, v30 + v28[8]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219698, &unk_24F98E430);
    v57 = 5;
    sub_24E602068(&qword_27F2196A0, &qword_27F219698, &unk_24F98E430, MEMORY[0x277D21968]);
    sub_24F92CC68();
    *(v30 + v28[9]) = v54;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F247240, qword_24F957DE0);
    v57 = 6;
    sub_24E706BF4();
    sub_24F92CC68();
    *(v30 + v28[10]) = v54;
    LOBYTE(v54) = 7;
    v31 = sub_24F92CBE8();
    v32 = v30 + v28[11];
    *v32 = v31;
    v32[8] = v33 & 1;
    LOBYTE(v54) = 8;
    v34 = sub_24F92CBC8();
    v35 = (v30 + v28[12]);
    *v35 = v34;
    v35[1] = v36;
    LOBYTE(v54) = 9;
    v37 = sub_24F92CBC8();
    v38 = (v53 + v50[13]);
    *v38 = v37;
    v38[1] = v39;
    sub_24F9289E8();
    LOBYTE(v54) = 10;
    sub_24E706CA8(&qword_27F214018, MEMORY[0x277D21C48], MEMORY[0x277D21C60]);
    sub_24F92CC18();
    (*(v47 + 8))(v45, v46);
    v40 = v53;
    sub_24E6009C8(v44, v53 + v50[14], &qword_27F213FB0, &qword_24F93E6B0);
    sub_24E706CF0(v40, v43, type metadata accessor for SearchCard);
    __swift_destroy_boxed_opaque_existential_1(v49);
    return sub_24E706D58(v40, type metadata accessor for SearchCard);
  }
}

uint64_t sub_24E7068B4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24E707010(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24E7068E8(uint64_t a1)
{
  v2 = sub_24E706B3C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24E706924(uint64_t a1)
{
  v2 = sub_24E706B3C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24E706998@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440, &unk_24F942BD0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v9 - v6;
  sub_24E60169C(v2 + *(a1 + 24), &v9 - v6, &qword_27F215440, &unk_24F942BD0);
  return sub_24E6009C8(v7, a2, &qword_27F215460, &qword_24F942C00);
}

uint64_t sub_24E706A70(uint64_t a1)
{
  *(a1 + 8) = sub_24E706CA8(&qword_27F219668, type metadata accessor for SearchCard, &unk_24F94C5AC);
  result = sub_24E706CA8(&qword_27F219670, type metadata accessor for SearchCard, &unk_24F94C568);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_24E706B3C()
{
  result = qword_27F219688;
  if (!qword_27F219688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F219688);
  }

  return result;
}

uint64_t sub_24E706B90(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CommonCardAttributes(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_24E706BF4()
{
  result = qword_27F2196A8;
  if (!qword_27F2196A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27F247240, qword_24F957DE0);
    sub_24E706CA8(&qword_27F213E38, type metadata accessor for Player, &protocol conformance descriptor for Player);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2196A8);
  }

  return result;
}

uint64_t sub_24E706CA8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24E706CF0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24E706D58(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t getEnumTagSinglePayload for SearchCard.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF6)
  {
    goto LABEL_17;
  }

  if (a2 + 10 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 10) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 10;
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

      return (*a1 | (v4 << 8)) - 10;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 10;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xB;
  v8 = v6 - 11;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SearchCard.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF6)
  {
    v4 = 0;
  }

  if (a2 > 0xF5)
  {
    v5 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
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
    *result = a2 + 10;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_24E706F0C()
{
  result = qword_27F2196B0;
  if (!qword_27F2196B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2196B0);
  }

  return result;
}

unint64_t sub_24E706F64()
{
  result = qword_27F2196B8;
  if (!qword_27F2196B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2196B8);
  }

  return result;
}

unint64_t sub_24E706FBC()
{
  result = qword_27F2196C0;
  if (!qword_27F2196C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2196C0);
  }

  return result;
}

uint64_t sub_24E707010(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6575676573 && a2 == 0xE500000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x4D747865746E6F63 && a2 == 0xEB00000000756E65 || (sub_24F92CE08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000011 && 0x800000024FA451D0 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000014 && 0x800000024FA46110 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x68736E6565726373 && a2 == 0xEB0000000073746FLL || (sub_24F92CE08() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x5073646E65697266 && a2 == 0xEE00676E6979616CLL || (sub_24F92CE08() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x7641676E69746172 && a2 == 0xED00006567617265 || (sub_24F92CE08() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000014 && 0x800000024FA46130 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x65726E6567 && a2 == 0xE500000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x74724165726E6567 && a2 == 0xEC0000006B726F77)
  {

    return 10;
  }

  else
  {
    v6 = sub_24F92CE08();

    if (v6)
    {
      return 10;
    }

    else
    {
      return 11;
    }
  }
}

uint64_t sub_24E7073A0@<X0>(_OWORD *a1@<X8>)
{
  swift_getKeyPath();
  *&v15[0] = v1;
  sub_24E70D570(&qword_27F215688, type metadata accessor for SearchPagePresenter, &unk_24F94C97C);
  sub_24F91FD88();

  v3 = *(v1 + 136);
  v4 = *(v1 + 168);
  v15[8] = *(v1 + 152);
  v15[9] = v4;
  v15[10] = *(v1 + 184);
  v5 = *(v1 + 72);
  v6 = *(v1 + 104);
  v15[4] = *(v1 + 88);
  v15[5] = v6;
  v15[6] = *(v1 + 120);
  v15[7] = v3;
  v7 = *(v1 + 40);
  v15[0] = *(v1 + 24);
  v15[1] = v7;
  v15[2] = *(v1 + 56);
  v15[3] = v5;
  v8 = *(v1 + 136);
  v9 = *(v1 + 168);
  a1[8] = *(v1 + 152);
  a1[9] = v9;
  a1[10] = *(v1 + 184);
  v10 = *(v1 + 72);
  v11 = *(v1 + 104);
  a1[4] = *(v1 + 88);
  a1[5] = v11;
  a1[6] = *(v1 + 120);
  a1[7] = v8;
  v12 = *(v1 + 40);
  *a1 = *(v1 + 24);
  a1[1] = v12;
  a1[2] = *(v1 + 56);
  a1[3] = v10;
  return sub_24E6691F8(v15, &v14);
}

uint64_t sub_24E7074DC()
{
  swift_getKeyPath();
  sub_24E70D570(&qword_27F215688, type metadata accessor for SearchPagePresenter, &unk_24F94C97C);
  sub_24F91FD88();

  v1 = *(v0 + 216);

  return v1;
}

uint64_t sub_24E70758C@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_24E70D570(&qword_27F215688, type metadata accessor for SearchPagePresenter, &unk_24F94C97C);
  sub_24F91FD88();

  v3 = OBJC_IVAR____TtC12GameStoreKit19SearchPagePresenter__searchSuggestions;
  swift_beginAccess();
  return sub_24E70D448(v5 + v3, a1);
}

uint64_t sub_24E707654(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, char a8)
{
  v9 = v8;
  v57 = a1;
  v58 = a2;
  v16 = sub_24F91F6B8();
  v55 = *(v16 - 8);
  v56 = v16;
  MEMORY[0x28223BE20](v16);
  v54 = &v53 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(v9 + 272);
  v19 = *(v9 + 280);
  *(v9 + 272) = a3;
  *(v9 + 280) = a4;
  *(v9 + 288) = a5;
  sub_24E70D68C(v18, v19);
  v21 = *(v9 + 248);
  v20 = *(v9 + 256);
  *(v9 + 248) = a6;
  *(v9 + 256) = a7;
  *(v9 + 264) = a8;

  sub_24E70D68C(v21, v20);
  swift_getKeyPath();
  *&v81[0] = v9;
  sub_24E70D570(&qword_27F215688, type metadata accessor for SearchPagePresenter, &unk_24F94C97C);

  sub_24F91FD88();

  v22 = *(v9 + 136);
  v23 = *(v9 + 168);
  v81[8] = *(v9 + 152);
  v81[9] = v23;
  v81[10] = *(v9 + 184);
  v24 = *(v9 + 72);
  v25 = *(v9 + 104);
  v81[4] = *(v9 + 88);
  v81[5] = v25;
  v81[6] = *(v9 + 120);
  v81[7] = v22;
  v26 = *(v9 + 40);
  v81[0] = *(v9 + 24);
  v81[1] = v26;
  v81[2] = *(v9 + 56);
  v81[3] = v24;
  result = sub_24E66927C(v81);
  if (result == 1)
  {
    v28 = [objc_opt_self() defaultCenter];
    if (qword_27F210510 != -1)
    {
      swift_once();
    }

    [v28 addObserver:v9 selector:? name:? object:?];

    v30 = v57;
    v29 = v58;
    if (!v58)
    {
      goto LABEL_9;
    }

    v31 = HIBYTE(v58) & 0xF;
    if ((v58 & 0x2000000000000000) == 0)
    {
      v31 = v57 & 0xFFFFFFFFFFFFLL;
    }

    if (v31)
    {
      *(v9 + 232) = v57;
      *(v9 + 240) = v29;
      swift_bridgeObjectRetain_n();

      sub_24E707BCC(v30, v29);

      v32 = sub_24E608B90(MEMORY[0x277D84F90]);
      v33 = v54;
      sub_24F91F6A8();
      v34 = sub_24F91F668();
      v36 = v35;
      (*(v55 + 8))(v33, v56);
      *&v72 = v34;
      *(&v72 + 1) = v36;
      *&v73 = v30;
      *(&v73 + 1) = v29;
      LOBYTE(v74) = 4;
      *&v75 = 0;
      *(&v74 + 1) = 0;
      *(&v75 + 1) = v32;
      LOWORD(v76[0]) = 4;
      BYTE2(v76[0]) = 0;
      *(v76 + 8) = 0u;
      *(&v76[1] + 8) = 0u;
      *(&v76[2] + 1) = 0;
      v77 = 1uLL;
      v78 = 0uLL;
      LOBYTE(v79) = 0;
      *(&v79 + 1) = 0;
      v80 = 0uLL;
      CGSizeMake();
      v69 = v78;
      v70 = v79;
      v71 = v80;
      v65 = v76[0];
      v66 = v76[1];
      v67 = v76[2];
      v68 = v77;
      v61 = v72;
      v62 = v73;
      v63 = v74;
      v64 = v75;
      sub_24E708F2C(&v61);
    }

    else
    {
LABEL_9:
      sub_24E669254(v60);
      v78 = v60[8];
      v79 = v60[9];
      v80 = v60[10];
      v76[0] = v60[4];
      v76[1] = v60[5];
      v76[2] = v60[6];
      v77 = v60[7];
      v72 = v60[0];
      v73 = v60[1];
      v74 = v60[2];
      v75 = v60[3];
      v37 = *(v9 + 136);
      v38 = *(v9 + 168);
      v69 = *(v9 + 152);
      v70 = v38;
      v71 = *(v9 + 184);
      v39 = *(v9 + 72);
      v40 = *(v9 + 104);
      v65 = *(v9 + 88);
      v66 = v40;
      v67 = *(v9 + 120);
      v68 = v37;
      v41 = *(v9 + 40);
      v61 = *(v9 + 24);
      v62 = v41;
      v63 = *(v9 + 56);
      v64 = v39;
      if (sub_24E66927C(&v61) >= 2)
      {
        v43 = *(v9 + 136);
        v44 = *(v9 + 168);
        v59[8] = *(v9 + 152);
        v59[9] = v44;
        v59[10] = *(v9 + 184);
        v45 = *(v9 + 72);
        v46 = *(v9 + 104);
        v59[4] = *(v9 + 88);
        v59[5] = v46;
        v59[6] = *(v9 + 120);
        v59[7] = v43;
        v47 = *(v9 + 40);
        v59[0] = *(v9 + 24);
        v59[1] = v47;
        v59[2] = *(v9 + 56);
        v59[3] = v45;
        v48 = v76[2];
        *(v9 + 136) = v77;
        v49 = v79;
        *(v9 + 152) = v78;
        *(v9 + 168) = v49;
        *(v9 + 184) = v80;
        v50 = v74;
        *(v9 + 72) = v75;
        v51 = v76[1];
        *(v9 + 88) = v76[0];
        *(v9 + 104) = v51;
        *(v9 + 120) = v48;
        v52 = v73;
        *(v9 + 24) = v72;
        *(v9 + 40) = v52;
        *(v9 + 56) = v50;
        sub_24E70D2CC(v59);
        sub_24E708AD8();
      }

      else
      {
        KeyPath = swift_getKeyPath();
        MEMORY[0x28223BE20](KeyPath);
        *(&v53 - 2) = v9;
        *(&v53 - 1) = &v72;
        *&v59[0] = v9;
        sub_24F91FD78();
      }
    }

    sub_24E70A270();
    return sub_24E70A56C();
  }

  return result;
}

uint64_t sub_24E707BCC(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 216);
  v5 = *(v2 + 224);
  v7 = v6 == a1 && v5 == a2;
  if (v7 || (sub_24F92CE08() & 1) != 0)
  {
    *(v2 + 216) = a1;
    *(v2 + 224) = a2;
    sub_24E709364(v6, v5);
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_24E70D570(&qword_27F215688, type metadata accessor for SearchPagePresenter, &unk_24F94C97C);
    sub_24F91FD78();
  }
}

uint64_t sub_24E707D3C()
{
  swift_getKeyPath();
  sub_24E70D570(&qword_27F215688, type metadata accessor for SearchPagePresenter, &unk_24F94C97C);
  sub_24F91FD88();

  return *(v0 + 289);
}

uint64_t sub_24E707DDC(uint64_t result)
{
  if (*(v1 + 289) == (result & 1))
  {
    *(v1 + 289) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_24E70D570(&qword_27F215688, type metadata accessor for SearchPagePresenter, &unk_24F94C97C);
    sub_24F91FD78();
  }

  return result;
}

void sub_24E707EEC(uint64_t a1, uint64_t a2, unsigned __int8 *a3)
{
  v4 = v3;
  v8 = sub_24F91F6B8();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v57[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = *a3;
  if (a2)
  {
    v13 = a2;
  }

  else
  {
    a1 = *(v4 + 232);
    v14 = *(v4 + 240);

    v13 = v14;
  }

  *(v4 + 232) = a1;
  *(v4 + 240) = v13;

  sub_24E707BCC(a1, v13);
  swift_getKeyPath();
  *&v93 = v4;
  sub_24E70D570(&qword_27F215688, type metadata accessor for SearchPagePresenter, &unk_24F94C97C);
  sub_24F91FD88();

  v15 = *(v4 + 136);
  v16 = *(v4 + 168);
  v90 = *(v4 + 152);
  v91 = v16;
  v92 = *(v4 + 184);
  v17 = *(v4 + 72);
  v18 = *(v4 + 104);
  v86 = *(v4 + 88);
  v87 = v18;
  v88 = *(v4 + 120);
  v89 = v15;
  v19 = *(v4 + 40);
  v82 = *(v4 + 24);
  v83 = v19;
  v84 = *(v4 + 56);
  v85 = v17;
  v20 = sub_24E66927C(&v82);
  if (v20)
  {
    if (v20 == 1)
    {
LABEL_22:
      sub_24E70A270();
      goto LABEL_23;
    }

    v58 = v12;
    v22 = *(v4 + 232);
    v21 = *(v4 + 240);
    v23 = HIBYTE(v21) & 0xF;
    if ((v21 & 0x2000000000000000) == 0)
    {
      v23 = v22 & 0xFFFFFFFFFFFFLL;
    }

    if (v23)
    {

      v24 = sub_24E608B90(MEMORY[0x277D84F90]);
      sub_24F91F6A8();
      v25 = sub_24F91F668();
      v27 = v26;
      (*(v9 + 8))(v11, v8);
      *&v93 = v25;
      *(&v93 + 1) = v27;
      *&v94 = v22;
      *(&v94 + 1) = v21;
      LOBYTE(v95) = v58;
LABEL_16:
      *&v96 = 0;
      *(&v95 + 1) = 0;
      *(&v96 + 1) = v24;
      LOWORD(v97[0]) = 4;
      BYTE2(v97[0]) = 0;
      *(v97 + 8) = 0u;
      *(&v97[1] + 8) = 0u;
      *(&v97[2] + 1) = 0;
      v98 = 1uLL;
      v99 = 0uLL;
      LOBYTE(v100) = 0;
      *(&v100 + 1) = 0;
      v101 = 0uLL;
      CGSizeMake();
      v79 = v99;
      v80 = v100;
      v81 = v101;
      v75 = v97[0];
      v76 = v97[1];
      v77 = v97[2];
      v78 = v98;
      v71 = v93;
      v72 = v94;
      v73 = v95;
      v74 = v96;
      sub_24E708F2C(&v71);
      goto LABEL_22;
    }

    sub_24E669254(&v60);
    v99 = v68;
    v100 = v69;
    v101 = v70;
    v97[0] = v64;
    v97[1] = v65;
    v97[2] = v66;
    v98 = v67;
    v93 = v60;
    v94 = v61;
    v95 = v62;
    v96 = v63;
    v36 = *(v4 + 136);
    v37 = *(v4 + 168);
    v79 = *(v4 + 152);
    v80 = v37;
    v81 = *(v4 + 184);
    v38 = *(v4 + 72);
    v39 = *(v4 + 104);
    v75 = *(v4 + 88);
    v76 = v39;
    v77 = *(v4 + 120);
    v78 = v36;
    v40 = *(v4 + 40);
    v71 = *(v4 + 24);
    v72 = v40;
    v73 = *(v4 + 56);
    v74 = v38;
    if (sub_24E66927C(&v71) < 2)
    {
      goto LABEL_20;
    }

    goto LABEL_21;
  }

  v28 = *(v4 + 232);
  v29 = *(v4 + 240);
  if (v83 != __PAIR128__(v29, v28) && (sub_24F92CE08() & 1) == 0)
  {
    v30 = HIBYTE(v29) & 0xF;
    if ((v29 & 0x2000000000000000) == 0)
    {
      v30 = v28 & 0xFFFFFFFFFFFFLL;
    }

    if (v30)
    {

      v24 = sub_24E608B90(MEMORY[0x277D84F90]);
      sub_24F91F6A8();
      v31 = sub_24F91F668();
      v32 = v9;
      v33 = v12;
      v35 = v34;
      (*(v32 + 8))(v11, v8);
      *&v93 = v31;
      *(&v93 + 1) = v35;
      *&v94 = v28;
      *(&v94 + 1) = v29;
      LOBYTE(v95) = v33;
      goto LABEL_16;
    }

    sub_24E669254(&v60);
    v99 = v68;
    v100 = v69;
    v101 = v70;
    v97[0] = v64;
    v97[1] = v65;
    v97[2] = v66;
    v98 = v67;
    v93 = v60;
    v94 = v61;
    v95 = v62;
    v96 = v63;
    v41 = *(v4 + 136);
    v42 = *(v4 + 168);
    v79 = *(v4 + 152);
    v80 = v42;
    v81 = *(v4 + 184);
    v43 = *(v4 + 72);
    v44 = *(v4 + 104);
    v75 = *(v4 + 88);
    v76 = v44;
    v77 = *(v4 + 120);
    v78 = v41;
    v45 = *(v4 + 40);
    v71 = *(v4 + 24);
    v72 = v45;
    v73 = *(v4 + 56);
    v74 = v43;
    if (sub_24E66927C(&v71) < 2)
    {
LABEL_20:
      KeyPath = swift_getKeyPath();
      MEMORY[0x28223BE20](KeyPath);
      *&v57[-16] = v4;
      *&v57[-8] = &v93;
      *&v59[0] = v4;
      sub_24F91FD78();

      goto LABEL_22;
    }

LABEL_21:
    v47 = *(v4 + 136);
    v48 = *(v4 + 168);
    v59[8] = *(v4 + 152);
    v59[9] = v48;
    v59[10] = *(v4 + 184);
    v49 = *(v4 + 72);
    v50 = *(v4 + 104);
    v59[4] = *(v4 + 88);
    v59[5] = v50;
    v59[6] = *(v4 + 120);
    v59[7] = v47;
    v51 = *(v4 + 40);
    v59[0] = *(v4 + 24);
    v59[1] = v51;
    v59[2] = *(v4 + 56);
    v59[3] = v49;
    v52 = v97[2];
    *(v4 + 136) = v98;
    v53 = v100;
    *(v4 + 152) = v99;
    *(v4 + 168) = v53;
    *(v4 + 184) = v101;
    v54 = v95;
    *(v4 + 72) = v96;
    v55 = v97[1];
    *(v4 + 88) = v97[0];
    *(v4 + 104) = v55;
    *(v4 + 120) = v52;
    v56 = v94;
    *(v4 + 24) = v93;
    *(v4 + 40) = v56;
    *(v4 + 56) = v54;
    sub_24E70D2CC(v59);
    sub_24E708AD8();
    goto LABEL_22;
  }

LABEL_23:
  sub_24E70A6DC(v4);
}

double sub_24E70854C()
{
  swift_getKeyPath();
  sub_24E70D570(&qword_27F215688, type metadata accessor for SearchPagePresenter, &unk_24F94C97C);
  sub_24F91FD88();

  return result;
}

uint64_t sub_24E7085F8(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12GameStoreKit19SearchPagePresenter__friendsPlayingGames;

  sub_24EBAD684(v4, a1);
  v6 = v5;

  if (v6)
  {
    *(v1 + v3) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_24E70D570(&qword_27F215688, type metadata accessor for SearchPagePresenter, &unk_24F94C97C);
    sub_24F91FD78();
  }
}

uint64_t sub_24E708754()
{
  swift_getKeyPath();
  sub_24E70D570(&qword_27F215688, type metadata accessor for SearchPagePresenter, &unk_24F94C97C);
  sub_24F91FD88();

  v1 = *(v0 + 296);

  return v1;
}

uint64_t sub_24E708804(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 304);
  if (v5)
  {
    if (a2)
    {
      v6 = *(v2 + 296) == a1 && v5 == a2;
      if (v6 || (sub_24F92CE08() & 1) != 0)
      {
        goto LABEL_8;
      }
    }

LABEL_12:
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_24E70D570(&qword_27F215688, type metadata accessor for SearchPagePresenter, &unk_24F94C97C);
    sub_24F91FD78();
  }

  if (a2)
  {
    goto LABEL_12;
  }

LABEL_8:
  *(v2 + 296) = a1;
  *(v2 + 304) = a2;
}

uint64_t sub_24E708974()
{
  v1 = v0[8];
  v2 = v0[9];
  v3 = v0[6];
  v17 = v0[7];
  v18 = v1;
  v4 = v0[10];
  v19 = v2;
  v20 = v4;
  v5 = v0[5];
  v14 = v0[4];
  v15 = v5;
  v16 = v3;
  v6 = v0[1];
  v10 = *v0;
  v11 = v6;
  v7 = v0[3];
  v12 = v0[2];
  v13 = v7;
  v8 = sub_24E66927C(&v10);
  if (v8)
  {
    if (v8 == 1)
    {
      return 0x6C616974696E69;
    }

    else
    {
      return 0x676E69646E616CLL;
    }
  }

  else
  {
    sub_24F92C888();
    MEMORY[0x253050C20](0x2073746C75736572, 0xEC000000203A6469);
    MEMORY[0x253050C20](v10, *(&v10 + 1));
    MEMORY[0x253050C20](0x203A6D726574202CLL, 0xE800000000000000);
    MEMORY[0x253050C20](v11, *(&v11 + 1));
    MEMORY[0x253050C20](0x6E696769726F202CLL, 0xEA0000000000203ALL);
    sub_24F92CA38();
    return 0;
  }
}

void sub_24E708AD8()
{
  swift_getKeyPath();
  *&v28 = v0;
  sub_24E70D570(&qword_27F215688, type metadata accessor for SearchPagePresenter, &unk_24F94C97C);
  sub_24F91FD88();

  v1 = *(v0 + 136);
  v2 = *(v0 + 168);
  v36 = *(v0 + 152);
  v37 = v2;
  v38 = *(v0 + 184);
  v3 = *(v0 + 72);
  v4 = *(v0 + 104);
  v32 = *(v0 + 88);
  v33 = v4;
  v34 = *(v0 + 120);
  v35 = v1;
  v5 = *(v0 + 40);
  v28 = *(v0 + 24);
  v29 = v5;
  v30 = *(v0 + 56);
  v31 = v3;
  sub_24E6691F8(&v28, v27);
  if (qword_27F211448 != -1)
  {
    swift_once();
  }

  v6 = sub_24F9220D8();
  __swift_project_value_buffer(v6, qword_27F39E928);
  sub_24E6691F8(&v28, v27);
  v7 = sub_24F9220B8();
  v8 = sub_24F92BD98();
  sub_24E70D2CC(&v28);
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v26 = v10;
    *v9 = 136315138;
    v23 = v36;
    v24 = v37;
    v25 = v38;
    v19 = v32;
    v20 = v33;
    v21 = v34;
    v22 = v35;
    v15 = v28;
    v16 = v29;
    v17 = v30;
    v18 = v31;
    v11 = sub_24E708974();
    v13 = v12;
    v27[8] = v23;
    v27[9] = v24;
    v27[10] = v25;
    v27[4] = v19;
    v27[5] = v20;
    v27[6] = v21;
    v27[7] = v22;
    v27[0] = v15;
    v27[1] = v16;
    v27[2] = v17;
    v27[3] = v18;
    sub_24E70D2CC(v27);
    v14 = sub_24E7620D4(v11, v13, &v26);

    *(v9 + 4) = v14;
    _os_log_impl(&dword_24E5DD000, v7, v8, "Updated search state: %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x2530542D0](v10, -1, -1);
    MEMORY[0x2530542D0](v9, -1, -1);
  }

  else
  {

    sub_24E70D2CC(&v28);
  }
}

uint64_t sub_24E708D78@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  *&v20[0] = v3;
  sub_24E70D570(&qword_27F215688, type metadata accessor for SearchPagePresenter, &unk_24F94C97C);
  sub_24F91FD88();

  v4 = *(v3 + 24);
  v5 = *(v3 + 40);
  v6 = *(v3 + 56);
  v7 = *(v3 + 72);
  v8 = *(v3 + 104);
  v9 = *(v3 + 120);
  v20[4] = *(v3 + 88);
  v20[5] = v8;
  v20[2] = v6;
  v20[3] = v7;
  v10 = *(v3 + 136);
  v11 = *(v3 + 152);
  v12 = *(v3 + 184);
  v20[9] = *(v3 + 168);
  v20[10] = v12;
  v20[7] = v10;
  v20[8] = v11;
  v20[6] = v9;
  v20[0] = v4;
  v20[1] = v5;
  v13 = *(v3 + 136);
  v14 = *(v3 + 168);
  a2[8] = *(v3 + 152);
  a2[9] = v14;
  a2[10] = *(v3 + 184);
  v15 = *(v3 + 72);
  v16 = *(v3 + 104);
  a2[4] = *(v3 + 88);
  a2[5] = v16;
  a2[6] = *(v3 + 120);
  a2[7] = v13;
  v17 = *(v3 + 40);
  *a2 = *(v3 + 24);
  a2[1] = v17;
  a2[2] = *(v3 + 56);
  a2[3] = v15;
  return sub_24E6691F8(v20, &v19);
}

void sub_24E708EB4(__int128 *a1)
{
  v2 = a1[9];
  v8[8] = a1[8];
  v8[9] = v2;
  v8[10] = a1[10];
  v3 = a1[5];
  v8[4] = a1[4];
  v8[5] = v3;
  v4 = a1[7];
  v8[6] = a1[6];
  v8[7] = v4;
  v5 = a1[1];
  v8[0] = *a1;
  v8[1] = v5;
  v6 = a1[3];
  v8[2] = a1[2];
  v8[3] = v6;
  sub_24E6691F8(v8, &v7);
  sub_24E708F2C(a1);
}

void sub_24E708F2C(__int128 *a1)
{
  v2 = a1[9];
  v44 = a1[8];
  v45 = v2;
  v46 = a1[10];
  v3 = a1[5];
  v40 = a1[4];
  v41 = v3;
  v4 = a1[7];
  v42 = a1[6];
  v43 = v4;
  v5 = a1[1];
  v36 = *a1;
  v37 = v5;
  v6 = a1[3];
  v38 = a1[2];
  v39 = v6;
  v7 = *(v1 + 136);
  v8 = *(v1 + 168);
  v66 = *(v1 + 152);
  v67 = v8;
  v68 = *(v1 + 184);
  v9 = *(v1 + 72);
  v10 = *(v1 + 104);
  v62 = *(v1 + 88);
  v63 = v10;
  v64 = *(v1 + 120);
  v65 = v7;
  v11 = *(v1 + 40);
  v58 = *(v1 + 24);
  v59 = v11;
  v60 = *(v1 + 56);
  v61 = v9;
  v12 = sub_24E66927C(&v58);
  if (!v12)
  {
    v55 = v44;
    v56 = v45;
    v57 = v46;
    v51 = v40;
    v52 = v41;
    v53 = v42;
    v54 = v43;
    v47 = v36;
    v48 = v37;
    v49 = v38;
    v50 = v39;
    if (!sub_24E66927C(&v47))
    {
      v24[8] = v55;
      v24[9] = v56;
      v24[10] = v57;
      v24[4] = v51;
      v24[5] = v52;
      v24[6] = v53;
      v24[7] = v54;
      v24[0] = v47;
      v24[1] = v48;
      v24[2] = v49;
      v24[3] = v50;
      v33 = v66;
      v34 = v67;
      v35 = v68;
      v29 = v62;
      v30 = v63;
      v31 = v64;
      v32 = v65;
      v25 = v58;
      v26 = v59;
      v27 = v60;
      v28 = v61;
      if (_s12GameStoreKit23SearchRequestDescriptorV2eeoiySbAC_ACtFZ_0(&v25, v24))
      {
        goto LABEL_9;
      }
    }

    goto LABEL_7;
  }

  if (v12 == 1)
  {
    v55 = v44;
    v56 = v45;
    v57 = v46;
    v51 = v40;
    v52 = v41;
    v53 = v42;
    v54 = v43;
    v47 = v36;
    v48 = v37;
    v49 = v38;
    v50 = v39;
    if (sub_24E66927C(&v47) == 1)
    {
      goto LABEL_9;
    }

LABEL_7:
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    *&v25 = v1;
    sub_24E70D570(&qword_27F215688, type metadata accessor for SearchPagePresenter, &unk_24F94C97C);
    sub_24F91FD78();
    sub_24E70D2CC(&v36);

    return;
  }

  v55 = v44;
  v56 = v45;
  v57 = v46;
  v51 = v40;
  v52 = v41;
  v53 = v42;
  v54 = v43;
  v47 = v36;
  v48 = v37;
  v49 = v38;
  v50 = v39;
  if (sub_24E66927C(&v47) != 2)
  {
    goto LABEL_7;
  }

LABEL_9:
  v14 = *(v1 + 136);
  v15 = *(v1 + 168);
  v33 = *(v1 + 152);
  v34 = v15;
  v35 = *(v1 + 184);
  v16 = *(v1 + 72);
  v17 = *(v1 + 104);
  v29 = *(v1 + 88);
  v30 = v17;
  v31 = *(v1 + 120);
  v32 = v14;
  v18 = *(v1 + 40);
  v25 = *(v1 + 24);
  v26 = v18;
  v27 = *(v1 + 56);
  v28 = v16;
  v19 = v42;
  *(v1 + 136) = v43;
  v20 = v45;
  *(v1 + 152) = v44;
  *(v1 + 168) = v20;
  *(v1 + 184) = v46;
  v21 = v38;
  *(v1 + 72) = v39;
  v22 = v41;
  *(v1 + 88) = v40;
  *(v1 + 104) = v22;
  *(v1 + 120) = v19;
  v23 = v37;
  *(v1 + 24) = v36;
  *(v1 + 40) = v23;
  *(v1 + 56) = v21;
  sub_24E70D2CC(&v25);
  sub_24E708AD8();
}

void sub_24E709288(uint64_t a1, _OWORD *a2)
{
  v2 = *(a1 + 136);
  v3 = *(a1 + 168);
  v13[8] = *(a1 + 152);
  v13[9] = v3;
  v13[10] = *(a1 + 184);
  v4 = *(a1 + 72);
  v5 = *(a1 + 104);
  v13[4] = *(a1 + 88);
  v13[5] = v5;
  v13[6] = *(a1 + 120);
  v13[7] = v2;
  v6 = *(a1 + 40);
  v13[0] = *(a1 + 24);
  v13[1] = v6;
  v13[2] = *(a1 + 56);
  v13[3] = v4;
  v7 = a2[6];
  *(a1 + 136) = a2[7];
  v8 = a2[9];
  *(a1 + 152) = a2[8];
  *(a1 + 168) = v8;
  *(a1 + 184) = a2[10];
  v9 = a2[2];
  *(a1 + 72) = a2[3];
  v10 = a2[5];
  *(a1 + 88) = a2[4];
  *(a1 + 104) = v10;
  *(a1 + 120) = v7;
  v11 = a2[1];
  *(a1 + 24) = *a2;
  *(a1 + 40) = v11;
  *(a1 + 56) = v9;
  sub_24E6691F8(a2, &v12);
  sub_24E70D2CC(v13);
  sub_24E708AD8();
}

uint64_t sub_24E709364(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  swift_getKeyPath();
  v10 = v2;
  sub_24E70D570(&qword_27F215688, type metadata accessor for SearchPagePresenter, &unk_24F94C97C);
  sub_24F91FD88();

  result = v2[27];
  if (result != a1 || v2[28] != a2)
  {
    result = sub_24F92CE08();
    if ((result & 1) == 0)
    {
      v2[25] = a1;
      v2[26] = a2;

      swift_getKeyPath();
      v10 = v2;
      sub_24F91FD88();

      v8 = v2[27];
      v9 = v3[28];
      LOBYTE(v10) = 10;

      sub_24E7094B8(v8, v9, &v10);
    }
  }

  return result;
}

uint64_t sub_24E7094B8(uint64_t a1, unint64_t a2, unsigned __int8 *a3)
{
  v4 = v3;
  v8 = sub_24F91F6B8();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = *(v4 + 232);
  if (result != a1 || *(v4 + 240) != a2)
  {
    v14 = *a3;
    result = sub_24F92CE08();
    if ((result & 1) == 0)
    {
      v61 = v14;
      v59 = v9;
      if (qword_27F211448 != -1)
      {
        swift_once();
      }

      v15 = sub_24F9220D8();
      __swift_project_value_buffer(v15, qword_27F39E928);

      v16 = sub_24F9220B8();
      v17 = sub_24F92BD98();

      v18 = os_log_type_enabled(v16, v17);
      v60 = v8;
      if (v18)
      {
        v19 = swift_slowAlloc();
        v58 = swift_slowAlloc();
        *&v76 = v58;
        *v19 = 141558530;
        *(v19 + 4) = 1752392040;
        *(v19 + 12) = 2080;
        *(v19 + 14) = sub_24E7620D4(a1, a2, &v76);
        *(v19 + 22) = 2080;
        LOBYTE(v75[0]) = v61;
        v20 = SearchOrigin.rawValue.getter();
        v22 = sub_24E7620D4(v20, v21, &v76);

        *(v19 + 24) = v22;
        _os_log_impl(&dword_24E5DD000, v16, v17, "Update search term: %{mask.hash}s, origin: %s", v19, 0x20u);
        v23 = v58;
        swift_arrayDestroy();
        MEMORY[0x2530542D0](v23, -1, -1);
        MEMORY[0x2530542D0](v19, -1, -1);
      }

      *(v4 + 232) = a1;
      *(v4 + 240) = a2;
      swift_bridgeObjectRetain_n();

      sub_24E707BCC(a1, a2);
      swift_getKeyPath();
      *&v76 = v4;
      sub_24E70D570(&qword_27F215688, type metadata accessor for SearchPagePresenter, &unk_24F94C97C);
      sub_24F91FD88();

      v24 = *(v4 + 136);
      v25 = *(v4 + 168);
      v75[8] = *(v4 + 152);
      v75[9] = v25;
      v75[10] = *(v4 + 184);
      v26 = *(v4 + 72);
      v27 = *(v4 + 104);
      v75[4] = *(v4 + 88);
      v75[5] = v27;
      v75[6] = *(v4 + 120);
      v75[7] = v24;
      v28 = *(v4 + 40);
      v75[0] = *(v4 + 24);
      v75[1] = v28;
      v75[2] = *(v4 + 56);
      v75[3] = v26;
      result = sub_24E66927C(v75);
      if (result != 1)
      {
        v29 = HIBYTE(a2) & 0xF;
        if ((a2 & 0x2000000000000000) == 0)
        {
          v29 = a1 & 0xFFFFFFFFFFFFLL;
        }

        if (v29)
        {
          v30 = *(v4 + 280);
          if (v30)
          {
            v31 = *(v4 + 288);
            *&v76 = *(v4 + 272);
            *(&v76 + 1) = v30;
            LOBYTE(v77) = v31 & 1;

            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236230, &qword_24F9B9F40);
            sub_24F923358();
            v32 = v64;

            if ((v32 & 1) == 0)
            {

              v33 = sub_24E608B90(MEMORY[0x277D84F90]);
              sub_24F91F6A8();
              v34 = sub_24F91F668();
              v36 = v35;
              (*(v59 + 8))(v11, v60);
              *&v76 = v34;
              *(&v76 + 1) = v36;
              *&v77 = a1;
              *(&v77 + 1) = a2;
              LOBYTE(v78) = v61;
              *&v79 = 0;
              *(&v78 + 1) = 0;
              *(&v79 + 1) = v33;
              LOWORD(v80[0]) = 4;
              BYTE2(v80[0]) = 0;
              *(v80 + 8) = 0u;
              *(&v80[1] + 8) = 0u;
              *(&v80[2] + 1) = 0;
              v81 = 1uLL;
              v82 = 0uLL;
              LOBYTE(v83) = 0;
              *(&v83 + 1) = 0;
              v84 = 0uLL;
              CGSizeMake();
              v72 = v82;
              v73 = v83;
              v74 = v84;
              v68 = v80[0];
              v69 = v80[1];
              v70 = v80[2];
              v71 = v81;
              v64 = v76;
              v65 = v77;
              v66 = v78;
              v67 = v79;
              sub_24E708F2C(&v64);
            }
          }
        }

        else
        {
          sub_24E669254(v63);
          v82 = v63[8];
          v83 = v63[9];
          v84 = v63[10];
          v80[0] = v63[4];
          v80[1] = v63[5];
          v80[2] = v63[6];
          v81 = v63[7];
          v76 = v63[0];
          v77 = v63[1];
          v78 = v63[2];
          v79 = v63[3];
          v37 = *(v4 + 136);
          v38 = *(v4 + 168);
          v72 = *(v4 + 152);
          v73 = v38;
          v74 = *(v4 + 184);
          v39 = *(v4 + 72);
          v40 = *(v4 + 104);
          v68 = *(v4 + 88);
          v69 = v40;
          v70 = *(v4 + 120);
          v71 = v37;
          v41 = *(v4 + 40);
          v64 = *(v4 + 24);
          v65 = v41;
          v66 = *(v4 + 56);
          v67 = v39;
          if (sub_24E66927C(&v64) >= 2)
          {
            v43 = *(v4 + 136);
            v44 = *(v4 + 168);
            v62[8] = *(v4 + 152);
            v62[9] = v44;
            v62[10] = *(v4 + 184);
            v45 = *(v4 + 72);
            v46 = *(v4 + 104);
            v62[4] = *(v4 + 88);
            v62[5] = v46;
            v62[6] = *(v4 + 120);
            v62[7] = v43;
            v47 = *(v4 + 40);
            v62[0] = *(v4 + 24);
            v62[1] = v47;
            v62[2] = *(v4 + 56);
            v62[3] = v45;
            v48 = v80[2];
            *(v4 + 136) = v81;
            v49 = v83;
            *(v4 + 152) = v82;
            *(v4 + 168) = v49;
            *(v4 + 184) = v84;
            v50 = v78;
            *(v4 + 72) = v79;
            v51 = v80[1];
            *(v4 + 88) = v80[0];
            *(v4 + 104) = v51;
            *(v4 + 120) = v48;
            v52 = v77;
            *(v4 + 24) = v76;
            *(v4 + 40) = v52;
            *(v4 + 56) = v50;
            sub_24E70D2CC(v62);
            sub_24E708AD8();
          }

          else
          {
            KeyPath = swift_getKeyPath();
            MEMORY[0x28223BE20](KeyPath);
            *(&v58 - 2) = v4;
            *(&v58 - 1) = &v76;
            *&v62[0] = v4;
            sub_24F91FD78();
          }
        }

        v53 = *(v4 + 280);
        if (v53)
        {
          v54 = *(v4 + 288);
          *&v64 = *(v4 + 272);
          *(&v64 + 1) = v53;
          LOBYTE(v65) = v54 & 1;

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236230, &qword_24F9B9F40);
          sub_24F923358();
          v55 = LOBYTE(v63[0]);

          if (v55 == 1)
          {
            v56 = *(v4 + 256);
            if (v56)
            {
              v57 = *(v4 + 264);
              *&v64 = *(v4 + 248);
              *(&v64 + 1) = v56;
              LOBYTE(v65) = v57 & 1;
              LOBYTE(v63[0]) = 1;

              __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2363B0, &unk_24F94C9C0);
              sub_24F927178();
            }
          }
        }

        return sub_24E70A270();
      }
    }
  }

  return result;
}

uint64_t sub_24E709C08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 216);
  v4 = *(a1 + 224);
  *(a1 + 216) = a2;
  *(a1 + 224) = a3;

  sub_24E709364(v3, v4);
}

uint64_t sub_24E709C5C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_24E70D570(&qword_27F215688, type metadata accessor for SearchPagePresenter, &unk_24F94C97C);
  sub_24F91FD88();

  v4 = OBJC_IVAR____TtC12GameStoreKit19SearchPagePresenter__searchSuggestions;
  swift_beginAccess();
  return sub_24E70D448(v3 + v4, a2);
}

uint64_t sub_24E709D24(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2156B8, &qword_24F940900);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v9[-v5];
  sub_24E70D448(a1, &v9[-v5]);
  v7 = *a2;
  swift_getKeyPath();
  v10 = v7;
  v11 = v6;
  v12 = v7;
  sub_24E70D570(&qword_27F215688, type metadata accessor for SearchPagePresenter, &unk_24F94C97C);
  sub_24F91FD78();

  return sub_24E601704(v6, &qword_27F2156B8, &qword_24F940900);
}

uint64_t sub_24E709E6C(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC12GameStoreKit19SearchPagePresenter__searchSuggestions;
  swift_beginAccess();
  sub_24E70D3D8(a2, a1 + v4);
  return swift_endAccess();
}

uint64_t sub_24E709ED8(uint64_t a1)
{
  sub_24E70D8E0(v11);
  v3 = v11[6];
  *(v1 + 136) = v11[7];
  v4 = v11[9];
  *(v1 + 152) = v11[8];
  *(v1 + 168) = v4;
  *(v1 + 184) = v11[10];
  v5 = v11[2];
  *(v1 + 72) = v11[3];
  v6 = v11[5];
  *(v1 + 88) = v11[4];
  *(v1 + 104) = v6;
  *(v1 + 120) = v3;
  v7 = v11[1];
  *(v1 + 24) = v11[0];
  *(v1 + 40) = v7;
  *(v1 + 56) = v5;
  *(v1 + 200) = 0;
  *(v1 + 208) = 0xE000000000000000;
  *(v1 + 216) = 0;
  *(v1 + 224) = 0xE000000000000000;
  *(v1 + 232) = 0;
  *(v1 + 240) = 0xE000000000000000;
  *(v1 + 248) = 0;
  *(v1 + 256) = 0;
  *(v1 + 264) = 0;
  *(v1 + 272) = 0;
  *(v1 + 280) = 0;
  *(v1 + 288) = 0;
  *(v1 + 296) = 0;
  *(v1 + 304) = 0;
  v8 = OBJC_IVAR____TtC12GameStoreKit19SearchPagePresenter__searchSuggestions;
  v9 = type metadata accessor for SearchSuggestionsResult(0);
  (*(*(v9 - 8) + 56))(v1 + v8, 1, 1, v9);
  *(v1 + OBJC_IVAR____TtC12GameStoreKit19SearchPagePresenter__friendsPlayingGames) = sub_24E608B7C(MEMORY[0x277D84F90]);
  *(v1 + OBJC_IVAR____TtC12GameStoreKit19SearchPagePresenter_fetchSuggestionTask) = 0;
  *(v1 + OBJC_IVAR____TtC12GameStoreKit19SearchPagePresenter_fetchFriendsPlayingGamesTask) = 0;
  sub_24F91FDB8();
  *(v1 + 16) = a1;
  return v1;
}

uint64_t sub_24E70A008()
{
  v1 = [objc_opt_self() defaultCenter];
  if (qword_27F210510 != -1)
  {
    swift_once();
  }

  [v1 removeObserver:v0 name:qword_27F22CFB0 object:0];

  v2 = *(v0 + 136);
  v3 = *(v0 + 168);
  v10[8] = *(v0 + 152);
  v10[9] = v3;
  v10[10] = *(v0 + 184);
  v4 = *(v0 + 72);
  v5 = *(v0 + 104);
  v10[4] = *(v0 + 88);
  v10[5] = v5;
  v10[6] = *(v0 + 120);
  v10[7] = v2;
  v6 = *(v0 + 40);
  v10[0] = *(v0 + 24);
  v10[1] = v6;
  v10[2] = *(v0 + 56);
  v10[3] = v4;
  sub_24E70D2CC(v10);

  sub_24E70D68C(*(v0 + 248), *(v0 + 256));
  sub_24E70D68C(*(v0 + 272), *(v0 + 280));

  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit19SearchPagePresenter__searchSuggestions, &qword_27F2156B8, &qword_24F940900);

  v7 = OBJC_IVAR____TtC12GameStoreKit19SearchPagePresenter___observationRegistrar;
  v8 = sub_24F91FDC8();
  (*(*(v8 - 8) + 8))(v0 + v7, v8);
  return v0;
}

uint64_t sub_24E70A1C4()
{
  sub_24E70A008();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SearchPagePresenter(uint64_t a1)
{
  result = qword_27F2196E8;
  if (!qword_27F2196E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24E70A270()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570, &qword_24F93B020);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = v17 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2156B8, &qword_24F940900);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v17 - v5;
  v7 = OBJC_IVAR____TtC12GameStoreKit19SearchPagePresenter_fetchSuggestionTask;
  if (*(v0 + OBJC_IVAR____TtC12GameStoreKit19SearchPagePresenter_fetchSuggestionTask))
  {

    sub_24F92B958();
  }

  v8 = *(v0 + 240);
  v9 = *(v0 + 232) & 0xFFFFFFFFFFFFLL;
  if ((v8 & 0x2000000000000000) != 0)
  {
    v9 = HIBYTE(v8) & 0xF;
  }

  if (v9)
  {
    v10 = sub_24F92B858();
    (*(*(v10 - 8) + 56))(v3, 1, 1, v10);
    sub_24F92B7F8();

    v11 = sub_24F92B7E8();
    v12 = swift_allocObject();
    v13 = MEMORY[0x277D85700];
    v12[2] = v11;
    v12[3] = v13;
    v12[4] = v0;
    *(v0 + v7) = sub_24EA998B8(0, 0, v3, &unk_24F94C9D8, v12);
  }

  else
  {
    v15 = type metadata accessor for SearchSuggestionsResult(0);
    (*(*(v15 - 8) + 56))(v6, 1, 1, v15);
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    v17[-2] = v0;
    v17[-1] = v6;
    v17[1] = v0;
    sub_24E70D570(&qword_27F215688, type metadata accessor for SearchPagePresenter, &unk_24F94C97C);
    sub_24F91FD78();

    return sub_24E601704(v6, &qword_27F2156B8, &qword_24F940900);
  }
}

uint64_t sub_24E70A56C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570, &qword_24F93B020);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v11 - v3;
  v5 = OBJC_IVAR____TtC12GameStoreKit19SearchPagePresenter_fetchFriendsPlayingGamesTask;
  if (*(v0 + OBJC_IVAR____TtC12GameStoreKit19SearchPagePresenter_fetchFriendsPlayingGamesTask))
  {

    sub_24F92B958();
  }

  v6 = sub_24F92B858();
  (*(*(v6 - 8) + 56))(v4, 1, 1, v6);
  sub_24F92B7F8();

  v7 = sub_24F92B7E8();
  v8 = swift_allocObject();
  v9 = MEMORY[0x277D85700];
  v8[2] = v7;
  v8[3] = v9;
  v8[4] = v1;
  *(v1 + v5) = sub_24EA998B8(0, 0, v4, &unk_24F94CAC0, v8);
}

void sub_24E70A6DC(uint64_t a1)
{
  if (*(a1 + 256))
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2363B0, &unk_24F94C9C0);
    sub_24F927178();
  }

  v2 = [objc_opt_self() currentDevice];
  v3 = [v2 userInterfaceIdiom];

  if (v3)
  {
    if (*(a1 + 280))
    {

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236230, &qword_24F9B9F40);
      sub_24F923368();
    }
  }

  else
  {
    v4 = [objc_opt_self() sharedApplication];
    [v4 sendAction:sel_resignFirstResponder to:0 from:0 forEvent:0];
  }
}

uint64_t sub_24E70A85C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[9] = a4;
  v4[10] = sub_24F92B7F8();
  v4[11] = sub_24F92B7E8();
  v6 = sub_24F92B778();
  v4[12] = v6;
  v4[13] = v5;

  return MEMORY[0x2822009F8](sub_24E70A8F8, v6, v5);
}

uint64_t sub_24E70A8F8()
{
  v0[14] = *(v0[9] + 16);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F255030, &qword_24F93B050);
  v2 = swift_task_alloc();
  v0[15] = v2;
  *v2 = v0;
  v2[1] = sub_24E70A9BC;

  return MEMORY[0x28217F228](v0 + 2, v1, v1);
}

uint64_t sub_24E70A9BC()
{
  v2 = *v1;
  *(*v1 + 128) = v0;

  v3 = *(v2 + 104);
  v4 = *(v2 + 96);
  if (v0)
  {
    v5 = sub_24E70AF28;
  }

  else
  {
    v5 = sub_24E70AAF8;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_24E70AAF8()
{
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  v0[8] = 100;
  v3 = swift_task_alloc();
  v0[17] = v3;
  v4 = sub_24E70D7C4();
  *v3 = v0;
  v3[1] = sub_24E70ABE0;
  v5 = v0[14];

  return MEMORY[0x28217F4B0](v0 + 7, v0 + 8, v5, &type metadata for AllFriendsPlayingGamesDataIntent, v4, v1, v2);
}

uint64_t sub_24E70ABE0()
{
  v2 = *v1;
  *(*v1 + 144) = v0;

  v3 = *(v2 + 96);
  v4 = *(v2 + 104);
  if (v0)
  {
    v5 = sub_24E70B0D0;
  }

  else
  {
    v5 = sub_24E70ACF4;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_24E70ACF4()
{
  v0[19] = v0[7];
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  if (sub_24F92B978())
  {

    v1 = v0[1];

    return v1();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_24E70ADAC, 0, 0);
  }
}

uint64_t sub_24E70ADAC(uint64_t a1)
{
  *(v1 + 160) = sub_24F92B7E8();
  v3 = sub_24F92B778();

  return MEMORY[0x2822009F8](sub_24E70AE38, v3, v2);
}

uint64_t sub_24E70AE38()
{
  v1 = v0[19];

  v2 = sub_24E70CD34(v1);

  sub_24E7085F8(v2);
  v3 = v0[12];
  v4 = v0[13];

  return MEMORY[0x2822009F8](sub_24E70AEC8, v3, v4);
}

uint64_t sub_24E70AEC8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24E70AF28()
{

  v1 = *(v0 + 128);
  if (qword_27F211400 != -1)
  {
    swift_once();
  }

  v2 = sub_24F9220D8();
  __swift_project_value_buffer(v2, qword_27F39E850);
  v3 = v1;
  v4 = sub_24F9220B8();
  v5 = sub_24F92BDB8();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v1;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_24E5DD000, v4, v5, "Failed to fetch friends playing games: %@", v6, 0xCu);
    sub_24E601704(v7, &qword_27F227B20, &qword_24F944D30);
    MEMORY[0x2530542D0](v7, -1, -1);
    MEMORY[0x2530542D0](v6, -1, -1);
  }

  else
  {
  }

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_24E70B0D0()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v1 = v0[18];
  if (qword_27F211400 != -1)
  {
    swift_once();
  }

  v2 = sub_24F9220D8();
  __swift_project_value_buffer(v2, qword_27F39E850);
  v3 = v1;
  v4 = sub_24F9220B8();
  v5 = sub_24F92BDB8();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v1;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_24E5DD000, v4, v5, "Failed to fetch friends playing games: %@", v6, 0xCu);
    sub_24E601704(v7, &qword_27F227B20, &qword_24F944D30);
    MEMORY[0x2530542D0](v7, -1, -1);
    MEMORY[0x2530542D0](v6, -1, -1);
  }

  else
  {
  }

  v10 = v0[1];

  return v10();
}

uint64_t sub_24E70B280(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[10] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2156B8, &qword_24F940900);
  v4[11] = swift_task_alloc();
  v4[12] = swift_task_alloc();
  v5 = type metadata accessor for SearchSuggestionsResult(0);
  v4[13] = v5;
  v4[14] = *(v5 - 8);
  v4[15] = swift_task_alloc();
  v6 = sub_24F92CA08();
  v4[16] = v6;
  v4[17] = *(v6 - 8);
  v4[18] = swift_task_alloc();
  v4[19] = sub_24F92B7F8();
  v4[20] = sub_24F92B7E8();
  v8 = sub_24F92B778();
  v4[21] = v8;
  v4[22] = v7;

  return MEMORY[0x2822009F8](sub_24E70B418, v8, v7);
}

uint64_t sub_24E70B418()
{
  v1 = sub_24F92D1A8();
  v3 = v2;
  sub_24F92CFB8();
  v4 = swift_task_alloc();
  *(v0 + 184) = v4;
  *v4 = v0;
  v4[1] = sub_24E70B4F8;

  return sub_24E70C87C(v1, v3, 0, 0, 1);
}

uint64_t sub_24E70B4F8()
{
  v3 = *v1;
  v2 = *v1;

  v4 = v2[18];
  v5 = v2[17];
  v6 = v2[16];
  if (v0)
  {

    (*(v5 + 8))(v4, v6);
    v7 = v3[21];
    v8 = v3[22];
    v9 = sub_24E70D934;
  }

  else
  {
    (*(v5 + 8))(v4, v6);
    v7 = v3[21];
    v8 = v3[22];
    v9 = sub_24E70B68C;
  }

  return MEMORY[0x2822009F8](v9, v7, v8);
}

uint64_t sub_24E70B68C(uint64_t a1)
{
  if (sub_24F92B978())
  {

    v2 = v1[1];

    return v2();
  }

  else
  {
    v4 = v1[10];
    v1[24] = v4[29];
    v1[25] = v4[30];
    v1[26] = v4[2];
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F255030, &qword_24F93B050);

    v6 = swift_task_alloc();
    v1[27] = v6;
    *v6 = v1;
    v6[1] = sub_24E70B7E0;

    return MEMORY[0x28217F228](v1 + 2, v5, v5);
  }
}

uint64_t sub_24E70B7E0()
{
  v2 = *v1;

  if (v0)
  {

    v3 = *(v2 + 168);
    v4 = *(v2 + 176);
    v5 = sub_24E70BF74;
  }

  else
  {
    v3 = *(v2 + 168);
    v4 = *(v2 + 176);
    v5 = sub_24E70B910;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_24E70B910()
{
  v2 = v0[24];
  v1 = v0[25];
  v3 = v0[5];
  v4 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v3);
  v0[7] = v2;
  v0[8] = v1;
  v5 = swift_task_alloc();
  v0[28] = v5;
  v6 = sub_24E70D4B8();
  *v5 = v0;
  v5[1] = sub_24E70B9FC;
  v7 = v0[26];
  v8 = v0[12];

  return MEMORY[0x28217F4B0](v8, v0 + 7, v7, &type metadata for SearchSuggestionsIntent, v6, v3, v4);
}

uint64_t sub_24E70B9FC()
{
  v2 = *v1;
  *(*v1 + 232) = v0;

  if (v0)
  {

    v3 = *(v2 + 168);
    v4 = *(v2 + 176);
    v5 = sub_24E70C03C;
  }

  else
  {

    v3 = *(v2 + 168);
    v4 = *(v2 + 176);
    v5 = sub_24E70BB2C;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_24E70BB2C()
{
  v1 = v0[13];
  v2 = v0[14];
  v3 = v0[12];
  v4 = *(v2 + 56);
  v0[30] = v4;
  v0[31] = (v2 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v4(v3, 0, 1, v1);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {

    sub_24E601704(v0[12], &qword_27F2156B8, &qword_24F940900);
LABEL_5:

    v5 = v0[1];

    return v5();
  }

  sub_24E70D50C(v0[12], v0[15]);
  if (sub_24F92B978())
  {
    sub_24E70D880(v0[15], type metadata accessor for SearchSuggestionsResult);

    goto LABEL_5;
  }

  return MEMORY[0x2822009F8](sub_24E70BCB4, 0, 0);
}

uint64_t sub_24E70BCB4(uint64_t a1)
{
  *(v1 + 256) = sub_24F92B7E8();
  v3 = sub_24F92B778();

  return MEMORY[0x2822009F8](sub_24E70BD40, v3, v2);
}

uint64_t sub_24E70BD40()
{
  v1 = v0[30];
  v2 = v0[15];
  v3 = v0[13];
  v5 = v0[10];
  v4 = v0[11];

  sub_24E70D818(v2, v4, type metadata accessor for SearchSuggestionsResult);
  v1(v4, 0, 1, v3);
  swift_getKeyPath();
  v6 = swift_task_alloc();
  *(v6 + 16) = v5;
  *(v6 + 24) = v4;
  v0[9] = v5;
  sub_24E70D570(&qword_27F215688, type metadata accessor for SearchPagePresenter, &unk_24F94C97C);
  sub_24F91FD78();

  sub_24E601704(v4, &qword_27F2156B8, &qword_24F940900);
  v7 = v0[21];
  v8 = v0[22];

  return MEMORY[0x2822009F8](sub_24E70BEC4, v7, v8);
}

uint64_t sub_24E70BEC4()
{
  v1 = *(v0 + 120);

  sub_24E70D880(v1, type metadata accessor for SearchSuggestionsResult);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_24E70BF74()
{

  (*(v0[14] + 56))(v0[12], 1, 1, v0[13]);
  sub_24E601704(v0[12], &qword_27F2156B8, &qword_24F940900);

  v1 = v0[1];

  return v1();
}

uint64_t sub_24E70C03C()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  (*(v0[14] + 56))(v0[12], 1, 1, v0[13]);
  sub_24E601704(v0[12], &qword_27F2156B8, &qword_24F940900);

  v1 = v0[1];

  return v1();
}

uint64_t sub_24E70C118()
{
  v1 = v0;
  sub_24F91EB38();
  if (!v16[3])
  {
    return sub_24E601704(v16, &qword_27F2129B0, &unk_24F945320);
  }

  type metadata accessor for SearchAction(0);
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
    return result;
  }

  v3 = *(v15 + OBJC_IVAR____TtC12GameStoreKit12SearchAction_term + 8);
  if (v3)
  {
    v4 = *(v15 + OBJC_IVAR____TtC12GameStoreKit12SearchAction_term);
    v5 = qword_27F211448;

    if (v5 != -1)
    {
      swift_once();
    }

    v6 = sub_24F9220D8();
    __swift_project_value_buffer(v6, qword_27F39E928);

    v7 = sub_24F9220B8();
    v8 = sub_24F92BD98();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v16[0] = v10;
      *v9 = 141558530;
      *(v9 + 4) = 1752392040;
      *(v9 + 12) = 2080;
      *(v9 + 14) = sub_24E7620D4(v4, v3, v16);
      *(v9 + 22) = 2080;
      v11 = SearchOrigin.rawValue.getter();
      v13 = sub_24E7620D4(v11, v12, v16);

      *(v9 + 24) = v13;
      _os_log_impl(&dword_24E5DD000, v7, v8, "Received SearchAction: %{mask.hash}s, origin: %s", v9, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x2530542D0](v10, -1, -1);
      MEMORY[0x2530542D0](v9, -1, -1);
    }

    v14 = *(v1 + 232) == v4 && v3 == *(v1 + 240);
    if (v14 || (sub_24F92CE08() & 1) != 0)
    {
    }

    *(v1 + 232) = v4;
    *(v1 + 240) = v3;

    sub_24E707BCC(v4, v3);
    LOBYTE(v16[0]) = 4;
    sub_24E707EEC(0, 0, v16);
  }
}

void sub_24E70C4CC(uint64_t a1)
{
  sub_24E70C5F4(319);
  if (v1 <= 0x3F)
  {
    sub_24F91FDC8();
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_24E70C5F4(uint64_t a1)
{
  if (!qword_27F2196F8)
  {
    type metadata accessor for SearchSuggestionsResult(255);
    v1 = sub_24F92C4A8();
    if (!v2)
    {
      atomic_store(v1, &qword_27F2196F8);
    }
  }
}

uint64_t get_enum_tag_for_layout_string_12GameStoreKit12ReferrerDataV4KindO(uint64_t a1)
{
  if ((*(a1 + 8) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 8) & 3;
  }
}

uint64_t get_enum_tag_for_layout_string_12GameStoreKit12ReferrerDataVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
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

uint64_t get_enum_tag_for_layout_string_12GameStoreKit11SearchStateO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy176_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  result = a2[7];
  v8 = a2[8];
  v9 = a2[10];
  *(a1 + 144) = a2[9];
  *(a1 + 160) = v9;
  *(a1 + 112) = result;
  *(a1 + 128) = v8;
  return result;
}

uint64_t sub_24E70C6D8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 176))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24E70C72C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *(result + 144) = 0u;
    *(result + 160) = 0u;
    *(result + 112) = 0u;
    *(result + 128) = 0u;
    *(result + 80) = 0u;
    *(result + 96) = 0u;
    *(result + 48) = 0u;
    *(result + 64) = 0u;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 176) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 176) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

double sub_24E70C7A0(uint64_t a1, int a2)
{
  if (a2 < 0)
  {
    *(a1 + 168) = 0;
    result = 0.0;
    *(a1 + 152) = 0u;
    *(a1 + 136) = 0u;
    *(a1 + 120) = 0u;
    *(a1 + 104) = 0u;
    *(a1 + 88) = 0u;
    *(a1 + 72) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
  }

  else if (a2)
  {
    *(a1 + 8) = (a2 - 1);
  }

  return result;
}

void sub_24E70C804(__int128 *a1)
{
  v2 = a1[9];
  v8[8] = a1[8];
  v8[9] = v2;
  v8[10] = a1[10];
  v3 = a1[5];
  v8[4] = a1[4];
  v8[5] = v3;
  v4 = a1[7];
  v8[6] = a1[6];
  v8[7] = v4;
  v5 = a1[1];
  v8[0] = *a1;
  v8[1] = v5;
  v6 = a1[3];
  v8[2] = a1[2];
  v8[3] = v6;
  sub_24E6691F8(v8, &v7);
  sub_24E708F2C(a1);
}

uint64_t sub_24E70C87C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = v5;
  v12 = sub_24F92C9F8();
  *(v6 + 64) = v12;
  *(v6 + 72) = *(v12 - 8);
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 40) = a1;
  *(v6 + 48) = a2;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5 & 1;

  return MEMORY[0x2822009F8](sub_24E70C97C, 0, 0);
}

uint64_t sub_24E70C97C()
{
  v1 = v0[10];
  v2 = v0[8];
  v3 = v0[9];
  v4 = sub_24F92CA08();
  v5 = sub_24E70D570(&qword_27F219708, MEMORY[0x277D85928], MEMORY[0x277D85930]);
  sub_24F92CF98();
  sub_24E70D570(&qword_27F219710, MEMORY[0x277D858F8], MEMORY[0x277D85920]);
  sub_24F92CA18();
  v6 = *(v3 + 8);
  v0[12] = v6;
  v0[13] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v1, v2);
  v7 = swift_task_alloc();
  v0[14] = v7;
  *v7 = v0;
  v7[1] = sub_24E70CB0C;
  v8 = v0[11];

  return MEMORY[0x2822008C8](v8, v0 + 2, v4, v5);
}

uint64_t sub_24E70CB0C()
{
  v2 = *(*v1 + 96);
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 64);
  v5 = *v1;
  *(v5 + 120) = v0;

  v2(v3, v4);
  if (v0)
  {

    return MEMORY[0x2822009F8](sub_24E70CCC8, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6();
  }
}

uint64_t sub_24E70CCC8()
{

  v1 = *(v0 + 8);

  return v1();
}

void *sub_24E70CD34(uint64_t a1)
{
  v2 = type metadata accessor for GameSuggestion(0);
  v30 = *(v2 - 8);
  v31 = v2;
  MEMORY[0x28223BE20](v2);
  v29 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2130A0, &unk_24F94CAD0);
  result = sub_24F92CB28();
  v5 = 0;
  v32 = a1;
  v8 = *(a1 + 64);
  v7 = a1 + 64;
  v6 = v8;
  v9 = 1 << *(v7 - 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & v6;
  v12 = (v9 + 63) >> 6;
  v27 = result + 8;
  v28 = result;
  if (v11)
  {
    while (1)
    {
      v13 = __clz(__rbit64(v11));
      v33 = (v11 - 1) & v11;
LABEL_10:
      v16 = v13 | (v5 << 6);
      v17 = *(v32 + 56);
      v18 = (*(v32 + 48) + 16 * v16);
      v19 = v18[1];
      v34 = *v18;
      v20 = v29;
      sub_24E70D818(v17 + *(v30 + 72) * v16, v29, type metadata accessor for GameSuggestion);
      v21 = *(v20 + *(v31 + 20));

      sub_24E70D880(v20, type metadata accessor for GameSuggestion);
      result = v28;
      *(v27 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v22 = (result[6] + 16 * v16);
      *v22 = v34;
      v22[1] = v19;
      *(result[7] + 8 * v16) = v21;
      v23 = result[2];
      v24 = __OFADD__(v23, 1);
      v25 = v23 + 1;
      if (v24)
      {
        break;
      }

      result[2] = v25;
      v11 = v33;
      if (!v33)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v5 >= v12)
      {
        return result;
      }

      v15 = *(v7 + 8 * v5);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v33 = (v15 - 1) & v15;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_24E70CF74(_OWORD *a1, __int128 *a2)
{
  v2 = a1[7];
  v3 = a1[9];
  v56 = a1[8];
  v57 = v3;
  v4 = a1[9];
  v58 = a1[10];
  v5 = a1[3];
  v6 = a1[5];
  v52 = a1[4];
  v53 = v6;
  v7 = a1[5];
  v8 = a1[7];
  v54 = a1[6];
  v55 = v8;
  v9 = a1[1];
  v49[0] = *a1;
  v49[1] = v9;
  v10 = a1[3];
  v11 = *a1;
  v12 = a1[1];
  v50 = a1[2];
  v51 = v10;
  v13 = a2[7];
  v14 = a2[9];
  v67 = a2[8];
  v68 = v14;
  v15 = a2[9];
  v69 = a2[10];
  v16 = a2[3];
  v17 = a2[5];
  v63 = a2[4];
  v64 = v17;
  v18 = a2[5];
  v19 = a2[7];
  v65 = a2[6];
  v66 = v19;
  v20 = a2[1];
  v59 = *a2;
  v60 = v20;
  v21 = a2[3];
  v23 = *a2;
  v22 = a2[1];
  v61 = a2[2];
  v62 = v21;
  v24 = a1[7];
  v25 = a1[9];
  v70[8] = a1[8];
  v70[9] = v25;
  v26 = a1[3];
  v27 = a1[5];
  v70[4] = a1[4];
  v70[5] = v27;
  v28 = a1[6];
  v70[7] = v24;
  v70[6] = v28;
  v29 = a1[1];
  v70[0] = *a1;
  v70[1] = v29;
  v30 = a1[2];
  v70[3] = v26;
  v70[2] = v30;
  v70[18] = v13;
  v70[19] = v67;
  v31 = a2[10];
  v70[20] = v15;
  v70[21] = v31;
  v70[14] = v16;
  v70[15] = v63;
  v70[16] = v18;
  v70[17] = v65;
  v70[10] = a1[10];
  v70[11] = v23;
  v70[12] = v22;
  v70[13] = v61;
  v79 = v56;
  v80 = v4;
  v81 = a1[10];
  v75 = v52;
  v76 = v7;
  v77 = v54;
  v78 = v2;
  v71 = v11;
  v72 = v12;
  v73 = v50;
  v74 = v5;
  v32 = sub_24E66927C(&v71);
  if (v32)
  {
    if (v32 == 1)
    {
      v46 = v67;
      v47 = v68;
      v48 = v69;
      v42 = v63;
      v43 = v64;
      v44 = v65;
      v45 = v66;
      v38 = v59;
      v39 = v60;
      v40 = v61;
      v41 = v62;
      if (sub_24E66927C(&v38) != 1)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }

    v46 = v67;
    v47 = v68;
    v48 = v69;
    v42 = v63;
    v43 = v64;
    v44 = v65;
    v45 = v66;
    v38 = v59;
    v39 = v60;
    v40 = v61;
    v41 = v62;
    if (sub_24E66927C(&v38) == 2)
    {
LABEL_8:
      sub_24E601704(v70, &qword_27F2156E8, &unk_24F940A50);
      v33 = 1;
      return v33 & 1;
    }

LABEL_9:
    sub_24E6691F8(&v59, &v38);
    sub_24E6691F8(v49, &v38);
    sub_24E601704(v70, &qword_27F2156E8, &unk_24F940A50);
    v33 = 0;
    return v33 & 1;
  }

  v46 = v67;
  v47 = v68;
  v48 = v69;
  v42 = v63;
  v43 = v64;
  v44 = v65;
  v45 = v66;
  v38 = v59;
  v39 = v60;
  v40 = v61;
  v41 = v62;
  if (sub_24E66927C(&v38))
  {
    goto LABEL_9;
  }

  v37[8] = v79;
  v37[9] = v80;
  v37[10] = v81;
  v37[4] = v75;
  v37[5] = v76;
  v37[6] = v77;
  v37[7] = v78;
  v37[0] = v71;
  v37[1] = v72;
  v37[2] = v73;
  v37[3] = v74;
  v36[8] = v46;
  v36[9] = v47;
  v36[10] = v48;
  v36[4] = v42;
  v36[5] = v43;
  v36[6] = v44;
  v36[7] = v45;
  v36[0] = v38;
  v36[1] = v39;
  v36[2] = v40;
  v36[3] = v41;
  sub_24E6691F8(&v59, v35);
  sub_24E6691F8(v49, v35);
  sub_24E6691F8(&v59, v35);
  sub_24E6691F8(v49, v35);
  v33 = _s12GameStoreKit23SearchRequestDescriptorV2eeoiySbAC_ACtFZ_0(v37, v36);
  sub_24E601704(v70, &qword_27F2156E8, &unk_24F940A50);
  sub_24E70D2CC(&v59);
  sub_24E70D2CC(v49);
  return v33 & 1;
}

uint64_t sub_24E70D300(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_24E6541E4;

  return sub_24E70B280(a1, v4, v5, v6);
}

uint64_t sub_24E70D3D8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2156B8, &qword_24F940900);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_24E70D448(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2156B8, &qword_24F940900);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_24E70D4B8()
{
  result = qword_27F219700;
  if (!qword_27F219700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F219700);
  }

  return result;
}

uint64_t sub_24E70D50C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SearchSuggestionsResult(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24E70D570(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24E70D600()
{
  v1 = v0[2];
  v2 = v0[4];
  *(v1 + 296) = v0[3];
  *(v1 + 304) = v2;
}

uint64_t sub_24E70D648()
{
  *(*(v0 + 16) + OBJC_IVAR____TtC12GameStoreKit19SearchPagePresenter__friendsPlayingGames) = *(v0 + 24);
}

uint64_t sub_24E70D68C(uint64_t result, uint64_t a2)
{
  if (a2)
  {
  }

  return v2;
}

uint64_t objectdestroyTm_9()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_24E70D710(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_24E614970;

  return sub_24E70A85C(a1, v4, v5, v6);
}

unint64_t sub_24E70D7C4()
{
  result = qword_27F219718;
  if (!qword_27F219718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F219718);
  }

  return result;
}

uint64_t sub_24E70D818(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24E70D880(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

double sub_24E70D8E0(_OWORD *a1)
{
  result = 0.0;
  a1[9] = 0u;
  a1[10] = 0u;
  a1[7] = 0u;
  a1[8] = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  return result;
}

uint64_t sub_24E70D960(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Player(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24E70D9F8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Player(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_24E70DA78(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Player(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t type metadata accessor for AchievementsByGameDataIntent(uint64_t a1)
{
  result = qword_27F219720;
  if (!qword_27F219720)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24E70DB34(uint64_t a1)
{
  result = type metadata accessor for Player(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_24E70DBA8(uint64_t a1, void *a2)
{
  v3 = sub_24F928AE8();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v8 = a2;
    sub_24F92A9A8();
  }

  else
  {
    (*(v4 + 104))(v7, *MEMORY[0x277D21CA8], v3, v5);
    sub_24F92A9C8();
    (*(v4 + 8))(v7, v3);
  }
}

id sub_24E70DCE8(void *a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530, &unk_24F93C6E0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = aBlock - v4;
  v6 = sub_24F91F4A8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23F510, &unk_24F93C690);
  v10 = sub_24F92A9E8();
  sub_24F91F488();
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_24E70E058(v5);
    type metadata accessor for OpenURLActionImplementation.OpenURLActionError(0, a2, v11, v12);
    swift_getWitnessTable();
    v13 = swift_allocError();
    sub_24F92A9A8();

    return v10;
  }

  (*(v7 + 32))(v9, v5, v6);
  result = [objc_opt_self() defaultWorkspace];
  if (result)
  {
    v15 = result;
    v16 = sub_24F91F3B8();
    v17 = [objc_allocWithZone(MEMORY[0x277CC1F00]) init];
    aBlock[4] = sub_24E70E0D8;
    aBlock[5] = v10;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_24F56E000;
    aBlock[3] = &block_descriptor_9;
    v18 = _Block_copy(aBlock);

    [v15 openURL:v16 configuration:v17 completionHandler:v18];
    _Block_release(v18);

    (*(v7 + 8))(v9, v6);
    return v10;
  }

  __break(1u);
  return result;
}

unint64_t sub_24E70DFE8()
{
  result = qword_27F2162F8;
  if (!qword_27F2162F8)
  {
    type metadata accessor for OpenURLAction(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2162F8);
  }

  return result;
}

uint64_t sub_24E70E058(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530, &unk_24F93C6E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t block_copy_helper_9(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t ChallengesAllGamesShelfConstructionIntent.pageID.getter()
{
  v1 = *(v0 + 8);

  return v1;
}