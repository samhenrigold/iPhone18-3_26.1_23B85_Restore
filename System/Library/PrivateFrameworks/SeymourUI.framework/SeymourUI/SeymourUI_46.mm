void sub_20BA315A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t (*)(), uint64_t, uint64_t, void *), void (*a8)(char *, uint64_t, uint64_t), unsigned __int8 a9, void (*a10)(uint64_t), uint64_t a11)
{
  v180 = a6;
  v181 = a8;
  v178 = a4;
  v179 = a5;
  v177 = a3;
  v184 = a2;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0, &unk_20C150360);
  v165 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v163 = &v137 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v164 = &v137 - v15;
  v162 = v16;
  MEMORY[0x28223BE20](v17);
  v19 = &v137 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766670, &unk_20C151580);
  MEMORY[0x28223BE20](v20 - 8);
  v170 = &v137 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BAB0, &unk_20C150570);
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v161 = &v137 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v160 = v24;
  MEMORY[0x28223BE20](v25);
  v171 = &v137 - v26;
  v168 = sub_20C1391C4();
  v167 = *(v168 - 8);
  MEMORY[0x28223BE20](v168);
  v169 = &v137 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_20C138A64();
  v172 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v173 = &v137 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766680, &unk_20C14F920);
  MEMORY[0x28223BE20](v30 - 8);
  v166 = &v137 - v31;
  v32 = sub_20C137C24();
  v175 = *(v32 - 8);
  v176 = v32;
  MEMORY[0x28223BE20](v32);
  v174 = v33;
  v182 = &v137 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_20C13C554();
  v35 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v37 = (&v137 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v183 = Strong;
    sub_20B51C88C(0, &qword_281100530, 0x277D85C78);
    *v37 = sub_20C13D374();
    (*(v35 + 104))(v37, *MEMORY[0x277D85200], v34);
    v39 = sub_20C13C584();
    (*(v35 + 8))(v37, v34);
    if (v39)
    {
      v40 = v183;
      v41 = &v183[OBJC_IVAR____TtC9SeymourUI14MusicTrackCell_artworkView];
      [*&v183[OBJC_IVAR____TtC9SeymourUI14MusicTrackCell_artworkView] setContentMode_];
      v42 = *v41;
      v43 = *(v41 + 1);
      LODWORD(v159) = a9;
      v44 = v184;
      if (sub_20BA640CC(v184, v42, v43, a9 & 1))
      {
        v144 = v23;
        v141 = v28;
        v145 = v22;
        v138 = v19;
        v139 = v12;
        v157 = a11;
        v158 = a10;
        v151 = *v41;
        v149 = *(v41 + 1);
        ObjectType = swift_getObjectType();
        v147 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v45 = v175;
        v46 = *(v175 + 16);
        v154 = a9 & 1;
        v148 = a7;
        v152 = v41;
        v47 = v182;
        v48 = v176;
        v155 = v175 + 16;
        v153 = v46;
        v46(v182, v44, v176);
        v49 = *(v45 + 80);
        v50 = (v49 + 24) & ~v49;
        v140 = v174 + 7;
        v51 = (v174 + 7 + v50) & 0xFFFFFFFFFFFFFFF8;
        v52 = (v51 + 23) & 0xFFFFFFFFFFFFFFF8;
        v53 = (v52 + 23) & 0xFFFFFFFFFFFFFFF8;
        v146 = (v53 + 15) & 0xFFFFFFFFFFFFFFF8;
        v156 = v49;
        v54 = swift_allocObject();
        *(v54 + 16) = v147;
        v143 = *(v45 + 32);
        v142 = v45 + 32;
        v143(v54 + v50, v47, v48);
        v55 = (v54 + v51);
        v56 = v178;
        *v55 = v177;
        v55[1] = v56;
        v57 = (v54 + v52);
        v58 = v180;
        *v57 = v179;
        v57[1] = v58;
        *(v54 + v53) = v148;
        v59 = v54 + v146;
        *v59 = v181;
        *(v59 + 8) = v154;
        v60 = (v54 + ((v53 + 31) & 0xFFFFFFFFFFFFFFF8));
        v61 = v158;
        v62 = v157;
        *v60 = v158;
        v60[1] = v62;
        v63 = v149;
        v148 = v149[19];

        sub_20B584050(v61, v62);
        v148(sub_20BA65334, v54, ObjectType, v63);

        if (v159)
        {
          v64 = [objc_opt_self() mainScreen];
          [v64 scale];
          v66 = v65;

          v67 = sub_20C137BF4() / v66;
          v68 = sub_20C137C04() / v66;
          v69 = v152;
        }

        else
        {
          v69 = v152;
          [*v152 bounds];
          v67 = v70;
          v68 = v71;
        }

        v72 = v182;
        v73 = v153;
        if (v67 <= 0.0 || v68 <= 0.0)
        {
        }

        else
        {
          v159 = ~v156;
          v74 = v69[1];
          v75 = swift_getObjectType();
          v74[15](0, v75, v74);
          v76 = v69[1];
          v77 = swift_getObjectType();
          v78 = v166;
          v79 = v176;
          v73(v166, v184, v176);
          (*(v175 + 56))(v78, 0, 1, v79);
          v76[2](v78, v77, v76);
          v80 = *v69;
          sub_20B51C88C(0, &qword_27C762070, 0x277D75348);
          sub_20C137BC4();
          v81 = sub_20C13D5A4();
          [v80 setBackgroundColor_];

          v82 = v69[1];
          v83 = swift_getObjectType();
          v82[22](COERCE_DOUBLE(*&v67), COERCE_DOUBLE(*&v68), 0, v83, v82);
          v84 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v73(v72, v184, v79);
          v85 = (v156 + 16) & v159;
          v86 = v73;
          v87 = (v140 + v85) & 0xFFFFFFFFFFFFFFF8;
          v88 = (v87 + 15) & 0xFFFFFFFFFFFFFFF8;
          v89 = swift_allocObject();
          v143(v89 + v85, v72, v79);
          *(v89 + v87) = v84;
          v90 = (v89 + v88);
          v91 = v184;
          *v90 = v67;
          v90[1] = v68;
          v175 = v89;
          v92 = (v89 + ((v88 + 23) & 0xFFFFFFFFFFFFFFF8));
          v93 = v79;
          v94 = v158;
          v95 = v157;
          *v92 = v158;
          v92[1] = v95;
          v86(v72, v91, v79);
          (*(v167 + 104))(v169, *MEMORY[0x277D542A8], v168);

          sub_20B584050(v94, v95);
          v96 = v173;
          v97 = v144;
          v98 = v183;
          sub_20C138A54();
          v99 = v170;
          sub_20B5F17F8(v96, v170);
          v100 = v145;
          if ((*(v97 + 48))(v99, 1, v145) == 1)
          {
            sub_20B520158(v99, &unk_27C766670, &unk_20C151580);
            v101 = sub_20BA1DD44(&OBJC_IVAR____TtC9SeymourUI14MusicTrackCell_artworkView);
            if (v158)
            {
              v158(v101);
            }

            else
            {
            }

            (*(v172 + 8))(v96, v141);
          }

          else
          {
            v102 = v93;
            v181 = *(v97 + 32);
            v103 = v171;
            v181(v171, v99, v100);
            v104 = swift_allocObject();
            swift_unknownObjectWeakInit();
            v153(v72, v91, v102);
            v105 = (v156 + 40) & v159;
            v106 = v105 + v174;
            v107 = (v105 + v174) & 0xFFFFFFFFFFFFFFF8;
            v108 = swift_allocObject();
            *(v108 + 16) = v104;
            *(v108 + 24) = v67;
            *(v108 + 32) = v68;
            v143(v108 + v105, v72, v102);
            *(v108 + v106) = v154;
            v109 = v108 + v107;
            v110 = v158;
            v111 = v157;
            *(v109 + 8) = v158;
            *(v109 + 16) = v111;
            v112 = swift_allocObject();
            *(v112 + 16) = sub_20BA65380;
            *(v112 + 24) = v108;
            v113 = v144;
            v114 = v161;
            v115 = v103;
            v116 = v145;
            (*(v144 + 16))(v161, v115, v145);
            v117 = v113;
            v118 = (*(v113 + 80) + 16) & ~*(v113 + 80);
            v119 = (v160 + v118 + 7) & 0xFFFFFFFFFFFFFFF8;
            v120 = swift_allocObject();
            v181((v120 + v118), v114, v116);
            v121 = (v120 + v119);
            *v121 = sub_20B5F7760;
            v121[1] = v112;
            sub_20B584050(v110, v111);
            v122 = v164;
            sub_20C137C94();
            v123 = swift_allocObject();
            v124 = v175;
            *(v123 + 16) = sub_20BA6534C;
            *(v123 + 24) = v124;
            v125 = swift_allocObject();
            *(v125 + 16) = sub_20BA66C80;
            *(v125 + 24) = v123;
            v126 = v165;
            v127 = v163;
            v128 = v139;
            (*(v165 + 16))(v163, v122, v139);
            v129 = (*(v126 + 80) + 16) & ~*(v126 + 80);
            v130 = (v162 + v129 + 7) & 0xFFFFFFFFFFFFFFF8;
            v131 = swift_allocObject();
            (*(v126 + 32))(v131 + v129, v127, v128);
            v132 = (v131 + v130);
            *v132 = sub_20B5F7764;
            v132[1] = v125;

            v133 = v138;
            sub_20C137C94();
            v134 = *(v126 + 8);
            v134(v122, v128);
            v135 = sub_20C137CB4();
            v136 = swift_allocObject();
            *(v136 + 16) = 0;
            *(v136 + 24) = 0;
            v135(sub_20B5DF6DC, v136);

            v134(v133, v128);
            (*(v117 + 8))(v171, v145);
            (*(v172 + 8))(v173, v141);
          }
        }
      }

      else
      {
      }
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_20BA32630(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void (*a8)(char *, uint64_t, uint64_t), char a9, void (*a10)(uint64_t), uint64_t a11)
{
  v179 = a6;
  v180 = a8;
  v177 = a4;
  v178 = a5;
  v176 = a3;
  v182 = a2;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0, &unk_20C150360);
  v163 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v161 = &v138 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v162 = &v138 - v15;
  v160 = v16;
  MEMORY[0x28223BE20](v17);
  v19 = &v138 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766670, &unk_20C151580);
  MEMORY[0x28223BE20](v20 - 8);
  v168 = &v138 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BAB0, &unk_20C150570);
  v172 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v159 = &v138 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v158 = v23;
  MEMORY[0x28223BE20](v24);
  v169 = &v138 - v25;
  v166 = sub_20C1391C4();
  v165 = *(v166 - 8);
  MEMORY[0x28223BE20](v166);
  v167 = &v138 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_20C138A64();
  v170 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v171 = &v138 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766680, &unk_20C14F920);
  MEMORY[0x28223BE20](v29 - 8);
  v164 = &v138 - v30;
  v181 = sub_20C137C24();
  v174 = *(v181 - 8);
  MEMORY[0x28223BE20](v181);
  v173 = v31;
  v175 = &v138 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_20C13C554();
  v33 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v35 = (&v138 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v37 = Strong;
    v156 = v27;
    sub_20B51C88C(0, &qword_281100530, 0x277D85C78);
    *v35 = sub_20C13D374();
    (*(v33 + 104))(v35, *MEMORY[0x277D85200], v32);
    v38 = sub_20C13C584();
    (*(v33 + 8))(v35, v32);
    if (v38)
    {
      v39 = OBJC_IVAR____TtC9SeymourUI16TVCircleItemCell_tvArtworkView;
      [*&v37[OBJC_IVAR____TtC9SeymourUI16TVCircleItemCell_tvArtworkView] setContentMode_];
      v40 = *&v37[v39];
      v41 = v182;
      v42 = sub_20B92C808(v182, v40, a9 & 1);

      if ((v42 & 1) != 0 && (v146 = v22, v139 = v19, v140 = v12, v155 = a11, v157 = a10, v142 = v39, v152 = *&v37[v39], v150 = swift_allocObject(), swift_unknownObjectWeakInit(), v43 = v174, v44 = *(v174 + 16), v153 = a9 & 1, v45 = v175, v154 = v37, v46 = v181, v148 = v174 + 16, v147 = v44, v44(v175, v41, v181), v47 = *(v43 + 80), v151 = a7, v48 = (v47 + 24) & ~v47, v141 = v173 + 7, v49 = (v173 + 7 + v48) & 0xFFFFFFFFFFFFFFF8, v50 = (v49 + 23) & 0xFFFFFFFFFFFFFFF8, v51 = (v50 + 23) & 0xFFFFFFFFFFFFFFF8, v149 = (v51 + 15) & 0xFFFFFFFFFFFFFFF8, v145 = v47, v52 = swift_allocObject(), *(v52 + 16) = v150, v53 = *(v43 + 32), v54 = v45, v55 = v153, v144 = v43 + 32, v143 = v53, v53(v52 + v48, v54, v46), v56 = (v52 + v49), v57 = v177, *v56 = v176, v56[1] = v57, v58 = (v52 + v50), v59 = v179, *v58 = v178, v58[1] = v59, *(v52 + v51) = v151, v60 = v52 + v149, *v60 = v180, *(v60 + 8) = v55, v61 = (v52 + ((v51 + 31) & 0xFFFFFFFFFFFFFFF8)), v62 = v157, v63 = v155, *v61 = v157, v61[1] = v63, v64 = (v152 + OBJC_IVAR____TtC9SeymourUI13TVArtworkView_layoutHandler), v66 = *(v152 + OBJC_IVAR____TtC9SeymourUI13TVArtworkView_layoutHandler), v65 = *(v152 + OBJC_IVAR____TtC9SeymourUI13TVArtworkView_layoutHandler + 8), *v64 = sub_20BA653D8, v64[1] = v52, , , v67 = v63, , , sub_20B584050(v62, v63), v68 = v65, v37 = v154, v69 = v182, sub_20B583ECC(v66, v68), , v70 = sub_20B6272F4(v69, v55), v70 > 0.0) && (v72 = v71, v71 > 0.0))
      {
        v73 = v70;
        v74 = v145;
        v152 = ~v145;
        v75 = v142;
        [*&v37[v142] setStackImage_];
        v76 = *&v37[v75];
        v77 = v164;
        v78 = v69;
        v79 = v181;
        v147(v164, v69, v181);
        (*(v174 + 56))(v77, 0, 1, v79);
        v80 = OBJC_IVAR____TtC9SeymourUI13TVArtworkView_artwork;
        swift_beginAccess();
        sub_20B69AB5C(v77, v76 + v80);
        swift_endAccess();
        v81 = *&v37[v75];
        sub_20B51C88C(0, &qword_27C762070, 0x277D75348);
        v82 = v78;
        sub_20C137BC4();
        v83 = sub_20C13D5A4();
        [v81 setBackgroundColor_];

        v84 = *&v37[v75] + OBJC_IVAR____TtC9SeymourUI13TVArtworkView_pendingArtworkSize;
        *v84 = v73;
        *(v84 + 8) = v72;
        *(v84 + 16) = 0;
        v85 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v86 = v175;
        v87 = v79;
        v88 = v147;
        v147(v175, v82, v87);
        v89 = (v74 + 16) & v152;
        v90 = v67;
        v91 = (v141 + v89) & 0xFFFFFFFFFFFFFFF8;
        v92 = (v91 + 15) & 0xFFFFFFFFFFFFFFF8;
        v93 = swift_allocObject();
        v94 = v93 + v89;
        v95 = v181;
        v143(v94, v86, v181);
        *(v93 + v91) = v85;
        v96 = (v93 + v92);
        *v96 = v73;
        v96[1] = v72;
        v174 = v93;
        v97 = (v93 + ((v92 + 23) & 0xFFFFFFFFFFFFFFF8));
        v98 = v95;
        v99 = v157;
        *v97 = v157;
        v97[1] = v90;
        v88(v86, v182, v95);
        (*(v165 + 104))(v167, *MEMORY[0x277D542A8], v166);

        sub_20B584050(v99, v90);
        v100 = v171;
        sub_20C138A54();
        v101 = v168;
        sub_20B5F1820(v100, v168);
        v102 = v172;
        v103 = v146;
        if ((*(v172 + 48))(v101, 1, v146) == 1)
        {
          sub_20B520158(v101, &unk_27C766670, &unk_20C151580);
          v104 = sub_20BA1DB84(&OBJC_IVAR____TtC9SeymourUI16TVCircleItemCell_tvArtworkView);
          if (v99)
          {
            v99(v104);
          }

          else
          {
          }

          (*(v170 + 8))(v100, v156);
        }

        else
        {
          v105 = v98;
          v180 = *(v102 + 32);
          v106 = v169;
          v180(v169, v101, v103);
          v107 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v147(v86, v182, v105);
          v108 = (v145 + 40) & v152;
          v109 = v108 + v173;
          v110 = (v108 + v173) & 0xFFFFFFFFFFFFFFF8;
          v111 = v103;
          v112 = swift_allocObject();
          *(v112 + 2) = v107;
          v112[3] = v73;
          v112[4] = v72;
          v143(v112 + v108, v86, v105);
          *(v112 + v109) = v153;
          v113 = v112 + v110;
          v114 = v157;
          v115 = v155;
          *(v113 + 1) = v157;
          *(v113 + 2) = v115;
          v116 = swift_allocObject();
          *(v116 + 16) = sub_20BA65424;
          *(v116 + 24) = v112;
          v117 = v172;
          v118 = v159;
          (*(v172 + 16))(v159, v106, v111);
          v119 = (*(v117 + 80) + 16) & ~*(v117 + 80);
          v120 = (v158 + v119 + 7) & 0xFFFFFFFFFFFFFFF8;
          v121 = swift_allocObject();
          v180((v121 + v119), v118, v111);
          v122 = (v121 + v120);
          *v122 = sub_20B5F7760;
          v122[1] = v116;
          sub_20B584050(v114, v115);
          v123 = v162;
          sub_20C137C94();
          v124 = swift_allocObject();
          v125 = v174;
          *(v124 + 16) = sub_20BA653F0;
          *(v124 + 24) = v125;
          v126 = swift_allocObject();
          *(v126 + 16) = sub_20BA66C80;
          *(v126 + 24) = v124;
          v127 = v163;
          v128 = v161;
          v129 = v140;
          (*(v163 + 16))(v161, v123, v140);
          v130 = (*(v127 + 80) + 16) & ~*(v127 + 80);
          v131 = (v160 + v130 + 7) & 0xFFFFFFFFFFFFFFF8;
          v132 = swift_allocObject();
          (*(v127 + 32))(v132 + v130, v128, v129);
          v133 = (v132 + v131);
          *v133 = sub_20B5F7764;
          v133[1] = v126;

          v134 = v139;
          sub_20C137C94();
          v135 = *(v127 + 8);
          v135(v123, v129);
          v136 = sub_20C137CB4();
          v137 = swift_allocObject();
          *(v137 + 16) = 0;
          *(v137 + 24) = 0;
          v136(sub_20B5DF6DC, v137);

          v135(v134, v129);
          (*(v172 + 8))(v169, v146);
          (*(v170 + 8))(v171, v156);
        }
      }

      else
      {
      }
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_20BA335F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t (*)(), uint64_t, uint64_t, void *), void (*a8)(char *, uint64_t, uint64_t), unsigned __int8 a9, void (*a10)(uint64_t), uint64_t a11)
{
  v180 = a6;
  v181 = a8;
  v178 = a4;
  v179 = a5;
  v177 = a3;
  v184 = a2;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0, &unk_20C150360);
  v165 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v163 = &v137 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v164 = &v137 - v15;
  v162 = v16;
  MEMORY[0x28223BE20](v17);
  v19 = &v137 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766670, &unk_20C151580);
  MEMORY[0x28223BE20](v20 - 8);
  v170 = &v137 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BAB0, &unk_20C150570);
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v161 = &v137 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v160 = v24;
  MEMORY[0x28223BE20](v25);
  v171 = &v137 - v26;
  v168 = sub_20C1391C4();
  v167 = *(v168 - 8);
  MEMORY[0x28223BE20](v168);
  v169 = &v137 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_20C138A64();
  v172 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v173 = &v137 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766680, &unk_20C14F920);
  MEMORY[0x28223BE20](v30 - 8);
  v166 = &v137 - v31;
  v32 = sub_20C137C24();
  v175 = *(v32 - 8);
  v176 = v32;
  MEMORY[0x28223BE20](v32);
  v174 = v33;
  v182 = &v137 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_20C13C554();
  v35 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v37 = (&v137 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v183 = Strong;
    sub_20B51C88C(0, &qword_281100530, 0x277D85C78);
    *v37 = sub_20C13D374();
    (*(v35 + 104))(v37, *MEMORY[0x277D85200], v34);
    v39 = sub_20C13C584();
    (*(v35 + 8))(v37, v34);
    if (v39)
    {
      v40 = v183;
      v41 = &v183[OBJC_IVAR____TtC9SeymourUI16TVMusicTrackCell_artworkView];
      [*&v183[OBJC_IVAR____TtC9SeymourUI16TVMusicTrackCell_artworkView] setContentMode_];
      v42 = *v41;
      v43 = *(v41 + 1);
      LODWORD(v159) = a9;
      v44 = v184;
      if (sub_20BA640CC(v184, v42, v43, a9 & 1))
      {
        v144 = v23;
        v141 = v28;
        v145 = v22;
        v138 = v19;
        v139 = v12;
        v157 = a11;
        v158 = a10;
        v151 = *v41;
        v149 = *(v41 + 1);
        ObjectType = swift_getObjectType();
        v147 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v45 = v175;
        v46 = *(v175 + 16);
        v154 = a9 & 1;
        v148 = a7;
        v152 = v41;
        v47 = v182;
        v48 = v176;
        v155 = v175 + 16;
        v153 = v46;
        v46(v182, v44, v176);
        v49 = *(v45 + 80);
        v50 = (v49 + 24) & ~v49;
        v140 = v174 + 7;
        v51 = (v174 + 7 + v50) & 0xFFFFFFFFFFFFFFF8;
        v52 = (v51 + 23) & 0xFFFFFFFFFFFFFFF8;
        v53 = (v52 + 23) & 0xFFFFFFFFFFFFFFF8;
        v146 = (v53 + 15) & 0xFFFFFFFFFFFFFFF8;
        v156 = v49;
        v54 = swift_allocObject();
        *(v54 + 16) = v147;
        v143 = *(v45 + 32);
        v142 = v45 + 32;
        v143(v54 + v50, v47, v48);
        v55 = (v54 + v51);
        v56 = v178;
        *v55 = v177;
        v55[1] = v56;
        v57 = (v54 + v52);
        v58 = v180;
        *v57 = v179;
        v57[1] = v58;
        *(v54 + v53) = v148;
        v59 = v54 + v146;
        *v59 = v181;
        *(v59 + 8) = v154;
        v60 = (v54 + ((v53 + 31) & 0xFFFFFFFFFFFFFFF8));
        v61 = v158;
        v62 = v157;
        *v60 = v158;
        v60[1] = v62;
        v63 = v149;
        v148 = v149[19];

        sub_20B584050(v61, v62);
        v148(sub_20BA65520, v54, ObjectType, v63);

        if (v159)
        {
          v64 = [objc_opt_self() mainScreen];
          [v64 scale];
          v66 = v65;

          v67 = sub_20C137BF4() / v66;
          v68 = sub_20C137C04() / v66;
          v69 = v152;
        }

        else
        {
          v69 = v152;
          [*v152 bounds];
          v67 = v70;
          v68 = v71;
        }

        v72 = v182;
        v73 = v153;
        if (v67 <= 0.0 || v68 <= 0.0)
        {
        }

        else
        {
          v159 = ~v156;
          v74 = v69[1];
          v75 = swift_getObjectType();
          v74[15](0, v75, v74);
          v76 = v69[1];
          v77 = swift_getObjectType();
          v78 = v166;
          v79 = v176;
          v73(v166, v184, v176);
          (*(v175 + 56))(v78, 0, 1, v79);
          v76[2](v78, v77, v76);
          v80 = *v69;
          sub_20B51C88C(0, &qword_27C762070, 0x277D75348);
          sub_20C137BC4();
          v81 = sub_20C13D5A4();
          [v80 setBackgroundColor_];

          v82 = v69[1];
          v83 = swift_getObjectType();
          v82[22](COERCE_DOUBLE(*&v67), COERCE_DOUBLE(*&v68), 0, v83, v82);
          v84 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v73(v72, v184, v79);
          v85 = (v156 + 16) & v159;
          v86 = v73;
          v87 = (v140 + v85) & 0xFFFFFFFFFFFFFFF8;
          v88 = (v87 + 15) & 0xFFFFFFFFFFFFFFF8;
          v89 = swift_allocObject();
          v143(v89 + v85, v72, v79);
          *(v89 + v87) = v84;
          v90 = (v89 + v88);
          v91 = v184;
          *v90 = v67;
          v90[1] = v68;
          v175 = v89;
          v92 = (v89 + ((v88 + 23) & 0xFFFFFFFFFFFFFFF8));
          v93 = v79;
          v94 = v158;
          v95 = v157;
          *v92 = v158;
          v92[1] = v95;
          v86(v72, v91, v79);
          (*(v167 + 104))(v169, *MEMORY[0x277D542A8], v168);

          sub_20B584050(v94, v95);
          v96 = v173;
          v97 = v144;
          v98 = v183;
          sub_20C138A54();
          v99 = v170;
          sub_20B5F1848(v96, v170);
          v100 = v145;
          if ((*(v97 + 48))(v99, 1, v145) == 1)
          {
            sub_20B520158(v99, &unk_27C766670, &unk_20C151580);
            v101 = sub_20BA1DD44(&OBJC_IVAR____TtC9SeymourUI16TVMusicTrackCell_artworkView);
            if (v158)
            {
              v158(v101);
            }

            else
            {
            }

            (*(v172 + 8))(v96, v141);
          }

          else
          {
            v102 = v93;
            v181 = *(v97 + 32);
            v103 = v171;
            v181(v171, v99, v100);
            v104 = swift_allocObject();
            swift_unknownObjectWeakInit();
            v153(v72, v91, v102);
            v105 = (v156 + 40) & v159;
            v106 = v105 + v174;
            v107 = (v105 + v174) & 0xFFFFFFFFFFFFFFF8;
            v108 = swift_allocObject();
            *(v108 + 16) = v104;
            *(v108 + 24) = v67;
            *(v108 + 32) = v68;
            v143(v108 + v105, v72, v102);
            *(v108 + v106) = v154;
            v109 = v108 + v107;
            v110 = v158;
            v111 = v157;
            *(v109 + 8) = v158;
            *(v109 + 16) = v111;
            v112 = swift_allocObject();
            *(v112 + 16) = sub_20BA6556C;
            *(v112 + 24) = v108;
            v113 = v144;
            v114 = v161;
            v115 = v103;
            v116 = v145;
            (*(v144 + 16))(v161, v115, v145);
            v117 = v113;
            v118 = (*(v113 + 80) + 16) & ~*(v113 + 80);
            v119 = (v160 + v118 + 7) & 0xFFFFFFFFFFFFFFF8;
            v120 = swift_allocObject();
            v181((v120 + v118), v114, v116);
            v121 = (v120 + v119);
            *v121 = sub_20B5F7760;
            v121[1] = v112;
            sub_20B584050(v110, v111);
            v122 = v164;
            sub_20C137C94();
            v123 = swift_allocObject();
            v124 = v175;
            *(v123 + 16) = sub_20BA65538;
            *(v123 + 24) = v124;
            v125 = swift_allocObject();
            *(v125 + 16) = sub_20BA66C80;
            *(v125 + 24) = v123;
            v126 = v165;
            v127 = v163;
            v128 = v139;
            (*(v165 + 16))(v163, v122, v139);
            v129 = (*(v126 + 80) + 16) & ~*(v126 + 80);
            v130 = (v162 + v129 + 7) & 0xFFFFFFFFFFFFFFF8;
            v131 = swift_allocObject();
            (*(v126 + 32))(v131 + v129, v127, v128);
            v132 = (v131 + v130);
            *v132 = sub_20B5F7764;
            v132[1] = v125;

            v133 = v138;
            sub_20C137C94();
            v134 = *(v126 + 8);
            v134(v122, v128);
            v135 = sub_20C137CB4();
            v136 = swift_allocObject();
            *(v136 + 16) = 0;
            *(v136 + 24) = 0;
            v135(sub_20B5DF6DC, v136);

            v134(v133, v128);
            (*(v117 + 8))(v171, v145);
            (*(v172 + 8))(v173, v141);
          }
        }
      }

      else
      {
      }
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_20BA34678(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t (*)(), uint64_t, uint64_t, void *), void (*a8)(char *, uint64_t, uint64_t), unsigned __int8 a9, void (*a10)(uint64_t), uint64_t a11)
{
  v180 = a6;
  v181 = a8;
  v178 = a4;
  v179 = a5;
  v177 = a3;
  v184 = a2;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0, &unk_20C150360);
  v165 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v163 = &v137 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v164 = &v137 - v15;
  v162 = v16;
  MEMORY[0x28223BE20](v17);
  v19 = &v137 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766670, &unk_20C151580);
  MEMORY[0x28223BE20](v20 - 8);
  v170 = &v137 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BAB0, &unk_20C150570);
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v161 = &v137 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v160 = v24;
  MEMORY[0x28223BE20](v25);
  v171 = &v137 - v26;
  v168 = sub_20C1391C4();
  v167 = *(v168 - 8);
  MEMORY[0x28223BE20](v168);
  v169 = &v137 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_20C138A64();
  v172 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v173 = &v137 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766680, &unk_20C14F920);
  MEMORY[0x28223BE20](v30 - 8);
  v166 = &v137 - v31;
  v32 = sub_20C137C24();
  v175 = *(v32 - 8);
  v176 = v32;
  MEMORY[0x28223BE20](v32);
  v174 = v33;
  v182 = &v137 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_20C13C554();
  v35 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v37 = (&v137 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v183 = Strong;
    sub_20B51C88C(0, &qword_281100530, 0x277D85C78);
    *v37 = sub_20C13D374();
    (*(v35 + 104))(v37, *MEMORY[0x277D85200], v34);
    v39 = sub_20C13C584();
    (*(v35 + 8))(v37, v34);
    if (v39)
    {
      v40 = v183;
      v41 = &v183[OBJC_IVAR____TtC9SeymourUI17ArtworkHeaderCell_artworkView];
      [*&v183[OBJC_IVAR____TtC9SeymourUI17ArtworkHeaderCell_artworkView] setContentMode_];
      v42 = *v41;
      v43 = *(v41 + 1);
      LODWORD(v159) = a9;
      v44 = v184;
      if (sub_20BA640CC(v184, v42, v43, a9 & 1))
      {
        v144 = v23;
        v141 = v28;
        v145 = v22;
        v138 = v19;
        v139 = v12;
        v157 = a11;
        v158 = a10;
        v151 = *v41;
        v149 = *(v41 + 1);
        ObjectType = swift_getObjectType();
        v147 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v45 = v175;
        v46 = *(v175 + 16);
        v154 = a9 & 1;
        v148 = a7;
        v152 = v41;
        v47 = v182;
        v48 = v176;
        v155 = v175 + 16;
        v153 = v46;
        v46(v182, v44, v176);
        v49 = *(v45 + 80);
        v50 = (v49 + 24) & ~v49;
        v140 = v174 + 7;
        v51 = (v174 + 7 + v50) & 0xFFFFFFFFFFFFFFF8;
        v52 = (v51 + 23) & 0xFFFFFFFFFFFFFFF8;
        v53 = (v52 + 23) & 0xFFFFFFFFFFFFFFF8;
        v146 = (v53 + 15) & 0xFFFFFFFFFFFFFFF8;
        v156 = v49;
        v54 = swift_allocObject();
        *(v54 + 16) = v147;
        v143 = *(v45 + 32);
        v142 = v45 + 32;
        v143(v54 + v50, v47, v48);
        v55 = (v54 + v51);
        v56 = v178;
        *v55 = v177;
        v55[1] = v56;
        v57 = (v54 + v52);
        v58 = v180;
        *v57 = v179;
        v57[1] = v58;
        *(v54 + v53) = v148;
        v59 = v54 + v146;
        *v59 = v181;
        *(v59 + 8) = v154;
        v60 = (v54 + ((v53 + 31) & 0xFFFFFFFFFFFFFFF8));
        v61 = v158;
        v62 = v157;
        *v60 = v158;
        v60[1] = v62;
        v63 = v149;
        v148 = v149[19];

        sub_20B584050(v61, v62);
        v148(sub_20BA64CCC, v54, ObjectType, v63);

        if (v159)
        {
          v64 = [objc_opt_self() mainScreen];
          [v64 scale];
          v66 = v65;

          v67 = sub_20C137BF4() / v66;
          v68 = sub_20C137C04() / v66;
          v69 = v152;
        }

        else
        {
          v69 = v152;
          [*v152 bounds];
          v67 = v70;
          v68 = v71;
        }

        v72 = v182;
        v73 = v153;
        if (v67 <= 0.0 || v68 <= 0.0)
        {
        }

        else
        {
          v159 = ~v156;
          v74 = v69[1];
          v75 = swift_getObjectType();
          v74[15](0, v75, v74);
          v76 = v69[1];
          v77 = swift_getObjectType();
          v78 = v166;
          v79 = v176;
          v73(v166, v184, v176);
          (*(v175 + 56))(v78, 0, 1, v79);
          v76[2](v78, v77, v76);
          v80 = *v69;
          sub_20B51C88C(0, &qword_27C762070, 0x277D75348);
          sub_20C137BC4();
          v81 = sub_20C13D5A4();
          [v80 setBackgroundColor_];

          v82 = v69[1];
          v83 = swift_getObjectType();
          v82[22](COERCE_DOUBLE(*&v67), COERCE_DOUBLE(*&v68), 0, v83, v82);
          v84 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v73(v72, v184, v79);
          v85 = (v156 + 16) & v159;
          v86 = v73;
          v87 = (v140 + v85) & 0xFFFFFFFFFFFFFFF8;
          v88 = (v87 + 15) & 0xFFFFFFFFFFFFFFF8;
          v89 = swift_allocObject();
          v143(v89 + v85, v72, v79);
          *(v89 + v87) = v84;
          v90 = (v89 + v88);
          v91 = v184;
          *v90 = v67;
          v90[1] = v68;
          v175 = v89;
          v92 = (v89 + ((v88 + 23) & 0xFFFFFFFFFFFFFFF8));
          v93 = v79;
          v94 = v158;
          v95 = v157;
          *v92 = v158;
          v92[1] = v95;
          v86(v72, v91, v79);
          (*(v167 + 104))(v169, *MEMORY[0x277D542A8], v168);

          sub_20B584050(v94, v95);
          v96 = v173;
          v97 = v144;
          v98 = v183;
          sub_20C138A54();
          v99 = v170;
          sub_20B5F1870(v96, v170);
          v100 = v145;
          if ((*(v97 + 48))(v99, 1, v145) == 1)
          {
            sub_20B520158(v99, &unk_27C766670, &unk_20C151580);
            v101 = sub_20BA1DD44(&OBJC_IVAR____TtC9SeymourUI17ArtworkHeaderCell_artworkView);
            if (v158)
            {
              v158(v101);
            }

            else
            {
            }

            (*(v172 + 8))(v96, v141);
          }

          else
          {
            v102 = v93;
            v181 = *(v97 + 32);
            v103 = v171;
            v181(v171, v99, v100);
            v104 = swift_allocObject();
            swift_unknownObjectWeakInit();
            v153(v72, v91, v102);
            v105 = (v156 + 40) & v159;
            v106 = v105 + v174;
            v107 = (v105 + v174) & 0xFFFFFFFFFFFFFFF8;
            v108 = swift_allocObject();
            *(v108 + 16) = v104;
            *(v108 + 24) = v67;
            *(v108 + 32) = v68;
            v143(v108 + v105, v72, v102);
            *(v108 + v106) = v154;
            v109 = v108 + v107;
            v110 = v158;
            v111 = v157;
            *(v109 + 8) = v158;
            *(v109 + 16) = v111;
            v112 = swift_allocObject();
            *(v112 + 16) = sub_20BA64D18;
            *(v112 + 24) = v108;
            v113 = v144;
            v114 = v161;
            v115 = v103;
            v116 = v145;
            (*(v144 + 16))(v161, v115, v145);
            v117 = v113;
            v118 = (*(v113 + 80) + 16) & ~*(v113 + 80);
            v119 = (v160 + v118 + 7) & 0xFFFFFFFFFFFFFFF8;
            v120 = swift_allocObject();
            v181((v120 + v118), v114, v116);
            v121 = (v120 + v119);
            *v121 = sub_20B5F7760;
            v121[1] = v112;
            sub_20B584050(v110, v111);
            v122 = v164;
            sub_20C137C94();
            v123 = swift_allocObject();
            v124 = v175;
            *(v123 + 16) = sub_20BA64CE4;
            *(v123 + 24) = v124;
            v125 = swift_allocObject();
            *(v125 + 16) = sub_20BA66C80;
            *(v125 + 24) = v123;
            v126 = v165;
            v127 = v163;
            v128 = v139;
            (*(v165 + 16))(v163, v122, v139);
            v129 = (*(v126 + 80) + 16) & ~*(v126 + 80);
            v130 = (v162 + v129 + 7) & 0xFFFFFFFFFFFFFFF8;
            v131 = swift_allocObject();
            (*(v126 + 32))(v131 + v129, v127, v128);
            v132 = (v131 + v130);
            *v132 = sub_20B5F7764;
            v132[1] = v125;

            v133 = v138;
            sub_20C137C94();
            v134 = *(v126 + 8);
            v134(v122, v128);
            v135 = sub_20C137CB4();
            v136 = swift_allocObject();
            *(v136 + 16) = 0;
            *(v136 + 24) = 0;
            v135(sub_20B5DF6DC, v136);

            v134(v133, v128);
            (*(v117 + 8))(v171, v145);
            (*(v172 + 8))(v173, v141);
          }
        }
      }

      else
      {
      }
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_20BA35700(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t (*)(), uint64_t, uint64_t, void *), void (*a8)(char *, uint64_t, uint64_t), unsigned __int8 a9, void (*a10)(uint64_t), uint64_t a11)
{
  v180 = a6;
  v181 = a8;
  v178 = a4;
  v179 = a5;
  v177 = a3;
  v184 = a2;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0, &unk_20C150360);
  v165 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v163 = &v137 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v164 = &v137 - v15;
  v162 = v16;
  MEMORY[0x28223BE20](v17);
  v19 = &v137 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766670, &unk_20C151580);
  MEMORY[0x28223BE20](v20 - 8);
  v170 = &v137 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BAB0, &unk_20C150570);
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v161 = &v137 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v160 = v24;
  MEMORY[0x28223BE20](v25);
  v171 = &v137 - v26;
  v168 = sub_20C1391C4();
  v167 = *(v168 - 8);
  MEMORY[0x28223BE20](v168);
  v169 = &v137 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_20C138A64();
  v172 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v173 = &v137 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766680, &unk_20C14F920);
  MEMORY[0x28223BE20](v30 - 8);
  v166 = &v137 - v31;
  v32 = sub_20C137C24();
  v175 = *(v32 - 8);
  v176 = v32;
  MEMORY[0x28223BE20](v32);
  v174 = v33;
  v182 = &v137 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_20C13C554();
  v35 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v37 = (&v137 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v183 = Strong;
    sub_20B51C88C(0, &qword_281100530, 0x277D85C78);
    *v37 = sub_20C13D374();
    (*(v35 + 104))(v37, *MEMORY[0x277D85200], v34);
    v39 = sub_20C13C584();
    (*(v35 + 8))(v37, v34);
    if (v39)
    {
      v40 = v183;
      v41 = &v183[OBJC_IVAR____TtC9SeymourUI17TrainerFilterCell_artworkView];
      [*&v183[OBJC_IVAR____TtC9SeymourUI17TrainerFilterCell_artworkView] setContentMode_];
      v42 = *v41;
      v43 = *(v41 + 1);
      LODWORD(v159) = a9;
      v44 = v184;
      if (sub_20BA640CC(v184, v42, v43, a9 & 1))
      {
        v144 = v23;
        v141 = v28;
        v145 = v22;
        v138 = v19;
        v139 = v12;
        v157 = a11;
        v158 = a10;
        v151 = *v41;
        v149 = *(v41 + 1);
        ObjectType = swift_getObjectType();
        v147 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v45 = v175;
        v46 = *(v175 + 16);
        v154 = a9 & 1;
        v148 = a7;
        v152 = v41;
        v47 = v182;
        v48 = v176;
        v155 = v175 + 16;
        v153 = v46;
        v46(v182, v44, v176);
        v49 = *(v45 + 80);
        v50 = (v49 + 24) & ~v49;
        v140 = v174 + 7;
        v51 = (v174 + 7 + v50) & 0xFFFFFFFFFFFFFFF8;
        v52 = (v51 + 23) & 0xFFFFFFFFFFFFFFF8;
        v53 = (v52 + 23) & 0xFFFFFFFFFFFFFFF8;
        v146 = (v53 + 15) & 0xFFFFFFFFFFFFFFF8;
        v156 = v49;
        v54 = swift_allocObject();
        *(v54 + 16) = v147;
        v143 = *(v45 + 32);
        v142 = v45 + 32;
        v143(v54 + v50, v47, v48);
        v55 = (v54 + v51);
        v56 = v178;
        *v55 = v177;
        v55[1] = v56;
        v57 = (v54 + v52);
        v58 = v180;
        *v57 = v179;
        v57[1] = v58;
        *(v54 + v53) = v148;
        v59 = v54 + v146;
        *v59 = v181;
        *(v59 + 8) = v154;
        v60 = (v54 + ((v53 + 31) & 0xFFFFFFFFFFFFFFF8));
        v61 = v158;
        v62 = v157;
        *v60 = v158;
        v60[1] = v62;
        v63 = v149;
        v148 = v149[19];

        sub_20B584050(v61, v62);
        v148(sub_20BA655C4, v54, ObjectType, v63);

        if (v159)
        {
          v64 = [objc_opt_self() mainScreen];
          [v64 scale];
          v66 = v65;

          v67 = sub_20C137BF4() / v66;
          v68 = sub_20C137C04() / v66;
          v69 = v152;
        }

        else
        {
          v69 = v152;
          [*v152 bounds];
          v67 = v70;
          v68 = v71;
        }

        v72 = v182;
        v73 = v153;
        if (v67 <= 0.0 || v68 <= 0.0)
        {
        }

        else
        {
          v159 = ~v156;
          v74 = v69[1];
          v75 = swift_getObjectType();
          v74[15](0, v75, v74);
          v76 = v69[1];
          v77 = swift_getObjectType();
          v78 = v166;
          v79 = v176;
          v73(v166, v184, v176);
          (*(v175 + 56))(v78, 0, 1, v79);
          v76[2](v78, v77, v76);
          v80 = *v69;
          sub_20B51C88C(0, &qword_27C762070, 0x277D75348);
          sub_20C137BC4();
          v81 = sub_20C13D5A4();
          [v80 setBackgroundColor_];

          v82 = v69[1];
          v83 = swift_getObjectType();
          v82[22](COERCE_DOUBLE(*&v67), COERCE_DOUBLE(*&v68), 0, v83, v82);
          v84 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v73(v72, v184, v79);
          v85 = (v156 + 16) & v159;
          v86 = v73;
          v87 = (v140 + v85) & 0xFFFFFFFFFFFFFFF8;
          v88 = (v87 + 15) & 0xFFFFFFFFFFFFFFF8;
          v89 = swift_allocObject();
          v143(v89 + v85, v72, v79);
          *(v89 + v87) = v84;
          v90 = (v89 + v88);
          v91 = v184;
          *v90 = v67;
          v90[1] = v68;
          v175 = v89;
          v92 = (v89 + ((v88 + 23) & 0xFFFFFFFFFFFFFFF8));
          v93 = v79;
          v94 = v158;
          v95 = v157;
          *v92 = v158;
          v92[1] = v95;
          v86(v72, v91, v79);
          (*(v167 + 104))(v169, *MEMORY[0x277D542A8], v168);

          sub_20B584050(v94, v95);
          v96 = v173;
          v97 = v144;
          v98 = v183;
          sub_20C138A54();
          v99 = v170;
          sub_20B5F1898(v96, v170);
          v100 = v145;
          if ((*(v97 + 48))(v99, 1, v145) == 1)
          {
            sub_20B520158(v99, &unk_27C766670, &unk_20C151580);
            v101 = sub_20BA1DD44(&OBJC_IVAR____TtC9SeymourUI17TrainerFilterCell_artworkView);
            if (v158)
            {
              v158(v101);
            }

            else
            {
            }

            (*(v172 + 8))(v96, v141);
          }

          else
          {
            v102 = v93;
            v181 = *(v97 + 32);
            v103 = v171;
            v181(v171, v99, v100);
            v104 = swift_allocObject();
            swift_unknownObjectWeakInit();
            v153(v72, v91, v102);
            v105 = (v156 + 40) & v159;
            v106 = v105 + v174;
            v107 = (v105 + v174) & 0xFFFFFFFFFFFFFFF8;
            v108 = swift_allocObject();
            *(v108 + 16) = v104;
            *(v108 + 24) = v67;
            *(v108 + 32) = v68;
            v143(v108 + v105, v72, v102);
            *(v108 + v106) = v154;
            v109 = v108 + v107;
            v110 = v158;
            v111 = v157;
            *(v109 + 8) = v158;
            *(v109 + 16) = v111;
            v112 = swift_allocObject();
            *(v112 + 16) = sub_20BA65610;
            *(v112 + 24) = v108;
            v113 = v144;
            v114 = v161;
            v115 = v103;
            v116 = v145;
            (*(v144 + 16))(v161, v115, v145);
            v117 = v113;
            v118 = (*(v113 + 80) + 16) & ~*(v113 + 80);
            v119 = (v160 + v118 + 7) & 0xFFFFFFFFFFFFFFF8;
            v120 = swift_allocObject();
            v181((v120 + v118), v114, v116);
            v121 = (v120 + v119);
            *v121 = sub_20B5F7760;
            v121[1] = v112;
            sub_20B584050(v110, v111);
            v122 = v164;
            sub_20C137C94();
            v123 = swift_allocObject();
            v124 = v175;
            *(v123 + 16) = sub_20BA655DC;
            *(v123 + 24) = v124;
            v125 = swift_allocObject();
            *(v125 + 16) = sub_20BA66C80;
            *(v125 + 24) = v123;
            v126 = v165;
            v127 = v163;
            v128 = v139;
            (*(v165 + 16))(v163, v122, v139);
            v129 = (*(v126 + 80) + 16) & ~*(v126 + 80);
            v130 = (v162 + v129 + 7) & 0xFFFFFFFFFFFFFFF8;
            v131 = swift_allocObject();
            (*(v126 + 32))(v131 + v129, v127, v128);
            v132 = (v131 + v130);
            *v132 = sub_20B5F7764;
            v132[1] = v125;

            v133 = v138;
            sub_20C137C94();
            v134 = *(v126 + 8);
            v134(v122, v128);
            v135 = sub_20C137CB4();
            v136 = swift_allocObject();
            *(v136 + 16) = 0;
            *(v136 + 24) = 0;
            v135(sub_20B5DF6DC, v136);

            v134(v133, v128);
            (*(v117 + 8))(v171, v145);
            (*(v172 + 8))(v173, v141);
          }
        }
      }

      else
      {
      }
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_20BA36788(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void (*a8)(char *, uint64_t, uint64_t), unsigned __int8 a9, void (*a10)(uint64_t), uint64_t a11)
{
  v176 = a6;
  v177 = a8;
  v174 = a4;
  v175 = a5;
  v173 = a3;
  v180 = a2;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0, &unk_20C150360);
  v162 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v160 = &v134 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v161 = &v134 - v15;
  v159 = v16;
  MEMORY[0x28223BE20](v17);
  v19 = &v134 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766670, &unk_20C151580);
  MEMORY[0x28223BE20](v20 - 8);
  v168 = &v134 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BAB0, &unk_20C150570);
  v170 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v158 = &v134 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v157 = v23;
  MEMORY[0x28223BE20](v24);
  v163 = &v134 - v25;
  v166 = sub_20C1391C4();
  v165 = *(v166 - 8);
  MEMORY[0x28223BE20](v166);
  v167 = &v134 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_20C138A64();
  v28 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v169 = &v134 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766680, &unk_20C14F920);
  MEMORY[0x28223BE20](v30 - 8);
  v164 = &v134 - v31;
  v179 = sub_20C137C24();
  v172 = *(v179 - 8);
  MEMORY[0x28223BE20](v179);
  v171 = v32;
  v178 = &v134 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_20C13C554();
  v34 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v36 = (&v134 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v155 = v22;
    sub_20B51C88C(0, &qword_281100530, 0x277D85C78);
    *v36 = sub_20C13D374();
    (*(v34 + 104))(v36, *MEMORY[0x277D85200], v33);
    v37 = sub_20C13C584();
    (*(v34 + 8))(v36, v33);
    if (v37)
    {
      v154 = v28;
      v38 = Strong;
      v39 = &Strong[OBJC_IVAR____TtC9SeymourUI21VideoBrickContentView_artworkView];
      v40 = a7;
      [*&Strong[OBJC_IVAR____TtC9SeymourUI21VideoBrickContentView_artworkView] setContentMode_];
      v41 = v180;
      if ((sub_20BA640CC(v180, *v39, *(v39 + 1), a9 & 1) & 1) == 0)
      {

        return;
      }

      v138 = v27;
      v135 = v19;
      v136 = v12;
      v156 = a11;
      v153 = a10;
      v150 = *v39;
      v147 = *(v39 + 1);
      ObjectType = swift_getObjectType();
      v146 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v148 = a9;
      v42 = v172;
      v43 = *(v172 + 16);
      v152 = a9 & 1;
      v151 = v39;
      v45 = v178;
      v44 = v179;
      v142 = v172 + 16;
      v141 = v43;
      v43(v178, v41, v179);
      v46 = *(v42 + 80);
      v47 = (v46 + 24) & ~v46;
      v137 = v171 + 7;
      v48 = (v171 + 7 + v47) & 0xFFFFFFFFFFFFFFF8;
      v49 = (v48 + 23) & 0xFFFFFFFFFFFFFFF8;
      v50 = (v49 + 23) & 0xFFFFFFFFFFFFFFF8;
      v145 = ((v50 + 15) & 0xFFFFFFFFFFFFFFF8);
      v143 = v46;
      v51 = swift_allocObject();
      v144 = v40;
      v52 = v51;
      *(v51 + 16) = v146;
      v53 = *(v42 + 32);
      v140 = v42 + 32;
      v139 = v53;
      v53(v51 + v47, v45, v44);
      v54 = (v52 + v48);
      v55 = v174;
      *v54 = v173;
      v54[1] = v55;
      v56 = (v52 + v49);
      v57 = v176;
      *v56 = v175;
      v56[1] = v57;
      *(v52 + v50) = v144;
      v58 = v145 + v52;
      *v58 = v177;
      v58[8] = v152;
      v59 = (v52 + ((v50 + 31) & 0xFFFFFFFFFFFFFFF8));
      v60 = v153;
      v61 = v156;
      *v59 = v153;
      v59[1] = v61;
      v62 = v147;
      v145 = *(v147 + 152);

      sub_20B584050(v60, v61);
      v145(sub_20BA667B4, v52, ObjectType, v62);

      if (v148)
      {
        v63 = [objc_opt_self() mainScreen];
        [v63 scale];
        v65 = v64;

        v66 = v180;
        v67 = sub_20C137BF4() / v65;
        v68 = sub_20C137C04() / v65;
        v69 = v66;
        v70 = v151;
      }

      else
      {
        v70 = v151;
        [*v151 bounds];
        v67 = v71;
        v68 = v72;
        v69 = v180;
      }

      if (v67 <= 0.0 || v68 <= 0.0)
      {
      }

      else
      {
        v151 = ~v143;
        v73 = v70[1];
        v74 = swift_getObjectType();
        v73[15](0, v74, v73);
        v75 = v70[1];
        v76 = swift_getObjectType();
        v77 = v164;
        v78 = v179;
        v79 = v141;
        v141(v164, v69, v179);
        (*(v172 + 56))(v77, 0, 1, v78);
        v75[2](v77, v76, v75);
        v80 = *v70;
        sub_20B51C88C(0, &qword_27C762070, 0x277D75348);
        sub_20C137BC4();
        v81 = sub_20C13D5A4();
        [v80 setBackgroundColor_];

        v82 = v70[1];
        v83 = swift_getObjectType();
        v82[22](COERCE_DOUBLE(*&v67), COERCE_DOUBLE(*&v68), 0, v83, v82);
        v84 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v85 = v178;
        v79(v178, v69, v78);
        v86 = (v143 + 16) & v151;
        v87 = (v137 + v86) & 0xFFFFFFFFFFFFFFF8;
        v88 = (v87 + 15) & 0xFFFFFFFFFFFFFFF8;
        v89 = swift_allocObject();
        v139(v89 + v86, v85, v78);
        *(v89 + v87) = v84;
        v90 = (v89 + v88);
        *v90 = v67;
        v90[1] = v68;
        v172 = v89;
        v91 = (v89 + ((v88 + 23) & 0xFFFFFFFFFFFFFFF8));
        v92 = v153;
        v93 = v156;
        *v91 = v153;
        v91[1] = v93;
        v79(v85, v69, v78);
        (*(v165 + 104))(v167, *MEMORY[0x277D542A8], v166);

        sub_20B584050(v92, v93);
        v94 = v169;
        sub_20C138A54();
        v95 = *&Strong[OBJC_IVAR____TtC9SeymourUI21VideoBrickContentView_fetchArtworkHandler];
        if (v95)
        {
          v96 = *&Strong[OBJC_IVAR____TtC9SeymourUI21VideoBrickContentView_fetchArtworkHandler + 8];

          v97 = v168;
          v95(v94);
          sub_20B583ECC(v95, v96);
          v98 = v170;
          v99 = v155;
          if ((*(v170 + 48))(v97, 1, v155) != 1)
          {
            v177 = *(v98 + 32);
            v177(v163, v97, v99);
            v100 = swift_allocObject();
            swift_unknownObjectWeakInit();
            v102 = v178;
            v101 = v179;
            v141(v178, v180, v179);
            v103 = (v143 + 40) & v151;
            v104 = v103 + v171;
            v105 = (v103 + v171) & 0xFFFFFFFFFFFFFFF8;
            v106 = swift_allocObject();
            *(v106 + 16) = v100;
            *(v106 + 24) = v67;
            *(v106 + 32) = v68;
            v139(v106 + v103, v102, v101);
            *(v106 + v104) = v152;
            v107 = v106 + v105;
            v108 = v156;
            *(v107 + 8) = v92;
            *(v107 + 16) = v108;
            v109 = swift_allocObject();
            *(v109 + 16) = sub_20BA66800;
            *(v109 + 24) = v106;
            v110 = v170;
            v111 = v158;
            (*(v170 + 16))(v158, v163, v99);
            v112 = v110;
            v113 = (*(v110 + 80) + 16) & ~*(v110 + 80);
            v114 = (v157 + v113 + 7) & 0xFFFFFFFFFFFFFFF8;
            v115 = swift_allocObject();
            v177((v115 + v113), v111, v99);
            v116 = (v115 + v114);
            *v116 = sub_20B5F7760;
            v116[1] = v109;
            sub_20B584050(v92, v108);
            v117 = v161;
            sub_20C137C94();
            v118 = swift_allocObject();
            v119 = v172;
            *(v118 + 16) = sub_20BA667CC;
            *(v118 + 24) = v119;
            v120 = swift_allocObject();
            *(v120 + 16) = sub_20BA66C80;
            *(v120 + 24) = v118;
            v121 = v162;
            v122 = v160;
            v123 = v136;
            (*(v162 + 16))(v160, v117, v136);
            v124 = (*(v121 + 80) + 16) & ~*(v121 + 80);
            v125 = (v159 + v124 + 7) & 0xFFFFFFFFFFFFFFF8;
            v126 = swift_allocObject();
            (*(v121 + 32))(v126 + v124, v122, v123);
            v127 = (v126 + v125);
            *v127 = sub_20B5F7764;
            v127[1] = v120;

            v128 = v135;
            sub_20C137C94();
            v129 = *(v121 + 8);
            v129(v117, v123);
            v130 = sub_20C137CB4();
            v131 = swift_allocObject();
            *(v131 + 16) = 0;
            *(v131 + 24) = 0;
            v130(sub_20B5DF6DC, v131);

            v129(v128, v123);
            (*(v112 + 8))(v163, v155);
            (*(v154 + 8))(v169, v138);
            return;
          }
        }

        else
        {
          v97 = v168;
          (*(v170 + 56))(v168, 1, 1, v155);
        }

        sub_20B520158(v97, &unk_27C766670, &unk_20C151580);
        v132 = Strong;
        v133 = sub_20BA1DD44(&OBJC_IVAR____TtC9SeymourUI21VideoBrickContentView_artworkView);
        if (v92)
        {
          v92(v133);
        }

        else
        {
        }

        (*(v154 + 8))(v94, v138);
      }
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_20BA3784C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t (*)(), uint64_t, uint64_t, void *), void (*a8)(char *, uint64_t, uint64_t), unsigned __int8 a9, void (*a10)(uint64_t), uint64_t a11)
{
  v180 = a6;
  v181 = a8;
  v178 = a4;
  v179 = a5;
  v177 = a3;
  v184 = a2;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0, &unk_20C150360);
  v165 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v163 = &v137 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v164 = &v137 - v15;
  v162 = v16;
  MEMORY[0x28223BE20](v17);
  v19 = &v137 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766670, &unk_20C151580);
  MEMORY[0x28223BE20](v20 - 8);
  v170 = &v137 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BAB0, &unk_20C150570);
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v161 = &v137 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v160 = v24;
  MEMORY[0x28223BE20](v25);
  v171 = &v137 - v26;
  v168 = sub_20C1391C4();
  v167 = *(v168 - 8);
  MEMORY[0x28223BE20](v168);
  v169 = &v137 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_20C138A64();
  v172 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v173 = &v137 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766680, &unk_20C14F920);
  MEMORY[0x28223BE20](v30 - 8);
  v166 = &v137 - v31;
  v32 = sub_20C137C24();
  v175 = *(v32 - 8);
  v176 = v32;
  MEMORY[0x28223BE20](v32);
  v174 = v33;
  v182 = &v137 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_20C13C554();
  v35 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v37 = (&v137 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v183 = Strong;
    sub_20B51C88C(0, &qword_281100530, 0x277D85C78);
    *v37 = sub_20C13D374();
    (*(v35 + 104))(v37, *MEMORY[0x277D85200], v34);
    v39 = sub_20C13C584();
    (*(v35 + 8))(v37, v34);
    if (v39)
    {
      v40 = v183;
      v41 = &v183[OBJC_IVAR____TtC9SeymourUI18ActionBrickRowCell_artworkView];
      [*&v183[OBJC_IVAR____TtC9SeymourUI18ActionBrickRowCell_artworkView] setContentMode_];
      v42 = *v41;
      v43 = *(v41 + 1);
      LODWORD(v159) = a9;
      v44 = v184;
      if (sub_20BA640CC(v184, v42, v43, a9 & 1))
      {
        v144 = v23;
        v141 = v28;
        v145 = v22;
        v138 = v19;
        v139 = v12;
        v157 = a11;
        v158 = a10;
        v151 = *v41;
        v149 = *(v41 + 1);
        ObjectType = swift_getObjectType();
        v147 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v45 = v175;
        v46 = *(v175 + 16);
        v154 = a9 & 1;
        v148 = a7;
        v152 = v41;
        v47 = v182;
        v48 = v176;
        v155 = v175 + 16;
        v153 = v46;
        v46(v182, v44, v176);
        v49 = *(v45 + 80);
        v50 = (v49 + 24) & ~v49;
        v140 = v174 + 7;
        v51 = (v174 + 7 + v50) & 0xFFFFFFFFFFFFFFF8;
        v52 = (v51 + 23) & 0xFFFFFFFFFFFFFFF8;
        v53 = (v52 + 23) & 0xFFFFFFFFFFFFFFF8;
        v146 = (v53 + 15) & 0xFFFFFFFFFFFFFFF8;
        v156 = v49;
        v54 = swift_allocObject();
        *(v54 + 16) = v147;
        v143 = *(v45 + 32);
        v142 = v45 + 32;
        v143(v54 + v50, v47, v48);
        v55 = (v54 + v51);
        v56 = v178;
        *v55 = v177;
        v55[1] = v56;
        v57 = (v54 + v52);
        v58 = v180;
        *v57 = v179;
        v57[1] = v58;
        *(v54 + v53) = v148;
        v59 = v54 + v146;
        *v59 = v181;
        *(v59 + 8) = v154;
        v60 = (v54 + ((v53 + 31) & 0xFFFFFFFFFFFFFFF8));
        v61 = v158;
        v62 = v157;
        *v60 = v158;
        v60[1] = v62;
        v63 = v149;
        v148 = v149[19];

        sub_20B584050(v61, v62);
        v148(sub_20BA665C8, v54, ObjectType, v63);

        if (v159)
        {
          v64 = [objc_opt_self() mainScreen];
          [v64 scale];
          v66 = v65;

          v67 = sub_20C137BF4() / v66;
          v68 = sub_20C137C04() / v66;
          v69 = v152;
        }

        else
        {
          v69 = v152;
          [*v152 bounds];
          v67 = v70;
          v68 = v71;
        }

        v72 = v182;
        v73 = v153;
        if (v67 <= 0.0 || v68 <= 0.0)
        {
        }

        else
        {
          v159 = ~v156;
          v74 = v69[1];
          v75 = swift_getObjectType();
          v74[15](0, v75, v74);
          v76 = v69[1];
          v77 = swift_getObjectType();
          v78 = v166;
          v79 = v176;
          v73(v166, v184, v176);
          (*(v175 + 56))(v78, 0, 1, v79);
          v76[2](v78, v77, v76);
          v80 = *v69;
          sub_20B51C88C(0, &qword_27C762070, 0x277D75348);
          sub_20C137BC4();
          v81 = sub_20C13D5A4();
          [v80 setBackgroundColor_];

          v82 = v69[1];
          v83 = swift_getObjectType();
          v82[22](COERCE_DOUBLE(*&v67), COERCE_DOUBLE(*&v68), 0, v83, v82);
          v84 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v73(v72, v184, v79);
          v85 = (v156 + 16) & v159;
          v86 = v73;
          v87 = (v140 + v85) & 0xFFFFFFFFFFFFFFF8;
          v88 = (v87 + 15) & 0xFFFFFFFFFFFFFFF8;
          v89 = swift_allocObject();
          v143(v89 + v85, v72, v79);
          *(v89 + v87) = v84;
          v90 = (v89 + v88);
          v91 = v184;
          *v90 = v67;
          v90[1] = v68;
          v175 = v89;
          v92 = (v89 + ((v88 + 23) & 0xFFFFFFFFFFFFFFF8));
          v93 = v79;
          v94 = v158;
          v95 = v157;
          *v92 = v158;
          v92[1] = v95;
          v86(v72, v91, v79);
          (*(v167 + 104))(v169, *MEMORY[0x277D542A8], v168);

          sub_20B584050(v94, v95);
          v96 = v173;
          v97 = v144;
          v98 = v183;
          sub_20C138A54();
          v99 = v170;
          sub_20B5F18C0(v96, v170);
          v100 = v145;
          if ((*(v97 + 48))(v99, 1, v145) == 1)
          {
            sub_20B520158(v99, &unk_27C766670, &unk_20C151580);
            v101 = sub_20BA1DD44(&OBJC_IVAR____TtC9SeymourUI18ActionBrickRowCell_artworkView);
            if (v158)
            {
              v158(v101);
            }

            else
            {
            }

            (*(v172 + 8))(v96, v141);
          }

          else
          {
            v102 = v93;
            v181 = *(v97 + 32);
            v103 = v171;
            v181(v171, v99, v100);
            v104 = swift_allocObject();
            swift_unknownObjectWeakInit();
            v153(v72, v91, v102);
            v105 = (v156 + 40) & v159;
            v106 = v105 + v174;
            v107 = (v105 + v174) & 0xFFFFFFFFFFFFFFF8;
            v108 = swift_allocObject();
            *(v108 + 16) = v104;
            *(v108 + 24) = v67;
            *(v108 + 32) = v68;
            v143(v108 + v105, v72, v102);
            *(v108 + v106) = v154;
            v109 = v108 + v107;
            v110 = v158;
            v111 = v157;
            *(v109 + 8) = v158;
            *(v109 + 16) = v111;
            v112 = swift_allocObject();
            *(v112 + 16) = sub_20BA66614;
            *(v112 + 24) = v108;
            v113 = v144;
            v114 = v161;
            v115 = v103;
            v116 = v145;
            (*(v144 + 16))(v161, v115, v145);
            v117 = v113;
            v118 = (*(v113 + 80) + 16) & ~*(v113 + 80);
            v119 = (v160 + v118 + 7) & 0xFFFFFFFFFFFFFFF8;
            v120 = swift_allocObject();
            v181((v120 + v118), v114, v116);
            v121 = (v120 + v119);
            *v121 = sub_20B5F7760;
            v121[1] = v112;
            sub_20B584050(v110, v111);
            v122 = v164;
            sub_20C137C94();
            v123 = swift_allocObject();
            v124 = v175;
            *(v123 + 16) = sub_20BA665E0;
            *(v123 + 24) = v124;
            v125 = swift_allocObject();
            *(v125 + 16) = sub_20BA66C80;
            *(v125 + 24) = v123;
            v126 = v165;
            v127 = v163;
            v128 = v139;
            (*(v165 + 16))(v163, v122, v139);
            v129 = (*(v126 + 80) + 16) & ~*(v126 + 80);
            v130 = (v162 + v129 + 7) & 0xFFFFFFFFFFFFFFF8;
            v131 = swift_allocObject();
            (*(v126 + 32))(v131 + v129, v127, v128);
            v132 = (v131 + v130);
            *v132 = sub_20B5F7764;
            v132[1] = v125;

            v133 = v138;
            sub_20C137C94();
            v134 = *(v126 + 8);
            v134(v122, v128);
            v135 = sub_20C137CB4();
            v136 = swift_allocObject();
            *(v136 + 16) = 0;
            *(v136 + 24) = 0;
            v135(sub_20B5DF6DC, v136);

            v134(v133, v128);
            (*(v117 + 8))(v171, v145);
            (*(v172 + 8))(v173, v141);
          }
        }
      }

      else
      {
      }
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_20BA388D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t (*)(), uint64_t, uint64_t, void *), void (*a8)(char *, uint64_t, uint64_t), unsigned __int8 a9, void (*a10)(uint64_t), uint64_t a11)
{
  v180 = a6;
  v181 = a8;
  v178 = a4;
  v179 = a5;
  v177 = a3;
  v184 = a2;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0, &unk_20C150360);
  v165 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v163 = &v137 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v164 = &v137 - v15;
  v162 = v16;
  MEMORY[0x28223BE20](v17);
  v19 = &v137 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766670, &unk_20C151580);
  MEMORY[0x28223BE20](v20 - 8);
  v170 = &v137 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BAB0, &unk_20C150570);
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v161 = &v137 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v160 = v24;
  MEMORY[0x28223BE20](v25);
  v171 = &v137 - v26;
  v168 = sub_20C1391C4();
  v167 = *(v168 - 8);
  MEMORY[0x28223BE20](v168);
  v169 = &v137 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_20C138A64();
  v172 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v173 = &v137 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766680, &unk_20C14F920);
  MEMORY[0x28223BE20](v30 - 8);
  v166 = &v137 - v31;
  v32 = sub_20C137C24();
  v175 = *(v32 - 8);
  v176 = v32;
  MEMORY[0x28223BE20](v32);
  v174 = v33;
  v182 = &v137 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_20C13C554();
  v35 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v37 = (&v137 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v183 = Strong;
    sub_20B51C88C(0, &qword_281100530, 0x277D85C78);
    *v37 = sub_20C13D374();
    (*(v35 + 104))(v37, *MEMORY[0x277D85200], v34);
    v39 = sub_20C13C584();
    (*(v35 + 8))(v37, v34);
    if (v39)
    {
      v40 = v183;
      v41 = &v183[OBJC_IVAR____TtC9SeymourUI18UpNextQueueRowCell_artworkView];
      [*&v183[OBJC_IVAR____TtC9SeymourUI18UpNextQueueRowCell_artworkView] setContentMode_];
      v42 = *v41;
      v43 = *(v41 + 1);
      LODWORD(v159) = a9;
      v44 = v184;
      if (sub_20BA640CC(v184, v42, v43, a9 & 1))
      {
        v144 = v23;
        v141 = v28;
        v145 = v22;
        v138 = v19;
        v139 = v12;
        v157 = a11;
        v158 = a10;
        v151 = *v41;
        v149 = *(v41 + 1);
        ObjectType = swift_getObjectType();
        v147 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v45 = v175;
        v46 = *(v175 + 16);
        v154 = a9 & 1;
        v148 = a7;
        v152 = v41;
        v47 = v182;
        v48 = v176;
        v155 = v175 + 16;
        v153 = v46;
        v46(v182, v44, v176);
        v49 = *(v45 + 80);
        v50 = (v49 + 24) & ~v49;
        v140 = v174 + 7;
        v51 = (v174 + 7 + v50) & 0xFFFFFFFFFFFFFFF8;
        v52 = (v51 + 23) & 0xFFFFFFFFFFFFFFF8;
        v53 = (v52 + 23) & 0xFFFFFFFFFFFFFFF8;
        v146 = (v53 + 15) & 0xFFFFFFFFFFFFFFF8;
        v156 = v49;
        v54 = swift_allocObject();
        *(v54 + 16) = v147;
        v143 = *(v45 + 32);
        v142 = v45 + 32;
        v143(v54 + v50, v47, v48);
        v55 = (v54 + v51);
        v56 = v178;
        *v55 = v177;
        v55[1] = v56;
        v57 = (v54 + v52);
        v58 = v180;
        *v57 = v179;
        v57[1] = v58;
        *(v54 + v53) = v148;
        v59 = v54 + v146;
        *v59 = v181;
        *(v59 + 8) = v154;
        v60 = (v54 + ((v53 + 31) & 0xFFFFFFFFFFFFFFF8));
        v61 = v158;
        v62 = v157;
        *v60 = v158;
        v60[1] = v62;
        v63 = v149;
        v148 = v149[19];

        sub_20B584050(v61, v62);
        v148(sub_20BA64E14, v54, ObjectType, v63);

        if (v159)
        {
          v64 = [objc_opt_self() mainScreen];
          [v64 scale];
          v66 = v65;

          v67 = sub_20C137BF4() / v66;
          v68 = sub_20C137C04() / v66;
          v69 = v152;
        }

        else
        {
          v69 = v152;
          [*v152 bounds];
          v67 = v70;
          v68 = v71;
        }

        v72 = v182;
        v73 = v153;
        if (v67 <= 0.0 || v68 <= 0.0)
        {
        }

        else
        {
          v159 = ~v156;
          v74 = v69[1];
          v75 = swift_getObjectType();
          v74[15](0, v75, v74);
          v76 = v69[1];
          v77 = swift_getObjectType();
          v78 = v166;
          v79 = v176;
          v73(v166, v184, v176);
          (*(v175 + 56))(v78, 0, 1, v79);
          v76[2](v78, v77, v76);
          v80 = *v69;
          sub_20B51C88C(0, &qword_27C762070, 0x277D75348);
          sub_20C137BC4();
          v81 = sub_20C13D5A4();
          [v80 setBackgroundColor_];

          v82 = v69[1];
          v83 = swift_getObjectType();
          v82[22](COERCE_DOUBLE(*&v67), COERCE_DOUBLE(*&v68), 0, v83, v82);
          v84 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v73(v72, v184, v79);
          v85 = (v156 + 16) & v159;
          v86 = v73;
          v87 = (v140 + v85) & 0xFFFFFFFFFFFFFFF8;
          v88 = (v87 + 15) & 0xFFFFFFFFFFFFFFF8;
          v89 = swift_allocObject();
          v143(v89 + v85, v72, v79);
          *(v89 + v87) = v84;
          v90 = (v89 + v88);
          v91 = v184;
          *v90 = v67;
          v90[1] = v68;
          v175 = v89;
          v92 = (v89 + ((v88 + 23) & 0xFFFFFFFFFFFFFFF8));
          v93 = v79;
          v94 = v158;
          v95 = v157;
          *v92 = v158;
          v92[1] = v95;
          v86(v72, v91, v79);
          (*(v167 + 104))(v169, *MEMORY[0x277D542A8], v168);

          sub_20B584050(v94, v95);
          v96 = v173;
          v97 = v144;
          v98 = v183;
          sub_20C138A54();
          v99 = v170;
          sub_20B5F18E8(v96, v170);
          v100 = v145;
          if ((*(v97 + 48))(v99, 1, v145) == 1)
          {
            sub_20B520158(v99, &unk_27C766670, &unk_20C151580);
            v101 = sub_20BA1DD44(&OBJC_IVAR____TtC9SeymourUI18UpNextQueueRowCell_artworkView);
            if (v158)
            {
              v158(v101);
            }

            else
            {
            }

            (*(v172 + 8))(v96, v141);
          }

          else
          {
            v102 = v93;
            v181 = *(v97 + 32);
            v103 = v171;
            v181(v171, v99, v100);
            v104 = swift_allocObject();
            swift_unknownObjectWeakInit();
            v153(v72, v91, v102);
            v105 = (v156 + 40) & v159;
            v106 = v105 + v174;
            v107 = (v105 + v174) & 0xFFFFFFFFFFFFFFF8;
            v108 = swift_allocObject();
            *(v108 + 16) = v104;
            *(v108 + 24) = v67;
            *(v108 + 32) = v68;
            v143(v108 + v105, v72, v102);
            *(v108 + v106) = v154;
            v109 = v108 + v107;
            v110 = v158;
            v111 = v157;
            *(v109 + 8) = v158;
            *(v109 + 16) = v111;
            v112 = swift_allocObject();
            *(v112 + 16) = sub_20BA64E60;
            *(v112 + 24) = v108;
            v113 = v144;
            v114 = v161;
            v115 = v103;
            v116 = v145;
            (*(v144 + 16))(v161, v115, v145);
            v117 = v113;
            v118 = (*(v113 + 80) + 16) & ~*(v113 + 80);
            v119 = (v160 + v118 + 7) & 0xFFFFFFFFFFFFFFF8;
            v120 = swift_allocObject();
            v181((v120 + v118), v114, v116);
            v121 = (v120 + v119);
            *v121 = sub_20B5F7760;
            v121[1] = v112;
            sub_20B584050(v110, v111);
            v122 = v164;
            sub_20C137C94();
            v123 = swift_allocObject();
            v124 = v175;
            *(v123 + 16) = sub_20BA64E2C;
            *(v123 + 24) = v124;
            v125 = swift_allocObject();
            *(v125 + 16) = sub_20BA66C80;
            *(v125 + 24) = v123;
            v126 = v165;
            v127 = v163;
            v128 = v139;
            (*(v165 + 16))(v163, v122, v139);
            v129 = (*(v126 + 80) + 16) & ~*(v126 + 80);
            v130 = (v162 + v129 + 7) & 0xFFFFFFFFFFFFFFF8;
            v131 = swift_allocObject();
            (*(v126 + 32))(v131 + v129, v127, v128);
            v132 = (v131 + v130);
            *v132 = sub_20B5F7764;
            v132[1] = v125;

            v133 = v138;
            sub_20C137C94();
            v134 = *(v126 + 8);
            v134(v122, v128);
            v135 = sub_20C137CB4();
            v136 = swift_allocObject();
            *(v136 + 16) = 0;
            *(v136 + 24) = 0;
            v135(sub_20B5DF6DC, v136);

            v134(v133, v128);
            (*(v117 + 8))(v171, v145);
            (*(v172 + 8))(v173, v141);
          }
        }
      }

      else
      {
      }
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_20BA3995C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t (*)(), uint64_t, uint64_t, void *), void (*a8)(char *, uint64_t, uint64_t), unsigned __int8 a9, void (*a10)(uint64_t), uint64_t a11)
{
  v180 = a6;
  v181 = a8;
  v178 = a4;
  v179 = a5;
  v177 = a3;
  v184 = a2;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0, &unk_20C150360);
  v165 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v163 = &v137 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v164 = &v137 - v15;
  v162 = v16;
  MEMORY[0x28223BE20](v17);
  v19 = &v137 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766670, &unk_20C151580);
  MEMORY[0x28223BE20](v20 - 8);
  v170 = &v137 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BAB0, &unk_20C150570);
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v161 = &v137 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v160 = v24;
  MEMORY[0x28223BE20](v25);
  v171 = &v137 - v26;
  v168 = sub_20C1391C4();
  v167 = *(v168 - 8);
  MEMORY[0x28223BE20](v168);
  v169 = &v137 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_20C138A64();
  v172 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v173 = &v137 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766680, &unk_20C14F920);
  MEMORY[0x28223BE20](v30 - 8);
  v166 = &v137 - v31;
  v32 = sub_20C137C24();
  v175 = *(v32 - 8);
  v176 = v32;
  MEMORY[0x28223BE20](v32);
  v174 = v33;
  v182 = &v137 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_20C13C554();
  v35 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v37 = (&v137 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v183 = Strong;
    sub_20B51C88C(0, &qword_281100530, 0x277D85C78);
    *v37 = sub_20C13D374();
    (*(v35 + 104))(v37, *MEMORY[0x277D85200], v34);
    v39 = sub_20C13C584();
    (*(v35 + 8))(v37, v34);
    if (v39)
    {
      v40 = v183;
      v41 = &v183[OBJC_IVAR____TtC9SeymourUI19ActionBrickItemCell_artworkView];
      [*&v183[OBJC_IVAR____TtC9SeymourUI19ActionBrickItemCell_artworkView] setContentMode_];
      v42 = *v41;
      v43 = *(v41 + 1);
      LODWORD(v159) = a9;
      v44 = v184;
      if (sub_20BA640CC(v184, v42, v43, a9 & 1))
      {
        v144 = v23;
        v141 = v28;
        v145 = v22;
        v138 = v19;
        v139 = v12;
        v157 = a11;
        v158 = a10;
        v151 = *v41;
        v149 = *(v41 + 1);
        ObjectType = swift_getObjectType();
        v147 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v45 = v175;
        v46 = *(v175 + 16);
        v154 = a9 & 1;
        v148 = a7;
        v152 = v41;
        v47 = v182;
        v48 = v176;
        v155 = v175 + 16;
        v153 = v46;
        v46(v182, v44, v176);
        v49 = *(v45 + 80);
        v50 = (v49 + 24) & ~v49;
        v140 = v174 + 7;
        v51 = (v174 + 7 + v50) & 0xFFFFFFFFFFFFFFF8;
        v52 = (v51 + 23) & 0xFFFFFFFFFFFFFFF8;
        v53 = (v52 + 23) & 0xFFFFFFFFFFFFFFF8;
        v146 = (v53 + 15) & 0xFFFFFFFFFFFFFFF8;
        v156 = v49;
        v54 = swift_allocObject();
        *(v54 + 16) = v147;
        v143 = *(v45 + 32);
        v142 = v45 + 32;
        v143(v54 + v50, v47, v48);
        v55 = (v54 + v51);
        v56 = v178;
        *v55 = v177;
        v55[1] = v56;
        v57 = (v54 + v52);
        v58 = v180;
        *v57 = v179;
        v57[1] = v58;
        *(v54 + v53) = v148;
        v59 = v54 + v146;
        *v59 = v181;
        *(v59 + 8) = v154;
        v60 = (v54 + ((v53 + 31) & 0xFFFFFFFFFFFFFFF8));
        v61 = v158;
        v62 = v157;
        *v60 = v158;
        v60[1] = v62;
        v63 = v149;
        v148 = v149[19];

        sub_20B584050(v61, v62);
        v148(sub_20BA64A3C, v54, ObjectType, v63);

        if (v159)
        {
          v64 = [objc_opt_self() mainScreen];
          [v64 scale];
          v66 = v65;

          v67 = sub_20C137BF4() / v66;
          v68 = sub_20C137C04() / v66;
          v69 = v152;
        }

        else
        {
          v69 = v152;
          [*v152 bounds];
          v67 = v70;
          v68 = v71;
        }

        v72 = v182;
        v73 = v153;
        if (v67 <= 0.0 || v68 <= 0.0)
        {
        }

        else
        {
          v159 = ~v156;
          v74 = v69[1];
          v75 = swift_getObjectType();
          v74[15](0, v75, v74);
          v76 = v69[1];
          v77 = swift_getObjectType();
          v78 = v166;
          v79 = v176;
          v73(v166, v184, v176);
          (*(v175 + 56))(v78, 0, 1, v79);
          v76[2](v78, v77, v76);
          v80 = *v69;
          sub_20B51C88C(0, &qword_27C762070, 0x277D75348);
          sub_20C137BC4();
          v81 = sub_20C13D5A4();
          [v80 setBackgroundColor_];

          v82 = v69[1];
          v83 = swift_getObjectType();
          v82[22](COERCE_DOUBLE(*&v67), COERCE_DOUBLE(*&v68), 0, v83, v82);
          v84 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v73(v72, v184, v79);
          v85 = (v156 + 16) & v159;
          v86 = v73;
          v87 = (v140 + v85) & 0xFFFFFFFFFFFFFFF8;
          v88 = (v87 + 15) & 0xFFFFFFFFFFFFFFF8;
          v89 = swift_allocObject();
          v143(v89 + v85, v72, v79);
          *(v89 + v87) = v84;
          v90 = (v89 + v88);
          v91 = v184;
          *v90 = v67;
          v90[1] = v68;
          v175 = v89;
          v92 = (v89 + ((v88 + 23) & 0xFFFFFFFFFFFFFFF8));
          v93 = v79;
          v94 = v158;
          v95 = v157;
          *v92 = v158;
          v92[1] = v95;
          v86(v72, v91, v79);
          (*(v167 + 104))(v169, *MEMORY[0x277D542A8], v168);

          sub_20B584050(v94, v95);
          v96 = v173;
          v97 = v144;
          v98 = v183;
          sub_20C138A54();
          v99 = v170;
          sub_20B5F1910(v96, v170);
          v100 = v145;
          if ((*(v97 + 48))(v99, 1, v145) == 1)
          {
            sub_20B520158(v99, &unk_27C766670, &unk_20C151580);
            v101 = sub_20BA1DD44(&OBJC_IVAR____TtC9SeymourUI19ActionBrickItemCell_artworkView);
            if (v158)
            {
              v158(v101);
            }

            else
            {
            }

            (*(v172 + 8))(v96, v141);
          }

          else
          {
            v102 = v93;
            v181 = *(v97 + 32);
            v103 = v171;
            v181(v171, v99, v100);
            v104 = swift_allocObject();
            swift_unknownObjectWeakInit();
            v153(v72, v91, v102);
            v105 = (v156 + 40) & v159;
            v106 = v105 + v174;
            v107 = (v105 + v174) & 0xFFFFFFFFFFFFFFF8;
            v108 = swift_allocObject();
            *(v108 + 16) = v104;
            *(v108 + 24) = v67;
            *(v108 + 32) = v68;
            v143(v108 + v105, v72, v102);
            *(v108 + v106) = v154;
            v109 = v108 + v107;
            v110 = v158;
            v111 = v157;
            *(v109 + 8) = v158;
            *(v109 + 16) = v111;
            v112 = swift_allocObject();
            *(v112 + 16) = sub_20BA64A88;
            *(v112 + 24) = v108;
            v113 = v144;
            v114 = v161;
            v115 = v103;
            v116 = v145;
            (*(v144 + 16))(v161, v115, v145);
            v117 = v113;
            v118 = (*(v113 + 80) + 16) & ~*(v113 + 80);
            v119 = (v160 + v118 + 7) & 0xFFFFFFFFFFFFFFF8;
            v120 = swift_allocObject();
            v181((v120 + v118), v114, v116);
            v121 = (v120 + v119);
            *v121 = sub_20B5F7760;
            v121[1] = v112;
            sub_20B584050(v110, v111);
            v122 = v164;
            sub_20C137C94();
            v123 = swift_allocObject();
            v124 = v175;
            *(v123 + 16) = sub_20BA64A54;
            *(v123 + 24) = v124;
            v125 = swift_allocObject();
            *(v125 + 16) = sub_20BA66C80;
            *(v125 + 24) = v123;
            v126 = v165;
            v127 = v163;
            v128 = v139;
            (*(v165 + 16))(v163, v122, v139);
            v129 = (*(v126 + 80) + 16) & ~*(v126 + 80);
            v130 = (v162 + v129 + 7) & 0xFFFFFFFFFFFFFFF8;
            v131 = swift_allocObject();
            (*(v126 + 32))(v131 + v129, v127, v128);
            v132 = (v131 + v130);
            *v132 = sub_20B5F7764;
            v132[1] = v125;

            v133 = v138;
            sub_20C137C94();
            v134 = *(v126 + 8);
            v134(v122, v128);
            v135 = sub_20C137CB4();
            v136 = swift_allocObject();
            *(v136 + 16) = 0;
            *(v136 + 24) = 0;
            v135(sub_20B5DF6DC, v136);

            v134(v133, v128);
            (*(v117 + 8))(v171, v145);
            (*(v172 + 8))(v173, v141);
          }
        }
      }

      else
      {
      }
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_20BA3A9E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t (*)(), uint64_t, uint64_t, void *), void (*a8)(char *, uint64_t, uint64_t), unsigned __int8 a9, void (*a10)(uint64_t), uint64_t a11)
{
  v180 = a6;
  v181 = a8;
  v178 = a4;
  v179 = a5;
  v177 = a3;
  v184 = a2;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0, &unk_20C150360);
  v165 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v163 = &v137 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v164 = &v137 - v15;
  v162 = v16;
  MEMORY[0x28223BE20](v17);
  v19 = &v137 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766670, &unk_20C151580);
  MEMORY[0x28223BE20](v20 - 8);
  v170 = &v137 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BAB0, &unk_20C150570);
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v161 = &v137 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v160 = v24;
  MEMORY[0x28223BE20](v25);
  v171 = &v137 - v26;
  v168 = sub_20C1391C4();
  v167 = *(v168 - 8);
  MEMORY[0x28223BE20](v168);
  v169 = &v137 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_20C138A64();
  v172 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v173 = &v137 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766680, &unk_20C14F920);
  MEMORY[0x28223BE20](v30 - 8);
  v166 = &v137 - v31;
  v32 = sub_20C137C24();
  v175 = *(v32 - 8);
  v176 = v32;
  MEMORY[0x28223BE20](v32);
  v174 = v33;
  v182 = &v137 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_20C13C554();
  v35 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v37 = (&v137 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v183 = Strong;
    sub_20B51C88C(0, &qword_281100530, 0x277D85C78);
    *v37 = sub_20C13D374();
    (*(v35 + 104))(v37, *MEMORY[0x277D85200], v34);
    v39 = sub_20C13C584();
    (*(v35 + 8))(v37, v34);
    if (v39)
    {
      v40 = v183;
      v41 = &v183[OBJC_IVAR____TtC9SeymourUI19ProgramBrickRowCell_artworkView];
      [*&v183[OBJC_IVAR____TtC9SeymourUI19ProgramBrickRowCell_artworkView] setContentMode_];
      v42 = *v41;
      v43 = *(v41 + 1);
      LODWORD(v159) = a9;
      v44 = v184;
      if (sub_20BA640CC(v184, v42, v43, a9 & 1))
      {
        v144 = v23;
        v141 = v28;
        v145 = v22;
        v138 = v19;
        v139 = v12;
        v157 = a11;
        v158 = a10;
        v151 = *v41;
        v149 = *(v41 + 1);
        ObjectType = swift_getObjectType();
        v147 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v45 = v175;
        v46 = *(v175 + 16);
        v154 = a9 & 1;
        v148 = a7;
        v152 = v41;
        v47 = v182;
        v48 = v176;
        v155 = v175 + 16;
        v153 = v46;
        v46(v182, v44, v176);
        v49 = *(v45 + 80);
        v50 = (v49 + 24) & ~v49;
        v140 = v174 + 7;
        v51 = (v174 + 7 + v50) & 0xFFFFFFFFFFFFFFF8;
        v52 = (v51 + 23) & 0xFFFFFFFFFFFFFFF8;
        v53 = (v52 + 23) & 0xFFFFFFFFFFFFFFF8;
        v146 = (v53 + 15) & 0xFFFFFFFFFFFFFFF8;
        v156 = v49;
        v54 = swift_allocObject();
        *(v54 + 16) = v147;
        v143 = *(v45 + 32);
        v142 = v45 + 32;
        v143(v54 + v50, v47, v48);
        v55 = (v54 + v51);
        v56 = v178;
        *v55 = v177;
        v55[1] = v56;
        v57 = (v54 + v52);
        v58 = v180;
        *v57 = v179;
        v57[1] = v58;
        *(v54 + v53) = v148;
        v59 = v54 + v146;
        *v59 = v181;
        *(v59 + 8) = v154;
        v60 = (v54 + ((v53 + 31) & 0xFFFFFFFFFFFFFFF8));
        v61 = v158;
        v62 = v157;
        *v60 = v158;
        v60[1] = v62;
        v63 = v149;
        v148 = v149[19];

        sub_20B584050(v61, v62);
        v148(sub_20BA65B88, v54, ObjectType, v63);

        if (v159)
        {
          v64 = [objc_opt_self() mainScreen];
          [v64 scale];
          v66 = v65;

          v67 = sub_20C137BF4() / v66;
          v68 = sub_20C137C04() / v66;
          v69 = v152;
        }

        else
        {
          v69 = v152;
          [*v152 bounds];
          v67 = v70;
          v68 = v71;
        }

        v72 = v182;
        v73 = v153;
        if (v67 <= 0.0 || v68 <= 0.0)
        {
        }

        else
        {
          v159 = ~v156;
          v74 = v69[1];
          v75 = swift_getObjectType();
          v74[15](0, v75, v74);
          v76 = v69[1];
          v77 = swift_getObjectType();
          v78 = v166;
          v79 = v176;
          v73(v166, v184, v176);
          (*(v175 + 56))(v78, 0, 1, v79);
          v76[2](v78, v77, v76);
          v80 = *v69;
          sub_20B51C88C(0, &qword_27C762070, 0x277D75348);
          sub_20C137BC4();
          v81 = sub_20C13D5A4();
          [v80 setBackgroundColor_];

          v82 = v69[1];
          v83 = swift_getObjectType();
          v82[22](COERCE_DOUBLE(*&v67), COERCE_DOUBLE(*&v68), 0, v83, v82);
          v84 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v73(v72, v184, v79);
          v85 = (v156 + 16) & v159;
          v86 = v73;
          v87 = (v140 + v85) & 0xFFFFFFFFFFFFFFF8;
          v88 = (v87 + 15) & 0xFFFFFFFFFFFFFFF8;
          v89 = swift_allocObject();
          v143(v89 + v85, v72, v79);
          *(v89 + v87) = v84;
          v90 = (v89 + v88);
          v91 = v184;
          *v90 = v67;
          v90[1] = v68;
          v175 = v89;
          v92 = (v89 + ((v88 + 23) & 0xFFFFFFFFFFFFFFF8));
          v93 = v79;
          v94 = v158;
          v95 = v157;
          *v92 = v158;
          v92[1] = v95;
          v86(v72, v91, v79);
          (*(v167 + 104))(v169, *MEMORY[0x277D542A8], v168);

          sub_20B584050(v94, v95);
          v96 = v173;
          v97 = v144;
          v98 = v183;
          sub_20C138A54();
          v99 = v170;
          sub_20B5F1938(v96, v170);
          v100 = v145;
          if ((*(v97 + 48))(v99, 1, v145) == 1)
          {
            sub_20B520158(v99, &unk_27C766670, &unk_20C151580);
            v101 = sub_20BA1DD44(&OBJC_IVAR____TtC9SeymourUI19ProgramBrickRowCell_artworkView);
            if (v158)
            {
              v158(v101);
            }

            else
            {
            }

            (*(v172 + 8))(v96, v141);
          }

          else
          {
            v102 = v93;
            v181 = *(v97 + 32);
            v103 = v171;
            v181(v171, v99, v100);
            v104 = swift_allocObject();
            swift_unknownObjectWeakInit();
            v153(v72, v91, v102);
            v105 = (v156 + 40) & v159;
            v106 = v105 + v174;
            v107 = (v105 + v174) & 0xFFFFFFFFFFFFFFF8;
            v108 = swift_allocObject();
            *(v108 + 16) = v104;
            *(v108 + 24) = v67;
            *(v108 + 32) = v68;
            v143(v108 + v105, v72, v102);
            *(v108 + v106) = v154;
            v109 = v108 + v107;
            v110 = v158;
            v111 = v157;
            *(v109 + 8) = v158;
            *(v109 + 16) = v111;
            v112 = swift_allocObject();
            *(v112 + 16) = sub_20BA65BD4;
            *(v112 + 24) = v108;
            v113 = v144;
            v114 = v161;
            v115 = v103;
            v116 = v145;
            (*(v144 + 16))(v161, v115, v145);
            v117 = v113;
            v118 = (*(v113 + 80) + 16) & ~*(v113 + 80);
            v119 = (v160 + v118 + 7) & 0xFFFFFFFFFFFFFFF8;
            v120 = swift_allocObject();
            v181((v120 + v118), v114, v116);
            v121 = (v120 + v119);
            *v121 = sub_20B5F7760;
            v121[1] = v112;
            sub_20B584050(v110, v111);
            v122 = v164;
            sub_20C137C94();
            v123 = swift_allocObject();
            v124 = v175;
            *(v123 + 16) = sub_20BA65BA0;
            *(v123 + 24) = v124;
            v125 = swift_allocObject();
            *(v125 + 16) = sub_20BA66C80;
            *(v125 + 24) = v123;
            v126 = v165;
            v127 = v163;
            v128 = v139;
            (*(v165 + 16))(v163, v122, v139);
            v129 = (*(v126 + 80) + 16) & ~*(v126 + 80);
            v130 = (v162 + v129 + 7) & 0xFFFFFFFFFFFFFFF8;
            v131 = swift_allocObject();
            (*(v126 + 32))(v131 + v129, v127, v128);
            v132 = (v131 + v130);
            *v132 = sub_20B5F7764;
            v132[1] = v125;

            v133 = v138;
            sub_20C137C94();
            v134 = *(v126 + 8);
            v134(v122, v128);
            v135 = sub_20C137CB4();
            v136 = swift_allocObject();
            *(v136 + 16) = 0;
            *(v136 + 24) = 0;
            v135(sub_20B5DF6DC, v136);

            v134(v133, v128);
            (*(v117 + 8))(v171, v145);
            (*(v172 + 8))(v173, v141);
          }
        }
      }

      else
      {
      }
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_20BA3BA6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t (*)(), uint64_t, uint64_t, void *), void (*a8)(char *, uint64_t, uint64_t), unsigned __int8 a9, void (*a10)(uint64_t), uint64_t a11)
{
  v180 = a6;
  v181 = a8;
  v178 = a4;
  v179 = a5;
  v177 = a3;
  v184 = a2;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0, &unk_20C150360);
  v165 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v163 = &v137 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v164 = &v137 - v15;
  v162 = v16;
  MEMORY[0x28223BE20](v17);
  v19 = &v137 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766670, &unk_20C151580);
  MEMORY[0x28223BE20](v20 - 8);
  v170 = &v137 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BAB0, &unk_20C150570);
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v161 = &v137 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v160 = v24;
  MEMORY[0x28223BE20](v25);
  v171 = &v137 - v26;
  v168 = sub_20C1391C4();
  v167 = *(v168 - 8);
  MEMORY[0x28223BE20](v168);
  v169 = &v137 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_20C138A64();
  v172 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v173 = &v137 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766680, &unk_20C14F920);
  MEMORY[0x28223BE20](v30 - 8);
  v166 = &v137 - v31;
  v32 = sub_20C137C24();
  v175 = *(v32 - 8);
  v176 = v32;
  MEMORY[0x28223BE20](v32);
  v174 = v33;
  v182 = &v137 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_20C13C554();
  v35 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v37 = (&v137 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v183 = Strong;
    sub_20B51C88C(0, &qword_281100530, 0x277D85C78);
    *v37 = sub_20C13D374();
    (*(v35 + 104))(v37, *MEMORY[0x277D85200], v34);
    v39 = sub_20C13C584();
    (*(v35 + 8))(v37, v34);
    if (v39)
    {
      v40 = v183;
      v41 = &v183[OBJC_IVAR____TtC9SeymourUI20DynamicBrickItemCell_artworkView];
      [*&v183[OBJC_IVAR____TtC9SeymourUI20DynamicBrickItemCell_artworkView] setContentMode_];
      v42 = *v41;
      v43 = *(v41 + 1);
      LODWORD(v159) = a9;
      v44 = v184;
      if (sub_20BA640CC(v184, v42, v43, a9 & 1))
      {
        v144 = v23;
        v141 = v28;
        v145 = v22;
        v138 = v19;
        v139 = v12;
        v157 = a11;
        v158 = a10;
        v151 = *v41;
        v149 = *(v41 + 1);
        ObjectType = swift_getObjectType();
        v147 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v45 = v175;
        v46 = *(v175 + 16);
        v154 = a9 & 1;
        v148 = a7;
        v152 = v41;
        v47 = v182;
        v48 = v176;
        v155 = v175 + 16;
        v153 = v46;
        v46(v182, v44, v176);
        v49 = *(v45 + 80);
        v50 = (v49 + 24) & ~v49;
        v140 = v174 + 7;
        v51 = (v174 + 7 + v50) & 0xFFFFFFFFFFFFFFF8;
        v52 = (v51 + 23) & 0xFFFFFFFFFFFFFFF8;
        v53 = (v52 + 23) & 0xFFFFFFFFFFFFFFF8;
        v146 = (v53 + 15) & 0xFFFFFFFFFFFFFFF8;
        v156 = v49;
        v54 = swift_allocObject();
        *(v54 + 16) = v147;
        v143 = *(v45 + 32);
        v142 = v45 + 32;
        v143(v54 + v50, v47, v48);
        v55 = (v54 + v51);
        v56 = v178;
        *v55 = v177;
        v55[1] = v56;
        v57 = (v54 + v52);
        v58 = v180;
        *v57 = v179;
        v57[1] = v58;
        *(v54 + v53) = v148;
        v59 = v54 + v146;
        *v59 = v181;
        *(v59 + 8) = v154;
        v60 = (v54 + ((v53 + 31) & 0xFFFFFFFFFFFFFFF8));
        v61 = v158;
        v62 = v157;
        *v60 = v158;
        v60[1] = v62;
        v63 = v149;
        v148 = v149[19];

        sub_20B584050(v61, v62);
        v148(sub_20BA65EBC, v54, ObjectType, v63);

        if (v159)
        {
          v64 = [objc_opt_self() mainScreen];
          [v64 scale];
          v66 = v65;

          v67 = sub_20C137BF4() / v66;
          v68 = sub_20C137C04() / v66;
          v69 = v152;
        }

        else
        {
          v69 = v152;
          [*v152 bounds];
          v67 = v70;
          v68 = v71;
        }

        v72 = v182;
        v73 = v153;
        if (v67 <= 0.0 || v68 <= 0.0)
        {
        }

        else
        {
          v159 = ~v156;
          v74 = v69[1];
          v75 = swift_getObjectType();
          v74[15](0, v75, v74);
          v76 = v69[1];
          v77 = swift_getObjectType();
          v78 = v166;
          v79 = v176;
          v73(v166, v184, v176);
          (*(v175 + 56))(v78, 0, 1, v79);
          v76[2](v78, v77, v76);
          v80 = *v69;
          sub_20B51C88C(0, &qword_27C762070, 0x277D75348);
          sub_20C137BC4();
          v81 = sub_20C13D5A4();
          [v80 setBackgroundColor_];

          v82 = v69[1];
          v83 = swift_getObjectType();
          v82[22](COERCE_DOUBLE(*&v67), COERCE_DOUBLE(*&v68), 0, v83, v82);
          v84 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v73(v72, v184, v79);
          v85 = (v156 + 16) & v159;
          v86 = v73;
          v87 = (v140 + v85) & 0xFFFFFFFFFFFFFFF8;
          v88 = (v87 + 15) & 0xFFFFFFFFFFFFFFF8;
          v89 = swift_allocObject();
          v143(v89 + v85, v72, v79);
          *(v89 + v87) = v84;
          v90 = (v89 + v88);
          v91 = v184;
          *v90 = v67;
          v90[1] = v68;
          v175 = v89;
          v92 = (v89 + ((v88 + 23) & 0xFFFFFFFFFFFFFFF8));
          v93 = v79;
          v94 = v158;
          v95 = v157;
          *v92 = v158;
          v92[1] = v95;
          v86(v72, v91, v79);
          (*(v167 + 104))(v169, *MEMORY[0x277D542A8], v168);

          sub_20B584050(v94, v95);
          v96 = v173;
          v97 = v144;
          v98 = v183;
          sub_20C138A54();
          v99 = v170;
          sub_20B5F1960(v96, v170);
          v100 = v145;
          if ((*(v97 + 48))(v99, 1, v145) == 1)
          {
            sub_20B520158(v99, &unk_27C766670, &unk_20C151580);
            v101 = sub_20BA1DD44(&OBJC_IVAR____TtC9SeymourUI20DynamicBrickItemCell_artworkView);
            if (v158)
            {
              v158(v101);
            }

            else
            {
            }

            (*(v172 + 8))(v96, v141);
          }

          else
          {
            v102 = v93;
            v181 = *(v97 + 32);
            v103 = v171;
            v181(v171, v99, v100);
            v104 = swift_allocObject();
            swift_unknownObjectWeakInit();
            v153(v72, v91, v102);
            v105 = (v156 + 40) & v159;
            v106 = v105 + v174;
            v107 = (v105 + v174) & 0xFFFFFFFFFFFFFFF8;
            v108 = swift_allocObject();
            *(v108 + 16) = v104;
            *(v108 + 24) = v67;
            *(v108 + 32) = v68;
            v143(v108 + v105, v72, v102);
            *(v108 + v106) = v154;
            v109 = v108 + v107;
            v110 = v158;
            v111 = v157;
            *(v109 + 8) = v158;
            *(v109 + 16) = v111;
            v112 = swift_allocObject();
            *(v112 + 16) = sub_20BA65F08;
            *(v112 + 24) = v108;
            v113 = v144;
            v114 = v161;
            v115 = v103;
            v116 = v145;
            (*(v144 + 16))(v161, v115, v145);
            v117 = v113;
            v118 = (*(v113 + 80) + 16) & ~*(v113 + 80);
            v119 = (v160 + v118 + 7) & 0xFFFFFFFFFFFFFFF8;
            v120 = swift_allocObject();
            v181((v120 + v118), v114, v116);
            v121 = (v120 + v119);
            *v121 = sub_20B5F7760;
            v121[1] = v112;
            sub_20B584050(v110, v111);
            v122 = v164;
            sub_20C137C94();
            v123 = swift_allocObject();
            v124 = v175;
            *(v123 + 16) = sub_20BA65ED4;
            *(v123 + 24) = v124;
            v125 = swift_allocObject();
            *(v125 + 16) = sub_20BA66C80;
            *(v125 + 24) = v123;
            v126 = v165;
            v127 = v163;
            v128 = v139;
            (*(v165 + 16))(v163, v122, v139);
            v129 = (*(v126 + 80) + 16) & ~*(v126 + 80);
            v130 = (v162 + v129 + 7) & 0xFFFFFFFFFFFFFFF8;
            v131 = swift_allocObject();
            (*(v126 + 32))(v131 + v129, v127, v128);
            v132 = (v131 + v130);
            *v132 = sub_20B5F7764;
            v132[1] = v125;

            v133 = v138;
            sub_20C137C94();
            v134 = *(v126 + 8);
            v134(v122, v128);
            v135 = sub_20C137CB4();
            v136 = swift_allocObject();
            *(v136 + 16) = 0;
            *(v136 + 24) = 0;
            v135(sub_20B5DF6DC, v136);

            v134(v133, v128);
            (*(v117 + 8))(v171, v145);
            (*(v172 + 8))(v173, v141);
          }
        }
      }

      else
      {
      }
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_20BA3CAF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t (*)(), uint64_t, uint64_t, void *), void (*a8)(char *, uint64_t, uint64_t), unsigned __int8 a9, void (*a10)(uint64_t), uint64_t a11)
{
  v180 = a6;
  v181 = a8;
  v178 = a4;
  v179 = a5;
  v177 = a3;
  v184 = a2;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0, &unk_20C150360);
  v165 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v163 = &v137 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v164 = &v137 - v15;
  v162 = v16;
  MEMORY[0x28223BE20](v17);
  v19 = &v137 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766670, &unk_20C151580);
  MEMORY[0x28223BE20](v20 - 8);
  v170 = &v137 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BAB0, &unk_20C150570);
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v161 = &v137 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v160 = v24;
  MEMORY[0x28223BE20](v25);
  v171 = &v137 - v26;
  v168 = sub_20C1391C4();
  v167 = *(v168 - 8);
  MEMORY[0x28223BE20](v168);
  v169 = &v137 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_20C138A64();
  v172 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v173 = &v137 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766680, &unk_20C14F920);
  MEMORY[0x28223BE20](v30 - 8);
  v166 = &v137 - v31;
  v32 = sub_20C137C24();
  v175 = *(v32 - 8);
  v176 = v32;
  MEMORY[0x28223BE20](v32);
  v174 = v33;
  v182 = &v137 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_20C13C554();
  v35 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v37 = (&v137 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v183 = Strong;
    sub_20B51C88C(0, &qword_281100530, 0x277D85C78);
    *v37 = sub_20C13D374();
    (*(v35 + 104))(v37, *MEMORY[0x277D85200], v34);
    v39 = sub_20C13C584();
    (*(v35 + 8))(v37, v34);
    if (v39)
    {
      v40 = v183;
      v41 = &v183[OBJC_IVAR____TtC9SeymourUI20GroupedBrickItemCell_artworkView];
      [*&v183[OBJC_IVAR____TtC9SeymourUI20GroupedBrickItemCell_artworkView] setContentMode_];
      v42 = *v41;
      v43 = *(v41 + 1);
      LODWORD(v159) = a9;
      v44 = v184;
      if (sub_20BA640CC(v184, v42, v43, a9 & 1))
      {
        v144 = v23;
        v141 = v28;
        v145 = v22;
        v138 = v19;
        v139 = v12;
        v157 = a11;
        v158 = a10;
        v151 = *v41;
        v149 = *(v41 + 1);
        ObjectType = swift_getObjectType();
        v147 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v45 = v175;
        v46 = *(v175 + 16);
        v154 = a9 & 1;
        v148 = a7;
        v152 = v41;
        v47 = v182;
        v48 = v176;
        v155 = v175 + 16;
        v153 = v46;
        v46(v182, v44, v176);
        v49 = *(v45 + 80);
        v50 = (v49 + 24) & ~v49;
        v140 = v174 + 7;
        v51 = (v174 + 7 + v50) & 0xFFFFFFFFFFFFFFF8;
        v52 = (v51 + 23) & 0xFFFFFFFFFFFFFFF8;
        v53 = (v52 + 23) & 0xFFFFFFFFFFFFFFF8;
        v146 = (v53 + 15) & 0xFFFFFFFFFFFFFFF8;
        v156 = v49;
        v54 = swift_allocObject();
        *(v54 + 16) = v147;
        v143 = *(v45 + 32);
        v142 = v45 + 32;
        v143(v54 + v50, v47, v48);
        v55 = (v54 + v51);
        v56 = v178;
        *v55 = v177;
        v55[1] = v56;
        v57 = (v54 + v52);
        v58 = v180;
        *v57 = v179;
        v57[1] = v58;
        *(v54 + v53) = v148;
        v59 = v54 + v146;
        *v59 = v181;
        *(v59 + 8) = v154;
        v60 = (v54 + ((v53 + 31) & 0xFFFFFFFFFFFFFFF8));
        v61 = v158;
        v62 = v157;
        *v60 = v158;
        v60[1] = v62;
        v63 = v149;
        v148 = v149[19];

        sub_20B584050(v61, v62);
        v148(sub_20BA66004, v54, ObjectType, v63);

        if (v159)
        {
          v64 = [objc_opt_self() mainScreen];
          [v64 scale];
          v66 = v65;

          v67 = sub_20C137BF4() / v66;
          v68 = sub_20C137C04() / v66;
          v69 = v152;
        }

        else
        {
          v69 = v152;
          [*v152 bounds];
          v67 = v70;
          v68 = v71;
        }

        v72 = v182;
        v73 = v153;
        if (v67 <= 0.0 || v68 <= 0.0)
        {
        }

        else
        {
          v159 = ~v156;
          v74 = v69[1];
          v75 = swift_getObjectType();
          v74[15](0, v75, v74);
          v76 = v69[1];
          v77 = swift_getObjectType();
          v78 = v166;
          v79 = v176;
          v73(v166, v184, v176);
          (*(v175 + 56))(v78, 0, 1, v79);
          v76[2](v78, v77, v76);
          v80 = *v69;
          sub_20B51C88C(0, &qword_27C762070, 0x277D75348);
          sub_20C137BC4();
          v81 = sub_20C13D5A4();
          [v80 setBackgroundColor_];

          v82 = v69[1];
          v83 = swift_getObjectType();
          v82[22](COERCE_DOUBLE(*&v67), COERCE_DOUBLE(*&v68), 0, v83, v82);
          v84 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v73(v72, v184, v79);
          v85 = (v156 + 16) & v159;
          v86 = v73;
          v87 = (v140 + v85) & 0xFFFFFFFFFFFFFFF8;
          v88 = (v87 + 15) & 0xFFFFFFFFFFFFFFF8;
          v89 = swift_allocObject();
          v143(v89 + v85, v72, v79);
          *(v89 + v87) = v84;
          v90 = (v89 + v88);
          v91 = v184;
          *v90 = v67;
          v90[1] = v68;
          v175 = v89;
          v92 = (v89 + ((v88 + 23) & 0xFFFFFFFFFFFFFFF8));
          v93 = v79;
          v94 = v158;
          v95 = v157;
          *v92 = v158;
          v92[1] = v95;
          v86(v72, v91, v79);
          (*(v167 + 104))(v169, *MEMORY[0x277D542A8], v168);

          sub_20B584050(v94, v95);
          v96 = v173;
          v97 = v144;
          v98 = v183;
          sub_20C138A54();
          v99 = v170;
          sub_20B5F1988(v96, v170);
          v100 = v145;
          if ((*(v97 + 48))(v99, 1, v145) == 1)
          {
            sub_20B520158(v99, &unk_27C766670, &unk_20C151580);
            v101 = sub_20BA1DD44(&OBJC_IVAR____TtC9SeymourUI20GroupedBrickItemCell_artworkView);
            if (v158)
            {
              v158(v101);
            }

            else
            {
            }

            (*(v172 + 8))(v96, v141);
          }

          else
          {
            v102 = v93;
            v181 = *(v97 + 32);
            v103 = v171;
            v181(v171, v99, v100);
            v104 = swift_allocObject();
            swift_unknownObjectWeakInit();
            v153(v72, v91, v102);
            v105 = (v156 + 40) & v159;
            v106 = v105 + v174;
            v107 = (v105 + v174) & 0xFFFFFFFFFFFFFFF8;
            v108 = swift_allocObject();
            *(v108 + 16) = v104;
            *(v108 + 24) = v67;
            *(v108 + 32) = v68;
            v143(v108 + v105, v72, v102);
            *(v108 + v106) = v154;
            v109 = v108 + v107;
            v110 = v158;
            v111 = v157;
            *(v109 + 8) = v158;
            *(v109 + 16) = v111;
            v112 = swift_allocObject();
            *(v112 + 16) = sub_20BA66050;
            *(v112 + 24) = v108;
            v113 = v144;
            v114 = v161;
            v115 = v103;
            v116 = v145;
            (*(v144 + 16))(v161, v115, v145);
            v117 = v113;
            v118 = (*(v113 + 80) + 16) & ~*(v113 + 80);
            v119 = (v160 + v118 + 7) & 0xFFFFFFFFFFFFFFF8;
            v120 = swift_allocObject();
            v181((v120 + v118), v114, v116);
            v121 = (v120 + v119);
            *v121 = sub_20B5F7760;
            v121[1] = v112;
            sub_20B584050(v110, v111);
            v122 = v164;
            sub_20C137C94();
            v123 = swift_allocObject();
            v124 = v175;
            *(v123 + 16) = sub_20BA6601C;
            *(v123 + 24) = v124;
            v125 = swift_allocObject();
            *(v125 + 16) = sub_20BA66C80;
            *(v125 + 24) = v123;
            v126 = v165;
            v127 = v163;
            v128 = v139;
            (*(v165 + 16))(v163, v122, v139);
            v129 = (*(v126 + 80) + 16) & ~*(v126 + 80);
            v130 = (v162 + v129 + 7) & 0xFFFFFFFFFFFFFFF8;
            v131 = swift_allocObject();
            (*(v126 + 32))(v131 + v129, v127, v128);
            v132 = (v131 + v130);
            *v132 = sub_20B5F7764;
            v132[1] = v125;

            v133 = v138;
            sub_20C137C94();
            v134 = *(v126 + 8);
            v134(v122, v128);
            v135 = sub_20C137CB4();
            v136 = swift_allocObject();
            *(v136 + 16) = 0;
            *(v136 + 24) = 0;
            v135(sub_20B5DF6DC, v136);

            v134(v133, v128);
            (*(v117 + 8))(v171, v145);
            (*(v172 + 8))(v173, v141);
          }
        }
      }

      else
      {
      }
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_20BA3DB7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t (*)(), uint64_t, uint64_t, void *), void (*a8)(char *, uint64_t, uint64_t), unsigned __int8 a9, void (*a10)(uint64_t), uint64_t a11)
{
  v180 = a6;
  v181 = a8;
  v178 = a4;
  v179 = a5;
  v177 = a3;
  v184 = a2;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0, &unk_20C150360);
  v165 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v163 = &v137 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v164 = &v137 - v15;
  v162 = v16;
  MEMORY[0x28223BE20](v17);
  v19 = &v137 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766670, &unk_20C151580);
  MEMORY[0x28223BE20](v20 - 8);
  v170 = &v137 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BAB0, &unk_20C150570);
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v161 = &v137 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v160 = v24;
  MEMORY[0x28223BE20](v25);
  v171 = &v137 - v26;
  v168 = sub_20C1391C4();
  v167 = *(v168 - 8);
  MEMORY[0x28223BE20](v168);
  v169 = &v137 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_20C138A64();
  v172 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v173 = &v137 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766680, &unk_20C14F920);
  MEMORY[0x28223BE20](v30 - 8);
  v166 = &v137 - v31;
  v32 = sub_20C137C24();
  v175 = *(v32 - 8);
  v176 = v32;
  MEMORY[0x28223BE20](v32);
  v174 = v33;
  v182 = &v137 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_20C13C554();
  v35 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v37 = (&v137 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v183 = Strong;
    sub_20B51C88C(0, &qword_281100530, 0x277D85C78);
    *v37 = sub_20C13D374();
    (*(v35 + 104))(v37, *MEMORY[0x277D85200], v34);
    v39 = sub_20C13C584();
    (*(v35 + 8))(v37, v34);
    if (v39)
    {
      v40 = v183;
      v41 = &v183[OBJC_IVAR____TtC9SeymourUI20PreferredTrainerCell_artworkView];
      [*&v183[OBJC_IVAR____TtC9SeymourUI20PreferredTrainerCell_artworkView] setContentMode_];
      v42 = *v41;
      v43 = *(v41 + 1);
      LODWORD(v159) = a9;
      v44 = v184;
      if (sub_20BA640CC(v184, v42, v43, a9 & 1))
      {
        v144 = v23;
        v141 = v28;
        v145 = v22;
        v138 = v19;
        v139 = v12;
        v157 = a11;
        v158 = a10;
        v151 = *v41;
        v149 = *(v41 + 1);
        ObjectType = swift_getObjectType();
        v147 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v45 = v175;
        v46 = *(v175 + 16);
        v154 = a9 & 1;
        v148 = a7;
        v152 = v41;
        v47 = v182;
        v48 = v176;
        v155 = v175 + 16;
        v153 = v46;
        v46(v182, v44, v176);
        v49 = *(v45 + 80);
        v50 = (v49 + 24) & ~v49;
        v140 = v174 + 7;
        v51 = (v174 + 7 + v50) & 0xFFFFFFFFFFFFFFF8;
        v52 = (v51 + 23) & 0xFFFFFFFFFFFFFFF8;
        v53 = (v52 + 23) & 0xFFFFFFFFFFFFFFF8;
        v146 = (v53 + 15) & 0xFFFFFFFFFFFFFFF8;
        v156 = v49;
        v54 = swift_allocObject();
        *(v54 + 16) = v147;
        v143 = *(v45 + 32);
        v142 = v45 + 32;
        v143(v54 + v50, v47, v48);
        v55 = (v54 + v51);
        v56 = v178;
        *v55 = v177;
        v55[1] = v56;
        v57 = (v54 + v52);
        v58 = v180;
        *v57 = v179;
        v57[1] = v58;
        *(v54 + v53) = v148;
        v59 = v54 + v146;
        *v59 = v181;
        *(v59 + 8) = v154;
        v60 = (v54 + ((v53 + 31) & 0xFFFFFFFFFFFFFFF8));
        v61 = v158;
        v62 = v157;
        *v60 = v158;
        v60[1] = v62;
        v63 = v149;
        v148 = v149[19];

        sub_20B584050(v61, v62);
        v148(sub_20BA66524, v54, ObjectType, v63);

        if (v159)
        {
          v64 = [objc_opt_self() mainScreen];
          [v64 scale];
          v66 = v65;

          v67 = sub_20C137BF4() / v66;
          v68 = sub_20C137C04() / v66;
          v69 = v152;
        }

        else
        {
          v69 = v152;
          [*v152 bounds];
          v67 = v70;
          v68 = v71;
        }

        v72 = v182;
        v73 = v153;
        if (v67 <= 0.0 || v68 <= 0.0)
        {
        }

        else
        {
          v159 = ~v156;
          v74 = v69[1];
          v75 = swift_getObjectType();
          v74[15](0, v75, v74);
          v76 = v69[1];
          v77 = swift_getObjectType();
          v78 = v166;
          v79 = v176;
          v73(v166, v184, v176);
          (*(v175 + 56))(v78, 0, 1, v79);
          v76[2](v78, v77, v76);
          v80 = *v69;
          sub_20B51C88C(0, &qword_27C762070, 0x277D75348);
          sub_20C137BC4();
          v81 = sub_20C13D5A4();
          [v80 setBackgroundColor_];

          v82 = v69[1];
          v83 = swift_getObjectType();
          v82[22](COERCE_DOUBLE(*&v67), COERCE_DOUBLE(*&v68), 0, v83, v82);
          v84 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v73(v72, v184, v79);
          v85 = (v156 + 16) & v159;
          v86 = v73;
          v87 = (v140 + v85) & 0xFFFFFFFFFFFFFFF8;
          v88 = (v87 + 15) & 0xFFFFFFFFFFFFFFF8;
          v89 = swift_allocObject();
          v143(v89 + v85, v72, v79);
          *(v89 + v87) = v84;
          v90 = (v89 + v88);
          v91 = v184;
          *v90 = v67;
          v90[1] = v68;
          v175 = v89;
          v92 = (v89 + ((v88 + 23) & 0xFFFFFFFFFFFFFFF8));
          v93 = v79;
          v94 = v158;
          v95 = v157;
          *v92 = v158;
          v92[1] = v95;
          v86(v72, v91, v79);
          (*(v167 + 104))(v169, *MEMORY[0x277D542A8], v168);

          sub_20B584050(v94, v95);
          v96 = v173;
          v97 = v144;
          v98 = v183;
          sub_20C138A54();
          v99 = v170;
          sub_20B5F19B0(v96, v170);
          v100 = v145;
          if ((*(v97 + 48))(v99, 1, v145) == 1)
          {
            sub_20B520158(v99, &unk_27C766670, &unk_20C151580);
            v101 = sub_20BA1DD44(&OBJC_IVAR____TtC9SeymourUI20PreferredTrainerCell_artworkView);
            if (v158)
            {
              v158(v101);
            }

            else
            {
            }

            (*(v172 + 8))(v96, v141);
          }

          else
          {
            v102 = v93;
            v181 = *(v97 + 32);
            v103 = v171;
            v181(v171, v99, v100);
            v104 = swift_allocObject();
            swift_unknownObjectWeakInit();
            v153(v72, v91, v102);
            v105 = (v156 + 40) & v159;
            v106 = v105 + v174;
            v107 = (v105 + v174) & 0xFFFFFFFFFFFFFFF8;
            v108 = swift_allocObject();
            *(v108 + 16) = v104;
            *(v108 + 24) = v67;
            *(v108 + 32) = v68;
            v143(v108 + v105, v72, v102);
            *(v108 + v106) = v154;
            v109 = v108 + v107;
            v110 = v158;
            v111 = v157;
            *(v109 + 8) = v158;
            *(v109 + 16) = v111;
            v112 = swift_allocObject();
            *(v112 + 16) = sub_20BA66570;
            *(v112 + 24) = v108;
            v113 = v144;
            v114 = v161;
            v115 = v103;
            v116 = v145;
            (*(v144 + 16))(v161, v115, v145);
            v117 = v113;
            v118 = (*(v113 + 80) + 16) & ~*(v113 + 80);
            v119 = (v160 + v118 + 7) & 0xFFFFFFFFFFFFFFF8;
            v120 = swift_allocObject();
            v181((v120 + v118), v114, v116);
            v121 = (v120 + v119);
            *v121 = sub_20B5F7760;
            v121[1] = v112;
            sub_20B584050(v110, v111);
            v122 = v164;
            sub_20C137C94();
            v123 = swift_allocObject();
            v124 = v175;
            *(v123 + 16) = sub_20BA6653C;
            *(v123 + 24) = v124;
            v125 = swift_allocObject();
            *(v125 + 16) = sub_20BA66C80;
            *(v125 + 24) = v123;
            v126 = v165;
            v127 = v163;
            v128 = v139;
            (*(v165 + 16))(v163, v122, v139);
            v129 = (*(v126 + 80) + 16) & ~*(v126 + 80);
            v130 = (v162 + v129 + 7) & 0xFFFFFFFFFFFFFFF8;
            v131 = swift_allocObject();
            (*(v126 + 32))(v131 + v129, v127, v128);
            v132 = (v131 + v130);
            *v132 = sub_20B5F7764;
            v132[1] = v125;

            v133 = v138;
            sub_20C137C94();
            v134 = *(v126 + 8);
            v134(v122, v128);
            v135 = sub_20C137CB4();
            v136 = swift_allocObject();
            *(v136 + 16) = 0;
            *(v136 + 24) = 0;
            v135(sub_20B5DF6DC, v136);

            v134(v133, v128);
            (*(v117 + 8))(v171, v145);
            (*(v172 + 8))(v173, v141);
          }
        }
      }

      else
      {
      }
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_20BA3EC04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t (*)(), uint64_t, uint64_t, void *), void (*a8)(char *, uint64_t, uint64_t), unsigned __int8 a9, void (*a10)(uint64_t), uint64_t a11)
{
  v180 = a6;
  v181 = a8;
  v178 = a4;
  v179 = a5;
  v177 = a3;
  v184 = a2;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0, &unk_20C150360);
  v165 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v163 = &v137 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v164 = &v137 - v15;
  v162 = v16;
  MEMORY[0x28223BE20](v17);
  v19 = &v137 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766670, &unk_20C151580);
  MEMORY[0x28223BE20](v20 - 8);
  v170 = &v137 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BAB0, &unk_20C150570);
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v161 = &v137 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v160 = v24;
  MEMORY[0x28223BE20](v25);
  v171 = &v137 - v26;
  v168 = sub_20C1391C4();
  v167 = *(v168 - 8);
  MEMORY[0x28223BE20](v168);
  v169 = &v137 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_20C138A64();
  v172 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v173 = &v137 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766680, &unk_20C14F920);
  MEMORY[0x28223BE20](v30 - 8);
  v166 = &v137 - v31;
  v32 = sub_20C137C24();
  v175 = *(v32 - 8);
  v176 = v32;
  MEMORY[0x28223BE20](v32);
  v174 = v33;
  v182 = &v137 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_20C13C554();
  v35 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v37 = (&v137 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v183 = Strong;
    sub_20B51C88C(0, &qword_281100530, 0x277D85C78);
    *v37 = sub_20C13D374();
    (*(v35 + 104))(v37, *MEMORY[0x277D85200], v34);
    v39 = sub_20C13C584();
    (*(v35 + 8))(v37, v34);
    if (v39)
    {
      v40 = v183;
      v41 = &v183[OBJC_IVAR____TtC9SeymourUI20ProgramBrickItemCell_artworkView];
      [*&v183[OBJC_IVAR____TtC9SeymourUI20ProgramBrickItemCell_artworkView] setContentMode_];
      v42 = *v41;
      v43 = *(v41 + 1);
      LODWORD(v159) = a9;
      v44 = v184;
      if (sub_20BA640CC(v184, v42, v43, a9 & 1))
      {
        v144 = v23;
        v141 = v28;
        v145 = v22;
        v138 = v19;
        v139 = v12;
        v157 = a11;
        v158 = a10;
        v151 = *v41;
        v149 = *(v41 + 1);
        ObjectType = swift_getObjectType();
        v147 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v45 = v175;
        v46 = *(v175 + 16);
        v154 = a9 & 1;
        v148 = a7;
        v152 = v41;
        v47 = v182;
        v48 = v176;
        v155 = v175 + 16;
        v153 = v46;
        v46(v182, v44, v176);
        v49 = *(v45 + 80);
        v50 = (v49 + 24) & ~v49;
        v140 = v174 + 7;
        v51 = (v174 + 7 + v50) & 0xFFFFFFFFFFFFFFF8;
        v52 = (v51 + 23) & 0xFFFFFFFFFFFFFFF8;
        v53 = (v52 + 23) & 0xFFFFFFFFFFFFFFF8;
        v146 = (v53 + 15) & 0xFFFFFFFFFFFFFFF8;
        v156 = v49;
        v54 = swift_allocObject();
        *(v54 + 16) = v147;
        v143 = *(v45 + 32);
        v142 = v45 + 32;
        v143(v54 + v50, v47, v48);
        v55 = (v54 + v51);
        v56 = v178;
        *v55 = v177;
        v55[1] = v56;
        v57 = (v54 + v52);
        v58 = v180;
        *v57 = v179;
        v57[1] = v58;
        *(v54 + v53) = v148;
        v59 = v54 + v146;
        *v59 = v181;
        *(v59 + 8) = v154;
        v60 = (v54 + ((v53 + 31) & 0xFFFFFFFFFFFFFFF8));
        v61 = v158;
        v62 = v157;
        *v60 = v158;
        v60[1] = v62;
        v63 = v149;
        v148 = v149[19];

        sub_20B584050(v61, v62);
        v148(sub_20BA64D70, v54, ObjectType, v63);

        if (v159)
        {
          v64 = [objc_opt_self() mainScreen];
          [v64 scale];
          v66 = v65;

          v67 = sub_20C137BF4() / v66;
          v68 = sub_20C137C04() / v66;
          v69 = v152;
        }

        else
        {
          v69 = v152;
          [*v152 bounds];
          v67 = v70;
          v68 = v71;
        }

        v72 = v182;
        v73 = v153;
        if (v67 <= 0.0 || v68 <= 0.0)
        {
        }

        else
        {
          v159 = ~v156;
          v74 = v69[1];
          v75 = swift_getObjectType();
          v74[15](0, v75, v74);
          v76 = v69[1];
          v77 = swift_getObjectType();
          v78 = v166;
          v79 = v176;
          v73(v166, v184, v176);
          (*(v175 + 56))(v78, 0, 1, v79);
          v76[2](v78, v77, v76);
          v80 = *v69;
          sub_20B51C88C(0, &qword_27C762070, 0x277D75348);
          sub_20C137BC4();
          v81 = sub_20C13D5A4();
          [v80 setBackgroundColor_];

          v82 = v69[1];
          v83 = swift_getObjectType();
          v82[22](COERCE_DOUBLE(*&v67), COERCE_DOUBLE(*&v68), 0, v83, v82);
          v84 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v73(v72, v184, v79);
          v85 = (v156 + 16) & v159;
          v86 = v73;
          v87 = (v140 + v85) & 0xFFFFFFFFFFFFFFF8;
          v88 = (v87 + 15) & 0xFFFFFFFFFFFFFFF8;
          v89 = swift_allocObject();
          v143(v89 + v85, v72, v79);
          *(v89 + v87) = v84;
          v90 = (v89 + v88);
          v91 = v184;
          *v90 = v67;
          v90[1] = v68;
          v175 = v89;
          v92 = (v89 + ((v88 + 23) & 0xFFFFFFFFFFFFFFF8));
          v93 = v79;
          v94 = v158;
          v95 = v157;
          *v92 = v158;
          v92[1] = v95;
          v86(v72, v91, v79);
          (*(v167 + 104))(v169, *MEMORY[0x277D542A8], v168);

          sub_20B584050(v94, v95);
          v96 = v173;
          v97 = v144;
          v98 = v183;
          sub_20C138A54();
          v99 = v170;
          sub_20B5F19D8(v96, v170);
          v100 = v145;
          if ((*(v97 + 48))(v99, 1, v145) == 1)
          {
            sub_20B520158(v99, &unk_27C766670, &unk_20C151580);
            v101 = sub_20BA1DD44(&OBJC_IVAR____TtC9SeymourUI20ProgramBrickItemCell_artworkView);
            if (v158)
            {
              v158(v101);
            }

            else
            {
            }

            (*(v172 + 8))(v96, v141);
          }

          else
          {
            v102 = v93;
            v181 = *(v97 + 32);
            v103 = v171;
            v181(v171, v99, v100);
            v104 = swift_allocObject();
            swift_unknownObjectWeakInit();
            v153(v72, v91, v102);
            v105 = (v156 + 40) & v159;
            v106 = v105 + v174;
            v107 = (v105 + v174) & 0xFFFFFFFFFFFFFFF8;
            v108 = swift_allocObject();
            *(v108 + 16) = v104;
            *(v108 + 24) = v67;
            *(v108 + 32) = v68;
            v143(v108 + v105, v72, v102);
            *(v108 + v106) = v154;
            v109 = v108 + v107;
            v110 = v158;
            v111 = v157;
            *(v109 + 8) = v158;
            *(v109 + 16) = v111;
            v112 = swift_allocObject();
            *(v112 + 16) = sub_20BA64DBC;
            *(v112 + 24) = v108;
            v113 = v144;
            v114 = v161;
            v115 = v103;
            v116 = v145;
            (*(v144 + 16))(v161, v115, v145);
            v117 = v113;
            v118 = (*(v113 + 80) + 16) & ~*(v113 + 80);
            v119 = (v160 + v118 + 7) & 0xFFFFFFFFFFFFFFF8;
            v120 = swift_allocObject();
            v181((v120 + v118), v114, v116);
            v121 = (v120 + v119);
            *v121 = sub_20B5F7760;
            v121[1] = v112;
            sub_20B584050(v110, v111);
            v122 = v164;
            sub_20C137C94();
            v123 = swift_allocObject();
            v124 = v175;
            *(v123 + 16) = sub_20BA64D88;
            *(v123 + 24) = v124;
            v125 = swift_allocObject();
            *(v125 + 16) = sub_20BA66C80;
            *(v125 + 24) = v123;
            v126 = v165;
            v127 = v163;
            v128 = v139;
            (*(v165 + 16))(v163, v122, v139);
            v129 = (*(v126 + 80) + 16) & ~*(v126 + 80);
            v130 = (v162 + v129 + 7) & 0xFFFFFFFFFFFFFFF8;
            v131 = swift_allocObject();
            (*(v126 + 32))(v131 + v129, v127, v128);
            v132 = (v131 + v130);
            *v132 = sub_20B5F7764;
            v132[1] = v125;

            v133 = v138;
            sub_20C137C94();
            v134 = *(v126 + 8);
            v134(v122, v128);
            v135 = sub_20C137CB4();
            v136 = swift_allocObject();
            *(v136 + 16) = 0;
            *(v136 + 24) = 0;
            v135(sub_20B5DF6DC, v136);

            v134(v133, v128);
            (*(v117 + 8))(v171, v145);
            (*(v172 + 8))(v173, v141);
          }
        }
      }

      else
      {
      }
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_20BA3FC8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t (*)(), uint64_t, uint64_t, void *), void (*a8)(char *, uint64_t, uint64_t), unsigned __int8 a9, void (*a10)(uint64_t), uint64_t a11)
{
  v180 = a6;
  v181 = a8;
  v178 = a4;
  v179 = a5;
  v177 = a3;
  v184 = a2;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0, &unk_20C150360);
  v165 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v163 = &v137 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v164 = &v137 - v15;
  v162 = v16;
  MEMORY[0x28223BE20](v17);
  v19 = &v137 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766670, &unk_20C151580);
  MEMORY[0x28223BE20](v20 - 8);
  v170 = &v137 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BAB0, &unk_20C150570);
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v161 = &v137 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v160 = v24;
  MEMORY[0x28223BE20](v25);
  v171 = &v137 - v26;
  v168 = sub_20C1391C4();
  v167 = *(v168 - 8);
  MEMORY[0x28223BE20](v168);
  v169 = &v137 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_20C138A64();
  v172 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v173 = &v137 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766680, &unk_20C14F920);
  MEMORY[0x28223BE20](v30 - 8);
  v166 = &v137 - v31;
  v32 = sub_20C137C24();
  v175 = *(v32 - 8);
  v176 = v32;
  MEMORY[0x28223BE20](v32);
  v174 = v33;
  v182 = &v137 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_20C13C554();
  v35 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v37 = (&v137 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v183 = Strong;
    sub_20B51C88C(0, &qword_281100530, 0x277D85C78);
    *v37 = sub_20C13D374();
    (*(v35 + 104))(v37, *MEMORY[0x277D85200], v34);
    v39 = sub_20C13C584();
    (*(v35 + 8))(v37, v34);
    if (v39)
    {
      v40 = v183;
      v41 = &v183[OBJC_IVAR____TtC9SeymourUI21StandardBrickItemCell_artworkView];
      [*&v183[OBJC_IVAR____TtC9SeymourUI21StandardBrickItemCell_artworkView] setContentMode_];
      v42 = *v41;
      v43 = *(v41 + 1);
      LODWORD(v159) = a9;
      v44 = v184;
      if (sub_20BA640CC(v184, v42, v43, a9 & 1))
      {
        v144 = v23;
        v141 = v28;
        v145 = v22;
        v138 = v19;
        v139 = v12;
        v157 = a11;
        v158 = a10;
        v151 = *v41;
        v149 = *(v41 + 1);
        ObjectType = swift_getObjectType();
        v147 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v45 = v175;
        v46 = *(v175 + 16);
        v154 = a9 & 1;
        v148 = a7;
        v152 = v41;
        v47 = v182;
        v48 = v176;
        v155 = v175 + 16;
        v153 = v46;
        v46(v182, v44, v176);
        v49 = *(v45 + 80);
        v50 = (v49 + 24) & ~v49;
        v140 = v174 + 7;
        v51 = (v174 + 7 + v50) & 0xFFFFFFFFFFFFFFF8;
        v52 = (v51 + 23) & 0xFFFFFFFFFFFFFFF8;
        v53 = (v52 + 23) & 0xFFFFFFFFFFFFFFF8;
        v146 = (v53 + 15) & 0xFFFFFFFFFFFFFFF8;
        v156 = v49;
        v54 = swift_allocObject();
        *(v54 + 16) = v147;
        v143 = *(v45 + 32);
        v142 = v45 + 32;
        v143(v54 + v50, v47, v48);
        v55 = (v54 + v51);
        v56 = v178;
        *v55 = v177;
        v55[1] = v56;
        v57 = (v54 + v52);
        v58 = v180;
        *v57 = v179;
        v57[1] = v58;
        *(v54 + v53) = v148;
        v59 = v54 + v146;
        *v59 = v181;
        *(v59 + 8) = v154;
        v60 = (v54 + ((v53 + 31) & 0xFFFFFFFFFFFFFFF8));
        v61 = v158;
        v62 = v157;
        *v60 = v158;
        v60[1] = v62;
        v63 = v149;
        v148 = v149[19];

        sub_20B584050(v61, v62);
        v148(sub_20BA65C2C, v54, ObjectType, v63);

        if (v159)
        {
          v64 = [objc_opt_self() mainScreen];
          [v64 scale];
          v66 = v65;

          v67 = sub_20C137BF4() / v66;
          v68 = sub_20C137C04() / v66;
          v69 = v152;
        }

        else
        {
          v69 = v152;
          [*v152 bounds];
          v67 = v70;
          v68 = v71;
        }

        v72 = v182;
        v73 = v153;
        if (v67 <= 0.0 || v68 <= 0.0)
        {
        }

        else
        {
          v159 = ~v156;
          v74 = v69[1];
          v75 = swift_getObjectType();
          v74[15](0, v75, v74);
          v76 = v69[1];
          v77 = swift_getObjectType();
          v78 = v166;
          v79 = v176;
          v73(v166, v184, v176);
          (*(v175 + 56))(v78, 0, 1, v79);
          v76[2](v78, v77, v76);
          v80 = *v69;
          sub_20B51C88C(0, &qword_27C762070, 0x277D75348);
          sub_20C137BC4();
          v81 = sub_20C13D5A4();
          [v80 setBackgroundColor_];

          v82 = v69[1];
          v83 = swift_getObjectType();
          v82[22](COERCE_DOUBLE(*&v67), COERCE_DOUBLE(*&v68), 0, v83, v82);
          v84 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v73(v72, v184, v79);
          v85 = (v156 + 16) & v159;
          v86 = v73;
          v87 = (v140 + v85) & 0xFFFFFFFFFFFFFFF8;
          v88 = (v87 + 15) & 0xFFFFFFFFFFFFFFF8;
          v89 = swift_allocObject();
          v143(v89 + v85, v72, v79);
          *(v89 + v87) = v84;
          v90 = (v89 + v88);
          v91 = v184;
          *v90 = v67;
          v90[1] = v68;
          v175 = v89;
          v92 = (v89 + ((v88 + 23) & 0xFFFFFFFFFFFFFFF8));
          v93 = v79;
          v94 = v158;
          v95 = v157;
          *v92 = v158;
          v92[1] = v95;
          v86(v72, v91, v79);
          (*(v167 + 104))(v169, *MEMORY[0x277D542A8], v168);

          sub_20B584050(v94, v95);
          v96 = v173;
          v97 = v144;
          v98 = v183;
          sub_20C138A54();
          v99 = v170;
          sub_20B5F1A00(v96, v170);
          v100 = v145;
          if ((*(v97 + 48))(v99, 1, v145) == 1)
          {
            sub_20B520158(v99, &unk_27C766670, &unk_20C151580);
            v101 = sub_20BA1DD44(&OBJC_IVAR____TtC9SeymourUI21StandardBrickItemCell_artworkView);
            if (v158)
            {
              v158(v101);
            }

            else
            {
            }

            (*(v172 + 8))(v96, v141);
          }

          else
          {
            v102 = v93;
            v181 = *(v97 + 32);
            v103 = v171;
            v181(v171, v99, v100);
            v104 = swift_allocObject();
            swift_unknownObjectWeakInit();
            v153(v72, v91, v102);
            v105 = (v156 + 40) & v159;
            v106 = v105 + v174;
            v107 = (v105 + v174) & 0xFFFFFFFFFFFFFFF8;
            v108 = swift_allocObject();
            *(v108 + 16) = v104;
            *(v108 + 24) = v67;
            *(v108 + 32) = v68;
            v143(v108 + v105, v72, v102);
            *(v108 + v106) = v154;
            v109 = v108 + v107;
            v110 = v158;
            v111 = v157;
            *(v109 + 8) = v158;
            *(v109 + 16) = v111;
            v112 = swift_allocObject();
            *(v112 + 16) = sub_20BA65C78;
            *(v112 + 24) = v108;
            v113 = v144;
            v114 = v161;
            v115 = v103;
            v116 = v145;
            (*(v144 + 16))(v161, v115, v145);
            v117 = v113;
            v118 = (*(v113 + 80) + 16) & ~*(v113 + 80);
            v119 = (v160 + v118 + 7) & 0xFFFFFFFFFFFFFFF8;
            v120 = swift_allocObject();
            v181((v120 + v118), v114, v116);
            v121 = (v120 + v119);
            *v121 = sub_20B5F7760;
            v121[1] = v112;
            sub_20B584050(v110, v111);
            v122 = v164;
            sub_20C137C94();
            v123 = swift_allocObject();
            v124 = v175;
            *(v123 + 16) = sub_20BA65C44;
            *(v123 + 24) = v124;
            v125 = swift_allocObject();
            *(v125 + 16) = sub_20BA66C80;
            *(v125 + 24) = v123;
            v126 = v165;
            v127 = v163;
            v128 = v139;
            (*(v165 + 16))(v163, v122, v139);
            v129 = (*(v126 + 80) + 16) & ~*(v126 + 80);
            v130 = (v162 + v129 + 7) & 0xFFFFFFFFFFFFFFF8;
            v131 = swift_allocObject();
            (*(v126 + 32))(v131 + v129, v127, v128);
            v132 = (v131 + v130);
            *v132 = sub_20B5F7764;
            v132[1] = v125;

            v133 = v138;
            sub_20C137C94();
            v134 = *(v126 + 8);
            v134(v122, v128);
            v135 = sub_20C137CB4();
            v136 = swift_allocObject();
            *(v136 + 16) = 0;
            *(v136 + 24) = 0;
            v135(sub_20B5DF6DC, v136);

            v134(v133, v128);
            (*(v117 + 8))(v171, v145);
            (*(v172 + 8))(v173, v141);
          }
        }
      }

      else
      {
      }
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_20BA40D14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t (*)(), uint64_t, uint64_t, void *), void (*a8)(char *, uint64_t, uint64_t), unsigned __int8 a9, void (*a10)(uint64_t), uint64_t a11)
{
  v180 = a6;
  v181 = a8;
  v178 = a4;
  v179 = a5;
  v177 = a3;
  v184 = a2;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0, &unk_20C150360);
  v165 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v163 = &v137 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v164 = &v137 - v15;
  v162 = v16;
  MEMORY[0x28223BE20](v17);
  v19 = &v137 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766670, &unk_20C151580);
  MEMORY[0x28223BE20](v20 - 8);
  v170 = &v137 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BAB0, &unk_20C150570);
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v161 = &v137 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v160 = v24;
  MEMORY[0x28223BE20](v25);
  v171 = &v137 - v26;
  v168 = sub_20C1391C4();
  v167 = *(v168 - 8);
  MEMORY[0x28223BE20](v168);
  v169 = &v137 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_20C138A64();
  v172 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v173 = &v137 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766680, &unk_20C14F920);
  MEMORY[0x28223BE20](v30 - 8);
  v166 = &v137 - v31;
  v32 = sub_20C137C24();
  v175 = *(v32 - 8);
  v176 = v32;
  MEMORY[0x28223BE20](v32);
  v174 = v33;
  v182 = &v137 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_20C13C554();
  v35 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v37 = (&v137 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v183 = Strong;
    sub_20B51C88C(0, &qword_281100530, 0x277D85C78);
    *v37 = sub_20C13D374();
    (*(v35 + 104))(v37, *MEMORY[0x277D85200], v34);
    v39 = sub_20C13C584();
    (*(v35 + 8))(v37, v34);
    if (v39)
    {
      v40 = v183;
      v41 = &v183[OBJC_IVAR____TtC9SeymourUI22HighlightBrickItemCell_artworkView];
      [*&v183[OBJC_IVAR____TtC9SeymourUI22HighlightBrickItemCell_artworkView] setContentMode_];
      v42 = *v41;
      v43 = *(v41 + 1);
      LODWORD(v159) = a9;
      v44 = v184;
      if (sub_20BA640CC(v184, v42, v43, a9 & 1))
      {
        v144 = v23;
        v141 = v28;
        v145 = v22;
        v138 = v19;
        v139 = v12;
        v157 = a11;
        v158 = a10;
        v151 = *v41;
        v149 = *(v41 + 1);
        ObjectType = swift_getObjectType();
        v147 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v45 = v175;
        v46 = *(v175 + 16);
        v154 = a9 & 1;
        v148 = a7;
        v152 = v41;
        v47 = v182;
        v48 = v176;
        v155 = v175 + 16;
        v153 = v46;
        v46(v182, v44, v176);
        v49 = *(v45 + 80);
        v50 = (v49 + 24) & ~v49;
        v140 = v174 + 7;
        v51 = (v174 + 7 + v50) & 0xFFFFFFFFFFFFFFF8;
        v52 = (v51 + 23) & 0xFFFFFFFFFFFFFFF8;
        v53 = (v52 + 23) & 0xFFFFFFFFFFFFFFF8;
        v146 = (v53 + 15) & 0xFFFFFFFFFFFFFFF8;
        v156 = v49;
        v54 = swift_allocObject();
        *(v54 + 16) = v147;
        v143 = *(v45 + 32);
        v142 = v45 + 32;
        v143(v54 + v50, v47, v48);
        v55 = (v54 + v51);
        v56 = v178;
        *v55 = v177;
        v55[1] = v56;
        v57 = (v54 + v52);
        v58 = v180;
        *v57 = v179;
        v57[1] = v58;
        *(v54 + v53) = v148;
        v59 = v54 + v146;
        *v59 = v181;
        *(v59 + 8) = v154;
        v60 = (v54 + ((v53 + 31) & 0xFFFFFFFFFFFFFFF8));
        v61 = v158;
        v62 = v157;
        *v60 = v158;
        v60[1] = v62;
        v63 = v149;
        v148 = v149[19];

        sub_20B584050(v61, v62);
        v148(sub_20BA65148, v54, ObjectType, v63);

        if (v159)
        {
          v64 = [objc_opt_self() mainScreen];
          [v64 scale];
          v66 = v65;

          v67 = sub_20C137BF4() / v66;
          v68 = sub_20C137C04() / v66;
          v69 = v152;
        }

        else
        {
          v69 = v152;
          [*v152 bounds];
          v67 = v70;
          v68 = v71;
        }

        v72 = v182;
        v73 = v153;
        if (v67 <= 0.0 || v68 <= 0.0)
        {
        }

        else
        {
          v159 = ~v156;
          v74 = v69[1];
          v75 = swift_getObjectType();
          v74[15](0, v75, v74);
          v76 = v69[1];
          v77 = swift_getObjectType();
          v78 = v166;
          v79 = v176;
          v73(v166, v184, v176);
          (*(v175 + 56))(v78, 0, 1, v79);
          v76[2](v78, v77, v76);
          v80 = *v69;
          sub_20B51C88C(0, &qword_27C762070, 0x277D75348);
          sub_20C137BC4();
          v81 = sub_20C13D5A4();
          [v80 setBackgroundColor_];

          v82 = v69[1];
          v83 = swift_getObjectType();
          v82[22](COERCE_DOUBLE(*&v67), COERCE_DOUBLE(*&v68), 0, v83, v82);
          v84 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v73(v72, v184, v79);
          v85 = (v156 + 16) & v159;
          v86 = v73;
          v87 = (v140 + v85) & 0xFFFFFFFFFFFFFFF8;
          v88 = (v87 + 15) & 0xFFFFFFFFFFFFFFF8;
          v89 = swift_allocObject();
          v143(v89 + v85, v72, v79);
          *(v89 + v87) = v84;
          v90 = (v89 + v88);
          v91 = v184;
          *v90 = v67;
          v90[1] = v68;
          v175 = v89;
          v92 = (v89 + ((v88 + 23) & 0xFFFFFFFFFFFFFFF8));
          v93 = v79;
          v94 = v158;
          v95 = v157;
          *v92 = v158;
          v92[1] = v95;
          v86(v72, v91, v79);
          (*(v167 + 104))(v169, *MEMORY[0x277D542A8], v168);

          sub_20B584050(v94, v95);
          v96 = v173;
          v97 = v144;
          v98 = v183;
          sub_20C138A54();
          v99 = v170;
          sub_20B5F1A28(v96, v170);
          v100 = v145;
          if ((*(v97 + 48))(v99, 1, v145) == 1)
          {
            sub_20B520158(v99, &unk_27C766670, &unk_20C151580);
            v101 = sub_20BA1DD44(&OBJC_IVAR____TtC9SeymourUI22HighlightBrickItemCell_artworkView);
            if (v158)
            {
              v158(v101);
            }

            else
            {
            }

            (*(v172 + 8))(v96, v141);
          }

          else
          {
            v102 = v93;
            v181 = *(v97 + 32);
            v103 = v171;
            v181(v171, v99, v100);
            v104 = swift_allocObject();
            swift_unknownObjectWeakInit();
            v153(v72, v91, v102);
            v105 = (v156 + 40) & v159;
            v106 = v105 + v174;
            v107 = (v105 + v174) & 0xFFFFFFFFFFFFFFF8;
            v108 = swift_allocObject();
            *(v108 + 16) = v104;
            *(v108 + 24) = v67;
            *(v108 + 32) = v68;
            v143(v108 + v105, v72, v102);
            *(v108 + v106) = v154;
            v109 = v108 + v107;
            v110 = v158;
            v111 = v157;
            *(v109 + 8) = v158;
            *(v109 + 16) = v111;
            v112 = swift_allocObject();
            *(v112 + 16) = sub_20BA65194;
            *(v112 + 24) = v108;
            v113 = v144;
            v114 = v161;
            v115 = v103;
            v116 = v145;
            (*(v144 + 16))(v161, v115, v145);
            v117 = v113;
            v118 = (*(v113 + 80) + 16) & ~*(v113 + 80);
            v119 = (v160 + v118 + 7) & 0xFFFFFFFFFFFFFFF8;
            v120 = swift_allocObject();
            v181((v120 + v118), v114, v116);
            v121 = (v120 + v119);
            *v121 = sub_20B5F7760;
            v121[1] = v112;
            sub_20B584050(v110, v111);
            v122 = v164;
            sub_20C137C94();
            v123 = swift_allocObject();
            v124 = v175;
            *(v123 + 16) = sub_20BA65160;
            *(v123 + 24) = v124;
            v125 = swift_allocObject();
            *(v125 + 16) = sub_20BA66C80;
            *(v125 + 24) = v123;
            v126 = v165;
            v127 = v163;
            v128 = v139;
            (*(v165 + 16))(v163, v122, v139);
            v129 = (*(v126 + 80) + 16) & ~*(v126 + 80);
            v130 = (v162 + v129 + 7) & 0xFFFFFFFFFFFFFFF8;
            v131 = swift_allocObject();
            (*(v126 + 32))(v131 + v129, v127, v128);
            v132 = (v131 + v130);
            *v132 = sub_20B5F7764;
            v132[1] = v125;

            v133 = v138;
            sub_20C137C94();
            v134 = *(v126 + 8);
            v134(v122, v128);
            v135 = sub_20C137CB4();
            v136 = swift_allocObject();
            *(v136 + 16) = 0;
            *(v136 + 24) = 0;
            v135(sub_20B5DF6DC, v136);

            v134(v133, v128);
            (*(v117 + 8))(v171, v145);
            (*(v172 + 8))(v173, v141);
          }
        }
      }

      else
      {
      }
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_20BA41D9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void (*a8)(char *, uint64_t, uint64_t), char a9, void (*a10)(uint64_t), uint64_t a11)
{
  v179 = a6;
  v180 = a8;
  v177 = a4;
  v178 = a5;
  v176 = a3;
  v182 = a2;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0, &unk_20C150360);
  v163 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v161 = &v138 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v162 = &v138 - v15;
  v160 = v16;
  MEMORY[0x28223BE20](v17);
  v19 = &v138 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766670, &unk_20C151580);
  MEMORY[0x28223BE20](v20 - 8);
  v168 = &v138 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BAB0, &unk_20C150570);
  v172 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v159 = &v138 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v158 = v23;
  MEMORY[0x28223BE20](v24);
  v169 = &v138 - v25;
  v166 = sub_20C1391C4();
  v165 = *(v166 - 8);
  MEMORY[0x28223BE20](v166);
  v167 = &v138 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_20C138A64();
  v170 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v171 = &v138 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766680, &unk_20C14F920);
  MEMORY[0x28223BE20](v29 - 8);
  v164 = &v138 - v30;
  v181 = sub_20C137C24();
  v174 = *(v181 - 8);
  MEMORY[0x28223BE20](v181);
  v173 = v31;
  v175 = &v138 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_20C13C554();
  v33 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v35 = (&v138 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v37 = Strong;
    v156 = v27;
    sub_20B51C88C(0, &qword_281100530, 0x277D85C78);
    *v35 = sub_20C13D374();
    (*(v33 + 104))(v35, *MEMORY[0x277D85200], v32);
    v38 = sub_20C13C584();
    (*(v33 + 8))(v35, v32);
    if (v38)
    {
      v39 = OBJC_IVAR____TtC9SeymourUI22TVDynamicBrickItemCell_tvArtworkView;
      [*&v37[OBJC_IVAR____TtC9SeymourUI22TVDynamicBrickItemCell_tvArtworkView] setContentMode_];
      v40 = *&v37[v39];
      v41 = v182;
      v42 = sub_20B8EF674(v182, v40, a9 & 1);

      if ((v42 & 1) != 0 && (v146 = v22, v139 = v19, v140 = v12, v155 = a11, v157 = a10, v142 = v39, v152 = *&v37[v39], v150 = swift_allocObject(), swift_unknownObjectWeakInit(), v43 = v174, v44 = *(v174 + 16), v153 = a9 & 1, v45 = v175, v154 = v37, v46 = v181, v148 = v174 + 16, v147 = v44, v44(v175, v41, v181), v47 = *(v43 + 80), v151 = a7, v48 = (v47 + 24) & ~v47, v141 = v173 + 7, v49 = (v173 + 7 + v48) & 0xFFFFFFFFFFFFFFF8, v50 = (v49 + 23) & 0xFFFFFFFFFFFFFFF8, v51 = (v50 + 23) & 0xFFFFFFFFFFFFFFF8, v149 = (v51 + 15) & 0xFFFFFFFFFFFFFFF8, v145 = v47, v52 = swift_allocObject(), *(v52 + 16) = v150, v53 = *(v43 + 32), v54 = v45, v55 = v153, v144 = v43 + 32, v143 = v53, v53(v52 + v48, v54, v46), v56 = (v52 + v49), v57 = v177, *v56 = v176, v56[1] = v57, v58 = (v52 + v50), v59 = v179, *v58 = v178, v58[1] = v59, *(v52 + v51) = v151, v60 = v52 + v149, *v60 = v180, *(v60 + 8) = v55, v61 = (v52 + ((v51 + 31) & 0xFFFFFFFFFFFFFFF8)), v62 = v157, v63 = v155, *v61 = v157, v61[1] = v63, v64 = (v152 + OBJC_IVAR____TtC9SeymourUI13TVArtworkView_layoutHandler), v66 = *(v152 + OBJC_IVAR____TtC9SeymourUI13TVArtworkView_layoutHandler), v65 = *(v152 + OBJC_IVAR____TtC9SeymourUI13TVArtworkView_layoutHandler + 8), *v64 = sub_20BA65290, v64[1] = v52, , , v67 = v63, , , sub_20B584050(v62, v63), v68 = v65, v37 = v154, v69 = v182, sub_20B583ECC(v66, v68), , v70 = sub_20B627300(v69, v55), v70 > 0.0) && (v72 = v71, v71 > 0.0))
      {
        v73 = v70;
        v74 = v145;
        v152 = ~v145;
        v75 = v142;
        [*&v37[v142] setStackImage_];
        v76 = *&v37[v75];
        v77 = v164;
        v78 = v69;
        v79 = v181;
        v147(v164, v69, v181);
        (*(v174 + 56))(v77, 0, 1, v79);
        v80 = OBJC_IVAR____TtC9SeymourUI13TVArtworkView_artwork;
        swift_beginAccess();
        sub_20B69AB5C(v77, v76 + v80);
        swift_endAccess();
        v81 = *&v37[v75];
        sub_20B51C88C(0, &qword_27C762070, 0x277D75348);
        v82 = v78;
        sub_20C137BC4();
        v83 = sub_20C13D5A4();
        [v81 setBackgroundColor_];

        v84 = *&v37[v75] + OBJC_IVAR____TtC9SeymourUI13TVArtworkView_pendingArtworkSize;
        *v84 = v73;
        *(v84 + 8) = v72;
        *(v84 + 16) = 0;
        v85 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v86 = v175;
        v87 = v79;
        v88 = v147;
        v147(v175, v82, v87);
        v89 = (v74 + 16) & v152;
        v90 = v67;
        v91 = (v141 + v89) & 0xFFFFFFFFFFFFFFF8;
        v92 = (v91 + 15) & 0xFFFFFFFFFFFFFFF8;
        v93 = swift_allocObject();
        v94 = v93 + v89;
        v95 = v181;
        v143(v94, v86, v181);
        *(v93 + v91) = v85;
        v96 = (v93 + v92);
        *v96 = v73;
        v96[1] = v72;
        v174 = v93;
        v97 = (v93 + ((v92 + 23) & 0xFFFFFFFFFFFFFFF8));
        v98 = v95;
        v99 = v157;
        *v97 = v157;
        v97[1] = v90;
        v88(v86, v182, v95);
        (*(v165 + 104))(v167, *MEMORY[0x277D542A8], v166);

        sub_20B584050(v99, v90);
        v100 = v171;
        sub_20C138A54();
        v101 = v168;
        sub_20B5F1A50(v100, v168);
        v102 = v172;
        v103 = v146;
        if ((*(v172 + 48))(v101, 1, v146) == 1)
        {
          sub_20B520158(v101, &unk_27C766670, &unk_20C151580);
          v104 = sub_20BA1DB84(&OBJC_IVAR____TtC9SeymourUI22TVDynamicBrickItemCell_tvArtworkView);
          if (v99)
          {
            v99(v104);
          }

          else
          {
          }

          (*(v170 + 8))(v100, v156);
        }

        else
        {
          v105 = v98;
          v180 = *(v102 + 32);
          v106 = v169;
          v180(v169, v101, v103);
          v107 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v147(v86, v182, v105);
          v108 = (v145 + 40) & v152;
          v109 = v108 + v173;
          v110 = (v108 + v173) & 0xFFFFFFFFFFFFFFF8;
          v111 = v103;
          v112 = swift_allocObject();
          *(v112 + 2) = v107;
          v112[3] = v73;
          v112[4] = v72;
          v143(v112 + v108, v86, v105);
          *(v112 + v109) = v153;
          v113 = v112 + v110;
          v114 = v157;
          v115 = v155;
          *(v113 + 1) = v157;
          *(v113 + 2) = v115;
          v116 = swift_allocObject();
          *(v116 + 16) = sub_20BA652DC;
          *(v116 + 24) = v112;
          v117 = v172;
          v118 = v159;
          (*(v172 + 16))(v159, v106, v111);
          v119 = (*(v117 + 80) + 16) & ~*(v117 + 80);
          v120 = (v158 + v119 + 7) & 0xFFFFFFFFFFFFFFF8;
          v121 = swift_allocObject();
          v180((v121 + v119), v118, v111);
          v122 = (v121 + v120);
          *v122 = sub_20B5F7760;
          v122[1] = v116;
          sub_20B584050(v114, v115);
          v123 = v162;
          sub_20C137C94();
          v124 = swift_allocObject();
          v125 = v174;
          *(v124 + 16) = sub_20BA652A8;
          *(v124 + 24) = v125;
          v126 = swift_allocObject();
          *(v126 + 16) = sub_20BA66C80;
          *(v126 + 24) = v124;
          v127 = v163;
          v128 = v161;
          v129 = v140;
          (*(v163 + 16))(v161, v123, v140);
          v130 = (*(v127 + 80) + 16) & ~*(v127 + 80);
          v131 = (v160 + v130 + 7) & 0xFFFFFFFFFFFFFFF8;
          v132 = swift_allocObject();
          (*(v127 + 32))(v132 + v130, v128, v129);
          v133 = (v132 + v131);
          *v133 = sub_20B5F7764;
          v133[1] = v126;

          v134 = v139;
          sub_20C137C94();
          v135 = *(v127 + 8);
          v135(v123, v129);
          v136 = sub_20C137CB4();
          v137 = swift_allocObject();
          *(v137 + 16) = 0;
          *(v137 + 24) = 0;
          v136(sub_20B5DF6DC, v137);

          v135(v134, v129);
          (*(v172 + 8))(v169, v146);
          (*(v170 + 8))(v171, v156);
        }
      }

      else
      {
      }
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_20BA42D5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t (*)(), uint64_t, uint64_t, void *), void (*a8)(char *, uint64_t, uint64_t), unsigned __int8 a9, void (*a10)(uint64_t), uint64_t a11)
{
  v180 = a6;
  v181 = a8;
  v178 = a4;
  v179 = a5;
  v177 = a3;
  v184 = a2;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0, &unk_20C150360);
  v165 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v163 = &v137 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v164 = &v137 - v15;
  v162 = v16;
  MEMORY[0x28223BE20](v17);
  v19 = &v137 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766670, &unk_20C151580);
  MEMORY[0x28223BE20](v20 - 8);
  v170 = &v137 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BAB0, &unk_20C150570);
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v161 = &v137 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v160 = v24;
  MEMORY[0x28223BE20](v25);
  v171 = &v137 - v26;
  v168 = sub_20C1391C4();
  v167 = *(v168 - 8);
  MEMORY[0x28223BE20](v168);
  v169 = &v137 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_20C138A64();
  v172 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v173 = &v137 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766680, &unk_20C14F920);
  MEMORY[0x28223BE20](v30 - 8);
  v166 = &v137 - v31;
  v32 = sub_20C137C24();
  v175 = *(v32 - 8);
  v176 = v32;
  MEMORY[0x28223BE20](v32);
  v174 = v33;
  v182 = &v137 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_20C13C554();
  v35 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v37 = (&v137 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v183 = Strong;
    sub_20B51C88C(0, &qword_281100530, 0x277D85C78);
    *v37 = sub_20C13D374();
    (*(v35 + 104))(v37, *MEMORY[0x277D85200], v34);
    v39 = sub_20C13C584();
    (*(v35 + 8))(v37, v34);
    if (v39)
    {
      v40 = v183;
      v41 = &v183[OBJC_IVAR____TtC9SeymourUI22TVGroupedBrickItemCell_artworkView];
      [*&v183[OBJC_IVAR____TtC9SeymourUI22TVGroupedBrickItemCell_artworkView] setContentMode_];
      v42 = *v41;
      v43 = *(v41 + 1);
      LODWORD(v159) = a9;
      v44 = v184;
      if (sub_20BA640CC(v184, v42, v43, a9 & 1))
      {
        v144 = v23;
        v141 = v28;
        v145 = v22;
        v138 = v19;
        v139 = v12;
        v157 = a11;
        v158 = a10;
        v151 = *v41;
        v149 = *(v41 + 1);
        ObjectType = swift_getObjectType();
        v147 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v45 = v175;
        v46 = *(v175 + 16);
        v154 = a9 & 1;
        v148 = a7;
        v152 = v41;
        v47 = v182;
        v48 = v176;
        v155 = v175 + 16;
        v153 = v46;
        v46(v182, v44, v176);
        v49 = *(v45 + 80);
        v50 = (v49 + 24) & ~v49;
        v140 = v174 + 7;
        v51 = (v174 + 7 + v50) & 0xFFFFFFFFFFFFFFF8;
        v52 = (v51 + 23) & 0xFFFFFFFFFFFFFFF8;
        v53 = (v52 + 23) & 0xFFFFFFFFFFFFFFF8;
        v146 = (v53 + 15) & 0xFFFFFFFFFFFFFFF8;
        v156 = v49;
        v54 = swift_allocObject();
        *(v54 + 16) = v147;
        v143 = *(v45 + 32);
        v142 = v45 + 32;
        v143(v54 + v50, v47, v48);
        v55 = (v54 + v51);
        v56 = v178;
        *v55 = v177;
        v55[1] = v56;
        v57 = (v54 + v52);
        v58 = v180;
        *v57 = v179;
        v57[1] = v58;
        *(v54 + v53) = v148;
        v59 = v54 + v146;
        *v59 = v181;
        *(v59 + 8) = v154;
        v60 = (v54 + ((v53 + 31) & 0xFFFFFFFFFFFFFFF8));
        v61 = v158;
        v62 = v157;
        *v60 = v158;
        v60[1] = v62;
        v63 = v149;
        v148 = v149[19];

        sub_20B584050(v61, v62);
        v148(sub_20BA64B84, v54, ObjectType, v63);

        if (v159)
        {
          v64 = [objc_opt_self() mainScreen];
          [v64 scale];
          v66 = v65;

          v67 = sub_20C137BF4() / v66;
          v68 = sub_20C137C04() / v66;
          v69 = v152;
        }

        else
        {
          v69 = v152;
          [*v152 bounds];
          v67 = v70;
          v68 = v71;
        }

        v72 = v182;
        v73 = v153;
        if (v67 <= 0.0 || v68 <= 0.0)
        {
        }

        else
        {
          v159 = ~v156;
          v74 = v69[1];
          v75 = swift_getObjectType();
          v74[15](0, v75, v74);
          v76 = v69[1];
          v77 = swift_getObjectType();
          v78 = v166;
          v79 = v176;
          v73(v166, v184, v176);
          (*(v175 + 56))(v78, 0, 1, v79);
          v76[2](v78, v77, v76);
          v80 = *v69;
          sub_20B51C88C(0, &qword_27C762070, 0x277D75348);
          sub_20C137BC4();
          v81 = sub_20C13D5A4();
          [v80 setBackgroundColor_];

          v82 = v69[1];
          v83 = swift_getObjectType();
          v82[22](COERCE_DOUBLE(*&v67), COERCE_DOUBLE(*&v68), 0, v83, v82);
          v84 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v73(v72, v184, v79);
          v85 = (v156 + 16) & v159;
          v86 = v73;
          v87 = (v140 + v85) & 0xFFFFFFFFFFFFFFF8;
          v88 = (v87 + 15) & 0xFFFFFFFFFFFFFFF8;
          v89 = swift_allocObject();
          v143(v89 + v85, v72, v79);
          *(v89 + v87) = v84;
          v90 = (v89 + v88);
          v91 = v184;
          *v90 = v67;
          v90[1] = v68;
          v175 = v89;
          v92 = (v89 + ((v88 + 23) & 0xFFFFFFFFFFFFFFF8));
          v93 = v79;
          v94 = v158;
          v95 = v157;
          *v92 = v158;
          v92[1] = v95;
          v86(v72, v91, v79);
          (*(v167 + 104))(v169, *MEMORY[0x277D542A8], v168);

          sub_20B584050(v94, v95);
          v96 = v173;
          v97 = v144;
          v98 = v183;
          sub_20C138A54();
          v99 = v170;
          sub_20B5F1A78(v96, v170);
          v100 = v145;
          if ((*(v97 + 48))(v99, 1, v145) == 1)
          {
            sub_20B520158(v99, &unk_27C766670, &unk_20C151580);
            v101 = sub_20BA1DD44(&OBJC_IVAR____TtC9SeymourUI22TVGroupedBrickItemCell_artworkView);
            if (v158)
            {
              v158(v101);
            }

            else
            {
            }

            (*(v172 + 8))(v96, v141);
          }

          else
          {
            v102 = v93;
            v181 = *(v97 + 32);
            v103 = v171;
            v181(v171, v99, v100);
            v104 = swift_allocObject();
            swift_unknownObjectWeakInit();
            v153(v72, v91, v102);
            v105 = (v156 + 40) & v159;
            v106 = v105 + v174;
            v107 = (v105 + v174) & 0xFFFFFFFFFFFFFFF8;
            v108 = swift_allocObject();
            *(v108 + 16) = v104;
            *(v108 + 24) = v67;
            *(v108 + 32) = v68;
            v143(v108 + v105, v72, v102);
            *(v108 + v106) = v154;
            v109 = v108 + v107;
            v110 = v158;
            v111 = v157;
            *(v109 + 8) = v158;
            *(v109 + 16) = v111;
            v112 = swift_allocObject();
            *(v112 + 16) = sub_20BA64BD0;
            *(v112 + 24) = v108;
            v113 = v144;
            v114 = v161;
            v115 = v103;
            v116 = v145;
            (*(v144 + 16))(v161, v115, v145);
            v117 = v113;
            v118 = (*(v113 + 80) + 16) & ~*(v113 + 80);
            v119 = (v160 + v118 + 7) & 0xFFFFFFFFFFFFFFF8;
            v120 = swift_allocObject();
            v181((v120 + v118), v114, v116);
            v121 = (v120 + v119);
            *v121 = sub_20B5F7760;
            v121[1] = v112;
            sub_20B584050(v110, v111);
            v122 = v164;
            sub_20C137C94();
            v123 = swift_allocObject();
            v124 = v175;
            *(v123 + 16) = sub_20BA64B9C;
            *(v123 + 24) = v124;
            v125 = swift_allocObject();
            *(v125 + 16) = sub_20BA66C80;
            *(v125 + 24) = v123;
            v126 = v165;
            v127 = v163;
            v128 = v139;
            (*(v165 + 16))(v163, v122, v139);
            v129 = (*(v126 + 80) + 16) & ~*(v126 + 80);
            v130 = (v162 + v129 + 7) & 0xFFFFFFFFFFFFFFF8;
            v131 = swift_allocObject();
            (*(v126 + 32))(v131 + v129, v127, v128);
            v132 = (v131 + v130);
            *v132 = sub_20B5F7764;
            v132[1] = v125;

            v133 = v138;
            sub_20C137C94();
            v134 = *(v126 + 8);
            v134(v122, v128);
            v135 = sub_20C137CB4();
            v136 = swift_allocObject();
            *(v136 + 16) = 0;
            *(v136 + 24) = 0;
            v135(sub_20B5DF6DC, v136);

            v134(v133, v128);
            (*(v117 + 8))(v171, v145);
            (*(v172 + 8))(v173, v141);
          }
        }
      }

      else
      {
      }
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_20BA43DE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void (*a8)(char *, uint64_t, uint64_t), char a9, void (*a10)(uint64_t), uint64_t a11)
{
  v179 = a6;
  v180 = a8;
  v177 = a4;
  v178 = a5;
  v176 = a3;
  v182 = a2;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0, &unk_20C150360);
  v163 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v161 = &v138 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v162 = &v138 - v15;
  v160 = v16;
  MEMORY[0x28223BE20](v17);
  v19 = &v138 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766670, &unk_20C151580);
  MEMORY[0x28223BE20](v20 - 8);
  v168 = &v138 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BAB0, &unk_20C150570);
  v172 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v159 = &v138 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v158 = v23;
  MEMORY[0x28223BE20](v24);
  v169 = &v138 - v25;
  v166 = sub_20C1391C4();
  v165 = *(v166 - 8);
  MEMORY[0x28223BE20](v166);
  v167 = &v138 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_20C138A64();
  v170 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v171 = &v138 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766680, &unk_20C14F920);
  MEMORY[0x28223BE20](v29 - 8);
  v164 = &v138 - v30;
  v181 = sub_20C137C24();
  v174 = *(v181 - 8);
  MEMORY[0x28223BE20](v181);
  v173 = v31;
  v175 = &v138 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_20C13C554();
  v33 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v35 = (&v138 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v37 = Strong;
    v156 = v27;
    sub_20B51C88C(0, &qword_281100530, 0x277D85C78);
    *v35 = sub_20C13D374();
    (*(v33 + 104))(v35, *MEMORY[0x277D85200], v32);
    v38 = sub_20C13C584();
    (*(v33 + 8))(v35, v32);
    if (v38)
    {
      v39 = OBJC_IVAR____TtC9SeymourUI22TVIndexedBrickItemCell_tvArtworkView;
      [*&v37[OBJC_IVAR____TtC9SeymourUI22TVIndexedBrickItemCell_tvArtworkView] setContentMode_];
      v40 = *&v37[v39];
      v41 = v182;
      v42 = sub_20BE97988(v182, v40, a9 & 1);

      if ((v42 & 1) != 0 && (v146 = v22, v139 = v19, v140 = v12, v155 = a11, v157 = a10, v142 = v39, v152 = *&v37[v39], v150 = swift_allocObject(), swift_unknownObjectWeakInit(), v43 = v174, v44 = *(v174 + 16), v153 = a9 & 1, v45 = v175, v154 = v37, v46 = v181, v148 = v174 + 16, v147 = v44, v44(v175, v41, v181), v47 = *(v43 + 80), v151 = a7, v48 = (v47 + 24) & ~v47, v141 = v173 + 7, v49 = (v173 + 7 + v48) & 0xFFFFFFFFFFFFFFF8, v50 = (v49 + 23) & 0xFFFFFFFFFFFFFFF8, v51 = (v50 + 23) & 0xFFFFFFFFFFFFFFF8, v149 = (v51 + 15) & 0xFFFFFFFFFFFFFFF8, v145 = v47, v52 = swift_allocObject(), *(v52 + 16) = v150, v53 = *(v43 + 32), v54 = v45, v55 = v153, v144 = v43 + 32, v143 = v53, v53(v52 + v48, v54, v46), v56 = (v52 + v49), v57 = v177, *v56 = v176, v56[1] = v57, v58 = (v52 + v50), v59 = v179, *v58 = v178, v58[1] = v59, *(v52 + v51) = v151, v60 = v52 + v149, *v60 = v180, *(v60 + 8) = v55, v61 = (v52 + ((v51 + 31) & 0xFFFFFFFFFFFFFFF8)), v62 = v157, v63 = v155, *v61 = v157, v61[1] = v63, v64 = (v152 + OBJC_IVAR____TtC9SeymourUI13TVArtworkView_layoutHandler), v66 = *(v152 + OBJC_IVAR____TtC9SeymourUI13TVArtworkView_layoutHandler), v65 = *(v152 + OBJC_IVAR____TtC9SeymourUI13TVArtworkView_layoutHandler + 8), *v64 = sub_20BA66480, v64[1] = v52, , , v67 = v63, , , sub_20B584050(v62, v63), v68 = v65, v37 = v154, v69 = v182, sub_20B583ECC(v66, v68), , v70 = sub_20B62730C(v69, v55), v70 > 0.0) && (v72 = v71, v71 > 0.0))
      {
        v73 = v70;
        v74 = v145;
        v152 = ~v145;
        v75 = v142;
        [*&v37[v142] setStackImage_];
        v76 = *&v37[v75];
        v77 = v164;
        v78 = v69;
        v79 = v181;
        v147(v164, v69, v181);
        (*(v174 + 56))(v77, 0, 1, v79);
        v80 = OBJC_IVAR____TtC9SeymourUI13TVArtworkView_artwork;
        swift_beginAccess();
        sub_20B69AB5C(v77, v76 + v80);
        swift_endAccess();
        v81 = *&v37[v75];
        sub_20B51C88C(0, &qword_27C762070, 0x277D75348);
        v82 = v78;
        sub_20C137BC4();
        v83 = sub_20C13D5A4();
        [v81 setBackgroundColor_];

        v84 = *&v37[v75] + OBJC_IVAR____TtC9SeymourUI13TVArtworkView_pendingArtworkSize;
        *v84 = v73;
        *(v84 + 8) = v72;
        *(v84 + 16) = 0;
        v85 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v86 = v175;
        v87 = v79;
        v88 = v147;
        v147(v175, v82, v87);
        v89 = (v74 + 16) & v152;
        v90 = v67;
        v91 = (v141 + v89) & 0xFFFFFFFFFFFFFFF8;
        v92 = (v91 + 15) & 0xFFFFFFFFFFFFFFF8;
        v93 = swift_allocObject();
        v94 = v93 + v89;
        v95 = v181;
        v143(v94, v86, v181);
        *(v93 + v91) = v85;
        v96 = (v93 + v92);
        *v96 = v73;
        v96[1] = v72;
        v174 = v93;
        v97 = (v93 + ((v92 + 23) & 0xFFFFFFFFFFFFFFF8));
        v98 = v95;
        v99 = v157;
        *v97 = v157;
        v97[1] = v90;
        v88(v86, v182, v95);
        (*(v165 + 104))(v167, *MEMORY[0x277D542A8], v166);

        sub_20B584050(v99, v90);
        v100 = v171;
        sub_20C138A54();
        v101 = v168;
        sub_20B5F1AA0(v100, v168);
        v102 = v172;
        v103 = v146;
        if ((*(v172 + 48))(v101, 1, v146) == 1)
        {
          sub_20B520158(v101, &unk_27C766670, &unk_20C151580);
          v104 = sub_20BA1DB84(&OBJC_IVAR____TtC9SeymourUI22TVIndexedBrickItemCell_tvArtworkView);
          if (v99)
          {
            v99(v104);
          }

          else
          {
          }

          (*(v170 + 8))(v100, v156);
        }

        else
        {
          v105 = v98;
          v180 = *(v102 + 32);
          v106 = v169;
          v180(v169, v101, v103);
          v107 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v147(v86, v182, v105);
          v108 = (v145 + 40) & v152;
          v109 = v108 + v173;
          v110 = (v108 + v173) & 0xFFFFFFFFFFFFFFF8;
          v111 = v103;
          v112 = swift_allocObject();
          *(v112 + 2) = v107;
          v112[3] = v73;
          v112[4] = v72;
          v143(v112 + v108, v86, v105);
          *(v112 + v109) = v153;
          v113 = v112 + v110;
          v114 = v157;
          v115 = v155;
          *(v113 + 1) = v157;
          *(v113 + 2) = v115;
          v116 = swift_allocObject();
          *(v116 + 16) = sub_20BA664CC;
          *(v116 + 24) = v112;
          v117 = v172;
          v118 = v159;
          (*(v172 + 16))(v159, v106, v111);
          v119 = (*(v117 + 80) + 16) & ~*(v117 + 80);
          v120 = (v158 + v119 + 7) & 0xFFFFFFFFFFFFFFF8;
          v121 = swift_allocObject();
          v180((v121 + v119), v118, v111);
          v122 = (v121 + v120);
          *v122 = sub_20B5F7760;
          v122[1] = v116;
          sub_20B584050(v114, v115);
          v123 = v162;
          sub_20C137C94();
          v124 = swift_allocObject();
          v125 = v174;
          *(v124 + 16) = sub_20BA66498;
          *(v124 + 24) = v125;
          v126 = swift_allocObject();
          *(v126 + 16) = sub_20BA66C80;
          *(v126 + 24) = v124;
          v127 = v163;
          v128 = v161;
          v129 = v140;
          (*(v163 + 16))(v161, v123, v140);
          v130 = (*(v127 + 80) + 16) & ~*(v127 + 80);
          v131 = (v160 + v130 + 7) & 0xFFFFFFFFFFFFFFF8;
          v132 = swift_allocObject();
          (*(v127 + 32))(v132 + v130, v128, v129);
          v133 = (v132 + v131);
          *v133 = sub_20B5F7764;
          v133[1] = v126;

          v134 = v139;
          sub_20C137C94();
          v135 = *(v127 + 8);
          v135(v123, v129);
          v136 = sub_20C137CB4();
          v137 = swift_allocObject();
          *(v137 + 16) = 0;
          *(v137 + 24) = 0;
          v136(sub_20B5DF6DC, v137);

          v135(v134, v129);
          (*(v172 + 8))(v169, v146);
          (*(v170 + 8))(v171, v156);
        }
      }

      else
      {
      }
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_20BA44DA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void (*a8)(char *, uint64_t, uint64_t), char a9, void (*a10)(uint64_t), uint64_t a11)
{
  v179 = a6;
  v180 = a8;
  v177 = a4;
  v178 = a5;
  v176 = a3;
  v182 = a2;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0, &unk_20C150360);
  v163 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v161 = &v138 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v162 = &v138 - v15;
  v160 = v16;
  MEMORY[0x28223BE20](v17);
  v19 = &v138 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766670, &unk_20C151580);
  MEMORY[0x28223BE20](v20 - 8);
  v168 = &v138 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BAB0, &unk_20C150570);
  v172 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v159 = &v138 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v158 = v23;
  MEMORY[0x28223BE20](v24);
  v169 = &v138 - v25;
  v166 = sub_20C1391C4();
  v165 = *(v166 - 8);
  MEMORY[0x28223BE20](v166);
  v167 = &v138 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_20C138A64();
  v170 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v171 = &v138 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766680, &unk_20C14F920);
  MEMORY[0x28223BE20](v29 - 8);
  v164 = &v138 - v30;
  v181 = sub_20C137C24();
  v174 = *(v181 - 8);
  MEMORY[0x28223BE20](v181);
  v173 = v31;
  v175 = &v138 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_20C13C554();
  v33 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v35 = (&v138 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v37 = Strong;
    v156 = v27;
    sub_20B51C88C(0, &qword_281100530, 0x277D85C78);
    *v35 = sub_20C13D374();
    (*(v33 + 104))(v35, *MEMORY[0x277D85200], v32);
    v38 = sub_20C13C584();
    (*(v33 + 8))(v35, v32);
    if (v38)
    {
      v39 = OBJC_IVAR____TtC9SeymourUI22TVPlaylistBrickRowCell_tvArtworkView;
      [*&v37[OBJC_IVAR____TtC9SeymourUI22TVPlaylistBrickRowCell_tvArtworkView] setContentMode_];
      v40 = *&v37[v39];
      v41 = v182;
      v42 = sub_20BC32F08(v182, v40, a9 & 1);

      if ((v42 & 1) != 0 && (v146 = v22, v139 = v19, v140 = v12, v155 = a11, v157 = a10, v142 = v39, v152 = *&v37[v39], v150 = swift_allocObject(), swift_unknownObjectWeakInit(), v43 = v174, v44 = *(v174 + 16), v153 = a9 & 1, v45 = v175, v154 = v37, v46 = v181, v148 = v174 + 16, v147 = v44, v44(v175, v41, v181), v47 = *(v43 + 80), v151 = a7, v48 = (v47 + 24) & ~v47, v141 = v173 + 7, v49 = (v173 + 7 + v48) & 0xFFFFFFFFFFFFFFF8, v50 = (v49 + 23) & 0xFFFFFFFFFFFFFFF8, v51 = (v50 + 23) & 0xFFFFFFFFFFFFFFF8, v149 = (v51 + 15) & 0xFFFFFFFFFFFFFFF8, v145 = v47, v52 = swift_allocObject(), *(v52 + 16) = v150, v53 = *(v43 + 32), v54 = v45, v55 = v153, v144 = v43 + 32, v143 = v53, v53(v52 + v48, v54, v46), v56 = (v52 + v49), v57 = v177, *v56 = v176, v56[1] = v57, v58 = (v52 + v50), v59 = v179, *v58 = v178, v58[1] = v59, *(v52 + v51) = v151, v60 = v52 + v149, *v60 = v180, *(v60 + 8) = v55, v61 = (v52 + ((v51 + 31) & 0xFFFFFFFFFFFFFFF8)), v62 = v157, v63 = v155, *v61 = v157, v61[1] = v63, v64 = (v152 + OBJC_IVAR____TtC9SeymourUI13TVArtworkView_layoutHandler), v66 = *(v152 + OBJC_IVAR____TtC9SeymourUI13TVArtworkView_layoutHandler), v65 = *(v152 + OBJC_IVAR____TtC9SeymourUI13TVArtworkView_layoutHandler + 8), *v64 = sub_20BA65D74, v64[1] = v52, , , v67 = v63, , , sub_20B584050(v62, v63), v68 = v65, v37 = v154, v69 = v182, sub_20B583ECC(v66, v68), , v70 = sub_20B627318(v69, v55), v70 > 0.0) && (v72 = v71, v71 > 0.0))
      {
        v73 = v70;
        v74 = v145;
        v152 = ~v145;
        v75 = v142;
        [*&v37[v142] setStackImage_];
        v76 = *&v37[v75];
        v77 = v164;
        v78 = v69;
        v79 = v181;
        v147(v164, v69, v181);
        (*(v174 + 56))(v77, 0, 1, v79);
        v80 = OBJC_IVAR____TtC9SeymourUI13TVArtworkView_artwork;
        swift_beginAccess();
        sub_20B69AB5C(v77, v76 + v80);
        swift_endAccess();
        v81 = *&v37[v75];
        sub_20B51C88C(0, &qword_27C762070, 0x277D75348);
        v82 = v78;
        sub_20C137BC4();
        v83 = sub_20C13D5A4();
        [v81 setBackgroundColor_];

        v84 = *&v37[v75] + OBJC_IVAR____TtC9SeymourUI13TVArtworkView_pendingArtworkSize;
        *v84 = v73;
        *(v84 + 8) = v72;
        *(v84 + 16) = 0;
        v85 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v86 = v175;
        v87 = v79;
        v88 = v147;
        v147(v175, v82, v87);
        v89 = (v74 + 16) & v152;
        v90 = v67;
        v91 = (v141 + v89) & 0xFFFFFFFFFFFFFFF8;
        v92 = (v91 + 15) & 0xFFFFFFFFFFFFFFF8;
        v93 = swift_allocObject();
        v94 = v93 + v89;
        v95 = v181;
        v143(v94, v86, v181);
        *(v93 + v91) = v85;
        v96 = (v93 + v92);
        *v96 = v73;
        v96[1] = v72;
        v174 = v93;
        v97 = (v93 + ((v92 + 23) & 0xFFFFFFFFFFFFFFF8));
        v98 = v95;
        v99 = v157;
        *v97 = v157;
        v97[1] = v90;
        v88(v86, v182, v95);
        (*(v165 + 104))(v167, *MEMORY[0x277D542A8], v166);

        sub_20B584050(v99, v90);
        v100 = v171;
        sub_20C138A54();
        v101 = v168;
        sub_20B5F1AC8(v100, v168);
        v102 = v172;
        v103 = v146;
        if ((*(v172 + 48))(v101, 1, v146) == 1)
        {
          sub_20B520158(v101, &unk_27C766670, &unk_20C151580);
          v104 = sub_20BA1DB84(&OBJC_IVAR____TtC9SeymourUI22TVPlaylistBrickRowCell_tvArtworkView);
          if (v99)
          {
            v99(v104);
          }

          else
          {
          }

          (*(v170 + 8))(v100, v156);
        }

        else
        {
          v105 = v98;
          v180 = *(v102 + 32);
          v106 = v169;
          v180(v169, v101, v103);
          v107 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v147(v86, v182, v105);
          v108 = (v145 + 40) & v152;
          v109 = v108 + v173;
          v110 = (v108 + v173) & 0xFFFFFFFFFFFFFFF8;
          v111 = v103;
          v112 = swift_allocObject();
          *(v112 + 2) = v107;
          v112[3] = v73;
          v112[4] = v72;
          v143(v112 + v108, v86, v105);
          *(v112 + v109) = v153;
          v113 = v112 + v110;
          v114 = v157;
          v115 = v155;
          *(v113 + 1) = v157;
          *(v113 + 2) = v115;
          v116 = swift_allocObject();
          *(v116 + 16) = sub_20BA65DC0;
          *(v116 + 24) = v112;
          v117 = v172;
          v118 = v159;
          (*(v172 + 16))(v159, v106, v111);
          v119 = (*(v117 + 80) + 16) & ~*(v117 + 80);
          v120 = (v158 + v119 + 7) & 0xFFFFFFFFFFFFFFF8;
          v121 = swift_allocObject();
          v180((v121 + v119), v118, v111);
          v122 = (v121 + v120);
          *v122 = sub_20B5F7760;
          v122[1] = v116;
          sub_20B584050(v114, v115);
          v123 = v162;
          sub_20C137C94();
          v124 = swift_allocObject();
          v125 = v174;
          *(v124 + 16) = sub_20BA65D8C;
          *(v124 + 24) = v125;
          v126 = swift_allocObject();
          *(v126 + 16) = sub_20BA66C80;
          *(v126 + 24) = v124;
          v127 = v163;
          v128 = v161;
          v129 = v140;
          (*(v163 + 16))(v161, v123, v140);
          v130 = (*(v127 + 80) + 16) & ~*(v127 + 80);
          v131 = (v160 + v130 + 7) & 0xFFFFFFFFFFFFFFF8;
          v132 = swift_allocObject();
          (*(v127 + 32))(v132 + v130, v128, v129);
          v133 = (v132 + v131);
          *v133 = sub_20B5F7764;
          v133[1] = v126;

          v134 = v139;
          sub_20C137C94();
          v135 = *(v127 + 8);
          v135(v123, v129);
          v136 = sub_20C137CB4();
          v137 = swift_allocObject();
          *(v137 + 16) = 0;
          *(v137 + 24) = 0;
          v136(sub_20B5DF6DC, v137);

          v135(v134, v129);
          (*(v172 + 8))(v169, v146);
          (*(v170 + 8))(v171, v156);
        }
      }

      else
      {
      }
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_20BA45D64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t (*)(), uint64_t, uint64_t, void *), void (*a8)(char *, uint64_t, uint64_t), unsigned __int8 a9, void (*a10)(uint64_t), uint64_t a11)
{
  v180 = a6;
  v181 = a8;
  v178 = a4;
  v179 = a5;
  v177 = a3;
  v184 = a2;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0, &unk_20C150360);
  v165 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v163 = &v137 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v164 = &v137 - v15;
  v162 = v16;
  MEMORY[0x28223BE20](v17);
  v19 = &v137 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766670, &unk_20C151580);
  MEMORY[0x28223BE20](v20 - 8);
  v170 = &v137 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BAB0, &unk_20C150570);
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v161 = &v137 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v160 = v24;
  MEMORY[0x28223BE20](v25);
  v171 = &v137 - v26;
  v168 = sub_20C1391C4();
  v167 = *(v168 - 8);
  MEMORY[0x28223BE20](v168);
  v169 = &v137 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_20C138A64();
  v172 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v173 = &v137 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766680, &unk_20C14F920);
  MEMORY[0x28223BE20](v30 - 8);
  v166 = &v137 - v31;
  v32 = sub_20C137C24();
  v175 = *(v32 - 8);
  v176 = v32;
  MEMORY[0x28223BE20](v32);
  v174 = v33;
  v182 = &v137 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_20C13C554();
  v35 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v37 = (&v137 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v183 = Strong;
    sub_20B51C88C(0, &qword_281100530, 0x277D85C78);
    *v37 = sub_20C13D374();
    (*(v35 + 104))(v37, *MEMORY[0x277D85200], v34);
    v39 = sub_20C13C584();
    (*(v35 + 8))(v37, v34);
    if (v39)
    {
      v40 = v183;
      v41 = &v183[OBJC_IVAR____TtC9SeymourUI22TVProgramBrickItemCell_artworkView];
      [*&v183[OBJC_IVAR____TtC9SeymourUI22TVProgramBrickItemCell_artworkView] setContentMode_];
      v42 = *v41;
      v43 = *(v41 + 1);
      LODWORD(v159) = a9;
      v44 = v184;
      if (sub_20BA640CC(v184, v42, v43, a9 & 1))
      {
        v144 = v23;
        v141 = v28;
        v145 = v22;
        v138 = v19;
        v139 = v12;
        v157 = a11;
        v158 = a10;
        v151 = *v41;
        v149 = *(v41 + 1);
        ObjectType = swift_getObjectType();
        v147 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v45 = v175;
        v46 = *(v175 + 16);
        v154 = a9 & 1;
        v148 = a7;
        v152 = v41;
        v47 = v182;
        v48 = v176;
        v155 = v175 + 16;
        v153 = v46;
        v46(v182, v44, v176);
        v49 = *(v45 + 80);
        v50 = (v49 + 24) & ~v49;
        v140 = v174 + 7;
        v51 = (v174 + 7 + v50) & 0xFFFFFFFFFFFFFFF8;
        v52 = (v51 + 23) & 0xFFFFFFFFFFFFFFF8;
        v53 = (v52 + 23) & 0xFFFFFFFFFFFFFFF8;
        v146 = (v53 + 15) & 0xFFFFFFFFFFFFFFF8;
        v156 = v49;
        v54 = swift_allocObject();
        *(v54 + 16) = v147;
        v143 = *(v45 + 32);
        v142 = v45 + 32;
        v143(v54 + v50, v47, v48);
        v55 = (v54 + v51);
        v56 = v178;
        *v55 = v177;
        v55[1] = v56;
        v57 = (v54 + v52);
        v58 = v180;
        *v57 = v179;
        v57[1] = v58;
        *(v54 + v53) = v148;
        v59 = v54 + v146;
        *v59 = v181;
        *(v59 + 8) = v154;
        v60 = (v54 + ((v53 + 31) & 0xFFFFFFFFFFFFFFF8));
        v61 = v158;
        v62 = v157;
        *v60 = v158;
        v60[1] = v62;
        v63 = v149;
        v148 = v149[19];

        sub_20B584050(v61, v62);
        v148(sub_20BA66294, v54, ObjectType, v63);

        if (v159)
        {
          v64 = [objc_opt_self() mainScreen];
          [v64 scale];
          v66 = v65;

          v67 = sub_20C137BF4() / v66;
          v68 = sub_20C137C04() / v66;
          v69 = v152;
        }

        else
        {
          v69 = v152;
          [*v152 bounds];
          v67 = v70;
          v68 = v71;
        }

        v72 = v182;
        v73 = v153;
        if (v67 <= 0.0 || v68 <= 0.0)
        {
        }

        else
        {
          v159 = ~v156;
          v74 = v69[1];
          v75 = swift_getObjectType();
          v74[15](0, v75, v74);
          v76 = v69[1];
          v77 = swift_getObjectType();
          v78 = v166;
          v79 = v176;
          v73(v166, v184, v176);
          (*(v175 + 56))(v78, 0, 1, v79);
          v76[2](v78, v77, v76);
          v80 = *v69;
          sub_20B51C88C(0, &qword_27C762070, 0x277D75348);
          sub_20C137BC4();
          v81 = sub_20C13D5A4();
          [v80 setBackgroundColor_];

          v82 = v69[1];
          v83 = swift_getObjectType();
          v82[22](COERCE_DOUBLE(*&v67), COERCE_DOUBLE(*&v68), 0, v83, v82);
          v84 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v73(v72, v184, v79);
          v85 = (v156 + 16) & v159;
          v86 = v73;
          v87 = (v140 + v85) & 0xFFFFFFFFFFFFFFF8;
          v88 = (v87 + 15) & 0xFFFFFFFFFFFFFFF8;
          v89 = swift_allocObject();
          v143(v89 + v85, v72, v79);
          *(v89 + v87) = v84;
          v90 = (v89 + v88);
          v91 = v184;
          *v90 = v67;
          v90[1] = v68;
          v175 = v89;
          v92 = (v89 + ((v88 + 23) & 0xFFFFFFFFFFFFFFF8));
          v93 = v79;
          v94 = v158;
          v95 = v157;
          *v92 = v158;
          v92[1] = v95;
          v86(v72, v91, v79);
          (*(v167 + 104))(v169, *MEMORY[0x277D542A8], v168);

          sub_20B584050(v94, v95);
          v96 = v173;
          v97 = v144;
          v98 = v183;
          sub_20C138A54();
          v99 = v170;
          sub_20B5F1AF0(v96, v170);
          v100 = v145;
          if ((*(v97 + 48))(v99, 1, v145) == 1)
          {
            sub_20B520158(v99, &unk_27C766670, &unk_20C151580);
            v101 = sub_20BA1DD44(&OBJC_IVAR____TtC9SeymourUI22TVProgramBrickItemCell_artworkView);
            if (v158)
            {
              v158(v101);
            }

            else
            {
            }

            (*(v172 + 8))(v96, v141);
          }

          else
          {
            v102 = v93;
            v181 = *(v97 + 32);
            v103 = v171;
            v181(v171, v99, v100);
            v104 = swift_allocObject();
            swift_unknownObjectWeakInit();
            v153(v72, v91, v102);
            v105 = (v156 + 40) & v159;
            v106 = v105 + v174;
            v107 = (v105 + v174) & 0xFFFFFFFFFFFFFFF8;
            v108 = swift_allocObject();
            *(v108 + 16) = v104;
            *(v108 + 24) = v67;
            *(v108 + 32) = v68;
            v143(v108 + v105, v72, v102);
            *(v108 + v106) = v154;
            v109 = v108 + v107;
            v110 = v158;
            v111 = v157;
            *(v109 + 8) = v158;
            *(v109 + 16) = v111;
            v112 = swift_allocObject();
            *(v112 + 16) = sub_20BA662E0;
            *(v112 + 24) = v108;
            v113 = v144;
            v114 = v161;
            v115 = v103;
            v116 = v145;
            (*(v144 + 16))(v161, v115, v145);
            v117 = v113;
            v118 = (*(v113 + 80) + 16) & ~*(v113 + 80);
            v119 = (v160 + v118 + 7) & 0xFFFFFFFFFFFFFFF8;
            v120 = swift_allocObject();
            v181((v120 + v118), v114, v116);
            v121 = (v120 + v119);
            *v121 = sub_20B5F7760;
            v121[1] = v112;
            sub_20B584050(v110, v111);
            v122 = v164;
            sub_20C137C94();
            v123 = swift_allocObject();
            v124 = v175;
            *(v123 + 16) = sub_20BA662AC;
            *(v123 + 24) = v124;
            v125 = swift_allocObject();
            *(v125 + 16) = sub_20BA66C80;
            *(v125 + 24) = v123;
            v126 = v165;
            v127 = v163;
            v128 = v139;
            (*(v165 + 16))(v163, v122, v139);
            v129 = (*(v126 + 80) + 16) & ~*(v126 + 80);
            v130 = (v162 + v129 + 7) & 0xFFFFFFFFFFFFFFF8;
            v131 = swift_allocObject();
            (*(v126 + 32))(v131 + v129, v127, v128);
            v132 = (v131 + v130);
            *v132 = sub_20B5F7764;
            v132[1] = v125;

            v133 = v138;
            sub_20C137C94();
            v134 = *(v126 + 8);
            v134(v122, v128);
            v135 = sub_20C137CB4();
            v136 = swift_allocObject();
            *(v136 + 16) = 0;
            *(v136 + 24) = 0;
            v135(sub_20B5DF6DC, v136);

            v134(v133, v128);
            (*(v117 + 8))(v171, v145);
            (*(v172 + 8))(v173, v141);
          }
        }
      }

      else
      {
      }
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_20BA46DEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void (*a8)(char *, uint64_t, uint64_t), char a9, void (*a10)(uint64_t), uint64_t a11)
{
  v179 = a6;
  v180 = a8;
  v177 = a4;
  v178 = a5;
  v176 = a3;
  v182 = a2;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0, &unk_20C150360);
  v163 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v161 = &v138 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v162 = &v138 - v15;
  v160 = v16;
  MEMORY[0x28223BE20](v17);
  v19 = &v138 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766670, &unk_20C151580);
  MEMORY[0x28223BE20](v20 - 8);
  v168 = &v138 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BAB0, &unk_20C150570);
  v172 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v159 = &v138 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v158 = v23;
  MEMORY[0x28223BE20](v24);
  v169 = &v138 - v25;
  v166 = sub_20C1391C4();
  v165 = *(v166 - 8);
  MEMORY[0x28223BE20](v166);
  v167 = &v138 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_20C138A64();
  v170 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v171 = &v138 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766680, &unk_20C14F920);
  MEMORY[0x28223BE20](v29 - 8);
  v164 = &v138 - v30;
  v181 = sub_20C137C24();
  v174 = *(v181 - 8);
  MEMORY[0x28223BE20](v181);
  v173 = v31;
  v175 = &v138 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_20C13C554();
  v33 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v35 = (&v138 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v37 = Strong;
    v156 = v27;
    sub_20B51C88C(0, &qword_281100530, 0x277D85C78);
    *v35 = sub_20C13D374();
    (*(v33 + 104))(v35, *MEMORY[0x277D85200], v32);
    v38 = sub_20C13C584();
    (*(v33 + 8))(v35, v32);
    if (v38)
    {
      v39 = OBJC_IVAR____TtC9SeymourUI22TVStandardBrickRowCell_tvArtworkView;
      [*&v37[OBJC_IVAR____TtC9SeymourUI22TVStandardBrickRowCell_tvArtworkView] setContentMode_];
      v40 = *&v37[v39];
      v41 = v182;
      v42 = sub_20BC8E3D8(v182, v40, a9 & 1);

      if ((v42 & 1) != 0 && (v146 = v22, v139 = v19, v140 = v12, v155 = a11, v157 = a10, v142 = v39, v152 = *&v37[v39], v150 = swift_allocObject(), swift_unknownObjectWeakInit(), v43 = v174, v44 = *(v174 + 16), v153 = a9 & 1, v45 = v175, v154 = v37, v46 = v181, v148 = v174 + 16, v147 = v44, v44(v175, v41, v181), v47 = *(v43 + 80), v151 = a7, v48 = (v47 + 24) & ~v47, v141 = v173 + 7, v49 = (v173 + 7 + v48) & 0xFFFFFFFFFFFFFFF8, v50 = (v49 + 23) & 0xFFFFFFFFFFFFFFF8, v51 = (v50 + 23) & 0xFFFFFFFFFFFFFFF8, v149 = (v51 + 15) & 0xFFFFFFFFFFFFFFF8, v145 = v47, v52 = swift_allocObject(), *(v52 + 16) = v150, v53 = *(v43 + 32), v54 = v45, v55 = v153, v144 = v43 + 32, v143 = v53, v53(v52 + v48, v54, v46), v56 = (v52 + v49), v57 = v177, *v56 = v176, v56[1] = v57, v58 = (v52 + v50), v59 = v179, *v58 = v178, v58[1] = v59, *(v52 + v51) = v151, v60 = v52 + v149, *v60 = v180, *(v60 + 8) = v55, v61 = (v52 + ((v51 + 31) & 0xFFFFFFFFFFFFFFF8)), v62 = v157, v63 = v155, *v61 = v157, v61[1] = v63, v64 = (v152 + OBJC_IVAR____TtC9SeymourUI13TVArtworkView_layoutHandler), v66 = *(v152 + OBJC_IVAR____TtC9SeymourUI13TVArtworkView_layoutHandler), v65 = *(v152 + OBJC_IVAR____TtC9SeymourUI13TVArtworkView_layoutHandler + 8), *v64 = sub_20BA65E18, v64[1] = v52, , , v67 = v63, , , sub_20B584050(v62, v63), v68 = v65, v37 = v154, v69 = v182, sub_20B583ECC(v66, v68), , v70 = sub_20B627324(v69, v55), v70 > 0.0) && (v72 = v71, v71 > 0.0))
      {
        v73 = v70;
        v74 = v145;
        v152 = ~v145;
        v75 = v142;
        [*&v37[v142] setStackImage_];
        v76 = *&v37[v75];
        v77 = v164;
        v78 = v69;
        v79 = v181;
        v147(v164, v69, v181);
        (*(v174 + 56))(v77, 0, 1, v79);
        v80 = OBJC_IVAR____TtC9SeymourUI13TVArtworkView_artwork;
        swift_beginAccess();
        sub_20B69AB5C(v77, v76 + v80);
        swift_endAccess();
        v81 = *&v37[v75];
        sub_20B51C88C(0, &qword_27C762070, 0x277D75348);
        v82 = v78;
        sub_20C137BC4();
        v83 = sub_20C13D5A4();
        [v81 setBackgroundColor_];

        v84 = *&v37[v75] + OBJC_IVAR____TtC9SeymourUI13TVArtworkView_pendingArtworkSize;
        *v84 = v73;
        *(v84 + 8) = v72;
        *(v84 + 16) = 0;
        v85 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v86 = v175;
        v87 = v79;
        v88 = v147;
        v147(v175, v82, v87);
        v89 = (v74 + 16) & v152;
        v90 = v67;
        v91 = (v141 + v89) & 0xFFFFFFFFFFFFFFF8;
        v92 = (v91 + 15) & 0xFFFFFFFFFFFFFFF8;
        v93 = swift_allocObject();
        v94 = v93 + v89;
        v95 = v181;
        v143(v94, v86, v181);
        *(v93 + v91) = v85;
        v96 = (v93 + v92);
        *v96 = v73;
        v96[1] = v72;
        v174 = v93;
        v97 = (v93 + ((v92 + 23) & 0xFFFFFFFFFFFFFFF8));
        v98 = v95;
        v99 = v157;
        *v97 = v157;
        v97[1] = v90;
        v88(v86, v182, v95);
        (*(v165 + 104))(v167, *MEMORY[0x277D542A8], v166);

        sub_20B584050(v99, v90);
        v100 = v171;
        sub_20C138A54();
        v101 = v168;
        sub_20B5F1B18(v100, v168);
        v102 = v172;
        v103 = v146;
        if ((*(v172 + 48))(v101, 1, v146) == 1)
        {
          sub_20B520158(v101, &unk_27C766670, &unk_20C151580);
          v104 = sub_20BA1DB84(&OBJC_IVAR____TtC9SeymourUI22TVStandardBrickRowCell_tvArtworkView);
          if (v99)
          {
            v99(v104);
          }

          else
          {
          }

          (*(v170 + 8))(v100, v156);
        }

        else
        {
          v105 = v98;
          v180 = *(v102 + 32);
          v106 = v169;
          v180(v169, v101, v103);
          v107 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v147(v86, v182, v105);
          v108 = (v145 + 40) & v152;
          v109 = v108 + v173;
          v110 = (v108 + v173) & 0xFFFFFFFFFFFFFFF8;
          v111 = v103;
          v112 = swift_allocObject();
          *(v112 + 2) = v107;
          v112[3] = v73;
          v112[4] = v72;
          v143(v112 + v108, v86, v105);
          *(v112 + v109) = v153;
          v113 = v112 + v110;
          v114 = v157;
          v115 = v155;
          *(v113 + 1) = v157;
          *(v113 + 2) = v115;
          v116 = swift_allocObject();
          *(v116 + 16) = sub_20BA65E64;
          *(v116 + 24) = v112;
          v117 = v172;
          v118 = v159;
          (*(v172 + 16))(v159, v106, v111);
          v119 = (*(v117 + 80) + 16) & ~*(v117 + 80);
          v120 = (v158 + v119 + 7) & 0xFFFFFFFFFFFFFFF8;
          v121 = swift_allocObject();
          v180((v121 + v119), v118, v111);
          v122 = (v121 + v120);
          *v122 = sub_20B5F7760;
          v122[1] = v116;
          sub_20B584050(v114, v115);
          v123 = v162;
          sub_20C137C94();
          v124 = swift_allocObject();
          v125 = v174;
          *(v124 + 16) = sub_20BA65E30;
          *(v124 + 24) = v125;
          v126 = swift_allocObject();
          *(v126 + 16) = sub_20BA66C80;
          *(v126 + 24) = v124;
          v127 = v163;
          v128 = v161;
          v129 = v140;
          (*(v163 + 16))(v161, v123, v140);
          v130 = (*(v127 + 80) + 16) & ~*(v127 + 80);
          v131 = (v160 + v130 + 7) & 0xFFFFFFFFFFFFFFF8;
          v132 = swift_allocObject();
          (*(v127 + 32))(v132 + v130, v128, v129);
          v133 = (v132 + v131);
          *v133 = sub_20B5F7764;
          v133[1] = v126;

          v134 = v139;
          sub_20C137C94();
          v135 = *(v127 + 8);
          v135(v123, v129);
          v136 = sub_20C137CB4();
          v137 = swift_allocObject();
          *(v137 + 16) = 0;
          *(v137 + 24) = 0;
          v136(sub_20B5DF6DC, v137);

          v135(v134, v129);
          (*(v172 + 8))(v169, v146);
          (*(v170 + 8))(v171, v156);
        }
      }

      else
      {
      }
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_20BA47DAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t (*)(), uint64_t, uint64_t, void *), void (*a8)(char *, uint64_t, uint64_t), unsigned __int8 a9, void (*a10)(uint64_t), uint64_t a11)
{
  v180 = a6;
  v181 = a8;
  v178 = a4;
  v179 = a5;
  v177 = a3;
  v184 = a2;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0, &unk_20C150360);
  v165 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v163 = &v137 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v164 = &v137 - v15;
  v162 = v16;
  MEMORY[0x28223BE20](v17);
  v19 = &v137 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766670, &unk_20C151580);
  MEMORY[0x28223BE20](v20 - 8);
  v170 = &v137 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BAB0, &unk_20C150570);
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v161 = &v137 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v160 = v24;
  MEMORY[0x28223BE20](v25);
  v171 = &v137 - v26;
  v168 = sub_20C1391C4();
  v167 = *(v168 - 8);
  MEMORY[0x28223BE20](v168);
  v169 = &v137 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_20C138A64();
  v172 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v173 = &v137 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766680, &unk_20C14F920);
  MEMORY[0x28223BE20](v30 - 8);
  v166 = &v137 - v31;
  v32 = sub_20C137C24();
  v175 = *(v32 - 8);
  v176 = v32;
  MEMORY[0x28223BE20](v32);
  v174 = v33;
  v182 = &v137 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_20C13C554();
  v35 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v37 = (&v137 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v183 = Strong;
    sub_20B51C88C(0, &qword_281100530, 0x277D85C78);
    *v37 = sub_20C13D374();
    (*(v35 + 104))(v37, *MEMORY[0x277D85200], v34);
    v39 = sub_20C13C584();
    (*(v35 + 8))(v37, v34);
    if (v39)
    {
      v40 = v183;
      v41 = &v183[OBJC_IVAR____TtC9SeymourUI23ProgramDetailHeaderCell_artworkView];
      [*&v183[OBJC_IVAR____TtC9SeymourUI23ProgramDetailHeaderCell_artworkView] setContentMode_];
      v42 = *v41;
      v43 = *(v41 + 1);
      LODWORD(v159) = a9;
      v44 = v184;
      if (sub_20BA640CC(v184, v42, v43, a9 & 1))
      {
        v144 = v23;
        v141 = v28;
        v145 = v22;
        v138 = v19;
        v139 = v12;
        v157 = a11;
        v158 = a10;
        v151 = *v41;
        v149 = *(v41 + 1);
        ObjectType = swift_getObjectType();
        v147 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v45 = v175;
        v46 = *(v175 + 16);
        v154 = a9 & 1;
        v148 = a7;
        v152 = v41;
        v47 = v182;
        v48 = v176;
        v155 = v175 + 16;
        v153 = v46;
        v46(v182, v44, v176);
        v49 = *(v45 + 80);
        v50 = (v49 + 24) & ~v49;
        v140 = v174 + 7;
        v51 = (v174 + 7 + v50) & 0xFFFFFFFFFFFFFFF8;
        v52 = (v51 + 23) & 0xFFFFFFFFFFFFFFF8;
        v53 = (v52 + 23) & 0xFFFFFFFFFFFFFFF8;
        v146 = (v53 + 15) & 0xFFFFFFFFFFFFFFF8;
        v156 = v49;
        v54 = swift_allocObject();
        *(v54 + 16) = v147;
        v143 = *(v45 + 32);
        v142 = v45 + 32;
        v143(v54 + v50, v47, v48);
        v55 = (v54 + v51);
        v56 = v178;
        *v55 = v177;
        v55[1] = v56;
        v57 = (v54 + v52);
        v58 = v180;
        *v57 = v179;
        v57[1] = v58;
        *(v54 + v53) = v148;
        v59 = v54 + v146;
        *v59 = v181;
        *(v59 + 8) = v154;
        v60 = (v54 + ((v53 + 31) & 0xFFFFFFFFFFFFFFF8));
        v61 = v158;
        v62 = v157;
        *v60 = v158;
        v60[1] = v62;
        v63 = v149;
        v148 = v149[19];

        sub_20B584050(v61, v62);
        v148(sub_20BA65854, v54, ObjectType, v63);

        if (v159)
        {
          v64 = [objc_opt_self() mainScreen];
          [v64 scale];
          v66 = v65;

          v67 = sub_20C137BF4() / v66;
          v68 = sub_20C137C04() / v66;
          v69 = v152;
        }

        else
        {
          v69 = v152;
          [*v152 bounds];
          v67 = v70;
          v68 = v71;
        }

        v72 = v182;
        v73 = v153;
        if (v67 <= 0.0 || v68 <= 0.0)
        {
        }

        else
        {
          v159 = ~v156;
          v74 = v69[1];
          v75 = swift_getObjectType();
          v74[15](0, v75, v74);
          v76 = v69[1];
          v77 = swift_getObjectType();
          v78 = v166;
          v79 = v176;
          v73(v166, v184, v176);
          (*(v175 + 56))(v78, 0, 1, v79);
          v76[2](v78, v77, v76);
          v80 = *v69;
          sub_20B51C88C(0, &qword_27C762070, 0x277D75348);
          sub_20C137BC4();
          v81 = sub_20C13D5A4();
          [v80 setBackgroundColor_];

          v82 = v69[1];
          v83 = swift_getObjectType();
          v82[22](COERCE_DOUBLE(*&v67), COERCE_DOUBLE(*&v68), 0, v83, v82);
          v84 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v73(v72, v184, v79);
          v85 = (v156 + 16) & v159;
          v86 = v73;
          v87 = (v140 + v85) & 0xFFFFFFFFFFFFFFF8;
          v88 = (v87 + 15) & 0xFFFFFFFFFFFFFFF8;
          v89 = swift_allocObject();
          v143(v89 + v85, v72, v79);
          *(v89 + v87) = v84;
          v90 = (v89 + v88);
          v91 = v184;
          *v90 = v67;
          v90[1] = v68;
          v175 = v89;
          v92 = (v89 + ((v88 + 23) & 0xFFFFFFFFFFFFFFF8));
          v93 = v79;
          v94 = v158;
          v95 = v157;
          *v92 = v158;
          v92[1] = v95;
          v86(v72, v91, v79);
          (*(v167 + 104))(v169, *MEMORY[0x277D542A8], v168);

          sub_20B584050(v94, v95);
          v96 = v173;
          v97 = v144;
          v98 = v183;
          sub_20C138A54();
          v99 = v170;
          sub_20B5F1B40(v96, v170);
          v100 = v145;
          if ((*(v97 + 48))(v99, 1, v145) == 1)
          {
            sub_20B520158(v99, &unk_27C766670, &unk_20C151580);
            v101 = sub_20BA1DD44(&OBJC_IVAR____TtC9SeymourUI23ProgramDetailHeaderCell_artworkView);
            if (v158)
            {
              v158(v101);
            }

            else
            {
            }

            (*(v172 + 8))(v96, v141);
          }

          else
          {
            v102 = v93;
            v181 = *(v97 + 32);
            v103 = v171;
            v181(v171, v99, v100);
            v104 = swift_allocObject();
            swift_unknownObjectWeakInit();
            v153(v72, v91, v102);
            v105 = (v156 + 40) & v159;
            v106 = v105 + v174;
            v107 = (v105 + v174) & 0xFFFFFFFFFFFFFFF8;
            v108 = swift_allocObject();
            *(v108 + 16) = v104;
            *(v108 + 24) = v67;
            *(v108 + 32) = v68;
            v143(v108 + v105, v72, v102);
            *(v108 + v106) = v154;
            v109 = v108 + v107;
            v110 = v158;
            v111 = v157;
            *(v109 + 8) = v158;
            *(v109 + 16) = v111;
            v112 = swift_allocObject();
            *(v112 + 16) = sub_20BA658A0;
            *(v112 + 24) = v108;
            v113 = v144;
            v114 = v161;
            v115 = v103;
            v116 = v145;
            (*(v144 + 16))(v161, v115, v145);
            v117 = v113;
            v118 = (*(v113 + 80) + 16) & ~*(v113 + 80);
            v119 = (v160 + v118 + 7) & 0xFFFFFFFFFFFFFFF8;
            v120 = swift_allocObject();
            v181((v120 + v118), v114, v116);
            v121 = (v120 + v119);
            *v121 = sub_20B5F7760;
            v121[1] = v112;
            sub_20B584050(v110, v111);
            v122 = v164;
            sub_20C137C94();
            v123 = swift_allocObject();
            v124 = v175;
            *(v123 + 16) = sub_20BA6586C;
            *(v123 + 24) = v124;
            v125 = swift_allocObject();
            *(v125 + 16) = sub_20BA66C80;
            *(v125 + 24) = v123;
            v126 = v165;
            v127 = v163;
            v128 = v139;
            (*(v165 + 16))(v163, v122, v139);
            v129 = (*(v126 + 80) + 16) & ~*(v126 + 80);
            v130 = (v162 + v129 + 7) & 0xFFFFFFFFFFFFFFF8;
            v131 = swift_allocObject();
            (*(v126 + 32))(v131 + v129, v127, v128);
            v132 = (v131 + v130);
            *v132 = sub_20B5F7764;
            v132[1] = v125;

            v133 = v138;
            sub_20C137C94();
            v134 = *(v126 + 8);
            v134(v122, v128);
            v135 = sub_20C137CB4();
            v136 = swift_allocObject();
            *(v136 + 16) = 0;
            *(v136 + 24) = 0;
            v135(sub_20B5DF6DC, v136);

            v134(v133, v128);
            (*(v117 + 8))(v171, v145);
            (*(v172 + 8))(v173, v141);
          }
        }
      }

      else
      {
      }
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_20BA48E34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t (*)(), uint64_t, uint64_t, void *), void (*a8)(char *, uint64_t, uint64_t), unsigned __int8 a9, void (*a10)(uint64_t), uint64_t a11)
{
  v180 = a6;
  v181 = a8;
  v178 = a4;
  v179 = a5;
  v177 = a3;
  v184 = a2;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0, &unk_20C150360);
  v165 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v163 = &v137 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v164 = &v137 - v15;
  v162 = v16;
  MEMORY[0x28223BE20](v17);
  v19 = &v137 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766670, &unk_20C151580);
  MEMORY[0x28223BE20](v20 - 8);
  v170 = &v137 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BAB0, &unk_20C150570);
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v161 = &v137 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v160 = v24;
  MEMORY[0x28223BE20](v25);
  v171 = &v137 - v26;
  v168 = sub_20C1391C4();
  v167 = *(v168 - 8);
  MEMORY[0x28223BE20](v168);
  v169 = &v137 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_20C138A64();
  v172 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v173 = &v137 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766680, &unk_20C14F920);
  MEMORY[0x28223BE20](v30 - 8);
  v166 = &v137 - v31;
  v32 = sub_20C137C24();
  v175 = *(v32 - 8);
  v176 = v32;
  MEMORY[0x28223BE20](v32);
  v174 = v33;
  v182 = &v137 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_20C13C554();
  v35 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v37 = (&v137 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v183 = Strong;
    sub_20B51C88C(0, &qword_281100530, 0x277D85C78);
    *v37 = sub_20C13D374();
    (*(v35 + 104))(v37, *MEMORY[0x277D85200], v34);
    v39 = sub_20C13C584();
    (*(v35 + 8))(v37, v34);
    if (v39)
    {
      v40 = v183;
      v41 = &v183[OBJC_IVAR____TtC9SeymourUI23RoundedDetailHeaderCell_artworkView];
      [*&v183[OBJC_IVAR____TtC9SeymourUI23RoundedDetailHeaderCell_artworkView] setContentMode_];
      v42 = *v41;
      v43 = *(v41 + 1);
      LODWORD(v159) = a9;
      v44 = v184;
      if (sub_20BA640CC(v184, v42, v43, a9 & 1))
      {
        v144 = v23;
        v141 = v28;
        v145 = v22;
        v138 = v19;
        v139 = v12;
        v157 = a11;
        v158 = a10;
        v151 = *v41;
        v149 = *(v41 + 1);
        ObjectType = swift_getObjectType();
        v147 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v45 = v175;
        v46 = *(v175 + 16);
        v154 = a9 & 1;
        v148 = a7;
        v152 = v41;
        v47 = v182;
        v48 = v176;
        v155 = v175 + 16;
        v153 = v46;
        v46(v182, v44, v176);
        v49 = *(v45 + 80);
        v50 = (v49 + 24) & ~v49;
        v140 = v174 + 7;
        v51 = (v174 + 7 + v50) & 0xFFFFFFFFFFFFFFF8;
        v52 = (v51 + 23) & 0xFFFFFFFFFFFFFFF8;
        v53 = (v52 + 23) & 0xFFFFFFFFFFFFFFF8;
        v146 = (v53 + 15) & 0xFFFFFFFFFFFFFFF8;
        v156 = v49;
        v54 = swift_allocObject();
        *(v54 + 16) = v147;
        v143 = *(v45 + 32);
        v142 = v45 + 32;
        v143(v54 + v50, v47, v48);
        v55 = (v54 + v51);
        v56 = v178;
        *v55 = v177;
        v55[1] = v56;
        v57 = (v54 + v52);
        v58 = v180;
        *v57 = v179;
        v57[1] = v58;
        *(v54 + v53) = v148;
        v59 = v54 + v146;
        *v59 = v181;
        *(v59 + 8) = v154;
        v60 = (v54 + ((v53 + 31) & 0xFFFFFFFFFFFFFFF8));
        v61 = v158;
        v62 = v157;
        *v60 = v158;
        v60[1] = v62;
        v63 = v149;
        v148 = v149[19];

        sub_20B584050(v61, v62);
        v148(sub_20BA6570C, v54, ObjectType, v63);

        if (v159)
        {
          v64 = [objc_opt_self() mainScreen];
          [v64 scale];
          v66 = v65;

          v67 = sub_20C137BF4() / v66;
          v68 = sub_20C137C04() / v66;
          v69 = v152;
        }

        else
        {
          v69 = v152;
          [*v152 bounds];
          v67 = v70;
          v68 = v71;
        }

        v72 = v182;
        v73 = v153;
        if (v67 <= 0.0 || v68 <= 0.0)
        {
        }

        else
        {
          v159 = ~v156;
          v74 = v69[1];
          v75 = swift_getObjectType();
          v74[15](0, v75, v74);
          v76 = v69[1];
          v77 = swift_getObjectType();
          v78 = v166;
          v79 = v176;
          v73(v166, v184, v176);
          (*(v175 + 56))(v78, 0, 1, v79);
          v76[2](v78, v77, v76);
          v80 = *v69;
          sub_20B51C88C(0, &qword_27C762070, 0x277D75348);
          sub_20C137BC4();
          v81 = sub_20C13D5A4();
          [v80 setBackgroundColor_];

          v82 = v69[1];
          v83 = swift_getObjectType();
          v82[22](COERCE_DOUBLE(*&v67), COERCE_DOUBLE(*&v68), 0, v83, v82);
          v84 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v73(v72, v184, v79);
          v85 = (v156 + 16) & v159;
          v86 = v73;
          v87 = (v140 + v85) & 0xFFFFFFFFFFFFFFF8;
          v88 = (v87 + 15) & 0xFFFFFFFFFFFFFFF8;
          v89 = swift_allocObject();
          v143(v89 + v85, v72, v79);
          *(v89 + v87) = v84;
          v90 = (v89 + v88);
          v91 = v184;
          *v90 = v67;
          v90[1] = v68;
          v175 = v89;
          v92 = (v89 + ((v88 + 23) & 0xFFFFFFFFFFFFFFF8));
          v93 = v79;
          v94 = v158;
          v95 = v157;
          *v92 = v158;
          v92[1] = v95;
          v86(v72, v91, v79);
          (*(v167 + 104))(v169, *MEMORY[0x277D542A8], v168);

          sub_20B584050(v94, v95);
          v96 = v173;
          v97 = v144;
          v98 = v183;
          sub_20C138A54();
          v99 = v170;
          sub_20B5F1B68(v96, v170);
          v100 = v145;
          if ((*(v97 + 48))(v99, 1, v145) == 1)
          {
            sub_20B520158(v99, &unk_27C766670, &unk_20C151580);
            v101 = sub_20BA1DD44(&OBJC_IVAR____TtC9SeymourUI23RoundedDetailHeaderCell_artworkView);
            if (v158)
            {
              v158(v101);
            }

            else
            {
            }

            (*(v172 + 8))(v96, v141);
          }

          else
          {
            v102 = v93;
            v181 = *(v97 + 32);
            v103 = v171;
            v181(v171, v99, v100);
            v104 = swift_allocObject();
            swift_unknownObjectWeakInit();
            v153(v72, v91, v102);
            v105 = (v156 + 40) & v159;
            v106 = v105 + v174;
            v107 = (v105 + v174) & 0xFFFFFFFFFFFFFFF8;
            v108 = swift_allocObject();
            *(v108 + 16) = v104;
            *(v108 + 24) = v67;
            *(v108 + 32) = v68;
            v143(v108 + v105, v72, v102);
            *(v108 + v106) = v154;
            v109 = v108 + v107;
            v110 = v158;
            v111 = v157;
            *(v109 + 8) = v158;
            *(v109 + 16) = v111;
            v112 = swift_allocObject();
            *(v112 + 16) = sub_20BA65758;
            *(v112 + 24) = v108;
            v113 = v144;
            v114 = v161;
            v115 = v103;
            v116 = v145;
            (*(v144 + 16))(v161, v115, v145);
            v117 = v113;
            v118 = (*(v113 + 80) + 16) & ~*(v113 + 80);
            v119 = (v160 + v118 + 7) & 0xFFFFFFFFFFFFFFF8;
            v120 = swift_allocObject();
            v181((v120 + v118), v114, v116);
            v121 = (v120 + v119);
            *v121 = sub_20B5F7760;
            v121[1] = v112;
            sub_20B584050(v110, v111);
            v122 = v164;
            sub_20C137C94();
            v123 = swift_allocObject();
            v124 = v175;
            *(v123 + 16) = sub_20BA65724;
            *(v123 + 24) = v124;
            v125 = swift_allocObject();
            *(v125 + 16) = sub_20BA66C80;
            *(v125 + 24) = v123;
            v126 = v165;
            v127 = v163;
            v128 = v139;
            (*(v165 + 16))(v163, v122, v139);
            v129 = (*(v126 + 80) + 16) & ~*(v126 + 80);
            v130 = (v162 + v129 + 7) & 0xFFFFFFFFFFFFFFF8;
            v131 = swift_allocObject();
            (*(v126 + 32))(v131 + v129, v127, v128);
            v132 = (v131 + v130);
            *v132 = sub_20B5F7764;
            v132[1] = v125;

            v133 = v138;
            sub_20C137C94();
            v134 = *(v126 + 8);
            v134(v122, v128);
            v135 = sub_20C137CB4();
            v136 = swift_allocObject();
            *(v136 + 16) = 0;
            *(v136 + 24) = 0;
            v135(sub_20B5DF6DC, v136);

            v134(v133, v128);
            (*(v117 + 8))(v171, v145);
            (*(v172 + 8))(v173, v141);
          }
        }
      }

      else
      {
      }
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_20BA49EBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t (*)(), uint64_t, uint64_t, void *), void (*a8)(char *, uint64_t, uint64_t), unsigned __int8 a9, void (*a10)(uint64_t), uint64_t a11)
{
  v180 = a6;
  v181 = a8;
  v178 = a4;
  v179 = a5;
  v177 = a3;
  v184 = a2;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0, &unk_20C150360);
  v165 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v163 = &v137 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v164 = &v137 - v15;
  v162 = v16;
  MEMORY[0x28223BE20](v17);
  v19 = &v137 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766670, &unk_20C151580);
  MEMORY[0x28223BE20](v20 - 8);
  v170 = &v137 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BAB0, &unk_20C150570);
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v161 = &v137 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v160 = v24;
  MEMORY[0x28223BE20](v25);
  v171 = &v137 - v26;
  v168 = sub_20C1391C4();
  v167 = *(v168 - 8);
  MEMORY[0x28223BE20](v168);
  v169 = &v137 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_20C138A64();
  v172 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v173 = &v137 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766680, &unk_20C14F920);
  MEMORY[0x28223BE20](v30 - 8);
  v166 = &v137 - v31;
  v32 = sub_20C137C24();
  v175 = *(v32 - 8);
  v176 = v32;
  MEMORY[0x28223BE20](v32);
  v174 = v33;
  v182 = &v137 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_20C13C554();
  v35 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v37 = (&v137 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v183 = Strong;
    sub_20B51C88C(0, &qword_281100530, 0x277D85C78);
    *v37 = sub_20C13D374();
    (*(v35 + 104))(v37, *MEMORY[0x277D85200], v34);
    v39 = sub_20C13C584();
    (*(v35 + 8))(v37, v34);
    if (v39)
    {
      v40 = v183;
      v41 = &v183[OBJC_IVAR____TtC9SeymourUI23TVModalityBrickItemCell_artworkView];
      [*&v183[OBJC_IVAR____TtC9SeymourUI23TVModalityBrickItemCell_artworkView] setContentMode_];
      v42 = *v41;
      v43 = *(v41 + 1);
      LODWORD(v159) = a9;
      v44 = v184;
      if (sub_20BA640CC(v184, v42, v43, a9 & 1))
      {
        v144 = v23;
        v141 = v28;
        v145 = v22;
        v138 = v19;
        v139 = v12;
        v157 = a11;
        v158 = a10;
        v151 = *v41;
        v149 = *(v41 + 1);
        ObjectType = swift_getObjectType();
        v147 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v45 = v175;
        v46 = *(v175 + 16);
        v154 = a9 & 1;
        v148 = a7;
        v152 = v41;
        v47 = v182;
        v48 = v176;
        v155 = v175 + 16;
        v153 = v46;
        v46(v182, v44, v176);
        v49 = *(v45 + 80);
        v50 = (v49 + 24) & ~v49;
        v140 = v174 + 7;
        v51 = (v174 + 7 + v50) & 0xFFFFFFFFFFFFFFF8;
        v52 = (v51 + 23) & 0xFFFFFFFFFFFFFFF8;
        v53 = (v52 + 23) & 0xFFFFFFFFFFFFFFF8;
        v146 = (v53 + 15) & 0xFFFFFFFFFFFFFFF8;
        v156 = v49;
        v54 = swift_allocObject();
        *(v54 + 16) = v147;
        v143 = *(v45 + 32);
        v142 = v45 + 32;
        v143(v54 + v50, v47, v48);
        v55 = (v54 + v51);
        v56 = v178;
        *v55 = v177;
        v55[1] = v56;
        v57 = (v54 + v52);
        v58 = v180;
        *v57 = v179;
        v57[1] = v58;
        *(v54 + v53) = v148;
        v59 = v54 + v146;
        *v59 = v181;
        *(v59 + 8) = v154;
        v60 = (v54 + ((v53 + 31) & 0xFFFFFFFFFFFFFFF8));
        v61 = v158;
        v62 = v157;
        *v60 = v158;
        v60[1] = v62;
        v63 = v149;
        v148 = v149[19];

        sub_20B584050(v61, v62);
        v148(sub_20BA64EB8, v54, ObjectType, v63);

        if (v159)
        {
          v64 = [objc_opt_self() mainScreen];
          [v64 scale];
          v66 = v65;

          v67 = sub_20C137BF4() / v66;
          v68 = sub_20C137C04() / v66;
          v69 = v152;
        }

        else
        {
          v69 = v152;
          [*v152 bounds];
          v67 = v70;
          v68 = v71;
        }

        v72 = v182;
        v73 = v153;
        if (v67 <= 0.0 || v68 <= 0.0)
        {
        }

        else
        {
          v159 = ~v156;
          v74 = v69[1];
          v75 = swift_getObjectType();
          v74[15](0, v75, v74);
          v76 = v69[1];
          v77 = swift_getObjectType();
          v78 = v166;
          v79 = v176;
          v73(v166, v184, v176);
          (*(v175 + 56))(v78, 0, 1, v79);
          v76[2](v78, v77, v76);
          v80 = *v69;
          sub_20B51C88C(0, &qword_27C762070, 0x277D75348);
          sub_20C137BC4();
          v81 = sub_20C13D5A4();
          [v80 setBackgroundColor_];

          v82 = v69[1];
          v83 = swift_getObjectType();
          v82[22](COERCE_DOUBLE(*&v67), COERCE_DOUBLE(*&v68), 0, v83, v82);
          v84 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v73(v72, v184, v79);
          v85 = (v156 + 16) & v159;
          v86 = v73;
          v87 = (v140 + v85) & 0xFFFFFFFFFFFFFFF8;
          v88 = (v87 + 15) & 0xFFFFFFFFFFFFFFF8;
          v89 = swift_allocObject();
          v143(v89 + v85, v72, v79);
          *(v89 + v87) = v84;
          v90 = (v89 + v88);
          v91 = v184;
          *v90 = v67;
          v90[1] = v68;
          v175 = v89;
          v92 = (v89 + ((v88 + 23) & 0xFFFFFFFFFFFFFFF8));
          v93 = v79;
          v94 = v158;
          v95 = v157;
          *v92 = v158;
          v92[1] = v95;
          v86(v72, v91, v79);
          (*(v167 + 104))(v169, *MEMORY[0x277D542A8], v168);

          sub_20B584050(v94, v95);
          v96 = v173;
          v97 = v144;
          v98 = v183;
          sub_20C138A54();
          v99 = v170;
          sub_20B5F1B90(v96, v170);
          v100 = v145;
          if ((*(v97 + 48))(v99, 1, v145) == 1)
          {
            sub_20B520158(v99, &unk_27C766670, &unk_20C151580);
            v101 = sub_20BA1DD44(&OBJC_IVAR____TtC9SeymourUI23TVModalityBrickItemCell_artworkView);
            if (v158)
            {
              v158(v101);
            }

            else
            {
            }

            (*(v172 + 8))(v96, v141);
          }

          else
          {
            v102 = v93;
            v181 = *(v97 + 32);
            v103 = v171;
            v181(v171, v99, v100);
            v104 = swift_allocObject();
            swift_unknownObjectWeakInit();
            v153(v72, v91, v102);
            v105 = (v156 + 40) & v159;
            v106 = v105 + v174;
            v107 = (v105 + v174) & 0xFFFFFFFFFFFFFFF8;
            v108 = swift_allocObject();
            *(v108 + 16) = v104;
            *(v108 + 24) = v67;
            *(v108 + 32) = v68;
            v143(v108 + v105, v72, v102);
            *(v108 + v106) = v154;
            v109 = v108 + v107;
            v110 = v158;
            v111 = v157;
            *(v109 + 8) = v158;
            *(v109 + 16) = v111;
            v112 = swift_allocObject();
            *(v112 + 16) = sub_20BA64F04;
            *(v112 + 24) = v108;
            v113 = v144;
            v114 = v161;
            v115 = v103;
            v116 = v145;
            (*(v144 + 16))(v161, v115, v145);
            v117 = v113;
            v118 = (*(v113 + 80) + 16) & ~*(v113 + 80);
            v119 = (v160 + v118 + 7) & 0xFFFFFFFFFFFFFFF8;
            v120 = swift_allocObject();
            v181((v120 + v118), v114, v116);
            v121 = (v120 + v119);
            *v121 = sub_20B5F7760;
            v121[1] = v112;
            sub_20B584050(v110, v111);
            v122 = v164;
            sub_20C137C94();
            v123 = swift_allocObject();
            v124 = v175;
            *(v123 + 16) = sub_20BA64ED0;
            *(v123 + 24) = v124;
            v125 = swift_allocObject();
            *(v125 + 16) = sub_20BA66C80;
            *(v125 + 24) = v123;
            v126 = v165;
            v127 = v163;
            v128 = v139;
            (*(v165 + 16))(v163, v122, v139);
            v129 = (*(v126 + 80) + 16) & ~*(v126 + 80);
            v130 = (v162 + v129 + 7) & 0xFFFFFFFFFFFFFFF8;
            v131 = swift_allocObject();
            (*(v126 + 32))(v131 + v129, v127, v128);
            v132 = (v131 + v130);
            *v132 = sub_20B5F7764;
            v132[1] = v125;

            v133 = v138;
            sub_20C137C94();
            v134 = *(v126 + 8);
            v134(v122, v128);
            v135 = sub_20C137CB4();
            v136 = swift_allocObject();
            *(v136 + 16) = 0;
            *(v136 + 24) = 0;
            v135(sub_20B5DF6DC, v136);

            v134(v133, v128);
            (*(v117 + 8))(v171, v145);
            (*(v172 + 8))(v173, v141);
          }
        }
      }

      else
      {
      }
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_20BA4AF44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void (*a8)(char *, uint64_t, uint64_t), char a9, void (*a10)(uint64_t), uint64_t a11)
{
  v179 = a6;
  v180 = a8;
  v177 = a4;
  v178 = a5;
  v176 = a3;
  v182 = a2;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0, &unk_20C150360);
  v163 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v161 = &v138 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v162 = &v138 - v15;
  v160 = v16;
  MEMORY[0x28223BE20](v17);
  v19 = &v138 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766670, &unk_20C151580);
  MEMORY[0x28223BE20](v20 - 8);
  v168 = &v138 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BAB0, &unk_20C150570);
  v172 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v159 = &v138 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v158 = v23;
  MEMORY[0x28223BE20](v24);
  v169 = &v138 - v25;
  v166 = sub_20C1391C4();
  v165 = *(v166 - 8);
  MEMORY[0x28223BE20](v166);
  v167 = &v138 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_20C138A64();
  v170 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v171 = &v138 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766680, &unk_20C14F920);
  MEMORY[0x28223BE20](v29 - 8);
  v164 = &v138 - v30;
  v181 = sub_20C137C24();
  v174 = *(v181 - 8);
  MEMORY[0x28223BE20](v181);
  v173 = v31;
  v175 = &v138 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_20C13C554();
  v33 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v35 = (&v138 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v37 = Strong;
    v156 = v27;
    sub_20B51C88C(0, &qword_281100530, 0x277D85C78);
    *v35 = sub_20C13D374();
    (*(v33 + 104))(v35, *MEMORY[0x277D85200], v32);
    v38 = sub_20C13C584();
    (*(v33 + 8))(v35, v32);
    if (v38)
    {
      v39 = OBJC_IVAR____TtC9SeymourUI23TVStandardBrickItemCell_tvArtworkView;
      [*&v37[OBJC_IVAR____TtC9SeymourUI23TVStandardBrickItemCell_tvArtworkView] setContentMode_];
      v40 = *&v37[v39];
      v41 = v182;
      v42 = sub_20B627414(v182, v40, a9 & 1);

      if ((v42 & 1) != 0 && (v146 = v22, v139 = v19, v140 = v12, v155 = a11, v157 = a10, v142 = v39, v152 = *&v37[v39], v150 = swift_allocObject(), swift_unknownObjectWeakInit(), v43 = v174, v44 = *(v174 + 16), v153 = a9 & 1, v45 = v175, v154 = v37, v46 = v181, v148 = v174 + 16, v147 = v44, v44(v175, v41, v181), v47 = *(v43 + 80), v151 = a7, v48 = (v47 + 24) & ~v47, v141 = v173 + 7, v49 = (v173 + 7 + v48) & 0xFFFFFFFFFFFFFFF8, v50 = (v49 + 23) & 0xFFFFFFFFFFFFFFF8, v51 = (v50 + 23) & 0xFFFFFFFFFFFFFFF8, v149 = (v51 + 15) & 0xFFFFFFFFFFFFFFF8, v145 = v47, v52 = swift_allocObject(), *(v52 + 16) = v150, v53 = *(v43 + 32), v54 = v45, v55 = v153, v144 = v43 + 32, v143 = v53, v53(v52 + v48, v54, v46), v56 = (v52 + v49), v57 = v177, *v56 = v176, v56[1] = v57, v58 = (v52 + v50), v59 = v179, *v58 = v178, v58[1] = v59, *(v52 + v51) = v151, v60 = v52 + v149, *v60 = v180, *(v60 + 8) = v55, v61 = (v52 + ((v51 + 31) & 0xFFFFFFFFFFFFFFF8)), v62 = v157, v63 = v155, *v61 = v157, v61[1] = v63, v64 = (v152 + OBJC_IVAR____TtC9SeymourUI13TVArtworkView_layoutHandler), v66 = *(v152 + OBJC_IVAR____TtC9SeymourUI13TVArtworkView_layoutHandler), v65 = *(v152 + OBJC_IVAR____TtC9SeymourUI13TVArtworkView_layoutHandler + 8), *v64 = sub_20BA64AE0, v64[1] = v52, , , v67 = v63, , , sub_20B584050(v62, v63), v68 = v65, v37 = v154, v69 = v182, sub_20B583ECC(v66, v68), , v70 = sub_20B627330(v69, v55), v70 > 0.0) && (v72 = v71, v71 > 0.0))
      {
        v73 = v70;
        v74 = v145;
        v152 = ~v145;
        v75 = v142;
        [*&v37[v142] setStackImage_];
        v76 = *&v37[v75];
        v77 = v164;
        v78 = v69;
        v79 = v181;
        v147(v164, v69, v181);
        (*(v174 + 56))(v77, 0, 1, v79);
        v80 = OBJC_IVAR____TtC9SeymourUI13TVArtworkView_artwork;
        swift_beginAccess();
        sub_20B69AB5C(v77, v76 + v80);
        swift_endAccess();
        v81 = *&v37[v75];
        sub_20B51C88C(0, &qword_27C762070, 0x277D75348);
        v82 = v78;
        sub_20C137BC4();
        v83 = sub_20C13D5A4();
        [v81 setBackgroundColor_];

        v84 = *&v37[v75] + OBJC_IVAR____TtC9SeymourUI13TVArtworkView_pendingArtworkSize;
        *v84 = v73;
        *(v84 + 8) = v72;
        *(v84 + 16) = 0;
        v85 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v86 = v175;
        v87 = v79;
        v88 = v147;
        v147(v175, v82, v87);
        v89 = (v74 + 16) & v152;
        v90 = v67;
        v91 = (v141 + v89) & 0xFFFFFFFFFFFFFFF8;
        v92 = (v91 + 15) & 0xFFFFFFFFFFFFFFF8;
        v93 = swift_allocObject();
        v94 = v93 + v89;
        v95 = v181;
        v143(v94, v86, v181);
        *(v93 + v91) = v85;
        v96 = (v93 + v92);
        *v96 = v73;
        v96[1] = v72;
        v174 = v93;
        v97 = (v93 + ((v92 + 23) & 0xFFFFFFFFFFFFFFF8));
        v98 = v95;
        v99 = v157;
        *v97 = v157;
        v97[1] = v90;
        v88(v86, v182, v95);
        (*(v165 + 104))(v167, *MEMORY[0x277D542A8], v166);

        sub_20B584050(v99, v90);
        v100 = v171;
        sub_20C138A54();
        v101 = v168;
        sub_20B5F1BB8(v100, v168);
        v102 = v172;
        v103 = v146;
        if ((*(v172 + 48))(v101, 1, v146) == 1)
        {
          sub_20B520158(v101, &unk_27C766670, &unk_20C151580);
          v104 = sub_20BA1DB84(&OBJC_IVAR____TtC9SeymourUI23TVStandardBrickItemCell_tvArtworkView);
          if (v99)
          {
            v99(v104);
          }

          else
          {
          }

          (*(v170 + 8))(v100, v156);
        }

        else
        {
          v105 = v98;
          v180 = *(v102 + 32);
          v106 = v169;
          v180(v169, v101, v103);
          v107 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v147(v86, v182, v105);
          v108 = (v145 + 40) & v152;
          v109 = v108 + v173;
          v110 = (v108 + v173) & 0xFFFFFFFFFFFFFFF8;
          v111 = v103;
          v112 = swift_allocObject();
          *(v112 + 2) = v107;
          v112[3] = v73;
          v112[4] = v72;
          v143(v112 + v108, v86, v105);
          *(v112 + v109) = v153;
          v113 = v112 + v110;
          v114 = v157;
          v115 = v155;
          *(v113 + 1) = v157;
          *(v113 + 2) = v115;
          v116 = swift_allocObject();
          *(v116 + 16) = sub_20BA64B2C;
          *(v116 + 24) = v112;
          v117 = v172;
          v118 = v159;
          (*(v172 + 16))(v159, v106, v111);
          v119 = (*(v117 + 80) + 16) & ~*(v117 + 80);
          v120 = (v158 + v119 + 7) & 0xFFFFFFFFFFFFFFF8;
          v121 = swift_allocObject();
          v180((v121 + v119), v118, v111);
          v122 = (v121 + v120);
          *v122 = sub_20B5F7760;
          v122[1] = v116;
          sub_20B584050(v114, v115);
          v123 = v162;
          sub_20C137C94();
          v124 = swift_allocObject();
          v125 = v174;
          *(v124 + 16) = sub_20BA64AF8;
          *(v124 + 24) = v125;
          v126 = swift_allocObject();
          *(v126 + 16) = sub_20BA66C80;
          *(v126 + 24) = v124;
          v127 = v163;
          v128 = v161;
          v129 = v140;
          (*(v163 + 16))(v161, v123, v140);
          v130 = (*(v127 + 80) + 16) & ~*(v127 + 80);
          v131 = (v160 + v130 + 7) & 0xFFFFFFFFFFFFFFF8;
          v132 = swift_allocObject();
          (*(v127 + 32))(v132 + v130, v128, v129);
          v133 = (v132 + v131);
          *v133 = sub_20B5F7764;
          v133[1] = v126;

          v134 = v139;
          sub_20C137C94();
          v135 = *(v127 + 8);
          v135(v123, v129);
          v136 = sub_20C137CB4();
          v137 = swift_allocObject();
          *(v137 + 16) = 0;
          *(v137 + 24) = 0;
          v136(sub_20B5DF6DC, v137);

          v135(v134, v129);
          (*(v172 + 8))(v169, v146);
          (*(v170 + 8))(v171, v156);
        }
      }

      else
      {
      }
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_20BA4BF04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t (*)(), uint64_t, uint64_t, void *), void (*a8)(char *, uint64_t, uint64_t), unsigned __int8 a9, void (*a10)(uint64_t), uint64_t a11)
{
  v180 = a6;
  v181 = a8;
  v178 = a4;
  v179 = a5;
  v177 = a3;
  v184 = a2;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0, &unk_20C150360);
  v165 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v163 = &v137 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v164 = &v137 - v15;
  v162 = v16;
  MEMORY[0x28223BE20](v17);
  v19 = &v137 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766670, &unk_20C151580);
  MEMORY[0x28223BE20](v20 - 8);
  v170 = &v137 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BAB0, &unk_20C150570);
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v161 = &v137 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v160 = v24;
  MEMORY[0x28223BE20](v25);
  v171 = &v137 - v26;
  v168 = sub_20C1391C4();
  v167 = *(v168 - 8);
  MEMORY[0x28223BE20](v168);
  v169 = &v137 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_20C138A64();
  v172 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v173 = &v137 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766680, &unk_20C14F920);
  MEMORY[0x28223BE20](v30 - 8);
  v166 = &v137 - v31;
  v32 = sub_20C137C24();
  v175 = *(v32 - 8);
  v176 = v32;
  MEMORY[0x28223BE20](v32);
  v174 = v33;
  v182 = &v137 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_20C13C554();
  v35 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v37 = (&v137 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v183 = Strong;
    sub_20B51C88C(0, &qword_281100530, 0x277D85C78);
    *v37 = sub_20C13D374();
    (*(v35 + 104))(v37, *MEMORY[0x277D85200], v34);
    v39 = sub_20C13C584();
    (*(v35 + 8))(v37, v34);
    if (v39)
    {
      v40 = v183;
      v41 = &v183[OBJC_IVAR____TtC9SeymourUI23TVWorkoutPlanBannerCell_artworkView];
      [*&v183[OBJC_IVAR____TtC9SeymourUI23TVWorkoutPlanBannerCell_artworkView] setContentMode_];
      v42 = *v41;
      v43 = *(v41 + 1);
      LODWORD(v159) = a9;
      v44 = v184;
      if (sub_20BA640CC(v184, v42, v43, a9 & 1))
      {
        v144 = v23;
        v141 = v28;
        v145 = v22;
        v138 = v19;
        v139 = v12;
        v157 = a11;
        v158 = a10;
        v151 = *v41;
        v149 = *(v41 + 1);
        ObjectType = swift_getObjectType();
        v147 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v45 = v175;
        v46 = *(v175 + 16);
        v154 = a9 & 1;
        v148 = a7;
        v152 = v41;
        v47 = v182;
        v48 = v176;
        v155 = v175 + 16;
        v153 = v46;
        v46(v182, v44, v176);
        v49 = *(v45 + 80);
        v50 = (v49 + 24) & ~v49;
        v140 = v174 + 7;
        v51 = (v174 + 7 + v50) & 0xFFFFFFFFFFFFFFF8;
        v52 = (v51 + 23) & 0xFFFFFFFFFFFFFFF8;
        v53 = (v52 + 23) & 0xFFFFFFFFFFFFFFF8;
        v146 = (v53 + 15) & 0xFFFFFFFFFFFFFFF8;
        v156 = v49;
        v54 = swift_allocObject();
        *(v54 + 16) = v147;
        v143 = *(v45 + 32);
        v142 = v45 + 32;
        v143(v54 + v50, v47, v48);
        v55 = (v54 + v51);
        v56 = v178;
        *v55 = v177;
        v55[1] = v56;
        v57 = (v54 + v52);
        v58 = v180;
        *v57 = v179;
        v57[1] = v58;
        *(v54 + v53) = v148;
        v59 = v54 + v146;
        *v59 = v181;
        *(v59 + 8) = v154;
        v60 = (v54 + ((v53 + 31) & 0xFFFFFFFFFFFFFFF8));
        v61 = v158;
        v62 = v157;
        *v60 = v158;
        v60[1] = v62;
        v63 = v149;
        v148 = v149[19];

        sub_20B584050(v61, v62);
        v148(sub_20BA661F0, v54, ObjectType, v63);

        if (v159)
        {
          v64 = [objc_opt_self() mainScreen];
          [v64 scale];
          v66 = v65;

          v67 = sub_20C137BF4() / v66;
          v68 = sub_20C137C04() / v66;
          v69 = v152;
        }

        else
        {
          v69 = v152;
          [*v152 bounds];
          v67 = v70;
          v68 = v71;
        }

        v72 = v182;
        v73 = v153;
        if (v67 <= 0.0 || v68 <= 0.0)
        {
        }

        else
        {
          v159 = ~v156;
          v74 = v69[1];
          v75 = swift_getObjectType();
          v74[15](0, v75, v74);
          v76 = v69[1];
          v77 = swift_getObjectType();
          v78 = v166;
          v79 = v176;
          v73(v166, v184, v176);
          (*(v175 + 56))(v78, 0, 1, v79);
          v76[2](v78, v77, v76);
          v80 = *v69;
          sub_20B51C88C(0, &qword_27C762070, 0x277D75348);
          sub_20C137BC4();
          v81 = sub_20C13D5A4();
          [v80 setBackgroundColor_];

          v82 = v69[1];
          v83 = swift_getObjectType();
          v82[22](COERCE_DOUBLE(*&v67), COERCE_DOUBLE(*&v68), 0, v83, v82);
          v84 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v73(v72, v184, v79);
          v85 = (v156 + 16) & v159;
          v86 = v73;
          v87 = (v140 + v85) & 0xFFFFFFFFFFFFFFF8;
          v88 = (v87 + 15) & 0xFFFFFFFFFFFFFFF8;
          v89 = swift_allocObject();
          v143(v89 + v85, v72, v79);
          *(v89 + v87) = v84;
          v90 = (v89 + v88);
          v91 = v184;
          *v90 = v67;
          v90[1] = v68;
          v175 = v89;
          v92 = (v89 + ((v88 + 23) & 0xFFFFFFFFFFFFFFF8));
          v93 = v79;
          v94 = v158;
          v95 = v157;
          *v92 = v158;
          v92[1] = v95;
          v86(v72, v91, v79);
          (*(v167 + 104))(v169, *MEMORY[0x277D542A8], v168);

          sub_20B584050(v94, v95);
          v96 = v173;
          v97 = v144;
          v98 = v183;
          sub_20C138A54();
          v99 = v170;
          sub_20B5F1BE0(v96, v170);
          v100 = v145;
          if ((*(v97 + 48))(v99, 1, v145) == 1)
          {
            sub_20B520158(v99, &unk_27C766670, &unk_20C151580);
            v101 = sub_20BA1DD44(&OBJC_IVAR____TtC9SeymourUI23TVWorkoutPlanBannerCell_artworkView);
            if (v158)
            {
              v158(v101);
            }

            else
            {
            }

            (*(v172 + 8))(v96, v141);
          }

          else
          {
            v102 = v93;
            v181 = *(v97 + 32);
            v103 = v171;
            v181(v171, v99, v100);
            v104 = swift_allocObject();
            swift_unknownObjectWeakInit();
            v153(v72, v91, v102);
            v105 = (v156 + 40) & v159;
            v106 = v105 + v174;
            v107 = (v105 + v174) & 0xFFFFFFFFFFFFFFF8;
            v108 = swift_allocObject();
            *(v108 + 16) = v104;
            *(v108 + 24) = v67;
            *(v108 + 32) = v68;
            v143(v108 + v105, v72, v102);
            *(v108 + v106) = v154;
            v109 = v108 + v107;
            v110 = v158;
            v111 = v157;
            *(v109 + 8) = v158;
            *(v109 + 16) = v111;
            v112 = swift_allocObject();
            *(v112 + 16) = sub_20BA6623C;
            *(v112 + 24) = v108;
            v113 = v144;
            v114 = v161;
            v115 = v103;
            v116 = v145;
            (*(v144 + 16))(v161, v115, v145);
            v117 = v113;
            v118 = (*(v113 + 80) + 16) & ~*(v113 + 80);
            v119 = (v160 + v118 + 7) & 0xFFFFFFFFFFFFFFF8;
            v120 = swift_allocObject();
            v181((v120 + v118), v114, v116);
            v121 = (v120 + v119);
            *v121 = sub_20B5F7760;
            v121[1] = v112;
            sub_20B584050(v110, v111);
            v122 = v164;
            sub_20C137C94();
            v123 = swift_allocObject();
            v124 = v175;
            *(v123 + 16) = sub_20BA66208;
            *(v123 + 24) = v124;
            v125 = swift_allocObject();
            *(v125 + 16) = sub_20BA66C80;
            *(v125 + 24) = v123;
            v126 = v165;
            v127 = v163;
            v128 = v139;
            (*(v165 + 16))(v163, v122, v139);
            v129 = (*(v126 + 80) + 16) & ~*(v126 + 80);
            v130 = (v162 + v129 + 7) & 0xFFFFFFFFFFFFFFF8;
            v131 = swift_allocObject();
            (*(v126 + 32))(v131 + v129, v127, v128);
            v132 = (v131 + v130);
            *v132 = sub_20B5F7764;
            v132[1] = v125;

            v133 = v138;
            sub_20C137C94();
            v134 = *(v126 + 8);
            v134(v122, v128);
            v135 = sub_20C137CB4();
            v136 = swift_allocObject();
            *(v136 + 16) = 0;
            *(v136 + 24) = 0;
            v135(sub_20B5DF6DC, v136);

            v134(v133, v128);
            (*(v117 + 8))(v171, v145);
            (*(v172 + 8))(v173, v141);
          }
        }
      }

      else
      {
      }
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_20BA4CF8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t (*)(), uint64_t, uint64_t, void *), void (*a8)(char *, uint64_t, uint64_t), unsigned __int8 a9, void (*a10)(uint64_t), uint64_t a11)
{
  v180 = a6;
  v181 = a8;
  v178 = a4;
  v179 = a5;
  v177 = a3;
  v184 = a2;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0, &unk_20C150360);
  v165 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v163 = &v137 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v164 = &v137 - v15;
  v162 = v16;
  MEMORY[0x28223BE20](v17);
  v19 = &v137 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766670, &unk_20C151580);
  MEMORY[0x28223BE20](v20 - 8);
  v170 = &v137 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BAB0, &unk_20C150570);
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v161 = &v137 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v160 = v24;
  MEMORY[0x28223BE20](v25);
  v171 = &v137 - v26;
  v168 = sub_20C1391C4();
  v167 = *(v168 - 8);
  MEMORY[0x28223BE20](v168);
  v169 = &v137 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_20C138A64();
  v172 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v173 = &v137 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766680, &unk_20C14F920);
  MEMORY[0x28223BE20](v30 - 8);
  v166 = &v137 - v31;
  v32 = sub_20C137C24();
  v175 = *(v32 - 8);
  v176 = v32;
  MEMORY[0x28223BE20](v32);
  v174 = v33;
  v182 = &v137 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_20C13C554();
  v35 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v37 = (&v137 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v183 = Strong;
    sub_20B51C88C(0, &qword_281100530, 0x277D85C78);
    *v37 = sub_20C13D374();
    (*(v35 + 104))(v37, *MEMORY[0x277D85200], v34);
    v39 = sub_20C13C584();
    (*(v35 + 8))(v37, v34);
    if (v39)
    {
      v40 = v183;
      v41 = &v183[OBJC_IVAR____TtC9SeymourUI23WorkoutPlanBrickRowCell_artworkView];
      [*&v183[OBJC_IVAR____TtC9SeymourUI23WorkoutPlanBrickRowCell_artworkView] setContentMode_];
      v42 = *v41;
      v43 = *(v41 + 1);
      LODWORD(v159) = a9;
      v44 = v184;
      if (sub_20BA640CC(v184, v42, v43, a9 & 1))
      {
        v144 = v23;
        v141 = v28;
        v145 = v22;
        v138 = v19;
        v139 = v12;
        v157 = a11;
        v158 = a10;
        v151 = *v41;
        v149 = *(v41 + 1);
        ObjectType = swift_getObjectType();
        v147 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v45 = v175;
        v46 = *(v175 + 16);
        v154 = a9 & 1;
        v148 = a7;
        v152 = v41;
        v47 = v182;
        v48 = v176;
        v155 = v175 + 16;
        v153 = v46;
        v46(v182, v44, v176);
        v49 = *(v45 + 80);
        v50 = (v49 + 24) & ~v49;
        v140 = v174 + 7;
        v51 = (v174 + 7 + v50) & 0xFFFFFFFFFFFFFFF8;
        v52 = (v51 + 23) & 0xFFFFFFFFFFFFFFF8;
        v53 = (v52 + 23) & 0xFFFFFFFFFFFFFFF8;
        v146 = (v53 + 15) & 0xFFFFFFFFFFFFFFF8;
        v156 = v49;
        v54 = swift_allocObject();
        *(v54 + 16) = v147;
        v143 = *(v45 + 32);
        v142 = v45 + 32;
        v143(v54 + v50, v47, v48);
        v55 = (v54 + v51);
        v56 = v178;
        *v55 = v177;
        v55[1] = v56;
        v57 = (v54 + v52);
        v58 = v180;
        *v57 = v179;
        v57[1] = v58;
        *(v54 + v53) = v148;
        v59 = v54 + v146;
        *v59 = v181;
        *(v59 + 8) = v154;
        v60 = (v54 + ((v53 + 31) & 0xFFFFFFFFFFFFFFF8));
        v61 = v158;
        v62 = v157;
        *v60 = v158;
        v60[1] = v62;
        v63 = v149;
        v148 = v149[19];

        sub_20B584050(v61, v62);
        v148(sub_20BA6614C, v54, ObjectType, v63);

        if (v159)
        {
          v64 = [objc_opt_self() mainScreen];
          [v64 scale];
          v66 = v65;

          v67 = sub_20C137BF4() / v66;
          v68 = sub_20C137C04() / v66;
          v69 = v152;
        }

        else
        {
          v69 = v152;
          [*v152 bounds];
          v67 = v70;
          v68 = v71;
        }

        v72 = v182;
        v73 = v153;
        if (v67 <= 0.0 || v68 <= 0.0)
        {
        }

        else
        {
          v159 = ~v156;
          v74 = v69[1];
          v75 = swift_getObjectType();
          v74[15](0, v75, v74);
          v76 = v69[1];
          v77 = swift_getObjectType();
          v78 = v166;
          v79 = v176;
          v73(v166, v184, v176);
          (*(v175 + 56))(v78, 0, 1, v79);
          v76[2](v78, v77, v76);
          v80 = *v69;
          sub_20B51C88C(0, &qword_27C762070, 0x277D75348);
          sub_20C137BC4();
          v81 = sub_20C13D5A4();
          [v80 setBackgroundColor_];

          v82 = v69[1];
          v83 = swift_getObjectType();
          v82[22](COERCE_DOUBLE(*&v67), COERCE_DOUBLE(*&v68), 0, v83, v82);
          v84 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v73(v72, v184, v79);
          v85 = (v156 + 16) & v159;
          v86 = v73;
          v87 = (v140 + v85) & 0xFFFFFFFFFFFFFFF8;
          v88 = (v87 + 15) & 0xFFFFFFFFFFFFFFF8;
          v89 = swift_allocObject();
          v143(v89 + v85, v72, v79);
          *(v89 + v87) = v84;
          v90 = (v89 + v88);
          v91 = v184;
          *v90 = v67;
          v90[1] = v68;
          v175 = v89;
          v92 = (v89 + ((v88 + 23) & 0xFFFFFFFFFFFFFFF8));
          v93 = v79;
          v94 = v158;
          v95 = v157;
          *v92 = v158;
          v92[1] = v95;
          v86(v72, v91, v79);
          (*(v167 + 104))(v169, *MEMORY[0x277D542A8], v168);

          sub_20B584050(v94, v95);
          v96 = v173;
          v97 = v144;
          v98 = v183;
          sub_20C138A54();
          v99 = v170;
          sub_20B5F1C08(v96, v170);
          v100 = v145;
          if ((*(v97 + 48))(v99, 1, v145) == 1)
          {
            sub_20B520158(v99, &unk_27C766670, &unk_20C151580);
            v101 = sub_20BA1DD44(&OBJC_IVAR____TtC9SeymourUI23WorkoutPlanBrickRowCell_artworkView);
            if (v158)
            {
              v158(v101);
            }

            else
            {
            }

            (*(v172 + 8))(v96, v141);
          }

          else
          {
            v102 = v93;
            v181 = *(v97 + 32);
            v103 = v171;
            v181(v171, v99, v100);
            v104 = swift_allocObject();
            swift_unknownObjectWeakInit();
            v153(v72, v91, v102);
            v105 = (v156 + 40) & v159;
            v106 = v105 + v174;
            v107 = (v105 + v174) & 0xFFFFFFFFFFFFFFF8;
            v108 = swift_allocObject();
            *(v108 + 16) = v104;
            *(v108 + 24) = v67;
            *(v108 + 32) = v68;
            v143(v108 + v105, v72, v102);
            *(v108 + v106) = v154;
            v109 = v108 + v107;
            v110 = v158;
            v111 = v157;
            *(v109 + 8) = v158;
            *(v109 + 16) = v111;
            v112 = swift_allocObject();
            *(v112 + 16) = sub_20BA66198;
            *(v112 + 24) = v108;
            v113 = v144;
            v114 = v161;
            v115 = v103;
            v116 = v145;
            (*(v144 + 16))(v161, v115, v145);
            v117 = v113;
            v118 = (*(v113 + 80) + 16) & ~*(v113 + 80);
            v119 = (v160 + v118 + 7) & 0xFFFFFFFFFFFFFFF8;
            v120 = swift_allocObject();
            v181((v120 + v118), v114, v116);
            v121 = (v120 + v119);
            *v121 = sub_20B5F7760;
            v121[1] = v112;
            sub_20B584050(v110, v111);
            v122 = v164;
            sub_20C137C94();
            v123 = swift_allocObject();
            v124 = v175;
            *(v123 + 16) = sub_20BA66164;
            *(v123 + 24) = v124;
            v125 = swift_allocObject();
            *(v125 + 16) = sub_20BA66C80;
            *(v125 + 24) = v123;
            v126 = v165;
            v127 = v163;
            v128 = v139;
            (*(v165 + 16))(v163, v122, v139);
            v129 = (*(v126 + 80) + 16) & ~*(v126 + 80);
            v130 = (v162 + v129 + 7) & 0xFFFFFFFFFFFFFFF8;
            v131 = swift_allocObject();
            (*(v126 + 32))(v131 + v129, v127, v128);
            v132 = (v131 + v130);
            *v132 = sub_20B5F7764;
            v132[1] = v125;

            v133 = v138;
            sub_20C137C94();
            v134 = *(v126 + 8);
            v134(v122, v128);
            v135 = sub_20C137CB4();
            v136 = swift_allocObject();
            *(v136 + 16) = 0;
            *(v136 + 24) = 0;
            v135(sub_20B5DF6DC, v136);

            v134(v133, v128);
            (*(v117 + 8))(v171, v145);
            (*(v172 + 8))(v173, v141);
          }
        }
      }

      else
      {
      }
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_20BA4E014(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t (*)(), uint64_t, uint64_t, void *), void (*a8)(char *, uint64_t, uint64_t), unsigned __int8 a9, void (*a10)(uint64_t), uint64_t a11)
{
  v180 = a6;
  v181 = a8;
  v178 = a4;
  v179 = a5;
  v177 = a3;
  v184 = a2;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0, &unk_20C150360);
  v165 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v163 = &v137 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v164 = &v137 - v15;
  v162 = v16;
  MEMORY[0x28223BE20](v17);
  v19 = &v137 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766670, &unk_20C151580);
  MEMORY[0x28223BE20](v20 - 8);
  v170 = &v137 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BAB0, &unk_20C150570);
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v161 = &v137 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v160 = v24;
  MEMORY[0x28223BE20](v25);
  v171 = &v137 - v26;
  v168 = sub_20C1391C4();
  v167 = *(v168 - 8);
  MEMORY[0x28223BE20](v168);
  v169 = &v137 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_20C138A64();
  v172 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v173 = &v137 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766680, &unk_20C14F920);
  MEMORY[0x28223BE20](v30 - 8);
  v166 = &v137 - v31;
  v32 = sub_20C137C24();
  v175 = *(v32 - 8);
  v176 = v32;
  MEMORY[0x28223BE20](v32);
  v174 = v33;
  v182 = &v137 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_20C13C554();
  v35 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v37 = (&v137 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v183 = Strong;
    sub_20B51C88C(0, &qword_281100530, 0x277D85C78);
    *v37 = sub_20C13D374();
    (*(v35 + 104))(v37, *MEMORY[0x277D85200], v34);
    v39 = sub_20C13C584();
    (*(v35 + 8))(v37, v34);
    if (v39)
    {
      v40 = v183;
      v41 = &v183[OBJC_IVAR____TtC9SeymourUI24TabletActionBrickRowCell_artworkView];
      [*&v183[OBJC_IVAR____TtC9SeymourUI24TabletActionBrickRowCell_artworkView] setContentMode_];
      v42 = *v41;
      v43 = *(v41 + 1);
      LODWORD(v159) = a9;
      v44 = v184;
      if (sub_20BA640CC(v184, v42, v43, a9 & 1))
      {
        v144 = v23;
        v141 = v28;
        v145 = v22;
        v138 = v19;
        v139 = v12;
        v157 = a11;
        v158 = a10;
        v151 = *v41;
        v149 = *(v41 + 1);
        ObjectType = swift_getObjectType();
        v147 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v45 = v175;
        v46 = *(v175 + 16);
        v154 = a9 & 1;
        v148 = a7;
        v152 = v41;
        v47 = v182;
        v48 = v176;
        v155 = v175 + 16;
        v153 = v46;
        v46(v182, v44, v176);
        v49 = *(v45 + 80);
        v50 = (v49 + 24) & ~v49;
        v140 = v174 + 7;
        v51 = (v174 + 7 + v50) & 0xFFFFFFFFFFFFFFF8;
        v52 = (v51 + 23) & 0xFFFFFFFFFFFFFFF8;
        v53 = (v52 + 23) & 0xFFFFFFFFFFFFFFF8;
        v146 = (v53 + 15) & 0xFFFFFFFFFFFFFFF8;
        v156 = v49;
        v54 = swift_allocObject();
        *(v54 + 16) = v147;
        v143 = *(v45 + 32);
        v142 = v45 + 32;
        v143(v54 + v50, v47, v48);
        v55 = (v54 + v51);
        v56 = v178;
        *v55 = v177;
        v55[1] = v56;
        v57 = (v54 + v52);
        v58 = v180;
        *v57 = v179;
        v57[1] = v58;
        *(v54 + v53) = v148;
        v59 = v54 + v146;
        *v59 = v181;
        *(v59 + 8) = v154;
        v60 = (v54 + ((v53 + 31) & 0xFFFFFFFFFFFFFFF8));
        v61 = v158;
        v62 = v157;
        *v60 = v158;
        v60[1] = v62;
        v63 = v149;
        v148 = v149[19];

        sub_20B584050(v61, v62);
        v148(sub_20BA65CD0, v54, ObjectType, v63);

        if (v159)
        {
          v64 = [objc_opt_self() mainScreen];
          [v64 scale];
          v66 = v65;

          v67 = sub_20C137BF4() / v66;
          v68 = sub_20C137C04() / v66;
          v69 = v152;
        }

        else
        {
          v69 = v152;
          [*v152 bounds];
          v67 = v70;
          v68 = v71;
        }

        v72 = v182;
        v73 = v153;
        if (v67 <= 0.0 || v68 <= 0.0)
        {
        }

        else
        {
          v159 = ~v156;
          v74 = v69[1];
          v75 = swift_getObjectType();
          v74[15](0, v75, v74);
          v76 = v69[1];
          v77 = swift_getObjectType();
          v78 = v166;
          v79 = v176;
          v73(v166, v184, v176);
          (*(v175 + 56))(v78, 0, 1, v79);
          v76[2](v78, v77, v76);
          v80 = *v69;
          sub_20B51C88C(0, &qword_27C762070, 0x277D75348);
          sub_20C137BC4();
          v81 = sub_20C13D5A4();
          [v80 setBackgroundColor_];

          v82 = v69[1];
          v83 = swift_getObjectType();
          v82[22](COERCE_DOUBLE(*&v67), COERCE_DOUBLE(*&v68), 0, v83, v82);
          v84 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v73(v72, v184, v79);
          v85 = (v156 + 16) & v159;
          v86 = v73;
          v87 = (v140 + v85) & 0xFFFFFFFFFFFFFFF8;
          v88 = (v87 + 15) & 0xFFFFFFFFFFFFFFF8;
          v89 = swift_allocObject();
          v143(v89 + v85, v72, v79);
          *(v89 + v87) = v84;
          v90 = (v89 + v88);
          v91 = v184;
          *v90 = v67;
          v90[1] = v68;
          v175 = v89;
          v92 = (v89 + ((v88 + 23) & 0xFFFFFFFFFFFFFFF8));
          v93 = v79;
          v94 = v158;
          v95 = v157;
          *v92 = v158;
          v92[1] = v95;
          v86(v72, v91, v79);
          (*(v167 + 104))(v169, *MEMORY[0x277D542A8], v168);

          sub_20B584050(v94, v95);
          v96 = v173;
          v97 = v144;
          v98 = v183;
          sub_20C138A54();
          v99 = v170;
          sub_20B5F1C30(v96, v170);
          v100 = v145;
          if ((*(v97 + 48))(v99, 1, v145) == 1)
          {
            sub_20B520158(v99, &unk_27C766670, &unk_20C151580);
            v101 = sub_20BA1DD44(&OBJC_IVAR____TtC9SeymourUI24TabletActionBrickRowCell_artworkView);
            if (v158)
            {
              v158(v101);
            }

            else
            {
            }

            (*(v172 + 8))(v96, v141);
          }

          else
          {
            v102 = v93;
            v181 = *(v97 + 32);
            v103 = v171;
            v181(v171, v99, v100);
            v104 = swift_allocObject();
            swift_unknownObjectWeakInit();
            v153(v72, v91, v102);
            v105 = (v156 + 40) & v159;
            v106 = v105 + v174;
            v107 = (v105 + v174) & 0xFFFFFFFFFFFFFFF8;
            v108 = swift_allocObject();
            *(v108 + 16) = v104;
            *(v108 + 24) = v67;
            *(v108 + 32) = v68;
            v143(v108 + v105, v72, v102);
            *(v108 + v106) = v154;
            v109 = v108 + v107;
            v110 = v158;
            v111 = v157;
            *(v109 + 8) = v158;
            *(v109 + 16) = v111;
            v112 = swift_allocObject();
            *(v112 + 16) = sub_20BA65D1C;
            *(v112 + 24) = v108;
            v113 = v144;
            v114 = v161;
            v115 = v103;
            v116 = v145;
            (*(v144 + 16))(v161, v115, v145);
            v117 = v113;
            v118 = (*(v113 + 80) + 16) & ~*(v113 + 80);
            v119 = (v160 + v118 + 7) & 0xFFFFFFFFFFFFFFF8;
            v120 = swift_allocObject();
            v181((v120 + v118), v114, v116);
            v121 = (v120 + v119);
            *v121 = sub_20B5F7760;
            v121[1] = v112;
            sub_20B584050(v110, v111);
            v122 = v164;
            sub_20C137C94();
            v123 = swift_allocObject();
            v124 = v175;
            *(v123 + 16) = sub_20BA65CE8;
            *(v123 + 24) = v124;
            v125 = swift_allocObject();
            *(v125 + 16) = sub_20BA66C80;
            *(v125 + 24) = v123;
            v126 = v165;
            v127 = v163;
            v128 = v139;
            (*(v165 + 16))(v163, v122, v139);
            v129 = (*(v126 + 80) + 16) & ~*(v126 + 80);
            v130 = (v162 + v129 + 7) & 0xFFFFFFFFFFFFFFF8;
            v131 = swift_allocObject();
            (*(v126 + 32))(v131 + v129, v127, v128);
            v132 = (v131 + v130);
            *v132 = sub_20B5F7764;
            v132[1] = v125;

            v133 = v138;
            sub_20C137C94();
            v134 = *(v126 + 8);
            v134(v122, v128);
            v135 = sub_20C137CB4();
            v136 = swift_allocObject();
            *(v136 + 16) = 0;
            *(v136 + 24) = 0;
            v135(sub_20B5DF6DC, v136);

            v134(v133, v128);
            (*(v117 + 8))(v171, v145);
            (*(v172 + 8))(v173, v141);
          }
        }
      }

      else
      {
      }
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_20BA4F09C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t (*)(), uint64_t, uint64_t, void *), void (*a8)(char *, uint64_t, uint64_t), unsigned __int8 a9, void (*a10)(uint64_t), uint64_t a11)
{
  v180 = a6;
  v181 = a8;
  v178 = a4;
  v179 = a5;
  v177 = a3;
  v184 = a2;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0, &unk_20C150360);
  v165 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v163 = &v137 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v164 = &v137 - v15;
  v162 = v16;
  MEMORY[0x28223BE20](v17);
  v19 = &v137 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766670, &unk_20C151580);
  MEMORY[0x28223BE20](v20 - 8);
  v170 = &v137 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BAB0, &unk_20C150570);
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v161 = &v137 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v160 = v24;
  MEMORY[0x28223BE20](v25);
  v171 = &v137 - v26;
  v168 = sub_20C1391C4();
  v167 = *(v168 - 8);
  MEMORY[0x28223BE20](v168);
  v169 = &v137 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_20C138A64();
  v172 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v173 = &v137 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766680, &unk_20C14F920);
  MEMORY[0x28223BE20](v30 - 8);
  v166 = &v137 - v31;
  v32 = sub_20C137C24();
  v175 = *(v32 - 8);
  v176 = v32;
  MEMORY[0x28223BE20](v32);
  v174 = v33;
  v182 = &v137 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_20C13C554();
  v35 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v37 = (&v137 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v183 = Strong;
    sub_20B51C88C(0, &qword_281100530, 0x277D85C78);
    *v37 = sub_20C13D374();
    (*(v35 + 104))(v37, *MEMORY[0x277D85200], v34);
    v39 = sub_20C13C584();
    (*(v35 + 8))(v37, v34);
    if (v39)
    {
      v40 = v183;
      v41 = &v183[OBJC_IVAR____TtC9SeymourUI24WorkoutPlanBrickItemCell_artworkView];
      [*&v183[OBJC_IVAR____TtC9SeymourUI24WorkoutPlanBrickItemCell_artworkView] setContentMode_];
      v42 = *v41;
      v43 = *(v41 + 1);
      LODWORD(v159) = a9;
      v44 = v184;
      if (sub_20BA640CC(v184, v42, v43, a9 & 1))
      {
        v144 = v23;
        v141 = v28;
        v145 = v22;
        v138 = v19;
        v139 = v12;
        v157 = a11;
        v158 = a10;
        v151 = *v41;
        v149 = *(v41 + 1);
        ObjectType = swift_getObjectType();
        v147 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v45 = v175;
        v46 = *(v175 + 16);
        v154 = a9 & 1;
        v148 = a7;
        v152 = v41;
        v47 = v182;
        v48 = v176;
        v155 = v175 + 16;
        v153 = v46;
        v46(v182, v44, v176);
        v49 = *(v45 + 80);
        v50 = (v49 + 24) & ~v49;
        v140 = v174 + 7;
        v51 = (v174 + 7 + v50) & 0xFFFFFFFFFFFFFFF8;
        v52 = (v51 + 23) & 0xFFFFFFFFFFFFFFF8;
        v53 = (v52 + 23) & 0xFFFFFFFFFFFFFFF8;
        v146 = (v53 + 15) & 0xFFFFFFFFFFFFFFF8;
        v156 = v49;
        v54 = swift_allocObject();
        *(v54 + 16) = v147;
        v143 = *(v45 + 32);
        v142 = v45 + 32;
        v143(v54 + v50, v47, v48);
        v55 = (v54 + v51);
        v56 = v178;
        *v55 = v177;
        v55[1] = v56;
        v57 = (v54 + v52);
        v58 = v180;
        *v57 = v179;
        v57[1] = v58;
        *(v54 + v53) = v148;
        v59 = v54 + v146;
        *v59 = v181;
        *(v59 + 8) = v154;
        v60 = (v54 + ((v53 + 31) & 0xFFFFFFFFFFFFFFF8));
        v61 = v158;
        v62 = v157;
        *v60 = v158;
        v60[1] = v62;
        v63 = v149;
        v148 = v149[19];

        sub_20B584050(v61, v62);
        v148(sub_20BA658F8, v54, ObjectType, v63);

        if (v159)
        {
          v64 = [objc_opt_self() mainScreen];
          [v64 scale];
          v66 = v65;

          v67 = sub_20C137BF4() / v66;
          v68 = sub_20C137C04() / v66;
          v69 = v152;
        }

        else
        {
          v69 = v152;
          [*v152 bounds];
          v67 = v70;
          v68 = v71;
        }

        v72 = v182;
        v73 = v153;
        if (v67 <= 0.0 || v68 <= 0.0)
        {
        }

        else
        {
          v159 = ~v156;
          v74 = v69[1];
          v75 = swift_getObjectType();
          v74[15](0, v75, v74);
          v76 = v69[1];
          v77 = swift_getObjectType();
          v78 = v166;
          v79 = v176;
          v73(v166, v184, v176);
          (*(v175 + 56))(v78, 0, 1, v79);
          v76[2](v78, v77, v76);
          v80 = *v69;
          sub_20B51C88C(0, &qword_27C762070, 0x277D75348);
          sub_20C137BC4();
          v81 = sub_20C13D5A4();
          [v80 setBackgroundColor_];

          v82 = v69[1];
          v83 = swift_getObjectType();
          v82[22](COERCE_DOUBLE(*&v67), COERCE_DOUBLE(*&v68), 0, v83, v82);
          v84 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v73(v72, v184, v79);
          v85 = (v156 + 16) & v159;
          v86 = v73;
          v87 = (v140 + v85) & 0xFFFFFFFFFFFFFFF8;
          v88 = (v87 + 15) & 0xFFFFFFFFFFFFFFF8;
          v89 = swift_allocObject();
          v143(v89 + v85, v72, v79);
          *(v89 + v87) = v84;
          v90 = (v89 + v88);
          v91 = v184;
          *v90 = v67;
          v90[1] = v68;
          v175 = v89;
          v92 = (v89 + ((v88 + 23) & 0xFFFFFFFFFFFFFFF8));
          v93 = v79;
          v94 = v158;
          v95 = v157;
          *v92 = v158;
          v92[1] = v95;
          v86(v72, v91, v79);
          (*(v167 + 104))(v169, *MEMORY[0x277D542A8], v168);

          sub_20B584050(v94, v95);
          v96 = v173;
          v97 = v144;
          v98 = v183;
          sub_20C138A54();
          v99 = v170;
          sub_20B5F1C58(v96, v170);
          v100 = v145;
          if ((*(v97 + 48))(v99, 1, v145) == 1)
          {
            sub_20B520158(v99, &unk_27C766670, &unk_20C151580);
            v101 = sub_20BA1DD44(&OBJC_IVAR____TtC9SeymourUI24WorkoutPlanBrickItemCell_artworkView);
            if (v158)
            {
              v158(v101);
            }

            else
            {
            }

            (*(v172 + 8))(v96, v141);
          }

          else
          {
            v102 = v93;
            v181 = *(v97 + 32);
            v103 = v171;
            v181(v171, v99, v100);
            v104 = swift_allocObject();
            swift_unknownObjectWeakInit();
            v153(v72, v91, v102);
            v105 = (v156 + 40) & v159;
            v106 = v105 + v174;
            v107 = (v105 + v174) & 0xFFFFFFFFFFFFFFF8;
            v108 = swift_allocObject();
            *(v108 + 16) = v104;
            *(v108 + 24) = v67;
            *(v108 + 32) = v68;
            v143(v108 + v105, v72, v102);
            *(v108 + v106) = v154;
            v109 = v108 + v107;
            v110 = v158;
            v111 = v157;
            *(v109 + 8) = v158;
            *(v109 + 16) = v111;
            v112 = swift_allocObject();
            *(v112 + 16) = sub_20BA65944;
            *(v112 + 24) = v108;
            v113 = v144;
            v114 = v161;
            v115 = v103;
            v116 = v145;
            (*(v144 + 16))(v161, v115, v145);
            v117 = v113;
            v118 = (*(v113 + 80) + 16) & ~*(v113 + 80);
            v119 = (v160 + v118 + 7) & 0xFFFFFFFFFFFFFFF8;
            v120 = swift_allocObject();
            v181((v120 + v118), v114, v116);
            v121 = (v120 + v119);
            *v121 = sub_20B5F7760;
            v121[1] = v112;
            sub_20B584050(v110, v111);
            v122 = v164;
            sub_20C137C94();
            v123 = swift_allocObject();
            v124 = v175;
            *(v123 + 16) = sub_20BA65910;
            *(v123 + 24) = v124;
            v125 = swift_allocObject();
            *(v125 + 16) = sub_20BA66C80;
            *(v125 + 24) = v123;
            v126 = v165;
            v127 = v163;
            v128 = v139;
            (*(v165 + 16))(v163, v122, v139);
            v129 = (*(v126 + 80) + 16) & ~*(v126 + 80);
            v130 = (v162 + v129 + 7) & 0xFFFFFFFFFFFFFFF8;
            v131 = swift_allocObject();
            (*(v126 + 32))(v131 + v129, v127, v128);
            v132 = (v131 + v130);
            *v132 = sub_20B5F7764;
            v132[1] = v125;

            v133 = v138;
            sub_20C137C94();
            v134 = *(v126 + 8);
            v134(v122, v128);
            v135 = sub_20C137CB4();
            v136 = swift_allocObject();
            *(v136 + 16) = 0;
            *(v136 + 24) = 0;
            v135(sub_20B5DF6DC, v136);

            v134(v133, v128);
            (*(v117 + 8))(v171, v145);
            (*(v172 + 8))(v173, v141);
          }
        }
      }

      else
      {
      }
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_20BA50124(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t (*)(), uint64_t, uint64_t, void *), void (*a8)(char *, uint64_t, uint64_t), unsigned __int8 a9, void (*a10)(uint64_t), uint64_t a11)
{
  v180 = a6;
  v181 = a8;
  v178 = a4;
  v179 = a5;
  v177 = a3;
  v184 = a2;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0, &unk_20C150360);
  v165 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v163 = &v137 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v164 = &v137 - v15;
  v162 = v16;
  MEMORY[0x28223BE20](v17);
  v19 = &v137 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766670, &unk_20C151580);
  MEMORY[0x28223BE20](v20 - 8);
  v170 = &v137 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BAB0, &unk_20C150570);
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v161 = &v137 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v160 = v24;
  MEMORY[0x28223BE20](v25);
  v171 = &v137 - v26;
  v168 = sub_20C1391C4();
  v167 = *(v168 - 8);
  MEMORY[0x28223BE20](v168);
  v169 = &v137 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_20C138A64();
  v172 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v173 = &v137 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766680, &unk_20C14F920);
  MEMORY[0x28223BE20](v30 - 8);
  v166 = &v137 - v31;
  v32 = sub_20C137C24();
  v175 = *(v32 - 8);
  v176 = v32;
  MEMORY[0x28223BE20](v32);
  v174 = v33;
  v182 = &v137 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_20C13C554();
  v35 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v37 = (&v137 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v183 = Strong;
    sub_20B51C88C(0, &qword_281100530, 0x277D85C78);
    *v37 = sub_20C13D374();
    (*(v35 + 104))(v37, *MEMORY[0x277D85200], v34);
    v39 = sub_20C13C584();
    (*(v35 + 8))(v37, v34);
    if (v39)
    {
      v40 = v183;
      v41 = &v183[OBJC_IVAR____TtC9SeymourUI25FullWidthDetailHeaderCell_artworkView];
      [*&v183[OBJC_IVAR____TtC9SeymourUI25FullWidthDetailHeaderCell_artworkView] setContentMode_];
      v42 = *v41;
      v43 = *(v41 + 1);
      LODWORD(v159) = a9;
      v44 = v184;
      if (sub_20BA640CC(v184, v42, v43, a9 & 1))
      {
        v144 = v23;
        v141 = v28;
        v145 = v22;
        v138 = v19;
        v139 = v12;
        v157 = a11;
        v158 = a10;
        v151 = *v41;
        v149 = *(v41 + 1);
        ObjectType = swift_getObjectType();
        v147 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v45 = v175;
        v46 = *(v175 + 16);
        v154 = a9 & 1;
        v148 = a7;
        v152 = v41;
        v47 = v182;
        v48 = v176;
        v155 = v175 + 16;
        v153 = v46;
        v46(v182, v44, v176);
        v49 = *(v45 + 80);
        v50 = (v49 + 24) & ~v49;
        v140 = v174 + 7;
        v51 = (v174 + 7 + v50) & 0xFFFFFFFFFFFFFFF8;
        v52 = (v51 + 23) & 0xFFFFFFFFFFFFFFF8;
        v53 = (v52 + 23) & 0xFFFFFFFFFFFFFFF8;
        v146 = (v53 + 15) & 0xFFFFFFFFFFFFFFF8;
        v156 = v49;
        v54 = swift_allocObject();
        *(v54 + 16) = v147;
        v143 = *(v45 + 32);
        v142 = v45 + 32;
        v143(v54 + v50, v47, v48);
        v55 = (v54 + v51);
        v56 = v178;
        *v55 = v177;
        v55[1] = v56;
        v57 = (v54 + v52);
        v58 = v180;
        *v57 = v179;
        v57[1] = v58;
        *(v54 + v53) = v148;
        v59 = v54 + v146;
        *v59 = v181;
        *(v59 + 8) = v154;
        v60 = (v54 + ((v53 + 31) & 0xFFFFFFFFFFFFFFF8));
        v61 = v158;
        v62 = v157;
        *v60 = v158;
        v60[1] = v62;
        v63 = v149;
        v148 = v149[19];

        sub_20B584050(v61, v62);
        v148(sub_20BA64F5C, v54, ObjectType, v63);

        if (v159)
        {
          v64 = [objc_opt_self() mainScreen];
          [v64 scale];
          v66 = v65;

          v67 = sub_20C137BF4() / v66;
          v68 = sub_20C137C04() / v66;
          v69 = v152;
        }

        else
        {
          v69 = v152;
          [*v152 bounds];
          v67 = v70;
          v68 = v71;
        }

        v72 = v182;
        v73 = v153;
        if (v67 <= 0.0 || v68 <= 0.0)
        {
        }

        else
        {
          v159 = ~v156;
          v74 = v69[1];
          v75 = swift_getObjectType();
          v74[15](0, v75, v74);
          v76 = v69[1];
          v77 = swift_getObjectType();
          v78 = v166;
          v79 = v176;
          v73(v166, v184, v176);
          (*(v175 + 56))(v78, 0, 1, v79);
          v76[2](v78, v77, v76);
          v80 = *v69;
          sub_20B51C88C(0, &qword_27C762070, 0x277D75348);
          sub_20C137BC4();
          v81 = sub_20C13D5A4();
          [v80 setBackgroundColor_];

          v82 = v69[1];
          v83 = swift_getObjectType();
          v82[22](COERCE_DOUBLE(*&v67), COERCE_DOUBLE(*&v68), 0, v83, v82);
          v84 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v73(v72, v184, v79);
          v85 = (v156 + 16) & v159;
          v86 = v73;
          v87 = (v140 + v85) & 0xFFFFFFFFFFFFFFF8;
          v88 = (v87 + 15) & 0xFFFFFFFFFFFFFFF8;
          v89 = swift_allocObject();
          v143(v89 + v85, v72, v79);
          *(v89 + v87) = v84;
          v90 = (v89 + v88);
          v91 = v184;
          *v90 = v67;
          v90[1] = v68;
          v175 = v89;
          v92 = (v89 + ((v88 + 23) & 0xFFFFFFFFFFFFFFF8));
          v93 = v79;
          v94 = v158;
          v95 = v157;
          *v92 = v158;
          v92[1] = v95;
          v86(v72, v91, v79);
          (*(v167 + 104))(v169, *MEMORY[0x277D542A8], v168);

          sub_20B584050(v94, v95);
          v96 = v173;
          v97 = v144;
          v98 = v183;
          sub_20C138A54();
          v99 = v170;
          sub_20B5F1C80(v96, v170);
          v100 = v145;
          if ((*(v97 + 48))(v99, 1, v145) == 1)
          {
            sub_20B520158(v99, &unk_27C766670, &unk_20C151580);
            v101 = sub_20BA1DD44(&OBJC_IVAR____TtC9SeymourUI25FullWidthDetailHeaderCell_artworkView);
            if (v158)
            {
              v158(v101);
            }

            else
            {
            }

            (*(v172 + 8))(v96, v141);
          }

          else
          {
            v102 = v93;
            v181 = *(v97 + 32);
            v103 = v171;
            v181(v171, v99, v100);
            v104 = swift_allocObject();
            swift_unknownObjectWeakInit();
            v153(v72, v91, v102);
            v105 = (v156 + 40) & v159;
            v106 = v105 + v174;
            v107 = (v105 + v174) & 0xFFFFFFFFFFFFFFF8;
            v108 = swift_allocObject();
            *(v108 + 16) = v104;
            *(v108 + 24) = v67;
            *(v108 + 32) = v68;
            v143(v108 + v105, v72, v102);
            *(v108 + v106) = v154;
            v109 = v108 + v107;
            v110 = v158;
            v111 = v157;
            *(v109 + 8) = v158;
            *(v109 + 16) = v111;
            v112 = swift_allocObject();
            *(v112 + 16) = sub_20BA64FA8;
            *(v112 + 24) = v108;
            v113 = v144;
            v114 = v161;
            v115 = v103;
            v116 = v145;
            (*(v144 + 16))(v161, v115, v145);
            v117 = v113;
            v118 = (*(v113 + 80) + 16) & ~*(v113 + 80);
            v119 = (v160 + v118 + 7) & 0xFFFFFFFFFFFFFFF8;
            v120 = swift_allocObject();
            v181((v120 + v118), v114, v116);
            v121 = (v120 + v119);
            *v121 = sub_20B5F7760;
            v121[1] = v112;
            sub_20B584050(v110, v111);
            v122 = v164;
            sub_20C137C94();
            v123 = swift_allocObject();
            v124 = v175;
            *(v123 + 16) = sub_20BA64F74;
            *(v123 + 24) = v124;
            v125 = swift_allocObject();
            *(v125 + 16) = sub_20BA66C80;
            *(v125 + 24) = v123;
            v126 = v165;
            v127 = v163;
            v128 = v139;
            (*(v165 + 16))(v163, v122, v139);
            v129 = (*(v126 + 80) + 16) & ~*(v126 + 80);
            v130 = (v162 + v129 + 7) & 0xFFFFFFFFFFFFFFF8;
            v131 = swift_allocObject();
            (*(v126 + 32))(v131 + v129, v127, v128);
            v132 = (v131 + v130);
            *v132 = sub_20B5F7764;
            v132[1] = v125;

            v133 = v138;
            sub_20C137C94();
            v134 = *(v126 + 8);
            v134(v122, v128);
            v135 = sub_20C137CB4();
            v136 = swift_allocObject();
            *(v136 + 16) = 0;
            *(v136 + 24) = 0;
            v135(sub_20B5DF6DC, v136);

            v134(v133, v128);
            (*(v117 + 8))(v171, v145);
            (*(v172 + 8))(v173, v141);
          }
        }
      }

      else
      {
      }
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_20BA511AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t (*)(), uint64_t, uint64_t, void *), void (*a8)(char *, uint64_t, uint64_t), unsigned __int8 a9, void (*a10)(uint64_t), uint64_t a11)
{
  v180 = a6;
  v181 = a8;
  v178 = a4;
  v179 = a5;
  v177 = a3;
  v184 = a2;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0, &unk_20C150360);
  v165 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v163 = &v137 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v164 = &v137 - v15;
  v162 = v16;
  MEMORY[0x28223BE20](v17);
  v19 = &v137 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766670, &unk_20C151580);
  MEMORY[0x28223BE20](v20 - 8);
  v170 = &v137 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BAB0, &unk_20C150570);
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v161 = &v137 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v160 = v24;
  MEMORY[0x28223BE20](v25);
  v171 = &v137 - v26;
  v168 = sub_20C1391C4();
  v167 = *(v168 - 8);
  MEMORY[0x28223BE20](v168);
  v169 = &v137 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_20C138A64();
  v172 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v173 = &v137 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766680, &unk_20C14F920);
  MEMORY[0x28223BE20](v30 - 8);
  v166 = &v137 - v31;
  v32 = sub_20C137C24();
  v175 = *(v32 - 8);
  v176 = v32;
  MEMORY[0x28223BE20](v32);
  v174 = v33;
  v182 = &v137 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_20C13C554();
  v35 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v37 = (&v137 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v183 = Strong;
    sub_20B51C88C(0, &qword_281100530, 0x277D85C78);
    *v37 = sub_20C13D374();
    (*(v35 + 104))(v37, *MEMORY[0x277D85200], v34);
    v39 = sub_20C13C584();
    (*(v35 + 8))(v37, v34);
    if (v39)
    {
      v40 = v183;
      v41 = &v183[OBJC_IVAR____TtC9SeymourUI25GuidedWorkoutBrickRowCell_artworkView];
      [*&v183[OBJC_IVAR____TtC9SeymourUI25GuidedWorkoutBrickRowCell_artworkView] setContentMode_];
      v42 = *v41;
      v43 = *(v41 + 1);
      LODWORD(v159) = a9;
      v44 = v184;
      if (sub_20BA640CC(v184, v42, v43, a9 & 1))
      {
        v144 = v23;
        v141 = v28;
        v145 = v22;
        v138 = v19;
        v139 = v12;
        v157 = a11;
        v158 = a10;
        v151 = *v41;
        v149 = *(v41 + 1);
        ObjectType = swift_getObjectType();
        v147 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v45 = v175;
        v46 = *(v175 + 16);
        v154 = a9 & 1;
        v148 = a7;
        v152 = v41;
        v47 = v182;
        v48 = v176;
        v155 = v175 + 16;
        v153 = v46;
        v46(v182, v44, v176);
        v49 = *(v45 + 80);
        v50 = (v49 + 24) & ~v49;
        v140 = v174 + 7;
        v51 = (v174 + 7 + v50) & 0xFFFFFFFFFFFFFFF8;
        v52 = (v51 + 23) & 0xFFFFFFFFFFFFFFF8;
        v53 = (v52 + 23) & 0xFFFFFFFFFFFFFFF8;
        v146 = (v53 + 15) & 0xFFFFFFFFFFFFFFF8;
        v156 = v49;
        v54 = swift_allocObject();
        *(v54 + 16) = v147;
        v143 = *(v45 + 32);
        v142 = v45 + 32;
        v143(v54 + v50, v47, v48);
        v55 = (v54 + v51);
        v56 = v178;
        *v55 = v177;
        v55[1] = v56;
        v57 = (v54 + v52);
        v58 = v180;
        *v57 = v179;
        v57[1] = v58;
        *(v54 + v53) = v148;
        v59 = v54 + v146;
        *v59 = v181;
        *(v59 + 8) = v154;
        v60 = (v54 + ((v53 + 31) & 0xFFFFFFFFFFFFFFF8));
        v61 = v158;
        v62 = v157;
        *v60 = v158;
        v60[1] = v62;
        v63 = v149;
        v148 = v149[19];

        sub_20B584050(v61, v62);
        v148(sub_20BA65F60, v54, ObjectType, v63);

        if (v159)
        {
          v64 = [objc_opt_self() mainScreen];
          [v64 scale];
          v66 = v65;

          v67 = sub_20C137BF4() / v66;
          v68 = sub_20C137C04() / v66;
          v69 = v152;
        }

        else
        {
          v69 = v152;
          [*v152 bounds];
          v67 = v70;
          v68 = v71;
        }

        v72 = v182;
        v73 = v153;
        if (v67 <= 0.0 || v68 <= 0.0)
        {
        }

        else
        {
          v159 = ~v156;
          v74 = v69[1];
          v75 = swift_getObjectType();
          v74[15](0, v75, v74);
          v76 = v69[1];
          v77 = swift_getObjectType();
          v78 = v166;
          v79 = v176;
          v73(v166, v184, v176);
          (*(v175 + 56))(v78, 0, 1, v79);
          v76[2](v78, v77, v76);
          v80 = *v69;
          sub_20B51C88C(0, &qword_27C762070, 0x277D75348);
          sub_20C137BC4();
          v81 = sub_20C13D5A4();
          [v80 setBackgroundColor_];

          v82 = v69[1];
          v83 = swift_getObjectType();
          v82[22](COERCE_DOUBLE(*&v67), COERCE_DOUBLE(*&v68), 0, v83, v82);
          v84 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v73(v72, v184, v79);
          v85 = (v156 + 16) & v159;
          v86 = v73;
          v87 = (v140 + v85) & 0xFFFFFFFFFFFFFFF8;
          v88 = (v87 + 15) & 0xFFFFFFFFFFFFFFF8;
          v89 = swift_allocObject();
          v143(v89 + v85, v72, v79);
          *(v89 + v87) = v84;
          v90 = (v89 + v88);
          v91 = v184;
          *v90 = v67;
          v90[1] = v68;
          v175 = v89;
          v92 = (v89 + ((v88 + 23) & 0xFFFFFFFFFFFFFFF8));
          v93 = v79;
          v94 = v158;
          v95 = v157;
          *v92 = v158;
          v92[1] = v95;
          v86(v72, v91, v79);
          (*(v167 + 104))(v169, *MEMORY[0x277D542A8], v168);

          sub_20B584050(v94, v95);
          v96 = v173;
          v97 = v144;
          v98 = v183;
          sub_20C138A54();
          v99 = v170;
          sub_20B5F1CA8(v96, v170);
          v100 = v145;
          if ((*(v97 + 48))(v99, 1, v145) == 1)
          {
            sub_20B520158(v99, &unk_27C766670, &unk_20C151580);
            v101 = sub_20BA1DD44(&OBJC_IVAR____TtC9SeymourUI25GuidedWorkoutBrickRowCell_artworkView);
            if (v158)
            {
              v158(v101);
            }

            else
            {
            }

            (*(v172 + 8))(v96, v141);
          }

          else
          {
            v102 = v93;
            v181 = *(v97 + 32);
            v103 = v171;
            v181(v171, v99, v100);
            v104 = swift_allocObject();
            swift_unknownObjectWeakInit();
            v153(v72, v91, v102);
            v105 = (v156 + 40) & v159;
            v106 = v105 + v174;
            v107 = (v105 + v174) & 0xFFFFFFFFFFFFFFF8;
            v108 = swift_allocObject();
            *(v108 + 16) = v104;
            *(v108 + 24) = v67;
            *(v108 + 32) = v68;
            v143(v108 + v105, v72, v102);
            *(v108 + v106) = v154;
            v109 = v108 + v107;
            v110 = v158;
            v111 = v157;
            *(v109 + 8) = v158;
            *(v109 + 16) = v111;
            v112 = swift_allocObject();
            *(v112 + 16) = sub_20BA65FAC;
            *(v112 + 24) = v108;
            v113 = v144;
            v114 = v161;
            v115 = v103;
            v116 = v145;
            (*(v144 + 16))(v161, v115, v145);
            v117 = v113;
            v118 = (*(v113 + 80) + 16) & ~*(v113 + 80);
            v119 = (v160 + v118 + 7) & 0xFFFFFFFFFFFFFFF8;
            v120 = swift_allocObject();
            v181((v120 + v118), v114, v116);
            v121 = (v120 + v119);
            *v121 = sub_20B5F7760;
            v121[1] = v112;
            sub_20B584050(v110, v111);
            v122 = v164;
            sub_20C137C94();
            v123 = swift_allocObject();
            v124 = v175;
            *(v123 + 16) = sub_20BA65F78;
            *(v123 + 24) = v124;
            v125 = swift_allocObject();
            *(v125 + 16) = sub_20BA66C80;
            *(v125 + 24) = v123;
            v126 = v165;
            v127 = v163;
            v128 = v139;
            (*(v165 + 16))(v163, v122, v139);
            v129 = (*(v126 + 80) + 16) & ~*(v126 + 80);
            v130 = (v162 + v129 + 7) & 0xFFFFFFFFFFFFFFF8;
            v131 = swift_allocObject();
            (*(v126 + 32))(v131 + v129, v127, v128);
            v132 = (v131 + v130);
            *v132 = sub_20B5F7764;
            v132[1] = v125;

            v133 = v138;
            sub_20C137C94();
            v134 = *(v126 + 8);
            v134(v122, v128);
            v135 = sub_20C137CB4();
            v136 = swift_allocObject();
            *(v136 + 16) = 0;
            *(v136 + 24) = 0;
            v135(sub_20B5DF6DC, v136);

            v134(v133, v128);
            (*(v117 + 8))(v171, v145);
            (*(v172 + 8))(v173, v141);
          }
        }
      }

      else
      {
      }
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_20BA52234(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t (*)(), uint64_t, uint64_t, void *), void (*a8)(char *, uint64_t, uint64_t), unsigned __int8 a9, void (*a10)(uint64_t), uint64_t a11)
{
  v180 = a6;
  v181 = a8;
  v178 = a4;
  v179 = a5;
  v177 = a3;
  v184 = a2;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0, &unk_20C150360);
  v165 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v163 = &v137 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v164 = &v137 - v15;
  v162 = v16;
  MEMORY[0x28223BE20](v17);
  v19 = &v137 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766670, &unk_20C151580);
  MEMORY[0x28223BE20](v20 - 8);
  v170 = &v137 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BAB0, &unk_20C150570);
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v161 = &v137 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v160 = v24;
  MEMORY[0x28223BE20](v25);
  v171 = &v137 - v26;
  v168 = sub_20C1391C4();
  v167 = *(v168 - 8);
  MEMORY[0x28223BE20](v168);
  v169 = &v137 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_20C138A64();
  v172 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v173 = &v137 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766680, &unk_20C14F920);
  MEMORY[0x28223BE20](v30 - 8);
  v166 = &v137 - v31;
  v32 = sub_20C137C24();
  v175 = *(v32 - 8);
  v176 = v32;
  MEMORY[0x28223BE20](v32);
  v174 = v33;
  v182 = &v137 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_20C13C554();
  v35 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v37 = (&v137 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v183 = Strong;
    sub_20B51C88C(0, &qword_281100530, 0x277D85C78);
    *v37 = sub_20C13D374();
    (*(v35 + 104))(v37, *MEMORY[0x277D85200], v34);
    v39 = sub_20C13C584();
    (*(v35 + 8))(v37, v34);
    if (v39)
    {
      v40 = v183;
      v41 = &v183[OBJC_IVAR____TtC9SeymourUI25MarketingHeaderBannerCell_artworkView];
      [*&v183[OBJC_IVAR____TtC9SeymourUI25MarketingHeaderBannerCell_artworkView] setContentMode_];
      v42 = *v41;
      v43 = *(v41 + 1);
      LODWORD(v159) = a9;
      v44 = v184;
      if (sub_20BA640CC(v184, v42, v43, a9 & 1))
      {
        v144 = v23;
        v141 = v28;
        v145 = v22;
        v138 = v19;
        v139 = v12;
        v157 = a11;
        v158 = a10;
        v151 = *v41;
        v149 = *(v41 + 1);
        ObjectType = swift_getObjectType();
        v147 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v45 = v175;
        v46 = *(v175 + 16);
        v154 = a9 & 1;
        v148 = a7;
        v152 = v41;
        v47 = v182;
        v48 = v176;
        v155 = v175 + 16;
        v153 = v46;
        v46(v182, v44, v176);
        v49 = *(v45 + 80);
        v50 = (v49 + 24) & ~v49;
        v140 = v174 + 7;
        v51 = (v174 + 7 + v50) & 0xFFFFFFFFFFFFFFF8;
        v52 = (v51 + 23) & 0xFFFFFFFFFFFFFFF8;
        v53 = (v52 + 23) & 0xFFFFFFFFFFFFFFF8;
        v146 = (v53 + 15) & 0xFFFFFFFFFFFFFFF8;
        v156 = v49;
        v54 = swift_allocObject();
        *(v54 + 16) = v147;
        v143 = *(v45 + 32);
        v142 = v45 + 32;
        v143(v54 + v50, v47, v48);
        v55 = (v54 + v51);
        v56 = v178;
        *v55 = v177;
        v55[1] = v56;
        v57 = (v54 + v52);
        v58 = v180;
        *v57 = v179;
        v57[1] = v58;
        *(v54 + v53) = v148;
        v59 = v54 + v146;
        *v59 = v181;
        *(v59 + 8) = v154;
        v60 = (v54 + ((v53 + 31) & 0xFFFFFFFFFFFFFFF8));
        v61 = v158;
        v62 = v157;
        *v60 = v158;
        v60[1] = v62;
        v63 = v149;
        v148 = v149[19];

        sub_20B584050(v61, v62);
        v148(sub_20BA66710, v54, ObjectType, v63);

        if (v159)
        {
          v64 = [objc_opt_self() mainScreen];
          [v64 scale];
          v66 = v65;

          v67 = sub_20C137BF4() / v66;
          v68 = sub_20C137C04() / v66;
          v69 = v152;
        }

        else
        {
          v69 = v152;
          [*v152 bounds];
          v67 = v70;
          v68 = v71;
        }

        v72 = v182;
        v73 = v153;
        if (v67 <= 0.0 || v68 <= 0.0)
        {
        }

        else
        {
          v159 = ~v156;
          v74 = v69[1];
          v75 = swift_getObjectType();
          v74[15](0, v75, v74);
          v76 = v69[1];
          v77 = swift_getObjectType();
          v78 = v166;
          v79 = v176;
          v73(v166, v184, v176);
          (*(v175 + 56))(v78, 0, 1, v79);
          v76[2](v78, v77, v76);
          v80 = *v69;
          sub_20B51C88C(0, &qword_27C762070, 0x277D75348);
          sub_20C137BC4();
          v81 = sub_20C13D5A4();
          [v80 setBackgroundColor_];

          v82 = v69[1];
          v83 = swift_getObjectType();
          v82[22](COERCE_DOUBLE(*&v67), COERCE_DOUBLE(*&v68), 0, v83, v82);
          v84 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v73(v72, v184, v79);
          v85 = (v156 + 16) & v159;
          v86 = v73;
          v87 = (v140 + v85) & 0xFFFFFFFFFFFFFFF8;
          v88 = (v87 + 15) & 0xFFFFFFFFFFFFFFF8;
          v89 = swift_allocObject();
          v143(v89 + v85, v72, v79);
          *(v89 + v87) = v84;
          v90 = (v89 + v88);
          v91 = v184;
          *v90 = v67;
          v90[1] = v68;
          v175 = v89;
          v92 = (v89 + ((v88 + 23) & 0xFFFFFFFFFFFFFFF8));
          v93 = v79;
          v94 = v158;
          v95 = v157;
          *v92 = v158;
          v92[1] = v95;
          v86(v72, v91, v79);
          (*(v167 + 104))(v169, *MEMORY[0x277D542A8], v168);

          sub_20B584050(v94, v95);
          v96 = v173;
          v97 = v144;
          v98 = v183;
          sub_20C138A54();
          v99 = v170;
          sub_20B5F1CD0(v96, v170);
          v100 = v145;
          if ((*(v97 + 48))(v99, 1, v145) == 1)
          {
            sub_20B520158(v99, &unk_27C766670, &unk_20C151580);
            v101 = sub_20BA1DD44(&OBJC_IVAR____TtC9SeymourUI25MarketingHeaderBannerCell_artworkView);
            if (v158)
            {
              v158(v101);
            }

            else
            {
            }

            (*(v172 + 8))(v96, v141);
          }

          else
          {
            v102 = v93;
            v181 = *(v97 + 32);
            v103 = v171;
            v181(v171, v99, v100);
            v104 = swift_allocObject();
            swift_unknownObjectWeakInit();
            v153(v72, v91, v102);
            v105 = (v156 + 40) & v159;
            v106 = v105 + v174;
            v107 = (v105 + v174) & 0xFFFFFFFFFFFFFFF8;
            v108 = swift_allocObject();
            *(v108 + 16) = v104;
            *(v108 + 24) = v67;
            *(v108 + 32) = v68;
            v143(v108 + v105, v72, v102);
            *(v108 + v106) = v154;
            v109 = v108 + v107;
            v110 = v158;
            v111 = v157;
            *(v109 + 8) = v158;
            *(v109 + 16) = v111;
            v112 = swift_allocObject();
            *(v112 + 16) = sub_20BA6675C;
            *(v112 + 24) = v108;
            v113 = v144;
            v114 = v161;
            v115 = v103;
            v116 = v145;
            (*(v144 + 16))(v161, v115, v145);
            v117 = v113;
            v118 = (*(v113 + 80) + 16) & ~*(v113 + 80);
            v119 = (v160 + v118 + 7) & 0xFFFFFFFFFFFFFFF8;
            v120 = swift_allocObject();
            v181((v120 + v118), v114, v116);
            v121 = (v120 + v119);
            *v121 = sub_20B5F7760;
            v121[1] = v112;
            sub_20B584050(v110, v111);
            v122 = v164;
            sub_20C137C94();
            v123 = swift_allocObject();
            v124 = v175;
            *(v123 + 16) = sub_20BA66728;
            *(v123 + 24) = v124;
            v125 = swift_allocObject();
            *(v125 + 16) = sub_20BA66C80;
            *(v125 + 24) = v123;
            v126 = v165;
            v127 = v163;
            v128 = v139;
            (*(v165 + 16))(v163, v122, v139);
            v129 = (*(v126 + 80) + 16) & ~*(v126 + 80);
            v130 = (v162 + v129 + 7) & 0xFFFFFFFFFFFFFFF8;
            v131 = swift_allocObject();
            (*(v126 + 32))(v131 + v129, v127, v128);
            v132 = (v131 + v130);
            *v132 = sub_20B5F7764;
            v132[1] = v125;

            v133 = v138;
            sub_20C137C94();
            v134 = *(v126 + 8);
            v134(v122, v128);
            v135 = sub_20C137CB4();
            v136 = swift_allocObject();
            *(v136 + 16) = 0;
            *(v136 + 24) = 0;
            v135(sub_20B5DF6DC, v136);

            v134(v133, v128);
            (*(v117 + 8))(v171, v145);
            (*(v172 + 8))(v173, v141);
          }
        }
      }

      else
      {
      }
    }

    else
    {
      __break(1u);
    }
  }
}