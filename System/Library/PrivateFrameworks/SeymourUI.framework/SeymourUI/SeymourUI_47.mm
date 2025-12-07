void sub_20BA532BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t (*)(), uint64_t, uint64_t, void *), void (*a8)(char *, uint64_t, uint64_t), unsigned __int8 a9, void (*a10)(uint64_t), uint64_t a11)
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
      v41 = &v183[OBJC_IVAR____TtC9SeymourUI25PhoneIndexedBrickItemCell_artworkView];
      [*&v183[OBJC_IVAR____TtC9SeymourUI25PhoneIndexedBrickItemCell_artworkView] setContentMode_];
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
        v148(sub_20BA65668, v54, ObjectType, v63);

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
          sub_20B5F1CF8(v96, v170);
          v100 = v145;
          if ((*(v97 + 48))(v99, 1, v145) == 1)
          {
            sub_20B520158(v99, &unk_27C766670, &unk_20C151580);
            v101 = sub_20BA1DD44(&OBJC_IVAR____TtC9SeymourUI25PhoneIndexedBrickItemCell_artworkView);
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
            *(v112 + 16) = sub_20BA656B4;
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
            *(v123 + 16) = sub_20BA65680;
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

void sub_20BA54344(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t (*)(), uint64_t, uint64_t, void *), void (*a8)(char *, uint64_t, uint64_t), unsigned __int8 a9, void (*a10)(uint64_t), uint64_t a11)
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
      v41 = &v183[OBJC_IVAR____TtC9SeymourUI25PhoneStandardBrickRowCell_artworkView];
      [*&v183[OBJC_IVAR____TtC9SeymourUI25PhoneStandardBrickRowCell_artworkView] setContentMode_];
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
        v148(sub_20BA650A4, v54, ObjectType, v63);

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
          sub_20B5F1D20(v96, v170);
          v100 = v145;
          if ((*(v97 + 48))(v99, 1, v145) == 1)
          {
            sub_20B520158(v99, &unk_27C766670, &unk_20C151580);
            v101 = sub_20BA1DD44(&OBJC_IVAR____TtC9SeymourUI25PhoneStandardBrickRowCell_artworkView);
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
            *(v112 + 16) = sub_20BA650F0;
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
            *(v123 + 16) = sub_20BA650BC;
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

void sub_20BA553CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t (*)(), uint64_t, uint64_t, void *), void (*a8)(char *, uint64_t, uint64_t), unsigned __int8 a9, void (*a10)(uint64_t), uint64_t a11)
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
      v41 = &v183[OBJC_IVAR____TtC9SeymourUI26GuidedWorkoutBrickItemCell_artworkView];
      [*&v183[OBJC_IVAR____TtC9SeymourUI26GuidedWorkoutBrickItemCell_artworkView] setContentMode_];
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
        v148(sub_20BA64C28, v54, ObjectType, v63);

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
          sub_20B5F1D48(v96, v170);
          v100 = v145;
          if ((*(v97 + 48))(v99, 1, v145) == 1)
          {
            sub_20B520158(v99, &unk_27C766670, &unk_20C151580);
            v101 = sub_20BA1DD44(&OBJC_IVAR____TtC9SeymourUI26GuidedWorkoutBrickItemCell_artworkView);
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
            *(v112 + 16) = sub_20BA64C74;
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
            *(v123 + 16) = sub_20BA64C40;
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

void sub_20BA56454(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t (*)(), uint64_t, uint64_t, void *), void (*a8)(char *, uint64_t, uint64_t), unsigned __int8 a9, void (*a10)(uint64_t), uint64_t a11)
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
      v41 = &v183[OBJC_IVAR____TtC9SeymourUI26TVWorkoutPlanBrickItemCell_artworkView];
      [*&v183[OBJC_IVAR____TtC9SeymourUI26TVWorkoutPlanBrickItemCell_artworkView] setContentMode_];
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
        v148(sub_20BA65A40, v54, ObjectType, v63);

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
          sub_20B5F1D70(v96, v170);
          v100 = v145;
          if ((*(v97 + 48))(v99, 1, v145) == 1)
          {
            sub_20B520158(v99, &unk_27C766670, &unk_20C151580);
            v101 = sub_20BA1DD44(&OBJC_IVAR____TtC9SeymourUI26TVWorkoutPlanBrickItemCell_artworkView);
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
            *(v112 + 16) = sub_20BA65A8C;
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
            *(v123 + 16) = sub_20BA65A58;
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

void sub_20BA574DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t (*)(), uint64_t, uint64_t, void *), void (*a8)(char *, uint64_t, uint64_t), unsigned __int8 a9, void (*a10)(uint64_t), uint64_t a11)
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
      v41 = &v183[OBJC_IVAR____TtC9SeymourUI26TabletIndexedBrickItemCell_artworkView];
      [*&v183[OBJC_IVAR____TtC9SeymourUI26TabletIndexedBrickItemCell_artworkView] setContentMode_];
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
        v148(sub_20BA651EC, v54, ObjectType, v63);

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
          sub_20B5F1D98(v96, v170);
          v100 = v145;
          if ((*(v97 + 48))(v99, 1, v145) == 1)
          {
            sub_20B520158(v99, &unk_27C766670, &unk_20C151580);
            v101 = sub_20BA1DD44(&OBJC_IVAR____TtC9SeymourUI26TabletIndexedBrickItemCell_artworkView);
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
            *(v112 + 16) = sub_20BA65238;
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
            *(v123 + 16) = sub_20BA65204;
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

void sub_20BA58564(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t (*)(), uint64_t, uint64_t, void *), void (*a8)(char *, uint64_t, uint64_t), unsigned __int8 a9, void (*a10)(uint64_t), uint64_t a11)
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
      v41 = &v183[OBJC_IVAR____TtC9SeymourUI26TabletStandardBrickRowCell_artworkView];
      [*&v183[OBJC_IVAR____TtC9SeymourUI26TabletStandardBrickRowCell_artworkView] setContentMode_];
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
        v148(sub_20BA660A8, v54, ObjectType, v63);

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
          sub_20B5F1DC0(v96, v170);
          v100 = v145;
          if ((*(v97 + 48))(v99, 1, v145) == 1)
          {
            sub_20B520158(v99, &unk_27C766670, &unk_20C151580);
            v101 = sub_20BA1DD44(&OBJC_IVAR____TtC9SeymourUI26TabletStandardBrickRowCell_artworkView);
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
            *(v112 + 16) = sub_20BA660F4;
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
            *(v123 + 16) = sub_20BA660C0;
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

void sub_20BA595EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t (*)(), uint64_t, uint64_t, void *), void (*a8)(char *, uint64_t, uint64_t), unsigned __int8 a9, void (*a10)(uint64_t), uint64_t a11)
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
      v41 = &v183[OBJC_IVAR____TtC9SeymourUI28WorkoutPlanScheduledItemCell_artworkView];
      [*&v183[OBJC_IVAR____TtC9SeymourUI28WorkoutPlanScheduledItemCell_artworkView] setContentMode_];
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
        v148(sub_20BA66338, v54, ObjectType, v63);

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
          sub_20B5F1DE8(v96, v170);
          v100 = v145;
          if ((*(v97 + 48))(v99, 1, v145) == 1)
          {
            sub_20B520158(v99, &unk_27C766670, &unk_20C151580);
            v101 = sub_20BA1DD44(&OBJC_IVAR____TtC9SeymourUI28WorkoutPlanScheduledItemCell_artworkView);
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
            *(v112 + 16) = sub_20BA66384;
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
            *(v123 + 16) = sub_20BA66350;
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

void sub_20BA5A674(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t (*)(), uint64_t, uint64_t, void *), void (*a8)(char *, uint64_t, uint64_t), unsigned __int8 a9, void (*a10)(uint64_t), uint64_t a11)
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
      v41 = &v183[OBJC_IVAR____TtC9SeymourUI30TVFilterResultDetailHeaderCell_artworkView];
      [*&v183[OBJC_IVAR____TtC9SeymourUI30TVFilterResultDetailHeaderCell_artworkView] setContentMode_];
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
        v148(sub_20BA65000, v54, ObjectType, v63);

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
          sub_20B5F1E10(v96, v170);
          v100 = v145;
          if ((*(v97 + 48))(v99, 1, v145) == 1)
          {
            sub_20B520158(v99, &unk_27C766670, &unk_20C151580);
            v101 = sub_20BA1DD44(&OBJC_IVAR____TtC9SeymourUI30TVFilterResultDetailHeaderCell_artworkView);
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
            *(v112 + 16) = sub_20BA6504C;
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
            *(v123 + 16) = sub_20BA65018;
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

void sub_20BA5B6FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t (*)(), uint64_t, uint64_t, void *), void (*a8)(char *, uint64_t, uint64_t), unsigned __int8 a9, void (*a10)(uint64_t), uint64_t a11)
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
      v41 = &v183[OBJC_IVAR____TtC9SeymourUI30TabletWorkoutPlanBrickItemCell_artworkView];
      [*&v183[OBJC_IVAR____TtC9SeymourUI30TabletWorkoutPlanBrickItemCell_artworkView] setContentMode_];
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
        v148(sub_20BA648B0, v54, ObjectType, v63);

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
          sub_20B5F1E38(v96, v170);
          v100 = v145;
          if ((*(v97 + 48))(v99, 1, v145) == 1)
          {
            sub_20B520158(v99, &unk_27C766670, &unk_20C151580);
            v101 = sub_20BA1DD44(&OBJC_IVAR____TtC9SeymourUI30TabletWorkoutPlanBrickItemCell_artworkView);
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
            *(v112 + 16) = sub_20BA649E4;
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
            *(v123 + 16) = sub_20BA649B0;
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

void sub_20BA5C784(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t (*)(), uint64_t, uint64_t, void *), void (*a8)(char *, uint64_t, uint64_t), unsigned __int8 a9, void (*a10)(uint64_t), uint64_t a11)
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
      v41 = &v183[OBJC_IVAR____TtC9SeymourUI31EditorialCollectionBrickRowCell_artworkView];
      [*&v183[OBJC_IVAR____TtC9SeymourUI31EditorialCollectionBrickRowCell_artworkView] setContentMode_];
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
        v148(sub_20BA6599C, v54, ObjectType, v63);

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
          sub_20B5F1E60(v96, v170);
          v100 = v145;
          if ((*(v97 + 48))(v99, 1, v145) == 1)
          {
            sub_20B520158(v99, &unk_27C766670, &unk_20C151580);
            v101 = sub_20BA1DD44(&OBJC_IVAR____TtC9SeymourUI31EditorialCollectionBrickRowCell_artworkView);
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
            *(v112 + 16) = sub_20BA659E8;
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
            *(v123 + 16) = sub_20BA659B4;
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

void sub_20BA5D80C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t (*)(), uint64_t, uint64_t, void *), void (*a8)(char *, uint64_t, uint64_t), unsigned __int8 a9, void (*a10)(uint64_t), uint64_t a11)
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
      v41 = &v183[OBJC_IVAR____TtC9SeymourUI32EditorialCollectionBrickItemCell_artworkView];
      [*&v183[OBJC_IVAR____TtC9SeymourUI32EditorialCollectionBrickItemCell_artworkView] setContentMode_];
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
        v148(sub_20BA663DC, v54, ObjectType, v63);

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
          sub_20B5F1E88(v96, v170);
          v100 = v145;
          if ((*(v97 + 48))(v99, 1, v145) == 1)
          {
            sub_20B520158(v99, &unk_27C766670, &unk_20C151580);
            v101 = sub_20BA1DD44(&OBJC_IVAR____TtC9SeymourUI32EditorialCollectionBrickItemCell_artworkView);
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
            *(v112 + 16) = sub_20BA66428;
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
            *(v123 + 16) = sub_20BA663F4;
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

void sub_20BA5E894(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void (*a8)(char *, uint64_t, uint64_t), char a9, void (*a10)(uint64_t), uint64_t a11)
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
      v39 = OBJC_IVAR____TtC9SeymourUI34TVEditorialCollectionBrickItemCell_tvArtworkView;
      [*&v37[OBJC_IVAR____TtC9SeymourUI34TVEditorialCollectionBrickItemCell_tvArtworkView] setContentMode_];
      v40 = *&v37[v39];
      v41 = v182;
      v42 = sub_20BB96188(v182, v40, a9 & 1);

      if ((v42 & 1) != 0 && (v146 = v22, v139 = v19, v140 = v12, v155 = a11, v157 = a10, v142 = v39, v152 = *&v37[v39], v150 = swift_allocObject(), swift_unknownObjectWeakInit(), v43 = v174, v44 = *(v174 + 16), v153 = a9 & 1, v45 = v175, v154 = v37, v46 = v181, v148 = v174 + 16, v147 = v44, v44(v175, v41, v181), v47 = *(v43 + 80), v151 = a7, v48 = (v47 + 24) & ~v47, v141 = v173 + 7, v49 = (v173 + 7 + v48) & 0xFFFFFFFFFFFFFFF8, v50 = (v49 + 23) & 0xFFFFFFFFFFFFFFF8, v51 = (v50 + 23) & 0xFFFFFFFFFFFFFFF8, v149 = (v51 + 15) & 0xFFFFFFFFFFFFFFF8, v145 = v47, v52 = swift_allocObject(), *(v52 + 16) = v150, v53 = *(v43 + 32), v54 = v45, v55 = v153, v144 = v43 + 32, v143 = v53, v53(v52 + v48, v54, v46), v56 = (v52 + v49), v57 = v177, *v56 = v176, v56[1] = v57, v58 = (v52 + v50), v59 = v179, *v58 = v178, v58[1] = v59, *(v52 + v51) = v151, v60 = v52 + v149, *v60 = v180, *(v60 + 8) = v55, v61 = (v52 + ((v51 + 31) & 0xFFFFFFFFFFFFFFF8)), v62 = v157, v63 = v155, *v61 = v157, v61[1] = v63, v64 = (v152 + OBJC_IVAR____TtC9SeymourUI13TVArtworkView_layoutHandler), v66 = *(v152 + OBJC_IVAR____TtC9SeymourUI13TVArtworkView_layoutHandler), v65 = *(v152 + OBJC_IVAR____TtC9SeymourUI13TVArtworkView_layoutHandler + 8), *v64 = sub_20BA65AE4, v64[1] = v52, , , v67 = v63, , , sub_20B584050(v62, v63), v68 = v65, v37 = v154, v69 = v182, sub_20B583ECC(v66, v68), , v70 = sub_20B62733C(v69, v55), v70 > 0.0) && (v72 = v71, v71 > 0.0))
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
        sub_20B5F1EB0(v100, v168);
        v102 = v172;
        v103 = v146;
        if ((*(v172 + 48))(v101, 1, v146) == 1)
        {
          sub_20B520158(v101, &unk_27C766670, &unk_20C151580);
          v104 = sub_20BA1DB84(&OBJC_IVAR____TtC9SeymourUI34TVEditorialCollectionBrickItemCell_tvArtworkView);
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
          *(v116 + 16) = sub_20BA65B30;
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
          *(v124 + 16) = sub_20BA65AFC;
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

void sub_20BA5F854(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void (*a8)(char *, uint64_t, uint64_t), char a9, void (*a10)(uint64_t), uint64_t a11)
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
      v39 = OBJC_IVAR____TtC9SeymourUI34TVWorkoutPlanShowcaseBrickItemCell_tvArtworkView;
      [*&v37[OBJC_IVAR____TtC9SeymourUI34TVWorkoutPlanShowcaseBrickItemCell_tvArtworkView] setContentMode_];
      v40 = *&v37[v39];
      v41 = v182;
      v42 = sub_20B9F9964(v182, v40, a9 & 1);

      if ((v42 & 1) != 0 && (v146 = v22, v139 = v19, v140 = v12, v155 = a11, v157 = a10, v142 = v39, v152 = *&v37[v39], v150 = swift_allocObject(), swift_unknownObjectWeakInit(), v43 = v174, v44 = *(v174 + 16), v153 = a9 & 1, v45 = v175, v154 = v37, v46 = v181, v148 = v174 + 16, v147 = v44, v44(v175, v41, v181), v47 = *(v43 + 80), v151 = a7, v48 = (v47 + 24) & ~v47, v141 = v173 + 7, v49 = (v173 + 7 + v48) & 0xFFFFFFFFFFFFFFF8, v50 = (v49 + 23) & 0xFFFFFFFFFFFFFFF8, v51 = (v50 + 23) & 0xFFFFFFFFFFFFFFF8, v149 = (v51 + 15) & 0xFFFFFFFFFFFFFFF8, v145 = v47, v52 = swift_allocObject(), *(v52 + 16) = v150, v53 = *(v43 + 32), v54 = v45, v55 = v153, v144 = v43 + 32, v143 = v53, v53(v52 + v48, v54, v46), v56 = (v52 + v49), v57 = v177, *v56 = v176, v56[1] = v57, v58 = (v52 + v50), v59 = v179, *v58 = v178, v58[1] = v59, *(v52 + v51) = v151, v60 = v52 + v149, *v60 = v180, *(v60 + 8) = v55, v61 = (v52 + ((v51 + 31) & 0xFFFFFFFFFFFFFFF8)), v62 = v157, v63 = v155, *v61 = v157, v61[1] = v63, v64 = (v152 + OBJC_IVAR____TtC9SeymourUI13TVArtworkView_layoutHandler), v66 = *(v152 + OBJC_IVAR____TtC9SeymourUI13TVArtworkView_layoutHandler), v65 = *(v152 + OBJC_IVAR____TtC9SeymourUI13TVArtworkView_layoutHandler + 8), *v64 = sub_20BA657B0, v64[1] = v52, , , v67 = v63, , , sub_20B584050(v62, v63), v68 = v65, v37 = v154, v69 = v182, sub_20B583ECC(v66, v68), , v70 = sub_20B627348(v69, v55), v70 > 0.0) && (v72 = v71, v71 > 0.0))
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
        sub_20B5F1ED8(v100, v168);
        v102 = v172;
        v103 = v146;
        if ((*(v172 + 48))(v101, 1, v146) == 1)
        {
          sub_20B520158(v101, &unk_27C766670, &unk_20C151580);
          v104 = sub_20BA1DB84(&OBJC_IVAR____TtC9SeymourUI34TVWorkoutPlanShowcaseBrickItemCell_tvArtworkView);
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
          *(v116 + 16) = sub_20BA657FC;
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
          *(v124 + 16) = sub_20BA657C8;
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

void sub_20BA60814(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t (*)(), uint64_t, uint64_t, void *), void (*a8)(char *, uint64_t, uint64_t), unsigned __int8 a9, void (*a10)(uint64_t), uint64_t a11)
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
      v41 = &v183[OBJC_IVAR____TtC9SeymourUI30TVRootShowcaseCarouselItemCell_artworkView];
      [*&v183[OBJC_IVAR____TtC9SeymourUI30TVRootShowcaseCarouselItemCell_artworkView] setContentMode_];
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
        v148(sub_20BA66858, v54, ObjectType, v63);

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
          sub_20B5F1F00(v96, v170);
          v100 = v145;
          if ((*(v97 + 48))(v99, 1, v145) == 1)
          {
            sub_20B520158(v99, &unk_27C766670, &unk_20C151580);
            v101 = sub_20BA1DD44(&OBJC_IVAR____TtC9SeymourUI30TVRootShowcaseCarouselItemCell_artworkView);
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
            *(v112 + 16) = sub_20BA668A4;
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
            *(v123 + 16) = sub_20BA66870;
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

void sub_20BA6189C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void (*a8)(char *, uint64_t, uint64_t), unsigned __int8 a9, uint64_t a10, uint64_t a11)
{
  v180 = a6;
  v181 = a8;
  v178 = a4;
  v179 = a5;
  v177 = a3;
  v184 = a2;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0, &unk_20C150360);
  v166 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v164 = &v139 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v165 = &v139 - v15;
  v163 = v16;
  MEMORY[0x28223BE20](v17);
  v19 = &v139 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766670, &unk_20C151580);
  MEMORY[0x28223BE20](v20 - 8);
  v172 = &v139 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BAB0, &unk_20C150570);
  v174 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v162 = &v139 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v161 = v23;
  MEMORY[0x28223BE20](v24);
  v167 = &v139 - v25;
  v170 = sub_20C1391C4();
  v169 = *(v170 - 8);
  MEMORY[0x28223BE20](v170);
  v171 = &v139 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_20C138A64();
  v28 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v173 = &v139 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766680, &unk_20C14F920);
  MEMORY[0x28223BE20](v30 - 8);
  v168 = &v139 - v31;
  v183 = sub_20C137C24();
  v176 = *(v183 - 8);
  MEMORY[0x28223BE20](v183);
  v175 = v32;
  v182 = &v139 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_20C13C554();
  v34 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v36 = (&v139 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v158 = v28;
    sub_20B51C88C(0, &qword_281100530, 0x277D85C78);
    *v36 = sub_20C13D374();
    (*(v34 + 104))(v36, *MEMORY[0x277D85200], v33);
    v37 = sub_20C13C584();
    (*(v34 + 8))(v36, v33);
    if (v37)
    {
      v159 = v22;
      v38 = Strong;
      v39 = &Strong[OBJC_IVAR____TtC9SeymourUI19CatalogTipPlainView_artworkView];
      v40 = a7;
      [*&Strong[OBJC_IVAR____TtC9SeymourUI19CatalogTipPlainView_artworkView] setContentMode_];
      v41 = v184;
      if ((sub_20BA640CC(v184, *v39, *(v39 + 1), a9 & 1) & 1) == 0)
      {

        return;
      }

      v142 = v27;
      v139 = v19;
      v140 = v12;
      v160 = a11;
      v157 = a10;
      v154 = *v39;
      v151 = *(v39 + 1);
      ObjectType = swift_getObjectType();
      v150 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v152 = a9;
      v42 = v176;
      v43 = *(v176 + 16);
      v156 = a9 & 1;
      v155 = v39;
      v45 = v182;
      v44 = v183;
      v147 = v176 + 16;
      v145 = v43;
      v43(v182, v41, v183);
      v46 = *(v42 + 80);
      v47 = (v46 + 24) & ~v46;
      v141 = v175 + 7;
      v48 = (v175 + 7 + v47) & 0xFFFFFFFFFFFFFFF8;
      v49 = (v48 + 23) & 0xFFFFFFFFFFFFFFF8;
      v50 = (v49 + 23) & 0xFFFFFFFFFFFFFFF8;
      v149 = ((v50 + 15) & 0xFFFFFFFFFFFFFFF8);
      v146 = v46;
      v51 = swift_allocObject();
      v148 = v40;
      v52 = v51;
      *(v51 + 16) = v150;
      v53 = *(v42 + 32);
      v144 = v42 + 32;
      v143 = v53;
      v53(v51 + v47, v45, v44);
      v54 = (v52 + v48);
      v55 = v178;
      *v54 = v177;
      v54[1] = v55;
      v56 = (v52 + v49);
      v57 = v180;
      *v56 = v179;
      v56[1] = v57;
      *(v52 + v50) = v148;
      v58 = v149 + v52;
      *v58 = v181;
      v58[8] = v156;
      v59 = (v52 + ((v50 + 31) & 0xFFFFFFFFFFFFFFF8));
      v60 = v157;
      v61 = v160;
      *v59 = v157;
      v59[1] = v61;
      v62 = v151;
      v149 = *(v151 + 152);

      sub_20B584050(v60, v61);
      v149(sub_20BA66C70, v52, ObjectType, v62);

      if (v152)
      {
        v63 = [objc_opt_self() mainScreen];
        [v63 scale];
        v65 = v64;

        v66 = v184;
        v67 = sub_20C137BF4() / v65;
        v68 = sub_20C137C04() / v65;
        v69 = v66;
        v70 = v155;
      }

      else
      {
        v70 = v155;
        [*v155 bounds];
        v67 = v71;
        v68 = v72;
        v69 = v184;
      }

      if (v67 <= 0.0 || v68 <= 0.0)
      {
      }

      else
      {
        v73 = v146;
        v155 = ~v146;
        v74 = v70[1];
        v75 = swift_getObjectType();
        v74[15](0, v75, v74);
        v76 = v70[1];
        v77 = swift_getObjectType();
        v78 = v168;
        v79 = v183;
        v80 = v145;
        v145(v168, v69, v183);
        (*(v176 + 56))(v78, 0, 1, v79);
        v76[2](v78, v77, v76);
        v81 = *v70;
        sub_20B51C88C(0, &qword_27C762070, 0x277D75348);
        sub_20C137BC4();
        v82 = sub_20C13D5A4();
        [v81 setBackgroundColor_];

        v83 = v70[1];
        v84 = swift_getObjectType();
        v83[22](COERCE_DOUBLE(*&v67), COERCE_DOUBLE(*&v68), 0, v84, v83);
        v85 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v86 = v182;
        v80(v182, v69, v79);
        v87 = (v73 + 16) & v155;
        v88 = (v141 + v87) & 0xFFFFFFFFFFFFFFF8;
        v89 = (v88 + 15) & 0xFFFFFFFFFFFFFFF8;
        v90 = (v89 + 23) & 0xFFFFFFFFFFFFFFF8;
        v91 = swift_allocObject();
        v143(v91 + v87, v86, v79);
        *(v91 + v88) = v85;
        v92 = (v91 + v89);
        v93 = v184;
        v94 = Strong;
        *v92 = v67;
        v92[1] = v68;
        v176 = v91;
        v95 = (v91 + v90);
        v96 = v157;
        v97 = v160;
        *v95 = v157;
        v95[1] = v97;
        v80(v86, v93, v79);
        (*(v169 + 104))(v171, *MEMORY[0x277D542A8], v170);

        sub_20B584050(v96, v97);
        v98 = v173;
        sub_20C138A54();
        v99 = &v94[OBJC_IVAR____TtC9SeymourUI19CatalogTipPlainView_delegate];
        swift_beginAccess();
        if (swift_unknownObjectWeakLoadStrong())
        {
          v100 = *(v99 + 1);
          v101 = swift_getObjectType();
          v102 = v172;
          (*(v100 + 8))(v94, v98, v101, v100);
          swift_unknownObjectRelease();
          v103 = v174;
          v104 = v159;
          if ((*(v174 + 48))(v102, 1, v159) != 1)
          {
            v181 = *(v103 + 32);
            v181(v167, v102, v104);
            v105 = swift_allocObject();
            swift_unknownObjectWeakInit();
            v107 = v182;
            v106 = v183;
            v145(v182, v184, v183);
            v108 = (v146 + 40) & v155;
            v109 = v108 + v175;
            v110 = (v108 + v175) & 0xFFFFFFFFFFFFFFF8;
            v111 = swift_allocObject();
            *(v111 + 16) = v105;
            *(v111 + 24) = v67;
            *(v111 + 32) = v68;
            v143(v111 + v108, v107, v106);
            *(v111 + v109) = v156;
            v112 = v111 + v110;
            *(v112 + 8) = v96;
            v113 = v96;
            v114 = v160;
            *(v112 + 16) = v160;
            v115 = swift_allocObject();
            *(v115 + 16) = sub_20BA66C58;
            *(v115 + 24) = v111;
            v116 = v174;
            v117 = v162;
            (*(v174 + 16))(v162, v167, v104);
            v118 = v116;
            v119 = (*(v116 + 80) + 16) & ~*(v116 + 80);
            v120 = (v161 + v119 + 7) & 0xFFFFFFFFFFFFFFF8;
            v121 = swift_allocObject();
            v181((v121 + v119), v117, v104);
            v122 = (v121 + v120);
            *v122 = sub_20B5F7760;
            v122[1] = v115;
            sub_20B584050(v113, v114);
            v123 = v165;
            sub_20C137C94();
            v124 = swift_allocObject();
            v125 = v176;
            *(v124 + 16) = sub_20BA66C74;
            *(v124 + 24) = v125;
            v126 = swift_allocObject();
            *(v126 + 16) = sub_20BA66C80;
            *(v126 + 24) = v124;
            v127 = v166;
            v128 = v164;
            v129 = v140;
            (*(v166 + 16))(v164, v123, v140);
            v130 = (*(v127 + 80) + 16) & ~*(v127 + 80);
            v131 = (v163 + v130 + 7) & 0xFFFFFFFFFFFFFFF8;
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
            (*(v118 + 8))(v167, v159);
            (*(v158 + 8))(v173, v142);
            return;
          }
        }

        else
        {
          v102 = v172;
          (*(v174 + 56))(v172, 1, 1, v159);
        }

        sub_20B520158(v102, &unk_27C766670, &unk_20C151580);
        v138 = sub_20BA1DD44(&OBJC_IVAR____TtC9SeymourUI19CatalogTipPlainView_artworkView);
        if (v96)
        {
          v96(v138);
        }

        else
        {
        }

        (*(v158 + 8))(v98, v142);
      }
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_20BA629E0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, void (*a7)(void, void, double, double), double a8, double a9)
{
  v51 = a5;
  v52 = a6;
  v50 = a4;
  v55 = a3;
  v56 = a1;
  v13 = sub_20C137C24();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v48 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_20C13BB84();
  v53 = *(v17 - 8);
  v54 = v17;
  MEMORY[0x28223BE20](v17);
  v19 = &v48 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_20C13C554();
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v23 = (&v48 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_20B51C88C(0, &qword_281100530, 0x277D85C78);
  *v23 = sub_20C13D374();
  (*(v21 + 104))(v23, *MEMORY[0x277D85200], v20);
  v24 = sub_20C13C584();
  (*(v21 + 8))(v23, v20);
  if ((v24 & 1) == 0)
  {
    __break(1u);
    return;
  }

  sub_20C13B4A4();
  (*(v14 + 16))(v16, a2, v13);
  v25 = v56;
  v26 = v56;
  v27 = sub_20C13BB74();
  v28 = sub_20C13D1D4();

  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v49 = a7;
    v31 = v30;
    v59[0] = v30;
    *v29 = 136315650;
    *(v29 + 4) = sub_20B51E694(0xD000000000000059, 0x800000020C1A4550, v59);
    *(v29 + 12) = 2082;
    sub_20BA64840(&qword_27C769710, MEMORY[0x277D53AA0]);
    v32 = sub_20C13DFA4();
    v34 = v33;
    (*(v14 + 8))(v16, v13);
    v35 = sub_20B51E694(v32, v34, v59);

    *(v29 + 14) = v35;
    *(v29 + 22) = 2082;
    swift_getErrorValue();
    v36 = MEMORY[0x20F2F5850](v57, v58);
    v38 = sub_20B51E694(v36, v37, v59);

    *(v29 + 24) = v38;
    _os_log_impl(&dword_20B517000, v27, v28, "%s failed to fetch artwork: %{public}s, error: %{public}s", v29, 0x20u);
    swift_arrayDestroy();
    v39 = v31;
    a7 = v49;
    MEMORY[0x20F2F6A40](v39, -1, -1);
    MEMORY[0x20F2F6A40](v29, -1, -1);
  }

  else
  {

    (*(v14 + 8))(v16, v13);
  }

  (*(v53 + 8))(v19, v54);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong || (v41 = Strong + *v52, v42 = *(v41 + 8), v43 = Strong, v44 = *v41, v43, ObjectType = swift_getObjectType(), v46 = (*(v42 + 112))(ObjectType, v42), v44, !v46))
  {
    swift_beginAccess();
    v47 = swift_unknownObjectWeakLoadStrong();
    if (!v47)
    {
      return;
    }

    v46 = v47;
    a7(v50, v51, a8, a9);
  }
}

