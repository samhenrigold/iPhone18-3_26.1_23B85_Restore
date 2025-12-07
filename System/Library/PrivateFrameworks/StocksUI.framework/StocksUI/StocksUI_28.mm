void sub_2207A4F88(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, double a10@<D0>, double a11@<D1>, double a12@<D2>)
{
  v177 = a7;
  v178 = a8;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v176);
  (*(*(a7 - 8) + 16))(boxed_opaque_existential_1, a4, a7);
  sub_22088C31C();
  v24 = v23;
  sub_22088C22C();
  sub_220891A6C();
  v26 = v25;
  v27 = __swift_project_boxed_opaque_existential_1(v176, v177);
  v149 = a1;
  v160 = a10;
  v152 = a11;
  v150 = a6;
  sub_2207A3C50(a1, a2, a3, *v27, a5, a3, a6, a10, a11, a12);
  v29 = v28;
  v31 = v30;
  v167 = v32;
  sub_22088C1CC();
  v158 = a2;
  sub_22088C1CC();
  sub_220891A6C();
  v34 = v33;
  v35 = *(a5 + 16);
  if (v35)
  {
    v36 = (a5 + 32);
    v168 = 0.0;
    v37 = *(a5 + 16);
    while (*(v31 + 16))
    {
      v39 = *v36++;
      v38 = v39;
      v40 = sub_2205CDFF4(v39);
      if ((v41 & 1) == 0)
      {
        goto LABEL_99;
      }

      if (!*(v167 + 16))
      {
        goto LABEL_100;
      }

      v42 = *(*(v31 + 56) + 24 * v40 + 8);
      v43 = sub_2205CDFF4(v38);
      if ((v44 & 1) == 0)
      {
        goto LABEL_101;
      }

      v45 = *(*(v167 + 56) + 24 * v43 + 8);
      if (v42 > v45)
      {
        v45 = v42;
      }

      v46 = v168;
      if (v168 <= v45)
      {
        v46 = v45;
      }

      v168 = v46;
      if (!--v37)
      {
        goto LABEL_14;
      }
    }

LABEL_98:
    __break(1u);
LABEL_99:
    __break(1u);
LABEL_100:
    __break(1u);
LABEL_101:
    __break(1u);
    goto LABEL_102;
  }

  v168 = 0.0;
LABEL_14:
  v47 = ceil(v35 / v29);
  if ((*&v47 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_109;
  }

  if (v47 <= -9.22337204e18)
  {
LABEL_110:
    __break(1u);
    goto LABEL_111;
  }

  if (v47 >= 9.22337204e18)
  {
LABEL_111:
    __break(1u);
    goto LABEL_112;
  }

  if (v29 < 0)
  {
LABEL_112:
    __break(1u);
    goto LABEL_113;
  }

  v161 = (v24 - v26 - v34 - v152) / v29;
  v166 = v31;
  if (!v29)
  {

    v62 = v167;

    v50 = MEMORY[0x277D84F90];
    v60 = *(MEMORY[0x277D84F90] + 16);
    v63 = MEMORY[0x277D84F98];
    v175 = MEMORY[0x277D84F98];
    v174 = MEMORY[0x277D84F98];
    if (v60)
    {
LABEL_46:
      v64 = 0;
      v156 = v50 + 32;
      v157 = a10 * 0.5;
      v65 = MEMORY[0x277D84F90];
      v159 = MEMORY[0x277D84F98];
      v169 = 0.0;
      v170 = 0.0;
      v171 = 0.0;
      v154 = v50;
      v155 = v60;
      while (v64 < *(v50 + 16))
      {
        v66 = *(v156 + 8 * v64);
        v67 = *(v66 + 16);

        v165 = v67;
        if (v67)
        {
          v68 = 0;
          v163 = v64;
          v164 = v66 + 32;
          v69 = 0.0;
          v162 = v66;
          while (v68 < *(v66 + 16))
          {
            v71 = *(v164 + v68);
            v192.origin.x = v169;
            v192.origin.y = v69;
            v192.size.width = v161;
            v192.size.height = v168;
            v193 = CGRectIntegral(v192);
            if (!*(v31 + 16))
            {
              goto LABEL_90;
            }

            x = v193.origin.x;
            y = v193.origin.y;
            width = v193.size.width;
            height = v193.size.height;
            v76 = sub_2205CDFF4(v71);
            if ((v77 & 1) == 0)
            {
              goto LABEL_91;
            }

            v78 = *(v31 + 56) + 24 * v76;
            v79 = *v78;
            v80 = *(v78 + 8);
            v81 = *(v78 + 16);
            v194.origin.x = x;
            v194.origin.y = y;
            v194.size.width = width;
            v194.size.height = height;
            MinX = CGRectGetMinX(v194);
            v195.origin.x = x;
            v195.origin.y = y;
            v195.size.width = width;
            v195.size.height = height;
            v196.origin.y = CGRectGetMaxY(v195) - v80;
            v196.origin.x = MinX;
            v196.size.width = v79;
            v196.size.height = v80;
            v197 = CGRectIntegral(v196);
            *&v186 = v197.origin.x;
            *(&v186 + 1) = *&v197.origin.y;
            v187 = v197.size.width;
            v188 = v197.size.height;
            v189 = v81;
            v190 = v64;
            v83 = v81;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v173[0] = v175;
            sub_2207CF268(&v186, v71, isUniquelyReferenced_nonNull_native);
            if (!*(v62 + 16))
            {
              goto LABEL_92;
            }

            v85 = sub_2205CDFF4(v71);
            if ((v86 & 1) == 0)
            {
              goto LABEL_93;
            }

            v87 = *(v62 + 56) + 24 * v85;
            v88 = *v87;
            v89 = *(v87 + 8);
            v90 = *(v87 + 16);
            v198.origin.x = x;
            v198.origin.y = y;
            v198.size.width = width;
            v198.size.height = height;
            v91 = CGRectGetMaxX(v198) - v88;
            v199.origin.x = x;
            v199.origin.y = y;
            v199.size.width = width;
            v199.size.height = height;
            v200.origin.y = CGRectGetMaxY(v199) - v89;
            v200.origin.x = v91;
            v200.size.width = v88;
            v200.size.height = v89;
            v201 = CGRectIntegral(v200);
            *&v181 = v201.origin.x;
            *(&v181 + 1) = *&v201.origin.y;
            v182 = v201.size.width;
            v183 = v201.size.height;
            v184 = v90;
            v185 = v64;
            v92 = v90;
            v93 = swift_isUniquelyReferenced_nonNull_native();
            v173[0] = v174;
            sub_2207CF268(&v181, v71, v93);
            v159 = v174;
            if (!*(v175 + 16))
            {
              goto LABEL_94;
            }

            v94 = sub_2205CDFF4(v71);
            if ((v95 & 1) == 0)
            {
              goto LABEL_95;
            }

            MinY = CGRectGetMinY(*(*(v175 + 56) + 48 * v94));
            sub_22044D56C(0, &qword_28127E570, 0x277D74300);
            v97 = sub_220891F2C();
            [v97 ascender];
            v99 = v98;

            v100 = sub_220891F2C();
            [v100 capHeight];
            v102 = v101;

            v103 = v171;
            if (MinY + v99 - v102 < v171)
            {
              v103 = MinY + v99 - v102;
            }

            v171 = v103;
            if (!*(v175 + 16))
            {
              goto LABEL_96;
            }

            v104 = sub_2205CDFF4(v71);
            if ((v105 & 1) == 0)
            {
              goto LABEL_97;
            }

            MaxY = CGRectGetMaxY(*(*(v175 + 56) + 48 * v104));
            v107 = sub_220891F2C();
            [v107 descender];
            v109 = v108;

            v110 = v170;
            if (v170 <= MaxY + v109)
            {
              v110 = MaxY + v109;
            }

            v170 = v110;
            if (v68)
            {
              v202.origin.x = x;
              v202.origin.y = y;
              v202.size.width = width;
              v202.size.height = height;
              v111 = CGRectGetWidth(v202);
              sub_22088C1FC();
              v203.size.height = 1.0 / v112;
              v203.origin.x = v169;
              v203.origin.y = v69 - v157;
              v203.size.width = v111;
              v204 = CGRectIntegral(v203);
              v113 = v204.origin.x;
              v114 = v204.origin.y;
              v115 = v204.size.width;
              v116 = v204.size.height;
              v62 = v167;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v65 = sub_220587A04(0, *(v65 + 2) + 1, 1, v65);
              }

              v66 = v162;
              v118 = *(v65 + 2);
              v117 = *(v65 + 3);
              if (v118 >= v117 >> 1)
              {
                v65 = sub_220587A04((v117 > 1), v118 + 1, 1, v65);
              }

              *(v65 + 2) = v118 + 1;
              v119 = &v65[32 * v118];
              v119[4] = v113;
              v119[5] = v114;
              v119[6] = v115;
              v119[7] = v116;
            }

            else
            {
              v62 = v167;
              v66 = v162;
            }

            ++v68;
            v191.origin.x = x;
            v191.origin.y = y;
            v191.size.width = width;
            v191.size.height = height;
            v70 = CGRectGetMaxY(v191);

            v69 = v70 + v160;
            v31 = v166;
            v64 = v163;
            if (v165 == v68)
            {
              goto LABEL_47;
            }
          }

          __break(1u);
LABEL_90:
          __break(1u);
LABEL_91:
          __break(1u);
LABEL_92:
          __break(1u);
LABEL_93:
          __break(1u);
LABEL_94:
          __break(1u);
LABEL_95:
          __break(1u);
LABEL_96:
          __break(1u);
LABEL_97:
          __break(1u);
          goto LABEL_98;
        }

LABEL_47:
        ++v64;

        v169 = v161 + v152 + v169;
        v50 = v154;
        if (v64 == v155)
        {
          v120 = v170 + 15.0;
          v63 = v159;
          goto LABEL_74;
        }
      }

      goto LABEL_108;
    }

    v120 = 15.0;
    v171 = 0.0;
    v65 = MEMORY[0x277D84F90];
LABEL_74:
    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
    v173[34] = v65;

    v121 = 1 << *(v63 + 32);
    v122 = -1;
    if (v121 < 64)
    {
      v122 = ~(-1 << v121);
    }

    v123 = v122 & *(v63 + 64);
    v124 = (v121 + 63) >> 6;
    swift_bridgeObjectRetain_n();
    v125 = 0;
    v126 = 0.0;
    while (v123)
    {
      v127 = v125;
LABEL_82:
      v128 = __clz(__rbit64(v123));
      v123 &= v123 - 1;
      v129 = CGRectGetMaxY(*(*(v63 + 56) + 48 * (v128 | (v127 << 6))));
      if (v126 <= v129)
      {
        v126 = v129;
      }
    }

    while (1)
    {
      v127 = v125 + 1;
      if (__OFADD__(v125, 1))
      {
        break;
      }

      if (v127 >= v124)
      {

        sub_22088C31C();
        v131 = v130;
        sub_22088C22C();
        sub_220891A6C();
        v205.size.width = v131 - v132;
        v205.size.height = v126 + 15.0 + 15.0;
        v205.origin.x = 0.0;
        v205.origin.y = 0.0;
        v206 = CGRectIntegral(v205);
        v133 = v206.origin.x;
        v134 = v206.origin.y;
        v135 = v206.size.width;
        v136 = v206.size.height;
        v137 = type metadata accessor for QuoteDetailViewLayoutOptions(0);
        sub_2207A235C(v149, v158, v179, v171 + v120 + *(v158 + *(v137 + 24)));
        sub_22088C31C();
        v139 = v138;
        sub_22088C22C();
        sub_220891A6C();
        v141 = v140;
        sub_22088C31C();
        v142 = v133;
        v143 = v134;
        v144 = v135;
        v145 = v136;
        if ((v180 & 1) == 0)
        {
          v145 = *&v179[7];
          v144 = *&v179[6];
          v143 = *&v179[5];
          v142 = *&v179[4];
        }

        v207.size.height = CGRectGetMaxY(*&v142);
        v146 = v139 - v141;
        v207.origin.x = 0.0;
        v207.origin.y = 0.0;
        v207.size.width = v146;
        CGRectIntegral(v207);
        *(v150 + 56) = v146;
        *(v150 + 64) = 0;
        MEMORY[0x28223BE20](v147, v148);
        sub_22088C18C();
        memcpy(v173, v172, 0x109uLL);

        __swift_destroy_boxed_opaque_existential_1(v176);
        memcpy(a9, v173, 0x109uLL);
        return;
      }

      v123 = *(v63 + 64 + 8 * v127);
      ++v125;
      if (v123)
      {
        v125 = v127;
        goto LABEL_82;
      }
    }

LABEL_107:
    __break(1u);
LABEL_108:
    __break(1u);
LABEL_109:
    __break(1u);
    goto LABEL_110;
  }

  v48 = v47;
  v173[0] = MEMORY[0x277D84F90];

  sub_22070BDC4(0, v29, 0);
  if ((v48 & 0x8000000000000000) == 0)
  {
    v49 = 0;
    v50 = v173[0];
    while (1)
    {
      v51 = v49 * v48;
      if ((v49 * v48) >> 64 != (v49 * v48) >> 63)
      {
        break;
      }

      if (v51 < 0)
      {
        goto LABEL_103;
      }

      if (v35 >= v51)
      {
        v52 = v49 * v48;
      }

      else
      {
        v52 = v35;
      }

      if (v51)
      {
        v53 = v52;
      }

      else
      {
        v53 = 0;
      }

      if (!v48 || v35 - v53 < 0 || (v54 = v35, v35 - v53 >= v48))
      {
        v54 = v53 + v48;
        if (__OFADD__(v53, v48))
        {
          goto LABEL_106;
        }

        if (v54 < v53)
        {
          goto LABEL_104;
        }

        if (v35 < v54)
        {
          goto LABEL_105;
        }
      }

      v55 = v54 - v53;
      if (v35 == v54 - v53)
      {
        v56 = v50;

        v50 = v56;
        v57 = a5;
      }

      else
      {
        v57 = MEMORY[0x277D84F90];
        if (v54 != v53)
        {
          v153 = v50;
          if (v55 >= 1)
          {
            sub_2207A6140();
            v57 = swift_allocObject();
            v61 = _swift_stdlib_malloc_size(v57);
            v57[2] = v55;
            v57[3] = 2 * v61 - 64;
          }

          memcpy(v57 + 4, (a5 + 32 + v53), v55);
          v50 = v153;
        }
      }

      v173[0] = v50;
      v59 = *(v50 + 16);
      v58 = *(v50 + 24);
      v60 = v59 + 1;
      if (v59 >= v58 >> 1)
      {
        sub_22070BDC4((v58 > 1), v59 + 1, 1);
        v60 = v59 + 1;
        v50 = v173[0];
      }

      ++v49;
      *(v50 + 16) = v60;
      *(v50 + 8 * v59 + 32) = v57;
      v31 = v166;
      if (v29 == v49)
      {
        v175 = MEMORY[0x277D84F98];
        v174 = MEMORY[0x277D84F98];
        v62 = v167;
        goto LABEL_46;
      }
    }

LABEL_102:
    __break(1u);
LABEL_103:
    __break(1u);
LABEL_104:
    __break(1u);
LABEL_105:
    __break(1u);
LABEL_106:
    __break(1u);
    goto LABEL_107;
  }

LABEL_113:
  __break(1u);
}

void sub_2207A5C10(int64_t a1, int64_t a2, uint64_t a3, void *a4, uint64_t *a5)
{
  v8 = a1;
  v9 = 0;
  v10 = a1;
  while (1)
  {
    v11 = v10 <= a2;
    if (a3 > 0)
    {
      v11 = v10 >= a2;
    }

    if (v11)
    {
      break;
    }

    v12 = __OFADD__(v10, a3);
    v10 += a3;
    if (v12)
    {
      v10 = (v10 >> 63) ^ 0x8000000000000000;
    }

    v12 = __OFADD__(v9++, 1);
    if (v12)
    {
      __break(1u);
      break;
    }
  }

  v37 = MEMORY[0x277D84F90];
  sub_22070BDC4(0, v9, 0);
  v34 = a5;
  if (v9)
  {
    v35 = *a5;
    v13 = a4[2];
    v14 = a2;
    while (1)
    {
      v15 = v8 <= v14;
      if (a3 > 0)
      {
        v15 = v8 >= v14;
      }

      if (v15)
      {
        break;
      }

      if (__OFADD__(v8, a3))
      {
        v16 = ((v8 + a3) >> 63) ^ 0x8000000000000000;
      }

      else
      {
        v16 = v8 + a3;
      }

      v17 = v8 + v35;
      if (__OFADD__(v8, v35))
      {
        goto LABEL_59;
      }

      if (v13 < v17)
      {
        v17 = v13;
      }

      v18 = v17 - v8;
      if (v17 < v8)
      {
        goto LABEL_60;
      }

      if (v8 < 0)
      {
        goto LABEL_61;
      }

      if (v13 == v18)
      {

        v19 = a4;
      }

      else
      {
        v19 = MEMORY[0x277D84F90];
        if (v17 != v8)
        {
          if (v18 >= 1)
          {
            sub_2207A6140();
            v19 = swift_allocObject();
            v22 = _swift_stdlib_malloc_size(v19);
            v19[2] = v18;
            v19[3] = 2 * v22 - 64;
          }

          memcpy(v19 + 4, a4 + v8 + 32, v18);
          v14 = a2;
        }
      }

      v21 = *(v37 + 16);
      v20 = *(v37 + 24);
      if (v21 >= v20 >> 1)
      {
        sub_22070BDC4((v20 > 1), v21 + 1, 1);
        v14 = a2;
      }

      *(v37 + 16) = v21 + 1;
      *(v37 + 8 * v21 + 32) = v19;
      v8 = v16;
      if (!--v9)
      {
        goto LABEL_34;
      }
    }

    __break(1u);
LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

  v16 = v8;
  v14 = a2;
LABEL_34:
  v23 = v16 <= v14;
  if (a3 > 0)
  {
    v23 = v16 >= v14;
  }

  if (!v23)
  {
    v24 = *v34;
    while (1)
    {
      v25 = __OFADD__(v16, a3) ? ((v16 + a3) >> 63) ^ 0x8000000000000000 : v16 + a3;
      v26 = v16 + v24;
      if (__OFADD__(v16, v24))
      {
        break;
      }

      v27 = a4[2];
      if (v27 < v26)
      {
        v26 = a4[2];
      }

      v28 = v26 - v16;
      if (v26 < v16)
      {
        goto LABEL_63;
      }

      if (v16 < 0)
      {
        goto LABEL_64;
      }

      if (v27 == v28)
      {

        v29 = a4;
      }

      else
      {
        v29 = MEMORY[0x277D84F90];
        if (v26 != v16)
        {
          if (v28 >= 1)
          {
            sub_2207A6140();
            v29 = swift_allocObject();
            v33 = _swift_stdlib_malloc_size(v29);
            v29[2] = v28;
            v29[3] = 2 * v33 - 64;
          }

          memcpy(v29 + 4, a4 + v16 + 32, v28);
          v14 = a2;
        }
      }

      v31 = *(v37 + 16);
      v30 = *(v37 + 24);
      if (v31 >= v30 >> 1)
      {
        sub_22070BDC4((v30 > 1), v31 + 1, 1);
        v14 = a2;
      }

      *(v37 + 16) = v31 + 1;
      *(v37 + 8 * v31 + 32) = v29;
      v32 = v25 <= v14;
      if (a3 > 0)
      {
        v32 = v25 >= v14;
      }

      v16 = v25;
      if (v32)
      {
        return;
      }
    }

LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
LABEL_64:
    __break(1u);
  }
}

void sub_2207A5F68(uint64_t a1)
{
  if (!qword_28127E318)
  {
    sub_2205CF5B4();
    v1 = sub_2208926EC();
    if (!v2)
    {
      atomic_store(v1, &qword_28127E318);
    }
  }
}

uint64_t sub_2207A5FCC(uint64_t a1, uint64_t a2)
{
  sub_2207A60D0(0, &qword_281299370, MEMORY[0x277D69178], MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2207A6060(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_2207A60D0(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_2207A60D0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_2207A6140()
{
  if (!qword_28127DF60)
  {
    v0 = sub_22089288C();
    if (!v1)
    {
      atomic_store(v0, &qword_28127DF60);
    }
  }
}

uint64_t sub_2207A61FC(uint64_t a1, uint64_t a2)
{
  v46 = a2;
  v44 = sub_22088ABEC();
  v3 = *(v44 - 8);
  MEMORY[0x28223BE20](v44, v4);
  v43 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2207A5F68(0);
  result = sub_2208926BC();
  v7 = 0;
  v45 = a1;
  v10 = *(a1 + 64);
  v9 = a1 + 64;
  v8 = v10;
  v11 = 1 << *(v9 - 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & v8;
  v14 = (v11 + 63) >> 6;
  v49 = *MEMORY[0x277D6D320];
  v40 = (v3 + 8);
  v41 = (v3 + 104);
  v39 = result + 64;
  v42 = result;
  if (v13)
  {
    while (1)
    {
      v15 = __clz(__rbit64(v13));
      v47 = (v13 - 1) & v13;
LABEL_10:
      v18 = v15 | (v7 << 6);
      v19 = v44;
      v20 = *(v45 + 56);
      v50 = *(*(v45 + 48) + v18);
      v21 = v20 + 48 * v18;
      v22 = *(v21 + 32);
      v48 = *(v21 + 40);
      v23 = v43;
      (*v41)(v43, v49, v44);
      v24 = v22;
      sub_22088ABDC();
      v26 = v25;
      v28 = v27;
      v30 = v29;
      v32 = v31;
      (*v40)(v23, v19);

      *(v39 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      result = v42;
      *(*(v42 + 48) + v18) = v50;
      v33 = (*(result + 56) + 48 * v18);
      *v33 = v26;
      v33[1] = v28;
      v33[2] = v30;
      v33[3] = v32;
      v34 = v48;
      v33[4] = v24;
      v33[5] = v34;
      v35 = *(result + 16);
      v36 = __OFADD__(v35, 1);
      v37 = v35 + 1;
      if (v36)
      {
        break;
      }

      *(result + 16) = v37;
      v13 = v47;
      if (!v47)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v14)
      {
        return result;
      }

      v17 = *(v9 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v47 = (v17 - 1) & v17;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_2207A64F0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2207A6538(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

double sub_2207A65A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_220885DFC();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v4;
  v12 = type metadata accessor for SortWatchlistCommandContext(0);
  if ((*(a4 + *(v12 + 24)) & 1) != 0 || (sub_220886A3C(), v13 = sub_220885D7C(), (*(v7 + 8))(v10, v6), (v13 & 1) == 0))
  {
    sub_2207A6718(a4 + *(v12 + 20));
    __swift_project_boxed_opaque_existential_1((v11 + 16), *(v11 + 40));
    sub_220885F8C();
  }

  return result;
}

uint64_t sub_2207A66E4@<X0>(uint64_t a1@<X3>, _BYTE *a2@<X8>)
{
  result = sub_2207A7408(a1);
  *a2 = result & 1;
  return result;
}

void sub_2207A6718(uint64_t a1)
{
  v2 = sub_220885DBC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v63 = &v63 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v7);
  v64 = &v63 - v8;
  MEMORY[0x28223BE20](v9, v10);
  v65 = &v63 - v11;
  MEMORY[0x28223BE20](v12, v13);
  v66 = &v63 - v14;
  MEMORY[0x28223BE20](v15, v16);
  v18 = &v63 - v17;
  MEMORY[0x28223BE20](v19, v20);
  v67 = &v63 - v21;
  MEMORY[0x28223BE20](v22, v23);
  v25 = &v63 - v24;
  MEMORY[0x28223BE20](v26, v27);
  v68 = &v63 - v28;
  MEMORY[0x28223BE20](v29, v30);
  v32 = &v63 - v31;
  MEMORY[0x28223BE20](v33, v34);
  v36 = &v63 - v35;
  v37 = sub_220885DFC();
  v38 = *(v37 - 8);
  v40 = MEMORY[0x28223BE20](v37, v39);
  v42 = &v63 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v38 + 16))(v42, a1, v37, v40);
  v43 = (*(v38 + 88))(v42, v37);
  if (v43 == *MEMORY[0x277D694A8])
  {
    (*(v38 + 96))(v42, v37);
    (*(v3 + 32))(v36, v42, v2);
    (*(v3 + 16))(v32, v36, v2);
    v44 = (*(v3 + 88))(v32, v2);
    v45 = v3;
    if (v44 != *MEMORY[0x277D694D0] && v44 != *MEMORY[0x277D694C8])
    {
      (*(v3 + 8))(v32, v2);
      goto LABEL_15;
    }

LABEL_8:
    type metadata accessor for Localized();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v49 = [objc_opt_self() bundleForClass_];
    sub_220884CAC();

LABEL_15:
    (*(v45 + 8))(v36, v2);
    goto LABEL_32;
  }

  if (v43 != *MEMORY[0x277D694B8])
  {
    if (v43 == *MEMORY[0x277D694F0])
    {
      (*(v38 + 96))(v42, v37);
      v50 = v67;
      (*(v3 + 32))(v67, v42, v2);
      (*(v3 + 16))(v18, v50, v2);
      v51 = (*(v3 + 88))(v18, v2);
      if (v51 != *MEMORY[0x277D694D0] && v51 != *MEMORY[0x277D694C8])
      {
        (*(v3 + 8))(v18, v2);
LABEL_31:
        (*(v3 + 8))(v50, v2);
        goto LABEL_32;
      }
    }

    else
    {
      if (v43 == *MEMORY[0x277D694E8])
      {
        (*(v38 + 96))(v42, v37);
        v45 = v3;
        v36 = v66;
        (*(v3 + 32))(v66, v42, v2);
        v54 = v65;
        (*(v3 + 16))(v65, v36, v2);
        v55 = (*(v3 + 88))(v54, v2);
        if (v55 != *MEMORY[0x277D694D0] && v55 != *MEMORY[0x277D694C8])
        {
          (*(v3 + 8))(v54, v2);
          goto LABEL_15;
        }

        goto LABEL_8;
      }

      if (v43 != *MEMORY[0x277D694C0])
      {
        if (v43 == *MEMORY[0x277D694E0])
        {
          type metadata accessor for Localized();
          v58 = swift_getObjCClassFromMetadata();
          v59 = [objc_opt_self() bundleForClass_];
          sub_220884CAC();
        }

        else
        {
          (*(v38 + 8))(v42, v37);
        }

        goto LABEL_32;
      }

      (*(v38 + 96))(v42, v37);
      v50 = v64;
      (*(v3 + 32))(v64, v42, v2);
      v56 = v63;
      (*(v3 + 16))(v63, v50, v2);
      v57 = (*(v3 + 88))(v56, v2);
      if (v57 != *MEMORY[0x277D694D0] && v57 != *MEMORY[0x277D694C8])
      {
        (*(v3 + 8))(v56, v2);
        goto LABEL_31;
      }
    }

    type metadata accessor for Localized();
    v60 = swift_getObjCClassFromMetadata();
    v61 = [objc_opt_self() bundleForClass_];
    sub_220884CAC();

    goto LABEL_31;
  }

  (*(v38 + 96))(v42, v37);
  v46 = v68;
  (*(v3 + 32))(v68, v42, v2);
  (*(v3 + 16))(v25, v46, v2);
  v47 = (*(v3 + 88))(v25, v2);
  if (v47 == *MEMORY[0x277D694D0] || v47 == *MEMORY[0x277D694C8])
  {
    type metadata accessor for Localized();
    v52 = swift_getObjCClassFromMetadata();
    v53 = [objc_opt_self() bundleForClass_];
    sub_220884CAC();

    (*(v3 + 8))(v46, v2);
LABEL_32:
    v62 = sub_22089132C();

    MEMORY[0x223D8ADB0](v62);

    return;
  }

  sub_2208928AC();
  __break(1u);
}

uint64_t sub_2207A7408(uint64_t a1)
{
  v3 = sub_220885DBC();
  v33 = *(v3 - 8);
  v34 = v3;
  MEMORY[0x28223BE20](v3, v4);
  v32 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v7);
  v31 = &v30 - v8;
  v35 = sub_220885DFC();
  v9 = *(v35 - 8);
  MEMORY[0x28223BE20](v35, v10);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2204961E0(0);
  MEMORY[0x28223BE20](v13 - 8, v14);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_220886A4C();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17, v19);
  v21 = &v30 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1((v1 + 16), *(v1 + 40));
  v22 = sub_220885FCC();
  v36 = a1;
  sub_22059C558(sub_22068BCFC, v22, v16);

  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {
    sub_2205B7488(v16);
    v23 = 0;
  }

  else
  {
    (*(v18 + 32))(v21, v16, v17);
    v24 = *(a1 + *(type metadata accessor for SortWatchlistCommandContext(0) + 24));
    sub_220886A3C();
    if (v24 == 1)
    {
      v25 = v31;
      sub_220885DCC();
      (*(v9 + 8))(v12, v35);
      v26 = v32;
      sub_220885DCC();
      sub_2207A7808();
      v27 = v34;
      sub_22089167C();
      sub_22089167C();
      v28 = *(v33 + 8);
      v28(v26, v27);
      v28(v25, v27);
      (*(v18 + 8))(v21, v17);
      v23 = v38 == v37;
    }

    else
    {
      v23 = sub_220885D7C();
      (*(v9 + 8))(v12, v35);
      (*(v18 + 8))(v21, v17);
    }
  }

  return v23 & 1;
}

unint64_t sub_2207A7808()
{
  result = qword_27CF59C20;
  if (!qword_27CF59C20)
  {
    sub_220885DBC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF59C20);
  }

  return result;
}

uint64_t type metadata accessor for CreateWatchlistViewLayoutOptions(uint64_t a1)
{
  result = qword_27CF59C28;
  if (!qword_27CF59C28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2207A78E4(uint64_t a1, void (*a2)(char *))
{
  sub_2207A7B98(0, &qword_281297850, MEMORY[0x277D6DF88]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v16 - v8;
  sub_2205C44B4(0);
  v11 = *(v10 + 48);
  sub_2207A7B98(0, &unk_281296F10, MEMORY[0x277D6EC60]);
  (*(*(v12 - 8) + 16))(v9, a1, v12);
  v13 = *MEMORY[0x277D6D850];
  v14 = sub_22088B64C();
  (*(*(v14 - 8) + 104))(&v9[v11], v13, v14);
  (*(v6 + 104))(v9, *MEMORY[0x277D6DF48], v5);
  a2(v9);
  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_2207A7AB4()
{
  result = qword_2812824C0;
  if (!qword_2812824C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2812824C0);
  }

  return result;
}

void sub_2207A7B98(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = type metadata accessor for StockFeedSectionDescriptor(255);
    v8[1] = type metadata accessor for StockFeedModel(255);
    v8[2] = sub_22044456C(&unk_281288C10, type metadata accessor for StockFeedSectionDescriptor, &unk_2208A1FAC);
    v8[3] = sub_22044456C(&qword_281293DD0, type metadata accessor for StockFeedModel, &unk_2208B4B18);
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t type metadata accessor for StockFeedEarningsViewLayoutOptions(uint64_t a1)
{
  result = qword_2812825B8;
  if (!qword_2812825B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2207A7D00()
{
  if (*(v0 + OBJC_IVAR____TtC8StocksUI20TickerCollectionView_autoScrolling) != 1 || UIAccessibilityIsReduceMotionEnabled() || UIAccessibilityIsVoiceOverRunning())
  {
    v1 = OBJC_IVAR____TtC8StocksUI20TickerCollectionView_displayLink;
    v2 = *(v0 + OBJC_IVAR____TtC8StocksUI20TickerCollectionView_displayLink);
    if (v2)
    {
      [v2 invalidate];
      v2 = *(v0 + v1);
    }

    *(v0 + v1) = 0;
  }

  else
  {
    v3 = OBJC_IVAR____TtC8StocksUI20TickerCollectionView_displayLink;
    if (*(v0 + OBJC_IVAR____TtC8StocksUI20TickerCollectionView_displayLink))
    {
      return;
    }

    v4 = [objc_opt_self() displayLinkWithTarget:v0 selector:sel_autoScrollWithDisplayWithDisplayLink_];
    v5 = *(v0 + v3);
    *(v0 + v3) = v4;

    v6 = *(v0 + v3);
    if (!v6)
    {
      return;
    }

    [v6 setPreferredFramesPerSecond_];
    v7 = *(v0 + v3);
    if (!v7)
    {
      return;
    }

    v8 = objc_opt_self();
    v9 = v7;
    v10 = [v8 currentRunLoop];
    [v9 addToRunLoop:v10 forMode:*MEMORY[0x277CBE738]];

    v2 = v10;
  }
}

double sub_2207A7E64()
{
  v1 = (v0 + OBJC_IVAR____TtC8StocksUI20TickerCollectionView____lazy_storage___delta);
  if ((*(v0 + OBJC_IVAR____TtC8StocksUI20TickerCollectionView____lazy_storage___delta + 8) & 1) == 0)
  {
    return *v1;
  }

  *v1 = 0x402E000000000000;
  v1[8] = 0;
  return 15.0;
}

void sub_2207A7E94(void *a1)
{
  v3 = [v1 window];
  if (v3)
  {

    [v1 contentSize];
    if (v4 != 0.0)
    {
      v5 = sub_2207A7E64();
      [a1 duration];
      v7 = fmax(v5 * v6, 0.25);
      v8 = [v1 effectiveUserInterfaceLayoutDirection];
      [v1 contentOffset];
      v10 = v9;
      [v1 contentOffset];
      v11 = -v7;
      if (v8 != 1)
      {
        v11 = v7;
      }

      v12 = v10 + v11;

      [v1 setContentOffset_];
    }
  }

  else
  {
    *(v1 + OBJC_IVAR____TtC8StocksUI20TickerCollectionView_autoScrolling) = 0;

    sub_2207A7D00();
  }
}

id sub_2207A8138(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v4 = objc_opt_self();
  v5 = [v4 defaultCenter];
  [v5 removeObserver:v2 name:*MEMORY[0x277D764C0] object:0];

  v6 = [v4 defaultCenter];
  [v6 removeObserver:v2 name:*MEMORY[0x277D765F0] object:0];

  v8.receiver = v2;
  v8.super_class = ObjectType;
  return objc_msgSendSuper2(&v8, sel_dealloc);
}

void sub_2207A8248()
{
  *(v0 + OBJC_IVAR____TtC8StocksUI20TickerCollectionView_autoScrolling) = 0;
  v1 = v0 + OBJC_IVAR____TtC8StocksUI20TickerCollectionView____lazy_storage___delta;
  *v1 = 0;
  *(v1 + 8) = 1;
  *(v0 + OBJC_IVAR____TtC8StocksUI20TickerCollectionView_minimumScrollDelta) = 0x3FD0000000000000;
  *(v0 + OBJC_IVAR____TtC8StocksUI20TickerCollectionView_displayLink) = 0;
  *(v0 + OBJC_IVAR____TtC8StocksUI20TickerCollectionView_preferredFrameRate) = 60;
  v2 = v0 + OBJC_IVAR____TtC8StocksUI20TickerCollectionView_tickerCollectionModel;
  v3 = [objc_opt_self() sharedApplication];
  v4 = [v3 isRunningPerformanceTest];

  *v2 = 0x4008000000000000;
  *(v2 + 8) = 4;
  *(v2 + 16) = v4;
  sub_22089267C();
  __break(1u);
}

uint64_t sub_2207A8350@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for StockFeedModel(0);
  MEMORY[0x28223BE20](v4, v5);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for StockFeedMastheadModel(0);
  MEMORY[0x28223BE20](v8, v9);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2207ABEFC(v2, v7, type metadata accessor for StockFeedModel);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 5)
  {
    if (EnumCaseMultiPayload > 7)
    {
      if (EnumCaseMultiPayload == 8)
      {
        sub_220459914(0);

        v15 = sub_22089030C();
LABEL_16:
        (*(*(v15 - 8) + 8))(v7, v15);
        goto LABEL_17;
      }

      if (EnumCaseMultiPayload != 9)
      {
        goto LABEL_17;
      }
    }

    goto LABEL_12;
  }

  if (EnumCaseMultiPayload <= 2)
  {
    if (EnumCaseMultiPayload < 2)
    {
      sub_2207AD938(v7, v11, type metadata accessor for StockFeedMastheadModel);
      sub_2207ABEFC(&v11[*(v8 + 20)], a1, sub_22045987C);
      return sub_2207ABE9C(v11, type metadata accessor for StockFeedMastheadModel);
    }

    v15 = sub_22088685C();
    goto LABEL_16;
  }

  if (EnumCaseMultiPayload == 3)
  {
    sub_2204597F0(0);
    v18 = *(v17 + 64);
    sub_2207AD938(&v7[*(v17 + 48)], a1, sub_22045987C);
    sub_2207ABE9C(&v7[v18], sub_220455030);
    v19 = sub_22088685C();
    return (*(*(v19 - 8) + 8))(v7, v19);
  }

  if (EnumCaseMultiPayload != 4)
  {
LABEL_12:
    v14 = type metadata accessor for StockFeedModel;
    goto LABEL_13;
  }

  v14 = type metadata accessor for StockEarningsModel;
LABEL_13:
  sub_2207ABE9C(v7, v14);
LABEL_17:
  v16 = sub_22088676C();
  return (*(*(v16 - 8) + 56))(a1, 1, 1, v16);
}

uint64_t sub_2207A8648(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    sub_22088698C();
    return a2;
  }

  return result;
}

uint64_t sub_2207A86E0()
{
  v1 = v0;
  v2 = sub_2208900AC();
  v32 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v3);
  v5 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22089030C();
  v31 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v7);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220454720(0);
  v11 = v10;
  v12 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v13);
  v15 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for StockFeedModel(0);
  MEMORY[0x28223BE20](v16, v17);
  v19 = (&v31 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_2207ABEFC(v1, v19, type metadata accessor for StockFeedModel);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 4)
  {
    if (EnumCaseMultiPayload <= 1)
    {
      if (EnumCaseMultiPayload)
      {
        sub_2207ABE9C(v19, type metadata accessor for StockFeedMastheadModel);
        return 0x6563697270;
      }

      else
      {
        sub_2207ABE9C(v19, type metadata accessor for StockFeedMastheadModel);
        return 0x646165687473616DLL;
      }
    }

    else if (EnumCaseMultiPayload == 2)
    {
      v28 = sub_22088685C();
      (*(*(v28 - 8) + 8))(v19, v28);
      return 0x7472616863;
    }

    else if (EnumCaseMultiPayload == 3)
    {
      sub_2204597F0(0);
      v23 = *(v22 + 48);
      sub_2207ABE9C(v19 + *(v22 + 64), sub_220455030);
      sub_2207ABE9C(v19 + v23, sub_22045987C);
      v24 = sub_22088685C();
      (*(*(v24 - 8) + 8))(v19, v24);
      return 0x74654465746F7571;
    }

    else
    {
      sub_2207ABE9C(v19, type metadata accessor for StockEarningsModel);
      return 0x73676E696E726165;
    }
  }

  else if (EnumCaseMultiPayload > 7)
  {
    if (EnumCaseMultiPayload == 8)
    {
      sub_220459914(0);

      v29 = v31;
      (*(v31 + 32))(v9, v19, v6);
      v21 = sub_2208902AC();
      (*(v29 + 8))(v9, v6);
      return v21;
    }

    if (EnumCaseMultiPayload == 9)
    {
      v26 = v32;
      (*(v32 + 32))(v5, v19, v2);
      v27 = sub_22089007C();
      (*(v26 + 8))(v5, v2);
      return v27;
    }

    else
    {
      return 0xD000000000000013;
    }
  }

  else
  {
    if (EnumCaseMultiPayload == 5)
    {
      sub_2207ABE9C(v19, type metadata accessor for StockFeedModel);
      return 0x64726163616C70;
    }

    if (EnumCaseMultiPayload == 6)
    {
      (*(v12 + 32))(v15, v19, v11);
      v21 = sub_22088FF4C();
      (*(v12 + 8))(v15, v11);
      return v21;
    }

    v30 = *v19;

    return v30;
  }
}

uint64_t sub_2207A8C4C(uint64_t a1, uint64_t a2)
{
  v4 = sub_220458840(&qword_281293DB0, type metadata accessor for StockFeedModel, &unk_2208B4AE8);

  return MEMORY[0x2821D2598](a1, a2, v4);
}

uint64_t sub_2207A8CCC@<X0>(uint64_t *a1@<X8>)
{
  v90 = a1;
  sub_220454234(0, &qword_2812994E0, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v1 - 8, v2);
  v87 = &v77 - v3;
  v4 = sub_22088698C();
  v85 = *(v4 - 8);
  v86 = v4;
  MEMORY[0x28223BE20](v4, v5);
  v7 = &v77 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v9);
  v11 = &v77 - v10;
  sub_220508808(0);
  MEMORY[0x28223BE20](v12 - 8, v13);
  v15 = &v77 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220454720(0);
  v17 = v16;
  v88 = *(v16 - 8);
  MEMORY[0x28223BE20](v16, v18);
  v20 = &v77 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220455030(0);
  MEMORY[0x28223BE20](v21 - 8, v22);
  v78 = &v77 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24, v25);
  v82 = &v77 - v26;
  sub_22045987C(0);
  MEMORY[0x28223BE20](v27 - 8, v28);
  v77 = &v77 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30, v31);
  v81 = &v77 - v32;
  v33 = sub_22088685C();
  v83 = *(v33 - 8);
  v84 = v33;
  MEMORY[0x28223BE20](v33, v34);
  v36 = &v77 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v37, v38);
  v79 = &v77 - v39;
  v40 = sub_22088564C();
  MEMORY[0x28223BE20](v40 - 8, v41);
  v80 = &v77 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = type metadata accessor for StockFeedModel(0);
  MEMORY[0x28223BE20](v43, v44);
  v46 = &v77 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = type metadata accessor for StockFeedMastheadModel(0);
  MEMORY[0x28223BE20](v47, v48);
  v50 = &v77 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2207ABEFC(v89, v46, type metadata accessor for StockFeedModel);
  result = swift_getEnumCaseMultiPayload();
  if (result <= 5)
  {
    if (result <= 2)
    {
      if (result < 2)
      {
        sub_2207AD938(v46, v50, type metadata accessor for StockFeedMastheadModel);
        (*(v83 + 16))(v79, v50, v84);
        sub_22088563C();
        sub_2207ABEFC(&v50[*(v47 + 20)], v81, sub_22045987C);
        sub_2207ABE9C(v50, type metadata accessor for StockFeedMastheadModel);
        v52 = sub_2208855EC();
        (*(*(v52 - 8) + 56))(v82, 1, 1, v52);
        v53 = sub_220885D0C();
        v54 = v90;
        v90[3] = v53;
        v54[4] = sub_220458840(&qword_2812992F0, MEMORY[0x277D69440], MEMORY[0x277D69438]);
        __swift_allocate_boxed_opaque_existential_1(v54);
        return sub_220885CFC();
      }

      result = (*(v83 + 8))(v46, v84);
      goto LABEL_19;
    }

    if (result == 3)
    {
      sub_2204597F0(0);
      v65 = *(v64 + 48);
      v66 = *(v64 + 64);
      v68 = v83;
      v67 = v84;
      v69 = v79;
      (*(v83 + 32))(v79, v46, v84);
      v70 = v81;
      sub_2207AD938(&v46[v65], v81, sub_22045987C);
      v71 = &v46[v66];
      v72 = v82;
      sub_2207AD938(v71, v82, sub_220455030);
      (*(v68 + 16))(v36, v69, v67);
      sub_22088563C();
      sub_2207ABEFC(v70, v77, sub_22045987C);
      sub_2207ABEFC(v72, v78, sub_220455030);
      v73 = sub_220885D0C();
      v74 = v90;
      v90[3] = v73;
      v74[4] = sub_220458840(&qword_2812992F0, MEMORY[0x277D69440], MEMORY[0x277D69438]);
      __swift_allocate_boxed_opaque_existential_1(v74);
      sub_220885CFC();
      sub_2207ABE9C(v72, sub_220455030);
      sub_2207ABE9C(v70, sub_22045987C);
      return (*(v68 + 8))(v69, v67);
    }

    if (result == 4)
    {
      v58 = type metadata accessor for StockEarningsModel;
LABEL_16:
      result = sub_2207ABE9C(v46, v58);
LABEL_19:
      v57 = v90;
LABEL_20:
      v57[4] = 0;
      *v57 = 0u;
      *(v57 + 1) = 0u;
      return result;
    }

LABEL_15:
    v58 = type metadata accessor for StockFeedModel;
    goto LABEL_16;
  }

  v56 = v85;
  v55 = v86;
  if (result > 7)
  {
    v57 = v90;
    if (result == 8)
    {
      sub_220459914(0);

      v63 = sub_22089030C();
      result = (*(*(v63 - 8) + 8))(v46, v63);
    }

    else if (result == 9)
    {
      result = sub_2207ABE9C(v46, type metadata accessor for StockFeedModel);
    }

    goto LABEL_20;
  }

  if (result != 6)
  {
    goto LABEL_15;
  }

  (*(v88 + 32))(v20, v46, v17);
  sub_22088FF6C();
  v89 = sub_2208868DC();
  v59 = *(v56 + 8);
  v59(v11, v55);
  sub_22088FF6C();
  sub_2208868DC();
  v59(v7, v55);
  swift_getObjectType();
  sub_220891DCC();
  swift_unknownObjectRelease();
  sub_22089031C();
  v60 = sub_22089033C();
  v61 = *(v60 - 8);
  if ((*(v61 + 48))(v15, 1, v60) == 1)
  {
    (*(v88 + 8))(v20, v17);
    result = sub_2207ABE9C(v15, sub_220508808);
    v62 = v90;
    *v90 = 0u;
    *(v62 + 1) = 0u;
    v62[4] = 0;
  }

  else
  {
    v75 = v90;
    v90[3] = v60;
    v75[4] = sub_220458840(&unk_2812968F0, MEMORY[0x277D33410], MEMORY[0x277D33408]);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v75);
    (*(v61 + 32))(boxed_opaque_existential_1, v15, v60);
    return (*(v88 + 8))(v20, v17);
  }

  return result;
}

