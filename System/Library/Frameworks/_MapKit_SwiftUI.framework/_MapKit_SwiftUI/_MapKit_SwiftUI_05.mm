uint64_t sub_213D37A4C(void *a1, void *a2, uint64_t a3, uint64_t a4, int *a5)
{
  v6 = v5;
  v210 = a4;
  v207 = a3;
  v205 = sub_213D90C0C();
  v204 = *(v205 - 8);
  MEMORY[0x28223BE20](v205);
  v203 = v202 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v215 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EB208, &unk_213D97260);
  v223 = *(v215 - 8);
  MEMORY[0x28223BE20](v215);
  v214 = (v202 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v12);
  v213 = (v202 - v13);
  MEMORY[0x28223BE20](v14);
  v212 = v202 - v15;
  v219 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C8EBAA0, &unk_213D972B0);
  v224 = *(v219 - 8);
  MEMORY[0x28223BE20](v219);
  v218 = (v202 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v17);
  v217 = (v202 - v18);
  MEMORY[0x28223BE20](v19);
  v216 = v202 - v20;
  v222 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EB288, &unk_213D972E0);
  v225 = *(v222 - 8);
  MEMORY[0x28223BE20](v222);
  v221 = (v202 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v22);
  v220 = (v202 - v23);
  MEMORY[0x28223BE20](v24);
  v26 = v202 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EBAB0, &qword_213D98468);
  MEMORY[0x28223BE20](v27 - 8);
  v29 = v202 - v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EBAB8, &qword_213D98470);
  v31 = MEMORY[0x28223BE20](v30 - 8);
  v33 = v202 - v32;
  [a1 setDelegate_];
  v34 = MEMORY[0x277D85000];
  swift_unknownObjectWeakAssign();
  sub_213D4CAEC(v5 + a5[23], v33, type metadata accessor for _MapContentInputs);
  v35 = type metadata accessor for _MapContentInputs(0);
  (*(*(v35 - 8) + 56))(v33, 0, 1, v35);
  sub_213D3BCDC(v33);
  *(a2 + *((*v34 & *a2) + 0x250)) = sub_213D37310(a5);

  sub_213CE2C28(v5 + a5[24], v29, qword_27C8EB9C8, qword_213D98278);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27C8EB9C8, qword_213D98278);
  (*(*(v36 - 8) + 56))(v29, 0, 1, v36);
  sub_213D3C250(v29);
  v209 = a5;
  sub_213CE2A1C(*(v5 + a5[25]) + 16, v227);
  Strong = swift_unknownObjectWeakLoadStrong();
  sub_213CE2AD4(v227);
  if (!Strong || (Strong, Strong != a1))
  {
    swift_unknownObjectWeakAssign();

    sub_213D905AC();
  }

  v211 = a1;
  v38 = *(a2 + qword_27C8EB3F0);
  v39 = *(a2 + qword_27C8EB3F0 + 8);
  v41 = *v6;
  v40 = v6[1];
  v42 = sub_213D6E568(*v6);
  v45 = v38 != -1 && v42 != -1 && v38 == v42 && v39 == v40;
  LODWORD(v46) = !v45;
  v208 = a2;
  v226 = v6;
  if (v45)
  {
    goto LABEL_42;
  }

  v47 = sub_213D2556C(v6 + v209[21], v41, v40, *(v209 + 2), *(v209 + 3), *(v209 + 4), *(v209 + 5));
  KeyPath = swift_getKeyPath();
  v227[0] = v211;
  v202[2] = KeyPath;
  v49 = sub_213D12848(v211, v47, v207, v210, KeyPath);
  v50 = v49[2];
  v206 = v46;
  if (v50)
  {
    v202[1] = v47;
    v228 = MEMORY[0x277D84F90];
    sub_213D91E1C();
    v51 = 0;
    v52 = v49 + ((*(v225 + 80) + 32) & ~*(v225 + 80));
    v6 = &unk_213D972E0;
    do
    {
      if (v51 >= v49[2])
      {
        __break(1u);
        goto LABEL_34;
      }

      v53 = v51 + 1;
      sub_213CE2C28(&v52[*(v225 + 72) * v51], v26, &qword_27C8EB288, &unk_213D972E0);
      v54 = v220;
      sub_213CE2C28(v26, v220, &qword_27C8EB288, &unk_213D972E0);
      v55 = *v54;
      v56 = v221;
      v57 = *(v222 + 48);
      *v221 = *v54;
      sub_213D49AE0(v54 + v57, v56 + v57, type metadata accessor for CustomAnnotationViewModel);
      v58 = v55;
      sub_213CD8330(v56, &qword_27C8EB288, &unk_213D972E0);
      sub_213CD8330(v26, &qword_27C8EB288, &unk_213D972E0);
      sub_213D91DEC();
      v46 = *(v228 + 16);
      sub_213D91E2C();
      sub_213D91E3C();
      sub_213D91DFC();
      v51 = v53;
    }

    while (v50 != v53);

    v50 = v228;
    v6 = v226;
    LODWORD(v46) = v206;
  }

  else
  {

    v50 = MEMORY[0x277D84F90];
  }

  v228 = MEMORY[0x277D84F90];
  if (v50 >> 62)
  {
    goto LABEL_36;
  }

  for (i = *((v50 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_213D91EBC())
  {
    v60 = 0;
    LODWORD(v46) = v50 & 0xFFFFFFF8;
    while (1)
    {
      if ((v50 & 0xC000000000000001) != 0)
      {
        MEMORY[0x21604EF80](v60, v50);
      }

      else
      {
        if (v60 >= *((v50 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_35;
        }

        v61 = *(v50 + 8 * v60 + 32);
      }

      v62 = v60 + 1;
      if (__OFADD__(v60, 1))
      {
        break;
      }

      sub_213D91DEC();
      sub_213D91E2C();
      sub_213D91E3C();
      sub_213D91DFC();
      ++v60;
      if (v62 == i)
      {
        v63 = v228;
        LODWORD(v46) = v206;
        goto LABEL_38;
      }
    }

LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    ;
  }

  v63 = MEMORY[0x277D84F90];
LABEL_38:

  if ((v63 & 0x8000000000000000) == 0 && (v63 & 0x4000000000000000) == 0)
  {
    sub_213D91F6C();
    v64 = v63;
    goto LABEL_41;
  }

  while (1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C8EB210, &unk_213D97270);
    v64 = sub_213D91EAC();

LABEL_41:

    v65 = off_28263B048[0];
    v66 = sub_213CE2B34(0, &qword_27C8EB2B8, 0x277CD4EC8);
    v65(v64, v66, &off_28263B040);

    a2 = v208;
LABEL_42:
    v67 = *(a2 + qword_27C8EB3F8);
    v68 = *(a2 + qword_27C8EB3F8 + 8);
    v69 = v6[2];
    v70 = v6[3];
    v71 = sub_213D6E568(v69);
    if (v67 == -1 || v71 == -1 || v67 != v71 || v68 != v70)
    {
      v75 = v207;
      v76 = sub_213D25A60(v6 + v209[21], v207, 0, v69, v70, *(v209 + 2), *(v209 + 3), *(v209 + 4), *(v209 + 5));
      v77 = swift_getKeyPath();
      v227[0] = v211;
      v225 = v77;
      v78 = sub_213D10738(v211, v76, v75, v210, v77);
      v79 = v78[2];
      if (v79)
      {
        v222 = v76;
        v228 = MEMORY[0x277D84F90];
        sub_213D91E1C();
        v80 = 0;
        v6 = (v78 + ((*(v224 + 80) + 32) & ~*(v224 + 80)));
        while (v80 < v78[2])
        {
          v81 = v80 + 1;
          v67 = v216;
          sub_213CE2C28(v6 + *(v224 + 72) * v80, v216, &unk_27C8EBAA0, &unk_213D972B0);
          v82 = v217;
          sub_213CE2C28(v67, v217, &unk_27C8EBAA0, &unk_213D972B0);
          v83 = *v82;
          v84 = v218;
          v85 = *(v219 + 48);
          *v218 = *v82;
          sub_213D49AE0(v82 + v85, v84 + v85, type metadata accessor for MarkerAnnotationViewModel);
          v86 = v83;
          sub_213CD8330(v84, &unk_27C8EBAA0, &unk_213D972B0);
          sub_213CD8330(v67, &unk_27C8EBAA0, &unk_213D972B0);
          sub_213D91DEC();
          sub_213D91E2C();
          sub_213D91E3C();
          sub_213D91DFC();
          v80 = v81;
          if (v79 == v81)
          {

            v67 = v228;
            v6 = v226;
            goto LABEL_58;
          }
        }

        __break(1u);
        goto LABEL_69;
      }

      v67 = MEMORY[0x277D84F90];
LABEL_58:
      v228 = MEMORY[0x277D84F90];
      if (v67 >> 62)
      {
        goto LABEL_71;
      }

      for (j = *((v67 & 0xFFFFFFFFFFFFFF8) + 0x10); j; j = sub_213D91EBC())
      {
        v88 = 0;
        while (1)
        {
          if ((v67 & 0xC000000000000001) != 0)
          {
            MEMORY[0x21604EF80](v88, v67);
          }

          else
          {
            if (v88 >= *((v67 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_70;
            }

            v89 = *(v67 + 8 * v88 + 32);
          }

          v90 = v88 + 1;
          if (__OFADD__(v88, 1))
          {
            break;
          }

          sub_213D91DEC();
          sub_213D91E2C();
          sub_213D91E3C();
          sub_213D91DFC();
          ++v88;
          if (v90 == j)
          {
            v91 = v228;
            goto LABEL_73;
          }
        }

LABEL_69:
        __break(1u);
LABEL_70:
        __break(1u);
LABEL_71:
        ;
      }

      v91 = MEMORY[0x277D84F90];
LABEL_73:

      if (v91 < 0 || (v91 & 0x4000000000000000) != 0)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C8EB210, &unk_213D97270);
        v92 = sub_213D91EAC();
      }

      else
      {
        sub_213D91F6C();
        v92 = v91;
      }

      v93 = off_28263B048[0];
      v94 = sub_213CE2B34(0, &qword_27C8EB2B8, 0x277CD4EC8);
      v93(v92, v94, &off_28263B040);

      LODWORD(v46) = 1;
      a2 = v208;
    }

    v95 = *(a2 + qword_27C8EB408);
    v96 = *(a2 + qword_27C8EB408 + 8);
    v97 = v6[11];
    v225 = v6[10];
    v98 = sub_213D6E568(v225);
    if (v95 != -1 && v98 != -1 && v95 == v98 && v96 == v97)
    {
      goto LABEL_112;
    }

    v206 = v46;
    v102 = sub_213D25F74(v6 + v209[21], v225, v97, *(v209 + 2), *(v209 + 3), *(v209 + 4), *(v209 + 5));
    v103 = swift_getKeyPath();
    v227[0] = v211;
    v104 = sub_213D0E7A4(v211, v102, v207, v210, v103);
    v46 = v104[2];
    if (!v46)
    {
      break;
    }

    v222 = v102;
    v224 = v103;
    v228 = MEMORY[0x277D84F90];
    sub_213D91E1C();
    v105 = 0;
    v106 = v104 + ((*(v223 + 80) + 32) & ~*(v223 + 80));
    while (v105 < v104[2])
    {
      v107 = v105 + 1;
      v108 = v212;
      sub_213CE2C28(&v106[*(v223 + 72) * v105], v212, &qword_27C8EB208, &unk_213D97260);
      v109 = v213;
      sub_213CE2C28(v108, v213, &qword_27C8EB208, &unk_213D97260);
      v110 = *v109;
      v111 = v214;
      v112 = *(v215 + 48);
      *v214 = *v109;
      sub_213D49AE0(v109 + v112, v111 + v112, type metadata accessor for UserAnnotationViewModel);
      v113 = v110;
      sub_213CD8330(v111, &qword_27C8EB208, &unk_213D97260);
      sub_213CD8330(v108, &qword_27C8EB208, &unk_213D97260);
      sub_213D91DEC();
      sub_213D91E2C();
      v6 = v226;
      sub_213D91E3C();
      sub_213D91DFC();
      v105 = v107;
      if (v46 == v107)
      {

        v114 = v228;
        goto LABEL_93;
      }
    }

    __break(1u);
LABEL_105:
    __break(1u);
LABEL_106:
    __break(1u);
  }

  v114 = MEMORY[0x277D84F90];
LABEL_93:
  LODWORD(v46) = v206;
  if (v114 >> 62)
  {
    v122 = v114;
    v115 = sub_213D91EBC();
    v114 = v122;
    if (v115)
    {
      goto LABEL_95;
    }
  }

  else
  {
    v115 = *((v114 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v115)
    {
LABEL_95:
      v116 = 0;
      v117 = v114 & 0xC000000000000001;
      v118 = v114 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        while (!v117)
        {
          if ((v116 & 0x8000000000000000) != 0)
          {
            goto LABEL_105;
          }

          if (v116 >= *(v118 + 16))
          {
            goto LABEL_106;
          }

          if (++v116 == v115)
          {
            goto LABEL_109;
          }
        }

        v119 = v114;
        MEMORY[0x21604EF80](v116);
        result = swift_unknownObjectRelease();
        if (__OFADD__(v116++, 1))
        {
          break;
        }

        v114 = v119;
        if (v116 == v115)
        {
          goto LABEL_109;
        }
      }

      __break(1u);
      return result;
    }
  }

LABEL_109:

  if (MEMORY[0x277D84F90] >> 62)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C8EB210, &unk_213D97270);
    v123 = sub_213D91EAC();
  }

  else
  {
    v123 = MEMORY[0x277D84F90];
    sub_213D91F0C();
  }

  v124 = off_28263B048[0];
  v125 = sub_213CE2B34(0, &qword_27C8EB2B8, 0x277CD4EC8);
  v124(v123, v125, &off_28263B040);

  a2 = v208;
LABEL_112:
  v126 = *(a2 + qword_27C8EB420);
  v127 = *(a2 + qword_27C8EB420 + 8);
  v128 = v6[4];
  v129 = v6[5];
  v130 = sub_213D6E568(v128);
  if (v126 == -1 || v130 == -1 || v126 != v130 || v127 != v129)
  {
    v134 = sub_213D26468(v128);
    v135 = swift_getKeyPath();
    sub_213D16E44(v211, v134, v207, v210, v135);

    LODWORD(v46) = 1;
  }

  v136 = *(a2 + qword_27C8EB428);
  v137 = *(a2 + qword_27C8EB428 + 8);
  v138 = v6[6];
  v139 = v6[7];
  v140 = sub_213D6E568(v138);
  if (v136 == -1 || v140 == -1 || v136 != v140 || v137 != v139)
  {
    v144 = sub_213D26950(v138);
    v145 = swift_getKeyPath();
    sub_213D17334(v211, v144, v207, v210, v145);

    LODWORD(v46) = 1;
  }

  v146 = *(a2 + qword_27C8EB430);
  v147 = *(a2 + qword_27C8EB430 + 8);
  v148 = v6[8];
  v149 = v6[9];
  v150 = sub_213D6E568(v148);
  if (v146 == -1 || v150 == -1 || v146 != v150 || v147 != v149)
  {
    v151 = sub_213D26EB4(v148);
    v152 = swift_getKeyPath();
    sub_213D177D0(v211, v151, v207, v210, v152);

    LODWORD(v46) = 1;
  }

  v153 = v6[13];
  v154 = v6[14];
  v227[0] = v6[12];
  v227[1] = v153;
  v227[2] = v154;
  v155 = *(v225 + 16) != 0;
  v156 = v210 != 0;

  sub_213D1DFC0(v154);
  v157 = v211;
  sub_213D3CC0C(v211, v227, v46, v155, v156);

  v158 = v154;
  v159 = v208;
  sub_213D1E068(v158);
  v160 = v209;
  sub_213D3D530(v157, v6 + v209[21], v156);
  v161 = sub_213D36E54(v160);
  if (v161)
  {
    v163 = v161;
    v164 = v162;
    v165 = swift_allocObject();
    *(v165 + 16) = v163;
    *(v165 + 24) = v164;
    v166 = sub_213D49770;
  }

  else
  {
    v166 = sub_213CCCFF0;
    v165 = 0;
  }

  v167 = v210 != 0;
  v168 = swift_allocObject();
  *(v168 + 16) = v166;
  *(v168 + 24) = v165;
  v169 = v211;
  sub_213D41E5C(v211, sub_213D49738, v168, v167);
  v170 = v169;

  v171 = v209;
  v172 = sub_213D3702C(v209);
  v174 = v173;
  sub_213CD4E28(v172, v173);
  v175 = MEMORY[0x277D85000];
  v176 = (v159 + *((*MEMORY[0x277D85000] & *v159) + 0x238));
  v177 = *v176;
  v178 = v176[1];
  *v176 = v172;
  v176[1] = v174;
  sub_213CCE520(v177, v178);
  sub_213CCE520(v172, v174);
  sub_213D371B4(v171, v227);
  *(v159 + *((*v175 & *v159) + 0x240)) = v227[0];
  sub_213D39814(v170, v171);
  sub_213D398C0(v170, v171);
  sub_213D3B54C(v170, v167);
  v179 = v6 + v171[38];
  v180 = *v179;
  if (v179[8] != 1)
  {

    sub_213D91BDC();
    v181 = sub_213D9119C();
    sub_213D9043C();

    v182 = v203;
    sub_213D90BFC();
    swift_getAtKeyPath();
    sub_213CCCE18(v180, 0);
    (*(v204 + 8))(v182, v205);
    LOBYTE(v180) = v227[0];
  }

  v227[0] = v6[24];
  sub_213D422A0(v170, v180 & 1, v227);
  v183 = v209;
  sub_213D3B8C4(v170, v209);
  v184 = sub_213D3746C(v183);
  if (v184 != 2)
  {
    [v170 _setScrollEdgeEffectViewInteractionDisabled_];
  }

  v185 = v6[9];
  v186 = sub_213D6E568(v6[8]);
  v187 = v159 + qword_27C8EB430;
  *v187 = v186;
  *(v187 + 1) = v185;
  v188 = v6[7];
  v189 = sub_213D6E568(v6[6]);
  v190 = v159 + qword_27C8EB428;
  *v190 = v189;
  *(v190 + 1) = v188;
  v191 = v6[5];
  v192 = sub_213D6E568(v6[4]);
  v193 = v159 + qword_27C8EB420;
  *v193 = v192;
  *(v193 + 1) = v191;
  v194 = v6[11];
  v195 = sub_213D6E568(v6[10]);
  v196 = v159 + qword_27C8EB408;
  *v196 = v195;
  *(v196 + 1) = v194;
  v197 = v6[3];
  v198 = sub_213D6E568(v6[2]);
  v199 = v159 + qword_27C8EB3F8;
  *v199 = v198;
  *(v199 + 1) = v197;
  v200 = v6[1];
  result = sub_213D6E568(*v6);
  v201 = v159 + qword_27C8EB3F0;
  *v201 = result;
  *(v201 + 1) = v200;
  return result;
}

uint64_t sub_213D3904C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EB0C8, &qword_213D97090);
  sub_213D9118C();
  *(swift_allocObject() + 16) = xmmword_213D94520;
  sub_213D9117C();
  sub_213D4C8F8(&qword_27C8EB0D0, 255, MEMORY[0x277CDE558], MEMORY[0x277CDE560]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EB0D8, &qword_213D97098);
  sub_213CEDCEC(&qword_27C8EB0E0, &qword_27C8EB0D8, &qword_213D97098, MEMORY[0x277D83970]);
  return sub_213D91CBC();
}

id sub_213D391D0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_213D496F0(a1[2], a1[3], a1[4], a1[5]);
  *a2 = result;
  return result;
}