void sub_20BA63100(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, void (*a7)(void, void, double, double), double a8, double a9)
{
  v48 = a5;
  v49 = a6;
  v47 = a4;
  v52 = a3;
  v53 = a1;
  v13 = sub_20C137C24();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_20C13BB84();
  v50 = *(v17 - 8);
  v51 = v17;
  MEMORY[0x28223BE20](v17);
  v19 = &v45 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_20C13C554();
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v23 = (&v45 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_20B51C88C(0, &qword_281100530, 0x277D85C78);
  *v23 = sub_20C13D374();
  (*(v21 + 104))(v23, *MEMORY[0x277D85200], v20);
  v24 = sub_20C13C584();
  (*(v21 + 8))(v23, v20);
  if ((v24 & 1) == 0)
  {
    __break(1u);
    return;
  }

  sub_20C13B4A4();
  (*(v14 + 16))(v16, a2, v13);
  v25 = v53;
  v26 = v53;
  v27 = sub_20C13BB74();
  v28 = sub_20C13D1D4();

  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v46 = a7;
    v31 = v30;
    v56[0] = v30;
    *v29 = 136315650;
    *(v29 + 4) = sub_20B51E694(0xD000000000000059, 0x800000020C1A4550, v56);
    *(v29 + 12) = 2082;
    sub_20BA64840(&qword_27C769710, MEMORY[0x277D53AA0]);
    v32 = sub_20C13DFA4();
    v34 = v33;
    (*(v14 + 8))(v16, v13);
    v35 = sub_20B51E694(v32, v34, v56);

    *(v29 + 14) = v35;
    *(v29 + 22) = 2082;
    swift_getErrorValue();
    v36 = MEMORY[0x20F2F5850](v54, v55);
    v38 = sub_20B51E694(v36, v37, v56);

    *(v29 + 24) = v38;
    _os_log_impl(&dword_20B517000, v27, v28, "%s failed to fetch artwork: %{public}s, error: %{public}s", v29, 0x20u);
    swift_arrayDestroy();
    v39 = v31;
    a7 = v46;
    MEMORY[0x20F2F6A40](v39, -1, -1);
    MEMORY[0x20F2F6A40](v29, -1, -1);
  }

  else
  {

    (*(v14 + 8))(v16, v13);
  }

  (*(v50 + 8))(v19, v51);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong || (v41 = Strong, v42 = *(Strong + *v49), v41, v43 = [v42 stackImage], v42, !v43))
  {
    swift_beginAccess();
    v44 = swift_unknownObjectWeakLoadStrong();
    if (!v44)
    {
      return;
    }

    v43 = v44;
    a7(v47, v48, a8, a9);
  }
}

void sub_20BA639B0(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4, void *a5)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    v10 = *(Strong + *a5);

    [v10 setStackImage_];
  }

  if (a3)
  {
    a3();
  }
}

void sub_20BA63A5C(void *a1, uint64_t a2, void (*a3)(void), uint64_t a4, void *a5)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong + *a5;
    v10 = *(v9 + 8);
    v11 = Strong;
    v12 = *v9;

    ObjectType = swift_getObjectType();
    v14 = *(v10 + 120);
    v15 = a1;
    v14(a1, ObjectType, v10);
  }

  if (a3)
  {
    a3();
  }
}

uint64_t sub_20BA63B40(void **a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  v6 = swift_allocObject();
  v6[2] = a2;
  v6[3] = a3;
  v6[4] = v5;

  v7 = v5;

  return sub_20C137C94();
}

void sub_20BA63C04()
{
  v1 = v0;
  v2 = (v0 + OBJC_IVAR____TtC9SeymourUI19CatalogTipPlainView_artworkView);
  v3 = objc_allocWithZone(type metadata accessor for ArtworkView(0));
  v4 = sub_20B91B5FC(1);
  [v4 setTranslatesAutoresizingMaskIntoConstraints_];
  *v2 = v4;
  v2[1] = &off_2822B63E8;
  v5 = OBJC_IVAR____TtC9SeymourUI19CatalogTipPlainView_titleLabel;
  v6 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  [v6 setTranslatesAutoresizingMaskIntoConstraints_];
  v7 = objc_opt_self();
  v8 = [v7 preferredFontForTextStyle_];
  [v6 setFont_];

  [v6 setNumberOfLines_];
  [v6 setAdjustsFontSizeToFitWidth_];
  [v6 setMinimumScaleFactor_];
  [v6 setLineBreakMode_];
  [v6 setAdjustsFontForContentSizeCategory_];
  *(v1 + v5) = v6;
  v9 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  [v9 setTranslatesAutoresizingMaskIntoConstraints_];
  v10 = objc_opt_self();
  v11 = [v10 secondaryLabelColor];
  [v9 setTextColor_];

  v12 = [objc_opt_self() preferredFontDescriptorWithTextStyle:*MEMORY[0x277D76968] compatibleWithTraitCollection:0];
  v13 = [v12 fontDescriptorWithSymbolicTraits_];
  if (v13)
  {
    v14 = v13;

    v12 = v14;
  }

  v15 = OBJC_IVAR____TtC9SeymourUI19CatalogTipPlainView_subtitleLabel;
  v16 = [v7 fontWithDescriptor:v12 size:0.0];

  [v9 setFont_];
  [v9 setNumberOfLines_];
  [v9 setAdjustsFontSizeToFitWidth_];
  [v9 setMinimumScaleFactor_];
  [v9 setLineBreakMode_];
  [v9 setAdjustsFontForContentSizeCategory_];
  *(v1 + v15) = v9;
  v17 = OBJC_IVAR____TtC9SeymourUI19CatalogTipPlainView_separatorView;
  v18 = [objc_allocWithZone(MEMORY[0x277D75D18]) initWithFrame_];
  [v18 setTranslatesAutoresizingMaskIntoConstraints_];
  v19 = [v10 systemGray3Color];
  [v18 setBackgroundColor_];

  *(v1 + v17) = v18;
  v20 = OBJC_IVAR____TtC9SeymourUI19CatalogTipPlainView_detailLabel;
  v21 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  [v21 setTranslatesAutoresizingMaskIntoConstraints_];
  v22 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.650980392 green:1.0 blue:0.0 alpha:1.0];
  [v21 setTextColor_];

  v23 = [v7 preferredFontForTextStyle_];
  [v21 setFont_];

  [v21 setNumberOfLines_];
  [v21 setMinimumScaleFactor_];
  [v21 setLineBreakMode_];
  [v21 setAdjustsFontForContentSizeCategory_];
  *(v1 + v20) = v21;
  *(v1 + OBJC_IVAR____TtC9SeymourUI19CatalogTipPlainView_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  sub_20C13DE24();
  __break(1u);
}

uint64_t sub_20BA640CC(uint64_t a1, void *a2, uint64_t a3, int a4)
{
  v43 = a4;
  v7 = sub_20C137C24();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v39 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7626D0, &qword_20C161880);
  v11 = v10 - 8;
  MEMORY[0x28223BE20](v10);
  v13 = &v39 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766680, &unk_20C14F920);
  MEMORY[0x28223BE20](v14 - 8);
  v44 = &v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v39 - v17;
  MEMORY[0x28223BE20](v19);
  v21 = &v39 - v20;
  ObjectType = swift_getObjectType();
  v23 = *(a3 + 8);
  v40 = ObjectType;
  v41 = a2;
  v42 = a3;
  v23(ObjectType, a3);
  (*(v8 + 16))(v18, a1, v7);
  (*(v8 + 56))(v18, 0, 1, v7);
  v24 = *(v11 + 56);
  sub_20B654504(v21, v13);
  sub_20B654504(v18, &v13[v24]);
  v25 = *(v8 + 48);
  if (v25(v13, 1, v7) != 1)
  {
    sub_20B654504(v13, v44);
    if (v25(&v13[v24], 1, v7) != 1)
    {
      v27 = v39;
      (*(v8 + 32))(v39, &v13[v24], v7);
      sub_20BA64840(&qword_27C7626D8, MEMORY[0x277D53A90]);
      v28 = v44;
      v29 = sub_20C13C894();
      v30 = *(v8 + 8);
      v30(v27, v7);
      sub_20B520158(v18, &unk_27C766680, &unk_20C14F920);
      sub_20B520158(v21, &unk_27C766680, &unk_20C14F920);
      v30(v28, v7);
      sub_20B520158(v13, &unk_27C766680, &unk_20C14F920);
      v26 = v29 ^ 1;
      if ((v29 ^ 1) & 1) != 0 || (v43)
      {
        return v26 & 1;
      }

      goto LABEL_10;
    }

    sub_20B520158(v18, &unk_27C766680, &unk_20C14F920);
    sub_20B520158(v21, &unk_27C766680, &unk_20C14F920);
    (*(v8 + 8))(v44, v7);
LABEL_7:
    sub_20B520158(v13, &qword_27C7626D0, &qword_20C161880);
    v26 = 1;
    return v26 & 1;
  }

  sub_20B520158(v18, &unk_27C766680, &unk_20C14F920);
  sub_20B520158(v21, &unk_27C766680, &unk_20C14F920);
  if (v25(&v13[v24], 1, v7) != 1)
  {
    goto LABEL_7;
  }

  sub_20B520158(v13, &unk_27C766680, &unk_20C14F920);
  if (v43)
  {
    v26 = 0;
    return v26 & 1;
  }

LABEL_10:
  [v41 bounds];
  v31 = v42;
  v32 = v40;
  v33 = (*(v42 + 112))(v40, v42);
  if (v33)
  {
    v34 = v33;
    [v33 size];
  }

  else
  {
    (*(v31 + 168))(v32, v31);
  }

  sub_20C13D504();
  v37 = round(fabs(v36)) > 1.0;
  v26 = round(fabs(v35)) > 1.0 || v37;
  return v26 & 1;
}

unint64_t sub_20BA646BC()
{
  result = qword_27C769708;
  if (!qword_27C769708)
  {
    sub_20B51C88C(255, &qword_27C769700, 0x277D75C68);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C769708);
  }

  return result;
}

