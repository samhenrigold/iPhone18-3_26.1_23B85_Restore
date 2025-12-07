uint64_t sub_1A94499B0(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v96 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v9 = MEMORY[0x1E69E7CC0];
LABEL_88:
    v96 = *v96;
    if (!v96)
    {
      goto LABEL_126;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_120:
      result = sub_1A938911C(v9);
      v9 = result;
    }

    v88 = v9 + 16;
    v89 = *(v9 + 2);
    if (v89 >= 2)
    {
      while (*a3)
      {
        v90 = &v9[16 * v89];
        v91 = *v90;
        v92 = &v88[2 * v89];
        v93 = v92[1];
        sub_1A944A540((*a3 + 32 * *v90), (*a3 + 32 * *v92), (*a3 + 32 * v93), v96);
        if (v4)
        {
        }

        if (v93 < v91)
        {
          goto LABEL_112;
        }

        if (v89 - 2 >= *v88)
        {
          goto LABEL_113;
        }

        *v90 = v91;
        *(v90 + 1) = v93;
        v94 = *v88 - v89;
        if (*v88 < v89)
        {
          goto LABEL_114;
        }

        v89 = *v88 - 1;
        result = memmove(v92, v92 + 2, 16 * v94);
        *v88 = v89;
        if (v89 <= 1)
        {
        }
      }

      goto LABEL_124;
    }
  }

  v7 = a4;
  v8 = 0;
  v9 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v10 = v8++;
    if (v8 < v6)
    {
      v11 = *(*a3 + 32 * v8);
      v12 = 32 * v10;
      v13 = (*a3 + 32 * v10);
      v15 = *v13;
      v14 = v13 + 8;
      v16 = v11 >> 14;
      v17 = v15 >> 14;
      v18 = v10 + 2;
      while (v6 != v18)
      {
        v19 = *v14;
        v14 += 4;
        v20 = (v16 < v17) ^ (v19 >> 14 >= v11 >> 14);
        ++v18;
        v11 = v19;
        if ((v20 & 1) == 0)
        {
          v8 = v18 - 1;
          if (v16 >= v17)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v8 = v6;
      if (v16 >= v17)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v8 < v10)
      {
        goto LABEL_117;
      }

      if (v10 < v8)
      {
        v21 = 32 * v8 - 32;
        v22 = v8;
        v23 = v10;
        do
        {
          if (v23 != --v22)
          {
            v30 = *a3;
            if (!*a3)
            {
              goto LABEL_123;
            }

            v24 = (v30 + v12);
            v25 = (v30 + v21);
            v26 = *(v24 + 2);
            v27 = *(v24 + 3);
            v28 = *v24;
            v29 = v25[1];
            *v24 = *v25;
            v24[1] = v29;
            *v25 = v28;
            *(v25 + 2) = v26;
            *(v25 + 3) = v27;
          }

          ++v23;
          v21 -= 32;
          v12 += 32;
        }

        while (v23 < v22);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v8 < v6)
    {
      if (__OFSUB__(v8, v10))
      {
        goto LABEL_116;
      }

      if (v8 - v10 < v7)
      {
        if (__OFADD__(v10, v7))
        {
          goto LABEL_118;
        }

        if (v10 + v7 < v6)
        {
          v6 = v10 + v7;
        }

        if (v6 < v10)
        {
LABEL_119:
          __break(1u);
          goto LABEL_120;
        }

        if (v8 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v8 < v10)
    {
      goto LABEL_115;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1A9389130(0, *(v9 + 2) + 1, 1, v9);
      v9 = result;
    }

    v42 = *(v9 + 2);
    v41 = *(v9 + 3);
    v43 = v42 + 1;
    if (v42 >= v41 >> 1)
    {
      result = sub_1A9389130((v41 > 1), v42 + 1, 1, v9);
      v9 = result;
    }

    *(v9 + 2) = v43;
    v44 = &v9[16 * v42];
    *(v44 + 4) = v10;
    *(v44 + 5) = v8;
    v45 = *v96;
    if (!*v96)
    {
      goto LABEL_125;
    }

    if (v42)
    {
      while (1)
      {
        v46 = v43 - 1;
        if (v43 >= 4)
        {
          break;
        }

        if (v43 == 3)
        {
          v47 = *(v9 + 4);
          v48 = *(v9 + 5);
          v57 = __OFSUB__(v48, v47);
          v49 = v48 - v47;
          v50 = v57;
LABEL_57:
          if (v50)
          {
            goto LABEL_103;
          }

          v63 = &v9[16 * v43];
          v65 = *v63;
          v64 = *(v63 + 1);
          v66 = __OFSUB__(v64, v65);
          v67 = v64 - v65;
          v68 = v66;
          if (v66)
          {
            goto LABEL_106;
          }

          v69 = &v9[16 * v46 + 32];
          v71 = *v69;
          v70 = *(v69 + 1);
          v57 = __OFSUB__(v70, v71);
          v72 = v70 - v71;
          if (v57)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v67, v72))
          {
            goto LABEL_110;
          }

          if (v67 + v72 >= v49)
          {
            if (v49 < v72)
            {
              v46 = v43 - 2;
            }

            goto LABEL_78;
          }

          goto LABEL_71;
        }

        v73 = &v9[16 * v43];
        v75 = *v73;
        v74 = *(v73 + 1);
        v57 = __OFSUB__(v74, v75);
        v67 = v74 - v75;
        v68 = v57;
LABEL_71:
        if (v68)
        {
          goto LABEL_105;
        }

        v76 = &v9[16 * v46];
        v78 = *(v76 + 4);
        v77 = *(v76 + 5);
        v57 = __OFSUB__(v77, v78);
        v79 = v77 - v78;
        if (v57)
        {
          goto LABEL_108;
        }

        if (v79 < v67)
        {
          goto LABEL_3;
        }

LABEL_78:
        v84 = v46 - 1;
        if (v46 - 1 >= v43)
        {
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
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
          goto LABEL_119;
        }

        if (!*a3)
        {
          goto LABEL_122;
        }

        v85 = *&v9[16 * v84 + 32];
        v86 = *&v9[16 * v46 + 40];
        sub_1A944A540((*a3 + 32 * v85), (*a3 + 32 * *&v9[16 * v46 + 32]), (*a3 + 32 * v86), v45);
        if (v4)
        {
        }

        if (v86 < v85)
        {
          goto LABEL_99;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_1A938911C(v9);
        }

        if (v84 >= *(v9 + 2))
        {
          goto LABEL_100;
        }

        v87 = &v9[16 * v84];
        *(v87 + 4) = v85;
        *(v87 + 5) = v86;
        result = sub_1A93CE710(v46);
        v43 = *(v9 + 2);
        if (v43 <= 1)
        {
          goto LABEL_3;
        }
      }

      v51 = &v9[16 * v43 + 32];
      v52 = *(v51 - 64);
      v53 = *(v51 - 56);
      v57 = __OFSUB__(v53, v52);
      v54 = v53 - v52;
      if (v57)
      {
        goto LABEL_101;
      }

      v56 = *(v51 - 48);
      v55 = *(v51 - 40);
      v57 = __OFSUB__(v55, v56);
      v49 = v55 - v56;
      v50 = v57;
      if (v57)
      {
        goto LABEL_102;
      }

      v58 = &v9[16 * v43];
      v60 = *v58;
      v59 = *(v58 + 1);
      v57 = __OFSUB__(v59, v60);
      v61 = v59 - v60;
      if (v57)
      {
        goto LABEL_104;
      }

      v57 = __OFADD__(v49, v61);
      v62 = v49 + v61;
      if (v57)
      {
        goto LABEL_107;
      }

      if (v62 >= v54)
      {
        v80 = &v9[16 * v46 + 32];
        v82 = *v80;
        v81 = *(v80 + 1);
        v57 = __OFSUB__(v81, v82);
        v83 = v81 - v82;
        if (v57)
        {
          goto LABEL_111;
        }

        if (v49 < v83)
        {
          v46 = v43 - 2;
        }

        goto LABEL_78;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    v7 = a4;
    if (v8 >= v6)
    {
      goto LABEL_88;
    }
  }

  v31 = *a3;
  v32 = *a3 + 32 * v8 - 32;
  v33 = v10 - v8;
LABEL_30:
  v34 = *(v31 + 32 * v8);
  v35 = v33;
  v36 = v32;
  while (1)
  {
    if (v34 >> 14 >= *v36 >> 14)
    {
LABEL_29:
      ++v8;
      v32 += 32;
      --v33;
      if (v8 != v6)
      {
        goto LABEL_30;
      }

      v8 = v6;
      goto LABEL_37;
    }

    if (!v31)
    {
      break;
    }

    v37 = *(v36 + 56);
    v38 = *(v36 + 40);
    v39 = *(v36 + 16);
    *(v36 + 32) = *v36;
    *(v36 + 48) = v39;
    *v36 = v34;
    *(v36 + 8) = v38;
    *(v36 + 24) = v37;
    v36 -= 32;
    if (__CFADD__(v35++, 1))
    {
      goto LABEL_29;
    }
  }

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
  return result;
}

uint64_t sub_1A9449F44(char *__dst, char *__src, unint64_t a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = (__src - __dst) / 24;
  v10 = a3 - __src;
  v11 = (a3 - __src) / 24;
  if (v9 < v11)
  {
    if (a4 != __dst || &__dst[24 * v9] <= a4)
    {
      memmove(a4, __dst, 24 * v9);
    }

    v12 = &v4[24 * v9];
    if (v8 < 24)
    {
LABEL_6:
      v6 = v7;
      goto LABEL_31;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_6;
      }

      if (*v6 >> 14 < *v4 >> 14)
      {
        break;
      }

      v13 = v4;
      v14 = v7 == v4;
      v4 += 24;
      if (!v14)
      {
        goto LABEL_8;
      }

LABEL_9:
      v7 += 24;
      if (v4 >= v12)
      {
        goto LABEL_6;
      }
    }

    v13 = v6;
    v14 = v7 == v6;
    v6 += 24;
    if (v14)
    {
      goto LABEL_9;
    }

LABEL_8:
    v15 = *v13;
    *(v7 + 2) = *(v13 + 2);
    *v7 = v15;
    goto LABEL_9;
  }

  if (a4 != __src || &__src[24 * v11] <= a4)
  {
    memmove(a4, __src, 24 * v11);
  }

  v12 = &v4[24 * v11];
  if (v10 >= 24 && v6 > v7)
  {
LABEL_20:
    v16 = v6 - 24;
    v5 -= 24;
    v17 = v12;
    do
    {
      v18 = (v5 + 24);
      v19 = *(v17 - 24);
      v17 -= 24;
      if (v19 >> 14 < *v16 >> 14)
      {
        if (v18 != v6)
        {
          v21 = *v16;
          *(v5 + 16) = *(v6 - 1);
          *v5 = v21;
        }

        if (v12 <= v4 || (v6 -= 24, v16 <= v7))
        {
          v6 = v16;
          goto LABEL_31;
        }

        goto LABEL_20;
      }

      if (v18 != v12)
      {
        v20 = *v17;
        *(v5 + 16) = *(v17 + 16);
        *v5 = v20;
      }

      v5 -= 24;
      v12 = v17;
    }

    while (v17 > v4);
    v12 = v17;
  }

LABEL_31:
  v22 = ((v12 - v4) * 0x2AAAAAAAAAAAAAABLL) >> 64;
  v23 = (v22 >> 2) + (v22 >> 63);
  if (v6 != v4 || v6 >= &v4[24 * v23])
  {
    memmove(v6, v4, 24 * v23);
  }

  return 1;
}

uint64_t sub_1A944A188(char *__src, char *a2, unint64_t a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = __src;
  v8 = a2 - __src;
  v9 = (a2 - __src) / 56;
  v10 = a3 - a2;
  v11 = (a3 - a2) / 56;
  if (v9 >= v11)
  {
    if (a4 != a2 || &a2[56 * v11] <= a4)
    {
      memmove(a4, a2, 56 * v11);
    }

    v12 = &v4[56 * v11];
    if (v10 < 56 || v6 <= v7)
    {
      v20 = v6;
    }

    else
    {
      v37 = v7;
      v45 = v4;
      do
      {
        v21 = (v6 - 56);
        v22 = (v12 - 56);
        v5 -= 56;
        v38 = v6 - 56;
        while (1)
        {
          v25 = v22 + 56;
          v26 = (v5 + 56);
          sub_1A9448584(v22, v44);
          sub_1A9448584(v21, v43);
          sub_1A9448584(v44, v41);
          v27 = v41[0];
          sub_1A9448584(v43, v39);
          v28 = v39[0];
          sub_1A9378138(v40);
          sub_1A9378138(v42);
          sub_1A937B960(v43, &qword_1EB387638, &qword_1A958EA50);
          sub_1A937B960(v44, &qword_1EB387638, &qword_1A958EA50);
          if (v27 >> 14 < v28 >> 14)
          {
            break;
          }

          if (v26 != v25)
          {
            v29 = *v22;
            v30 = *(v22 + 16);
            v31 = *(v22 + 32);
            *(v5 + 48) = *(v22 + 48);
            *(v5 + 16) = v30;
            *(v5 + 32) = v31;
            *v5 = v29;
          }

          v23 = v22 - 56;
          v5 -= 56;
          v24 = v22 > v45;
          v22 -= 56;
          v21 = (v6 - 56);
          if (!v24)
          {
            v12 = (v23 + 56);
            v20 = v6;
            v4 = v45;
            goto LABEL_34;
          }
        }

        v20 = v6 - 56;
        if (v26 != v6)
        {
          v32 = *v38;
          v33 = *(v6 - 40);
          v34 = *(v6 - 24);
          *(v5 + 48) = *(v6 - 1);
          *(v5 + 16) = v33;
          *(v5 + 32) = v34;
          *v5 = v32;
        }

        v4 = v45;
        if (v25 <= v45)
        {
          break;
        }

        v12 = (v22 + 56);
        v6 -= 56;
      }

      while (v38 > v37);
      v12 = (v22 + 56);
    }
  }

  else
  {
    if (a4 != __src || &__src[56 * v9] <= a4)
    {
      memmove(a4, __src, 56 * v9);
    }

    v12 = &v4[56 * v9];
    if (v8 >= 56 && v6 < v5)
    {
      while (1)
      {
        sub_1A9448584(v6, v44);
        sub_1A9448584(v4, v43);
        sub_1A9448584(v44, v41);
        v13 = v41[0];
        sub_1A9448584(v43, v39);
        v14 = v39[0];
        sub_1A9378138(v40);
        sub_1A9378138(v42);
        sub_1A937B960(v43, &qword_1EB387638, &qword_1A958EA50);
        sub_1A937B960(v44, &qword_1EB387638, &qword_1A958EA50);
        if (v13 >> 14 >= v14 >> 14)
        {
          break;
        }

        v15 = v6;
        v16 = v7 == v6;
        v6 += 56;
        if (!v16)
        {
          goto LABEL_12;
        }

LABEL_13:
        v7 += 56;
        if (v4 >= v12 || v6 >= v5)
        {
          goto LABEL_15;
        }
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 56;
      if (v16)
      {
        goto LABEL_13;
      }

LABEL_12:
      v17 = *v15;
      v18 = *(v15 + 1);
      v19 = *(v15 + 2);
      *(v7 + 6) = *(v15 + 6);
      *(v7 + 1) = v18;
      *(v7 + 2) = v19;
      *v7 = v17;
      goto LABEL_13;
    }

LABEL_15:
    v20 = v7;
  }

LABEL_34:
  v35 = (v12 - v4) / 56;
  if (v20 != v4 || v20 >= &v4[56 * v35])
  {
    memmove(v20, v4, 56 * v35);
  }

  return 1;
}

uint64_t sub_1A944A540(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 31;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 5;
  v11 = a3 - __src;
  v12 = a3 - __src + 31;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 5;
  if (v10 < v12 >> 5)
  {
    if (a4 != __dst || &__dst[32 * v10] <= a4)
    {
      memmove(a4, __dst, 32 * v10);
    }

    v14 = &v4[32 * v10];
    if (v8 < 32)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      if (*v6 >> 14 < *v4 >> 14)
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 32;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 32;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 32;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    v17 = *(v15 + 1);
    *v7 = *v15;
    *(v7 + 1) = v17;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[32 * v13] <= a4)
  {
    memmove(a4, __src, 32 * v13);
  }

  v14 = &v4[32 * v13];
  if (v11 >= 32 && v6 > v7)
  {
LABEL_24:
    v18 = v6 - 32;
    v5 -= 32;
    v19 = v14;
    do
    {
      v20 = v5 + 32;
      v21 = *(v19 - 4);
      v19 -= 32;
      if (v21 >> 14 < *v18 >> 14)
      {
        if (v20 != v6)
        {
          v23 = *(v6 - 1);
          *v5 = *v18;
          *(v5 + 1) = v23;
        }

        if (v14 <= v4 || (v6 -= 32, v18 <= v7))
        {
          v6 = v18;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      if (v20 != v14)
      {
        v22 = *(v19 + 1);
        *v5 = *v19;
        *(v5 + 1) = v22;
      }

      v5 -= 32;
      v14 = v19;
    }

    while (v19 > v4);
    v14 = v19;
  }

LABEL_35:
  v24 = v14 - v4 + (v14 - v4 < 0 ? 0x1FuLL : 0);
  if (v6 != v4 || v6 >= &v4[v24 & 0xFFFFFFFFFFFFFFE0])
  {
    memmove(v6, v4, 32 * (v24 >> 5));
  }

  return 1;
}

uint64_t sub_1A944A7D8(uint64_t result, uint64_t a2, uint64_t a3)
{
  if ((*(result + 16) & 0xE0000000000000FFLL) == 0x2000000000000000)
  {
    v5 = v3[2];
    v6 = v3[4];
    v7 = v3[5];
    v8 = *(result + 24);
    v22.n128_u64[0] = v3[3];
    v4 = v22.n128_u64[0];
    v22.n128_u64[1] = v6;
    v23 = v7;
    v9 = v3[6];
    v10 = v3[7];

    v12 = TransformableString.translate(_:)(v9, v10);
    v14 = v13;

    v19.n128_u64[0] = v12;
    v19.n128_u64[1] = v14;
    LOBYTE(v20) = 0;
    sub_1A9474C48(&v19, v8, &v22);
    v15 = v22;
    v16 = v24;
    LOBYTE(v10) = v23;
    v17 = v23 | 0x2000000000000000;
    v22.n128_u64[0] = v5;
    v22.n128_u64[1] = v4;
    v23 = v6;
    v24 = v7;
    v19 = v15;
    v20 = v17;
    v21 = v16;
    TTSMarkupSpeech.handleEventTaps(event:ssml:)(&v19, a2, a3, &type metadata for TTSMarkup.SpeechText, &protocol witness table for TTSMarkup.SpeechText);
    return sub_1A9410F88(v15.n128_i64[0], v15.n128_i64[1], v10);
  }

  return result;
}

uint64_t sub_1A944A8F4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v13 = a4;
  v14 = a5;
  v9 = sub_1A93981E4(&v12);
  (*(*(a4 - 8) + 32))(v9, a2, a4);
  v10 = *a3;
  *(v10 + 16) = a1 + 1;
  return sub_1A932D070(&v12, v10 + 40 * a1 + 32);
}

uint64_t sub_1A944A9E8()
{

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

double AudioEffectConfiguration.spec.getter@<D0>(uint64_t a1@<X8>)
{
  v2._countAndFlagsBits = sub_1A957BA38();
  TTSAudioEffect.init(rawValue:)(v2);
  if (v8 == 2)
  {
    *(a1 + 80) = 0;
    result = 0.0;
    *(a1 + 48) = 0u;
    *(a1 + 64) = 0u;
    *(a1 + 16) = 0u;
    *(a1 + 32) = 0u;
    *a1 = 0u;
  }

  else
  {
    TTSAudioEffect.spec.getter(v6);
    v4 = v6[3];
    *(a1 + 32) = v6[2];
    *(a1 + 48) = v4;
    *(a1 + 64) = v6[4];
    *(a1 + 80) = v7;
    result = *v6;
    v5 = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = v5;
  }

  return result;
}

uint64_t sub_1A944AB0C(uint64_t a1)
{
  v4 = *(*v1 + 168);

  return v4(v2);
}

uint64_t sub_1A944AB98(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 112) = a1;

  return sub_1A944B214();
}

uint64_t (*sub_1A944ABE4(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1A944AC38;
}

uint64_t sub_1A944AC38(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return sub_1A944B214();
  }

  return result;
}

uint64_t sub_1A944AC6C()
{
  v1 = sub_1A957BA58();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x1EEE9AC00](v1);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1EEE9AC00](v3);
  v8 = &v20 - v7;
  result = (*(*v0 + 160))(v6);
  v10 = result;
  v26 = *(result + 16);
  if (v26)
  {
    v11 = 0;
    v20 = (v2 + 8);
    v24 = (v2 + 32);
    v25 = v2 + 16;
    v12 = MEMORY[0x1E69E7CC0];
    v22 = v5;
    v23 = v1;
    v21 = result;
    while (v11 < *(v10 + 16))
    {
      v13 = (*(v2 + 80) + 32) & ~*(v2 + 80);
      v14 = *(v2 + 72);
      (*(v2 + 16))(v8, v10 + v13 + v14 * v11, v1);
      if (sub_1A957BA48())
      {
        v15 = *v24;
        (*v24)(v5, v8, v1);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v27 = v12;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1A944EF6C(0, *(v12 + 16) + 1, 1);
          v12 = v27;
        }

        v18 = *(v12 + 16);
        v17 = *(v12 + 24);
        if (v18 >= v17 >> 1)
        {
          sub_1A944EF6C((v17 > 1), v18 + 1, 1);
          v12 = v27;
        }

        *(v12 + 16) = v18 + 1;
        v19 = v12 + v13 + v18 * v14;
        v5 = v22;
        v1 = v23;
        result = (v15)(v19, v22, v23);
        v10 = v21;
      }

      else
      {
        result = (*v20)(v8, v1);
      }

      if (v26 == ++v11)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
LABEL_13:

    return v12;
  }

  return result;
}

uint64_t sub_1A944AEE4()
{
  swift_beginAccess();
  v1 = *(v0 + 144);

  return v1;
}

uint64_t sub_1A944AF30(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v2[18] = a1;
  v2[19] = a2;

  return (*(*v2 + 392))(0);
}

uint64_t (*sub_1A944AFC0(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1A944B014;
}

uint64_t sub_1A944B014(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return (*(**(a1 + 24) + 392))(0);
  }

  return result;
}

uint64_t sub_1A944B0AC(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 160) = a1;
}

