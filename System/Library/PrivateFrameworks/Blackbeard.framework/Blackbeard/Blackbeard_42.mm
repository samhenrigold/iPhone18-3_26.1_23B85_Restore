uint64_t sub_1E6384994()
{
  *(*v1 + 416) = v0;

  if (v0)
  {
    v2 = sub_1E6385BF8;
  }

  else
  {
    v2 = sub_1E6384AA8;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1E6384AA8()
{
  v1 = v0[47];
  sub_1E6386BA8(v0[45], type metadata accessor for PageMetricsClick);
  sub_1E6386BA8(v1, MEMORY[0x1E699DD40]);

  v2 = v0[1];

  return v2();
}

uint64_t sub_1E6384CB0()
{
  *(*v1 + 432) = v0;

  if (v0)
  {
    v2 = sub_1E6385E08;
  }

  else
  {
    v2 = sub_1E6384DC4;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1E6384DC4()
{
  sub_1E6386BA8(*(v0 + 352), type metadata accessor for PageMetricsClick);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E6384FAC()
{
  *(*v1 + 448) = v0;

  if (v0)
  {
    v2 = sub_1E6385FF8;
  }

  else
  {
    v2 = sub_1E63850C0;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1E63850C0()
{
  sub_1E6386BA8(*(v0 + 344), type metadata accessor for PageMetricsClick);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E63852A8()
{
  *(*v1 + 464) = v0;

  if (v0)
  {
    v2 = sub_1E63861E8;
  }

  else
  {
    v2 = sub_1E63853BC;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1E63853BC()
{
  sub_1E6386BA8(*(v0 + 336), type metadata accessor for PageMetricsClick);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E63855A4()
{
  *(*v1 + 496) = v0;

  if (v0)
  {
    v2 = sub_1E63863D8;
  }

  else
  {
    v2 = sub_1E63856B8;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1E63856B8()
{
  v1 = *(v0 + 472);
  v2 = *(v0 + 520);
  v3 = *(v0 + 400);
  v4 = *(v0 + 368);
  v5 = *(v0 + 64);
  v6 = *(v0 + 40);
  sub_1E6386BA8(*(v0 + 328), type metadata accessor for PageMetricsClick);
  v1(v5, v6);
  sub_1E6386BA8(v4, MEMORY[0x1E699DD40]);
  v7 = sub_1E65D7968();
  (*(*(v7 - 8) + 8))(v3 + v2, v7);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_1E6385918()
{
  *(*v1 + 512) = v0;

  if (v0)
  {
    v2 = sub_1E6386640;
  }

  else
  {
    v2 = sub_1E6385A2C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1E6385A2C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E6385BF8()
{
  v1 = v0[47];
  sub_1E6386BA8(v0[45], type metadata accessor for PageMetricsClick);
  sub_1E6386BA8(v1, MEMORY[0x1E699DD40]);

  v2 = v0[1];

  return v2();
}

uint64_t sub_1E6385E08()
{
  sub_1E6386BA8(*(v0 + 352), type metadata accessor for PageMetricsClick);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E6385FF8()
{
  sub_1E6386BA8(*(v0 + 344), type metadata accessor for PageMetricsClick);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E63861E8()
{
  sub_1E6386BA8(*(v0 + 336), type metadata accessor for PageMetricsClick);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E63863D8()
{
  v1 = *(v0 + 472);
  v2 = *(v0 + 520);
  v3 = *(v0 + 400);
  v4 = *(v0 + 368);
  v5 = *(v0 + 64);
  v6 = *(v0 + 40);
  sub_1E6386BA8(*(v0 + 328), type metadata accessor for PageMetricsClick);
  v1(v5, v6);
  sub_1E6386BA8(v4, MEMORY[0x1E699DD40]);
  v7 = sub_1E65D7968();
  (*(*(v7 - 8) + 8))(v3 + v2, v7);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_1E6386640()
{

  v1 = *(v0 + 8);

  return v1();
}

unint64_t sub_1E6386814()
{
  result = qword_1ED0789B0;
  if (!qword_1ED0789B0)
  {
    sub_1E65E0C68();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0789B0);
  }

  return result;
}

uint64_t sub_1E638686C@<X0>(uint64_t a1@<X8>)
{
  v25 = a1;
  v1 = sub_1E65D8F28();
  v22 = *(v1 - 8);
  v23 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v24 = v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1E65D72D8();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v21 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072D90, &qword_1E66040F0);
  v11 = MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = v21 - v14;
  v16 = sub_1E65E0E18();
  v21[2] = v17;
  v21[3] = v16;
  v18 = _s10Blackbeard20MetricIdentifierTypeO8rawValueSSvg_0();
  v21[0] = v19;
  v21[1] = v18;
  sub_1E65E0E28();
  sub_1E5DFD1CC(v15, v13, &qword_1ED072D90, &qword_1E66040F0);
  if ((*(v4 + 48))(v13, 1, v3) != 1)
  {
    (*(v4 + 32))(v9, v13, v3);
    (*(v4 + 16))(v7, v9, v3);
    sub_1E65E5D58();
    (*(v4 + 8))(v9, v3);
  }

  sub_1E5DFE50C(v15, &qword_1ED072D90, &qword_1E66040F0);
  (*(v22 + 104))(v24, *MEMORY[0x1E69CBCB0], v23);
  sub_1E6427498(MEMORY[0x1E69E7CC0]);
  return sub_1E65D8678();
}

uint64_t sub_1E6386BA8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1E6386C08(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E6386C70(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E6386CD8(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_1E65E0B48() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for AppComposer(0) - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = (v1 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_1E5DFA78C;

  return sub_1E63825CC(a1, v1 + v6, v1 + v9, v11, v12);
}

uint64_t sub_1E6386E54@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v181 = a3;
  v187 = a2;
  v186 = a1;
  v184 = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072AE0, &qword_1E65F9E00);
  v182 = *(v4 - 8);
  v183 = v4;
  v5 = MEMORY[0x1EEE9AC00](v4);
  v144 = &v143 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v150 = &v143 - v8;
  v9 = MEMORY[0x1EEE9AC00](v7);
  v143 = &v143 - v10;
  v11 = MEMORY[0x1EEE9AC00](v9);
  v148 = &v143 - v12;
  v13 = MEMORY[0x1EEE9AC00](v11);
  v145 = &v143 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v159 = &v143 - v15;
  v16 = sub_1E65D76F8();
  v179 = *(v16 - 8);
  v180 = v16;
  v17 = MEMORY[0x1EEE9AC00](v16);
  v149 = &v143 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v147 = &v143 - v20;
  MEMORY[0x1EEE9AC00](v19);
  v158 = &v143 - v21;
  v177 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0741D8, &unk_1E6606270);
  MEMORY[0x1EEE9AC00](v177);
  v178 = &v143 - v22;
  v175 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072808, &qword_1E65EBE00);
  MEMORY[0x1EEE9AC00](v175);
  v176 = &v143 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077CC0, &unk_1E65F2610);
  v25 = MEMORY[0x1EEE9AC00](v24 - 8);
  v163 = &v143 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x1EEE9AC00](v25);
  v162 = &v143 - v28;
  v29 = MEMORY[0x1EEE9AC00](v27);
  v154 = &v143 - v30;
  v31 = MEMORY[0x1EEE9AC00](v29);
  v153 = &v143 - v32;
  v33 = MEMORY[0x1EEE9AC00](v31);
  v174 = &v143 - v34;
  MEMORY[0x1EEE9AC00](v33);
  v173 = &v143 - v35;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F78, &unk_1E65EA3F0);
  MEMORY[0x1EEE9AC00](v36 - 8);
  v171 = &v143 - v37;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F80, &unk_1E65F4310);
  v39 = MEMORY[0x1EEE9AC00](v38 - 8);
  v157 = &v143 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = MEMORY[0x1EEE9AC00](v39);
  v146 = &v143 - v42;
  MEMORY[0x1EEE9AC00](v41);
  v164 = &v143 - v43;
  v170 = sub_1E65D7848();
  v169 = *(v170 - 8);
  v44 = MEMORY[0x1EEE9AC00](v170);
  v161 = &v143 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = MEMORY[0x1EEE9AC00](v44);
  v152 = &v143 - v47;
  MEMORY[0x1EEE9AC00](v46);
  v172 = &v143 - v48;
  v166 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073940, &qword_1E65EDCC8);
  MEMORY[0x1EEE9AC00](v166);
  v50 = &v143 - v49;
  v188 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072AB8, &unk_1E65F84D0);
  v51 = *(v188 - 1);
  MEMORY[0x1EEE9AC00](v188);
  v53 = &v143 - v52;
  v167 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077CD0, &unk_1E65F42F0);
  v54 = MEMORY[0x1EEE9AC00](v167);
  v160 = &v143 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = MEMORY[0x1EEE9AC00](v54);
  v151 = &v143 - v57;
  v58 = MEMORY[0x1EEE9AC00](v56);
  v155 = &v143 - v59;
  v60 = MEMORY[0x1EEE9AC00](v58);
  v185 = &v143 - v61;
  v62 = MEMORY[0x1EEE9AC00](v60);
  v156 = &v143 - v63;
  v64 = MEMORY[0x1EEE9AC00](v62);
  v66 = &v143 - v65;
  MEMORY[0x1EEE9AC00](v64);
  v68 = &v143 - v67;
  v168 = type metadata accessor for AppState(0);
  sub_1E65DE488();
  v70 = v193;
  v69 = v194;
  v71 = v195;
  v190 = v193;
  v191 = v194;
  v192 = v195;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072AD8, &unk_1E65F84F0);
  sub_1E65E4D78();
  sub_1E6001C2C(v70, v69, v71);
  v72 = v188;
  sub_1E65E4C98();
  (*(v51 + 8))(v53, v72);
  v189 = v187;
  sub_1E5DF23E0();
  v188 = v68;
  sub_1E65E4DA8();
  sub_1E5DFE50C(v66, &unk_1ED077CD0, &unk_1E65F42F0);
  sub_1E5DFD1CC(v165, v50, &qword_1ED073940, &qword_1E65EDCC8);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v75 = *v50;
  v74 = *(v50 + 1);
  v76 = v50[16];
  if (EnumCaseMultiPayload == 1)
  {
    v77 = v169;
    v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077E00, &unk_1E65F4350);
    sub_1E6388470(&v50[*(v78 + 48)], v185);
    v79 = v155;
    sub_1E5DFD1CC(v188, v155, &unk_1ED077CD0, &unk_1E65F42F0);
    v80 = swift_getEnumCaseMultiPayload();
    v81 = v186;
    v82 = v168;
    v83 = v170;
    v84 = v171;
    v85 = v157;
    v166 = v74;
    if (v80 <= 2)
    {
      if (!v80)
      {
        goto LABEL_6;
      }

      if (v80 == 1)
      {
        v86 = v79;
        v87 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0737D0, &unk_1E65F4330) + 48);
        v88 = sub_1E65D76A8();
        (*(*(v88 - 8) + 8))(v86 + v87, v88);
LABEL_6:
        v193 = v75;
        v194 = v74;
        v195 = v76;
        sub_1E600B01C(v75, v74, v76);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F88, &unk_1E65EA400);
        sub_1E65E4C98();
        v89 = v146;
        sub_1E5E1F544(v146);
        sub_1E5DFE50C(v84, &qword_1ED071F78, &unk_1E65EA3F0);
        v90 = *(v77 + 48);
        v91 = v76;
        if (v90(v89, 1, v83) == 1)
        {
          sub_1E65D77C8();
          if (v90(v89, 1, v83) != 1)
          {
            sub_1E5DFE50C(v89, &qword_1ED071F80, &unk_1E65F4310);
          }
        }

        else
        {
          (*(v77 + 32))(v152, v89, v83);
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072818, &qword_1E65EBE10);
        v116 = v176;
        sub_1E65E4C98();
        sub_1E65E4DA8();
        sub_1E5DFE50C(v116, &qword_1ED072808, &qword_1E65EBE00);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072990, &qword_1E65EC130);
        v117 = v178;
        sub_1E65E4C98();
        sub_1E65E4DA8();
        sub_1E5DFE50C(v117, &qword_1ED0741D8, &unk_1E6606270);
        sub_1E5DFD1CC(v188, v151, &unk_1ED077CD0, &unk_1E65F42F0);
        (*(v179 + 16))(v147, v181, v180);
        v118 = *(v81 + *(v82 + 192) + 64);
        if (*(v118 + 16))
        {
          v119 = v166;
          v120 = sub_1E6416FB4(v75, v166, v91);
          v122 = v121;
          sub_1E6001C2C(v75, v119, v91);
          if (v122)
          {
            v123 = *(v118 + 56);
            v124 = v182;
            v125 = v123 + *(v182 + 72) * v120;
            v126 = v143;
            v127 = v183;
            (*(v182 + 16))(v143, v125, v183);
            (*(v124 + 32))(v148, v126, v127);
LABEL_35:
            sub_1E604BABC();
            sub_1E65DE828();
            sub_1E5DFE50C(v185, &unk_1ED077CD0, &unk_1E65F42F0);
            v115 = v188;
            return sub_1E5DFE50C(v115, &unk_1ED077CD0, &unk_1E65F42F0);
          }
        }

        else
        {
          sub_1E6001C2C(v75, v166, v91);
        }

        (*(v182 + 104))(v148, *MEMORY[0x1E699CB70], v183);
        goto LABEL_35;
      }

      sub_1E5DFE50C(v79, &unk_1ED077CD0, &unk_1E65F42F0);
    }

    v193 = v75;
    v194 = v74;
    v195 = v76;
    sub_1E600B01C(v75, v74, v76);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F88, &unk_1E65EA400);
    sub_1E65E4C98();
    sub_1E5E1F544(v85);
    sub_1E5DFE50C(v84, &qword_1ED071F78, &unk_1E65EA3F0);
    v128 = *(v77 + 48);
    v129 = v76;
    if (v128(v85, 1, v83) == 1)
    {
      sub_1E65D77C8();
      if (v128(v85, 1, v83) != 1)
      {
        sub_1E5DFE50C(v85, &qword_1ED071F80, &unk_1E65F4310);
      }
    }

    else
    {
      (*(v77 + 32))(v161, v85, v83);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072818, &qword_1E65EBE10);
    v130 = v176;
    sub_1E65E4C98();
    sub_1E65E4DA8();
    sub_1E5DFE50C(v130, &qword_1ED072808, &qword_1E65EBE00);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072990, &qword_1E65EC130);
    v131 = v178;
    sub_1E65E4C98();
    sub_1E65E4DA8();
    sub_1E5DFE50C(v131, &qword_1ED0741D8, &unk_1E6606270);
    sub_1E5DFD1CC(v185, v160, &unk_1ED077CD0, &unk_1E65F42F0);
    (*(v179 + 16))(v149, v181, v180);
    v132 = *(v81 + *(v82 + 192) + 64);
    if (*(v132 + 16))
    {
      v133 = v166;
      v134 = sub_1E6416FB4(v75, v166, v129);
      v136 = v135;
      sub_1E6001C2C(v75, v133, v129);
      if (v136)
      {
        v137 = *(v132 + 56);
        v138 = v182;
        v139 = v137 + *(v182 + 72) * v134;
        v140 = v144;
        v141 = v183;
        (*(v182 + 16))(v144, v139, v183);
        (*(v138 + 32))(v150, v140, v141);
        goto LABEL_35;
      }
    }

    else
    {
      sub_1E6001C2C(v75, v166, v129);
    }

    (*(v182 + 104))(v150, *MEMORY[0x1E699CB70], v183);
    goto LABEL_35;
  }

  v193 = *v50;
  v194 = v74;
  v195 = v76;
  v92 = v168;
  v93 = v74;
  sub_1E600B01C(v75, v74, v76);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F88, &unk_1E65EA400);
  v94 = v186;
  v95 = v171;
  sub_1E65E4C98();
  v96 = v164;
  sub_1E5E1F544(v164);
  sub_1E5DFE50C(v95, &qword_1ED071F78, &unk_1E65EA3F0);
  v97 = v169;
  v98 = *(v169 + 48);
  v99 = v170;
  if (v98(v96, 1, v170) == 1)
  {
    v100 = v76;
    sub_1E65D77C8();
    v101 = v98(v96, 1, v99);
    v102 = v156;
    if (v101 != 1)
    {
      sub_1E5DFE50C(v164, &qword_1ED071F80, &unk_1E65F4310);
    }
  }

  else
  {
    v103 = v97;
    v100 = v76;
    (*(v103 + 32))(v172, v96, v99);
    v102 = v156;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072818, &qword_1E65EBE10);
  v104 = v176;
  sub_1E65E4C98();
  sub_1E65E4DA8();
  sub_1E5DFE50C(v104, &qword_1ED072808, &qword_1E65EBE00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072990, &qword_1E65EC130);
  v105 = v178;
  sub_1E65E4C98();
  sub_1E65E4DA8();
  sub_1E5DFE50C(v105, &qword_1ED0741D8, &unk_1E6606270);
  sub_1E5DFD1CC(v188, v102, &unk_1ED077CD0, &unk_1E65F42F0);
  (*(v179 + 16))(v158, v181, v180);
  v106 = *(v94 + *(v92 + 192) + 64);
  if (!*(v106 + 16))
  {
    sub_1E6001C2C(v75, v93, v100);
    goto LABEL_17;
  }

  v107 = sub_1E6416FB4(v75, v93, v100);
  v109 = v108;
  sub_1E6001C2C(v75, v93, v100);
  if ((v109 & 1) == 0)
  {
LABEL_17:
    (*(v182 + 104))(v159, *MEMORY[0x1E699CB70], v183);
    goto LABEL_18;
  }

  v110 = *(v106 + 56);
  v111 = v182;
  v112 = v110 + *(v182 + 72) * v107;
  v113 = v145;
  v114 = v183;
  (*(v182 + 16))(v145, v112, v183);
  (*(v111 + 32))(v159, v113, v114);
LABEL_18:
  sub_1E604BABC();
  sub_1E65DE828();
  v115 = v188;
  return sub_1E5DFE50C(v115, &unk_1ED077CD0, &unk_1E65F42F0);
}

unsigned int *sub_1E63883AC@<X0>(unsigned int *result@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v3 = *result | (*(result + 4) << 32);
  if (*(result + 5) == 1)
  {
    if (v3)
    {
      *(a3 + 4) = 256;
      *a3 = 1;
      return result;
    }

    v4 = 256;
  }

  else
  {
    if (a2)
    {
      *a3 = *result;
      *(a3 + 4) = BYTE4(v3) & 1;
      return result;
    }

    v4 = 1;
  }

  *(a3 + 4) = v4;
  *a3 = 0;
  return result;
}

unsigned int *sub_1E638840C@<X0>(unsigned int *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result | (*(result + 4) << 32);
  if (*(result + 5) == 1)
  {
    if (v3)
    {
      *(a2 + 4) = 256;
      *a2 = 1;
      return result;
    }

    v4 = 256;
  }

  else
  {
    if (*(v2 + 16))
    {
      *a2 = *result;
      *(a2 + 4) = BYTE4(v3) & 1;
      return result;
    }

    v4 = 1;
  }

  *(a2 + 4) = v4;
  *a2 = 0;
  return result;
}

uint64_t sub_1E6388470(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077CD0, &unk_1E65F42F0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

id sub_1E63884E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0789F0, &qword_1E65FEBA8);
  v12 = objc_allocWithZone(v11);
  *&v12[qword_1ED079D30] = a2;
  v13 = swift_allocObject();
  v13[2] = a5;
  v13[3] = a6;
  v13[4] = a2;
  v25 = sub_1E638F56C;
  v26 = v13;
  aBlock = MEMORY[0x1E69E9820];
  v22 = 1107296256;
  v23 = sub_1E638D4E4;
  v24 = &block_descriptor_190;
  v14 = _Block_copy(&aBlock);
  swift_retain_n();

  v15 = swift_allocObject();
  v15[2] = a3;
  v15[3] = a4;
  v15[4] = a2;
  v25 = sub_1E638F460;
  v26 = v15;
  aBlock = MEMORY[0x1E69E9820];
  v22 = 1107296256;
  v23 = sub_1E5E05AB0;
  v24 = &block_descriptor_196;
  v16 = _Block_copy(&aBlock);

  v20.receiver = v12;
  v20.super_class = v11;
  v17 = objc_msgSendSuper2(&v20, sel_initWithSelector_requireEnabled_handler_, a1, v14, v16);

  _Block_release(v16);
  _Block_release(v14);
  return v17;
}

id sub_1E63886EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0789E8, &qword_1E65FEBA0);
  v12 = objc_allocWithZone(v11);
  *&v12[qword_1ED079D30] = a2;
  v13 = swift_allocObject();
  v13[2] = a5;
  v13[3] = a6;
  v13[4] = a2;
  v25 = sub_1E638F56C;
  v26 = v13;
  aBlock = MEMORY[0x1E69E9820];
  v22 = 1107296256;
  v23 = sub_1E638D4E4;
  v24 = &block_descriptor_16;
  v14 = _Block_copy(&aBlock);
  swift_retain_n();

  v15 = swift_allocObject();
  v15[2] = a3;
  v15[3] = a4;
  v15[4] = a2;
  v25 = sub_1E638F404;
  v26 = v15;
  aBlock = MEMORY[0x1E69E9820];
  v22 = 1107296256;
  v23 = sub_1E5E05AB0;
  v24 = &block_descriptor_184;
  v16 = _Block_copy(&aBlock);

  v20.receiver = v12;
  v20.super_class = v11;
  v17 = objc_msgSendSuper2(&v20, sel_initWithSelector_requireEnabled_handler_, a1, v14, v16);

  _Block_release(v16);
  _Block_release(v14);
  return v17;
}

id sub_1E63888F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078A08, &qword_1E65FEBC0);
  v12 = objc_allocWithZone(v11);
  *&v12[qword_1ED079D30] = a2;
  v13 = swift_allocObject();
  v13[2] = a5;
  v13[3] = a6;
  v13[4] = a2;
  v25 = sub_1E638F56C;
  v26 = v13;
  aBlock = MEMORY[0x1E69E9820];
  v22 = 1107296256;
  v23 = sub_1E638D4E4;
  v24 = &block_descriptor_226;
  v14 = _Block_copy(&aBlock);
  swift_retain_n();

  v15 = swift_allocObject();
  v15[2] = a3;
  v15[3] = a4;
  v15[4] = a2;
  v25 = sub_1E638F508;
  v26 = v15;
  aBlock = MEMORY[0x1E69E9820];
  v22 = 1107296256;
  v23 = sub_1E5E05AB0;
  v24 = &block_descriptor_232;
  v16 = _Block_copy(&aBlock);

  v20.receiver = v12;
  v20.super_class = v11;
  v17 = objc_msgSendSuper2(&v20, sel_initWithSelector_requireEnabled_handler_, a1, v14, v16);

  _Block_release(v16);
  _Block_release(v14);
  return v17;
}

id sub_1E6388B04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078A00, &qword_1E65FEBB8);
  v12 = objc_allocWithZone(v11);
  *&v12[qword_1ED079D30] = a2;
  v13 = swift_allocObject();
  v13[2] = a5;
  v13[3] = a6;
  v13[4] = a2;
  v25 = sub_1E638F4C8;
  v26 = v13;
  aBlock = MEMORY[0x1E69E9820];
  v22 = 1107296256;
  v23 = sub_1E638D4E4;
  v24 = &block_descriptor_214;
  v14 = _Block_copy(&aBlock);
  swift_retain_n();

  v15 = swift_allocObject();
  v15[2] = a3;
  v15[3] = a4;
  v15[4] = a2;
  v25 = sub_1E638F4FC;
  v26 = v15;
  aBlock = MEMORY[0x1E69E9820];
  v22 = 1107296256;
  v23 = sub_1E5E05AB0;
  v24 = &block_descriptor_220;
  v16 = _Block_copy(&aBlock);

  v20.receiver = v12;
  v20.super_class = v11;
  v17 = objc_msgSendSuper2(&v20, sel_initWithSelector_requireEnabled_handler_, a1, v14, v16);

  _Block_release(v16);
  _Block_release(v14);
  return v17;
}

id sub_1E6388D10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0789F8, &qword_1E65FEBB0);
  v12 = objc_allocWithZone(v11);
  *&v12[qword_1ED079D30] = a2;
  v13 = swift_allocObject();
  v13[2] = a5;
  v13[3] = a6;
  v13[4] = a2;
  v25 = sub_1E638F56C;
  v26 = v13;
  aBlock = MEMORY[0x1E69E9820];
  v22 = 1107296256;
  v23 = sub_1E638D4E4;
  v24 = &block_descriptor_202;
  v14 = _Block_copy(&aBlock);
  swift_retain_n();

  v15 = swift_allocObject();
  v15[2] = a3;
  v15[3] = a4;
  v15[4] = a2;
  v25 = sub_1E638F4BC;
  v26 = v15;
  aBlock = MEMORY[0x1E69E9820];
  v22 = 1107296256;
  v23 = sub_1E5E05AB0;
  v24 = &block_descriptor_208;
  v16 = _Block_copy(&aBlock);

  v20.receiver = v12;
  v20.super_class = v11;
  v17 = objc_msgSendSuper2(&v20, sel_initWithSelector_requireEnabled_handler_, a1, v14, v16);

  _Block_release(v16);
  _Block_release(v14);
  return v17;
}

uint64_t sub_1E6388F1C(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, void *a5)
{
  v54 = a5;
  v56 = a4;
  v63 = a1;
  v64 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v62 = v49 - v8;
  v9 = sub_1E65D7848();
  v58 = *(v9 - 8);
  v59 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v53 = v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077DC0, &qword_1E65FAB40);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v51 = (v49 - v12);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0776E0, &qword_1E65EDC00);
  v52 = *(v50 - 8);
  MEMORY[0x1EEE9AC00](v50);
  v57 = (v49 - v13);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073950, &unk_1E65F4360);
  MEMORY[0x1EEE9AC00](v14);
  v16 = v49 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0741F0, &unk_1E65EFC10);
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = v49 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0741E8, &qword_1E65EFC08);
  v60 = *(v21 - 8);
  v61 = v21;
  MEMORY[0x1EEE9AC00](v21);
  v23 = v49 - v22;
  v49[1] = *v5;
  swift_getKeyPath();
  sub_1E65E4EC8();

  v24 = v63;
  v65 = v63;
  v66 = a2;
  sub_1E65E4D78();
  (*(v18 + 8))(v20, v17);
  v25 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077A60, &qword_1E65F0870);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E65F32F0;
  *v16 = v24;
  *(v16 + 1) = a2;
  v27 = v24;
  v16[16] = 2;
  swift_storeEnumTagMultiPayload();

  v28 = v54;
  v29 = sub_1E649226C(v16, v56, v54);
  sub_1E5DFE50C(v16, &qword_1ED073950, &unk_1E65F4360);
  *(inited + 32) = v29;
  v55 = inited + 32;
  *v16 = v27;
  *(v16 + 1) = a2;
  v16[16] = 2;
  v30 = v28;
  swift_storeEnumTagMultiPayload();
  v49[0] = a2;

  v49[2] = v25;
  v31 = sub_1E6492AD8(v16, v64, v28);
  v32 = v23;
  sub_1E5DFE50C(v16, &qword_1ED073950, &unk_1E65F4360);
  *(inited + 40) = v31;
  swift_getKeyPath();
  v33 = v53;
  v34 = v50;
  sub_1E65E4EC8();
  v35 = v51;

  v56 = v32;
  sub_1E62DD2E4(v33, v35);
  (*(v58 + 8))(v33, v59);
  v36 = *(v52 + 48);
  if (v36(v35, 1, v34) == 1)
  {
    v37 = v57;
    v38 = v49[0];
    *v57 = v63;
    v37[1] = v38;
    *(v37 + 16) = 2;
    swift_storeEnumTagMultiPayload();
    v39 = v36(v35, 1, v34);

    if (v39 != 1)
    {
      sub_1E5DFE50C(v35, &qword_1ED077DC0, &qword_1E65FAB40);
    }
  }

  else
  {
    v37 = v57;
    sub_1E5FAB460(v35, v57, &unk_1ED0776E0, &qword_1E65EDC00);
  }

  v40 = sub_1E6200DD8(v37, v64, v30);
  if (qword_1ED071988 != -1)
  {
    swift_once();
  }

  v41 = qword_1ED0962F8;

  v42 = sub_1E63886EC(v41, v40, sub_1E5E278AC, 0, sub_1E5F88C58, 0);
  v43 = sub_1E65E60A8();
  v44 = v62;
  (*(*(v43 - 8) + 56))(v62, 1, 1, v43);
  v45 = swift_allocObject();
  v45[2] = 0;
  v45[3] = 0;
  v45[4] = v40;

  sub_1E64B80F8(0, 0, v44, &unk_1E65F91E8, v45);

  sub_1E5DFE50C(v37, &unk_1ED0776E0, &qword_1E65EDC00);
  *(inited + 48) = v42;
  sub_1E5F9AF8C(inited);
  v47 = v46;
  swift_setDeallocating();
  swift_arrayDestroy();
  (*(v60 + 8))(v56, v61);
  return v47;
}

uint64_t sub_1E63896A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v33 = a4;
  v34 = a1;
  v6 = sub_1E65DEBD8();
  v31 = *(v6 - 8);
  v32 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v29 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072AC0, &unk_1E65F4300);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v28 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077CC0, &unk_1E65F2610);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v28 - v16;
  v18 = type metadata accessor for AppState(0);
  v30 = a2;
  v35 = a2;
  v36 = a3;
  v37 = 2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072AC8, &qword_1E65EC488);
  sub_1E65E4D78();
  sub_1E65E4C98();
  (*(v9 + 8))(v11, v8);
  sub_1E5DFD1CC(v17, v15, &unk_1ED077CC0, &unk_1E65F2610);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2 && EnumCaseMultiPayload)
  {
    v20 = v32;
    v21 = a3;
    if (EnumCaseMultiPayload == 1)
    {
      v22 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073870, &unk_1E65F4340) + 48);
      v23 = sub_1E65D76A8();
      (*(*(v23 - 8) + 8))(&v15[v22], v23);
    }

    else
    {
      sub_1E5DFE50C(v15, &unk_1ED077CC0, &unk_1E65F2610);
    }
  }

  else
  {
    v20 = v32;
    v21 = a3;
  }

  v25 = v30;
  v24 = v31;
  v26 = v34;
  sub_1E637CA94(v30, v21, *(v34 + *(v18 + 268) + 8));
  sub_1E637CA94(v25, v21, *(v26 + *(v18 + 272) + 8));
  (*(v24 + 104))(v29, *MEMORY[0x1E699CD10], v20);
  sub_1E65DEBA8();
  return sub_1E5DFE50C(v17, &unk_1ED077CC0, &unk_1E65F2610);
}

uint64_t sub_1E6389A48(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v22 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0789D8, &qword_1E65FEAF8);
  v23 = *(v5 - 8);
  v24 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v21 - v6;
  v8 = type metadata accessor for AppComposer(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = sub_1E65E02E8();
  MEMORY[0x1EEE9AC00](v11 - 8);
  v12 = sub_1E65E0038();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *a1;
  sub_1E5E1DEAC(a1, &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v17 = swift_allocObject();
  sub_1E5E1FA80(&v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v16);
  sub_1E65E02D8();
  sub_1E65E0028();
  v18 = swift_allocObject();
  *(v18 + 16) = v22;
  *(v18 + 24) = a3;
  type metadata accessor for AppFeature(0);
  sub_1E638D9B4(&qword_1EE2DBD90, type metadata accessor for AppFeature, &protocol conformance descriptor for AppFeature);
  sub_1E638D9B4(&qword_1ED0789E0, MEMORY[0x1E699D658], MEMORY[0x1E699D650]);

  sub_1E65E4DE8();
  sub_1E65E4CC8();
  v19 = sub_1E65E4F08();
  (*(v23 + 8))(v7, v24);
  (*(v13 + 8))(v15, v12);
  return v19;
}

uint64_t sub_1E6389DF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1E6389E1C, 0, 0);
}

uint64_t sub_1E6389E1C()
{
  v1 = v0[4];
  v0[5] = *(v1 + *(type metadata accessor for AppComposer(0) + 24));
  sub_1E65E6058();
  v0[6] = sub_1E65E6048();
  v3 = sub_1E65E5FC8();

  return MEMORY[0x1EEE6DFA0](sub_1E6389EC8, v3, v2);
}

uint64_t sub_1E6389EC8()
{
  v2 = v0[2];
  v1 = v0[3];

  sub_1E608521C(v2, v1, 2);
  v3 = v0[1];

  return v3();
}

uint64_t sub_1E6389F48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X4>, uint64_t a6@<X8>)
{
  v40 = a3;
  v41 = a4;
  v37 = a2;
  v38 = a1;
  v42 = a6;
  v39 = sub_1E65D76F8();
  v43 = *(v39 - 8);
  v8 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v39);
  v33 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for AppComposer(0);
  v34 = *(v9 - 8);
  v10 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v32 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073950, &unk_1E65F4360);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v32 - v16;
  *v17 = v37;
  *(v17 + 1) = a3;
  v17[16] = 2;
  swift_storeEnumTagMultiPayload();
  sub_1E5E1DEAC(v38, &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1E5DFD1CC(v17, v15, &qword_1ED073950, &unk_1E65F4360);
  v18 = v43;
  v19 = v39;
  (*(v43 + 16))(&v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v41, v39);
  v20 = a5[3];
  v35 = *a5;
  v36 = v20;
  v21 = a5[7];
  v37 = a5[5];
  v38 = v21;
  v41 = a5[9];
  v22 = (*(v34 + 80) + 16) & ~*(v34 + 80);
  v23 = (v10 + *(v12 + 80) + v22) & ~*(v12 + 80);
  v24 = (v13 + *(v18 + 80) + v23) & ~*(v18 + 80);
  v25 = (v8 + v24 + 7) & 0xFFFFFFFFFFFFFFF8;
  v26 = swift_allocObject();
  sub_1E5E1FA80(v32, v26 + v22);
  sub_1E5FAB460(v15, v26 + v23, &qword_1ED073950, &unk_1E65F4360);
  (*(v43 + 32))(v26 + v24, v33, v19);
  v27 = (v26 + v25);
  v28 = *(a5 + 3);
  v27[2] = *(a5 + 2);
  v27[3] = v28;
  v27[4] = *(a5 + 4);
  v29 = *(a5 + 1);
  *v27 = *a5;
  v27[1] = v29;
  v30 = (v26 + ((v25 + 87) & 0xFFFFFFFFFFFFFFF8));
  *v30 = nullsub_1;
  v30[1] = 0;
  sub_1E604BABC();

  swift_unknownObjectRetain();

  sub_1E65DE518();
  return sub_1E5DFE50C(v17, &qword_1ED073950, &unk_1E65F4360);
}