id sub_213D3931C(uint64_t a1, uint64_t a2, void *a3)
{
  if (*(a1 + *a3 + 8))
  {

    v3 = sub_213D9190C();
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t sub_213D39394(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a3)
  {
    v6 = sub_213D9193C();
  }

  else
  {
    v6 = 0;
    v7 = 0;
  }

  v8 = (a1 + *a4);
  *v8 = v6;
  v8[1] = v7;
}

void sub_213D39490(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5)
{

  v7 = *(a1 + *a5);
}

id sub_213D395B4(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void sub_213D39610(uint64_t a1)
{
  v10 = "\b";
  sub_213D4C5D8(319, &qword_27C8EB9B8, type metadata accessor for _MapContentInputs, MEMORY[0x277D83D88]);
  if (v3 <= 0x3F)
  {
    v11 = *(v2 - 8) + 64;
    v12 = &unk_213D98218;
    v13 = &unk_213D98230;
    v4 = *(a1 + 488);
    v9[0] = *(a1 + 472);
    v9[1] = v4;
    type metadata accessor for MapSelectionManagerBox(255, v9);
    sub_213D9162C();
    v5 = sub_213D91C7C();
    if (v6 <= 0x3F)
    {
      v14 = *(v5 - 8) + 64;
      v15 = &unk_213D98230;
      v16 = &unk_213D98230;
      v17 = &unk_213D98248;
      v18 = &unk_213D98248;
      v19 = &unk_213D98260;
      sub_213D4C68C(319, &qword_27C8EB9C0, qword_27C8EB9C8, qword_213D98278, MEMORY[0x277D83D88]);
      if (v8 <= 0x3F)
      {
        v20 = *(v7 - 8) + 64;
        v21 = MEMORY[0x277D833F0] + 64;
        swift_initClassMetadata2();
      }
    }
  }
}

void sub_213D39814(void *a1, uint64_t a2)
{
  sub_213D36808(a2, v4);
  isa = MapStyle.configuration()().super.isa;
  v6[6] = v4[6];
  v6[7] = v4[7];
  v6[8] = v4[8];
  v7 = v5;
  v6[2] = v4[2];
  v6[3] = v4[3];
  v6[4] = v4[4];
  v6[5] = v4[5];
  v6[0] = v4[0];
  v6[1] = v4[1];
  sub_213CEB3CC(v6);
  [a1 setPreferredConfiguration_];
}

id sub_213D398C0(void *a1, uint64_t a2)
{
  v3 = v2;
  v229 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EBAC8, &unk_213D98580);
  MEMORY[0x28223BE20](v5 - 8);
  v210 = &v183 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v208 = &v183 - v8;
  MEMORY[0x28223BE20](v9);
  v205 = &v183 - v10;
  v216 = type metadata accessor for MapUserLocationButtonConfig(0);
  v225 = *(v216 - 8);
  MEMORY[0x28223BE20](v216);
  v211 = &v183 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v209 = &v183 - v13;
  MEMORY[0x28223BE20](v14);
  v206 = &v183 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EBAD0, &unk_213D9DF50);
  MEMORY[0x28223BE20](v16 - 8);
  v201 = &v183 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v197 = &v183 - v19;
  v200 = type metadata accessor for MapCompassConfig(0);
  v199 = *(v200 - 8);
  MEMORY[0x28223BE20](v200);
  v203 = (&v183 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v21);
  v198 = &v183 - v22;
  v215 = sub_213D90A6C();
  v221 = *(v215 - 8);
  MEMORY[0x28223BE20](v215);
  v207 = &v183 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v214 = &v183 - v25;
  MEMORY[0x28223BE20](v26);
  v192 = &v183 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EBAD8, &unk_213D98590);
  MEMORY[0x28223BE20](v28 - 8);
  v193 = &v183 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v189 = (&v183 - v31);
  MEMORY[0x28223BE20](v32);
  v187 = (&v183 - v33);
  v213 = type metadata accessor for MapPitchToggleConfig(0);
  v217 = *(v213 - 8);
  MEMORY[0x28223BE20](v213);
  v194 = &v183 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35);
  v190 = &v183 - v36;
  MEMORY[0x28223BE20](v37);
  v188 = &v183 - v38;
  v39 = sub_213D9051C();
  v224 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v222 = &v183 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C8EBAE0, &unk_213D9DF40);
  MEMORY[0x28223BE20](v41 - 8);
  v220 = &v183 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v43);
  v45 = &v183 - v44;
  v46 = type metadata accessor for MapScaleViewConfig(0);
  v47 = *(v46 - 8);
  MEMORY[0x28223BE20](v46);
  v219 = &v183 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v49);
  v51 = &v183 - v50;
  v52 = type metadata accessor for MapControlsConfig(0);
  MEMORY[0x28223BE20](v52);
  v204 = &v183 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v54);
  v202 = &v183 - v55;
  MEMORY[0x28223BE20](v56);
  v196 = &v183 - v57;
  MEMORY[0x28223BE20](v58);
  v195 = &v183 - v59;
  MEMORY[0x28223BE20](v60);
  v191 = &v183 - v61;
  MEMORY[0x28223BE20](v62);
  v186 = &v183 - v63;
  MEMORY[0x28223BE20](v64);
  v185 = &v183 - v65;
  MEMORY[0x28223BE20](v66);
  v184 = &v183 - v67;
  MEMORY[0x28223BE20](v68);
  v70 = &v183 - v69;
  MEMORY[0x28223BE20](v71);
  v73 = &v183 - v72;
  v226 = a2;
  v228 = v3;
  sub_213D36B18(a2, &v183 - v72);
  v223 = v52;
  sub_213CE2C28(&v73[*(v52 + 20)], v45, &unk_27C8EBAE0, &unk_213D9DF40);
  v74 = *(v47 + 48);
  v75 = v74(v45, 1, v46);
  v76 = MEMORY[0x277CDF440];
  v227 = v39;
  if (v75 == 1)
  {
    v77 = sub_213D90D6C();
    sub_213D49B70(v73, type metadata accessor for MapControlsConfig);
    v78 = v224;
    (*(v224 + 104))(&v51[*(v46 + 28)], *v76, v39);
    *(v51 + 1) = v77;
    *v51 = 512;
    if (v74(v45, 1, v46) != 1)
    {
      sub_213CD8330(v45, &unk_27C8EBAE0, &unk_213D9DF40);
    }
  }

  else
  {
    sub_213D49B70(v73, type metadata accessor for MapControlsConfig);
    sub_213D49AE0(v45, v51, type metadata accessor for MapScaleViewConfig);
    v78 = v224;
  }

  v79 = v226;
  v80 = sub_213D36D00(v226);
  v81 = v213;
  if (*v51)
  {
    v82 = v80;
    if (v80 == 3)
    {
      v83 = v51[1];
      sub_213D49B70(v51, type metadata accessor for MapScaleViewConfig);
      v84 = qword_213D98B98[v83];
    }

    else
    {
      sub_213D49B70(v51, type metadata accessor for MapScaleViewConfig);
      v84 = qword_213D98B98[v82];
    }
  }

  else
  {
    sub_213D49B70(v51, type metadata accessor for MapScaleViewConfig);
    v84 = 1;
  }

  [v229 _setScaleVisibility_];
  sub_213D36B18(v79, v70);
  v85 = v220;
  sub_213CE2C28(&v70[*(v223 + 20)], v220, &unk_27C8EBAE0, &unk_213D9DF40);
  v86 = v74(v85, 1, v46);
  v87 = v227;
  v88 = MEMORY[0x277CDF440];
  if (v86 == 1)
  {
    v89 = sub_213D90D6C();
    sub_213D49B70(v70, type metadata accessor for MapControlsConfig);
    v90 = *v88;
    v91 = v219;
    (*(v78 + 104))(v219 + *(v46 + 28), v90, v87);
    *(v91 + 8) = v89;
    v92 = v220;
    *v91 = 512;
    if (v74(v92, 1, v46) != 1)
    {
      sub_213CD8330(v92, &unk_27C8EBAE0, &unk_213D9DF40);
    }
  }

  else
  {
    sub_213D49B70(v70, type metadata accessor for MapControlsConfig);
    v91 = v219;
    sub_213D49AE0(v85, v219, type metadata accessor for MapScaleViewConfig);
  }

  v220 = *(v79 + 108);
  v93 = v222;
  sub_213D48710(&qword_27C8EBAF0, &qword_213D9A2A0, MEMORY[0x277CDF450], v222);
  v94 = sub_213D4F514(v93);
  v95 = v227;
  v218 = *(v78 + 8);
  v219 = v78 + 8;
  v218(v93, v227);
  sub_213D49B70(v91, type metadata accessor for MapScaleViewConfig);
  [v229 _setScaleControlSize_];
  v96 = v184;
  sub_213D36B18(v79, v184);
  v97 = v187;
  sub_213CE2C28(v96, v187, &qword_27C8EBAD8, &unk_213D98590);
  v99 = (v217 + 48);
  v98 = *(v217 + 6);
  v100 = v98(v97, 1, v81);
  v101 = v188;
  v212 = v98;
  if (v100 == 1)
  {
    sub_213D90A5C();
    sub_213D49B70(v96, type metadata accessor for MapControlsConfig);
    (*(v78 + 104))(&v101[v81[7]], *MEMORY[0x277CDF440], v95);
    v101[1] = 2;
    *&v101[v81[8]] = 0;
    *v101 = 0;
    if (v98(v97, 1, v81) != 1)
    {
      sub_213CD8330(v97, &qword_27C8EBAD8, &unk_213D98590);
    }
  }

  else
  {
    sub_213D49B70(v96, type metadata accessor for MapControlsConfig);
    sub_213D49AE0(v97, v101, type metadata accessor for MapPitchToggleConfig);
  }

  v102 = sub_213D36D00(v79);
  if (*v101)
  {
    v103 = v102;
    if (v102 == 3)
    {
      v104 = v101[1];
      sub_213D49B70(v101, type metadata accessor for MapPitchToggleConfig);
      v105 = qword_213D98B98[v104];
    }

    else
    {
      sub_213D49B70(v101, type metadata accessor for MapPitchToggleConfig);
      v105 = qword_213D98B98[v103];
    }
  }

  else
  {
    sub_213D49B70(v101, type metadata accessor for MapPitchToggleConfig);
    v105 = 1;
  }

  [v229 setPitchButtonVisibility_];
  v106 = v185;
  sub_213D36B18(v79, v185);
  v107 = v189;
  sub_213CE2C28(v106, v189, &qword_27C8EBAD8, &unk_213D98590);
  v108 = v212;
  v109 = v212(v107, 1, v81);
  v110 = v190;
  v217 = v99;
  if (v109 == 1)
  {
    sub_213D90A5C();
    sub_213D49B70(v106, type metadata accessor for MapControlsConfig);
    (*(v78 + 104))(&v110[v81[7]], *MEMORY[0x277CDF440], v95);
    v110[1] = 2;
    *&v110[v81[8]] = 0;
    *v110 = 0;
    if (v108(v107, 1, v81) != 1)
    {
      sub_213CD8330(v107, &qword_27C8EBAD8, &unk_213D98590);
    }
  }

  else
  {
    sub_213D49B70(v106, type metadata accessor for MapControlsConfig);
    sub_213D49AE0(v107, v110, type metadata accessor for MapPitchToggleConfig);
  }

  v188 = *(v79 + 104);
  v111 = v192;
  sub_213D48710(&qword_27C8EC550, &qword_213D94A80, MEMORY[0x277CDDBB8], v192);
  v112 = v110;
  v113 = &v110[v81[6]];
  v114 = v214;
  sub_213D90A5C();
  v115 = sub_213D90A2C();
  v116 = v221;
  v118 = v221 + 8;
  v117 = *(v221 + 8);
  v119 = v215;
  v117(v114, v215);
  v122 = *(v116 + 16);
  v121 = v116 + 16;
  v120 = v122;
  if (v115)
  {
    v123 = v111;
  }

  else
  {
    v123 = v113;
  }

  v221 = v121;
  v187 = v120;
  (v120)(v114, v123, v119);
  v124 = v213;
  v125 = sub_213D8B784(v114, 1);
  v192 = v118;
  v189 = v117;
  v117(v111, v119);
  sub_213D49B70(v112, type metadata accessor for MapPitchToggleConfig);
  [v229 _setPitchButtonBackgroundStyle_];
  v126 = v186;
  sub_213D36B18(v226, v186);
  v127 = v193;
  sub_213CE2C28(v126, v193, &qword_27C8EBAD8, &unk_213D98590);
  v128 = v212;
  if (v212(v127, 1, v124) == 1)
  {
    v129 = v194;
    sub_213D90A5C();
    sub_213D49B70(v126, type metadata accessor for MapControlsConfig);
    (*(v224 + 104))(&v129[*(v124 + 28)], *MEMORY[0x277CDF440], v227);
    v129[1] = 2;
    *&v129[*(v124 + 32)] = 0;
    *v129 = 0;
    v130 = v128(v127, 1, v124);
    v132 = v222;
    v131 = v223;
    v133 = v200;
    v134 = v198;
    if (v130 != 1)
    {
      sub_213CD8330(v127, &qword_27C8EBAD8, &unk_213D98590);
    }
  }

  else
  {
    sub_213D49B70(v126, type metadata accessor for MapControlsConfig);
    v129 = v194;
    sub_213D49AE0(v127, v194, type metadata accessor for MapPitchToggleConfig);
    v132 = v222;
    v131 = v223;
    v133 = v200;
    v134 = v198;
  }

  sub_213D48710(&qword_27C8EBAF0, &qword_213D9A2A0, MEMORY[0x277CDF450], v132);
  v135 = sub_213CDF85C(v132);
  v136 = v227;
  v218(v132, v227);
  sub_213D49B70(v129, type metadata accessor for MapPitchToggleConfig);
  [v229 _setPitchButtonControlSize_];
  v137 = v191;
  v138 = v226;
  sub_213D36B18(v226, v191);
  v139 = v197;
  sub_213CE2C28(v137 + *(v131 + 28), v197, &qword_27C8EBAD0, &unk_213D9DF50);
  sub_213D49B70(v137, type metadata accessor for MapControlsConfig);
  v140 = *(v199 + 48);
  if (v140(v139, 1, v133) == 1)
  {
    v141 = v136;
    (*(v224 + 104))(&v134[*(v133 + 24)], *MEMORY[0x277CDF440], v136);
    *v134 = 512;
    if (v140(v139, 1, v133) != 1)
    {
      sub_213CD8330(v139, &qword_27C8EBAD0, &unk_213D9DF50);
    }
  }

  else
  {
    v141 = v136;
    sub_213D49AE0(v139, v134, type metadata accessor for MapCompassConfig);
  }

  sub_213D36D00(v138);
  v142 = v223;
  if (*v134)
  {
    v143 = sub_213D904DC() ^ 1;
  }

  else
  {
    v143 = 0;
  }

  sub_213D49B70(v134, type metadata accessor for MapCompassConfig);
  [v229 setShowsCompass_];
  v144 = v195;
  sub_213D36B18(v138, v195);
  v145 = v201;
  sub_213CE2C28(v144 + *(v142 + 28), v201, &qword_27C8EBAD0, &unk_213D9DF50);
  sub_213D49B70(v144, type metadata accessor for MapControlsConfig);
  if (v140(v145, 1, v133) == 1)
  {
    v146 = v145;
    v147 = v203;
    (*(v224 + 104))(v203 + *(v133 + 24), *MEMORY[0x277CDF440], v227);
    *v147 = 512;
    v148 = v140(v146, 1, v133);
    v141 = v227;
    v149 = v147;
    v150 = v206;
    if (v148 != 1)
    {
      sub_213CD8330(v146, &qword_27C8EBAD0, &unk_213D9DF50);
    }
  }

  else
  {
    v149 = v203;
    sub_213D49AE0(v145, v203, type metadata accessor for MapCompassConfig);
    v150 = v206;
  }

  sub_213D48710(&qword_27C8EBAF0, &qword_213D9A2A0, MEMORY[0x277CDF450], v132);
  v151 = v149;
  v152 = sub_213D652C4(v132);
  v218(v132, v141);
  sub_213D49B70(v151, type metadata accessor for MapCompassConfig);
  [v229 setCompassViewSize_];
  v153 = v196;
  sub_213D36B18(v138, v196);
  v154 = v205;
  sub_213CE2C28(v153 + *(v142 + 24), v205, &qword_27C8EBAC8, &unk_213D98580);
  v155 = v141;
  v156 = v225 + 48;
  v157 = *(v225 + 48);
  v158 = v216;
  v159 = v157(v154, 1, v216);
  v225 = v156;
  if (v159 == 1)
  {
    sub_213D90A5C();
    sub_213D49B70(v153, type metadata accessor for MapControlsConfig);
    (*(v224 + 104))(&v150[*(v158 + 28)], *MEMORY[0x277CDF440], v155);
    v150[1] = 2;
    *&v150[*(v158 + 32)] = 0;
    *v150 = 0;
    if (v157(v154, 1, v158) != 1)
    {
      sub_213CD8330(v154, &qword_27C8EBAC8, &unk_213D98580);
    }
  }

  else
  {
    sub_213D49B70(v153, type metadata accessor for MapControlsConfig);
    sub_213D49AE0(v154, v150, type metadata accessor for MapUserLocationButtonConfig);
  }

  sub_213D36D00(v138);
  v160 = v208;
  if (*v150)
  {
    v161 = sub_213D904DC() ^ 1;
  }

  else
  {
    v161 = 0;
  }

  sub_213D49B70(v150, type metadata accessor for MapUserLocationButtonConfig);
  [v229 setShowsUserTrackingButton_];
  v162 = v202;
  sub_213D36B18(v138, v202);
  sub_213CE2C28(v162 + *(v142 + 24), v160, &qword_27C8EBAC8, &unk_213D98580);
  v163 = v216;
  v164 = v157(v160, 1, v216);
  v217 = v157;
  if (v164 == 1)
  {
    v165 = v209;
    sub_213D90A5C();
    sub_213D49B70(v162, type metadata accessor for MapControlsConfig);
    (*(v224 + 104))(&v165[v163[7]], *MEMORY[0x277CDF440], v227);
    v165[1] = 2;
    *&v165[v163[8]] = 0;
    *v165 = 0;
    if (v157(v160, 1, v163) != 1)
    {
      sub_213CD8330(v160, &qword_27C8EBAC8, &unk_213D98580);
    }
  }

  else
  {
    sub_213D49B70(v162, type metadata accessor for MapControlsConfig);
    v165 = v209;
    sub_213D49AE0(v160, v209, type metadata accessor for MapUserLocationButtonConfig);
  }

  v166 = v207;
  sub_213D48710(&qword_27C8EC550, &qword_213D94A80, MEMORY[0x277CDDBB8], v207);
  v167 = &v165[v163[6]];
  v168 = v214;
  sub_213D90A5C();
  v169 = sub_213D90A2C();
  v170 = v215;
  v171 = v189;
  v189(v168, v215);
  if (v169)
  {
    v172 = v166;
  }

  else
  {
    v172 = v167;
  }

  (v187)(v168, v172, v170);
  v173 = sub_213D8B784(v168, 1);
  v171(v166, v170);
  sub_213D49B70(v165, type metadata accessor for MapUserLocationButtonConfig);
  [v229 _setUserTrackingButtonBackgroundStyle_];
  v174 = v204;
  v175 = v226;
  sub_213D36B18(v226, v204);
  v176 = v210;
  sub_213CE2C28(v174 + *(v223 + 24), v210, &qword_27C8EBAC8, &unk_213D98580);
  v177 = v217;
  if (v217(v176, 1, v163) == 1)
  {
    v178 = v211;
    sub_213D90A5C();
    sub_213D49B70(v174, type metadata accessor for MapControlsConfig);
    (*(v224 + 104))(&v178[v163[7]], *MEMORY[0x277CDF440], v227);
    v178[1] = 2;
    *&v178[v163[8]] = 0;
    *v178 = 0;
    if (v177(v176, 1, v163) != 1)
    {
      sub_213CD8330(v176, &qword_27C8EBAC8, &unk_213D98580);
    }
  }

  else
  {
    sub_213D49B70(v174, type metadata accessor for MapControlsConfig);
    v178 = v211;
    sub_213D49AE0(v176, v211, type metadata accessor for MapUserLocationButtonConfig);
  }

  v179 = v222;
  sub_213D48710(&qword_27C8EBAF0, &qword_213D9A2A0, MEMORY[0x277CDF450], v222);
  v180 = sub_213D83E18(v179);
  v218(v179, v227);
  sub_213D49B70(v178, type metadata accessor for MapUserLocationButtonConfig);
  v181 = v229;
  [v229 _setUserTrackingControlSize_];
  sub_213D366A4(v175);
  LOBYTE(v180) = sub_213D904DC();
  sub_213D366A4(v175);
  [v181 _setShowsAppleLogo_force_];
  return [v181 setShowsAttribution_];
}

void sub_213D3B54C(void *a1, char a2)
{
  sub_213CE2C28(v2 + 120, v22, qword_27C8EB6F0, &qword_213D98050);
  if (v23 == 1)
  {
    sub_213CD8330(v22, qword_27C8EB6F0, &qword_213D98050);
    v28 = 0u;
    v29 = 0u;
    v30 = 0;
LABEL_7:
    sub_213CD8330(&v28, &qword_27C8EBAC0, &qword_213D98578);
    [a1 setCameraBoundary_];
    goto LABEL_8;
  }

  sub_213CE2C28(v22, &v28, &qword_27C8EBAC0, &qword_213D98578);
  sub_213D49778(v22);
  if (!*(&v29 + 1))
  {
    goto LABEL_7;
  }

  sub_213D1E2DC(&v28, v31);
  v5 = v32;
  v6 = v33;
  __swift_project_boxed_opaque_existential_1(v31, v32);
  (*(v6 + 32))(&v28, v5, v6);
  v7 = v28;
  v8 = v29;
  LOBYTE(v5) = v30;
  v9 = objc_allocWithZone(MEMORY[0x277CD4E60]);
  v10 = &selRef_initWithCoordinateRegion_;
  if ((v5 & 1) == 0)
  {
    v10 = &selRef_initWithMapRect_;
  }

  v11 = [v9 *v10];
  [a1 setCameraBoundary:v11 animated:a2 & 1];

  __swift_destroy_boxed_opaque_existential_1(v31);
LABEL_8:
  sub_213CE2C28(v2 + 120, v22, qword_27C8EB6F0, &qword_213D98050);
  if (v23 == 1)
  {
LABEL_9:
    sub_213CD8330(v22, qword_27C8EB6F0, &qword_213D98050);
    goto LABEL_11;
  }

  v12 = v24;
  v13 = v25;
  sub_213D49778(v22);
  if ((v13 & 1) == 0)
  {
    sub_213CE2C28(v2 + 120, v22, qword_27C8EB6F0, &qword_213D98050);
    if (v23 == 1)
    {
      goto LABEL_9;
    }

    v19 = v26;
    v20 = v27;
    sub_213D49778(v22);
    if ((v20 & 1) == 0)
    {
      v21 = [objc_allocWithZone(MEMORY[0x277CD4E68]) initWithMinCenterCoordinateDistance:v12 maxCenterCoordinateDistance:v19];
      goto LABEL_23;
    }
  }

LABEL_11:
  sub_213CE2C28(v2 + 120, v22, qword_27C8EB6F0, &qword_213D98050);
  if (v23 == 1)
  {
    sub_213CD8330(v22, qword_27C8EB6F0, &qword_213D98050);
  }

  else
  {
    v14 = v24;
    v15 = v25;
    sub_213D49778(v22);
    if ((v15 & 1) == 0)
    {
      v21 = [objc_allocWithZone(MEMORY[0x277CD4E68]) initWithMinCenterCoordinateDistance_];
      goto LABEL_23;
    }
  }

  sub_213CE2C28(v2 + 120, v22, qword_27C8EB6F0, &qword_213D98050);
  if (v23 != 1)
  {
    v16 = v26;
    v17 = v27;
    sub_213D49778(v22);
    if (v17)
    {
      goto LABEL_17;
    }

    v21 = [objc_allocWithZone(MEMORY[0x277CD4E68]) initWithMaxCenterCoordinateDistance_];
LABEL_23:
    v18 = v21;
    goto LABEL_24;
  }

  sub_213CD8330(v22, qword_27C8EB6F0, &qword_213D98050);
LABEL_17:
  v18 = 0;
LABEL_24:
  [a1 setCameraZoomRange_];
}

id sub_213D3B8C4(void *a1, uint64_t a2)
{
  v37 = a1;
  v36 = sub_213D9089C();
  v3 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v5 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v32 - v7;
  v35 = sub_213D90ECC();
  v9 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_213D90C7C();
  v12 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = a2;
  sub_213D3629C(a2, v14);
  sub_213D90EBC();
  sub_213D911DC();
  sub_213D90C6C();
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  (*(v9 + 8))(v11, v35);
  (*(v12 + 8))(v14, v34);
  sub_213D364A0(a2, v8);
  v23 = *MEMORY[0x277CDFA88];
  v24 = *(v3 + 104);
  v25 = v36;
  v24(v5, v23, v36);
  v26 = sub_213D9088C();
  v27 = *(v3 + 8);
  v27(v5, v25);
  v27(v8, v25);
  if (v26)
  {
    v28 = v18;
  }

  else
  {
    v28 = v22;
  }

  sub_213D364A0(v33, v8);
  v24(v5, v23, v25);
  v29 = sub_213D9088C();
  v27(v5, v25);
  v27(v8, v25);
  if (v29)
  {
    v30 = v22;
  }

  else
  {
    v30 = v18;
  }

  return [v37 setLayoutMargins_];
}

uint64_t sub_213D3BC58@<X0>(uint64_t a1@<X8>)
{
  v3 = *((*MEMORY[0x277D85000] & *v1) + 0x200);
  swift_beginAccess();
  return sub_213CE2C28(v1 + v3, a1, &qword_27C8EBAB8, &qword_213D98470);
}

uint64_t sub_213D3BCDC(uint64_t a1)
{
  v3 = *((*MEMORY[0x277D85000] & *v1) + 0x200);
  swift_beginAccess();
  sub_213D4A7D0(a1, v1 + v3, &qword_27C8EBAB8, &qword_213D98470);
  return swift_endAccess();
}

void sub_213D3BD68(unint64_t *a1@<X8>)
{
  v2 = (v1 + *((*MEMORY[0x277D85000] & *v1) + 0x208));
  v3 = *v2;
  v4 = v2[1];
  v5 = v2[2];
  *a1 = *v2;
  a1[1] = v4;
  a1[2] = v5;
  sub_213D49818(v3, v4, v5);
}

double sub_213D3BDA4(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = (v1 + *((*MEMORY[0x277D85000] & *v1) + 0x208));
  v5 = *v3;
  v4 = v3[1];
  v6 = v3[2];
  *v3 = *a1;
  v3[2] = v2;
  return sub_213D49864(v5, v4, v6);
}

uint64_t sub_213D3BE44@<X0>(uint64_t a1@<X8>)
{
  v3 = *MEMORY[0x277D85000] & *v1;
  v4 = *(v3 + 0x218);
  swift_beginAccess();
  v5 = *(v3 + 488);
  v8[0] = *(v3 + 472);
  v8[1] = v5;
  type metadata accessor for MapSelectionManagerBox(255, v8);
  sub_213D9162C();
  v6 = sub_213D91C7C();
  return (*(*(v6 - 8) + 16))(a1, &v1[v4], v6);
}

uint64_t sub_213D3BF40(uint64_t a1)
{
  v3 = *MEMORY[0x277D85000] & *v1;
  v4 = *(v3 + 0x218);
  swift_beginAccess();
  v5 = *(v3 + 488);
  v8[0] = *(v3 + 472);
  v8[1] = v5;
  type metadata accessor for MapSelectionManagerBox(255, v8);
  sub_213D9162C();
  v6 = sub_213D91C7C();
  (*(*(v6 - 8) + 40))(&v1[v4], a1, v6);
  return swift_endAccess();
}

uint64_t sub_213D3C0F4(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + *((*MEMORY[0x277D85000] & *v2) + 0x230));
  v4 = *v3;
  v5 = v3[1];
  *v3 = a1;
  v3[1] = a2;
  return sub_213CCE520(v4, v5);
}

uint64_t sub_213D3C130(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + *((*MEMORY[0x277D85000] & *v2) + 0x238));
  v4 = *v3;
  v5 = v3[1];
  *v3 = a1;
  v3[1] = a2;
  return sub_213CCE520(v4, v5);
}

uint64_t sub_213D3C1CC@<X0>(uint64_t a1@<X8>)
{
  v3 = *((*MEMORY[0x277D85000] & *v1) + 0x248);
  swift_beginAccess();
  return sub_213CE2C28(v1 + v3, a1, &qword_27C8EBAB0, &qword_213D98468);
}

uint64_t sub_213D3C250(uint64_t a1)
{
  v3 = *((*MEMORY[0x277D85000] & *v1) + 0x248);
  swift_beginAccess();
  sub_213D4A7D0(a1, v1 + v3, &qword_27C8EBAB0, &qword_213D98468);
  return swift_endAccess();
}

void sub_213D3C310(unint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = a1;
  if ((a1 >> 61) < 4)
  {
    v5 = *MEMORY[0x277D768C8];
    v6 = *(MEMORY[0x277D768C8] + 8);
    v7 = *(MEMORY[0x277D768C8] + 16);
    v8 = *(MEMORY[0x277D768C8] + 24);
    sub_213D1DFC0(a1);
    v9 = 0;
    goto LABEL_28;
  }

  if (a1 >> 61 != 4)
  {
    if (a1 == 0xA000000000000000)
    {
      sub_213D2D09C(&v19);
      if ((v21 & 1) == 0)
      {
        v12 = swift_allocObject();
        v9 = 0;
        v13 = v19;
        v14 = v20;
        v3 = v12 | 0x2000000000000000;
        goto LABEL_27;
      }
    }

LABEL_10:
    v3 = 0;
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v9 = 2;
    goto LABEL_28;
  }

  v10 = *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
  if ([a2 hasUserLocation])
  {
    goto LABEL_10;
  }

  if (v10 == 0xA000000000000000)
  {
    sub_213D1DFC0(0xA000000000000000);
    sub_213D1DFC0(0xA000000000000000);
    sub_213D2D09C(&v19);
    if ((v21 & 1) == 0)
    {
      v12 = swift_allocObject();
      v13 = v19;
      v14 = v20;
      v3 = v12 | 0x2000000000000000;
      v9 = 1;
LABEL_27:
      *(v12 + 16) = v13;
      *(v12 + 32) = v14;
      v7 = 0x403C000000000000;
      v5 = 0x404C000000000000;
      v6 = 0x404C000000000000;
      v8 = 0x404C000000000000;
      goto LABEL_28;
    }

    goto LABEL_10;
  }

  sub_213D1DFC0(v10);
  sub_213D3C310(v10, a2, &v19);
  v15 = v19;
  v16 = *(&v20 + 1);
  v6 = v20;
  v17 = v21;
  v18 = v22;
  sub_213D1E068(v10);
  if (v18 == 2)
  {
    v3 = 0;
  }

  else
  {
    v3 = v15;
  }

  if (v18 == 2)
  {
    v5 = 0;
  }

  else
  {
    v5 = *(&v15 + 1);
  }

  if (v18 == 2)
  {
    v6 = 0;
    v7 = 0;
  }

  else
  {
    v7 = v16;
  }

  if (v18 == 2)
  {
    v8 = 0;
  }

  else
  {
    v8 = v17;
  }

  if (v18 == 2)
  {
    v9 = 2;
  }

  else
  {
    v9 = v18;
  }

LABEL_28:
  *a3 = v3;
  *(a3 + 8) = v5;
  *(a3 + 16) = v6;
  *(a3 + 24) = v7;
  *(a3 + 32) = v8;
  *(a3 + 40) = v9;
}

void sub_213D3C4C8(unint64_t a1, void *a2, char a3)
{
  v6 = (*MEMORY[0x277D85000] & *v3);
  sub_213D3C310(a1, a2, &v28);
  v7 = v31;
  if (v31 != 2)
  {
    v8 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v9 = swift_allocObject();
    v10 = v6[59];
    *(v9 + 16) = v10;
    v11 = v6[60];
    *(v9 + 24) = v11;
    v12 = v6[61];
    *(v9 + 32) = v12;
    v13 = v6[62];
    v14 = v29;
    *(v9 + 56) = v28;
    *(v9 + 40) = v13;
    *(v9 + 48) = v8;
    *(v9 + 72) = v14;
    *(v9 + 88) = v30;
    *(v9 + 96) = v7;
    *(v9 + 97) = a3 & 1;
    v15 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v16 = swift_allocObject();
    *&v17 = v10;
    *(&v17 + 1) = v11;
    *&v18 = v12;
    *(&v18 + 1) = v13;
    v24 = v18;
    v25 = v17;
    *(v16 + 16) = v17;
    *(v16 + 32) = v18;
    v19 = v29;
    *(v16 + 48) = v28;
    *(v16 + 64) = v19;
    *(v16 + 80) = v30;
    *(v16 + 88) = v7;
    *(v16 + 96) = v15;
    *(v16 + 104) = sub_213D49BD0;
    *(v16 + 112) = v9;
    aBlock[4] = sub_213D49BE8;
    aBlock[5] = v16;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_213CFF278;
    aBlock[3] = &block_descriptor_141;
    v20 = _Block_copy(aBlock);
    v26[1] = v24;
    v26[0] = v25;
    type metadata accessor for MapBridgingViewCoordinator.ResolvedCameraPosition(255, v26);
    v21 = sub_213D91C7C();
    v22 = *(v21 - 8);
    v23 = *(v22 + 16);
    v23(v26, &v28, v21);
    v23(v26, &v28, v21);

    [a2 _updateFramingUsingSetRegionBlock_];
    _Block_release(v20);

    (*(v22 + 8))(&v28, v21);
  }
}

void sub_213D3C7A0(uint64_t a1, double *a2, char a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = *a2;
    v8 = *a2 >> 61;
    if (v8 <= 1)
    {
      if (v8)
      {
        if (v8 == 1)
        {
          [Strong setVisibleMapRect:a3 & 1 edgePadding:*((v7 & 0x1FFFFFFFFFFFFFFFLL) + 0x10) animated:{*((v7 & 0x1FFFFFFFFFFFFFFFLL) + 0x18), *((v7 & 0x1FFFFFFFFFFFFFFFLL) + 0x20), *((v7 & 0x1FFFFFFFFFFFFFFFLL) + 0x28), a2[1], a2[2], a2[3], a2[4]}];
        }
      }

      else
      {
        [Strong setRegion:a3 & 1 animated:sub_213D65240(*((v7 & 0x1FFFFFFFFFFFFFFFLL) + 0x10))];
      }

      goto LABEL_12;
    }

    if (v8 == 2)
    {
      v11 = v7 & 0x1FFFFFFFFFFFFFFFLL;
      v12 = *(v11 + 16);
      v13 = *(v11 + 24);
      [Strong frame];
      v15 = v14;
      v17 = v16;
      v18 = objc_opt_self();
      v19 = [v18 cameraLookingAtMapItem:v12 forViewSize:v13 allowPitch:{v15, v17}];
      [v19 centerCoordinate];
      v21 = v20;
      v23 = v22;
      [v19 centerCoordinateDistance];
      v25 = v24;
      [v19 heading];
      v27 = v26;
      [v19 pitch];
      v29 = v28;

      v10 = [v18 cameraLookingAtCenterCoordinate:v21 fromDistance:v23 pitch:v25 heading:{v29, v27}];
    }

    else
    {
      if (v8 != 3)
      {
LABEL_12:

        return;
      }

      v9 = (v7 & 0x1FFFFFFFFFFFFFFFLL);
      v10 = [objc_opt_self() cameraLookingAtCenterCoordinate:v9[2] fromDistance:v9[3] pitch:v9[4] heading:{v9[6], v9[5]}];
    }

    v30 = v10;
    [v6 setCamera:v30 animated:a3 & 1];

    goto LABEL_12;
  }
}

void sub_213D3C9E0(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4)
{
  if (*(a1 + 40))
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v7 = Strong;
      aBlock[4] = a3;
      aBlock[5] = a4;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_213CFF278;
      aBlock[3] = &block_descriptor_144;
      v8 = _Block_copy(aBlock);

      [v7 _performActionAsIfGoingToDefaultLocation_];
      _Block_release(v8);
    }
  }

  else
  {
    a3();
  }
}

void sub_213D3CAD8(void *a1)
{
  v3 = (v1 + *((*MEMORY[0x277D85000] & *v1) + 0x208));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  sub_213D49818(*v3, v5, v6);
  if (v5)
  {

    sub_213D1DFC0(v6);
    sub_213D49864(v4, v5, v6);
    v9[1] = v4;
    v9[2] = v5;
    v9[3] = v6;
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EBA88, &qword_213D98450);
    MEMORY[0x21604E7B0](v9, v7);
    sub_213D49864(v4, v5, v6);
    v8 = v9[0];
    sub_213D3C4C8(v9[0], a1, 0);
    sub_213D1E068(v8);
  }

  else
  {

    sub_213D49864(v4, 0, v6);
  }
}

void sub_213D3CC0C(void *a1, double *a2, int a3, int a4, int a5)
{
  v6 = v5;
  v72 = a5;
  v68 = a4;
  v66 = a3;
  v73 = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EBB58, &unk_213D985B0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v65[-v9];
  *&v70.f64[0] = type metadata accessor for KeyframeAnimationState(0);
  v69.f64[0] = *(*&v70.f64[0] - 8);
  MEMORY[0x28223BE20](*&v70.f64[0]);
  v67 = &v65[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EBAB0, &qword_213D98468);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v65[-v13];
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27C8EB9C8, qword_213D98278);
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v71 = &v65[-v17];
  v18 = *(a2 + 1);
  v19 = *(a2 + 2);
  v75 = *a2;
  v76 = v19;
  v20 = (v6 + *((*MEMORY[0x277D85000] & *v6) + 0x208));
  v21 = *v20;
  v22 = v20[1];
  v23 = v20[2];
  sub_213D49818(*v20, v22, v23);
  if (v22)
  {

    sub_213D1DFC0(v23);
    sub_213D49864(v21, v22, v23);
    *&v77.f64[0] = v21;
    *&v77.f64[1] = v22;
    v78 = *&v23;
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EBA88, &qword_213D98450);
    MEMORY[0x21604E7B0](v81, v24);
    sub_213D49864(v21, v22, v23);
    v25 = v81[0];
  }

  else
  {
    sub_213D49864(v21, 0, v23);
    v25 = 0xF000000000000007;
  }

  v74 = v25;
  v26 = *&v75;

  v27 = v76;
  sub_213D1DFC0(v76);
  v28 = (v6 + *((*MEMORY[0x277D85000] & *v6) + 0x208));
  v29 = *v28;
  v30 = v28[1];
  v31 = v28[2];
  *v28 = v26;
  v28[1] = v18;
  v28[2] = v27;
  sub_213D49864(v29, v30, v31);
  sub_213D3C1CC(v14);
  v32 = (*(v16 + 48))(v14, 1, v15);
  v33 = v73;
  if (v32 == 1)
  {
    v34 = &qword_27C8EBAB0;
    v35 = &qword_213D98468;
    v36 = v14;
LABEL_8:
    sub_213CD8330(v36, v34, v35);
    v38 = v74;
    v39 = v76;
    goto LABEL_18;
  }

  v37 = v71;
  sub_213CED608(v14, v71, qword_27C8EB9C8, qword_213D98278);
  MEMORY[0x21604E7B0](v15);
  if ((*(*&v69.f64[0] + 48))(v10, 1, *&v70.f64[0]) == 1)
  {
    sub_213CD8330(v37, qword_27C8EB9C8, qword_213D98278);
    v34 = &qword_27C8EBB58;
    v35 = &unk_213D985B0;
    v36 = v10;
    goto LABEL_8;
  }

  v40 = v67;
  sub_213D49AE0(v10, v67, type metadata accessor for KeyframeAnimationState);
  v81[0] = v26;
  v81[1] = v18;
  v39 = v76;
  v81[2] = v76;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EBA88, &qword_213D98450);
  MEMORY[0x21604E7B0](&v80, v41);
  v42 = v80 & 0xE000000000000000;
  if ((v80 & 0xE000000000000000) == 0x6000000000000000)
  {
    v70 = *((v80 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    v43 = *((v80 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);
    v44 = *((v80 & 0x1FFFFFFFFFFFFFFFLL) + 0x28);
  }

  else
  {
    v44 = 0uLL;
    v70 = 0u;
    v43 = 0.0;
  }

  v69 = v44;
  sub_213D1E068(v80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C8EBB60, &unk_213D96930);
  sub_213D9090C();
  if (v42 == 0x6000000000000000)
  {
    v38 = v74;
    if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v70, v77), vceqq_f64(v69, v79)))) & 1) != 0 && v43 == v78)
    {
      sub_213D1E054(v74);
      sub_213D49B70(v40, type metadata accessor for KeyframeAnimationState);
      sub_213CD8330(v71, qword_27C8EB9C8, qword_213D98278);
      return;
    }
  }

  else
  {
    v38 = v74;
  }

  v45 = swift_allocObject();
  *(v45 + 16) = v6;
  *(v45 + 24) = v33;
  v46 = v6;
  v47 = v33;
  sub_213D905AC();

  sub_213D49B70(v40, type metadata accessor for KeyframeAnimationState);
  sub_213CD8330(v71, qword_27C8EB9C8, qword_213D98278);