uint64_t sub_20BA64840(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_20C137C24();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_20BA648C8(uint64_t (*a1)(void, unint64_t, void, void, void, void, void, void, char, void, void))
{
  v3 = *(sub_20C137C24() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 23) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(v1 + v8 + 8);
  return a1(*(v1 + 16), v1 + v4, *(v1 + v5), *(v1 + v5 + 8), *(v1 + v6), *(v1 + v6 + 8), *(v1 + v7), *(v1 + v8), v10, *(v1 + ((v7 + 31) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((v7 + 31) & 0xFFFFFFFFFFFFFFF8) + 8));
}

uint64_t sub_20BA668D0(uint64_t a1, uint64_t (*a2)(uint64_t, void, unint64_t, void, void, void, double, double))
{
  v5 = *(sub_20C137C24() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  return a2(a1, *(v2 + 16), v2 + v6, *(v2 + v6 + *(v5 + 64)), *(v2 + ((v6 + *(v5 + 64)) & 0xFFFFFFFFFFFFFFF8) + 8), *(v2 + ((v6 + *(v5 + 64)) & 0xFFFFFFFFFFFFFFF8) + 16), *(v2 + 24), *(v2 + 32));
}

uint64_t objectdestroy_38Tm()
{

  if (*(v0 + 24))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_20BA66A00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, unint64_t, void, void, void, uint64_t, uint64_t, double, double))
{
  v9 = *(sub_20C137C24() - 8);
  v10 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v11 = (*(v9 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  return a4(a1, v4 + v10, *(v4 + v11), *(v4 + ((((v11 + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)), *(v4 + ((((v11 + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8), a2, a3, *(v4 + ((v11 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v4 + ((v11 + 15) & 0xFFFFFFFFFFFFFFF8) + 8));
}

void sub_20BA66AD8(void **a1)
{
  v3 = *(sub_20C137C24() - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  sub_20B5F31EC(*a1, *(v1 + 16), (v1 + v4), *(v1 + v4 + *(v3 + 64)), *(v1 + ((v4 + *(v3 + 64)) & 0xFFFFFFFFFFFFFFF8) + 8), *(v1 + ((v4 + *(v3 + 64)) & 0xFFFFFFFFFFFFFFF8) + 16), *(v1 + 24), *(v1 + 32));
}

uint64_t sub_20BA66B8C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t, unint64_t, uint64_t, uint64_t))
{
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a3, a4) - 8);
  v9 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v10 = (v5 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];

  return a5(a1, a2, v5 + v9, v11, v12);
}

uint64_t sub_20BA66CE4(uint64_t a1)
{
  sub_20C1380F4();
  v1 = objc_opt_self();
  v2 = [v1 mainScreen];
  [v2 nativeBounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v15.origin.x = v4;
  v15.origin.y = v6;
  v15.size.width = v8;
  v15.size.height = v10;
  v11 = [v1 mainScreen];
  [v11 nativeScale];

  v12 = sub_20C138104();
  result = sub_20C138104();
  v14 = 7.0;
  if (v12 == result)
  {
    v14 = 16.0;
  }

  qword_27C769718 = *&v14;
  return result;
}

uint64_t sub_20BA66DD0(uint64_t a1)
{
  sub_20C1380F4();
  v1 = objc_opt_self();
  v2 = [v1 mainScreen];
  [v2 nativeBounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v15.origin.x = v4;
  v15.origin.y = v6;
  v15.size.width = v8;
  v15.size.height = v10;
  v11 = [v1 mainScreen];
  [v11 nativeScale];

  v12 = sub_20C138104();
  result = sub_20C138104();
  v14 = 275.0;
  if (v12 == result)
  {
    v14 = 650.0;
  }

  qword_27C769720 = *&v14;
  return result;
}

char *SummaryBurnBarView.init(workoutActivityType:stringBuilder:)(uint64_t a1, char a2, uint64_t a3)
{
  v7 = *(a3 + 48);
  __src[2] = *(a3 + 32);
  __src[3] = v7;
  v34 = *(a3 + 64);
  v8 = *(a3 + 16);
  __src[0] = *a3;
  __src[1] = v8;
  v9 = OBJC_IVAR____TtC9SeymourUI18SummaryBurnBarView_headerLabelStack;
  v10 = [objc_allocWithZone(type metadata accessor for SessionStackedLabelView()) initWithFrame_];
  [v10 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v3[v9] = v10;
  v11 = OBJC_IVAR____TtC9SeymourUI18SummaryBurnBarView_burnBarSummary;
  v12 = [objc_allocWithZone(type metadata accessor for BurnBarSummary(0)) initWithFrame_];
  [v12 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v3[v11] = v12;
  v13 = &v3[OBJC_IVAR____TtC9SeymourUI18SummaryBurnBarView_stringBuilder];
  v14 = *(a3 + 48);
  *(v13 + 2) = *(a3 + 32);
  *(v13 + 3) = v14;
  *(v13 + 32) = *(a3 + 64);
  v15 = *(a3 + 16);
  *v13 = *a3;
  *(v13 + 1) = v15;
  sub_20B7A3194(__src, v31);
  v30.receiver = v3;
  v30.super_class = type metadata accessor for SummaryBurnBarView();
  v16 = objc_msgSendSuper2(&v30, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v17 = *&v16[OBJC_IVAR____TtC9SeymourUI18SummaryBurnBarView_headerLabelStack];
  v18 = v16;
  [v18 addSubview_];
  v19 = OBJC_IVAR____TtC9SeymourUI18SummaryBurnBarView_burnBarSummary;
  [v18 addSubview_];
  if ((a2 & 1) == 0)
  {
    v20 = *&v18[v19];
    sub_20C11D61C(a1);
  }

  v21 = *&v18[v19];
  v31[0] = *&v21[OBJC_IVAR____TtC9SeymourUI14BurnBarSummary_stringBuilder];
  v23 = *&v21[OBJC_IVAR____TtC9SeymourUI14BurnBarSummary_stringBuilder + 32];
  v22 = *&v21[OBJC_IVAR____TtC9SeymourUI14BurnBarSummary_stringBuilder + 48];
  v24 = *&v21[OBJC_IVAR____TtC9SeymourUI14BurnBarSummary_stringBuilder + 16];
  v32 = *&v21[OBJC_IVAR____TtC9SeymourUI14BurnBarSummary_stringBuilder + 64];
  v31[2] = v23;
  v31[3] = v22;
  v31[1] = v24;
  memmove(&v21[OBJC_IVAR____TtC9SeymourUI14BurnBarSummary_stringBuilder], __src, 0x42uLL);
  v25 = v21;
  sub_20B520158(v31, &qword_27C769740, &unk_20C168EF0);

  v26 = *&v18[v19];
  v27 = (sub_20C1380F4() & 0xF) == 3;
  v26[OBJC_IVAR____TtC9SeymourUI14BurnBarSummary_style] = v27;
  sub_20C11D420();
  [v26 setNeedsLayout];

  sub_20BA6717C();
  v28 = sub_20C13C914();
  [v18 setAccessibilityIdentifier_];

  return v18;
}

void sub_20BA6717C()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC9SeymourUI18SummaryBurnBarView_burnBarSummary];
  if (qword_27C7608C8 != -1)
  {
    swift_once();
  }

  [v2 sizeThatFits_];
  v4 = v3;
  v6 = v5;
  v31 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0, &unk_20C14F960);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_20C151DF0;
  v8 = *&v1[OBJC_IVAR____TtC9SeymourUI18SummaryBurnBarView_headerLabelStack];
  v9 = [v8 leadingAnchor];
  v10 = [v1 leadingAnchor];
  v11 = [v9 constraintEqualToAnchor_];

  *(v7 + 32) = v11;
  v12 = [v8 trailingAnchor];
  v13 = [v1 trailingAnchor];
  v14 = [v12 constraintEqualToAnchor_];

  *(v7 + 40) = v14;
  v15 = [v8 topAnchor];
  v16 = [v1 topAnchor];
  v17 = [v15 constraintEqualToAnchor_];

  *(v7 + 48) = v17;
  v18 = [v2 topAnchor];
  v19 = [v8 bottomAnchor];
  if (qword_27C7608C0 != -1)
  {
    swift_once();
  }

  v20 = [v18 constraintEqualToAnchor:v19 constant:{*&qword_27C769718, v31}];

  *(v7 + 56) = v20;
  v21 = [v2 leadingAnchor];
  v22 = [v1 leadingAnchor];
  v23 = [v21 constraintEqualToAnchor_];

  *(v7 + 64) = v23;
  v24 = [v2 trailingAnchor];
  v25 = [v1 trailingAnchor];
  v26 = [v24 constraintLessThanOrEqualToAnchor_];

  *(v7 + 72) = v26;
  v27 = [v2 widthAnchor];
  v28 = [v27 constraintEqualToConstant_];

  *(v7 + 80) = v28;
  v29 = [v2 heightAnchor];
  v30 = [v29 constraintEqualToConstant_];

  *(v7 + 88) = v30;
  sub_20B5E29D0();
  v33 = sub_20C13CC54();

  [v32 activateConstraints_];
}

id sub_20BA675CC(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768AE0, &unk_20C1523E0);
  MEMORY[0x28223BE20](v3 - 8);
  v56 = &v53 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v53 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C769748, qword_20C168F00);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v53 - v9;
  v11 = sub_20C133CB4();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = v1;
  v15 = *&v1[OBJC_IVAR____TtC9SeymourUI18SummaryBurnBarView_headerLabelStack];
  v16 = type metadata accessor for SummaryBurnBarMetricViewModel(0);
  [*(v15 + OBJC_IVAR____TtC9SeymourUI23SessionStackedLabelView_primaryLabel) setAttributedText_];
  v17 = *(a1 + *(v16 + 28));
  v18 = OBJC_IVAR____TtC9SeymourUI23SessionStackedLabelView_secondaryLabel;
  [*(v15 + OBJC_IVAR____TtC9SeymourUI23SessionStackedLabelView_secondaryLabel) setHidden_];
  [*(v15 + v18) setAttributedText_];
  sub_20B52F9E8(a1, v10, &qword_27C769748, qword_20C168F00);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_20B520158(v10, &qword_27C769748, qword_20C168F00);
    v19 = v57;
    v20 = *&v57[OBJC_IVAR____TtC9SeymourUI18SummaryBurnBarView_burnBarSummary];
    v21 = sub_20C1337A4();
    (*(*(v21 - 8) + 56))(v7, 1, 1, v21);
    v22 = OBJC_IVAR____TtC9SeymourUI14BurnBarSummary_scoreMetric;
    swift_beginAccess();
    sub_20BA67E0C(v7, v20 + v22);
    swift_endAccess();
    v23 = v20 + v22;
    v24 = v56;
    sub_20B52F9E8(v23, v56, &unk_27C768AE0, &unk_20C1523E0);
    sub_20C11D770(v24);
    sub_20B520158(v24, &unk_27C768AE0, &unk_20C1523E0);
    sub_20B520158(v7, &unk_27C768AE0, &unk_20C1523E0);
    v25 = v19;
  }

  else
  {
    v54 = v12;
    v26 = *(v12 + 32);
    v55 = v11;
    v26(v14, v10, v11);
    v27 = v57;
    v28 = *&v57[OBJC_IVAR____TtC9SeymourUI18SummaryBurnBarView_burnBarSummary];
    sub_20C133CA4();
    v29 = sub_20C1337A4();
    (*(*(v29 - 8) + 56))(v7, 0, 1, v29);
    v30 = OBJC_IVAR____TtC9SeymourUI14BurnBarSummary_scoreMetric;
    swift_beginAccess();
    sub_20BA67E0C(v7, v28 + v30);
    swift_endAccess();
    v31 = v28 + v30;
    v32 = v56;
    sub_20B52F9E8(v31, v56, &unk_27C768AE0, &unk_20C1523E0);
    sub_20C11D770(v32);
    sub_20B520158(v32, &unk_27C768AE0, &unk_20C1523E0);
    sub_20B520158(v7, &unk_27C768AE0, &unk_20C1523E0);
    v33 = *&v27[OBJC_IVAR____TtC9SeymourUI18SummaryBurnBarView_stringBuilder + 16];
    v34 = *&v27[OBJC_IVAR____TtC9SeymourUI18SummaryBurnBarView_stringBuilder + 48];
    v66 = *&v27[OBJC_IVAR____TtC9SeymourUI18SummaryBurnBarView_stringBuilder + 32];
    v67 = v34;
    v35 = *&v27[OBJC_IVAR____TtC9SeymourUI18SummaryBurnBarView_stringBuilder + 16];
    v65[0] = *&v27[OBJC_IVAR____TtC9SeymourUI18SummaryBurnBarView_stringBuilder];
    v65[1] = v35;
    v62 = v66;
    v63 = *&v27[OBJC_IVAR____TtC9SeymourUI18SummaryBurnBarView_stringBuilder + 48];
    v68 = *&v27[OBJC_IVAR____TtC9SeymourUI18SummaryBurnBarView_stringBuilder + 64];
    v64 = *&v27[OBJC_IVAR____TtC9SeymourUI18SummaryBurnBarView_stringBuilder + 64];
    v61 = v33;
    v60 = v65[0];
    sub_20B7A3194(v65, v58);
    sub_20C133C94();
    sub_20BAABBCC(v36);
    v25 = v27;
    v58[2] = v62;
    v58[3] = v63;
    v59 = v64;
    v58[1] = v61;
    v58[0] = v60;
    sub_20B7A3B8C(v58);
    v37 = sub_20C13C914();

    sub_20C133C94();
    v39 = v38;
    sub_20C133C54();
    v41 = v40;
    sub_20C133C74();
    v43 = v42;
    sub_20C133C84();
    v45 = v44;
    sub_20C133C64();
    LODWORD(v47) = v46;
    LODWORD(v48) = v39;
    LODWORD(v49) = v41;
    LODWORD(v50) = v43;
    LODWORD(v51) = v45;
    [v27 updateBurnBarAccessibility:v37 personalScore:v48 low:v49 lowMiddle:v50 highMiddle:v51 high:v47];

    (*(v54 + 8))(v14, v55);
  }

  return [v25 invalidateIntrinsicContentSize];
}

id SummaryBurnBarView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id SummaryBurnBarView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SummaryBurnBarView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_20BA67E0C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768AE0, &unk_20C1523E0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

void sub_20BA67EE0()
{
  v1 = OBJC_IVAR____TtC9SeymourUI18SummaryBurnBarView_headerLabelStack;
  v2 = [objc_allocWithZone(type metadata accessor for SessionStackedLabelView()) initWithFrame_];
  [v2 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v0 + v1) = v2;
  v3 = OBJC_IVAR____TtC9SeymourUI18SummaryBurnBarView_burnBarSummary;
  v4 = [objc_allocWithZone(type metadata accessor for BurnBarSummary(0)) initWithFrame_];
  [v4 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v0 + v3) = v4;
  sub_20C13DE24();
  __break(1u);
}

uint64_t NavigationRoutingBehavior.hashValue.getter()
{
  v1 = *v0;
  sub_20C13E164();
  MEMORY[0x20F2F58E0](v1);
  return sub_20C13E1B4();
}

unint64_t sub_20BA6805C()
{
  result = qword_27C769750;
  if (!qword_27C769750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C769750);
  }

  return result;
}

char *sub_20BA680C0()
{
  v0[OBJC_IVAR____TtC9SeymourUI20PlaybackMetadataView_currentStyle] = 1;
  v1 = OBJC_IVAR____TtC9SeymourUI20PlaybackMetadataView_titleLabelLeadingConstraint;
  *&v0[v1] = [objc_allocWithZone(MEMORY[0x277CCAAD0]) init];
  *&v0[OBJC_IVAR____TtC9SeymourUI20PlaybackMetadataView_fontSize] = 0;
  *&v0[OBJC_IVAR____TtC9SeymourUI20PlaybackMetadataView_metadataInteritemSpacingMultiplier] = 0;
  v2 = *MEMORY[0x277D76860];
  *&v0[OBJC_IVAR____TtC9SeymourUI20PlaybackMetadataView_metadataMaximumContentSizeCategory] = *MEMORY[0x277D76860];
  v3 = &v0[OBJC_IVAR____TtC9SeymourUI20PlaybackMetadataView_styleProvider];
  v4 = v2;
  sub_20BA692D8(v83);
  v5 = v83[7];
  v6 = v83[8];
  v3[6] = v83[6];
  v3[7] = v5;
  v7 = v83[3];
  v3[2] = v83[2];
  v3[3] = v7;
  v8 = v83[5];
  v3[4] = v83[4];
  v3[5] = v8;
  v9 = v83[1];
  *v3 = v83[0];
  v3[1] = v9;
  v3[8] = v6;
  v3[9] = xmmword_20C15D8A0;
  v3[10] = xmmword_20C15D8A0;
  v3[11] = xmmword_20C169040;
  v3[12] = xmmword_20C169050;
  v3[13] = xmmword_20C15D8F0;
  v10 = OBJC_IVAR____TtC9SeymourUI20PlaybackMetadataView_subtitleMarqueeView;
  v11 = [objc_allocWithZone(MEMORY[0x277D25708]) init];
  [v11 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v0[v10] = v11;
  v12 = OBJC_IVAR____TtC9SeymourUI20PlaybackMetadataView_subtitleLabel;
  v13 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  [v13 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v0[v12] = v13;
  v14 = OBJC_IVAR____TtC9SeymourUI20PlaybackMetadataView_titleMarqueeView;
  v15 = [objc_allocWithZone(MEMORY[0x277D25708]) init];
  [v15 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v0[v14] = v15;
  v16 = OBJC_IVAR____TtC9SeymourUI20PlaybackMetadataView_titleLabel;
  v17 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  [v17 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v0[v16] = v17;
  v82.receiver = v0;
  v82.super_class = type metadata accessor for PlaybackMetadataView();
  v18 = objc_msgSendSuper2(&v82, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v19 = [v18 layer];
  [v19 setAllowsGroupBlending_];

  v20 = OBJC_IVAR____TtC9SeymourUI20PlaybackMetadataView_titleMarqueeView;
  v21 = OBJC_IVAR____TtC9SeymourUI20PlaybackMetadataView_titleLabel;
  [*&v18[OBJC_IVAR____TtC9SeymourUI20PlaybackMetadataView_titleMarqueeView] setAnimationReferenceView_];
  v22 = &v18[OBJC_IVAR____TtC9SeymourUI20PlaybackMetadataView_styleProvider];
  [*&v18[v20] setContentGap_];
  [*&v18[v20] setFadeEdgeInsets_];
  [*&v18[v20] setViewForContentSize_];
  [v18 addSubview_];
  [*&v18[v20] setMarqueeEnabled:1 withOptions:0];
  [*&v18[v21] setTextColor_];
  v23 = *&v18[v21];
  type metadata accessor for UILayoutPriority(0);
  sub_20B60B184();
  v24 = v23;
  sub_20C13BB94();
  LODWORD(v25) = v81;
  [v24 setContentCompressionResistancePriority:0 forAxis:v25];

  LODWORD(v26) = 1148846080;
  [*&v18[v21] setContentCompressionResistancePriority:1 forAxis:v26];
  result = [*&v18[v20] contentView];
  if (result)
  {
    v28 = result;
    v80 = v21;
    [result addSubview_];

    LODWORD(v29) = 1148846080;
    [*&v18[v20] setContentCompressionResistancePriority:1 forAxis:v29];
    v30 = OBJC_IVAR____TtC9SeymourUI20PlaybackMetadataView_subtitleMarqueeView;
    v31 = OBJC_IVAR____TtC9SeymourUI20PlaybackMetadataView_subtitleLabel;
    [*&v18[OBJC_IVAR____TtC9SeymourUI20PlaybackMetadataView_subtitleMarqueeView] setAnimationReferenceView_];
    [*&v18[v30] setContentGap_];
    [*&v18[v30] setFadeEdgeInsets_];
    v32 = [*&v18[v30] layer];
    [v32 setCompositingFilter_];

    [*&v18[v30] setViewForContentSize_];
    [*&v18[v20] addCoordinatedMarqueeView_];
    [v18 addSubview_];
    [*&v18[v31] setTextColor_];
    v33 = *&v18[v31];
    sub_20C13BB94();
    LODWORD(v34) = v81;
    [v33 setContentCompressionResistancePriority:0 forAxis:v34];

    LODWORD(v35) = 1148846080;
    [*&v18[v31] setContentCompressionResistancePriority:1 forAxis:v35];
    result = [*&v18[v30] contentView];
    if (result)
    {
      v36 = result;
      [result addSubview_];

      LODWORD(v37) = 1148846080;
      [*&v18[v30] setContentCompressionResistancePriority:1 forAxis:v37];
      v38 = [v18 traitCollection];
      sub_20BA68D50(v38);

      v39 = [*&v18[v80] leadingAnchor];
      v40 = [*&v18[v20] leadingAnchor];
      v41 = [v39 constraintEqualToAnchor_];

      v78 = OBJC_IVAR____TtC9SeymourUI20PlaybackMetadataView_titleLabelLeadingConstraint;
      v42 = *&v18[OBJC_IVAR____TtC9SeymourUI20PlaybackMetadataView_titleLabelLeadingConstraint];
      *&v18[OBJC_IVAR____TtC9SeymourUI20PlaybackMetadataView_titleLabelLeadingConstraint] = v41;

      v79 = objc_opt_self();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0, &unk_20C14F960);
      v43 = swift_allocObject();
      *(v43 + 16) = xmmword_20C1615B0;
      v44 = [*&v18[v20] leadingAnchor];
      v45 = [v18 leadingAnchor];
      v46 = [v44 constraintEqualToAnchor_];

      *(v43 + 32) = v46;
      v47 = [*&v18[v20] trailingAnchor];
      v48 = [v18 trailingAnchor];
      v49 = [v47 constraintEqualToAnchor_];

      *(v43 + 40) = v49;
      v50 = [*&v18[v20] topAnchor];
      v51 = [v18 &selRef_setLineBreakMode_];
      v52 = [v50 constraintEqualToAnchor_];

      *(v43 + 48) = v52;
      v53 = [*&v18[v30] &selRef_setLineBreakMode_];
      v54 = [*&v18[v20] bottomAnchor];
      v55 = [v53 constraintEqualToAnchor_];

      *(v43 + 56) = v55;
      v56 = [*&v18[v30] leadingAnchor];
      v57 = [v18 leadingAnchor];
      v58 = [v56 constraintEqualToAnchor_];

      *(v43 + 64) = v58;
      v59 = [*&v18[v30] trailingAnchor];
      v60 = [v18 trailingAnchor];
      v61 = [v59 constraintEqualToAnchor_];

      *(v43 + 72) = v61;
      v62 = [*&v18[v30] bottomAnchor];
      v63 = [v18 bottomAnchor];

      v64 = [v62 constraintEqualToAnchor_];
      *(v43 + 80) = v64;
      v65 = [*&v18[v80] topAnchor];
      v66 = [*&v18[v20] topAnchor];
      v67 = [v65 constraintEqualToAnchor_];

      *(v43 + 88) = v67;
      v68 = *&v18[v78];
      *(v43 + 96) = v68;
      v69 = *&v18[v31];
      v70 = v68;
      v71 = [v69 topAnchor];
      v72 = [*&v18[v30] topAnchor];
      v73 = [v71 constraintEqualToAnchor_];

      *(v43 + 104) = v73;
      v74 = [*&v18[v31] leadingAnchor];
      v75 = [*&v18[v80] leadingAnchor];
      v76 = [v74 constraintEqualToAnchor_];

      *(v43 + 112) = v76;
      sub_20B5E29D0();
      v77 = sub_20C13CC54();

      [v79 activateConstraints_];

      return v18;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_20BA68B28(void *a1)
{
  v17.receiver = v1;
  v17.super_class = type metadata accessor for PlaybackMetadataView();
  objc_msgSendSuper2(&v17, sel_traitCollectionDidChange_, a1);
  swift_unknownObjectUnownedInit();
  if (a1)
  {
    v3 = a1;
    v4 = [v3 preferredContentSizeCategory];
    v5 = [v1 traitCollection];
    v6 = [v5 preferredContentSizeCategory];

    v7 = sub_20C13C954();
    v9 = v8;
    if (v7 == sub_20C13C954() && v9 == v10)
    {
    }

    else
    {
      v12 = sub_20C13DFF4();

      if ((v12 & 1) == 0)
      {
        v13 = [v1 traitCollection];
        Strong = swift_unknownObjectUnownedLoadStrong();
        sub_20BA68D50(v13);

        v3 = Strong;
      }
    }
  }

  else
  {
    v15 = [v1 traitCollection];
    v3 = swift_unknownObjectUnownedLoadStrong();
    sub_20BA68D50(v15);
  }

  return swift_unknownObjectUnownedDestroy();
}

void sub_20BA68D50(void *a1)
{
  v2 = v1;
  v4 = *(v1 + OBJC_IVAR____TtC9SeymourUI20PlaybackMetadataView_titleLabel);
  v5 = OBJC_IVAR____TtC9SeymourUI20PlaybackMetadataView_currentStyle;
  if (*(v1 + OBJC_IVAR____TtC9SeymourUI20PlaybackMetadataView_currentStyle))
  {
    v6 = v1 + OBJC_IVAR____TtC9SeymourUI20PlaybackMetadataView_styleProvider;
    v7 = [objc_opt_self() systemFontOfSize:*(v1 + OBJC_IVAR____TtC9SeymourUI20PlaybackMetadataView_fontSize) weight:*(v6 + 8)];
  }

  else
  {
    v7 = sub_20B7C6A74(a1);
  }

  v8 = v7;
  [v4 setFont_];

  v9 = *(v2 + OBJC_IVAR____TtC9SeymourUI20PlaybackMetadataView_subtitleLabel);
  if (*(v2 + v5))
  {
    v10 = v2 + OBJC_IVAR____TtC9SeymourUI20PlaybackMetadataView_styleProvider;
    v11 = [objc_opt_self() systemFontOfSize:*(v2 + OBJC_IVAR____TtC9SeymourUI20PlaybackMetadataView_fontSize) weight:*(v10 + 24)];
  }

  else
  {
    v11 = sub_20B7C6A74(a1);
  }

  v12 = v11;
  [v9 setFont_];
}

id sub_20BA68F0C(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for PlaybackMetadataView();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

__n128 __swift_memcpy224_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v8;
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  result = *(a2 + 160);
  v10 = *(a2 + 176);
  v11 = *(a2 + 208);
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 208) = v11;
  *(a1 + 160) = result;
  *(a1 + 176) = v10;
  return result;
}

uint64_t sub_20BA69074(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 224))
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

uint64_t sub_20BA690BC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 216) = 0;
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 224) = 1;
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

    *(result + 224) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_20BA69158()
{
  result = qword_27C7697A8;
  if (!qword_27C7697A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7697A8);
  }

  return result;
}

void sub_20BA691D0(uint64_t a1)
{
  sub_20B8C9204(a1, v7);
  sub_20B8C9204(v7, v8);
  sub_20B8C9204(v8, v9);
  [*&v1[OBJC_IVAR____TtC9SeymourUI20PlaybackMetadataView_titleLabelLeadingConstraint] setConstant_];
  v2 = v12;
  *&v1[OBJC_IVAR____TtC9SeymourUI20PlaybackMetadataView_fontSize] = v10;
  *&v1[OBJC_IVAR____TtC9SeymourUI20PlaybackMetadataView_metadataInteritemSpacingMultiplier] = v2;
  v3 = *&v1[OBJC_IVAR____TtC9SeymourUI20PlaybackMetadataView_metadataMaximumContentSizeCategory];
  *&v1[OBJC_IVAR____TtC9SeymourUI20PlaybackMetadataView_metadataMaximumContentSizeCategory] = v14;
  sub_20B8C9260(v9, v6);

  v4 = v13;
  [*&v1[OBJC_IVAR____TtC9SeymourUI20PlaybackMetadataView_titleMarqueeView] setContentGap_];
  [*&v1[OBJC_IVAR____TtC9SeymourUI20PlaybackMetadataView_subtitleMarqueeView] setContentGap_];
  v5 = [v1 traitCollection];
  sub_20BA68D50(v5);
}

id sub_20BA692D8@<X0>(uint64_t a1@<X8>)
{
  v2 = objc_opt_self();
  v3 = [v2 whiteColor];
  v4 = [v3 colorWithAlphaComponent_];

  v5 = *MEMORY[0x277D743F8];
  v6 = [v2 whiteColor];
  v7 = [v6 colorWithAlphaComponent_];

  v8 = *MEMORY[0x277D74418];
  v9 = *MEMORY[0x277D76A28];
  v10 = *MEMORY[0x277D76818];
  v11 = MEMORY[0x277D84FA0];
  v16 = MEMORY[0x277D84FA0];
  v12 = *MEMORY[0x277D76818];
  sub_20B6FF83C(v17, 1);
  v17[0] = 1;
  v13 = v12;
  v15 = v9;
  sub_20B6FF83C(v17, 1);
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v7;
  *(a1 + 24) = v8;
  *(a1 + 32) = 0;
  *(a1 + 40) = v10;
  *(a1 + 48) = v15;
  *(a1 + 56) = 0;
  *(a1 + 60) = 2305;
  *(a1 + 64) = 0;
  *(a1 + 72) = 1;
  *(a1 + 80) = v16;
  *(a1 + 88) = 0;
  *(a1 + 96) = v10;
  *(a1 + 104) = v15;
  *(a1 + 112) = 0;
  *(a1 + 116) = 2305;
  *(a1 + 120) = 0;
  *(a1 + 128) = 1;
  *(a1 + 136) = v11;

  return v15;
}

void sub_20BA6948C()
{
  *(v0 + OBJC_IVAR____TtC9SeymourUI20PlaybackMetadataView_currentStyle) = 1;
  v1 = OBJC_IVAR____TtC9SeymourUI20PlaybackMetadataView_titleLabelLeadingConstraint;
  *(v0 + v1) = [objc_allocWithZone(MEMORY[0x277CCAAD0]) init];
  *(v0 + OBJC_IVAR____TtC9SeymourUI20PlaybackMetadataView_fontSize) = 0;
  *(v0 + OBJC_IVAR____TtC9SeymourUI20PlaybackMetadataView_metadataInteritemSpacingMultiplier) = 0;
  v2 = *MEMORY[0x277D76860];
  *(v0 + OBJC_IVAR____TtC9SeymourUI20PlaybackMetadataView_metadataMaximumContentSizeCategory) = *MEMORY[0x277D76860];
  v3 = (v0 + OBJC_IVAR____TtC9SeymourUI20PlaybackMetadataView_styleProvider);
  v4 = v2;
  sub_20BA692D8(v18);
  v5 = v18[7];
  v3[6] = v18[6];
  v3[7] = v5;
  v6 = v18[8];
  v7 = v18[3];
  v3[2] = v18[2];
  v3[3] = v7;
  v8 = v18[5];
  v3[4] = v18[4];
  v3[5] = v8;
  v9 = v18[1];
  *v3 = v18[0];
  v3[1] = v9;
  v3[8] = v6;
  v3[9] = xmmword_20C15D8A0;
  v3[10] = xmmword_20C15D8A0;
  v3[11] = xmmword_20C169040;
  v3[12] = xmmword_20C169050;
  v3[13] = xmmword_20C15D8F0;
  v10 = OBJC_IVAR____TtC9SeymourUI20PlaybackMetadataView_subtitleMarqueeView;
  v11 = [objc_allocWithZone(MEMORY[0x277D25708]) init];
  [v11 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v0 + v10) = v11;
  v12 = OBJC_IVAR____TtC9SeymourUI20PlaybackMetadataView_subtitleLabel;
  v13 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  [v13 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v0 + v12) = v13;
  v14 = OBJC_IVAR____TtC9SeymourUI20PlaybackMetadataView_titleMarqueeView;
  v15 = [objc_allocWithZone(MEMORY[0x277D25708]) init];
  [v15 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v0 + v14) = v15;
  v16 = OBJC_IVAR____TtC9SeymourUI20PlaybackMetadataView_titleLabel;
  v17 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  [v17 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v0 + v16) = v17;
  sub_20C13DE24();
  __break(1u);
}

uint64_t sub_20BA696C0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 144))
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

uint64_t sub_20BA69708(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0;
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
      *(result + 144) = 1;
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

    *(result + 144) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_20BA697B4(unint64_t a1, uint64_t a2, uint64_t a3)
{
  switch((a1 >> 57) & 0x78 | a1 & 7)
  {
    case 1uLL:
      return type metadata accessor for AccountSettingRowCell(0);
    case 2uLL:
      return type metadata accessor for ActionButtonsCell(0);
    case 3uLL:
    case 0x44uLL:
      return type metadata accessor for ActionBannerCell(0);
    case 4uLL:
      return type metadata accessor for ActivityPickerCell(0);
    case 5uLL:
      return type metadata accessor for ArtworkHeaderCell(0);
    case 6uLL:
    case 0x11uLL:
    case 0x1AuLL:
    case 0x37uLL:
    case 0x3BuLL:
      return type metadata accessor for StandardFilterCell(0);
    case 7uLL:
    case 9uLL:
    case 0xAuLL:
    case 0xFuLL:
    case 0x15uLL:
    case 0x16uLL:
    case 0x17uLL:
    case 0x19uLL:
    case 0x25uLL:
    case 0x32uLL:
    case 0x33uLL:
    case 0x3FuLL:
    case 0x43uLL:
      return sub_20C093BC8(a1);
    case 8uLL:
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764E00, &unk_20C15CD70);
      if (*(swift_projectBox() + *(v6 + 80)))
      {
        return type metadata accessor for RoundedDetailHeaderCell(0);
      }

      else
      {
        return type metadata accessor for FullWidthDetailHeaderCell(0);
      }

    case 0xBuLL:
      return type metadata accessor for DownloadButtonCell(0);
    case 0xCuLL:
      return type metadata accessor for DownloadButtonHeaderCell(0);
    case 0xDuLL:
      return type metadata accessor for DurationFilterCell(0);
    case 0xEuLL:
      return type metadata accessor for ContentUnavailableCell(0);
    case 0x10uLL:
    case 0x22uLL:
      return type metadata accessor for MarketingHeaderBannerCell(0);
    case 0x12uLL:
      return type metadata accessor for ExpandingDetailDescriptionCell(0);
    case 0x13uLL:
      return type metadata accessor for ExpandingTextCell(0);
    case 0x14uLL:
      return type metadata accessor for FilterHeaderCell(0);
    case 0x18uLL:
      return type metadata accessor for FullScreenMessageCell(0);
    case 0x1BuLL:
      return type metadata accessor for GuidedWalkMediaTagsCell(0);
    case 0x1CuLL:
    case 0x39uLL:
      return sub_20BA697B4(*((a1 & 0xFFFFFFFFFFFFFF8) + 0x20), a2, a3);
    case 0x1DuLL:
      return type metadata accessor for HostedContentCell(0);
    case 0x1EuLL:
      v7 = &unk_27C7677D0;
      v8 = &unk_20C151840;
      goto LABEL_57;
    case 0x1FuLL:
      v7 = &qword_27C762B80;
      v8 = &unk_20C165750;
LABEL_57:
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(v7, v8);
      v10 = swift_projectBox();
      v11 = (v9 + 64);
      goto LABEL_66;
    case 0x20uLL:
      v4 = &unk_27C772250;
      v5 = &unk_20C150590;
      goto LABEL_65;
    case 0x21uLL:
      v4 = &qword_27C762B28;
      v5 = &unk_20C1713B0;
      goto LABEL_65;
    case 0x23uLL:
      return type metadata accessor for MarketingHeaderUpsellCell(0);
    case 0x24uLL:
      return type metadata accessor for MetadataEntryCell(0);
    case 0x26uLL:
      return type metadata accessor for ModalityFilterCell(0);
    case 0x27uLL:
      return type metadata accessor for ModalityPickerItemCell(0);
    case 0x28uLL:
      return type metadata accessor for PreferredMusicGenreCell(0);
    case 0x29uLL:
      return type metadata accessor for MusicTrackCell(0);
    case 0x2AuLL:
      return type metadata accessor for MyLibraryEntryCell(0);
    case 0x2BuLL:
      return type metadata accessor for NotificationBannerCell(0);
    case 0x2CuLL:
      return type metadata accessor for OfflineWorkoutsBannerCell(0);
    case 0x2DuLL:
      return type metadata accessor for PlaylistDetailHeaderCell(0);
    case 0x2EuLL:
      return type metadata accessor for PreferenceDescriptionCell(0);
    case 0x2FuLL:
      return type metadata accessor for PreviewVideoLinkCell(0);
    case 0x30uLL:
      return type metadata accessor for ProgramDetailHeaderCell(0);
    case 0x31uLL:
      return type metadata accessor for ProgramMediaTagsCell(0);
    case 0x34uLL:
      return type metadata accessor for SchedulePickerCell(0);
    case 0x35uLL:
      return type metadata accessor for SegmentedOptionPickerCell(0);
    case 0x36uLL:
      return type metadata accessor for SelectedFilterCell(0);
    case 0x38uLL:
      return type metadata accessor for SortingHeaderCell(0);
    case 0x3AuLL:
      return type metadata accessor for ThemeFilterCell(0);
    case 0x3CuLL:
      return type metadata accessor for TrainerFilterCell(0);
    case 0x3DuLL:
      return type metadata accessor for PreferredTrainerCell(0);
    case 0x3EuLL:
      return type metadata accessor for UpNextQueueHeaderCell(0);
    case 0x40uLL:
      return type metadata accessor for ValueItemCell(0);
    case 0x41uLL:
      return type metadata accessor for WorkoutMediaTagsCell(0);
    case 0x42uLL:
      if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x28) > 1u)
      {
        if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x28) == 2)
        {
          return type metadata accessor for WeekdayPlannerModalityCell(0);
        }

        else
        {
          return type metadata accessor for WeekdayPlannerEmptyCell(0);
        }
      }

      else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x28))
      {
        return type metadata accessor for WeekdayPlannerHeaderCell(0);
      }

      else
      {
        return type metadata accessor for WeekdayPlannerAddCell(0);
      }

    case 0x45uLL:
      return type metadata accessor for TabletWorkoutPlanBannerCell(0);
    case 0x46uLL:
      return type metadata accessor for WorkoutPlanHeaderCell(0);
    case 0x47uLL:
      return type metadata accessor for WorkoutPlanGalleryBannerCell(0);
    case 0x48uLL:
      return type metadata accessor for WorkoutPlanGalleryBrickItemCell(0);
    case 0x49uLL:
      return type metadata accessor for WorkoutPlanDetailHeaderCell(0);
    case 0x4AuLL:
      v4 = &unk_27C762A70;
      v5 = &unk_20C1512E0;
LABEL_65:
      v12 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
      v10 = swift_projectBox();
      v11 = (v12 + 48);
LABEL_66:
      result = sub_20BA6A478(*(v10 + *v11));
      break;
    case 0x4BuLL:
      result = type metadata accessor for WorkoutPlanPreferenceRowCell(0);
      break;
    case 0x4CuLL:
      result = type metadata accessor for WorkoutPlanReviewHeaderCell(0);
      break;
    case 0x4DuLL:
      result = type metadata accessor for LoadingCell(0);
      break;
    default:
      result = type metadata accessor for AccountSettingAvatarRowCell(0);
      break;
  }

  return result;
}

uint64_t sub_20BA69D68()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762B78, "ƺ\t");
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_20C169240;
  *(v0 + 32) = type metadata accessor for AccountSettingAvatarRowCell(0);
  *(v0 + 40) = &off_2822C9C00;
  *(v0 + 48) = type metadata accessor for AccountSettingRowCell(0);
  *(v0 + 56) = &off_2822F48C0;
  *(v0 + 64) = type metadata accessor for ActionBannerCell(0);
  *(v0 + 72) = &off_2822E9950;
  *(v0 + 80) = type metadata accessor for ActionBrickItemCell(0);
  *(v0 + 88) = &off_282297588;
  *(v0 + 96) = type metadata accessor for ActionButtonsCell(0);
  *(v0 + 104) = &off_2822E82A0;
  *(v0 + 112) = type metadata accessor for ActivityPickerCell(0);
  *(v0 + 120) = &off_2822E9308;
  *(v0 + 128) = type metadata accessor for ArtworkHeaderCell(0);
  *(v0 + 136) = &off_2822A23B0;
  *(v0 + 144) = type metadata accessor for CircleItemCell(0);
  *(v0 + 152) = &off_2822B72D8;
  *(v0 + 160) = type metadata accessor for ContentUnavailableCell(0);
  *(v0 + 168) = &off_2822AB5D8;
  *(v0 + 176) = type metadata accessor for DownloadButtonHeaderCell(0);
  *(v0 + 184) = &off_2822E17C8;
  *(v0 + 192) = type metadata accessor for DurationFilterCell(0);
  *(v0 + 200) = &off_2822D12C0;
  *(v0 + 208) = type metadata accessor for DynamicBrickItemCell(0);
  *(v0 + 216) = &off_2822DDF08;
  *(v0 + 224) = type metadata accessor for EditorialCollectionBrickItemCell(0);
  *(v0 + 232) = &off_2822EE3D0;
  *(v0 + 240) = type metadata accessor for EditorialCollectionBrickRowCell(0);
  *(v0 + 248) = &off_2822C9130;
  *(v0 + 256) = type metadata accessor for ExpandingDetailDescriptionCell(0);
  *(v0 + 264) = &off_2822DF5C8;
  *(v0 + 272) = type metadata accessor for ExpandingTextCell(0);
  *(v0 + 280) = &off_2822A7818;
  *(v0 + 288) = type metadata accessor for FallbackCell(0);
  *(v0 + 296) = &off_2822B7120;
  *(v0 + 304) = type metadata accessor for FilterHeaderCell(0);
  *(v0 + 312) = &off_2822CE620;
  *(v0 + 320) = type metadata accessor for FullScreenMessageCell(0);
  *(v0 + 328) = &off_2822CF7D8;
  *(v0 + 336) = type metadata accessor for FullWidthDetailHeaderCell(0);
  *(v0 + 344) = &off_2822ABA08;
  *(v0 + 352) = type metadata accessor for GroupedBrickItemCell(0);
  *(v0 + 360) = &off_2822E0210;
  *(v0 + 368) = type metadata accessor for GuidedWalkMediaTagsCell(0);
  *(v0 + 376) = &off_2822F7838;
  *(v0 + 384) = type metadata accessor for GuidedWorkoutBrickItemCell(0);
  *(v0 + 392) = &off_28229AFA8;
  *(v0 + 400) = type metadata accessor for GuidedWorkoutBrickRowCell(0);
  *(v0 + 408) = &off_2822DE930;
  *(v0 + 416) = type metadata accessor for HighlightBrickItemCell(0);
  *(v0 + 424) = &off_2822AD880;
  *(v0 + 432) = type metadata accessor for HostedContentCell(0);
  *(v0 + 440) = &off_2822AE110;
  *(v0 + 448) = type metadata accessor for LoadingCell(0);
  *(v0 + 456) = &off_282307F40;
  *(v0 + 464) = type metadata accessor for MarketingHeaderBannerCell(0);
  *(v0 + 472) = &off_2822FAD50;
  *(v0 + 480) = type metadata accessor for MarketingHeaderUpsellCell(0);
  *(v0 + 488) = &off_2823065C0;
  *(v0 + 496) = type metadata accessor for MetadataEntryCell(0);
  *(v0 + 504) = &off_2822E2BA0;
  *(v0 + 512) = type metadata accessor for ModalityBrickItemCell(0);
  *(v0 + 520) = &off_2822F4D40;
  *(v0 + 528) = type metadata accessor for ModalityFilterCell(0);
  *(v0 + 536) = &off_2822AC048;
  *(v0 + 544) = type metadata accessor for ModalityPickerItemCell(0);
  *(v0 + 552) = &off_282305A18;
  *(v0 + 560) = type metadata accessor for MusicTrackCell(0);
  *(v0 + 568) = &off_2822B5990;
  *(v0 + 576) = type metadata accessor for MyLibraryEntryCell(0);
  *(v0 + 584) = &off_2822DE1B0;
  *(v0 + 592) = type metadata accessor for NotificationBannerCell(0);
  *(v0 + 600) = &off_2822B1B68;
  *(v0 + 608) = type metadata accessor for OfflineWorkoutsBannerCell(0);
  *(v0 + 616) = &off_282308118;
  *(v0 + 624) = type metadata accessor for PlaylistDetailHeaderCell(0);
  *(v0 + 632) = &off_2822E2558;
  *(v0 + 640) = type metadata accessor for PreferenceDescriptionCell(0);
  *(v0 + 648) = &off_2822998F0;
  *(v0 + 656) = type metadata accessor for PreferredMusicGenreCell(0);
  *(v0 + 664) = &off_282303100;
  *(v0 + 672) = type metadata accessor for PreferredTrainerCell(0);
  *(v0 + 680) = &off_2822F6E58;
  *(v0 + 688) = type metadata accessor for PreviewVideoLinkCell(0);
  *(v0 + 696) = &off_2822CE1E8;
  *(v0 + 704) = type metadata accessor for ProgramBrickItemCell(0);
  *(v0 + 712) = &off_2822A6690;
  *(v0 + 720) = type metadata accessor for ProgramBrickRowCell(0);
  *(v0 + 728) = &off_2822D2758;
  *(v0 + 736) = type metadata accessor for ProgramDetailHeaderCell(0);
  *(v0 + 744) = &off_2822C6748;
  *(v0 + 752) = type metadata accessor for ProgramMediaTagsCell(0);
  *(v0 + 760) = &off_2822DB4C8;
  *(v0 + 768) = type metadata accessor for RoundedDetailHeaderCell(0);
  *(v0 + 776) = &off_2822BD6E8;
  *(v0 + 784) = type metadata accessor for SchedulePickerCell(0);
  *(v0 + 792) = &off_2822DE5C8;
  *(v0 + 800) = type metadata accessor for SegmentedOptionPickerCell(0);
  *(v0 + 808) = &off_2822AD718;
  *(v0 + 816) = type metadata accessor for SelectedFilterCell(0);
  *(v0 + 824) = &off_28229A7D8;
  *(v0 + 832) = type metadata accessor for SortingHeaderCell(0);
  *(v0 + 840) = &off_2822F5C30;
  *(v0 + 848) = type metadata accessor for StandardBrickItemCell(0);
  *(v0 + 856) = &off_2822D2D48;
  *(v0 + 864) = type metadata accessor for StandardFilterCell(0);
  *(v0 + 872) = &off_2822B8068;
  *(v0 + 880) = type metadata accessor for TabletActionBrickRowCell(0);
  *(v0 + 888) = &off_2822D55E8;
  *(v0 + 896) = type metadata accessor for TabletIndexedBrickItemCell(0);
  *(v0 + 904) = &off_2822B2FE0;
  *(v0 + 912) = type metadata accessor for TabletStandardBrickRowCell(0);
  *(v0 + 920) = &off_2822E1438;
  *(v0 + 928) = type metadata accessor for TabletWorkoutPlanBannerCell(0);
  *(v0 + 936) = &off_2822D92D8;
  *(v0 + 944) = type metadata accessor for TabletWorkoutPlanBrickItemCell(0);
  *(v0 + 952) = &off_282296828;
  *(v0 + 960) = type metadata accessor for ThemeFilterCell(0);
  *(v0 + 968) = &off_282301488;
  *(v0 + 976) = type metadata accessor for TrainerFilterCell(0);
  *(v0 + 984) = &off_2822B8298;
  *(v0 + 992) = type metadata accessor for UpNextQueueHeaderCell(0);
  *(v0 + 1000) = &off_2822BC500;
  *(v0 + 1008) = type metadata accessor for UpNextQueueRowCell(0);
  *(v0 + 1016) = &off_2822A88D0;
  *(v0 + 1024) = type metadata accessor for ValueItemCell(0);
  *(v0 + 1032) = &off_2822DAA68;
  *(v0 + 1040) = type metadata accessor for VideoBrickItemCell(0);
  *(v0 + 1048) = &off_28229D150;
  *(v0 + 1056) = type metadata accessor for VideoBrickRowCell(0);
  *(v0 + 1064) = &off_282297778;
  *(v0 + 1072) = type metadata accessor for WeekdayPlannerAddCell(0);
  *(v0 + 1080) = &off_2822B4B98;
  *(v0 + 1088) = type metadata accessor for WeekdayPlannerEmptyCell(0);
  *(v0 + 1096) = &off_2822F84E0;
  *(v0 + 1104) = type metadata accessor for WeekdayPlannerHeaderCell(0);
  *(v0 + 1112) = &off_2822C8518;
  *(v0 + 1120) = type metadata accessor for WeekdayPlannerModalityCell(0);
  *(v0 + 1128) = &off_2822AE8B0;
  *(v0 + 1136) = type metadata accessor for WorkoutMediaTagsCell(0);
  *(v0 + 1144) = &off_2822A6548;
  *(v0 + 1152) = type metadata accessor for WorkoutPlanBrickRowCell(0);
  *(v0 + 1160) = &off_2822E4260;
  *(v0 + 1168) = type metadata accessor for WorkoutPlanDetailHeaderCell(0);
  *(v0 + 1176) = &off_2822FEC60;
  *(v0 + 1184) = type metadata accessor for WorkoutPlanHeaderCell(0);
  *(v0 + 1192) = &off_2822B8D70;
  *(v0 + 1200) = type metadata accessor for WorkoutPlanGalleryBannerCell(0);
  *(v0 + 1208) = &off_2822F7F20;
  *(v0 + 1216) = type metadata accessor for WorkoutPlanGalleryBrickItemCell(0);
  *(v0 + 1224) = &off_2822AF008;
  *(v0 + 1232) = type metadata accessor for WorkoutPlanReviewHeaderCell(0);
  *(v0 + 1240) = &off_2822A4D38;
  *(v0 + 1248) = type metadata accessor for WorkoutPlanPreferenceRowCell(0);
  *(v0 + 1256) = &off_2822B92C8;
  return v0;
}