uint64_t sub_1E638A31C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X4>, uint64_t a6@<X8>)
{
  v38 = a3;
  v39 = a4;
  v35 = a2;
  v36 = a1;
  v40 = a6;
  v37 = sub_1E65D76F8();
  v8 = *(v37 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v37);
  v30 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for AppComposer(0);
  v34 = *(v10 - 8);
  v11 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v29 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0776E0, &qword_1E65EDC00);
  v31 = *(v12 - 8);
  v13 = *(v31 + 64);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v15 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v29 - v16;
  *v17 = v35;
  *(v17 + 1) = a3;
  v17[16] = 2;
  swift_storeEnumTagMultiPayload();
  sub_1E5E1DEAC(v36, &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1E5DFD1CC(v17, v15, &unk_1ED0776E0, &qword_1E65EDC00);
  v18 = v37;
  (*(v8 + 16))(&v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v39, v37);
  v19 = a5[3];
  v32 = *a5;
  v33 = v19;
  v20 = a5[7];
  v35 = a5[5];
  v36 = v20;
  v39 = a5[9];
  v21 = (*(v34 + 80) + 16) & ~*(v34 + 80);
  v22 = (v11 + *(v31 + 80) + v21) & ~*(v31 + 80);
  v23 = (v13 + *(v8 + 80) + v22) & ~*(v8 + 80);
  v24 = swift_allocObject();
  sub_1E5E1FA80(v29, v24 + v21);
  sub_1E5FAB460(v15, v24 + v22, &unk_1ED0776E0, &qword_1E65EDC00);
  (*(v8 + 32))(v24 + v23, v30, v18);
  v25 = (v24 + ((v9 + v23 + 7) & 0xFFFFFFFFFFFFFFF8));
  v26 = *(a5 + 3);
  v25[2] = *(a5 + 2);
  v25[3] = v26;
  v25[4] = *(a5 + 4);
  v27 = *(a5 + 1);
  *v25 = *a5;
  v25[1] = v27;
  sub_1E604C89C();

  swift_unknownObjectRetain();

  sub_1E65DE4E8();
  return sub_1E5DFE50C(v17, &unk_1ED0776E0, &qword_1E65EDC00);
}

uint64_t sub_1E638A6CC@<X0>(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v18 = a2;
  v21 = a3;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076F88, &qword_1E65F90B8);
  v4 = *(v3 - 8);
  v19 = v3;
  v20 = v4;
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v18 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077CF0, &unk_1E65F7110);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v18 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0739A8, &qword_1E65F7120);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v18 - v13;
  sub_1E604BABC();

  sub_1E65DEE28();
  sub_1E604C89C();

  sub_1E65DE568();
  v15 = sub_1E5FED46C(&qword_1EE2D6810, &qword_1ED0739A8, &qword_1E65F7120, MEMORY[0x1E699CDD8]);
  MEMORY[0x1E69482C0](v14, v11, v15);
  v22 = v11;
  v23 = v15;
  swift_getOpaqueTypeConformance2();
  sub_1E5FED46C(&qword_1EE2D68A8, &unk_1ED077CF0, &unk_1E65F7110, MEMORY[0x1E699CB30]);
  v16 = v19;
  sub_1E65E08A8();
  (*(v20 + 8))(v6, v16);
  (*(v8 + 8))(v10, v7);
  return (*(v12 + 8))(v14, v11);
}

uint64_t sub_1E638AA24(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v10 - v5;
  v7 = sub_1E65E60A8();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = a1;
  v8[5] = a2;

  sub_1E64B80F8(0, 0, v6, &unk_1E65FEB40, v8);
}

char *sub_1E638AB3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v150 = a1;
  v151 = a4;
  v149 = a3;
  v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077C90, &qword_1E65F8F88);
  v136 = *(v137 - 8);
  MEMORY[0x1EEE9AC00](v137);
  v133 = v112 - v7;
  v132 = sub_1E65DED38();
  v134 = *(v132 - 8);
  MEMORY[0x1EEE9AC00](v132);
  v131 = v112 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077208, &qword_1E65F9848) - 8;
  v9 = MEMORY[0x1EEE9AC00](v130);
  v135 = v112 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v155 = v112 - v11;
  v157 = sub_1E65D76F8();
  v154 = *(v157 - 8);
  v153 = *(v154 + 64);
  v12 = MEMORY[0x1EEE9AC00](v157);
  v152 = v112 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v159 = v112 - v14;
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077CA0, &unk_1E65F7160);
  v127 = *(v128 - 8);
  MEMORY[0x1EEE9AC00](v128);
  v148 = v112 - v15;
  v16 = type metadata accessor for AppComposer(0);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x1EEE9AC00](v16 - 8);
  v129 = v112 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v19);
  v126 = v112 - v21;
  MEMORY[0x1EEE9AC00](v20);
  v23 = v112 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073860, &unk_1E65FA8F0);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v144 = v112 - v25;
  v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077CB0, &unk_1E65F7170);
  v125 = *(v146 - 8);
  MEMORY[0x1EEE9AC00](v146);
  v141 = v112 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072AA8, &unk_1E65FA900);
  v140 = *(v27 - 8);
  v145 = *(v140 + 64);
  v28 = MEMORY[0x1EEE9AC00](v27);
  v114 = v112 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v31 = v112 - v30;
  v139 = v112 - v30;
  *v31 = a1;
  *(v31 + 1) = a2;
  v147 = a2;
  v31[16] = 2;
  swift_storeEnumTagMultiPayload();
  v122 = *v4;
  sub_1E5E1DEAC(v4, v23);
  v32 = *(v17 + 80);
  v33 = ((v32 + 16) & ~v32) + v18;
  v34 = (v32 + 16) & ~v32;
  v35 = v32 | 7;
  v36 = swift_allocObject();
  sub_1E5E1FA80(v23, v36 + v34);
  sub_1E5E1DEAC(v4, v23);
  v37 = swift_allocObject();
  sub_1E5E1FA80(v23, v37 + v34);
  v142 = v4;
  sub_1E5E1DEAC(v4, v23);
  v138 = v33;
  v158 = v35;
  v38 = swift_allocObject();
  v156 = v34;
  v160 = v23;
  sub_1E5E1FA80(v23, v38 + v34);
  v39 = swift_allocObject();
  *(v39 + 16) = &unk_1E65F7190;
  *(v39 + 24) = v38;
  sub_1E5E1DEAC(v4, v23);
  v40 = swift_allocObject();
  sub_1E5E1FA80(v23, v40 + v34);
  sub_1E604BABC();

  sub_1E65DED58();
  sub_1E65DEAC8();
  v41 = v139;
  v42 = v114;
  sub_1E5DFD1CC(v139, v114, &qword_1ED072AA8, &unk_1E65FA900);
  v43 = v154;
  v44 = *(v154 + 16);
  v144 = (v154 + 16);
  v143 = v44;
  v45 = v159;
  v46 = v157;
  v44(v159, v149, v157);
  v113 = *(v140 + 80);
  v47 = (v113 + 16) & ~v113;
  v140 = v47 + v145;
  v119 = *(v43 + 80);
  v48 = (v47 + v145 + v119) & ~v119;
  v49 = v48 + v153;
  v50 = swift_allocObject();
  sub_1E5FAB460(v42, v50 + v47, &qword_1ED072AA8, &unk_1E65FA900);
  v51 = *(v43 + 32);
  v120 = v43 + 32;
  v121 = v51;
  v51(v50 + v48, v45, v46);
  *(v50 + v49) = 0;
  sub_1E5DFD1CC(v41, v42, &qword_1ED072AA8, &unk_1E65FA900);
  v52 = swift_allocObject();
  sub_1E5FAB460(v42, v52 + v47, &qword_1ED072AA8, &unk_1E65FA900);
  v124 = type metadata accessor for AppFeature(0);
  v123 = sub_1E638D9B4(&qword_1EE2DBD90, type metadata accessor for AppFeature, &protocol conformance descriptor for AppFeature);
  v112[1] = sub_1E5FED46C(&qword_1EE2D6848, &unk_1ED077CB0, &unk_1E65F7170, MEMORY[0x1E699CCE0]);
  sub_1E65E4DE8();
  v53 = v160;
  sub_1E5E1DEAC(v142, v160);
  v54 = v151;
  v115 = *v151;
  v116 = v151[3];
  v117 = v151[5];
  v118 = v151[7];
  v140 = v151[9];
  sub_1E5DFD1CC(v41, v42, &qword_1ED072AA8, &unk_1E65FA900);
  v55 = (v138 + 7) & 0xFFFFFFFFFFFFFFF8;
  v138 = v55;
  v56 = (v55 + v113 + 80) & ~v113;
  v57 = swift_allocObject();
  sub_1E5E1FA80(v53, v57 + v156);
  v58 = (v57 + v55);
  v59 = *(v54 + 3);
  v58[2] = *(v54 + 2);
  v58[3] = v59;
  v58[4] = *(v54 + 4);
  v60 = *(v54 + 1);
  *v58 = *v54;
  v58[1] = v60;
  sub_1E5FAB460(v42, v57 + v56, &qword_1ED072AA8, &unk_1E65FA900);
  swift_unknownObjectRetain();

  sub_1E65E4CC8();
  v61 = swift_allocObject();
  *(v61 + 16) = sub_1E62423E8;
  *(v61 + 24) = v57;

  v62 = v141;
  v63 = v148;
  v64 = v146;
  v145 = sub_1E65E4F08();

  (*(v127 + 8))(v63, v128);
  (*(v125 + 8))(v62, v64);
  sub_1E5DFE50C(v139, &qword_1ED072AA8, &unk_1E65FA900);
  v65 = v142;
  sub_1E5E1DEAC(v142, v53);
  v66 = v149;
  v67 = v157;
  v68 = v143;
  v143(v159, v149, v157);
  v69 = v126;
  sub_1E5E1DEAC(v65, v126);
  v70 = v138;
  v71 = v138 + 16;
  v72 = swift_allocObject();
  v148 = v72;
  sub_1E5E1FA80(v69, v72 + v156);
  v73 = (v72 + v70);
  v74 = v150;
  v75 = v147;
  *v73 = v150;
  v73[1] = v75;
  v76 = v65;
  v77 = v129;
  sub_1E5E1DEAC(v76, v129);
  v78 = v152;
  v79 = v67;
  v68(v152, v66, v67);
  v80 = (v71 + v119) & ~v119;
  v81 = (v153 + v80 + 7) & 0xFFFFFFFFFFFFFFF8;
  v82 = swift_allocObject();
  sub_1E5E1FA80(v77, v82 + v156);
  v83 = (v82 + v138);
  *v83 = v74;
  v83[1] = v75;
  v84 = v75;
  v121(v82 + v80, v78, v79);
  v85 = (v82 + v81);
  v86 = v151;
  v87 = *(v151 + 3);
  v85[2] = *(v151 + 2);
  v85[3] = v87;
  v85[4] = *(v86 + 4);
  v88 = *(v86 + 1);
  *v85 = *v86;
  v85[1] = v88;
  swift_bridgeObjectRetain_n();
  swift_unknownObjectRetain();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0789C0, &qword_1E65FE9E0);
  v89 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED076F50, &qword_1E65F8F98);
  v90 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED076F48, &qword_1E65F8F90);
  v91 = sub_1E65E3F88();
  v92 = sub_1E5FED46C(&qword_1ED076F68, &qword_1ED076F48, &qword_1E65F8F90, MEMORY[0x1E699CC78]);
  v93 = sub_1E638D9B4(&unk_1ED07A410, MEMORY[0x1E697C4E8], MEMORY[0x1E697C4E0]);
  v163 = v90;
  v164 = v91;
  v165 = v92;
  v166 = v93;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v95 = sub_1E62438F0();
  v163 = v89;
  v164 = &type metadata for NavigationBarButtonStyle;
  v165 = OpaqueTypeConformance2;
  v166 = v95;
  swift_getOpaqueTypeConformance2();
  v96 = v155;
  sub_1E65DFFE8();
  v97 = (v96 + *(v130 + 44));
  v98 = v145;
  *v97 = sub_1E638D810;
  v97[1] = v98;
  v99 = type metadata accessor for DynamicBarButtonItem(0);
  v97[2] = 0;
  v97[3] = 0;
  v100 = objc_allocWithZone(v99);
  v101 = v131;
  sub_1E65DED28();
  v102 = swift_allocObject();
  *(v102 + 16) = v150;
  *(v102 + 24) = v84;
  sub_1E638D9B4(&qword_1EE2D6820, MEMORY[0x1E699CD98], MEMORY[0x1E699CD90]);

  v103 = v133;
  v104 = v132;
  sub_1E65E4DF8();
  sub_1E65E4CC8();
  sub_1E65E4F08();
  (*(v136 + 8))(v103, v137);
  (*(v134 + 8))(v101, v104);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076F80, &qword_1E65FA950);
  swift_allocObject();
  *&v100[OBJC_IVAR____TtC10Blackbeard20DynamicBarButtonItem_changeObserver] = sub_1E65E4D18();
  v105 = v152;
  v106 = v159;
  v107 = v157;
  v143(v152, v159, v157);
  v108 = v135;
  sub_1E5DFD1CC(v96, v135, &qword_1ED077208, &qword_1E65F9848);
  v109 = sub_1E625BA90(v105, v108);
  KeyPath = swift_getKeyPath();
  swift_getKeyPath();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v110 = v109;

  sub_1E65E4D08();

  v161 = swift_getKeyPath();
  swift_getKeyPath();
  swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_1E638D9B4(&qword_1EE2D6840, MEMORY[0x1E699CD20], MEMORY[0x1E699CD28]);
  sub_1E65E4D08();

  sub_1E65E4CF8();

  sub_1E624395C(v160);

  sub_1E5DFE50C(v155, &qword_1ED077208, &qword_1E65F9848);
  (*(v154 + 8))(v106, v107);
  return v110;
}

uint64_t sub_1E638BE3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v35 = a4;
  v7 = sub_1E65DEBD8();
  v33 = *(v7 - 8);
  v34 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v32 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072AC0, &unk_1E65F4300);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v29 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077CC0, &unk_1E65F2610);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v29 - v17;
  v29 = type metadata accessor for AppState(0);
  v30 = a2;
  v36 = a2;
  v37 = a3;
  v31 = a3;
  v38 = 2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072AC8, &qword_1E65EC488);
  v19 = a1;
  sub_1E65E4D78();
  sub_1E65E4C98();
  (*(v10 + 8))(v12, v9);
  sub_1E5DFD1CC(v18, v16, &unk_1ED077CC0, &unk_1E65F2610);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    v26 = 0;
LABEL_7:
    v21 = v34;
    v23 = v32;
    v22 = v33;
    v24 = v29;
    goto LABEL_9;
  }

  if (!EnumCaseMultiPayload)
  {
    v26 = *v16;
    goto LABEL_7;
  }

  v21 = v34;
  v23 = v32;
  v22 = v33;
  v24 = v29;
  if (EnumCaseMultiPayload == 1)
  {
    v25 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073870, &unk_1E65F4340) + 48);
    v26 = *v16;
    v27 = sub_1E65D76A8();
    (*(*(v27 - 8) + 8))(&v16[v25], v27);
  }

  else
  {
    sub_1E5DFE50C(v16, &unk_1ED077CC0, &unk_1E65F2610);
    v26 = 0;
  }

LABEL_9:
  if ((sub_1E637CA94(v30, v31, *(v19 + *(v24 + 268) + 8)) & 1) != 0 || v26)
  {
    sub_1E63969B4();
  }

  (*(v22 + 104))(v23, *MEMORY[0x1E699CD10], v21);
  sub_1E65DEBA8();
  return sub_1E5DFE50C(v18, &unk_1ED077CC0, &unk_1E65F2610);
}

uint64_t sub_1E638C1C8(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v22 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0789D8, &qword_1E65FEAF8);
  v23 = *(v5 - 8);
  v24 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v21 - v6;
  v8 = type metadata accessor for AppComposer(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = sub_1E65E02E8();
  MEMORY[0x1EEE9AC00](v11 - 8);
  v12 = sub_1E65E0038();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *a1;
  sub_1E5E1DEAC(a1, &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v17 = swift_allocObject();
  sub_1E5E1FA80(&v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v16);
  sub_1E65E02D8();
  sub_1E65E0028();
  v18 = swift_allocObject();
  *(v18 + 16) = v22;
  *(v18 + 24) = a3;
  type metadata accessor for AppFeature(0);
  sub_1E638D9B4(&qword_1EE2DBD90, type metadata accessor for AppFeature, &protocol conformance descriptor for AppFeature);
  sub_1E638D9B4(&qword_1ED0789E0, MEMORY[0x1E699D658], MEMORY[0x1E699D650]);

  sub_1E65E4DE8();
  sub_1E65E4CC8();
  v19 = sub_1E65E4F08();
  (*(v23 + 8))(v7, v24);
  (*(v13 + 8))(v15, v12);
  return v19;
}

uint64_t sub_1E638C578(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1E638C59C, 0, 0);
}

uint64_t sub_1E638C59C()
{
  v1 = v0[4];
  v0[5] = *(v1 + *(type metadata accessor for AppComposer(0) + 24));
  sub_1E65E6058();
  v0[6] = sub_1E65E6048();
  v3 = sub_1E65E5FC8();

  return MEMORY[0x1EEE6DFA0](sub_1E638F53C, v3, v2);
}

uint64_t sub_1E638C648@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v20[0] = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072AC0, &unk_1E65F4300);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v20 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077CC0, &unk_1E65F2610);
  v12 = MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = v20 - v15;
  v17 = type metadata accessor for AppState(0);
  v20[1] = a2;
  v20[2] = a3;
  v21 = 2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072AC8, &qword_1E65EC488);
  sub_1E65E4D78();
  sub_1E65E4C98();
  (*(v8 + 8))(v10, v7);
  sub_1E5DFD1CC(v16, v14, &unk_1ED077CC0, &unk_1E65F2610);
  v18 = *(a1 + *(v17 + 268) + 8);

  sub_1E637CA94(a2, a3, v18);
  sub_1E637CA94(a2, a3, *(a1 + *(v17 + 272) + 8));
  sub_1E65DFE48();
  return sub_1E5DFE50C(v16, &unk_1ED077CC0, &unk_1E65F2610);
}

uint64_t sub_1E638C888@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, uint64_t a6@<X8>)
{
  v99 = a4;
  v80 = a2;
  v103 = a1;
  v98 = a6;
  v8 = sub_1E65E3F88();
  v9 = *(v8 - 8);
  v96 = v8;
  v97 = v9;
  MEMORY[0x1EEE9AC00](v8);
  v95 = &v69 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = sub_1E65D76F8();
  v100 = *(v81 - 8);
  v83 = *(v100 + 64);
  MEMORY[0x1EEE9AC00](v81);
  v12 = &v69 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for AppComposer(0);
  v78 = *(v13 - 8);
  v14 = *(v78 + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073950, &unk_1E65F4360);
  v77 = *(v15 - 8);
  v16 = *(v77 + 64);
  v17 = MEMORY[0x1EEE9AC00](v15 - 8);
  v70 = &v69 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v69 - v18;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077CE0, &unk_1E65F72C0);
  v86 = *(v88 - 8);
  v87 = *(v86 + 64);
  v20 = MEMORY[0x1EEE9AC00](v88);
  v85 = &v69 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v101 = &v69 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073958, &qword_1E65EDCD0);
  v84 = *(v23 - 8);
  v82 = *(v84 + 64);
  v24 = MEMORY[0x1EEE9AC00](v23);
  v79 = &v69 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v27 = &v69 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076F48, &qword_1E65F8F90);
  v29 = *(v28 - 8);
  v91 = v28;
  v92 = v29;
  MEMORY[0x1EEE9AC00](v28);
  v89 = &v69 - v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076F50, &qword_1E65F8F98);
  v32 = *(v31 - 8);
  v93 = v31;
  v94 = v32;
  MEMORY[0x1EEE9AC00](v31);
  v90 = &v69 - v33;
  *v27 = v80;
  *(v27 + 1) = a3;
  v27[16] = 2;
  v102 = v27;
  swift_storeEnumTagMultiPayload();

  v76 = v19;
  sub_1E6184404(v19);
  v34 = &v69 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E5E1DEAC(v103, v34);
  sub_1E5DFD1CC(v19, &v69 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), &qword_1ED073950, &unk_1E65F4360);
  v35 = v100;
  v36 = v12;
  v37 = v81;
  (*(v100 + 16))(v12, v99, v81);
  v38 = a5;
  v71 = *a5;
  v72 = a5[3];
  v73 = a5[5];
  v74 = a5[7];
  v75 = a5[9];
  v39 = *(v78 + 80);
  v40 = (v39 + 16) & ~v39;
  v99 = v40 + v14;
  v78 = v40;
  v80 = v39 | 7;
  v41 = (v40 + v14 + *(v77 + 80)) & ~*(v77 + 80);
  v42 = (v16 + *(v35 + 80) + v41) & ~*(v35 + 80);
  v43 = (v83 + v42 + 7) & 0xFFFFFFFFFFFFFFF8;
  v44 = swift_allocObject();
  sub_1E5E1FA80(v34, v44 + v40);
  sub_1E5FAB460(v70, v44 + v41, &qword_1ED073950, &unk_1E65F4360);
  (*(v100 + 32))(v44 + v42, v36, v37);
  v45 = (v44 + v43);
  v46 = v38[3];
  v45[2] = v38[2];
  v45[3] = v46;
  v45[4] = v38[4];
  v47 = v38[1];
  *v45 = *v38;
  v45[1] = v47;
  v48 = (v44 + ((v43 + 87) & 0xFFFFFFFFFFFFFFF8));
  *v48 = nullsub_1;
  v48[1] = 0;
  sub_1E604BABC();
  swift_unknownObjectRetain();

  v49 = v101;
  sub_1E65DE518();
  sub_1E5DFE50C(v76, &qword_1ED073950, &unk_1E65F4360);
  sub_1E5E1DEAC(v103, v34);
  v50 = v79;
  sub_1E5DFD1CC(v102, v79, &qword_1ED073958, &qword_1E65EDCD0);
  v51 = (v99 + *(v84 + 80)) & ~*(v84 + 80);
  v52 = swift_allocObject();
  v100 = v52;
  v53 = v78;
  sub_1E5E1FA80(v34, v52 + v78);
  sub_1E5FAB460(v50, v52 + v51, &qword_1ED073958, &qword_1E65EDCD0);
  v54 = v86;
  v55 = v85;
  v56 = v88;
  (*(v86 + 16))(v85, v49, v88);
  v57 = (*(v54 + 80) + 16) & ~*(v54 + 80);
  v58 = swift_allocObject();
  (*(v54 + 32))(v58 + v57, v55, v56);
  sub_1E5E1DEAC(v103, v34);
  v59 = swift_allocObject();
  sub_1E5E1FA80(v34, v59 + v53);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076F60, &qword_1E65F8FA8);
  sub_1E604CB00();
  sub_1E5FED46C(&qword_1EE2D68D0, &qword_1ED077CE0, &unk_1E65F72C0, MEMORY[0x1E699CAF8]);
  swift_getOpaqueTypeConformance2();
  v60 = v89;
  sub_1E65DE8A8();
  (*(v54 + 8))(v101, v56);
  sub_1E5DFE50C(v102, &qword_1ED073958, &qword_1E65EDCD0);
  v61 = v95;
  sub_1E65E3F78();
  v62 = sub_1E5FED46C(&qword_1ED076F68, &qword_1ED076F48, &qword_1E65F8F90, MEMORY[0x1E699CC78]);
  v63 = sub_1E638D9B4(&unk_1ED07A410, MEMORY[0x1E697C4E8], MEMORY[0x1E697C4E0]);
  v65 = v90;
  v64 = v91;
  v66 = v96;
  sub_1E65E47D8();
  (*(v97 + 8))(v61, v66);
  (*(v92 + 8))(v60, v64);
  v104 = v64;
  v105 = v66;
  v106 = v62;
  v107 = v63;
  swift_getOpaqueTypeConformance2();
  sub_1E62438F0();
  v67 = v93;
  sub_1E65E47F8();
  return (*(v94 + 8))(v65, v67);
}

uint64_t sub_1E638D3D8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v8 - v3;
  v5 = sub_1E65E60A8();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = a1;

  sub_1E64B80F8(0, 0, v4, &unk_1E65FEAF0, v6);
}

uint64_t sub_1E638D4E4(uint64_t a1)
{
  v1 = *(a1 + 32);

  LOBYTE(v1) = v1(v2);

  return v1 & 1;
}

void *sub_1E638D524(void *(*a1)(uint64_t *__return_ptr, uint64_t), uint64_t a2, uint64_t a3)
{
  result = a1(&v4, a3);
  if ((v4 & 0x100000000000000) == 0)
  {
    v6 = WORD2(v4);
    v5 = v4;
    v7 = BYTE6(v4) & 1;
    return sub_1E65E4EE8();
  }

  return result;
}

void *sub_1E638D594(void *(*a1)(uint64_t *__return_ptr, uint64_t), uint64_t a2, uint64_t a3)
{
  result = a1(&v4, a3);
  if (v5 <= 0xFBu)
  {
    v6 = v4;
    v7 = v5;
    return sub_1E65E4EE8();
  }

  return result;
}

void *sub_1E638D5F8(void *(*a1)(uint64_t *__return_ptr, uint64_t), uint64_t a2, uint64_t a3)
{
  result = a1(&v4, a3);
  if (v4 != 2)
  {
    BYTE1(v4) = v4 & 1;
    return sub_1E65E4EE8();
  }

  return result;
}

uint64_t sub_1E638D680@<X0>(_BYTE *a2@<X8>)
{
  result = sub_1E65E4EC8();
  *a2 = v4;
  return result;
}

uint64_t sub_1E638D6C0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1E65DEBB8();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1E638D820(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1E5DFE6BC;

  return sub_1E6243658(a1, v4, v5, v6);
}

uint64_t sub_1E638D8D4(uint64_t a1, uint64_t a2)
{
  v6 = *(type metadata accessor for AppComposer(0) - 8);
  v7 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1E5DFE6BC;

  return sub_1E638C578(a1, a2, v2 + v7);
}

uint64_t sub_1E638D9B4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

char *sub_1E638D9FC(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, void *a5)
{
  v168 = a4;
  v180 = a3;
  v181 = a1;
  v159 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077C90, &qword_1E65F8F88);
  v158 = *(v159 - 8);
  MEMORY[0x1EEE9AC00](v159);
  v155 = v132 - v8;
  v154 = sub_1E65DED38();
  v156 = *(v154 - 8);
  MEMORY[0x1EEE9AC00](v154);
  v153 = v132 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v152 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077228, &unk_1E65FA8E0) - 8;
  v10 = MEMORY[0x1EEE9AC00](v152);
  v157 = v132 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v172 = v132 - v12;
  v149 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0776E0, &qword_1E65EDC00);
  MEMORY[0x1EEE9AC00](v149);
  v148 = (v132 - v13);
  v182 = sub_1E65D76F8();
  v171 = *(v182 - 8);
  v170 = *(v171 + 64);
  v14 = MEMORY[0x1EEE9AC00](v182);
  v151 = v132 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v169 = v132 - v17;
  MEMORY[0x1EEE9AC00](v16);
  v179 = v132 - v18;
  v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077CA0, &unk_1E65F7160);
  v142 = *(v143 - 8);
  MEMORY[0x1EEE9AC00](v143);
  v167 = v132 - v19;
  v20 = type metadata accessor for AppComposer(0);
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  v23 = MEMORY[0x1EEE9AC00](v20 - 8);
  v150 = v132 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x1EEE9AC00](v23);
  v145 = v132 - v25;
  v26 = MEMORY[0x1EEE9AC00](v24);
  v144 = v132 - v27;
  MEMORY[0x1EEE9AC00](v26);
  v29 = v132 - v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073860, &unk_1E65FA8F0);
  MEMORY[0x1EEE9AC00](v30 - 8);
  v178 = v132 - v31;
  v165 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077CB0, &unk_1E65F7170);
  v141 = *(v165 - 8);
  MEMORY[0x1EEE9AC00](v165);
  v161 = v132 - v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072AA8, &unk_1E65FA900);
  v163 = *(v33 - 8);
  v164 = *(v163 + 64);
  v34 = MEMORY[0x1EEE9AC00](v33);
  v160 = v132 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34);
  v37 = v132 - v36;
  v174 = v132 - v36;
  *v37 = a1;
  *(v37 + 1) = a2;
  v184 = a2;
  v37[16] = 2;
  swift_storeEnumTagMultiPayload();
  v140 = *a5;
  sub_1E5E1DEAC(a5, v29);
  v38 = *(v21 + 80);
  v39 = ((v38 + 16) & ~v38) + v22;
  v40 = (v38 + 16) & ~v38;
  v41 = v38 | 7;
  v42 = swift_allocObject();
  sub_1E5E1FA80(v29, v42 + v40);
  sub_1E5E1DEAC(a5, v29);
  v43 = swift_allocObject();
  sub_1E5E1FA80(v29, v43 + v40);
  v175 = a5;
  sub_1E5E1DEAC(a5, v29);
  v173 = v39;
  v166 = v41;
  v44 = swift_allocObject();
  v176 = v40;
  v183 = v29;
  sub_1E5E1FA80(v29, v44 + v40);
  v45 = swift_allocObject();
  *(v45 + 16) = &unk_1E65FEB20;
  *(v45 + 24) = v44;
  sub_1E5E1DEAC(a5, v29);
  v46 = swift_allocObject();
  sub_1E5E1FA80(v29, v46 + v40);
  sub_1E604BABC();

  sub_1E65DED58();
  sub_1E65DEAC8();
  v47 = v160;
  sub_1E5DFD1CC(v174, v160, &qword_1ED072AA8, &unk_1E65FA900);
  v48 = v171;
  v177 = *(v171 + 16);
  v178 = (v171 + 16);
  v49 = v179;
  v50 = v182;
  v177(v179, v180, v182);
  v133 = *(v163 + 80);
  v51 = (v133 + 16) & ~v133;
  v162 = v51 + v164;
  v163 = *(v48 + 80);
  v52 = (v51 + v164 + v163) & ~v163;
  v53 = v52 + v170;
  v54 = swift_allocObject();
  sub_1E5FAB460(v47, v54 + v51, &qword_1ED072AA8, &unk_1E65FA900);
  v55 = *(v48 + 32);
  v138 = v48 + 32;
  v139 = v55;
  v55(v54 + v52, v49, v50);
  *(v54 + v53) = 0;
  v56 = v174;
  sub_1E5DFD1CC(v174, v47, &qword_1ED072AA8, &unk_1E65FA900);
  v57 = swift_allocObject();
  sub_1E5FAB460(v47, v57 + v51, &qword_1ED072AA8, &unk_1E65FA900);
  v147 = type metadata accessor for AppFeature(0);
  v146 = sub_1E638D9B4(&qword_1EE2DBD90, type metadata accessor for AppFeature, &protocol conformance descriptor for AppFeature);
  v132[1] = sub_1E5FED46C(&qword_1EE2D6848, &unk_1ED077CB0, &unk_1E65F7170, MEMORY[0x1E699CCE0]);
  sub_1E65E4DE8();
  v58 = v183;
  sub_1E5E1DEAC(v175, v183);
  v59 = v168;
  v134 = *v168;
  v135 = *(v168 + 24);
  v136 = *(v168 + 40);
  v137 = *(v168 + 56);
  v162 = *(v168 + 72);
  v60 = v160;
  sub_1E5DFD1CC(v56, v160, &qword_1ED072AA8, &unk_1E65FA900);
  v61 = (v173 + 7) & 0xFFFFFFFFFFFFFFF8;
  v173 = v61;
  v62 = (v61 + v133 + 80) & ~v133;
  v63 = swift_allocObject();
  sub_1E5E1FA80(v58, v63 + v176);
  v64 = (v63 + v61);
  v65 = v59[3];
  v64[2] = v59[2];
  v64[3] = v65;
  v64[4] = v59[4];
  v66 = v59[1];
  *v64 = *v59;
  v64[1] = v66;
  sub_1E5FAB460(v60, v63 + v62, &qword_1ED072AA8, &unk_1E65FA900);
  swift_unknownObjectRetain();

  sub_1E65E4CC8();
  v67 = swift_allocObject();
  *(v67 + 16) = sub_1E638F568;
  *(v67 + 24) = v63;

  v68 = v161;
  v69 = v167;
  v70 = v165;
  v164 = sub_1E65E4F08();

  (*(v142 + 8))(v69, v143);
  (*(v141 + 8))(v68, v70);
  sub_1E5DFE50C(v174, &qword_1ED072AA8, &unk_1E65FA900);
  v71 = v148;
  v72 = v184;
  *v148 = v181;
  *(v71 + 8) = v72;
  *(v71 + 16) = 2;
  swift_storeEnumTagMultiPayload();

  v73 = v180;
  v74 = v59;
  v75 = v175;
  v167 = sub_1E6200DD8(v71, v180, v74);
  sub_1E5DFE50C(v71, &unk_1ED0776E0, &qword_1E65EDC00);
  sub_1E5E1DEAC(v75, v183);
  v76 = v182;
  v77 = v177;
  v177(v179, v73, v182);
  v78 = v144;
  sub_1E5E1DEAC(v75, v144);
  v79 = v173;
  v80 = v173 + 16;
  v81 = swift_allocObject();
  v174 = v81;
  v82 = v176;
  sub_1E5E1FA80(v78, v81 + v176);
  v83 = (v81 + v79);
  v84 = v184;
  *v83 = v181;
  v83[1] = v84;
  v85 = v145;
  sub_1E5E1DEAC(v75, v145);
  v86 = v169;
  v87 = v76;
  v77(v169, v180, v76);
  v88 = (v80 + v163) & ~v163;
  v89 = (v170 + v88 + 7) & 0xFFFFFFFFFFFFFFF8;
  v90 = swift_allocObject();
  v170 = v90;
  sub_1E5E1FA80(v85, v90 + v82);
  v91 = (v90 + v173);
  v92 = v181;
  *v91 = v181;
  v91[1] = v84;
  v93 = v86;
  v94 = v87;
  v95 = v139;
  v139(v90 + v88, v93, v87);
  v96 = (v90 + v89);
  v97 = v168;
  v98 = *(v168 + 48);
  v96[2] = *(v168 + 32);
  v96[3] = v98;
  v96[4] = v97[4];
  v99 = v97[1];
  *v96 = *v97;
  v96[1] = v99;
  v100 = v150;
  sub_1E5E1DEAC(v175, v150);
  v101 = v151;
  v177(v151, v180, v94);
  v102 = swift_allocObject();
  sub_1E5E1FA80(v100, v102 + v176);
  v103 = (v102 + v173);
  *v103 = v92;
  v103[1] = v184;
  v95(v102 + v88, v101, v94);
  v104 = (v102 + v89);
  v105 = v97[3];
  v104[2] = v97[2];
  v104[3] = v105;
  v104[4] = v97[4];
  v106 = v97[1];
  *v104 = *v97;
  v104[1] = v106;
  v107 = swift_allocObject();
  v108 = v167;
  *(v107 + 16) = v164;
  *(v107 + 24) = v108;
  swift_bridgeObjectRetain_n();
  swift_unknownObjectRetain_n();
  swift_retain_n();
  swift_retain_n();
  swift_retain_n();
  swift_retain_n();

  v109 = v108;

  v180 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077CE0, &unk_1E65F72C0);
  v176 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0738F0, &qword_1E65F7280);
  v175 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077CE8, &unk_1E65FA940);
  v173 = sub_1E5FED46C(&qword_1EE2D68D0, &qword_1ED077CE0, &unk_1E65F72C0, MEMORY[0x1E699CAF8]);
  v168 = sub_1E5FED46C(&qword_1EE2D68F0, &qword_1ED0738F0, &qword_1E65F7280, MEMORY[0x1E699CAC8]);
  v110 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED076F88, &qword_1E65F90B8);
  v111 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1ED077CF0, &unk_1E65F7110);
  v112 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0739A8, &qword_1E65F7120);
  v113 = sub_1E5FED46C(&qword_1EE2D6810, &qword_1ED0739A8, &qword_1E65F7120, MEMORY[0x1E699CDD8]);
  v187 = v112;
  v188 = v113;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v115 = sub_1E5FED46C(&qword_1EE2D68A8, &unk_1ED077CF0, &unk_1E65F7110, MEMORY[0x1E699CB30]);
  v187 = v110;
  v188 = v111;
  v189 = OpaqueTypeConformance2;
  v190 = v115;
  swift_getOpaqueTypeConformance2();
  sub_1E6245140();
  sub_1E62438F0();
  v116 = v172;
  sub_1E65DFDD8();
  v117 = swift_allocObject();
  *(v117 + 16) = v164;
  *(v117 + 24) = v109;
  v118 = (v116 + *(v152 + 44));
  *v118 = sub_1E62BBC60;
  v118[1] = v117;
  v119 = type metadata accessor for DynamicBarButtonItem(0);
  v118[2] = 0;
  v118[3] = 0;
  v120 = objc_allocWithZone(v119);
  v121 = v153;
  sub_1E65DED28();
  v122 = swift_allocObject();
  v123 = v184;
  *(v122 + 16) = v181;
  *(v122 + 24) = v123;
  sub_1E638D9B4(&qword_1EE2D6820, MEMORY[0x1E699CD98], MEMORY[0x1E699CD90]);

  v124 = v155;
  v125 = v154;
  sub_1E65E4DF8();
  sub_1E65E4CC8();
  sub_1E65E4F08();
  (*(v158 + 8))(v124, v159);
  (*(v156 + 8))(v121, v125);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076F80, &qword_1E65FA950);
  swift_allocObject();
  *&v120[OBJC_IVAR____TtC10Blackbeard20DynamicBarButtonItem_changeObserver] = sub_1E65E4D18();
  v126 = v169;
  v127 = v179;
  v177(v169, v179, v182);
  v128 = v157;
  sub_1E5DFD1CC(v116, v157, &qword_1ED077228, &unk_1E65FA8E0);
  v129 = sub_1E625BA68(v126, v128);
  KeyPath = swift_getKeyPath();
  swift_getKeyPath();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v130 = v129;

  sub_1E65E4D08();

  v185 = swift_getKeyPath();
  swift_getKeyPath();
  swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_1E638D9B4(&qword_1EE2D6840, MEMORY[0x1E699CD20], MEMORY[0x1E699CD28]);
  sub_1E65E4D08();

  sub_1E65E4CF8();

  sub_1E624395C(v183);

  sub_1E5DFE50C(v172, &qword_1ED077228, &unk_1E65FA8E0);
  (*(v171 + 8))(v127, v182);
  return v130;
}