LABEL_18:
  *&v77.f64[0] = v26;
  *&v77.f64[1] = v18;
  v78 = *&v39;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EBA88, &qword_213D98450);
  MEMORY[0x21604E7B0](v81);
  v49 = v81[0];
  v50 = v38 & 0xF000000000000007;
  if (*(v6 + *((*MEMORY[0x277D85000] & *v6) + 0x210)) == 1 && v50 != 0xF000000000000007 && (sub_213D79B18(v38, 0xA000000000000008) & 1) != 0 && (sub_213D79B18(v49, 0xA000000000000008) & 1) == 0)
  {
    [v33 _clearGesturesAndAnimations];
  }

  v77.f64[0] = v75;
  *&v77.f64[1] = v18;
  v78 = *&v39;
  MEMORY[0x21604E7B0](v81, v48);
  v51 = v81[0];
  v52 = sub_213D1E068(v81[0]);
  v53 = v72;
  if (v51 >> 61 != 4)
  {
    [v33 setUserTrackingMode:0 animated:{v72 & 1, v52}];
    [v33 setShowsUserLocation_];
  }

  if ((v49 >> 61) >= 4)
  {
    if (v49 >> 61 != 4)
    {
      if (v49 == 0xA000000000000000)
      {
        if (v50 == 0xF000000000000007 || (sub_213D1DFC0(v38), v61 = sub_213D79B18(v38, 0xA000000000000000), sub_213D1E054(v38), (v61 & 1) == 0) || (v66 & 1) != 0)
        {
          sub_213D3C4C8(0xA000000000000000, v33, v53 & 1);
        }
      }

      goto LABEL_43;
    }

    v56 = *((v49 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    v57 = *((v49 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
    if ([v33 hasUserLocation])
    {
      goto LABEL_51;
    }

    v59 = 0xF000000000000007;
    if (v50 != 0xF000000000000007 && (v74 & 0xE000000000000000) == 0x8000000000000000)
    {
      v59 = *((v74 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
      sub_213D1DFC0(v59);
    }

    v60 = v59 & 0xF000000000000007;
    if (v57 == 0xA000000000000000)
    {
      sub_213D1DFC0(0xA000000000000000);
      sub_213D1DFC0(0xA000000000000000);
      if (v60 == 0xF000000000000007 || (sub_213D49ACC(v59), v63 = sub_213D79B18(v59, 0xA000000000000000), sub_213D1E054(v59), (v63 & 1) == 0) || (v66 & 1) != 0)
      {
        sub_213D3C4C8(v49, v33, v53 & 1);
      }
    }

    else
    {
      sub_213D1DFC0(v57);
      if (v60 == 0xF000000000000007 || (sub_213D49ACC(v59), v62 = sub_213D79B18(v59, v57), sub_213D1E054(v59), (v62 & 1) == 0))
      {
        sub_213D3C4C8(v49, v33, v53 & 1);
        sub_213D1E054(v59);
        v58 = sub_213D1E068(v57);
LABEL_51:
        if (v56)
        {
          v64 = 2;
        }

        else
        {
          v64 = 1;
        }

        [v33 setUserTrackingMode:v64 animated:{v53 & 1, v58}];
        v55 = v74;
        goto LABEL_55;
      }

      sub_213D1E068(v57);
    }

    v58 = sub_213D1E054(v59);
    goto LABEL_51;
  }

  if (v50 != 0xF000000000000007)
  {
    sub_213D1DFC0(v49);
    sub_213D49ACC(v38);
    v54 = sub_213D79B18(v38, v49);
    sub_213D1E068(v49);
    sub_213D1E054(v38);
    if (v54)
    {
      sub_213D1E068(v49);
LABEL_43:
      sub_213D1E054(v38);
      return;
    }
  }

  sub_213D3C4C8(v49, v33, v53 & 1);
  v55 = v38;
LABEL_55:
  sub_213D1E054(v55);
  sub_213D1E068(v49);
}

uint64_t sub_213D3D530(void *a1, uint64_t a2, int a3)
{
  v4 = v3;
  v43 = a3;
  v45 = a2;
  v42 = a1;
  v5 = *((*MEMORY[0x277D85000] & *v3) + 0x1E8);
  v46[0] = *((*MEMORY[0x277D85000] & *v3) + 0x1D8);
  v46[1] = v5;
  v6 = type metadata accessor for MapSelectionManagerBox(0, v46);
  v44 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v34 - v7;
  v9 = sub_213D9162C();
  v10 = sub_213D91C7C();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v34 - v15;
  v17 = *(v9 - 8);
  v19 = MEMORY[0x28223BE20](v18);
  v21 = &v34 - v20;
  v40 = *(v11 + 16);
  v41 = v11 + 16;
  v40(v16, v45, v10, v19);
  if ((*(v17 + 48))(v16, 1, v9) == 1)
  {
    v22 = *(v11 + 8);
    v22(v16, v10);
    v23 = *(v17 + 56);
    v23(v13, 1, 1, v9);
    v24 = v43;
    v25 = v42;
    sub_213D3DAA0(v42, v13, v43 & 1);
    v22(v13, v10);
    v23(v13, 1, 1, v9);
    sub_213D41250(v25, v13, v24 & 1);
    v22(v13, v10);
  }

  else
  {
    v37 = v10;
    v26 = v43;
    v39 = v4;
    (*(v17 + 32))(v21, v16, v9);
    MEMORY[0x21604E7B0](v9);
    v27 = sub_213D7C0E0(v6);
    v28 = v44 + 8;
    v35 = *(v44 + 8);
    v35(v8, v6);
    v44 = v28;
    v38 = v21;
    if (v27)
    {
      (*(v17 + 16))(v13, v21, v9);
      v29 = 0;
    }

    else
    {
      v29 = 1;
    }

    v34 = *(v17 + 56);
    v34(v13, v29, 1, v9);
    v30 = v42;
    sub_213D41250(v42, v13, v26 & 1);
    v10 = v37;
    v36 = *(v11 + 8);
    v36(v13, v37);
    MEMORY[0x21604E7B0](v9);
    v31 = sub_213D7BF40(v6);
    v35(v8, v6);
    if (v31)
    {
      v32 = v38;
      (*(v17 + 16))(v13, v38, v9);
      v34(v13, 0, 1, v9);
      sub_213D3DAA0(v30, v13, v43 & 1);
      v36(v13, v10);
      (*(v17 + 8))(v32, v9);
    }

    else
    {
      v34(v13, 1, 1, v9);
      sub_213D3DAA0(v30, v13, v43 & 1);
      v36(v13, v10);
      (*(v17 + 8))(v38, v9);
    }
  }

  (v40)(v13, v45, v10);
  return sub_213D3BF40(v13);
}

void sub_213D3DAA0(void *a1, uint64_t a2, int a3)
{
  v130 = a3;
  v149 = a2;
  v135 = a1;
  v4 = *v3;
  v5 = *MEMORY[0x277D85000];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EB680, &unk_213D97FF0);
  MEMORY[0x28223BE20](v6 - 8);
  v123 = &v120 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EB290, &qword_213D98000);
  MEMORY[0x28223BE20](v8 - 8);
  v126 = &v120 - v9;
  v125 = type metadata accessor for CustomAnnotationViewModel(0);
  v124 = *(v125 - 8);
  MEMORY[0x28223BE20](v125);
  v121 = (&v120 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EB260, qword_213D985C0);
  MEMORY[0x28223BE20](v11 - 8);
  v129 = &v120 - v12;
  v128 = type metadata accessor for MarkerAnnotationViewModel(0);
  v127 = *(v128 - 8);
  MEMORY[0x28223BE20](v128);
  v122 = (&v120 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = *((v5 & v4) + 0x1D8);
  v145 = *(v14 - 8);
  MEMORY[0x28223BE20](v15);
  v133 = &v120 - v16;
  v17 = *((v5 & v4) + 0x1E0);
  v19 = *v18;
  v153[0] = v14;
  v153[1] = v17;
  v131 = v17;
  v132 = v19;
  v154 = v19;
  v20 = type metadata accessor for MapSelectionManagerBox(0, v153);
  v144 = *(v20 - 1);
  MEMORY[0x28223BE20](v20);
  v22 = &v120 - v21;
  v23 = sub_213D9162C();
  v24 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v136 = &v120 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v138 = &v120 - v27;
  v151 = sub_213D91C7C();
  v147 = *(v151 - 8);
  MEMORY[0x28223BE20](v151);
  v141 = &v120 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v31 = &v120 - v30;
  MEMORY[0x28223BE20](v32);
  v34 = &v120 - v33;
  v150 = sub_213D91C7C();
  v152 = *(v150 - 8);
  MEMORY[0x28223BE20](v150);
  v134 = &v120 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36);
  v140 = &v120 - v37;
  MEMORY[0x28223BE20](v38);
  v40 = &v120 - v39;
  v137 = v3;
  sub_213D3BE44(v34);
  v148 = *(v24 + 48);
  v41 = v148(v34, 1, v23);
  v142 = v20;
  v143 = v24;
  v146 = v14;
  if (v41)
  {
    v42 = v22;
    v43 = v147;
    v139 = *(v147 + 8);
    v139(v34, v151);
    v44 = v145;
    (*(v145 + 56))(v40, 1, 1, v14);
    LODWORD(v138) = 0;
  }

  else
  {
    v45 = v138;
    (*(v24 + 16))(v138, v34, v23);
    v139 = *(v147 + 8);
    v139(v34, v151);
    MEMORY[0x21604E7B0](v23);
    (*(v24 + 8))(v45, v23);
    v42 = v22;
    sub_213D7B444(v20, v40);
    (*(v144 + 8))(v22, v20);
    v44 = v145;
    LODWORD(v138) = (*(v145 + 48))(v40, 1, v14) != 1;
    v43 = v147;
  }

  v46 = *(v152 + 8);
  v152 += 8;
  v47 = v46;
  v46(v40, v150);
  v48 = *(v43 + 16);
  v48(v31, v149, v151);
  if (v148(v31, 1, v23) == 1)
  {
    v49 = v31;
    v50 = v151;
    v139(v49, v151);
    v51 = v140;
    (*(v44 + 56))(v140, 1, 1, v146);
    v52 = v42;
    v53 = v50;
  }

  else
  {
    v52 = v42;
    MEMORY[0x21604E7B0](v23);
    (*(v143 + 8))(v31, v23);
    v51 = v140;
    v54 = v142;
    sub_213D7B444(v142, v140);
    (*(v144 + 8))(v42, v54);
    v55 = (*(v44 + 48))(v51, 1, v146);
    v53 = v151;
    if (v55 != 1)
    {
      v59 = v51;
      v57 = v47;
      v47(v59, v150);
      v58 = v141;
      goto LABEL_10;
    }
  }

  v56 = v51;
  v57 = v47;
  v47(v56, v150);
  v58 = v141;
  if (v138)
  {
    *(v137 + *((*MEMORY[0x277D85000] & *v137) + 0x220)) = 1;
  }

LABEL_10:
  v48(v58, v149, v53);
  if (v148(v58, 1, v23) == 1)
  {
    v139(v58, v53);
    return;
  }

  v60 = v143;
  v61 = v136;
  (*(v143 + 32))(v136, v58, v23);
  MEMORY[0x21604E7B0](v23);
  v62 = v142;
  v63 = sub_213D7BF40(v142);
  v64 = *(v144 + 8);
  v64(v52, v62);
  if (!v63)
  {
LABEL_26:
    (*(v60 + 8))(v61, v23);
    return;
  }

  MEMORY[0x21604E7B0](v23);
  v65 = v134;
  sub_213D7B444(v62, v134);
  v66 = v62;
  v67 = v65;
  v64(v52, v66);
  v68 = v145;
  v69 = v65;
  v70 = v146;
  v71 = (*(v145 + 48))(v69, 1, v146);
  v120 = v23;
  if (v71 != 1)
  {
    v77 = v133;
    (*(v68 + 32))(v133, v67, v70);
    v78 = [v135 selectedAnnotations];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C8EB210, &unk_213D97270);
    v79 = sub_213D919FC();

    MEMORY[0x28223BE20](v80);
    v81 = v137;
    *(&v120 - 2) = v137;
    *(&v120 - 1) = v77;
    LOBYTE(v78) = sub_213D402B0(sub_213D499EC, (&v120 - 4), v79);

    if ((v78 & 1) == 0 && (*(v81 + *((*MEMORY[0x277D85000] & *v81) + 0x220)) & 1) == 0)
    {
      v83 = v81 + qword_27C8EB3F8;
      v84 = *(v81 + qword_27C8EB3F8 + 16);
      MEMORY[0x28223BE20](v82);
      v85 = v131;
      *(&v120 - 6) = v146;
      *(&v120 - 5) = v85;
      *(&v120 - 2) = v132;
      *(&v120 - 2) = v86;

      v87 = v129;
      sub_213D3EEE8(sub_213D49A0C, v84, type metadata accessor for MarkerAnnotationViewModel, type metadata accessor for MarkerAnnotationViewModel, type metadata accessor for MarkerAnnotationViewModel, type metadata accessor for MarkerAnnotationViewModel, v129);

      if ((*(v127 + 48))(v87, 1, v128) == 1)
      {
        v88 = sub_213CD8330(v87, &qword_27C8EB260, qword_213D985C0);
      }

      else
      {
        v91 = v122;
        sub_213D49AE0(v87, v122, type metadata accessor for MarkerAnnotationViewModel);
        v92 = *(v83 + 3);
        if (*(v92 + 16))
        {
          v93 = *v91;

          v94 = sub_213CE22A8(v93);
          if (v95)
          {
            v96 = *(*(v92 + 56) + 8 * v94);

            v97 = v96;
            sub_213D473A0(v97, v135, v130 & 1);

            (*(v60 + 8))(v61, v120);
            sub_213D49B70(v91, type metadata accessor for MarkerAnnotationViewModel);
            v98 = v145;
            v77 = v133;
LABEL_49:
            (*(v98 + 8))(v77, v146);
            *(v81 + *((*MEMORY[0x277D85000] & *v81) + 0x220)) = 0;
            return;
          }
        }

        v88 = sub_213D49B70(v91, type metadata accessor for MarkerAnnotationViewModel);
      }

      v99 = v81 + qword_27C8EB3F0;
      v100 = *(v81 + qword_27C8EB3F0 + 16);
      MEMORY[0x28223BE20](v88);
      v101 = v131;
      *(&v120 - 6) = v146;
      *(&v120 - 5) = v101;
      *(&v120 - 2) = v132;
      *(&v120 - 2) = v133;

      v102 = v126;
      sub_213D3EEE8(sub_213D49A3C, v100, type metadata accessor for CustomAnnotationViewModel, type metadata accessor for CustomAnnotationViewModel, type metadata accessor for CustomAnnotationViewModel, type metadata accessor for CustomAnnotationViewModel, v126);

      if ((*(v124 + 48))(v102, 1, v125) == 1)
      {
        v103 = sub_213CD8330(v102, &qword_27C8EB290, &qword_213D98000);
        v77 = v133;
        v104 = v135;
      }

      else
      {
        v105 = v102;
        v106 = v121;
        sub_213D49AE0(v105, v121, type metadata accessor for CustomAnnotationViewModel);
        v107 = *(v99 + 3);
        v77 = v133;
        v104 = v135;
        if (*(v107 + 16))
        {
          v108 = v106;
          v109 = *v106;

          v110 = sub_213CE22A8(v109);
          if (v111)
          {
            v112 = *(*(v107 + 56) + 8 * v110);

            v113 = v112;
            sub_213D473A0(v113, v104, v130 & 1);

            (*(v60 + 8))(v61, v120);
            sub_213D49B70(v108, type metadata accessor for CustomAnnotationViewModel);
LABEL_48:
            v98 = v145;
            goto LABEL_49;
          }

          v106 = v108;
        }

        v103 = sub_213D49B70(v106, type metadata accessor for CustomAnnotationViewModel);
      }

      v114 = *(v81 + qword_27C8EB408 + 16);
      MEMORY[0x28223BE20](v103);
      *&v115 = v146;
      *(&v115 + 1) = v131;
      v116 = v132;
      *(&v120 - 3) = v115;
      *(&v120 - 2) = v116;
      *(&v120 - 2) = v77;

      v117 = v123;
      sub_213D3EEE8(sub_213D49A6C, v114, type metadata accessor for UserAnnotationViewModel, type metadata accessor for UserAnnotationViewModel, type metadata accessor for UserAnnotationViewModel, type metadata accessor for UserAnnotationViewModel, v123);

      v118 = type metadata accessor for UserAnnotationViewModel(0);
      if ((*(*(v118 - 8) + 48))(v117, 1, v118) == 1)
      {
        (*(v60 + 8))(v61, v120);
        sub_213CD8330(v117, &qword_27C8EB680, &unk_213D97FF0);
        goto LABEL_48;
      }

      sub_213CD8330(v117, &qword_27C8EB680, &unk_213D97FF0);
      v119 = [v104 userLocation];
      sub_213D473A0(v119, v104, v130 & 1);
    }

    (*(v60 + 8))(v61, v120);
    goto LABEL_48;
  }

  v57(v67, v150);
  v61 = v135;
  v72 = [v135 selectedAnnotations];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C8EB210, &unk_213D97270);
  v73 = sub_213D919FC();

  if (v73 >> 62)
  {
    goto LABEL_51;
  }

  v74 = *((v73 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v74)
  {
    while (1)
    {
      v23 = 0;
      while ((v73 & 0xC000000000000001) != 0)
      {
        v75 = MEMORY[0x21604EF80](v23, v73);
        v76 = v23 + 1;
        if (__OFADD__(v23, 1))
        {
LABEL_25:
          __break(1u);
          goto LABEL_26;
        }

LABEL_20:
        objc_opt_self();
        if (!swift_dynamicCastObjCClass())
        {

          v89 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v90 = swift_allocObject();
          *(v90 + 16) = v89;
          *(v90 + 24) = v75;
          *(v90 + 32) = v130 & 1;

          swift_unknownObjectRetain();
          sub_213D905AC();
          swift_unknownObjectRelease();

          (*(v60 + 8))(v136, v120);

          goto LABEL_53;
        }

        swift_unknownObjectRelease();
        ++v23;
        if (v76 == v74)
        {
          goto LABEL_52;
        }
      }

      if (v23 < *((v73 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        break;
      }

      __break(1u);
LABEL_51:
      v74 = sub_213D91EBC();
      if (!v74)
      {
        goto LABEL_52;
      }
    }

    v75 = *(v73 + 8 * v23 + 32);
    swift_unknownObjectRetain();
    v76 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      goto LABEL_25;
    }

    goto LABEL_20;
  }

LABEL_52:

  (*(v60 + 8))(v136, v120);
LABEL_53:
  *(v137 + *((*MEMORY[0x277D85000] & *v137) + 0x220)) = 0;
}

void sub_213D3EEE8(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t (*a3)(void)@<X3>, uint64_t (*a4)(void)@<X4>, uint64_t (*a5)(void)@<X5>, uint64_t (*a6)(void)@<X6>, uint64_t a7@<X8>)
{
  v26 = a6;
  v27 = a1;
  v28 = a4;
  v29 = a5;
  v25 = a7;
  v24 = a3(0);
  v30 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v24 - v12;
  v14 = 1 << *(a2 + 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & *(a2 + 64);
  v17 = (v14 + 63) >> 6;

  v18 = 0;
  if (v16)
  {
    while (1)
    {
      v19 = v18;
LABEL_8:
      sub_213D4CAEC(*(a2 + 56) + *(v30 + 72) * (__clz(__rbit64(v16)) | (v19 << 6)), v13, v28);
      sub_213D49AE0(v13, v10, v29);
      v20 = v27(v10);
      if (v7)
      {
        sub_213D49B70(v10, v26);

        return;
      }

      if (v20)
      {
        break;
      }

      v16 &= v16 - 1;
      sub_213D49B70(v10, v26);
      v18 = v19;
      if (!v16)
      {
        goto LABEL_5;
      }
    }

    v23 = v25;
    sub_213D49AE0(v10, v25, v29);
    v22 = v23;
    v21 = 0;
LABEL_13:
    (*(v30 + 56))(v22, v21, 1, v24);
  }

  else
  {
LABEL_5:
    while (1)
    {
      v19 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v19 >= v17)
      {

        v21 = 1;
        v22 = v25;
        goto LABEL_13;
      }

      v16 = *(a2 + 64 + 8 * v19);
      ++v18;
      if (v16)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }
}

uint64_t sub_213D3F130(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v163 = a3;
  v4 = *a2;
  v5 = *MEMORY[0x277D85000];
  v162 = *MEMORY[0x277D85000] & *a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EB680, &unk_213D97FF0);
  MEMORY[0x28223BE20](v6 - 8);
  v160 = &v145 - v7;
  v8 = type metadata accessor for UserAnnotationViewModel(0);
  v158 = *(v8 - 8);
  v159 = v8;
  MEMORY[0x28223BE20](v8);
  v169 = &v145 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v151 = type metadata accessor for CustomAnnotationViewModel(0);
  v149 = *(v151 - 8);
  MEMORY[0x28223BE20](v151);
  v150 = &v145 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v157 = &v145 - v12;
  v166 = *(*((v5 & v4) + 0x1D8) - 8);
  MEMORY[0x28223BE20](v13);
  v148 = &v145 - v14;
  v164 = v15;
  v16 = sub_213D91C7C();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v155 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x28223BE20](TupleTypeMetadata2);
  v153 = &v145 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v152 = &v145 - v19;
  MEMORY[0x28223BE20](v20);
  v161 = &v145 - v21;
  v171 = v16;
  v170 = *(v16 - 8);
  MEMORY[0x28223BE20](v22);
  v147 = &v145 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v167 = &v145 - v25;
  MEMORY[0x28223BE20](v26);
  v168 = &v145 - v27;
  MEMORY[0x28223BE20](v28);
  v145 = &v145 - v29;
  MEMORY[0x28223BE20](v30);
  v154 = &v145 - v31;
  MEMORY[0x28223BE20](v32);
  v156 = &v145 - v33;
  MEMORY[0x28223BE20](v34);
  v146 = &v145 - v35;
  MEMORY[0x28223BE20](v36);
  v38 = &v145 - v37;
  MEMORY[0x28223BE20](v39);
  v41 = &v145 - v40;
  v42 = type metadata accessor for MarkerAnnotationViewModel(0);
  v43 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v45 = &v145 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v46);
  v48 = &v145 - v47;
  type metadata accessor for MapBridgingMarker();
  v49 = swift_dynamicCastClass();
  if (!v49 || (v50 = *(a2 + qword_27C8EB3F8 + 16), !*(v50 + 16)))
  {
LABEL_9:
    type metadata accessor for MapBridgingCustomAnnotation();
    v71 = swift_dynamicCastClass();
    v72 = v169;
    v73 = v167;
    v74 = v168;
    if (v71)
    {
      v75 = *(a2 + qword_27C8EB3F0 + 16);
      if (*(v75 + 16))
      {
        v76 = v71;
        swift_unknownObjectRetain();

        v77 = sub_213CE249C(v76);
        if (v78)
        {
          v79 = v150;
          sub_213D4CAEC(*(v75 + 56) + *(v149 + 72) * v77, v150, type metadata accessor for CustomAnnotationViewModel);

          sub_213D49AE0(v79, v157, type metadata accessor for CustomAnnotationViewModel);
          v80 = v156;
          v81 = v164;
          v168 = *(v162 + 488);
          sub_213D66EE0(v164, v168, v156, v82);
          v83 = v166;
          v84 = v154;
          (*(v166 + 16))(v154, v163, v81);
          (*(v83 + 56))(v84, 0, 1, v81);
          v85 = *(TupleTypeMetadata2 + 48);
          v86 = *(v170 + 16);
          v87 = v152;
          v88 = v80;
          v89 = v171;
          v86(v152, v88, v171);
          v169 = v85;
          v86(&v87[v85], v84, v89);
          v90 = *(v83 + 48);
          if (v90(v87, 1, v81) == 1)
          {
            swift_unknownObjectRelease();
            v91 = *(v170 + 8);
            v92 = v171;
            v91(v84, v171);
            v91(v156, v92);
            sub_213D49B70(v157, type metadata accessor for CustomAnnotationViewModel);
            if (v90(&v87[v169], 1, v81) == 1)
            {
              v91(v87, v92);
              goto LABEL_22;
            }
          }

          else
          {
            v120 = v145;
            v121 = v171;
            v86(v145, v87, v171);
            v122 = v169;
            if (v90(&v87[v169], 1, v81) != 1)
            {
              v141 = v166;
              v142 = v148;
              (*(v166 + 32))(v148, &v87[v122], v81);
              v108 = sub_213D918DC();
              swift_unknownObjectRelease();
              v143 = *(v141 + 8);
              v143(v142, v81);
              v144 = *(v170 + 8);
              v144(v154, v121);
              v144(v156, v121);
              sub_213D49B70(v157, type metadata accessor for CustomAnnotationViewModel);
              v143(v120, v81);
              v144(v87, v121);
              return v108 & 1;
            }

            swift_unknownObjectRelease();
            v123 = v120;
            v124 = *(v170 + 8);
            v124(v154, v121);
            v124(v156, v121);
            sub_213D49B70(v157, type metadata accessor for CustomAnnotationViewModel);
            (*(v166 + 8))(v123, v81);
          }

          (*(v155 + 8))(v87, TupleTypeMetadata2);
          goto LABEL_32;
        }

        swift_unknownObjectRelease();
      }
    }

    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {

      v94 = v160;
      sub_213D2DCB4(v93, v160);

      if ((*(v158 + 48))(v94, 1, v159) == 1)
      {
        sub_213CD8330(v94, &qword_27C8EB680, &unk_213D97FF0);
      }

      else
      {
        sub_213D49AE0(v94, v72, type metadata accessor for UserAnnotationViewModel);
        v95 = v164;
        v162 = *(v162 + 488);
        sub_213D66EE0(v164, v162, v74, v96);
        v97 = v166;
        (*(v166 + 16))(v73, v163, v95);
        (*(v97 + 56))(v73, 0, 1, v95);
        v98 = *(TupleTypeMetadata2 + 48);
        v99 = *(v170 + 16);
        v100 = v153;
        v101 = v171;
        v99(v153, v74, v171);
        v163 = v98;
        v102 = v101;
        v103 = v73;
        v99(&v100[v98], v73, v102);
        v104 = *(v97 + 48);
        if (v104(v100, 1, v95) == 1)
        {
          v105 = *(v170 + 8);
          v106 = v171;
          v105(v103, v171);
          v105(v74, v106);
          sub_213D49B70(v169, type metadata accessor for UserAnnotationViewModel);
          v107 = v100;
          if (v104(&v100[v163], 1, v95) == 1)
          {
            v105(v100, v171);
            goto LABEL_22;
          }
        }

        else
        {
          v109 = v147;
          v99(v147, v100, v171);
          v110 = v163;
          v107 = v100;
          if (v104(&v100[v163], 1, v95) != 1)
          {
            v126 = v95;
            v127 = v166;
            v128 = v148;
            (*(v166 + 32))(v148, &v100[v110], v126);
            v129 = v109;
            v108 = sub_213D918DC();
            v130 = *(v127 + 8);
            v130(v128, v126);
            v131 = *(v170 + 8);
            v132 = v171;
            v131(v167, v171);
            v131(v168, v132);
            sub_213D49B70(v169, type metadata accessor for UserAnnotationViewModel);
            v130(v129, v126);
            v131(v100, v132);
            return v108 & 1;
          }

          v111 = *(v170 + 8);
          v112 = v171;
          v111(v167, v171);
          v111(v168, v112);
          sub_213D49B70(v169, type metadata accessor for UserAnnotationViewModel);
          (*(v166 + 8))(v109, v95);
        }

        (*(v155 + 8))(v107, TupleTypeMetadata2);
      }
    }

LABEL_32:
    v108 = 0;
    return v108 & 1;
  }

  v51 = v49;
  swift_unknownObjectRetain();

  v52 = sub_213CE2448(v51);
  if ((v53 & 1) == 0)
  {

    swift_unknownObjectRelease();
    goto LABEL_9;
  }

  sub_213D4CAEC(*(v50 + 56) + *(v43 + 72) * v52, v45, type metadata accessor for MarkerAnnotationViewModel);

  sub_213D49AE0(v45, v48, type metadata accessor for MarkerAnnotationViewModel);
  v54 = v164;
  v162 = *(v162 + 488);
  sub_213D66EE0(v164, v162, v41, v55);
  v56 = v166;
  (*(v166 + 16))(v38, v163, v54);
  (*(v56 + 56))(v38, 0, 1, v54);
  v57 = v38;
  v58 = *(TupleTypeMetadata2 + 48);
  v59 = *(v170 + 16);
  v60 = v41;
  v61 = v161;
  v169 = v60;
  v167 = v48;
  v62 = v171;
  v59(v161);
  v168 = v58;
  v63 = &v61[v58];
  v64 = v57;
  (v59)(v63, v57, v62);
  v65 = *(v56 + 48);
  if (v65(v61, 1, v54) != 1)
  {
    v113 = v146;
    v114 = v161;
    (v59)(v146, v161, v171);
    v115 = v168;
    if (v65(&v114[v168], 1, v54) != 1)
    {
      v133 = v166;
      v134 = v161;
      v135 = v148;
      (*(v166 + 32))(v148, &v161[v115], v54);
      v136 = v113;
      v108 = sub_213D918DC();
      swift_unknownObjectRelease();
      v137 = *(v133 + 8);
      v137(v135, v54);
      v138 = *(v170 + 8);
      v139 = v64;
      v140 = v171;
      v138(v139, v171);
      v138(v169, v140);
      sub_213D49B70(v167, type metadata accessor for MarkerAnnotationViewModel);
      v137(v136, v54);
      v138(v134, v140);
      return v108 & 1;
    }

    swift_unknownObjectRelease();
    v116 = v113;
    v117 = *(v170 + 8);
    v118 = v64;
    v119 = v171;
    v117(v118, v171);
    v117(v169, v119);
    sub_213D49B70(v167, type metadata accessor for MarkerAnnotationViewModel);
    (*(v166 + 8))(v116, v54);
    v70 = v161;
    goto LABEL_28;
  }

  swift_unknownObjectRelease();
  v66 = *(v170 + 8);
  v67 = v171;
  v66(v57, v171);
  v66(v169, v67);
  sub_213D49B70(v167, type metadata accessor for MarkerAnnotationViewModel);
  v68 = v161;
  v69 = v65(&v161[v168], 1, v54) == 1;
  v70 = v68;
  if (!v69)
  {
LABEL_28:
    (*(v155 + 8))(v70, TupleTypeMetadata2);
    goto LABEL_32;
  }

  v66(v68, v67);
LABEL_22:
  v108 = 1;
  return v108 & 1;
}

uint64_t sub_213D402B0(uint64_t (*a1)(uint64_t *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_15;
  }

  v4 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4)
  {
    do
    {
      v5 = 0;
      v14 = a3 & 0xC000000000000001;
      v6 = a3 & 0xFFFFFFFFFFFFFF8;
      while (v14)
      {
        v7 = a3;
        v8 = MEMORY[0x21604EF80](v5, a3);
        v9 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          goto LABEL_13;
        }

LABEL_7:
        v16 = v8;
        v10 = a1(&v16);
        swift_unknownObjectRelease();
        if (!v3 && (v10 & 1) == 0)
        {
          ++v5;
          a3 = v7;
          if (v9 != v4)
          {
            continue;
          }
        }

        return v10 & 1;
      }

      if (v5 >= *(v6 + 16))
      {
        goto LABEL_14;
      }

      v7 = a3;
      v8 = *(a3 + 8 * v5 + 32);
      swift_unknownObjectRetain();
      v9 = v5 + 1;
      if (!__OFADD__(v5, 1))
      {
        goto LABEL_7;
      }

LABEL_13:
      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      v11 = a3;
      v12 = sub_213D91EBC();
      a3 = v11;
      v4 = v12;
    }

    while (v12);
  }

  v10 = 0;
  return v10 & 1;
}