uint64_t sub_2207A9748@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  sub_220454720(0);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for StockFeedModel(0);
  MEMORY[0x28223BE20](v10, v11);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2207ABEFC(v2, v13, type metadata accessor for StockFeedModel);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 4)
  {
    if (EnumCaseMultiPayload <= 1)
    {
      v19 = type metadata accessor for StockFeedMastheadModel;
      goto LABEL_17;
    }

    if (EnumCaseMultiPayload != 2)
    {
      if (EnumCaseMultiPayload != 3)
      {
        v19 = type metadata accessor for StockEarningsModel;
        goto LABEL_17;
      }

      sub_2204597F0(0);
      v17 = *(v16 + 48);
      sub_2207ABE9C(&v13[*(v16 + 64)], sub_220455030);
      sub_2207ABE9C(&v13[v17], sub_22045987C);
    }

    v18 = sub_22088685C();
    goto LABEL_15;
  }

  if (EnumCaseMultiPayload > 7)
  {
    if (EnumCaseMultiPayload != 8)
    {
      if (EnumCaseMultiPayload == 9)
      {
        goto LABEL_12;
      }

LABEL_18:
      v15 = 1;
      goto LABEL_19;
    }

    sub_220459914(0);

    v18 = sub_22089030C();
LABEL_15:
    (*(*(v18 - 8) + 8))(v13, v18);
    goto LABEL_18;
  }

  if (EnumCaseMultiPayload != 6)
  {
LABEL_12:
    v19 = type metadata accessor for StockFeedModel;
LABEL_17:
    sub_2207ABE9C(v13, v19);
    goto LABEL_18;
  }

  (*(v6 + 32))(v9, v13, v5);
  sub_22088FF6C();
  (*(v6 + 8))(v9, v5);
  v15 = 0;
LABEL_19:
  v20 = sub_22088698C();
  return (*(*(v20 - 8) + 56))(a1, v15, 1, v20);
}

uint64_t sub_2207A9A3C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_22088698C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v26[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_220454720(0);
  v10 = v9;
  v11 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v12);
  v14 = &v26[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = type metadata accessor for StockFeedModel(0);
  MEMORY[0x28223BE20](v15, v16);
  v18 = &v26[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_2207ABEFC(v2, v18, type metadata accessor for StockFeedModel);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 4)
  {
    if (EnumCaseMultiPayload <= 1)
    {
      v24 = type metadata accessor for StockFeedMastheadModel;
      goto LABEL_18;
    }

    if (EnumCaseMultiPayload != 2)
    {
      if (EnumCaseMultiPayload != 3)
      {
        v24 = type metadata accessor for StockEarningsModel;
        goto LABEL_18;
      }

      sub_2204597F0(0);
      v22 = *(v21 + 48);
      sub_2207ABE9C(&v18[*(v21 + 64)], sub_220455030);
      sub_2207ABE9C(&v18[v22], sub_22045987C);
    }

    v23 = sub_22088685C();
    goto LABEL_16;
  }

  if (EnumCaseMultiPayload > 7)
  {
    if (EnumCaseMultiPayload != 8)
    {
      if (EnumCaseMultiPayload != 9)
      {
        goto LABEL_19;
      }

      goto LABEL_13;
    }

    sub_220459914(0);

    v23 = sub_22089030C();
LABEL_16:
    (*(*(v23 - 8) + 8))(v18, v23);
    goto LABEL_19;
  }

  if (EnumCaseMultiPayload != 6)
  {
LABEL_13:
    v24 = type metadata accessor for StockFeedModel;
LABEL_18:
    sub_2207ABE9C(v18, v24);
    goto LABEL_19;
  }

  (*(v11 + 32))(v14, v18, v10);
  sub_22088FF8C();
  if (v26[15] == 1)
  {
    sub_22088FF6C();
    Headline.dragItem.getter(a1);
    (*(v5 + 8))(v8, v4);
    return (*(v11 + 8))(v14, v10);
  }

  (*(v11 + 8))(v14, v10);
LABEL_19:
  v25 = sub_22088E4EC();
  return (*(*(v25 - 8) + 56))(a1, 1, 1, v25);
}

uint64_t sub_2207A9E0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8, uint64_t a9)
{
  v40 = a1;
  v41 = a3;
  v47 = a2;
  v48 = a3;
  v43 = a4;
  v44 = a5;
  v49 = a4;
  v50 = a5;
  v45 = a6;
  v46 = a7;
  v51 = a6;
  v52 = a7;
  v42 = a8;
  v53 = a8;
  v54 = a9;
  v11 = sub_22088A8AC();
  v38 = *(v11 - 8);
  MEMORY[0x28223BE20](v11, v12);
  v14 = (&v37 - v13);
  sub_220454720(0);
  v16 = v15;
  v39 = *(v15 - 8);
  MEMORY[0x28223BE20](v15, v17);
  v19 = &v37 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20, v21);
  v23 = &v37 - v22;
  v24 = type metadata accessor for StockFeedModel(0);
  MEMORY[0x28223BE20](v24, v25);
  v27 = &v37 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2207ABEFC(v9, v27, type metadata accessor for StockFeedModel);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 4)
  {
    if (EnumCaseMultiPayload <= 1)
    {
      v35 = type metadata accessor for StockFeedMastheadModel;
      goto LABEL_17;
    }

    if (EnumCaseMultiPayload != 2)
    {
      if (EnumCaseMultiPayload != 3)
      {
        v35 = type metadata accessor for StockEarningsModel;
        goto LABEL_17;
      }

      sub_2204597F0(0);
      v33 = *(v32 + 48);
      sub_2207ABE9C(&v27[*(v32 + 64)], sub_220455030);
      sub_2207ABE9C(&v27[v33], sub_22045987C);
    }

    v34 = sub_22088685C();
    goto LABEL_15;
  }

  if (EnumCaseMultiPayload > 7)
  {
    if (EnumCaseMultiPayload != 8)
    {
      v31 = 0;
      if (EnumCaseMultiPayload != 9)
      {
        return v31;
      }

      goto LABEL_12;
    }

    sub_220459914(0);

    v34 = sub_22089030C();
LABEL_15:
    (*(*(v34 - 8) + 8))(v27, v34);
    return 0;
  }

  if (EnumCaseMultiPayload != 6)
  {
LABEL_12:
    v35 = type metadata accessor for StockFeedModel;
LABEL_17:
    sub_2207ABE9C(v27, v35);
    return 0;
  }

  v29 = v39;
  (*(v39 + 32))(v23, v27, v16);
  sub_22088AB2C();
  (*(v29 + 16))(v19, v23, v16);
  (*(v38 + 16))(v14, v40, v11);
  v30 = sub_220686898(v19, v14, a2, v41, v43, v44, v45, v46, v42, a9);
  (*(v29 + 8))(v23, v16);
  return v30;
}

uint64_t sub_2207AA200(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v48 = a5;
  v49 = a8;
  v50 = a1;
  v51 = a2;
  v52 = a3;
  v53 = a6;
  v54 = a7;
  v15 = sub_22088E81C();
  v47 = *(v15 - 8);
  MEMORY[0x28223BE20](v15, v16);
  v18 = &v43 - v17;
  v19 = type metadata accessor for StockFeedModel(0);
  MEMORY[0x28223BE20](v19, v20);
  v22 = &v43 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2207ABEFC(v9, v22, type metadata accessor for StockFeedModel);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 4)
  {
    if (EnumCaseMultiPayload <= 1)
    {
      v33 = type metadata accessor for StockFeedMastheadModel;
      goto LABEL_18;
    }

    if (EnumCaseMultiPayload != 2)
    {
      if (EnumCaseMultiPayload != 3)
      {
        v33 = type metadata accessor for StockEarningsModel;
        goto LABEL_18;
      }

      sub_2204597F0(0);
      v30 = *(v29 + 48);
      sub_2207ABE9C(&v22[*(v29 + 64)], sub_220455030);
      sub_2207ABE9C(&v22[v30], sub_22045987C);
    }

    v31 = sub_22088685C();
    goto LABEL_16;
  }

  if (EnumCaseMultiPayload > 7)
  {
    if (EnumCaseMultiPayload != 8)
    {
      v32 = 0;
      if (EnumCaseMultiPayload != 9)
      {
        return v32;
      }

      goto LABEL_13;
    }

    sub_220459914(0);

    v31 = sub_22089030C();
LABEL_16:
    (*(*(v31 - 8) + 8))(v22, v31);
    return 0;
  }

  if (EnumCaseMultiPayload != 6)
  {
LABEL_13:
    v33 = type metadata accessor for StockFeedModel;
LABEL_18:
    sub_2207ABE9C(v22, v33);
    return 0;
  }

  v46 = a9;
  sub_220454234(0, &qword_28127E080, sub_2205D3A54, MEMORY[0x277D84560]);
  v44 = swift_allocObject();
  *(v44 + 16) = xmmword_220899360;
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_22089B140;
  v25 = sub_22088B17C();
  v26 = sub_22088B13C();
  if (v26)
  {
    v27 = MEMORY[0x277D6D630];
    v28 = v25;
  }

  else
  {
    v28 = 0;
    v27 = 0;
    *(v24 + 40) = 0;
    *(v24 + 48) = 0;
  }

  *(v24 + 32) = v26;
  *(v24 + 56) = v28;
  *(v24 + 64) = v27;
  v45 = v25;
  v35 = sub_22088B12C();
  if (v35)
  {
    v36 = MEMORY[0x277D6D630];
    v37 = v45;
  }

  else
  {
    v37 = 0;
    v36 = 0;
    *(v24 + 80) = 0;
    *(v24 + 88) = 0;
  }

  *(v24 + 72) = v35;
  *(v24 + 96) = v37;
  *(v24 + 104) = v36;
  v51 = a2;
  v52 = a3;
  v53 = a4;
  v54 = v48;
  v55 = a6;
  v56 = a7;
  v57 = v49;
  v58 = v46;
  sub_22088A8AC();
  sub_22088A89C();
  type metadata accessor for StockFeedServiceConfig(0);
  sub_220458840(&qword_28128C4E0, type metadata accessor for StockFeedServiceConfig, &unk_22089CCD0);
  v38 = sub_22088E79C();
  (*(v47 + 8))(v18, v15);
  sub_22088A87C();
  v39 = v45;
  v40 = sub_22088B11C();

  sub_22062782C(v38);
  if (v40)
  {
    v41 = v39;
    v42 = MEMORY[0x277D6D630];
  }

  else
  {
    v41 = 0;
    v42 = 0;
    *(v24 + 120) = 0;
    *(v24 + 128) = 0;
  }

  *(v24 + 112) = v40;
  *(v24 + 136) = v41;
  *(v24 + 144) = v42;
  sub_22088AB2C();
  sub_22088B4FC();
  sub_22088B4BC();

  v32 = sub_22088AAEC();
  sub_2207ABE9C(v22, type metadata accessor for StockFeedModel);
  return v32;
}

uint64_t sub_2207AA760()
{
  v1 = type metadata accessor for StockFeedModel(0);
  MEMORY[0x28223BE20](v1, v2);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2207ABEFC(v0, v4, type metadata accessor for StockFeedModel);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 4)
  {
    if (EnumCaseMultiPayload <= 1)
    {
      v11 = type metadata accessor for StockFeedMastheadModel;
      goto LABEL_18;
    }

    if (EnumCaseMultiPayload != 2)
    {
      if (EnumCaseMultiPayload != 3)
      {
        v11 = type metadata accessor for StockEarningsModel;
        goto LABEL_18;
      }

      sub_2204597F0(0);
      v8 = *(v7 + 48);
      sub_2207ABE9C(&v4[*(v7 + 64)], sub_220455030);
      sub_2207ABE9C(&v4[v8], sub_22045987C);
    }

    v9 = sub_22088685C();
LABEL_16:
    (*(*(v9 - 8) + 8))(v4, v9);
    return 0;
  }

  if (EnumCaseMultiPayload <= 7)
  {
    if (EnumCaseMultiPayload == 6)
    {
      sub_2207ABE9C(v4, type metadata accessor for StockFeedModel);
      return 1;
    }

    goto LABEL_13;
  }

  if (EnumCaseMultiPayload == 8)
  {
    sub_220459914(0);

    v9 = sub_22089030C();
    goto LABEL_16;
  }

  v10 = EnumCaseMultiPayload == 9;
  result = 0;
  if (v10)
  {
LABEL_13:
    v11 = type metadata accessor for StockFeedModel;
LABEL_18:
    sub_2207ABE9C(v4, v11);
    return 0;
  }

  return result;
}

uint64_t sub_2207AA964()
{
  v1 = type metadata accessor for StockFeedModel(0);
  MEMORY[0x28223BE20](v1, v2);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2207ABEFC(v0, v4, type metadata accessor for StockFeedModel);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 4)
  {
    if (EnumCaseMultiPayload <= 1)
    {
      v10 = type metadata accessor for StockFeedMastheadModel;
      goto LABEL_17;
    }

    if (EnumCaseMultiPayload != 2)
    {
      if (EnumCaseMultiPayload != 3)
      {
        v10 = type metadata accessor for StockEarningsModel;
        goto LABEL_17;
      }

      sub_2204597F0(0);
      v8 = *(v7 + 48);
      sub_2207ABE9C(&v4[*(v7 + 64)], sub_220455030);
      sub_2207ABE9C(&v4[v8], sub_22045987C);
    }

    v9 = sub_22088685C();
    goto LABEL_15;
  }

  if (EnumCaseMultiPayload <= 7)
  {
    if (EnumCaseMultiPayload == 6)
    {
      sub_2207ABE9C(v4, type metadata accessor for StockFeedModel);
      return 1;
    }

    goto LABEL_12;
  }

  if (EnumCaseMultiPayload == 8)
  {
    sub_220459914(0);

    v9 = sub_22089030C();
LABEL_15:
    (*(*(v9 - 8) + 8))(v4, v9);
    return 0;
  }

  if (EnumCaseMultiPayload == 9)
  {
LABEL_12:
    v10 = type metadata accessor for StockFeedModel;
LABEL_17:
    sub_2207ABE9C(v4, v10);
  }

  return 0;
}

uint64_t sub_2207AAB60()
{
  v1 = type metadata accessor for StockFeedModel(0);
  MEMORY[0x28223BE20](v1, v2);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2207ABEFC(v0, v4, type metadata accessor for StockFeedModel);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 4)
  {
    if (EnumCaseMultiPayload <= 1)
    {
      v6 = type metadata accessor for StockFeedMastheadModel;
      goto LABEL_14;
    }

    if (EnumCaseMultiPayload != 2)
    {
      if (EnumCaseMultiPayload != 3)
      {
        v10 = type metadata accessor for StockEarningsModel;
        goto LABEL_19;
      }

      sub_2204597F0(0);
      v8 = *(v7 + 48);
      sub_2207ABE9C(&v4[*(v7 + 64)], sub_220455030);
      sub_2207ABE9C(&v4[v8], sub_22045987C);
    }

    v9 = sub_22088685C();
LABEL_16:
    (*(*(v9 - 8) + 8))(v4, v9);
    return 0;
  }

  if (EnumCaseMultiPayload <= 7)
  {
    if (EnumCaseMultiPayload != 6)
    {
      v6 = type metadata accessor for StockFeedModel;
LABEL_14:
      sub_2207ABE9C(v4, v6);
      return 0;
    }

    goto LABEL_12;
  }

  if (EnumCaseMultiPayload == 8)
  {
    sub_220459914(0);

    v9 = sub_22089030C();
    goto LABEL_16;
  }

  if (EnumCaseMultiPayload != 9)
  {
    return 0;
  }

LABEL_12:
  v10 = type metadata accessor for StockFeedModel;
LABEL_19:
  sub_2207ABE9C(v4, v10);
  return 1;
}

uint64_t sub_2207AAD98@<X0>(unsigned int *a1@<X0>, uint64_t (*a2)(void)@<X1>, unsigned int *a3@<X2>, uint64_t a4@<X8>)
{
  v8 = v4;
  v10 = type metadata accessor for StockFeedModel(0);
  MEMORY[0x28223BE20](v10, v11);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2207ABEFC(v8, v13, type metadata accessor for StockFeedModel);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 4)
  {
    if (EnumCaseMultiPayload <= 1)
    {
      v21 = type metadata accessor for StockFeedMastheadModel;
      goto LABEL_17;
    }

    if (EnumCaseMultiPayload != 2)
    {
      if (EnumCaseMultiPayload != 3)
      {
        v21 = type metadata accessor for StockEarningsModel;
        goto LABEL_17;
      }

      sub_2204597F0(0);
      v19 = *(v18 + 48);
      sub_2207ABE9C(&v13[*(v18 + 64)], sub_220455030);
      sub_2207ABE9C(&v13[v19], sub_22045987C);
    }

    v20 = sub_22088685C();
    goto LABEL_15;
  }

  if (EnumCaseMultiPayload <= 7)
  {
    if (EnumCaseMultiPayload == 6)
    {
      v15 = *a1;
      v16 = a2(0);
      (*(*(v16 - 8) + 104))(a4, v15, v16);
      return sub_2207ABE9C(v13, type metadata accessor for StockFeedModel);
    }

    goto LABEL_12;
  }

  if (EnumCaseMultiPayload == 8)
  {
    sub_220459914(0);

    v20 = sub_22089030C();
LABEL_15:
    (*(*(v20 - 8) + 8))(v13, v20);
    goto LABEL_18;
  }

  if (EnumCaseMultiPayload == 9)
  {
LABEL_12:
    v21 = type metadata accessor for StockFeedModel;
LABEL_17:
    sub_2207ABE9C(v13, v21);
  }

LABEL_18:
  v22 = *a3;
  v23 = a2(0);
  return (*(*(v23 - 8) + 104))(a4, v22, v23);
}

