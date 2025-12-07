void *sub_227114EC8(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BABB0, &qword_2276795A8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[4 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BABB8, &qword_2276795B0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_227115068(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6, uint64_t a7)
{
  v8 = result;
  if (a3)
  {
    v9 = *(a4 + 3);
    v10 = v9 >> 1;
    if ((v9 >> 1) < a2)
    {
      if (v10 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v10 = v9 & 0xFFFFFFFFFFFFFFFELL;
      if ((v9 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v10 = a2;
      }
    }
  }

  else
  {
    v10 = a2;
  }

  v11 = *(a4 + 2);
  if (v10 <= v11)
  {
    v12 = *(a4 + 2);
  }

  else
  {
    v12 = v10;
  }

  if (v12)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v13 = swift_allocObject();
    v14 = _swift_stdlib_malloc_size(v13);
    *(v13 + 2) = v11;
    *(v13 + 3) = 2 * ((v14 - 32) / 24);
  }

  else
  {
    v13 = MEMORY[0x277D84F90];
  }

  v15 = v13 + 32;
  v16 = a4 + 32;
  if (v8)
  {
    if (v13 != a4 || v15 >= &v16[24 * v11])
    {
      memmove(v15, v16, 24 * v11);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

void *sub_2271151CC(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    v18 = v17 - 32;
    if (v17 < 32)
    {
      v18 = v17 - 25;
    }

    v16[2] = v14;
    v16[3] = 2 * (v18 >> 3);
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 8 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

void sub_2271153A0(uint64_t *a1)
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BAB90, &unk_227679588) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_227117600(v3);
  }

  v4 = v3[2];
  v5[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v5[1] = v4;
  sub_227115598(v5);
  *a1 = v3;
}

uint64_t sub_227115454(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BAB90, &unk_227679588);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_2271154C4(uint64_t a1)
{
  v3 = *(sub_2276691E0() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  sub_2276624A0();
  sub_227110638(a1, *(v1 + 16), v1 + v4);
}

void sub_227115598(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_22766D130();
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
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BAB90, &unk_227679588);
        v6 = sub_22766C380();
        *(v6 + 16) = v5;
      }

      v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BAB90, &unk_227679588) - 8);
      v8[0] = (v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80)));
      v8[1] = v5;
      sub_227115B44(v8, v9, a1, v4);
      *(v6 + 16) = 0;

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
    sub_2271156DC(0, v2, 1, a1);
  }
}

void sub_2271156DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v65 = sub_227662750();
  v8 = *(v65 - 8);
  MEMORY[0x28223BE20](v65);
  v64 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v63 = &v50 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BAB90, &unk_227679588);
  MEMORY[0x28223BE20](v12);
  v59 = &v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v62 = &v50 - v15;
  MEMORY[0x28223BE20](v16);
  v71 = &v50 - v17;
  MEMORY[0x28223BE20](v18);
  v70 = &v50 - v19;
  MEMORY[0x28223BE20](v20);
  v69 = &v50 - v22;
  v52 = a2;
  if (a3 != a2)
  {
    v23 = *a4;
    v24 = *(v21 + 72);
    v60 = (v8 + 8);
    v61 = v12;
    v25 = v23 + v24 * (a3 - 1);
    v57 = -v24;
    v58 = v23;
    v26 = a1 - a3;
    v51 = v24;
    v27 = v23 + v24 * a3;
LABEL_5:
    v55 = v25;
    v56 = a3;
    v53 = v27;
    v54 = v26;
    v66 = v26;
    while (1)
    {
      v67 = v25;
      v68 = v27;
      v28 = v69;
      sub_227115454(v27, v69);
      v29 = v70;
      sub_227115454(v25, v70);
      v30 = v28;
      v31 = v71;
      sub_227115454(v30, v71);
      v32 = *(v12 + 48);
      v33 = v63;
      sub_2276691A0();
      v34 = sub_2276691E0();
      v35 = *(*(v34 - 8) + 8);
      v35(v31 + v32, v34);
      v36 = v29;
      v37 = v62;
      sub_227115454(v36, v62);
      v38 = *(v12 + 48);
      v39 = v64;
      sub_2276691A0();
      v35(v37 + v38, v34);
      v40 = sub_2276626C0();
      v41 = *v60;
      v42 = v39;
      v12 = v61;
      v43 = v65;
      (*v60)(v42, v65);
      v41(v33, v43);
      v44 = sub_2276624A0();
      v45 = *(*(v44 - 8) + 8);
      v45(v37, v44);
      v45(v71, v44);
      v46 = v67;
      sub_226E97D1C(v70, &qword_27D7BAB90, &unk_227679588);
      v47 = v68;
      sub_226E97D1C(v69, &qword_27D7BAB90, &unk_227679588);
      if ((v40 & 1) == 0)
      {
LABEL_4:
        a3 = v56 + 1;
        v25 = v55 + v51;
        v26 = v54 - 1;
        v27 = v53 + v51;
        if (v56 + 1 == v52)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v58)
      {
        break;
      }

      v48 = v59;
      sub_227111674(v47, v59);
      swift_arrayInitWithTakeFrontToBack();
      sub_227111674(v48, v46);
      v25 = v46 + v57;
      v27 = v47 + v57;
      if (__CFADD__(v66++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_227115B44(uint64_t **a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = v4;
  v160 = a1;
  v180 = sub_227662750();
  v8 = *(v180 - 8);
  MEMORY[0x28223BE20](v180);
  v179 = &v157 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v178 = &v157 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BAB90, &unk_227679588);
  v171 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v157 = (&v157 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v14);
  v175 = &v157 - v15;
  MEMORY[0x28223BE20](v16);
  v177 = &v157 - v17;
  MEMORY[0x28223BE20](v18);
  v185 = &v157 - v19;
  MEMORY[0x28223BE20](v20);
  v187 = &v157 - v21;
  MEMORY[0x28223BE20](v22);
  v186 = &v157 - v23;
  v24 = a3[1];
  v161 = a3;
  if (v24 < 1)
  {
    v27 = MEMORY[0x277D84F90];
LABEL_96:
    v26 = *v160;
    if (!*v160)
    {
      goto LABEL_134;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_98:
      v188 = v27;
      v152 = *(v27 + 2);
      if (v152 >= 2)
      {
        do
        {
          v153 = *a3;
          if (!*a3)
          {
            goto LABEL_132;
          }

          a3 = (v152 - 1);
          v154 = *&v27[16 * v152];
          v155 = *&v27[16 * v152 + 24];
          sub_2271168E8(&v153[*(v171 + 72) * v154], &v153[*(v171 + 72) * *&v27[16 * v152 + 16]], &v153[*(v171 + 72) * v155], v26);
          if (v5)
          {
            break;
          }

          if (v155 < v154)
          {
            goto LABEL_121;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v27 = sub_2271171D0(v27);
          }

          if (v152 - 2 >= *(v27 + 2))
          {
            goto LABEL_122;
          }

          v156 = &v27[16 * v152];
          *v156 = v154;
          *(v156 + 1) = v155;
          v188 = v27;
          sub_227117144(a3);
          v27 = v188;
          v152 = *(v188 + 2);
          a3 = v161;
        }

        while (v152 > 1);
      }

LABEL_106:

      return;
    }

LABEL_128:
    v27 = sub_2271171D0(v27);
    goto LABEL_98;
  }

  v25 = v24;
  v158 = a4;
  v26 = 0;
  v176 = (v8 + 8);
  v27 = MEMORY[0x277D84F90];
  v181 = v12;
  while (1)
  {
    v28 = v26 + 1;
    v162 = v27;
    v170 = v26;
    if (v26 + 1 >= v25)
    {
      v50 = v26;
      v53 = v26 + 1;
    }

    else
    {
      v172 = v25;
      v159 = v5;
      v184 = *a3;
      v29 = v184;
      v30 = *(v171 + 72);
      v174 = v30;
      v31 = &v184[v30 * v28];
      v32 = v186;
      sub_227115454(v31, v186);
      sub_227115454(&v29[v30 * v170], v187);
      v33 = v185;
      sub_227115454(v32, v185);
      v34 = *(v12 + 48);
      v35 = v33;
      v36 = v178;
      sub_2276691A0();
      v37 = sub_2276691E0();
      v38 = *(v37 - 8);
      v39 = *(v38 + 8);
      v40 = v38 + 8;
      v39(v35 + v34, v37);
      v41 = v177;
      sub_227115454(v187, v177);
      v42 = *(v12 + 48);
      v43 = v179;
      sub_2276691A0();
      v168 = v39;
      v169 = v37;
      v167 = v40;
      v39(v41 + v42, v37);
      LODWORD(v173) = sub_2276626C0();
      v44 = *v176;
      v45 = v180;
      (*v176)(v43, v180);
      v166 = v44;
      (v44)(v36, v45);
      v46 = sub_2276624A0();
      v47 = *(v46 - 8);
      v48 = *(v47 + 8);
      v49 = v47 + 8;
      v48(v41, v46);
      v165 = v46;
      v164 = v48;
      v163 = v49;
      v48(v185, v46);
      v26 = &qword_27D7BAB90;
      sub_226E97D1C(v187, &qword_27D7BAB90, &unk_227679588);
      v50 = v170;
      sub_226E97D1C(v186, &qword_27D7BAB90, &unk_227679588);
      v51 = v50 + 2;
      v52 = &v184[v174 * (v50 + 2)];
      while (1)
      {
        v53 = v172;
        if (v172 == v51)
        {
          break;
        }

        v183 = v51;
        v184 = v52;
        v54 = v186;
        sub_227115454(v52, v186);
        v182 = v31;
        v55 = v187;
        sub_227115454(v31, v187);
        v56 = v185;
        sub_227115454(v54, v185);
        v57 = v181;
        v58 = *(v181 + 48);
        v59 = v178;
        sub_2276691A0();
        v61 = v168;
        v60 = v169;
        (v168)(v56 + v58, v169);
        v62 = v55;
        v63 = v177;
        sub_227115454(v62, v177);
        v64 = *(v57 + 48);
        v65 = v179;
        sub_2276691A0();
        v61(v63 + v64, v60);
        v66 = sub_2276626C0() & 1;
        v67 = v180;
        v68 = v166;
        (v166)(v65, v180);
        (v68)(v59, v67);
        v69 = v165;
        v70 = v164;
        v164(v63, v165);
        v70(v56, v69);
        v50 = v170;
        v26 = &qword_27D7BAB90;
        sub_226E97D1C(v187, &qword_27D7BAB90, &unk_227679588);
        sub_226E97D1C(v186, &qword_27D7BAB90, &unk_227679588);
        v51 = v183 + 1;
        v52 = &v184[v174];
        v31 = v182 + v174;
        if ((v173 & 1) != v66)
        {
          v53 = v183;
          break;
        }
      }

      v12 = v181;
      v5 = v159;
      v27 = v162;
      a3 = v161;
      if (v173)
      {
        v26 = v157;
        if (v53 < v50)
        {
          goto LABEL_125;
        }

        if (v50 < v53)
        {
          v71 = v53;
          v72 = v174 * (v53 - 1);
          v73 = v53 * v174;
          v172 = v53;
          v74 = v50 * v174;
          do
          {
            if (v50 != --v71)
            {
              v75 = *a3;
              if (!*a3)
              {
                goto LABEL_131;
              }

              sub_227111674(&v75[v74], v26);
              if (v74 < v72 || &v75[v74] >= &v75[v73])
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v74 != v72)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              sub_227111674(v26, &v75[v72]);
              v27 = v162;
            }

            ++v50;
            v72 -= v174;
            v73 -= v174;
            v74 += v174;
          }

          while (v50 < v71);
          v5 = v159;
          v12 = v181;
          v50 = v170;
          v53 = v172;
        }
      }
    }

    v76 = a3[1];
    if (v53 >= v76)
    {
      goto LABEL_32;
    }

    if (__OFSUB__(v53, v50))
    {
      goto LABEL_124;
    }

    if (v53 - v50 >= v158)
    {
LABEL_32:
      v26 = v53;
      if (v53 < v50)
      {
        goto LABEL_123;
      }

      goto LABEL_33;
    }

    if (__OFADD__(v50, v158))
    {
      goto LABEL_126;
    }

    if (v50 + v158 >= v76)
    {
      v26 = a3[1];
    }

    else
    {
      v26 = (v50 + v158);
    }

    if (v26 < v50)
    {
LABEL_127:
      __break(1u);
      goto LABEL_128;
    }

    if (v53 == v26)
    {
      goto LABEL_32;
    }

    v159 = v5;
    v124 = *a3;
    v125 = *(v171 + 72);
    v126 = *a3 + v125 * (v53 - 1);
    v173 = -v125;
    v174 = v124;
    v127 = (v50 - v53);
    v165 = v125;
    v128 = &v124[v53 * v125];
    v166 = v26;
LABEL_87:
    v172 = v53;
    v167 = v128;
    v168 = v127;
    v129 = v127;
    v169 = v126;
LABEL_88:
    v183 = v128;
    v184 = v129;
    v130 = v186;
    sub_227115454(v128, v186);
    v182 = v126;
    v131 = v187;
    sub_227115454(v126, v187);
    v132 = v130;
    v133 = v185;
    sub_227115454(v132, v185);
    v134 = *(v12 + 48);
    v135 = v178;
    sub_2276691A0();
    v136 = sub_2276691E0();
    v137 = *(*(v136 - 8) + 8);
    v137(v133 + v134, v136);
    v138 = v131;
    v139 = v177;
    sub_227115454(v138, v177);
    v140 = *(v12 + 48);
    v141 = v179;
    sub_2276691A0();
    v137(v139 + v140, v136);
    v142 = sub_2276626C0();
    v143 = *v176;
    v144 = v180;
    (*v176)(v141, v180);
    (v143)(v135, v144);
    v145 = sub_2276624A0();
    v146 = *(*(v145 - 8) + 8);
    v146(v139, v145);
    v146(v185, v145);
    sub_226E97D1C(v187, &qword_27D7BAB90, &unk_227679588);
    sub_226E97D1C(v186, &qword_27D7BAB90, &unk_227679588);
    if (v142)
    {
      break;
    }

    v12 = v181;
LABEL_86:
    v53 = v172 + 1;
    v126 = v169 + v165;
    v127 = v168 - 1;
    v128 = v167 + v165;
    v26 = v166;
    if ((v172 + 1) != v166)
    {
      goto LABEL_87;
    }

    v5 = v159;
    a3 = v161;
    v27 = v162;
    v50 = v170;
    if (v166 < v170)
    {
      goto LABEL_123;
    }

LABEL_33:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v27 = sub_2273A4F9C(0, *(v27 + 2) + 1, 1, v27);
    }

    v78 = *(v27 + 2);
    v77 = *(v27 + 3);
    v79 = v78 + 1;
    if (v78 >= v77 >> 1)
    {
      v27 = sub_2273A4F9C((v77 > 1), v78 + 1, 1, v27);
    }

    *(v27 + 2) = v79;
    v80 = &v27[16 * v78];
    *(v80 + 4) = v50;
    *(v80 + 5) = v26;
    if (!*v160)
    {
      goto LABEL_133;
    }

    if (v78)
    {
      v81 = *v160;
      while (1)
      {
        v82 = v79 - 1;
        if (v79 >= 4)
        {
          break;
        }

        if (v79 == 3)
        {
          v83 = *(v27 + 4);
          v84 = *(v27 + 5);
          v93 = __OFSUB__(v84, v83);
          v85 = v84 - v83;
          v86 = v93;
LABEL_53:
          if (v86)
          {
            goto LABEL_112;
          }

          v99 = &v27[16 * v79];
          v101 = *v99;
          v100 = *(v99 + 1);
          v102 = __OFSUB__(v100, v101);
          v103 = v100 - v101;
          v104 = v102;
          if (v102)
          {
            goto LABEL_115;
          }

          v105 = &v27[16 * v82 + 32];
          v107 = *v105;
          v106 = *(v105 + 1);
          v93 = __OFSUB__(v106, v107);
          v108 = v106 - v107;
          if (v93)
          {
            goto LABEL_118;
          }

          if (__OFADD__(v103, v108))
          {
            goto LABEL_119;
          }

          if (v103 + v108 >= v85)
          {
            if (v85 < v108)
            {
              v82 = v79 - 2;
            }

            goto LABEL_74;
          }

          goto LABEL_67;
        }

        v109 = &v27[16 * v79];
        v111 = *v109;
        v110 = *(v109 + 1);
        v93 = __OFSUB__(v110, v111);
        v103 = v110 - v111;
        v104 = v93;
LABEL_67:
        if (v104)
        {
          goto LABEL_114;
        }

        v112 = &v27[16 * v82];
        v114 = *(v112 + 4);
        v113 = *(v112 + 5);
        v93 = __OFSUB__(v113, v114);
        v115 = v113 - v114;
        if (v93)
        {
          goto LABEL_117;
        }

        if (v115 < v103)
        {
          goto LABEL_3;
        }

LABEL_74:
        v120 = v82 - 1;
        if (v82 - 1 >= v79)
        {
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
          goto LABEL_127;
        }

        if (!*a3)
        {
          goto LABEL_130;
        }

        v121 = *&v27[16 * v120 + 32];
        v122 = *&v27[16 * v82 + 40];
        sub_2271168E8(*a3 + *(v171 + 72) * v121, *a3 + *(v171 + 72) * *&v27[16 * v82 + 32], *a3 + *(v171 + 72) * v122, v81);
        if (v5)
        {
          goto LABEL_106;
        }

        if (v122 < v121)
        {
          goto LABEL_108;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v27 = sub_2271171D0(v27);
        }

        if (v120 >= *(v27 + 2))
        {
          goto LABEL_109;
        }

        v123 = &v27[16 * v120];
        *(v123 + 4) = v121;
        *(v123 + 5) = v122;
        v188 = v27;
        sub_227117144(v82);
        v27 = v188;
        v79 = *(v188 + 2);
        v12 = v181;
        if (v79 <= 1)
        {
          goto LABEL_3;
        }
      }

      v87 = &v27[16 * v79 + 32];
      v88 = *(v87 - 64);
      v89 = *(v87 - 56);
      v93 = __OFSUB__(v89, v88);
      v90 = v89 - v88;
      if (v93)
      {
        goto LABEL_110;
      }

      v92 = *(v87 - 48);
      v91 = *(v87 - 40);
      v93 = __OFSUB__(v91, v92);
      v85 = v91 - v92;
      v86 = v93;
      if (v93)
      {
        goto LABEL_111;
      }

      v94 = &v27[16 * v79];
      v96 = *v94;
      v95 = *(v94 + 1);
      v93 = __OFSUB__(v95, v96);
      v97 = v95 - v96;
      if (v93)
      {
        goto LABEL_113;
      }

      v93 = __OFADD__(v85, v97);
      v98 = v85 + v97;
      if (v93)
      {
        goto LABEL_116;
      }

      if (v98 >= v90)
      {
        v116 = &v27[16 * v82 + 32];
        v118 = *v116;
        v117 = *(v116 + 1);
        v93 = __OFSUB__(v117, v118);
        v119 = v117 - v118;
        if (v93)
        {
          goto LABEL_120;
        }

        if (v85 < v119)
        {
          v82 = v79 - 2;
        }

        goto LABEL_74;
      }

      goto LABEL_53;
    }

LABEL_3:
    v25 = a3[1];
    if (v26 >= v25)
    {
      goto LABEL_96;
    }
  }

  v147 = v184;
  if (v174)
  {
    v148 = v183;
    v149 = v175;
    sub_227111674(v183, v175);
    v12 = v181;
    v150 = v182;
    swift_arrayInitWithTakeFrontToBack();
    sub_227111674(v149, v150);
    v126 = v150 + v173;
    v128 = v148 + v173;
    v151 = __CFADD__(v147, 1);
    v129 = v147 + 1;
    if (v151)
    {
      goto LABEL_86;
    }

    goto LABEL_88;
  }

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
}

void sub_2271168E8(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v83 = sub_227662750();
  v8 = *(v83 - 8);
  MEMORY[0x28223BE20](v83);
  v82 = v72 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v81 = v72 - v11;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BAB90, &unk_227679588);
  MEMORY[0x28223BE20](v90);
  v80 = v72 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v85 = v72 - v14;
  MEMORY[0x28223BE20](v15);
  v89 = v72 - v16;
  MEMORY[0x28223BE20](v17);
  v91 = v72 - v18;
  v20 = *(v19 + 72);
  if (!v20)
  {
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v20 == -1)
  {
    goto LABEL_60;
  }

  v21 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v20 == -1)
  {
    goto LABEL_61;
  }

  v22 = (a2 - a1) / v20;
  v94 = a1;
  v93 = a4;
  if (v22 >= v21 / v20)
  {
    v24 = v21 / v20 * v20;
    if (a4 < a2 || a2 + v24 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v46 = a4 + v24;
    if (v24 >= 1)
    {
      v47 = -v20;
      v74 = (v8 + 8);
      v75 = -v20;
      v48 = v46;
      v86 = a4;
      v87 = a1;
      v49 = v89;
      while (2)
      {
        while (1)
        {
          v72[0] = v46;
          v50 = a2 + v47;
          v88 = a2 + v47;
          v76 = a2;
          while (1)
          {
            if (a2 <= a1)
            {
              v94 = a2;
              v92 = v72[0];
              goto LABEL_58;
            }

            v73 = v46;
            v84 = a3 + v47;
            v52 = v48 + v47;
            v77 = (v48 + v47);
            v53 = v91;
            v79 = a3;
            sub_227115454(v52, v91);
            sub_227115454(v50, v49);
            v54 = v53;
            v55 = v85;
            sub_227115454(v54, v85);
            v56 = v90;
            v57 = *(v90 + 48);
            v58 = v81;
            sub_2276691A0();
            v59 = sub_2276691E0();
            v60 = *(v59 - 8);
            v78 = v48;
            v61 = *(v60 + 8);
            v61(v55 + v57, v59);
            v62 = v80;
            sub_227115454(v49, v80);
            v63 = *(v56 + 48);
            v64 = v82;
            sub_2276691A0();
            v61(v62 + v63, v59);
            v65 = sub_2276626C0();
            v66 = *v74;
            v67 = v83;
            (*v74)(v64, v83);
            v66(v58, v67);
            v68 = sub_2276624A0();
            v69 = *(*(v68 - 8) + 8);
            v69(v62, v68);
            v69(v85, v68);
            sub_226E97D1C(v49, &qword_27D7BAB90, &unk_227679588);
            sub_226E97D1C(v91, &qword_27D7BAB90, &unk_227679588);
            if (v65)
            {
              break;
            }

            v70 = v77;
            v46 = v77;
            a3 = v84;
            if (v79 < v78 || v84 >= v78)
            {
              swift_arrayInitWithTakeFrontToBack();
              a1 = v87;
              v50 = v88;
              v47 = v75;
            }

            else
            {
              a1 = v87;
              v50 = v88;
              v47 = v75;
              if (v79 != v78)
              {
                swift_arrayInitWithTakeBackToFront();
              }
            }

            v48 = v46;
            v51 = v70 > v86;
            a2 = v76;
            if (!v51)
            {
              goto LABEL_56;
            }
          }

          v48 = v78;
          a3 = v84;
          v71 = v86;
          if (v79 < v76 || v84 >= v76)
          {
            break;
          }

          a1 = v87;
          a2 = v88;
          v46 = v73;
          v47 = v75;
          if (v79 != v76)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          if (v48 <= v71)
          {
            goto LABEL_56;
          }
        }

        a2 = v88;
        swift_arrayInitWithTakeFrontToBack();
        a1 = v87;
        v46 = v73;
        v47 = v75;
        if (v48 > v71)
        {
          continue;
        }

        break;
      }
    }

LABEL_56:
    v94 = a2;
    v92 = v46;
  }

  else
  {
    v23 = v22 * v20;
    if (a4 < a1 || a1 + v23 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v79 = a4 + v23;
    v92 = a4 + v23;
    if (v23 >= 1 && a2 < a3)
    {
      v77 = (v8 + 8);
      v78 = v20;
      v84 = a3;
      do
      {
        v86 = a4;
        v87 = a1;
        v88 = a2;
        v26 = v91;
        sub_227115454(a2, v91);
        v27 = v89;
        sub_227115454(a4, v89);
        v28 = v85;
        sub_227115454(v26, v85);
        v29 = v90;
        v30 = *(v90 + 48);
        v31 = v81;
        sub_2276691A0();
        v32 = sub_2276691E0();
        v33 = *(*(v32 - 8) + 8);
        v33(v28 + v30, v32);
        v34 = v27;
        v35 = v80;
        sub_227115454(v34, v80);
        v36 = *(v29 + 48);
        v37 = v82;
        sub_2276691A0();
        v33(v35 + v36, v32);
        v38 = sub_2276626C0();
        v39 = *v77;
        v40 = v83;
        (*v77)(v37, v83);
        v39(v31, v40);
        v41 = sub_2276624A0();
        v42 = *(*(v41 - 8) + 8);
        v42(v35, v41);
        v42(v28, v41);
        sub_226E97D1C(v89, &qword_27D7BAB90, &unk_227679588);
        sub_226E97D1C(v91, &qword_27D7BAB90, &unk_227679588);
        if (v38)
        {
          v43 = v78;
          v44 = v87;
          a2 = v88 + v78;
          a4 = v86;
          if (v87 < v88 || v87 >= a2)
          {
            swift_arrayInitWithTakeFrontToBack();
            v45 = v84;
          }

          else
          {
            v45 = v84;
            if (v87 != v88)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }
        }

        else
        {
          v44 = v87;
          a2 = v88;
          v43 = v78;
          a4 = v86 + v78;
          if (v87 < v86 || v87 >= a4)
          {
            swift_arrayInitWithTakeFrontToBack();
            v45 = v84;
          }

          else
          {
            v45 = v84;
            if (v87 != v86)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v93 = a4;
        }

        a1 = v44 + v43;
        v94 = a1;
      }

      while (a4 < v79 && a2 < v45);
    }
  }

LABEL_58:
  sub_227117284(&v94, &v93, &v92, &qword_27D7BAB90, &unk_227679588);
}

uint64_t sub_227117144(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_2271171D0(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_227117284(unint64_t *a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *a3;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v9 = *(*(result - 8) + 72);
  if (!v9)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v7 - v6 == 0x8000000000000000 && v9 == -1)
  {
    goto LABEL_17;
  }

  if (v5 < v6 || v5 >= v6 + (v7 - v6) / v9 * v9)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v5 != v6)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

uint64_t sub_227117414(unint64_t *a1, unint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v4 = *a1;
  v5 = *a2;
  v6 = *a3;
  result = a4(0);
  v8 = *(*(result - 8) + 72);
  if (!v8)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v6 - v5 == 0x8000000000000000 && v8 == -1)
  {
    goto LABEL_17;
  }

  if (v4 < v5 || v4 >= v5 + (v6 - v5) / v8 * v8)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v4 != v5)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

char *sub_2271174FC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BABA0, &qword_227679598);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

uint64_t sub_227117ADC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_227117B24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

unint64_t sub_227117B8C()
{
  result = qword_27D7BB290;
  if (!qword_27D7BB290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BB290);
  }

  return result;
}