uint64_t sub_213D403EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v49 = a5;
  v50 = a2;
  v6 = *(a3 - 8);
  MEMORY[0x28223BE20](a1);
  v42 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_213D91C7C();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v43 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x28223BE20](TupleTypeMetadata2);
  v11 = &v41 - v10;
  v12 = *(v8 - 8);
  MEMORY[0x28223BE20](v13);
  v48 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v41 - v16;
  MEMORY[0x28223BE20](v18);
  v20 = &v41 - v19;
  type metadata accessor for MarkerAnnotationViewModel(0);
  sub_213D66EE0(a3, v49, v20, v21);
  (*(v6 + 16))(v17, v50, a3);
  (*(v6 + 56))(v17, 0, 1, a3);
  v44 = TupleTypeMetadata2;
  v22 = *(TupleTypeMetadata2 + 48);
  v46 = v12;
  v23 = *(v12 + 16);
  v23(v11, v20, v8);
  v47 = v22;
  v50 = v8;
  v23(&v11[v22], v17, v8);
  v45 = v6;
  v24 = *(v6 + 48);
  if (v24(v11, 1, a3) != 1)
  {
    v41 = v20;
    v29 = v46;
    v23(v48, v11, v50);
    v30 = v47;
    if (v24(&v11[v47], 1, a3) != 1)
    {
      v33 = v45;
      v34 = v42;
      (*(v45 + 32))(v42, &v11[v30], a3);
      v35 = v48;
      v28 = sub_213D918DC();
      v36 = *(v33 + 8);
      v36(v34, a3);
      v37 = *(v29 + 8);
      v38 = v17;
      v39 = v50;
      v37(v38, v50);
      v37(v41, v39);
      v36(v35, a3);
      v37(v11, v39);
      return v28 & 1;
    }

    v31 = *(v29 + 8);
    v32 = v50;
    v31(v17, v50);
    v31(v41, v32);
    (*(v45 + 8))(v48, a3);
    goto LABEL_6;
  }

  v25 = *(v46 + 8);
  v26 = v17;
  v27 = v50;
  v25(v26, v50);
  v25(v20, v27);
  if (v24(&v11[v47], 1, a3) != 1)
  {
LABEL_6:
    (*(v43 + 8))(v11, v44);
    v28 = 0;
    return v28 & 1;
  }

  v25(v11, v50);
  v28 = 1;
  return v28 & 1;
}

uint64_t sub_213D408B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v49 = a5;
  v50 = a2;
  v6 = *(a3 - 8);
  MEMORY[0x28223BE20](a1);
  v42 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_213D91C7C();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v43 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x28223BE20](TupleTypeMetadata2);
  v11 = &v41 - v10;
  v12 = *(v8 - 8);
  MEMORY[0x28223BE20](v13);
  v48 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v41 - v16;
  MEMORY[0x28223BE20](v18);
  v20 = &v41 - v19;
  type metadata accessor for CustomAnnotationViewModel(0);
  sub_213D66EE0(a3, v49, v20, v21);
  (*(v6 + 16))(v17, v50, a3);
  (*(v6 + 56))(v17, 0, 1, a3);
  v44 = TupleTypeMetadata2;
  v22 = *(TupleTypeMetadata2 + 48);
  v46 = v12;
  v23 = *(v12 + 16);
  v23(v11, v20, v8);
  v47 = v22;
  v50 = v8;
  v23(&v11[v22], v17, v8);
  v45 = v6;
  v24 = *(v6 + 48);
  if (v24(v11, 1, a3) != 1)
  {
    v41 = v20;
    v29 = v46;
    v23(v48, v11, v50);
    v30 = v47;
    if (v24(&v11[v47], 1, a3) != 1)
    {
      v33 = v45;
      v34 = v42;
      (*(v45 + 32))(v42, &v11[v30], a3);
      v35 = v48;
      v28 = sub_213D918DC();
      v36 = *(v33 + 8);
      v36(v34, a3);
      v37 = *(v29 + 8);
      v38 = v17;
      v39 = v50;
      v37(v38, v50);
      v37(v41, v39);
      v36(v35, a3);
      v37(v11, v39);
      return v28 & 1;
    }

    v31 = *(v29 + 8);
    v32 = v50;
    v31(v17, v50);
    v31(v41, v32);
    (*(v45 + 8))(v48, a3);
    goto LABEL_6;
  }

  v25 = *(v46 + 8);
  v26 = v17;
  v27 = v50;
  v25(v26, v50);
  v25(v20, v27);
  if (v24(&v11[v47], 1, a3) != 1)
  {
LABEL_6:
    (*(v43 + 8))(v11, v44);
    v28 = 0;
    return v28 & 1;
  }

  v25(v11, v50);
  v28 = 1;
  return v28 & 1;
}

uint64_t sub_213D40D84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v49 = a5;
  v50 = a2;
  v6 = *(a3 - 8);
  MEMORY[0x28223BE20](a1);
  v42 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_213D91C7C();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v43 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x28223BE20](TupleTypeMetadata2);
  v11 = &v41 - v10;
  v12 = *(v8 - 8);
  MEMORY[0x28223BE20](v13);
  v48 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v41 - v16;
  MEMORY[0x28223BE20](v18);
  v20 = &v41 - v19;
  type metadata accessor for UserAnnotationViewModel(0);
  sub_213D66EE0(a3, v49, v20, v21);
  (*(v6 + 16))(v17, v50, a3);
  (*(v6 + 56))(v17, 0, 1, a3);
  v44 = TupleTypeMetadata2;
  v22 = *(TupleTypeMetadata2 + 48);
  v46 = v12;
  v23 = *(v12 + 16);
  v23(v11, v20, v8);
  v47 = v22;
  v50 = v8;
  v23(&v11[v22], v17, v8);
  v45 = v6;
  v24 = *(v6 + 48);
  if (v24(v11, 1, a3) != 1)
  {
    v41 = v20;
    v29 = v46;
    v23(v48, v11, v50);
    v30 = v47;
    if (v24(&v11[v47], 1, a3) != 1)
    {
      v33 = v45;
      v34 = v42;
      (*(v45 + 32))(v42, &v11[v30], a3);
      v35 = v48;
      v28 = sub_213D918DC();
      v36 = *(v33 + 8);
      v36(v34, a3);
      v37 = *(v29 + 8);
      v38 = v17;
      v39 = v50;
      v37(v38, v50);
      v37(v41, v39);
      v36(v35, a3);
      v37(v11, v39);
      return v28 & 1;
    }

    v31 = *(v29 + 8);
    v32 = v50;
    v31(v17, v50);
    v31(v41, v32);
    (*(v45 + 8))(v48, a3);
    goto LABEL_6;
  }

  v25 = *(v46 + 8);
  v26 = v17;
  v27 = v50;
  v25(v26, v50);
  v25(v20, v27);
  if (v24(&v11[v47], 1, a3) != 1)
  {
LABEL_6:
    (*(v43 + 8))(v11, v44);
    v28 = 0;
    return v28 & 1;
  }

  v25(v11, v50);
  v28 = 1;
  return v28 & 1;
}

void sub_213D41250(void *a1, uint64_t a2, int a3)
{
  v70 = a3;
  v82 = a2;
  v79 = a1;
  v4 = *((*MEMORY[0x277D85000] & *v3) + 0x1E8);
  v84[0] = *((*MEMORY[0x277D85000] & *v3) + 0x1D8);
  v84[1] = v4;
  v5 = type metadata accessor for MapSelectionManagerBox(0, v84);
  v75 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v69[-v6];
  v8 = sub_213D9162C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v73 = &v69[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v11);
  v71 = &v69[-v12];
  v13 = sub_213D91C7C();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v77 = &v69[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v16);
  v18 = &v69[-v17];
  MEMORY[0x28223BE20](v19);
  v21 = &v69[-v20];
  v72 = v3;
  sub_213D3BE44(&v69[-v20]);
  v83 = *(v9 + 48);
  v22 = v83(v21, 1, v8);
  v80 = v9;
  v81 = v5;
  v78 = v7;
  v74 = v14;
  if (v22)
  {
    v23 = v75;
    v24 = v8;
    v76 = *(v14 + 8);
    v76(v21, v13);
    v25 = 0;
    v26 = v82;
  }

  else
  {
    v27 = v7;
    v28 = v71;
    (*(v9 + 16))(v71, v21, v8);
    v29 = v21;
    v30 = v13;
    v76 = *(v14 + 8);
    v76(v29, v13);
    v31 = v27;
    MEMORY[0x21604E7B0](v8);
    v32 = *(v9 + 8);
    v24 = v8;
    v32(v28, v8);
    v33 = v81;
    sub_213D7B980(v81, v84);
    v23 = v75;
    (*(v75 + 8))(v31, v33);
    if (*&v84[0])
    {

      v25 = 1;
    }

    else
    {
      v25 = 0;
    }

    v26 = v82;
    v14 = v74;
    v13 = v30;
  }

  v34 = *(v14 + 16);
  v34(v18, v26, v13);
  if (v83(v18, 1, v24) == 1)
  {
    v76(v18, v13);
  }

  else
  {
    v35 = v78;
    MEMORY[0x21604E7B0](v24);
    (*(v80 + 8))(v18, v24);
    v36 = v81;
    sub_213D7B980(v81, v84);
    v37 = v35;
    v26 = v82;
    (*(v23 + 8))(v37, v36);
    if (*&v84[0])
    {

      v38 = v77;
      goto LABEL_13;
    }
  }

  v38 = v77;
  if (v25)
  {
    *(v72 + *((*MEMORY[0x277D85000] & *v72) + 0x220)) = 1;
  }

LABEL_13:
  v34(v38, v26, v13);
  if (v83(v38, 1, v24) == 1)
  {
    v76(v38, v13);
    goto LABEL_32;
  }

  v39 = v80;
  v40 = v73;
  (*(v80 + 32))(v73, v38, v24);
  v41 = v78;
  MEMORY[0x21604E7B0](v24);
  v42 = v81;
  v43 = sub_213D7C0E0(v81);
  v44 = *(v23 + 8);
  v44(v41, v42);
  if (!v43)
  {
    goto LABEL_31;
  }

  v45 = v79;
  [v79 setSelectableMapFeatures_];
  MEMORY[0x21604E7B0](v24);
  sub_213D7B980(v42, v84);
  v44(v41, v42);
  v46 = *&v84[0];
  if (!*&v84[0])
  {
    v60 = [v45 selectedAnnotations];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C8EB210, &unk_213D97270);
    v46 = sub_213D919FC();

    if (v46 >> 62)
    {
      v61 = sub_213D91EBC();
      if (v61)
      {
LABEL_47:
        v62 = 0;
        while (1)
        {
          if ((v46 & 0xC000000000000001) != 0)
          {
            v63 = MEMORY[0x21604EF80](v62, v46);
            v64 = v62 + 1;
            if (__OFADD__(v62, 1))
            {
              goto LABEL_56;
            }
          }

          else
          {
            if (v62 >= *((v46 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_61;
            }

            v63 = *(v46 + 8 * v62 + 32);
            swift_unknownObjectRetain();
            v64 = v62 + 1;
            if (__OFADD__(v62, 1))
            {
LABEL_56:
              __break(1u);
LABEL_57:
              (*(v80 + 8))(v73, v83);

              v65 = v72;
              goto LABEL_68;
            }
          }

          objc_opt_self();
          if (swift_dynamicCastObjCClass())
          {
            break;
          }

          swift_unknownObjectRelease();
          ++v62;
          if (v64 == v61)
          {
            goto LABEL_70;
          }
        }

        v66 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v67 = swift_allocObject();
        *(v67 + 16) = v66;
        *(v67 + 24) = v63;
        *(v67 + 32) = v70 & 1;

        swift_unknownObjectRetain();
        sub_213D905AC();
        swift_unknownObjectRelease();

        (*(v80 + 8))(v73, v24);

LABEL_71:
        *(v72 + *((*MEMORY[0x277D85000] & *v72) + 0x220)) = 0;
        return;
      }
    }

    else
    {
      v61 = *((v46 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v61)
      {
        goto LABEL_47;
      }
    }

LABEL_70:

    (*(v80 + 8))(v73, v24);
    goto LABEL_71;
  }

  v83 = v24;
  v47 = [v45 selectedAnnotations];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C8EB210, &unk_213D97270);
  v48 = sub_213D919FC();

  if (v48 >> 62)
  {
    v24 = sub_213D91EBC();
    if (v24)
    {
      goto LABEL_19;
    }

LABEL_65:

    v65 = v72;
    if (*(v65 + *((*MEMORY[0x277D85000] & *v65) + 0x220)))
    {
      (*(v80 + 8))(v73, v83);
    }

    else
    {
      v68 = v46;
      sub_213D473A0(v68, v79, v70 & 1);

      (*(v80 + 8))(v73, v83);
    }

LABEL_68:
    *(v65 + *((*MEMORY[0x277D85000] & *v65) + 0x220)) = 0;
    return;
  }

  v24 = *((v48 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v24)
  {
    goto LABEL_65;
  }

LABEL_19:
  v49 = 0;
  v40 = v48 & 0xC000000000000001;
  v39 = 0x277CD4000uLL;
  while (v40)
  {
    MEMORY[0x21604EF80](v49, v48);
    v50 = v49 + 1;
    if (__OFADD__(v49, 1))
    {
      goto LABEL_30;
    }

LABEL_25:
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      sub_213CE2B34(0, &qword_27C8ECC60, 0x277D82BB8);
      v51 = sub_213D91C5C();
      swift_unknownObjectRelease();
      if (v51)
      {
        goto LABEL_57;
      }
    }

    else
    {
      swift_unknownObjectRelease();
    }

    ++v49;
    if (v50 == v24)
    {
      goto LABEL_65;
    }
  }

  if (v49 >= *((v48 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_60;
  }

  swift_unknownObjectRetain();
  v50 = v49 + 1;
  if (!__OFADD__(v49, 1))
  {
    goto LABEL_25;
  }

LABEL_30:
  __break(1u);
LABEL_31:
  (*(v39 + 8))(v40, v24);
LABEL_32:
  v52 = v79;
  [v79 setSelectableMapFeatures_];
  v53 = [v52 selectedAnnotations];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C8EB210, &unk_213D97270);
  v46 = sub_213D919FC();

  if (v46 >> 62)
  {
    goto LABEL_62;
  }

  v54 = *((v46 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v54)
  {
LABEL_34:
    v55 = 0;
    do
    {
      if ((v46 & 0xC000000000000001) != 0)
      {
        v56 = MEMORY[0x21604EF80](v55, v46);
        v57 = v55 + 1;
        if (__OFADD__(v55, 1))
        {
LABEL_43:
          __break(1u);
LABEL_44:

          v58 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v59 = swift_allocObject();
          *(v59 + 16) = v58;
          *(v59 + 24) = v56;
          *(v59 + 32) = v70 & 1;

          swift_unknownObjectRetain();
          sub_213D905AC();
          swift_unknownObjectRelease();

          return;
        }
      }

      else
      {
        if (v55 >= *((v46 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_60:
          __break(1u);
LABEL_61:
          __break(1u);
LABEL_62:
          v54 = sub_213D91EBC();
          if (!v54)
          {
            break;
          }

          goto LABEL_34;
        }

        v56 = *(v46 + 8 * v55 + 32);
        swift_unknownObjectRetain();
        v57 = v55 + 1;
        if (__OFADD__(v55, 1))
        {
          goto LABEL_43;
        }
      }

      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        goto LABEL_44;
      }

      swift_unknownObjectRelease();
      ++v55;
    }

    while (v57 != v54);
  }
}

void sub_213D41E5C(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v31 = a4;
  v30[1] = a1;
  v7 = *v4;
  v8 = *MEMORY[0x277D85000];
  v9 = *((*MEMORY[0x277D85000] & *v4) + 0x1E8);
  v37[0] = *((*MEMORY[0x277D85000] & *v4) + 0x1D8);
  v37[1] = v9;
  v10 = type metadata accessor for MapSelectionManagerBox(0, v37);
  v35 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v34 = v30 - v11;
  v36 = v12;
  v13 = sub_213D9162C();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v32 = v30 - v15;
  v16 = sub_213D91C7C();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = v30 - v18;
  v20 = (v4 + *((v8 & v7) + 0x230));
  v21 = *v20;
  v22 = v20[1];
  v33 = a2;
  *v20 = a2;
  v20[1] = a3;

  sub_213CCE520(v21, v22);
  sub_213D3BE44(v19);
  if ((*(v14 + 48))(v19, 1, v13))
  {
    (*(v17 + 8))(v19, v16);
  }

  else
  {
    v23 = v32;
    v24 = v33;
    (*(v14 + 16))(v32, v19, v13);
    (*(v17 + 8))(v19, v16);
    v25 = v34;
    MEMORY[0x21604E7B0](v13);
    (*(v14 + 8))(v23, v13);
    v26 = v36;
    sub_213D7B980(v36, v37);
    (*(v35 + 8))(v25, v26);
    v27 = *&v37[0];
    if (*&v37[0])
    {
      if (v24(v37))
      {
        v28 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v29 = swift_allocObject();
        *(v29 + 16) = v28;
        *(v29 + 24) = v27;
        *(v29 + 32) = v31 & 1;

        v27 = v27;
        sub_213D905AC();
      }
    }
  }
}

void sub_213D4222C(uint64_t a1, uint64_t a2, char a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = a3 & 1;
    v7 = Strong;
    [Strong deselectAnnotation:a2 animated:v6];
  }
}

id sub_213D422A0(void *a1, char a2, uint64_t *a3)
{
  v5 = *a3;
  if ((a2 & 1) == 0)
  {
    v5 = 0;
  }

  v6 = qword_27C8EB438;
  *(v3 + qword_27C8EB438) = v5;
  [a1 setScrollEnabled_];
  [a1 setZoomEnabled_];
  [a1 setPitchEnabled_];
  v7 = (*(v3 + v6) >> 2) & 1;

  return [a1 setRotateEnabled_];
}

uint64_t sub_213D42348(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EBB58, &unk_213D985B0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v19[-v4];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27C8EB9C8, qword_213D98278);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v19[-v8];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EBAB0, &qword_213D98468);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v19[-v11];
  sub_213D3C1CC(&v19[-v11]);
  if ((*(v7 + 48))(v12, 1, v6))
  {
    v13 = &qword_27C8EBAB0;
    v14 = &qword_213D98468;
    v15 = v12;
  }

  else
  {
    sub_213CE2C28(v12, v9, qword_27C8EB9C8, qword_213D98278);
    sub_213CD8330(v12, &qword_27C8EBAB0, &qword_213D98468);
    v16 = type metadata accessor for KeyframeAnimationState(0);
    (*(*(v16 - 8) + 56))(v5, 1, 1, v16);
    sub_213D915FC();
    v15 = v9;
    v13 = qword_27C8EB9C8;
    v14 = qword_213D98278;
  }

  sub_213CD8330(v15, v13, v14);
  v17 = *(v1 + *((*MEMORY[0x277D85000] & *v1) + 0x250));
  v20 = 0;

  sub_213CFA284(&v20, a1, v17);
}

char *sub_213D425D4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v18 = a2;
  v19 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EBAB8, &qword_213D98470);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v17 - v7;
  v9 = type metadata accessor for _MapContentInputs(0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v14 = result;
    sub_213D3BC58(v8);
    if ((*(v10 + 48))(v8, 1, v9) == 1)
    {

      sub_213CD8330(v8, &qword_27C8EBAB8, &qword_213D98470);
      return 0;
    }

    else
    {
      sub_213D49AE0(v8, v12, type metadata accessor for _MapContentInputs);
      AGGraphClearUpdate();
      v15 = AGSubgraphGetCurrent();
      AGSubgraphSetCurrent();
      sub_213D42834(a1, v12, v18, v19, &v20, a4);
      AGSubgraphSetCurrent();

      v16 = v20;
      AGGraphSetUpdate();

      sub_213D49B70(v12, type metadata accessor for _MapContentInputs);
      return v16;
    }
  }

  return result;
}

