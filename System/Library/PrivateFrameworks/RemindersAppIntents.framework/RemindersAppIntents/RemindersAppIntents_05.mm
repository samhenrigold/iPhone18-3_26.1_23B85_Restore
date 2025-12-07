uint64_t sub_261B73000(uint64_t a1, _OWORD *a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_261AF43A8;

  return REMStoreIntentPerformer.perform(_:)(a1, a2);
}

unint64_t sub_261B730AC()
{
  result = qword_27FEDAFD8;
  if (!qword_27FEDAFD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FEDAFD0, &qword_261D072B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDAFD8);
  }

  return result;
}

uint64_t sub_261B73110(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_261B73178(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_261B731E0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_261B73240@<X0>(unsigned int (**a1)(char *, uint64_t, uint64_t)@<X0>, uint64_t *a2@<X8>)
{
  v197 = a2;
  v182 = sub_261CFEC94();
  MEMORY[0x28223BE20](v182);
  v183 = &v146 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v194 = sub_261CFD674();
  v196 = *(v194 - 8);
  MEMORY[0x28223BE20](v194);
  v179 = &v146 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_261CFD884();
  MEMORY[0x28223BE20](v5 - 8);
  v178 = &v146 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_261CFFA44();
  MEMORY[0x28223BE20](v7 - 8);
  v177 = &v146 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_261CFD6A4();
  MEMORY[0x28223BE20](v9 - 8);
  v189 = &v146 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v192 = sub_261CFDDD4();
  v176 = *(v192 - 1);
  MEMORY[0x28223BE20](v192);
  v175 = (&v146 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v187 = type metadata accessor for AppEntityID(0);
  MEMORY[0x28223BE20](v187);
  v193 = (&v146 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDB0B0, &unk_261D035D0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v146 - v14;
  v16 = sub_261CFC954();
  v199 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v201 = (&v146 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDD950, &unk_261D01440);
  v19 = MEMORY[0x28223BE20](v18 - 8);
  v181 = &v146 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v180 = &v146 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v190 = &v146 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v27 = (&v146 - v26);
  MEMORY[0x28223BE20](v25);
  v29 = &v146 - v28;
  v30 = type metadata accessor for GroupEntity(0);
  v31 = *(*(v30 - 8) + 56);
  v191 = v29;
  v31(v29, 1, 1, v30);
  v32 = [a1 parentList];
  v198 = v16;
  if (v32)
  {
    v33 = v32;
    sub_261B84F14(v33, 0, v27);
    v34 = v191;
    sub_261AE6A40(v191, &unk_27FEDD950, &unk_261D01440);

    v31(v27, 0, 1, v30);
    sub_261B7C25C(v27, v34);
  }

  v35 = [a1 shareeContext];
  if (v35)
  {
    v213[0] = v35;
    v36 = v35;
    sub_261B05020(0, &qword_27FEDB0E8, 0x277D446B8);
    v37 = sub_261CFE4A4();

    if (v37 >> 62)
    {
      goto LABEL_34;
    }

    for (i = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_261D00274())
    {
      v188 = a1;
      if (!i)
      {
        break;
      }

      v39 = 0;
      v40 = v37 & 0xC000000000000001;
      v41 = v37 & 0xFFFFFFFFFFFFFF8;
      a1 = (v199 + 48);
      v200 = (v199 + 32);
      v202 = MEMORY[0x277D84F90];
      v195 = v37 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v40)
        {
          v42 = MEMORY[0x26671CA10](v39, v37);
        }

        else
        {
          if (v39 >= *(v41 + 16))
          {
            goto LABEL_33;
          }

          v42 = *(v37 + 8 * v39 + 32);
        }

        v43 = v42;
        v44 = v39 + 1;
        if (__OFADD__(v39, 1))
        {
          break;
        }

        sub_261B76B88(v15);

        if ((*a1)(v15, 1, v16) == 1)
        {
          sub_261AE6A40(v15, &unk_27FEDB0B0, &unk_261D035D0);
        }

        else
        {
          v45 = v37;
          v46 = v40;
          v47 = i;
          v48 = *v200;
          (*v200)(v201, v15, v16);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v202 = sub_261B41588(0, v202[2] + 1, 1, v202);
          }

          v50 = v202[2];
          v49 = v202[3];
          if (v50 >= v49 >> 1)
          {
            v202 = sub_261B41588((v49 > 1), v50 + 1, 1, v202);
          }

          v51 = v202;
          v202[2] = v50 + 1;
          v52 = v51 + ((*(v199 + 80) + 32) & ~*(v199 + 80)) + *(v199 + 72) * v50;
          v16 = v198;
          v48(v52, v201, v198);
          i = v47;
          v40 = v46;
          v37 = v45;
          v41 = v195;
        }

        ++v39;
        if (v44 == i)
        {
          goto LABEL_23;
        }
      }

      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:
      ;
    }

    v202 = MEMORY[0x277D84F90];
LABEL_23:

    a1 = v188;
  }

  else
  {
    v202 = 0;
  }

  v53 = [a1 groceryContext];
  LODWORD(v188) = v53 && (v54 = v53, v55 = [v53 shouldCategorizeGroceryItems], v54, (v55 & 1) != 0);
  v56 = [a1 objectID];
  v57 = [v56 entityName];
  v58 = sub_261CFFA74();
  v60 = v59;

  v61 = [v56 uuid];
  v62 = v187;
  v63 = v193;
  sub_261CFD834();

  v64 = *(v62 + 24);
  v65 = type metadata accessor for RecurrentInstanceSpecifier(0);
  (*(*(v65 - 8) + 56))(v63 + v64, 1, 1, v65);
  *v63 = v58;
  v63[1] = v60;
  v66 = [a1 displayName];
  v174 = sub_261CFFA74();
  v173 = v67;

  v68 = sub_261B05020(0, &qword_27FEDB0E0, 0x277D44660);
  v69 = MEMORY[0x277D45F10];
  v206 = v68;
  v207 = MEMORY[0x277D45F10];
  v203 = a1;
  v70 = a1;
  ColorEntity.init(list:)(&v203, v213);
  v71 = v213[1];
  v169 = v213[0];
  v72 = v213[2];
  v167 = v213[3];
  v186 = v213[4];
  v185 = v213[5];
  v184 = v213[6];
  v206 = v68;
  v207 = v69;
  v203 = v70;
  v73 = v70;
  ListBadgeEntity.init(list:)(&v203, v212);
  v199 = v212[0];
  v198 = v212[1];
  v195 = v212[2];
  v166 = v212[3];
  v165 = v212[4];
  sub_261AFB668(v191, v190, &unk_27FEDD950, &unk_261D01440);
  v74 = sub_261B7777C();
  v76 = v75;
  v77 = sub_261B77B74();
  v164 = [v73 isPinned];
  sub_261CFDE54();
  v78 = sub_261CFDDA4();
  v79 = [v73 remObjectID];
  v80 = v175;
  *v175 = v79;
  v81 = v176;
  v82 = v192;
  (*(v176 + 104))(v80, *MEMORY[0x277D45C90], v192);
  v163 = sub_261CFDDC4();

  (*(v81 + 8))(v80, v82);
  v83 = sub_261D000C4();
  v172 = v74;
  v171 = v76;
  v170 = v77;
  v168 = v71;
  v187 = v72;
  if (v83)
  {
    v84 = v83;
    v162 = [v83 shouldAutoCategorizeItems];
  }

  else
  {
    v162 = 0;
  }

  sub_261B77E3C(&v211);
  v161 = v211;
  v85 = [v73 sortingStyle];
  sub_261B781A4(&v210);

  v160 = v210;
  v86 = sub_261D000B4();
  v158 = [v86 supportsListAppearance];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FED9F98, &qword_261D01460);
  v155 = sub_261AFF54C();
  v176 = sub_261CFCA44();
  v87 = v197;
  *v197 = v176;
  v88 = type metadata accessor for ListEntity(0);
  v89 = v88[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDD8C0, &qword_261D01468);
  v175 = sub_261CFCB24();
  *(v87 + v89) = v175;
  v159 = v88[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDB020, &unk_261D01470);
  sub_261CFF9B4();
  sub_261CFD874();
  LODWORD(v200) = *MEMORY[0x277CC9110];
  v90 = v196[13];
  v196 += 13;
  v91 = v179;
  v92 = v194;
  (v90)(v179);
  v93 = v189;
  sub_261CFD6B4();
  v94 = MEMORY[0x2667199E0](v93, &type metadata for UpdateListNameAppIntent);
  *(v159 + v87) = v94;
  v159 = v73;
  v201 = v88;
  v156 = v88[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDD960, &qword_261D047C0);
  sub_261CFF9B4();
  sub_261CFD874();
  v95 = v200;
  (v90)(v91, v200, v92);
  sub_261CFD6B4();
  v96 = sub_261AFF5A0();
  v157 = MEMORY[0x2667199D0](v93, &type metadata for UpdateListColorAppIntent, v96);
  *(v197 + v156) = v157;
  v154 = v88[9];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDD970, &qword_261D01480);
  sub_261CFF9B4();
  sub_261CFD874();
  (v90)(v91, v95, v92);
  v192 = v90;
  sub_261CFD6B4();
  v97 = sub_261AFF5F4();
  v156 = MEMORY[0x2667199D0](v93, &type metadata for UpdateListBadgeAppIntent, v97);
  v98 = v197;
  *(v197 + v154) = v156;
  v99 = v201;
  v153 = v201[10];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDD980, &qword_261D01488);
  sub_261CFF9B4();
  sub_261CFD874();
  (v90)(v91, v200, v92);
  sub_261CFD6B4();
  v100 = sub_261B7C154(&qword_280D22670, type metadata accessor for GroupEntity, &protocol conformance descriptor for GroupEntity);
  v154 = MEMORY[0x2667199D0](v93, &type metadata for UpdateListParentAppIntent, v100);
  *(v98 + v153) = v154;
  v101 = v99;
  v152 = v99[11];
  v153 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDD990, &qword_261D01490);
  sub_261CFF9B4();
  sub_261CFD874();
  v102 = v200;
  v103 = v192;
  (v192)(v91, v200, v92);
  sub_261CFD6B4();
  v153 = sub_261CFCA84();
  *(v98 + v152) = v153;
  v151 = v101[12];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDB050, &qword_261D01498);
  sub_261CFF9B4();
  sub_261CFD874();
  v103(v91, v102, v92);
  v104 = v93;
  v105 = v91;
  sub_261CFD6B4();
  sub_261B7C154(&qword_280D224E0, type metadata accessor for SectionEntity, &protocol conformance descriptor for SectionEntity);
  v152 = sub_261CFCA54();
  v106 = v197;
  *(v197 + v151) = v152;
  v150 = v201[13];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDB060, &qword_261D014A0);
  sub_261CFF9B4();
  sub_261CFD874();
  v107 = v192;
  (v192)(v91, v102, v92);
  sub_261CFD6B4();
  v151 = MEMORY[0x2667199F0](v104, &type metadata for UpdateListIsPinnedAppIntent);
  *(v106 + v150) = v151;
  v108 = v201;
  v149 = v201[14];
  v150 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDD9A0, &qword_261D014A8);
  sub_261CFF9B4();
  sub_261CFD874();
  v109 = v102;
  v110 = v102;
  v111 = v194;
  v107(v91, v109, v194);
  v112 = v189;
  sub_261CFD6B4();
  v150 = MEMORY[0x2667199F0](v112, &type metadata for UpdateListShowsCompletedAppIntent);
  *(v106 + v149) = v150;
  v148 = v108[15];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDB070, &unk_261D014B0);
  sub_261CFF9B4();
  sub_261CFD874();
  v107(v105, v110, v111);
  v113 = v112;
  v114 = v105;
  sub_261CFD6B4();
  v115 = v113;
  v149 = MEMORY[0x2667199F0](v113, &type metadata for UpdateListAutoCategorizeAppIntent);
  *(v106 + v148) = v149;
  v147 = v201[16];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDD9B0, &qword_261D03F00);
  sub_261CFF9B4();
  sub_261CFD874();
  v116 = v200;
  v117 = v194;
  v107(v114, v200, v194);
  sub_261CFD6B4();
  v118 = sub_261AFF648();
  v148 = MEMORY[0x2667199C0](v115, &type metadata for UpdateListListLayoutAppIntent, v118);
  *(v106 + v147) = v148;
  v119 = v201;
  v146 = v201[17];
  v147 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDD9C0, &unk_261D014C0);
  sub_261CFF9B4();
  sub_261CFD874();
  v120 = v117;
  v121 = v192;
  (v192)(v114, v116, v120);
  sub_261CFD6B4();
  v122 = sub_261AFF69C();
  v147 = MEMORY[0x2667199C0](v115, &type metadata for UpdateListSortingStyleAppIntent, v122);
  *(v106 + v146) = v147;
  v123 = v119[18];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDD9D0, &qword_261D03B00);
  sub_261CFF9B4();
  sub_261CFD874();
  v121(v114, v200, v194);
  sub_261CFD6B4();
  v194 = MEMORY[0x2667199C0](v115, &type metadata for UpdateListTypeAppIntent, v155);
  *(v106 + v123) = v194;
  v124 = (v106 + v119[19]);
  v196 = v124;
  *v124 = 0;
  v124[1] = 0;
  v200 = v119[20];
  *(v200 + v106) = 0;
  sub_261B7C0F0(v193, v106 + v119[5]);
  *(v106 + v119[21]) = 0;
  type metadata accessor for AnyListEntityLazyImage(0);
  v125 = swift_allocObject();
  v203 = MEMORY[0x277D84F90];
  v126 = v166;
  v127 = v165;
  sub_261AF9C0C(v199, v198, v195, v166, v165);
  v128 = v169;
  v129 = v168;
  v130 = v187;
  v131 = v167;
  sub_261AF9844(v169, v168, v187, v167, v186, v185, v184);
  sub_261B7C154(&qword_280D22D90, MEMORY[0x277D44D10], MEMORY[0x277D44D18]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDD9E0, &qword_261D014D0);
  sub_261B7C19C();
  sub_261D001D4();
  sub_261CFECB4();
  swift_allocObject();
  *(v125 + 128) = sub_261CFECA4();
  v132 = OBJC_IVAR____TtC19RemindersAppIntents22AnyListEntityLazyImage_cachedDisplayRepresentationImage;
  v133 = sub_261CFD074();
  (*(*(v133 - 8) + 56))(v125 + v132, 1, 1, v133);
  *(v125 + 16) = 1;
  v134 = v198;
  *(v125 + 24) = v199;
  *(v125 + 32) = v134;
  *(v125 + 40) = v195;
  *(v125 + 48) = v126;
  *(v125 + 56) = v127;
  *(v125 + 64) = v128;
  v135 = v129;
  *(v125 + 72) = v129;
  *(v125 + 80) = v130;
  v136 = v186;
  *(v125 + 88) = v131;
  *(v125 + 96) = v136;
  v137 = v185;
  v138 = v184;
  *(v125 + 104) = v185;
  *(v125 + 112) = v138;
  *(v125 + 120) = v158;
  *(v125 + 121) = 1;
  *(v197 + v201[22]) = v125;
  LOBYTE(v203) = v164;
  sub_261CFD2E4();
  LOBYTE(v203) = v163 & 1;
  sub_261CFD2E4();
  LOBYTE(v203) = v162;
  sub_261CFD2E4();
  LOBYTE(v203) = v161;
  sub_261CFD2E4();
  LOBYTE(v203) = v160;
  sub_261CFD2E4();
  LOBYTE(v203) = v188;
  sub_261CFD2E4();
  v203 = v128;
  v204 = v135;
  v205 = v187;
  v206 = v131;
  v207 = v136;
  v208 = v137;
  v209 = v138;
  sub_261CFD2E4();
  v203 = v199;
  v204 = v198;
  v205 = v195;
  v206 = v126;
  v207 = v127;
  sub_261CFD2E4();
  v139 = v190;
  v140 = v180;
  sub_261AFB668(v190, v180, &unk_27FEDD950, &unk_261D01440);
  sub_261AFB668(v140, v181, &unk_27FEDD950, &unk_261D01440);
  sub_261CFD2E4();
  sub_261AE6A40(v140, &unk_27FEDD950, &unk_261D01440);
  v141 = v196;
  v142 = v171;
  *v196 = v172;
  v141[1] = v142;
  v143 = v197;
  *(v200 + v197) = v170;
  v203 = v202;
  sub_261CFCA14();
  v203 = MEMORY[0x277D84F90];
  sub_261CFCA14();
  v203 = v174;
  v204 = v173;
  sub_261CFCA14();
  LOBYTE(v203) = v188;
  sub_261CFCA14();
  sub_261AE6A40(v139, &unk_27FEDD950, &unk_261D01440);
  sub_261B7C200(v193);
  v144 = v159;
  sub_261B78660(v143);

  return sub_261AE6A40(v191, &unk_27FEDD950, &unk_261D01440);
}

uint64_t sub_261B750A0@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v170 = a3;
  v152 = sub_261CFEC94();
  MEMORY[0x28223BE20](v152);
  v153 = v120 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v169 = sub_261CFD674();
  v164 = *(v169 - 8);
  MEMORY[0x28223BE20](v169);
  v149 = v120 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_261CFD884();
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v120 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_261CFFA44();
  MEMORY[0x28223BE20](v10 - 8);
  v11 = sub_261CFD6A4();
  MEMORY[0x28223BE20](v11 - 8);
  v155 = v120 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v168 = sub_261CFDDD4();
  v167 = *(v168 - 1);
  MEMORY[0x28223BE20](v168);
  v166 = (v120 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v163 = type metadata accessor for AppEntityID(0);
  MEMORY[0x28223BE20](v163);
  v165 = (v120 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDD950, &unk_261D01440);
  v16 = MEMORY[0x28223BE20](v15 - 8);
  v151 = v120 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v150 = v120 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v160 = v120 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v24 = (v120 - v23);
  MEMORY[0x28223BE20](v22);
  v26 = v120 - v25;
  v27 = type metadata accessor for GroupEntity(0);
  v28 = *(*(v27 - 8) + 56);
  v28(v26, 1, 1, v27);
  v154 = a2;
  if (a2)
  {
    v29 = a2;
    sub_261B84F14(v29, 0, v24);
    sub_261AE6A40(v26, &unk_27FEDD950, &unk_261D01440);

    v28(v24, 0, 1, v27);
    sub_261B7C25C(v24, v26);
  }

  v145 = v26;
  v30 = [a1 objectID];
  v31 = [v30 entityName];
  v32 = sub_261CFFA74();
  v34 = v33;

  v35 = [v30 uuid];
  v36 = v163;
  v37 = v165;
  sub_261CFD834();

  v38 = *(v36 + 24);
  v39 = type metadata accessor for RecurrentInstanceSpecifier(0);
  (*(*(v39 - 8) + 56))(v37 + v38, 1, 1, v39);
  *v37 = v32;
  v37[1] = v34;
  v40 = [a1 name];
  v148 = sub_261CFFA74();
  v147 = v41;

  v42 = sub_261B05020(0, &unk_27FEDB000, 0x277D447F8);
  v43 = MEMORY[0x277D45EA8];
  v174 = v42;
  v175 = MEMORY[0x277D45EA8];
  v171 = a1;
  v44 = a1;
  ColorEntity.init(list:)(&v171, v181);
  v159 = v181[0];
  v158 = v181[1];
  v138 = v181[2];
  v137 = v181[3];
  v136 = v181[4];
  v135 = v181[5];
  v134 = v181[6];
  v174 = v42;
  v175 = v43;
  v171 = v44;
  v45 = v44;
  ListBadgeEntity.init(list:)(&v171, v180);
  v156 = v180[0];
  v157 = v180[1];
  v161 = v180[2];
  v163 = v180[3];
  v162 = v180[4];
  sub_261AFB668(v26, v160, &unk_27FEDD950, &unk_261D01440);
  v144 = [v45 isPinned];
  sub_261CFDE54();
  v46 = sub_261CFDDA4();
  v47 = [v45 objectID];
  v48 = v166;
  *v166 = v47;
  v49 = v167;
  v50 = v168;
  (*(v167 + 13))(v48, *MEMORY[0x277D45C98], v168);
  v142 = sub_261CFDDC4();

  (*(v49 + 1))(v48, v50);
  sub_261B78D78(&v179);
  v140 = v179;
  v146 = v45;
  v51 = [v45 sortingStyle];
  sub_261B781A4(&v178);

  v139 = v178;
  v52 = [v45 accountCapabilities];
  v133 = [v52 supportsListAppearance];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FED9F98, &qword_261D01460);
  v130 = sub_261AFF54C();
  v143 = sub_261CFCA44();
  v53 = v170;
  *v170 = v143;
  v54 = v53;
  v55 = type metadata accessor for ListEntity(0);
  v56 = v55[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDD8C0, &qword_261D01468);
  v141 = sub_261CFCB24();
  *(v54 + v56) = v141;
  v132 = v55[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDB020, &unk_261D01470);
  sub_261CFF9B4();
  sub_261CFD874();
  LODWORD(v166) = *MEMORY[0x277CC9110];
  v57 = v164 + 104;
  v58 = *(v164 + 104);
  v59 = v149;
  v60 = v169;
  v58(v149);
  v167 = v58;
  v61 = v155;
  sub_261CFD6B4();
  v62 = MEMORY[0x2667199E0](v61, &type metadata for UpdateListNameAppIntent);
  v63 = v170;
  *(v170 + v132) = v62;
  v131 = v55[8];
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDD960, &qword_261D047C0);
  sub_261CFF9B4();
  sub_261CFD874();
  v64 = v59;
  v65 = v59;
  v66 = v166;
  (v58)(v64, v166, v60);
  sub_261CFD6B4();
  v67 = sub_261AFF5A0();
  v132 = MEMORY[0x2667199D0](v61, &type metadata for UpdateListColorAppIntent, v67);
  *(v63 + v131) = v132;
  v129 = v55[9];
  v68 = v55;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDD970, &qword_261D01480);
  sub_261CFF9B4();
  v69 = v9;
  sub_261CFD874();
  v70 = v60;
  v71 = v60;
  v72 = v167;
  (v167)(v65, v66, v70);
  v73 = v69;
  sub_261CFD6B4();
  v74 = sub_261AFF5F4();
  v131 = MEMORY[0x2667199D0](v61, &type metadata for UpdateListBadgeAppIntent, v74);
  v75 = v170;
  *(v170 + v129) = v131;
  v128 = v68[10];
  v168 = v68;
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDD980, &qword_261D01488);
  sub_261CFF9B4();
  v120[1] = v73;
  sub_261CFD874();
  (v72)(v65, v166, v71);
  sub_261CFD6B4();
  v76 = sub_261B7C154(&qword_280D22670, type metadata accessor for GroupEntity, &protocol conformance descriptor for GroupEntity);
  v129 = MEMORY[0x2667199D0](v61, &type metadata for UpdateListParentAppIntent, v76);
  *(v75 + v128) = v129;
  v77 = v75;
  v127 = v68[11];
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDD990, &qword_261D01490);
  sub_261CFF9B4();
  sub_261CFD874();
  v78 = v166;
  v79 = v169;
  v80 = v167;
  (v167)(v65, v166, v169);
  sub_261CFD6B4();
  v128 = sub_261CFCA84();
  *(v77 + v127) = v128;
  v126 = v168[12];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDB050, &qword_261D01498);
  sub_261CFF9B4();
  sub_261CFD874();
  v80(v65, v78, v79);
  v81 = v80;
  sub_261CFD6B4();
  sub_261B7C154(&qword_280D224E0, type metadata accessor for SectionEntity, &protocol conformance descriptor for SectionEntity);
  v127 = sub_261CFCA54();
  *(v77 + v126) = v127;
  v82 = v168;
  v125 = v168[13];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDB060, &qword_261D014A0);
  sub_261CFF9B4();
  sub_261CFD874();
  v81(v65, v78, v169);
  v164 = v57;
  sub_261CFD6B4();
  v126 = MEMORY[0x2667199F0](v61, &type metadata for UpdateListIsPinnedAppIntent);
  *(v77 + v125) = v126;
  v83 = v77;
  v124 = v82[14];
  v84 = v82;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDD9A0, &qword_261D014A8);
  sub_261CFF9B4();
  sub_261CFD874();
  v85 = v78;
  v86 = v169;
  v87 = v167;
  (v167)(v65, v85, v169);
  sub_261CFD6B4();
  v125 = MEMORY[0x2667199F0](v61, &type metadata for UpdateListShowsCompletedAppIntent);
  *(v83 + v124) = v125;
  v123 = v84[15];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDB070, &unk_261D014B0);
  sub_261CFF9B4();
  sub_261CFD874();
  v88 = v166;
  (v87)(v65, v166, v86);
  sub_261CFD6B4();
  v124 = MEMORY[0x2667199F0](v61, &type metadata for UpdateListAutoCategorizeAppIntent);
  *(v83 + v123) = v124;
  v89 = v168;
  v122 = v168[16];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDD9B0, &qword_261D03F00);
  sub_261CFF9B4();
  sub_261CFD874();
  v90 = v88;
  v91 = v167;
  (v167)(v65, v88, v169);
  sub_261CFD6B4();
  v92 = sub_261AFF648();
  v123 = MEMORY[0x2667199C0](v61, &type metadata for UpdateListListLayoutAppIntent, v92);
  v93 = v170;
  *(v170 + v122) = v123;
  v121 = v89[17];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDD9C0, &unk_261D014C0);
  sub_261CFF9B4();
  sub_261CFD874();
  v94 = v169;
  v91(v65, v90, v169);
  v95 = v155;
  sub_261CFD6B4();
  v96 = sub_261AFF69C();
  v122 = MEMORY[0x2667199C0](v95, &type metadata for UpdateListSortingStyleAppIntent, v96);
  *(v93 + v121) = v122;
  v97 = v168;
  v98 = v168[18];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDD9D0, &qword_261D03B00);
  sub_261CFF9B4();
  sub_261CFD874();
  (v167)(v65, v166, v94);
  sub_261CFD6B4();
  v166 = MEMORY[0x2667199C0](v95, &type metadata for UpdateListTypeAppIntent, v130);
  *(v93 + v98) = v166;
  v99 = (v93 + v97[19]);
  v167 = v99;
  *v99 = 0;
  *(v99 + 1) = 0;
  v169 = v97[20];
  *(v93 + v169) = 0;
  sub_261B7C0F0(v165, v93 + v97[5]);
  *(v93 + v97[21]) = 1;
  LOBYTE(v164) = sub_261D00614() & 1;
  LODWORD(v164) = v164;
  type metadata accessor for AnyListEntityLazyImage(0);
  v100 = swift_allocObject();
  v171 = MEMORY[0x277D84F90];
  v101 = v156;
  sub_261AF9C0C(v156, v157, v161, v163, v162);
  v102 = v138;
  v103 = v137;
  v104 = v136;
  v105 = v135;
  v106 = v134;
  sub_261AF9844(v159, v158, v138, v137, v136, v135, v134);
  sub_261B7C154(&qword_280D22D90, MEMORY[0x277D44D10], MEMORY[0x277D44D18]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDD9E0, &qword_261D014D0);
  sub_261B7C19C();
  sub_261D001D4();
  sub_261CFECB4();
  swift_allocObject();
  *(v100 + 128) = sub_261CFECA4();
  v107 = OBJC_IVAR____TtC19RemindersAppIntents22AnyListEntityLazyImage_cachedDisplayRepresentationImage;
  v108 = sub_261CFD074();
  (*(*(v108 - 8) + 56))(v100 + v107, 1, 1, v108);
  *(v100 + 16) = v164;
  *(v100 + 24) = v101;
  v109 = v157;
  v110 = v161;
  *(v100 + 32) = v157;
  *(v100 + 40) = v110;
  v111 = v162;
  *(v100 + 48) = v163;
  *(v100 + 56) = v111;
  v112 = v159;
  v113 = v158;
  *(v100 + 64) = v159;
  *(v100 + 72) = v113;
  *(v100 + 80) = v102;
  *(v100 + 88) = v103;
  *(v100 + 96) = v104;
  *(v100 + 104) = v105;
  *(v100 + 112) = v106;
  *(v100 + 120) = v133;
  *(v100 + 121) = 1;
  *(v170 + v168[22]) = v100;
  LOBYTE(v171) = v144;
  sub_261CFD2E4();
  LOBYTE(v171) = v142 & 1;
  sub_261CFD2E4();
  LOBYTE(v171) = 0;
  sub_261CFD2E4();
  LOBYTE(v171) = v140;
  sub_261CFD2E4();
  LOBYTE(v171) = v139;
  sub_261CFD2E4();
  LOBYTE(v171) = 0;
  sub_261CFD2E4();
  v171 = v112;
  v172 = v113;
  v173 = v102;
  v174 = v103;
  v175 = v104;
  v176 = v105;
  v177 = v106;
  sub_261CFD2E4();
  v171 = v156;
  v172 = v109;
  v173 = v161;
  v174 = v163;
  v175 = v162;
  sub_261CFD2E4();
  v114 = v160;
  v115 = v150;
  sub_261AFB668(v160, v150, &unk_27FEDD950, &unk_261D01440);
  sub_261AFB668(v115, v151, &unk_27FEDD950, &unk_261D01440);
  sub_261CFD2E4();
  sub_261AE6A40(v115, &unk_27FEDD950, &unk_261D01440);
  v116 = v167;
  *v167 = 0;
  *(v116 + 1) = 0;
  v117 = v170;
  *(v170 + v169) = 0;
  v171 = 0;
  sub_261CFCA14();
  v171 = MEMORY[0x277D84F90];
  sub_261CFCA14();
  v171 = v148;
  v172 = v147;
  sub_261CFCA14();
  LOBYTE(v171) = 0;
  sub_261CFCA14();
  sub_261AE6A40(v114, &unk_27FEDD950, &unk_261D01440);
  sub_261B7C200(v165);
  v118 = v146;
  sub_261B790E0(v117);

  return sub_261AE6A40(v145, &unk_27FEDD950, &unk_261D01440);
}

