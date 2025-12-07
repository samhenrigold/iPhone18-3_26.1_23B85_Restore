void *sub_252933374(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v16) == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

char *sub_252933550(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_252934724(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_2529335BC(v5);
  *a1 = v2;
  return result;
}

char *sub_2529335BC(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_252E37D74();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x277D84F90];
      }

      else
      {
        v5 = sub_252E372B4();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_25293384C(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_2529336B4(0, v2, 1, a1);
  }

  return result;
}

char *sub_2529336B4(char *result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v31 = a2;
  if (a3 != a2)
  {
    v4 = a3;
    v5 = *a4;
    v6 = *a4 + 504 * a3 - 504;
    v7 = &result[-a3 + 1];
LABEL_5:
    v8 = v7;
    for (i = v6; ; i -= 504)
    {
      memcpy(__dst, (i + 504), sizeof(__dst));
      memcpy(v18, i, sizeof(v18));
      v27 = *&__dst[432];
      v28 = *&__dst[448];
      v29 = *&__dst[464];
      v30 = *&__dst[480];
      v25 = *&__dst[400];
      v26 = *&__dst[416];
      v10 = *(i + 448);
      v21 = *(i + 432);
      v22 = v10;
      v23 = *(i + 464);
      v24 = *(i + 480);
      v11 = *(i + 416);
      v19 = *(i + 400);
      v20 = v11;
      sub_2529353AC(__dst, __src);
      sub_2529353AC(v18, __src);
      sub_252C5D020();
      v13 = v12;
      sub_252C5D020();
      v15 = v14;
      sub_252935408(v18);
      result = sub_252935408(__dst);
      if (v15 >= v13)
      {
LABEL_4:
        ++v4;
        v6 += 504;
        --v7;
        if (v4 == v31)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v5)
      {
        break;
      }

      memcpy(__src, (i + 504), sizeof(__src));
      memcpy((i + 504), i, 0x1F8uLL);
      result = memcpy(i, __src, 0x1F8uLL);
      if (!v8)
      {
        goto LABEL_4;
      }

      ++v8;
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_25293384C(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v100 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_92:
    v6 = v5;
    v5 = *v100;
    if (!*v100)
    {
      goto LABEL_131;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_125:
      result = sub_252934564(v8);
      v8 = result;
    }

    v144 = v8;
    v92 = *(v8 + 2);
    if (v92 >= 2)
    {
      while (*a3)
      {
        v93 = *&v8[16 * v92];
        v94 = *&v8[16 * v92 + 24];
        sub_2529340BC((*a3 + 504 * v93), (*a3 + 504 * *&v8[16 * v92 + 16]), (*a3 + 504 * v94), v5);
        if (v6)
        {
        }

        if (v94 < v93)
        {
          goto LABEL_118;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_252934564(v8);
        }

        if (v92 - 2 >= *(v8 + 2))
        {
          goto LABEL_119;
        }

        v95 = &v8[16 * v92];
        *v95 = v93;
        *(v95 + 1) = v94;
        v144 = v8;
        result = sub_2529344D8(v92 - 1);
        v8 = v144;
        v92 = *(v144 + 2);
        if (v92 <= 1)
        {
        }
      }

      goto LABEL_129;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  while (1)
  {
    v9 = v7;
    v10 = v7 + 1;
    if (v7 + 1 >= v6)
    {
      ++v7;
    }

    else
    {
      v11 = v7;
      v12 = *a3;
      memcpy(__dst, (*a3 + 504 * v10), sizeof(__dst));
      v13 = v12 + 504 * v7;
      memcpy(v107, v13, sizeof(v107));
      v140 = *&__dst[432];
      v141 = *&__dst[448];
      v142 = *&__dst[464];
      v143 = *&__dst[480];
      v138 = *&__dst[400];
      v139 = *&__dst[416];
      v14 = *(v13 + 448);
      v134 = *(v13 + 432);
      v135 = v14;
      v136 = *(v13 + 464);
      v137 = *(v13 + 480);
      v15 = *(v13 + 416);
      v132 = *(v13 + 400);
      v133 = v15;
      sub_2529353AC(__dst, __src);
      sub_2529353AC(v107, __src);
      sub_252C5D020();
      v17 = v16;
      sub_252C5D020();
      v19 = v18;
      sub_252935408(v107);
      result = sub_252935408(__dst);
      v20 = v7 + 2;
      if (v7 + 2 < v6)
      {
        v21 = v12 + 504 * v7 + 504;
        v9 = v7;
        while (1)
        {
          v7 = v20;
          memcpy(v104, (v21 + 504), sizeof(v104));
          memcpy(__src, v21, sizeof(__src));
          v128 = *&v104[432];
          v129 = *&v104[448];
          v130 = *&v104[464];
          v131 = *&v104[480];
          v126 = *&v104[400];
          v127 = *&v104[416];
          v22 = *(v21 + 448);
          v122 = *(v21 + 432);
          v123 = v22;
          v124 = *(v21 + 464);
          v125 = *(v21 + 480);
          v23 = *(v21 + 416);
          v120 = *(v21 + 400);
          v121 = v23;
          sub_2529353AC(v104, v103);
          sub_2529353AC(__src, v103);
          sub_252C5D020();
          v25 = v24;
          sub_252C5D020();
          v27 = v26;
          sub_252935408(__src);
          result = sub_252935408(v104);
          if (v19 < v17 == v27 >= v25)
          {
            break;
          }

          v20 = v7 + 1;
          v21 += 504;
          if (v6 == v7 + 1)
          {
            v10 = v7;
            v7 = v6;
            if (v19 < v17)
            {
              goto LABEL_15;
            }

            goto LABEL_24;
          }
        }

        v10 = v7 - 1;
        if (v19 >= v17)
        {
          goto LABEL_24;
        }

LABEL_15:
        if (v7 < v9)
        {
          goto LABEL_122;
        }

        if (v9 <= v10)
        {
          v97 = v5;
          v28 = 504 * v7 - 504;
          v29 = 504 * v9;
          v30 = v9;
          v31 = v7;
          v6 = v30;
          do
          {
            if (v30 != --v31)
            {
              v32 = *a3;
              if (!*a3)
              {
                goto LABEL_128;
              }

              memcpy(__src, (v32 + v29), sizeof(__src));
              memmove((v32 + v29), (v32 + v28), 0x1F8uLL);
              result = memcpy((v32 + v28), __src, 0x1F8uLL);
            }

            ++v30;
            v28 -= 504;
            v29 += 504;
          }

          while (v30 < v31);
          v5 = v97;
          v9 = v6;
        }

        goto LABEL_24;
      }

      v7 += 2;
      v9 = v11;
      if (v19 < v17)
      {
        goto LABEL_15;
      }
    }

LABEL_24:
    v33 = a3[1];
    if (v7 < v33)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_121;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_123;
        }

        if (v9 + a4 >= v33)
        {
          v34 = a3[1];
        }

        else
        {
          v34 = v9 + a4;
        }

        if (v34 < v9)
        {
LABEL_124:
          __break(1u);
          goto LABEL_125;
        }

        if (v7 != v34)
        {
          break;
        }
      }
    }

LABEL_41:
    if (v7 < v9)
    {
      goto LABEL_120;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_252934578(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v47 = *(v8 + 2);
    v46 = *(v8 + 3);
    v48 = v47 + 1;
    if (v47 >= v46 >> 1)
    {
      result = sub_252934578((v46 > 1), v47 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v48;
    v49 = &v8[16 * v47];
    *(v49 + 4) = v9;
    *(v49 + 5) = v7;
    v50 = *v100;
    if (!*v100)
    {
      goto LABEL_130;
    }

    if (v47)
    {
      while (1)
      {
        v6 = v48 - 1;
        if (v48 >= 4)
        {
          break;
        }

        if (v48 == 3)
        {
          v51 = *(v8 + 4);
          v52 = *(v8 + 5);
          v61 = __OFSUB__(v52, v51);
          v53 = v52 - v51;
          v54 = v61;
LABEL_61:
          if (v54)
          {
            goto LABEL_109;
          }

          v67 = &v8[16 * v48];
          v69 = *v67;
          v68 = *(v67 + 1);
          v70 = __OFSUB__(v68, v69);
          v71 = v68 - v69;
          v72 = v70;
          if (v70)
          {
            goto LABEL_112;
          }

          v73 = &v8[16 * v6 + 32];
          v75 = *v73;
          v74 = *(v73 + 1);
          v61 = __OFSUB__(v74, v75);
          v76 = v74 - v75;
          if (v61)
          {
            goto LABEL_115;
          }

          if (__OFADD__(v71, v76))
          {
            goto LABEL_116;
          }

          if (v71 + v76 >= v53)
          {
            if (v53 < v76)
            {
              v6 = v48 - 2;
            }

            goto LABEL_82;
          }

          goto LABEL_75;
        }

        v77 = &v8[16 * v48];
        v79 = *v77;
        v78 = *(v77 + 1);
        v61 = __OFSUB__(v78, v79);
        v71 = v78 - v79;
        v72 = v61;
LABEL_75:
        if (v72)
        {
          goto LABEL_111;
        }

        v80 = &v8[16 * v6];
        v82 = *(v80 + 4);
        v81 = *(v80 + 5);
        v61 = __OFSUB__(v81, v82);
        v83 = v81 - v82;
        if (v61)
        {
          goto LABEL_114;
        }

        if (v83 < v71)
        {
          goto LABEL_3;
        }

LABEL_82:
        v88 = v6 - 1;
        if (v6 - 1 >= v48)
        {
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
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
          goto LABEL_124;
        }

        if (!*a3)
        {
          goto LABEL_127;
        }

        v89 = *&v8[16 * v88 + 32];
        v90 = *&v8[16 * v6 + 40];
        sub_2529340BC((*a3 + 504 * v89), (*a3 + 504 * *&v8[16 * v6 + 32]), (*a3 + 504 * v90), v50);
        if (v5)
        {
        }

        if (v90 < v89)
        {
          goto LABEL_105;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_252934564(v8);
        }

        if (v88 >= *(v8 + 2))
        {
          goto LABEL_106;
        }

        v91 = &v8[16 * v88];
        *(v91 + 4) = v89;
        *(v91 + 5) = v90;
        v144 = v8;
        result = sub_2529344D8(v6);
        v8 = v144;
        v48 = *(v144 + 2);
        if (v48 <= 1)
        {
          goto LABEL_3;
        }
      }

      v55 = &v8[16 * v48 + 32];
      v56 = *(v55 - 64);
      v57 = *(v55 - 56);
      v61 = __OFSUB__(v57, v56);
      v58 = v57 - v56;
      if (v61)
      {
        goto LABEL_107;
      }

      v60 = *(v55 - 48);
      v59 = *(v55 - 40);
      v61 = __OFSUB__(v59, v60);
      v53 = v59 - v60;
      v54 = v61;
      if (v61)
      {
        goto LABEL_108;
      }

      v62 = &v8[16 * v48];
      v64 = *v62;
      v63 = *(v62 + 1);
      v61 = __OFSUB__(v63, v64);
      v65 = v63 - v64;
      if (v61)
      {
        goto LABEL_110;
      }

      v61 = __OFADD__(v53, v65);
      v66 = v53 + v65;
      if (v61)
      {
        goto LABEL_113;
      }

      if (v66 >= v58)
      {
        v84 = &v8[16 * v6 + 32];
        v86 = *v84;
        v85 = *(v84 + 1);
        v61 = __OFSUB__(v85, v86);
        v87 = v85 - v86;
        if (v61)
        {
          goto LABEL_117;
        }

        if (v53 < v87)
        {
          v6 = v48 - 2;
        }

        goto LABEL_82;
      }

      goto LABEL_61;
    }

LABEL_3:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_92;
    }
  }

  v98 = v5;
  v35 = *a3;
  v36 = v9;
  v37 = *a3 + 504 * v7 - 504;
  v96 = v36;
  v38 = v36 - v7 + 1;
  v101 = v34;
LABEL_35:
  v6 = v38;
  for (i = v37; ; i -= 504)
  {
    memcpy(__dst, (i + 504), sizeof(__dst));
    memcpy(v107, i, sizeof(v107));
    v116 = *&__dst[432];
    v117 = *&__dst[448];
    v118 = *&__dst[464];
    v119 = *&__dst[480];
    v114 = *&__dst[400];
    v115 = *&__dst[416];
    v40 = *(i + 448);
    v110 = *(i + 432);
    v111 = v40;
    v112 = *(i + 464);
    v113 = *(i + 480);
    v41 = *(i + 416);
    v108 = *(i + 400);
    v109 = v41;
    sub_2529353AC(__dst, __src);
    sub_2529353AC(v107, __src);
    sub_252C5D020();
    v43 = v42;
    sub_252C5D020();
    v45 = v44;
    sub_252935408(v107);
    result = sub_252935408(__dst);
    if (v45 >= v43)
    {
LABEL_34:
      ++v7;
      v37 += 504;
      --v38;
      if (v7 != v101)
      {
        goto LABEL_35;
      }

      v7 = v101;
      v9 = v96;
      v5 = v98;
      goto LABEL_41;
    }

    if (!v35)
    {
      break;
    }

    memcpy(__src, (i + 504), sizeof(__src));
    memcpy((i + 504), i, 0x1F8uLL);
    memcpy(i, __src, 0x1F8uLL);
    if (!v6)
    {
      goto LABEL_34;
    }

    ++v6;
  }

  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
LABEL_129:
  __break(1u);
LABEL_130:
  __break(1u);
LABEL_131:
  __break(1u);
  return result;
}

uint64_t sub_2529340BC(char *__src, char *a2, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2 - __src;
  v7 = (a2 - __src) / 504;
  v8 = a3 - a2;
  v9 = (a3 - a2) / 504;
  if (v7 < v9)
  {
    v10 = a2;
    v11 = __src;
    if (a4 != __src || &__src[504 * v7] <= a4)
    {
      memmove(a4, __src, 504 * v7);
    }

    v12 = &v4[504 * v7];
    if (v6 >= 504 && v10 < v5)
    {
      while (1)
      {
        memcpy(__dst, v10, sizeof(__dst));
        memcpy(v40, v4, sizeof(v40));
        v49 = *&__dst[432];
        v50 = *&__dst[448];
        v51 = *&__dst[464];
        v52 = *&__dst[480];
        v47 = *&__dst[400];
        v48 = *&__dst[416];
        v13 = *(v4 + 28);
        v43 = *(v4 + 27);
        v44 = v13;
        v45 = *(v4 + 29);
        v46 = *(v4 + 60);
        v14 = *(v4 + 26);
        v41 = *(v4 + 25);
        v42 = v14;
        sub_2529353AC(__dst, v38);
        sub_2529353AC(v40, v38);
        sub_252C5D020();
        v16 = v15;
        sub_252C5D020();
        v18 = v17;
        sub_252935408(v40);
        sub_252935408(__dst);
        if (v18 >= v16)
        {
          break;
        }

        v19 = v10;
        v20 = v11 == v10;
        v10 += 504;
        if (!v20)
        {
          goto LABEL_12;
        }

LABEL_13:
        v11 += 504;
        if (v4 >= v12 || v10 >= v5)
        {
          goto LABEL_15;
        }
      }

      v19 = v4;
      v20 = v11 == v4;
      v4 += 504;
      if (v20)
      {
        goto LABEL_13;
      }

LABEL_12:
      memmove(v11, v19, 0x1F8uLL);
      goto LABEL_13;
    }

    goto LABEL_15;
  }

  if (a4 != a2 || &a2[504 * v9] <= a4)
  {
    v22 = a2;
    memmove(a4, a2, 504 * v9);
    a2 = v22;
  }

  v21 = a2;
  v12 = &v4[504 * v9];
  if (v8 >= 504 && a2 > __src)
  {
    do
    {
      v23 = v21 - 504;
      v36 = v21;
      v24 = v21 - 104;
      v5 -= 504;
      v25 = v12;
      while (1)
      {
        v12 = v25;
        v26 = v5 + 504;
        v25 -= 504;
        memcpy(__dst, v25, sizeof(__dst));
        v11 = v23;
        memcpy(v40, v23, sizeof(v40));
        v49 = *&__dst[432];
        v50 = *&__dst[448];
        v51 = *&__dst[464];
        v52 = *&__dst[480];
        v47 = *&__dst[400];
        v48 = *&__dst[416];
        v27 = *(v24 + 3);
        v43 = *(v24 + 2);
        v44 = v27;
        v45 = *(v24 + 4);
        v46 = *(v24 + 10);
        v28 = *(v24 + 1);
        v41 = *v24;
        v42 = v28;
        sub_2529353AC(__dst, v38);
        sub_2529353AC(v40, v38);
        sub_252C5D020();
        v30 = v29;
        sub_252C5D020();
        v32 = v31;
        sub_252935408(v40);
        sub_252935408(__dst);
        if (v32 < v30)
        {
          break;
        }

        if (v26 < v12 || v5 >= v12 || v26 != v12)
        {
          memmove(v5, v25, 0x1F8uLL);
        }

        v5 -= 504;
        if (v25 <= v4)
        {
          v12 = v25;
          v21 = v36;
          goto LABEL_38;
        }
      }

      if (v26 < v36 || v5 >= v36)
      {
        memmove(v5, v23, 0x1F8uLL);
        v33 = __src;
      }

      else
      {
        v33 = __src;
        if (v26 != v36)
        {
          memmove(v5, v23, 0x1F8uLL);
        }
      }

      if (v12 <= v4)
      {
        break;
      }

      v21 = v23;
    }

    while (v23 > v33);
LABEL_15:
    v21 = v11;
  }

LABEL_38:
  v34 = (v12 - v4) / 504;
  if (v21 != v4 || v21 >= &v4[504 * v34])
  {
    memmove(v21, v4, 504 * v34);
  }

  return 1;
}

uint64_t sub_2529344D8(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_252934564(v3);
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

char *sub_252934578(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540188, &unk_252E3BFB0);
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

char *sub_252934818(char *a1)
{
  v2 = qword_27F53F520;

  if (v2 != -1)
  {
    goto LABEL_125;
  }

  while (1)
  {
    v3 = sub_252E36AD4();
    __swift_project_value_buffer(v3, qword_27F544E08);
    __dst[0] = 0;
    __dst[1] = 0xE000000000000000;
    sub_252E379F4();

    __dst[0] = 0xD00000000000001ELL;
    __dst[1] = 0x8000000252E690C0;
    v5 = (a1 + 16);
    v56[0] = *(a1 + 2);
    v4 = v56[0];
    v6 = sub_252E37D94();
    MEMORY[0x2530AD570](v6);

    sub_252CC3D90(__dst[0], __dst[1], 0xD00000000000009CLL, 0x8000000252E690E0);

    if (v4)
    {
      v7 = 0;
      v8 = 536;
      while (1)
      {
        memcpy(__dst, &a1[v8 - 504], sizeof(__dst));
        if (LOBYTE(__dst[39]) == 2 || (v9 = 0.25, (__dst[39] & 1) == 0))
        {
          v9 = 0.3;
        }

        v10 = *&a1[v8 - 56];
        v66 = *&a1[v8 - 72];
        v67 = v10;
        v68 = *&a1[v8 - 40];
        v69 = *&a1[v8 - 24];
        v11 = *&a1[v8 - 88];
        v64 = *&a1[v8 - 104];
        v65 = v11;
        if (*(__dst[50] + 2) || *(__dst[51] + 2) || *(__dst[52] + 2) || *(__dst[53] + 2) || *(__dst[54] + 2) || *(__dst[55] + 2) || *(__dst[56] + 2) || *(__dst[57] + 2) || *(__dst[58] + 2) || *(__dst[59] + 2) || *(__dst[60] + 2))
        {
          sub_2529353AC(__dst, v56);
          sub_252C5D020();
          v13 = v12;
          sub_252935408(__dst);
          if (v13 < v9)
          {
            break;
          }
        }

        ++v7;
        v8 += 504;
        if (v4 == v7)
        {
          goto LABEL_25;
        }
      }

      v4 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        goto LABEL_130;
      }

      v15 = *v5;
      if (v4 != *v5)
      {
        while (v4 < v15)
        {
          memcpy(v56, &a1[v8], sizeof(v56));
          if (LOBYTE(v56[39]) == 2 || (v42 = 0.25, (v56[39] & 1) == 0))
          {
            v42 = 0.3;
          }

          v43 = *&a1[v8 + 416];
          v58 = *&a1[v8 + 400];
          v59 = v43;
          v44 = *&a1[v8 + 432];
          v45 = *&a1[v8 + 448];
          v46 = *&a1[v8 + 464];
          v63 = *&a1[v8 + 480];
          v61 = v45;
          v62 = v46;
          v60 = v44;
          if (!*(v56[50] + 16) && !*(v56[51] + 16) && !*(v56[52] + 16) && !*(v56[53] + 16) && !*(v56[54] + 16) && !*(v56[55] + 16) && !*(v56[56] + 16) && !*(v56[57] + 16) && !*(v56[58] + 16) && !*(v56[59] + 16) && !*(v56[60] + 16) || (sub_2529353AC(v56, v55), sub_252C5D020(), v48 = v47, sub_252935408(v56), v48 >= v42))
          {
            if (v4 != v7)
            {
              if ((v7 & 0x8000000000000000) != 0)
              {
                goto LABEL_120;
              }

              v49 = *v5;
              if (v7 >= *v5)
              {
                goto LABEL_121;
              }

              memcpy(__src, &a1[504 * v7 + 32], sizeof(__src));
              if (v4 >= v49)
              {
                goto LABEL_122;
              }

              memcpy(v55, &a1[v8], sizeof(v55));
              sub_2529353AC(__src, v53);
              sub_2529353AC(v55, v53);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                a1 = sub_252D57AC0(a1);
              }

              if (v7 >= *(a1 + 2))
              {
                goto LABEL_123;
              }

              v50 = &a1[504 * v7];
              memcpy(v52, v50 + 32, sizeof(v52));
              memcpy(v50 + 32, v55, 0x1F8uLL);
              sub_252935408(v52);
              if (v4 >= *(a1 + 2))
              {
                goto LABEL_124;
              }

              memcpy(v53, &a1[v8], sizeof(v53));
              memcpy(&a1[v8], __src, 0x1F8uLL);
              sub_252935408(v53);
            }

            ++v7;
          }

          ++v4;
          v5 = (a1 + 16);
          v15 = *(a1 + 2);
          v8 += 504;
          if (v4 == v15)
          {
            goto LABEL_24;
          }
        }

        goto LABEL_119;
      }

LABEL_24:
      v4 = v7;
LABEL_25:
      v14 = *(a1 + 2);
      if (v14 < v4)
      {
        __break(1u);
      }

      else if ((v4 & 0x8000000000000000) == 0)
      {
        goto LABEL_27;
      }

      __break(1u);
LABEL_128:
      __break(1u);
      goto LABEL_129;
    }

    v14 = *v5;
LABEL_27:
    if (__OFADD__(v14, v4 - v14))
    {
      goto LABEL_128;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v55[0] = a1;
    if (!isUniquelyReferenced_nonNull_native || v4 > *(a1 + 3) >> 1)
    {
      if (v14 <= v4)
      {
        v17 = v4;
      }

      else
      {
        v17 = v14;
      }

      a1 = sub_2529F7FB0(isUniquelyReferenced_nonNull_native, v17, 1, a1);
      v55[0] = a1;
    }

    sub_252B7B280(v4, v14, 0);
    v18 = *(a1 + 2);
    if (v18)
    {
      v19 = 0;
      v20 = MEMORY[0x277D84F90];
      do
      {
        v21 = &a1[504 * v19 + 32];
        v22 = v19;
        while (1)
        {
          if (v22 >= *(a1 + 2))
          {
            __break(1u);
            goto LABEL_118;
          }

          memcpy(__dst, v21, sizeof(__dst));
          if (!*(__dst[50] + 2) && !*(__dst[51] + 2) && !*(__dst[52] + 2) && !*(__dst[53] + 2) && !*(__dst[54] + 2) && !*(__dst[55] + 2) && !*(__dst[56] + 2) && !*(__dst[57] + 2) && !*(__dst[58] + 2) && !*(__dst[59] + 2) && !*(__dst[60] + 2))
          {
            break;
          }

          ++v22;
          v21 += 504;
          if (v18 == v22)
          {
            goto LABEL_57;
          }
        }

        sub_2529353AC(__dst, v56);
        v23 = swift_isUniquelyReferenced_nonNull_native();
        v24 = v20;
        __src[0] = v20;
        if ((v23 & 1) == 0)
        {
          sub_2529AA480(0, *(v20 + 16) + 1, 1);
          v24 = __src[0];
        }

        v26 = *(v24 + 16);
        v25 = *(v24 + 24);
        if (v26 >= v25 >> 1)
        {
          sub_2529AA480((v25 > 1), v26 + 1, 1);
          v24 = __src[0];
        }

        v19 = v22 + 1;
        *(v24 + 16) = v26 + 1;
        v20 = v24;
        memcpy((v24 + 504 * v26 + 32), __dst, 0x1F8uLL);
      }

      while (v18 - 1 != v22);
    }

    else
    {
      v20 = MEMORY[0x277D84F90];
    }

LABEL_57:
    __dst[0] = 0;
    __dst[1] = 0xE000000000000000;
    sub_252E379F4();

    __dst[0] = 0xD000000000000014;
    __dst[1] = 0x8000000252E69180;
    v51 = v20;
    v56[0] = *(v20 + 16);
    v27 = sub_252E37D94();
    MEMORY[0x2530AD570](v27);

    sub_252CC3D90(__dst[0], __dst[1], 0xD00000000000009CLL, 0x8000000252E690E0);

    if (!v18)
    {
      break;
    }

    v28 = 0;
    v29 = MEMORY[0x277D84F90];
LABEL_59:
    v30 = &a1[504 * v28 + 32];
    v31 = v28;
    while (v31 < *(a1 + 2))
    {
      memcpy(__dst, v30, sizeof(__dst));
      v28 = v31 + 1;
      if (*(__dst[50] + 2) || *(__dst[51] + 2) || *(__dst[52] + 2) || *(__dst[53] + 2) || *(__dst[54] + 2) || *(__dst[55] + 2) || *(__dst[56] + 2) || *(__dst[57] + 2) || *(__dst[58] + 2) || *(__dst[59] + 2) || *(__dst[60] + 2))
      {
        sub_2529353AC(__dst, v56);
        v32 = swift_isUniquelyReferenced_nonNull_native();
        __src[0] = v29;
        if ((v32 & 1) == 0)
        {
          sub_2529AA480(0, *(v29 + 2) + 1, 1);
          v29 = __src[0];
        }

        v34 = *(v29 + 2);
        v33 = *(v29 + 3);
        if (v34 >= v33 >> 1)
        {
          sub_2529AA480((v33 > 1), v34 + 1, 1);
          v29 = __src[0];
        }

        *(v29 + 2) = v34 + 1;
        memcpy(&v29[504 * v34 + 32], __dst, 0x1F8uLL);
        if (v18 - 1 != v31)
        {
          goto LABEL_59;
        }

        goto LABEL_81;
      }

      v30 += 504;
      ++v31;
      if (v18 == v28)
      {
        goto LABEL_81;
      }
    }

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
    swift_once();
  }

  v29 = MEMORY[0x277D84F90];
LABEL_81:
  __dst[0] = 0;
  __dst[1] = 0xE000000000000000;

  sub_252E379F4();

  __dst[0] = 0xD000000000000012;
  __dst[1] = 0x8000000252E691A0;
  v35 = *(v29 + 2);

  v56[0] = v35;
  v36 = sub_252E37D94();
  MEMORY[0x2530AD570](v36);

  sub_252CC3D90(__dst[0], __dst[1], 0xD00000000000009CLL, 0x8000000252E690E0);

  if (v35 <= 0x14)
  {
    goto LABEL_87;
  }

  __dst[0] = v29;

  sub_252933550(__dst);

  v29 = __dst[0];
  v4 = *(__dst[0] + 2);
  if (v4 >= 0x14)
  {
    v37 = swift_isUniquelyReferenced_nonNull_native();
    v56[0] = v29;
    if (!v37 || *(v29 + 3) <= 0x27uLL)
    {
      v29 = sub_2529F7FB0(v37, v4, 1, v29);
      v56[0] = v29;
    }

    sub_252B7B280(0x14uLL, v4, 0);
    __dst[0] = 0;
    __dst[1] = 0xE000000000000000;
    sub_252E379F4();

    __dst[0] = 0xD000000000000026;
    __dst[1] = 0x8000000252E691E0;
    __src[0] = *(v29 + 2);
    v38 = sub_252E37D94();
    MEMORY[0x2530AD570](v38);

    sub_252CC3D90(__dst[0], __dst[1], 0xD00000000000009CLL, 0x8000000252E690E0);
LABEL_87:

    __dst[0] = v51;
    sub_25297AA34(v29);
    v39 = __dst[0];
    __dst[0] = 0;
    __dst[1] = 0xE000000000000000;
    sub_252E379F4();

    __dst[0] = 0xD00000000000001ALL;
    __dst[1] = 0x8000000252E691C0;
    __src[0] = *(v39 + 2);
    v40 = sub_252E37D94();
    MEMORY[0x2530AD570](v40);

    sub_252CC3D90(__dst[0], __dst[1], 0xD00000000000009CLL, 0x8000000252E690E0);

    return v39;
  }

LABEL_129:
  __break(1u);
LABEL_130:
  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_252935464()
{
  v0 = sub_252DA0F40(0xE, 5);
  v1 = v0;
  if (!(v0 >> 62))
  {
    result = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_3;
    }

LABEL_14:
    v11 = 6;
LABEL_15:

    return v11;
  }

  result = sub_252E378C4();
  if (!result)
  {
    goto LABEL_14;
  }

LABEL_3:
  if ((v1 & 0xC000000000000001) != 0)
  {
    v3 = MEMORY[0x2530ADF00](0, v1);
    goto LABEL_6;
  }

  if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v3 = *(v1 + 32);
LABEL_6:
    v4 = v3;

    v5 = [v4 userTask];

    if (v5)
    {
      v6 = [v5 value];

      if (v6 && (v7 = [v6 stringValue], v6, v7))
      {
        v8 = sub_252E36F34();
        v5 = v9;

        v10 = v8;
      }

      else
      {
        v10 = 0;
        v5 = 0;
      }
    }

    else
    {
      v10 = 0;
    }

    v11 = sub_252A812C0(v10, v5);
    goto LABEL_15;
  }

  __break(1u);
  return result;
}

uint64_t sub_2529355B8(unint64_t a1)
{
  v1 = a1;
  if (a1 >> 62)
  {
    goto LABEL_30;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_252E378C4())
  {
    v3 = 0;
    v4 = v1 & 0xC000000000000001;
    v5 = v1 & 0xFFFFFFFFFFFFFF8;
    v6 = &off_279711000;
    v28 = v1;
    while (1)
    {
      if (v4)
      {
        v7 = MEMORY[0x2530ADF00](v3, v1);
      }

      else
      {
        if (v3 >= *(v5 + 16))
        {
          goto LABEL_28;
        }

        v7 = *(v1 + 8 * v3 + 32);
      }

      v8 = v7;
      v9 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        break;
      }

      v10 = sub_252DA0F40(0xE, 5);
      if (v10 >> 62)
      {
        v24 = v10;
        v25 = sub_252E378C4();
        v10 = v24;
        if (!v25)
        {
LABEL_4:

          goto LABEL_5;
        }
      }

      else if (!*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_4;
      }

      if ((v10 & 0xC000000000000001) != 0)
      {
        v11 = MEMORY[0x2530ADF00](0);
      }

      else
      {
        if (!*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_29;
        }

        v11 = *(v10 + 32);
      }

      v12 = v11;

      v13 = [v12 v6[214]];

      if (!v13)
      {
        goto LABEL_19;
      }

      v14 = [v13 value];

      if (v14)
      {
        v15 = [v14 stringValue];

        if (v15)
        {
          v16 = i;
          v17 = v5;
          v18 = v4;
          v19 = v6;
          v20 = sub_252E36F34();
          v14 = v21;

          v22 = v20;
          v6 = v19;
          v4 = v18;
          v5 = v17;
          i = v16;
          v1 = v28;
          goto LABEL_21;
        }

LABEL_19:
        v22 = 0;
        v14 = 0;
        goto LABEL_21;
      }

      v22 = 0;
LABEL_21:
      v23 = sub_252A812C0(v22, v14);

      if (v23 != 6)
      {
        v26 = sub_252935464();

        return v26;
      }

LABEL_5:

      ++v3;
      if (v9 == i)
      {
        return 6;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    ;
  }

  return 6;
}

uint64_t sub_252935818()
{
  v0 = sub_252E36AB4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27F53F640 != -1)
  {
    swift_once();
  }

  v4 = qword_27F544FC8;
  sub_252E36A94();
  sub_252E375D4();
  v5 = sub_252E36A84();
  sub_252935A30(v5, &v9);
  if (*(&v10 + 1))
  {
    v14[2] = v11;
    v14[3] = v12;
    v14[4] = v13;
    v14[0] = v9;
    v14[1] = v10;
    v6 = sub_2529371CC(v14);
    sub_252937BBC(v14);
  }

  else
  {
    sub_25293847C(&v9, &qword_27F540308, &qword_252E3C178);
    v6 = 0;
  }

  v7 = sub_252E375C4();
  sub_252E36A74(v7, &dword_252917000, v4, "queryForLearnedEntity", 21, 2, v3, " enableTelemetry=YES ", 21, 2, MEMORY[0x277D84F90]);
  (*(v1 + 8))(v3, v0);
  return v6 & 1;
}

double sub_252935A30@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(a1);
  sub_252938414((v3 + 416), &v16, &qword_27F540318, &qword_252E3DCD0);

  if (v17)
  {
    v4 = sub_252927BEC(&v16, v18);
    v5 = *(sub_252B680FC(v4) + OBJC_IVAR____TtC22HomeAutomationInternal14SessionContext_currentLearnedEntitySuggestionQuery);

    if (v5)
    {
      v7 = *(sub_252B680FC(v6) + 72);

      sub_252E35F84();
      sub_252E35F74();
      sub_252E35F34();

      v8 = sub_252E36804();
      v10 = v9;

      sub_252929E74(v18, a2);
      v11 = type metadata accessor for HomeStore(0);
      v12 = static HomeStore.shared.getter(v11);
      __swift_destroy_boxed_opaque_existential_1(v18);
      *(a2 + 40) = v7;
      *(a2 + 48) = v12;
      *(a2 + 56) = v5;
      *(a2 + 64) = v8;
      *(a2 + 72) = v10;
      return result;
    }

    if (qword_27F53F548 != -1)
    {
      swift_once();
    }

    v15 = sub_252E36AD4();
    __swift_project_value_buffer(v15, qword_27F544E80);
    sub_252CC3D90(0xD000000000000041, 0x8000000252E69410, 0xD00000000000007ALL, 0x8000000252E692E0);
    __swift_destroy_boxed_opaque_existential_1(v18);
  }

  else
  {
    sub_25293847C(&v16, &qword_27F540318, &qword_252E3DCD0);
    if (qword_27F53F548 != -1)
    {
      swift_once();
    }

    v14 = sub_252E36AD4();
    __swift_project_value_buffer(v14, qword_27F544E80);
    sub_252CC3D90(0xD000000000000039, 0x8000000252E693D0, 0xD00000000000007ALL, 0x8000000252E692E0);
  }

  result = 0.0;
  *(a2 + 48) = 0u;
  *(a2 + 64) = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *a2 = 0u;
  return result;
}

uint64_t sub_252935C90()
{
  v7 = sub_252E37564();
  v0 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v2 = v6 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_252E37534();
  MEMORY[0x28223BE20](v3);
  v4 = sub_252E36D04();
  MEMORY[0x28223BE20](v4 - 8);
  v6[1] = sub_252936DF8();
  sub_252E36CC4();
  v8 = MEMORY[0x277D84F90];
  sub_252936E44(&qword_2814B0220, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540300, &qword_252E3C170);
  sub_252936E8C(&qword_2814B0278, &qword_27F540300, &qword_252E3C170);
  sub_252E37824();
  (*(v0 + 104))(v2, *MEMORY[0x277D85260], v7);
  result = sub_252E37594();
  qword_27F575320 = result;
  return result;
}

dispatch_group_t sub_252935EE0()
{
  result = dispatch_group_create();
  qword_27F575328 = result;
  return result;
}

uint64_t sub_252935F00()
{
  sub_252E36A34();
  result = sub_252E36A24();
  qword_27F575330 = result;
  return result;
}

uint64_t sub_252935F34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v24 = a1;
  v25 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541F20, &qword_252E3C180);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v22 - v9;
  v11 = sub_252E32E84();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v23 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = &v22 - v15;
  sub_252938414(a3, v10, &unk_27F541F20, &qword_252E3C180);
  v17 = *(v12 + 48);
  if (v17(v10, 1, v11) == 1)
  {
    sub_25293847C(a3, &unk_27F541F20, &qword_252E3C180);

    sub_25293847C(v10, &unk_27F541F20, &qword_252E3C180);
  }

  else
  {
    v22 = *(v12 + 32);
    v22(v16, v10, v11);
    if (v25)
    {
      sub_252E32E14();

      sub_25293847C(a3, &unk_27F541F20, &qword_252E3C180);
      if (v17(v8, 1, v11) != 1)
      {
        v19 = v23;
        v20 = v8;
        v21 = v22;
        v22(v23, v20, v11);
        v21(v3 + OBJC_IVAR____TtC22HomeAutomationInternal35UserFeedbackLearningMetricsCallback_suggestionId, v16, v11);
        v21(v3 + OBJC_IVAR____TtC22HomeAutomationInternal35UserFeedbackLearningMetricsCallback_requestId, v19, v11);
        return v3;
      }

      (*(v12 + 8))(v16, v11);
      sub_25293847C(v8, &unk_27F541F20, &qword_252E3C180);
    }

    else
    {
      sub_25293847C(a3, &unk_27F541F20, &qword_252E3C180);
      (*(v12 + 8))(v16, v11);
    }
  }

  type metadata accessor for UserFeedbackLearningMetricsCallback(0);
  swift_deallocPartialClassInstance();
  return 0;
}