uint64_t sub_227117BE0(uint64_t a1, unint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v21 = a6;
  v12 = sub_22766A100();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_226F5E0B4(a1, a2);
  sub_227117ADC(&qword_27D7BAB58, MEMORY[0x277D4F440], MEMORY[0x277D4F438]);
  result = sub_2276683D0();
  if (!v6)
  {
    v17 = __swift_project_boxed_opaque_existential_0(a3, a3[3]);
    v18 = sub_226FC5B44(a4, *v17, v17[1], *(v17 + 16), v17[3], a4, *(a5 + 16), v21);
    v19 = qword_2813B2078;
    swift_beginAccess();
    (*(v13 + 24))(v18 + v19, v15, v12);
    swift_endAccess();
    sub_226FDDB10();
    (*(v13 + 8))(v15, v12);
  }

  return result;
}

uint64_t sub_227117DCC()
{
  v1 = v0;
  v2 = sub_22766B390();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A730();
  sub_22766B370();
  (*(v3 + 8))(v5, v2);
  __swift_project_boxed_opaque_existential_0((v1 + 56), *(v1 + 80));
  v6 = swift_allocObject();
  swift_weakInit();

  sub_226F777E0(sub_227118E30, v6);

  __swift_project_boxed_opaque_existential_0((v1 + 56), *(v1 + 80));
  v7 = swift_allocObject();
  swift_weakInit();

  sub_226F77804(sub_227118E38, v7);

  __swift_project_boxed_opaque_existential_0((v1 + 56), *(v1 + 80));
  v8 = swift_allocObject();
  swift_weakInit();

  sub_226F778B8(sub_227118E40, v8);

  __swift_project_boxed_opaque_existential_0((v1 + 56), *(v1 + 80));
  v9 = swift_allocObject();
  swift_weakInit();

  sub_226F7784C(sub_227118E48, v9);

  __swift_project_boxed_opaque_existential_0((v1 + 56), *(v1 + 80));
  v10 = swift_allocObject();
  swift_weakInit();

  sub_226F77870(sub_227118E50, v10);

  __swift_project_boxed_opaque_existential_0((v1 + 56), *(v1 + 80));
  v11 = swift_allocObject();
  swift_weakInit();

  sub_226F77894(sub_227118E58, v11);

  __swift_project_boxed_opaque_existential_0((v1 + 56), *(v1 + 80));
  v12 = swift_allocObject();
  swift_weakInit();

  sub_226F77828(sub_227118E60, v12);

  __swift_project_boxed_opaque_existential_0((v1 + 56), *(v1 + 80));
  v13 = swift_allocObject();
  swift_weakInit();

  sub_226F778DC(sub_227118E68, v13);
}

uint64_t sub_2271181EC(uint64_t a1)
{
  v1 = sub_22766B390();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_226E91B50(result + 16, v6);

    __swift_project_boxed_opaque_existential_0(v6, v6[3]);
    sub_22766A730();
    sub_22766B370();
    (*(v2 + 8))(v4, v1);
    swift_getObjectType();
    sub_227119068();
    sub_2276699D0();
    return __swift_destroy_boxed_opaque_existential_0(v6);
  }

  return result;
}

uint64_t sub_227118368(uint64_t a1)
{
  v1 = sub_22766B390();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_226E91B50(result + 16, v6);

    __swift_project_boxed_opaque_existential_0(v6, v6[3]);
    sub_22766A730();
    sub_22766B370();
    (*(v2 + 8))(v4, v1);
    swift_getObjectType();
    sub_227119014();
    sub_2276699D0();
    return __swift_destroy_boxed_opaque_existential_0(v6);
  }

  return result;
}

uint64_t sub_2271184E4(uint64_t a1)
{
  v1 = sub_22766B390();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_226E91B50(result + 16, v6);

    __swift_project_boxed_opaque_existential_0(v6, v6[3]);
    sub_22766A730();
    sub_22766B370();
    (*(v2 + 8))(v4, v1);
    swift_getObjectType();
    sub_227118FC0();
    sub_2276699D0();
    return __swift_destroy_boxed_opaque_existential_0(v6);
  }

  return result;
}

uint64_t sub_227118660(uint64_t a1)
{
  v1 = sub_22766B390();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_226E91B50(result + 16, v6);

    __swift_project_boxed_opaque_existential_0(v6, v6[3]);
    sub_22766A730();
    sub_22766B370();
    (*(v2 + 8))(v4, v1);
    swift_getObjectType();
    sub_227118F6C();
    sub_2276699D0();
    return __swift_destroy_boxed_opaque_existential_0(v6);
  }

  return result;
}

uint64_t sub_2271187DC(uint64_t a1)
{
  v1 = sub_22766B390();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_226E91B50(result + 16, v6);

    __swift_project_boxed_opaque_existential_0(v6, v6[3]);
    sub_22766A730();
    sub_22766B370();
    (*(v2 + 8))(v4, v1);
    swift_getObjectType();
    sub_227118F18();
    sub_2276699D0();
    return __swift_destroy_boxed_opaque_existential_0(v6);
  }

  return result;
}

uint64_t sub_227118958(uint64_t a1)
{
  v1 = sub_22766B390();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_226E91B50(result + 16, v6);

    __swift_project_boxed_opaque_existential_0(v6, v6[3]);
    sub_22766A730();
    sub_22766B370();
    (*(v2 + 8))(v4, v1);
    swift_getObjectType();
    sub_227118EC4();
    sub_2276699D0();
    return __swift_destroy_boxed_opaque_existential_0(v6);
  }

  return result;
}

uint64_t sub_227118AD4(uint64_t a1)
{
  v1 = sub_22766B390();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_226E91B50(result + 16, v6);

    __swift_project_boxed_opaque_existential_0(v6, v6[3]);
    sub_22766A730();
    sub_22766B370();
    (*(v2 + 8))(v4, v1);
    swift_getObjectType();
    sub_227118E70();
    sub_2276699D0();
    return __swift_destroy_boxed_opaque_existential_0(v6);
  }

  return result;
}

uint64_t sub_227118C50(uint64_t a1)
{
  v1 = sub_22766B390();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_226E91B50(result + 16, v6);

    __swift_project_boxed_opaque_existential_0(v6, v6[3]);
    sub_22766A730();
    sub_22766B370();
    (*(v2 + 8))(v4, v1);
    swift_getObjectType();
    sub_226FFDCDC();
    sub_2276699D0();
    return __swift_destroy_boxed_opaque_existential_0(v6);
  }

  return result;
}

uint64_t sub_227118DCC()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  __swift_destroy_boxed_opaque_existential_0((v0 + 56));

  return swift_deallocClassInstance();
}

unint64_t sub_227118E70()
{
  result = qword_28139DEB0;
  if (!qword_28139DEB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28139DEB0);
  }

  return result;
}

unint64_t sub_227118EC4()
{
  result = qword_28139D3B0;
  if (!qword_28139D3B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28139D3B0);
  }

  return result;
}

unint64_t sub_227118F18()
{
  result = qword_28139D798;
  if (!qword_28139D798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28139D798);
  }

  return result;
}

unint64_t sub_227118F6C()
{
  result = qword_28139D690;
  if (!qword_28139D690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28139D690);
  }

  return result;
}

unint64_t sub_227118FC0()
{
  result = qword_28139DB40;
  if (!qword_28139DB40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28139DB40);
  }

  return result;
}

unint64_t sub_227119014()
{
  result = qword_28139D3A8;
  if (!qword_28139D3A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28139D3A8);
  }

  return result;
}

unint64_t sub_227119068()
{
  result = qword_28139D3A0;
  if (!qword_28139D3A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28139D3A0);
  }

  return result;
}

void *XPCClientZoneMonitor.__allocating_init(reporter:eventHub:)(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = a1[3];
  v8 = a1[4];
  v9 = __swift_mutable_project_boxed_opaque_existential_1(a1, v7);
  ObjectType = swift_getObjectType();
  v11 = sub_227119584(v9, a2, v3, v7, ObjectType, v8, a3);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v11;
}

void *XPCClientZoneMonitor.init(reporter:eventHub:)(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = a1[3];
  v8 = a1[4];
  v9 = __swift_mutable_project_boxed_opaque_existential_1(a1, v7);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v12, v10);
  ObjectType = swift_getObjectType();
  v15 = sub_227119424(v12, a2, v3, v7, ObjectType, v8, a3);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v15;
}

uint64_t sub_227119264(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC8E0, &qword_2276784C0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v13 - v3;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v6 = result;
    v7 = sub_227669670();
    if (v8)
    {
      v9 = v7;
      v10 = v8;
      v11 = sub_22766C4B0();
      (*(*(v11 - 8) + 56))(v4, 1, 1, v11);
      v12 = swift_allocObject();
      v12[2] = 0;
      v12[3] = 0;
      v12[4] = v6;
      v12[5] = v9;
      v12[6] = v10;
      sub_2272CA940(0, 0, v4, &unk_227679FD8, v12);
    }
  }

  return result;
}

void *XPCClientZoneMonitor.deinit()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  swift_unknownObjectRelease();

  return v0;
}

uint64_t XPCClientZoneMonitor.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

void *sub_227119424(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15[3] = a4;
  v15[4] = a6;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v15);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_0, a1, a4);
  sub_226E91B50(v15, (a3 + 2));
  a3[7] = a2;
  a3[8] = a7;
  sub_227669B50();
  swift_allocObject();
  swift_unknownObjectRetain_n();
  a3[9] = sub_227669B40();
  sub_227669680();
  swift_allocObject();
  swift_weakInit();
  sub_2276699F0();

  __swift_destroy_boxed_opaque_existential_0(v14);
  __swift_destroy_boxed_opaque_existential_0(v15);
  return a3;
}

void *sub_227119584(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = *(a4 - 8);
  MEMORY[0x28223BE20](a1);
  v15 = &v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_allocObject();
  (*(v13 + 16))(v15, a1, a4);
  return sub_227119424(v15, a2, v16, a4, a5, a6, a7);
}

void sub_227119714(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_227662750();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = v24 - v9;
  v12 = MEMORY[0x28223BE20](v11);
  v14 = v24 - v13;
  v15 = [a1 tipIdentifier];
  if (v15)
  {
    v24[3] = a2;
    v16 = v15;
    v24[2] = sub_22766C000();

    v17 = [a1 date];
    if (v17)
    {
      v18 = v17;
      sub_227662710();

      (*(v5 + 32))(v14, v10, v4);
      v19 = [a1 journalIdentifier];
      if (v19)
      {
        v20 = v19;
        sub_22766C000();
        v24[1] = v21;

        (*(v5 + 16))(v7, v14, v4);
        [a1 elapsedTime];
        [a1 totalTime];
        sub_227665080();

        (*(v5 + 8))(v14, v4);
        return;
      }

      (*(v5 + 8))(v14, v4);
    }

    else
    {
    }
  }

  v22 = sub_227664DD0();
  sub_22711A10C(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
  swift_allocError();
  (*(*(v22 - 8) + 104))(v23, *MEMORY[0x277D51028], v22);
  swift_willThrow();
}

void *static CatalogTipJournal.representativeSamples()()
{
  v30 = sub_227662750();
  v22 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v29 = &v21 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB298, &qword_22767A038);
  v1 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v3 = &v21 - v2;
  v27 = sub_2276650A0();
  v4 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22766C090();
  v25 = sub_227662630();
  v8 = sub_22766C090();
  sub_226F5D274();
  v9 = sub_22766BE70();
  v10 = sub_22766BE70();
  v45 = v9;
  v46[0] = v25;
  v46[1] = v46;
  v46[2] = &v45;
  v43 = v7;
  v44 = v8;
  v46[3] = &v44;
  v46[4] = &v43;
  v42 = v10;
  v46[5] = &v42;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8CF0, &qword_227671E48);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8CF8, &qword_227671E50);
  v38 = v11;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B84E0, &qword_22767C6B0);
  v40 = v39;
  v41 = v11;
  v32 = sub_226F5BF60(&qword_27D7B8D10, &qword_27D7B8CF0, &qword_227671E48);
  v12 = sub_226F5BF60(&qword_27D7B8D18, &qword_27D7B8CF8, &qword_227671E50);
  v33 = v12;
  v34 = sub_226F5BF60(&qword_27D7B8500, &qword_27D7B84E0, &qword_22767C6B0);
  v35 = v34;
  v36 = v12;
  v13 = sub_2276638E0();

  v14 = *(v13 + 16);
  if (v14)
  {
    v31 = MEMORY[0x277D84F90];
    result = sub_226F1F848(0, v14, 0);
    v16 = 0;
    v17 = v31;
    v23 = v13 + ((*(v1 + 80) + 32) & ~*(v1 + 80));
    v22 += 2;
    v21 = v4 + 32;
    v26 = v1;
    v25 = v13;
    v24 = v14;
    v18 = v29;
    while (v16 < *(v13 + 16))
    {
      sub_227119FDC(v23 + *(v1 + 72) * v16, v3);
      (*v22)(v18, v3, v30);

      sub_227665080();
      sub_22711A04C(v3);
      v31 = v17;
      v20 = *(v17 + 16);
      v19 = *(v17 + 24);
      if (v20 >= v19 >> 1)
      {
        sub_226F1F848((v19 > 1), v20 + 1, 1);
        v17 = v31;
      }

      ++v16;
      *(v17 + 16) = v20 + 1;
      result = (*(v4 + 32))(v17 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v20, v6, v27);
      v1 = v26;
      v13 = v25;
      if (v24 == v16)
      {

        return v17;
      }
    }

    __break(1u);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return result;
}

uint64_t sub_227119FDC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB298, &qword_22767A038);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22711A04C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB298, &qword_22767A038);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22711A0B4(uint64_t a1)
{
  result = sub_22711A10C(&qword_2813A5730, MEMORY[0x277D51330], &protocol conformance descriptor for CatalogTipJournal);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_22711A10C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id sub_22711A154(void *a1)
{
  v2 = sub_227662750();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_227665050();
  v6 = sub_22766BFD0();

  [a1 setTipIdentifier_];

  sub_227665070();
  v7 = sub_2276626A0();
  (*(v3 + 8))(v5, v2);
  [a1 setDate_];

  sub_227665060();
  v8 = sub_22766BFD0();

  [a1 setJournalIdentifier_];

  sub_227665040();
  [a1 setElapsedTime_];
  sub_227665090();
  return [a1 setTotalTime_];
}

uint64_t sub_22711A2EC()
{
  v1 = v0;
  v2 = sub_22766B390();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A6C0();
  sub_22766B370();
  (*(v3 + 8))(v5, v2);
  v6 = *(v1 + 32);
  v7 = *(v6 + 16);
  if (v7)
  {

    v8 = 32;
    do
    {
      notify_cancel(*(v6 + v8));
      v8 += 4;
      --v7;
    }

    while (v7);
  }

  swift_unknownObjectRelease();

  return v1;
}

uint64_t sub_22711A424()
{
  sub_22711A2EC();

  return swift_deallocClassInstance();
}

void sub_22711A47C(unsigned __int8 *a1, uint64_t a2)
{
  aBlock[6] = *MEMORY[0x277D85DE8];
  v5 = sub_22766B390();
  MEMORY[0x28223BE20](v5);
  v7 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v38 - v11;
  v13 = *a1;
  if (v13 > 1)
  {
    if (v13 != 2)
    {
      return;
    }

    v39 = v10;
    v40 = v9;
    v41 = v2;
    v15 = "AssetPreferencesObserver.swift";
    v14 = 0xD00000000000002ELL;
  }

  else
  {
    v39 = v10;
    v40 = v9;
    v41 = v2;
    if (v13)
    {
      v14 = 0xD00000000000002BLL;
    }

    else
    {
      v14 = 0xD000000000000027;
    }

    if (v13)
    {
      v15 = "ncesChangedNotification";
    }

    else
    {
      v15 = "PreferencesChangedNotification";
    }
  }

  v16 = v15 | 0x8000000000000000;
  out_token = -1;
  sub_226EA1CF4();

  v17 = sub_22766C950();
  v18 = swift_allocObject();
  swift_weakInit();
  v19 = swift_allocObject();
  *(v19 + 16) = v14;
  *(v19 + 24) = v16;
  *(v19 + 32) = v18;
  *(v19 + 40) = v13;
  aBlock[4] = sub_22711AD1C;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2275D18A0;
  aBlock[3] = &block_descriptor_15;
  v20 = _Block_copy(aBlock);

  v21 = sub_22766C0B0();

  v22 = notify_register_dispatch((v21 + 32), &out_token, v17, v20);

  _Block_release(v20);

  if (v22 || out_token == -1)
  {
    sub_22766A6C0();

    v28 = sub_22766B380();
    v29 = sub_22766C890();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      aBlock[0] = v31;
      *v30 = 136446466;
      v32 = sub_226E97AE8(v14, v16, aBlock);

      *(v30 + 4) = v32;
      *(v30 + 12) = 1026;
      *(v30 + 14) = v22;
      _os_log_impl(&dword_226E8E000, v28, v29, "[AssetPreferencesObserver] Error registering for %{public}s, with status: %{public}u", v30, 0x12u);
      __swift_destroy_boxed_opaque_existential_0(v31);
      MEMORY[0x22AA9A450](v31, -1, -1);
      MEMORY[0x22AA9A450](v30, -1, -1);
    }

    else
    {
    }

    (*(v39 + 8))(v7, v40);
  }

  else
  {
    sub_22766A6C0();

    v23 = sub_22766B380();
    v24 = sub_22766C8B0();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      aBlock[0] = v26;
      *v25 = 136446210;
      v27 = sub_226E97AE8(v14, v16, aBlock);

      *(v25 + 4) = v27;
      _os_log_impl(&dword_226E8E000, v23, v24, "[AssetPreferencesObserver] Started observing %{public}s", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v26);
      MEMORY[0x22AA9A450](v26, -1, -1);
      MEMORY[0x22AA9A450](v25, -1, -1);
    }

    else
    {
    }

    (*(v39 + 8))(v12, v40);
    v33 = out_token;
    v34 = *(a2 + 32);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(a2 + 32) = v34;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v34 = sub_2273A6784(0, *(v34 + 2) + 1, 1, v34);
      *(a2 + 32) = v34;
    }

    v37 = *(v34 + 2);
    v36 = *(v34 + 3);
    if (v37 >= v36 >> 1)
    {
      v34 = sub_2273A6784((v36 > 1), v37 + 1, 1, v34);
    }

    *(v34 + 2) = v37 + 1;
    *&v34[4 * v37 + 32] = v33;
    *(a2 + 32) = v34;
  }
}

uint64_t sub_22711A9C0(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, int a5)
{
  LODWORD(v5) = a5;
  v8 = sub_22766B390();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A6C0();

  v12 = sub_22766B380();
  v13 = sub_22766C8B0();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v18 = v5;
    v5 = v14;
    v15 = swift_slowAlloc();
    v20[0] = v15;
    *v5 = 136315138;
    *(v5 + 4) = sub_226E97AE8(a2, a3, v20);
    _os_log_impl(&dword_226E8E000, v12, v13, "[AssetPreferencesObserver] Received %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v15);
    MEMORY[0x22AA9A450](v15, -1, -1);
    v16 = v5;
    LOBYTE(v5) = v18;
    MEMORY[0x22AA9A450](v16, -1, -1);
  }

  (*(v9 + 8))(v11, v8);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_unknownObjectRetain();

    swift_getObjectType();
    v19 = v5;
    sub_22711AD2C();
    sub_2276699D0();
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_22711ABE8(uint64_t a1, uint64_t a2)
{
  v2 = objc_opt_self();
  v3 = [v2 standardUserDefaults];
  v4 = sub_22766BFD0();
  v5 = [v3 objectForKey_];

  if (v5)
  {
    sub_22766CC20();
    swift_unknownObjectRelease();
    sub_226F04970(&v10, v11);
    sub_226EBC888(v11);
    v6 = [v2 standardUserDefaults];
    v7 = sub_22766BFD0();
    v8 = [v6 BOOLForKey_];
  }

  else
  {
    memset(v11, 0, sizeof(v11));
    sub_226EBC888(v11);
    return 1;
  }

  return v8;
}

unint64_t sub_22711AD2C()
{
  result = qword_28139FA00;
  if (!qword_28139FA00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28139FA00);
  }

  return result;
}

void sub_22711AD90(unint64_t a1, uint64_t *a2)
{
  v4 = sub_227665100();
  v38 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  isUniquelyReferenced_nonNull_native = v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8.n128_f64[0] = MEMORY[0x28223BE20](v7);
  v37 = v31 - v9;
  if (a1 >> 62)
  {
LABEL_26:
    v10 = sub_22766CD20();
    if (v10)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v10 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v10)
    {
LABEL_3:
      v11 = 0;
      v35 = a1 & 0xFFFFFFFFFFFFFF8;
      v36 = a1 & 0xC000000000000001;
      v39 = (v38 + 32);
      v31[2] = v38 + 40;
      v32 = v10;
      v33 = a2;
      v34 = a1;
      do
      {
        if (v36)
        {
          v13 = MEMORY[0x22AA991A0](v11, a1, v8);
        }

        else
        {
          if (v11 >= *(v35 + 16))
          {
            goto LABEL_22;
          }

          v13 = *(a1 + 8 * v11 + 32);
        }

        v14 = v13;
        if (__OFADD__(v11, 1))
        {
          __break(1u);
LABEL_22:
          __break(1u);
LABEL_23:
          __break(1u);
LABEL_24:
          __break(1u);
LABEL_25:
          __break(1u);
          goto LABEL_26;
        }

        v15 = [v13 objectID];
        if (([v14 activityType] & 0x80000000) != 0)
        {
          goto LABEL_23;
        }

        v40 = v11 + 1;
        [v14 activeCalorieRate];
        v41 = v14;
        [v14 basalCalorieRate];
        v16 = v37;
        sub_2276650B0();
        v17 = *v39;
        v18 = isUniquelyReferenced_nonNull_native;
        v19 = v16;
        v20 = v4;
        (*v39)(isUniquelyReferenced_nonNull_native, v19, v4);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v42 = *a2;
        a1 = v42;
        v4 = sub_226F3A030(v15);
        v22 = *(a1 + 16);
        v23 = (v21 & 1) == 0;
        v24 = v22 + v23;
        if (__OFADD__(v22, v23))
        {
          goto LABEL_24;
        }

        a2 = v21;
        if (*(a1 + 24) >= v24)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_226FF3DC0();
          }
        }

        else
        {
          sub_226FEAECC(v24, isUniquelyReferenced_nonNull_native);
          v25 = sub_226F3A030(v15);
          if ((a2 & 1) != (v26 & 1))
          {
            sub_226ED9864();
            sub_22766D220();
            __break(1u);
            return;
          }

          v4 = v25;
        }

        isUniquelyReferenced_nonNull_native = v18;
        a1 = v42;
        if (a2)
        {
          v12 = *(v42 + 56) + *(v38 + 72) * v4;
          v4 = v20;
          (*(v38 + 40))(v12, v18, v20);
        }

        else
        {
          *(v42 + 8 * (v4 >> 6) + 64) |= 1 << v4;
          *(*(a1 + 48) + 8 * v4) = v15;
          v27 = *(a1 + 56) + *(v38 + 72) * v4;
          v4 = v20;
          v17(v27, v18, v20);
          v28 = *(a1 + 16);
          v29 = __OFADD__(v28, 1);
          v30 = v28 + 1;
          if (v29)
          {
            goto LABEL_25;
          }

          *(a1 + 16) = v30;
        }

        a2 = v33;
        *v33 = a1;

        ++v11;
        a1 = v34;
      }

      while (v40 != v32);
    }
  }
}

void sub_22711B134(unint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB920, &unk_227672480);
  v4.n128_f64[0] = MEMORY[0x28223BE20](v3 - 8);
  v6 = &v15 - v5;
  if (a1 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_22766CD20())
  {
    v8 = 0;
    v17 = a1 & 0xC000000000000001;
    v16 = a1 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v17)
      {
        v9 = MEMORY[0x22AA991A0](v8, a1, v4);
      }

      else
      {
        if (v8 >= *(v16 + 16))
        {
          goto LABEL_15;
        }

        v9 = *(a1 + 8 * v8 + 32);
      }

      v10 = v9;
      v11 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      v12 = [v9 objectID];
      v13 = v10;
      sub_2275ED4C0(v13, v6);
      if (v1)
      {

        return;
      }

      v14 = sub_2276638D0();
      (*(*(v14 - 8) + 56))(v6, 0, 1, v14);
      sub_227363F34(v6, v12);

      ++v8;
      if (v11 == i)
      {
        return;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }
}

void sub_22711B300(unint64_t a1, uint64_t *a2, uint64_t (*a3)(void), void (*a4)(void), void (*a5)(char *, id, uint64_t))
{
  v29 = a5;
  v31 = a4;
  v8 = v5;
  v26 = a2;
  v28 = a3(0);
  v10 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v27 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13.n128_f64[0] = MEMORY[0x28223BE20](v12);
  v30 = &v23 - v14;
  if (a1 >> 62)
  {
LABEL_15:
    v15 = sub_22766CD20();
    v32 = v8;
    if (v15)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v15 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v32 = v5;
    if (v15)
    {
LABEL_3:
      v16 = 0;
      v24 = a1 & 0xFFFFFFFFFFFFFF8;
      v25 = a1 & 0xC000000000000001;
      v23 = (v10 + 4);
      do
      {
        if (v25)
        {
          v17 = MEMORY[0x22AA991A0](v16, a1, v13);
          v8 = v32;
          v18 = v16 + 1;
          if (__OFADD__(v16, 1))
          {
LABEL_12:
            __break(1u);
LABEL_13:

            return;
          }
        }

        else
        {
          v8 = v32;
          if (v16 >= *(v24 + 16))
          {
            __break(1u);
            goto LABEL_15;
          }

          v17 = *(a1 + 8 * v16 + 32);
          v18 = v16 + 1;
          if (__OFADD__(v16, 1))
          {
            goto LABEL_12;
          }
        }

        v7 = [v17 objectID];
        v6 = v17;
        v19 = v30;
        v31();
        if (v8)
        {
          goto LABEL_13;
        }

        v32 = 0;
        v20 = v27;
        (*v23)(v27, v19, v28);
        v21 = v26;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v33 = *v21;
        v10 = &v33;
        v29(v20, v7, isUniquelyReferenced_nonNull_native);

        *v21 = v33;
        ++v16;
      }

      while (v18 != v15);
    }
  }
}