uint64_t sub_1E638F04C(uint64_t (*a1)(unint64_t, uint64_t, uint64_t))
{
  v2 = *(type metadata accessor for AppComposer(0) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (v1 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));
  v5 = *v4;
  v6 = v4[1];

  return a1(v1 + v3, v5, v6);
}

uint64_t sub_1E638F120(uint64_t (*a1)(unint64_t, uint64_t, uint64_t, unint64_t, uint64_t))
{
  v2 = *(type metadata accessor for AppComposer(0) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(sub_1E65D76F8() - 8);
  v6 = (v4 + *(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v1 + v4);
  v8 = *(v1 + v4 + 8);
  v9 = v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8);

  return a1(v1 + v3, v7, v8, v1 + v6, v9);
}

uint64_t sub_1E638F248(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1E5DFE6BC;

  return sub_1E6243224(a1, v4, v5, v7, v6);
}

uint64_t sub_1E638F308(uint64_t a1, uint64_t a2)
{
  v6 = *(type metadata accessor for AppComposer(0) - 8);
  v7 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1E5DFE6BC;

  return sub_1E6389DF8(a1, a2, v2 + v7);
}

void *sub_1E638F404()
{
  result = (*(v0 + 16))(&v2, *(v0 + 32));
  if (v2 != 3)
  {
    BYTE1(v2) = v2;
    return sub_1E65E4EE8();
  }

  return result;
}

void *sub_1E638F460()
{
  result = (*(v0 + 16))(&v2, *(v0 + 32));
  if (v2 != 5)
  {
    BYTE1(v2) = v2;
    return sub_1E65E4EE8();
  }

  return result;
}

uint64_t sub_1E638F570()
{
  v1 = v0;
  v2 = sub_1E65D76A8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v22[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0741D8, &unk_1E6606270);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v22[-v7];
  v9 = sub_1E65D92D8();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v22[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1E638F89C(v1, v8);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    return 0;
  }

  if (!EnumCaseMultiPayload)
  {
    (*(v10 + 32))(v12, v8, v9);
LABEL_7:
    sub_1E65D7698();
    v16 = sub_1E65D92A8();
    (*(v3 + 8))(v5, v2);
    (*(v10 + 8))(v12, v9);
    if (v16)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }

  if (EnumCaseMultiPayload == 1)
  {
    v14 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077038, &qword_1E65F9300) + 48);
    (*(v10 + 32))(v12, v8, v9);
    (*(v3 + 8))(&v8[v14], v2);
    goto LABEL_7;
  }

  v17 = *(v8 + 2);

  v18 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
  v19 = sub_1E65E5C48();

  v20 = [v18 initWithDomain:v19 code:v17 userInfo:0];

  v22[15] = 4;
  sub_1E5FFF464();
  v21 = v20;
  LOBYTE(v19) = sub_1E65D97C8();

  if (v19)
  {
    return 2;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1E638F89C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0741D8, &unk_1E6606270);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E638F90C(uint64_t a1, uint64_t a2)
{
  v55 = a1;
  v56 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078A10, &qword_1E65FEBC8);
  v63 = *(v3 - 8);
  v64 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v59 = &v46 - v4;
  v5 = sub_1E65E1E88();
  v61 = *(v5 - 8);
  v62 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v57 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = sub_1E65E1E68();
  v60 = *(v58 - 8);
  MEMORY[0x1EEE9AC00](v58);
  v54 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for AppComposer(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x1EEE9AC00](v8 - 8);
  v49 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v47 = &v46 - v13;
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v46 - v15;
  v17 = MEMORY[0x1EEE9AC00](v14);
  v19 = &v46 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v46 - v20;
  v22 = sub_1E65E1EA8();
  v52 = *(v22 - 8);
  v53 = v22;
  v23 = MEMORY[0x1EEE9AC00](v22);
  v51 = &v46 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v50 = &v46 - v25;
  sub_1E5E1DA9C(v2, v21, type metadata accessor for AppComposer);
  v26 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v48 = swift_allocObject();
  sub_1E5E1E1E8(v21, v48 + v26, type metadata accessor for AppComposer);
  v27 = v2;
  sub_1E5E1DA9C(v2, v19, type metadata accessor for AppComposer);
  v46 = swift_allocObject();
  sub_1E5E1E1E8(v19, v46 + v26, type metadata accessor for AppComposer);
  sub_1E5E1DA9C(v2, v16, type metadata accessor for AppComposer);
  v28 = swift_allocObject();
  sub_1E5E1E1E8(v16, v28 + v26, type metadata accessor for AppComposer);
  v29 = v2;
  v30 = v47;
  sub_1E5E1DA9C(v29, v47, type metadata accessor for AppComposer);
  v31 = swift_allocObject();
  sub_1E5E1E1E8(v30, v31 + v26, type metadata accessor for AppComposer);
  v32 = v49;
  sub_1E5E1DA9C(v27, v49, type metadata accessor for AppComposer);
  v33 = swift_allocObject();
  sub_1E5E1E1E8(v32, v33 + v26, type metadata accessor for AppComposer);
  v34 = (v33 + ((v26 + v10 + 7) & 0xFFFFFFFFFFFFFFF8));
  v35 = v56;
  *v34 = v55;
  v34[1] = v35;

  v36 = v50;
  sub_1E65E1E98();
  v37 = v52;
  v38 = v53;
  (*(v52 + 16))(v51, v36, v53);
  v39 = v54;
  sub_1E65E1E58();
  v40 = v57;
  sub_1E65E1E78();
  type metadata accessor for AppFeature(0);
  sub_1E6394528(&qword_1EE2DBD90, type metadata accessor for AppFeature, &protocol conformance descriptor for AppFeature);
  sub_1E6394528(&qword_1EE2D62E0, MEMORY[0x1E699F0A0], MEMORY[0x1E699F098]);
  v41 = v59;
  v42 = v58;
  sub_1E65E4DE8();
  v43 = v42;
  v44 = sub_1E65E4F08();
  (*(v63 + 8))(v41, v64);
  (*(v61 + 8))(v40, v62);
  (*(v60 + 8))(v39, v43);
  (*(v37 + 8))(v36, v38);
  return v44;
}

uint64_t sub_1E6390040()
{
  v1 = sub_1E65DDE68();
  v0[2] = v1;
  v0[3] = *(v1 - 8);
  v0[4] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E63900FC, 0, 0);
}

uint64_t sub_1E63900FC()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];
  (*(v2 + 104))(v1, *MEMORY[0x1E69CAB20], v3);
  v4 = sub_1E65DDC68();
  (*(v2 + 8))(v1, v3);

  v5 = v0[1];

  return v5(v4 & 1);
}

uint64_t sub_1E63901E4()
{
  v1 = [objc_opt_self() standardUserDefaults];
  sub_1E65DDEF8();
  v2 = sub_1E65E5C48();

  v3 = [v1 objectForKey_];

  if (v3)
  {
    sub_1E65E6708();
    swift_unknownObjectRelease();
  }

  else
  {
    v10 = 0u;
    v11 = 0u;
  }

  *(v0 + 16) = v10;
  *(v0 + 32) = v11;
  v4 = *(v0 + 48);
  if (*(v0 + 40))
  {
    v5 = sub_1E65D76A8();
    v6 = swift_dynamicCast();
    (*(*(v5 - 8) + 56))(v4, v6 ^ 1u, 1, v5);
  }

  else
  {
    sub_1E5DFE50C(v0 + 16, &qword_1ED072B28, &unk_1E65F06A0);
    v7 = sub_1E65D76A8();
    (*(*(v7 - 8) + 56))(v4, 1, 1, v7);
  }

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_1E6390394(uint64_t a1)
{
  v1[2] = a1;
  v2 = sub_1E65DE3E8();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E6390454, 0, 0);
}

uint64_t sub_1E6390454()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];
  type metadata accessor for AppComposer(0);
  v4 = sub_1E65DAE18();
  (*(v2 + 104))(v1, *MEMORY[0x1E69CAD10], v3);
  v5 = sub_1E637C87C(v1, v4);

  (*(v2 + 8))(v1, v3);

  v6 = v0[1];

  return v6(v5 & 1);
}

uint64_t sub_1E6390548()
{
  v2 = *(type metadata accessor for AppComposer(0) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1E5FE99E8;

  return sub_1E6390394(v0 + v3);
}

uint64_t sub_1E6390614(uint64_t a1)
{
  v1[2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0741D8, &unk_1E6606270);
  v1[3] = swift_task_alloc();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072990, &qword_1E65EC130);
  v1[4] = v2;
  v1[5] = *(v2 - 8);
  v1[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E6390718, 0, 0);
}

uint64_t sub_1E6390718()
{
  v2 = v0[5];
  v1 = v0[6];
  v4 = v0[3];
  v3 = v0[4];
  swift_getKeyPath();
  sub_1E65E4EC8();

  sub_1E65E4C98();
  (*(v2 + 8))(v1, v3);
  v5 = sub_1E638F570();
  sub_1E5DFE50C(v4, &qword_1ED0741D8, &unk_1E6606270);

  v6 = v0[1];

  return v6(v5);
}

uint64_t sub_1E6390814()
{
  v2 = *(type metadata accessor for AppComposer(0) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1E5FE99E8;

  return sub_1E6390614(v0 + v3);
}

uint64_t sub_1E63908E0(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = sub_1E65DA648();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v4 = sub_1E65D82F8();
  v2[7] = v4;
  v2[8] = *(v4 - 8);
  v2[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E63909FC, 0, 0);
}

uint64_t sub_1E63909FC()
{
  type metadata accessor for AppComposer(0);
  type metadata accessor for AppEnvironment(0);
  v1 = ConfigurationService.queryConfiguration.getter();
  v0[10] = v2;
  v6 = (v1 + *v1);
  v3 = swift_task_alloc();
  v0[11] = v3;
  *v3 = v0;
  v3[1] = sub_1E6390B18;
  v4 = v0[9];

  return v6(v4);
}

uint64_t sub_1E6390B18()
{
  *(*v1 + 96) = v0;

  if (v0)
  {
    v2 = sub_1E6390D68;
  }

  else
  {
    v2 = sub_1E6390C2C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1E6390C2C()
{
  v1 = v0[9];
  v2 = v0[8];
  v4 = v0[5];
  v3 = v0[6];
  v7 = v0[4];
  v8 = v0[7];

  sub_1E65D8278();
  sub_1E65DA638();
  sub_1E65DA5F8();
  sub_1E65DA608();
  sub_1E65DA618();
  sub_1E65DA628();
  sub_1E65E1E28();
  (*(v4 + 8))(v3, v7);
  (*(v2 + 8))(v1, v8);

  v5 = v0[1];

  return v5();
}

uint64_t sub_1E6390D68()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E6390DE0(uint64_t a1)
{
  v4 = *(type metadata accessor for AppComposer(0) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E5DFA78C;

  return sub_1E63908E0(a1, v1 + v5);
}

uint64_t sub_1E6390EBC(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v2[4] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078A20, &qword_1E65FEC60);
  v2[5] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E6390F5C, 0, 0);
}

uint64_t sub_1E6390F5C()
{
  type metadata accessor for AppComposer(0);
  type metadata accessor for AppEnvironment(0);
  v1 = PlayerService.makeTrainerTipPlayerDismissedStream.getter();
  v0[6] = v2;
  v6 = (v1 + *v1);
  v3 = swift_task_alloc();
  v0[7] = v3;
  *v3 = v0;
  v3[1] = sub_1E6391078;
  v4 = v0[5];

  return v6(v4);
}

uint64_t sub_1E6391078()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_1E5FE45F0;
  }

  else
  {
    v2 = sub_1E63911A8;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1E63911A8()
{
  v1 = *(v0 + 16);
  v1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078A28, &qword_1E65FEC70);
  v1[4] = sub_1E5FED46C(&qword_1EE2D4480, &qword_1ED078A28, &qword_1E65FEC70, MEMORY[0x1E69E8878]);
  __swift_allocate_boxed_opaque_existential_1(v1);
  sub_1E65E1E48();
  sub_1E5FED46C(&qword_1EE2D4758, &qword_1ED078A20, &qword_1E65FEC60, MEMORY[0x1E69E86A0]);
  sub_1E65E69C8();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1E63912E8(uint64_t a1)
{
  v4 = *(type metadata accessor for AppComposer(0) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E5DFE6BC;

  return sub_1E6390EBC(a1, v1 + v5);
}

uint64_t sub_1E63913C4(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = sub_1E65E5528();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E6391490, 0, 0);
}

uint64_t sub_1E6391490()
{
  v1 = v0[6];
  v2 = v0[7];
  v3 = v0[4];
  v4 = v0[5];
  sub_1E65E5618();
  sub_1E65E5638();
  sub_1E65E5628();
  sub_1E65E5518();
  sub_1E6394528(&qword_1ED078A30, MEMORY[0x1E69CD868], MEMORY[0x1E69CD880]);
  sub_1E65E6718();
  v5 = *(v4 + 8);
  v5(v1, v3);
  v5(v2, v3);
  sub_1E65E1E38();

  v6 = v0[1];

  return v6();
}

uint64_t sub_1E63915D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[25] = a2;
  v3[26] = a3;
  v3[24] = a1;
  v4 = sub_1E65DB848();
  v3[27] = v4;
  v3[28] = *(v4 - 8);
  v3[29] = swift_task_alloc();
  v3[30] = type metadata accessor for RouteSource(0);
  v3[31] = swift_task_alloc();
  v5 = type metadata accessor for RouteDestination(0);
  v3[32] = v5;
  v3[33] = *(v5 - 8);
  v3[34] = swift_task_alloc();
  v6 = sub_1E65E1518();
  v3[35] = v6;
  v3[36] = *(v6 - 8);
  v3[37] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076010, &qword_1E65F4888);
  v3[38] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076018, &qword_1E65F4890);
  v3[39] = swift_task_alloc();
  v7 = sub_1E65DB438();
  v3[40] = v7;
  v3[41] = *(v7 - 8);
  v3[42] = swift_task_alloc();
  v8 = sub_1E65DB8C8();
  v3[43] = v8;
  v3[44] = *(v8 - 8);
  v3[45] = swift_task_alloc();
  v9 = sub_1E65DB5C8();
  v3[46] = v9;
  v3[47] = *(v9 - 8);
  v3[48] = swift_task_alloc();
  v10 = sub_1E65DB3D8();
  v3[49] = v10;
  v3[50] = *(v10 - 8);
  v3[51] = swift_task_alloc();
  v11 = sub_1E65DA648();
  v3[52] = v11;
  v3[53] = *(v11 - 8);
  v3[54] = swift_task_alloc();
  v12 = sub_1E65D82F8();
  v3[55] = v12;
  v3[56] = *(v12 - 8);
  v3[57] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E6391A14, 0, 0);
}

uint64_t sub_1E6391A14()
{
  *(v0 + 164) = *(type metadata accessor for AppComposer(0) + 20);
  *(v0 + 464) = type metadata accessor for AppEnvironment(0);
  v1 = ConfigurationService.queryConfiguration.getter();
  *(v0 + 472) = v2;
  v6 = (v1 + *v1);
  v3 = swift_task_alloc();
  *(v0 + 480) = v3;
  *v3 = v0;
  v3[1] = sub_1E6391B38;
  v4 = *(v0 + 456);

  return v6(v4);
}

uint64_t sub_1E6391B38()
{
  *(*v1 + 488) = v0;

  if (v0)
  {
    v2 = sub_1E6393B48;
  }

  else
  {
    v2 = sub_1E6391C4C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1E6391C4C()
{
  v1 = *(v0 + 464);

  sub_1E65D8278();
  v2 = sub_1E65DA608();
  v4 = v3;
  *(v0 + 496) = v2;
  *(v0 + 504) = v3;
  *(v0 + 180) = *(v1 + 76);
  v5 = MarketingService.fetchMarketingItem.getter();
  *(v0 + 512) = v6;
  v9 = (v5 + *v5);
  v7 = swift_task_alloc();
  *(v0 + 520) = v7;
  *v7 = v0;
  v7[1] = sub_1E6391DB8;

  return v9(v2, v4, 0x5472656E69617274, 0xEF6F656469567069);
}

uint64_t sub_1E6391DB8(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 528) = a1;
  *(v3 + 536) = v1;

  if (v1)
  {

    v4 = sub_1E6393DA0;
  }

  else
  {
    v4 = sub_1E6391F08;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1E6391F08()
{
  v54 = v0;
  v1 = v0[66];
  v48 = v0[63];
  v50 = v0[62];
  v2 = v0[50];
  v3 = v0[51];
  v4 = v0[44];
  v5 = v0[45];
  v6 = v0[43];
  v45 = v0[49];
  v8 = v0[38];
  v7 = v0[39];
  (*(v0[47] + 104))(v0[48], *MEMORY[0x1E69CD540], v0[46]);
  (*(v4 + 104))(v5, *MEMORY[0x1E69CD680], v6);
  v9 = v1;
  sub_1E65DB3C8();
  v10 = sub_1E65DB4D8();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  (*(v2 + 16))(v8, v3, v45);
  (*(v2 + 56))(v8, 0, 1, v45);
  sub_1E65DB408();

  if (MEMORY[0x1E6948C60](v50, v48) == 13)
  {
    if (qword_1EE2D7790 != -1)
    {
      swift_once();
    }

    v51 = sub_1E65E3B68();
    __swift_project_value_buffer(v51, qword_1EE2EA2A0);

    v11 = sub_1E65E3B48();
    v12 = sub_1E65E6328();

    v13 = os_log_type_enabled(v11, v12);
    v14 = v0[63];
    if (v13)
    {
      v15 = v0[62];
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v53[0] = v17;
      *v16 = 136315138;
      v18 = sub_1E5DFD4B0(v15, v14, v53);

      *(v16 + 4) = v18;
      _os_log_impl(&dword_1E5DE9000, v11, v12, "[TrainerTipUpsellMonitorComposer] Invalid placement identifier: %s", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v17);
      MEMORY[0x1E694F1C0](v17, -1, -1);
      MEMORY[0x1E694F1C0](v16, -1, -1);
    }

    else
    {
    }

    v23 = v0[66];
    v24 = v0[56];
    v47 = v0[55];
    v49 = v0[57];
    v25 = v0[53];
    v44 = v0[52];
    v46 = v0[54];
    v26 = v0[50];
    v42 = v0[49];
    v43 = v0[51];
    v28 = v0[41];
    v27 = v0[42];
    v29 = v0[40];
    v30 = sub_1E65E1E18();
    sub_1E6394528(&qword_1ED078A18, MEMORY[0x1E699F078], MEMORY[0x1E699F080]);
    v31 = swift_allocError();
    (*(*(v30 - 8) + 104))(v32, *MEMORY[0x1E699F070], v30);
    swift_willThrow();

    (*(v28 + 8))(v27, v29);
    (*(v26 + 8))(v43, v42);
    (*(v25 + 8))(v46, v44);
    (*(v24 + 8))(v49, v47);
    if (qword_1EE2D7790 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v51, qword_1EE2EA2A0);
    v33 = v31;
    v34 = sub_1E65E3B48();
    v35 = sub_1E65E6328();

    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v53[0] = v37;
      *v36 = 136315138;
      swift_getErrorValue();
      v38 = MEMORY[0x1E694E6C0](v0[13], v0[14]);
      v40 = sub_1E5DFD4B0(v38, v39, v53);

      *(v36 + 4) = v40;
      _os_log_impl(&dword_1E5DE9000, v34, v35, "[TrainerTipUpsellMonitorComposer] Failed presenting trainer tip upsell: %s", v36, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v37);
      MEMORY[0x1E694F1C0](v37, -1, -1);
      MEMORY[0x1E694F1C0](v36, -1, -1);
    }

    swift_willThrow();

    v41 = v0[1];

    return v41();
  }

  else
  {

    sub_1E65E14F8();
    swift_storeEnumTagMultiPayload();
    v19 = AccountService.fetchCurrentAccount.getter();
    v0[68] = v20;
    v52 = (v19 + *v19);
    v21 = swift_task_alloc();
    v0[69] = v21;
    *v21 = v0;
    v21[1] = sub_1E639262C;

    return v52();
  }
}

uint64_t sub_1E639262C(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 560) = v1;

  if (v1)
  {
    v5 = sub_1E6392880;
  }

  else
  {

    *(v4 + 568) = a1;
    v5 = sub_1E639275C;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1E639275C()
{
  v1 = v0[71];
  v0[72] = v1;
  v2 = v1;
  v3 = MarketingService.makeMarketingMetricConfiguration.getter();
  v0[73] = v4;
  v9 = (v3 + *v3);
  v5 = swift_task_alloc();
  v0[74] = v5;
  *v5 = v0;
  v5[1] = sub_1E6392AEC;
  v6 = v0[42];
  v7 = v0[29];

  return v9(v7, v6, 3);
}

uint64_t sub_1E6392880()
{

  if (qword_1EE2D7790 != -1)
  {
    swift_once();
  }

  v1 = v0[70];
  v2 = sub_1E65E3B68();
  __swift_project_value_buffer(v2, qword_1EE2EA2A0);
  v3 = v1;
  v4 = sub_1E65E3B48();
  v5 = sub_1E65E6328();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[70];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138543362;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_1E5DE9000, v4, v5, "Failed to fetch current account with error: %{public}@", v8, 0xCu);
    sub_1E5DFE50C(v9, &unk_1ED072130, &qword_1E65EA840);
    MEMORY[0x1E694F1C0](v9, -1, -1);
    MEMORY[0x1E694F1C0](v8, -1, -1);
  }

  else
  {
  }

  v0[72] = 0;
  v12 = MarketingService.makeMarketingMetricConfiguration.getter();
  v0[73] = v13;
  v18 = (v12 + *v12);
  v14 = swift_task_alloc();
  v0[74] = v14;
  *v14 = v0;
  v14[1] = sub_1E6392AEC;
  v15 = v0[42];
  v16 = v0[29];

  return v18(v16, v15, 3);
}

uint64_t sub_1E6392AEC()
{

  return MEMORY[0x1EEE6DFA0](sub_1E6392C04, 0, 0);
}

uint64_t sub_1E6392C04()
{
  v53 = v0;
  v1 = v0[72];
  v2 = v0[36];
  v3 = v0[34];
  v4 = v0[35];
  v5 = v0[32];
  v47 = v0[37];
  v49 = v0[31];
  v6 = v0[28];
  v7 = v0[29];
  v8 = v0[27];

  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077AC0, &unk_1E65EA7C0);
  v10 = *(v9 + 48);
  v11 = *(v9 + 64);
  *v3 = v1;
  (*(v6 + 32))(&v3[v10], v7, v8);
  (*(v2 + 16))(&v3[v11], v47, v4);
  type metadata accessor for RouteResource(0);
  swift_storeEnumTagMultiPayload();
  sub_1E5E1E1E8(v49, &v3[*(v5 + 20)], type metadata accessor for RouteSource);
  *&v3[*(v5 + 24)] = MEMORY[0x1E69E7CD0];
  swift_getKeyPath();
  sub_1E65E4EC8();

  v12 = v0[16];
  v0[75] = v12;
  if (v12 == 6)
  {
    if (qword_1EE2D7790 != -1)
    {
      swift_once();
    }

    v51 = sub_1E65E3B68();
    __swift_project_value_buffer(v51, qword_1EE2EA2A0);
    v13 = sub_1E65E3B48();
    v14 = sub_1E65E6328();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_1E5DE9000, v13, v14, "[TrainerTipUpsellMonitorComposer] Failed to get the currently selected root item", v15, 2u);
      MEMORY[0x1E694F1C0](v15, -1, -1);
    }

    v16 = v0[56];
    v48 = v0[55];
    v50 = v0[57];
    v46 = v0[54];
    v17 = v0[53];
    v18 = v0[50];
    v44 = v0[51];
    v45 = v0[52];
    v19 = v0[41];
    v42 = v0[42];
    v43 = v0[49];
    v40 = v0[66];
    v41 = v0[40];
    v20 = v0[36];
    v39 = v0[37];
    v22 = v0[34];
    v21 = v0[35];

    v23 = sub_1E65E1E18();
    sub_1E6394528(&qword_1ED078A18, MEMORY[0x1E699F078], MEMORY[0x1E699F080]);
    v24 = swift_allocError();
    (*(*(v23 - 8) + 104))(v25, *MEMORY[0x1E699F060], v23);
    swift_willThrow();

    sub_1E60111F8(v22);
    (*(v20 + 8))(v39, v21);
    (*(v19 + 8))(v42, v41);
    (*(v18 + 8))(v44, v43);
    (*(v17 + 8))(v46, v45);
    (*(v16 + 8))(v50, v48);
    if (qword_1EE2D7790 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v51, qword_1EE2EA2A0);
    v26 = v24;
    v27 = sub_1E65E3B48();
    v28 = sub_1E65E6328();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v52 = v30;
      *v29 = 136315138;
      swift_getErrorValue();
      v31 = MEMORY[0x1E694E6C0](v0[13], v0[14]);
      v33 = sub_1E5DFD4B0(v31, v32, &v52);

      *(v29 + 4) = v33;
      _os_log_impl(&dword_1E5DE9000, v27, v28, "[TrainerTipUpsellMonitorComposer] Failed presenting trainer tip upsell: %s", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v30);
      MEMORY[0x1E694F1C0](v30, -1, -1);
      MEMORY[0x1E694F1C0](v29, -1, -1);
    }

    swift_willThrow();

    v34 = v0[1];

    return v34();
  }

  else
  {
    v36 = v0[15];
    v0[76] = v36;
    v0[17] = v36;
    v0[18] = v12;
    sub_1E65E6058();
    v0[77] = sub_1E65E6048();
    v38 = sub_1E65E5FC8();

    return MEMORY[0x1EEE6DFA0](sub_1E63931E4, v38, v37);
  }
}

uint64_t sub_1E63931E4()
{
  v1 = v0[76];
  v2 = v0[75];
  v3 = v0[25];

  v3(v0 + 17);
  sub_1E5E07DA0(v1, v2);

  return MEMORY[0x1EEE6DFA0](sub_1E639327C, 0, 0);
}

uint64_t sub_1E639327C()
{
  v44 = v0;
  if (*(v0 + 80))
  {
    v1 = *(v0 + 264);
    v2 = *(v0 + 272);
    sub_1E5DF599C((v0 + 56), v0 + 16);
    v4 = *(v0 + 40);
    v3 = *(v0 + 48);
    __swift_project_boxed_opaque_existential_1((v0 + 16), v4);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072128, &qword_1E65EA828);
    v5 = (*(v1 + 80) + 32) & ~*(v1 + 80);
    v6 = swift_allocObject();
    *(v0 + 624) = v6;
    *(v6 + 16) = xmmword_1E65EA670;
    sub_1E5E1DA9C(v2, v6 + v5, type metadata accessor for RouteDestination);
    sub_1E611D1C0(v0 + 152);
    v7 = *(v0 + 160);
    *(v0 + 168) = *(v0 + 152);
    *(v0 + 176) = v7;
    sub_1E600F5B0((v0 + 161));
    v8 = swift_task_alloc();
    *(v0 + 632) = v8;
    *v8 = v0;
    v8[1] = sub_1E639383C;

    return RoutingContext.presentDestinations(_:style:priority:)(v6, (v0 + 168), (v0 + 161), v4, v3);
  }

  else
  {
    sub_1E5DFE50C(v0 + 56, &unk_1ED074320, &unk_1E65EA730);
    if (qword_1EE2D7790 != -1)
    {
      swift_once();
    }

    v42 = sub_1E65E3B68();
    __swift_project_value_buffer(v42, qword_1EE2EA2A0);
    v10 = sub_1E65E3B48();
    v11 = sub_1E65E6328();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_1E5DE9000, v10, v11, "[TrainerTipUpsellMonitorComposer] Failed to get routing context", v12, 2u);
      MEMORY[0x1E694F1C0](v12, -1, -1);
    }

    v13 = *(v0 + 448);
    v40 = *(v0 + 440);
    v41 = *(v0 + 456);
    v39 = *(v0 + 432);
    v14 = *(v0 + 424);
    v15 = *(v0 + 400);
    v37 = *(v0 + 408);
    v38 = *(v0 + 416);
    v16 = *(v0 + 328);
    v35 = *(v0 + 336);
    v36 = *(v0 + 392);
    v33 = *(v0 + 528);
    v34 = *(v0 + 320);
    v17 = *(v0 + 288);
    v32 = *(v0 + 296);
    v19 = *(v0 + 272);
    v18 = *(v0 + 280);

    v20 = sub_1E65E1E18();
    sub_1E6394528(&qword_1ED078A18, MEMORY[0x1E699F078], MEMORY[0x1E699F080]);
    v21 = swift_allocError();
    (*(*(v20 - 8) + 104))(v22, *MEMORY[0x1E699F068], v20);
    swift_willThrow();

    sub_1E60111F8(v19);
    (*(v17 + 8))(v32, v18);
    (*(v16 + 8))(v35, v34);
    (*(v15 + 8))(v37, v36);
    (*(v14 + 8))(v39, v38);
    (*(v13 + 8))(v41, v40);
    if (qword_1EE2D7790 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v42, qword_1EE2EA2A0);
    v23 = v21;
    v24 = sub_1E65E3B48();
    v25 = sub_1E65E6328();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v43 = v27;
      *v26 = 136315138;
      swift_getErrorValue();
      v28 = MEMORY[0x1E694E6C0](*(v0 + 104), *(v0 + 112));
      v30 = sub_1E5DFD4B0(v28, v29, &v43);

      *(v26 + 4) = v30;
      _os_log_impl(&dword_1E5DE9000, v24, v25, "[TrainerTipUpsellMonitorComposer] Failed presenting trainer tip upsell: %s", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v27);
      MEMORY[0x1E694F1C0](v27, -1, -1);
      MEMORY[0x1E694F1C0](v26, -1, -1);
    }

    swift_willThrow();

    v31 = *(v0 + 8);

    return v31();
  }
}