uint64_t sub_2207AB070()
{
  v1 = type metadata accessor for StockFeedModel(0);
  MEMORY[0x28223BE20](v1, v2);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2207ABEFC(v0, v4, type metadata accessor for StockFeedModel);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 4)
  {
    if (EnumCaseMultiPayload <= 1)
    {
      v10 = type metadata accessor for StockFeedMastheadModel;
      goto LABEL_18;
    }

    if (EnumCaseMultiPayload != 2)
    {
      if (EnumCaseMultiPayload != 3)
      {
        v10 = type metadata accessor for StockEarningsModel;
        goto LABEL_18;
      }

      sub_2204597F0(0);
      v8 = *(v7 + 48);
      sub_2207ABE9C(&v4[*(v7 + 64)], sub_220455030);
      sub_2207ABE9C(&v4[v8], sub_22045987C);
    }

    v9 = sub_22088685C();
    goto LABEL_16;
  }

  if (EnumCaseMultiPayload <= 7)
  {
    if (EnumCaseMultiPayload != 5 && EnumCaseMultiPayload != 6)
    {
      sub_2207ABE9C(v4, type metadata accessor for StockFeedModel);
      return 1;
    }

    goto LABEL_13;
  }

  if (EnumCaseMultiPayload == 8)
  {
    sub_220459914(0);

    v9 = sub_22089030C();
LABEL_16:
    (*(*(v9 - 8) + 8))(v4, v9);
    return 0;
  }

  if (EnumCaseMultiPayload == 9)
  {
LABEL_13:
    v10 = type metadata accessor for StockFeedModel;
LABEL_18:
    sub_2207ABE9C(v4, v10);
  }

  return 0;
}

uint64_t sub_2207AB26C@<X0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  MEMORY[0x28223BE20](v3, a2);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2207ABEFC(v7, v6, type metadata accessor for StockFeedModel);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v9 = sub_2208900AC();
  v10 = *(v9 - 8);
  v11 = v10;
  if (EnumCaseMultiPayload == 9)
  {
    (*(v10 + 32))(a3, v6, v9);
    return (*(v11 + 56))(a3, 0, 1, v9);
  }

  else
  {
    (*(v10 + 56))(a3, 1, 1, v9);
    return sub_2207ABE9C(v6, type metadata accessor for StockFeedModel);
  }
}

uint64_t sub_2207AB3D0@<X0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  v5 = sub_2208900AC();
  (*(*(v5 - 8) + 16))(a3, a1, v5);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_2207AB458()
{
  v1 = sub_22088698C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v3);
  v5 = v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220454720(0);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v9);
  v11 = v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for StockFeedModel(0);
  MEMORY[0x28223BE20](v12, v13);
  v15 = v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2207ABEFC(v0, v15, type metadata accessor for StockFeedModel);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 4)
  {
    if (EnumCaseMultiPayload <= 1)
    {
      v25 = type metadata accessor for StockFeedMastheadModel;
      goto LABEL_18;
    }

    if (EnumCaseMultiPayload != 2)
    {
      if (EnumCaseMultiPayload != 3)
      {
        v25 = type metadata accessor for StockEarningsModel;
        goto LABEL_18;
      }

      sub_2204597F0(0);
      v23 = *(v22 + 48);
      sub_2207ABE9C(&v15[*(v22 + 64)], sub_220455030);
      sub_2207ABE9C(&v15[v23], sub_22045987C);
    }

    v24 = sub_22088685C();
    goto LABEL_16;
  }

  if (EnumCaseMultiPayload > 7)
  {
    if (EnumCaseMultiPayload != 8)
    {
      if (EnumCaseMultiPayload == 9)
      {
        goto LABEL_13;
      }

      return sub_2207A86E0();
    }

    sub_220459914(0);

    v24 = sub_22089030C();
LABEL_16:
    (*(*(v24 - 8) + 8))(v15, v24);
    return sub_2207A86E0();
  }

  if (EnumCaseMultiPayload != 6)
  {
LABEL_13:
    v25 = type metadata accessor for StockFeedModel;
LABEL_18:
    sub_2207ABE9C(v15, v25);
    return sub_2207A86E0();
  }

  (*(v8 + 32))(v11, v15, v7);
  sub_22088FF6C();
  v17 = sub_2208868DC();
  (*(v2 + 8))(v5, v1);
  v18 = [v17 title];
  swift_unknownObjectRelease();
  if (v18)
  {
    v19 = sub_22089136C();
    v21 = v20;
  }

  else
  {
    v19 = 0;
    v21 = 0xE000000000000000;
  }

  v39[0] = sub_22088FF4C();
  v39[1] = v27;
  MEMORY[0x223D89680](8236, 0xE200000000000000);
  v28 = sub_2207AD7FC(36, v19, v21);
  v30 = v29;
  v32 = v31;
  v34 = v33;

  v35 = MEMORY[0x223D895D0](v28, v30, v32, v34);
  v37 = v36;

  MEMORY[0x223D89680](v35, v37);

  MEMORY[0x223D89680](3026478, 0xE300000000000000);
  v38 = v39[0];
  (*(v8 + 8))(v11, v7);
  return v38;
}

uint64_t sub_2207AB894@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_22089030C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220454720(0);
  v10 = v9;
  v11 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v12);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for StockFeedModel(0);
  MEMORY[0x28223BE20](v15, v16);
  v18 = &v29 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2207ABEFC(v2, v18, type metadata accessor for StockFeedModel);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 4)
  {
    if (EnumCaseMultiPayload <= 1)
    {
      v25 = type metadata accessor for StockFeedMastheadModel;
LABEL_18:
      sub_2207ABE9C(v18, v25);
      goto LABEL_19;
    }

    if (EnumCaseMultiPayload != 2)
    {
      if (EnumCaseMultiPayload != 3)
      {
        v25 = type metadata accessor for StockEarningsModel;
        goto LABEL_18;
      }

      sub_2204597F0(0);
      v22 = *(v21 + 48);
      sub_2207ABE9C(&v18[*(v21 + 64)], sub_220455030);
      sub_2207ABE9C(&v18[v22], sub_22045987C);
    }

    v23 = sub_22088685C();
    (*(*(v23 - 8) + 8))(v18, v23);
LABEL_19:
    v20 = MEMORY[0x277D32DD0];
    goto LABEL_20;
  }

  if (EnumCaseMultiPayload > 7)
  {
    if (EnumCaseMultiPayload == 8)
    {
      sub_220459914(0);

      (*(v5 + 32))(v8, v18, v4);
      sub_2208902AC();
      _s8StocksUI16OfflineAlertableV5titleSSSgvg_0();
      _s8StocksUI16OfflineAlertableV7messageSSSgvg_0();
      sub_22088F41C();
      (*(v5 + 8))(v8, v4);
      v20 = MEMORY[0x277D32D10];
      goto LABEL_20;
    }

    if (EnumCaseMultiPayload == 9)
    {
      v24 = sub_2208900AC();
      (*(*(v24 - 8) + 32))(a1, v18, v24);
      v20 = MEMORY[0x277D32E00];
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  if (EnumCaseMultiPayload == 5)
  {
    v25 = type metadata accessor for StockFeedModel;
    goto LABEL_18;
  }

  if (EnumCaseMultiPayload == 6)
  {
    (*(v11 + 32))(v14, v18, v10);
    sub_2204FF8CC(a1);
    (*(v11 + 8))(v14, v10);
    v20 = MEMORY[0x277D32E10];
  }

  else
  {
    sub_2207ABE9C(v18, type metadata accessor for StockFeedModel);
    sub_2207A86E0();
    sub_22088FEEC();
    v20 = MEMORY[0x277D32DB8];
  }

LABEL_20:
  v26 = *v20;
  v27 = sub_22088FF2C();
  return (*(*(v27 - 8) + 104))(a1, v26, v27);
}

uint64_t sub_2207ABD04(uint64_t a1)
{
  v2 = v1;
  v3 = sub_2208900AC();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v9);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2207ABEFC(v2, v11, type metadata accessor for StockFeedModel);
  if (swift_getEnumCaseMultiPayload() == 9)
  {
    (*(v4 + 32))(v7, v11, v3);
    v12 = sub_22089008C();
    (*(v4 + 8))(v7, v3);
    return v12;
  }

  else
  {
    sub_2207ABE9C(v11, type metadata accessor for StockFeedModel);
    return 0;
  }
}

uint64_t sub_2207ABE9C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2207ABEFC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2207ABF64(uint64_t a1, char *a2)
{
  v250 = a1;
  v251 = a2;
  v2 = type metadata accessor for StockEarningsModel(0);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v249 = &v209 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5, v6);
  v248 = &v209 - v7;
  v8 = sub_2208900AC();
  v236 = *(v8 - 8);
  v237 = v8;
  MEMORY[0x28223BE20](v8, v9);
  v227 = &v209 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v12);
  v226 = &v209 - v13;
  v14 = sub_22089030C();
  v234 = *(v14 - 8);
  v235 = v14;
  MEMORY[0x28223BE20](v14, v15);
  v225 = &v209 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17, v18);
  v224 = &v209 - v19;
  sub_220454720(0);
  v232 = *(v20 - 8);
  v233 = v20;
  MEMORY[0x28223BE20](v20, v21);
  v223 = &v209 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23, v24);
  v222 = &v209 - v25;
  v215 = sub_2208855EC();
  v214 = *(v215 - 8);
  MEMORY[0x28223BE20](v215, v26);
  v209 = &v209 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2207AD898(0);
  v212 = v28;
  MEMORY[0x28223BE20](v28, v29);
  v213 = &v209 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v219 = sub_22088676C();
  v220 = *(v219 - 8);
  MEMORY[0x28223BE20](v219, v31);
  v211 = &v209 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220522FA4(0);
  v217 = v33;
  MEMORY[0x28223BE20](v33, v34);
  v218 = &v209 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220455030(0);
  MEMORY[0x28223BE20](v36 - 8, v37);
  v210 = &v209 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v39, v40);
  v221 = &v209 - v41;
  MEMORY[0x28223BE20](v42, v43);
  v228 = &v209 - v44;
  sub_22045987C(0);
  MEMORY[0x28223BE20](v45 - 8, v46);
  v216 = &v209 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v48, v49);
  v231 = &v209 - v50;
  MEMORY[0x28223BE20](v51, v52);
  v230 = &v209 - v53;
  v54 = sub_22088685C();
  v242 = *(v54 - 8);
  v243 = v54;
  MEMORY[0x28223BE20](v54, v55);
  v241 = &v209 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v57, v58);
  v229 = &v209 - v59;
  MEMORY[0x28223BE20](v60, v61);
  v247 = &v209 - v62;
  MEMORY[0x28223BE20](v63, v64);
  v246 = &v209 - v65;
  v66 = type metadata accessor for StockFeedMastheadModel(0);
  MEMORY[0x28223BE20](v66 - 8, v67);
  v245 = &v209 - ((v68 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v69, v70);
  v244 = &v209 - v71;
  v72 = type metadata accessor for StockFeedModel(0);
  MEMORY[0x28223BE20](v72, v73);
  v75 = &v209 - ((v74 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v76, v77);
  v239 = &v209 - v78;
  MEMORY[0x28223BE20](v79, v80);
  v240 = &v209 - v81;
  MEMORY[0x28223BE20](v82, v83);
  v85 = (&v209 - v84);
  MEMORY[0x28223BE20](v86, v87);
  v238 = &v209 - v88;
  MEMORY[0x28223BE20](v89, v90);
  v92 = &v209 - v91;
  MEMORY[0x28223BE20](v93, v94);
  v96 = &v209 - v95;
  MEMORY[0x28223BE20](v97, v98);
  v100 = &v209 - v99;
  MEMORY[0x28223BE20](v101, v102);
  v104 = &v209 - v103;
  sub_2207AD8B8(0);
  MEMORY[0x28223BE20](v105 - 8, v106);
  v108 = &v209 - ((v107 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = &v108[*(v109 + 56)];
  sub_2207ABEFC(v250, v108, type metadata accessor for StockFeedModel);
  v250 = v110;
  sub_2207ABEFC(v251, v110, type metadata accessor for StockFeedModel);
  v251 = v108;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 4)
  {
    v121 = v75;
    v122 = v92;
    v123 = v246;
    v124 = v247;
    v126 = v244;
    v125 = v245;
    v127 = v248;
    v128 = v249;
    if (EnumCaseMultiPayload <= 1)
    {
      if (EnumCaseMultiPayload)
      {
        sub_2207ABEFC(v251, v100, type metadata accessor for StockFeedModel);
        v178 = v250;
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v127 = v126;
          v179 = v125;
          sub_2207AD938(v100, v126, type metadata accessor for StockFeedMastheadModel);
          sub_2207AD938(v178, v125, type metadata accessor for StockFeedMastheadModel);
          v162 = sub_2207557B8(v126, v125);
          v175 = type metadata accessor for StockFeedMastheadModel;
          v176 = type metadata accessor for StockFeedMastheadModel;
          v177 = v179;
          goto LABEL_52;
        }

        v155 = type metadata accessor for StockFeedMastheadModel;
        v156 = v100;
      }

      else
      {
        sub_2207ABEFC(v251, v104, type metadata accessor for StockFeedModel);
        v154 = v250;
        if (!swift_getEnumCaseMultiPayload())
        {
          v127 = v126;
          v184 = v125;
          sub_2207AD938(v104, v126, type metadata accessor for StockFeedMastheadModel);
          sub_2207AD938(v154, v125, type metadata accessor for StockFeedMastheadModel);
          v162 = sub_2207557B8(v126, v125);
          v175 = type metadata accessor for StockFeedMastheadModel;
          v176 = type metadata accessor for StockFeedMastheadModel;
          v177 = v184;
          goto LABEL_52;
        }

        v155 = type metadata accessor for StockFeedMastheadModel;
        v156 = v104;
      }
    }

    else
    {
      if (EnumCaseMultiPayload == 2)
      {
        sub_2207ABEFC(v251, v96, type metadata accessor for StockFeedModel);
        v157 = v250;
        v158 = swift_getEnumCaseMultiPayload();
        v159 = v243;
        if (v158 != 2)
        {
          (*(v242 + 8))(v96, v243);
          goto LABEL_49;
        }

        v160 = v242;
        v161 = *(v242 + 32);
        v161(v123, v96, v243);
        v161(v124, v157, v159);
        v162 = MEMORY[0x223D7E940](v123, v124);
        v163 = *(v160 + 8);
        v163(v124, v159);
        v163(v123, v159);
        v164 = type metadata accessor for StockFeedModel;
        goto LABEL_50;
      }

      if (EnumCaseMultiPayload == 3)
      {
        v129 = v122;
        sub_2207ABEFC(v251, v122, type metadata accessor for StockFeedModel);
        sub_2204597F0(0);
        v131 = *(v130 + 48);
        v132 = *(v130 + 64);
        v133 = v250;
        if (swift_getEnumCaseMultiPayload() != 3)
        {
          sub_2207ABE9C(v129 + v132, sub_220455030);
          sub_2207ABE9C(v129 + v131, sub_22045987C);
          (*(v242 + 8))(v129, v243);
          goto LABEL_49;
        }

        v134 = v242;
        v135 = v243;
        v136 = *(v242 + 32);
        v137 = v229;
        v136(v229, v129, v243);
        v136(v241, v133, v135);
        v138 = v230;
        sub_2207AD938(v129 + v131, v230, sub_22045987C);
        v139 = v228;
        sub_2207AD938(v129 + v132, v228, sub_220455030);
        v140 = v133 + v131;
        v141 = v231;
        sub_2207AD938(v140, v231, sub_22045987C);
        v142 = v133 + v132;
        v143 = v137;
        v144 = v241;
        v145 = v221;
        sub_2207AD938(v142, v221, sub_220455030);
        if ((MEMORY[0x223D7E940](v143, v144) & 1) == 0)
        {
          goto LABEL_59;
        }

        v146 = *(v217 + 48);
        v147 = v138;
        v148 = v218;
        sub_2207ABEFC(v147, v218, sub_22045987C);
        sub_2207ABEFC(v141, v148 + v146, sub_22045987C);
        v149 = *(v220 + 48);
        v150 = v219;
        if (v149(v148, 1, v219) == 1)
        {
          v151 = v149(v148 + v146, 1, v150);
          v141 = v231;
          if (v151 == 1)
          {
            sub_2207ABE9C(v148, sub_22045987C);
            v138 = v230;
LABEL_62:
            v193 = *(v212 + 48);
            v194 = v213;
            sub_2207ABEFC(v139, v213, sub_220455030);
            sub_2207ABEFC(v145, v194 + v193, sub_220455030);
            v195 = v214;
            v196 = *(v214 + 48);
            v197 = v215;
            if (v196(v194, 1, v215) == 1)
            {
              sub_2207ABE9C(v145, sub_220455030);
              sub_2207ABE9C(v231, sub_22045987C);
              sub_2207ABE9C(v139, sub_220455030);
              sub_2207ABE9C(v138, sub_22045987C);
              v198 = *(v242 + 8);
              v199 = v243;
              v198(v241, v243);
              v198(v229, v199);
              if (v196(v194 + v193, 1, v197) == 1)
              {
                sub_2207ABE9C(v194, sub_220455030);
                v162 = 1;
                v164 = type metadata accessor for StockFeedModel;
                goto LABEL_50;
              }

              goto LABEL_67;
            }

            v200 = v210;
            sub_2207ABEFC(v194, v210, sub_220455030);
            if (v196(v194 + v193, 1, v197) == 1)
            {
              v201 = v195;
              sub_2207ABE9C(v145, sub_220455030);
              sub_2207ABE9C(v231, sub_22045987C);
              sub_2207ABE9C(v228, sub_220455030);
              sub_2207ABE9C(v230, sub_22045987C);
              v202 = *(v242 + 8);
              v203 = v243;
              v202(v241, v243);
              v202(v229, v203);
              (*(v201 + 8))(v200, v197);
LABEL_67:
              sub_2207ABE9C(v194, sub_2207AD898);
              goto LABEL_60;
            }

            v204 = v145;
            v205 = v209;
            (*(v195 + 32))(v209, v194 + v193, v197);
            sub_220458840(&qword_281299378, MEMORY[0x277D69178], MEMORY[0x277D69180]);
            v162 = sub_2208912FC();
            v206 = *(v195 + 8);
            v206(v205, v197);
            v176 = sub_220455030;
            sub_2207ABE9C(v204, sub_220455030);
            sub_2207ABE9C(v231, sub_22045987C);
            sub_2207ABE9C(v228, sub_220455030);
            sub_2207ABE9C(v230, sub_22045987C);
            v207 = *(v242 + 8);
            v208 = v243;
            v207(v241, v243);
            v207(v229, v208);
            v206(v200, v197);
            v185 = v194;
LABEL_53:
            sub_2207ABE9C(v185, v176);
            v164 = type metadata accessor for StockFeedModel;
            goto LABEL_50;
          }
        }

        else
        {
          v186 = v216;
          sub_2207ABEFC(v148, v216, sub_22045987C);
          if (v149(v148 + v146, 1, v150) != 1)
          {
            v189 = v220;
            v190 = v186;
            v191 = v211;
            (*(v220 + 32))(v211, v148 + v146, v150);
            sub_220458840(&qword_2812990C8, MEMORY[0x277D697F8], MEMORY[0x277D69800]);
            LODWORD(v250) = sub_2208912FC();
            v192 = *(v189 + 8);
            v192(v191, v150);
            v192(v190, v150);
            sub_2207ABE9C(v148, sub_22045987C);
            v141 = v231;
            v138 = v230;
            v134 = v242;
            if (v250)
            {
              goto LABEL_62;
            }

LABEL_59:
            sub_2207ABE9C(v145, sub_220455030);
            sub_2207ABE9C(v141, sub_22045987C);
            sub_2207ABE9C(v139, sub_220455030);
            sub_2207ABE9C(v138, sub_22045987C);
            v187 = *(v134 + 8);
            v188 = v243;
            v187(v144, v243);
            v187(v143, v188);
LABEL_60:
            v162 = 0;
            v164 = type metadata accessor for StockFeedModel;
            goto LABEL_50;
          }

          (*(v220 + 8))(v186, v150);
          v141 = v231;
        }

        sub_2207ABE9C(v148, sub_220522FA4);
        v138 = v230;
        v134 = v242;
        goto LABEL_59;
      }

      v173 = v121;
      sub_2207ABEFC(v251, v121, type metadata accessor for StockFeedModel);
      v174 = v250;
      if (swift_getEnumCaseMultiPayload() == 4)
      {
        sub_2207AD938(v173, v127, type metadata accessor for StockEarningsModel);
        sub_2207AD938(v174, v128, type metadata accessor for StockEarningsModel);
        v162 = sub_22083A8D0(v127, v128);
        v175 = type metadata accessor for StockEarningsModel;
        v176 = type metadata accessor for StockEarningsModel;
        v177 = v128;
LABEL_52:
        sub_2207ABE9C(v177, v175);
        v185 = v127;
        goto LABEL_53;
      }

      v155 = type metadata accessor for StockEarningsModel;
      v156 = v173;
    }

    sub_2207ABE9C(v156, v155);
    goto LABEL_49;
  }

  if (EnumCaseMultiPayload > 7)
  {
    v152 = v250;
    if (EnumCaseMultiPayload == 8)
    {
      v169 = v240;
      sub_2207ABEFC(v251, v240, type metadata accessor for StockFeedModel);
      sub_220459914(0);

      if (swift_getEnumCaseMultiPayload() == 8)
      {

        v115 = v234;
        v170 = *(v234 + 32);
        v117 = v224;
        v171 = v169;
        v114 = v235;
        v170(v224, v171, v235);
        v118 = v225;
        v170(v225, v152, v114);
        v120 = MEMORY[0x223D88470](v117, v118);
        goto LABEL_30;
      }

      (*(v234 + 8))(v169, v235);
    }

    else
    {
      if (EnumCaseMultiPayload == 9)
      {
        v113 = v239;
        sub_2207ABEFC(v251, v239, type metadata accessor for StockFeedModel);
        if (swift_getEnumCaseMultiPayload() == 9)
        {
          v115 = v236;
          v114 = v237;
          v153 = *(v236 + 32);
          v117 = v226;
          v153(v226, v113, v237);
          v118 = v227;
          v153(v227, v152, v114);
          v120 = sub_22089009C();
          goto LABEL_30;
        }

        v182 = v236;
        v181 = v237;
        goto LABEL_48;
      }

      v180 = swift_getEnumCaseMultiPayload();
      v164 = type metadata accessor for StockFeedModel;
      if (v180 == 10)
      {
        v162 = 1;
        goto LABEL_50;
      }
    }

LABEL_49:
    v162 = 0;
    v164 = sub_2207AD8B8;
    goto LABEL_50;
  }

  v112 = v250;
  if (EnumCaseMultiPayload != 5)
  {
    if (EnumCaseMultiPayload == 6)
    {
      v113 = v238;
      sub_2207ABEFC(v251, v238, type metadata accessor for StockFeedModel);
      if (swift_getEnumCaseMultiPayload() == 6)
      {
        v115 = v232;
        v114 = v233;
        v116 = *(v232 + 32);
        v117 = v222;
        v116(v222, v113, v233);
        v118 = v223;
        v116(v223, v112, v114);
        sub_22088698C();
        v119 = MEMORY[0x277D69858];
        sub_220458840(&unk_281299030, MEMORY[0x277D69858], MEMORY[0x277D69860]);
        sub_220458840(&unk_281299040, v119, MEMORY[0x277D69848]);
        v120 = sub_22088FF5C();
LABEL_30:
        v162 = v120;
        v172 = *(v115 + 8);
        v172(v118, v114);
        v172(v117, v114);
        v164 = type metadata accessor for StockFeedModel;
        goto LABEL_50;
      }

      v182 = v232;
      v181 = v233;
LABEL_48:
      (*(v182 + 8))(v113, v181);
      goto LABEL_49;
    }

    if (swift_getEnumCaseMultiPayload() == 7)
    {
      sub_2207ABE9C(v112, type metadata accessor for StockFeedModel);
      v164 = type metadata accessor for StockFeedModel;
      v162 = 1;
      goto LABEL_50;
    }

    goto LABEL_49;
  }

  sub_2207ABEFC(v251, v85, type metadata accessor for StockFeedModel);
  v166 = *v85;
  v165 = v85[1];
  if (swift_getEnumCaseMultiPayload() != 5)
  {

    goto LABEL_49;
  }

  v167 = *v112;
  v168 = v112[1];
  if (v166 == v167 && v165 == v168)
  {
    v162 = 1;
  }

  else
  {
    v162 = sub_2208928BC();
  }

  v164 = type metadata accessor for StockFeedModel;
LABEL_50:
  sub_2207ABE9C(v251, v164);
  return v162 & 1;
}

uint64_t sub_2207AD7FC(uint64_t result, uint64_t a2, unint64_t a3)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    sub_2208914CC();

    return sub_22089159C();
  }

  return result;
}

void sub_2207AD8D8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t sub_2207AD938(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2207AD9A0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  sub_2205715CC(0);
  MEMORY[0x28223BE20](v4, v5);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for StocksAudioTrack(0);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2207ADB88(v2, v7);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    sub_2205D153C(0, v13);
    goto LABEL_5;
  }

  if (EnumCaseMultiPayload == 1)
  {
    sub_2205D1464(0);
LABEL_5:
    v15 = *&v7[*(v14 + 48)];
    v16 = *(v14 + 64);
    sub_2205717B0(v7, v11);
    v17 = sub_22088774C();
    (*(*(v17 - 8) + 8))(&v7[v16], v17);
    sub_2205714D0(0);
    v19 = v18;
    v20 = *(v18 + 48);
    sub_2205717B0(v11, a1);
    *(a1 + v20) = v15;
    return (*(*(v19 - 8) + 56))(a1, 0, 1, v19);
  }

  sub_2205714D0(0);
  return (*(*(v22 - 8) + 56))(a1, 1, 1, v22);
}

uint64_t sub_2207ADB88(uint64_t a1, uint64_t a2)
{
  sub_2205715CC(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void *sub_2207ADBEC()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  __swift_destroy_boxed_opaque_existential_1(v0 + 12);
  __swift_destroy_boxed_opaque_existential_1(v0 + 17);
  __swift_destroy_boxed_opaque_existential_1(v0 + 22);
  __swift_destroy_boxed_opaque_existential_1(v0 + 27);

  __swift_destroy_boxed_opaque_existential_1(v0 + 35);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + 41);
  return v0;
}

uint64_t sub_2207ADC5C()
{
  sub_2207ADBEC();

  return swift_deallocClassInstance();
}

uint64_t sub_2207ADDB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[28] = a4;
  v5[29] = v4;
  v5[26] = a2;
  v5[27] = a3;
  v5[25] = a1;
  v6 = MEMORY[0x277D83D88];
  sub_2204F0A94(0, &qword_2812979E8, sub_22050605C, MEMORY[0x277D83D88]);
  v5[30] = swift_task_alloc();
  sub_22050605C(0);
  v5[31] = v7;
  v5[32] = *(v7 - 8);
  v5[33] = swift_task_alloc();
  v5[34] = swift_task_alloc();
  sub_2204FA2D0(0);
  v5[35] = v8;
  v5[36] = *(v8 - 8);
  v5[37] = swift_task_alloc();
  sub_22050632C(0, &qword_28127E950, sub_2204FA2D0, MEMORY[0x277D83B88], "offset element ");
  v5[38] = v9;
  v5[39] = swift_task_alloc();
  sub_2204F1480(0);
  v5[40] = v10;
  v5[41] = *(v10 - 8);
  v5[42] = swift_task_alloc();
  v11 = MEMORY[0x277D6EC68];
  sub_2204F1130(0, &qword_28127E350, &qword_281296EC0, MEMORY[0x277D6EC68], MEMORY[0x277D843E0]);
  v5[43] = v12;
  v5[44] = swift_task_alloc();
  sub_2204F1130(0, &qword_28127E340, &qword_281296EC0, v11, MEMORY[0x277D843E8]);
  v5[45] = swift_task_alloc();
  v5[46] = swift_task_alloc();
  v13 = sub_22088C96C();
  v5[47] = v13;
  v5[48] = *(v13 - 8);
  v5[49] = swift_task_alloc();
  v14 = sub_22088C32C();
  v5[50] = v14;
  v5[51] = *(v14 - 8);
  v5[52] = swift_task_alloc();
  v15 = sub_22088DA1C();
  v5[53] = v15;
  v5[54] = *(v15 - 8);
  v5[55] = swift_task_alloc();
  v16 = sub_22088FCAC();
  v5[56] = v16;
  v5[57] = *(v16 - 8);
  v5[58] = swift_task_alloc();
  v17 = sub_220886D4C();
  v5[59] = v17;
  v5[60] = *(v17 - 8);
  v5[61] = swift_task_alloc();
  v18 = sub_220886D3C();
  v5[62] = v18;
  v5[63] = *(v18 - 8);
  v5[64] = swift_task_alloc();
  v19 = sub_220886D1C();
  v5[65] = v19;
  v5[66] = *(v19 - 8);
  v5[67] = swift_task_alloc();
  sub_2204F0A94(0, &qword_281296950, MEMORY[0x277D32FE0], v6);
  v5[68] = swift_task_alloc();
  v20 = sub_22088FF3C();
  v5[69] = v20;
  v5[70] = *(v20 - 8);
  v5[71] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2204EFC84, 0, 0);
}

uint64_t sub_2207AE3F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v42 = a3;
  v43 = a2;
  v38 = a1;
  v3 = sub_22088FC9C();
  MEMORY[0x28223BE20](v3 - 8, v4);
  v41 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22088FBBC();
  v39 = *(v6 - 8);
  v40 = v6;
  MEMORY[0x28223BE20](v6, v7);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22088FBDC();
  MEMORY[0x28223BE20](v10 - 8, v11);
  v12 = sub_22088FC0C();
  MEMORY[0x28223BE20](v12 - 8, v13);
  v14 = sub_22088FC3C();
  MEMORY[0x28223BE20](v14 - 8, v15);
  v16 = sub_22088FC5C();
  MEMORY[0x28223BE20](v16 - 8, v17);
  v18 = MEMORY[0x277D83D88];
  sub_2204F0A94(0, &qword_281296A28, MEMORY[0x277D326A8], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v19 - 8, v20);
  v22 = &v38 - v21;
  sub_2204F0A94(0, &unk_281296A30, MEMORY[0x277D32698], v18);
  MEMORY[0x28223BE20](v23 - 8, v24);
  v26 = &v38 - v25;
  v27 = sub_22088FC7C();
  v28 = *(v27 - 8);
  v30 = MEMORY[0x28223BE20](v27, v29);
  v32 = &v38 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v38 + 272))
  {
    sub_22088FC4C();
    v33 = sub_22088FC1C();
    (*(*(v33 - 8) + 56))(v26, 1, 1, v33);
    v34 = sub_22088FC6C();
    (*(*(v34 - 8) + 56))(v22, 1, 1, v34);
    (*(v28 + 104))(v32, *MEMORY[0x277D326B0], v27);
  }

  else
  {
    (*(v28 + 104))(v32, *MEMORY[0x277D326B0], v27, v30);
    v35 = sub_22088FC1C();
    (*(*(v35 - 8) + 56))(v26, 1, 1, v35);
    v36 = sub_22088FC6C();
    (*(*(v36 - 8) + 56))(v22, 1, 1, v36);
    sub_22088FC4C();
  }

  sub_22088FBFC();
  sub_22088FBFC();
  (*(v39 + 104))(v9, *MEMORY[0x277D32680], v40);
  sub_22088FBCC();
  sub_22088FC8C();

  return sub_22088FBEC();
}

uint64_t sub_2207AE96C(uint64_t a1, uint64_t a2)
{
  sub_2204FA2D0(0);
  sub_2204FA480();
  memset(v3, 0, sizeof(v3));
  v4 = 0;
  sub_22088F5BC();
  return sub_220504D6C(v3);
}

