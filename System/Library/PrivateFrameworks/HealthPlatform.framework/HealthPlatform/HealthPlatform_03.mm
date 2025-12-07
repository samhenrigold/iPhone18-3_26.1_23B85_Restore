void sub_228433408(char **a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_129:
    v5 = *a1;
    if (!*a1)
    {
      goto LABEL_170;
    }

    v4 = v8;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v127 = v4;
LABEL_132:
      v150 = v127;
      v4 = *(v127 + 2);
      if (v4 >= 2)
      {
        while (*a3)
        {
          v128 = *&v127[16 * v4];
          v129 = v127;
          v130 = *&v127[16 * v4 + 24];
          sub_228433ED4((*a3 + 8 * v128), (*a3 + 8 * *&v127[16 * v4 + 16]), (*a3 + 8 * v130), v5);
          if (v145)
          {
            goto LABEL_140;
          }

          if (v130 < v128)
          {
            goto LABEL_157;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v129 = sub_22851F230(v129);
          }

          if (v4 - 2 >= *(v129 + 2))
          {
            goto LABEL_158;
          }

          v131 = &v129[16 * v4];
          *v131 = v128;
          *(v131 + 1) = v130;
          v150 = v129;
          sub_22851F1A4(v4 - 1);
          v127 = v150;
          v4 = *(v150 + 2);
          if (v4 <= 1)
          {
            goto LABEL_140;
          }
        }

        goto LABEL_168;
      }

LABEL_140:

      return;
    }

LABEL_164:
    v127 = sub_22851F230(v4);
    goto LABEL_132;
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
LABEL_4:
  v9 = v7;
  if (v7 + 1 >= v6)
  {
    v143 = v7 + 1;
    goto LABEL_42;
  }

  v135 = v8;
  v4 = *a3;
  v149 = *(*a3 + 8 * (v7 + 1));
  v148 = *(v4 + 8 * v7);
  v10 = v148;
  v11 = v149;
  v5 = v10;
  v146 = sub_22843127C(&v149, &v148);
  if (v145)
  {

    return;
  }

  v12 = v9 + 2;
  if (v9 + 2 >= v6)
  {
    goto LABEL_32;
  }

  v143 = v9 + 2;
  v132 = v9;
  v4 += 8 * v9 + 16;
  v140 = v6;
  while (1)
  {
    v14 = *(v4 - 8);
    v15 = *v4;
    v16 = v14;
    v17 = [v15 package];
    v18 = sub_22855D1AC();
    v20 = v19;

    v21 = [v16 package];
    v22 = sub_22855D1AC();
    v5 = v23;

    if (v18 == v22 && v20 == v5)
    {
    }

    else
    {
      v25 = sub_22855E15C();

      if (v25)
      {

        if ((v146 & 1) == 0)
        {
          v8 = v135;
          v9 = v132;
          goto LABEL_42;
        }

        goto LABEL_9;
      }
    }

    v26 = [v15 package];
    v27 = sub_22855D1AC();
    v29 = v28;

    v30 = [v16 package];
    v31 = sub_22855D1AC();
    v5 = v32;

    if (v31 == v27 && v5 == v29)
    {
    }

    else
    {
      v33 = sub_22855E15C();

      if (v33)
      {

        if (v146)
        {
          goto LABEL_27;
        }

        goto LABEL_9;
      }
    }

    v34 = [v15 name];
    v5 = sub_22855D1AC();
    v36 = v35;

    v37 = [v16 name];
    v38 = sub_22855D1AC();
    v40 = v39;

    if (v5 == v38 && v36 == v40)
    {

      if (v146)
      {
LABEL_27:
        v8 = v135;
        v12 = v143;
        v9 = v132;
        goto LABEL_33;
      }

      goto LABEL_9;
    }

    v13 = sub_22855E15C();

    if ((v146 ^ v13))
    {
      break;
    }

LABEL_9:
    v4 += 8;
    if (v140 == ++v143)
    {
      v12 = v140;
      goto LABEL_31;
    }
  }

  v12 = v143;
LABEL_31:
  v9 = v132;
LABEL_32:
  v8 = v135;
  if (v146)
  {
LABEL_33:
    if (v12 < v9)
    {
      goto LABEL_161;
    }

    v143 = v12;
    if (v9 < v12)
    {
      v41 = 8 * v12 - 8;
      v42 = 8 * v9;
      v43 = v9;
      do
      {
        if (v43 != --v12)
        {
          v45 = *a3;
          if (!*a3)
          {
            goto LABEL_167;
          }

          v44 = *(v45 + v42);
          *(v45 + v42) = *(v45 + v41);
          *(v45 + v41) = v44;
        }

        ++v43;
        v41 -= 8;
        v42 += 8;
      }

      while (v43 < v12);
    }
  }

  else
  {
    v143 = v12;
  }

LABEL_42:
  v7 = v143;
  v46 = a3[1];
  if (v143 >= v46)
  {
    goto LABEL_74;
  }

  if (__OFSUB__(v143, v9))
  {
    goto LABEL_160;
  }

  if (v143 - v9 >= a4)
  {
    v7 = v143;
LABEL_74:
    if (v7 < v9)
    {
      goto LABEL_159;
    }

    goto LABEL_75;
  }

  v47 = v9 + a4;
  if (__OFADD__(v9, a4))
  {
    goto LABEL_162;
  }

  if (v47 >= v46)
  {
    v47 = a3[1];
  }

  if (v47 < v9)
  {
LABEL_163:
    __break(1u);
    goto LABEL_164;
  }

  v7 = v143;
  if (v143 == v47)
  {
    goto LABEL_74;
  }

  v136 = v8;
  v147 = *a3;
  v4 = *a3 + 8 * v143 - 8;
  v48 = v143;
  v133 = v9;
  v49 = v9 - v143;
  v138 = v47;
  while (2)
  {
    v144 = v48;
    v50 = *(v147 + 8 * v48);
    v139 = v49;
    v141 = v4;
LABEL_54:
    v51 = *v4;
    v52 = v50;
    v53 = v51;
    v54 = [v52 package];
    v55 = sub_22855D1AC();
    v57 = v56;

    v58 = [v53 package];
    v59 = sub_22855D1AC();
    v5 = v60;

    if (v55 == v59 && v57 == v5)
    {
    }

    else
    {
      v62 = sub_22855E15C();

      if (v62)
      {

        goto LABEL_68;
      }
    }

    v63 = [v52 package];
    v64 = sub_22855D1AC();
    v66 = v65;

    v67 = [v53 package];
    v68 = sub_22855D1AC();
    v5 = v69;

    if (v68 == v64 && v5 == v66)
    {

      break;
    }

    v70 = sub_22855E15C();

    if (v70)
    {

LABEL_52:
      v48 = v144 + 1;
      v4 = v141 + 8;
      v49 = v139 - 1;
      if (v144 + 1 != v138)
      {
        continue;
      }

      v7 = v138;
      v8 = v136;
      v9 = v133;
      if (v138 < v133)
      {
        goto LABEL_159;
      }

LABEL_75:
      v81 = v8;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v8 = v81;
      }

      else
      {
        v8 = sub_2284263F0(0, *(v81 + 2) + 1, 1, v81);
      }

      v4 = *(v8 + 2);
      v82 = *(v8 + 3);
      v83 = v4 + 1;
      if (v4 >= v82 >> 1)
      {
        v8 = sub_2284263F0((v82 > 1), v4 + 1, 1, v8);
      }

      *(v8 + 2) = v83;
      v84 = &v8[16 * v4];
      *(v84 + 4) = v9;
      *(v84 + 5) = v7;
      v85 = *a1;
      if (!*a1)
      {
        goto LABEL_169;
      }

      if (v4)
      {
        while (2)
        {
          v86 = v83 - 1;
          if (v83 >= 4)
          {
            v91 = &v8[16 * v83 + 32];
            v92 = *(v91 - 64);
            v93 = *(v91 - 56);
            v97 = __OFSUB__(v93, v92);
            v94 = v93 - v92;
            if (v97)
            {
              goto LABEL_146;
            }

            v96 = *(v91 - 48);
            v95 = *(v91 - 40);
            v97 = __OFSUB__(v95, v96);
            v89 = v95 - v96;
            v90 = v97;
            if (v97)
            {
              goto LABEL_147;
            }

            v98 = &v8[16 * v83];
            v100 = *v98;
            v99 = *(v98 + 1);
            v97 = __OFSUB__(v99, v100);
            v101 = v99 - v100;
            if (v97)
            {
              goto LABEL_149;
            }

            v97 = __OFADD__(v89, v101);
            v102 = v89 + v101;
            if (v97)
            {
              goto LABEL_152;
            }

            if (v102 >= v94)
            {
              v120 = &v8[16 * v86 + 32];
              v122 = *v120;
              v121 = *(v120 + 1);
              v97 = __OFSUB__(v121, v122);
              v123 = v121 - v122;
              if (v97)
              {
                goto LABEL_156;
              }

              if (v89 < v123)
              {
                v86 = v83 - 2;
              }
            }

            else
            {
LABEL_94:
              if (v90)
              {
                goto LABEL_148;
              }

              v103 = &v8[16 * v83];
              v105 = *v103;
              v104 = *(v103 + 1);
              v106 = __OFSUB__(v104, v105);
              v107 = v104 - v105;
              v108 = v106;
              if (v106)
              {
                goto LABEL_151;
              }

              v109 = &v8[16 * v86 + 32];
              v111 = *v109;
              v110 = *(v109 + 1);
              v97 = __OFSUB__(v110, v111);
              v112 = v110 - v111;
              if (v97)
              {
                goto LABEL_154;
              }

              if (__OFADD__(v107, v112))
              {
                goto LABEL_155;
              }

              if (v107 + v112 < v89)
              {
                goto LABEL_108;
              }

              if (v89 < v112)
              {
                v86 = v83 - 2;
              }
            }
          }

          else
          {
            if (v83 == 3)
            {
              v87 = *(v8 + 4);
              v88 = *(v8 + 5);
              v97 = __OFSUB__(v88, v87);
              v89 = v88 - v87;
              v90 = v97;
              goto LABEL_94;
            }

            v113 = &v8[16 * v83];
            v115 = *v113;
            v114 = *(v113 + 1);
            v97 = __OFSUB__(v114, v115);
            v107 = v114 - v115;
            v108 = v97;
LABEL_108:
            if (v108)
            {
              goto LABEL_150;
            }

            v116 = &v8[16 * v86];
            v118 = *(v116 + 4);
            v117 = *(v116 + 5);
            v97 = __OFSUB__(v117, v118);
            v119 = v117 - v118;
            if (v97)
            {
              goto LABEL_153;
            }

            if (v119 < v107)
            {
              break;
            }
          }

          v4 = v86 - 1;
          if (v86 - 1 >= v83)
          {
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
LABEL_149:
            __break(1u);
LABEL_150:
            __break(1u);
LABEL_151:
            __break(1u);
LABEL_152:
            __break(1u);
LABEL_153:
            __break(1u);
LABEL_154:
            __break(1u);
LABEL_155:
            __break(1u);
LABEL_156:
            __break(1u);
LABEL_157:
            __break(1u);
LABEL_158:
            __break(1u);
LABEL_159:
            __break(1u);
LABEL_160:
            __break(1u);
LABEL_161:
            __break(1u);
LABEL_162:
            __break(1u);
            goto LABEL_163;
          }

          if (!*a3)
          {
            goto LABEL_166;
          }

          v5 = v8;
          v124 = *&v8[16 * v4 + 32];
          v125 = *&v8[16 * v86 + 40];
          sub_228433ED4((*a3 + 8 * v124), (*a3 + 8 * *&v8[16 * v86 + 32]), (*a3 + 8 * v125), v85);
          if (v145)
          {
            goto LABEL_140;
          }

          if (v125 < v124)
          {
            goto LABEL_144;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v5 = sub_22851F230(v5);
          }

          if (v4 >= v5[2])
          {
            goto LABEL_145;
          }

          v126 = &v5[2 * v4];
          v126[4] = v124;
          v126[5] = v125;
          v150 = v5;
          sub_22851F1A4(v86);
          v8 = v150;
          v83 = *(v150 + 2);
          if (v83 <= 1)
          {
            break;
          }

          continue;
        }
      }

      v6 = a3[1];
      if (v7 >= v6)
      {
        goto LABEL_129;
      }

      goto LABEL_4;
    }

    break;
  }

  v71 = [v52 name];
  v5 = sub_22855D1AC();
  v73 = v72;

  v74 = [v53 name];
  v75 = sub_22855D1AC();
  v77 = v76;

  if (v5 == v75 && v73 == v77)
  {

    goto LABEL_52;
  }

  v78 = sub_22855E15C();

  if ((v78 & 1) == 0)
  {
    goto LABEL_52;
  }

LABEL_68:
  if (v147)
  {
    v79 = *v4;
    v50 = *(v4 + 8);
    *v4 = v50;
    *(v4 + 8) = v79;
    v4 -= 8;
    if (__CFADD__(v49++, 1))
    {
      goto LABEL_52;
    }

    goto LABEL_54;
  }

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
}

uint64_t sub_228433ED4(id *__dst, id *__src, id *a3, unint64_t a4)
{
  v5 = v4;
  v6 = a3;
  v7 = __src;
  v8 = __dst;
  v9 = __src - __dst;
  v10 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v10 = __src - __dst;
  }

  v11 = v10 >> 3;
  v12 = a3 - __src;
  v13 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v13 = a3 - __src;
  }

  v14 = v13 >> 3;
  if (v11 < v13 >> 3)
  {
    if (a4 != __dst || &__dst[v11] <= a4)
    {
      v15 = a4;
      memmove(a4, __dst, 8 * v11);
      a4 = v15;
      v5 = v4;
    }

    v16 = (a4 + 8 * v11);
    if (v9 < 8)
    {
LABEL_10:
      v7 = v8;
      goto LABEL_50;
    }

    while (1)
    {
      if (v7 >= v6)
      {
        goto LABEL_10;
      }

      v18 = v16;
      v19 = v7;
      v53 = *v7;
      v20 = v5;
      v21 = a4;
      v52 = *a4;
      v22 = v52;
      v23 = v53;
      v24 = v22;
      v25 = sub_22843127C(&v53, &v52);
      if (v20)
      {

        v42 = v21;
        v44 = v18 - v21 + 7;
        if ((v18 - v21) >= 0)
        {
          v44 = v18 - v21;
        }

        v45 = v44 >> 3;
        if (v8 < v21 || v8 >= (v21 + (v44 & 0xFFFFFFFFFFFFFFF8)))
        {
          memmove(v8, v21, 8 * v45);
          return 1;
        }

        if (v8 == v21)
        {
          return 1;
        }

        v43 = 8 * v45;
        v41 = v8;
        goto LABEL_56;
      }

      v26 = v25;

      if (v26)
      {
        break;
      }

      v17 = v21;
      a4 = (v21 + 1);
      v7 = v19;
      if (v8 != v21)
      {
        goto LABEL_12;
      }

LABEL_13:
      ++v8;
      v16 = v18;
      v5 = 0;
      if (a4 >= v18)
      {
        goto LABEL_10;
      }
    }

    v17 = v19;
    v7 = v19 + 1;
    a4 = v21;
    if (v8 == v19)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v8 = *v17;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[v14] <= a4)
  {
    v27 = a4;
    memmove(a4, __src, 8 * v14);
    a4 = v27;
    v5 = v4;
  }

  v16 = (a4 + 8 * v14);
  if (v12 < 8 || v7 <= v8)
  {
LABEL_50:
    v46 = v16 - a4 + 7;
    if ((v16 - a4) >= 0)
    {
      v46 = v16 - a4;
    }

    if (v7 < a4 || v7 >= a4 + (v46 & 0xFFFFFFFFFFFFFFF8) || v7 != a4)
    {
      v43 = 8 * (v46 >> 3);
      v41 = v7;
      v42 = a4;
LABEL_56:
      memmove(v41, v42, v43);
    }

    return 1;
  }

  v28 = -a4;
  v51 = a4;
  v48 = -a4;
  v49 = v8;
LABEL_25:
  v50 = v7;
  v29 = v7 - 1;
  v30 = v16 + v28;
  --v6;
  v31 = v16;
  while (1)
  {
    v32 = *--v31;
    v53 = v32;
    v33 = v29;
    v52 = *v29;
    v34 = v52;
    v35 = v32;
    v36 = v34;
    v37 = sub_22843127C(&v53, &v52);
    if (v5)
    {
      break;
    }

    v38 = v37;

    v39 = v6 + 1;
    if (v38)
    {
      if (v39 != v50)
      {
        *v6 = *v33;
      }

      a4 = v51;
      if (v16 <= v51 || (v7 = v33, v28 = v48, v33 <= v49))
      {
        v7 = v33;
        goto LABEL_50;
      }

      goto LABEL_25;
    }

    if (v39 != v16)
    {
      *v6 = *v31;
    }

    v30 -= 8;
    --v6;
    v16 = v31;
    v29 = v33;
    if (v31 <= v51)
    {
      v16 = v31;
      v7 = v50;
      a4 = v51;
      goto LABEL_50;
    }
  }

  if (v30 >= 0)
  {
    v40 = v30;
  }

  else
  {
    v40 = v30 + 7;
  }

  v41 = v50;
  v42 = v51;
  if (v50 < v51 || v50 >= v51 + (v40 & 0xFFFFFFFFFFFFFFF8) || v50 != v51)
  {
    v43 = 8 * (v40 >> 3);
    goto LABEL_56;
  }

  return 1;
}

unint64_t sub_228434270(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    return a1 & 0xFFFFFFFFFFFFFF8;
  }

  v3 = sub_22855DB4C();
  if (!v3)
  {
LABEL_7:

    return MEMORY[0x277D84F90];
  }

  v4 = v3;
  v5 = sub_2284630BC();
  sub_2284AC9F8(v5 + 32, v4, a1);
  v7 = v6;

  result = v5;
  if (v7 != v4)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