uint64_t sub_213D42834@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X5>, char **a5@<X8>, uint64_t a6)
{
  v167 = a3;
  v175 = a2;
  v171 = a5;
  v174 = a6;
  v163 = type metadata accessor for MarkerAnnotationViewModel(0);
  MEMORY[0x28223BE20](v163);
  v164 = &v162 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v166 = type metadata accessor for ResolvedMarker(0);
  MEMORY[0x28223BE20](v166);
  v170 = &v162 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v165 = type metadata accessor for CustomAnnotationViewModel(0);
  MEMORY[0x28223BE20](v165);
  v169 = &v162 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for MapContentList.Item.Content(0);
  MEMORY[0x28223BE20](v11);
  v13 = &v162 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v162 - v15;
  v168 = type metadata accessor for ResolvedAnnotation(0);
  MEMORY[0x28223BE20](v168);
  v178 = (&v162 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v179 = type metadata accessor for MapContentList.Item(0);
  v18 = *(v179 - 8);
  MEMORY[0x28223BE20](v179);
  v176 = (&v162 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v20);
  v22 = (&v162 - v21);
  v173 = sub_213D9057C();
  v172 = *(v173 - 8);
  MEMORY[0x28223BE20](v173);
  v24 = &v162 - v23;
  v25 = type metadata accessor for _MapContentOutputs(0);
  MEMORY[0x28223BE20](v25 - 8);
  v177 = &v162 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v184 = a4;
  v27 = sub_213D903FC();
  sub_213CDDDA4(a1, sub_213CD85D8, v183, a4, MEMORY[0x277D84A98], v27, MEMORY[0x277D84AC0], v28);
  v29 = v187;
  v181 = a4;
  v182 = v187;
  sub_213CDDDA4(a1, sub_213D49914, v180, a4, MEMORY[0x277D84A98], MEMORY[0x277D839B0], MEMORY[0x277D84AC0], v30);
  sub_213CDF770(v29, v24);
  v31 = v177;
  (*(v174 + 32))(v24, v175, a4);
  v32 = v31;
  (*(v172 + 8))(v24, v173);
  v33 = sub_213CD6C60();
  v34 = *MEMORY[0x277CEF7D0];
  if (v33 == *MEMORY[0x277CEF7D0])
  {
    v35 = sub_213D71A68(MEMORY[0x277D84F90]);
  }

  else
  {
    v35 = *AGGraphGetValue();
  }

  if (sub_213CD6C80() == v34)
  {
    result = sub_213D71A68(MEMORY[0x277D84F90]);
    v37 = result;
    v38 = *(v35 + 16);
    if (!v38)
    {
LABEL_12:

      v40 = *(v37 + 16);
      v41 = v176;
      if (v40)
      {
        v42 = 0;
        while (v42 < *(v37 + 16))
        {
          sub_213D4CAEC(v37 + ((*(v18 + 80) + 32) & ~*(v18 + 80)) + *(v18 + 72) * v42, v41, type metadata accessor for MapContentList.Item);
          sub_213D4CAEC(v41 + *(v179 + 24), v13, type metadata accessor for MapContentList.Item.Content);
          if (swift_getEnumCaseMultiPayload() == 1)
          {

            v49 = v170;
            sub_213D49AE0(v13, v170, type metadata accessor for ResolvedMarker);
            v50 = v166[8];
            v175 = *v41;

            v51 = sub_213D90CDC();
            if (v51)
            {
              v52 = v51;
              v53 = [v51 string];

              v174 = sub_213D9193C();
              v173 = v54;
            }

            else
            {
              v174 = 0;
              v173 = 0;
            }

            v106 = sub_213D90CCC();
            v178 = v50;
            if (v106)
            {
              v107 = v106;
              v108 = [v106 string];

              v109 = sub_213D9193C();
              v111 = v110;

              v49 = v170;
            }

            else
            {
              v109 = 0;
              v111 = 0;
            }

            v112 = v166;
            v113 = *(v49 + v166[9]);
            v114 = *(v49 + v166[10]);
            v115 = *(v49 + 16);
            v116 = *v49;
            v117 = *(v49 + 8);
            v118 = *(v49 + 18);
            v119 = *(v179 + 28);
            v120 = *(v163 + 68);
            v121 = sub_213D9100C();
            v122 = v164;
            v123 = v176 + v119;
            v124 = v170;
            (*(*(v121 - 8) + 16))(&v164[v120], v123, v121);
            v125 = v174;
            *v122 = v175;
            *(v122 + 8) = v125;
            *(v122 + 16) = v173;
            *(v122 + 24) = v109;
            *(v122 + 32) = v111;
            *(v122 + 40) = v113;
            LODWORD(v179) = v114;
            *(v122 + 48) = v114;
            *(v122 + 80) = v115;
            *(v122 + 88) = v116;
            *(v122 + 96) = v117;
            *(v122 + 104) = 1;
            *(v122 + 105) = v118;
            *(v122 + 112) = 0;
            if (*(v124 + v112[11]))
            {
              sub_213CE2B34(0, &qword_27C8E9370, 0x277D75348);
              v126 = v113;

              *(v122 + 112) = sub_213D91C3C();
            }

            else
            {
              v127 = v113;
            }

            v128 = v113;
            v129 = sub_213D90CDC();
            if (v129)
            {
              v130 = v129;
              v131 = [v129 string];

              v132 = sub_213D9193C();
              v134 = v133;
            }

            else
            {
              v132 = 0;
              v134 = 0;
            }

            *(v122 + 56) = v132;
            *(v122 + 64) = v134;
            *(v122 + 72) = sub_213D90CBC();
            v135 = sub_213D90CDC();
            if (v135)
            {
              v136 = v135;
              v137 = [v135 string];

              v138 = sub_213D9193C();
              v140 = v139;
            }

            else
            {
              v138 = 0;
              v140 = 0;
            }

            v141 = sub_213D90CCC();
            if (v141)
            {
              v142 = v141;
              v143 = [v141 string];

              v144 = sub_213D9193C();
              v146 = v145;
            }

            else
            {
              v144 = 0;
              v146 = 0;
            }

            v147 = v167;
            v148 = type metadata accessor for MapBridgingMarker();
            v149 = objc_allocWithZone(v148);
            v150 = &v149[OBJC_IVAR____TtC15_MapKit_SwiftUI17MapBridgingMarker_title];
            *v150 = 0;
            v150[1] = 0;
            v151 = &v149[OBJC_IVAR____TtC15_MapKit_SwiftUI17MapBridgingMarker_subtitle];
            *v151 = 0;
            v151[1] = 0;
            v152 = OBJC_IVAR____TtC15_MapKit_SwiftUI17MapBridgingMarker_mapItem;
            *&v149[OBJC_IVAR____TtC15_MapKit_SwiftUI17MapBridgingMarker_mapItem] = 0;
            v153 = OBJC_IVAR____TtC15_MapKit_SwiftUI17MapBridgingMarker_isCustomFeature;
            v149[OBJC_IVAR____TtC15_MapKit_SwiftUI17MapBridgingMarker_isCustomFeature] = 0;
            *v150 = v138;
            v150[1] = v140;
            *v151 = v144;
            v151[1] = v146;
            v154 = &v149[OBJC_IVAR____TtC15_MapKit_SwiftUI17MapBridgingMarker_coordinate];
            *v154 = v116;
            v154[1] = v117;
            v155 = *&v149[v152];
            *&v149[v152] = v128;
            v156 = v128;

            v149[v153] = v179;
            v185.receiver = v149;
            v185.super_class = v148;
            v157 = objc_msgSendSuper2(&v185, sel_init);

            v158 = v147;
            v159 = sub_213D9190C();
            v160 = [v158 dequeueReusableAnnotationViewWithIdentifier:v159 forAnnotation:v157];

            objc_opt_self();
            v161 = swift_dynamicCastObjCClassUnconditional();
            sub_213D2797C(v161, 0);

            sub_213D49B70(v170, type metadata accessor for ResolvedMarker);
            sub_213D49B70(v176, type metadata accessor for MapContentList.Item);
            sub_213D49B70(v177, type metadata accessor for _MapContentOutputs);
            *v171 = v161;
            return sub_213D49B70(v122, type metadata accessor for MarkerAnnotationViewModel);
          }

          ++v42;
          sub_213D49B70(v41, type metadata accessor for MapContentList.Item);
          result = sub_213D49B70(v13, type metadata accessor for MapContentList.Item.Content);
          if (v40 == v42)
          {
            goto LABEL_17;
          }
        }

LABEL_51:
        __break(1u);
      }

      else
      {
LABEL_17:

        result = sub_213D49B70(v32, type metadata accessor for _MapContentOutputs);
        *v171 = 0;
      }

      return result;
    }
  }

  else
  {
    v37 = *AGGraphGetValue();

    v38 = *(v35 + 16);
    if (!v38)
    {
      goto LABEL_12;
    }
  }

  v39 = 0;
  while (1)
  {
    if (v39 >= *(v35 + 16))
    {
      __break(1u);
      goto LABEL_51;
    }

    sub_213D4CAEC(v35 + ((*(v18 + 80) + 32) & ~*(v18 + 80)) + *(v18 + 72) * v39, v22, type metadata accessor for MapContentList.Item);
    sub_213D4CAEC(v22 + *(v179 + 24), v16, type metadata accessor for MapContentList.Item.Content);
    if (!swift_getEnumCaseMultiPayload())
    {
      break;
    }

    ++v39;
    sub_213D49B70(v22, type metadata accessor for MapContentList.Item);
    result = sub_213D49B70(v16, type metadata accessor for MapContentList.Item.Content);
    if (v38 == v39)
    {
      goto LABEL_12;
    }
  }

  v43 = v178;
  sub_213D49AE0(v16, v178, type metadata accessor for ResolvedAnnotation);
  v44 = v168[6];
  v176 = *v22;

  v45 = sub_213D90CDC();
  if (v45)
  {
    v46 = v45;
    v47 = [v45 string];

    v174 = sub_213D9193C();
    v173 = v48;
  }

  else
  {
    v174 = 0;
    v173 = 0;
  }

  v55 = v165;
  v56 = sub_213D90CCC();
  v175 = v44;
  if (v56)
  {
    v57 = v56;
    v58 = [v56 string];

    v172 = sub_213D9193C();
    v170 = v59;
  }

  else
  {
    v172 = 0;
    v170 = 0;
  }

  v60 = v168[10];
  LODWORD(v166) = *(v43 + v168[9]);
  v61 = *(v178 + v60);
  v62 = *v178;
  v63 = v178[1];
  v64 = *(v178 + v168[7]);
  v65 = v178[2];
  v66 = v178[3];
  v67 = v178 + v168[11];
  v68 = *v67;
  v69 = *(v67 + 1);
  v70 = v67[16];
  v71 = *(v178 + v168[13]);
  v72 = *(v179 + 28);
  v73 = *(v55 + 64);
  v74 = sub_213D9100C();
  v75 = v169;
  (*(*(v74 - 8) + 16))(&v169[v73], v22 + v72, v74);
  v76 = v174;
  *v75 = v176;
  *(v75 + 1) = v76;
  v77 = v172;
  *(v75 + 2) = v173;
  *(v75 + 3) = v77;
  *(v75 + 4) = v170;
  *(v75 + 5) = 0;
  v75[48] = v166;
  v75[49] = v61;
  v78 = v178;
  *(v75 + 7) = v62;
  *(v75 + 8) = v63;
  *(v75 + 9) = v64;
  *(v75 + 10) = v65;
  *(v75 + 11) = v66;
  v75[96] = 1;
  *(v75 + 13) = v68;
  *(v75 + 14) = v69;
  v75[120] = v70;
  v75[121] = v71;

  v79 = sub_213D90CDC();
  if (v79)
  {
    v80 = v79;
    v81 = [v79 string];

    v82 = sub_213D9193C();
    v84 = v83;
  }

  else
  {
    v82 = 0;
    v84 = 0;
  }

  v85 = v167;
  v86 = v177;
  v87 = sub_213D90CCC();
  if (v87)
  {
    v88 = v87;
    v89 = [v87 string];

    v90 = sub_213D9193C();
    v92 = v91;
  }

  else
  {
    v90 = 0;
    v92 = 0;
  }

  v93 = type metadata accessor for MapBridgingCustomAnnotation();
  v94 = objc_allocWithZone(v93);
  v95 = &v94[OBJC_IVAR____TtC15_MapKit_SwiftUI27MapBridgingCustomAnnotation_title];
  *v95 = 0;
  v95[1] = 0;
  v96 = &v94[OBJC_IVAR____TtC15_MapKit_SwiftUI27MapBridgingCustomAnnotation_subtitle];
  *v96 = 0;
  v96[1] = 0;
  v97 = OBJC_IVAR____TtC15_MapKit_SwiftUI27MapBridgingCustomAnnotation_mapItem;
  *&v94[OBJC_IVAR____TtC15_MapKit_SwiftUI27MapBridgingCustomAnnotation_mapItem] = 0;
  *v95 = v82;
  v95[1] = v84;
  *v96 = v90;
  v96[1] = v92;
  v98 = &v94[OBJC_IVAR____TtC15_MapKit_SwiftUI27MapBridgingCustomAnnotation_coordinate];
  *v98 = v62;
  *(v98 + 1) = v63;
  v99 = *&v94[v97];
  *&v94[v97] = 0;

  v186.receiver = v94;
  v186.super_class = v93;
  v100 = objc_msgSendSuper2(&v186, sel_init);
  v101 = v85;
  v102 = sub_213D9190C();
  v103 = [v101 dequeueReusableAnnotationViewWithIdentifier:v102 forAnnotation:v100];

  type metadata accessor for SwiftUIAnnotationView();
  v104 = swift_dynamicCastClassUnconditional();
  v105 = v169;
  sub_213D2763C(v104, 0);

  sub_213D49B70(v105, type metadata accessor for CustomAnnotationViewModel);
  sub_213D49B70(v78, type metadata accessor for ResolvedAnnotation);
  sub_213D49B70(v22, type metadata accessor for MapContentList.Item);
  result = sub_213D49B70(v86, type metadata accessor for _MapContentOutputs);
  *v171 = v104;
  return result;
}

double sub_213D43880(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27C8EB9C8, qword_213D98278);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v20 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EBAB0, &qword_213D98468);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v20 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EBB58, &unk_213D985B0);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v13 = &v20 - v12;
  *(v1 + *((*MEMORY[0x277D85000] & *v1) + 0x210)) = 1;
  if (([a1 isScrollEnabled] & 1) != 0 || (objc_msgSend(a1, sel_isZoomEnabled) & 1) != 0 || (objc_msgSend(a1, sel_isPitchEnabled) & 1) != 0 || objc_msgSend(a1, sel_isRotateEnabled))
  {
    sub_213D3C1CC(v9);
    if ((*(v4 + 48))(v9, 1, v3))
    {
      sub_213CD8330(v9, &qword_27C8EBAB0, &qword_213D98468);
      v15 = type metadata accessor for KeyframeAnimationState(0);
      (*(*(v15 - 8) + 56))(v13, 1, 1, v15);
    }

    else
    {
      sub_213CE2C28(v9, v6, qword_27C8EB9C8, qword_213D98278);
      sub_213CD8330(v9, &qword_27C8EBAB0, &qword_213D98468);
      MEMORY[0x21604E7B0](v3);
      sub_213CD8330(v6, qword_27C8EB9C8, qword_213D98278);
      v16 = type metadata accessor for KeyframeAnimationState(0);
      if ((*(*(v16 - 8) + 48))(v13, 1, v16) != 1)
      {
        sub_213CD8330(v13, &qword_27C8EBB58, &unk_213D985B0);
        v17 = swift_allocObject();
        *(v17 + 16) = v1;
        *(v17 + 24) = a1;
        v18 = v1;
        v19 = a1;
        sub_213D905AC();

        return result;
      }
    }

    sub_213CD8330(v13, &qword_27C8EBB58, &unk_213D985B0);
  }

  return result;
}

uint64_t sub_213D43C00(void *a1, void *a2)
{
  v3 = (a1 + *((*MEMORY[0x277D85000] & *a1) + 0x208));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  sub_213D49818(*v3, v5, v6);
  if (v5)
  {

    sub_213D1DFC0(v6);
    sub_213D49864(v4, v5, v6);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EBA88, &qword_213D98450);
    sub_213D915FC();

    sub_213D1E068(v6);
  }

  else
  {
    sub_213D49864(v4, 0, v6);
  }

  return sub_213D42348(a2);
}

void sub_213D43D1C(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_213D43880(v4);
}

void sub_213D43DAC(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_213D43DA8(v4);
}

double sub_213D43E14(id a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27C8EB9C8, qword_213D98278);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v36 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EBAB0, &qword_213D98468);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v36 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EBB58, &unk_213D985B0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v36 - v12;
  v14 = swift_allocObject();
  *(v14 + 16) = 0;
  v15 = (v14 + 16);
  v16 = *MEMORY[0x277D85000] & *v2;
  if (*(v2 + *(v16 + 0x210)) == 1)
  {
    v38 = v7;
    v39 = v5;
    v40 = v4;
    v41 = v14;
    v17 = (v2 + *(v16 + 520));
    v19 = *v17;
    v18 = v17[1];
    v20 = v17[2];
    sub_213D49818(*v17, v18, v20);
    if (v18)
    {
      v37 = a1;
      v43 = v19;
      v44 = v18;
      v45 = v20;
      v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EBA88, &qword_213D98450);
      MEMORY[0x21604E7B0](&v42);
      v22 = v42;
      v23 = sub_213D79B18(v42, 0xA000000000000008);
      v24 = sub_213D1E068(v22);
      if (v23)
      {
        sub_213D49864(v19, v18, v20);
        a1 = v37;
      }

      else
      {
        v43 = v19;
        v44 = v18;
        v45 = v20;
        MEMORY[0x21604E7B0](&v42, v21, v24);
        v25 = v42;
        v26 = sub_213D1E068(v42);
        a1 = v37;
        if (v25 >> 61 != 4 || ([v37 hasUserLocation] & 1) == 0)
        {
          [a1 setUserTrackingMode_];
          v27 = swift_allocObject();
          v27[2] = v19;
          v27[3] = v18;
          v27[4] = v20;

          sub_213D1DFC0(v20);
          sub_213D905AC();
        }

        sub_213D49864(v19, v18, v20);
      }
    }

    sub_213D3C1CC(v10);
    v28 = v40;
    if ((*(v39 + 48))(v10, 1, v40))
    {
      sub_213CD8330(v10, &qword_27C8EBAB0, &qword_213D98468);
      v29 = type metadata accessor for KeyframeAnimationState(0);
      (*(*(v29 - 8) + 56))(v13, 1, 1, v29);
    }

    else
    {
      v30 = v38;
      sub_213CE2C28(v10, v38, qword_27C8EB9C8, qword_213D98278);
      sub_213CD8330(v10, &qword_27C8EBAB0, &qword_213D98468);
      MEMORY[0x21604E7B0](v28);
      sub_213CD8330(v30, qword_27C8EB9C8, qword_213D98278);
      v31 = type metadata accessor for KeyframeAnimationState(0);
      if ((*(*(v31 - 8) + 48))(v13, 1, v31) != 1)
      {
        sub_213CD8330(v13, &qword_27C8EBB58, &unk_213D985B0);
        v33 = swift_allocObject();
        v33[2] = v2;
        v33[3] = a1;
        v33[4] = v41;
        v34 = v2;
        v35 = a1;

        sub_213D905AC();

        goto LABEL_13;
      }
    }

    sub_213CD8330(v13, &qword_27C8EBB58, &unk_213D985B0);
  }

LABEL_13:
  sub_213D44328(v15, v2, a1);

  return result;
}

double sub_213D44328(_BYTE *a1, void *a2, void *a3)
{
  swift_beginAccess();
  if ((*a1 & 1) == 0)
  {
    v7 = *(a2 + *((*MEMORY[0x277D85000] & *a2) + 0x250));
    v8 = swift_allocObject();
    *(v8 + 16) = v7;
    *(v8 + 24) = a3;

    v9 = a3;
    sub_213D905AC();
  }

  return result;
}

void sub_213D443EC(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_213D43E14(v4);
}

void sub_213D44454(uint64_t a1, char a2, void *a3)
{
  v12 = 1;
  memset(v9, 0, sizeof(v9));
  v10 = 0;
  v11 = 1;
  v3 = *(a1 + 16);
  if (v3)
  {
    v5 = a1 + 48;
    v6 = a2 & 1;
    do
    {
      if (*(v5 - 16) == v6)
      {
        v7 = *(v5 - 8);

        sub_213CFA348(v8, a3, v9);
        v7(v8);
      }

      v5 += 24;
      --v3;
    }

    while (v3);
  }
}

void sub_213D44518(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_213D49C44(v4);
}

double sub_213D44580(uint64_t a1, uint64_t a2, unint64_t a3)
{

  sub_213D1DFC0(a3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EBA88, &qword_213D98450);
  sub_213D915FC();

  return sub_213D1E068(a3);
}

double sub_213D44614(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4, char a5)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a5;
  *(v8 + 24) = a4;

  sub_213D1DFC0(a3);
  sub_213D1DFC0(a4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EBA88, &qword_213D98450);
  sub_213D915FC();

  return sub_213D1E068(a3);
}

double sub_213D446E8(unint64_t a1, uint64_t a2, unint64_t a3, char a4)
{
  v14 = a1;
  v15 = a2;
  v16 = a3;
  v11 = a1;
  v12 = a2;
  v13 = a3;

  sub_213D1DFC0(a3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EBA88, &qword_213D98450);
  MEMORY[0x21604E7B0](&v10);
  v6 = v10;
  v7 = swift_allocObject();
  *(v7 + 16) = a4;
  *(v7 + 24) = v6;
  v11 = v7 | 0x8000000000000000;
  sub_213D915FC();
  v8 = v16;

  return sub_213D1E068(v8);
}

void sub_213D447BC(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = a3;
  v7 = a1;
  sub_213D49F0C(a4);
}

void sub_213D44828(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_213D4A1E8(v4);
}

double sub_213D44890(void *a1)
{
  v3 = (v1 + *((*MEMORY[0x277D85000] & *v1) + 0x208));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  sub_213D49818(*v3, v5, v6);
  if (v5)
  {
    v8 = swift_allocObject();
    v8[2] = v4;
    v8[3] = v5;
    v8[4] = v6;
    v8[5] = v1;
    v8[6] = a1;
    sub_213D49818(v4, v5, v6);
    v9 = v1;
    v10 = a1;
    sub_213D905AC();

    return sub_213D49864(v4, v5, v6);
  }

  return result;
}

uint64_t sub_213D44994(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, void *a5)
{

  sub_213D1DFC0(a3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EBA88, &qword_213D98450);
  sub_213D915FC();

  sub_213D1E068(a3);
  return sub_213D42348(a5);
}

void sub_213D44A44(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_213D44890(v4);
}

void sub_213D44AAC(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = a3;
  swift_unknownObjectRetain();
  v7 = a1;
  sub_213D4A340(a4);

  swift_unknownObjectRelease();
}

uint64_t sub_213D44B28(void *a1, void *a2)
{
  v36 = a2;
  v37 = a1;
  v3 = *MEMORY[0x277D85000] & *v2;
  v38 = *(v3 + 0x1D8);
  v39[0] = v38;
  v39[1] = *(v3 + 488);
  v4 = type metadata accessor for MapSelectionManagerBox(0, v39);
  MEMORY[0x28223BE20](v4);
  v6 = &v28 - v5;
  v35 = v38;
  v7 = sub_213D91C7C();
  *&v38 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v34 = &v28 - v8;
  v9 = sub_213D9162C();
  v10 = sub_213D91C7C();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v28 - v12;
  v14 = *(v9 - 8);
  MEMORY[0x28223BE20](v15);
  v17 = &v28 - v16;
  sub_213D3BE44(v13);
  if ((*(v14 + 48))(v13, 1, v9) == 1)
  {
    return (*(v11 + 8))(v13, v10);
  }

  (*(v14 + 32))(v17, v13, v9);
  if (*(v2 + *((*MEMORY[0x277D85000] & *v2) + 0x228)))
  {
    return (*(v14 + 8))(v17, v9);
  }

  v32 = v17;
  v33 = v14;
  v31 = v6;
  v19 = [v36 annotation];
  v20 = [v37 annotations];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C8EB210, &unk_213D97270);
  v21 = sub_213D919FC();

  v29 = v7;
  v30 = v4;
  if (v21 >> 62)
  {
LABEL_20:
    v22 = sub_213D91EBC();
  }

  else
  {
    v22 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  for (i = 0; v22 != i; ++i)
  {
    if ((v21 & 0xC000000000000001) != 0)
    {
      v24 = MEMORY[0x21604EF80](i, v21);
      if (__OFADD__(i, 1))
      {
LABEL_16:
        __break(1u);
        break;
      }
    }

    else
    {
      if (i >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_20;
      }

      v24 = *(v21 + 8 * i + 32);
      swift_unknownObjectRetain();
      if (__OFADD__(i, 1))
      {
        goto LABEL_16;
      }
    }

    v25 = [v24 isEqual_];
    swift_unknownObjectRelease();
    if (v25)
    {

      v26 = v34;
      (*(*(v35 - 8) + 56))(v34, 1, 1);
      v27 = v32;
      MEMORY[0x21604E7B0](v9);
      sub_213D7C498(v26, v30);
      (*(v38 + 8))(v26, v29);
      sub_213D915FC();
      swift_unknownObjectRelease();
      return (*(v33 + 8))(v27, v9);
    }
  }

  swift_unknownObjectRelease();

  return (*(v33 + 8))(v32, v9);
}

void sub_213D45014(void *a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = a1;
  sub_213D44B28(v6, v7);
}

uint64_t sub_213D45090(void *a1, uint64_t a2)
{
  v3 = v2;
  v25 = a1;
  v26 = a2;
  v4 = *((*MEMORY[0x277D85000] & *v2) + 0x1E8);
  v28[0] = *((*MEMORY[0x277D85000] & *v2) + 0x1D8);
  v28[1] = v4;
  v5 = type metadata accessor for MapSelectionManagerBox(0, v28);
  v27 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v24 - v6;
  v8 = sub_213D9162C();
  v9 = sub_213D91C7C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v24 - v11;
  v13 = *(v8 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = &v24 - v15;
  sub_213D3BE44(v12);
  if ((*(v13 + 48))(v12, 1, v8) == 1)
  {
    return (*(v10 + 8))(v12, v9);
  }

  (*(v13 + 32))(v16, v12, v8);
  MEMORY[0x21604E7B0](v8);
  v18 = sub_213D7C0E0(v5);
  (*(v27 + 8))(v7, v5);
  if (v18)
  {
    objc_opt_self();
    v19 = swift_dynamicCastObjCClass();
    if (v19)
    {
      v20 = v19;
      v21 = v3 + *((*MEMORY[0x277D85000] & *v3) + 0x230);
      v22 = *v21;
      if (*v21)
      {
        v23 = *(v21 + 1);
        *&v28[0] = v19;
        swift_unknownObjectRetain_n();
        sub_213CD4E28(v22, v23);
        if (v22(v28))
        {
          swift_unknownObjectRetain();
          [v25 deselectAnnotation:v20 animated:0];
          sub_213CCE520(v22, v23);
LABEL_11:
          swift_unknownObjectRelease_n();
          return (*(v13 + 8))(v16, v8);
        }

        sub_213CCE520(v22, v23);
      }

      else
      {
        swift_unknownObjectRetain_n();
      }

      *&v28[0] = v20;
      swift_unknownObjectRetain();
      MEMORY[0x21604E7B0](v8);
      sub_213D7C248(v28, v5);

      sub_213D915FC();
      goto LABEL_11;
    }
  }

  return (*(v13 + 8))(v16, v8);
}

void sub_213D4547C(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = a3;
  swift_unknownObjectRetain();
  v7 = a1;
  sub_213D45090(v6, a4);

  swift_unknownObjectRelease();
}

uint64_t sub_213D454FC(void *a1, void *a2)
{
  v98 = a2;
  v76 = a1;
  v3 = *v2;
  v4 = *MEMORY[0x277D85000];
  v5 = *MEMORY[0x277D85000] & *v2;
  v6 = *(v5 + 0x1D8);
  v87 = *(v6 - 8);
  MEMORY[0x28223BE20](a1);
  v86 = &v76 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EB680, &unk_213D97FF0);
  MEMORY[0x28223BE20](v8 - 8);
  v91 = &v76 - v9;
  v10 = type metadata accessor for UserAnnotationViewModel(0);
  v89 = *(v10 - 8);
  v90 = v10;
  MEMORY[0x28223BE20](v10);
  v88 = &v76 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = type metadata accessor for CustomAnnotationViewModel(0);
  v77 = *(v79 - 8);
  MEMORY[0x28223BE20](v79);
  v78 = &v76 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v80 = &v76 - v14;
  v15 = sub_213D91C7C();
  v94 = *(v15 - 8);
  v95 = v15;
  MEMORY[0x28223BE20](v15);
  v85 = &v76 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v93 = &v76 - v18;
  v83 = type metadata accessor for MarkerAnnotationViewModel(0);
  v81 = *(v83 - 8);
  MEMORY[0x28223BE20](v83);
  v82 = &v76 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v84 = &v76 - v21;
  v22 = *((v4 & v3) + 0x1E0);
  v96 = v6;
  v99[0] = v6;
  v99[1] = v22;
  v92 = *(v5 + 488);
  v100 = v92;
  v23 = type metadata accessor for MapSelectionManagerBox(0, v99);
  v24 = *(v23 - 1);
  MEMORY[0x28223BE20](v23);
  v26 = &v76 - v25;
  v27 = sub_213D9162C();
  v28 = sub_213D91C7C();
  v29 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v31 = &v76 - v30;
  v32 = *(v27 - 8);
  MEMORY[0x28223BE20](v33);
  v35 = &v76 - v34;
  v97 = v2;
  sub_213D3BE44(v31);
  if ((*(v32 + 48))(v31, 1, v27) == 1)
  {
    return (*(v29 + 8))(v31, v28);
  }

  (*(v32 + 32))(v35, v31, v27);
  MEMORY[0x21604E7B0](v27);
  v37 = sub_213D7BF40(v23);
  (*(v24 + 8))(v26, v23);
  if (!v37)
  {
    return (*(v32 + 8))(v35, v27);
  }

  v38 = v98;
  v39 = [v98 annotation];
  v40 = v97;
  if (v39)
  {
    type metadata accessor for MapBridgingMarker();
    v41 = swift_dynamicCastClass();
    if (v41)
    {
      v42 = *(v40 + qword_27C8EB3F8 + 16);
      if (*(v42 + 16))
      {
        v43 = v41;

        v44 = sub_213CE2448(v43);
        if (v45)
        {
          v46 = v82;
          sub_213D4CAEC(*(v42 + 56) + *(v81 + 72) * v44, v82, type metadata accessor for MarkerAnnotationViewModel);

          v47 = v84;
          sub_213D49AE0(v46, v84, type metadata accessor for MarkerAnnotationViewModel);
          v48 = v93;
          sub_213D66EE0(v96, v92, v93, v49);
          MEMORY[0x21604E7B0](v27);
          sub_213D7C498(v48, v23);
          (*(v94 + 8))(v48, v95);
          sub_213D915FC();
          swift_unknownObjectRelease();
          v50 = type metadata accessor for MarkerAnnotationViewModel;
          v51 = v47;
LABEL_27:
          sub_213D49B70(v51, v50);
          return (*(v32 + 8))(v35, v27);
        }

        v38 = v98;
      }
    }

    swift_unknownObjectRelease();
  }

  v84 = v26;
  if ([v38 annotation])
  {
    type metadata accessor for MapBridgingCustomAnnotation();
    v52 = swift_dynamicCastClass();
    if (v52)
    {
      v53 = *(v40 + qword_27C8EB3F0 + 16);
      if (*(v53 + 16))
      {
        v54 = v52;

        v55 = sub_213CE249C(v54);
        if (v56)
        {
          v57 = v78;
          sub_213D4CAEC(*(v53 + 56) + *(v77 + 72) * v55, v78, type metadata accessor for CustomAnnotationViewModel);

          v58 = v80;
          sub_213D49AE0(v57, v80, type metadata accessor for CustomAnnotationViewModel);
          v59 = v93;
          sub_213D66EE0(v96, v92, v93, v60);
          MEMORY[0x21604E7B0](v27);
          sub_213D7C498(v59, v23);
          (*(v94 + 8))(v59, v95);
          sub_213D915FC();
          swift_unknownObjectRelease();
          v61 = type metadata accessor for CustomAnnotationViewModel;
LABEL_26:
          v50 = v61;
          v51 = v58;
          goto LABEL_27;
        }

        v38 = v98;
      }
    }

    swift_unknownObjectRelease();
  }

  if ([v38 annotation])
  {
    v98 = v23;
    objc_opt_self();
    v62 = swift_dynamicCastObjCClass();
    if (v62)
    {
      v63 = v62;

      v65 = v91;
      sub_213D2DCB4(v64, v91);

      if ((*(v89 + 48))(v65, 1, v90) == 1)
      {
        (*(v32 + 8))(v35, v27);
        swift_unknownObjectRelease();
        return sub_213CD8330(v65, &qword_27C8EB680, &unk_213D97FF0);
      }

      v58 = v88;
      sub_213D49AE0(v65, v88, type metadata accessor for UserAnnotationViewModel);
      v66 = v85;
      v67 = v96;
      sub_213D66EE0(v96, v92, v85, v68);
      v69 = v87;
      if ((*(v87 + 48))(v66, 1, v67) == 1)
      {
        v70 = v95;
        v71 = v66;
        v72 = *(v94 + 8);
        v72(v71, v95);
        [v76 deselectAnnotation:v63 animated:0];
        v73 = v93;
        (*(v69 + 56))(v93, 1, 1, v67);
        MEMORY[0x21604E7B0](v27);
        sub_213D7C498(v73, v98);
        v72(v73, v70);
        sub_213D915FC();
        swift_unknownObjectRelease();
        sub_213D49B70(v88, type metadata accessor for UserAnnotationViewModel);
        return (*(v32 + 8))(v35, v27);
      }

      v74 = v86;
      (*(v69 + 32))(v86, v66, v67);
      v75 = v93;
      (*(v69 + 16))(v93, v74, v67);
      (*(v69 + 56))(v75, 0, 1, v67);
      MEMORY[0x21604E7B0](v27);
      sub_213D7C498(v75, v98);
      (*(v94 + 8))(v75, v95);
      sub_213D915FC();
      swift_unknownObjectRelease();
      (*(v69 + 8))(v86, v67);
      v61 = type metadata accessor for UserAnnotationViewModel;
      goto LABEL_26;
    }

    swift_unknownObjectRelease();
  }

  return (*(v32 + 8))(v35, v27);
}

void sub_213D46140(void *a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = a1;
  sub_213D454FC(v6, v7);
}

void sub_213D461BC(void *a1, id a2)
{
  v5 = [a2 location];
  v4 = [a2 heading];
  sub_213D2DD70(v5, v4, a1);
}

void sub_213D46250(void *a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = a1;
  sub_213D461BC(v6, v7);
}

