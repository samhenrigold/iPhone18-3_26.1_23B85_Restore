uint64_t sub_21901CCB4()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + 3);
  __swift_destroy_boxed_opaque_existential_1(v0 + 8);
  __swift_destroy_boxed_opaque_existential_1(v0 + 13);

  return swift_deallocClassInstance();
}

void sub_21901CD98(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_21901CDFC(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_21901CE44(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_21901CD98(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_21901CEB4(uint64_t a1, unint64_t *a2, unint64_t *a3, void *a4)
{
  if (!*a2)
  {
    sub_2186C6148(255, a3, a4);
    sub_219BE3794();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v6)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t sub_21901CF30()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 32));

  return swift_deallocClassInstance();
}

uint64_t sub_21901D05C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v6 = sub_219BE8944();
  v5[7] = v6;
  v5[8] = *(v6 - 8);
  v5[9] = swift_task_alloc();
  sub_219BEF6B4();
  v5[10] = swift_task_alloc();
  v7 = sub_219BEF594();
  v5[11] = v7;
  v5[12] = *(v7 - 8);
  v5[13] = swift_task_alloc();
  sub_219BEF5B4();
  v5[14] = swift_task_alloc();
  sub_219BEF644();
  v5[15] = swift_task_alloc();
  sub_219BEF664();
  v5[16] = swift_task_alloc();
  v8 = sub_219BEF694();
  v5[17] = v8;
  v5[18] = *(v8 - 8);
  v5[19] = swift_task_alloc();
  sub_219021960(0, &qword_280E91358, MEMORY[0x277D326A8]);
  v5[20] = swift_task_alloc();
  v9 = sub_219BE8164();
  v5[21] = v9;
  v5[22] = *(v9 - 8);
  v5[23] = swift_task_alloc();
  v5[24] = swift_task_alloc();
  sub_219021960(0, &qword_280E91368, MEMORY[0x277D32698]);
  v5[25] = swift_task_alloc();
  sub_219BEF604();
  v5[26] = swift_task_alloc();
  v10 = sub_219BEF6C4();
  v5[27] = v10;
  v5[28] = *(v10 - 8);
  v5[29] = swift_task_alloc();
  v11 = sub_219BDCAE4();
  v5[30] = v11;
  v5[31] = *(v11 - 8);
  v5[32] = swift_task_alloc();
  v12 = sub_219BDCAB4();
  v5[33] = v12;
  v5[34] = *(v12 - 8);
  v5[35] = swift_task_alloc();
  sub_219021960(0, &unk_280E90C60, MEMORY[0x277D32FE0]);
  v5[36] = swift_task_alloc();
  v13 = sub_219BF0634();
  v5[37] = v13;
  v5[38] = *(v13 - 8);
  v5[39] = swift_task_alloc();
  v14 = sub_219BDCAF4();
  v5[40] = v14;
  v5[41] = *(v14 - 8);
  v5[42] = swift_task_alloc();
  v5[43] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21901D5D0, 0, 0);
}

uint64_t sub_21901D5D0()
{
  v1 = v0[43];
  v17 = v0[41];
  v18 = v0[42];
  v19 = v0[40];
  v3 = v0[38];
  v2 = v0[39];
  v5 = v0[36];
  v4 = v0[37];
  v6 = v0[34];
  v44 = v0[35];
  v28 = v6;
  v42 = v0[33];
  v43 = v0[32];
  v35 = v0[31];
  v36 = v0[30];
  v31 = v0[29];
  v33 = v0[28];
  v34 = v0[27];
  v22 = v0[25];
  v21 = v0[24];
  v41 = v0[23];
  v45 = v0[21];
  v46 = v0[22];
  v23 = v0[20];
  v24 = v0[18];
  v25 = v0[19];
  v26 = v0[17];
  v27 = v0[12];
  v29 = v0[13];
  v30 = v0[11];
  v39 = v0[7];
  v40 = v0[9];
  v37 = v0[6];
  v38 = v0[8];
  v7 = v0[4];
  sub_219BEE674();
  sub_219BEE664();
  sub_219BEE654();

  (*(v3 + 104))(v2, *MEMORY[0x277D32ED0], v4);
  v8 = sub_219BF0BD4();
  (*(*(v8 - 8) + 56))(v5, 1, 1, v8);
  (*(v6 + 104))(v44, *MEMORY[0x277D6D178], v42);
  sub_219BE8004();
  sub_219BF6B74();
  sub_219BE8004();
  sub_219BE8044();
  sub_219BE7FD4();
  sub_219BE8064();
  sub_219BE8034();
  sub_219BE7FF4();
  sub_219BE8024();
  sub_219BE8084();
  sub_219BE8014();
  (*(v17 + 16))(v18, v1, v19);
  sub_219BDCAC4();
  sub_219BEF5F4();
  v20 = *(v46 + 16);
  v20(v21, v7, v45);
  sub_219BEF614();
  v9 = sub_219BEF624();
  (*(*(v9 - 8) + 56))(v22, 0, 1, v9);
  v10 = sub_219BEF684();
  (*(*(v10 - 8) + 56))(v23, 1, 1, v10);
  (*(v24 + 104))(v25, *MEMORY[0x277D326B0], v26);
  sub_219BEF654();
  sub_219BEF5F4();
  (*(v27 + 104))(v29, *MEMORY[0x277D32680], v30);
  sub_219BEF5A4();
  sub_219BEF6A4();

  sub_219BEF5C4();
  v11 = sub_219BEE0E4();
  (*(v33 + 8))(v31, v34);
  (*(v35 + 8))(v43, v36);
  (*(v28 + 8))(v44, v42);
  sub_218864D54(v5, &unk_280E90C60, MEMORY[0x277D32FE0]);
  (*(v3 + 8))(v2, v4);
  v20(v41, v7, v45);
  (*(v38 + 104))(v40, *MEMORY[0x277D6E080], v39);
  v12 = swift_task_alloc();
  v12[2] = v37;
  v12[3] = v11;
  v12[4] = v7;
  sub_2189493AC(sub_219021724, v12);

  v13 = v0[43];
  v14 = v0[41];
  v32 = v0[40];
  type metadata accessor for MagazineFeedLayoutModel(0);
  sub_2187EF004();
  sub_2186EC038(&qword_280EC4848, type metadata accessor for MagazineFeedLayoutModel, &unk_219C4FA80);
  sub_219BE6564();
  sub_219BEE0C4();

  (*(v14 + 8))(v13, v32);

  v15 = v0[1];

  return v15();
}

void sub_21901DE84(void (**a1)(char *, uint64_t)@<X0>, uint64_t a2@<X1>, void (*a3)(char *, char *, uint64_t)@<X2>, uint64_t a4@<X3>, void *a5@<X4>, uint64_t a6@<X8>)
{
  v283 = a5;
  v271 = a4;
  v288 = a3;
  v284 = a6;
  v285 = a2;
  v7 = type metadata accessor for RecommendedIssuesMagazineFeedGroup(0);
  MEMORY[0x28223BE20](v7 - 8);
  v279 = (&v235 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = type metadata accessor for InlineCategoriesMagazineFeedGroup(0);
  MEMORY[0x28223BE20](v9 - 8);
  v267 = (&v235 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v277 = sub_219BDCAE4();
  v276 = *(v277 - 8);
  MEMORY[0x28223BE20](v277);
  v273 = &v235 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v275 = sub_219BE8164();
  v274 = *(v275 - 8);
  MEMORY[0x28223BE20](v275);
  v272 = &v235 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v270 = type metadata accessor for MagazineFeedEmbeddedSupplementaryOptions(0);
  MEMORY[0x28223BE20](v270);
  v265 = &v235 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v266 = &v235 - v15;
  MEMORY[0x28223BE20](v16);
  v264 = &v235 - v17;
  v18 = type metadata accessor for MyMagazinesMagazineFeedGroup(0);
  MEMORY[0x28223BE20](v18 - 8);
  v278 = (&v235 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v255 = type metadata accessor for CuratedMagazineFeedGroup(0);
  MEMORY[0x28223BE20](v255);
  v257 = &v235 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v256 = sub_219BED8D4();
  v254 = *(v256 - 8);
  MEMORY[0x28223BE20](v256);
  v253 = &v235 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for NewspaperMagazineFeedGroup(0);
  MEMORY[0x28223BE20](v22 - 8);
  v252 = &v235 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for BestOfBundleMagazineFeedGroup(0);
  MEMORY[0x28223BE20](v24 - 8);
  v251 = &v235 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for TrendingMagazineFeedGroup(0);
  MEMORY[0x28223BE20](v26 - 8);
  v250 = &v235 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v248 = type metadata accessor for TopicMagazineFeedGroup(0);
  MEMORY[0x28223BE20](v248);
  v249 = &v235 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v246 = type metadata accessor for NewIssueMagazineFeedGroup(0);
  MEMORY[0x28223BE20](v246);
  v247 = &v235 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v244 = type metadata accessor for FeaturedIssueArticleMagazineFeedGroup(0);
  MEMORY[0x28223BE20](v244);
  v245 = &v235 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = type metadata accessor for FeaturedIssueMagazineFeedGroup(0);
  MEMORY[0x28223BE20](v31 - 8);
  v243 = &v235 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v241 = type metadata accessor for FeaturedArticleMagazineFeedGroup(0);
  MEMORY[0x28223BE20](v241);
  v242 = &v235 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v294 = type metadata accessor for MagazineFeedLayoutModel(0);
  MEMORY[0x28223BE20](v294);
  v292 = &v235 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v291 = sub_219BEF974();
  v302 = *(v291 - 8);
  MEMORY[0x28223BE20](v291);
  v290 = &v235 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218C3ED68(0);
  v289 = v36;
  v293 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v238 = &v235 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v38);
  v239 = &v235 - v39;
  MEMORY[0x28223BE20](v40);
  v237 = &v235 - v41;
  MEMORY[0x28223BE20](v42);
  v236 = &v235 - v43;
  MEMORY[0x28223BE20](v44);
  v235 = &v235 - v45;
  MEMORY[0x28223BE20](v46);
  v48 = &v235 - v47;
  v269 = sub_219BEE074();
  v268 = *(v269 - 8);
  MEMORY[0x28223BE20](v269);
  v50 = &v235 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v51);
  v240 = &v235 - v52;
  MEMORY[0x28223BE20](v53);
  v55 = &v235 - v54;
  MEMORY[0x28223BE20](v56);
  v58 = &v235 - v57;
  MEMORY[0x28223BE20](v59);
  v61 = &v235 - v60;
  MEMORY[0x28223BE20](v62);
  v64 = &v235 - v63;
  v282 = sub_219BE9FA4();
  v281 = *(v282 - 8);
  MEMORY[0x28223BE20](v282);
  v262 = &v235 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v66);
  v263 = &v235 - v67;
  MEMORY[0x28223BE20](v68);
  v261 = &v235 - v69;
  MEMORY[0x28223BE20](v70);
  v260 = &v235 - v71;
  MEMORY[0x28223BE20](v72);
  v259 = &v235 - v73;
  MEMORY[0x28223BE20](v74);
  v258 = &v235 - v75;
  v76 = type metadata accessor for MagazineFeedSectionDescriptor(0);
  MEMORY[0x28223BE20](v76);
  v78 = &v235 - ((v77 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218951DB0(0);
  v280 = v79;
  v286 = a1;
  sub_219BE6934();
  v80 = v78;
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v123 = v242;
      sub_219021888(v78, v242, type metadata accessor for FeaturedArticleMagazineFeedGroup);
      v124 = v287;
      sub_219020924(v288, v123 + *(v241 + 20), v284);
      v87 = v124;
      sub_219021828(v123, type metadata accessor for FeaturedArticleMagazineFeedGroup);
      if (v124)
      {
        goto LABEL_35;
      }

      return;
    case 2u:
      v89 = v243;
      sub_219021888(v78, v243, type metadata accessor for FeaturedIssueMagazineFeedGroup);
      v110 = v287;
      sub_219020924(v288, v89, v284);
      v87 = v110;
      if (v110)
      {
        v91 = type metadata accessor for FeaturedIssueMagazineFeedGroup;
        goto LABEL_33;
      }

      v153 = type metadata accessor for FeaturedIssueMagazineFeedGroup;
      goto LABEL_78;
    case 3u:
      v89 = v245;
      sub_219021888(v78, v245, type metadata accessor for FeaturedIssueArticleMagazineFeedGroup);
      v115 = v287;
      sub_219020924(v288, v89 + *(v244 + 20), v284);
      v87 = v115;
      if (v115)
      {
        v91 = type metadata accessor for FeaturedIssueArticleMagazineFeedGroup;
        goto LABEL_33;
      }

      v153 = type metadata accessor for FeaturedIssueArticleMagazineFeedGroup;
      goto LABEL_78;
    case 4u:

      sub_2190218F0(0, &qword_280E8F978, type metadata accessor for InlineCategoriesMagazineFeedGroup, "identifier group ");
      v94 = v267;
      sub_219021888(&v78[*(v93 + 48)], v267, type metadata accessor for InlineCategoriesMagazineFeedGroup);
      v95 = v274;
      v96 = *(v274 + 16);
      v97 = v272;
      v98 = v275;
      v96(v272, v271, v275);
      v99 = v266;
      v96(v266, v97, v98);
      sub_219BEE084();
      v100 = v273;
      sub_219BEE094();
      sub_219BDCAD4();
      (*(v276 + 8))(v100, v277);
      (*(v95 + 8))(v97, v98);
      v285 = sub_218F341E0(v94, v99);
      v298 = v285;
      v299 = v101;
      v279 = v101;
      v300 = v102;
      v301 = 1;
      v103 = v281;
      v104 = v263;
      v105 = v282;
      (*(v281 + 104))(v263, *MEMORY[0x277D6E9B0], v282);
      sub_219021748();
      v295 = 0u;
      v296 = 0u;
      v297 = 0;
      v106 = v240;
      v107 = v287;
      sub_219BEE0A4();
      v87 = v107;
      if (v107)
      {
        sub_218864D54(&v295, &qword_280E91020, sub_2189BD704);
        (*(v103 + 8))(v104, v105);
        sub_219021828(v99, type metadata accessor for MagazineFeedEmbeddedSupplementaryOptions);
        sub_219021828(v267, type metadata accessor for InlineCategoriesMagazineFeedGroup);

        goto LABEL_38;
      }

      v154 = v267;
      sub_218864D54(&v295, &qword_280E91020, sub_2189BD704);
      v155 = sub_219BEE004();
      (*(v268 + 8))(v106, v269);
      v156 = *(v155 + 16);
      if (v156)
      {
        v280 = 0;
        *&v295 = MEMORY[0x277D84F90];
        sub_218C36738(0, v156, 0);
        v157 = v295;
        v158 = *(v302 + 16);
        v159 = (*(v302 + 80) + 32) & ~*(v302 + 80);
        v283 = v155;
        v160 = v155 + v159;
        v287 = *(v302 + 72);
        v288 = v158;
        v302 += 16;
        v285 = v293 + 32;
        v286 = (v302 - 8);
        v161 = v239;
        v162 = v158;
        do
        {
          v163 = v290;
          v164 = v291;
          v162(v290, v160, v291);
          v162(v292, v163, v164);
          sub_2186EC038(&unk_280EC4850, type metadata accessor for MagazineFeedLayoutModel, &unk_219C4FA48);
          sub_219BE75D4();
          (*v286)(v163, v164);
          *&v295 = v157;
          v166 = *(v157 + 16);
          v165 = *(v157 + 24);
          if (v166 >= v165 >> 1)
          {
            sub_218C36738((v165 > 1), v166 + 1, 1);
            v157 = v295;
          }

          *(v157 + 16) = v166 + 1;
          (*(v293 + 32))(v157 + ((*(v293 + 80) + 32) & ~*(v293 + 80)) + *(v293 + 72) * v166, v161, v289);
          v160 += v287;
          --v156;
        }

        while (v156);

        v231 = v267;
        v99 = v266;
      }

      else
      {

        v231 = v154;
      }

      sub_2187EF004();
      sub_2186EC038(&qword_280EC4848, type metadata accessor for MagazineFeedLayoutModel, &unk_219C4FA80);
      sub_219BE81A4();
      sub_219021828(v99, type metadata accessor for MagazineFeedEmbeddedSupplementaryOptions);
      v233 = type metadata accessor for InlineCategoriesMagazineFeedGroup;
      goto LABEL_98;
    case 5u:
      sub_2186EBC7C(0);
      v279 = *&v78[*(v125 + 48)];
      sub_219021888(v78, v278, type metadata accessor for MyMagazinesMagazineFeedGroup);
      v126 = v274;
      v127 = *(v274 + 16);
      v128 = v272;
      v129 = v275;
      v127(v272, v271, v275);
      v130 = v264;
      v127(v264, v128, v129);
      sub_219BEE084();
      v131 = v273;
      sub_219BEE094();
      sub_219BDCAD4();
      (*(v276 + 8))(v131, v277);
      (*(v126 + 8))(v128, v129);
      v298 = sub_218F33358(v278, v279, v130);
      v299 = v132;
      v300 = v133;
      v301 = 1;
      v134 = v281;
      v135 = v261;
      v136 = v282;
      (*(v281 + 104))(v261, *MEMORY[0x277D6E9B0], v282);
      sub_219021748();
      v295 = 0u;
      v296 = 0u;
      v297 = 0;
      v137 = v287;
      sub_219BEE0A4();
      v280 = v137;
      if (v137)
      {
        sub_218864D54(&v295, &qword_280E91020, sub_2189BD704);
        (*(v134 + 8))(v135, v136);
        sub_219021828(v130, type metadata accessor for MagazineFeedEmbeddedSupplementaryOptions);
        sub_219021828(v278, type metadata accessor for MyMagazinesMagazineFeedGroup);

        v87 = v280;
        goto LABEL_35;
      }

      v203 = v278;
      sub_218864D54(&v295, &qword_280E91020, sub_2189BD704);
      v204 = sub_219BEE004();
      (*(v268 + 8))(v55, v269);
      v205 = *(v204 + 16);
      if (v205)
      {
        *&v295 = MEMORY[0x277D84F90];
        sub_218C36738(0, v205, 0);
        v206 = v295;
        v207 = *(v302 + 16);
        v208 = (*(v302 + 80) + 32) & ~*(v302 + 80);
        v283 = v204;
        v209 = v204 + v208;
        v287 = *(v302 + 72);
        v288 = v207;
        v302 += 16;
        v285 = v293 + 32;
        v286 = (v302 - 8);
        v210 = v237;
        v211 = v207;
        do
        {
          v212 = v290;
          v213 = v291;
          v211(v290, v209, v291);
          v211(v292, v212, v213);
          sub_2186EC038(&unk_280EC4850, type metadata accessor for MagazineFeedLayoutModel, &unk_219C4FA48);
          sub_219BE75D4();
          (*v286)(v212, v213);
          *&v295 = v206;
          v215 = *(v206 + 16);
          v214 = *(v206 + 24);
          if (v215 >= v214 >> 1)
          {
            sub_218C36738((v214 > 1), v215 + 1, 1);
            v206 = v295;
          }

          *(v206 + 16) = v215 + 1;
          (*(v293 + 32))(v206 + ((*(v293 + 80) + 32) & ~*(v293 + 80)) + *(v293 + 72) * v215, v210, v289);
          v209 += v287;
          --v205;
        }

        while (v205);

        v130 = v264;
        v232 = v278;
      }

      else
      {

        v232 = v203;
      }

      sub_2187EF004();
      sub_2186EC038(&qword_280EC4848, type metadata accessor for MagazineFeedLayoutModel, &unk_219C4FA80);
      sub_219BE81A4();
      sub_219021828(v130, type metadata accessor for MagazineFeedEmbeddedSupplementaryOptions);
      sub_219021828(v232, type metadata accessor for MyMagazinesMagazineFeedGroup);
      return;
    case 6u:
      v89 = v247;
      sub_219021888(v78, v247, type metadata accessor for NewIssueMagazineFeedGroup);
      v139 = v287;
      sub_219020924(v288, v89 + *(v246 + 20), v284);
      v87 = v139;
      if (v139)
      {
        v91 = type metadata accessor for NewIssueMagazineFeedGroup;
        goto LABEL_33;
      }

      v153 = type metadata accessor for NewIssueMagazineFeedGroup;
      goto LABEL_78;
    case 7u:

      sub_2190218F0(0, &unk_280E8F990, type metadata accessor for PaywallMagazineFeedGroup, "identifier  ");
      v82 = *(v116 + 48);
      v299 = 0;
      v300 = 0;
      v298 = 1;
      v301 = 2;
      v117 = v281;
      v118 = v260;
      v119 = v282;
      (*(v281 + 104))(v260, *MEMORY[0x277D6E9B0], v282);
      sub_219021748();
      v295 = 0u;
      v296 = 0u;
      v297 = 0;
      v120 = v287;
      sub_219BEE0A4();
      v87 = v120;
      if (v120)
      {
        sub_218864D54(&v295, &qword_280E91020, sub_2189BD704);
        (*(v117 + 8))(v118, v119);
        v88 = type metadata accessor for PaywallMagazineFeedGroup;
        goto LABEL_22;
      }

      v283 = v78;
      sub_218864D54(&v295, &qword_280E91020, sub_2189BD704);
      v179 = sub_219BEE004();
      (*(v268 + 8))(v58, v269);
      v180 = *(v179 + 16);
      if (v180)
      {
        v282 = v82;
        v280 = 0;
        *&v295 = MEMORY[0x277D84F90];
        sub_218C36738(0, v180, 0);
        v181 = v295;
        v288 = *(v302 + 16);
        v182 = (*(v302 + 80) + 32) & ~*(v302 + 80);
        v281 = v179;
        v183 = (v179 + v182);
        v184 = *(v302 + 72);
        v302 += 16;
        v286 = (v302 - 8);
        v287 = v184;
        v285 = v293 + 32;
        v185 = v236;
        do
        {
          v186 = v290;
          v187 = v291;
          v188 = v288;
          v288(v290, v183, v291);
          v188(v292, v186, v187);
          sub_2186EC038(&unk_280EC4850, type metadata accessor for MagazineFeedLayoutModel, &unk_219C4FA48);
          sub_219BE75D4();
          (*v286)(v186, v187);
          *&v295 = v181;
          v190 = *(v181 + 16);
          v189 = *(v181 + 24);
          if (v190 >= v189 >> 1)
          {
            sub_218C36738((v189 > 1), v190 + 1, 1);
            v181 = v295;
          }

          *(v181 + 16) = v190 + 1;
          (*(v293 + 32))(v181 + ((*(v293 + 80) + 32) & ~*(v293 + 80)) + *(v293 + 72) * v190, v185, v289);
          v183 += v287;
          --v180;
        }

        while (v180);

        v82 = v282;
      }

      else
      {
      }

      sub_2187EF004();
      sub_2186EC038(&qword_280EC4848, type metadata accessor for MagazineFeedLayoutModel, &unk_219C4FA80);
      sub_219BE81A4();
      v234 = type metadata accessor for PaywallMagazineFeedGroup;
      goto LABEL_93;
    case 8u:
      sub_219021888(v78, v279, type metadata accessor for RecommendedIssuesMagazineFeedGroup);
      v141 = v274;
      v142 = *(v274 + 16);
      v143 = v272;
      v144 = v275;
      v142(v272, v271, v275);
      v145 = v265;
      v142(v265, v143, v144);
      sub_219BEE084();
      v146 = v273;
      sub_219BEE094();
      sub_219BDCAD4();
      (*(v276 + 8))(v146, v277);
      (*(v141 + 8))(v143, v144);
      v285 = sub_218F3498C(v279, v145);
      v298 = v285;
      v299 = v147;
      v300 = v148;
      v301 = 1;
      v149 = v281;
      v150 = v262;
      v151 = v282;
      (*(v281 + 104))(v262, *MEMORY[0x277D6E9B0], v282);
      sub_219021748();
      v295 = 0u;
      v296 = 0u;
      v297 = 0;
      v152 = v287;
      sub_219BEE0A4();
      v87 = v152;
      if (v152)
      {
        sub_218864D54(&v295, &qword_280E91020, sub_2189BD704);
        (*(v149 + 8))(v150, v151);
        sub_219021828(v145, type metadata accessor for MagazineFeedEmbeddedSupplementaryOptions);
        sub_219021828(v279, type metadata accessor for RecommendedIssuesMagazineFeedGroup);

LABEL_38:

        goto LABEL_35;
      }

      v218 = v279;
      sub_218864D54(&v295, &qword_280E91020, sub_2189BD704);
      v219 = sub_219BEE004();
      (*(v268 + 8))(v50, v269);
      v220 = *(v219 + 16);
      if (v220)
      {
        v280 = 0;
        *&v295 = MEMORY[0x277D84F90];
        sub_218C36738(0, v220, 0);
        v221 = v295;
        v222 = *(v302 + 16);
        v223 = (*(v302 + 80) + 32) & ~*(v302 + 80);
        v283 = v219;
        v224 = v219 + v223;
        v287 = *(v302 + 72);
        v288 = v222;
        v302 += 16;
        v285 = v293 + 32;
        v286 = (v302 - 8);
        v225 = v238;
        v226 = v222;
        do
        {
          v227 = v290;
          v228 = v291;
          v226(v290, v224, v291);
          v226(v292, v227, v228);
          sub_2186EC038(&unk_280EC4850, type metadata accessor for MagazineFeedLayoutModel, &unk_219C4FA48);
          sub_219BE75D4();
          (*v286)(v227, v228);
          *&v295 = v221;
          v230 = *(v221 + 16);
          v229 = *(v221 + 24);
          if (v230 >= v229 >> 1)
          {
            sub_218C36738((v229 > 1), v230 + 1, 1);
            v221 = v295;
          }

          *(v221 + 16) = v230 + 1;
          (*(v293 + 32))(v221 + ((*(v293 + 80) + 32) & ~*(v293 + 80)) + *(v293 + 72) * v230, v225, v289);
          v224 += v287;
          --v220;
        }

        while (v220);

        v231 = v279;
        v145 = v265;
      }

      else
      {

        v231 = v218;
      }

      sub_2187EF004();
      sub_2186EC038(&qword_280EC4848, type metadata accessor for MagazineFeedLayoutModel, &unk_219C4FA80);
      sub_219BE81A4();
      sub_219021828(v145, type metadata accessor for MagazineFeedEmbeddedSupplementaryOptions);
      v233 = type metadata accessor for RecommendedIssuesMagazineFeedGroup;
LABEL_98:
      v216 = v233;
      v217 = v231;
      goto LABEL_79;
    case 9u:
      v89 = v249;
      sub_219021888(v78, v249, type metadata accessor for TopicMagazineFeedGroup);
      v109 = v287;
      sub_219020924(v288, v89 + *(v248 + 20), v284);
      v87 = v109;
      if (v109)
      {
        v91 = type metadata accessor for TopicMagazineFeedGroup;
        goto LABEL_33;
      }

      v153 = type metadata accessor for TopicMagazineFeedGroup;
      goto LABEL_78;
    case 0xAu:
      v89 = v250;
      sub_219021888(v78, v250, type metadata accessor for TrendingMagazineFeedGroup);
      v140 = v287;
      sub_219020924(v288, v89, v284);
      v87 = v140;
      if (v140)
      {
        v91 = type metadata accessor for TrendingMagazineFeedGroup;
        goto LABEL_33;
      }

      v153 = type metadata accessor for TrendingMagazineFeedGroup;
      goto LABEL_78;
    case 0xBu:
      v89 = v251;
      sub_219021888(v78, v251, type metadata accessor for BestOfBundleMagazineFeedGroup);
      v92 = v287;
      sub_219020924(v288, v89, v284);
      v87 = v92;
      if (v92)
      {
        v91 = type metadata accessor for BestOfBundleMagazineFeedGroup;
        goto LABEL_33;
      }

      v153 = type metadata accessor for BestOfBundleMagazineFeedGroup;
      goto LABEL_78;
    case 0xCu:
      v89 = v252;
      sub_219021888(v78, v252, type metadata accessor for NewspaperMagazineFeedGroup);
      v108 = v287;
      sub_219020924(v288, v89, v284);
      v87 = v108;
      if (v108)
      {
        v91 = type metadata accessor for NewspaperMagazineFeedGroup;
        goto LABEL_33;
      }

      v153 = type metadata accessor for NewspaperMagazineFeedGroup;
      goto LABEL_78;
    case 0xDu:
      v111 = v254;
      v112 = v253;
      v113 = v256;
      (*(v254 + 32))(v253, v80, v256);
      v138 = v287;
      sub_219020924(v288, v112, v284);
      v87 = v138;
      if (v138)
      {
        goto LABEL_28;
      }

      (*(v111 + 8))(v112, v113);
      return;
    case 0xEu:
      v89 = v257;
      sub_219021888(v78, v257, type metadata accessor for CuratedMagazineFeedGroup);
      v90 = v287;
      sub_219020924(v288, v89 + *(v255 + 20), v284);
      v87 = v90;
      if (v90)
      {
        v91 = type metadata accessor for CuratedMagazineFeedGroup;
LABEL_33:
        v121 = v91;
        v122 = v89;
        goto LABEL_34;
      }

      v153 = type metadata accessor for CuratedMagazineFeedGroup;
LABEL_78:
      v216 = v153;
      v217 = v89;
      goto LABEL_79;
    case 0xFu:
      v299 = 0;
      v300 = 0;
      v298 = 1;
      v301 = 2;
      v111 = v281;
      v112 = v258;
      v113 = v282;
      (*(v281 + 104))(v258, *MEMORY[0x277D6E9B0], v282);
      sub_219021748();
      v295 = 0u;
      v296 = 0u;
      v297 = 0;
      v114 = v287;
      sub_219BEE0A4();
      v87 = v114;
      if (!v114)
      {
        sub_218864D54(&v295, &qword_280E91020, sub_2189BD704);
        v167 = sub_219BEE004();
        (*(v268 + 8))(v64, v269);
        v168 = *(v167 + 16);
        if (v168)
        {
          v280 = 0;
          *&v295 = MEMORY[0x277D84F90];
          sub_218C36738(0, v168, 0);
          v169 = v295;
          v170 = *(v302 + 16);
          v171 = (*(v302 + 80) + 32) & ~*(v302 + 80);
          v283 = v167;
          v172 = (v167 + v171);
          v287 = *(v302 + 72);
          v288 = v170;
          v302 += 16;
          v285 = v293 + 32;
          v286 = (v302 - 8);
          do
          {
            v173 = v290;
            v174 = v291;
            v175 = v48;
            v176 = v288;
            v288(v290, v172, v291);
            v176(v292, v173, v174);
            v48 = v175;
            sub_2186EC038(&unk_280EC4850, type metadata accessor for MagazineFeedLayoutModel, &unk_219C4FA48);
            sub_219BE75D4();
            (*v286)(v173, v174);
            *&v295 = v169;
            v178 = *(v169 + 16);
            v177 = *(v169 + 24);
            if (v178 >= v177 >> 1)
            {
              sub_218C36738((v177 > 1), v178 + 1, 1);
              v169 = v295;
            }

            *(v169 + 16) = v178 + 1;
            (*(v293 + 32))(v169 + ((*(v293 + 80) + 32) & ~*(v293 + 80)) + *(v293 + 72) * v178, v175, v289);
            v172 += v287;
            --v168;
          }

          while (v168);
        }

        sub_2187EF004();
        sub_2186EC038(&qword_280EC4848, type metadata accessor for MagazineFeedLayoutModel, &unk_219C4FA80);
        sub_219BE81A4();
        return;
      }

      sub_218864D54(&v295, &qword_280E91020, sub_2189BD704);
LABEL_28:
      (*(v111 + 8))(v112, v113);
      goto LABEL_35;
    default:

      sub_2190218F0(0, &unk_280E8F980, type metadata accessor for CategoriesMagazineFeedGroup, "identifier  ");
      v82 = *(v81 + 48);
      v299 = 0;
      v300 = 0;
      v298 = 1;
      v301 = 2;
      v83 = v281;
      v84 = v259;
      v85 = v282;
      (*(v281 + 104))(v259, *MEMORY[0x277D6E9B0], v282);
      sub_219021748();
      v295 = 0u;
      v296 = 0u;
      v297 = 0;
      v86 = v287;
      sub_219BEE0A4();
      v87 = v86;
      if (v86)
      {
        sub_218864D54(&v295, &qword_280E91020, sub_2189BD704);
        (*(v83 + 8))(v84, v85);
        v88 = type metadata accessor for CategoriesMagazineFeedGroup;
LABEL_22:
        v121 = v88;
        v122 = &v78[v82];
LABEL_34:
        sub_219021828(v122, v121);
LABEL_35:
        *v283 = v87;
      }

      else
      {
        v283 = v78;
        sub_218864D54(&v295, &qword_280E91020, sub_2189BD704);
        v191 = sub_219BEE004();
        (*(v268 + 8))(v61, v269);
        v192 = *(v191 + 16);
        if (v192)
        {
          v282 = v82;
          v280 = 0;
          *&v295 = MEMORY[0x277D84F90];
          sub_218C36738(0, v192, 0);
          v193 = v295;
          v288 = *(v302 + 16);
          v194 = (*(v302 + 80) + 32) & ~*(v302 + 80);
          v281 = v191;
          v195 = (v191 + v194);
          v196 = *(v302 + 72);
          v302 += 16;
          v286 = (v302 - 8);
          v287 = v196;
          v285 = v293 + 32;
          v197 = v235;
          do
          {
            v198 = v290;
            v199 = v291;
            v200 = v288;
            v288(v290, v195, v291);
            v200(v292, v198, v199);
            sub_2186EC038(&unk_280EC4850, type metadata accessor for MagazineFeedLayoutModel, &unk_219C4FA48);
            sub_219BE75D4();
            (*v286)(v198, v199);
            *&v295 = v193;
            v202 = *(v193 + 16);
            v201 = *(v193 + 24);
            if (v202 >= v201 >> 1)
            {
              sub_218C36738((v201 > 1), v202 + 1, 1);
              v193 = v295;
            }

            *(v193 + 16) = v202 + 1;
            (*(v293 + 32))(v193 + ((*(v293 + 80) + 32) & ~*(v293 + 80)) + *(v293 + 72) * v202, v197, v289);
            v195 += v287;
            --v192;
          }

          while (v192);

          v82 = v282;
        }

        else
        {
        }

        sub_2187EF004();
        sub_2186EC038(&qword_280EC4848, type metadata accessor for MagazineFeedLayoutModel, &unk_219C4FA80);
        sub_219BE81A4();
        v234 = type metadata accessor for CategoriesMagazineFeedGroup;
LABEL_93:
        v216 = v234;
        v217 = v283 + v82;
LABEL_79:
        sub_219021828(v217, v216);
      }

      return;
  }
}

uint64_t sub_219020924@<X0>(void (*a1)(char *, char *, uint64_t)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v74 = a2;
  v88 = a1;
  v72 = a3;
  v67 = type metadata accessor for MagazineFeedLayoutModel(0);
  MEMORY[0x28223BE20](v67);
  v92 = &v64 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = sub_219BEF974();
  v94 = *(v91 - 8);
  MEMORY[0x28223BE20](v91);
  v90 = &v64 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218C3ED68(0);
  v89 = v5;
  v93 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v65 = &v64 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = sub_219BE9FA4();
  v68 = *(v69 - 8);
  MEMORY[0x28223BE20](v69);
  v71 = &v64 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219021960(0, &qword_280EE9048, MEMORY[0x277D6D1A0]);
  MEMORY[0x28223BE20](v8 - 8);
  v83 = &v64 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v82 = &v64 - v11;
  MEMORY[0x28223BE20](v12);
  v81 = &v64 - v13;
  MEMORY[0x28223BE20](v14);
  v80 = &v64 - v15;
  v16 = sub_219BDCB14();
  v85 = *(v16 - 8);
  v86 = v16;
  MEMORY[0x28223BE20](v16);
  v79 = &v64 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = sub_219BEE074();
  v73 = *(v70 - 8);
  MEMORY[0x28223BE20](v70);
  v66 = &v64 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v84 = &v64 - v20;
  v78 = MEMORY[0x277D32218];
  sub_219021960(0, &qword_280E91990, MEMORY[0x277D32218]);
  MEMORY[0x28223BE20](v21 - 8);
  v23 = &v64 - v22;
  v77 = MEMORY[0x277D325F8];
  sub_219021960(0, &qword_280E91548, MEMORY[0x277D325F8]);
  MEMORY[0x28223BE20](v24 - 8);
  v26 = &v64 - v25;
  v76 = MEMORY[0x277D31DD0];
  sub_219021960(0, &qword_280E924F8, MEMORY[0x277D31DD0]);
  MEMORY[0x28223BE20](v27 - 8);
  v29 = &v64 - v28;
  v30 = sub_219BF1904();
  v75 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v32 = &v64 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BED874();
  v33 = sub_219BEDB64();
  (*(*(v33 - 8) + 56))(v29, 1, 1, v33);
  v34 = sub_219BEF4E4();
  (*(*(v34 - 8) + 56))(v26, 1, 1, v34);
  v35 = sub_219BEEA64();
  (*(*(v35 - 8) + 56))(v23, 1, 1, v35);
  sub_218BB7DB4();
  sub_218951DB0(0);
  sub_2186EC038(&qword_280EB0358, type metadata accessor for MagazineFeedSectionDescriptor, &unk_219C76D08);
  sub_2186EC038(&qword_280ED5CF0, type metadata accessor for MagazineFeedModel, &unk_219C6F110);
  sub_219BE69F4();

  sub_218864D54(v23, &qword_280E91990, v78);
  sub_218864D54(v26, &qword_280E91548, v77);
  sub_218864D54(v29, &qword_280E924F8, v76);
  v36 = *(v75 + 8);
  v36(v32, v30);
  sub_219BED874();
  v37 = sub_219BF44B4();
  v36(v32, v30);
  v97 = sub_219BF3594();
  v98 = MEMORY[0x277D33EB8];
  v96[0] = v37;
  v38 = sub_219BDCB24();
  v39 = *(*(v38 - 8) + 56);
  v39(v80, 1, 1, v38);
  v39(v81, 1, 1, v38);
  v39(v82, 1, 1, v38);
  v40 = v38;
  v41 = v79;
  v39(v83, 1, 1, v40);
  v42 = v84;

  sub_219BDCB04();
  v43 = v95;
  sub_219BEE0B4();
  if (v43)
  {
    (*(v85 + 8))(v41, v86);

    return sub_218864D54(v96, &qword_280E91020, sub_2189BD704);
  }

  else
  {
    v83 = v37;
    (*(v85 + 8))(v41, v86);

    sub_218864D54(v96, &qword_280E91020, sub_2189BD704);
    v45 = v66;
    v46 = v70;
    (*(v73 + 16))(v66, v42, v70);
    v96[0] = sub_21999E93C(v45);
    v96[1] = v47;
    v96[2] = v48;
    LOBYTE(v97) = 0;
    v49 = *MEMORY[0x277D6E980];
    v50 = sub_219BE9F84();
    v51 = v71;
    (*(*(v50 - 8) + 104))(v71, v49, v50);
    (*(v68 + 104))(v51, *MEMORY[0x277D6E988], v69);
    v52 = sub_219BEE004();
    v53 = *(v52 + 16);
    if (v53)
    {
      v82 = 0;
      v99 = MEMORY[0x277D84F90];
      sub_218C36738(0, v53, 0);
      v95 = v99;
      v54 = *(v94 + 16);
      v55 = (*(v94 + 80) + 32) & ~*(v94 + 80);
      v81 = v52;
      v56 = (v52 + v55);
      v87 = *(v94 + 72);
      v88 = v54;
      v85 = v93 + 32;
      v86 = (v94 + 8);
      v57 = v65;
      v94 += 16;
      do
      {
        v58 = v90;
        v59 = v91;
        v60 = v88;
        v88(v90, v56, v91);
        v60(v92, v58, v59);
        sub_2186EC038(&unk_280EC4850, type metadata accessor for MagazineFeedLayoutModel, &unk_219C4FA48);
        sub_219BE75D4();
        (*v86)(v58, v59);
        v99 = v95;
        v62 = *(v95 + 16);
        v61 = *(v95 + 24);
        if (v62 >= v61 >> 1)
        {
          sub_218C36738((v61 > 1), v62 + 1, 1);
          v95 = v99;
        }

        v63 = v95;
        *(v95 + 16) = v62 + 1;
        (*(v93 + 32))(v63 + ((*(v93 + 80) + 32) & ~*(v93 + 80)) + *(v93 + 72) * v62, v57, v89);
        v56 += v87;
        --v53;
      }

      while (v53);

      v46 = v70;
    }

    else
    {

      v95 = MEMORY[0x277D84F90];
    }

    sub_2187EF004();
    sub_2186EC038(&qword_280EC4848, type metadata accessor for MagazineFeedLayoutModel, &unk_219C4FA80);
    sub_219BE81A4();

    return (*(v73 + 8))(v84, v46);
  }
}

uint64_t sub_219021660(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_2187608D4;

  return sub_21901D05C(a1, a2, a3, a4);
}

unint64_t sub_219021748()
{
  result = qword_280EE5958;
  if (!qword_280EE5958)
  {
    sub_218951DB0(255);
    sub_2186EC038(&qword_280EB0358, type metadata accessor for MagazineFeedSectionDescriptor, &unk_219C76D08);
    sub_2186EC038(&qword_280ED5CF0, type metadata accessor for MagazineFeedModel, &unk_219C6F110);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EE5958);
  }

  return result;
}