uint64_t sub_261B76AC0()
{
  v0 = sub_261CFF7A4();
  __swift_allocate_value_buffer(v0, qword_27FEDAFE0);
  v1 = __swift_project_value_buffer(v0, qword_27FEDAFE0);
  if (qword_280D22888 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D27010);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_261B76B88@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDB0C8, &qword_261D050E8);
  MEMORY[0x28223BE20](v4 - 8);
  v110 = &v103 - v5;
  v6 = sub_261CFC8A4();
  v112 = *(v6 - 8);
  v113 = v6;
  v7 = MEMORY[0x28223BE20](v6);
  v109 = &v103 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v111 = (&v103 - v10);
  MEMORY[0x28223BE20](v9);
  v12 = &v103 - v11;
  v13 = sub_261CFD754();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v103 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDB0B0, &unk_261D035D0);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = (&v103 - v18);
  v20 = sub_261CFC954();
  v21 = *(v20 - 8);
  v115 = v20;
  v116 = v21;
  MEMORY[0x28223BE20](v20);
  v114 = &v103 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = [v1 address];
  if (v23)
  {
    v24 = v23;
    sub_261CFFA74();

    sub_261B05020(0, &qword_27FEDB0D0, 0x277D445D8);
    v25 = sub_261D00074();
    if (v25)
    {
      v26 = v25;
      v27 = [v2 objectID];
      v28 = [v27 urlRepresentation];

      sub_261CFD734();
      v29 = sub_261CFD6F4();
      v31 = v30;
      (*(v14 + 8))(v16, v13);
      sub_261C7D878(v29, v31, v19);

      v32 = v115;
      if ((*(v116 + 48))(v19, 1, v115) == 1)
      {
        v33 = v26;
        sub_261AE6A40(v19, &unk_27FEDB0B0, &unk_261D035D0);
        if (qword_27FED9930 != -1)
        {
          swift_once();
        }

        v34 = sub_261CFF7A4();
        __swift_project_value_buffer(v34, qword_27FEDAFE0);
        v35 = v2;
        v36 = sub_261CFF784();
        v37 = sub_261CFFE64();

        if (os_log_type_enabled(v36, v37))
        {
          v38 = swift_slowAlloc();
          v39 = swift_slowAlloc();
          v118[0] = v39;
          *v38 = 136315138;
          v40 = v35;
          v41 = [v40 description];
          v42 = sub_261CFFA74();
          v44 = v43;

          v32 = v115;
          v45 = sub_261B879C8(v42, v44, v118);

          *(v38 + 4) = v45;
          _os_log_impl(&dword_261AE2000, v36, v37, "Failed to convert sharee to IntentPerson for {sharee: %s}", v38, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v39);
          MEMORY[0x26671D560](v39, -1, -1);
          MEMORY[0x26671D560](v38, -1, -1);
        }

        return (*(v116 + 56))(a1, 1, 1, v32);
      }

      (*(v116 + 32))(v114, v19, v32);
      sub_261CFC8B4();
      v61 = v112;
      v62 = v113;
      v63 = (*(v112 + 88))(v12, v113);
      v64 = *MEMORY[0x277CB9CF8];
      if (v63 == v64)
      {
        (*(v61 + 8))(v12, v62);
        goto LABEL_18;
      }

      if (v63 != *MEMORY[0x277CB9D08])
      {
        if (v63 == *MEMORY[0x277CB9D18])
        {
LABEL_18:
          v65 = [v2 firstName];
          if (v65)
          {
            v66 = v26;
            v67 = v65;
            v109 = sub_261CFFA74();

            v68 = [v2 lastName];
            if (v68)
            {
              v69 = v68;
              v70 = sub_261CFFA74();
              v107 = v71;
              v108 = v70;

              v72 = [v2 namePrefix];
              if (v72)
              {
                v73 = v72;
                v74 = sub_261CFFA74();
                v105 = v75;
                v106 = v74;
              }

              else
              {
                v105 = 0;
                v106 = 0;
              }

              v95 = [v2 middleName];
              if (v95)
              {
                v96 = v95;
                v104 = sub_261CFFA74();
              }

              else
              {
                v104 = 0;
              }

              v97 = [v2 nameSuffix];
              if (v97)
              {
                v98 = v97;
                sub_261CFFA74();
              }

              v99 = [v2 nickname];
              if (v99)
              {
                v100 = v99;
                sub_261CFFA74();
              }

              v26 = v66;
              v101 = sub_261CFD5E4();
              (*(*(v101 - 8) + 56))(v110, 1, 1, v101);
              v102 = v111;
              sub_261CFD5D4();
              (*(v112 + 104))(v102, *MEMORY[0x277CB9D08], v113);
              goto LABEL_43;
            }

            v26 = v66;
            v62 = v113;
          }

          v87 = [v2 displayName];
          if (!v87)
          {
            v76 = v114;
            sub_261CFC8B4();
LABEL_44:
            sub_261CFC8C4();

            goto LABEL_45;
          }

          v88 = v61;
          v89 = v26;
          v90 = v87;
          v91 = sub_261CFFA74();
          v93 = v92;

          v26 = v89;
          v94 = v111;
          *v111 = v91;
          v94[1] = v93;
          (*(v88 + 104))(v94, v64, v62);
LABEL_43:
          v76 = v114;
          goto LABEL_44;
        }

        if (qword_27FED9930 != -1)
        {
          swift_once();
        }

        v77 = sub_261CFF7A4();
        __swift_project_value_buffer(v77, qword_27FEDAFE0);
        v78 = sub_261CFF784();
        v79 = sub_261CFFE74();
        if (os_log_type_enabled(v78, v79))
        {
          v80 = swift_slowAlloc();
          v81 = swift_slowAlloc();
          v117 = v81;
          *v80 = 136315138;
          swift_beginAccess();
          sub_261CFC8B4();
          swift_endAccess();
          v82 = sub_261CFFAB4();
          v84 = sub_261B879C8(v82, v83, &v117);

          *(v80 + 4) = v84;
          _os_log_impl(&dword_261AE2000, v78, v79, "Unhandled name case %s", v80, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v81);
          v85 = v81;
          v62 = v113;
          MEMORY[0x26671D560](v85, -1, -1);
          v86 = v80;
          v61 = v112;
          MEMORY[0x26671D560](v86, -1, -1);

          goto LABEL_24;
        }
      }

LABEL_24:
      (*(v61 + 8))(v12, v62);
      v76 = v114;
LABEL_45:
      swift_beginAccess();
      (*(v116 + 16))(a1, v76, v32);
      (*(v116 + 56))(a1, 0, 1, v32);
      return (*(v116 + 8))(v76, v32);
    }
  }

  if (qword_27FED9930 != -1)
  {
    swift_once();
  }

  v47 = sub_261CFF7A4();
  __swift_project_value_buffer(v47, qword_27FEDAFE0);
  v48 = v2;
  v49 = sub_261CFF784();
  v50 = sub_261CFFE64();

  if (os_log_type_enabled(v49, v50))
  {
    v51 = swift_slowAlloc();
    v52 = swift_slowAlloc();
    v118[0] = v52;
    *v51 = 136315138;
    v53 = v48;
    v54 = [v53 description];
    v55 = sub_261CFFA74();
    v57 = v56;

    v58 = sub_261B879C8(v55, v57, v118);

    *(v51 + 4) = v58;
    _os_log_impl(&dword_261AE2000, v49, v50, "Cannot create REMContactRepresentation with invalid sharee.address, will not create IntentPerson for {sharee: %s}", v51, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v52);
    MEMORY[0x26671D560](v52, -1, -1);
    MEMORY[0x26671D560](v51, -1, -1);
  }

  v59 = v115;
  v60 = *(v116 + 56);

  return v60(a1, 1, 1, v59);
}

uint64_t (*sub_261B7777C())()
{
  v1 = sub_261CFD844();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [v0 store];
  v6 = [v0 accountID];
  v7 = sub_261D000B4();
  v8 = [v5 storeContainerToken];
  if (v8)
  {
    v9 = v8;

    v6 = v5;
    v5 = v9;
LABEL_5:

    return sub_261B7C07C;
  }

  if (([v7 supportsCloudKitSync] & 1) == 0)
  {
    goto LABEL_5;
  }

  v10 = [v6 uuid];
  sub_261CFD834();

  v11 = sub_261CFD804();
  v13 = v12;

  (*(v2 + 8))(v4, v1);
  v14 = swift_allocObject();
  *(v14 + 16) = v11;
  *(v14 + 24) = v13;
  return sub_261B7C2D4;
}

uint64_t (*sub_261B77960())()
{
  v1 = v0;
  v2 = sub_261CFD844();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [v1 saveRequest];
  v7 = [v6 store];

  v8 = [v1 accountID];
  v9 = [v1 accountCapabilities];
  v10 = [v7 storeContainerToken];
  if (v10)
  {
    v11 = v10;

    v8 = v7;
    v7 = v11;
LABEL_5:

    return sub_261B7C07C;
  }

  if (([v9 supportsCloudKitSync] & 1) == 0)
  {
    goto LABEL_5;
  }

  v12 = [v8 uuid];
  sub_261CFD834();

  v13 = sub_261CFD804();
  v15 = v14;

  (*(v3 + 8))(v5, v2);
  v16 = swift_allocObject();
  *(v16 + 16) = v13;
  *(v16 + 24) = v15;
  return sub_261B7C2CC;
}

id sub_261B77B74()
{
  v16[1] = *MEMORY[0x277D85DE8];
  v1 = [v0 store];
  v2 = [v1 storeContainerToken];

  if (v2)
  {
LABEL_2:

    return 0;
  }

  v4 = [v0 account];
  v5 = [v4 accountTypeHost];

  LODWORD(v4) = [v5 isCloudKit];
  if (!v4 || ![v0 isShared])
  {
    return 0;
  }

  v6 = [v0 store];
  v7 = [v0 objectID];
  v16[0] = 0;
  v8 = [v6 fetchShareForListWithID:v7 error:v16];

  if (v16[0])
  {
    v2 = v16[0];

    swift_willThrow();
    if (qword_27FED9930 != -1)
    {
      swift_once();
    }

    v9 = sub_261CFF7A4();
    __swift_project_value_buffer(v9, qword_27FEDAFE0);
    v10 = v0;
    v11 = sub_261CFF784();
    v12 = sub_261CFFE64();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      *v13 = 138412290;
      v15 = [v10 objectID];
      *(v13 + 4) = v15;
      *v14 = v15;
      _os_log_impl(&dword_261AE2000, v11, v12, "Cannot fetch share for list entity with objectID: %@", v13, 0xCu);
      sub_261AE6A40(v14, &unk_27FEDA730, &unk_261D035C0);
      MEMORY[0x26671D560](v14, -1, -1);
      MEMORY[0x26671D560](v13, -1, -1);
    }

    goto LABEL_2;
  }

  return v8;
}

uint64_t sub_261B77E3C@<X0>(char *a1@<X8>)
{
  v2 = v1;
  v23 = a1;
  v3 = sub_261CFE314();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_261CFDDB4();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = (&v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDB0A8, &unk_261D050D8);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v22 - v15;
  sub_261CFDE54();
  v17 = sub_261CFDDA4();
  *v10 = [v2 remObjectID];
  (*(v8 + 104))(v10, *MEMORY[0x277D45C88], v7);
  sub_261CFDE04();

  (*(v8 + 8))(v10, v7);
  sub_261AFB668(v16, v14, &qword_27FEDB0A8, &unk_261D050D8);
  if ((*(v4 + 48))(v14, 1, v3) == 1)
  {
    sub_261AE6A40(v16, &qword_27FEDB0A8, &unk_261D050D8);
    result = sub_261AE6A40(v14, &qword_27FEDB0A8, &unk_261D050D8);
    *v23 = 2;
    return result;
  }

  v19 = v23;
  (*(v4 + 16))(v6, v14, v3);
  v20 = (*(v4 + 88))(v6, v3);
  if (v20 == *MEMORY[0x277D45D58])
  {
    v21 = 0;
  }

  else
  {
    if (v20 != *MEMORY[0x277D45D60])
    {
      result = sub_261D00604();
      __break(1u);
      return result;
    }

    v21 = 1;
  }

  sub_261AE6A40(v16, &qword_27FEDB0A8, &unk_261D050D8);
  *v19 = v21;
  return (*(v4 + 8))(v14, v3);
}

uint64_t sub_261B781A4@<X0>(char *a2@<X8>)
{
  v3 = sub_261CFFA74();
  v5 = v4;
  if (v3 == sub_261CFFA74() && v5 == v6)
  {
    v10 = 0;
LABEL_13:

    goto LABEL_14;
  }

  v8 = sub_261D00614();

  v10 = 0;
  if (v8)
  {
    goto LABEL_14;
  }

  v11 = sub_261CFFA74();
  v13 = v12;
  if (v11 == sub_261CFFA74() && v13 == v14)
  {
    v10 = 1;
    goto LABEL_13;
  }

  v16 = sub_261D00614();

  if (v16)
  {
    v10 = 1;
    goto LABEL_14;
  }

  v17 = sub_261CFFA74();
  v19 = v18;
  if (v17 == sub_261CFFA74() && v19 == v20)
  {
    v10 = 6;
    goto LABEL_13;
  }

  v21 = sub_261D00614();

  if (v21)
  {
    v10 = 6;
    goto LABEL_14;
  }

  v22 = sub_261CFFA74();
  v24 = v23;
  if (v22 == sub_261CFFA74() && v24 == v25)
  {
    v10 = 7;
    goto LABEL_13;
  }

  v26 = sub_261D00614();

  if (v26)
  {
    v10 = 7;
    goto LABEL_14;
  }

  v27 = sub_261CFFA74();
  v29 = v28;
  if (v27 == sub_261CFFA74() && v29 == v30)
  {
    v10 = 2;
    goto LABEL_13;
  }

  v31 = sub_261D00614();

  if (v31)
  {
    v10 = 2;
    goto LABEL_14;
  }

  v32 = sub_261CFFA74();
  v34 = v33;
  if (v32 == sub_261CFFA74() && v34 == v35)
  {
    v10 = 3;
    goto LABEL_13;
  }

  v36 = sub_261D00614();

  if (v36)
  {
    v10 = 3;
    goto LABEL_14;
  }

  v37 = sub_261CFFA74();
  v39 = v38;
  if (v37 == sub_261CFFA74() && v39 == v40)
  {
    v10 = 4;
    goto LABEL_13;
  }

  v41 = sub_261D00614();

  if (v41)
  {
    v10 = 4;
    goto LABEL_14;
  }

  v42 = sub_261CFFA74();
  v44 = v43;
  if (v42 == sub_261CFFA74() && v44 == v45)
  {
    v10 = 5;
    goto LABEL_13;
  }

  v46 = sub_261D00614();

  if (v46)
  {
    v10 = 5;
    goto LABEL_14;
  }

  v47 = sub_261CFFA74();
  v49 = v48;
  if (v47 == sub_261CFFA74() && v49 == v50)
  {
    v10 = 8;
    goto LABEL_13;
  }

  v51 = sub_261D00614();

  if (v51)
  {
    v10 = 8;
    goto LABEL_14;
  }

  v52 = sub_261CFFA74();
  v54 = v53;
  v10 = 9;
  if (v52 == sub_261CFFA74() && v54 == v55)
  {
    goto LABEL_13;
  }

  v56 = sub_261D00614();

  if (v56)
  {
    v10 = 9;
  }

  else
  {
    v10 = 0;
  }

LABEL_14:
  *a2 = v10;
  return result;
}

id sub_261B78660(uint64_t a1)
{
  v39 = a1;
  v1 = sub_261CFF274();
  v37 = *(v1 - 8);
  v38 = v1;
  MEMORY[0x28223BE20](v1);
  v36 = &v31 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_261CFF114();
  v34 = *(v3 - 8);
  v35 = v3;
  MEMORY[0x28223BE20](v3);
  v33 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDB0F0, &qword_261D050F8);
  v31 = *(v5 - 8);
  v32 = v5;
  MEMORY[0x28223BE20](v5);
  v45 = &v31 - v6;
  v7 = sub_261CFF244();
  v41 = *(v7 - 8);
  v42 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_261CFF334();
  v10 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_261CFF284();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_261CFF204();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v31 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_261CFF374();
  v43 = *(v21 - 8);
  v44 = v21;
  MEMORY[0x28223BE20](v21);
  v23 = &v31 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [v46 sectionContext];
  if (result)
  {

    (*(v18 + 104))(v20, *MEMORY[0x277D45418], v17);
    (*(v14 + 104))(v16, *MEMORY[0x277D45468], v13);
    (*(v10 + 104))(v12, *MEMORY[0x277D45500], v40);
    (*(v41 + 104))(v9, *MEMORY[0x277D45458], v42);
    sub_261CFF364();
    v25 = [v46 store];
    v26 = v45;
    sub_261CFF0C4();

    v27 = v32;
    v28 = v33;
    sub_261CFF534();
    v29 = (*(v31 + 8))(v26, v27);
    v30 = v36;
    MEMORY[0x26671B7D0](v29);
    (*(v34 + 8))(v28, v35);
    sub_261CFF264();

    (*(v37 + 8))(v30, v38);
    type metadata accessor for ListEntity(0);
    v47 = 0;
    sub_261CFCA14();
    return (*(v43 + 8))(v23, v44);
  }

  return result;
}

uint64_t sub_261B78D78@<X0>(char *a1@<X8>)
{
  v2 = v1;
  v23 = a1;
  v3 = sub_261CFE314();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_261CFDDB4();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = (&v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDB0A8, &unk_261D050D8);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v22 - v15;
  sub_261CFDE54();
  v17 = sub_261CFDDA4();
  *v10 = [v2 objectID];
  (*(v8 + 104))(v10, *MEMORY[0x277D45C80], v7);
  sub_261CFDE04();

  (*(v8 + 8))(v10, v7);
  sub_261AFB668(v16, v14, &qword_27FEDB0A8, &unk_261D050D8);
  if ((*(v4 + 48))(v14, 1, v3) == 1)
  {
    sub_261AE6A40(v16, &qword_27FEDB0A8, &unk_261D050D8);
    result = sub_261AE6A40(v14, &qword_27FEDB0A8, &unk_261D050D8);
    *v23 = 2;
    return result;
  }

  v19 = v23;
  (*(v4 + 16))(v6, v14, v3);
  v20 = (*(v4 + 88))(v6, v3);
  if (v20 == *MEMORY[0x277D45D58])
  {
    v21 = 0;
  }

  else
  {
    if (v20 != *MEMORY[0x277D45D60])
    {
      result = sub_261D00604();
      __break(1u);
      return result;
    }

    v21 = 1;
  }

  sub_261AE6A40(v16, &qword_27FEDB0A8, &unk_261D050D8);
  *v19 = v21;
  return (*(v4 + 8))(v14, v3);
}

id sub_261B790E0(uint64_t a1)
{
  v39 = a1;
  v1 = sub_261CFF274();
  v37 = *(v1 - 8);
  v38 = v1;
  MEMORY[0x28223BE20](v1);
  v36 = &v31 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_261CFF054();
  v34 = *(v3 - 8);
  v35 = v3;
  MEMORY[0x28223BE20](v3);
  v33 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDB0A0, &qword_261D050D0);
  v31 = *(v5 - 8);
  v32 = v5;
  MEMORY[0x28223BE20](v5);
  v45 = &v31 - v6;
  v7 = sub_261CFF244();
  v41 = *(v7 - 8);
  v42 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_261CFF334();
  v10 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_261CFF284();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_261CFF204();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v31 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_261CFF374();
  v43 = *(v21 - 8);
  v44 = v21;
  MEMORY[0x28223BE20](v21);
  v23 = &v31 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [v46 sectionContext];
  if (result)
  {

    (*(v18 + 104))(v20, *MEMORY[0x277D45418], v17);
    (*(v14 + 104))(v16, *MEMORY[0x277D45468], v13);
    (*(v10 + 104))(v12, *MEMORY[0x277D45500], v40);
    (*(v41 + 104))(v9, *MEMORY[0x277D45458], v42);
    sub_261CFF364();
    v25 = [v46 store];
    v26 = v45;
    sub_261CFF0B4();

    v27 = v32;
    v28 = v33;
    sub_261CFF534();
    v29 = (*(v31 + 8))(v26, v27);
    v30 = v36;
    MEMORY[0x26671B710](v29);
    (*(v34 + 8))(v28, v35);
    sub_261CFF264();

    (*(v37 + 8))(v30, v38);
    type metadata accessor for ListEntity(0);
    v47 = 0;
    sub_261CFCA14();
    return (*(v43 + 8))(v23, v44);
  }

  return result;
}