uint64_t sub_1E639383C()
{
  v2 = *v1;
  *(*v1 + 640) = v0;

  sub_1E5F94E00(*(v2 + 168), *(v2 + 176));

  if (v0)
  {
    v3 = sub_1E6394024;
  }

  else
  {
    v3 = sub_1E6393980;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1E6393980()
{
  v1 = *(v0 + 448);
  v17 = *(v0 + 440);
  v18 = *(v0 + 456);
  v16 = *(v0 + 432);
  v2 = *(v0 + 424);
  v3 = *(v0 + 400);
  v14 = *(v0 + 408);
  v15 = *(v0 + 416);
  v4 = *(v0 + 328);
  v12 = *(v0 + 336);
  v13 = *(v0 + 392);
  v5 = *(v0 + 320);
  v6 = *(v0 + 296);
  v8 = *(v0 + 280);
  v7 = *(v0 + 288);
  v9 = *(v0 + 272);

  sub_1E60111F8(v9);
  (*(v7 + 8))(v6, v8);
  (*(v4 + 8))(v12, v5);
  (*(v3 + 8))(v14, v13);
  (*(v2 + 8))(v16, v15);
  (*(v1 + 8))(v18, v17);
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_1E6393B48()
{
  v14 = v0;

  v1 = v0[61];
  if (qword_1EE2D7790 != -1)
  {
    swift_once();
  }

  v2 = sub_1E65E3B68();
  __swift_project_value_buffer(v2, qword_1EE2EA2A0);
  v3 = v1;
  v4 = sub_1E65E3B48();
  v5 = sub_1E65E6328();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v13 = v7;
    *v6 = 136315138;
    swift_getErrorValue();
    v8 = MEMORY[0x1E694E6C0](v0[13], v0[14]);
    v10 = sub_1E5DFD4B0(v8, v9, &v13);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_1E5DE9000, v4, v5, "[TrainerTipUpsellMonitorComposer] Failed presenting trainer tip upsell: %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x1E694F1C0](v7, -1, -1);
    MEMORY[0x1E694F1C0](v6, -1, -1);
  }

  swift_willThrow();

  v11 = v0[1];

  return v11();
}

uint64_t sub_1E6393DA0()
{
  v17 = v0;
  v2 = v0[56];
  v1 = v0[57];
  v3 = v0[55];
  (*(v0[53] + 8))(v0[54], v0[52]);
  (*(v2 + 8))(v1, v3);
  v4 = v0[67];
  if (qword_1EE2D7790 != -1)
  {
    swift_once();
  }

  v5 = sub_1E65E3B68();
  __swift_project_value_buffer(v5, qword_1EE2EA2A0);
  v6 = v4;
  v7 = sub_1E65E3B48();
  v8 = sub_1E65E6328();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v16 = v10;
    *v9 = 136315138;
    swift_getErrorValue();
    v11 = MEMORY[0x1E694E6C0](v0[13], v0[14]);
    v13 = sub_1E5DFD4B0(v11, v12, &v16);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_1E5DE9000, v7, v8, "[TrainerTipUpsellMonitorComposer] Failed presenting trainer tip upsell: %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x1E694F1C0](v10, -1, -1);
    MEMORY[0x1E694F1C0](v9, -1, -1);
  }

  swift_willThrow();

  v14 = v0[1];

  return v14();
}

uint64_t sub_1E6394024()
{
  v30 = v0;
  v1 = *(v0 + 448);
  v27 = *(v0 + 440);
  v28 = *(v0 + 456);
  v26 = *(v0 + 432);
  v2 = *(v0 + 424);
  v3 = *(v0 + 400);
  v24 = *(v0 + 408);
  v25 = *(v0 + 416);
  v4 = *(v0 + 328);
  v22 = *(v0 + 336);
  v23 = *(v0 + 392);
  v5 = *(v0 + 320);
  v6 = *(v0 + 288);
  v7 = *(v0 + 296);
  v8 = *(v0 + 272);
  v9 = *(v0 + 280);

  sub_1E60111F8(v8);
  (*(v6 + 8))(v7, v9);
  (*(v4 + 8))(v22, v5);
  (*(v3 + 8))(v24, v23);
  (*(v2 + 8))(v26, v25);
  (*(v1 + 8))(v28, v27);
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v10 = *(v0 + 640);
  if (qword_1EE2D7790 != -1)
  {
    swift_once();
  }

  v11 = sub_1E65E3B68();
  __swift_project_value_buffer(v11, qword_1EE2EA2A0);
  v12 = v10;
  v13 = sub_1E65E3B48();
  v14 = sub_1E65E6328();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v29 = v16;
    *v15 = 136315138;
    swift_getErrorValue();
    v17 = MEMORY[0x1E694E6C0](*(v0 + 104), *(v0 + 112));
    v19 = sub_1E5DFD4B0(v17, v18, &v29);

    *(v15 + 4) = v19;
    _os_log_impl(&dword_1E5DE9000, v13, v14, "[TrainerTipUpsellMonitorComposer] Failed presenting trainer tip upsell: %s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v16);
    MEMORY[0x1E694F1C0](v16, -1, -1);
    MEMORY[0x1E694F1C0](v15, -1, -1);
  }

  swift_willThrow();

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_1E639432C()
{
  v2 = *(type metadata accessor for AppComposer(0) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (v0 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));
  v5 = *v4;
  v6 = v4[1];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_1E5DFE6BC;

  return sub_1E63915D0(v0 + v3, v5, v6);
}

uint64_t sub_1E6394458()
{
  v1 = [objc_opt_self() standardUserDefaults];
  v2 = sub_1E65D7648();
  sub_1E65DDEF8();
  v3 = sub_1E65E5C48();

  [v1 setObject:v2 forKey:v3];

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1E6394528(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1E6394570(uint64_t a1)
{
  sub_1E65D7338();
  sub_1E5DEF738(0, &qword_1EE2D4510, 0x1E69DC888);
  v1 = sub_1E65DFCF8();
  sub_1E63E9F24(v1, v2);
  sub_1E608F990();
  sub_1E65D7358();
  v3 = sub_1E65DFCE8();
  if (v6 > 1u)
  {
    if (v6 != 2)
    {
      return;
    }

    v15 = 0;
    v16 = 0;
    v17 = 1 << *(v5 + 32);
    v18 = -1;
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    v19 = v18 & *(v5 + 56);
    if (v19)
    {
      while (1)
      {
        v20 = v16;
LABEL_24:
        v21 = __clz(__rbit64(v19));
        v19 &= v19 - 1;
        v22 = dword_1E65FEC98[*(*(v5 + 48) + (v21 | (v20 << 6)))];
        if ((v22 & v15) != 0)
        {
          v22 = 0;
        }

        v15 |= v22;
        if (!v19)
        {
          goto LABEL_20;
        }
      }
    }

    while (1)
    {
LABEL_20:
      v20 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
LABEL_52:
        __break(1u);
        goto LABEL_53;
      }

      if (v20 >= ((v17 + 63) >> 6))
      {
        break;
      }

      v19 = *(v5 + 56 + 8 * v20);
      ++v16;
      if (v19)
      {
        v16 = v20;
        goto LABEL_24;
      }
    }

    v44 = v3;
    v45 = v4;
    v46 = v5;
    sub_1E6394AE4(v3, v4, v5, 2u);

    v47 = MEMORY[0x1E69DB8D8];
    if ((v45 & 0x100) == 0)
    {
      v47 = MEMORY[0x1E69DB8C8];
    }

    v48 = *v47;
    sub_1E5DEF738(0, &qword_1EE2D4520, 0x1E69DB878);
    v49 = sub_1E65E64C8();

    v39 = v49;
    sub_1E65E45A8();
    sub_1E608F9E4();
    sub_1E65D7358();
    v40 = v44;
    v41 = v45;
    v42 = v46;
    v43 = 2;
    goto LABEL_49;
  }

  if (!v6)
  {
    v7 = 0;
    v8 = 0;
    v9 = 1 << *(v4 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v4 + 56);
    if (v11)
    {
      while (1)
      {
        v12 = v8;
LABEL_11:
        v13 = __clz(__rbit64(v11));
        v11 &= v11 - 1;
        v14 = dword_1E65FEC98[*(*(v4 + 48) + (v13 | (v12 << 6)))];
        if ((v14 & v7) != 0)
        {
          v14 = 0;
        }

        v7 |= v14;
        if (!v11)
        {
          goto LABEL_7;
        }
      }
    }

    while (1)
    {
LABEL_7:
      v12 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        goto LABEL_52;
      }

      if (v12 >= ((v9 + 63) >> 6))
      {
        break;
      }

      v11 = *(v4 + 56 + 8 * v12);
      ++v8;
      if (v11)
      {
        v8 = v12;
        goto LABEL_11;
      }
    }

    v31 = v3;
    v32 = v4;
    v33 = v5;
    sub_1E6394AE4(v3, v4, v5, 0);

    v34 = sub_1E61358A8(v31);
    v35 = MEMORY[0x1E69DB8C8];
    if ((v31 & 0x100) != 0)
    {
      v35 = MEMORY[0x1E69DB8D8];
    }

    v36 = *v35;
    sub_1E5DEF738(0, &qword_1EE2D4520, 0x1E69DB878);
    v37 = v34;
    v38 = sub_1E65E64D8();

    v39 = v38;
    sub_1E65E45A8();
    sub_1E608F9E4();
    sub_1E65D7358();
    v40 = v31;
    v41 = v32;
    v42 = v33;
    v43 = 0;
LABEL_49:
    sub_1E6394B18(v40, v41, v42, v43);

    return;
  }

  v23 = 0;
  v24 = 0;
  v25 = 1 << *(v4 + 32);
  v26 = -1;
  if (v25 < 64)
  {
    v26 = ~(-1 << v25);
  }

  for (i = v26 & *(v4 + 56); i; v23 |= v30)
  {
    v28 = v24;
LABEL_36:
    v29 = __clz(__rbit64(i));
    i &= i - 1;
    v30 = dword_1E65FEC98[*(*(v4 + 48) + (v29 | (v28 << 6)))];
    if ((v30 & v23) != 0)
    {
      v30 = 0;
    }
  }

  while (1)
  {
    v28 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      break;
    }

    if (v28 >= ((v25 + 63) >> 6))
    {
      v50 = v3;
      v51 = v4;
      v52 = v5;
      sub_1E6394AE4(v3, v4, v5, 1u);

      v53 = sub_1E61358A8(v50);
      v54 = MEMORY[0x1E69DB8C8];
      if ((v50 & 0x10000) != 0)
      {
        v54 = MEMORY[0x1E69DB8D8];
      }

      v55 = *v54;
      sub_1E5DEF738(0, &qword_1EE2D4520, 0x1E69DB878);
      v56 = v53;
      v57 = sub_1E65E64D8();

      v39 = v57;
      sub_1E65E45A8();
      sub_1E608F9E4();
      sub_1E65D7358();
      v40 = v50;
      v41 = v51;
      v42 = v52;
      v43 = 1;
      goto LABEL_49;
    }

    i = *(v4 + 56 + 8 * v28);
    ++v24;
    if (i)
    {
      v24 = v28;
      goto LABEL_36;
    }
  }

LABEL_53:
  __break(1u);
}

uint64_t sub_1E6394AE4(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  if (a4 != 0xFF)
  {
    return sub_1E6394AF8(a1, a2, a3, a4);
  }

  return a1;
}

uint64_t sub_1E6394AF8(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  if (a4 <= 2u)
  {
  }

  return result;
}

uint64_t sub_1E6394B18(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  if (a4 != 0xFF)
  {
    return sub_1E6394B2C(a1, a2, a3, a4);
  }

  return a1;
}

uint64_t sub_1E6394B2C(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  if (a4 <= 2u)
  {
  }

  return result;
}

uint64_t sub_1E6394B4C()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 49) | ((*(v0 + 53) | (*(v0 + 55) << 16)) << 32);
  v3 = *(v0 + 71) >> 6;
  if (v3)
  {
    v4 = v0[7];
    if (v3 == 1)
    {
      v10 = v0[9];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074258, &qword_1E65EFED0);
      sub_1E65D7FB8();
      if (v12 != 14)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074250, &qword_1E65EFEC8);
        sub_1E65D7FB8();
        if (v12 != 9)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074248, &qword_1E65EFEC0);
          sub_1E65D7FB8();
          if (v12 != 2)
          {
            nullsub_1();
            v6 = v5;
            sub_1E63B03C8(v10);
            return v6 | (v12 << 8) | ((v12 & 1) << 16);
          }
        }
      }
    }

    else
    {
      v11 = *v0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074250, &qword_1E65EFEC8);
      sub_1E65D7FB8();
      if (v12 != 9)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074248, &qword_1E65EFEC0);
        sub_1E65D7FB8();
        if (v12 != 2)
        {
          sub_1E63B03C8(v4);
          return v11;
        }
      }
    }
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074258, &qword_1E65EFED0);
    sub_1E65D7FB8();
    if (v12 != 14)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074248, &qword_1E65EFEC0);
      sub_1E65D7FB8();
      if (v12 != 2)
      {
        nullsub_1();
        v9 = v8;
        sub_1E63B03C8(v1 | (v2 << 8));
        return v9 | ((v12 & 1) << 8);
      }
    }
  }

  return 0;
}

uint64_t sub_1E6394EA4(char a1)
{
  *(v2 + 16) = v1;
  *(v2 + 88) = a1;
  *(v2 + 24) = sub_1E65E6058();
  *(v2 + 32) = sub_1E65E6048();
  v4 = sub_1E65E5FC8();
  *(v2 + 40) = v4;
  *(v2 + 48) = v3;

  return MEMORY[0x1EEE6DFA0](sub_1E6394F44, v4, v3);
}

uint64_t sub_1E6394F44()
{
  v1 = [*(v0 + 16) presentedViewController];
  *(v0 + 56) = v1;
  if (v1)
  {
    v2 = v1;
    v3 = *(v0 + 88);
    *(v0 + 64) = sub_1E65E6048();
    v4 = swift_task_alloc();
    *(v0 + 72) = v4;
    *(v4 + 16) = v2;
    *(v4 + 24) = v3;
    v5 = swift_task_alloc();
    *(v0 + 80) = v5;
    *v5 = v0;
    v5[1] = sub_1E63950BC;

    return MEMORY[0x1EEE6DDE0]();
  }

  else
  {

    v6 = *(v0 + 8);

    return v6();
  }
}

uint64_t sub_1E63950BC()
{
  v1 = *v0;

  v2 = *(v1 + 48);
  v3 = *(v1 + 40);

  return MEMORY[0x1EEE6DFA0](sub_1E639521C, v3, v2);
}

uint64_t sub_1E639521C()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_1E6395288(uint64_t a1, void *a2, char a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0785E0, &qword_1E65EA848);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = aBlock - v8;
  if (qword_1EE2D7790 != -1)
  {
    swift_once();
  }

  v10 = sub_1E65E3B68();
  __swift_project_value_buffer(v10, qword_1EE2EA2A0);
  sub_1E65E3B38();
  (*(v7 + 16))(v9, a1, v6);
  v11 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v12 = swift_allocObject();
  (*(v7 + 32))(v12 + v11, v9, v6);
  aBlock[4] = sub_1E639699C;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1E5E05AB0;
  aBlock[3] = &block_descriptor_7;
  v13 = _Block_copy(aBlock);

  [a2 dismissViewControllerAnimated:a3 & 1 completion:v13];
  _Block_release(v13);
}

void sub_1E63954C0(uint64_t a1, void *a2, uint64_t a3, char a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0785E0, &qword_1E65EA848);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = aBlock - v10;
  if (qword_1EE2D7790 != -1)
  {
    swift_once();
  }

  v12 = sub_1E65E3B68();
  __swift_project_value_buffer(v12, qword_1EE2EA2A0);
  sub_1E65E3B38();
  (*(v9 + 16))(v11, a1, v8);
  v13 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v14 = swift_allocObject();
  (*(v9 + 32))(v14 + v13, v11, v8);
  aBlock[4] = sub_1E639699C;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1E5E05AB0;
  aBlock[3] = &block_descriptor_17;
  v15 = _Block_copy(aBlock);

  [a2 presentViewController:a3 animated:a4 & 1 completion:v15];
  _Block_release(v15);
}

void sub_1E6395714(uint64_t a1, void *a2, char a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0785E0, &qword_1E65EA848);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = aBlock - v8;
  if (qword_1EE2D7790 != -1)
  {
    swift_once();
  }

  v10 = sub_1E65E3B68();
  __swift_project_value_buffer(v10, qword_1EE2EA2A0);
  sub_1E65E3B38();
  (*(v7 + 16))(v9, a1, v6);
  v11 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v12 = swift_allocObject();
  (*(v7 + 32))(v12 + v11, v9, v6);
  aBlock[4] = sub_1E6395950;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1E5E05AB0;
  aBlock[3] = &block_descriptor_13;
  v13 = _Block_copy(aBlock);

  [a2 dismissViewControllerAnimated:a3 & 1 completion:v13];
  _Block_release(v13);
}

uint64_t sub_1E6395954(char a1)
{
  *(v2 + 24) = v1;
  *(v2 + 120) = a1;
  *(v2 + 32) = sub_1E65E6058();
  *(v2 + 40) = sub_1E65E6048();
  v4 = sub_1E65E5FC8();
  *(v2 + 48) = v4;
  *(v2 + 56) = v3;

  return MEMORY[0x1EEE6DFA0](sub_1E63959F4, v4, v3);
}

uint64_t sub_1E63959F4()
{
  v25 = v0;
  if (*(v0 + 120) == 1)
  {
    v1 = [*(v0 + 24) transitionCoordinator];
    *(v0 + 64) = v1;
    if (v1)
    {
      v2 = v1;
      if ([*(v0 + 24) _isCurrentTransitionPreemptable])
      {
        if (qword_1EE2D7790 != -1)
        {
          swift_once();
        }

        v3 = sub_1E65E3B68();
        __swift_project_value_buffer(v3, qword_1EE2EA2A0);
        v4 = sub_1E65E3B48();
        v5 = sub_1E65E6338();
        if (os_log_type_enabled(v4, v5))
        {
          v6 = swift_slowAlloc();
          *v6 = 0;
          _os_log_impl(&dword_1E5DE9000, v4, v5, "Current Transition is Preemptable", v6, 2u);
          MEMORY[0x1E694F1C0](v6, -1, -1);
        }

        *(v0 + 104) = sub_1E65E6048();
        v7 = swift_task_alloc();
        *(v0 + 112) = v7;
        *v7 = v0;
        v7[1] = sub_1E63960CC;
      }

      else
      {
        *(v0 + 16) = *(v0 + 24);
        v14 = sub_1E65E5CE8();
        v16 = v15;
        *(v0 + 72) = v15;
        if (qword_1EE2D7790 != -1)
        {
          swift_once();
        }

        v17 = sub_1E65E3B68();
        __swift_project_value_buffer(v17, qword_1EE2EA2A0);

        v18 = sub_1E65E3B48();
        v19 = sub_1E65E6338();

        if (os_log_type_enabled(v18, v19))
        {
          v20 = swift_slowAlloc();
          v21 = swift_slowAlloc();
          v24 = v21;
          *v20 = 136446210;
          *(v20 + 4) = sub_1E5DFD4B0(v14, v16, &v24);
          _os_log_impl(&dword_1E5DE9000, v18, v19, "AsyncNavigation::waitForTransitionComplete %{public}s", v20, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v21);
          MEMORY[0x1E694F1C0](v21, -1, -1);
          MEMORY[0x1E694F1C0](v20, -1, -1);
        }

        *(v0 + 80) = sub_1E65E6048();
        v22 = swift_task_alloc();
        *(v0 + 88) = v22;
        v22[2] = v2;
        v22[3] = v14;
        v22[4] = v16;
        v23 = swift_task_alloc();
        *(v0 + 96) = v23;
        *v23 = v0;
        v23[1] = sub_1E6395EDC;
      }

      return MEMORY[0x1EEE6DDE0]();
    }

    if (qword_1EE2D7790 != -1)
    {
      swift_once();
    }

    v8 = sub_1E65E3B68();
    __swift_project_value_buffer(v8, qword_1EE2EA2A0);
    v9 = sub_1E65E3B48();
    v10 = sub_1E65E6338();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_1E5DE9000, v9, v10, "No transition coordinator", v11, 2u);
      MEMORY[0x1E694F1C0](v11, -1, -1);
    }
  }

  else
  {
  }

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_1E6395EDC()
{
  v1 = *v0;

  v2 = *(v1 + 56);
  v3 = *(v1 + 48);

  return MEMORY[0x1EEE6DFA0](sub_1E6396060, v3, v2);
}

uint64_t sub_1E6396060()
{
  swift_unknownObjectRelease();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E63960CC()
{
  v1 = *v0;

  v2 = *(v1 + 56);
  v3 = *(v1 + 48);

  return MEMORY[0x1EEE6DFA0](sub_1E63969A0, v3, v2);
}

uint64_t sub_1E6396210(uint64_t a1)
{
  v2 = sub_1E65E4F38();
  v19 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1E65E4F68();
  v17 = *(v5 - 8);
  v18 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0785E0, &qword_1E65EA848);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v17 - v10;
  sub_1E61259CC();
  v12 = sub_1E65E63C8();
  (*(v9 + 16))(v11, a1, v8);
  v13 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v14 = swift_allocObject();
  (*(v9 + 32))(v14 + v13, v11, v8);
  aBlock[4] = sub_1E639699C;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1E5E05AB0;
  aBlock[3] = &block_descriptor_21;
  v15 = _Block_copy(aBlock);
  sub_1E65E4F48();
  v20 = MEMORY[0x1E69E7CC0];
  sub_1E623B174();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078770, &unk_1E65EAB00);
  sub_1E5E05A4C();
  sub_1E65E6738();
  MEMORY[0x1E694DDE0](0, v7, v4, v15);
  _Block_release(v15);

  (*(v19 + 8))(v4, v2);
  (*(v17 + 8))(v7, v18);
}

void sub_1E6396558(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0785E0, &qword_1E65EA848);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = aBlock - v10;
  (*(v9 + 16))(aBlock - v10, a1, v8);
  v12 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = a3;
  *(v13 + 24) = a4;
  (*(v9 + 32))(v13 + v12, v11, v8);
  aBlock[4] = sub_1E639690C;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1E63968A0;
  aBlock[3] = &block_descriptor_27;
  v14 = _Block_copy(aBlock);

  [a2 animateAlongsideTransition:0 completion:v14];
  _Block_release(v14);
}

uint64_t sub_1E639672C(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (qword_1EE2D7790 != -1)
  {
    swift_once();
  }

  v5 = sub_1E65E3B68();
  __swift_project_value_buffer(v5, qword_1EE2EA2A0);

  v6 = sub_1E65E3B48();
  v7 = sub_1E65E6338();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v11 = v9;
    *v8 = 136446210;
    *(v8 + 4) = sub_1E5DFD4B0(a2, a3, &v11);
    _os_log_impl(&dword_1E5DE9000, v6, v7, "AsyncNavigation::waitForTransitionCompleted %{public}s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x1E694F1C0](v9, -1, -1);
    MEMORY[0x1E694F1C0](v8, -1, -1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0785E0, &qword_1E65EA848);
  return sub_1E65E5FF8();
}

uint64_t sub_1E63968A0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

uint64_t sub_1E639690C(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0785E0, &qword_1E65EA848);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);

  return sub_1E639672C(a1, v3, v4);
}

uint64_t sub_1E63969B4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0741D8, &unk_1E6606270);
  MEMORY[0x1EEE9AC00](v0);
  v2 = &v14 - v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077CC0, &unk_1E65F2610);
  v4 = MEMORY[0x1EEE9AC00](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v14 - v7;
  type metadata accessor for AppState(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072990, &qword_1E65EC130);
  sub_1E65E4C98();
  sub_1E65E4DA8();
  sub_1E5DFE50C(v2, &qword_1ED0741D8, &unk_1E6606270);
  sub_1E6053A2C(v8, v6);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (!EnumCaseMultiPayload)
    {
      return *v6;
    }

    if (EnumCaseMultiPayload == 1)
    {
      v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073870, &unk_1E65F4340) + 48);
      v11 = *v6;
      v12 = sub_1E65D76A8();
      (*(*(v12 - 8) + 8))(&v6[v10], v12);
      return v11;
    }

    sub_1E5DFE50C(v6, &unk_1ED077CC0, &unk_1E65F2610);
  }

  return 0;
}

uint64_t sub_1E6396BE8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0741D8, &unk_1E6606270);
  MEMORY[0x1EEE9AC00](v0);
  v2 = &v14 - v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077CC0, &unk_1E65F2610);
  v4 = MEMORY[0x1EEE9AC00](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v14 - v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072990, &qword_1E65EC130);
  sub_1E65E4C98();
  sub_1E65E4DA8();
  sub_1E5DFE50C(v2, &qword_1ED0741D8, &unk_1E6606270);
  sub_1E6053A2C(v8, v6);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (!EnumCaseMultiPayload)
    {
      return *v6;
    }

    if (EnumCaseMultiPayload == 1)
    {
      v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073870, &unk_1E65F4340) + 48);
      v11 = *v6;
      v12 = sub_1E65D76A8();
      (*(*(v12 - 8) + 8))(&v6[v10], v12);
      return v11;
    }

    sub_1E5DFE50C(v6, &unk_1ED077CC0, &unk_1E65F2610);
  }

  return 0;
}

uint64_t sub_1E6396E04@<X0>(uint64_t *a1@<X8>)
{
  v147 = a1;
  v134 = type metadata accessor for ContentAvailabilityService();
  Description = v134[-1].Description;
  MEMORY[0x1EEE9AC00](v134);
  v131 = v2;
  v132 = &v118 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v130 = type metadata accessor for AccountService();
  v129 = v130[-1].Description;
  MEMORY[0x1EEE9AC00](v130);
  v127 = v3;
  v128 = &v118 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v126 = type metadata accessor for AppStateService();
  v125 = v126[-1].Description;
  MEMORY[0x1EEE9AC00](v126);
  v124 = v4;
  v146 = &v118 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v152 = type metadata accessor for RemoteBrowsingService();
  v150 = v152[-1].Description;
  MEMORY[0x1EEE9AC00](v152);
  v120 = v5;
  v121 = &v118 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v162 = &v118 - v7;
  v8 = type metadata accessor for ServiceSubscriptionService();
  v9 = v8[-1].Description;
  MEMORY[0x1EEE9AC00](v8);
  v143 = v10;
  v11 = &v118 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v153 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078A38, &qword_1E65FECD0);
  v145 = *(v153 - 8);
  v12 = MEMORY[0x1EEE9AC00](v153);
  v154 = &v118 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v161 = v13;
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v118 - v14;
  if (qword_1EE2D7790 != -1)
  {
    swift_once();
  }

  v16 = sub_1E65E3B68();
  __swift_project_value_buffer(v16, qword_1EE2EA2A0);
  sub_1E65E3B18();
  v17 = v1 + OBJC_IVAR____TtC10Blackbeard16AppStateResolver_environment;
  v159 = v1 + OBJC_IVAR____TtC10Blackbeard16AppStateResolver_environment;
  v18 = type metadata accessor for AppEnvironment(0);
  v19 = v18[7];
  v122 = v18[6];
  v144 = v19;
  v123 = v18[14];
  v20 = v18[27];
  v140 = v20;
  v149 = v18[25];
  swift_getKeyPath();
  v138 = v9[2];
  v139 = (v9 + 2);
  v138(v11, &v20[v17], v8);
  v136 = v8;
  v119 = *(v9 + 80);
  v21 = (v119 + 16) & ~v119;
  v137 = v119 | 7;
  v22 = swift_allocObject();
  v23 = v9[4];
  v141 = (v9 + 4);
  v142 = v23;
  v23(v22 + v21, v11, v8);

  v24 = v15;
  sub_1E65E4E08();
  v25 = v147;
  v26 = v153;
  v147[3] = v153;
  v25[4] = &off_1F5FAA7F8;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v25);
  v28 = v145;
  v29 = v145 + 16;
  v30 = *(v145 + 16);
  v30(boxed_opaque_existential_1, v15, v26);
  v160 = v30;
  v155 = v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072178, &qword_1E65EA928);
  v157 = swift_allocObject();
  *(v157 + 16) = xmmword_1E65FECC0;
  v135 = v11;
  v151 = sub_1E65E60A8();
  v31 = *(v151 - 8);
  v156 = *(v31 + 56);
  v158 = v31 + 56;
  v156(v162, 1, 1, v151);
  v32 = v150;
  v33 = v121;
  v34 = v152;
  v150[2](v121, v159 + v149, v152);
  v35 = v154;
  v30(v154, v24, v26);
  v36 = (*(v32 + 80) + 32) & ~*(v32 + 80);
  v149 = *(v28 + 80);
  v37 = (v120 + v149 + v36) & ~v149;
  v38 = swift_allocObject();
  *(v38 + 16) = 0;
  *(v38 + 24) = 0;
  (v32)[4]((v38 + v36), v33, v34);
  v39 = *(v28 + 32);
  v152 = (v28 + 32);
  v150 = v39;
  (v39)(v38 + v37, v35, v26);
  v40 = v162;
  v41 = sub_1E6059EAC(0, 0, v162, &unk_1E65FED10, v38);
  v42 = v157;
  *(v157 + 32) = v41;
  v43 = v151;
  v156(v40, 1, 1, v151);
  v44 = v135;
  v45 = v136;
  v138(v135, &v140[v159], v136);
  v46 = v35;
  v47 = v35;
  v148 = v24;
  v48 = v26;
  v160(v47, v24, v26);
  v49 = (v119 + 32) & ~v119;
  v121 = v49;
  v50 = (v143 + v49 + v149) & ~v149;
  v51 = swift_allocObject();
  *(v51 + 16) = 0;
  *(v51 + 24) = 0;
  v52 = v51 + v49;
  v53 = v44;
  v142(v52, v44, v45);
  v54 = v150;
  (v150)(v51 + v50, v46, v48);
  v55 = v162;
  *(v42 + 40) = sub_1E6059EAC(0, 0, v162, &unk_1E65FED20, v51);
  v56 = v43;
  v57 = v156;
  v156(v55, 1, 1, v56);
  v58 = v136;
  v138(v53, &v140[v159], v136);
  v59 = v154;
  v60 = v24;
  v61 = v153;
  v160(v154, v60, v153);
  v62 = swift_allocObject();
  *(v62 + 16) = 0;
  *(v62 + 24) = 0;
  v142(&v121[v62], v135, v58);
  v63 = v62 + v50;
  v64 = v61;
  v54(v63, v59, v61);
  v65 = v162;
  v66 = sub_1E6059EAC(0, 0, v162, &unk_1E65FED30, v62);
  *(v157 + 48) = v66;
  v57(v65, 1, 1, v151);
  v67 = v125;
  v143 = v125[2];
  v68 = v146;
  v69 = v126;
  v143(v146, v159 + v144, v126);
  v70 = v64;
  v160(v59, v148, v64);
  v71 = *(v67 + 80);
  v72 = (v71 + 32) & ~v71;
  v141 = v72;
  v73 = (v124 + v149 + v72) & ~v149;
  v142 = (v149 | v71);
  v74 = swift_allocObject();
  *(v74 + 16) = 0;
  *(v74 + 24) = 0;
  v140 = v67[4];
  v75 = v74 + v72;
  v76 = v68;
  v77 = v68;
  v78 = v69;
  (v140)(v75, v76, v69);
  (v150)(v74 + v73, v59, v70);
  v79 = v162;
  v80 = sub_1E6059EAC(0, 0, v162, &unk_1E65FED40, v74);
  v81 = v157;
  *(v157 + 56) = v80;
  v82 = v151;
  v156(v79, 1, 1, v151);
  v83 = v159;
  v84 = v77;
  v85 = v78;
  v143(v84, v159 + v144, v78);
  v86 = v153;
  v87 = v154;
  v160(v154, v148, v153);
  v88 = swift_allocObject();
  *(v88 + 16) = 0;
  *(v88 + 24) = 0;
  (v140)(v88 + v141, v146, v85);
  v89 = v87;
  v90 = v86;
  v91 = v150;
  (v150)(v88 + v73, v89, v86);
  v92 = v162;
  *(v81 + 64) = sub_1E6059EAC(0, 0, v162, &unk_1E65FED50, v88);
  v156(v92, 1, 1, v82);
  v93 = v129;
  v94 = v128;
  v95 = v130;
  v129[2](v128, v83 + v122, v130);
  v96 = v154;
  v97 = v148;
  v160(v154, v148, v90);
  v98 = (*(v93 + 80) + 32) & ~*(v93 + 80);
  v99 = v149;
  v100 = (v127 + v99 + v98) & ~v99;
  v101 = swift_allocObject();
  *(v101 + 16) = 0;
  *(v101 + 24) = 0;
  (v93)[4]((v101 + v98), v94, v95);
  v102 = v101 + v100;
  v103 = v96;
  v104 = v153;
  v91(v102, v96, v153);
  v105 = v162;
  v106 = sub_1E6059EAC(0, 0, v162, &unk_1E65FED60, v101);
  *(v157 + 72) = v106;
  v156(v105, 1, 1, v151);
  v107 = Description;
  v108 = v132;
  v109 = v134;
  Description[2](v132, v159 + v123, v134);
  v110 = v103;
  v111 = v104;
  v160(v103, v97, v104);
  v112 = (*(v107 + 80) + 32) & ~*(v107 + 80);
  v113 = (v131 + v99 + v112) & ~v99;
  v114 = swift_allocObject();
  *(v114 + 16) = 0;
  *(v114 + 24) = 0;
  (v107)[4]((v114 + v112), v108, v109);
  (v150)(v114 + v113, v110, v111);
  v115 = sub_1E6059EAC(0, 0, v162, &unk_1E65FED70, v114);
  v116 = v157;
  *(v157 + 80) = v115;
  result = (*(v145 + 8))(v97, v111);
  v147[5] = v116;
  return result;
}

uint64_t sub_1E6397D1C(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  v3 = sub_1E65D92D8();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  v4 = sub_1E65E3B68();
  v2[8] = v4;
  v2[9] = *(v4 - 8);
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E6397E44, 0, 0);
}

uint64_t sub_1E6397E44()
{
  if (qword_1EE2D7790 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v0[8], qword_1EE2EA2A0);
  v1 = sub_1E65E3B48();
  v2 = sub_1E65E6338();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_1E5DE9000, v1, v2, "Fetching service subscription...", v3, 2u);
    MEMORY[0x1E694F1C0](v3, -1, -1);
  }

  v4 = ServiceSubscriptionService.fetchServiceSubscription.getter();
  v0[12] = v5;
  v9 = (v4 + *v4);
  v6 = swift_task_alloc();
  v0[13] = v6;
  *v6 = v0;
  v6[1] = sub_1E6398000;
  v7 = v0[3];

  return v9(v7, 1);
}