void sub_22711B568(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(void), uint64_t (*a4)(void), void (*a5)(char *, char *))
{
  v25 = a4;
  v26 = a5;
  v7 = a2(0);
  v24 = *(v7 - 8);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v23 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v23 - v14;
  v16 = 0;
  v17 = 1 << *(a1 + 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & *(a1 + 56);
  v20 = (v17 + 63) >> 6;
  while (v19)
  {
    v21 = v16;
LABEL_9:
    v22 = __clz(__rbit64(v19));
    v19 &= v19 - 1;
    sub_227125EA4(*(a1 + 48) + *(v24 + 72) * (v22 | (v21 << 6)), v15, a3);
    sub_227125E3C(v15, v9, v25);
    v26(v12, v9);
    sub_227125F0C(v12, a3);
  }

  while (1)
  {
    v21 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v21 >= v20)
    {

      return;
    }

    v19 = *(a1 + 56 + 8 * v21);
    ++v16;
    if (v19)
    {
      v16 = v21;
      goto LABEL_9;
    }
  }

  __break(1u);
}

uint64_t sub_22711B740(uint64_t result)
{
  v1 = result;
  v2 = 0;
  v3 = result + 56;
  v4 = 1 << *(result + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(result + 56);
  v7 = (v4 + 63) >> 6;
  if (v6)
  {
    while (1)
    {
      v8 = v2;
LABEL_9:
      v9 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      result = sub_2270BBDB4(&v10, *(*(v1 + 48) + ((v8 << 9) | (8 * v9))));
      if (!v6)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
      return result;
    }

    if (v8 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v8);
    ++v2;
    if (v6)
    {
      v2 = v8;
      goto LABEL_9;
    }
  }
}

uint64_t sub_22711B820@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>)
{
  v26 = a4;
  v27 = a8;
  v28 = a1;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC880, &unk_227671C60);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v25 - v14;
  v18 = type metadata accessor for EfficientQuery(0, a7, v16, v17);
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = &v25 - v20;
  v22 = a2;
  v23 = a5;
  sub_2275E5F10();
  sub_2275E6000(v15, v22, v23, a7, v21);
  v30 = a6;
  v31 = a7;
  v32 = a3;
  v33 = v26;
  sub_2275E60A4(v28, sub_227125BD8, v29, v18, a6, v27);
  return (*(v19 + 8))(v21, v18);
}

uint64_t sub_22711B9D8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22711BA3C(void (*a1)(void), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 - 8);
  MEMORY[0x28223BE20](a1);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = v15 - v11;
  v13 = MEMORY[0x22AA99A00](v10);
  a1();
  objc_autoreleasePoolPop(v13);
  (*(v6 + 16))(v8, v12, a4);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7BA3C0, &qword_2276709C0);
  sub_22766C460();
  sub_22766C450();
  return (*(v6 + 8))(v12, a4);
}

uint64_t sub_22711BBFC()
{
  v1 = v0[2];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7BA3C0, &qword_2276709C0);
  v2 = *(sub_22766C460() - 8);
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0 + ((*(v2 + 80) + 40) & ~*(v2 + 80));

  return sub_22711BA3C(v3, v4, v5, v1);
}

void sub_22711BC94(uint64_t a1, unint64_t a2)
{
  v4 = MEMORY[0x22AA99A00]();
  v5 = MEMORY[0x22AA99A00]();
  v6 = sub_22711E874(a2);
  if (v2)
  {
    objc_autoreleasePoolPop(v5);
  }

  else
  {
    v7 = v6;
    objc_autoreleasePoolPop(v5);
    v8 = sub_226F3E35C(v7);

    sub_22711B568(v8, type metadata accessor for SyncZoneChangeWindow, type metadata accessor for SyncZoneChangeWindow, type metadata accessor for SyncZoneChangeWindow, sub_2270ADDEC);
  }

  objc_autoreleasePoolPop(v4);
}

void sub_22711BD70(uint64_t a1, unint64_t a2)
{
  v4 = MEMORY[0x22AA99A00]();
  v5 = MEMORY[0x22AA99A00]();
  v6 = sub_22711ED58(a2);
  if (v2)
  {
    objc_autoreleasePoolPop(v5);
  }

  else
  {
    v7 = v6;
    objc_autoreleasePoolPop(v5);
    v8 = sub_226F3E51C(v7);

    sub_22711B568(v8, type metadata accessor for DirtySyncZone, type metadata accessor for DirtySyncZone, type metadata accessor for DirtySyncZone, sub_2270AE4A0);
  }

  objc_autoreleasePoolPop(v4);
}

void sub_22711BE4C(uint64_t a1, unint64_t a2)
{
  v4 = MEMORY[0x22AA99A00]();
  v5 = MEMORY[0x22AA99A00]();
  v6 = sub_226EB5448(a2, MEMORY[0x277D506C0], sub_226F1F0F0, sub_2274CCC00);
  if (v2)
  {
    objc_autoreleasePoolPop(v5);
  }

  else
  {
    v7 = v6;
    objc_autoreleasePoolPop(v5);
    v8 = sub_226F3E770(v7);

    sub_226EB707C(v8, MEMORY[0x277D506C0], sub_2270AEA04);
  }

  objc_autoreleasePoolPop(v4);
}

void sub_22711C01C(uint64_t a1, unint64_t a2)
{
  v4 = MEMORY[0x22AA99A00]();
  v5 = MEMORY[0x22AA99A00]();
  v6 = sub_226EB5448(a2, MEMORY[0x277D526D0], sub_226F1F4A8, sub_22739A564);
  if (v2)
  {
    objc_autoreleasePoolPop(v5);
  }

  else
  {
    v7 = v6;
    objc_autoreleasePoolPop(v5);
    v8 = sub_226F402C4(v7);

    sub_226EB707C(v8, MEMORY[0x277D526D0], sub_2270B1DD4);
  }

  objc_autoreleasePoolPop(v4);
}

void sub_22711C11C(uint64_t a1, unint64_t a2)
{
  v4 = MEMORY[0x22AA99A00]();
  v5 = MEMORY[0x22AA99A00]();
  v6 = sub_226EB5448(a2, MEMORY[0x277D52038], sub_226F1F4C8, sub_2273F8B54);
  if (v2)
  {
    objc_autoreleasePoolPop(v5);
  }

  else
  {
    v7 = v6;
    objc_autoreleasePoolPop(v5);
    v8 = sub_226F40460(v7);

    sub_226EB707C(v8, MEMORY[0x277D52038], sub_2270B20B4);
  }

  objc_autoreleasePoolPop(v4);
}

void sub_22711C21C(uint64_t a1, unint64_t a2)
{
  v4 = MEMORY[0x22AA99A00]();
  v5 = MEMORY[0x22AA99A00]();
  v6 = sub_226EB5448(a2, MEMORY[0x277D4FCA8], sub_226F1F528, sub_227339040);
  if (v2)
  {
    objc_autoreleasePoolPop(v5);
  }

  else
  {
    v7 = v6;
    objc_autoreleasePoolPop(v5);
    v8 = sub_226F405FC(v7);

    sub_226EB707C(v8, MEMORY[0x277D4FCA8], sub_2270B2394);
  }

  objc_autoreleasePoolPop(v4);
}

void sub_22711C31C(uint64_t a1, unint64_t a2)
{
  v4 = MEMORY[0x22AA99A00]();
  v5 = MEMORY[0x22AA99A00]();
  v6 = sub_226EB5448(a2, MEMORY[0x277D4FF88], sub_226F1F568, sub_226FC2510);
  if (v2)
  {
    objc_autoreleasePoolPop(v5);
  }

  else
  {
    v7 = v6;
    objc_autoreleasePoolPop(v5);
    v8 = sub_226F40934(v7);

    sub_226EB707C(v8, MEMORY[0x277D4FF88], sub_2270B2954);
  }

  objc_autoreleasePoolPop(v4);
}

void sub_22711C4C4(uint64_t *a1, unint64_t a2, uint64_t (*a3)(void), void (*a4)(void), void (*a5)(char *, id, uint64_t))
{
  v10 = MEMORY[0x22AA99A00]();
  sub_22711B300(a2, a1, a3, a4, a5);
  objc_autoreleasePoolPop(v10);
}

void sub_22711C544(uint64_t a1, unint64_t a2)
{
  v4 = MEMORY[0x22AA99A00]();
  v5 = MEMORY[0x22AA99A00]();
  v6 = sub_226EB5448(a2, MEMORY[0x277D50180], sub_226F1F5A8, sub_2275ED4C0);
  if (v2)
  {
    objc_autoreleasePoolPop(v5);
  }

  else
  {
    v7 = v6;
    objc_autoreleasePoolPop(v5);
    v8 = sub_226F40B78(v7);

    sub_226EB707C(v8, MEMORY[0x277D50180], sub_2270B34E8);
  }

  objc_autoreleasePoolPop(v4);
}

void sub_22711C6AC(uint64_t a1, unint64_t a2)
{
  v4 = MEMORY[0x22AA99A00]();
  v5 = MEMORY[0x22AA99A00]();
  v6 = sub_226EB5448(a2, MEMORY[0x277D50978], sub_226F1F628, sub_227218254);
  if (v2)
  {
    objc_autoreleasePoolPop(v5);
  }

  else
  {
    v7 = v6;
    objc_autoreleasePoolPop(v5);
    v8 = sub_226F40EB0(v7);

    sub_226EB707C(v8, MEMORY[0x277D50978], sub_2270B3AA8);
  }

  objc_autoreleasePoolPop(v4);
}

void sub_22711C87C(uint64_t a1, unint64_t a2)
{
  v4 = MEMORY[0x22AA99A00]();
  v5 = MEMORY[0x22AA99A00]();
  v6 = sub_226EB5448(a2, MEMORY[0x277D50B18], sub_226F1F688, sub_22736CCC4);
  if (v2)
  {
    objc_autoreleasePoolPop(v5);
  }

  else
  {
    v7 = v6;
    objc_autoreleasePoolPop(v5);
    v8 = sub_226F41520(v7);

    sub_226EB707C(v8, MEMORY[0x277D50B18], sub_2270B4908);
  }

  objc_autoreleasePoolPop(v4);
}

void sub_22711C97C(uint64_t a1, unint64_t a2)
{
  v4 = MEMORY[0x22AA99A00]();
  v5 = MEMORY[0x22AA99A00]();
  v6 = sub_226ED5C70(a2, MEMORY[0x277D4FE80], sub_226F1F6A8, MEMORY[0x277D4FE48]);
  if (v2)
  {
    objc_autoreleasePoolPop(v5);
  }

  else
  {
    v7 = v6;
    objc_autoreleasePoolPop(v5);
    v8 = sub_226F416BC(v7);

    sub_226EB707C(v8, MEMORY[0x277D4FE80], sub_2270B4BE8);
  }

  objc_autoreleasePoolPop(v4);
}

void sub_22711CBB4(uint64_t a1, unint64_t a2)
{
  v4 = MEMORY[0x22AA99A00]();
  v5 = MEMORY[0x22AA99A00]();
  v6 = sub_226EB5448(a2, MEMORY[0x277D50CD0], sub_226F1F7E8, sub_227444FA0);
  if (v2)
  {
    objc_autoreleasePoolPop(v5);
  }

  else
  {
    v7 = v6;
    objc_autoreleasePoolPop(v5);
    v8 = sub_226F41BF4(v7);

    sub_226EB707C(v8, MEMORY[0x277D50CD0], sub_2270B54D8);
  }

  objc_autoreleasePoolPop(v4);
}

void sub_22711CD1C(uint64_t a1, unint64_t a2)
{
  v4 = MEMORY[0x22AA99A00]();
  v5 = MEMORY[0x22AA99A00]();
  v6 = sub_226ED5C70(a2, MEMORY[0x277D53E88], sub_226F1F868, MEMORY[0x277D53E50]);
  if (v2)
  {
    objc_autoreleasePoolPop(v5);
  }

  else
  {
    v7 = v6;
    objc_autoreleasePoolPop(v5);
    v8 = sub_226F41F2C(v7);

    sub_226EB707C(v8, MEMORY[0x277D53E88], sub_2270B5A98);
  }

  objc_autoreleasePoolPop(v4);
}

void sub_22711CE84(uint64_t a1, unint64_t a2)
{
  v4 = MEMORY[0x22AA99A00]();
  v5 = MEMORY[0x22AA99A00]();
  v6 = sub_226EB5448(a2, MEMORY[0x277D52758], sub_226F1F8A8, sub_2272C3710);
  if (v2)
  {
    objc_autoreleasePoolPop(v5);
  }

  else
  {
    v7 = v6;
    objc_autoreleasePoolPop(v5);
    v8 = sub_226F42264(v7);

    sub_226EB707C(v8, MEMORY[0x277D52758], sub_2270B6058);
  }

  objc_autoreleasePoolPop(v4);
}

void sub_22711CF84(uint64_t a1, unint64_t a2)
{
  v4 = MEMORY[0x22AA99A00]();
  v5 = MEMORY[0x22AA99A00]();
  v6 = sub_226EB5448(a2, MEMORY[0x277D50C78], sub_226F1F8C8, sub_227509C4C);
  if (v2)
  {
    objc_autoreleasePoolPop(v5);
  }

  else
  {
    v7 = v6;
    objc_autoreleasePoolPop(v5);
    v8 = sub_226F42400(v7);

    sub_226EB707C(v8, MEMORY[0x277D50C78], sub_2270B6338);
  }

  objc_autoreleasePoolPop(v4);
}

void sub_22711D084(uint64_t a1, unint64_t a2)
{
  v4 = MEMORY[0x22AA99A00]();
  v5 = MEMORY[0x22AA99A00]();
  v6 = sub_226EB5448(a2, MEMORY[0x277D52300], sub_226F1F8E8, sub_22714FBA0);
  if (v2)
  {
    objc_autoreleasePoolPop(v5);
  }

  else
  {
    v7 = v6;
    objc_autoreleasePoolPop(v5);
    v8 = sub_226F42738(v7);

    sub_226EB707C(v8, MEMORY[0x277D52300], sub_2270B68F8);
  }

  objc_autoreleasePoolPop(v4);
}

void sub_22711D184(uint64_t a1, unint64_t a2)
{
  v4 = MEMORY[0x22AA99A00]();
  v5 = MEMORY[0x22AA99A00]();
  v6 = sub_226EB5448(a2, MEMORY[0x277D51E30], sub_226F1F9A8, sub_2273387F0);
  if (v2)
  {
    objc_autoreleasePoolPop(v5);
  }

  else
  {
    v7 = v6;
    objc_autoreleasePoolPop(v5);
    v8 = sub_226F428D4(v7);

    sub_226EB707C(v8, MEMORY[0x277D51E30], sub_2270B6BD8);
  }

  objc_autoreleasePoolPop(v4);
}

void sub_22711D284(uint64_t a1, unint64_t a2)
{
  v4 = MEMORY[0x22AA99A00]();
  v5 = MEMORY[0x22AA99A00]();
  v6 = sub_226ED5C70(a2, MEMORY[0x277D53128], sub_226F1F9C8, MEMORY[0x277D53100]);
  if (v2)
  {
    objc_autoreleasePoolPop(v5);
  }

  else
  {
    v7 = v6;
    objc_autoreleasePoolPop(v5);
    v8 = sub_226F42A70(v7);

    sub_226EB707C(v8, MEMORY[0x277D53128], sub_2270B6EB8);
  }

  objc_autoreleasePoolPop(v4);
}

void sub_22711D4A8(uint64_t a1, unint64_t a2)
{
  v4 = MEMORY[0x22AA99A00]();
  v5 = MEMORY[0x22AA99A00]();
  v6 = sub_226EB5448(a2, MEMORY[0x277D538B8], sub_226F1FE88, sub_22764C90C);
  if (v2)
  {
    objc_autoreleasePoolPop(v5);
  }

  else
  {
    v7 = v6;
    objc_autoreleasePoolPop(v5);
    v8 = sub_226F44030(v7);

    sub_226EB707C(v8, MEMORY[0x277D538B8], sub_2270B9998);
  }

  objc_autoreleasePoolPop(v4);
}

void sub_22711D5A8(uint64_t a1, unint64_t a2)
{
  v4 = MEMORY[0x22AA99A00]();
  v5 = MEMORY[0x22AA99A00]();
  v6 = sub_226EB5448(a2, MEMORY[0x277D53480], sub_226F1F728, sub_226F5C2F4);
  if (v2)
  {
    objc_autoreleasePoolPop(v5);
  }

  else
  {
    v7 = v6;
    objc_autoreleasePoolPop(v5);
    v8 = sub_226F443FC(v7);

    sub_226EB707C(v8, MEMORY[0x277D53480], sub_2270BA074);
  }

  objc_autoreleasePoolPop(v4);
}

void sub_22711D6A8(uint64_t a1, unint64_t a2)
{
  v4 = MEMORY[0x22AA99A00]();
  v5 = MEMORY[0x22AA99A00]();
  v6 = sub_226EB5448(a2, MEMORY[0x277D50E98], sub_226F1F828, sub_226F78EC4);
  if (v2)
  {
    objc_autoreleasePoolPop(v5);
  }

  else
  {
    v7 = v6;
    objc_autoreleasePoolPop(v5);
    v8 = sub_226F43E94(v7);

    sub_226EB707C(v8, MEMORY[0x277D50E98], sub_2270B96B8);
  }

  objc_autoreleasePoolPop(v4);
}

void sub_22711D7A8(uint64_t a1, unint64_t a2)
{
  v4 = MEMORY[0x22AA99A00]();
  v5 = MEMORY[0x22AA99A00]();
  v6 = sub_226EB5448(a2, MEMORY[0x277D528B8], sub_226F1F328, sub_2275D6CF8);
  if (v2)
  {
    objc_autoreleasePoolPop(v5);
  }

  else
  {
    v7 = v6;
    objc_autoreleasePoolPop(v5);
    v8 = sub_226F3EF74(v7);

    sub_226EB707C(v8, MEMORY[0x277D528B8], sub_2270AFB54);
  }

  objc_autoreleasePoolPop(v4);
}

void sub_22711D9B8(uint64_t a1, unint64_t a2)
{
  v4 = MEMORY[0x22AA99A00]();
  v5 = MEMORY[0x22AA99A00]();
  v6 = sub_226EB5448(a2, MEMORY[0x277D508B0], sub_226F20108, sub_2274F82A0);
  if (v2)
  {
    objc_autoreleasePoolPop(v5);
  }

  else
  {
    v7 = v6;
    objc_autoreleasePoolPop(v5);
    v8 = sub_226F44BB8(v7);

    sub_226EB707C(v8, MEMORY[0x277D508B0], sub_2270BB22C);
  }

  objc_autoreleasePoolPop(v4);
}

void sub_22711DAB8(uint64_t a1, unint64_t a2)
{
  v4 = MEMORY[0x22AA99A00]();
  v5 = MEMORY[0x22AA99A00]();
  v6 = sub_226EB5448(a2, MEMORY[0x277D512F0], sub_226F20168, sub_2275E0D14);
  if (v2)
  {
    objc_autoreleasePoolPop(v5);
  }

  else
  {
    v7 = v6;
    objc_autoreleasePoolPop(v5);
    v8 = sub_226F44F08(v7);

    sub_226EB707C(v8, MEMORY[0x277D512F0], sub_2270BB7F4);
  }

  objc_autoreleasePoolPop(v4);
}

void sub_22711DBE4(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t))
{
  v6 = MEMORY[0x22AA99A00]();
  a3(a2, a1);
  objc_autoreleasePoolPop(v6);
}

void sub_22711DC4C(uint64_t a1, unint64_t a2)
{
  v4 = MEMORY[0x22AA99A00]();
  v5 = MEMORY[0x22AA99A00]();
  v6 = sub_227122904(a2);
  if (v2)
  {
    objc_autoreleasePoolPop(v5);
  }

  else
  {
    v7 = v6;
    objc_autoreleasePoolPop(v5);
    v8 = sub_226F453DC(v7);

    sub_22711B740(v8);
  }

  objc_autoreleasePoolPop(v4);
}

void sub_22711DDE4(uint64_t a1, unint64_t a2)
{
  v4 = MEMORY[0x22AA99A00]();
  v5 = MEMORY[0x22AA99A00]();
  v6 = sub_226EB5448(a2, MEMORY[0x277D51CF0], sub_226F1F210, sub_226F1C6B4);
  if (v2)
  {
    objc_autoreleasePoolPop(v5);
  }

  else
  {
    v7 = v6;
    objc_autoreleasePoolPop(v5);
    v8 = sub_226F45820(v7);

    sub_226EB707C(v8, MEMORY[0x277D51CF0], sub_2270BC5D0);
  }

  objc_autoreleasePoolPop(v4);
}

void sub_22711E01C(uint64_t a1, unint64_t a2)
{
  v4 = MEMORY[0x22AA99A00]();
  v5 = MEMORY[0x22AA99A00]();
  v6 = sub_226EB5448(a2, MEMORY[0x277D51680], sub_226F20228, sub_2271E06F4);
  if (v2)
  {
    objc_autoreleasePoolPop(v5);
  }

  else
  {
    v7 = v6;
    objc_autoreleasePoolPop(v5);
    v8 = sub_226F467AC(v7);

    sub_226EB707C(v8, MEMORY[0x277D51680], sub_2270B2C34);
  }

  objc_autoreleasePoolPop(v4);
}

void sub_22711E184(uint64_t a1, unint64_t a2)
{
  v4 = MEMORY[0x22AA99A00]();
  v5 = MEMORY[0x22AA99A00]();
  v6 = sub_226EB5448(a2, MEMORY[0x277D53C88], sub_226F1FA88, sub_226FAD640);
  if (v2)
  {
    objc_autoreleasePoolPop(v5);
  }

  else
  {
    v7 = v6;
    objc_autoreleasePoolPop(v5);
    v8 = sub_226F46B8C(v7);

    sub_226EB707C(v8, MEMORY[0x277D53C88], sub_2270BE850);
  }

  objc_autoreleasePoolPop(v4);
}

void sub_22711E2EC(uint64_t a1, unint64_t a2)
{
  v4 = MEMORY[0x22AA99A00]();
  v5 = MEMORY[0x22AA99A00]();
  v6 = sub_226EB5448(a2, MEMORY[0x277D52828], sub_226F1F928, sub_226ED4D78);
  if (v2)
  {
    objc_autoreleasePoolPop(v5);
  }

  else
  {
    v7 = v6;
    objc_autoreleasePoolPop(v5);
    sub_227461E28(v7);
  }

  objc_autoreleasePoolPop(v4);
}

void sub_22711E480(uint64_t a1, unint64_t a2)
{
  v4 = MEMORY[0x22AA99A00]();
  v5 = MEMORY[0x22AA99A00]();
  v6 = sub_226EB5448(a2, MEMORY[0x277D50D88], sub_226F20388, sub_2272CC988);
  if (v2)
  {
    objc_autoreleasePoolPop(v5);
  }

  else
  {
    v7 = v6;
    objc_autoreleasePoolPop(v5);
    v8 = sub_226F47C78(v7);

    sub_226EB707C(v8, MEMORY[0x277D50D88], sub_2270C0C58);
  }

  objc_autoreleasePoolPop(v4);
}

void sub_22711E690(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t))
{
  v6 = MEMORY[0x22AA99A00]();
  a3(a1, a2);
  objc_autoreleasePoolPop(v6);
}

void sub_22711E6FC(void *a1@<X0>, void *a2@<X8>)
{
  v4 = [objc_allocWithZone(MEMORY[0x277CBE440]) initWithConcurrencyType_];
  v5 = [a1 mergePolicy];
  sub_22766CC20();
  swift_unknownObjectRelease();
  __swift_project_boxed_opaque_existential_0(v11, v11[3]);
  [v4 setMergePolicy_];
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0(v11);
  [v4 setParentContext_];
  v6 = [a1 description];
  v7 = sub_22766C000();
  v9 = v8;

  MEMORY[0x22AA98450](v7, v9);

  v10 = sub_22766BFD0();

  [v4 setName_];

  *a2 = v4;
}