uint64_t sub_252936298(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v3;
  v35 = v3;
  v28 = v6;
  v7 = sub_252E36CA4();
  v33 = *(v7 - 8);
  v34 = v7;
  MEMORY[0x28223BE20](v7);
  v31 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_252E36D04();
  v30 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v29 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_252E36974();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_252E36984();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27F53F208 != -1)
  {
    swift_once();
  }

  dispatch_group_enter(qword_27F575328);
  if (qword_27F53F200 != -1)
  {
    swift_once();
  }

  v27 = qword_27F575320;
  (*(v15 + 16))(&v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v14);
  (*(v11 + 16))(&v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v10);
  v18 = (*(v15 + 80) + 24) & ~*(v15 + 80);
  v19 = (v16 + *(v11 + 80) + v18) & ~*(v11 + 80);
  v20 = (v12 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = swift_allocObject();
  *(v21 + 16) = v35;
  (*(v15 + 32))(v21 + v18, v17, v14);
  (*(v11 + 32))(v21 + v19, v13, v10);
  *(v21 + v20) = v28;
  aBlock[4] = sub_252936CE4;
  aBlock[5] = v21;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_252AD686C;
  aBlock[3] = &block_descriptor;
  v22 = _Block_copy(aBlock);

  v23 = v29;
  sub_252E36CD4();
  v36 = MEMORY[0x277D84F90];
  sub_252936E44(qword_2814B0298, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5402F8, &qword_252E3E860);
  sub_252936E8C(&qword_2814B0280, &qword_27F5402F8, &qword_252E3E860);
  v24 = v31;
  v25 = v34;
  sub_252E37824();
  MEMORY[0x2530ADA30](0, v23, v24, v22);
  _Block_release(v22);
  (*(v33 + 8))(v24, v25);
  (*(v30 + 8))(v23, v32);
}

uint64_t sub_2529367B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v19 = a2;
  v20 = a3;
  v3 = sub_252E36994();
  v21 = *(v3 - 8);
  v22 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_252E36974();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_252E36984();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27F53F210 != -1)
  {
    swift_once();
  }

  sub_252E36A14();
  (*(v11 + 16))(v13, v19, v10);
  (*(v7 + 16))(v9, v20, v6);
  sub_252E36954();
  swift_allocObject();
  sub_252E36944();
  (*(v7 + 104))(v9, *MEMORY[0x277D5FC50], v6);
  v14 = sub_252E36964();
  (*(v7 + 8))(v9, v6);
  v16 = v21;
  v15 = v22;
  v17 = MEMORY[0x277D5FCA0];
  if ((v14 & 1) == 0)
  {
    v17 = MEMORY[0x277D5FCA8];
  }

  (*(v21 + 104))(v5, *v17, v22);
  sub_252E36A44();
  sub_252E36A54();
  if (qword_27F53F208 != -1)
  {
    swift_once();
  }

  dispatch_group_leave(qword_27F575328);

  return (*(v16 + 8))(v5, v15);
}

uint64_t sub_252936B34()
{
  v1 = OBJC_IVAR____TtC22HomeAutomationInternal35UserFeedbackLearningMetricsCallback_suggestionId;
  v2 = sub_252E32E84();
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtC22HomeAutomationInternal35UserFeedbackLearningMetricsCallback_requestId, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for UserFeedbackLearningMetricsCallback(uint64_t a1)
{
  result = qword_27F5402E8;
  if (!qword_27F5402E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_252936C54(uint64_t a1)
{
  result = sub_252E32E84();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_252936CE4()
{
  v1 = *(sub_252E36984() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(sub_252E36974() - 8);
  v5 = *(v0 + 16);
  v6 = v0 + ((v2 + v3 + *(v4 + 80)) & ~*(v4 + 80));

  return sub_2529367B8(v5, v0 + v2, v6);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_252936DF8()
{
  result = qword_2814B0218;
  if (!qword_2814B0218)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2814B0218);
  }

  return result;
}

uint64_t sub_252936E44(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_252936E8C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    v5 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable(MEMORY[0x277D83970], v5);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_252936EE0(uint64_t a1)
{
  sub_252E34554();
  v1 = swift_dynamicCastClass();
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v3 = v1;
    *&__src[408] = MEMORY[0x277D84F90];
    *&__src[416] = MEMORY[0x277D84F90];
    *&__src[424] = MEMORY[0x277D84F90];
    *&__src[432] = MEMORY[0x277D84F90];
    *&__src[440] = MEMORY[0x277D84F90];
    *&__src[448] = MEMORY[0x277D84F90];
    *&__src[456] = MEMORY[0x277D84F90];
    *&__src[464] = MEMORY[0x277D84F90];
    *&__src[472] = MEMORY[0x277D84F90];
    *&__src[496] = 0;
    *&__src[8] = 771;
    *&__src[16] = 0;
    __src[10] = 1;
    *&__src[24] = 770;
    __src[26] = 4;
    *&__src[32] = MEMORY[0x277D84F90];
    __src[40] = 4;
    *&__src[48] = MEMORY[0x277D84F90];
    *&__src[56] = MEMORY[0x277D84F90];
    __src[64] = 4;
    *&__src[72] = MEMORY[0x277D84F90];
    *&__src[80] = MEMORY[0x277D84F90];
    *&__src[96] = MEMORY[0x277D84F90];
    *&__src[88] = MEMORY[0x277D84F90];
    *&__src[104] = MEMORY[0x277D84F90];
    *&__src[112] = MEMORY[0x277D84F90];
    *&__src[120] = MEMORY[0x277D84F90];
    *&__src[128] = MEMORY[0x277D84F90];
    *&__src[136] = MEMORY[0x277D84F90];
    *&__src[144] = MEMORY[0x277D84F90];
    *&__src[152] = MEMORY[0x277D84F90];
    *&__src[160] = MEMORY[0x277D84F90];
    *&__src[168] = MEMORY[0x277D84F90];
    *&__src[176] = MEMORY[0x277D84F90];
    *&__src[184] = MEMORY[0x277D84F90];
    *&__src[192] = MEMORY[0x277D84F90];
    *&__src[200] = MEMORY[0x277D84F90];
    *&__src[208] = 521;
    *&__src[216] = MEMORY[0x277D84F90];
    *&__src[224] = MEMORY[0x277D84F90];
    __src[232] = 1;
    *&__src[248] = 0;
    *&__src[240] = 0;
    __src[312] = 2;
    *&__src[256] = MEMORY[0x277D84F90];
    __src[289] = 1;
    *&__src[336] = MEMORY[0x277D84F90];
    *&__src[344] = MEMORY[0x277D84F90];
    *&__src[352] = MEMORY[0x277D84F90];
    *&__src[360] = MEMORY[0x277D84F90];
    *&__src[328] = MEMORY[0x277D84F90];
    *&__src[320] = 0;
    *&__src[296] = 0;
    *&__src[304] = 0;
    __src[384] = 22;
    *&__src[385] = 0;
    *__src = MEMORY[0x277D84F90];
    *&__src[400] = MEMORY[0x277D84F90];
    *&__src[392] = MEMORY[0x277D84F90];
    *&__src[376] = MEMORY[0x277D84F90];
    *&__src[368] = MEMORY[0x277D84F90];
    v9 = MEMORY[0x277D84F90];
    v8[4] = *&__src[464];
    v8[3] = *&__src[448];
    v8[2] = *&__src[432];
    v8[0] = *&__src[400];
    v8[1] = *&__src[416];

    sub_252937BEC(v8);
    *&__src[400] = v2;
    *&__src[408] = v2;
    *&__src[416] = v2;
    *&__src[424] = v2;
    *&__src[432] = v2;
    *&__src[440] = v2;
    *&__src[448] = v2;
    *&__src[456] = v2;
    *&__src[464] = v2;
    *&__src[472] = v2;
    *&__src[480] = v2;
    *&__src[488] = MEMORY[0x277D84FA0];
    __src[389] = 0;
    memset(&__src[264], 0, 25);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544B80, &unk_252E3C190);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_252E3C130;
    *(v4 + 32) = v3;

    sub_252CDF97C(v4, 1);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    memcpy(__dst, __src, sizeof(__dst));
    memcpy(v6, __src, sizeof(v6));
    sub_2529353AC(__dst, v12);
    v2 = sub_252BAC7E4();

    memcpy(v11, v6, sizeof(v11));
    sub_252935408(v11);
    memcpy(v12, __src, sizeof(v12));
    sub_252935408(v12);
  }

  return v2;
}

unint64_t sub_2529371CC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541F20, &qword_252E3C180);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v60 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540310, &qword_252E3C188);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v8 = &v60 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v60 - v9;
  v11 = sub_252E36A04();
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v60 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  if (*(a1 + 40))
  {
    v17 = 0;
    return v17 & 1;
  }

  v66 = &v60 - v15;
  v67 = v16;
  v64 = v4;
  v18 = *(a1 + 64);
  v19 = *(a1 + 72);
  __swift_project_boxed_opaque_existential_1(a1, *(a1 + 24));
  v62 = v19;
  v63 = v18;
  v20 = v67;
  sub_252E369C4();
  v21 = *(v20 + 48);
  if (v21(v8, 1, v11) == 1)
  {
    sub_25293847C(v8, &qword_27F540310, &qword_252E3C188);
    if (qword_27F53F548 != -1)
    {
      swift_once();
    }

    v22 = sub_252E36AD4();
    __swift_project_value_buffer(v22, qword_27F544E80);
    sub_252CC3D90(0xD000000000000022, 0x8000000252E692B0, 0xD00000000000007ALL, 0x8000000252E692E0);
    (*(v20 + 56))(v10, 1, 1, v11);
LABEL_15:
    sub_25293847C(v10, &qword_27F540310, &qword_252E3C188);
    v17 = 0;
    return v17 & 1;
  }

  v61 = v21;
  v23 = *(v20 + 32);
  v65 = v11;
  v24 = v23;
  (v23)(v14, v8);
  sub_252E369F4();
  sub_252E34554();
  v25 = swift_dynamicCastClass();

  if (v25)
  {
    if (qword_27F53F548 != -1)
    {
      swift_once();
    }

    v26 = sub_252E36AD4();
    v60 = __swift_project_value_buffer(v26, qword_27F544E80);
    v68 = 0;
    v69 = 0xE000000000000000;
    sub_252E379F4();
    MEMORY[0x2530AD570](0xD000000000000010, 0x8000000252E693B0);
    v27 = v65;
    sub_252E37AE4();
    sub_252CC3D90(v68, v69, 0xD00000000000007ALL, 0x8000000252E692E0);

    v24(v10, v14, v27);
    v28 = 0;
    v29 = v67;
  }

  else
  {
    if (qword_27F53F548 != -1)
    {
      swift_once();
    }

    v30 = sub_252E36AD4();
    __swift_project_value_buffer(v30, qword_27F544E80);
    sub_252CC3D90(0xD00000000000002DLL, 0x8000000252E69360, 0xD00000000000007ALL, 0x8000000252E692E0);
    v29 = v67;
    v27 = v65;
    (*(v67 + 8))(v14, v65);
    v28 = 1;
  }

  (*(v29 + 56))(v10, v28, 1, v27);
  if (v61(v10, 1, v27) == 1)
  {
    goto LABEL_15;
  }

  v31 = v66;
  v24(v66, v10, v27);
  v32 = sub_252E369F4();
  v33 = sub_252936EE0(v32);

  result = HomeStore.accessories(matching:supporting:)(v33, 0);
  if (v35)
  {
    sub_252929F10(result, 1);

    v61 = MEMORY[0x277D84F90];
LABEL_36:
    v39 = v65;
LABEL_37:
    if (qword_27F53F548 != -1)
    {
      swift_once();
    }

    v52 = sub_252E36AD4();
    __swift_project_value_buffer(v52, qword_27F544E80);
    v68 = 0;
    v69 = 0xE000000000000000;
    sub_252E379F4();

    v68 = 0xD00000000000001DLL;
    v69 = 0x8000000252E69390;
    v53 = type metadata accessor for HomeFilter();
    v54 = MEMORY[0x2530AD730](v33, v53);
    v56 = v55;

    MEMORY[0x2530AD570](v54, v56);

    sub_252CC3D90(v68, v69, 0xD00000000000007ALL, 0x8000000252E692E0);

    v57 = v62;

    v58 = v64;
    sub_252E369D4();
    v59 = sub_252E32E84();
    (*(*(v59 - 8) + 56))(v58, 0, 1, v59);
    type metadata accessor for UserFeedbackLearningMetricsCallback(0);
    swift_allocObject();
    sub_252935F34(v63, v57, v58);
    v17 = sub_252E369E4();
    (*(v67 + 8))(v31, v39);
    return v17 & 1;
  }

  v36 = result & 0xFFFFFFFFFFFFFF8;
  if (!(result >> 62))
  {
    v37 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    v61 = result;
    if (v37)
    {
      goto LABEL_20;
    }

LABEL_35:

    goto LABEL_36;
  }

  v50 = result;
  v51 = sub_252E378C4();
  result = v50;
  v61 = v50;
  if (!v51)
  {
    goto LABEL_35;
  }

LABEL_20:
  if ((result & 0xC000000000000001) != 0)
  {
    v38 = MEMORY[0x2530ADF00](0, result);
  }

  else
  {
    if (!*(v36 + 16))
    {
      __break(1u);
      goto LABEL_45;
    }

    v38 = *(result + 32);
  }

  v39 = v65;
  if (!(v33 >> 62))
  {
    v40 = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v40)
    {
      goto LABEL_25;
    }

LABEL_43:

    goto LABEL_37;
  }

  v40 = sub_252E378C4();
  if (!v40)
  {
    goto LABEL_43;
  }