uint64_t sub_1E6398000()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_1E6398334;
  }

  else
  {
    v2 = sub_1E6398114;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1E6398114()
{
  v26 = v0;
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];
  v4 = v0[3];

  sub_1E65DE308();
  (*(v2 + 16))(v1, v4, v3);
  v5 = sub_1E65E3B48();
  v6 = sub_1E65E6338();
  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[11];
  v10 = v0[8];
  v9 = v0[9];
  v12 = v0[6];
  v11 = v0[7];
  v13 = v0[5];
  if (v7)
  {
    v24 = v0[8];
    v14 = swift_slowAlloc();
    v22 = v6;
    v15 = swift_slowAlloc();
    v25 = v15;
    *v14 = 136446210;
    sub_1E639C754();
    v16 = sub_1E65E6BC8();
    v23 = v8;
    v18 = v17;
    (*(v12 + 8))(v11, v13);
    v19 = sub_1E5DFD4B0(v16, v18, &v25);

    *(v14 + 4) = v19;
    _os_log_impl(&dword_1E5DE9000, v5, v22, "Fetched %{public}s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v15);
    MEMORY[0x1E694F1C0](v15, -1, -1);
    MEMORY[0x1E694F1C0](v14, -1, -1);

    (*(v9 + 8))(v23, v24);
  }

  else
  {

    (*(v12 + 8))(v11, v13);
    (*(v9 + 8))(v8, v10);
  }

  v20 = v0[1];

  return v20();
}

uint64_t sub_1E6398334()
{
  v21 = v0;
  v1 = v0[14];

  sub_1E65DE308();
  v2 = v1;
  v3 = sub_1E65E3B48();
  v4 = sub_1E65E6328();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[14];
    v7 = v0[9];
    v6 = v0[10];
    v8 = v0[8];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v20 = v10;
    *v9 = 136446210;
    v0[2] = v5;
    v11 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B740, &qword_1E65ED600);
    v12 = sub_1E65E5CE8();
    v14 = sub_1E5DFD4B0(v12, v13, &v20);

    *(v9 + 4) = v14;
    _os_log_impl(&dword_1E5DE9000, v3, v4, "Failed to fetch subscription: %{public}s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x1E694F1C0](v10, -1, -1);
    MEMORY[0x1E694F1C0](v9, -1, -1);

    (*(v7 + 8))(v6, v8);
  }

  else
  {
    v16 = v0[9];
    v15 = v0[10];
    v17 = v0[8];

    (*(v16 + 8))(v15, v17);
  }

  swift_willThrow();

  v18 = v0[1];

  return v18();
}

uint64_t sub_1E6398538(uint64_t a1)
{
  Description = type metadata accessor for ServiceSubscriptionService()[-1].Description;
  v5 = (Description[80] + 16) & ~Description[80];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E5DFA78C;

  return sub_1E6397D1C(a1, v1 + v5);
}

uint64_t sub_1E6398614(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0721B0, &qword_1E65EA988);
  v5[4] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0721B8, &qword_1E65EA990);
  v5[5] = v6;
  v5[6] = *(v6 - 8);
  v5[7] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0721C0, &qword_1E65EA998);
  v5[8] = v7;
  v5[9] = *(v7 - 8);
  v5[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E6398780, 0, 0);
}

uint64_t sub_1E6398780()
{
  v1 = RemoteBrowsingService.makeRemoteBrowsingIdentityUpdatedStream.getter();
  v0[11] = v2;
  v6 = (v1 + *v1);
  v3 = swift_task_alloc();
  v0[12] = v3;
  *v3 = v0;
  v3[1] = sub_1E639887C;
  v4 = v0[7];

  return v6(v4);
}

uint64_t sub_1E639887C()
{

  return MEMORY[0x1EEE6DFA0](sub_1E6398994, 0, 0);
}

uint64_t sub_1E6398994()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];
  sub_1E65E60F8();
  (*(v2 + 8))(v1, v3);
  v4 = swift_task_alloc();
  v0[13] = v4;
  *v4 = v0;
  v4[1] = sub_1E6398A70;
  v5 = v0[8];
  v6 = v0[4];

  return MEMORY[0x1EEE6D9C8](v6, 0, 0, v5);
}

uint64_t sub_1E6398A70()
{

  return MEMORY[0x1EEE6DFA0](sub_1E6398B6C, 0, 0);
}

uint64_t sub_1E6398B6C()
{
  v1 = v0[4];
  v2 = sub_1E65D99E8();
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    (*(v0[9] + 8))(v0[10], v0[8]);

    v3 = v0[1];

    return v3();
  }

  else
  {
    sub_1E65E6058();
    v0[14] = sub_1E65E6048();
    v6 = sub_1E65E5FC8();

    return MEMORY[0x1EEE6DFA0](sub_1E6398CBC, v6, v5);
  }
}

uint64_t sub_1E6398CBC()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078A38, &qword_1E65FECD0);
  sub_1E65E4E18();

  return MEMORY[0x1EEE6DFA0](sub_1E6398D40, 0, 0);
}

uint64_t sub_1E6398D40()
{
  sub_1E5DFE50C(v0[4], &qword_1ED0721B0, &qword_1E65EA988);
  v1 = swift_task_alloc();
  v0[13] = v1;
  *v1 = v0;
  v1[1] = sub_1E6398A70;
  v2 = v0[8];
  v3 = v0[4];

  return MEMORY[0x1EEE6D9C8](v3, 0, 0, v2);
}

uint64_t sub_1E6398E00(uint64_t a1)
{
  v3 = v2;
  Description = type metadata accessor for RemoteBrowsingService()[-1].Description;
  v6 = (*(Description + 80) + 32) & ~*(Description + 80);
  v7 = v6 + Description[8];
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078A38, &qword_1E65FECD0) - 8);
  v9 = (v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_1E5DFE6BC;

  return sub_1E6398614(a1, v10, v11, v1 + v6, v1 + v9);
}

uint64_t sub_1E6398F5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078A40, &qword_1E65FED78);
  v5[4] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072848, &qword_1E65EBE90);
  v5[5] = v6;
  v5[6] = *(v6 - 8);
  v5[7] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078A48, &qword_1E65FED80);
  v5[8] = v7;
  v5[9] = *(v7 - 8);
  v5[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E63990C8, 0, 0);
}

uint64_t sub_1E63990C8()
{
  v1 = ServiceSubscriptionService.makeServiceSubscriptionStatusStream.getter();
  v0[11] = v2;
  v6 = (v1 + *v1);
  v3 = swift_task_alloc();
  v0[12] = v3;
  *v3 = v0;
  v3[1] = sub_1E63991C4;
  v4 = v0[7];

  return v6(v4);
}

uint64_t sub_1E63991C4()
{

  return MEMORY[0x1EEE6DFA0](sub_1E63992DC, 0, 0);
}

uint64_t sub_1E63992DC()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];
  sub_1E65E60F8();
  (*(v2 + 8))(v1, v3);
  v4 = swift_task_alloc();
  v0[13] = v4;
  *v4 = v0;
  v4[1] = sub_1E63993B8;
  v5 = v0[8];
  v6 = v0[4];

  return MEMORY[0x1EEE6D9C8](v6, 0, 0, v5);
}

uint64_t sub_1E63993B8()
{

  return MEMORY[0x1EEE6DFA0](sub_1E63994B4, 0, 0);
}

uint64_t sub_1E63994B4()
{
  v1 = v0[4];
  v2 = sub_1E65D92D8();
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    (*(v0[9] + 8))(v0[10], v0[8]);

    v3 = v0[1];

    return v3();
  }

  else
  {
    sub_1E65E6058();
    v0[14] = sub_1E65E6048();
    v6 = sub_1E65E5FC8();

    return MEMORY[0x1EEE6DFA0](sub_1E6399604, v6, v5);
  }
}

uint64_t sub_1E6399604()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078A38, &qword_1E65FECD0);
  sub_1E65E4E18();

  return MEMORY[0x1EEE6DFA0](sub_1E6399688, 0, 0);
}

uint64_t sub_1E6399688()
{
  sub_1E5DFE50C(v0[4], &qword_1ED078A40, &qword_1E65FED78);
  v1 = swift_task_alloc();
  v0[13] = v1;
  *v1 = v0;
  v1[1] = sub_1E63993B8;
  v2 = v0[8];
  v3 = v0[4];

  return MEMORY[0x1EEE6D9C8](v3, 0, 0, v2);
}

uint64_t sub_1E6399748(uint64_t a1)
{
  v3 = v2;
  Description = type metadata accessor for ServiceSubscriptionService()[-1].Description;
  v6 = (*(Description + 80) + 32) & ~*(Description + 80);
  v7 = v6 + Description[8];
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078A38, &qword_1E65FECD0) - 8);
  v9 = (v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_1E5DFE6BC;

  return sub_1E6398F5C(a1, v10, v11, v1 + v6, v1 + v9);
}

uint64_t sub_1E63998A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0768C0, &qword_1E65F6EB8);
  v5[4] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0768D0, &qword_1E65F6EC8);
  v5[5] = v6;
  v5[6] = *(v6 - 8);
  v5[7] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0768C8, &qword_1E65F6EC0);
  v5[8] = v7;
  v5[9] = *(v7 - 8);
  v5[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E6399A10, 0, 0);
}

uint64_t sub_1E6399A10()
{
  v1 = ServiceSubscriptionService.makeServiceSubscriptionPurchasedStream.getter();
  v0[11] = v2;
  v6 = (v1 + *v1);
  v3 = swift_task_alloc();
  v0[12] = v3;
  *v3 = v0;
  v3[1] = sub_1E6399B0C;
  v4 = v0[7];

  return v6(v4);
}

uint64_t sub_1E6399B0C()
{

  return MEMORY[0x1EEE6DFA0](sub_1E6399C24, 0, 0);
}

uint64_t sub_1E6399C24()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];
  sub_1E65E60F8();
  (*(v2 + 8))(v1, v3);
  v4 = swift_task_alloc();
  v0[13] = v4;
  *v4 = v0;
  v4[1] = sub_1E6399D00;
  v5 = v0[8];
  v6 = v0[4];

  return MEMORY[0x1EEE6D9C8](v6, 0, 0, v5);
}

uint64_t sub_1E6399D00()
{

  return MEMORY[0x1EEE6DFA0](sub_1E6399DFC, 0, 0);
}

uint64_t sub_1E6399DFC()
{
  v1 = v0[4];
  v2 = sub_1E65DB868();
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    (*(v0[9] + 8))(v0[10], v0[8]);

    v3 = v0[1];

    return v3();
  }

  else
  {
    sub_1E65E6058();
    v0[14] = sub_1E65E6048();
    v6 = sub_1E65E5FC8();

    return MEMORY[0x1EEE6DFA0](sub_1E6399F4C, v6, v5);
  }
}

uint64_t sub_1E6399F4C()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078A38, &qword_1E65FECD0);
  sub_1E65E4E18();

  return MEMORY[0x1EEE6DFA0](sub_1E6399FD0, 0, 0);
}

uint64_t sub_1E6399FD0()
{
  sub_1E5DFE50C(v0[4], &qword_1ED0768C0, &qword_1E65F6EB8);
  v1 = swift_task_alloc();
  v0[13] = v1;
  *v1 = v0;
  v1[1] = sub_1E6399D00;
  v2 = v0[8];
  v3 = v0[4];

  return MEMORY[0x1EEE6D9C8](v3, 0, 0, v2);
}

uint64_t sub_1E639A090(uint64_t a1)
{
  v3 = v2;
  Description = type metadata accessor for ServiceSubscriptionService()[-1].Description;
  v6 = (*(Description + 80) + 32) & ~*(Description + 80);
  v7 = v6 + Description[8];
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078A38, &qword_1E65FECD0) - 8);
  v9 = (v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_1E5DFE6BC;

  return sub_1E63998A4(a1, v10, v11, v1 + v6, v1 + v9);
}

uint64_t sub_1E639A1EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072840, &qword_1E65EBE88);
  v5[4] = v6;
  v5[5] = *(v6 - 8);
  v5[6] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073468, &qword_1E65ED258);
  v5[7] = v7;
  v5[8] = *(v7 - 8);
  v5[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E639A320, 0, 0);
}

uint64_t sub_1E639A320()
{
  v1 = AppStateService.makeAppWillEnterForegroundStream.getter();
  v0[10] = v2;
  v6 = (v1 + *v1);
  v3 = swift_task_alloc();
  v0[11] = v3;
  *v3 = v0;
  v3[1] = sub_1E639A41C;
  v4 = v0[6];

  return v6(v4);
}

uint64_t sub_1E639A41C()
{

  return MEMORY[0x1EEE6DFA0](sub_1E639A534, 0, 0);
}

uint64_t sub_1E639A534()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];
  sub_1E65E60F8();
  (*(v2 + 8))(v1, v3);
  v4 = swift_task_alloc();
  v0[12] = v4;
  *v4 = v0;
  v4[1] = sub_1E639A610;
  v5 = v0[7];

  return MEMORY[0x1EEE6D9C8](v0 + 14, 0, 0, v5);
}

uint64_t sub_1E639A610()
{

  return MEMORY[0x1EEE6DFA0](sub_1E639A70C, 0, 0);
}

uint64_t sub_1E639A70C()
{
  if (*(v0 + 112) == 1)
  {
    (*(*(v0 + 64) + 8))(*(v0 + 72), *(v0 + 56));

    v1 = *(v0 + 8);

    return v1();
  }

  else
  {
    sub_1E65E6058();
    *(v0 + 104) = sub_1E65E6048();
    v4 = sub_1E65E5FC8();

    return MEMORY[0x1EEE6DFA0](sub_1E639A80C, v4, v3);
  }
}

uint64_t sub_1E639A80C()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078A38, &qword_1E65FECD0);
  sub_1E65E4E18();
  v1 = swift_task_alloc();
  *(v0 + 96) = v1;
  *v1 = v0;
  v1[1] = sub_1E639A610;
  v2 = *(v0 + 56);

  return MEMORY[0x1EEE6D9C8](v0 + 112, 0, 0, v2);
}

uint64_t sub_1E639A8D8(uint64_t a1)
{
  v3 = v2;
  Description = type metadata accessor for AppStateService()[-1].Description;
  v6 = (*(Description + 80) + 32) & ~*(Description + 80);
  v7 = v6 + Description[8];
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078A38, &qword_1E65FECD0) - 8);
  v9 = (v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_1E5DFE6BC;

  return sub_1E639A1EC(a1, v10, v11, v1 + v6, v1 + v9);
}

uint64_t sub_1E639AA34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072840, &qword_1E65EBE88);
  v5[4] = v6;
  v5[5] = *(v6 - 8);
  v5[6] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073468, &qword_1E65ED258);
  v5[7] = v7;
  v5[8] = *(v7 - 8);
  v5[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E639AB68, 0, 0);
}

uint64_t sub_1E639AB68()
{
  v1 = AppStateService.makeSignificantTimeChangeStream.getter();
  v0[10] = v2;
  v6 = (v1 + *v1);
  v3 = swift_task_alloc();
  v0[11] = v3;
  *v3 = v0;
  v3[1] = sub_1E639AC64;
  v4 = v0[6];

  return v6(v4);
}

uint64_t sub_1E639AC64()
{

  return MEMORY[0x1EEE6DFA0](sub_1E639AD7C, 0, 0);
}

uint64_t sub_1E639AD7C()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];
  sub_1E65E60F8();
  (*(v2 + 8))(v1, v3);
  v4 = swift_task_alloc();
  v0[12] = v4;
  *v4 = v0;
  v4[1] = sub_1E639AE58;
  v5 = v0[7];

  return MEMORY[0x1EEE6D9C8](v0 + 14, 0, 0, v5);
}

uint64_t sub_1E639AE58()
{

  return MEMORY[0x1EEE6DFA0](sub_1E639AF54, 0, 0);
}

uint64_t sub_1E639AF54()
{
  if (*(v0 + 112) == 1)
  {
    (*(*(v0 + 64) + 8))(*(v0 + 72), *(v0 + 56));

    v1 = *(v0 + 8);

    return v1();
  }

  else
  {
    sub_1E65E6058();
    *(v0 + 104) = sub_1E65E6048();
    v4 = sub_1E65E5FC8();

    return MEMORY[0x1EEE6DFA0](sub_1E639B054, v4, v3);
  }
}

uint64_t sub_1E639B054()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078A38, &qword_1E65FECD0);
  sub_1E65E4E18();
  v1 = swift_task_alloc();
  *(v0 + 96) = v1;
  *v1 = v0;
  v1[1] = sub_1E639AE58;
  v2 = *(v0 + 56);

  return MEMORY[0x1EEE6D9C8](v0 + 112, 0, 0, v2);
}

uint64_t sub_1E639B120(uint64_t a1)
{
  v3 = v2;
  Description = type metadata accessor for AppStateService()[-1].Description;
  v6 = (*(Description + 80) + 32) & ~*(Description + 80);
  v7 = v6 + Description[8];
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078A38, &qword_1E65FECD0) - 8);
  v9 = (v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_1E5DFE6BC;

  return sub_1E639AA34(a1, v10, v11, v1 + v6, v1 + v9);
}

uint64_t sub_1E639B27C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072840, &qword_1E65EBE88);
  v5[4] = v6;
  v5[5] = *(v6 - 8);
  v5[6] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073468, &qword_1E65ED258);
  v5[7] = v7;
  v5[8] = *(v7 - 8);
  v5[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E639B3B0, 0, 0);
}

uint64_t sub_1E639B3B0()
{
  v1 = AccountService.makeAccountChangedStream.getter();
  v0[10] = v2;
  v6 = (v1 + *v1);
  v3 = swift_task_alloc();
  v0[11] = v3;
  *v3 = v0;
  v3[1] = sub_1E639B4AC;
  v4 = v0[6];

  return v6(v4);
}

uint64_t sub_1E639B4AC()
{

  return MEMORY[0x1EEE6DFA0](sub_1E639B5C4, 0, 0);
}

uint64_t sub_1E639B5C4()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];
  sub_1E65E60F8();
  (*(v2 + 8))(v1, v3);
  v4 = swift_task_alloc();
  v0[12] = v4;
  *v4 = v0;
  v4[1] = sub_1E639B6A0;
  v5 = v0[7];

  return MEMORY[0x1EEE6D9C8](v0 + 14, 0, 0, v5);
}

uint64_t sub_1E639B6A0()
{

  return MEMORY[0x1EEE6DFA0](sub_1E639B79C, 0, 0);
}

uint64_t sub_1E639B79C()
{
  if (*(v0 + 112) == 1)
  {
    (*(*(v0 + 64) + 8))(*(v0 + 72), *(v0 + 56));

    v1 = *(v0 + 8);

    return v1();
  }

  else
  {
    sub_1E65E6058();
    *(v0 + 104) = sub_1E65E6048();
    v4 = sub_1E65E5FC8();

    return MEMORY[0x1EEE6DFA0](sub_1E639B89C, v4, v3);
  }
}

uint64_t sub_1E639B89C()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078A38, &qword_1E65FECD0);
  sub_1E65E4E18();
  v1 = swift_task_alloc();
  *(v0 + 96) = v1;
  *v1 = v0;
  v1[1] = sub_1E639B6A0;
  v2 = *(v0 + 56);

  return MEMORY[0x1EEE6D9C8](v0 + 112, 0, 0, v2);
}

uint64_t sub_1E639B968(uint64_t a1)
{
  v3 = v2;
  Description = type metadata accessor for AccountService()[-1].Description;
  v6 = (*(Description + 80) + 32) & ~*(Description + 80);
  v7 = v6 + Description[8];
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078A38, &qword_1E65FECD0) - 8);
  v9 = (v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_1E5DFE6BC;

  return sub_1E639B27C(a1, v10, v11, v1 + v6, v1 + v9);
}

uint64_t sub_1E639BAC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = sub_1E65E3B68();
  v5[4] = v6;
  v5[5] = *(v6 - 8);
  v5[6] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072878, &qword_1E65EBED8);
  v5[7] = v7;
  v5[8] = *(v7 - 8);
  v5[9] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078790, &qword_1E65FD650);
  v5[10] = v8;
  v5[11] = *(v8 - 8);
  v5[12] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E639BC54, 0, 0);
}

uint64_t sub_1E639BC54()
{
  v1 = ContentAvailabilityService.makeNetworkConditionsUpdatedStream.getter();
  v0[13] = v2;
  v6 = (v1 + *v1);
  v3 = swift_task_alloc();
  v0[14] = v3;
  *v3 = v0;
  v3[1] = sub_1E639BD50;
  v4 = v0[9];

  return v6(v4);
}

uint64_t sub_1E639BD50()
{

  return MEMORY[0x1EEE6DFA0](sub_1E639BE68, 0, 0);
}

uint64_t sub_1E639BE68()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[7];
  sub_1E65E60F8();
  (*(v2 + 8))(v1, v3);
  v4 = swift_task_alloc();
  v0[15] = v4;
  *v4 = v0;
  v4[1] = sub_1E639BF44;
  v5 = v0[10];

  return MEMORY[0x1EEE6D9C8](v0 + 17, 0, 0, v5);
}

uint64_t sub_1E639BF44()
{

  return MEMORY[0x1EEE6DFA0](sub_1E639C040, 0, 0);
}

uint64_t sub_1E639C040()
{
  if (*(v0 + 136) == 3)
  {
    (*(*(v0 + 88) + 8))(*(v0 + 96), *(v0 + 80));

    v1 = *(v0 + 8);

    return v1();
  }

  v3 = sub_1E65D8D58();
  v5 = v4;
  if (v3 == sub_1E65D8D58() && v5 == v6)
  {
  }

  else
  {
    v8 = sub_1E65E6C18();

    if ((v8 & 1) == 0)
    {
      v9 = swift_task_alloc();
      *(v0 + 120) = v9;
      *v9 = v0;
      v9[1] = sub_1E639BF44;
      v10 = *(v0 + 80);

      return MEMORY[0x1EEE6D9C8](v0 + 136, 0, 0, v10);
    }
  }

  sub_1E65DE308();
  v11 = sub_1E65E3B48();
  v12 = sub_1E65E6338();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_1E5DE9000, v11, v12, "Network condition changed to available, refreshing subscription state", v13, 2u);
    MEMORY[0x1E694F1C0](v13, -1, -1);
  }

  v15 = *(v0 + 40);
  v14 = *(v0 + 48);
  v16 = *(v0 + 32);

  (*(v15 + 8))(v14, v16);
  sub_1E65E6058();
  *(v0 + 128) = sub_1E65E6048();
  v18 = sub_1E65E5FC8();

  return MEMORY[0x1EEE6DFA0](sub_1E639C2DC, v18, v17);
}

uint64_t sub_1E639C2DC()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078A38, &qword_1E65FECD0);
  sub_1E65E4E18();
  v1 = swift_task_alloc();
  *(v0 + 120) = v1;
  *v1 = v0;
  v1[1] = sub_1E639BF44;
  v2 = *(v0 + 80);

  return MEMORY[0x1EEE6D9C8](v0 + 136, 0, 0, v2);
}

uint64_t objectdestroy_3Tm_10(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = v4 + *(v3 + 64);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078A38, &qword_1E65FECD0);
  v7 = *(v6 - 8);
  v8 = (v5 + *(v7 + 80)) & ~*(v7 + 80);
  swift_unknownObjectRelease();
  (*(v3 + 8))(v1 + v4, v2);
  (*(v7 + 8))(v1 + v8, v6);

  return swift_deallocObject();
}

uint64_t sub_1E639C50C(uint64_t a1)
{
  v3 = v2;
  Description = type metadata accessor for ContentAvailabilityService()[-1].Description;
  v6 = (*(Description + 80) + 32) & ~*(Description + 80);
  v7 = v6 + Description[8];
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078A38, &qword_1E65FECD0) - 8);
  v9 = (v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_1E5DFE6BC;

  return sub_1E639BAC4(a1, v10, v11, v1 + v6, v1 + v9);
}

uint64_t sub_1E639C668@<X0>(_BYTE *a1@<X8>)
{
  v2 = sub_1E65D76A8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E65D7698();
  v6 = sub_1E65D92A8();
  result = (*(v3 + 8))(v5, v2);
  *a1 = v6 & 1;
  return result;
}

unint64_t sub_1E639C754()
{
  result = qword_1ED078A50;
  if (!qword_1ED078A50)
  {
    sub_1E65D92D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED078A50);
  }

  return result;
}

uint64_t sub_1E639C7C4(uint64_t *a1, char a2, _BYTE *a3)
{
  v66 = a3;
  v5 = sub_1E65E3B68();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v57[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v57[-v10];
  v12 = sub_1E65D8F28();
  v68 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v57[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = type metadata accessor for PageMetricsClick(0);
  v16 = MEMORY[0x1EEE9AC00](v15);
  MEMORY[0x1EEE9AC00](v16);
  v21 = &v57[-v20];
  v22 = *a1;
  if (*a1)
  {
    v65 = a1[9];
    v23 = *(a1 + 1);
    v64 = a2 & 1;
    v69 = *(a1 + 3);
    v70 = *(a1 + 5);
    v71 = *(a1 + 7);
    v24 = *(a1 + 1);
    v25 = *(a1 + 3);
    v73[2] = *(a1 + 2);
    v73[3] = v25;
    v73[4] = *(a1 + 4);
    v74 = v23;
    v73[0] = *a1;
    v73[1] = v24;
    v63 = v22;
    v60 = v17;
    v61 = v18;
    v62 = v19;
    sub_1E618A994(v73, v72);
    v67 = sub_1E639DE38(v66);
    v27 = v26;
    v28 = sub_1E65D9D78();
    (*(*(v28 - 8) + 56))(v21, 1, 1, v28);
    v29 = v15[5];
    v30 = *MEMORY[0x1E69CBAA0];
    v31 = sub_1E65D8C68();
    (*(*(v31 - 8) + 104))(&v21[v29], v30, v31);
    v32 = v15[6];
    v33 = sub_1E65D74E8();
    (*(*(v33 - 8) + 56))(&v21[v32], 1, 1, v33);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072E58, &qword_1E65F0E90);
    sub_1E65D86A8();
    v34 = v68;
    v59 = v12;
    v35 = swift_allocObject();
    *(v35 + 16) = xmmword_1E65EA670;

    _s10Blackbeard20MetricIdentifierTypeO8rawValueSSvg_0();
    v66 = v11;
    v58 = *MEMORY[0x1E69CBCB8];
    v68 = *(v34 + 13);
    v68(v14);
    sub_1E6427498(MEMORY[0x1E69E7CC0]);
    v36 = v67;
    sub_1E65D8678();
    v37 = v15[8];
    v38 = sub_1E65DA208();
    (*(*(v38 - 8) + 56))(&v21[v37], 1, 1, v38);
    (v68)(&v21[v15[14]], v58, v59);
    v39 = v15[15];
    v40 = sub_1E65D9908();
    (*(*(v40 - 8) + 56))(&v21[v39], 1, 1, v40);
    v41 = sub_1E6427784(MEMORY[0x1E69E7CC0]);
    *&v21[v15[7]] = v35;
    v42 = &v21[v15[9]];
    *v42 = 0;
    v42[1] = 0;
    v43 = &v21[v15[10]];
    *v43 = 0;
    v43[1] = 0;
    *&v21[v15[11]] = v41;
    v44 = &v21[v15[12]];
    *v44 = 0;
    v44[1] = 0;
    v45 = &v21[v15[13]];
    *v45 = v36;
    v45[1] = v27;
    v46 = sub_1E65E60A8();
    v47 = v66;
    (*(*(v46 - 8) + 56))(v66, 1, 1, v46);
    v48 = v60;
    sub_1E639ECD8(v21, v60, type metadata accessor for PageMetricsClick);
    v49 = (*(v61 + 80) + 120) & ~*(v61 + 80);
    v50 = swift_allocObject();
    *(v50 + 16) = 0;
    *(v50 + 24) = 0;
    *(v50 + 32) = v64;
    *(v50 + 40) = v63;
    v51 = v69;
    *(v50 + 48) = v74;
    *(v50 + 64) = v51;
    v52 = v71;
    *(v50 + 80) = v70;
    *(v50 + 96) = v52;
    *(v50 + 112) = v65;
    sub_1E639ED40(v48, v50 + v49, type metadata accessor for PageMetricsClick);
    swift_unknownObjectRetain();

    sub_1E6059EAC(0, 0, v47, &unk_1E65FEDA0, v50);

    swift_unknownObjectRelease();

    return sub_1E5FC0990(v21);
  }

  else
  {
    sub_1E65DB958();
    v54 = sub_1E65E3B48();
    v55 = sub_1E65E6338();
    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      *v56 = 0;
      _os_log_impl(&dword_1E5DE9000, v54, v55, "Page metrics missing for award toasts", v56, 2u);
      MEMORY[0x1E694F1C0](v56, -1, -1);
    }

    return (*(v6 + 8))(v8, v5);
  }
}

void sub_1E639CFF8(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = v3;
  v67 = a1;
  v73 = a3;
  v7 = type metadata accessor for AppComposer(0);
  v76 = *(v7 - 8);
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v72 = &v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v62 = &v55 - v11;
  v13 = v12;
  v58 = v12;
  MEMORY[0x1EEE9AC00](v10);
  v15 = &v55 - v14;
  v16 = sub_1E65D7A38();
  v17 = *(v16 - 8);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v71 = &v55 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = v19;
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v55 - v20;
  v22 = *(v17 + 16);
  v66 = v17 + 16;
  v68 = v22;
  v61 = v16;
  v22(&v55 - v20, a1, v16);
  v64 = *(v17 + 80);
  v23 = (v64 + 16) & ~v64;
  v74 = swift_allocObject();
  v24 = *(v17 + 32);
  v69 = v17 + 32;
  v70 = v24;
  v24(v74 + v23, v21, v16);
  v77 = swift_allocObject();
  v63 = a2;
  *(v77 + 16) = a2;
  sub_1E65E5148();

  v25 = sub_1E65E5138();
  v26 = v4;
  v56 = v4;
  v27 = v15;
  v57 = v15;
  sub_1E639ECD8(v4, v15, type metadata accessor for AppComposer);
  v28 = *(v76 + 80);
  v29 = (v28 + 48) & ~v28;
  v30 = v29 + v13;
  v76 = v28 | 7;
  v31 = (v29 + v13) & 0xFFFFFFFFFFFFFFF8;
  v32 = swift_allocObject();
  v60 = v32;
  v75 = &unk_1E65FEDB0;
  v33 = v74;
  v32[2] = &unk_1E65FEDB0;
  v32[3] = v33;
  v34 = MEMORY[0x1E69AB380];
  v59 = v25;
  v32[4] = v25;
  v32[5] = v34;
  sub_1E639ED40(v27, v32 + v29, type metadata accessor for AppComposer);
  *(v32 + v30) = 0;
  v35 = v32 + v31;
  v36 = v77;
  *(v35 + 1) = sub_1E617634C;
  *(v35 + 2) = v36;
  v37 = v26;
  v38 = v62;
  sub_1E639ECD8(v37, v62, type metadata accessor for AppComposer);
  v39 = (v30 + 7) & 0xFFFFFFFFFFFFFFF8;
  v40 = swift_allocObject();
  v40[2] = v75;
  v40[3] = v33;
  v40[4] = v25;
  v40[5] = MEMORY[0x1E69AB380];
  sub_1E639ED40(v38, v40 + v29, type metadata accessor for AppComposer);
  v41 = v40 + v39;
  *v41 = sub_1E617634C;
  *(v41 + 1) = v36;
  v41[16] = 0;
  v42 = v56;
  v43 = v72;
  sub_1E639ECD8(v56, v72, type metadata accessor for AppComposer);
  v44 = v58;
  v45 = swift_allocObject();
  v62 = v45;
  *(v45 + 16) = v75;
  *(v45 + 24) = v33;
  sub_1E639ED40(v43, v45 + ((v28 + 32) & ~v28), type metadata accessor for AppComposer);
  v46 = v57;
  sub_1E639ECD8(v42, v57, type metadata accessor for AppComposer);
  v47 = v71;
  v48 = v61;
  v68(v71, v67, v61);
  v49 = (v28 + 16) & ~v28;
  v50 = (v44 + v64 + v49) & ~v64;
  v51 = (v65 + v50 + 7) & 0xFFFFFFFFFFFFFFF8;
  v52 = swift_allocObject();
  sub_1E639ED40(v46, v52 + v49, type metadata accessor for AppComposer);
  v70(v52 + v50, v47, v48);
  *(v52 + v51) = v63;
  swift_retain_n();
  v53 = v59;
  swift_retain_n();

  v54 = v73;
  *v73 = v53;
  v54[1] = MEMORY[0x1E69AB380];
  v54[2] = &unk_1E65FEDC0;
  v54[3] = v52;
  v54[4] = &unk_1E65FA770;
  v54[5] = v60;
  v54[6] = &unk_1E65EB920;
  v54[7] = v40;
  v54[8] = &unk_1E65FA780;
  v54[9] = v62;
}

uint64_t sub_1E639D544(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1E639D564, 0, 0);
}

uint64_t sub_1E639D564()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = sub_1E65D7A38();
  v4 = *(v3 - 8);
  (*(v4 + 16))(v1, v2, v3);
  (*(v4 + 56))(v1, 0, 1, v3);
  v5 = v0[1];

  return v5();
}

uint64_t sub_1E639D658(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  sub_1E65D8A08();
  v3[5] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074588, &unk_1E65F0EC0);
  v3[6] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED072320, &unk_1E65EAB60);
  v3[7] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074590, &unk_1E65F0ED0);
  v3[8] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074598, &unk_1E65FE820);
  v3[9] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED07B500, &qword_1E65F0EE0);
  v3[10] = swift_task_alloc();
  v4 = sub_1E65D97D8();
  v3[11] = v4;
  v3[12] = *(v4 - 8);
  v3[13] = swift_task_alloc();
  v5 = sub_1E65D8C88();
  v3[14] = v5;
  v3[15] = *(v5 - 8);
  v3[16] = swift_task_alloc();
  v6 = sub_1E65D9F68();
  v3[17] = v6;
  v3[18] = *(v6 - 8);
  v3[19] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E639D918, 0, 0);
}

uint64_t sub_1E639D918()
{
  v1 = v0[2];
  v2 = type metadata accessor for AppComposer(0);
  v0[20] = v2;
  v3 = (v1 + *(v2 + 32));
  v0[21] = *v3;
  v0[22] = v3[1];
  v0[23] = swift_getObjectType();
  sub_1E65E6058();
  v0[24] = sub_1E65E6048();
  v5 = sub_1E65E5FC8();

  return MEMORY[0x1EEE6DFA0](sub_1E639D9DC, v5, v4);
}

uint64_t sub_1E639D9DC()
{

  sub_1E65DB6A8();

  return MEMORY[0x1EEE6DFA0](sub_1E639DA78, 0, 0);
}