uint64_t sub_1A944B17C(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 168) = a1;
}

uint64_t sub_1A944B214()
{
  v1 = sub_1A957BA58();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1A944AC6C();
  v6 = *(v5 + 16);
  if (v6)
  {
    v28 = v0;
    v9 = *(v2 + 16);
    v7 = v2 + 16;
    v8 = v9;
    v10 = (*(v7 + 64) + 32) & ~*(v7 + 64);
    v27[1] = v5;
    v11 = v5 + v10;
    v12 = *(v7 + 56);
    v13 = (v7 - 8);
    v14 = MEMORY[0x1E69E7CC0];
    v29 = v9;
    v9(v4, v5 + v10, v1);
    while (1)
    {
      v15._countAndFlagsBits = sub_1A957BA38();
      TTSAudioEffect.init(rawValue:)(v15);
      if (v39 == 2)
      {
        (*v13)(v4, v1);
      }

      else
      {
        v32 = v39 & 1;
        v16 = TTSAudioEffect.spec.getter(v30);
        (*v13)(v4, v1, v16);
        v35 = v30[2];
        v36 = v30[3];
        v37 = v30[4];
        v38 = v31;
        v33 = v30[0];
        v34 = v30[1];
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v14 = sub_1A944F298(0, *(v14 + 2) + 1, 1, v14);
        }

        v18 = *(v14 + 2);
        v17 = *(v14 + 3);
        if (v18 >= v17 >> 1)
        {
          v14 = sub_1A944F298((v17 > 1), v18 + 1, 1, v14);
        }

        *(v14 + 2) = v18 + 1;
        v19 = &v14[88 * v18];
        v20 = v34;
        *(v19 + 2) = v33;
        *(v19 + 3) = v20;
        v21 = v35;
        v22 = v36;
        v23 = v37;
        *(v19 + 14) = v38;
        *(v19 + 5) = v22;
        *(v19 + 6) = v23;
        *(v19 + 4) = v21;
        v8 = v29;
      }

      v11 += v12;
      if (!--v6)
      {
        break;
      }

      v8(v4, v11, v1);
    }

    v0 = v28;
  }

  else
  {

    v14 = MEMORY[0x1E69E7CC0];
  }

  v24 = *(v0 + 120);

  v25 = sub_1A944EDE0(v14, v24);

  if (v25)
  {
  }

  else
  {
    *(v0 + 120) = v14;

    sub_1A944B9D4();
  }

  return sub_1A944D51C();
}

uint64_t sub_1A944B4CC(uint64_t a1)
{
  v2 = swift_allocObject();
  sub_1A944B50C(a1);
  return v2;
}

void *sub_1A944B50C(uint64_t a1)
{
  v3 = sub_1A957BA58();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = &v41 - v9;
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v41 - v11;
  swift_defaultActor_initialize();
  v13 = MEMORY[0x1E69E7CC0];
  v1[16] = MEMORY[0x1E69E7CC0];
  v1[17] = v13;
  v1[22] = 0;
  v1[18] = 0;
  v1[19] = 0;
  v1[14] = a1;
  v1[15] = v13;
  v42 = v1;
  v14 = *(a1 + 16);

  v50 = v10;
  v49 = v14;
  if (v14)
  {
    v16 = 0;
    v48 = v4 + 16;
    v43 = (v4 + 8);
    v47 = (v4 + 32);
    v46 = v4;
    v45 = a1;
    v44 = v7;
    while (v16 < *(a1 + 16))
    {
      v17 = (*(v4 + 80) + 32) & ~*(v4 + 80);
      v18 = *(v4 + 72);
      (*(v4 + 16))(v12, a1 + v17 + v18 * v16, v3);
      if (sub_1A957BA48())
      {
        v19 = *v47;
        (*v47)(v7, v12, v3);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v54 = v13;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1A944EF6C(0, *(v13 + 16) + 1, 1);
          v13 = v54;
        }

        v22 = *(v13 + 16);
        v21 = *(v13 + 24);
        if (v22 >= v21 >> 1)
        {
          sub_1A944EF6C((v21 > 1), v22 + 1, 1);
          v13 = v54;
        }

        *(v13 + 16) = v22 + 1;
        v7 = v44;
        result = (v19)(v13 + v17 + v22 * v18, v44, v3);
        v4 = v46;
        a1 = v45;
      }

      else
      {
        result = (*v43)(v12, v3);
      }

      ++v16;
      v10 = v50;
      if (v49 == v16)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_12:

    v23 = *(v13 + 16);
    if (v23)
    {
      v25 = *(v4 + 16);
      v24 = v4 + 16;
      v49 = v25;
      v26 = v13 + ((*(v24 + 64) + 32) & ~*(v24 + 64));
      v27 = *(v24 + 56);
      v28 = (v24 - 8);
      v29 = MEMORY[0x1E69E7CC0];
      v25(v10, v26, v3);
      while (1)
      {
        v30._countAndFlagsBits = sub_1A957BA38();
        TTSAudioEffect.init(rawValue:)(v30);
        if (v60 == 2)
        {
          (*v28)(v10, v3);
        }

        else
        {
          v53 = v60 & 1;
          v31 = TTSAudioEffect.spec.getter(v51);
          (*v28)(v10, v3, v31);
          v56 = v51[2];
          v57 = v51[3];
          v58 = v51[4];
          v59 = v52;
          v54 = v51[0];
          v55 = v51[1];
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v29 = sub_1A944F298(0, *(v29 + 2) + 1, 1, v29);
          }

          v33 = *(v29 + 2);
          v32 = *(v29 + 3);
          if (v33 >= v32 >> 1)
          {
            v29 = sub_1A944F298((v32 > 1), v33 + 1, 1, v29);
          }

          *(v29 + 2) = v33 + 1;
          v34 = &v29[88 * v33];
          v35 = v55;
          *(v34 + 2) = v54;
          *(v34 + 3) = v35;
          v36 = v56;
          v37 = v57;
          v38 = v58;
          *(v34 + 14) = v59;
          *(v34 + 5) = v37;
          *(v34 + 6) = v38;
          *(v34 + 4) = v36;
          v10 = v50;
        }

        v26 += v27;
        if (!--v23)
        {
          break;
        }

        v49(v10, v26, v3);
      }
    }

    else
    {

      v29 = MEMORY[0x1E69E7CC0];
    }

    v39 = v42;
    v42[15] = v29;

    v40 = MEMORY[0x1E69E7CC0];
    v39[20] = sub_1A94506C0(MEMORY[0x1E69E7CC0]);
    v39[21] = sub_1A94507A0(v40);
    sub_1A944B9D4();
    return v39;
  }

  return result;
}

uint64_t sub_1A944B9D4()
{
  v1 = *(sub_1A944AC6C() + 16);

  if (!v1)
  {
    v148 = *(*v0 + 272);

    return v148(0, 0);
  }

  v176 = 0x75706E496E69616DLL;
  v188 = 0xD000000000000045;
  v189 = 0x80000001A95C2F40;
  swift_beginAccess();
  v2 = MEMORY[0x1E69E7CC0];
  v0[16] = MEMORY[0x1E69E7CC0];

  swift_beginAccess();
  v0[17] = v2;

  v155 = v0;
  v3 = v0[15];
  v152 = *(v3 + 16);
  if (!v152)
  {
    v36 = 0xE900000000000074;
    goto LABEL_118;
  }

  v153 = v3 + 32;

  v4 = 0;
  v160 = 0;
  v157 = 0;
  v177 = 0xE900000000000074;
LABEL_4:
  v5 = v153 + 88 * v157;
  v6 = *(v5 + 64);
  v7 = *(v5 + 80);
  v8 = *(v5 + 32);
  v185 = *(v5 + 48);
  v9 = *(v5 + 16);
  v184[0] = *v5;
  v184[1] = v9;
  v187 = v7;
  v186 = v6;
  v184[2] = v8;
  v183 = *(&v185 + 1);
  sub_1A937BE84(v184, v194);
  *&v194[0] = 0x6870617267;
  *(&v194[0] + 1) = 0xE500000000000000;
  *&v191 = v157;
  v10 = sub_1A957D3A8();
  MEMORY[0x1AC585140](v10);

  MEMORY[0x1AC585140](95, 0xE100000000000000);
  v182 = v194[0];
  *&v194[0] = 0;
  *(&v194[0] + 1) = 0xE000000000000000;
  sub_1A957CF08();

  *&v194[0] = 0xD00000000000001BLL;
  *(&v194[0] + 1) = 0x80000001A95C2FC0;
  *&v191 = v157;
  v11 = sub_1A957D3A8();
  MEMORY[0x1AC585140](v11);

  MEMORY[0x1AC585140](0xD000000000000011, 0x80000001A95C2FE0);
  v193 = v194[0];
  if ((v4 & 0x8000000000000000) != 0)
  {
    goto LABEL_131;
  }

  if (HIDWORD(v4))
  {
LABEL_132:
    __break(1u);
LABEL_133:
    __break(1u);
LABEL_134:
    __break(1u);
    goto LABEL_142;
  }

  ++v157;
  *&v194[0] = 0;
  *(&v194[0] + 1) = 0xE000000000000000;
  sub_1A957CF08();

  *&v194[0] = 0x79747265706F7270;
  *(&v194[0] + 1) = 0xE900000000000020;
  LODWORD(v191) = v4;
  v12 = sub_1A957D3A8();
  MEMORY[0x1AC585140](v12);

  MEMORY[0x1AC585140](0x3030303030783020, 0xEE00200A20303030);
  MEMORY[0x1AC585140](*&v194[0], *(&v194[0] + 1));

  v13 = MEMORY[0x1E69E7CC8];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v194[0] = v13;
  sub_1A944FDD4(v4, 0x737361707962, 0xE600000000000000, isUniquelyReferenced_nonNull_native);
  v15 = *&v194[0];
  v16 = 1 << *(v183 + 32);
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  else
  {
    v17 = -1;
  }

  v162 = v17 & *(v183 + 64);
  v154 = (v16 + 63) >> 6;

  v19 = 0;
  v156 = v176;
  v158 = v18;
  v20 = v13;
  v161 = v4;
LABEL_11:
  v178 = v15;
  v21 = v162;
  if (v162)
  {
    v180 = v20;
    v22 = v19;
    goto LABEL_17;
  }

  do
  {
    v22 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      __break(1u);
      goto LABEL_125;
    }

    if (v22 >= v154)
    {

      v130 = v193;

      sub_1A94509C8(v184);
      swift_beginAccess();
      v131 = v155[16];

      v132 = swift_isUniquelyReferenced_nonNull_native();
      v155[16] = v131;
      if (v132)
      {
        v133 = v155;
      }

      else
      {
        v144 = sub_1A944F164(0, v131[2] + 1, 1, v131);
        v133 = v155;
        v131 = v144;
        v155[16] = v144;
      }

      v135 = v131[2];
      v134 = v131[3];
      if (v135 >= v134 >> 1)
      {
        v145 = sub_1A944F164((v134 > 1), v135 + 1, 1, v131);
        v133 = v155;
        v131 = v145;
      }

      v131[2] = v135 + 1;
      v131[v135 + 4] = v20;
      v133[16] = v131;
      swift_endAccess();
      swift_beginAccess();
      v136 = v155[17];

      v137 = swift_isUniquelyReferenced_nonNull_native();
      v138 = v155;
      v155[17] = v136;
      if ((v137 & 1) == 0)
      {
        v146 = sub_1A944F164(0, v136[2] + 1, 1, v136);
        v138 = v155;
        v136 = v146;
        v155[17] = v146;
      }

      v140 = v136[2];
      v139 = v136[3];
      if (v140 >= v139 >> 1)
      {
        v147 = sub_1A944F164((v139 > 1), v140 + 1, 1, v136);
        v138 = v155;
        v136 = v147;
      }

      v136[2] = v140 + 1;
      v136[v140 + 4] = v15;
      v138[17] = v136;
      swift_endAccess();
      v141 = *(v15 + 16);
      v142 = __OFADD__(v4, v141);
      v4 += v141;
      if (v142)
      {
        goto LABEL_133;
      }

      v143 = *(v20 + 16);
      v142 = __OFADD__(v160, v143);
      v160 += v143;
      if (v142)
      {
        goto LABEL_134;
      }

      v36 = v158;

      MEMORY[0x1AC585140](v130, *(&v130 + 1));

      if (v157 == v152)
      {
        goto LABEL_123;
      }

      v176 = v156;
      v177 = v158;
      goto LABEL_4;
    }

    v21 = *(v183 + 64 + 8 * v22);
    ++v19;
  }

  while (!v21);
  v180 = v20;
LABEL_17:
  v163 = v21;
  v159 = v22;
  v23 = __clz(__rbit64(v21)) | (v22 << 6);
  v24 = (*(v183 + 48) + 16 * v23);
  v25 = *v24;
  v26 = v24[1];
  v27 = *(v183 + 56) + 88 * v23;
  v28 = *(v27 + 16);
  v194[0] = *v27;
  v194[1] = v28;
  v30 = *(v27 + 48);
  v29 = *(v27 + 64);
  v31 = *(v27 + 32);
  v197 = *(v27 + 80);
  v195 = v30;
  v196 = v29;
  v194[2] = v31;
  v192 = v182;

  sub_1A9450A1C(v194, &v191);

  MEMORY[0x1AC585140](v25, v26);
  v32 = v192;
  *&v191 = 0;
  *(&v191 + 1) = 0xE000000000000000;
  sub_1A957CF08();

  *&v191 = 544763746;
  *(&v191 + 1) = 0xE400000000000000;
  MEMORY[0x1AC585140](v32, *(&v32 + 1));
  MEMORY[0x1AC585140](32, 0xE100000000000000);
  v33 = sub_1A95040E4();
  MEMORY[0x1AC585140](v33);

  MEMORY[0x1AC585140](32, 0xE100000000000000);
  v34 = *(&v196 + 1);
  v198 = *(&v196 + 1);
  *&v192 = *(*(&v196 + 1) + 16);
  v35 = sub_1A957D3A8();
  MEMORY[0x1AC585140](v35);

  MEMORY[0x1AC585140](32, 0xE100000000000000);
  v36 = v197;
  v199 = v197;
  *&v192 = *(v197 + 16);
  v37 = sub_1A957D3A8();
  MEMORY[0x1AC585140](v37);

  MEMORY[0x1AC585140](2592, 0xE200000000000000);
  MEMORY[0x1AC585140](v191, *(&v191 + 1));

  *&v191 = 0xD000000000000012;
  *(&v191 + 1) = 0x80000001A95C3000;
  LODWORD(v192) = v4;
  v38 = sub_1A957D3A8();
  MEMORY[0x1AC585140](v38);

  MEMORY[0x1AC585140](10272, 0xE200000000000000);
  MEMORY[0x1AC585140](v32, *(&v32 + 1));
  MEMORY[0x1AC585140](0xA2029313220, 0xE600000000000000);
  MEMORY[0x1AC585140](v191, *(&v191 + 1));

  v39 = *(v34 + 16);

  if (v39)
  {
    v40 = 0;
    v41 = (v34 + 40);
    do
    {
      if (v40 >= *(v34 + 16))
      {
        goto LABEL_121;
      }

      v44 = *v41;
      if (*v41)
      {
        if (v44 == 1)
        {
          goto LABEL_142;
        }

        v45 = *(v41 - 1);
        v46 = *(v183 + 16);

        if (!v46)
        {
          goto LABEL_142;
        }

        sub_1A937A490(v45, v44);
        if ((v47 & 1) == 0)
        {
          goto LABEL_142;
        }

        v191 = v182;

        MEMORY[0x1AC585140](v45, v44);
        sub_1A9450A78(v45, v44);
        v42 = *(&v191 + 1);
        v43 = v191;
      }

      else
      {
        v42 = v177;

        v43 = v176;
      }

      ++v40;
      *&v191 = 0;
      *(&v191 + 1) = 0xE000000000000000;
      sub_1A957CF08();

      *&v191 = 0x2065726977;
      *(&v191 + 1) = 0xE500000000000000;
      MEMORY[0x1AC585140](v43, v42);

      MEMORY[0x1AC585140](32, 0xE100000000000000);
      MEMORY[0x1AC585140](v32, *(&v32 + 1));
      MEMORY[0x1AC585140](0x6D726F4673756220, 0xEA00000000007461);
      MEMORY[0x1AC585140](v191, *(&v191 + 1));

      MEMORY[0x1AC585140](10, 0xE100000000000000);
      v41 += 2;
    }

    while (v39 != v40);
  }

  sub_1A9450A8C(&v198);
  v48 = *(v36 + 16);

  if (v48)
  {
    v49 = 0;
    do
    {
      v50 = (v36 + 40 + 16 * v49);
      while (1)
      {
        if (v49 >= *(v36 + 16))
        {
          goto LABEL_122;
        }

        v51 = *v50;
        v52 = v49 + 1;
        if (*v50 == 1)
        {
          break;
        }

        if (!v51)
        {
          goto LABEL_142;
        }

        v53 = *(v50 - 1);
        v54 = *(v183 + 16);

        if (!v54)
        {
          goto LABEL_142;
        }

        sub_1A937A490(v53, v51);
        if ((v55 & 1) == 0)
        {
          goto LABEL_142;
        }

        v191 = v182;

        MEMORY[0x1AC585140](v53, v51);
        sub_1A9450A78(v53, v51);
        v57 = *(&v191 + 1);
        v56 = v191;
        *&v191 = 0x2065726977;
        *(&v191 + 1) = 0xE500000000000000;
        MEMORY[0x1AC585140](v32, *(&v32 + 1));
        MEMORY[0x1AC585140](32, 0xE100000000000000);
        MEMORY[0x1AC585140](v56, v57);

        MEMORY[0x1AC585140](0x6D726F4673756220, 0xEA00000000007461);
        MEMORY[0x1AC585140](v191, *(&v191 + 1));

        MEMORY[0x1AC585140](10, 0xE100000000000000);
        v50 += 2;
        v49 = v52;
        if (v48 == v52)
        {
          goto LABEL_40;
        }
      }

      MEMORY[0x1AC585140](10, 0xE100000000000000);
      v158 = *(&v32 + 1);
      v156 = v32;
    }

    while (v48 - 1 != v49++);
    v158 = *(&v32 + 1);
    v156 = v32;
  }

LABEL_40:
  v162 = (v163 - 1) & v163;
  sub_1A9450A8C(&v199);

  v59 = *(&v195 + 1) + 64;
  v60 = 1 << *(*(&v195 + 1) + 32);
  if (v60 < 64)
  {
    v61 = ~(-1 << v60);
  }

  else
  {
    v61 = -1;
  }

  v62 = v61 & *(*(&v195 + 1) + 64);
  v63 = (v60 + 63) >> 6;
  v170 = *(&v195 + 1);

  v64 = 0;
  v15 = v178;
  v20 = v180;
  v167 = v63;
  v169 = v59;