uint64_t sub_20BA6A478(char a1)
{
  switch(a1)
  {
    case 1:
    case 23:
      result = type metadata accessor for TabletActionBrickRowCell(0);
      break;
    case 2:
    case 3:
    case 4:
    case 12:
    case 21:
    case 24:
    case 30:
    case 35:
    case 36:
    case 40:
    case 41:
    case 44:
    case 45:
    case 46:
    case 47:
    case 48:
      result = sub_20C093E48(a1);
      break;
    case 5:
    case 13:
      result = type metadata accessor for GroupedBrickItemCell(0);
      break;
    case 6:
    case 7:
      result = type metadata accessor for CircleItemCell(0);
      break;
    case 8:
    case 25:
    case 28:
    case 29:
    case 34:
      result = type metadata accessor for TabletStandardBrickRowCell(0);
      break;
    case 9:
    case 31:
      result = type metadata accessor for DynamicBrickItemCell(0);
      break;
    case 10:
      result = type metadata accessor for EditorialCollectionBrickItemCell(0);
      break;
    case 11:
      result = type metadata accessor for EditorialCollectionBrickRowCell(0);
      break;
    case 14:
    case 16:
      result = type metadata accessor for GuidedWorkoutBrickItemCell(0);
      break;
    case 15:
    case 17:
      result = type metadata accessor for GuidedWorkoutBrickRowCell(0);
      break;
    case 18:
      result = type metadata accessor for HighlightBrickItemCell(0);
      break;
    case 19:
      result = type metadata accessor for TabletIndexedBrickItemCell(0);
      break;
    case 20:
    case 32:
    case 33:
      result = type metadata accessor for StandardBrickItemCell(0);
      break;
    case 22:
      result = type metadata accessor for ModalityBrickItemCell(0);
      break;
    case 26:
      result = type metadata accessor for ProgramBrickItemCell(0);
      break;
    case 27:
      result = type metadata accessor for ProgramBrickRowCell(0);
      break;
    case 37:
      result = type metadata accessor for UpNextQueueRowCell(0);
      break;
    case 38:
      result = type metadata accessor for VideoBrickItemCell(0);
      break;
    case 39:
      result = type metadata accessor for VideoBrickRowCell(0);
      break;
    case 42:
      result = type metadata accessor for TabletWorkoutPlanBrickItemCell(0);
      break;
    case 43:
      result = type metadata accessor for WorkoutPlanBrickRowCell(0);
      break;
    default:
      result = type metadata accessor for ActionBrickItemCell(0);
      break;
  }

  return result;
}

unint64_t sub_20BA6A6C0()
{
  result = qword_27C7697B0;
  if (!qword_27C7697B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7697B0);
  }

  return result;
}

uint64_t sub_20BA6A71C(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  *(v4 + 16) = xmmword_20C169320;
  *(v4 + 32) = xmmword_20C169330;
  *(v4 + 48) = xmmword_20C169340;
  *(v4 + 64) = xmmword_20C169350;
  *(v4 + 80) = xmmword_20C169360;
  *(v4 + 96) = xmmword_20C169370;
  *(v4 + 112) = vdupq_n_s64(6uLL);
  *(v4 + 128) = xmmword_20C169380;
  swift_unknownObjectRetain();
  SummaryStringBuilder.init(unitPreferencesProvider:)(a2, a3, &v26);
  v30 = 257;
  v32 = 257;
  v8 = v28;
  v9 = v29;
  v31[2] = v28;
  v31[3] = v29;
  v10 = v27;
  v11 = v26;
  v31[0] = v26;
  v31[1] = v27;
  *(v4 + 264) = 257;
  *(v4 + 216) = v10;
  *(v4 + 232) = v8;
  *(v4 + 248) = v9;
  *(v4 + 200) = v11;
  v12 = a1[3];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v12);
  v14 = *(v13 + 8);
  sub_20B7A3194(v31, v33);
  *(v4 + 144) = v14(v12, v13);
  *(v4 + 152) = v15 & 1;
  v16 = a1[3];
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v16);
  *(v4 + 160) = (*(v17 + 16))(v16, v17);
  *(v4 + 168) = v18 & 1;
  v19 = a1[3];
  v20 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v19);
  *(v4 + 176) = (*(v20 + 24))(v19, v20);
  *(v4 + 184) = v21 & 1;
  v22 = a1[3];
  v23 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v22);
  v24 = (*(v23 + 32))(v22, v23);
  swift_unknownObjectRelease();
  v33[2] = v28;
  v33[3] = v29;
  v34 = v30;
  v33[0] = v26;
  v33[1] = v27;
  sub_20B7A3B8C(v33);
  *(v4 + 192) = v24;
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v4;
}

UIImage *sub_20BA6A948(uint64_t a1)
{
  v11.width = 270.0;
  v11.height = 168.0;
  UIGraphicsBeginImageContextWithOptions(v11, 0, 0.0);
  v4 = [objc_allocWithZone(MEMORY[0x277D755E8]) init];
  [v4 setContentMode_];
  [v4 setImage_];
  [v4 setTranslatesAutoresizingMaskIntoConstraints_];
  v5 = [v4 image];
  [v5 drawInRect_];

  sub_20BA6AB18(v8);
  sub_20BA6B288(v8, v9);
  if (*&v9[0] | v10)
  {
    sub_20BA6B464(168.0);
    if (v2)
    {
LABEL_7:
      sub_20BA6B434(v9);
      sub_20BA6B434(v8);
      return v1;
    }

    sub_20BA6B640(v9, 270.0, 168.0);
  }

  v1 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsEndImageContext();
  if (!v1)
  {
    sub_20B659CD4();
    swift_allocError();
    *v6 = 0;
    swift_willThrow();
    goto LABEL_7;
  }

  sub_20BA6B434(v8);
  sub_20BA6B434(v9);
  return v1;
}

void sub_20BA6AB18(uint64_t a1@<X8>)
{
  v3 = sub_20BA6ACC4();
  v5 = v4;
  v22 = v6 & 1;
  v8 = v7 & 0xFF01;
  v9 = sub_20BA6AF4C();
  v11 = v10;
  v13 = v12 & 1;
  v15 = v14 & 0xFF01;
  v16 = sub_20BA6B0E8();
  v20 = v17 & 1;
  v21 = v19 & 0xFF01;
  if (v3)
  {
    if (v9)
    {
      sub_20BA6B3F4(v16, v20, v18);
    }

    else
    {
      v9 = v16;
      v13 = v20;
      v11 = v18;
      v15 = v21;
    }

    v2 = v22;
  }

  else if (v9)
  {
    sub_20BA6B3F4(v16, v20, v18);
    v3 = v9;
    v2 = v13;
    v5 = v11;
    v8 = v15;
    v9 = 0;
    v13 = 0;
    v11 = 0;
    v15 = 0;
  }

  else if (v16)
  {
    v9 = 0;
    v13 = 0;
    v11 = 0;
    v15 = 0;
    v3 = v16;
    v2 = v20;
    v5 = v18;
    v8 = v21;
  }

  else
  {
    v3 = 0;
    v9 = 0;
    v2 = v20;
    v5 = v18;
    v8 = v21;
    v13 = v20;
    v11 = v18;
    v15 = v21;
  }

  *a1 = v3;
  *(a1 + 8) = v2;
  *(a1 + 16) = v5;
  *(a1 + 24) = v8;
  *(a1 + 32) = v9;
  *(a1 + 40) = v13;
  *(a1 + 48) = v11;
  *(a1 + 56) = v15;
}

id sub_20BA6ACC4()
{
  if (*(v1 + 152))
  {
    sub_20B659CD4();
    swift_allocError();
    *v3 = 6;
    swift_willThrow();
  }

  else
  {
    v4 = *(v1 + 144);
    v5 = *(v1 + 216);
    v6 = *(v1 + 248);
    v31 = *(v1 + 232);
    v32 = v6;
    v33 = *(v1 + 264);
    v29 = *(v1 + 200);
    v30 = v5;
    v7 = *(v1 + 216);
    v8 = *(v1 + 248);
    v26 = *(v1 + 232);
    v27 = v8;
    v28 = *(v1 + 264);
    v24 = *(v1 + 200);
    v25 = v7;
    sub_20B7A3194(&v29, &v19);
    sub_20BAADCAC();
    v21 = v31;
    v22 = v32;
    v23 = v33;
    v19 = v29;
    v20 = v30;
    sub_20BAAD990();
    v9 = objc_allocWithZone(MEMORY[0x277CCA898]);
    v10 = sub_20C13C914();

    type metadata accessor for Key(0);
    sub_20B76322C();
    v11 = sub_20C13C744();

    v0 = [v9 initWithString:v10 attributes:v11];
    sub_20B7A3B8C(&v29);

    v12 = *(v1 + 216);
    v13 = *(v1 + 248);
    v34[2] = *(v1 + 232);
    v34[3] = v13;
    v35 = *(v1 + 264);
    v34[0] = *(v1 + 200);
    v34[1] = v12;
    v14 = *(v1 + 216);
    v15 = *(v1 + 248);
    v26 = *(v1 + 232);
    v27 = v15;
    v28 = *(v1 + 264);
    v24 = *(v1 + 200);
    v25 = v14;
    sub_20B7A3194(v34, &v19);
    v16 = sub_20BAAB954(v4);
    if (v2)
    {
      v21 = v26;
      v22 = v27;
      v23 = v28;
      v19 = v24;
      v20 = v25;
      sub_20B7A3B8C(&v19);
    }

    else
    {
      v18 = v16;
      v21 = v26;
      v22 = v27;
      v23 = v28;
      v19 = v24;
      v20 = v25;
      sub_20B7A3B8C(&v19);
      [v0 length];
      [v18 length];
    }
  }

  return v0;
}

id sub_20BA6AF4C()
{
  if (*(v1 + 168))
  {
    sub_20B659CD4();
    swift_allocError();
    *v3 = 6;
    swift_willThrow();
  }

  else
  {
    v4 = *(v1 + 160);
    v5 = *(v1 + 216);
    v6 = *(v1 + 248);
    v21 = *(v1 + 232);
    v22 = v6;
    v23 = *(v1 + 264);
    v19 = *(v1 + 200);
    v20 = v5;
    v0 = sub_20BAABE50();
    v7 = *(v1 + 216);
    v8 = *(v1 + 248);
    v24[2] = *(v1 + 232);
    v24[3] = v8;
    v25 = *(v1 + 264);
    v24[0] = *(v1 + 200);
    v24[1] = v7;
    v9 = *(v1 + 216);
    v10 = *(v1 + 248);
    v21 = *(v1 + 232);
    v22 = v10;
    v23 = *(v1 + 264);
    v19 = *(v1 + 200);
    v20 = v9;
    sub_20B7A3194(v24, &v14);
    v11 = sub_20BAABFD0(v4);
    if (v2)
    {
      v16 = v21;
      v17 = v22;
      v18 = v23;
      v14 = v19;
      v15 = v20;
      sub_20B7A3B8C(&v14);
    }

    else
    {
      v13 = v11;
      v16 = v21;
      v17 = v22;
      v18 = v23;
      v14 = v19;
      v15 = v20;
      sub_20B7A3B8C(&v14);
      [v0 length];
      [v13 length];
    }
  }

  return v0;
}

id sub_20BA6B0E8()
{
  if (*(v1 + 184))
  {
    sub_20B659CD4();
    swift_allocError();
    *v3 = 6;
    swift_willThrow();
  }

  else
  {
    v4 = *(v1 + 176);
    v5 = *(v1 + 216);
    v6 = *(v1 + 248);
    v21 = *(v1 + 232);
    v22 = v6;
    v23 = *(v1 + 264);
    v19 = *(v1 + 200);
    v20 = v5;
    v0 = sub_20BAAC21C();
    v7 = *(v1 + 216);
    v8 = *(v1 + 248);
    v24[2] = *(v1 + 232);
    v24[3] = v8;
    v25 = *(v1 + 264);
    v24[0] = *(v1 + 200);
    v24[1] = v7;
    v9 = *(v1 + 216);
    v10 = *(v1 + 248);
    v21 = *(v1 + 232);
    v22 = v10;
    v23 = *(v1 + 264);
    v19 = *(v1 + 200);
    v20 = v9;
    sub_20B7A3194(v24, &v14);
    sub_20BAAC39C(v4);
    if (v2)
    {
      v16 = v21;
      v17 = v22;
      v18 = v23;
      v14 = v19;
      v15 = v20;
      sub_20B7A3B8C(&v14);
    }

    else
    {
      v13 = v11;
      v16 = v21;
      v17 = v22;
      v18 = v23;
      v14 = v19;
      v15 = v20;
      sub_20B7A3B8C(&v14);
      [v0 length];
      [v13 length];
    }
  }

  return v0;
}

double sub_20BA6B288@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = *a1;
  v5 = *(a1 + 12);
  v6 = (a1[1] & 1) != 0 || v4 == 0;
  v7 = !v6;
  if (v6)
  {
    if (a1[4])
    {
      v8 = *(a1 + 40);
      v9 = v5 & 1;
      if (v4)
      {
        v10 = v9 == 0;
      }

      else
      {
        v10 = 0;
      }

      if (!v10)
      {
LABEL_16:
        v11 = v8 & 1;
        if ((a1[7] & 1) == 0)
        {
          goto LABEL_27;
        }

        goto LABEL_23;
      }

      if ((a1[5] & 1) == 0)
      {
LABEL_26:
        v11 = 0;
LABEL_27:
        v14 = 0;
        goto LABEL_28;
      }
    }

    else
    {
      v12 = v5 & 1;
      if (v4)
      {
        v13 = v12 == 0;
      }

      else
      {
        v13 = 0;
      }

      if (!v13)
      {
        goto LABEL_22;
      }
    }

    v14 = 0;
    v11 = 1;
    goto LABEL_28;
  }

  if ((v5 & 1) == 0)
  {
    goto LABEL_26;
  }

  if (a1[4])
  {
    v8 = 0;
    goto LABEL_16;
  }