uint64_t sub_1E639DA78()
{
  v22 = v0[19];
  v1 = v0[16];
  v23 = v0[17];
  v24 = v0[15];
  v2 = v0[13];
  v4 = v0[11];
  v3 = v0[12];
  v5 = v0[9];
  v6 = v0[10];
  v8 = v0[7];
  v7 = v0[8];
  v20 = v0[18];
  v21 = v0[6];
  v25 = v0[14];
  v26 = v0[5];
  v9 = v0[3];
  (*(v20 + 16))(v2);
  (*(v3 + 104))(v2, *MEMORY[0x1E69CC328], v4);
  v10 = sub_1E65D7A38();
  v11 = *(v10 - 8);
  (*(v11 + 16))(v6, v9, v10);
  (*(v11 + 56))(v6, 0, 1, v10);
  v12 = sub_1E65D9208();
  (*(*(v12 - 8) + 56))(v5, 1, 1, v12);
  v13 = sub_1E65D9218();
  (*(*(v13 - 8) + 56))(v7, 1, 1, v13);
  sub_1E65D8CA8();
  v14 = sub_1E65D8CB8();
  (*(*(v14 - 8) + 56))(v8, 0, 1, v14);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0745A0, &unk_1E65F0EE8);
  (*(*(v15 - 8) + 56))(v21, 1, 1, v15);
  v16 = sub_1E65D9928();
  (*(*(v16 - 8) + 56))(v26, 1, 1, v16);

  sub_1E65D8C78();
  type metadata accessor for AppEnvironment(0);
  v17 = MetricService.record.getter();
  v17(v1);

  (*(v24 + 8))(v1, v25);
  (*(v20 + 8))(v22, v23);

  v18 = v0[1];

  return v18();
}

uint64_t sub_1E639DE38(void *a1)
{
  v22 = sub_1E65D7048();
  v2 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = a1[2];
  if (v5 < 2)
  {
    if (!v5)
    {
      return 0;
    }

    v16 = a1[5];
    v24 = a1[4];
    v25 = v16;

    sub_1E65D7038();
    sub_1E5F9AEA8();
    v17 = sub_1E65E6698();
    (*(v2 + 8))(v4, v22);

    v24 = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074F18, &qword_1E65F1150);
    sub_1E6379A84();
  }

  else
  {
    v23 = MEMORY[0x1E69E7CC0];
    sub_1E601C0B8(0, v5, 0);
    v6 = v23;
    v21 = (v2 + 8);
    v7 = a1 + 5;
    do
    {
      v8 = *v7;
      v24 = *(v7 - 1);
      v25 = v8;

      sub_1E65D7038();
      sub_1E5F9AEA8();
      v9 = sub_1E65E6698();
      (*v21)(v4, v22);
      v24 = v9;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074F18, &qword_1E65F1150);
      sub_1E6379A84();
      v10 = sub_1E65E5B68();
      v12 = v11;

      v23 = v6;
      v14 = *(v6 + 16);
      v13 = *(v6 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_1E601C0B8((v13 > 1), v14 + 1, 1);
        v6 = v23;
      }

      *(v6 + 16) = v14 + 1;
      v15 = v6 + 16 * v14;
      *(v15 + 32) = v10;
      *(v15 + 40) = v12;
      v7 += 2;
      --v5;
    }

    while (v5);
    v24 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074F18, &qword_1E65F1150);
  }

  v18 = sub_1E65E5B68();

  return v18;
}

uint64_t sub_1E639E108(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  if (a4)
  {
    v7 = *(v6 + 8);

    return v7();
  }

  else
  {
    v11 = (*(a5 + 48) + **(a5 + 48));
    v10 = swift_task_alloc();
    *(v6 + 16) = v10;
    *v10 = v6;
    v10[1] = sub_1E5DFE6BC;

    return v11(a6);
  }
}

uint64_t sub_1E639E238(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  if (a4 == 6)
  {
    v9 = (*(a5 + 16) + **(a5 + 16));
    v6 = swift_task_alloc();
    *(v5 + 16) = v6;
    *v6 = v5;
    v6[1] = sub_1E5DFE6BC;

    return v9();
  }

  else
  {
    v8 = *(v5 + 8);

    return v8();
  }
}

uint64_t sub_1E639E360(uint64_t *a1, int a2, uint64_t a3, uint64_t a4)
{
  v50 = a3;
  v51 = a4;
  v54 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v49 - v6;
  v49 = &v49 - v6;
  v8 = sub_1E65D7048();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for PageMetricsClick(0);
  v13 = (v12 - 8);
  v53 = *(v12 - 8);
  v14 = *(v53 + 64);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v52 = &v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v49 - v16;
  v18 = sub_1E65D9D78();
  (*(*(v18 - 8) + 56))(v17, 1, 1, v18);
  v19 = v13[7];
  v20 = *MEMORY[0x1E69CBAA0];
  v21 = sub_1E65D8C68();
  (*(*(v21 - 8) + 104))(&v17[v19], v20, v21);
  v22 = v13[8];
  v23 = sub_1E65D74E8();
  (*(*(v23 - 8) + 56))(&v17[v22], 1, 1, v23);
  v24 = v13[10];
  v25 = sub_1E65DA208();
  (*(*(v25 - 8) + 56))(&v17[v24], 1, 1, v25);
  v55 = v50;
  v56 = v51;
  sub_1E65D7038();
  sub_1E5F9AEA8();
  v26 = sub_1E65E6698();
  (*(v9 + 8))(v11, v8);
  v55 = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074F18, &qword_1E65F1150);
  sub_1E6379A84();
  v27 = sub_1E65E5B68();
  v29 = v28;

  v30 = v13[16];
  v31 = *MEMORY[0x1E69CBCD8];
  v32 = sub_1E65D8F28();
  (*(*(v32 - 8) + 104))(&v17[v30], v31, v32);
  v33 = v13[17];
  v34 = sub_1E65D9908();
  (*(*(v34 - 8) + 56))(&v17[v33], 1, 1, v34);
  v35 = MEMORY[0x1E69E7CC0];
  v36 = sub_1E6427784(MEMORY[0x1E69E7CC0]);
  *&v17[v13[9]] = v35;
  v37 = &v17[v13[11]];
  *v37 = 0;
  *(v37 + 1) = 0;
  v38 = &v17[v13[12]];
  *v38 = 0;
  *(v38 + 1) = 0;
  *&v17[v13[13]] = v36;
  v39 = &v17[v13[14]];
  *v39 = 0;
  *(v39 + 1) = 0;
  v40 = &v17[v13[15]];
  *v40 = v27;
  v40[1] = v29;
  v41 = sub_1E65E60A8();
  (*(*(v41 - 8) + 56))(v7, 1, 1, v41);
  v51 = a1[9];
  v42 = v52;
  sub_1E639ECD8(v17, v52, type metadata accessor for PageMetricsClick);
  v43 = (*(v53 + 80) + 120) & ~*(v53 + 80);
  v44 = swift_allocObject();
  v45 = *a1;
  *(v44 + 56) = *(a1 + 1);
  v46 = *(a1 + 3);
  *(v44 + 72) = *(a1 + 2);
  *(v44 + 88) = v46;
  *(v44 + 104) = *(a1 + 4);
  v47 = v54 & 1;
  *(v44 + 16) = 0;
  *(v44 + 24) = 0;
  *(v44 + 32) = v47;
  *(v44 + 40) = v45;
  sub_1E639ED40(v42, v44 + v43, type metadata accessor for PageMetricsClick);
  swift_unknownObjectRetain();

  sub_1E6059EAC(0, 0, v49, &unk_1E65FED90, v44);

  return sub_1E5FC0990(v17);
}

uint64_t sub_1E639E8D4(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  if (a4)
  {
    v7 = *(v6 + 8);

    return v7();
  }

  else
  {
    v11 = (*(a5 + 48) + **(a5 + 48));
    v10 = swift_task_alloc();
    *(v6 + 16) = v10;
    *v10 = v6;
    v10[1] = sub_1E5DFA78C;

    return v11(a6);
  }
}

uint64_t sub_1E639EA04(uint64_t a1)
{
  v4 = *(type metadata accessor for PageMetricsClick(0) - 8);
  v5 = (*(v4 + 80) + 120) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + 32);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1E5DFA78C;

  return sub_1E639E8D4(a1, v6, v7, v8, v1 + 40, v1 + v5);
}

uint64_t sub_1E639EB00(uint64_t a1)
{
  v4 = *(type metadata accessor for PageMetricsClick(0) - 8);
  v5 = (*(v4 + 80) + 120) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + 32);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1E5DFE6BC;

  return sub_1E639E108(a1, v6, v7, v8, v1 + 40, v1 + v5);
}

uint64_t sub_1E639EBFC(uint64_t a1)
{
  v4 = *(sub_1E65D7A38() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E5DFE6BC;

  return sub_1E639D544(a1, v1 + v5);
}

uint64_t sub_1E639ECD8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E639ED40(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E639EDA8()
{
  v2 = *(type metadata accessor for AppComposer(0) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  v5 = *(sub_1E65D7A38() - 8);
  v6 = (v3 + v4 + *(v5 + 80)) & ~*(v5 + 80);
  v7 = *(v0 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_1E5DFE6BC;

  return sub_1E639D658(v0 + v3, v0 + v6, v7);
}

uint64_t MetricAccountEventDetour.__deallocating_deinit()
{
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t MetricAccountEventDetour.resolveDetour(for:composer:display:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  sub_1E65D8A08();
  v4[6] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074588, &unk_1E65F0EC0);
  v4[7] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED072320, &unk_1E65EAB60);
  v4[8] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074590, &unk_1E65F0ED0);
  v4[9] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074598, &unk_1E65FE820);
  v4[10] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED07B500, &qword_1E65F0EE0);
  v4[11] = swift_task_alloc();
  v5 = sub_1E65D8C88();
  v4[12] = v5;
  v4[13] = *(v5 - 8);
  v4[14] = swift_task_alloc();
  v6 = sub_1E65E3B68();
  v4[15] = v6;
  v4[16] = *(v6 - 8);
  v4[17] = swift_task_alloc();
  v4[18] = swift_task_alloc();
  v4[19] = type metadata accessor for RouteResource(0);
  v4[20] = swift_task_alloc();
  v7 = sub_1E65DE3E8();
  v4[21] = v7;
  v4[22] = *(v7 - 8);
  v4[23] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078988, &qword_1E65FE830);
  v4[24] = swift_task_alloc();
  v8 = sub_1E65D97D8();
  v4[25] = v8;
  v4[26] = *(v8 - 8);
  v4[27] = swift_task_alloc();
  v4[28] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E639F2FC, 0, 0);
}

uint64_t sub_1E639F2FC()
{
  v1 = v0[25];
  v2 = v0[26];
  v3 = v0[24];
  sub_1E639FAE4(v3);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_1E637E638(v0[24]);
    goto LABEL_17;
  }

  v4 = v0[23];
  v5 = v0[21];
  v6 = v0[22];
  (*(v0[26] + 32))(v0[28], v0[24], v0[25]);
  v7 = sub_1E65DAE18();
  (*(v6 + 104))(v4, *MEMORY[0x1E69CAD28], v5);
  v8 = sub_1E637C87C(v4, v7);

  (*(v6 + 8))(v4, v5);
  if ((v8 & 1) == 0)
  {
    goto LABEL_9;
  }

  sub_1E637E808(v0[3], v0[20], type metadata accessor for RouteResource);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v10 = v0[20];
  if (EnumCaseMultiPayload != 3)
  {
    sub_1E637E870(v0[20], type metadata accessor for RouteResource);
    goto LABEL_9;
  }

  v11 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077AE0, &unk_1E65EA7B0) + 80);
  v12 = sub_1E65D72D8();
  (*(*(v12 - 8) + 8))(v10 + v11, v12);
  v13 = sub_1E65E03C8();
  v15 = v14;
  if (v13 != sub_1E65E03C8() || v15 != v16)
  {
    v41 = sub_1E65E6C18();

    if (v41)
    {
      goto LABEL_13;
    }

LABEL_9:
    sub_1E65DE348();
    v17 = sub_1E65E3B48();
    v18 = sub_1E65E6308();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_1E5DE9000, v17, v18, "GDPR consented through interception, sending metric account event.", v19, 2u);
      MEMORY[0x1E694F1C0](v19, -1, -1);
    }

    v20 = v0[27];
    v21 = v0[28];
    v22 = v0[25];
    v23 = v0[26];
    v24 = v0[18];
    v25 = v0[15];
    v26 = v0[16];
    v27 = v0[11];
    v47 = v0[10];
    v48 = v0[9];
    v49 = v0[8];
    v50 = v0[7];
    v51 = v0[6];

    (*(v26 + 8))(v24, v25);
    (*(v23 + 16))(v20, v21, v22);
    v28 = sub_1E65D7A38();
    (*(*(v28 - 8) + 56))(v27, 1, 1, v28);
    v29 = sub_1E65D9208();
    (*(*(v29 - 8) + 56))(v47, 1, 1, v29);
    v30 = sub_1E65D9218();
    (*(*(v30 - 8) + 56))(v48, 1, 1, v30);
    sub_1E65D8CA8();
    v31 = sub_1E65D8CB8();
    (*(*(v31 - 8) + 56))(v49, 0, 1, v31);
    v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0745A0, &unk_1E65F0EE8);
    (*(*(v32 - 8) + 56))(v50, 1, 1, v32);
    v33 = sub_1E65D9928();
    (*(*(v33 - 8) + 56))(v51, 1, 1, v33);
    sub_1E65D8C78();
    sub_1E65E6158();
    v34 = v0[28];
    v35 = v0[25];
    v36 = v0[26];
    v38 = v0[13];
    v37 = v0[14];
    v39 = v0[12];
    type metadata accessor for AppComposer(0);
    type metadata accessor for AppEnvironment(0);
    v40 = MetricService.record.getter();
    v40(v37);

    goto LABEL_16;
  }

LABEL_13:
  sub_1E65DE348();
  v42 = sub_1E65E3B48();
  v43 = sub_1E65E6338();
  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    *v44 = 0;
    _os_log_impl(&dword_1E5DE9000, v42, v43, "[MetricAccountEventInterceptor] dropping account event for trainer tips gallery request", v44, 2u);
    MEMORY[0x1E694F1C0](v44, -1, -1);
  }

  v34 = v0[28];
  v35 = v0[25];
  v36 = v0[26];
  v38 = v0[16];
  v37 = v0[17];
  v39 = v0[15];

LABEL_16:
  (*(v38 + 8))(v37, v39);
  (*(v36 + 8))(v34, v35);
LABEL_17:
  sub_1E637E808(v0[3], v0[2], type metadata accessor for RouteDestination);

  v45 = v0[1];

  return v45();
}

uint64_t sub_1E639FAE4@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for RouteSource(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for URLContext(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for RouteDestination(0);
  if (sub_1E637E938())
  {
    sub_1E637E808(v1 + *(v9 + 20), v5, type metadata accessor for RouteSource);
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_1E639FF20(v5, v8);
      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078A58, &unk_1E65FEE30);
      v11 = *(v10 + 48);
      v12 = *(v10 + 64);
      v13 = sub_1E65D74E8();
      v14 = *(v13 - 8);
      (*(v14 + 32))(a1, v8, v13);
      (*(v14 + 56))(a1, 0, 1, v13);
      sub_1E6009E5C(&v8[*(v6 + 20)], a1 + v11);
      *(a1 + v12) = *&v8[*(v6 + 24)];
    }

    else
    {
      sub_1E637E870(v5, type metadata accessor for RouteSource);
      v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078A58, &unk_1E65FEE30);
      v19 = *(v18 + 48);
      v20 = (a1 + *(v18 + 64));
      v21 = sub_1E65D74E8();
      v22 = *(*(v21 - 8) + 56);
      v22(a1, 1, 1, v21);
      v22(a1 + v19, 1, 1, v21);
      *v20 = 0;
      v20[1] = 0;
    }

    v23 = *MEMORY[0x1E69CC350];
    v24 = sub_1E65D97D8();
    v25 = *(v24 - 8);
    (*(v25 + 104))(a1, v23, v24);
    return (*(v25 + 56))(a1, 0, 1, v24);
  }

  else
  {
    v15 = sub_1E65D97D8();
    v16 = *(*(v15 - 8) + 56);

    return v16(a1, 1, 1, v15);
  }
}

uint64_t sub_1E639FE54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1E5DFA78C;

  return MetricAccountEventDetour.resolveDetour(for:composer:display:)(a1, a2, a3);
}

uint64_t sub_1E639FF20(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for URLContext(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E639FFE0(uint64_t a1, uint64_t a2)
{
  v18[1] = a2;
  v2 = sub_1E65D76F8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1E65E5908();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078A68, &qword_1E65FEF48);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = v18 - v11;
  v13 = sub_1E65E52E8();
  v14 = *(*(v13 - 8) + 56);
  v14(v12, 1, 1, v13);
  (*(v7 + 104))(v9, *MEMORY[0x1E69CD980], v6);
  v15 = objc_allocWithZone(sub_1E65E5508());
  v16 = sub_1E65E54E8();
  (*(v3 + 16))(v5, v18[0], v2);
  sub_1E65E52D8();
  v14(v12, 0, 1, v13);
  sub_1E65E54F8();
  return v16;
}

uint64_t sub_1E63A024C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1E65D76F8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078A68, &qword_1E65FEF48);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v13 - v9;
  (*(v5 + 16))(v7, v3, v4);
  sub_1E65E52D8();
  v11 = sub_1E65E52E8();
  (*(*(v11 - 8) + 56))(v10, 0, 1, v11);
  return sub_1E65E54F8();
}

uint64_t sub_1E63A03EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1E63A0530(&qword_1ED078A60, &unk_1E65FEE64);

  return MEMORY[0x1EEDDAA28](a1, a2, a3, v6);
}

uint64_t sub_1E63A046C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1E63A0530(&qword_1ED078A60, &unk_1E65FEE64);

  return MEMORY[0x1EEDDA9B8](a1, a2, a3, v6);
}

void sub_1E63A04EC(uint64_t a1)
{
  sub_1E63A0530(&qword_1ED078A60, &unk_1E65FEE64);
  sub_1E65E40F8();
  __break(1u);
}

uint64_t sub_1E63A0530(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for WorkoutPlanArtworkViewRepresentable(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1E63A0574@<X0>(uint64_t a1@<X0>, int *a2@<X1>, char *a3@<X2>, int a4@<W3>, int *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, unsigned __int8 a11, uint64_t a12, uint64_t a13, char *a14, int *a15, uint64_t a16, uint64_t a17, unsigned __int8 a18, uint64_t a19, uint64_t a20, unsigned __int8 a21)
{
  v968 = a8;
  v1017 = a7;
  v978 = a6;
  v1022 = a5;
  v1001 = a4;
  v1013 = a3;
  v1021 = a2;
  v1006 = a1;
  v1029 = a9;
  v1000 = a21;
  v923 = a20;
  v980 = a18;
  v984 = a17;
  v981 = a16;
  v1019 = a14;
  v1020 = a15;
  v1002 = a13;
  v1014 = a12;
  LODWORD(v1024) = a11;
  v1016 = a10;
  v976 = sub_1E65DB268();
  v975 = *(v976 - 8);
  MEMORY[0x1EEE9AC00](v976);
  v974 = &v921 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v973 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075930, &qword_1E65F2258);
  v972 = *(v973 - 8);
  MEMORY[0x1EEE9AC00](v973);
  v971 = &v921 - v22;
  v964 = sub_1E65E0968();
  v998 = *(v964 - 8);
  MEMORY[0x1EEE9AC00](v964);
  v997 = &v921 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078A70, &qword_1E65FEF58);
  v25 = MEMORY[0x1EEE9AC00](v24 - 8);
  v967 = &v921 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v966 = &v921 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074528, &unk_1E660F4D0);
  v29 = MEMORY[0x1EEE9AC00](v28 - 8);
  v941 = &v921 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x1EEE9AC00](v29);
  v939 = &v921 - v32;
  v33 = MEMORY[0x1EEE9AC00](v31);
  v940 = &v921 - v34;
  MEMORY[0x1EEE9AC00](v33);
  v938 = &v921 - v35;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078A78, &qword_1E65FEF60);
  v37 = MEMORY[0x1EEE9AC00](v36 - 8);
  v944 = &v921 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = MEMORY[0x1EEE9AC00](v37);
  v943 = &v921 - v40;
  v41 = MEMORY[0x1EEE9AC00](v39);
  v970 = &v921 - v42;
  MEMORY[0x1EEE9AC00](v41);
  v942 = &v921 - v43;
  v927 = sub_1E65E07B8();
  v926 = *(v927 - 8);
  v44 = MEMORY[0x1EEE9AC00](v927);
  v928 = &v921 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = MEMORY[0x1EEE9AC00](v44);
  v936 = &v921 - v47;
  v48 = MEMORY[0x1EEE9AC00](v46);
  v935 = &v921 - v49;
  v50 = MEMORY[0x1EEE9AC00](v48);
  v932 = &v921 - v51;
  v52 = MEMORY[0x1EEE9AC00](v50);
  v934 = &v921 - v53;
  MEMORY[0x1EEE9AC00](v52);
  v933 = &v921 - v54;
  v999 = sub_1E65E0A08();
  v985 = *(v999 - 8);
  MEMORY[0x1EEE9AC00](v999);
  v950 = &v921 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072638, &qword_1E65EB950);
  MEMORY[0x1EEE9AC00](v56 - 8);
  v977 = &v921 - v57;
  v58 = sub_1E65D7268();
  v59 = *(v58 - 8);
  v1026 = v58;
  v1027 = v59;
  MEMORY[0x1EEE9AC00](v58);
  v1025 = &v921 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072D90, &qword_1E66040F0);
  v62 = MEMORY[0x1EEE9AC00](v61 - 8);
  v957 = &v921 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = MEMORY[0x1EEE9AC00](v62);
  v953 = &v921 - v65;
  v66 = MEMORY[0x1EEE9AC00](v64);
  v960 = &v921 - v67;
  v68 = MEMORY[0x1EEE9AC00](v66);
  v958 = &v921 - v69;
  v70 = MEMORY[0x1EEE9AC00](v68);
  v954 = &v921 - v71;
  v72 = MEMORY[0x1EEE9AC00](v70);
  v956 = &v921 - v73;
  v74 = MEMORY[0x1EEE9AC00](v72);
  v996 = &v921 - v75;
  v76 = MEMORY[0x1EEE9AC00](v74);
  v994 = &v921 - v77;
  v78 = MEMORY[0x1EEE9AC00](v76);
  v990 = &v921 - v79;
  v80 = MEMORY[0x1EEE9AC00](v78);
  v959 = &v921 - v81;
  v82 = MEMORY[0x1EEE9AC00](v80);
  v993 = &v921 - v83;
  v84 = MEMORY[0x1EEE9AC00](v82);
  v989 = &v921 - v85;
  v86 = MEMORY[0x1EEE9AC00](v84);
  v995 = &v921 - v87;
  v88 = MEMORY[0x1EEE9AC00](v86);
  v992 = &v921 - v89;
  v90 = MEMORY[0x1EEE9AC00](v88);
  v952 = &v921 - v91;
  v92 = MEMORY[0x1EEE9AC00](v90);
  v987 = &v921 - v93;
  v94 = MEMORY[0x1EEE9AC00](v92);
  v962 = &v921 - v95;
  v96 = MEMORY[0x1EEE9AC00](v94);
  v988 = &v921 - v97;
  v98 = MEMORY[0x1EEE9AC00](v96);
  v991 = &v921 - v99;
  v100 = MEMORY[0x1EEE9AC00](v98);
  v102 = &v921 - v101;
  v103 = MEMORY[0x1EEE9AC00](v100);
  v961 = &v921 - v104;
  v105 = MEMORY[0x1EEE9AC00](v103);
  v986 = &v921 - v106;
  v107 = MEMORY[0x1EEE9AC00](v105);
  v955 = &v921 - v108;
  v109 = MEMORY[0x1EEE9AC00](v107);
  v951 = &v921 - v110;
  v111 = MEMORY[0x1EEE9AC00](v109);
  v113 = &v921 - v112;
  v114 = MEMORY[0x1EEE9AC00](v111);
  v116 = &v921 - v115;
  v117 = MEMORY[0x1EEE9AC00](v114);
  v119 = &v921 - v118;
  v120 = MEMORY[0x1EEE9AC00](v117);
  v946 = &v921 - v121;
  v122 = MEMORY[0x1EEE9AC00](v120);
  v949 = &v921 - v123;
  v124 = MEMORY[0x1EEE9AC00](v122);
  v945 = &v921 - v125;
  v126 = MEMORY[0x1EEE9AC00](v124);
  v948 = &v921 - v127;
  v128 = MEMORY[0x1EEE9AC00](v126);
  v947 = &v921 - v129;
  v130 = MEMORY[0x1EEE9AC00](v128);
  v937 = &v921 - v131;
  v132 = MEMORY[0x1EEE9AC00](v130);
  v969 = &v921 - v133;
  v134 = MEMORY[0x1EEE9AC00](v132);
  v965 = &v921 - v135;
  MEMORY[0x1EEE9AC00](v134);
  v963 = &v921 - v136;
  v1028 = sub_1E65D7348();
  v1018 = *(v1028 - 8);
  v137 = MEMORY[0x1EEE9AC00](v1028);
  v139 = &v921 - ((v138 + 15) & 0xFFFFFFFFFFFFFFF0);
  v140 = MEMORY[0x1EEE9AC00](v137);
  v1015 = &v921 - v141;
  v142 = MEMORY[0x1EEE9AC00](v140);
  v931 = &v921 - v143;
  v144 = MEMORY[0x1EEE9AC00](v142);
  v930 = &v921 - v145;
  v146 = MEMORY[0x1EEE9AC00](v144);
  v979 = &v921 - v147;
  v148 = MEMORY[0x1EEE9AC00](v146);
  v983 = &v921 - v149;
  v150 = MEMORY[0x1EEE9AC00](v148);
  v982 = &v921 - v151;
  v152 = MEMORY[0x1EEE9AC00](v150);
  v929 = &v921 - v153;
  v154 = MEMORY[0x1EEE9AC00](v152);
  v925 = &v921 - v155;
  v156 = MEMORY[0x1EEE9AC00](v154);
  v924 = &v921 - v157;
  v158 = MEMORY[0x1EEE9AC00](v156);
  v922 = &v921 - v159;
  v160 = MEMORY[0x1EEE9AC00](v158);
  v162 = &v921 - v161;
  v163 = MEMORY[0x1EEE9AC00](v160);
  v165 = &v921 - v164;
  v166 = MEMORY[0x1EEE9AC00](v163);
  v1003 = &v921 - v167;
  v168 = MEMORY[0x1EEE9AC00](v166);
  v1005 = &v921 - v169;
  MEMORY[0x1EEE9AC00](v168);
  v1004 = &v921 - v170;
  v1012 = sub_1E65E0858();
  v1011 = *(v1012 - 1);
  v171 = MEMORY[0x1EEE9AC00](v1012);
  v173 = &v921 - ((v172 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v171);
  v1008 = &v921 - v174;
  v1010 = sub_1E65E0908();
  v1009 = *(v1010 - 8);
  MEMORY[0x1EEE9AC00](v1010);
  v1007 = &v921 - ((v175 + 15) & 0xFFFFFFFFFFFFFFF0);
  v176 = sub_1E65E03F8();
  MEMORY[0x1EEE9AC00](v176);
  v178 = (&v921 - ((v177 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1E63A7AF0(v1023, v178);
  v1023 = v178;
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v311 = sub_1E65DAE38();
      v312 = sub_1E65DAE38();
      v313 = v1029;
      v314 = v981;
      v1015 = v312;
      v1013 = v311;
      if (v1000 == 7)
      {
        goto LABEL_89;
      }

      v555 = v312;
      v556 = sub_1E65D9B18();
      v558 = v557;
      v559 = sub_1E65D9B18();
      if (v556 == v559 && v558 == v560)
      {
        goto LABEL_215;
      }

      v747 = sub_1E65E6C18();

      if (v747)
      {
        goto LABEL_327;
      }

      v858 = sub_1E65D9B18();
      v860 = v859;
      if (v858 == sub_1E65D9B18() && v860 == v861)
      {
LABEL_215:

LABEL_327:
        if (v311 == v555)
        {
          sub_1E65E0778();
          sub_1E65E0768();
          sub_1E65E0778();
        }

        else
        {
          sub_1E65E0768();
          sub_1E65E0768();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072618, qword_1E65FBAF0);
          v756 = v932;
          sub_1E65E0668();
          sub_1E65E0798();
          (*(v926 + 8))(v756, v927);
          sub_1E65E0768();
        }

        sub_1E65E0778();
        sub_1E65E0778();
        v748 = v950;
        sub_1E65E09E8();
        v757 = v1022;
        v758 = v1020;
        (*(v985 + 16))(v313, v748, v999);
        v759 = sub_1E65DAE38();
        v760 = sub_1E65DAE38();
        v761 = sub_1E65E4B48();
        v762 = 4.0;
        if (v761)
        {
          v762 = 8.0;
        }

        v763 = 16.0;
        if (v761)
        {
          v763 = 18.0;
        }

        if (v759 == v760)
        {
          v764 = v763;
        }

        else
        {
          v764 = v762;
        }

        if (v759 == v760)
        {
          v765 = 12.0;
        }

        else
        {
          v765 = 8.0;
        }

        v766 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077090, &qword_1E65F9548);
        v767 = v313 + v766[12];
        v768 = v766[16];
        v1022 = v766;
        v769 = v766[20];
        sub_1E64FB75C(v767);
        v770 = type metadata accessor for ArtworkDescriptor(0);
        *(v767 + v770[5]) = MEMORY[0x1E69E7CD0];
        v771 = v767 + v770[6];
        *v771 = 0;
        *(v771 + 8) = v764;
        *(v771 + 16) = v764;
        *(v771 + 24) = v765;
        *(v767 + v770[7]) = 1;
        v772 = (v767 + v770[8]);
        *v772 = v1019;
        v772[1] = v758;
        v773 = *MEMORY[0x1E699DAA8];
        v774 = sub_1E65E0988();
        (*(*(v774 - 8) + 104))(v313 + v768, v773, v774);
        v775 = v937;
        sub_1E5DFD1CC(v757, v937, &qword_1ED072D90, &qword_1E66040F0);
        v776 = sub_1E65D72D8();
        v777 = *(v776 - 8);
        v778 = *(v777 + 6);
        v779 = (v778)(v775, 1, v776);
        v1021 = v777;
        v1019 = v778;
        v1024 = (v777 + 12);
        if (v779 == 1)
        {

          sub_1E5DFE50C(v775, &qword_1ED072D90, &qword_1E66040F0);
          v780 = 1;
          v781 = v1029;
          v782 = v1017;
        }

        else
        {
          v1012 = v769;
          if (v1013 == v1015)
          {
            v783 = qword_1ED071AE0;

            if (v783 != -1)
            {
              swift_once();
            }

            v784 = qword_1ED096618;
          }

          else
          {
            v863 = qword_1ED071A78;

            if (v863 != -1)
            {
              swift_once();
            }

            v784 = qword_1ED0964E0;
          }

          v864 = v1028;
          v865 = __swift_project_value_buffer(v1028, v784);
          v866 = v1018;
          v867 = v924;
          (*(v1018 + 2))(v924, v865, v864);
          v869 = v1026;
          v868 = v1027;
          v870 = v1025;
          (*(v1027 + 104))(v1025, *MEMORY[0x1E69686E8], v1026);
          sub_1E6258850();
          v781 = v1029;
          v769 = v1012;
          sub_1E65D73C8();
          (*(v868 + 8))(v870, v869);
          (*(v866 + 1))(v867, v1028);
          v777 = v1021;
          (*(v1021 + 1))(v775, v776);
          v780 = 0;
          v782 = v1017;
          v778 = v1019;
        }

        v871 = v947;
        v872 = (v777 + 14);
        v873 = *(v777 + 7);
        (v873)(v769 + v781, v780, 1, v776);
        v874 = v1022;
        v875 = v1022[24];
        sub_1E5DFD1CC(v782, v871, &qword_1ED072D90, &qword_1E66040F0);
        v876 = (v778)(v871, 1, v776);
        v877 = v999;
        v878 = v1015;
        v1020 = v873;
        if (v876 == 1)
        {
          sub_1E5DFE50C(v871, &qword_1ED072D90, &qword_1E66040F0);
          v879 = 1;
          v880 = v1029;
          v881 = v948;
        }

        else
        {
          v1017 = v875;
          if (v1013 == v1015)
          {
            if (qword_1ED071AD8 != -1)
            {
              swift_once();
            }

            v882 = qword_1ED096600;
          }

          else
          {
            if (qword_1ED071A70 != -1)
            {
              swift_once();
            }

            v882 = qword_1ED0964C8;
          }

          v883 = v1028;
          v884 = __swift_project_value_buffer(v1028, v882);
          v885 = v1018;
          v886 = v925;
          (*(v1018 + 2))(v925, v884, v883);
          v888 = v1026;
          v887 = v1027;
          v889 = v1025;
          (*(v1027 + 104))(v1025, *MEMORY[0x1E69686E8], v1026);
          sub_1E6258850();
          v880 = v1029;
          v875 = v1017;
          v890 = v947;
          sub_1E65D73C8();
          (*(v887 + 8))(v889, v888);
          (*(v885 + 1))(v886, v1028);
          (*(v1021 + 1))(v890, v776);
          v879 = 0;
          v877 = v999;
          v878 = v1015;
          v881 = v948;
          v874 = v1022;
          v873 = v1020;
        }

        v1017 = v872;
        (v873)(v880 + v875, v879, 1, v776);
        v891 = v874[28];
        sub_1E5DFD1CC(v1016, v881, &qword_1ED072D90, &qword_1E66040F0);
        if ((v1019)(v881, 1, v776) == 1)
        {
          v892 = *(v985 + 8);
          v892(v950, v877);
          sub_1E5DFE50C(v881, &qword_1ED072D90, &qword_1E66040F0);
          v893 = 1;
          v894 = v1029;
        }

        else
        {
          if (v1013 == v878)
          {
            v894 = v1029;
            if (qword_1ED071AD0 != -1)
            {
              swift_once();
            }

            v895 = qword_1ED0965E8;
          }

          else
          {
            v894 = v1029;
            if (qword_1ED071A68 != -1)
            {
              swift_once();
            }

            v895 = qword_1ED0964B0;
          }

          v896 = v1028;
          v897 = __swift_project_value_buffer(v1028, v895);
          v898 = v1018;
          v899 = v929;
          (*(v1018 + 2))(v929, v897, v896);
          v901 = v1026;
          v900 = v1027;
          v902 = v1025;
          (*(v1027 + 104))(v1025, *MEMORY[0x1E69686E8], v1026);
          sub_1E6258850();
          v903 = v948;
          sub_1E65D73C8();
          (*(v900 + 8))(v902, v901);
          (*(v898 + 1))(v899, v896);
          v892 = *(v985 + 8);
          v877 = v999;
          v892(v950, v999);
          (*(v1021 + 1))(v903, v776);
          v893 = 0;
          v874 = v1022;
          v873 = v1020;
        }

        (v873)(v894 + v891, v893, 1, v776);
        v904 = v874[36];
        v905 = v874[40];
        sub_1E5DFD1CC(v1014, v894 + v874[32], &qword_1ED072638, &qword_1E65EB950);
        sub_1E5DFD1CC(v1002, v894 + v904, &qword_1ED072638, &qword_1E65EB950);
        v906 = type metadata accessor for ViewDescriptor(0);
        (*(*(v906 - 8) + 56))(v894 + v905, 1, 1, v906);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072610, &qword_1E65EB930);
        swift_storeEnumTagMultiPayload();
        return (v892)(v1023, v877);
      }

      v862 = sub_1E65E6C18();

      if (v862)
      {
        goto LABEL_327;
      }

LABEL_89:
      v315 = v980;
      if (v980 == 0xFF || (v1032 = v314, v1033 = v984, v1034 = v980, v1030 = xmmword_1E65FE4F0, v1031 = 1, sub_1E5F8710C(v314, v984, v980 & 1), sub_1E6018A94(), sub_1E6018AE8(), v316 = sub_1E65D7FD8(), sub_1E5FEE4CC(v1032, v1033, v1034), (v316 & 1) == 0))
      {
        v317 = v1018;
        if (qword_1ED071A60 != -1)
        {
          swift_once();
        }

        v646 = v1028;
        v647 = __swift_project_value_buffer(v1028, qword_1ED096498);
        v1012 = *(v317 + 2);
        (v1012)(v982, v647, v646);
        v320 = v1020;
        if (v315 == -1)
        {
          goto LABEL_265;
        }
      }

      else
      {
        v317 = v1018;
        if (qword_1ED071A78 != -1)
        {
          swift_once();
        }

        v318 = v1028;
        v319 = __swift_project_value_buffer(v1028, qword_1ED0964E0);
        v1012 = *(v317 + 2);
        (v1012)(v982, v319, v318);
        v320 = v1020;
      }

      v1032 = v314;
      v1033 = v984;
      v1034 = v315;
      v1030 = xmmword_1E65FE4F0;
      v1031 = 1;
      sub_1E5F8710C(v314, v984, v315 & 1);
      sub_1E6018A94();
      sub_1E6018AE8();
      v648 = sub_1E65D7FD8();
      sub_1E5FEE4CC(v1032, v1033, v1034);
      if (v648)
      {
        if (qword_1ED071A70 != -1)
        {
          swift_once();
        }

        v649 = qword_1ED0964C8;
        goto LABEL_268;
      }

LABEL_265:
      if (qword_1ED071A58 != -1)
      {
        swift_once();
      }

      v649 = qword_1ED096480;
LABEL_268:
      v650 = v1015;
      v651 = v1028;
      v652 = __swift_project_value_buffer(v1028, v649);
      v1011 = v317 + 4;
      (v1012)(v983, v652, v651);
      v653 = v984;
      sub_1E63A7B54(v311 == v650, v314, v984, v315, v979);
      sub_1E637A270(v1024, v314, v653, v315, v313);
      v654 = sub_1E65DAE38();
      v655 = sub_1E65DAE38();
      v656 = sub_1E65E4B48();
      v657 = 4.0;
      if (v656)
      {
        v657 = 8.0;
      }

      v658 = 16.0;
      if (v656)
      {
        v658 = 18.0;
      }

      if (v654 == v655)
      {
        v659 = v658;
      }

      else
      {
        v659 = v657;
      }

      if (v654 == v655)
      {
        v660 = 12.0;
      }

      else
      {
        v660 = 8.0;
      }

      v661 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077090, &qword_1E65F9548);
      v662 = v313 + v661[12];
      v663 = v661[16];
      v664 = v661[20];
      sub_1E64FB75C(v662);
      v665 = type metadata accessor for ArtworkDescriptor(0);
      *(v662 + v665[5]) = MEMORY[0x1E69E7CD0];
      v666 = v662 + v665[6];
      *v666 = 0;
      *(v666 + 8) = v659;
      *(v666 + 16) = v659;
      *(v666 + 24) = v660;
      *(v662 + v665[7]) = 1;
      v667 = (v662 + v665[8]);
      *v667 = v1019;
      v667[1] = v320;
      v668 = *MEMORY[0x1E699DAA0];
      v669 = sub_1E65E0988();
      (*(*(v669 - 8) + 104))(v313 + v663, v668, v669);
      v670 = v945;
      sub_1E5DFD1CC(v1022, v945, &qword_1ED072D90, &qword_1E66040F0);
      v671 = sub_1E65D72D8();
      v672 = *(v671 - 8);
      v673 = *(v672 + 6);
      v674 = v673(v670, 1, v671);
      v1021 = (v672 + 48);
      v1022 = v661;
      v1019 = v672;
      if (v674 == 1)
      {

        sub_1E5DFE50C(v670, &qword_1ED072D90, &qword_1E66040F0);
        v675 = 1;
        v676 = v1029;
        v677 = v1017;
        v678 = v949;
        v679 = v664;
      }

      else
      {
        v1010 = v673;
        if (v311 == v650)
        {
          v680 = qword_1ED071AC8;

          v681 = v664;
          if (v680 != -1)
          {
            swift_once();
          }

          v682 = v1028;
          v683 = __swift_project_value_buffer(v1028, qword_1ED0965D0);
          v684 = v930;
          (v1012)(v930, v683, v682);
        }

        else
        {
          v684 = v930;
          v682 = v1028;
          (v1012)(v930, v982, v1028);

          v681 = v664;
        }

        v817 = v1026;
        v816 = v1027;
        v818 = v1025;
        (*(v1027 + 104))(v1025, *MEMORY[0x1E69686E8], v1026);
        sub_1E6258850();
        v676 = v1029;
        v679 = v681;
        sub_1E65D73C8();
        (*(v816 + 8))(v818, v817);
        (*(v1018 + 1))(v684, v682);
        v672 = v1019;
        (*(v1019 + 1))(v670, v671);
        v675 = 0;
        v677 = v1017;
        v661 = v1022;
        v673 = v1010;
        v678 = v949;
      }

      v1024 = *(v672 + 7);
      (v1024)(v676 + v679, v675, 1, v671);
      v819 = v661[24];
      sub_1E5DFD1CC(v677, v678, &qword_1ED072D90, &qword_1E66040F0);
      v820 = v673(v678, 1, v671);
      v1020 = (v672 + 56);
      if (v820 == 1)
      {
        sub_1E5DFE50C(v678, &qword_1ED072D90, &qword_1E66040F0);
        v821 = 1;
        v822 = v1029;
        v823 = v946;
      }

      else
      {
        v1017 = v819;
        if (v1013 == v1015)
        {
          v824 = v931;
          if (qword_1ED071AC0 != -1)
          {
            swift_once();
          }

          v827 = v1028;
          v826 = __swift_project_value_buffer(v1028, qword_1ED0965B8);
          v825 = v824;
        }

        else
        {
          v824 = v931;
          v825 = v931;
          v826 = v983;
          v827 = v1028;
        }

        (v1012)(v825, v826, v827);
        v828 = v1026;
        v829 = v1027;
        v830 = v1025;
        (*(v1027 + 104))(v1025, *MEMORY[0x1E69686E8], v1026);
        sub_1E6258850();
        v822 = v1029;
        v831 = v1017;
        v832 = v824;
        v833 = v949;
        sub_1E65D73C8();
        v834 = v830;
        v819 = v831;
        (*(v829 + 8))(v834, v828);
        (*(v1018 + 1))(v832, v827);
        v672 = v1019;
        (*(v1019 + 1))(v833, v671);
        v821 = 0;
        v823 = v946;
        v661 = v1022;
      }

      (v1024)(v822 + v819, v821, 1, v671);
      v835 = v661[28];
      sub_1E5DFD1CC(v1016, v823, &qword_1ED072D90, &qword_1E66040F0);
      if (v673(v823, 1, v671) == 1)
      {
        v836 = v823;
        v837 = *(v1018 + 1);
        v838 = v835;
        v839 = v1028;
        v837(v979, v1028);
        v837(v983, v839);
        v837(v982, v839);
        sub_1E5DFE50C(v836, &qword_1ED072D90, &qword_1E66040F0);
        v840 = 1;
      }

      else
      {
        v841 = v1027;
        v842 = v1025;
        v843 = v672;
        v844 = v1026;
        (*(v1027 + 104))(v1025, *MEMORY[0x1E69686E8], v1026);
        sub_1E6258850();
        v845 = v979;
        v846 = v1028;
        v1021 = v835;
        v847 = v823;
        sub_1E65D73C8();
        (*(v841 + 8))(v842, v844);
        v848 = *(v1018 + 1);
        v849 = v845;
        v661 = v1022;
        v848(v849, v846);
        v848(v983, v846);
        v848(v982, v846);
        (*(v843 + 1))(v847, v671);
        v838 = v1021;
        v840 = 0;
      }

      (v1024)(v838 + v822, v840, 1, v671);
      v850 = v661[36];
      v851 = v661[40];
      sub_1E5DFD1CC(v1014, v822 + v661[32], &qword_1ED072638, &qword_1E65EB950);
      sub_1E5DFD1CC(v1002, v822 + v850, &qword_1ED072638, &qword_1E65EB950);
      v852 = type metadata accessor for ViewDescriptor(0);
      (*(*(v852 - 8) + 56))(v822 + v851, 1, 1, v852);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072610, &qword_1E65EB930);
      swift_storeEnumTagMultiPayload();
      return (*(v985 + 8))(v1023, v999);
    case 2u:
      v267 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078AA0, &qword_1E65FEF88);
      v268 = v267[12];
      sub_1E5DFD1CC(v1022, v119, &qword_1ED072D90, &qword_1E66040F0);
      v269 = sub_1E65D72D8();
      v270 = *(v269 - 8);
      v1022 = *(v270 + 6);
      v271 = (v1022)(v119, 1, v269);
      v1024 = v267;
      if (v271 == 1)
      {
        sub_1E5DFE50C(v119, &qword_1ED072D90, &qword_1E66040F0);
        v272 = 1;
        v273 = v1029;
      }

      else
      {
        v1020 = v270;
        v1021 = v268;
        if (qword_1ED0719F0 != -1)
        {
          swift_once();
        }

        __swift_project_value_buffer(v1028, qword_1ED096360);
        v511 = v1026;
        v512 = v1027;
        v513 = v1025;
        (*(v1027 + 104))(v1025, *MEMORY[0x1E69686E8], v1026);
        sub_1E6258850();
        v273 = v1029;
        v514 = v1021;
        sub_1E65D73C8();
        v515 = v513;
        v268 = v514;
        (*(v512 + 8))(v515, v511);
        v270 = v1020;
        (*(v1020 + 1))(v119, v269);
        v272 = 0;
        v267 = v1024;
      }

      v516 = *(v270 + 7);
      (v516)(v268 + v273, v272, 1, v269);
      v517 = v267[16];
      sub_1E5DFD1CC(v1017, v116, &qword_1ED072D90, &qword_1E66040F0);
      if ((v1022)(v116, 1, v269) == 1)
      {
        sub_1E5DFE50C(v116, &qword_1ED072D90, &qword_1E66040F0);
        v518 = 1;
        v519 = v1029;
      }

      else
      {
        v1021 = v516;
        v1022 = v517;
        if (qword_1ED0719E8 != -1)
        {
          swift_once();
        }

        __swift_project_value_buffer(v1028, qword_1ED096348);
        v521 = v1026;
        v520 = v1027;
        v522 = v1025;
        (*(v1027 + 104))(v1025, *MEMORY[0x1E69686E8], v1026);
        sub_1E6258850();
        v519 = v1029;
        v523 = v1022;
        sub_1E65D73C8();
        v517 = v523;
        (*(v520 + 8))(v522, v521);
        (*(v270 + 1))(v116, v269);
        v518 = 0;
        v267 = v1024;
        v516 = v1021;
      }

      (v516)(v519 + v517, v518, 1, v269);
      sub_1E5DFD1CC(v1014, v519 + v267[20], &qword_1ED072638, &qword_1E65EB950);
      sub_1E65E0A18();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072610, &qword_1E65EB930);
      swift_storeEnumTagMultiPayload();
      v453 = sub_1E65E0A28();
      return (*(*(v453 - 8) + 8))(v1023, v453);
    case 3u:
      v274 = sub_1E65DAE38();
      v275 = sub_1E65DAE38();
      v276 = sub_1E65E4B48();
      v277 = 4.0;
      if (v276)
      {
        v277 = 8.0;
      }

      v278 = 16.0;
      if (v276)
      {
        v278 = 18.0;
      }

      if (v274 == v275)
      {
        v279 = v278;
      }

      else
      {
        v279 = v277;
      }

      if (v274 == v275)
      {
        v280 = 12.0;
      }

      else
      {
        v280 = 8.0;
      }

      v281 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078A90, &qword_1E65FEF78);
      v282 = v281[12];
      v283 = v1029;
      sub_1E64FB75C(v1029);
      v284 = type metadata accessor for ArtworkDescriptor(0);
      *(v283 + v284[5]) = MEMORY[0x1E69E7CD0];
      v285 = v283 + v284[6];
      *v285 = 0;
      *(v285 + 8) = v279;
      *(v285 + 16) = v279;
      *(v285 + 24) = v280;
      *(v283 + v284[7]) = 1;
      v286 = (v283 + v284[8]);
      v287 = v1020;
      *v286 = v1019;
      v286[1] = v287;
      v288 = v986;
      sub_1E5DFD1CC(v1016, v986, &qword_1ED072D90, &qword_1E66040F0);
      v289 = sub_1E65D72D8();
      v290 = *(v289 - 8);
      v1021 = *(v290 + 48);
      if ((v1021)(v288, 1, v289) == 1)
      {

        sub_1E5DFE50C(v288, &qword_1ED072D90, &qword_1E66040F0);
        (*(v290 + 56))(&v282[v283], 1, 1, v289);
      }

      else
      {
        v1019 = v282;
        v524 = v938;
        sub_1E5DFD1CC(v968, v938, &qword_1ED074528, &unk_1E660F4D0);
        v525 = sub_1E65D83D8();
        v526 = *(v525 - 8);
        v527 = (*(v526 + 48))(v524, 1, v525);

        if (v527 == 1)
        {
          sub_1E5DFE50C(v524, &qword_1ED074528, &unk_1E660F4D0);
          v528 = 1;
          v529 = v942;
        }

        else
        {
          v529 = v942;
          sub_1E608EC7C(v942);
          (*(v526 + 8))(v524, v525);
          v528 = 0;
        }

        (*(v1018 + 7))(v529, v528, 1, v1028);
        v686 = v1026;
        v685 = v1027;
        v687 = v529;
        v688 = v1025;
        (*(v1027 + 104))(v1025, *MEMORY[0x1E69686E8], v1026);
        v689 = v986;
        sub_1E65D7248();
        (*(v685 + 8))(v688, v686);
        sub_1E5DFE50C(v687, &qword_1ED078A78, &qword_1E65FEF60);
        (*(v290 + 8))(v689, v289);
      }

      v690 = v281[16];
      if (v1001 <= 1u)
      {
        if (v1001)
        {
          v691 = MEMORY[0x1E699DAC8];
        }

        else
        {
          v691 = MEMORY[0x1E699DAB8];
        }
      }

      else if (v1001 == 2)
      {
        v691 = MEMORY[0x1E699DAC0];
      }

      else
      {
        if (v1001 != 3)
        {
          v785 = sub_1E65E09D8();
          v786 = *(v785 - 8);
          (*(v786 + 56))(v966, 1, 1, v785);
          (*(v786 + 104))(v283 + v690, *MEMORY[0x1E699DAB0], v785);
          goto LABEL_359;
        }

        v691 = MEMORY[0x1E699DAB0];
      }

      v787 = *v691;
      v788 = sub_1E65E09D8();
      v789 = *(v788 - 8);
      v790 = v966;
      (*(v789 + 104))(v966, v787, v788);
      (*(v789 + 56))(v790, 0, 1, v788);
      (*(v789 + 32))(v283 + v690, v790, v788);