LABEL_46:
  v181 = v20;
  if (v62)
  {
    goto LABEL_51;
  }

  while (1)
  {
    v68 = v64 + 1;
    if (__OFADD__(v64, 1))
    {
      __break(1u);
      goto LABEL_120;
    }

    if (v68 >= v63)
    {
      break;
    }

    v62 = *(v59 + 8 * v68);
    ++v64;
    if (v62)
    {
      v64 = v68;
LABEL_51:
      v69 = __clz(__rbit64(v62)) | (v64 << 6);
      v70 = *(*(v170 + 48) + 4 * v69);
      v71 = *(v170 + 56) + 40 * v69;
      v72 = *v71;
      v36 = *(v71 + 8);
      v173 = *(v71 + 16);
      v175 = *(v71 + 20);
      v73 = *(v71 + 37);
      *&v191 = 40;
      *(&v191 + 1) = 0xE100000000000000;
      v74 = v72;
      sub_1A9327228(v72, v36);
      MEMORY[0x1AC585140](v32, *(&v32 + 1));
      MEMORY[0x1AC585140](32, 0xE100000000000000);
      *&v192 = v70;
      v75 = sub_1A957D3A8();
      MEMORY[0x1AC585140](v75);

      MEMORY[0x1AC585140](41, 0xE100000000000000);
      v76 = *(&v191 + 1);
      if ((v73 & 1) == 0)
      {
        v164 = v191;
        v81 = *(v183 + 16);

        if (v81)
        {
          sub_1A937A490(v74, v36);
          if (v82)
          {
            *&v191 = 1701996919;
            *(&v191 + 1) = 0xE400000000000000;
            *&v192 = 0x6D61726170;
            *(&v192 + 1) = 0xE500000000000000;
            sub_1A93820F4();
            v83 = sub_1A957CCD8();
            MEMORY[0x1AC585140](v83);

            MEMORY[0x1AC585140](10272, 0xE200000000000000);
            v192 = v182;

            MEMORY[0x1AC585140](v74, v36);
            sub_1A9328CAC(v74, v36);
            MEMORY[0x1AC585140](v192, *(&v192 + 1));

            MEMORY[0x1AC585140](32, 0xE100000000000000);
            LODWORD(v192) = v173;
            v84 = sub_1A957D3A8();
            MEMORY[0x1AC585140](v84);

            MEMORY[0x1AC585140](8233, 0xE200000000000000);
            MEMORY[0x1AC585140](v164, *(&v164 + 1));

            MEMORY[0x1AC585140](10, 0xE100000000000000);
            v20 = v181;

            v67 = *(&v191 + 1);
            v66 = v191;
            goto LABEL_45;
          }
        }

        *&v191 = 0xD000000000000011;
        *(&v191 + 1) = 0x80000001A95C3090;
        v150 = v74;
        v151 = v36;
LABEL_141:
        MEMORY[0x1AC585140](v150, v151);
LABEL_142:
        result = sub_1A957D0A8();
        __break(1u);
        return result;
      }

      v77 = v191;
      if (v36)
      {
        v78 = v181;

        v79 = v74;
        v80 = *(v181 + 16);
        if (!v80)
        {
LABEL_62:
          v88 = v80 + v160;
          if (!__OFADD__(v80, v160))
          {
            if ((v88 & 0x8000000000000000) == 0)
            {
              if (!HIDWORD(v88))
              {
                goto LABEL_65;
              }

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
              goto LABEL_132;
            }

LABEL_126:
            __break(1u);
            goto LABEL_127;
          }

LABEL_125:
          __break(1u);
          goto LABEL_126;
        }
      }

      else
      {
        v191 = v32;

        MEMORY[0x1AC585140](46, 0xE100000000000000);
        MEMORY[0x1AC585140](0x6D61726170, 0xE500000000000000);
        MEMORY[0x1AC585140](46, 0xE100000000000000);
        *&v192 = v70;
        v78 = v181;
        v85 = sub_1A957D3A8();
        MEMORY[0x1AC585140](v85);

        v36 = *(&v191 + 1);
        v79 = v191;
        v80 = *(v181 + 16);
        if (!v80)
        {
          goto LABEL_62;
        }
      }

      v86 = sub_1A937A490(v79, v36);
      if ((v87 & 1) == 0)
      {
        v80 = *(v78 + 16);
        goto LABEL_62;
      }

      LODWORD(v88) = *(*(v78 + 56) + 4 * v86);
LABEL_65:
      *&v191 = 0x7061724765726977;
      *(&v191 + 1) = 0xE900000000000068;
      *&v192 = 0x6D61726170;
      *(&v192 + 1) = 0xE500000000000000;
      sub_1A93820F4();
      v89 = sub_1A957CCD8();
      MEMORY[0x1AC585140](v89);

      MEMORY[0x1AC585140](32, 0xE100000000000000);
      LODWORD(v192) = v88;
      v90 = sub_1A957D3A8();
      MEMORY[0x1AC585140](v90);

      MEMORY[0x1AC585140](32, 0xE100000000000000);
      MEMORY[0x1AC585140](v77, v76);

      MEMORY[0x1AC585140](2112288, 0xE300000000000000);
      MEMORY[0x1AC585140](v79, v36);
      MEMORY[0x1AC585140](2592, 0xE200000000000000);
      v67 = *(&v191 + 1);
      v91 = v191;
      v20 = v181;
      if (*(v181 + 16) && (sub_1A937A490(v79, v36), (v92 & 1) != 0))
      {

        v66 = v91;
      }

      else
      {
        *&v191 = 0x206D61726170;
        *(&v191 + 1) = 0xE600000000000000;
        LODWORD(v192) = v88;
        v93 = sub_1A957D3A8();
        MEMORY[0x1AC585140](v93);

        if ((v175 & 1) == 0)
        {
          v190 = v173;
          *&v192 = 32;
          *(&v192 + 1) = 0xE100000000000000;
          v94 = off_1F1CFBCE0(MEMORY[0x1E69E6448]);
          MEMORY[0x1AC585140](v94);

          MEMORY[0x1AC585140](v192, *(&v192 + 1));
        }

        v65 = swift_isUniquelyReferenced_nonNull_native();
        *&v192 = v181;
        sub_1A944FDD4(v88, v79, v36, v65);

        v20 = v192;
        v192 = v191;

        MEMORY[0x1AC585140](10, 0xE100000000000000);

        MEMORY[0x1AC585140](v91, v67);

        v67 = *(&v192 + 1);
        v66 = v192;
      }

LABEL_45:
      v62 &= v62 - 1;
      MEMORY[0x1AC585140](v66, v67);

      v15 = v178;
      v63 = v167;
      v59 = v169;
      goto LABEL_46;
    }
  }

  v95 = v196;

  sub_1A9450AF4(v194);
  v96 = 0;
  v97 = v95 + 64;
  v166 = v95 + 64;
  v168 = v95;
  v98 = 1 << *(v95 + 32);
  if (v98 < 64)
  {
    v99 = ~(-1 << v98);
  }

  else
  {
    v99 = -1;
  }

  v100 = v99 & *(v95 + 64);
  v101 = (v98 + 63) >> 6;
  v165 = v101;
  while (2)
  {
    if (v100)
    {
      v179 = v15;
LABEL_82:
      v107 = __clz(__rbit64(v100)) | (v96 << 6);
      v108 = *(*(v168 + 48) + 4 * v107);
      v109 = *(v168 + 56) + 40 * v107;
      v110 = *v109;
      v111 = *(v109 + 8);
      v171 = *(v109 + 16);
      v172 = *(v109 + 20);
      v112 = *(v109 + 37);
      *&v191 = 40;
      *(&v191 + 1) = 0xE100000000000000;
      v113 = v110;
      sub_1A9327228(v110, v111);
      MEMORY[0x1AC585140](v32, *(&v32 + 1));
      MEMORY[0x1AC585140](32, 0xE100000000000000);
      *&v192 = v108;
      v114 = sub_1A957D3A8();
      MEMORY[0x1AC585140](v114);

      MEMORY[0x1AC585140](41, 0xE100000000000000);
      v174 = v191;
      if (v112)
      {
        if (v111)
        {
          v15 = v179;

          v115 = v113;
          v116 = *(v179 + 16);
          if (!v116)
          {
LABEL_93:
            v124 = v116 + v161;
            if (__OFADD__(v116, v161))
            {
              goto LABEL_128;
            }

            if ((v124 & 0x8000000000000000) != 0)
            {
              goto LABEL_129;
            }

            if (HIDWORD(v124))
            {
              goto LABEL_130;
            }

            goto LABEL_96;
          }
        }

        else
        {
          v191 = v32;

          v15 = v179;

          MEMORY[0x1AC585140](46, 0xE100000000000000);
          MEMORY[0x1AC585140](0x79747265706F7270, 0xE800000000000000);
          MEMORY[0x1AC585140](46, 0xE100000000000000);
          *&v192 = v108;
          v121 = sub_1A957D3A8();
          MEMORY[0x1AC585140](v121);

          v111 = *(&v191 + 1);
          v115 = v191;
          v116 = *(v179 + 16);
          if (!v116)
          {
            goto LABEL_93;
          }
        }

        v122 = sub_1A937A490(v115, v111);
        if ((v123 & 1) == 0)
        {
          v116 = *(v15 + 16);
          goto LABEL_93;
        }

        LODWORD(v124) = *(*(v15 + 56) + 4 * v122);
LABEL_96:
        *&v191 = 0;
        *(&v191 + 1) = 0xE000000000000000;
        sub_1A957CF08();

        *&v191 = 0x7061724765726977;
        *(&v191 + 1) = 0xE900000000000068;
        *&v192 = 0x79747265706F7270;
        *(&v192 + 1) = 0xE800000000000000;
        sub_1A93820F4();
        v125 = sub_1A957CCD8();
        MEMORY[0x1AC585140](v125);

        MEMORY[0x1AC585140](32, 0xE100000000000000);
        LODWORD(v192) = v124;
        v126 = sub_1A957D3A8();
        MEMORY[0x1AC585140](v126);

        MEMORY[0x1AC585140](32, 0xE100000000000000);
        MEMORY[0x1AC585140](v174, *(&v174 + 1));

        MEMORY[0x1AC585140](2112288, 0xE300000000000000);
        MEMORY[0x1AC585140](v115, v111);
        MEMORY[0x1AC585140](2592, 0xE200000000000000);
        v105 = *(&v191 + 1);
        v36 = v191;
        if (*(v15 + 16) && (sub_1A937A490(v115, v111), (v127 & 1) != 0))
        {

          v104 = v36;
        }

        else
        {
          *&v191 = 0x79747265706F7270;
          *(&v191 + 1) = 0xE900000000000020;
          LODWORD(v192) = v124;
          v128 = sub_1A957D3A8();
          MEMORY[0x1AC585140](v128);

          if ((v172 & 1) == 0)
          {
            v190 = v171;
            *&v192 = 32;
            *(&v192 + 1) = 0xE100000000000000;
            v129 = off_1F1CFBD08(MEMORY[0x1E69E7668]);
            MEMORY[0x1AC585140](v129);

            MEMORY[0x1AC585140](v192, *(&v192 + 1));
          }

          v102 = swift_isUniquelyReferenced_nonNull_native();
          *&v192 = v15;
          sub_1A944FDD4(v124, v115, v111, v102);

          v103 = v192;
          v192 = v191;

          MEMORY[0x1AC585140](10, 0xE100000000000000);

          MEMORY[0x1AC585140](v36, v105);

          v105 = *(&v192 + 1);
          v104 = v192;
          v15 = v103;
        }
      }

      else
      {
        v117 = *(v183 + 16);

        if (!v117 || (sub_1A937A490(v113, v111), (v118 & 1) == 0))
        {
          *&v191 = 0xD000000000000011;
          *(&v191 + 1) = 0x80000001A95C3090;
          v150 = v113;
          v151 = v111;
          goto LABEL_141;
        }

        v36 = v171;
        *&v191 = 1701996919;
        *(&v191 + 1) = 0xE400000000000000;
        *&v192 = 0x79747265706F7270;
        *(&v192 + 1) = 0xE800000000000000;
        sub_1A93820F4();
        v119 = sub_1A957CCD8();
        MEMORY[0x1AC585140](v119);

        MEMORY[0x1AC585140](10272, 0xE200000000000000);
        v192 = v182;

        MEMORY[0x1AC585140](v113, v111);
        sub_1A9328CAC(v113, v111);
        MEMORY[0x1AC585140](v192, *(&v192 + 1));

        MEMORY[0x1AC585140](32, 0xE100000000000000);
        LODWORD(v192) = v171;
        v120 = sub_1A957D3A8();
        MEMORY[0x1AC585140](v120);

        MEMORY[0x1AC585140](8233, 0xE200000000000000);
        MEMORY[0x1AC585140](v174, *(&v174 + 1));

        MEMORY[0x1AC585140](10, 0xE100000000000000);
        v15 = v179;

        v105 = *(&v191 + 1);
        v104 = v191;
      }

      v100 &= v100 - 1;
      MEMORY[0x1AC585140](v104, v105);

      v20 = v181;
      v101 = v165;
      v97 = v166;
      continue;
    }

    break;
  }

  while (1)
  {
    v106 = v96 + 1;
    if (__OFADD__(v96, 1))
    {
      break;
    }

    if (v106 >= v101)
    {

      v19 = v159;
      v4 = v161;
      goto LABEL_11;
    }

    v100 = *(v97 + 8 * v106);
    ++v96;
    if (v100)
    {
      v179 = v15;
      v96 = v106;
      goto LABEL_82;
    }
  }

LABEL_120:
  __break(1u);
LABEL_121:
  __break(1u);
LABEL_122:
  __break(1u);
LABEL_123:

  v176 = v156;
LABEL_118:
  *&v194[0] = 0;
  *(&v194[0] + 1) = 0xE000000000000000;
  sub_1A957CF08();

  *&v194[0] = 0x2065726977;
  *(&v194[0] + 1) = 0xE500000000000000;
  MEMORY[0x1AC585140](v176, v36);

  MEMORY[0x1AC585140](0xD000000000000027, 0x80000001A95C2F90);
  MEMORY[0x1AC585140](*&v194[0], *(&v194[0] + 1));

  (*(*v155 + 272))(v188, v189);
  return sub_1A944D51C();
}

uint64_t sub_1A944D51C()
{
  v1 = sub_1A957BA58();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x1EEE9AC00](v1);
  v162 = &v153 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v153 - v5;
  v166 = v0;
  v7 = sub_1A944AC6C();
  v8 = sub_1A94506C0(MEMORY[0x1E69E7CC0]);
  v9 = *(v7 + 16);
  v158 = v1;
  v163 = v2;
  if (!v9)
  {
LABEL_55:

    (*(*v166 + 296))(v8);
    v79 = sub_1A944AC6C();
    v160 = sub_1A94507A0(MEMORY[0x1E69E7CC0]);
    v80 = *(v79 + 16);
    v81 = v162;
    if (v80)
    {
      v82 = 0;
      v83 = v163;
      v84 = v79 + ((*(v83 + 80) + 32) & ~*(v83 + 80));
      v159 = (v163 + 8);
      v157 = v79;
      v156 = v80;
      v155 = v84;
      v154 = v163 + 16;
      do
      {
        if (v82 >= *(v79 + 16))
        {
          goto LABEL_120;
        }

        (*(v83 + 16))(v81, v84 + *(v83 + 72) * v82, v1);
        v85._countAndFlagsBits = sub_1A957BA38();
        TTSAudioEffect.init(rawValue:)(v85);
        if (v181 == 2)
        {
          (*v159)(v81, v1);
        }

        else
        {
          v174 = v181 & 1;
          TTSAudioEffect.spec.getter(&v168);
          v86 = v173;
          v180 = v173;
          v177 = v170;
          v178 = v171;
          v179 = v172;
          v175 = v168;
          v176 = v169;

          sub_1A94509C8(&v175);
          v87 = sub_1A957BA28();
          v88 = 0;
          v90 = v87 + 64;
          v89 = *(v87 + 64);
          v165 = v87;
          v91 = 1 << *(v87 + 32);
          if (v91 < 64)
          {
            v92 = ~(-1 << v91);
          }

          else
          {
            v92 = -1;
          }

          v93 = v92 & v89;
          v94 = (v91 + 63) >> 6;
          v164 = v82;
          while (v93)
          {
            v96 = v88;
LABEL_72:
            v97 = __clz(__rbit64(v93)) | (v96 << 6);
            v98 = (v165[6] + 16 * v97);
            v99 = *v98;
            v100 = v98[1];
            v101 = *(v165[7] + 4 * v97);

            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            *&v168 = v86;
            v103 = sub_1A937A490(v99, v100);
            v105 = v86;
            v106 = *(v86 + 16);
            v107 = (v104 & 1) == 0;
            v41 = __OFADD__(v106, v107);
            v108 = v106 + v107;
            if (v41)
            {
              goto LABEL_115;
            }

            v109 = v104;
            if (*(v105 + 24) >= v108)
            {
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                v114 = v103;
                sub_1A944FF38();
                v103 = v114;
              }
            }

            else
            {
              sub_1A944F3C0(v108, isUniquelyReferenced_nonNull_native);
              v103 = sub_1A937A490(v99, v100);
              if ((v109 & 1) != (v110 & 1))
              {
                goto LABEL_126;
              }
            }

            v93 &= v93 - 1;
            if (v109)
            {
              v95 = v103;

              v86 = v168;
              *(*(v168 + 56) + 4 * v95) = v101;
            }

            else
            {
              v86 = v168;
              *(v168 + 8 * (v103 >> 6) + 64) |= 1 << v103;
              v111 = (*(v86 + 48) + 16 * v103);
              *v111 = v99;
              v111[1] = v100;
              *(*(v86 + 56) + 4 * v103) = v101;
              v112 = *(v86 + 16);
              v41 = __OFADD__(v112, 1);
              v113 = v112 + 1;
              if (v41)
              {
                goto LABEL_119;
              }

              *(v86 + 16) = v113;
            }

            v88 = v96;
            v82 = v164;
          }

          while (1)
          {
            v96 = v88 + 1;
            if (__OFADD__(v88, 1))
            {
              goto LABEL_110;
            }

            if (v96 >= v94)
            {
              break;
            }

            v93 = *(v90 + 8 * v96);
            ++v88;
            if (v93)
            {
              goto LABEL_72;
            }
          }

          v115 = v86 + 64;
          v116 = 1 << *(v86 + 32);
          if (v116 < 64)
          {
            v117 = ~(-1 << v116);
          }

          else
          {
            v117 = -1;
          }

          v118 = v117 & *(v86 + 64);
          v119 = v160;

          swift_beginAccess();
          v120 = 0;
          v121 = (v116 + 63) >> 6;
          v165 = v119;
          v81 = v162;
          v161 = v86;
          while (v118)
          {
            v122 = v118;
LABEL_91:
            v124 = v166[17];
            if (v82 >= *(v124 + 16))
            {
              goto LABEL_116;
            }

            v118 = (v122 - 1) & v122;
            v125 = *(v124 + 8 * v82 + 32);
            if (*(v125 + 16))
            {
              v126 = __clz(__rbit64(v122)) | (v120 << 6);
              v127 = *(v86 + 56);
              v128 = (*(v86 + 48) + 16 * v126);
              v129 = *v128;
              v130 = v128[1];
              v131 = *(v127 + 4 * v126);

              v132 = sub_1A937A490(v129, v130);
              v134 = v133;

              if (v134)
              {
                LODWORD(v153) = v131;
                v135 = *(*(v125 + 56) + 4 * v132);

                v136 = v165;
                v137 = swift_isUniquelyReferenced_nonNull_native();
                *&v168 = v136;
                v138 = sub_1A937BEE0(v135);
                v140 = v136[2];
                v141 = (v139 & 1) == 0;
                v41 = __OFADD__(v140, v141);
                v142 = v140 + v141;
                if (v41)
                {
                  goto LABEL_123;
                }

                v143 = v139;
                if (v136[3] >= v142)
                {
                  if ((v137 & 1) == 0)
                  {
                    v149 = v138;
                    sub_1A94500A0();
                    v138 = v149;
                  }
                }

                else
                {
                  sub_1A944F660(v142, v137);
                  v138 = sub_1A937BEE0(v135);
                  if ((v143 & 1) != (v144 & 1))
                  {
                    goto LABEL_127;
                  }
                }

                v145 = v153;
                v165 = v168;
                if (v143)
                {
                  *(*(v168 + 56) + 4 * v138) = v153;
                }

                else
                {
                  v146 = v165;
                  *(v168 + 8 * (v138 >> 6) + 64) |= 1 << v138;
                  *(v146[6] + 4 * v138) = v135;
                  *(v146[7] + 4 * v138) = v145;
                  v147 = v146[2];
                  v41 = __OFADD__(v147, 1);
                  v148 = v147 + 1;
                  if (v41)
                  {
                    goto LABEL_125;
                  }

                  v146[2] = v148;
                }
              }

              else
              {
              }

              v81 = v162;
              v86 = v161;
            }
          }

          while (1)
          {
            v123 = v120 + 1;
            if (__OFADD__(v120, 1))
            {
              goto LABEL_111;
            }

            if (v123 >= v121)
            {
              break;
            }

            v122 = *(v115 + 8 * v123);
            ++v120;
            if (v122)
            {
              v120 = v123;
              goto LABEL_91;
            }
          }

          v1 = v158;
          (*v159)(v81, v158);

          v160 = v165;
          v79 = v157;
          v80 = v156;
          v84 = v155;
        }

        ++v82;
        v83 = v163;
      }

      while (v82 != v80);
    }

    v150 = v166;
    v151 = (*(*v166 + 320))(v160);
    return (*(*v150 + 408))(v151);
  }

  v10 = 0;
  v11 = 0;
  v12 = v7 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v160 = (v2 + 8);
  v157 = v6;
  v156 = v7;
  v155 = v9;
  v154 = v12;
  v153 = v2 + 16;
  while (1)
  {
    if (v10 >= *(v7 + 16))
    {
      goto LABEL_118;
    }

    v165 = v11;
    (*(v2 + 16))(v6, v12 + *(v2 + 72) * v10, v1);
    v13._countAndFlagsBits = sub_1A957BA38();
    TTSAudioEffect.init(rawValue:)(v13);
    if (v167[0] != 2)
    {
      break;
    }

    (*v160)(v6, v1);
    v11 = v165;
LABEL_4:
    ++v10;
    v2 = v163;
    if (v10 == v9)
    {
      goto LABEL_55;
    }
  }

  v159 = v10;
  v161 = v8;
  v181 = v167[0] & 1;
  TTSAudioEffect.spec.getter(&v168);
  v178 = v171;
  v179 = v172;
  v180 = v173;
  v175 = v168;
  v176 = v169;
  v177 = v170;
  v14 = *(&v172 + 1);

  sub_1A94509C8(&v175);
  v15 = sub_1A957BA18();
  v16 = 0;
  v18 = v15 + 64;
  v17 = *(v15 + 64);
  v164 = v15;
  v19 = 1 << *(v15 + 32);
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  else
  {
    v20 = -1;
  }

  v21 = v20 & v17;
  v22 = (v19 + 63) >> 6;
  if ((v20 & v17) != 0)
  {
    goto LABEL_13;
  }