uint64_t sub_261B797FC@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v210 = a3;
  v194 = sub_261CFEC94();
  MEMORY[0x28223BE20](v194);
  v195 = &v157 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v205 = sub_261CFD674();
  v208 = *(v205 - 8);
  MEMORY[0x28223BE20](v205);
  v206 = &v157 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_261CFD884();
  MEMORY[0x28223BE20](v7 - 8);
  v191 = &v157 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_261CFFA44();
  MEMORY[0x28223BE20](v9 - 8);
  v190 = &v157 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_261CFD6A4();
  MEMORY[0x28223BE20](v11 - 8);
  v209 = (&v157 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v203 = sub_261CFDDD4();
  v189 = *(v203 - 1);
  MEMORY[0x28223BE20](v203);
  v188 = (&v157 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v200 = type metadata accessor for AppEntityID(0);
  MEMORY[0x28223BE20](v200);
  v207 = (&v157 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDB0B0, &unk_261D035D0);
  MEMORY[0x28223BE20](v15 - 8);
  v212 = &v157 - v16;
  v213 = sub_261CFC954();
  v211 = *(v213 - 8);
  MEMORY[0x28223BE20](v213);
  v214 = (&v157 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDD950, &unk_261D01440);
  v19 = MEMORY[0x28223BE20](v18 - 8);
  v193 = &v157 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v192 = &v157 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v201 = &v157 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v27 = (&v157 - v26);
  MEMORY[0x28223BE20](v25);
  v29 = &v157 - v28;
  v30 = type metadata accessor for GroupEntity(0);
  v31 = *(*(v30 - 8) + 56);
  v202 = v29;
  v31(v29, 1, 1, v30);
  v196 = a2;
  if (a2)
  {
    v32 = v196;
    sub_261B857C8(v32, 0, v27);
    v33 = v202;
    sub_261AE6A40(v202, &unk_27FEDD950, &unk_261D01440);

    v31(v27, 0, 1, v30);
    sub_261B7C25C(v27, v33);
  }

  v34 = [a1 sharees];
  sub_261B05020(0, &qword_27FEDA9D0, 0x277D447E8);
  v35 = sub_261CFFC64();

  v226[0] = MEMORY[0x277D84F90];
  if (v35 >> 62)
  {
    goto LABEL_49;
  }

  for (i = *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_261D00274())
  {
    v37 = v213;
    v204 = a1;
    if (i)
    {
      v38 = 0;
      while (1)
      {
        if ((v35 & 0xC000000000000001) != 0)
        {
          v39 = MEMORY[0x26671CA10](v38, v35);
        }

        else
        {
          if (v38 >= *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_46;
          }

          v39 = *(v35 + 8 * v38 + 32);
        }

        v40 = v39;
        a1 = (v38 + 1);
        if (__OFADD__(v38, 1))
        {
          break;
        }

        if ([v39 status] == 1)
        {
          sub_261D00374();
          sub_261D003B4();
          sub_261D003C4();
          sub_261D00384();
        }

        else
        {
        }

        ++v38;
        if (a1 == i)
        {
          v41 = v226[0];
          v37 = v213;
          goto LABEL_18;
        }
      }

      __break(1u);
LABEL_46:
      __break(1u);
      goto LABEL_47;
    }

    v41 = MEMORY[0x277D84F90];
LABEL_18:

    if (v41 < 0 || (v41 & 0x4000000000000000) != 0)
    {
      v42 = sub_261D00274();
    }

    else
    {
      v42 = *(v41 + 16);
    }

    if (!v42)
    {
      break;
    }

    v43 = 0;
    v35 = v41 & 0xC000000000000001;
    v44 = (v211 + 48);
    v45 = (v211 + 32);
    v215 = MEMORY[0x277D84F90];
    a1 = v212;
    while (1)
    {
      if (v35)
      {
        v46 = MEMORY[0x26671CA10](v43, v41);
      }

      else
      {
        if (v43 >= *(v41 + 16))
        {
          goto LABEL_48;
        }

        v46 = *(v41 + 8 * v43 + 32);
      }

      v47 = v46;
      v48 = v43 + 1;
      if (__OFADD__(v43, 1))
      {
        break;
      }

      sub_261B76B88(a1);

      if ((*v44)(a1, 1, v37) == 1)
      {
        sub_261AE6A40(a1, &unk_27FEDB0B0, &unk_261D035D0);
      }

      else
      {
        v49 = v37;
        v50 = *v45;
        (*v45)(v214, a1, v49);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v215 = sub_261B41588(0, v215[2] + 1, 1, v215);
        }

        v52 = v215[2];
        v51 = v215[3];
        if (v52 >= v51 >> 1)
        {
          v215 = sub_261B41588((v51 > 1), v52 + 1, 1, v215);
        }

        v53 = v215;
        v215[2] = v52 + 1;
        v54 = v213;
        v50((v53 + ((*(v211 + 80) + 32) & ~*(v211 + 80)) + *(v211 + 72) * v52), v214, v213);
        v37 = v54;
        a1 = v212;
      }

      ++v43;
      if (v48 == v42)
      {
        goto LABEL_37;
      }
    }

LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    ;
  }

  v215 = MEMORY[0x277D84F90];
LABEL_37:

  v55 = v204;
  v56 = [v204 groceryContextChangeItem];
  v187 = v56 && (v57 = v56, v58 = [v56 shouldCategorizeGroceryItems], v57, (v58 & 1) != 0);
  v59 = [v55 objectID];
  v60 = [v59 entityName];
  v61 = sub_261CFFA74();
  v63 = v62;

  v64 = [v59 uuid];
  v65 = v200;
  v66 = v207;
  sub_261CFD834();

  v67 = *(v65 + 24);
  v68 = type metadata accessor for RecurrentInstanceSpecifier(0);
  (*(*(v68 - 8) + 56))(v66 + v67, 1, 1, v68);
  *v66 = v61;
  v66[1] = v63;
  v69 = [v55 name];
  v186 = sub_261CFFA74();
  v185 = v70;

  v71 = sub_261B05020(0, &qword_27FEDB0C0, 0x277D44680);
  v72 = MEMORY[0x277D45EB8];
  v219 = v71;
  v220 = MEMORY[0x277D45EB8];
  v216 = v55;
  v73 = v55;
  ColorEntity.init(list:)(&v216, v226);
  v181 = v226[0];
  v180 = v226[1];
  v179 = v226[2];
  v200 = v226[3];
  v197 = v226[4];
  v198 = v226[5];
  v199 = v226[6];
  v219 = v71;
  v220 = v72;
  v216 = v73;
  v74 = v73;
  ListBadgeEntity.init(list:)(&v216, v225);
  v211 = v225[0];
  v204 = v225[1];
  v212 = v225[2];
  v178 = v225[3];
  v177 = v225[4];
  sub_261AFB668(v202, v201, &unk_27FEDD950, &unk_261D01440);
  v184 = sub_261B77960();
  v183 = v75;
  v182 = sub_261B7B71C();
  v176 = [v74 isPinned];
  sub_261CFDE54();
  v76 = sub_261CFDDA4();
  v77 = [v74 remObjectID];
  v78 = v188;
  *v188 = v77;
  v79 = v189;
  v80 = v203;
  (*(v189 + 104))(v78, *MEMORY[0x277D45C90], v203);
  v175 = sub_261CFDDC4();

  (*(v79 + 8))(v78, v80);
  v81 = [v74 autoCategorizeContextChangeItem];
  if (v81)
  {
    v82 = v81;
    v174 = [v81 shouldAutoCategorizeItems];
  }

  else
  {
    v174 = 0;
  }

  sub_261B77E3C(&v224);
  v172 = v224;
  v83 = [v74 sortingStyle];
  sub_261B781A4(&v223);

  v171 = v223;
  v84 = [v74 accountCapabilities];
  v170 = [v84 supportsListAppearance];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FED9F98, &qword_261D01460);
  v167 = sub_261AFF54C();
  v189 = sub_261CFCA44();
  v85 = v210;
  *v210 = v189;
  v86 = type metadata accessor for ListEntity(0);
  v87 = *(v86 + 24);
  v88 = v86;
  v214 = v86;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDD8C0, &qword_261D01468);
  v173 = sub_261CFCB24();
  *(v85 + v87) = v173;
  v188 = v74;
  v169 = *(v88 + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDB020, &unk_261D01470);
  sub_261CFF9B4();
  sub_261CFD874();
  v89 = *MEMORY[0x277CC9110];
  v91 = v208 + 104;
  v90 = *(v208 + 104);
  v92 = v206;
  v93 = v205;
  v90(v206, v89, v205);
  v203 = v90;
  v94 = v209;
  sub_261CFD6B4();
  v95 = MEMORY[0x2667199E0](v94, &type metadata for UpdateListNameAppIntent);
  *(v85 + v169) = v95;
  v96 = v214;
  v168 = v214[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDD960, &qword_261D047C0);
  sub_261CFF9B4();
  sub_261CFD874();
  LODWORD(v213) = v89;
  v90(v92, v89, v93);
  sub_261CFD6B4();
  v97 = sub_261AFF5A0();
  v169 = MEMORY[0x2667199D0](v94, &type metadata for UpdateListColorAppIntent, v97);
  v98 = v210;
  *(v210 + v168) = v169;
  v166 = v96[9];
  v99 = v96;
  v168 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDD970, &qword_261D01480);
  sub_261CFF9B4();
  sub_261CFD874();
  v100 = v89;
  v101 = v203;
  (v203)(v206, v100, v93);
  sub_261CFD6B4();
  v102 = sub_261AFF5F4();
  v168 = MEMORY[0x2667199D0](v94, &type metadata for UpdateListBadgeAppIntent, v102);
  v103 = v98;
  *(v98 + v166) = v168;
  v165 = v99[10];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDD980, &qword_261D01488);
  sub_261CFF9B4();
  sub_261CFD874();
  v104 = v206;
  v105 = v213;
  v101(v206, v213, v93);
  v106 = v209;
  sub_261CFD6B4();
  v107 = sub_261B7C154(&qword_280D22670, type metadata accessor for GroupEntity, &protocol conformance descriptor for GroupEntity);
  v166 = MEMORY[0x2667199D0](v106, &type metadata for UpdateListParentAppIntent, v107);
  *(v103 + v165) = v166;
  v108 = v103;
  v109 = v214;
  v164 = v214[11];
  v165 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDD990, &qword_261D01490);
  sub_261CFF9B4();
  sub_261CFD874();
  v110 = v105;
  v111 = v105;
  v112 = v205;
  v113 = v203;
  (v203)(v104, v110, v205);
  sub_261CFD6B4();
  v165 = sub_261CFCA84();
  *(v108 + v164) = v165;
  v163 = v109[12];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDB050, &qword_261D01498);
  sub_261CFF9B4();
  sub_261CFD874();
  v113(v104, v111, v112);
  v208 = v91;
  v114 = v113;
  sub_261CFD6B4();
  sub_261B7C154(&qword_280D224E0, type metadata accessor for SectionEntity, &protocol conformance descriptor for SectionEntity);
  v164 = sub_261CFCA54();
  *(v108 + v163) = v164;
  v115 = v214;
  v162 = v214[13];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDB060, &qword_261D014A0);
  sub_261CFF9B4();
  sub_261CFD874();
  v114(v104, v213, v112);
  v116 = v209;
  sub_261CFD6B4();
  v163 = MEMORY[0x2667199F0](v116, &type metadata for UpdateListIsPinnedAppIntent);
  *(v108 + v162) = v163;
  v161 = v115[14];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDD9A0, &qword_261D014A8);
  sub_261CFF9B4();
  sub_261CFD874();
  v117 = v213;
  v114(v104, v213, v112);
  v118 = v114;
  v119 = v209;
  v120 = v104;
  sub_261CFD6B4();
  v121 = v119;
  v162 = MEMORY[0x2667199F0](v119, &type metadata for UpdateListShowsCompletedAppIntent);
  *(v108 + v161) = v162;
  v122 = v214;
  v160 = v214[15];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDB070, &unk_261D014B0);
  sub_261CFF9B4();
  sub_261CFD874();
  v123 = v120;
  v124 = v120;
  v125 = v205;
  v118(v124, v117, v205);
  v126 = v121;
  sub_261CFD6B4();
  v161 = MEMORY[0x2667199F0](v121, &type metadata for UpdateListAutoCategorizeAppIntent);
  v127 = v210;
  *(v210 + v160) = v161;
  v159 = v122[16];
  v160 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDD9B0, &qword_261D03F00);
  sub_261CFF9B4();
  sub_261CFD874();
  v128 = v123;
  v129 = v123;
  v130 = v213;
  v131 = v203;
  (v203)(v129, v213, v125);
  sub_261CFD6B4();
  v132 = sub_261AFF648();
  v160 = MEMORY[0x2667199C0](v126, &type metadata for UpdateListListLayoutAppIntent, v132);
  *(v127 + v159) = v160;
  v133 = v214;
  v158 = v214[17];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDD9C0, &unk_261D014C0);
  sub_261CFF9B4();
  sub_261CFD874();
  v131(v128, v130, v125);
  sub_261CFD6B4();
  v134 = sub_261AFF69C();
  v159 = MEMORY[0x2667199C0](v126, &type metadata for UpdateListSortingStyleAppIntent, v134);
  v135 = v210;
  *(v210 + v158) = v159;
  v136 = v133[18];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDD9D0, &qword_261D03B00);
  sub_261CFF9B4();
  sub_261CFD874();
  v131(v128, v213, v125);
  sub_261CFD6B4();
  v208 = MEMORY[0x2667199C0](v126, &type metadata for UpdateListTypeAppIntent, v167);
  *(v135 + v136) = v208;
  v137 = (v135 + v133[19]);
  v209 = v137;
  *v137 = 0;
  v137[1] = 0;
  v213 = v133[20];
  *(v135 + v213) = 0;
  sub_261B7C0F0(v207, v135 + v133[5]);
  *(v135 + v133[21]) = 0;
  type metadata accessor for AnyListEntityLazyImage(0);
  v138 = swift_allocObject();
  v216 = MEMORY[0x277D84F90];
  v139 = v178;
  v140 = v177;
  sub_261AF9C0C(v211, v204, v212, v178, v177);
  v141 = v181;
  v142 = v180;
  v143 = v179;
  v144 = v197;
  sub_261AF9844(v181, v180, v179, v200, v197, v198, v199);
  sub_261B7C154(&qword_280D22D90, MEMORY[0x277D44D10], MEMORY[0x277D44D18]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDD9E0, &qword_261D014D0);
  sub_261B7C19C();
  sub_261D001D4();
  sub_261CFECB4();
  swift_allocObject();
  *(v138 + 128) = sub_261CFECA4();
  v145 = OBJC_IVAR____TtC19RemindersAppIntents22AnyListEntityLazyImage_cachedDisplayRepresentationImage;
  v146 = sub_261CFD074();
  (*(*(v146 - 8) + 56))(v138 + v145, 1, 1, v146);
  *(v138 + 16) = 1;
  v147 = v204;
  *(v138 + 24) = v211;
  *(v138 + 32) = v147;
  *(v138 + 40) = v212;
  *(v138 + 48) = v139;
  *(v138 + 56) = v140;
  *(v138 + 64) = v141;
  *(v138 + 72) = v142;
  *(v138 + 80) = v143;
  v148 = v143;
  v149 = v200;
  *(v138 + 88) = v200;
  *(v138 + 96) = v144;
  v150 = v198;
  v151 = v199;
  *(v138 + 104) = v198;
  *(v138 + 112) = v151;
  *(v138 + 120) = v170;
  *(v138 + 121) = 1;
  *(v210 + v214[22]) = v138;
  LOBYTE(v216) = v176;
  sub_261CFD2E4();
  LOBYTE(v216) = v175 & 1;
  sub_261CFD2E4();
  LOBYTE(v216) = v174;
  sub_261CFD2E4();
  LOBYTE(v216) = v172;
  sub_261CFD2E4();
  LOBYTE(v216) = v171;
  sub_261CFD2E4();
  LOBYTE(v138) = v187;
  LOBYTE(v216) = v187;
  sub_261CFD2E4();
  v216 = v141;
  v217 = v142;
  v218 = v148;
  v219 = v149;
  v220 = v197;
  v221 = v150;
  v222 = v151;
  sub_261CFD2E4();
  v216 = v211;
  v217 = v204;
  v218 = v212;
  v219 = v139;
  v220 = v140;
  sub_261CFD2E4();
  v152 = v201;
  v153 = v192;
  sub_261AFB668(v201, v192, &unk_27FEDD950, &unk_261D01440);
  sub_261AFB668(v153, v193, &unk_27FEDD950, &unk_261D01440);
  sub_261CFD2E4();
  sub_261AE6A40(v153, &unk_27FEDD950, &unk_261D01440);
  v154 = v209;
  v155 = v183;
  *v209 = v184;
  v154[1] = v155;
  *(v210 + v213) = v182;
  v216 = v215;
  sub_261CFCA14();
  v216 = MEMORY[0x277D84F90];
  sub_261CFCA14();
  v216 = v186;
  v217 = v185;
  sub_261CFCA14();
  LOBYTE(v216) = v138;
  sub_261CFCA14();

  sub_261AE6A40(v152, &unk_27FEDD950, &unk_261D01440);
  sub_261B7C200(v207);
  return sub_261AE6A40(v202, &unk_27FEDD950, &unk_261D01440);
}

id sub_261B7B71C()
{
  v22[1] = *MEMORY[0x277D85DE8];
  v2 = [v0 saveRequest];
  v3 = [v2 store];

  v4 = [v3 storeContainerToken];
  if (v4)
  {
    v5 = v4;

    return 0;
  }

  v6 = [v0 accountCapabilities];
  v7 = [v6 supportsCloudKitSync];

  if (!v7)
  {
    goto LABEL_12;
  }

  v8 = [v0 sharees];
  sub_261B05020(0, &qword_27FEDA9D0, 0x277D447E8);
  v9 = sub_261CFFC64();

  if (v9 >> 62)
  {
    v10 = sub_261D00274();

    v11 = objc_opt_self();
    if (v10 < 0)
    {
      __break(1u);
      goto LABEL_17;
    }
  }

  else
  {
    v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);

    v11 = objc_opt_self();
  }

  if (![v11 isSharedWithShareeCount:v10 sharingStatus:{objc_msgSend(v0, sel_sharingStatus)}])
  {
LABEL_12:

    return 0;
  }

  v1 = &unk_279AFB000;
  v12 = [v0 objectID];
  v22[0] = 0;
  v13 = [v3 fetchShareForListWithID:v12 error:v22];

  if (v22[0])
  {
    v9 = v22[0];

    swift_willThrow();
    if (qword_27FED9930 == -1)
    {
LABEL_9:
      v14 = sub_261CFF7A4();
      __swift_project_value_buffer(v14, qword_27FEDAFE0);
      v15 = v0;
      v16 = sub_261CFF784();
      v17 = sub_261CFFE64();

      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        v19 = swift_slowAlloc();
        *v18 = 138412290;
        v20 = [v15 v1[49]];
        *(v18 + 4) = v20;
        *v19 = v20;
        _os_log_impl(&dword_261AE2000, v16, v17, "Cannot fetch share for list entity with objectID: %@", v18, 0xCu);
        sub_261AE6A40(v19, &unk_27FEDA730, &unk_261D035C0);
        MEMORY[0x26671D560](v19, -1, -1);
        MEMORY[0x26671D560](v18, -1, -1);
      }

      goto LABEL_12;
    }

LABEL_17:
    swift_once();
    goto LABEL_9;
  }

  return v13;
}

BOOL sub_261B7BA84(uint64_t a1, uint64_t a2)
{
  v55 = a2;
  v2 = sub_261CFC8F4();
  v47 = *(v2 - 8);
  v48 = v2;
  v3 = MEMORY[0x28223BE20](v2);
  v46 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v45 = &v44 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDB0D8, &qword_261D050F0);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v50 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v51 = &v44 - v9;
  v10 = sub_261CFC914();
  v11 = *(v10 - 8);
  v53 = v10;
  v54 = v11;
  v12 = MEMORY[0x28223BE20](v10);
  v49 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v52 = &v44 - v14;
  v15 = sub_261CFC864();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v44 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v44 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDB0B0, &unk_261D035D0);
  MEMORY[0x28223BE20](v22 - 8);
  v24 = &v44 - v23;
  v25 = sub_261CFC954();
  v26 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v28 = &v44 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_261B76B88(v24);
  if ((*(v26 + 48))(v24, 1, v25) != 1)
  {
    (*(v26 + 32))(v28, v24, v25);
    sub_261CFC884();
    sub_261CFC884();
    v31 = sub_261CFC854();
    v32 = *(v16 + 8);
    v32(v19, v15);
    v32(v21, v15);
    if (v31)
    {
      (*(v26 + 8))(v28, v25);
      return 1;
    }

    v24 = v51;
    sub_261CFC934();
    v35 = v53;
    v34 = v54;
    v36 = *(v54 + 48);
    if (v36(v24, 1, v53) != 1)
    {
      v51 = *(v34 + 32);
      (v51)(v52, v24, v35);
      v24 = v50;
      sub_261CFC934();
      if (v36(v24, 1, v35) != 1)
      {
        (v51)(v49, v24, v35);
        v37 = v45;
        v38 = v52;
        sub_261CFC904();
        v39 = v46;
        sub_261CFC904();
        LODWORD(v55) = sub_261CFC8E4();
        v40 = *(v47 + 8);
        v41 = v39;
        v42 = v48;
        v40(v41, v48);
        v40(v37, v42);
        v43 = *(v54 + 8);
        v43(v49, v35);
        v43(v38, v35);
        (*(v26 + 8))(v28, v25);
        return (v55 & 1) != 0;
      }

      (*(v54 + 8))(v52, v35);
    }

    (*(v26 + 8))(v28, v25);
    v29 = &qword_27FEDB0D8;
    v30 = &qword_261D050F0;
    goto LABEL_10;
  }

  v29 = &unk_27FEDB0B0;
  v30 = &unk_261D035D0;
LABEL_10:
  sub_261AE6A40(v24, v29, v30);
  return 0;
}

id sub_261B7C084(uint64_t a1, uint64_t a2)
{
  v2 = objc_opt_self();
  v3 = sub_261CFFA54();
  v4 = [v2 newCloudContainerForAccountID_];

  return v4;
}

uint64_t sub_261B7C0F0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppEntityID(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_261B7C154(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_261B7C19C()
{
  result = qword_280D21E20;
  if (!qword_280D21E20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27FEDD9E0, &qword_261D014D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D21E20);
  }

  return result;
}

uint64_t sub_261B7C200(uint64_t a1)
{
  v2 = type metadata accessor for AppEntityID(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_261B7C25C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDD950, &unk_261D01440);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_261B7C2D8(void *a1, uint64_t a2)
{
  v3 = v2;
  *(v2 + 16) = a1;
  *(v2 + 24) = 0;
  sub_261B7C464();
  v5 = objc_opt_self();
  v6 = a1;
  sub_261CFCDA4();
  v7 = [v5 daemonUserDefaults];
  sub_261CFE164();
  swift_allocObject();
  v8 = sub_261CFE154();

  *(v3 + 24) = v8;

  return v3;
}

uint64_t sub_261B7C3D8()
{

  return swift_deallocClassInstance();
}

void *sub_261B7C43C()
{
  v1 = *(v0 + 16);
  v2 = v1;
  return v1;
}

unint64_t sub_261B7C464()
{
  result = qword_27FEDB100;
  if (!qword_27FEDB100)
  {
    _s21PrivacyCheckerWrapperCMa();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDB100);
  }

  return result;
}

__n128 sub_261B7C4B8@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v20 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDD950, &unk_261D01440);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v20 - v9;
  v11 = type metadata accessor for ListEntity(0);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v20 - v15;
  UpdateListAppIntent.init()(v30);
  sub_261B0A18C(a1, v16);
  sub_261B0A18C(v16, v14);
  sub_261B59DEC(v30, &v26);
  sub_261CFCBC4();
  sub_261B0A1F0(v16);
  sub_261B59E48(v30);
  sub_261B59DEC(v30, &v26);
  sub_261CFCA04();
  sub_261CFCBC4();
  sub_261CFD2D4();
  v22 = v26;
  v23 = v27;
  v24 = v28;
  v25 = v29;
  sub_261CFCBC4();
  sub_261B59E48(v30);
  sub_261B59DEC(v30, &v26);
  sub_261CFD2D4();
  v22 = v26;
  v23 = v27;
  *&v24 = v28;
  sub_261CFCBC4();
  sub_261B59E48(v30);
  sub_261B59DEC(v30, &v26);
  sub_261CFD2D4();
  sub_261B7CD38(v10, v8);
  sub_261CFCBC4();
  sub_261B7CDA8(v10);
  sub_261B59E48(v30);
  sub_261B59DEC(v30, &v26);
  sub_261CFD2D4();
  sub_261CFCBC4();
  sub_261CFD2D4();
  sub_261CFCBC4();
  sub_261CFD2D4();
  sub_261CFCBC4();
  sub_261CFD2D4();
  LOBYTE(v22) = v26;
  sub_261CFCBC4();
  sub_261B59E48(v30);
  sub_261B59DEC(v30, &v26);
  sub_261CFD2D4();
  LOBYTE(v22) = v26;
  sub_261CFCBC4();
  sub_261B59E48(v30);
  sub_261B59DEC(v30, &v26);
  sub_261CFD2D4();
  LOBYTE(v22) = v26;
  sub_261CFCBC4();
  sub_261B59E48(v30);
  sub_261AE498C(v20, &v22);
  sub_261AE498C(&v22, &v21);
  sub_261B59DEC(v30, &v26);
  sub_261CFC674();
  __swift_destroy_boxed_opaque_existential_0(&v22);
  sub_261B59E48(v30);
  sub_261B59DEC(v30, &v26);
  sub_261CFCA04();
  sub_261CFCBC4();
  sub_261CFCA04();
  LOBYTE(v22) = v26;
  sub_261CFCBC4();
  sub_261B59E48(v30);
  v17 = v30[5];
  *(a3 + 64) = v30[4];
  *(a3 + 80) = v17;
  *(a3 + 96) = v30[6];
  v18 = v30[1];
  *a3 = v30[0];
  *(a3 + 16) = v18;
  result = v30[3];
  *(a3 + 32) = v30[2];
  *(a3 + 48) = result;
  return result;
}

uint64_t UpdateListAppIntent.perform()(uint64_t a1)
{
  *(v2 + 240) = a1;
  v3 = v1[5];
  *(v2 + 80) = v1[4];
  *(v2 + 96) = v3;
  *(v2 + 112) = v1[6];
  v4 = v1[1];
  *(v2 + 16) = *v1;
  *(v2 + 32) = v4;
  v5 = v1[3];
  *(v2 + 48) = v1[2];
  *(v2 + 64) = v5;
  sub_261CFFD24();
  *(v2 + 248) = sub_261CFFD14();
  v7 = sub_261CFFCF4();
  *(v2 + 256) = v7;
  *(v2 + 264) = v6;

  return MEMORY[0x2822009F8](sub_261B7C9C0, v7, v6);
}

uint64_t sub_261B7C9C0()
{
  sub_261B59DEC(v0 + 16, v0 + 128);
  v1 = swift_task_alloc();
  *(v0 + 272) = v1;
  *v1 = v0;
  v1[1] = sub_261B7CA88;
  v2 = *(v0 + 240);

  return sub_261C56650(v2, "UpdateListAppIntent", 19, 2, v0 + 16);
}

uint64_t sub_261B7CA88()
{
  v2 = *v1;
  *(*v1 + 280) = v0;

  v3 = *(v2 + 264);
  v4 = *(v2 + 256);
  if (v0)
  {
    v5 = sub_261B81C64;
  }

  else
  {
    v5 = sub_261B81C68;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t UpdateListAppIntent.parent.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDD950, &unk_261D01440);
  MEMORY[0x28223BE20](v2 - 8);
  sub_261B7CD38(a1, &v5 - v3);
  sub_261CFCBC4();
  return sub_261B7CDA8(a1);
}

uint64_t sub_261B7CD38(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDD950, &unk_261D01440);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_261B7CDA8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDD950, &unk_261D01440);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_261B7CF34(uint64_t *a1, uint64_t *a2)
{
  sub_261CFD104();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCBC4();
}

uint64_t (*UpdateListAppIntent.title.modify(uint64_t *a1))()
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
  *(v2 + 32) = sub_261CFCBA4();
  return sub_261B02064;
}

uint64_t sub_261B7D178(char *a1, uint64_t *a2)
{
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCBC4();
}

uint64_t (*UpdateListAppIntent.type.modify(uint64_t *a1))()
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
  *(v2 + 32) = sub_261CFCBA4();
  return sub_261B02064;
}

uint64_t static UpdateListAppIntent.isDiscoverable.setter(char a1)
{
  result = swift_beginAccess();
  byte_27FEDB108 = a1;
  return result;
}

uint64_t sub_261B7D4A0()
{
  v0 = sub_261CFD674();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_261CFD884();
  MEMORY[0x28223BE20](v4 - 8);
  v5 = sub_261CFFA44();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = sub_261CFD6A4();
  __swift_allocate_value_buffer(v6, qword_27FEDB110);
  __swift_project_value_buffer(v6, qword_27FEDB110);
  sub_261CFF9B4();
  sub_261CFD874();
  (*(v1 + 104))(v3, *MEMORY[0x277CC9110], v0);
  return sub_261CFD6C4();
}

uint64_t static UpdateListAppIntent.title.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27FED9938 != -1)
  {
    swift_once();
  }

  v2 = sub_261CFD6A4();
  v3 = __swift_project_value_buffer(v2, qword_27FEDB110);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t static UpdateListAppIntent.description.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDA6D0, &unk_261D02CD0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v15[-v3];
  v5 = sub_261CFD674();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v15[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_261CFD884();
  MEMORY[0x28223BE20](v9 - 8);
  v10 = sub_261CFFA44();
  MEMORY[0x28223BE20](v10 - 8);
  v11 = sub_261CFD6A4();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  sub_261CFF9B4();
  sub_261CFD874();
  (*(v6 + 104))(v8, *MEMORY[0x277CC9110], v5);
  sub_261CFD6C4();
  (*(v12 + 56))(v4, 1, 1, v11);
  sub_261CFCF04();
  v13 = sub_261CFCEE4();
  return (*(*(v13 - 8) + 56))(a1, 0, 1, v13);
}

uint64_t sub_261B7DA48(uint64_t a1, uint64_t *a2)
{
  v4 = type metadata accessor for ListEntity(0);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = v17 - v8;
  sub_261B0A18C(a1, v17 - v8);
  v10 = *a2;
  v17[9] = a2[1];
  v17[10] = v10;
  v11 = a2[3];
  v12 = a2[5];
  v17[11] = a2[4];
  v17[7] = v12;
  v17[8] = v11;
  v13 = a2[6];
  v14 = a2[9];
  v17[1] = a2[8];
  v17[2] = v14;
  v15 = a2[11];
  v17[3] = a2[10];
  v17[4] = v15;
  v17[5] = a2[12];
  v17[6] = v13;
  sub_261B0A18C(v9, v7);
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCBC4();
  sub_261B0A1F0(v9);
}

uint64_t UpdateListAppIntent.target.setter(uint64_t a1)
{
  v2 = type metadata accessor for ListEntity(0);
  MEMORY[0x28223BE20](v2 - 8);
  sub_261B0A18C(a1, &v5 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_261CFCBC4();
  return sub_261B0A1F0(a1);
}

uint64_t (*UpdateListAppIntent.target.modify(uint64_t *a1))()
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
  *(v2 + 32) = sub_261CFCBA4();
  return sub_261B02064;
}

uint64_t sub_261B7DDA4(uint64_t *a1, uint64_t *a2)
{
  sub_261CFD104();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCBC4();
}

uint64_t (*UpdateListAppIntent.name.modify(uint64_t *a1))()
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
  *(v2 + 32) = sub_261CFCBA4();
  return sub_261B02064;
}

uint64_t sub_261B7DFDC(uint64_t *a1, uint64_t *a2)
{
  sub_261AF9844(*a1, a1[1], a1[2], a1[3], a1[4], a1[5], a1[6]);
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCBC4();
}

uint64_t (*UpdateListAppIntent.color.modify(uint64_t *a1))()
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
  *(v2 + 32) = sub_261CFCBA4();
  return sub_261B02064;
}

uint64_t sub_261B7E238(uint64_t *a1, uint64_t *a2)
{
  sub_261AF9C0C(*a1, a1[1], a1[2], a1[3], a1[4]);
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCBC4();
}

uint64_t (*UpdateListAppIntent.badge.modify(uint64_t *a1))()
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
  *(v2 + 32) = sub_261CFCBA4();
  return sub_261B02064;
}

uint64_t sub_261B7E48C(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDD950, &unk_261D01440);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = v16 - v8;
  sub_261B7CD38(a1, v16 - v8);
  v10 = *a2;
  v16[9] = a2[1];
  v16[10] = v10;
  v11 = a2[2];
  v16[7] = a2[3];
  v16[8] = v11;
  v12 = a2[5];
  v16[11] = a2[4];
  v13 = a2[9];
  v16[1] = a2[8];
  v16[2] = v13;
  v14 = a2[11];
  v16[3] = a2[10];
  v16[4] = v14;
  v16[5] = a2[12];
  v16[6] = v12;
  sub_261B7CD38(v9, v7);
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCBC4();
  sub_261B7CDA8(v9);
}

uint64_t (*UpdateListAppIntent.parent.modify(uint64_t *a1))()
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
  *(v2 + 32) = sub_261CFCBA4();
  return sub_261B02064;
}

uint64_t sub_261B7E764(char *a1, uint64_t *a2)
{
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCBC4();
}

uint64_t (*UpdateListAppIntent.isPinned.modify(uint64_t *a1))()
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
  *(v2 + 32) = sub_261CFCBA4();
  return sub_261B02064;
}

uint64_t sub_261B7E9A4(char *a1, uint64_t *a2)
{
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCBC4();
}

uint64_t (*UpdateListAppIntent.showsCompleted.modify(uint64_t *a1))()
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
  *(v2 + 32) = sub_261CFCBA4();
  return sub_261B02064;
}

uint64_t sub_261B7EBE4(char *a1, uint64_t *a2)
{
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCBC4();
}

uint64_t (*UpdateListAppIntent.autoCategorize.modify(uint64_t *a1))()
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
  *(v2 + 32) = sub_261CFCBA4();
  return sub_261B02064;
}

uint64_t sub_261B7EE48(char *a1, uint64_t *a2)
{
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCBC4();
}

uint64_t (*UpdateListAppIntent.listLayout.modify(uint64_t *a1))()
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
  *(v2 + 32) = sub_261CFCBA4();
  return sub_261AFA230;
}

uint64_t sub_261B7F078(char *a1, uint64_t *a2)
{
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCBC4();
}

uint64_t (*UpdateListAppIntent.sortingStyle.modify(uint64_t *a1))()
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
  *(v2 + 32) = sub_261CFCBA4();
  return sub_261B02064;
}

uint64_t sub_261B7F2A8(char *a1, uint64_t *a2)
{
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCBC4();
}

uint64_t (*UpdateListAppIntent.listType.modify(uint64_t *a1))()
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
  *(v2 + 32) = sub_261CFCBA4();
  return sub_261B02064;
}