void *sub_22711E874(unint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8460, qword_2276709E0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v40 - v5;
  v7 = sub_2276694E0();
  v41 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for SyncZoneChangeWindow(0);
  v51 = *(v10 - 8);
  v52 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >> 62)
  {
    goto LABEL_24;
  }

  v13 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (1)
  {
    v14 = MEMORY[0x277D84F90];
    if (!v13)
    {
      return v14;
    }

    v46 = v12;
    v56 = MEMORY[0x277D84F90];
    result = sub_226F1EFD0(0, v13 & ~(v13 >> 63), 0);
    if (v13 < 0)
    {
      break;
    }

    v47 = v9;
    v48 = v7;
    v40 = v2;
    v16 = 0;
    v53 = a1 & 0xC000000000000001;
    v14 = v56;
    v12 = (v41 + 48);
    v49 = (v41 + 48);
    v50 = v6;
    v2 = (v41 + 32);
    v44 = v13;
    v45 = a1;
    v42 = a1 & 0xFFFFFFFFFFFFFF8;
    v43 = (v41 + 32);
    while (1)
    {
      v17 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v53)
      {
        v18 = MEMORY[0x22AA991A0](v16, a1);
      }

      else
      {
        if (v16 >= *(v42 + 16))
        {
          goto LABEL_23;
        }

        v18 = *(a1 + 8 * v16 + 32);
      }

      v19 = v18;
      v20 = [v18 zoneName];
      if (!v20)
      {
        goto LABEL_20;
      }

      v21 = v20;
      sub_22766C000();

      v22 = v50;
      v23 = v48;
      sub_2276694B0();
      if ((*v49)(v22, 1, v23) == 1)
      {
        sub_226E97D1C(v22, &qword_27D7B8460, qword_2276709E0);
LABEL_20:
        v37 = sub_227664DD0();
        sub_227125F6C(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
        swift_allocError();
        (*(*(v37 - 8) + 104))(v38, *MEMORY[0x277D51028], v37);
        swift_willThrow();

        return v14;
      }

      v55 = v16;
      v24 = *v2;
      v25 = v47;
      (*v2)(v47, v22, v23);
      v26 = [v19 changeWindow];
      if (!v26)
      {
        (*(v41 + 8))(v25, v23);
        goto LABEL_20;
      }

      v27 = v26;
      v54 = v17;
      v28 = v23;
      v7 = v2;
      v29 = v14;
      v30 = sub_227662590();
      v32 = v31;

      v33 = v46;
      v24(v46, v25, v28);
      v34 = v33;
      v35 = (v33 + *(v52 + 20));
      *v35 = v30;
      v35[1] = v32;
      v14 = v29;
      v56 = v29;
      v6 = *(v29 + 16);
      v36 = *(v29 + 24);
      v9 = (v6 + 1);
      if (v6 >= v36 >> 1)
      {
        sub_226F1EFD0((v36 > 1), v6 + 1, 1);
        v34 = v46;
        v14 = v56;
      }

      *(v14 + 16) = v9;
      sub_227125E3C(v34, v14 + ((*(v51 + 80) + 32) & ~*(v51 + 80)) + *(v51 + 72) * v6, type metadata accessor for SyncZoneChangeWindow);
      v16 = v55 + 1;
      a1 = v45;
      v2 = v43;
      if (v54 == v44)
      {
        return v14;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    v39 = v12;
    v13 = sub_22766CD20();
    v12 = v39;
  }

  __break(1u);
  return result;
}

void (*sub_22711ED58(unint64_t a1))(unint64_t, char *, unint64_t)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8460, qword_2276709E0);
  MEMORY[0x28223BE20](v4 - 8);
  v51 = v37 - v5;
  v6 = sub_2276694E0();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v48 = v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_227662750();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v50 = v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = v37 - v13;
  v15 = type metadata accessor for DirtySyncZone(0);
  v46 = *(v15 - 8);
  v47 = v15;
  MEMORY[0x28223BE20](v15);
  v45 = v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >> 62)
  {
    goto LABEL_24;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_22766CD20())
  {
    v18 = MEMORY[0x277D84F90];
    if (!i)
    {
      return v18;
    }

    v52 = a1;
    v56 = MEMORY[0x277D84F90];
    result = sub_226F1F010(0, i & ~(i >> 63), 0);
    if (i < 0)
    {
      break;
    }

    v43 = v6;
    v44 = v14;
    v37[1] = v2;
    v38 = v10;
    v14 = 0;
    v18 = v56;
    v20 = v52;
    v49 = v52 & 0xC000000000000001;
    v2 = (v10 + 32);
    v41 = i;
    v42 = (v7 + 48);
    v39 = v52 & 0xFFFFFFFFFFFFFF8;
    v40 = (v7 + 32);
    a1 = v9;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      v55 = v18;
      if (v49)
      {
        v21 = MEMORY[0x22AA991A0](v14);
      }

      else
      {
        if (v14 >= *(v39 + 16))
        {
          goto LABEL_23;
        }

        v21 = *(v20 + 8 * v14 + 32);
      }

      v22 = v21;
      v23 = [v21 zoneName];
      if (!v23)
      {
        goto LABEL_19;
      }

      v18 = v23;
      sub_22766C000();

      v24 = [v22 timestamp];
      if (!v24)
      {

LABEL_19:
        v33 = sub_227664DD0();
        sub_227125F6C(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
        swift_allocError();
        (*(*(v33 - 8) + 104))(v34, *MEMORY[0x277D51028], v33);
        swift_willThrow();

        return v18;
      }

      v25 = v24;
      v54 = v14 + 1;
      v26 = v50;
      sub_227662710();

      v18 = *v2;
      v27 = v44;
      (*v2)(v44, v26, a1);
      v28 = v51;
      sub_2276694B0();
      v29 = v43;
      if ((*v42)(v28, 1, v43) == 1)
      {
        sub_226E97D1C(v28, &qword_27D7B8460, qword_2276709E0);
        v35 = sub_227664DD0();
        sub_227125F6C(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
        swift_allocError();
        (*(*(v35 - 8) + 104))(v36, *MEMORY[0x277D51028], v35);
        swift_willThrow();

        (*(v38 + 8))(v27, a1);

        return v18;
      }

      v53 = v14;

      v30 = *v40;
      (*v40)(v48, v28, v29);
      v31 = v45;
      v30();
      v9 = v2;
      v18(v31 + *(v47 + 20), v27, a1);
      v18 = v55;
      v56 = v55;
      v7 = *(v55 + 2);
      v32 = *(v55 + 3);
      v10 = v7 + 1;
      if (v7 >= v32 >> 1)
      {
        sub_226F1F010((v32 > 1), v7 + 1, 1);
        v18 = v56;
      }

      *(v18 + 2) = v10;
      sub_227125E3C(v31, v18 + ((*(v46 + 80) + 32) & ~*(v46 + 80)) + *(v46 + 72) * v7, type metadata accessor for DirtySyncZone);
      v14 = v53 + 1;
      v20 = v52;
      if (v54 == v41)
      {
        return v18;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    ;
  }

  __break(1u);
  return result;
}

void *sub_22711F3C0(unint64_t a1)
{
  v2 = v1;
  v4 = sub_227662750();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v40 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v42 = &v30 - v8;
  MEMORY[0x28223BE20](v9);
  v11 = &v30 - v10;
  v39 = sub_227664E20();
  v43 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >> 62)
  {
    goto LABEL_24;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_22766CD20())
  {
    v15 = MEMORY[0x277D84F90];
    if (!i)
    {
      return v15;
    }

    v46 = MEMORY[0x277D84F90];
    result = sub_226F1F448(0, i & ~(i >> 63), 0);
    if (i < 0)
    {
      break;
    }

    v30 = v2;
    v2 = 0;
    v41 = a1 & 0xC000000000000001;
    v15 = v46;
    v36 = (v5 + 32);
    v37 = v4;
    v33 = (v5 + 16);
    v34 = i;
    v38 = (v5 + 8);
    v31 = a1 & 0xFFFFFFFFFFFFFF8;
    v32 = v43 + 32;
    v35 = a1;
    while (1)
    {
      v5 = v2 + 1;
      if (__OFADD__(v2, 1))
      {
        break;
      }

      if (v41)
      {
        v17 = MEMORY[0x22AA991A0](v2, a1);
      }

      else
      {
        if (v2 >= *(v31 + 16))
        {
          goto LABEL_23;
        }

        v17 = *(a1 + 8 * v2 + 32);
      }

      v18 = v17;
      v19 = [v17 term];
      if (!v19)
      {
        goto LABEL_20;
      }

      v20 = v19;
      v45 = v2;
      sub_22766C000();

      v21 = [v18 dateCreated];
      if (!v21)
      {
        goto LABEL_19;
      }

      v22 = v21;
      v44 = v2 + 1;
      v23 = v13;
      v24 = v15;
      v25 = v42;
      sub_227662710();

      v26 = v37;
      (*v36)(v11, v25, v37);
      if (MEMORY[0x22AA95720]([v18 platform]) == 4)
      {
        (*v38)(v11, v26);
        v15 = v24;
LABEL_19:

LABEL_20:
        v28 = sub_227664DD0();
        sub_227125F6C(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
        swift_allocError();
        (*(*(v28 - 8) + 104))(v29, *MEMORY[0x277D51028], v28);
        swift_willThrow();

        return v15;
      }

      (*v33)(v40, v11, v26);
      sub_227664DF0();

      (*v38)(v11, v26);
      v15 = v24;
      v46 = v24;
      v4 = *(v24 + 16);
      v27 = *(v24 + 24);
      if (v4 >= v27 >> 1)
      {
        sub_226F1F448((v27 > 1), v4 + 1, 1);
        v15 = v46;
      }

      *(v15 + 16) = v4 + 1;
      (*(v43 + 32))(v15 + ((*(v43 + 80) + 32) & ~*(v43 + 80)) + *(v43 + 72) * v4, v23, v39);
      v2 = v45 + 1;
      a1 = v35;
      v13 = v23;
      if (v44 == v34)
      {
        return v15;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    ;
  }

  __break(1u);
  return result;
}

void *sub_22711F8B0(unint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB570, &unk_227670FC0);
  MEMORY[0x28223BE20](v4 - 8);
  v39 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v37 = &v32 - v7;
  v38 = sub_2276687D0();
  v42 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >> 62)
  {
    goto LABEL_27;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_22766CD20())
  {
    v11 = MEMORY[0x277D84F90];
    if (!i)
    {
      return v11;
    }

    v46 = MEMORY[0x277D84F90];
    result = sub_226F1F488(0, i & ~(i >> 63), 0);
    if (i < 0)
    {
      break;
    }

    v13 = 0;
    v40 = a1 & 0xC000000000000001;
    v11 = v46;
    v32 = v2;
    v33 = a1 & 0xFFFFFFFFFFFFFF8;
    v34 = a1;
    v35 = v42 + 32;
    v36 = i;
    while (!__OFADD__(v13, 1))
    {
      if (v40)
      {
        v14 = MEMORY[0x22AA991A0](v13, a1);
      }

      else
      {
        if (v13 >= *(v33 + 16))
        {
          goto LABEL_26;
        }

        v14 = *(a1 + 8 * v13 + 32);
      }

      v15 = v14;
      v16 = [v14 identifier];
      if (!v16)
      {
        goto LABEL_23;
      }

      v17 = v16;
      v45 = v13 + 1;
      v18 = v9;
      sub_22766C000();

      v19 = [v15 title];
      if (!v19)
      {

LABEL_23:
        v30 = sub_227664DD0();
        sub_227125F6C(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
        swift_allocError();
        (*(*(v30 - 8) + 104))(v31, *MEMORY[0x277D51028], v30);
        swift_willThrow();

        return v11;
      }

      v20 = v19;
      v21 = sub_22766C000();
      v43 = v22;
      v44 = v21;

      v23 = [v15 thumbnailURL];
      if (v23)
      {
        v41 = v11;

        v24 = [v15 thumbnailURL];
        if (v24)
        {
          v25 = v24;
          sub_22766C000();
        }

        v27 = v37;
        sub_227662310();
        a1 = v34;
        v11 = v41;
      }

      else
      {
        v26 = sub_2276624A0();
        v27 = v37;
        (*(*(v26 - 8) + 56))(v37, 1, 1, v26);
      }

      v9 = v18;
      sub_227125BF8(v27, v39);
      sub_227668790();

      sub_226E97D1C(v27, &unk_27D7BB570, &unk_227670FC0);
      v46 = v11;
      v29 = *(v11 + 16);
      v28 = *(v11 + 24);
      v2 = v29 + 1;
      if (v29 >= v28 >> 1)
      {
        sub_226F1F488((v28 > 1), v29 + 1, 1);
        v11 = v46;
      }

      *(v11 + 16) = v2;
      (*(v42 + 32))(v11 + ((*(v42 + 80) + 32) & ~*(v42 + 80)) + *(v42 + 72) * v29, v18, v38);
      ++v13;
      if (v45 == v36)
      {
        return v11;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    ;
  }

  __break(1u);
  return result;
}

char *sub_22711FD60(unint64_t a1)
{
  v2 = v1;
  v4 = sub_227665F20();
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2276627D0();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v47 = &v36 - v12;
  MEMORY[0x28223BE20](v13);
  v15 = &v36 - v14;
  v45 = sub_227667780();
  v49 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v17 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >> 62)
  {
    goto LABEL_26;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_22766CD20())
  {
    v19 = MEMORY[0x277D84F90];
    if (!i)
    {
      return v19;
    }

    v36 = v15;
    v54 = MEMORY[0x277D84F90];
    v48 = i;
    result = sub_226F1F5C8(0, i & ~(i >> 63), 0);
    if (v48 < 0)
    {
      break;
    }

    v41 = v10;
    v42 = v6;
    v53 = v2;
    v2 = 0;
    v46 = a1 & 0xC000000000000001;
    v19 = v54;
    v39 = a1;
    v40 = (v8 + 16);
    v43 = (v8 + 32);
    v44 = (v8 + 8);
    v37 = a1 & 0xFFFFFFFFFFFFFF8;
    v38 = v49 + 32;
    v15 = v36;
    while (1)
    {
      v10 = (v2 + 1);
      if (__OFADD__(v2, 1))
      {
        break;
      }

      if (v46)
      {
        v21 = MEMORY[0x22AA991A0](v2, a1);
      }

      else
      {
        if (v2 >= *(v37 + 16))
        {
          goto LABEL_25;
        }

        v21 = *(a1 + 8 * v2 + 32);
      }

      v8 = v21;
      v22 = [v21 sessionIdentifier];
      if (!v22)
      {
        goto LABEL_21;
      }

      v23 = v22;
      v52 = v2 + 1;
      sub_22766C000();

      v24 = [v8 planIdentifier];
      if (!v24)
      {
        goto LABEL_20;
      }

      v25 = v24;
      v51 = v2;
      v26 = v47;
      sub_2276627B0();

      (*v43)(v15, v26, v7);
      v27 = [v8 reference];
      if (!v27)
      {
        (*v44)(v15, v7);
LABEL_20:

LABEL_21:
        v33 = sub_227664DD0();
        sub_227125F6C(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
        swift_allocError();
        (*(*(v33 - 8) + 104))(v34, *MEMORY[0x277D51028], v33);
        swift_willThrow();

        return v19;
      }

      v28 = v27;
      v50 = v19;
      v19 = v41;
      (*v40)(v41, v15, v7);
      v29 = v28;
      v30 = v53;
      sub_226F5B7DC(v29);
      v53 = v30;
      if (v30)
      {

        v35 = *v44;
        (*v44)(v19, v7);
        v35(v15, v7);

        return v19;
      }

      sub_227667750();

      (*v44)(v15, v7);
      v19 = v50;
      v54 = v50;
      v32 = *(v50 + 2);
      v31 = *(v50 + 3);
      v6 = (v32 + 1);
      if (v32 >= v31 >> 1)
      {
        sub_226F1F5C8((v31 > 1), v32 + 1, 1);
        v15 = v36;
        v19 = v54;
      }

      *(v19 + 2) = v6;
      (*(v49 + 32))(&v19[((*(v49 + 80) + 32) & ~*(v49 + 80)) + *(v49 + 72) * v32], v17, v45);
      v2 = v51 + 1;
      a1 = v39;
      if (v52 == v48)
      {
        return v19;
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    ;
  }

  __break(1u);
  return result;
}

void *sub_2271202F4(unint64_t a1)
{
  v2 = v1;
  v37 = sub_227662750();
  v4 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v36 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v35 = &v27 - v7;
  v34 = sub_227666170();
  v39 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >> 62)
  {
    goto LABEL_22;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_22766CD20())
  {
    v11 = MEMORY[0x277D84F90];
    if (!i)
    {
      return v11;
    }

    v41 = MEMORY[0x277D84F90];
    result = sub_226F1F648(0, i & ~(i >> 63), 0);
    if (i < 0)
    {
      break;
    }

    v13 = 0;
    v11 = v41;
    v38 = a1 & 0xC000000000000001;
    v27 = v2;
    v28 = a1 & 0xFFFFFFFFFFFFFF8;
    v30 = (v4 + 8);
    v31 = (v4 + 16);
    v29 = v39 + 32;
    v32 = i;
    v33 = a1;
    while (!__OFADD__(v13, 1))
    {
      if (v38)
      {
        v14 = MEMORY[0x22AA991A0](v13, a1);
      }

      else
      {
        if (v13 >= *(v28 + 16))
        {
          goto LABEL_21;
        }

        v14 = *(a1 + 8 * v13 + 32);
      }

      v15 = v14;
      v16 = [v14 identifier];
      if (!v16)
      {
        goto LABEL_18;
      }

      v17 = v16;
      v2 = sub_22766C000();

      v18 = [v15 dateWatched];
      if (!v18)
      {

LABEL_18:
        v25 = sub_227664DD0();
        sub_227125F6C(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
        swift_allocError();
        (*(*(v25 - 8) + 104))(v26, *MEMORY[0x277D51028], v25);
        swift_willThrow();

        return v11;
      }

      v19 = v18;
      v40 = v13 + 1;
      v20 = v11;
      v21 = v35;
      sub_227662710();

      v22 = v37;
      (*v31)(v36, v21, v37);
      sub_227666140();

      v23 = v21;
      v11 = v20;
      (*v30)(v23, v22);
      v41 = v20;
      v4 = *(v20 + 16);
      v24 = *(v20 + 24);
      if (v4 >= v24 >> 1)
      {
        sub_226F1F648((v24 > 1), v4 + 1, 1);
        v11 = v41;
      }

      *(v11 + 16) = v4 + 1;
      (*(v39 + 32))(v11 + ((*(v39 + 80) + 32) & ~*(v39 + 80)) + *(v39 + 72) * v4, v9, v34);
      ++v13;
      a1 = v33;
      if (v40 == v32)
      {
        return v11;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    ;
  }

  __break(1u);
  return result;
}

void *sub_227120730(unint64_t a1)
{
  v2 = v1;
  v4 = sub_227669040();
  v23 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >> 62)
  {
    goto LABEL_20;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_22766CD20())
  {
    v8 = MEMORY[0x277D84F90];
    if (!i)
    {
      return v8;
    }

    v25 = MEMORY[0x277D84F90];
    result = sub_226F1F668(0, i & ~(i >> 63), 0);
    if (i < 0)
    {
      break;
    }

    v8 = v25;
    v10 = 0;
    v21 = sub_227125F6C(&qword_2813A5520, MEMORY[0x277D539C0], &unk_2276788A0);
    v19 = *(v21 + 48);
    v20 = v21 + 48;
    v22 = a1 & 0xC000000000000001;
    v16 = a1 & 0xFFFFFFFFFFFFFF8;
    v17 = v23 + 32;
    v18 = a1;
    while (1)
    {
      v11 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v22)
      {
        v12 = MEMORY[0x22AA991A0](v10, a1);
      }

      else
      {
        if (v10 >= *(v16 + 16))
        {
          goto LABEL_19;
        }

        v12 = *(a1 + 8 * v10 + 32);
      }

      v19(v12, v4, v21);
      if (v2)
      {

        return v8;
      }

      v24 = 0;
      v25 = v8;
      v14 = *(v8 + 16);
      v13 = *(v8 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_226F1F668((v13 > 1), v14 + 1, 1);
        v8 = v25;
      }

      *(v8 + 16) = v14 + 1;
      (*(v23 + 32))(v8 + ((*(v23 + 80) + 32) & ~*(v23 + 80)) + *(v23 + 72) * v14, v6, v4);
      ++v10;
      a1 = v18;
      v2 = v24;
      if (v11 == i)
      {
        return v8;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    ;
  }

  __break(1u);
  return result;
}

void *sub_2271209C8(unint64_t a1)
{
  v2 = v1;
  v33 = sub_227664EB0();
  v35 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >> 62)
  {
    goto LABEL_28;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_22766CD20())
  {
    v7 = MEMORY[0x277D84F90];
    if (!i)
    {
      return v7;
    }

    v42 = MEMORY[0x277D84F90];
    result = sub_226F1F6C8(0, i & ~(i >> 63), 0);
    if (i < 0)
    {
      break;
    }

    v9 = 0;
    v7 = v42;
    v34 = a1 & 0xC000000000000001;
    v28 = a1 & 0xFFFFFFFFFFFFFF8;
    v29 = v35 + 32;
    v31 = v5;
    v32 = a1;
    v30 = i;
    while (!__OFADD__(v9, 1))
    {
      if (v34)
      {
        v10 = MEMORY[0x22AA991A0](v9, a1);
      }

      else
      {
        if (v9 >= *(v28 + 16))
        {
          goto LABEL_27;
        }

        v10 = *(a1 + 8 * v9 + 32);
      }

      v11 = v10;
      v12 = [v10 identifier];
      if (!v12)
      {
        goto LABEL_24;
      }

      v13 = v12;
      v39 = v9 + 1;
      sub_22766C000();
      v40 = v14;

      v15 = [v11 name];
      if (!v15)
      {

LABEL_24:
        v25 = sub_227664DD0();
        sub_227125F6C(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
        swift_allocError();
        (*(*(v25 - 8) + 104))(v26, *MEMORY[0x277D51028], v25);
        swift_willThrow();

        return v7;
      }

      v16 = v15;
      v38 = v7;
      v17 = sub_22766C000();
      v36 = v18;
      v37 = v17;

      v41 = v11;
      v19 = [v11 artwork];
      if (v19)
      {
        v20 = v19;
        sub_227662590();
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB2A0, &qword_22767A148);
      sub_227125C68();
      sub_2276683D0();
      if (v2)
      {
      }

      v2 = 0;
      v21 = [v41 informalName];
      if (v21)
      {
        v22 = v21;
        sub_22766C000();
      }

      v5 = v31;
      sub_227664E90();

      v7 = v38;
      v42 = v38;
      v24 = *(v38 + 16);
      v23 = *(v38 + 24);
      if (v24 >= v23 >> 1)
      {
        sub_226F1F6C8((v23 > 1), v24 + 1, 1);
        v7 = v42;
      }

      *(v7 + 16) = v24 + 1;
      (*(v35 + 32))(v7 + ((*(v35 + 80) + 32) & ~*(v35 + 80)) + *(v35 + 72) * v24, v5, v33);
      ++v9;
      a1 = v32;
      if (v39 == v30)
      {
        return v7;
      }
    }

    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    ;
  }

  __break(1u);
  return result;
}

void *sub_227120E00(unint64_t a1)
{
  v2 = v1;
  v25 = sub_227663A30();
  v27 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >> 62)
  {
    goto LABEL_22;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_22766CD20())
  {
    v7 = MEMORY[0x277D84F90];
    if (!i)
    {
      return v7;
    }

    v29 = MEMORY[0x277D84F90];
    result = sub_226F1F308(0, i & ~(i >> 63), 0);
    if (i < 0)
    {
      break;
    }

    v9 = 0;
    v26 = a1 & 0xC000000000000001;
    v7 = v29;
    v19 = v2;
    v20 = a1 & 0xFFFFFFFFFFFFFF8;
    v22 = v27 + 32;
    v23 = i;
    v24 = a1;
    v21 = v5;
    while (!__OFADD__(v9, 1))
    {
      if (v26)
      {
        v10 = MEMORY[0x22AA991A0](v9, a1);
      }

      else
      {
        if (v9 >= *(v20 + 16))
        {
          goto LABEL_21;
        }

        v10 = *(a1 + 8 * v9 + 32);
      }

      v11 = v10;
      v12 = [v10 identifier];
      if (!v12)
      {
        goto LABEL_18;
      }

      v13 = v12;
      v28 = v9 + 1;
      sub_22766C000();

      v14 = [v11 name];
      if (!v14)
      {

LABEL_18:
        v17 = sub_227664DD0();
        sub_227125F6C(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
        swift_allocError();
        (*(*(v17 - 8) + 104))(v18, *MEMORY[0x277D51028], v17);
        swift_willThrow();

        return v7;
      }

      v15 = v14;
      sub_22766C000();

      [v11 sortOrder];
      sub_2276639F0();

      v29 = v7;
      v2 = *(v7 + 16);
      v16 = *(v7 + 24);
      if (v2 >= v16 >> 1)
      {
        sub_226F1F308((v16 > 1), v2 + 1, 1);
        v7 = v29;
      }

      *(v7 + 16) = v2 + 1;
      v5 = v21;
      (*(v27 + 32))(v7 + ((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * v2, v21, v25);
      ++v9;
      a1 = v24;
      if (v28 == v23)
      {
        return v7;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    ;
  }

  __break(1u);
  return result;
}

void *sub_227121164(unint64_t a1)
{
  v2 = v1;
  v30 = sub_2276640A0();
  v32 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v29 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >> 62)
  {
    goto LABEL_26;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_22766CD20())
  {
    v6 = MEMORY[0x277D84F90];
    if (!i)
    {
      return v6;
    }

    v36 = MEMORY[0x277D84F90];
    result = sub_226F1F7C8(0, i & ~(i >> 63), 0);
    if (i < 0)
    {
      break;
    }

    v8 = 0;
    v31 = a1 & 0xC000000000000001;
    v6 = v36;
    v25 = a1 & 0xFFFFFFFFFFFFFF8;
    v26 = v32 + 32;
    v27 = i;
    v28 = a1;
    while (!__OFADD__(v8, 1))
    {
      if (v31)
      {
        v9 = MEMORY[0x22AA991A0](v8, a1);
      }

      else
      {
        if (v8 >= *(v25 + 16))
        {
          goto LABEL_25;
        }

        v9 = *(a1 + 8 * v8 + 32);
      }

      v10 = v9;
      v11 = [v9 sessionIdentifier];
      if (!v11)
      {
        goto LABEL_21;
      }

      v12 = v11;
      v35 = v8 + 1;
      sub_22766C000();

      v13 = [v10 workoutIdentifier];
      if (!v13)
      {

LABEL_21:
        v23 = sub_227664DD0();
        sub_227125F6C(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
        swift_allocError();
        (*(*(v23 - 8) + 104))(v24, *MEMORY[0x277D51028], v23);
        swift_willThrow();

        return v6;
      }

      v14 = v13;
      v34 = v6;
      v15 = v2;
      sub_22766C000();
      v33 = v16;

      v17 = [v10 scores];
      if (v17)
      {
        v18 = v17;
        sub_227662590();
      }

      v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA928, &qword_22767A150);
      sub_2271058F4();
      v6 = v19;
      sub_2276683D0();
      v2 = v15;
      if (v15)
      {

        return v6;
      }

      [v10 workoutDuration];
      [v10 activityType];
      v20 = v29;
      sub_227664060();

      v6 = v34;
      v36 = v34;
      v22 = *(v34 + 16);
      v21 = *(v34 + 24);
      if (v22 >= v21 >> 1)
      {
        sub_226F1F7C8((v21 > 1), v22 + 1, 1);
        v6 = v36;
      }

      *(v6 + 16) = v22 + 1;
      (*(v32 + 32))(v6 + ((*(v32 + 80) + 32) & ~*(v32 + 80)) + *(v32 + 72) * v22, v20, v30);
      ++v8;
      a1 = v28;
      if (v35 == v27)
      {
        return v6;
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    ;
  }

  __break(1u);
  return result;
}

void *sub_22712158C(unint64_t a1)
{
  v2 = v1;
  v4 = sub_227662750();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v39 = v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v41 = v30 - v8;
  MEMORY[0x28223BE20](v9);
  v11 = v30 - v10;
  v38 = sub_2276650A0();
  v42 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v13 = v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >> 62)
  {
    goto LABEL_25;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_22766CD20())
  {
    v15 = MEMORY[0x277D84F90];
    if (!i)
    {
      return v15;
    }

    v45 = v11;
    v46 = MEMORY[0x277D84F90];
    result = sub_226F1F848(0, i & ~(i >> 63), 0);
    if (i < 0)
    {
      break;
    }

    v34 = i;
    v35 = a1;
    v17 = 0;
    v40 = a1 & 0xC000000000000001;
    v18 = v45;
    v15 = v46;
    v30[1] = v2;
    v31 = a1 & 0xFFFFFFFFFFFFFF8;
    v36 = (v5 + 32);
    v37 = (v5 + 8);
    v32 = v42 + 32;
    v33 = (v5 + 16);
    while (1)
    {
      v2 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v40)
      {
        v19 = MEMORY[0x22AA991A0](v17, a1);
      }

      else
      {
        if (v17 >= *(v31 + 16))
        {
          goto LABEL_24;
        }

        v19 = *(a1 + 8 * v17 + 32);
      }

      v5 = v19;
      v20 = [v19 tipIdentifier];
      if (!v20)
      {
        goto LABEL_21;
      }

      v21 = v20;
      v44 = v15;
      sub_22766C000();

      v22 = [v5 date];
      if (!v22)
      {

LABEL_20:
        v15 = v44;
LABEL_21:
        v28 = sub_227664DD0();
        sub_227125F6C(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
        swift_allocError();
        (*(*(v28 - 8) + 104))(v29, *MEMORY[0x277D51028], v28);
        swift_willThrow();

        return v15;
      }

      v23 = v22;
      v43 = v17 + 1;
      v24 = v41;
      sub_227662710();

      (*v36)(v18, v24, v4);
      v25 = [v5 journalIdentifier];
      if (!v25)
      {

        (*v37)(v18, v4);
        goto LABEL_20;
      }

      v26 = v25;
      sub_22766C000();

      (*v33)(v39, v45, v4);
      [v5 elapsedTime];
      [v5 totalTime];
      v18 = v45;
      sub_227665080();

      (*v37)(v18, v4);
      v15 = v44;
      v46 = v44;
      v11 = *(v44 + 16);
      v27 = *(v44 + 24);
      if (v11 >= v27 >> 1)
      {
        sub_226F1F848((v27 > 1), v11 + 1, 1);
        v18 = v45;
        v15 = v46;
      }

      *(v15 + 16) = v11 + 1;
      (*(v42 + 32))(v15 + ((*(v42 + 80) + 32) & ~*(v42 + 80)) + *(v42 + 72) * v11, v13, v38);
      ++v17;
      a1 = v35;
      if (v43 == v34)
      {
        return v15;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    ;
  }

  __break(1u);
  return result;
}

void *sub_227121AA8(unint64_t a1)
{
  v2 = v1;
  v4 = sub_227666330();
  v5 = *(v4 - 8);
  v28 = v4;
  v29 = v5;
  MEMORY[0x28223BE20](v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >> 62)
  {
    goto LABEL_20;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_22766CD20())
  {
    v9 = MEMORY[0x277D84F90];
    if (!i)
    {
      return v9;
    }

    v30 = MEMORY[0x277D84F90];
    result = sub_226F1F888(0, i & ~(i >> 63), 0);
    if (i < 0)
    {
      break;
    }

    v11 = 0;
    v26 = v7;
    v27 = a1 & 0xC000000000000001;
    v9 = v30;
    v22 = v2;
    v23 = a1 & 0xFFFFFFFFFFFFFF8;
    v24 = v29 + 32;
    v25 = a1;
    while (1)
    {
      v12 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v27)
      {
        v13 = MEMORY[0x22AA991A0](v11, a1);
      }

      else
      {
        if (v11 >= *(v23 + 16))
        {
          goto LABEL_19;
        }

        v13 = *(a1 + 8 * v11 + 32);
      }

      v14 = v13;
      v15 = [v13 identifier];
      if (!v15)
      {
        v20 = sub_227664DD0();
        sub_227125F6C(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
        swift_allocError();
        (*(*(v20 - 8) + 104))(v21, *MEMORY[0x277D51028], v20);
        swift_willThrow();

        return v9;
      }

      v16 = v15;
      sub_22766C000();
      v2 = v17;

      [v14 timestamp];
      v18 = v26;
      sub_227666300();

      v30 = v9;
      v7 = *(v9 + 16);
      v19 = *(v9 + 24);
      if (v7 >= v19 >> 1)
      {
        sub_226F1F888((v19 > 1), v7 + 1, 1);
        v9 = v30;
      }

      *(v9 + 16) = v7 + 1;
      (*(v29 + 32))(v9 + ((*(v29 + 80) + 32) & ~*(v29 + 80)) + *(v29 + 72) * v7, v18, v28);
      ++v11;
      a1 = v25;
      if (v12 == i)
      {
        return v9;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    ;
  }

  __break(1u);
  return result;
}

void *sub_227121DB0(unint64_t a1)
{
  v2 = v1;
  v4 = sub_2276668F0();
  v5 = *(v4 - 8);
  v28 = v4;
  v29 = v5;
  MEMORY[0x28223BE20](v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >> 62)
  {
    goto LABEL_20;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_22766CD20())
  {
    v9 = MEMORY[0x277D84F90];
    if (!i)
    {
      return v9;
    }

    v30 = MEMORY[0x277D84F90];
    result = sub_226F1FAA8(0, i & ~(i >> 63), 0);
    if (i < 0)
    {
      break;
    }

    v11 = 0;
    v26 = v7;
    v27 = a1 & 0xC000000000000001;
    v9 = v30;
    v22 = v2;
    v23 = a1 & 0xFFFFFFFFFFFFFF8;
    v24 = v29 + 32;
    v25 = a1;
    while (1)
    {
      v12 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v27)
      {
        v13 = MEMORY[0x22AA991A0](v11, a1);
      }

      else
      {
        if (v11 >= *(v23 + 16))
        {
          goto LABEL_19;
        }

        v13 = *(a1 + 8 * v11 + 32);
      }

      v14 = v13;
      v15 = [v13 languageIdentifier];
      if (!v15)
      {
        v20 = sub_227664DD0();
        sub_227125F6C(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
        swift_allocError();
        (*(*(v20 - 8) + 104))(v21, *MEMORY[0x277D51028], v20);
        swift_willThrow();

        return v9;
      }

      v16 = v15;
      sub_22766C000();
      v2 = v17;

      [v14 machTimestamp];
      v18 = v26;
      sub_2276668D0();

      v30 = v9;
      v7 = *(v9 + 16);
      v19 = *(v9 + 24);
      if (v7 >= v19 >> 1)
      {
        sub_226F1FAA8((v19 > 1), v7 + 1, 1);
        v9 = v30;
      }

      *(v9 + 16) = v7 + 1;
      (*(v29 + 32))(v9 + ((*(v29 + 80) + 32) & ~*(v29 + 80)) + *(v29 + 72) * v7, v18, v28);
      ++v11;
      a1 = v25;
      if (v12 == i)
      {
        return v9;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    ;
  }

  __break(1u);
  return result;
}

void *sub_2271220B8(unint64_t a1)
{
  v2 = v1;
  v25 = sub_227667E50();
  v27 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v5 = v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >> 62)
  {
    goto LABEL_22;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_22766CD20())
  {
    v7 = MEMORY[0x277D84F90];
    if (!i)
    {
      return v7;
    }

    v29 = MEMORY[0x277D84F90];
    result = sub_226F1FBC8(0, i & ~(i >> 63), 0);
    if (i < 0)
    {
      break;
    }

    v9 = 0;
    v26 = a1 & 0xC000000000000001;
    v7 = v29;
    v20[1] = v2;
    v21 = a1 & 0xFFFFFFFFFFFFFF8;
    v22 = v27 + 32;
    v23 = i;
    v24 = a1;
    while (1)
    {
      v10 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      if (v26)
      {
        v11 = MEMORY[0x22AA991A0](v9, a1);
      }

      else
      {
        if (v9 >= *(v21 + 16))
        {
          goto LABEL_21;
        }

        v11 = *(a1 + 8 * v9 + 32);
      }

      v12 = v11;
      v13 = [v11 workoutIdentifier];
      if (!v13)
      {
        goto LABEL_18;
      }

      v14 = v13;
      v28 = v9;
      sub_22766C000();

      v15 = [v12 sessionIdentifier];
      if (!v15)
      {

LABEL_18:
        v18 = sub_227664DD0();
        sub_227125F6C(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
        swift_allocError();
        (*(*(v18 - 8) + 104))(v19, *MEMORY[0x277D51028], v18);
        swift_willThrow();

        return v7;
      }

      v16 = v15;
      sub_22766C000();

      sub_227667E30();
      v29 = v7;
      v2 = *(v7 + 16);
      v17 = *(v7 + 24);
      if (v2 >= v17 >> 1)
      {
        sub_226F1FBC8((v17 > 1), v2 + 1, 1);
        v7 = v29;
      }

      *(v7 + 16) = v2 + 1;
      (*(v27 + 32))(v7 + ((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * v2, v5, v25);
      v9 = v28 + 1;
      a1 = v24;
      if (v10 == v23)
      {
        return v7;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    ;
  }

  __break(1u);
  return result;
}

void *sub_227122404(unint64_t a1)
{
  v2 = v1;
  v4 = sub_227662750();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v42 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v44 = &v33 - v8;
  MEMORY[0x28223BE20](v9);
  v11 = &v33 - v10;
  v41 = sub_227666650();
  v45 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >> 62)
  {
    goto LABEL_24;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_22766CD20())
  {
    v15 = MEMORY[0x277D84F90];
    if (!i)
    {
      return v15;
    }

    v48 = v11;
    v49 = MEMORY[0x277D84F90];
    result = sub_226F200E8(0, i & ~(i >> 63), 0);
    if (i < 0)
    {
      break;
    }

    v47 = v2;
    v39 = v4;
    v4 = 0;
    v43 = a1 & 0xC000000000000001;
    v15 = v49;
    v37 = a1;
    v38 = (v5 + 32);
    v35 = (v5 + 16);
    v36 = i;
    v40 = (v5 + 8);
    v33 = a1 & 0xFFFFFFFFFFFFFF8;
    v34 = v45 + 32;
    v11 = v48;
    while (1)
    {
      v2 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      if (v43)
      {
        v17 = MEMORY[0x22AA991A0](v4, a1);
      }

      else
      {
        if (v4 >= *(v33 + 16))
        {
          goto LABEL_23;
        }

        v17 = *(a1 + 8 * v4 + 32);
      }

      v18 = v17;
      v19 = [v17 identifier];
      if (!v19)
      {
        goto LABEL_19;
      }

      v20 = v19;
      v21 = v15;
      v15 = sub_22766C000();

      v22 = [v18 completedDate];
      if (!v22)
      {

        v15 = v21;
LABEL_19:
        v31 = sub_227664DD0();
        sub_227125F6C(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
        swift_allocError();
        (*(*(v31 - 8) + 104))(v32, *MEMORY[0x277D51028], v31);
        swift_willThrow();

        return v15;
      }

      v23 = v22;
      v46 = v4 + 1;
      v24 = v44;
      sub_227662710();

      v25 = v24;
      v26 = v39;
      (*v38)(v11, v25, v39);
      v27 = [v18 selectedModalityIdentifiers];
      v28 = v47;
      sub_2274B47BC(v27);
      v47 = v28;
      if (v28)
      {
        (*v40)(v11, v26);

        return v15;
      }

      (*v35)(v42, v48, v26);
      v11 = v48;
      sub_227666610();

      (*v40)(v11, v26);
      v15 = v21;
      v49 = v21;
      v30 = *(v21 + 16);
      v29 = *(v21 + 24);
      v5 = v30 + 1;
      if (v30 >= v29 >> 1)
      {
        sub_226F200E8((v29 > 1), v30 + 1, 1);
        v11 = v48;
        v15 = v49;
      }

      *(v15 + 16) = v5;
      (*(v45 + 32))(v15 + ((*(v45 + 80) + 32) & ~*(v45 + 80)) + *(v45 + 72) * v30, v13, v41);
      ++v4;
      a1 = v37;
      if (v46 == v36)
      {
        return v15;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    ;
  }

  __break(1u);
  return result;
}

char *sub_227122904(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_22766CD20();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x277D84F90];
  if (!v2)
  {
    return v3;
  }

  v11 = MEMORY[0x277D84F90];
  result = sub_226F1EED0(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v5 = 0;
    v3 = v11;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x22AA991A0](v5, a1);
      }

      else
      {
        v6 = *(a1 + 8 * v5 + 32);
      }

      v7 = v6;
      v8 = [v6 value];

      v10 = *(v11 + 16);
      v9 = *(v11 + 24);
      if (v10 >= v9 >> 1)
      {
        sub_226F1EED0((v9 > 1), v10 + 1, 1);
      }

      ++v5;
      *(v11 + 16) = v10 + 1;
      *(v11 + 8 * v10 + 32) = v8 & ~(v8 >> 63);
    }

    while (v2 != v5);
    return v3;
  }

  __break(1u);
  return result;
}

void *sub_227122A4C(unint64_t a1)
{
  v2 = v1;
  v21 = sub_227665100();
  v4 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >> 62)
  {
    goto LABEL_15;
  }

  for (i = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = v18)
  {
    v9 = MEMORY[0x277D84F90];
    if (!i)
    {
      return v9;
    }

    v10 = v5;
    v22 = MEMORY[0x277D84F90];
    result = sub_226F20208(0, i & ~(i >> 63), 0);
    if (i < 0)
    {
      break;
    }

    v12 = 0;
    v13 = v10;
    v19 = v2;
    v20 = v10 & 0xC000000000000001;
    v9 = v22;
    while (1)
    {
      v14 = v20 ? MEMORY[0x22AA991A0](v12) : *(v13 + 8 * v12 + 32);
      v15 = v14;
      if (([v14 activityType] & 0x80000000) != 0)
      {
        break;
      }

      [v15 activeCalorieRate];
      [v15 basalCalorieRate];
      sub_2276650B0();

      v22 = v9;
      v2 = *(v9 + 16);
      v16 = *(v9 + 24);
      if (v2 >= v16 >> 1)
      {
        sub_226F20208((v16 > 1), v2 + 1, 1);
        v9 = v22;
      }

      ++v12;
      *(v9 + 16) = v2 + 1;
      (*(v4 + 32))(v9 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v2, v7, v21);
      v13 = v10;
      if (i == v12)
      {
        return v9;
      }
    }

    __break(1u);
LABEL_15:
    v17 = v5;
    v18 = sub_22766CD20();
    v5 = v17;
  }

  __break(1u);
  return result;
}

void *sub_227122C98(unint64_t a1)
{
  v2 = v1;
  v60 = sub_227662750();
  v4 = *(v60 - 8);
  MEMORY[0x28223BE20](v60);
  v59 = v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v58 = v44 - v7;
  MEMORY[0x28223BE20](v8);
  v57 = v44 - v9;
  v10 = sub_2276627D0();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v56 = v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v62 = v44 - v14;
  MEMORY[0x28223BE20](v15);
  v17 = v44 - v16;
  v55 = sub_227667440();
  v63 = *(v55 - 8);
  MEMORY[0x28223BE20](v55);
  v20 = v44 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >> 62)
  {
    goto LABEL_22;
  }

  for (i = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = v43)
  {
    v22 = MEMORY[0x277D84F90];
    if (!i)
    {
      return v22;
    }

    v23 = v18;
    v66 = MEMORY[0x277D84F90];
    result = sub_226F200A8(0, i & ~(i >> 63), 0);
    if (i < 0)
    {
      break;
    }

    v44[1] = v2;
    v2 = 0;
    v25 = v23;
    v61 = v23 & 0xC000000000000001;
    v22 = v66;
    v49 = (v11 + 16);
    v50 = (v4 + 32);
    v47 = (v4 + 8);
    v48 = (v4 + 16);
    v53 = (v11 + 8);
    v54 = (v11 + 32);
    v45 = v23 & 0xFFFFFFFFFFFFFF8;
    v46 = v63 + 32;
    v51 = i;
    v52 = v23;
    while (1)
    {
      v4 = v2 + 1;
      if (__OFADD__(v2, 1))
      {
        break;
      }

      if (v61)
      {
        v26 = MEMORY[0x22AA991A0](v2, v25);
      }

      else
      {
        if (v2 >= *(v45 + 16))
        {
          goto LABEL_21;
        }

        v26 = *(v25 + 8 * v2 + 32);
      }

      v27 = v26;
      v28 = [v26 planIdentifier];
      if (!v28)
      {
        goto LABEL_18;
      }

      v29 = v28;
      v65 = v2 + 1;
      v30 = v62;
      sub_2276627B0();

      (*v54)(v17, v30, v10);
      v31 = [v27 dateViewed];
      if (!v31)
      {
        (*v53)(v17, v10);
LABEL_18:
        v40 = sub_227664DD0();
        sub_227125F6C(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
        swift_allocError();
        (*(*(v40 - 8) + 104))(v41, *MEMORY[0x277D51028], v40);
        swift_willThrow();

        return v22;
      }

      v32 = v31;
      v64 = v2;
      v33 = v58;
      sub_227662710();

      v34 = v10;
      v35 = v57;
      v36 = v60;
      (*v50)(v57, v33, v60);
      (*v49)(v56, v17, v34);
      (*v48)(v59, v35, v36);
      sub_227667420();

      v37 = v35;
      v10 = v34;
      (*v47)(v37, v36);
      (*v53)(v17, v34);
      v66 = v22;
      v39 = *(v22 + 16);
      v38 = *(v22 + 24);
      v11 = v39 + 1;
      if (v39 >= v38 >> 1)
      {
        sub_226F200A8((v38 > 1), v39 + 1, 1);
        v22 = v66;
      }

      *(v22 + 16) = v11;
      (*(v63 + 32))(v22 + ((*(v63 + 80) + 32) & ~*(v63 + 80)) + *(v63 + 72) * v39, v20, v55);
      v2 = v64 + 1;
      v25 = v52;
      if (v65 == v51)
      {
        return v22;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    v42 = v18;
    v43 = sub_22766CD20();
    v18 = v42;
  }

  __break(1u);
  return result;
}

void *sub_227123294(unint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9BA0, &qword_2276754B8);
  MEMORY[0x28223BE20](v4 - 8);
  v50 = v32 - v5;
  v45 = sub_227668D10();
  v6 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v43 = v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v42 = v32 - v9;
  v41 = sub_227666F20();
  v46 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v11 = v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >> 62)
  {
    goto LABEL_25;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_22766CD20())
  {
    v13 = MEMORY[0x277D84F90];
    if (!i)
    {
      return v13;
    }

    v53 = MEMORY[0x277D84F90];
    result = sub_226F20308(0, i & ~(i >> 63), 0);
    if (i < 0)
    {
      break;
    }

    v32[1] = v2;
    v15 = 0;
    v13 = v53;
    v44 = a1 & 0xC000000000000001;
    v33 = a1 & 0xFFFFFFFFFFFFFF8;
    v40 = (v6 + 48);
    v36 = (v6 + 16);
    v37 = (v6 + 32);
    v35 = (v6 + 8);
    v34 = v46 + 32;
    v38 = i;
    v39 = a1;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v44)
      {
        v16 = MEMORY[0x22AA991A0](v15, a1);
      }

      else
      {
        if (v15 >= *(v33 + 16))
        {
          goto LABEL_24;
        }

        v16 = *(a1 + 8 * v15 + 32);
      }

      v17 = v16;
      v18 = [v16 behavior];
      if (!v18)
      {
        goto LABEL_21;
      }

      v19 = v18;
      v48 = v15;
      v20 = sub_22766C000();
      v2 = v21;

      v49 = v17;
      v22 = [v17 modalityConstraint];
      if (!v22)
      {

LABEL_20:
        v17 = v49;
LABEL_21:
        v30 = sub_227664DD0();
        sub_227125F6C(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
        swift_allocError();
        (*(*(v30 - 8) + 104))(v31, *MEMORY[0x277D51028], v30);
        swift_willThrow();

        return v13;
      }

      v23 = v22;
      v47 = v6;
      v24 = v13;
      sub_22766C000();
      v25 = v50;

      sub_227668CF0();
      v26 = v45;
      if ((*v40)(v25, 1, v45) == 1)
      {

        sub_226E97D1C(v50, &qword_27D7B9BA0, &qword_2276754B8);
        v13 = v24;
        goto LABEL_20;
      }

      v27 = v42;
      (*v37)(v42, v50, v26);
      v51 = v20;
      v52 = v2;
      sub_227125D94();
      sub_227663AE0();
      (*v36)(v43, v27, v26);
      sub_227666F00();

      (*v35)(v27, v26);
      v13 = v24;
      v53 = v24;
      v29 = *(v24 + 16);
      v28 = *(v24 + 24);
      if (v29 >= v28 >> 1)
      {
        sub_226F20308((v28 > 1), v29 + 1, 1);
        v13 = v53;
      }

      *(v13 + 16) = v29 + 1;
      (*(v46 + 32))(v13 + ((*(v46 + 80) + 32) & ~*(v46 + 80)) + *(v46 + 72) * v29, v11, v41);
      v15 = v48 + 1;
      a1 = v39;
      if (v47 == v38)
      {
        return v13;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    ;
  }

  __break(1u);
  return result;
}

void *sub_227123814(unint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9BA0, &qword_2276754B8);
  MEMORY[0x28223BE20](v4 - 8);
  v50 = v32 - v5;
  v45 = sub_227668D10();
  v6 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v43 = v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v42 = v32 - v9;
  v41 = sub_227667170();
  v46 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v11 = v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >> 62)
  {
    goto LABEL_25;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_22766CD20())
  {
    v13 = MEMORY[0x277D84F90];
    if (!i)
    {
      return v13;
    }

    v53 = MEMORY[0x277D84F90];
    result = sub_226F20328(0, i & ~(i >> 63), 0);
    if (i < 0)
    {
      break;
    }

    v32[1] = v2;
    v15 = 0;
    v13 = v53;
    v44 = a1 & 0xC000000000000001;
    v33 = a1 & 0xFFFFFFFFFFFFFF8;
    v40 = (v6 + 48);
    v36 = (v6 + 16);
    v37 = (v6 + 32);
    v35 = (v6 + 8);
    v34 = v46 + 32;
    v38 = i;
    v39 = a1;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v44)
      {
        v16 = MEMORY[0x22AA991A0](v15, a1);
      }

      else
      {
        if (v15 >= *(v33 + 16))
        {
          goto LABEL_24;
        }

        v16 = *(a1 + 8 * v15 + 32);
      }

      v17 = v16;
      v18 = [v16 behavior];
      if (!v18)
      {
        goto LABEL_21;
      }

      v19 = v18;
      v48 = v15;
      v20 = sub_22766C000();
      v2 = v21;

      v49 = v17;
      v22 = [v17 modalityConstraint];
      if (!v22)
      {

LABEL_20:
        v17 = v49;
LABEL_21:
        v30 = sub_227664DD0();
        sub_227125F6C(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
        swift_allocError();
        (*(*(v30 - 8) + 104))(v31, *MEMORY[0x277D51028], v30);
        swift_willThrow();

        return v13;
      }

      v23 = v22;
      v47 = v6;
      v24 = v13;
      sub_22766C000();
      v25 = v50;

      sub_227668CF0();
      v26 = v45;
      if ((*v40)(v25, 1, v45) == 1)
      {

        sub_226E97D1C(v50, &qword_27D7B9BA0, &qword_2276754B8);
        v13 = v24;
        goto LABEL_20;
      }

      v27 = v42;
      (*v37)(v42, v50, v26);
      v51 = v20;
      v52 = v2;
      sub_227125D40();
      sub_227663AE0();
      (*v36)(v43, v27, v26);
      sub_227667150();

      (*v35)(v27, v26);
      v13 = v24;
      v53 = v24;
      v29 = *(v24 + 16);
      v28 = *(v24 + 24);
      if (v29 >= v28 >> 1)
      {
        sub_226F20328((v28 > 1), v29 + 1, 1);
        v13 = v53;
      }

      *(v13 + 16) = v29 + 1;
      (*(v46 + 32))(v13 + ((*(v46 + 80) + 32) & ~*(v46 + 80)) + *(v46 + 72) * v29, v11, v41);
      v15 = v48 + 1;
      a1 = v39;
      if (v47 == v38)
      {
        return v13;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    ;
  }

  __break(1u);
  return result;
}

void *sub_227123D94(unint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9BA0, &qword_2276754B8);
  MEMORY[0x28223BE20](v4 - 8);
  v50 = v32 - v5;
  v45 = sub_227668D10();
  v6 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v43 = v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v42 = v32 - v9;
  v41 = sub_2276675F0();
  v46 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v11 = v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >> 62)
  {
    goto LABEL_25;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_22766CD20())
  {
    v13 = MEMORY[0x277D84F90];
    if (!i)
    {
      return v13;
    }

    v53 = MEMORY[0x277D84F90];
    result = sub_226F20348(0, i & ~(i >> 63), 0);
    if (i < 0)
    {
      break;
    }

    v32[1] = v2;
    v15 = 0;
    v13 = v53;
    v44 = a1 & 0xC000000000000001;
    v33 = a1 & 0xFFFFFFFFFFFFFF8;
    v40 = (v6 + 48);
    v36 = (v6 + 16);
    v37 = (v6 + 32);
    v35 = (v6 + 8);
    v34 = v46 + 32;
    v38 = i;
    v39 = a1;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v44)
      {
        v16 = MEMORY[0x22AA991A0](v15, a1);
      }

      else
      {
        if (v15 >= *(v33 + 16))
        {
          goto LABEL_24;
        }

        v16 = *(a1 + 8 * v15 + 32);
      }

      v17 = v16;
      v18 = [v16 behavior];
      if (!v18)
      {
        goto LABEL_21;
      }

      v19 = v18;
      v48 = v15;
      v20 = sub_22766C000();
      v2 = v21;

      v49 = v17;
      v22 = [v17 modalityConstraint];
      if (!v22)
      {

LABEL_20:
        v17 = v49;
LABEL_21:
        v30 = sub_227664DD0();
        sub_227125F6C(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
        swift_allocError();
        (*(*(v30 - 8) + 104))(v31, *MEMORY[0x277D51028], v30);
        swift_willThrow();

        return v13;
      }

      v23 = v22;
      v47 = v6;
      v24 = v13;
      sub_22766C000();
      v25 = v50;

      sub_227668CF0();
      v26 = v45;
      if ((*v40)(v25, 1, v45) == 1)
      {

        sub_226E97D1C(v50, &qword_27D7B9BA0, &qword_2276754B8);
        v13 = v24;
        goto LABEL_20;
      }

      v27 = v42;
      (*v37)(v42, v50, v26);
      v51 = v20;
      v52 = v2;
      sub_227125CEC();
      sub_227663AE0();
      (*v36)(v43, v27, v26);
      sub_2276675D0();

      (*v35)(v27, v26);
      v13 = v24;
      v53 = v24;
      v29 = *(v24 + 16);
      v28 = *(v24 + 24);
      if (v29 >= v28 >> 1)
      {
        sub_226F20348((v28 > 1), v29 + 1, 1);
        v13 = v53;
      }

      *(v13 + 16) = v29 + 1;
      (*(v46 + 32))(v13 + ((*(v46 + 80) + 32) & ~*(v46 + 80)) + *(v46 + 72) * v29, v11, v41);
      v15 = v48 + 1;
      a1 = v39;
      if (v47 == v38)
      {
        return v13;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    ;
  }

  __break(1u);
  return result;
}

void *sub_227124314(unint64_t a1)
{
  v2 = v1;
  v53 = sub_227662750();
  v4 = *(v53 - 8);
  MEMORY[0x28223BE20](v53);
  v52 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v51 = &v40 - v7;
  MEMORY[0x28223BE20](v8);
  v50 = &v40 - v9;
  v49 = sub_227669360();
  v55 = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v11 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >> 62)
  {
    goto LABEL_24;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_22766CD20())
  {
    v13 = MEMORY[0x277D84F90];
    if (!i)
    {
      return v13;
    }

    v62 = MEMORY[0x277D84F90];
    result = sub_226F20488(0, i & ~(i >> 63), 0);
    if (i < 0)
    {
      break;
    }

    v40 = v2;
    v15 = 0;
    v13 = v62;
    v54 = a1 & 0xC000000000000001;
    v41 = a1 & 0xFFFFFFFFFFFFFF8;
    v45 = (v4 + 16);
    v46 = (v4 + 32);
    v44 = (v4 + 8);
    v43 = v55 + 32;
    v47 = i;
    v48 = a1;
    v42 = v11;
    while (1)
    {
      v2 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v54)
      {
        v16 = MEMORY[0x22AA991A0](v15, a1);
      }

      else
      {
        if (v15 >= *(v41 + 16))
        {
          goto LABEL_23;
        }

        v16 = *(a1 + 8 * v15 + 32);
      }

      v17 = v16;
      v18 = [v16 referenceIdentifier];
      if (!v18)
      {
        goto LABEL_20;
      }

      v19 = v18;
      v59 = v15;
      sub_22766C000();
      v21 = v20;

      v22 = [v17 referenceType];
      if (!v22)
      {
        goto LABEL_19;
      }

      v23 = v22;
      v24 = sub_22766C000();
      v26 = v25;

      v27 = [v17 dateBookmarked];
      if (!v27)
      {

LABEL_19:

LABEL_20:
        v38 = sub_227664DD0();
        sub_227125F6C(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
        swift_allocError();
        (*(*(v38 - 8) + 104))(v39, *MEMORY[0x277D51028], v38);
        swift_willThrow();

        return v13;
      }

      v28 = v27;
      v57 = v15 + 1;
      v58 = v13;
      v29 = v51;
      sub_227662710();

      v30 = *v46;
      v56 = v21;
      v31 = v50;
      v32 = v29;
      v33 = v53;
      v30(v50, v32, v53);
      v60 = v24;
      v61 = v26;
      sub_227125DE8();
      sub_227663AE0();
      v34 = v17;
      v4 = v52;
      (*v45)(v52, v31, v33);
      sub_227669340();

      v35 = v33;
      v13 = v58;
      (*v44)(v31, v35);
      v62 = v13;
      v37 = *(v13 + 16);
      v36 = *(v13 + 24);
      if (v37 >= v36 >> 1)
      {
        sub_226F20488((v36 > 1), v37 + 1, 1);
        v13 = v62;
      }

      *(v13 + 16) = v37 + 1;
      v11 = v42;
      (*(v55 + 32))(v13 + ((*(v55 + 80) + 32) & ~*(v55 + 80)) + *(v55 + 72) * v37, v42, v49);
      v15 = v59 + 1;
      a1 = v48;
      if (v57 == v47)
      {
        return v13;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    ;
  }

  __break(1u);
  return result;
}

void *sub_22712484C(unint64_t a1)
{
  v2 = v1;
  v30 = sub_227666710();
  v4 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >> 62)
  {
    goto LABEL_20;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_22766CD20())
  {
    v8 = MEMORY[0x277D84F90];
    if (!i)
    {
      return v8;
    }

    v33 = MEMORY[0x277D84F90];
    result = sub_226F1FF48(0, i & ~(i >> 63), 0);
    if (i < 0)
    {
      break;
    }

    v10 = 0;
    v8 = v33;
    v28 = v6;
    v29 = a1 & 0xC000000000000001;
    v24 = v2;
    v25 = a1 & 0xFFFFFFFFFFFFFF8;
    v26 = v4 + 32;
    v27 = i;
    while (1)
    {
      v11 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v29)
      {
        v12 = MEMORY[0x22AA991A0](v10, a1);
      }

      else
      {
        if (v10 >= *(v25 + 16))
        {
          goto LABEL_19;
        }

        v12 = *(a1 + 8 * v10 + 32);
      }

      v13 = v12;
      v14 = [v12 feature];
      if (!v14)
      {
        v22 = sub_227664DD0();
        sub_227125F6C(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
        swift_allocError();
        (*(*(v22 - 8) + 104))(v23, *MEMORY[0x277D51028], v22);
        swift_willThrow();

        return v8;
      }

      v15 = v14;
      v16 = a1;
      v17 = sub_22766C000();
      v19 = v18;

      v31 = v17;
      v32 = v19;
      sub_227071084();
      sub_227663AE0();
      v2 = v28;
      sub_2276666F0();

      v33 = v8;
      v21 = *(v8 + 16);
      v20 = *(v8 + 24);
      v6 = (v21 + 1);
      if (v21 >= v20 >> 1)
      {
        sub_226F1FF48((v20 > 1), v21 + 1, 1);
        v8 = v33;
      }

      *(v8 + 16) = v6;
      (*(v4 + 32))(v8 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v21, v2, v30);
      ++v10;
      a1 = v16;
      if (v11 == v27)
      {
        return v8;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    ;
  }

  __break(1u);
  return result;
}

void *sub_227124B78(unint64_t a1)
{
  v2 = sub_227662190();
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_2276658B0();
  v34 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v31 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >> 62)
  {
    goto LABEL_24;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_22766CD20())
  {
    v7 = MEMORY[0x277D84F90];
    if (!i)
    {
      return v7;
    }

    v38 = MEMORY[0x277D84F90];
    result = sub_226F1FF28(0, i & ~(i >> 63), 0);
    if (i < 0)
    {
      break;
    }

    v9 = 0;
    v33 = a1 & 0xC000000000000001;
    v7 = v38;
    v27 = a1 & 0xFFFFFFFFFFFFFF8;
    v28 = a1;
    v29 = v34 + 32;
    v30 = i;
    while (!__OFADD__(v9, 1))
    {
      if (v33)
      {
        v10 = MEMORY[0x22AA991A0](v9, a1);
      }

      else
      {
        if (v9 >= *(v27 + 16))
        {
          goto LABEL_23;
        }

        v10 = *(a1 + 8 * v9 + 32);
      }

      v11 = v10;
      v12 = [v10 identifier];
      if (!v12)
      {
        goto LABEL_19;
      }

      v13 = v12;
      v36 = v7;
      v14 = v4;
      sub_22766C000();
      v7 = v15;

      v16 = [v11 dateReleased];
      if (!v16)
      {

        v7 = v36;
LABEL_19:
        v23 = v11;
        v24 = sub_227664DD0();
        sub_227125F6C(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
        swift_allocError();
        (*(*(v24 - 8) + 104))(v25, *MEMORY[0x277D51028], v24);
        swift_willThrow();

        return v7;
      }

      v17 = v16;
      v35 = v9 + 1;
      sub_22766C000();

      v18 = [v11 categoryIdentifiers];
      v19 = v37;
      sub_226ED4548(v18);
      if (v19)
      {

        return v7;
      }

      sub_227662100();
      v37 = 0;
      v20 = v31;
      sub_227665870();

      v7 = v36;
      v38 = v36;
      v22 = *(v36 + 16);
      v21 = *(v36 + 24);
      v4 = v14;
      if (v22 >= v21 >> 1)
      {
        sub_226F1FF28((v21 > 1), v22 + 1, 1);
        v7 = v38;
      }

      *(v7 + 16) = v22 + 1;
      (*(v34 + 32))(v7 + ((*(v34 + 80) + 32) & ~*(v34 + 80)) + *(v34 + 72) * v22, v20, v32);
      ++v9;
      a1 = v28;
      if (v35 == v30)
      {
        return v7;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    ;
  }

  __break(1u);
  return result;
}

void *sub_227124FB0(unint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9690, qword_227670B50);
  MEMORY[0x28223BE20](v4 - 8);
  v38 = v27 - v5;
  v37 = sub_227662750();
  v6 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v36 = v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_2276682A0();
  v40 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v9 = v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >> 62)
  {
    goto LABEL_22;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_22766CD20())
  {
    v11 = MEMORY[0x277D84F90];
    if (!i)
    {
      return v11;
    }

    v42 = MEMORY[0x277D84F90];
    result = sub_226F1FAC8(0, i & ~(i >> 63), 0);
    if (i < 0)
    {
      break;
    }

    v13 = 0;
    v11 = v42;
    v39 = a1 & 0xC000000000000001;
    v27[1] = v2;
    v28 = a1 & 0xFFFFFFFFFFFFFF8;
    v31 = (v6 + 56);
    v32 = (v6 + 16);
    v29 = v40 + 32;
    v30 = (v6 + 8);
    v33 = i;
    v34 = a1;
    while (!__OFADD__(v13, 1))
    {
      if (v39)
      {
        v14 = MEMORY[0x22AA991A0](v13, a1);
      }

      else
      {
        if (v13 >= *(v28 + 16))
        {
          goto LABEL_21;
        }

        v14 = *(a1 + 8 * v13 + 32);
      }

      v15 = v14;
      v16 = [v14 templateUniqueName];
      if (!v16)
      {
        goto LABEL_18;
      }

      v17 = v16;
      sub_22766C000();

      v18 = [v15 datePresented];
      if (!v18)
      {

LABEL_18:
        v25 = sub_227664DD0();
        sub_227125F6C(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
        swift_allocError();
        (*(*(v25 - 8) + 104))(v26, *MEMORY[0x277D51028], v25);
        swift_willThrow();

        return v11;
      }

      v19 = v18;
      v41 = v13 + 1;
      v20 = v11;
      v21 = v36;
      sub_227662710();

      v22 = v37;
      v2 = v38;
      (*v32)(v38, v21, v37);
      (*v31)(v2, 0, 1, v22);
      sub_227668280();

      v23 = v21;
      v11 = v20;
      (*v30)(v23, v22);
      v42 = v20;
      v6 = *(v20 + 16);
      v24 = *(v20 + 24);
      if (v6 >= v24 >> 1)
      {
        sub_226F1FAC8((v24 > 1), v6 + 1, 1);
        v11 = v42;
      }

      *(v11 + 16) = v6 + 1;
      (*(v40 + 32))(v11 + ((*(v40 + 80) + 32) & ~*(v40 + 80)) + *(v40 + 72) * v6, v9, v35);
      ++v13;
      a1 = v34;
      if (v41 == v33)
      {
        return v11;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    ;
  }

  __break(1u);
  return result;
}

void *sub_227125440(unint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB2C0, &unk_227687210);
  MEMORY[0x28223BE20](v4 - 8);
  v52 = &v38 - v5;
  v51 = sub_227662750();
  v6 = *(v51 - 8);
  MEMORY[0x28223BE20](v51);
  v50 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v49 = &v38 - v9;
  MEMORY[0x28223BE20](v10);
  v48 = &v38 - v11;
  v47 = sub_2276662D0();
  v54 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v46 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >> 62)
  {
    goto LABEL_24;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_22766CD20())
  {
    v14 = MEMORY[0x277D84F90];
    if (!i)
    {
      return v14;
    }

    v59 = MEMORY[0x277D84F90];
    result = sub_226F20848(0, i & ~(i >> 63), 0);
    if (i < 0)
    {
      break;
    }

    v38 = v2;
    v2 = 0;
    v53 = a1 & 0xC000000000000001;
    v14 = v59;
    v39 = a1 & 0xFFFFFFFFFFFFFF8;
    v40 = a1;
    v43 = (v6 + 16);
    v44 = (v6 + 32);
    v41 = v54 + 32;
    v42 = (v6 + 8);
    v45 = i;
    while (1)
    {
      v6 = v2 + 1;
      if (__OFADD__(v2, 1))
      {
        break;
      }

      if (v53)
      {
        v16 = MEMORY[0x22AA991A0](v2, a1);
      }

      else
      {
        if (v2 >= *(v39 + 16))
        {
          goto LABEL_23;
        }

        v16 = *(a1 + 8 * v2 + 32);
      }

      v17 = v16;
      v18 = [v16 bundleIdentifier];
      if (!v18)
      {
        goto LABEL_20;
      }

      v19 = v18;
      sub_22766C000();

      v20 = [v17 reason];
      v21 = v17;
      if (!v20)
      {
        goto LABEL_19;
      }

      v22 = v20;
      v23 = sub_22766C000();
      v25 = v24;

      v26 = [v21 date];
      if (!v26)
      {

LABEL_19:

        v17 = v21;
LABEL_20:
        v36 = sub_227664DD0();
        sub_227125F6C(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
        swift_allocError();
        (*(*(v36 - 8) + 104))(v37, *MEMORY[0x277D51028], v36);
        swift_willThrow();

        return v14;
      }

      v27 = v26;
      v55 = v2 + 1;
      v56 = v14;
      v28 = v49;
      sub_227662710();

      v29 = v48;
      v30 = v28;
      v31 = v51;
      (*v44)(v48, v30, v51);
      v57 = v23;
      v58 = v25;
      sub_2276662B0();
      sub_227125F6C(&qword_27D7BB2C8, MEMORY[0x277D52240], MEMORY[0x277D52248]);
      sub_227663AE0();
      (*v43)(v50, v29, v31);
      v32 = v46;
      sub_227666270();

      v33 = v31;
      v14 = v56;
      (*v42)(v29, v33);
      v59 = v14;
      v35 = *(v14 + 16);
      v34 = *(v14 + 24);
      if (v35 >= v34 >> 1)
      {
        sub_226F20848((v34 > 1), v35 + 1, 1);
        v14 = v59;
      }

      *(v14 + 16) = v35 + 1;
      (*(v54 + 32))(v14 + ((*(v54 + 80) + 32) & ~*(v54 + 80)) + *(v54 + 72) * v35, v32, v47);
      ++v2;
      a1 = v40;
      if (v55 == v45)
      {
        return v14;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    ;
  }

  __break(1u);
  return result;
}

void sub_227125A04(uint64_t a1)
{
  v2 = sub_2276660A0() - 8;
  MEMORY[0x28223BE20](v2);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v13 - v7;
  v9 = *(a1 + 16);
  if (v9)
  {
    v10 = a1 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
    v11 = *(v6 + 72);
    do
    {
      v12 = MEMORY[0x277D52060];
      sub_227125EA4(v10, v4, MEMORY[0x277D52060]);
      sub_2270B8C34(v8, v4);
      sub_227125F0C(v8, v12);
      v10 += v11;
      --v9;
    }

    while (v9);
  }
}

id sub_227125B34(void *a1)
{
  v3[1] = *MEMORY[0x277D85DE8];
  v3[0] = 0;
  if ([a1 save_])
  {
    return v3[0];
  }

  v2 = v3[0];
  sub_2276622C0();

  return swift_willThrow();
}

uint64_t sub_227125BF8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB570, &unk_227670FC0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_227125C68()
{
  result = qword_281398C48;
  if (!qword_281398C48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7BB2A0, &qword_22767A148);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281398C48);
  }

  return result;
}

unint64_t sub_227125CEC()
{
  result = qword_27D7BB2A8;
  if (!qword_27D7BB2A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BB2A8);
  }

  return result;
}

unint64_t sub_227125D40()
{
  result = qword_27D7BB2B0;
  if (!qword_27D7BB2B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BB2B0);
  }

  return result;
}

unint64_t sub_227125D94()
{
  result = qword_27D7BB2B8;
  if (!qword_27D7BB2B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BB2B8);
  }

  return result;
}

unint64_t sub_227125DE8()
{
  result = qword_28139B730;
  if (!qword_28139B730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28139B730);
  }

  return result;
}

uint64_t sub_227125E3C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_227125EA4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_227125F0C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_227125F6C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_227125FB4()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB570, &unk_227670FC0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v91 - v3;
  v5 = sub_2276624A0();
  v112 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v118 = &v91 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v105 = &v91 - v8;
  v98 = sub_2276622D0();
  v97 = *(v98 - 8);
  MEMORY[0x28223BE20](v98);
  v10 = &v91 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9328, &qword_227673988);
  MEMORY[0x28223BE20](v11 - 8);
  v101 = &v91 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v91 - v14;
  MEMORY[0x28223BE20](v16);
  v18 = &v91 - v17;
  MEMORY[0x28223BE20](v19);
  v110 = &v91 - v20;
  MEMORY[0x28223BE20](v21);
  v23 = &v91 - v22;
  MEMORY[0x28223BE20](v24);
  v26 = &v91 - v25;
  if ((sub_2276622E0() & 1) == 0)
  {
    v36 = sub_227663190();
    sub_226EB0ED8(&qword_27D7B9620, MEMORY[0x277D4FDC8], MEMORY[0x277D4FDD0]);
    swift_allocError();
    (*(*(v36 - 8) + 104))(v37, *MEMORY[0x277D4FD00], v36);
    swift_willThrow();
    return v36;
  }

  v104 = v18;
  v96 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9320, &qword_227673980);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2276728D0;
  v28 = *MEMORY[0x277CBE8A8];
  v99 = v26;
  *(inited + 32) = v28;
  v29 = *MEMORY[0x277CBE910];
  *(inited + 40) = *MEMORY[0x277CBE910];
  v30 = v28;
  v31 = v29;
  v32 = sub_226F4C634(inited);
  swift_setDeallocating();
  type metadata accessor for URLResourceKey(0);
  v33 = v99;
  swift_arrayDestroy();
  v108 = v32;
  v34 = v111;
  sub_2276623A0();
  v95 = v10;
  if (v34)
  {

    v35 = 1;
  }

  else
  {
    v35 = 0;
  }

  v111 = v1;
  v38 = sub_2276621F0();
  v39 = *(v38 - 8);
  v40 = v39;
  v103 = *(v39 + 56);
  v102 = v39 + 56;
  v103(v33, v35, 1, v38);
  sub_227126CF4(v33, v23);
  v41 = *(v40 + 48);
  v107 = v40 + 48;
  v106 = v41;
  v42 = v41(v23, 1, v38);
  v109 = v38;
  v94 = v40;
  if (v42 == 1)
  {
    sub_226E97D1C(v23, &qword_27D7B9328, &qword_227673988);
    v43 = v110;
  }

  else
  {
    v44 = sub_2276621D0();
    v45 = *(v40 + 8);
    v45(v23, v38);
    v43 = v110;
    if (v44 != 2 && (v44 & 1) != 0)
    {

      v46 = v99;
      v47 = v101;
      sub_227126CF4(v99, v101);
      v48 = v109;
      if (v106(v47, 1, v109) != 1)
      {
        v36 = sub_2276621E0();
        v90 = v89;
        sub_226E97D1C(v46, &qword_27D7B9328, &qword_227673988);
        v45(v47, v48);
        if (v90)
        {
          return 0;
        }

        return v36;
      }

      sub_226E97D1C(v46, &qword_27D7B9328, &qword_227673988);
      sub_226E97D1C(v47, &qword_27D7B9328, &qword_227673988);
      return 0;
    }
  }

  v101 = [objc_opt_self() defaultManager];
  v49 = v108;
  v50 = *(v108 + 16);
  if (v50)
  {
    v51 = sub_2274CDA4C(*(v108 + 16), 0);
    v52 = sub_2274CEE68(&v114, v51 + 4, v50, v49);
    v53 = v114;
    v100 = v115;
    v93 = v116;
    v92 = v117;

    sub_226EBB21C(v53);
    v54 = v52 == v50;
    v55 = v95;
    if (v54)
    {
      goto LABEL_16;
    }

    __break(1u);
  }

  v55 = v95;
LABEL_16:
  v56 = v101;
  v57 = sub_22766C860();

  v58 = v57;
  v59 = v98;
  if (!v58)
  {
    sub_226E97D1C(v99, &qword_27D7B9328, &qword_227673988);

    return 0;
  }

  v93 = 0;
  v92 = v58;
  sub_22766C810();
  v60 = sub_226EB0ED8(&qword_28139BDF0, MEMORY[0x277CC9178], MEMORY[0x277CC9180]);
  sub_22766CBB0();
  if (v116)
  {
    v61 = (v112 + 56);
    v62 = (v112 + 48);
    v101 = v112 + 32;
    v111 = MEMORY[0x277D84F90];
    v100 = v60;
    do
    {
      sub_226F04970(&v114, &v113);
      v63 = swift_dynamicCast();
      (*v61)(v4, v63 ^ 1u, 1, v5);
      if ((*v62)(v4, 1, v5) == 1)
      {
        sub_226E97D1C(v4, &unk_27D7BB570, &unk_227670FC0);
      }

      else
      {
        v64 = v5;
        v65 = v59;
        v66 = v55;
        v67 = *v101;
        v68 = v64;
        (*v101)(v105, v4);
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v69 = v111;
        }

        else
        {
          v69 = sub_2273A4ECC(0, v111[2] + 1, 1, v111);
        }

        v71 = v69[2];
        v70 = v69[3];
        if (v71 >= v70 >> 1)
        {
          v69 = sub_2273A4ECC((v70 > 1), v71 + 1, 1, v69);
        }

        v69[2] = v71 + 1;
        v72 = (*(v112 + 80) + 32) & ~*(v112 + 80);
        v111 = v69;
        (v67)(v69 + v72 + *(v112 + 72) * v71, v105, v68);
        v43 = v110;
        v55 = v66;
        v59 = v65;
        v5 = v68;
      }

      sub_22766CBB0();
    }

    while (v116);
  }

  else
  {
    v111 = MEMORY[0x277D84F90];
  }

  (*(v97 + 8))(v55, v59);
  v73 = v111[2];
  if (!v73)
  {

    v36 = 0;
LABEL_50:

    sub_226E97D1C(v99, &qword_27D7B9328, &qword_227673988);
    return v36;
  }

  v98 = 0;
  v105 = *(v112 + 16);
  v74 = v111 + ((*(v112 + 80) + 32) & ~*(v112 + 80));
  v101 = *(v112 + 72);
  v100 = (v94 + 8);
  v112 += 16;
  v75 = (v112 - 8);
  v76 = v93;
  (v105)(v118, v74, v5);
  while (1)
  {
    sub_2276623A0();
    if (v76)
    {

      v77 = 1;
    }

    else
    {
      v77 = 0;
    }

    v78 = v104;
    v79 = v109;
    v103(v43, v77, 1, v109);
    sub_227126CF4(v43, v78);
    if (v106(v78, 1, v79) == 1)
    {
      sub_226E97D1C(v78, &qword_27D7B9328, &qword_227673988);
LABEL_34:
      sub_226E97D1C(v43, &qword_27D7B9328, &qword_227673988);
      (*v75)(v118, v5);
      v76 = 0;
      goto LABEL_35;
    }

    v80 = sub_2276621D0();
    v81 = v78;
    v82 = *v100;
    (*v100)(v81, v79);
    v43 = v110;
    if (v80 == 2 || (v80 & 1) == 0)
    {
      goto LABEL_34;
    }

    v83 = v110;
    v84 = v96;
    sub_227126CF4(v110, v96);
    if (v106(v84, 1, v109) == 1)
    {
      sub_226E97D1C(v83, &qword_27D7B9328, &qword_227673988);
      (*v75)(v118, v5);
      sub_226E97D1C(v84, &qword_27D7B9328, &qword_227673988);
      v76 = 0;
      v43 = v83;
      goto LABEL_35;
    }

    v97 = sub_2276621E0();
    v86 = v85;
    sub_226E97D1C(v83, &qword_27D7B9328, &qword_227673988);
    (*v75)(v118, v5);
    result = v82(v84, v109);
    if ((v86 & 1) == 0)
    {
      v88 = __OFADD__(v97, v98);
      v98 += v97;
      if (v88)
      {
        break;
      }
    }

    v76 = 0;
    v43 = v110;
LABEL_35:
    v74 += v101;
    if (!--v73)
    {

      v36 = v98;
      goto LABEL_50;
    }

    (v105)(v118, v74, v5);
  }

  __break(1u);
  return result;
}

uint64_t sub_227126CF4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9328, &qword_227673988);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_227126D64()
{
  v1 = v0;
  v2 = sub_227669910();
  v41 = *(v2 - 8);
  v42 = v2;
  MEMORY[0x28223BE20](v2);
  v40 = &v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_227669A70();
  v51 = v4;
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22766B390();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A730();
  sub_22766B370();
  (*(v9 + 8))(v11, v8);
  v12 = *(v1 + 16);
  v49 = *(v1 + 32);
  ObjectType = swift_getObjectType();
  v56 = v12;
  v13 = *(v5 + 104);
  v13(v7, *MEMORY[0x277D4E590], v4);
  v50 = v13;
  v55 = v5 + 104;
  swift_allocObject();
  v53 = v1;
  swift_weakInit();
  swift_unknownObjectRetain_n();
  sub_227669EE0();

  v14 = *(v5 + 8);
  v52 = v5 + 8;
  v54 = v14;
  v15 = v51;
  v14(v7, v51);
  swift_unknownObjectRelease();
  v56 = v12;
  LODWORD(v44) = *MEMORY[0x277D4E790];
  (v13)(v7);
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB2D0, &unk_22768B2E0);
  v43 = sub_227664460();
  v47 = sub_227128FA8();
  v46 = sub_22712902C();
  v38 = v7;
  sub_227669EC0();

  v54(v7, v15);
  swift_unknownObjectRelease();
  v56 = v12;
  v17 = v40;
  v16 = v41;
  v18 = v42;
  (*(v41 + 104))(v40, *MEMORY[0x277D4E1E0], v42);
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();

  sub_227669E70();

  (*(v16 + 8))(v17, v18);

  swift_unknownObjectRelease();
  v56 = v12;
  v19 = v38;
  v20 = v50;
  v21 = v51;
  v50(v38, *MEMORY[0x277D4E678], v51);
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();
  sub_227669ED0();

  v22 = v54;
  v54(v19, v21);
  swift_unknownObjectRelease();
  v56 = v12;
  v20(v19, *MEMORY[0x277D4E570], v21);
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();
  sub_227669ED0();

  v23 = v51;
  v22(v19, v51);
  swift_unknownObjectRelease();
  v56 = v12;
  v24 = v23;
  v25 = v50;
  v50(v19, *MEMORY[0x277D4E5C8], v24);
  swift_allocObject();
  v26 = v53;
  swift_weakInit();
  swift_unknownObjectRetain();
  sub_227669EE0();

  v27 = v51;
  v54(v19, v51);
  swift_unknownObjectRelease();
  v28 = v26;
  v29 = *(v26 + 64);
  v42 = *(v28 + 80);
  swift_getObjectType();
  v56 = v29;
  v25(v19, v44, v27);
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();
  sub_227669EC0();

  v30 = v51;
  v31 = v54;
  v54(v19, v51);
  swift_unknownObjectRelease();
  v56 = v12;
  v32 = v50;
  v50(v19, *MEMORY[0x277D4E640], v30);
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain();

  sub_227669EF0();

  v31(v19, v30);

  swift_unknownObjectRelease();
  v56 = v12;
  v39 = v12;
  v32(v19, *MEMORY[0x277D4E458], v30);
  swift_allocObject();
  v33 = v53;
  swift_weakInit();

  sub_227669EF0();

  v34 = v54;
  v54(v19, v30);

  swift_unknownObjectRelease();
  v35 = *(v33 + 40);
  v44 = *(v33 + 56);
  swift_getObjectType();
  v56 = v35;
  v36 = v50;
  v50(v19, *MEMORY[0x277D4E540], v30);
  swift_allocObject();
  swift_weakInit();
  sub_227665230();
  sub_2276655F0();
  swift_unknownObjectRetain();
  sub_227669EC0();

  v34(v19, v30);
  swift_unknownObjectRelease();
  v56 = v39;
  v36(v19, *MEMORY[0x277D4E758], v30);
  swift_allocObject();
  swift_weakInit();
  sub_227669EE0();

  v34(v19, v30);
  return swift_unknownObjectRelease();
}

uint64_t sub_2271278CC(_BYTE *a1, uint64_t a2)
{
  *(v2 + 80) = a2;
  *(v2 + 104) = *a1;
  return MEMORY[0x2822009F8](sub_2271278F4, 0, 0);
}

uint64_t sub_2271278F4()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 88, v0 + 16);

    v2 = __swift_project_boxed_opaque_existential_0((v0 + 16), *(v0 + 40));
    __swift_project_boxed_opaque_existential_0((*v2 + 56), *(*v2 + 80));
    v3 = swift_task_alloc();
    *(v0 + 88) = v3;
    *v3 = v0;
    v3[1] = sub_227127A18;
    v4 = *(v0 + 104);

    return sub_226F0B0C8(v4);
  }

  else
  {
    v6 = *(v0 + 8);

    return v6();
  }
}

uint64_t sub_227127A18()
{
  *(*v1 + 96) = v0;

  if (v0)
  {
    v2 = sub_226F60544;
  }

  else
  {
    v2 = sub_226F62210;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_227127B2C(uint64_t a1, void *a2, uint64_t a3)
{
  v3[10] = a1;
  v3[11] = a3;
  v3[12] = *a2;
  return MEMORY[0x2822009F8](sub_227127B54, 0, 0);
}

uint64_t sub_227127B54()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 88, (v0 + 2));

    v2 = __swift_project_boxed_opaque_existential_0(v0 + 2, v0[5]);
    __swift_project_boxed_opaque_existential_0((*v2 + 56), *(*v2 + 80));
    v3 = swift_task_alloc();
    v0[13] = v3;
    *v3 = v0;
    v3[1] = sub_227127CBC;
    v4 = v0[12];
    v5 = v0[10];

    return sub_226F127E4(v5, v4);
  }

  else
  {
    v7 = v0[10];
    v8 = sub_227664460();
    (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
    v9 = v0[1];

    return v9();
  }
}

uint64_t sub_227127CBC()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_226F69340;
  }

  else
  {
    v2 = sub_227127DD0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_227127DD0()
{
  v1 = v0[10];
  v2 = sub_227664460();
  (*(*(v2 - 8) + 56))(v1, 0, 1, v2);
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v3 = v0[1];

  return v3();
}

uint64_t sub_227127E78(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_226E91B50(result + 88, v2);

    __swift_project_boxed_opaque_existential_0(v2, v2[3]);
    sub_2271D7EE8();
    return __swift_destroy_boxed_opaque_existential_0(v2);
  }

  return result;
}

uint64_t sub_227127EF8(uint64_t a1, uint64_t a2)
{
  *(v2 + 80) = a1;
  *(v2 + 88) = a2;
  return MEMORY[0x2822009F8](sub_227127F18, 0, 0);
}

uint64_t sub_227127F18()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 88, v0 + 16);

    v2 = __swift_project_boxed_opaque_existential_0((v0 + 16), *(v0 + 40));
    v3 = __swift_project_boxed_opaque_existential_0((*v2 + 56), *(*v2 + 80));
    __swift_project_boxed_opaque_existential_0((*v3 + 16), *(*v3 + 40));
    v4 = off_283AB4FA0;
    type metadata accessor for AccountSyncStatusObserver();
    v5 = v4();
    __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  }

  else
  {
    v5 = 5;
  }

  **(v0 + 80) = v5;
  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_22712802C(uint64_t a1, uint64_t a2)
{
  *(v2 + 80) = a1;
  *(v2 + 88) = a2;
  return MEMORY[0x2822009F8](sub_22712804C, 0, 0);
}

uint64_t sub_22712804C()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 88, v0 + 16);

    v2 = __swift_project_boxed_opaque_existential_0((v0 + 16), *(v0 + 40));
    __swift_project_boxed_opaque_existential_0((*v2 + 56), *(*v2 + 80));
    v3 = swift_task_alloc();
    *(v0 + 96) = v3;
    *v3 = v0;
    v3[1] = sub_227128174;

    return sub_226F09E40();
  }

  else
  {
    **(v0 + 80) = 2;
    v5 = *(v0 + 8);

    return v5();
  }
}

uint64_t sub_227128174(char a1)
{
  v4 = *v2;
  *(*v2 + 104) = v1;

  if (v1)
  {
    v5 = sub_226F618C8;
  }

  else
  {
    *(v4 + 112) = a1 & 1;
    v5 = sub_2271282A0;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2271282A0()
{
  **(v0 + 80) = *(v0 + 112);
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_227128310(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  *(v2 + 80) = a2;
  *(v2 + 88) = v3;
  return MEMORY[0x2822009F8](sub_227128334, 0, 0);
}

uint64_t sub_227128334()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 88, (v0 + 2));

    v2 = __swift_project_boxed_opaque_existential_0(v0 + 2, v0[5]);
    __swift_project_boxed_opaque_existential_0((*v2 + 56), *(*v2 + 80));
    v3 = swift_task_alloc();
    v0[12] = v3;
    *v3 = v0;
    v3[1] = sub_226F623A8;
    v4 = v0[11];

    return sub_226F12F60(v4);
  }

  else
  {
    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_227128458(uint64_t a1, void *a2, uint64_t a3)
{
  v3[10] = a1;
  v3[11] = a3;
  v3[12] = *a2;
  return MEMORY[0x2822009F8](sub_227128480, 0, 0);
}

uint64_t sub_227128480()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 88, (v0 + 2));

    v2 = __swift_project_boxed_opaque_existential_0(v0 + 2, v0[5]);
    __swift_project_boxed_opaque_existential_0((*v2 + 56), *(*v2 + 80));
    v3 = swift_task_alloc();
    v0[13] = v3;
    *v3 = v0;
    v3[1] = sub_2271285E8;
    v4 = v0[12];
    v5 = v0[10];

    return sub_226F127E4(v5, v4);
  }

  else
  {
    v7 = v0[10];
    v8 = sub_227664460();
    (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
    v9 = v0[1];

    return v9();
  }
}

uint64_t sub_2271285E8()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_226F69340;
  }

  else
  {
    v2 = sub_2271295F0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_22712871C()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 88, (v0 + 2));

    v2 = __swift_project_boxed_opaque_existential_0(v0 + 2, v0[5]);
    __swift_project_boxed_opaque_existential_0((*v2 + 56), *(*v2 + 80));
    v3 = swift_task_alloc();
    v0[11] = v3;
    *v3 = v0;
    v3[1] = sub_226FAA0A0;

    return sub_226F133B8();
  }

  else
  {
    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_227128858()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 88, (v0 + 2));

    v2 = __swift_project_boxed_opaque_existential_0(v0 + 2, v0[5]);
    __swift_project_boxed_opaque_existential_0((*v2 + 16), *(*v2 + 40));
    v3 = swift_task_alloc();
    v0[11] = v3;
    *v3 = v0;
    v3[1] = sub_226FAA0A0;

    return sub_2275E8000();
  }

  else
  {
    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_227128974(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[11] = a2;
  v3[12] = a3;
  v3[10] = a1;
  return MEMORY[0x2822009F8](sub_227128998, 0, 0);
}

uint64_t sub_227128998()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 88, (v0 + 2));

    v2 = __swift_project_boxed_opaque_existential_0(v0 + 2, v0[5]);
    __swift_project_boxed_opaque_existential_0((*v2 + 16), *(*v2 + 40));
    v3 = swift_task_alloc();
    v0[13] = v3;
    *v3 = v0;
    v3[1] = sub_227128AFC;
    v4 = v0[10];
    v5 = v0[11];

    return sub_2275EB590(v4, v5);
  }

  else
  {
    v7 = v0[10];
    v8 = sub_2276655F0();
    (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
    v9 = v0[1];

    return v9();
  }
}