LABEL_14:
  while (1)
  {
    v23 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v23 >= v22)
    {

      v43 = v14 + 64;
      v44 = 1 << *(v14 + 32);
      if (v44 < 64)
      {
        v45 = ~(-1 << v44);
      }

      else
      {
        v45 = -1;
      }

      v46 = v45 & *(v14 + 64);
      v47 = v161;

      swift_beginAccess();
      v48 = 0;
      v49 = (v44 + 63) >> 6;
      v164 = v47;
      v1 = v158;
LABEL_31:
      v50 = v165;
      while (v46)
      {
        v51 = v46;
        if ((v50 & 0x8000000000000000) != 0)
        {
          goto LABEL_113;
        }

LABEL_39:
        v53 = v166[16];
        if (v50 >= *(v53 + 16))
        {
          goto LABEL_114;
        }

        v46 = (v51 - 1) & v51;
        v54 = *(v53 + 8 * v50 + 32);
        if (*(v54 + 16))
        {
          v55 = __clz(__rbit64(v51)) | (v48 << 6);
          v56 = *(v14 + 56);
          v57 = v14;
          v58 = (*(v14 + 48) + 16 * v55);
          v59 = *v58;
          v60 = v58[1];
          v61 = *(v56 + 4 * v55);

          v62 = sub_1A937A490(v59, v60);
          v64 = v63;

          if (v64)
          {
            v65 = *(*(v54 + 56) + 4 * v62);

            v66 = v164;
            v67 = swift_isUniquelyReferenced_nonNull_native();
            *&v168 = v66;
            v68 = sub_1A937BEE0(v65);
            v70 = *(v66 + 16);
            v71 = (v69 & 1) == 0;
            v41 = __OFADD__(v70, v71);
            v72 = v70 + v71;
            if (v41)
            {
              goto LABEL_122;
            }

            v73 = v69;
            if (*(v66 + 24) >= v72)
            {
              if ((v67 & 1) == 0)
              {
                v78 = v68;
                sub_1A94501EC();
                v68 = v78;
              }
            }

            else
            {
              sub_1A944F8C8(v72, v67);
              v68 = sub_1A937BEE0(v65);
              if ((v73 & 1) != (v74 & 1))
              {
                goto LABEL_127;
              }
            }

            v14 = v57;
            v75 = v168;
            v164 = v168;
            if (v73)
            {
              *(*(v168 + 56) + 4 * v68) = v61;
            }

            else
            {
              *(v168 + 8 * (v68 >> 6) + 64) |= 1 << v68;
              *(v75[6] + 4 * v68) = v65;
              *(v75[7] + 4 * v68) = v61;
              v76 = v75[2];
              v41 = __OFADD__(v76, 1);
              v77 = v76 + 1;
              if (v41)
              {
                goto LABEL_124;
              }

              v75[2] = v77;
            }

            goto LABEL_31;
          }

          v50 = v165;
          v14 = v57;
        }
      }

      while (1)
      {
        v52 = v48 + 1;
        if (__OFADD__(v48, 1))
        {
          goto LABEL_109;
        }

        if (v52 >= v49)
        {
          break;
        }

        v51 = *(v43 + 8 * v52);
        ++v48;
        if (v51)
        {
          v48 = v52;
          if ((v50 & 0x8000000000000000) != 0)
          {
            goto LABEL_113;
          }

          goto LABEL_39;
        }
      }

      v6 = v157;
      (*v160)(v157, v1);

      v11 = (v165 + 1);
      if (__OFADD__(v165, 1))
      {
        goto LABEL_121;
      }

      v8 = v164;
      v7 = v156;
      v9 = v155;
      v10 = v159;
      v12 = v154;
      goto LABEL_4;
    }

    v21 = *(v18 + 8 * v23);
    ++v16;
    if (v21)
    {
      while (1)
      {
        v24 = __clz(__rbit64(v21)) | (v23 << 6);
        v25 = (*(v164 + 48) + 16 * v24);
        v26 = *v25;
        v27 = v25[1];
        v28 = *(*(v164 + 56) + 4 * v24);

        v29 = swift_isUniquelyReferenced_nonNull_native();
        *&v168 = v14;
        v31 = sub_1A937A490(v26, v27);
        v32 = v14;
        v33 = *(v14 + 16);
        v34 = (v30 & 1) == 0;
        v35 = v33 + v34;
        if (__OFADD__(v33, v34))
        {
          goto LABEL_112;
        }

        v36 = v30;
        if (*(v32 + 24) >= v35)
        {
          if ((v29 & 1) == 0)
          {
            sub_1A9450338();
          }
        }

        else
        {
          sub_1A944FB30(v35, v29);
          v37 = sub_1A937A490(v26, v27);
          if ((v36 & 1) != (v38 & 1))
          {
            goto LABEL_126;
          }

          v31 = v37;
        }

        v21 &= v21 - 1;
        if (v36)
        {
          break;
        }

        v14 = v168;
        *(v168 + 8 * (v31 >> 6) + 64) |= 1 << v31;
        v39 = (*(v14 + 48) + 16 * v31);
        *v39 = v26;
        v39[1] = v27;
        *(*(v14 + 56) + 4 * v31) = v28;
        v40 = *(v14 + 16);
        v41 = __OFADD__(v40, 1);
        v42 = v40 + 1;
        if (v41)
        {
          goto LABEL_117;
        }

        *(v14 + 16) = v42;
        v16 = v23;
        if (!v21)
        {
          goto LABEL_14;
        }

LABEL_13:
        v23 = v16;
      }

      v14 = v168;
      *(*(v168 + 56) + 4 * v31) = v28;
      v16 = v23;
      if (v21)
      {
        goto LABEL_13;
      }
    }
  }

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
  sub_1A957D438();
  __break(1u);
LABEL_127:
  result = sub_1A957D438();
  __break(1u);
  return result;
}

void *sub_1A944E320()
{
  swift_beginAccess();
  v1 = *(v0 + 176);
  v2 = v1;
  return v1;
}

void sub_1A944E364(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 176);
  *(v1 + 176) = a1;
}

void sub_1A944E3FC()
{
  v17 = (*(*v0 + 384))();
  if (v17)
  {
    v1 = (*(*v0 + 288))();
    v2 = v1;
    v3 = 0;
    v4 = v1 + 64;
    v5 = 1 << *(v1 + 32);
    v6 = -1;
    if (v5 < 64)
    {
      v6 = ~(-1 << v5);
    }

    v7 = v6 & *(v1 + 64);
    v8 = (v5 + 63) >> 6;
    v16 = xmmword_1A9587160;
    while (v7)
    {
LABEL_10:
      v10 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      v11 = (v3 << 8) | (4 * v10);
      v12 = AudioUnitSetParameter([v17 audioUnit], *(*(v2 + 48) + v11), 0, 0, *(*(v2 + 56) + v11), 4u);
      if (v12 != sub_1A957BE28())
      {
        v13 = AXTTSLogCommon();
        if (!v13)
        {
LABEL_18:
          __break(1u);
          return;
        }

        v14 = v13;
        sub_1A957CA78();
        sub_1A937829C(&qword_1EB386B78, &qword_1A9588990);
        v15 = swift_allocObject();
        *(v15 + 16) = v16;
        *(v15 + 56) = MEMORY[0x1E69E72F0];
        *(v15 + 64) = MEMORY[0x1E69E7358];
        *(v15 + 32) = v12;
        sub_1A957BC48("Failed to set AUParameter %d.", v16);
      }
    }

    while (1)
    {
      v9 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        __break(1u);
        goto LABEL_18;
      }

      if (v9 >= v8)
      {
        break;
      }

      v7 = *(v4 + 8 * v9);
      ++v3;
      if (v7)
      {
        v3 = v9;
        goto LABEL_10;
      }
    }
  }
}