LABEL_22:
  v11 = v7 ^ 1;
LABEL_23:
  v14 = 256;
LABEL_28:
  *(v2 + 264) = v14 | v11;
  sub_20BA6AB18(v17);
  v15 = v17[1];
  *a2 = v17[0];
  a2[1] = v15;
  a2[2] = v18[0];
  result = *(v18 + 10);
  *(a2 + 42) = *(v18 + 10);
  return result;
}

uint64_t sub_20BA6B364()
{

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

void sub_20BA6B3F4(void *a1, uint64_t a2, void *a3)
{
  if (a1)
  {
  }
}

void sub_20BA6B464(CGFloat a1)
{
  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0, &unk_20C14F960);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_20C151490;
  v4 = objc_opt_self();
  v5 = [v4 clearColor];
  v6 = [v5 CGColor];

  *(v3 + 32) = v6;
  v7 = [v4 blackColor];
  v8 = [v7 CGColor];

  *(v3 + 40) = v8;
  type metadata accessor for CGColor(0);
  v9 = DeviceRGB;
  v10 = sub_20C13CC54();

  v11 = CGGradientCreateWithColors(v9, v10, 0);

  if (v11)
  {
    v12 = UIGraphicsGetCurrentContext();
    if (v12)
    {
      v13 = v12;
      v15.x = 0.0;
      v16.x = 0.0;
      v15.y = a1 + -111.0;
      v16.y = a1;
      CGContextDrawLinearGradient(v13, v11, v15, v16, 0);
    }

    else
    {
    }
  }

  else
  {
    sub_20B659CD4();
    swift_allocError();
    *v14 = 2;
    swift_willThrow();
  }
}

void sub_20BA6B640(uint64_t a1, double a2, double a3)
{
  v6 = *MEMORY[0x277D74410];
  v7 = *MEMORY[0x277D74368];
  v8 = objc_opt_self();
  v9 = [v8 systemFontOfSize:30.0 weight:v6];
  v10 = [v9 fontDescriptor];
  v11 = [v10 fontDescriptorWithDesign_];
  if (v11)
  {
    v12 = v11;

    v10 = v12;
  }

  v13 = [v8 fontWithDescriptor:v10 size:0.0];

  [v13 ascender];
  v15 = v14;

  v16 = a3 + -14.0 - v15;
  v17 = [v8 systemFontOfSize:14.0 weight:v6];
  [v17 ascender];
  v19 = v18;

  v20 = v16 + -5.0 - v19;
  if (*a1)
  {
    v21 = *(a1 + 16);
    v22 = *a1;
    v23 = v21;
    [v22 size];
    [v22 drawInRect_];
    [v23 size];
    [v23 drawInRect_];
  }

  v28 = *(a1 + 32);
  if (v28)
  {
    v29 = *(a1 + 48);
    v30 = v28;
    v31 = v29;
    [(CGPath *)v30 size];
    [(CGPath *)v30 drawInRect:a2 * 0.6, v20, v32, v33];
    [(CGContext *)v31 size];
    [(CGContext *)v31 drawInRect:a2 * 0.6, v16, v34, v35];
    v36 = UIGraphicsGetCurrentContext();
    if (v36)
    {
      v37 = v36;
      Mutable = CGPathCreateMutable();
      sub_20C13D294();
      sub_20C13D2A4();
      CGPathCloseSubpath(Mutable);
      CGContextAddPath(v37, Mutable);
      v39 = [objc_opt_self() whiteColor];
      v40 = [v39 colorWithAlphaComponent_];

      v41 = [v40 CGColor];
      CGContextSetStrokeColorWithColor(v37, v41);

      CGContextSetLineWidth(v37, 2.0);
      CGContextSetLineCap(v37, kCGLineCapRound);
      CGContextStrokePath(v37);

      v31 = v37;
      v30 = Mutable;
    }
  }
}

uint64_t get_enum_tag_for_layout_string_9SeymourUI29CompletedWorkoutImageRendererC0D10MetricInfoVSg(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy58_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 42) = *(a2 + 42);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_20BA6BA24(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 58))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_20BA6BA80(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 58) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 58) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

__n128 __swift_memcpy26_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 10) = *(a2 + 10);
  *a1 = result;
  return result;
}

uint64_t sub_20BA6BB08(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 26))
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

uint64_t sub_20BA6BB50(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 26) = 1;
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

    *(result + 26) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

id sub_20BA6BBF0(unsigned int a1, double *a2, double a3, double a4, double a5, double a6)
{
  v10 = *a2;
  v92 = *MEMORY[0x277D74368];
  v11 = objc_opt_self();
  v12 = [v11 systemFontOfSize:a3 weight:v10];
  v13 = [v12 fontDescriptor];
  v14 = [v13 fontDescriptorWithSymbolicTraits_];
  if (v14)
  {
    v15 = v14;

    v13 = v15;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7731F0, &unk_20C159850);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20C14F980;
  v17 = *MEMORY[0x277D74380];
  *(inited + 32) = *MEMORY[0x277D74380];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C771970, &unk_20C1500C0);
  v18 = swift_initStackObject();
  v19 = MEMORY[0x277D74430];
  *(v18 + 16) = xmmword_20C14F980;
  v20 = *v19;
  *(v18 + 32) = *v19;
  *(v18 + 40) = v10;
  v21 = v17;
  v22 = v20;
  v23 = v21;
  v24 = v22;
  v25 = sub_20B6B134C(v18);
  swift_setDeallocating();
  sub_20B520158(v18 + 32, &unk_27C773200, qword_20C158A40);
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C771980, &qword_20C1500D0);
  *(inited + 64) = v91;
  *(inited + 40) = v25;
  sub_20B6B143C(inited);
  swift_setDeallocating();
  sub_20B520158(inited + 32, &qword_27C773210, &qword_20C159860);
  type metadata accessor for AttributeName(0);
  sub_20B5E5BD0();
  v26 = sub_20C13C744();

  v27 = [v13 fontDescriptorByAddingAttributes_];

  v28 = [v27 fontDescriptorWithDesign_];
  if (v28)
  {
    v29 = v28;

    v27 = v29;
  }

  v90 = [v11 fontWithDescriptor:v27 size:0.0];

  v30 = [v11 systemFontOfSize:a4 weight:v10];
  v31 = [v30 fontDescriptor];
  v32 = [v31 fontDescriptorWithSymbolicTraits_];
  if (v32)
  {
    v33 = v32;

    v31 = v33;
  }

  v34 = swift_initStackObject();
  *(v34 + 16) = xmmword_20C14F980;
  *(v34 + 32) = v23;
  v35 = swift_initStackObject();
  *(v35 + 16) = xmmword_20C14F980;
  *(v35 + 32) = v24;
  *(v35 + 40) = v10;
  v36 = v23;
  v37 = v24;
  v38 = sub_20B6B134C(v35);
  swift_setDeallocating();
  sub_20B520158(v35 + 32, &unk_27C773200, qword_20C158A40);
  *(v34 + 64) = v91;
  *(v34 + 40) = v38;
  sub_20B6B143C(v34);
  swift_setDeallocating();
  sub_20B520158(v34 + 32, &qword_27C773210, &qword_20C159860);
  v39 = sub_20C13C744();

  v40 = [v31 fontDescriptorByAddingAttributes_];

  v41 = [v40 fontDescriptorWithDesign_];
  if (v41)
  {
    v42 = v41;

    v40 = v42;
  }

  v89 = [v11 fontWithDescriptor:v40 size:0.0];

  v43 = [v11 systemFontOfSize:a5 weight:v10];
  v44 = [v43 fontDescriptor];
  v45 = [v44 fontDescriptorWithSymbolicTraits_];
  if (v45)
  {
    v46 = v45;

    v44 = v46;
  }

  v47 = swift_initStackObject();
  *(v47 + 16) = xmmword_20C14F980;
  *(v47 + 32) = v36;
  v48 = swift_initStackObject();
  *(v48 + 16) = xmmword_20C14F980;
  *(v48 + 32) = v37;
  *(v48 + 40) = v10;
  v49 = v36;
  v50 = v37;
  v51 = sub_20B6B134C(v48);
  swift_setDeallocating();
  sub_20B520158(v48 + 32, &unk_27C773200, qword_20C158A40);
  *(v47 + 64) = v91;
  *(v47 + 40) = v51;
  sub_20B6B143C(v47);
  swift_setDeallocating();
  sub_20B520158(v47 + 32, &qword_27C773210, &qword_20C159860);
  v52 = sub_20C13C744();

  v53 = [v44 fontDescriptorByAddingAttributes_];

  v54 = [v53 fontDescriptorWithDesign_];
  if (v54)
  {
    v55 = v54;

    v53 = v55;
  }

  v56 = [v11 fontWithDescriptor:v53 size:0.0];

  v57 = [v11 systemFontOfSize:a6 weight:v10];
  v58 = [v57 fontDescriptor];
  v59 = [v58 fontDescriptorWithSymbolicTraits_];
  if (v59)
  {
    v60 = v59;

    v58 = v60;
  }

  v61 = swift_initStackObject();
  *(v61 + 16) = xmmword_20C14F980;
  *(v61 + 32) = v49;
  v62 = swift_initStackObject();
  *(v62 + 16) = xmmword_20C14F980;
  *(v62 + 32) = v50;
  v63 = v62 + 32;
  *(v62 + 40) = v10;
  v64 = sub_20B6B134C(v62);
  swift_setDeallocating();
  sub_20B520158(v63, &unk_27C773200, qword_20C158A40);
  *(v61 + 64) = v91;
  *(v61 + 40) = v64;
  sub_20B6B143C(v61);
  swift_setDeallocating();
  sub_20B520158(v61 + 32, &qword_27C773210, &qword_20C159860);
  v65 = sub_20C13C744();

  v66 = [v58 fontDescriptorByAddingAttributes_];

  v67 = [v66 fontDescriptorWithDesign_];
  if (v67)
  {
    v68 = v67;

    v66 = v68;
  }

  v69 = [v11 fontWithDescriptor:v66 size:0.0];

  v70 = objc_opt_self();
  v71 = [v70 mainScreen];
  [v71 nativeBounds];
  v73 = v72;
  v75 = v74;
  v77 = v76;
  v79 = v78;

  v93.origin.x = v73;
  v93.origin.y = v75;
  v93.size.width = v77;
  v93.size.height = v79;
  Width = CGRectGetWidth(v93);
  v81 = [v70 mainScreen];
  [v81 nativeScale];
  v83 = v82;

  v84 = sub_20C138104();
  v85 = sub_20C138104();
  v86 = v69;
  if (v84 != v85)
  {
    v86 = v90;
    if (Width / v83 > 375.0)
    {
      if (Width / v83 >= 834.0)
      {
        v86 = v56;
      }

      else
      {
        v86 = v89;
      }
    }
  }

  v87 = v86;

  return v87;
}

Class sub_20BA6C50C(unsigned int a1)
{
  v1 = *MEMORY[0x277D74418];
  v84 = *MEMORY[0x277D74368];
  v2 = objc_opt_self();
  v3 = [v2 systemFontOfSize:30.0 weight:v1];
  v4 = [v3 fontDescriptor];
  v5 = [v4 fontDescriptorWithSymbolicTraits_];
  if (v5)
  {
    v6 = v5;

    v4 = v6;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7731F0, &unk_20C159850);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20C14F980;
  v8 = *MEMORY[0x277D74380];
  *(inited + 32) = *MEMORY[0x277D74380];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C771970, &unk_20C1500C0);
  v9 = swift_initStackObject();
  v10 = MEMORY[0x277D74430];
  *(v9 + 16) = xmmword_20C14F980;
  v11 = *v10;
  *(v9 + 32) = *v10;
  *(v9 + 40) = v1;
  v12 = v8;
  v13 = v11;
  v14 = v12;
  v15 = v13;
  v16 = sub_20B6B134C(v9);
  swift_setDeallocating();
  sub_20B520158(v9 + 32, &unk_27C773200, qword_20C158A40);
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C771980, &qword_20C1500D0);
  *(inited + 64) = v83;
  *(inited + 40) = v16;
  sub_20B6B143C(inited);
  swift_setDeallocating();
  sub_20B520158(inited + 32, &qword_27C773210, &qword_20C159860);
  type metadata accessor for AttributeName(0);
  sub_20B5E5BD0();
  v17 = sub_20C13C744();

  v18 = [v4 fontDescriptorByAddingAttributes_];

  v19 = [v18 fontDescriptorWithDesign_];
  if (v19)
  {
    v20 = v19;

    v18 = v20;
  }

  v82 = [v2 fontWithDescriptor:v18 size:0.0];

  v21 = [v2 systemFontOfSize:40.0 weight:v1];
  v22 = [v21 fontDescriptor];
  v23 = [v22 fontDescriptorWithSymbolicTraits_];
  if (v23)
  {
    v24 = v23;

    v22 = v24;
  }

  v25 = swift_initStackObject();
  *(v25 + 16) = xmmword_20C14F980;
  *(v25 + 32) = v14;
  v26 = swift_initStackObject();
  *(v26 + 16) = xmmword_20C14F980;
  *(v26 + 32) = v15;
  *(v26 + 40) = v1;
  v27 = v14;
  v28 = v15;
  v29 = sub_20B6B134C(v26);
  swift_setDeallocating();
  sub_20B520158(v26 + 32, &unk_27C773200, qword_20C158A40);
  *(v25 + 64) = v83;
  *(v25 + 40) = v29;
  sub_20B6B143C(v25);
  swift_setDeallocating();
  sub_20B520158(v25 + 32, &qword_27C773210, &qword_20C159860);
  v30 = sub_20C13C744();

  v31 = [v22 fontDescriptorByAddingAttributes_];

  v32 = [v31 fontDescriptorWithDesign_];
  if (v32)
  {
    v33 = v32;

    v31 = v33;
  }

  v81 = [v2 fontWithDescriptor:v31 size:0.0];

  v34 = [v2 systemFontOfSize:50.0 weight:v1];
  v35 = [v34 fontDescriptor];
  v36 = [v35 fontDescriptorWithSymbolicTraits_];
  if (v36)
  {
    v37 = v36;

    v35 = v37;
  }

  v38 = swift_initStackObject();
  *(v38 + 16) = xmmword_20C14F980;
  *(v38 + 32) = v27;
  v39 = swift_initStackObject();
  *(v39 + 16) = xmmword_20C14F980;
  *(v39 + 32) = v28;
  *(v39 + 40) = v1;
  v40 = v27;
  v41 = v28;
  v42 = sub_20B6B134C(v39);
  swift_setDeallocating();
  sub_20B520158(v39 + 32, &unk_27C773200, qword_20C158A40);
  *(v38 + 64) = v83;
  *(v38 + 40) = v42;
  sub_20B6B143C(v38);
  swift_setDeallocating();
  sub_20B520158(v38 + 32, &qword_27C773210, &qword_20C159860);
  v43 = sub_20C13C744();

  v44 = [v35 fontDescriptorByAddingAttributes_];

  v45 = [v44 fontDescriptorWithDesign_];
  if (v45)
  {
    v46 = v45;

    v44 = v46;
  }

  v47 = [v2 fontWithDescriptor:v44 size:0.0];

  v48 = [v2 systemFontOfSize:76.0 weight:v1];
  v49 = [v48 fontDescriptor];
  v50 = [v49 fontDescriptorWithSymbolicTraits_];
  if (v50)
  {
    v51 = v50;

    v49 = v51;
  }

  v52 = swift_initStackObject();
  *(v52 + 16) = xmmword_20C14F980;
  *(v52 + 32) = v40;
  v53 = swift_initStackObject();
  *(v53 + 16) = xmmword_20C14F980;
  *(v53 + 32) = v41;
  v54 = v53 + 32;
  *(v53 + 40) = v1;
  v55 = sub_20B6B134C(v53);
  swift_setDeallocating();
  sub_20B520158(v54, &unk_27C773200, qword_20C158A40);
  *(v52 + 64) = v83;
  *(v52 + 40) = v55;
  sub_20B6B143C(v52);
  swift_setDeallocating();
  sub_20B520158(v52 + 32, &qword_27C773210, &qword_20C159860);
  v56 = sub_20C13C744();

  v57 = [v49 fontDescriptorByAddingAttributes_];

  v58 = [v57 fontDescriptorWithDesign_];
  if (v58)
  {
    v59 = v58;

    v57 = v59;
  }

  v60 = [v2 fontWithDescriptor:v57 size:0.0];

  v61 = objc_opt_self();
  v62 = [v61 mainScreen];
  [v62 nativeBounds];
  v64 = v63;
  v66 = v65;
  v68 = v67;
  v70 = v69;

  v85.origin.x = v64;
  v85.origin.y = v66;
  v85.size.width = v68;
  v85.size.height = v70;
  Width = CGRectGetWidth(v85);
  v72 = [v61 mainScreen];
  [v72 nativeScale];
  v74 = v73;

  v75 = sub_20C138104();
  v76 = sub_20C138104();
  v77 = v60;
  if (v75 != v76)
  {
    v77 = v82;
    if (Width / v74 > 375.0)
    {
      if (Width / v74 >= 834.0)
      {
        v77 = v47;
      }

      else
      {
        v77 = v81;
      }
    }
  }

  v78 = v77;

  isa = UIFont.monospaced()().super.isa;
  return isa;
}

Class sub_20BA6CE30(unsigned int a1)
{
  v1 = *MEMORY[0x277D74410];
  v85 = *MEMORY[0x277D74368];
  v2 = objc_opt_self();
  v3 = [v2 systemFontOfSize:30.0 weight:v1];
  v4 = [v3 fontDescriptor];
  v5 = [v4 fontDescriptorWithSymbolicTraits_];
  if (v5)
  {
    v6 = v5;

    v4 = v6;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7731F0, &unk_20C159850);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20C14F980;
  v8 = *MEMORY[0x277D74380];
  *(inited + 32) = *MEMORY[0x277D74380];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C771970, &unk_20C1500C0);
  v9 = swift_initStackObject();
  v10 = MEMORY[0x277D74430];
  *(v9 + 16) = xmmword_20C14F980;
  v11 = *v10;
  *(v9 + 32) = *v10;
  *(v9 + 40) = v1;
  v12 = v8;
  v13 = v11;
  v14 = v12;
  v15 = v13;
  v16 = sub_20B6B134C(v9);
  swift_setDeallocating();
  sub_20B520158(v9 + 32, &unk_27C773200, qword_20C158A40);
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C771980, &qword_20C1500D0);
  *(inited + 64) = v84;
  *(inited + 40) = v16;
  sub_20B6B143C(inited);
  swift_setDeallocating();
  sub_20B520158(inited + 32, &qword_27C773210, &qword_20C159860);
  type metadata accessor for AttributeName(0);
  sub_20B5E5BD0();
  v17 = sub_20C13C744();

  v18 = [v4 fontDescriptorByAddingAttributes_];

  v19 = [v18 fontDescriptorWithDesign_];
  if (v19)
  {
    v20 = v19;

    v18 = v20;
  }

  v83 = [v2 fontWithDescriptor:v18 size:0.0];

  v21 = [v2 systemFontOfSize:40.0 weight:v1];
  v22 = [v21 fontDescriptor];
  v23 = [v22 fontDescriptorWithSymbolicTraits_];
  if (v23)
  {
    v24 = v23;

    v22 = v24;
  }

  v25 = swift_initStackObject();
  *(v25 + 16) = xmmword_20C14F980;
  *(v25 + 32) = v14;
  v26 = swift_initStackObject();
  *(v26 + 16) = xmmword_20C14F980;
  *(v26 + 32) = v15;
  *(v26 + 40) = v1;
  v27 = v14;
  v28 = v15;
  v29 = sub_20B6B134C(v26);
  swift_setDeallocating();
  sub_20B520158(v26 + 32, &unk_27C773200, qword_20C158A40);
  *(v25 + 64) = v84;
  *(v25 + 40) = v29;
  sub_20B6B143C(v25);
  swift_setDeallocating();
  sub_20B520158(v25 + 32, &qword_27C773210, &qword_20C159860);
  v30 = sub_20C13C744();

  v31 = [v22 fontDescriptorByAddingAttributes_];

  v32 = [v31 fontDescriptorWithDesign_];
  if (v32)
  {
    v33 = v32;

    v31 = v33;
  }

  v82 = [v2 fontWithDescriptor:v31 size:0.0];

  v34 = [v2 systemFontOfSize:50.0 weight:v1];
  v35 = [v34 fontDescriptor];
  v36 = [v35 fontDescriptorWithSymbolicTraits_];
  if (v36)
  {
    v37 = v36;

    v35 = v37;
  }

  v38 = swift_initStackObject();
  *(v38 + 16) = xmmword_20C14F980;
  *(v38 + 32) = v27;
  v39 = swift_initStackObject();
  *(v39 + 16) = xmmword_20C14F980;
  *(v39 + 32) = v28;
  *(v39 + 40) = v1;
  v40 = v27;
  v41 = v28;
  v42 = sub_20B6B134C(v39);
  swift_setDeallocating();
  sub_20B520158(v39 + 32, &unk_27C773200, qword_20C158A40);
  *(v38 + 64) = v84;
  *(v38 + 40) = v42;
  sub_20B6B143C(v38);
  swift_setDeallocating();
  sub_20B520158(v38 + 32, &qword_27C773210, &qword_20C159860);
  v43 = sub_20C13C744();

  v44 = [v35 fontDescriptorByAddingAttributes_];

  v45 = [v44 fontDescriptorWithDesign_];
  if (v45)
  {
    v46 = v45;

    v44 = v46;
  }

  v47 = [v2 fontWithDescriptor:v44 size:0.0];

  v48 = [v2 systemFontOfSize:76.0 weight:v1];
  v49 = [v48 fontDescriptor];
  v50 = [v49 fontDescriptorWithSymbolicTraits_];
  if (v50)
  {
    v51 = v50;

    v49 = v51;
  }

  v52 = swift_initStackObject();
  *(v52 + 16) = xmmword_20C14F980;
  *(v52 + 32) = v40;
  v53 = swift_initStackObject();
  *(v53 + 16) = xmmword_20C14F980;
  *(v53 + 32) = v41;
  v54 = v53 + 32;
  *(v53 + 40) = v1;
  v55 = sub_20B6B134C(v53);
  swift_setDeallocating();
  sub_20B520158(v54, &unk_27C773200, qword_20C158A40);
  *(v52 + 64) = v84;
  *(v52 + 40) = v55;
  sub_20B6B143C(v52);
  swift_setDeallocating();
  sub_20B520158(v52 + 32, &qword_27C773210, &qword_20C159860);
  v56 = sub_20C13C744();

  v57 = [v49 fontDescriptorByAddingAttributes_];

  v58 = [v57 fontDescriptorWithDesign_];
  if (v58)
  {
    v59 = v58;

    v57 = v59;
  }

  v60 = [v2 fontWithDescriptor:v57 size:0.0];

  v61 = objc_opt_self();
  v62 = [v61 mainScreen];
  [v62 nativeBounds];
  v64 = v63;
  v66 = v65;
  v68 = v67;
  v70 = v69;

  v86.origin.x = v64;
  v86.origin.y = v66;
  v86.size.width = v68;
  v86.size.height = v70;
  Width = CGRectGetWidth(v86);
  v72 = [v61 mainScreen];
  [v72 nativeScale];
  v74 = v73;

  v75 = sub_20C138104();
  v76 = sub_20C138104();
  v77 = v60;
  if (v75 != v76)
  {
    v77 = v83;
    if (Width / v74 > 375.0)
    {
      if (Width / v74 >= 834.0)
      {
        v77 = v47;
      }

      else
      {
        v77 = v82;
      }
    }
  }

  v78 = v77;

  isa = UIFont.centeredColonsVersion()().super.isa;
  v80 = UIFont.monospaced()().super.isa;

  return v80;
}