uint64_t sub_227128AFC()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_226F60D40;
  }

  else
  {
    v2 = sub_227128C10;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_227128C10()
{
  v1 = v0[10];
  v2 = sub_2276655F0();
  (*(*(v2 - 8) + 56))(v1, 0, 1, v2);
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v3 = v0[1];

  return v3();
}

uint64_t sub_227128CB8(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  *(v2 + 80) = a2;
  *(v2 + 88) = v3;
  return MEMORY[0x2822009F8](sub_227128CDC, 0, 0);
}

uint64_t sub_227128CDC()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 88, (v0 + 2));

    __swift_project_boxed_opaque_existential_0(v0 + 2, v0[5]);
    v2 = swift_task_alloc();
    v0[12] = v2;
    *v2 = v0;
    v2[1] = sub_226F623A8;
    v3 = v0[11];

    return sub_22713D014(v3);
  }

  else
  {
    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_227128DF0()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0((v0 + 88));

  return swift_deallocClassInstance();
}

uint64_t sub_227128E64(_BYTE *a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_226E93028;

  return sub_2271278CC(a1, v1);
}

uint64_t sub_227128EFC(uint64_t a1, void *a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_226E93028;

  return sub_227127B2C(a1, a2, v2);
}

unint64_t sub_227128FA8()
{
  result = qword_281398C10;
  if (!qword_281398C10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7BB2D0, &unk_22768B2E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281398C10);
  }

  return result;
}