id sub_1A944E650()
{
  aBlock[6] = *MEMORY[0x1E69E9840];
  result = (*(*v0 + 384))();
  if (!result)
  {
    v2 = (*(*v0 + 264))();
    if (v3)
    {
      v4 = v2;
      v5 = v3;
      v6 = swift_allocObject();
      *(v6 + 16) = 0;
      v7 = objc_opt_self();
      v8 = swift_allocObject();
      v8[2] = v6;
      v8[3] = v4;
      v8[4] = v5;
      aBlock[4] = sub_1A945087C;
      aBlock[5] = v8;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1A93C80E8;
      aBlock[3] = &unk_1F1CED748;
      v9 = _Block_copy(aBlock);

      aBlock[0] = 0;
      v10 = [v7 catchException:v9 error:aBlock];
      _Block_release(v9);
      if (v10)
      {
        v11 = aBlock[0];

        swift_beginAccess();
        v12 = *(v6 + 16);
        v13 = *(*v0 + 392);
        v14 = v12;
        v15 = v13(v12);
        (*(*v0 + 408))(v15);
        v16 = *(v6 + 16);
        v17 = v16;

        return v16;
      }

      else
      {
        v18 = aBlock[0];
        v19 = sub_1A957AEF8();

        swift_willThrow();

        result = AXTTSLogCommon();
        if (result)
        {
          v20 = result;

          v21 = sub_1A957CA78();
          sub_1A937829C(&qword_1EB386B78, &qword_1A9588990);
          v22 = swift_allocObject();
          *(v22 + 16) = xmmword_1A9587160;
          swift_getErrorValue();
          v23 = sub_1A957D478();
          v25 = v24;
          *(v22 + 56) = MEMORY[0x1E69E6158];
          *(v22 + 64) = sub_1A93B3A38();
          *(v22 + 32) = v23;
          *(v22 + 40) = v25;
          sub_1A957BC48("Failed to set initialize AU %@.", 31, 2, &dword_1A9324000, v20, v21, v22);

          return 0;
        }

        else
        {
          __break(1u);
        }
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

id sub_1A944E9D8(uint64_t a1, uint64_t a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v11 = 0;
  if (a2)
  {
    v11 = sub_1A957C0C8();
  }

  v3 = [v2 audioUnit];
  v4 = sub_1A944EBC8(2020897383, 0xE400000000000000);
  v5 = AudioUnitSetProperty(v3, v4, 0, 0, &v11, 8u);
  result = sub_1A957BE28();
  if (v5 != result)
  {
    result = AXTTSLogCommon();
    if (result)
    {
      v7 = result;
      sub_1A957CA78();
      sub_1A937829C(&qword_1EB386B78, &qword_1A9588990);
      v8 = swift_allocObject();
      v9 = MEMORY[0x1E69E72F0];
      *(v8 + 16) = xmmword_1A9587160;
      v10 = MEMORY[0x1E69E7358];
      *(v8 + 56) = v9;
      *(v8 + 64) = v10;
      *(v8 + 32) = v5;
      sub_1A957BC48("Failed to set graph text %d.", v11);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1A944EB3C()
{

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_1A944EB9C()
{
  sub_1A944EB3C();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1A944EBC8(uint64_t a1, uint64_t a2)
{
  v2 = sub_1A957C168();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = 0;
  sub_1A957C148();
  v6 = sub_1A957C108();
  v8 = v7;
  result = (*(v3 + 8))(v5, v2);
  if (v8 >> 60 != 15)
  {
    v10 = v8 >> 62;
    if ((v8 >> 62) > 1)
    {
      if (v10 != 2)
      {
        goto LABEL_10;
      }

      v12 = *(v6 + 16);
      v11 = *(v6 + 24);
      v13 = __OFSUB__(v11, v12);
      v14 = v11 - v12;
      if (v13)
      {
LABEL_17:
        __break(1u);
        goto LABEL_18;
      }

      if (v14 != 4)
      {
        goto LABEL_10;
      }
    }

    else if (v10)
    {
      if (__OFSUB__(HIDWORD(v6), v6))
      {
LABEL_18:
        __break(1u);
        return result;
      }

      if (HIDWORD(v6) - v6 != 4)
      {
        goto LABEL_10;
      }
    }

    else if (BYTE6(v8) != 4)
    {
      goto LABEL_10;
    }

    sub_1A9450950(v6, v8);
    sub_1A94504A0(v6, v8, v6, v8, &v16);
LABEL_10:
    sub_1A945093C(v6, v8);
  }

  result = v16;
  if (HIDWORD(v16))
  {
    __break(1u);
    goto LABEL_17;
  }

  return result;
}

unsigned __int8 *sub_1A944ED6C(unsigned __int8 *result, uint64_t a2, unint64_t a3, unint64_t *a4)
{
  if (!result)
  {
    goto LABEL_18;
  }

  v4 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v4 != 2)
    {
      return result;
    }

    v7 = *(a2 + 16);
    v6 = *(a2 + 24);
    v8 = __OFSUB__(v6, v7);
    v5 = v6 - v7;
    if (!v8)
    {
      goto LABEL_11;
    }

    __break(1u);
  }

  else if (!v4)
  {
    v5 = BYTE6(a3);
    goto LABEL_12;
  }

  LODWORD(v5) = HIDWORD(a2) - a2;
  if (__OFSUB__(HIDWORD(a2), a2))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  v5 = v5;
LABEL_11:
  if (v5 < 0)
  {
    __break(1u);
    goto LABEL_17;
  }

LABEL_12:
  if (v5)
  {
    v9 = *a4;
    do
    {
      v10 = *result++;
      v9 = v10 | (v9 << 8);
      *a4 = v9;
      --v5;
    }

    while (v5);
  }

  return result;
}

uint64_t sub_1A944EDE0(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  if (v4 != *(a2 + 16))
  {
    return 0;
  }

  if (!v4 || a1 == a2)
  {
    return 1;
  }

  v41 = v2;
  v42 = v3;
  v5 = a1 + 32;
  v6 = a2 + 32;
  for (i = v4 - 1; ; --i)
  {
    v8 = *(v5 + 48);
    v28 = *(v5 + 32);
    v29 = v8;
    v30 = *(v5 + 64);
    v31 = *(v5 + 80);
    v9 = *(v5 + 16);
    v27[0] = *v5;
    v27[1] = v9;
    v26 = v31;
    v23 = v28;
    v24 = v8;
    v25 = v30;
    v21 = v27[0];
    v22 = v9;
    v10 = *(v6 + 48);
    v33 = *(v6 + 32);
    v34 = v10;
    v35 = *(v6 + 64);
    v36 = *(v6 + 80);
    v11 = *(v6 + 16);
    v32[0] = *v6;
    v32[1] = v11;
    v20 = v36;
    v16 = v11;
    v17 = v33;
    v18 = v10;
    v19 = v35;
    v15 = v32[0];
    sub_1A937BE84(v27, v14);
    sub_1A937BE84(v32, v14);
    sub_1A9450B48();
    v12 = sub_1A957C098();
    v37[2] = v17;
    v37[3] = v18;
    v37[4] = v19;
    v38 = v20;
    v37[0] = v15;
    v37[1] = v16;
    sub_1A94509C8(v37);
    v39[2] = v23;
    v39[3] = v24;
    v39[4] = v25;
    v40 = v26;
    v39[0] = v21;
    v39[1] = v22;
    sub_1A94509C8(v39);
    if ((v12 & 1) == 0)
    {
      return 0;
    }

    if (!i)
    {
      break;
    }

    v6 += 88;
    v5 += 88;
  }

  return 1;
}

void *sub_1A944EF6C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1A944EF8C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1A944EF8C(void *result, int64_t a2, char a3, void *a4)
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
    v13 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  sub_1A937829C(&qword_1EB3876C8, &unk_1A958EB70);
  v10 = *(sub_1A957BA58() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
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
  v15 = *(sub_1A957BA58() - 8);
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

void *sub_1A944F164(void *result, int64_t a2, char a3, void *a4)
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
    sub_1A937829C(&qword_1EB3876B0, &qword_1A958EB60);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1A937829C(&qword_1EB3876B8, &qword_1A95970E0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1A944F298(char *result, int64_t a2, char a3, char *a4)
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
    sub_1A937829C(&qword_1EB3876A8, &qword_1A958EB58);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 88);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[88 * v8])
    {
      memmove(v12, v13, 88 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1A944F3C0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1A937829C(&qword_1EB3876A0, &unk_1A9598930);
  v34 = v4;
  result = sub_1A957D118();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 4 * v20);
      if ((v34 & 1) == 0)
      {
      }

      sub_1A957D4F8();
      sub_1A957C228();
      result = sub_1A957D548();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 4 * v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1A944F660(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1A937829C(&qword_1EB387698, &qword_1A958EB50);
  result = sub_1A957D118();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v4;
    v31 = v3;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 4 * v19);
      v21 = *(*(v5 + 56) + 4 * v19);
      result = MEMORY[0x1AC586390](*(v7 + 40), v20, 4);
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 4 * v15) = v20;
      *(*(v7 + 56) + 4 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if (v30)
    {
      v29 = 1 << *(v5 + 32);
      if (v29 >= 64)
      {
        bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v29;
      }

      *(v5 + 16) = 0;
    }

    v3 = v31;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_1A944F8C8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1A937829C(&qword_1EB387688, &qword_1A958EB40);
  result = sub_1A957D118();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v3;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 4 * v19);
      v21 = *(*(v5 + 56) + 4 * v19);
      result = MEMORY[0x1AC586390](*(v7 + 40), v20, 4);
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 4 * v15) = v20;
      *(*(v7 + 56) + 4 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if (v4)
    {
      v29 = 1 << *(v5 + 32);
      if (v29 >= 64)
      {
        bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v29;
      }

      *(v5 + 16) = 0;
    }

    v3 = v30;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_1A944FB30(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1A937829C(&qword_1EB387690, &qword_1A958EB48);
  v33 = v4;
  result = sub_1A957D118();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 4 * v20);
      if ((v33 & 1) == 0)
      {
      }

      sub_1A957D4F8();
      sub_1A957C228();
      result = sub_1A957D548();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 4 * v15) = v24;
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

unint64_t sub_1A944FDD4(int a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_1A937A490(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_15;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_1A944F3C0(v16, a4 & 1);
      result = sub_1A937A490(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_16:
        result = sub_1A957D438();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = result;
      sub_1A944FF38();
      result = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 4 * result) = a1;
    return result;
  }

  v21[(result >> 6) + 8] |= 1 << result;
  v22 = (v21[6] + 16 * result);
  *v22 = a2;
  v22[1] = a3;
  *(v21[7] + 4 * result) = a1;
  v23 = v21[2];
  v15 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v15)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v21[2] = v24;
}

void *sub_1A944FF38()
{
  v1 = v0;
  sub_1A937829C(&qword_1EB3876A0, &unk_1A9598930);
  v2 = *v0;
  v3 = sub_1A957D108();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v20 = *v18;
        v19 = v18[1];
        LODWORD(v18) = *(*(v2 + 56) + 4 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = v20;
        v21[1] = v19;
        *(*(v4 + 56) + 4 * v17) = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_1A94500A0()
{
  v1 = v0;
  sub_1A937829C(&qword_1EB387698, &qword_1A958EB50);
  v2 = *v0;
  v3 = sub_1A957D108();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + 4 * v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + 4 * v14);
      *(*(v4 + 48) + 4 * v14) = *(*(v2 + 48) + 4 * v14);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_1A94501EC()
{
  v1 = v0;
  sub_1A937829C(&qword_1EB387688, &qword_1A958EB40);
  v2 = *v0;
  v3 = sub_1A957D108();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + 4 * v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + 4 * v14);
      *(*(v4 + 48) + 4 * v14) = *(*(v2 + 48) + 4 * v14);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_1A9450338()
{
  v1 = v0;
  sub_1A937829C(&qword_1EB387690, &qword_1A958EB48);
  v2 = *v0;
  v3 = sub_1A957D108();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 4 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 4 * v17) = v20;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_1A94504A0(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, unint64_t *a5)
{
  v24[2] = *MEMORY[0x1E69E9840];
  v8 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v8 != 2)
    {
      memset(v24, 0, 14);
      v16 = v24;
      goto LABEL_19;
    }

    v11 = *(a1 + 16);
    v12 = *(a1 + 24);
    a1 = sub_1A957AE78();
    v13 = a1;
    if (a1)
    {
      a1 = sub_1A957AE98();
      if (__OFSUB__(v11, a1))
      {
LABEL_34:
        __break(1u);
        goto LABEL_35;
      }

      v13 += v11 - a1;
    }

    if (!__OFSUB__(v12, v11))
    {
LABEL_17:
      sub_1A957AE88();
      v16 = v13;
LABEL_19:
      sub_1A944ED6C(v16, a3, a4, a5);
      return sub_1A9442638(a3, a4);
    }

    __break(1u);
LABEL_13:
    v14 = a1;
    if (a1 > a1 >> 32)
    {
      __break(1u);
      goto LABEL_33;
    }

    v13 = sub_1A957AE78();
    if (v13)
    {
      v15 = sub_1A957AE98();
      if (__OFSUB__(v14, v15))
      {
LABEL_35:
        __break(1u);
LABEL_36:
        __break(1u);
      }

      v13 += v14 - v15;
    }

    goto LABEL_17;
  }

  if (v8)
  {
    goto LABEL_13;
  }

  v24[0] = a1;
  LOWORD(v24[1]) = a2;
  BYTE2(v24[1]) = BYTE2(a2);
  BYTE3(v24[1]) = BYTE3(a2);
  BYTE4(v24[1]) = BYTE4(a2);
  v9 = a4 >> 62;
  BYTE5(v24[1]) = BYTE5(a2);
  if ((a4 >> 62) > 1)
  {
    if (v9 != 2)
    {
      return sub_1A9442638(a3, a4);
    }

    v19 = *(a3 + 16);
    v18 = *(a3 + 24);
    v20 = __OFSUB__(v18, v19);
    v10 = v18 - v19;
    if (!v20)
    {
      goto LABEL_27;
    }

    __break(1u);
  }

  else if (!v9)
  {
    v10 = BYTE6(a4);
    goto LABEL_28;
  }

  LODWORD(v10) = HIDWORD(a3) - a3;
  if (__OFSUB__(HIDWORD(a3), a3))
  {
    goto LABEL_36;
  }

  v10 = v10;
LABEL_27:
  if (v10 < 0)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

LABEL_28:
  if (v10)
  {
    v21 = *a5;
    v22 = v24;
    do
    {
      v23 = *v22++;
      v21 = v23 | (v21 << 8);
      --v10;
    }

    while (v10);
    *a5 = v21;
  }

  return sub_1A9442638(a3, a4);
}

unint64_t sub_1A94506C0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1A937829C(&qword_1EB387688, &qword_1A958EB40);
    v3 = sub_1A957D128();
    for (i = (a1 + 36); ; i += 2)
    {
      v5 = *(i - 1);
      v6 = *i;
      result = sub_1A937BEE0(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 4 * result) = v5;
      *(v3[7] + 4 * result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
      if (!--v1)
      {
        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1A94507A0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1A937829C(&qword_1EB387698, &qword_1A958EB50);
    v3 = sub_1A957D128();
    for (i = (a1 + 36); ; i += 2)
    {
      v5 = *(i - 1);
      v6 = *i;
      result = sub_1A937BEE0(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 4 * result) = v5;
      *(v3[7] + 4 * result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
      if (!--v1)
      {
        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

void sub_1A945087C()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = v0[4];
  v4 = [objc_allocWithZone(MEMORY[0x1E69584B8]) init];
  swift_beginAccess();
  v5 = *(v2 + 16);
  *(v2 + 16) = v4;

  swift_beginAccess();
  v6 = *(v2 + 16);
  if (v6)
  {
    v7 = v6;
    sub_1A944E9D8(v1, v3);
  }
}

uint64_t sub_1A9450924(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1A945093C(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1A9442638(result, a2);
  }

  return result;
}

uint64_t sub_1A9450950(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_1A9450A78(uint64_t a1, unint64_t a2)
{
  if (a2 >= 2)
  {
  }

  return result;
}

uint64_t sub_1A9450A8C(uint64_t a1)
{
  v2 = sub_1A937829C(&qword_1EB3876C0, &qword_1A958EB68);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1A9450B48()
{
  result = qword_1EB3876D0;
  if (!qword_1EB3876D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3876D0);
  }

  return result;
}

uint64_t sub_1A9450BAC()
{
  v3[2] = *v0;
  v1 = sub_1A9450C00();
  SpeechContext.subscript.getter(&type metadata for UTF8OffsetContextKey, &type metadata for UTF8OffsetContextKey, v1, v3);
  return v3[0];
}

unint64_t sub_1A9450C00()
{
  result = qword_1EB3876D8;
  if (!qword_1EB3876D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3876D8);
  }

  return result;
}

uint64_t sub_1A9450C54(uint64_t a1, char a2)
{
  v4 = a1;
  v5 = a2 & 1;
  v2 = sub_1A9450C00();
  return SpeechContext.subscript.setter(&v4, &type metadata for UTF8OffsetContextKey, &type metadata for UTF8OffsetContextKey, v2);
}

uint64_t SpeechContext.eventTaps.getter()
{
  v3[1] = *v0;
  v1 = sub_1A9450CF8();
  SpeechContext.subscript.getter(&type metadata for EventTapContextKey, &type metadata for EventTapContextKey, v1, v3);
  return v3[0];
}

unint64_t sub_1A9450CF8()
{
  result = qword_1EB3876E0;
  if (!qword_1EB3876E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3876E0);
  }

  return result;
}

uint64_t sub_1A9450D4C@<X0>(void *a1@<X8>, void *a2@<X0>)
{
  v5[1] = *a2;
  v3 = sub_1A9450CF8();
  result = SpeechContext.subscript.getter(&type metadata for EventTapContextKey, &type metadata for EventTapContextKey, v3, v5);
  *a1 = v5[0];
  return result;
}

uint64_t sub_1A9450DA4(uint64_t *a1)
{
  v3 = *a1;
  v1 = sub_1A9450CF8();

  return SpeechContext.subscript.setter(&v3, &type metadata for EventTapContextKey, &type metadata for EventTapContextKey, v1);
}

uint64_t SpeechContext.eventTaps.setter(uint64_t a1)
{
  v3 = a1;
  v1 = sub_1A9450CF8();
  return SpeechContext.subscript.setter(&v3, &type metadata for EventTapContextKey, &type metadata for EventTapContextKey, v1);
}

uint64_t (*SpeechContext.eventTaps.modify(uint64_t a1))(uint64_t *a1, char a2)
{
  *(a1 + 16) = v1;
  v3 = sub_1A9450CF8();
  *(a1 + 24) = v3;
  SpeechContext.subscript.getter(&type metadata for EventTapContextKey, &type metadata for EventTapContextKey, v3, a1);
  return sub_1A9450EB4;
}

uint64_t sub_1A9450EB4(uint64_t *a1, char a2)
{
  a1[1] = *a1;
  v3 = a1[3];
  if ((a2 & 1) == 0)
  {
    return SpeechContext.subscript.setter((a1 + 1), &type metadata for EventTapContextKey, &type metadata for EventTapContextKey, a1[3]);
  }

  SpeechContext.subscript.setter((a1 + 1), &type metadata for EventTapContextKey, &type metadata for EventTapContextKey, v3);
}

unint64_t sub_1A9450F48(uint64_t a1)
{
  result = sub_1A9450F70();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A9450F70()
{
  result = qword_1EB3876E8;
  if (!qword_1EB3876E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3876E8);
  }

  return result;
}

unint64_t sub_1A9450FC8()
{
  result = qword_1EB3876F0;
  if (!qword_1EB3876F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3876F0);
  }

  return result;
}

unint64_t sub_1A945101C(uint64_t a1)
{
  result = sub_1A9451044();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A9451044()
{
  result = qword_1EB3876F8;
  if (!qword_1EB3876F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3876F8);
  }

  return result;
}

unint64_t sub_1A945109C()
{
  result = qword_1EB387700;
  if (!qword_1EB387700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB387700);
  }

  return result;
}

uint64_t sub_1A9451110()
{
  sub_1A957D4F8();
  sub_1A957D528();
  return sub_1A957D548();
}

uint64_t sub_1A9451184(uint64_t a1)
{
  sub_1A957D4F8();
  sub_1A957D528();
  return sub_1A957D548();
}

uint64_t sub_1A94511D8()
{
  v0 = sub_1A93AD200(&unk_1F1CF5E60);
  result = swift_arrayDestroy();
  qword_1EB3A7C40 = v0;
  *algn_1EB3A7C48 = 0;
  byte_1EB3A7C50 = 1;
  return result;
}

uint64_t sub_1A9451230()
{
  sub_1A937829C(&qword_1EB387780, &qword_1A958F098);
  inited = swift_initStackObject();
  *(inited + 32) = 1768841544;
  *(inited + 16) = xmmword_1A958ECD0;
  *(inited + 40) = 0xE400000000000000;
  if (qword_1EB399D20 != -1)
  {
    v7 = inited;
    swift_once();
    inited = v7;
  }

  v1 = qword_1EB3A7C40;
  v2 = *algn_1EB3A7C48;
  *(inited + 48) = qword_1EB3A7C40;
  *(inited + 56) = v2;
  v3 = byte_1EB3A7C50;
  *(inited + 64) = byte_1EB3A7C50;
  *(inited + 72) = 1953390920;
  *(inited + 80) = 0xE400000000000000;
  *(inited + 88) = v1;
  *(inited + 96) = v2;
  *(inited + 104) = v3;
  *(inited + 112) = 1936613704;
  *(inited + 120) = 0xE400000000000000;
  *(inited + 128) = v1;
  *(inited + 136) = v2;
  *(inited + 144) = v3;
  *(inited + 152) = 1634888008;
  *(inited + 160) = 0xE400000000000000;
  *(inited + 168) = v1;
  *(inited + 176) = v2;
  *(inited + 184) = v3;
  *(inited + 192) = 1634623819;
  *(inited + 200) = 0xE400000000000000;
  *(inited + 208) = v1;
  *(inited + 216) = v2;
  *(inited + 224) = v3;
  *(inited + 232) = 1851879498;
  *(inited + 240) = 0xE400000000000000;
  *(inited + 248) = v1;
  *(inited + 256) = v2;
  *(inited + 264) = v3;
  *(inited + 272) = 1701998411;
  *(inited + 280) = 0xE400000000000000;
  *(inited + 288) = v1;
  *(inited + 296) = v2;
  *(inited + 304) = v3;
  *(inited + 312) = 1735287112;
  *(inited + 320) = 0xE400000000000000;
  *(inited + 328) = v1;
  *(inited + 336) = v2;
  *(inited + 344) = v3;
  v4 = inited;
  sub_1A9457A70(v1, v2, v3);
  sub_1A9457A70(v1, v2, v3);
  sub_1A9457A70(v1, v2, v3);
  sub_1A9457A70(v1, v2, v3);
  sub_1A9457A70(v1, v2, v3);
  sub_1A9457A70(v1, v2, v3);
  sub_1A9457A70(v1, v2, v3);
  sub_1A9457A70(v1, v2, v3);
  v5 = sub_1A9457EE8(v4);
  swift_setDeallocating();
  sub_1A937829C(&qword_1EB387788, &qword_1A958F0A0);
  result = swift_arrayDestroy();
  qword_1EB3A7C58 = v5;
  return result;
}

uint64_t sub_1A9451448@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 112))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1A94514E0(char a1)
{
  result = swift_beginAccess();
  *(v1 + 16) = a1;
  return result;
}

uint64_t sub_1A9451570(uint64_t a1)
{
  v2 = v1;
  v4 = (*(*v1 + 136))();
  if (*(v4 + 16) && (v5 = sub_1A94563DC(a1), (v6 & 1) != 0))
  {
    v7 = *(*(v4 + 56) + 16 * v5);
  }

  else
  {
    v7 = 2038004058;

    if (uscript_getShortName())
    {
      v8 = sub_1A957C298();
      v10 = v9;
      if (sub_1A957C238() < 1)
      {
      }

      else
      {
        v11 = *(*v2 + 152);

        v12 = v11(v18);
        v14 = v13;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v17 = *v14;
        *v14 = 0x8000000000000000;
        sub_1A945698C(v8, v10, a1, isUniquelyReferenced_nonNull_native);
        *v14 = v17;
        v12(v18, 0);
        return v8;
      }
    }
  }

  return v7;
}

char *sub_1A94516F0(int a1)
{
  v45[5] = *MEMORY[0x1E69E9840];
  if (a1 < 0)
  {
    goto LABEL_49;
  }

  v2 = v1;
  v3 = v1[5];
  ScriptExtensions = uscript_getScriptExtensions();
  v5 = ScriptExtensions;
  v44 = 0;
  if (!ScriptExtensions)
  {
    v6 = MEMORY[0x1E69E7CC0];
    v7 = *(MEMORY[0x1E69E7CC0] + 16);
    if (v7)
    {
      goto LABEL_4;
    }

LABEL_43:

    v10 = MEMORY[0x1E69E7CC0];
    goto LABEL_44;
  }

  v6 = sub_1A94571A4(ScriptExtensions, 0);
  memcpy(v6 + 4, v3, 4 * v5);
  v7 = v6[2];
  if (!v7)
  {
    goto LABEL_43;
  }

LABEL_4:
  v8 = 0;
  v9 = v6 + 4;
  v10 = MEMORY[0x1E69E7CC0];
  v42 = v6 + 4;
  v43 = v2;
  v38 = v7;
  v39 = v6;
  do
  {
    if (v8 >= v6[2])
    {
      goto LABEL_48;
    }

    v13 = *(v9 + v8);
    if (!v13)
    {
      v11 = 0;
      v12 = 0;
      v44 = 1;
      goto LABEL_6;
    }

    v11 = sub_1A9451570(v13);
    v12 = v14;
    if (qword_1EB399D28 != -1)
    {
      swift_once();
    }

    v15 = qword_1EB3A7C58;
    if (!*(qword_1EB3A7C58 + 16) || (v16 = sub_1A937A490(v11, v12), (v17 & 1) == 0))
    {
      if (((*(*v2 + 112))() & 1) == 0)
      {
        if (!*(v2[3] + 16) || (sub_1A937A490(v11, v12), (v25 & 1) == 0))
        {

          v11 = 0;
          v12 = 0;
          goto LABEL_6;
        }
      }

      v26 = 0;
      goto LABEL_23;
    }

    v18 = v16;

    v19 = *(v15 + 56) + 24 * v18;
    v11 = *v19;
    v12 = *(v19 + 8);
    v20 = *(v19 + 16);
    v41 = v20;
    if (v20)
    {
      v21 = MEMORY[0x1E69E7CC0];
      if (v20 == 1)
      {
        v22 = *(v11 + 16);
        if (v22)
        {
          v21 = sub_1A9457228(*(v11 + 16), 0);
          v23 = sub_1A9457918(v45, (v21 + 32), v22, v11);
          v24 = v45[0];
          sub_1A9457A70(v11, v12, 1u);
          sub_1A9457A70(v11, v12, 1u);
          sub_1A932D088(v24);
          if (v23 != v22)
          {
            goto LABEL_50;
          }

          v2 = v43;
        }

        else
        {
          sub_1A9457A70(v11, v12, 1u);
        }
      }
    }

    else
    {
      sub_1A937829C(&qword_1EB388390, &qword_1A9588580);
      v21 = swift_allocObject();
      *(v21 + 16) = xmmword_1A9587160;
      *(v21 + 32) = v11;
      *(v21 + 40) = v12;
      sub_1A9457A70(v11, v12, 0);
    }

    v40 = v10;
    v30 = *(v21 + 16);
    if (!v30)
    {
LABEL_39:

      sub_1A9458200(v11, v12, v41);
      v11 = 0;
      v12 = 0;
      v6 = v39;
      v10 = v40;
      v7 = v38;
      v9 = v42;
      goto LABEL_6;
    }

    v31 = 0;
    v32 = (v21 + 40);
    while (1)
    {
      if (v31 >= *(v21 + 16))
      {
        __break(1u);
LABEL_48:
        __break(1u);
LABEL_49:
        __break(1u);
LABEL_50:
        __break(1u);
      }

      if (*(v2[3] + 16))
      {
        v34 = *(v32 - 1);
        v33 = *v32;

        sub_1A937A490(v34, v33);
        v36 = v35;
        v2 = v43;

        if (v36)
        {
          break;
        }
      }

      ++v31;
      v32 += 2;
      if (v30 == v31)
      {
        goto LABEL_39;
      }
    }

    v26 = v41;
    v6 = v39;
    v10 = v40;
    v7 = v38;
    v9 = v42;
    if (v41 == 255)
    {
LABEL_6:
      sub_1A94592FC(v11, v12, 0xFFu);
      goto LABEL_7;
    }

LABEL_23:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v10 = sub_1A9456F40(0, *(v10 + 2) + 1, 1, v10);
    }

    v28 = *(v10 + 2);
    v27 = *(v10 + 3);
    if (v28 >= v27 >> 1)
    {
      v10 = sub_1A9456F40((v27 > 1), v28 + 1, 1, v10);
    }

    *(v10 + 2) = v28 + 1;
    v29 = &v10[24 * v28];
    *(v29 + 4) = v11;
    *(v29 + 5) = v12;
    v29[48] = v26;
    v9 = v42;
LABEL_7:
    ++v8;
  }

  while (v8 != v7);

  if (v44)
  {

    return &unk_1F1CF5F38;
  }

LABEL_44:
  if (!*(v10 + 2))
  {

    return &unk_1F1CF5F70;
  }

  return v10;
}

void *sub_1A9451BB4()
{
  v2 = *v0;
  v1 = *(v0 + 8);
  if (*(v0 + 16))
  {
    if (*(v0 + 16) == 1 && (v3 = *(v2 + 16)) != 0)
    {
      v4 = sub_1A9457228(*(v2 + 16), 0);
      v5 = sub_1A9457918(&v9, v4 + 4, v3, v2);
      v6 = v9;
      sub_1A9457A70(v2, v1, 1u);
      result = sub_1A932D088(v6);
      if (v5 == v3)
      {
        return v4;
      }

      else
      {
        __break(1u);
      }
    }

    else
    {
      return MEMORY[0x1E69E7CC0];
    }
  }

  else
  {
    sub_1A937829C(&qword_1EB388390, &qword_1A9588580);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_1A9587160;
    *(v8 + 32) = v2;
    *(v8 + 40) = v1;

    return v8;
  }

  return result;
}

uint64_t sub_1A9451CD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v122 = 0;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v141 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v116 = v113 - v6;
  v120 = a3;
  v7 = *(*(a3 + 8) + 8);
  v8 = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](v8);
  swift_getAssociatedConformanceWitness();
  v9 = swift_getAssociatedTypeWitness();
  v113[0] = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v113 - v10;
  v12 = MEMORY[0x1E69E7CC0];
  v147 = MEMORY[0x1E69E7CC0];
  v121 = a1;
  v113[1] = v7;
  sub_1A957C988();
  sub_1A957C3C8();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v118 = v11;
  v119 = v9;
  v115 = AssociatedConformanceWitness;
  sub_1A957CCB8();
  if ((v143 & 1) == 0)
  {
    v40 = v142;
    v114 = (v141 + 8);
    v14 = MEMORY[0x1E69E7CC0];
    v15 = v121;
    v124 = a2;
    while (1)
    {
      v41 = v116;
      v42 = v120;
      sub_1A957CD48();
      v148 = v40;
      v43 = v15;
      v44 = AssociatedTypeWitness;
      swift_getAssociatedConformanceWitness();
      v45 = sub_1A957C9E8();
      v47 = *v46;
      v45(&v142, 0);
      v48 = v41;
      v21 = 40;
      (*v114)(v48, v44);
      v49 = sub_1A94516F0(v47);
      v50 = sub_1A9457B5C(v49);

      MEMORY[0x1EEE9AC00](v51);
      v113[-6] = a2;
      v113[-5] = v42;
      v113[-4] = v50;
      v113[-3] = &v147;
      v113[-2] = v40;
      v113[-1] = v43;

      v18 = v122;
      v52 = sub_1A9453760(sub_1A9458248, &v113[-8], v14);
      v122 = v18;

      v20 = 0;
      v54 = v50 + 56;
      v53 = *(v50 + 56);
      v130 = v50;
      v55 = 1 << *(v50 + 32);
      if (v55 < 64)
      {
        v56 = ~(-1 << v55);
      }

      else
      {
        v56 = -1;
      }

      v57 = v56 & v53;
      v58 = (v55 + 63) >> 6;
      v133 = v40;
      v123 = v40 >> 14;
      v14 = v52;
      v128 = v50 + 56;
      for (i = v58; ; v58 = i)
      {
LABEL_48:
        if (v57)
        {
          goto LABEL_53;
        }

LABEL_49:
        v59 = v20 + 1;
        if (__OFADD__(v20, 1))
        {
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
          goto LABEL_137;
        }

        if (v59 >= v58)
        {
          break;
        }

        v57 = *(v54 + 8 * v59);
        ++v20;
        if (!v57)
        {
          goto LABEL_49;
        }

        v20 = v59;
LABEL_53:
        v135 = (v57 - 1) & v57;
        v60 = *(v130 + 48) + 24 * (__clz(__rbit64(v57)) | (v20 << 6));
        v61 = *v60;
        v18 = *(v60 + 8);
        v62 = *(v60 + 16);
        v63 = *(v14 + 16);
        sub_1A9457A70(*v60, v18, *(v60 + 16));
        v65 = v61 != 1 || v18 != 0;
        v66 = v62 == 2;
        if (v18 | v61)
        {
          v66 = 0;
        }

        v134 = v66;
        v67 = *(v14 + 16);
        v141 = v61;
        v137 = v63;
        if (v63)
        {
          v68 = 0;
          v138 = v14 + 32;
          v139 = v61 + 56;
          v136 = v62 != 2 || v65;
          v140 = v62;
          do
          {
            if (v68 >= v67)
            {
              goto LABEL_131;
            }

            v71 = v138 + 40 * v68;
            v72 = *v71;
            v73 = *(v71 + 8);
            v74 = *(v71 + 16);
            if (*(v71 + 16))
            {
              if (v74 != 1)
              {
                if (v72 | v73)
                {
                  if ((v136 & 1) == 0)
                  {
                    sub_1A9458200(*v71, *(v71 + 8), 2u);
                    v103 = 1;
LABEL_118:
                    v101 = 0;
                    v102 = 2;
                    goto LABEL_120;
                  }
                }

                else if (v134)
                {
                  sub_1A9458200(*v71, *(v71 + 8), 2u);
                  v103 = 0;
                  goto LABEL_118;
                }

LABEL_64:
                v69 = v141;
                sub_1A9457A70(v141, v18, v140);
                sub_1A9457A70(v72, v73, v74);
                sub_1A9458200(v72, v73, v74);
                v70 = v69;
                v62 = v140;
                sub_1A9458200(v70, v18, v140);
                goto LABEL_65;
              }

              if (v62 != 1)
              {
                goto LABEL_64;
              }

              v75 = v141;
              if (v72 == v141)
              {
                sub_1A9457A70(v141, *(v71 + 8), 1u);
                sub_1A9457A70(v75, v18, 1u);
                sub_1A9457A70(v75, v73, 1u);
                v72 = v75;
LABEL_114:
                sub_1A9458200(v72, v73, 1u);
                sub_1A9458200(v75, v18, 1u);
                sub_1A9458200(v72, v73, 1u);
                v103 = v75;
                v101 = v18;
                v102 = 1;
                goto LABEL_120;
              }

              if (*(v72 + 16) == *(v141 + 16))
              {
                v76 = *(v72 + 56);
                v125 = v72 + 56;
                v77 = 1 << *(v72 + 32);
                if (v77 < 64)
                {
                  v78 = ~(-1 << v77);
                }

                else
                {
                  v78 = -1;
                }

                v21 = v78 & v76;
                sub_1A9457A70(v72, v73, 1u);
                v126 = v18;
                sub_1A9457A70(v75, v18, 1u);
                sub_1A9457A70(v72, v73, 1u);
                v18 = 0;
                v79 = (v77 + 63) >> 6;
                v129 = v79;
                v131 = v14;
                while (v21)
                {
                  v83 = __clz(__rbit64(v21));
                  v132 = (v21 - 1) & v21;
LABEL_94:
                  v86 = (*(v72 + 48) + 16 * (v83 | (v18 << 6)));
                  v88 = *v86;
                  v87 = v86[1];
                  v89 = v141;
                  sub_1A957D4F8();

                  sub_1A957C228();
                  v90 = sub_1A957D548();
                  v91 = -1 << *(v89 + 32);
                  v92 = v90 & ~v91;
                  if (((*(v139 + ((v92 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v92) & 1) == 0)
                  {
LABEL_102:

                    sub_1A9458200(v72, v73, 1u);
                    v18 = v126;
                    sub_1A9458200(v141, v126, 1u);
                    sub_1A9458200(v72, v73, 1u);
                    v14 = v131;
                    v21 = 40;
                    goto LABEL_104;
                  }

                  v93 = ~v91;
                  while (1)
                  {
                    v94 = (*(v141 + 48) + 16 * v92);
                    v95 = *v94 == v88 && v94[1] == v87;
                    if (v95 || (sub_1A957D3E8() & 1) != 0)
                    {
                      break;
                    }

                    v92 = (v92 + 1) & v93;
                    if (((*(v139 + ((v92 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v92) & 1) == 0)
                    {
                      goto LABEL_102;
                    }
                  }

                  v14 = v131;
                  v75 = v141;
                  v79 = v129;
                  v21 = v132;
                }

                v84 = v18;
                while (1)
                {
                  v18 = v84 + 1;
                  if (__OFADD__(v84, 1))
                  {
                    break;
                  }

                  if (v18 >= v79)
                  {
                    v18 = v126;
                    goto LABEL_114;
                  }

                  v85 = *(v125 + 8 * v18);
                  ++v84;
                  if (v85)
                  {
                    v83 = __clz(__rbit64(v85));
                    v132 = (v85 - 1) & v85;
                    goto LABEL_94;
                  }
                }

LABEL_129:
                __break(1u);
                goto LABEL_130;
              }

              sub_1A9457A70(*v71, *(v71 + 8), 1u);
              sub_1A9457A70(v75, v18, 1u);
              sub_1A9457A70(v72, v73, 1u);
              sub_1A9458200(v72, v73, 1u);
              sub_1A9458200(v75, v18, 1u);
              sub_1A9458200(v72, v73, 1u);
LABEL_104:
              v62 = v140;
            }

            else
            {
              if (v62)
              {
                goto LABEL_64;
              }

              v80 = v141;
              if (v72 == v141 && v73 == v18)
              {
                sub_1A9457A70(v141, v18, 0);
                sub_1A9458200(v80, v18, 0);
                v103 = v80;
LABEL_119:
                v101 = v18;
                v102 = 0;
LABEL_120:
                sub_1A9458200(v103, v101, v102);
                if (v68 >= *(v14 + 16))
                {
                  goto LABEL_133;
                }

                v18 = *(v71 + 24);
                if (v123 < v18 >> 14)
                {
                  goto LABEL_134;
                }

                v21 = *v71;
                v104 = *(v71 + 8);
                v105 = *(v71 + 16);
                sub_1A9457A70(*v71, v104, v105);
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v14 = sub_1A94572AC(v14);
                }

                if (v68 < *(v14 + 16))
                {
                  v106 = v14 + 40 * v68;
                  v107 = *(v106 + 32);
                  v108 = *(v106 + 40);
                  *(v106 + 32) = v21;
                  *(v106 + 40) = v104;
                  v21 = 40;
                  v109 = *(v106 + 48);
                  *(v106 + 48) = v105;
                  v110 = v133;
                  *(v106 + 56) = v18;
                  *(v106 + 64) = v110;
                  sub_1A9458200(v107, v108, v109);
                  a2 = v124;
                  v54 = v128;
                  v58 = i;
                  v57 = v135;
                  goto LABEL_48;
                }

                goto LABEL_135;
              }

              v82 = sub_1A957D3E8();
              sub_1A9457A70(v80, v18, 0);
              sub_1A9457A70(v72, v73, 0);
              sub_1A9458200(v72, v73, 0);
              sub_1A9458200(v80, v18, 0);
              v62 = v140;
              if (v82)
              {
                v103 = v141;
                goto LABEL_119;
              }
            }

LABEL_65:
            ++v68;
            v67 = *(v14 + 16);
          }

          while (v68 != v137);
        }

        v96 = v18;
        v18 = v133;
        a2 = v124;
        if (!v67)
        {
          v18 = v133;
          if (!*(v147 + 16))
          {
            sub_1A957C948();
            v18 = v142;
            if (v123 < v142 >> 14)
            {
              goto LABEL_132;
            }
          }
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v14 = sub_1A945705C(0, *(v14 + 16) + 1, 1, v14);
        }

        v98 = *(v14 + 16);
        v97 = *(v14 + 24);
        v54 = v128;
        v57 = v135;
        if (v98 >= v97 >> 1)
        {
          v111 = sub_1A945705C((v97 > 1), v98 + 1, 1, v14);
          v57 = v135;
          v54 = v128;
          v14 = v111;
        }

        *(v14 + 16) = v98 + 1;
        v99 = v14 + 40 * v98;
        v21 = 40;
        *(v99 + 32) = v141;
        *(v99 + 40) = v96;
        *(v99 + 48) = v62;
        v100 = v133;
        *(v99 + 56) = v18;
        *(v99 + 64) = v100;
      }

      sub_1A957CCB8();
      v40 = v142;
      v15 = v121;
      if (v143)
      {
        goto LABEL_3;
      }
    }
  }

  v14 = v12;
  v15 = v121;
LABEL_3:
  v16 = (*(v113[0] + 8))(v118, v119);
  MEMORY[0x1EEE9AC00](v16);
  v17 = v120;
  v113[-4] = a2;
  v113[-3] = v17;
  v113[-2] = &v147;
  v113[-1] = v15;
  sub_1A945391C(sub_1A9457A90, &v113[-6], v14);
  v18 = v147;
  v19 = *(v147 + 16);
  if (v19)
  {
    goto LABEL_9;
  }

  sub_1A957C948();
  v20 = v142;
  sub_1A957C998();
  v21 = v148;
  if (v148 >> 14 < v20 >> 14)
  {
    goto LABEL_136;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_137:
    v18 = sub_1A945705C(0, *(v18 + 16) + 1, 1, v18);
  }

  v23 = *(v18 + 16);
  v22 = *(v18 + 24);
  v19 = v23 + 1;
  if (v23 >= v22 >> 1)
  {
    v18 = sub_1A945705C((v22 > 1), v23 + 1, 1, v18);
  }

  *(v18 + 16) = v19;
  v24 = v18 + 40 * v23;
  *(v24 + 32) = 0;
  *(v24 + 40) = 0;
  *(v24 + 48) = 2;
  *(v24 + 56) = v20;
  *(v24 + 64) = v21;
  v147 = v18;
LABEL_9:
  v131 = v14;
  v21 = 0;
  v20 = 0;
  v25 = 0;
  v14 = 0;
  v18 = v19 - 1;
  v26 = 255;
  do
  {
    v27 = v20;
    sub_1A94539C0(v18, &v148);
    v20 = v151;
    if (v26 == 255)
    {
      goto LABEL_13;
    }

    if (v21 >> 14 < v151 >> 14)
    {
      __break(1u);
LABEL_128:
      __break(1u);
      goto LABEL_129;
    }

    if (v26)
    {
      if (v26 == 1)
      {

        sub_1A9458200(v28, v25, 1u);
        sub_1A9458200(0, 0, 2u);
        v30 = v148;
        v29 = v149;
        v31 = v150;
        if (v150 == 1)
        {
          sub_1A9458234(v14, v25, v26);
          sub_1A9457A70(v30, v29, 1u);
          v32 = sub_1A9454870(v14, v30);
          sub_1A9458200(v14, v25, 1u);
          sub_1A9458200(v30, v29, 1u);
          if (v32)
          {
            goto LABEL_11;
          }

          goto LABEL_31;
        }

        sub_1A9458234(v14, v25, v26);
        sub_1A9457A70(v30, v29, v31);
        v33 = v14;
        v34 = v25;
        v35 = 1;
      }

      else
      {
        sub_1A9458200(v14, v25, 2u);
        sub_1A9458200(0, 0, 2u);
        if (!(v14 | v25))
        {
          goto LABEL_11;
        }

        v30 = v148;
        v29 = v149;
        v31 = v150;
        if (v150 == 2 && v148 == 1 && !v149)
        {
          sub_1A9458200(v14, v25, 2u);
          sub_1A9458200(1, 0, 2u);
LABEL_11:
          sub_1A9458220(v14, v25, v26);
LABEL_12:
          v152 = v21;
          goto LABEL_13;
        }

        sub_1A9457A70(v148, v149, v150);
        v33 = v14;
        v34 = v25;
        v35 = 2;
      }
    }

    else
    {

      sub_1A9458200(v14, v25, 0);
      sub_1A9458200(0, 0, 2u);
      v30 = v148;
      v29 = v149;
      v31 = v150;
      if (!v150)
      {
        if (v14 == v148 && v25 == v149)
        {

          sub_1A9458200(v14, v25, 0);
          sub_1A9458200(v14, v25, 0);
          goto LABEL_12;
        }

        v39 = sub_1A957D3E8();
        sub_1A9458234(v14, v25, v26);
        sub_1A9457A70(v30, v29, 0);
        sub_1A9458200(v14, v25, 0);
        sub_1A9458200(v30, v29, 0);
        if (v39)
        {
          goto LABEL_11;
        }

LABEL_38:

        v36 = v30;
        v37 = v29;
        v38 = 0;
        goto LABEL_39;
      }

      sub_1A9458234(v14, v25, v26);
      sub_1A9457A70(v30, v29, v31);
      v33 = v14;
      v34 = v25;
      v35 = 0;
    }

    sub_1A9458200(v33, v34, v35);
    sub_1A9458200(v30, v29, v31);
    if (!v31)
    {
      goto LABEL_38;
    }

    if (v31 != 1)
    {
      sub_1A9458200(v30, v29, 2u);
      sub_1A9458200(0, 0, 2u);
      if (!(v30 | v29))
      {
        sub_1A9458200(v30, v29, 2u);
        v148 = v14;
        v149 = v25;
        v150 = v26;
        goto LABEL_12;
      }

      goto LABEL_40;
    }

LABEL_31:

    v37 = v29;
    v38 = 1;
LABEL_39:
    sub_1A9458200(v36, v37, v38);
    sub_1A9458200(0, 0, 2u);
LABEL_40:
    if (*(v147 + 16) < v18)
    {
      goto LABEL_128;
    }

    v142 = v14;
    v143 = v25;
    v144 = v26;
    v145 = v27;
    v146 = v21;
    sub_1A945812C(v18, v18, &v142);
    sub_1A9458220(v14, v25, v26);
LABEL_13:
    v14 = v148;
    v25 = v149;
    v26 = v150;
    v21 = v152;
    --v18;
  }

  while (v18 != -1);
  v151 = v20;
  sub_1A945812C(0, 0, &v148);
  sub_1A9458200(v14, v25, v26);

  return v147;
}

uint64_t sub_1A9452E70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!*(a4 + 16))
  {
    return 0;
  }

  v5 = a3;
  sub_1A957D4F8();
  if (v5)
  {
    if (v5 == 1)
    {
      MEMORY[0x1AC5863C0](1);
      sub_1A9457590(v30, a1);
    }

    else
    {
      v8 = a1 | a2 ? 3 : 2;
      MEMORY[0x1AC5863C0](v8);
    }
  }

  else
  {
    MEMORY[0x1AC5863C0](0);
    sub_1A957C228();
  }

  v9 = sub_1A957D548();
  v10 = -1 << *(a4 + 32);
  v11 = v9 & ~v10;
  if (((*(a4 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
  {
    return 0;
  }

  v29 = ~v10;
  v12 = v5 != 2;
  v13 = v5 == 2;
  if (a2 | a1)
  {
    v13 = 0;
  }

  if (a1 != 1 || a2 != 0)
  {
    v12 = 1;
  }

  v27 = v13;
  v28 = v12;
  while (1)
  {
    v15 = *(a4 + 48) + 24 * v11;
    v17 = *v15;
    v16 = *(v15 + 8);
    v18 = *(v15 + 16);
    if (*(v15 + 16))
    {
      if (v18 == 1)
      {
        if (v5 == 1)
        {
          v19 = 1;
          sub_1A9457A70(v17, v16, 1u);
          sub_1A9457A70(v17, v16, 1u);
          sub_1A9457A70(a1, a2, 1u);
          v20 = sub_1A9454870(v17, a1);
          sub_1A9458200(v17, v16, 1u);
          sub_1A9458200(v17, v16, 1u);
          sub_1A9458200(a1, a2, 1u);
          if (v20)
          {
            return v19;
          }

          goto LABEL_22;
        }

LABEL_20:
        sub_1A9457A70(v17, v16, v18);
      }

      else
      {
        if (v17 | v16)
        {
          if (!v28)
          {
            sub_1A9458200(v17, v16, 2u);
            v19 = 1;
            sub_1A9458200(1, 0, 2u);
            return v19;
          }
        }

        else if (v27)
        {
          sub_1A9458200(v17, v16, 2u);
          v24 = 0;
          v25 = 0;
          v26 = 2;
          goto LABEL_43;
        }

        LOBYTE(v18) = 2;
      }

      sub_1A9457A70(a1, a2, v5);
      sub_1A9458200(v17, v16, v18);
      sub_1A9458200(a1, a2, v5);
      goto LABEL_22;
    }

    if (v5)
    {
      goto LABEL_20;
    }

    if (v17 == a1 && v16 == a2)
    {
      break;
    }

    v22 = sub_1A957D3E8();
    sub_1A9457A70(v17, v16, 0);
    sub_1A9457A70(a1, a2, 0);
    sub_1A9458200(v17, v16, 0);
    sub_1A9458200(a1, a2, 0);
    if (v22)
    {
      return 1;
    }

LABEL_22:
    v11 = (v11 + 1) & v29;
    if (((*(a4 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
    {
      return 0;
    }
  }

  sub_1A9457A70(a1, a2, 0);
  sub_1A9457A70(a1, a2, 0);
  sub_1A9458200(a1, a2, 0);
  v24 = a1;
  v25 = a2;
  v26 = 0;
LABEL_43:
  sub_1A9458200(v24, v25, v26);
  return 1;
}

uint64_t TTSStringTagger.Tag.extendingRangeTo(_:)@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v8 = *(a2 + 16);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = (*(v9 + 16))(v11, v4, v8);
  v13 = *(v4 + *(a2 + 36));
  if (a1 >> 14 < v13 >> 14)
  {
    __break(1u);
  }

  else
  {
    v14 = *(a2 + 24);
    (*(v9 + 32))(a3, v11, v8);
    result = type metadata accessor for TTSStringTagger.Tag(0, v8, v14, v15);
    v16 = (a3 + *(result + 36));
    *v16 = v13;
    v16[1] = a1;
  }

  return result;
}

uint64_t sub_1A9453308(uint64_t *a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v6 = *a1;
  v7 = a1[1];
  v8 = *(a1 + 16);
  v9 = a1[4];
  v47 = a1[3];
  v51 = v47;
  v43 = v9;
  v56[0] = v9;
  sub_1A9457A70(v6, v7, v8);
  v46 = sub_1A957C078();
  if (v8 == 2 && (v7 | v6) == 0)
  {
    v17 = 0;
    v15 = 0;
    LOBYTE(v11) = 2;
  }

  else
  {
    v39 = v8;
    v40 = v7;
    v41 = v6;
    v42 = v4;
    v11 = *v4;
    v12 = *(*v4 + 16);
    if (v12)
    {
      v45 = v43 >> 14;
      v13 = 40 * v12 + 32;
      v14 = -v12;
      v15 = v47;
      while (1)
      {
        if (v12 > v11[2])
        {
          __break(1u);
LABEL_38:
          v47 = v15;
          break;
        }

        v50 = v14;
        v16 = v11 + v13;
        v17 = *(v11 + v13 - 40);
        v4 = *(v11 + v13 - 32);
        v18 = *(v11 + v13 - 24);
        v19 = *(v11 + v13 - 8);
        v20 = v19 >> 14;
        v47 = v15;
        if (v19 >> 14 <= v15 >> 14)
        {
          sub_1A9457A70(v17, v4, v18);
          sub_1A9458200(v17, v4, v18);
          break;
        }

        v48 = v13;
        v21 = v11;
        v49 = v12 - 1;
        v22 = *(v16 - 2);
        v11 = (v22 >> 14);
        v15 >>= 14;
        if (v22 >> 14 == v15 && v20 == v45)
        {
          v56[0] = v17;
          v56[1] = v4;
          v57 = v18;
          v54[0] = v41;
          v54[1] = v40;
          v55 = v39;
          sub_1A9457A70(v17, v4, v18);
          sub_1A9454570(v56, v54, &v51);
          sub_1A9458200(v41, v40, v39);
          sub_1A9458200(v17, v4, v18);
          v17 = v51;
          v15 = v52;
          LOBYTE(v11) = v53;
          v4 = v42;
          sub_1A94539C0(v49, &v51);
          sub_1A9458200(v51, v52, v53);
          goto LABEL_31;
        }

        v44 = v12;
        v51 = *(v16 - 2);
        v56[0] = v19;
        sub_1A9457A70(v17, v4, v18);
        if (sub_1A957C078() >= v46)
        {
          sub_1A9458200(v17, v4, v18);
          if (v45 < v20)
          {
            __break(1u);
LABEL_40:
            __break(1u);
LABEL_41:
            __break(1u);
LABEL_42:
            result = sub_1A945705C(0, a2[2] + 1, 1, a2);
            a2 = result;
LABEL_34:
            v37 = a2[2];
            v36 = a2[3];
            if (v37 >= v36 >> 1)
            {
              result = sub_1A945705C((v36 > 1), v37 + 1, 1, a2);
              a2 = result;
            }

            a2[2] = v37 + 1;
            v38 = &a2[5 * v37];
            v38[4] = v17;
            v38[5] = v15;
            *(v38 + 48) = v11;
            v38[7] = v47;
            v38[8] = v43;
            *v4 = a2;
            return result;
          }

          v51 = v19;
          v56[0] = v43;
          v46 = sub_1A957C078();
          v15 = v19;
          v11 = v21;
          v25 = v48;
          v24 = v50;
        }

        else
        {
          if (v11 >= v15)
          {
            sub_1A9458200(v17, v4, v18);
            v11 = v21;
            v15 = v47;
            v24 = v50;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v11 = sub_1A94572AC(v21);
            }

            v25 = v48;
            v30 = v11[2];
            if (v44 > v30)
            {
              goto LABEL_40;
            }

            v31 = *(v11 + v48 - 40);
            v32 = v30 - 1;
            v33 = *(v11 + v48 - 32);
            v34 = *(v11 + v48 - 24);
            memmove(v11 + v48 - 40, v11 + v48, 40 * (v50 + v30));
            v11[2] = v32;
            v27 = v31;
            v28 = v33;
            v29 = v34;
          }

          else
          {
            v11 = v21;
            v15 = v47;
            v24 = v50;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v11 = sub_1A94572AC(v21);
            }

            v25 = v48;
            if (v44 > v11[2])
            {
              goto LABEL_41;
            }

            v26 = v11 + v48;
            v27 = *(v11 + v48 - 40);
            v28 = *(v11 + v48 - 32);
            *(v26 - 5) = v17;
            *(v26 - 4) = v4;
            v29 = *(v11 + v48 - 24);
            *(v26 - 24) = v18;
            *(v26 - 2) = v22;
            *(v26 - 1) = v47;
          }

          sub_1A9458200(v27, v28, v29);
          *v42 = v11;
        }

        v13 = v25 - 40;
        v14 = v24 + 1;
        v12 = v49;
        if (!v49)
        {
          goto LABEL_38;
        }
      }
    }

    v17 = v41;
    v4 = v42;
    v15 = v40;
    LOBYTE(v11) = v39;
  }

LABEL_31:
  if ((v47 ^ v43) >= 0x4000)
  {
    a2 = *v4;
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_34;
  }

  return sub_1A9458200(v17, v15, v11);
}

uint64_t sub_1A9453760(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a3;
  v20 = result;
  v19 = *(a3 + 16);
  if (v19)
  {
    v5 = 0;
    v6 = (a3 + 56);
    v7 = MEMORY[0x1E69E7CC0];
    while (v5 < *(v4 + 16))
    {
      v8 = *(v6 - 2);
      v21 = *(v6 - 3);
      v22 = v8;
      v23 = *(v6 - 8);
      v24 = *v6;
      sub_1A9457A70(v21, v8, v23);
      v9 = v20(&v21);
      if (v3)
      {
        sub_1A9458200(v21, v22, v23);

        goto LABEL_15;
      }

      v11 = v21;
      v10 = v22;
      v12 = v23;
      if (v9)
      {
        v13 = v24;
        result = swift_isUniquelyReferenced_nonNull_native();
        v25 = v7;
        if ((result & 1) == 0)
        {
          result = sub_1A94572C0(0, *(v7 + 16) + 1, 1);
          v7 = v25;
        }

        v15 = *(v7 + 16);
        v14 = *(v7 + 24);
        v16 = v7;
        if (v15 >= v14 >> 1)
        {
          result = sub_1A94572C0((v14 > 1), v15 + 1, 1);
          v16 = v25;
        }

        *(v16 + 16) = v15 + 1;
        v17 = v16 + 40 * v15;
        *(v17 + 32) = v11;
        *(v17 + 40) = v10;
        *(v17 + 48) = v12;
        v4 = a3;
        *(v17 + 56) = v13;
        v7 = v16;
      }

      else
      {
        result = sub_1A9458200(v21, v22, v23);
      }

      ++v5;
      v6 = (v6 + 40);
      if (v19 == v5)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    v7 = MEMORY[0x1E69E7CC0];
LABEL_15:

    return v7;
  }

  return result;
}

void (*sub_1A945391C(void (*result)(uint64_t *), uint64_t a2, uint64_t a3))(uint64_t *)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v5 = result;
    v6 = v4 - 1;
    v7 = (a3 + 56);
    do
    {
      v8 = v6;
      v9 = *(v7 - 2);
      v10 = *(v7 - 8);
      v11 = *(v7 - 3);
      v12 = v9;
      v13 = v10;
      v14 = *v7;
      sub_1A9457A70(v11, v9, v10);
      v5(&v11);
      result = sub_1A9458200(v11, v12, v13);
      if (v3)
      {
        break;
      }

      v6 = v8 - 1;
      v7 = (v7 + 40);
    }

    while (v8);
  }

  return result;
}

uint64_t sub_1A94539C0@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1A94572AC(v5);
    v5 = result;
  }

  v7 = v5[2];
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    v9 = &v5[5 * a1];
    v10 = *(v9 + 2);
    v9 += 4;
    v11 = *(v9 + 16);
    *a2 = v10;
    *(a2 + 16) = v11;
    *(a2 + 24) = *(v9 + 3);
    result = memmove(v9, v9 + 5, 40 * (v8 - a1));
    v5[2] = v8;
    *v2 = v5;
  }

  return result;
}

uint64_t sub_1A9453A64(uint64_t a1)
{
  v2 = v1;
  v3 = *(a1 + 16);
  v4 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    v27 = MEMORY[0x1E69E7CC0];
    sub_1A94572E0(0, v3, 0);
    v4 = v27;
    v6 = (a1 + 56);
    do
    {
      v7 = *(v6 - 3);
      v8 = *(v6 - 2);
      v9 = *(v6 - 8);
      v20[0] = v7;
      v20[1] = v8;
      v21 = v9;
      v22 = *v6;
      sub_1A9457A70(v7, v8, v9);
      sub_1A9453BA4(v20, v2, &v23);
      sub_1A9458200(v7, v8, v9);
      v10 = v23;
      v11 = v24;
      v12 = v25;
      v13 = v26;
      v27 = v4;
      v15 = *(v4 + 16);
      v14 = *(v4 + 24);
      if (v15 >= v14 >> 1)
      {
        v18 = v26;
        v19 = v23;
        sub_1A94572E0((v14 > 1), v15 + 1, 1);
        v13 = v18;
        v10 = v19;
        v4 = v27;
      }

      *(v4 + 16) = v15 + 1;
      v16 = v4 + 48 * v15;
      *(v16 + 32) = v10;
      *(v16 + 48) = v11;
      *(v16 + 56) = v12;
      *(v16 + 64) = v13;
      v6 = (v6 + 40);
      --v3;
    }

    while (v3);
  }

  return v4;
}

uint64_t sub_1A9453BA4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v83 = a2;
  v5 = sub_1A937829C(&qword_1EB386A68, &qword_1A9587F40);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v70 - v6;
  v94 = sub_1A957B2E8();
  v8 = *(v94 - 8);
  MEMORY[0x1EEE9AC00](v94);
  v97 = &v70 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = sub_1A957B188();
  v10 = *(v98 - 8);
  v11 = MEMORY[0x1EEE9AC00](v98);
  v91 = &v70 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v90 = &v70 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v89 = &v70 - v15;
  v96 = sub_1A957B308();
  v77 = *(v96 - 8);
  MEMORY[0x1EEE9AC00](v96);
  v95 = &v70 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *a1;
  v18 = a1[1];
  v19 = *(a1 + 16);
  v20 = a1[3];
  v75 = a1[4];
  v74 = v20;
  v73 = v19;
  if (v19)
  {
    if (v19 == 1)
    {
      v21 = v18;

      sub_1A9458200(v22, v18, 1u);
      result = sub_1A9458200(1, 0, 2u);
      v24 = *(v17 + 16);
      v72 = v18;
      if (v24)
      {
        v87 = v8;
        v25 = sub_1A9457228(v24, 0);
        v26 = sub_1A9457918(v100, v25 + 4, v24, v17);
        v27 = v100[0];
        v99 = v100[2];
        v92 = v100[4];
        v93 = v100[3];
        sub_1A9457A70(v17, v21, 1u);
        result = sub_1A932D088(v27);
        if (v26 != v24)
        {
LABEL_31:
          __break(1u);
          return result;
        }

        v28 = v25;
        v8 = v87;
      }

      else
      {
        v28 = MEMORY[0x1E69E7CC0];
      }
    }

    else
    {
      v29 = v17;
      sub_1A9458200(v17, v18, 2u);
      result = sub_1A9458200(1, 0, 2u);
      if (v17 | v18)
      {
        sub_1A937829C(&qword_1EB386B40, &qword_1A95885C8);
        v30 = (*(v10 + 80) + 32) & ~*(v10 + 80);
        v31 = swift_allocObject();
        *(v31 + 16) = xmmword_1A9587160;
        sub_1A957B168();
        v32 = sub_1A93ACF58(v31);
        swift_setDeallocating();
        (*(v10 + 8))(v31 + v30, v98);
        result = swift_deallocClassInstance();
        *a3 = v29;
        *(a3 + 8) = v18;
        *(a3 + 16) = 2;
        v33 = v74;
        *(a3 + 24) = v32;
        *(a3 + 32) = v33;
        *(a3 + 40) = v75;
        return result;
      }

      v72 = v18;
      v28 = MEMORY[0x1E69E7CC0];
    }
  }

  else
  {

    sub_1A9458200(v17, v18, 0);
    sub_1A9458200(1, 0, 2u);
    sub_1A937829C(&qword_1EB388390, &qword_1A9588580);
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_1A9587160;
    *(v28 + 32) = v17;
    *(v28 + 40) = v18;
    v72 = v18;
  }

  v70 = v17;
  v71 = a3;
  v34 = *(v28 + 16);
  if (v34)
  {
    v35 = 0;
    v82 = v28 + 32;
    v36 = v77 + 16;
    v37 = (v77 + 8);
    v38 = (v8 + 1);
    v93 = (v10 + 48);
    v86 = (v10 + 16);
    v87 = (v10 + 32);
    v85 = (v10 + 8);
    v39 = MEMORY[0x1E69E7CD0];
    v76 = v28;
    v78 = v34;
    v88 = v7;
    while (v35 < *(v28 + 16))
    {
      v40 = (v82 + 16 * v35);
      v42 = *v40;
      v41 = v40[1];
      v100[0] = v39;
      v43 = *(v83 + 24);
      if (*(v43 + 16))
      {
        v84 = v35;

        v44 = sub_1A937A490(v42, v41);
        if (v45)
        {
          v80 = v41;
          v81 = v39;
          v46 = *(*(v43 + 56) + 8 * v44);
          v47 = *(v46 + 16);
          if (v47)
          {
            v48 = v46 + ((*(v77 + 80) + 32) & ~*(v77 + 80));
            v49 = *(v77 + 72);
            v99 = *(v77 + 16);
            v79 = v46;

            v92 = v49;
            do
            {
              v50 = v95;
              v51 = v96;
              v99(v95, v48, v96);
              v52 = v97;
              sub_1A957B2F8();
              (*v37)(v50, v51);
              sub_1A957B2B8();
              (*v38)(v52, v94);
              v53 = v98;
              if ((*v93)(v7, 1, v98) == 1)
              {
                sub_1A937B960(v7, &qword_1EB386A68, &qword_1A9587F40);
              }

              else
              {
                v54 = v89;
                (*v87)(v89, v7, v53);
                v55 = v38;
                v56 = v91;
                (*v86)(v91, v54, v53);
                v57 = v53;
                v58 = v37;
                v59 = v36;
                v60 = v90;
                v61 = v56;
                v38 = v55;
                sub_1A93A3F0C(v90, v61);
                v62 = *v85;
                v63 = v60;
                v36 = v59;
                v37 = v58;
                (*v85)(v63, v57);
                v64 = v57;
                v7 = v88;
                v62(v54, v64);
                v49 = v92;
              }

              v48 += v49;
              --v47;
            }

            while (v47);

            v28 = v76;
          }

          v39 = v100[0];
          v34 = v78;
        }

        else
        {
        }

        v35 = v84;
      }

      if (++v35 == v34)
      {
        goto LABEL_28;
      }
    }

    __break(1u);
    goto LABEL_31;
  }

  v39 = MEMORY[0x1E69E7CD0];
LABEL_28:

  v65 = v71;
  v66 = v70;
  v67 = v72;
  *v71 = v70;
  v65[1] = v67;
  v68 = v73;
  *(v65 + 16) = v73;
  v69 = v74;
  v65[3] = v39;
  v65[4] = v69;
  v65[5] = v75;
  return sub_1A9457A70(v66, v67, v68);
}

uint64_t sub_1A94543A0(void *a1)
{
  sub_1A93780F4(a1, a1[3]);
  v3 = a1[3];
  v4 = a1[4];
  v5 = sub_1A93780F4(a1, v3);
  (*(*v1 + 176))(v5, v3, v4);
  v6 = (*(*v1 + 184))();

  return v6;
}

uint64_t TTSStringTagger.__allocating_init(locales:)(uint64_t a1)
{
  swift_allocObject();
  v2 = sub_1A945833C(a1);

  return v2;
}

uint64_t TTSStringTagger.init(locales:)(uint64_t a1)
{
  v1 = sub_1A945833C(a1);

  return v1;
}

void *TTSStringTagger.deinit()
{
  MEMORY[0x1AC587CD0](*(v0 + 40), -1, -1);

  return v0;
}

uint64_t TTSStringTagger.__deallocating_deinit()
{
  MEMORY[0x1AC587CD0](*(v0 + 40), -1, -1);

  return swift_deallocClassInstance();
}

uint64_t sub_1A9454570@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v4 = a1[1];
  v6 = *(a1 + 16);
  if (v6 >= 2 && *a1 == 0)
  {
    v22 = *a1;
    v23 = v4;
LABEL_26:
    sub_1A9458200(v22, v23, 2u);
    result = sub_1A9458200(0, 0, 2u);
    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = 2;
    return result;
  }

  v9 = *a2;
  v8 = a2[1];
  v10 = *(a2 + 16);
  sub_1A9457A70(*a1, v4, v6);
  sub_1A9458200(v5, v4, v6);
  sub_1A9458200(0, 0, 2u);
  if (v10 >= 2 && (v9 | v8) == 0)
  {
    v22 = v9;
    v23 = v8;
    goto LABEL_26;
  }

  sub_1A9457A70(v9, v8, v10);
  sub_1A9458200(v9, v8, v10);
  sub_1A9458200(0, 0, 2u);
  if (!v6)
  {
    sub_1A937829C(&qword_1EB388390, &qword_1A9588580);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_1A9587160;
    *(v13 + 32) = v5;
    *(v13 + 40) = v4;

    if (!v10)
    {
      goto LABEL_20;
    }

LABEL_14:
    if (v10 != 1 || (v17 = *(v9 + 16)) == 0)
    {
      v19 = MEMORY[0x1E69E7CC0];
      goto LABEL_21;
    }

    v24 = sub_1A9457228(*(v9 + 16), 0);
    v26 = sub_1A9457918(&v27, v24 + 4, v17, v9);
    v18 = v27;
    sub_1A9457A70(v9, v8, 1u);
    result = sub_1A932D088(v18);
    if (v26 == v17)
    {
      v19 = v24;
LABEL_21:
      v27 = v13;
      sub_1A93ABFE0(v19);
      v21 = sub_1A93AD200(v27);

      *a3 = v21;
      *(a3 + 8) = 0;
      *(a3 + 16) = 1;
      return result;
    }

    goto LABEL_30;
  }

  if (v6 != 1)
  {
    v13 = MEMORY[0x1E69E7CC0];
    if (!v10)
    {
      goto LABEL_20;
    }

    goto LABEL_14;
  }

  v12 = *(v5 + 16);
  if (!v12)
  {
    v13 = MEMORY[0x1E69E7CC0];
    if (!v10)
    {
      goto LABEL_20;
    }

    goto LABEL_14;
  }

  v13 = sub_1A9457228(*(v5 + 16), 0);
  v14 = sub_1A9457918(&v27, (v13 + 32), v12, v5);
  v15 = v27;
  v25 = v14;
  sub_1A9457A70(v5, v4, 1u);
  result = sub_1A932D088(v15);
  if (v25 == v12)
  {
    if (v10)
    {
      goto LABEL_14;
    }

LABEL_20:
    sub_1A937829C(&qword_1EB388390, &qword_1A9588580);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_1A9587160;
    *(v20 + 32) = v9;
    *(v20 + 40) = v8;

    v19 = v20;
    goto LABEL_21;
  }

  __break(1u);
LABEL_30:
  __break(1u);
  return result;
}

uint64_t sub_1A9454870(uint64_t result, uint64_t a2)
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
    sub_1A957D4F8();

    sub_1A957C228();
    v16 = sub_1A957D548();
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
      if (v21 || (sub_1A957D3E8() & 1) != 0)
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

uint64_t sub_1A9454A28(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A957B188();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v44 = &v33 - v10;
  result = MEMORY[0x1EEE9AC00](v9);
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
      sub_1A9459260(&qword_1EB386498, MEMORY[0x1E6969610], MEMORY[0x1E6969620]);
      v26 = sub_1A957C058();
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
        sub_1A9459260(&qword_1EB386490, MEMORY[0x1E6969610], MEMORY[0x1E6969628]);
        v31 = sub_1A957C098();
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

uint64_t TTSStringTagger.CombinedScriptLanguageTag.hash(into:)(__int128 *a1)
{
  v3 = *v1;
  v4 = *(v1 + 24);
  if (*(v1 + 16))
  {
    if (*(v1 + 16) == 1)
    {
      MEMORY[0x1AC5863C0](1);
      sub_1A9457590(a1, v3);
    }

    else
    {
      if (*v1 == 0)
      {
        v5 = 2;
      }

      else
      {
        v5 = 3;
      }

      MEMORY[0x1AC5863C0](v5);
    }
  }

  else
  {
    MEMORY[0x1AC5863C0](0);
    sub_1A957C228();
  }

  return sub_1A94576EC(a1, v4);
}

uint64_t TTSStringTagger.CombinedScriptLanguageTag.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  sub_1A957D4F8();
  if (v3)
  {
    if (v3 == 1)
    {
      MEMORY[0x1AC5863C0](1);
      sub_1A9457590(v7, v1);
    }

    else
    {
      if (v1 | v2)
      {
        v5 = 3;
      }

      else
      {
        v5 = 2;
      }

      MEMORY[0x1AC5863C0](v5);
    }
  }

  else
  {
    MEMORY[0x1AC5863C0](0);
    sub_1A957C228();
  }

  sub_1A94576EC(v7, v4);
  return sub_1A957D548();
}

uint64_t sub_1A9454F50(__int128 *a1)
{
  v3 = *v1;
  v4 = *(v1 + 24);
  if (*(v1 + 16))
  {
    if (*(v1 + 16) == 1)
    {
      MEMORY[0x1AC5863C0](1);
      sub_1A9457590(a1, v3);
    }

    else
    {
      if (*v1 == 0)
      {
        v5 = 2;
      }

      else
      {
        v5 = 3;
      }

      MEMORY[0x1AC5863C0](v5);
    }
  }

  else
  {
    MEMORY[0x1AC5863C0](0);
    sub_1A957C228();
  }

  return sub_1A94576EC(a1, v4);
}

uint64_t sub_1A9455008(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  sub_1A957D4F8();
  if (v4)
  {
    if (v4 == 1)
    {
      MEMORY[0x1AC5863C0](1);
      sub_1A9457590(v8, v2);
    }

    else
    {
      if (v2 | v3)
      {
        v6 = 3;
      }

      else
      {
        v6 = 2;
      }

      MEMORY[0x1AC5863C0](v6);
    }
  }

  else
  {
    MEMORY[0x1AC5863C0](0);
    sub_1A957C228();
  }

  sub_1A94576EC(v8, v5);
  return sub_1A957D548();
}

uint64_t TTSStringTagger.Tag.range.setter(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = (v3 + *(a3 + 36));
  *v4 = result;
  v4[1] = a2;
  return result;
}

BOOL static TTSStringTagger.Tag.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = 0;
  if (sub_1A957C098())
  {
    v9 = *(type metadata accessor for TTSStringTagger.Tag(0, a3, a4, v8) + 36);
    v10 = a1 + v9;
    v11 = *(a1 + v9);
    v12 = (a2 + v9);
    if (!((*v12 ^ v11) >> 14) && (*(v10 + 8) ^ v12[1]) < 0x4000)
    {
      return 1;
    }
  }

  return result;
}

uint64_t TTSStringTagger.ScriptTag.hash(into:)(__int128 *a1)
{
  v3 = *v1;
  if (*(v1 + 16))
  {
    if (*(v1 + 16) == 1)
    {
      MEMORY[0x1AC5863C0](1);

      return sub_1A9457590(a1, v3);
    }

    else
    {
      if (*v1 == 0)
      {
        v5 = 2;
      }

      else
      {
        v5 = 3;
      }

      return MEMORY[0x1AC5863C0](v5);
    }
  }

  else
  {
    MEMORY[0x1AC5863C0](0);

    return sub_1A957C228();
  }
}

uint64_t TTSStringTagger.ScriptTag.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  sub_1A957D4F8();
  if (v3)
  {
    if (v3 == 1)
    {
      MEMORY[0x1AC5863C0](1);
      sub_1A9457590(v6, v1);
    }

    else
    {
      if (v1 | v2)
      {
        v4 = 3;
      }

      else
      {
        v4 = 2;
      }

      MEMORY[0x1AC5863C0](v4);
    }
  }

  else
  {
    MEMORY[0x1AC5863C0](0);
    sub_1A957C228();
  }

  return sub_1A957D548();
}

uint64_t sub_1A945534C()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  sub_1A957D4F8();
  if (v3)
  {
    if (v3 == 1)
    {
      MEMORY[0x1AC5863C0](1);
      sub_1A9457590(v6, v1);
    }

    else
    {
      if (v1 | v2)
      {
        v4 = 3;
      }

      else
      {
        v4 = 2;
      }

      MEMORY[0x1AC5863C0](v4);
    }
  }

  else
  {
    MEMORY[0x1AC5863C0](0);
    sub_1A957C228();
  }

  return sub_1A957D548();
}