uint64_t sub_219021828(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_219021888(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_2190218F0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  if (!*a2)
  {
    a3(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v6)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_219021960(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_219BF6FB4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_2190219B4(uint64_t a1)
{
  v3 = type metadata accessor for AudioFeedTrack(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_219BE15B4();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 104))(v11, *MEMORY[0x277D2F4C8], v7, v9);
  v12 = sub_219BDD0F4();
  (*(v8 + 8))(v11, v7);
  __swift_project_boxed_opaque_existential_1((v1 + 16), *(v1 + 40));
  type metadata accessor for AudioTrackDetailsViewController(0);
  sub_218C1620C(a1, v6);
  v13 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v14 = (v5 + v13 + 7) & 0xFFFFFFFFFFFFFFF8;
  v15 = swift_allocObject();
  sub_218C162E4(v6, v15 + v13);
  *(v15 + v14) = v12;

  v16 = sub_219BE1E04();

  if (v16)
  {
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_219021C04(void *a1, uint64_t a2, uint64_t a3)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for AudioFeedTrack(0);
  sub_219BE1BA4();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BDD274();
  return sub_219BE1B94();
}

uint64_t sub_219021CC8(void *a1)
{
  v3 = *(type metadata accessor for AudioFeedTrack(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_219021C04(a1, v1 + v4, v5);
}

void sub_219021D74(unint64_t a1@<X0>, double *a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  v5 = v4;
  *&v10 = COERCE_DOUBLE(sub_219BDCAF4());
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v175 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2187FF18C(0);
  MEMORY[0x28223BE20](v14);
  v17 = &v175 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *a2;
  v19 = a2[1];
  if (v19 > 0.0)
  {
    v175 = v15;
    v176 = v17;
    v178 = v11;
    v179 = *&v10;
    v198 = v18;
    v20 = sub_219BE8D54();
    v21 = [v20 horizontalSizeClass];
    v177 = *&v13;
    if (v21 == 1)
    {

      v22 = 0;
    }

    else
    {
      v57 = [v20 verticalSizeClass];

      v22 = v57 != 1;
    }

    v58 = sub_219BE8D54();
    v59 = [v58 horizontalSizeClass];

    v60 = 14.0;
    v61 = a1 >> 60;
    if (v59 == 1 && v61 <= 6)
    {
      v60 = *(&unk_219C53950 + ((a1 >> 57) & 0x78));
    }

    x = v60;
    *&v197 = a4;
    v62 = 0.0;
    v23 = v22;
    if ((sub_219BE8D14() & 1) == 0)
    {
      sub_219BE8D34();
      v62 = v63 + -10.0;
    }

    v64 = a2[3];
    v65 = a2[5];
    sub_219BF6034();
    v67 = v66;
    v68 = sub_219BE8D54();
    v69 = [v68 horizontalSizeClass];

    v70 = v61 == 4 && v69 == 1;
    v71 = 12.0;
    if (!v70)
    {
      v71 = 0.0;
    }

    v72 = *&v198 - v67;
    v73 = v19 - x - v71;
    v180 = v65;
    sub_219BF6034();
    if (*&v197 <= 0.0)
    {
      v75 = v73 - v62;
    }

    else
    {
      v75 = v73 - v62 - *&v197 + -10.0;
    }

    v76 = *&v198 - v74;
    v189 = v64;
    v77 = v64;
    v181 = v62;
    v78 = v62;
    v204 = CGRectIntegral(*(&v75 - 3));
    y = v204.origin.y;
    x = v204.origin.x;
    width = v204.size.width;
    height = v204.size.height;
    __swift_project_boxed_opaque_existential_1((v5 + 16), *(v5 + 40));
    v80 = sub_219BE8D04();
    v31 = sub_2188158D8(a1, v22, v80, v72);

    if (v23)
    {
      v81 = 2;
    }

    else
    {
      v81 = qword_219C53988[v61];
    }

    [v31 boundingRectWithSize:v81 options:0 context:{v72, v73}];
    v83 = ceil(v82);
    v84 = COERCE_DOUBLE(sub_218C8F1D0(v23));
    [*&v84 ascender];
    v86 = v85;
    [*&v84 capHeight];
    v88 = v86 - v87;
    v89 = sub_21881505C(v23, a1, v72);
    v205.origin.y = y;
    v205.origin.x = x;
    v205.size.width = width;
    v205.size.height = height;
    v90 = CGRectGetHeight(v205) - v83;
    [v89 descender];
    v206.origin.y = v90 + fabs(v91);
    v206.origin.x = 0.0;
    v194 = 0.0;
    v186 = v72;
    v206.size.width = v72;
    v206.size.height = v83;
    v207 = CGRectIntegral(v206);
    v92 = v207.origin.x;
    v93 = v207.size.width;
    v192 = v207.origin.y;
    v94 = v88 + v207.origin.y;
    v190 = v207.size.height;
    v95 = v207.size.height - v88;
    [v89 descender];
    v208.size.height = v95 - fabs(v96);
    v193 = v92;
    v208.origin.x = v92;
    v208.origin.y = v94;
    v191 = v93;
    v208.size.width = v93;
    v209 = CGRectIntegral(v208);
    v97 = v209.origin.x;
    v98 = v209.origin.y;
    v99 = v209.size.width;
    v196 = v209.size.height;
    v100 = sub_21881A36C(a1);
    v101 = 0.0;
    v102 = 0;
    v103 = 0;
    v195 = height;
    if (v100)
    {
      sub_219BE3E44();
      sub_219BE3E34();
      v194 = v104;
      v106 = v105;
      v107 = v99;
      v108 = v97;
      v109 = x;
      v210.origin.x = x;
      v110 = v98;
      v112 = width;
      v111 = y;
      v210.origin.y = y;
      v210.size.width = width;
      v210.size.height = v195;
      v188 = CGRectGetWidth(v210);
      v211.origin.x = v108;
      v211.origin.y = v110;
      v211.size.width = v107;
      v211.size.height = v196;
      MaxY = CGRectGetMaxY(v211);
      v212.origin.x = v109;
      v97 = v108;
      v99 = v107;
      v212.origin.y = v111;
      v98 = v110;
      v212.size.width = v112;
      height = v195;
      v212.size.height = v195;
      v114 = CGRectGetHeight(v212);
      if (v114 >= MaxY)
      {
        v115 = MaxY;
      }

      else
      {
        v115 = v114;
      }

      v213.size.width = v194;
      v213.origin.x = v188 - v194;
      v213.origin.y = v115 - v106;
      v213.size.height = v106;
      *(&v101 - 1) = CGRectIntegral(v213);
      v194 = v116;
    }

    v185 = v103;
    v187 = v102;
    v188 = v101;
    sub_219022A80(a1);
    v118 = v117;
    v120 = v119;
    v122 = v121;
    v124 = v123;
    if (v61 <= 6 && ((1 << v61) & 0x73) != 0)
    {
      v214.origin.x = v97;
      v214.origin.y = v98;
      v214.size.width = v99;
      v214.size.height = v196;
      MidY = CGRectGetMidY(v214);
      v215.origin.x = v118;
      v215.origin.y = v120;
      v215.size.width = v122;
      v215.size.height = v124;
      v126 = MidY + CGRectGetHeight(v215) * -0.5;
    }

    else
    {
      v126 = 0.0;
    }

    v216.origin.y = y;
    v216.origin.x = x;
    v216.size.width = width;
    v216.size.height = height;
    v127 = CGRectGetWidth(v216);
    v217.origin.x = v118;
    v217.origin.y = v120;
    v217.size.width = v122;
    v217.size.height = v124;
    v128 = v127 - CGRectGetWidth(v217);
    v218.origin.x = v118;
    v218.origin.y = v120;
    v218.size.width = v122;
    v218.size.height = v124;
    v129 = CGRectGetWidth(v218);
    v219.origin.x = v118;
    v219.origin.y = v120;
    v219.size.width = v122;
    v219.size.height = v124;
    v220.size.height = CGRectGetHeight(v219);
    v220.origin.x = v128;
    v220.origin.y = v126;
    v220.size.width = v129;
    v221 = CGRectIntegral(v220);
    v183 = v221.origin.y;
    v184 = v221.origin.x;
    v182 = v221.size.width;
    v130 = v221.size.height;
    v131 = 0.0;
    v132 = 0.0;
    v133 = 0.0;
    v134 = 0.0;
    v135 = *&v197;
    v136 = v186;
    if (v61)
    {
      goto LABEL_43;
    }

    v196 = v84;
    v137 = swift_projectBox();
    v138 = v176;
    sub_2190230F8(v137, v176, sub_2187FF18C);

    v139 = *(v175 + 48);
    sub_219023098(v138 + *(v175 + 64), type metadata accessor for MastheadModelSupplementaryInfo);
    sub_219023098(v138 + v139, type metadata accessor for MastheadModelContext);
    v140 = sub_219BE8D54();
    v141 = [v140 horizontalSizeClass];

    v142 = sub_219BE8D54();
    v143 = [v142 userInterfaceIdiom];

    if (v141 == 1)
    {
      if (!v143)
      {
        v176 = v31;
        v162 = v89;
        v163 = 0;
        goto LABEL_39;
      }

      if (v143 == 1)
      {
        v176 = v89;

        v144 = objc_opt_self();
        sub_219BF0CD4();
        v146 = v177;
        v145 = v178;
        v147 = v179;
        (*(*&v178 + 104))(COERCE_DOUBLE(*&v177), *MEMORY[0x277D6D198], COERCE_DOUBLE(*&v179));
        sub_219BF0CC4();
        v149 = v148;
        (*(*&v145 + 8))(COERCE_DOUBLE(*&v146), COERCE_DOUBLE(*&v147));
        v150 = [v144 systemFontOfSize:v149 weight:*MEMORY[0x277D74410]];
        [v150 lineHeight];
        v134 = v151;

        type metadata accessor for Localized();
        ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
        v153 = [objc_opt_self() bundleForClass_];
        v154 = sub_219BDB5E4();
        v156 = v155;

        v157 = sub_219BE8D54();
        v158 = sub_218C8FC78(v154, v156);

        v159 = v189;
        v133 = *&v198 - v189 - v180 + -60.0 + -110.0;
        [v158 boundingRectWithSize:2 options:0 context:{v133, 44.0}];
        v161 = v160;

        v131 = v159 + 60.0;
        if (v161 == v134)
        {
          v132 = v181 + v134 * -0.5 + -22.0;
        }

        else
        {
          v132 = v181 + -44.0;
          v134 = 44.0;
        }

        v84 = v196;
        v89 = v176;
LABEL_43:
        v177 = v132;
        v178 = v131;
        v179 = v133;
        v180 = v134;
        v181 = v130;
        if (v135 <= 0.0)
        {

          v197 = 0u;
          v196 = 0.0;
          v26 = 0.0;
          v25 = 0.0;
          v27 = 0.0;
          v33 = 0uLL;
          v34 = 0uLL;
          v35 = 0uLL;
          v36 = 0uLL;
          v37 = 0uLL;
          v38 = 0uLL;
          v39 = 0uLL;
          v40 = 0uLL;
          v41 = 0uLL;
          v42 = 0uLL;
          v43 = 0uLL;
          v24 = v198;
          v44 = v195;
        }

        else
        {
          v223.origin.y = y;
          v223.origin.x = x;
          v223.size.width = width;
          v44 = v195;
          v223.size.height = v195;
          v224.origin.y = CGRectGetMaxY(v223) + 10.0;
          v224.origin.x = v189;
          v224.size.width = v136;
          v224.size.height = v135;
          v225 = CGRectIntegral(v224);
          v196 = v225.origin.x;
          v26 = v225.origin.y;
          v25 = v225.size.width;
          v27 = v225.size.height;

          v197 = 0u;
          v33 = 0uLL;
          v34 = 0uLL;
          v35 = 0uLL;
          v36 = 0uLL;
          v37 = 0uLL;
          v38 = 0uLL;
          v39 = 0uLL;
          v40 = 0uLL;
          v41 = 0uLL;
          v42 = 0uLL;
          v43 = 0uLL;
          v24 = v198;
        }

        v29 = v192;
        v28 = v193;
        v32 = v190;
        v30 = v191;
        v49 = v194;
        v51 = v187;
        v50 = v188;
        v53 = v184;
        v52 = v185;
        v56 = v182;
        v54 = v183;
        v47 = v180;
        v55 = v181;
        v46 = v178;
        v48 = v179;
        v45 = v177;
        goto LABEL_47;
      }
    }

    v176 = v31;
    v162 = v89;
    v163 = 1;
LABEL_39:

    v164 = objc_opt_self();
    sub_219BF0CD4();
    v165 = v177;
    v166 = v178;
    v167 = v179;
    (*(*&v178 + 104))(COERCE_DOUBLE(*&v177), *MEMORY[0x277D6D198], COERCE_DOUBLE(*&v179));
    sub_219BF0CC4();
    v169 = v168;
    (*(*&v166 + 8))(COERCE_DOUBLE(*&v165), COERCE_DOUBLE(*&v167));
    v170 = [v164 systemFontOfSize:v169 weight:*MEMORY[0x277D74410]];
    [v170 lineHeight];
    v134 = v171;

    if (v163)
    {
      v222.origin.y = v192;
      v222.origin.x = v193;
      v222.size.height = v190;
      v222.size.width = v191;
      v172 = v181 + CGRectGetMinY(v222) - v134;
      v173 = -2.0;
    }

    else
    {
      v172 = v181 + v134 * -0.5;
      v173 = -22.0;
    }

    v132 = v172 + v173;
    v84 = v196;
    v89 = v162;
    v31 = v176;
    v133 = *&v198 - v189 - v180;
    v131 = v189;
    goto LABEL_43;
  }

  if (qword_27CC07D20 != -1)
  {
    swift_once();
  }

  memcpy(v203, &byte_27CCD8250, sizeof(v203));
  sub_21902303C(v203, v202);
  LOBYTE(v23) = v203[0];
  v202[0] = *(v203 + 1);
  *(v202 + 3) = DWORD1(v203[0]);
  v24 = *(v203 + 8);
  v196 = *(&v203[1] + 1);
  v25 = *(&v203[2] + 1);
  v26 = *&v203[2];
  v28 = *(&v203[3] + 1);
  v27 = *&v203[3];
  v30 = *(&v203[4] + 1);
  v29 = *&v203[4];
  v31 = *(&v203[5] + 1);
  v32 = *&v203[5];
  v197 = v203[6];
  v33 = v203[7];
  v34 = v203[8];
  v35 = v203[9];
  v36 = v203[10];
  v37 = v203[11];
  v38 = v203[12];
  v39 = v203[13];
  v40 = v203[14];
  v41 = v203[15];
  v42 = v203[16];
  v43 = v203[17];
  y = *(&v203[18] + 1);
  x = *&v203[18];
  v44 = *(&v203[19] + 1);
  width = *&v203[19];
  v45 = *(&v203[20] + 1);
  v46 = *&v203[20];
  v47 = *(&v203[21] + 1);
  v48 = *&v203[21];
  v50 = *(&v203[22] + 1);
  v49 = *&v203[22];
  v52 = *(&v203[23] + 1);
  v51 = *&v203[23];
  v54 = *(&v203[24] + 1);
  v53 = *&v203[24];
  v55 = *(&v203[25] + 1);
  v56 = *&v203[25];
LABEL_47:
  *(a3 + 8) = v24;
  *(a3 + 24) = v196;
  *(a3 + 32) = v26;
  *(a3 + 40) = v25;
  *(a3 + 48) = v27;
  *a3 = v23;
  *(a3 + 1) = v202[0];
  *(a3 + 4) = *(v202 + 3);
  *(a3 + 56) = v28;
  *(a3 + 64) = v29;
  *(a3 + 72) = v30;
  *(a3 + 80) = v32;
  *(a3 + 88) = v31;
  *(a3 + 96) = v197;
  *(a3 + 112) = v33;
  *(a3 + 128) = v34;
  *(a3 + 144) = v35;
  *(a3 + 160) = v36;
  *(a3 + 176) = v37;
  *(a3 + 192) = v38;
  *(a3 + 208) = v39;
  *(a3 + 224) = v40;
  *(a3 + 240) = v41;
  *(a3 + 256) = v42;
  *(a3 + 272) = v43;
  v174 = y;
  *(a3 + 288) = x;
  *(a3 + 296) = v174;
  *(a3 + 304) = width;
  *(a3 + 312) = v44;
  *(a3 + 320) = v46;
  *(a3 + 328) = v45;
  *(a3 + 336) = v48;
  *(a3 + 344) = v47;
  *(a3 + 352) = v49;
  *(a3 + 360) = v50;
  *(a3 + 368) = v51;
  *(a3 + 376) = v52;
  *(a3 + 384) = v53;
  *(a3 + 392) = v54;
  *(a3 + 400) = v56;
  *(a3 + 408) = v55;
}

void sub_219022A80(unint64_t a1)
{
  v2 = type metadata accessor for MastheadModelSupplementaryInfo(0);
  MEMORY[0x28223BE20](v2);
  v4 = v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186FE720(0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = v37 - v9;
  v11 = sub_219BEC004();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = v37 - v16;
  v18 = a1 >> 60;
  if ((a1 >> 60) - 2 < 7)
  {
    (*(v12 + 56))(v10, 1, 1, v11, v15);
LABEL_3:
    sub_219023098(v10, sub_2186FE720);
    return;
  }

  v38 = v14;
  if (v18)
  {
    sub_218A6E454(0);
    v23 = v22;
    v24 = swift_projectBox();
    sub_2190230F8(v24 + *(v23 + 48), v10, sub_2186FE720);
  }

  else
  {
    sub_2187FF18C(0);
    v20 = v19;
    v21 = swift_projectBox();
    sub_2190230F8(v21 + *(v20 + 64), v4, type metadata accessor for MastheadModelSupplementaryInfo);
    sub_2190230F8(&v4[*(v2 + 24)], v10, sub_2186FE720);
    sub_219023098(v4, type metadata accessor for MastheadModelSupplementaryInfo);
  }

  v39 = *(v12 + 48);
  if (v39(v10, 1, v11) == 1)
  {
    goto LABEL_3;
  }

  v37[0] = *(v12 + 32);
  v37[1] = v12 + 32;
  (v37[0])(v17, v10, v11);
  v25 = sub_219BEBFF4();
  v26 = v17;
  v27 = *(v12 + 8);
  v27(v26, v11);
  if (v25)
  {

    if (v18)
    {
      sub_218A6E454(0);
      v32 = v31;
      v33 = swift_projectBox();
      sub_2190230F8(v33 + *(v32 + 48), v7, sub_2186FE720);
    }

    else
    {
      sub_2187FF18C(0);
      v29 = v28;
      v30 = swift_projectBox();
      sub_2190230F8(v30 + *(v29 + 64), v4, type metadata accessor for MastheadModelSupplementaryInfo);
      sub_2190230F8(&v4[*(v2 + 24)], v7, sub_2186FE720);
      sub_219023098(v4, type metadata accessor for MastheadModelSupplementaryInfo);
    }

    if (v39(v7, 1, v11) == 1)
    {
      sub_219023098(v7, sub_2186FE720);
    }

    else
    {
      v34 = v38;
      (v37[0])(v38, v7, v11);
      v35 = sub_219BEBFF4();
      if (v35)
      {
        v36 = v35;
        if (sub_219BEBFE4())
        {
          [v36 frame];
          CGRectIntegral(v40);

          v27(v34, v11);
        }

        else
        {
          v27(v34, v11);
        }
      }

      else
      {
        v27(v34, v11);
      }
    }
  }
}

uint64_t sub_219022F88()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_219023098(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2190230F8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

double sub_219023160(unint64_t a1, double a2)
{
  v3 = a1 >> 60;
  if (a1 >> 60 != 6 || (v4 = sub_219BE8D54(), v5 = [v4 userInterfaceIdiom], v4, v6 = 0.0, !v5))
  {
    v7 = sub_219BE8D54();
    v8 = [v7 horizontalSizeClass];

    if (v8 == 1 && v3 <= 6 && ((1 << v3) & 0x73) != 0)
    {
      v9 = 0;
      v10 = 0x4050000000000000;
    }

    else
    {
      v9 = 1;
      v10 = 0x4054800000000000;
    }

    v11 = *&v10;
    v12 = sub_219BE8D14();
    v13 = 0.0;
    if ((v12 & 1) == 0)
    {
      sub_219BE8D34();
      v13 = v14 + -10.0;
    }

    v6 = v11 + v13;
    v15 = sub_219BE8D54();
    v16 = [v15 horizontalSizeClass];

    if (v3 == 4 && v16 == 1)
    {
      v6 = v6 + 12.0;
    }

    if (a2 > 0.0)
    {
      v6 = a2 + 10.0 + v6;
    }

    sub_219BE8D74();
    if (v17 <= 0.0)
    {
      v18 = 1;
    }

    else
    {
      v18 = v9;
    }

    if ((v18 & 1) == 0)
    {
      sub_219BE8D74();
      return v6 + v19;
    }
  }

  return v6;
}

uint64_t sub_2190232CC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v84 = a2;
  sub_2186F64EC(0);
  v89 = v3;
  v83 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v82 = v62 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218CE8A90(0);
  MEMORY[0x28223BE20](v5 - 8);
  v81 = v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186E3B14(0);
  v87 = v7;
  v78 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v79 = v62 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v80 = v62 - v10;
  v85 = type metadata accessor for TopicMagazineFeedGroupKnobs(0);
  MEMORY[0x28223BE20](v85);
  v12 = v62 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218CE8AB0(0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = v62 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v88 = v62 - v17;
  sub_218CE8B24(0);
  MEMORY[0x28223BE20](v18 - 8);
  v77 = v62 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v76 = v62 - v21;
  sub_219024570(0, &qword_280E8CC70, sub_2190244B8, &type metadata for TopicMagazineFeedGroupKnobs.Keys, MEMORY[0x277D844C8]);
  v86 = v22;
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v25 = v62 - v24;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2190244B8();
  v26 = v90;
  sub_219BF7B34();
  if (v26)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v72 = v23;
  v73 = 0;
  v75 = v15;
  v90 = v12;
  v74 = a1;
  LOBYTE(v97) = 0;
  sub_2186EC7A0(&qword_280E919C8, sub_2186E3B14, MEMORY[0x277D321B0]);
  v28 = v76;
  v29 = v87;
  sub_219BF7674();
  LOBYTE(v97) = 1;
  sub_218CE8B98();
  sub_219BF7674();
  v99 = v102;
  LOBYTE(v95) = 4;
  sub_219BF7674();
  v69 = v97;
  v68 = v98;
  LOBYTE(v95) = 2;
  sub_218CE8BEC();
  sub_219BF7674();
  v70 = v101;
  LOBYTE(v93) = 5;
  sub_219BF7674();
  v67 = v95;
  v66 = v96;
  LOBYTE(v91) = 6;
  sub_219BF7674();
  v65 = v93;
  v64 = v94;
  v100 = 7;
  sub_219BF7674();
  v63 = v91;
  v62[1] = v92;
  v100 = 3;
  sub_2186EC7A0(&qword_280E91838, sub_2186F64EC, MEMORY[0x277D32328]);
  sub_219BF7674();
  v30 = v77;
  sub_218CE8CA0(v28, v77, sub_218CE8B24);
  v31 = v78;
  v32 = *(v78 + 48);
  v33 = v32(v30, 1, v29);
  v71 = v25;
  if (v33 == 1)
  {
    v34 = v30;
    v35 = v28;
    v36 = v87;
    v37 = v90;
    v38 = v75;
    if (qword_280E91AB8 != -1)
    {
      swift_once();
    }

    v39 = __swift_project_value_buffer(v36, qword_280F61818);
    v40 = v79;
    (*(v31 + 16))(v79, v39, v36);
    v41 = v32(v34, 1, v36);
    v42 = v36;
    v28 = v35;
    v43 = v40;
    if (v41 != 1)
    {
      sub_218CE8C40(v34, sub_218CE8B24);
    }
  }

  else
  {
    v43 = v79;
    v42 = v87;
    (*(v31 + 32))(v79, v30, v87);
    v37 = v90;
    v38 = v75;
  }

  v44 = sub_219BEDB04();
  v45 = v81;
  (*(*(v44 - 8) + 56))(v81, 1, 1, v44);
  v46 = v80;
  sub_219BEEA04();
  sub_218CE8C40(v45, sub_218CE8A90);
  (*(v31 + 8))(v43, v42);
  (*(v31 + 32))(v37, v46, v42);
  v47 = v99;
  if (v99 == 3)
  {
    v47 = 0;
  }

  v48 = v85;
  v37[*(v85 + 20)] = v47;
  v49 = v70;
  if (v70 == 4)
  {
    v49 = 0;
  }

  v50 = v48;
  v37[*(v48 + 24)] = v49;
  v51 = v88;
  sub_218CE8CA0(v88, v38, sub_218CE8AB0);
  v52 = v83;
  v53 = *(v83 + 48);
  v54 = v89;
  if (v53(v38, 1, v89) == 1)
  {
    type metadata accessor for MagazineFeedServiceConfig(0);
    sub_2186EC7A0(&unk_280EBDFB0, type metadata accessor for MagazineFeedServiceConfig, &unk_219CC7FE8);
    v55 = v28;
    v56 = v82;
    sub_219BEEC74();
    v50 = v85;
    sub_218CE8C40(v51, sub_218CE8AB0);
    sub_218CE8C40(v55, sub_218CE8B24);
    v57 = v75;
    (*(v72 + 8))(v71, v86);
    v58 = v53(v57, 1, v54);
    v59 = v74;
    v60 = v84;
    if (v58 != 1)
    {
      sub_218CE8C40(v57, sub_218CE8AB0);
    }
  }

  else
  {
    sub_218CE8C40(v51, sub_218CE8AB0);
    sub_218CE8C40(v28, sub_218CE8B24);
    (*(v72 + 8))(v71, v86);
    v56 = v82;
    (*(v52 + 32))(v82, v38, v54);
    v59 = v74;
    v60 = v84;
  }

  v61 = v90;
  (*(v52 + 32))(&v90[*(v50 + 28)], v56, v54);
  sub_21902450C(v61, v60);
  return __swift_destroy_boxed_opaque_existential_1(v59);
}

uint64_t sub_219023DA4(void *a1)
{
  v3 = v1;
  sub_219024570(0, &qword_280E8C468, sub_2190245D8, &type metadata for TopicMagazineFeedGroupKnobs.CodingKeys, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2190245D8();
  sub_219BF7B44();
  v18 = 0;
  sub_2186E3B14(0);
  sub_2186EC7A0(&qword_280E919D0, sub_2186E3B14, MEMORY[0x277D321A8]);
  sub_219BF7834();
  if (!v2)
  {
    v10 = type metadata accessor for TopicMagazineFeedGroupKnobs(0);
    v17 = *(v3 + *(v10 + 20));
    v16 = 1;
    sub_218CE8E28();
    sub_219BF7834();
    v15 = *(v3 + *(v10 + 24));
    v14 = 2;
    sub_218CE8E7C();
    sub_219BF7834();
    v13 = 3;
    sub_2186F64EC(0);
    sub_2186EC7A0(&unk_280E91840, sub_2186F64EC, MEMORY[0x277D32320]);
    sub_219BF7834();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_219024060()
{
  v1 = *v0;
  v2 = 0x73656C7572;
  v3 = 0x72685465726F6373;
  if (v1 != 6)
  {
    v3 = 0x726F635365736162;
  }

  v4 = 0x727563634F78616DLL;
  if (v1 != 4)
  {
    v4 = 0x746C754D6B6E6172;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x7942726564726FLL;
  if (v1 != 2)
  {
    v5 = 0x6C6F6F706572;
  }

  if (*v0)
  {
    v2 = 0x704F7265746C6966;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_219024184@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_21902485C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2190241AC(uint64_t a1)
{
  v2 = sub_2190244B8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2190241E8(uint64_t a1)
{
  v2 = sub_2190244B8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_219024224()
{
  v1 = 0x73656C7572;
  v2 = 0x7942726564726FLL;
  if (*v0 != 2)
  {
    v2 = 0x6C6F6F706572;
  }

  if (*v0)
  {
    v1 = 0x704F7265746C6966;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_2190242A0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_219024B0C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2190242C8(uint64_t a1)
{
  v2 = sub_2190245D8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_219024304(uint64_t a1)
{
  v2 = sub_2190245D8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_219024374(uint64_t a1, uint64_t a2)
{
  type metadata accessor for MagazineFeedServiceConfig(0);
  sub_2186EC7A0(&unk_280EBDFB0, type metadata accessor for MagazineFeedServiceConfig, &unk_219CC7FE8);
  if ((sub_219BEE9F4() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for TopicMagazineFeedGroupKnobs(0);
  if (*&aNone_15[8 * *(a1 + *(v4 + 20))] == *&aNone_15[8 * *(a2 + *(v4 + 20))])
  {
    swift_bridgeObjectRelease_n();
  }

  else
  {
    v5 = sub_219BF78F4();
    swift_bridgeObjectRelease_n();
    if ((v5 & 1) == 0)
    {
      return 0;
    }
  }

  if ((sub_21908B134(*(a1 + *(v4 + 24)), *(a2 + *(v4 + 24))) & 1) == 0)
  {
    return 0;
  }

  return sub_219BEEC64();
}

unint64_t sub_2190244B8()
{
  result = qword_280EB6220;
  if (!qword_280EB6220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EB6220);
  }

  return result;
}

uint64_t sub_21902450C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TopicMagazineFeedGroupKnobs(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_219024570(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

unint64_t sub_2190245D8()
{
  result = qword_280EB6248;
  if (!qword_280EB6248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EB6248);
  }

  return result;
}

unint64_t sub_219024650()
{
  result = qword_27CC152A0;
  if (!qword_27CC152A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC152A0);
  }

  return result;
}

unint64_t sub_2190246A8()
{
  result = qword_27CC152A8;
  if (!qword_27CC152A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC152A8);
  }

  return result;
}

unint64_t sub_219024700()
{
  result = qword_280EB6238;
  if (!qword_280EB6238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EB6238);
  }

  return result;
}

unint64_t sub_219024758()
{
  result = qword_280EB6240;
  if (!qword_280EB6240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EB6240);
  }

  return result;
}

unint64_t sub_2190247B0()
{
  result = qword_280EB6228;
  if (!qword_280EB6228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EB6228);
  }

  return result;
}

unint64_t sub_219024808()
{
  result = qword_280EB6230;
  if (!qword_280EB6230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EB6230);
  }

  return result;
}

uint64_t sub_21902485C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x73656C7572 && a2 == 0xE500000000000000;
  if (v4 || (sub_219BF78F4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x704F7265746C6966 && a2 == 0xEC0000006E6F6974 || (sub_219BF78F4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7942726564726FLL && a2 == 0xE700000000000000 || (sub_219BF78F4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6C6F6F706572 && a2 == 0xE600000000000000 || (sub_219BF78F4() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x727563634F78616DLL && a2 == 0xED000065636E6572 || (sub_219BF78F4() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x746C754D6B6E6172 && a2 == 0xEE007265696C7069 || (sub_219BF78F4() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x72685465726F6373 && a2 == 0xEE00646C6F687365 || (sub_219BF78F4() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x726F635365736162 && a2 == 0xE900000000000065)
  {

    return 7;
  }

  else
  {
    v6 = sub_219BF78F4();

    if (v6)
    {
      return 7;
    }

    else
    {
      return 8;
    }
  }
}

uint64_t sub_219024B0C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x73656C7572 && a2 == 0xE500000000000000;
  if (v4 || (sub_219BF78F4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x704F7265746C6966 && a2 == 0xEC0000006E6F6974 || (sub_219BF78F4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7942726564726FLL && a2 == 0xE700000000000000 || (sub_219BF78F4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6C6F6F706572 && a2 == 0xE600000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_219BF78F4();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_219024C94@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v15 = a2;
  v4 = sub_219BF1934();
  v14 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v16 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219025134(0, &qword_280E8C9D8, MEMORY[0x277D844C8]);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v10 = &v14 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2190250E0();
  sub_219BF7B34();
  if (!v2)
  {
    v12 = v14;
    v11 = v15;
    sub_218933D7C(&qword_280E90808, MEMORY[0x277D33488]);
    sub_219BF7734();
    (*(v8 + 8))(v10, v7);
    (*(v12 + 32))(v11, v16, v4);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_219024EDC(uint64_t a1)
{
  v2 = sub_2190250E0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_219024F18(uint64_t a1)
{
  v2 = sub_2190250E0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_219024F6C(void *a1)
{
  sub_219025134(0, &qword_280E8C320, MEMORY[0x277D84538]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2190250E0();
  sub_219BF7B44();
  sub_219BF1934();
  sub_218933D7C(&qword_280E90810, MEMORY[0x277D33480]);
  sub_219BF7834();
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_2190250E0()
{
  result = qword_280EA4038[0];
  if (!qword_280EA4038[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280EA4038);
  }

  return result;
}

void sub_219025134(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_2190250E0();
    v7 = a3(a1, &type metadata for TrendingTodayFeedGroupConfigData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_2190251AC()
{
  result = qword_27CC152B0;
  if (!qword_27CC152B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC152B0);
  }

  return result;
}

unint64_t sub_219025204()
{
  result = qword_280EA4028;
  if (!qword_280EA4028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EA4028);
  }

  return result;
}

unint64_t sub_21902525C()
{
  result = qword_280EA4030;
  if (!qword_280EA4030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EA4030);
  }

  return result;
}

void *sub_2190252B0()
{
  v1 = v0;
  sub_2187F7854(0, &unk_280EE88F0, MEMORY[0x277D2D798]);
  MEMORY[0x28223BE20](v2 - 8);
  v214 = &v178 - v3;
  v216 = sub_219BDEFE4();
  v215 = *(v216 - 8);
  MEMORY[0x28223BE20](v216);
  v208 = &v178 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v196 = sub_219BDF3A4();
  v195 = *(v196 - 8);
  MEMORY[0x28223BE20](v196);
  v194 = &v178 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v193 = &v178 - v7;
  MEMORY[0x28223BE20](v8);
  v192 = &v178 - v9;
  sub_2187F7854(0, &qword_280EE8908, MEMORY[0x277D2D788]);
  MEMORY[0x28223BE20](v10 - 8);
  v221 = &v178 - v11;
  v213 = sub_219BDEF94();
  v218 = *(v213 - 8);
  MEMORY[0x28223BE20](v213);
  v207 = &v178 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2187F7854(0, &unk_280EE86F0, MEMORY[0x277D2DC88]);
  MEMORY[0x28223BE20](v13 - 8);
  v219 = &v178 - v14;
  v220 = sub_219BDF654();
  v217 = *(v220 - 8);
  MEMORY[0x28223BE20](v220);
  v206 = &v178 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2187F7854(0, &unk_280EE87F0, MEMORY[0x277D2D9E8]);
  MEMORY[0x28223BE20](v16 - 8);
  v203 = &v178 - v17;
  v212 = sub_219BDF2F4();
  v205 = *(v212 - 8);
  MEMORY[0x28223BE20](v212);
  v204 = &v178 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2187F7854(0, &unk_280EE88A0, MEMORY[0x277D2D8A8]);
  MEMORY[0x28223BE20](v19 - 8);
  v200 = &v178 - v20;
  v211 = sub_219BDF0E4();
  v210 = *(v211 - 8);
  MEMORY[0x28223BE20](v211);
  v202 = &v178 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v187 = sub_219BE16E4();
  v186 = *(v187 - 8);
  MEMORY[0x28223BE20](v187);
  v185 = &v178 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v184 = sub_219BDF584();
  v183 = *(v184 - 8);
  MEMORY[0x28223BE20](v184);
  v182 = &v178 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2187F7854(0, &unk_280EE7FA0, MEMORY[0x277D2F590]);
  MEMORY[0x28223BE20](v24 - 8);
  v197 = &v178 - v25;
  v199 = sub_219BE16D4();
  v209 = *(v199 - 8);
  MEMORY[0x28223BE20](v199);
  v198 = &v178 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v180 = sub_219BE14C4();
  v179 = *(v180 - 8);
  MEMORY[0x28223BE20](v180);
  v28 = &v178 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v223 = sub_219BE3D94();
  v224 = *(v223 - 8);
  MEMORY[0x28223BE20](v223);
  v191 = (&v178 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v30);
  v190 = (&v178 - v31);
  MEMORY[0x28223BE20](v32);
  v189 = (&v178 - v33);
  MEMORY[0x28223BE20](v34);
  v188 = (&v178 - v35);
  MEMORY[0x28223BE20](v36);
  v201 = (&v178 - v37);
  MEMORY[0x28223BE20](v38);
  v181 = (&v178 - v39);
  MEMORY[0x28223BE20](v40);
  v42 = (&v178 - v41);
  v43 = MEMORY[0x277D2F280];
  sub_2187F7854(0, &qword_280EE8008, MEMORY[0x277D2F280]);
  MEMORY[0x28223BE20](v44 - 8);
  v46 = &v178 - v45;
  v47 = sub_219BE14A4();
  v48 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v50 = &v178 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = OBJC_IVAR____TtC7NewsUI214PaywallTracker_feedData;
  swift_beginAccess();
  v52 = v43;
  v53 = v1;
  sub_21902B860(v1 + v51, v46, &qword_280EE8008, v52);
  v54 = (*(v48 + 48))(v46, 1, v47);
  v222 = v1;
  if (v54 == 1)
  {
    sub_21902B804(v46, &qword_280EE8008, MEMORY[0x277D2F280]);
    v55 = MEMORY[0x277D84F90];
    v56 = v1;
    v57 = v223;
    v58 = v224;
  }

  else
  {
    (*(v48 + 32))(v50, v46, v47);
    sub_219BE1494();
    v59 = sub_21999E434();
    (*(v179 + 8))(v28, v180);
    v60 = sub_219BE1474();
    v62 = v61;
    v63 = OBJC_IVAR____TtC7NewsUI214PaywallTracker_sectionData;
    swift_beginAccess();
    v64 = sub_219BDF1E4();
    v65 = (*(*(v64 - 8) + 48))(v53 + v63, 1, v64);
    v66 = 0;
    v67 = 0;
    if (!v65)
    {
      v66 = sub_219BDF1D4();
      v67 = v68;
    }

    swift_endAccess();
    *v42 = v59;
    v42[1] = v60;
    v42[2] = v62;
    v42[3] = v66;
    v42[4] = v67;
    v57 = v223;
    (*(v224 + 104))(v42, *MEMORY[0x277D34DD8], v223);
    v55 = sub_2191F999C(0, 1, 1, MEMORY[0x277D84F90]);
    v70 = v55[2];
    v69 = v55[3];
    if (v70 >= v69 >> 1)
    {
      v55 = sub_2191F999C((v69 > 1), v70 + 1, 1, v55);
    }

    v56 = v222;
    (*(v48 + 8))(v50, v47);
    v55[2] = v70 + 1;
    v58 = v224;
    (*(v224 + 32))(v55 + ((*(v224 + 80) + 32) & ~*(v224 + 80)) + *(v224 + 72) * v70, v42, v57);
  }

  v71 = OBJC_IVAR____TtC7NewsUI214PaywallTracker_groupData;
  swift_beginAccess();
  v72 = v197;
  sub_21902B860(v56 + v71, v197, &unk_280EE7FA0, MEMORY[0x277D2F590]);
  v73 = v209;
  v74 = v199;
  if ((*(v209 + 48))(v72, 1, v199) == 1)
  {
    sub_21902B804(v72, &unk_280EE7FA0, MEMORY[0x277D2F590]);
    v75 = v221;
    v76 = v220;
  }

  else
  {
    v77 = v186;
    (*(v73 + 32))(v198, v72, v74);
    v78 = v182;
    sub_219BE15F4();
    v79 = sub_219BDF574();
    v81 = v80;
    (*(v183 + 8))(v78, v184);
    v82 = v185;
    sub_219BE16B4();
    v83 = sub_2190D909C();
    (*(v77 + 8))(v82, v187);
    v84 = sub_219BE16A4();
    v86 = v85;
    v87 = sub_219BE15D4();
    v88 = sub_219BE1604();
    v89 = v181;
    *v181 = v79;
    v89[1] = v81;
    v89[2] = v83;
    v89[3] = v84;
    v58 = v224;
    v89[4] = v86;
    v89[5] = v87;
    v57 = v223;
    v89[6] = v88;
    (*(v58 + 104))(v89, *MEMORY[0x277D34DE0], v57);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v55 = sub_2191F999C(0, v55[2] + 1, 1, v55);
    }

    v91 = v55[2];
    v90 = v55[3];
    v56 = v222;
    v75 = v221;
    v76 = v220;
    if (v91 >= v90 >> 1)
    {
      v55 = sub_2191F999C((v90 > 1), v91 + 1, 1, v55);
    }

    (*(v209 + 8))(v198, v74);
    v55[2] = v91 + 1;
    (*(v58 + 32))(v55 + ((*(v58 + 80) + 32) & ~*(v58 + 80)) + *(v58 + 72) * v91, v89, v57);
  }

  v92 = v219;
  v93 = OBJC_IVAR____TtC7NewsUI214PaywallTracker_articleData;
  swift_beginAccess();
  v94 = v200;
  sub_21902B860(v56 + v93, v200, &unk_280EE88A0, MEMORY[0x277D2D8A8]);
  v95 = v210;
  v96 = v211;
  if ((*(v210 + 48))(v94, 1, v211) == 1)
  {
    sub_21902B804(v94, &unk_280EE88A0, MEMORY[0x277D2D8A8]);
    v97 = v205;
  }

  else
  {
    (*(v95 + 32))(v202, v94, v96);
    v209 = sub_219BDF0D4();
    v200 = v98;
    v99 = OBJC_IVAR____TtC7NewsUI214PaywallTracker_articleExposureContextData;
    swift_beginAccess();
    v100 = sub_219BE0D44();
    v101 = *(*(v100 - 8) + 48);
    v102 = 0;
    v103 = 0;
    if (!v101(v56 + v99, 1, v100))
    {
      v102 = sub_219BE0D34();
      v103 = v104;
    }

    if (v101(v56 + v99, 1, v100))
    {
      v105 = 0;
      v106 = v56;
      v107 = 0;
    }

    else
    {
      v105 = sub_219BE0D24();
      v106 = v56;
      v107 = v108;
    }

    if (v101(v106 + v99, 1, v100))
    {
      swift_endAccess();
      v109 = MEMORY[0x277D84F90];
    }

    else
    {
      v110 = sub_219BE0D04();
      swift_endAccess();
      v109 = MEMORY[0x277D84F90];
      if (v110)
      {
        v109 = v110;
      }
    }

    v75 = v221;
    v97 = v205;
    v111 = v210;
    v112 = v201;
    v113 = v200;
    *v201 = v209;
    v112[1] = v113;
    v112[2] = v102;
    v112[3] = v103;
    v112[4] = v105;
    v112[5] = v107;
    v112[6] = v109;
    v58 = v224;
    v57 = v223;
    (*(v224 + 104))();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v55 = sub_2191F999C(0, v55[2] + 1, 1, v55);
    }

    v56 = v222;
    v76 = v220;
    v115 = v55[2];
    v114 = v55[3];
    if (v115 >= v114 >> 1)
    {
      v55 = sub_2191F999C((v114 > 1), v115 + 1, 1, v55);
    }

    (*(v111 + 8))(v202, v211);
    v55[2] = v115 + 1;
    (*(v58 + 32))(v55 + ((*(v58 + 80) + 32) & ~*(v58 + 80)) + *(v58 + 72) * v115, v201, v57);
    v92 = v219;
  }

  v116 = OBJC_IVAR____TtC7NewsUI214PaywallTracker_campaignData;
  swift_beginAccess();
  v117 = v203;
  sub_21902B860(v56 + v116, v203, &unk_280EE87F0, MEMORY[0x277D2D9E8]);
  v118 = v212;
  if ((*(v97 + 48))(v117, 1, v212) == 1)
  {
    sub_21902B804(v117, &unk_280EE87F0, MEMORY[0x277D2D9E8]);
  }

  else
  {
    (*(v97 + 32))(v204, v117, v118);
    v119 = sub_219BDF2C4();
    v121 = v120;
    v122 = sub_219BDF2E4();
    v124 = v123;
    v125 = sub_219BDF2D4();
    v126 = v188;
    *v188 = v119;
    v126[1] = v121;
    v126[2] = v122;
    v126[3] = v124;
    v58 = v224;
    v126[4] = v125;
    v126[5] = v127;
    (*(v58 + 104))(v126, *MEMORY[0x277D34E08], v57);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v55 = sub_2191F999C(0, v55[2] + 1, 1, v55);
    }

    v129 = v55[2];
    v128 = v55[3];
    v75 = v221;
    v76 = v220;
    if (v129 >= v128 >> 1)
    {
      v55 = sub_2191F999C((v128 > 1), v129 + 1, 1, v55);
    }

    (*(v97 + 8))(v204, v212);
    v55[2] = v129 + 1;
    (*(v58 + 32))(v55 + ((*(v58 + 80) + 32) & ~*(v58 + 80)) + *(v58 + 72) * v129, v126, v57);
    v92 = v219;
  }

  v130 = OBJC_IVAR____TtC7NewsUI214PaywallTracker_adReferralData;
  swift_beginAccess();
  sub_21902B860(v56 + v130, v92, &unk_280EE86F0, MEMORY[0x277D2DC88]);
  v131 = v92;
  v132 = v217;
  v133 = (*(v217 + 48))(v131, 1, v76);
  v134 = v215;
  if (v133 == 1)
  {
    sub_21902B804(v131, &unk_280EE86F0, MEMORY[0x277D2DC88]);
  }

  else
  {
    (*(v132 + 32))(v206, v131, v76);
    v135 = sub_219BDF644();
    v136 = v189;
    *v189 = v135;
    v136[1] = v137;
    *(v136 + 16) = 1;
    (*(v58 + 104))(v136, *MEMORY[0x277D34DD0], v57);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v55 = sub_2191F999C(0, v55[2] + 1, 1, v55);
    }

    v139 = v55[2];
    v138 = v55[3];
    v140 = v217;
    if (v139 >= v138 >> 1)
    {
      v176 = sub_2191F999C((v138 > 1), v139 + 1, 1, v55);
      v140 = v217;
      v55 = v176;
    }

    (*(v140 + 8))(v206, v76);
    v55[2] = v139 + 1;
    (*(v58 + 32))(v55 + ((*(v58 + 80) + 32) & ~*(v58 + 80)) + *(v58 + 72) * v139, v136, v57);
  }

  v141 = OBJC_IVAR____TtC7NewsUI214PaywallTracker_puzzleData;
  swift_beginAccess();
  sub_21902B860(v56 + v141, v75, &qword_280EE8908, MEMORY[0x277D2D788]);
  v142 = v218;
  v143 = v213;
  v144 = (*(v218 + 48))(v75, 1, v213);
  v145 = v214;
  if (v144 == 1)
  {
    sub_21902B804(v75, &qword_280EE8908, MEMORY[0x277D2D788]);
  }

  else
  {
    (*(v142 + 32))(v207, v75, v143);
    v221 = sub_219BDEF84();
    v220 = v146;
    v219 = sub_219BDEF54();
    v217 = v147;
    v148 = v192;
    sub_219BDEF44();
    LODWORD(v212) = sub_219BDF384();
    v149 = *(v195 + 8);
    v150 = v196;
    v149(v148, v196);
    v151 = v193;
    sub_219BDEF44();
    v211 = sub_219BDF394();
    v153 = v152;
    v149(v151, v150);
    v154 = v194;
    sub_219BDEF44();
    v155 = sub_219BDF364();
    LOBYTE(v151) = v156;
    v157 = v150;
    v57 = v223;
    v149(v154, v157);
    LOBYTE(v149) = sub_219BDEF64();
    v58 = v224;
    v158 = sub_219BDEF34();
    v228 = v153 & 1;
    v227 = v151 & 1;
    v159 = v149 & 1;
    v160 = v190;
    *v190 = v221;
    v160[1] = v220;
    v160[2] = v219;
    v160[3] = v217;
    *(v160 + 8) = v212;
    v160[5] = v211;
    *(v160 + 48) = v153 & 1;
    *(v160 + 49) = v229[0];
    *(v160 + 13) = *(v229 + 3);
    v160[7] = v155;
    *(v160 + 64) = v151 & 1;
    *(v160 + 65) = v159;
    *(v160 + 66) = v225;
    *(v160 + 35) = v226;
    v160[9] = v158;
    (*(v58 + 104))(v160, *MEMORY[0x277D34DE8], v57);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v55 = sub_2191F999C(0, v55[2] + 1, 1, v55);
    }

    v162 = v55[2];
    v161 = v55[3];
    v134 = v215;
    v145 = v214;
    v56 = v222;
    v163 = v218;
    if (v162 >= v161 >> 1)
    {
      v177 = sub_2191F999C((v161 > 1), v162 + 1, 1, v55);
      v163 = v218;
      v55 = v177;
    }

    (*(v163 + 8))(v207, v213);
    v55[2] = v162 + 1;
    (*(v58 + 32))(v55 + ((*(v58 + 80) + 32) & ~*(v58 + 80)) + *(v58 + 72) * v162, v160, v57);
  }

  v164 = OBJC_IVAR____TtC7NewsUI214PaywallTracker_recipeData;
  swift_beginAccess();
  sub_21902B860(v56 + v164, v145, &unk_280EE88F0, MEMORY[0x277D2D798]);
  v165 = v216;
  if ((*(v134 + 48))(v145, 1, v216) == 1)
  {
    sub_21902B804(v145, &unk_280EE88F0, MEMORY[0x277D2D798]);
  }

  else
  {
    (*(v134 + 32))(v208, v145, v165);
    v166 = sub_219BDEFC4();
    v168 = v167;
    v169 = sub_219BDEFA4();
    v170 = sub_219BDEFD4();
    v171 = v191;
    *v191 = v166;
    v171[1] = v168;
    *(v171 + 16) = v169 & 1;
    v171[3] = v170;
    v171[4] = v172;
    (*(v58 + 104))(v171, *MEMORY[0x277D34DF0], v57);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v55 = sub_2191F999C(0, v55[2] + 1, 1, v55);
    }

    v174 = v55[2];
    v173 = v55[3];
    if (v174 >= v173 >> 1)
    {
      v55 = sub_2191F999C((v173 > 1), v174 + 1, 1, v55);
    }

    (*(v134 + 8))(v208, v216);
    v55[2] = v174 + 1;
    (*(v58 + 32))(v55 + ((*(v58 + 80) + 32) & ~*(v58 + 80)) + *(v58 + 72) * v174, v171, v57);
  }

  return v55;
}

uint64_t sub_219026ED0(uint64_t (*a1)(uint64_t), uint64_t (*a2)(uint64_t), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v141 = a5;
  v142 = a6;
  v147 = a3;
  v148 = a4;
  v8 = sub_219BE0484();
  v144 = *(v8 - 8);
  v145 = v8;
  MEMORY[0x28223BE20](v8);
  v143 = &v101 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v140 = sub_219BE4034();
  v139 = *(v140 - 8);
  MEMORY[0x28223BE20](v140);
  v138 = &v101 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2187F7854(0, &unk_280EE8200, MEMORY[0x277D2EB90]);
  MEMORY[0x28223BE20](v11 - 8);
  v134 = &v101 - v12;
  v137 = sub_219BDF184();
  v136 = *(v137 - 8);
  MEMORY[0x28223BE20](v137);
  v135 = &v101 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_219BDF194();
  v152 = *(v14 - 8);
  v153 = v14;
  MEMORY[0x28223BE20](v14);
  v133 = &v101 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v151 = &v101 - v17;
  v132 = sub_219BE02A4();
  v131 = *(v132 - 8);
  MEMORY[0x28223BE20](v132);
  v130 = &v101 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v129 = sub_219BDF3C4();
  v128 = *(v129 - 8);
  MEMORY[0x28223BE20](v129);
  v127 = &v101 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_219BDF3D4();
  v155 = *(v20 - 8);
  v156 = v20;
  MEMORY[0x28223BE20](v20);
  v126 = &v101 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v150 = &v101 - v23;
  v111 = sub_219BDF074();
  v110 = *(v111 - 8);
  MEMORY[0x28223BE20](v111);
  v109 = &v101 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = sub_219BDBD64();
  v104 = *(v105 - 8);
  MEMORY[0x28223BE20](v105);
  v102 = &v101 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v146 = sub_219BE1524();
  v149 = *(v146 - 8);
  MEMORY[0x28223BE20](v146);
  v107 = &v101 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = sub_219BE1544();
  v106 = *(v108 - 8);
  MEMORY[0x28223BE20](v108);
  v101 = &v101 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v103 = &v101 - v29;
  v125 = MEMORY[0x277D2F398];
  sub_2187F7854(0, &unk_280EE7FD0, MEMORY[0x277D2F398]);
  MEMORY[0x28223BE20](v30 - 8);
  v124 = &v101 - v31;
  v157 = MEMORY[0x277D2D798];
  sub_2187F7854(0, &unk_280EE88F0, MEMORY[0x277D2D798]);
  MEMORY[0x28223BE20](v32 - 8);
  v123 = &v101 - v33;
  v154 = MEMORY[0x277D2D788];
  sub_2187F7854(0, &qword_280EE8908, MEMORY[0x277D2D788]);
  MEMORY[0x28223BE20](v34 - 8);
  v122 = &v101 - v35;
  v121 = MEMORY[0x277D2D8B8];
  sub_2187F7854(0, &unk_280EE8878, MEMORY[0x277D2D8B8]);
  MEMORY[0x28223BE20](v36 - 8);
  v120 = &v101 - v37;
  v119 = MEMORY[0x277D2DC88];
  sub_2187F7854(0, &unk_280EE86F0, MEMORY[0x277D2DC88]);
  MEMORY[0x28223BE20](v38 - 8);
  v118 = &v101 - v39;
  v117 = MEMORY[0x277D2D9E8];
  sub_2187F7854(0, &unk_280EE87F0, MEMORY[0x277D2D9E8]);
  MEMORY[0x28223BE20](v40 - 8);
  v116 = &v101 - v41;
  v115 = MEMORY[0x277D2ECA0];
  sub_2187F7854(0, &qword_280EE8188, MEMORY[0x277D2ECA0]);
  MEMORY[0x28223BE20](v42 - 8);
  v114 = &v101 - v43;
  v113 = MEMORY[0x277D2D8A8];
  sub_2187F7854(0, &unk_280EE88A0, MEMORY[0x277D2D8A8]);
  MEMORY[0x28223BE20](v44 - 8);
  v46 = &v101 - v45;
  v112 = MEMORY[0x277D2D970];
  sub_2187F7854(0, &unk_280EE8830, MEMORY[0x277D2D970]);
  MEMORY[0x28223BE20](v47 - 8);
  v49 = &v101 - v48;
  v50 = MEMORY[0x277D2F590];
  sub_2187F7854(0, &unk_280EE7FA0, MEMORY[0x277D2F590]);
  MEMORY[0x28223BE20](v51 - 8);
  v53 = &v101 - v52;
  v54 = MEMORY[0x277D2F280];
  sub_2187F7854(0, &qword_280EE8008, MEMORY[0x277D2F280]);
  MEMORY[0x28223BE20](v55 - 8);
  v57 = &v101 - v56;
  sub_219BE14A4();
  sub_21902BB54(&qword_280EE8010, MEMORY[0x277D2F280], MEMORY[0x277D2F278]);
  sub_219BDCCB4();
  v58 = OBJC_IVAR____TtC7NewsUI214PaywallTracker_feedData;
  swift_beginAccess();
  sub_21902BAE8(v57, a2 + v58, &qword_280EE8008, v54);
  swift_endAccess();
  sub_219BE16D4();
  sub_21902BB54(&unk_280EE7FB0, MEMORY[0x277D2F590], MEMORY[0x277D2F588]);
  sub_219BDCCB4();
  v59 = OBJC_IVAR____TtC7NewsUI214PaywallTracker_groupData;
  swift_beginAccess();
  sub_21902BAE8(v53, a2 + v59, &unk_280EE7FA0, v50);
  swift_endAccess();
  sub_219BDF1E4();
  sub_21902BB54(&unk_280EE8840, MEMORY[0x277D2D970], MEMORY[0x277D2D968]);
  sub_219BDCCB4();
  v60 = OBJC_IVAR____TtC7NewsUI214PaywallTracker_sectionData;
  swift_beginAccess();
  v61 = v146;
  sub_21902BAE8(v49, a2 + v60, &unk_280EE8830, v112);
  swift_endAccess();
  sub_219BDF0E4();
  sub_21902BB54(&qword_280EE88B0, MEMORY[0x277D2D8A8], MEMORY[0x277D2D8A0]);
  sub_219BDCCB4();
  v62 = OBJC_IVAR____TtC7NewsUI214PaywallTracker_articleData;
  swift_beginAccess();
  sub_21902BAE8(v46, a2 + v62, &unk_280EE88A0, v113);
  swift_endAccess();
  sub_219BE0D44();
  sub_21902BB54(&qword_280EE8190, MEMORY[0x277D2ECA0], MEMORY[0x277D2EC98]);
  v63 = v114;
  sub_219BDCCB4();
  v64 = OBJC_IVAR____TtC7NewsUI214PaywallTracker_articleExposureContextData;
  swift_beginAccess();
  sub_21902BAE8(v63, a2 + v64, &qword_280EE8188, v115);
  swift_endAccess();
  sub_219BDF2F4();
  sub_21902BB54(&qword_280EE8800, MEMORY[0x277D2D9E8], MEMORY[0x277D2D9E0]);
  v65 = v116;
  sub_219BDCCB4();
  v66 = OBJC_IVAR____TtC7NewsUI214PaywallTracker_campaignData;
  swift_beginAccess();
  sub_21902BAE8(v65, a2 + v66, &unk_280EE87F0, v117);
  swift_endAccess();
  sub_219BDF654();
  sub_21902BB54(&qword_280EE8700, MEMORY[0x277D2DC88], MEMORY[0x277D2DC80]);
  v67 = v118;
  sub_219BDCCB4();
  v68 = OBJC_IVAR____TtC7NewsUI214PaywallTracker_adReferralData;
  swift_beginAccess();
  sub_21902BAE8(v67, a2 + v68, &unk_280EE86F0, v119);
  swift_endAccess();
  sub_219BDF104();
  sub_21902BB54(&unk_280EE8890, MEMORY[0x277D2D8B8], MEMORY[0x277D2D8B0]);
  v69 = v120;
  sub_219BDCCB4();
  v70 = OBJC_IVAR____TtC7NewsUI214PaywallTracker_channelData;
  swift_beginAccess();
  sub_21902BAE8(v69, a2 + v70, &unk_280EE8878, v121);
  swift_endAccess();
  sub_219BDEF94();
  sub_21902BB54(&qword_280EE8910, MEMORY[0x277D2D788], MEMORY[0x277D2D780]);
  v71 = v122;
  sub_219BDCCB4();
  v72 = OBJC_IVAR____TtC7NewsUI214PaywallTracker_puzzleData;
  swift_beginAccess();
  sub_21902BAE8(v71, a2 + v72, &qword_280EE8908, v154);
  swift_endAccess();
  sub_219BDEFE4();
  sub_21902BB54(&qword_280EE8900, MEMORY[0x277D2D798], MEMORY[0x277D2D790]);
  v73 = v123;
  sub_219BDCCB4();
  v74 = OBJC_IVAR____TtC7NewsUI214PaywallTracker_recipeData;
  swift_beginAccess();
  v154 = a2;
  sub_21902BAE8(v73, a2 + v74, &unk_280EE88F0, v157);
  swift_endAccess();
  sub_21902BB54(&qword_280EE7FE0, MEMORY[0x277D2F398], MEMORY[0x277D2F390]);
  v75 = v124;
  v157 = a1;
  sub_219BDCCB4();
  LODWORD(v60) = (*(v149 + 6))(v75, 1, v61);
  sub_21902B804(v75, &unk_280EE7FD0, v125);
  if (v60 == 1)
  {
    v76 = v103;
    sub_2190286F4(v147, v103);
    v77 = v102;
    sub_219BDBD54();
    sub_219BDBD44();
    (*(v104 + 8))(v77, v105);
    v78 = v106;
    v79 = v108;
    (*(v106 + 16))(v101, v76, v108);
    (*(v110 + 104))(v109, *MEMORY[0x277D2D850], v111);
    v80 = v107;
    sub_219BE1514();
    v81 = v146;
    sub_219BDCCC4();
    (*(v149 + 1))(v80, v81);
    (*(v78 + 8))(v76, v79);
  }

  v82 = sub_219BE3D04();
  if (v82 > 5)
  {
    v83 = MEMORY[0x277D2DA58];
  }

  else
  {
    v83 = qword_2782428D0[v82];
  }

  v84 = v138;
  v85 = v150;
  (*(v155 + 104))(v150, *v83, v156);
  v86 = sub_219BE3CF4();
  if (v86)
  {
    if (*(v86 + 16))
    {
    }
  }

  (*(v155 + 16))(v126, v85, v156);
  v87 = v127;
  sub_219BDF3B4();
  sub_21902BB54(&qword_280EE87E0, MEMORY[0x277D2DA30], MEMORY[0x277D2DA28]);
  v149 = "alData";
  v88 = v129;
  sub_219BDCCC4();
  (*(v128 + 8))(v87, v88);
  v89 = sub_219BE3CF4();
  if (v89)
  {
    v90 = v89;
    MEMORY[0x28223BE20](v89);
    *(&v101 - 2) = v85;
    sub_218F8FC08(sub_21902BB9C, (&v101 - 4), v90);
  }

  v91 = v130;
  sub_219BE0294();
  sub_21902BB54(&qword_280EE8448, MEMORY[0x277D2E440], MEMORY[0x277D2E438]);
  v92 = v132;
  sub_219BDCCC4();
  (*(v131 + 8))(v91, v92);
  v93 = v151;
  sub_2198A99E8(v151);
  (*(v152 + 16))(v133, v93, v153);
  sub_219BE3CE4();
  sub_219BE4024();
  v94 = *(v139 + 8);
  v95 = v140;
  v94(v84, v140);
  sub_219BE0BB4();
  v96 = v135;
  sub_219BDF174();
  sub_21902BB54(&qword_280EE8860, MEMORY[0x277D2D928], MEMORY[0x277D2D920]);
  v97 = v137;
  sub_219BDCCC4();
  (*(v136 + 8))(v96, v97);
  if (swift_unknownObjectWeakLoadStrong())
  {
    swift_getObjectType();
    sub_219BE3CE4();
    sub_219BE4564();
    swift_unknownObjectRelease();
    v94(v84, v95);
  }

  v98 = v143;
  sub_219BE0474();
  sub_21902BB54(&unk_280EE83F0, MEMORY[0x277D2E550], MEMORY[0x277D2E548]);
  v99 = v145;
  sub_219BDCCC4();
  (*(v144 + 8))(v98, v99);
  (*(v152 + 8))(v151, v153);
  return (*(v155 + 8))(v150, v156);
}

uint64_t sub_2190286F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_219BE4574();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, a1, v4, v6);
  v9 = (*(v5 + 88))(v8, v4);
  if (v9 == *MEMORY[0x277D351D0])
  {
    goto LABEL_2;
  }

  if (v9 == *MEMORY[0x277D35188])
  {
LABEL_4:
    v10 = MEMORY[0x277D2F3E0];
    goto LABEL_7;
  }

  if (v9 == *MEMORY[0x277D35190])
  {
LABEL_6:
    v10 = MEMORY[0x277D2F3B8];
    goto LABEL_7;
  }

  if (v9 == *MEMORY[0x277D35168])
  {
    goto LABEL_4;
  }

  if (v9 == *MEMORY[0x277D351A0])
  {
    goto LABEL_2;
  }

  if (v9 == *MEMORY[0x277D35170])
  {
    goto LABEL_4;
  }

  if (v9 == *MEMORY[0x277D351E0])
  {
    goto LABEL_6;
  }

  if (v9 == *MEMORY[0x277D351B8])
  {
    goto LABEL_4;
  }

  if (v9 == *MEMORY[0x277D351B0] || v9 == *MEMORY[0x277D35178])
  {
    goto LABEL_2;
  }

  if (v9 == *MEMORY[0x277D35180])
  {
    goto LABEL_6;
  }

  if (v9 == *MEMORY[0x277D351A8])
  {
LABEL_2:
    v10 = MEMORY[0x277D2F3F0];
LABEL_7:
    v11 = *v10;
    v12 = sub_219BE1544();
    v13 = *(*(v12 - 8) + 104);
    v14 = a2;
    v15 = v11;
    return v13(v14, v15, v12);
  }

  if (v9 == *MEMORY[0x277D351F0])
  {
    goto LABEL_6;
  }

  if (v9 == *MEMORY[0x277D351E8])
  {
    v10 = MEMORY[0x277D2F3B0];
    goto LABEL_7;
  }

  if (v9 == *MEMORY[0x277D351C0])
  {
    v10 = MEMORY[0x277D2F3C8];
    goto LABEL_7;
  }

  if (v9 == *MEMORY[0x277D35198] || v9 == *MEMORY[0x277D351D8])
  {
    goto LABEL_6;
  }

  v18 = *MEMORY[0x277D351C8];
  v19 = v9;
  v12 = sub_219BE1544();
  v13 = *(*(v12 - 8) + 104);
  if (v19 != v18)
  {
    v13(a2, *MEMORY[0x277D2F3F0], v12);
    return (*(v5 + 8))(v8, v4);
  }

  v15 = *MEMORY[0x277D2F3D0];
  v14 = a2;
  return v13(v14, v15, v12);
}

uint64_t sub_219028A34@<X0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = sub_219BDF3D4();
  v6 = MEMORY[0x28223BE20](v5);
  (*(v8 + 16))(&v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v6);

  sub_219BDF3B4();
  v9 = sub_219BDF3C4();
  return (*(*(v9 - 8) + 56))(a3, 0, 1, v9);
}

uint64_t sub_219028B68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15 = a4;
  v5 = MEMORY[0x277D2D8B8];
  sub_2187F7854(0, &unk_280EE8878, MEMORY[0x277D2D8B8]);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v15 - v7;
  v9 = sub_219BDF104();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR____TtC7NewsUI214PaywallTracker_channelData;
  swift_beginAccess();
  sub_21902B860(a2 + v13, v8, &unk_280EE8878, v5);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_21902B804(v8, &unk_280EE8878, MEMORY[0x277D2D8B8]);
  }

  else
  {
    (*(v10 + 32))(v12, v8, v9);
    sub_21902BB54(&unk_280EE8890, MEMORY[0x277D2D8B8], MEMORY[0x277D2D8B0]);
    sub_219BDCCC4();
    (*(v10 + 8))(v12, v9);
  }

  sub_219BE06E4();
  sub_21902BB54(&qword_280EE8340, MEMORY[0x277D2E708], MEMORY[0x277D2E700]);
  sub_219BDCC64();
  return sub_219BDCC74();
}

uint64_t sub_219028E2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v40 = a1;
  v41 = a3;
  v4 = sub_219BE1594();
  v32 = *(v4 - 8);
  v33 = v4;
  MEMORY[0x28223BE20](v4);
  v31 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_219BDF014();
  v36 = *(v6 - 8);
  v37 = v6;
  MEMORY[0x28223BE20](v6);
  v35 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_219BDF004();
  v34 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v38 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_219BE43E4();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x277D2D8B8];
  sub_2187F7854(0, &unk_280EE8878, MEMORY[0x277D2D8B8]);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v30 - v15;
  v17 = sub_219BDF104();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v30 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = OBJC_IVAR____TtC7NewsUI214PaywallTracker_channelData;
  swift_beginAccess();
  sub_21902B860(a2 + v21, v16, &unk_280EE8878, v13);
  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {
    sub_21902B804(v16, &unk_280EE8878, MEMORY[0x277D2D8B8]);
  }

  else
  {
    (*(v18 + 32))(v20, v16, v17);
    sub_21902BB54(&unk_280EE8890, MEMORY[0x277D2D8B8], MEMORY[0x277D2D8B0]);
    sub_219BDCCC4();
    (*(v18 + 8))(v20, v17);
  }

  (*(v10 + 16))(v12, v41, v9);
  v22 = (*(v10 + 88))(v12, v9);
  if (v22 == *MEMORY[0x277D35090])
  {
    (*(v10 + 96))(v12, v9);
    v23 = *(v36 + 104);
    v24 = (v34 + 8);
    if (*v12 == 1)
    {
      v23(v35, *MEMORY[0x277D2D7C0], v37);
    }

    else
    {
      v23(v35, *MEMORY[0x277D2D7B0], v37);
    }

    v25 = v38;
    sub_219BDEFF4();
    sub_21902BB54(&qword_27CC152C8, MEMORY[0x277D2D7A8], MEMORY[0x277D2D7A0]);
    v28 = v39;
    sub_219BDCCC4();
    (*v24)(v25, v28);
  }

  else if (v22 == *MEMORY[0x277D35088])
  {
    (*(v10 + 96))(v12, v9);
    v26 = v31;
    sub_219BE1584();
    sub_21902BB54(&qword_280EE7FC0, MEMORY[0x277D2F440], MEMORY[0x277D2F438]);
    v27 = v33;
    sub_219BDCCC4();
    (*(v32 + 8))(v26, v27);
  }

  else
  {
    (*(v10 + 8))(v12, v9);
  }

  sub_219BE1344();
  sub_21902BB54(&qword_27CC152C0, MEMORY[0x277D2F1C8], MEMORY[0x277D2F1C0]);
  memset(v42, 0, sizeof(v42));
  sub_219BDCCE4();
  return sub_218806FD0(v42);
}

uint64_t sub_219029578(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v70 = a4;
  v71 = a3;
  v56 = a1;
  v54 = sub_219BE0484();
  v53 = *(v54 - 8);
  MEMORY[0x28223BE20](v54);
  v52 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2187F7854(0, &qword_280EE6318, MEMORY[0x277D350F8]);
  MEMORY[0x28223BE20](v6 - 8);
  v69 = &v51 - v7;
  sub_2187F7854(0, &qword_280EE8198, MEMORY[0x277D2EC90]);
  MEMORY[0x28223BE20](v8 - 8);
  v68 = &v51 - v9;
  v10 = sub_219BE3E04();
  MEMORY[0x28223BE20](v10 - 8);
  v64 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_219BE0AC4();
  MEMORY[0x28223BE20](v12 - 8);
  v63 = &v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_219BE0EA4();
  v66 = *(v14 - 8);
  v67 = v14;
  MEMORY[0x28223BE20](v14);
  v65 = &v51 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_219BDF3D4();
  v58 = *(v16 - 8);
  v59 = v16;
  MEMORY[0x28223BE20](v16);
  v57 = &v51 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_219BDF3C4();
  v61 = *(v18 - 8);
  v62 = v18;
  MEMORY[0x28223BE20](v18);
  v60 = &v51 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2187F7854(0, &qword_280EE8908, MEMORY[0x277D2D788]);
  MEMORY[0x28223BE20](v20 - 8);
  v22 = &v51 - v21;
  v23 = sub_219BDEF94();
  v55 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v51 = &v51 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x277D2D8B8];
  sub_2187F7854(0, &unk_280EE8878, MEMORY[0x277D2D8B8]);
  MEMORY[0x28223BE20](v26 - 8);
  v28 = &v51 - v27;
  v29 = sub_219BDF104();
  v30 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v32 = &v51 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = OBJC_IVAR____TtC7NewsUI214PaywallTracker_channelData;
  swift_beginAccess();
  sub_21902B860(a2 + v33, v28, &unk_280EE8878, v25);
  if ((*(v30 + 48))(v28, 1, v29) == 1)
  {
    sub_21902B804(v28, &unk_280EE8878, MEMORY[0x277D2D8B8]);
  }

  else
  {
    (*(v30 + 32))(v32, v28, v29);
    sub_21902BB54(&unk_280EE8890, MEMORY[0x277D2D8B8], MEMORY[0x277D2D8B0]);
    sub_219BDCCC4();
    (*(v30 + 8))(v32, v29);
  }

  v34 = OBJC_IVAR____TtC7NewsUI214PaywallTracker_puzzleData;
  swift_beginAccess();
  sub_21902B860(a2 + v34, v22, &qword_280EE8908, MEMORY[0x277D2D788]);
  v35 = v55;
  if ((*(v55 + 48))(v22, 1, v23) == 1)
  {
    sub_21902B804(v22, &qword_280EE8908, MEMORY[0x277D2D788]);
  }

  else
  {
    v36 = v51;
    (*(v35 + 32))(v51, v22, v23);
    sub_21902BB54(&qword_280EE8910, MEMORY[0x277D2D788], MEMORY[0x277D2D780]);
    sub_219BDCCC4();
    (*(v35 + 8))(v36, v23);
  }

  sub_219BE41B4();
  if (!v37)
  {
    v38 = sub_219BE3CF4();
    if (v38)
    {
      if (*(v38 + 16))
      {
      }
    }
  }

  v39 = sub_219BE3D04();
  if (v39 > 5)
  {
    v40 = MEMORY[0x277D2DA58];
  }

  else
  {
    v40 = qword_2782428D0[v39];
  }

  (*(v58 + 104))(v57, *v40, v59);
  v41 = v60;
  sub_219BDF3B4();
  sub_21902BB54(&qword_280EE87E0, MEMORY[0x277D2DA30], MEMORY[0x277D2DA28]);
  v42 = v62;
  sub_219BDCCC4();
  (*(v61 + 8))(v41, v42);
  v43 = v64;
  sub_219BE3D14();
  sub_219029FF8(v43, v63);
  v44 = v69;
  sub_219BE41D4();
  sub_21902A2CC(v44, v68);
  v45 = v65;
  sub_219BE0E94();
  sub_21902BB54(&qword_280EE8170, MEMORY[0x277D2EDA0], MEMORY[0x277D2ED98]);
  v46 = v67;
  sub_219BDCCC4();
  (*(v66 + 8))(v45, v46);
  result = sub_219BE41C4();
  if (v48)
  {
    v49 = v52;
    sub_219BE0474();
    sub_21902BB54(&unk_280EE83F0, MEMORY[0x277D2E550], MEMORY[0x277D2E548]);
    v50 = v54;
    sub_219BDCCC4();
    return (*(v53 + 8))(v49, v50);
  }

  return result;
}

uint64_t sub_219029FF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_219BE3E04();
  v17 = *(v4 - 8);
  v5 = (*(v17 + 88))(a1, v4);
  if (v5 == *MEMORY[0x277D34E40])
  {
    (*(v17 + 8))(a1, v4);
    v6 = MEMORY[0x277D2EA90];
LABEL_17:
    v7 = *v6;
    v8 = sub_219BE0AC4();
    v9 = *(*(v8 - 8) + 104);
    v10 = v8;
    v11 = a2;
    v12 = v7;
LABEL_18:

    return v9(v11, v12, v10);
  }

  if (v5 == *MEMORY[0x277D34E70])
  {
    (*(v17 + 8))(a1, v4);
    v6 = MEMORY[0x277D2EAD0];
    goto LABEL_17;
  }

  if (v5 == *MEMORY[0x277D34E68])
  {
    v6 = MEMORY[0x277D2EAC8];
    goto LABEL_17;
  }

  if (v5 == *MEMORY[0x277D34E78])
  {
    v6 = MEMORY[0x277D2EAE0];
    goto LABEL_17;
  }

  if (v5 == *MEMORY[0x277D34E48])
  {
    v6 = MEMORY[0x277D2EAA0];
    goto LABEL_17;
  }

  if (v5 == *MEMORY[0x277D34E80])
  {
    v6 = MEMORY[0x277D2EAE8];
    goto LABEL_17;
  }

  if (v5 == *MEMORY[0x277D34E58])
  {
    v6 = MEMORY[0x277D2EAB8];
    goto LABEL_17;
  }

  if (v5 == *MEMORY[0x277D34E50])
  {
    v6 = MEMORY[0x277D2EAA8];
    goto LABEL_17;
  }

  v14 = *MEMORY[0x277D34E60];
  v15 = v5;
  v10 = sub_219BE0AC4();
  v9 = *(*(v10 - 8) + 104);
  if (v15 == v14)
  {
    v12 = *MEMORY[0x277D2EAC0];
    v11 = a2;
    goto LABEL_18;
  }

  v9(a2, *MEMORY[0x277D2EAD8], v10);
  v16 = *(v17 + 8);

  return v16(a1, v4);
}

uint64_t sub_21902A2CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_219BE44D4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v22 - v9;
  v11 = sub_219BE0CF4();
  v23 = *(v11 - 8);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v5 + 48))(a1, 1, v4, v12) != 1)
  {
    (*(v5 + 32))(v10, a1, v4);
    (*(v5 + 16))(v7, v10, v4);
    v17 = (*(v5 + 88))(v7, v4);
    if (v17 == *MEMORY[0x277D350E8])
    {
      v18 = *MEMORY[0x277D2EC88];
      v19 = v23;
    }

    else
    {
      if (v17 == *MEMORY[0x277D350E0])
      {
        v20 = MEMORY[0x277D2EC78];
      }

      else
      {
        if (v17 != *MEMORY[0x277D350F0])
        {
          v21 = *(v23 + 104);
          if (v17 != *MEMORY[0x277D350D8])
          {
            v21(v14, *MEMORY[0x277D2EC88], v11);
            (*(v5 + 8))(v7, v4);
            goto LABEL_14;
          }

          v18 = *MEMORY[0x277D2EC70];
LABEL_13:
          v21(v14, v18, v11);
LABEL_14:
          (*(v5 + 8))(v10, v4);
          (*(v23 + 32))(a2, v14, v11);
          return (*(v23 + 56))(a2, 0, 1, v11);
        }

        v20 = MEMORY[0x277D2EC80];
      }

      v18 = *v20;
      v19 = v23;
    }

    v21 = *(v19 + 104);
    goto LABEL_13;
  }

  sub_21902B804(a1, &qword_280EE6318, MEMORY[0x277D350F8]);
  v15 = *(v23 + 56);

  return v15(a2, 1, 1, v11);
}

uint64_t sub_21902A664(uint64_t a1)
{
  v18[1] = a1;
  sub_2187F7854(0, &qword_280EE6318, MEMORY[0x277D350F8]);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = v18 - v2;
  sub_2187F7854(0, &qword_280EE8198, MEMORY[0x277D2EC90]);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v18 - v5;
  v7 = sub_219BE3E04();
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_219BE0AC4();
  MEMORY[0x28223BE20](v10 - 8);
  v12 = v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_219BE0EA4();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = v18 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BE3D14();
  sub_219029FF8(v9, v12);
  sub_219BE41D4();
  sub_21902A2CC(v3, v6);
  sub_219BE0E94();
  sub_21902BB54(&qword_280EE8170, MEMORY[0x277D2EDA0], MEMORY[0x277D2ED98]);
  sub_219BDD1F4();
  (*(v14 + 8))(v16, v13);
  sub_219BE0AD4();
  sub_21902BB54(&qword_27CC152B8, MEMORY[0x277D2EAF8], MEMORY[0x277D2EAF0]);
  return sub_219BDD234();
}

uint64_t sub_21902A98C()
{
  v0 = sub_219BE0C94();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);

  sub_219BE0C84();
  sub_21902BB54(&unk_280EE81B0, MEMORY[0x277D2EC30], MEMORY[0x277D2EC28]);
  sub_219BDCCC4();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_21902AACC()
{

  sub_218774F78(v0 + 24);
  sub_21902B804(v0 + OBJC_IVAR____TtC7NewsUI214PaywallTracker_feedData, &qword_280EE8008, MEMORY[0x277D2F280]);
  sub_21902B804(v0 + OBJC_IVAR____TtC7NewsUI214PaywallTracker_channelData, &unk_280EE8878, MEMORY[0x277D2D8B8]);
  sub_21902B804(v0 + OBJC_IVAR____TtC7NewsUI214PaywallTracker_groupData, &unk_280EE7FA0, MEMORY[0x277D2F590]);
  sub_21902B804(v0 + OBJC_IVAR____TtC7NewsUI214PaywallTracker_sectionData, &unk_280EE8830, MEMORY[0x277D2D970]);
  sub_21902B804(v0 + OBJC_IVAR____TtC7NewsUI214PaywallTracker_articleData, &unk_280EE88A0, MEMORY[0x277D2D8A8]);
  sub_21902B804(v0 + OBJC_IVAR____TtC7NewsUI214PaywallTracker_articleExposureContextData, &qword_280EE8188, MEMORY[0x277D2ECA0]);
  sub_21902B804(v0 + OBJC_IVAR____TtC7NewsUI214PaywallTracker_campaignData, &unk_280EE87F0, MEMORY[0x277D2D9E8]);
  sub_21902B804(v0 + OBJC_IVAR____TtC7NewsUI214PaywallTracker_adReferralData, &unk_280EE86F0, MEMORY[0x277D2DC88]);
  sub_21902B804(v0 + OBJC_IVAR____TtC7NewsUI214PaywallTracker_puzzleData, &qword_280EE8908, MEMORY[0x277D2D788]);
  sub_21902B804(v0 + OBJC_IVAR____TtC7NewsUI214PaywallTracker_recipeData, &unk_280EE88F0, MEMORY[0x277D2D798]);
  return v0;
}

uint64_t sub_21902ACAC()
{
  sub_21902AACC();

  return swift_deallocClassInstance();
}

double sub_21902AD34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v24 = a3;
  v25 = a4;
  v26 = a1;
  v27 = a2;
  v5 = sub_219BE3D34();
  v21 = v5;
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v22 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_219BE4574();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v4;
  sub_219BE06E4();
  sub_21902BB54(&qword_280EE8340, MEMORY[0x277D2E708], MEMORY[0x277D2E700]);
  sub_219BDD214();
  v23 = *(v12 + 16);
  (*(v9 + 16))(v11, v24, v8);
  v13 = v22;
  (*(v6 + 16))(v22, v25, v5);
  v14 = (*(v9 + 80) + 24) & ~*(v9 + 80);
  v15 = (v10 + *(v6 + 80) + v14) & ~*(v6 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = v12;
  (*(v9 + 32))(v16 + v14, v11, v8);
  (*(v6 + 32))(v16 + v15, v13, v21);
  v17 = (v16 + ((v7 + v15 + 7) & 0xFFFFFFFFFFFFFFF8));
  v18 = v27;
  *v17 = v26;
  v17[1] = v18;

  sub_219BDD154();

  return result;
}

uint64_t sub_21902AFE4()
{
  sub_219BE06E4();
  sub_21902BB54(&qword_280EE8340, MEMORY[0x277D2E708], MEMORY[0x277D2E700]);
  return sub_219BDD234();
}

double sub_21902B064(uint64_t a1, uint64_t a2)
{
  v21 = a2;
  v4 = sub_219BDBD34();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v20 - v10;
  v12 = *v2;
  v13 = *(v5 + 16);
  v13(&v20 - v10, a1, v4, v9);
  (v13)(v7, v21, v4);
  v14 = *(v5 + 80);
  v15 = (v14 + 24) & ~v14;
  v16 = (v6 + v14 + v15) & ~v14;
  v17 = swift_allocObject();
  *(v17 + 16) = v12;
  v18 = *(v5 + 32);
  v18(v17 + v15, v11, v4);
  v18(v17 + v16, v7, v4);

  sub_219BDD154();

  return result;
}

double sub_21902B21C(uint64_t a1)
{
  v3 = sub_219BE43E4();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v7 = *v1;
  (*(v4 + 16))(&v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3, v6);
  v8 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = v7;
  (*(v4 + 32))(v9 + v8, &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v3);

  sub_219BDD154();

  return result;
}

double sub_21902B36C(uint64_t a1, uint64_t a2)
{
  v19 = a2;
  v17 = a1;
  v18 = sub_219BE3D34();
  v3 = *(v18 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v18);
  v5 = sub_219BE41E4();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_219BE10E4();
  sub_21902BB54(&qword_280EE8110, MEMORY[0x277D2EF18], MEMORY[0x277D2EF10]);
  sub_219BDD214();
  v16 = *(v9 + 16);
  (*(v6 + 16))(v8, v17, v5);
  v10 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = v18;
  (*(v3 + 16))(v10, v19, v18);
  v12 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v13 = (v7 + *(v3 + 80) + v12) & ~*(v3 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = v9;
  (*(v6 + 32))(v14 + v12, v8, v5);
  (*(v3 + 32))(v14 + v13, v10, v11);

  sub_219BDD154();

  return result;
}

uint64_t sub_21902B5F4()
{
  sub_219BE10E4();
  sub_21902BB54(&qword_280EE8110, MEMORY[0x277D2EF18], MEMORY[0x277D2EF10]);
  return sub_219BDD234();
}

double sub_21902B698(uint64_t a1)
{
  if (a1)
  {
    *(swift_allocObject() + 16) = a1;

    sub_219BDD154();
  }

  return result;
}

uint64_t sub_21902B72C(uint64_t a1)
{
  v3 = *(sub_219BE41E4() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(sub_219BE3D34() - 8);
  v7 = *(v1 + 16);
  v8 = v1 + ((v4 + v5 + *(v6 + 80)) & ~*(v6 + 80));

  return sub_219029578(a1, v7, v1 + v4, v8);
}

uint64_t sub_21902B804(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_2187F7854(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_21902B860(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_2187F7854(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_21902B8CC(uint64_t a1)
{
  v3 = *(sub_219BE43E4() - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return sub_219028E2C(a1, v4, v5);
}

uint64_t sub_21902B940(uint64_t a1)
{
  v3 = *(sub_219BDBD34() - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 24) & ~v4;
  v6 = *(v1 + 16);
  v7 = v1 + ((*(v3 + 64) + v4 + v5) & ~v4);

  return sub_219028B68(a1, v6, v1 + v5, v7);
}

uint64_t sub_21902B9E0(uint64_t (*a1)(uint64_t))
{
  v3 = *(sub_219BE4574() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(sub_219BE3D34() - 8);
  v7 = (v4 + v5 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = *(v1 + 16);
  v9 = (v1 + ((*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = *v9;
  v11 = v9[1];

  return sub_219026ED0(a1, v8, v1 + v4, v1 + v7, v10, v11);
}

uint64_t sub_21902BAE8(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_2187F7854(0, a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t sub_21902BB54(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_21902BBD4(uint64_t a1, void (*a2)(char *), uint64_t a3)
{
  v57 = a3;
  v58 = a2;
  sub_21902C6F0(0, &qword_27CC152D8, MEMORY[0x277D6DF88]);
  v55 = *(v4 - 8);
  v56 = v4;
  MEMORY[0x28223BE20](v4);
  v54 = &v45 - v5;
  v48 = type metadata accessor for SearchMoreFeedGapLocation(0);
  MEMORY[0x28223BE20](v48);
  v7 = (&v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_219BF0BD4();
  v46 = *(v8 - 8);
  v47 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218F935EC(0);
  v12 = v11;
  v59 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for SearchMoreFeedGroup(0);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21902C624(0);
  MEMORY[0x28223BE20](v18 - 8);
  sub_21902C6F0(0, &qword_27CC13A70, MEMORY[0x277D6EC60]);
  v61 = v19;
  v53 = *(v19 - 8);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = &v45 - v20;
  v22 = sub_21902C5DC(&unk_27CC1E150, sub_218F935EC, MEMORY[0x277D6D720]);
  v23 = sub_21902C5DC(&qword_27CC152E0, sub_218F935EC, MEMORY[0x277D6D718]);
  v60 = v12;
  MEMORY[0x21CEB9150](MEMORY[0x277D84F90], v12, v22, v23);
  v24 = type metadata accessor for SearchMoreSectionDescriptor(0);
  v25 = type metadata accessor for SearchMoreModel(0);
  v26 = sub_21902C5DC(&unk_27CC17410, type metadata accessor for SearchMoreSectionDescriptor, &unk_219C702A4);
  v27 = sub_21902C5DC(&qword_27CC0B890, type metadata accessor for SearchMoreModel, &unk_219CB2414);
  v51 = v25;
  v52 = v24;
  v49 = v27;
  v50 = v26;
  sub_219BEB2D4();
  v28 = v3[2];
  if ((v28 >> 61) <= 2 && v28 >> 61 != 1)
  {
    sub_218A5C5A8(0);
    v29 = swift_projectBox();
    sub_218965054(v29, v17);
    __swift_project_boxed_opaque_existential_1(v3 + 3, v3[6]);
    type metadata accessor for SearchMoreFeedServiceConfig(0);
    sub_21902C5DC(&qword_280EB71E0, type metadata accessor for SearchMoreFeedServiceConfig, &unk_219C731D0);

    sub_219BEE7A4();
    sub_219A972C0(v17, v10, v14);
    (*(v46 + 8))(v10, v47);
    sub_219BEB1E4();

    (*(v59 + 8))(v14, v60);
    sub_21902C880(v17, type metadata accessor for SearchMoreFeedGroup);
  }

  type metadata accessor for SearchMoreFeedServiceConfig(0);
  v30 = sub_21902C5DC(&qword_280EB71E0, type metadata accessor for SearchMoreFeedServiceConfig, &unk_219C731D0);
  sub_219BEF3D4();
  sub_218A5CB84(v28, &v62);
  v31 = v62;
  v32 = v63;
  if ((sub_219BEF394() & 1) == 0)
  {
    v37 = swift_allocObject();
    sub_21902C7E4(0, &unk_27CC1E160, MEMORY[0x277D32188]);
    swift_allocObject();
    v47 = v30;
    v34 = v21;
    v35 = v31;

    *(v37 + 16) = sub_219BEE874();
    *v7 = v37;
    v36 = MEMORY[0x277D33090];
    goto LABEL_8;
  }

  if (sub_219BEE854())
  {
    v33 = swift_allocObject();
    sub_21902C7E4(0, &unk_27CC1E160, MEMORY[0x277D32188]);
    swift_allocObject();
    v47 = v30;
    v34 = v21;
    v35 = v31;

    *(v33 + 16) = sub_219BEE874();
    *v7 = v33;
    v36 = MEMORY[0x277D33068];
LABEL_8:
    v38 = *v36;
    sub_21902C7E4(0, &qword_27CC20A10, MEMORY[0x277D33098]);
    (*(*(v39 - 8) + 104))(v7, v38, v39);
    swift_storeEnumTagMultiPayload();
    v62 = v35;
    v21 = v34;
    LOBYTE(v63) = v32;
    sub_2192FDB8C(v7, &v62, v14);
    sub_21902C880(v7, type metadata accessor for SearchMoreFeedGapLocation);
    v40 = v61;
    sub_219BEB1E4();
    (*(v59 + 8))(v14, v60);
    goto LABEL_10;
  }

  v40 = v61;
LABEL_10:
  sub_219BEEFF4();

  sub_219BEEFE4();
  v41 = sub_219BEEFC4();

  v42 = 0;
  if (v41)
  {
    v42 = sub_219BEDC74();
  }

  else
  {
    v63 = 0;
    v64 = 0;
  }

  v62 = v41;
  v65 = v42;
  sub_219BEB2C4();

  v43 = v54;
  sub_219BE85C4();
  v58(v43);

  (*(v55 + 8))(v43, v56);
  return (*(v53 + 8))(v21, v40);
}

uint64_t sub_21902C4B8(uint64_t a1)
{
  v2 = sub_218F9FA8C();

  return MEMORY[0x2821D4040](a1, v2);
}

unint64_t sub_21902C4F8()
{
  result = qword_27CC152D0;
  if (!qword_27CC152D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC152D0);
  }

  return result;
}

uint64_t sub_21902C5DC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_21902C624(uint64_t a1)
{
  if (!qword_27CC1E140)
  {
    sub_218F935EC(255);
    sub_21902C5DC(&unk_27CC1E150, sub_218F935EC, MEMORY[0x277D6D720]);
    sub_21902C5DC(&qword_27CC152E0, sub_218F935EC, MEMORY[0x277D6D718]);
    v1 = sub_219BE2454();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC1E140);
    }
  }
}

void sub_21902C6F0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = type metadata accessor for SearchMoreSectionDescriptor(255);
    v8[1] = type metadata accessor for SearchMoreModel(255);
    v8[2] = sub_21902C5DC(&unk_27CC17410, type metadata accessor for SearchMoreSectionDescriptor, &unk_219C702A4);
    v8[3] = sub_21902C5DC(&qword_27CC0B890, type metadata accessor for SearchMoreModel, &unk_219CB2414);
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_21902C7E4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for SearchMoreFeedServiceConfig(255);
    v7 = sub_21902C5DC(&qword_280EB71E0, type metadata accessor for SearchMoreFeedServiceConfig, &unk_219C731D0);
    v8 = a3(a1, v6, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_21902C880(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21902C8E0@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v79 = *MEMORY[0x277D85DE8];
  v6 = sub_219BF5474();
  MEMORY[0x28223BE20](v6 - 8);
  v75 = &v64 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186D8B18(0, qword_280E949D0, type metadata accessor for TopicTodayFeedGroupClusteringKnobOverrides, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v64 - v9;
  v11 = type metadata accessor for TopicTodayFeedGroupClusteringKnobOverrides(0);
  v74 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v64 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for TodayFeedGroupClusteringKnobOverrides(0);
  *&v15 = MEMORY[0x28223BE20](v14).n128_u64[0];
  v17 = &v64 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = [a1 possiblyUnfetchedAppConfiguration];
  v19 = &unk_280F61000;
  if ([v18 respondsToSelector_])
  {
    v69 = v11;
    v20 = [v18 todayFeedGroupClusteringKnobOverrides];
    swift_unknownObjectRelease();
    if (v20)
    {
      v67 = v13;
      v68 = v10;
      v72 = a2;
      v73 = v17;
      v71 = a3;
      sub_219BF5214();

      if (qword_280E8D7A0 != -1)
      {
        swift_once();
      }

      v21 = qword_280F616D8;
      sub_2186F20D4(0);
      v22 = swift_allocObject();
      v66 = xmmword_219C09BA0;
      *(v22 + 16) = xmmword_219C09BA0;
      v23 = sub_219BF5224();
      v25 = v24;
      *(v22 + 56) = MEMORY[0x277D837D0];
      v70 = sub_2186FC3BC();
      *(v22 + 64) = v70;
      *(v22 + 32) = v23;
      *(v22 + 40) = v25;
      v26 = sub_219BF6214();
      sub_219BE5314("Trying to decode overrides %{public}@", 37, 2, &dword_2186C1000, v21, v26, v22);

      v27 = objc_opt_self();
      v28 = sub_219BF5204();
      v77 = 0;
      v29 = [v27 dataWithJSONObject:v28 options:0 error:&v77];

      v30 = v77;
      if (v29)
      {
        v31 = v70;

        v32 = sub_219BDBA04();
        v34 = v33;

        sub_219BDAFF4();
        swift_allocObject();
        sub_219BDAFE4();
        sub_2186E0570(&qword_280E98800, type metadata accessor for TodayFeedGroupClusteringKnobOverrides, &unk_219C94638);
        sub_219BDAFC4();
        a3 = v71;
        v64 = v32;
        v65 = v34;
        v75 = v21;

        v49 = v68;
        sub_2190351BC(&v73[*(v14 + 28)], v68, qword_280E949D0, type metadata accessor for TopicTodayFeedGroupClusteringKnobOverrides);
        v50 = (*(v74 + 48))(v49, 1, v69);
        a2 = v72;
        v19 = &unk_280F61000;
        if (v50 != 1)
        {
          v56 = v67;
          sub_2190352AC(v49, v67, type metadata accessor for TopicTodayFeedGroupClusteringKnobOverrides);
          v57 = swift_allocObject();
          *(v57 + 16) = xmmword_219C09EC0;
          v77 = 0;
          v78 = 0xE000000000000000;
          sub_219BF7484();
          v58 = v77;
          v59 = v78;
          v60 = MEMORY[0x277D837D0];
          *(v57 + 56) = MEMORY[0x277D837D0];
          *(v57 + 64) = v31;
          *(v57 + 32) = v58;
          *(v57 + 40) = v59;
          v77 = 0;
          v78 = 0xE000000000000000;
          type metadata accessor for TopicTodayFeedGroupKnobs(0);
          sub_219BF7484();
          v61 = v77;
          v62 = v78;
          *(v57 + 96) = v60;
          *(v57 + 104) = v31;
          *(v57 + 72) = v61;
          *(v57 + 80) = v62;
          v63 = sub_219BF6214();
          sub_219BE5314("Applying overrides %{public}@ to topic clustering knobs %{public}@", 66, 2, &dword_2186C1000, v75, v63, v57);

          sub_219965FB0(v56, a3);
          sub_2186C6190(v64, v65);
          sub_219035314(v56, type metadata accessor for TopicTodayFeedGroupClusteringKnobOverrides);
          return sub_219035314(v73, type metadata accessor for TodayFeedGroupClusteringKnobOverrides);
        }

        sub_21903523C(v49, qword_280E949D0, type metadata accessor for TopicTodayFeedGroupClusteringKnobOverrides);
        v51 = swift_allocObject();
        *(v51 + 16) = v66;
        v77 = 0;
        v78 = 0xE000000000000000;
        v52 = v73;
        sub_219BF7484();
        v53 = v77;
        v54 = v78;
        *(v51 + 56) = MEMORY[0x277D837D0];
        *(v51 + 64) = v31;
        *(v51 + 32) = v53;
        *(v51 + 40) = v54;
        v55 = sub_219BF6214();
        sub_219BE5314("Overrides didn't specify any topic specific overrides %{public}@", 64, 2, &dword_2186C1000, v75, v55, v51);
        sub_2186C6190(v64, v65);

        sub_219035314(v52, type metadata accessor for TodayFeedGroupClusteringKnobOverrides);
      }

      else
      {
        v38 = v30;
        v39 = sub_219BDB724();

        swift_willThrow();
        v40 = sub_219BF61F4();
        v41 = swift_allocObject();
        *(v41 + 16) = xmmword_219C09EC0;
        v42 = sub_219BF5224();
        v44 = v43;

        v45 = MEMORY[0x277D837D0];
        v46 = v70;
        *(v41 + 56) = MEMORY[0x277D837D0];
        *(v41 + 64) = v46;
        *(v41 + 32) = v42;
        *(v41 + 40) = v44;
        v77 = 0;
        v78 = 0xE000000000000000;
        v76 = v39;
        sub_2186CFDE4(0, &qword_280E8B580, MEMORY[0x277D84948]);
        sub_219BF7484();
        v47 = v77;
        v48 = v78;
        *(v41 + 96) = v45;
        *(v41 + 104) = v46;
        *(v41 + 72) = v47;
        *(v41 + 80) = v48;
        sub_219BE5314("Failed to serialize topic today feed group clustering overrides into JSON %{public}@. Error: %{public}@", 103, 2, &dword_2186C1000, v21, v40, v41);

        a3 = v71;
        a2 = v72;
        v19 = &unk_280F61000;
      }
    }
  }

  else
  {
    swift_unknownObjectRelease();
  }

  if (qword_280E8D7A0 != -1)
  {
    swift_once();
  }

  v35 = v19[219];
  v36 = sub_219BF6214();
  sub_219BE5314("No topic group clustering knobs overrides specified", 51, 2, &dword_2186C1000, v35, v36, MEMORY[0x277D84F90]);
  return sub_2190350CC(a2, a3, type metadata accessor for TopicTodayFeedGroupKnobs);
}

uint64_t sub_21902D2BC(uint64_t a1, uint64_t a2)
{
  v3[5] = a2;
  v3[6] = v2;
  v3[4] = a1;
  v3[7] = type metadata accessor for TopicTodayFeedGroupEmitter.Errors(0);
  v3[8] = swift_task_alloc();
  v4 = MEMORY[0x277D83D88];
  sub_2186D8B18(0, &unk_280E91B60, MEMORY[0x277D32040], MEMORY[0x277D83D88]);
  v3[9] = swift_task_alloc();
  sub_219BEF554();
  v3[10] = swift_task_alloc();
  v3[11] = swift_task_alloc();
  v5 = sub_219BED8D4();
  v3[12] = v5;
  v3[13] = *(v5 - 8);
  v3[14] = swift_task_alloc();
  v3[15] = type metadata accessor for TodayFeedGroup(0);
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();
  sub_2186D8B18(0, qword_280EA4250, type metadata accessor for TopicTodayFeedGroupEmitterCursor, v4);
  v3[18] = swift_task_alloc();
  v3[19] = swift_task_alloc();
  v3[20] = swift_task_alloc();
  v6 = sub_219BEFB64();
  v3[21] = v6;
  v3[22] = *(v6 - 8);
  v3[23] = swift_task_alloc();
  v7 = type metadata accessor for TopicTodayFeedGroupEmitterCursor(0);
  v3[24] = v7;
  v3[25] = *(v7 - 8);
  v3[26] = swift_task_alloc();
  v3[27] = swift_task_alloc();
  v3[28] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21902D5B8, 0, 0);
}

uint64_t sub_21902D5B8(uint64_t a1)
{
  sub_219BEF164();
  v2 = *(v1 + 16);
  *(v1 + 232) = v2;
  v3 = swift_task_alloc();
  *(v1 + 240) = v3;
  v3[1] = vextq_s8(*(v1 + 40), *(v1 + 40), 8uLL);
  v3[2].i64[0] = v2;
  v4 = swift_task_alloc();
  *(v1 + 248) = v4;
  *v4 = v1;
  v4[1] = sub_21902D7B0;
  v5 = *(v1 + 224);
  v6 = *(v1 + 192);

  return MEMORY[0x282190858](v5, v6, &unk_219C54228, v3, v6);
}

uint64_t sub_21902D7B0()
{
  *(*v1 + 256) = v0;

  if (v0)
  {
    v2 = sub_21902E380;
  }

  else
  {

    v2 = sub_21902D8CC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_21902D8CC(double a1)
{
  v2 = *(v1 + 256);
  v3 = *(v1 + 232);
  v4 = *(v1 + 192);
  v5 = *(v1 + 200);
  v6 = *(v1 + 184);
  v8 = *(v1 + 152);
  v7 = *(v1 + 160);
  v9 = *(v1 + 40);
  sub_2190350CC(*(v1 + 224), v8, type metadata accessor for TopicTodayFeedGroupEmitterCursor);
  (*(v5 + 56))(v8, 0, 1, v4);
  sub_21902F334(v6, v7, v8, v3, v9);
  v10 = v2;
  sub_21903523C(*(v1 + 152), qword_280EA4250, type metadata accessor for TopicTodayFeedGroupEmitterCursor);
  if (v2)
  {
    *(v1 + 24) = v2;
    v11 = v2;
    sub_2186CFDE4(0, &qword_280E8B580, MEMORY[0x277D84948]);
    if ((swift_dynamicCast() & 1) == 0)
    {
LABEL_5:
      v14 = *(v1 + 224);

      swift_willThrow();

      sub_219035314(v14, type metadata accessor for TopicTodayFeedGroupEmitterCursor);

      v15 = *(v1 + 8);

      return v15();
    }

    v12 = *(v1 + 64);
    sub_219034814();
    if ((*(*(v13 - 8) + 48))(v12, 1, v13) == 1)
    {
      sub_219035314(v12, type metadata accessor for TopicTodayFeedGroupEmitter.Errors);
      goto LABEL_5;
    }

    v20 = *(v1 + 208);

    sub_2190352AC(v12, v20, type metadata accessor for TopicTodayFeedGroupEmitterCursor);
    v21 = swift_task_alloc();
    *(v1 + 288) = v21;
    *v21 = v1;
    v21[1] = sub_21902E4AC;
    v22 = *(v1 + 232);
    v23 = *(v1 + 208);
    v24 = *(v1 + 40);

    return sub_2190321C8(v24, v22, v23);
  }

  else
  {
    v17 = swift_task_alloc();
    *(v1 + 264) = v17;
    *v17 = v1;
    v17[1] = sub_21902DC88;
    v18 = *(v1 + 184);
    v19 = *(v1 + 40);

    return sub_21903085C(v19, v18);
  }
}

uint64_t sub_21902DC88(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 272) = a1;
  *(v3 + 280) = v1;

  if (v1)
  {
    v4 = sub_21902E7CC;
  }

  else
  {
    v4 = sub_21902DD9C;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_21902DD9C()
{
  v28 = v0[25];
  v30 = v0[24];
  v24 = v0[18];
  v26 = v0[20];
  v22 = v0[17];
  v21 = v0[14];
  v1 = v0[13];
  v23 = v0[12];
  sub_2186E03A0(0);

  sub_219BEDCB4();
  sub_219BEDCC4();
  sub_219BEDCC4();
  sub_2189AE994(0);
  sub_219BEE9B4();
  sub_219BEE984();
  sub_219BEE9D4();
  type metadata accessor for TopicTodayFeedGroupKnobs(0);
  sub_21903485C(0, &qword_280E91860, type metadata accessor for TodayFeedServiceConfig, sub_2187DF448, MEMORY[0x277D32318]);
  sub_219BEEC84();
  sub_219BED834();
  v2 = sub_219BEFB24();
  (*(v1 + 32))(v22, v21, v23);
  *(v22 + *(type metadata accessor for TopicTodayFeedGroup(0) + 20)) = v2 & 1;
  swift_storeEnumTagMultiPayload();
  sub_2190351BC(v26, v24, qword_280EA4250, type metadata accessor for TopicTodayFeedGroupEmitterCursor);
  v3 = (*(v28 + 48))(v24, 1, v30);
  v31 = v0[28];
  if (v3 == 1)
  {
    v4 = v0[22];
    v5 = v0[23];
    v7 = v0[20];
    v6 = v0[21];
    v9 = v0[17];
    v8 = v0[18];
    v10 = v0[4];

    sub_21903523C(v7, qword_280EA4250, type metadata accessor for TopicTodayFeedGroupEmitterCursor);
    (*(v4 + 8))(v5, v6);
    sub_219035314(v31, type metadata accessor for TopicTodayFeedGroupEmitterCursor);
    sub_21903523C(v8, qword_280EA4250, type metadata accessor for TopicTodayFeedGroupEmitterCursor);
    sub_2190352AC(v9, v10, type metadata accessor for TodayFeedGroup);
  }

  else
  {
    v11 = v0[27];
    v12 = v0[24];
    v13 = v0[22];
    v27 = v0[21];
    v29 = v0[23];
    v25 = v0[20];
    v14 = v0[17];
    v15 = v0[4];
    sub_2190352AC(v0[18], v11, type metadata accessor for TopicTodayFeedGroupEmitterCursor);
    sub_218B8B468(0);
    v17 = (v15 + *(v16 + 48));
    sub_2190350CC(v14, v15, type metadata accessor for TodayFeedGroup);
    v17[3] = v12;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v17);
    sub_2190352AC(v11, boxed_opaque_existential_1, type metadata accessor for TopicTodayFeedGroupEmitterCursor);

    sub_219035314(v14, type metadata accessor for TodayFeedGroup);
    sub_21903523C(v25, qword_280EA4250, type metadata accessor for TopicTodayFeedGroupEmitterCursor);
    (*(v13 + 8))(v29, v27);
    sub_219035314(v31, type metadata accessor for TopicTodayFeedGroupEmitterCursor);
  }

  sub_21903485C(0, &qword_280E91700, type metadata accessor for TodayFeedGroup, sub_218B8B16C, MEMORY[0x277D324E8]);
  swift_storeEnumTagMultiPayload();

  v19 = v0[1];

  return v19();
}

uint64_t sub_21902E380()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21902E4AC(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 296) = v1;

  if (v1)
  {
    v5 = sub_21902EAB8;
  }

  else
  {
    *(v4 + 304) = a1;
    v5 = sub_21902E5D4;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_21902E5D4()
{
  v1 = *(v0 + 224);
  v2 = *(v0 + 208);
  v3 = *(v0 + 128);
  v4 = *(v0 + 32);
  sub_219033730(*(v0 + 304), v3);

  sub_219035314(v2, type metadata accessor for TopicTodayFeedGroupEmitterCursor);
  sub_219035314(v1, type metadata accessor for TopicTodayFeedGroupEmitterCursor);
  sub_2190352AC(v3, v4, type metadata accessor for TodayFeedGroup);
  sub_21903485C(0, &qword_280E91700, type metadata accessor for TodayFeedGroup, sub_218B8B16C, MEMORY[0x277D324E8]);
  swift_storeEnumTagMultiPayload();

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_21902E7CC()
{
  v2 = *(v0 + 176);
  v1 = *(v0 + 184);
  v3 = *(v0 + 168);
  sub_21903523C(*(v0 + 160), qword_280EA4250, type metadata accessor for TopicTodayFeedGroupEmitterCursor);
  (*(v2 + 8))(v1, v3);
  v4 = *(v0 + 280);
  *(v0 + 24) = v4;
  v5 = v4;
  sub_2186CFDE4(0, &qword_280E8B580, MEMORY[0x277D84948]);
  if (!swift_dynamicCast())
  {
LABEL_4:
    v8 = *(v0 + 224);

    swift_willThrow();

    sub_219035314(v8, type metadata accessor for TopicTodayFeedGroupEmitterCursor);

    v9 = *(v0 + 8);

    return v9();
  }

  v6 = *(v0 + 64);
  sub_219034814();
  if ((*(*(v7 - 8) + 48))(v6, 1, v7) == 1)
  {
    sub_219035314(v6, type metadata accessor for TopicTodayFeedGroupEmitter.Errors);
    goto LABEL_4;
  }

  v11 = *(v0 + 208);

  sub_2190352AC(v6, v11, type metadata accessor for TopicTodayFeedGroupEmitterCursor);
  v12 = swift_task_alloc();
  *(v0 + 288) = v12;
  *v12 = v0;
  v12[1] = sub_21902E4AC;
  v13 = *(v0 + 232);
  v14 = *(v0 + 208);
  v15 = *(v0 + 40);

  return sub_2190321C8(v15, v13, v14);
}

uint64_t sub_21902EAB8()
{
  v1 = *(v0 + 224);
  v2 = *(v0 + 208);

  sub_219035314(v2, type metadata accessor for TopicTodayFeedGroupEmitterCursor);
  sub_219035314(v1, type metadata accessor for TopicTodayFeedGroupEmitterCursor);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_21902EC14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_2187608D4;

  return sub_21902ECCC(a1, a3, a4);
}

uint64_t sub_21902ECCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[5] = a1;
  v3[6] = a3;
  v4 = sub_219BF02B4();
  v3[7] = v4;
  v3[8] = *(v4 - 8);
  v3[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21902ED8C, 0, 0);
}

uint64_t sub_21902ED8C(uint64_t a1)
{
  sub_219BE2CF4();
  v1[10] = v1[3];
  v2 = swift_task_alloc();
  v1[11] = v2;
  *v2 = v1;
  v2[1] = sub_21902EE48;

  return MEMORY[0x2821D23D8](v1 + 2);
}

uint64_t sub_21902EE48()
{
  *(*v1 + 96) = v0;

  if (v0)
  {
    v2 = sub_21902F254;
  }

  else
  {

    v2 = sub_21902EF64;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_21902EF64()
{
  v0[13] = v0[2];

  sub_219BE2CF4();

  v1 = sub_219BE2E54();
  v0[14] = sub_219BE2F74();

  v2 = swift_task_alloc();
  v0[15] = v2;
  *v2 = v0;
  v2[1] = sub_21902F07C;
  v3 = v0[9];

  return MEMORY[0x2821D23D8](v3);
}

uint64_t sub_21902F07C()
{
  *(*v1 + 128) = v0;

  if (v0)
  {
    v2 = sub_21902F2C0;
  }

  else
  {

    v2 = sub_21902F198;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_21902F198()
{
  v1 = v0[13];
  v2 = v0[5];
  (*(v0[8] + 32))(v2, v0[9], v0[7]);
  v3 = *(v1 + OBJC_IVAR____TtCC7NewsUI213TodayFeedPool11MyHeadlines_decayedPublisherDiversificationPenalty);

  *(v2 + *(type metadata accessor for TopicTodayFeedGroupEmitterCursor(0) + 20)) = v3;

  v4 = v0[1];

  return v4();
}

uint64_t sub_21902F254()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21902F2C0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_21902F334(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v145 = a5;
  v153 = a4;
  v166 = a3;
  v152 = a2;
  v151 = a1;
  v5 = MEMORY[0x277D83D88];
  sub_2186D8B18(0, &qword_280E91258, MEMORY[0x277D328D0], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v6 - 8);
  v149 = &v138 - v7;
  v8 = sub_219BEE6E4();
  v162 = *(v8 - 8);
  v163 = v8;
  MEMORY[0x28223BE20](v8);
  v165 = &v138 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v167 = &v138 - v11;
  v156 = sub_219BEFB64();
  v155 = *(v156 - 8);
  MEMORY[0x28223BE20](v156);
  v157 = &v138 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186D8B18(0, &qword_280E91250, MEMORY[0x277D328D8], v5);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v138 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v138 - v17;
  sub_2186D8B18(0, qword_280EA4250, type metadata accessor for TopicTodayFeedGroupEmitterCursor, v5);
  MEMORY[0x28223BE20](v19 - 8);
  v142 = &v138 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v148 = &v138 - v22;
  MEMORY[0x28223BE20](v23);
  v25 = &v138 - v24;
  MEMORY[0x28223BE20](v26);
  v28 = &v138 - v27;
  v29 = type metadata accessor for TopicTodayFeedGroupEmitterCursor(0);
  v30 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v146 = &v138 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v144 = &v138 - v33;
  MEMORY[0x28223BE20](v34);
  v36 = &v138 - v35;
  sub_2190351BC(v166, v28, qword_280EA4250, type metadata accessor for TopicTodayFeedGroupEmitterCursor);
  v143 = v30;
  v38 = *(v30 + 48);
  v37 = v30 + 48;
  v150 = v29;
  v147 = v38;
  if (v38(v28, 1, v29) == 1)
  {
    sub_21903523C(v28, qword_280EA4250, type metadata accessor for TopicTodayFeedGroupEmitterCursor);
    v39 = sub_219BEEDD4();
    sub_2186E0570(&qword_280E917E0, MEMORY[0x277D32430], MEMORY[0x277D32438]);
    swift_allocError();
    (*(*(v39 - 8) + 104))(v40, *MEMORY[0x277D323C8], v39);
    return swift_willThrow();
  }

  v141 = v37;
  sub_2190352AC(v28, v36, type metadata accessor for TopicTodayFeedGroupEmitterCursor);
  sub_218C82C58(v18, v25, MEMORY[0x277D84F90]);
  sub_2190351BC(v18, v15, &qword_280E91250, MEMORY[0x277D328D8]);
  v42 = v155;
  v43 = v156;
  if ((*(v155 + 48))(v15, 1, v156) == 1)
  {
    sub_21903523C(v15, &qword_280E91250, MEMORY[0x277D328D8]);
    v44 = *(sub_219BF0274() + 16);

    if (v44)
    {
      type metadata accessor for TopicTodayFeedGroupEmitter.Errors(0);
      sub_2186E0570(&unk_280EB9B78, type metadata accessor for TopicTodayFeedGroupEmitter.Errors, &unk_219C54250);
      swift_allocError();
      v46 = v45;
      sub_2190350CC(v36, v45, type metadata accessor for TopicTodayFeedGroupEmitterCursor);
      sub_219034814();
      (*(*(v47 - 8) + 56))(v46, 0, 1, v47);
    }

    else
    {
      v70 = sub_219BEEDD4();
      sub_2186E0570(&qword_280E917E0, MEMORY[0x277D32430], MEMORY[0x277D32438]);
      swift_allocError();
      (*(*(v70 - 8) + 104))(v71, *MEMORY[0x277D32390], v70);
    }

    swift_willThrow();
    sub_21903523C(v25, qword_280EA4250, type metadata accessor for TopicTodayFeedGroupEmitterCursor);
    sub_21903523C(v18, &qword_280E91250, MEMORY[0x277D328D8]);
    v72 = v36;
    return sub_219035314(v72, type metadata accessor for TopicTodayFeedGroupEmitterCursor);
  }

  v140 = v25;
  v138 = v36;
  v139 = v18;
  (*(v42 + 32))(v157, v15, v43);
  v48 = sub_219BEFAF4();
  v160 = *(v48 + 16);
  v161 = v153 + OBJC_IVAR____TtC7NewsUI213TodayFeedPool_headlines;
  if (v160)
  {
    v49 = 0;
    v158 = v162 + 16;
    v154 = (v162 + 8);
    *&v164 = v162 + 32;
    v50 = MEMORY[0x277D84F90];
    v51 = v163;
    v159 = v48;
    while (v49 < *(v48 + 16))
    {
      v166 = v50;
      v52 = (*(v162 + 80) + 32) & ~*(v162 + 80);
      v53 = *(v162 + 72);
      v54 = (*(v162 + 16))(v167, v48 + v52 + v53 * v49, v51);
      v55 = *(v161 + 16);
      v56 = MEMORY[0x21CEC5420](v54);
      v58 = v57;
      if (*(v55 + 16) && (v59 = v56, sub_219BF7AA4(), sub_219BF5524(), v60 = sub_219BF7AE4(), v61 = -1 << *(v55 + 32), v62 = v60 & ~v61, ((*(v55 + 56 + ((v62 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v62) & 1) != 0))
      {
        v63 = ~v61;
        while (1)
        {
          v64 = (*(v55 + 48) + 16 * v62);
          v65 = *v64 == v59 && v64[1] == v58;
          if (v65 || (sub_219BF78F4() & 1) != 0)
          {
            break;
          }

          v62 = (v62 + 1) & v63;
          if (((*(v55 + 56 + ((v62 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v62) & 1) == 0)
          {
            goto LABEL_20;
          }
        }

        v51 = v163;
        (*v154)(v167, v163);
        v50 = v166;
      }

      else
      {
LABEL_20:

        v51 = v163;
        v66 = *v164;
        (*v164)(v165, v167, v163);
        v50 = v166;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v169 = v50;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_218C34B28(0, *(v50 + 16) + 1, 1);
          v50 = v169;
        }

        v69 = *(v50 + 16);
        v68 = *(v50 + 24);
        if (v69 >= v68 >> 1)
        {
          sub_218C34B28((v68 > 1), v69 + 1, 1);
          v50 = v169;
        }

        *(v50 + 16) = v69 + 1;
        v66(v50 + v52 + v69 * v53, v165, v51);
      }

      ++v49;
      v48 = v159;
      if (v49 == v160)
      {
        goto LABEL_29;
      }
    }

    __break(1u);
LABEL_41:
    swift_once();
    goto LABEL_30;
  }

  v50 = MEMORY[0x277D84F90];
LABEL_29:

  if (qword_280E8D7A0 != -1)
  {
    goto LABEL_41;
  }

LABEL_30:
  v167 = qword_280F616D8;
  sub_2186F20D4(0);
  v73 = swift_allocObject();
  v164 = xmmword_219C0B8C0;
  *(v73 + 16) = xmmword_219C0B8C0;
  v74 = [sub_219BEFB34() identifier];
  swift_unknownObjectRelease();
  v75 = sub_219BF5414();
  v77 = v76;

  *(v73 + 56) = MEMORY[0x277D837D0];
  v165 = sub_2186FC3BC();
  *(v73 + 64) = v165;
  *(v73 + 32) = v75;
  *(v73 + 40) = v77;
  v78 = sub_219BEFB44();
  if (v78 >> 62)
  {
    v79 = sub_219BF7214();
  }

  else
  {
    v79 = *((v78 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v80 = MEMORY[0x277D83B88];
  v81 = MEMORY[0x277D83C10];
  *(v73 + 96) = MEMORY[0x277D83B88];
  *(v73 + 104) = v81;
  *(v73 + 72) = v79;
  v82 = *(v50 + 16);
  *(v73 + 136) = v80;
  *(v73 + 144) = v81;
  *(v73 + 112) = v82;
  v83 = sub_219BF6214();
  v84 = v167;
  sub_219BE5314("Topic group %{public}@ filtered headlines %ld to %ld", 52, 2, &dword_2186C1000, v167, v83, v73);

  v85 = v157;
  if (v82 >= sub_219BEFAE4())
  {
    v108 = sub_219BEFB04();
    v109 = v149;
    (*(*(v108 - 8) + 56))(v149, 1, 1, v108);
    sub_219BEFB54();

    sub_21903523C(v109, &qword_280E91258, MEMORY[0x277D328D0]);
    (*(v155 + 8))(v85, v156);
    sub_21903523C(v139, &qword_280E91250, MEMORY[0x277D328D8]);
    sub_219035314(v138, type metadata accessor for TopicTodayFeedGroupEmitterCursor);
    return sub_219035038(v140, v152);
  }

  else
  {
    v166 = v50;
    v86 = swift_allocObject();
    *(v86 + 16) = v164;
    v87 = [sub_219BEFB34() identifier];
    swift_unknownObjectRelease();
    v88 = sub_219BF5414();
    v90 = v89;

    v91 = v165;
    *(v86 + 56) = MEMORY[0x277D837D0];
    *(v86 + 64) = v91;
    *(v86 + 32) = v88;
    *(v86 + 40) = v90;
    v92 = MEMORY[0x277D83B88];
    *(v86 + 96) = MEMORY[0x277D83B88];
    *(v86 + 104) = v81;
    *(v86 + 72) = v82;
    v93 = sub_219BEFAE4();
    *(v86 + 136) = v92;
    *(v86 + 144) = v81;
    *(v86 + 112) = v93;
    v94 = sub_219BF6214();
    sub_219BE5314("Topic group %{public}@ filtered headlines %ld is less than min cluster size %ld", 79, 2, &dword_2186C1000, v84, v94, v86);

    v95 = v140;
    v96 = v148;
    sub_2190351BC(v140, v148, qword_280EA4250, type metadata accessor for TopicTodayFeedGroupEmitterCursor);
    v97 = v150;
    if (v147(v96, 1, v150) == 1)
    {

      sub_21903523C(v96, qword_280EA4250, type metadata accessor for TopicTodayFeedGroupEmitterCursor);
      v98 = sub_219BF6204();
      v99 = swift_allocObject();
      *(v99 + 16) = v164;
      v100 = [sub_219BEFB34() identifier];
      swift_unknownObjectRelease();
      v101 = sub_219BF5414();
      v103 = v102;

      v104 = v157;
      v105 = v165;
      *(v99 + 56) = MEMORY[0x277D837D0];
      *(v99 + 64) = v105;
      *(v99 + 32) = v101;
      *(v99 + 40) = v103;
      v106 = MEMORY[0x277D83B88];
      *(v99 + 96) = MEMORY[0x277D83B88];
      *(v99 + 104) = v81;
      *(v99 + 72) = v82;
      v107 = sub_219BEFAE4();
      *(v99 + 136) = v106;
      *(v99 + 144) = v81;
      *(v99 + 112) = v107;
      sub_219BE5314("Topic group %{public}@ skipped because filtered headlines %ld less than min cluster size %ld and there are no more clusters", 123, 2, &dword_2186C1000, v167, v98, v99);

      sub_21902F334(v151, v152, v95, v153, v145);
      (*(v155 + 8))(v104, v156);
      sub_21903523C(v95, qword_280EA4250, type metadata accessor for TopicTodayFeedGroupEmitterCursor);
      sub_21903523C(v139, &qword_280E91250, MEMORY[0x277D328D8]);
      v72 = v138;
      return sub_219035314(v72, type metadata accessor for TopicTodayFeedGroupEmitterCursor);
    }

    v110 = v144;
    sub_2190352AC(v96, v144, type metadata accessor for TopicTodayFeedGroupEmitterCursor);
    sub_219BEFB34();
    result = sub_219BEFAE4();
    if (__OFSUB__(result, v82))
    {
      __break(1u);
    }

    else
    {
      v111 = v146;
      v112 = sub_219BF0264();
      swift_unknownObjectRelease();
      *(v111 + *(v97 + 20)) = *(v110 + *(v97 + 20));
      v113 = MEMORY[0x277D83B88];
      if (!v112)
      {

        v127 = sub_219BF6204();
        v128 = swift_allocObject();
        *(v128 + 16) = v164;
        v129 = v157;
        v130 = [sub_219BEFB34() identifier];
        swift_unknownObjectRelease();
        v131 = sub_219BF5414();
        v133 = v132;

        v134 = v165;
        *(v128 + 56) = MEMORY[0x277D837D0];
        *(v128 + 64) = v134;
        *(v128 + 32) = v131;
        *(v128 + 40) = v133;
        *(v128 + 96) = v113;
        *(v128 + 104) = v81;
        *(v128 + 72) = v82;
        v135 = sub_219BEFAE4();
        *(v128 + 136) = v113;
        *(v128 + 144) = v81;
        *(v128 + 112) = v135;
        sub_219BE5314("Topic group %{public}@ skipped because filtered headlines %ld less than min cluster size %ld and not enough headlines could be stolen from a future group", 153, 2, &dword_2186C1000, v167, v127, v128);

        v136 = v146;
        v137 = v142;
        sub_2190350CC(v146, v142, type metadata accessor for TopicTodayFeedGroupEmitterCursor);
        (*(v143 + 56))(v137, 0, 1, v150);
        sub_21902F334(v151, v152, v137, v153, v145);
        sub_21903523C(v137, qword_280EA4250, type metadata accessor for TopicTodayFeedGroupEmitterCursor);
        sub_219035314(v136, type metadata accessor for TopicTodayFeedGroupEmitterCursor);
        sub_219035314(v144, type metadata accessor for TopicTodayFeedGroupEmitterCursor);
        (*(v155 + 8))(v129, v156);
        sub_21903523C(v140, qword_280EA4250, type metadata accessor for TopicTodayFeedGroupEmitterCursor);
        sub_21903523C(v139, &qword_280E91250, MEMORY[0x277D328D8]);
        v72 = v138;
        return sub_219035314(v72, type metadata accessor for TopicTodayFeedGroupEmitterCursor);
      }

      v114 = v110;
      v115 = swift_allocObject();
      *(v115 + 16) = xmmword_219C09EC0;
      v116 = v157;
      v117 = [sub_219BEFB34() identifier];
      swift_unknownObjectRelease();
      v118 = sub_219BF5414();
      v120 = v119;

      v121 = v165;
      *(v115 + 56) = MEMORY[0x277D837D0];
      *(v115 + 64) = v121;
      *(v115 + 32) = v118;
      *(v115 + 40) = v120;
      v122 = *(v112 + 16);
      *(v115 + 96) = v113;
      *(v115 + 104) = v81;
      *(v115 + 72) = v122;
      v123 = sub_219BF6214();
      sub_219BE5314("Topic group %{public}@ stole %lu headlines", 42, 2, &dword_2186C1000, v167, v123, v115);

      v168 = v166;
      sub_2191EDA68(v112);
      v124 = sub_219BEFB04();
      v125 = v149;
      (*(*(v124 - 8) + 56))(v149, 1, 1, v124);
      sub_219BEFB54();

      sub_21903523C(v125, &qword_280E91258, MEMORY[0x277D328D0]);
      sub_219035314(v114, type metadata accessor for TopicTodayFeedGroupEmitterCursor);
      (*(v155 + 8))(v116, v156);
      sub_21903523C(v140, qword_280EA4250, type metadata accessor for TopicTodayFeedGroupEmitterCursor);
      sub_21903523C(v139, &qword_280E91250, MEMORY[0x277D328D8]);
      sub_219035314(v138, type metadata accessor for TopicTodayFeedGroupEmitterCursor);
      v126 = v152;
      sub_2190352AC(v146, v152, type metadata accessor for TopicTodayFeedGroupEmitterCursor);
      return (*(v143 + 56))(v126, 0, 1, v150);
    }
  }

  return result;
}

uint64_t sub_21903085C(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = MEMORY[0x277D83D88];
  sub_2186D8B18(0, &qword_280E90380, MEMORY[0x277D339F0], MEMORY[0x277D83D88]);
  v3[5] = swift_task_alloc();
  sub_2186D8B18(0, &qword_280E90150, MEMORY[0x277D33EC8], v4);
  v3[6] = swift_task_alloc();
  sub_2186D8B18(0, &unk_280E91A10, sub_2189AE994, v4);
  v3[7] = swift_task_alloc();
  v5 = sub_219BF2AB4();
  v3[8] = v5;
  v3[9] = *(v5 - 8);
  v3[10] = swift_task_alloc();
  v6 = sub_219BF2034();
  v3[11] = v6;
  v3[12] = *(v6 - 8);
  v3[13] = swift_task_alloc();
  sub_2186D8B18(0, &unk_280E8FF30, sub_218A42400, v4);
  v3[14] = swift_task_alloc();
  sub_2186D8B18(0, &qword_280EE33F0, MEMORY[0x277D2D4E0], v4);
  v3[15] = swift_task_alloc();
  v7 = sub_219BDBD64();
  v3[16] = v7;
  v3[17] = *(v7 - 8);
  v3[18] = swift_task_alloc();
  v8 = sub_219BF2124();
  v3[19] = v8;
  v3[20] = *(v8 - 8);
  v3[21] = swift_task_alloc();
  v9 = sub_219BF3C84();
  v3[22] = v9;
  v3[23] = *(v9 - 8);
  v3[24] = swift_task_alloc();
  v10 = sub_219BF26F4();
  v3[25] = v10;
  v3[26] = *(v10 - 8);
  v3[27] = swift_task_alloc();
  v11 = sub_219BF1364();
  v3[28] = v11;
  v3[29] = *(v11 - 8);
  v3[30] = swift_task_alloc();
  v12 = sub_219BF1214();
  v3[31] = v12;
  v3[32] = *(v12 - 8);
  v3[33] = swift_task_alloc();
  v3[34] = type metadata accessor for TopicTodayFeedGroupConfigData(0);
  v3[35] = swift_task_alloc();
  v3[36] = swift_task_alloc();
  v13 = sub_219BF1934();
  v3[37] = v13;
  v3[38] = *(v13 - 8);
  v3[39] = swift_task_alloc();
  v3[40] = swift_task_alloc();
  v3[41] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_219030DE4, 0, 0);
}

uint64_t sub_219030DE4()
{
  v1 = v0[40];
  v2 = v0[38];
  v71 = v0[37];
  v3 = v0[35];
  v4 = v0[36];
  v80 = v0[33];
  v5 = v0[32];
  v76 = v0[34];
  v77 = v0[31];
  sub_2186E03A0(0);
  sub_219BEDD14();
  (*(v2 + 16))(v1, v4, v71);
  sub_219035314(v4, type metadata accessor for TopicTodayFeedGroupConfigData);
  sub_219BEF174();
  sub_219BEDD14();
  (*(v5 + 16))(v80, v3 + *(v76 + 24), v77);
  sub_219035314(v3, type metadata accessor for TopicTodayFeedGroupConfigData);
  if (qword_280E8D7A0 != -1)
  {
    swift_once();
  }

  v61 = v0[40];
  v6 = v0[38];
  v8 = v0[32];
  v7 = v0[33];
  v62 = v0[31];
  v63 = v0[37];
  v65 = v0[30];
  v68 = v0[28];
  v69 = v0[29];
  v72 = v0[27];
  v78 = v0[26];
  v81 = v0[25];
  v74 = v0[20];
  v9 = qword_280F616D8;
  sub_219BEFB34();
  v60 = v9;
  sub_219BF1774();
  swift_unknownObjectRelease();

  (*(v8 + 8))(v7, v62);
  v10 = *(v6 + 8);
  v0[42] = v10;
  v0[43] = (v6 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v10(v61, v63);
  sub_219BEFB34();
  swift_getObjectType();
  sub_2194F6464(v65);
  swift_unknownObjectRelease();
  v11 = MEMORY[0x277D84560];
  sub_2186D8B18(0, &qword_280E8B850, MEMORY[0x277D334E0], MEMORY[0x277D84560]);
  sub_219BF1A44();
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_219C09BA0;
  v13 = swift_allocBox();
  (*(v69 + 16))(v14, v65, v68);
  *v72 = v13;
  (*(v74 + 104))();
  (*(v78 + 104))(v72, *MEMORY[0x277D339C8], v81);
  sub_219BF1A04();
  sub_2186D8B18(0, &unk_280E8B790, MEMORY[0x277D34258], v11);
  sub_219BF3E84();
  *(swift_allocObject() + 16) = xmmword_219C09EC0;
  v15 = sub_219BEFB44();
  if (v15 >> 62)
  {
    v52 = v15;
    v16 = sub_219BF7214();
    v15 = v52;
  }

  else
  {
    v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v83 = v0;
  v67 = v12;
  if (v16)
  {
    v17 = v15;
    v84 = MEMORY[0x277D84F90];
    v18 = sub_218C34A88(0, v16 & ~(v16 >> 63), 0);
    if (v16 < 0)
    {
      __break(1u);
      return MEMORY[0x2821921B8](v18, v19, v20, v21, v22);
    }

    v23 = 0;
    v24 = v0[23];
    v79 = *MEMORY[0x277D34128];
    do
    {
      if ((v17 & 0xC000000000000001) != 0)
      {
        v25 = MEMORY[0x21CECE0F0](v23);
      }

      else
      {
        v25 = swift_unknownObjectRetain();
      }

      v26 = v83[24];
      v27 = v83[22];
      *v26 = v25;
      (*(v24 + 104))(v26, v79, v27);
      v29 = *(v84 + 16);
      v28 = *(v84 + 24);
      if (v29 >= v28 >> 1)
      {
        sub_218C34A88((v28 > 1), v29 + 1, 1);
      }

      v30 = v83[24];
      v31 = v83[22];
      ++v23;
      *(v84 + 16) = v29 + 1;
      (*(v24 + 32))(v84 + ((*(v24 + 80) + 32) & ~*(v24 + 80)) + *(v24 + 72) * v29, v30, v31);
    }

    while (v16 != v23);

    v0 = v83;
  }

  else
  {
  }

  v54 = v0[18];
  v55 = v0[17];
  v57 = v0[16];
  v58 = v0[15];
  v59 = v0[14];
  v64 = v0[7];
  v66 = v0[6];
  v82 = v0[4];
  v70 = v0[5];
  v32 = MEMORY[0x277D84F90];
  sub_218F0B984(MEMORY[0x277D84F90]);
  sub_218F0BA7C(v32);
  sub_218F0BB90(v32);
  sub_219BF3E74();
  sub_2186D8B18(0, &qword_280E8B860, MEMORY[0x277D333A8], MEMORY[0x277D84560]);
  sub_219BF14C4();
  *(swift_allocObject() + 16) = xmmword_219C09EC0;
  v33 = [sub_219BEFB34() groupName];
  swift_unknownObjectRelease();
  sub_219BF5414();

  sub_219BF20F4();

  sub_219BF14A4();
  sub_219BF2104();
  sub_219BF14A4();
  sub_218F0B984(v32);
  sub_218F0BA7C(v32);
  sub_218F0BB90(v32);
  sub_219BF3E74();
  v73 = *(v82 + OBJC_IVAR____TtC7NewsUI226TopicTodayFeedGroupEmitter_formatService + 24);
  v75 = *(v82 + OBJC_IVAR____TtC7NewsUI226TopicTodayFeedGroupEmitter_formatService + 32);
  __swift_project_boxed_opaque_existential_1((v82 + OBJC_IVAR____TtC7NewsUI226TopicTodayFeedGroupEmitter_formatService), v73);
  v34 = [sub_219BEFB34() identifier];
  swift_unknownObjectRelease();
  v35 = sub_219BF5414();
  v37 = v36;

  MEMORY[0x21CECC330](v35, v37);

  MEMORY[0x21CECC330](14906, 0xE200000000000000);
  sub_219BDBD54();
  v38 = sub_219BDBD44();
  v40 = v39;
  (*(v55 + 8))(v54, v57);
  MEMORY[0x21CECC330](v38, v40);

  v41 = [sub_219BEFB34() identifier];
  swift_unknownObjectRelease();
  sub_219BF5414();

  v42 = sub_219BEC004();
  v56 = *(*(v42 - 8) + 56);
  v56(v58, 1, 1, v42);
  sub_219BF1714();
  sub_2191EED30(v67);
  sub_218A42400(0);
  (*(*(v43 - 8) + 56))(v59, 1, 1, v43);
  sub_219BF1764();

  sub_21903523C(v59, &unk_280E8FF30, sub_218A42400);
  sub_21903523C(v58, &qword_280EE33F0, MEMORY[0x277D2D4E0]);
  sub_2186DF030(0, &qword_280E8B5A0, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
  v44 = swift_allocObject();
  *(v44 + 16) = xmmword_219C146A0;
  *(v44 + 32) = sub_219BEFB34();
  v56(v58, 1, 1, v42);
  sub_219A95188(v32);
  sub_219A95188(v32);
  sub_219A951A0(v32);
  sub_219A951B8(v32);
  sub_219A952CC(v32);
  sub_219A952E4(v32);
  sub_219A953F8(v32);
  sub_219BF2024();
  v45 = OBJC_IVAR____TtC7NewsUI226TopicTodayFeedGroupEmitter_knobs;
  sub_2189AE994(0);
  v47 = v46;
  v48 = *(v46 - 8);
  (*(v48 + 16))(v64, v82 + v45, v46);
  (*(v48 + 56))(v64, 0, 1, v47);
  v49 = sub_219BF35D4();
  (*(*(v49 - 8) + 56))(v66, 1, 1, v49);
  *(v83 + 376) = 8;
  sub_21903485C(0, &qword_280E90070, type metadata accessor for TodayFeedServiceConfig, sub_2187DF448, MEMORY[0x277D33F88]);
  swift_allocObject();

  sub_219BF38D4();
  v50 = sub_219BF2774();
  (*(*(v50 - 8) + 56))(v70, 1, 1, v50);
  *MEMORY[0x277D30BC8];
  v60;
  sub_219BF2A84();
  v51 = swift_task_alloc();
  v83[44] = v51;
  *v51 = v83;
  v51[1] = sub_219031C34;
  v19 = v83[13];
  v20 = v83[10];
  v18 = v83[39];
  v21 = v73;
  v22 = v75;

  return MEMORY[0x2821921B8](v18, v19, v20, v21, v22);
}

uint64_t sub_219031C34(uint64_t a1)
{
  v3 = *v2;
  v3[45] = v1;

  v15 = v3[42];
  v4 = v3[39];
  v5 = v3[37];
  v6 = v3[13];
  v7 = v3[12];
  v8 = v3[11];
  v9 = v3[10];
  v10 = v3[9];
  v11 = v3[8];
  if (v1)
  {
    (*(v10 + 8))(v9, v11);
    (*(v7 + 8))(v6, v8);
    v15(v4, v5);
    v12 = sub_219032040;
  }

  else
  {
    v3[46] = a1;
    (*(v10 + 8))(v9, v11);
    (*(v7 + 8))(v6, v8);
    v15(v4, v5);
    v12 = sub_219031EB4;
  }

  return MEMORY[0x2822009F8](v12, 0, 0);
}

uint64_t sub_219031EB4()
{
  v1 = v0[42];
  v2 = v0[41];
  v3 = v0[37];
  (*(v0[29] + 8))(v0[30], v0[28]);
  v1(v2, v3);

  v4 = v0[1];
  v5 = v0[46];

  return v4(v5);
}

uint64_t sub_219032040()
{
  v1 = v0[42];
  v2 = v0[41];
  v3 = v0[37];
  (*(v0[29] + 8))(v0[30], v0[28]);
  v1(v2, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_2190321C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = MEMORY[0x277D83D88];
  sub_2186D8B18(0, &qword_280E90380, MEMORY[0x277D339F0], MEMORY[0x277D83D88]);
  v4[6] = swift_task_alloc();
  sub_2186D8B18(0, &qword_280E90150, MEMORY[0x277D33EC8], v5);
  v4[7] = swift_task_alloc();
  sub_2186D8B18(0, &unk_280E91A10, sub_2189AE994, v5);
  v4[8] = swift_task_alloc();
  v6 = sub_219BF2AB4();
  v4[9] = v6;
  v4[10] = *(v6 - 8);
  v4[11] = swift_task_alloc();
  v7 = sub_219BF2034();
  v4[12] = v7;
  v4[13] = *(v7 - 8);
  v4[14] = swift_task_alloc();
  sub_2186D8B18(0, &unk_280E8FF30, sub_218A42400, v5);
  v4[15] = swift_task_alloc();
  sub_2186D8B18(0, &qword_280EE33F0, MEMORY[0x277D2D4E0], v5);
  v4[16] = swift_task_alloc();
  v8 = sub_219BDBD64();
  v4[17] = v8;
  v4[18] = *(v8 - 8);
  v4[19] = swift_task_alloc();
  v9 = sub_219BF3C84();
  v4[20] = v9;
  v4[21] = *(v9 - 8);
  v4[22] = swift_task_alloc();
  v4[23] = swift_task_alloc();
  v10 = sub_219BF3E84();
  v4[24] = v10;
  v4[25] = *(v10 - 8);
  v4[26] = swift_task_alloc();
  sub_2186D8B18(0, &qword_280E90800, MEMORY[0x277D33478], v5);
  v4[27] = swift_task_alloc();
  v4[28] = type metadata accessor for TopicTodayFeedGroupConfigData(0);
  v4[29] = swift_task_alloc();
  v11 = sub_219BF1934();
  v4[30] = v11;
  v4[31] = *(v11 - 8);
  v4[32] = swift_task_alloc();
  v4[33] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21903267C, 0, 0);
}

uint64_t sub_21903267C()
{
  v72 = v0;
  v1 = *(v0 + 240);
  v2 = *(v0 + 248);
  v4 = *(v0 + 224);
  v3 = *(v0 + 232);
  v5 = *(v0 + 216);
  sub_2186E03A0(0);
  sub_219BEDD14();
  sub_2190351BC(v3 + *(v4 + 20), v5, &qword_280E90800, MEMORY[0x277D33478]);
  sub_219035314(v3, type metadata accessor for TopicTodayFeedGroupConfigData);
  if ((*(v2 + 48))(v5, 1, v1) != 1)
  {
    v10 = *(v0 + 24);
    v9 = *(v0 + 32);
    (*(*(v0 + 248) + 32))(*(v0 + 264), *(v0 + 216), *(v0 + 240));
    v11 = sub_219BF0274();
    v12 = type metadata accessor for TopicTodayFeedGroupEmitterCursor(0);
    v15 = sub_2190348DC(v11, v10, *(v9 + *(v12 + 20)));

    if (v15 >> 62)
    {
      v16 = sub_219BF7214();
    }

    else
    {
      v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v16)
    {
      v71[0] = MEMORY[0x277D84F90];
      v17 = sub_218C34A88(0, v16 & ~(v16 >> 63), 0);
      if (v16 < 0)
      {
        __break(1u);
        return MEMORY[0x2821921B8](v17, v18, v19, v20, v21);
      }

      v22 = v71[0];
      v23 = *(v0 + 168);
      if ((v15 & 0xC000000000000001) != 0)
      {
        v24 = 0;
        v25 = *MEMORY[0x277D34128];
        do
        {
          v26 = *(v0 + 184);
          v27 = *(v0 + 160);
          *v26 = MEMORY[0x21CECE0F0](v24, v15);
          (*(v23 + 104))(v26, v25, v27);
          v71[0] = v22;
          v29 = *(v22 + 16);
          v28 = *(v22 + 24);
          if (v29 >= v28 >> 1)
          {
            sub_218C34A88((v28 > 1), v29 + 1, 1);
            v22 = v71[0];
          }

          v30 = *(v0 + 184);
          v31 = *(v0 + 160);
          ++v24;
          *(v22 + 16) = v29 + 1;
          (*(v23 + 32))(v22 + ((*(v23 + 80) + 32) & ~*(v23 + 80)) + *(v23 + 72) * v29, v30, v31);
        }

        while (v16 != v24);
      }

      else
      {
        v68 = *(v23 + 104);
        v32 = 32;
        do
        {
          v33 = v15;
          **(v0 + 176) = *(v15 + v32);
          v68();
          v71[0] = v22;
          v34 = *(v22 + 16);
          v35 = *(v22 + 24);
          swift_unknownObjectRetain();
          if (v34 >= v35 >> 1)
          {
            sub_218C34A88((v35 > 1), v34 + 1, 1);
            v22 = v71[0];
          }

          v36 = *(v0 + 176);
          v37 = *(v0 + 160);
          *(v22 + 16) = v34 + 1;
          (*(v23 + 32))(v22 + ((*(v23 + 80) + 32) & ~*(v23 + 80)) + *(v23 + 72) * v34, v36, v37);
          v32 += 8;
          --v16;
          v15 = v33;
        }

        while (v16);
      }
    }

    v38 = *(v0 + 200);
    v63 = *(v0 + 208);
    v64 = *(v0 + 192);
    v39 = *(v0 + 144);
    v40 = *(v0 + 152);
    v60 = *(v0 + 136);
    v61 = *(v0 + 128);
    v62 = *(v0 + 120);
    v65 = *(v0 + 64);
    v66 = *(v0 + 56);
    v41 = *(v0 + 40);
    v67 = *(v0 + 48);
    v42 = MEMORY[0x277D84F90];
    sub_218F0B984(MEMORY[0x277D84F90]);
    sub_218F0BA7C(v42);
    sub_218F0BB90(v42);
    sub_219BF3E74();
    v69 = *(v41 + OBJC_IVAR____TtC7NewsUI226TopicTodayFeedGroupEmitter_formatService + 32);
    v70 = *(v41 + OBJC_IVAR____TtC7NewsUI226TopicTodayFeedGroupEmitter_formatService + 24);
    __swift_project_boxed_opaque_existential_1((v41 + OBJC_IVAR____TtC7NewsUI226TopicTodayFeedGroupEmitter_formatService), v70);
    strcpy(v71, "moreForYou::");
    BYTE5(v71[1]) = 0;
    HIWORD(v71[1]) = -5120;
    sub_219BDBD54();
    v43 = sub_219BDBD44();
    v45 = v44;
    (*(v39 + 8))(v40, v60);
    MEMORY[0x21CECC330](v43, v45);

    v46 = sub_219BEC004();
    v47 = *(*(v46 - 8) + 56);
    v47(v61, 1, 1, v46);
    sub_218A42400(0);
    (*(*(v48 - 8) + 56))(v62, 1, 1, v48);
    sub_219BF1764();

    sub_21903523C(v62, &unk_280E8FF30, sub_218A42400);
    sub_21903523C(v61, &qword_280EE33F0, MEMORY[0x277D2D4E0]);
    sub_2186D8B18(0, &unk_280E8B790, MEMORY[0x277D34258], MEMORY[0x277D84560]);
    v49 = (*(v38 + 80) + 32) & ~*(v38 + 80);
    v50 = swift_allocObject();
    *(v50 + 16) = xmmword_219C09BA0;
    (*(v38 + 16))(v50 + v49, v63, v64);
    v47(v61, 1, 1, v46);
    sub_219A95188(v42);
    sub_219A95188(v42);
    sub_219A951A0(v42);
    sub_219A951B8(v42);
    sub_219A952CC(v42);
    sub_219A952E4(v42);
    sub_219A953F8(v42);
    sub_219BF2024();
    v51 = v41 + OBJC_IVAR____TtC7NewsUI226TopicTodayFeedGroupEmitter_knobs;
    v52 = *(type metadata accessor for TopicTodayFeedGroupKnobs(0) + 24);
    sub_2189AE994(0);
    v54 = v53;
    v55 = *(v53 - 8);
    (*(v55 + 16))(v65, v51 + v52, v53);
    (*(v55 + 56))(v65, 0, 1, v54);
    v56 = sub_219BF35D4();
    (*(*(v56 - 8) + 56))(v66, 1, 1, v56);
    *(v0 + 328) = 7;
    sub_21903485C(0, &qword_280E90070, type metadata accessor for TodayFeedServiceConfig, sub_2187DF448, MEMORY[0x277D33F88]);
    swift_allocObject();

    sub_219BF38D4();
    v57 = sub_219BF2774();
    (*(*(v57 - 8) + 56))(v67, 1, 1, v57);
    v58 = qword_280E8D7A0;
    *MEMORY[0x277D30BC8];
    if (v58 != -1)
    {
      swift_once();
    }

    qword_280F616D8;
    sub_219BF2A84();
    v59 = swift_task_alloc();
    *(v0 + 272) = v59;
    *v59 = v0;
    v59[1] = sub_2190331E4;
    v18 = *(v0 + 112);
    v19 = *(v0 + 88);
    v17 = *(v0 + 256);
    v21 = v69;
    v20 = v70;

    return MEMORY[0x2821921B8](v17, v18, v19, v20, v21);
  }

  sub_21903523C(*(v0 + 216), &qword_280E90800, MEMORY[0x277D33478]);
  type metadata accessor for TopicTodayFeedGroupEmitter.Errors(0);
  sub_2186E0570(&unk_280EB9B78, type metadata accessor for TopicTodayFeedGroupEmitter.Errors, &unk_219C54250);
  swift_allocError();
  v7 = v6;
  sub_219034814();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  swift_willThrow();

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_2190331E4(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 248);
  v5 = *(*v2 + 104);
  v6 = *(*v2 + 80);
  v3[35] = v1;

  v7 = (v6 + 8);
  v8 = (v5 + 8);
  v9 = (v4 + 8);
  v10 = v3[32];
  v11 = v3[30];
  v12 = v3[14];
  v13 = v3[12];
  v14 = v3[11];
  v15 = v3[9];
  if (v1)
  {
    (*v7)(v14, v15);
    (*v8)(v12, v13);
    v16 = *v9;
    v3[39] = *v9;
    v3[40] = v9 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v16(v10, v11);
    v17 = sub_2190335D8;
  }

  else
  {
    v3[36] = a1;
    (*v7)(v14, v15);
    (*v8)(v12, v13);
    v18 = *v9;
    v3[37] = *v9;
    v3[38] = v9 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v18(v10, v11);
    v17 = sub_21903347C;
  }

  return MEMORY[0x2822009F8](v17, 0, 0);
}

uint64_t sub_21903347C()
{
  v1 = v0[37];
  v2 = v0[33];
  v3 = v0[30];
  (*(v0[25] + 8))(v0[26], v0[24]);
  v1(v2, v3);

  v4 = v0[1];
  v5 = v0[36];

  return v4(v5);
}

uint64_t sub_2190335D8()
{
  v1 = v0[39];
  v2 = v0[33];
  v3 = v0[30];
  (*(v0[25] + 8))(v0[26], v0[24]);
  v1(v2, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_219033730@<X0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  v12[3] = a1;
  v14 = a3;
  sub_2186D8B18(0, &unk_280E91B60, MEMORY[0x277D32040], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v3 - 8);
  v4 = sub_219BEF554();
  MEMORY[0x28223BE20](v4 - 8);
  MEMORY[0x28223BE20](v5);
  v13 = sub_219BED8D4();
  v6 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v8 = v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186E03A0(0);

  v9 = sub_219BEDCB4();
  v12[1] = v10;
  v12[2] = v9;
  sub_219BEDCC4();
  sub_219BEDCC4();
  type metadata accessor for TopicTodayFeedGroupKnobs(0);
  sub_2189AE994(0);
  sub_219BEE9B4();
  sub_219BEE984();
  sub_21903485C(0, &qword_280E91860, type metadata accessor for TodayFeedServiceConfig, sub_2187DF448, MEMORY[0x277D32318]);
  sub_219BEEC84();
  sub_219BED834();
  (*(v6 + 32))(v14, v8, v13);
  type metadata accessor for TodayFeedGroup(0);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_219033A78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  sub_2186D8B18(0, qword_280EDB700, type metadata accessor for TodayFeedGroup, MEMORY[0x277D83D88]);
  v3[6] = swift_task_alloc();
  v4 = type metadata accessor for TodayFeedGroup(0);
  v3[7] = v4;
  v3[8] = *(v4 - 8);
  v3[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_219033B98, 0, 0);
}

uint64_t sub_219033B98()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);
  v3 = *(v0 + 48);
  sub_21903485C(0, &qword_280E91120, type metadata accessor for TodayFeedGroup, sub_218B8B16C, MEMORY[0x277D32AB8]);
  v5 = v4;
  sub_219BEFDA4();
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_21903523C(*(v0 + 48), qword_280EDB700, type metadata accessor for TodayFeedGroup);
  }

  else
  {
    sub_2190352AC(*(v0 + 48), *(v0 + 72), type metadata accessor for TodayFeedGroup);
    sub_219BEF164();
    v8 = *(v0 + 72);
    v10 = sub_21899D954(*(v0 + 16));

    sub_219035314(v8, type metadata accessor for TodayFeedGroup);
    if (v10)
    {
      sub_219034698(*(v0 + 40), *(v0 + 24));
      v6 = 0;
      goto LABEL_4;
    }
  }

  v6 = 1;
LABEL_4:
  (*(*(v5 - 8) + 56))(*(v0 + 24), v6, 1, v5);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_219033DC0()
{
  v1 = OBJC_IVAR____TtC7NewsUI226TopicTodayFeedGroupEmitter_config;
  sub_2186E03A0(0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_219035314(v0 + OBJC_IVAR____TtC7NewsUI226TopicTodayFeedGroupEmitter_knobs, type metadata accessor for TopicTodayFeedGroupKnobs);
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC7NewsUI226TopicTodayFeedGroupEmitter_formatService));
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC7NewsUI226TopicTodayFeedGroupEmitter_sportsGraphManager));

  return swift_deallocClassInstance();
}

void sub_219033EEC(uint64_t a1)
{
  sub_2186E03A0(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for TopicTodayFeedGroupKnobs(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_219033FD8(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2187609C8;

  return sub_21902D2BC(a1, a2);
}

uint64_t sub_219034084(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2187609C8;

  return sub_219033A78(a1, a2, a3);
}

uint64_t sub_219034134()
{
  v1 = *(*v0 + OBJC_IVAR____TtC7NewsUI226TopicTodayFeedGroupEmitter_name);

  return v1;
}

uint64_t sub_219034174@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC7NewsUI226TopicTodayFeedGroupEmitter_config;
  sub_2186E03A0(0);
  (*(*(v5 - 8) + 16))(a1, v3 + v4, v5);
  type metadata accessor for TodayFeedGroupConfig(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_219034208@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC7NewsUI226TopicTodayFeedGroupEmitter_knobs;
  a1[3] = type metadata accessor for TopicTodayFeedGroupKnobs(0);
  a1[4] = sub_2186E0570(&qword_280EBFCC0, type metadata accessor for TopicTodayFeedGroupKnobs, &unk_219CB81A4);
  a1[5] = sub_2186E0570(&qword_280EBFCC8, type metadata accessor for TopicTodayFeedGroupKnobs, &unk_219CB81CC);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
  return sub_2190350CC(v3 + v4, boxed_opaque_existential_1, type metadata accessor for TopicTodayFeedGroupKnobs);
}

uint64_t sub_21903436C@<X0>(uint64_t *a2@<X8>)
{
  sub_2186D8B18(0, &qword_280E8B6A0, sub_2188317B0, MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_219C09BA0;
  *(inited + 32) = 0x696669746E656469;
  *(inited + 40) = 0xEA00000000007265;
  sub_2186E03A0(0);

  v4 = sub_219BEDCA4();
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v4;
  *(inited + 56) = v5;
  sub_218831A70(inited);
  swift_setDeallocating();
  sub_219035314(inited + 32, sub_2188317B0);
  sub_2186D8B18(0, &qword_280EE79B0, type metadata accessor for TopicTodayFeedGroupEmitter, MEMORY[0x277D6CC20]);
  a2[3] = v6;
  a2[4] = sub_219035134();
  __swift_allocate_boxed_opaque_existential_1(a2);
  return sub_219BE2334();
}

uint64_t sub_21903450C(uint64_t a1)
{
  sub_2186E0570(&qword_280EB9A98, type metadata accessor for TopicTodayFeedGroupEmitter, &unk_219C540E8);

  return sub_219BE2324();
}

uint64_t sub_219034698(uint64_t a1, uint64_t a2)
{
  sub_21903485C(0, &qword_280E91120, type metadata accessor for TodayFeedGroup, sub_218B8B16C, MEMORY[0x277D32AB8]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_219034760(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2187608D4;

  return sub_21902EC14(a1, v4, v5, v6);
}

void sub_219034814()
{
  if (!qword_280EA4290[0])
  {
    v0 = type metadata accessor for TopicTodayFeedGroupEmitterCursor(0);
    if (!v1)
    {
      atomic_store(v0, qword_280EA4290);
    }
  }
}

void sub_21903485C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(void), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a4();
    v11 = a5(a1, v9, v10);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

uint64_t sub_2190348DC(uint64_t a1, uint64_t a2, double a3)
{
  v62 = sub_219BEEA24();
  v61 = *(v62 - 8);
  MEMORY[0x28223BE20](v62);
  v60 = (&v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_219BEE6E4();
  MEMORY[0x28223BE20](v7);
  v63 = &v59 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v73 = &v59 - v10;
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v59 - v14;
  v16 = MEMORY[0x277D84F90];
  v71 = *(a1 + 16);
  v59 = v12;
  if (v71)
  {
    v17 = 0;
    v69 = a2 + OBJC_IVAR____TtC7NewsUI213TodayFeedPool_headlines;
    v70 = v7;
    v19 = *(v12 + 16);
    v18 = v12 + 16;
    v65 = (*(v18 + 64) + 32) & ~*(v18 + 64);
    v66 = a1 + v65;
    v67 = v19;
    v74 = *(v18 + 56);
    v64 = (v18 - 8);
    v68 = v18;
    v72 = (v18 + 16);
    for (i = v19(v15, a1 + v65, v7, v13); ; i = v67(v15, v66 + v74 * v17, v7, v21))
    {
      v22 = *(v69 + 16);
      v23 = v15;
      v24 = MEMORY[0x21CEC5420](i);
      v26 = v25;
      if (*(v22 + 16) && (v27 = v24, sub_219BF7AA4(), sub_219BF5524(), v28 = sub_219BF7AE4(), v29 = -1 << *(v22 + 32), v30 = v28 & ~v29, ((*(v22 + 56 + ((v30 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v30) & 1) != 0))
      {
        v31 = ~v29;
        while (1)
        {
          v32 = (*(v22 + 48) + 16 * v30);
          v33 = *v32 == v27 && v32[1] == v26;
          if (v33 || (sub_219BF78F4() & 1) != 0)
          {
            break;
          }

          v30 = (v30 + 1) & v31;
          if (((*(v22 + 56 + ((v30 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v30) & 1) == 0)
          {
            goto LABEL_15;
          }
        }

        v15 = v23;
        v7 = v70;
        (*v64)(v23, v70);
      }

      else
      {
LABEL_15:

        v34 = *v72;
        v15 = v23;
        v7 = v70;
        (*v72)(v73, v23, v70);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v76 = v16;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_218C34B28(0, *(v16 + 16) + 1, 1);
          v16 = v76;
        }

        v37 = *(v16 + 16);
        v36 = *(v16 + 24);
        if (v37 >= v36 >> 1)
        {
          sub_218C34B28((v36 > 1), v37 + 1, 1);
          v16 = v76;
        }

        *(v16 + 16) = v37 + 1;
        v34((v16 + v65 + v37 * v74), v73, v7);
      }

      if (++v17 == v71)
      {
        break;
      }
    }
  }

  if (qword_280E8D7A0 != -1)
  {
    swift_once();
  }

  sub_2186F20D4(0);
  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_219C09EC0;
  v39 = MEMORY[0x277D83B88];
  v40 = MEMORY[0x277D83C10];
  *(v38 + 56) = MEMORY[0x277D83B88];
  *(v38 + 64) = v40;
  *(v38 + 32) = v71;
  v41 = *(v16 + 16);
  *(v38 + 96) = v39;
  *(v38 + 104) = v40;
  *(v38 + 72) = v41;
  sub_219BF6214();
  sub_219BE5314("More for you group filtered headlines %ld to %ld", v59, v60);

  v42 = v63;
  if (*(v16 + 16))
  {
    v43 = v60;
    *v60 = a3;
    *(v43 + 8) = 0;
    v44 = v61;
    v45 = v62;
    (*(v61 + 104))(v43, *MEMORY[0x277D321C0], v62);
    sub_2186E0570(&unk_280E91B40, MEMORY[0x277D320C0], MEMORY[0x277D320B8]);
    v46 = sub_219BF5A74();

    (*(v44 + 8))(v43, v45);
    v47 = *(v46 + 16);
    if (v47)
    {
      v75 = MEMORY[0x277D84F90];
      sub_219BF73F4();
      v48 = *(v59 + 16);
      v49 = *(v59 + 80);
      v50 = v7;
      v72 = v46;
      v51 = v46 + ((v49 + 32) & ~v49);
      v73 = *(v59 + 72);
      v74 = v48;
      v52 = (v59 + 8);
      do
      {
        v74(v42, v51, v50);
        sub_219BEE6D4();
        (*v52)(v42, v50);
        sub_219BF73D4();
        sub_219BF7414();
        sub_219BF7424();
        sub_219BF73E4();
        v51 += v73;
        --v47;
      }

      while (v47);

      v53 = v75;
    }

    else
    {

      v53 = MEMORY[0x277D84F90];
    }

    sub_218731D50();
    v55 = sub_219BF5904();
    v56 = FCPromoteOneHeadline();

    if (v56)
    {
      v57 = sub_219BF5924();

      return v57;
    }
  }

  else
  {

    v53 = sub_219BEEDD4();
    sub_2186E0570(&qword_280E917E0, MEMORY[0x277D32430], MEMORY[0x277D32438]);
    swift_allocError();
    (*(*(v53 - 8) + 104))(v54, *MEMORY[0x277D323A8], v53);
    swift_willThrow();
  }

  return v53;
}

uint64_t sub_219035038(uint64_t a1, uint64_t a2)
{
  sub_2186D8B18(0, qword_280EA4250, type metadata accessor for TopicTodayFeedGroupEmitterCursor, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2190350CC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_219035134()
{
  result = qword_280EE79B8;
  if (!qword_280EE79B8)
  {
    sub_2186D8B18(255, &qword_280EE79B0, type metadata accessor for TopicTodayFeedGroupEmitter, MEMORY[0x277D6CC20]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EE79B8);
  }

  return result;
}

uint64_t sub_2190351BC(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_2186D8B18(0, a3, a4, MEMORY[0x277D83D88]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_21903523C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_2186D8B18(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_2190352AC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_219035314(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21903539C(uint64_t a1)
{
  sub_219034814();
  v2 = v1;
  if (v3 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v2;
}

id sub_2190353F4()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  sub_219BDB5E4();

  v2 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v3 = sub_219BF53D4();

  v4 = [v2 initWithString_];

  return v4;
}

uint64_t sub_2190354F8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  sub_218718690(a1, v8);
  v3 = type metadata accessor for WelcomeModule();
  v4 = objc_allocWithZone(v3);
  sub_218718690(v8, v4 + OBJC_IVAR____TtC7NewsUI213WelcomeModule_resolver);
  v7.receiver = v4;
  v7.super_class = v3;
  v5 = objc_msgSendSuper2(&v7, sel_init);
  result = __swift_destroy_boxed_opaque_existential_1(v8);
  a2[3] = v3;
  a2[4] = &protocol witness table for WelcomeModule;
  *a2 = v5;
  return result;
}

uint64_t *sub_219035588@<X0>(uint64_t **a1@<X8>)
{
  v2 = type metadata accessor for WelcomeStatus(0);
  swift_allocObject();
  result = sub_2195808B8();
  a1[3] = v2;
  a1[4] = &off_282A795B8;
  *a1 = result;
  return result;
}

double sub_2190355E0()
{
  type metadata accessor for WelcomeViewController();
  sub_219BE2904();

  sub_2186C709C(0, &qword_27CC152E8, &protocol descriptor for WelcomeEventHandlerType, 0);
  sub_219BE2914();

  sub_2186C709C(0, &qword_27CC152F0, &protocol descriptor for WelcomeRouterType, 1);
  sub_219BE2914();
  type metadata accessor for WelcomeRouter();
  sub_219BE19C4();

  sub_2186C709C(0, &qword_27CC152F8, &protocol descriptor for WelcomeInteractorType, 0);
  sub_219BE2914();

  sub_2186C709C(0, &qword_27CC15300, &protocol descriptor for WelcomeTrackerType, 1);
  sub_219BE2914();

  sub_2186C709C(0, &qword_27CC15308, &protocol descriptor for WelcomeViewLayoutAttributesFactoryType, 1);
  sub_219BE2914();

  type metadata accessor for WelcomeViewAnimator();
  sub_219BE2904();

  sub_2186C709C(0, &qword_27CC15310, &protocol descriptor for WelcomeViewAnimatorType, 1);
  sub_219BE2914();

  sub_2186C709C(0, &qword_27CC15318, &protocol descriptor for WelcomeViewProviderType, 1);
  sub_219BE2914();

  sub_2186C709C(0, &qword_27CC15320, &protocol descriptor for WelcomeViewRendererType, 1);
  sub_219BE2914();

  sub_2186C709C(0, &qword_27CC15328, &protocol descriptor for WelcomeViewStylerFactoryType, 1);
  sub_219BE2914();

  sub_2186C6148(0, &unk_27CC15330, 0x277D37670);
  sub_219BE2904();

  return result;
}

char *sub_21903597C(void *a1)
{
  v2 = [objc_opt_self() systemBackgroundColor];
  v3 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.988235294 green:0.262745098 blue:0.368627451 alpha:1.0];
  v4 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.556862745 green:0.556862745 blue:0.576470588 alpha:1.0];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_27CC152E8, &protocol descriptor for WelcomeEventHandlerType, 0);
  v5 = v2;
  v6 = v3;
  v7 = v4;
  result = sub_219BE1E34();
  v9 = v33;
  if (!v33)
  {
    __break(1u);
    goto LABEL_8;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_27CC15318, &protocol descriptor for WelcomeViewProviderType, 1);
  result = sub_219BE1E34();
  if (!v32)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v25 = v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_27CC15310, &protocol descriptor for WelcomeViewAnimatorType, 1);
  result = sub_219BE1E34();
  if (!v30)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v24 = v34;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE5150, MEMORY[0x277D6DA40], 0);
  result = sub_219BE1E34();
  v10 = v27;
  if (!v27)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v11 = v28;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280EE73A0, MEMORY[0x277D6CD90], 1);
  result = sub_219BE1E34();
  if (v26[3])
  {
    v12 = __swift_mutable_project_boxed_opaque_existential_1(v31, v32);
    v13 = MEMORY[0x28223BE20](v12);
    v15 = (&v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v16 + 16))(v15, v13);
    v17 = __swift_mutable_project_boxed_opaque_existential_1(v29, v30);
    v18 = MEMORY[0x28223BE20](v17);
    v20 = (&v24 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v21 + 16))(v20, v18);
    v22 = v25;
    v23 = sub_219037AF4(v5, v6, v25, v9, v24, *v15, *v20, v10, v11, v26);

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_1(v29);
    __swift_destroy_boxed_opaque_existential_1(v31);
    return v23;
  }

LABEL_11:
  __break(1u);
  return result;
}

void *sub_219035DC0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_27CC152F8, &protocol descriptor for WelcomeInteractorType, 0);
  result = sub_219BE1E34();
  v5 = v22;
  if (!v22)
  {
    __break(1u);
    goto LABEL_6;
  }

  v6 = v23;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_27CC152F0, &protocol descriptor for WelcomeRouterType, 1);
  result = sub_219BE1E34();
  if (!v21)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_27CC15300, &protocol descriptor for WelcomeTrackerType, 1);
  result = sub_219BE1E34();
  if (v19)
  {
    v7 = __swift_mutable_project_boxed_opaque_existential_1(v20, v21);
    v8 = MEMORY[0x28223BE20](v7);
    v10 = (v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v11 + 16))(v10, v8);
    v12 = __swift_mutable_project_boxed_opaque_existential_1(v18, v19);
    v13 = MEMORY[0x28223BE20](v12);
    v15 = (v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v16 + 16))(v15, v13);
    v17 = sub_2190373DC(v5, v6, *v10, *v15);
    __swift_destroy_boxed_opaque_existential_1(v18);
    result = __swift_destroy_boxed_opaque_existential_1(v20);
    *a2 = v17;
    a2[1] = &off_282A3D8A0;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_219036068@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  sub_218718690(a1, v6);
  v3 = type metadata accessor for WelcomeRouter();
  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();
  result = sub_2186CB1F0(v6, v4 + 24);
  a2[3] = v3;
  a2[4] = &off_282A6C120;
  *a2 = v4;
  return result;
}

void sub_2190360E4(uint64_t *a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for WelcomeViewController();
  v2 = sub_219BE1E24();
  if (v2)
  {
    v3 = v2;
    swift_unknownObjectWeakAssign();
  }

  else
  {
    __break(1u);
  }
}

void *sub_21903616C@<X0>(void *a1@<X0>, char **a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &unk_27CC15340, &protocolRef_TSWelcomeDataManagerType);
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  v5 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE81A8, MEMORY[0x277D2EC38], 0);
  result = sub_219BE1E34();
  v6 = v24;
  if (!v24)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v7 = v25;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &unk_280E8DDD0, &protocolRef_FCNetworkReachabilityType);
  result = sub_219BE1E24();
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v8 = result;
  v22 = a2;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186D6710(0, &unk_280E8E210, &protocolRef_FCAppActivityMonitor);
  result = sub_219BE1E24();
  if (result)
  {
    v9 = result;
    v10 = type metadata accessor for WelcomeInteractor();
    v11 = objc_allocWithZone(v10);
    *&v11[OBJC_IVAR____TtC7NewsUI217WelcomeInteractor_delegate + 8] = 0;
    swift_unknownObjectWeakInit();
    v12 = OBJC_IVAR____TtC7NewsUI217WelcomeInteractor_userTypePromise;
    sub_219037AA8(0, &qword_27CC15350, &type metadata for WelcomeUserType);
    swift_allocObject();
    *&v11[v12] = sub_219BE2244();
    v13 = OBJC_IVAR____TtC7NewsUI217WelcomeInteractor_feedLoadedPromise;
    sub_219037AA8(0, &unk_280EE7A80, MEMORY[0x277D84F78] + 8);
    swift_allocObject();
    *&v11[v13] = sub_219BE2244();
    v14 = OBJC_IVAR____TtC7NewsUI217WelcomeInteractor_minimumTimePromise;
    swift_allocObject();
    *&v11[v14] = sub_219BE2244();
    v15 = OBJC_IVAR____TtC7NewsUI217WelcomeInteractor_maximumTimePromise;
    swift_allocObject();
    *&v11[v15] = sub_219BE2244();
    v16 = OBJC_IVAR____TtC7NewsUI217WelcomeInteractor_isCloudKitReachablePromise;
    swift_allocObject();
    *&v11[v16] = sub_219BE2244();
    *&v11[OBJC_IVAR____TtC7NewsUI217WelcomeInteractor_minimumTimer] = 0;
    *&v11[OBJC_IVAR____TtC7NewsUI217WelcomeInteractor_maximumTimer] = 0;
    *&v11[OBJC_IVAR____TtC7NewsUI217WelcomeInteractor_dataManager] = v5;
    v17 = &v11[OBJC_IVAR____TtC7NewsUI217WelcomeInteractor_heartbeatEventService];
    *v17 = v6;
    *(v17 + 1) = v7;
    *&v11[OBJC_IVAR____TtC7NewsUI217WelcomeInteractor_networkReachability] = v8;
    *&v11[OBJC_IVAR____TtC7NewsUI217WelcomeInteractor_appActivityMonitor] = v9;
    v23.receiver = v11;
    v23.super_class = v10;
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    v18 = objc_msgSendSuper2(&v23, sel_init);
    v19 = OBJC_IVAR____TtC7NewsUI217WelcomeInteractor_dataManager;
    v20 = *(v18 + OBJC_IVAR____TtC7NewsUI217WelcomeInteractor_dataManager);
    v21 = v18;
    [v20 setDelegate_];
    [*(v18 + v19) suspendLoadingFeed];
    [*(v18 + v19) beginFetchingUserType];
    [*(v21 + OBJC_IVAR____TtC7NewsUI217WelcomeInteractor_networkReachability) addObserver_];
    sub_218CCAAFC();

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    result = swift_unknownObjectRelease();
    *v22 = v21;
    v22[1] = &off_282A41E00;
    return result;
  }

LABEL_9:
  __break(1u);
  return result;
}

void sub_219036514(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219BDD274();
  v3 = sub_219BE1E24();
  if (v3)
  {
    v4 = v3;
    v5 = type metadata accessor for WelcomeTracker();
    v6 = swift_allocObject();
    *(v6 + 16) = v4;

    sub_219BDD154();

    a2[3] = v5;
    a2[4] = &off_282A43958;
    *a2 = v6;
  }

  else
  {
    __break(1u);
  }
}

void sub_2190365EC(uint64_t *a1)
{
  v1 = a1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C6148(0, &unk_27CC15330, 0x277D37670);
  v2 = sub_219BE1E24();
  if (!v2)
  {
LABEL_72:
    __break(1u);
    goto LABEL_73;
  }

  v3 = v2;
  [v2 setDisplayLargeIcon_];
  [v3 setDisplayCaptionText_];
  v4 = v3;
  v5 = &_OBJC_LABEL_PROTOCOL___FCAudioPlaylistType;
  v6 = [v4 view];
  if (!v6)
  {
LABEL_73:
    __break(1u);
LABEL_74:
    __break(1u);
LABEL_75:
    __break(1u);
    goto LABEL_76;
  }

  v7 = v6;
  v8 = &selRef_boldSystemFontOfSize_;
  v9 = [v6 subviews];

  sub_2186C6148(0, &qword_280E8DAE0, 0x277D75D18);
  v10 = sub_219BF5924();

  if (v10 >> 62)
  {
    goto LABEL_23;
  }

  v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v75 = v4;
  if (v11)
  {
    do
    {
      if ((v10 & 0xC000000000000001) != 0)
      {
        v12 = MEMORY[0x21CECE0F0](0, v10);
      }

      else
      {
        if (!*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_52;
        }

        v12 = *(v10 + 32);
      }

      v13 = v12;

      v14 = [v13 *(v8 + 1568)];

      v10 = sub_219BF5924();
      if (v10 >> 62)
      {
        v15 = sub_219BF7214();
        if (!v15)
        {
          break;
        }
      }

      else
      {
        v15 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v15)
        {
          break;
        }
      }

      v77 = v1;
      v16 = 0;
      v4 = (v10 & 0xC000000000000001);
      v1 = (v10 & 0xFFFFFFFFFFFFFF8);
      v5 = 0x277D75000;
      while (1)
      {
        if (v4)
        {
          v17 = MEMORY[0x21CECE0F0](v16, v10);
        }

        else
        {
          if (v16 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_22;
          }

          v17 = *(v10 + 8 * v16 + 32);
        }

        v8 = v17;
        v18 = v16 + 1;
        if (__OFADD__(v16, 1))
        {
          break;
        }

        objc_opt_self();
        v19 = swift_dynamicCastObjCClass();
        if (v19)
        {
          v78 = v19;
          goto LABEL_20;
        }

        ++v16;
        if (v18 == v15)
        {
          v78 = 0;
LABEL_20:
          v4 = v75;
          v1 = v77;
          v8 = 0x278248000;
          v5 = &_OBJC_LABEL_PROTOCOL___FCAudioPlaylistType;
          goto LABEL_28;
        }
      }

      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      v75 = v4;
    }

    while (sub_219BF7214());
  }

  v78 = 0;
LABEL_28:

  v20 = [v78 attributedText];
  v21 = [v4 v5[253]];

  if (!v21)
  {
    goto LABEL_74;
  }

  v10 = v8;
  v22 = [v21 *(v8 + 1568)];

  v8 = sub_219BF5924();
  if (v8 >> 62)
  {
    goto LABEL_49;
  }

  v23 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v77 = v20;
  if (v23)
  {
    do
    {
      if ((v8 & 0xC000000000000001) != 0)
      {
LABEL_52:
        v24 = MEMORY[0x21CECE0F0](0, v8);
      }

      else
      {
        if (!*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_72;
        }

        v24 = *(v8 + 32);
      }

      v25 = v24;

      v26 = [v25 (v10 + 3827)];

      v8 = sub_219BF5924();
      if (v8 >> 62)
      {
        v27 = sub_219BF7214();
        if (!v27)
        {
          break;
        }
      }

      else
      {
        v27 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v27)
        {
          break;
        }
      }

      v28 = v1;
      v29 = 0;
      v1 = (v8 & 0xFFFFFFFFFFFFFF8);
      v20 = 0x277D75000;
      while (1)
      {
        if ((v8 & 0xC000000000000001) != 0)
        {
          v30 = MEMORY[0x21CECE0F0](v29, v8);
        }

        else
        {
          if (v29 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_48;
          }

          v30 = *(v8 + 8 * v29 + 32);
        }

        v31 = v30;
        v10 = v29 + 1;
        if (__OFADD__(v29, 1))
        {
          break;
        }

        objc_opt_self();
        v32 = swift_dynamicCastObjCClass();
        if (v32)
        {
          v76 = v32;
          goto LABEL_46;
        }

        ++v29;
        if (v10 == v27)
        {
          v76 = 0;
LABEL_46:
          v1 = v28;
          goto LABEL_55;
        }
      }

      __break(1u);
LABEL_48:
      __break(1u);
LABEL_49:
      v77 = v20;
    }

    while (sub_219BF7214());
  }

  v76 = 0;
LABEL_55:

  v33 = [v76 image];
  v34 = v1;
  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  sub_219BE1E34();
  v35 = v85;
  if (v85 == 2)
  {
    goto LABEL_75;
  }

  v36 = sub_2190353F4();
  LOBYTE(v85) = 0;
  sub_218F5955C(v36, [objc_allocWithZone(MEMORY[0x277D755B8]) init], &v85, v83);
  v74 = v33;
  if (v77)
  {
    v37 = v77;
    if ([v37 length] && v33)
    {
      LOBYTE(v85) = v35 & 1;
      v38 = v33;
LABEL_62:
      v39 = v38;
      v40 = v84;
      v41 = v37;
LABEL_66:
      sub_218F5955C(v41, v39, &v85, v84);
      sub_218C4F040(v83);
      goto LABEL_67;
    }

    v37 = v37;
    if ([v37 length])
    {
      LOBYTE(v85) = v35 & 1;
      v38 = [objc_allocWithZone(MEMORY[0x277D755B8]) init];
      goto LABEL_62;
    }
  }

  if (v33)
  {
    LOBYTE(v85) = v35 & 1;
    v42 = v33;
    v41 = sub_2190353F4();
    v40 = v84;
    v39 = v42;
    goto LABEL_66;
  }

  v40 = v83;
LABEL_67:
  v43 = v40[16];
  v72 = v40[15];
  v73 = v43;
  v44 = v40[14];
  v70 = v40[13];
  v71 = v44;
  v45 = v40[12];
  v68 = v40[11];
  v69 = v45;
  v46 = v40[10];
  v66 = v40[9];
  v67 = v46;
  v65 = v40[8];
  v64 = *(v40 + 3);
  v47 = v40[4];
  v63 = v40[5];
  v49 = v40[2];
  v48 = v40[3];
  v50 = *v40;
  v51 = v40[1];
  __swift_project_boxed_opaque_existential_1(v34, v34[3]);
  sub_2186C709C(0, &qword_27CC15320, &protocol descriptor for WelcomeViewRendererType, 1);
  sub_219BE1E34();
  if (!v82)
  {
LABEL_76:
    __break(1u);
    goto LABEL_77;
  }

  __swift_project_boxed_opaque_existential_1(v34, v34[3]);
  sub_2186C709C(0, &qword_27CC15308, &protocol descriptor for WelcomeViewLayoutAttributesFactoryType, 1);
  sub_219BE1E34();
  if (v80)
  {
    *&v85 = v50;
    *(&v85 + 1) = v51;
    v86 = v49;
    v87 = v48;
    v88 = v47;
    v89 = v63;
    v90 = v64;
    v91 = v65;
    v92 = v66;
    v93 = v67;
    v94 = v68;
    v95 = v69;
    v96 = v70;
    v97 = v71;
    v98 = v72;
    v99 = v73;
    v52 = __swift_mutable_project_boxed_opaque_existential_1(v81, v82);
    v53 = MEMORY[0x28223BE20](v52);
    v55 = (&v62 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v56 + 16))(v55, v53);
    v57 = __swift_mutable_project_boxed_opaque_existential_1(v79, v80);
    v58 = MEMORY[0x28223BE20](v57);
    v60 = (&v62 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v61 + 16))(v60, v58);
    sub_219037644(&v85, *v55, *v60);

    __swift_destroy_boxed_opaque_existential_1(v79);
    __swift_destroy_boxed_opaque_existential_1(v81);
    return;
  }

LABEL_77:
  __break(1u);
}

uint64_t sub_219036E8C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v5 = type metadata accessor for WelcomeViewAnimator();
  result = sub_219BE1E24();
  if (result)
  {
    a3[3] = v5;
    a3[4] = a2;
    *a3 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_219036F1C@<X0>(void *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_27CC15328, &protocol descriptor for WelcomeViewStylerFactoryType, 1);
  result = sub_219BE1E34();
  if (v25)
  {
    v8 = __swift_mutable_project_boxed_opaque_existential_1(v24, v25);
    v9 = MEMORY[0x28223BE20](v8);
    v11 = (v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v12 + 16))(v11, v9);
    v13 = *v11;
    v14 = type metadata accessor for WelcomeViewStylerFactory();
    v23[3] = v14;
    v23[4] = &off_282A3BDE8;
    v23[0] = v13;
    v15 = a2(0);
    v16 = swift_allocObject();
    v17 = __swift_mutable_project_boxed_opaque_existential_1(v23, v14);
    v18 = MEMORY[0x28223BE20](v17);
    v20 = (v23 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v21 + 16))(v20, v18);
    v22 = *v20;
    v16[5] = v14;
    v16[6] = &off_282A3BDE8;
    v16[2] = v22;
    __swift_destroy_boxed_opaque_existential_1(v23);
    result = __swift_destroy_boxed_opaque_existential_1(v24);
    a4[3] = v15;
    a4[4] = a3;
    *a4 = v16;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_219037154@<X0>(uint64_t *a1@<X8>)
{
  v12[3] = &type metadata for WelcomeColorStyler;
  v12[4] = &off_282A3FDC0;
  v12[0] = [objc_opt_self() systemBackgroundColor];
  v12[1] = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.988235294 green:0.262745098 blue:0.368627451 alpha:1.0];
  v12[2] = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.556862745 green:0.556862745 blue:0.576470588 alpha:1.0];
  v2 = type metadata accessor for WelcomeViewStylerFactory();
  v3 = swift_allocObject();
  v4 = __swift_mutable_project_boxed_opaque_existential_1(v12, &type metadata for WelcomeColorStyler);
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v12[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v7, v5);
  v9 = *(v7 + 2);
  *(v3 + 40) = &type metadata for WelcomeColorStyler;
  *(v3 + 48) = &off_282A3FDC0;
  *(v3 + 16) = *v7;
  *(v3 + 32) = v9;
  result = __swift_destroy_boxed_opaque_existential_1(v12);
  a1[3] = v2;
  a1[4] = &off_282A3BDE8;
  *a1 = v3;
  return result;
}

id sub_219037304()
{
  v0 = objc_opt_self();
  v1 = sub_219BF53D4();
  v2 = [v0 linkWithBundleIdentifier_];

  if (v2)
  {
    return v2;
  }

  result = sub_219BF7514();
  __break(1u);
  return result;
}

void *sub_2190373DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = *a4;
  v9 = type metadata accessor for WelcomeRouter();
  v34[3] = v9;
  v34[4] = &off_282A6C120;
  v34[0] = a3;
  v32 = v8;
  v33 = &off_282A43958;
  v31[0] = a4;
  type metadata accessor for WelcomeEventHandler();
  v10 = swift_allocObject();
  v11 = __swift_mutable_project_boxed_opaque_existential_1(v34, v9);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = (&v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v15 + 16))(v14, v12);
  v16 = __swift_mutable_project_boxed_opaque_existential_1(v31, v32);
  v17 = MEMORY[0x28223BE20](v16);
  v19 = (&v24 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v20 + 16))(v19, v17);
  v21 = *v14;
  v22 = *v19;
  v29 = v9;
  v30 = &off_282A6C120;
  v27 = &off_282A43958;
  *&v28 = v21;
  v26 = v8;
  *&v25 = v22;
  v10[3] = 0;
  swift_unknownObjectWeakInit();
  v10[4] = a1;
  v10[5] = a2;
  sub_2186CB1F0(&v28, (v10 + 6));
  sub_2186CB1F0(&v25, (v10 + 11));
  *(a1 + OBJC_IVAR____TtC7NewsUI217WelcomeInteractor_delegate + 8) = &off_282A3D878;
  swift_unknownObjectWeakAssign();
  __swift_destroy_boxed_opaque_existential_1(v31);
  __swift_destroy_boxed_opaque_existential_1(v34);
  return v10;
}

uint64_t sub_219037644(__int128 *a1, uint64_t a2, uint64_t *a3)
{
  v6 = *a3;
  v7 = type metadata accessor for WelcomeViewRenderer();
  v31[3] = v7;
  v31[4] = &off_282A44F28;
  v31[0] = a2;
  v29 = v6;
  v30 = &off_282A42FD8;
  v28[0] = a3;
  type metadata accessor for WelcomeViewAnimator();
  v8 = swift_allocObject();
  v9 = __swift_mutable_project_boxed_opaque_existential_1(v31, v7);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = (v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v13 + 16))(v12, v10);
  v14 = __swift_mutable_project_boxed_opaque_existential_1(v28, v29);
  v15 = MEMORY[0x28223BE20](v14);
  v17 = (v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v18 + 16))(v17, v15);
  v19 = *v12;
  v20 = *v17;
  *(v8 + 184) = v7;
  *(v8 + 192) = &off_282A44F28;
  *(v8 + 160) = v19;
  *(v8 + 224) = v6;
  *(v8 + 232) = &off_282A42FD8;
  *(v8 + 200) = v20;
  v21 = objc_allocWithZone(type metadata accessor for WelcomeView());
  v22 = [v21 initWithFrame_];
  v23 = a1[4];
  *(v8 + 104) = a1[5];
  v24 = a1[7];
  *(v8 + 120) = a1[6];
  *(v8 + 136) = v24;
  v25 = *a1;
  *(v8 + 40) = a1[1];
  v26 = a1[3];
  *(v8 + 56) = a1[2];
  *(v8 + 72) = v26;
  *(v8 + 88) = v23;
  *(v8 + 16) = v22;
  *(v8 + 152) = *(a1 + 16);
  *(v8 + 24) = v25;
  __swift_destroy_boxed_opaque_existential_1(v28);
  __swift_destroy_boxed_opaque_existential_1(v31);
  return v8;
}

double sub_2190378BC()
{
  v0 = sub_219BE2DF4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BE2044();
  sub_2186C709C(0, qword_280ED4338, &protocol descriptor for WelcomeModuleType, 1);
  sub_219BE2914();

  sub_219BE2044();
  sub_2186C709C(0, &qword_280ED4330, &protocol descriptor for WelcomeStatusType, 1);
  sub_219BE2914();

  (*(v1 + 104))(v3, *MEMORY[0x277D6CF10], v0);
  sub_219BE19F4();

  (*(v1 + 8))(v3, v0);
  sub_219BE2054();
  sub_219BE28F4();

  return result;
}

void sub_219037AA8(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_219BE2254();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

char *sub_219037AF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  v58 = a8;
  v55 = a4;
  v56 = a5;
  v59 = a10;
  v57 = a9;
  v75[3] = &type metadata for WelcomeColorStyler;
  v75[4] = &off_282A3FDC0;
  v75[0] = a1;
  v75[1] = a2;
  v75[2] = a3;
  v12 = type metadata accessor for WelcomeViewAnimator();
  v74[3] = v12;
  v74[4] = &off_282A44028;
  v74[0] = a6;
  v72 = v12;
  v73 = &off_282A44038;
  v71[0] = a7;
  v13 = type metadata accessor for WelcomeViewController();
  v14 = objc_allocWithZone(v13);
  v15 = __swift_mutable_project_boxed_opaque_existential_1(v75, &type metadata for WelcomeColorStyler);
  v16 = MEMORY[0x28223BE20](v15);
  v18 = &v54 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v19 + 16))(v18, v16);
  v20 = __swift_mutable_project_boxed_opaque_existential_1(v74, v12);
  v21 = MEMORY[0x28223BE20](v20);
  v23 = (&v54 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v24 + 16))(v23, v21);
  v25 = __swift_mutable_project_boxed_opaque_existential_1(v71, v72);
  v26 = MEMORY[0x28223BE20](v25);
  v28 = (&v54 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v29 + 16))(v28, v26);
  v30 = *(v18 + 2);
  v31 = *v23;
  v32 = *v28;
  v69 = &type metadata for WelcomeColorStyler;
  v70 = &off_282A3FDC0;
  v67 = *v18;
  v68 = v30;
  v65 = v12;
  v66 = &off_282A44028;
  v64[0] = v31;
  v63[3] = v12;
  v63[4] = &off_282A44038;
  v63[0] = v32;
  v33 = &v14[OBJC_IVAR____TtC7NewsUI221WelcomeViewController_keyFrame];
  *v33 = 0;
  v33[1] = 0;
  v14[OBJC_IVAR____TtC7NewsUI221WelcomeViewController_startedFirstAnimation] = 0;
  sub_218718690(&v67, &v14[OBJC_IVAR____TtC7NewsUI221WelcomeViewController_colorStyler]);
  v34 = &v14[OBJC_IVAR____TtC7NewsUI221WelcomeViewController_eventHandler];
  v35 = v56;
  *v34 = v55;
  v34[1] = v35;
  sub_218718690(v64, &v14[OBJC_IVAR____TtC7NewsUI221WelcomeViewController_viewProvider]);
  sub_218718690(v63, &v14[OBJC_IVAR____TtC7NewsUI221WelcomeViewController_viewAnimator]);
  v36 = &v14[OBJC_IVAR____TtC7NewsUI221WelcomeViewController_toolbarManager];
  v37 = v57;
  *v36 = v58;
  v36[1] = v37;
  sub_218718690(a10, &v14[OBJC_IVAR____TtC7NewsUI221WelcomeViewController_sceneStateManager]);
  v62.receiver = v14;
  v62.super_class = v13;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v38 = objc_msgSendSuper2(&v62, sel_initWithNibName_bundle_, 0, 0);
  v39 = *&v38[OBJC_IVAR____TtC7NewsUI221WelcomeViewController_eventHandler + 8];
  ObjectType = swift_getObjectType();
  v41 = *(v39 + 16);
  v42 = v38;
  swift_unknownObjectRetain();
  v41(v38, &off_282A96928, ObjectType, v39);
  swift_unknownObjectRelease();
  [*(*(*(*__swift_project_boxed_opaque_existential_1(v64 v65) + 16) + OBJC:sel_addTarget_action_forControlEvents_ IVAR:v42 :sel_didTapContinueButton :64 :? TtC7NewsUI211WelcomeView:? footer) + OBJC:? IVAR:? :? :? :? TtCC7NewsUI211WelcomeView6Footer:?continueButton)];
  v43 = *(*(*(*__swift_project_boxed_opaque_existential_1(v64, v65) + 16) + OBJC_IVAR____TtC7NewsUI211WelcomeView_footer) + OBJC_IVAR____TtCC7NewsUI211WelcomeView6Footer_privacyLink);
  [v43 setDelegate_];

  v45 = *MEMORY[0x277D76810];
  v60 = *MEMORY[0x277D764C8];
  v44 = v60;
  v61 = v45;
  v46 = objc_opt_self();
  v47 = v44;
  v48 = v45;
  v49 = v47;
  v50 = [v46 defaultCenter];
  [v50 addObserver:v42 selector:sel_updateStyling name:v49 object:0];

  type metadata accessor for Name(0);
  v51 = v48;
  swift_arrayDestroy();
  v52 = [v46 defaultCenter];
  [v52 addObserver:v42 selector:sel_updateStyling name:v51 object:0];

  __swift_destroy_boxed_opaque_existential_1(v59);
  __swift_destroy_boxed_opaque_existential_1(v63);
  __swift_destroy_boxed_opaque_existential_1(&v67);
  __swift_destroy_boxed_opaque_existential_1(v64);
  __swift_destroy_boxed_opaque_existential_1(v71);
  __swift_destroy_boxed_opaque_existential_1(v74);
  __swift_destroy_boxed_opaque_existential_1(v75);
  return v42;
}

id sub_2190380A8(uint64_t a1, uint64_t a2)
{
  v4 = [objc_allocWithZone(MEMORY[0x277D75A60]) initWithMass:1.0 stiffness:150.0 damping:25.0 initialVelocity:{0.0, 0.0}];
  [v4 ts_settlingDuration];
  v6 = [objc_allocWithZone(MEMORY[0x277D75D40]) initWithDuration:v4 timingParameters:v5];
  v9[4] = a1;
  v9[5] = a2;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 1107296256;
  v9[2] = sub_218793E0C;
  v9[3] = &block_descriptor_89;
  v7 = _Block_copy(v9);

  [v6 addAnimations_];
  _Block_release(v7);

  return v6;
}

uint64_t sub_2190381E4(uint64_t a1)
{
  sub_21903875C(0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = (&v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = type metadata accessor for AudioFeedRouteModel(0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21914D700(v4);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_219038818(v4, sub_21903875C);
    return 0;
  }

  else
  {
    sub_2190387B4(v4, v8);
    __swift_project_boxed_opaque_existential_1((v1 + 48), *(v1 + 72));
    v10 = sub_2196D5548(v8);
    sub_219038818(v8, type metadata accessor for AudioFeedRouteModel);
    return v10;
  }
}

uint64_t sub_219038380(uint64_t a1)
{
  sub_21903875C(0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = (&v17[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = type metadata accessor for AudioFeedRouteModel(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v17[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21914D700(v3);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    v8 = sub_21903875C;
    v9 = v3;
  }

  else
  {
    sub_2190387B4(v3, v7);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v11 = Strong;
      sub_218AB7640(0);
      v12 = sub_219BE5F84();
      v14 = v13;
      __swift_project_boxed_opaque_existential_1((v11 + 48), *(v11 + 72));
      v17[0] = v12;
      v17[1] = v14;
      v17[2] = 0;
      v17[3] = 0;
      v18 = 0;
      sub_2196D4AD0(v7, v17);
      sub_219038818(v7, type metadata accessor for AudioFeedRouteModel);

      return swift_unknownObjectRelease();
    }

    v8 = type metadata accessor for AudioFeedRouteModel;
    v9 = v7;
  }

  return sub_219038818(v9, v8);
}

uint64_t sub_219038578(uint64_t a1)
{
  v2 = sub_219BE8F74();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v2, v5);
  v6 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v7 = swift_allocObject();
  (*(v3 + 32))(v7 + v6, v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v2);
  sub_219BDD154();

  v9[1] = 0xF000000000000000;
  sub_219BE7864();
  return sub_21914E00C();
}

uint64_t sub_2190386E8()
{
  sub_218774F78(v0 + 16);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((v0 + 48));
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

void sub_21903875C(uint64_t a1)
{
  if (!qword_27CC15358)
  {
    type metadata accessor for AudioFeedRouteModel(255);
    v1 = sub_219BF6FB4();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC15358);
    }
  }
}

uint64_t sub_2190387B4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AudioFeedRouteModel(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_219038818(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_219038878(uint64_t a1)
{
  v3 = *(sub_219BE8F74() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_219A67054(a1, v4);
}

uint64_t sub_2190388F8(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_218C82C04(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_219039398(v6);
  return sub_219BF73E4();
}

uint64_t sub_219038974(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_218C82C04(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_219039294(v6);
  return sub_219BF73E4();
}

uint64_t sub_2190389F0(void *a1, char a2)
{
  sub_21903EA54(0, &qword_280E8C3B8, MEMORY[0x277D84538]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21903EA00();
  sub_219BF7B44();
  v10[15] = a2;
  sub_218A835E8();
  sub_219BF7834();
  return (*(v6 + 8))(v8, v5);
}

void sub_219038B68(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x617453746E657665 && a2 == 0xEB00000000737574)
  {

    v6 = 0;
  }

  else
  {
    v5 = sub_219BF78F4();

    v6 = v5 ^ 1;
  }

  *a3 = v6 & 1;
}

uint64_t sub_219038BF4(uint64_t a1)
{
  v2 = sub_21903EA00();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_219038C30(uint64_t a1)
{
  v2 = sub_21903EA00();

  return MEMORY[0x2821FE720](a1, v2);
}

void *sub_219038C6C@<X0>(_BYTE *a1@<X8>, void *a2@<X0>)
{
  result = sub_21903E868(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_219038CB4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE800000000000000;
  v4 = 0x676E696D6F637075;
  if (v2 != 1)
  {
    v4 = 1702259052;
    v3 = 0xE400000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x6C616E6966;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  v7 = 0xE800000000000000;
  v8 = 0x676E696D6F637075;
  if (*a2 != 1)
  {
    v8 = 1702259052;
    v7 = 0xE400000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x6C616E6966;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE500000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_219BF78F4();
  }

  return v11 & 1;
}

uint64_t sub_219038DA4()
{
  v1 = *v0;
  strcpy(v7, "eventStatus=");
  BYTE5(v7[1]) = 0;
  HIWORD(v7[1]) = -5120;
  v2 = 0xE800000000000000;
  v3 = 0x676E696D6F637075;
  if (v1 != 1)
  {
    v3 = 1702259052;
    v2 = 0xE400000000000000;
  }

  if (v1)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0x6C616E6966;
  }

  if (v1)
  {
    v5 = v2;
  }

  else
  {
    v5 = 0xE500000000000000;
  }

  MEMORY[0x21CECC330](v4, v5);

  return v7[0];
}

BOOL sub_219038E4C(uint64_t a1, char a2)
{
  v3 = sub_219BF4AC4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BF3FA4();
  v7 = (v4 + 8);
  if (a2)
  {
    if (a2 == 1)
    {
      v8 = sub_219BF4A74();
    }

    else
    {
      v8 = sub_219BF4A94();
    }
  }

  else
  {
    v8 = sub_219BF4A84();
  }

  v9 = v8;
  (*v7)(v6, v3);
  return (v9 & 1) != 0;
}

unint64_t sub_219038F68(char a1)
{
  if (!a1)
  {

    v6 = sub_21975902C(v2);
    sub_2190388F8(&v6);
    return v6;
  }

  if (a1 == 1)
  {

    v6 = sub_21975902C(v1);
    sub_219038974(&v6);
    return v6;
  }

  v6 = sub_21975902C(v4);
  sub_219038974(&v6);
  v5 = v6;

  return sub_218B18BEC(v5);
}

uint64_t sub_219039048(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v16[1] = a3;
  v16[3] = a2;
  sub_2186DCF58(0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_219BF4AC4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_219BDBD34();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BF3FA4();
  sub_219BF4AB4();
  (*(v7 + 8))(v9, v6);
  if ((*(v11 + 48))(v5, 1, v10) == 1)
  {
    sub_2189DD39C(v5);
  }

  else
  {
    (*(v11 + 32))(v13, v5, v10);
    v14 = sub_219BDBF14();
    (*(v11 + 8))(v13, v10);
    if (v14)
    {
      return 1;
    }
  }

  return 0;
}

void sub_219039294(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_219BF7884();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_219BF4044();
        v6 = sub_219BF5A34();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = ((v6 & 0xFFFFFFFFFFFFFF8) + 32);
      v8[1] = v5;
      sub_21903A430(v8, v9, a1, v4);
      *(v7 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_21903949C(0, v2, 1, a1);
  }
}

void sub_219039398(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_219BF7884();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_219BF4044();
        v6 = sub_219BF5A34();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = ((v6 & 0xFFFFFFFFFFFFFF8) + 32);
      v8[1] = v5;
      sub_21903B3C4(v8, v9, a1, v4);
      *(v7 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_219039A78(0, v2, 1, a1);
  }
}

void sub_21903949C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = sub_219BDBD34();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v66 = &v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v65 = &v59 - v12;
  sub_218C82694(0);
  v75 = v13;
  MEMORY[0x28223BE20](v13);
  v78 = &v59 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186DCF58(0);
  MEMORY[0x28223BE20](v15 - 8);
  v74 = &v59 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v73 = &v59 - v18;
  v72 = sub_219BF4AC4();
  MEMORY[0x28223BE20](v72);
  v71 = &v59 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v70 = &v59 - v22;
  v60 = a2;
  if (a3 != a2)
  {
    v23 = *a4;
    v68 = (v9 + 48);
    v69 = (v21 + 8);
    v64 = (v9 + 32);
    v67 = (v9 + 8);
    v76 = v23;
    v24 = (v23 + 8 * a3 - 8);
    v25 = a1 - a3;
LABEL_7:
    v62 = v24;
    v63 = a3;
    v27 = *(v76 + 8 * a3);
    v61 = v25;
    while (1)
    {
      v77 = v25;
      v28 = *v24;

      v29 = v70;
      v80 = v27;
      sub_219BF3FA4();
      v30 = v8;
      v31 = v73;
      sub_219BF4AB4();
      v32 = *v69;
      v33 = v72;
      (*v69)(v29, v72);
      v34 = v71;
      v79 = v28;
      sub_219BF3FA4();
      v35 = v74;
      sub_219BF4AB4();
      v32(v34, v33);
      v36 = *(v75 + 48);
      v37 = v31;
      v8 = v30;
      v38 = v78;
      sub_218A5DD60(v37, v78);
      sub_218A5DD60(v35, v38 + v36);
      v39 = *v68;
      v40 = (*v68)(v38, 1, v8);
      v41 = v39(v38 + v36, 1, v8);
      if (v40 == 1)
      {
        if (v41 != 1)
        {
          sub_2189DD39C(v78 + v36);
        }

        goto LABEL_5;
      }

      if (v41 == 1)
      {
        (*v67)(v78, v8);

        v42 = v77;
      }

      else
      {
        v43 = v65;
        v44 = *v64;
        v45 = v78;
        (*v64)(v65, v78, v8);
        v46 = v45 + v36;
        v47 = v66;
        v44(v66, v46, v8);
        if (sub_219BDBC94())
        {
          v48 = sub_219BF3F84();
          v50 = v49;
          if (v48 == sub_219BF3F84() && v50 == v51)
          {

            v26 = *v67;
            (*v67)(v66, v8);
            v26(v65, v8);
LABEL_5:

LABEL_6:
            a3 = v63 + 1;
            v24 = v62 + 1;
            v25 = v61 - 1;
            if (v63 + 1 == v60)
            {
              return;
            }

            goto LABEL_7;
          }

          v52 = sub_219BF78F4();

          v53 = *v67;
          (*v67)(v66, v8);
          v53(v65, v8);

          v42 = v77;
          if ((v52 & 1) == 0)
          {
            goto LABEL_6;
          }
        }

        else
        {
          v54 = sub_219BDBC24();
          v55 = v47;
          v56 = *v67;
          (*v67)(v55, v8);
          v56(v43, v8);

          v42 = v77;
          if ((v54 & 1) == 0)
          {
            goto LABEL_6;
          }
        }
      }

      if (!v76)
      {
        break;
      }

      v57 = *v24;
      v27 = v24[1];
      *v24 = v27;
      v24[1] = v57;
      --v24;
      v58 = __CFADD__(v42, 1);
      v25 = v42 + 1;
      if (v58)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
  }
}

void sub_219039A78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v127 = sub_219BDBD34();
  v8 = *(v127 - 8);
  MEMORY[0x28223BE20](v127);
  v106 = &v100[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v10);
  v105 = &v100[-v11];
  MEMORY[0x28223BE20](v12);
  v115 = &v100[-v13];
  MEMORY[0x28223BE20](v14);
  v16 = &v100[-v15];
  sub_218C82694(0);
  v124 = v17;
  MEMORY[0x28223BE20](v17);
  v110 = &v100[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v19);
  v125 = &v100[-v20];
  sub_2186DCF58(0);
  MEMORY[0x28223BE20](v21 - 8);
  v109 = &v100[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v23);
  v112 = &v100[-v24];
  MEMORY[0x28223BE20](v25);
  v119 = &v100[-v26];
  MEMORY[0x28223BE20](v27);
  v118 = &v100[-v28];
  v123 = sub_219BF4AC4();
  MEMORY[0x28223BE20](v123);
  v108 = &v100[-((v29 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v30);
  v107 = &v100[-v31];
  MEMORY[0x28223BE20](v32);
  v117 = &v100[-v33];
  MEMORY[0x28223BE20](v34);
  v116 = &v100[-v36];
  v101 = a2;
  if (a3 != a2)
  {
    v37 = *a4;
    v121 = (v8 + 48);
    v122 = (v35 + 8);
    v113 = (v8 + 32);
    v114 = (v8 + 8);
    v120 = v37;
    v38 = v37 + 8 * a3 - 8;
    v39 = a1 - a3;
    v111 = v16;
LABEL_7:
    v104 = a3;
    v102 = v39;
    v103 = v38;
    v42 = v38;
    while (1)
    {
      v126 = v39;
      v43 = *v42;

      v44 = v116;
      sub_219BF3FA4();
      v45 = v118;
      sub_219BF4AA4();
      v46 = *v122;
      v47 = v44;
      v48 = v123;
      (*v122)(v47, v123);
      v49 = v117;
      v128 = v43;
      sub_219BF3FA4();
      v50 = v119;
      sub_219BF4AA4();
      v46(v49, v48);
      v51 = v125;
      v52 = &v125[*(v124 + 48)];
      sub_218A5DD60(v45, v125);
      sub_218A5DD60(v50, v52);
      v53 = *v121;
      v54 = v127;
      LODWORD(v51) = (*v121)(v51, 1, v127);
      v55 = v53(v52, 1, v54);
      if (v51 == 1)
      {
        if (v55 != 1)
        {
          goto LABEL_12;
        }

        v56 = v107;
        sub_219BF3FA4();
        sub_219BF4AB4();
        v57 = v56;
        v58 = v123;
        v46(v57, v123);
        v59 = v108;
        sub_219BF3FA4();
        v60 = v109;
        sub_219BF4AB4();
        v46(v59, v58);
        v61 = v110;
        v52 = &v110[*(v124 + 48)];
        sub_218A5DD60(v112, v110);
        v62 = v60;
        v63 = v127;
        sub_218A5DD60(v62, v52);
        LODWORD(v61) = v53(v61, 1, v63);
        v64 = v53(v52, 1, v63);
        if (v61 == 1)
        {
          if (v64 != 1)
          {
LABEL_12:
            sub_2189DD39C(v52);
          }

LABEL_13:

          v65 = v126;
          goto LABEL_21;
        }

        if (v64 == 1)
        {
          (*v114)(v110, v127);
          goto LABEL_5;
        }

        v83 = *v113;
        v84 = v105;
        v85 = v127;
        (*v113)(v105, v110, v127);
        v86 = v106;
        v83(v106, v52, v85);
        if (sub_219BDBC94())
        {
          v87 = sub_219BF3F84();
          v89 = v88;
          if (v87 == sub_219BF3F84() && v89 == v90)
          {

            v91 = *v114;
            v92 = v127;
            (*v114)(v106, v127);
            v91(v105, v92);
            goto LABEL_13;
          }

          v97 = sub_219BF78F4();

          v98 = *v114;
          v99 = v127;
          (*v114)(v106, v127);
          v98(v105, v99);

          v65 = v126;
          if (v97)
          {
            goto LABEL_6;
          }
        }

        else
        {
          v93 = sub_219BDBC24();
          v94 = *v114;
          v95 = v86;
          v96 = v127;
          (*v114)(v95, v127);
          v94(v84, v96);

          v65 = v126;
          if (v93)
          {
            goto LABEL_6;
          }
        }
      }

      else
      {
        if (v55 == 1)
        {
          (*v114)(v125, v127);
          goto LABEL_5;
        }

        v66 = *v113;
        v67 = v111;
        v68 = v127;
        (*v113)(v111, v125, v127);
        v69 = v115;
        v66(v115, v52, v68);
        if (sub_219BDBC94())
        {
          v70 = sub_219BF3F84();
          v72 = v71;
          if (sub_219BF3F84() == v70 && v73 == v72)
          {

            v40 = *v114;
            v41 = v127;
            (*v114)(v115, v127);
            v40(v67, v41);
LABEL_5:

LABEL_6:
            a3 = v104 + 1;
            v38 = v103 + 8;
            v39 = v102 - 1;
            if (v104 + 1 == v101)
            {
              return;
            }

            goto LABEL_7;
          }

          v74 = sub_219BF78F4();

          v75 = *v114;
          v76 = v127;
          (*v114)(v115, v127);
          v75(v67, v76);

          v65 = v126;
          if ((v74 & 1) == 0)
          {
            goto LABEL_6;
          }
        }

        else
        {
          v77 = sub_219BDBC14();
          v78 = *v114;
          v79 = v69;
          v80 = v127;
          (*v114)(v79, v127);
          v78(v67, v80);

          v65 = v126;
          if ((v77 & 1) == 0)
          {
            goto LABEL_6;
          }
        }
      }

LABEL_21:
      if (!v120)
      {
        __break(1u);
        return;
      }

      v81 = *v42;
      *v42 = v42[1];
      v42[1] = v81;
      --v42;
      v82 = __CFADD__(v65, 1);
      v39 = v65 + 1;
      if (v82)
      {
        goto LABEL_6;
      }
    }
  }
}

void sub_21903A430(char **a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = v4;
  v169 = a4;
  v170 = a1;
  v197 = sub_219BDBD34();
  v7 = *(v197 - 8);
  MEMORY[0x28223BE20](v197);
  v186 = &v167 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v167 - v10;
  MEMORY[0x28223BE20](v12);
  v172 = &v167 - v13;
  MEMORY[0x28223BE20](v14);
  v171 = &v167 - v15;
  sub_218C82694(0);
  v17 = v16;
  MEMORY[0x28223BE20](v16);
  v199 = &v167 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v180 = &v167 - v20;
  sub_2186DCF58(0);
  MEMORY[0x28223BE20](v21 - 8);
  v190 = &v167 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v189 = &v167 - v24;
  MEMORY[0x28223BE20](v25);
  v179 = &v167 - v26;
  MEMORY[0x28223BE20](v27);
  v178 = &v167 - v28;
  v196 = sub_219BF4AC4();
  MEMORY[0x28223BE20](v196);
  v188 = &v167 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v187 = &v167 - v31;
  MEMORY[0x28223BE20](v32);
  v177 = &v167 - v33;
  MEMORY[0x28223BE20](v34);
  v176 = &v167 - v36;
  v37 = a3[1];
  if (v37 >= 1)
  {
    v38 = 0;
    v193 = (v7 + 48);
    v194 = (v35 + 8);
    v184 = (v7 + 32);
    v191 = (v7 + 8);
    v39 = MEMORY[0x277D84F90];
    v175 = a3;
    v185 = v11;
    v195 = v17;
    while (1)
    {
      v40 = v38++;
      v173 = v39;
      if (v38 >= v37)
      {
        v80 = v169;
      }

      else
      {
        v41 = *a3;
        v7 = *(*a3 + 8 * v38);
        v42 = *(*a3 + 8 * v40);

        LODWORD(v198) = sub_219ACD918(v7, v42);

        v38 = v40 + 2;
        if (v40 + 2 >= v37)
        {
          v80 = v169;
          if (v198)
          {
LABEL_26:
            if (v38 < v40)
            {
              goto LABEL_147;
            }

LABEL_27:
            if (v40 < v38)
            {
              v74 = 8 * v38 - 8;
              v75 = 8 * v40;
              v76 = v38;
              v77 = v40;
              do
              {
                if (v77 != --v76)
                {
                  v78 = *a3;
                  if (!*a3)
                  {
                    goto LABEL_153;
                  }

                  v79 = *(v78 + v75);
                  *(v78 + v75) = *(v78 + v74);
                  *(v78 + v74) = v79;
                }

                ++v77;
                v74 -= 8;
                v75 += 8;
              }

              while (v77 < v76);
            }
          }
        }

        else
        {
          v168 = v5;
          v167 = v40;
          v43 = (v41 + 8 * v40 + 16);
          v192 = v37;
          do
          {
            v183 = v38;
            v46 = *(v43 - 1);
            v45 = *v43;

            v47 = v176;
            v200 = v45;
            sub_219BF3FA4();
            v48 = v178;
            sub_219BF4AB4();
            v49 = *v194;
            v50 = v47;
            v51 = v196;
            (*v194)(v50, v196);
            v52 = v177;
            v201 = v46;
            sub_219BF3FA4();
            v53 = v179;
            sub_219BF4AB4();
            v49(v52, v51);
            v54 = *(v195 + 48);
            v55 = v48;
            v56 = v180;
            sub_218A5DD60(v55, v180);
            sub_218A5DD60(v53, v56 + v54);
            v7 = v193;
            v57 = *v193;
            v58 = v197;
            LODWORD(v45) = (*v193)(v56, 1, v197);
            v59 = v57(v56 + v54, 1, v58);
            if (v45 == 1)
            {
              if (v59 != 1)
              {
                sub_2189DD39C(v180 + v54);
              }

              a3 = v175;
              v38 = v183;
              v44 = v192;
              if (v198)
              {
                v5 = v168;
                v80 = v169;
                v40 = v167;
                if (v183 < v167)
                {
                  goto LABEL_147;
                }

                goto LABEL_27;
              }
            }

            else if (v59 == 1)
            {
              (*v191)(v180, v197);

              a3 = v175;
              v38 = v183;
              v44 = v192;
              if ((v198 & 1) == 0)
              {
                v5 = v168;
                v80 = v169;
                v40 = v167;
                goto LABEL_38;
              }
            }

            else
            {
              v60 = *v184;
              v61 = v171;
              v62 = v180;
              v63 = v197;
              (*v184)(v171, v180, v197);
              v64 = v62 + v54;
              v65 = v172;
              v60(v172, v64, v63);
              if (sub_219BDBC94())
              {
                v66 = sub_219BF3F84();
                v68 = v67;
                if (v66 == sub_219BF3F84() && v68 == v69)
                {
                  v70 = 0;
                }

                else
                {
                  v70 = sub_219BF78F4();
                }

                a3 = v175;
                v38 = v183;
                v44 = v192;

                v71 = v172;
                v61 = v171;
              }

              else
              {
                v70 = sub_219BDBC24();
                v71 = v65;
                a3 = v175;
                v38 = v183;
                v44 = v192;
              }

              v7 = v191;
              v72 = *v191;
              v73 = v197;
              (*v191)(v71, v197);
              v72(v61, v73);

              v39 = v173;
              if ((v198 ^ v70))
              {
                goto LABEL_34;
              }
            }

            ++v38;
            ++v43;
          }

          while (v44 != v38);
          v38 = v44;
LABEL_34:
          v5 = v168;
          v80 = v169;
          v40 = v167;
          if (v198)
          {
            goto LABEL_26;
          }
        }
      }

LABEL_38:
      v81 = a3[1];
      if (v38 >= v81)
      {
        goto LABEL_67;
      }

      if (__OFSUB__(v38, v40))
      {
        goto LABEL_146;
      }

      if (v38 - v40 >= v80)
      {
        goto LABEL_67;
      }

      v82 = v40 + v80;
      if (__OFADD__(v40, v80))
      {
        goto LABEL_148;
      }

      if (v82 >= v81)
      {
        v82 = a3[1];
      }

      if (v82 < v40)
      {
LABEL_149:
        __break(1u);
        goto LABEL_150;
      }

      if (v38 == v82)
      {
        goto LABEL_67;
      }

      v168 = v5;
      v192 = *a3;
      v83 = (v192 + 8 * v38 - 8);
      v167 = v40;
      v84 = v40 - v38;
      v174 = v82;
LABEL_50:
      v182 = v83;
      v183 = v38;
      v86 = *(v192 + 8 * v38);
      v181 = v84;
      v87 = v84;
      while (1)
      {
        v198 = v87;
        v88 = *v83;

        v89 = v187;
        v200 = v86;
        sub_219BF3FA4();
        v90 = v189;
        sub_219BF4AB4();
        v91 = *v194;
        v92 = v196;
        (*v194)(v89, v196);
        v93 = v188;
        v201 = v88;
        sub_219BF3FA4();
        v94 = v190;
        sub_219BF4AB4();
        v91(v93, v92);
        v95 = *(v195 + 48);
        v96 = v90;
        v97 = v199;
        sub_218A5DD60(v96, v199);
        sub_218A5DD60(v94, v97 + v95);
        v7 = v193;
        v98 = *v193;
        v99 = v197;
        v100 = (*v193)(v97, 1, v197);
        v101 = v98(v97 + v95, 1, v99);
        if (v100 == 1)
        {
          if (v101 != 1)
          {
            sub_2189DD39C(v199 + v95);
          }

          goto LABEL_48;
        }

        if (v101 == 1)
        {
          (*v191)(v199, v99);

          goto LABEL_60;
        }

        v102 = v185;
        v103 = *v184;
        v104 = v199;
        (*v184)(v185, v199, v99);
        v105 = v104 + v95;
        v106 = v186;
        v103(v186, v105, v99);
        if (sub_219BDBC94())
        {
          break;
        }

        v113 = sub_219BDBC24();
        v7 = v191;
        v114 = *v191;
        (*v191)(v106, v99);
        v114(v102, v99);

        if ((v113 & 1) == 0)
        {
          goto LABEL_49;
        }

LABEL_60:
        v115 = v198;
        if (!v192)
        {
          __break(1u);
LABEL_152:
          __break(1u);
LABEL_153:
          __break(1u);
          goto LABEL_154;
        }

        v116 = *v83;
        v86 = v83[1];
        *v83 = v86;
        v83[1] = v116;
        --v83;
        v117 = __CFADD__(v115, 1);
        v87 = v115 + 1;
        if (v117)
        {
          goto LABEL_49;
        }
      }

      v107 = sub_219BF3F84();
      v109 = v108;
      if (v107 != sub_219BF3F84() || v109 != v110)
      {
        break;
      }

      v7 = v191;
      v85 = *v191;
      (*v191)(v186, v99);
      v85(v185, v99);
LABEL_48:

LABEL_49:
      v38 = v183 + 1;
      v83 = v182 + 1;
      v84 = v181 - 1;
      if (v183 + 1 != v174)
      {
        goto LABEL_50;
      }

      v38 = v174;
      v5 = v168;
      a3 = v175;
      v39 = v173;
      v40 = v167;
LABEL_67:
      if (v38 < v40)
      {
        goto LABEL_145;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v39 = sub_2191F6B60(0, *(v39 + 2) + 1, 1, v39);
      }

      v7 = *(v39 + 2);
      v118 = *(v39 + 3);
      v119 = v7 + 1;
      if (v7 >= v118 >> 1)
      {
        v39 = sub_2191F6B60((v118 > 1), v7 + 1, 1, v39);
      }

      *(v39 + 2) = v119;
      v120 = &v39[16 * v7];
      *(v120 + 4) = v40;
      *(v120 + 5) = v38;
      v121 = *v170;
      if (!*v170)
      {
        goto LABEL_155;
      }

      if (v7)
      {
        while (2)
        {
          v7 = v119 - 1;
          if (v119 >= 4)
          {
            v126 = &v39[16 * v119 + 32];
            v127 = *(v126 - 64);
            v128 = *(v126 - 56);
            v132 = __OFSUB__(v128, v127);
            v129 = v128 - v127;
            if (v132)
            {
              goto LABEL_132;
            }

            v131 = *(v126 - 48);
            v130 = *(v126 - 40);
            v132 = __OFSUB__(v130, v131);
            v124 = v130 - v131;
            v125 = v132;
            if (v132)
            {
              goto LABEL_133;
            }

            v133 = &v39[16 * v119];
            v135 = *v133;
            v134 = *(v133 + 1);
            v132 = __OFSUB__(v134, v135);
            v136 = v134 - v135;
            if (v132)
            {
              goto LABEL_135;
            }

            v132 = __OFADD__(v124, v136);
            v137 = v124 + v136;
            if (v132)
            {
              goto LABEL_138;
            }

            if (v137 >= v129)
            {
              v155 = &v39[16 * v7 + 32];
              v157 = *v155;
              v156 = *(v155 + 1);
              v132 = __OFSUB__(v156, v157);
              v158 = v156 - v157;
              if (v132)
              {
                goto LABEL_142;
              }

              if (v124 < v158)
              {
                v7 = v119 - 2;
              }
            }

            else
            {
LABEL_87:
              if (v125)
              {
                goto LABEL_134;
              }

              v138 = &v39[16 * v119];
              v140 = *v138;
              v139 = *(v138 + 1);
              v141 = __OFSUB__(v139, v140);
              v142 = v139 - v140;
              v143 = v141;
              if (v141)
              {
                goto LABEL_137;
              }

              v144 = &v39[16 * v7 + 32];
              v146 = *v144;
              v145 = *(v144 + 1);
              v132 = __OFSUB__(v145, v146);
              v147 = v145 - v146;
              if (v132)
              {
                goto LABEL_140;
              }

              if (__OFADD__(v142, v147))
              {
                goto LABEL_141;
              }

              if (v142 + v147 < v124)
              {
                goto LABEL_101;
              }

              if (v124 < v147)
              {
                v7 = v119 - 2;
              }
            }
          }

          else
          {
            if (v119 == 3)
            {
              v122 = *(v39 + 4);
              v123 = *(v39 + 5);
              v132 = __OFSUB__(v123, v122);
              v124 = v123 - v122;
              v125 = v132;
              goto LABEL_87;
            }

            v148 = &v39[16 * v119];
            v150 = *v148;
            v149 = *(v148 + 1);
            v132 = __OFSUB__(v149, v150);
            v142 = v149 - v150;
            v143 = v132;
LABEL_101:
            if (v143)
            {
              goto LABEL_136;
            }

            v151 = &v39[16 * v7];
            v153 = *(v151 + 4);
            v152 = *(v151 + 5);
            v132 = __OFSUB__(v152, v153);
            v154 = v152 - v153;
            if (v132)
            {
              goto LABEL_139;
            }

            if (v154 < v142)
            {
              break;
            }
          }

          v159 = v7 - 1;
          if (v7 - 1 >= v119)
          {
            __break(1u);
LABEL_130:
            __break(1u);
LABEL_131:
            __break(1u);
LABEL_132:
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
            goto LABEL_149;
          }

          if (!*a3)
          {
            goto LABEL_152;
          }

          v160 = *&v39[16 * v159 + 32];
          v161 = *&v39[16 * v7 + 40];
          sub_21903CBDC((*a3 + 8 * v160), (*a3 + 8 * *&v39[16 * v7 + 32]), (*a3 + 8 * v161), v121);
          if (v5)
          {
            goto LABEL_128;
          }

          if (v161 < v160)
          {
            goto LABEL_130;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v39 = sub_218C81048(v39);
          }

          if (v159 >= *(v39 + 2))
          {
            goto LABEL_131;
          }

          v162 = &v39[16 * v159];
          *(v162 + 4) = v160;
          *(v162 + 5) = v161;
          v202 = v39;
          sub_218C80FBC(v7);
          v39 = v202;
          v119 = *(v202 + 2);
          if (v119 <= 1)
          {
            break;
          }

          continue;
        }
      }

      v37 = a3[1];
      if (v38 >= v37)
      {
        goto LABEL_118;
      }
    }

    v111 = sub_219BF78F4();

    v7 = v191;
    v112 = *v191;
    (*v191)(v186, v99);
    v112(v185, v99);

    if ((v111 & 1) == 0)
    {
      goto LABEL_49;
    }

    goto LABEL_60;
  }

  v39 = MEMORY[0x277D84F90];
LABEL_118:
  v7 = *v170;
  if (!*v170)
  {
    goto LABEL_156;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_150:
    v39 = sub_218C81048(v39);
  }

  v202 = v39;
  v163 = *(v39 + 2);
  if (v163 < 2)
  {
LABEL_128:

    return;
  }

  while (*a3)
  {
    v164 = *&v39[16 * v163];
    v165 = *&v39[16 * v163 + 24];
    sub_21903CBDC((*a3 + 8 * v164), (*a3 + 8 * *&v39[16 * v163 + 16]), (*a3 + 8 * v165), v7);
    if (v5)
    {
      goto LABEL_128;
    }

    if (v165 < v164)
    {
      goto LABEL_143;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v39 = sub_218C81048(v39);
    }

    if (v163 - 2 >= *(v39 + 2))
    {
      goto LABEL_144;
    }

    v166 = &v39[16 * v163];
    *v166 = v164;
    *(v166 + 1) = v165;
    v202 = v39;
    sub_218C80FBC(v163 - 1);
    v39 = v202;
    v163 = *(v202 + 2);
    if (v163 <= 1)
    {
      goto LABEL_128;
    }
  }

LABEL_154:
  __break(1u);
LABEL_155:
  __break(1u);
LABEL_156:
  __break(1u);
}

void sub_21903B3C4(void (***a1)(uint64_t, uint64_t), uint64_t a2, void *a3, uint64_t a4)
{
  v5 = v4;
  v264 = a4;
  v269 = a1;
  v308 = sub_219BDBD34();
  v7 = *(v308 - 8);
  MEMORY[0x28223BE20](v308);
  v9 = &v260 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v260 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v260 - v14;
  MEMORY[0x28223BE20](v16);
  v18 = &v260 - v17;
  MEMORY[0x28223BE20](v19);
  v263 = &v260 - v20;
  MEMORY[0x28223BE20](v21);
  v262 = &v260 - v22;
  MEMORY[0x28223BE20](v23);
  v272 = &v260 - v24;
  MEMORY[0x28223BE20](v25);
  v271 = &v260 - v26;
  sub_218C82694(0);
  v304 = v27;
  MEMORY[0x28223BE20](v27);
  v291 = &v260 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v305 = &v260 - v30;
  MEMORY[0x28223BE20](v31);
  v273 = &v260 - v32;
  MEMORY[0x28223BE20](v33);
  v280 = &v260 - v34;
  sub_2186DCF58(0);
  MEMORY[0x28223BE20](v35 - 8);
  v289 = &v260 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v37);
  v292 = &v260 - v38;
  MEMORY[0x28223BE20](v39);
  v299 = &v260 - v40;
  MEMORY[0x28223BE20](v41);
  v298 = &v260 - v42;
  MEMORY[0x28223BE20](v43);
  v268 = &v260 - v44;
  MEMORY[0x28223BE20](v45);
  v267 = &v260 - v46;
  MEMORY[0x28223BE20](v47);
  v278 = &v260 - v48;
  MEMORY[0x28223BE20](v49);
  v277 = &v260 - v50;
  v303 = sub_219BF4AC4();
  MEMORY[0x28223BE20](v303);
  v288 = &v260 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v52);
  v287 = &v260 - v53;
  MEMORY[0x28223BE20](v54);
  MEMORY[0x28223BE20](v55);
  v297 = &v260 - v56;
  MEMORY[0x28223BE20](v57);
  v266 = &v260 - v58;
  MEMORY[0x28223BE20](v59);
  v265 = &v260 - v60;
  MEMORY[0x28223BE20](v61);
  v270 = (&v260 - v62);
  MEMORY[0x28223BE20](v63);
  if (a3[1] >= 1)
  {
    v67 = a3[1];
    v286 = v66;
    v68 = 0;
    v301 = v7 + 6;
    v302 = (v64 + 8);
    v293 = (v7 + 4);
    v294 = v7 + 1;
    v69 = MEMORY[0x277D84F90];
    v276 = a3;
    v285 = v9;
    v284 = v12;
    v295 = v18;
    v296 = v15;
    v275 = &v260 - v65;
    v70 = a3;
    v71 = v67;
    while (1)
    {
      v72 = v68++;
      v279 = v69;
      if (v68 >= v71)
      {
        v144 = v264;
      }

      else
      {
        v73 = *v70;
        v7 = *(*v70 + 8 * v68);
        v74 = *(*v70 + 8 * v72);

        LODWORD(v300) = sub_219ACDD6C(v7, v74);

        v68 = v72 + 2;
        if (v72 + 2 < v71)
        {
          v261 = v72;
          v75 = (v73 + 8 * v72 + 16);
          v7 = v270;
          v282 = v71;
          while (1)
          {
            v283 = v5;
            v290 = v68;
            v78 = *(v75 - 1);
            v77 = *v75;

            v79 = v275;
            v306 = v77;
            sub_219BF3FA4();
            v80 = v277;
            sub_219BF4AA4();
            v81 = v303;
            v82 = *v302;
            (*v302)(v79, v303);
            v307 = v78;
            sub_219BF3FA4();
            v83 = v278;
            sub_219BF4AA4();
            v82(v7, v81);
            v84 = *(v304 + 48);
            v85 = v80;
            v86 = v280;
            sub_218A5DD60(v85, v280);
            sub_218A5DD60(v83, v86 + v84);
            v87 = *v301;
            v88 = v308;
            LODWORD(v77) = (*v301)(v86, 1, v308);
            v89 = v87(v86 + v84, 1, v88);
            if (v77 == 1)
            {
              if (v89 == 1)
              {
                v90 = v265;
                sub_219BF3FA4();
                v91 = v267;
                sub_219BF4AB4();
                v92 = v90;
                v93 = v303;
                v82(v92, v303);
                v94 = v266;
                sub_219BF3FA4();
                v95 = v268;
                sub_219BF4AB4();
                v82(v94, v93);
                v96 = *(v304 + 48);
                v97 = v273;
                sub_218A5DD60(v91, v273);
                sub_218A5DD60(v95, v97 + v96);
                v98 = v308;
                v99 = v87(v97, 1, v308);
                v100 = v87(v97 + v96, 1, v98);
                if (v99 == 1)
                {
                  v70 = v276;
                  v69 = v279;
                  if (v100 != 1)
                  {
                    sub_2189DD39C(v273 + v96);
                  }

                  v101 = 0;
LABEL_24:
                  v7 = v270;
                  v68 = v290;
                  v5 = v283;
                }

                else
                {
                  v70 = v276;
                  if (v100 == 1)
                  {
                    (*v294)(v273, v308);
                    v101 = 1;
                    v69 = v279;
                    goto LABEL_24;
                  }

                  v120 = v276;
                  v121 = *v293;
                  v122 = v262;
                  v123 = v273;
                  v124 = v308;
                  (*v293)(v262, v273, v308);
                  v125 = v123 + v96;
                  v126 = v263;
                  (v121)(v263, v125, v124);
                  v127 = sub_219BDBC94();
                  v7 = v270;
                  v68 = v290;
                  if (v127)
                  {
                    v128 = sub_219BF3F84();
                    v130 = v129;
                    v131 = sub_219BF3F84();
                    v69 = v279;
                    if (v128 == v131 && v130 == v132)
                    {
                      v101 = 0;
                    }

                    else
                    {
                      v101 = sub_219BF78F4();
                    }

                    v136 = *v294;
                    v137 = v308;
                    (*v294)(v263, v308);
                    v136(v262, v137);
                  }

                  else
                  {
                    v101 = sub_219BDBC24();
                    v133 = v126;
                    v134 = *v294;
                    v135 = v308;
                    (*v294)(v133, v308);
                    v134(v122, v135);
                    v69 = v279;
                  }

                  v5 = v283;
                  v70 = v120;
                }

                v76 = v282;

                v112 = v101 ^ 1;
                goto LABEL_38;
              }

              sub_2189DD39C(v280 + v84);

              v70 = v276;
              v69 = v279;
              v68 = v290;
              v5 = v283;
              v76 = v282;
              if ((v300 & 1) == 0)
              {
                v144 = v264;
                v72 = v261;
                goto LABEL_52;
              }
            }

            else
            {
              if (v89 != 1)
              {
                v102 = *v293;
                v103 = v271;
                v104 = v280;
                v105 = v308;
                (*v293)(v271, v280, v308);
                v106 = v104 + v84;
                v107 = v272;
                (v102)(v272, v106, v105);
                if (sub_219BDBC94())
                {
                  v108 = sub_219BF3F84();
                  v110 = v109;
                  if (sub_219BF3F84() == v108 && v111 == v110)
                  {
                    v112 = 0;
                  }

                  else
                  {
                    v112 = sub_219BF78F4();
                  }

                  v117 = v276;
                  v69 = v279;
                  v68 = v290;

                  v118 = *v294;
                  v119 = v308;
                  (*v294)(v272, v308);
                  v118(v271, v119);

                  v5 = v283;
                  v70 = v117;
                }

                else
                {
                  v112 = sub_219BDBC14();
                  v113 = v103;
                  v114 = *v294;
                  v115 = v107;
                  v116 = v308;
                  (*v294)(v115, v308);
                  v114(v113, v116);

                  v70 = v276;
                  v69 = v279;
                  v68 = v290;
                  v5 = v283;
                }

                v76 = v282;
LABEL_38:
                if ((v300 ^ v112))
                {
                  goto LABEL_42;
                }

                goto LABEL_8;
              }

              (*v294)(v280, v308);

              v70 = v276;
              v69 = v279;
              v68 = v290;
              v5 = v283;
              v76 = v282;
              if (v300)
              {
                v144 = v264;
                v72 = v261;
                if (v290 < v261)
                {
                  goto LABEL_176;
                }

                goto LABEL_45;
              }
            }

LABEL_8:
            ++v68;
            ++v75;
            if (v76 == v68)
            {
              v68 = v76;
LABEL_42:
              v72 = v261;
              break;
            }
          }
        }

        v144 = v264;
        if (v300)
        {
          if (v68 < v72)
          {
            goto LABEL_176;
          }

LABEL_45:
          if (v72 < v68)
          {
            v138 = 8 * v68 - 8;
            v139 = 8 * v72;
            v140 = v68;
            v141 = v72;
            do
            {
              if (v141 != --v140)
              {
                v143 = *v70;
                if (!*v70)
                {
                  goto LABEL_182;
                }

                v142 = *(v143 + v139);
                *(v143 + v139) = *(v143 + v138);
                *(v143 + v138) = v142;
              }

              ++v141;
              v138 -= 8;
              v139 += 8;
            }

            while (v141 < v140);
          }
        }
      }

LABEL_52:
      v145 = *(v70 + 8);
      if (v68 >= v145)
      {
        goto LABEL_94;
      }

      if (__OFSUB__(v68, v72))
      {
        goto LABEL_175;
      }

      if (v68 - v72 >= v144)
      {
        goto LABEL_94;
      }

      v146 = v72 + v144;
      if (__OFADD__(v72, v144))
      {
        goto LABEL_177;
      }

      if (v146 >= v145)
      {
        v146 = *(v70 + 8);
      }

      if (v146 < v72)
      {
LABEL_178:
        __break(1u);
        goto LABEL_179;
      }

      if (v68 == v146)
      {
        goto LABEL_94;
      }

      v283 = v5;
      v300 = *v70;
      v147 = v300 + 8 * v68 - 8;
      v261 = v72;
      v148 = v72 - v68;
      v149 = v286;
      v274 = v146;
LABEL_64:
      v290 = v68;
      v281 = v148;
      v152 = v148;
      v282 = v147;
      v153 = v147;
      while (1)
      {
        v306 = v152;
        v154 = *v153;

        v155 = v297;
        sub_219BF3FA4();
        v156 = v298;
        sub_219BF4AA4();
        v157 = *v302;
        v158 = v155;
        v159 = v303;
        (*v302)(v158, v303);
        v307 = v154;
        sub_219BF3FA4();
        v160 = v299;
        sub_219BF4AA4();
        v157(v149, v159);
        v161 = v305;
        v162 = v305 + *(v304 + 48);
        sub_218A5DD60(v156, v305);
        sub_218A5DD60(v160, v162);
        v7 = v301;
        v163 = *v301;
        v164 = v308;
        LODWORD(v161) = (*v301)(v161, 1, v308);
        v165 = v163(v162, 1, v164);
        if (v161 != 1)
        {
          break;
        }

        if (v165 != 1)
        {
          goto LABEL_69;
        }

        v166 = v287;
        sub_219BF3FA4();
        sub_219BF4AB4();
        v167 = v166;
        v168 = v303;
        v157(v167, v303);
        v169 = v288;
        sub_219BF3FA4();
        v170 = v289;
        sub_219BF4AB4();
        v157(v169, v168);
        v171 = v291;
        v162 = v291 + *(v304 + 48);
        sub_218A5DD60(v292, v291);
        v7 = v308;
        sub_218A5DD60(v170, v162);
        LODWORD(v171) = v163(v171, 1, v7);
        v172 = v163(v162, 1, v7);
        if (v171 == 1)
        {
          v149 = v286;
          if (v172 != 1)
          {
LABEL_69:
            sub_2189DD39C(v162);
          }

LABEL_70:

          goto LABEL_78;
        }

        if (v172 == 1)
        {
          (*v294)(v291, v308);
          v149 = v286;
          goto LABEL_62;
        }

        v191 = *v293;
        v192 = v284;
        (*v293)(v284, v291, v308);
        v193 = v285;
        v191();
        v194 = sub_219BDBC94();
        v149 = v286;
        if (v194)
        {
          v195 = sub_219BF3F84();
          v197 = v196;
          if (v195 == sub_219BF3F84() && v197 == v198)
          {

            v7 = v294;
            v199 = *v294;
            v200 = v308;
            (*v294)(v285, v308);
            v199(v284, v200);
            goto LABEL_70;
          }

          v206 = sub_219BF78F4();

          v7 = v294;
          v207 = *v294;
          v208 = v308;
          (*v294)(v285, v308);
          v207(v284, v208);

          if (v206)
          {
            goto LABEL_63;
          }
        }

        else
        {
          v201 = sub_219BDBC24();
          v202 = v193;
          v203 = v201;
          v7 = v294;
          v204 = *v294;
          v205 = v308;
          (*v294)(v202, v308);
          v204(v192, v205);

          if (v203)
          {
            goto LABEL_63;
          }
        }

LABEL_78:
        v188 = v306;
        if (!v300)
        {
          __break(1u);
LABEL_181:
          __break(1u);
LABEL_182:
          __break(1u);
          goto LABEL_183;
        }

        v189 = *v153;
        *v153 = v153[1];
        v153[1] = v189;
        --v153;
        v190 = __CFADD__(v188, 1);
        v152 = v188 + 1;
        if (v190)
        {
          goto LABEL_63;
        }
      }

      if (v165 == 1)
      {
        (*v294)(v305, v308);
        goto LABEL_62;
      }

      v173 = *v293;
      v174 = v295;
      v175 = v308;
      (*v293)(v295, v305, v308);
      v176 = v296;
      (v173)(v296, v162, v175);
      if ((sub_219BDBC94() & 1) == 0)
      {
        break;
      }

      v177 = sub_219BF3F84();
      v179 = v178;
      if (sub_219BF3F84() != v177 || v180 != v179)
      {
        v181 = sub_219BF78F4();

        v7 = v294;
        v182 = *v294;
        v183 = v308;
        (*v294)(v296, v308);
        v182(v295, v183);

        if ((v181 & 1) == 0)
        {
          goto LABEL_63;
        }

        goto LABEL_78;
      }

      v7 = v294;
      v150 = *v294;
      v151 = v308;
      (*v294)(v296, v308);
      v150(v295, v151);
LABEL_62:

LABEL_63:
      v68 = v290 + 1;
      v147 = v282 + 8;
      v148 = v281 - 1;
      if (v290 + 1 != v274)
      {
        goto LABEL_64;
      }

      v68 = v274;
      v5 = v283;
      v70 = v276;
      v69 = v279;
      v72 = v261;
LABEL_94:
      if (v68 < v72)
      {
        goto LABEL_174;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v69 = sub_2191F6B60(0, *(v69 + 2) + 1, 1, v69);
      }

      v210 = *(v69 + 2);
      v209 = *(v69 + 3);
      v211 = v210 + 1;
      if (v210 >= v209 >> 1)
      {
        v69 = sub_2191F6B60((v209 > 1), v210 + 1, 1, v69);
      }

      *(v69 + 2) = v211;
      v212 = &v69[16 * v210];
      *(v212 + 4) = v72;
      *(v212 + 5) = v68;
      v7 = *v269;
      if (!*v269)
      {
        goto LABEL_184;
      }

      if (v210)
      {
        while (2)
        {
          v213 = v211 - 1;
          if (v211 >= 4)
          {
            v218 = &v69[16 * v211 + 32];
            v219 = *(v218 - 64);
            v220 = *(v218 - 56);
            v224 = __OFSUB__(v220, v219);
            v221 = v220 - v219;
            if (v224)
            {
              goto LABEL_161;
            }

            v223 = *(v218 - 48);
            v222 = *(v218 - 40);
            v224 = __OFSUB__(v222, v223);
            v216 = v222 - v223;
            v217 = v224;
            if (v224)
            {
              goto LABEL_162;
            }

            v225 = &v69[16 * v211];
            v227 = *v225;
            v226 = *(v225 + 1);
            v224 = __OFSUB__(v226, v227);
            v228 = v226 - v227;
            if (v224)
            {
              goto LABEL_164;
            }

            v224 = __OFADD__(v216, v228);
            v229 = v216 + v228;
            if (v224)
            {
              goto LABEL_167;
            }

            if (v229 >= v221)
            {
              v247 = &v69[16 * v213 + 32];
              v249 = *v247;
              v248 = *(v247 + 1);
              v224 = __OFSUB__(v248, v249);
              v250 = v248 - v249;
              if (v224)
              {
                goto LABEL_171;
              }

              if (v216 < v250)
              {
                v213 = v211 - 2;
              }
            }

            else
            {
LABEL_114:
              if (v217)
              {
                goto LABEL_163;
              }

              v230 = &v69[16 * v211];
              v232 = *v230;
              v231 = *(v230 + 1);
              v233 = __OFSUB__(v231, v232);
              v234 = v231 - v232;
              v235 = v233;
              if (v233)
              {
                goto LABEL_166;
              }

              v236 = &v69[16 * v213 + 32];
              v238 = *v236;
              v237 = *(v236 + 1);
              v224 = __OFSUB__(v237, v238);
              v239 = v237 - v238;
              if (v224)
              {
                goto LABEL_169;
              }

              if (__OFADD__(v234, v239))
              {
                goto LABEL_170;
              }

              if (v234 + v239 < v216)
              {
                goto LABEL_128;
              }

              if (v216 < v239)
              {
                v213 = v211 - 2;
              }
            }
          }

          else
          {
            if (v211 == 3)
            {
              v214 = *(v69 + 4);
              v215 = *(v69 + 5);
              v224 = __OFSUB__(v215, v214);
              v216 = v215 - v214;
              v217 = v224;
              goto LABEL_114;
            }

            v240 = &v69[16 * v211];
            v242 = *v240;
            v241 = *(v240 + 1);
            v224 = __OFSUB__(v241, v242);
            v234 = v241 - v242;
            v235 = v224;
LABEL_128:
            if (v235)
            {
              goto LABEL_165;
            }

            v243 = &v69[16 * v213];
            v245 = *(v243 + 4);
            v244 = *(v243 + 5);
            v224 = __OFSUB__(v244, v245);
            v246 = v244 - v245;
            if (v224)
            {
              goto LABEL_168;
            }

            if (v246 < v234)
            {
              break;
            }
          }

          v251 = v213 - 1;
          if (v213 - 1 >= v211)
          {
            __break(1u);
LABEL_159:
            __break(1u);
LABEL_160:
            __break(1u);
LABEL_161:
            __break(1u);
LABEL_162:
            __break(1u);
LABEL_163:
            __break(1u);
LABEL_164:
            __break(1u);
LABEL_165:
            __break(1u);
LABEL_166:
            __break(1u);
LABEL_167:
            __break(1u);
LABEL_168:
            __break(1u);
LABEL_169:
            __break(1u);
LABEL_170:
            __break(1u);
LABEL_171:
            __break(1u);
LABEL_172:
            __break(1u);
LABEL_173:
            __break(1u);
LABEL_174:
            __break(1u);
LABEL_175:
            __break(1u);
LABEL_176:
            __break(1u);
LABEL_177:
            __break(1u);
            goto LABEL_178;
          }

          if (!*v70)
          {
            goto LABEL_181;
          }

          v252 = *&v69[16 * v251 + 32];
          v253 = *&v69[16 * v213 + 40];
          sub_21903D748((*v70 + 8 * v252), (*v70 + 8 * *&v69[16 * v213 + 32]), (*v70 + 8 * v253), v7);
          if (v5)
          {
            goto LABEL_157;
          }

          if (v253 < v252)
          {
            goto LABEL_159;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v69 = sub_218C81048(v69);
          }

          if (v251 >= *(v69 + 2))
          {
            goto LABEL_160;
          }

          v254 = &v69[16 * v251];
          *(v254 + 4) = v252;
          *(v254 + 5) = v253;
          v309 = v69;
          sub_218C80FBC(v213);
          v69 = v309;
          v211 = *(v309 + 2);
          if (v211 <= 1)
          {
            break;
          }

          continue;
        }
      }

      v71 = *(v70 + 8);
      if (v68 >= v71)
      {
        goto LABEL_147;
      }
    }

    v184 = sub_219BDBC14();
    v7 = v294;
    v185 = *v294;
    v186 = v176;
    v187 = v308;
    (*v294)(v186, v308);
    v185(v174, v187);

    if ((v184 & 1) == 0)
    {
      goto LABEL_63;
    }

    goto LABEL_78;
  }

  v69 = MEMORY[0x277D84F90];
  v70 = a3;
LABEL_147:
  v7 = *v269;
  if (!*v269)
  {
    goto LABEL_185;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_179:
    v69 = sub_218C81048(v69);
  }

  v309 = v69;
  v255 = *(v69 + 2);
  if (v255 < 2)
  {
LABEL_157:

    return;
  }

  while (1)
  {
    v256 = *v70;
    if (!*v70)
    {
      break;
    }

    v257 = v70;
    v258 = *&v69[16 * v255];
    v70 = *&v69[16 * v255 + 24];
    sub_21903D748((v256 + 8 * v258), (v256 + 8 * *&v69[16 * v255 + 16]), (v256 + 8 * v70), v7);
    if (v5)
    {
      goto LABEL_157;
    }

    if (v70 < v258)
    {
      goto LABEL_172;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v69 = sub_218C81048(v69);
    }

    if (v255 - 2 >= *(v69 + 2))
    {
      goto LABEL_173;
    }

    v259 = &v69[16 * v255];
    *v259 = v258;
    *(v259 + 1) = v70;
    v309 = v69;
    sub_218C80FBC(v255 - 1);
    v69 = v309;
    v255 = *(v309 + 2);
    v70 = v257;
    if (v255 <= 1)
    {
      goto LABEL_157;
    }
  }

LABEL_183:
  __break(1u);
LABEL_184:
  __break(1u);
LABEL_185:
  __break(1u);
}