uint64_t sub_2207AE9F8()
{
  v31 = type metadata accessor for ForYouFeedLayoutModel(0);
  MEMORY[0x28223BE20](v31, v0);
  v30 = v22 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_22088FD8C();
  v2 = *(v29 - 8);
  MEMORY[0x28223BE20](v29, v3);
  v27 = v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2204F63C4(0);
  v28 = v5;
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22088F55C();
  v11 = *(v10 + 16);
  if (v11)
  {
    v32 = MEMORY[0x277D84F90];
    sub_220505460(0, v11, 0);
    v12 = v32;
    v13 = *(v2 + 16);
    v25 = v2 + 16;
    v26 = v13;
    v14 = v10 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v15 = *(v2 + 72);
    v23 = (v2 + 8);
    v24 = v15;
    v22[0] = v10;
    v22[1] = v6 + 32;
    do
    {
      v16 = v26;
      v17 = v27;
      v18 = v29;
      v26(v27, v14, v29);
      v16(v30, v17, v18);
      swift_storeEnumTagMultiPayload();
      sub_22044E364(qword_28128DE08, type metadata accessor for ForYouFeedLayoutModel, &unk_2208BC2A8);
      sub_22088BC2C();
      (*v23)(v17, v18);
      v32 = v12;
      v20 = *(v12 + 16);
      v19 = *(v12 + 24);
      if (v20 >= v19 >> 1)
      {
        sub_220505460((v19 > 1), v20 + 1, 1);
        v12 = v32;
      }

      *(v12 + 16) = v20 + 1;
      (*(v6 + 32))(v12 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v20, v9, v28);
      v14 += v24;
      --v11;
    }

    while (v11);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return v12;
}

uint64_t sub_2207AED38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v29 = a2;
  v30 = a3;
  v28 = sub_22088F58C();
  v5 = *(v28 - 8);
  MEMORY[0x28223BE20](v28, v6);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x277D31C50];
  sub_2204F0A94(0, &qword_281296C60, MEMORY[0x277D31C50], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v10 - 8, v11);
  v13 = &v27 - v12;
  v14 = sub_22088F39C();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14, v16);
  v18 = &v27 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19, v20);
  v22 = &v27 - v21;
  sub_2204FA000(a1, v13, &qword_281296C60, v9);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_2204C5F44(v13, &qword_281296C60, MEMORY[0x277D31C50]);
    v23 = 1;
    v24 = v30;
  }

  else
  {
    (*(v15 + 32))(v22, v13, v14);
    (*(v15 + 16))(v18, v22, v14);
    (*(v5 + 16))(v8, v29, v28);
    v24 = v30;
    sub_2207AF040(v18, v8, v30);
    (*(v15 + 8))(v22, v14);
    v23 = 0;
  }

  sub_220488B20(0);
  return (*(*(v25 - 8) + 56))(v24, v23, 1, v25);
}

uint64_t sub_2207AF040@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for ForYouFeedLayoutSectionDescriptor.Header(0);
  v81 = *(v6 - 8);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9 = &v69 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for ForYouFeedLayoutSectionDescriptor.Footer(0);
  v72 = *(v10 - 8);
  MEMORY[0x28223BE20](v10 - 8, v11);
  v13 = &v69 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for ForYouFeedLayoutSectionDescriptor.Decoration(0);
  v86 = *(v14 - 8);
  MEMORY[0x28223BE20](v14 - 8, v15);
  v17 = &v69 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_22088D61C();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18, v20);
  v22 = &v69 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_22088F39C();
  v78 = *(v23 - 8);
  v79 = v23;
  v24 = *(v78 + 16);
  v80 = a1;
  v24(a3, a1);
  v25 = *MEMORY[0x277D6E758];
  v74 = *(v19 + 104);
  v75 = v19 + 104;
  v74(v22, v25, v18);
  v26 = sub_22088F57C();
  v27 = *(v19 + 8);
  v76 = v22;
  v77 = v19 + 8;
  v73 = v27;
  v27(v22, v18);
  v28 = *(v26 + 16);
  v29 = MEMORY[0x277D84F90];
  v83 = a2;
  v84 = a3;
  v82 = v17;
  if (v28)
  {
    v70 = v18;
    v71 = v13;
    v87 = MEMORY[0x277D84F90];
    sub_22070CCAC(0, v28, 0);
    v30 = v87;
    v85 = sub_22088FE7C();
    v31 = *(v85 - 8);
    v32 = *(v31 + 16);
    v33 = (*(v31 + 80) + 32) & ~*(v31 + 80);
    v69 = v26;
    v34 = v26 + v33;
    v35 = *(v31 + 72);
    v36 = v81;
    do
    {
      v32(v9, v34, v85);
      v87 = v30;
      v37 = v9;
      v39 = *(v30 + 16);
      v38 = *(v30 + 24);
      if (v39 >= v38 >> 1)
      {
        sub_22070CCAC((v38 > 1), v39 + 1, 1);
        v36 = v81;
        v30 = v87;
      }

      *(v30 + 16) = v39 + 1;
      sub_2205230D8(v37, v30 + ((*(v36 + 80) + 32) & ~*(v36 + 80)) + *(v36 + 72) * v39, type metadata accessor for ForYouFeedLayoutSectionDescriptor.Header);
      v34 += v35;
      --v28;
      v9 = v37;
    }

    while (v28);

    a2 = v83;
    a3 = v84;
    v17 = v82;
    v18 = v70;
    v13 = v71;
    v29 = MEMORY[0x277D84F90];
  }

  else
  {

    v30 = MEMORY[0x277D84F90];
  }

  sub_220488B20(0);
  v41 = v40;
  *(a3 + *(v40 + 28)) = v30;
  v42 = v76;
  v74(v76, *MEMORY[0x277D6E750], v18);
  v43 = sub_22088F57C();
  v73(v42, v18);
  v44 = *(v43 + 16);
  v81 = v41;
  if (v44)
  {
    v87 = v29;
    sub_22070CC5C(0, v44, 0);
    v45 = v87;
    v85 = sub_22088FE7C();
    v46 = *(v85 - 8);
    v47 = *(v46 + 16);
    v48 = (*(v46 + 80) + 32) & ~*(v46 + 80);
    v77 = v43;
    v49 = v43 + v48;
    v50 = *(v46 + 72);
    v51 = v72;
    do
    {
      v47(v13, v49, v85);
      v87 = v45;
      v52 = v13;
      v54 = *(v45 + 16);
      v53 = *(v45 + 24);
      if (v54 >= v53 >> 1)
      {
        sub_22070CC5C((v53 > 1), v54 + 1, 1);
        v51 = v72;
        v45 = v87;
      }

      *(v45 + 16) = v54 + 1;
      sub_2205230D8(v52, v45 + ((*(v51 + 80) + 32) & ~*(v51 + 80)) + *(v51 + 72) * v54, type metadata accessor for ForYouFeedLayoutSectionDescriptor.Footer);
      v49 += v50;
      --v44;
      v13 = v52;
    }

    while (v44);

    a2 = v83;
    a3 = v84;
    v41 = v81;
    v17 = v82;
    v29 = MEMORY[0x277D84F90];
  }

  else
  {

    v45 = MEMORY[0x277D84F90];
  }

  *(a3 + *(v41 + 32)) = v45;
  v55 = sub_22088F56C();
  v56 = *(v55 + 16);
  if (v56)
  {
    v87 = v29;
    sub_22070CC0C(0, v56, 0);
    v57 = v87;
    v58 = sub_22088F7AC();
    v59 = *(v58 - 8);
    v60 = *(v59 + 16);
    v61 = (*(v59 + 80) + 32) & ~*(v59 + 80);
    v85 = v55;
    v62 = v55 + v61;
    v63 = *(v59 + 72);
    do
    {
      v60(v17, v62, v58);
      v87 = v57;
      v65 = *(v57 + 16);
      v64 = *(v57 + 24);
      if (v65 >= v64 >> 1)
      {
        sub_22070CC0C((v64 > 1), v65 + 1, 1);
        v57 = v87;
      }

      *(v57 + 16) = v65 + 1;
      sub_2205230D8(v17, v57 + ((*(v86 + 80) + 32) & ~*(v86 + 80)) + *(v86 + 72) * v65, type metadata accessor for ForYouFeedLayoutSectionDescriptor.Decoration);
      v62 += v63;
      --v56;
    }

    while (v56);

    v66 = sub_22088F58C();
    (*(*(v66 - 8) + 8))(v83, v66);
    result = (*(v78 + 8))(v80, v79);
    a3 = v84;
    v41 = v81;
  }

  else
  {

    v68 = sub_22088F58C();
    (*(*(v68 - 8) + 8))(a2, v68);
    result = (*(v78 + 8))(v80, v79);
    v57 = MEMORY[0x277D84F90];
  }

  *(a3 + *(v41 + 36)) = v57;
  return result;
}

uint64_t sub_2207AF7CC@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  v36[1] = a2;
  v3 = type metadata accessor for ForYouFeedLayoutModel(0);
  MEMORY[0x28223BE20](v3, v4);
  v6 = v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22088C32C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ForYouFeedModel(0);
  MEMORY[0x28223BE20](v12, v13);
  v15 = (v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_22051D97C(0);
  sub_22088AD8C();
  if (swift_getEnumCaseMultiPayload() == 4)
  {
    v16 = *v15;
    v17 = v15[1];
    (*(v8 + 16))(v11, a1, v7);
    sub_22088C31C();
    v19 = v18;
    sub_22088C31C();
    sub_22088C20C();
    v21 = v20;
    v23 = v22;
    (*(v8 + 8))(v11, v7);
    sub_220561394();
    v24 = sub_220891F2C();
    v25 = [objc_allocWithZone(MEMORY[0x277D74248]) init];
    sub_22089148C();
    v27 = v26;
    v29 = v28;

    v30 = v21 + (v19 - v21 - v23) * 0.5 - v27 * 0.5;
    v37.origin.x = v30;
    v37.origin.y = 100.0;
    v37.size.width = v27;
    v37.size.height = v29;
    v38.size.height = CGRectGetMaxY(v37);
    v38.origin.x = 0.0;
    v38.origin.y = 0.0;
    v38.size.width = v19;
    v39 = CGRectIntegral(v38);
    x = v39.origin.x;
    y = v39.origin.y;
    width = v39.size.width;
    height = v39.size.height;
    v39.origin.x = v30;
    v39.origin.y = 100.0;
    v39.size.width = v27;
    v39.size.height = v29;
    v40 = CGRectIntegral(v39);
    *v6 = v16;
    *(v6 + 1) = v17;
    *(v6 + 2) = x;
    *(v6 + 3) = y;
    *(v6 + 4) = width;
    *(v6 + 5) = height;
    *(v6 + 48) = v40;
    swift_storeEnumTagMultiPayload();
    sub_22044E364(qword_28128DE08, type metadata accessor for ForYouFeedLayoutModel, &unk_2208BC2A8);
    return sub_22088BC2C();
  }

  else
  {
    result = sub_22089267C();
    __break(1u);
  }

  return result;
}

uint64_t sub_2207AFB90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_2204C6018;

  return sub_2207ADDB0(a1, a2, a3, a4);
}

uint64_t sub_2207AFC54(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  sub_2204F1130(0, a2, &qword_281296EC0, MEMORY[0x277D6EC68], a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_2207AFD4C(uint64_t a1)
{
  if (!qword_281283710)
  {
    sub_2204F0A94(255, &qword_281283718, sub_220488B20, MEMORY[0x277D83D88]);
    type metadata accessor for ForYouFeedLayoutSectionDescriptor.LegacyHeader(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_281283710);
    }
  }
}

uint64_t sub_2207AFE18@<X0>(BOOL *a1@<X8>)
{
  __swift_project_boxed_opaque_existential_1((*v1 + 24), *(*v1 + 48));
  result = sub_22088615C();
  *a1 = (result & 1) == 0;
  return result;
}

uint64_t sub_2207AFE70()
{
  sub_22061D1D0(0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1 - 8, v4);
  v5 = &v27[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6, v7);
  v9 = &v27[-v8];
  v10 = type metadata accessor for StocksActivity(0);
  MEMORY[0x28223BE20](v10, v10);
  v12 = &v27[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = *(v0 + 16);
  swift_storeEnumTagMultiPayload();
  v14 = sub_22088969C();
  (*(*(v14 - 8) + 56))(v9, 1, 1, v14);
  v36 = 0;
  memset(v35, 0, sizeof(v35));
  v34 = 0;
  memset(v33, 0, sizeof(v33));
  v32 = v13;
  sub_2205A0924(v33, &v28, &unk_281298970, &unk_281298980, MEMORY[0x277D6CB00]);
  if (*(&v29 + 1))
  {
    sub_220457328(&v28, v30);
    v15 = sub_220597454(v30);
    v17 = v16;
    v19 = v18;
    __swift_destroy_boxed_opaque_existential_1(v30);
  }

  else
  {
    sub_2205A0B34(&v28, &unk_281298970, &unk_281298980, MEMORY[0x277D6CB00], sub_220448010);
    if (qword_2812908F0 != -1)
    {
      swift_once();
    }

    v15 = qword_2812908F8;
    v17 = qword_281290900;
    v19 = qword_281290908;

    sub_2204A80F4(v17, v19);
  }

  v29 = 0u;
  v28 = 0u;
  sub_2205A08A4(v9, v5);
  sub_2205A0924(v35, v30, &unk_281296D10, &qword_281296D20, MEMORY[0x277D2D578]);
  v20 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v21 = (v3 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
  v22 = swift_allocObject();
  *(v22 + 16) = 0;
  sub_2205A0994(v5, v22 + v20);
  v23 = v22 + v21;
  v24 = v30[1];
  *v23 = v30[0];
  *(v23 + 16) = v24;
  *(v23 + 32) = v31;
  v25 = (v22 + ((v21 + 47) & 0xFFFFFFFFFFFFFFF8));
  *v25 = v15;
  v25[1] = v17;
  v25[2] = v19;

  sub_2204A80F4(v17, v19);
  sub_2204549FC(0);
  sub_2204489A0(&unk_281297EC0, sub_2204549FC, MEMORY[0x277D6D5F8]);
  sub_22088E92C();

  sub_2204DA45C(v17, v19);
  sub_2205A0B34(v33, &unk_281298970, &unk_281298980, MEMORY[0x277D6CB00], sub_220448010);
  sub_2205A0B34(v35, &unk_281296D10, &qword_281296D20, MEMORY[0x277D2D578], sub_220448010);
  sub_220650F50(v9, sub_22061D1D0);
  sub_220650F50(v12, type metadata accessor for StocksActivity);
  return sub_2205A0B34(&v28, &qword_28127DE00, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_2205A0AE4);
}

double sub_2207B04C0(void *a1, uint64_t a2, uint64_t a3, void *a4, SEL *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_22044D56C(0, &qword_27CF57228, 0x277D75C68);
  sub_2205A6E58();
  v14 = sub_2208918EC();
  v15 = a4;
  v16 = a1;
  sub_2207B0590(v14, a4, a5, a6, a7, a8);

  return result;
}

uint64_t sub_2207B0590(uint64_t a1, uint64_t a2, SEL *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v26 = a5;
  v27 = a6;
  v25[1] = a4;
  v8 = v6;
  ObjectType = swift_getObjectType();
  v11 = sub_22088F11C();
  v29 = *(v11 - 8);
  MEMORY[0x28223BE20](v11, v12);
  v14 = v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_22088F14C();
  v15 = *(v28 - 8);
  MEMORY[0x28223BE20](v28, v16);
  v18 = v25 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22044D56C(0, &qword_27CF57228, 0x277D75C68);
  sub_2205A6E58();
  v19 = sub_2208918DC();
  v31.receiver = v8;
  v31.super_class = ObjectType;
  objc_msgSendSuper2(&v31, *a3, v19, a2);

  sub_22044D56C(0, &qword_28127E7C0, 0x277D85C78);
  v20 = sub_220891D0C();
  v21 = swift_allocObject();
  *(v21 + 16) = v8;
  aBlock[4] = v26;
  aBlock[5] = v21;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2204C35E8;
  aBlock[3] = v27;
  v22 = _Block_copy(aBlock);
  v23 = v8;

  sub_22088F13C();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_22047F924(&qword_281296CA0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  sub_22056D204(0);
  sub_22047F924(&qword_28127EA50, sub_22056D204, MEMORY[0x277D83970]);
  sub_2208923FC();
  MEMORY[0x223D89EC0](0, v18, v14, v22);
  _Block_release(v22);

  (*(v29 + 8))(v14, v11);
  return (*(v15 + 8))(v18, v28);
}

void sub_2207B08D8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  [a1 setAlpha_];
  v7 = objc_opt_self();
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  v11[4] = a3;
  v11[5] = v8;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 1107296256;
  v11[2] = sub_2204C35E8;
  v11[3] = a4;
  v9 = _Block_copy(v11);
  v10 = a1;

  [v7 animateWithDuration:v9 animations:0.25];
  _Block_release(v9);
}

void sub_2207B0C28(uint64_t a1, uint64_t a2, double *a3, char *a4)
{
  v5 = v4;
  v10 = *&a4[OBJC_IVAR____TtC8StocksUI17SectionHeaderView_backgroundView];
  [v10 setFrame_];
  v11 = *&a4[OBJC_IVAR____TtC8StocksUI17SectionHeaderView_titleLabel];
  [v11 setFrame_];
  swift_beginAccess();
  sub_22046DA2C(v4 + 16, v19);
  __swift_project_boxed_opaque_existential_1(v19, v19[3]);
  v12 = [a4 traitCollection];
  v13 = sub_22064ACF8(a1, a2, v12);

  [v11 setAttributedText_];
  __swift_destroy_boxed_opaque_existential_1(v19);
  v14 = [objc_opt_self() clearColor];
  [a4 setBackgroundColor_];

  v15 = __swift_project_boxed_opaque_existential_1((v5 + 16), *(v5 + 40));
  v16 = *(*v15 + 80);
  v17 = *(*v15 + 88);
  __swift_project_boxed_opaque_existential_1((*v15 + 56), v16);
  v18 = (*(v17 + 16))(v16, v17);
  [v10 setBackgroundColor_];
}

uint64_t type metadata accessor for StockListWatchlistPickerUpdateBlueprintModifier(uint64_t a1)
{
  result = qword_27CF59C68;
  if (!qword_27CF59C68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2207B0E5C(uint64_t a1)
{
  sub_220886A4C();
  if (v1 <= 0x3F)
  {
    sub_2207B1B04(319, &qword_28127EB28, MEMORY[0x277D698E0], MEMORY[0x277D83940]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void *sub_2207B0F20(uint64_t a1, void (*a2)(char *), uint64_t a3)
{
  v62 = a3;
  sub_22046B2A0(0);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v65 = v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22046B19C(0);
  v10 = v9;
  v11 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v12);
  v14 = v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15, v16);
  v74 = v53 - v17;
  v61 = sub_22088B64C();
  v60 = *(v61 - 8);
  MEMORY[0x28223BE20](v61, v18);
  v59 = v53 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2207B1A44(0, &qword_281297848, MEMORY[0x277D6DF88]);
  v58 = v20;
  v57 = *(v20 - 8);
  MEMORY[0x28223BE20](v20, v21);
  v56 = v53 - v22;
  sub_22047572C(0);
  MEMORY[0x28223BE20](v23 - 8, v24);
  v53[1] = v53 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2204A1D20(0);
  v72 = v26;
  v55 = *(v26 - 8);
  MEMORY[0x28223BE20](v26, v27);
  v54 = v53 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  updated = type metadata accessor for StockListWatchlistPickerUpdateBlueprintModifier(0);
  v68 = sub_2208869DC();
  v70 = v30;
  v67 = sub_2208869BC();
  v69 = v31;
  v32 = *(v3 + *(updated + 24));

  if ((sub_22088F0DC() & 1) != 0 && *(v32 + 16) <= 1uLL)
  {
    v33 = a2;

    v68 = 0;
    v70 = 0;
    v67 = 0;
    v69 = 0;
    v32 = 0;
  }

  else
  {
    v33 = a2;
  }

  sub_2207B19FC(&qword_281296EE8, sub_2204A1D20, MEMORY[0x277D6EC70]);
  v34 = sub_22089197C();
  v63 = v33;
  if (v34)
  {
    v35 = v34;
    v66 = v32;
    v87 = MEMORY[0x277D84F90];
    sub_22070C45C(0, v34 & ~(v34 >> 63), 0);
    v36 = v87;
    result = sub_22089193C();
    if ((v35 & 0x8000000000000000) == 0)
    {
      v73 = (v11 + 32);
      v64 = (v11 + 8);
      v71 = a1;
      while (1)
      {
        v38 = sub_2208919BC();
        (*(v11 + 16))(v14);
        v38(&v81, 0);
        sub_22088B2AC();
        if (v86)
        {
          if (v86 != 1)
          {
            (*v73)(v74, v14, v10, v84, v85);
            goto LABEL_14;
          }

          sub_2204BE754(v81, v82, v83, v84, v85, 1u);
          v39 = v68;
          v40 = v69;
          v41 = v70;
          v75 = v68;
          v76 = v70;
          v42 = v67;
          v77 = v67;
          v78 = v69;
          v43 = v66;
          v79 = v66;
          v80 = 1;
        }

        else
        {
          sub_2204BE754(v81, v82, v83, v84, v85, 0);
          v39 = v68;
          v40 = v69;
          v41 = v70;
          v75 = v68;
          v76 = v70;
          v42 = v67;
          v77 = v67;
          v78 = v69;
          v43 = v66;
          v79 = v66;
          v80 = 0;
        }

        sub_2204CF2E4(v39, v41, v42, v40, v43);
        sub_22088B2FC();
        type metadata accessor for StockListModel(0);
        sub_22045B950();
        sub_2207B19FC(&qword_281293CD8, type metadata accessor for StockListModel, &unk_2208A7C2C);
        sub_22088B29C();
        (*v64)(v14, v10);
LABEL_14:
        v87 = v36;
        v45 = *(v36 + 16);
        v44 = *(v36 + 24);
        if (v45 >= v44 >> 1)
        {
          sub_22070C45C((v44 > 1), v45 + 1, 1);
          v36 = v87;
        }

        *(v36 + 16) = v45 + 1;
        (*(v11 + 32))(v36 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v45, v74, v10);
        sub_2208919AC();
        if (!--v35)
        {
          sub_2204BE768(v68, v70, v67, v69, v66);
          goto LABEL_19;
        }
      }
    }

    __break(1u);
  }

  else
  {
    sub_2204BE768(v68, v70, v67, v69, v32);
    v36 = MEMORY[0x277D84F90];
LABEL_19:
    v46 = sub_2207B19FC(&qword_281297DC8, sub_22046B19C, MEMORY[0x277D6D720]);
    v47 = sub_2207B19FC(&qword_281297DD0, sub_22046B19C, MEMORY[0x277D6D718]);
    MEMORY[0x223D80A20](v36, v10, v46, v47);
    type metadata accessor for StockListModel(0);
    sub_22045B950();
    sub_2207B19FC(&qword_281293CD8, type metadata accessor for StockListModel, &unk_2208A7C2C);
    v48 = v54;
    sub_22088E7CC();
    v49 = v60;
    v50 = v59;
    v51 = v61;
    (*(v60 + 104))(v59, *MEMORY[0x277D6D868], v61);
    sub_2204CD300();
    v52 = v56;
    sub_22088C67C();
    (*(v49 + 8))(v50, v51);
    v63(v52);
    (*(v57 + 8))(v52, v58);
    return (*(v55 + 8))(v48, v72);
  }

  return result;
}

uint64_t sub_2207B181C()
{
  sub_2207B1B04(0, &qword_28127E048, MEMORY[0x277D6DE60], MEMORY[0x277D84560]);
  v0 = sub_22088C37C();
  v1 = *(v0 - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_220899360;
  (*(v1 + 104))(v3 + v2, *MEMORY[0x277D6DE28], v0);
  v4 = sub_2207E15E8(v3);
  swift_setDeallocating();
  (*(v1 + 8))(v3 + v2, v0);
  swift_deallocClassInstance();
  return v4;
}

uint64_t sub_2207B19FC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_2207B1A44(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = &type metadata for StockListSectionDescriptor;
    v8[1] = type metadata accessor for StockListModel(255);
    v8[2] = sub_22045B950();
    v8[3] = sub_2207B19FC(&qword_281293CD8, type metadata accessor for StockListModel, &unk_2208A7C2C);
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_2207B1B04(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_2207B1BB0(__n128 a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_22088DA5C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v14[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *v10 = MEMORY[0x277D84F90];
  v11 = *MEMORY[0x277D6E9A8];
  v12 = sub_22088DA4C();
  (*(*(v12 - 8) + 104))(v10, v11, v12);
  (*(v7 + 104))(v10, *MEMORY[0x277D6E998], v6);
  v15 = a3;
  v16 = a4;
  sub_2205261F0(sub_220526850, v14);
  type metadata accessor for TickerLayoutModel(0);
  sub_220484CDC();
  sub_2204847CC(&qword_2812910E8, type metadata accessor for TickerLayoutModel, &unk_2208BD188);
  return sub_22088C35C();
}

uint64_t sub_2207B1D94(uint64_t a1, uint64_t a2, uint64_t a3, __n128 a4)
{
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v6 = sub_22088C96C();
  v5[5] = v6;
  v5[6] = *(v6 - 8);
  v5[7] = swift_task_alloc();
  v7 = sub_22088C32C();
  v5[8] = v7;
  v5[9] = *(v7 - 8);
  v8 = swift_task_alloc();
  v9 = *v4;
  v5[10] = v8;
  v5[11] = v9;

  return MEMORY[0x2822009F8](sub_2207B1EB8, 0, 0);
}

uint64_t sub_2207B1EB8()
{
  v1 = v0[11];
  v3 = v0[6];
  v2 = v0[7];
  v4 = v0[4];
  v5 = v0[5];
  (*(v0[9] + 16))(v0[10], v4, v0[8]);
  (*(v3 + 104))(v2, *MEMORY[0x277D6E078], v5);
  v6 = swift_task_alloc();
  *(v6 + 16) = v4;
  *(v6 + 24) = v1;
  sub_220575288(sub_2207B2040, v6);

  type metadata accessor for TickerLayoutModel(0);
  sub_220484CDC();
  sub_2204847CC(&qword_2812910E8, type metadata accessor for TickerLayoutModel, &unk_2208BD188);
  sub_22088B06C();

  v7 = v0[1];

  return v7();
}

id StockSearchModule.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id StockSearchModule.__deallocating_deinit(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_2207B2158()
{
  v1 = OBJC_IVAR____TtC8StocksUI38BackgroundFetchRegistrationStartupTask_group;
  v2 = sub_22088885C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC8StocksUI38BackgroundFetchRegistrationStartupTask_appConfigurationManager));
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t static StartupTaskGroup.backgroundFetchRegistration.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_281298810 != -1)
  {
    swift_once();
  }

  v2 = sub_22088885C();
  v3 = __swift_project_value_buffer(v2, qword_281298818);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t StockChartHighlightStyle.hashValue.getter()
{
  v1 = *v0;
  sub_2208929EC();
  MEMORY[0x223D8ABA0](v1);
  return sub_220892A2C();
}

unint64_t sub_2207B2358()
{
  result = qword_27CF59C98;
  if (!qword_27CF59C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF59C98);
  }

  return result;
}

void *sub_2207B23BC(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &unk_281296850, MEMORY[0x277D33678], 1);
  result = sub_2208884DC();
  if (v4)
  {
    sub_220456CCC(0);
    v3 = objc_allocWithZone(v2);
    return sub_2208903DC();
  }

  else
  {
    __break(1u);
  }

  return result;
}

char *sub_2207B244C(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_281290F80, &protocol descriptor for WelcomeStylerType, 1);
  result = sub_2208884DC();
  if (!v90)
  {
    __break(1u);
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, qword_28128A880, &protocol descriptor for WelcomeEventHandlerType, 0);
  result = sub_2208884DC();
  if (!v87)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_28128A868, &protocol descriptor for WelcomeViewProviderType, 1);
  result = sub_2208884DC();
  if (!v86)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_28128A870, &protocol descriptor for WelcomeViewAnimatorType, 1);
  result = sub_2208884DC();
  if (!v84)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_281297B48, MEMORY[0x277D6DA40], 0);
  result = sub_2208884DC();
  v3 = v81;
  if (!v81)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v63 = v88;
  v64 = v87;
  v62 = v82;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_281298738, MEMORY[0x277D6CD90], 1);
  result = sub_2208884DC();
  if (v80[3])
  {
    v4 = __swift_mutable_project_boxed_opaque_existential_1(v89, v90);
    v61 = &v56;
    v5 = MEMORY[0x28223BE20](v4, v4);
    v7 = (&v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v8 + 16))(v7, v5);
    v9 = __swift_mutable_project_boxed_opaque_existential_1(v85, v86);
    v60 = &v56;
    v10 = MEMORY[0x28223BE20](v9, v9);
    v12 = (&v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v13 + 16))(v12, v10);
    v14 = __swift_mutable_project_boxed_opaque_existential_1(v83, v84);
    v59 = &v56;
    v15 = MEMORY[0x28223BE20](v14, v14);
    v17 = (&v56 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v18 + 16))(v17, v15);
    v19 = *v7;
    v20 = *v12;
    v21 = *v17;
    v22 = type metadata accessor for WelcomeStyler();
    v78 = v22;
    v79 = &off_2834167E0;
    v77[0] = v19;
    v23 = type metadata accessor for WelcomeViewAnimator();
    v75 = v23;
    v76 = &off_283420900;
    v74[0] = v20;
    v72 = v23;
    v73 = &off_283420910;
    v71[0] = v21;
    v24 = type metadata accessor for WelcomeViewController();
    v25 = objc_allocWithZone(v24);
    v26 = __swift_mutable_project_boxed_opaque_existential_1(v77, v78);
    v58 = &v56;
    v27 = MEMORY[0x28223BE20](v26, v26);
    v29 = (&v56 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v30 + 16))(v29, v27);
    v31 = __swift_mutable_project_boxed_opaque_existential_1(v74, v75);
    v57 = &v56;
    v32 = MEMORY[0x28223BE20](v31, v31);
    v34 = (&v56 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v35 + 16))(v34, v32);
    v36 = __swift_mutable_project_boxed_opaque_existential_1(v71, v72);
    v56 = &v56;
    v37 = MEMORY[0x28223BE20](v36, v36);
    v39 = (&v56 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v40 + 16))(v39, v37);
    v41 = *v29;
    v42 = *v34;
    v43 = *v39;
    v70[3] = v22;
    v70[4] = &off_2834167E0;
    v70[0] = v41;
    v68 = v23;
    v69 = &off_283420900;
    v67[0] = v42;
    v66[3] = v23;
    v66[4] = &off_283420910;
    v66[0] = v43;
    v25[OBJC_IVAR____TtC8StocksUI21WelcomeViewController_allowRendering] = 0;
    v44 = OBJC_IVAR____TtC8StocksUI21WelcomeViewController_statusBarView;
    v45 = objc_allocWithZone(sub_22088AEDC());
    *&v25[v44] = [v45 initWithFrame_];
    sub_22046DA2C(v70, &v25[OBJC_IVAR____TtC8StocksUI21WelcomeViewController_styler]);
    v46 = &v25[OBJC_IVAR____TtC8StocksUI21WelcomeViewController_eventHandler];
    v47 = v63;
    *v46 = v64;
    v46[1] = v47;
    sub_22046DA2C(v67, &v25[OBJC_IVAR____TtC8StocksUI21WelcomeViewController_viewProvider]);
    sub_22046DA2C(v66, &v25[OBJC_IVAR____TtC8StocksUI21WelcomeViewController_viewAnimator]);
    v48 = &v25[OBJC_IVAR____TtC8StocksUI21WelcomeViewController_toolbarManager];
    v49 = v62;
    *v48 = v3;
    v48[1] = v49;
    sub_22046DA2C(v80, &v25[OBJC_IVAR____TtC8StocksUI21WelcomeViewController_sceneStateManager]);
    v65.receiver = v25;
    v65.super_class = v24;
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    v50 = objc_msgSendSuper2(&v65, sel_initWithNibName_bundle_, 0, 0);
    *(*(v50 + OBJC_IVAR____TtC8StocksUI21WelcomeViewController_eventHandler) + 24) = &off_283425CF0;
    swift_unknownObjectWeakAssign();
    v51 = *(*(*__swift_project_boxed_opaque_existential_1(v67, v68) + 16) + OBJC_IVAR____TtC8StocksUI11WelcomeView_continueButton);
    v52 = v50;
    [v51 addTarget:v52 action:sel_didTapContinueButton forControlEvents:64];
    v53 = *(*(*__swift_project_boxed_opaque_existential_1(v67, v68) + 16) + OBJC_IVAR____TtC8StocksUI11WelcomeView_onPrivacyTap);
    swift_allocObject();
    swift_unknownObjectWeakInit();
    v54 = v53;
    v55 = sub_22088E13C();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    __swift_destroy_boxed_opaque_existential_1(v80);
    __swift_destroy_boxed_opaque_existential_1(v66);
    __swift_destroy_boxed_opaque_existential_1(v70);
    __swift_destroy_boxed_opaque_existential_1(v67);
    __swift_destroy_boxed_opaque_existential_1(v71);
    __swift_destroy_boxed_opaque_existential_1(v74);
    __swift_destroy_boxed_opaque_existential_1(v77);
    __swift_destroy_boxed_opaque_existential_1(v83);
    __swift_destroy_boxed_opaque_existential_1(v85);
    __swift_destroy_boxed_opaque_existential_1(v89);
    return v52;
  }

LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_2207B2D90@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  sub_22046DA2C(a1, v6);
  v3 = type metadata accessor for WelcomeRouter();
  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();
  result = sub_220457328(v6, v4 + 24);
  a2[3] = v3;
  a2[4] = &off_28341E8B0;
  *a2 = v4;
  return result;
}

void sub_2207B2E0C(uint64_t *a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for WelcomeViewController();
  v2 = sub_2208884CC();
  swift_unknownObjectWeakAssign();
}

void *sub_2207B2E8C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_28128CFF8, &protocol descriptor for WelcomeInteractorType, 0);
  result = sub_2208884DC();
  v5 = v22;
  if (!v22)
  {
    __break(1u);
    goto LABEL_6;
  }

  v6 = v23;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_281290F88, &protocol descriptor for WelcomeRouterType, 1);
  result = sub_2208884DC();
  if (!v21)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, qword_281290380, &protocol descriptor for WelcomeTrackerType, 1);
  result = sub_2208884DC();
  if (v19)
  {
    v7 = __swift_mutable_project_boxed_opaque_existential_1(v20, v21);
    v8 = MEMORY[0x28223BE20](v7, v7);
    v10 = (v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v11 + 16))(v10, v8);
    v12 = __swift_mutable_project_boxed_opaque_existential_1(v18, v19);
    v13 = MEMORY[0x28223BE20](v12, v12);
    v15 = (v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v16 + 16))(v15, v13);
    v17 = sub_2207B3D30(v5, v6, *v10, *v15);
    __swift_destroy_boxed_opaque_existential_1(v18);
    result = __swift_destroy_boxed_opaque_existential_1(v20);
    *a2 = v17;
    a2[1] = &off_2834258E0;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

void *sub_2207B3134@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_28128BFE8, &protocol descriptor for WelcomeDataManagerType, 0);
  result = sub_2208884DC();
  if (v8)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_220446A58(0, &qword_27CF59CA8, MEMORY[0x277D68C80], 0);
    result = sub_2208884DC();
    if (v6)
    {
      type metadata accessor for WelcomeInteractor();
      v5 = swift_allocObject();
      v5[3] = 0;
      result = swift_unknownObjectWeakInit();
      v5[4] = v8;
      v5[5] = v9;
      v5[6] = v6;
      v5[7] = v7;
      *a2 = v5;
      a2[1] = &off_283424EC8;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_2207B3258@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for WelcomeDataManager();
  result = swift_allocObject();
  *a1 = result;
  a1[1] = &off_283421438;
  return result;
}

void sub_2207B3298(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22088731C();
  v3 = sub_2208884CC();
  if (v3)
  {
    v4 = v3;
    v5 = type metadata accessor for WelcomeTracker();
    v6 = swift_allocObject();
    *(v6 + 16) = v4;

    sub_22088726C();

    a2[3] = v5;
    a2[4] = &off_283414D78;
    *a2 = v6;
  }

  else
  {
    __break(1u);
  }
}

void *sub_2207B33A4@<X0>(void *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t (*a3)(char *, uint64_t, uint64_t, uint64_t)@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_281294338, &protocol descriptor for BaseStylerType, 1);
  result = sub_2208884DC();
  v10 = v21;
  if (v21)
  {
    v11 = a2(0);
    v12 = v22;
    v13 = __swift_mutable_project_boxed_opaque_existential_1(v20, v21);
    v14 = MEMORY[0x28223BE20](v13, v13);
    v16 = &v20[-1] - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v17 + 16))(v16, v14);
    v18 = a3(v16, v11, v10, v12);
    result = __swift_destroy_boxed_opaque_existential_1(v20);
    a5[3] = v11;
    a5[4] = a4;
    *a5 = v18;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_2207B3538@<X0>(void *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_281286BB8, &protocol descriptor for WelcomeViewStylerFactoryType, 1);
  result = sub_2208884DC();
  if (v25)
  {
    v8 = __swift_mutable_project_boxed_opaque_existential_1(v24, v25);
    v9 = MEMORY[0x28223BE20](v8, v8);
    v11 = (v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v12 + 16))(v11, v9);
    v13 = *v11;
    v14 = type metadata accessor for WelcomeViewStylerFactory();
    v23[3] = v14;
    v23[4] = &off_283423238;
    v23[0] = v13;
    v15 = a2(0);
    v16 = swift_allocObject();
    v17 = __swift_mutable_project_boxed_opaque_existential_1(v23, v14);
    v18 = MEMORY[0x28223BE20](v17, v17);
    v20 = (v23 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v21 + 16))(v20, v18);
    v22 = *v20;
    v16[5] = v14;
    v16[6] = &off_283423238;
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

void *sub_2207B3770(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_281289E70, &protocol descriptor for WelcomeModelProviderType, 1);
  result = sub_2208884DC();
  if (!v27)
  {
    __break(1u);
    goto LABEL_8;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_28128A860, &protocol descriptor for WelcomeViewRendererType, 1);
  result = sub_2208884DC();
  if (!v25)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, qword_281280BE0, &protocol descriptor for WelcomeViewLayoutAttributesFactoryType, 1);
  result = sub_2208884DC();
  if (!v23)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220888B3C();
  result = sub_2208884CC();
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v3 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220456CCC(0);
  result = sub_2208884CC();
  if (result)
  {
    v4 = result;
    v5 = __swift_mutable_project_boxed_opaque_existential_1(v26, v27);
    v6 = MEMORY[0x28223BE20](v5, v5);
    v8 = (&v22[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v9 + 16))(v8, v6);
    v10 = __swift_mutable_project_boxed_opaque_existential_1(v24, v25);
    v11 = MEMORY[0x28223BE20](v10, v10);
    v13 = (&v22[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v14 + 16))(v13, v11);
    v15 = __swift_mutable_project_boxed_opaque_existential_1(v22, v23);
    v16 = MEMORY[0x28223BE20](v15, v15);
    v18 = (&v22[-1] - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v19 + 16))(v18, v16);
    v20 = sub_2207B3F8C(*v8, *v13, *v18, v3, v4);

    __swift_destroy_boxed_opaque_existential_1(v22);
    __swift_destroy_boxed_opaque_existential_1(v24);
    __swift_destroy_boxed_opaque_existential_1(v26);
    return v20;
  }

LABEL_11:
  __break(1u);
  return result;
}

void *sub_2207B3B38@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_2812991A0, MEMORY[0x277D696F0], 1);
  result = sub_2208884DC();
  if (v18)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_220446A58(0, &qword_281299220, MEMORY[0x277D69608], 1);
    result = sub_2208884DC();
    v5 = v15;
    if (v15)
    {
      v6 = type metadata accessor for WelcomeModelProvider();
      v7 = v16;
      v8 = __swift_project_boxed_opaque_existential_1(v14, v15);
      v9 = MEMORY[0x28223BE20](v8, v8);
      v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v12 + 16))(v11, v9);
      v13 = sub_220466390(&v17, v11, v6, v5, v7);
      result = __swift_destroy_boxed_opaque_existential_1(v14);
      a2[3] = v6;
      a2[4] = &off_28341CF70;
      *a2 = v13;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_2207B3D30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = *a4;
  v9 = type metadata accessor for WelcomeRouter();
  v34[3] = v9;
  v34[4] = &off_28341E8B0;
  v34[0] = a3;
  v32 = v8;
  v33 = &off_283414D78;
  v31[0] = a4;
  type metadata accessor for WelcomeEventHandler();
  v10 = swift_allocObject();
  v11 = __swift_mutable_project_boxed_opaque_existential_1(v34, v9);
  v12 = MEMORY[0x28223BE20](v11, v11);
  v14 = (&v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v15 + 16))(v14, v12);
  v16 = __swift_mutable_project_boxed_opaque_existential_1(v31, v32);
  v17 = MEMORY[0x28223BE20](v16, v16);
  v19 = (&v24 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v20 + 16))(v19, v17);
  v21 = *v14;
  v22 = *v19;
  v29 = v9;
  v30 = &off_28341E8B0;
  v27 = &off_283414D78;
  *&v28 = v21;
  v26 = v8;
  *&v25 = v22;
  v10[3] = 0;
  swift_unknownObjectWeakInit();
  v10[4] = a1;
  v10[5] = a2;
  sub_220457328(&v28, (v10 + 6));
  sub_220457328(&v25, (v10 + 11));
  *(a1 + 24) = &off_2834258D8;
  swift_unknownObjectWeakAssign();
  __swift_destroy_boxed_opaque_existential_1(v31);
  __swift_destroy_boxed_opaque_existential_1(v34);
  return v10;
}

uint64_t sub_2207B3F8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v10 = type metadata accessor for WelcomeModelProvider();
  v45[3] = v10;
  v45[4] = &off_28341CF70;
  v45[0] = a1;
  v11 = type metadata accessor for WelcomeViewRenderer();
  v43 = v11;
  v44 = &off_283413A98;
  v42[0] = a2;
  v12 = type metadata accessor for WelcomeViewLayoutAttributesFactory();
  v40 = v12;
  v41 = &off_283414AD8;
  v39[0] = a3;
  type metadata accessor for WelcomeViewAnimator();
  v13 = swift_allocObject();
  v14 = __swift_mutable_project_boxed_opaque_existential_1(v45, v10);
  v15 = MEMORY[0x28223BE20](v14, v14);
  v17 = &v35[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v18 + 16))(v17, v15);
  v19 = __swift_mutable_project_boxed_opaque_existential_1(v42, v43);
  v20 = MEMORY[0x28223BE20](v19, v19);
  v22 = &v35[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v23 + 16))(v22, v20);
  v24 = __swift_mutable_project_boxed_opaque_existential_1(v39, v40);
  v25 = MEMORY[0x28223BE20](v24, v24);
  v27 = &v35[-((v26 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v28 + 16))(v27, v25);
  v29 = *v17;
  v30 = *v22;
  v31 = *v27;
  v38[3] = v10;
  v38[4] = &off_28341CF70;
  v38[0] = v29;
  v37[4] = &off_283413A98;
  v37[3] = v11;
  v37[0] = v30;
  v36[4] = &off_283414AD8;
  v36[3] = v12;
  v36[0] = v31;
  *(v13 + 16) = [objc_allocWithZone(type metadata accessor for WelcomeView()) initWithFrame_];
  v35[7] = 0;
  sub_2207B43B4();
  swift_allocObject();
  *(v13 + 24) = sub_22088866C();
  v32 = MEMORY[0x277D84F90];
  *(v13 + 168) = MEMORY[0x277D84F90];
  *(v13 + 176) = v32;
  *(v13 + 200) = 0u;
  *(v13 + 216) = 0u;
  *(v13 + 232) = 0u;
  *(v13 + 248) = 0u;
  *(v13 + 184) = 0u;
  *(v13 + 257) = 0u;
  *(v13 + 273) = 2;
  sub_22046DA2C(v38, v13 + 32);
  sub_22046DA2C(v37, v13 + 72);
  sub_22046DA2C(v36, v13 + 112);
  *(v13 + 152) = a4;
  *(v13 + 160) = a5;
  swift_allocObject();
  swift_weakInit();

  v33 = a5;

  __swift_destroy_boxed_opaque_existential_1(v36);
  __swift_destroy_boxed_opaque_existential_1(v37);
  __swift_destroy_boxed_opaque_existential_1(v38);
  __swift_destroy_boxed_opaque_existential_1(v39);
  __swift_destroy_boxed_opaque_existential_1(v42);
  __swift_destroy_boxed_opaque_existential_1(v45);
  return v13;
}

void sub_2207B43B4()
{
  if (!qword_27CF59CA0)
  {
    v0 = sub_2208886BC();
    if (!v1)
    {
      atomic_store(v0, &qword_27CF59CA0);
    }
  }
}

void sub_2207B4414(uint64_t a1@<X8>)
{
  v110 = a1;
  v121 = sub_22088665C();
  v137 = *(v121 - 8);
  MEMORY[0x28223BE20](v121, v2);
  v113 = &v110 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2204E99F0(0);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v129 = &v110 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22045987C(0);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v120 = &v110 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v128 = sub_22088516C();
  v125 = *(v128 - 8);
  MEMORY[0x28223BE20](v128, v10);
  v119 = &v110 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v13);
  v118 = &v110 - v14;
  MEMORY[0x28223BE20](v15, v16);
  v117 = &v110 - v17;
  MEMORY[0x28223BE20](v18, v19);
  v116 = &v110 - v20;
  v21 = type metadata accessor for StockListStockModel(0);
  MEMORY[0x28223BE20](v21 - 8, v22);
  v130 = &v110 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v140 = type metadata accessor for StockListModel(0);
  MEMORY[0x28223BE20](v140, v24);
  v26 = &v110 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22046B36C(0);
  v28 = v27;
  v124 = *(v27 - 8);
  MEMORY[0x28223BE20](v27, v29);
  v31 = &v110 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2204BBE2C(0);
  v135 = v32;
  MEMORY[0x28223BE20](v32, v33);
  v35 = &v110 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22046B19C(0);
  v37 = v36;
  v131 = *(v36 - 8);
  MEMORY[0x28223BE20](v36, v38);
  v134 = &v110 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2204B9DAC(0);
  v41 = v40 - 8;
  MEMORY[0x28223BE20](v40, v42);
  v44 = &v110 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2204A1D20(0);
  v46 = v45;
  (*(*(v45 - 8) + 16))(v44, v1, v45);
  v47 = *(v41 + 44);
  v48 = sub_22046F734(&qword_281296EE8, sub_2204A1D20, MEMORY[0x277D6EC70]);
  sub_22089193C();
  v138 = v48;
  v139 = v46;
  sub_22089199C();
  v136 = v44;
  if (*&v44[v47] != *&v141)
  {
    v63 = v47;
    v64 = v131++;
    v132 = (v64 + 2);
    v65 = v124 + 16;
    v66 = v124 + 8;
    v115 = v125 + 32;
    v114 = v125 + 8;
    v112 = (v137 + 16);
    v111 = (v137 + 8);
    v125 = MEMORY[0x277D84F90];
    v124 = MEMORY[0x277D84F90];
    v127 = v26;
    v133 = v63;
    v126 = v65;
    while (1)
    {
      v137 = sub_2208919BC();
      v67 = *v132;
      v68 = v134;
      (*v132)(v134);
      (v137)(&v141, 0);
      sub_2208919AC();
      (v67)(v35, v68, v37);
      v69 = *(v135 + 36);
      sub_22046F734(&qword_281297DB8, sub_22046B19C, MEMORY[0x277D6D730]);
      sub_22089193C();
      (*v131)(v68, v37);
      sub_22089199C();
      if (*&v35[v69] != *&v141)
      {
        break;
      }

LABEL_25:
      sub_2204AB5DC(v35, sub_2204BBE2C);
      v49 = v136;
      sub_22089199C();
      if (*(v49 + v133) == *&v141)
      {
        goto LABEL_3;
      }
    }

    v70 = v127;
    v71 = v126;
    while (1)
    {
      v72 = sub_2208919BC();
      (*v71)(v31);
      v72(&v141, 0);
      sub_2208919AC();
      sub_22088AD8C();
      (*v66)(v31, v28);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload == 1)
      {
        break;
      }

      if (EnumCaseMultiPayload != 2)
      {
        v76 = v130;
        sub_2204D1A74(v70, v130, type metadata accessor for StockListStockModel);
        v137 = type metadata accessor for StockViewModel(0);
        v77 = v76 + *(v137 + 20);
        v78 = v120;
        sub_22047939C(v77, v120, sub_22045987C);
        v79 = sub_22088676C();
        v122 = *(v79 - 8);
        v80 = *(v122 + 48);
        v123 = v79;
        if (v80(v78, 1) == 1)
        {
          sub_2204AB5DC(v78, sub_22045987C);
        }

        else
        {
          sub_2208866FC();
          (*(v122 + 8))(v78, v123);
          (*v115)(v116, v117, v128);
          sub_2208850DC();
          v82 = v81;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v125 = sub_2204B415C(0, *(v125 + 2) + 1, 1, v125);
          }

          v84 = *(v125 + 2);
          v83 = *(v125 + 3);
          v123 = v84 + 1;
          if (v84 >= v83 >> 1)
          {
            v125 = sub_2204B415C((v83 > 1), v84 + 1, 1, v125);
          }

          (*v114)(v116, v128);
          v85 = v125;
          *(v125 + 2) = v123;
          *&v85[8 * v84 + 32] = fabs(v82);
        }

        v86 = v129;
        sub_22047939C(v130 + *(v137 + 24), v129, sub_2204E99F0);
        v87 = type metadata accessor for StockSparklineViewModel(0);
        v88 = v86;
        v89 = v87;
        if ((*(*(v87 - 8) + 48))(v88, 1, v87) != 1)
        {
          v90 = v129 + *(v89 + 32);
          v91 = v113;
          (*v112)(v113, v90, v121);
          sub_2204AB5DC(v129, type metadata accessor for StockSparklineViewModel);
          sub_2208865AC();
          (*v111)(v91, v121);
          (*v115)(v118, v119, v128);
          sub_2208850DC();
          v93 = v92;
          v94 = v124;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v94 = sub_2204B415C(0, *(v94 + 2) + 1, 1, v94);
          }

          v95 = v94;
          v96 = *(v94 + 2);
          v124 = v95;
          v97 = *(v95 + 3);
          v137 = v96 + 1;
          if (v96 >= v97 >> 1)
          {
            v124 = sub_2204B415C((v97 > 1), v96 + 1, 1, v124);
          }

          (*v114)(v118, v128);
          sub_2204AB5DC(v130, type metadata accessor for StockListStockModel);
          v98 = v124;
          *(v124 + 2) = v137;
          *&v98[8 * v96 + 32] = fabs(v93);
          goto LABEL_29;
        }

        sub_2204AB5DC(v130, type metadata accessor for StockListStockModel);
        v74 = sub_2204E99F0;
        v75 = v129;
        goto LABEL_32;
      }

LABEL_29:
      sub_22089199C();
      if (*&v35[v69] == *&v141)
      {
        goto LABEL_25;
      }
    }

    v74 = type metadata accessor for StockListModel;
    v75 = v70;
LABEL_32:
    sub_2204AB5DC(v75, v74);
    goto LABEL_29;
  }

  v124 = MEMORY[0x277D84F90];
  v125 = MEMORY[0x277D84F90];
  v49 = v136;
LABEL_3:
  sub_2204AB5DC(v49, sub_2204B9DAC);
  sub_2204B25BC();
  v50 = v125;
  sub_22089173C();
  if ((*&v141 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_74;
  }

  if (v141 <= -2147483650.0)
  {
LABEL_74:
    __break(1u);
    goto LABEL_75;
  }

  if (v141 >= 2147483650.0)
  {
LABEL_75:
    __break(1u);
    goto LABEL_76;
  }

  v51 = v124;
  sub_22089173C();
  if ((*&v141 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_76:
    __break(1u);
    goto LABEL_77;
  }

  if (v141 <= -2147483650.0)
  {
LABEL_77:
    __break(1u);
    goto LABEL_78;
  }

  if (v141 >= 2147483650.0)
  {
LABEL_78:
    __break(1u);
LABEL_79:
    __break(1u);
    goto LABEL_80;
  }

  v52 = *(v50 + 2);
  if (!v52)
  {
    v58 = 0.0;
    goto LABEL_48;
  }

  v53 = *(v50 + 4);
  v54 = v52 - 1;
  if (v52 != 1)
  {
    v55 = (v50 + 40);
    do
    {
      v56 = *v55++;
      v57 = v56;
      if (v56 < v53)
      {
        v53 = v57;
      }

      --v54;
    }

    while (v54);
  }

  if ((*&v53 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_79;
  }

  if (v53 <= -2147483650.0)
  {
LABEL_80:
    __break(1u);
    goto LABEL_81;
  }

  if (v53 >= 2147483650.0)
  {
LABEL_81:
    __break(1u);
LABEL_82:
    __break(1u);
    goto LABEL_83;
  }

  v58 = *(v50 + 4);
  v59 = v52 - 1;
  if (v52 != 1)
  {
    v60 = (v50 + 40);
    do
    {
      v61 = *v60++;
      v62 = v61;
      if (v58 < v61)
      {
        v58 = v62;
      }

      --v59;
    }

    while (v59);
  }

LABEL_48:

  if (v52 && (*&v58 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
  {
    goto LABEL_82;
  }

  if (v58 <= -2147483650.0)
  {
LABEL_83:
    __break(1u);
    goto LABEL_84;
  }

  if (v58 >= 2147483650.0)
  {
LABEL_84:
    __break(1u);
LABEL_85:
    __break(1u);
    goto LABEL_86;
  }

  v99 = *(v51 + 2);
  if (!v99)
  {
    v105 = 0.0;
    goto LABEL_68;
  }

  v100 = *(v51 + 4);
  v101 = v99 - 1;
  if (v99 != 1)
  {
    v102 = (v51 + 40);
    do
    {
      v103 = *v102++;
      v104 = v103;
      if (v103 < v100)
      {
        v100 = v104;
      }

      --v101;
    }

    while (v101);
  }

  if ((*&v100 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_85;
  }

  if (v100 <= -2147483650.0)
  {
LABEL_86:
    __break(1u);
    goto LABEL_87;
  }

  if (v100 >= 2147483650.0)
  {
LABEL_87:
    __break(1u);
LABEL_88:
    __break(1u);
    goto LABEL_89;
  }

  v105 = *(v51 + 4);
  v106 = v99 - 1;
  if (v99 != 1)
  {
    v107 = (v51 + 40);
    do
    {
      v108 = *v107++;
      v109 = v108;
      if (v105 < v108)
      {
        v105 = v109;
      }

      --v106;
    }

    while (v106);
  }

LABEL_68:

  if (v99 && (*&v105 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
  {
    goto LABEL_88;
  }

  if (v105 <= -2147483650.0)
  {
LABEL_89:
    __break(1u);
    goto LABEL_90;
  }

  if (v105 < 2147483650.0)
  {
    sub_2208897EC();
    return;
  }

LABEL_90:
  __break(1u);
}

double sub_2207B53E8()
{
  v1 = *(*v0 + 88);
  v2 = *(*v0 + 80);
  (*(v1 + 48))(v2, v1);
  v3 = swift_allocObject();
  swift_weakInit();
  v4 = swift_allocObject();
  v4[2] = v2;
  v4[3] = v1;
  v4[4] = v3;
  sub_2204AB448(0);
  sub_22046F734(&qword_281297D28, sub_2204AB448, MEMORY[0x277D6D890]);

  sub_22088B6DC();

  return result;
}

void sub_2207B555C(uint64_t a1, uint64_t a2)
{
  sub_22045BAA4(0);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v9 = *(*Strong + 232);
    v32 = *(Strong + v9);
    sub_2204C59CC(0, &qword_281298020, sub_22047D138, &type metadata for StockListRefreshBlocker, MEMORY[0x277D6D370]);
    sub_2204C5950(&qword_281298030, MEMORY[0x277D6D380]);

    sub_22089193C();
    sub_22089199C();
    if (v28 & 1) != 0 || (v31)
    {
      __break(1u);
      return;
    }

    v10 = v26;
    v11 = v29;
    v12 = v30;
    v13 = v27;

    if (v13 == v12)
    {
      if (v10 == v11)
      {
        sub_2207B5940(a1, v14);

LABEL_11:

        return;
      }

      if (qword_281298078 == -1)
      {
LABEL_8:
        v15 = sub_22088A84C();
        __swift_project_value_buffer(v15, qword_2812B6CB8);

        v16 = sub_22088A82C();
        v17 = sub_220891AFC();

        if (os_log_type_enabled(v16, v17))
        {
          v18 = swift_slowAlloc();
          v19 = swift_slowAlloc();
          v26 = v19;
          *v18 = 136315138;
          v29 = *(v8 + v9);
          sub_2204C5950(&qword_281298028, MEMORY[0x277D6D388]);
          v20 = sub_22089287C();
          v22 = sub_2204A7B78(v20, v21, &v26);

          *(v18 + 4) = v22;
          _os_log_impl(&dword_22043F000, v16, v17, "Stock list update priceChangeDisplay will be queued while refresh is blocked by: %s", v18, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v19);
          MEMORY[0x223D8B7F0](v19, -1, -1);
          MEMORY[0x223D8B7F0](v18, -1, -1);
        }

        v23 = sub_220885D4C();
        v24 = *(v23 - 8);
        (*(v24 + 16))(v6, a1, v23);
        (*(v24 + 56))(v6, 0, 1, v23);
        v25 = *(*v8 + 248);
        swift_beginAccess();
        sub_2207C1A18(v6, v8 + v25, sub_22045BAA4);
        swift_endAccess();
        goto LABEL_11;
      }
    }

    else
    {
      __break(1u);
    }

    swift_once();
    goto LABEL_8;
  }
}

uint64_t sub_2207B5940(uint64_t a1, __n128 a2)
{
  v4 = *v2;
  v5 = sub_22088AF8C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v11);
  v13 = &v24 - v12;
  sub_22088B6BC();
  sub_22088B71C();

  (*(v6 + 104))(v9, *MEMORY[0x277D6D520], v5);
  sub_22046F734(&qword_281297F18, MEMORY[0x277D6D528], MEMORY[0x277D6D530]);
  v14 = sub_2208912FC();
  v15 = *(v6 + 8);
  v15(v9, v5);
  v15(v13, v5);
  if (v14)
  {
    sub_2204C5D60(0, &qword_2812985D0, MEMORY[0x277D84F78] + 8, MEMORY[0x277D6CF30]);
    swift_allocObject();
    return sub_220888ECC();
  }

  else
  {
    v18 = *(v4 + 80);
    v17 = *(v4 + 88);
    v19 = (*(v17 + 56))(a1, v18, v17);
    v20 = swift_allocObject();
    v21 = swift_weakInit();
    MEMORY[0x28223BE20](v21, v22);
    *(&v24 - 4) = v18;
    *(&v24 - 3) = v17;
    *(&v24 - 2) = v20;
    *(&v24 - 1) = v19;
    sub_2204C5D60(0, &qword_2812985D0, MEMORY[0x277D84F78] + 8, MEMORY[0x277D6CF30]);
    swift_allocObject();
    v23 = sub_220888F2C();

    return v23;
  }
}

double sub_2207B5C64(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_2207B5CC4(a1);
  }

  return result;
}

double sub_2207B5CC4(uint64_t a1)
{
  (*(*(*v1 + 88) + 96))(a1, *(*v1 + 80));
  sub_2204AB448(0);
  sub_22046F734(&qword_281297D28, sub_2204AB448, MEMORY[0x277D6D890]);
  sub_22088B6DC();

  return result;
}

void sub_2207B5DB8(uint64_t a1, uint64_t a2, __n128 a3)
{
  v4 = sub_22088AF8C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v10);
  v12 = &v20 - v11;
  sub_2204C59CC(0, &unk_2812968A0, sub_220456720, &type metadata for StockListOfflineModel, MEMORY[0x277D33530]);
  MEMORY[0x28223BE20](v13 - 8, v14);
  v16 = &v20 - v15;
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_2207C22A8(a1, v16);
    v17 = sub_22089030C();
    if ((*(*(v17 - 8) + 48))(v16, 1, v17) == 1)
    {
      sub_2207C2344(v16);
      sub_22088B6BC();
      sub_22088B71C();

      (*(v5 + 104))(v8, *MEMORY[0x277D6D518], v4);
      sub_22046F734(&qword_281297F18, MEMORY[0x277D6D528], MEMORY[0x277D6D530]);
      v18 = sub_2208912FC();
      v19 = *(v5 + 8);
      v19(v8, v4);
      v19(v12, v4);
      if ((v18 & 1) == 0)
      {
        sub_2204A98C4();
      }
    }

    else
    {

      sub_2207C2344(v16);
    }
  }
}

double sub_2207B6074(uint64_t a1, uint64_t a2)
{
  sub_2204C59CC(0, &unk_2812968A0, sub_220456720, &type metadata for StockListOfflineModel, MEMORY[0x277D33530]);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = &v19 - v5;
  swift_beginAccess();
  if (!swift_weakLoadStrong())
  {
    return result;
  }

  sub_2207C22A8(a1, v6);
  v8 = sub_22089030C();
  v9 = (*(*(v8 - 8) + 48))(v6, 1, v8);
  sub_2207C2344(v6);
  if (v9 != 1)
  {
    if (qword_281298078 != -1)
    {
      swift_once();
    }

    v15 = sub_22088A84C();
    __swift_project_value_buffer(v15, qword_2812B6CB8);
    v16 = sub_22088A82C();
    v17 = sub_220891AFC();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_22043F000, v16, v17, "Stock list will not reattempt prewarm because new state is offline", v18, 2u);
      MEMORY[0x223D8B7F0](v18, -1, -1);
    }

    goto LABEL_17;
  }

  v10 = sub_22088BF0C();
  if (!(v10 >> 62))
  {
    sub_2204A788C(v10);
    goto LABEL_16;
  }

  if (v10 >> 62 != 1)
  {
LABEL_16:
    sub_2204A98C4();
LABEL_17:

    return result;
  }

  if (qword_281298078 != -1)
  {
    swift_once();
  }

  v11 = sub_22088A84C();
  __swift_project_value_buffer(v11, qword_2812B6CB8);
  v12 = sub_22088A82C();
  v13 = sub_220891AFC();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_22043F000, v12, v13, "Stock list will not reattempt prewarm because it has already finished", v14, 2u);
    MEMORY[0x223D8B7F0](v14, -1, -1);
  }

  return result;
}

double sub_2207B6358(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_22045BAA4(0);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_220886A4C();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v12);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15, v16);
  v18 = &v32 - v17;
  sub_2204B5FB8(0);
  MEMORY[0x28223BE20](v19 - 8, v20);
  v22 = &v32 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v25 = Strong;
    v26 = swift_unknownObjectWeakLoadStrong();
    if (v26)
    {
      v33 = *(*v25 + 120);
      v34 = a3;
      v27 = *(v25 + v33);
      v35 = a4;
      v36 = v26;
      __swift_project_boxed_opaque_existential_1((v27 + 32), *(v27 + 56));

      sub_2208863EC();
      sub_220886A3C();
      v28 = *(v11 + 8);
      v28(v18, v10);
      v29 = sub_220885DFC();
      (*(*(v29 - 8) + 56))(v22, 0, 1, v29);
      __swift_project_boxed_opaque_existential_1((*(v25 + v33) + 32), *(*(v25 + v33) + 56));
      sub_2208863EC();
      sub_2208869CC();
      v28(v14, v10);
      v30 = sub_220885D4C();
      (*(*(v30 - 8) + 56))(v9, 0, 1, v30);
      type metadata accessor for StockListInteractor(0, v34, v35, v31);
      sub_2204B683C(v22, v9, v36);

      swift_unknownObjectRelease();
      sub_2204AB5DC(v9, sub_22045BAA4);
      sub_2204AB5DC(v22, sub_2204B5FB8);
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_2207B66BC()
{
  v1 = v0;
  sub_2207C2118(0);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v45 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_22088CA0C();
  v39 = *(v5 - 8);
  v40 = v5;
  MEMORY[0x28223BE20](v5, v6);
  v42 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_220886A4C();
  v8 = *(v43 - 8);
  MEMORY[0x28223BE20](v43, v9);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_220885D4C();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12, v14);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17, v18);
  v44 = &v38 - v19;
  MEMORY[0x28223BE20](v20, v21);
  v23 = &v38 - v22;
  v24 = *(v0 + *(*v0 + 120));
  __swift_project_boxed_opaque_existential_1((v24 + 32), *(v24 + 56));
  sub_2208863EC();
  sub_2208869CC();
  (*(v8 + 8))(v11, v43);
  v25 = *(v13 + 16);
  v43 = v23;
  v26 = v23;
  v27 = v12;
  v28 = v13;
  v38 = v13 + 16;
  v25(v16, v26, v27);
  v29 = (*(v13 + 88))(v16, v27);
  v30 = *MEMORY[0x277D69480];
  if (v29 == v30)
  {
    v30 = *MEMORY[0x277D69478];
  }

  else if (v29 != *MEMORY[0x277D69468])
  {
    v30 = *MEMORY[0x277D69468];
    if (v29 != *MEMORY[0x277D69478])
    {
      result = sub_22089267C();
      __break(1u);
      return result;
    }
  }

  v41 = v25;
  v31 = *(v13 + 104);
  v32 = v44;
  v31(v44, v30, v27);
  (*(v39 + 104))(v42, *MEMORY[0x277D6E0F8], v40);
  v33 = *(v1 + *(*v1 + 128));
  v47 = sub_22088731C();
  v48 = sub_22046F734(&qword_281298BF0, MEMORY[0x277CEAEA8], MEMORY[0x277D319D8]);
  v46 = v33;
  v49 = 0u;
  v50 = 0u;
  v51 = 1;
  sub_22088C4DC();
  swift_allocObject();

  sub_22088C4BC();
  v42 = *(v1 + *(*v1 + 136) + 8);
  swift_getObjectType();
  if (qword_281296FC8 != -1)
  {
    swift_once();
  }

  __swift_project_boxed_opaque_existential_1((v24 + 32), *(v24 + 56));
  v34 = v45;
  sub_2208863EC();
  v35 = type metadata accessor for ChangeWatchlistDisplayContext(0);
  v41(v34 + *(v35 + 20), v32, v27);
  (*(*(v35 - 8) + 56))(v34, 0, 1, v35);

  sub_22088B7AC();

  sub_2204AB5DC(v34, sub_2207C2118);
  v36 = *(v28 + 8);
  v36(v32, v27);
  return (v36)(v43, v27);
}