uint64_t UpdateListAppIntent.init()@<X0>(uint64_t *a1@<X8>)
{
  v107 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA390, &unk_261D02F60);
  MEMORY[0x28223BE20](v1 - 8);
  v102 = &v91 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDD950, &unk_261D01440);
  MEMORY[0x28223BE20](v3 - 8);
  v99 = &v91 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDE0C0, &unk_261D02500);
  MEMORY[0x28223BE20](v5 - 8);
  v98 = &v91 - v6;
  v122 = sub_261CFD674();
  v119 = *(v122 - 8);
  MEMORY[0x28223BE20](v122);
  v118 = &v91 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_261CFD884();
  MEMORY[0x28223BE20](v8 - 8);
  v116 = &v91 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_261CFFA44();
  MEMORY[0x28223BE20](v10 - 8);
  v121 = &v91 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_261CFD6A4();
  v108 = v12;
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v104 = &v91 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = sub_261CFD184();
  v15 = *(v110 - 8);
  MEMORY[0x28223BE20](v110);
  v17 = &v91 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA1E8, &unk_261D02310);
  v19 = MEMORY[0x28223BE20](v18 - 8);
  v105 = &v91 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v22 = &v91 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA280, &unk_261D02510);
  MEMORY[0x28223BE20](v23 - 8);
  v25 = &v91 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDA6D0, &unk_261D02CD0);
  MEMORY[0x28223BE20](v26 - 8);
  v28 = &v91 - v27;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA290, qword_261D0F1D0);
  v109 = *(v13 + 56);
  v109(v28, 1, 1, v12);
  v113 = v13 + 56;
  v94 = sub_261CFF994();
  v126 = 0uLL;
  v29 = *(v94 - 8);
  v93 = *(v29 + 56);
  v97 = (v29 + 56);
  v92 = v25;
  v93(v25, 1, 1, v94);
  v30 = sub_261CFC834();
  v31 = *(v30 - 8);
  v32 = *(v31 + 56);
  v114 = v31 + 56;
  v32(v22, 1, 1, v30);
  v115 = *MEMORY[0x277CBA308];
  v117 = *(v15 + 104);
  v120 = v17;
  v33 = v110;
  v117(v17);
  v106 = v15 + 104;
  v34 = sub_261CFCD04();
  v35 = v107;
  *v107 = v34;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDB128, &unk_261D05180);
  v109(v28, 1, 1, v108);
  LOBYTE(v126) = 2;
  v123 = v30;
  v124 = v32;
  v32(v22, 1, 1, v30);
  v32(v105, 1, 1, v30);
  v36 = v120;
  (v117)(v120, v115, v33);
  v95 = sub_261AFF54C();
  v35[1] = sub_261CFCBF4();
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA298, &qword_261D02530);
  sub_261CFF9B4();
  sub_261CFD874();
  v111 = *MEMORY[0x277CC9110];
  v112 = *(v119 + 104);
  v119 += 104;
  v112(v118);
  sub_261CFD6B4();
  v37 = v108;
  v109(v28, 1, 1, v108);
  v38 = type metadata accessor for ListEntity(0);
  (*(*(v38 - 8) + 56))(v98, 1, 1, v38);
  v40 = v123;
  v39 = v124;
  v124(v22, 1, 1, v123);
  v39(v105, 1, 1, v40);
  v41 = v115;
  (v117)(v36, v115, v110);
  sub_261B80F44(&qword_280D227A0, type metadata accessor for ListEntity, &protocol conformance descriptor for ListEntity);
  v107[2] = sub_261CFCC34();
  sub_261CFF9B4();
  sub_261CFD874();
  (v112)(v118, v111, v122);
  sub_261CFD6B4();
  v42 = v37;
  v43 = v109;
  v109(v28, 1, 1, v42);
  v126 = 0uLL;
  v93(v92, 1, 1, v94);
  v103 = v22;
  v124(v22, 1, 1, v123);
  v44 = v41;
  v45 = v110;
  (v117)(v120, v44, v110);
  v46 = sub_261CFCD24();
  v47 = v107;
  v107[3] = v46;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDB130, &qword_261D05190);
  sub_261CFF9B4();
  sub_261CFD874();
  (v112)(v118, v111, v122);
  sub_261CFD6B4();
  v43(v28, 1, 1, v108);
  v129 = 0;
  v127 = 0u;
  v128 = 0u;
  v126 = 0u;
  v48 = v103;
  v49 = v123;
  v50 = v124;
  v124(v103, 1, 1, v123);
  v50(v105, 1, 1, v49);
  v51 = v117;
  (v117)(v120, v115, v45);
  sub_261AFF5A0();
  v47[4] = sub_261CFCC34();
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDB138, &qword_261D05198);
  sub_261CFF9B4();
  sub_261CFD874();
  (v112)(v118, v111, v122);
  sub_261CFD6B4();
  v101 = v28;
  v52 = v108;
  v53 = v109;
  v109(v101, 1, 1, v108);
  *&v128 = 0;
  v126 = 0u;
  v127 = 0u;
  v54 = v48;
  v55 = v123;
  v56 = v124;
  v124(v54, 1, 1, v123);
  v56(v105, 1, 1, v55);
  v57 = v115;
  v58 = v110;
  (v51)(v120, v115, v110);
  sub_261AFF5F4();
  v107[5] = sub_261CFCC34();
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDB140, &unk_261D051A0);
  sub_261CFF9B4();
  sub_261CFD874();
  (v112)(v118, v111, v122);
  sub_261CFD6B4();
  v59 = v101;
  v53(v101, 1, 1, v52);
  v60 = type metadata accessor for GroupEntity(0);
  (*(*(v60 - 8) + 56))(v99, 1, 1, v60);
  v61 = v103;
  v62 = v123;
  v63 = v124;
  v124(v103, 1, 1, v123);
  v63(v105, 1, 1, v62);
  (v117)(v120, v57, v58);
  sub_261B80F44(&qword_280D22670, type metadata accessor for GroupEntity, &protocol conformance descriptor for GroupEntity);
  v64 = v59;
  v65 = v61;
  v66 = sub_261CFCC34();
  v67 = v107;
  v107[6] = v66;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDAA30, &unk_261D035F0);
  sub_261CFF9B4();
  sub_261CFD874();
  (v112)(v118, v111, v122);
  sub_261CFD6B4();
  v109(v64, 1, 1, v108);
  LOBYTE(v126) = 2;
  v98 = sub_261CFFCE4();
  v68 = *(v98 - 1);
  v97 = *(v68 + 56);
  v100 = v68 + 56;
  v97(v102, 1, 1, v98);
  v124(v65, 1, 1, v123);
  v69 = v117;
  (v117)(v120, v115, v110);
  v67[7] = sub_261CFCD44();
  sub_261CFF9B4();
  sub_261CFD874();
  v70 = v111;
  (v112)(v118, v111, v122);
  sub_261CFD6B4();
  v71 = v101;
  v109(v101, 1, 1, v108);
  LOBYTE(v126) = 2;
  v97(v102, 1, 1, v98);
  v124(v103, 1, 1, v123);
  v72 = v110;
  (v69)(v120, v115, v110);
  v107[8] = sub_261CFCD44();
  sub_261CFF9B4();
  sub_261CFD874();
  v73 = v112;
  (v112)(v118, v70, v122);
  sub_261CFD6B4();
  v74 = v108;
  v75 = v109;
  v109(v71, 1, 1, v108);
  LOBYTE(v126) = 2;
  v97(v102, 1, 1, v98);
  v124(v103, 1, 1, v123);
  (v117)(v120, v115, v72);
  v76 = sub_261CFCD44();
  v77 = v107;
  v107[9] = v76;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDB148, &qword_261D051B0);
  sub_261CFF9B4();
  sub_261CFD874();
  v78 = v118;
  (v73)(v118, v111, v122);
  sub_261CFD6B4();
  v79 = v101;
  v75(v101, 1, 1, v74);
  LOBYTE(v126) = 2;
  v80 = v103;
  v82 = v123;
  v81 = v124;
  v124(v103, 1, 1, v123);
  v83 = v105;
  v81(v105, 1, 1, v82);
  (v117)(v120, v115, v110);
  sub_261AFF648();
  v77[10] = sub_261CFCC04();
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDB150, qword_261D051B8);
  sub_261CFF9B4();
  sub_261CFD874();
  (v112)(v78, v111, v122);
  sub_261CFD6B4();
  v109(v79, 1, 1, v108);
  LOBYTE(v126) = 10;
  v85 = v123;
  v84 = v124;
  v124(v80, 1, 1, v123);
  v84(v83, 1, 1, v85);
  (v117)(v120, v115, v110);
  sub_261AFF69C();
  v86 = sub_261CFCC04();
  v87 = v107;
  v107[11] = v86;
  sub_261CFF9B4();
  sub_261CFD874();
  (v112)(v118, v111, v122);
  sub_261CFD6B4();
  v109(v79, 1, 1, v108);
  LOBYTE(v126) = 2;
  v89 = v123;
  v88 = v124;
  v124(v80, 1, 1, v123);
  v88(v105, 1, 1, v89);
  (v117)(v120, v115, v110);
  v87[12] = sub_261CFCC04();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDABA0, &qword_261D03830);
  v125 = 0;
  sub_261AE4630();
  sub_261D002D4();
  sub_261CFC6B4();
  sub_261CFC6A4();
  result = sub_261CFC684();
  v87[13] = result;
  return result;
}

uint64_t sub_261B80F44(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_261B80F90()
{
  result = qword_27FEDB158;
  if (!qword_27FEDB158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDB158);
  }

  return result;
}

unint64_t sub_261B80FE8()
{
  result = qword_27FEDB160;
  if (!qword_27FEDB160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDB160);
  }

  return result;
}

unint64_t sub_261B810C0()
{
  result = qword_27FEDB168;
  if (!qword_27FEDB168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDB168);
  }

  return result;
}

uint64_t sub_261B81114@<X0>(uint64_t a1@<X8>)
{
  if (qword_27FED9938 != -1)
  {
    swift_once();
  }

  v2 = sub_261CFD6A4();
  v3 = __swift_project_value_buffer(v2, qword_27FEDB110);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_261B81204(uint64_t a1)
{
  *(v2 + 240) = a1;
  v3 = v1[5];
  *(v2 + 80) = v1[4];
  *(v2 + 96) = v3;
  *(v2 + 112) = v1[6];
  v4 = v1[1];
  *(v2 + 16) = *v1;
  *(v2 + 32) = v4;
  v5 = v1[3];
  *(v2 + 48) = v1[2];
  *(v2 + 64) = v5;
  sub_261CFFD24();
  *(v2 + 248) = sub_261CFFD14();
  v7 = sub_261CFFCF4();
  *(v2 + 256) = v7;
  *(v2 + 264) = v6;

  return MEMORY[0x2822009F8](sub_261B812BC, v7, v6);
}

uint64_t sub_261B812BC()
{
  sub_261B59DEC(v0 + 16, v0 + 128);
  v1 = swift_task_alloc();
  *(v0 + 272) = v1;
  *v1 = v0;
  v1[1] = sub_261B81384;
  v2 = *(v0 + 240);

  return sub_261C56650(v2, "UpdateListAppIntent", 19, 2, v0 + 16);
}

uint64_t sub_261B81384()
{
  v2 = *v1;
  *(*v1 + 280) = v0;

  v3 = *(v2 + 264);
  v4 = *(v2 + 256);
  if (v0)
  {
    v5 = sub_261B81524;
  }

  else
  {
    v5 = sub_261B814C0;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_261B814C0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_261B81524()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_261B815D4(uint64_t a1)
{
  v2 = sub_261B810C0();

  return MEMORY[0x28210B538](a1, v2);
}

uint64_t destroy for UpdateListAppIntent(void *a1)
{
}

uint64_t *initializeWithCopy for UpdateListAppIntent(uint64_t *a1, uint64_t *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;
  v4 = a2[3];
  a1[2] = a2[2];
  a1[3] = v4;
  v5 = a2[5];
  a1[4] = a2[4];
  a1[5] = v5;
  v6 = a2[7];
  a1[6] = a2[6];
  a1[7] = v6;
  v7 = a2[9];
  a1[8] = a2[8];
  a1[9] = v7;
  v9 = a2[11];
  a1[10] = a2[10];
  a1[11] = v9;
  v10 = a2[13];
  a1[12] = a2[12];
  a1[13] = v10;
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  return a1;
}

uint64_t *assignWithCopy for UpdateListAppIntent(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;
  sub_261CFCDA4();

  a1[1] = a2[1];
  sub_261CFCDA4();

  a1[2] = a2[2];
  sub_261CFCDA4();

  a1[3] = a2[3];
  sub_261CFCDA4();

  a1[4] = a2[4];
  sub_261CFCDA4();

  a1[5] = a2[5];
  sub_261CFCDA4();

  a1[6] = a2[6];
  sub_261CFCDA4();

  a1[7] = a2[7];
  sub_261CFCDA4();

  a1[8] = a2[8];
  sub_261CFCDA4();

  a1[9] = a2[9];
  sub_261CFCDA4();

  a1[10] = a2[10];
  sub_261CFCDA4();

  a1[11] = a2[11];
  sub_261CFCDA4();

  a1[12] = a2[12];
  sub_261CFCDA4();

  a1[13] = a2[13];
  sub_261CFCDA4();

  return a1;
}

__n128 __swift_memcpy112_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = result;
  *(a1 + 64) = v5;
  return result;
}

void *assignWithTake for UpdateListAppIntent(void *a1, _OWORD *a2)
{

  *a1 = *a2;

  *(a1 + 1) = a2[1];

  *(a1 + 2) = a2[2];

  *(a1 + 3) = a2[3];

  *(a1 + 4) = a2[4];

  *(a1 + 5) = a2[5];

  *(a1 + 6) = a2[6];

  return a1;
}

uint64_t getEnumTagSinglePayload for UpdateListAppIntent(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 112))
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

uint64_t storeEnumTagSinglePayload for UpdateListAppIntent(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 112) = 1;
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

    *(result + 112) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t dispatch thunk of UpdateListIntentPerforming.perform(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 8) + **(a4 + 8));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_261AF43A8;

  return v11(a1, a2, a3, a4);
}

unint64_t sub_261B81C00()
{
  result = qword_27FEDABE8;
  if (!qword_27FEDABE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FEDABA8, &qword_261D03840);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDABE8);
  }

  return result;
}

uint64_t sub_261B81C6C()
{
  v0 = sub_261CFF7A4();
  __swift_allocate_value_buffer(v0, qword_27FEDB170);
  v1 = __swift_project_value_buffer(v0, qword_27FEDB170);
  if (qword_280D22888 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D27010);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_261B81DDC()
{
  sub_261CFCBB4();
  if (*(v0 + 208))
  {
    sub_261CFCBB4();
    v1 = *(v0 + 16);
    *(v0 + 168) = v1;
    sub_261CFCBB4();
    v2 = *(v0 + 24);
    *(v0 + 176) = v2;
    v3 = swift_task_alloc();
    *(v0 + 184) = v3;
    *v3 = v0;
    v3[1] = sub_261B8211C;
    v4 = 1;
  }

  else
  {
    sub_261CFCBB4();
    v1 = *(v0 + 40);
    *(v0 + 128) = v1;
    sub_261CFCBB4();
    v2 = *(v0 + 48);
    *(v0 + 136) = v2;
    v5 = swift_task_alloc();
    *(v0 + 144) = v5;
    *v5 = v0;
    v5[1] = sub_261B81F30;
    v4 = 0;
  }

  return sub_261B82408(v4, v1, v2);
}

uint64_t sub_261B81F30(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 152) = v1;

  if (v1)
  {
    v5 = v4[14];
    v6 = v4[15];
    v7 = sub_261B82308;
  }

  else
  {

    v4[20] = a1;
    v5 = v4[14];
    v6 = v4[15];
    v7 = sub_261B82068;
  }

  return MEMORY[0x2822009F8](v7, v5, v6);
}

uint64_t sub_261B82068()
{
  v1 = v0[20];

  v0[7] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDE0D0, qword_261D11550);
  sub_261B834D8();
  sub_261CFC994();

  v2 = v0[1];

  return v2();
}

uint64_t sub_261B8211C(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 192) = v1;

  if (v1)
  {
    v5 = v4[14];
    v6 = v4[15];
    v7 = sub_261B82388;
  }

  else
  {

    v4[25] = a1;
    v5 = v4[14];
    v6 = v4[15];
    v7 = sub_261B82254;
  }

  return MEMORY[0x2822009F8](v7, v5, v6);
}

uint64_t sub_261B82254()
{
  v1 = v0[25];

  v0[4] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDE0D0, qword_261D11550);
  sub_261B834D8();
  sub_261CFC994();

  v2 = v0[1];

  return v2();
}

uint64_t sub_261B82308()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_261B82388()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_261B82408(char a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 40) = a3;
  *(v4 + 48) = v3;
  *(v4 + 32) = a2;
  *(v4 + 160) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA108, &unk_261D020C0);
  *(v4 + 56) = swift_task_alloc();
  *(v4 + 64) = swift_task_alloc();
  v5 = _s20CategorizedRemindersV15FetchedReminderVMa(0);
  *(v4 + 72) = v5;
  *(v4 + 80) = *(v5 - 8);
  *(v4 + 88) = swift_task_alloc();
  v6 = type metadata accessor for ReminderEntity(0);
  *(v4 + 96) = v6;
  *(v4 + 104) = *(v6 - 8);
  *(v4 + 112) = swift_task_alloc();
  *(v4 + 120) = swift_task_alloc();
  *(v4 + 128) = swift_task_alloc();
  v7 = sub_261CFD884();
  *(v4 + 136) = v7;
  *(v4 + 144) = *(v7 - 8);
  *(v4 + 152) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_261B82610, 0, 0);
}

uint64_t sub_261B82610()
{
  v134 = v0;
  v2 = v0;
  v133[5] = *MEMORY[0x277D85DE8];
  v3 = v0[5];
  v4 = *(v3 + 16);
  v5 = MEMORY[0x277D84F90];
  if (v4)
  {
    v6 = 0;
    v7 = (v0[18] + 8);
    v8 = v3 + 40;
    v126 = v3 + 40;
    while (2)
    {
      v128 = v5;
      v9 = v8 + 16 * v6;
      v10 = v6;
      while (1)
      {
        if (v10 >= v4)
        {
          __break(1u);
LABEL_79:
          __break(1u);
LABEL_80:

          sub_261B01D70();
          swift_allocError();
          *v111 = 6;
          swift_willThrow();

LABEL_81:
          sub_261B83750(v2[11], _s20CategorizedRemindersV15FetchedReminderVMa);
          goto LABEL_82;
        }

        v6 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
          goto LABEL_79;
        }

        v1 = v2[19];
        v11 = v2[17];
        sub_261CFD104();
        sub_261CFD874();
        v12 = sub_261CFFAF4();
        v14 = v13;

        (*v7)(v1, v11);
        v15 = HIBYTE(v14) & 0xF;
        if ((v14 & 0x2000000000000000) == 0)
        {
          v15 = v12 & 0xFFFFFFFFFFFFLL;
        }

        if (v15)
        {
          break;
        }

        v9 += 16;
        ++v10;
        v2 = v131;
        if (v6 == v4)
        {
          v5 = v128;
          goto LABEL_16;
        }
      }

      v5 = v128;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v5 = sub_261B41B60(0, *(v128 + 2) + 1, 1, v128);
      }

      v2 = v131;
      v8 = v126;
      v17 = *(v5 + 2);
      v16 = *(v5 + 3);
      v1 = (v17 + 1);
      if (v17 >= v16 >> 1)
      {
        v5 = sub_261B41B60((v16 > 1), v17 + 1, 1, v5);
      }

      *(v5 + 2) = v1;
      v18 = &v5[16 * v17];
      *(v18 + 4) = v12;
      *(v18 + 5) = v14;
      if (v6 != v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_16:
  v19 = *(v5 + 2);
  if (!v19)
  {
    if (qword_27FED9940 != -1)
    {
      swift_once();
    }

    v26 = sub_261CFF7A4();
    __swift_project_value_buffer(v26, qword_27FEDB170);
    v27 = sub_261CFF784();
    v28 = sub_261CFFE64();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&dword_261AE2000, v27, v28, "[EditHashtagsInRemindersIntent] Hashtags array has no valid values despite prompts.", v29, 2u);
      MEMORY[0x26671D560](v29, -1, -1);
    }

    sub_261B01D70();
    swift_allocError();
    v31 = 21;
LABEL_31:
    *v30 = v31;
    swift_willThrow();
    goto LABEL_47;
  }

  v20 = *(v2[4] + 16);
  if (!v20)
  {
    if (qword_27FED9940 != -1)
    {
LABEL_86:
      swift_once();
    }

    v32 = sub_261CFF7A4();
    __swift_project_value_buffer(v32, qword_27FEDB170);
    v33 = sub_261CFF784();
    v34 = sub_261CFFE64();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&dword_261AE2000, v33, v34, "[EditHashtagsInRemindersIntent] Reminders array is empty despite prompts.", v35, 2u);
      MEMORY[0x26671D560](v35, -1, -1);
    }

    sub_261B01D70();
    swift_allocError();
    v31 = 24;
    goto LABEL_31;
  }

  if (v19 != 1)
  {
    v21 = sub_261CFD104();
    v22 = sub_261B49EB8(v21);

    v23 = *(v22 + 16);
    if (v23)
    {
      v24 = sub_261C437E4(*(v22 + 16), 0);
      v25 = sub_261C4390C(v133, v24 + 4, v23, v22);
      sub_261B57B30(v133[0]);
      if (v25 != v23)
      {
        __break(1u);
      }

      v5 = v24;
    }

    else
    {

      v5 = MEMORY[0x277D84F90];
    }
  }

  if (qword_27FED9940 != -1)
  {
    goto LABEL_84;
  }

  while (1)
  {
    v36 = sub_261CFF7A4();
    __swift_project_value_buffer(v36, qword_27FEDB170);
    sub_261CFD104();
    sub_261CFD104();
    v37 = sub_261CFF784();
    v38 = sub_261CFFE84();

    if (os_log_type_enabled(v37, v38))
    {
      v122 = v38;
      v129 = v5;
      v39 = v2[13];
      log = v37;
      v40 = v2[4];
      v41 = *(v2 + 160);
      v42 = swift_slowAlloc();
      v118 = swift_slowAlloc();
      v132 = v118;
      *v42 = 136315650;
      if (v41)
      {
        v43 = 0xD000000000000024;
      }

      else
      {
        v43 = 0xD00000000000001FLL;
      }

      if (v41)
      {
        v44 = "eminders List AppIntent";
      }

      else
      {
        v44 = "omRemindersAppIntent";
      }

      v45 = sub_261B879C8(v43, v44 | 0x8000000000000000, &v132);

      *(v42 + 4) = v45;
      v120 = v42;
      *(v42 + 12) = 2080;
      v133[0] = MEMORY[0x277D84F90];
      sub_261B39FA4(0, v20, 0);
      v46 = v133[0];
      v47 = v40 + ((*(v39 + 80) + 32) & ~*(v39 + 80));
      v48 = *(v39 + 72);
      do
      {
        v49 = v2[16];
        sub_261B836E8(v47, v49, type metadata accessor for ReminderEntity);
        v50 = AppEntityID.entityIdentifierString.getter();
        v52 = v51;
        sub_261B83750(v49, type metadata accessor for ReminderEntity);
        v133[0] = v46;
        v54 = *(v46 + 16);
        v53 = *(v46 + 24);
        if (v54 >= v53 >> 1)
        {
          sub_261B39FA4((v53 > 1), v54 + 1, 1);
          v46 = v133[0];
        }

        *(v46 + 16) = v54 + 1;
        v55 = v46 + 16 * v54;
        *(v55 + 32) = v50;
        *(v55 + 40) = v52;
        v47 += v48;
        --v20;
        v2 = v131;
      }

      while (v20);
      v56 = MEMORY[0x277D837D0];
      v57 = MEMORY[0x26671C340](v46, MEMORY[0x277D837D0]);
      v59 = v58;

      v60 = sub_261B879C8(v57, v59, &v132);

      *(v120 + 14) = v60;
      *(v120 + 22) = 2080;
      v5 = v129;
      v61 = sub_261CFD104();
      v62 = MEMORY[0x26671C340](v61, v56);
      v64 = v63;

      v65 = sub_261B879C8(v62, v64, &v132);

      *(v120 + 24) = v65;
      v37 = log;
      _os_log_impl(&dword_261AE2000, log, v122, "[%s] Edit hashtags in reminders with ids: %s, hashtags: %s", v120, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x26671D560](v118, -1, -1);
      MEMORY[0x26671D560](v120, -1, -1);
    }

    v66 = sub_261B9A654(v2[4], 1);
    v70 = sub_261B9B744(3, v66, v67);
    v130 = v5;
    v71 = v2[6];

    v1 = [objc_allocWithZone(MEMORY[0x277D447D8]) initWithStore_];
    [v1 setSaveIsNoopIfNoChangedKeys_];
    v115 = *(v70 + 16);
    if (!v115)
    {
      break;
    }

    v72 = 0;
    v5 = (*(v2 + 160) ^ 1u);
    v112 = v2[13];
    v73 = MEMORY[0x277D84F90];
    v116 = v2[9];
    v117 = v2[10];
    v74 = &unk_279AFB000;
    v113 = v70;
    v114 = v1;
    while (1)
    {
      if (v72 >= *(v70 + 16))
      {
        __break(1u);
        goto LABEL_86;
      }

      v2 = v131;
      v75 = v131[11];
      sub_261B836E8(v70 + ((*(v117 + 80) + 32) & ~*(v117 + 80)) + *(v117 + 72) * v72, v75, _s20CategorizedRemindersV15FetchedReminderVMa);
      v76 = *(v75 + *(v116 + 20));
      v77 = sub_261CFFDF4();
      v78 = [v77 supportsHashtags];

      v127 = v73;
      if (!v78)
      {
        goto LABEL_80;
      }

      v79 = [v76 parentReminder];
      loga = v72;
      if (v79)
      {
        v80 = v79;
        v81 = [v1 v74[107]];
      }

      else
      {
        v81 = 0;
      }

      v82 = [v1 v74[107]];
      v20 = sub_261CFE144();
      sub_261B83638(&qword_27FEDA9B8, MEMORY[0x277D45CF0], MEMORY[0x277D45CE8]);
      v83 = v82;
      sub_261CFE194();
      v84 = *(v130 + 2);
      sub_261CFD104();
      if (v84)
      {
        break;
      }

LABEL_61:
      v87 = v131[8];

      v88 = type metadata accessor for RecurrentInstanceSpecifier(0);
      (*(*(v88 - 8) + 56))(v87, 1, 1, v88);
      v89 = v81;
      v90 = v83;
      v91 = [v90 listChangeItem];
      if (!v91 || (v92 = v91, v93 = [v91 storage], v92, !v93))
      {
        v108 = v131[8];

        sub_261B01D70();
        swift_allocError();
        *v109 = 11;
        swift_willThrow();

        sub_261B83680(v108);
        goto LABEL_81;
      }

      v94 = [v90 storage];
      v121 = [v90 accountCapabilities];
      v123 = v94;
      if (v81)
      {
        v81 = [v89 storage];
      }

      v95 = v131[15];
      v119 = v131[14];
      v97 = v131[7];
      v96 = v131[8];
      sub_261AE7A78(v96, v97);
      sub_261C7EDC4(v123, v93, v121, v81, 0, v97, v95);

      sub_261B83680(v96);
      sub_261B836E8(v95, v119, type metadata accessor for ReminderEntity);
      v73 = v127;
      v98 = v89;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v73 = sub_261B41560(0, v127[2] + 1, 1, v127);
      }

      v100 = v73[2];
      v99 = v73[3];
      if (v100 >= v99 >> 1)
      {
        v73 = sub_261B41560((v99 > 1), v100 + 1, 1, v73);
      }

      v102 = v131[14];
      v101 = v131[15];
      v103 = v131[11];
      v72 = (&loga->isa + 1);

      sub_261B83750(v101, type metadata accessor for ReminderEntity);
      v73[2] = v100 + 1;
      sub_261B837B0(v102, v73 + ((*(v112 + 80) + 32) & ~*(v112 + 80)) + *(v112 + 72) * v100);
      sub_261B83750(v103, _s20CategorizedRemindersV15FetchedReminderVMa);
      v1 = v114;
      v70 = v113;
      v74 = &unk_279AFB000;
      if ((&loga->isa + 1) == v115)
      {
        goto LABEL_72;
      }
    }

    v85 = 0;
    v86 = (v130 + 40);
    while (v85 < *(v130 + 2))
    {
      ++v85;
      v20 = *v86;
      sub_261CFD104();
      sub_261CFE0F4();

      v86 += 2;
      if (v84 == v85)
      {
        goto LABEL_61;
      }
    }

    __break(1u);
LABEL_84:
    swift_once();
  }

  v73 = MEMORY[0x277D84F90];
LABEL_72:

  v131[3] = 0;
  v104 = [v1 saveSynchronouslyWithError_];
  v105 = v131[3];
  if (v104)
  {
    v106 = v105;

    v107 = v131[1];

    return v107(v73);
  }

  v110 = v105;
  sub_261CFD654();

  swift_willThrow();
LABEL_82:

LABEL_47:

  v68 = v131[1];

  return v68();
}

unint64_t sub_261B834D8()
{
  result = qword_280D21E10;
  if (!qword_280D21E10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27FEDE0D0, qword_261D11550);
    sub_261B83638(&qword_280D22350, type metadata accessor for ReminderEntity, &protocol conformance descriptor for ReminderEntity);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D21E10);
  }

  return result;
}

uint64_t sub_261B8358C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_261AF43A8;

  return REMStoreIntentPerformer.perform(_:)(a1, a2);
}