LABEL_359:
      v791 = v970;
      v792 = v961;
      v793 = sub_1E65DAE38();
      v794 = sub_1E65DAE38();
      v795 = v1022;
      if (v793 != v794)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072618, qword_1E65FBAF0);
        sub_1E65E0708();
      }

      sub_1E65E0938();
      v796 = v281[24];
      sub_1E5DFD1CC(v795, v792, &qword_1ED072D90, &qword_1E66040F0);
      if ((v1021)(v792, 1, v289) == 1)
      {
        goto LABEL_372;
      }

      v797 = v940;
      sub_1E5DFD1CC(v978, v940, &qword_1ED074528, &unk_1E660F4D0);
      v798 = sub_1E65D83D8();
      v799 = *(v798 - 8);
      if ((*(v799 + 48))(v797, 1, v798) == 1)
      {
        sub_1E5DFE50C(v797, &qword_1ED074528, &unk_1E660F4D0);
        v800 = 1;
      }

      else
      {
        sub_1E608EC7C(v791);
        (*(v799 + 8))(v797, v798);
        v800 = 0;
      }

      goto LABEL_376;
    case 4u:
      v207 = sub_1E65DAE38();
      v208 = sub_1E65DAE38();
      v209 = sub_1E65E4B48();
      v210 = 4.0;
      if (v209)
      {
        v210 = 8.0;
      }

      v211 = 16.0;
      if (v209)
      {
        v211 = 18.0;
      }

      if (v207 == v208)
      {
        v212 = v211;
      }

      else
      {
        v212 = v210;
      }

      if (v207 == v208)
      {
        v213 = 12.0;
      }

      else
      {
        v213 = 8.0;
      }

      v214 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0739C0, &qword_1E65EDD50);
      v215 = v1029 + v214[12];
      v216 = v214[16];
      sub_1E64FB75C(v215);
      v217 = type metadata accessor for ArtworkDescriptor(0);
      *(v215 + v217[5]) = MEMORY[0x1E69E7CD0];
      v218 = v215 + v217[6];
      *v218 = 0;
      *(v218 + 8) = v212;
      *(v218 + 16) = v212;
      *(v218 + 24) = v213;
      *(v215 + v217[7]) = 1;
      v219 = (v215 + v217[8]);
      v220 = v1020;
      *v219 = v1019;
      v219[1] = v220;
      sub_1E5DFD1CC(v1022, v102, &qword_1ED072D90, &qword_1E66040F0);
      v221 = sub_1E65D72D8();
      v222 = *(v221 - 8);
      v223 = *(v222 + 48);
      v224 = v223(v102, 1, v221);
      v1024 = v223;
      if (v224 == 1)
      {

        sub_1E5DFE50C(v102, &qword_1ED072D90, &qword_1E66040F0);
        v225 = 1;
        v226 = v1029;
      }

      else
      {
        v1021 = v214;
        v1022 = v216;
        v439 = qword_1ED071A48;

        if (v439 != -1)
        {
          swift_once();
        }

        __swift_project_value_buffer(v1028, qword_1ED096450);
        v441 = v1026;
        v440 = v1027;
        v442 = v1025;
        (*(v1027 + 104))(v1025, *MEMORY[0x1E69686E8], v1026);
        sub_1E6258850();
        v226 = v1029;
        v443 = v1022;
        sub_1E65D73C8();
        v444 = v442;
        v216 = v443;
        (*(v440 + 8))(v444, v441);
        (*(v222 + 8))(v102, v221);
        v225 = 0;
        v214 = v1021;
      }

      v445 = *(v222 + 56);
      v445(v226 + v216, v225, 1, v221);
      v446 = v214[20];
      v447 = v991;
      sub_1E5DFD1CC(v1017, v991, &qword_1ED072D90, &qword_1E66040F0);
      if ((v1024)(v447, 1, v221) == 1)
      {
        sub_1E5DFE50C(v447, &qword_1ED072D90, &qword_1E66040F0);
        v448 = 1;
      }

      else
      {
        if (qword_1ED071A40 != -1)
        {
          swift_once();
        }

        __swift_project_value_buffer(v1028, qword_1ED096438);
        v450 = v1026;
        v449 = v1027;
        v451 = v1025;
        (*(v1027 + 104))(v1025, *MEMORY[0x1E69686E8], v1026);
        sub_1E6258850();
        v452 = v991;
        sub_1E65D73C8();
        (*(v449 + 8))(v451, v450);
        (*(v222 + 8))(v452, v221);
        v448 = 0;
      }

      v445(v226 + v446, v448, 1, v221);
      sub_1E65E0A48();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072610, &qword_1E65EB930);
      swift_storeEnumTagMultiPayload();
      v453 = sub_1E65E0A58();
      return (*(*(v453 - 8) + 8))(v1023, v453);
    case 5u:
      v321 = sub_1E65DAE38();
      v322 = sub_1E65DAE38();
      v323 = sub_1E65E4B48();
      v324 = 4.0;
      if (v323)
      {
        v324 = 8.0;
      }

      v325 = 16.0;
      if (v323)
      {
        v325 = 18.0;
      }

      if (v321 == v322)
      {
        v326 = v325;
      }

      else
      {
        v326 = v324;
      }

      if (v321 == v322)
      {
        v327 = 12.0;
      }

      else
      {
        v327 = 8.0;
      }

      v328 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078A90, &qword_1E65FEF78);
      v329 = v328[12];
      v283 = v1029;
      sub_1E64FB75C(v1029);
      v330 = type metadata accessor for ArtworkDescriptor(0);
      *(v283 + v330[5]) = MEMORY[0x1E69E7CD0];
      v331 = v283 + v330[6];
      *v331 = 0;
      *(v331 + 8) = v326;
      *(v331 + 16) = v326;
      *(v331 + 24) = v327;
      *(v283 + v330[7]) = 1;
      v332 = (v283 + v330[8]);
      v333 = v1020;
      *v332 = v1019;
      v332[1] = v333;
      v334 = v988;
      sub_1E5DFD1CC(v1016, v988, &qword_1ED072D90, &qword_1E66040F0);
      v289 = sub_1E65D72D8();
      v290 = *(v289 - 8);
      v1021 = *(v290 + 48);
      if ((v1021)(v334, 1, v289) == 1)
      {

        sub_1E5DFE50C(v334, &qword_1ED072D90, &qword_1E66040F0);
        (*(v290 + 56))(&v329[v283], 1, 1, v289);
      }

      else
      {
        v1019 = v329;
        v561 = v939;
        sub_1E5DFD1CC(v968, v939, &qword_1ED074528, &unk_1E660F4D0);
        v562 = sub_1E65D83D8();
        v563 = *(v562 - 8);
        v564 = (*(v563 + 48))(v561, 1, v562);

        if (v564 == 1)
        {
          sub_1E5DFE50C(v561, &qword_1ED074528, &unk_1E660F4D0);
          v565 = 1;
          v566 = v943;
        }

        else
        {
          v566 = v943;
          sub_1E608EC7C(v943);
          (*(v563 + 8))(v561, v562);
          v565 = 0;
        }

        (*(v1018 + 7))(v566, v565, 1, v1028);
        v750 = v1026;
        v749 = v1027;
        v751 = v566;
        v752 = v1025;
        (*(v1027 + 104))(v1025, *MEMORY[0x1E69686E8], v1026);
        v753 = v988;
        sub_1E65D7248();
        (*(v749 + 8))(v752, v750);
        sub_1E5DFE50C(v751, &qword_1ED078A78, &qword_1E65FEF60);
        (*(v290 + 8))(v753, v289);
      }

      v754 = v328[16];
      if (v1001 <= 1u)
      {
        if (v1001)
        {
          v755 = MEMORY[0x1E699DAC8];
        }

        else
        {
          v755 = MEMORY[0x1E699DAB8];
        }
      }

      else if (v1001 == 2)
      {
        v755 = MEMORY[0x1E699DAC0];
      }

      else
      {
        if (v1001 != 3)
        {
          v801 = sub_1E65E09D8();
          v802 = *(v801 - 8);
          (*(v802 + 56))(v967, 1, 1, v801);
          (*(v802 + 104))(v283 + v754, *MEMORY[0x1E699DAB0], v801);
          goto LABEL_369;
        }

        v755 = MEMORY[0x1E699DAB0];
      }

      v803 = *v755;
      v804 = sub_1E65E09D8();
      v805 = *(v804 - 8);
      v806 = v967;
      (*(v805 + 104))(v967, v803, v804);
      (*(v805 + 56))(v806, 0, 1, v804);
      (*(v805 + 32))(v283 + v754, v806, v804);