double sub_2207B6CCC(uint64_t a1)
{
  v3 = *v1;
  v4 = sub_22088CE3C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v8 = swift_allocObject();
  swift_weakInit();
  (*(v5 + 16))(&v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v4);
  v9 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v10 = swift_allocObject();
  *(v10 + 2) = *(v3 + 80);
  *(v10 + 3) = *(v3 + 88);
  *(v10 + 4) = v8;
  (*(v5 + 32))(&v10[v9], &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v4);

  sub_22088726C();

  return result;
}

uint64_t sub_2207B6E90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v68 = a1;
  v69 = a3;
  v3 = sub_22088516C();
  v77 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v4);
  v76 = v55 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2208897FC();
  v74 = *(v6 - 8);
  v75 = v6;
  MEMORY[0x28223BE20](v6, v7);
  v73 = v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2204A1D20(0);
  v71 = *(v9 - 8);
  v72 = v9;
  MEMORY[0x28223BE20](v9, v10);
  v70 = v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = sub_22088A06C();
  v65 = *(v67 - 8);
  MEMORY[0x28223BE20](v67, v12);
  v63 = v55 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = sub_22088D81C();
  v60 = *(v61 - 8);
  MEMORY[0x28223BE20](v61, v14);
  v59 = v55 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = sub_22088928C();
  v64 = *(v66 - 8);
  MEMORY[0x28223BE20](v66, v16);
  v62 = v55 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_22088944C();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18, v20);
  v22 = v55 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23, v24);
  v26 = v55 - v25;
  v27 = sub_220886A4C();
  v28 = *(v27 - 8);
  MEMORY[0x28223BE20](v27, v29);
  v31 = v55 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = sub_22088943C();
  v57 = *(v58 - 8);
  MEMORY[0x28223BE20](v58, v32);
  v34 = v55 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v56 = v3;
    v36 = *(*result + 120);
    v55[1] = result;
    __swift_project_boxed_opaque_existential_1((*(result + v36) + 32), *(*(result + v36) + 56));
    sub_2208863EC();
    v37 = sub_2208869AC();
    v38 = MEMORY[0x277D68560];
    if ((v37 & 1) == 0)
    {
      v38 = MEMORY[0x277D68558];
    }

    (*(v19 + 104))(v26, *v38, v18);
    (*(v19 + 16))(v22, v26, v18);
    sub_22088942C();
    (*(v19 + 8))(v26, v18);
    (*(v28 + 8))(v31, v27);
    sub_2204556F0(0, &qword_28127E170, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
    v39 = sub_220886F8C();
    v40 = *(v39 - 8);
    v41 = (*(v40 + 80) + 32) & ~*(v40 + 80);
    v42 = swift_allocObject();
    *(v42 + 16) = xmmword_220899360;
    (*(v40 + 104))(v42 + v41, *MEMORY[0x277CEAD18], v39);
    sub_22046F734(&qword_2812984F0, MEMORY[0x277D68550], MEMORY[0x277D68548]);
    v43 = v58;
    sub_220886F1C();

    (*(v57 + 8))(v34, v43);
    v44 = v59;
    sub_22088CE0C();
    v45 = (*(v60 + 88))(v44, v61);
    if (v45 == *MEMORY[0x277D6E830])
    {
      v46 = MEMORY[0x277D68F60];
    }

    else
    {
      v46 = MEMORY[0x277D68F68];
      if (v45 != *MEMORY[0x277D6E840] && v45 != *MEMORY[0x277D6E848] && v45 != *MEMORY[0x277D6E838])
      {
        result = sub_22089267C();
        __break(1u);
        return result;
      }
    }

    (*(v65 + 104))(v63, *v46, v67);
    v47 = v62;
    sub_22088927C();
    sub_22046F734(&qword_281298540, MEMORY[0x277D683C0], MEMORY[0x277D683B8]);
    v48 = v66;
    sub_220886F1C();
    (*(v64 + 8))(v47, v48);
    sub_22088B6BC();
    v78 = v79;
    sub_22045BB28(0);
    sub_22046F734(&qword_281297C90, sub_22045BB28, MEMORY[0x277D6D8C8]);
    v49 = v70;
    sub_22088BF9C();

    v50 = v73;
    sub_2207B4414(v73);
    (*(v71 + 8))(v49, v72);
    sub_22046F734(&qword_281298458, MEMORY[0x277D687E0], MEMORY[0x277D687D8]);
    v51 = v75;
    sub_220886F1C();
    (*(v74 + 8))(v50, v51);
    sub_22088995C();
    v52 = v76;
    sub_22088CE2C();
    sub_22046F734(&qword_281298400, MEMORY[0x277D688F8], MEMORY[0x277D688F0]);
    sub_220886ECC();
    v53 = *(v77 + 8);
    v54 = v56;
    v53(v52, v56);
    sub_22088CE1C();
    sub_220886EDC();

    return (v53)(v52, v54);
  }

  return result;
}

double sub_2207B7980(uint64_t a1)
{
  v2 = v1;
  v44 = *v2;
  sub_2207C121C(0, &qword_281297B38, MEMORY[0x277D6DA48]);
  v5 = v4;
  v43 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v42 = &v36 - v7;
  v8 = type metadata accessor for StockListStockModel(0);
  v39 = *(v8 - 8);
  v9 = *(v39 + 64);
  MEMORY[0x28223BE20](v8 - 8, v10);
  v40 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v12);
  v45 = &v36 - v13;
  v14 = type metadata accessor for StockListModel(0);
  MEMORY[0x28223BE20](v14, v15);
  v17 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22046B36C(0);
  v19 = v18;
  v20 = *(v18 - 8);
  MEMORY[0x28223BE20](v18, v21);
  v23 = &v36 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = a1;
  sub_22088BBEC();
  sub_22088AD8C();
  (*(v20 + 8))(v23, v19);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_2204AB5DC(v17, type metadata accessor for StockListModel);
    }
  }

  else
  {
    v37 = type metadata accessor for StockListStockModel;
    v26 = v45;
    sub_2204D1A74(v17, v45, type metadata accessor for StockListStockModel);
    v38 = *(v2 + *(*v2 + 128));
    v27 = swift_allocObject();
    swift_weakInit();
    v28 = v26;
    v29 = v40;
    sub_22047939C(v28, v40, type metadata accessor for StockListStockModel);
    v31 = v42;
    v30 = v43;
    (*(v43 + 16))(v42, v41, v5);
    v32 = (*(v39 + 80) + 40) & ~*(v39 + 80);
    v33 = (v9 + *(v30 + 80) + v32) & ~*(v30 + 80);
    v34 = swift_allocObject();
    v35 = v44;
    *(v34 + 2) = *(v44 + 80);
    *(v34 + 3) = *(v35 + 88);
    *(v34 + 4) = v27;
    sub_2204D1A74(v29, &v34[v32], v37);
    (*(v30 + 32))(&v34[v33], v31, v5);

    sub_22088726C();

    sub_2204AB5DC(v45, type metadata accessor for StockListStockModel);
  }

  return result;
}

uint64_t sub_2207B7DD8(uint64_t a1, uint64_t a2, char *a3, uint64_t a4)
{
  v153 = a4;
  v166 = a3;
  v164 = a1;
  sub_22046B36C(0);
  v145 = v4;
  v143 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v5);
  v151 = &v122 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2204A1D20(0);
  v152 = v7;
  v142 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v8);
  v160 = &v122 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22088971C();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v12);
  v144 = &v122 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v129 = sub_22088944C();
  v128 = *(v129 - 8);
  MEMORY[0x28223BE20](v129, v14);
  v127 = &v122 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16, v17);
  v126 = &v122 - v18;
  v132 = sub_22088943C();
  v131 = *(v132 - 8);
  MEMORY[0x28223BE20](v132, v19);
  v130 = &v122 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2204961E0(0);
  MEMORY[0x28223BE20](v21 - 8, v22);
  v158 = &v122 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v150 = sub_220886A4C();
  v149 = *(v150 - 8);
  MEMORY[0x28223BE20](v150, v24);
  v124 = &v122 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26, v27);
  v125 = &v122 - v28;
  v135 = sub_22088665C();
  v134 = *(v135 - 8);
  MEMORY[0x28223BE20](v135, v29);
  v133 = &v122 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2204E99F0(0);
  MEMORY[0x28223BE20](v31 - 8, v32);
  v157 = &v122 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_22088516C();
  v162 = *(v34 - 8);
  v163 = v34;
  MEMORY[0x28223BE20](v34, v35);
  v161 = &v122 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22045987C(0);
  MEMORY[0x28223BE20](v37 - 8, v38);
  v165 = &v122 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v148 = sub_22088965C();
  v147 = *(v148 - 8);
  MEMORY[0x28223BE20](v148, v40);
  v146 = &v122 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_22088915C();
  MEMORY[0x28223BE20](v42 - 8, v43);
  v45 = &v122 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v154 = sub_22088699C();
  v46 = *(v154 - 8);
  MEMORY[0x28223BE20](v154, v47);
  v49 = &v122 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_22088685C();
  v51 = *(v50 - 8);
  MEMORY[0x28223BE20](v50, v52);
  v54 = &v122 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = sub_22088914C();
  v155 = *(v55 - 8);
  v156 = v55;
  MEMORY[0x28223BE20](v55, v56);
  v58 = &v122 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  v159 = result;
  if (result)
  {
    v122 = v11;
    v123 = v10;
    (*(v51 + 16))(v54, v166, v50);
    sub_22088681C();
    sub_2208867CC();
    sub_22067D2D4(v45);
    (*(v46 + 8))(v49, v154);
    sub_22088683C();
    sub_22088912C();
    (*(v51 + 8))(v54, v50);
    sub_2204556F0(0, &qword_28127E170, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
    v61 = v60;
    v62 = sub_220886F8C();
    v63 = *(v62 - 8);
    v64 = *(v63 + 80);
    v65 = (v64 + 32) & ~v64;
    v140 = *(v63 + 72);
    v139 = v64;
    v66 = swift_allocObject();
    v136 = xmmword_220899360;
    *(v66 + 16) = xmmword_220899360;
    v67 = *MEMORY[0x277CEAD18];
    v68 = *(v63 + 104);
    v141 = v65;
    v138 = v67;
    v154 = v63 + 104;
    v137 = v68;
    v68(v66 + v65);
    sub_22046F734(&qword_281298578, MEMORY[0x277D68270], MEMORY[0x277D68268]);
    v69 = v156;
    sub_220886F1C();

    (*(v155 + 8))(v58, v69);
    v70 = type metadata accessor for StockViewModel(0);
    v71 = v165;
    v72 = v166;
    sub_22047939C(&v166[*(v70 + 20)], v165, sub_22045987C);
    v73 = sub_22088676C();
    v74 = *(v73 - 8);
    if ((*(v74 + 48))(v71, 1, v73) == 1)
    {
      result = sub_2204AB5DC(v165, sub_22045987C);
      v75 = 0.0;
    }

    else
    {
      v76 = v161;
      v77 = v165;
      sub_2208866FC();
      (*(v74 + 8))(v77, v73);
      sub_2208850DC();
      v75 = v78;
      result = (*(v162 + 8))(v76, v163);
    }

    v79 = v157;
    v80 = v158;
    if ((*&v75 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (fabs(v75) < 2147483650.0)
    {
      sub_22047939C(&v72[*(v70 + 24)], v157, sub_2204E99F0);
      v81 = type metadata accessor for StockSparklineViewModel(0);
      if ((*(*(v81 - 8) + 48))(v79, 1, v81) == 1)
      {
        result = sub_2204AB5DC(v79, sub_2204E99F0);
        v82 = 0.0;
      }

      else
      {
        v83 = v134;
        v84 = v79 + *(v81 + 32);
        v85 = v133;
        v86 = v135;
        (*(v134 + 16))(v133, v84, v135);
        sub_2204AB5DC(v79, type metadata accessor for StockSparklineViewModel);
        v87 = v161;
        sub_2208865AC();
        (*(v83 + 8))(v85, v86);
        sub_2208850DC();
        v82 = v88;
        result = (*(v162 + 8))(v87, v163);
      }

      if ((*&v82 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
      {
        if (fabs(v82) < 2147483650.0)
        {
          v89 = v146;
          sub_22088964C();
          sub_22046F734(&qword_281298488, MEMORY[0x277D686C8], MEMORY[0x277D686C0]);
          v90 = v148;
          sub_220886F1C();
          (*(v147 + 8))(v89, v90);
          v91 = *(v159 + *(*v159 + 120));
          __swift_project_boxed_opaque_existential_1((v91 + 32), *(v91 + 56));
          v92 = sub_220885FCC();
          MEMORY[0x28223BE20](v92, v93);
          *(&v122 - 2) = v72;
          sub_22059C558(sub_2207C2070, v92, v80);

          v94 = v149;
          v95 = v150;
          if ((*(v149 + 48))(v80, 1, v150) == 1)
          {
            sub_2204AB5DC(v80, sub_2204961E0);
          }

          else
          {
            v96 = *(v94 + 32);
            v166 = "stInteractor.swift";
            v97 = v125;
            v96(v125, v80, v95);
            v98 = *(v94 + 16);
            v165 = v61;
            v99 = v62;
            v100 = v124;
            v98(v124, v97, v95);
            v101 = sub_2208869AC();
            v102 = v128;
            v103 = MEMORY[0x277D68560];
            if ((v101 & 1) == 0)
            {
              v103 = MEMORY[0x277D68558];
            }

            v104 = v126;
            v105 = v94;
            v106 = v129;
            (*(v128 + 104))(v126, *v103, v129);
            (*(v102 + 16))(v127, v104, v106);
            v107 = v130;
            sub_22088942C();
            (*(v102 + 8))(v104, v106);
            v108 = *(v105 + 8);
            v109 = v100;
            v62 = v99;
            v108(v109, v95);
            v110 = v141;
            v111 = swift_allocObject();
            *(v111 + 16) = v136;
            v137(v111 + v110, v138, v99);
            sub_22046F734(&qword_2812984F0, MEMORY[0x277D68550], MEMORY[0x277D68548]);
            v112 = v132;
            sub_220886F1C();

            (*(v131 + 8))(v107, v112);
            v108(v97, v95);
          }

          v113 = v152;
          sub_2207C121C(0, &qword_281297B38, MEMORY[0x277D6DA48]);
          sub_22088BC0C();
          v114 = v151;
          sub_22088BBEC();
          sub_22046F734(&qword_281293CE0, type metadata accessor for StockListModel, &unk_2208A7BB4);
          result = sub_22088E7FC();
          if (result >= 0xFFFFFFFF80000000)
          {
            if (result <= 0x7FFFFFFF)
            {
              v115 = v144;
              sub_22088970C();
              (*(v143 + 8))(v114, v145);
              (*(v142 + 8))(v160, v113);
              v116 = v141;
              v117 = swift_allocObject();
              *(v117 + 16) = v136;
              v137(v117 + v116, v138, v62);
              sub_22046F734(&qword_281298470, MEMORY[0x277D68720], MEMORY[0x277D68718]);
              v118 = v123;
              sub_220886F1C();

              (*(v122 + 8))(v115, v118);
              sub_220889A2C();
              v119 = v161;
              sub_22088BC1C();
              sub_22046F734(&qword_2812983D0, MEMORY[0x277D68970], MEMORY[0x277D68968]);
              sub_220886ECC();
              v120 = v163;
              v121 = *(v162 + 8);
              v121(v119, v163);
              sub_22088BBFC();
              sub_220886EDC();

              return (v121)(v119, v120);
            }

LABEL_26:
            __break(1u);
            return result;
          }

LABEL_25:
          __break(1u);
          goto LABEL_26;
        }

LABEL_24:
        __break(1u);
        goto LABEL_25;
      }

LABEL_23:
      __break(1u);
      goto LABEL_24;
    }

    __break(1u);
    goto LABEL_23;
  }

  return result;
}

uint64_t sub_2207B9150(uint64_t a1, uint64_t a2)
{
  v3 = sub_2208869BC();
  v5 = v4;
  v6 = (a2 + *(type metadata accessor for StockListStockModel(0) + 24));
  if (v3 == *v6 && v5 == v6[1])
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_2208928BC();
  }

  return v8 & 1;
}

uint64_t sub_2207B91D8(uint64_t a1)
{
  v3 = type metadata accessor for EngagementEvent(0);
  MEMORY[0x28223BE20](v3, v4);
  v6 = (&v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = type metadata accessor for StockListSelectionModel(0);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22046F734(&qword_28128AD90, type metadata accessor for StockListSelectionModel, &unk_2208A0F38);
  sub_2208886AC();
  sub_22047939C(a1, v10, type metadata accessor for StockListSelectionModel);
  v11 = sub_22088685C();
  result = (*(*(v11 - 8) + 48))(v10, 2, v11);
  if (result)
  {
    if (result != 1)
    {
      return result;
    }

    __swift_project_boxed_opaque_existential_1((v1 + *(*v1 + 208)), *(v1 + *(*v1 + 208) + 24));
    v13 = *MEMORY[0x277D68EE8];
    v14 = sub_220889FFC();
    (*(*(v14 - 8) + 104))(v6, v13, v14);
    swift_storeEnumTagMultiPayload();
    sub_2204C17CC(v6);
    v15 = type metadata accessor for EngagementEvent;
    v16 = v6;
  }

  else
  {
    v15 = type metadata accessor for StockListSelectionModel;
    v16 = v10;
  }

  return sub_2204AB5DC(v16, v15);
}

uint64_t sub_2207B9424()
{
  v1 = type metadata accessor for EngagementEvent(0);
  MEMORY[0x28223BE20](v1, v2);
  v4 = (&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_1((v0 + *(*v0 + 208)), *(v0 + *(*v0 + 208) + 24));
  swift_storeEnumTagMultiPayload();
  sub_2204C17CC(v4);
  return sub_2204AB5DC(v4, type metadata accessor for EngagementEvent);
}

uint64_t sub_2207B94F4()
{
  v26[1] = *v0;
  v1 = sub_22088685C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v3);
  v5 = v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for AttributionSource(0);
  MEMORY[0x28223BE20](v6, v7);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for StockListRouteModel(0);
  MEMORY[0x28223BE20](v10, v11);
  v13 = v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for StockListSelectionModel(0);
  MEMORY[0x28223BE20](v14 - 8, v15);
  v17 = v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22088867C();
  if ((*(v2 + 48))(v17, 2, v1))
  {
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v19 = (v0 + *(*v0 + 176));
      v20 = v19[3];
      v21 = v19[4];
      __swift_project_boxed_opaque_existential_1(v19, v20);
      AttributionProviderType.source.getter(v20, v21);
      sub_22047C2BC(&v9[*(v6 + 20)], v13);
      sub_2204AB5DC(v9, type metadata accessor for AttributionSource);
      swift_storeEnumTagMultiPayload();
      sub_220781AC8(v13);
      sub_2204AB5DC(v13, type metadata accessor for StockListRouteModel);
      return swift_unknownObjectRelease();
    }
  }

  else
  {
    v22 = (*(v2 + 32))(v5, v17, v1);
    MEMORY[0x28223BE20](v22, v23);
    v26[-2] = v0;
    v26[-1] = v5;
    sub_2204556F0(0, &qword_2812994E0, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
    sub_220888FBC();
    sub_22046D5B4();
    v24 = sub_220891D0C();
    sub_2204C5D60(0, &qword_28127DDF0, MEMORY[0x277D84F78] + 8, MEMORY[0x277D83D88]);
    sub_220888E6C();

    v25 = sub_220891D0C();
    sub_220888EAC();

    return (*(v2 + 8))(v5, v1);
  }

  return result;
}

uint64_t sub_2207B9948@<X0>(uint64_t a1@<X0>, BOOL *a3@<X8>)
{
  v5 = type metadata accessor for StockListRouteModel(0);
  MEMORY[0x28223BE20](v5, v6);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = swift_unknownObjectWeakLoadStrong();
  v10 = result;
  if (result)
  {
    sub_22047C2BC(a1, v8);
    swift_storeEnumTagMultiPayload();
    sub_220781AC8(v8);
    sub_2204AB5DC(v8, type metadata accessor for StockListRouteModel);
    result = swift_unknownObjectRelease();
  }

  *a3 = v10 == 0;
  return result;
}

uint64_t sub_2207B9A3C(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for AttributionSource(0);
  MEMORY[0x28223BE20](v3, v4);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for StockListRouteModel(0);
  MEMORY[0x28223BE20](v7, v8);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v12 = (a2 + *(*a2 + 176));
    v13 = v12[3];
    v14 = v12[4];
    __swift_project_boxed_opaque_existential_1(v12, v13);
    AttributionProviderType.source.getter(v13, v14);
    sub_22047C2BC(&v6[*(v3 + 20)], v10);
    sub_2204AB5DC(v6, type metadata accessor for AttributionSource);
    swift_storeEnumTagMultiPayload();
    sub_220781AC8(v10);
    sub_2204AB5DC(v10, type metadata accessor for StockListRouteModel);
    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_2207B9BC4(uint64_t a1, int a2)
{
  v145 = a2;
  v150 = *v2;
  sub_2206AA758(0);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v135 = &v131 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22045987C(0);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v141 = &v131 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v147 = sub_22088CA0C();
  v146 = *(v147 - 8);
  MEMORY[0x28223BE20](v147, v10);
  v143 = &v131 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v157 = sub_2208854AC();
  v154 = *(v157 - 8);
  MEMORY[0x28223BE20](v157, v12);
  v153 = &v131 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v149 = sub_22088685C();
  v148 = *(v149 - 8);
  MEMORY[0x28223BE20](v149, v14);
  v136 = &v131 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16, v17);
  v142 = &v131 - v18;
  v19 = type metadata accessor for StockListSelectionModel(0);
  MEMORY[0x28223BE20](v19 - 8, v20);
  v138 = &v131 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22, v23);
  v140 = &v131 - v24;
  v25 = sub_22088BC8C();
  v26 = *(v25 - 8);
  v155 = v25;
  v156 = v26;
  MEMORY[0x28223BE20](v25, v27);
  v139 = &v131 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29, v30);
  ObjectType = &v131 - v31;
  MEMORY[0x28223BE20](v32, v33);
  v144 = &v131 - v34;
  MEMORY[0x28223BE20](v35, v36);
  v158 = &v131 - v37;
  v38 = type metadata accessor for StockListModel(0);
  MEMORY[0x28223BE20](v38, v39);
  v41 = &v131 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22046B36C(0);
  v43 = v42;
  v44 = *(v42 - 8);
  MEMORY[0x28223BE20](v42, v45);
  v47 = &v131 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = type metadata accessor for StockListStockModel(0);
  v137 = *(v48 - 8);
  v49 = *(v137 + 64);
  MEMORY[0x28223BE20](v48 - 8, v50);
  MEMORY[0x28223BE20](v51, v52);
  v54 = &v131 - v53;
  sub_22088CEEC();
  sub_22088AD8C();
  (*(v44 + 8))(v47, v43);
  if (swift_getEnumCaseMultiPayload())
  {
    sub_2204AB5DC(v41, type metadata accessor for StockListModel);
    sub_22088CF0C();
    return;
  }

  v133 = v49;
  v134 = &v131 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = ObjectType;
  v55 = v153;
  v57 = v154;
  v58 = v157;
  sub_2204D1A74(v41, v54, type metadata accessor for StockListStockModel);
  v59 = v158;
  v60 = a1;
  sub_22088CEFC();
  v62 = v155;
  v61 = v156;
  v132 = *(v156 + 88);
  v63 = v132(v59, v155);
  if (v63 == *MEMORY[0x277D6DA60])
  {
    v64.n128_f64[0] = (*(v61 + 96))(v59, v62);
    sub_220690814(0, v64);
    (v57)[4](v55, &v59[*(v65 + 48)], v58);
    v66 = sub_22088548C();
    v68 = *(v150 + 10);
    v67 = *(v150 + 11);
    v160 = (*(v67 + 88))(v54, v66, v60, v68, v67);
    v69 = swift_allocObject();
    swift_weakInit();
    v70 = swift_allocObject();
    v70[2] = v68;
    v70[3] = v67;
    v70[4] = v69;
    sub_2204AB448(0);
    sub_22046F734(&qword_281297D28, sub_2204AB448, MEMORY[0x277D6D890]);

    sub_22088B6DC();

    v71 = v57[1];
    v72 = v157;
    v71(v55, v157);
    sub_2204AB5DC(v54, type metadata accessor for StockListStockModel);

    v71(v158, v72);
    return;
  }

  if (v63 != *MEMORY[0x277D6DA70])
  {
    v157 = v60;
    v131 = v54;
    v82 = v144;
    v153 = *(v61 + 16);
    (v153)(v144, v59, v62);
    *v56 = 0x6D79536572616853;
    v56[1] = 0xEB000000006C6F62;
    v83 = *(v61 + 104);
    LODWORD(v154) = *MEMORY[0x277D6DA68];
    v150 = v83;
    v83(v56);
    sub_22046F734(&qword_27CF59CB8, MEMORY[0x277D6DA80], MEMORY[0x277D6DA88]);
    v84 = sub_2208912FC();
    v85 = *(v61 + 8);
    (v85)(v56, v62);
    (v85)(v82, v62);
    v156 = v61 + 8;
    if (v84)
    {
      v154 = v85;
      (*(v146 + 104))(v143, *MEMORY[0x277D6E0E0], v147);
      v86 = v151;
      v87 = *(v151 + *(*v151 + 128));
      v162 = sub_22088731C();
      v163 = sub_22046F734(&qword_281298BF0, MEMORY[0x277CEAEA8], MEMORY[0x277D319D8]);
      v160 = v87;

      sub_22088CEBC();
      v164 = 0u;
      v165 = 0u;
      v166 = 1;
      sub_22088C4DC();
      swift_allocObject();
      sub_22088C4BC();
      v88 = (v86 + *(*v86 + 136));
      v89 = *v88;
      v153 = v88[1];
      v157 = v89;
      ObjectType = swift_getObjectType();
      if (qword_281297080 != -1)
      {
        swift_once();
      }

      v151 = qword_2812B6CA8;
      v90 = v148;
      v91 = *(v148 + 16);
      v92 = v142;
      v93 = v131;
      v94 = v149;
      v91(v142, v131, v149);
      v95 = type metadata accessor for StockViewModel(0);
      v96 = v141;
      sub_22047939C(v93 + *(v95 + 20), v141, sub_22045987C);
      v97 = type metadata accessor for StockShareActivityItemSource(0);
      v98 = objc_allocWithZone(v97);
      v91(&v98[OBJC_IVAR____TtC8StocksUI28StockShareActivityItemSource_stock], v92, v94);
      sub_22047939C(v96, &v98[OBJC_IVAR____TtC8StocksUI28StockShareActivityItemSource_quote], sub_22045987C);
      v159.receiver = v98;
      v159.super_class = v97;
      v99 = objc_msgSendSuper2(&v159, sel_init);
      sub_2204AB5DC(v96, sub_22045987C);
      (*(v90 + 8))(v92, v94);
      v160 = v99;
      v161 = 2;

      sub_22088B7AC();

      sub_2204AB5DC(v131, type metadata accessor for StockListStockModel);
      v100 = v158;
    }

    else
    {
      v107 = v139;
      (v153)(v139, v158, v62);
      *v56 = 0x61576567616E614DLL;
      v56[1] = 0xEF7473696C686374;
      (v150)(v56, v154, v62);
      v108 = sub_2208912FC();
      (v85)(v56, v62);
      (v85)(v107, v62);
      v109 = v85;
      if ((v108 & 1) == 0)
      {
        v116 = v158;
        v117 = (v132)(v158, v62, v147);
        v118 = v131;
        if (v117 == v154)
        {
          v109(v116, v62);
        }

        else if (v117 != *MEMORY[0x277D6DA78])
        {
          sub_22088CF0C();
          sub_2204AB5DC(v118, type metadata accessor for StockListStockModel);
          v109(v116, v62);
          return;
        }

        sub_22088CF0C();
        sub_2204AB5DC(v118, type metadata accessor for StockListStockModel);
        return;
      }

      v154 = v85;
      v110 = v158;
      (*(v146 + 104))(v143, *MEMORY[0x277D6E0E0], v147);
      v111 = *(v151 + *(*v151 + 128));
      v162 = sub_22088731C();
      v163 = sub_22046F734(&qword_281298BF0, MEMORY[0x277CEAEA8], MEMORY[0x277D319D8]);
      v160 = v111;

      sub_22088CEBC();
      v164 = 0u;
      v165 = 0u;
      v166 = 1;
      sub_22088C4DC();
      swift_allocObject();
      sub_22088C4BC();
      swift_getObjectType();
      v112 = v131;
      if (qword_281296F90 != -1)
      {
        swift_once();
      }

      v113 = v148;
      v114 = v135;
      v115 = v149;
      (*(v148 + 16))(v135, v112, v149);
      (*(v113 + 56))(v114, 0, 1, v115);

      sub_22088B7AC();

      sub_2204AB5DC(v114, sub_2206AA758);
      sub_2204AB5DC(v112, type metadata accessor for StockListStockModel);
      v100 = v110;
    }

    (v154)(v100, v155);
    return;
  }

  if (v145)
  {
    v73 = v60;
    v74 = v54;
    v75 = v140;
    sub_22088867C();
    v76 = v138;
    sub_22047939C(v75, v138, type metadata accessor for StockListSelectionModel);
    v77 = v148;
    v78 = v149;
    v79 = (*(v148 + 48))(v76, 2, v149);
    if (v79)
    {
      v80 = v134;
      if (v79 == 1)
      {
        v158 = 0xE500000000000000;
        v81 = 0x7961646F74;
      }

      else
      {
        v158 = 0xE400000000000000;
        v81 = 1701736302;
      }

      v156 = v81;
      v121 = v150;
    }

    else
    {
      v119 = v142;
      (*(v77 + 32))(v142, v76, v78);
      v156 = sub_22088677C();
      v158 = v120;
      (*(v77 + 8))(v119, v78);
      v121 = v150;
      v80 = v134;
    }

    sub_2204AB5DC(v75, type metadata accessor for StockListSelectionModel);
    v123 = *(v121 + 10);
    v122 = *(v121 + 11);
    v124 = v73;
    v157 = (*(v122 + 80))(v73, v123, v122);
    v160 = v157;
    v125 = swift_allocObject();
    swift_weakInit();
    v131 = v74;
    sub_22047939C(v74, v80, type metadata accessor for StockListStockModel);
    v126 = (*(v137 + 80) + 40) & ~*(v137 + 80);
    v127 = (v133 + v126 + 7) & 0xFFFFFFFFFFFFFFF8;
    v128 = swift_allocObject();
    v128[2] = v123;
    v128[3] = v122;
    v128[4] = v125;
    sub_2204D1A74(v80, v128 + v126, type metadata accessor for StockListStockModel);
    *(v128 + v127) = v124;
    v129 = (v128 + ((v127 + 15) & 0xFFFFFFFFFFFFFFF8));
    v130 = v158;
    *v129 = v156;
    v129[1] = v130;
    sub_2204AB448(0);
    sub_22046F734(&qword_281297D28, sub_2204AB448, MEMORY[0x277D6D890]);

    sub_22088B6DC();

    sub_2204AB5DC(v131, type metadata accessor for StockListStockModel);
  }

  else
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    v102 = v149;
    if (Strong)
    {
      v103 = v148;
      v104 = v136;
      (*(v148 + 16))(v136, v54, v149);
      v105 = swift_unknownObjectWeakLoadStrong();
      if (v105)
      {
        sub_2207C15B0(v106, v104, v60, v105);
        swift_unknownObjectRelease();
      }

      swift_unknownObjectRelease();
      (*(v103 + 8))(v104, v102);
    }

    sub_2204AB5DC(v54, type metadata accessor for StockListStockModel);
  }
}

void sub_2207BB000(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v43 = a7;
  v44 = a8;
  v46 = a5;
  v47 = a6;
  v48 = a4;
  v42 = a3;
  v9 = type metadata accessor for StockListSelectionModel(0);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v41 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22046B36C(0);
  v13 = v12;
  v45 = *(v12 - 8);
  MEMORY[0x28223BE20](v12, v14);
  v16 = &v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for StockListStockModel(0);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17 - 8, v20);
  v21 = &v40 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_22088C6AC();
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22, v24);
  v26 = &v40 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v28 = Strong;
    (*(v23 + 16))(v26, a1, v22);
    v29 = (*(v23 + 88))(v26, v22);
    if (v29 == *MEMORY[0x277D6DF98])
    {
      (*(v23 + 8))(v26, v22);
    }

    else if (v29 != *MEMORY[0x277D6DF90])
    {
      if (v29 != *MEMORY[0x277D6DFA0])
      {
        sub_22089267C();
        __break(1u);
        return;
      }

      sub_22047939C(v42, &v40 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for StockListStockModel);
      v30 = (*(v18 + 80) + 32) & ~*(v18 + 80);
      v31 = (v19 + v30 + 7) & 0xFFFFFFFFFFFFFFF8;
      v32 = swift_allocObject();
      v33 = v44;
      *(v32 + 16) = v43;
      *(v32 + 24) = v33;
      sub_2204D1A74(v21, v32 + v30, type metadata accessor for StockListStockModel);
      *(v32 + v31) = v28;

      sub_22088726C();

      if (sub_2204D0EE0())
      {
        sub_2207BBD88();
      }

      sub_22088CEEC();
      v34 = sub_22088AD4C();
      v36 = v35;
      (*(v45 + 8))(v16, v13);
      if (v34 == v46 && v36 == v47)
      {
      }

      else
      {
        v37 = sub_2208928BC();

        if ((v37 & 1) == 0)
        {
          goto LABEL_6;
        }
      }

      v38 = sub_22088685C();
      v39 = v41;
      (*(*(v38 - 8) + 56))(v41, 2, 2, v38);
      sub_22046F734(&qword_28128AD90, type metadata accessor for StockListSelectionModel, &unk_2208A0F38);
      sub_2208886AC();
      sub_2204AB5DC(v39, type metadata accessor for StockListSelectionModel);
      goto LABEL_6;
    }

    sub_22088CF0C();