LABEL_25:
  v68 = MEMORY[0x277D84F90];
  result = sub_252E37AB4();
  if ((v40 & 0x8000000000000000) == 0)
  {
    v41 = 0;
    do
    {
      if ((v33 & 0xC000000000000001) != 0)
      {
        v42 = MEMORY[0x2530ADF00](v41, v33);
      }

      else
      {
        v42 = *(v33 + 8 * v41 + 32);
      }

      v43 = v42;
      if (![v42 deviceType])
      {
        type metadata accessor for HomeFilter.Builder();
        v44 = swift_allocObject();
        *(v44 + 16) = 0;
        *(v44 + 24) = 0;
        *(v44 + 32) = 0;
        *(v44 + 40) = 7;
        *(v44 + 48) = 0u;
        *(v44 + 64) = 0u;
        *(v44 + 80) = 0u;
        *(v44 + 96) = 0u;
        *(v44 + 112) = 0u;
        *(v44 + 128) = 0u;
        *(v44 + 144) = 0u;
        *(v44 + 160) = 0u;
        *(v44 + 175) = 0;
        v45 = sub_252B72040(v43);

        v47 = (*(*v38 + 256))(v46);
        v48 = (*(*v45 + 624))(v47);

        (*(*v48 + 760))(v49);
      }

      ++v41;
      sub_252E37A94();
      sub_252E37AC4();
      sub_252E37AD4();
      sub_252E37AA4();
    }

    while (v40 != v41);

    v39 = v65;
    v31 = v66;
    goto LABEL_37;
  }

LABEL_45:
  __break(1u);
  return result;
}