uint64_t sub_261B83638(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_261B83680(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA108, &unk_261D020C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_261B836E8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_261B83750(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_261B837B0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ReminderEntity(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t SmartListEntityQuery.init()@<X0>(uint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDB188, &qword_261D05330);
  sub_261AE4630();
  sub_261D002D4();
  sub_261CFC6B4();
  sub_261CFC6A4();
  result = sub_261CFC684();
  *a1 = result;
  return result;
}

uint64_t SmartListEntityQuery.entities(for:)(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return MEMORY[0x2822009F8](sub_261B838C4, 0, 0);
}

uint64_t sub_261B838C4()
{
  sub_261CFCDA4();
  sub_261CFD104();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_261B0E3F8;
  v3 = v0[2];
  v2 = v0[3];

  return sub_261C5EA24("SmartListEntityQuery.entitiesForIdentifiers", 43, 2, v2, v3);
}

uint64_t sub_261B839B8()
{
  sub_261CFCDA4();
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_261B84F10;
  v2 = *(v0 + 16);

  return sub_261C5EE64("SmartListEntityQuery.suggestedEntities", 38, 2, v2);
}

uint64_t sub_261B83A7C@<X0>(uint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDB188, &qword_261D05330);
  sub_261AE4630();
  sub_261D002D4();
  sub_261CFC6B4();
  sub_261CFC6A4();
  result = sub_261CFC684();
  *a1 = result;
  return result;
}

uint64_t sub_261B83B08(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return MEMORY[0x2822009F8](sub_261B83B2C, 0, 0);
}

uint64_t sub_261B83B2C()
{
  sub_261CFCDA4();
  sub_261CFD104();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_261B0D104;
  v3 = v0[2];
  v2 = v0[3];

  return sub_261C5EA24("SmartListEntityQuery.entitiesForIdentifiers", 43, 2, v2, v3);
}

uint64_t sub_261B83BFC(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return MEMORY[0x2822009F8](sub_261B83C20, 0, 0);
}

uint64_t sub_261B83C20()
{
  sub_261CFCDA4();
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_261B83CE4;
  v2 = *(v0 + 24);

  return sub_261C5EE64("SmartListEntityQuery.suggestedEntities", 38, 2, v2);
}

uint64_t sub_261B83CE4(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {
    v6 = *(v5 + 8);

    return v6();
  }

  else
  {
    *(v4 + 40) = a1;

    return MEMORY[0x2822009F8](sub_261B84F0C, 0, 0);
  }
}

uint64_t sub_261B83E58(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_261B849E8();
  *v5 = v2;
  v5[1] = sub_261AF43A8;

  return MEMORY[0x28210B618](a1, a2, v6);
}

uint64_t sub_261B83F30()
{
  sub_261CFCDA4();
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_261B0CE60;
  v2 = *(v0 + 16);

  return sub_261C5F3B0("SmartListEntityQuery.allEntities", 32, 2, v2);
}

uint64_t static SmartListEntityQuery.findIntentDescription.getter@<X0>(uint64_t a1@<X8>)
{
  v27 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDA6D0, &unk_261D02CD0);
  v2 = MEMORY[0x28223BE20](v1 - 8);
  v26 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v28 = &v20 - v4;
  v5 = sub_261CFD674();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_261CFD884();
  MEMORY[0x28223BE20](v9 - 8);
  v10 = sub_261CFFA44();
  MEMORY[0x28223BE20](v10 - 8);
  v11 = sub_261CFD6A4();
  v24 = v11;
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v25 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_261CFF9B4();
  sub_261CFD874();
  v14 = *MEMORY[0x277CC9110];
  v15 = *(v6 + 104);
  v15(v8, v14, v5);
  sub_261CFD6C4();
  v23 = *(v12 + 56);
  v23(v28, 1, 1, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA130, &qword_261D021D0);
  v22 = v12 + 56;
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_261D05320;
  sub_261CFF9B4();
  sub_261CFD874();
  v15(v8, v14, v5);
  sub_261CFD6C4();
  sub_261CFF9B4();
  sub_261CFD874();
  v15(v8, v14, v5);
  sub_261CFD6C4();
  sub_261CFF9B4();
  sub_261CFD874();
  v15(v8, v14, v5);
  sub_261CFD6C4();
  sub_261CFF9B4();
  sub_261CFD874();
  v15(v8, v14, v5);
  sub_261CFD6C4();
  sub_261CFF9B4();
  sub_261CFD874();
  v15(v8, v14, v5);
  sub_261CFD6C4();
  sub_261CFF9B4();
  sub_261CFD874();
  v15(v8, v14, v5);
  sub_261CFD6C4();
  sub_261CFF9B4();
  sub_261CFD874();
  v15(v8, v14, v5);
  v16 = v26;
  sub_261CFD6C4();
  v23(v16, 0, 1, v24);
  v17 = v27;
  sub_261CFCEF4();
  v18 = sub_261CFCEE4();
  return (*(*(v18 - 8) + 56))(v17, 0, 1, v18);
}

uint64_t sub_261B846BC(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return MEMORY[0x2822009F8](sub_261B846E0, 0, 0);
}

uint64_t sub_261B846E0()
{
  sub_261CFCDA4();
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_261B0D32C;
  v2 = *(v0 + 24);

  return sub_261C5F3B0("SmartListEntityQuery.allEntities", 32, 2, v2);
}

unint64_t sub_261B847AC()
{
  result = qword_27FEDB190;
  if (!qword_27FEDB190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDB190);
  }

  return result;
}

unint64_t sub_261B84804()
{
  result = qword_27FEDB198;
  if (!qword_27FEDB198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDB198);
  }

  return result;
}

unint64_t sub_261B8485C()
{
  result = qword_27FEDB1A0;
  if (!qword_27FEDB1A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDB1A0);
  }

  return result;
}

unint64_t sub_261B848B4()
{
  result = qword_27FEDB1A8;
  if (!qword_27FEDB1A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDB1A8);
  }

  return result;
}

unint64_t sub_261B84908()
{
  result = qword_280D22158;
  if (!qword_280D22158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D22158);
  }

  return result;
}

unint64_t sub_261B84960()
{
  result = qword_27FEDB1B0;
  if (!qword_27FEDB1B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FEDB1B8, qword_261D053C8);
    sub_261B84908();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDB1B0);
  }

  return result;
}

unint64_t sub_261B849E8()
{
  result = qword_27FEDB1C0;
  if (!qword_27FEDB1C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDB1C0);
  }

  return result;
}

uint64_t dispatch thunk of SmartListEntityQueryPerforming.entities(query:for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 8) + **(a4 + 8));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_261B0E3FC;

  return v11(a1, a2, a3, a4);
}

uint64_t dispatch thunk of SmartListEntityQueryPerforming.entities(query:matching:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = (*(a5 + 16) + **(a5 + 16));
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_261B0E3FC;

  return v13(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of SmartListEntityQueryPerforming.suggestedEntities(query:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 24) + **(a3 + 24));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_261B0E3FC;

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of SmartListEntityQueryPerforming.allEntities(query:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 32) + **(a3 + 32));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_261B01F5C;

  return v9(a1, a2, a3);
}

void sub_261B84F14(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v78 = sub_261CFEC94();
  MEMORY[0x28223BE20](v78);
  v79 = &v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_261CFD674();
  v75 = *(v8 - 8);
  v76 = v8;
  MEMORY[0x28223BE20](v8);
  v77 = &v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_261CFD884();
  MEMORY[0x28223BE20](v10 - 8);
  v74 = &v59 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_261CFFA44();
  MEMORY[0x28223BE20](v12 - 8);
  v73 = &v59 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_261CFD6A4();
  MEMORY[0x28223BE20](v14 - 8);
  v72 = &v59 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_261CFDDD4();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = (&v59 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = type metadata accessor for AppEntityID(0);
  MEMORY[0x28223BE20](v20);
  v22 = (&v59 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  if ([a1 isGroup])
  {
    v23 = [a1 objectID];
    v71 = a1;
    v24 = v23;
    v25 = [v23 entityName];
    v63 = a3;
    v26 = v25;
    v27 = sub_261CFFA74();
    v68 = a2;
    v69 = v3;
    v28 = v27;
    v30 = v29;

    v31 = [v24 uuid];
    sub_261CFD834();

    v32 = *(v20 + 24);
    v33 = type metadata accessor for RecurrentInstanceSpecifier(0);
    v34 = *(*(v33 - 8) + 56);
    v70 = v22;
    v34(v22 + v32, 1, 1, v33);
    *v22 = v28;
    v22[1] = v30;
    v35 = v71;
    v36 = [v71 name];
    v37 = sub_261CFFA74();
    v66 = v38;
    v67 = v37;

    sub_261CFDE54();
    v39 = sub_261CFDDA4();
    *v19 = [v35 remObjectID];
    (*(v17 + 104))(v19, *MEMORY[0x277D45C90], v16);
    v82 = sub_261CFDDC4();

    (*(v17 + 8))(v19, v16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDB1C8, &unk_261D10E30);
    sub_261B86228(&qword_280D227A0, type metadata accessor for ListEntity, &protocol conformance descriptor for ListEntity);
    v65 = sub_261CFCA64();
    v40 = v63;
    *v63 = v65;
    v41 = type metadata accessor for GroupEntity(0);
    v42 = *(v41 + 24);
    v43 = v41;
    v62 = v41;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDD8C0, &qword_261D01468);
    v64 = sub_261CFCB24();
    *(v40 + v42) = v64;
    v44 = *(v43 + 28);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDB1D0, &unk_261D10E40);
    sub_261CFF9B4();
    sub_261CFD874();
    v61 = *MEMORY[0x277CC9110];
    v45 = v76;
    v75 = *(v75 + 104);
    v46 = v77;
    (v75)(v77);
    v47 = v72;
    sub_261CFD6B4();
    *(v40 + v44) = MEMORY[0x2667199E0](v47, &type metadata for UpdateGroupNameAppIntent);
    v48 = v62;
    v60 = v62[8];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDB1D8, &unk_261D05530);
    sub_261CFF9B4();
    sub_261CFD874();
    (v75)(v46, v61, v45);
    sub_261CFD6B4();
    v49 = MEMORY[0x2667199F0](v47, &type metadata for UpdateListShowsCompletedAppIntent);
    *(v40 + v60) = v49;
    v50 = v48[9];
    *(v40 + v50) = 0;
    sub_261B7C0F0(v70, v40 + v48[5]);
    type metadata accessor for AnyListEntityLazyImage(0);
    v51 = swift_allocObject();
    v80 = MEMORY[0x277D84F90];
    sub_261B86228(&qword_280D22D90, MEMORY[0x277D44D10], MEMORY[0x277D44D18]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDD9E0, &qword_261D014D0);
    sub_261B7C19C();
    sub_261D001D4();
    sub_261CFECB4();
    swift_allocObject();
    *(v51 + 128) = sub_261CFECA4();
    v52 = OBJC_IVAR____TtC19RemindersAppIntents22AnyListEntityLazyImage_cachedDisplayRepresentationImage;
    v53 = sub_261CFD074();
    (*(*(v53 - 8) + 56))(v51 + v52, 1, 1, v53);
    *(v51 + 105) = 0u;
    *(v51 + 80) = 0u;
    *(v51 + 96) = 0u;
    *(v51 + 48) = 0u;
    *(v51 + 64) = 0u;
    *(v51 + 16) = 0u;
    *(v51 + 32) = 0u;
    *(v51 + 121) = 3;
    *(v40 + v48[10]) = v51;
    LOBYTE(v80) = v82 & 1;
    sub_261CFD2E4();
    v54 = v68;
    *(v40 + v50) = v68;
    v80 = v67;
    v81 = v66;
    v55 = v54;
    sub_261CFD104();
    sub_261CFCA14();
    v56 = MEMORY[0x277D84F90];
    if (v55)
    {
      v56 = v55;
    }

    v80 = v56;
    sub_261CFCA14();

    sub_261B7C200(v70);
  }

  else
  {

    v57 = objc_opt_self();
    v58 = sub_261CFFA54();
    [v57 internalErrorWithDebugDescription_];

    swift_willThrow();
  }
}