void *sub_228434304(void *a1, uint64_t a2, uint64_t a3)
{
  v22 = a2;
  v23 = a3;
  v21 = a1;
  v4 = sub_22855D81C();
  v19 = *(v4 - 8);
  v20 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22855D7BC();
  MEMORY[0x28223BE20](v7);
  v8 = sub_22855CFEC();
  MEMORY[0x28223BE20](v8 - 8);
  v9 = MEMORY[0x277D84F90];
  v10 = sub_22847C760(MEMORY[0x277D84F90]);
  v11 = sub_22847C760(v9);
  sub_2284350F4(0);
  v12 = swift_allocObject();
  *(v12 + 64) = 0;
  *(v12 + 16) = v10;
  *(v12 + 24) = v11;
  *(v12 + 32) = 0;
  *(v12 + 40) = v9;
  *(v12 + 48) = v9;
  *(v12 + 56) = 0;
  v3[5] = v12;
  v18[1] = sub_2283EF310(0, &qword_280DED120, 0x277D85C78);
  sub_22855CFDC();
  v24 = v9;
  sub_228435154(&unk_280DED140, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  v13 = MEMORY[0x277D85230];
  sub_2283FA2E8(0, &qword_280DED250, MEMORY[0x277D85230]);
  sub_2283F461C(&qword_280DED240, &qword_280DED250, v13);
  sub_22855DA9C();
  (*(v19 + 104))(v6, *MEMORY[0x277D85260], v20);
  v3[6] = sub_22855D84C();
  v14 = v21;
  v15 = v22;
  v3[2] = v21;
  v3[3] = v15;
  v3[4] = v23;
  v16 = v14;

  sub_228431678();
  return v3;
}

uint64_t get_enum_tag_for_layout_string_14HealthPlatform38CachingSharedSummaryTransactionBuilderC10CacheStateO(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_2284348FC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_228434944(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2284349C8(void *a1, void *a2)
{
  v4 = a1[2];
  v5 = a2;
  sub_228434D5C(v4);
  a1[2] = a2;
  v6 = a1[3];
  v7 = *(v6 + 16);
  if (v7)
  {
    v8 = v6 + 56;
    do
    {
      v9 = *(v8 - 8);
      v8 += 32;

      v9(v5);

      --v7;
    }

    while (v7);
  }

  v10 = MEMORY[0x277D84F90];
  v11 = a1[4];
  a1[3] = MEMORY[0x277D84F90];
  a1[4] = v10;
  v12 = *(v11 + 16);
  if (v12)
  {
    v24 = v10;
    sub_2284273F0(0, v12, 0);
    v13 = v24;
    v14 = (v11 + 56);
    do
    {
      v15 = *(v14 - 3);
      v16 = *v14;
      v17 = swift_allocObject();
      v18 = *(v14 - 1);
      *(v17 + 16) = v15;
      *(v17 + 24) = v18;
      *(v17 + 40) = v16;
      *(v17 + 48) = v5;
      v20 = *(v24 + 16);
      v19 = *(v24 + 24);
      v21 = v5;

      if (v20 >= v19 >> 1)
      {
        sub_2284273F0((v19 > 1), v20 + 1, 1);
      }

      *(v24 + 16) = v20 + 1;
      v22 = v24 + 16 * v20;
      *(v22 + 32) = sub_228434DAC;
      *(v22 + 40) = v17;
      v14 += 4;
      --v12;
    }

    while (v12);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return v13;
}

uint64_t sub_228434B8C(void *a1)
{
  sub_228434D5C(a1[2]);
  a1[2] = 2;
  v2 = a1[3];
  v3 = *(v2 + 16);
  if (v3)
  {

    v4 = v2 + 56;
    do
    {
      v5 = *(v4 - 24);
      v4 += 32;

      v5(a1);

      --v3;
    }

    while (v3);
  }

  v6 = MEMORY[0x277D84F90];
  v7 = a1[4];
  a1[3] = MEMORY[0x277D84F90];
  a1[4] = v6;
  v8 = *(v7 + 16);
  if (v8)
  {
    v18 = v6;
    sub_2284273F0(0, v8, 0);
    v9 = v18;
    v10 = (v7 + 40);
    do
    {
      v11 = *(v10 - 1);
      v12 = *v10;
      v13 = swift_allocObject();
      *(v13 + 16) = v11;
      *(v13 + 24) = v12;
      v14 = *(v18 + 16);
      v15 = *(v18 + 24);

      if (v14 >= v15 >> 1)
      {
        sub_2284273F0((v15 > 1), v14 + 1, 1);
      }

      *(v18 + 16) = v14 + 1;
      v16 = v18 + 16 * v14;
      *(v16 + 32) = sub_2284186F8;
      *(v16 + 40) = v13;
      v10 += 4;
      --v8;
    }

    while (v8);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return v9;
}

void sub_228434D5C(id a1)
{
  if (a1 >= 3)
  {
  }
}

unint64_t sub_228434D9C(unint64_t result)
{
  if (result >= 2)
  {
  }

  return result;
}

uint64_t objectdestroy_33Tm()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t objectdestroy_26Tm()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t objectdestroyTm()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t objectdestroy_5Tm()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t objectdestroy_102Tm(void (*a1)(void))
{

  a1(*(v1 + 32));

  return MEMORY[0x2821FE8E8](v1, 40, 7);
}

id sub_228435074(id result)
{
  if (result >= 3)
  {
    return result;
  }

  return result;
}

uint64_t objectdestroy_108Tm()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

void sub_2284350F4(uint64_t a1)
{
  if (!qword_280DE90E8)
  {
    type metadata accessor for os_unfair_lock_s(255);
    v1 = sub_22855DCFC();
    if (!v2)
    {
      atomic_store(v1, &qword_280DE90E8);
    }
  }
}

uint64_t sub_228435154(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_2284351B8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_228435200(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_228435250(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 8))
  {
    return (*a1 + 2147483645);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 2;
  if (v4 >= 4)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2284352AC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFD)
  {
    *result = 0;
    *result = a2 - 2147483645;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

void *sub_2284352FC(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

uint64_t sub_22843532C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_228435374(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_2284353C8()
{
  result = qword_280DEA330;
  if (!qword_280DEA330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DEA330);
  }

  return result;
}

uint64_t PluginStorage.uniqueIdentifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t PluginStorage.uniqueIdentifier.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

void *PluginStorage.sourceProfile.getter()
{
  v1 = *(v0 + 16);
  v2 = v1;
  return v1;
}

uint64_t PluginStorage.data.getter()
{
  v1 = *(v0 + 24);
  sub_22843560C(v1, *(v0 + 32));
  return v1;
}

uint64_t sub_22843560C(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_22842B3E0(result, a2);
  }

  return result;
}

uint64_t PluginStorage.data.setter(uint64_t a1, uint64_t a2)
{
  result = sub_22842B378(*(v2 + 24), *(v2 + 32));
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

uint64_t PluginStorage.pluginIdentifier.getter()
{
  v1 = *(v0 + 40);

  return v1;
}

uint64_t PluginStorage.pluginIdentifier.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return result;
}

uint64_t PluginStorage.init(uniqueIdentifier:sourceProfile:data:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  a6[5] = 0;
  a6[6] = 0xE000000000000000;
  *a6 = a1;
  a6[1] = a2;
  a6[2] = a3;
  result = sub_22842B378(0, 0xF000000000000000);
  a6[3] = a4;
  a6[4] = a5;
  return result;
}

unint64_t PluginStorage.debugDescription.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_22855DC6C();

  MEMORY[0x22AAB92A0](v1, v2);
  MEMORY[0x22AAB92A0](0xD000000000000011, 0x800000022856E1D0);
  v4 = SourceProfile.description.getter(v3);
  MEMORY[0x22AAB92A0](v4);

  return 0xD000000000000011;
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataV15_RepresentationO(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataVSg(uint64_t a1)
{
  v1 = *(a1 + 8) >> 60;
  if (((4 * v1) & 0xC) != 0)
  {
    return 16 - ((4 * v1) & 0xC | (v1 >> 2));
  }

  else
  {
    return 0;
  }
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_228435870(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2284358B8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_228435914(id *a1@<X0>, SEL *a2@<X3>, uint64_t (*a3)(void)@<X4>, unint64_t *a4@<X5>, uint64_t (*a5)(uint64_t)@<X6>, uint64_t *a6@<X8>)
{
  v10 = [*a1 *a2];
  a3(0);
  sub_228436158(a4, a5);
  v11 = sub_22855D51C();

  *a6 = v11;
}

void sub_2284359A0(uint64_t *a1, void **a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), unint64_t *a6, uint64_t (*a7)(uint64_t), SEL *a8)
{
  v11 = *a2;
  a5(0);
  sub_228436158(a6, a7);
  v12 = sub_22855D50C();
  [v11 *a8];
}

void sub_228435A3C(id *a1)
{
  v1 = [*a1 dateSubmitted];
  sub_22855C13C();
}

void sub_228435A9C(id *a1@<X0>, SEL *a2@<X3>, uint64_t *a3@<X8>)
{
  v4 = [*a1 *a2];
  v5 = sub_22855D1AC();
  v7 = v6;

  *a3 = v5;
  a3[1] = v7;
}

void sub_228435AF0(id *a1@<X0>, SEL *a2@<X3>, uint64_t *a3@<X8>)
{
  v4 = [*a1 *a2];
  if (v4)
  {
    v5 = v4;
    v6 = sub_22855C09C();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0xF000000000000000;
  }

  *a3 = v6;
  a3[1] = v8;
}

void sub_228435B54(void *a1, void **a2, uint64_t a3, uint64_t a4, SEL *a5)
{
  v6 = *a2;
  if (a1[1] >> 60 == 15)
  {
    v7 = 0;
  }

  else
  {
    v7 = sub_22855C08C();
  }

  v8 = v7;
  [v6 *a5];
}

void sub_228435BCC(id *a1@<X0>, SEL *a2@<X3>, uint64_t *a3@<X8>)
{
  v4 = [*a1 *a2];
  if (v4)
  {
    v5 = v4;
    v6 = sub_22855D1AC();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  *a3 = v6;
  a3[1] = v8;
}

void sub_228435C30(void *a1, void **a2, uint64_t a3, uint64_t a4, SEL *a5)
{
  v6 = *a2;
  if (a1[1])
  {
    v7 = sub_22855D17C();
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;
  [v6 *a5];
}

uint64_t sub_228435CA0@<X0>(id *a1@<X0>, SEL *a2@<X3>, uint64_t a3@<X8>)
{
  v4 = [*a1 *a2];
  if (v4)
  {
    v5 = v4;
    sub_22855C13C();

    v6 = 0;
  }

  else
  {
    v6 = 1;
  }

  v7 = sub_22855C16C();
  v8 = *(*(v7 - 8) + 56);

  return v8(a3, v6, 1, v7);
}

void sub_228435D40(uint64_t a1, void **a2, uint64_t a3, uint64_t a4, SEL *a5)
{
  sub_22843609C(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2284360F4(a1, v10);
  v11 = *a2;
  v12 = sub_22855C16C();
  v13 = *(v12 - 8);
  v14 = 0;
  if ((*(v13 + 48))(v10, 1, v12) != 1)
  {
    v14 = sub_22855C10C();
    (*(v13 + 8))(v10, v12);
  }

  [v11 *a5];
}

void keypath_set_12Tm(void *a1, void **a2, uint64_t a3, uint64_t a4, SEL *a5)
{
  v6 = *a2;
  v7 = sub_22855D17C();
  [v6 *a5];
}

void sub_22843609C(uint64_t a1)
{
  if (!qword_280DEE380)
  {
    sub_22855C16C();
    v1 = sub_22855DA2C();
    if (!v2)
    {
      atomic_store(v1, &qword_280DEE380);
    }
  }
}

uint64_t sub_2284360F4(uint64_t a1, uint64_t a2)
{
  sub_22843609C(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_228436158(unint64_t *a1, uint64_t (*a2)(uint64_t))
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

uint64_t Publisher.receive(on:domain:)(void *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v8 = *a2;
  v9 = *(a2 + 24);
  v10 = a1[3];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v10);
  v13 = v8;
  v14 = *(a2 + 1);
  v15 = v9;
  return (*(v11 + 8))(v4, &v13, a3, a4, v10, v11);
}

uint64_t Publisher.subscribe(on:domain:)(void *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v8 = *a2;
  v9 = *(a2 + 24);
  v10 = a1[3];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v10);
  v13 = v8;
  v14 = *(a2 + 1);
  v15 = v9;
  return (*(v11 + 16))(v4, &v13, a3, a4, v10, v11);
}

uint64_t CountryRetrievalRecord.isoCountryCode.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t CountryRetrievalRecord.isoCountryCode.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t CountryRetrievalRecord.retrieved.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for CountryRetrievalRecord(0) + 24);
  v4 = sub_22855C16C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for CountryRetrievalRecord(uint64_t a1)
{
  result = qword_280DEBBD0;
  if (!qword_280DEBBD0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t CountryRetrievalRecord.retrieved.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for CountryRetrievalRecord(0) + 24);
  v4 = sub_22855C16C();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t CountryRetrievalRecord.init(isoCountryCode:provenance:retrieved:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  *a5 = a1;
  *(a5 + 1) = a2;
  *(a5 + 2) = a3;
  v7 = *(type metadata accessor for CountryRetrievalRecord(0) + 24);
  v8 = sub_22855C16C();
  v9 = *(*(v8 - 8) + 32);

  return v9(&a5[v7], a4, v8);
}

uint64_t _s14HealthPlatform15GenerationPhaseO9hashValueSivg_0()
{
  v1 = *v0;
  sub_22855E22C();
  MEMORY[0x22AABA2B0](v1);
  return sub_22855E27C();
}

uint64_t sub_228436628(uint64_t a1)
{
  v2 = *v1;
  sub_22855E22C();
  MEMORY[0x22AABA2B0](v2);
  return sub_22855E27C();
}

uint64_t sub_22843666C()
{
  v1 = 0x6E616E65766F7270;
  if (*v0 != 1)
  {
    v1 = 0x6576656972746572;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x746E756F436F7369;
  }
}

uint64_t sub_2284366DC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_2284377DC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_228436710(uint64_t a1)
{
  v2 = sub_228436978();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22843674C(uint64_t a1)
{
  v2 = sub_228436978();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t CountryRetrievalRecord.encode(to:)(void *a1)
{
  sub_228436D94(0, &qword_280DE9000, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = &v9[-v6];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_228436978();
  sub_22855E31C();
  v9[15] = 0;
  sub_22855E08C();
  if (!v1)
  {
    type metadata accessor for CountryRetrievalRecord(0);
    v9[14] = 2;
    sub_22855C16C();
    sub_2284373B4(&unk_280DECD90, MEMORY[0x277CC9578], MEMORY[0x277CC9580]);
    sub_22855E0CC();
    v9[13] = 1;
    sub_22855E0BC();
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_228436978()
{
  result = qword_280DEBBF0;
  if (!qword_280DEBBF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DEBBF0);
  }

  return result;
}

uint64_t CountryRetrievalRecord.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v25 = sub_22855C16C();
  v23 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v5 = v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_228436D94(0, &qword_27D83F4D8, MEMORY[0x277D844C8]);
  v26 = v6;
  v24 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = v19 - v7;
  v9 = type metadata accessor for CountryRetrievalRecord(0);
  MEMORY[0x28223BE20](v9);
  v11 = (v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_228436978();
  sub_22855E30C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v20 = v9;
  v21 = a1;
  v13 = v24;
  v12 = v25;
  v29 = 0;
  *v11 = sub_22855DFFC();
  v11[1] = v14;
  v19[2] = v14;
  v28 = 2;
  sub_2284373B4(&qword_27D83F4E0, MEMORY[0x277CC9578], MEMORY[0x277CC95A0]);
  sub_22855E03C();
  (*(v23 + 32))(v11 + *(v20 + 24), v5, v12);
  v27 = 1;
  v19[1] = 0;
  v15 = sub_22855E02C();
  v16 = v21;
  v17 = v15;
  (*(v13 + 8))(v8, v26);
  v11[2] = v17;
  sub_228436DF8(v11, v22);
  __swift_destroy_boxed_opaque_existential_0(v16);
  return sub_228436E5C(v11);
}

void sub_228436D94(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_228436978();
    v7 = a3(a1, &type metadata for CountryRetrievalRecord.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_228436DF8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CountryRetrievalRecord(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_228436E5C(uint64_t a1)
{
  v2 = type metadata accessor for CountryRetrievalRecord(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t static CountryRetrievalRecord.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_22855E15C() & 1) == 0 || a1[2] != a2[2])
  {
    return 0;
  }

  v5 = *(type metadata accessor for CountryRetrievalRecord(0) + 24);

  return MEMORY[0x28211DA98](a1 + v5, a2 + v5);
}

uint64_t CountryRetrievalRecord.hash(into:)(uint64_t a1)
{
  sub_22855D20C();
  MEMORY[0x22AABA2B0](*(v1 + 16));
  type metadata accessor for CountryRetrievalRecord(0);
  sub_22855C16C();
  sub_2284373B4(&qword_27D83F4E8, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
  return sub_22855D14C();
}

uint64_t CountryRetrievalRecord.hashValue.getter()
{
  sub_22855E22C();
  sub_22855D20C();
  MEMORY[0x22AABA2B0](*(v0 + 16));
  type metadata accessor for CountryRetrievalRecord(0);
  sub_22855C16C();
  sub_2284373B4(&qword_27D83F4E8, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
  sub_22855D14C();
  return sub_22855E27C();
}

uint64_t sub_2284370A0(uint64_t *a1, void *a2, uint64_t a3)
{
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (!v6 && (sub_22855E15C() & 1) == 0 || a1[2] != a2[2])
  {
    return 0;
  }

  v7 = *(a3 + 24);

  return MEMORY[0x28211DA98](a1 + v7, a2 + v7);
}

uint64_t sub_228437164()
{
  sub_22855E22C();
  sub_22855D20C();
  MEMORY[0x22AABA2B0](*(v0 + 16));
  sub_22855C16C();
  sub_2284373B4(&qword_27D83F4E8, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
  sub_22855D14C();
  return sub_22855E27C();
}

uint64_t sub_22843721C(uint64_t a1)
{
  sub_22855D20C();
  MEMORY[0x22AABA2B0](*(v1 + 16));
  sub_22855C16C();
  sub_2284373B4(&qword_27D83F4E8, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
  return sub_22855D14C();
}

uint64_t sub_2284372B8(uint64_t a1)
{
  sub_22855E22C();
  sub_22855D20C();
  MEMORY[0x22AABA2B0](*(v1 + 16));
  sub_22855C16C();
  sub_2284373B4(&qword_27D83F4E8, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
  sub_22855D14C();
  return sub_22855E27C();
}

uint64_t sub_2284373B4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_228437424(uint64_t a1)
{
  type metadata accessor for HKOnboardingCompletionCountryCodeProvenance(319);
  if (v1 <= 0x3F)
  {
    sub_22855C16C();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_2284374B8(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_228437508(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_22843755C(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t getEnumTagSinglePayload for CountryRetrievalRecord.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for CountryRetrievalRecord.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_2284376D8()
{
  result = qword_27D83F4F8;
  if (!qword_27D83F4F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D83F4F8);
  }

  return result;
}

unint64_t sub_228437730()
{
  result = qword_280DEBBE0;
  if (!qword_280DEBBE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DEBBE0);
  }

  return result;
}

unint64_t sub_228437788()
{
  result = qword_280DEBBE8;
  if (!qword_280DEBBE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DEBBE8);
  }

  return result;
}

uint64_t sub_2284377DC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746E756F436F7369 && a2 == 0xEE0065646F437972;
  if (v4 || (sub_22855E15C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E616E65766F7270 && a2 == 0xEA00000000006563 || (sub_22855E15C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6576656972746572 && a2 == 0xE900000000000064)
  {

    return 2;
  }

  else
  {
    v6 = sub_22855E15C();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t Publisher.handleStartAndIdleEvents(idleTimeInterval:queue:startBlock:idleBlock:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>, double a9@<D0>)
{
  v18 = *(a6 - 8);
  MEMORY[0x28223BE20](a1);
  v20 = &v29 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v18 + 16))(v20, v22, v21);
  (*(v18 + 32))(a8, v20, a6);
  v24 = type metadata accessor for Publishers.HandleStartAndIdleEvents(0, a6, a7, v23);
  *(a8 + v24[9]) = a9;
  *(a8 + v24[10]) = a1;
  v25 = (a8 + v24[11]);
  *v25 = a2;
  v25[1] = a3;
  v26 = (a8 + v24[12]);
  *v26 = a4;
  v26[1] = a5;
  v27 = a1;
}

int *Publishers.HandleStartAndIdleEvents.init(_:idleTimeInterval:queue:startBlock:idleBlock:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, double a10@<D0>)
{
  (*(*(a7 - 8) + 32))(a9, a1, a7);
  result = type metadata accessor for Publishers.HandleStartAndIdleEvents(0, a7, a8, v19);
  *(a9 + result[9]) = a10;
  *(a9 + result[10]) = a2;
  v21 = (a9 + result[11]);
  *v21 = a3;
  v21[1] = a4;
  v22 = (a9 + result[12]);
  *v22 = a5;
  v22[1] = a6;
  return result;
}

uint64_t Publishers.HandleStartAndIdleEvents.receive<A>(subscriber:)(uint64_t a1, int *a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(a3 - 8);
  MEMORY[0x28223BE20](a1);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v11 + 16);
  v26 = *(v11 + 24);
  v27[0] = v12;
  v27[1] = v13;
  v27[2] = v26;
  v27[3] = v14;
  _s24HandleStartAndIdleEventsV5InnerCMa(0, v27);
  (*(v8 + 16))(v10, a1, a3);
  v15 = *(v4 + a2[9]);
  v16 = *(v4 + a2[10]);
  v17 = a2[12];
  v18 = (v4 + a2[11]);
  v19 = *v18;
  v20 = v18[1];
  v21 = *(v4 + v17);
  v22 = *(v4 + v17 + 8);
  swift_allocObject();
  v23 = v16;

  v27[0] = sub_2284382BC(v10, v23, v19, v20, v21, v22, v15);
  swift_getWitnessTable();
  sub_22855CF6C();
}

unint64_t sub_228437DEC(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = sub_2283FA06C();
    if (v3 <= 0x3F)
    {
      result = sub_2283FBB5C();
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_228437E94(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((((((((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))(a1);
    }

    v17 = *((((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

_BYTE *sub_228437FF0(_BYTE *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = ((((((((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v7 >= a3)
  {
    v13 = 0;
    v14 = a2 - v7;
    if (a2 <= v7)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v10 = a3 - v7;
    if (((((((((v8 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v11 = v10 + 1;
    }

    else
    {
      v11 = 2;
    }

    if (v11 >= 0x10000)
    {
      v12 = 4;
    }

    else
    {
      v12 = 2;
    }

    if (v11 < 0x100)
    {
      v12 = 1;
    }

    if (v11 >= 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    v14 = a2 - v7;
    if (a2 <= v7)
    {
LABEL_17:
      if (v13 > 1)
      {
        if (v13 != 2)
        {
          *&result[v9] = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *&result[v9] = 0;
      }

      else if (v13)
      {
        result[v9] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return result;
      }

LABEL_33:
      if (v6 < 0x7FFFFFFF)
      {
        v19 = (((&result[v8 + 7] & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8);
        if ((a2 & 0x80000000) != 0)
        {
          v20 = a2 & 0x7FFFFFFF;
        }

        else
        {
          v20 = a2 - 1;
        }

        *v19 = v20;
      }

      else
      {
        v18 = *(v5 + 56);

        return v18();
      }

      return result;
    }
  }

  if (((((((((v8 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v15 = v14;
  }

  else
  {
    v15 = 1;
  }

  if (((((((((v8 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) != 0xFFFFFFF0)
  {
    v16 = ~v7 + a2;
    v17 = result;
    bzero(result, ((((((((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16);
    result = v17;
    *v17 = v16;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      *&result[v9] = v15;
    }

    else
    {
      *&result[v9] = v15;
    }
  }

  else if (v13)
  {
    result[v9] = v15;
  }

  return result;
}

uint64_t sub_2284381D0(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t *sub_2284382BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, double a7)
{
  v15 = *v7;
  v16 = *(*v7 + 152);
  type metadata accessor for UnfairLock();
  v17 = swift_allocObject();
  v18 = swift_slowAlloc();
  *(v17 + 16) = v18;
  *v18 = 0;
  *(v7 + v16) = v17;
  v19 = v7 + *(*v7 + 160);
  *(v19 + 32) = 0;
  *v19 = 0u;
  *(v19 + 16) = 0u;
  *(v19 + 40) = 2;
  *(v7 + *(*v7 + 168)) = 0;
  *(v7 + *(*v7 + 176)) = 1;
  (*(*(*(v15 + 88) - 8) + 32))(v7 + *(*v7 + 112), a1);
  *(v7 + *(*v7 + 128)) = a2;
  *(v7 + *(*v7 + 120)) = a7;
  v20 = (v7 + *(*v7 + 136));
  *v20 = a3;
  v20[1] = a4;
  v21 = (v7 + *(*v7 + 144));
  *v21 = a5;
  v21[1] = a6;
  return v7;
}

uint64_t sub_228438488(void *a1)
{
  v3 = *v1;
  v4 = *(v1 + *(*v1 + 152));
  os_unfair_lock_lock(*(v4 + 16));
  v5 = *(*v1 + 160);
  swift_beginAccess();
  sub_228439384(v1 + v5, &v9);
  if (v12 == 2 && (v6 = vorrq_s8(v10, v11), !(*&vorr_s8(*v6.i8, *&vextq_s8(v6, v6, 8uLL)) | v9)))
  {
    sub_2284393E0(&v9);
    sub_2283F9B10(a1, &v9);
    v12 = 0;
    swift_beginAccess();
    sub_228439238(&v9, v1 + v5);
    swift_endAccess();
    sub_22843867C();
    os_unfair_lock_unlock(*(v4 + 16));
    v11.i64[0] = v3;
    v11.i64[1] = swift_getWitnessTable();
    v9 = v1;

    sub_22855CC5C();
    v8 = __swift_destroy_boxed_opaque_existential_0(&v9);
    return (*(v1 + *(*v1 + 136)))(v8);
  }

  else
  {
    sub_2284393E0(&v9);
    os_unfair_lock_unlock(*(v4 + 16));
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    return sub_22855CC7C();
  }
}

uint64_t sub_22843867C()
{
  v1 = v0;
  v2 = *v0;
  v3 = v2;
  v4 = sub_22855D00C();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v22 = &v20 - v9;
  v10 = sub_22855CFBC();
  result = MEMORY[0x28223BE20](v10);
  v12 = *(v2 + 168);
  if (*(v1 + v12))
  {

    sub_22855D02C();

    v2 = *v1;
  }

  if (*(v1 + *(v2 + 176)) == 1)
  {
    v13 = swift_allocObject();
    swift_weakInit();
    v14 = swift_allocObject();
    *(v14 + 16) = *(v3 + 80);
    *(v14 + 24) = *(v3 + 88);
    *(v14 + 40) = *(v3 + 104);
    *(v14 + 48) = v13;
    aBlock[4] = sub_228439294;
    aBlock[5] = v14;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_228401F54;
    aBlock[3] = &block_descriptor_2;
    v20 = _Block_copy(aBlock);
    v23 = MEMORY[0x277D84F90];
    sub_2284392A4();
    sub_2284394C8(0, &qword_280DED270, MEMORY[0x277D85198], MEMORY[0x277D83940]);
    sub_2284392FC();
    v21 = v4;

    sub_22855DA9C();
    sub_22855D03C();
    swift_allocObject();
    v15 = sub_22855D01C();

    *(v1 + v12) = v15;

    sub_22855CFFC();
    v16 = v22;
    sub_22855D06C();
    v17 = *(v5 + 8);
    v18 = v8;
    v19 = v21;
    v17(v18, v21);
    sub_22855D7DC();

    return (v17)(v16, v19);
  }

  return result;
}

uint64_t sub_228438A48(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_228438AA0();
  }

  return result;
}

void sub_228438AA0()
{
  v1 = *(v0 + *(*v0 + 152));
  os_unfair_lock_lock(*(v1 + 16));
  v2 = *(*v0 + 176);
  v3 = *(v0 + v2);
  *(v0 + v2) = 0;
  os_unfair_lock_unlock(*(v1 + 16));
  if (v3 == 1)
  {
    (*(v0 + *(*v0 + 144)))();
  }
}

uint64_t sub_228438B34(uint64_t a1)
{
  v2 = *(v1 + *(*v1 + 152));
  os_unfair_lock_lock(*(v2 + 16));
  sub_22843867C();
  os_unfair_lock_unlock(*(v2 + 16));
  return sub_22855CC6C();
}

void sub_228438BD4(uint64_t a1)
{
  v2 = *(v1 + *(*v1 + 152));
  os_unfair_lock_lock(*(v2 + 16));
  v4 = 1;
  v5 = 0u;
  v6 = 0u;
  v7 = 2;
  v3 = *(*v1 + 160);
  swift_beginAccess();
  sub_228439238(&v4, v1 + v3);
  swift_endAccess();
  os_unfair_lock_unlock(*(v2 + 16));
  sub_22855CC4C();
  sub_228438AA0();
}

uint64_t sub_228438CE4(uint64_t a1)
{
  v2 = *(v1 + *(*v1 + 152));
  os_unfair_lock_lock(*(v2 + 16));
  v3 = *(*v1 + 160);
  swift_beginAccess();
  sub_228439384(v1 + v3, &v7);
  *&v6[9] = *&v8[9];
  v5 = v7;
  *v6 = *v8;
  if (v8[24] != 1 && v8[24])
  {
    v10 = 0;
    memset(v9, 0, sizeof(v9));
    sub_2284393E0(&v5);
  }

  else
  {
    sub_2283FAB3C(&v5, v9);
  }

  os_unfair_lock_unlock(*(v2 + 16));
  sub_228439434(v9, &v7);
  if (*&v8[8])
  {
    __swift_project_boxed_opaque_existential_1(&v7, *&v8[8]);
    sub_22855CCDC();
    sub_228439590(v9);
    return __swift_destroy_boxed_opaque_existential_0(&v7);
  }

  else
  {
    sub_228439590(v9);
    return sub_228439590(&v7);
  }
}

uint64_t sub_228438E14()
{
  v1 = *(v0 + *(*v0 + 152));
  os_unfair_lock_lock(*(v1 + 16));
  v2 = *(*v0 + 160);
  swift_beginAccess();
  sub_228439384(v0 + v2, v6);
  *&v5[9] = *&v6[25];
  v4 = *v6;
  *v5 = *&v6[16];
  if (v6[40] != 1 && v6[40])
  {
    v8 = 0;
    memset(v7, 0, sizeof(v7));
    sub_2284393E0(&v4);
  }

  else
  {
    sub_2283FAB3C(&v4, v7);
  }

  if (*(v0 + *(*v0 + 168)))
  {

    sub_22855D02C();
  }

  *v6 = 1;
  memset(&v6[8], 0, 32);
  v6[40] = 2;
  swift_beginAccess();
  sub_228439238(v6, v0 + v2);
  swift_endAccess();
  os_unfair_lock_unlock(*(v1 + 16));
  sub_228439434(v7, v6);
  if (*&v6[24])
  {
    __swift_project_boxed_opaque_existential_1(v6, *&v6[24]);
    sub_22855CC7C();
    sub_228439590(v7);
    return __swift_destroy_boxed_opaque_existential_0(v6);
  }

  else
  {
    sub_228439590(v7);
    return sub_228439590(v6);
  }
}

uint64_t sub_228438FB0()
{
  (*(*(*(*v0 + 88) - 8) + 8))(v0 + *(*v0 + 112));

  sub_2284393E0(v0 + *(*v0 + 160));

  return v0;
}

uint64_t sub_2284390D0()
{
  sub_228438FB0();

  return swift_deallocClassInstance();
}

unint64_t sub_2284392A4()
{
  result = qword_280DED2D0;
  if (!qword_280DED2D0)
  {
    sub_22855CFBC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DED2D0);
  }

  return result;
}

unint64_t sub_2284392FC()
{
  result = qword_280DED260;
  if (!qword_280DED260)
  {
    sub_2284394C8(255, &qword_280DED270, MEMORY[0x277D85198], MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280DED260);
  }

  return result;
}

uint64_t sub_228439434(uint64_t a1, uint64_t a2)
{
  sub_2284394C8(0, &qword_280DE9878, sub_22843952C, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_2284394C8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_22843952C()
{
  result = qword_280DE9880;
  if (!qword_280DE9880)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_280DE9880);
  }

  return result;
}

uint64_t sub_228439590(uint64_t a1)
{
  sub_2284394C8(0, &qword_280DE9878, sub_22843952C, MEMORY[0x277D83D88]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t PluginFeedItem.HostViewStyle.init(rawValue:)@<X0>(char *a3@<X8>)
{
  v4 = sub_22855DFBC();

  if (v4 == 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  if (!v4)
  {
    v6 = 0;
  }

  *a3 = v6;
  return result;
}

uint64_t PluginFeedItem.HostViewStyle.rawValue.getter()
{
  if (*v0)
  {
    return 0x656D6F7268436F6ELL;
  }

  else
  {
    return 0x656D6F726863;
  }
}

uint64_t sub_2284396BC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x656D6F7268436F6ELL;
  }

  else
  {
    v3 = 0x656D6F726863;
  }

  if (v2)
  {
    v4 = 0xE600000000000000;
  }

  else
  {
    v4 = 0xE800000000000000;
  }

  if (*a2)
  {
    v5 = 0x656D6F7268436F6ELL;
  }

  else
  {
    v5 = 0x656D6F726863;
  }

  if (*a2)
  {
    v6 = 0xE800000000000000;
  }

  else
  {
    v6 = 0xE600000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_22855E15C();
  }

  return v8 & 1;
}

uint64_t sub_228439760@<X0>(char *a2@<X8>)
{
  v3 = sub_22855DFBC();

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

unint64_t sub_2284397C4()
{
  result = qword_27D83F500;
  if (!qword_27D83F500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D83F500);
  }

  return result;
}

uint64_t sub_228439818()
{
  sub_22855E22C();
  sub_22855D20C();

  return sub_22855E27C();
}

uint64_t sub_228439898(uint64_t a1)
{
  sub_22855D20C();
}

uint64_t sub_228439904(uint64_t a1)
{
  sub_22855E22C();
  sub_22855D20C();

  return sub_22855E27C();
}

uint64_t _s13HostViewStyleOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s13HostViewStyleOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void *static Plugin.findOrCreatePlugin(_:in:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_228439BBC();
  sub_22840A70C(0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_228560580;
  *(v6 + 56) = MEMORY[0x277D837D0];
  *(v6 + 64) = sub_22840A7C8();
  *(v6 + 32) = a1;
  *(v6 + 40) = a2;

  v7 = sub_22855D62C();
  v8 = sub_228549A64(a3, v7);

  v9 = sub_22855D17C();
  [v8 setPackage_];

  return v8;
}

unint64_t sub_228439BBC()
{
  result = qword_280DED1E0;
  if (!qword_280DED1E0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280DED1E0);
  }

  return result;
}

id Plugin.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id Plugin.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for Plugin();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id Plugin.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for Plugin();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void *static PluginData.findOrCreate(uniqueIdentifier:pluginIdentifier:in:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_2283EF310(0, &qword_280DED1E0, 0x277CCAC30);
  sub_22840A70C(0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_228561250;
  v11 = MEMORY[0x277D837D0];
  *(v10 + 56) = MEMORY[0x277D837D0];
  v12 = sub_22840A7C8();
  strcpy((v10 + 32), "plugin.package");
  *(v10 + 47) = -18;
  *(v10 + 96) = v11;
  *(v10 + 104) = v12;
  *(v10 + 64) = v12;
  *(v10 + 72) = a3;
  *(v10 + 80) = a4;
  *(v10 + 136) = v11;
  *(v10 + 144) = v12;
  *(v10 + 112) = 0xD000000000000010;
  *(v10 + 120) = 0x800000022856DA90;
  *(v10 + 176) = v11;
  *(v10 + 184) = v12;
  *(v10 + 152) = a1;
  *(v10 + 160) = a2;

  v13 = sub_22855D62C();
  v14 = sub_228549C40(a5, v13);
  v15 = sub_22855D17C();
  [v14 setUniqueIdentifier_];

  return v14;
}

unint64_t static PluginData.find(uniqueIdentifier:pluginIdentifier:in:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  sub_2283EF310(0, &qword_280DED1E0, 0x277CCAC30);
  sub_22840A70C(0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_228561250;
  v11 = MEMORY[0x277D837D0];
  *(v10 + 56) = MEMORY[0x277D837D0];
  v12 = sub_22840A7C8();
  strcpy((v10 + 32), "plugin.package");
  *(v10 + 47) = -18;
  *(v10 + 96) = v11;
  *(v10 + 104) = v12;
  *(v10 + 64) = v12;
  *(v10 + 72) = a3;
  *(v10 + 80) = a4;
  *(v10 + 136) = v11;
  *(v10 + 144) = v12;
  *(v10 + 112) = 0xD000000000000010;
  *(v10 + 120) = 0x800000022856DA90;
  *(v10 + 176) = v11;
  *(v10 + 184) = v12;
  *(v10 + 152) = a1;
  *(v10 + 160) = a2;

  v13 = sub_22855D62C();
  v14 = sub_22843B4E8(a5, v13, 1);

  return v14;
}

id PluginData.__allocating_init(context:uniqueIdentifier:)(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = objc_opt_self();
  v6 = sub_22855D17C();
  v7 = [v5 entityForName:v6 inManagedObjectContext:a1];

  if (v7)
  {
    v8 = [objc_allocWithZone(v3) initWithEntity:v7 insertIntoManagedObjectContext:a1];
    v9 = sub_22855D17C();

    [v8 setUniqueIdentifier_];

    return v8;
  }

  else
  {
    result = sub_22855DEDC();
    __break(1u);
  }

  return result;
}

unint64_t sub_22843A288(void *a1, uint64_t a2, char a3)
{
  v4 = v3;
  LOBYTE(v5) = a3;
  v8 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v9 = sub_22855D17C();
  v10 = [v8 initWithEntityName_];

  [v10 setPredicate_];
  type metadata accessor for DataType();
  v11 = sub_22855D97C();
  p_isa = &v3->isa;
  if (v3)
  {
    goto LABEL_26;
  }

  v13 = v11 >> 62;
  v38 = v11;
  if (v11 >> 62)
  {
    goto LABEL_29;
  }

  result = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (result > 1)
  {
LABEL_4:
    v35 = p_isa;
    if (qword_280DEEC90 != -1)
    {
      swift_once();
    }

    v15 = sub_22855CABC();
    v42 = __swift_project_value_buffer(v15, qword_280DEEC98);
    p_isa = v42;
    v4 = sub_22855CA8C();
    v16 = sub_22855D68C();
    if (os_log_type_enabled(v4, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_2283ED000, v4, v16, "Error: duplicate feed item created...", v17, 2u);
      MEMORY[0x22AABAD40](v17, -1, -1);
    }

    v33 = v5;
    v34 = a1;
    v36 = v10;

    if (!v13)
    {
      v13 = v38;
      v18 = *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v18)
      {
        goto LABEL_23;
      }

      goto LABEL_12;
    }

    v13 = v38;
    v18 = sub_22855DB4C();
    if (v18)
    {
LABEL_12:
      v5 = 0;
      a1 = (v13 & 0xC000000000000001);
      v41 = v13 & 0xFFFFFFFFFFFFFF8;
      v37 = v18;
      do
      {
        if (a1)
        {
          v19 = MEMORY[0x22AAB9D20](v5, v13);
          v4 = (v5 + 1);
          if (__OFADD__(v5, 1))
          {
LABEL_22:
            __break(1u);
            break;
          }
        }

        else
        {
          if (v5 >= *(v41 + 16))
          {
            __break(1u);
LABEL_29:
            if (sub_22855DB4C() < 2)
            {
              result = sub_22855DB4C();
              goto LABEL_31;
            }

            goto LABEL_4;
          }

          v19 = *(v13 + 8 * v5 + 32);
          v4 = (v5 + 1);
          if (__OFADD__(v5, 1))
          {
            goto LABEL_22;
          }
        }

        v20 = v19;
        p_isa = v42;
        v21 = sub_22855CA8C();
        v10 = sub_22855D68C();

        if (os_log_type_enabled(v21, v10))
        {
          v22 = swift_slowAlloc();
          v39 = swift_slowAlloc();
          v43 = v39;
          *v22 = 134218242;
          *(v22 + 4) = v5;
          *(v22 + 12) = 2080;
          v40 = v4;
          v23 = v20;
          v24 = [v23 description];
          v25 = a1;
          v26 = sub_22855D1AC();
          v28 = v27;

          v29 = v26;
          a1 = v25;
          v30 = sub_2283F8938(v29, v28, &v43);

          *(v22 + 14) = v30;
          v18 = v37;
          _os_log_impl(&dword_2283ED000, v21, v10, "Existing item %ld: %s", v22, 0x16u);
          p_isa = v39;
          __swift_destroy_boxed_opaque_existential_0(v39);
          MEMORY[0x22AABAD40](v39, -1, -1);
          v31 = v22;
          v13 = v38;
          MEMORY[0x22AABAD40](v31, -1, -1);

          v4 = v40;
        }

        else
        {
        }

        ++v5;
      }

      while (v4 != v18);
    }

LABEL_23:

    sub_22843C75C(v34, v33 & 1, &qword_27D83F540, type metadata accessor for DataType);
    if (!v35)
    {
      sub_22843D108();
      swift_allocError();
      swift_willThrow();
    }

    v10 = v36;
LABEL_26:

    return v4;
  }

LABEL_31:
  if (!result)
  {

    return 0;
  }

  if ((v38 & 0xC000000000000001) != 0)
  {
    v32 = MEMORY[0x22AAB9D20](0, v38);
    goto LABEL_35;
  }

  if (*((v38 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v32 = *(v38 + 32);
LABEL_35:
    v4 = v32;

    return v4;
  }

  __break(1u);
  return result;
}

unint64_t sub_22843A720(void *a1, uint64_t a2, char a3)
{
  v4 = v3;
  LOBYTE(v5) = a3;
  v8 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v9 = sub_22855D17C();
  v10 = [v8 initWithEntityName_];

  [v10 setPredicate_];
  type metadata accessor for MeasureIdentifierManagedObject();
  v11 = sub_22855D97C();
  p_isa = &v3->isa;
  if (v3)
  {
    goto LABEL_26;
  }

  v13 = v11 >> 62;
  v38 = v11;
  if (v11 >> 62)
  {
    goto LABEL_29;
  }

  result = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (result > 1)
  {
LABEL_4:
    v35 = p_isa;
    if (qword_280DEEC90 != -1)
    {
      swift_once();
    }

    v15 = sub_22855CABC();
    v42 = __swift_project_value_buffer(v15, qword_280DEEC98);
    p_isa = v42;
    v4 = sub_22855CA8C();
    v16 = sub_22855D68C();
    if (os_log_type_enabled(v4, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_2283ED000, v4, v16, "Error: duplicate feed item created...", v17, 2u);
      MEMORY[0x22AABAD40](v17, -1, -1);
    }

    v33 = v5;
    v34 = a1;
    v36 = v10;

    if (!v13)
    {
      v13 = v38;
      v18 = *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v18)
      {
        goto LABEL_23;
      }

      goto LABEL_12;
    }

    v13 = v38;
    v18 = sub_22855DB4C();
    if (v18)
    {
LABEL_12:
      v5 = 0;
      a1 = (v13 & 0xC000000000000001);
      v41 = v13 & 0xFFFFFFFFFFFFFF8;
      v37 = v18;
      do
      {
        if (a1)
        {
          v19 = MEMORY[0x22AAB9D20](v5, v13);
          v4 = (v5 + 1);
          if (__OFADD__(v5, 1))
          {
LABEL_22:
            __break(1u);
            break;
          }
        }

        else
        {
          if (v5 >= *(v41 + 16))
          {
            __break(1u);
LABEL_29:
            if (sub_22855DB4C() < 2)
            {
              result = sub_22855DB4C();
              goto LABEL_31;
            }

            goto LABEL_4;
          }

          v19 = *(v13 + 8 * v5 + 32);
          v4 = (v5 + 1);
          if (__OFADD__(v5, 1))
          {
            goto LABEL_22;
          }
        }

        v20 = v19;
        p_isa = v42;
        v21 = sub_22855CA8C();
        v10 = sub_22855D68C();

        if (os_log_type_enabled(v21, v10))
        {
          v22 = swift_slowAlloc();
          v39 = swift_slowAlloc();
          v43 = v39;
          *v22 = 134218242;
          *(v22 + 4) = v5;
          *(v22 + 12) = 2080;
          v40 = v4;
          v23 = v20;
          v24 = [v23 description];
          v25 = a1;
          v26 = sub_22855D1AC();
          v28 = v27;

          v29 = v26;
          a1 = v25;
          v30 = sub_2283F8938(v29, v28, &v43);

          *(v22 + 14) = v30;
          v18 = v37;
          _os_log_impl(&dword_2283ED000, v21, v10, "Existing item %ld: %s", v22, 0x16u);
          p_isa = v39;
          __swift_destroy_boxed_opaque_existential_0(v39);
          MEMORY[0x22AABAD40](v39, -1, -1);
          v31 = v22;
          v13 = v38;
          MEMORY[0x22AABAD40](v31, -1, -1);

          v4 = v40;
        }

        else
        {
        }

        ++v5;
      }

      while (v4 != v18);
    }

LABEL_23:

    sub_22843C75C(v34, v33 & 1, &qword_27D83F538, type metadata accessor for MeasureIdentifierManagedObject);
    if (!v35)
    {
      sub_22843D108();
      swift_allocError();
      swift_willThrow();
    }

    v10 = v36;
LABEL_26:

    return v4;
  }

LABEL_31:
  if (!result)
  {

    return 0;
  }

  if ((v38 & 0xC000000000000001) != 0)
  {
    v32 = MEMORY[0x22AAB9D20](0, v38);
    goto LABEL_35;
  }

  if (*((v38 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v32 = *(v38 + 32);
LABEL_35:
    v4 = v32;

    return v4;
  }

  __break(1u);
  return result;
}

unint64_t sub_22843ABBC(void *a1, uint64_t a2, char a3)
{
  v4 = v3;
  LOBYTE(v5) = a3;
  v8 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v9 = sub_22855D17C();
  v10 = [v8 initWithEntityName_];

  [v10 setPredicate_];
  type metadata accessor for Keyword();
  v11 = sub_22855D97C();
  p_isa = &v3->isa;
  if (v3)
  {
    goto LABEL_26;
  }

  v13 = v11 >> 62;
  v38 = v11;
  if (v11 >> 62)
  {
    goto LABEL_29;
  }

  result = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (result > 1)
  {
LABEL_4:
    v35 = p_isa;
    if (qword_280DEEC90 != -1)
    {
      swift_once();
    }

    v15 = sub_22855CABC();
    v42 = __swift_project_value_buffer(v15, qword_280DEEC98);
    p_isa = v42;
    v4 = sub_22855CA8C();
    v16 = sub_22855D68C();
    if (os_log_type_enabled(v4, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_2283ED000, v4, v16, "Error: duplicate feed item created...", v17, 2u);
      MEMORY[0x22AABAD40](v17, -1, -1);
    }

    v33 = v5;
    v34 = a1;
    v36 = v10;

    if (!v13)
    {
      v13 = v38;
      v18 = *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v18)
      {
        goto LABEL_23;
      }

      goto LABEL_12;
    }

    v13 = v38;
    v18 = sub_22855DB4C();
    if (v18)
    {
LABEL_12:
      v5 = 0;
      a1 = (v13 & 0xC000000000000001);
      v41 = v13 & 0xFFFFFFFFFFFFFF8;
      v37 = v18;
      do
      {
        if (a1)
        {
          v19 = MEMORY[0x22AAB9D20](v5, v13);
          v4 = (v5 + 1);
          if (__OFADD__(v5, 1))
          {
LABEL_22:
            __break(1u);
            break;
          }
        }

        else
        {
          if (v5 >= *(v41 + 16))
          {
            __break(1u);
LABEL_29:
            if (sub_22855DB4C() < 2)
            {
              result = sub_22855DB4C();
              goto LABEL_31;
            }

            goto LABEL_4;
          }

          v19 = *(v13 + 8 * v5 + 32);
          v4 = (v5 + 1);
          if (__OFADD__(v5, 1))
          {
            goto LABEL_22;
          }
        }

        v20 = v19;
        p_isa = v42;
        v21 = sub_22855CA8C();
        v10 = sub_22855D68C();

        if (os_log_type_enabled(v21, v10))
        {
          v22 = swift_slowAlloc();
          v39 = swift_slowAlloc();
          v43 = v39;
          *v22 = 134218242;
          *(v22 + 4) = v5;
          *(v22 + 12) = 2080;
          v40 = v4;
          v23 = v20;
          v24 = [v23 description];
          v25 = a1;
          v26 = sub_22855D1AC();
          v28 = v27;

          v29 = v26;
          a1 = v25;
          v30 = sub_2283F8938(v29, v28, &v43);

          *(v22 + 14) = v30;
          v18 = v37;
          _os_log_impl(&dword_2283ED000, v21, v10, "Existing item %ld: %s", v22, 0x16u);
          p_isa = v39;
          __swift_destroy_boxed_opaque_existential_0(v39);
          MEMORY[0x22AABAD40](v39, -1, -1);
          v31 = v22;
          v13 = v38;
          MEMORY[0x22AABAD40](v31, -1, -1);

          v4 = v40;
        }

        else
        {
        }

        ++v5;
      }

      while (v4 != v18);
    }

LABEL_23:

    sub_22843C75C(v34, v33 & 1, &qword_27D83F530, type metadata accessor for Keyword);
    if (!v35)
    {
      sub_22843D108();
      swift_allocError();
      swift_willThrow();
    }

    v10 = v36;
LABEL_26:

    return v4;
  }

LABEL_31:
  if (!result)
  {

    return 0;
  }

  if ((v38 & 0xC000000000000001) != 0)
  {
    v32 = MEMORY[0x22AAB9D20](0, v38);
    goto LABEL_35;
  }

  if (*((v38 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v32 = *(v38 + 32);
LABEL_35:
    v4 = v32;

    return v4;
  }

  __break(1u);
  return result;
}

unint64_t sub_22843B054(void *a1, uint64_t a2, char a3)
{
  v4 = v3;
  LOBYTE(v5) = a3;
  v8 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v9 = sub_22855D17C();
  v10 = [v8 initWithEntityName_];

  [v10 setPredicate_];
  type metadata accessor for Plugin();
  v11 = sub_22855D97C();
  p_isa = &v3->isa;
  if (v3)
  {
    goto LABEL_26;
  }

  v13 = v11 >> 62;
  v38 = v11;
  if (v11 >> 62)
  {
    goto LABEL_29;
  }

  result = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (result > 1)
  {
LABEL_4:
    v35 = p_isa;
    if (qword_280DEEC90 != -1)
    {
      swift_once();
    }

    v15 = sub_22855CABC();
    v42 = __swift_project_value_buffer(v15, qword_280DEEC98);
    p_isa = v42;
    v4 = sub_22855CA8C();
    v16 = sub_22855D68C();
    if (os_log_type_enabled(v4, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_2283ED000, v4, v16, "Error: duplicate feed item created...", v17, 2u);
      MEMORY[0x22AABAD40](v17, -1, -1);
    }

    v33 = v5;
    v34 = a1;
    v36 = v10;

    if (!v13)
    {
      v13 = v38;
      v18 = *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v18)
      {
        goto LABEL_23;
      }

      goto LABEL_12;
    }

    v13 = v38;
    v18 = sub_22855DB4C();
    if (v18)
    {
LABEL_12:
      v5 = 0;
      a1 = (v13 & 0xC000000000000001);
      v41 = v13 & 0xFFFFFFFFFFFFFF8;
      v37 = v18;
      do
      {
        if (a1)
        {
          v19 = MEMORY[0x22AAB9D20](v5, v13);
          v4 = (v5 + 1);
          if (__OFADD__(v5, 1))
          {
LABEL_22:
            __break(1u);
            break;
          }
        }

        else
        {
          if (v5 >= *(v41 + 16))
          {
            __break(1u);
LABEL_29:
            if (sub_22855DB4C() < 2)
            {
              result = sub_22855DB4C();
              goto LABEL_31;
            }

            goto LABEL_4;
          }

          v19 = *(v13 + 8 * v5 + 32);
          v4 = (v5 + 1);
          if (__OFADD__(v5, 1))
          {
            goto LABEL_22;
          }
        }

        v20 = v19;
        p_isa = v42;
        v21 = sub_22855CA8C();
        v10 = sub_22855D68C();

        if (os_log_type_enabled(v21, v10))
        {
          v22 = swift_slowAlloc();
          v39 = swift_slowAlloc();
          v43 = v39;
          *v22 = 134218242;
          *(v22 + 4) = v5;
          *(v22 + 12) = 2080;
          v40 = v4;
          v23 = v20;
          v24 = [v23 description];
          v25 = a1;
          v26 = sub_22855D1AC();
          v28 = v27;

          v29 = v26;
          a1 = v25;
          v30 = sub_2283F8938(v29, v28, &v43);

          *(v22 + 14) = v30;
          v18 = v37;
          _os_log_impl(&dword_2283ED000, v21, v10, "Existing item %ld: %s", v22, 0x16u);
          p_isa = v39;
          __swift_destroy_boxed_opaque_existential_0(v39);
          MEMORY[0x22AABAD40](v39, -1, -1);
          v31 = v22;
          v13 = v38;
          MEMORY[0x22AABAD40](v31, -1, -1);

          v4 = v40;
        }

        else
        {
        }

        ++v5;
      }

      while (v4 != v18);
    }

LABEL_23:

    sub_22843C75C(v34, v33 & 1, &qword_27D83F528, type metadata accessor for Plugin);
    if (!v35)
    {
      sub_22843D108();
      swift_allocError();
      swift_willThrow();
    }

    v10 = v36;
LABEL_26:

    return v4;
  }

LABEL_31:
  if (!result)
  {

    return 0;
  }

  if ((v38 & 0xC000000000000001) != 0)
  {
    v32 = MEMORY[0x22AAB9D20](0, v38);
    goto LABEL_35;
  }

  if (*((v38 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v32 = *(v38 + 32);
LABEL_35:
    v4 = v32;

    return v4;
  }

  __break(1u);
  return result;
}

unint64_t sub_22843B4E8(void *a1, uint64_t a2, char a3)
{
  v4 = v3;
  LOBYTE(v5) = a3;
  v8 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v9 = sub_22855D17C();
  v10 = [v8 initWithEntityName_];

  [v10 setPredicate_];
  type metadata accessor for PluginData();
  v11 = sub_22855D97C();
  p_isa = &v3->isa;
  if (v3)
  {
    goto LABEL_26;
  }

  v13 = v11 >> 62;
  v38 = v11;
  if (v11 >> 62)
  {
    goto LABEL_29;
  }

  result = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (result > 1)
  {
LABEL_4:
    v35 = p_isa;
    if (qword_280DEEC90 != -1)
    {
      swift_once();
    }

    v15 = sub_22855CABC();
    v42 = __swift_project_value_buffer(v15, qword_280DEEC98);
    p_isa = v42;
    v4 = sub_22855CA8C();
    v16 = sub_22855D68C();
    if (os_log_type_enabled(v4, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_2283ED000, v4, v16, "Error: duplicate feed item created...", v17, 2u);
      MEMORY[0x22AABAD40](v17, -1, -1);
    }

    v33 = v5;
    v34 = a1;
    v36 = v10;

    if (!v13)
    {
      v13 = v38;
      v18 = *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v18)
      {
        goto LABEL_23;
      }

      goto LABEL_12;
    }

    v13 = v38;
    v18 = sub_22855DB4C();
    if (v18)
    {
LABEL_12:
      v5 = 0;
      a1 = (v13 & 0xC000000000000001);
      v41 = v13 & 0xFFFFFFFFFFFFFF8;
      v37 = v18;
      do
      {
        if (a1)
        {
          v19 = MEMORY[0x22AAB9D20](v5, v13);
          v4 = (v5 + 1);
          if (__OFADD__(v5, 1))
          {
LABEL_22:
            __break(1u);
            break;
          }
        }

        else
        {
          if (v5 >= *(v41 + 16))
          {
            __break(1u);
LABEL_29:
            if (sub_22855DB4C() < 2)
            {
              result = sub_22855DB4C();
              goto LABEL_31;
            }

            goto LABEL_4;
          }

          v19 = *(v13 + 8 * v5 + 32);
          v4 = (v5 + 1);
          if (__OFADD__(v5, 1))
          {
            goto LABEL_22;
          }
        }

        v20 = v19;
        p_isa = v42;
        v21 = sub_22855CA8C();
        v10 = sub_22855D68C();

        if (os_log_type_enabled(v21, v10))
        {
          v22 = swift_slowAlloc();
          v39 = swift_slowAlloc();
          v43 = v39;
          *v22 = 134218242;
          *(v22 + 4) = v5;
          *(v22 + 12) = 2080;
          v40 = v4;
          v23 = v20;
          v24 = [v23 description];
          v25 = a1;
          v26 = sub_22855D1AC();
          v28 = v27;

          v29 = v26;
          a1 = v25;
          v30 = sub_2283F8938(v29, v28, &v43);

          *(v22 + 14) = v30;
          v18 = v37;
          _os_log_impl(&dword_2283ED000, v21, v10, "Existing item %ld: %s", v22, 0x16u);
          p_isa = v39;
          __swift_destroy_boxed_opaque_existential_0(v39);
          MEMORY[0x22AABAD40](v39, -1, -1);
          v31 = v22;
          v13 = v38;
          MEMORY[0x22AABAD40](v31, -1, -1);

          v4 = v40;
        }

        else
        {
        }

        ++v5;
      }

      while (v4 != v18);
    }

LABEL_23:

    sub_22843C75C(v34, v33 & 1, &qword_27D83F520, type metadata accessor for PluginData);
    if (!v35)
    {
      sub_22843D108();
      swift_allocError();
      swift_willThrow();
    }

    v10 = v36;
LABEL_26:

    return v4;
  }

LABEL_31:
  if (!result)
  {

    return 0;
  }

  if ((v38 & 0xC000000000000001) != 0)
  {
    v32 = MEMORY[0x22AAB9D20](0, v38);
    goto LABEL_35;
  }

  if (*((v38 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v32 = *(v38 + 32);
LABEL_35:
    v4 = v32;

    return v4;
  }

  __break(1u);
  return result;
}

unint64_t sub_22843B984(unint64_t a1, uint64_t a2, unsigned int a3)
{
  v4 = v3;
  v8 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v9 = sub_22855D17C();
  v10 = [v8 initWithEntityName_];

  [v10 setPredicate_];
  type metadata accessor for Profile();
  v11 = sub_22855D97C();
  v12 = v3;
  if (v3)
  {
    goto LABEL_26;
  }

  v13 = v11;
  v39 = a3;
  v14 = v11 >> 62;
  if (v11 >> 62)
  {
    goto LABEL_29;
  }

  result = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (result > 1)
  {
LABEL_4:
    if (qword_280DEEC90 != -1)
    {
      swift_once();
    }

    v16 = sub_22855CABC();
    __swift_project_value_buffer(v16, qword_280DEEC98);
    v4 = sub_22855CA8C();
    v17 = sub_22855D68C();
    if (os_log_type_enabled(v4, v17))
    {
      v18 = v13;
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_2283ED000, v4, v17, "Error: duplicate feed item created...", v19, 2u);
      v20 = v19;
      v13 = v18;
      MEMORY[0x22AABAD40](v20, -1, -1);
    }

    v35 = a1;
    v36 = v12;
    v37 = v10;

    if (!v14)
    {
      v12 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v10 = v39;
      if (!v12)
      {
        goto LABEL_23;
      }

      goto LABEL_12;
    }

    v12 = sub_22855DB4C();
    v10 = v39;
    if (v12)
    {
LABEL_12:
      a1 = 0;
      v42 = v13 & 0xFFFFFFFFFFFFFF8;
      v43 = v13 & 0xC000000000000001;
      v38 = v13;
      do
      {
        if (v43)
        {
          v21 = MEMORY[0x22AAB9D20](a1, v13);
          v4 = (a1 + 1);
          if (__OFADD__(a1, 1))
          {
LABEL_22:
            __break(1u);
            break;
          }
        }

        else
        {
          if (a1 >= *(v42 + 16))
          {
            __break(1u);
LABEL_29:
            if (sub_22855DB4C() < 2)
            {
              result = sub_22855DB4C();
              goto LABEL_31;
            }

            goto LABEL_4;
          }

          v21 = *(v13 + 8 * a1 + 32);
          v4 = (a1 + 1);
          if (__OFADD__(a1, 1))
          {
            goto LABEL_22;
          }
        }

        v22 = v21;
        v23 = sub_22855CA8C();
        v14 = sub_22855D68C();

        if (os_log_type_enabled(v23, v14))
        {
          v24 = swift_slowAlloc();
          v40 = swift_slowAlloc();
          v44 = v40;
          *v24 = 134218242;
          *(v24 + 4) = a1;
          *(v24 + 12) = 2080;
          v41 = v4;
          v25 = v22;
          v26 = [v25 description];
          v27 = v12;
          v28 = sub_22855D1AC();
          v30 = v29;

          v31 = v28;
          v12 = v27;
          v32 = sub_2283F8938(v31, v30, &v44);

          *(v24 + 14) = v32;
          v10 = v39;
          _os_log_impl(&dword_2283ED000, v23, v14, "Existing item %ld: %s", v24, 0x16u);
          __swift_destroy_boxed_opaque_existential_0(v40);
          MEMORY[0x22AABAD40](v40, -1, -1);
          v33 = v24;
          v13 = v38;
          MEMORY[0x22AABAD40](v33, -1, -1);

          v4 = v41;
        }

        else
        {
        }

        ++a1;
      }

      while (v4 != v12);
    }

LABEL_23:

    sub_22843CC28(v35, v10 & 1, type metadata accessor for Profile, &qword_27D83F518, type metadata accessor for Profile);
    if (!v36)
    {
      sub_22843D108();
      swift_allocError();
      swift_willThrow();
    }

    v10 = v37;
LABEL_26:

    return v4;
  }

LABEL_31:
  if (!result)
  {

    return 0;
  }

  if ((v13 & 0xC000000000000001) != 0)
  {
    v34 = MEMORY[0x22AAB9D20](0, v13);
    goto LABEL_35;
  }

  if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v34 = *(v13 + 32);
LABEL_35:
    v4 = v34;

    return v4;
  }

  __break(1u);
  return result;
}

unint64_t sub_22843BE20(void *a1, uint64_t a2, char a3)
{
  v4 = v3;
  LOBYTE(v5) = a3;
  v8 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v9 = sub_22855D17C();
  v10 = [v8 initWithEntityName_];

  [v10 setPredicate_];
  type metadata accessor for Profile();
  v11 = sub_22855D97C();
  p_isa = &v3->isa;
  if (v3)
  {
    goto LABEL_26;
  }

  v13 = v11 >> 62;
  v38 = v11;
  if (v11 >> 62)
  {
    goto LABEL_29;
  }

  result = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (result > 1)
  {
LABEL_4:
    v35 = p_isa;
    if (qword_280DEEC90 != -1)
    {
      swift_once();
    }

    v15 = sub_22855CABC();
    v42 = __swift_project_value_buffer(v15, qword_280DEEC98);
    p_isa = v42;
    v4 = sub_22855CA8C();
    v16 = sub_22855D68C();
    if (os_log_type_enabled(v4, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_2283ED000, v4, v16, "Error: duplicate feed item created...", v17, 2u);
      MEMORY[0x22AABAD40](v17, -1, -1);
    }

    v33 = v5;
    v34 = a1;
    v36 = v10;

    if (!v13)
    {
      v13 = v38;
      v18 = *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v18)
      {
        goto LABEL_23;
      }

      goto LABEL_12;
    }

    v13 = v38;
    v18 = sub_22855DB4C();
    if (v18)
    {
LABEL_12:
      v5 = 0;
      a1 = (v13 & 0xC000000000000001);
      v41 = v13 & 0xFFFFFFFFFFFFFF8;
      v37 = v18;
      do
      {
        if (a1)
        {
          v19 = MEMORY[0x22AAB9D20](v5, v13);
          v4 = (v5 + 1);
          if (__OFADD__(v5, 1))
          {
LABEL_22:
            __break(1u);
            break;
          }
        }

        else
        {
          if (v5 >= *(v41 + 16))
          {
            __break(1u);
LABEL_29:
            if (sub_22855DB4C() < 2)
            {
              result = sub_22855DB4C();
              goto LABEL_31;
            }

            goto LABEL_4;
          }

          v19 = *(v13 + 8 * v5 + 32);
          v4 = (v5 + 1);
          if (__OFADD__(v5, 1))
          {
            goto LABEL_22;
          }
        }

        v20 = v19;
        p_isa = v42;
        v21 = sub_22855CA8C();
        v10 = sub_22855D68C();

        if (os_log_type_enabled(v21, v10))
        {
          v22 = swift_slowAlloc();
          v39 = swift_slowAlloc();
          v43 = v39;
          *v22 = 134218242;
          *(v22 + 4) = v5;
          *(v22 + 12) = 2080;
          v40 = v4;
          v23 = v20;
          v24 = [v23 description];
          v25 = a1;
          v26 = sub_22855D1AC();
          v28 = v27;

          v29 = v26;
          a1 = v25;
          v30 = sub_2283F8938(v29, v28, &v43);

          *(v22 + 14) = v30;
          v18 = v37;
          _os_log_impl(&dword_2283ED000, v21, v10, "Existing item %ld: %s", v22, 0x16u);
          p_isa = v39;
          __swift_destroy_boxed_opaque_existential_0(v39);
          MEMORY[0x22AABAD40](v39, -1, -1);
          v31 = v22;
          v13 = v38;
          MEMORY[0x22AABAD40](v31, -1, -1);

          v4 = v40;
        }

        else
        {
        }

        ++v5;
      }

      while (v4 != v18);
    }

LABEL_23:

    sub_22843C75C(v34, v33 & 1, &qword_27D83F518, type metadata accessor for Profile);
    if (!v35)
    {
      sub_22843D108();
      swift_allocError();
      swift_willThrow();
    }

    v10 = v36;
LABEL_26:

    return v4;
  }

LABEL_31:
  if (!result)
  {

    return 0;
  }

  if ((v38 & 0xC000000000000001) != 0)
  {
    v32 = MEMORY[0x22AAB9D20](0, v38);
    goto LABEL_35;
  }

  if (*((v38 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v32 = *(v38 + 32);
LABEL_35:
    v4 = v32;

    return v4;
  }

  __break(1u);
  return result;
}

unint64_t sub_22843C2B8(unint64_t a1, uint64_t a2, unsigned int a3)
{
  v4 = v3;
  v8 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v9 = sub_22855D17C();
  v10 = [v8 initWithEntityName_];

  [v10 setPredicate_];
  type metadata accessor for FeedSection();
  v11 = sub_22855D97C();
  v12 = v3;
  if (v3)
  {
    goto LABEL_26;
  }

  v13 = v11;
  v39 = a3;
  v14 = v11 >> 62;
  if (v11 >> 62)
  {
    goto LABEL_29;
  }

  result = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (result > 1)
  {
LABEL_4:
    if (qword_280DEEC90 != -1)
    {
      swift_once();
    }

    v16 = sub_22855CABC();
    __swift_project_value_buffer(v16, qword_280DEEC98);
    v4 = sub_22855CA8C();
    v17 = sub_22855D68C();
    if (os_log_type_enabled(v4, v17))
    {
      v18 = v13;
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_2283ED000, v4, v17, "Error: duplicate feed item created...", v19, 2u);
      v20 = v19;
      v13 = v18;
      MEMORY[0x22AABAD40](v20, -1, -1);
    }

    v35 = a1;
    v36 = v12;
    v37 = v10;

    if (!v14)
    {
      v12 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v10 = v39;
      if (!v12)
      {
        goto LABEL_23;
      }

      goto LABEL_12;
    }

    v12 = sub_22855DB4C();
    v10 = v39;
    if (v12)
    {
LABEL_12:
      a1 = 0;
      v42 = v13 & 0xFFFFFFFFFFFFFF8;
      v43 = v13 & 0xC000000000000001;
      v38 = v13;
      do
      {
        if (v43)
        {
          v21 = MEMORY[0x22AAB9D20](a1, v13);
          v4 = (a1 + 1);
          if (__OFADD__(a1, 1))
          {
LABEL_22:
            __break(1u);
            break;
          }
        }

        else
        {
          if (a1 >= *(v42 + 16))
          {
            __break(1u);
LABEL_29:
            if (sub_22855DB4C() < 2)
            {
              result = sub_22855DB4C();
              goto LABEL_31;
            }

            goto LABEL_4;
          }

          v21 = *(v13 + 8 * a1 + 32);
          v4 = (a1 + 1);
          if (__OFADD__(a1, 1))
          {
            goto LABEL_22;
          }
        }

        v22 = v21;
        v23 = sub_22855CA8C();
        v14 = sub_22855D68C();

        if (os_log_type_enabled(v23, v14))
        {
          v24 = swift_slowAlloc();
          v40 = swift_slowAlloc();
          v44 = v40;
          *v24 = 134218242;
          *(v24 + 4) = a1;
          *(v24 + 12) = 2080;
          v41 = v4;
          v25 = v22;
          v26 = [v25 description];
          v27 = v12;
          v28 = sub_22855D1AC();
          v30 = v29;

          v31 = v28;
          v12 = v27;
          v32 = sub_2283F8938(v31, v30, &v44);

          *(v24 + 14) = v32;
          v10 = v39;
          _os_log_impl(&dword_2283ED000, v23, v14, "Existing item %ld: %s", v24, 0x16u);
          __swift_destroy_boxed_opaque_existential_0(v40);
          MEMORY[0x22AABAD40](v40, -1, -1);
          v33 = v24;
          v13 = v38;
          MEMORY[0x22AABAD40](v33, -1, -1);

          v4 = v41;
        }

        else
        {
        }

        ++a1;
      }

      while (v4 != v12);
    }

LABEL_23:

    sub_22843CC28(v35, v10 & 1, type metadata accessor for FeedSection, &qword_27D83F510, type metadata accessor for FeedSection);
    if (!v36)
    {
      sub_22843D108();
      swift_allocError();
      swift_willThrow();
    }

    v10 = v37;
LABEL_26:

    return v4;
  }

LABEL_31:
  if (!result)
  {

    return 0;
  }

  if ((v13 & 0xC000000000000001) != 0)
  {
    v34 = MEMORY[0x22AAB9D20](0, v13);
    goto LABEL_35;
  }

  if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v34 = *(v13 + 32);
LABEL_35:
    v4 = v34;

    return v4;
  }

  __break(1u);
  return result;
}

void sub_22843C75C(void *a1, char a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  v32 = *MEMORY[0x277D85DE8];
  v8 = [a1 persistentStoreCoordinator];
  if (!v8)
  {
    if (qword_280DEEC90 == -1)
    {
LABEL_11:
      v19 = sub_22855CABC();
      __swift_project_value_buffer(v19, qword_280DEEC98);
      v20 = sub_22855CA8C();
      v21 = sub_22855D69C();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        *v22 = 0;
        _os_log_impl(&dword_2283ED000, v20, v21, "No coordinator, unable to reset cache version", v22, 2u);
        MEMORY[0x22AABAD40](v22, -1, -1);
      }

      return;
    }

LABEL_24:
    swift_once();
    goto LABEL_11;
  }

  v9 = v8;
  v10 = [v8 persistentStores];
  sub_2283EF310(0, &qword_280DED150, 0x277CBE4D0);
  v11 = sub_22855D3AC();

  if (v11 >> 62)
  {
    if (sub_22855DB4C())
    {
      goto LABEL_4;
    }
  }

  else if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_4:
    v30 = a4;
    if ((v11 & 0xC000000000000001) != 0)
    {
      v12 = MEMORY[0x22AAB9D20](0, v11);
LABEL_7:
      v13 = v12;

      v14 = [v9 metadataForPersistentStore_];
      sub_22855D0EC();

      sub_22845A864(0xD000000000000023, 0x800000022856E7D0, v31);
      sub_22843D15C(v31);
      v15 = sub_22855D0DC();
      [v9 setMetadata:v15 forPersistentStore:v13];

      *&v31[0] = 0;
      v16 = [a1 save_];
      v17 = *&v31[0];
      if (v16)
      {
        if (a2)
        {
          *&v31[0] = 0;
          *(&v31[0] + 1) = 0xE000000000000000;
          v28 = v17;
          sub_22855DC6C();
          MEMORY[0x22AAB92A0](0xD000000000000018, 0x800000022856E800);
          sub_22843D1B8(0, a3, v30);
          v29 = sub_22855D1BC();
          MEMORY[0x22AAB92A0](v29);

          MEMORY[0x22AAB92A0](0xD000000000000039, 0x800000022856E820);
          sub_22855DEDC();
          __break(1u);
        }

        else
        {
          v18 = *&v31[0];
        }
      }

      else
      {
        v23 = *&v31[0];

        sub_22855BF3C();

        swift_willThrow();
      }

      return;
    }

    if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v12 = *(v11 + 32);
      goto LABEL_7;
    }

    __break(1u);
    goto LABEL_24;
  }

  if (qword_280DEEC90 != -1)
  {
    swift_once();
  }

  v24 = sub_22855CABC();
  __swift_project_value_buffer(v24, qword_280DEEC98);
  v25 = sub_22855CA8C();
  v26 = sub_22855D69C();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    *v27 = 0;
    _os_log_impl(&dword_2283ED000, v25, v26, "No persistent stores, unable to reset cache version", v27, 2u);
    MEMORY[0x22AABAD40](v27, -1, -1);
  }
}

void sub_22843CC28(void *a1, char a2, uint64_t (*a3)(void), unint64_t *a4, uint64_t (*a5)(uint64_t))
{
  v33 = *MEMORY[0x277D85DE8];
  a3(0);
  v9 = [a1 persistentStoreCoordinator];
  if (!v9)
  {
    if (qword_280DEEC90 == -1)
    {
LABEL_11:
      v20 = sub_22855CABC();
      __swift_project_value_buffer(v20, qword_280DEEC98);
      v21 = sub_22855CA8C();
      v22 = sub_22855D69C();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        *v23 = 0;
        _os_log_impl(&dword_2283ED000, v21, v22, "No coordinator, unable to reset cache version", v23, 2u);
        MEMORY[0x22AABAD40](v23, -1, -1);
      }

      return;
    }

LABEL_24:
    swift_once();
    goto LABEL_11;
  }

  v10 = v9;
  v11 = [v9 persistentStores];
  sub_2283EF310(0, &qword_280DED150, 0x277CBE4D0);
  v12 = sub_22855D3AC();

  if (v12 >> 62)
  {
    if (sub_22855DB4C())
    {
      goto LABEL_4;
    }
  }

  else if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_4:
    v31 = a5;
    if ((v12 & 0xC000000000000001) != 0)
    {
      v13 = MEMORY[0x22AAB9D20](0, v12);
LABEL_7:
      v14 = v13;

      v15 = [v10 metadataForPersistentStore_];
      sub_22855D0EC();

      sub_22845A864(0xD000000000000023, 0x800000022856E7D0, v32);
      sub_22843D15C(v32);
      v16 = sub_22855D0DC();
      [v10 setMetadata:v16 forPersistentStore:v14];

      *&v32[0] = 0;
      v17 = [a1 save_];
      v18 = *&v32[0];
      if (v17)
      {
        if (a2)
        {
          *&v32[0] = 0;
          *(&v32[0] + 1) = 0xE000000000000000;
          v29 = v18;
          sub_22855DC6C();
          MEMORY[0x22AAB92A0](0xD000000000000018, 0x800000022856E800);
          sub_22843D1B8(0, a4, v31);
          v30 = sub_22855D1BC();
          MEMORY[0x22AAB92A0](v30);

          MEMORY[0x22AAB92A0](0xD000000000000039, 0x800000022856E820);
          sub_22855DEDC();
          __break(1u);
        }

        else
        {
          v19 = *&v32[0];
        }
      }

      else
      {
        v24 = *&v32[0];

        sub_22855BF3C();

        swift_willThrow();
      }

      return;
    }

    if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v13 = *(v12 + 32);
      goto LABEL_7;
    }

    __break(1u);
    goto LABEL_24;
  }

  if (qword_280DEEC90 != -1)
  {
    swift_once();
  }

  v25 = sub_22855CABC();
  __swift_project_value_buffer(v25, qword_280DEEC98);
  v26 = sub_22855CA8C();
  v27 = sub_22855D69C();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    *v28 = 0;
    _os_log_impl(&dword_2283ED000, v26, v27, "No persistent stores, unable to reset cache version", v28, 2u);
    MEMORY[0x22AABAD40](v28, -1, -1);
  }
}

unint64_t sub_22843D108()
{
  result = qword_27D83F508;
  if (!qword_27D83F508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D83F508);
  }

  return result;
}

uint64_t sub_22843D15C(uint64_t a1)
{
  sub_228400E48();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22843D1B8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a2;
  if (!*a2)
  {
    a3(255);
    result = swift_getMetatypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t Publisher<>.collectAndReduceOutput()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v16 = a3;
  v5 = sub_22855CBDC();
  v17 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = v15 - v6;
  v15[1] = swift_getAssociatedTypeWitness();
  swift_getWitnessTable();
  v8 = sub_22855CB6C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v15 - v10;
  sub_22855CF1C();
  v12 = swift_allocObject();
  v12[2] = a1;
  v12[3] = a2;
  v12[4] = v16;
  sub_22855CE8C();

  (*(v17 + 8))(v7, v5);
  swift_getWitnessTable();
  v13 = sub_22855CE6C();
  (*(v9 + 8))(v11, v8);
  return v13;
}

uint64_t sub_22843D468(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v11 = &v14[-v10];
  v12 = *a1;
  sub_22855D60C();
  v19 = v12;
  v15 = a2;
  v16 = a3;
  v17 = a4;
  v18 = AssociatedTypeWitness;
  sub_22855D47C();
  swift_getWitnessTable();
  sub_22855D31C();
  return (*(v9 + 8))(v11, AssociatedTypeWitness);
}

uint64_t LegacyUserInterfaceKind.legacyUserInterface(className:)(uint64_t a1, uint64_t a2, char a3)
{
  if (!a3)
  {
    return 0;
  }

  return a1;
}

uint64_t sub_22843D70C()
{
  sub_22855E22C();
  sub_22855E25C();
  return sub_22855E27C();
}

uint64_t sub_22843D780(uint64_t a1)
{
  sub_22855E22C();
  sub_22855E25C();
  return sub_22855E27C();
}

uint64_t sub_22843D7C4@<X0>(Swift::Int16 *a1@<X0>, HealthPlatform::LegacyUserInterfaceKind_optional *a2@<X8>)
{
  result = _s14HealthPlatform23LegacyUserInterfaceKindO8rawValueACSgs5Int16V_tcfC_0(*a1);
  a2->value = result;
  return result;
}

uint64_t _s14HealthPlatform23LegacyUserInterfaceKindO8rawValueACSgs5Int16V_tcfC_0(uint64_t result)
{
  if (result >= 6u)
  {
    return 6;
  }

  else
  {
    return result;
  }
}

unint64_t sub_22843D814()
{
  result = qword_27D83F548;
  if (!qword_27D83F548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D83F548);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for LegacyUserInterfaceKind(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for LegacyUserInterfaceKind(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t Subscribers.SubscriptionStatus.upstream.getter@<X0>(uint64_t a1@<X8>)
{
  sub_228439384(v1, v4);
  if (v5 == 1 || !v5)
  {
    return sub_2283FAB3C(v4, a1);
  }

  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return sub_2284393E0(v4);
}

BOOL Subscribers.SubscriptionStatus.isActive.getter()
{
  sub_228439384(v0, v3);
  v1 = v3[40] < 2u;
  sub_2284393E0(v3);
  return v1;
}

uint64_t get_enum_tag_for_layout_string_7Combine11SubscribersO14HealthPlatformE18SubscriptionStatusO(uint64_t a1)
{
  if ((*(a1 + 40) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 40) & 3;
  }
}

__n128 __swift_memcpy41_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_22843DA98(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 41))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 40);
  if (v3 >= 3)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_22843DAD4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 25) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

uint64_t sub_22843DB20(uint64_t result, unsigned int a2)
{
  if (a2 > 1)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 40) = a2;
  return result;
}

id static OrchestrationAnchor.fetchRequest()()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBE428]);
  v1 = sub_22855D17C();
  v2 = [v0 initWithEntityName_];

  return v2;
}

void sub_22843DBE8(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 encodedAnchorSet];
  v4 = sub_22855C09C();
  v6 = v5;

  *a2 = v4;
  a2[1] = v6;
}

void keypath_setTm(void *a1, void **a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, void), SEL *a6)
{
  v7 = *a2;
  v8 = (a5)(*a1, a1[1], a3, a4);
  [v7 *a6];
}

void sub_22843DCB4(uint64_t a1)
{
  v1 = a1;
  v29 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = sub_22855DB4C();
  }

  else
  {
    v2 = *(a1 + 16);
  }

  if (v2)
  {
    v35 = MEMORY[0x277D84F90];
    sub_2284272C0(0, v2 & ~(v2 >> 63), 0);
    v30 = v35;
    if (v29)
    {
      v3 = sub_22855DDEC();
    }

    else
    {
      v3 = sub_22855DAAC();
      v4 = *(v1 + 36);
    }

    v32 = v3;
    v33 = v4;
    v34 = v29 != 0;
    if ((v2 & 0x8000000000000000) == 0)
    {
      v5 = 0;
      v27 = v2;
      v28 = v1;
      while (v5 < v2)
      {
        if (__OFADD__(v5, 1))
        {
          goto LABEL_24;
        }

        v14 = v32;
        v13 = v33;
        v15 = v34;
        sub_22844A90C(v32, v33, v34, v1);
        v17 = v16;
        v18 = [v16 sensitiveLoggingIdentifier];
        v19 = sub_22855D1AC();
        v21 = v20;

        v22 = v30;
        v35 = v30;
        v24 = *(v30 + 16);
        v23 = *(v30 + 24);
        if (v24 >= v23 >> 1)
        {
          sub_2284272C0((v23 > 1), v24 + 1, 1);
          v22 = v35;
        }

        *(v22 + 16) = v24 + 1;
        v25 = v22 + 16 * v24;
        *(v25 + 32) = v19;
        *(v25 + 40) = v21;
        v30 = v22;
        if (v29)
        {
          v1 = v28;
          if (!v15)
          {
            goto LABEL_26;
          }

          if (sub_22855DE2C())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          v2 = v27;
          v12 = v5 + 1;
          sub_22844C3AC(0);
          v26 = sub_22855D10C();
          sub_22855DECC();
          v26(v31, 0);
        }

        else
        {
          v1 = v28;
          sub_228534A1C(v14, v13, v15, v28);
          v7 = v6;
          v9 = v8;
          v11 = v10;
          sub_228416CB8(v14, v13, v15);
          v32 = v7;
          v33 = v9;
          v34 = v11 & 1;
          v2 = v27;
          v12 = v5 + 1;
        }

        ++v5;
        if (v12 == v2)
        {
          sub_228416CB8(v32, v33, v34);
          return;
        }
      }

      __break(1u);
LABEL_24:
      __break(1u);
    }

    __break(1u);
LABEL_26:
    __break(1u);
  }
}

uint64_t static InputSignalSet.LookupKey.databaseChangesQuery.getter()
{
  v0 = sub_22855C85C();
  MEMORY[0x28223BE20](v0 - 8);
  sub_22855C84C();
  type metadata accessor for DatabaseChangesQueryInputSignal();
  return sub_22855C61C();
}

void *DatabaseChangesQueryInputSignal.__allocating_init(context:observer:healthStore:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  ObjectType = swift_getObjectType();

  return sub_22844AA9C(a1, a3, a4, a5, v5, ObjectType, a2);
}

void *DatabaseChangesQueryInputSignal.__allocating_init(context:observer:healthStore:changesObserver:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v13 = a6[3];
  v14 = a6[4];
  v15 = __swift_mutable_project_boxed_opaque_existential_1(a6, v13);
  v16 = sub_22844AC90(a1, a2, a3, a4, a5, v15, v6, v13, v14);
  __swift_destroy_boxed_opaque_existential_0(a6);
  return v16;
}

void *DatabaseChangesQueryInputSignal.init(context:observer:healthStore:changesObserver:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v13 = a6[3];
  v14 = a6[4];
  v15 = __swift_mutable_project_boxed_opaque_existential_1(a6, v13);
  MEMORY[0x28223BE20](v15);
  v17 = &v21 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v18 + 16))(v17);
  v19 = sub_22844A814(a1, a2, a3, a4, a5, v17, v6, v13, v14);
  __swift_destroy_boxed_opaque_existential_0(a6);
  return v19;
}

uint64_t DatabaseChangesQueryInputSignal.Anchor.init(anchor:lastUpdateAnchors:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t sub_22843E2B0(uint64_t a1)
{
  v2 = v1;
  v4 = v2[10];
  v5 = v2[11];
  __swift_project_boxed_opaque_existential_1(v2 + 7, v4);
  v6 = v2[12];
  os_unfair_lock_lock((v6 + 32));
  v7 = *(v6 + 16);
  v8 = v7;
  os_unfair_lock_unlock((v6 + 32));
  v9 = swift_allocObject();
  swift_weakInit();
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = a1;
  v11 = *(v5 + 8);

  v11(v12, v7, sub_22844C340, v10, v4, v5);
}

void sub_22843E3D4(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v82 = a5;
  v8 = sub_22855C85C();
  v80 = *(v8 - 8);
  v81 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &v74 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_22855CABC();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v74 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v74 - v17;
  MEMORY[0x28223BE20](v16);
  v20 = &v74 - v19;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v22 = Strong;
    if (a3)
    {
      swift_getObjectType();
      v23 = a3;
      sub_22855C59C();
      v24 = a3;

      v25 = sub_22855CA8C();
      v26 = sub_22855D68C();

      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        v79 = v11;
        v77 = v28;
        v78 = swift_slowAlloc();
        v84 = v78;
        *v27 = 136315394;
        sub_22855C84C();
        sub_22840A300(&qword_280DE9E98, 255, MEMORY[0x277D11C40], MEMORY[0x277D11C50]);
        LODWORD(v76) = v26;
        v29 = v81;
        v30 = sub_22855E11C();
        v31 = v12;
        v33 = v32;
        (*(v80 + 8))(v10, v29);
        v34 = sub_2283F8938(v30, v33, &v84);

        *(v27 + 4) = v34;
        *(v27 + 12) = 2112;
        v35 = a3;
        v36 = _swift_stdlib_bridgeErrorToNSError();
        *(v27 + 14) = v36;
        v37 = v77;
        *v77 = v36;
        _os_log_impl(&dword_2283ED000, v25, v76, "[%s] Query failed: %@; attempting to restart query.", v27, 0x16u);
        sub_22841DC98(v37);
        MEMORY[0x22AABAD40](v37, -1, -1);
        v38 = v78;
        __swift_destroy_boxed_opaque_existential_0(v78);
        MEMORY[0x22AABAD40](v38, -1, -1);
        MEMORY[0x22AABAD40](v27, -1, -1);

        (*(v31 + 8))(v20, v79);
      }

      else
      {

        (*(v12 + 8))(v20, v11);
      }

      if (qword_27D83F018 != -1)
      {
        swift_once();
      }

      v56 = swift_allocObject();
      v57 = v82;
      *(v56 + 16) = v22;
      *(v56 + 24) = v57;

      sub_228506C84(sub_22844C3A4, v56);
    }

    else
    {
      v82 = a1;
      v78 = a2;
      if (a2)
      {
        sub_22843DCB4(a2);
        v40 = v39;
        v77 = 0;
        swift_getObjectType();
        sub_22855C59C();

        v41 = sub_22855CA8C();
        v42 = sub_22855D6AC();

        if (os_log_type_enabled(v41, v42))
        {
          v43 = swift_slowAlloc();
          v76 = v12;
          v44 = v43;
          v75 = swift_slowAlloc();
          v84 = v75;
          *v44 = 136315394;
          sub_22855C84C();
          sub_22840A300(&qword_280DE9E98, 255, MEMORY[0x277D11C40], MEMORY[0x277D11C50]);
          v45 = v81;
          v46 = sub_22855E11C();
          v79 = v11;
          v48 = v47;
          (*(v80 + 8))(v10, v45);
          v49 = sub_2283F8938(v46, v48, &v84);

          *(v44 + 4) = v49;
          *(v44 + 12) = 2080;
          v50 = MEMORY[0x22AAB9430](v40, MEMORY[0x277D837D0]);
          v52 = v51;

          v53 = sub_2283F8938(v50, v52, &v84);

          *(v44 + 14) = v53;
          _os_log_impl(&dword_2283ED000, v41, v42, "[%s] Types changed: %s", v44, 0x16u);
          v54 = v75;
          swift_arrayDestroy();
          MEMORY[0x22AABAD40](v54, -1, -1);
          MEMORY[0x22AABAD40](v44, -1, -1);

          v55 = (*(v76 + 8))(v15, v79);
        }

        else
        {

          v55 = (*(v12 + 8))(v15, v11);
        }
      }

      else
      {
        swift_getObjectType();
        sub_22855C59C();

        v58 = sub_22855CA8C();
        v59 = sub_22855D6AC();

        if (os_log_type_enabled(v58, v59))
        {
          v60 = swift_slowAlloc();
          v61 = swift_slowAlloc();
          v79 = v11;
          v77 = v61;
          v84 = v61;
          *v60 = 136315138;
          sub_22855C84C();
          sub_22840A300(&qword_280DE9E98, 255, MEMORY[0x277D11C40], MEMORY[0x277D11C50]);
          v62 = v81;
          v63 = sub_22855E11C();
          v64 = v12;
          v66 = v65;
          (*(v80 + 8))(v10, v62);
          v67 = sub_2283F8938(v63, v66, &v84);

          *(v60 + 4) = v67;
          _os_log_impl(&dword_2283ED000, v58, v59, "[%s] Initial update; no changed types (empty database?)", v60, 0xCu);
          v68 = v77;
          __swift_destroy_boxed_opaque_existential_0(v77);
          MEMORY[0x22AABAD40](v68, -1, -1);
          MEMORY[0x22AABAD40](v60, -1, -1);

          v55 = (*(v64 + 8))(v18, v79);
        }

        else
        {

          v55 = (*(v12 + 8))(v18, v11);
        }
      }

      v69 = *(v22 + 96);
      MEMORY[0x28223BE20](v55);
      v70 = v82;
      *(&v74 - 2) = v78;
      *(&v74 - 1) = v70;

      os_unfair_lock_lock((v69 + 32));
      sub_22844C348((v69 + 16), &v84);
      os_unfair_lock_unlock((v69 + 32));

      v72 = v84;
      v71 = v85;
      swift_getObjectType();
      v84 = v72;
      v85 = v71;
      v83 = v22;
      type metadata accessor for DatabaseChangesQueryInputSignal();
      sub_22840A300(&qword_280DEAA08, v73, type metadata accessor for DatabaseChangesQueryInputSignal, &protocol conformance descriptor for DatabaseChangesQueryInputSignal);
      sub_22855C78C();
    }
  }
}

uint64_t sub_22843ED80(uint64_t a1, uint64_t a2)
{
  v3 = sub_22855C85C();
  v25 = *(v3 - 8);
  v26 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22855CABC();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getObjectType();
  sub_22855C59C();

  v10 = sub_22855CA8C();
  v11 = sub_22855D6AC();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v24 = v7;
    v13 = v12;
    v23 = swift_slowAlloc();
    v27 = v23;
    *v13 = 136315138;
    sub_22855C84C();
    sub_22840A300(&qword_280DE9E98, 255, MEMORY[0x277D11C40], MEMORY[0x277D11C50]);
    v14 = v26;
    v15 = sub_22855E11C();
    v22 = v6;
    v16 = a2;
    v18 = v17;
    (*(v25 + 8))(v5, v14);
    v19 = sub_2283F8938(v15, v18, &v27);
    a2 = v16;

    *(v13 + 4) = v19;
    _os_log_impl(&dword_2283ED000, v10, v11, "[%s] Device unlocked; retrying.", v13, 0xCu);
    v20 = v23;
    __swift_destroy_boxed_opaque_existential_0(v23);
    MEMORY[0x22AABAD40](v20, -1, -1);
    MEMORY[0x22AABAD40](v13, -1, -1);

    (*(v24 + 8))(v9, v22);
  }

  else
  {

    (*(v7 + 8))(v9, v6);
  }

  return sub_22843E2B0(a2);
}

uint64_t sub_22843F090@<X0>(id *a1@<X0>, unint64_t a2@<X1>, void *a3@<X2>, void *a4@<X8>)
{
  v6 = a1;
  v8 = a1[1];

  if (!a2 || !a3)
  {
LABEL_33:
    *v6 = a3;
    v6[1] = v8;
    *a4 = a3;
    a4[1] = v8;
    v38 = a3;
  }

  v41 = v6;
  v42 = a4;
  if ((a2 & 0xC000000000000001) != 0)
  {
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = sub_22855DDFC() | 0x8000000000000000;
  }

  else
  {
    v13 = -1 << *(a2 + 32);
    v10 = ~v13;
    v9 = a2 + 64;
    v14 = -v13;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v11 = v15 & *(a2 + 64);
    v12 = a2;
  }

  swift_bridgeObjectRetain_n();
  v45 = v12;
  v46 = a3;
  v16 = 0;
  v40 = v10;
  v17 = (v10 + 64) >> 6;
  v43 = v9;
  v44 = v17;
  while ((v12 & 0x8000000000000000) != 0)
  {
    if (!sub_22855DEBC() || (sub_2283EF310(0, &qword_280DE94F8, 0x277CCD8D8), swift_dynamicCast(), v22 = v48, v20 = v16, v21 = v11, !v48))
    {
LABEL_32:
      sub_228407958(v12);

      v6 = v41;
      a4 = v42;
      goto LABEL_33;
    }

LABEL_21:
    v47 = v21;
    v23 = v22;
    v24 = [v22 code];
    v25 = [v46 _rowid];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v48 = v8;
    v28 = sub_228443CF8(v24);
    v29 = v8[2];
    v30 = (v27 & 1) == 0;
    v31 = v29 + v30;
    if (__OFADD__(v29, v30))
    {
      goto LABEL_35;
    }

    v32 = v27;
    if (v8[3] >= v31)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        if (v27)
        {
          goto LABEL_10;
        }
      }

      else
      {
        sub_228447F84();
        if (v32)
        {
          goto LABEL_10;
        }
      }
    }

    else
    {
      sub_2284449D4(v31, isUniquelyReferenced_nonNull_native);
      v33 = sub_228443CF8(v24);
      if ((v32 & 1) != (v34 & 1))
      {
        goto LABEL_37;
      }

      v28 = v33;
      if (v32)
      {
LABEL_10:
        *(v8[7] + 8 * v28) = v25;

        goto LABEL_11;
      }
    }

    v8[(v28 >> 6) + 8] |= 1 << v28;
    *(v8[6] + 8 * v28) = v24;
    *(v8[7] + 8 * v28) = v25;

    v35 = v8[2];
    v36 = __OFADD__(v35, 1);
    v37 = v35 + 1;
    if (v36)
    {
      goto LABEL_36;
    }

    v8[2] = v37;
LABEL_11:
    v16 = v20;
    v11 = v47;
    v9 = v43;
    v17 = v44;
    v12 = v45;
  }

  v18 = v16;
  v19 = v11;
  v20 = v16;
  if (v11)
  {
LABEL_17:
    v21 = (v19 - 1) & v19;
    v22 = *(*(v12 + 48) + ((v20 << 9) | (8 * __clz(__rbit64(v19)))));
    if (!v22)
    {
      goto LABEL_32;
    }

    goto LABEL_21;
  }

  while (1)
  {
    v20 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v20 >= v17)
    {
      goto LABEL_32;
    }

    v19 = *(v9 + 8 * v20);
    ++v18;
    if (v19)
    {
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  type metadata accessor for _HKDataTypeCode(0);
  result = sub_22855E1BC();
  __break(1u);
  return result;
}

id sub_22843F3D8(void **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = *a1;
  if (*a1)
  {
    [*(a2 + 24) stopQuery_];
  }

  v12 = swift_allocObject();
  *(v12 + 16) = a5;
  *(v12 + 24) = a6;
  v13 = objc_allocWithZone(MEMORY[0x277CCDD70]);
  sub_2283EF310(0, &qword_280DE94F8, 0x277CCD8D8);

  v14 = sub_22855D39C();
  v18[4] = sub_22844B760;
  v18[5] = v12;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 1107296256;
  v18[2] = sub_228443588;
  v18[3] = &block_descriptor_3;
  v15 = _Block_copy(v18);
  v16 = [v13 initWithTypes:v14 anchor:a4 resultsHandler:v15];

  _Block_release(v15);

  *a1 = v16;
  return [*(a2 + 24) executeQuery_];
}

uint64_t sub_22843F564()
{

  return swift_deallocClassInstance();
}

void sub_22843F5A4()
{
  v1 = *(*v0 + 16);
  os_unfair_lock_lock((v1 + 24));
  sub_22844B73C((v1 + 16));
  os_unfair_lock_unlock((v1 + 24));
}

void sub_22843F604()
{
  v1 = *(*v0 + 16);
  os_unfair_lock_lock((v1 + 24));
  sub_22844B6E8((v1 + 16));

  os_unfair_lock_unlock((v1 + 24));
}

id DatabaseChangesQueryInputSignal.Anchor.anchor.getter()
{
  v1 = *v0;
  v2 = *v0;
  return v1;
}

unint64_t static DatabaseChangesQueryInputSignal.Anchor.== infix(_:_:)(unint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  if ((sub_2283EFEB0(a1[1], a2[1]) & 1) == 0)
  {
    return 0;
  }

  result = (v2 | v3) == 0;
  if (v2)
  {
    v5 = v3 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (!v5)
  {
    return [v2 isEqual_];
  }

  return result;
}

unint64_t sub_22843F734(unint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_13:
    v12 = v9 | (v4 << 6);
    v13 = *(*(v3 + 56) + v12);
    result = sub_228443AB4(*(*(v3 + 48) + v12));
    if ((v14 & 1) == 0 || v13 != *(*(a2 + 56) + result))
    {
      return 0;
    }
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v11 = *(v3 + 64 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22843F83C(uint64_t a1, uint64_t a2)
{
  v4 = sub_22855BE1C();
  v58 = *(v4 - 8);
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v57 = &v47 - v8;
  sub_2283F0D04(0, &qword_27D83F588, sub_22844BC8C, MEMORY[0x277D83D88]);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  result = MEMORY[0x28223BE20](v10);
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v52 = (&v47 - v12);
  v53 = v13;
  v51 = v7;
  v14 = 0;
  v49 = a1;
  v15 = *(a1 + 64);
  v48 = a1 + 64;
  v16 = 1 << *(a1 + 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & v15;
  v19 = (v16 + 63) >> 6;
  v54 = v58 + 16;
  v55 = (v58 + 32);
  v50 = (v58 + 8);
  while (1)
  {
    v20 = v53;
    if (!v18)
    {
      break;
    }

    v56 = (v18 - 1) & v18;
    v21 = __clz(__rbit64(v18)) | (v14 << 6);
LABEL_16:
    v26 = *(*(v49 + 48) + 8 * v21);
    v28 = v57;
    v27 = v58;
    (*(v58 + 16))(v57, *(v49 + 56) + *(v58 + 72) * v21, v4);
    sub_22844BC8C(0);
    v30 = v29;
    v31 = *(v29 + 48);
    *v20 = v26;
    (*(v27 + 32))(&v20[v31], v28, v4);
    (*(*(v30 - 8) + 56))(v20, 0, 1, v30);
    v32 = v26;
LABEL_17:
    v33 = v20;
    v34 = v52;
    sub_228409DC8(v33, v52, &qword_27D83F588, sub_22844BC8C);
    sub_22844BC8C(0);
    v35 = (*(*(v30 - 8) + 48))(v34, 1, v30);
    v36 = v35 == 1;
    if (v35 == 1)
    {
      return v36;
    }

    v37 = *v34;
    v38 = v51;
    (*v55)(v51, v34 + *(v30 + 48), v4);
    v39 = sub_228443B74(v37);
    v41 = v40;

    if ((v41 & 1) == 0)
    {
      (*v50)(v38, v4);
      return 0;
    }

    v43 = v57;
    v42 = v58;
    (*(v58 + 16))(v57, *(a2 + 56) + *(v58 + 72) * v39, v4);
    sub_22840A300(&qword_27D83F598, 255, MEMORY[0x277CC88A8], MEMORY[0x277CC88C8]);
    v44 = sub_22855D16C();
    v45 = *(v42 + 8);
    v45(v43, v4);
    result = (v45)(v38, v4);
    v18 = v56;
    if ((v44 & 1) == 0)
    {
      return v36;
    }
  }

  if (v19 <= v14 + 1)
  {
    v22 = v14 + 1;
  }

  else
  {
    v22 = v19;
  }

  v23 = v22 - 1;
  while (1)
  {
    v24 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v24 >= v19)
    {
      sub_22844BC8C(0);
      v30 = v46;
      (*(*(v46 - 8) + 56))(v20, 1, 1, v46);
      v56 = 0;
      v14 = v23;
      goto LABEL_17;
    }

    v25 = *(v48 + 8 * v24);
    ++v14;
    if (v25)
    {
      v56 = (v25 - 1) & v25;
      v21 = __clz(__rbit64(v25)) | (v24 << 6);
      v14 = v24;
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22843FD30(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  v3 = a2 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) == 0)
  {
    if (!v3)
    {
      if (a1 == a2)
      {
LABEL_34:
        LOBYTE(a1) = 1;
      }

      else
      {
        if (*(a1 + 16) == *(a2 + 16))
        {
          v7 = a2;
          v8 = 0;
          v9 = 1 << *(a1 + 32);
          v10 = -1;
          if (v9 < 64)
          {
            v10 = ~(-1 << v9);
          }

          v11 = v10 & *(a1 + 64);
          v12 = (v9 + 63) >> 6;
          while (v11)
          {
            v13 = __clz(__rbit64(v11));
            v11 &= v11 - 1;
LABEL_31:
            v16 = v13 | (v8 << 6);
            v17 = *(*(v2 + 56) + 8 * v16);
            v18 = *(*(v2 + 48) + 8 * v16);
            v19 = v17;
            v20 = sub_228443B74(v18);
            v22 = v21;

            if ((v22 & 1) == 0)
            {

              goto LABEL_36;
            }

            sub_2283EF310(0, &qword_280DE93E8, 0x277CCD8E0);
            v23 = *(*(v7 + 56) + 8 * v20);
            v24 = sub_22855D9AC();

            a1 = 0;
            if ((v24 & 1) == 0)
            {
              return a1 & 1;
            }
          }

          v14 = v8;
          while (1)
          {
            v8 = v14 + 1;
            if (__OFADD__(v14, 1))
            {
              break;
            }

            if (v8 >= v12)
            {
              goto LABEL_34;
            }

            v15 = *(v2 + 64 + 8 * v8);
            ++v14;
            if (v15)
            {
              v13 = __clz(__rbit64(v15));
              v11 = (v15 - 1) & v15;
              goto LABEL_31;
            }
          }

          __break(1u);
          return MEMORY[0x2821FCF40](a1, a2);
        }

LABEL_36:
        LOBYTE(a1) = 0;
      }

      return a1 & 1;
    }

    if (a2 < 0)
    {
      v5 = a2;
    }

    else
    {
      v5 = a2 & 0xFFFFFFFFFFFFFF8;
    }

    a2 = v2;
LABEL_17:
    sub_2283F0F8C(v5, a2, &qword_280DE93E8, 0x277CCD8E0);
    return a1 & 1;
  }

  v4 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 < 0)
  {
    v4 = a1;
  }

  if (!v3)
  {
    v5 = v4;
    goto LABEL_17;
  }

  if (a2 < 0)
  {
    a1 = a2;
  }

  else
  {
    a1 = a2 & 0xFFFFFFFFFFFFFF8;
  }

  a2 = v4;

  return MEMORY[0x2821FCF40](a1, a2);
}

BOOL sub_22843FF48(uint64_t a1, uint64_t a2)
{
  v58[3] = *MEMORY[0x277D85DE8];
  if (a1 == a2)
  {
    return 1;
  }

  v2 = a2;
  v3 = a1;
  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = a1 + 64;
  v6 = 1 << *(a1 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a1 + 64);
  v9 = (v6 + 63) >> 6;
  while (1)
  {
    while (1)
    {
      if (v8)
      {
        v10 = __clz(__rbit64(v8));
        v56 = (v8 - 1) & v8;
        goto LABEL_13;
      }

      v11 = v4;
      do
      {
        v4 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          __break(1u);
          goto LABEL_78;
        }

        if (v4 >= v9)
        {
          return 1;
        }

        v12 = *(v5 + 8 * v4);
        ++v11;
      }

      while (!v12);
      v10 = __clz(__rbit64(v12));
      v56 = (v12 - 1) & v12;
LABEL_13:
      v13 = 16 * (v10 | (v4 << 6));
      v14 = (*(v3 + 48) + v13);
      v15 = *v14;
      v16 = v14[1];
      v17 = (*(v3 + 56) + v13);
      v19 = *v17;
      v18 = v17[1];

      sub_22842B3E0(v19, v18);
      v20 = v16 == 0;
      if (!v16)
      {
        return v20;
      }

      v21 = sub_2283F6D18(v15, v16);
      v23 = v22;

      if ((v23 & 1) == 0)
      {
        goto LABEL_74;
      }

      v24 = (*(v2 + 56) + 16 * v21);
      v26 = *v24;
      v25 = v24[1];
      v27 = v25 >> 62;
      v28 = v18 >> 62;
      if (v25 >> 62 == 3)
      {
        if (v26)
        {
          v29 = 0;
        }

        else
        {
          v29 = v25 == 0xC000000000000000;
        }

        v30 = 0;
        v31 = v29 && v18 >> 62 == 3;
        if (v31 && !v19 && v18 == 0xC000000000000000)
        {
          v32 = 0;
          v33 = 0xC000000000000000;
          goto LABEL_49;
        }

LABEL_36:
        if (v28 <= 1)
        {
LABEL_37:
          if (!v28)
          {
            v37 = BYTE6(v18);
            goto LABEL_43;
          }

          LODWORD(v37) = HIDWORD(v19) - v19;
          if (!__OFSUB__(HIDWORD(v19), v19))
          {
            v37 = v37;
            goto LABEL_43;
          }

LABEL_78:
          __break(1u);
LABEL_79:
          __break(1u);
LABEL_80:
          __break(1u);
LABEL_81:
          __break(1u);
LABEL_82:
          __break(1u);
LABEL_83:
          __break(1u);
LABEL_84:
          __break(1u);
LABEL_85:
          __break(1u);
        }
      }

      else if (v27 > 1)
      {
        if (v27 == 2)
        {
          v39 = *(v26 + 16);
          v38 = *(v26 + 24);
          v36 = __OFSUB__(v38, v39);
          v30 = v38 - v39;
          if (!v36)
          {
            goto LABEL_36;
          }

          goto LABEL_81;
        }

        v30 = 0;
        if (v28 <= 1)
        {
          goto LABEL_37;
        }
      }

      else if (v27)
      {
        LODWORD(v30) = HIDWORD(v26) - v26;
        if (__OFSUB__(HIDWORD(v26), v26))
        {
          goto LABEL_80;
        }

        v30 = v30;
        if (v28 <= 1)
        {
          goto LABEL_37;
        }
      }

      else
      {
        v30 = BYTE6(v25);
        if (v28 <= 1)
        {
          goto LABEL_37;
        }
      }

      if (v28 == 2)
      {
        break;
      }

      if (v30)
      {
        goto LABEL_74;
      }

LABEL_48:
      v32 = v19;
      v33 = v18;
LABEL_49:
      sub_22842B38C(v32, v33);
      v3 = a1;
      v8 = v56;
    }

    v35 = *(v19 + 16);
    v34 = *(v19 + 24);
    v36 = __OFSUB__(v34, v35);
    v37 = v34 - v35;
    if (v36)
    {
      goto LABEL_79;
    }

LABEL_43:
    if (v30 != v37)
    {
      break;
    }

    if (v30 < 1)
    {
      goto LABEL_48;
    }

    if (v27 > 1)
    {
      if (v27 != 2)
      {
        memset(v58, 0, 14);
        sub_22842B3E0(v26, v25);
        goto LABEL_64;
      }

      v51 = *(v26 + 24);
      v53 = *(v26 + 16);
      sub_22842B3E0(v26, v25);
      v40 = sub_22855BEBC();
      if (v40)
      {
        v41 = v40;
        v42 = sub_22855BEDC();
        v43 = v53;
        if (__OFSUB__(v53, v42))
        {
          goto LABEL_84;
        }

        v50 = v53 - v42 + v41;
      }

      else
      {
        v50 = 0;
        v43 = v53;
      }

      if (__OFSUB__(v51, v43))
      {
        goto LABEL_83;
      }

      sub_22855BECC();
      v48 = v50;
LABEL_70:
      sub_2284436A8(v48, v19, v18, v58);
      sub_22842B38C(v26, v25);
      sub_22842B38C(v19, v18);
      v47 = v58[0];
      goto LABEL_71;
    }

    if (v27)
    {
      if (v26 >> 32 < v26)
      {
        goto LABEL_82;
      }

      sub_22842B3E0(v26, v25);
      v44 = sub_22855BEBC();
      if (v44)
      {
        v52 = v44;
        v45 = sub_22855BEDC();
        if (__OFSUB__(v26, v45))
        {
          goto LABEL_85;
        }

        v46 = v26 - v45 + v52;
      }

      else
      {
        v46 = 0;
      }

      sub_22855BECC();
      v48 = v46;
      goto LABEL_70;
    }

    v58[0] = v26;
    LOWORD(v58[1]) = v25;
    BYTE2(v58[1]) = BYTE2(v25);
    BYTE3(v58[1]) = BYTE3(v25);
    BYTE4(v58[1]) = BYTE4(v25);
    BYTE5(v58[1]) = BYTE5(v25);
    sub_22842B3E0(v26, v25);
LABEL_64:
    sub_2284436A8(v58, v19, v18, &v57);
    sub_22842B38C(v26, v25);
    sub_22842B38C(v19, v18);
    v47 = v57;
LABEL_71:
    v2 = a2;
    v3 = a1;
    v8 = v56;
    if ((v47 & 1) == 0)
    {
      return v20;
    }
  }

LABEL_74:
  sub_22842B38C(v19, v18);
  return 0;
}

void DatabaseChangesQueryInputSignal.Anchor.hasDifference(from:for:)(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  v4 = *a2;
  v5 = *v2;
  v38 = *(v2 + 8);
  if (*v2)
  {
    v6 = *a1;
    if (!v3 || v6 == 0)
    {
      v9 = 0;
    }

    else
    {
      v41 = *a1;
      sub_2283EF310(0, &qword_280DE94D0, 0x277CCD840);
      v8 = v6;
      v9 = sub_22855E14C();
    }

    v10 = [v5 isEqual_];
    swift_unknownObjectRelease();
    if (v10)
    {
      return;
    }
  }

  v39 = v3;
  if ((v4 & 0xC000000000000001) != 0)
  {

    sub_22855DAFC();
    sub_2283EF310(0, &qword_280DE94F8, 0x277CCD8D8);
    sub_22844B928(&qword_280DE94F0, &qword_280DE94F8, 0x277CCD8D8);
    sub_22855D56C();
    v4 = v41;
    v11 = v42;
    v12 = v43;
    v13 = v44;
    v14 = v45;
  }

  else
  {
    v15 = -1 << *(v4 + 32);
    v11 = v4 + 56;
    v12 = ~v15;
    v16 = -v15;
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v14 = v17 & *(v4 + 56);

    v13 = 0;
  }

  v18 = v38;
  v37 = v12;
  v19 = (v12 + 64) >> 6;
  while (1)
  {
    if (v4 < 0)
    {
      if (!sub_22855DB8C())
      {
        goto LABEL_38;
      }

      sub_2283EF310(0, &qword_280DE94F8, 0x277CCD8D8);
      swift_dynamicCast();
      v23 = v40;
      v22 = v14;
      if (!v40)
      {
        goto LABEL_38;
      }

      goto LABEL_27;
    }

    v20 = v13;
    v21 = v14;
    if (!v14)
    {
      break;
    }

LABEL_23:
    v22 = (v21 - 1) & v21;
    v23 = *(*(v4 + 48) + ((v13 << 9) | (8 * __clz(__rbit64(v21)))));
    if (!v23)
    {
      goto LABEL_38;
    }

LABEL_27:
    v24 = v23;
    v25 = [v24 code];
    if (*(v18 + 16) && (v26 = sub_228443CF8(v25), (v27 & 1) != 0))
    {
      v28 = 0;
      v29 = *(*(v18 + 56) + 8 * v26);
      v30 = v39;
      if (!v39)
      {
        goto LABEL_16;
      }

LABEL_32:
      v31 = [v24 code];

      v32 = *(v30 + 16);
      v14 = v22;
      if (!v32)
      {
        goto LABEL_17;
      }

      v33 = sub_228443CF8(v31);
      if ((v34 & 1) == 0)
      {
        goto LABEL_17;
      }

      v35 = *(*(v39 + 56) + 8 * v33);

      if (v29 == v35)
      {
        v36 = v28;
      }

      else
      {
        v36 = 1;
      }

      v18 = v38;
      if (v36)
      {
LABEL_38:
        sub_228407958(v4);
        return;
      }
    }

    else
    {
      v29 = 0;
      v28 = 1;
      v30 = v39;
      if (v39)
      {
        goto LABEL_32;
      }

LABEL_16:

      v14 = v22;
LABEL_17:

      v18 = v38;
      if ((v28 & 1) == 0)
      {
        goto LABEL_38;
      }
    }
  }

  while (1)
  {
    v13 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v13 >= v19)
    {
      goto LABEL_38;
    }

    v21 = *(v11 + 8 * v13);
    ++v20;
    if (v21)
    {
      goto LABEL_23;
    }
  }

  __break(1u);
}

uint64_t DatabaseChangesQueryInputSignal.Anchor.merged(with:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v6 = *v2;
  v5 = *(v2 + 8);
  if (*a1)
  {
    v7 = *(a1 + 8);
    if (v6)
    {
      v8 = v4;
      v9 = v6;
      v10 = [v9 _rowid];
      v11 = [v8 _rowid];

      if (v10 >= v11)
      {
        v12 = v8;
      }

      else
      {
        v12 = v9;
      }

      if (v10 < v11)
      {
        v13 = v6;
      }

      else
      {
        v5 = v7;
        v13 = v4;
      }

      v14 = v12;

      *a2 = v13;
      a2[1] = v5;
      return result;
    }

    *a2 = v4;
    a2[1] = v7;
    v17 = v4;
  }

  else
  {
    *a2 = v6;
    a2[1] = v5;
    v16 = v6;
  }
}

uint64_t sub_22844088C()
{
  if (*v0)
  {
    return 0xD000000000000011;
  }

  else
  {
    return 0x726F68636E61;
  }
}

uint64_t sub_2284408C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x726F68636E61 && a2 == 0xE600000000000000;
  if (v6 || (sub_22855E15C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000011 && 0x800000022856E990 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_22855E15C();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_2284409A8(uint64_t a1)
{
  v2 = sub_22844ADBC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2284409E4(uint64_t a1)
{
  v2 = sub_22844ADBC();

  return MEMORY[0x2821FE720](a1, v2);
}

void DatabaseChangesQueryInputSignal.Anchor.init(from:)(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_22844AEC4(0, &unk_280DE9028, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v48 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22844ADBC();
  sub_22855E30C();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  else
  {
    v60 = 0;
    sub_22844AE10();
    sub_22855DFEC();
    v10 = v58;
    v11 = v59;
    v54 = v59;
    if (v59 >> 60 == 15)
    {
      v52 = 0;
      v53 = v58;
    }

    else
    {
      v51 = a2;
      sub_2283EF310(0, &unk_280DEEB40, 0x277CCAAC8);
      sub_2283EF310(0, &qword_280DE94D0, 0x277CCD840);
      sub_22842B3E0(v10, v11);
      v52 = sub_22855D78C();
      v53 = v10;
      sub_22842B378(v10, v54);
      a2 = v51;
    }

    sub_22844AE64();
    v60 = 1;
    sub_22844AF28(&qword_280DE96B0, MEMORY[0x277D83BB8], MEMORY[0x277D84A58], MEMORY[0x277D83528]);
    sub_22855E03C();
    v50 = 0;
    v51 = a2;
    v48 = v7;
    v49 = v6;
    v12 = v58 + 64;
    v13 = 1 << *(v58 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v58 + 64);
    v16 = (v13 + 63) >> 6;
    v57 = v58;

    v17 = 0;
    v18 = MEMORY[0x277D84F90];
    v56 = v9;
    if (v15)
    {
      goto LABEL_13;
    }

    while (1)
    {
      v19 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v19 >= v16)
      {
        break;
      }

      v15 = *(v12 + 8 * v19);
      ++v17;
      if (v15)
      {
        v17 = v19;
        do
        {
LABEL_13:
          v20 = (v17 << 9) | (8 * __clz(__rbit64(v15)));
          v21 = *(*(v57 + 48) + v20);
          v22 = *(*(v57 + 56) + v20);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v18 = sub_228426664(0, *(v18 + 2) + 1, 1, v18);
          }

          v24 = *(v18 + 2);
          v23 = *(v18 + 3);
          v25 = v18;
          if (v24 >= v23 >> 1)
          {
            v25 = sub_228426664((v23 > 1), v24 + 1, 1, v18);
          }

          v15 &= v15 - 1;
          *(v25 + 2) = v24 + 1;
          v18 = v25;
          v26 = &v25[16 * v24];
          *(v26 + 4) = v21;
          *(v26 + 5) = v22;
          v9 = v56;
        }

        while (v15);
      }
    }

    v55 = *(v18 + 2);
    if (!v55)
    {
      v29 = MEMORY[0x277D84F98];
LABEL_34:

      sub_22842B378(v53, v54);
      (*(v48 + 8))(v9, v49);
      v45 = v51;
      v46 = v52;
      *v51 = v52;
      v45[1] = v29;
      v47 = v46;

      __swift_destroy_boxed_opaque_existential_0(a1);

      return;
    }

    v27 = 0;
    v28 = (v18 + 40);
    v29 = MEMORY[0x277D84F98];
    while (v27 < *(v18 + 2))
    {
      v30 = a1;
      v31 = v18;
      v32 = *(v28 - 1);
      v57 = *v28;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v58 = v29;
      v35 = sub_228443CF8(v32);
      v36 = v29[2];
      v37 = (v34 & 1) == 0;
      v38 = v36 + v37;
      if (__OFADD__(v36, v37))
      {
        goto LABEL_37;
      }

      v39 = v34;
      if (v29[3] >= v38)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_228447F84();
        }
      }

      else
      {
        sub_2284449D4(v38, isUniquelyReferenced_nonNull_native);
        v40 = sub_228443CF8(v32);
        if ((v39 & 1) != (v41 & 1))
        {
          goto LABEL_39;
        }

        v35 = v40;
      }

      v18 = v31;
      v29 = v58;
      a1 = v30;
      if (v39)
      {
        *(*(v58 + 56) + 8 * v35) = v57;
      }

      else
      {
        *(v58 + 8 * (v35 >> 6) + 64) |= 1 << v35;
        *(v29[6] + 8 * v35) = v32;
        *(v29[7] + 8 * v35) = v57;
        v42 = v29[2];
        v43 = __OFADD__(v42, 1);
        v44 = v42 + 1;
        if (v43)
        {
          goto LABEL_38;
        }

        v29[2] = v44;
      }

      ++v27;
      v28 += 2;
      v9 = v56;
      if (v55 == v27)
      {
        goto LABEL_34;
      }
    }

LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    type metadata accessor for _HKDataTypeCode(0);
    sub_22855E1BC();
    __break(1u);
  }
}

uint64_t DatabaseChangesQueryInputSignal.Anchor.encode(to:)(void *a1)
{
  v73[2] = *MEMORY[0x277D85DE8];
  sub_22844AEC4(0, &unk_280DE8FD8, MEMORY[0x277D84538]);
  v5 = v4;
  v67 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v62 - v6;
  v8 = *v1;
  v71 = *(v1 + 8);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22844ADBC();
  v9 = v8;
  v68 = v7;
  sub_22855E31C();
  if (v8)
  {
    v10 = objc_opt_self();
    v73[0] = 0;
    v11 = [v10 archivedDataWithRootObject:v9 requiringSecureCoding:1 error:v73];
    v12 = v73[0];
    if (!v11)
    {
      v18 = v12;
      sub_22855BF3C();

      swift_willThrow();
      return (*(v67 + 8))(v68, v5);
    }

    v13 = sub_22855C09C();
    v15 = v14;

    v73[0] = v13;
    v73[1] = v15;
    v72 = 0;
    sub_22844AF8C();
    v16 = v68;
    sub_22855E0CC();
    if (v2)
    {
      (*(v67 + 8))(v16, v5);

      return sub_22842B38C(v13, v15);
    }

    sub_22842B38C(v13, v15);
  }

  v66 = v2;
  v19 = *(v71 + 16);
  v20 = MEMORY[0x277D84F90];
  v65 = v5;
  if (v19)
  {
    v73[0] = MEMORY[0x277D84F90];
    v70 = v19;
    sub_228427410(0, v19, 0);
    v20 = v73[0];
    v21 = v71 + 64;
    v22 = sub_22855DAAC();
    v23 = v70;
    v24 = v71;
    v25 = 0;
    v69 = v71 + 72;
    while ((v22 & 0x8000000000000000) == 0 && v22 < 1 << *(v24 + 32))
    {
      v27 = v22 >> 6;
      v28 = 1 << v22;
      if ((*(v21 + 8 * (v22 >> 6)) & (1 << v22)) == 0)
      {
        goto LABEL_43;
      }

      v29 = *(*(v24 + 48) + 8 * v22);
      v30 = *(*(v24 + 56) + 8 * v22);
      v31 = *(v24 + 36);
      v73[0] = v20;
      v33 = v20[2];
      v32 = v20[3];
      if (v33 >= v32 >> 1)
      {
        v63 = v31;
        v64 = v22;
        sub_228427410((v32 > 1), v33 + 1, 1);
        v23 = v70;
        v24 = v71;
        v31 = v63;
        v22 = v64;
        v20 = v73[0];
      }

      v20[2] = v33 + 1;
      v34 = v20;
      v35 = &v20[2 * v33];
      v35[4] = v29;
      v35[5] = v30;
      v26 = 1 << *(v24 + 32);
      if (v22 >= v26)
      {
        goto LABEL_44;
      }

      v36 = *(v21 + 8 * v27);
      if ((v36 & v28) == 0)
      {
        goto LABEL_45;
      }

      if (v31 != *(v24 + 36))
      {
        goto LABEL_46;
      }

      v37 = v36 & (-2 << (v22 & 0x3F));
      if (v37)
      {
        v26 = __clz(__rbit64(v37)) | v22 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v38 = v27 << 6;
        v39 = v27 + 1;
        v40 = (v69 + 8 * v27);
        while (v39 < (v26 + 63) >> 6)
        {
          v42 = *v40++;
          v41 = v42;
          v38 += 64;
          ++v39;
          if (v42)
          {
            sub_228416CB8(v22, v31, 0);
            v23 = v70;
            v24 = v71;
            v26 = __clz(__rbit64(v41)) + v38;
            goto LABEL_10;
          }
        }

        sub_228416CB8(v22, v31, 0);
        v23 = v70;
        v24 = v71;
      }

LABEL_10:
      ++v25;
      v22 = v26;
      v20 = v34;
      if (v25 == v23)
      {
        goto LABEL_25;
      }
    }

    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
  }

LABEL_25:
  v71 = v20[2];
  if (v71)
  {
    v43 = 0;
    v44 = v20 + 5;
    v45 = MEMORY[0x277D84F98];
    while (1)
    {
      if (v43 >= v20[2])
      {
        goto LABEL_47;
      }

      v47 = *(v44 - 1);
      v46 = *v44;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v73[0] = v45;
      v49 = sub_228443D60(v47);
      v51 = v45[2];
      v52 = (v50 & 1) == 0;
      v53 = __OFADD__(v51, v52);
      v54 = v51 + v52;
      if (v53)
      {
        goto LABEL_48;
      }

      v55 = v50;
      if (v45[3] < v54)
      {
        break;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_35;
      }

      v59 = v49;
      sub_2284480C4();
      v49 = v59;
      v45 = v73[0];
      if (v55)
      {
LABEL_27:
        *(v45[7] + 8 * v49) = v46;
        goto LABEL_28;
      }

LABEL_36:
      v45[(v49 >> 6) + 8] |= 1 << v49;
      *(v45[6] + 8 * v49) = v47;
      *(v45[7] + 8 * v49) = v46;
      v57 = v45[2];
      v53 = __OFADD__(v57, 1);
      v58 = v57 + 1;
      if (v53)
      {
        goto LABEL_49;
      }

      v45[2] = v58;
LABEL_28:
      ++v43;
      v44 += 2;
      if (v71 == v43)
      {
        goto LABEL_41;
      }
    }

    sub_228444C48(v54, isUniquelyReferenced_nonNull_native);
    v49 = sub_228443D60(v47);
    if ((v55 & 1) != (v56 & 1))
    {
      result = sub_22855E1BC();
      __break(1u);
      return result;
    }

LABEL_35:
    v45 = v73[0];
    if (v55)
    {
      goto LABEL_27;
    }

    goto LABEL_36;
  }

  v45 = MEMORY[0x277D84F98];
LABEL_41:

  v73[0] = v45;
  v72 = 1;
  sub_22844AE64();
  sub_22844AF28(&qword_280DE96B8, MEMORY[0x277D83B90], MEMORY[0x277D84A30], MEMORY[0x277D83508]);
  v60 = v65;
  v61 = v68;
  sub_22855E0CC();
  (*(v67 + 8))(v61, v60);
}

uint64_t DatabaseChangesQueryInputSignal.Configuration.types.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t sub_22844171C(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  v24 = v8;
  v25 = result;
  if (v7)
  {
    while (1)
    {
      v10 = __clz(__rbit64(v7));
      v26 = (v7 - 1) & v7;
LABEL_13:
      v13 = *(*(result + 48) + 8 * (v10 | (v3 << 6)));
      sub_22855D1AC();
      sub_22855E22C();
      v27 = v13;
      sub_22855D20C();
      v14 = sub_22855E27C();

      v15 = -1 << *(a2 + 32);
      v16 = v14 & ~v15;
      if (((*(v9 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        break;
      }

      v17 = ~v15;
      while (1)
      {
        v18 = sub_22855D1AC();
        v20 = v19;
        if (v18 == sub_22855D1AC() && v20 == v21)
        {

          goto LABEL_24;
        }

        v23 = sub_22855E15C();

        if (v23)
        {
          break;
        }

        v16 = (v16 + 1) & v17;
        if (((*(v9 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
        {
          goto LABEL_27;
        }
      }

LABEL_24:
      v8 = v24;
      result = v25;
      v7 = v26;
      if (!v26)
      {
        goto LABEL_8;
      }
    }

LABEL_27:

    return 0;
  }

LABEL_8:
  v11 = v3;
  while (1)
  {
    v3 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v12 = *(v4 + 8 * v3);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v26 = (v12 - 1) & v12;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_228441950(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v28 = result + 56;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  v29 = v8;
  v30 = result;
  if (v7)
  {
LABEL_7:
    v10 = __clz(__rbit64(v7));
    v31 = (v7 - 1) & v7;
    goto LABEL_13;
  }

LABEL_8:
  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v12 = *(v28 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v31 = (v12 - 1) & v12;
LABEL_13:
      v13 = *(*(v3 + 48) + (v10 | (v4 << 6)));
      sub_22855E22C();
      ContentKind.rawValue.getter();
      sub_22855D20C();

      v14 = sub_22855E27C();
      v15 = -1 << *(a2 + 32);
      v16 = v14 & ~v15;
      if (((*(v9 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        return 0;
      }

      v17 = ~v15;
      while (2)
      {
        v18 = 0xE500000000000000;
        v19 = 0x7472656C61;
        switch(*(*(a2 + 48) + v16))
        {
          case 1:
            break;
          case 2:
            v18 = 0xE300000000000000;
            v19 = 7368801;
            break;
          case 3:
            v18 = 0xE700000000000000;
            v19 = 0x656C6369747261;
            break;
          case 4:
            v18 = 0xE800000000000000;
            v19 = 0x79726F6765746163;
            break;
          case 5:
            v18 = 0xE400000000000000;
            v19 = 1635017060;
            break;
          case 6:
            v19 = 0x67676F4C61746164;
            v18 = 0xEB00000000676E69;
            break;
          case 7:
            v19 = 0x6D6D755361746164;
            v18 = 0xEB00000000797261;
            break;
          case 8:
            v19 = 0xD000000000000010;
            v18 = 0x800000022856CF30;
            break;
          case 9:
            v19 = 0xD000000000000010;
            v18 = 0x800000022856CF50;
            break;
          case 0xA:
            v19 = 0xD000000000000010;
            v18 = 0x800000022856CF70;
            break;
          case 0xB:
            v19 = 0x5365727574616566;
            v18 = 0xED00007375746174;
            break;
          case 0xC:
            v18 = 0xE900000000000074;
            v19 = 0x6867696C68676968;
            break;
          case 0xD:
            v19 = 0x6867696C68676968;
            v18 = 0xEF68637261655374;
            break;
          case 0xE:
            v19 = 0x697461676976616ELL;
            v18 = 0xEA00000000006E6FLL;
            break;
          case 0xF:
            v18 = 0xE600000000000000;
            v19 = 0x617461446F6ELL;
            break;
          case 0x10:
            v19 = 0x726568746FLL;
            break;
          case 0x11:
            v19 = 0x6D726F6674616C70;
            v18 = 0xED00007472656C41;
            break;
          case 0x12:
            v19 = 0x6F69746F6D6F7270;
            v18 = 0xE90000000000006ELL;
            break;
          case 0x13:
            v18 = 0xE600000000000000;
            v19 = 0x74706D6F7270;
            break;
          case 0x14:
            v18 = 0xE700000000000000;
            v19 = 0x656C69666F7270;
            break;
          case 0x15:
            v19 = 0x6E6F6974616C6572;
            v18 = 0xEC00000070696873;
            break;
          case 0x16:
            v18 = 0xE800000000000000;
            v19 = 0x73676E6974746573;
            break;
          case 0x17:
            v18 = 0xE600000000000000;
            v19 = 0x657461647075;
            break;
          case 0x18:
            v18 = 0xE700000000000000;
            v19 = 0x72616265646973;
            break;
          default:
            v19 = 0xD000000000000011;
            v18 = 0x800000022856CEE0;
            break;
        }

        v20 = 0xE500000000000000;
        v21 = 0x7472656C61;
        switch(v13)
        {
          case 1:
            goto LABEL_86;
          case 2:
            v20 = 0xE300000000000000;
            if (v19 != 7368801)
            {
              goto LABEL_88;
            }

            goto LABEL_87;
          case 3:
            v20 = 0xE700000000000000;
            v24 = 0x6C6369747261;
            goto LABEL_66;
          case 4:
            v20 = 0xE800000000000000;
            if (v19 != 0x79726F6765746163)
            {
              goto LABEL_88;
            }

            goto LABEL_87;
          case 5:
            v20 = 0xE400000000000000;
            if (v19 != 1635017060)
            {
              goto LABEL_88;
            }

            goto LABEL_87;
          case 6:
            v25 = 0x67676F4C61746164;
            v26 = 6778473;
            goto LABEL_75;
          case 7:
            v25 = 0x6D6D755361746164;
            v26 = 7959137;
LABEL_75:
            v20 = v26 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
            if (v19 != v25)
            {
              goto LABEL_88;
            }

            goto LABEL_87;
          case 8:
            v20 = 0x800000022856CF30;
            if (v19 != 0xD000000000000010)
            {
              goto LABEL_88;
            }

            goto LABEL_87;
          case 9:
            v20 = 0x800000022856CF50;
            if (v19 != 0xD000000000000010)
            {
              goto LABEL_88;
            }

            goto LABEL_87;
          case 10:
            v20 = 0x800000022856CF70;
            if (v19 != 0xD000000000000010)
            {
              goto LABEL_88;
            }

            goto LABEL_87;
          case 11:
            v22 = 0x5365727574616566;
            v23 = 0x7375746174;
            goto LABEL_63;
          case 12:
            v20 = 0xE900000000000074;
            if (v19 != 0x6867696C68676968)
            {
              goto LABEL_88;
            }

            goto LABEL_87;
          case 13:
            v20 = 0xEF68637261655374;
            if (v19 != 0x6867696C68676968)
            {
              goto LABEL_88;
            }

            goto LABEL_87;
          case 14:
            v20 = 0xEA00000000006E6FLL;
            if (v19 != 0x697461676976616ELL)
            {
              goto LABEL_88;
            }

            goto LABEL_87;
          case 15:
            v20 = 0xE600000000000000;
            if (v19 != 0x617461446F6ELL)
            {
              goto LABEL_88;
            }

            goto LABEL_87;
          case 16:
            if (v19 != 0x726568746FLL)
            {
              goto LABEL_88;
            }

            goto LABEL_87;
          case 17:
            v22 = 0x6D726F6674616C70;
            v23 = 0x7472656C41;
LABEL_63:
            v20 = v23 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
            if (v19 != v22)
            {
              goto LABEL_88;
            }

            goto LABEL_87;
          case 18:
            v20 = 0xE90000000000006ELL;
            if (v19 != 0x6F69746F6D6F7270)
            {
              goto LABEL_88;
            }

            goto LABEL_87;
          case 19:
            v20 = 0xE600000000000000;
            v21 = 0x74706D6F7270;
LABEL_86:
            if (v19 == v21)
            {
              goto LABEL_87;
            }

            goto LABEL_88;
          case 20:
            v20 = 0xE700000000000000;
            v24 = 0x6C69666F7270;
LABEL_66:
            if (v19 != (v24 & 0xFFFFFFFFFFFFLL | 0x65000000000000))
            {
              goto LABEL_88;
            }

            goto LABEL_87;
          case 21:
            v20 = 0xEC00000070696873;
            if (v19 != 0x6E6F6974616C6572)
            {
              goto LABEL_88;
            }

            goto LABEL_87;
          case 22:
            v20 = 0xE800000000000000;
            if (v19 != 0x73676E6974746573)
            {
              goto LABEL_88;
            }

            goto LABEL_87;
          case 23:
            v20 = 0xE600000000000000;
            if (v19 != 0x657461647075)
            {
              goto LABEL_88;
            }

            goto LABEL_87;
          case 24:
            v20 = 0xE700000000000000;
            if (v19 != 0x72616265646973)
            {
              goto LABEL_88;
            }

            goto LABEL_87;
          default:
            v20 = 0x800000022856CEE0;
            if (v19 != 0xD000000000000011)
            {
              goto LABEL_88;
            }

LABEL_87:
            if (v18 != v20)
            {
LABEL_88:
              v27 = sub_22855E15C();

              if (v27)
              {
                goto LABEL_94;
              }

              v16 = (v16 + 1) & v17;
              if (((*(v9 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
              {
                return 0;
              }

              continue;
            }

LABEL_94:
            v8 = v29;
            v3 = v30;
            v7 = v31;
            if (!v31)
            {
              goto LABEL_8;
            }

            goto LABEL_7;
        }
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22844211C(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  v22 = result;
  if (!v7)
  {
    goto LABEL_8;
  }

  do
  {
    v10 = __clz(__rbit64(v7));
    v23 = (v7 - 1) & v7;
LABEL_13:
    v13 = *(*(result + 48) + 8 * (v10 | (v3 << 6)));
    sub_22855E22C();
    if (v13)
    {
      MEMORY[0x22AABA2B0](1);
      v14 = v13;
      sub_22855D9BC();
    }

    else
    {
      MEMORY[0x22AABA2B0](0);
    }

    v15 = sub_22855E27C();
    v16 = -1 << *(a2 + 32);
    v17 = v15 & ~v16;
    if (((*(v9 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
    {
LABEL_27:

      return 0;
    }

    v18 = ~v16;
    while (1)
    {
      v19 = *(*(a2 + 48) + 8 * v17);
      if (v19)
      {
        break;
      }

      if (!v13)
      {
        goto LABEL_24;
      }

LABEL_19:
      v17 = (v17 + 1) & v18;
      if (((*(v9 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
      {
        goto LABEL_27;
      }
    }

    if (!v13)
    {
      goto LABEL_19;
    }

    sub_2283EF310(0, &qword_280DEEB30, 0x277D82BB8);
    v20 = v19;
    v21 = sub_22855D9AC();

    if ((v21 & 1) == 0)
    {
      goto LABEL_19;
    }

LABEL_24:
    result = v22;
    v7 = v23;
  }

  while (v23);
LABEL_8:
  v11 = v3;
  while (1)
  {
    v3 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v12 = *(v4 + 8 * v3);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v23 = (v12 - 1) & v12;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_22844230C(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  v22 = result;
  while (v7)
  {
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_15:
    v13 = (*(result + 48) + 16 * (v10 | (v3 << 6)));
    v15 = *v13;
    v14 = v13[1];
    sub_22855E22C();

    sub_22855D20C();
    v16 = sub_22855E27C();
    v17 = -1 << *(a2 + 32);
    v18 = v16 & ~v17;
    if (((*(v9 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
    {
LABEL_23:

      return 0;
    }

    v19 = ~v17;
    while (1)
    {
      v20 = (*(a2 + 48) + 16 * v18);
      v21 = *v20 == v15 && v20[1] == v14;
      if (v21 || (sub_22855E15C() & 1) != 0)
      {
        break;
      }

      v18 = (v18 + 1) & v19;
      if (((*(v9 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
      {
        goto LABEL_23;
      }
    }

    result = v22;
  }

  v11 = v3;
  while (1)
  {
    v3 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v12 = *(v4 + 8 * v3);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v7 = (v12 - 1) & v12;
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2284424D8(uint64_t a1, uint64_t a2, unint64_t *a3, void *a4)
{
  v5 = a2 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) == 0)
  {
    if (v5)
    {
      v8 = a2 & 0xFFFFFFFFFFFFFF8;
      if (a2 < 0)
      {
        v8 = a2;
      }

      sub_228449DF8(v8, a1);
    }

    else if (a1 == a2)
    {
LABEL_36:
      v9 = 1;
    }

    else
    {
      if (*(a1 + 16) == *(a2 + 16))
      {
        v10 = a1 + 56;
        v11 = 1 << *(a1 + 32);
        if (v11 < 64)
        {
          v12 = ~(-1 << v11);
        }

        else
        {
          v12 = -1;
        }

        v13 = v12 & *(a1 + 56);
        v7 = sub_2283EF310(0, a3, a4);
        v14 = 0;
        v15 = (v11 + 63) >> 6;
        v16 = a2 + 56;
        v29 = v15;
        v17 = a1;
        if (!v13)
        {
LABEL_24:
          v19 = v14;
          while (1)
          {
            v14 = v19 + 1;
            if (__OFADD__(v19, 1))
            {
              break;
            }

            if (v14 >= v15)
            {
              goto LABEL_36;
            }

            v20 = *(v10 + 8 * v14);
            ++v19;
            if (v20)
            {
              v18 = __clz(__rbit64(v20));
              v30 = (v20 - 1) & v20;
              goto LABEL_29;
            }
          }

          __break(1u);
          return MEMORY[0x2821FCF40](v7, v6);
        }

        while (1)
        {
          v18 = __clz(__rbit64(v13));
          v30 = (v13 - 1) & v13;
LABEL_29:
          v21 = *(*(v17 + 48) + 8 * (v18 | (v14 << 6)));
          v22 = sub_22855D99C();
          v23 = -1 << *(a2 + 32);
          v24 = v22 & ~v23;
          if (((*(v16 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v24) & 1) == 0)
          {
            break;
          }

          v25 = ~v23;
          while (1)
          {
            v26 = *(*(a2 + 48) + 8 * v24);
            v27 = sub_22855D9AC();

            if (v27)
            {
              break;
            }

            v24 = (v24 + 1) & v25;
            if (((*(v16 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v24) & 1) == 0)
            {
              goto LABEL_37;
            }
          }

          v15 = v29;
          v13 = v30;
          v17 = a1;
          if (!v30)
          {
            goto LABEL_24;
          }
        }

LABEL_37:
      }

      v9 = 0;
    }

    return v9 & 1;
  }

  if (a1 < 0)
  {
    v6 = a1;
  }

  else
  {
    v6 = a1 & 0xFFFFFFFFFFFFFF8;
  }

  if (!v5)
  {
    sub_228449DF8(v6, a2);
    return v9 & 1;
  }

  if (a2 < 0)
  {
    v7 = a2;
  }

  else
  {
    v7 = a2 & 0xFFFFFFFFFFFFFF8;
  }

  return MEMORY[0x2821FCF40](v7, v6);
}

uint64_t sub_228442728(uint64_t a1, uint64_t a2)
{
  v4 = sub_22855C33C();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v44 = &v33 - v10;
  result = MEMORY[0x28223BE20](v9);
  v13 = &v33 - v12;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v14 = 0;
  v15 = *(a1 + 56);
  v33 = a1 + 56;
  v16 = 1 << *(a1 + 32);
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  else
  {
    v17 = -1;
  }

  v18 = v17 & v15;
  v19 = (v16 + 63) >> 6;
  v40 = v5 + 32;
  v42 = a2 + 56;
  v43 = v5 + 16;
  v20 = (v5 + 8);
  v34 = v19;
  v35 = &v33 - v12;
  v36 = v5;
  v37 = a1;
  if (v18)
  {
    while (1)
    {
      v21 = __clz(__rbit64(v18));
      v39 = (v18 - 1) & v18;
LABEL_13:
      v24 = *(a1 + 48);
      v41 = *(v5 + 72);
      v25 = *(v5 + 16);
      v25(v13, v24 + v41 * (v21 | (v14 << 6)), v4);
      (*(v5 + 32))(v44, v13, v4);
      sub_22840A300(&qword_280DEE360, 255, MEMORY[0x277D10C20], MEMORY[0x277D10C28]);
      v26 = sub_22855D13C();
      v27 = -1 << *(a2 + 32);
      v28 = v26 & ~v27;
      if (((*(v42 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
      {
        break;
      }

      v38 = v20 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v29 = a2;
      v30 = ~v27;
      while (1)
      {
        v25(v8, *(v29 + 48) + v28 * v41, v4);
        sub_22840A300(&qword_27D83F580, 255, MEMORY[0x277D10C20], MEMORY[0x277D10C30]);
        v31 = sub_22855D16C();
        v32 = *v20;
        (*v20)(v8, v4);
        if (v31)
        {
          break;
        }

        v28 = (v28 + 1) & v30;
        if (((*(v42 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
        {
          v32(v44, v4);
          return 0;
        }
      }

      result = (v32)(v44, v4);
      a2 = v29;
      v5 = v36;
      a1 = v37;
      v19 = v34;
      v13 = v35;
      v18 = v39;
      if (!v39)
      {
        goto LABEL_8;
      }
    }

    (*v20)(v44, v4);
    return 0;
  }

LABEL_8:
  v22 = v14;
  while (1)
  {
    v14 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v14 >= v19)
    {
      return 1;
    }

    v23 = *(v33 + 8 * v14);
    ++v22;
    if (v23)
    {
      v21 = __clz(__rbit64(v23));
      v39 = (v23 - 1) & v23;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t DatabaseChangesQueryInputSignal.Configuration.hashValue.getter()
{
  v1 = *v0;
  sub_22855E22C();
  sub_22844A09C(v3, v1, &qword_280DE94F8, 0x277CCD8D8, &qword_280DE94F0);
  return sub_22855E27C();
}

uint64_t sub_228442BBC()
{
  v1 = *v0;
  sub_22855E22C();
  sub_22844A09C(v3, v1, &qword_280DE94F8, 0x277CCD8D8, &qword_280DE94F0);
  return sub_22855E27C();
}

uint64_t sub_228442C50(uint64_t a1)
{
  v2 = *v1;
  sub_22855E22C();
  sub_22844A09C(v4, v2, &qword_280DE94F8, 0x277CCD8D8, &qword_280DE94F0);
  return sub_22855E27C();
}

uint64_t DatabaseChangesQueryInputSignal.beginObservation(from:configurations:)(uint64_t a1, uint64_t a2)
{
  v5 = *a1;
  v4 = *(a1 + 8);
  v6 = v2[10];
  v7 = v2[11];
  __swift_project_boxed_opaque_existential_1(v2 + 7, v6);
  v8 = (*(v7 + 16))(v6, v7);
  v9 = MEMORY[0x277D84FA0];
  v17 = MEMORY[0x277D84FA0];
  v10 = *(a2 + 16);
  if (v10)
  {
    v11 = a2 + 32;
    do
    {
      v11 += 8;

      sub_228442ED4(v12, &qword_280DE94F8, 0x277CCD8D8, &qword_280DE94F0, sub_2284834EC);
      --v10;
    }

    while (v10);
    v9 = v17;
  }

  if (v4)
  {
    v13 = v2[12];
    MEMORY[0x28223BE20](v8);
    v14 = v5;

    os_unfair_lock_lock(v13 + 8);
    sub_22844AFE0(&v13[4]);
    os_unfair_lock_unlock(v13 + 8);
    sub_22844AFFC(v5, v4);
  }

  v15 = sub_2284439F4(v9, sub_2284630BC, sub_228462688);

  sub_22843E2B0(v15);
}

Swift::Void __swiftcall DatabaseChangesQueryInputSignal.stopObservation()()
{
  v1 = v0[10];
  v2 = v0[11];
  __swift_project_boxed_opaque_existential_1(v0 + 7, v1);
  (*(v2 + 16))(v1, v2);
}

void sub_228442ED4(uint64_t a1, unint64_t *a2, void *a3, unint64_t *a4, void (*a5)(id *))
{
  v6 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    sub_22855DAFC();
    sub_2283EF310(0, a2, a3);
    sub_22844B928(a4, a2, a3);
    sub_22855D56C();
    v6 = v24[1];
    v10 = v24[2];
    v11 = v24[3];
    v12 = v24[4];
    v13 = v24[5];
  }

  else
  {
    v12 = 0;
    v14 = -1 << *(a1 + 32);
    v10 = (a1 + 56);
    v11 = ~v14;
    v15 = -v14;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v13 = (v16 & *(a1 + 56));
  }

  v17 = (v11 + 64) >> 6;
  if (v6 < 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v18 = v12;
    v19 = v13;
    v20 = v12;
    if (!v13)
    {
      break;
    }

LABEL_12:
    v21 = (v19 - 1) & v19;
    if (!*(*(v6 + 48) + ((v20 << 9) | (8 * __clz(__rbit64(v19))))))
    {
LABEL_18:
      sub_228407958(v6);
      return;
    }

    while (1)
    {
      a5(v24);

      v12 = v20;
      v13 = v21;
      if ((v6 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      if (sub_22855DB8C())
      {
        sub_2283EF310(0, a2, a3);
        swift_dynamicCast();
        v20 = v12;
        v21 = v13;
        if (v24[0])
        {
          continue;
        }
      }

      goto LABEL_18;
    }
  }

  while (1)
  {
    v20 = (v18 + 1);
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v20 >= v17)
    {
      goto LABEL_18;
    }

    v19 = v10[v20];
    ++v18;
    if (v19)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}

uint64_t sub_2284430C8(uint64_t result)
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
      result = sub_228483930(&v10, *(*(v1 + 48) + (v9 | (v8 << 6))));
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

void sub_2284431A4(uint64_t a1)
{
  v2 = 0;
  v3 = a1 + 56;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 56);
  v7 = (v4 + 63) >> 6;
  if (v6)
  {
    while (1)
    {
      v8 = v2;
LABEL_9:
      v9 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v10 = *(*(a1 + 48) + ((v8 << 9) | (8 * v9)));
      v11 = v10;
      sub_228484978(&v12, v10);

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
      return;
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

uint64_t sub_22844329C(uint64_t result)
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
      result = sub_22848513C(v10, *(*(v1 + 48) + ((v8 << 9) | (8 * v9))));
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

void sub_22844337C(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = *a1;
  v7 = a2;

  *a1 = a2;
  *(a1 + 8) = a3;
}

uint64_t DatabaseChangesQueryInputSignal.deinit()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0((v0 + 56));

  return v0;
}

uint64_t DatabaseChangesQueryInputSignal.__deallocating_deinit()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0((v0 + 56));

  return swift_deallocClassInstance();
}

uint64_t sub_2284434C4()
{
  v1 = *(*v0 + 80);
  v2 = *(*v0 + 88);
  __swift_project_boxed_opaque_existential_1((*v0 + 56), v1);
  return (*(v2 + 16))(v1, v2);
}

uint64_t sub_22844351C(uint64_t a1, uint64_t a2)
{
  v3 = sub_22840A300(&qword_280DEAA08, a2, type metadata accessor for DatabaseChangesQueryInputSignal, &protocol conformance descriptor for DatabaseChangesQueryInputSignal);

  return MEMORY[0x28216B080](a1, v3);
}

uint64_t sub_228443588(uint64_t a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  v6 = a4;
  v9 = *(a1 + 32);
  if (a4)
  {
    sub_2283EF310(0, &qword_280DE94F8, 0x277CCD8D8);
    sub_2283EF310(0, &qword_280DE93E8, 0x277CCD8E0);
    sub_22844B928(&qword_280DE94F0, &qword_280DE94F8, 0x277CCD8D8);
    v6 = sub_22855D0EC();
  }

  v10 = a2;
  v11 = a3;
  v12 = a5;
  v9(v10, a3, v6, a5);
}

uint64_t sub_2284436A8@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v5 != 2)
    {
      if (result)
      {
        v6 = 1;
        goto LABEL_30;
      }

LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v7 = result;
    v8 = *(a2 + 16);
    v9 = *(a2 + 24);
    v10 = sub_22855BEBC();
    if (v10)
    {
      v11 = sub_22855BEDC();
      if (__OFSUB__(v8, v11))
      {
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v10 += v8 - v11;
    }

    v12 = __OFSUB__(v9, v8);
    v13 = v9 - v8;
    if (!v12)
    {
      result = sub_22855BECC();
      if (result >= v13)
      {
        v14 = v13;
      }

      else
      {
        v14 = result;
      }

      if (!v7)
      {
        goto LABEL_37;
      }

      if (!v10)
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      result = v7;
      if (v10 == v7)
      {
LABEL_27:
        v6 = 1;
        goto LABEL_30;
      }

LABEL_16:
      result = memcmp(result, v10, v14);
      v6 = result == 0;
      goto LABEL_30;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!v5)
  {
    __s2 = a2;
    v20 = a3;
    v21 = BYTE2(a3);
    v22 = BYTE3(a3);
    v23 = BYTE4(a3);
    v24 = BYTE5(a3);
    if (result)
    {
      result = memcmp(result, &__s2, BYTE6(a3));
      v6 = result == 0;
LABEL_30:
      *a4 = v6;
      return result;
    }

    __break(1u);
    goto LABEL_36;
  }

  v15 = a2;
  v16 = (a2 >> 32) - a2;
  if (a2 >> 32 < a2)
  {
    __break(1u);
    goto LABEL_32;
  }

  v17 = result;
  v10 = sub_22855BEBC();
  if (!v10)
  {
    goto LABEL_21;
  }

  v18 = sub_22855BEDC();
  if (__OFSUB__(v15, v18))
  {
LABEL_34:
    __break(1u);
  }

  v10 += v15 - v18;
LABEL_21:
  result = sub_22855BECC();
  if (result >= v16)
  {
    v14 = v16;
  }

  else
  {
    v14 = result;
  }

  if (!v17)
  {
    goto LABEL_38;
  }

  if (v10)
  {
    result = v17;
    if (v10 == v17)
    {
      goto LABEL_27;
    }

    goto LABEL_16;
  }

LABEL_40:
  __break(1u);
  return result;
}