char *sub_213D462CC(void *a1, uint64_t a2)
{
  v3 = v2;
  v48 = a1;
  v5 = MEMORY[0x277D85000];
  v6 = *MEMORY[0x277D85000] & *v3;
  v7 = sub_213D917DC();
  v46 = *(v7 - 8);
  v47 = v7;
  MEMORY[0x28223BE20](v7);
  v44 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_213D917FC();
  v43 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v42 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v6 + 488);
  aBlock = *(v6 + 472);
  v51 = v10;
  v11 = type metadata accessor for MapSelectionManagerBox(0, &aBlock);
  v39 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v38 - v12;
  v14 = sub_213D9162C();
  v41 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = &v38 - v15;
  v17 = sub_213D91C7C();
  v40 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v19 = &v38 - v18;
  objc_opt_self();
  v20 = swift_dynamicCastObjCClass();
  if (v20 && (v21 = v3 + *((*v5 & *v3) + 0x238), (v22 = *v21) != 0))
  {
    v23 = *(v21 + 1);
    v49 = v20;
    sub_213CD4E28(v22, v23);
    swift_unknownObjectRetain();
    v22(&aBlock, &v49);
    v24 = *(&v51 + 1);
    v25 = v52;
    v26 = __swift_project_boxed_opaque_existential_1(&aBlock, *(&v51 + 1));
    v27 = sub_213D425D4(v26, v48, v24, v25);
    sub_213CCE520(v22, v23);
    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_1(&aBlock);
    return v27;
  }

  else
  {
    result = sub_213D2DFCC(a2, v48);
    if (!result)
    {
      objc_opt_self();
      result = swift_dynamicCastObjCClass();
      if (result)
      {
        sub_213D3BE44(v19);
        v29 = v41;
        if ((*(v41 + 48))(v19, 1, v14))
        {
          (*(v40 + 8))(v19, v17);
          v30 = 0;
        }

        else
        {
          (*(v29 + 16))(v16, v19, v14);
          (*(v40 + 8))(v19, v17);
          MEMORY[0x21604E7B0](v14);
          (*(v29 + 8))(v16, v14);
          v30 = sub_213D7BF40(v11);
          (*(v39 + 8))(v13, v11);
        }

        sub_213CE2B34(0, &qword_27C8EBB38, 0x277D85C78);
        v31 = sub_213D91BEC();
        v32 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v33 = swift_allocObject();
        *(v33 + 16) = v32;
        *(v33 + 24) = v30;
        v52 = sub_213D497F4;
        v53 = v33;
        *&aBlock = MEMORY[0x277D85DD0];
        *(&aBlock + 1) = 1107296256;
        *&v51 = sub_213CFF278;
        *(&v51 + 1) = &block_descriptor_0;
        v34 = _Block_copy(&aBlock);

        v35 = v42;
        sub_213D917EC();
        *&aBlock = MEMORY[0x277D84F90];
        sub_213D4C8F8(&qword_27C8EBB40, 255, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EBB48, &qword_213D985A8);
        sub_213CEDCEC(&qword_27C8EBB50, &qword_27C8EBB48, &qword_213D985A8, MEMORY[0x277D83970]);
        v36 = v44;
        v37 = v47;
        sub_213D91CBC();
        MEMORY[0x21604EDC0](0, v35, v36, v34);
        _Block_release(v34);

        (*(v46 + 8))(v36, v37);
        (*(v43 + 8))(v35, v45);
        return 0;
      }
    }
  }

  return result;
}

void sub_213D46998(uint64_t a1, char a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    if ([Strong showsUserLocation])
    {
      v5 = [v4 userLocation];
      v6 = [v4 viewForAnnotation_];

      [v6 setEnabled_];
      v4 = v6;
    }
  }
}

id sub_213D46A78(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = a3;
  swift_unknownObjectRetain();
  v7 = a1;
  v8 = sub_213D4A5E0(a4);

  swift_unknownObjectRelease();

  return v8;
}

id sub_213D46AF4(void *a1, uint64_t a2)
{
  v65 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EB680, &unk_213D97FF0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v58 - v4;
  v6 = type metadata accessor for UserAnnotationViewModel(0);
  v64 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for CustomAnnotationViewModel(0);
  v63 = *(v9 - 8);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v58 - v13;
  v15 = type metadata accessor for MarkerAnnotationViewModel(0);
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = &v58 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = &v58 - v20;
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    v22 = *(v2 + *((*MEMORY[0x277D85000] & *v2) + 0x240));
    goto LABEL_18;
  }

  v59 = v11;
  v60 = v16;
  v23 = v64;
  v61 = v8;
  v62 = v5;
  type metadata accessor for MapBridgingMarker();
  v24 = swift_dynamicCastClass();
  if (!v24 || (v25 = *(v2 + qword_27C8EB3F8 + 16), !*(v25 + 16)))
  {
LABEL_8:
    type metadata accessor for MapBridgingCustomAnnotation();
    v31 = swift_dynamicCastClass();
    if (v31)
    {
      v32 = *(v2 + qword_27C8EB3F0 + 16);
      if (*(v32 + 16))
      {
        v33 = v31;
        swift_unknownObjectRetain();

        v34 = sub_213CE249C(v33);
        if (v35)
        {
          v36 = v59;
          sub_213D4CAEC(*(v32 + 56) + *(v63 + 72) * v34, v59, type metadata accessor for CustomAnnotationViewModel);

          swift_unknownObjectRelease();
          sub_213D49AE0(v36, v14, type metadata accessor for CustomAnnotationViewModel);
          v22 = v14[121];
          v29 = type metadata accessor for CustomAnnotationViewModel;
          v30 = v14;
          goto LABEL_17;
        }

        swift_unknownObjectRelease();
      }
    }

    objc_opt_self();
    if (!swift_dynamicCastObjCClass())
    {
      return 0;
    }

    v38 = v62;
    sub_213D2DCB4(v37, v62);

    if ((*(v23 + 48))(v38, 1, v6) == 1)
    {
      sub_213CD8330(v38, &qword_27C8EB680, &unk_213D97FF0);
      return 0;
    }

    v39 = v38;
    v40 = v61;
    sub_213D49AE0(v39, v61, type metadata accessor for UserAnnotationViewModel);
    v22 = *(v40 + 41);
    v29 = type metadata accessor for UserAnnotationViewModel;
    v30 = v40;
    goto LABEL_17;
  }

  v26 = v24;
  v58 = v2;
  swift_unknownObjectRetain();

  v27 = sub_213CE2448(v26);
  if ((v28 & 1) == 0)
  {

    swift_unknownObjectRelease();
    v2 = v58;
    goto LABEL_8;
  }

  sub_213D4CAEC(*(v25 + 56) + *(v60 + 72) * v27, v18, type metadata accessor for MarkerAnnotationViewModel);

  swift_unknownObjectRelease();
  sub_213D49AE0(v18, v21, type metadata accessor for MarkerAnnotationViewModel);
  v22 = v21[105];
  v29 = type metadata accessor for MarkerAnnotationViewModel;
  v30 = v21;
LABEL_17:
  sub_213D49B70(v30, v29);
LABEL_18:
  if (v22 <= 2)
  {
    v45 = objc_opt_self();
    sub_213CE2B34(0, &qword_27C8EBB30, 0x277CD4E88);
    v46 = sub_213D91C1C();
    v47 = [v45 mapItemDetailWithPresentationStyle_];
LABEL_35:
    v49 = v47;

    return v49;
  }

  if (v22 > 4)
  {
    if (v22 == 5)
    {
      v48 = objc_opt_self();
      v46 = [objc_opt_self() openInMaps];
      v47 = [v48 mapItemDetailWithPresentationStyle_];
      goto LABEL_35;
    }

    return 0;
  }

  if (v22 == 3)
  {
    v41 = v65;
    v42 = [v41 nextResponder];

    if (v42)
    {
      while (1)
      {

        objc_opt_self();
        v43 = swift_dynamicCastObjCClass();
        if (v43)
        {
          break;
        }

        v41 = v42;
        v42 = [v41 nextResponder];

        if (!v42)
        {
          goto LABEL_24;
        }
      }

      v44 = v43;
    }

    else
    {
LABEL_24:
      v44 = [objc_allocWithZone(MEMORY[0x277D75D28]) init];
    }

    v54 = objc_opt_self();
    sub_213CE2B34(0, &qword_27C8EBB30, 0x277CD4E88);
    v46 = sub_213D91C2C();

    v47 = [v54 mapItemDetailWithPresentationStyle_];
    goto LABEL_35;
  }

  v50 = v65;
  v51 = [v50 nextResponder];

  if (v51)
  {
    while (1)
    {

      objc_opt_self();
      v52 = swift_dynamicCastObjCClass();
      if (v52)
      {
        break;
      }

      v50 = v51;
      v51 = [v50 nextResponder];

      if (!v51)
      {
        goto LABEL_32;
      }
    }

    v53 = v52;
  }

  else
  {
LABEL_32:
    v53 = [objc_allocWithZone(MEMORY[0x277D75D28]) init];
  }

  v56 = objc_opt_self();
  v57 = [objc_opt_self() sheetPresentedFromViewController_];

  v49 = [v56 mapItemDetailWithPresentationStyle_];
  return v49;
}

id sub_213D47320(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t (*a5)(id, uint64_t))
{
  v8 = a3;
  swift_unknownObjectRetain();
  v9 = a1;
  v10 = a5(v8, a4);

  swift_unknownObjectRelease();

  return v10;
}

double sub_213D473A0(uint64_t a1, uint64_t a2, char a3)
{
  v5 = *v3;
  v6 = *MEMORY[0x277D85000];
  v7 = *MEMORY[0x277D85000] & *v3;
  *(v3 + *((v6 & v5) + 0x228)) = 1;
  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v11 = swift_allocObject();
  *(v11 + 16) = *((v6 & v5) + 0x1D8);
  *(v11 + 24) = *(v7 + 480);
  *(v11 + 40) = *((v6 & v5) + 0x1F0);
  *(v11 + 48) = v8;
  *(v11 + 56) = v9;
  *(v11 + 64) = v10;
  *(v11 + 72) = a3;

  sub_213D905AC();

  return result;
}

void sub_213D47560(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    swift_beginAccess();
    v12 = swift_unknownObjectWeakLoadStrong();
    if (v12)
    {
      v13 = a4 & 1;
      v14 = v12;
      [v12 selectAnnotation:v11 animated:v13];
    }

    swift_unknownObjectRelease();
  }

  sub_213D4763C(a1);
}

void sub_213D4763C(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    *(Strong + *((*MEMORY[0x277D85000] & *Strong) + 0x228)) = 0;
  }
}

id sub_213D476B0()
{
  v1 = *v0;
  v2 = MEMORY[0x277D85000];
  v3 = *MEMORY[0x277D85000];
  swift_unknownObjectWeakInit();
  v4 = *((*v2 & *v0) + 0x200);
  v5 = type metadata accessor for _MapContentInputs(0);
  (*(*(v5 - 8) + 56))(&v0[v4], 1, 1, v5);
  v6 = &v0[*((*v2 & *v0) + 0x208)];
  *(v6 + 1) = 0;
  *(v6 + 2) = 0;
  *v6 = 0;
  v0[*((*v2 & *v0) + 0x210)] = 0;
  v7 = *((*v2 & *v0) + 0x218);
  v8 = *((v3 & v1) + 0x1D8);
  v9 = *((v3 & v1) + 0x1E0);
  v10 = *((v3 & v1) + 0x1E8);
  v11 = *((v3 & v1) + 0x1F0);
  v19 = v8;
  v20 = v9;
  v21 = v10;
  v22 = v11;
  type metadata accessor for MapSelectionManagerBox(255, &v19);
  v12 = sub_213D9162C();
  (*(*(v12 - 8) + 56))(&v0[v7], 1, 1, v12);
  v0[*((*v2 & *v0) + 0x220)] = 0;
  v0[*((*v2 & *v0) + 0x228)] = 0;
  v13 = &v0[*((*v2 & *v0) + 0x230)];
  *v13 = 0;
  *(v13 + 1) = 0;
  v14 = &v0[*((*v2 & *v0) + 0x238)];
  *v14 = 0;
  *(v14 + 1) = 0;
  v0[*((*v2 & *v0) + 0x240)] = 6;
  v15 = *((*v2 & *v0) + 0x248);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27C8EB9C8, qword_213D98278);
  (*(*(v16 - 8) + 56))(&v0[v15], 1, 1, v16);
  *&v0[*((*v2 & *v0) + 0x250)] = MEMORY[0x277D84F90];
  v19 = v8;
  v20 = v9;
  v21 = v10;
  v22 = v11;
  v18.receiver = v0;
  v18.super_class = type metadata accessor for MapBridgingViewCoordinator(0, &v19);
  return objc_msgSendSuper2(&v18, sel_init);
}

uint64_t sub_213D47A0C()
{
  v1 = MEMORY[0x277D85000];
  v2 = *MEMORY[0x277D85000] & *v0;
  MEMORY[0x21604FCE0](&v0[*(v2 + 0x1F8)]);
  sub_213CD8330(&v0[*((*v1 & *v0) + 0x200)], &qword_27C8EBAB8, &qword_213D98470);
  v3 = &v0[*((*v1 & *v0) + 0x208)];
  sub_213D49864(*v3, *(v3 + 1), *(v3 + 2));
  v4 = *((*v1 & *v0) + 0x218);
  v5 = *(v2 + 488);
  v10[0] = *(v2 + 472);
  v10[1] = v5;
  type metadata accessor for MapSelectionManagerBox(255, v10);
  sub_213D9162C();
  v6 = sub_213D91C7C();
  (*(*(v6 - 8) + 8))(&v0[v4], v6);
  v7 = &v0[*((*v1 & *v0) + 0x230)];
  sub_213CCE520(*v7, v7[1]);
  v8 = &v0[*((*v1 & *v0) + 0x238)];
  sub_213CCE520(*v8, v8[1]);
  sub_213CD8330(&v0[*((*v1 & *v0) + 0x248)], &qword_27C8EBAB0, &qword_213D98468);
}

id sub_213D47C18()
{
  v1 = *((*MEMORY[0x277D85000] & *v0) + 0x1E8);
  v4[0] = *((*MEMORY[0x277D85000] & *v0) + 0x1D8);
  v4[1] = v1;
  v2 = type metadata accessor for MapBridgingViewCoordinator(0, v4);
  v5.receiver = v0;
  v5.super_class = v2;
  return objc_msgSendSuper2(&v5, sel_dealloc);
}

uint64_t sub_213D47C9C(char *a1)
{
  v2 = MEMORY[0x277D85000];
  v3 = *MEMORY[0x277D85000] & *a1;
  MEMORY[0x21604FCE0](&a1[*(v3 + 0x1F8)]);
  sub_213CD8330(&a1[*((*v2 & *a1) + 0x200)], &qword_27C8EBAB8, &qword_213D98470);
  v4 = &a1[*((*v2 & *a1) + 0x208)];
  sub_213D49864(*v4, *(v4 + 1), *(v4 + 2));
  v5 = *((*v2 & *a1) + 0x218);
  v6 = *(v3 + 488);
  v11[0] = *(v3 + 472);
  v11[1] = v6;
  type metadata accessor for MapSelectionManagerBox(255, v11);
  sub_213D9162C();
  v7 = sub_213D91C7C();
  (*(*(v7 - 8) + 8))(&a1[v5], v7);
  v8 = &a1[*((*v2 & *a1) + 0x230)];
  sub_213CCE520(*v8, v8[1]);
  v9 = &a1[*((*v2 & *a1) + 0x238)];
  sub_213CCE520(*v9, v9[1]);
  sub_213CD8330(&a1[*((*v2 & *a1) + 0x248)], &qword_27C8EBAB0, &qword_213D98468);
}