void sub_261B857C8(void *a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_261CFEC94();
  MEMORY[0x28223BE20](v6);
  v8 = &v74[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_261CFD674();
  v89 = *(v9 - 8);
  v90 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v74[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = sub_261CFD884();
  MEMORY[0x28223BE20](v12 - 8);
  v88 = &v74[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = sub_261CFFA44();
  MEMORY[0x28223BE20](v14 - 8);
  v87 = &v74[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = sub_261CFD6A4();
  MEMORY[0x28223BE20](v16 - 8);
  v86 = &v74[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = sub_261CFDDD4();
  v84 = *(v18 - 8);
  v85 = v18;
  MEMORY[0x28223BE20](v18);
  v83 = &v74[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v82 = type metadata accessor for AppEntityID(0);
  MEMORY[0x28223BE20](v82);
  v21 = &v74[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v22 = type metadata accessor for ListEntity(0);
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22 - 8);
  v25 = &v74[-((v24 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (![a1 isGroup])
  {

    v36 = objc_opt_self();
    v37 = sub_261CFFA54();
    [v36 internalErrorWithDebugDescription_];

    swift_willThrow();
    return;
  }

  v77 = v11;
  v26 = MEMORY[0x277D84F90];
  v79 = v8;
  v80 = a3;
  v78 = v6;
  v81 = v21;
  if (a2)
  {
    v92 = a2;
    if (a2 >> 62)
    {
      v27 = sub_261D00274();
      if (v27)
      {
        goto LABEL_5;
      }
    }

    else
    {
      v27 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v27)
      {
LABEL_5:
        v93 = v26;
        sub_261B3A0E8(0, v27 & ~(v27 >> 63), 0);
        v91 = v27;
        if (v27 < 0)
        {
          __break(1u);
          return;
        }

        v28 = 0;
        v29 = v92;
        v26 = v93;
        v30 = v92 & 0xC000000000000001;
        do
        {
          if (v30)
          {
            v31 = MEMORY[0x26671CA10](v28, v29);
          }

          else
          {
            v31 = *(v29 + 8 * v28 + 32);
          }

          v32 = v31;
          v33 = a1;
          sub_261B797FC(v32, a1, v25);
          v93 = v26;
          v35 = *(v26 + 16);
          v34 = *(v26 + 24);
          if (v35 >= v34 >> 1)
          {
            sub_261B3A0E8((v34 > 1), v35 + 1, 1);
            v26 = v93;
          }

          ++v28;
          *(v26 + 16) = v35 + 1;
          sub_261B01E2C(v25, v26 + ((*(v23 + 80) + 32) & ~*(v23 + 80)) + *(v23 + 72) * v35);
          v29 = v92;
        }

        while (v91 != v28);
      }
    }

    goto LABEL_18;
  }

  v26 = 0;
LABEL_18:
  v76 = a1;
  v38 = [a1 objectID];
  v39 = [v38 entityName];
  v40 = sub_261CFFA74();
  v42 = v41;

  v43 = [v38 uuid];
  v45 = v81;
  v44 = v82;
  sub_261CFD834();

  v46 = *(v44 + 24);
  v47 = type metadata accessor for RecurrentInstanceSpecifier(0);
  (*(*(v47 - 8) + 56))(v45 + v46, 1, 1, v47);
  *v45 = v40;
  v45[1] = v42;
  v48 = [a1 name];
  v91 = sub_261CFFA74();
  v82 = v49;

  sub_261CFDE54();
  v50 = sub_261CFDDA4();
  v51 = [a1 remObjectID];
  v53 = v83;
  v52 = v84;
  *v83 = v51;
  v54 = v85;
  (*(v52 + 104))(v53, *MEMORY[0x277D45C90], v85);
  v95 = sub_261CFDDC4();

  (*(v52 + 8))(v53, v54);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDB1C8, &unk_261D10E30);
  sub_261B86228(&qword_280D227A0, type metadata accessor for ListEntity, &protocol conformance descriptor for ListEntity);
  v85 = sub_261CFCA64();
  v55 = v80;
  *v80 = v85;
  v56 = type metadata accessor for GroupEntity(0);
  v57 = *(v56 + 24);
  v58 = v56;
  v92 = v56;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDD8C0, &qword_261D01468);
  v59 = sub_261CFCB24();
  *(v55 + v57) = v59;
  v83 = *(v58 + 28);
  v84 = v59;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDB1D0, &unk_261D10E40);
  sub_261CFF9B4();
  sub_261CFD874();
  v75 = *MEMORY[0x277CC9110];
  v60 = v90;
  v89 = *(v89 + 104);
  v61 = v77;
  (v89)(v77);
  v62 = v86;
  sub_261CFD6B4();
  v63 = MEMORY[0x2667199E0](v62, &type metadata for UpdateGroupNameAppIntent);
  *(v83 + v55) = v63;
  v83 = *(v92 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDB1D8, &unk_261D05530);
  sub_261CFF9B4();
  sub_261CFD874();
  (v89)(v61, v75, v60);
  sub_261CFD6B4();
  v64 = MEMORY[0x2667199F0](v62, &type metadata for UpdateListShowsCompletedAppIntent);
  *(v83 + v55) = v64;
  v65 = v92;
  v90 = *(v92 + 36);
  *(v55 + v90) = 0;
  v66 = v55 + v65[5];
  v67 = v55;
  v68 = v81;
  sub_261B7C0F0(v81, v66);
  type metadata accessor for AnyListEntityLazyImage(0);
  v69 = swift_allocObject();
  v70 = MEMORY[0x277D84F90];
  v93 = MEMORY[0x277D84F90];
  sub_261B86228(&qword_280D22D90, MEMORY[0x277D44D10], MEMORY[0x277D44D18]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDD9E0, &qword_261D014D0);
  sub_261B7C19C();
  sub_261D001D4();
  sub_261CFECB4();
  swift_allocObject();
  *(v69 + 128) = sub_261CFECA4();
  v71 = OBJC_IVAR____TtC19RemindersAppIntents22AnyListEntityLazyImage_cachedDisplayRepresentationImage;
  v72 = sub_261CFD074();
  (*(*(v72 - 8) + 56))(v69 + v71, 1, 1, v72);
  *(v69 + 105) = 0u;
  *(v69 + 80) = 0u;
  *(v69 + 96) = 0u;
  *(v69 + 48) = 0u;
  *(v69 + 64) = 0u;
  *(v69 + 16) = 0u;
  *(v69 + 32) = 0u;
  *(v69 + 121) = 3;
  *(v67 + *(v92 + 40)) = v69;
  LOBYTE(v93) = v95 & 1;
  sub_261CFD2E4();
  *(v67 + v90) = v26;
  v93 = v91;
  v94 = v82;
  sub_261CFD104();
  sub_261CFCA14();
  if (v26)
  {
    v73 = v26;
  }

  else
  {
    v73 = v70;
  }

  v93 = v73;
  sub_261CFCA14();

  sub_261B7C200(v68);
}

uint64_t sub_261B86228(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

Swift::Void __swiftcall AppIntent.postAnalytics(category:)(RemindersAppIntents::RemindersAppIntentCategory category)
{
  v2 = v1;
  v104 = category;
  v3 = sub_261CFED34();
  v97 = *(v3 - 8);
  v98 = v3;
  MEMORY[0x28223BE20](v3);
  v96 = (&v83 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = sub_261CFCF24();
  v87 = *(v5 - 8);
  v88 = v5;
  MEMORY[0x28223BE20](v5);
  v83 = &v83 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA410, &qword_261D02F10);
  MEMORY[0x28223BE20](v7 - 8);
  v86 = &v83 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA418, &qword_261D02F18);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v94 = &v83 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v93 = &v83 - v12;
  v13 = sub_261CFCF84();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v85 = &v83 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA420, &qword_261D02F20);
  v17 = v16 - 8;
  MEMORY[0x28223BE20](v16);
  v19 = &v83 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA428, &qword_261D02F28);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v91 = &v83 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v21);
  v100 = &v83 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v27 = &v83 - v26;
  MEMORY[0x28223BE20](v25);
  v29 = &v83 - v28;
  v30 = sub_261CFCFA4();
  v31 = *(v30 - 8);
  v32 = MEMORY[0x28223BE20](v30);
  v92 = &v83 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = MEMORY[0x28223BE20](v32);
  v90 = &v83 - v35;
  v36 = MEMORY[0x28223BE20](v34);
  v89 = &v83 - v37;
  MEMORY[0x28223BE20](v36);
  v39 = &v83 - v38;
  v95 = *v104;
  v104 = v2;
  sub_261CFC754();
  sub_261CFCF94();
  v40 = *(v31 + 8);
  v102 = v31 + 8;
  v103 = v30;
  v101 = v40;
  v40(v39, v30);
  (*(v14 + 104))(v27, *MEMORY[0x277CBA158], v13);
  (*(v14 + 56))(v27, 0, 1, v13);
  v41 = *(v17 + 56);
  sub_261B87348(v29, v19);
  sub_261B87348(v27, &v19[v41]);
  v99 = v14;
  v42 = *(v14 + 48);
  if (v42(v19, 1, v13) == 1)
  {
    sub_261AE6A40(v27, &qword_27FEDA428, &qword_261D02F28);
    sub_261AE6A40(v29, &qword_27FEDA428, &qword_261D02F28);
    if (v42(&v19[v41], 1, v13) == 1)
    {
      sub_261AE6A40(v19, &qword_27FEDA428, &qword_261D02F28);
      return;
    }
  }

  else
  {
    sub_261B87348(v19, v100);
    if (v42(&v19[v41], 1, v13) != 1)
    {
      v67 = v99;
      v68 = v85;
      (*(v99 + 32))(v85, &v19[v41], v13);
      sub_261B87A94();
      LODWORD(v84) = sub_261CFF974();
      v69 = *(v67 + 8);
      v69(v68, v13);
      sub_261AE6A40(v27, &qword_27FEDA428, &qword_261D02F28);
      sub_261AE6A40(v29, &qword_27FEDA428, &qword_261D02F28);
      v69(v100, v13);
      sub_261AE6A40(v19, &qword_27FEDA428, &qword_261D02F28);
      if (v84)
      {
        return;
      }

      goto LABEL_7;
    }

    sub_261AE6A40(v27, &qword_27FEDA428, &qword_261D02F28);
    sub_261AE6A40(v29, &qword_27FEDA428, &qword_261D02F28);
    (*(v99 + 8))(v100, v13);
  }

  sub_261AE6A40(v19, &qword_27FEDA420, &qword_261D02F20);
LABEL_7:
  v85 = sub_261D00764();
  v100 = v43;
  v44 = v89;
  sub_261CFC754();
  v45 = v91;
  sub_261CFCF94();
  v101(v44, v103);
  if (v42(v45, 1, v13) == 1)
  {
    sub_261AE6A40(v45, &qword_27FEDA428, &qword_261D02F28);
    v89 = 0xEE00656372756F73;
    v84 = 0x2D6E776F6E6B6E75;
  }

  else
  {
    v84 = sub_261B876C4();
    v89 = v46;
    (*(v99 + 8))(v45, v13);
  }

  v48 = v93;
  v47 = v94;
  v49 = v90;
  sub_261CFC754();
  sub_261CFCF64();
  v101(v49, v103);
  v50 = sub_261CFCF54();
  v51 = *(v50 - 8);
  v52 = *(v51 + 48);
  v53 = v52(v48, 1, v50);
  v54 = v100;
  if (v53 == 1)
  {
    sub_261AE6A40(v48, &qword_27FEDA418, &qword_261D02F18);
    v99 = 0;
    v94 = 0;
  }

  else
  {
    v99 = sub_261CFCF44();
    v94 = v55;
    (*(v51 + 8))(v48, v50);
  }

  v56 = v92;
  sub_261CFC754();
  sub_261CFCF64();
  v101(v56, v103);
  v57 = v52(v47, 1, v50);
  v58 = v84;
  if (v57 == 1)
  {
    sub_261AE6A40(v47, &qword_27FEDA418, &qword_261D02F18);
    v59 = 0;
    v60 = 0;
    v61 = v85;
    v62 = v89;
  }

  else
  {
    v63 = v86;
    sub_261CFCF34();
    (*(v51 + 8))(v47, v50);
    v65 = v87;
    v64 = v88;
    v66 = (*(v87 + 48))(v63, 1, v88);
    v61 = v85;
    v62 = v89;
    if (v66 == 1)
    {
      sub_261AE6A40(v63, &qword_27FEDA410, &qword_261D02F10);
      v59 = 0;
      v60 = 0;
    }

    else
    {
      v70 = v83;
      (*(v65 + 16))(v83, v63, v64);
      v71 = (*(v65 + 88))(v70, v64);
      if (v71 == *MEMORY[0x277CBA0B8])
      {
        v60 = 0xEE0064726177726FLL;
        v59 = 0x4679616C70736964;
      }

      else if (v71 == *MEMORY[0x277CBA0A8])
      {
        v60 = 0xEB00000000796C6ELL;
        v59 = 0x4F79616C70736964;
      }

      else if (v71 == *MEMORY[0x277CBA0C0])
      {
        v60 = 0xE900000000000079;
        v59 = 0x6C6E4F6563696F76;
      }

      else if (v71 == *MEMORY[0x277CBA0B0])
      {
        v60 = 0xEC00000064726177;
        v59 = 0x726F466563696F76;
      }

      else
      {
        (*(v65 + 8))(v70, v64);
        v60 = 0xE700000000000000;
        v59 = 0x6E776F6E6B6E75;
      }

      (*(v65 + 8))(v63, v64);
    }
  }

  if (qword_27FED9948 != -1)
  {
    swift_once();
  }

  v72 = sub_261CFF7A4();
  __swift_project_value_buffer(v72, qword_27FEDB1E0);
  sub_261CFD104();
  sub_261CFD104();
  v73 = sub_261CFF784();
  v74 = sub_261CFFE84();

  if (os_log_type_enabled(v73, v74))
  {
    v75 = swift_slowAlloc();
    v76 = swift_slowAlloc();
    v105[0] = v76;
    *v75 = 136315394;
    *(v75 + 4) = sub_261B879C8(v61, v54, v105);
    *(v75 + 12) = 2080;
    *(v75 + 14) = sub_261B879C8(v58, v62, v105);
    _os_log_impl(&dword_261AE2000, v73, v74, "Posting Analytics: %s.%s", v75, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26671D560](v76, -1, -1);
    MEMORY[0x26671D560](v75, -1, -1);
  }

  sub_261CFEDA4();
  sub_261CFED94();
  v77 = 0x8000000261D14240;
  v78 = 0x704163696C627570;
  if (v95)
  {
    v78 = 0xD000000000000011;
  }

  else
  {
    v77 = 0xEF746E65746E4970;
  }

  v80 = v96;
  v79 = v97;
  *v96 = v61;
  v80[1] = v54;
  v80[2] = v58;
  v80[3] = v62;
  v80[4] = v78;
  v80[5] = v77;
  v81 = v98;
  v82 = v94;
  v80[6] = v99;
  v80[7] = v82;
  v80[8] = v59;
  v80[9] = v60;
  (*(v79 + 104))(v80, *MEMORY[0x277D44E90], v81);
  sub_261CFED84();

  (*(v79 + 8))(v80, v81);
}

Swift::Void __swiftcall EntityQuery.postAnalytics(queryName:category:)(Swift::String queryName, RemindersAppIntents::RemindersAppIntentCategory category)
{
  object = queryName._object;
  countAndFlagsBits = queryName._countAndFlagsBits;
  v4 = sub_261D00764();
  v6 = v5;
  if (qword_27FED9948 != -1)
  {
    swift_once();
  }

  v7 = sub_261CFF7A4();
  __swift_project_value_buffer(v7, qword_27FEDB1E0);
  sub_261CFD104();
  sub_261CFD104();
  oslog = sub_261CFF784();
  v8 = sub_261CFFE84();

  if (os_log_type_enabled(oslog, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v13 = v10;
    *v9 = 136315394;
    v11 = sub_261B879C8(v4, v6, &v13);

    *(v9 + 4) = v11;
    *(v9 + 12) = 2080;
    *(v9 + 14) = sub_261B879C8(countAndFlagsBits, object, &v13);
    _os_log_impl(&dword_261AE2000, oslog, v8, "Logging Analytics for query: %s.%s", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26671D560](v10, -1, -1);
    MEMORY[0x26671D560](v9, -1, -1);
  }

  else
  {
  }
}

uint64_t sub_261B871D0()
{
  v0 = sub_261CFF7A4();
  __swift_allocate_value_buffer(v0, qword_27FEDB1E0);
  v1 = __swift_project_value_buffer(v0, qword_27FEDB1E0);
  if (qword_280D22888 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D27010);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

RemindersAppIntents::RemindersAppIntentCategory_optional __swiftcall RemindersAppIntentCategory.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_261D00554();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t RemindersAppIntentCategory.rawValue.getter()
{
  if (*v0)
  {
    return 0xD000000000000011;
  }

  else
  {
    return 0x704163696C627570;
  }
}

uint64_t sub_261B87348(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA428, &qword_261D02F28);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_261B873B8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0xD000000000000011;
  }

  else
  {
    v3 = 0x704163696C627570;
  }

  if (v2)
  {
    v4 = 0xEF746E65746E4970;
  }

  else
  {
    v4 = 0x8000000261D14240;
  }

  if (*a2)
  {
    v5 = 0xD000000000000011;
  }

  else
  {
    v5 = 0x704163696C627570;
  }

  if (*a2)
  {
    v6 = 0x8000000261D14240;
  }

  else
  {
    v6 = 0xEF746E65746E4970;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_261D00614();
  }

  return v8 & 1;
}

uint64_t sub_261B87470()
{
  sub_261D006C4();
  sub_261CFFB14();

  return sub_261D006F4();
}

uint64_t sub_261B87504(uint64_t a1)
{
  sub_261CFFB14();
}

uint64_t sub_261B87584(uint64_t a1)
{
  sub_261D006C4();
  sub_261CFFB14();

  return sub_261D006F4();
}

uint64_t sub_261B87614@<X0>(char *a2@<X8>)
{
  v3 = sub_261D00554();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void sub_261B87674(unint64_t *a1@<X8>)
{
  v2 = 0x8000000261D14240;
  v3 = 0x704163696C627570;
  if (*v1)
  {
    v3 = 0xD000000000000011;
  }

  else
  {
    v2 = 0xEF746E65746E4970;
  }

  *a1 = v3;
  a1[1] = v2;
}

uint64_t sub_261B876C4()
{
  v1 = sub_261CFCF84();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v4, v0, v1);
  v5 = (*(v2 + 88))(v4, v1);
  if (v5 == *MEMORY[0x277CBA140])
  {
    return 7368801;
  }

  if (v5 == *MEMORY[0x277CBA138])
  {
    return 4803651;
  }

  if (v5 == *MEMORY[0x277CBA148])
  {
    return 1769105779;
  }

  if (v5 == *MEMORY[0x277CBA168])
  {
    return 0x74756374726F6873;
  }

  if (v5 == *MEMORY[0x277CBA158])
  {
    return 0x676E6974736574;
  }

  if (v5 == *MEMORY[0x277CBA128])
  {
    return 0x75426E6F69746361;
  }

  if (v5 == *MEMORY[0x277CBA170])
  {
    return 0x6867696C746F7073;
  }

  if (v5 == *MEMORY[0x277CBA130])
  {
    return 0x436C6F72746E6F63;
  }

  if (v5 == *MEMORY[0x277CBA150])
  {
    return 0x746567646977;
  }

  if (v5 == *MEMORY[0x277CBA160])
  {
    return 0x6E61747369737361;
  }

  v9[0] = sub_261CFCF74();
  v7 = sub_261D005F4();
  v9[0] = 0x2D6E776F6E6B6E75;
  v9[1] = 0xE800000000000000;
  MEMORY[0x26671C210](v7);

  v8 = v9[0];
  (*(v2 + 8))(v4, v1);
  return v8;
}

unint64_t sub_261B879C8(uint64_t a1, unint64_t a2, uint64_t *a3)
{
  sub_261CFD104();
  v6 = sub_261B87B54(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_261B87C60(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_261B87A94()
{
  result = qword_27FEDA438;
  if (!qword_27FEDA438)
  {
    sub_261CFCF84();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDA438);
  }

  return result;
}

unint64_t sub_261B87AF0()
{
  result = qword_27FEDB1F8;
  if (!qword_27FEDB1F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDB1F8);
  }

  return result;
}

unint64_t sub_261B87B54(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_261B87CBC(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_261D00364();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_261B87C60(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

void *sub_261B87CBC(uint64_t a1, unint64_t a2)
{
  v3 = sub_261B87D08(a1, a2);
  sub_261B87E38(&unk_287440910);
  return v3;
}

void *sub_261B87D08(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = sub_261BD0BA4(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_261D00364();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_261CFFB64();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_261BD0BA4(v10, 0);
        result = sub_261D00324();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_261B87E38(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_261B87F24(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

char *sub_261B87F24(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDB200, &unk_261D085F0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t sub_261B88018(uint64_t a1)
{
  v1 = a1;
  v20 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = sub_261D00274();
    result = MEMORY[0x277D84F90];
    if (!v2)
    {
      return result;
    }

    v25 = MEMORY[0x277D84F90];
    sub_261D003A4();
    result = sub_261D00414();
    v22 = result;
    v23 = v4;
    v24 = 1;
    if ((v2 & 0x8000000000000000) == 0)
    {
      goto LABEL_7;
    }

    __break(1u);
  }

  v2 = *(v1 + 16);
  result = MEMORY[0x277D84F90];
  if (!v2)
  {
    return result;
  }

  v25 = MEMORY[0x277D84F90];
  sub_261D003A4();
  result = sub_261D001E4();
  v5 = *(v1 + 36);
  v22 = result;
  v23 = v5;
  v24 = 0;
LABEL_7:
  v6 = 0;
  v19 = v2;
  while (v6 < v2)
  {
    v13 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      goto LABEL_20;
    }

    v14 = v22;
    v15 = v23;
    v16 = v24;
    sub_261CB66A8(v22, v23, v24, v1);
    v17 = v1;
    sub_261D00374();
    sub_261D003B4();
    sub_261D003C4();
    result = sub_261D00384();
    if (v20)
    {
      if (!v16)
      {
        goto LABEL_21;
      }

      if (sub_261D00444())
      {
        swift_isUniquelyReferenced_nonNull_native();
      }

      v2 = v19;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDB250, &qword_261D05748);
      v18 = sub_261CFF924();
      sub_261D004D4();
      result = v18(v21, 0);
    }

    else
    {
      sub_261CB6544(v14, v15, v16, v1);
      v8 = v7;
      v10 = v9;
      v12 = v11;
      result = sub_261B91FE4(v14, v15, v16);
      v22 = v8;
      v23 = v10;
      v24 = v12 & 1;
      v1 = v17;
      v2 = v19;
    }

    ++v6;
    if (v13 == v2)
    {
      sub_261B91FE4(v22, v23, v24);
      return v25;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_261B88278(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA108, &unk_261D020C0);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v49 = v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v58 = v44 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA598, &qword_261D05740);
  v47 = *(v7 - 8);
  v48 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = (v44 - v8);
  v50 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v10 = sub_261D00274();
  }

  else
  {
    v10 = *(a1 + 16);
  }

  v11 = MEMORY[0x277D84F90];
  if (!v10)
  {
    return v11;
  }

  v63 = MEMORY[0x277D84F90];
  sub_261B39DFC(0, v10 & ~(v10 >> 63), 0);
  v11 = v63;
  if (v50)
  {
    result = sub_261D00414();
  }

  else
  {
    result = sub_261D001E4();
    v13 = *(a1 + 36);
  }

  v60 = result;
  v61 = v13;
  v62 = v50 != 0;
  if ((v10 & 0x8000000000000000) == 0)
  {
    v44[0] = v1;
    v14 = 0;
    v15 = a1 & 0xFFFFFFFFFFFFFF8;
    if (a1 < 0)
    {
      v15 = a1;
    }

    v44[1] = v15;
    v16 = &unk_279AFB000;
    v51 = v9;
    v45 = v10;
    v46 = a1;
    while (v14 < v10)
    {
      if (__OFADD__(v14, 1))
      {
        goto LABEL_29;
      }

      v57 = v11;
      v52 = v60;
      v53 = v61;
      v54 = v14 + 1;
      v56 = v62;
      sub_261CB66A8(v60, v61, v62, a1);
      v29 = v28;
      *v9 = [v28 objectID];
      v30 = type metadata accessor for RecurrentInstanceSpecifier(0);
      (*(*(v30 - 8) + 56))(v58, 1, 1, v30);
      v55 = [v29 v16[84]];
      v31 = [v29 list];
      v32 = [v31 v16[84]];

      v33 = sub_261CFFDF4();
      v34 = [v29 parentReminder];
      if (v34)
      {
        v35 = v34;
        v36 = [v34 v16[84]];
      }

      else
      {
        v36 = 0;
      }

      v37 = v49;
      v38 = *(v48 + 48);
      v39 = v58;
      sub_261AE7A78(v58, v49);
      v9 = v51;
      sub_261C7EDC4(v55, v32, v33, v36, 0, v37, (v51 + v38));
      sub_261AE6A40(v39, &qword_27FEDA108, &unk_261D020C0);

      v11 = v57;
      v63 = v57;
      v41 = *(v57 + 16);
      v40 = *(v57 + 24);
      if (v41 >= v40 >> 1)
      {
        sub_261B39DFC((v40 > 1), v41 + 1, 1);
        v11 = v63;
      }

      *(v11 + 16) = v41 + 1;
      result = sub_261B91F74(v9, v11 + ((*(v47 + 80) + 32) & ~*(v47 + 80)) + *(v47 + 72) * v41);
      a1 = v46;
      if (v50)
      {
        if (!v56)
        {
          goto LABEL_31;
        }

        v42 = sub_261D00444();
        v10 = v45;
        if (v42)
        {
          swift_isUniquelyReferenced_nonNull_native();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDB250, &qword_261D05748);
        v43 = sub_261CFF924();
        sub_261D004D4();
        result = v43(v59, 0);
      }

      else
      {
        v18 = v52;
        v17 = v53;
        v19 = v46;
        v20 = v56;
        sub_261CB6544(v52, v53, v56, v46);
        v22 = v21;
        v24 = v23;
        v26 = v25;
        v27 = v20;
        a1 = v19;
        result = sub_261B91FE4(v18, v17, v27);
        v60 = v22;
        v61 = v24;
        v9 = v51;
        v62 = v26 & 1;
        v10 = v45;
      }

      v16 = &unk_279AFB000;
      ++v14;
      if (v54 == v10)
      {
        sub_261B91FE4(v60, v61, v62);
        return v11;
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
  }

  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

void *sub_261B88780(uint64_t a1, uint64_t *a2)
{
  v32 = a2;
  v31 = type metadata accessor for ReminderEntity(0);
  v3 = MEMORY[0x28223BE20](v31);
  v30 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v3);
  v29 = &v26 - v6;
  MEMORY[0x28223BE20](v5);
  v28 = &v26 - v8;
  v9 = *(a1 + 16);
  if (!v9)
  {
    return MEMORY[0x277D84F90];
  }

  v10 = *(v7 + 72);
  v27 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v11 = a1 + v27;
  type metadata accessor for AppEntityID(0);
  v12 = MEMORY[0x277D84F90];
  do
  {
    v13 = objc_allocWithZone(MEMORY[0x277D44700]);
    v14 = sub_261CFD814();
    v15 = sub_261CFFA54();
    v16 = [v13 initWithUUID:v14 entityName:v15];

    v17 = *v32;
    if (*(*v32 + 16) && (v18 = sub_261B37CA4(v16), (v19 & 1) != 0))
    {
      v20 = *(v17 + 56) + v18 * v10;
      v21 = v29;
      sub_261B4C910(v20, v29);

      v22 = v28;
      sub_261B837B0(v21, v28);
      sub_261B837B0(v22, v30);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v12 = sub_261B41560(0, v12[2] + 1, 1, v12);
      }

      v24 = v12[2];
      v23 = v12[3];
      if (v24 >= v23 >> 1)
      {
        v12 = sub_261B41560((v23 > 1), v24 + 1, 1, v12);
      }

      v12[2] = v24 + 1;
      sub_261B837B0(v30, v12 + v27 + v24 * v10);
    }

    else
    {
    }

    v11 += v10;
    --v9;
  }

  while (v9);
  return v12;
}

uint64_t sub_261B88A1C()
{
  v0 = sub_261CFF7A4();
  __swift_allocate_value_buffer(v0, qword_27FEDB208);
  v1 = __swift_project_value_buffer(v0, qword_27FEDB208);
  if (qword_280D22888 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D27010);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_261B88B98()
{
  v1 = *(v0 + 184);
  v3 = *(v0 + 128);
  v2 = *(v0 + 136);
  *(v0 + 16) = *(v0 + 112);
  *(v0 + 32) = v3;
  *(v0 + 40) = v1;
  *(v0 + 48) = v2;
  v4 = sub_261CFE5B4();
  v5 = sub_261CFE494();
  v6 = MEMORY[0x277D45E18];
  *(v0 + 80) = v4;
  *(v0 + 88) = v6;
  *(v0 + 56) = v5;
  v7 = swift_task_alloc();
  *(v0 + 168) = v7;
  *v7 = v0;
  v7[1] = sub_261B88C80;
  v8 = *(v0 + 96);

  return sub_261B88E6C(v8, v0 + 16, v0 + 56);
}

uint64_t sub_261B88C80()
{
  v2 = *v1;
  *(*v1 + 176) = v0;

  if (v0)
  {
    v3 = v2[19];
    v4 = v2[20];
    v5 = sub_261B88E00;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0(v2 + 7);
    v3 = v2[19];
    v4 = v2[20];
    v5 = sub_261B88D9C;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_261B88D9C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_261B88E00()
{

  __swift_destroy_boxed_opaque_existential_0((v0 + 56));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_261B88E6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 112) = a3;
  *(v4 + 120) = v3;
  *(v4 + 104) = a1;
  v6 = sub_261CFC9D4();
  *(v4 + 128) = v6;
  *(v4 + 136) = *(v6 - 8);
  *(v4 + 144) = swift_task_alloc();
  *(v4 + 152) = *(type metadata accessor for ReminderEntity(0) - 8);
  *(v4 + 160) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDB238, &unk_261D056F0);
  *(v4 + 168) = swift_task_alloc();
  v7 = sub_261CFD754();
  *(v4 + 176) = v7;
  *(v4 + 184) = *(v7 - 8);
  *(v4 + 192) = swift_task_alloc();
  *(v4 + 200) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDE0C0, &unk_261D02500);
  *(v4 + 208) = swift_task_alloc();
  *(v4 + 216) = *a2;
  *(v4 + 232) = *(a2 + 16);
  *(v4 + 332) = *(a2 + 24);

  return MEMORY[0x2822009F8](sub_261B8907C, 0, 0);
}

uint64_t sub_261B8907C()
{
  v1 = *(v0 + 120);
  sub_261CFCBB4();
  *(v0 + 240) = *(v0 + 88);
  sub_261CFCBB4();
  *(v0 + 333) = *(v0 + 328);
  sub_261CFCBB4();
  v2 = *(v1 + 16);
  v3 = swift_task_alloc();
  *(v0 + 248) = v3;
  *v3 = v0;
  v3[1] = sub_261B89178;
  v4 = *(v0 + 208);

  return sub_261B49814(v4, v2);
}

uint64_t sub_261B89178(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *(*v3 + 208);
  v4[32] = a1;
  v4[33] = a2;
  v4[34] = v2;

  sub_261AE6A40(v5, &unk_27FEDE0C0, &unk_261D02500);
  if (v2)
  {

    v6 = sub_261B89484;
  }

  else
  {
    v6 = sub_261B892D0;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_261B892D0()
{
  v1 = *(v0 + 264);
  if ((~v1 & 0xF000000000000007) == 0)
  {
    *(v0 + 329) = *(v0 + 333);
    v2 = swift_task_alloc();
    *(v0 + 312) = v2;
    *v2 = v0;
    v2[1] = sub_261B89ED0;
    v3 = *(v0 + 112);
    v4 = (v0 + 329);
    v5 = *(v0 + 240);
    v6 = 0;
    v7 = 0;
LABEL_5:

    return sub_261B8A4A8(v5, v6, v4, v7, v3);
  }

  v8 = *(v0 + 256);
  v9 = *(v0 + 333);
  if ((v1 & 0x8000000000000000) == 0)
  {
    *(v0 + 331) = v9;
    sub_261B49FA0(v8, v1);
    v10 = swift_task_alloc();
    *(v0 + 280) = v10;
    *v10 = v0;
    v10[1] = sub_261B8952C;
    v6 = *(v0 + 256);
    v3 = *(v0 + 112);
    v7 = *(v0 + 332);
    v4 = (v0 + 331);
    v5 = *(v0 + 240);
    goto LABEL_5;
  }

  *(v0 + 330) = v9;
  v12 = v8;
  sub_261B91F60(v8, v1);
  v13 = swift_task_alloc();
  *(v0 + 296) = v13;
  *v13 = v0;
  v13[1] = sub_261B899A0;
  v14 = *(v0 + 240);
  v15 = *(v0 + 112);

  return sub_261B90474(v14, v12, (v0 + 330), v15);
}

uint64_t sub_261B89484()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_261B8952C(uint64_t a1)
{
  v3 = *v2;
  v3[2] = v2;
  v3[3] = a1;
  v3[4] = v1;
  v3[36] = v1;

  if (v1)
  {

    v4 = sub_261B8A33C;
  }

  else
  {
    v4 = sub_261B89650;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_261B89650()
{
  sub_261B4AC84(*(v0 + 256), *(v0 + 264));
  v30 = *(v0 + 24);
  v1 = *(v0 + 240);
  if (*(v1 + 16))
  {
    v2 = *(v0 + 200);
    v3 = *(v0 + 176);
    v4 = *(v0 + 184);
    v5 = *(v0 + 160);
    v6 = *(v0 + 168);
    v7 = *(*(v0 + 152) + 80);
    sub_261B4C910(v1 + ((v7 + 32) & ~v7), v5);

    sub_261BBF818(0, v6);
    sub_261B4C974(v5);
    (*(v4 + 56))(v6, 0, 1, v3);
    (*(v4 + 32))(v2, v6, v3);
    v8 = *(v4 + 16);
  }

  else
  {
    v9 = *(v0 + 176);
    v10 = *(v0 + 184);
    v11 = *(v0 + 168);

    (*(v10 + 56))(v11, 1, 1, v9);
    if (qword_27FED9A10 != -1)
    {
      swift_once();
    }

    v12 = *(v0 + 200);
    v13 = *(v0 + 176);
    v14 = *(v0 + 184);
    v15 = *(v0 + 168);
    v16 = __swift_project_value_buffer(v13, qword_27FEDB8A8);
    v17 = v12;
    v18 = *(v14 + 16);
    v18(v17, v16, v13);
    if ((*(v14 + 48))(v15, 1, v13) != 1)
    {
      sub_261AE6A40(*(v0 + 168), &qword_27FEDB238, &unk_261D056F0);
    }

    v8 = v18;
  }

  v19 = *(v0 + 200);
  v29 = *(v0 + 264);
  v21 = *(v0 + 184);
  v20 = *(v0 + 192);
  v27 = *(v0 + 256);
  v28 = *(v0 + 176);
  v23 = *(v0 + 136);
  v22 = *(v0 + 144);
  v24 = *(v0 + 128);
  *(v0 + 96) = v30;
  v8(v20, v19);
  sub_261CFC9E4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDE0D0, qword_261D11550);
  sub_261B834D8();
  sub_261B8E674(&qword_27FEDA3C0, MEMORY[0x277CB9DE0], MEMORY[0x277CB9DD8]);
  sub_261CFC974();
  sub_261B4AC84(v27, v29);
  (*(v23 + 8))(v22, v24);

  (*(v21 + 8))(v19, v28);

  v25 = *(v0 + 8);

  return v25();
}

uint64_t sub_261B899A0(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 40) = v2;
  *(v3 + 48) = a1;
  *(v3 + 56) = v1;
  *(v3 + 304) = v1;

  if (v1)
  {
    sub_261B4AC84(*(v3 + 256), *(v3 + 264));

    v4 = sub_261B89E20;
  }

  else
  {
    v4 = sub_261B89AD0;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_261B89AD0()
{
  sub_261B4AC84(*(v0 + 256), *(v0 + 264));
  v30 = *(v0 + 48);
  v1 = *(v0 + 240);
  if (*(v1 + 16))
  {
    v2 = *(v0 + 200);
    v3 = *(v0 + 176);
    v4 = *(v0 + 184);
    v5 = *(v0 + 160);
    v6 = *(v0 + 168);
    v7 = *(*(v0 + 152) + 80);
    sub_261B4C910(v1 + ((v7 + 32) & ~v7), v5);

    sub_261BBF818(0, v6);
    sub_261B4C974(v5);
    (*(v4 + 56))(v6, 0, 1, v3);
    (*(v4 + 32))(v2, v6, v3);
    v8 = *(v4 + 16);
  }

  else
  {
    v9 = *(v0 + 176);
    v10 = *(v0 + 184);
    v11 = *(v0 + 168);

    (*(v10 + 56))(v11, 1, 1, v9);
    if (qword_27FED9A10 != -1)
    {
      swift_once();
    }

    v12 = *(v0 + 200);
    v13 = *(v0 + 176);
    v14 = *(v0 + 184);
    v15 = *(v0 + 168);
    v16 = __swift_project_value_buffer(v13, qword_27FEDB8A8);
    v17 = v12;
    v18 = *(v14 + 16);
    v18(v17, v16, v13);
    if ((*(v14 + 48))(v15, 1, v13) != 1)
    {
      sub_261AE6A40(*(v0 + 168), &qword_27FEDB238, &unk_261D056F0);
    }

    v8 = v18;
  }

  v19 = *(v0 + 200);
  v29 = *(v0 + 264);
  v21 = *(v0 + 184);
  v20 = *(v0 + 192);
  v27 = *(v0 + 256);
  v28 = *(v0 + 176);
  v23 = *(v0 + 136);
  v22 = *(v0 + 144);
  v24 = *(v0 + 128);
  *(v0 + 96) = v30;
  v8(v20, v19);
  sub_261CFC9E4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDE0D0, qword_261D11550);
  sub_261B834D8();
  sub_261B8E674(&qword_27FEDA3C0, MEMORY[0x277CB9DE0], MEMORY[0x277CB9DD8]);
  sub_261CFC974();
  sub_261B4AC84(v27, v29);
  (*(v23 + 8))(v22, v24);

  (*(v21 + 8))(v19, v28);

  v25 = *(v0 + 8);

  return v25();
}

uint64_t sub_261B89E20()
{
  sub_261B4AC84(*(v0 + 256), *(v0 + 264));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_261B89ED0(uint64_t a1)
{
  v3 = *v2;
  v3[8] = v2;
  v3[9] = a1;
  v3[10] = v1;
  v3[40] = v1;

  if (v1)
  {

    v4 = sub_261B8A400;
  }

  else
  {
    v4 = sub_261B89FF4;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_261B89FF4()
{
  v30 = v0[9];
  v1 = v0[30];
  if (*(v1 + 16))
  {
    v2 = v0[25];
    v3 = v0[22];
    v4 = v0[23];
    v5 = v0[20];
    v6 = v0[21];
    v7 = *(v0[19] + 80);
    sub_261B4C910(v1 + ((v7 + 32) & ~v7), v5);

    sub_261BBF818(0, v6);
    sub_261B4C974(v5);
    (*(v4 + 56))(v6, 0, 1, v3);
    (*(v4 + 32))(v2, v6, v3);
    v8 = *(v4 + 16);
  }

  else
  {
    v9 = v0[22];
    v10 = v0[23];
    v11 = v0[21];

    (*(v10 + 56))(v11, 1, 1, v9);
    if (qword_27FED9A10 != -1)
    {
      swift_once();
    }

    v12 = v0[25];
    v13 = v0[22];
    v14 = v0[23];
    v15 = v0[21];
    v16 = __swift_project_value_buffer(v13, qword_27FEDB8A8);
    v17 = v12;
    v18 = *(v14 + 16);
    v18(v17, v16, v13);
    if ((*(v14 + 48))(v15, 1, v13) != 1)
    {
      sub_261AE6A40(v0[21], &qword_27FEDB238, &unk_261D056F0);
    }

    v8 = v18;
  }

  v19 = v0[25];
  v29 = v0[33];
  v21 = v0[23];
  v20 = v0[24];
  v27 = v0[32];
  v28 = v0[22];
  v23 = v0[17];
  v22 = v0[18];
  v24 = v0[16];
  v0[12] = v30;
  v8(v20, v19);
  sub_261CFC9E4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDE0D0, qword_261D11550);
  sub_261B834D8();
  sub_261B8E674(&qword_27FEDA3C0, MEMORY[0x277CB9DE0], MEMORY[0x277CB9DD8]);
  sub_261CFC974();
  sub_261B4AC84(v27, v29);
  (*(v23 + 8))(v22, v24);

  (*(v21 + 8))(v19, v28);

  v25 = v0[1];

  return v25();
}

uint64_t sub_261B8A33C()
{
  v1 = v0[32];
  v2 = v0[33];
  sub_261B4AC84(v1, v2);
  sub_261B4AC84(v1, v2);

  v3 = v0[1];

  return v3();
}

uint64_t sub_261B8A400()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_261B8A4A8(uint64_t a1, uint64_t a2, _BYTE *a3, char a4, uint64_t a5)
{
  *(v6 + 120) = a5;
  *(v6 + 128) = v5;
  *(v6 + 256) = a4;
  *(v6 + 104) = a1;
  *(v6 + 112) = a2;
  v8 = sub_261CFDEA4();
  *(v6 + 136) = v8;
  *(v6 + 144) = *(v8 - 8);
  *(v6 + 152) = swift_task_alloc();
  v9 = sub_261CFE8C4();
  *(v6 + 160) = v9;
  *(v6 + 168) = *(v9 - 8);
  *(v6 + 176) = swift_task_alloc();
  v10 = sub_261CFDC34();
  *(v6 + 184) = v10;
  *(v6 + 192) = *(v10 - 8);
  *(v6 + 200) = swift_task_alloc();
  v11 = sub_261CFF1F4();
  *(v6 + 208) = v11;
  *(v6 + 216) = *(v11 - 8);
  *(v6 + 224) = swift_task_alloc();
  v12 = type metadata accessor for ReminderEntity(0);
  *(v6 + 232) = v12;
  *(v6 + 240) = *(v12 - 8);
  *(v6 + 248) = swift_task_alloc();
  *(v6 + 257) = *a3;

  return MEMORY[0x2822009F8](sub_261B8A720, 0, 0);
}

uint64_t sub_261B8A720()
{
  v137 = v0;
  v136[5] = *MEMORY[0x277D85DE8];
  sub_261B9DCEC(*(v0 + 104));
  v3 = sub_261B9BAD4(3, v1, v2);
  v4 = *(v0 + 257);

  sub_261CFD104();
  v5 = v3;
  if ((v4 & 1) == 0)
  {
    v5 = sub_261B491CC(v3);
  }

  v130 = v3;
  v6 = v5[2];
  v132 = v0;
  if (v6)
  {
    v7 = *(v0 + 240);
    v136[0] = MEMORY[0x277D84F90];
    sub_261D003A4();
    v8 = v5 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
    v9 = *(v7 + 72);
    do
    {
      v10 = *(v0 + 248);
      sub_261B4C910(v8, v10);
      type metadata accessor for AppEntityID(0);
      v11 = objc_allocWithZone(MEMORY[0x277D44700]);
      v12 = sub_261CFD814();
      v13 = sub_261CFFA54();
      [v11 initWithUUID:v12 entityName:v13];

      sub_261B4C974(v10);
      sub_261D00374();
      sub_261D003B4();
      v0 = v132;
      sub_261D003C4();
      sub_261D00384();
      v8 += v9;
      --v6;
    }

    while (v6);

    v14 = v136[0];
  }

  else
  {

    v14 = MEMORY[0x277D84F90];
  }

  if (qword_27FED9950 == -1)
  {
    goto LABEL_11;
  }

LABEL_90:
  swift_once();
LABEL_11:
  v15 = *(v0 + 112);
  v16 = sub_261CFF7A4();
  __swift_project_value_buffer(v16, qword_27FEDB208);
  v17 = v15;
  sub_261CFD104();
  v18 = sub_261CFF784();
  v19 = sub_261CFFE84();

  v129 = v17;

  if (os_log_type_enabled(v18, v19))
  {
    v20 = 7104878;
    v21 = *(v0 + 112);
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v136[0] = v23;
    *v22 = 136446722;
    v24 = sub_261B05020(0, &qword_280D21DF0, 0x277D44700);
    v25 = MEMORY[0x26671C340](v14, v24);
    v27 = sub_261B879C8(v25, v26, v136);

    *(v22 + 4) = v27;
    *(v22 + 12) = 2080;
    if (v21 && (v28 = [v17 objectID]) != 0)
    {
      v29 = v132;
      *(v132 + 96) = v28;
      v20 = sub_261CFFAB4();
      v31 = v30;
    }

    else
    {
      v31 = 0xE300000000000000;
      v29 = v132;
    }

    v32 = *(v29 + 257);
    v33 = sub_261B879C8(v20, v31, v136);

    *(v22 + 14) = v33;
    *(v22 + 22) = 2082;
    if (v32)
    {
      v34 = 0x6D6F74746F62;
    }

    else
    {
      v34 = 7368564;
    }

    if (v32)
    {
      v35 = 0xE600000000000000;
    }

    else
    {
      v35 = 0xE300000000000000;
    }

    v36 = sub_261B879C8(v34, v35, v136);

    *(v22 + 24) = v36;
    _os_log_impl(&dword_261AE2000, v18, v19, "[MoveRemindersToListAppIntent] Move reminders to list {reminderIDs: %{public}s, resolvedTargetList: %s, insertPosition: %{public}s", v22, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x26671D560](v23, -1, -1);
    MEMORY[0x26671D560](v22, -1, -1);
  }

  v37 = sub_261CFD104();
  v38 = sub_261B49D78(v37);

  v39 = sub_261CFC0B8(v14);
  v42 = v132;
  v43 = *(v132 + 128);
  v44 = *(v132 + 112);
  v45 = 0;
  v131 = sub_261B8EB3C(v39, v38);

  v46 = [objc_allocWithZone(MEMORY[0x277D447D8]) initWithStore_];
  [v46 setSaveIsNoopIfNoChangedKeys_];
  v47 = MEMORY[0x277D84F98];
  v133 = MEMORY[0x277D84F98];
  v135 = 0;
  v121 = v44;
  if (!v44)
  {
    v56 = MEMORY[0x277D84F98];
    goto LABEL_34;
  }

  v48 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDA740, &qword_261D05A10);
  v49 = swift_allocObject();
  *(v49 + 16) = xmmword_261D030F0;
  *(v49 + 32) = v129;
  v50 = v129;
  sub_261CFFE94();

  sub_261CFDD24();
  *(v132 + 88) = v50;
  memset(v136, 0, 40);
  v51 = v50;
  v52 = v46;
  sub_261CFDF24();
  v53 = *(v132 + 80);
  v135 = v53;
  sub_261CFCDA4();
  v54 = [v51 objectID];
  if (!(v47 >> 62))
  {
    v55 = v133;
LABEL_33:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v136[0] = v55;
    sub_261BF83B0(v53, v54, isUniquelyReferenced_nonNull_native);

    v56 = v136[0];
    v133 = v136[0];
    v45 = 0;
LABEL_34:
    v48 = v56;
    v134[0] = v47;
    if (!(v14 >> 62))
    {
      v59 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_36;
    }

    goto LABEL_95;
  }

  v57 = sub_261D00274();
  if (!__OFADD__(v57, 1))
  {
    v55 = sub_261CA248C(MEMORY[0x277D84F98], v57 + 1);
    goto LABEL_33;
  }

  __break(1u);
LABEL_98:
  for (i = sub_261D00274(); i; i = *((v47 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v45 = 0;
    v131 = v47 & 0xC000000000000001;
    v128 = v47 & 0xFFFFFFFFFFFFFF8;
    v14 = &unk_279AFB000;
    while (1)
    {
      if (v131)
      {
        v91 = MEMORY[0x26671CA10](v45, v47);
      }

      else
      {
        if (v45 >= *(v128 + 16))
        {
          goto LABEL_93;
        }

        v91 = *(v47 + 8 * v45 + 32);
      }

      v46 = v91;
      v48 = v45 + 1;
      if (__OFADD__(v45, 1))
      {
        break;
      }

      v92 = i;
      v93 = v47;
      v94 = [v91 list];
      v95 = [v94 objectID];

      v96 = v53;
      v97 = [v53 objectID];
      sub_261B05020(0, &qword_280D21DF0, 0x277D44700);
      LOBYTE(v94) = sub_261D000F4();

      if (v94)
      {
      }

      else
      {
        sub_261D00374();
        sub_261D003B4();
        sub_261D003C4();
        sub_261D00384();
      }

      i = v92;
      ++v45;
      v90 = v48 == v92;
      v42 = v132;
      v53 = v96;
      v47 = v93;
      if (v90)
      {
        v104 = v136[0];
        v54 = v129;
        goto LABEL_100;
      }
    }

    while (1)
    {
      __break(1u);
LABEL_93:
      __break(1u);
LABEL_94:
      __break(1u);
LABEL_95:
      v59 = sub_261D00274();
LABEL_36:
      v122 = v129;
      v60 = v46;
      sub_261CFD104();
      sub_261CFCDA4();
      v129 = v60;
      if (!v59)
      {
        v46 = v45;
        v65 = v48;
        goto LABEL_45;
      }

      v61 = *(v42 + 257);
      v48 = v14 & 0xC000000000000001;
      if ((v14 & 0xC000000000000001) != 0)
      {
        break;
      }

      if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v62 = *(v14 + 32);
        goto LABEL_40;
      }

LABEL_91:
      __break(1u);
    }

    v62 = MEMORY[0x26671CA10](0, v14);
LABEL_40:
    v63 = v62;
    v64 = *(v132 + 112);
    v136[0] = v62;
    sub_261B8F424(v136, v131, v129, v64, v61, &v135, &v133, v134);
    v46 = v45;
    if (v45)
    {
      v42 = v132;

      swift_bridgeObjectRelease_n();

      goto LABEL_2;
    }

    if (v59 != 1)
    {
      v42 = 5;
      do
      {
        v98 = v42 - 4;
        if (v48)
        {
          v99 = MEMORY[0x26671CA10](v42 - 4, v14);
        }

        else
        {
          if (v98 >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_91;
          }

          v99 = *(v14 + 8 * v42);
        }

        v100 = v99;
        v101 = __OFADD__(v98, 1);
        v102 = v42 - 3;
        if (v101)
        {
          goto LABEL_94;
        }

        v103 = *(v132 + 112);
        v136[0] = v99;
        v45 = 0;
        sub_261B8F424(v136, v131, v129, v103, v61, &v135, &v133, v134);
        v46 = 0;

        ++v42;
      }

      while (v102 != v59);
    }

    v42 = v132;
    v65 = v133;
    v60 = v129;
LABEL_45:

    if ((v65 & 0xC000000000000001) != 0)
    {
      v66 = sub_261D00424();
      v67 = 0;
      v68 = 0;
      v69 = 0;
      v70 = v66 | 0x8000000000000000;
    }

    else
    {
      v71 = -1 << *(v65 + 32);
      v68 = ~v71;
      v67 = v65 + 64;
      v72 = -v71;
      if (v72 < 64)
      {
        v73 = ~(-1 << v72);
      }

      else
      {
        v73 = -1;
      }

      v69 = v73 & *(v65 + 64);
      v70 = v65;
    }

    v74 = *(v42 + 216);
    v14 = (v68 + 64) >> 6;
    v126 = *MEMORY[0x277D45E90];
    v124 = (v74 + 104);
    v75 = (v74 + 8);
    swift_bridgeObjectRetain_n();
    v48 = 0;
    if ((v70 & 0x8000000000000000) != 0)
    {
      goto LABEL_58;
    }

LABEL_52:
    v76 = v48;
    v77 = v69;
    v0 = v48;
    if (!v69)
    {
      while (1)
      {
        v0 = v76 + 1;
        if (__OFADD__(v76, 1))
        {
          break;
        }

        if (v0 >= v14)
        {
          goto LABEL_62;
        }

        v77 = *(v67 + 8 * v0);
        ++v76;
        if (v77)
        {
          goto LABEL_56;
        }
      }

      __break(1u);
      goto LABEL_90;
    }

LABEL_56:
    v78 = (v77 - 1) & v77;
    v79 = *(*(v70 + 56) + ((v0 << 9) | (8 * __clz(__rbit64(v77)))));
    sub_261CFCDA4();
    if (v79)
    {
      while (1)
      {
        v82 = v70;
        v83 = *(v132 + 224);
        v84 = *(v132 + 208);
        (*v124)(v83, v126, v84);
        sub_261CFDCF4();

        v85 = v83;
        v70 = v82;
        (*v75)(v85, v84);
        v48 = v0;
        v69 = v78;
        if ((v70 & 0x8000000000000000) == 0)
        {
          goto LABEL_52;
        }

LABEL_58:
        if (sub_261D004B4())
        {
          v81 = v80;
          swift_unknownObjectRelease();
          *(v132 + 72) = v81;
          sub_261CFDD24();
          swift_dynamicCast();
          v0 = v48;
          v78 = v69;
          if (*(v132 + 64))
          {
            continue;
          }
        }

        break;
      }
    }

LABEL_62:
    sub_261B57B30(v70);

    if (!v121)
    {

      v42 = v132;
      v54 = v129;
      goto LABEL_106;
    }

    v53 = v122;
    v86 = sub_261D000B4();
    v87 = [v86 supportsSections];

    v42 = v132;
    v54 = v129;
    if ((v87 & 1) == 0)
    {

      goto LABEL_106;
    }

    v88 = *(v132 + 256);
    v47 = sub_261B88018(v131);

    if (v88 != 2 && (*(v132 + 256) & 1) != 0)
    {
      goto LABEL_101;
    }

    v136[0] = MEMORY[0x277D84F90];
    if (v47 >> 62)
    {
      goto LABEL_98;
    }
  }

  v104 = MEMORY[0x277D84F90];
LABEL_100:

  v47 = v104;
LABEL_101:
  if (v47 >> 62)
  {
    if (!sub_261D00274())
    {
      goto LABEL_105;
    }

LABEL_103:
    v106 = *(v42 + 192);
    v105 = *(v42 + 200);
    v107 = *(v42 + 184);
    v127 = v107;
    v123 = v53;
    v109 = *(v42 + 168);
    v108 = *(v42 + 176);
    v110 = *(v42 + 152);
    v125 = *(v42 + 160);
    v111 = *(v132 + 144);
    v112 = *(v132 + 136);
    sub_261AE498C(*(v132 + 120), v132 + 16);
    sub_261CFE7F4();
    swift_allocObject();
    sub_261CFE7E4();
    sub_261CFE7D4();
    (*(v106 + 104))(v105, *MEMORY[0x277D45C30], v107);
    *v108 = v123;
    (*(v109 + 104))(v108, *MEMORY[0x277D45E80], v125);
    *v110 = v129;
    (*(v111 + 104))(v110, *MEMORY[0x277D45CB0], v112);
    v113 = v123;
    v114 = v129;
    MEMORY[0x26671AE80](v47, v105, v108, 0, v110);

    (*(v111 + 8))(v110, v112);
    v42 = v132;
    (*(v109 + 8))(v108, v125);
    (*(v106 + 8))(v105, v127);
    v54 = v129;
  }

  else
  {
    if (*((v47 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_103;
    }

LABEL_105:
  }

LABEL_106:
  *(v42 + 56) = 0;
  v115 = [v54 saveSynchronouslyWithError_];
  v116 = *(v42 + 56);
  if (!v115)
  {
    v120 = v116;

    sub_261CFD654();

    swift_willThrow();

LABEL_2:

    v40 = *(v42 + 8);

    return v40();
  }

  v117 = v116;
  v118 = sub_261B88780(v130, v134);

  v119 = *(v42 + 8);

  return v119(v118);
}

uint64_t sub_261B8B708(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_261AF43A8;

  return REMStoreIntentPerformer.perform(_:)(a1, a2);
}

uint64_t sub_261B8B7B4(uint64_t a1)
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    v1 = MEMORY[0x277D84F98];
    v37 = MEMORY[0x277D84F98];
    v2 = sub_261D00424();
    v3 = sub_261D004B4();
    if (v3)
    {
      v4 = v3;
      sub_261B05020(0, &qword_280D21DF0, 0x277D44700);
      v5 = v4;
      v6 = MEMORY[0x277D84F68];
      v7 = &qword_27FEDDF20;
      v34 = v2;
      do
      {
        v35 = v5;
        swift_dynamicCast();
        sub_261B05020(0, v7, 0x277D44750);
        swift_dynamicCast();
        if (!v36)
        {
          break;
        }

        v8 = v36;
        v9 = v35;
        if ([v9 isSubtask])
        {
          if (qword_27FED9950 != -1)
          {
            swift_once();
          }

          v10 = sub_261CFF7A4();
          __swift_project_value_buffer(v10, qword_27FEDB208);
          v11 = v8;
          v12 = v9;
          v13 = sub_261CFF784();
          v14 = sub_261CFFE54();

          if (os_log_type_enabled(v13, v14))
          {
            v15 = v6;
            v16 = swift_slowAlloc();
            v17 = v7;
            v18 = swift_slowAlloc();
            *v16 = 138543362;
            v19 = [v12 objectID];
            *(v16 + 4) = v19;
            *v18 = v19;
            _os_log_impl(&dword_261AE2000, v13, v14, "[MoveRemindersToListAppIntent] Moving subtask to CSL is not supported {reminderID: %{public}@}", v16, 0xCu);
            sub_261AE6A40(v18, &unk_27FEDA730, &unk_261D035C0);
            v20 = v18;
            v7 = v17;
            MEMORY[0x26671D560](v20, -1, -1);
            v21 = v16;
            v6 = v15;
            v2 = v34;
            MEMORY[0x26671D560](v21, -1, -1);
          }
        }

        else
        {

          v22 = *(v1 + 16);
          if (*(v1 + 24) <= v22)
          {
            sub_261CA2930(v22 + 1, 1);
          }

          v1 = v37;
          result = sub_261D000E4();
          v24 = v37 + 64;
          v25 = -1 << *(v37 + 32);
          v26 = result & ~v25;
          v27 = v26 >> 6;
          if (((-1 << v26) & ~*(v37 + 64 + 8 * (v26 >> 6))) != 0)
          {
            v28 = __clz(__rbit64((-1 << v26) & ~*(v37 + 64 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
          }

          else
          {
            v29 = 0;
            v30 = (63 - v25) >> 6;
            do
            {
              if (++v27 == v30 && (v29 & 1) != 0)
              {
                __break(1u);
                return result;
              }

              v31 = v27 == v30;
              if (v27 == v30)
              {
                v27 = 0;
              }

              v29 |= v31;
              v32 = *(v24 + 8 * v27);
            }

            while (v32 == -1);
            v28 = __clz(__rbit64(~v32)) + (v27 << 6);
          }

          *(v24 + ((v28 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v28;
          *(*(v37 + 48) + 8 * v28) = v8;
          *(*(v37 + 56) + 8 * v28) = v9;
          ++*(v37 + 16);
        }

        v5 = sub_261D004B4();
      }

      while (v5);
    }

    sub_261B57B30(v2 | 0x8000000000000000);
  }

  else
  {
    sub_261B8DF24(a1);
    v1 = v33;
  }

  return v1;
}

uint64_t sub_261B8BBA0(uint64_t a1, uint64_t a2, _BYTE *a3, uint64_t a4)
{
  *(v5 + 120) = a4;
  *(v5 + 128) = v4;
  *(v5 + 104) = a1;
  *(v5 + 112) = a2;
  v7 = type metadata accessor for ReminderEntity(0);
  *(v5 + 136) = v7;
  *(v5 + 144) = *(v7 - 8);
  *(v5 + 152) = swift_task_alloc();
  *(v5 + 160) = swift_task_alloc();
  *(v5 + 168) = swift_task_alloc();
  *(v5 + 176) = swift_task_alloc();
  *(v5 + 265) = *a3;

  return MEMORY[0x2822009F8](sub_261B8BCC8, 0, 0);
}

uint64_t sub_261B8BCC8()
{
  v98 = v0;
  v97[1] = *MEMORY[0x277D85DE8];
  v1 = v0[13];
  v2 = *(v1 + 16);
  v3 = MEMORY[0x277D84F90];
  v94 = v2;
  if (v2)
  {
    v4 = v0[18];
    v97[0] = MEMORY[0x277D84F90];
    sub_261D003A4();
    v5 = v1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v6 = v0;
    v7 = *(v4 + 72);
    v8 = v2;
    do
    {
      v9 = v6[22];
      sub_261B4C910(v5, v9);
      type metadata accessor for AppEntityID(0);
      v10 = objc_allocWithZone(MEMORY[0x277D44700]);
      v11 = sub_261CFD814();
      v12 = sub_261CFFA54();
      [v10 initWithUUID:v11 entityName:v12];

      sub_261B4C974(v9);
      sub_261D00374();
      sub_261D003B4();
      sub_261D003C4();
      sub_261D00384();
      v5 += v7;
      --v8;
    }

    while (v8);
    v13 = v97[0];
    v0 = v6;
    v3 = MEMORY[0x277D84F90];
  }

  else
  {
    v13 = MEMORY[0x277D84F90];
  }

  v14 = v0[16];
  v0[5] = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDE100, &qword_261D05750);
  sub_261B91FF0(&qword_27FEDD910, &unk_27FEDE100, &qword_261D05750);
  sub_261B3B918();
  v15 = sub_261CFFC34();
  v0[23] = v15;

  v0[24] = *(v14 + 24);
  v16 = sub_261CFC0B8(v15);
  v17 = sub_261B8B7B4(v16);
  v95 = v0;
  v0[25] = v17;
  v97[0] = v3;
  if ((v17 & 0xC000000000000001) != 0)
  {
    v18 = sub_261D00424();
    v19 = 0;
    v20 = 0;
    v21 = 0;
    v22 = v18 | 0x8000000000000000;
  }

  else
  {
    v23 = -1 << *(v17 + 32);
    v20 = ~v23;
    v19 = v17 + 64;
    v24 = -v23;
    if (v24 < 64)
    {
      v25 = ~(-1 << v24);
    }

    else
    {
      v25 = -1;
    }

    v21 = v25 & *(v17 + 64);
    v22 = v17;
  }

  v26 = (v20 + 64) >> 6;
  sub_261CFD104();
  v27 = 0;
  v28 = &unk_279AFB000;
  while ((v22 & 0x8000000000000000) == 0)
  {
    v29 = v27;
    v30 = v21;
    v31 = v27;
    if (!v21)
    {
      while (1)
      {
        v31 = v29 + 1;
        if (__OFADD__(v29, 1))
        {
          break;
        }

        if (v31 >= v26)
        {
          goto LABEL_26;
        }

        v30 = *(v19 + 8 * v31);
        ++v29;
        if (v30)
        {
          goto LABEL_20;
        }
      }

      __break(1u);
LABEL_66:
      swift_once();
      goto LABEL_48;
    }

LABEL_20:
    v32 = (v30 - 1) & v30;
    v33 = *(*(v22 + 56) + ((v31 << 9) | (8 * __clz(__rbit64(v30)))));
    if (!v33)
    {
      goto LABEL_26;
    }

LABEL_24:
    v36 = sub_261CFFDF4();
    v37 = [v36 supportsCustomSmartLists];

    if (v37)
    {
    }

    else
    {
      sub_261D00374();
      sub_261D003B4();
      sub_261D003C4();
      sub_261D00384();
    }

    v27 = v31;
    v21 = v32;
  }

  if (sub_261D004B4())
  {
    v35 = v34;
    swift_unknownObjectRelease();
    *(v95 + 12) = v35;
    sub_261B05020(0, &qword_27FEDDF20, 0x277D44750);
    swift_dynamicCast();
    v33 = *(v95 + 11);
    v31 = v27;
    v32 = v21;
    if (v33)
    {
      goto LABEL_24;
    }
  }

LABEL_26:
  sub_261B57B30(v22);
  v28 = v95;
  *(v95 + 6) = v97[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDB258, &qword_261D05758);
  sub_261B05020(0, &qword_280D21DF0, 0x277D44700);
  sub_261B91FF0(&qword_27FEDB260, &qword_27FEDB258, &qword_261D05758);
  v38 = sub_261CFFC24();
  *(v95 + 26) = v38;

  if (v94)
  {
    v39 = 0;
    v40 = *(v95 + 18);
    v96 = *(v40 + 72);
    v93 = *(v95 + 13) + ((*(v40 + 80) + 32) & ~*(v40 + 80));
    v92 = (*(v40 + 80) + 32) & ~*(v40 + 80);
    v41 = v38 + 56;
    v27 = MEMORY[0x277D84F90];
    while (1)
    {
      sub_261B4C910(v93 + v39 * v96, *(v28 + 21));
      type metadata accessor for AppEntityID(0);
      v42 = objc_allocWithZone(MEMORY[0x277D44700]);
      v43 = sub_261CFD814();
      v44 = sub_261CFFA54();
      v45 = [v42 initWithUUID:v43 entityName:v44];

      if ((v38 & 0xC000000000000001) != 0)
      {
        v46 = v45;
        v47 = sub_261D002B4();

        if (v47)
        {
          goto LABEL_33;
        }
      }

      else
      {
        if (*(v38 + 16))
        {
          v51 = sub_261D000E4();
          v52 = -1 << *(v38 + 32);
          v53 = v51 & ~v52;
          if ((*(v41 + ((v53 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v53))
          {
            v54 = ~v52;
            while (1)
            {
              v55 = *(*(v38 + 48) + 8 * v53);
              v56 = sub_261D000F4();

              if (v56)
              {
                break;
              }

              v53 = (v53 + 1) & v54;
              if (((*(v41 + ((v53 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v53) & 1) == 0)
              {
                goto LABEL_28;
              }
            }

LABEL_33:
            v28 = v95;
            sub_261B837B0(*(v95 + 21), *(v95 + 20));
            v97[0] = v27;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_261B39DB8(0, *(v27 + 16) + 1, 1);
              v27 = v97[0];
            }

            v49 = *(v27 + 16);
            v48 = *(v27 + 24);
            if (v49 >= v48 >> 1)
            {
              sub_261B39DB8((v48 > 1), v49 + 1, 1);
              v27 = v97[0];
            }

            v50 = *(v95 + 20);
            *(v27 + 16) = v49 + 1;
            sub_261B837B0(v50, v27 + v92 + v49 * v96);
            goto LABEL_30;
          }
        }

LABEL_28:
      }

      v28 = v95;
      sub_261B4C974(*(v95 + 21));
LABEL_30:
      if (++v39 == v94)
      {
        goto LABEL_46;
      }
    }
  }

  v27 = MEMORY[0x277D84F90];
LABEL_46:
  *(v28 + 27) = v27;
  if (!*(v27 + 16))
  {

    goto LABEL_62;
  }

  if (qword_27FED9950 != -1)
  {
    goto LABEL_66;
  }

LABEL_48:
  v57 = sub_261CFF7A4();
  *(v28 + 28) = __swift_project_value_buffer(v57, qword_27FEDB208);
  sub_261CFD104();
  v58 = sub_261CFF784();
  v59 = sub_261CFFE54();

  if (os_log_type_enabled(v58, v59))
  {
    v60 = swift_slowAlloc();
    v61 = swift_slowAlloc();
    v97[0] = v61;
    *v60 = 136446210;
    v62 = sub_261CFFD74();
    v64 = sub_261B879C8(v62, v63, v97);

    *(v60 + 4) = v64;
    _os_log_impl(&dword_261AE2000, v58, v59, "[MoveRemindersToListAppIntent] Try to move reminders from accounts not supporting CSL to a CSL, let's first move these reminders to the CloudKit account {reminderIDs: %{public}s}", v60, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v61);
    MEMORY[0x26671D560](v61, -1, -1);
    v65 = v60;
    v28 = v95;
    MEMORY[0x26671D560](v65, -1, -1);
  }

  v66 = *(*(v28 + 16) + 16);
  v67 = [*(v28 + 14) accountID];
  *(v28 + 7) = 0;
  v68 = [v66 fetchDefaultListRequiringCloudKitAccountWithAccountID:v67 error:v28 + 56];
  *(v28 + 29) = v68;

  v69 = *(v28 + 7);
  if (v69)
  {
    v70 = v69;

    swift_willThrow();
    v71 = v70;
    v72 = sub_261CFF784();
    v73 = sub_261CFFE64();

    if (os_log_type_enabled(v72, v73))
    {
      v74 = swift_slowAlloc();
      v75 = swift_slowAlloc();
      v97[0] = v75;
      *v74 = 136315138;
      swift_getErrorValue();
      v76 = sub_261D00674();
      v78 = sub_261B879C8(v76, v77, v97);

      *(v74 + 4) = v78;
      _os_log_impl(&dword_261AE2000, v72, v73, "[MoveRemindersToListAppIntent] Unable to fetch default CloudKit list because %s", v74, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v75);
      MEMORY[0x26671D560](v75, -1, -1);
      MEMORY[0x26671D560](v74, -1, -1);
    }

    else
    {
    }

LABEL_62:
    v87 = *(v28 + 25);
    v86 = *(v28 + 26);
    v88 = *(v28 + 23);
    v89 = sub_261BC6A34(MEMORY[0x277D84F90]);

    v97[0] = v89;
    sub_261CFD104();
    sub_261CFD104();
    v90 = sub_261B900C8(v88, v86, v97, v87);
    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();

    v91 = *(v95 + 1);

    return v91(v90);
  }

  if (!v68)
  {

    v83 = sub_261CFF784();
    v84 = sub_261CFFE64();
    if (os_log_type_enabled(v83, v84))
    {
      v85 = swift_slowAlloc();
      *v85 = 0;
      _os_log_impl(&dword_261AE2000, v83, v84, "[MoveRemindersToListAppIntent] No available default CloudKit list", v85, 2u);
      MEMORY[0x26671D560](v85, -1, -1);
    }

    goto LABEL_62;
  }

  v28[264] = v28[265];
  v79 = v68;
  v80 = swift_task_alloc();
  *(v28 + 30) = v80;
  *v80 = v28;
  v80[1] = sub_261B8C91C;
  v81 = *(v28 + 15);

  return sub_261B8A4A8(v27, v68, v28 + 264, 0, v81);
}

uint64_t sub_261B8C91C(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 248) = a1;
  *(v3 + 256) = v1;

  if (v1)
  {
    v4 = *(v3 + 232);

    v5 = sub_261B8D1F0;
  }

  else
  {

    v5 = sub_261B8CA7C;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_261B8CA7C()
{
  v71 = v0;
  v1 = v0;
  v70[1] = *MEMORY[0x277D85DE8];
  v2 = v0[31];
  v3 = *(v2 + 16);
  v4 = MEMORY[0x277D84F90];
  if (v3)
  {
    v5 = v0[18];
    v70[0] = MEMORY[0x277D84F90];
    sub_261D003A4();
    v68 = v2;
    v6 = v2 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v7 = *(v5 + 72);
    do
    {
      v8 = v1[22];
      sub_261B4C910(v6, v8);
      type metadata accessor for AppEntityID(0);
      v9 = objc_allocWithZone(MEMORY[0x277D44700]);
      v10 = sub_261CFD814();
      v11 = sub_261CFFA54();
      [v9 initWithUUID:v10 entityName:v11];

      sub_261B4C974(v8);
      sub_261D00374();
      sub_261D003B4();
      sub_261D003C4();
      sub_261D00384();
      v6 += v7;
      --v3;
    }

    while (v3);
    v12 = v70[0];
    v2 = v68;
    v4 = MEMORY[0x277D84F90];
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  v13 = v1[32];
  v14 = sub_261CFC0B8(v12);
  v67 = v1;
  if (v13)
  {
    v15 = v1[29];

    v16 = v1;
    v17 = v13;
    v18 = sub_261CFF784();
    v19 = sub_261CFFE64();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v70[0] = v21;
      *v20 = 136315138;
      swift_getErrorValue();
      v22 = sub_261D00674();
      v24 = sub_261B879C8(v22, v23, v70);

      *(v20 + 4) = v24;
      _os_log_impl(&dword_261AE2000, v18, v19, "[MoveRemindersToListAppIntent] Unable to fetch default CloudKit list because %s", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v21);
      MEMORY[0x26671D560](v21, -1, -1);
      MEMORY[0x26671D560](v20, -1, -1);
    }

    else
    {
    }

    v46 = MEMORY[0x277D84F90];
    goto LABEL_37;
  }

  v25 = v14;

  v70[0] = v4;
  v26 = *(v2 + 16);
  v27 = v1[31];
  if (v26)
  {
    v28 = v1[18];
    type metadata accessor for AppEntityID(0);
    v29 = v27 + ((*(v28 + 80) + 32) & ~*(v28 + 80));
    v30 = v25;
    v31 = v25 & 0xC000000000000001;
    v32 = *(v28 + 72);
    v33 = v1;
    v69 = v30;
    v66 = MEMORY[0x277D84F90];
    while (1)
    {
      sub_261B4C910(v29, v33[19]);
      v35 = objc_allocWithZone(MEMORY[0x277D44700]);
      v36 = sub_261CFD814();
      v37 = sub_261CFFA54();
      v38 = [v35 initWithUUID:v36 entityName:v37];

      if (v31)
      {
        v39 = v38;
        v40 = sub_261D004A4();

        if (v40)
        {
          v33[10] = v40;
          sub_261B05020(0, &qword_27FEDDF20, 0x277D44750);
          swift_dynamicCast();
          v41 = v33[9];
          goto LABEL_19;
        }
      }

      else if (*(v69 + 16))
      {
        v42 = sub_261B37CA4(v38);
        if (v43)
        {
          v41 = *(*(v69 + 56) + 8 * v42);
LABEL_19:
          v44 = v33[19];

          v45 = sub_261B4C974(v44);
          if (v41)
          {
            MEMORY[0x26671C310](v45);
            if (*((v70[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v70[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_261CFFC84();
              v33 = v67;
            }

            sub_261CFFCB4();
            v66 = v70[0];
          }

          goto LABEL_12;
        }
      }

      v34 = v33[19];

      sub_261B4C974(v34);
LABEL_12:
      v29 += v32;
      if (!--v26)
      {

        v47 = v66;
        goto LABEL_27;
      }
    }
  }

  v47 = MEMORY[0x277D84F90];
LABEL_27:

  v48 = v47 >> 62;
  v49 = v47;
  if (v47 >> 62)
  {
    v50 = sub_261D00274();
  }

  else
  {
    v50 = *((v47 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v50 == *(v67[27] + 16))
  {

    v16 = v67;
    v46 = v47;
  }

  else
  {
    sub_261CFD104();
    sub_261CFCDA4();
    v51 = sub_261CFF784();
    v52 = sub_261CFFE74();
    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      *v53 = 134218240;
      if (v48)
      {
        v54 = sub_261D00274();
      }

      else
      {
        v54 = *((v49 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v56 = v67[29];
      v57 = v67[27];
      *(v53 + 4) = v54;

      *(v53 + 12) = 2048;
      v58 = *(v57 + 16);

      *(v53 + 14) = v58;
      v46 = v49;

      _os_log_impl(&dword_261AE2000, v51, v52, "[MoveRemindersToListAppIntent] Unexpected scenarios where movedRemindersByInputOrder.count (%ld) != unsupportedReminderEntities.count (%ld)", v53, 0x16u);
      MEMORY[0x26671D560](v53, -1, -1);

      v16 = v67;
    }

    else
    {
      v55 = v67[29];

      v16 = v67;
      v46 = v49;
    }
  }

LABEL_37:
  v60 = v16[25];
  v59 = v16[26];
  v61 = v16[23];
  v62 = sub_261BC6A34(v46);

  v70[0] = v62;
  sub_261CFD104();
  sub_261CFD104();
  v63 = sub_261B900C8(v61, v59, v70, v60);
  swift_bridgeObjectRelease_n();
  swift_bridgeObjectRelease_n();

  v64 = v16[1];

  return v64(v63);
}

uint64_t sub_261B8D1F0()
{
  v18 = v0;
  v17[1] = *MEMORY[0x277D85DE8];

  v1 = *(v0 + 256);
  v2 = v1;
  v3 = sub_261CFF784();
  v4 = sub_261CFFE64();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v17[0] = v6;
    *v5 = 136315138;
    swift_getErrorValue();
    v7 = sub_261D00674();
    v9 = sub_261B879C8(v7, v8, v17);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_261AE2000, v3, v4, "[MoveRemindersToListAppIntent] Unable to fetch default CloudKit list because %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x26671D560](v6, -1, -1);
    MEMORY[0x26671D560](v5, -1, -1);
  }

  else
  {
  }

  v11 = *(v0 + 200);
  v10 = *(v0 + 208);
  v12 = *(v0 + 184);
  v13 = sub_261BC6A34(MEMORY[0x277D84F90]);

  v17[0] = v13;
  sub_261CFD104();
  sub_261CFD104();
  v14 = sub_261B900C8(v12, v10, v17, v11);
  swift_bridgeObjectRelease_n();
  swift_bridgeObjectRelease_n();

  v15 = *(v0 + 8);

  return v15(v14);
}

uint64_t sub_261B8D450@<X0>(uint64_t a1@<X8>)
{
  v87 = a1;
  v70 = sub_261CFE7A4();
  v69 = *(v70 - 8);
  MEMORY[0x28223BE20](v70);
  v71 = (&v63 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v68 = sub_261CFF564();
  v67 = *(v68 - 8);
  MEMORY[0x28223BE20](v68);
  v66 = &v63 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDB220, &qword_261D056D8);
  MEMORY[0x28223BE20](v4 - 8);
  v73 = &v63 - v5;
  v6 = sub_261CFF094();
  v74 = *(v6 - 8);
  v75 = v6;
  v7 = MEMORY[0x28223BE20](v6);
  v64 = &v63 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v63 = &v63 - v10;
  MEMORY[0x28223BE20](v9);
  v72 = &v63 - v11;
  v12 = sub_261CFFF84();
  v76 = *(v12 - 8);
  v77 = v12;
  MEMORY[0x28223BE20](v12);
  v65 = &v63 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_261CFF244();
  v80 = *(v14 - 8);
  v81 = v14;
  MEMORY[0x28223BE20](v14);
  v79 = &v63 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_261CFF334();
  v90 = *(v16 - 8);
  v91 = v16;
  MEMORY[0x28223BE20](v16);
  v18 = &v63 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_261CFF284();
  v92 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v21 = &v63 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_261CFF204();
  v83 = *(v22 - 8);
  v84 = v22;
  MEMORY[0x28223BE20](v22);
  v24 = &v63 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDB228, &qword_261D056E0);
  MEMORY[0x28223BE20](v25 - 8);
  v27 = &v63 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDB230, &qword_261D056E8);
  v88 = *(v28 - 8);
  v89 = v28;
  MEMORY[0x28223BE20](v28);
  v78 = &v63 - v29;
  v30 = [v1 store];
  v31 = [v1 sortingStyle];
  sub_261CFFEA4();

  v32 = *MEMORY[0x277D45468];
  v33 = *(v92 + 104);
  v85 = v19;
  v33(v21, v32, v19);
  (*(v90 + 104))(v18, *MEMORY[0x277D45500], v91);
  v34 = v79;
  v35 = v80;
  v36 = v81;
  (*(v80 + 104))(v79, *MEMORY[0x277D45460]);
  v82 = v27;
  v37 = v86;
  sub_261CFF0A4();
  if (v37)
  {

    (*(v35 + 8))(v34, v36);
    (*(v90 + 8))(v18, v91);
    (*(v92 + 8))(v21, v85);
    (*(v83 + 8))(v24, v84);
    v38 = 1;
    v39 = v82;
    (*(v88 + 56))(v82, 1, 1, v89);
    sub_261AE6A40(v39, &qword_27FEDB228, &qword_261D056E0);
    v40 = v87;
  }

  else
  {
    v86 = 0;

    (*(v35 + 8))(v34, v36);
    (*(v90 + 8))(v18, v91);
    (*(v92 + 8))(v21, v85);
    (*(v83 + 8))(v24, v84);
    v42 = v88;
    v41 = v89;
    v43 = v82;
    (*(v88 + 56))(v82, 0, 1, v89);
    (*(v42 + 32))(v78, v43, v41);
    v44 = v72;
    v45 = sub_261CFF534();
    v46 = v73;
    MEMORY[0x26671B740](v45);
    v47 = *(v74 + 8);
    v48 = v44;
    v49 = v75;
    v47(v48, v75);
    v51 = v76;
    v50 = v77;
    if ((*(v76 + 48))(v46, 1, v77) == 1)
    {
      (*(v88 + 8))(v78, v89);
      sub_261AE6A40(v46, &qword_27FEDB220, &qword_261D056D8);
      v38 = 1;
      v40 = v87;
    }

    else
    {
      v52 = v65;
      (*(v51 + 32))(v65, v46, v50);
      v53 = v63;
      v54 = v78;
      v55 = sub_261CFF534();
      v56 = v66;
      MEMORY[0x26671B750](v55);
      v47(v53, v49);
      v92 = sub_261CFF264();
      (*(v67 + 8))(v56, v68);
      v57 = v64;
      v58 = v89;
      sub_261CFF534();
      v59 = sub_261CFF064();
      v47(v57, v49);
      v60 = v71;
      *v71 = v59;
      (*(v69 + 104))(v60, *MEMORY[0x277D45E68], v70);
      sub_261CFFF64();
      sub_261CFFF74();
      sub_261CFFF54();
      v40 = v87;
      sub_261CFE804();
      (*(v51 + 8))(v52, v77);
      (*(v88 + 8))(v54, v58);
      v38 = 0;
    }
  }

  v61 = sub_261CFE814();
  return (*(*(v61 - 8) + 56))(v40, v38, 1, v61);
}

id sub_261B8DEE0@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 objectID];
  *a2 = result;
  return result;
}

void sub_261B8DF24(uint64_t a1)
{
  v2 = a1;
  v8[1] = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v4 = ((1 << v3) + 63) >> 6;
  if ((v3 & 0x3Fu) > 0xD)
  {
    sub_261CFCDA4();
    if (!swift_stdlib_isStackAllocationSafe())
    {
      v7 = swift_slowAlloc();
      sub_261B8E3CC(v7, v4, v2);
      MEMORY[0x26671D560](v7, -1, -1);
      return;
    }
  }

  MEMORY[0x28223BE20](a1);
  v6 = v8 - ((v5 + 15) & 0x3FFFFFFFFFFFFFF0);
  bzero(v6, v5);
  sub_261B8E084(v6, v4, v2);
  if (v1)
  {
    swift_willThrow();
  }
}

void sub_261B8E084(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v27 = a2;
  v3 = a3;
  v29 = 0;
  v4 = 0;
  v5 = a3 + 64;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 64);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
LABEL_12:
    v13 = v10 | (v4 << 6);
    v14 = *(*(v3 + 56) + 8 * v13);
    v15 = *(*(v3 + 48) + 8 * v13);
    v16 = v14;
    if ([v16 isSubtask])
    {
      v31 = v8;
      if (qword_27FED9950 != -1)
      {
        swift_once();
      }

      v17 = sub_261CFF7A4();
      __swift_project_value_buffer(v17, qword_27FEDB208);
      v18 = v15;
      v19 = v16;
      v20 = sub_261CFF784();
      v21 = sub_261CFFE54();

      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        v23 = swift_slowAlloc();
        *v22 = 138543362;
        v24 = [v19 objectID];
        *(v22 + 4) = v24;
        *v23 = v24;
        _os_log_impl(&dword_261AE2000, v20, v21, "[MoveRemindersToListAppIntent] Moving subtask to CSL is not supported {reminderID: %{public}@}", v22, 0xCu);
        sub_261AE6A40(v23, &unk_27FEDA730, &unk_261D035C0);
        v25 = v23;
        v3 = a3;
        MEMORY[0x26671D560](v25, -1, -1);
        MEMORY[0x26671D560](v22, -1, -1);
      }

      v8 = v31;
    }

    else
    {

      *(a1 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      if (__OFADD__(v29++, 1))
      {
        goto LABEL_22;
      }
    }
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v9)
    {
      sub_261B8E444(a1, v27, v29, v3);
      return;
    }

    v12 = *(v5 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v8 = (v12 - 1) & v12;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
}

unint64_t *sub_261B8E330(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    sub_261CFD104();
    sub_261B8E6BC(v7, a2, a3, a4);
    v9 = v8;
    swift_bridgeObjectRelease_n();

    return v9;
  }

  return result;
}

void *sub_261B8E3CC(void *result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v4 = result;
      v5 = a2;
      bzero(result, 8 * a2);
      result = v4;
      a2 = v5;
    }

    sub_261B8E084(result, a2, a3);
    v7 = v6;

    return v7;
  }

  return result;
}

uint64_t sub_261B8E444(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return MEMORY[0x277D84F98];
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    sub_261CFCDA4();
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDB268, &qword_261D05760);
  result = sub_261D00544();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 64;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v30 = (v10 - 1) & v10;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = v4;
    v18 = *(*(v4 + 48) + 8 * v16);
    v19 = *(*(v4 + 56) + 8 * v16);
    v20 = v18;
    v31 = v19;
    result = sub_261D000E4();
    v21 = -1 << *(v9 + 32);
    v22 = result & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
    {
      v25 = 0;
      v26 = (63 - v21) >> 6;
      v4 = v17;
      while (++v23 != v26 || (v25 & 1) == 0)
      {
        v27 = v23 == v26;
        if (v23 == v26)
        {
          v23 = 0;
        }

        v25 |= v27;
        v28 = *(v12 + 8 * v23);
        if (v28 != -1)
        {
          v24 = __clz(__rbit64(~v28)) + (v23 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
    v4 = v17;
LABEL_26:
    *(v12 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    *(*(v9 + 48) + 8 * v24) = v20;
    *(*(v9 + 56) + 8 * v24) = v31;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v10 = v30;
    if (!v5)
    {
      return v9;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v30 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_261B8E674(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_261B8E6BC(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v31 = a2;
  v5 = a3;
  v6 = 0;
  v7 = 0;
  v8 = a3 + 64;
  v9 = 1 << *(a3 + 32);
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & *(a3 + 64);
  v12 = (v9 + 63) >> 6;
  v38 = a4 & 0xC000000000000001;
  v41 = a4 + 56;
  v32 = v12;
  while (v11)
  {
    v16 = __clz(__rbit64(v11));
    v40 = (v11 - 1) & v11;
LABEL_13:
    v37 = v16 | (v7 << 6);
    v19 = *(*(v5 + 56) + 8 * v37);
    v20 = *(*(v5 + 48) + 8 * v37);
    v21 = v19;
    v22 = [v21 parentReminderID];
    v23 = v22;
    if (v38)
    {
      v13 = v6;
      v14 = v22;
      v15 = sub_261D002B4();

      v6 = v13;
      v5 = a3;
      v11 = v40;
      if ((v15 & 1) == 0)
      {
LABEL_20:
        *(a1 + ((v37 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v37;
        if (__OFADD__(v6++, 1))
        {
          goto LABEL_26;
        }
      }
    }

    else
    {
      v34 = v20;
      v35 = v21;
      v36 = v6;
      if (!*(a4 + 16) || (sub_261B05020(0, &qword_280D21DF0, 0x277D44700), v24 = sub_261D000E4(), v25 = -1 << *(a4 + 32), v26 = v24 & ~v25, ((*(v41 + ((v26 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v26) & 1) == 0))
      {
LABEL_19:

        v5 = a3;
        v11 = v40;
        v6 = v36;
        v12 = v32;
        goto LABEL_20;
      }

      v27 = ~v25;
      while (1)
      {
        v28 = *(*(a4 + 48) + 8 * v26);
        v29 = sub_261D000F4();

        if (v29)
        {
          break;
        }

        v26 = (v26 + 1) & v27;
        if (((*(v41 + ((v26 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v26) & 1) == 0)
        {
          goto LABEL_19;
        }
      }

      v5 = a3;
      v11 = v40;
      v6 = v36;
      v12 = v32;
    }
  }

  v17 = v7;
  while (1)
  {
    v7 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v7 >= v12)
    {
      sub_261B8E444(a1, v31, v6, v5);
      return;
    }

    v18 = *(v8 + 8 * v7);
    ++v17;
    if (v18)
    {
      v16 = __clz(__rbit64(v18));
      v40 = (v18 - 1) & v18;
      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
}

unint64_t *sub_261B8E97C(uint64_t a1, uint64_t a2)
{
  v14[1] = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 32);
  v6 = v5 & 0x3F;
  v7 = ((1 << v5) + 63) >> 6;
  v8 = 8 * v7;
  v9 = swift_bridgeObjectRetain_n();
  if (v6 > 0xD)
  {
    sub_261CFCDA4();
    if (!swift_stdlib_isStackAllocationSafe())
    {
      v13 = swift_slowAlloc();
      sub_261CFD104();
      v11 = sub_261B8E330(v13, v7, a1, a2);
      MEMORY[0x26671D560](v13, -1, -1);
      swift_bridgeObjectRelease_n();
      return v11;
    }
  }

  MEMORY[0x28223BE20](v9);
  bzero(v14 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0), v8);
  sub_261CFD104();
  sub_261B8E6BC((v14 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0)), v7, a1, a2);
  v11 = v10;

  if (v2)
  {
    swift_willThrow();
  }

  swift_bridgeObjectRelease_n();
  return v11;
}

uint64_t sub_261B8EB3C(uint64_t a1, uint64_t a2)
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    v3 = MEMORY[0x277D84F98];
    v39 = MEMORY[0x277D84F98];
    v4 = sub_261D00424();
    sub_261CFD104();
    v5 = sub_261D004B4();
    if (v5)
    {
      v6 = v5;
      sub_261B05020(0, &qword_280D21DF0, 0x277D44700);
      v7 = v6;
      v8 = a2 & 0xC000000000000001;
      v36 = a2 + 56;
      v34 = a2 & 0xC000000000000001;
      v35 = v4;
      while (1)
      {
        v37 = v7;
        swift_dynamicCast();
        sub_261B05020(0, &qword_27FEDDF20, 0x277D44750);
        swift_dynamicCast();
        if (!v38)
        {
          goto LABEL_30;
        }

        v9 = v38;
        v10 = v37;
        v11 = [v10 parentReminderID];
        v12 = v11;
        if (!v8)
        {
          break;
        }

        v13 = v11;
        v14 = sub_261D002B4();

        if ((v14 & 1) == 0)
        {
          goto LABEL_16;
        }

LABEL_5:
        v7 = sub_261D004B4();
        if (!v7)
        {
          goto LABEL_30;
        }
      }

      if (*(a2 + 16))
      {
        v15 = sub_261D000E4();
        v16 = -1 << *(a2 + 32);
        v17 = v15 & ~v16;
        if ((*(v36 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17))
        {
          v18 = ~v16;
          while (1)
          {
            v19 = a2;
            v20 = *(*(a2 + 48) + 8 * v17);
            v21 = sub_261D000F4();

            if (v21)
            {
              break;
            }

            v17 = (v17 + 1) & v18;
            a2 = v19;
            if (((*(v36 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
            {
              goto LABEL_15;
            }
          }

          a2 = v19;
          v8 = v34;
          v4 = v35;
          goto LABEL_5;
        }
      }

LABEL_15:

      v8 = v34;
      v4 = v35;
LABEL_16:
      v22 = v3[2];
      if (v3[3] <= v22)
      {
        sub_261CA2930(v22 + 1, 1);
      }

      v3 = v39;
      result = sub_261D000E4();
      v24 = v39 + 64;
      v25 = -1 << *(v39 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v39 + 64 + 8 * (v26 >> 6))) != 0)
      {
        v28 = __clz(__rbit64((-1 << v26) & ~*(v39 + 64 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v29 = 0;
        v30 = (63 - v25) >> 6;
        do
        {
          if (++v27 == v30 && (v29 & 1) != 0)
          {
            __break(1u);
            return result;
          }

          v31 = v27 == v30;
          if (v27 == v30)
          {
            v27 = 0;
          }

          v29 |= v31;
          v32 = *(v24 + 8 * v27);
        }

        while (v32 == -1);
        v28 = __clz(__rbit64(~v32)) + (v27 << 6);
      }

      *(v24 + ((v28 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v28;
      *(*(v39 + 48) + 8 * v28) = v9;
      *(*(v39 + 56) + 8 * v28) = v10;
      ++*(v39 + 16);
      goto LABEL_5;
    }

LABEL_30:
    sub_261B57B30(v4 | 0x8000000000000000);
  }

  else
  {
    sub_261CFD104();
    v3 = sub_261B8E97C(a1, a2);
  }

  return v3;
}

void sub_261B8EF04(void *a1, unsigned __int8 *a2, void *a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDB270, &qword_261D05768);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v23 - v9;
  v11 = *a2;
  v12 = [a1 parentReminder];
  if (v12)
  {
    v13 = v12;
    sub_261CFE144();
    v24 = v3;
    v27 = 0;
    v28 = v13;
    v25 = 0u;
    v26 = 0u;
    v14 = a3;
    v15 = v13;
    sub_261CFDF24();
    v16 = [v14 updateReminder_];
    v17 = MEMORY[0x277D45DB0];
    if (!v11)
    {
      v17 = MEMORY[0x277D45DB8];
    }

    (*(v8 + 104))(v10, *v17, v7);
    v18 = sub_261CFDFB4();

    (*(v8 + 8))(v10, v7);
    v19 = v24;
    v20 = sub_261CF3338(0xD00000000000007CLL, 0x8000000261D1A8E0, 0xD0000000000000C6, 0x8000000261D1A960, 199, v18);
    if (!v19)
    {
      v20;
    }
  }

  else
  {
    v21 = objc_opt_self();
    v22 = sub_261CFFA54();
    [v21 internalErrorWithDebugDescription_];

    swift_willThrow();
  }
}

uint64_t sub_261B8F1B0(void *a1)
{
  v18[1] = *MEMORY[0x277D85DE8];
  v2 = [a1 subtaskContext];
  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  v3 = v2;
  v4 = [objc_opt_self() fetchOptionsIncludingDueDateDeltaAlerts];
  v18[0] = 0;
  v5 = [v3 fetchRemindersForMovingWithFetchOptions:v4 error:v18];

  v6 = v18[0];
  if (v5)
  {
    sub_261B05020(0, &qword_27FEDDF20, 0x277D44750);
    v7 = sub_261CFFC64();
    v8 = v6;
  }

  else
  {
    v9 = v18[0];
    v10 = sub_261CFD654();

    swift_willThrow();
    if (qword_27FED9950 != -1)
    {
      swift_once();
    }

    v11 = sub_261CFF7A4();
    __swift_project_value_buffer(v11, qword_27FEDB208);
    v12 = a1;
    v5 = sub_261CFF784();
    v13 = sub_261CFFE64();

    if (os_log_type_enabled(v5, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      *v14 = 138543362;
      v16 = [v12 objectID];
      *(v14 + 4) = v16;
      *v15 = v16;
      _os_log_impl(&dword_261AE2000, v5, v13, "Failed to fetch subtasks of reminder {objectID: %{public}@}", v14, 0xCu);
      sub_261AE6A40(v15, &unk_27FEDA730, &unk_261D035C0);
      MEMORY[0x26671D560](v15, -1, -1);
      MEMORY[0x26671D560](v14, -1, -1);
    }

    v7 = MEMORY[0x277D84F90];
  }

  return v7;
}

void sub_261B8F424(void **a1, uint64_t a2, void *a3, void *a4, int a5, id *a6, uint64_t *a7, uint64_t a8)
{
  v108 = a8;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDE110, &unk_261D035B0);
  MEMORY[0x28223BE20](v16 - 8);
  v107 = &v97[-v17];
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA108, &unk_261D020C0);
  v19 = MEMORY[0x28223BE20](v18 - 8);
  v103 = &v97[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v19);
  v113 = &v97[-v21];
  v22 = type metadata accessor for ReminderEntity(0);
  v104 = *(v22 - 8);
  v105 = v22;
  MEMORY[0x28223BE20](v22);
  v106 = &v97[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDB270, &qword_261D05768);
  v111 = *(v24 - 1);
  v112 = v24;
  MEMORY[0x28223BE20](v24);
  v110 = &v97[-v25];
  v26 = sub_261CADDB4(*a1, a2);
  if (!v26)
  {
    return;
  }

  v27 = v26;
  LODWORD(v109) = a5;
  v102 = v8;
  v28 = [v26 parentReminder];
  if (v28)
  {
    v29 = v28;
    v30 = [a3 updateReminder_];

    if (a4)
    {
      goto LABEL_4;
    }

LABEL_8:
    v35 = 1;
LABEL_12:
    if ([v27 isSubtask] && (v35 & 1) != 0)
    {
      LOBYTE(v114[0]) = v109 & 1;
      v36 = v102;
      sub_261B8EF04(v27, v114, a3);
      if (!v36)
      {
        v102 = 0;
        v42 = v37;
        v43 = 0;
        goto LABEL_55;
      }

      return;
    }

    goto LABEL_18;
  }

  v30 = 0;
  if (!a4)
  {
    goto LABEL_8;
  }

LABEL_4:
  v31 = v30;
  v32 = [a4 objectID];
  v33 = [v27 list];
  v34 = [v33 objectID];

  if (v32)
  {
    if (v34)
    {
      sub_261B05020(0, &qword_280D21DF0, 0x277D44700);
      v35 = sub_261D000F4();

LABEL_11:
      v30 = v31;
      goto LABEL_12;
    }

    v34 = v32;
  }

  else if (!v34)
  {
    v35 = 1;
    goto LABEL_11;
  }

  [v27 isSubtask];
  v30 = v31;
LABEL_18:
  v38 = *a6;
  v100 = v30;
  if (!v38)
  {
    v39 = [v27 list];
    v40 = [v39 objectID];

    v41 = sub_261CADE84(v40, *a7);
    if (v41)
    {
      v101 = v41;
      sub_261CFCDA4();
      goto LABEL_39;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDA740, &qword_261D05A10);
    v44 = swift_allocObject();
    *(v44 + 16) = xmmword_261D030F0;
    *(v44 + 32) = [v27 list];
    sub_261CFFE94();

    sub_261CFDD24();
    v116 = [v27 list];
    v115 = 0;
    memset(v114, 0, sizeof(v114));
    v45 = a3;
    sub_261CFDF24();
    v101 = v117;
    swift_retain_n();
    v46 = [v27 list];
    v47 = [v46 objectID];

    v48 = *a7;
    if ((*a7 & 0xC000000000000001) != 0)
    {
      if (v48 < 0)
      {
        v49 = *a7;
      }

      else
      {
        v49 = v48 & 0xFFFFFFFFFFFFFF8;
      }

      v50 = sub_261D00274();
      if (__OFADD__(v50, 1))
      {
        __break(1u);
        return;
      }

      *a7 = sub_261CA248C(v49, v50 + 1);
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v114[0] = *a7;
    sub_261BF83B0(v101, v47, isUniquelyReferenced_nonNull_native);
    *a7 = *&v114[0];

    if (qword_27FED9950 == -1)
    {
      goto LABEL_30;
    }

    goto LABEL_78;
  }

  v101 = v38;
  while (1)
  {
    swift_retain_n();
    v68 = sub_261B8F1B0(v27);
    v42 = v68;
    if (v68 >> 62)
    {
      v43 = sub_261D00274();
      if (!v43)
      {
LABEL_50:

        v43 = MEMORY[0x277D84F90];
        goto LABEL_51;
      }
    }

    else
    {
      v43 = *((v68 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v43)
      {
        goto LABEL_50;
      }
    }

    *&v114[0] = MEMORY[0x277D84F90];
    sub_261D003A4();
    if ((v43 & 0x8000000000000000) != 0)
    {
      __break(1u);
      goto LABEL_73;
    }

    v99 = v27;
    v69 = 0;
    do
    {
      if ((v42 & 0xC000000000000001) != 0)
      {
        v70 = MEMORY[0x26671CA10](v69, v42);
      }

      else
      {
        v70 = *(v42 + 8 * v69 + 32);
      }

      v71 = v70;
      ++v69;
      v72 = [a3 updateReminder_];

      sub_261D00374();
      sub_261D003B4();
      sub_261D003C4();
      sub_261D00384();
    }

    while (v43 != v69);

    v43 = *&v114[0];
    v27 = v99;
    v30 = v100;
LABEL_51:
    v73 = [a3 updateReminder_];
    v75 = v110;
    v74 = v111;
    v76 = MEMORY[0x277D45DB0];
    if ((v109 & 1) == 0)
    {
      v76 = MEMORY[0x277D45DB8];
    }

    v77 = v112;
    (*(v111 + 13))(v110, *v76, v112);
    v78 = sub_261CFDD04();

    (*(v74 + 1))(v75, v77);
    v42 = v78;
    LOBYTE(v78) = [v27 isSubtask];

    if (v78)
    {

      v30 = 0;
    }

LABEL_55:
    a3 = v113;
    v79 = type metadata accessor for RecurrentInstanceSpecifier(0);
    (*(*(v79 - 8) + 56))(a3, 1, 1, v79);
    v80 = v30;
    v81 = [v42 listChangeItem];
    if (!v81 || (v82 = v81, v83 = [v81 storage], v82, !v83))
    {

      sub_261B01D70();
      swift_allocError();
      *v85 = 11;
      swift_willThrow();

      sub_261AE6A40(a3, &qword_27FEDA108, &unk_261D020C0);
      return;
    }

    v84 = [v42 storage];
    v109 = [v42 accountCapabilities];
    if (v30)
    {
      v101 = [v80 storage];
    }

    else
    {
      v101 = 0;
    }

    v111 = v83;
    v112 = v80;
    v110 = v84;
    if (!v43)
    {
      v91 = 0;
      goto LABEL_75;
    }

    if (!(v43 >> 62))
    {
      v86 = *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v86)
      {
        goto LABEL_74;
      }

      goto LABEL_64;
    }

LABEL_73:
    v86 = sub_261D00274();
    if (!v86)
    {
LABEL_74:

      v91 = MEMORY[0x277D84F90];
      goto LABEL_75;
    }

LABEL_64:
    v99 = v27;
    *&v114[0] = MEMORY[0x277D84F90];
    sub_261D003A4();
    if ((v86 & 0x8000000000000000) == 0)
    {
      break;
    }

    __break(1u);
LABEL_78:
    swift_once();
LABEL_30:
    v52 = sub_261CFF7A4();
    __swift_project_value_buffer(v52, qword_27FEDB208);
    v53 = v27;
    v54 = sub_261CFF784();
    v55 = sub_261CFFE54();

    v56 = v54;
    if (os_log_type_enabled(v54, v55))
    {
      v57 = swift_slowAlloc();
      v98 = v55;
      v58 = v57;
      v59 = swift_slowAlloc();
      v99 = swift_slowAlloc();
      *&v114[0] = v99;
      *v58 = 138543874;
      v60 = [v53 objectID];
      *(v58 + 4) = v60;
      *v59 = v60;
      *(v58 + 12) = 2114;
      v61 = [v53 list];
      v62 = [v61 objectID];

      *(v58 + 14) = v62;
      v59[1] = v62;
      *(v58 + 22) = 2082;
      if (v109)
      {
        v63 = 0x6D6F74746F62;
      }

      else
      {
        v63 = 7368564;
      }

      if (v109)
      {
        v64 = 0xE600000000000000;
      }

      else
      {
        v64 = 0xE300000000000000;
      }

      v65 = sub_261B879C8(v63, v64, v114);

      *(v58 + 24) = v65;
      v66 = v56;
      _os_log_impl(&dword_261AE2000, v56, v98, "[MoveRemindersToListAppIntent] Target list is nil, so we move reminder with id: %{public}@, within its original list: %{public}@, to position: %{public}s", v58, 0x20u);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDA730, &unk_261D035C0);
      swift_arrayDestroy();
      MEMORY[0x26671D560](v59, -1, -1);
      v67 = v99;
      __swift_destroy_boxed_opaque_existential_0(v99);
      MEMORY[0x26671D560](v67, -1, -1);
      MEMORY[0x26671D560](v58, -1, -1);
    }

    else
    {
    }

LABEL_39:
    v30 = v100;
  }

  v87 = 0;
  do
  {
    if ((v43 & 0xC000000000000001) != 0)
    {
      v88 = MEMORY[0x26671CA10](v87, v43);
    }

    else
    {
      v88 = *(v43 + 8 * v87 + 32);
    }

    v89 = v88;
    ++v87;
    v90 = [v88 storage];

    sub_261D00374();
    sub_261D003B4();
    sub_261D003C4();
    sub_261D00384();
  }

  while (v86 != v87);

  a3 = v113;
  v91 = *&v114[0];
  v27 = v99;
LABEL_75:
  v92 = v103;
  v93 = v107;
  v94 = v106;
  sub_261AE7A78(a3, v103);
  sub_261C7EDC4(v110, v111, v109, v101, v91, v92, v94);
  v95 = v112;

  sub_261AE6A40(a3, &qword_27FEDA108, &unk_261D020C0);
  v96 = [v27 objectID];
  sub_261B4C910(v94, v93);
  (*(v104 + 56))(v93, 0, 1, v105);
  sub_261BF39C0(v93, v96);

  sub_261B4C974(v94);
}