char *sub_20BA6D748(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  *&v4[OBJC_IVAR____TtC9SeymourUI23ProgramDetailHeaderCell_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v4[OBJC_IVAR____TtC9SeymourUI23ProgramDetailHeaderCell_isMinFontPreferred] = 0;
  v10 = OBJC_IVAR____TtC9SeymourUI23ProgramDetailHeaderCell_itemInfo;
  v11 = type metadata accessor for ShelfCellItemInfo(0);
  (*(*(v11 - 8) + 56))(&v5[v10], 1, 1, v11);
  v12 = &v5[OBJC_IVAR____TtC9SeymourUI23ProgramDetailHeaderCell_layout];
  *v12 = xmmword_20C156A10;
  v12[1] = xmmword_20C169530;
  v13 = &v5[OBJC_IVAR____TtC9SeymourUI23ProgramDetailHeaderCell_artworkView];
  v14 = [objc_allocWithZone(type metadata accessor for ArtworkView(0)) initWithFrame_];
  [v14 setTranslatesAutoresizingMaskIntoConstraints_];
  *v13 = v14;
  v13[1] = &off_2822B63E8;
  v15 = OBJC_IVAR____TtC9SeymourUI23ProgramDetailHeaderCell_contentLayoutGuide;
  *&v5[v15] = [objc_allocWithZone(MEMORY[0x277D756D0]) init];
  v16 = OBJC_IVAR____TtC9SeymourUI23ProgramDetailHeaderCell_vibrantShadowView;
  v17 = [objc_allocWithZone(type metadata accessor for VibrantShadowView()) initWithFrame_];
  [v17 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v5[v16] = v17;
  v18 = OBJC_IVAR____TtC9SeymourUI23ProgramDetailHeaderCell_textContainer;
  v19 = [objc_allocWithZone(MEMORY[0x277D75D18]) initWithFrame_];
  [v19 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v5[v18] = v19;
  v20 = OBJC_IVAR____TtC9SeymourUI23ProgramDetailHeaderCell_titleLabel;
  v21 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  [v21 setTranslatesAutoresizingMaskIntoConstraints_];
  [v21 setLineBreakMode_];
  [v21 setNumberOfLines_];
  [v21 setAllowsDefaultTighteningForTruncation_];
  *&v5[v20] = v21;
  v22 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  [v22 setTranslatesAutoresizingMaskIntoConstraints_];
  v23 = *MEMORY[0x277D74368];
  v24 = *MEMORY[0x277D74418];
  v25 = [objc_opt_self() preferredFontDescriptorWithTextStyle:*MEMORY[0x277D76A20] compatibleWithTraitCollection:0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7731F0, &unk_20C159850);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20C14F980;
  v27 = *MEMORY[0x277D74380];
  *(inited + 32) = *MEMORY[0x277D74380];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C771970, &unk_20C1500C0);
  v28 = swift_initStackObject();
  v29 = MEMORY[0x277D74430];
  *(v28 + 16) = xmmword_20C14F980;
  v30 = *v29;
  *(v28 + 32) = *v29;
  *(v28 + 40) = v24;
  v31 = v27;
  v32 = v30;
  v33 = sub_20B6B134C(v28);
  swift_setDeallocating();
  sub_20B520158(v28 + 32, &unk_27C773200, qword_20C158A40);
  *(inited + 64) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C771980, &qword_20C1500D0);
  *(inited + 40) = v33;
  sub_20B6B143C(inited);
  swift_setDeallocating();
  sub_20B520158(inited + 32, &qword_27C773210, &qword_20C159860);
  type metadata accessor for AttributeName(0);
  sub_20B5E5BD0();
  v34 = sub_20C13C744();

  v35 = [v25 fontDescriptorByAddingAttributes_];

  v36 = [v35 fontDescriptorWithDesign_];
  if (v36)
  {
    v37 = v36;

    v35 = v37;
  }

  v38 = OBJC_IVAR____TtC9SeymourUI23ProgramDetailHeaderCell_subtitleLabel;
  v39 = [objc_opt_self() fontWithDescriptor:v35 size:0.0];

  [v22 setFont_];
  [v22 setAllowsDefaultTighteningForTruncation_];
  *&v5[v38] = v22;
  v40 = OBJC_IVAR____TtC9SeymourUI23ProgramDetailHeaderCell_previewButtonPlatter;
  v41 = [objc_opt_self() effectWithStyle_];
  v42 = [objc_allocWithZone(MEMORY[0x277D75D68]) initWithEffect_];

  v43 = v42;
  [v43 setTranslatesAutoresizingMaskIntoConstraints_];
  [v43 setClipsToBounds_];
  v44 = [v43 layer];
  [v44 setCornerRadius_];

  [v43 setClipsToBounds_];
  *&v5[v40] = v43;
  v45 = OBJC_IVAR____TtC9SeymourUI23ProgramDetailHeaderCell_previewButton;
  v46 = objc_opt_self();
  v47 = [v46 whiteColor];
  type metadata accessor for RoundedButton();
  v48 = [swift_getObjCClassFromMetadata() buttonWithType_];
  [v48 setTitle:0 forState:0];
  v49 = v48;
  v50 = [v49 titleLabel];
  [v50 setAdjustsFontForContentSizeCategory_];

  sub_20BD4F054(0, 0, 1, 0);
  [v49 setTintColor_];

  v51 = [v46 clearColor];
  [v49 setBackgroundColor_];

  [v49 setTranslatesAutoresizingMaskIntoConstraints_];
  v52 = v49;
  v53 = [v52 titleLabel];
  [v53 setAdjustsFontForContentSizeCategory_];

  *&v5[v45] = v52;
  *&v5[OBJC_IVAR____TtC9SeymourUI23ProgramDetailHeaderCell_contentLayoutGuideLeftConstraint] = 0;
  *&v5[OBJC_IVAR____TtC9SeymourUI23ProgramDetailHeaderCell_contentLayoutGuideTopConstraint] = 0;
  *&v5[OBJC_IVAR____TtC9SeymourUI23ProgramDetailHeaderCell_contentLayoutGuideWidthConstraint] = 0;
  v54 = &v5[OBJC_IVAR____TtC9SeymourUI23ProgramDetailHeaderCell_currentContainerSize];
  *v54 = 0;
  v54[1] = 0;
  v5[OBJC_IVAR____TtC9SeymourUI23ProgramDetailHeaderCell_currentLayout] = 4;
  *&v5[OBJC_IVAR____TtC9SeymourUI23ProgramDetailHeaderCell_oldWidth] = 0;
  *&v5[OBJC_IVAR____TtC9SeymourUI23ProgramDetailHeaderCell_previewButtonRightConstraint] = 0;
  *&v5[OBJC_IVAR____TtC9SeymourUI23ProgramDetailHeaderCell_previewButtonWidthConstraint] = 0;
  v73.receiver = v5;
  v73.super_class = type metadata accessor for ProgramDetailHeaderCell(0);
  v55 = objc_msgSendSuper2(&v73, sel_initWithFrame_, a1, a2, a3, a4);
  v56 = OBJC_IVAR____TtC9SeymourUI23ProgramDetailHeaderCell_previewButton;
  v57 = *&v55[OBJC_IVAR____TtC9SeymourUI23ProgramDetailHeaderCell_previewButton];
  v58 = v55;
  [v57 addTarget:v58 action:sel_playButtonTapped_ forControlEvents:64];
  v59 = &v58[OBJC_IVAR____TtC9SeymourUI23ProgramDetailHeaderCell_artworkView];
  v60 = *&v58[OBJC_IVAR____TtC9SeymourUI23ProgramDetailHeaderCell_artworkView];
  v61 = *&v58[OBJC_IVAR____TtC9SeymourUI23ProgramDetailHeaderCell_artworkView + 8];
  ObjectType = swift_getObjectType();
  v63 = *(v61 + 288);
  v64 = v60;
  v63(2, ObjectType, v61);

  v65 = [v58 contentView];
  [v65 addSubview_];

  v66 = [v58 contentView];
  [v66 addSubview_];

  v67 = [v58 contentView];
  v68 = OBJC_IVAR____TtC9SeymourUI23ProgramDetailHeaderCell_textContainer;
  [v67 addSubview_];

  [*&v58[v68] addSubview_];
  [*&v58[v68] addSubview_];
  v69 = [v58 contentView];
  [v69 addSubview_];

  v70 = [v58 contentView];
  [v70 addSubview_];

  v71 = [v58 contentView];
  [v71 addLayoutGuide_];

  sub_20BA6E64C();
  return v58;
}

id sub_20BA6E1CC()
{
  v1 = OBJC_IVAR____TtC9SeymourUI23ProgramDetailHeaderCell_oldWidth;
  v2 = *&v0[OBJC_IVAR____TtC9SeymourUI23ProgramDetailHeaderCell_oldWidth];
  [v0 bounds];
  if (v2 != CGRectGetWidth(v12))
  {
    [v0 bounds];
    *&v0[v1] = CGRectGetWidth(v13);
    v3 = [v0 window];
    if (v3)
    {
      v4 = v3;
      [v3 bounds];
      v6 = v5;
      v8 = v7;
      v9 = [v0 traitCollection];
      sub_20BA7231C(v6, v8);
    }
  }

  v11.receiver = v0;
  v11.super_class = type metadata accessor for ProgramDetailHeaderCell(0);
  return objc_msgSendSuper2(&v11, sel_layoutSubviews);
}

void sub_20BA6E4A8(void *a1)
{
  v2 = v1;
  v15.receiver = v2;
  v15.super_class = type metadata accessor for ProgramDetailHeaderCell(0);
  objc_msgSendSuper2(&v15, sel_traitCollectionDidChange_, a1);
  v4 = [v2 traitCollection];
  v5 = v4;
  if (!a1)
  {
    if (!v4)
    {
      return;
    }

    goto LABEL_7;
  }

  if (!v4 || (sub_20B51C88C(0, &qword_27C7655A0, 0x277D75C80), v6 = a1, v7 = sub_20C13D5F4(), v6, v5, (v7 & 1) == 0))
  {
LABEL_7:
    v8 = [v2 window];
    if (v8)
    {
      v9 = v8;
      [v8 bounds];
      v11 = v10;
      v13 = v12;
      v14 = [v2 traitCollection];
      sub_20BA7231C(v11, v13);
    }
  }
}

void sub_20BA6E64C()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC9SeymourUI23ProgramDetailHeaderCell_artworkView];
  v3 = [v0 contentView];
  v4 = *MEMORY[0x277D768C8];
  v5 = *(MEMORY[0x277D768C8] + 8);
  v7 = *(MEMORY[0x277D768C8] + 16);
  v6 = *(MEMORY[0x277D768C8] + 24);
  v8 = [v2 leadingAnchor];
  v9 = [v3 leadingAnchor];
  v10 = [v8 constraintEqualToAnchor:v9 constant:v5];

  LODWORD(v11) = 1148846080;
  [v10 setPriority_];
  v12 = v10;
  v13 = [v2 trailingAnchor];
  v14 = [v3 trailingAnchor];
  v15 = -v6;
  v16 = [v13 constraintEqualToAnchor:v14 constant:v15];

  LODWORD(v17) = 1148846080;
  [v16 setPriority_];
  v18 = v16;
  v19 = [v2 topAnchor];
  v20 = [v3 &selRef_setLineBreakMode_];
  v21 = [v19 constraintEqualToAnchor:v20 constant:v4];

  LODWORD(v22) = 1148846080;
  [v21 setPriority_];
  v23 = [v2 bottomAnchor];
  v24 = [v3 &selRef_secondaryLabel + 5];
  v25 = -v7;
  v26 = [v23 constraintEqualToAnchor:v24 constant:v25];

  LODWORD(v27) = 1148846080;
  [v26 setPriority_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0, &unk_20C14F960);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_20C14FE90;
  *(v28 + 32) = v12;
  *(v28 + 40) = v18;
  *(v28 + 48) = v21;
  *(v28 + 56) = v26;
  v176 = v28;
  v29 = v21;

  v177 = *&v1[OBJC_IVAR____TtC9SeymourUI23ProgramDetailHeaderCell_contentLayoutGuide];
  v30 = [v177 leftAnchor];
  v31 = [v1 contentView];
  v32 = [v31 leftAnchor];

  v33 = [v30 constraintEqualToAnchor_];
  v178 = OBJC_IVAR____TtC9SeymourUI23ProgramDetailHeaderCell_contentLayoutGuideLeftConstraint;
  v34 = *&v1[OBJC_IVAR____TtC9SeymourUI23ProgramDetailHeaderCell_contentLayoutGuideLeftConstraint];
  *&v1[OBJC_IVAR____TtC9SeymourUI23ProgramDetailHeaderCell_contentLayoutGuideLeftConstraint] = v33;

  v35 = *&v1[OBJC_IVAR____TtC9SeymourUI23ProgramDetailHeaderCell_textContainer];
  v36 = [v1 contentView];
  v37 = [v35 leadingAnchor];
  v38 = [v36 leadingAnchor];
  v39 = [v37 constraintEqualToAnchor:v38 constant:v5];

  LODWORD(v40) = 1148846080;
  [v39 setPriority_];
  v41 = v39;
  v42 = [v35 trailingAnchor];
  v43 = [v36 trailingAnchor];
  v44 = [v42 constraintEqualToAnchor:v43 constant:v15];

  LODWORD(v45) = 1148846080;
  [v44 setPriority_];
  v46 = v44;
  v47 = [v35 topAnchor];
  v48 = [v36 topAnchor];
  v49 = [v47 &selRef_passwordEntryCancelledHandler + 6];

  LODWORD(v50) = 1148846080;
  [v49 &selRef_meterUnit];
  v51 = [v35 bottomAnchor];
  v52 = [v36 bottomAnchor];
  v53 = [v51 &selRef_passwordEntryCancelledHandler + 6];

  LODWORD(v54) = 1148846080;
  [v53 &selRef_meterUnit];
  v55 = swift_allocObject();
  *(v55 + 16) = xmmword_20C14FE90;
  *(v55 + 32) = v41;
  *(v55 + 40) = v46;
  *(v55 + 48) = v49;
  *(v55 + 56) = v53;
  v56 = v49;

  v57 = [v177 topAnchor];
  v58 = [v1 contentView];
  v59 = [v58 safeAreaLayoutGuide];

  v60 = [v59 topAnchor];
  v61 = [v57 &selRef_passwordEntryCancelledHandler + 6];

  v62 = OBJC_IVAR____TtC9SeymourUI23ProgramDetailHeaderCell_contentLayoutGuideTopConstraint;
  v63 = *&v1[OBJC_IVAR____TtC9SeymourUI23ProgramDetailHeaderCell_contentLayoutGuideTopConstraint];
  *&v1[OBJC_IVAR____TtC9SeymourUI23ProgramDetailHeaderCell_contentLayoutGuideTopConstraint] = v61;

  v64 = *&v1[v62];
  v183 = *&v1[v178];
  v184 = v64;
  v65 = v64;
  v66 = v183;
  v67 = [v177 bottomAnchor];
  v68 = [v1 contentView];
  v69 = [v68 bottomAnchor];

  v70 = [v67 &selRef_passwordEntryCancelledHandler + 6];
  v71 = 0;
  v185 = v70;
  v181 = MEMORY[0x277D84F90];
  v179 = MEMORY[0x277D84F90];
  v72 = MEMORY[0x277D84F90];
LABEL_2:
  if (v71 <= 3)
  {
    v73 = 3;
  }

  else
  {
    v73 = v71;
  }

  while (v71 != 3)
  {
    if (v73 == v71)
    {
      __break(1u);
LABEL_23:
      __break(1u);
      return;
    }

    v74 = v182[v71++ + 4];
    if (v74)
    {
      v75 = v74;
      MEMORY[0x20F2F43B0]();
      if (*((v181 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v181 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_20C13CCA4();
      }

      sub_20C13CCE4();
      v72 = v181;
      goto LABEL_2;
    }
  }

  v173 = v72;
  v174 = v55;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765390, &unk_20C15C380);
  swift_arrayDestroy();
  v76 = swift_allocObject();
  *(v76 + 16) = xmmword_20C150040;
  v77 = *&v1[OBJC_IVAR____TtC9SeymourUI23ProgramDetailHeaderCell_titleLabel];
  v78 = [v77 leftAnchor];
  v79 = [v177 leftAnchor];
  v80 = [v78 constraintEqualToAnchor_];

  *(v76 + 32) = v80;
  v81 = [v77 rightAnchor];
  v82 = [v177 rightAnchor];
  v83 = [v81 &selRef:v82 alertControllerReleasedDictationButton:? + 5];

  *(v76 + 40) = v83;
  v84 = [v77 topAnchor];
  v85 = [v177 topAnchor];
  v86 = [v84 &selRef:v85 alertControllerReleasedDictationButton:? + 5];

  v172 = v76;
  *(v76 + 48) = v86;
  v87 = swift_allocObject();
  *(v87 + 16) = xmmword_20C150040;
  v88 = *&v1[OBJC_IVAR____TtC9SeymourUI23ProgramDetailHeaderCell_subtitleLabel];
  v89 = [v88 leftAnchor];
  v90 = [v177 leftAnchor];
  v91 = [v89 &selRef:v90 alertControllerReleasedDictationButton:? + 5];

  *(v87 + 32) = v91;
  v92 = [v88 widthAnchor];
  v93 = [v77 widthAnchor];
  v94 = [v92 &selRef:v93 alertControllerReleasedDictationButton:? + 5];

  *(v87 + 40) = v94;
  v95 = [v88 topAnchor];
  v96 = [v77 bottomAnchor];
  v97 = [v95 &selRef:v96 alertControllerReleasedDictationButton:? + 5];

  v175 = v87;
  *(v87 + 48) = v97;
  v98 = *&v1[OBJC_IVAR____TtC9SeymourUI23ProgramDetailHeaderCell_previewButton];
  v99 = [v98 rightAnchor];
  v100 = [v1 contentView];
  v101 = [v100 rightAnchor];

  v102 = [v99 &selRef:v101 alertControllerReleasedDictationButton:? + 5];
  v103 = OBJC_IVAR____TtC9SeymourUI23ProgramDetailHeaderCell_previewButtonRightConstraint;
  v104 = *&v1[OBJC_IVAR____TtC9SeymourUI23ProgramDetailHeaderCell_previewButtonRightConstraint];
  *&v1[OBJC_IVAR____TtC9SeymourUI23ProgramDetailHeaderCell_previewButtonRightConstraint] = v102;

  v105 = [v98 widthAnchor];
  v106 = [v105 constraintEqualToConstant_];

  v107 = OBJC_IVAR____TtC9SeymourUI23ProgramDetailHeaderCell_previewButtonWidthConstraint;
  v108 = *&v1[OBJC_IVAR____TtC9SeymourUI23ProgramDetailHeaderCell_previewButtonWidthConstraint];
  *&v1[OBJC_IVAR____TtC9SeymourUI23ProgramDetailHeaderCell_previewButtonWidthConstraint] = v106;

  v109 = [v98 leftAnchor];
  v110 = [v177 leftAnchor];
  v111 = [v109 &selRef:v110 alertControllerReleasedDictationButton:? + 5];

  v180[4] = v111;
  v112 = [v98 rightAnchor];
  v113 = [v1 contentView];
  v114 = [v113 rightAnchor];

  v115 = [v112 constraintLessThanOrEqualToAnchor_];
  v116 = *&v1[v103];
  v180[5] = v115;
  v180[6] = v116;
  v117 = v116;
  v118 = [v98 bottomAnchor];
  v119 = [v177 bottomAnchor];
  v120 = [v118 &selRef:v119 alertControllerReleasedDictationButton:? + 5];

  v121 = *&v1[v107];
  v180[7] = v120;
  v180[8] = v121;
  v181 = MEMORY[0x277D84F90];
  v122 = v121;
  v123 = 0;
LABEL_12:
  if (v123 <= 5)
  {
    v124 = 5;
  }

  else
  {
    v124 = v123;
  }

  while (v123 != 5)
  {
    if (v124 == v123)
    {
      goto LABEL_23;
    }

    v125 = v180[v123++ + 4];
    if (v125)
    {
      v126 = v125;
      MEMORY[0x20F2F43B0]();
      if (*((v181 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v181 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_20C13CCA4();
      }

      sub_20C13CCE4();
      v179 = v181;
      goto LABEL_12;
    }
  }

  swift_arrayDestroy();
  v127 = *&v1[OBJC_IVAR____TtC9SeymourUI23ProgramDetailHeaderCell_previewButtonPlatter];
  v128 = [v127 leadingAnchor];
  v129 = [v98 leadingAnchor];
  v130 = [v128 constraintEqualToAnchor:v129 constant:v5];

  LODWORD(v131) = 1148846080;
  [v130 setPriority_];
  v132 = v130;
  v133 = [v127 trailingAnchor];
  v134 = [v98 trailingAnchor];
  v135 = [v133 constraintEqualToAnchor:v134 constant:v15];

  LODWORD(v136) = 1148846080;
  [v135 setPriority_];
  v137 = v135;
  v138 = [v127 topAnchor];
  v139 = [v98 &selRef_setLineBreakMode_];
  v140 = [v138 constraintEqualToAnchor:v139 constant:v4];

  LODWORD(v141) = 1148846080;
  [v140 setPriority_];
  v142 = [v127 bottomAnchor];
  v143 = [v98 &selRef_secondaryLabel + 5];
  v144 = [v142 constraintEqualToAnchor:v143 constant:v25];

  LODWORD(v145) = 1148846080;
  [v144 setPriority_];
  v146 = swift_allocObject();
  *(v146 + 16) = xmmword_20C14FE90;
  *(v146 + 32) = v132;
  *(v146 + 40) = v137;
  *(v146 + 48) = v140;
  *(v146 + 56) = v144;

  v147 = *&v1[OBJC_IVAR____TtC9SeymourUI23ProgramDetailHeaderCell_vibrantShadowView];
  v148 = [v1 contentView];
  v149 = [v147 leadingAnchor];
  v150 = [v148 leadingAnchor];
  v151 = [v149 constraintEqualToAnchor:v150 constant:v5];

  LODWORD(v152) = 1148846080;
  [v151 setPriority_];
  v153 = v151;
  v154 = [v147 trailingAnchor];
  v155 = [v148 trailingAnchor];
  v156 = [v154 &selRef_passwordEntryCancelledHandler + 6];

  LODWORD(v157) = 1148846080;
  [v156 setPriority_];
  v158 = v156;
  v159 = [v147 topAnchor];
  v160 = [v148 topAnchor];
  v161 = [v159 &selRef_passwordEntryCancelledHandler + 6];

  LODWORD(v162) = 1148846080;
  [v161 setPriority_];
  v163 = [v147 bottomAnchor];
  v164 = [v148 bottomAnchor];
  v165 = [v163 &selRef_passwordEntryCancelledHandler + 6];

  LODWORD(v166) = 1148846080;
  [v165 setPriority_];
  v167 = swift_allocObject();
  *(v167 + 16) = xmmword_20C14FE90;
  *(v167 + 32) = v153;
  *(v167 + 40) = v158;
  *(v167 + 48) = v161;
  *(v167 + 56) = v165;
  v168 = v161;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768260, &unk_20C1569E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20C150DC0;
  *(inited + 32) = v176;
  *(inited + 40) = v174;
  *(inited + 48) = v173;
  *(inited + 56) = v172;
  *(inited + 64) = v175;
  *(inited + 72) = v179;
  *(inited + 80) = v146;
  *(inited + 88) = v167;
  v170 = objc_opt_self();
  sub_20BE54D20(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7677E0, &unk_20C15AA30);
  swift_arrayDestroy();
  sub_20B51C88C(0, &qword_281100500, 0x277CCAAD0);
  v171 = sub_20C13CC54();

  [v170 activateConstraints_];
}

void sub_20BA6F930(unsigned __int8 a1, double a2, double a3)
{
  v4 = v3;
  v6 = &v4[OBJC_IVAR____TtC9SeymourUI23ProgramDetailHeaderCell_currentContainerSize];
  *v6 = a2;
  v6[1] = a3;
  v4[OBJC_IVAR____TtC9SeymourUI23ProgramDetailHeaderCell_currentLayout] = a1;
  v64 = *&v4[OBJC_IVAR____TtC9SeymourUI23ProgramDetailHeaderCell_subtitleLabel];
  v62 = [v4 traitCollection];
  if (qword_27C7606A0 != -1)
  {
    swift_once();
  }

  *&v132[16] = xmmword_27C7633D8;
  *&v132[32] = unk_27C7633E8;
  v133 = unk_27C7633F8;
  v129 = xmmword_27C763398;
  v130 = *&qword_27C7633A8;
  v131 = xmmword_27C7633B8;
  *v132 = *&qword_27C7633C8;
  v135 = unk_27C763418;
  v134 = unk_27C763408;
  v138 = *&qword_27C763468;
  *&v137[32] = xmmword_27C763458;
  *&v137[16] = *&qword_27C763448;
  v136 = *&qword_27C763428;
  *v137 = xmmword_27C763438;
  v140 = *&qword_27C763488;
  v139 = xmmword_27C763478;
  v143 = unk_27C7634D8;
  *&v142[32] = *(&xmmword_27C7634C0 + 8);
  *&v142[16] = *(&xmmword_27C7634B0 + 8);
  v141 = xmmword_27C763498;
  *v142 = *&qword_27C7634A8;
  v144 = unk_27C7634E8;
  v145 = unk_27C7634F8;
  *&v147[32] = *(&xmmword_27C763530 + 8);
  v148 = unk_27C763548;
  *v147 = xmmword_27C763518;
  *&v147[16] = unk_27C763528;
  v146 = *&qword_27C763508;
  v66 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v58 = *&v142[8];
      v60 = *&v142[24];
      v54 = *(&v143 + 1);
      v56 = v143;
      v52 = *&v142[40];
      v7 = *v142;
      v8 = v141;
      v9 = BYTE8(v141);
      v10 = BYTE13(v140);
      v11 = DWORD2(v140);
      v12 = BYTE12(v140);
      v13 = v140;
      v14 = *(&v139 + 1);
      v15 = v139;
      v16 = &v139;
    }

    else
    {
      v58 = *&v147[8];
      v60 = *&v147[24];
      v54 = *(&v148 + 1);
      v56 = v148;
      v52 = *&v147[40];
      v7 = *v147;
      v8 = v146;
      v9 = BYTE8(v146);
      v10 = BYTE13(v145);
      v11 = DWORD2(v145);
      v12 = BYTE12(v145);
      v14 = *(&v144 + 1);
      v13 = v145;
      v15 = v144;
      v16 = &v144;
    }
  }

  else if (a1)
  {
    v58 = *&v137[8];
    v60 = *&v137[24];
    v54 = *(&v138 + 1);
    v56 = v138;
    v52 = *&v137[40];
    v7 = *v137;
    v8 = v136;
    v9 = BYTE8(v136);
    v10 = BYTE13(v135);
    v11 = DWORD2(v135);
    v12 = BYTE12(v135);
    v13 = v135;
    v14 = *(&v134 + 1);
    v15 = v134;
    v16 = &v134;
  }

  else
  {
    v58 = *&v132[8];
    v60 = *&v132[24];
    v54 = *(&v133 + 1);
    v56 = v133;
    v52 = *&v132[40];
    v7 = *v132;
    v8 = v131;
    v9 = BYTE8(v131);
    v10 = BYTE13(v130);
    v11 = DWORD2(v130);
    v12 = BYTE12(v130);
    v13 = v130;
    v14 = *(&v129 + 1);
    v15 = v129;
    v16 = &v129;
  }

  sub_20B7B07E8(v16, &v108);
  v80 = v12;
  v79 = v9;
  v120 = v15;
  v121 = v14;
  v122 = v13;
  v123 = v11;
  v124 = v12;
  v125 = v10;
  v126 = v8;
  v127 = v9;
  v128 = v7;
  v81[0] = v15;
  v81[1] = v14;
  v81[2] = v13;
  v82 = v11;
  v83 = v12;
  v84 = v10;
  v85 = v8;
  v86 = v9;
  v89 = v60;
  v88 = v58;
  v87 = v7;
  v90 = v52;
  v91 = v56;
  v92 = v54;
  v17 = sub_20B7C6A74(v62);
  sub_20B7B0844(v81);

  [v64 setFont_];
  [v64 setNumberOfLines_];
  v65 = *&v4[OBJC_IVAR____TtC9SeymourUI23ProgramDetailHeaderCell_titleLabel];
  v63 = [v4 traitCollection];
  if (qword_27C7606A8 != -1)
  {
    swift_once();
  }

  *&v96[16] = xmmword_27C763598;
  *&v96[32] = unk_27C7635A8;
  v97 = unk_27C7635B8;
  v98 = unk_27C7635C8;
  v93 = xmmword_27C763558;
  v94 = *&qword_27C763568;
  v95 = xmmword_27C763578;
  *v96 = *&qword_27C763588;
  v99 = unk_27C7635D8;
  v100 = *&qword_27C7635E8;
  *&v101[32] = xmmword_27C763618;
  v102 = *&qword_27C763628;
  *v101 = xmmword_27C7635F8;
  *&v101[16] = *&qword_27C763608;
  v103 = xmmword_27C763638;
  v104 = *&qword_27C763648;
  *&v106[32] = *(&xmmword_27C763680 + 8);
  v107 = unk_27C763698;
  *v106 = *&qword_27C763668;
  *&v106[16] = *(&xmmword_27C763670 + 8);
  v105 = xmmword_27C763658;
  v108 = unk_27C7636A8;
  v109 = unk_27C7636B8;
  *&v111[32] = *(&xmmword_27C7636F0 + 8);
  v112 = unk_27C763708;
  *v111 = xmmword_27C7636D8;
  *&v111[16] = unk_27C7636E8;
  v110 = *&qword_27C7636C8;
  if (v66 > 1u)
  {
    if (v66 == 2)
    {
      v59 = *&v106[8];
      v61 = *&v106[24];
      v55 = *(&v107 + 1);
      v57 = v107;
      v53 = *&v106[40];
      v18 = *v106;
      v19 = v105;
      v20 = BYTE8(v105);
      v21 = BYTE13(v104);
      v22 = DWORD2(v104);
      v23 = BYTE12(v104);
      v24 = v104;
      v25 = *(&v103 + 1);
      v26 = v103;
      v27 = &v103;
    }

    else
    {
      v59 = *&v111[8];
      v61 = *&v111[24];
      v55 = *(&v112 + 1);
      v57 = v112;
      v53 = *&v111[40];
      v18 = *v111;
      v19 = v110;
      v20 = BYTE8(v110);
      v21 = BYTE13(v109);
      v22 = DWORD2(v109);
      v23 = BYTE12(v109);
      v24 = v109;
      v25 = *(&v108 + 1);
      v26 = v108;
      v27 = &v108;
    }
  }

  else if (v66)
  {
    v59 = *&v101[8];
    v61 = *&v101[24];
    v55 = *(&v102 + 1);
    v57 = v102;
    v53 = *&v101[40];
    v18 = *v101;
    v19 = v100;
    v20 = BYTE8(v100);
    v21 = BYTE13(v99);
    v22 = DWORD2(v99);
    v23 = BYTE12(v99);
    v25 = *(&v98 + 1);
    v24 = v99;
    v26 = v98;
    v27 = &v98;
  }

  else
  {
    v59 = *&v96[8];
    v61 = *&v96[24];
    v55 = *(&v97 + 1);
    v57 = v97;
    v53 = *&v96[40];
    v18 = *v96;
    v19 = v95;
    v20 = BYTE8(v95);
    v21 = BYTE13(v94);
    v22 = DWORD2(v94);
    v23 = BYTE12(v94);
    v25 = *(&v93 + 1);
    v24 = v94;
    v26 = v93;
    v27 = &v93;
  }

  sub_20B7B07E8(v27, v67);
  v113[5] = v26;
  v113[6] = v25;
  v113[7] = v24;
  v114 = v22;
  v115 = v23;
  v116 = v21;
  v117 = v19;
  v118 = v20;
  v119 = v18;
  v67[0] = v26;
  v67[1] = v25;
  v67[2] = v24;
  v68 = v22;
  v69 = v23;
  v70 = v21;
  v71 = v19;
  v72 = v20;
  v73 = v18;
  v74 = v59;
  v75 = v61;
  v76 = v53;
  v77 = v57;
  v78 = v55;
  v28 = sub_20B7C6A74(v63);
  sub_20B7B0844(v67);

  [v65 setFont_];
  [v65 setNumberOfLines_];
  [v4 bounds];
  sub_20B755B8C(v113, v29);
  sub_20B5F320C(v113);
  v30 = *v113;
  v31 = *&v4[OBJC_IVAR____TtC9SeymourUI23ProgramDetailHeaderCell_contentLayoutGuideLeftConstraint];
  if (v31)
  {
    v32 = v31;
    [v4 effectiveUserInterfaceLayoutDirection];
    [v32 setConstant_];
  }

  v33 = OBJC_IVAR____TtC9SeymourUI23ProgramDetailHeaderCell_previewButtonRightConstraint;
  v34 = *&v4[OBJC_IVAR____TtC9SeymourUI23ProgramDetailHeaderCell_previewButtonRightConstraint];
  if (v34)
  {
    [v34 setActive_];
    v35 = *&v4[v33];
    if (v35)
    {
      v36 = v35;
      [v4 effectiveUserInterfaceLayoutDirection];
      [v36 setConstant_];
    }
  }

  v37 = *&v4[OBJC_IVAR____TtC9SeymourUI23ProgramDetailHeaderCell_previewButtonWidthConstraint];
  if (v37)
  {
    [v37 setActive_];
  }

  if ((v66 & 0xFE) != 0)
  {
    v38 = 0.45;
  }

  else
  {
    v38 = 0.5;
  }

  v39 = OBJC_IVAR____TtC9SeymourUI23ProgramDetailHeaderCell_contentLayoutGuideWidthConstraint;
  v40 = *&v4[OBJC_IVAR____TtC9SeymourUI23ProgramDetailHeaderCell_contentLayoutGuideWidthConstraint];
  if (v40)
  {
    [v40 multiplier];
    if (v41 == v38)
    {
      goto LABEL_35;
    }

    v42 = *&v4[v39];
    if (v42)
    {
      [v42 setActive_];
    }
  }

  v43 = [*&v4[OBJC_IVAR____TtC9SeymourUI23ProgramDetailHeaderCell_contentLayoutGuide] widthAnchor];
  v44 = [v4 contentView];
  v45 = [v44 widthAnchor];

  v46 = [v43 constraintEqualToAnchor:v45 multiplier:v38];
  v47 = *&v4[v39];
  *&v4[v39] = v46;
  v48 = v46;

  if (v48)
  {
    [v48 setActive_];
  }

LABEL_35:
  [v4 setNeedsUpdateConstraints];
  v49 = [v4 traitCollection];
  v50 = sub_20BE8BF3C(&unk_28228DA28);
  v51 = sub_20B7AC3D4(v50, v66 | 0x80u, v49);
  sub_20B7B0B88(v66 | 0x80, v49, v51 & 1);
}