unint64_t sub_22712902C()
{
  result = qword_281398C08;
  if (!qword_281398C08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7BB2D0, &unk_22768B2E0);
    sub_2271290B0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281398C08);
  }

  return result;
}

unint64_t sub_2271290B0()
{
  result = qword_28139B250;
  if (!qword_28139B250)
  {
    sub_2276694E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28139B250);
  }

  return result;
}

uint64_t sub_227129110(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_226E93028;

  return sub_227127EF8(a1, v1);
}

uint64_t sub_2271291AC(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_226E93028;

  return sub_22712802C(a1, v1);
}

uint64_t sub_227129248(uint64_t *a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_226E93028;

  return sub_227128310(a1, v1);
}

uint64_t sub_2271292E0(uint64_t a1, void *a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_226E93028;

  return sub_227128458(a1, a2, v2);
}

uint64_t sub_22712938C()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_226E93028;

  return sub_2271286FC(v0);
}

uint64_t sub_22712941C()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_226E93028;

  return sub_227128838(v0);
}

uint64_t sub_2271294AC(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_226E92F34;

  return sub_227128974(a1, a2, v2);
}

uint64_t sub_227129558(uint64_t *a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_226E93028;

  return sub_227128CB8(a1, v1);
}

uint64_t sub_2271295F4()
{
  v1 = sub_227669A70();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = v0[12];
  v8[0] = v0[14];
  swift_getObjectType();
  v8[1] = v5;
  (*(v2 + 104))(v4, *MEMORY[0x277D4E730], v1);
  swift_allocObject();
  swift_weakInit();
  sub_227667900();
  sub_227665AD0();
  swift_unknownObjectRetain();
  sub_227669E80();

  (*(v2 + 8))(v4, v1);
  swift_unknownObjectRelease();
  __swift_project_boxed_opaque_existential_0(v0 + 7, v0[10]);
  v6 = swift_allocObject();
  swift_weakInit();
  sub_22712A264(11, sub_226E9239C, v6);
}