uint64_t sub_252937C40(uint64_t a1)
{
  v2 = sub_252E34354();
  v43 = *(v2 - 8);
  v44 = v2;
  MEMORY[0x28223BE20](v2);
  v40 = &v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540320, &qword_252E3C1A0);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v41 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v42 = &v40 - v7;
  v8 = sub_252E34284();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_252E341A4();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_252E34164();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v40 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v17 + 16))(v19, a1, v16);
  v20 = (*(v17 + 88))(v19, v16);
  if (v20 != *MEMORY[0x277D5C160])
  {
    *(sub_252B680FC(v20) + OBJC_IVAR____TtC22HomeAutomationInternal14SessionContext_currentLearnedEntitySuggestionQuery) = 0;

    return (*(v17 + 8))(v19, v16);
  }

  (*(v17 + 96))(v19, v16);
  (*(v13 + 32))(v15, v19, v12);
  sub_252E34184();
  v21 = sub_252E34254();
  (*(v9 + 8))(v11, v8);
  if (*(v21 + 16))
  {
    v23 = v42;
    v22 = v43;
    v24 = v44;
    (*(v43 + 16))(v42, v21 + ((*(v43 + 80) + 32) & ~*(v43 + 80)), v44);
    v25 = 0;
  }

  else
  {
    v25 = 1;
    v22 = v43;
    v24 = v44;
    v23 = v42;
  }

  (*(v22 + 56))(v23, v25, 1, v24);
  v27 = v41;
  sub_252938414(v23, v41, &qword_27F540320, &qword_252E3C1A0);
  if ((*(v22 + 48))(v27, 1, v24) == 1)
  {
    goto LABEL_23;
  }

  v28 = v40;
  (*(v22 + 32))(v40, v27, v24);
  v29 = sub_252B08B50(v28);
  if (!(v29 >> 62))
  {
    if (*((v29 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_9;
    }

    goto LABEL_22;
  }

  v34 = v29;
  v35 = sub_252E378C4();
  v29 = v34;
  if (!v35)
  {
LABEL_22:

    (*(v22 + 8))(v28, v24);
LABEL_23:
    sub_25293847C(v23, &qword_27F540320, &qword_252E3C1A0);
    return (*(v13 + 8))(v15, v12);
  }

LABEL_9:
  if ((v29 & 0xC000000000000001) != 0)
  {
    MEMORY[0x2530ADF00](0);
  }

  else
  {
    if (!*((v29 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_27;
    }
  }

  (*(v22 + 8))(v28, v24);
  sub_25293847C(v23, &qword_27F540320, &qword_252E3C1A0);
  v30 = sub_252B05484(&unk_2864A3448);
  v28 = sub_252B05604(v30);
  if (v30 >> 62)
  {
    v22 = sub_252E378C4();
  }

  else
  {
    v22 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v22 != 1)
  {
    goto LABEL_28;
  }

  if (!(v28 >> 62))
  {
    result = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_17;
    }

LABEL_28:

    if (qword_27F53F548 != -1)
    {
      swift_once();
    }

    v36 = sub_252E36AD4();
    __swift_project_value_buffer(v36, qword_27F544E80);
    v46 = 0;
    v47 = 0xE000000000000000;
    sub_252E379F4();
    MEMORY[0x2530AD570](0xD000000000000041, 0x8000000252E69460);
    v45 = v22;
    v37 = sub_252E37D94();
    MEMORY[0x2530AD570](v37);

    MEMORY[0x2530AD570](41, 0xE100000000000000);
    sub_252CC3D90(v46, v47, 0xD00000000000007ALL, 0x8000000252E692E0);

    v39 = sub_252B680FC(v38);

    (*(v13 + 8))(v15, v12);
    *(v39 + OBJC_IVAR____TtC22HomeAutomationInternal14SessionContext_currentLearnedEntitySuggestionQuery) = 0;
  }

LABEL_27:
  result = sub_252E378C4();
  if (!result)
  {
    goto LABEL_28;
  }

LABEL_17:
  if ((v28 & 0xC000000000000001) != 0)
  {
    v31 = MEMORY[0x2530ADF00](0, v28);
    goto LABEL_20;
  }

  if (*((v28 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v31 = *(v28 + 32);

LABEL_20:

    v33 = sub_252B680FC(v32);

    (*(v13 + 8))(v15, v12);
    *(v33 + OBJC_IVAR____TtC22HomeAutomationInternal14SessionContext_currentLearnedEntitySuggestionQuery) = v31;
  }

  __break(1u);
  return result;
}

uint64_t sub_252938414(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_25293847C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

__n128 __swift_memcpy80_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_2529384F8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_252938540(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2529385A4(uint64_t a1)
{
  v2 = swift_allocObject();
  *(v2 + 16) = 0;
  v3 = *(a1 + 16);

  *(v2 + 24) = v3;
  return v2;
}

uint64_t sub_252938600()
{

  return swift_deallocClassInstance();
}

uint64_t sub_25293865C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v21 - v7;
  if (a1 == 0xD000000000000013 && 0x8000000252E69550 == a2 || (sub_252E37DB4() & 1) != 0)
  {
    result = sub_252D0EEAC();
    if (result)
    {
LABEL_5:
      v10 = result;
      result = type metadata accessor for HomeAutomationAirQualityEntityResponses();
      *(a3 + 24) = result;
      *a3 = v10;
      return result;
    }

    goto LABEL_15;
  }

  if (a1 == 0xD000000000000012 && 0x8000000252E69570 == a2 || (sub_252E37DB4() & 1) != 0)
  {
    result = sub_252D0F5B8();
    if (result)
    {
      goto LABEL_5;
    }

    goto LABEL_15;
  }

  if (a1 == 0x35324D506E696DLL && a2 == 0xE700000000000000 || (sub_252E37DB4() & 1) != 0)
  {
    result = sub_252D0FCC4();
    if (v11)
    {
LABEL_15:
      *a3 = 0u;
      *(a3 + 16) = 0u;
      return result;
    }

    *(a3 + 24) = MEMORY[0x277D839F8];
    *a3 = result;
    return result;
  }

  if (a1 == 0x6F6F476C6C417369 && a2 == 0xE900000000000064 || (sub_252E37DB4() & 1) != 0)
  {
    result = sub_252D0FEDC();
LABEL_21:
    *(a3 + 24) = MEMORY[0x277D839B0];
    *a3 = result & 1;
    return result;
  }

  if (a1 == 0x6461426C6C417369 && a2 == 0xE800000000000000 || (sub_252E37DB4() & 1) != 0)
  {
    result = sub_252D0FFA0();
    goto LABEL_21;
  }

  if (a1 == 0xD000000000000016 && 0x8000000252E69590 == a2 || (sub_252E37DB4() & 1) != 0)
  {
    v12 = *(sub_252D103A8() + 24);
    if (v12 >> 62)
    {
      v13 = sub_252E378C4();
    }

    else
    {
      v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v14 = MEMORY[0x277D839B0];
    v15 = v13 == 1;
LABEL_32:
    *(a3 + 24) = v14;
    *a3 = v15;
    return result;
  }

  if (a1 == 0xD00000000000001ELL && 0x8000000252E695B0 == a2 || (sub_252E37DB4() & 1) != 0)
  {
    v16 = *(sub_252D103A8() + 24);
    if (v16 >> 62)
    {
      v17 = sub_252E378C4();
    }

    else
    {
      v17 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v14 = MEMORY[0x277D839B0];
    v15 = v17 > 1;
    goto LABEL_32;
  }

  if (a1 == 0x6152657571696E75 && a2 == 0xEC000000676E6974 || (sub_252E37DB4() & 1) != 0)
  {
    sub_252D10064(v8);
    v18 = sub_252E36324();
    v19 = *(v18 - 8);
    if ((*(v19 + 48))(v8, 1, v18) == 1)
    {
      result = sub_252938BBC(v8);
      goto LABEL_15;
    }

    *(a3 + 24) = v18;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(a3);
    return (*(v19 + 32))(boxed_opaque_existential_0, v8, v18);
  }

  else
  {

    return sub_252C86824(a1, a2, a3);
  }
}

uint64_t sub_252938ABC(void *a1)
{
  swift_allocObject();
  sub_252929E74(a1, v4);
  v2 = sub_252C87A18(v4);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v2;
}

uint64_t sub_252938B34()
{

  return swift_deallocClassInstance();
}

uint64_t sub_252938BBC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
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

uint64_t sub_252938C88(uint64_t result, uint64_t a2)
{
  if (*(result + 16) < *(a2 + 16))
  {
    return 0;
  }

  v3 = result;
  v4 = 0;
  v5 = a2 + 56;
  v6 = 1 << *(a2 + 32);
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  else
  {
    v7 = -1;
  }

  v8 = v7 & *(a2 + 56);
  v9 = (v6 + 63) >> 6;
  for (i = result + 56; v8; v4 = v11)
  {
    v11 = v4;
LABEL_11:
    if (!*(v3 + 16))
    {
      return 0;
    }

    v12 = *(*(a2 + 48) + ((v11 << 9) | (8 * __clz(__rbit64(v8)))));
    sub_252E37EC4();
    MEMORY[0x2530AE390](v12);
    result = sub_252E37F14();
    v13 = -1 << *(v3 + 32);
    v14 = result & ~v13;
    if (((*(i + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
    {
      return 0;
    }

    v8 &= v8 - 1;
    v15 = ~v13;
    while (*(*(v3 + 48) + 8 * v14) != v12)
    {
      v14 = (v14 + 1) & v15;
      if (((*(i + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        return 0;
      }
    }
  }

  while (1)
  {
    v11 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      break;
    }

    if (v11 >= v9)
    {
      return 1;
    }

    v8 = *(v5 + 8 * v11);
    ++v4;
    if (v8)
    {
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_252938DFC(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) < *(a2 + 16))
  {
    return 0;
  }

  v3 = a2 + 56;
  v4 = 1 << *(a2 + 32);
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & *(a2 + 56);
  v7 = (v4 + 63) >> 6;
  v8 = a1 + 56;

  v10 = 0;
  v23 = v3;
  v22 = v7;
  if (v6)
  {
    while (1)
    {
      v11 = v10;
LABEL_10:
      if (!*(a1 + 16))
      {
        break;
      }

      sub_252E37EC4();
      StateSemantic.rawValue.getter();
      sub_252E37044();

      v12 = sub_252E37F14();
      v13 = -1 << *(a1 + 32);
      v14 = v12 & ~v13;
      if (((*(v8 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        break;
      }

      v6 &= v6 - 1;
      v15 = ~v13;
      while (1)
      {
        v16 = StateSemantic.rawValue.getter();
        v18 = v17;
        if (v16 == StateSemantic.rawValue.getter() && v18 == v19)
        {
          break;
        }

        v21 = sub_252E37DB4();

        if (v21)
        {
          goto LABEL_21;
        }

        v14 = (v14 + 1) & v15;
        if (((*(v8 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
        {
          goto LABEL_23;
        }
      }

LABEL_21:
      v10 = v11;
      v3 = v23;
      v7 = v22;
      if (!v6)
      {
        goto LABEL_7;
      }
    }

LABEL_23:

    return 0;
  }

LABEL_7:
  while (1)
  {
    v11 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v11 >= v7)
    {

      return 1;
    }

    v6 = *(v3 + 8 * v11);
    ++v10;
    if (v6)
    {
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_252939028(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) >= *(a2 + 16))
  {
    v2 = a2;
    v4 = a2 + 56;
    v5 = 1 << *(a2 + 32);
    if (v5 < 64)
    {
      v6 = ~(-1 << v5);
    }

    else
    {
      v6 = -1;
    }

    v7 = v6 & *(a2 + 56);
    v8 = (v5 + 63) >> 6;
    v36 = a1 + 56;

    v10 = 0;
    v34 = v4;
    v35 = v2;
    v33 = v8;
    if (v7)
    {
      goto LABEL_6;
    }

    do
    {
LABEL_7:
      v11 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        __break(1u);
        return result;
      }

      if (v11 >= v8)
      {

        return 1;
      }

      v7 = *(v4 + 8 * v11);
      ++v10;
    }

    while (!v7);
    while (*(a1 + 16))
    {
      v12 = *(*(v2 + 48) + (__clz(__rbit64(v7)) | (v11 << 6)));
      sub_252E37EC4();
      AccessoryTypeSemantic.rawValue.getter();
      sub_252E37044();

      v13 = sub_252E37F14();
      v14 = -1 << *(a1 + 32);
      v15 = v13 & ~v14;
      if (((*(v36 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
      {
        break;
      }

      v7 &= v7 - 1;
      v16 = ~v14;
      while (2)
      {
        v17 = 0xE900000000000062;
        v18 = 0x6C7562746867696CLL;
        switch(*(*(a1 + 48) + v15))
        {
          case 1:
            v17 = 0xE800000000000000;
            v18 = 0x6B636F4C726F6F64;
            break;
          case 2:
            v17 = 0xE800000000000000;
            v18 = 0x6172656D61437069;
            break;
          case 3:
            v18 = 0x65526172656D6163;
            v17 = 0xEF676E6964726F63;
            break;
          case 4:
            v18 = 0xD000000000000011;
            v17 = 0x8000000252E65490;
            break;
          case 5:
            v18 = 0xD000000000000010;
            v17 = 0x8000000252E654B0;
            break;
          case 6:
            v17 = 0xE600000000000000;
            v18 = 0x74656C74756FLL;
            break;
          case 7:
            v17 = 0xE600000000000000;
            v18 = 0x686374697773;
            break;
          case 8:
            v18 = 0x74736F6D72656874;
            v17 = 0xEA00000000007461;
            break;
          case 9:
            v18 = 0x616C6C69746E6576;
            v17 = 0xEF6E61466E6F6974;
            break;
          case 0xA:
            v17 = 0xE600000000000000;
            v18 = 0x73646E696C62;
            break;
          case 0xB:
            v18 = 0x53636972656E6567;
            goto LABEL_59;
          case 0xC:
            v18 = 0x65536E6F69746F6DLL;
            v17 = 0xED000073726F736ELL;
            break;
          case 0xD:
            v18 = 0xD000000000000011;
            v17 = 0x8000000252E65510;
            break;
          case 0xE:
            v18 = 0x79746964696D7568;
            v17 = 0xEE00726F736E6553;
            break;
          case 0xF:
            v18 = 0xD000000000000010;
            v17 = 0x8000000252E65540;
            break;
          case 0x10:
            v18 = 0xD000000000000014;
            v17 = 0x8000000252E65560;
            break;
          case 0x11:
            v18 = 0xD000000000000013;
            v17 = 0x8000000252E65580;
            break;
          case 0x12:
            v19 = 0x53656B6F6D73;
            goto LABEL_56;
          case 0x13:
            v18 = 0x53746361746E6F63;
LABEL_59:
            v17 = 0xED0000726F736E65;
            break;
          case 0x14:
            v17 = 0xED0000726F6F4464;
            goto LABEL_46;
          case 0x15:
            v17 = 0xEF776F646E695764;
LABEL_46:
            v18 = 0x657A69726F746F6DLL;
            break;
          case 0x16:
            v19 = 0x53746867696CLL;
LABEL_56:
            v18 = v19 & 0xFFFFFFFFFFFFLL | 0x6E65000000000000;
            v17 = 0xEB00000000726F73;
            break;
          case 0x17:
            v18 = 0x636E61707563636FLL;
            v17 = 0xEF726F736E655379;
            break;
          case 0x18:
            v18 = 0x736E65536B61656CLL;
            v17 = 0xEA0000000000726FLL;
            break;
          case 0x19:
            v17 = 0xE700000000000000;
            v18 = 0x79726574746162;
            break;
          case 0x1A:
            v17 = 0xE800000000000000;
            v18 = 0x6C6C6542726F6F64;
            break;
          case 0x1B:
            v18 = 0x6669727550726961;
            v17 = 0xEB00000000726569;
            break;
          case 0x1C:
            v18 = 0xD000000000000011;
            v17 = 0x8000000252E65610;
            break;
          case 0x1D:
            v17 = 0xE600000000000000;
            v18 = 0x726574616568;
            break;
          case 0x1E:
            v17 = 0xE600000000000000;
            v18 = 0x72656C6F6F63;
            break;
          case 0x1F:
            v17 = 0xE400000000000000;
            v18 = 1952541811;
            break;
          case 0x20:
            v18 = 0x7974697275636573;
            v17 = 0xEE006D6574737953;
            break;
          case 0x21:
            v18 = 0x69666964696D7568;
            v17 = 0xEA00000000007265;
            break;
          case 0x22:
            v18 = 0x6964696D75686564;
            v17 = 0xEC00000072656966;
            break;
          case 0x23:
            v18 = 0xD000000000000011;
            v17 = 0x8000000252E65660;
            break;
          case 0x24:
            v18 = 0x5F79616C70726961;
            v17 = 0xEF72656B61657073;
            break;
          case 0x25:
            v17 = 0xE800000000000000;
            v18 = 0x76745F656C707061;
            break;
          case 0x26:
            v18 = 0x5F74726F70726961;
            v17 = 0xEF73736572707865;
            break;
          case 0x27:
            v17 = 0xE700000000000000;
            v18 = 0x646F70656D6F68;
            break;
          case 0x28:
            v18 = 0x5F646F70656D6F68;
            v17 = 0xEC000000696E696DLL;
            break;
          case 0x29:
            v17 = 0xE400000000000000;
            v18 = 1684099177;
            break;
          case 0x2A:
            v17 = 0xE600000000000000;
            v18 = 0x656E6F685069;
            break;
          case 0x2B:
            v17 = 0xE700000000000000;
            v18 = 0x72656B61657073;
            break;
          case 0x2C:
            v18 = 0x69736976656C6574;
            v17 = 0xEA00000000006E6FLL;
            break;
          case 0x2D:
            v18 = 0x6974616769727269;
            v17 = 0xEF65766C61566E6FLL;
            break;
          case 0x2E:
            v18 = 0x654A7265776F6873;
            v17 = 0xE900000000000074;
            break;
          case 0x2F:
            v17 = 0xE600000000000000;
            v18 = 0x7265776F6873;
            break;
          case 0x30:
            v17 = 0xE400000000000000;
            v18 = 1802398067;
            break;
          case 0x31:
            v18 = 0x656C6B6E69727073;
            v17 = 0xE900000000000072;
            break;
          case 0x32:
            v18 = 0xD000000000000012;
            v17 = 0x8000000252E65350;
            break;
          case 0x33:
            v17 = 0xE800000000000000;
            v18 = 0x706F4D746F626F72;
            break;
          default:
            break;
        }

        v20 = 0x6C7562746867696CLL;
        v21 = 0xE900000000000062;
        switch(v12)
        {
          case 1:
            v21 = 0xE800000000000000;
            if (v18 == 0x6B636F4C726F6F64)
            {
              goto LABEL_168;
            }

            goto LABEL_169;
          case 2:
            v21 = 0xE800000000000000;
            if (v18 != 0x6172656D61437069)
            {
              goto LABEL_169;
            }

            goto LABEL_168;
          case 3:
            v21 = 0xEF676E6964726F63;
            if (v18 != 0x65526172656D6163)
            {
              goto LABEL_169;
            }

            goto LABEL_168;
          case 4:
            v21 = 0x8000000252E65490;
            if (v18 != 0xD000000000000011)
            {
              goto LABEL_169;
            }

            goto LABEL_168;
          case 5:
            v21 = 0x8000000252E654B0;
            if (v18 != 0xD000000000000010)
            {
              goto LABEL_169;
            }

            goto LABEL_168;
          case 6:
            v21 = 0xE600000000000000;
            if (v18 != 0x74656C74756FLL)
            {
              goto LABEL_169;
            }

            goto LABEL_168;
          case 7:
            v21 = 0xE600000000000000;
            if (v18 != 0x686374697773)
            {
              goto LABEL_169;
            }

            goto LABEL_168;
          case 8:
            v21 = 0xEA00000000007461;
            if (v18 != 0x74736F6D72656874)
            {
              goto LABEL_169;
            }

            goto LABEL_168;
          case 9:
            v21 = 0xEF6E61466E6F6974;
            if (v18 != 0x616C6C69746E6576)
            {
              goto LABEL_169;
            }

            goto LABEL_168;
          case 10:
            v21 = 0xE600000000000000;
            if (v18 != 0x73646E696C62)
            {
              goto LABEL_169;
            }

            goto LABEL_168;
          case 11:
            v29 = 0x53636972656E6567;
            goto LABEL_149;
          case 12:
            v29 = 0x65536E6F69746F6DLL;
            v30 = 0x73726F736ELL;
            goto LABEL_150;
          case 13:
            v21 = 0x8000000252E65510;
            if (v18 != 0xD000000000000011)
            {
              goto LABEL_169;
            }

            goto LABEL_168;
          case 14:
            v27 = 0x79746964696D7568;
            v28 = 0x726F736E6553;
            goto LABEL_139;
          case 15:
            v21 = 0x8000000252E65540;
            if (v18 != 0xD000000000000010)
            {
              goto LABEL_169;
            }

            goto LABEL_168;
          case 16:
            v21 = 0x8000000252E65560;
            if (v18 != 0xD000000000000014)
            {
              goto LABEL_169;
            }

            goto LABEL_168;
          case 17:
            v21 = 0x8000000252E65580;
            if (v18 != 0xD000000000000013)
            {
              goto LABEL_169;
            }

            goto LABEL_168;
          case 18:
            v31 = 0x53656B6F6D73;
            goto LABEL_144;
          case 19:
            v29 = 0x53746361746E6F63;
LABEL_149:
            v30 = 0x726F736E65;
LABEL_150:
            v21 = v30 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
            if (v18 != v29)
            {
              goto LABEL_169;
            }

            goto LABEL_168;
          case 20:
            v21 = 0xED0000726F6F4464;
            goto LABEL_126;
          case 21:
            v21 = 0xEF776F646E695764;
LABEL_126:
            if (v18 != 0x657A69726F746F6DLL)
            {
              goto LABEL_169;
            }

            goto LABEL_168;
          case 22:
            v31 = 0x53746867696CLL;
LABEL_144:
            v21 = 0xEB00000000726F73;
            if (v18 != (v31 & 0xFFFFFFFFFFFFLL | 0x6E65000000000000))
            {
              goto LABEL_169;
            }

            goto LABEL_168;
          case 23:
            v23 = 0x636E61707563636FLL;
            v24 = 0x6F736E655379;
            goto LABEL_155;
          case 24:
            v21 = 0xEA0000000000726FLL;
            if (v18 != 0x736E65536B61656CLL)
            {
              goto LABEL_169;
            }

            goto LABEL_168;
          case 25:
            v21 = 0xE700000000000000;
            if (v18 != 0x79726574746162)
            {
              goto LABEL_169;
            }

            goto LABEL_168;
          case 26:
            v21 = 0xE800000000000000;
            if (v18 != 0x6C6C6542726F6F64)
            {
              goto LABEL_169;
            }

            goto LABEL_168;
          case 27:
            v21 = 0xEB00000000726569;
            if (v18 != 0x6669727550726961)
            {
              goto LABEL_169;
            }

            goto LABEL_168;
          case 28:
            v21 = 0x8000000252E65610;
            if (v18 != 0xD000000000000011)
            {
              goto LABEL_169;
            }

            goto LABEL_168;
          case 29:
            v21 = 0xE600000000000000;
            v22 = 1952540008;
            goto LABEL_160;
          case 30:
            v21 = 0xE600000000000000;
            v22 = 1819242339;
            goto LABEL_160;
          case 31:
            v21 = 0xE400000000000000;
            if (v18 != 1952541811)
            {
              goto LABEL_169;
            }

            goto LABEL_168;
          case 32:
            v27 = 0x7974697275636573;
            v28 = 0x6D6574737953;
LABEL_139:
            v21 = v28 & 0xFFFFFFFFFFFFLL | 0xEE00000000000000;
            if (v18 != v27)
            {
              goto LABEL_169;
            }

            goto LABEL_168;
          case 33:
            v21 = 0xEA00000000007265;
            if (v18 != 0x69666964696D7568)
            {
              goto LABEL_169;
            }

            goto LABEL_168;
          case 34:
            v25 = 0x6964696D75686564;
            v26 = 1919248742;
            goto LABEL_99;
          case 35:
            v21 = 0x8000000252E65660;
            if (v18 != 0xD000000000000011)
            {
              goto LABEL_169;
            }

            goto LABEL_168;
          case 36:
            v23 = 0x5F79616C70726961;
            v24 = 0x656B61657073;
LABEL_155:
            v21 = v24 & 0xFFFFFFFFFFFFLL | 0xEF72000000000000;
            if (v18 != v23)
            {
              goto LABEL_169;
            }

            goto LABEL_168;
          case 37:
            v21 = 0xE800000000000000;
            if (v18 != 0x76745F656C707061)
            {
              goto LABEL_169;
            }

            goto LABEL_168;
          case 38:
            v21 = 0xEF73736572707865;
            if (v18 != 0x5F74726F70726961)
            {
              goto LABEL_169;
            }

            goto LABEL_168;
          case 39:
            v21 = 0xE700000000000000;
            if (v18 != 0x646F70656D6F68)
            {
              goto LABEL_169;
            }

            goto LABEL_168;
          case 40:
            v25 = 0x5F646F70656D6F68;
            v26 = 1768843629;
LABEL_99:
            v21 = v26 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
            if (v18 != v25)
            {
              goto LABEL_169;
            }

            goto LABEL_168;
          case 41:
            v21 = 0xE400000000000000;
            if (v18 != 1684099177)
            {
              goto LABEL_169;
            }

            goto LABEL_168;
          case 42:
            v21 = 0xE600000000000000;
            if (v18 != 0x656E6F685069)
            {
              goto LABEL_169;
            }

            goto LABEL_168;
          case 43:
            v21 = 0xE700000000000000;
            if (v18 != 0x72656B61657073)
            {
              goto LABEL_169;
            }

            goto LABEL_168;
          case 44:
            v21 = 0xEA00000000006E6FLL;
            if (v18 != 0x69736976656C6574)
            {
              goto LABEL_169;
            }

            goto LABEL_168;
          case 45:
            v21 = 0xEF65766C61566E6FLL;
            if (v18 != 0x6974616769727269)
            {
              goto LABEL_169;
            }

            goto LABEL_168;
          case 46:
            v20 = 0x654A7265776F6873;
            v21 = 0xE900000000000074;
            goto LABEL_167;
          case 47:
            v21 = 0xE600000000000000;
            v22 = 2003789939;
LABEL_160:
            if (v18 != (v22 & 0xFFFF0000FFFFFFFFLL | 0x726500000000))
            {
              goto LABEL_169;
            }

            goto LABEL_168;
          case 48:
            v21 = 0xE400000000000000;
            if (v18 != 1802398067)
            {
              goto LABEL_169;
            }

            goto LABEL_168;
          case 49:
            v21 = 0xE900000000000072;
            if (v18 != 0x656C6B6E69727073)
            {
              goto LABEL_169;
            }

            goto LABEL_168;
          case 50:
            v21 = 0x8000000252E65350;
            if (v18 != 0xD000000000000012)
            {
              goto LABEL_169;
            }

            goto LABEL_168;
          case 51:
            v21 = 0xE800000000000000;
            if (v18 != 0x706F4D746F626F72)
            {
              goto LABEL_169;
            }

            goto LABEL_168;
          default:
LABEL_167:
            if (v18 != v20)
            {
              goto LABEL_169;
            }

LABEL_168:
            if (v17 != v21)
            {
LABEL_169:
              v32 = sub_252E37DB4();

              if (v32)
              {
                goto LABEL_175;
              }

              v15 = (v15 + 1) & v16;
              if (((*(v36 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
              {
                goto LABEL_177;
              }

              continue;
            }

LABEL_175:
            v10 = v11;
            v4 = v34;
            v2 = v35;
            v8 = v33;
            if (!v7)
            {
              goto LABEL_7;
            }

LABEL_6:
            v11 = v10;
            break;
        }

        break;
      }
    }

LABEL_177:
  }

  return 0;
}

uint64_t sub_252939EB8(uint64_t a1, uint64_t a2)
{
  v3[67] = v2;
  v3[66] = a2;
  v3[65] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540330, &unk_252E3C7F0);
  v3[68] = v4;
  v5 = *(v4 - 8);
  v3[69] = v5;
  v3[70] = *(v5 + 64);
  v3[71] = swift_task_alloc();
  v3[72] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540338, &qword_252E3C340);
  v3[73] = swift_task_alloc();
  v3[74] = swift_task_alloc();
  v3[75] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252939FF0, 0, 0);
}

uint64_t sub_252939FF0()
{
  v100 = v0;
  v1 = v0[67];
  v2 = v0[66];
  v3 = sub_252B4F670();
  v98 = sub_252B4F854();
  v4 = sub_252C285F0();
  v5 = sub_252C75D10(v4);

  v6 = sub_252C285CC();
  v7 = sub_252C75D10(v6);

  v8 = sub_252C285F0();
  v9 = sub_25293C204(v2, v8);

  v1[15] = v9;

  v11 = sub_252C75D10(v10);

  v12 = sub_252E17400(v11, v5);

  v13 = sub_2529A3784(v12);

  v14 = sub_25293CA04(v13);

  v1[16] = v14;

  v97 = v3;
  v1[17] = sub_252C2895C();

  v16 = sub_252C75D10(v15);

  v96 = v7;
  v17 = sub_252E17400(v16, v7);

  v18 = sub_2529A3784(v17);

  v1[18] = v18;

  if (qword_27F53F4D0 != -1)
  {
    goto LABEL_55;
  }

  while (1)
  {
    v94 = sub_252E36AD4();
    __swift_project_value_buffer(v94, qword_27F544D18);
    __dst[0] = 0;
    __dst[1] = 0xE000000000000000;
    sub_252E379F4();

    __dst[0] = 0xD000000000000019;
    __dst[1] = 0x8000000252E69850;
    v19 = type metadata accessor for HomeEntityResponse();
    sub_25293DF2C(&qword_27F540340, type metadata accessor for HomeEntityResponse);
    v20 = sub_252E373B4();
    v22 = v21;

    MEMORY[0x2530AD570](v20, v22);

    sub_252CC3D90(__dst[0], __dst[1], 0xD00000000000009BLL, 0x8000000252E69870);

    __dst[0] = 0;
    __dst[1] = 0xE000000000000000;
    sub_252E379F4();

    __dst[0] = 0xD00000000000001BLL;
    __dst[1] = 0x8000000252E69910;

    v24 = MEMORY[0x2530AD730](v23, v19);
    v26 = v25;

    MEMORY[0x2530AD570](v24, v26);

    sub_252CC3D90(__dst[0], __dst[1], 0xD00000000000009BLL, 0x8000000252E69870);

    __dst[0] = 0;
    __dst[1] = 0xE000000000000000;
    sub_252E379F4();

    __dst[0] = 0xD00000000000001DLL;
    __dst[1] = 0x8000000252E69930;

    v28 = MEMORY[0x2530AD730](v27, v19);
    v30 = v29;

    MEMORY[0x2530AD570](v28, v30);

    sub_252CC3D90(__dst[0], __dst[1], 0xD00000000000009BLL, 0x8000000252E69870);

    __dst[0] = 0;
    __dst[1] = 0xE000000000000000;
    sub_252E379F4();

    __dst[0] = 0xD00000000000001DLL;
    __dst[1] = 0x8000000252E69950;

    v32 = MEMORY[0x2530AD730](v31, v19);
    v34 = v33;

    MEMORY[0x2530AD570](v32, v34);

    sub_252CC3D90(__dst[0], __dst[1], 0xD00000000000009BLL, 0x8000000252E69870);

    __dst[0] = 0;
    __dst[1] = 0xE000000000000000;
    sub_252E379F4();

    __dst[0] = 0xD000000000000018;
    __dst[1] = 0x8000000252E69970;

    v36 = MEMORY[0x2530AD730](v35, v19);
    v38 = v37;

    MEMORY[0x2530AD570](v36, v38);

    sub_252CC3D90(__dst[0], __dst[1], 0xD00000000000009BLL, 0x8000000252E69870);

    v39 = [v97 entityResponses];
    if (v39)
    {
      v40 = v39;
      v41 = sub_252E37264();

      v42 = v96;
    }

    else
    {
      v42 = v96;
      if (qword_27F53F4E8 != -1)
      {
        swift_once();
      }

      __swift_project_value_buffer(v94, qword_27F544D60);
      __dst[0] = 0;
      __dst[1] = 0xE000000000000000;
      sub_252E379F4();

      __dst[0] = 0xD00000000000002FLL;
      __dst[1] = 0x8000000252E69700;
      v43 = v97;
      v44 = [v43 description];
      v45 = sub_252E36F34();
      v47 = v46;

      MEMORY[0x2530AD570](v45, v47);

      sub_252CC3D90(__dst[0], __dst[1], 0xD000000000000098, 0x8000000252E69730);

      v41 = MEMORY[0x277D84F90];
    }

    v48 = sub_25293D088(v41);

    v49 = v98;
    if (v48)
    {
      if (*(v98 + OBJC_IVAR____TtC22HomeAutomationInternal27HomeAutomationIntentContext_isSceneRequest) == 1)
      {
        type metadata accessor for ControlHomeIntent.Builder();
        swift_allocObject();
        v50 = *(*ControlHomeIntent.Builder.init()() + 184);
        v51 = v48;
        v52 = v50(v48);

        v54 = (*(*v52 + 224))(v53);

        sub_25293DEE0((v0 + 2));
        memcpy(__dst, v0 + 2, 0x1F8uLL);
        v55 = sub_252953488(v54, __dst, 0);

        v49 = v55;
      }

      else
      {
      }
    }

    v56 = v1[15];
    if (v56 >> 62)
    {
      if (!sub_252E378C4())
      {
        goto LABEL_19;
      }
    }

    else if (!*((v56 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_19;
    }

    v57 = v1[16];
    if (v57 >> 62)
    {
      if (sub_252E378C4())
      {
        goto LABEL_19;
      }
    }

    else if (*((v57 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_19;
    }

    if ((v42 & 0xC000000000000001) != 0)
    {
      if (!sub_252E378C4())
      {
        goto LABEL_52;
      }
    }

    else if (!*(v42 + 16))
    {
LABEL_52:

      sub_252CC4050(0xD00000000000002BLL, 0x8000000252E69A30, 0xD00000000000009BLL, 0x8000000252E69870, 0xD00000000000001BLL, 0x8000000252E699C0, 110);
      sub_252E33964();
      sub_252E33954();

      goto LABEL_49;
    }

LABEL_19:
    v58 = *(v0[69] + 56);
    v58(v0[75], 1, 1, v0[68]);
    v59 = v1[16];
    if (v59 >> 62)
    {
      break;
    }

    v60 = v42 & 0xC000000000000001;
    if (!*((v59 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_25;
    }

LABEL_21:
    if (v60)
    {
      if (sub_252E378C4())
      {
        goto LABEL_25;
      }
    }

    else if (*(v42 + 16))
    {
      goto LABEL_25;
    }

    v95 = v58;

    v63 = v1[16];
    v98 = v49;
    __dst[0] = MEMORY[0x277D84F90];
    if (v63 >> 62)
    {
      v64 = sub_252E378C4();
    }

    else
    {
      v64 = *((v63 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v1 = (v63 & 0xC000000000000001);

    v65 = 0;
    v96 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v64 == v65)
      {
        v70 = v0[75];
        v71 = v0[74];
        v93 = v0[68];

        type metadata accessor for HomeAutomationEntityResponses.Builder();
        *(swift_allocObject() + 16) = MEMORY[0x277D84F90];
        v72 = type metadata accessor for HomeAutomationEntityResponses();
        v73 = swift_allocObject();
        *(v73 + 16) = 0;
        swift_setDeallocating();
        swift_deallocClassInstance();
        *(v73 + 24) = v96;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540328, &unk_252E3C330);
        v74 = swift_allocObject();
        *(v74 + 16) = xmmword_252E3C280;
        *(v74 + 32) = 0x6552797469746E65;
        *(v74 + 40) = 0xEF7365736E6F7073;
        *(v74 + 48) = v73;
        *(v74 + 72) = v72;
        *(v74 + 80) = 0xD000000000000010;
        *(v74 + 88) = 0x8000000252E69A10;
        v75 = MEMORY[0x277D839B0];
        *(v74 + 96) = 1;
        *(v74 + 120) = v75;
        strcpy((v74 + 128), "intentContext");
        *(v74 + 142) = -4864;
        *(v74 + 168) = type metadata accessor for HomeAutomationIntentContext(0);
        *(v74 + 144) = v98;
        swift_retain_n();

        sub_252E362B4();

        sub_25293847C(v70, &qword_27F540338, &qword_252E3C340);
        v95(v71, 0, 1, v93);
        goto LABEL_44;
      }

      if (v1)
      {
        v66 = MEMORY[0x2530ADF00](v65, v63);
      }

      else
      {
        if (v65 >= *((v63 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_54;
        }

        v66 = *(v63 + 8 * v65 + 32);
      }

      v67 = v66;
      v68 = v65 + 1;
      if (__OFADD__(v65, 1))
      {
        break;
      }

      v69 = sub_252DA124C(0);

      ++v65;
      if (v69)
      {
        MEMORY[0x2530AD700]();
        if (*((__dst[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((__dst[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_252E372A4();
        }

        sub_252E372D4();
        v96 = __dst[0];
        v65 = v68;
      }
    }

    __break(1u);
LABEL_54:
    __break(1u);
LABEL_55:
    swift_once();
  }

  v60 = v42 & 0xC000000000000001;
  if (sub_252E378C4())
  {
    goto LABEL_21;
  }

LABEL_25:
  if (v60)
  {
    v61 = sub_252E378C4();
  }

  else
  {
    v61 = *(v42 + 16);
  }

  if (v61)
  {
    v62 = v0[75];
    sub_25293AF70(v0[74]);
    sub_25293847C(v62, &qword_27F540338, &qword_252E3C340);
LABEL_44:
    sub_25293DDF0(v0[74], v0[75], &qword_27F540338, &qword_252E3C340);
  }

  v76 = v0[73];
  v77 = v0[69];
  v78 = v0[68];
  sub_252938414(v0[75], v76, &qword_27F540338, &qword_252E3C340);
  if ((*(v77 + 48))(v76, 1, v78) == 1)
  {
    v79 = v0[75];
    sub_25293847C(v0[73], &qword_27F540338, &qword_252E3C340);
    sub_252CC4050(0xD000000000000020, 0x8000000252E69990, 0xD00000000000009BLL, 0x8000000252E69870, 0xD00000000000001BLL, 0x8000000252E699C0, 172);
    sub_252E33964();
    sub_252E33954();

    v80 = v79;
  }

  else
  {
    v81 = v0[72];
    v82 = v0[71];
    v83 = v0[69];
    v84 = v0[67];
    sub_25293DDF0(v0[73], v81, &qword_27F540330, &unk_252E3C7F0);
    v85 = v84[6];
    v86 = v84[7];
    __swift_project_boxed_opaque_existential_1(v84 + 3, v85);
    sub_252938414(v81, v82, &qword_27F540330, &unk_252E3C7F0);
    v87 = (*(v83 + 80) + 16) & ~*(v83 + 80);
    v88 = swift_allocObject();
    sub_25293DDF0(v82, v88 + v87, &qword_27F540330, &unk_252E3C7F0);
    sub_252943B8C(sub_25293DE58, v88, v85, v86);
    v89 = v0[75];
    v90 = v0[72];

    sub_25293847C(v90, &qword_27F540330, &unk_252E3C7F0);
    v80 = v89;
  }

  sub_25293847C(v80, &qword_27F540338, &qword_252E3C340);
LABEL_49:

  v91 = v0[1];

  return v91();
}

uint64_t sub_25293AF70@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = v1[18];
  if (v4 >> 62)
  {
    goto LABEL_41;
  }

  if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    do
    {
LABEL_5:
      v6 = v2[17];
      if (v6 >> 62)
      {
        v7 = sub_252E378C4();
      }

      else
      {
        v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v8 = MEMORY[0x277D84F90];
      v48 = a1;
      if (v7)
      {
        v9 = v2[16];
        if (v9 >> 62)
        {
          if (sub_252E378C4())
          {
            goto LABEL_12;
          }
        }

        else if (*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_12;
        }

        v10 = v2[18];
        if (v10 >> 62)
        {
          if (!sub_252E378C4())
          {
LABEL_56:
            v37 = v2[17];
            v51 = v8;
            if (v37 >> 62)
            {
LABEL_72:
              v38 = sub_252E378C4();
            }

            else
            {
              v38 = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10);
            }

            v39 = 0;
            v40 = MEMORY[0x277D84F90];
            while (v38 != v39)
            {
              if ((v37 & 0xC000000000000001) != 0)
              {
                v41 = MEMORY[0x2530ADF00](v39, v37);
              }

              else
              {
                if (v39 >= *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_71;
                }

                v41 = *(v37 + 8 * v39 + 32);
              }

              v42 = v41;
              v43 = v39 + 1;
              if (__OFADD__(v39, 1))
              {
                __break(1u);
LABEL_71:
                __break(1u);
                goto LABEL_72;
              }

              v44 = sub_252DA124C(0);

              ++v39;
              if (v44)
              {
                MEMORY[0x2530AD700]();
                if (*((v51 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v51 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                {
                  sub_252E372A4();
                }

                sub_252E372D4();
                v40 = v51;
                v39 = v43;
              }
            }

            v45 = type metadata accessor for HomeAutomationEntityResponses();
            v46 = swift_allocObject();
            *(v46 + 16) = 0;
            *(v46 + 24) = v40;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540328, &unk_252E3C330);
            v47 = swift_allocObject();
            *(v47 + 16) = xmmword_252E3C290;
            *(v47 + 32) = 0xD00000000000001ALL;
            *(v47 + 40) = 0x8000000252E696C0;
            *(v47 + 72) = v45;
            *(v47 + 48) = v46;

            v29 = v48;
            sub_252E362B4();

LABEL_35:

            v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540330, &unk_252E3C7F0);
            v31 = *(*(v30 - 8) + 56);
            v32 = v30;
            v33 = v29;
            v34 = 0;
            goto LABEL_36;
          }
        }

        else if (!*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_56;
        }
      }

LABEL_12:
      v50 = v8;
      v11 = v2[16];
      if (!(v11 >> 62))
      {
        if (!*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

LABEL_14:

        sub_25297A894(v12);
        goto LABEL_15;
      }

      if (sub_252E378C4())
      {
        goto LABEL_14;
      }

LABEL_15:
      v13 = v2[17];
      if (!(v13 >> 62))
      {
        if (!*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_18;
        }

LABEL_17:

        sub_25297A894(v14);
        goto LABEL_18;
      }

      if (sub_252E378C4())
      {
        goto LABEL_17;
      }

LABEL_18:
      v15 = v2[18];
      if (v15 >> 62)
      {
        if (!sub_252E378C4())
        {
          goto LABEL_21;
        }

LABEL_20:

        sub_25297A894(v16);
        goto LABEL_21;
      }

      if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_20;
      }

LABEL_21:
      v49 = v8;
      v17 = v8 & 0xFFFFFFFFFFFFFF8;
      if (v8 >> 62)
      {
        v18 = sub_252E378C4();
      }

      else
      {
        v18 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v19 = 0;
      a1 = MEMORY[0x277D84F90];
      while (1)
      {
        if (v18 == v19)
        {

          v24 = type metadata accessor for HomeAutomationEntityResponses();
          v25 = swift_allocObject();
          *(v25 + 16) = 0;
          *(v25 + 24) = a1;
          v26 = sub_252B4F854();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540328, &unk_252E3C330);
          v27 = swift_allocObject();
          *(v27 + 16) = xmmword_252E3C280;
          *(v27 + 32) = 0x6552797469746E65;
          *(v27 + 40) = 0xEF7365736E6F7073;
          *(v27 + 48) = v25;
          *(v27 + 72) = v24;
          strcpy((v27 + 80), "intentContext");
          *(v27 + 94) = -4864;
          v28 = type metadata accessor for HomeAutomationIntentContext(0);
          *(v27 + 96) = v26;
          *(v27 + 120) = v28;
          *(v27 + 128) = 0xD000000000000011;
          *(v27 + 136) = 0x8000000252E69800;
          *(v27 + 168) = MEMORY[0x277D839B0];
          *(v27 + 144) = 1;

          v29 = v48;
          sub_252E362B4();

          goto LABEL_35;
        }

        if ((v50 & 0xC000000000000001) != 0)
        {
          v20 = MEMORY[0x2530ADF00](v19, v50);
        }

        else
        {
          if (v19 >= *(v17 + 16))
          {
            goto LABEL_40;
          }

          v20 = *(v50 + 8 * v19 + 32);
        }

        v21 = v20;
        v22 = v19 + 1;
        if (__OFADD__(v19, 1))
        {
          break;
        }

        v23 = sub_252DA124C(0);

        ++v19;
        if (v23)
        {
          MEMORY[0x2530AD700]();
          if (*((v49 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v49 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_252E372A4();
          }

          sub_252E372D4();
          a1 = v49;
          v19 = v22;
        }
      }

      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      ;
    }

    while (sub_252E378C4());
  }

  v5 = v2[17];
  if (v5 >> 62)
  {
    if (sub_252E378C4())
    {
      goto LABEL_5;
    }
  }

  else if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_5;
  }

  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540330, &unk_252E3C7F0);
  v31 = *(*(v36 - 8) + 56);
  v32 = v36;
  v33 = a1;
  v34 = 1;
LABEL_36:

  return v31(v33, v34, 1, v32);
}

uint64_t sub_25293B614()
{
}

void *sub_25293B654()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 24));
  __swift_destroy_boxed_opaque_existential_1((v0 + 64));

  return v0;
}

uint64_t sub_25293B6AC()
{
  sub_25293B654();

  return swift_deallocClassInstance();
}

void *sub_25293B704@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for AsyncPollingPartialFailureResponseHandler();
  v2 = swift_allocObject();
  *(v2 + 112) = 1;
  v3 = MEMORY[0x277D84F90];
  *(v2 + 120) = MEMORY[0x277D84F90];
  *(v2 + 128) = v3;
  *(v2 + 136) = v3;
  *(v2 + 144) = v3;
  result = sub_252D46D94(v2);
  *a1 = result;
  return result;
}

uint64_t sub_25293B75C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_25293B808;

  return sub_252939EB8(a1, a2);
}

uint64_t sub_25293B808()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_25293B8FC()
{
  v0 = sub_252B4F670();
  v1 = [v0 entityResponses];
  v91 = v0;
  if (v1)
  {
    v2 = v1;
    type metadata accessor for HomeEntityResponse();
    v3 = sub_252E37264();

    if (!(v3 >> 62))
    {
      goto LABEL_3;
    }
  }

  else
  {
    if (qword_27F53F4E8 != -1)
    {
      swift_once();
    }

    v22 = sub_252E36AD4();
    __swift_project_value_buffer(v22, qword_27F544D60);
    sub_252E379F4();

    v23 = v0;
    v24 = [v23 description];
    v25 = sub_252E36F34();
    v27 = v26;

    MEMORY[0x2530AD570](v25, v27);

    sub_252CC3D90(0xD00000000000002FLL, 0x8000000252E69700, 0xD000000000000098, 0x8000000252E69730);

    v3 = MEMORY[0x277D84F90];
    if (!(MEMORY[0x277D84F90] >> 62))
    {
LABEL_3:
      v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v4)
      {
LABEL_4:
        v5 = 0;
        v92 = v3 & 0xC000000000000001;
        v6 = v3 & 0xFFFFFFFFFFFFFF8;
        v7 = MEMORY[0x277D84F90];
        while (1)
        {
          if (v92)
          {
            v8 = v3;
            v9 = MEMORY[0x2530ADF00](v5, v3);
          }

          else
          {
            if (v5 >= *(v6 + 16))
            {
              goto LABEL_69;
            }

            v8 = v3;
            v9 = *(v3 + 8 * v5 + 32);
          }

          v10 = v9;
          v11 = v5 + 1;
          if (__OFADD__(v5, 1))
          {
            __break(1u);
LABEL_69:
            __break(1u);
LABEL_70:
            __break(1u);
LABEL_71:
            __break(1u);
LABEL_72:
            __break(1u);
LABEL_73:
            __break(1u);
LABEL_74:
            __break(1u);
LABEL_75:
            __break(1u);
            goto LABEL_76;
          }

          v12 = sub_252DA10F8();

          v13 = *(v12 + 16);
          v14 = *(v7 + 16);
          v15 = v14 + v13;
          if (__OFADD__(v14, v13))
          {
            goto LABEL_70;
          }

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          if (isUniquelyReferenced_nonNull_native && v15 <= *(v7 + 24) >> 1)
          {
            if (!*(v12 + 16))
            {
              goto LABEL_5;
            }
          }

          else
          {
            if (v14 <= v15)
            {
              v17 = v14 + v13;
            }

            else
            {
              v17 = v14;
            }

            v7 = sub_2529F7B8C(isUniquelyReferenced_nonNull_native, v17, 1, v7);
            if (!*(v12 + 16))
            {
LABEL_5:

              if (v13)
              {
                goto LABEL_71;
              }

              goto LABEL_6;
            }
          }

          v18 = *(v7 + 16);
          if ((*(v7 + 24) >> 1) - v18 < v13)
          {
            goto LABEL_74;
          }

          memcpy((v7 + 8 * v18 + 32), (v12 + 32), 8 * v13);

          if (v13)
          {
            v19 = *(v7 + 16);
            v20 = __OFADD__(v19, v13);
            v21 = v19 + v13;
            if (v20)
            {
              goto LABEL_75;
            }

            *(v7 + 16) = v21;
          }

LABEL_6:
          ++v5;
          v3 = v8;
          if (v11 == v4)
          {
            goto LABEL_30;
          }
        }
      }

      goto LABEL_29;
    }
  }

  v4 = sub_252E378C4();
  if (v4)
  {
    goto LABEL_4;
  }

LABEL_29:
  v7 = MEMORY[0x277D84F90];
LABEL_30:

  v28 = sub_252C759A0(v7);

  if (*(v28 + 16))
  {
    v29 = sub_252C759A0(&unk_2864A52B0);
    v90 = sub_252938C88(v29, v28);
  }

  else
  {
    v90 = 0;
  }

  v7 = v91;

  v30 = sub_252C285CC();
  if (v30 >> 62)
  {
    goto LABEL_78;
  }

  for (i = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_252E378C4())
  {

    v32 = [v7 entityResponses];
    if (v32)
    {
      v33 = v32;
      type metadata accessor for HomeEntityResponse();
      v34 = sub_252E37264();

      if (v34 >> 62)
      {
        v35 = sub_252E378C4();
      }

      else
      {
        v35 = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v36 = i != v35;
    }

    else
    {
      v36 = 1;
    }

    v87 = v36;
    v37 = [v7 entityResponses];
    if (!v37)
    {
      v86 = 0;
      goto LABEL_83;
    }

    v38 = v37;
    type metadata accessor for HomeEntityResponse();
    v39 = sub_252E37264();

    v88 = v39;
    if (v39 >> 62)
    {
      break;
    }

    v40 = *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v40)
    {
      goto LABEL_81;
    }

LABEL_43:
    v7 = 0;
    v41 = v88 & 0xC000000000000001;
    v42 = v88 & 0xFFFFFFFFFFFFFF8;
    v43 = v88 + 32;
    v44 = &off_279711000;
    v85 = v40;
    while (1)
    {
      if (v41)
      {
        v46 = MEMORY[0x2530ADF00](v7, v88);
      }

      else
      {
        if (v7 >= *(v42 + 16))
        {
          goto LABEL_77;
        }

        v46 = *(v43 + 8 * v7);
      }

      v45 = v46;
      v20 = __OFADD__(v7++, 1);
      if (v20)
      {
        break;
      }

      v47 = [v46 v44[220]];
      if (v47)
      {
        v48 = v47;
        v93 = v45;
        type metadata accessor for HomeUserTaskResponse();
        v49 = sub_252E37264();

        if (v49 >> 62)
        {
          v50 = sub_252E378C4();
          if (v50)
          {
LABEL_53:
            v51 = 0;
            do
            {
              if ((v49 & 0xC000000000000001) != 0)
              {
                v52 = MEMORY[0x2530ADF00](v51, v49);
              }

              else
              {
                if (v51 >= *((v49 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_73;
                }

                v52 = *(v49 + 8 * v51 + 32);
              }

              v53 = v52;
              v54 = v51 + 1;
              if (__OFADD__(v51, 1))
              {
                goto LABEL_72;
              }

              v55 = [v52 userTask];
              if (v55)
              {
                v56 = v55;
                v57 = [v55 taskType];

                if (v57 == 1)
                {

                  v86 = 1;
                  goto LABEL_82;
                }
              }

              else
              {
              }

              ++v51;
            }

            while (v54 != v50);
          }
        }

        else
        {
          v50 = *((v49 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v50)
          {
            goto LABEL_53;
          }
        }

        v41 = v88 & 0xC000000000000001;
        v40 = v85;
        v43 = v88 + 32;
        v42 = v88 & 0xFFFFFFFFFFFFFF8;
        v44 = &off_279711000;
        v45 = v93;
      }

      if (v7 == v40)
      {
        goto LABEL_81;
      }
    }

LABEL_76:
    __break(1u);
LABEL_77:
    __break(1u);
LABEL_78:
    ;
  }

  v40 = sub_252E378C4();
  if (v40)
  {
    goto LABEL_43;
  }

LABEL_81:

  v86 = 0;
LABEL_82:
  v7 = v91;
LABEL_83:
  v58 = [v7 entityResponses];
  if (v58)
  {
    v59 = v58;
    type metadata accessor for HomeEntityResponse();
    v60 = sub_252E37264();

    v89 = v60;
    if (v60 >> 62)
    {
      goto LABEL_115;
    }

    for (j = *((v60 & 0xFFFFFFFFFFFFFF8) + 0x10); j; j = sub_252E378C4())
    {
      v62 = 0;
      v63 = v89 & 0xC000000000000001;
      v64 = v89 & 0xFFFFFFFFFFFFFF8;
      v65 = v89 + 32;
      v66 = &off_279711000;
      v84 = j;
      while (1)
      {
        if (v63)
        {
          v68 = MEMORY[0x2530ADF00](v62, v89);
        }

        else
        {
          if (v62 >= *(v64 + 16))
          {
            goto LABEL_114;
          }

          v68 = *(v65 + 8 * v62);
        }

        v67 = v68;
        v20 = __OFADD__(v62++, 1);
        if (v20)
        {
          break;
        }

        v69 = [v68 v66[220]];
        if (v69)
        {
          v70 = v69;
          type metadata accessor for HomeUserTaskResponse();
          v71 = sub_252E37264();

          v94 = v67;
          if (v71 >> 62)
          {
            v72 = sub_252E378C4();
            if (v72)
            {
LABEL_96:
              v73 = 0;
              while (1)
              {
                if ((v71 & 0xC000000000000001) != 0)
                {
                  v74 = MEMORY[0x2530ADF00](v73, v71);
                }

                else
                {
                  if (v73 >= *((v71 & 0xFFFFFFFFFFFFFF8) + 0x10))
                  {
                    goto LABEL_112;
                  }

                  v74 = *(v71 + 8 * v73 + 32);
                }

                v75 = v74;
                v76 = v73 + 1;
                if (__OFADD__(v73, 1))
                {
                  break;
                }

                v77 = [v74 userTask];
                if (v77)
                {
                  v78 = v77;
                  v79 = [v77 taskType];

                  if (v79 == 4)
                  {

                    v80 = 1;
                    goto LABEL_117;
                  }
                }

                else
                {
                }

                ++v73;
                if (v76 == v72)
                {
                  goto LABEL_87;
                }
              }

              __break(1u);
LABEL_112:
              __break(1u);
              break;
            }
          }

          else
          {
            v72 = *((v71 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (v72)
            {
              goto LABEL_96;
            }
          }

LABEL_87:

          v63 = v89 & 0xC000000000000001;
          j = v84;
          v65 = v89 + 32;
          v64 = v89 & 0xFFFFFFFFFFFFFF8;
          v66 = &off_279711000;
          v67 = v94;
        }

        if (v62 == j)
        {
          goto LABEL_116;
        }
      }

      __break(1u);
LABEL_114:
      __break(1u);
LABEL_115:
      ;
    }

LABEL_116:

    v80 = 0;
LABEL_117:
    v7 = v91;
  }

  else
  {
    v80 = 0;
  }

  v81 = OBJC_IVAR___ControlHomeIntentResponse_code;
  swift_beginAccess();
  v82 = *(v7 + v81);

  if (v82 == 4)
  {
    if ((v90 & 1) == 0)
    {
      return 0;
    }

    return v87 & v86 & v80;
  }

  else
  {
    if (((v82 == 3) & v90) != 0)
    {
      return v87 & v86 & v80;
    }

    return 0;
  }
}

uint64_t sub_25293C204(uint64_t a1, unint64_t a2)
{
  v68 = MEMORY[0x277D84F90];
  v65 = sub_252A05170();
  if (a2 >> 62)
  {
    goto LABEL_114;
  }

  for (i = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_252E378C4())
  {
    v4 = MEMORY[0x277D84F90];
    if (!i)
    {
      break;
    }

    v5 = 0;
    v62 = i;
    v63 = a2 & 0xC000000000000001;
    v61 = a2;
    v59 = a2 + 32;
    v60 = a2 & 0xFFFFFFFFFFFFFF8;
    v58 = MEMORY[0x277D84F90];
LABEL_7:
    if (v63)
    {
      v6 = MEMORY[0x2530ADF00](v5, v61);
    }

    else
    {
      if (v5 >= *(v60 + 16))
      {
        goto LABEL_111;
      }

      v6 = *(v59 + 8 * v5);
    }

    v7 = v6;
    v8 = __OFADD__(v5++, 1);
    if (v8)
    {
      goto LABEL_109;
    }

    v9 = sub_252DA2334();
    v10 = v9;
    if (v9 >> 62)
    {
      v11 = sub_252E378C4();
    }

    else
    {
      v11 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v64 = v5;
    v66 = v7;
    if (!v11)
    {
      v18 = v4;
      goto LABEL_28;
    }

    v12 = 0;
    while (1)
    {
      if ((v10 & 0xC000000000000001) != 0)
      {
        v13 = MEMORY[0x2530ADF00](v12, v10);
      }

      else
      {
        if (v12 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_105;
        }

        v13 = *(v10 + 8 * v12 + 32);
      }

      v14 = v13;
      v15 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      v16 = [v13 userTask];
      if (v16 && (a2 = v16, v17 = [v16 taskType], a2, v17 == 1))
      {
        sub_252E37A94();
        a2 = *(v4 + 16);
        sub_252E37AC4();
        sub_252E37AD4();
        sub_252E37AA4();
      }

      else
      {
      }

      ++v12;
      if (v15 == v11)
      {
        v7 = v66;
        v18 = v4;
        i = v62;
        v4 = MEMORY[0x277D84F90];
        v5 = v64;
LABEL_28:

        v19 = [v7 entity];
        if (!v19 || (a2 = v19, v20 = [v19 type], a2, v20 != 7))
        {

          goto LABEL_6;
        }

        if (v18 < 0 || (v18 & 0x4000000000000000) != 0)
        {
          v21 = sub_252E378C4();
          if (v21)
          {
            goto LABEL_33;
          }

LABEL_52:

          v31 = sub_252DA2334();
          v32 = v31;
          v4 = MEMORY[0x277D84F90];
          v67 = MEMORY[0x277D84F90];
          if (v31 >> 62)
          {
            v33 = sub_252E378C4();
            if (v33)
            {
              goto LABEL_54;
            }
          }

          else
          {
            v33 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (v33)
            {
LABEL_54:
              v34 = 0;
              do
              {
                if ((v32 & 0xC000000000000001) != 0)
                {
                  v35 = MEMORY[0x2530ADF00](v34, v32);
                }

                else
                {
                  if (v34 >= *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10))
                  {
                    goto LABEL_107;
                  }

                  v35 = *(v32 + 8 * v34 + 32);
                }

                v36 = v35;
                v37 = v34 + 1;
                if (__OFADD__(v34, 1))
                {
                  goto LABEL_106;
                }

                v38 = [v35 userTask];
                if (v38 && (a2 = v38, v39 = [v38 taskType], a2, v39 == 4))
                {
                  sub_252E37A94();
                  a2 = *(v67 + 16);
                  sub_252E37AC4();
                  sub_252E37AD4();
                  sub_252E37AA4();
                }

                else
                {
                }

                ++v34;
              }

              while (v37 != v33);
              v40 = v67;
              v4 = MEMORY[0x277D84F90];
LABEL_68:

              if ((v40 & 0x8000000000000000) == 0 && (v40 & 0x4000000000000000) == 0)
              {
                v41 = *(v40 + 16);
                if (v41)
                {
                  goto LABEL_71;
                }

LABEL_100:

LABEL_101:
                i = v62;
                v5 = v64;
                goto LABEL_6;
              }

              v41 = sub_252E378C4();
              if (!v41)
              {
                goto LABEL_100;
              }

LABEL_71:
              v42 = 0;
              while (2)
              {
                if ((v40 & 0xC000000000000001) != 0)
                {
                  v43 = MEMORY[0x2530ADF00](v42, v40);
                }

                else
                {
                  if (v42 >= *(v40 + 16))
                  {
                    goto LABEL_110;
                  }

                  v43 = *(v40 + 32 + 8 * v42);
                }

                v44 = v43;
                v8 = __OFADD__(v42++, 1);
                if (v8)
                {
                  goto LABEL_108;
                }

                v45 = [v43 userTask];
                if (v45)
                {
                  a2 = v45;
                  v46 = [v45 attribute];

                  if (v46 == [v65 attribute])
                  {
                    v47 = [v44 userTask];
                    a2 = [v47 value];

                    v48 = [v65 value];
                    v49 = v48;
                    if (a2)
                    {
                      if (v48)
                      {
                        type metadata accessor for HomeAttributeValue();
                        v50 = sub_252E37694();

                        if (v50)
                        {
                          goto LABEL_87;
                        }
                      }

                      else
                      {
                      }
                    }

                    else if (v48)
                    {
                    }

                    else
                    {
LABEL_87:
                      if (qword_27F53F728 != -1)
                      {
                        swift_once();
                      }

                      v51 = qword_27F575C38;
                      v52 = [v44 taskOutcome];
                      if (*(v51 + 16))
                      {
                        a2 = v52;
                        sub_252E37EC4();
                        MEMORY[0x2530AE390](a2);
                        v53 = sub_252E37F14();
                        v54 = -1 << *(v51 + 32);
                        v55 = v53 & ~v54;
                        if ((*(v51 + 56 + ((v55 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v55))
                        {
                          v56 = ~v54;
                          while (*(*(v51 + 48) + 8 * v55) != a2)
                          {
                            v55 = (v55 + 1) & v56;
                            if (((*(v51 + 56 + ((v55 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v55) & 1) == 0)
                            {
                              goto LABEL_73;
                            }
                          }

                          a2 = v66;
                          MEMORY[0x2530AD700]();
                          if (*((v68 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v68 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                          {
                            sub_252E372A4();
                          }

                          sub_252E372D4();

                          v58 = v68;
                          goto LABEL_101;
                        }
                      }
                    }
                  }
                }

                else
                {
                  [v65 attribute];
                }

LABEL_73:

                if (v42 == v41)
                {
                  goto LABEL_100;
                }

                continue;
              }
            }
          }

          v40 = v4;
          goto LABEL_68;
        }

        v21 = *(v18 + 16);
        if (!v21)
        {
          goto LABEL_52;
        }

LABEL_33:
        v22 = 0;
        while (1)
        {
          if ((v18 & 0xC000000000000001) != 0)
          {
            v23 = MEMORY[0x2530ADF00](v22, v18);
          }

          else
          {
            if (v22 >= *(v18 + 16))
            {
              goto LABEL_112;
            }

            v23 = *(v18 + 32 + 8 * v22);
          }

          v24 = v23;
          v8 = __OFADD__(v22++, 1);
          if (v8)
          {
            goto LABEL_113;
          }

          if (qword_27F53F728 != -1)
          {
            swift_once();
          }

          v25 = qword_27F575C38;
          v26 = [v24 taskOutcome];
          if (!*(v25 + 16))
          {
            break;
          }

          a2 = v26;
          sub_252E37EC4();
          MEMORY[0x2530AE390](a2);
          v27 = sub_252E37F14();
          v28 = -1 << *(v25 + 32);
          v29 = v27 & ~v28;
          if (((*(v25 + 56 + ((v29 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v29) & 1) == 0)
          {
            break;
          }

          v30 = ~v28;
          while (*(*(v25 + 48) + 8 * v29) != a2)
          {
            v29 = (v29 + 1) & v30;
            if (((*(v25 + 56 + ((v29 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v29) & 1) == 0)
            {
              goto LABEL_49;
            }
          }

          if (v22 == v21)
          {
            goto LABEL_52;
          }
        }

LABEL_49:

        i = v62;
        v5 = v64;
        v4 = MEMORY[0x277D84F90];
LABEL_6:
        if (v5 == i)
        {
          goto LABEL_103;
        }

        goto LABEL_7;
      }
    }

    __break(1u);
LABEL_105:
    __break(1u);
LABEL_106:
    __break(1u);
LABEL_107:
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
    ;
  }

  v58 = MEMORY[0x277D84F90];
LABEL_103:

  return v58;
}

unint64_t sub_25293CA04(unint64_t a1)
{
  if (a1 >> 62)
  {
    goto LABEL_96;
  }

  v1 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v3 = 0;
    v49 = v1;
    v50 = a1 & 0xC000000000000001;
    v54 = MEMORY[0x277D84F90];
    v47 = a1 & 0xFFFFFFFFFFFFFF8;
    v48 = a1;
    v45 = MEMORY[0x277D84F90];
    v46 = a1 + 32;
    while (1)
    {
LABEL_6:
      if (v50)
      {
        a1 = MEMORY[0x2530ADF00](v3, v48);
      }

      else
      {
        if (v3 >= *(v47 + 16))
        {
          goto LABEL_93;
        }

        a1 = *(v46 + 8 * v3);
      }

      v4 = a1;
      v5 = __OFADD__(v3++, 1);
      if (v5)
      {
LABEL_92:
        __break(1u);
LABEL_93:
        __break(1u);
LABEL_94:
        __break(1u);
LABEL_95:
        __break(1u);
LABEL_96:
        v44 = a1;
        v1 = sub_252E378C4();
        a1 = v44;
        goto LABEL_3;
      }

      a1 = sub_252DA2334();
      v6 = a1;
      v52 = v2;
      if (a1 >> 62)
      {
        a1 = sub_252E378C4();
        v7 = a1;
        v51 = v4;
        if (a1)
        {
LABEL_13:
          v8 = 0;
          while (1)
          {
            if ((v6 & 0xC000000000000001) != 0)
            {
              a1 = MEMORY[0x2530ADF00](v8, v6);
            }

            else
            {
              if (v8 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_89;
              }

              a1 = *(v6 + 8 * v8 + 32);
            }

            v9 = a1;
            v10 = v8 + 1;
            if (__OFADD__(v8, 1))
            {
              break;
            }

            v11 = [a1 userTask];
            if (v11 && (v12 = v11, v13 = [v11 taskType], v12, v13 == 1))
            {
              sub_252E37A94();
              sub_252E37AC4();
              sub_252E37AD4();
              a1 = sub_252E37AA4();
            }

            else
            {
            }

            ++v8;
            if (v10 == v7)
            {
              v4 = v51;
              v14 = v52;
              v2 = MEMORY[0x277D84F90];
              goto LABEL_27;
            }
          }

          __break(1u);
LABEL_89:
          __break(1u);
          goto LABEL_90;
        }
      }

      else
      {
        v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v51 = v4;
        if (v7)
        {
          goto LABEL_13;
        }
      }

      v14 = v2;
LABEL_27:

      v15 = [v4 entity];
      if (v15 && (v16 = v15, v17 = [v15 type], v16, v17 == 7))
      {
        if (v14 < 0 || (v14 & 0x4000000000000000) != 0)
        {
          a1 = sub_252E378C4();
          v18 = a1;
          if (a1)
          {
LABEL_32:
            v19 = 0;
            v20 = v14 + 32;
            do
            {
              if ((v14 & 0xC000000000000001) != 0)
              {
                a1 = MEMORY[0x2530ADF00](v19, v14);
              }

              else
              {
                if (v19 >= *(v14 + 16))
                {
                  goto LABEL_95;
                }

                a1 = *(v20 + 8 * v19);
              }

              v21 = a1;
              v5 = __OFADD__(v19++, 1);
              if (v5)
              {
                goto LABEL_94;
              }

              if (qword_27F53F728 != -1)
              {
                swift_once();
              }

              v22 = qword_27F575C38;
              v23 = [v21 taskOutcome];
              if (!*(v22 + 16) || (v24 = v23, sub_252E37EC4(), MEMORY[0x2530AE390](v24), v25 = sub_252E37F14(), v26 = -1 << *(v22 + 32), v27 = v25 & ~v26, ((*(v22 + 56 + ((v27 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v27) & 1) == 0))
              {
LABEL_5:

                v2 = MEMORY[0x277D84F90];
                if (v3 == v49)
                {
                  return v45;
                }

                goto LABEL_6;
              }

              v28 = ~v26;
              while (*(*(v22 + 48) + 8 * v27) != v24)
              {
                v27 = (v27 + 1) & v28;
                if (((*(v22 + 56 + ((v27 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v27) & 1) == 0)
                {
                  goto LABEL_5;
                }
              }

              v20 = v14 + 32;
            }

            while (v19 != v18);
          }
        }

        else
        {
          v18 = *(v14 + 16);
          if (v18)
          {
            goto LABEL_32;
          }
        }

        v29 = v51;
        a1 = sub_252DA2334();
        v30 = a1;
        v2 = MEMORY[0x277D84F90];
        v53 = MEMORY[0x277D84F90];
        if (a1 >> 62)
        {
          a1 = sub_252E378C4();
          v31 = a1;
          if (a1)
          {
LABEL_54:
            v32 = 0;
            while (1)
            {
              if ((v30 & 0xC000000000000001) != 0)
              {
                a1 = MEMORY[0x2530ADF00](v32, v30);
              }

              else
              {
                if (v32 >= *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_91;
                }

                a1 = *(v30 + 8 * v32 + 32);
              }

              v33 = a1;
              v34 = v32 + 1;
              if (__OFADD__(v32, 1))
              {
                break;
              }

              v35 = [a1 userTask];
              if (v35 && (v36 = v35, v37 = [v35 taskType], v36, v37 == 4))
              {
                sub_252E37A94();
                sub_252E37AC4();
                sub_252E37AD4();
                a1 = sub_252E37AA4();
              }

              else
              {
              }

              ++v32;
              if (v34 == v31)
              {
                v29 = v51;
                v38 = v53;
                v2 = MEMORY[0x277D84F90];
                goto LABEL_68;
              }
            }

LABEL_90:
            __break(1u);
LABEL_91:
            __break(1u);
            goto LABEL_92;
          }
        }

        else
        {
          v31 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v31)
          {
            goto LABEL_54;
          }
        }

        v38 = v2;
LABEL_68:

        if (v38 < 0 || (v38 & 0x4000000000000000) != 0)
        {
          v39 = sub_252E378C4();
          if (!v39)
          {
LABEL_84:

            goto LABEL_49;
          }
        }

        else
        {
          v39 = *(v38 + 16);
          if (!v39)
          {
            goto LABEL_84;
          }
        }

        v5 = __OFSUB__(v39, 1);
        result = v39 - 1;
        if (v5)
        {
          __break(1u);
LABEL_98:
          __break(1u);
LABEL_99:
          __break(1u);
          return result;
        }

        if ((v38 & 0xC000000000000001) != 0)
        {
          v41 = MEMORY[0x2530ADF00](result, v38);
        }

        else
        {
          if ((result & 0x8000000000000000) != 0)
          {
            goto LABEL_98;
          }

          if (result >= *(v38 + 16))
          {
            goto LABEL_99;
          }

          v41 = *(v38 + 8 * result + 32);
        }

        v42 = v41;

        if (qword_27F53F728 != -1)
        {
          swift_once();
        }

        [v42 taskOutcome];
        if (sub_252DB4F4C())
        {
          v43 = v29;
          MEMORY[0x2530AD700]();
          if (*((v54 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v54 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_252E372A4();
          }

          sub_252E372D4();

          v45 = v54;
        }

        else
        {
        }
      }

      else
      {
      }

LABEL_49:
      if (v3 == v49)
      {
        return v45;
      }
    }
  }

  return MEMORY[0x277D84F90];
}

void *sub_25293D088(unint64_t a1)
{
  if (a1 >> 62)
  {
LABEL_77:
    v2 = sub_252E378C4();
    if (!v2)
    {
      goto LABEL_81;
    }
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v2)
    {
      goto LABEL_81;
    }
  }

  v3 = 0;
  while (1)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v4 = MEMORY[0x2530ADF00](v3, a1);
    }

    else
    {
      if (v3 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_72;
      }

      v4 = *(a1 + 8 * v3 + 32);
    }

    v5 = v4;
    v6 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      __break(1u);
LABEL_72:
      __break(1u);
LABEL_73:
      __break(1u);
LABEL_74:
      __break(1u);
LABEL_75:
      __break(1u);
LABEL_76:
      __break(1u);
      goto LABEL_77;
    }

    v7 = [v4 entity];
    if (v7)
    {
      v8 = v7;
      v9 = [v7 type];

      if (v9 == 5)
      {
        break;
      }
    }

    ++v3;
    if (v6 == v2)
    {
      goto LABEL_81;
    }
  }

  v119 = v5;
  v10 = type metadata accessor for HomeStore(0);
  v11 = static HomeStore.shared.getter(v10);
  v12 = sub_2529DA828();

  v122 = v2;
  if (!(v12 >> 62))
  {
    v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v13)
    {
      goto LABEL_15;
    }

LABEL_80:

LABEL_81:
    if (qword_27F53F4D0 != -1)
    {
      swift_once();
    }

    v58 = sub_252E36AD4();
    __swift_project_value_buffer(v58, qword_27F544D18);
    sub_252CC4050(0xD000000000000034, 0x8000000252E69AB0, 0xD00000000000009BLL, 0x8000000252E69870, 0xD00000000000001FLL, 0x8000000252E69A90, 350);
    return 0;
  }

  v13 = sub_252E378C4();
  if (!v13)
  {
    goto LABEL_80;
  }

LABEL_15:
  v14 = 0;
  while ((v12 & 0xC000000000000001) != 0)
  {
    v15 = MEMORY[0x2530ADF00](v14, v12);
    v16 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      goto LABEL_31;
    }

LABEL_21:
    v17 = sub_252E32E24();
    v19 = v18;
    v20 = [v119 entity];
    if (v20 && (v21 = v20, v22 = [v20 entityIdentifier], v21, v22))
    {
      v120 = v15;
      v23 = sub_252E36F34();
      v25 = v24;

      if (v17 == v23 && v19 == v25)
      {
        goto LABEL_32;
      }

      v27 = sub_252E37DB4();

      if (v27)
      {
        goto LABEL_33;
      }
    }

    else
    {
    }

    ++v14;
    if (v16 == v13)
    {
      goto LABEL_80;
    }
  }

  if (v14 >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_74;
  }

  v15 = *(v12 + 8 * v14 + 32);

  v16 = v14 + 1;
  if (!__OFADD__(v14, 1))
  {
    goto LABEL_21;
  }

LABEL_31:
  __break(1u);
LABEL_32:

LABEL_33:

  v28 = [*(v120 + OBJC_IVAR____TtC22HomeAutomationInternal5Scene_delegate) actions];
  sub_25292A2F8();
  sub_25293DF2C(&qword_27F53FBB0, sub_25292A2F8);
  v29 = sub_252E373A4();

  v30 = sub_252B2E20C(v29);

  v124 = MEMORY[0x277D84F90];
  if (!(v30 >> 62))
  {
    v31 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v31)
    {
      goto LABEL_35;
    }

LABEL_87:
    v57 = MEMORY[0x277D84F90];
    goto LABEL_88;
  }

  v31 = sub_252E378C4();
  if (!v31)
  {
    goto LABEL_87;
  }

LABEL_35:
  v32 = 0;
  v33 = v30 & 0xC000000000000001;
  v34 = v30 & 0xFFFFFFFFFFFFFF8;
  v111 = v30;
  v112 = v30 & 0xFFFFFFFFFFFFFF8;
  v35 = (v30 + 32);
  v113 = v30 & 0xC000000000000001;
  v114 = v31;
  v115 = (v30 + 32);
LABEL_38:
  if (v33)
  {
    v117 = MEMORY[0x2530ADF00](v32, v111);
    v36 = __OFADD__(v32++, 1);
    if (v36)
    {
      goto LABEL_69;
    }

LABEL_41:
    if (*(v117 + 40) != 1 || (v37 = *(v117 + 16), objc_opt_self(), (v38 = swift_dynamicCastObjCClass()) == 0))
    {

      goto LABEL_37;
    }

    v39 = v38;
    v40 = v37;
    v41 = [v39 characteristic];
    v42 = [v41 service];

    if (!v42)
    {

      v35 = v115;
      goto LABEL_37;
    }

    type metadata accessor for Service(0);
    swift_allocObject();
    sub_252CD8894(v42);

    v43 = 0;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v44 = MEMORY[0x2530ADF00](v43, a1);
      }

      else
      {
        if (v43 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_75;
        }

        v44 = *(a1 + 8 * v43 + 32);
      }

      v45 = v44;
      v46 = v43 + 1;
      if (__OFADD__(v43, 1))
      {
        goto LABEL_73;
      }

      v47 = [v44 entity];
      if (!v47)
      {
        break;
      }

      v48 = v47;
      v49 = [v47 entityIdentifier];

      if (!v49)
      {
        break;
      }

      v50 = sub_252E36F34();
      v52 = v51;

      v53 = sub_252E32E24();
      if (!v52)
      {
        goto LABEL_46;
      }

      if (v50 == v53 && v52 == v54)
      {

LABEL_65:
        sub_252E37A94();
        sub_252E37AC4();
        sub_252E37AD4();
        sub_252E37AA4();
LABEL_66:
        v33 = v113;
        v31 = v114;
        v34 = v112;
        v35 = v115;
LABEL_37:
        if (v32 == v31)
        {
          goto LABEL_70;
        }

        goto LABEL_38;
      }

      v56 = sub_252E37DB4();

      if (v56)
      {

        goto LABEL_65;
      }

LABEL_47:
      ++v43;
      if (v46 == v122)
      {

        goto LABEL_66;
      }
    }

    sub_252E32E24();
LABEL_46:

    goto LABEL_47;
  }

  if (v32 >= *(v34 + 16))
  {
    goto LABEL_76;
  }

  v117 = v35[v32];

  v36 = __OFADD__(v32++, 1);
  if (!v36)
  {
    goto LABEL_41;
  }

LABEL_69:
  __break(1u);
LABEL_70:
  v57 = v124;
LABEL_88:

  if ((v57 & 0x8000000000000000) == 0 && (v57 & 0x4000000000000000) == 0)
  {
    v61 = *(v57 + 16);
    if (v61)
    {
      goto LABEL_91;
    }

LABEL_120:

    goto LABEL_121;
  }

  while (2)
  {
    v61 = sub_252E378C4();
    if (!v61)
    {
      goto LABEL_120;
    }

LABEL_91:
    v62 = 0;
    v59 = 0;
    v63 = v57 & 0xC000000000000001;
    v121 = v57;
    v123 = v61;
    v118 = v57 & 0xC000000000000001;
LABEL_94:
    if (v63)
    {
      v64 = MEMORY[0x2530ADF00](v62, v57);
      v65 = v62 + 1;
      if (__OFADD__(v62, 1))
      {
        goto LABEL_117;
      }
    }

    else
    {
      if (v62 >= *(v57 + 16))
      {
        goto LABEL_118;
      }

      v64 = *(v57 + 8 * v62 + 32);

      v65 = v62 + 1;
      if (__OFADD__(v62, 1))
      {
LABEL_117:
        __break(1u);
LABEL_118:
        __break(1u);
        continue;
      }
    }

    break;
  }

  if (*(v64 + 40) != 1)
  {
    goto LABEL_92;
  }

  v66 = *(v64 + 16);
  objc_opt_self();
  v67 = swift_dynamicCastObjCClass();
  if (!v67)
  {
    goto LABEL_104;
  }

  v68 = v67;
  v69 = v66;
  v70 = [v68 characteristic];
  v71 = [v68 targetValue];
  ObjectType = swift_getObjectType();
  v124 = v71;
  v72 = sub_252C69EA4(v70, &v124);

  sub_25293847C(&v124, &qword_27F541E80, &qword_252E3DFA0);
  v73 = [v68 characteristic];
  v74 = [v73 characteristicType];

  v75 = sub_252E36F34();
  v77 = v76;

  v78 = sub_252DE9AAC(v75, v77);

  v79 = objc_allocWithZone(type metadata accessor for HomeUserTask());
  v80 = v72;
  v81 = sub_252E36F04();
  v82 = [v79 initWithIdentifier:0 displayString:v81];

  v83 = v82;
  [v83 setTaskType_];
  [v83 setAttribute_];
  [v83 setValue_];

  if (!v59)
  {

    v59 = v83;
LABEL_112:
    v57 = v121;
    v61 = v123;
    v63 = v118;
LABEL_93:
    ++v62;
    if (v65 == v61)
    {

      return v59;
    }

    goto LABEL_94;
  }

  v57 = v121;
  v61 = v123;
  v63 = v118;
LABEL_104:
  if (*(v64 + 40) != 1)
  {
LABEL_92:

    goto LABEL_93;
  }

  v84 = *(v64 + 16);
  objc_opt_self();
  v85 = swift_dynamicCastObjCClass();
  if (!v85)
  {

    v61 = v123;
    goto LABEL_93;
  }

  v86 = v85;
  v116 = v84;
  v87 = [v86 characteristic];
  v88 = [v86 targetValue];
  ObjectType = swift_getObjectType();
  v124 = v88;
  v89 = sub_252C69EA4(v87, &v124);

  sub_25293847C(&v124, &qword_27F541E80, &qword_252E3DFA0);
  v90 = [v86 characteristic];
  v91 = [v90 characteristicType];

  v92 = sub_252E36F34();
  v94 = v93;

  v95 = sub_252DE9AAC(v92, v94);

  v96 = objc_allocWithZone(type metadata accessor for HomeUserTask());
  v97 = v89;
  v98 = sub_252E36F04();
  v99 = [v96 initWithIdentifier:0 displayString:v98];

  v100 = v99;
  [v100 setTaskType_];
  [v100 setAttribute_];
  [v100 setValue_];

  if (!v59)
  {

    goto LABEL_112;
  }

  v101 = v59;
  v61 = v123;
  v63 = v118;
  if (sub_252E37694())
  {

    v57 = v121;
    goto LABEL_93;
  }

  if (qword_27F53F4D0 != -1)
  {
    swift_once();
  }

  v102 = sub_252E36AD4();
  __swift_project_value_buffer(v102, qword_27F544D18);
  v124 = 0;
  v125 = 0xE000000000000000;
  sub_252E379F4();

  v124 = 0xD000000000000022;
  v125 = 0x8000000252E69A60;
  v103 = [v101 description];
  v104 = sub_252E36F34();
  v106 = v105;

  MEMORY[0x2530AD570](v104, v106);

  MEMORY[0x2530AD570](2108704, 0xE300000000000000);
  v107 = [v100 description];
  v108 = sub_252E36F34();
  v110 = v109;

  MEMORY[0x2530AD570](v108, v110);

  MEMORY[0x2530AD570](32, 0xE100000000000000);
  sub_252CC4050(v124, v125, 0xD00000000000009BLL, 0x8000000252E69870, 0xD00000000000001FLL, 0x8000000252E69A90, 368);

LABEL_121:

  return 0;
}

uint64_t sub_25293DDF0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

double sub_25293DEE0(uint64_t a1)
{
  *(a1 + 496) = 0;
  result = 0.0;
  *(a1 + 464) = 0u;
  *(a1 + 480) = 0u;
  *(a1 + 432) = 0u;
  *(a1 + 448) = 0u;
  *(a1 + 400) = 0u;
  *(a1 + 416) = 0u;
  *(a1 + 368) = 0u;
  *(a1 + 384) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 352) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  return result;
}

uint64_t sub_25293DF2C(unint64_t *a1, uint64_t (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    v4 = a2(255);
    result = swift_getWitnessTable(MEMORY[0x277D85378], v4);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t SAHACommand.description.getter()
{
  sub_252E379F4();
  MEMORY[0x2530AD570](60, 0xE100000000000000);
  swift_getObjectType();
  v1 = sub_252E37FB4();
  MEMORY[0x2530AD570](v1);

  MEMORY[0x2530AD570](8250, 0xE200000000000000);
  sub_252E376B4();
  v2 = sub_252E37D94();
  MEMORY[0x2530AD570](v2);

  MEMORY[0x2530AD570](0xD000000000000019, 0x8000000252E69AF0);
  [v0 commandTimeout];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540348, &qword_252E3C348);
  v3 = sub_252E36F94();
  MEMORY[0x2530AD570](v3);

  MEMORY[0x2530AD570](0xD000000000000016, 0x8000000252E69B10);
  v4 = [v0 actionRequests];
  if (v4)
  {
    v5 = v4;
    sub_25293F638(0, &qword_27F540358, 0x277D47330);
    sub_252E37264();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540350, &qword_252E3C350);
  v6 = sub_252E36F94();
  MEMORY[0x2530AD570](v6);

  MEMORY[0x2530AD570](32010, 0xE200000000000000);
  return 0;
}

uint64_t SAHAActionRequest.description.getter()
{
  v1 = v0;
  v2 = [v0 filter];
  if (v2)
  {
    v3 = v2;
    objc_opt_self();
    v4 = swift_dynamicCastObjCClass();
    if (v4)
    {
LABEL_6:
      v7 = [v4 description];
      v5 = sub_252E36F34();
      v9 = v8;

      goto LABEL_9;
    }
  }

  v5 = 0x29656E6F6E28;
  v6 = [v1 filter];
  if (v6)
  {
    v3 = v6;
    objc_opt_self();
    v4 = swift_dynamicCastObjCClass();
    if (v4)
    {
      goto LABEL_6;
    }
  }

  v9 = 0xE600000000000000;
LABEL_9:
  sub_252E379F4();

  swift_getObjectType();
  v10 = sub_252E37FB4();
  MEMORY[0x2530AD570](v10);

  MEMORY[0x2530AD570](8250, 0xE200000000000000);
  sub_252E376B4();
  v11 = sub_252E37D94();
  MEMORY[0x2530AD570](v11);

  MEMORY[0x2530AD570](0xD000000000000011, 0x8000000252E69B30);
  MEMORY[0x2530AD570](v5, v9);

  MEMORY[0x2530AD570](0x6361202020200A2CLL, 0xEF203A736E6F6974);
  v12 = [v1 actions];
  if (v12)
  {
    v13 = v12;
    sub_25293F638(0, &qword_27F540368, 0x277D47328);
    sub_252E37264();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540360, &qword_252E3C358);
  v14 = sub_252E36F94();
  MEMORY[0x2530AD570](v14);

  MEMORY[0x2530AD570](32010, 0xE200000000000000);
  return 60;
}

uint64_t SAHAAction.description.getter()
{
  v1 = v0;
  v2 = 0x29656E6F6E28;
  v3 = [v0 value];
  if (v3)
  {
    v4 = v3;
    objc_opt_self();
    v5 = swift_dynamicCastObjCClass();
    if (v5)
    {
      goto LABEL_13;
    }
  }

  v6 = [v1 value];
  if (v6)
  {
    v4 = v6;
    objc_opt_self();
    v5 = swift_dynamicCastObjCClass();
    if (v5)
    {
      goto LABEL_13;
    }
  }

  v7 = [v1 value];
  if (v7)
  {
    v4 = v7;
    objc_opt_self();
    v5 = swift_dynamicCastObjCClass();
    if (v5)
    {
LABEL_13:
      v9 = [v5 description];
      v10 = sub_252E36F34();
      v12 = v11;

      goto LABEL_14;
    }
  }

  v8 = [v1 value];
  if (v8)
  {
    v4 = v8;
    objc_opt_self();
    v5 = swift_dynamicCastObjCClass();
    if (v5)
    {
      goto LABEL_13;
    }
  }

  v12 = 0xE600000000000000;
  v10 = 0x29656E6F6E28;
LABEL_14:
  sub_252E379F4();
  MEMORY[0x2530AD570](60, 0xE100000000000000);
  swift_getObjectType();
  v13 = sub_252E37FB4();
  MEMORY[0x2530AD570](v13);

  MEMORY[0x2530AD570](8250, 0xE200000000000000);
  sub_252E376B4();
  v14 = sub_252E37D94();
  MEMORY[0x2530AD570](v14);

  MEMORY[0x2530AD570](0xD000000000000015, 0x8000000252E69B50);
  v15 = [v1 actionType];
  if (v15)
  {
    v16 = v15;
    v17 = sub_252E36F34();
    v19 = v18;
  }

  else
  {
    v19 = 0xE600000000000000;
    v17 = 0x29656E6F6E28;
  }

  MEMORY[0x2530AD570](v17, v19);

  MEMORY[0x2530AD570](0xD000000000000011, 0x8000000252E69B70);
  v20 = [v1 attribute];
  if (v20)
  {
    v21 = v20;
    v2 = sub_252E36F34();
    v23 = v22;
  }

  else
  {
    v23 = 0xE600000000000000;
  }

  MEMORY[0x2530AD570](v2, v23);

  MEMORY[0x2530AD570](0x6176202020200A2CLL, 0xED0000203A65756CLL);
  MEMORY[0x2530AD570](v10, v12);

  MEMORY[0x2530AD570](32010, 0xE200000000000000);
  return 0;
}

uint64_t SAHASearchCriteriaFilter.description.getter()
{
  v1 = v0;
  v2 = 0x29656E6F6E28;
  v3 = sub_252E32CB4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v66[0] = v66 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540370, &qword_252E3C450);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v9 = v66 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = v66 - v10;
  v67 = 0;
  v68 = 0xE000000000000000;
  sub_252E379F4();
  MEMORY[0x2530AD570](60, 0xE100000000000000);
  swift_getObjectType();
  v12 = sub_252E37FB4();
  MEMORY[0x2530AD570](v12);

  MEMORY[0x2530AD570](8250, 0xE200000000000000);
  v66[1] = sub_252E376B4();
  v13 = sub_252E37D94();
  MEMORY[0x2530AD570](v13);

  MEMORY[0x2530AD570](0xD000000000000015, 0x8000000252E69B90);
  v14 = [v0 entityType];
  if (v14)
  {
    v15 = v14;
    v16 = sub_252E36F34();
    v18 = v17;
  }

  else
  {
    v18 = 0xE600000000000000;
    v16 = 0x29656E6F6E28;
  }

  MEMORY[0x2530AD570](v16, v18);

  MEMORY[0x2530AD570](0xD000000000000013, 0x8000000252E69BB0);
  v19 = [v1 serviceType];
  if (v19)
  {
    v20 = v19;
    v21 = sub_252E36F34();
    v23 = v22;
  }

  else
  {
    v23 = 0xE600000000000000;
    v21 = 0x29656E6F6E28;
  }

  MEMORY[0x2530AD570](v21, v23);

  MEMORY[0x2530AD570](0xD000000000000013, 0x8000000252E69BD0);
  v24 = [v1 serviceName];
  if (v24)
  {
    v25 = v24;
    v26 = sub_252E36F34();
    v28 = v27;
  }

  else
  {
    v28 = 0xE600000000000000;
    v26 = 0x29656E6F6E28;
  }

  MEMORY[0x2530AD570](v26, v28);

  MEMORY[0x2530AD570](0xD000000000000015, 0x8000000252E69BF0);
  v29 = [v1 accessoryName];
  if (v29)
  {
    v30 = v29;
    v31 = sub_252E36F34();
    v33 = v32;
  }

  else
  {
    v33 = 0xE600000000000000;
    v31 = 0x29656E6F6E28;
  }

  MEMORY[0x2530AD570](v31, v33);

  MEMORY[0x2530AD570](0xD000000000000011, 0x8000000252E69C10);
  v34 = [v1 sceneName];
  if (v34)
  {
    v35 = v34;
    v36 = sub_252E36F34();
    v38 = v37;
  }

  else
  {
    v38 = 0xE600000000000000;
    v36 = 0x29656E6F6E28;
  }

  MEMORY[0x2530AD570](v36, v38);

  MEMORY[0x2530AD570](0xD000000000000011, 0x8000000252E69C30);
  v39 = [v1 groupName];
  if (v39)
  {
    v40 = v39;
    v41 = sub_252E36F34();
    v43 = v42;
  }

  else
  {
    v43 = 0xE600000000000000;
    v41 = 0x29656E6F6E28;
  }

  MEMORY[0x2530AD570](v41, v43);

  MEMORY[0x2530AD570](0xD000000000000010, 0x8000000252E69C50);
  v44 = [v1 roomName];
  if (v44)
  {
    v45 = v44;
    v46 = sub_252E36F34();
    v48 = v47;
  }

  else
  {
    v48 = 0xE600000000000000;
    v46 = 0x29656E6F6E28;
  }

  MEMORY[0x2530AD570](v46, v48);

  MEMORY[0x2530AD570](0xD000000000000010, 0x8000000252E69C70);
  v49 = [v1 zoneName];
  if (v49)
  {
    v50 = v49;
    v51 = sub_252E36F34();
    v53 = v52;
  }

  else
  {
    v53 = 0xE600000000000000;
    v51 = 0x29656E6F6E28;
  }

  MEMORY[0x2530AD570](v51, v53);

  MEMORY[0x2530AD570](0xD000000000000010, 0x8000000252E69C90);
  v54 = [v1 homeName];
  if (v54)
  {
    v55 = v54;
    v56 = sub_252E36F34();
    v58 = v57;
  }

  else
  {
    v58 = 0xE600000000000000;
    v56 = 0x29656E6F6E28;
  }

  MEMORY[0x2530AD570](v56, v58);

  MEMORY[0x2530AD570](0xD000000000000016, 0x8000000252E69CB0);
  v59 = [v1 homeIdentifier];
  if (v59)
  {
    v60 = v59;
    sub_252E32C94();

    v61 = 0;
  }

  else
  {
    v61 = 1;
  }

  (*(v4 + 56))(v9, v61, 1, v3);
  sub_25293EED0(v9, v11);
  if ((*(v4 + 48))(v11, 1, v3))
  {
    sub_25293EF40(v11);
    v62 = 0xE600000000000000;
  }

  else
  {
    v63 = v66[0];
    (*(v4 + 16))(v66[0], v11, v3);
    sub_25293EF40(v11);
    v2 = sub_252E32C64();
    v62 = v64;
    (*(v4 + 8))(v63, v3);
  }

  MEMORY[0x2530AD570](v2, v62);

  MEMORY[0x2530AD570](32010, 0xE200000000000000);
  return v67;
}

uint64_t sub_25293EED0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540370, &qword_252E3C450);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_25293EF40(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540370, &qword_252E3C450);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t SAHAIdentifierListFilter.description.getter()
{
  sub_252E379F4();

  swift_getObjectType();
  v1 = sub_252E37FB4();
  MEMORY[0x2530AD570](v1);

  MEMORY[0x2530AD570](8250, 0xE200000000000000);
  sub_252E376B4();
  v2 = sub_252E37D94();
  MEMORY[0x2530AD570](v2);

  MEMORY[0x2530AD570](0xD000000000000016, 0x8000000252E69CD0);
  v3 = [v0 identifiers];
  if (v3)
  {
    v4 = v3;
    sub_252E37264();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540378, &unk_252E43ED0);
  v5 = sub_252E36F94();
  MEMORY[0x2530AD570](v5);

  MEMORY[0x2530AD570](32010, 0xE200000000000000);
  return 60;
}

uint64_t SAHACommandCompleted.description.getter()
{
  v1 = v0;
  v2 = 0x29656E6F6E28;
  v3 = sub_252E32CB4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540370, &qword_252E3C450);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v10 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v41 - v11;
  v43 = 0;
  v44 = 0xE000000000000000;
  sub_252E379F4();
  MEMORY[0x2530AD570](60, 0xE100000000000000);
  swift_getObjectType();
  v13 = sub_252E37FB4();
  MEMORY[0x2530AD570](v13);

  MEMORY[0x2530AD570](8250, 0xE200000000000000);
  v42 = sub_252E376B4();
  v14 = sub_252E37D94();
  MEMORY[0x2530AD570](v14);

  MEMORY[0x2530AD570](0xD000000000000019, 0x8000000252E69CF0);
  v15 = [v0 clientValidity];
  if (v15)
  {
    v16 = v15;
    v17 = sub_252E36F34();
    v19 = v18;
  }

  else
  {
    v19 = 0xE600000000000000;
    v17 = 0x29656E6F6E28;
  }

  MEMORY[0x2530AD570](v17, v19);

  MEMORY[0x2530AD570](0xD000000000000016, 0x8000000252E69D10);
  v20 = [v1 serverValidity];
  if (v20)
  {
    v21 = v20;
    v22 = sub_252E36F34();
    v24 = v23;
  }

  else
  {
    v24 = 0xE600000000000000;
    v22 = 0x29656E6F6E28;
  }

  MEMORY[0x2530AD570](v22, v24);

  MEMORY[0x2530AD570](0xD000000000000016, 0x8000000252E69CB0);
  v25 = [v1 homeIdentifier];
  if (v25)
  {
    v26 = v25;
    sub_252E32C94();

    v27 = 0;
  }

  else
  {
    v27 = 1;
  }

  (*(v4 + 56))(v10, v27, 1, v3);
  sub_25293EED0(v10, v12);
  if ((*(v4 + 48))(v12, 1, v3))
  {
    sub_25293EF40(v12);
    v28 = 0xE600000000000000;
    v29 = 0x29656E6F6E28;
  }

  else
  {
    (*(v4 + 16))(v6, v12, v3);
    sub_25293EF40(v12);
    v30 = sub_252E32C64();
    v28 = v31;
    (*(v4 + 8))(v6, v3);
    v29 = v30;
  }

  MEMORY[0x2530AD570](v29, v28);

  MEMORY[0x2530AD570](0xD000000000000016, 0x8000000252E69D30);
  v32 = [v1 commandOutcome];
  if (v32)
  {
    v33 = v32;
    v2 = sub_252E36F34();
    v35 = v34;
  }

  else
  {
    v35 = 0xE600000000000000;
  }

  MEMORY[0x2530AD570](v2, v35);

  MEMORY[0x2530AD570](0xD000000000000015, 0x8000000252E69D50);
  v36 = [v1 actionResults];
  if (v36)
  {
    v37 = v36;
    sub_25293F638(0, &qword_27F540388, 0x277D47338);
    v38 = sub_252E37264();
  }

  else
  {
    v38 = 0;
  }

  v42 = v38;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540380, &qword_252E3C360);
  v39 = sub_252E36F94();
  MEMORY[0x2530AD570](v39);

  MEMORY[0x2530AD570](32010, 0xE200000000000000);
  return v43;
}

uint64_t sub_25293F638(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t SAHAActionResult.description.getter()
{
  v1 = v0;
  v2 = 0x29656E6F6E28;
  v3 = [v0 resultValue];
  if (v3)
  {
    v4 = v3;
    objc_opt_self();
    v5 = swift_dynamicCastObjCClass();
    if (v5)
    {
      goto LABEL_13;
    }
  }

  v6 = [v1 resultValue];
  if (v6)
  {
    v4 = v6;
    objc_opt_self();
    v5 = swift_dynamicCastObjCClass();
    if (v5)
    {
      goto LABEL_13;
    }
  }

  v7 = [v1 resultValue];
  if (v7)
  {
    v4 = v7;
    objc_opt_self();
    v5 = swift_dynamicCastObjCClass();
    if (v5)
    {
LABEL_13:
      v9 = [v5 description];
      v10 = sub_252E36F34();
      v12 = v11;

      goto LABEL_14;
    }
  }

  v8 = [v1 resultValue];
  if (v8)
  {
    v4 = v8;
    objc_opt_self();
    v5 = swift_dynamicCastObjCClass();
    if (v5)
    {
      goto LABEL_13;
    }
  }

  v12 = 0xE600000000000000;
  v10 = 0x29656E6F6E28;
LABEL_14:
  sub_252E379F4();
  MEMORY[0x2530AD570](60, 0xE100000000000000);
  swift_getObjectType();
  v13 = sub_252E37FB4();
  MEMORY[0x2530AD570](v13);

  MEMORY[0x2530AD570](8250, 0xE200000000000000);
  sub_252E376B4();
  v14 = sub_252E37D94();
  MEMORY[0x2530AD570](v14);

  MEMORY[0x2530AD570](0xD000000000000019, 0x8000000252E69D70);
  v15 = [v1 entity];
  if (v15)
  {
    v16 = v15;
    v17 = [v15 description];

    v18 = sub_252E36F34();
    v20 = v19;
  }

  else
  {
    v20 = 0xE600000000000000;
    v18 = 0x29656E6F6E28;
  }

  MEMORY[0x2530AD570](v18, v20);

  MEMORY[0x2530AD570](0xD000000000000017, 0x8000000252E69D90);
  v21 = [v1 outcome];
  if (v21)
  {
    v22 = v21;
    v23 = sub_252E36F34();
    v25 = v24;
  }

  else
  {
    v25 = 0xE600000000000000;
    v23 = 0x29656E6F6E28;
  }

  MEMORY[0x2530AD570](v23, v25);

  MEMORY[0x2530AD570](0xD000000000000019, 0x8000000252E69DB0);
  v26 = [v1 resultAttribute];
  if (v26)
  {
    v27 = v26;
    v28 = sub_252E36F34();
    v30 = v29;
  }

  else
  {
    v30 = 0xE600000000000000;
    v28 = 0x29656E6F6E28;
  }

  MEMORY[0x2530AD570](v28, v30);

  MEMORY[0x2530AD570](0xD000000000000015, 0x8000000252E69DD0);
  MEMORY[0x2530AD570](v10, v12);

  MEMORY[0x2530AD570](0xD000000000000015, 0x8000000252E69DF0);
  v31 = [v1 resultValue];
  if (v31 && (v32 = v31, v33 = [v31 units], v32, v33))
  {
    v2 = sub_252E36F34();
    v35 = v34;
  }

  else
  {
    v35 = 0xE600000000000000;
  }

  MEMORY[0x2530AD570](v2, v35);

  MEMORY[0x2530AD570](32010, 0xE200000000000000);
  return 0;
}

id sub_25293FB48(void *a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a1;
  a3();

  v5 = sub_252E36F04();

  return v5;
}

uint64_t SAHAEntity.description.getter()
{
  v1 = v0;
  v2 = 0x29656E6F6E28;
  sub_252E379F4();
  MEMORY[0x2530AD570](60, 0xE100000000000000);
  swift_getObjectType();
  v3 = sub_252E37FB4();
  MEMORY[0x2530AD570](v3);

  MEMORY[0x2530AD570](8250, 0xE200000000000000);
  sub_252E376B4();
  v4 = sub_252E37D94();
  MEMORY[0x2530AD570](v4);

  MEMORY[0x2530AD570](0xD00000000000001BLL, 0x8000000252E69E10);
  v5 = [v0 name];
  if (v5)
  {
    v6 = v5;
    v7 = sub_252E36F34();
    v9 = v8;
  }

  else
  {
    v9 = 0xE600000000000000;
    v7 = 0x29656E6F6E28;
  }

  MEMORY[0x2530AD570](v7, v9);

  MEMORY[0x2530AD570](0xD00000000000001FLL, 0x8000000252E69E30);
  v10 = [v1 serviceType];
  if (v10)
  {
    v11 = v10;
    v12 = sub_252E36F34();
    v14 = v13;
  }

  else
  {
    v14 = 0xE600000000000000;
    v12 = 0x29656E6F6E28;
  }

  MEMORY[0x2530AD570](v12, v14);

  MEMORY[0x2530AD570](0xD000000000000022, 0x8000000252E69E50);
  v15 = [v1 serviceSubType];
  if (v15)
  {
    v16 = v15;
    v17 = sub_252E36F34();
    v19 = v18;
  }

  else
  {
    v19 = 0xE600000000000000;
    v17 = 0x29656E6F6E28;
  }

  MEMORY[0x2530AD570](v17, v19);

  MEMORY[0x2530AD570](0xD000000000000018, 0x8000000252E69E80);
  v20 = [v1 room];
  if (v20)
  {
    v21 = v20;
    v22 = sub_252E36F34();
    v24 = v23;
  }

  else
  {
    v24 = 0xE600000000000000;
    v22 = 0x29656E6F6E28;
  }

  MEMORY[0x2530AD570](v22, v24);

  MEMORY[0x2530AD570](0xD000000000000018, 0x8000000252E69EA0);
  v25 = [v1 zone];
  if (v25)
  {
    v26 = v25;
    v27 = sub_252E36F34();
    v29 = v28;
  }

  else
  {
    v29 = 0xE600000000000000;
    v27 = 0x29656E6F6E28;
  }

  MEMORY[0x2530AD570](v27, v29);

  MEMORY[0x2530AD570](0xD000000000000018, 0x8000000252E69EC0);
  v30 = [v1 home];
  if (v30)
  {
    v31 = v30;
    v2 = sub_252E36F34();
    v33 = v32;
  }

  else
  {
    v33 = 0xE600000000000000;
  }

  MEMORY[0x2530AD570](v2, v33);

  MEMORY[0x2530AD570](32010, 0xE200000000000000);
  return 0;
}

id sub_25293FF58(void *a1)
{
  v1 = a1;
  v2 = [v1 value];
  v3 = v2 == 0;
  if (v2)
  {
    v4 = 1702195828;
  }

  else
  {
    v4 = 0x65736C6166;
  }

  if (v3)
  {
    v5 = 0xE500000000000000;
  }

  else
  {
    v5 = 0xE400000000000000;
  }

  MEMORY[0x2530AD570](v4, v5);

  v6 = sub_252E36F04();

  return v6;
}

uint64_t SAHABooleanValue.description.getter()
{
  v1 = [v0 value];
  v2 = v1 == 0;
  if (v1)
  {
    v3 = 1702195828;
  }

  else
  {
    v3 = 0x65736C6166;
  }

  if (v2)
  {
    v4 = 0xE500000000000000;
  }

  else
  {
    v4 = 0xE400000000000000;
  }

  MEMORY[0x2530AD570](v3, v4);

  return 0;
}

id sub_252940088(void *a1)
{
  v1 = a1;
  [v1 value];
  sub_252E37384();

  v2 = sub_252E36F04();

  return v2;
}

uint64_t SAHAFloatValue.description.getter()
{
  [v0 value];
  sub_252E37384();
  return 0;
}

id sub_252940160(void *a1)
{
  v1 = a1;
  [v1 value];
  sub_252E37D94();

  v2 = sub_252E36F04();

  return v2;
}

id sub_252940244(void *a1)
{
  v1 = a1;
  result = [v1 value];
  if (result)
  {
    v3 = result;

    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id SAHAStringValue.description.getter()
{
  result = [v0 value];
  if (result)
  {
    v2 = result;
    v3 = sub_252E36F34();

    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_252940300(void *a1, void (*a2)(void))
{
  v3 = v2;
  type metadata accessor for HomeAutomationUserDefaults();
  inited = swift_initStackObject();
  v7 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v8 = sub_252E36F04();
  v9 = [v7 initWithSuiteName_];

  *(inited + 16) = v9;
  v10 = sub_2529AF444();
  LOBYTE(inited) = v11;

  if (inited)
  {
    v10 = 20;
  }

  else
  {
    if (qword_27F53F510 != -1)
    {
      swift_once();
    }

    v12 = sub_252E36AD4();
    __swift_project_value_buffer(v12, qword_27F544DD8);
    v13 = sub_252E36AC4();
    v14 = sub_252E374C4();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 134217984;
      *(v15 + 4) = v10;
      _os_log_impl(&dword_252917000, v13, v14, "Overriding sync response timeout for polling to %ld msec", v15, 0xCu);
      MEMORY[0x2530AED00](v15, -1, -1);
    }
  }

  v16 = sub_2529405E0(a1);
  v17 = sub_252B84730(a1, *(v3 + 16), *(v3 + 24), v10, 1, v16, 0);
  a2();
}

uint64_t sub_2529404F0()
{
  v0 = sub_252E32E84();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for AsyncPollingHandleDelegate();
  v4 = swift_allocObject();
  sub_252E32E74();
  v5 = sub_252E32E24();
  v7 = v6;
  (*(v1 + 8))(v3, v0);
  *(v4 + 16) = v5;
  *(v4 + 24) = v7;
  return v4;
}

uint64_t sub_2529405E0(void *a1)
{
  v2 = [a1 filters];
  if (!v2)
  {
    return 30000;
  }

  v3 = v2;
  type metadata accessor for HomeFilter();
  v4 = sub_252E37264();

  v5 = [a1 userTask];
  if (v5)
  {
    v6 = v5;
    v7 = type metadata accessor for HomeStore(0);
    v8 = static HomeStore.shared.getter(v7);
    v9 = v6;
    v10 = HomeStore.services(matching:supporting:)(v4, v6);
    v12 = v11;

    if ((v12 & 1) == 0)
    {
      v13 = v10 & 0xFFFFFFFFFFFFFF8;
      v36 = v9;
      if (v10 >> 62)
      {
        goto LABEL_31;
      }

      v14 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v14)
      {
LABEL_32:

        sub_252929F10(v10, 0);
        return 30000;
      }

LABEL_8:
      v15 = 0;
      while (1)
      {
        if ((v10 & 0xC000000000000001) != 0)
        {
          v16 = MEMORY[0x2530ADF00](v15, v10);
          v17 = v15 + 1;
          if (__OFADD__(v15, 1))
          {
            goto LABEL_29;
          }
        }

        else
        {
          if (v15 >= *(v13 + 16))
          {
            goto LABEL_30;
          }

          v16 = *(v10 + 8 * v15 + 32);

          v17 = v15 + 1;
          if (__OFADD__(v15, 1))
          {
LABEL_29:
            __break(1u);
LABEL_30:
            __break(1u);
LABEL_31:
            v14 = sub_252E378C4();
            if (!v14)
            {
              goto LABEL_32;
            }

            goto LABEL_8;
          }
        }

        v18 = v13;
        v19 = OBJC_IVAR____TtC22HomeAutomationInternal7Service_delegate;
        v20 = [*(v16 + OBJC_IVAR____TtC22HomeAutomationInternal7Service_delegate) serviceType];
        v21 = sub_252E36F34();
        v23 = v22;

        if (qword_27F53F8B8 != -1)
        {
          swift_once();
        }

        v24 = off_27F546230;
        if (*(off_27F546230 + 2) && (v25 = sub_252A44A10(v21, v23), (v26 & 1) != 0))
        {
          v27 = *(v24[7] + 8 * v25);

          if (v27 == 4)
          {
            sub_252929F10(v10, 0);

LABEL_28:

            return 60000;
          }
        }

        else
        {
        }

        v28 = [*(v16 + v19) serviceType];
        v29 = sub_252E36F34();
        v31 = v30;

        if (v24[2] && (v32 = sub_252A44A10(v29, v31), (v33 & 1) != 0))
        {
          v34 = *(v24[7] + 8 * v32);

          if (v34 == 23)
          {
            sub_252929F10(v10, 0);
            goto LABEL_28;
          }
        }

        else
        {
        }

        ++v15;
        v13 = v18;
        if (v17 == v14)
        {
          goto LABEL_32;
        }
      }
    }

    sub_252929F10(v10, 1);
  }

  else
  {
  }

  return 30000;
}

char *sub_2529408F4(void *a1)
{
  v2 = [a1 filters];
  if (!v2)
  {
    goto LABEL_59;
  }

  v3 = v2;
  type metadata accessor for HomeFilter();
  v4 = sub_252E37264();

  v5 = [a1 userTask];
  if (!v5)
  {

    goto LABEL_59;
  }

  v6 = v5;
  v7 = type metadata accessor for HomeStore(0);
  v8 = static HomeStore.shared.getter(v7);
  v9 = v6;
  v10 = HomeStore.services(matching:supporting:)(v4, v6);
  v12 = v11;

  if (v12)
  {
    sub_252929F10(v10, 1);

    goto LABEL_59;
  }

  v61 = v10;
  v14 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(v13);
  sub_252929E74((v14 + 16), v62);

  __swift_project_boxed_opaque_existential_1(v62, v62[3]);
  LOBYTE(v15) = sub_252E338F4();
  __swift_destroy_boxed_opaque_existential_1(v62);
  if (qword_27F53F510 != -1)
  {
    goto LABEL_50;
  }

LABEL_7:
  v16 = sub_252E36AD4();
  __swift_project_value_buffer(v16, qword_27F544DD8);
  v17 = sub_252E36AC4();
  v18 = sub_252E374C4();
  v60 = v15;
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v62[0] = v20;
    *v19 = 136315138;
    sub_252C759A0(&unk_2864A5338);
    sub_25292A344();
    v21 = sub_252E373B4();
    v23 = v22;

    v24 = sub_252BE2CE0(v21, v23, v62);

    *(v19 + 4) = v24;
    _os_log_impl(&dword_252917000, v17, v18, "Supported device types %s", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v20);
    MEMORY[0x2530AED00](v20, -1, -1);
    MEMORY[0x2530AED00](v19, -1, -1);
  }

  v25 = v61;
  v62[0] = MEMORY[0x277D84F90];
  if (v61 >> 62)
  {
    v26 = sub_252E378C4();
  }

  else
  {
    v26 = *((v61 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v27 = MEMORY[0x277D84F90];
  if (v26)
  {
    v28 = 0;
    v15 = v61 & 0xC000000000000001;
    while (1)
    {
      if (v15)
      {
        v30 = MEMORY[0x2530ADF00](v28, v25);
        v31 = v28 + 1;
        if (__OFADD__(v28, 1))
        {
          goto LABEL_48;
        }
      }

      else
      {
        if (v28 >= *((v61 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_49;
        }

        v30 = v25[v28 + 4];

        v31 = v28 + 1;
        if (__OFADD__(v28, 1))
        {
LABEL_48:
          __break(1u);
LABEL_49:
          __break(1u);
LABEL_50:
          swift_once();
          goto LABEL_7;
        }
      }

      v32 = [*(v30 + OBJC_IVAR____TtC22HomeAutomationInternal7Service_delegate) serviceType];
      v33 = sub_252E36F34();
      v35 = v34;

      if (qword_27F53F8B8 != -1)
      {
        swift_once();
      }

      v36 = off_27F546230;
      if (!*(off_27F546230 + 2))
      {
        break;
      }

      v37 = sub_252A44A10(v33, v35);
      if ((v38 & 1) == 0)
      {
        break;
      }

      v29 = *(v36[7] + 8 * v37);

      if (!v29)
      {
        goto LABEL_24;
      }

      sub_252E37A94();
      sub_252E37AC4();
      v25 = v61;
      sub_252E37AD4();
      sub_252E37AA4();
LABEL_15:
      ++v28;
      if (v31 == v26)
      {
        v39 = v62[0];
        v27 = MEMORY[0x277D84F90];
        goto LABEL_30;
      }
    }

LABEL_24:

    goto LABEL_15;
  }

  v39 = MEMORY[0x277D84F90];
LABEL_30:
  sub_252929F10(v25, 0);
  if (v39 < 0 || (v39 & 0x4000000000000000) != 0)
  {
    v40 = sub_252E378C4();
    if (!v40)
    {
      goto LABEL_53;
    }

LABEL_33:
    v62[0] = v27;
    result = sub_2529AA420(0, v40 & ~(v40 >> 63), 0);
    if ((v40 & 0x8000000000000000) == 0)
    {
      v42 = 0;
      v43 = v62[0];
      do
      {
        if ((v39 & 0xC000000000000001) != 0)
        {
          v44 = MEMORY[0x2530ADF00](v42, v39);
        }

        else
        {
          v44 = *(v39 + 8 * v42 + 32);
        }

        v45 = [*(v44 + OBJC_IVAR____TtC22HomeAutomationInternal7Service_delegate) serviceType];
        v46 = sub_252E36F34();
        v48 = v47;

        if (qword_27F53F8B8 != -1)
        {
          swift_once();
        }

        v49 = off_27F546230;
        if (*(off_27F546230 + 2) && (v50 = sub_252A44A10(v46, v48), (v51 & 1) != 0))
        {
          v52 = *(v49[7] + 8 * v50);
        }

        else
        {
          v52 = 0;
        }

        v62[0] = v43;
        v54 = *(v43 + 16);
        v53 = *(v43 + 24);
        if (v54 >= v53 >> 1)
        {
          sub_2529AA420((v53 > 1), v54 + 1, 1);
          v43 = v62[0];
        }

        ++v42;
        *(v43 + 16) = v54 + 1;
        *(v43 + 8 * v54 + 32) = v52;
      }

      while (v40 != v42);

      goto LABEL_54;
    }

    __break(1u);
  }

  else
  {
    v40 = *(v39 + 16);
    if (v40)
    {
      goto LABEL_33;
    }

LABEL_53:

    v43 = MEMORY[0x277D84F90];
LABEL_54:
    v55 = sub_252C759A0(v43);

    if (*(v55 + 16))
    {
      v56 = sub_252C759A0(&unk_2864A5378);
      v57 = sub_252938C88(v56, v55);
    }

    else
    {
      v57 = 0;
    }

    v58 = sub_252C4B5D4();

    if (v58)
    {
      v59 = v57 & v60;
      return (v59 & 1);
    }

LABEL_59:
    v59 = 0;
    return (v59 & 1);
  }

  return result;
}

uint64_t sub_252940F38(__int128 *a1)
{
  *&v253 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v2 = *(v253 - 8);
  MEMORY[0x28223BE20](v253);
  v4 = v227 - v3;
  v5 = a1[1];
  v319 = *a1;
  v320 = v5;
  v6 = *(a1 + 4);
  v231 = *(a1 + 5);
  v7 = *(a1 + 6);
  v245 = v6;
  v246 = v7;
  v8 = *(a1 + 72);
  v317 = *(a1 + 56);
  v318 = v8;
  v236 = *(a1 + 88);
  v9 = *(a1 + 13);
  v10 = a1[7];
  v11 = *(a1 + 16);
  v12 = *(a1 + 17);
  v238 = *(a1 + 18);
  v239 = v12;
  v14 = *(a1 + 19);
  v13 = *(a1 + 20);
  v243 = v9;
  v244 = v14;
  v233 = v13;
  v232 = *(a1 + 21);
  v15 = a1[12];
  v313 = a1[11];
  v314 = v15;
  v315 = a1[13];
  v316 = v10;
  v16 = *(a1 + 28);
  v241 = v11;
  v242 = v16;
  v17 = *(a1 + 312);
  v309 = *(a1 + 296);
  v310 = v17;
  v18 = *(a1 + 344);
  v311 = *(a1 + 328);
  v312 = v18;
  v19 = *(a1 + 248);
  v305 = *(a1 + 232);
  v306 = v19;
  v20 = *(a1 + 280);
  v307 = *(a1 + 264);
  v308 = v20;
  v240 = *(a1 + 45);
  *(v304 + 13) = *(a1 + 381);
  v304[0] = a1[23];
  v303 = *(a1 + 389);
  v21 = *(a1 + 438);
  v297 = *(a1 + 422);
  v298 = v21;
  v22 = *(a1 + 406);
  v295 = *(a1 + 390);
  v296 = v22;
  v302 = *(a1 + 251);
  v23 = *(a1 + 486);
  v300 = *(a1 + 470);
  v301 = v23;
  v299 = *(a1 + 454);
  if (qword_27F53F4E8 == -1)
  {
    goto LABEL_2;
  }

LABEL_205:
  swift_once();
LABEL_2:
  v237 = sub_252E36AD4();
  v227[1] = __swift_project_value_buffer(v237, qword_27F544D60);
  v24 = sub_252E36AC4();
  v25 = sub_252E374C4();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    *v26 = 0;
    _os_log_impl(&dword_252917000, v24, v25, "Creating Home Filters", v26, 2u);
    MEMORY[0x2530AED00](v26, -1, -1);
  }

  v27 = sub_252A47B1C(v239);
  v249 = sub_252A47B1C(v238);
  v28 = *(v27 + 2);
  v29 = MEMORY[0x277D84F90];
  v250 = v27;
  if (v28)
  {
    *&v255 = MEMORY[0x277D84F90];
    sub_2529AA500(0, v28, 0);
    v29 = v255;
    v30 = v27 + 32;
    if (qword_27F53F2A0 != -1)
    {
      swift_once();
    }

    v31 = off_27F541CD0;
    do
    {
      if (v31[2] && (v32 = sub_252A488EC(), (v33 & 1) != 0))
      {
        LOBYTE(v294) = *(v31[7] + v32);
        AccessoryTypeSemantic.rawValue.getter();
        sub_252E362F4();
        v34 = 0;
      }

      else
      {
        v34 = 1;
      }

      v35 = sub_252E36324();
      (*(*(v35 - 8) + 56))(v4, v34, 1, v35);
      *&v255 = v29;
      v37 = *(v29 + 16);
      v36 = *(v29 + 24);
      if (v37 >= v36 >> 1)
      {
        sub_2529AA500((v36 > 1), v37 + 1, 1);
        v29 = v255;
      }

      *(v29 + 16) = v37 + 1;
      sub_2529439A0(v4, v29 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v37);
      v30 += 8;
      --v28;
    }

    while (v28);
  }

  v38 = *(v245 + 16);
  v39 = (v245 + 32);
  v40 = (v245 + 32);
  while (v38)
  {
    v42 = *v40;
    if (v42 > 1 && v42 != 3 && v42 != 4)
    {
LABEL_37:

LABEL_38:
      v50 = 1;
      goto LABEL_39;
    }

    v41 = sub_252E37DB4();

    ++v40;
    --v38;
    if (v41)
    {
      goto LABEL_38;
    }
  }

  v43 = *(v245 + 16);
  while (v43)
  {
    v45 = *v39;
    if (v45 > 2 && v45 != 4)
    {
      goto LABEL_37;
    }

    v44 = sub_252E37DB4();

    ++v39;
    --v43;
    if (v44)
    {
      goto LABEL_38;
    }
  }

  v46 = *(v236 + 16);
  v47 = (v236 + 32);
  while (2)
  {
    v49 = v46-- != 0;
    v50 = v49;
    if (v49)
    {
      switch(*v47)
      {
        case 1:
        case 2:
        case 3:
        case 4:
        case 5:
        case 6:
        case 7:
        case 8:
        case 9:
        case 0xA:
        case 0xB:
        case 0xC:
        case 0xD:
        case 0xE:
        case 0xF:
        case 0x10:
        case 0x11:
        case 0x12:
        case 0x13:
        case 0x14:
          v48 = sub_252E37DB4();

          ++v47;
          if ((v48 & 1) == 0)
          {
            continue;
          }

          break;
        default:
          goto LABEL_37;
      }
    }

    break;
  }

LABEL_39:
  v51 = v303;
  v252 = *(v250 + 2);
  if (!v252 && !*(v249 + 2) && !*(v244 + 16) && !*(v243 + 16) && !*(v242 + 16) && !*(v246 + 16) && !*(v241 + 16) && !*(v254 + 16) && !*(v232 + 16))
  {
    v52 = v236;

    v53 = sub_2529A6F34(0, v52);

    if (((v50 | v53 | v51) & 1) == 0)
    {

      sub_252CC3D90(0xD000000000000029, 0x8000000252E6A0B0, 0xD000000000000086, 0x8000000252E69FE0);
      return MEMORY[0x277D84F90];
    }
  }

  LODWORD(v248) = v51;
  if (qword_27F53F498 != -1)
  {
    swift_once();
  }

  v251 = __swift_project_value_buffer(v237, qword_27F544C70);
  *&v255 = 0;
  *(&v255 + 1) = 0xE000000000000000;
  sub_252E379F4();

  *&v255 = 0xD000000000000018;
  *(&v255 + 1) = 0x8000000252E69F80;
  v54 = MEMORY[0x2530AD730](v29, v253);
  v56 = v55;

  MEMORY[0x2530AD570](v54, v56);

  MEMORY[0x2530AD570](0xD000000000000013, 0x8000000252E69FA0);
  v57 = MEMORY[0x277D837D0];
  v58 = MEMORY[0x2530AD730](v244, MEMORY[0x277D837D0]);
  MEMORY[0x2530AD570](v58);

  MEMORY[0x2530AD570](44, 0xE100000000000000);
  v59 = v255;
  *&v255 = 0;
  *(&v255 + 1) = 0xE000000000000000;
  sub_252E379F4();

  *&v255 = 0x203A736D6F6F7220;
  *(&v255 + 1) = 0xE800000000000000;
  v60 = MEMORY[0x2530AD730](v243, v57);
  MEMORY[0x2530AD570](v60);

  MEMORY[0x2530AD570](0x3A73656E6F7A202CLL, 0xE900000000000020);
  v61 = MEMORY[0x2530AD730](v242, v57);
  MEMORY[0x2530AD570](v61);

  MEMORY[0x2530AD570](0x203A656D6F68202CLL, 0xE800000000000000);
  v62 = MEMORY[0x2530AD730](v246, v57);
  MEMORY[0x2530AD570](v62);

  MEMORY[0x2530AD570](44, 0xE100000000000000);
  v63 = v255;
  v255 = v59;

  MEMORY[0x2530AD570](v63, *(&v63 + 1));

  v64 = v255;
  *&v255 = 0;
  *(&v255 + 1) = 0xE000000000000000;
  sub_252E379F4();

  *&v255 = 0x3A7370756F726720;
  *(&v255 + 1) = 0xE900000000000020;
  v65 = MEMORY[0x2530AD730](v254, v57);
  MEMORY[0x2530AD570](v65);

  MEMORY[0x2530AD570](0x3A73656E65637320, 0xE900000000000020);
  v66 = v241;
  v67 = MEMORY[0x2530AD730](v241, v57);
  MEMORY[0x2530AD570](v67);

  v68 = v255;
  v255 = v64;

  MEMORY[0x2530AD570](v68, *(&v68 + 1));

  v69 = v255;
  *&v255 = 0;
  *(&v255 + 1) = 0xE000000000000000;
  sub_252E379F4();

  *&v255 = 0xD000000000000013;
  *(&v255 + 1) = 0x8000000252E69FC0;
  if (v50)
  {
    v70 = 1702195828;
  }

  else
  {
    v70 = 0x65736C6166;
  }

  if (v50)
  {
    v71 = 0xE400000000000000;
  }

  else
  {
    v71 = 0xE500000000000000;
  }

  MEMORY[0x2530AD570](v70, v71);

  v72 = v255;
  v255 = v69;

  MEMORY[0x2530AD570](v72, *(&v72 + 1));

  v230 = " hasAllQuantifier: ";
  sub_252CC3D90(v255, *(&v255 + 1), 0xD000000000000086, 0x8000000252E69FE0);

  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544B80, &unk_252E3C190);
  v73 = swift_allocObject();
  v253 = xmmword_252E3C130;
  *(v73 + 16) = xmmword_252E3C130;
  type metadata accessor for HomeFilter.Builder();
  swift_allocObject();
  v75 = HomeFilter.Builder.init()();
  *(v73 + 32) = v74;
  if (*(v66 + 16))
  {

    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v76 = *(v66 + 16);
    v77 = MEMORY[0x277D84F90];
    if (v76)
    {
      *&v255 = MEMORY[0x277D84F90];
      sub_252E37AB4();
      v78 = (v66 + 40);
      do
      {
        v80 = *(v78 - 1);
        v79 = *v78;
        v81 = swift_allocObject();
        *(v81 + 48) = 0u;
        *(v81 + 64) = 0u;
        *(v81 + 80) = 0u;
        *(v81 + 96) = 0u;
        *(v81 + 112) = 0u;
        *(v81 + 128) = 0u;
        *(v81 + 144) = 0u;
        *(v81 + 160) = 0u;
        *(v81 + 175) = 0;
        *(v81 + 16) = 0;
        *(v81 + 24) = v80;
        *(v81 + 32) = v79;
        *(v81 + 40) = 5;

        sub_252E37A94();
        sub_252E37AC4();
        sub_252E37AD4();
        sub_252E37AA4();
        v78 += 2;
        --v76;
      }

      while (v76);
      v77 = v255;
    }

    goto LABEL_214;
  }

  if (v248)
  {

    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v82 = swift_allocObject();
    *(v82 + 16) = v253;
    swift_allocObject();
    v83.n128_f64[0] = HomeFilter.Builder.init()();
    v85 = (*(*v84 + 744))(1, v83);

    v77 = v82;
    *(v82 + 32) = v85;
    goto LABEL_214;
  }

  *&v255 = MEMORY[0x277D84F90];
  v86 = *(v244 + 16);
  if ((v73 & 0xC000000000000001) != 0)
  {
    v87 = MEMORY[0x2530ADF00](0, v73, v75);
    if (v86)
    {
      goto LABEL_66;
    }

    goto LABEL_73;
  }

  if (*((v73 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v87 = v74;

    if (v86)
    {
LABEL_66:
      *&v253 = v73 + 32;
      v88 = *(*v87 + 768);
      v4 = *v87 + 768;
      v89 = (v244 + 40);
      do
      {
        v90 = *(v89 - 1);
        v91 = *v89;

        v93 = *v88(v92);
        (*(v93 + 576))(v90, v91);

        MEMORY[0x2530AD700](v94);
        if (*((v255 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v255 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_252E372A4();
        }

        sub_252E372D4();
        v89 += 2;
        --v86;
      }

      while (v86);
      v2 = v255;

      goto LABEL_75;
    }

LABEL_73:

    MEMORY[0x2530AD700](v95);
    if (*((v255 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v255 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      goto LABEL_299;
    }

    goto LABEL_74;
  }

  while (1)
  {
    __break(1u);
LABEL_299:
    sub_252E372A4();
LABEL_74:
    sub_252E372D4();

    v2 = v255;
LABEL_75:
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    *&v255 = MEMORY[0x277D84F90];
    if (v2 >> 62)
    {
      v96 = sub_252E378C4();
    }

    else
    {
      v96 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v97 = MEMORY[0x277D84F90];
    if (v96)
    {
      v98 = 0;
      v99 = *(v232 + 16);
      v251 = v2 & 0xC000000000000001;
      v228 = v2 + 32;
      v229 = v2 & 0xFFFFFFFFFFFFFF8;
      v234 = (v232 + 40);
      v235 = v99;
      v247 = v96;
      v248 = v2;
      while (1)
      {
        if (v251)
        {
          v100 = MEMORY[0x2530ADF00](v98, v2);
          v101 = __OFADD__(v98++, 1);
          if (v101)
          {
            goto LABEL_193;
          }
        }

        else
        {
          if (v98 >= *(v229 + 16))
          {
            goto LABEL_199;
          }

          v100 = *(v228 + 8 * v98);

          v101 = __OFADD__(v98++, 1);
          if (v101)
          {
LABEL_193:
            __break(1u);
LABEL_194:
            __break(1u);
LABEL_195:
            __break(1u);
            goto LABEL_196;
          }
        }

        if (v99)
        {
          *&v253 = v98;
          v4 = *(*v100 + 768);
          v102 = v234;
          do
          {
            v104 = *(v102 - 1);
            v103 = *v102;

            v106 = *(v4)(v105);
            (*(v106 + 608))(v104, v103);

            MEMORY[0x2530AD700](v107);
            if (*((v255 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v255 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_252E372A4();
            }

            sub_252E372D4();
            v102 += 2;
            --v99;
          }

          while (v99);
          v97 = v255;

          v96 = v247;
          v2 = v248;
          v98 = v253;
          v99 = v235;
          if (v253 == v247)
          {
            break;
          }
        }

        else
        {

          MEMORY[0x2530AD700](v108);
          if (*((v255 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v255 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_252E372A4();
          }

          sub_252E372D4();

          v97 = v255;
          if (v98 == v96)
          {
            break;
          }
        }
      }
    }

    *&v255 = MEMORY[0x277D84F90];
    if (v97 >> 62)
    {
      v109 = sub_252E378C4();
    }

    else
    {
      v109 = *((v97 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v2 = MEMORY[0x277D84F90];
    if (v109)
    {
      v110 = 0;
      v4 = *(v243 + 16);
      v251 = v97 & 0xC000000000000001;
      v228 = v97 + 32;
      v229 = v97 & 0xFFFFFFFFFFFFFF8;
      v234 = (v243 + 40);
      v235 = v4;
      v247 = v97;
      v248 = v109;
      while (1)
      {
        if (v251)
        {
          v111 = MEMORY[0x2530ADF00](v110, v97);
          v101 = __OFADD__(v110++, 1);
          if (v101)
          {
            goto LABEL_194;
          }
        }

        else
        {
          if (v110 >= *(v229 + 16))
          {
            goto LABEL_200;
          }

          v111 = *(v228 + 8 * v110);

          v101 = __OFADD__(v110++, 1);
          if (v101)
          {
            goto LABEL_194;
          }
        }

        if (v4)
        {
          *&v253 = v110;
          v112 = *(*v111 + 768);
          v113 = v234;
          v114 = v4;
          do
          {
            v115 = *(v113 - 1);
            v116 = *v113;

            v118 = *v112(v117);
            (*(v118 + 680))(v115, v116);

            MEMORY[0x2530AD700](v119);
            if (*((v255 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v255 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_252E372A4();
            }

            sub_252E372D4();
            v113 += 2;
            --v114;
          }

          while (v114);
          v2 = v255;

          v97 = v247;
          v109 = v248;
          v110 = v253;
          v4 = v235;
          if (v253 == v248)
          {
            break;
          }
        }

        else
        {

          MEMORY[0x2530AD700](v120);
          if (*((v255 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v255 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_252E372A4();
          }

          sub_252E372D4();

          v2 = v255;
          if (v110 == v109)
          {
            break;
          }
        }
      }
    }

    *&v255 = MEMORY[0x277D84F90];
    if (v2 >> 62)
    {
      v121 = sub_252E378C4();
    }

    else
    {
      v121 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v122 = MEMORY[0x277D84F90];
    if (v121)
    {
      v123 = 0;
      v124 = *(v242 + 16);
      v251 = v2 & 0xC000000000000001;
      v228 = v2 + 32;
      v229 = v2 & 0xFFFFFFFFFFFFFF8;
      v234 = (v242 + 40);
      v235 = v124;
      v247 = v121;
      v248 = v2;
      while (1)
      {
        if (v251)
        {
          v125 = MEMORY[0x2530ADF00](v123, v2);
          v101 = __OFADD__(v123++, 1);
          if (v101)
          {
            goto LABEL_195;
          }
        }

        else
        {
          if (v123 >= *(v229 + 16))
          {
            goto LABEL_201;
          }

          v125 = *(v228 + 8 * v123);

          v101 = __OFADD__(v123++, 1);
          if (v101)
          {
            goto LABEL_195;
          }
        }

        if (v124)
        {
          *&v253 = v123;
          v126 = *(*v125 + 768);
          v4 = *v125 + 768;
          v127 = v234;
          v128 = v124;
          do
          {
            v129 = *(v127 - 1);
            v130 = *v127;

            v132 = *v126(v131);
            (*(v132 + 648))(v129, v130);

            MEMORY[0x2530AD700](v133);
            if (*((v255 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v255 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_252E372A4();
            }

            sub_252E372D4();
            v127 += 2;
            --v128;
          }

          while (v128);
          v122 = v255;

          v121 = v247;
          v2 = v248;
          v123 = v253;
          v124 = v235;
          if (v253 == v247)
          {
            break;
          }
        }

        else
        {

          MEMORY[0x2530AD700](v134);
          if (*((v255 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v255 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_252E372A4();
          }

          sub_252E372D4();

          v122 = v255;
          if (v123 == v121)
          {
            break;
          }
        }
      }
    }

    *&v255 = MEMORY[0x277D84F90];
    if (v122 >> 62)
    {
      v2 = sub_252E378C4();
    }

    else
    {
      v2 = *((v122 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v135 = MEMORY[0x277D84F90];
    if (v2)
    {
      v4 = 0;
      *&v253 = v122 & 0xC000000000000001;
      v234 = (v122 + 32);
      v235 = v122 & 0xFFFFFFFFFFFFFF8;
      v247 = (v250 + 32);
      v248 = v2;
      v251 = v122;
      while (1)
      {
        if (v253)
        {
          v136 = MEMORY[0x2530ADF00](v4, v122);
        }

        else
        {
          if (v4 >= *(v235 + 16))
          {
            goto LABEL_202;
          }

          v136 = v234[v4];
        }

        v101 = __OFADD__(v4++, 1);
        v137 = v252;
        if (v101)
        {
          break;
        }

        if (v252)
        {
          v138 = *(*v136 + 768);
          v139 = v247;
          do
          {
            v140 = *v139++;
            v141 = *v138();
            (*(v141 + 624))(v140);

            MEMORY[0x2530AD700](v142);
            if (*((v255 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v255 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_252E372A4();
            }

            sub_252E372D4();
            --v137;
          }

          while (v137);
          v135 = v255;

          v122 = v251;
          v2 = v248;
          if (v4 == v248)
          {
            goto LABEL_154;
          }
        }

        else
        {

          MEMORY[0x2530AD700](v143);
          if (*((v255 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v255 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_252E372A4();
          }

          sub_252E372D4();

          v135 = v255;
          if (v4 == v2)
          {
            goto LABEL_154;
          }
        }
      }

LABEL_196:
      __break(1u);
LABEL_197:
      __break(1u);
LABEL_198:
      __break(1u);
LABEL_199:
      __break(1u);
LABEL_200:
      __break(1u);
LABEL_201:
      __break(1u);
LABEL_202:
      __break(1u);
LABEL_203:
      __break(1u);
LABEL_204:
      __break(1u);
      goto LABEL_205;
    }

LABEL_154:

    *&v255 = MEMORY[0x277D84F90];
    if (v135 >> 62)
    {
      v144 = sub_252E378C4();
    }

    else
    {
      v144 = *((v135 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v2 = MEMORY[0x277D84F90];
    if (v144)
    {
      v145 = 0;
      v146 = *(v249 + 2);
      v252 = v135;
      *&v253 = v135 & 0xC000000000000001;
      v235 = v135 + 32;
      v247 = v135 & 0xFFFFFFFFFFFFFF8;
      v248 = (v249 + 32);
      v250 = v146;
      v251 = v144;
      while (1)
      {
        if (v253)
        {
          v147 = MEMORY[0x2530ADF00](v145, v135);
          v101 = __OFADD__(v145++, 1);
          if (v101)
          {
            goto LABEL_197;
          }
        }

        else
        {
          if (v145 >= *(v247 + 16))
          {
            goto LABEL_203;
          }

          v147 = *(v235 + 8 * v145);

          v101 = __OFADD__(v145++, 1);
          if (v101)
          {
            goto LABEL_197;
          }
        }

        if (v146)
        {
          v148 = *(*v147 + 768);
          v4 = *v147 + 768;
          v149 = v248;
          do
          {
            v150 = *v149++;
            v151 = *v148();
            (*(v151 + 600))(v150);

            MEMORY[0x2530AD700](v152);
            if (*((v255 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v255 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_252E372A4();
            }

            sub_252E372D4();
            --v146;
          }

          while (v146);
          v2 = v255;

          v144 = v251;
          v135 = v252;
          v146 = v250;
          if (v145 == v251)
          {
            break;
          }
        }

        else
        {

          MEMORY[0x2530AD700](v153);
          if (*((v255 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v255 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_252E372A4();
          }

          sub_252E372D4();

          v2 = v255;
          if (v145 == v144)
          {
            break;
          }
        }
      }
    }

    *&v255 = MEMORY[0x277D84F90];
    if (v2 >> 62)
    {
      v154 = sub_252E378C4();
      v155 = v254;
      if (v154)
      {
LABEL_176:
        v156 = 0;
        v157 = *(v155 + 16);
        v252 = v154;
        *&v253 = v2 & 0xC000000000000001;
        v247 = v2 + 32;
        v248 = v2 & 0xFFFFFFFFFFFFFF8;
        v249 = (v155 + 40);
        v250 = v157;
        v251 = v2;
        while (1)
        {
          if (v253)
          {
            v4 = MEMORY[0x2530ADF00](v156, v2);
            v101 = __OFADD__(v156++, 1);
            if (v101)
            {
              goto LABEL_198;
            }
          }

          else
          {
            if (v156 >= *(v248 + 16))
            {
              goto LABEL_204;
            }

            v4 = *(v247 + 8 * v156);

            v101 = __OFADD__(v156++, 1);
            if (v101)
            {
              goto LABEL_198;
            }
          }

          if (v157)
          {
            v160 = *(*v4 + 768);
            v161 = v249;
            v162 = v157;
            do
            {
              v163 = *(v161 - 1);
              v164 = *v161;

              v166 = *v160(v165);
              (*(v166 + 664))(v163, v164);

              MEMORY[0x2530AD700](v167);
              if (*((v255 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v255 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                sub_252E372A4();
              }

              sub_252E372D4();
              v161 += 16;
              --v162;
            }

            while (v162);
            v158 = v255;

            v159 = v158;
            v2 = v251;
            v154 = v252;
            v157 = v250;
          }

          else
          {

            MEMORY[0x2530AD700](v168);
            if (*((v255 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v255 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_252E372A4();
            }

            sub_252E372D4();

            v159 = v255;
          }

          if (v156 == v154)
          {
            goto LABEL_213;
          }
        }
      }
    }

    else
    {
      v154 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v155 = v254;
      if (v154)
      {
        goto LABEL_176;
      }
    }

    v159 = MEMORY[0x277D84F90];
LABEL_213:
    v169 = v159;

    v77 = v169;
LABEL_214:
    v252 = *(v246 + 16);
    *&v253 = v77;
    if (v252)
    {
      break;
    }

    v183 = *(v236 + 16);
    v4 = v236 + 32;
    while (2)
    {
      if (!v183)
      {
        v172 = v253;
        goto LABEL_268;
      }

      switch(*v4)
      {
        case 1:
        case 2:
        case 3:
        case 4:
        case 5:
        case 6:
        case 7:
        case 8:
        case 9:
        case 0xA:
        case 0xB:
        case 0xC:
        case 0xD:
        case 0xE:
        case 0xF:
        case 0x10:
        case 0x11:
        case 0x12:
        case 0x13:
        case 0x14:
          v184 = sub_252E37DB4();

          ++v4;
          --v183;
          if ((v184 & 1) == 0)
          {
            continue;
          }

          break;
        default:

          break;
      }

      break;
    }

    v185 = type metadata accessor for HomeStore(0);
    v186 = static HomeStore.shared.getter(v185);
    v187 = sub_2529D9114();

    if (v187)
    {
      v189 = *(v187 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
      v190 = *(v187 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8);

      v172 = v253;
      goto LABEL_241;
    }

    v191 = static HomeStore.shared.getter(v188);
    v192 = sub_2529F1BFC();

    v172 = v253;
    if (v192)
    {
      v189 = *(v192 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
      v190 = *(v192 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8);

LABEL_240:

      goto LABEL_241;
    }

    v203 = static HomeStore.shared.getter(v193);
    v204 = sub_2529D8DC0();

    if (v204 >> 62)
    {
      v205 = sub_252E378C4();
    }

    else
    {
      v205 = *((v204 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v205 != 1)
    {
      goto LABEL_268;
    }

    v207 = static HomeStore.shared.getter(v206);
    v208 = sub_2529D8DC0();

    if (v208 >> 62)
    {
      result = sub_252E378C4();
      if (!result)
      {
        goto LABEL_264;
      }
    }

    else
    {
      result = *((v208 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!result)
      {
        goto LABEL_264;
      }
    }

    if ((v208 & 0xC000000000000001) == 0)
    {
      if (!*((v208 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        return result;
      }

      v210 = *(v208 + 32);

      v189 = *(v210 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
      v190 = *(v210 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8);

      goto LABEL_240;
    }

    v226 = MEMORY[0x2530ADF00](0, v208);

    v189 = *(v226 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
    v190 = *(v226 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8);

    swift_unknownObjectRelease();
LABEL_241:
    *&v255 = MEMORY[0x277D84F90];
    if (v172 >> 62)
    {
      v194 = sub_252E378C4();
      if (!v194)
      {
LABEL_266:
        v202 = MEMORY[0x277D84F90];
LABEL_267:

        v172 = v202;
        goto LABEL_268;
      }
    }

    else
    {
      v194 = *((v172 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v194)
      {
        goto LABEL_266;
      }
    }

    if (v194 >= 1)
    {
      v195 = 0;
      v196 = v172 & 0xC000000000000001;
      do
      {
        if (v196)
        {
          v197 = MEMORY[0x2530ADF00](v195, v172);
        }

        else
        {
          v197 = *(v172 + 8 * v195 + 32);
        }

        v198 = *(*v197 + 768);

        v200 = *v198(v199);
        (*(v200 + 632))(v189, v190);

        MEMORY[0x2530AD700](v201);
        if (*((v255 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v255 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_252E372A4();
        }

        ++v195;
        sub_252E372D4();

        v172 = v253;
      }

      while (v194 != v195);
      v202 = v255;
      goto LABEL_267;
    }

    __break(1u);
  }

  *&v255 = MEMORY[0x277D84F90];
  if (v77 >> 62)
  {
    goto LABEL_262;
  }

  v170 = *((v77 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v170)
  {
    do
    {
      v171 = 0;
      v250 = v170;
      v251 = v77 & 0xC000000000000001;
      v247 = v77 + 32;
      v248 = v77 & 0xFFFFFFFFFFFFFF8;
      v249 = (v246 + 40);
      while (v251)
      {
        v173 = MEMORY[0x2530ADF00](v171);
        v101 = __OFADD__(v171, 1);
        v174 = v171 + 1;
        if (v101)
        {
          goto LABEL_260;
        }

LABEL_225:
        v254 = v174;
        v175 = *(*v173 + 768);
        v176 = v249;
        v177 = v252;
        do
        {
          v178 = *(v176 - 1);
          v179 = *v176;

          v181 = *v175(v180);
          (*(v181 + 632))(v178, v179);

          MEMORY[0x2530AD700](v182);
          if (*((v255 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v255 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_252E372A4();
          }

          sub_252E372D4();
          v176 += 16;
          --v177;
        }

        while (v177);
        v172 = v255;

        v171 = v254;
        v77 = v253;
        if (v254 == v250)
        {
          goto LABEL_264;
        }
      }

      if (v171 >= *(v248 + 16))
      {
        goto LABEL_261;
      }

      v173 = *(v247 + 8 * v171);

      v101 = __OFADD__(v171, 1);
      v174 = v171 + 1;
      if (!v101)
      {
        goto LABEL_225;
      }

LABEL_260:
      __break(1u);
LABEL_261:
      __break(1u);
LABEL_262:
      v211 = v77;
      v212 = sub_252E378C4();
      v77 = v211;
      v170 = v212;
    }

    while (v212);
  }

  v172 = MEMORY[0x277D84F90];
LABEL_264:

LABEL_268:
  v213 = v172 >> 62;
  if (v172 >> 62)
  {
    goto LABEL_294;
  }

  if (*((v172 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 101)
  {
    goto LABEL_270;
  }

LABEL_273:
  *&v255 = MEMORY[0x277D84F90];
  if (v213)
  {
    v217 = sub_252E378C4();
    if (v217)
    {
      goto LABEL_275;
    }
  }

  else
  {
    v217 = *((v172 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v217)
    {
LABEL_275:
      v218 = 0;
      v213 = v172 & 0xC000000000000001;
      while (1)
      {
        if (v213)
        {
          v219 = MEMORY[0x2530ADF00](v218, v172);
          v220 = v218 + 1;
          if (__OFADD__(v218, 1))
          {
            goto LABEL_292;
          }
        }

        else
        {
          if (v218 >= *((v172 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_293;
          }

          v219 = *(v172 + 8 * v218 + 32);

          v220 = v218 + 1;
          if (__OFADD__(v218, 1))
          {
LABEL_292:
            __break(1u);
LABEL_293:
            __break(1u);
LABEL_294:
            if (sub_252E378C4() < 101)
            {
              goto LABEL_273;
            }

LABEL_270:
            v214 = sub_252E36AC4();
            v215 = sub_252E374B4();
            if (os_log_type_enabled(v214, v215))
            {
              v216 = swift_slowAlloc();
              *v216 = 0;
              _os_log_impl(&dword_252917000, v214, v215, "Count of Home Filters created is high", v216, 2u);
              MEMORY[0x2530AED00](v216, -1, -1);
            }

            goto LABEL_273;
          }
        }

        (*(*v219 + 760))();

        MEMORY[0x2530AD700](v221);
        if (*((v255 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v255 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_252E372A4();
        }

        sub_252E372D4();
        ++v218;
        if (v220 == v217)
        {
          v222 = v255;
          goto LABEL_288;
        }
      }
    }
  }

  v222 = MEMORY[0x277D84F90];
LABEL_288:

  if (qword_27F53F4F8 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v237, qword_27F544D90);
  *&v255 = 0;
  *(&v255 + 1) = 0xE000000000000000;
  sub_252E379F4();
  v294 = v255;
  MEMORY[0x2530AD570](0xD000000000000019, 0x8000000252E6A070);
  v223 = type metadata accessor for HomeFilter();
  v224 = MEMORY[0x2530AD730](v222, v223);
  MEMORY[0x2530AD570](v224);

  MEMORY[0x2530AD570](0xD00000000000001ALL, 0x8000000252E6A090);
  v255 = v319;
  v256 = v320;
  v260 = v317;
  v257 = v245;
  v258 = v231;
  v259 = v246;
  v261 = v318;
  v262 = v236;
  v263 = v243;
  v264 = v316;
  v265 = v241;
  v266 = v239;
  v267 = v238;
  v268 = v244;
  v269 = v233;
  v270 = v232;
  v271 = v313;
  v272 = v314;
  v273 = v315;
  v279 = v309;
  v280 = v310;
  v281 = v311;
  v282 = v312;
  v277 = v307;
  v278 = v308;
  v275 = v305;
  v276 = v306;
  v274 = v242;
  v283 = v240;
  *&v284[13] = *(v304 + 13);
  *v284 = v304[0];
  v285 = v303;
  v288 = v297;
  v289 = v298;
  v286 = v295;
  v287 = v296;
  v291 = v300;
  v292 = v301;
  v290 = v299;
  v293 = v302;
  v225 = HomeAutomationIntent.description.getter();
  MEMORY[0x2530AD570](v225);

  sub_252CC3D90(v294, *(&v294 + 1), 0xD000000000000086, v230 | 0x8000000000000000);

  return v222;
}