uint64_t sub_1A94553F8(__int128 *a1)
{
  v3 = *v1;
  if (*(v1 + 16))
  {
    if (*(v1 + 16) == 1)
    {
      MEMORY[0x1AC5863C0](1);

      return sub_1A9457590(a1, v3);
    }

    else
    {
      if (*v1 == 0)
      {
        v5 = 2;
      }

      else
      {
        v5 = 3;
      }

      return MEMORY[0x1AC5863C0](v5);
    }
  }

  else
  {
    MEMORY[0x1AC5863C0](0);

    return sub_1A957C228();
  }
}

uint64_t sub_1A94554BC(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  sub_1A957D4F8();
  if (v4)
  {
    if (v4 == 1)
    {
      MEMORY[0x1AC5863C0](1);
      sub_1A9457590(v7, v2);
    }

    else
    {
      if (v2 | v3)
      {
        v5 = 3;
      }

      else
      {
        v5 = 2;
      }

      MEMORY[0x1AC5863C0](v5);
    }
  }

  else
  {
    MEMORY[0x1AC5863C0](0);
    sub_1A957C228();
  }

  return sub_1A957D548();
}

uint64_t sub_1A9455564(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = *v4;
  sub_1A957D4F8();
  v36 = v4;
  if (a4)
  {
    if (a4 == 1)
    {
      MEMORY[0x1AC5863C0](1);
      sub_1A9457590(v40, a2);
    }

    else
    {
      if (a2 | a3)
      {
        v9 = 3;
      }

      else
      {
        v9 = 2;
      }

      MEMORY[0x1AC5863C0](v9);
    }
  }

  else
  {
    MEMORY[0x1AC5863C0](0);
    sub_1A957C228();
  }

  v10 = sub_1A957D548();
  v11 = -1 << *(v39 + 32);
  v12 = v10 & ~v11;
  if (((*(v39 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
  {
LABEL_39:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v40[0] = *v36;
    sub_1A9457A70(a2, a3, a4);
    sub_1A9455C1C(a2, a3, a4, v12, isUniquelyReferenced_nonNull_native);
    *v36 = *&v40[0];
    *a1 = a2;
    *(a1 + 8) = a3;
    *(a1 + 16) = a4;
    return 1;
  }

  v13 = ~v11;
  v14 = a4 != 2;
  v15 = a4 == 2;
  if (a3 | a2)
  {
    v15 = 0;
  }

  if (a2 != 1 || a3 != 0)
  {
    v14 = 1;
  }

  v37 = v15;
  v38 = v14;
  while (1)
  {
    v20 = *(v39 + 48) + 24 * v12;
    v22 = *v20;
    v21 = *(v20 + 8);
    v23 = *(v20 + 16);
    if (*(v20 + 16))
    {
      break;
    }

    if (a4)
    {
      sub_1A9457A70(a2, a3, a4);
      v17 = v22;
      v18 = v21;
      v19 = 0;
      goto LABEL_19;
    }

    if (v22 == a2 && v21 == a3)
    {

      sub_1A9458200(a2, a3, 0);
LABEL_41:
      v29 = a2;
      v30 = a3;
      v31 = 0;
      goto LABEL_44;
    }

    v26 = sub_1A957D3E8();
    sub_1A9457A70(a2, a3, 0);
    sub_1A9457A70(v22, v21, 0);
    sub_1A9458200(v22, v21, 0);
    sub_1A9458200(a2, a3, 0);
    if (v26)
    {
      goto LABEL_41;
    }

LABEL_20:
    v12 = (v12 + 1) & v13;
    if (((*(v39 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
    {
      goto LABEL_39;
    }
  }

  if (v23 == 1)
  {
    if (a4 != 1)
    {
      sub_1A9457A70(a2, a3, a4);
      v17 = v22;
      v18 = v21;
      v19 = 1;
LABEL_19:
      sub_1A9457A70(v17, v18, v19);
      sub_1A9458200(v22, v21, v23);
      sub_1A9458200(a2, a3, a4);
      goto LABEL_20;
    }

    sub_1A9457A70(v22, v21, 1u);
    sub_1A9457A70(a2, a3, 1u);
    sub_1A9457A70(v22, v21, 1u);
    v24 = sub_1A9454870(v22, a2);
    sub_1A9458200(v22, v21, 1u);
    sub_1A9458200(v22, v21, 1u);
    sub_1A9458200(a2, a3, 1u);
    if (v24)
    {
      v29 = a2;
      v30 = a3;
      v31 = 1;
      goto LABEL_44;
    }

    goto LABEL_20;
  }

  if (v22 | v21)
  {
    if (!v38)
    {
      sub_1A9458200(v22, v21, 2u);
      v29 = 1;
      goto LABEL_43;
    }

    goto LABEL_38;
  }

  if (!v37)
  {
LABEL_38:
    v17 = a2;
    v18 = a3;
    v19 = a4;
    goto LABEL_19;
  }

  sub_1A9458200(v22, v21, 2u);
  v29 = 0;
LABEL_43:
  v30 = 0;
  v31 = 2;
LABEL_44:
  sub_1A9458200(v29, v30, v31);
  v32 = *(v39 + 48) + 24 * v12;
  v33 = *v32;
  v34 = *(v32 + 8);
  *a1 = *v32;
  *(a1 + 8) = v34;
  v35 = *(v32 + 16);
  *(a1 + 16) = v35;
  sub_1A9457A70(v33, v34, v35);
  return 0;
}

uint64_t sub_1A945595C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1A937829C(&qword_1EB387760, &qword_1A958F078);
  result = sub_1A957CEA8();
  v5 = result;
  if (*(v3 + 16))
  {
    v31 = v3;
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = *(v3 + 48) + 24 * (v15 | (v6 << 6));
      v19 = *v18;
      v20 = *(v18 + 8);
      v21 = *(v18 + 16);
      sub_1A957D4F8();
      if (v21)
      {
        if (v21 == 1)
        {
          MEMORY[0x1AC5863C0](1);
          sub_1A9457590(v32, v19);
        }

        else
        {
          if (v19 | v20)
          {
            v22 = 3;
          }

          else
          {
            v22 = 2;
          }

          MEMORY[0x1AC5863C0](v22);
        }
      }

      else
      {
        MEMORY[0x1AC5863C0](0);
        sub_1A957C228();
      }

      result = sub_1A957D548();
      v23 = -1 << *(v5 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v12 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v12 + 8 * v25);
          if (v29 != -1)
          {
            v13 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v24) & ~*(v12 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = *(v5 + 48) + 24 * v13;
      *v14 = v19;
      *(v14 + 8) = v20;
      *(v14 + 16) = v21;
      ++*(v5 + 16);
      v3 = v31;
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      bzero(v7, ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v30;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_1A9455C1C(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, char a5)
{
  v9 = a3;
  v11 = result;
  v12 = *(*v5 + 16);
  v13 = *(*v5 + 24);
  if (v13 > v12 && (a5 & 1) != 0)
  {
    goto LABEL_45;
  }

  if (a5)
  {
    sub_1A945595C(v12 + 1);
  }

  else
  {
    if (v13 > v12)
    {
      result = sub_1A9455FD4();
      goto LABEL_45;
    }

    sub_1A945613C(v12 + 1);
  }

  v14 = *v5;
  sub_1A957D4F8();
  if (v9)
  {
    if (v9 == 1)
    {
      MEMORY[0x1AC5863C0](1);
      sub_1A9457590(v34, v11);
    }

    else
    {
      if (v11 | a2)
      {
        v15 = 3;
      }

      else
      {
        v15 = 2;
      }

      MEMORY[0x1AC5863C0](v15);
    }
  }

  else
  {
    MEMORY[0x1AC5863C0](0);
    sub_1A957C228();
  }

  v5 = v34;
  result = sub_1A957D548();
  v16 = -1 << *(v14 + 32);
  a4 = result & ~v16;
  if ((*(v14 + 56 + ((a4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a4))
  {
    v17 = ~v16;
    v18 = v9 != 2;
    v19 = v9 == 2;
    if (a2 | v11)
    {
      v19 = 0;
    }

    if (v11 != 1 || a2 != 0)
    {
      v18 = 1;
    }

    v31 = v19;
    v32 = v18;
    do
    {
      v21 = *(v14 + 48) + 24 * a4;
      v6 = *v21;
      v5 = *(v21 + 8);
      v7 = *(v21 + 16);
      if (*(v21 + 16))
      {
        if (v7 != 1)
        {
          if (v6 | v5)
          {
            if (!v32)
            {
              goto LABEL_48;
            }
          }

          else if (v31)
          {
            a2 = 0;
            v11 = 0;
LABEL_51:
            sub_1A9458200(v6, v5, v7);
            sub_1A9458200(v11, a2, v7);
LABEL_52:
            result = sub_1A957D428();
            __break(1u);
            return result;
          }

          LOBYTE(v7) = 2;
          goto LABEL_27;
        }

        if (v9 != 1)
        {
LABEL_26:
          sub_1A9457A70(v6, v5, v7);
LABEL_27:
          sub_1A9457A70(v11, a2, v9);
          sub_1A9458200(v6, v5, v7);
          result = sub_1A9458200(v11, a2, v9);
          goto LABEL_28;
        }

        sub_1A9457A70(v6, v5, 1u);
        sub_1A9457A70(v6, v5, 1u);
        sub_1A9457A70(v11, a2, 1u);
        LOBYTE(v7) = sub_1A9454870(v6, v11);
        sub_1A9458200(v6, v5, 1u);
        sub_1A9458200(v6, v5, 1u);
        v22 = v11;
        v23 = a2;
        v24 = 1;
      }

      else
      {
        if (v9)
        {
          goto LABEL_26;
        }

        if (v6 == v11 && v5 == a2)
        {
          sub_1A9457A70(v11, a2, 0);
          sub_1A9457A70(v11, a2, 0);
          v5 = a2;
          v6 = v11;
          goto LABEL_51;
        }

        LOBYTE(v7) = sub_1A957D3E8();
        sub_1A9457A70(v6, v5, 0);
        sub_1A9457A70(v11, a2, 0);
        sub_1A9458200(v6, v5, 0);
        v22 = v11;
        v23 = a2;
        v24 = 0;
      }

      result = sub_1A9458200(v22, v23, v24);
      if (v7)
      {
        goto LABEL_52;
      }

LABEL_28:
      a4 = (a4 + 1) & v17;
    }

    while (((*(v14 + 56 + ((a4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a4) & 1) != 0);
  }

LABEL_45:
  v26 = *v33;
  *(*v33 + 8 * (a4 >> 6) + 56) |= 1 << a4;
  v27 = *(v26 + 48) + 24 * a4;
  *v27 = v11;
  *(v27 + 8) = a2;
  *(v27 + 16) = v9;
  v28 = *(v26 + 16);
  v29 = __OFADD__(v28, 1);
  v30 = v28 + 1;
  if (v29)
  {
    __break(1u);
LABEL_48:
    a2 = 0;
    v11 = 1;
    goto LABEL_51;
  }

  *(v26 + 16) = v30;
  return result;
}

void *sub_1A9455FD4()
{
  v1 = v0;
  sub_1A937829C(&qword_1EB387760, &qword_1A958F078);
  v2 = *v0;
  v3 = sub_1A957CE98();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 24 * (v14 | (v8 << 6));
        v18 = *(v2 + 48) + v17;
        v19 = *v18;
        v20 = *(v18 + 8);
        v21 = *(v4 + 48) + v17;
        v22 = *(v18 + 16);
        *v21 = *v18;
        *(v21 + 8) = v20;
        *(v21 + 16) = v22;
        result = sub_1A9457A70(v19, v20, v22);
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_1A945613C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1A937829C(&qword_1EB387760, &qword_1A958F078);
  result = sub_1A957CEA8();
  v5 = result;
  if (*(v3 + 16))
  {
    v30 = v3;
    v6 = 0;
    v7 = v3 + 56;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = *(v3 + 48) + 24 * (v15 | (v6 << 6));
      v19 = *v18;
      v20 = *(v18 + 8);
      v21 = *(v18 + 16);
      sub_1A957D4F8();
      if (v21)
      {
        if (v21 == 1)
        {
          MEMORY[0x1AC5863C0](1);

          sub_1A9457590(v31, v19);
        }

        else
        {
          if (v19 | v20)
          {
            v22 = 3;
          }

          else
          {
            v22 = 2;
          }

          MEMORY[0x1AC5863C0](v22);
        }
      }

      else
      {
        MEMORY[0x1AC5863C0](0);

        sub_1A957C228();
      }

      result = sub_1A957D548();
      v23 = -1 << *(v5 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v12 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v12 + 8 * v25);
          if (v29 != -1)
          {
            v13 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_36;
      }

      v13 = __clz(__rbit64((-1 << v24) & ~*(v12 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = *(v5 + 48) + 24 * v13;
      *v14 = v19;
      *(v14 + 8) = v20;
      *(v14 + 16) = v21;
      ++*(v5 + 16);
      v3 = v30;
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v6 >= v11)
      {

        v2 = v1;
        goto LABEL_34;
      }

      v17 = *(v7 + 8 * v6);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_36:
    __break(1u);
  }

  else
  {

LABEL_34:
    *v2 = v5;
  }

  return result;
}

unint64_t sub_1A94563DC(uint64_t a1)
{
  v1 = a1;
  sub_1A957D4F8();
  sub_1A957D528();
  v2 = sub_1A957D548();

  return sub_1A937BF28(v1, v2);
}

uint64_t sub_1A9456448(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1A937829C(&qword_1EB387720, &qword_1A958F038);
  v34 = v4;
  result = sub_1A957D118();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(*(v5 + 48) + 4 * v20);
      v22 = (*(v5 + 56) + 16 * v20);
      v23 = *v22;
      v24 = v22[1];
      if ((v34 & 1) == 0)
      {
      }

      sub_1A957D4F8();
      sub_1A957D528();
      result = sub_1A957D548();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 4 * v15) = v21;
      v16 = (*(v7 + 56) + 16 * v15);
      *v16 = v23;
      v16[1] = v24;
      ++*(v7 + 16);
      v5 = v33;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1A94566E4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1A937829C(&qword_1EB387730, &qword_1A958F050);
  v34 = v4;
  result = sub_1A957D118();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v34 & 1) == 0)
      {
      }

      sub_1A957D4F8();
      sub_1A957C228();
      result = sub_1A957D548();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

unint64_t sub_1A945698C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_1A94563DC(a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_1A9456448(v16, a4 & 1);
      result = sub_1A94563DC(a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_16:
        type metadata accessor for UScriptCode();
        result = sub_1A957D438();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = result;
      sub_1A9456C68();
      result = v19;
    }
  }

  v21 = *v5;
  if ((v17 & 1) == 0)
  {
    v21[(result >> 6) + 8] |= 1 << result;
    *(v21[6] + 4 * result) = a3;
    v23 = (v21[7] + 16 * result);
    *v23 = a1;
    v23[1] = a2;
    v24 = v21[2];
    v15 = __OFADD__(v24, 1);
    v25 = v24 + 1;
    if (!v15)
    {
      v21[2] = v25;
      return result;
    }

    goto LABEL_15;
  }

  v22 = (v21[7] + 16 * result);
  *v22 = a1;
  v22[1] = a2;
}

uint64_t sub_1A9456AEC(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1A937A490(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_1A94566E4(v16, a4 & 1);
      v11 = sub_1A937A490(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        result = sub_1A957D438();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_1A9456DD0();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v23 = (v21[6] + 16 * v11);
  *v23 = a2;
  v23[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v24 = v21[2];
  v15 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v25;
}

void *sub_1A9456C68()
{
  v1 = v0;
  sub_1A937829C(&qword_1EB387720, &qword_1A958F038);
  v2 = *v0;
  v3 = sub_1A957D108();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 56) + 16 * v17);
        v20 = *v18;
        v19 = v18[1];
        *(*(v4 + 48) + 4 * v17) = *(*(v2 + 48) + 4 * v17);
        v21 = (*(v4 + 56) + 16 * v17);
        *v21 = v20;
        v21[1] = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_1A9456DD0()
{
  v1 = v0;
  sub_1A937829C(&qword_1EB387730, &qword_1A958F050);
  v2 = *v0;
  v3 = sub_1A957D108();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

char *sub_1A9456F40(char *result, int64_t a2, char a3, char *a4)
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
    sub_1A937829C(&qword_1EB387768, &qword_1A958F080);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
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

void *sub_1A945705C(void *result, int64_t a2, char a3, void *a4)
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
    sub_1A937829C(&qword_1EB387748, &qword_1A958F068);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1A937829C(&qword_1EB387750, &qword_1A958F070);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1A94571A4(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  sub_1A937829C(&qword_1EB387770, &qword_1A958F088);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 29;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 2);
  return result;
}

void *sub_1A9457228(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  sub_1A937829C(&qword_1EB388390, &qword_1A9588580);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

void *sub_1A94572C0(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1A9457300(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1A94572E0(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1A9457448(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1A9457300(void *result, int64_t a2, char a3, void *a4)
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
    sub_1A937829C(&qword_1EB387748, &qword_1A958F068);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1A937829C(&qword_1EB387750, &qword_1A958F070);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1A9457448(void *result, int64_t a2, char a3, void *a4)
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
    sub_1A937829C(&qword_1EB387738, &qword_1A958F058);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[6 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 48 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1A937829C(&qword_1EB387740, &qword_1A958F060);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1A9457590(__int128 *a1, uint64_t a2)
{
  sub_1A957D548();
  v3 = 1 << *(a2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a2 + 56);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  v9 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return MEMORY[0x1AC5863C0](v8);
    }

    v5 = *(a2 + 56 + 8 * v10);
    ++v9;
    if (v5)
    {
      v9 = v10;
      do
      {
LABEL_9:
        v5 &= v5 - 1;
        sub_1A957D4F8();

        sub_1A957C228();
        v11 = sub_1A957D548();

        v8 ^= v11;
      }

      while (v5);
      continue;
    }
  }

  __break(1u);
  return result;
}