id sub_20BA701C8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ProgramDetailHeaderCell(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for ProgramDetailHeaderCell(uint64_t a1)
{
  result = qword_27C769848;
  if (!qword_27C769848)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20BA70380(uint64_t a1)
{
  sub_20B5E238C(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

double sub_20BA70490(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC9SeymourUI23ProgramDetailHeaderCell_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  swift_unknownObjectRelease();
  return result;
}

uint64_t sub_20BA704DC@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9SeymourUI23ProgramDetailHeaderCell_itemInfo;
  swift_beginAccess();
  return sub_20B5E26EC(v1 + v3, a1);
}

uint64_t sub_20BA70534(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9SeymourUI23ProgramDetailHeaderCell_itemInfo;
  swift_beginAccess();
  sub_20B5E267C(a1, v1 + v3);
  return swift_endAccess();
}

void sub_20BA70598(uint64_t a1, void *a2)
{
  sub_20BD543C0(a2);
  [objc_msgSend(a2 container)];
  swift_unknownObjectRelease();
}

id sub_20BA7061C(double a1)
{
  v2 = a1 + 5.0;
  v3 = OBJC_IVAR____TtC9SeymourUI23ProgramDetailHeaderCell_contentLayoutGuideTopConstraint;
  v4 = *(v1 + OBJC_IVAR____TtC9SeymourUI23ProgramDetailHeaderCell_contentLayoutGuideTopConstraint);
  if (v4)
  {
    result = [v4 constant];
    if (v2 == v6)
    {
      return result;
    }

    v4 = *(v1 + v3);
  }

  return [v4 setConstant_];
}

uint64_t sub_20BA706B8(unint64_t a1)
{
  v2 = sub_20C13BB84();
  v200 = *(v2 - 1);
  v201 = v2;
  MEMORY[0x28223BE20](v2);
  v4 = &v160 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0, &unk_20C150360);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v160 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v186 = &v160 - v10;
  v185 = v11;
  MEMORY[0x28223BE20](v12);
  v14 = &v160 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766670, &unk_20C151580);
  MEMORY[0x28223BE20](v15 - 8);
  v191 = &v160 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BAB0, &unk_20C150570);
  v196 = *(v17 - 8);
  v197 = v17;
  MEMORY[0x28223BE20](v17);
  v184 = &v160 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v183 = v18;
  MEMORY[0x28223BE20](v19);
  v195 = &v160 - v20;
  v190 = sub_20C1391C4();
  v188 = *(v190 - 1);
  MEMORY[0x28223BE20](v190);
  v189 = &v160 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_20C138A64();
  v192 = *(v22 - 8);
  v193 = v22;
  MEMORY[0x28223BE20](v22);
  v194 = &v160 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766680, &unk_20C14F920);
  MEMORY[0x28223BE20](v24 - 8);
  v26 = &v160 - v25;
  v27 = sub_20C13C554();
  v199 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v29 = (&v160 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  v30 = *(sub_20C137C24() - 8);
  MEMORY[0x28223BE20](*(v30 + 64));
  MEMORY[0x28223BE20](v31);
  v37 = &v160 - v36;
  if (((a1 >> 57) & 0x78 | a1 & 7) == 0x30)
  {
    v182 = v27;
    v173 = v26;
    v174 = v32;
    v176 = v35;
    v168 = v8;
    v169 = v14;
    v170 = v6;
    v171 = v5;
    v38 = v33;
    v39 = v34;
    v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7681A8, &qword_20C165298);
    v41 = swift_projectBox();
    v42 = *v41;
    v43 = *(v41 + 8);
    v44 = *(v41 + 16);
    v45 = *(v40 + 80);
    v46 = (v41 + *(v40 + 96));
    v47 = v46[1];
    v175 = *v46;
    v200 = v39;
    v48 = *(v39 + 16);
    v198 = v38;
    v178 = v39 + 16;
    v177 = v48;
    v48(v37, v41 + v45, v38);
    v49 = v202;
    v50 = *&v202[OBJC_IVAR____TtC9SeymourUI23ProgramDetailHeaderCell_titleLabel];
    v181 = v44;
    v201 = v44;
    v51 = v42;
    v52 = v43;
    v187 = v47;

    v180 = v51;
    [v50 setAttributedText_];
    v53 = *&v49[OBJC_IVAR____TtC9SeymourUI23ProgramDetailHeaderCell_subtitleLabel];
    v179 = v52;
    [v53 setAttributedText_];
    v54 = v49[OBJC_IVAR____TtC9SeymourUI23ProgramDetailHeaderCell_currentLayout];
    v55 = v37;
    if (v54 != 4)
    {
      v56 = [v49 traitCollection];
      v57 = sub_20BE8BF3C(&unk_282287150);
      v58 = sub_20B7AC3D4(v57, v54 | 0x80u, v56);
      sub_20B7B0B88(v54 | 0x80, v56, v58 & 1);
    }

    v59 = *&v49[OBJC_IVAR____TtC9SeymourUI23ProgramDetailHeaderCell_previewButton];
    [v59 setAttributedTitle:v201 forState:0];
    v60 = v181 == 0;
    [v59 setHidden_];
    [*&v49[OBJC_IVAR____TtC9SeymourUI23ProgramDetailHeaderCell_previewButtonPlatter] setHidden_];
    v61 = sub_20C138054();
    v63 = v62;
    sub_20B51C88C(0, &qword_281100530, 0x277D85C78);
    *v29 = sub_20C13D374();
    v64 = v199;
    v65 = v182;
    (*(v199 + 13))(v29, *MEMORY[0x277D85200], v182);
    LOBYTE(v59) = sub_20C13C584();
    result = (*(v64 + 1))(v29, v65);
    if (v59)
    {
      v68 = *&v49[OBJC_IVAR____TtC9SeymourUI23ProgramDetailHeaderCell_artworkView];
      v67 = *&v49[OBJC_IVAR____TtC9SeymourUI23ProgramDetailHeaderCell_artworkView + 8];
      ObjectType = swift_getObjectType();
      [v68 setContentMode_];
      if (sub_20BA66C54())
      {
        v70 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v181 = v63;
        v71 = v176;
        v199 = v55;
        v166 = ObjectType;
        v72 = v198;
        v177(v176, v55, v198);
        v172 = v61;
        v73 = v200;
        v74 = *(v200 + 80);
        v75 = (v74 + 24) & ~v74;
        v161 = v174 + 7;
        v76 = (v174 + 7 + v75) & 0xFFFFFFFFFFFFFFF8;
        v77 = (v76 + 23) & 0xFFFFFFFFFFFFFFF8;
        v182 = v67;
        v167 = v68;
        v78 = (v77 + 23) & 0xFFFFFFFFFFFFFFF8;
        v165 = (v78 + 15) & 0xFFFFFFFFFFFFFFF8;
        v79 = (v78 + 31) & 0xFFFFFFFFFFFFFFF8;
        v164 = v74;
        v80 = swift_allocObject();
        *(v80 + 16) = v70;
        v81 = v73;
        v82 = v172;
        v83 = *(v81 + 32);
        v84 = v71;
        v85 = v181;
        v163 = v81 + 32;
        v162 = v83;
        v83(v80 + v75, v84, v72);
        v86 = (v80 + v76);
        v87 = v187;
        *v86 = v175;
        v86[1] = v87;
        v88 = (v80 + v77);
        *v88 = v82;
        v88[1] = v85;
        *(v80 + v78) = 2;
        v89 = v167;
        v90 = v182;
        v91 = v80 + v165;
        *v91 = MEMORY[0x277D84F90];
        *(v91 + 8) = 0;
        v92 = (v80 + v79);
        *v92 = 0;
        v92[1] = 0;
        v93 = *(v90 + 152);

        v94 = v166;
        v93(sub_20BA719B0, v80);

        [v89 bounds];
        if (v95 <= 0.0 || (v97 = v96, v96 <= 0.0))
        {

          v49 = v202;
          v55 = v199;
        }

        else
        {
          v98 = v95;
          v165 = ~v164;
          v99 = v94;
          (*(v90 + 120))(0, v94, v90);
          v100 = v173;
          v101 = v198;
          v55 = v199;
          v177(v173, v199, v198);
          (*(v200 + 56))(v100, 0, 1, v101);
          (*(v90 + 16))(v100, v99, v90);
          sub_20B51C88C(0, &qword_27C762070, 0x277D75348);
          sub_20C137BC4();
          v102 = sub_20C13D5A4();
          [v89 setBackgroundColor_];

          (*(v90 + 176))(COERCE_DOUBLE(*&v98), COERCE_DOUBLE(*&v97), 0, v99, v90);
          v182 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v103 = v176;
          v104 = v198;
          v105 = v177;
          v177(v176, v55, v198);
          v106 = (v164 + 16) & v165;
          v107 = (v161 + v106) & 0xFFFFFFFFFFFFFFF8;
          v108 = (v107 + 15) & 0xFFFFFFFFFFFFFFF8;
          v109 = (v108 + 23) & 0xFFFFFFFFFFFFFFF8;
          v110 = swift_allocObject();
          v162(v110 + v106, v103, v104);
          *(v110 + v107) = v182;
          v111 = (v110 + v108);
          v49 = v202;
          *v111 = v98;
          v111[1] = v97;
          v182 = v110;
          v112 = (v110 + v109);
          *v112 = 0;
          v112[1] = 0;
          v105(v103, v55, v104);
          (*(v188 + 104))(v189, *MEMORY[0x277D542A8], v190);
          v113 = v194;
          sub_20C138A54();
          v114 = v191;
          sub_20B5F1B40(v113, v191);
          v116 = v196;
          v115 = v197;
          if ((*(v196 + 48))(v114, 1, v197) == 1)
          {
            sub_20B520158(v114, &unk_27C766670, &unk_20C151580);
            sub_20BA1DA64();

            (*(v192 + 8))(v113, v193);
          }

          else
          {
            v190 = *(v116 + 32);
            v190(v195, v114, v115);
            v128 = swift_allocObject();
            swift_unknownObjectWeakInit();
            v129 = v198;
            v105(v103, v55, v198);
            v130 = (v164 + 40) & v165;
            v131 = v130 + v174;
            v132 = (v130 + v174) & 0xFFFFFFFFFFFFFFF8;
            v133 = swift_allocObject();
            *(v133 + 2) = v128;
            v133[3] = v98;
            v133[4] = v97;
            v162(v133 + v130, v103, v129);
            *(v133 + v131) = 0;
            v134 = v133 + v132;
            *(v134 + 1) = 0;
            *(v134 + 2) = 0;
            v135 = swift_allocObject();
            *(v135 + 16) = sub_20BA71B44;
            *(v135 + 24) = v133;
            v136 = v116;
            v137 = *(v116 + 16);
            v138 = v184;
            v139 = v197;
            v137(v184, v195, v197);
            v140 = (*(v136 + 80) + 16) & ~*(v136 + 80);
            v141 = (v183 + v140 + 7) & 0xFFFFFFFFFFFFFFF8;
            v142 = swift_allocObject();
            v190((v142 + v140), v138, v139);
            v143 = (v142 + v141);
            *v143 = sub_20B5F67A4;
            v143[1] = v135;
            v144 = v186;
            sub_20C137C94();
            v145 = swift_allocObject();
            v146 = v182;
            *(v145 + 16) = sub_20BA71A88;
            *(v145 + 24) = v146;
            v147 = swift_allocObject();
            *(v147 + 16) = sub_20B5F67D4;
            *(v147 + 24) = v145;
            v148 = v170;
            v149 = v168;
            v150 = v171;
            (*(v170 + 16))(v168, v144, v171);
            v151 = (*(v148 + 80) + 16) & ~*(v148 + 80);
            v152 = (v185 + v151 + 7) & 0xFFFFFFFFFFFFFFF8;
            v153 = swift_allocObject();
            v154 = v149;
            v55 = v199;
            (*(v148 + 32))(v153 + v151, v154, v150);
            v155 = (v153 + v152);
            *v155 = sub_20B5DF204;
            v155[1] = v147;

            v156 = v169;
            sub_20C137C94();
            v157 = *(v148 + 8);
            v157(v144, v150);
            v158 = sub_20C137CB4();
            v159 = swift_allocObject();
            *(v159 + 16) = 0;
            *(v159 + 24) = 0;
            v158(sub_20B52347C, v159);

            v49 = v202;

            v157(v156, v150);
            (*(v196 + 8))(v195, v197);
            (*(v192 + 8))(v194, v193);
          }
        }
      }

      else
      {
      }

      sub_20B86E3F4(*&v49[OBJC_IVAR____TtC9SeymourUI23ProgramDetailHeaderCell_textContainer]);

      return (*(v200 + 8))(v55, v198);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    sub_20C13B534();

    v117 = v202;
    v118 = sub_20C13BB74();
    v119 = sub_20C13D1D4();

    if (os_log_type_enabled(v118, v119))
    {
      v120 = swift_slowAlloc();
      v121 = swift_slowAlloc();
      v122 = swift_slowAlloc();
      v203 = a1;
      v204 = v122;
      *v120 = 138543618;
      *(v120 + 4) = v117;
      *v121 = v117;
      *(v120 + 12) = 2082;
      v123 = sub_20B5F66D0();
      v124 = v117;
      v125 = MEMORY[0x20F2EFA40](&type metadata for ShelfItem, v123);
      v127 = sub_20B51E694(v125, v126, &v204);

      *(v120 + 14) = v127;
      _os_log_impl(&dword_20B517000, v118, v119, "Attempted to configure %{public}@ with item: %{public}s", v120, 0x16u);
      sub_20B520158(v121, &unk_27C762E30, &unk_20C150580);
      MEMORY[0x20F2F6A40](v121, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v122);
      MEMORY[0x20F2F6A40](v122, -1, -1);
      MEMORY[0x20F2F6A40](v120, -1, -1);
    }

    return (*(v200 + 8))(v4, v201);
  }

  return result;
}

void sub_20BA719B0()
{
  v1 = *(sub_20C137C24() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 23) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 23) & 0xFFFFFFFFFFFFFFF8;
  sub_20BA47DAC(*(v0 + 16), v0 + v2, *(v0 + v3), *(v0 + v3 + 8), *(v0 + v4), *(v0 + v4 + 8), *(v0 + v5), *(v0 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 8), *(v0 + ((v5 + 31) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((v5 + 31) & 0xFFFFFFFFFFFFFFF8) + 8));
}

void sub_20BA71A88(void *a1)
{
  v3 = *(sub_20C137C24() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + v5);
  v8 = *(v1 + v6);
  v9 = *(v1 + v6 + 8);
  v10 = (v1 + ((v6 + 23) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];

  sub_20BA63690(a1, v1 + v4, v7, v11, v12, v8, v9);
}

void sub_20BA71B44(void **a1)
{
  v3 = *(sub_20C137C24() - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  sub_20B5F2EEC(*a1, *(v1 + 16), (v1 + v4), *(v1 + v4 + *(v3 + 64)), *(v1 + ((v4 + *(v3 + 64)) & 0xFFFFFFFFFFFFFFF8) + 8), *(v1 + ((v4 + *(v3 + 64)) & 0xFFFFFFFFFFFFFFF8) + 16), *(v1 + 24), *(v1 + 32));
}

void sub_20BA71BF8()
{
  v1 = v0;
  *(v0 + OBJC_IVAR____TtC9SeymourUI23ProgramDetailHeaderCell_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC9SeymourUI23ProgramDetailHeaderCell_isMinFontPreferred) = 0;
  v2 = OBJC_IVAR____TtC9SeymourUI23ProgramDetailHeaderCell_itemInfo;
  v3 = type metadata accessor for ShelfCellItemInfo(0);
  (*(*(v3 - 8) + 56))(v1 + v2, 1, 1, v3);
  v4 = (v1 + OBJC_IVAR____TtC9SeymourUI23ProgramDetailHeaderCell_layout);
  *v4 = xmmword_20C156A10;
  v4[1] = xmmword_20C169530;
  v5 = (v1 + OBJC_IVAR____TtC9SeymourUI23ProgramDetailHeaderCell_artworkView);
  v6 = [objc_allocWithZone(type metadata accessor for ArtworkView(0)) initWithFrame_];
  [v6 setTranslatesAutoresizingMaskIntoConstraints_];
  *v5 = v6;
  v5[1] = &off_2822B63E8;
  v7 = OBJC_IVAR____TtC9SeymourUI23ProgramDetailHeaderCell_contentLayoutGuide;
  *(v1 + v7) = [objc_allocWithZone(MEMORY[0x277D756D0]) init];
  v8 = OBJC_IVAR____TtC9SeymourUI23ProgramDetailHeaderCell_vibrantShadowView;
  v9 = [objc_allocWithZone(type metadata accessor for VibrantShadowView()) initWithFrame_];
  [v9 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v1 + v8) = v9;
  v10 = OBJC_IVAR____TtC9SeymourUI23ProgramDetailHeaderCell_textContainer;
  v11 = [objc_allocWithZone(MEMORY[0x277D75D18]) initWithFrame_];
  [v11 setTranslatesAutoresizingMaskIntoConstraints_];
  *(v1 + v10) = v11;
  v12 = OBJC_IVAR____TtC9SeymourUI23ProgramDetailHeaderCell_titleLabel;
  v13 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  [v13 setTranslatesAutoresizingMaskIntoConstraints_];
  [v13 setLineBreakMode_];
  [v13 setNumberOfLines_];
  [v13 setAllowsDefaultTighteningForTruncation_];
  *(v1 + v12) = v13;
  v14 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  [v14 setTranslatesAutoresizingMaskIntoConstraints_];
  v15 = *MEMORY[0x277D74368];
  v16 = *MEMORY[0x277D74418];
  v17 = [objc_opt_self() preferredFontDescriptorWithTextStyle:*MEMORY[0x277D76A20] compatibleWithTraitCollection:0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7731F0, &unk_20C159850);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20C14F980;
  v19 = *MEMORY[0x277D74380];
  *(inited + 32) = *MEMORY[0x277D74380];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C771970, &unk_20C1500C0);
  v20 = swift_initStackObject();
  *(v20 + 16) = xmmword_20C14F980;
  v21 = *MEMORY[0x277D74430];
  *(v20 + 32) = *MEMORY[0x277D74430];
  *(v20 + 40) = v16;
  v22 = v19;
  v23 = v21;
  v24 = sub_20B6B134C(v20);

  *(inited + 64) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C771980, &qword_20C1500D0);
  *(inited + 40) = v24;
  sub_20B6B143C(inited);

  type metadata accessor for AttributeName(0);
  sub_20B5E5BD0();
  v25 = sub_20C13C744();

  v26 = [v17 fontDescriptorByAddingAttributes_];

  v27 = [v26 fontDescriptorWithDesign_];
  if (v27)
  {
    v28 = v27;

    v26 = v28;
  }

  v29 = OBJC_IVAR____TtC9SeymourUI23ProgramDetailHeaderCell_subtitleLabel;
  v30 = [objc_opt_self() fontWithDescriptor:v26 size:0.0];

  [v14 setFont_];
  [v14 setAllowsDefaultTighteningForTruncation_];
  *(v1 + v29) = v14;
  v31 = OBJC_IVAR____TtC9SeymourUI23ProgramDetailHeaderCell_previewButtonPlatter;
  v32 = [objc_opt_self() effectWithStyle_];
  v33 = [objc_allocWithZone(MEMORY[0x277D75D68]) initWithEffect_];

  v34 = v33;
  [v34 setTranslatesAutoresizingMaskIntoConstraints_];
  [v34 setClipsToBounds_];
  v35 = [v34 layer];
  [v35 setCornerRadius_];

  [v34 setClipsToBounds_];
  *(v1 + v31) = v34;
  v36 = OBJC_IVAR____TtC9SeymourUI23ProgramDetailHeaderCell_previewButton;
  v37 = objc_opt_self();
  v38 = [v37 whiteColor];
  type metadata accessor for RoundedButton();
  v39 = [swift_getObjCClassFromMetadata() buttonWithType_];
  [v39 setTitle:0 forState:0];
  v40 = v39;
  v41 = [v40 titleLabel];
  [v41 setAdjustsFontForContentSizeCategory_];

  sub_20BD4F054(0, 0, 1, 0);
  [v40 setTintColor_];

  v42 = [v37 clearColor];
  [v40 setBackgroundColor_];

  [v40 setTranslatesAutoresizingMaskIntoConstraints_];
  v43 = v40;
  v44 = [v43 titleLabel];
  [v44 setAdjustsFontForContentSizeCategory_];

  *(v1 + v36) = v43;
  *(v1 + OBJC_IVAR____TtC9SeymourUI23ProgramDetailHeaderCell_contentLayoutGuideLeftConstraint) = 0;
  *(v1 + OBJC_IVAR____TtC9SeymourUI23ProgramDetailHeaderCell_contentLayoutGuideTopConstraint) = 0;
  *(v1 + OBJC_IVAR____TtC9SeymourUI23ProgramDetailHeaderCell_contentLayoutGuideWidthConstraint) = 0;
  v45 = (v1 + OBJC_IVAR____TtC9SeymourUI23ProgramDetailHeaderCell_currentContainerSize);
  *v45 = 0;
  v45[1] = 0;
  *(v1 + OBJC_IVAR____TtC9SeymourUI23ProgramDetailHeaderCell_currentLayout) = 4;
  *(v1 + OBJC_IVAR____TtC9SeymourUI23ProgramDetailHeaderCell_oldWidth) = 0;
  *(v1 + OBJC_IVAR____TtC9SeymourUI23ProgramDetailHeaderCell_previewButtonRightConstraint) = 0;
  *(v1 + OBJC_IVAR____TtC9SeymourUI23ProgramDetailHeaderCell_previewButtonWidthConstraint) = 0;
  sub_20C13DE24();
  __break(1u);
}