LABEL_369:
      v792 = v962;
      v807 = sub_1E65DAE38();
      v808 = sub_1E65DAE38();
      v809 = v1022;
      if (v807 != v808)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072618, qword_1E65FBAF0);
        sub_1E65E0708();
      }

      sub_1E65E0938();
      v796 = v328[24];
      sub_1E5DFD1CC(v809, v792, &qword_1ED072D90, &qword_1E66040F0);
      if ((v1021)(v792, 1, v289) == 1)
      {
LABEL_372:
        sub_1E5DFE50C(v792, &qword_1ED072D90, &qword_1E66040F0);
        (*(v290 + 56))(v283 + v796, 1, 1, v289);
      }

      else
      {
        v810 = v941;
        sub_1E5DFD1CC(v978, v941, &qword_1ED074528, &unk_1E660F4D0);
        v811 = sub_1E65D83D8();
        v812 = *(v811 - 8);
        if ((*(v812 + 48))(v810, 1, v811) == 1)
        {
          sub_1E5DFE50C(v810, &qword_1ED074528, &unk_1E660F4D0);
          v800 = 1;
          v791 = v944;
        }

        else
        {
          v791 = v944;
          sub_1E608EC7C(v944);
          (*(v812 + 8))(v810, v811);
          v800 = 0;
        }

LABEL_376:
        (*(v1018 + 7))(v791, v800, 1, v1028);
        v814 = v1026;
        v813 = v1027;
        v815 = v1025;
        (*(v1027 + 104))(v1025, *MEMORY[0x1E69686E8], v1026);
        sub_1E65D7248();
        (*(v813 + 8))(v815, v814);
        sub_1E5DFE50C(v791, &qword_1ED078A78, &qword_1E65FEF60);
        (*(v290 + 8))(v792, v289);
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072610, &qword_1E65EB930);
      swift_storeEnumTagMultiPayload();
      v453 = sub_1E65E0948();
      return (*(*(v453 - 8) + 8))(v1023, v453);
    case 6u:
      v356 = v998;
      v357 = v997;
      v358 = v964;
      (*(v998 + 32))(v997, v1023, v964);
      v359 = v1029;
      (*(v356 + 16))(v1029, v357, v358);
      v360 = sub_1E65DAE38();
      v361 = sub_1E65DAE38();
      v362 = sub_1E65E4B48();
      v363 = 4.0;
      if (v362)
      {
        v363 = 8.0;
      }

      v364 = 16.0;
      if (v362)
      {
        v364 = 18.0;
      }

      if (v360 == v361)
      {
        v365 = v364;
      }

      else
      {
        v365 = v363;
      }

      if (v360 == v361)
      {
        v366 = 12.0;
      }

      else
      {
        v366 = 8.0;
      }

      v367 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072608, &qword_1E65EB928);
      v368 = v359 + v367[12];
      v1024 = v367[16];
      sub_1E64FB75C(v368);
      v369 = type metadata accessor for ArtworkDescriptor(0);
      *(v368 + v369[5]) = MEMORY[0x1E69E7CD0];
      v370 = v368 + v369[6];
      *v370 = 0;
      *(v370 + 8) = v365;
      *(v370 + 16) = v365;
      *(v370 + 24) = v366;
      *(v368 + v369[7]) = 1;
      v371 = (v368 + v369[8]);
      v372 = v1020;
      *v371 = v1019;
      v371[1] = v372;
      v373 = v987;
      sub_1E5DFD1CC(v1022, v987, &qword_1ED072D90, &qword_1E66040F0);
      v374 = sub_1E65D72D8();
      v375 = *(v374 - 8);
      if ((*(v375 + 48))(v373, 1, v374) == 1)
      {
        v376 = *(v356 + 8);

        v376(v357, v358);
        sub_1E5DFE50C(v373, &qword_1ED072D90, &qword_1E66040F0);
        v377 = 1;
        v378 = v1024;
      }

      else
      {
        v582 = qword_1ED071A38;

        if (v582 != -1)
        {
          swift_once();
        }

        __swift_project_value_buffer(v1028, qword_1ED096420);
        v584 = v1026;
        v583 = v1027;
        v585 = v1025;
        (*(v1027 + 104))(v1025, *MEMORY[0x1E69686E8], v1026);
        sub_1E6258850();
        v378 = v1024;
        v586 = v987;
        sub_1E65D73C8();
        (*(v583 + 8))(v585, v584);
        (*(v998 + 8))(v997, v358);
        (*(v375 + 8))(v586, v374);
        v377 = 0;
      }

      v587 = *(v375 + 56);
      v587(v359 + v378, v377, 1, v374);
      v588 = v367[20];
      v589 = v367[24];
      v587(v359 + v588, 1, 1, v374);
      v587(v359 + v589, 1, 1, v374);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072610, &qword_1E65EB930);
      return swift_storeEnumTagMultiPayload();
    case 7u:
      v291 = sub_1E65DAE38();
      v292 = sub_1E65DAE38();
      v293 = sub_1E65E4B48();
      v294 = 4.0;
      if (v293)
      {
        v294 = 8.0;
      }

      v295 = 16.0;
      if (v293)
      {
        v295 = 18.0;
      }

      if (v291 == v292)
      {
        v296 = v295;
      }

      else
      {
        v296 = v294;
      }

      if (v291 == v292)
      {
        v297 = 12.0;
      }

      else
      {
        v297 = 8.0;
      }

      v298 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0739B8, &qword_1E65EDD48);
      v299 = v1029;
      v300 = v1029 + *(v298 + 48);
      v1024 = v298;
      v301 = *(v298 + 64);
      sub_1E64FB75C(v300);
      v302 = type metadata accessor for ArtworkDescriptor(0);
      *(v300 + v302[5]) = v1013;
      v303 = v300 + v302[6];
      *v303 = 0;
      *(v303 + 8) = v296;
      *(v303 + 16) = v296;
      *(v303 + 24) = v297;
      *(v300 + v302[7]) = 1;
      v304 = (v300 + v302[8]);
      v305 = v1020;
      *v304 = v1019;
      v304[1] = v305;
      v306 = v952;
      sub_1E5DFD1CC(v1022, v952, &qword_1ED072D90, &qword_1E66040F0);
      v307 = sub_1E65D72D8();
      v308 = *(v307 - 8);
      v1022 = *(v308 + 6);
      v309 = (v1022)(v306, 1, v307);
      v1021 = v308;
      if (v309 == 1)
      {

        sub_1E5DFE50C(v306, &qword_1ED072D90, &qword_1E66040F0);
        v310 = 1;
      }

      else
      {
        v530 = qword_1EE2D7250;

        if (v530 != -1)
        {
          swift_once();
        }

        __swift_project_value_buffer(v1028, qword_1EE2EA220);
        v531 = v1026;
        v532 = v1027;
        v533 = v1025;
        (*(v1027 + 104))(v1025, *MEMORY[0x1E69686E8], v1026);
        sub_1E6258850();
        sub_1E65D73C8();
        (*(v532 + 8))(v533, v531);
        v308 = v1021;
        (*(v1021 + 1))(v306, v307);
        v310 = 0;
      }

      v534 = *(v308 + 7);
      v534(v299 + v301, v310, 1, v307);
      v535 = *(v1024 + 80);
      v536 = v992;
      sub_1E5DFD1CC(v1017, v992, &qword_1ED072D90, &qword_1E66040F0);
      v537 = (v1022)(v536, 1, v307);
      v538 = v995;
      if (v537 == 1)
      {
        sub_1E5DFE50C(v536, &qword_1ED072D90, &qword_1E66040F0);
        v539 = 1;
      }

      else
      {
        if (qword_1EE2D7248 != -1)
        {
          swift_once();
        }

        __swift_project_value_buffer(v1028, qword_1EE2EA208);
        v540 = v1026;
        v541 = v1027;
        v542 = v1025;
        (*(v1027 + 104))(v1025, *MEMORY[0x1E69686E8], v1026);
        sub_1E6258850();
        v543 = v992;
        sub_1E65D73C8();
        (*(v541 + 8))(v542, v540);
        (*(v1021 + 1))(v543, v307);
        v539 = 0;
        v538 = v995;
      }

      v534(v299 + v535, v539, 1, v307);
      v544 = *(v1024 + 96);
      sub_1E5DFD1CC(v1016, v538, &qword_1ED072D90, &qword_1E66040F0);
      if ((v1022)(v538, 1, v307) == 1)
      {
        sub_1E5DFE50C(v538, &qword_1ED072D90, &qword_1E66040F0);
        v545 = 1;
      }

      else
      {
        if (qword_1EE2D7248 != -1)
        {
          swift_once();
        }

        __swift_project_value_buffer(v1028, qword_1EE2EA208);
        v546 = v1026;
        v547 = v1027;
        v548 = v1025;
        (*(v1027 + 104))(v1025, *MEMORY[0x1E69686E8], v1026);
        sub_1E6258850();
        sub_1E65D73C8();
        (*(v547 + 8))(v548, v546);
        (*(v1021 + 1))(v538, v307);
        v545 = 0;
      }

      v534(v299 + v544, v545, 1, v307);
      v549 = *(v1024 + 128);
      v534(v299 + *(v1024 + 112), 1, 1, v307);
      v550 = type metadata accessor for ActionButtonDescriptor(0);
      (*(*(v550 - 8) + 56))(v299 + v549, 1, 1, v550);
      sub_1E65E0AC8();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072610, &qword_1E65EB930);
      swift_storeEnumTagMultiPayload();
      v453 = sub_1E65E0AD8();
      return (*(*(v453 - 8) + 8))(v1023, v453);
    case 8u:
      v383 = sub_1E65DAE38();
      v384 = sub_1E65DAE38();
      v385 = sub_1E65E4B48();
      v386 = 4.0;
      if (v385)
      {
        v386 = 8.0;
      }

      v387 = 16.0;
      if (v385)
      {
        v387 = 18.0;
      }

      if (v383 == v384)
      {
        v388 = v387;
      }

      else
      {
        v388 = v386;
      }

      if (v383 == v384)
      {
        v389 = 12.0;
      }

      else
      {
        v389 = 8.0;
      }

      v390 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072628, &qword_1E65EB940);
      v391 = v1029;
      v392 = v1029 + v390[12];
      v393 = v390[16];
      sub_1E64FB75C(v392);
      v394 = type metadata accessor for ArtworkDescriptor(0);
      *(v392 + v394[5]) = v1013;
      v395 = v392 + v394[6];
      *v395 = 0;
      *(v395 + 8) = v388;
      *(v395 + 16) = v388;
      *(v395 + 24) = v389;
      *(v392 + v394[7]) = 1;
      v396 = (v392 + v394[8]);
      v397 = v1020;
      *v396 = v1019;
      v396[1] = v397;
      v398 = v989;
      sub_1E5DFD1CC(v1022, v989, &qword_1ED072D90, &qword_1E66040F0);
      v399 = sub_1E65D72D8();
      v400 = *(v399 - 8);
      v1024 = *(v400 + 48);
      v401 = (v1024)(v398, 1, v399);
      v1018 = v390;
      if (v401 == 1)
      {

        sub_1E5DFE50C(v398, &qword_1ED072D90, &qword_1E66040F0);
        v402 = 1;
      }

      else
      {
        v626 = qword_1EE2D7250;

        if (v626 != -1)
        {
          swift_once();
        }

        __swift_project_value_buffer(v1028, qword_1EE2EA220);
        v627 = v1026;
        v628 = v1027;
        v629 = v1025;
        (*(v1027 + 104))(v1025, *MEMORY[0x1E69686E8], v1026);
        sub_1E6258850();
        v630 = v989;
        sub_1E65D73C8();
        (*(v628 + 8))(v629, v627);
        (*(v400 + 8))(v630, v399);
        v402 = 0;
        v390 = v1018;
      }

      v631 = *(v400 + 56);
      (v631)(v391 + v393, v402, 1, v399);
      v632 = v390[20];
      v633 = v993;
      sub_1E5DFD1CC(v1017, v993, &qword_1ED072D90, &qword_1E66040F0);
      v634 = (v1024)(v633, 1, v399);
      v1022 = v631;
      if (v634 == 1)
      {
        sub_1E5DFE50C(v633, &qword_1ED072D90, &qword_1E66040F0);
        v635 = 1;
      }

      else
      {
        if (qword_1EE2D7248 != -1)
        {
          swift_once();
        }

        __swift_project_value_buffer(v1028, qword_1EE2EA208);
        v637 = v1026;
        v636 = v1027;
        v638 = v1025;
        (*(v1027 + 104))(v1025, *MEMORY[0x1E69686E8], v1026);
        sub_1E6258850();
        v639 = v993;
        sub_1E65D73C8();
        (*(v636 + 8))(v638, v637);
        (*(v400 + 8))(v639, v399);
        v635 = 0;
        v390 = v1018;
        v631 = v1022;
      }

      (v631)(v391 + v632, v635, 1, v399);
      v640 = v390[24];
      v641 = v959;
      sub_1E5DFD1CC(v1016, v959, &qword_1ED072D90, &qword_1E66040F0);
      if ((v1024)(v641, 1, v399) == 1)
      {
        sub_1E5DFE50C(v641, &qword_1ED072D90, &qword_1E66040F0);
        v642 = 1;
      }

      else
      {
        if (qword_1ED0719F8 != -1)
        {
          swift_once();
        }

        __swift_project_value_buffer(v1028, qword_1ED096378);
        v644 = v1026;
        v643 = v1027;
        v645 = v1025;
        (*(v1027 + 104))(v1025, *MEMORY[0x1E69686E8], v1026);
        sub_1E6258850();
        sub_1E65D73C8();
        (*(v643 + 8))(v645, v644);
        (*(v400 + 8))(v641, v399);
        v642 = 0;
        v631 = v1022;
      }

      (v631)(v391 + v640, v642, 1, v399);
      sub_1E65E0A68();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072610, &qword_1E65EB930);
      swift_storeEnumTagMultiPayload();
      v453 = sub_1E65E0A88();
      return (*(*(v453 - 8) + 8))(v1023, v453);
    case 9u:
      v247 = sub_1E65DAE38();
      v248 = sub_1E65DAE38();
      v249 = sub_1E65E4B48();
      v250 = 4.0;
      if (v249)
      {
        v250 = 8.0;
      }

      v251 = 16.0;
      if (v249)
      {
        v251 = 18.0;
      }

      if (v247 == v248)
      {
        v252 = v251;
      }

      else
      {
        v252 = v250;
      }

      if (v247 == v248)
      {
        v253 = 12.0;
      }

      else
      {
        v253 = 8.0;
      }

      v254 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078A88, &qword_1E65FEF70);
      v255 = v1029;
      v256 = v1029 + *(v254 + 48);
      v1024 = v254;
      v257 = *(v254 + 64);
      sub_1E64FB75C(v256);
      v258 = type metadata accessor for ArtworkDescriptor(0);
      *(v256 + v258[5]) = v1013;
      v259 = v256 + v258[6];
      *v259 = 0;
      *(v259 + 8) = v252;
      *(v259 + 16) = v252;
      *(v259 + 24) = v253;
      *(v256 + v258[7]) = 1;
      v260 = (v256 + v258[8]);
      v261 = v1020;
      *v260 = v1019;
      v260[1] = v261;
      v262 = v990;
      sub_1E5DFD1CC(v1022, v990, &qword_1ED072D90, &qword_1E66040F0);
      v263 = sub_1E65D72D8();
      v264 = *(v263 - 8);
      v1022 = *(v264 + 48);
      if ((v1022)(v262, 1, v263) == 1)
      {

        sub_1E5DFE50C(v262, &qword_1ED072D90, &qword_1E66040F0);
        v265 = 1;
        v266 = v996;
      }

      else
      {
        v489 = qword_1EE2D7250;

        v266 = v996;
        if (v489 != -1)
        {
          swift_once();
        }

        __swift_project_value_buffer(v1028, qword_1EE2EA220);
        v490 = v1026;
        v491 = v1027;
        v492 = v1025;
        (*(v1027 + 104))(v1025, *MEMORY[0x1E69686E8], v1026);
        sub_1E6258850();
        v493 = v990;
        sub_1E65D73C8();
        (*(v491 + 8))(v492, v490);
        (*(v264 + 8))(v493, v263);
        v265 = 0;
      }

      v494 = *(v264 + 56);
      (v494)(v255 + v257, v265, 1, v263);
      v495 = *(v1024 + 80);
      v496 = v994;
      sub_1E5DFD1CC(v1017, v994, &qword_1ED072D90, &qword_1E66040F0);
      v497 = (v1022)(v496, 1, v263);
      v1020 = v494;
      if (v497 == 1)
      {
        sub_1E5DFE50C(v496, &qword_1ED072D90, &qword_1E66040F0);
        v498 = 1;
      }

      else
      {
        if (qword_1EE2D7248 != -1)
        {
          swift_once();
        }

        __swift_project_value_buffer(v1028, qword_1EE2EA208);
        v500 = v1026;
        v499 = v1027;
        v501 = v1025;
        (*(v1027 + 104))(v1025, *MEMORY[0x1E69686E8], v1026);
        sub_1E6258850();
        v502 = v994;
        sub_1E65D73C8();
        (*(v499 + 8))(v501, v500);
        (*(v264 + 8))(v502, v263);
        v498 = 0;
        v266 = v996;
        v494 = v1020;
      }

      (v494)(v255 + v495, v498, 1, v263);
      v503 = *(v1024 + 96);
      sub_1E5DFD1CC(v1016, v266, &qword_1ED072D90, &qword_1E66040F0);
      if ((v1022)(v266, 1, v263) == 1)
      {
        sub_1E5DFE50C(v266, &qword_1ED072D90, &qword_1E66040F0);
        v504 = 1;
      }

      else
      {
        if (qword_1ED0719F8 != -1)
        {
          swift_once();
        }

        __swift_project_value_buffer(v1028, qword_1ED096378);
        v506 = v1026;
        v505 = v1027;
        v507 = v1025;
        (*(v1027 + 104))(v1025, *MEMORY[0x1E69686E8], v1026);
        sub_1E6258850();
        sub_1E65D73C8();
        (*(v505 + 8))(v507, v506);
        (*(v264 + 8))(v266, v263);
        v504 = 0;
        v494 = v1020;
      }

      (v494)(v255 + v503, v504, 1, v263);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074530, &qword_1E65F0CA8);
      v508 = v971;
      sub_1E65DC358();
      v509 = v974;
      v510 = v973;
      sub_1E65DC448();
      (*(v972 + 8))(v508, v510);
      sub_1E65DB238();
      (*(v975 + 8))(v509, v976);
      sub_1E65E0918();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072610, &qword_1E65EB930);
      swift_storeEnumTagMultiPayload();
      v453 = sub_1E65E0928();
      return (*(*(v453 - 8) + 8))(v1023, v453);
    case 0xAu:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072618, qword_1E65FBAF0);
      sub_1E65E0678();
      if (sub_1E65E07C8())
      {
        v379 = v1028;
        v380 = v1029;
        v381 = v1018;
        if (qword_1ED071AF0 != -1)
        {
          swift_once();
        }

        v382 = qword_1ED096630;
      }

      else
      {
        v379 = v1028;
        v380 = v1029;
        v381 = v1018;
        if (qword_1EE2D7268 != -1)
        {
          swift_once();
        }

        v382 = qword_1EE2EA250;
      }

      v590 = v1022;
      v591 = v1019;
      v592 = v1020;
      v593 = __swift_project_value_buffer(v379, v382);
      (*(v381 + 2))(v139, v593, v379);
      v594 = sub_1E65DAE38();
      v595 = v594 == sub_1E65DAE38();
      sub_1E6168408(v595);
      v596 = sub_1E65DAE38();
      v597 = sub_1E65DAE38();
      v598 = sub_1E65E4B48();
      v599 = 4.0;
      if (v598)
      {
        v599 = 8.0;
      }

      v600 = 16.0;
      if (v598)
      {
        v600 = 18.0;
      }

      if (v596 == v597)
      {
        v601 = v600;
      }

      else
      {
        v601 = v599;
      }

      if (v596 == v597)
      {
        v602 = 12.0;
      }

      else
      {
        v602 = 8.0;
      }

      v603 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072620, &qword_1E65EB938);
      v604 = v381;
      v605 = v380 + v603[12];
      v1024 = v603[16];
      sub_1E64FB75C(v605);
      v606 = type metadata accessor for ArtworkDescriptor(0);
      *(v605 + v606[5]) = MEMORY[0x1E69E7CD0];
      v607 = v605 + v606[6];
      *v607 = 0;
      *(v607 + 8) = v601;
      *(v607 + 16) = v601;
      *(v607 + 24) = v602;
      *(v605 + v606[7]) = 1;
      v608 = (v605 + v606[8]);
      *v608 = v591;
      v608[1] = v592;
      v609 = v956;
      sub_1E5DFD1CC(v590, v956, &qword_1ED072D90, &qword_1E66040F0);
      v610 = sub_1E65D72D8();
      v611 = *(v610 - 8);
      if ((*(v611 + 48))(v609, 1, v610) == 1)
      {
        v612 = *(v604 + 1);

        v612(v139, v379);
        sub_1E5DFE50C(v609, &qword_1ED072D90, &qword_1E66040F0);
        v613 = 1;
      }

      else
      {
        v614 = *MEMORY[0x1E69686E8];
        v616 = v1026;
        v615 = v1027;
        v617 = *(v1027 + 104);
        v1022 = v603;
        v618 = v380;
        v619 = v1025;
        v617(v1025, v614, v1026);
        sub_1E6258850();

        sub_1E65D73C8();
        v620 = v619;
        v380 = v618;
        v603 = v1022;
        (*(v615 + 8))(v620, v616);
        (*(v604 + 1))(v139, v1028);
        (*(v611 + 8))(v609, v610);
        v613 = 0;
      }

      v621 = v1023;
      (*(v611 + 56))(v380 + v1024, v613, 1, v610);
      v622 = v603[20];
      v623 = *MEMORY[0x1E699DB20];
      v624 = sub_1E65E0B08();
      (*(*(v624 - 8) + 104))(v380 + v622, v623, v624);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072610, &qword_1E65EB930);
      swift_storeEnumTagMultiPayload();
      v625 = sub_1E65E0848();
      return (*(*(v625 - 8) + 8))(v621, v625);
    case 0xBu:
      v187 = v1029;
      MEMORY[0x1E69483B0]();
      v188 = sub_1E65DAE38();
      v189 = sub_1E65DAE38();
      v190 = sub_1E65E4B48();
      v191 = 4.0;
      if (v190)
      {
        v191 = 8.0;
      }

      v192 = 16.0;
      if (v190)
      {
        v192 = 18.0;
      }

      if (v188 == v189)
      {
        v193 = v192;
      }

      else
      {
        v193 = v191;
      }

      if (v188 == v189)
      {
        v194 = 12.0;
      }

      else
      {
        v194 = 8.0;
      }

      v195 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076BD0, &qword_1E65F7918);
      v196 = v187 + v195[12];
      v197 = v195[16];
      sub_1E64FB75C(v196);
      v198 = type metadata accessor for ArtworkDescriptor(0);
      *(v196 + v198[5]) = MEMORY[0x1E69E7CD0];
      v199 = v196 + v198[6];
      *v199 = 0;
      *(v199 + 8) = v193;
      *(v199 + 16) = v193;
      *(v199 + 24) = v194;
      *(v196 + v198[7]) = 1;
      v200 = (v196 + v198[8]);
      v201 = v1020;
      *v200 = v1019;
      v200[1] = v201;
      v202 = v954;
      sub_1E5DFD1CC(v1022, v954, &qword_1ED072D90, &qword_1E66040F0);
      v203 = sub_1E65D72D8();
      v204 = *(v203 - 8);
      v1024 = *(v204 + 6);
      v205 = (v1024)(v202, 1, v203);

      v1021 = v204;
      if (v205 == 1)
      {
        sub_1E5DFE50C(v202, &qword_1ED072D90, &qword_1E66040F0);
        v206 = 1;
      }

      else
      {
        v403 = v1015;
        sub_1E65D7338();
        sub_1E65E4528();
        sub_1E65E44D8();
        v404 = sub_1E65E4538();

        v1032 = v404;
        sub_1E608F9E4();
        sub_1E65D7358();
        v406 = v1026;
        v405 = v1027;
        v407 = v1025;
        (*(v1027 + 104))(v1025, *MEMORY[0x1E69686E8], v1026);
        sub_1E6258850();
        sub_1E65D73C8();
        (*(v405 + 8))(v407, v406);
        v408 = v403;
        v204 = v1021;
        (*(v1018 + 1))(v408, v1028);
        (*(v204 + 1))(v202, v203);
        v206 = 0;
      }

      v409 = v1017;
      v410 = *(v204 + 7);
      (v410)(v1029 + v197, v206, 1, v203);
      v411 = v195[20];
      v412 = v409;
      v413 = v958;
      sub_1E5DFD1CC(v412, v958, &qword_1ED072D90, &qword_1E66040F0);
      v414 = v1024;
      v415 = (v1024)(v413, 1, v203);
      v1022 = v410;
      if (v415 == 1)
      {
        sub_1E5DFE50C(v413, &qword_1ED072D90, &qword_1E66040F0);
        v416 = 1;
      }

      else
      {
        v417 = v1015;
        sub_1E62F8DDC(v415);
        v418 = *MEMORY[0x1E69686E8];
        v1020 = v195;
        v419 = v1026;
        v420 = v1027;
        v421 = v1025;
        (*(v1027 + 104))(v1025, v418, v1026);
        sub_1E6258850();
        sub_1E65D73C8();
        v422 = v421;
        v195 = v1020;
        v204 = v1021;
        v423 = v419;
        v410 = v1022;
        (*(v420 + 8))(v422, v423);
        v424 = v417;
        v414 = v1024;
        (*(v1018 + 1))(v424, v1028);
        (*(v204 + 1))(v413, v203);
        v416 = 0;
      }

      v425 = v1016;
      (v410)(v1029 + v411, v416, 1, v203);
      v426 = v195[24];
      v427 = v425;
      v428 = v960;
      sub_1E5DFD1CC(v427, v960, &qword_1ED072D90, &qword_1E66040F0);
      v429 = v414(v428, 1, v203);
      if (v429 == 1)
      {
        sub_1E5DFE50C(v428, &qword_1ED072D90, &qword_1E66040F0);
        v430 = 1;
      }

      else
      {
        v431 = v1015;
        sub_1E62FBF68(v429);
        v433 = v1026;
        v432 = v1027;
        v434 = v204;
        v435 = v1025;
        (*(v1027 + 104))(v1025, *MEMORY[0x1E69686E8], v1026);
        sub_1E6258850();
        sub_1E65D73C8();
        (*(v432 + 8))(v435, v433);
        (*(v1018 + 1))(v431, v1028);
        (*(v434 + 1))(v428, v203);
        v430 = 0;
      }

      v436 = v1023;
      (v1022)(v1029 + v426, v430, 1, v203);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072610, &qword_1E65EB930);
      swift_storeEnumTagMultiPayload();
      v437 = sub_1E65E09C8();
      return (*(*(v437 - 8) + 8))(v436, v437);
    case 0xCu:
      v227 = sub_1E65DAE38();
      v228 = sub_1E65DAE38();
      v229 = sub_1E65E4B48();
      v230 = 4.0;
      if (v229)
      {
        v230 = 8.0;
      }

      v231 = 16.0;
      if (v229)
      {
        v231 = 18.0;
      }

      if (v227 == v228)
      {
        v232 = v231;
      }

      else
      {
        v232 = v230;
      }

      if (v227 == v228)
      {
        v233 = 12.0;
      }

      else
      {
        v233 = 8.0;
      }

      v234 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078A98, &qword_1E65FEF80);
      v235 = v234[12];
      v236 = v1029;
      sub_1E64FB75C(v1029);
      v237 = type metadata accessor for ArtworkDescriptor(0);
      *(v236 + v237[5]) = MEMORY[0x1E69E7CD0];
      v238 = v236 + v237[6];
      *v238 = 0;
      *(v238 + 8) = v232;
      *(v238 + 16) = v232;
      *(v238 + 24) = v233;
      *(v236 + v237[7]) = 1;
      v239 = (v236 + v237[8]);
      v240 = v1020;
      *v239 = v1019;
      v239[1] = v240;
      sub_1E5DFD1CC(v1016, v113, &qword_1ED072D90, &qword_1E66040F0);
      v241 = sub_1E65D72D8();
      v242 = *(v241 - 8);
      v243 = *(v242 + 6);
      v244 = (v243)(v113, 1, v241);

      v1023 = v234;
      v1021 = v243;
      if (v244 == 1)
      {
        sub_1E5DFE50C(v113, &qword_1ED072D90, &qword_1E66040F0);
        v246 = 1;
      }

      else
      {
        v1024 = v235;
        v454 = v1015;
        sub_1E62F9720(v245);
        v455 = v1026;
        v456 = v1027;
        v457 = v242;
        v458 = v1025;
        (*(v1027 + 104))(v1025, *MEMORY[0x1E69686E8], v1026);
        sub_1E6258850();
        sub_1E65D73C8();
        v459 = v456;
        v243 = v1021;
        v460 = v458;
        v242 = v457;
        v234 = v1023;
        (*(v459 + 8))(v460, v455);
        v461 = v454;
        v235 = v1024;
        (*(v1018 + 1))(v461, v1028);
        (*(v242 + 1))(v113, v241);
        v246 = 0;
      }

      v462 = v1017;
      v463 = *(v242 + 7);
      v463(v236 + v235, v246, 1, v241);
      v464 = v234[16];
      v465 = v462;
      v466 = v951;
      sub_1E5DFD1CC(v465, v951, &qword_1ED072D90, &qword_1E66040F0);
      v467 = (v243)(v466, 1, v241);
      v1024 = v463;
      if (v467 == 1)
      {
        sub_1E5DFE50C(v466, &qword_1ED072D90, &qword_1E66040F0);
        v468 = 1;
      }

      else
      {
        v469 = v1015;
        sub_1E62F97B8();
        v470 = *MEMORY[0x1E69686E8];
        v471 = v1027;
        v472 = *(v1027 + 104);
        v473 = v1025;
        v1020 = v242;
        v474 = v1026;
        v472(v1025, v470, v1026);
        sub_1E6258850();
        sub_1E65D73C8();
        v475 = v471;
        v463 = v1024;
        v476 = v473;
        v477 = v474;
        v242 = v1020;
        v243 = v1021;
        (*(v475 + 8))(v476, v477);
        v478 = v469;
        v234 = v1023;
        (*(v1018 + 1))(v478, v1028);
        (*(v242 + 1))(v466, v241);
        v468 = 0;
      }

      v479 = v1022;
      v463(v236 + v464, v468, 1, v241);
      v480 = v234[20];
      v481 = v479;
      v482 = v955;
      sub_1E5DFD1CC(v481, v955, &qword_1ED072D90, &qword_1E66040F0);
      if ((v243)(v482, 1, v241) == 1)
      {
        sub_1E5DFE50C(v482, &qword_1ED072D90, &qword_1E66040F0);
        v483 = 1;
      }

      else
      {
        v484 = v1015;
        sub_1E62F97D0();
        v485 = v1027;
        v486 = v1025;
        v487 = v242;
        v488 = v1026;
        (*(v1027 + 104))(v1025, *MEMORY[0x1E69686E8], v1026);
        sub_1E6258850();
        sub_1E65D73C8();
        (*(v485 + 8))(v486, v488);
        (*(v1018 + 1))(v484, v1028);
        (*(v487 + 1))(v482, v241);
        v483 = 0;
      }

      (v1024)(v236 + v480, v483, 1, v241);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072610, &qword_1E65EB930);
      return swift_storeEnumTagMultiPayload();
    case 0xDu:
      v335 = sub_1E65DAE38();
      v336 = sub_1E65DAE38();
      v337 = sub_1E65E4B48();
      v338 = 4.0;
      if (v337)
      {
        v338 = 8.0;
      }

      v339 = 16.0;
      if (v337)
      {
        v339 = 18.0;
      }

      if (v335 == v336)
      {
        v340 = v339;
      }

      else
      {
        v340 = v338;
      }

      if (v335 == v336)
      {
        v341 = 12.0;
      }

      else
      {
        v341 = 8.0;
      }

      v342 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078A80, &qword_1E65FEF68);
      v343 = *(v342 + 48);
      v1023 = v342;
      v1024 = v343;
      v344 = v1029;
      sub_1E64FB75C(v1029);
      v345 = type metadata accessor for ArtworkDescriptor(0);
      *(v344 + v345[5]) = MEMORY[0x1E69E7CD0];
      v346 = v344 + v345[6];
      *v346 = 0;
      *(v346 + 8) = v340;
      *(v346 + 16) = v340;
      *(v346 + 24) = v341;
      *(v344 + v345[7]) = 1;
      v347 = (v344 + v345[8]);
      v348 = v1020;
      *v347 = v1019;
      v347[1] = v348;
      v349 = v953;
      sub_1E5DFD1CC(v1017, v953, &qword_1ED072D90, &qword_1E66040F0);
      v350 = sub_1E65D72D8();
      v351 = *(v350 - 8);
      v352 = *(v351 + 48);
      v353 = v352(v349, 1, v350);

      v354 = MEMORY[0x1E69686E8];
      if (v353 == 1)
      {
        sub_1E5DFE50C(v349, &qword_1ED072D90, &qword_1E66040F0);
        v355 = 1;
      }

      else
      {
        v567 = v349;
        v568 = v1015;
        sub_1E62FC024();
        v569 = *v354;
        v571 = v1026;
        v570 = v1027;
        v572 = v1025;
        (*(v1027 + 104))(v1025, v569, v1026);
        sub_1E6258850();
        sub_1E65D73C8();
        (*(v570 + 8))(v572, v571);
        (*(v1018 + 1))(v568, v1028);
        (*(v351 + 8))(v567, v350);
        v355 = 0;
      }

      v573 = v957;
      v574 = *(v351 + 56);
      v574(v344 + v1024, v355, 1, v350);
      v575 = v1023[16];
      sub_1E5DFD1CC(v1022, v573, &qword_1ED072D90, &qword_1E66040F0);
      if (v352(v573, 1, v350) == 1)
      {
        sub_1E5DFE50C(v573, &qword_1ED072D90, &qword_1E66040F0);
        v576 = 1;
      }

      else
      {
        v577 = v1015;
        sub_1E62FC1A8();
        v578 = *MEMORY[0x1E69686E8];
        v1024 = v574;
        v580 = v1026;
        v579 = v1027;
        v581 = v1025;
        (*(v1027 + 104))(v1025, v578, v1026);
        sub_1E6258850();
        sub_1E65D73C8();
        (*(v579 + 8))(v581, v580);
        v574 = v1024;
        (*(v1018 + 1))(v577, v1028);
        (*(v351 + 8))(v573, v350);
        v576 = 0;
      }

      v574(v344 + v575, v576, 1, v350);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072610, &qword_1E65EB930);
      return swift_storeEnumTagMultiPayload();
    default:
      (*(v1009 + 32))(v1007, v1023, v1010);
      v179 = v1028;
      if (v1000 == 7)
      {
        goto LABEL_3;
      }

      v551 = sub_1E65D9B18();
      v553 = v552;
      if (v551 == sub_1E65D9B18() && v553 == v554)
      {
        goto LABEL_212;
      }

      v692 = sub_1E65E6C18();

      if (v692)
      {
        goto LABEL_293;
      }

      v853 = sub_1E65D9B18();
      v855 = v854;
      if (v853 == sub_1E65D9B18() && v855 == v856)
      {
LABEL_212:

LABEL_293:
        (*(v1011 + 13))(v1008, *MEMORY[0x1E699DA38], v1012);
        if (qword_1EE2D7220 != -1)
        {
          swift_once();
        }

        v693 = __swift_project_value_buffer(v179, qword_1EE2EA190);
        v181 = *(v1018 + 2);
        v181(v1004, v693, v179);
        v184 = v1029;
        if (qword_1EE2D71F8 != -1)
        {
          swift_once();
        }

        v694 = __swift_project_value_buffer(v179, qword_1EE2EA130);
        v181(v1005, v694, v179);
        v182 = v1022;
        v183 = v1020;
        if (qword_1EE2D7210 != -1)
        {
          swift_once();
        }

        v186 = qword_1EE2EA160;
        goto LABEL_300;
      }

      v857 = sub_1E65E6C18();

      if (v857)
      {
        goto LABEL_293;
      }

LABEL_3:
      if (v980 == 0xFF || (v980 & 1) == 0 || ((1 << v981) & 0xF7) != 0)
      {
        (*(v1011 + 13))(v1008, *MEMORY[0x1E699DA30], v1012);
        if (qword_1EE2D7240 != -1)
        {
          swift_once();
        }

        v180 = __swift_project_value_buffer(v179, qword_1EE2EA1D8);
        v181 = *(v1018 + 2);
        v181(v1004, v180, v179);
        v182 = v1022;
        v183 = v1020;
        v184 = v1029;
        if (qword_1EE2D7228 != -1)
        {
          swift_once();
        }

        v185 = __swift_project_value_buffer(v179, qword_1EE2EA1A8);
        v181(v1005, v185, v179);
        if (qword_1EE2D7230 != -1)
        {
          swift_once();
        }

        v186 = qword_1EE2EA1C0;
LABEL_300:
        v695 = __swift_project_value_buffer(v179, v186);
        v181(v1003, v695, v179);
        goto LABEL_301;
      }

      v907 = v1011;
      v908 = MEMORY[0x1E699DA40];
      v909 = v923;
      if (v923)
      {
        v908 = MEMORY[0x1E699DA30];
      }

      v910 = v1012;
      (*(v1011 + 13))(v173, *v908, v1012);
      (*(v907 + 4))(v1008, v173, v910);
      if (v909)
      {
        v182 = v1022;
        v183 = v1020;
        if (qword_1EE2D7240 != -1)
        {
          swift_once();
        }

        v911 = qword_1EE2EA1D8;
      }

      else
      {
        v182 = v1022;
        v183 = v1020;
        if (qword_1EE2D7218 != -1)
        {
          swift_once();
        }

        v911 = qword_1EE2EA178;
      }

      v912 = __swift_project_value_buffer(v179, v911);
      v913 = v1018;
      v914 = *(v1018 + 2);
      v914(v165, v912, v179);
      v915 = *(v913 + 4);
      v915(v1004, v165, v179);
      if (v923)
      {
        v184 = v1029;
        if (qword_1EE2D7228 != -1)
        {
          swift_once();
        }

        v916 = __swift_project_value_buffer(v179, qword_1EE2EA1A8);
        v914(v162, v916, v179);
        v915(v1005, v162, v179);
        if (qword_1EE2D7230 != -1)
        {
          swift_once();
        }

        v917 = qword_1EE2EA1C0;
      }

      else
      {
        v184 = v1029;
        if (qword_1EE2D71F0 != -1)
        {
          swift_once();
        }

        v918 = __swift_project_value_buffer(v179, qword_1EE2EA118);
        v914(v162, v918, v179);
        v915(v1005, v162, v179);
        if (qword_1EE2D7208 != -1)
        {
          swift_once();
        }

        v917 = qword_1EE2EA148;
      }

      v919 = v922;
      v920 = __swift_project_value_buffer(v179, v917);
      v914(v919, v920, v179);
      v915(v1003, v919, v179);
LABEL_301:
      (*(v1009 + 16))(v184, v1007, v1010);
      v696 = sub_1E65DAE38();
      v697 = sub_1E65DAE38();
      v698 = sub_1E65E4B48();
      v699 = 4.0;
      if (v698)
      {
        v699 = 8.0;
      }

      v700 = 16.0;
      if (v698)
      {
        v700 = 18.0;
      }

      if (v696 == v697)
      {
        v701 = v700;
      }

      else
      {
        v701 = v699;
      }

      if (v696 == v697)
      {
        v702 = 12.0;
      }

      else
      {
        v702 = 8.0;
      }

      v703 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078AA8, &unk_1E65FEF90);
      v704 = v184 + v703[12];
      v705 = v703[16];
      v1024 = v703[20];
      sub_1E64FB75C(v704);
      v706 = type metadata accessor for ArtworkDescriptor(0);
      *(v704 + v706[5]) = MEMORY[0x1E69E7CD0];
      v707 = v704 + v706[6];
      *v707 = 0;
      *(v707 + 8) = v701;
      *(v707 + 16) = v701;
      *(v707 + 24) = v702;
      *(v704 + v706[7]) = 1;
      v708 = (v704 + v706[8]);
      *v708 = v1019;
      v708[1] = v183;
      (*(v1011 + 2))(v184 + v705, v1008, v1012);
      v709 = v963;
      sub_1E5DFD1CC(v182, v963, &qword_1ED072D90, &qword_1E66040F0);
      v710 = sub_1E65D72D8();
      v711 = *(v710 - 8);
      v1023 = *(v711 + 48);
      if ((v1023)(v709, 1, v710) == 1)
      {

        sub_1E5DFE50C(v709, &qword_1ED072D90, &qword_1E66040F0);
        v712 = 1;
      }

      else
      {
        v713 = v1027;
        v714 = v1025;
        v715 = v1026;
        (*(v1027 + 104))(v1025, *MEMORY[0x1E69686E8], v1026);
        sub_1E6258850();
        v1022 = v711;
        v184 = v1029;

        v711 = v1022;
        sub_1E65D73C8();
        (*(v713 + 8))(v714, v715);
        (*(v711 + 8))(v709, v710);
        v712 = 0;
      }

      v716 = v1017;
      v717 = v965;
      v718 = *(v711 + 56);
      v718(v184 + v1024, v712, 1, v710);
      v1024 = v703;
      v719 = v703[24];
      sub_1E5DFD1CC(v716, v717, &qword_1ED072D90, &qword_1E66040F0);
      v720 = v1023;
      if ((v1023)(v717, 1, v710) == 1)
      {
        sub_1E5DFE50C(v717, &qword_1ED072D90, &qword_1E66040F0);
        v721 = 1;
      }

      else
      {
        v722 = v1026;
        v723 = v1027;
        v724 = v1025;
        (*(v1027 + 104))(v1025, *MEMORY[0x1E69686E8], v1026);
        sub_1E6258850();
        sub_1E65D73C8();
        v725 = *(v723 + 8);
        v726 = v724;
        v179 = v1028;
        v184 = v1029;
        v727 = v722;
        v720 = v1023;
        v725(v726, v727);
        (*(v711 + 8))(v717, v710);
        v721 = 0;
      }

      v728 = v969;
      v718(v184 + v719, v721, 1, v710);
      v729 = *(v1024 + 112);
      sub_1E5DFD1CC(v1016, v728, &qword_1ED072D90, &qword_1E66040F0);
      if ((v720)(v728, 1, v710) == 1)
      {
        sub_1E5DFE50C(v728, &qword_1ED072D90, &qword_1E66040F0);
        v730 = 1;
      }

      else
      {
        v731 = v1026;
        v732 = v1027;
        v733 = v1025;
        (*(v1027 + 104))(v1025, *MEMORY[0x1E69686E8], v1026);
        sub_1E6258850();
        sub_1E65D73C8();
        v734 = v733;
        v184 = v1029;
        (*(v732 + 8))(v734, v731);
        (*(v711 + 8))(v728, v710);
        v730 = 0;
      }

      v735 = v1014;
      v718(v184 + v729, v730, 1, v710);
      v736 = v1024;
      v737 = v184 + *(v1024 + 128);
      v738 = v977;
      sub_1E5DFD1CC(v735, v977, &qword_1ED072638, &qword_1E65EB950);
      v739 = type metadata accessor for ActionButtonDescriptor(0);
      v740 = *(*(v739 - 8) + 48);
      if (v740(v738, 1, v739) == 1)
      {
        v741 = (v737 + *(v739 + 20));
        *v741 = 0x323232323232;
        v741[1] = 0xE600000000000000;
        type metadata accessor for ActionButtonDescriptor.Kind(0);
        swift_storeEnumTagMultiPayload();
        sub_1E65D76E8();
        v742 = *(v1018 + 1);
        v742(v1003, v179);
        v742(v1005, v179);
        v742(v1004, v179);
        (*(v1011 + 1))(v1008, v1012);
        (*(v1009 + 8))(v1007, v1010);
        v743 = v740(v738, 1, v739) == 1;
        v744 = v1002;
        if (!v743)
        {
          v745 = v1002;
          sub_1E5DFE50C(v738, &qword_1ED072638, &qword_1E65EB950);
          v744 = v745;
        }
      }

      else
      {
        v746 = *(v1018 + 1);
        v746(v1003, v179);
        v746(v1005, v179);
        v746(v1004, v179);
        (*(v1011 + 1))(v1008, v1012);
        (*(v1009 + 8))(v1007, v1010);
        sub_1E63A7DB4(v738, v737);
        v744 = v1002;
      }

      sub_1E5DFD1CC(v744, v1029 + *(v736 + 144), &qword_1ED072638, &qword_1E65EB950);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072610, &qword_1E65EB930);
      return swift_storeEnumTagMultiPayload();
  }
}