uint64_t sub_227129828@<X0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 16, v9);

    __swift_project_boxed_opaque_existential_0(v9, v9[3]);
    sub_226E923DC(a1, a3);
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BA270, &qword_2276708A0);
    (*(*(v6 - 8) + 56))(a3, 0, 1, v6);
    return __swift_destroy_boxed_opaque_existential_0(v9);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BA270, &qword_2276708A0);
    return (*(*(v8 - 8) + 56))(a3, 1, 1, v8);
  }
}

uint64_t sub_227129958()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  __swift_destroy_boxed_opaque_existential_0((v0 + 56));
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_2271299E0@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t, double)@<X1>, uint64_t a4@<X8>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB2D8, &qword_22767A270);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v17 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BA270, &qword_2276708A0);
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v17 - v13;
  a2(a1, v12);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_226E97D1C(v9, &qword_27D7BB2D8, &qword_22767A270);
LABEL_6:
    v15 = 1;
    return (*(v11 + 56))(a4, v15, 1, v10);
  }

  (*(v11 + 32))(v14, v9, v10);
  swift_beginAccess();
  if (!swift_weakLoadStrong())
  {
    (*(v11 + 8))(v14, v10);
    goto LABEL_6;
  }

  sub_226ED9FBC(v14, a4);

  (*(v11 + 8))(v14, v10);
  v15 = 0;
  return (*(v11 + 56))(a4, v15, 1, v10);
}

uint64_t sub_227129C10@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t *, double)@<X1>, uint64_t a4@<X8>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB300, &qword_22767A298);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v17[-v8];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD3A0, &unk_22767A2A0);
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v17[-v13];
  v18 = a1;
  a2(&v18, v12);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_226E97D1C(v9, &qword_27D7BB300, &qword_22767A298);
LABEL_6:
    v15 = 1;
    return (*(v11 + 56))(a4, v15, 1, v10);
  }

  (*(v11 + 32))(v14, v9, v10);
  swift_beginAccess();
  if (!swift_weakLoadStrong())
  {
    (*(v11 + 8))(v14, v10);
    goto LABEL_6;
  }

  sub_2272A4624(v14, a4);

  (*(v11 + 8))(v14, v10);
  v15 = 0;
  return (*(v11 + 56))(a4, v15, 1, v10);
}

uint64_t sub_227129E44@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t, double)@<X1>, uint64_t a4@<X8>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB2E0, &qword_22767A278);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v17 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB2E8, &qword_22767A280);
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v17 - v13;
  a2(a1, v12);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_226E97D1C(v9, &qword_27D7BB2E0, &qword_22767A278);
LABEL_6:
    v15 = 1;
    return (*(v11 + 56))(a4, v15, 1, v10);
  }

  (*(v11 + 32))(v14, v9, v10);
  swift_beginAccess();
  if (!swift_weakLoadStrong())
  {
    (*(v11 + 8))(v14, v10);
    goto LABEL_6;
  }

  sub_2272A7FD0(v14, a4);

  (*(v11 + 8))(v14, v10);
  v15 = 0;
  return (*(v11 + 56))(a4, v15, 1, v10);
}

uint64_t sub_22712A074(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(v3 + 16);
  v9 = swift_allocObject();
  swift_weakInit();
  v10 = swift_allocObject();
  v10[2] = a2;
  v10[3] = a3;
  v10[4] = v9;
  __swift_project_boxed_opaque_existential_0((v8 + OBJC_IVAR____TtC15SeymourServices17NetworkScriptLink_dispatchService), *(v8 + OBJC_IVAR____TtC15SeymourServices17NetworkScriptLink_dispatchService + 24));
  v11 = swift_allocObject();
  *(v11 + 16) = sub_226ED35BC;
  *(v11 + 24) = v10;

  sub_2274E9324(a1, sub_226ED35B0, v11);

  v12 = *(v4 + 24);
  v13 = swift_allocObject();
  swift_weakInit();
  v14 = swift_allocObject();
  v14[2] = a2;
  v14[3] = a3;
  v14[4] = v13;
  __swift_project_boxed_opaque_existential_0((v12 + OBJC_IVAR____TtC15SeymourServices17OfflineScriptLink_dispatchService), *(v12 + OBJC_IVAR____TtC15SeymourServices17OfflineScriptLink_dispatchService + 24));
  v15 = swift_allocObject();
  *(v15 + 16) = sub_226ED35CC;
  *(v15 + 24) = v14;

  sub_2274E9324(a1, sub_226ED35B8, v15);
}

uint64_t sub_22712A264(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(v3 + 16);
  v9 = swift_allocObject();
  swift_weakInit();
  v10 = swift_allocObject();
  v10[2] = a2;
  v10[3] = a3;
  v10[4] = v9;
  __swift_project_boxed_opaque_existential_0((v8 + OBJC_IVAR____TtC15SeymourServices17NetworkScriptLink_dispatchService), *(v8 + OBJC_IVAR____TtC15SeymourServices17NetworkScriptLink_dispatchService + 24));
  v11 = swift_allocObject();
  *(v11 + 16) = sub_226ED9F0C;
  *(v11 + 24) = v10;

  sub_2274E9324(a1, sub_226ED9DB0, v11);

  v12 = *(v4 + 24);
  v13 = swift_allocObject();
  swift_weakInit();
  v14 = swift_allocObject();
  v14[2] = a2;
  v14[3] = a3;
  v14[4] = v13;
  __swift_project_boxed_opaque_existential_0((v12 + OBJC_IVAR____TtC15SeymourServices17OfflineScriptLink_dispatchService), *(v12 + OBJC_IVAR____TtC15SeymourServices17OfflineScriptLink_dispatchService + 24));
  v15 = swift_allocObject();
  *(v15 + 16) = sub_226ED9F94;
  *(v15 + 24) = v14;

  sub_2274E9324(a1, sub_226ED9E34, v15);
}

uint64_t sub_22712A454(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(v3 + 16);
  v9 = swift_allocObject();
  swift_weakInit();
  v10 = swift_allocObject();
  v10[2] = a2;
  v10[3] = a3;
  v10[4] = v9;
  __swift_project_boxed_opaque_existential_0((v8 + OBJC_IVAR____TtC15SeymourServices17NetworkScriptLink_dispatchService), *(v8 + OBJC_IVAR____TtC15SeymourServices17NetworkScriptLink_dispatchService + 24));
  v11 = swift_allocObject();
  *(v11 + 16) = sub_22712BEE0;
  *(v11 + 24) = v10;

  sub_2274E9324(a1, sub_22712BEF0, v11);

  v12 = *(v4 + 24);
  v13 = swift_allocObject();
  swift_weakInit();
  v14 = swift_allocObject();
  v14[2] = a2;
  v14[3] = a3;
  v14[4] = v13;
  __swift_project_boxed_opaque_existential_0((v12 + OBJC_IVAR____TtC15SeymourServices17OfflineScriptLink_dispatchService), *(v12 + OBJC_IVAR____TtC15SeymourServices17OfflineScriptLink_dispatchService + 24));
  v15 = swift_allocObject();
  *(v15 + 16) = sub_22712BFCC;
  *(v15 + 24) = v14;

  sub_2274E9324(a1, sub_22712BFE0, v15);
}

uint64_t sub_22712A644(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(v3 + 16);
  v9 = swift_allocObject();
  swift_weakInit();
  v10 = swift_allocObject();
  v10[2] = a2;
  v10[3] = a3;
  v10[4] = v9;
  __swift_project_boxed_opaque_existential_0((v8 + OBJC_IVAR____TtC15SeymourServices17NetworkScriptLink_dispatchService), *(v8 + OBJC_IVAR____TtC15SeymourServices17NetworkScriptLink_dispatchService + 24));
  v11 = swift_allocObject();
  *(v11 + 16) = sub_22712BBE0;
  *(v11 + 24) = v10;

  sub_2274E9324(a1, sub_22712BBEC, v11);

  v12 = *(v4 + 24);
  v13 = swift_allocObject();
  swift_weakInit();
  v14 = swift_allocObject();
  v14[2] = a2;
  v14[3] = a3;
  v14[4] = v13;
  __swift_project_boxed_opaque_existential_0((v12 + OBJC_IVAR____TtC15SeymourServices17OfflineScriptLink_dispatchService), *(v12 + OBJC_IVAR____TtC15SeymourServices17OfflineScriptLink_dispatchService + 24));
  v15 = swift_allocObject();
  *(v15 + 16) = sub_22712BFC4;
  *(v15 + 24) = v14;

  sub_2274E9324(a1, sub_22712BFD4, v15);
}

uint64_t sub_22712A834(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(v3 + 16);
  v9 = swift_allocObject();
  swift_weakInit();
  v10 = swift_allocObject();
  v10[2] = a2;
  v10[3] = a3;
  v10[4] = v9;
  __swift_project_boxed_opaque_existential_0((v8 + OBJC_IVAR____TtC15SeymourServices17NetworkScriptLink_dispatchService), *(v8 + OBJC_IVAR____TtC15SeymourServices17NetworkScriptLink_dispatchService + 24));
  v11 = swift_allocObject();
  *(v11 + 16) = sub_22712BD94;
  *(v11 + 24) = v10;

  sub_2274E9324(a1, sub_22712BDA4, v11);

  v12 = *(v4 + 24);
  v13 = swift_allocObject();
  swift_weakInit();
  v14 = swift_allocObject();
  v14[2] = a2;
  v14[3] = a3;
  v14[4] = v13;
  __swift_project_boxed_opaque_existential_0((v12 + OBJC_IVAR____TtC15SeymourServices17OfflineScriptLink_dispatchService), *(v12 + OBJC_IVAR____TtC15SeymourServices17OfflineScriptLink_dispatchService + 24));
  v15 = swift_allocObject();
  *(v15 + 16) = sub_22712BFC8;
  *(v15 + 24) = v14;

  sub_2274E9324(a1, sub_22712BFD8, v15);
}

uint64_t sub_22712AA24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(v3 + 16);
  v9 = swift_allocObject();
  swift_weakInit();
  v10 = swift_allocObject();
  v10[2] = a2;
  v10[3] = a3;
  v10[4] = v9;
  __swift_project_boxed_opaque_existential_0((v8 + OBJC_IVAR____TtC15SeymourServices17NetworkScriptLink_dispatchService), *(v8 + OBJC_IVAR____TtC15SeymourServices17NetworkScriptLink_dispatchService + 24));
  v11 = swift_allocObject();
  *(v11 + 16) = sub_22712BFC8;
  *(v11 + 24) = v10;

  sub_2274E9324(a1, sub_22712BED8, v11);

  v12 = *(v4 + 24);
  v13 = swift_allocObject();
  swift_weakInit();
  v14 = swift_allocObject();
  v14[2] = a2;
  v14[3] = a3;
  v14[4] = v13;
  __swift_project_boxed_opaque_existential_0((v12 + OBJC_IVAR____TtC15SeymourServices17OfflineScriptLink_dispatchService), *(v12 + OBJC_IVAR____TtC15SeymourServices17OfflineScriptLink_dispatchService + 24));
  v15 = swift_allocObject();
  *(v15 + 16) = sub_22712BFC8;
  *(v15 + 24) = v14;

  sub_2274E9324(a1, sub_22712BFDC, v15);
}

uint64_t sub_22712AC14@<X0>(uint64_t a2@<X1>, void (*a3)(uint64_t *)@<X2>, uint64_t a4@<X8>)
{
  v29 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB300, &qword_22767A298);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v26 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD3A0, &unk_22767A2A0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = &v26 - v14;
  if (a2)
  {
    v28 = v13;
    sub_226F62704();

    v27 = sub_22766C2F0();
    v30 = v27;
    a3(&v30);
    v18 = v28;
    if ((*(v28 + 48))(v8, 1, v9) != 1)
    {
      v21 = *(v18 + 32);
      v21(v15, v8, v9);
      v22 = swift_allocObject();
      *(v22 + 16) = sub_22712BBF4;
      *(v22 + 24) = 0;
      (*(v18 + 16))(v11, v15, v9);
      v23 = (*(v18 + 80) + 16) & ~*(v18 + 80);
      v24 = swift_allocObject();
      v21((v24 + v23), v11, v9);
      v25 = (v24 + ((v10 + v23 + 7) & 0xFFFFFFFFFFFFFFF8));
      *v25 = sub_22712BEF8;
      v25[1] = v22;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
      sub_227669270();
      (*(v18 + 8))(v15, v9);
    }

    sub_226E97D1C(v8, &qword_27D7BB300, &qword_22767A298);
    sub_226F6649C();
    v16 = swift_allocError();
    *v19 = 2;
    swift_willThrow();
  }

  else
  {
    sub_226F6649C();
    v16 = swift_allocError();
    *v17 = 2;
    swift_willThrow();
  }

  *(swift_allocObject() + 16) = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
  return sub_227669280();
}

uint64_t sub_22712AFE0@<X0>(uint64_t a2@<X1>, void (*a3)(char *, char *, uint64_t)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v31 = a4;
  v32 = a3;
  v33 = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB2E0, &qword_22767A278);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v29 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB2E8, &qword_22767A280);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v29 - v14;
  v16 = sub_227662750();
  MEMORY[0x28223BE20](v16);
  v19 = &v29 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v30 = v17;

    sub_227667720();
    (v32)(v19);
    if ((*(v10 + 48))(v8, 1, v9) != 1)
    {
      v32 = *(v10 + 32);
      v32(v15, v8, v9);
      v24 = swift_allocObject();
      v31 = v24;
      *(v24 + 16) = sub_22712BC48;
      *(v24 + 24) = 0;
      (*(v10 + 16))(v12, v15, v9);
      v25 = (*(v10 + 80) + 16) & ~*(v10 + 80);
      v26 = swift_allocObject();
      v32((v26 + v25), v12, v9);
      v27 = (v26 + ((v11 + v25 + 7) & 0xFFFFFFFFFFFFFFF8));
      v28 = v31;
      *v27 = sub_22712BCF0;
      v27[1] = v28;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
      sub_227669270();
      (*(v10 + 8))(v15, v9);
      return (*(v30 + 8))(v19, v16);
    }

    sub_226E97D1C(v8, &qword_27D7BB2E0, &qword_22767A278);
    sub_226F6649C();
    v20 = swift_allocError();
    *v21 = 2;
    swift_willThrow();
    (*(v30 + 8))(v19, v16);
  }

  else
  {
    sub_226F6649C();
    v20 = swift_allocError();
    *v22 = 2;
    swift_willThrow();
  }

  *(swift_allocObject() + 16) = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
  return sub_227669280();
}