void sub_20BA7231C(double a1, double a2)
{
  if (a1 >= 568.0)
  {
    v3 = 3;
  }

  else
  {
    v3 = 2;
  }

  if (a1 < 480.0)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a1 >= 350.0)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (*(v2 + OBJC_IVAR____TtC9SeymourUI23ProgramDetailHeaderCell_currentLayout) != v5 || (*(v2 + OBJC_IVAR____TtC9SeymourUI23ProgramDetailHeaderCell_currentContainerSize) == a1 ? (v6 = *(v2 + OBJC_IVAR____TtC9SeymourUI23ProgramDetailHeaderCell_currentContainerSize + 8) == a2) : (v6 = 0), !v6))
  {
    sub_20BA6F930(v5, a1, a2);
  }
}

uint64_t sub_20BA72398()
{
  v1 = sub_20C133244();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ShelfItemAction(0);
  MEMORY[0x28223BE20](v5);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v9 = result;
    v10 = swift_storeEnumTagMultiPayload();
    v11 = MEMORY[0x28223BE20](v10);
    *(&v14 - 4) = 0;
    *(&v14 - 24) = 1;
    *(&v14 - 2) = v7;
    *(&v14 - 1) = v9;
    v12 = [*(v9 + OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView) indexPathForCell_];
    if (v12)
    {
      v13 = v12;
      sub_20C1331E4();

      sub_20C0C1CDC(v4, sub_20B5E27BC);
      (*(v2 + 8))(v4, v1);
    }

    swift_unknownObjectRelease();
    return sub_20B5E2760(v7);
  }

  return result;
}

uint64_t NavigationRequest.init(resource:intent:source:routingBehavior:priority:annotation:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X3>, char *a5@<X4>, uint64_t *a6@<X5>, uint64_t a7@<X8>)
{
  v10 = *a4;
  v11 = *a5;
  v12 = *a6;
  sub_20BA7269C(a1, a7, type metadata accessor for NavigationResource);
  v13 = type metadata accessor for NavigationRequest(0);
  sub_20BA7269C(a2, a7 + v13[5], type metadata accessor for NavigationIntent);
  result = sub_20BA7269C(a3, a7 + v13[6], type metadata accessor for NavigationSource);
  *(a7 + v13[7]) = v10;
  *(a7 + v13[8]) = v11;
  *(a7 + v13[9]) = v12;
  return result;
}

uint64_t type metadata accessor for NavigationRequest(uint64_t a1)
{
  result = qword_281103420;
  if (!qword_281103420)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_20BA7269C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_20BA727D0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t NavigationRequest.routingBehavior.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for NavigationRequest(0);
  *a1 = *(v1 + *(result + 28));
  return result;
}

uint64_t NavigationRequest.priority.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for NavigationRequest(0);
  *a1 = *(v1 + *(result + 32));
  return result;
}

uint64_t NavigationRequest.annotation.getter@<X0>(void *a1@<X8>)
{
  result = type metadata accessor for NavigationRequest(0);
  *a1 = *(v1 + *(result + 36));
  return result;
}

uint64_t NavigationRequest.hash(into:)(uint64_t a1)
{
  NavigationResource.hash(into:)(a1);
  v3 = type metadata accessor for NavigationRequest(0);
  NavigationIntent.hash(into:)(a1);
  NavigationSource.hash(into:)(a1);
  MEMORY[0x20F2F58E0](*(v1 + v3[7]));
  MEMORY[0x20F2F58E0](*(v1 + v3[8]));
  return MEMORY[0x20F2F58E0](*(v1 + v3[9]));
}

uint64_t NavigationRequest.hashValue.getter()
{
  sub_20C13E164();
  NavigationResource.hash(into:)(v3);
  v1 = type metadata accessor for NavigationRequest(0);
  NavigationIntent.hash(into:)(v3);
  NavigationSource.hash(into:)(v3);
  MEMORY[0x20F2F58E0](*(v0 + v1[7]));
  MEMORY[0x20F2F58E0](*(v0 + v1[8]));
  MEMORY[0x20F2F58E0](*(v0 + v1[9]));
  return sub_20C13E1B4();
}

uint64_t sub_20BA72A04(int *a1)
{
  sub_20C13E164();
  NavigationResource.hash(into:)(v4);
  NavigationIntent.hash(into:)(v4);
  NavigationSource.hash(into:)(v4);
  MEMORY[0x20F2F58E0](*(v1 + a1[7]));
  MEMORY[0x20F2F58E0](*(v1 + a1[8]));
  MEMORY[0x20F2F58E0](*(v1 + a1[9]));
  return sub_20C13E1B4();
}

uint64_t sub_20BA72AA4(uint64_t a1, int *a2)
{
  NavigationResource.hash(into:)(a1);
  NavigationIntent.hash(into:)(a1);
  NavigationSource.hash(into:)(a1);
  MEMORY[0x20F2F58E0](*(v2 + a2[7]));
  MEMORY[0x20F2F58E0](*(v2 + a2[8]));
  return MEMORY[0x20F2F58E0](*(v2 + a2[9]));
}

uint64_t sub_20BA72B20(uint64_t a1, int *a2)
{
  sub_20C13E164();
  NavigationResource.hash(into:)(v5);
  NavigationIntent.hash(into:)(v5);
  NavigationSource.hash(into:)(v5);
  MEMORY[0x20F2F58E0](*(v2 + a2[7]));
  MEMORY[0x20F2F58E0](*(v2 + a2[8]));
  MEMORY[0x20F2F58E0](*(v2 + a2[9]));
  return sub_20C13E1B4();
}

BOOL _s9SeymourUI17NavigationRequestV2eeoiySbAC_ACtFZ_0(uint64_t a1, char *a2)
{
  if (_s9SeymourUI18NavigationResourceO2eeoiySbAC_ACtFZ_0(a1, a2) & 1) != 0 && (v4 = type metadata accessor for NavigationRequest(0), (static NavigationIntent.== infix(_:_:)(a1 + v4[5], &a2[v4[5]])) && (static NavigationSource.== infix(_:_:)() & 1) != 0 && *(a1 + v4[7]) == a2[v4[7]] && *(a1 + v4[8]) == a2[v4[8]])
  {
    return *(a1 + v4[9]) == *&a2[v4[9]];
  }

  else
  {
    return 0;
  }
}

unint64_t sub_20BA72C70()
{
  result = qword_27C769858;
  if (!qword_27C769858)
  {
    type metadata accessor for NavigationRequest(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C769858);
  }

  return result;
}

uint64_t sub_20BA72CF0(uint64_t a1)
{
  result = type metadata accessor for NavigationResource(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for NavigationIntent(319);
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for NavigationSource(319);
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

char *sub_20BA72DA8(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC9SeymourUI24WorkoutPlanBrickItemCell_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v9 = OBJC_IVAR____TtC9SeymourUI24WorkoutPlanBrickItemCell_itemInfo;
  v10 = type metadata accessor for ShelfCellItemInfo(0);
  (*(*(v10 - 8) + 56))(&v4[v9], 1, 1, v10);
  v4[OBJC_IVAR____TtC9SeymourUI24WorkoutPlanBrickItemCell_showSeparator] = 1;
  *&v4[OBJC_IVAR____TtC9SeymourUI24WorkoutPlanBrickItemCell_contentViewBottomConstraint] = 0;
  v11 = _UISolariumEnabled();
  v12 = 0.0;
  if (v11)
  {
    v12 = 7.0;
  }

  v13 = &v4[OBJC_IVAR____TtC9SeymourUI24WorkoutPlanBrickItemCell_layout];
  *v13 = xmmword_20C1697A0;
  *(v13 + 1) = xmmword_20C15E900;
  *(v13 + 2) = xmmword_20C1697B0;
  *(v13 + 6) = v12;
  *&v4[OBJC_IVAR____TtC9SeymourUI24WorkoutPlanBrickItemCell_titleLabelTopConstraint] = 0;
  v14 = [objc_allocWithZone(type metadata accessor for ArtworkView(0)) initWithFrame_];
  [v14 setTranslatesAutoresizingMaskIntoConstraints_];
  if (_UISolariumEnabled())
  {
    v15 = 26.0;
  }

  else
  {
    v15 = 6.0;
  }

  v16 = &v4[OBJC_IVAR____TtC9SeymourUI24WorkoutPlanBrickItemCell_artworkView];
  v17 = [v14 layer];
  [v17 setCornerRadius_];

  [v14 setClipsToBounds_];
  *v16 = v14;
  v16[1] = &off_2822B63E8;
  v18 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  [v18 setTranslatesAutoresizingMaskIntoConstraints_];
  [v18 setAdjustsFontForContentSizeCategory_];
  v19 = *MEMORY[0x277D76940];
  v191 = objc_opt_self();
  v186 = v19;
  v20 = [v191 preferredFontDescriptorWithTextStyle:v19 compatibleWithTraitCollection:0];
  v21 = [v20 fontDescriptorWithSymbolicTraits_];
  if (v21)
  {
    v22 = v21;

    v20 = v22;
  }

  v23 = OBJC_IVAR____TtC9SeymourUI24WorkoutPlanBrickItemCell_captionLabel;
  v190 = objc_opt_self();
  v24 = [v190 fontWithDescriptor:v20 size:0.0];

  [v18 setFont_];
  [v18 setLineBreakMode_];
  [v18 setNumberOfLines_];
  [v18 setAllowsDefaultTighteningForTruncation_];
  v25 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.650980392 green:1.0 blue:0.0 alpha:1.0];
  [v18 setTextColor_];

  *&v4[v23] = v18;
  v26 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  [v26 setTranslatesAutoresizingMaskIntoConstraints_];
  [v26 setAdjustsFontForContentSizeCategory_];
  v27 = [v191 preferredFontDescriptorWithTextStyle:*MEMORY[0x277D76A20] compatibleWithTraitCollection:0];
  v28 = [v27 fontDescriptorWithSymbolicTraits_];
  if (v28)
  {
    v29 = v28;

    v27 = v29;
  }

  v30 = OBJC_IVAR____TtC9SeymourUI24WorkoutPlanBrickItemCell_titleLabel;
  v31 = [v190 fontWithDescriptor:v27 size:0.0];

  [v26 setFont_];
  [v26 setLineBreakMode_];
  [v26 setNumberOfLines_];
  [v26 setAllowsDefaultTighteningForTruncation_];
  v32 = objc_opt_self();
  v33 = [v32 whiteColor];
  [v26 setTextColor_];

  *&v4[v30] = v26;
  v34 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  [v34 setTranslatesAutoresizingMaskIntoConstraints_];
  [v34 setAdjustsFontForContentSizeCategory_];
  v35 = [v191 preferredFontDescriptorWithTextStyle:*MEMORY[0x277D76918] compatibleWithTraitCollection:0];
  v36 = [v35 fontDescriptorWithSymbolicTraits_];
  if (v36)
  {
    v37 = v36;

    v35 = v37;
  }

  v38 = OBJC_IVAR____TtC9SeymourUI24WorkoutPlanBrickItemCell_subtitleLabel;
  v39 = [v190 fontWithDescriptor:v35 size:0.0];

  [v34 setFont_];
  [v34 setLineBreakMode_];
  [v34 setNumberOfLines_];
  [v34 setAllowsDefaultTighteningForTruncation_];
  v40 = [v32 secondaryLabelColor];
  [v34 setTextColor_];

  *&v4[v38] = v34;
  v41 = OBJC_IVAR____TtC9SeymourUI24WorkoutPlanBrickItemCell_separator;
  v42 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  [v42 setTranslatesAutoresizingMaskIntoConstraints_];
  v43 = [v32 separatorColor];
  [v42 setBackgroundColor_];

  *&v4[v41] = v42;
  v44 = OBJC_IVAR____TtC9SeymourUI24WorkoutPlanBrickItemCell_swapButton;
  type metadata accessor for IconButton();
  v45 = [swift_getObjCClassFromMetadata() buttonWithType_];
  [v45 setTranslatesAutoresizingMaskIntoConstraints_];
  *&v4[v44] = v45;
  v46 = type metadata accessor for ActionButtonTemplateBuilder();
  v47 = swift_allocObject();
  type metadata accessor for ActionButtonTemplateParser();
  v48 = swift_allocObject();
  v49 = qword_27C760AA0;

  v188 = v48;

  if (v49 != -1)
  {
    swift_once();
  }

  v50 = qword_27C76CF70;
  if (qword_27C760AA8 != -1)
  {
    swift_once();
  }

  v51 = qword_27C76CF78;
  v199[3] = v46;
  v199[4] = &off_2822EEB00;
  v185 = v47;
  v199[0] = v47;
  v197 = &type metadata for ActionButtonViewFactory;
  v198 = &off_2822B2B20;
  v52 = type metadata accessor for ActionButtonContainerView();
  v53 = objc_allocWithZone(v52);
  v54 = __swift_mutable_project_boxed_opaque_existential_1(v199, v46);
  v55 = MEMORY[0x28223BE20](v54);
  v57 = (&v177 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v58 + 16))(v57, v55);
  __swift_mutable_project_boxed_opaque_existential_1(v196, v197);
  v59 = *v57;
  v195[3] = v46;
  v195[4] = &off_2822EEB00;
  v195[0] = v59;
  v194[3] = &type metadata for ActionButtonViewFactory;
  v194[4] = &off_2822B2B20;
  *&v53[OBJC_IVAR____TtC9SeymourUI25ActionButtonContainerView_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v53[OBJC_IVAR____TtC9SeymourUI25ActionButtonContainerView_buttonActions] = MEMORY[0x277D84F90];
  *&v53[OBJC_IVAR____TtC9SeymourUI25ActionButtonContainerView_rootStackView] = 0;
  sub_20B51CC64(v195, &v53[OBJC_IVAR____TtC9SeymourUI25ActionButtonContainerView_templateBuilder]);
  v60 = &v53[OBJC_IVAR____TtC9SeymourUI25ActionButtonContainerView_templateParser];
  *v60 = v188;
  v60[1] = &off_28229AE20;
  sub_20B51CC64(v194, &v53[OBJC_IVAR____TtC9SeymourUI25ActionButtonContainerView_viewFactory]);
  *&v53[OBJC_IVAR____TtC9SeymourUI25ActionButtonContainerView_interGroupSpacing] = v50;
  *&v53[OBJC_IVAR____TtC9SeymourUI25ActionButtonContainerView_interItemSpacing] = v51;
  v193.receiver = v53;
  v193.super_class = v52;
  v61 = objc_msgSendSuper2(&v193, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  __swift_destroy_boxed_opaque_existential_1(v194);
  __swift_destroy_boxed_opaque_existential_1(v195);
  v62 = v61;
  __swift_destroy_boxed_opaque_existential_1(v196);
  __swift_destroy_boxed_opaque_existential_1(v199);
  [v62 setTranslatesAutoresizingMaskIntoConstraints_];

  *&v4[OBJC_IVAR____TtC9SeymourUI24WorkoutPlanBrickItemCell_actionButtonContainerView] = v62;
  v63 = type metadata accessor for WorkoutPlanBrickItemCell(0);
  v192.receiver = v4;
  v192.super_class = v63;
  v64 = objc_msgSendSuper2(&v192, sel_initWithFrame_, a1, a2, a3, a4);
  v65 = [v64 contentView];
  v187 = &v64[OBJC_IVAR____TtC9SeymourUI24WorkoutPlanBrickItemCell_artworkView];
  [v65 addSubview_];

  v66 = [objc_allocWithZone(MEMORY[0x277D75A68]) init];
  [v66 setAxis_];
  v67 = &v64[OBJC_IVAR____TtC9SeymourUI24WorkoutPlanBrickItemCell_layout];
  [v66 setSpacing_];
  [v66 addArrangedSubview_];
  [v66 addArrangedSubview_];
  [v66 addArrangedSubview_];
  v68 = [objc_allocWithZone(MEMORY[0x277D75A68]) init];
  [v68 setTranslatesAutoresizingMaskIntoConstraints_];
  [v68 setAxis_];
  [v68 setAlignment_];
  v69 = v67;
  [v68 setSpacing_];
  [v68 addArrangedSubview_];
  v70 = OBJC_IVAR____TtC9SeymourUI24WorkoutPlanBrickItemCell_swapButton;
  [v68 addArrangedSubview_];
  v71 = *&v64[v70];
  v72 = [v32 whiteColor];
  [v71 setTintColor_];

  v73 = [v191 preferredFontDescriptorWithTextStyle:v186 compatibleWithTraitCollection:0];
  v74 = [v73 fontDescriptorWithSymbolicTraits_];
  if (v74)
  {
    v75 = v74;

    v73 = v75;
  }

  v76 = [v190 fontWithDescriptor:v73 size:0.0];

  v77 = [objc_opt_self() configurationWithFont_];
  v78 = *&v64[v70];
  v79 = v77;
  v80 = sub_20C13C914();
  v81 = objc_opt_self();
  v82 = v70;
  v83 = v79;
  v191 = v79;
  v84 = [v81 systemImageNamed:v80 withConfiguration:v79];

  v85 = *&v78[OBJC_IVAR____TtC9SeymourUI10IconButton_image];
  *&v78[OBJC_IVAR____TtC9SeymourUI10IconButton_image] = v84;

  [v78 setNeedsUpdateConfiguration];
  v184 = v82;
  [*&v64[v82] addTarget:v64 action:sel_swapButtonTapped_ forControlEvents:64];
  LODWORD(v86) = 1148846080;
  [*&v64[v82] setContentHuggingPriority:0 forAxis:v86];
  LODWORD(v87) = 1132068864;
  [v66 setContentHuggingPriority:0 forAxis:v87];
  v88 = v64;
  v183 = v88;
  v89 = [v88 contentView];
  [v89 addSubview_];

  v186 = OBJC_IVAR____TtC9SeymourUI24WorkoutPlanBrickItemCell_separator;
  v90 = *&v88[OBJC_IVAR____TtC9SeymourUI24WorkoutPlanBrickItemCell_separator];
  v91 = v88;
  v190 = v66;
  v92 = v91;
  [v91 addSubview_];
  v93 = *&v92[OBJC_IVAR____TtC9SeymourUI24WorkoutPlanBrickItemCell_actionButtonContainerView];
  v94 = OBJC_IVAR____TtC9SeymourUI24WorkoutPlanBrickItemCell_actionButtonContainerView;
  v179 = OBJC_IVAR____TtC9SeymourUI24WorkoutPlanBrickItemCell_actionButtonContainerView;
  *(v93 + OBJC_IVAR____TtC9SeymourUI25ActionButtonContainerView_delegate + 8) = &off_2822C6B70;
  swift_unknownObjectWeakAssign();
  v95 = [v92 contentView];
  [v95 addSubview_];

  v189 = v68;
  v96 = *v187;
  v97 = *(v187 + 1);
  v98 = v187;
  ObjectType = swift_getObjectType();
  v178 = v69;
  v100 = v69[6];
  v101 = *(v97 + 248);
  v102 = v96;
  v101(ObjectType, v97, v100, v100, v100, v100);

  v182 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0, &unk_20C14F960);
  v103 = swift_allocObject();
  *(v103 + 16) = xmmword_20C1697C0;
  v104 = [*v98 leadingAnchor];
  v105 = [v92 contentView];
  v106 = [v105 leadingAnchor];

  v107 = [v104 constraintEqualToAnchor_];
  *(v103 + 32) = v107;
  v108 = [*v98 trailingAnchor];
  v109 = [v92 contentView];
  v110 = [v109 trailingAnchor];

  v111 = [v108 constraintEqualToAnchor_];
  type metadata accessor for UILayoutPriority(0);
  v113 = v112;
  LODWORD(v196[0]) = 1148846080;
  LODWORD(v195[0]) = 1065353216;
  v181 = sub_20B60B184();
  v180 = v113;
  sub_20C13BBA4();
  LODWORD(v114) = v199[0];
  [v111 setPriority_];
  *(v103 + 40) = v111;
  v115 = [*v98 topAnchor];
  v116 = [v92 contentView];
  v117 = [v116 &selRef_setLineBreakMode_];

  v118 = [v115 constraintEqualToAnchor_];
  *(v103 + 48) = v118;
  v119 = [*v98 widthAnchor];
  v120 = [v92 contentView];
  v121 = [v120 &selRef_traitCollection + 6];

  v122 = [v119 constraintEqualToAnchor_];
  *(v103 + 56) = v122;
  v123 = [*v98 heightAnchor];
  v124 = [*v98 &selRef_traitCollection + 6];
  v125 = v178;
  v126 = [v123 constraintEqualToAnchor:v124 multiplier:v178[5]];

  *(v103 + 64) = v126;
  v127 = v189;
  v128 = [v189 leadingAnchor];
  v129 = [v92 contentView];
  v130 = [v129 leadingAnchor];

  v131 = [v128 constraintEqualToAnchor_];
  *(v103 + 72) = v131;
  v132 = [v127 topAnchor];
  v133 = [*v98 bottomAnchor];
  v134 = [v132 constraintEqualToAnchor:v133 constant:*v125];

  *(v103 + 80) = v134;
  v135 = [v127 trailingAnchor];
  v136 = [v92 contentView];
  v137 = [v136 trailingAnchor];

  v138 = [v135 constraintEqualToAnchor_];
  *(v103 + 88) = v138;
  v139 = v179;
  v140 = [*&v92[v179] leadingAnchor];
  v177 = v64;
  v141 = [v92 &selRef_setMaximumFractionDigits_];
  v142 = [v141 leadingAnchor];

  v143 = [v140 constraintEqualToAnchor_];
  *(v103 + 96) = v143;
  v144 = [*&v92[v139] trailingAnchor];
  v145 = [v92 &selRef_setMaximumFractionDigits_];
  v146 = [v145 trailingAnchor];

  v147 = [v144 constraintEqualToAnchor_];
  *(v103 + 104) = v147;
  v148 = [*&v92[v139] topAnchor];
  v149 = v189;
  v150 = [v189 bottomAnchor];

  v151 = [v148 constraintEqualToAnchor:v150 constant:v125[2]];
  *(v103 + 112) = v151;
  v152 = [*&v92[v139] bottomAnchor];
  v153 = [v92 &selRef_setMaximumFractionDigits_];

  v154 = [v153 bottomAnchor];
  v155 = [v152 constraintEqualToAnchor:v154 constant:-v125[4]];

  LODWORD(v196[0]) = 1148846080;
  LODWORD(v195[0]) = 1065353216;
  sub_20C13BBA4();
  LODWORD(v156) = v199[0];
  [v155 setPriority_];
  *(v103 + 120) = v155;
  v157 = v184;
  v158 = v177;
  v159 = [*&v177[v184] heightAnchor];
  v160 = [*&v158[v157] widthAnchor];
  v161 = [v159 constraintEqualToAnchor_];

  *(v103 + 128) = v161;
  v162 = v186;
  v163 = v183;
  v164 = [*&v183[v186] leadingAnchor];
  v165 = [*v187 leadingAnchor];
  v166 = [v164 constraintEqualToAnchor_];

  *(v103 + 136) = v166;
  v167 = [*&v163[v162] trailingAnchor];
  v168 = [v92 trailingAnchor];

  v169 = [v167 constraintEqualToAnchor_];
  *(v103 + 144) = v169;
  v170 = [*&v163[v162] bottomAnchor];
  v171 = [v92 bottomAnchor];

  v172 = [v170 constraintEqualToAnchor_];
  *(v103 + 152) = v172;
  v173 = [*&v163[v162] heightAnchor];
  sub_20C1387F4();
  v174 = [v173 constraintEqualToConstant_];

  *(v103 + 160) = v174;
  sub_20B51C88C(0, &qword_281100500, 0x277CCAAD0);
  v175 = sub_20C13CC54();

  [v182 activateConstraints_];

  return v92;
}