void sub_213D47EC4(uint64_t a1)
{
  sub_213D4C63C(319, &qword_27C8EBA50, &type metadata for MapCameraPosition, MEMORY[0x277CE11F8]);
  if (v3 <= 0x3F)
  {
    v14 = 0;
    v19 = v2;
    sub_213D4C63C(319, qword_27C8EB780, &type metadata for MapCameraBounds, MEMORY[0x277D83D88]);
    if (v5 <= 0x3F)
    {
      v15 = 0;
      v20 = v4;
      v21 = &type metadata for MapInteractionModes;
      v6 = *(a1 + 40);
      v13[0] = *(a1 + 16);
      v13[1] = v6;
      type metadata accessor for MapSelectionManagerBox(255, v13);
      sub_213D9162C();
      v7 = sub_213D91C7C();
      if (v8 <= 0x3F)
      {
        v16 = 0;
        v22 = v7;
        sub_213D4C63C(319, &qword_27C8E9590, MEMORY[0x277CE1448], MEMORY[0x277D83D88]);
        if (v10 <= 0x3F)
        {
          v17 = 0;
          v23 = v9;
          v11 = swift_checkMetadataState();
          if (v12 <= 0x3F)
          {
            v18 = 0;
            v24 = v11;
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_213D48030(unsigned __int16 *a1, unsigned int a2, void *a3)
{
  v4 = *(a3[2] - 8);
  v5 = *(v4 + 64);
  v6 = *(a3[3] - 8);
  v7 = *(a3[4] - 8);
  v8 = *(v7 + 84);
  if (v8 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = *(v7 + 84);
  }

  v12 = v6 + 80;
  v10 = *(v6 + 80);
  v11 = *(v12 + 4);
  v13 = *(*(a3[3] - 8) + 64);
  if (!*(v4 + 84))
  {
    ++v5;
  }

  v14 = *(v4 + 80);
  if (!v11)
  {
    ++v13;
  }

  if (v5 <= v13)
  {
    v5 = v13;
  }

  v15 = *(v7 + 80);
  if (v5 <= 8)
  {
    v16 = 8;
  }

  else
  {
    v16 = v5;
  }

  if (!a2)
  {
    return 0;
  }

  v17 = (v10 | v14) & 0xF8 | 7u;
  v18 = v16 + ((v17 + 16) & ~v17) + 1;
  v19 = v15 + 9;
  v20 = a2 - v9;
  if (a2 <= v9)
  {
    goto LABEL_35;
  }

  v21 = ((v19 + ((v18 + ((v17 + 104) & ~v17) + 7) & 0xFFFFFFFFFFFFFFF8)) & ~v15) + *(*(a3[4] - 8) + 64);
  v22 = 8 * v21;
  if (v21 <= 3)
  {
    v25 = ((v20 + ~(-1 << v22)) >> v22) + 1;
    if (HIWORD(v25))
    {
      v23 = *(a1 + v21);
      if (!v23)
      {
        goto LABEL_35;
      }

      goto LABEL_24;
    }

    if (v25 > 0xFF)
    {
      v23 = *(a1 + v21);
      if (!*(a1 + v21))
      {
        goto LABEL_35;
      }

      goto LABEL_24;
    }

    if (v25 < 2)
    {
LABEL_35:
      if ((v8 & 0x80000000) != 0)
      {
        return (*(v7 + 48))((v19 + ((v18 + ((((a1 + 31) & 0xFFFFFFFFFFFFFFF8) + v17 + 80) & ~v17) + 7) & 0xFFFFFFFFFFFFFFF8)) & ~v15);
      }

      v27 = *(a1 + 1);
      if (v27 >= 0xFFFFFFFF)
      {
        LODWORD(v27) = -1;
      }

      return (v27 + 1);
    }
  }

  v23 = *(a1 + v21);
  if (!*(a1 + v21))
  {
    goto LABEL_35;
  }

LABEL_24:
  v26 = (v23 - 1) << v22;
  if (v21 > 3)
  {
    v26 = 0;
  }

  if (v21)
  {
    if (v21 > 3)
    {
      LODWORD(v21) = 4;
    }

    if (v21 > 2)
    {
      if (v21 == 3)
      {
        LODWORD(v21) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v21) = *a1;
      }
    }

    else if (v21 == 1)
    {
      LODWORD(v21) = *a1;
    }

    else
    {
      LODWORD(v21) = *a1;
    }
  }

  return v9 + (v21 | v26) + 1;
}

void sub_213D482BC(char *a1, unsigned int a2, unsigned int a3, void *a4)
{
  v6 = *(a4[2] - 8);
  v7 = *(v6 + 64);
  v8 = *(a4[3] - 8);
  v9 = *(a4[4] - 8);
  v10 = *(v9 + 84);
  if (v10 <= 0x7FFFFFFF)
  {
    v11 = 0x7FFFFFFF;
  }

  else
  {
    v11 = *(v9 + 84);
  }

  if (!*(v6 + 84))
  {
    ++v7;
  }

  v12 = (*(v8 + 80) | *(v6 + 80)) & 0xF8 | 7u;
  if (*(v8 + 84))
  {
    v13 = *(*(a4[3] - 8) + 64);
  }

  else
  {
    v13 = *(*(a4[3] - 8) + 64) + 1;
  }

  if (v7 > v13)
  {
    v13 = v7;
  }

  if (v13 <= 8)
  {
    v13 = 8;
  }

  v14 = v13 + ((v12 + 16) & ~v12) + 1;
  v15 = *(v9 + 80);
  v16 = ((v15 + 9 + ((v14 + ((v12 + 104) & ~v12) + 7) & 0xFFFFFFFFFFFFFFF8)) & ~v15) + *(*(a4[4] - 8) + 64);
  v17 = a3 >= v11;
  v18 = a3 - v11;
  if (v18 != 0 && v17)
  {
    if (v16 <= 3)
    {
      v22 = ((v18 + ~(-1 << (8 * v16))) >> (8 * v16)) + 1;
      if (HIWORD(v22))
      {
        v19 = 4;
      }

      else
      {
        if (v22 < 0x100)
        {
          v23 = 1;
        }

        else
        {
          v23 = 2;
        }

        if (v22 >= 2)
        {
          v19 = v23;
        }

        else
        {
          v19 = 0;
        }
      }
    }

    else
    {
      v19 = 1;
    }
  }

  else
  {
    v19 = 0;
  }

  if (v11 < a2)
  {
    v20 = ~v11 + a2;
    if (v16 < 4)
    {
      v21 = (v20 >> (8 * v16)) + 1;
      if (v16)
      {
        v24 = v20 & ~(-1 << (8 * v16));
        bzero(a1, v16);
        if (v16 != 3)
        {
          if (v16 == 2)
          {
            *a1 = v24;
            if (v19 > 1)
            {
LABEL_55:
              if (v19 == 2)
              {
                *&a1[v16] = v21;
              }

              else
              {
                *&a1[v16] = v21;
              }

              return;
            }
          }

          else
          {
            *a1 = v20;
            if (v19 > 1)
            {
              goto LABEL_55;
            }
          }

          goto LABEL_52;
        }

        *a1 = v24;
        a1[2] = BYTE2(v24);
      }

      if (v19 > 1)
      {
        goto LABEL_55;
      }
    }

    else
    {
      bzero(a1, v16);
      *a1 = v20;
      v21 = 1;
      if (v19 > 1)
      {
        goto LABEL_55;
      }
    }

LABEL_52:
    if (v19)
    {
      a1[v16] = v21;
    }

    return;
  }

  if (v19 > 1)
  {
    if (v19 != 2)
    {
      *&a1[v16] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_40;
    }

    *&a1[v16] = 0;
  }

  else if (v19)
  {
    a1[v16] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_40;
  }

  if (!a2)
  {
    return;
  }

LABEL_40:
  if ((v10 & 0x80000000) != 0)
  {
    v25 = *(v9 + 56);

    v25((v15 + 9 + ((v14 + ((((a1 + 31) & 0xFFFFFFFFFFFFFFF8) + v12 + 80) & ~v12) + 7) & 0xFFFFFFFFFFFFFFF8)) & ~v15);
  }

  else if ((a2 & 0x80000000) != 0)
  {
    *(a1 + 1) = 0;
    *(a1 + 2) = 0;
    *a1 = a2 & 0x7FFFFFFF;
  }

  else
  {
    *(a1 + 1) = a2 - 1;
  }
}

uint64_t sub_213D48710@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X8>)
{
  v8 = v4;
  v10 = sub_213D90C0C();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  MEMORY[0x28223BE20](v14);
  v16 = &v20 - v15;
  sub_213CE2C28(v8, &v20 - v15, a1, a2);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = a3(0);
    return (*(*(v17 - 8) + 32))(a4, v16, v17);
  }

  else
  {
    sub_213D91BDC();
    v19 = sub_213D9119C();
    sub_213D9043C();

    sub_213D90BFC();
    swift_getAtKeyPath();

    return (*(v11 + 8))(v13, v10);
  }
}

void sub_213D489DC(uint64_t a1, void *a2)
{
  v10 = 1;
  memset(v7, 0, sizeof(v7));
  v8 = 0;
  v9 = 1;
  v2 = *(a1 + 16);
  if (v2)
  {
    v4 = a1 + 48;
    do
    {
      if (*(v4 - 16) == 1)
      {
        v5 = *(v4 - 8);

        sub_213CFA348(v6, a2, v7);
        v5(v6);
      }

      v4 += 24;
      --v2;
    }

    while (v2);
  }
}

uint64_t sub_213D48A94@<X0>(uint64_t a1@<X0>, void (*a2)(char *)@<X1>, uint64_t a3@<X2>, uint64_t a5@<X4>, char *a7@<X8>)
{
  v25[1] = a3;
  v26 = a2;
  v25[0] = a1;
  v27 = a7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EBEF8, &qword_213D98B58);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v25 - v11;
  v13 = *(a5 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = v25 - v18;
  v20 = sub_213D905CC();
  v22 = *(v20 - 8);
  result = v20 - 8;
  if (*(v22 + 64) == v10)
  {
    (*(v9 + 16))(v12, v25[0], v8);
    v26(v12);
    (*(v9 + 8))(v12, v8);
    v23 = *(v13 + 16);
    v23(v19, v16, a5);
    v24 = *(v13 + 8);
    v24(v16, a5);
    v23(v27, v19, a5);
    return (v24)(v19, a5);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_213D48CE4(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C8EBB70, &qword_213D985E0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

uint64_t sub_213D48E14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = *(a5 - 8);
  v12 = MEMORY[0x28223BE20](a1);
  v14 = &v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = v15(v12);
  if (v8)
  {
    return (*(v11 + 32))(a8, v14, a5);
  }

  return result;
}

void *sub_213D48EFC(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = *(*(a4 + 48) + ((v12 << 9) | (8 * v17)));
      *v11 = v18;
      if (v14 == v10)
      {
        v22 = v18;
        goto LABEL_24;
      }

      ++v11;
      v19 = v18;
      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v21 = v12 + 1;
    }

    else
    {
      v21 = (63 - v7) >> 6;
    }

    v12 = v21 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_213D49050@<X0>(uint64_t result@<X0>, int a2@<W1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  if (result < 0 || (v4 = result, 1 << *(a3 + 32) <= result))
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a3 + 8 * (result >> 6) + 64) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a3 + 36) == a2)
  {
    v6 = *(a3 + 56);
    v7 = type metadata accessor for UserAnnotationViewModel(0);
    return sub_213D4CAEC(v6 + *(*(v7 - 8) + 72) * v4, a4, type metadata accessor for UserAnnotationViewModel);
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t *__swift_allocate_boxed_opaque_existential_0(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_213D49164(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || 1 << *(a4 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 8 * (result >> 6) + 64) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    return *(*(a4 + 48) + 8 * result);
  }

LABEL_8:
  __break(1u);
  return result;
}

id sub_213D491B8(uint64_t a1)
{
  v2 = v1;
  objc_opt_self();
  v3 = swift_dynamicCastObjCClass();
  if (v3)
  {
    v4 = *(v1 + qword_27C8EB420 + 16);
    if (*(v4 + 16))
    {
      v5 = v3;
      swift_unknownObjectRetain();

      v6 = sub_213CE23A4(v5);
      if (v7)
      {
        v8 = (*(v4 + 56) + 96 * v6);
        v9 = v8[1];
        v59 = *v8;
        v60 = v9;
        v10 = v8[5];
        v12 = v8[2];
        v11 = v8[3];
        v63 = v8[4];
        v64 = v10;
        v61 = v12;
        v62 = v11;
        sub_213D1E6AC(&v59, &v51);

        v13 = 0x277CD4DF8;
        if (!v64)
        {
          v13 = 0x277CD4F30;
        }

        v14 = [objc_allocWithZone(*v13) initWithPolyline_];
        v53 = v61;
        v54 = v62;
        v55 = v63;
        v56 = v64;
        v51 = v59;
        v52 = v60;
        v15 = v14;
        sub_213D28034(v15);

        swift_unknownObjectRelease();
        sub_213D1E764(&v59);
        return v15;
      }

      swift_unknownObjectRelease();
    }
  }

  objc_opt_self();
  v16 = swift_dynamicCastObjCClass();
  if (v16)
  {
    v17 = *(v2 + qword_27C8EB428 + 16);
    if (*(v17 + 16))
    {
      v18 = v16;
      swift_unknownObjectRetain();

      v19 = sub_213CE2354(v18);
      if (v20)
      {
        v21 = *(v17 + 56) + 120 * v19;
        v23 = *(v21 + 32);
        v22 = *(v21 + 48);
        v24 = *(v21 + 16);
        v59 = *v21;
        v60 = v24;
        v61 = v23;
        v62 = v22;
        v25 = *(v21 + 64);
        v26 = *(v21 + 80);
        v27 = *(v21 + 96);
        *&v66 = *(v21 + 112);
        v64 = v26;
        v65 = v27;
        v63 = v25;
        sub_213D1E518(&v59, &v51);

        v55 = v63;
        v56 = v64;
        v57 = v65;
        v58 = v66;
        v51 = v59;
        v52 = v60;
        v53 = v61;
        v54 = v62;
        v15 = sub_213D28658(v18);
        swift_unknownObjectRelease();
        sub_213D1E4C4(&v59);
        return v15;
      }

      swift_unknownObjectRelease();
    }
  }

  objc_opt_self();
  v28 = swift_dynamicCastObjCClass();
  if (v28)
  {
    v29 = *(v2 + qword_27C8EB430 + 16);
    if (*(v29 + 16))
    {
      v30 = v28;
      swift_unknownObjectRetain();

      v31 = sub_213CE2258(v30);
      if (v32)
      {
        v33 = *(v29 + 56) + 136 * v31;
        v59 = *v33;
        v34 = *(v33 + 48);
        v35 = *(v33 + 64);
        v36 = *(v33 + 32);
        v60 = *(v33 + 16);
        v61 = v36;
        v62 = v34;
        v63 = v35;
        v37 = *(v33 + 80);
        v38 = *(v33 + 96);
        v39 = *(v33 + 112);
        v67 = *(v33 + 128);
        v65 = v38;
        v66 = v39;
        v64 = v37;
        sub_213D1E18C(&v59, &v51);

        v15 = [objc_allocWithZone(MEMORY[0x277CD4DA8]) initWithCircle_];
        v40 = *(&v62 + 1);
        v41 = v63;
        v42 = DWORD1(v63);
        v43 = *(&v63 + 1);
        v44 = v64;

        [v15 setLineWidth_];
        [v15 setLineCap_];
        [v15 setLineJoin_];
        [v15 setMiterLimit_];
        if (*(v44 + 16))
        {

          sub_213D18410(v45);

          sub_213CE2B34(0, &unk_27C8EB188, 0x277CCABB0);
          v46 = sub_213D919EC();
        }

        else
        {
          v46 = 0;
        }

        [v15 setLineDashPattern_];

        [v15 setLineDashPhase_];

        if ((BYTE8(v65) & 1) != 0 && !*(v65 + 16))
        {
          sub_213D9149C();
        }

        else
        {
        }

        sub_213CE2B34(0, &qword_27C8E9370, 0x277D75348);
        v49 = sub_213D91C3C();
        [v15 setStrokeColor_];

        if ((BYTE8(v66) & 1) != 0 && !*(v66 + 16))
        {
          sub_213D9149C();
        }

        else
        {
        }

        v50 = sub_213D91C3C();
        [v15 setFillColor_];
        swift_unknownObjectRelease();
        sub_213D1E108(&v59);

        return v15;
      }

      swift_unknownObjectRelease();
    }
  }

  v47 = objc_allocWithZone(MEMORY[0x277CD4EE8]);

  return [v47 init];
}

id sub_213D496F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[0] = a1;
  v5[1] = a2;
  v5[2] = a3;
  v5[3] = a4;
  return [objc_allocWithZone(type metadata accessor for MapBridgingViewCoordinator(0 v5))];
}

double sub_213D497CC(uint64_t a1, uint64_t a2, char a3, void (*a4)(uint64_t, uint64_t))
{
  if (a3)
  {
    a4(a1, a2);
  }

  else
  {
  }

  return result;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_213D49818(unint64_t result, uint64_t a2, unint64_t a3)
{
  if (a2)
  {

    sub_213D1DFC0(a3);
  }
}

double sub_213D49864(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a2)
  {

    return sub_213D1E068(a3);
  }

  return result;
}

uint64_t sub_213D498B4()
{
  v1 = *(v0 + 32);
  sub_213D42348(*(v0 + 24));
  result = swift_beginAccess();
  *(v1 + 16) = 1;
  return result;
}

uint64_t objectdestroy_107Tm(void (*a1)(void), uint64_t a2)
{
  a1(*(v2 + 16));

  return swift_deallocObject();
}

uint64_t objectdestroy_118Tm()
{

  swift_unknownObjectRelease();

  return swift_deallocObject();
}

unint64_t sub_213D49ACC(unint64_t result)
{
  if ((~result & 0xF000000000000007) != 0)
  {
    return sub_213D1DFC0(result);
  }

  return result;
}

uint64_t sub_213D49AE0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_213D49B70(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

double sub_213D49C44(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EBB58, &unk_213D985B0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v19 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EBAB0, &qword_213D98468);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v19 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27C8EB9C8, qword_213D98278);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v19 - v11;
  sub_213D3C1CC(v8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_213CD8330(v8, &qword_27C8EBAB0, &qword_213D98468);
    v13 = 0;
  }

  else
  {
    sub_213CED608(v8, v12, qword_27C8EB9C8, qword_213D98278);
    MEMORY[0x21604E7B0](v9);
    sub_213CD8330(v12, qword_27C8EB9C8, qword_213D98278);
    v14 = type metadata accessor for KeyframeAnimationState(0);
    v13 = (*(*(v14 - 8) + 48))(v5, 1, v14) != 1;
    sub_213CD8330(v5, &qword_27C8EBB58, &unk_213D985B0);
  }

  v15 = *(v1 + *((*MEMORY[0x277D85000] & *v1) + 0x250));
  v16 = swift_allocObject();
  *(v16 + 16) = v15;
  *(v16 + 24) = v13;
  *(v16 + 32) = a1;

  v17 = a1;
  sub_213D905AC();

  return result;
}

double sub_213D49F0C(uint64_t a1)
{
  v3 = (v1 + *((*MEMORY[0x277D85000] & *v1) + 0x208));
  v5 = *v3;
  v4 = v3[1];
  v6 = v3[2];
  sub_213D49818(*v3, v4, v6);
  if (v4)
  {
    v13[1] = v5;
    v13[2] = v4;
    v13[3] = v6;
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EBA88, &qword_213D98450);
    MEMORY[0x21604E7B0](v13, v8);
    v9 = v13[0];
    if (a1 == 2)
    {
      if (v13[0] >> 61 == 4)
      {
        if (*((v13[0] & 0x1FFFFFFFFFFFFFFFLL) + 0x10) == 1)
        {
          goto LABEL_12;
        }

        goto LABEL_15;
      }
    }

    else
    {
      if (a1 != 1)
      {
        if (!a1 && v13[0] >> 61 == 4)
        {
          goto LABEL_6;
        }

LABEL_12:
        sub_213D49864(v5, v4, v6);
        return sub_213D1E068(v9);
      }

      if (v13[0] >> 61 == 4)
      {
        if ((*((v13[0] & 0x1FFFFFFFFFFFFFFFLL) + 0x10) & 1) == 0)
        {
          goto LABEL_12;
        }

LABEL_15:
        v11 = *((v13[0] & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
        v12 = swift_allocObject();
        v12[2] = v5;
        v12[3] = v4;
        v12[4] = v6;
        v12[5] = v11;
        sub_213D49818(v5, v4, v6);
        sub_213D1DFC0(v11);
        goto LABEL_16;
      }
    }

LABEL_6:
    v10 = swift_allocObject();
    v10[2] = v5;
    v10[3] = v4;
    v10[4] = v6;

    sub_213D1DFC0(v6);
LABEL_16:
    sub_213D905AC();
    sub_213D49864(v5, v4, v6);

    return sub_213D1E068(v9);
  }

  return result;
}

double sub_213D4A1E8(void *a1)
{
  v2 = v1;
  v4 = (v1 + *((*MEMORY[0x277D85000] & *v1) + 0x208));
  v5 = *v4;
  v6 = v4[1];
  v7 = v4[2];
  sub_213D49818(*v4, v6, v7);
  if (v6)
  {
    v15[1] = v5;
    v15[2] = v6;
    v15[3] = v7;
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EBA88, &qword_213D98450);
    MEMORY[0x21604E7B0](v15, v9);
    v10 = v15[0];
    v11 = sub_213D1E068(v15[0]);
    if (v10 >> 61 != 4 || ([a1 hasUserLocation] & 1) == 0)
    {
      [a1 setUserTrackingMode_];
      v12 = swift_allocObject();
      v12[2] = v5;
      v12[3] = v6;
      v12[4] = v7;
      v12[5] = v2;
      v12[6] = a1;
      sub_213D49818(v5, v6, v7);
      v13 = v2;
      v14 = a1;
      sub_213D905AC();
    }

    return sub_213D49864(v5, v6, v7);
  }

  return result;
}

uint64_t sub_213D4A340(uint64_t a1)
{
  v2 = *((*MEMORY[0x277D85000] & *v1) + 0x1E8);
  v14[0] = *((*MEMORY[0x277D85000] & *v1) + 0x1D8);
  v14[1] = v2;
  v3 = type metadata accessor for MapSelectionManagerBox(0, v14);
  MEMORY[0x28223BE20](v3);
  v4 = sub_213D9162C();
  v5 = sub_213D91C7C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v14 - v7;
  v9 = *(v4 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = v14 - v11;
  sub_213D3BE44(v8);
  if ((*(v9 + 48))(v8, 1, v4) == 1)
  {
    return (*(v6 + 8))(v8, v5);
  }

  (*(v9 + 32))(v12, v8, v4);
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    *&v14[0] = 0;
    MEMORY[0x21604E7B0](v4);
    sub_213D7C248(v14, v3);
    sub_213D915FC();
  }

  return (*(v9 + 8))(v12, v4);
}

uint64_t objectdestroy_95Tm()
{

  sub_213D1E068(*(v0 + 32));

  return swift_deallocObject();
}

uint64_t objectdestroy_156Tm()
{

  sub_213D1E068(*(v0 + 32));
  sub_213D1E068(*(v0 + 40));

  return swift_deallocObject();
}

uint64_t objectdestroy_104Tm()
{

  sub_213D1E068(*(v0 + 32));

  return swift_deallocObject();
}

uint64_t sub_213D4A7D0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t sub_213D4A838(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

void sub_213D4A87C(uint64_t a1)
{
  sub_213D4C63C(319, &qword_27C8EBC88, &type metadata for MapContentList, MEMORY[0x277CEF780]);
  if (v3 <= 0x3F)
  {
    v26 = v2;
    v27 = v2;
    v18 = 0;
    v28 = v2;
    v29 = v2;
    v19 = 0;
    v30 = v2;
    v31 = v2;
    sub_213D4C68C(319, &qword_27C8EBC90, &qword_27C8EBA88, &qword_213D98450, MEMORY[0x277CEF788]);
    if (v5 <= 0x3F)
    {
      v20 = 0;
      v32 = v4;
      sub_213D4C68C(319, &qword_27C8EBC98, qword_27C8EB6F0, &qword_213D98050, MEMORY[0x277CEF788]);
      if (v7 <= 0x3F)
      {
        v21 = 0;
        v33 = v6;
        sub_213D4C63C(319, &qword_27C8EBCA0, &type metadata for MapInteractionModes, MEMORY[0x277CEF788]);
        if (v9 <= 0x3F)
        {
          v22 = 0;
          v34 = v8;
          v10 = *(a1 + 40);
          v17[0] = *(a1 + 16);
          v17[1] = v10;
          type metadata accessor for MapSelectionManagerBox(255, v17);
          sub_213D9162C();
          sub_213D91C7C();
          v11 = sub_213D903FC();
          if (v12 <= 0x3F)
          {
            v23 = 0;
            v35 = v11;
            sub_213D4C68C(319, &qword_27C8EBCA8, &unk_27C8EBA90, &unk_213D98458, MEMORY[0x277CEF788]);
            if (v14 <= 0x3F)
            {
              v24 = 0;
              v36 = v13;
              v15 = type metadata accessor for _MapContentInputs(319);
              if (v16 <= 0x3F)
              {
                v25 = 0;
                v37 = v15;
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

void sub_213D4AAB4(uint64_t a1)
{
  sub_213D4AC9C(319);
  if (v1 <= 0x3F)
  {
    sub_213D4C63C(319, &qword_27C8EBD40, MEMORY[0x277D85048], MEMORY[0x277CDF468]);
    if (v2 <= 0x3F)
    {
      sub_213D4C63C(319, &qword_27C8E9590, MEMORY[0x277CE1448], MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        sub_213D4C68C(319, &qword_27C8EBD48, &qword_27C8EBD50, qword_213D98728, MEMORY[0x277CDF468]);
        if (v4 <= 0x3F)
        {
          sub_213D4C68C(319, qword_27C8EBD58, &qword_27C8EBB58, &unk_213D985B0, MEMORY[0x277CE10B8]);
          if (v5 <= 0x3F)
          {
            sub_213D4C63C(319, &qword_27C8EBA50, &type metadata for MapCameraPosition, MEMORY[0x277CE11F8]);
            if (v6 <= 0x3F)
            {
              sub_213CECECC();
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

void sub_213D4AC9C(uint64_t a1)
{
  if (!qword_27C8EBD38)
  {
    type metadata accessor for MapPreferenceWrapperHolder();
    sub_213D4C8F8(&qword_27C8EBB08, v1, type metadata accessor for MapPreferenceWrapperHolder, &unk_213D983A8);
    v2 = sub_213D907BC();
    if (!v3)
    {
      atomic_store(v2, &qword_27C8EBD38);
    }
  }
}

void sub_213D4AD34(uint64_t a1)
{
  v68 = &type metadata for MapContentList;
  v69 = &type metadata for MapContentList;
  v45 = 0;
  v70 = &type metadata for MapContentList;
  v71 = &type metadata for MapContentList;
  v46 = 0;
  v72 = &type metadata for MapContentList;
  v73 = &type metadata for MapContentList;
  sub_213D4C63C(319, &qword_27C8EBA50, &type metadata for MapCameraPosition, MEMORY[0x277CE11F8]);
  if (v3 <= 0x3F)
  {
    v47 = 0;
    v74 = v2;
    sub_213D4C63C(319, qword_27C8EB780, &type metadata for MapCameraBounds, MEMORY[0x277D83D88]);
    if (v5 <= 0x3F)
    {
      v48 = 0;
      v75 = v4;
      v76 = &type metadata for MapInteractionModes;
      v6 = *(a1 + 32);
      v44[0] = *(a1 + 16);
      v44[1] = v6;
      type metadata accessor for MapSelectionManagerBox(255, v44);
      sub_213D9162C();
      v7 = sub_213D91C7C();
      if (v8 <= 0x3F)
      {
        v49 = 0;
        v77 = v7;
        type metadata accessor for Subgraph(319);
        if (v10 <= 0x3F)
        {
          v50 = 0;
          v78 = v9;
          v11 = type metadata accessor for _MapContentInputs(319);
          if (v12 <= 0x3F)
          {
            v51 = 0;
            v79 = v11;
            sub_213D4C68C(319, &qword_27C8EBDE8, &qword_27C8EBB58, &unk_213D985B0, MEMORY[0x277CE11F8]);
            if (v14 <= 0x3F)
            {
              v52 = 0;
              v80 = v13;
              v15 = type metadata accessor for MapPreferenceWrapperHolder();
              v53 = 0;
              v81 = v15;
              sub_213D4C5D8(319, &unk_27C8EBDF0, MEMORY[0x277CDDBB8], MEMORY[0x277CDF468]);
              if (v17 <= 0x3F)
              {
                v54 = 0;
                v82 = v16;
                sub_213D4C5D8(319, &qword_27C8EC520, MEMORY[0x277CDF450], MEMORY[0x277CDF468]);
                if (v19 <= 0x3F)
                {
                  v55 = 0;
                  v83 = v18;
                  sub_213D4C5D8(319, &qword_27C8EB080, MEMORY[0x277CDDE20], MEMORY[0x277CDF468]);
                  if (v21 <= 0x3F)
                  {
                    v56 = 0;
                    v84 = v20;
                    sub_213D4C5D8(319, &qword_27C8EB088, MEMORY[0x277CDFAA0], MEMORY[0x277CDF468]);
                    if (v23 <= 0x3F)
                    {
                      v57 = 0;
                      v85 = v22;
                      sub_213D4C63C(319, &qword_27C8EBE00, &type metadata for MapAttribution, MEMORY[0x277CDF468]);
                      if (v25 <= 0x3F)
                      {
                        v58 = 0;
                        v86 = v24;
                        sub_213D4C63C(319, &qword_27C8EB090, &type metadata for MapStyle, MEMORY[0x277CDF468]);
                        if (v27 <= 0x3F)
                        {
                          v59 = 0;
                          v87 = v26;
                          sub_213D4C5D8(319, &unk_27C8EBE10, type metadata accessor for MapControlsConfig, MEMORY[0x277CDF468]);
                          if (v29 <= 0x3F)
                          {
                            v60 = 0;
                            v88 = v28;
                            sub_213D4C68C(319, &qword_27C8EA220, &qword_27C8EBE20, &qword_213D98750, MEMORY[0x277CDF468]);
                            if (v31 <= 0x3F)
                            {
                              v61 = 0;
                              v89 = v30;
                              sub_213D4C68C(319, &qword_27C8EBE28, &qword_27C8EBE30, &qword_213D98758, MEMORY[0x277CDF468]);
                              if (v33 <= 0x3F)
                              {
                                v62 = 0;
                                v90 = v32;
                                sub_213D4C68C(319, &qword_27C8EBE38, &qword_27C8EBE40, &qword_213D98760, MEMORY[0x277CDF468]);
                                if (v35 <= 0x3F)
                                {
                                  v63 = 0;
                                  v91 = v34;
                                  sub_213D4C68C(319, &qword_27C8EBE48, &qword_27C8EBE50, &qword_213D98768, MEMORY[0x277CDF468]);
                                  if (v37 <= 0x3F)
                                  {
                                    v64 = 0;
                                    v92 = v36;
                                    sub_213D4C68C(319, &qword_27C8EBE58, &unk_27C8EBE60, &qword_213D98770, MEMORY[0x277CDF468]);
                                    if (v39 <= 0x3F)
                                    {
                                      v65 = 0;
                                      v93 = v38;
                                      sub_213D4C63C(319, &qword_27C8EA218, MEMORY[0x277D839B0], MEMORY[0x277CDF468]);
                                      if (v41 <= 0x3F)
                                      {
                                        v66 = 0;
                                        v94 = v40;
                                        sub_213D4C68C(319, &qword_27C8EBE70, &qword_27C8EBE78, qword_213D98778, MEMORY[0x277CDF468]);
                                        if (v43 <= 0x3F)
                                        {
                                          v67 = 0;
                                          v95 = v42;
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

uint64_t sub_213D4B294(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v86 = *(*(a3 + 16) - 8);
  v83 = *(v86 + 84);
  v81 = *(v86 + 64);
  v85 = *(*(a3 + 24) - 8);
  v80 = *(v85 + 84);
  v84 = *(v85 + 64);
  v77 = *(sub_213D90C5C() - 8);
  v88 = v77;
  v3 = *(v77 + 84);
  v82 = *(sub_213D9059C() - 8);
  v64 = v3;
  v61 = *(v82 + 84);
  if (v61 > v3)
  {
    v3 = *(v82 + 84);
  }

  v79 = *(sub_213D90F3C() - 8);
  if (*(v79 + 84) <= v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = *(v79 + 84);
  }

  v76 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C8EBB60, &unk_213D96930) - 8);
  v5 = *(v76 + 84);
  v60 = sub_213D9031C();
  v75 = *(v60 - 8);
  v6 = *(v75 + 84);
  v62 = v6;
  v63 = v5;
  if (v6 <= v5)
  {
    v6 = v5;
  }

  v89 = v6;
  v7 = v6 != 0;
  v8 = v6 - 1;
  if (!v7)
  {
    v8 = 0;
  }

  if (v8 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  v65 = v8;
  v66 = v4;
  if (v4 > v8)
  {
    v8 = v4;
  }

  v72 = v8;
  v74 = *(sub_213D90A6C() - 8);
  v9 = *(v74 + 64);
  v10 = 8;
  if (v9 > 8)
  {
    v10 = *(v74 + 64);
  }

  v71 = v10;
  v11 = *(sub_213D9051C() - 8);
  v12 = v11;
  v13 = *(v11 + 64);
  if (v13 <= 8)
  {
    v14 = 8;
  }

  else
  {
    v14 = *(v11 + 64);
  }

  v70 = v14;
  v68 = *(sub_213D90C7C() - 8);
  v15 = *(v68 + 64);
  if (v15 <= 8)
  {
    v15 = 8;
  }

  v69 = v15;
  v67 = *(sub_213D9089C() - 8);
  v16 = v77;
  if (*(v67 + 64) <= 8uLL)
  {
    v17 = 8;
  }

  else
  {
    v17 = *(v67 + 64);
  }

  v78 = v17;
  if (v83)
  {
    v18 = v81;
  }

  else
  {
    v18 = v81 + 1;
  }

  v19 = *(v74 + 80);
  v20 = *(v12 + 80);
  v21 = ((v13 + ((v9 + v20 + ((v19 + 2) & ~v19)) & ~v20) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  v22 = v20 | 7;
  v23 = v19 | 7 | v20;
  v24 = v84;
  if (!v80)
  {
    v24 = v84 + 1;
  }

  if (v18 <= v24)
  {
    v18 = v24;
  }

  if (v18 <= 8)
  {
    v25 = 8;
  }

  else
  {
    v25 = v18;
  }

  v26 = *(v82 + 80);
  v27 = *(v79 + 80);
  v28 = *(v16 + 64);
  v29 = *(v82 + 64);
  if (v89)
  {
    v30 = 5;
  }

  else
  {
    v30 = 6;
  }

  if (v13 + ((v20 + 2) & ~v20) + ((v21 + v20 + ((v23 + v13 + ((v20 + 16) & ~v20) + ((v21 + v22) & ~v22)) & ~v23)) & ~v20) + 6 <= 8)
  {
    v31 = 8;
  }

  else
  {
    v31 = v13 + ((v20 + 2) & ~v20) + ((v21 + v20 + ((v23 + v13 + ((v20 + 16) & ~v20) + ((v21 + v22) & ~v22)) & ~v23)) & ~v20) + 6;
  }

  if (!a2)
  {
    return 0;
  }

  v32 = (*(v85 + 80) | *(v86 + 80)) & 0xF8 | 7u;
  v33 = v25 + ((v32 + 16) & ~v32) + 1;
  v34 = *(v88 + 80) & 0xFC | v26 | v27 | 3;
  v35 = v28 + v26;
  v36 = (v28 + v26) & ~v26;
  v37 = v29 + v27;
  v38 = (*(v79 + 64) + ((v29 + v27 + v36) & ~v27) + 3) & 0xFFFFFFFFFFFFFFFCLL;
  v39 = *(v75 + 80);
  v40 = v39 | *(v76 + 80);
  v41 = v40 | 7;
  v42 = *(v76 + 64) + v39;
  if (v72 >= a2)
  {
    goto LABEL_66;
  }

  v43 = *(v68 + 80) & 0xF8 | 7;
  v44 = (v70 + v43 + ((v71 + v22 + ((v19 + ((v30 + *(v75 + 64) + ((*(v75 + 64) + v39 + (v42 & ~v39)) & ~v39) - ((-17 - v40) | v40) - ((((((((-201 - v32) | v32) - v33 - 7) | 7) - v34 - 8) | v34) - (v38 + v41) - 4) | v41)) & 0xFFFFFFFFFFFFFFF8) + 8) & ~(v19 | 7)) + 1) & ~v22) + 1) & ~v43;
  v45 = *(v67 + 80) & 0xF8 | 7;
  v46 = ((v31 + ((v23 + ((v78 + ((v69 + v45 + v44 + 1) & ~v45) + 24) & 0xFFFFFFFFFFFFFFF8) + 147) & ~v23) + 120) & 0xFFFFFFFFFFFFFFF8) + 9;
  if (v46 <= 3)
  {
    v47 = ((a2 - v72 + 255) >> 8) + 1;
  }

  else
  {
    v47 = 2;
  }

  if (v47 >= 0x10000)
  {
    v48 = 4;
  }

  else
  {
    v48 = 2;
  }

  if (v47 < 0x100)
  {
    v48 = 1;
  }

  if (v47 >= 2)
  {
    v49 = v48;
  }

  else
  {
    v49 = 0;
  }

  if (v49 > 1)
  {
    if (v49 == 2)
    {
      v50 = *&a1[v46];
      if (!*&a1[v46])
      {
        goto LABEL_66;
      }
    }

    else
    {
      v50 = *&a1[v46];
      if (!v50)
      {
        goto LABEL_66;
      }
    }

LABEL_59:
    v51 = v46 > 3;
    if (v46 <= 3)
    {
      v52 = (v50 - 1) << (8 * v46);
    }

    else
    {
      v52 = 0;
    }

    if (v51)
    {
      v59 = *a1;
    }

    else
    {
      v59 = *a1;
    }

    return v72 + (v59 | v52) + 1;
  }

  if (v49)
  {
    v50 = a1[v46];
    if (a1[v46])
    {
      goto LABEL_59;
    }
  }

LABEL_66:
  if ((v72 & 0x80000000) == 0)
  {
    v53 = *a1;
    if (*a1 >= 0xFFFFFFFFuLL)
    {
      LODWORD(v53) = -1;
    }

    return (v53 + 1);
  }

  v55 = (v34 + ((v33 + ((((((((((((((((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + v32 + 80) & ~v32) + 7) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v34;
  if (v66 >= v65)
  {
    if (v64 == v66)
    {
      v58 = *(v88 + 48);
    }

    else
    {
      v55 = (v35 + v55) & ~v26;
      if (v61 == v66)
      {
        v58 = *(v82 + 48);
      }

      else
      {
        v58 = *(v79 + 48);
        v55 = (v37 + v55) & ~v27;
      }
    }

    return v58(v55);
  }

  else
  {
    if (!v89)
    {
      return 0;
    }

    v56 = (v40 + ((((v55 + v38 + 4 + v41) & ~v41) + 15) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v40;
    v57 = v63 >= v62 ? (*(v76 + 48))(v56) : (*(v75 + 48))((v42 + v56) & ~v39, v62, v60);
    v7 = v57 != 0;
    result = (v57 - 1);
    if (result == 0 || !v7)
    {
      return 0;
    }
  }

  return result;
}

void sub_213D4BB88(void *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v87 = *(*(a4 + 16) - 8);
  v80 = *(v87 + 84);
  v79 = *(v87 + 64);
  v84 = *(*(a4 + 24) - 8);
  v76 = *(v84 + 84);
  v75 = *(v84 + 64);
  v72 = *(sub_213D90C5C() - 8);
  v4 = *(v72 + 84);
  v86 = *(sub_213D9059C() - 8);
  v68 = v4;
  v67 = *(v86 + 84);
  if (v67 > v4)
  {
    v4 = *(v86 + 84);
  }

  v83 = *(sub_213D90F3C() - 8);
  if (*(v83 + 84) <= v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = *(v83 + 84);
  }

  v85 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C8EBB60, &unk_213D96930) - 8);
  v6 = *(v85 + 84);
  v82 = *(sub_213D9031C() - 8);
  v65 = *(v82 + 84);
  v66 = v6;
  if (v65 <= v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = *(v82 + 84);
  }

  if (v7)
  {
    v8 = v7 - 1;
  }

  else
  {
    v8 = 0;
  }

  if (v8 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = v8;
  }

  v71 = v5;
  v69 = v8;
  v70 = v9;
  if (v5 > v9)
  {
    v9 = v5;
  }

  v88 = v9;
  v10 = *(sub_213D90A6C() - 8);
  v11 = v10;
  v12 = *(v10 + 64);
  if (v12 <= 8)
  {
    v13 = 8;
  }

  else
  {
    v13 = *(v10 + 64);
  }

  v78 = v13;
  v14 = *(sub_213D9051C() - 8);
  v15 = v14;
  v16 = *(v14 + 64);
  if (v16 <= 8)
  {
    v17 = 8;
  }

  else
  {
    v17 = *(v14 + 64);
  }

  v77 = v17;
  v73 = *(sub_213D90C7C() - 8);
  v18 = *(v73 + 64);
  if (v18 <= 8)
  {
    v18 = 8;
  }

  v74 = v18;
  v92 = 0;
  v19 = *(sub_213D9089C() - 8);
  if (*(v19 + 64) <= 8uLL)
  {
    v20 = 8;
  }

  else
  {
    v20 = *(v19 + 64);
  }

  v21 = v79;
  if (!v80)
  {
    v21 = v79 + 1;
  }

  v22 = v75;
  if (!v76)
  {
    v22 = v75 + 1;
  }

  if (v21 <= v22)
  {
    v21 = v22;
  }

  if (v21 <= 8)
  {
    v21 = 8;
  }

  v81 = v7;
  v23 = v7 == 0;
  v24 = *(v11 + 80);
  v25 = *(v15 + 80);
  v27 = v25 | 7;
  v28 = (*(v84 + 80) | *(v87 + 80)) & 0xF8 | 7u;
  v29 = v21 + ((v28 + 16) & ~v28) + 1;
  v30 = *(v86 + 80);
  v31 = *(v83 + 80);
  v32 = *(v72 + 80) & 0xFC | v30 | v31 | 3;
  v33 = *(v72 + 64) + v30;
  v34 = *(v86 + 64) + v31;
  v35 = ((*(v83 + 64) + ((v34 + (v33 & ~v30)) & ~v31) + 3) & 0xFFFFFFFFFFFFFFFCLL) + 4;
  v36 = *(v82 + 80) | *(v85 + 80);
  v37 = *(v82 + 80);
  v38 = *(v85 + 64) + v37;
  v39 = ((*(v82 + 64) + v37 + (v38 & ~v37)) & ~v37) + *(v82 + 64);
  if (v23)
  {
    v40 = v39 + 1;
  }

  else
  {
    v40 = ((*(v82 + 64) + v37 + (v38 & ~v37)) & ~v37) + *(v82 + 64);
  }

  v41 = v40 + ((v36 + 16) & ~v36);
  v42 = v24 | 7 | v25;
  v43 = *(v73 + 80) & 0xF8 | 7;
  v44 = *(v19 + 80) & 0xF8 | 7;
  v45 = (v42 + ((v20 + ((v74 + v44 + ((v77 + v43 + ((v78 + v27 + ((v24 + ((v41 + (((v36 | 7) + v35 + ((v32 + 8 + ((v29 + ((v28 + 200) & ~v28) + 7) & 0xFFFFFFFFFFFFFFF8)) & ~v32)) & ~(v36 | 7)) + 7) & 0xFFFFFFFFFFFFFFF8) + 8) & ~(v24 | 7)) + 1) & ~v27) + 1) & ~v43) + 1) & ~v44) + 24) & 0xFFFFFFFFFFFFFFF8) + 147) & ~v42;
  v26 = ((v16 + ((v12 + v25 + ((v24 + 2) & ~v24)) & ~v25) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  v46 = v16 + ((v25 + 2) & ~v25) + ((v26 + v25 + ((v42 + v16 + ((v25 + 16) & ~v25) + ((v26 + v27) & ~v27)) & ~v42)) & ~v25) + 6;
  if (v46 <= 8)
  {
    v46 = 8;
  }

  v47 = ((v46 + v45 + 120) & 0xFFFFFFFFFFFFFFF8) + 9;
  if (v88 < a3)
  {
    if (v47 <= 3)
    {
      v48 = ((a3 - v88 + 255) >> 8) + 1;
    }

    else
    {
      v48 = 2;
    }

    if (v48 >= 0x10000)
    {
      v49 = 4;
    }

    else
    {
      v49 = 2;
    }

    if (v48 < 0x100)
    {
      v49 = 1;
    }

    if (v48 >= 2)
    {
      v50 = v49;
    }

    else
    {
      v50 = 0;
    }

    v92 = v50;
  }

  if (v88 < a2)
  {
    v51 = ~v88 + a2;
    bzero(a1, v47);
    if (v47 <= 3)
    {
      v52 = (v51 >> 8) + 1;
    }

    else
    {
      v52 = 1;
    }

    if (v47 > 3)
    {
      *a1 = v51;
    }

    else
    {
      *a1 = v51;
    }

    if (v92 > 1)
    {
      if (v92 == 2)
      {
        *(a1 + v47) = v52;
      }

      else
      {
        *(a1 + v47) = v52;
      }
    }

    else if (v92)
    {
      *(a1 + v47) = v52;
    }

    return;
  }

  if (v92 > 1)
  {
    if (v92 != 2)
    {
      *(a1 + v47) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_71;
    }

    *(a1 + v47) = 0;
  }

  else if (v92)
  {
    *(a1 + v47) = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_71;
  }

  if (!a2)
  {
    return;
  }

LABEL_71:
  if ((v88 & 0x80000000) == 0)
  {
    if ((a2 & 0x80000000) != 0)
    {
      *a1 = a2 & 0x7FFFFFFF;
      a1[1] = 0;
    }

    else
    {
      *a1 = a2 - 1;
    }

    return;
  }

  v53 = ((v32 + 8 + ((v29 + ((((((((((((((((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + v28 + 80) & ~v28) + 7) & 0xFFFFFFFFFFFFFFF8)) & ~v32);
  if (v71 >= v70)
  {
    if (v71 < a2)
    {
      if (v35)
      {
        bzero(v53, v35);
        *v53 = ~v71 + a2;
      }

      return;
    }

    if (v68 == v71)
    {
      v61 = *(v72 + 56);
      v62 = (v32 + 8 + ((v29 + ((((((((((((((((a1 + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + v28 + 80) & ~v28) + 7) & 0xFFFFFFFFFFFFFFF8)) & ~v32;
      v63 = a2;
    }

    else
    {
      v62 = (v53 + v33) & ~v30;
      if (v67 == v71)
      {
        v61 = *(v86 + 56);
      }

      else
      {
        v61 = *(v83 + 56);
        v62 = (v34 + v62) & ~v31;
      }

      v63 = a2;
    }

    goto LABEL_128;
  }

  v54 = (v53 + v35 + (v36 | 7)) & ~(v36 | 7);
  if (v70 < a2)
  {
    if (v41 <= 3)
    {
      v55 = ~(-1 << (8 * v41));
    }

    else
    {
      v55 = -1;
    }

    if (v41)
    {
      v56 = v55 & (~v70 + a2);
      if (v41 <= 3)
      {
        v57 = v40 + ((v36 + 16) & ~v36);
      }

      else
      {
        v57 = 4;
      }

      v58 = v54;
      v59 = v40 + ((v36 + 16) & ~v36);
LABEL_119:
      bzero(v58, v59);
      if (v57 > 2)
      {
        if (v57 == 3)
        {
          *v54 = v56;
          *(v54 + 2) = BYTE2(v56);
        }

        else
        {
          *v54 = v56;
        }
      }

      else if (v57 == 1)
      {
        *v54 = v56;
      }

      else
      {
        *v54 = v56;
      }

      return;
    }

    return;
  }

  v54 = (v36 + ((v54 + 15) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v36;
  if (v69 >= a2)
  {
    if (a2 >= v81)
    {
      if (v39 <= 3)
      {
        v64 = ~(-1 << (8 * v39));
      }

      else
      {
        v64 = -1;
      }

      if (v39)
      {
        v56 = v64 & (a2 - v81);
        if (v39 <= 3)
        {
          v57 = v39;
        }

        else
        {
          v57 = 4;
        }

        v58 = v54;
        v59 = v39;
        goto LABEL_119;
      }

      return;
    }

    if (v66 >= v65)
    {
      v61 = *(v85 + 56);
      v63 = a2 + 1;
      v62 = v54;
    }

    else
    {
      v61 = *(v82 + 56);
      v62 = (v38 + v54) & ~v37;
      v63 = a2 + 1;
    }

LABEL_128:

    v61(v62, v63);
    return;
  }

  if (v40 <= 3)
  {
    v60 = ~(-1 << (8 * v40));
  }

  else
  {
    v60 = -1;
  }

  if (v40)
  {
    v56 = v60 & (~v69 + a2);
    if (v40 <= 3)
    {
      v57 = v40;
    }

    else
    {
      v57 = 4;
    }

    v58 = v54;
    v59 = v40;
    goto LABEL_119;
  }
}

void sub_213D4C5D8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_213D4C63C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_213D4C68C(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
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

uint64_t sub_213D4C750@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v8 = v3[3];
  v9 = v3[4];
  v10 = v3[5];
  v11 = v3[6];
  v12 = v3[7];
  v15[0] = v3[2];
  v7 = v15[0];
  v15[1] = v8;
  v15[2] = v9;
  v15[3] = v10;
  v15[4] = v11;
  v15[5] = v12;
  v13 = *(type metadata accessor for _MapContentView.Child(0, v15) - 8);
  return sub_213D31F20(a1, a2, v3 + ((*(v13 + 80) + 64) & ~*(v13 + 80)), v7, v8, v9, v10, v11, a3, v12);
}

unint64_t sub_213D4C820()
{
  result = qword_27C8EBED8;
  if (!qword_27C8EBED8)
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C8EBED0, &qword_213D98B50);
    sub_213D4C8A4(v1, v2, v3);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8EBED8);
  }

  return result;
}

unint64_t sub_213D4C8A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27C8EBEE0;
  if (!qword_27C8EBEE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8EBEE0);
  }

  return result;
}

uint64_t sub_213D4C8F8(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

double sub_213D4C940(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
    return sub_213D4C94C(a1, a2, a3);
  }

  return result;
}

double sub_213D4C94C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
  }

  return result;
}

double sub_213D4C9B4(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v7 = *(v4 + 16);
  v8 = *(v4 + 24);
  v9 = *(type metadata accessor for MapPreferenceWrapper(0, v7, v8, a4) - 8);
  v10 = v4 + ((*(v9 + 80) + 32) & ~*(v9 + 80));

  return sub_213D35790(a1, a2, v10, v7, v8);
}

uint64_t sub_213D4CA50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(v4 + 16);
  v8 = *(v4 + 24);
  v9 = *(type metadata accessor for MapPreferenceWrapper(0, v7, v8, a4) - 8);
  v10 = v4 + ((*(v9 + 80) + 32) & ~*(v9 + 80));

  return sub_213D35D70(a1, a2, v10, v7, v8);
}

uint64_t sub_213D4CAEC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t objectdestroy_269Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for MapPreferenceWrapper(0, *(v4 + 16), *(v4 + 24), a4);
  v6 = *(*(v5 - 8) + 80);
  v7 = v4 + ((v6 + 32) & ~v6);

  sub_213CCCE18(*(v7 + 16), *(v7 + 24));
  sub_213D4C940(*(v7 + 48), *(v7 + 56), *(v7 + 64), *(v7 + 72));
  v8 = v7 + *(v5 + 48);
  v9 = type metadata accessor for KeyframeAnimationState(0);
  if (!(*(*(v9 - 8) + 48))(v8, 1, v9))
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C8EBB60, &unk_213D96930);
    (*(*(v10 - 8) + 8))(v8, v10);
    v15 = *(v9 + 20);
    v11 = sub_213D9031C();
    v12 = *(*(v11 - 8) + 8);
    v12(v8 + v15, v11);
    v12(v8 + *(v9 + 24), v11);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27C8EBCB0, &qword_213D98708);

  v13 = v7 + *(v5 + 52);

  sub_213D1E068(*(v13 + 16));

  return swift_deallocObject();
}

uint64_t sub_213D4CD9C(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a3, uint64_t a4)
{
  v6 = *(v4 + 16);
  v7 = *(v4 + 24);
  v8 = *(type metadata accessor for MapPreferenceWrapper(0, v6, v7, a4) - 8);
  v9 = v4 + ((*(v8 + 80) + 32) & ~*(v8 + 80));

  return a2(a1, v9, v6, v7);
}

unint64_t sub_213D4CE4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27C8EBF20;
  if (!qword_27C8EBF20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8EBF20);
  }

  return result;
}

id sub_213D4CF90(char *a1, uint64_t a2, SEL *a3)
{
  v4 = *&a1[OBJC_IVAR____TtCV15_MapKit_SwiftUI10MapPolygon12CocoaWrapper_wrapped];
  v5 = a1;
  v6 = [v4 *a3];
  if (v6)
  {
    v7 = v6;
    sub_213D9193C();

    v8 = sub_213D9190C();
  }

  else
  {

    v8 = 0;
  }

  return v8;
}

void sub_213D4D040(char *a1, uint64_t a2, uint64_t a3, SEL *a4)
{
  if (a3)
  {
    sub_213D9193C();
    v6 = *&a1[OBJC_IVAR____TtCV15_MapKit_SwiftUI10MapPolygon12CocoaWrapper_wrapped];
    v7 = a1;
    v9 = sub_213D9190C();
  }

  else
  {
    v6 = *&a1[OBJC_IVAR____TtCV15_MapKit_SwiftUI10MapPolygon12CocoaWrapper_wrapped];
    v8 = a1;
    v9 = 0;
  }

  [v6 *a4];
}

id sub_213D4D418()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MapPolygon.CocoaWrapper();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

double MapPolygon.init(coordinates:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = a1;
  *&result = 1;
  *(a2 + 8) = xmmword_213D98BB0;
  return result;
}

uint64_t MapPolygon.init(points:)@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  a2[1] = 0;
  a2[2] = 0;
  *a2 = result;
  return result;
}

uint64_t sub_213D4D4A8@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  if (a2)
  {
    v5 = *(a2 + 16);
    if (v5)
    {
      v17 = result;
      v18 = a4;
      v19 = a3;
      v20 = MEMORY[0x277D84F90];
      sub_213D4E914(0, v5, 0);
      v6 = v20;
      v7 = (a2 + 48);
      do
      {
        v8 = *(v7 - 2);
        v9 = *(v7 - 1);
        v10 = *v7;
        sub_213D2BD34(v8, v9, *v7);
        v12 = *(v20 + 16);
        v11 = *(v20 + 24);
        if (v12 >= v11 >> 1)
        {
          sub_213D4E914((v11 > 1), v12 + 1, 1);
        }

        v7 += 3;
        *(v20 + 16) = v12 + 1;
        v13 = (v20 + 24 * v12);
        v13[4] = v8;
        v13[5] = v9;
        v13[6] = v10;
        --v5;
      }

      while (v5);

      a4 = v18;
      a3 = v19;
      result = v17;
    }

    else
    {
      v14 = result;
      v15 = a3;
      v16 = a4;

      result = v14;
      a4 = v16;
      a3 = v15;
      v6 = MEMORY[0x277D84F90];
    }
  }

  else
  {
    v6 = 0;
  }

  *a4 = result;
  a4[1] = a3;
  a4[2] = v6;
  return result;
}

double MapPolygon.init(_:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for MapPolygon.CocoaWrapper();
  v5 = objc_allocWithZone(v4);
  *&v5[OBJC_IVAR____TtCV15_MapKit_SwiftUI10MapPolygon12CocoaWrapper_wrapped] = a1;
  v7.receiver = v5;
  v7.super_class = v4;
  *a2 = objc_msgSendSuper2(&v7, sel_init);
  result = -0.0;
  *(a2 + 8) = xmmword_213D98BC0;
  return result;
}

uint64_t static MapPolygon._makeMapContent(content:inputs:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v28 = a2;
  v40 = *MEMORY[0x277D85DE8];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA6F0, &unk_213D96020);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = (&v27 - v8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EBF68, &qword_213D98BD0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = (&v27 - v13);
  v27 = a3;
  _s15_MapKit_SwiftUI05EmptyA7ContentV05_makeaF07content6inputsAA01_aF7OutputsV0cD011_GraphValueVyACG_AA01_aF6InputsVtFZ_0();
  (*(v11 + 16))(v14, a1, v10);
  if (v12 != 4)
  {
    __break(1u);
LABEL_5:
    __break(1u);
  }

  v15 = *v14;
  (*(v11 + 8))(v14, v10);
  v16 = v28;
  sub_213D90C3C();
  if (v7 != 4)
  {
    goto LABEL_5;
  }

  v17 = *v9;
  (*(v6 + 8))(v9, v5);
  v18 = *(v16 + *(type metadata accessor for _MapContentInputs(0) + 28));
  v29 = 1;
  v30 = v15;
  v31 = v17;
  v32 = v18;
  v33 = 0u;
  v34 = 0u;
  memset(v35, 0, 28);
  v35[28] = -1;
  v36 = 0;
  v37 = -1;
  v38 = 0;
  v39 = 1;
  v19 = sub_213CDB9F8();
  sub_213D4E958(v19, v20, v21);
  v22 = sub_213D903EC();
  MEMORY[0x28223BE20](v22);
  *(&v27 - 4) = v23;
  sub_213CD83E4(v23, v24, v25);
  return sub_213D90F7C();
}

double sub_213D4D970()
{
  v178 = *MEMORY[0x277D85DE8];
  v129 = type metadata accessor for MapContentList.Item.Content(0);
  MEMORY[0x28223BE20](v129);
  v132 = &v126 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v131 = type metadata accessor for MapContentList.Item(0);
  v133 = *(v131 - 8);
  MEMORY[0x28223BE20](v131);
  v130 = (&v126 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v3);
  v134 = &v126 - v4;
  v5 = sub_213D90C0C();
  v163 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v156 = &v126 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v157 = &v126 - v8;
  MEMORY[0x28223BE20](v9);
  v154 = &v126 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA920, &unk_213D96380);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v126 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA928, &qword_213D96008);
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v126 - v16;
  v18 = sub_213D9100C();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v159 = &v126 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v160 = &v126 - v22;
  Value = AGGraphGetValue();
  v143 = v24;
  v26 = *Value;
  v25 = *(Value + 8);
  v27 = *(Value + 16);
  v153 = v0;
  v28 = *(v0 + 8);
  v29 = *MEMORY[0x277CEF7D0];
  v161 = v19;
  v162 = v18;
  *(&v151 + 1) = v25;
  v152 = v27;
  *&v151 = v26;
  if (v28 == v29)
  {
    v30 = v26;
    v31 = v25;
    v32 = v27;
    (*(v15 + 56))(v13, 1, 1, v14);
    v33 = *(v14 + 48);
    sub_213D2BD34(v30, v31, v32);
    sub_213D90FFC();
    v17[v33] = 0;
    if ((*(v15 + 48))(v13, 1, v14) != 1)
    {
      sub_213CD8330(v13, &qword_27C8EA920, &unk_213D96380);
    }
  }

  else
  {
    sub_213D2BD34(v26, v25, v27);
    v34 = AGGraphGetValue();
    v36 = v35;
    v37 = v18;
    v38 = *(v14 + 48);
    (*(v19 + 16))(v13, v34, v37);
    v13[v38] = v36 & 1;
    (*(v15 + 56))(v13, 0, 1, v14);
    sub_213CF3968(v13, v17);
  }

  v140 = v17[*(v14 + 48)];
  v127 = *(v161 + 32);
  v128 = v161 + 32;
  v127(v160, v17, v162);
  v39 = v153;
  v40 = AGGraphGetValue();
  v41 = v163;
  v42 = *(v163 + 16);
  v43 = v154;
  v42(v154, v40, v5);
  v44 = sub_213D90A7C();
  v163 = *(v41 + 8);
  (v163)(v43, v5);
  v45 = *(v39 + 16);
  v150 = (v44 | v45) == 0;
  v158 = v44;
  if (v44 && v45)
  {

    v150 = sub_213D9147C();
  }

  v149 = v45;
  v46 = AGGraphGetValue();
  v47 = (v42)(v43, v46, v5);
  sub_213D4F17C(v47, v48, v49);
  sub_213D90C1C();
  (v163)(v43, v5);
  v148 = v171;
  v165 = v171;
  v166 = v172;
  v147 = v173;
  v167 = v173;
  v145 = *(&v172 + 1);
  v146 = v172;
  v50 = *(v39 + 48);
  v144 = v50;
  if (v50)
  {
    v51 = *(v39 + 56);
    v52 = *(v39 + 40);
    v53 = *(v39 + 32);
    v168[0] = *(v39 + 24);
    v168[1] = v53;
    v168[2] = v52;
    v168[3] = v50;
    v168[4] = v51;
    sub_213D1E3A4(&v165, &v171);

    v54 = MEMORY[0x21604D700](&v165, v168);

    sub_213D1E400(&v165);
    v55 = v54 ^ 1;
  }

  else
  {

    v55 = 1;
  }

  v136 = v55;
  v56 = AGGraphGetValue();
  v57 = (v42)(v43, v56, v5);
  sub_213D4F1D0(v57, v58, v59);
  sub_213D90C1C();
  (v163)(v43, v5);
  v60 = AGGraphGetValue();
  v61 = v157;
  v42(v157, v60, v5);
  v62 = sub_213D67A84(&v171, v61);
  v64 = *(v39 + 64);
  v65 = *(v39 + 72);
  LODWORD(v157) = v63;
  v142 = v64;
  v141 = v65;
  v137 = v62;
  if (v65 == 255)
  {
    goto LABEL_16;
  }

  if ((v63 & 1) == 0)
  {
    if ((v65 & 1) == 0)
    {
      v155 = v42;
      v66 = v62;
      sub_213D2BCD4(v62, 0);
      sub_213D4F40C(v64, v65);
      v67 = sub_213D9147C();
      goto LABEL_18;
    }

LABEL_16:
    v135 = 1;
    goto LABEL_19;
  }

  if ((v65 & 1) == 0)
  {
    goto LABEL_16;
  }

  v155 = v42;
  v66 = v62;
  sub_213D2BCD4(v62, 1);
  sub_213D4F40C(v64, v65);
  v67 = MEMORY[0x21604E890](v66, v64);
LABEL_18:
  v68 = v64;
  v69 = v67;
  sub_213D4F3F4(v68, v65);
  sub_213CE2B28(v66, v157 & 1);
  v135 = v69 ^ 1;
  v42 = v155;
LABEL_19:
  v70 = AGGraphGetValue();
  v71 = v156;
  v72 = (v42)(v156, v70, v5);
  sub_213D4F224(v72, v73, v74);
  sub_213D90C1C();
  (v163)(v71, v5);
  if (v170)
  {
    sub_213D1E2DC(&v169, &v171);
  }

  else
  {
    v75 = AGGraphGetValue();
    v76 = (v42)(v43, v75, v5);
    v77 = MEMORY[0x21604DD60](v76);
    (v163)(v43, v5);
    *(&v172 + 1) = MEMORY[0x277CDF6A8];
    *&v173 = MEMORY[0x277CDF6A0];
    *&v171 = v77;
    if (v170)
    {
      sub_213CD8330(&v169, &qword_27C8EBF98, &qword_213D9E670);
    }
  }

  v78 = AGGraphGetValue();
  v42(v43, v78, v5);
  v156 = sub_213D67A84(&v171, v43);
  v80 = *(v39 + 80);
  v81 = *(v39 + 88);
  LODWORD(v155) = v79;
  v139 = v80;
  v138 = v81;
  if (v81 != 255)
  {
    if (v79)
    {
      if (v81)
      {
        v82 = v156;
        sub_213D2BCD4(v156, 1);
        sub_213D4F40C(v80, v81);
        v83 = MEMORY[0x21604E890](v82, v80);
LABEL_30:
        v85 = v80;
        v86 = v83;
        sub_213D4F3F4(v85, v81);
        sub_213CE2B28(v82, v155 & 1);
        v84 = v86 ^ 1;
        goto LABEL_31;
      }
    }

    else if ((v81 & 1) == 0)
    {
      v82 = v156;
      sub_213D2BCD4(v156, 0);
      sub_213D4F40C(v80, v81);
      v83 = sub_213D9147C();
      goto LABEL_30;
    }
  }

  v84 = 1;
LABEL_31:
  v87 = AGGraphGetValue();
  v88 = v154;
  v89 = (v42)(v154, v87, v5);
  sub_213D4F278(v89, v90, v91);
  sub_213D90C1C();
  (v163)(v88, v5);
  v92 = v171;
  if ((*(v39 + 104) | v143) & 1 | ((v150 & 1) == 0) | v136 & 1 | v135 & 1 | v140 & 1 || (v84 & 1) != 0 || v171 != *(v39 + 96) || (v93 = v171, OutputValue = AGGraphGetOutputValue(), v92 = v93, !OutputValue))
  {
    LODWORD(v154) = *(v39 + 12) + 1;
    *(v39 + 12) = v154;
    v173 = v165;
    v174 = v166;
    v97 = v137;
    v98 = v157 & 1;
    LOBYTE(v169) = v157 & 1;
    v99 = v155 & 1;
    v164 = v155 & 1;
    v100 = v151;
    v171 = v151;
    v101 = v152;
    *&v172 = v152;
    *(&v172 + 1) = v158;
    *&v175 = v167;
    *(&v175 + 1) = v137;
    LOBYTE(v176) = v157 & 1;
    *(&v176 + 1) = v156;
    LOBYTE(v177) = v155 & 1;
    v163 = v92;
    *(&v177 + 1) = v92;
    (*(v161 + 16))(v159, v160, v162);
    v102 = v176;
    v103 = v132;
    *(v132 + 4) = v175;
    v103[5] = v102;
    v103[6] = v177;
    v104 = v172;
    *v103 = v171;
    v103[1] = v104;
    v105 = v174;
    v103[2] = v173;
    v103[3] = v105;
    swift_storeEnumTagMultiPayload();
    sub_213D2BD34(v100, *(&v100 + 1), v101);

    sub_213D1E3A4(&v165, &v169);
    v106 = v97;
    v107 = v98;
    v108 = v156;
    sub_213D2BCD4(v97, v107);
    sub_213D2BCD4(v108, v99);
    v109 = sub_213D4F2CC(&v171, &v169);
    sub_213CDF60C(v109, v110, v111);
    sub_213D9101C();
    v112 = v169;
    if (!v169)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8ECD70, &unk_213D9A8F0);
      v112 = swift_allocObject();
      *(v112 + 16) = xmmword_213D94520;
      *(v112 + 32) = 0;
      *(v112 + 72) = 0;
    }

    v114 = v130;
    v113 = v131;
    *v130 = v112;
    v115 = v162;
    v127(v114 + *(v113 + 28), v159, v162);
    *(v114 + 2) = v154;
    sub_213CF39D8(v103, v114 + *(v113 + 24), type metadata accessor for MapContentList.Item.Content);
    v116 = v114;
    v117 = v134;
    sub_213CF39D8(v116, v134, type metadata accessor for MapContentList.Item);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EA930, &unk_213D963A0);
    v118 = (*(v133 + 80) + 32) & ~*(v133 + 80);
    v119 = swift_allocObject();
    *(v119 + 16) = xmmword_213D94520;
    sub_213D4F304(v117, v119 + v118);
    *&v169 = sub_213D71A68(v119);
    *(&v169 + 1) = v120;
    AGGraphSetOutputValue();
    sub_213D4F368(&v171);
    sub_213D1E5E8(v151, *(&v151 + 1), v152);
    sub_213D4F398(v117);
    (*(v161 + 8))(v160, v115);

    sub_213D4F3F4(v139, v138);
    sub_213D4F3F4(v142, v141);

    v39 = v153;
    *(v153 + 96) = v163;
    *(v39 + 104) = 0;
    v121 = v155 & 1;
    *(v39 + 80) = v108;
    *(v39 + 88) = v121;
    v96 = v157 & 1;
    *(v39 + 64) = v106;
  }

  else
  {
    (*(v161 + 8))(v160, v162);
    sub_213D1E5E8(v151, *(&v151 + 1), v152);
    sub_213D4F3F4(v139, v138);
    sub_213D4F3F4(v142, v141);

    *(v39 + 96) = v93;
    *(v39 + 104) = 0;
    v95 = v155 & 1;
    *(v39 + 80) = v156;
    *(v39 + 88) = v95;
    v96 = v157 & 1;
    *(v39 + 64) = v137;
  }

  *(v39 + 72) = v96;
  v123 = v146;
  v122 = v147;
  result = *&v148;
  *(v39 + 24) = v148;
  v125 = v145;
  *(v39 + 40) = v123;
  *(v39 + 48) = v125;
  *(v39 + 56) = v122;
  *(v39 + 16) = v158;
  return result;
}

void *sub_213D4E8D4(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_213D4EBA8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_213D4E8F4(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_213D4ED80(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_213D4E914(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_213D4EF90(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

unint64_t sub_213D4E958(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27C8EBF70;
  if (!qword_27C8EBF70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8EBF70);
  }

  return result;
}

uint64_t sub_213D4E9BC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8) >> 1;
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

uint64_t sub_213D4EA0C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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
      *result = 0;
      *(result + 8) = 2 * -a2;
      *(result + 16) = 0;
      return result;
    }

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_15_MapKit_SwiftUI18ResolvedShapeStyleOSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 > 1)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

__n128 __swift_memcpy105_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 89) = *(a2 + 89);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_213D4EAC8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 105))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t sub_213D4EB24(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 104) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 105) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 105) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

void *sub_213D4EBA8(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8ECC30, &qword_213D9B470);
  v10 = *(type metadata accessor for _MapContentOutputs(0) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for _MapContentOutputs(0) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_213D4ED80(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EBF78, &qword_213D98F80);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_213D4EE8C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27C8ECD00, &qword_213D98F88);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 32 * v8);
  }

  return v10;
}

char *sub_213D4EF90(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C8EBFA8, &qword_213D98F90);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

BOOL sub_213D4F0B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2 < 0)
  {
    if (a5 < 0)
    {
      sub_213CE2B34(0, &qword_27C8ECC60, 0x277D82BB8);
      return sub_213D91C5C() & 1;
    }

    return 0;
  }

  if (a5 < 0 || !sub_213D6798C(a1, a2 & 1, a4, a5 & 1))
  {
    return 0;
  }

  result = (a3 | a6) == 0;
  if (a3)
  {
    if (a6)
    {

      v9 = sub_213D6F248(a3, a6);

      return v9 & 1;
    }
  }

  return result;
}

unint64_t sub_213D4F17C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27C8EBF80;
  if (!qword_27C8EBF80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8EBF80);
  }

  return result;
}

unint64_t sub_213D4F1D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27C8EBF88;
  if (!qword_27C8EBF88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8EBF88);
  }

  return result;
}

unint64_t sub_213D4F224(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27C8EBF90;
  if (!qword_27C8EBF90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8EBF90);
  }

  return result;
}

unint64_t sub_213D4F278(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27C8EBFA0;
  if (!qword_27C8EBFA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C8EBFA0);
  }

  return result;
}

uint64_t sub_213D4F304(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MapContentList.Item(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_213D4F398(uint64_t a1)
{
  v2 = type metadata accessor for MapContentList.Item(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_213D4F3F4(uint64_t result, char a2)
{
  if (a2 != -1)
  {
    return sub_213CE2B28(result, a2 & 1);
  }

  return result;
}

uint64_t sub_213D4F40C(uint64_t result, char a2)
{
  if (a2 != -1)
  {
    return sub_213D2BCD4(result, a2 & 1);
  }

  return result;
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

uint64_t sub_213D4F448(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 112))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8) >> 1;
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

uint64_t sub_213D4F498(uint64_t result, int a2, int a3)
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
      *result = 0;
      *(result + 8) = 2 * -a2;
      *(result + 16) = 0;
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

uint64_t sub_213D4F514(uint64_t a1)
{
  v27 = a1;
  v2 = sub_213D9051C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v26 - v7;
  MEMORY[0x28223BE20](v9);
  v11 = &v26 - v10;
  v12 = *(type metadata accessor for MapScaleViewConfig(0) + 28);
  v13 = *MEMORY[0x277CDF440];
  (*(v3 + 104))(v11, *MEMORY[0x277CDF440], v2);
  v14 = sub_213D9050C();
  v26 = *(v3 + 8);
  v26(v11, v2);
  v15 = *(v3 + 16);
  v16 = (v3 + 88);
  if ((v14 & 1) == 0)
  {
    v15(v5, v1 + v12, v2);
    v22 = (*v16)(v5, v2);
    if (v22 == *MEMORY[0x277CDF418] || v22 == *MEMORY[0x277CDF438] || v22 == v13)
    {
      return 1;
    }

    v25 = v22 == *MEMORY[0x277CDF420] || v22 == *MEMORY[0x277CDF410];
    v8 = v5;
    if (!v25)
    {
      goto LABEL_26;
    }

    return 2;
  }

  v15(v8, v27, v2);
  v17 = (*v16)(v8, v2);
  if (v17 == *MEMORY[0x277CDF418] || v17 == *MEMORY[0x277CDF438] || v17 == v13)
  {
    return 1;
  }

  if (v17 == *MEMORY[0x277CDF420] || v17 == *MEMORY[0x277CDF410])
  {
    return 2;
  }

LABEL_26:
  v26(v8, v2);
  return 1;
}