uint64_t sub_22712B448@<X0>(uint64_t a2@<X1>, void (*a3)(uint64_t *)@<X2>, uint64_t a4@<X8>)
{
  v29 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB2F0, &qword_22767A288);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v26 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB2F8, &qword_22767A290);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = &v26 - v14;
  if (a2)
  {
    v28 = v13;
    sub_22712BDAC();

    v27 = sub_22766C2F0();
    v30 = v27;
    a3(&v30);
    v18 = v28;
    if ((*(v28 + 48))(v8, 1, v9) != 1)
    {
      v21 = *(v18 + 32);
      v21(v15, v8, v9);
      v22 = swift_allocObject();
      *(v22 + 16) = sub_22712BFAC;
      *(v22 + 24) = 0;
      (*(v18 + 16))(v11, v15, v9);
      v23 = (*(v18 + 80) + 16) & ~*(v18 + 80);
      v24 = swift_allocObject();
      v21((v24 + v23), v11, v9);
      v25 = (v24 + ((v10 + v23 + 7) & 0xFFFFFFFFFFFFFFF8));
      *v25 = sub_22712BE00;
      v25[1] = v22;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
      sub_227669270();
      (*(v18 + 8))(v15, v9);
    }

    sub_226E97D1C(v8, &qword_27D7BB2F0, &qword_22767A288);
    sub_226F6649C();
    v16 = swift_allocError();
    *v19 = 2;
    swift_willThrow();
  }

  else
  {
    sub_226F6649C();
    v16 = swift_allocError();
    *v17 = 2;
    swift_willThrow();
  }

  *(swift_allocObject() + 16) = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
  return sub_227669280();
}

uint64_t sub_22712B814@<X0>(uint64_t a2@<X1>, void (*a3)(uint64_t *)@<X2>, uint64_t a4@<X8>)
{
  v29 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB2F0, &qword_22767A288);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v26 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB2F8, &qword_22767A290);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = &v26 - v14;
  if (a2)
  {
    v28 = v13;
    sub_226F62704();

    v27 = sub_22766C2F0();
    v30 = v27;
    a3(&v30);
    v18 = v28;
    if ((*(v28 + 48))(v8, 1, v9) != 1)
    {
      v21 = *(v18 + 32);
      v21(v15, v8, v9);
      v22 = swift_allocObject();
      *(v22 + 16) = sub_22712BFAC;
      *(v22 + 24) = 0;
      (*(v18 + 16))(v11, v15, v9);
      v23 = (*(v18 + 80) + 16) & ~*(v18 + 80);
      v24 = swift_allocObject();
      v21((v24 + v23), v11, v9);
      v25 = (v24 + ((v10 + v23 + 7) & 0xFFFFFFFFFFFFFFF8));
      *v25 = sub_22712BFA8;
      v25[1] = v22;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
      sub_227669270();
      (*(v18 + 8))(v15, v9);
    }

    sub_226E97D1C(v8, &qword_27D7BB2F0, &qword_22767A288);
    sub_226F6649C();
    v16 = swift_allocError();
    *v19 = 2;
    swift_willThrow();
  }

  else
  {
    sub_226F6649C();
    v16 = swift_allocError();
    *v17 = 2;
    swift_willThrow();
  }

  *(swift_allocObject() + 16) = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
  return sub_227669280();
}

uint64_t sub_22712BBF4@<X0>(uint64_t *a2@<X8>)
{
  sub_226F62704();
  result = sub_22766C2E0();
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

uint64_t sub_22712BC48@<X0>(uint64_t *a2@<X8>)
{
  sub_227666B60();
  sub_22712BD50(&qword_28139B5C0, MEMORY[0x277D52820]);
  sub_22712BD50(&qword_28139B5D8, MEMORY[0x277D52830]);
  result = sub_22766C5C0();
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

uint64_t sub_22712BD50(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_227666B60();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_22712BDAC()
{
  result = qword_28139B900;
  if (!qword_28139B900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28139B900);
  }

  return result;
}

uint64_t sub_22712BE60@<X0>(uint64_t *a2@<X8>)
{
  sub_227666B60();
  sub_22712BD50(&qword_28139B5C0, MEMORY[0x277D52820]);
  result = sub_22766C2E0();
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

uint64_t objectdestroy_7Tm(void (*a1)(void))
{

  a1(*(v1 + 32));

  return MEMORY[0x2821FE8E8](v1, 40, 7);
}

uint64_t sub_22712BFEC(uint64_t a1)
{
  v35 = sub_2276694E0();
  v3 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v34 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v5)
  {
    v27 = v1;
    v39 = MEMORY[0x277D84F90];
    sub_226F1EFF0(0, v5, 0);
    v38 = v39;
    v7 = a1 + 56;
    result = sub_22766CC90();
    v8 = result;
    v9 = 0;
    v32 = v3 + 8;
    v33 = v3 + 16;
    v28 = a1 + 64;
    v29 = v5;
    v30 = v3;
    v31 = a1 + 56;
    while ((v8 & 0x8000000000000000) == 0 && v8 < 1 << *(a1 + 32))
    {
      v11 = v8 >> 6;
      if ((*(v7 + 8 * (v8 >> 6)) & (1 << v8)) == 0)
      {
        goto LABEL_22;
      }

      v36 = *(a1 + 36);
      v12 = v34;
      v13 = v35;
      (*(v3 + 16))(v34, *(a1 + 48) + *(v3 + 72) * v8, v35);
      v37 = sub_2276694C0();
      v15 = v14;
      result = (*(v3 + 8))(v12, v13);
      v16 = v38;
      v39 = v38;
      v18 = *(v38 + 16);
      v17 = *(v38 + 24);
      if (v18 >= v17 >> 1)
      {
        result = sub_226F1EFF0((v17 > 1), v18 + 1, 1);
        v16 = v39;
      }

      *(v16 + 16) = v18 + 1;
      v19 = v16 + 16 * v18;
      *(v19 + 32) = v37;
      *(v19 + 40) = v15;
      v10 = 1 << *(a1 + 32);
      if (v8 >= v10)
      {
        goto LABEL_23;
      }

      v7 = v31;
      v20 = *(v31 + 8 * v11);
      if ((v20 & (1 << v8)) == 0)
      {
        goto LABEL_24;
      }

      v38 = v16;
      if (v36 != *(a1 + 36))
      {
        goto LABEL_25;
      }

      v21 = v20 & (-2 << (v8 & 0x3F));
      if (v21)
      {
        v10 = __clz(__rbit64(v21)) | v8 & 0x7FFFFFFFFFFFFFC0;
        v3 = v30;
      }

      else
      {
        v22 = v11 << 6;
        v23 = v11 + 1;
        v24 = (v28 + 8 * v11);
        v3 = v30;
        while (v23 < (v10 + 63) >> 6)
        {
          v26 = *v24++;
          v25 = v26;
          v22 += 64;
          ++v23;
          if (v26)
          {
            result = sub_22704FE58(v8, v36, 0);
            v10 = __clz(__rbit64(v25)) + v22;
            goto LABEL_4;
          }
        }

        result = sub_22704FE58(v8, v36, 0);
      }

LABEL_4:
      ++v9;
      v8 = v10;
      if (v9 == v29)
      {
        return v38;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_22712C328@<X0>(void *a1@<X1>, uint64_t a2@<X8>)
{
  v34 = a2;
  v2 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  v3 = *v2;
  v4 = v2[1];
  v5 = *(v2 + 16);
  v6 = v2[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8468, &unk_22767A340);
  v7 = swift_allocObject();
  v8 = v3;
  v9 = v4;

  sub_22766A070();
  *(v7 + 16) = v8;
  *(v7 + 24) = v9;
  *(v7 + 32) = v5;
  *(v7 + 40) = v6;
  swift_getKeyPath();
  v10 = sub_2276694C0();
  v12 = v11;
  v33[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
  v33[0] = v10;
  v33[1] = v12;
  sub_226E99364(0, &qword_281398B40, 0x277CCA9C0);

  v13 = sub_22766C820();
  sub_226E93170(v33, v31, &unk_27D7BC990, &qword_227670A30);
  v14 = v32;
  if (v32)
  {
    v15 = __swift_project_boxed_opaque_existential_0(v31, v32);
    v16 = *(v14 - 8);
    v17 = MEMORY[0x28223BE20](v15);
    v19 = v31 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v16 + 16))(v19, v17);
    v20 = sub_22766D170();
    (*(v16 + 8))(v19, v14);
    __swift_destroy_boxed_opaque_existential_0(v31);
  }

  else
  {
    v20 = 0;
  }

  v21 = [objc_opt_self() expressionForConstantValue_];
  swift_unknownObjectRelease();
  v22 = [objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8478 &qword_227670A38))];

  sub_226E97D1C(v33, &unk_27D7BC990, &qword_227670A30);
  swift_beginAccess();
  v23 = v22;
  v24 = sub_22766A080();
  v26 = v25;
  MEMORY[0x22AA985C0]();
  if (*((*v26 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v26 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_22766C360();
  }

  sub_22766C3A0();
  v24(v33, 0);
  swift_endAccess();

  v27 = MEMORY[0x22AA99A00]();
  sub_227544464(v34);
  objc_autoreleasePoolPop(v27);
  swift_setDeallocating();

  v28 = qword_2813B2078;
  v29 = sub_22766A100();
  (*(*(v29 - 8) + 8))(v7 + v28, v29);
  return swift_deallocClassInstance();
}

uint64_t sub_22712C75C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X8>)
{
  v56 = a3;
  v57 = a5;
  v7 = __swift_project_boxed_opaque_existential_0(a4, a4[3]);
  v8 = *v7;
  v9 = v7[1];
  v10 = *(v7 + 16);
  v11 = v7[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB318, &qword_22767A380);
  v12 = swift_allocObject();
  v13 = v8;
  v14 = v9;

  sub_22766A070();
  *(v12 + 16) = v13;
  *(v12 + 24) = v14;
  *(v12 + 32) = v10;
  *(v12 + 40) = v11;
  swift_getKeyPath();
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
  v62 = v55;
  v60 = a1;
  v61 = a2;
  v15 = sub_226E99364(0, &qword_281398B40, 0x277CCA9C0);

  v54 = v15;
  v16 = sub_22766C820();
  sub_226E93170(&v60, v58, &unk_27D7BC990, &qword_227670A30);
  v17 = v59;
  if (v59)
  {
    v18 = __swift_project_boxed_opaque_existential_0(v58, v59);
    v19 = *(v17 - 8);
    v20 = MEMORY[0x28223BE20](v18);
    v22 = &v54 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v19 + 16))(v22, v20);
    v23 = sub_22766D170();
    (*(v19 + 8))(v22, v17);
    __swift_destroy_boxed_opaque_existential_0(v58);
  }

  else
  {
    v23 = 0;
  }

  v24 = objc_opt_self();
  v25 = [v24 expressionForConstantValue_];
  swift_unknownObjectRelease();
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB320, qword_22767A3B0);
  v27 = [objc_allocWithZone(v26) initWithLeftExpression:v16 rightExpression:v25 modifier:0 type:4 options:0];

  sub_226E97D1C(&v60, &unk_27D7BC990, &qword_227670A30);
  v28 = qword_2813B2078;
  swift_beginAccess();
  v29 = v27;
  v30 = sub_22766A080();
  v32 = v31;
  MEMORY[0x22AA985C0]();
  if (*((*v32 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v32 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_22766C360();
  }

  sub_22766C3A0();
  v30(&v60, 0);
  swift_endAccess();

  swift_getKeyPath();
  v33 = sub_2276694C0();
  v62 = v55;
  v60 = v33;
  v61 = v34;

  v35 = sub_22766C820();
  sub_226E93170(&v60, v58, &unk_27D7BC990, &qword_227670A30);
  v36 = v59;
  if (v59)
  {
    v37 = __swift_project_boxed_opaque_existential_0(v58, v59);
    v55 = v24;
    v56 = v28;
    v38 = v26;
    v39 = *(v36 - 8);
    v40 = MEMORY[0x28223BE20](v37);
    v42 = &v54 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v39 + 16))(v42, v40);
    v43 = sub_22766D170();
    (*(v39 + 8))(v42, v36);
    v26 = v38;
    v24 = v55;
    __swift_destroy_boxed_opaque_existential_0(v58);
  }

  else
  {
    v43 = 0;
  }

  v44 = [v24 expressionForConstantValue_];
  swift_unknownObjectRelease();
  v45 = [objc_allocWithZone(v26) initWithLeftExpression:v35 rightExpression:v44 modifier:0 type:4 options:0];

  sub_226E97D1C(&v60, &unk_27D7BC990, &qword_227670A30);
  swift_beginAccess();
  v46 = v45;
  v47 = sub_22766A080();
  v49 = v48;
  MEMORY[0x22AA985C0]();
  if (*((*v49 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v49 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_22766C360();
  }

  sub_22766C3A0();
  v47(&v60, 0);
  swift_endAccess();

  v50 = MEMORY[0x22AA99A00]();
  sub_227544944(v57);
  objc_autoreleasePoolPop(v50);
  swift_setDeallocating();

  v51 = qword_2813B2078;
  v52 = sub_22766A100();
  (*(*(v52 - 8) + 8))(v12 + v51, v52);
  return swift_deallocClassInstance();
}

void sub_22712CDF8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v72 = a1;
  v73 = a3;
  v5 = __swift_project_boxed_opaque_existential_0(a4, a4[3]);
  v6 = *v5;
  v7 = v5[1];
  v8 = *(v5 + 16);
  v9 = v5[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB328, &unk_227681200);
  v10 = swift_allocObject();
  v11 = v6;
  v12 = v7;

  sub_22766A070();
  v70 = v12;
  v71 = v11;
  *(v10 + 16) = v11;
  *(v10 + 24) = v12;
  v75 = v8;
  *(v10 + 32) = v8;
  v74 = v9;
  *(v10 + 40) = v9;
  swift_getKeyPath();
  v13 = sub_2276633C0();
  v83 = MEMORY[0x277D849A8];
  LODWORD(v81) = v13;
  v14 = sub_226E99364(0, &qword_281398B40, 0x277CCA9C0);

  v84 = v14;
  v15 = sub_22766C820();
  sub_226E93170(&v81, v79, &unk_27D7BC990, &qword_227670A30);
  v16 = v80;
  if (v80)
  {
    v17 = __swift_project_boxed_opaque_existential_0(v79, v80);
    v18 = *(v16 - 8);
    v19 = MEMORY[0x28223BE20](v17);
    v21 = &v69 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v18 + 16))(v21, v19);
    v22 = sub_22766D170();
    (*(v18 + 8))(v21, v16);
    __swift_destroy_boxed_opaque_existential_0(v79);
  }

  else
  {
    v22 = 0;
  }

  v23 = objc_opt_self();
  v24 = [v23 expressionForConstantValue_];
  swift_unknownObjectRelease();
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB330, qword_227681240);
  v25 = [objc_allocWithZone(v78) initWithLeftExpression:v15 rightExpression:v24 modifier:0 type:4 options:0];

  sub_226E97D1C(&v81, &unk_27D7BC990, &qword_227670A30);
  v26 = qword_2813B2078;
  swift_beginAccess();
  v27 = v25;
  v28 = sub_22766A080();
  v30 = v29;
  MEMORY[0x22AA985C0]();
  if (*((*v30 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v30 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_22766C360();
  }

  sub_22766C3A0();
  v28(&v81, 0);
  swift_endAccess();

  swift_getKeyPath();
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
  v83 = v31;
  v81 = v72;
  v82 = a2;

  v32 = sub_22766C820();
  sub_226E93170(&v81, v79, &unk_27D7BC990, &qword_227670A30);
  v33 = v80;
  v77 = v10;
  if (v80)
  {
    v34 = __swift_project_boxed_opaque_existential_0(v79, v80);
    v72 = v26;
    v35 = v31;
    v36 = *(v33 - 8);
    v37 = MEMORY[0x28223BE20](v34);
    v39 = &v69 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v36 + 16))(v39, v37);
    v40 = sub_22766D170();
    (*(v36 + 8))(v39, v33);
    v31 = v35;
    v26 = v72;
    v10 = v77;
    __swift_destroy_boxed_opaque_existential_0(v79);
  }

  else
  {
    v40 = 0;
  }

  v41 = [v23 expressionForConstantValue_];
  swift_unknownObjectRelease();
  v42 = [objc_allocWithZone(v78) initWithLeftExpression:v32 rightExpression:v41 modifier:0 type:4 options:0];

  sub_226E97D1C(&v81, &unk_27D7BC990, &qword_227670A30);
  swift_beginAccess();
  v43 = v42;
  v44 = sub_22766A080();
  v46 = v45;
  MEMORY[0x22AA985C0]();
  if (*((*v46 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v46 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_22766C360();
  }

  sub_22766C3A0();
  v44(&v81, 0);
  swift_endAccess();

  swift_getKeyPath();
  v47 = sub_2276694C0();
  v83 = v31;
  v81 = v47;
  v82 = v48;

  v49 = sub_22766C820();
  sub_226E93170(&v81, v79, &unk_27D7BC990, &qword_227670A30);
  v50 = v80;
  if (v80)
  {
    v51 = __swift_project_boxed_opaque_existential_0(v79, v80);
    v52 = *(v50 - 8);
    v53 = MEMORY[0x28223BE20](v51);
    v55 = &v69 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v52 + 16))(v55, v53);
    v56 = sub_22766D170();
    (*(v52 + 8))(v55, v50);
    v10 = v77;
    __swift_destroy_boxed_opaque_existential_0(v79);
  }

  else
  {
    v56 = 0;
  }

  v57 = [v23 expressionForConstantValue_];
  swift_unknownObjectRelease();
  v58 = [objc_allocWithZone(v78) initWithLeftExpression:v49 rightExpression:v57 modifier:0 type:4 options:0];

  sub_226E97D1C(&v81, &unk_27D7BC990, &qword_227670A30);
  swift_beginAccess();
  v59 = v58;
  v60 = sub_22766A080();
  v62 = v61;
  MEMORY[0x22AA985C0]();
  if (*((*v62 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v62 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_22766C360();
  }

  sub_22766C3A0();
  v60(&v81, 0);
  swift_endAccess();

  v63 = sub_227542300(v10 + v26, v75, v74);
  if (v63)
  {
    if (v63 != 1)
    {
      swift_willThrow();
    }

    goto LABEL_20;
  }

  v64 = v76;
  v65 = sub_22728497C(0);
  if (v64)
  {
LABEL_20:

    return;
  }

  v66 = v65;
  [v65 setResultType_];
  sub_226E99364(0, &qword_281398AE0, 0x277CBE448);
  v67 = sub_22766C9E0();
  v68 = sub_226EDAB24(v67);

  sub_226EDAB78(v68, v70);
}

void sub_22712D728(uint64_t a1, uint64_t a2, uint64_t *a3, void *a4, double a5)
{
  v90 = a3;
  v91 = a1;
  v92 = a2;
  v6 = __swift_project_boxed_opaque_existential_0(a4, a4[3]);
  v7 = *v6;
  v8 = v6[1];
  v9 = *(v6 + 16);
  v10 = v6[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB328, &unk_227681200);
  v11 = swift_allocObject();
  v12 = v7;
  v13 = v8;

  sub_22766A070();
  v88 = v13;
  v89 = v12;
  *(v11 + 16) = v12;
  *(v11 + 24) = v13;
  v94 = v9;
  *(v11 + 32) = v9;
  v93 = v10;
  *(v11 + 40) = v10;
  swift_getKeyPath();
  v14 = sub_2276633C0();
  v103 = MEMORY[0x277D849A8];
  LODWORD(v101) = v14;
  v15 = sub_226E99364(0, &qword_281398B40, 0x277CCA9C0);

  v98 = v15;
  v16 = sub_22766C820();
  sub_226E93170(&v101, v99, &unk_27D7BC990, &qword_227670A30);
  v17 = v100;
  if (v100)
  {
    v18 = __swift_project_boxed_opaque_existential_0(v99, v100);
    v19 = *(v17 - 8);
    v20 = MEMORY[0x28223BE20](v18);
    v22 = &v87 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v19 + 16))(v22, v20);
    v23 = sub_22766D170();
    (*(v19 + 8))(v22, v17);
    __swift_destroy_boxed_opaque_existential_0(v99);
  }

  else
  {
    v23 = 0;
  }

  v24 = objc_opt_self();
  v25 = [v24 expressionForConstantValue_];
  swift_unknownObjectRelease();
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB330, qword_227681240);
  v26 = [objc_allocWithZone(v97) initWithLeftExpression:v16 rightExpression:v25 modifier:0 type:4 options:0];

  sub_226E97D1C(&v101, &unk_27D7BC990, &qword_227670A30);
  v27 = qword_2813B2078;
  swift_beginAccess();
  v28 = v26;
  v29 = sub_22766A080();
  v31 = v30;
  MEMORY[0x22AA985C0]();
  if (*((*v31 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v31 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_22766C360();
  }

  sub_22766C3A0();
  v29(&v101, 0);
  swift_endAccess();

  swift_getKeyPath();
  v103 = MEMORY[0x277D839F8];
  v101 = a5;

  v32 = sub_22766C820();
  sub_226E93170(&v101, v99, &unk_27D7BC990, &qword_227670A30);
  v33 = v100;
  v96 = v24;
  if (v100)
  {
    v34 = __swift_project_boxed_opaque_existential_0(v99, v100);
    v35 = *(v33 - 8);
    v36 = MEMORY[0x28223BE20](v34);
    v38 = &v87 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v35 + 16))(v38, v36);
    v39 = sub_22766D170();
    (*(v35 + 8))(v38, v33);
    v24 = v96;
    __swift_destroy_boxed_opaque_existential_0(v99);
  }

  else
  {
    v39 = 0;
  }

  v40 = [v24 expressionForConstantValue_];
  swift_unknownObjectRelease();
  v41 = [objc_allocWithZone(v97) initWithLeftExpression:v32 rightExpression:v40 modifier:0 type:1 options:0];

  sub_226E97D1C(&v101, &unk_27D7BC990, &qword_227670A30);
  swift_beginAccess();
  v42 = v41;
  v43 = sub_22766A080();
  v45 = v44;
  MEMORY[0x22AA985C0]();
  if (*((*v45 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v45 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_22766C360();
  }

  sub_22766C3A0();
  v43(&v101, 0);
  swift_endAccess();

  swift_getKeyPath();
  v46 = sub_2276694C0();
  v48 = v47;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
  v103 = v49;
  v101 = *&v46;
  v102 = v48;

  v50 = sub_22766C820();
  sub_226E93170(&v101, v99, &unk_27D7BC990, &qword_227670A30);
  v51 = v100;
  if (v100)
  {
    v52 = __swift_project_boxed_opaque_existential_0(v99, v100);
    v90 = &v87;
    v53 = v11;
    v54 = v27;
    v55 = v49;
    v56 = *(v51 - 8);
    v57 = MEMORY[0x28223BE20](v52);
    v59 = &v87 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v56 + 16))(v59, v57);
    v60 = sub_22766D170();
    (*(v56 + 8))(v59, v51);
    v49 = v55;
    v27 = v54;
    v11 = v53;
    v24 = v96;
    __swift_destroy_boxed_opaque_existential_0(v99);
  }

  else
  {
    v60 = 0;
  }

  v61 = [v24 expressionForConstantValue_];
  swift_unknownObjectRelease();
  v62 = [objc_allocWithZone(v97) initWithLeftExpression:v50 rightExpression:v61 modifier:0 type:4 options:0];

  sub_226E97D1C(&v101, &unk_27D7BC990, &qword_227670A30);
  swift_beginAccess();
  v63 = v62;
  v64 = sub_22766A080();
  v66 = v65;
  MEMORY[0x22AA985C0]();
  if (*((*v66 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v66 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_22766C360();
  }

  sub_22766C3A0();
  v64(&v101, 0);
  swift_endAccess();

  swift_getKeyPath();
  v103 = v49;
  v101 = *&v91;
  v102 = v92;

  v67 = sub_22766C820();
  sub_226E93170(&v101, v99, &unk_27D7BC990, &qword_227670A30);
  v68 = v100;
  if (v100)
  {
    v69 = __swift_project_boxed_opaque_existential_0(v99, v100);
    v70 = *(v68 - 8);
    v71 = MEMORY[0x28223BE20](v69);
    v73 = &v87 - ((v72 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v70 + 16))(v73, v71);
    v74 = sub_22766D170();
    (*(v70 + 8))(v73, v68);
    v24 = v96;
    __swift_destroy_boxed_opaque_existential_0(v99);
  }

  else
  {
    v74 = 0;
  }

  v75 = [v24 expressionForConstantValue_];
  swift_unknownObjectRelease();
  v76 = [objc_allocWithZone(v97) initWithLeftExpression:v67 rightExpression:v75 modifier:0 type:4 options:0];

  sub_226E97D1C(&v101, &unk_27D7BC990, &qword_227670A30);
  swift_beginAccess();
  v77 = v76;
  v78 = sub_22766A080();
  v80 = v79;
  MEMORY[0x22AA985C0]();
  if (*((*v80 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v80 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_22766C360();
  }

  sub_22766C3A0();
  v78(&v101, 0);
  swift_endAccess();

  v81 = sub_227542300(v11 + v27, v94, v93);
  if (v81)
  {
    if (v81 != 1)
    {
      swift_willThrow();
    }

    goto LABEL_25;
  }

  v82 = v95;
  v83 = sub_22728497C(0);
  if (v82)
  {
LABEL_25:

    return;
  }

  v84 = v83;
  [v83 setResultType_];
  sub_226E99364(0, &qword_281398AE0, 0x277CBE448);
  v85 = sub_22766C9E0();
  v86 = sub_226EDAB24(v85);

  sub_226EDAB78(v86, v88);
}