LABEL_6:
  }
}

uint64_t sub_2207BB530(uint64_t a1, uint64_t a2, uint64_t a3, __n128 a4)
{
  v63 = a3;
  v72 = a2;
  v73 = a1;
  v69 = sub_22088944C();
  v65 = *(v69 - 8);
  MEMORY[0x28223BE20](v69, v4);
  v67 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v7);
  v64 = &v49 - v8;
  v68 = sub_220886A4C();
  v66 = *(v68 - 8);
  MEMORY[0x28223BE20](v68, v9);
  v61 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_22088943C();
  v12 = *(v11 - 8);
  v70 = v11;
  v71 = v12;
  MEMORY[0x28223BE20](v11, v13);
  v62 = &v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_22088915C();
  MEMORY[0x28223BE20](v15 - 8, v16);
  v18 = &v49 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = sub_22088699C();
  v19 = *(v55 - 8);
  MEMORY[0x28223BE20](v55, v20);
  v22 = &v49 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_22088685C();
  v24 = *(v23 - 8);
  MEMORY[0x28223BE20](v23, v25);
  v27 = &v49 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = sub_22088914C();
  v57 = *(v56 - 8);
  v29 = MEMORY[0x28223BE20](v56, v28);
  v31 = &v49 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = *(v24 + 16);
  v59 = v24 + 16;
  v60 = v32;
  v58 = v23;
  (v32)(v27, v72, v23, v29);
  sub_22088681C();
  sub_2208867CC();
  sub_22067D2D4(v18);
  (*(v19 + 8))(v22, v55);
  sub_22088683C();
  sub_22088912C();
  (*(v24 + 8))(v27, v23);
  sub_2204556F0(0, &qword_28127E170, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
  v55 = v33;
  v52 = sub_220886F8C();
  v34 = *(v52 - 8);
  v54 = *(v34 + 72);
  v35 = (*(v34 + 80) + 32) & ~*(v34 + 80);
  v36 = swift_allocObject();
  v53 = xmmword_220899360;
  *(v36 + 16) = xmmword_220899360;
  v51 = *MEMORY[0x277CEAD18];
  v50 = *(v34 + 104);
  v50(v36 + v35);
  v49 = "stInteractor.swift";
  sub_22046F734(&qword_281298578, MEMORY[0x277D68270], MEMORY[0x277D68268]);
  v37 = v56;
  sub_220886F1C();

  (*(v57 + 8))(v31, v37);
  v38 = *(v63 + *(*v63 + 120));
  __swift_project_boxed_opaque_existential_1((v38 + 32), *(v38 + 56));
  v39 = v61;
  sub_2208863EC();
  v40 = sub_2208869AC();
  v42 = v64;
  v41 = v65;
  v43 = MEMORY[0x277D68560];
  if ((v40 & 1) == 0)
  {
    v43 = MEMORY[0x277D68558];
  }

  v44 = v69;
  (*(v65 + 104))(v64, *v43, v69);
  (*(v41 + 16))(v67, v42, v44);
  v45 = v62;
  sub_22088942C();
  (*(v41 + 8))(v42, v44);
  (*(v66 + 8))(v39, v68);
  v46 = swift_allocObject();
  *(v46 + 16) = v53;
  (v50)(v46 + v35, v51, v52);
  sub_22046F734(&qword_2812984F0, MEMORY[0x277D68550], MEMORY[0x277D68548]);
  v47 = v70;
  sub_220886F1C();

  (*(v71 + 8))(v45, v47);
  sub_22088994C();
  v60(v27, v72, v58);
  v74[3] = sub_22088A7BC();
  __swift_allocate_boxed_opaque_existential_1(v74);
  sub_22088A7AC();
  sub_22046F734(&qword_27CF587A0, MEMORY[0x277D688E8], MEMORY[0x277D688D0]);
  sub_220886F3C();
  return sub_22056D130(v74);
}

double sub_2207BBD88()
{
  v1 = v0;
  v2 = *v0;
  v3 = type metadata accessor for AttributionSource(0);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_2204D0EE0())
  {
    v8 = *(*v0 + 184);
    v9 = (v0 + v8);
    v10 = *(v0 + v8 + 24);
    v11 = *(v1 + v8 + 32);
    __swift_project_boxed_opaque_existential_1(v9, *(v1 + v8 + 24));
    AttributionProviderType.source.getter(v10, v11);
    v12 = (*(*(v2 + 88) + 120))(v6, *(v2 + 80));
    sub_2204AB5DC(v6, type metadata accessor for AttributionSource);
    v14[1] = v12;
    sub_2204AB448(0);
    sub_22046F734(&qword_281297D28, sub_2204AB448, MEMORY[0x277D6D890]);
    sub_22088B6DC();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      sub_220789A70(Strong);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_2207BBF64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_22088F11C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &aBlock[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_22088F14C();
  v11 = *(v20 - 8);
  MEMORY[0x28223BE20](v20, v12);
  v14 = &aBlock[-1] - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22046D5B4();
  v15 = sub_220891D0C();
  v16 = swift_allocObject();
  swift_beginAccess();
  swift_weakLoadStrong();
  swift_weakInit();

  v17 = swift_allocObject();
  v17[2] = a3;
  v17[3] = a4;
  v17[4] = v16;
  aBlock[4] = sub_2207C1EC0;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2204C35E8;
  aBlock[3] = &block_descriptor_106;
  v18 = _Block_copy(aBlock);

  sub_22088F13C();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_22046F734(&qword_281296CA0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  sub_22056D204(0);
  sub_22046F734(&qword_28127EA50, sub_22056D204, MEMORY[0x277D83970]);
  sub_2208923FC();
  MEMORY[0x223D89EC0](0, v14, v10, v18);
  _Block_release(v18);

  (*(v7 + 8))(v10, v6);
  return (*(v11 + 8))(v14, v20);
}

uint64_t sub_2207BC28C(uint64_t a1)
{
  sub_2204D04A4(0);
  MEMORY[0x28223BE20](v1 - 8, v2);
  v4 = v44 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_22088685C();
  v49 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v6);
  v8 = v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for StockListSelectionModel(0);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v12 = v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v14);
  v16 = v44 - v15;
  sub_2204A1D20(0);
  v18 = v17;
  v50 = *(v17 - 8);
  MEMORY[0x28223BE20](v17, v19);
  v47 = v44 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21, v22);
  v24 = v44 - v23;
  sub_2204CF334(0);
  MEMORY[0x28223BE20](v25 - 8, v26);
  v28 = v44 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22046B36C(0);
  v51 = *(v29 - 8);
  v52 = v29;
  MEMORY[0x28223BE20](v29, v30);
  v48 = v44 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v45 = v4;
    v46 = v8;
    sub_22088B6BC();
    v53 = v54;
    sub_22045BB28(0);
    v34 = v33;
    v44[1] = sub_22046F734(&qword_281297C90, sub_22045BB28, MEMORY[0x277D6D8C8]);
    v44[2] = v34;
    sub_22088BF9C();

    sub_22088867C();
    sub_22047939C(v16, v12, type metadata accessor for StockListSelectionModel);
    v35 = v49;
    if (!(*(v49 + 48))(v12, 2, v5))
    {
      v36 = v46;
      (*(v35 + 32))(v46, v12, v5);
      sub_22088677C();
      (*(v35 + 8))(v36, v5);
    }

    v37 = v52;
    sub_2204AB5DC(v16, type metadata accessor for StockListSelectionModel);
    sub_22088E70C();

    v38 = *(v50 + 8);
    v38(v24, v18);
    v39 = v51;
    if ((*(v51 + 48))(v28, 1, v37) == 1)
    {

      return sub_2204AB5DC(v28, sub_2204CF334);
    }

    else
    {
      v40 = v48;
      (*(v39 + 32))(v48, v28, v37);
      if (swift_unknownObjectWeakLoadStrong())
      {
        sub_22088B6BC();
        v53 = v54;
        v41 = v47;
        sub_22088BF9C();

        v42 = v45;
        sub_22088E7EC();
        v38(v41, v18);
        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          sub_2204D0828(v42, Strong);

          swift_unknownObjectRelease();
        }

        else
        {
        }

        swift_unknownObjectRelease();
        sub_2204AB5DC(v42, sub_2204D04A4);
        return (*(v39 + 8))(v40, v52);
      }

      else
      {

        return (*(v39 + 8))(v40, v37);
      }
    }
  }

  return result;
}

uint64_t sub_2207BC898(__int128 *a1)
{
  v3 = sub_220886A4C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for StocksActivity(0);
  MEMORY[0x28223BE20](v8, v9);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v1 + *(*v1 + 120));
  __swift_project_boxed_opaque_existential_1((v12 + 32), *(v12 + 56));
  v13 = a1[1];
  v19 = *a1;
  v20 = v13;

  sub_2208863EC();
  v14 = sub_2208869BC();
  v16 = v15;
  (*(v4 + 8))(v7, v3);
  v17 = v20;
  *v11 = v19;
  *(v11 + 1) = v17;
  *(v11 + 4) = v14;
  *(v11 + 5) = v16;
  swift_storeEnumTagMultiPayload();
  sub_22088BDBC();
  return sub_2204AB5DC(v11, type metadata accessor for StocksActivity);
}

double sub_2207BCA7C(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v55 = a4;
  v57 = a2;
  v60 = a1;
  v53 = *v4;
  v6 = type metadata accessor for StockListStockModel(0);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v46 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = type metadata accessor for StockListModel(0);
  MEMORY[0x28223BE20](v59, v9);
  v58 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = sub_22088BCAC();
  v54 = *(v56 - 8);
  MEMORY[0x28223BE20](v56, v11);
  v52 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_22088BC8C();
  v50 = *(v13 - 8);
  v51 = v13;
  MEMORY[0x28223BE20](v13, v14);
  v49 = &v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22046B36C(0);
  v48 = v16;
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16, v18);
  v47 = &v44 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_2208854AC();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  v24 = MEMORY[0x28223BE20](v20, v23);
  v25 = &v44 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = *(v21 + 16);
  v26(v25, a3, v20, v24);
  v27 = (*(v21 + 80) + 41) & ~*(v21 + 80);
  v28 = swift_allocObject();
  v29 = v53;
  v53 = *(v53 + 80);
  *(v28 + 16) = v53;
  v45 = *(v29 + 88);
  *(v28 + 24) = v45;
  *(v28 + 32) = v4;
  *(v28 + 40) = v55;
  v30 = v28 + v27;
  v31 = a3;
  (*(v21 + 32))(v30, v25, v20);
  v32.n128_f64[0] = (*(v17 + 16))(v47, v60, v48);
  sub_220690814(0, v32);
  v34 = *(v33 + 48);
  v35 = v49;
  (v26)(v49, v57, v20);
  v57 = v31;
  (v26)(&v35[v34], v31, v20);
  (*(v50 + 104))(v35, *MEMORY[0x277D6DA60], v51);
  (*(v54 + 104))(v52, *MEMORY[0x277D6DAA0], v56);
  v36 = swift_allocObject();
  *(v36 + 16) = sub_2207C1AAC;
  *(v36 + 24) = v28;
  sub_2207C1B14(0, &qword_27CF58128, MEMORY[0x277D6E3E0]);
  swift_allocObject();

  v37 = sub_22088CEDC();
  v38 = v58;
  sub_22088AD8C();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {

      sub_2204AB5DC(v38, type metadata accessor for StockListModel);
      return result;
    }
  }

  else
  {
    v41 = v46;
    sub_2204D1A74(v38, v46, type metadata accessor for StockListStockModel);
    v42 = sub_22088548C();
    v61 = (*(v45 + 88))(v41, v42, v37, v53);
    v43 = swift_allocObject();
    *(v43 + 16) = sub_2207C1AAC;
    *(v43 + 24) = v28;
    sub_2204AB448(0);
    sub_22046F734(&qword_281297D28, sub_2204AB448, MEMORY[0x277D6D890]);

    sub_22088B6DC();

    sub_2204AB5DC(v41, type metadata accessor for StockListStockModel);
  }

  return result;
}

uint64_t sub_2207BD11C(uint64_t *a1, int a2, uint64_t a3)
{
  v25 = a2;
  v4 = *a1;
  v27 = sub_22088F11C();
  v30 = *(v27 - 8);
  MEMORY[0x28223BE20](v27, v5);
  v7 = &v24[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_22088F14C();
  v28 = *(v8 - 8);
  v29 = v8;
  MEMORY[0x28223BE20](v8, v9);
  v11 = &v24[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = sub_2208854AC();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12, v15);
  v16 = &v24[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_22046D5B4();
  v26 = sub_220891D0C();
  v17 = swift_allocObject();
  swift_weakInit();
  (*(v13 + 16))(v16, a3, v12);
  v18 = (*(v13 + 80) + 41) & ~*(v13 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = *(v4 + 80);
  *(v19 + 24) = *(v4 + 88);
  *(v19 + 32) = v17;
  *(v19 + 40) = v25;
  (*(v13 + 32))(v19 + v18, v16, v12);
  aBlock[4] = sub_2207C1C74;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2204C35E8;
  aBlock[3] = &block_descriptor_82;
  v20 = _Block_copy(aBlock);

  sub_22088F13C();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_22046F734(&qword_281296CA0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  sub_22056D204(0);
  sub_22046F734(&qword_28127EA50, sub_22056D204, MEMORY[0x277D83970]);
  v21 = v27;
  sub_2208923FC();
  v22 = v26;
  MEMORY[0x223D89EC0](0, v11, v7, v20);
  _Block_release(v20);

  (*(v30 + 8))(v7, v21);
  return (*(v28 + 8))(v11, v29);
}

double sub_2207BD518(uint64_t a1, char a2, uint64_t a3)
{
  sub_2204D04A4(0);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v10);
  v12 = &v19 - v11;
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    if ((a2 & 1) != 0 && swift_unknownObjectWeakLoadStrong())
    {
      v14 = sub_2208854AC();
      v15 = *(v14 - 8);
      (*(v15 + 16))(v12, a3, v14);
      (*(v15 + 56))(v12, 0, 1, v14);
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        sub_2204D0828(v12, Strong);
        swift_unknownObjectRelease();
      }

      swift_unknownObjectRelease();
      sub_2204AB5DC(v12, sub_2204D04A4);
    }

    if (swift_unknownObjectWeakLoadStrong())
    {
      v17 = sub_2208854AC();
      v18 = *(v17 - 8);
      (*(v18 + 16))(v8, a3, v17);
      (*(v18 + 56))(v8, 0, 1, v17);
      sub_22078974C(v8);

      swift_unknownObjectRelease();
      sub_2204AB5DC(v8, sub_2204D04A4);
    }

    else
    {
    }
  }

  return result;
}

void sub_2207BD7B4(int a1, uint64_t a2, uint64_t a3)
{
  v46 = a1;
  v42 = *v3;
  v6 = v42;
  v7 = sub_22088F11C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v45 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_22088F14C();
  v44 = *(v11 - 8);
  MEMORY[0x28223BE20](v11, v12);
  v43 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v3 + *(v6 + 232));
  v57[0] = 0;
  v56 = v14;
  sub_2204C59CC(0, &qword_281298020, sub_22047D138, &type metadata for StockListRefreshBlocker, MEMORY[0x277D6D370]);
  sub_2204C5950(&qword_27CF59CB0, MEMORY[0x277D6D378]);

  v15 = sub_22089160C();
  if (v15 == 2)
  {
    v36 = v11;
    v39 = v3;
    v37 = v8;
    v38 = v7;
    v40 = a3;
    v41 = a2;
    aBlock = v14;

    sub_2208915BC();
    sub_2204C5950(&qword_281298030, MEMORY[0x277D6D380]);
    while (1)
    {
      sub_22089199C();
      if (v55 & 1) != 0 || (v49)
      {
        __break(1u);
        return;
      }

      if (v54 != v48)
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v53 == aBlock)
      {

        a2 = v41;
        goto LABEL_15;
      }

      v16 = sub_2208919BC();
      v18 = *v17;
      v16(&aBlock, 0);
      sub_2208919AC();
      if (v18 != 1 && v18 != 2)
      {
        break;
      }

      a2 = sub_2208928BC();

      if (a2)
      {
        goto LABEL_19;
      }
    }

LABEL_19:

    sub_220707710(v53, v54, v55);

    a3 = v40;
    a2 = v41;
    v7 = v38;
    v8 = v37;
    v11 = v36;
    if ((v46 & 1) == 0)
    {
      goto LABEL_25;
    }

    goto LABEL_20;
  }

  v19 = v15;

  if (v19)
  {
    if ((v46 & 1) == 0)
    {
LABEL_25:
      if (qword_281298078 != -1)
      {
        swift_once();
      }

      v25 = sub_22088A84C();
      __swift_project_value_buffer(v25, qword_2812B6CB8);
      v26 = sub_22088A82C();
      v27 = sub_220891AFC();
      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        *v28 = 0;
        _os_log_impl(&dword_22043F000, v26, v27, "Stock list coming out of editing state", v28, 2u);
        MEMORY[0x223D8B7F0](v28, -1, -1);
      }

      sub_2204A78A0(0, 0, 0);
      sub_22046D5B4();
      v29 = sub_220891D0C();
      v30 = swift_allocObject();
      swift_weakInit();
      v31 = swift_allocObject();
      v32 = v42;
      v31[2] = *(v42 + 80);
      v31[3] = *(v32 + 88);
      v31[4] = a2;
      v31[5] = a3;
      v31[6] = v30;
      v51 = sub_2207C1A9C;
      v52 = v31;
      aBlock = MEMORY[0x277D85DD0];
      v48 = 1107296256;
      v49 = sub_2204C35E8;
      v50 = &block_descriptor_46;
      v33 = _Block_copy(&aBlock);
      sub_2204A80F0(a2, a3);

      v34 = v43;
      sub_22088F13C();
      aBlock = MEMORY[0x277D84F90];
      sub_22046F734(&qword_281296CA0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
      sub_22056D204(0);
      sub_22046F734(&qword_28127EA50, sub_22056D204, MEMORY[0x277D83970]);
      v35 = v45;
      sub_2208923FC();
      MEMORY[0x223D89EC0](0, v34, v35, v33);
      _Block_release(v33);

      (*(v8 + 8))(v35, v7);
      (*(v44 + 8))(v34, v11);
      return;
    }

    goto LABEL_20;
  }

LABEL_15:
  if (v46)
  {
LABEL_20:
    if (qword_281298078 != -1)
    {
LABEL_32:
      swift_once();
    }

    v21 = sub_22088A84C();
    __swift_project_value_buffer(v21, qword_2812B6CB8);
    v22 = sub_22088A82C();
    v23 = sub_220891AFC();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_22043F000, v22, v23, "Stock list entering editing state", v24, 2u);
      MEMORY[0x223D8B7F0](v24, -1, -1);
    }

    sub_2207BE064(0);
    if (a2)
    {
      goto LABEL_24;
    }

    return;
  }

  if (a2)
  {
LABEL_24:
    (a2)(v20);
  }
}

uint64_t sub_2207BDF68(void (*a1)(__n128), uint64_t a2, uint64_t a3)
{
  v4 = type metadata accessor for StockListSelectionModel(0);
  v6 = MEMORY[0x28223BE20](v4 - 8, v5);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    a1(v6);
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_22088867C();
    sub_2204CFC28(v8, v10);

    return sub_2204AB5DC(v8, type metadata accessor for StockListSelectionModel);
  }

  return result;
}

double sub_2207BE064(char a1)
{
  if (qword_281298078 != -1)
  {
    swift_once();
  }

  v2 = sub_22088A84C();
  __swift_project_value_buffer(v2, qword_2812B6CB8);
  v3 = sub_22088A82C();
  v4 = sub_220891AFC();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v11 = v6;
    *v5 = 136315138;
    if (a1)
    {
      if (a1 == 1)
      {
        v7 = 0xD000000000000012;
      }

      else
      {
        v7 = 0x6E696C6C6F726373;
      }

      if (a1 == 1)
      {
        v8 = 0x80000002208BECB0;
      }

      else
      {
        v8 = 0xE900000000000067;
      }
    }

    else
    {
      v8 = 0xE700000000000000;
      v7 = 0x676E6974696465;
    }

    v9 = sub_2204A7B78(v7, v8, &v11);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_22043F000, v3, v4, "Stock list refreshing will be blocked by: %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v6);
    MEMORY[0x223D8B7F0](v6, -1, -1);
    MEMORY[0x223D8B7F0](v5, -1, -1);
  }

  v12 = a1;

  sub_22088ACAC();

  return result;
}

uint64_t sub_2207BE26C(uint64_t a1, uint64_t a2)
{
  sub_22045BAA4(0);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_220885D4C();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  v9 = *(*a1 + 248);
  swift_beginAccess();
  sub_2207C1A18(v7, a1 + v9, sub_22045BAA4);
  swift_endAccess();
  if (qword_281298078 != -1)
  {
    swift_once();
  }

  v10 = sub_22088A84C();
  __swift_project_value_buffer(v10, qword_2812B6CB8);
  v11 = sub_22088A82C();
  v12 = sub_220891AFC();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_22043F000, v11, v12, "Stock list is being refreshed with queued price data", v13, 2u);
    MEMORY[0x223D8B7F0](v13, -1, -1);
  }

  return sub_2204C5A34(a2, v14);
}

void sub_2207BE43C(uint64_t a1, void (*a2)(uint64_t))
{
  sub_2204558B8(0);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22088582C();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  v9 = *(*a1 + 240);
  swift_beginAccess();
  sub_2207C1A18(v7, a1 + v9, sub_2204558B8);
  v10 = swift_endAccess();
  if (a2)
  {
    a2(v10);
  }
}

uint64_t sub_2207BE55C(uint64_t a1, uint64_t a2, const char *a3, uint64_t (*a4)(uint64_t))
{
  if (qword_281298078 != -1)
  {
    swift_once();
  }

  v7 = sub_22088A84C();
  __swift_project_value_buffer(v7, qword_2812B6CB8);
  v8 = sub_22088A82C();
  v9 = sub_220891AFC();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_22043F000, v8, v9, a3, v10, 2u);
    MEMORY[0x223D8B7F0](v10, -1, -1);
  }

  return a4(a2);
}

void sub_2207BE668(uint64_t a1, void (*a2)(uint64_t))
{
  sub_22045BAA4(0);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_220885D4C();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  v9 = *(*a1 + 248);
  swift_beginAccess();
  sub_2207C1A18(v7, a1 + v9, sub_22045BAA4);
  v10 = swift_endAccess();
  if (a2)
  {
    a2(v10);
  }
}

double sub_2207BE788(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8)
{
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = a2;
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v13 = swift_allocObject();
    swift_weakInit();
    v14 = swift_allocObject();
    v14[2] = a7;
    v14[3] = a8;
    v14[4] = v13;
    v14[5] = sub_2207C265C;
    v14[6] = v12;
    sub_22046F734(&qword_281297D28, sub_2204AB448, MEMORY[0x277D6D890]);

    sub_22088B6DC();
  }

  else
  {
  }

  return result;
}

double sub_2207BE948(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = sub_220886A4C();
  v33 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v10);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22045BAA4(0);
  MEMORY[0x28223BE20](v13 - 8, v14);
  v16 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2204B5FB8(0);
  MEMORY[0x28223BE20](v17 - 8, v18);
  v20 = &v29 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v23 = Strong;
    v24 = swift_unknownObjectWeakLoadStrong();
    if (v24)
    {
      v32 = v24;
      v25 = sub_220885DFC();
      (*(*(v25 - 8) + 56))(v20, 1, 1, v25);
      v26 = *(v23 + *(*v23 + 120));
      v30 = a6;
      v31 = a5;
      __swift_project_boxed_opaque_existential_1((v26 + 32), *(v26 + 56));

      sub_2208863EC();
      sub_2208869CC();
      (*(v33 + 8))(v12, v9);
      v27 = sub_220885D4C();
      (*(*(v27 - 8) + 56))(v16, 0, 1, v27);
      type metadata accessor for StockListInteractor(0, v31, v30, v28);
      sub_2204B683C(v20, v16, v32);

      swift_unknownObjectRelease();
      sub_2204AB5DC(v16, sub_22045BAA4);
      v24 = sub_2204AB5DC(v20, sub_2204B5FB8);
    }

    a3(v24);
  }

  return result;
}

void sub_2207BEC60(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v56 = a3;
  v50 = a1;
  v53 = a4;
  v5 = *a4;
  sub_22045987C(0);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v51 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for StockListToolbarModel(0);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v52 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_22088685C();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12, v14);
  v16 = &v48 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for StockListSelectionModel(0);
  MEMORY[0x28223BE20](v17 - 8, v18);
  v20 = &v48 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21, v22);
  v24 = &v48 - v23;
  MEMORY[0x28223BE20](v25, v26);
  v28 = &v48 - v27;
  v55 = a2;
  sub_22088867C();
  sub_22047939C(v28, v24, type metadata accessor for StockListSelectionModel);
  v49 = v13;
  v29 = *(v13 + 48);
  v30 = v29(v24, 2, v12);
  v54 = v5;
  if (v30)
  {
    if (v30 == 1)
    {
      v31 = 0xE500000000000000;
      v32 = 0x7961646F74;
    }

    else
    {
      v31 = 0xE400000000000000;
      v32 = 1701736302;
    }
  }

  else
  {
    v33 = v16;
    v34 = v49;
    (*(v49 + 32))(v33, v24, v12);
    v32 = sub_22088677C();
    v31 = v35;
    v36 = v34;
    v16 = v33;
    (*(v36 + 8))(v33, v12);
  }

  sub_2204AB5DC(v28, type metadata accessor for StockListSelectionModel);
  v37 = v56;
  sub_22047939C(v56, v20, type metadata accessor for StockListSelectionModel);
  v38 = v29(v20, 2, v12);
  if (!v38)
  {
    v40 = v49;
    (*(v49 + 32))(v16, v20, v12);
    v41 = sub_22088677C();
    v39 = v42;
    (*(v40 + 8))(v16, v12);
    goto LABEL_12;
  }

  if (v38 != 1)
  {
    v39 = 0xE400000000000000;
    v41 = 1701736302;
LABEL_12:
    if (v32 != v41)
    {
      goto LABEL_15;
    }

    goto LABEL_13;
  }

  v39 = 0xE500000000000000;
  if (v32 != 0x7961646F74)
  {
LABEL_15:
    v43 = sub_2208928BC();

    if ((v43 & 1) == 0)
    {
      return;
    }

    goto LABEL_16;
  }

LABEL_13:
  if (v31 != v39)
  {
    goto LABEL_15;
  }

LABEL_16:
  v44 = v51;
  sub_22047939C(v50, v51, sub_22045987C);
  if (qword_281298D08 != -1)
  {
    swift_once();
  }

  swift_getWitnessTable();
  sub_220886B3C();
  v45 = v52;
  sub_22084DA0C(v44, v57, v52);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    sub_22078997C(v45, Strong);
    swift_unknownObjectRelease();
  }

  sub_2204CFC28(v37, v47);
  sub_2204AB5DC(v45, type metadata accessor for StockListToolbarModel);
}

double sub_2207BF18C(uint64_t a1, uint64_t a2, unint64_t a3, void (*a4)(uint64_t), uint64_t a5, uint64_t a6, uint64_t a7)
{
  v48 = a6;
  v49 = a7;
  v53 = a3;
  v54 = a5;
  sub_22045987C(0);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v11 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for StockListToolbarModel(0);
  MEMORY[0x28223BE20](v12 - 8, v13);
  v50 = &v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_22088676C();
  v51 = *(v15 - 8);
  v52 = v15;
  MEMORY[0x28223BE20](v15, v16);
  v18 = &v47 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19, v20);
  v22 = &v47 - v21;
  v23 = sub_22088685C();
  v24 = *(v23 - 8);
  MEMORY[0x28223BE20](v23, v25);
  v27 = &v47 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for StockListSelectionModel(0);
  MEMORY[0x28223BE20](v28 - 8, v29);
  v31 = &v47 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_22088867C();
    v33 = (*(v24 + 48))(v31, 2, v23);
    if (v33)
    {
LABEL_13:
      a4(v33);

      return result;
    }

    v47 = a4;
    (*(v24 + 32))(v27, v31, v23);
    v34 = sub_22088581C();
    v35 = sub_22088681C();
    if (*(v34 + 16))
    {
      v53 = sub_2204AF97C(v35, v36);
      v38 = v37;

      if (v38)
      {
        v39 = *(v51 + 16);
        v39(v18, *(v34 + 56) + *(v51 + 72) * v53, v52);

        v40 = v51;
        v41 = v18;
        v42 = v52;
        (*(v51 + 32))(v22, v41, v52);
        v39(v11, v22, v42);
        (*(v40 + 56))(v11, 0, 1, v42);
        if (qword_281298D08 != -1)
        {
          swift_once();
        }

        type metadata accessor for StockListInteractor(0, v48, v49, v43);
        swift_getWitnessTable();
        sub_220886B3C();
        v44 = v50;
        sub_22084DA0C(v11, v55, v50);
        Strong = swift_unknownObjectWeakLoadStrong();
        a4 = v47;
        if (Strong)
        {
          v46 = Strong;

          sub_22078997C(v44, v46);

          swift_unknownObjectRelease();
        }

        sub_2204AB5DC(v44, type metadata accessor for StockListToolbarModel);
        (*(v51 + 8))(v22, v52);
        goto LABEL_12;
      }
    }

    else
    {
    }

    a4 = v47;
LABEL_12:
    v33 = (*(v24 + 8))(v27, v23);
    goto LABEL_13;
  }

  return result;
}

double sub_2207BF670(uint64_t a1)
{
  v18 = a1;
  v20 = *v1;
  v19 = sub_2208857BC();
  v2 = *(v19 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v19, v4);
  v5 = sub_220888B7C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281298C00 != -1)
  {
    swift_once();
  }

  v17 = qword_281298C08;
  v22 = 2;
  sub_2204556F0(0, &unk_28127E120, MEMORY[0x277D6CD38], MEMORY[0x277D84560]);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_220899920;
  sub_220888B6C();
  sub_220888B5C();
  v21 = v10;
  sub_22046F734(&qword_281298740, MEMORY[0x277D6CD38], MEMORY[0x277D6CD40]);
  sub_2207C2478(0);
  sub_22046F734(&qword_28127EAA0, sub_2207C2478, MEMORY[0x277D83970]);
  sub_2208923FC();
  v11 = swift_allocObject();
  swift_weakInit();
  v12 = v19;
  (*(v2 + 16))(&v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v18, v19);
  v13 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v14 = swift_allocObject();
  v15 = v20;
  *(v14 + 2) = *(v20 + 80);
  *(v14 + 3) = *(v15 + 88);
  *(v14 + 4) = v11;
  (*(v2 + 32))(&v14[v13], &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v12);

  sub_22088840C();

  (*(v6 + 8))(v9, v5);

  return result;
}

uint64_t sub_2207BFA1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    (*(a4 + 64))(a2, a3, a4);
    sub_2204AB448(0);
    sub_22046F734(&qword_281297D28, sub_2204AB448, MEMORY[0x277D6D890]);

    sub_22088B6DC();
  }

  return result;
}

void sub_2207BFB50(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for StockListSelectionModel(0);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22088C6AC();
  v8 = *(v7 - 8);
  v10 = MEMORY[0x28223BE20](v7, v9);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v12, a1, v7, v10);
  LODWORD(a1) = (*(v8 + 88))(v12, v7);
  v13 = *MEMORY[0x277D6DFA0];
  (*(v8 + 8))(v12, v7);
  if (a1 == v13)
  {
    if (sub_2204D0EE0())
    {
      sub_2207BBD88();
    }

    else
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        sub_220789BE4(Strong);
        swift_unknownObjectRelease();
      }

      sub_22088867C();
      sub_2204CE544(v6);
      sub_2204AB5DC(v6, type metadata accessor for StockListSelectionModel);
    }
  }
}

double sub_2207BFD68()
{
  v1 = *v0;
  v2 = sub_220886A4C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v0 + v1[15]);
  __swift_project_boxed_opaque_existential_1((v7 + 32), *(v7 + 56));
  sub_2208863EC();
  __swift_project_boxed_opaque_existential_1((v7 + 32), *(v7 + 56));
  v8 = sub_220885FCC();
  v9 = (*(v1[11] + 112))(v6, v8, v1[10]);

  (*(v3 + 8))(v6, v2);
  v11[1] = v9;
  sub_2204AB448(0);
  sub_22046F734(&qword_281297D28, sub_2204AB448, MEMORY[0x277D6D890]);
  sub_22088B6DC();

  return result;
}

void sub_2207BFF74()
{
  sub_22088582C();
  sub_220888FBC();
  v0 = sub_220888D9C();
  sub_220888E5C();
}

void sub_2207C0050()
{
  v1 = type metadata accessor for StockListStockModel(0);
  MEMORY[0x28223BE20](v1 - 8, v2);
  v81 = &v73 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = type metadata accessor for StockListModel(0);
  MEMORY[0x28223BE20](v82, v4);
  v92 = &v73 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v7);
  v90 = &v73 - v8;
  v9 = type metadata accessor for StockViewModel(0);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v80 = &v73 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_22088685C();
  v13 = *(v12 - 8);
  v83 = v12;
  v84 = v13;
  MEMORY[0x28223BE20](v12, v14);
  v79 = &v73 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16, v17);
  v86 = &v73 - v18;
  MEMORY[0x28223BE20](v19, v20);
  v77 = &v73 - v21;
  sub_22046B2A0(0);
  MEMORY[0x28223BE20](v22 - 8, v23);
  v87 = &v73 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22046B36C(0);
  v89 = v25;
  v91 = *(v25 - 8);
  MEMORY[0x28223BE20](v25, v26);
  v74 = &v73 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22046B19C(0);
  v29 = v28;
  v73 = *(v28 - 8);
  MEMORY[0x28223BE20](v28, v30);
  v32 = &v73 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2204B9DAC(0);
  v76 = v33 - 8;
  MEMORY[0x28223BE20](v33 - 8, v34);
  v36 = &v73 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2204A1D20(0);
  v38 = v37;
  v39 = *(v37 - 8);
  MEMORY[0x28223BE20](v37, v40);
  v42 = &v73 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v43, v44);
  v46 = (&v73 - v45);
  v75 = v0;
  sub_22088B6BC();
  v95 = v96;
  sub_22045BB28(0);
  sub_22046F734(&qword_281297C90, sub_22045BB28, MEMORY[0x277D6D8C8]);
  sub_22088BF9C();

  KeyPath = swift_getKeyPath();
  v94 = MEMORY[0x277D84F90];
  v85 = v39;
  v47 = *(v39 + 16);
  v78 = v46;
  v47(v42, v46, v38);
  sub_22046F734(&qword_281296EF0, sub_2204A1D20, MEMORY[0x277D6EC68]);
  sub_2208915BC();
  v48 = *(v76 + 44);
  sub_22046F734(&qword_281296EE8, sub_2204A1D20, MEMORY[0x277D6EC70]);
  sub_22089199C();
  if (*&v36[v48] != *v93)
  {
    v49 = (v73 + 16);
    v50 = (v73 + 8);
    do
    {
      v51 = sub_2208919BC();
      (*v49)(v32);
      v51(v93, 0);
      sub_2208919AC();
      v52 = v87;
      swift_getAtKeyPath();
      (*v50)(v32, v29);
      sub_2205D2A00(v52);
      sub_22089199C();
    }

    while (*&v36[v48] != *v93);
  }

  sub_2204AB5DC(v36, sub_2204B9DAC);
  (*(v85 + 8))(v78, v38);
  v53 = *(v94 + 16);
  if (v53)
  {
    KeyPath = *(v91 + 16);
    v54 = (*(v91 + 80) + 32) & ~*(v91 + 80);
    v76 = v94;
    v55 = v94 + v54;
    v87 = *(v91 + 72);
    v91 += 16;
    v56 = (v91 - 8);
    v78 = (v84 + 16);
    v85 = v84 + 32;
    v57 = MEMORY[0x277D84F90];
    v58 = v83;
    v59 = v74;
    v60 = v90;
    do
    {
      v62 = v89;
      KeyPath(v59, v55, v89);
      sub_22088AD8C();
      (*v56)(v59, v62);
      sub_2204D1A74(v60, v92, type metadata accessor for StockListModel);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload)
      {
        if (EnumCaseMultiPayload == 1)
        {
          sub_2204AB5DC(v92, type metadata accessor for StockListModel);
        }
      }

      else
      {
        v64 = v81;
        sub_2204D1A74(v92, v81, type metadata accessor for StockListStockModel);
        v65 = v80;
        sub_22047939C(v64, v80, type metadata accessor for StockViewModel);
        sub_2204AB5DC(v64, type metadata accessor for StockListStockModel);
        v66 = v79;
        (*v78)(v79, v65, v58);
        sub_2204AB5DC(v65, type metadata accessor for StockViewModel);
        v67 = *v85;
        (*v85)(v86, v66, v58);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v57 = sub_22048E1D8(0, v57[2] + 1, 1, v57);
        }

        v69 = v57[2];
        v68 = v57[3];
        if (v69 >= v68 >> 1)
        {
          v57 = sub_22048E1D8((v68 > 1), v69 + 1, 1, v57);
        }

        v57[2] = v69 + 1;
        v61 = v57 + ((*(v84 + 80) + 32) & ~*(v84 + 80)) + *(v84 + 72) * v69;
        v58 = v83;
        v67(v61, v86, v83);
      }

      v55 += v87;
      --v53;
    }

    while (v53);
  }

  else
  {

    v57 = MEMORY[0x277D84F90];
    v58 = v83;
  }

  v70 = v84;
  v71 = v77;
  if (v57[2])
  {
    (*(v84 + 16))(v77, v57 + ((*(v84 + 80) + 32) & ~*(v84 + 80)), v58);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      __swift_project_boxed_opaque_existential_1((Strong + 48), *(Strong + 72));
      v93[0] = 0;
      sub_22077F41C(v71, v57, v93);

      (*(v70 + 8))(v71, v58);
      swift_unknownObjectRelease();
    }

    else
    {

      (*(v70 + 8))(v71, v58);
    }
  }

  else
  {
  }
}

char *sub_2207C0A70()
{
  v1 = *v0;
  sub_22054B9F8((v0 + 2));

  (*(*(*(v1 + 80) - 8) + 8))(v0 + *(*v0 + 112));
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1((v0 + *(*v0 + 176)));
  __swift_destroy_boxed_opaque_existential_1((v0 + *(*v0 + 184)));

  __swift_destroy_boxed_opaque_existential_1((v0 + *(*v0 + 208)));
  __swift_destroy_boxed_opaque_existential_1((v0 + *(*v0 + 216)));

  sub_2204AB5DC(v0 + *(*v0 + 240), sub_2204558B8);
  sub_2204AB5DC(v0 + *(*v0 + 248), sub_22045BAA4);
  return v0;
}

uint64_t sub_2207C0CFC()
{
  sub_2207C0A70();

  return swift_deallocClassInstance();
}

double sub_2207C0D9C(uint64_t a1, uint64_t a2)
{
  v3 = *(*(v2 + *(*v2 + 120)) + 120);
  ObjectType = swift_getObjectType();
  (*(v3 + 24))(ObjectType, v3);

  return result;
}

uint64_t sub_2207C0E08(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xD000000000000012;
  v4 = 0x80000002208BECB0;
  if (v2 == 1)
  {
    v5 = 0x80000002208BECB0;
  }

  else
  {
    v3 = 0x6E696C6C6F726373;
    v5 = 0xE900000000000067;
  }

  if (*a1)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0x676E6974696465;
  }

  if (v2)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xE700000000000000;
  }

  v8 = 0xD000000000000012;
  if (*a2 != 1)
  {
    v8 = 0x6E696C6C6F726373;
    v4 = 0xE900000000000067;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x676E6974696465;
  }

  if (*a2)
  {
    v10 = v4;
  }

  else
  {
    v10 = 0xE700000000000000;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_2208928BC();
  }

  return v11 & 1;
}

uint64_t sub_2207C0F0C()
{
  sub_2208929EC();
  sub_22089146C();

  return sub_220892A2C();
}

double sub_2207C0FB8(uint64_t a1)
{
  sub_22089146C();

  return result;
}

uint64_t sub_2207C1050()
{
  sub_2208929EC();
  sub_22089146C();

  return sub_220892A2C();
}

unint64_t sub_2207C10F8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_2207C2600(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_2207C1128(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x80000002208BECB0;
  v5 = 0xD000000000000012;
  if (v2 != 1)
  {
    v5 = 0x6E696C6C6F726373;
    v4 = 0xE900000000000067;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x676E6974696465;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

unint64_t sub_2207C1190()
{
  v1 = 0xD000000000000012;
  if (*v0 != 1)
  {
    v1 = 0x6E696C6C6F726373;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x676E6974696465;
  }
}

void sub_2207C121C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = &type metadata for StockListSectionDescriptor;
    v8[1] = type metadata accessor for StockListModel(255);
    v8[2] = sub_22045B950();
    v8[3] = sub_22046F734(&qword_281293CD8, type metadata accessor for StockListModel, &unk_2208A7C2C);
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_2207C12DC(uint64_t a1)
{
  sub_22045BAA4(0);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v7);
  v9 = &v25 - v8;
  sub_2204B5FB8(0);
  MEMORY[0x28223BE20](v10 - 8, v11);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14, v15);
  v17 = &v25 - v16;
  sub_22088576C();
  if (v18)
  {

    sub_2207BFD68();
  }

  else
  {
    sub_22088577C();
    v19 = sub_220885DFC();
    v20 = (*(*(v19 - 8) + 48))(v17, 1, v19);
    sub_2204AB5DC(v17, sub_2204B5FB8);
    if (v20 == 1)
    {
      sub_22088578C();
      v21 = sub_220885D4C();
      v22 = (*(*(v21 - 8) + 48))(v9, 1, v21);
      sub_2204AB5DC(v9, sub_22045BAA4);
      if (v22 == 1 || (sub_22088575C() & 1) != 0)
      {
        sub_2207BF670(a1);
      }
    }

    else
    {
      sub_2207BFF74();
    }
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v24 = result;
    sub_22088577C();
    sub_22088578C();
    sub_2204B683C(v13, v5, v24);
    swift_unknownObjectRelease();
    sub_2204AB5DC(v5, sub_22045BAA4);
    return sub_2204AB5DC(v13, sub_2204B5FB8);
  }

  return result;
}

double sub_2207C15B0(__n128 a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_22088684C();
  sub_2207C1E64();
  sub_22088E0CC();
  swift_allocObject();
  sub_22088E07C();
  v5 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *(v6 + 24) = a3;

  sub_22088E0AC();

  sub_22088E08C();

  return result;
}

uint64_t sub_2207C16E0()
{
  v1 = *(v0 + 24);
  v2 = off_283413EC8[0];
  type metadata accessor for StockListDataManager(0);
  return v2(v1);
}

void sub_2207C1760(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for StockListSelectionModel(0) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  sub_2207BEC60(a1, a2, v2 + v6, *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_2207C1854()
{
  v1 = *(sub_22088582C() - 8);
  v2 = *(v0 + 32);
  v3 = v0 + ((*(v1 + 80) + 40) & ~*(v1 + 80));

  return sub_2207BE26C(v2, v3);
}

uint64_t objectdestroy_19Tm_0()
{

  if (*(v0 + 24))
  {
  }

  return swift_deallocObject();
}

double sub_2207C1960(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = *(sub_22088582C() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v1[4];
  v8 = v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
  v9 = *v8;
  v10 = *(v8 + 1);

  return sub_2207BF18C(a1, v7, v1 + v6, v9, v10, v3, v4);
}

uint64_t sub_2207C1A18(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

uint64_t sub_2207C1AAC()
{
  v1 = *(sub_2208854AC() - 8);
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = v0 + ((*(v1 + 80) + 41) & ~*(v1 + 80));

  return sub_2207BD11C(v2, v3, v4);
}

void sub_2207C1B14(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for StockListModel(255);
    v7 = sub_22046F734(&qword_281293CD8, type metadata accessor for StockListModel, &unk_2208A7C2C);
    v8 = a3(a1, v6, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t objectdestroy_68Tm()
{
  v1 = sub_2208854AC();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 41) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

double sub_2207C1C74()
{
  v1 = *(sub_2208854AC() - 8);
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = v0 + ((*(v1 + 80) + 41) & ~*(v1 + 80));

  return sub_2207BD518(v2, v3, v4);
}

void sub_2207C1D04(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = *(type metadata accessor for StockListStockModel(0) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v1 + v7);
  v9 = v1[4];
  v10 = (v1 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];

  sub_2207BB000(a1, v9, v1 + v6, v8, v11, v12, v3, v4);
}

uint64_t sub_2207C1DC8(uint64_t a1)
{
  v3 = *(type metadata accessor for StockListStockModel(0) - 8);
  v5 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v6 = *(v1 + ((*(v3 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_2207BB530(a1, v1 + v5, v6, v4);
}

unint64_t sub_2207C1E64()
{
  result = qword_27CF59CC0;
  if (!qword_27CF59CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF59CC0);
  }

  return result;
}

uint64_t sub_2207C1ECC()
{
  v1 = *(v0 + 24);
  v2 = off_283413ED0[0];
  type metadata accessor for StockListDataManager(0);
  return v2(v1);
}

uint64_t sub_2207C1F68(uint64_t a1)
{
  v3 = *(type metadata accessor for StockListStockModel(0) - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v5 = v4 + *(v3 + 64);
  sub_2207C121C(0, &qword_281297B38, MEMORY[0x277D6DA48]);
  v7 = *(v1 + 32);
  v8 = v1 + ((v5 + *(*(v6 - 8) + 80)) & ~*(*(v6 - 8) + 80));

  return sub_2207B7DD8(a1, v7, (v1 + v4), v8);
}

uint64_t sub_2207C2090(uint64_t a1)
{
  v3 = *(sub_22088CE3C() - 8);
  v4 = *(v1 + 32);
  v5 = v1 + ((*(v3 + 80) + 40) & ~*(v3 + 80));

  return sub_2207B6E90(a1, v4, v5);
}

uint64_t objectdestroy_128Tm()
{
  v1 = sub_22089030C();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

void sub_2207C2238()
{
  v1 = *(sub_22089030C() - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  sub_220766568(v2, v3);
}

uint64_t sub_2207C22A8(uint64_t a1, uint64_t a2)
{
  sub_2204C59CC(0, &unk_2812968A0, sub_220456720, &type metadata for StockListOfflineModel, MEMORY[0x277D33530]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2207C2344(uint64_t a1)
{
  sub_2204C59CC(0, &unk_2812968A0, sub_220456720, &type metadata for StockListOfflineModel, MEMORY[0x277D33530]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2207C23D8()
{
  v0 = off_283413ED8[0];
  type metadata accessor for StockListDataManager(0);
  return v0();
}

uint64_t objectdestroy_25Tm(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);

  (*(v3 + 8))(v1 + v4, v2);

  return swift_deallocObject();
}

uint64_t sub_2207C2578()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = *(sub_2208857BC() - 8);
  v4 = v0[4];
  v5 = v0 + ((*(v3 + 80) + 40) & ~*(v3 + 80));

  return sub_2207BFA1C(v4, v5, v1, v2);
}

unint64_t sub_2207C2600(uint64_t a1, uint64_t a2)
{
  v2 = sub_22089270C();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_2207C26A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v4 = v3;
  v186 = a2;
  v197 = a3;
  v169 = sub_220884FDC();
  v168 = *(v169 - 8);
  MEMORY[0x28223BE20](v169, v6);
  v166 = &v157 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v164 = sub_220884F6C();
  v163 = *(v164 - 8);
  MEMORY[0x28223BE20](v164, v8);
  v161 = &v157 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_220884DAC();
  MEMORY[0x28223BE20](v10 - 8, v11);
  v165 = &v157 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_22088543C();
  MEMORY[0x28223BE20](v13 - 8, v14);
  v162 = &v157 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_2208852DC();
  MEMORY[0x28223BE20](v16 - 8, v17);
  v160 = &v157 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x277D83D88];
  sub_2207C4310(0, &qword_2812994C8, MEMORY[0x277CC9388], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v20 - 8, v21);
  v159 = &v157 - v22;
  sub_2207C4310(0, &qword_2812994C0, MEMORY[0x277CC93A0], v19);
  MEMORY[0x28223BE20](v23 - 8, v24);
  v157 = &v157 - v25;
  v173 = sub_22088505C();
  v175 = *(v173 - 8);
  MEMORY[0x28223BE20](v173, v26);
  v158 = &v157 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28, v29);
  v167 = &v157 - v30;
  MEMORY[0x28223BE20](v31, v32);
  v174 = &v157 - v33;
  v172 = sub_2208853AC();
  v171 = *(v172 - 1);
  MEMORY[0x28223BE20](v172, v34);
  v170 = &v157 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v188 = sub_2208853CC();
  v184 = *(v188 - 8);
  MEMORY[0x28223BE20](v188, v36);
  v179 = &v157 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v38, v39);
  v191 = &v157 - v40;
  v41 = sub_22088C32C();
  v193 = *(v41 - 8);
  v194 = v41;
  MEMORY[0x28223BE20](v41, v42);
  v196 = &v157 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2207C4310(0, &qword_281299480, MEMORY[0x277CC9578], v19);
  MEMORY[0x28223BE20](v44 - 8, v45);
  v176 = &v157 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v47, v48);
  v192 = &v157 - v49;
  v195 = sub_22088516C();
  v50 = *(v195 - 8);
  MEMORY[0x28223BE20](v195, v51);
  v177 = &v157 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v53, v54);
  v56 = &v157 - v55;
  v57 = type metadata accessor for StockEarningsModel(0);
  MEMORY[0x28223BE20](v57, v58);
  v60 = &v157 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  v189 = v60;
  v61 = sub_22088685C();
  v62 = *(v61 - 8);
  MEMORY[0x28223BE20](v61, v63);
  v65 = &v157 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = sub_2207C3BB8(v4, a1);
  v181 = v67;
  v182 = v66;
  v185 = v62;
  v68 = *(v62 + 16);
  v68(v65, a1, v61);
  sub_220649AF0(a1, v60);
  v69 = v57[5];
  v187 = v50;
  v70 = *(v50 + 16);
  v70(v56, a1 + v69, v195);
  v71 = v192;
  sub_2207C4220(a1 + v57[6], v192);
  (*(v193 + 16))(v196, v186, v194);
  v178 = v57;
  LODWORD(v180) = *(a1 + v57[8]);
  v72 = v197;
  v183 = v65;
  v186 = v61;
  v68(v197, v65, v61);
  v73 = v191;
  v74 = v195;
  v75 = type metadata accessor for StockFeedEarningsViewModel(0);
  v76 = v189;
  sub_220649AF0(v189, &v72[v75[5]]);
  v70(&v72[v75[6]], v56, v74);
  sub_2207C4220(v71, &v72[v75[7]]);
  v77 = &v72[v75[8]];
  v78 = v181;
  *v77 = v182;
  v77[1] = v78;
  v72[v75[9]] = v180;
  v79 = sub_22083A4D4();
  *&v72[v75[12]] = v79;
  v80 = v75[11];
  v81 = sub_2207EFC34();
  v182 = v82;
  sub_22088538C();
  v190 = v56;
  if (sub_2207EF05C(v71, v73, v56) < 1)
  {
    v197[v80] = v79 == 0;
    v87 = v187;
    v85 = v184;
    v86 = v179;
  }

  else
  {
    v197[v80] = 1;
    v83 = v176;
    sub_2207C4220(v71, v176);
    v84 = v187;
    if ((*(v187 + 48))(v83, 1, v74) != 1)
    {
      v99 = v74;
      v178 = v81;
      v181 = v75;
      v100 = v177;
      (*(v84 + 32))(v177, v83, v99);
      v101 = *MEMORY[0x277CC9998];
      v102 = v171;
      v103 = *(v171 + 104);
      v104 = v170;
      v105 = v172;
      v103(v170, v101, v172);
      v180 = sub_2208853BC();
      v106 = *(v102 + 8);
      v106(v104, v105);
      v103(v104, v101, v105);
      v107 = sub_2208853BC();
      v106(v104, v105);
      if (v180 == v107)
      {

        v180 = sub_220884F0C();
        v108 = *(v180 - 8);
        v178 = *(v108 + 56);
        v182 = v108 + 56;
        v109 = v157;
        v178(v157, 1, 1, v180);
        v110 = sub_220884EEC();
        v111 = *(v110 - 8);
        v172 = *(v111 + 56);
        v176 = v111 + 56;
        v112 = v159;
        (v172)(v159, 1, 1, v110);
        sub_22088524C();
        sub_22088533C();
        sub_22088540C();
        sub_220884D9C();
        v113 = v167;
        sub_220884F2C();
        v114 = v161;
        sub_220884F5C();
        sub_220884F1C();
        (*(v163 + 8))(v114, v164);
        v115 = v175 + 8;
        v171 = *(v175 + 8);
        (v171)(v113, v173);
        v175 = v115;
        v178(v109, 1, 1, v180);
        (v172)(v112, 1, 1, v110);
        sub_22088524C();
        sub_22088533C();
        sub_22088540C();
        sub_220884D9C();
        v116 = v158;
        sub_220884F2C();
        v117 = v166;
        sub_220884FBC();
        sub_220884F4C();
        (*(v168 + 8))(v117, v169);
        v118 = v116;
        v119 = v173;
        v120 = v171;
        v121.n128_f64[0] = (v171)(v118, v173);
        sub_2205F78B0(v121);
        v122 = v119;
        sub_22088514C();
        v182 = v198;
        v180 = v199;
        sub_22088514C();
        v123 = v199;
        v179 = v198;
        sub_22088514C();
        v125 = v198;
        v124 = v199;
        type metadata accessor for Localized();
        ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
        v127 = [objc_opt_self() bundleForClass_];
        sub_220884CAC();

        sub_2207C4310(0, &qword_28127DE60, sub_220571878, MEMORY[0x277D84560]);
        v128 = swift_allocObject();
        *(v128 + 16) = xmmword_22089B140;
        v129 = MEMORY[0x277D837D0];
        *(v128 + 56) = MEMORY[0x277D837D0];
        v130 = sub_22048D860();
        *(v128 + 32) = v125;
        *(v128 + 40) = v124;
        *(v128 + 96) = v129;
        *(v128 + 104) = v130;
        v131 = v179;
        *(v128 + 64) = v130;
        *(v128 + 72) = v131;
        *(v128 + 80) = v123;
        *(v128 + 136) = v129;
        *(v128 + 144) = v130;
        v132 = v180;
        *(v128 + 112) = v182;
        *(v128 + 120) = v132;
        v94 = sub_22089139C();
        v96 = v133;

        v120(v113, v122);
        v120(v174, v122);
        v134 = *(v187 + 8);
        v135 = v195;
        v134(v177, v195);
        (*(v184 + 8))(v191, v188);
        (*(v193 + 8))(v196, v194);
        sub_22047EBB4(v192, &qword_281299480, MEMORY[0x277CC9578]);
        v134(v190, v135);
      }

      else
      {
        v141 = v84;
        v142 = v196;
        v143 = sub_2207EFC34();
        v145 = v144;
        type metadata accessor for Localized();
        v146 = swift_getObjCClassFromMetadata();
        v147 = [objc_opt_self() bundleForClass_];
        sub_220884CAC();

        sub_2207C4310(0, &qword_28127DE60, sub_220571878, MEMORY[0x277D84560]);
        v148 = swift_allocObject();
        *(v148 + 16) = xmmword_220899920;
        v149 = MEMORY[0x277D837D0];
        *(v148 + 56) = MEMORY[0x277D837D0];
        v150 = sub_22048D860();
        v151 = v182;
        *(v148 + 32) = v178;
        *(v148 + 40) = v151;
        *(v148 + 96) = v149;
        *(v148 + 104) = v150;
        *(v148 + 64) = v150;
        *(v148 + 72) = v143;
        *(v148 + 80) = v145;
        v94 = sub_22089139C();
        v96 = v152;

        v153 = *(v141 + 8);
        v154 = v195;
        v153(v100, v195);
        (*(v184 + 8))(v191, v188);
        (*(v193 + 8))(v142, v194);
        sub_22047EBB4(v192, &qword_281299480, MEMORY[0x277CC9578]);
        v153(v190, v154);
      }

      v76 = v189;
      v75 = v181;
      goto LABEL_14;
    }

    sub_22047EBB4(v83, &qword_281299480, MEMORY[0x277CC9578]);
    v85 = v184;
    v86 = v179;
    v87 = v84;
  }

  sub_22088538C();
  v88 = sub_2208852FC();
  v89 = *(v85 + 8);
  v90 = v188;
  v89(v86, v188);
  if (v88 & 1) != 0 || (sub_22088538C(), v91 = sub_22088532C(), v89(v86, v90), (v91))
  {

    type metadata accessor for Localized();
    v92 = swift_getObjCClassFromMetadata();
    v93 = [objc_opt_self() bundleForClass_];
    v94 = sub_220884CAC();
    v96 = v95;

    v97 = v191;
    v98 = v90;
  }

  else
  {
    type metadata accessor for Localized();
    v136 = swift_getObjCClassFromMetadata();
    v137 = [objc_opt_self() bundleForClass_];
    sub_220884CAC();

    sub_2207C4310(0, &qword_28127DE60, sub_220571878, MEMORY[0x277D84560]);
    v138 = swift_allocObject();
    *(v138 + 16) = xmmword_220899360;
    *(v138 + 56) = MEMORY[0x277D837D0];
    *(v138 + 64) = sub_22048D860();
    v139 = v182;
    *(v138 + 32) = v81;
    *(v138 + 40) = v139;
    v94 = sub_22089139C();
    v96 = v140;

    v97 = v191;
    v98 = v188;
  }

  v89(v97, v98);
  (*(v193 + 8))(v196, v194);
  sub_22047EBB4(v192, &qword_281299480, MEMORY[0x277CC9578]);
  (*(v87 + 8))(v190, v195);
LABEL_14:
  sub_2207C42B4(v76);
  result = (*(v185 + 8))(v183, v186);
  v156 = &v197[v75[10]];
  *v156 = v94;
  v156[1] = v96;
  return result;
}

uint64_t sub_2207C3BB8(uint64_t a1, uint64_t a2)
{
  v45 = sub_22088516C();
  v43 = *(v45 - 8);
  MEMORY[0x28223BE20](v45, v4);
  v41 = v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_220884BDC();
  v46 = *(v6 - 8);
  v47 = v6;
  MEMORY[0x28223BE20](v6, v7);
  v40 = v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22088543C();
  v38 = *(v9 - 8);
  v39 = v9;
  MEMORY[0x28223BE20](v9, v10);
  v12 = v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_2208853CC();
  v42 = *(v44 - 8);
  MEMORY[0x28223BE20](v44, v13);
  v15 = v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2207C4310(0, &qword_2812991D8, MEMORY[0x277D696C0], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v16 - 8, v17);
  v19 = v37 - v18;
  v20 = sub_22088638C();
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20, v22);
  v24 = v37 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = *(a1 + 16);
  v26 = *(a1 + 24);
  v37[1] = swift_getObjectType();
  v37[2] = v25;
  v37[3] = v26;
  sub_22088655C();
  if ((*(v21 + 48))(v19, 1, v20) == 1)
  {
    sub_22047EBB4(v19, &qword_2812991D8, MEMORY[0x277D696C0]);
  }

  else
  {
    (*(v21 + 32))(v24, v19, v20);
    sub_22088538C();
    v37[0] = type metadata accessor for StockEarningsModel(0);
    (*(v38 + 16))(v12, a2 + *(v37[0] + 28), v39);
    sub_22088539C();
    sub_2207C4310(0, &qword_28127E1C8, MEMORY[0x277CC99D0], MEMORY[0x277D84560]);
    v27 = sub_2208853AC();
    v28 = *(v27 - 8);
    v29 = (*(v28 + 80) + 32) & ~*(v28 + 80);
    v30 = swift_allocObject();
    *(v30 + 16) = xmmword_220899360;
    (*(v28 + 104))(v30 + v29, *MEMORY[0x277CC9968], v27);
    sub_2207E1070(v30);
    swift_setDeallocating();
    (*(v28 + 8))(v30 + v29, v27);
    swift_deallocClassInstance();
    v31 = v41;
    sub_22088636C();
    v32 = v40;
    sub_22088530C();

    (*(v43 + 8))(v31, v45);
    v33 = sub_220884B6C();
    if ((v34 & 1) == 0)
    {
      if (v33 < 1)
      {
        v36 = sub_22088637C();
        (*(v46 + 8))(v32, v47);
        (*(v42 + 8))(v15, v44);
        (*(v21 + 8))(v24, v20);
        return v36;
      }

      sub_22088653C();
    }

    (*(v46 + 8))(v32, v47);
    (*(v42 + 8))(v15, v44);
    (*(v21 + 8))(v24, v20);
  }

  return 0;
}