uint64_t sub_1C5639580(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v83 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_88:
    v5 = *v83;
    if (!*v83)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_1C563A1C4(v8);
      v8 = result;
    }

    v75 = (v8 + 16);
    v76 = *(v8 + 16);
    if (v76 >= 2)
    {
      while (*a3)
      {
        v77 = (v8 + 16 * v76);
        v78 = *v77;
        v79 = &v75[2 * v76];
        v80 = v79[1];
        sub_1C5639F44((*a3 + 4 * *v77), (*a3 + 4 * *v79), (*a3 + 4 * v80), v5);
        if (v4)
        {
        }

        if (v80 < v78)
        {
          goto LABEL_114;
        }

        if (v76 - 2 >= *v75)
        {
          goto LABEL_115;
        }

        *v77 = v78;
        v77[1] = v80;
        v81 = *v75 - v76;
        if (*v75 < v76)
        {
          goto LABEL_116;
        }

        v76 = *v75 - 1;
        result = memmove(v79, v79 + 2, 16 * v81);
        *v75 = v76;
        if (v76 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  v82 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 4 * v7);
      v11 = *(*a3 + 4 * v9);
      v12 = v9 + 2;
      v13 = v10;
      while (v6 != v12)
      {
        v14 = *(*a3 + 4 * v12);
        v15 = (v10 < v11) ^ (v14 >= v13);
        ++v12;
        v13 = v14;
        if ((v15 & 1) == 0)
        {
          v7 = v12 - 1;
          if (v10 >= v11)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v10 >= v11)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v7 < v9)
      {
        goto LABEL_119;
      }

      if (v9 < v7)
      {
        v16 = v7 - 1;
        v17 = v9;
        do
        {
          if (v17 != v16)
          {
            v20 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v18 = *(v20 + 4 * v17);
            *(v20 + 4 * v17) = *(v20 + 4 * v16);
            *(v20 + 4 * v16) = v18;
          }
        }

        while (++v17 < v16--);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v7 < v6)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v9 + a4 < v6)
        {
          v6 = v9 + a4;
        }

        if (v6 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v7 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v7 < v9)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1C5637CAC(0, *(v8 + 16) + 1, 1, v8);
      v8 = result;
    }

    v5 = *(v8 + 16);
    v29 = *(v8 + 24);
    v30 = v5 + 1;
    if (v5 >= v29 >> 1)
    {
      result = sub_1C5637CAC((v29 > 1), v5 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 16) = v30;
    v31 = v8 + 32;
    v32 = (v8 + 32 + 16 * v5);
    *v32 = v9;
    v32[1] = v7;
    v84 = *v83;
    if (!*v83)
    {
      goto LABEL_127;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v30 - 1;
        if (v30 >= 4)
        {
          break;
        }

        if (v30 == 3)
        {
          v33 = *(v8 + 32);
          v34 = *(v8 + 40);
          v43 = __OFSUB__(v34, v33);
          v35 = v34 - v33;
          v36 = v43;
LABEL_57:
          if (v36)
          {
            goto LABEL_104;
          }

          v49 = (v8 + 16 * v30);
          v51 = *v49;
          v50 = v49[1];
          v52 = __OFSUB__(v50, v51);
          v53 = v50 - v51;
          v54 = v52;
          if (v52)
          {
            goto LABEL_106;
          }

          v55 = (v31 + 16 * v5);
          v57 = *v55;
          v56 = v55[1];
          v43 = __OFSUB__(v56, v57);
          v58 = v56 - v57;
          if (v43)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v53, v58))
          {
            goto LABEL_111;
          }

          if (v53 + v58 >= v35)
          {
            if (v35 < v58)
            {
              v5 = v30 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v30 < 2)
        {
          goto LABEL_112;
        }

        v59 = (v8 + 16 * v30);
        v61 = *v59;
        v60 = v59[1];
        v43 = __OFSUB__(v60, v61);
        v53 = v60 - v61;
        v54 = v43;
LABEL_72:
        if (v54)
        {
          goto LABEL_108;
        }

        v62 = (v31 + 16 * v5);
        v64 = *v62;
        v63 = v62[1];
        v43 = __OFSUB__(v63, v64);
        v65 = v63 - v64;
        if (v43)
        {
          goto LABEL_110;
        }

        if (v65 < v53)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v5 - 1 >= v30)
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
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v70 = (v31 + 16 * (v5 - 1));
        v71 = *v70;
        v72 = (v31 + 16 * v5);
        v73 = v72[1];
        sub_1C5639F44((*a3 + 4 * *v70), (*a3 + 4 * *v72), (*a3 + 4 * v73), v84);
        if (v4)
        {
        }

        if (v73 < v71)
        {
          goto LABEL_99;
        }

        if (v5 > *(v8 + 16))
        {
          goto LABEL_100;
        }

        *v70 = v71;
        v70[1] = v73;
        v74 = *(v8 + 16);
        if (v5 >= v74)
        {
          goto LABEL_101;
        }

        v30 = v74 - 1;
        result = memmove((v31 + 16 * v5), v72 + 2, 16 * (v74 - 1 - v5));
        *(v8 + 16) = v74 - 1;
        if (v74 <= 2)
        {
          goto LABEL_3;
        }
      }

      v37 = v31 + 16 * v30;
      v38 = *(v37 - 64);
      v39 = *(v37 - 56);
      v43 = __OFSUB__(v39, v38);
      v40 = v39 - v38;
      if (v43)
      {
        goto LABEL_102;
      }

      v42 = *(v37 - 48);
      v41 = *(v37 - 40);
      v43 = __OFSUB__(v41, v42);
      v35 = v41 - v42;
      v36 = v43;
      if (v43)
      {
        goto LABEL_103;
      }

      v44 = (v8 + 16 * v30);
      v46 = *v44;
      v45 = v44[1];
      v43 = __OFSUB__(v45, v46);
      v47 = v45 - v46;
      if (v43)
      {
        goto LABEL_105;
      }

      v43 = __OFADD__(v35, v47);
      v48 = v35 + v47;
      if (v43)
      {
        goto LABEL_107;
      }

      if (v48 >= v40)
      {
        v66 = (v31 + 16 * v5);
        v68 = *v66;
        v67 = v66[1];
        v43 = __OFSUB__(v67, v68);
        v69 = v67 - v68;
        if (v43)
        {
          goto LABEL_113;
        }

        if (v35 < v69)
        {
          v5 = v30 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v82;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v21 = *a3;
  v22 = *a3 + 4 * v7 - 4;
  v23 = v9 - v7;
LABEL_30:
  v24 = *(v21 + 4 * v7);
  v25 = v23;
  v26 = v22;
  while (1)
  {
    v27 = *v26;
    if (v24 >= *v26)
    {
LABEL_29:
      ++v7;
      v22 += 4;
      --v23;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v21)
    {
      break;
    }

    *v26 = v24;
    v26[1] = v27;
    --v26;
    if (__CFADD__(v25++, 1))
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
  return result;
}

uint64_t sub_1C5639ACC(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 4;
  v11 = a3 - __src;
  v12 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 4;
  if (v10 < v12 >> 4)
  {
    if (a4 != __dst || &__dst[16 * v10] <= a4)
    {
      memmove(a4, __dst, 16 * v10);
    }

    v14 = &v4[16 * v10];
    if (v8 < 16)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_43;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v16 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (!v16 && (sub_1C584FDC0() & 1) != 0)
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 16;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 16;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 16;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[16 * v13] <= a4)
  {
    memmove(a4, __src, 16 * v13);
  }

  v14 = &v4[16 * v13];
  if (v11 >= 16 && v6 > v7)
  {
LABEL_28:
    v17 = v6 - 16;
    v5 -= 16;
    v18 = v14;
    do
    {
      v19 = *(v18 - 2);
      v20 = *(v18 - 1);
      v18 -= 16;
      v21 = v19 == *(v6 - 2) && v20 == *(v6 - 1);
      if (!v21 && (sub_1C584FDC0() & 1) != 0)
      {
        if (v5 + 16 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 16, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_43;
        }

        goto LABEL_28;
      }

      if (v5 + 16 != v14)
      {
        *v5 = *v18;
      }

      v5 -= 16;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_43:
  if (v6 != v4 || v6 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0])
  {
    memmove(v6, v4, 16 * ((v14 - v4) / 16));
  }

  return 1;
}

uint64_t sub_1C5639CF4(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 3;
  v11 = a3 - __src;
  v12 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 3;
  if (v10 < v12 >> 3)
  {
    if (a4 != __dst || &__dst[8 * v10] <= a4)
    {
      memmove(a4, __dst, 8 * v10);
    }

    v14 = &v4[8 * v10];
    if (v8 < 8)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_47;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v16 = *v4;
      if (*(*v6 + 16))
      {
        v17 = *(*v6 + 32);
        if (!*(v16 + 16))
        {
          if (v17 < 0)
          {
            goto LABEL_22;
          }

          goto LABEL_12;
        }
      }

      else
      {
        if (!*(v16 + 16))
        {
          goto LABEL_12;
        }

        v17 = 0;
      }

      if (v17 < *(v16 + 32))
      {
LABEL_22:
        v16 = *v6;
        v15 = v7 == v6;
        v6 += 8;
        if (v15)
        {
          goto LABEL_14;
        }

LABEL_13:
        *v7 = v16;
        goto LABEL_14;
      }

LABEL_12:
      v15 = v7 == v4;
      v4 += 8;
      if (!v15)
      {
        goto LABEL_13;
      }

LABEL_14:
      v7 += 8;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }
  }

  if (a4 != __src || &__src[8 * v13] <= a4)
  {
    memmove(a4, __src, 8 * v13);
  }

  v14 = &v4[8 * v13];
  if (v11 >= 8 && v6 > v7)
  {
LABEL_30:
    v18 = v6 - 8;
    v19 = v5;
    v20 = v14;
    while (1)
    {
      v22 = *(v20 - 8);
      v20 -= 8;
      v21 = v22;
      v23 = *v18;
      if (*(v22 + 16))
      {
        v24 = *(v21 + 32);
        v5 = v19 - 8;
        if (*(v23 + 16))
        {
          goto LABEL_38;
        }

        if (v24 < 0)
        {
          goto LABEL_41;
        }
      }

      else
      {
        v5 = v19 - 8;
        if (*(v23 + 16))
        {
          v24 = 0;
LABEL_38:
          if (v24 < *(v23 + 32))
          {
LABEL_41:
            if (v19 != v6)
            {
              *v5 = v23;
            }

            if (v14 <= v4 || (v6 -= 8, v18 <= v7))
            {
              v6 = v18;
              break;
            }

            goto LABEL_30;
          }
        }
      }

      if (v14 != v19)
      {
        *v5 = v21;
      }

      v14 = v20;
      v19 = v5;
      if (v20 <= v4)
      {
        v14 = v20;
        break;
      }
    }
  }

LABEL_47:
  v25 = v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0);
  if (v6 != v4 || v6 >= &v4[v25 & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(v6, v4, 8 * (v25 >> 3));
  }

  return 1;
}

uint64_t sub_1C5639F44(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 3;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 2;
  v11 = a3 - __src;
  v12 = a3 - __src + 3;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 2;
  if (v10 < v12 >> 2)
  {
    if (a4 != __dst || &__dst[4 * v10] <= a4)
    {
      memmove(a4, __dst, 4 * v10);
    }

    v14 = &v4[4 * v10];
    if (v8 < 4)
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

      v15 = *v6;
      if (*v6 < *v4)
      {
        break;
      }

      v15 = *v4;
      v16 = v7 == v4;
      v4 += 4;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 4;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v16 = v7 == v6;
    v6 += 4;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[4 * v13] <= a4)
  {
    memmove(a4, __src, 4 * v13);
  }

  v14 = &v4[4 * v13];
  if (v11 >= 4 && v6 > v7)
  {
LABEL_24:
    v17 = v6 - 4;
    v5 -= 4;
    v18 = v14;
    do
    {
      v19 = v5 + 4;
      v21 = *(v18 - 4);
      v18 -= 4;
      v20 = v21;
      if (v21 < *v17)
      {
        if (v19 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 4, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      if (v19 != v14)
      {
        *v5 = v20;
      }

      v5 -= 4;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_35:
  v22 = v14 - v4 + (v14 - v4 < 0 ? 3uLL : 0);
  if (v6 != v4 || v6 >= &v4[v22 & 0xFFFFFFFFFFFFFFFCLL])
  {
    memmove(v6, v4, 4 * (v22 >> 2));
  }

  return 1;
}

uint64_t sub_1C563A138(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1C563A1C4(v3);
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

uint64_t sub_1C563A1D8(_DWORD *a1, uint64_t a2)
{
  v5 = *v2;
  sub_1C584FEA0();
  sub_1C584FED0();
  v6 = sub_1C584FEF0();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (*(*(v5 + 48) + 4 * v8) != a2)
    {
      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    sub_1C563A520(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_1C563A2D0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16DB20, &qword_1C5867B20);
  result = sub_1C584FC10();
  v5 = result;
  if (*(v3 + 16))
  {
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
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 4 * (v14 | (v6 << 6)));
      sub_1C584FEA0();
      sub_1C584FED0();
      result = sub_1C584FEF0();
      v18 = -1 << *(v5 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v12 + 8 * v20);
          if (v24 != -1)
          {
            v13 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 4 * v13) = v17;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v25 = 1 << *(v3 + 32);
    if (v25 >= 64)
    {
      bzero((v3 + 56), ((v25 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v25;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

void sub_1C563A520(uint64_t result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1C563A2D0(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      sub_1C563A67C();
      a2 = v7;
      goto LABEL_12;
    }

    sub_1C563A7BC(v5 + 1);
  }

  v8 = *v3;
  sub_1C584FEA0();
  sub_1C584FED0();
  v9 = sub_1C584FEF0();
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    v12 = v9 & ~v10;
    type metadata accessor for GEOEVChargerPlugConnectorType(0);
    a2 = v12;
    while (*(*(v8 + 48) + 4 * a2) != v4)
    {
      a2 = (a2 + 1) & v11;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v13 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v13 + 48) + 4 * a2) = v4;
  v14 = *(v13 + 16);
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (!v15)
  {
    *(v13 + 16) = v16;
    return;
  }

  __break(1u);
LABEL_15:
  sub_1C584FDF0();
  __break(1u);
}

void *sub_1C563A67C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16DB20, &qword_1C5867B20);
  v2 = *v0;
  v3 = sub_1C584FC00();
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 4 * v14) = *(*(v2 + 48) + 4 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
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

      v16 = *(v2 + 56 + 8 * v8);
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

uint64_t sub_1C563A7BC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16DB20, &qword_1C5867B20);
  result = sub_1C584FC10();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v3 + 48) + 4 * (v13 | (v6 << 6)));
      sub_1C584FEA0();
      sub_1C584FED0();
      result = sub_1C584FEF0();
      v17 = -1 << *(v5 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v5 + 48) + 4 * v12) = v16;
      ++*(v5 + 16);
    }

    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v15 = *(v3 + 56 + 8 * v6);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_1C563A9DC(uint64_t a1, uint64_t a2)
{
  v13[1] = *MEMORY[0x1E69E9840];
  v4 = *(a2 + 32);
  v5 = v4 & 0x3F;
  v6 = ((1 << v4) + 63) >> 6;
  v7 = 8 * v6;

  if (v5 <= 0xD || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    MEMORY[0x1EEE9AC00](isStackAllocationSafe, v9);
    bzero(v13 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0), v7);
    v10 = sub_1C563AC30(v13 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0), v6, a2, a1);
  }

  else
  {
    v12 = swift_slowAlloc();

    v10 = sub_1C563ABA0(v12, v6, a2, a1);

    MEMORY[0x1C694B7A0](v12, -1, -1);
  }

  return v10;
}

void *sub_1C563ABA0(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v6 = result;
      v7 = a2;
      bzero(result, 8 * a2);
      result = v6;
      a2 = v7;
    }

    v8 = sub_1C563AC30(result, a2, a3, a4);

    return v8;
  }

  return result;
}

uint64_t sub_1C563AC30(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v37 = result;
  v39 = a4;
  if (*(a4 + 16) >= *(a3 + 16))
  {
    v22 = 0;
    v23 = 1 << *(a3 + 32);
    if (v23 < 64)
    {
      v24 = ~(-1 << v23);
    }

    else
    {
      v24 = -1;
    }

    v25 = v24 & *(a3 + 56);
    v26 = (v23 + 63) >> 6;
    v27 = a4 + 56;
    v38 = 0;
LABEL_24:
    while (v25)
    {
      v28 = __clz(__rbit64(v25));
      v25 &= v25 - 1;
LABEL_31:
      v31 = v28 | (v22 << 6);
      v32 = *(*(a3 + 48) + 4 * v31);
      sub_1C584FEA0();
      sub_1C584FED0();
      result = sub_1C584FEF0();
      v33 = -1 << *(v39 + 32);
      v34 = result & ~v33;
      if ((*(v27 + ((v34 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v34))
      {
        v35 = ~v33;
        while (*(*(v39 + 48) + 4 * v34) != v32)
        {
          v34 = (v34 + 1) & v35;
          if (((*(v27 + ((v34 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v34) & 1) == 0)
          {
            goto LABEL_24;
          }
        }

        *(v37 + ((v31 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v31;
        if (__OFADD__(v38, 1))
        {
          goto LABEL_41;
        }

        ++v38;
      }
    }

    v29 = v22;
    while (1)
    {
      v22 = v29 + 1;
      if (__OFADD__(v29, 1))
      {
        break;
      }

      if (v22 >= v26)
      {
LABEL_38:

        return sub_1C563AF3C(v37, a2, v38, a3);
      }

      v30 = *(a3 + 56 + 8 * v22);
      ++v29;
      if (v30)
      {
        v28 = __clz(__rbit64(v30));
        v25 = (v30 - 1) & v30;
        goto LABEL_31;
      }
    }

    __break(1u);
  }

  else
  {
    v5 = 0;
    v6 = a4 + 56;
    v7 = 1 << *(a4 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(a4 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = a3 + 56;
    v38 = 0;
    while (v9)
    {
      v12 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_13:
      v15 = *(*(a4 + 48) + 4 * (v12 | (v5 << 6)));
      sub_1C584FEA0();
      sub_1C584FED0();
      result = sub_1C584FEF0();
      a4 = v39;
      v16 = -1 << *(a3 + 32);
      v17 = result & ~v16;
      v18 = v17 >> 6;
      v19 = 1 << v17;
      if (((1 << v17) & *(v11 + 8 * (v17 >> 6))) != 0)
      {
        v20 = *(a3 + 48);
        if (*(v20 + 4 * v17) == v15)
        {
LABEL_18:
          v37[v18] |= v19;
          if (__OFADD__(v38, 1))
          {
            goto LABEL_42;
          }

          ++v38;
        }

        else
        {
          v21 = ~v16;
          while (1)
          {
            v17 = (v17 + 1) & v21;
            v18 = v17 >> 6;
            v19 = 1 << v17;
            if (((1 << v17) & *(v11 + 8 * (v17 >> 6))) == 0)
            {
              break;
            }

            if (*(v20 + 4 * v17) == v15)
            {
              goto LABEL_18;
            }
          }
        }
      }
    }

    v13 = v5;
    while (1)
    {
      v5 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v5 >= v10)
      {
        goto LABEL_38;
      }

      v14 = *(v6 + 8 * v5);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v9 = (v14 - 1) & v14;
        goto LABEL_13;
      }
    }
  }

  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
  return result;
}

uint64_t sub_1C563AF3C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x1E69E7CD0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16DB20, &qword_1C5867B20);
  result = sub_1C584FC30();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = *(*(v4 + 48) + 4 * (v13 | (v11 << 6)));
    sub_1C584FEA0();
    sub_1C584FED0();
    result = sub_1C584FEF0();
    v17 = -1 << *(v9 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v12 + 8 * (v18 >> 6))) == 0)
    {
      v21 = 0;
      v22 = (63 - v17) >> 6;
      while (++v19 != v22 || (v21 & 1) == 0)
      {
        v23 = v19 == v22;
        if (v19 == v22)
        {
          v19 = 0;
        }

        v21 |= v23;
        v24 = *(v12 + 8 * v19);
        if (v24 != -1)
        {
          v20 = __clz(__rbit64(~v24)) + (v19 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v20 = __clz(__rbit64((-1 << v18) & ~*(v12 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
    *(*(v9 + 48) + 4 * v20) = v16;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

char *sub_1C563B144(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C563B1A4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1C563B164(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C563B3E4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1C563B184(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C563B4E8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1C563B1A4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16D8E0, &qword_1C5867910);
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
    v10 = MEMORY[0x1E69E7CC0];
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1C563B2B0(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16DB18, &qword_1C5867B18);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16DB10, &qword_1C5867B10);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1C563B3E4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16DB08, &qword_1C5867B08);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

void *sub_1C563B4E8(void *result, int64_t a2, char a3, void *a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16DAF8, &qword_1C5867AF8);
  v10 = *(type metadata accessor for EVChargingRow(0) - 8);
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
  v15 = *(type metadata accessor for EVChargingRow(0) - 8);
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

void *sub_1C563B6FC(void *result, void *a2, uint64_t a3, uint64_t a4)
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
      *v11 = *(*(a4 + 48) + ((v12 << 9) | (8 * v17)));
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      ++v11;

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
      v19 = v12 + 1;
    }

    else
    {
      v19 = (63 - v7) >> 6;
    }

    v12 = v19 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_1C563B850(void *result, _DWORD *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 64;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 64);
  if (!a2)
  {
LABEL_17:
    v9 = 0;
    a3 = 0;
LABEL_23:
    *result = a4;
    result[1] = v4;
    result[2] = ~v6;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_23;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    v10 = (63 - v6) >> 6;
    v11 = 1;
    while (v7)
    {
LABEL_13:
      v14 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      *a2 = *(*(a4 + 48) + ((v9 << 8) | (4 * v14)));
      if (v11 == a3)
      {
        goto LABEL_23;
      }

      ++a2;
      v8 = v11;
      if (__OFADD__(v11++, 1))
      {
        __break(1u);
        goto LABEL_17;
      }
    }

    v12 = v9;
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v13 >= v10)
      {
        break;
      }

      v7 = *(v4 + 8 * v13);
      ++v12;
      if (v7)
      {
        v9 = v13;
        goto LABEL_13;
      }
    }

    v7 = 0;
    if (v10 <= (v9 + 1))
    {
      v16 = v9 + 1;
    }

    else
    {
      v16 = (63 - v6) >> 6;
    }

    v9 = v16 - 1;
    a3 = v8;
    goto LABEL_23;
  }

LABEL_25:
  __break(1u);
  return result;
}

void *sub_1C563B950(unint64_t a1)
{
  v23 = MEMORY[0x1E69E7CC8];
  if (!(a1 >> 62))
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
      goto LABEL_3;
    }

    return MEMORY[0x1E69E7CC8];
  }

LABEL_23:
  v2 = sub_1C584FB90();
  if (!v2)
  {
    return MEMORY[0x1E69E7CC8];
  }

LABEL_3:
  v3 = 0;
  v4 = MEMORY[0x1E69E7CC8];
  while (1)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x1C694A320](v3, a1);
    }

    else
    {
      if (v3 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_20;
      }

      v6 = *(a1 + 8 * v3 + 32);
    }

    v7 = v6;
    v8 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

    v9 = [v6 connectorType];
    v10 = sub_1C5637498(v9);
    v12 = v4[2];
    v13 = (v11 & 1) == 0;
    v14 = __OFADD__(v12, v13);
    v15 = v12 + v13;
    if (v14)
    {
      goto LABEL_21;
    }

    v16 = v11;
    if (v4[3] < v15)
    {
      sub_1C5637860(v15, 1);
      v4 = v23;
      v10 = sub_1C5637498(v9);
      if ((v16 & 1) != (v17 & 1))
      {
        break;
      }
    }

    if (v16)
    {
      v5 = (v4[7] + 8 * v10);
      MEMORY[0x1C6949DF0]();
      if (*((*v5 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v5 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1C584F7A0();
      }

      sub_1C584F7E0();
    }

    else
    {
      v18 = v10;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16DBD0, &unk_1C58682B0);
      v19 = swift_allocObject();
      *(v19 + 16) = xmmword_1C5867970;
      *(v19 + 32) = v7;
      v4[(v18 >> 6) + 8] |= 1 << v18;
      *(v4[6] + 4 * v18) = v9;
      *(v4[7] + 8 * v18) = v19;
      v20 = v4[2];
      v14 = __OFADD__(v20, 1);
      v21 = v20 + 1;
      if (v14)
      {
        goto LABEL_22;
      }

      v4[2] = v21;
    }

    ++v3;
    if (v8 == v2)
    {
      return v4;
    }
  }

  type metadata accessor for GEOEVChargerPlugConnectorType(0);
  result = sub_1C584FE00();
  __break(1u);
  return result;
}

BOOL sub_1C563BBA8(unint64_t a1)
{
  if (a1 >> 62)
  {
    goto LABEL_14;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1C584FB90())
  {
    v3 = 0;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v4 = MEMORY[0x1C694A320](v3, a1);
      }

      else
      {
        if (v3 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_13;
        }

        v4 = *(a1 + 8 * v3 + 32);
      }

      v5 = v4;
      v6 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        break;
      }

      if ([v4 realtimeStatus])
      {
        goto LABEL_16;
      }

      ++v3;
      if (v6 == i)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    ;
  }

LABEL_15:
  v5 = 0;
LABEL_16:

  return v5 == 0;
}

uint64_t sub_1C563BC94(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
      goto LABEL_3;
    }

    return 0;
  }

  if (!sub_1C584FB90())
  {
    return 0;
  }

  v2 = sub_1C584FB90();
  if (!v2)
  {
    v4 = MEMORY[0x1E69E7CC0];
    goto LABEL_15;
  }

LABEL_3:
  v42 = MEMORY[0x1E69E7CC0];
  sub_1C563B144(0, v2 & ~(v2 >> 63), 0);
  if (v2 < 0)
  {
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v3 = 0;
  v4 = v42;
  do
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x1C694A320](v3, a1);
    }

    else
    {
      v5 = *(a1 + 8 * v3 + 32);
    }

    v6 = v5;
    v7 = [v5 displayName];
    v8 = sub_1C584F660();
    v10 = v9;

    v42 = v4;
    v12 = *(v4 + 16);
    v11 = *(v4 + 24);
    if (v12 >= v11 >> 1)
    {
      sub_1C563B144((v11 > 1), v12 + 1, 1);
      v4 = v42;
    }

    ++v3;
    *(v4 + 16) = v12 + 1;
    v13 = v4 + 16 * v12;
    *(v13 + 32) = v8;
    *(v13 + 40) = v10;
  }

  while (v2 != v3);
LABEL_15:
  v42 = v4;

  sub_1C5637AF0(&v42, sub_1C563B6C0, sub_1C5638668);

  v14 = v42;
  v15 = v42[2];
  if (v15 == 1)
  {
    v36 = [objc_opt_self() forYourVehicleNameFormatString];
    v2 = sub_1C584F660();

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC16DFC0, &unk_1C58685E0);
    v37 = swift_allocObject();
    *(v37 + 16) = xmmword_1C5867900;
    *(v37 + 56) = MEMORY[0x1E69E6158];
    *(v37 + 64) = sub_1C563D3B0();
    if (v14[2])
    {
      v39 = v14[4];
      v38 = v14[5];

      *(v37 + 32) = v39;
      *(v37 + 40) = v38;
      goto LABEL_28;
    }

    goto LABEL_33;
  }

  if (v15 == 2)
  {
    v27 = [objc_opt_self() forYourVehicleNameFormatStringTwoVehicles];
    v2 = sub_1C584F660();

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC16DFC0, &unk_1C58685E0);
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_1C5867990;
    v29 = MEMORY[0x1E69E6158];
    *(v28 + 56) = MEMORY[0x1E69E6158];
    v30 = sub_1C563D3B0();
    *(v28 + 64) = v30;
    v31 = v14[2];
    if (v31)
    {
      v32 = v30;
      v33 = v14[5];
      *(v28 + 32) = v14[4];
      *(v28 + 40) = v33;
      *(v28 + 96) = v29;
      *(v28 + 104) = v32;
      if (v31 != 1)
      {
        v35 = v14[6];
        v34 = v14[7];

        *(v28 + 72) = v35;
        *(v28 + 80) = v34;
        goto LABEL_28;
      }

      goto LABEL_35;
    }

    goto LABEL_32;
  }

  if (v15 != 3)
  {

    v40 = [objc_opt_self() forYourVehicles];
    v26 = sub_1C584F660();

    return v26;
  }

  v16 = [objc_opt_self() forYourVehicleNameFormatStringThreeVehicles];
  v2 = sub_1C584F660();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC16DFC0, &unk_1C58685E0);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1C5867980;
  v18 = MEMORY[0x1E69E6158];
  *(v17 + 56) = MEMORY[0x1E69E6158];
  v19 = sub_1C563D3B0();
  *(v17 + 64) = v19;
  v20 = v14[2];
  if (!v20)
  {
    goto LABEL_34;
  }

  v21 = v19;
  v22 = v14[5];
  *(v17 + 32) = v14[4];
  *(v17 + 40) = v22;
  *(v17 + 96) = v18;
  *(v17 + 104) = v21;
  if (v20 == 1)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v23 = v14[7];
  *(v17 + 72) = v14[6];
  *(v17 + 80) = v23;
  *(v17 + 136) = v18;
  *(v17 + 144) = v21;
  if (v20 >= 3)
  {
    v25 = v14[8];
    v24 = v14[9];

    *(v17 + 112) = v25;
    *(v17 + 120) = v24;
LABEL_28:
    v26 = sub_1C584F670();

    return v26;
  }

LABEL_37:
  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_1C563C124(uint64_t a1, double a2)
{
  v72 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16DA90, &qword_1C5867AA0);
  v69 = *(v3 - 8);
  v70 = v3;
  v5 = MEMORY[0x1EEE9AC00](v3, v4);
  v64 = &v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5, v7);
  v68 = &v57 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16DA98, &qword_1C5867AA8);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v57 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16DAA0, &qword_1C5867AB0);
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v63 = &v57 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16DAA8, &qword_1C5867AB8);
  MEMORY[0x1EEE9AC00](v16 - 8, v17);
  v62 = &v57 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16DAB0, &unk_1C5867AC0);
  v66 = *(v19 - 8);
  v67 = v19;
  MEMORY[0x1EEE9AC00](v19, v20);
  v65 = &v57 - v21;
  v61 = sub_1C584E9E0();
  v59 = *(v61 - 8);
  MEMORY[0x1EEE9AC00](v61, v22);
  v24 = &v57 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_1C584ECE0();
  v60 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25, v26);
  v28 = &v57 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16DAB8, &qword_1C586A960);
  v30 = *(v29 - 8);
  v32 = MEMORY[0x1EEE9AC00](v29, v31);
  v34 = &v57 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = MEMORY[0x1EEE9AC00](v32, v35);
  v38 = &v57 - v37;
  MEMORY[0x1EEE9AC00](v36, v39);
  v71 = &v57 - v40;
  v41 = 0;
  if (a2 > COERCE_DOUBLE(1))
  {
    sub_1C584EC20();
    sub_1C563D314();
    sub_1C584E970();
    v58 = v12;
    MEMORY[0x1C6949030](v72, v29);
    v57 = v25;
    v42 = *(v30 + 8);
    (v42)(v34, v29);
    v73 = xmmword_1C58679A0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16DAC8, &unk_1C5867AD0);
    sub_1C563D368(&qword_1EC16DAD0, &qword_1EC16DAC8, &unk_1C5867AD0, MEMORY[0x1E69E5FB8]);
    sub_1C584E9D0();
    v43 = v71;
    MEMORY[0x1C6949050](v24, v29);
    v59[1](v24, v61);
    v61 = v30 + 8;
    v59 = v42;
    (v42)(v38, v29);
    sub_1C5626E40(0, &qword_1EC16DAD8, 0x1E696B068);
    sub_1C584E750();
    (*(v60 + 16))(v28, v72, v57);
    sub_1C584E9B0();
    v44 = v58;
    (*(v30 + 16))(v58, v43, v29);
    (*(v30 + 56))(v44, 0, 1, v29);
    v45 = v65;
    sub_1C584E730();
    v46 = objc_opt_self();
    v47 = [v46 watts];
    v48 = v64;
    sub_1C584E700();
    v49 = [v46 kilowatts];
    v50 = v68;
    v51 = v70;
    sub_1C584E770();

    v52 = *(v69 + 8);
    v52(v48, v51);
    sub_1C584E710();
    if (v53 >= 0.1)
    {
      v54 = v67;
      v55 = v45;
      v41 = sub_1C584E740();
      v52(v50, v51);
      (*(v66 + 8))(v55, v54);
      (v59)(v71, v29);
    }

    else
    {
      v52(v50, v51);
      (*(v66 + 8))(v45, v67);
      (v59)(v71, v29);
      return 0;
    }
  }

  return v41;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_1C563C8DC()
{
  result = qword_1EC16DA78;
  if (!qword_1EC16DA78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC16DA78);
  }

  return result;
}

unint64_t sub_1C563C930(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC170BA0, &unk_1C5867A90);
    v3 = sub_1C584FD50();
    v4 = a1 + 32;

    while (1)
    {
      sub_1C563D294(v4, &v11);
      v5 = v11;
      result = sub_1C5637504(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_1C563D304(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
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

id sub_1C563CA38(uint64_t a1)
{
  v2 = sub_1C584E8B0();
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v4 = objc_opt_self();
  v5 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedInteger_];
  v6 = [v4 localizedStringFromNumber:v5 numberStyle:0];

  if (!v6)
  {
    sub_1C584F660();
    v6 = sub_1C584F630();
  }

  v7 = [objc_allocWithZone(MEMORY[0x1E696AAB0]) initWithString_];

  result = [objc_opt_self() _mapkit_preferredFontForTextStyleInTableViewCell_];
  if (result)
  {
    v9 = result;
    type metadata accessor for RealTimeEVChargerUtility();
    v10 = [objc_opt_self() configurationWithFont_];

    v11 = static RealTimeEVChargerUtility.evPlugIcon(configuration:)(v10);
    if (v11)
    {
      v12 = [objc_opt_self() textAttachmentWithImage_];
      v13 = [objc_opt_self() attributedStringWithAttachment_];

      if (v13)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16DBD0, &unk_1C58682B0);
        v14 = swift_allocObject();
        *(v14 + 16) = xmmword_1C58679B0;
        *(v14 + 32) = v7;
        sub_1C5626E40(0, &unk_1EC170B70, 0x1E696AAB0);
        v15 = v7;
        sub_1C584E840();
        *(v14 + 40) = sub_1C584FA40();
        *(v14 + 48) = v13;
        v16 = objc_opt_self();
        v17 = v13;
        v18 = sub_1C584F750();

        v19 = [v16 buildAttributedDisplayStringForComponents:v18 reverseIfRTLLayout:1];

        v20 = [objc_allocWithZone(MEMORY[0x1E696AD40]) initWithAttributedString_];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16DA80, &qword_1C5867A80);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_1C5867900;
        v22 = *MEMORY[0x1E69DB650];
        *(inited + 32) = *MEMORY[0x1E69DB650];
        v23 = objc_opt_self();
        v24 = v22;
        v25 = [v23 systemGrayColor];
        *(inited + 64) = sub_1C5626E40(0, &unk_1EC170AD0, 0x1E69DC888);
        *(inited + 40) = v25;
        sub_1C563C930(inited);
        swift_setDeallocating();
        sub_1C563D218(inited + 32);
        type metadata accessor for Key(0);
        sub_1C563D7F0(&qword_1EC170AE0, type metadata accessor for Key, &unk_1C58785E0);
        v26 = sub_1C584F5C0();

        v7 = v20;
        [v7 addAttributes:v26 range:{0, objc_msgSend(v7, sel_length)}];
      }
    }

    return v7;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1C563CE80(void *a1)
{
  if ([a1 realtimeStatus])
  {
    v2 = objc_opt_self();
    result = [a1 availableNumberOfChargers];
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v4 = result;
      result = [a1 totalNumberOfChargers];
      if ((result & 0x8000000000000000) == 0)
      {
        v5 = [v2 localizedStringForAvailableChargers:v4 outOfTotal:result radiowavesSymbolScale:2];
        v6 = [a1 availableNumberOfChargers];
        v7 = objc_opt_self();
        v8 = &selRef_systemGrayColor;
        if (v6)
        {
          v8 = &selRef_systemGreenColor;
        }

        v9 = [v7 *v8];
        v10 = [objc_allocWithZone(MEMORY[0x1E696AD40]) initWithAttributedString_];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16DA80, &qword_1C5867A80);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_1C5867900;
        v12 = *MEMORY[0x1E69DB650];
        *(inited + 32) = *MEMORY[0x1E69DB650];
        *(inited + 64) = sub_1C5626E40(0, &unk_1EC170AD0, 0x1E69DC888);
        *(inited + 40) = v9;
        v13 = v12;
        v14 = v9;
        sub_1C563C930(inited);
        swift_setDeallocating();
        sub_1C563D218(inited + 32);
        type metadata accessor for Key(0);
        sub_1C563D7F0(&qword_1EC170AE0, type metadata accessor for Key, &unk_1C58785E0);
        v15 = sub_1C584F5C0();

        v16 = v10;
        [v16 addAttributes:v15 range:{0, objc_msgSend(v16, sel_length)}];

        return v16;
      }
    }

    __break(1u);
    return result;
  }

  v17 = [a1 totalNumberOfChargers];

  return sub_1C563CA38(v17);
}

uint64_t sub_1C563D178(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_1C563D1C0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1C563D218(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16DA88, &qword_1C5867A88);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C563D294(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16DA88, &qword_1C5867A88);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

_OWORD *sub_1C563D304(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

unint64_t sub_1C563D314()
{
  result = qword_1EC16DAC0;
  if (!qword_1EC16DAC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC16DAC0);
  }

  return result;
}

uint64_t sub_1C563D368(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1C563D3B0()
{
  result = qword_1EC170BC0;
  if (!qword_1EC170BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC170BC0);
  }

  return result;
}

void sub_1C563D404(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2)
  {
  }
}

void sub_1C563D454(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a5)
  {
  }
}

uint64_t sub_1C563D4A4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EVChargingRow(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void *sub_1C563D508(uint64_t a1)
{
  v1 = MEMORY[0x1E69E7CC8];
  v29 = MEMORY[0x1E69E7CC8];
  v2 = *(a1 + 16);
  if (!v2)
  {
    return v1;
  }

  for (i = (a1 + 32); ; ++i)
  {
    v28 = *i;
    v4 = *(i + 1);
    v5 = sub_1C5637404(v4);
    v7 = v1[2];
    v8 = (v6 & 1) == 0;
    v9 = v7 + v8;
    if (__OFADD__(v7, v8))
    {
      break;
    }

    v10 = v5;
    v11 = v6;
    v12 = v1[3];
    swift_bridgeObjectRetain_n();
    v13 = v28;
    if (v12 < v9)
    {
      sub_1C5637598(v9, 1);
      v1 = v29;
      v14 = sub_1C5637404(v4);
      if ((v11 & 1) != (v15 & 1))
      {
        goto LABEL_19;
      }

      v10 = v14;
    }

    if (v11)
    {

      v16 = v1[7];
      v17 = *(v16 + 8 * v10);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v16 + 8 * v10) = v17;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v17 = sub_1C5637FF0(0, v17[2] + 1, 1, v17);
        *(v16 + 8 * v10) = v17;
      }

      v20 = v17[2];
      v19 = v17[3];
      v21 = v28;
      if (v20 >= v19 >> 1)
      {
        v22 = sub_1C5637FF0((v19 > 1), v20 + 1, 1, v17);
        v21 = v28;
        v17 = v22;
        *(v16 + 8 * v10) = v22;
      }

      v17[2] = v20 + 1;
      *&v17[2 * v20 + 4] = v21;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16DB30, &qword_1C5867B28);
      v23 = swift_allocObject();
      *(v23 + 16) = xmmword_1C5867900;
      *(v23 + 32) = v28;
      v1[(v10 >> 6) + 8] |= 1 << v10;
      *(v1[6] + 8 * v10) = v4;
      *(v1[7] + 8 * v10) = v23;
      v24 = v1[2];
      v25 = __OFADD__(v24, 1);
      v26 = v24 + 1;
      if (v25)
      {
        goto LABEL_18;
      }

      v1[2] = v26;
    }

    if (!--v2)
    {
      return v1;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16DB10, &qword_1C5867B10);
  result = sub_1C584FE00();
  __break(1u);
  return result;
}

uint64_t sub_1C563D730(uint64_t a1)
{
  v2 = *(a1 + 16);
  type metadata accessor for GEOEVChargerPlugConnectorType(0);
  v4 = v3;
  v5 = sub_1C563D7F0(&qword_1EC16DB28, type metadata accessor for GEOEVChargerPlugConnectorType, &unk_1C5867D44);
  result = MEMORY[0x1C6949FF0](v2, v4, v5);
  v10 = result;
  if (v2)
  {
    v7 = (a1 + 32);
    do
    {
      v8 = *v7++;
      sub_1C563A1D8(&v9, v8);
      --v2;
    }

    while (v2);
    return v10;
  }

  return result;
}

uint64_t sub_1C563D7F0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t type metadata accessor for WatchAsyncImageViewModel(uint64_t a1)
{
  result = qword_1EC17B550;
  if (!qword_1EC17B550)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C563D9A4(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  *(v4 + 40) = 0;
  *(v4 + 56) = 0;
  *(v4 + 64) = 0;
  *(v4 + 48) = 0;
  sub_1C584EF70();
  *(v4 + 24) = a1;
  *(v4 + 32) = a2;
  return v4;
}

uint64_t WatchAsyncImageViewModel.deinit()
{

  v1 = OBJC_IVAR____TtC6MapsUI24WatchAsyncImageViewModel___observationRegistrar;
  v2 = sub_1C584EF80();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t WatchAsyncImageViewModel.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC6MapsUI24WatchAsyncImageViewModel___observationRegistrar;
  v2 = sub_1C584EF80();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_1C563DB30(uint64_t a1)
{
  result = sub_1C584EF80();
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

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

void type metadata accessor for CGSize()
{
  if (!qword_1EC16E5F0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_1EC16E5F0);
    }
  }
}

uint64_t StackLayout.Distribution.hash(into:)()
{
  v1 = *v0 >> 29;
  if (v1 <= 2)
  {
    if (v1)
    {
      if (v1 == 1)
      {
        v2 = 3;
      }

      else
      {
        v2 = 4;
      }
    }

    else
    {
      v2 = 2;
    }

    goto LABEL_13;
  }

  if (*v0 >> 29 <= 4)
  {
    if (v1 == 3)
    {
      v2 = 5;
    }

    else
    {
      v2 = 6;
    }

    goto LABEL_13;
  }

  if (v1 == 5)
  {
    v2 = 7;
LABEL_13:
    MEMORY[0x1C694A560](v2);
    sub_1C584FEC0();
    return sub_1C584FED0();
  }

  return MEMORY[0x1C694A560](*v0 != 3221225472);
}

uint64_t StackLayout.Alignment.hash(into:)()
{
  v1 = *v0 >> 30;
  if (v1 <= 1)
  {
    if (v1)
    {
      v2 = 2;
    }

    else
    {
      v2 = 1;
    }

    goto LABEL_7;
  }

  if (v1 == 2)
  {
    v2 = 3;
LABEL_7:
    MEMORY[0x1C694A560](v2);
    sub_1C584FEC0();
    return sub_1C584FED0();
  }

  return MEMORY[0x1C694A560](0);
}

uint64_t sub_1C563DE68(uint64_t (*a1)(void *))
{
  v4[9] = *v1;
  sub_1C584FEA0();
  a1(v4);
  return sub_1C584FEF0();
}

uint64_t sub_1C563DED4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void *))
{
  v6[9] = *v3;
  sub_1C584FEA0();
  a3(v6);
  return sub_1C584FEF0();
}

uint64_t sub_1C563DF44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *))
{
  v7[9] = *v4;
  sub_1C584FEA0();
  a4(v7);
  return sub_1C584FEF0();
}

uint64_t sub_1C563DF9C()
{
  v1 = *v0;
  sub_1C584FEA0();
  if (v1 >> 1 == 1610612735)
  {
    v2 = 2;
  }

  else
  {
    if (v1 >> 1 != 0x7FFFFFFF)
    {
      MEMORY[0x1C694A560](1);
      StackLayout.Alignment.hash(into:)();
      return sub_1C584FEF0();
    }

    v2 = 0;
  }

  MEMORY[0x1C694A560](v2);
  return sub_1C584FEF0();
}

uint64_t sub_1C563E028()
{
  v1 = *v0 >> 1;
  if (v1 == 1610612735)
  {
    v2 = 2;
    return MEMORY[0x1C694A560](v2);
  }

  if (v1 == 0x7FFFFFFF)
  {
    v2 = 0;
    return MEMORY[0x1C694A560](v2);
  }

  MEMORY[0x1C694A560](1);
  return StackLayout.Alignment.hash(into:)();
}

uint64_t sub_1C563E0AC(uint64_t a1)
{
  v2 = *v1;
  sub_1C584FEA0();
  if (v2 >> 1 == 1610612735)
  {
    v3 = 2;
  }

  else
  {
    if (v2 >> 1 != 0x7FFFFFFF)
    {
      MEMORY[0x1C694A560](1);
      StackLayout.Alignment.hash(into:)();
      return sub_1C584FEF0();
    }

    v3 = 0;
  }

  MEMORY[0x1C694A560](v3);
  return sub_1C584FEF0();
}

uint64_t sub_1C563E134(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((sub_1C584F620() & 1) == 0)
  {
    return 0;
  }

  v9 = _s19GenericArrangedItemVMa(0, a3, a4, v8);
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*(a1 + v9[9]), *(a2 + v9[9])), vceqq_f64(*(a1 + v9[9] + 16), *(a2 + v9[9] + 16))))) & 1) == 0)
  {
    return 0;
  }

  v10 = v9[10];
  v11 = *(a1 + v10);
  v12 = *(a1 + v10 + 8);
  v13 = (a2 + v10);
  if (v11 != *v13 || v12 != v13[1])
  {
    return 0;
  }

  v16 = v9[11];
  v17 = *(a1 + v16);
  v18 = *(a2 + v16);
  if (v17 >> 1 == 1610612735)
  {
    if ((v18 & 0xFFFFFFFE) == 0xBFFFFFFE)
    {
      return 1;
    }
  }

  else if (v17 >> 1 == 0x7FFFFFFF)
  {
    if ((~v18 & 0xFFFFFFFE) == 0)
    {
      return 1;
    }
  }

  else if (((v18 >> 1) | 0x20000000) != 0x7FFFFFFF)
  {
    v19 = v18;
    v20 = v17;
    if (_s6MapsUI11StackLayoutC9AlignmentO2eeoiySbAE_AEtFZ_0(&v20, &v19))
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_1C563E25C(uint64_t a1, uint64_t a2)
{
  sub_1C584F5F0();
  type metadata accessor for NSDirectionalEdgeInsets(0);
  sub_1C563EC60(&qword_1EC16DB78, type metadata accessor for NSDirectionalEdgeInsets, &protocol conformance descriptor for NSDirectionalEdgeInsets);
  sub_1C584F5F0();
  type metadata accessor for UIOffset(0);
  sub_1C563EC60(&qword_1EC16E950, type metadata accessor for UIOffset, &protocol conformance descriptor for UIOffset);
  sub_1C584F5F0();
  v4 = *(v2 + *(a2 + 44)) >> 1;
  if (v4 == 1610612735)
  {
    v5 = 2;
    return MEMORY[0x1C694A560](v5);
  }

  if (v4 == 0x7FFFFFFF)
  {
    v5 = 0;
    return MEMORY[0x1C694A560](v5);
  }

  MEMORY[0x1C694A560](1);
  return StackLayout.Alignment.hash(into:)();
}

uint64_t sub_1C563E3C4(uint64_t a1)
{
  sub_1C584FEA0();
  sub_1C563E25C(v3, a1);
  return sub_1C584FEF0();
}

int *sub_1C563E43C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>, double a6@<D0>, double a7@<D1>, double a8@<D2>, double a9@<D3>, double a10@<D4>, double a11@<D5>)
{
  v20 = *a2;
  (*(*(a3 - 8) + 32))(a5, a1);
  result = _s19GenericArrangedItemVMa(0, a3, a4, v21);
  v23 = (a5 + result[9]);
  *v23 = a6;
  v23[1] = a7;
  v23[2] = a8;
  v23[3] = a9;
  v24 = (a5 + result[10]);
  *v24 = a10;
  v24[1] = a11;
  *(a5 + result[11]) = v20;
  return result;
}

uint64_t sub_1C563E510(uint64_t a1, uint64_t a2)
{
  sub_1C584FEA0();
  sub_1C563E25C(v4, a2);
  return sub_1C584FEF0();
}

uint64_t sub_1C563E56C@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>, float a3@<S0>)
{
  *a2 = result;
  *(a2 + 4) = a3;
  return result;
}

uint64_t StackLayout.FlexibleSpacingOptions.hashValue.getter()
{
  sub_1C584FEA0();
  sub_1C584FEC0();
  sub_1C584FED0();
  return sub_1C584FEF0();
}

uint64_t sub_1C563E6A4(uint64_t a1)
{
  sub_1C584FEA0();
  sub_1C584FEC0();
  sub_1C584FED0();
  return sub_1C584FEF0();
}

uint64_t sub_1C563E740(uint64_t a1, uint64_t a2)
{
  v6 = 0;
  v7 = 1;
  result = MEMORY[0x1C6949F80](a1, &v6);
  v4 = v6;
  v5 = v7;
  if (v7)
  {
    v4 = 0;
  }

  *a2 = v4;
  *(a2 + 4) = v5;
  return result;
}

uint64_t sub_1C563E794(uint64_t a1, uint64_t a2)
{
  v7 = 0;
  v8 = 1;
  v3 = MEMORY[0x1C6949F90](a1, &v7);
  v4 = v7;
  v5 = v8;
  if (v8)
  {
    v4 = 0;
  }

  *a2 = v4;
  *(a2 + 4) = v5;
  return v3 & 1;
}

float sub_1C563E814@<S0>(_DWORD *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

uint64_t sub_1C563E894(uint64_t a1)
{
  sub_1C563EC60(&unk_1EC16FEA0, type metadata accessor for UILayoutPriority, &unk_1C5869A70);
  sub_1C563EC60(&unk_1EC16DBB0, type metadata accessor for UILayoutPriority, &unk_1C5869A30);
  return sub_1C584FD60();
}

uint64_t _s6MapsUI11StackLayoutC12DistributionO2eeoiySbAE_AEtFZ_0(uint64_t *a1, unint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1 >> 29;
  if (v4 <= 2)
  {
    if (!v4)
    {
      if ((v3 & 0xE0000000) == 0)
      {
        return (*(&v2 + 1) == COERCE_FLOAT(HIDWORD(*a2))) & ~(v3 ^ v2);
      }

      return 0;
    }

    if (v4 == 1)
    {
      if ((*a2 & 0xE0000000) != 0x20000000)
      {
        return 0;
      }
    }

    else if ((*a2 & 0xE0000000) != 0x40000000)
    {
      return 0;
    }

    return (*(&v2 + 1) == COERCE_FLOAT(HIDWORD(*a2))) & (v3 ^ v2 ^ 1);
  }

  if (*a1 >> 29 > 4)
  {
    if (v4 == 5)
    {
      if ((*a2 & 0xE0000000) != 0xA0000000)
      {
        return 0;
      }

      return (*(&v2 + 1) == COERCE_FLOAT(HIDWORD(*a2))) & (v3 ^ v2 ^ 1);
    }

    if (v2 == 3221225472)
    {
      if (v3 == 3221225472)
      {
        return 1;
      }
    }

    else if (v3 == 3221225473)
    {
      return 1;
    }
  }

  else
  {
    if (v4 == 3)
    {
      if ((*a2 & 0xE0000000) != 0x60000000)
      {
        return 0;
      }

      return (*(&v2 + 1) == COERCE_FLOAT(HIDWORD(*a2))) & (v3 ^ v2 ^ 1);
    }

    if ((*a2 & 0xE0000000) == 0x80000000)
    {
      return (*(&v2 + 1) == COERCE_FLOAT(HIDWORD(*a2))) & (v3 ^ v2 ^ 1);
    }
  }

  return 0;
}

uint64_t _s6MapsUI11StackLayoutC9AlignmentO2eeoiySbAE_AEtFZ_0(uint64_t *a1, unint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1 >> 30;
  if (v4 > 1)
  {
    if (v4 == 2)
    {
      if ((*a2 & 0xC0000000) == 0x80000000)
      {
        return (*(&v2 + 1) == COERCE_FLOAT(HIDWORD(*a2))) & (v3 ^ v2 ^ 1);
      }
    }

    else if (v3 == 3221225472)
    {
      return 1;
    }
  }

  else
  {
    if (!v4)
    {
      if ((v3 & 0xC0000000) == 0)
      {
        return (*(&v2 + 1) == COERCE_FLOAT(HIDWORD(*a2))) & ~(v3 ^ v2);
      }

      return 0;
    }

    if ((*a2 & 0xC0000000) == 0x40000000)
    {
      return (*(&v2 + 1) == COERCE_FLOAT(HIDWORD(*a2))) & (v3 ^ v2 ^ 1);
    }
  }

  return 0;
}

BOOL sub_1C563EB2C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1 >> 1;
  if (v4 == 1610612735)
  {
    v3 = *a2 & 0xFFFFFFFELL;
    v5 = 3221225470;
    goto LABEL_6;
  }

  if (v4 == 0x7FFFFFFF)
  {
    return (~v3 & 0xFFFFFFFE) == 0;
  }

  if (((v3 >> 1) | 0x20000000) != 0x7FFFFFFF)
  {
    v7 = v2 >> 30;
    if (v2 >> 30 <= 1)
    {
      if (!v7)
      {
        return (v3 & 0xC0000000) == 0 && ((v3 ^ v2) & 1) == 0 && *(&v2 + 1) == *(&v3 + 1);
      }

      v8 = *a2 & 0xC0000000;
      v9 = 0x40000000;
      return v8 == v9 && *(&v2 + 1) == *(&v3 + 1) && ((v3 ^ v2) & 1) == 0;
    }

    if (v7 == 2)
    {
      v8 = *a2 & 0xC0000000;
      v9 = 0x80000000;
      return v8 == v9 && *(&v2 + 1) == *(&v3 + 1) && ((v3 ^ v2) & 1) == 0;
    }

    v5 = 3221225472;
LABEL_6:
    if (v3 == v5)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_1C563EC60(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1C563ECAC()
{
  result = qword_1EC16DB80;
  if (!qword_1EC16DB80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC16DB80);
  }

  return result;
}

unint64_t sub_1C563ED04()
{
  result = qword_1EC16DB88;
  if (!qword_1EC16DB88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC16DB88);
  }

  return result;
}

unint64_t sub_1C563ED5C()
{
  result = qword_1EC16DB90;
  if (!qword_1EC16DB90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC16DB90);
  }

  return result;
}

unint64_t sub_1C563EDD0()
{
  result = qword_1EC16DB98;
  if (!qword_1EC16DB98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC16DB98);
  }

  return result;
}

uint64_t _s12DistributionOwet(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFF9 && *(a1 + 8))
  {
    return (*a1 + 2147483642);
  }

  if ((((*a1 >> 29) & 0x80000007 | (8 * ((*a1 >> 1) & 0xFFFFFFF))) ^ 0x7FFFFFFF) >= 0x7FFFFFF9)
  {
    v3 = -1;
  }

  else
  {
    v3 = ((*a1 >> 29) & 0x80000007 | (8 * ((*a1 >> 1) & 0xFFFFFFF))) ^ 0x7FFFFFFF;
  }

  return v3 + 1;
}

uint64_t _s12DistributionOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFA)
  {
    *result = a2 - 2147483642;
    if (a3 > 0x7FFFFFF9)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFF9)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = 2 * ((-a2 >> 3) & 0xFFFFFFF) - (a2 << 29);
    }
  }

  return result;
}

uint64_t sub_1C563EEE8(void *a1)
{
  if (*a1 >> 30 == 3)
  {
    return ((*a1 >> 31) & 0xFFFFFFFE | *a1 & 1) + 6;
  }

  else
  {
    return *a1 >> 29;
  }
}

unint64_t *sub_1C563EF1C(unint64_t *result, unsigned int a2)
{
  if (a2 < 6)
  {
    *result = *result & 0xFFFFFFFF00000001 | (a2 << 29);
  }

  else
  {
    *result = (a2 - 6) & 1 | ((a2 - 6) << 31) | 0xC0000000;
  }

  return result;
}

uint64_t _s9AlignmentOwet(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 8))
  {
    return (*a1 + 2147483645);
  }

  v3 = ((*a1 >> 30) & 0x80000003 | (4 * ((*a1 >> 1) & 0x1FFFFFFF))) ^ 0x7FFFFFFF;
  if (v3 >= 0x7FFFFFFC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t _s9AlignmentOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFC)
  {
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
      *result = 2 * ((-a2 >> 2) & 0x1FFFFFFF) - (a2 << 30);
    }
  }

  return result;
}

uint64_t sub_1C563F028(void *a1)
{
  v1 = *a1 >> 30;
  if (v1 == 3)
  {
    return ((*a1 >> 31) & 0xFFFFFFFE | *a1 & 1) + 3;
  }

  else
  {
    return v1;
  }
}

unint64_t *sub_1C563F058(unint64_t *result, unsigned int a2)
{
  if (a2 < 3)
  {
    *result = *result & 0xFFFFFFFF00000001 | (a2 << 30);
  }

  else
  {
    *result = (a2 - 3) & 1 | ((a2 - 3) << 31) | 0xC0000000;
  }

  return result;
}

uint64_t _s13ItemAlignmentOwet(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFFA && *(a1 + 8))
  {
    return (*a1 + 2147483643);
  }

  if (((2 * *a1) & 0x7FFFFFFC) != 0)
  {
    v3 = 0x80000000 - ((2 * *a1) & 0x7FFFFFFC | (*a1 >> 30));
  }

  else
  {
    v3 = 0;
  }

  if (v3 >= 3)
  {
    return v3 - 2;
  }

  else
  {
    return 0;
  }
}

uint64_t _s13ItemAlignmentOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFB)
  {
    *result = 0;
    *result = a2 - 2147483643;
    if (a3 >= 0x7FFFFFFB)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFB)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = ((2147483646 - a2) >> 1) & 0x3FFFFFFE | ((2147483646 - a2) << 30);
    }
  }

  return result;
}

uint64_t sub_1C563F160(_DWORD *a1)
{
  if (((2 * *a1) & 0x7FFFFFFC) != 0)
  {
    return 0x80000000 - ((2 * *a1) & 0x7FFFFFFC | (*a1 >> 30));
  }

  else
  {
    return 0;
  }
}

void *sub_1C563F184(void *result, unsigned int a2)
{
  if (a2 > 0x7FFFFFFC)
  {
    v2 = a2 - 2147483645;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = 2 * ((-a2 >> 2) & 0x1FFFFFFF) - (a2 << 30);
  }

  *result = v2;
  return result;
}

void sub_1C563F1D0(uint64_t a1)
{
  swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    type metadata accessor for NSDirectionalEdgeInsets(319);
    if (v2 <= 0x3F)
    {
      type metadata accessor for UIOffset(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1C563F278(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0x7FFFFFFA)
  {
    v7 = 2147483642;
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

  v8 = ((((((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 19) & 0xFFFFFFFFFFFFFFF8) + 8;
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
    if (v5 >= 0x7FFFFFFA)
    {
      return (*(v4 + 48))(a1);
    }

    v17 = *((((((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 19) & 0xFFFFFFFFFFFFFFF8);
    if (((2 * v17) & 0x7FFFFFFC) != 0)
    {
      v18 = 0x80000000 - ((2 * v17) & 0x7FFFFFFC | (v17 >> 30));
    }

    else
    {
      v18 = 0;
    }

    if (v18 >= 3)
    {
      return v18 - 2;
    }

    else
    {
      return 0;
    }
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

unsigned int *sub_1C563F3F4(unsigned int *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFA)
  {
    v7 = 2147483642;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = ((((((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 19) & 0xFFFFFFFFFFFFFFF8) + 8;
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
    if (((((((v8 + 7) & 0xFFFFFFF8) + 39) & 0xFFFFFFF8) + 19) & 0xFFFFFFF8) == 0xFFFFFFF8)
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
          *(result + v9) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *(result + v9) = 0;
      }

      else if (v13)
      {
        *(result + v9) = 0;
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
      if (v6 <= 0x7FFFFFF9)
      {
        v19 = ((((((result + v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 19) & 0xFFFFFFFFFFFFFFF8);
        if (a2 >= 0x7FFFFFFB)
        {
          *v19 = 0;
          *v19 = a2 - 2147483643;
        }

        else
        {
          *v19 = ((2147483646 - a2) >> 1) & 0x3FFFFFFE | ((2147483646 - a2) << 30);
        }
      }

      else
      {
        v18 = *(v5 + 56);

        return v18();
      }

      return result;
    }
  }

  if (((((((v8 + 7) & 0xFFFFFFF8) + 39) & 0xFFFFFFF8) + 19) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v15 = v14;
  }

  else
  {
    v15 = 1;
  }

  if (((((((v8 + 7) & 0xFFFFFFF8) + 39) & 0xFFFFFFF8) + 19) & 0xFFFFFFF8) != 0xFFFFFFF8)
  {
    v16 = ~v7 + a2;
    v17 = result;
    bzero(result, ((((((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8) + 19) & 0xFFFFFFFFFFFFFFF8) + 8);
    result = v17;
    *v17 = v16;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      *(result + v9) = v15;
    }

    else
    {
      *(result + v9) = v15;
    }
  }

  else if (v13)
  {
    *(result + v9) = v15;
  }

  return result;
}

uint64_t _s22FlexibleSpacingOptionsVwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[8])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t _s22FlexibleSpacingOptionsVwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
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

void *PlacePhotoObfuscationView.attributedText.getter()
{
  v1 = OBJC_IVAR___MUPlacePhotoObfuscationView_attributedText;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void PlacePhotoObfuscationView.attributedText.setter(void *a1)
{
  v3 = OBJC_IVAR___MUPlacePhotoObfuscationView_attributedText;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  v5 = a1;

  [*(v1 + OBJC_IVAR___MUPlacePhotoObfuscationView_label) setAttributedText_];
}

id sub_1C563F934@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___MUPlacePhotoObfuscationView_attributedText;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

id sub_1C563F99C(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___MUPlacePhotoObfuscationView_attributedText;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;

  return [*(v3 + OBJC_IVAR___MUPlacePhotoObfuscationView_label) setAttributedText_];
}

uint64_t (*PlacePhotoObfuscationView.attributedText.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR___MUPlacePhotoObfuscationView_attributedText;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return sub_1C563FAA4;
}

void sub_1C563FAA4(void *a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    [*(v3[3] + OBJC_IVAR___MUPlacePhotoObfuscationView_label) setAttributedText_];
  }

  free(v3);
}

id PlacePhotoObfuscationView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

void PlacePhotoObfuscationView.init(frame:)(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  *&v4[OBJC_IVAR___MUPlacePhotoObfuscationView_attributedText] = 0;
  v10 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) initWithFrame_];
  v11 = OBJC_IVAR___MUPlacePhotoObfuscationView_label;
  *&v4[OBJC_IVAR___MUPlacePhotoObfuscationView_label] = v10;
  v12 = objc_opt_self();
  v13 = v10;
  v14 = [v12 whiteColor];
  [v13 setTextColor_];

  [*&v4[v11] setNumberOfLines_];
  v15 = [objc_opt_self() _effectWithBlurRadius_scale_];
  if (!v15)
  {
    __break(1u);
    goto LABEL_9;
  }

  v16 = v15;
  v17 = [v12 tertiaryLabelColor];
  v18 = objc_opt_self();
  v19 = [v18 effectCompositingColor:v17 withMode:0 alpha:0.3];

  if (!v19)
  {
LABEL_9:
    __break(1u);
    return;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16DBD0, &unk_1C58682B0);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_1C58682A0;
  *(v20 + 32) = v16;
  *(v20 + 40) = v19;
  sub_1C5626E40(0, &qword_1EC16DBD8, 0x1E69DD290);
  v43 = v16;
  v21 = v19;
  v22 = sub_1C584F750();

  v23 = [v18 effectCombiningEffects_];

  v24 = [objc_allocWithZone(MEMORY[0x1E69DD298]) initWithEffect_];
  *&v4[OBJC_IVAR___MUPlacePhotoObfuscationView_blurView] = v24;
  v44.receiver = v4;
  v44.super_class = ObjectType;
  v25 = objc_msgSendSuper2(&v44, sel_initWithFrame_, a1, a2, a3, a4);
  v26 = OBJC_IVAR___MUPlacePhotoObfuscationView_blurView;
  v27 = *&v25[OBJC_IVAR___MUPlacePhotoObfuscationView_blurView];
  v28 = v25;
  [v28 addSubview_];
  v29 = [*&v25[v26] contentView];
  [v29 addSubview_];

  type metadata accessor for StackLayout();
  v30 = *&v28[OBJC_IVAR___MUPlacePhotoObfuscationView_blurView];
  v31 = StackLayout.__allocating_init(container:axis:)(v30, 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16DBD0, &unk_1C58682B0);
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_1C5867970;
  v33 = *&v28[OBJC_IVAR___MUPlacePhotoObfuscationView_label];
  *(v32 + 32) = v33;
  v34 = v33;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16DC50, &qword_1C586A8F0);
  v35 = sub_1C584F750();

  [v31 setArrangedLayoutItems_];

  sub_1C563E578(v46);
  v36 = 0x40000000;
  if (v46[0])
  {
    v36 = 1073741825;
  }

  v45 = v36 | (v47 << 32);
  v37 = MEMORY[0x1E69E7D40];
  (*((*MEMORY[0x1E69E7D40] & *v31) + 0x120))(&v45);
  sub_1C563E578(v46);
  v38 = 0x20000000;
  if (v46[0])
  {
    v38 = 536870913;
  }

  v45 = v38 | (v47 << 32);
  (*((*v37 & *v31) + 0xC0))(&v45);
  type metadata accessor for EdgeLayout();
  swift_unknownObjectRetain();
  v39 = EdgeLayout.__allocating_init(item:container:)(v30, v28);
  sub_1C5626E40(0, &qword_1ED77E810, 0x1E696ACD8);
  v40 = swift_allocObject();
  *(v40 + 16) = xmmword_1C58682A0;
  *(v40 + 32) = v31;
  *(v40 + 40) = v39;
  v41 = v31;
  v42 = v39;
  static NSLayoutConstraint.activate(layouts:)(v40);
}

id PlacePhotoObfuscationView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1C56401C4()
{
  v1 = (v0 + OBJC_IVAR____TtC6MapsUI37TransitDeparturesContainerSectionView_departuresContainer);
  swift_beginAccess();
  v2 = v1[3];
  if (v2)
  {
    v3 = v1[4];
    v4 = __swift_project_boxed_opaque_existential_1(v1, v1[3]);
    v5 = *(v2 - 8);
    MEMORY[0x1EEE9AC00](v4, v4);
    v7 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v5 + 16))(v7);
    v8 = (*(v3 + 24))(v2, v3);
    (*(v5 + 8))(v7, v2);
    v9 = MEMORY[0x1E69E7CC0];
    if (v8)
    {
      v10 = v8[2];
      if (v10)
      {
        v38 = v1;
        v48 = MEMORY[0x1E69E7CC0];
        sub_1C584FCC0();
        v40 = v8[2];
        v11 = (v8 + 4);
        type metadata accessor for TransitDepartureRowView();
        v12 = 0;
        while (v40 != v12)
        {
          if (v12 >= v8[2])
          {
            goto LABEL_21;
          }

          sub_1C5633310(v11, &v45);
          *&v42 = v12;
          sub_1C5632F90(&v45, &v42 + 8);
          sub_1C5633310(&v42 + 8, v41);
          [sub_1C5679C1C(v41) setHandlesHighlighting_];
          sub_1C5625230(&v42, &qword_1EC16DD40, qword_1C5868378);
          sub_1C584FCA0();
          sub_1C584FCD0();
          sub_1C584FCE0();
          sub_1C584FCB0();
          v11 += 40;
          v12 = (v12 + 1);
          if (v10 == v12)
          {

            v9 = v48;
            v1 = v38;
            goto LABEL_11;
          }
        }

        __break(1u);
LABEL_21:
        __break(1u);
        goto LABEL_22;
      }
    }
  }

  else
  {
    v9 = MEMORY[0x1E69E7CC0];
  }

LABEL_11:
  v49 = v9;
  v10 = [objc_allocWithZone(MEMORY[0x1E696F3C0]) initWithFrame_];
  v8 = [objc_allocWithZone(MEMORY[0x1E696F3C8]) init];
  v13 = v1[3];
  if (v13)
  {
    v14 = v1[4];
    v15 = __swift_project_boxed_opaque_existential_1(v1, v1[3]);
    v16 = v1;
    v17 = *(v13 - 8);
    MEMORY[0x1EEE9AC00](v15, v15);
    v19 = &v38 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v17 + 16))(v19);
    (*(v14 + 16))(v13, v14);
    (*(v17 + 8))(v19, v13);
    v1 = v16;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16DD38, &qword_1C5868370);
  v20 = sub_1C584F750();

  [v8 setLabelItems_];

  v21 = v1[3];
  if (v21)
  {
    v22 = v1[4];
    v23 = __swift_project_boxed_opaque_existential_1(v1, v1[3]);
    v40 = &v38;
    v24 = *(v21 - 8);
    MEMORY[0x1EEE9AC00](v23, v23);
    v26 = v8;
    v27 = v9;
    v28 = v10;
    v29 = v1;
    v30 = &v38 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v24 + 16))(v30);
    (*(v22 + 8))(v21, v22);
    v31 = v30;
    v1 = v29;
    v10 = v28;
    v9 = v27;
    v8 = v26;
    (*(v24 + 8))(v31, v21);
  }

  v32 = sub_1C584F630();

  [v8 setTitleText_];

  sub_1C5640898(v1, &v42);
  if (v43)
  {
    sub_1C5632F90(&v42, &v44);
    v33 = v46;
    v34 = v47;
    __swift_project_boxed_opaque_existential_1(&v44, v46);
    [v8 setShowIncidentsIcon_];
    __swift_destroy_boxed_opaque_existential_1(&v44);
  }

  else
  {
    sub_1C5625230(&v42, &qword_1EC16DC68, &unk_1C5868300);
    [v8 setShowIncidentsIcon_];
  }

  [v10 setViewModel_];
  if (!(v9 >> 62))
  {
    goto LABEL_19;
  }

LABEL_22:
  if ((sub_1C584FB90() & 0x8000000000000000) == 0)
  {
LABEL_19:
    v35 = v10;
    sub_1C5641054(0, 0, v35);

    v36 = v39;
    [v39 setDelegate_];
    sub_1C5626E40(0, &qword_1EC16D000, 0x1E696F438);
    v37 = sub_1C584F750();

    [v36 setRowViews_];

    return;
  }

  __break(1u);
}

uint64_t sub_1C5640898(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16DC68, &unk_1C5868300);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C5640908(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC6MapsUI37TransitDeparturesContainerSectionView_departuresContainer;
  swift_beginAccess();
  sub_1C5640984(a1, v1 + v3);
  swift_endAccess();
  sub_1C56401C4();
  return sub_1C5625230(a1, &qword_1EC16DC68, &unk_1C5868300);
}

uint64_t sub_1C5640984(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16DC68, &unk_1C5868300);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

id sub_1C5640BEC(char a1)
{
  v3 = objc_allocWithZone(v1);

  return [v3 initWithShowsSeparators_];
}

id _s6MapsUI23MUPlaceActionDispatcherCfD_0()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1C5640E88(uint64_t a1, char a2)
{
  v4 = *v2;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v2 = v4;
  if (result)
  {
    if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
    {
      if (a1 <= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
  {
    goto LABEL_9;
  }

  sub_1C584FB90();
LABEL_9:
  result = sub_1C584FC80();
  *v2 = result;
  return result;
}

char *sub_1C5640F28(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_21;
  }

  v8 = a4;
  v4 = a3;
  v7 = a2;
  v12 = *v5;
  v5 = (*v5 & 0xFFFFFFFFFFFFFF8);
  v9 = v5 + 4;
  v6 = &v5[a1 + 4];
  sub_1C5626E40(0, &qword_1EC16D000, 0x1E696F438);
  result = swift_arrayDestroy();
  v14 = __OFSUB__(v4, v11);
  v11 = v4 - v11;
  if (v14)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v11)
  {
    v10 = v12 >> 62;
    if (!(v12 >> 62))
    {
      result = v5[2];
      v15 = &result[-v7];
      if (!__OFSUB__(result, v7))
      {
        goto LABEL_6;
      }

      goto LABEL_24;
    }

LABEL_22:
    result = sub_1C584FB90();
    v15 = &result[-v7];
    if (!__OFSUB__(result, v7))
    {
LABEL_6:
      v16 = &v6[v4];
      v17 = &v9[v7];
      if (v16 != v17 || v16 >= &v17[8 * v15])
      {
        memmove(v16, v17, 8 * v15);
      }

      if (v10)
      {
        result = sub_1C584FB90();
      }

      else
      {
        result = v5[2];
      }

      if (!__OFADD__(result, v11))
      {
        v5[2] = &result[v11];
        goto LABEL_17;
      }

LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      return result;
    }

LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_17:
  if (v4 > 0)
  {
    *v6 = v8;
    result = v8;
    if (v4 != 1)
    {
      goto LABEL_26;
    }
  }

  return result;
}

char *sub_1C5641054(uint64_t a1, uint64_t a2, void *a3)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v4 = a3;
    v6 = a2;
    v7 = a1;
    v8 = *v5;
    v9 = *v5 >> 62;
    if (!v9)
    {
      result = *((*v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  result = sub_1C584FB90();
  if (result < v6)
  {
    goto LABEL_15;
  }

LABEL_4:
  v11 = v6 - v7;
  if (__OFSUB__(v6, v7))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v12 = 1 - v11;
  if (__OFSUB__(1, v11))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (v9)
  {
    v13 = sub_1C584FB90();
  }

  else
  {
    v13 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v14 = __OFADD__(v13, v12);
  result = (v13 + v12);
  if (v14)
  {
    goto LABEL_18;
  }

  sub_1C5640E88(result, 1);

  return sub_1C5640F28(v7, v6, 1, v4);
}

void sub_1C5641140(void *a1)
{
  type metadata accessor for TransitDepartureRowView();
  v3 = swift_dynamicCastClass();
  if (v3)
  {
    v4 = v3;
    v5 = objc_allocWithZone(MUPresentationOptions);
    v6 = a1;
    v7 = [v5 init];
    [v7 setSourceView_];
    [v6 frame];
    [v7 setSourceRect_];
    v8 = v1 + OBJC_IVAR____TtC6MapsUI37TransitDeparturesContainerSectionView_rowFeedbackDelegate;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v9 = *(v8 + 8);
      ObjectType = swift_getObjectType();
      v11 = OBJC_IVAR____TtC6MapsUI23TransitDepartureRowView_model;
      swift_beginAccess();
      sub_1C5633310(v4 + v11, v12);
      (*(v9 + 8))(v1, v12, v7, ObjectType, v9);

      swift_unknownObjectRelease();
      __swift_destroy_boxed_opaque_existential_1(v12);
    }

    else
    {
    }
  }
}

uint64_t sub_1C5641328(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC6MapsUI29TransitConnectionsSectionView_connectionsDelegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_1C5641394(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC6MapsUI29TransitConnectionsSectionView_connectionsDelegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_1C5634780;
}

void sub_1C564147C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC6MapsUI29TransitConnectionsSectionView_connectionViewModels;
  swift_beginAccess();
  *(v1 + v3) = a1;

  sub_1C5641730();
}

void (*sub_1C56414D8(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1C564153C;
}

void sub_1C564153C(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    sub_1C5641730();
  }
}

void sub_1C5641730()
{
  v1 = *((*((*MEMORY[0x1E69E7D40] & *v0) + 0x78))() + 16);
  if (v1)
  {
    v5 = MEMORY[0x1E69E7CC0];
    sub_1C584FCC0();
    type metadata accessor for TransitConnectionRowView();
    v2 = 32;
    do
    {
      v3 = swift_unknownObjectRetain_n();
      [sub_1C5776904(v3) setHandlesHighlighting_];
      swift_unknownObjectRelease();
      sub_1C584FCA0();
      sub_1C584FCD0();
      sub_1C584FCE0();
      sub_1C584FCB0();
      v2 += 8;
      --v1;
    }

    while (v1);

    if (!(v5 >> 62))
    {
      goto LABEL_5;
    }
  }

  else
  {

    if (!(MEMORY[0x1E69E7CC0] >> 62))
    {
LABEL_5:

      sub_1C584FDD0();
      sub_1C5641BC8();
      goto LABEL_6;
    }
  }

  sub_1C5641BC8();

  sub_1C584FD10();

LABEL_6:

  sub_1C5641BC8();
  v4 = sub_1C584F750();

  [v0 setRowViews_];
}

id sub_1C5641980()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TransitConnectionsSectionView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1C5641A80(void *a1)
{
  type metadata accessor for TransitConnectionRowView();
  v3 = swift_dynamicCastClass();
  if (v3)
  {
    v4 = v3;
    v5 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x60);
    v12 = a1;
    if (v5())
    {
      v7 = v6;
      ObjectType = swift_getObjectType();
      v9 = OBJC_IVAR____TtC6MapsUI24TransitConnectionRowView_viewModel;
      swift_beginAccess();
      v10 = *(v4 + v9);
      v11 = *(v7 + 8);
      swift_unknownObjectRetain();
      v11(v1, v10, ObjectType, v7);
      swift_unknownObjectRelease();

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

unint64_t sub_1C5641BC8()
{
  result = qword_1EC16D000;
  if (!qword_1EC16D000)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC16D000);
  }

  return result;
}

void *WatchPlaceHeaderViewModel.__allocating_init(placeItem:imageManager:)(uint64_t a1, void *a2)
{
  v4 = swift_allocObject();
  v4[4] = 0;
  v4[5] = 0;
  v4[2] = a1;
  v5 = objc_allocWithZone(MUPlaceItemHeaderViewModel);
  swift_unknownObjectRetain();
  v4[3] = [v5 initWithPlaceItem:a1 imageManager:a2];
  sub_1C5641D20();
  swift_unknownObjectRelease();

  return v4;
}

void *WatchPlaceHeaderViewModel.init(placeItem:imageManager:)(uint64_t a1, void *a2)
{
  v2[4] = 0;
  v2[5] = 0;
  v2[2] = a1;
  v5 = objc_allocWithZone(MUPlaceItemHeaderViewModel);
  swift_unknownObjectRetain();
  v2[3] = [v5 initWithPlaceItem:a1 imageManager:a2];
  sub_1C5641D20();
  swift_unknownObjectRelease();

  return v2;
}

id sub_1C5641D20()
{
  v1 = v0;
  v2 = *(v0 + 24);
  result = [v2 supportsCoverPhoto];
  if (result)
  {
    type metadata accessor for WatchAsyncImageViewModel(0);
    v4 = swift_allocObject();
    swift_weakInit();
    v5 = sub_1C563D9A4(sub_1C56429D4, v4);
    swift_beginAccess();
    *(v0 + 32) = v5;

    result = [v2 supportsLogo];
    if (result)
    {
      v6 = swift_allocObject();
      swift_weakInit();
      v7 = sub_1C563D9A4(sub_1C5642A04, v6);
      swift_beginAccess();
      *(v1 + 40) = v7;
    }
  }

  return result;
}

void sub_1C5641E50(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v7 = *(a1 + 32);

  v9 = a2;
  v8 = a3;
  v7(a2, a3, a4);
}

uint64_t WatchPlaceHeaderViewModel.coverPhotoViewModel.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 32) = a1;
}

uint64_t WatchPlaceHeaderViewModel.logoViewModel.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 40) = a1;
}

id WatchPlaceHeaderViewModel.enclosingPlaceViewModel.getter()
{
  v1 = [*(v0 + 24) enclosingPlaceViewModel];

  return v1;
}

id WatchPlaceHeaderViewModel.secondaryLabel.getter()
{
  if (([*(v0 + 16) options] & 2) != 0)
  {
    return 0;
  }

  result = [*(v0 + 24) placeSecondaryName];
  if (result)
  {
    v2 = result;
    v3 = sub_1C584F660();

    return v3;
  }

  return result;
}

uint64_t WatchPlaceHeaderViewModel.titleText.getter()
{
  v1 = [*(v0 + 16) name];
  if (!v1)
  {
    v1 = [*(v0 + 24) placeName];
  }

  v2 = v1;
  v3 = sub_1C584F660();

  return v3;
}

uint64_t WatchPlaceHeaderViewModel.transitLabelItems.getter()
{
  v1 = [*(v0 + 24) transitLabelItems];
  if (!v1)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v2 = v1;
  v3 = sub_1C584F770();

  return v3;
}

uint64_t WatchPlaceHeaderViewModel.deinit()
{
  swift_unknownObjectRelease();

  return v0;
}

uint64_t WatchPlaceHeaderViewModel.__deallocating_deinit()
{
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_1C5642298()
{
  v1 = *v0;
  v2 = [*(*v0 + 16) name];
  if (!v2)
  {
    v2 = [*(v1 + 24) placeName];
  }

  v3 = v2;
  v4 = sub_1C584F660();

  return v4;
}

uint64_t sub_1C5642310()
{
  v1 = [*(*v0 + 24) transitLabelItems];
  if (!v1)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v2 = v1;
  v3 = sub_1C584F770();

  return v3;
}

id sub_1C5642378()
{
  v1 = [*(*v0 + 24) enclosingPlaceViewModel];

  return v1;
}

uint64_t sub_1C5642534(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  swift_beginAccess();
  *(v2 + v4) = a1;
}

id sub_1C5642670()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WatchMockedPlaceHeaderViewModel();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1C5642A34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, SEL *a6, double a7, double a8, double a9)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v18 = *(Strong + 24);
    v19 = swift_allocObject();
    *(v19 + 16) = a1;
    *(v19 + 24) = a2;
    aBlock[4] = a4;
    aBlock[5] = v19;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1C5641E50;
    aBlock[3] = a5;
    v20 = _Block_copy(aBlock);
    v21 = v18;

    [v21 *a6];
    _Block_release(v20);
  }
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_1C5642B9C(void *a1, id a2)
{
  v3 = *(v2 + 16);
  if (a2)
  {
    v5 = a2;
    v3(a2, 1);
    v6 = a2;

LABEL_4:

    return;
  }

  if (a1)
  {
    v8 = a1;
    v3(a1, 0);
    v6 = v8;

    goto LABEL_4;
  }
}

id MUPlaceActionDispatcher.actionManager.getter()
{
  v1 = OBJC_IVAR____TtC6MapsUI23MUPlaceActionDispatcher_actionManager;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void MUPlaceActionDispatcher.actionManager.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC6MapsUI23MUPlaceActionDispatcher_actionManager;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t MUPlaceActionDispatcher.delegate.setter(uint64_t a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

uint64_t sub_1C5642F80@<X0>(uint64_t *a2@<X8>)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  *a2 = result;
  return result;
}

void (*MUPlaceActionDispatcher.delegate.modify(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC6MapsUI23MUPlaceActionDispatcher_delegate;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return sub_1C56430D0;
}

void sub_1C56430D0(void **a1, char a2)
{
  v3 = *a1;
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

id MUPlaceActionDispatcher.__allocating_init(actionManager:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  swift_unknownObjectWeakInit();
  *&v3[OBJC_IVAR____TtC6MapsUI23MUPlaceActionDispatcher_actionManager] = a1;
  v5.receiver = v3;
  v5.super_class = v1;
  return objc_msgSendSuper2(&v5, sel_init);
}

id MUPlaceActionDispatcher.init(actionManager:)(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR____TtC6MapsUI23MUPlaceActionDispatcher_actionManager] = a1;
  v5.receiver = v1;
  v5.super_class = ObjectType;
  return objc_msgSendSuper2(&v5, sel_init);
}

id MUPlaceActionDispatcher.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

void *MUPlaceActionFeedbackEnvironment.presentationOptions.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC6MapsUI32MUPlaceActionFeedbackEnvironment_presentationOptions);
  v2 = v1;
  return v1;
}

id sub_1C56433CC(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR____TtC6MapsUI32MUPlaceActionFeedbackEnvironment_presentationOptions] = a1;
  v5.receiver = v3;
  v5.super_class = v1;
  return objc_msgSendSuper2(&v5, sel_init);
}

void sub_1C5643490(void *a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4)
{
  v5 = v4;
  v10 = MEMORY[0x1E69E7D40];
  (*((*MEMORY[0x1E69E7D40] & *a1) + 0x50))(v78);
  LOBYTE(v79) = 53;
  sub_1C56441DC();
  sub_1C584F730();
  v11 = sub_1C584F730();
  if (aBlock != *&v80[0])
  {
    (*((*v10 & *a1) + 0x50))(&aBlock, v11);
    v18 = aBlock;
    if (aBlock > 5u)
    {
      if (aBlock > 8u)
      {
        if (aBlock != 9)
        {
          if (aBlock == 13)
          {
            v18 = 11;
          }

          else
          {
            if (aBlock != 14)
            {
              goto LABEL_30;
            }

            v18 = 12;
          }
        }

        goto LABEL_42;
      }

      if (aBlock == 6 || aBlock == 7)
      {
        goto LABEL_42;
      }
    }

    else
    {
      if (aBlock > 2u)
      {
        if (aBlock != 3 && aBlock != 4 && aBlock != 5)
        {
          goto LABEL_30;
        }

LABEL_42:
        v27 = OBJC_IVAR____TtC6MapsUI23MUPlaceActionDispatcher_actionManager;
        swift_beginAccess();
        v23 = [*(v5 + v27) actionItemForButtonType_];
        if (!v23)
        {
          goto LABEL_55;
        }

        goto LABEL_43;
      }

      if (aBlock == 1)
      {
        type metadata accessor for MUPlaceActionDispatcher.AddToGuidesAction();
        v26 = swift_dynamicCastClass();
        if (!v26 || (*(v26 + OBJC_IVAR____TtCC6MapsUI23MUPlaceActionDispatcher17AddToGuidesAction_isFavoriteGuide) & 1) == 0)
        {
          v18 = 1;
          goto LABEL_42;
        }
      }

      else if (aBlock == 2)
      {
        type metadata accessor for MUPlaceActionDispatcher.ReportAnIssueAction();
        v19 = swift_dynamicCastClass();
        if (v19)
        {
          if (!*(v19 + OBJC_IVAR____TtCC6MapsUI23MUPlaceActionDispatcher19ReportAnIssueAction_rapType))
          {
            v18 = 2;
            goto LABEL_42;
          }
        }
      }
    }

LABEL_30:
    v20 = *((*v10 & *a1) + 0x50);
    v20(v78);
    LOBYTE(v79) = 33;
    sub_1C584F730();
    v21 = sub_1C584F730();
    if (aBlock == *&v80[0])
    {
      v22 = [objc_opt_self() actionItemWithType_];
    }

    else
    {
      (v20)(v78, v21);
      LOBYTE(v79) = 48;
      sub_1C584F730();
      sub_1C584F730();
      if (aBlock != *&v80[0])
      {
        type metadata accessor for MUPlaceActionDispatcher.OfflineDownloadAction();
        if (!swift_dynamicCastClass() || ((v24 = a1, sub_1C570750C(&aBlock), aBlock != 11) ? ((sub_1C570750C(&aBlock), v48 = aBlock, v49 = objc_opt_self(), v48 != 12) ? (v25 = [v49 actionItemWithType_]) : (v25 = objc_msgSend(v49, sel_actionItemWithType_, 36))) : (v25 = objc_msgSend(objc_opt_self(), sel_actionItemWithType_, 35)), v23 = v25, v24, !v23))
        {
LABEL_55:
          type metadata accessor for MUPlaceActionDispatcher.MorePlacesAction();
          v50 = swift_dynamicCastClass();
          if (!v50)
          {
            type metadata accessor for MUPlaceActionDispatcher.OpenAppClipAction();
            v58 = swift_dynamicCastClass();
            if (v58)
            {
              v59 = v58;
              swift_beginAccess();
              Strong = swift_unknownObjectWeakLoadStrong();
              if (Strong)
              {
                v61 = Strong;
                v62 = *(v59 + OBJC_IVAR____TtCC6MapsUI23MUPlaceActionDispatcher17OpenAppClipAction_quickLink);
                v63 = swift_allocObject();
                *(v63 + 16) = a3;
                *(v63 + 24) = a4;
                v84 = sub_1C5646810;
                v85 = v63;
                *&aBlock = MEMORY[0x1E69E9820];
                *(&aBlock + 1) = 1107296256;
                v82 = sub_1C564453C;
                ObjectType = &block_descriptor_22;
                v64 = _Block_copy(&aBlock);
                v65 = a1;
                v66 = v62;
                sub_1C5633060(a3, a4);

                [v61 openAppClipWithActionDispatcher:v5 quickLink:v66 completion:v64];
                swift_unknownObjectRelease();

                _Block_release(v64);
              }
            }

            else
            {
              type metadata accessor for MUPlaceActionDispatcher.OpenExtensionAction();
              v68 = swift_dynamicCastClass();
              if (!v68)
              {
                if (sub_1C5644590(a1, a2))
                {
                  if (!a3)
                  {
                    return;
                  }

                  v77 = 1;
                }

                else
                {
                  if (!a3)
                  {
                    return;
                  }

                  v77 = 0;
                }

                a3(v77);
                return;
              }

              v69 = v68;
              swift_beginAccess();
              v70 = swift_unknownObjectWeakLoadStrong();
              if (v70)
              {
                v71 = v70;
                v72 = a1;

                v73 = sub_1C584F630();

                v74 = *(v69 + OBJC_IVAR____TtCC6MapsUI23MUPlaceActionDispatcher19OpenExtensionAction_source);
                v75 = swift_allocObject();
                *(v75 + 16) = a3;
                *(v75 + 24) = a4;
                v84 = sub_1C5646654;
                v85 = v75;
                *&aBlock = MEMORY[0x1E69E9820];
                *(&aBlock + 1) = 1107296256;
                v82 = sub_1C564453C;
                ObjectType = &block_descriptor_16;
                v76 = _Block_copy(&aBlock);
                sub_1C5633060(a3, a4);

                [v71 openExtensionWithActionDispatcher:v5 vendorId:v73 source:v74 completion:v76];
                swift_unknownObjectRelease();
                _Block_release(v76);
              }
            }

            return;
          }

          v51 = v50;
          swift_beginAccess();
          v52 = swift_unknownObjectWeakLoadStrong();
          if (v52)
          {
            v53 = v52;
            v54 = a1;

            v55 = sub_1C584F630();

            sub_1C5626E40(0, &qword_1EC16CFF0, 0x1E696F280);

            v56 = sub_1C584F750();

            v57 = *(v51 + OBJC_IVAR____TtCC6MapsUI23MUPlaceActionDispatcher16MorePlacesAction_originalMapsIdentifier);
            [v53 showSeeAllRelatedPlacesWithActionDispatcher:v5 title:v55 relatedMapItemIdentifiers:v56 originalMapItemIdentifier:v57];
            swift_unknownObjectRelease();

            if (!a3)
            {
LABEL_59:

              return;
            }
          }

          else
          {
            v67 = a1;
            if (!a3)
            {
              goto LABEL_59;
            }
          }

          a3(1);
          goto LABEL_59;
        }

LABEL_43:
        v28 = sub_1C564647C(MEMORY[0x1E69E7CC0]);
        v29 = *(a2 + OBJC_IVAR____TtC6MapsUI32MUPlaceActionFeedbackEnvironment_presentationOptions);
        if (v29)
        {
          v30 = [*(a2 + OBJC_IVAR____TtC6MapsUI32MUPlaceActionFeedbackEnvironment_presentationOptions) sourceView];
          if (v30)
          {
            v31 = v30;
            v32 = sub_1C584F660();
            v34 = v33;
            ObjectType = sub_1C5626E40(0, &qword_1ED77E800, 0x1E69DD250);
            *&aBlock = v31;
            sub_1C563D304(&aBlock, v80);
            v35 = v31;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v79 = v28;
            sub_1C564611C(v80, v32, v34, isUniquelyReferenced_nonNull_native);

            v28 = v79;
          }

          v37 = [v29 sourceItem];
          if (v37)
          {
            v38 = v37;
            v39 = sub_1C584F660();
            v41 = v40;
            ObjectType = swift_getObjectType();
            *&aBlock = v38;
            sub_1C563D304(&aBlock, v80);
            swift_unknownObjectRetain();
            v42 = swift_isUniquelyReferenced_nonNull_native();
            v79 = v28;
            sub_1C564611C(v80, v39, v41, v42);
            swift_unknownObjectRelease();

            v28 = v79;
          }
        }

        v43 = OBJC_IVAR____TtC6MapsUI23MUPlaceActionDispatcher_actionManager;
        swift_beginAccess();
        v44 = *(v5 + v43);
        sub_1C5644230(v28);

        v45 = sub_1C584F5C0();

        v46 = swift_allocObject();
        *(v46 + 16) = a3;
        *(v46 + 24) = a4;
        v84 = sub_1C56465AC;
        v85 = v46;
        *&aBlock = MEMORY[0x1E69E9820];
        *(&aBlock + 1) = 1107296256;
        v82 = sub_1C56444F8;
        ObjectType = &block_descriptor_0;
        v47 = _Block_copy(&aBlock);
        sub_1C5633060(a3, a4);

        [v44 performAction:v23 options:v45 completion:v47];
        _Block_release(v47);

        return;
      }

      v22 = [objc_opt_self() actionItemWithType_];
    }

    v23 = v22;
    if (!v23)
    {
      goto LABEL_55;
    }

    goto LABEL_43;
  }

  type metadata accessor for MUPlaceActionDispatcher.CustomAction();
  v12 = swift_dynamicCastClassUnconditional();
  v13 = OBJC_IVAR____TtCC6MapsUI23MUPlaceActionDispatcher12CustomAction_handlers;
  swift_beginAccess();
  v14 = *(v12 + v13);
  if (v14 >> 62)
  {
    v15 = sub_1C584FB90();
    if (!v15)
    {
      return;
    }
  }

  else
  {
    v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v15)
    {
      return;
    }
  }

  if (v15 < 1)
  {
    __break(1u);
  }

  else
  {

    for (i = 0; i != v15; ++i)
    {
      if ((v14 & 0xC000000000000001) != 0)
      {
        v17 = MEMORY[0x1C694A320](i, v14);
      }

      else
      {
        v17 = *(v14 + 8 * i + 32);
        _Block_copy(v17);
      }

      v17[2](v17);
      _Block_release(v17);
    }
  }
}

unint64_t sub_1C56441DC()
{
  result = qword_1EC16D448;
  if (!qword_1EC16D448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC16D448);
  }

  return result;
}

uint64_t sub_1C5644230(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16DD90, &unk_1C5868550);
    v2 = sub_1C584FD50();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_1C56465F8(*(a1 + 56) + 32 * v13, v35);
    *&v34 = v16;
    *(&v34 + 1) = v15;
    v32[2] = v34;
    v33[0] = v35[0];
    v33[1] = v35[1];
    v32[0] = v34;

    swift_dynamicCast();
    sub_1C563D304(v33, v27);
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_1C563D304(v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_1C563D304(v31, v32);
    result = sub_1C584FBD0();
    v17 = -1 << *(v2 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v7 + 8 * (v18 >> 6))) == 0)
    {
      v20 = 0;
      v21 = (63 - v17) >> 6;
      while (++v19 != v21 || (v20 & 1) == 0)
      {
        v22 = v19 == v21;
        if (v19 == v21)
        {
          v19 = 0;
        }

        v20 |= v22;
        v23 = *(v7 + 8 * v19);
        if (v23 != -1)
        {
          v10 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v18) & ~*(v7 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v24;
    *(v11 + 16) = v25;
    *(v11 + 32) = v26;
    result = sub_1C563D304(v32, (*(v2 + 56) + 32 * v10));
    ++*(v2 + 16);
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

double sub_1C56444F8(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);

  return result;
}

double sub_1C564453C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);

  return result;
}

uint64_t sub_1C5644590(void *a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16DD98, &unk_1C5868560);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v176 - v7;
  type metadata accessor for MUPlaceActionDispatcher.InlineRapEntryAction();
  v9 = swift_dynamicCastClass();
  if (!v9)
  {
    type metadata accessor for MUPlaceActionDispatcher.ReportAnIssueAction();
    v17 = swift_dynamicCastClass();
    if (v17)
    {
      v18 = *(v17 + OBJC_IVAR____TtCC6MapsUI23MUPlaceActionDispatcher19ReportAnIssueAction_rapType);
      if (v18 != 6)
      {
        swift_beginAccess();
        Strong = swift_unknownObjectWeakLoadStrong();
        if (!Strong)
        {
          return 1;
        }

        v28 = Strong;
        v29 = a1;
        [v28 didSelectReportAnIssueTypeWithActionDispatcher:v2 issueType:v18];

        goto LABEL_5;
      }

      swift_beginAccess();
      v19 = swift_unknownObjectWeakLoadStrong();
      if (!v19)
      {
        return 1;
      }

      v20 = v19;
      v14 = a1;
      [v20 didSelectReportSomethingMissingWithActionDispatcher_];
      goto LABEL_4;
    }

    type metadata accessor for MUPlaceActionDispatcher.TappedPlaceAction();
    v21 = swift_dynamicCastClass();
    if (v21)
    {
      v22 = v21;
      swift_beginAccess();
      v23 = swift_unknownObjectWeakLoadStrong();
      if (!v23)
      {
        return 1;
      }

      v24 = v23;
      v25 = *(v22 + OBJC_IVAR____TtCC6MapsUI23MUPlaceActionDispatcher17TappedPlaceAction_mapItemIdentifier);
      v14 = a1;
      v26 = v25;
      [v24 openPlaceWithActionDispatcher:v2 mapItemIdentifier:v26];
      goto LABEL_15;
    }

    type metadata accessor for MUPlaceActionDispatcher.TappedPhotoAction();
    v30 = swift_dynamicCastClass();
    if (v30)
    {
      v31 = v30;
      swift_beginAccess();
      v32 = swift_unknownObjectWeakLoadStrong();
      if (!v32)
      {
        return 1;
      }

      v33 = v32;
      v34 = *(v31 + OBJC_IVAR____TtCC6MapsUI23MUPlaceActionDispatcher17TappedPhotoAction_index);
      v14 = a1;
      v36 = sel_didTapPhotoWithActionDispatcher_index_;
      goto LABEL_24;
    }

    type metadata accessor for MUPlaceActionDispatcher.TappedAlbumAction();
    v37 = swift_dynamicCastClass();
    if (v37)
    {
      v38 = v37;
      swift_beginAccess();
      v39 = swift_unknownObjectWeakLoadStrong();
      if (!v39)
      {
        return 1;
      }

      v33 = v39;
      v34 = *(v38 + OBJC_IVAR____TtCC6MapsUI23MUPlaceActionDispatcher17TappedAlbumAction_index);
      v14 = a1;
      v36 = sel_didTapAlbumWithActionDispatcher_index_;
LABEL_24:
      LODWORD(v35) = v34;
      [v33 v36];
      goto LABEL_4;
    }

    type metadata accessor for MUPlaceActionDispatcher.TappedMorePhotosAction();
    if (swift_dynamicCastClass())
    {
      swift_beginAccess();
      v40 = swift_unknownObjectWeakLoadStrong();
      if (!v40)
      {
        return 1;
      }

      v41 = sel_didTapPhotoWithActionDispatcher_index_;
      goto LABEL_31;
    }

    type metadata accessor for MUPlaceActionDispatcher.TappedYourPhotosAction();
    if (swift_dynamicCastClass())
    {
      swift_beginAccess();
      v40 = swift_unknownObjectWeakLoadStrong();
      if (!v40)
      {
        return 1;
      }

      v41 = sel_didTapAlbumWithActionDispatcher_index_;
LABEL_31:
      [v40 v41];
      goto LABEL_5;
    }

    type metadata accessor for MUPlaceActionDispatcher.TappedARPRatingAction();
    v42 = swift_dynamicCastClass();
    if (v42)
    {
      v43 = v42;
      swift_beginAccess();
      v44 = swift_unknownObjectWeakLoadStrong();
      if (!v44)
      {
        return 1;
      }

      v45 = v44;
      v14 = a1;

      v26 = sub_1C584F630();

      LODWORD(v46) = *(v43 + OBJC_IVAR____TtCC6MapsUI23MUPlaceActionDispatcher21TappedARPRatingAction_value);
      [v45 didSelectARPRatingWithActionDispatcher:v2 ratingCategory:v26 value:v46];
      goto LABEL_15;
    }

    type metadata accessor for MUPlaceActionDispatcher.TappedGuideAction();
    v47 = swift_dynamicCastClass();
    if (v47)
    {
      v48 = v47;
      swift_beginAccess();
      v49 = swift_unknownObjectWeakLoadStrong();
      if (!v49)
      {
        return 1;
      }

      v50 = v49;
      v51 = *(v48 + OBJC_IVAR____TtCC6MapsUI23MUPlaceActionDispatcher17TappedGuideAction_mapItemIdentifier);
      v14 = a1;
      v26 = v51;
      [v50 didSelectFeaturedGuideWithActionDispatcher:v2 mapItemIdentifier:v26];
LABEL_15:

      goto LABEL_4;
    }

    type metadata accessor for MUPlaceActionDispatcher.TappedURLAction(0);
    v52 = swift_dynamicCastClass();
    if (v52)
    {
      v53 = v52;
      swift_beginAccess();
      v54 = v2;
      v55 = swift_unknownObjectWeakLoadStrong();
      if (!v55)
      {
        return 1;
      }

      v56 = v55;
      v14 = a1;
      v57 = sub_1C584EA20();
      [v56 openURLWithActionDispatcher:v54 url:v57 embeddedWeb:*(v53 + OBJC_IVAR____TtCC6MapsUI23MUPlaceActionDispatcher15TappedURLAction_embeddedWeb)];

      goto LABEL_4;
    }

    v178 = v2;
    type metadata accessor for MUPlaceActionDispatcher.TappedAttributionURLAction();
    v58 = swift_dynamicCastClass();
    if (v58)
    {
      v59 = v58;
      v177 = a1;
      v60 = sub_1C567A818();
      v61 = *(v59 + OBJC_IVAR____TtCC6MapsUI23MUPlaceActionDispatcher26TappedAttributionURLAction_vendorID);
      v62 = *(v59 + OBJC_IVAR____TtCC6MapsUI23MUPlaceActionDispatcher26TappedAttributionURLAction_vendorID + 8);
      v63 = *(v59 + OBJC_IVAR____TtCC6MapsUI23MUPlaceActionDispatcher26TappedAttributionURLAction_mapItem);
      v64 = *(**v60 + 96);

      v65 = v63;
      v66 = v64(v61, v62, v65);

      if (v66)
      {
        swift_beginAccess();
        v67 = swift_unknownObjectWeakLoadStrong();
        if (!v67)
        {

          return 1;
        }

        v68 = v67;

        v69 = sub_1C584F750();

        [v68 openAttributionURLsWithActionDispatcher:v178 urls:v69 attribution:v66];

        goto LABEL_45;
      }
    }

    type metadata accessor for MUPlaceActionDispatcher.DirectionsAction(0);
    v70 = swift_dynamicCastClass();
    if (v70)
    {
      v71 = v70;
      swift_beginAccess();
      v72 = swift_unknownObjectWeakLoadStrong();
      if (!v72)
      {
        return 1;
      }

      v73 = v72;
      sub_1C56466CC(v71 + OBJC_IVAR____TtCC6MapsUI23MUPlaceActionDispatcher16DirectionsAction_directionsContact, v8, &qword_1EC16DD98, &unk_1C5868560);
      v74 = type metadata accessor for MUContactLabeledValue(0);
      v75 = (*(*(v74 - 8) + 48))(v8, 1, v74);
      v14 = a1;
      if (v75 == 1)
      {
        sub_1C5646734(v8);
        v76 = 0;
      }

      else
      {
        sub_1C569697C();
        sub_1C564679C(v8);
        v76 = sub_1C584F630();
      }

      [v73 openDirectionsWithActionDispatcher:v178 contactIdentifier:v76];

      goto LABEL_4;
    }

    type metadata accessor for MUPlaceActionDispatcher.ExploreGuidesAction();
    v77 = swift_dynamicCastClass();
    if (v77)
    {
      v78 = v77;
      swift_beginAccess();
      v79 = swift_unknownObjectWeakLoadStrong();
      if (!v79)
      {
        return 1;
      }

      v80 = v79;
      v81 = *(v78 + OBJC_IVAR____TtCC6MapsUI23MUPlaceActionDispatcher19ExploreGuidesAction_guideLocation);
      v14 = a1;
      v82 = v81;
      [v80 openExploreGuidesWithActionDispatcher:v178 guideLocation:v82];
    }

    else
    {
      type metadata accessor for MUPlaceActionDispatcher.CloseAction();
      if (swift_dynamicCastClass())
      {
        swift_beginAccess();
        v83 = swift_unknownObjectWeakLoadStrong();
        if (!v83)
        {
          return 1;
        }

        [v83 didTapCloseWithActionDispatcher_];
        goto LABEL_5;
      }

      type metadata accessor for MUPlaceActionDispatcher.ShareAction();
      if (swift_dynamicCastClass())
      {
        swift_beginAccess();
        v84 = swift_unknownObjectWeakLoadStrong();
        if (!v84)
        {
          return 1;
        }

        [v84 didTapShareWithActionDispatcher:v178 environment:a2];
        goto LABEL_5;
      }

      type metadata accessor for MUPlaceActionDispatcher.TappedNoteAction();
      if (swift_dynamicCastClass())
      {
        swift_beginAccess();
        v85 = swift_unknownObjectWeakLoadStrong();
        if (!v85)
        {
          return 1;
        }

        [v85 didTapNoteWithActionDispatcher_];
        goto LABEL_5;
      }

      type metadata accessor for MUPlaceActionDispatcher.TappedLibraryAction();
      v86 = swift_dynamicCastClass();
      if (v86)
      {
        v87 = v86;
        swift_beginAccess();
        v88 = swift_unknownObjectWeakLoadStrong();
        if (!v88)
        {
          return 1;
        }

        v89 = v88;
        v90 = *(v87 + OBJC_IVAR____TtCC6MapsUI23MUPlaceActionDispatcher19TappedLibraryAction_savedState);
        v14 = a1;
        [v89 didTapAddOrRemoveFromLibraryWithActionDispatcher:v178 savedState:sub_1C57768F4(v90) showAddToLibraryModal:*(v87 + OBJC_IVAR____TtCC6MapsUI23MUPlaceActionDispatcher19TappedLibraryAction_showAddToLibraryModal)];
        goto LABEL_4;
      }

      type metadata accessor for MUPlaceActionDispatcher.RemoveFromFavoritesAction();
      if (swift_dynamicCastClass())
      {
        swift_beginAccess();
        v91 = swift_unknownObjectWeakLoadStrong();
        if (!v91)
        {
          return 1;
        }

        [v91 didTapRemoveShortcutWithActionDispatcher_];
        goto LABEL_5;
      }

      type metadata accessor for MUPlaceActionDispatcher.AddPhotosAction();
      v92 = swift_dynamicCastClass();
      if (v92)
      {
        v93 = v92;
        v94 = objc_allocWithZone(MUPresentationOptions);
        v95 = a1;
        v96 = [v94 init];
        v97 = v96;
        v98 = (v93 + OBJC_IVAR____TtCC6MapsUI23MUPlaceActionDispatcher15AddPhotosAction_boundingBox);
        if (*(v93 + OBJC_IVAR____TtCC6MapsUI23MUPlaceActionDispatcher15AddPhotosAction_boundingBox + 32))
        {
          v98 = MEMORY[0x1E695F058];
        }

        [v96 setSourceRect_];
        v99 = type metadata accessor for MUPlaceActionFeedbackEnvironment();
        v100 = objc_allocWithZone(v99);
        *&v100[OBJC_IVAR____TtC6MapsUI32MUPlaceActionFeedbackEnvironment_presentationOptions] = v97;
        v179.receiver = v100;
        v179.super_class = v99;
        v101 = v97;
        v102 = objc_msgSendSuper2(&v179, sel_init);
        swift_beginAccess();
        v103 = swift_unknownObjectWeakLoadStrong();
        if (v103)
        {
          [v103 didTapAddPhotoWithActionDispatcher:v178 entryPoint:0 environment:v102];

          swift_unknownObjectRelease();
        }

        else
        {
        }

        return 1;
      }

      type metadata accessor for MUPlaceActionDispatcher.AddPhotoFromLibraryAction();
      if (swift_dynamicCastClass())
      {
        swift_beginAccess();
        v104 = swift_unknownObjectWeakLoadStrong();
        if (!v104)
        {
          return 1;
        }

        v105 = v104;
        v106 = type metadata accessor for MUPlaceActionFeedbackEnvironment();
        v107 = objc_allocWithZone(v106);
        *&v107[OBJC_IVAR____TtC6MapsUI32MUPlaceActionFeedbackEnvironment_presentationOptions] = 0;
        v180.receiver = v107;
        v180.super_class = v106;
        v66 = objc_msgSendSuper2(&v180, sel_init);
        [v105 didTapAddPhotoWithActionDispatcher:v178 entryPoint:2 environment:v66];
LABEL_45:

        goto LABEL_5;
      }

      type metadata accessor for MUPlaceActionDispatcher.AddPhotoFromCameraAction();
      if (swift_dynamicCastClass())
      {
        swift_beginAccess();
        v108 = swift_unknownObjectWeakLoadStrong();
        if (v108)
        {
          v109 = v108;
          v110 = type metadata accessor for MUPlaceActionFeedbackEnvironment();
          v111 = objc_allocWithZone(v110);
          *&v111[OBJC_IVAR____TtC6MapsUI32MUPlaceActionFeedbackEnvironment_presentationOptions] = 0;
          v181.receiver = v111;
          v181.super_class = v110;
          v112 = objc_msgSendSuper2(&v181, sel_init);
          v15 = 1;
          [v109 didTapAddPhotoWithActionDispatcher:v178 entryPoint:1 environment:v112];

          swift_unknownObjectRelease();
          return v15;
        }

        return 1;
      }

      type metadata accessor for MUPlaceActionDispatcher.BrowseCategoryAction();
      v113 = swift_dynamicCastClass();
      if (v113)
      {
        v114 = v113;
        swift_beginAccess();
        v115 = swift_unknownObjectWeakLoadStrong();
        if (!v115)
        {
          return 1;
        }

        v116 = v115;
        v117 = *(v114 + OBJC_IVAR____TtCC6MapsUI23MUPlaceActionDispatcher20BrowseCategoryAction_searchCategory);
        v14 = a1;
        v82 = v117;
        [v116 didSelectSearchCategoryWithActionDispatcher:v178 searchCategory:v82];
      }

      else
      {
        type metadata accessor for MUPlaceActionDispatcher.TappedSimulateLocationAction();
        if (swift_dynamicCastClass())
        {
          swift_beginAccess();
          v118 = swift_unknownObjectWeakLoadStrong();
          if (!v118)
          {
            return 1;
          }

          [v118 didTapSimulateLocationWithActionDispatcher_];
          goto LABEL_5;
        }

        type metadata accessor for MUPlaceActionDispatcher.TappedTransitDepartureAction();
        v119 = swift_dynamicCastClass();
        if (v119)
        {
          v120 = v119;
          swift_beginAccess();
          v121 = swift_unknownObjectWeakLoadStrong();
          if (!v121)
          {
            return 1;
          }

          v122 = v121;
          v123 = *(v120 + OBJC_IVAR____TtCC6MapsUI23MUPlaceActionDispatcher28TappedTransitDepartureAction_departureSequence);
          v14 = a1;
          swift_unknownObjectRetain();
          [v122 didTapTransitDepartureWithActionDispatcher:v178 departureSequence:v123 isActiveLine:sub_1C5708B58()];
          swift_unknownObjectRelease();
          goto LABEL_4;
        }

        type metadata accessor for MUPlaceActionDispatcher.CreateCustomRouteAction();
        if (swift_dynamicCastClass())
        {
          swift_beginAccess();
          v124 = swift_unknownObjectWeakLoadStrong();
          if (!v124)
          {
            return 1;
          }

          [v124 didTapCreateCustomRouteWithActionDispatcher_];
          goto LABEL_5;
        }

        type metadata accessor for MUPlaceActionDispatcher.MarkedLocationAction();
        v125 = swift_dynamicCastClass();
        if (v125)
        {
          if (*(v125 + OBJC_IVAR____TtCC6MapsUI23MUPlaceActionDispatcher20MarkedLocationAction_pinActionType))
          {
            if (*(v125 + OBJC_IVAR____TtCC6MapsUI23MUPlaceActionDispatcher20MarkedLocationAction_pinActionType) == 1)
            {
              swift_beginAccess();
              v126 = swift_unknownObjectWeakLoadStrong();
              if (!v126)
              {
                return 1;
              }

              v127 = v126;
              v14 = a1;
              [v127 didSelectRemoveMarkedLocationWithActionDispatcher_];
            }

            else
            {
              swift_beginAccess();
              v131 = swift_unknownObjectWeakLoadStrong();
              if (!v131)
              {
                return 1;
              }

              v132 = v131;
              v14 = a1;
              [v132 didSelectEditLocationOfMarkedLocationWithActionDispatcher_];
            }
          }

          else
          {
            swift_beginAccess();
            v129 = swift_unknownObjectWeakLoadStrong();
            if (!v129)
            {
              return 1;
            }

            v130 = v129;
            v14 = a1;
            [v130 didSelectMarkMyLocationWithActionDispatcher_];
          }

          goto LABEL_4;
        }

        type metadata accessor for MUPlaceActionDispatcher.ContactsAction();
        if (swift_dynamicCastClass())
        {
          swift_beginAccess();
          v128 = swift_unknownObjectWeakLoadStrong();
          if (!v128)
          {
            return 1;
          }

          [v128 didSelectViewContactButtonWithActionDispatcher_];
          goto LABEL_5;
        }

        type metadata accessor for MUPlaceActionDispatcher.LocationAction();
        if (swift_dynamicCastClass())
        {
          swift_beginAccess();
          v133 = swift_unknownObjectWeakLoadStrong();
          if (!v133)
          {
            return 1;
          }

          [v133 didSelectRequestLocationButtonWithActionDispatcher_];
          goto LABEL_5;
        }

        type metadata accessor for MUPlaceActionDispatcher.ShowAllCollectionsAction();
        if (swift_dynamicCastClass())
        {
          swift_beginAccess();
          v134 = swift_unknownObjectWeakLoadStrong();
          if (!v134)
          {
            return 1;
          }

          v135 = v134;
          v14 = a1;

          v136 = sub_1C584F630();

          sub_1C5626E40(0, &qword_1EC16DE08, 0x1E69A2360);

          v137 = sub_1C584F750();

          sub_1C5626E40(0, &unk_1EC16DE10, 0x1E69A21C0);

          v138 = sub_1C584F750();

          [v135 didTapShowAllCollectionWithActionDispatcher:v178 title:v136 placeCollections:v137 collectionIds:v138];

          goto LABEL_4;
        }

        type metadata accessor for MUPlaceActionDispatcher.OpenFindMyAction();
        if (swift_dynamicCastClass())
        {
          swift_beginAccess();
          v139 = swift_unknownObjectWeakLoadStrong();
          if (!v139)
          {
            return 1;
          }

          [v139 didTapOpenFindMyWithActionDispatcher_];
          goto LABEL_5;
        }

        type metadata accessor for MUPlaceActionDispatcher.OpenUserGuideAction();
        if (swift_dynamicCastClass())
        {
          swift_beginAccess();
          v140 = swift_unknownObjectWeakLoadStrong();
          if (!v140)
          {
            return 1;
          }

          v141 = v140;
          v14 = a1;

          v82 = sub_1C584F630();

          [v141 didSelectUserGuideWithActionDispatcher:v178 collectionId:v82];
        }

        else
        {
          type metadata accessor for MUPlaceActionDispatcher.AddToGuidesAction();
          v142 = swift_dynamicCastClass();
          if (v142)
          {
            if (*(v142 + OBJC_IVAR____TtCC6MapsUI23MUPlaceActionDispatcher17AddToGuidesAction_isFavoriteGuide) != 1)
            {
              return 1;
            }

            swift_beginAccess();
            v143 = swift_unknownObjectWeakLoadStrong();
            if (!v143)
            {
              return 1;
            }

            v144 = v143;
            v14 = a1;
            [v144 didSelectAddOrRemoveFromFavoritesGuideWithActionDispatcher_];
            goto LABEL_4;
          }

          type metadata accessor for MUPlaceActionDispatcher.TappedTransitIncidentAction();
          if (swift_dynamicCastClass())
          {
            swift_beginAccess();
            v145 = swift_unknownObjectWeakLoadStrong();
            if (!v145)
            {
              return 1;
            }

            v146 = v145;
            v14 = a1;

            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16DE00, &qword_1C5868570);
            v147 = sub_1C584F750();

            [v146 didSelectTransitIncidentsWithActionDispatcher:v178 incidents:v147];

            goto LABEL_4;
          }

          type metadata accessor for MUPlaceActionDispatcher.PublisherGuideAction();
          v148 = swift_dynamicCastClass();
          if (v148)
          {
            v149 = v148;
            v150 = OBJC_IVAR____TtCC6MapsUI23MUPlaceActionDispatcher20PublisherGuideAction_shouldShowPublisher;
            swift_beginAccess();
            if (*(v149 + v150) == 1)
            {
              swift_beginAccess();
              v151 = swift_unknownObjectWeakLoadStrong();
              if (!v151)
              {
                return 1;
              }

              v152 = v151;
              v153 = *(v149 + OBJC_IVAR____TtCC6MapsUI23MUPlaceActionDispatcher20PublisherGuideAction_placeCollection);
              v154 = a1;
              v155 = v153;
              [v152 didSelectShowPublisherWithActionDispatcher:v178 publisherGuide:v155];
            }

            else
            {
              v162 = OBJC_IVAR____TtCC6MapsUI23MUPlaceActionDispatcher20PublisherGuideAction_shouldAddGuideToLibrary;
              swift_beginAccess();
              if (*(v149 + v162) == 1)
              {
                swift_beginAccess();
                v163 = swift_unknownObjectWeakLoadStrong();
                if (!v163)
                {
                  return 1;
                }

                v164 = v163;
                v165 = *(v149 + OBJC_IVAR____TtCC6MapsUI23MUPlaceActionDispatcher20PublisherGuideAction_placeCollection);
                v154 = a1;
                v155 = v165;
                [v164 didSelectSavePublisherGuideWithActionDispatcher:v178 publisherGuide:v155];
              }

              else
              {
                v166 = OBJC_IVAR____TtCC6MapsUI23MUPlaceActionDispatcher20PublisherGuideAction_shouldSharePublisherGuide;
                swift_beginAccess();
                if (*(v149 + v166) != 1)
                {
                  return 1;
                }

                swift_beginAccess();
                v167 = swift_unknownObjectWeakLoadStrong();
                if (!v167)
                {
                  return 1;
                }

                v168 = v167;
                v169 = *(v149 + OBJC_IVAR____TtCC6MapsUI23MUPlaceActionDispatcher20PublisherGuideAction_placeCollection);
                v154 = a1;
                v155 = v169;
                [v168 didSelectSharePublisherGuideWithActionDispatcher:v178 publisherGuide:v155];
              }
            }

            goto LABEL_5;
          }

          type metadata accessor for MUPlaceActionDispatcher.OpenPhotoViewerAction();
          v156 = swift_dynamicCastClass();
          if (v156)
          {
            v157 = v156;
            swift_beginAccess();
            v158 = swift_unknownObjectWeakLoadStrong();
            if (!v158)
            {
              return 1;
            }

            v159 = v158;
            v160 = *(v157 + OBJC_IVAR____TtCC6MapsUI23MUPlaceActionDispatcher21OpenPhotoViewerAction_index);
            v14 = a1;
            LODWORD(v161) = v160;
            [v159 didTapOpenPhotoViewerWithActionDispatcher:v178 index:v161];
            goto LABEL_4;
          }

          type metadata accessor for MUPlaceActionDispatcher.CopyCoordinatesAction();
          if (swift_dynamicCastClass())
          {
            swift_beginAccess();
            v170 = swift_unknownObjectWeakLoadStrong();
            if (!v170)
            {
              return 1;
            }

            v171 = v170;
            v14 = a1;

            v82 = sub_1C584F630();

            [v171 didSelectCopyCoordinatesWithActionDispatcher:v178 coordinatesString:v82];
          }

          else
          {
            type metadata accessor for MUPlaceActionDispatcher.CopyLinkAction();
            if (swift_dynamicCastClass())
            {
              swift_beginAccess();
              v172 = swift_unknownObjectWeakLoadStrong();
              if (!v172)
              {
                return 1;
              }

              v173 = v172;
              v14 = a1;

              v82 = sub_1C584F630();

              [v173 didSelectCopyLinkWithActionDispatcher:v178 urlString:v82];
            }

            else
            {
              type metadata accessor for MUPlaceActionDispatcher.CopyAddressAction();
              if (!swift_dynamicCastClass())
              {
                return 0;
              }

              swift_beginAccess();
              v174 = swift_unknownObjectWeakLoadStrong();
              if (!v174)
              {
                return 1;
              }

              v175 = v174;
              v14 = a1;

              v82 = sub_1C584F630();

              [v175 didSelectCopyAddressWithActionDispatcher:v178 addressString:v82];
            }
          }
        }
      }
    }

    goto LABEL_4;
  }

  v10 = v9;
  swift_beginAccess();
  v11 = swift_unknownObjectWeakLoadStrong();
  if (v11)
  {
    v12 = v11;
    v13 = *(v10 + OBJC_IVAR____TtCC6MapsUI23MUPlaceActionDispatcher20InlineRapEntryAction_rapType);
    v14 = a1;
    [v12 didSelectAddMissingDataWithActionDispatcher:v2 missingDataType:v13];
LABEL_4:

LABEL_5:
    swift_unknownObjectRelease();
  }

  return 1;
}

unint64_t sub_1C5645D34(uint64_t a1, uint64_t a2)
{
  sub_1C584FEA0();
  sub_1C584F6C0();
  v4 = sub_1C584FEF0();

  return sub_1C5645DAC(a1, a2, v4);
}

unint64_t sub_1C5645DAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_1C584FDC0())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

void sub_1C5645E64(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC171540, &qword_1C5868548);
  v34 = v4;
  v6 = sub_1C584FD40();
  v7 = v6;
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
    v14 = v6 + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = (*(v5 + 56) + 32 * v20);
      if (v34)
      {
        sub_1C563D304(v24, v35);
      }

      else
      {
        sub_1C56465F8(v24, v35);
      }

      sub_1C584FEA0();
      sub_1C584F6C0();
      v25 = sub_1C584FEF0();
      v26 = -1 << *(v7 + 32);
      v27 = v25 & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      sub_1C563D304(v35, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_36;
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
      goto LABEL_34;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero((v5 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
}

_OWORD *sub_1C564611C(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1C5645D34(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_1C56462D8();
      v11 = v19;
      goto LABEL_8;
    }

    sub_1C5645E64(v16, a4 & 1);
    v11 = sub_1C5645D34(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = sub_1C584FE00();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 32 * v11);
    __swift_destroy_boxed_opaque_existential_1(v22);

    return sub_1C563D304(a1, v22);
  }

  else
  {
    sub_1C564626C(v11, a2, a3, a1, v21);
  }
}

_OWORD *sub_1C564626C(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_1C563D304(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

void sub_1C56462D8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC171540, &qword_1C5868548);
  v2 = *v0;
  v3 = sub_1C584FD30();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
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
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 32 * v17;
        sub_1C56465F8(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_1C563D304(v25, (*(v4 + 56) + v22));
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

        v1 = v24;
        goto LABEL_21;
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

LABEL_21:
    *v1 = v4;
  }
}

unint64_t sub_1C564647C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC171540, &qword_1C5868548);
    v3 = sub_1C584FD50();
    v4 = a1 + 32;

    while (1)
    {
      sub_1C56466CC(v4, &v13, &qword_1EC16E700, &qword_1C586A120);
      v5 = v13;
      v6 = v14;
      result = sub_1C5645D34(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_1C563D304(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
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

uint64_t sub_1C56465AC()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    return v1(1);
  }

  return result;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1C56465F8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t objectdestroy_9Tm()
{
  if (*(v0 + 16))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1C5646698(uint64_t result)
{
  v2 = *(v1 + 16);
  if (v2)
  {
    return v2(result & 1);
  }

  return result;
}

uint64_t sub_1C56466CC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1C5646734(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16DD98, &unk_1C5868560);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C564679C(uint64_t a1)
{
  v2 = type metadata accessor for MUContactLabeledValue(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C5646814(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, int a5, uint64_t a6)
{
  v27 = a6;
  v28 = a5;
  v30 = a3;
  v31 = a4;
  v29 = a2;
  v7 = type metadata accessor for WebPlacecardBridge.MUUserInteractionAction(0);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for WebPlacecardBridge.MUWebMenuItem(0) - 8;
  MEMORY[0x1EEE9AC00](v11, v12);
  v15 = (&v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v34 = MEMORY[0x1E69E7CC0];
  v16 = *(a1 + 16);
  if (v16)
  {
    v17 = a1 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
    v18 = *(v13 + 72);
    do
    {
      sub_1C5649D40(v17, v15, type metadata accessor for WebPlacecardBridge.MUWebMenuItem);
      v19 = sub_1C5646B40(v15);
      if (v19)
      {
        v20 = v19;
        sub_1C56954CC(v10);
        v21 = sub_1C56921A8();
        sub_1C5649DA8(v10, type metadata accessor for WebPlacecardBridge.MUUserInteractionAction);
        v32 = sub_1C56470A4(v21);
        v33 = v22;
        MEMORY[0x1C6949D90](0x69746341756E654DLL, 0xEA00000000006E6FLL);
        v23 = sub_1C584F630();

        [v20 setAccessibilityIdentifier_];

        v24 = v20;
        MEMORY[0x1C6949DF0]();
        if (*((v34 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v34 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1C584F7A0();
        }

        sub_1C584F7E0();

        sub_1C5649DA8(v15, type metadata accessor for WebPlacecardBridge.MUWebMenuItem);
      }

      else
      {
        sub_1C5649DA8(v15, type metadata accessor for WebPlacecardBridge.MUWebMenuItem);
      }

      v17 += v18;
      --v16;
    }

    while (v16);
  }

  sub_1C5626E40(0, &qword_1EC16DE20, 0x1E69DCC60);
  v25 = v31;

  return sub_1C584FA70();
}

id sub_1C5646B40(uint64_t *a1)
{
  v3 = sub_1C584F2C0();
  v49 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v4);
  v6 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for WebPlacecardBridge.MUWebMenuItem(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v11 = MEMORY[0x1EEE9AC00](v7 - 8, v10);
  v12 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = &v48 - v14;
  v16 = type metadata accessor for WebPlacecardBridge.MUWebMenuIcon(0);
  MEMORY[0x1EEE9AC00](v16 - 8, v17);
  v19 = &v48 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1C56953C4();
  result = 0;
  if (v20)
  {
    v48 = v1;
    sub_1C56953F4();
    v22 = sub_1C584F630();

    v23 = [objc_opt_self() _systemImageNamed_];

    if (v23)
    {
      v24 = v23;
      v25 = sub_1C56476B4(a1, v23);

      return v25;
    }

    else
    {
      sub_1C5695790(v19);
      v26 = sub_1C5695934();
      v28 = v27;
      sub_1C5649DA8(v19, type metadata accessor for WebPlacecardBridge.MUWebMenuIcon);

      v29 = HIBYTE(v28) & 0xF;
      if ((v28 & 0x2000000000000000) == 0)
      {
        v29 = v26 & 0xFFFFFFFFFFFFLL;
      }

      if (v29)
      {
        v30 = v48;
        sub_1C5649D40(a1, v15, type metadata accessor for WebPlacecardBridge.MUWebMenuItem);
        v31 = (*(v8 + 80) + 80) & ~*(v8 + 80);
        v32 = swift_allocObject();
        v33 = v30[1];
        v32[1] = *v30;
        v32[2] = v33;
        v34 = v30[3];
        v32[3] = v30[2];
        v32[4] = v34;
        sub_1C5649E08(v15, v32 + v31, type metadata accessor for WebPlacecardBridge.MUWebMenuItem);
        aBlock[4] = sub_1C5648A5C;
        aBlock[5] = v32;
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_1C564887C;
        aBlock[3] = &block_descriptor_1;
        v35 = _Block_copy(aBlock);
        v36 = objc_opt_self();

        v37 = [v36 elementWithProvider_];
        _Block_release(v35);

        return v37;
      }

      else
      {
        v38 = sub_1C5716150();
        v39 = v49;
        (*(v49 + 16))(v6, v38, v3);
        sub_1C5649D40(a1, v12, type metadata accessor for WebPlacecardBridge.MUWebMenuItem);
        v40 = sub_1C584F2A0();
        v41 = sub_1C584F9B0();
        if (os_log_type_enabled(v40, v41))
        {
          v42 = swift_slowAlloc();
          v43 = swift_slowAlloc();
          aBlock[0] = v43;
          *v42 = 136315138;
          v44 = sub_1C569540C();
          v46 = v45;
          sub_1C5649DA8(v12, type metadata accessor for WebPlacecardBridge.MUWebMenuItem);
          v47 = sub_1C5649518(v44, v46, aBlock);

          *(v42 + 4) = v47;
          _os_log_impl(&dword_1C5620000, v40, v41, "Invalid appArtwork URL string: %s", v42, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v43);
          MEMORY[0x1C694B7A0](v43, -1, -1);
          MEMORY[0x1C694B7A0](v42, -1, -1);

          (*(v49 + 8))(v6, v3);
        }

        else
        {

          sub_1C5649DA8(v12, type metadata accessor for WebPlacecardBridge.MUWebMenuItem);
          (*(v39 + 8))(v6, v3);
        }

        return sub_1C56476B4(a1, 0);
      }
    }
  }

  return result;
}

uint64_t sub_1C56470A4(char a1)
{
  result = 0x6E776F6E6B6E55;
  switch(a1)
  {
    case 1:
      result = 0x6469754772657355;
      break;
    case 2:
      result = 0x4765726F6C707845;
      break;
    case 3:
      result = 0x6E69746152707241;
      break;
    case 4:
      result = 0x6567677553707241;
      break;
    case 5:
      result = 0x65526E4973706152;
      break;
    case 6:
      result = 0x6E4174726F706552;
      break;
    case 7:
      result = 0x6572616853;
      break;
    case 8:
      result = 1819042115;
      break;
    case 9:
      result = 0x6567617373654DLL;
      break;
    case 10:
      result = 0x65746973626557;
      break;
    case 11:
      result = 0x72476E6F69746341;
      break;
    case 12:
      result = 0x6F69746365726944;
      break;
    case 13:
      result = 0x7265766F796C46;
      break;
    case 14:
      result = 0x44656E696C66664FLL;
      break;
    case 15:
      result = 0x6F746F6850646441;
      break;
    case 16:
      result = 0x7661466F54646441;
      break;
    case 17:
      result = 0x6975476F54646441;
      break;
    case 18:
      result = 0x6850646570706154;
      break;
    case 19:
    case 27:
      result = 0xD000000000000010;
      break;
    case 20:
      result = 0x63616C5065726F4DLL;
      break;
    case 21:
      v3 = 1701998413;
      goto LABEL_32;
    case 22:
      result = 0x7547646570706154;
      break;
    case 23:
      result = 0x6C50646570706154;
      break;
    case 24:
      result = 0x6152656E696C6E49;
      break;
    case 25:
      result = 0x5255646570706154;
      break;
    case 26:
    case 35:
    case 45:
      result = 0xD000000000000014;
      break;
    case 28:
      result = 0x73746361746E6F43;
      break;
    case 29:
      result = 0x794D646E6946;
      break;
    case 30:
      result = 0x6E6F697461636F4CLL;
      break;
    case 31:
      result = 0x65736F6C43;
      break;
    case 32:
      result = 0xD000000000000013;
      break;
    case 33:
      result = 0x694C646570706154;
      break;
    case 34:
      result = 0x6F4E646570706154;
      break;
    case 36:
      result = 0xD000000000000013;
      break;
    case 37:
    case 52:
      result = 0xD000000000000012;
      break;
    case 38:
    case 53:
      result = 0xD000000000000016;
      break;
    case 39:
      result = 0xD000000000000011;
      break;
    case 40:
      result = 0x437070416E65704FLL;
      break;
    case 41:
      result = 0x657478456E65704FLL;
      break;
    case 42:
      result = 0x6F4C64656B72614DLL;
      break;
    case 43:
      result = 0x6469754765726F4DLL;
      break;
    case 44:
      result = 0xD000000000000015;
      break;
    case 46:
      result = 0xD000000000000013;
      break;
    case 47:
      v3 = 1852141647;
LABEL_32:
      result = v3 | 0x746F685000000000;
      break;
    case 48:
      result = 0x726F6F4379706F43;
      break;
    case 49:
      result = 0x6B6E694C79706F43;
      break;
    case 50:
      result = 0x7264644179706F43;
      break;
    case 51:
      result = 0x65446F54646E6553;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C56476B4(uint64_t *a1, void *a2)
{
  v3 = v2;
  v68 = type metadata accessor for WebPlacecardBridge.MUWebMenuItem(0);
  v71 = *(v68 - 8);
  v6 = *(v71 + 64);
  v8 = MEMORY[0x1EEE9AC00](v68, v7);
  v69 = &v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8, v9);
  v12 = &v62 - v11;
  MEMORY[0x1EEE9AC00](v10, v13);
  v15 = (&v62 - v14);
  v72 = sub_1C584F2C0();
  v16 = *(v72 - 8);
  MEMORY[0x1EEE9AC00](v72, v17);
  v19 = &v62 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for WebPlacecardBridge.MUUserInteractionAction(0);
  MEMORY[0x1EEE9AC00](v20 - 8, v21);
  v23 = &v62 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C56954CC(v23);
  v24 = sub_1C56921A8();
  sub_1C5649DA8(v23, type metadata accessor for WebPlacecardBridge.MUUserInteractionAction);
  if (v24 == 51)
  {
    return sub_1C5647EA4(a1, a2);
  }

  v70 = a2;
  if (*(*a1 + 16))
  {
    v63 = *a1;
    v26 = sub_1C5716150();
    v27 = v16;
    v28 = v72;
    (*(v16 + 16))(v19, v26, v72);
    sub_1C5649D40(a1, v15, type metadata accessor for WebPlacecardBridge.MUWebMenuItem);
    v29 = sub_1C584F2A0();
    v30 = sub_1C584F990();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v67 = swift_slowAlloc();
      v73[0] = v67;
      *v31 = 136315138;
      v68 = MEMORY[0x1C6949E30](*v15, v68);
      v69 = v27;
      v33 = v32;
      sub_1C5649DA8(v15, type metadata accessor for WebPlacecardBridge.MUWebMenuItem);
      v34 = sub_1C5649518(v68, v33, v73);

      *(v31 + 4) = v34;
      _os_log_impl(&dword_1C5620000, v29, v30, "Group data is available for this UIMenuButton: %s", v31, 0xCu);
      v35 = v67;
      __swift_destroy_boxed_opaque_existential_1(v67);
      MEMORY[0x1C694B7A0](v35, -1, -1);
      MEMORY[0x1C694B7A0](v31, -1, -1);

      (*(v69 + 8))(v19, v72);
    }

    else
    {

      sub_1C5649DA8(v15, type metadata accessor for WebPlacecardBridge.MUWebMenuItem);
      (*(v27 + 8))(v19, v28);
    }

    v62 = sub_1C5695908();
    v65 = sub_1C56953AC();
    v66 = v46;
    v64 = sub_1C5695768();
    v47 = *(v3 + 8);
    v48 = *(v3 + 24);
    v49 = *(v3 + 40);
    v50 = *(v3 + 56);
    v74 = MEMORY[0x1E69E7CC0];
    v51 = *(v63 + 16);
    v72 = v49;
    v68 = v47;
    v69 = v50;
    v67 = v48;
    if (v51)
    {
      v52 = v63 + ((*(v71 + 80) + 32) & ~*(v71 + 80));
      v53 = *(v71 + 72);

      do
      {
        sub_1C5649D40(v52, v12, type metadata accessor for WebPlacecardBridge.MUWebMenuItem);
        v54 = sub_1C5646B40(v12);
        if (v54)
        {
          v55 = v54;
          sub_1C56954CC(v23);
          v56 = sub_1C56921A8();
          sub_1C5649DA8(v23, type metadata accessor for WebPlacecardBridge.MUUserInteractionAction);
          v73[0] = sub_1C56470A4(v56);
          v73[1] = v57;
          MEMORY[0x1C6949D90](0x69746341756E654DLL, 0xEA00000000006E6FLL);
          v58 = sub_1C584F630();

          [v55 setAccessibilityIdentifier_];

          v59 = v55;
          MEMORY[0x1C6949DF0]();
          if (*((v74 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v74 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_1C584F7A0();
          }

          sub_1C584F7E0();

          sub_1C5649DA8(v12, type metadata accessor for WebPlacecardBridge.MUWebMenuItem);
        }

        else
        {
          sub_1C5649DA8(v12, type metadata accessor for WebPlacecardBridge.MUWebMenuItem);
        }

        v52 += v53;
        --v51;
      }

      while (v51);
    }

    else
    {
    }

    sub_1C5626E40(0, &qword_1EC16DE20, 0x1E69DCC60);
    v60 = v70;

    v61 = sub_1C584FA70();

    return v61;
  }

  else
  {
    v72 = sub_1C5626E40(0, &qword_1EC16E110, 0x1E69DC628);
    v36 = sub_1C56953AC();
    v67 = v37;
    v68 = v36;
    v38 = v70;
    sub_1C56952EC();
    v66 = sub_1C584F630();

    v65 = sub_1C577463C();
    v39 = v69;
    sub_1C5649D40(a1, v69, type metadata accessor for WebPlacecardBridge.MUWebMenuItem);
    v40 = (*(v71 + 80) + 16) & ~*(v71 + 80);
    v41 = (v6 + v40 + 7) & 0xFFFFFFFFFFFFFFF8;
    v42 = swift_allocObject();
    sub_1C5649E08(v39, v42 + v40, type metadata accessor for WebPlacecardBridge.MUWebMenuItem);
    v43 = (v42 + v41);
    v44 = *(v3 + 16);
    *v43 = *v3;
    v43[1] = v44;
    v45 = *(v3 + 48);
    v43[2] = *(v3 + 32);
    v43[3] = v45;

    return sub_1C584FAD0();
  }
}

uint64_t sub_1C5647EA4(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for WebPlacecardBridge.MUWebMenuItem(0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1C584F2C0();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for WebPlacecardBridge.MUUserInteractionAction(0);
  v15 = MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v17 = &v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v18);
  v20 = &v33 - v19;
  sub_1C56954CC(&v33 - v19);
  v21 = sub_1C56921A8();
  sub_1C5649DA8(v20, type metadata accessor for WebPlacecardBridge.MUUserInteractionAction);
  if (v21 == 51)
  {
    return sub_1C5648AF8(a1, a2);
  }

  v23 = sub_1C5716150();
  (*(v9 + 16))(v12, v23, v8);
  sub_1C5649D40(a1, v7, type metadata accessor for WebPlacecardBridge.MUWebMenuItem);
  v24 = sub_1C584F2A0();
  v25 = sub_1C584F9B0();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v34 = v27;
    *v26 = 136315138;
    sub_1C56954CC(v17);
    v28 = sub_1C56921A8();
    sub_1C5649DA8(v17, type metadata accessor for WebPlacecardBridge.MUUserInteractionAction);
    v29 = sub_1C56470A4(v28);
    v31 = v30;
    sub_1C5649DA8(v7, type metadata accessor for WebPlacecardBridge.MUWebMenuItem);
    v32 = sub_1C5649518(v29, v31, &v34);

    *(v26 + 4) = v32;
    _os_log_impl(&dword_1C5620000, v24, v25, "Unexpected user interaction type when creating native submenu for menuItem: %s", v26, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v27);
    MEMORY[0x1C694B7A0](v27, -1, -1);
    MEMORY[0x1C694B7A0](v26, -1, -1);
  }

  else
  {

    sub_1C5649DA8(v7, type metadata accessor for WebPlacecardBridge.MUWebMenuItem);
  }

  (*(v9 + 8))(v12, v8);
  sub_1C5626E40(0, &qword_1EC16DE20, 0x1E69DCC60);
  return sub_1C584FA70();
}

uint64_t sub_1C5648258(void (*a1)(uint64_t), void (*a2)(uint64_t), uint64_t a3, uint64_t a4)
{
  v63 = a2;
  v64 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC16E660, &unk_1C58685F0);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v58 = &v55 - v8;
  v9 = sub_1C584EA90();
  v59 = *(v9 - 8);
  v60 = v9;
  MEMORY[0x1EEE9AC00](v9, v10);
  v56 = &v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for WebPlacecardBridge.MUWebMenuItem(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v16 = MEMORY[0x1EEE9AC00](v12 - 8, v15);
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = &v55 - v18;
  v20 = type metadata accessor for WebPlacecardBridge.MUWebMenuIcon(0);
  MEMORY[0x1EEE9AC00](v20 - 8, v21);
  v23 = &v55 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C5695790(v23);
  sub_1C569540C();
  v57 = v24;
  sub_1C5649D40(a4, v19, type metadata accessor for WebPlacecardBridge.MUWebMenuItem);
  v62 = (&v55 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1C5649D40(v19, v62, type metadata accessor for WebPlacecardBridge.MUWebMenuItem);
  v61 = *(a3 + 56);
  v25 = (*(v13 + 80) + 80) & ~*(v13 + 80);
  v26 = (v14 + v25 + 7) & 0xFFFFFFFFFFFFFFF8;
  v27 = swift_allocObject();
  v28 = *(a3 + 16);
  v27[1] = *a3;
  v27[2] = v28;
  v29 = *(a3 + 48);
  v27[3] = *(a3 + 32);
  v27[4] = v29;
  sub_1C5649E08(v19, v27 + v25, type metadata accessor for WebPlacecardBridge.MUWebMenuItem);
  v30 = (v27 + v26);
  v31 = v63;
  *v30 = v64;
  v30[1] = v31;
  v32 = objc_allocWithZone(MUAppLockupImageMetrics);

  v33 = [v32 init];
  [v33 setFrameSize_];
  v34 = [objc_opt_self() sharedInstance];
  if (v34)
  {
    v35 = v34;

    [v35 screenScale];
    v37 = v36;

    [v33 setScale_];
    [v33 setVariant_];
    sub_1C5695934();
    v38 = v58;
    sub_1C584EA80();

    v40 = v59;
    v39 = v60;
    v41 = v23;
    if ((*(v59 + 48))(v38, 1, v60) == 1)
    {
      sub_1C5625230(v38, &unk_1EC16E660, &unk_1C58685F0);
      v42 = v62;
      v43 = sub_1C56476B4(v62, 0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16DBD0, &unk_1C58682B0);
      v44 = swift_allocObject();
      *(v44 + 16) = xmmword_1C5867970;
      *(v44 + 32) = v43;
      v45 = v43;
      v64(v44);
    }

    else
    {
      v46 = v56;
      (*(v40 + 32))(v56, v38, v39);
      v47 = objc_allocWithZone(MUAppLockupImage);
      v48 = v33;
      v49 = sub_1C584EA20();
      v50 = [v47 initWithRemoteURL:v49 metrics:v48];

      v51 = swift_allocObject();
      v51[2] = sub_1C5649EE0;
      v51[3] = v27;
      v51[4] = v50;
      aBlock[4] = sub_1C5649FFC;
      aBlock[5] = v51;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1C56444F8;
      aBlock[3] = &block_descriptor_18;
      v52 = _Block_copy(aBlock);

      v53 = v50;

      [v53 loadImageWithCompletion_];
      _Block_release(v52);

      (*(v40 + 8))(v46, v39);
      v42 = v62;
    }

    sub_1C5649DA8(v42, type metadata accessor for WebPlacecardBridge.MUWebMenuItem);
    return sub_1C5649DA8(v41, type metadata accessor for WebPlacecardBridge.MUWebMenuIcon);
  }

  else
  {
    result = sub_1C5649DA8(v62, type metadata accessor for WebPlacecardBridge.MUWebMenuItem);
    __break(1u);
  }

  return result;
}

double sub_1C564887C(uint64_t a1, void *aBlock)
{
  v2 = *(a1 + 32);
  v3 = _Block_copy(aBlock);
  v4 = swift_allocObject();
  *(v4 + 16) = v3;

  v2(sub_1C5649ED8, v4);

  return result;
}

void sub_1C5648910(uint64_t a1, uint64_t a2)
{
  sub_1C5626E40(0, &qword_1EC170520, 0x1E69DCC78);
  v3 = sub_1C584F750();
  (*(a2 + 16))(a2, v3);
}

uint64_t sub_1C564898C@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>)
{
  *a9 = result;
  a9[1] = a2;
  a9[2] = a3;
  a9[3] = a4;
  a9[4] = a5;
  a9[5] = a6;
  a9[6] = a7;
  a9[7] = a8;
  return result;
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1C56489B4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_1C56489FC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1C5648A5C(void (*a1)(uint64_t), void (*a2)(uint64_t))
{
  v5 = *(type metadata accessor for WebPlacecardBridge.MUWebMenuItem(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 80) & ~*(v5 + 80));

  return sub_1C5648258(a1, a2, v2 + 16, v6);
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1C5648AF8(uint64_t a1, void *a2)
{
  v70 = a2;
  v92 = *MEMORY[0x1E69E9840];
  v3 = type metadata accessor for MUSendToDevice(0);
  v4 = *(v3 - 8);
  v6 = MEMORY[0x1EEE9AC00](v3 - 8, v5);
  v76 = v69 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = v7;
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = v69 - v9;
  v11 = type metadata accessor for WebPlacecardBridge.MUUserInteractionSendToDevice(0);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v14 = (v69 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = type metadata accessor for WebPlacecardBridge.MUUserInteractionAction(0);
  MEMORY[0x1EEE9AC00](v15 - 8, v16);
  v18 = v69 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = MEMORY[0x1E69E7CC0];
  v69[2] = a1;
  sub_1C56954CC(v18);
  sub_1C5694A44(v14);
  sub_1C5649DA8(v18, type metadata accessor for WebPlacecardBridge.MUUserInteractionAction);
  v19 = *v14;

  sub_1C5649DA8(v14, type metadata accessor for WebPlacecardBridge.MUUserInteractionSendToDevice);
  v20 = *(v19 + 16);
  if (v20)
  {
    v21 = objc_opt_self();
    v22 = *(v4 + 80);
    v69[1] = v19;
    v23 = v19 + ((v22 + 32) & ~v22);
    v24 = *(v4 + 72);
    v74 = v22;
    v72 = (v22 + 80) & ~v22;
    v25 = MEMORY[0x1E69E7CC0];
    v26 = &selRef_shouldBlurChromeHeaderButtons;
    v71 = xmmword_1C5867900;
    v75 = v21;
    v73 = v24;
    while (1)
    {
      sub_1C5649D40(v23, v10, type metadata accessor for MUSendToDevice);
      sub_1C5696D48();
      v29 = sub_1C584F630();

      v30 = [v21 v26[217]];

      if (v30)
      {
        sub_1C5696DA8();
        v31 = sub_1C584F630();

        v32 = [objc_opt_self() _typeWithDeviceModelCode_];

        if (!v32)
        {
          sub_1C5649DA8(v10, type metadata accessor for MUSendToDevice);

          goto LABEL_5;
        }

        v89 = v32;
        v33 = [v32 identifier];
        if (!v33)
        {
          sub_1C584F660();
          v33 = sub_1C584F630();
        }

        v34 = objc_opt_self();
        v90 = 0;
        v35 = [v34 symbolForTypeIdentifier:v33 error:&v90];

        if (v35)
        {
          v36 = v90;
          [v30 size];
          v38 = v37;
          v40 = v39;
          [v30 scale];
          v42 = [v35 imageForSize:v38 scale:{v40, v41}];
          if (v42)
          {
            v43 = v42;
            v44 = [v42 CGImage];
            if (v44)
            {
              v88 = v43;
              v45 = v44;
              [v30 scale];
              v47 = [objc_allocWithZone(MEMORY[0x1E69DCAB8]) initWithCGImage:v45 scale:0 orientation:v46];
              v87 = v45;

              v48 = [objc_opt_self() labelColor];
              v85 = [v47 imageWithTintColor_];

              v86 = sub_1C5626E40(0, &qword_1EC16E110, 0x1E69DC628);
              v49 = [objc_opt_self() sendToDeviceFormatString];
              sub_1C584F660();

              __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC16DFC0, &unk_1C58685E0);
              v50 = swift_allocObject();
              *(v50 + 16) = v71;
              v51 = sub_1C5696D18();
              v53 = v52;
              *(v50 + 56) = MEMORY[0x1E69E6158];
              *(v50 + 64) = sub_1C563D3B0();
              *(v50 + 32) = v51;
              *(v50 + 40) = v53;
              v54 = sub_1C584F670();
              v83 = v55;
              v84 = v54;

              v56 = v78;
              v57 = v78[3];
              v79 = v78[1];
              v80 = v57;
              v58 = v78[7];
              v81 = v78[5];
              v82 = v58;
              v59 = v76;
              sub_1C5649D40(v10, v76, type metadata accessor for MUSendToDevice);
              v60 = v72;
              v61 = swift_allocObject();
              v62 = v56[1];
              v61[1] = *v56;
              v61[2] = v62;
              v63 = v56[3];
              v61[3] = v56[2];
              v61[4] = v63;
              sub_1C5649E08(v59, v61 + v60, type metadata accessor for MUSendToDevice);
              v64 = v85;

              v65 = sub_1C584FAD0();
              MEMORY[0x1C6949DF0]();
              if (*((v91 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v91 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                sub_1C584F7A0();
              }

              sub_1C584F7E0();

              sub_1C5649DA8(v10, type metadata accessor for MUSendToDevice);
              v25 = v91;
              v21 = v75;
              v24 = v73;
              v26 = &selRef_shouldBlurChromeHeaderButtons;
            }

            else
            {
              sub_1C5649DA8(v10, type metadata accessor for MUSendToDevice);
            }
          }

          else
          {
            sub_1C5649DA8(v10, type metadata accessor for MUSendToDevice);
          }

          goto LABEL_5;
        }

        v27 = v90;
        v28 = sub_1C584E950();

        swift_willThrow();
      }

      sub_1C5649DA8(v10, type metadata accessor for MUSendToDevice);
LABEL_5:
      v23 += v24;
      if (!--v20)
      {

        if (!(v25 >> 62))
        {
          goto LABEL_20;
        }

LABEL_25:
        if (sub_1C584FB90() < 1)
        {
          goto LABEL_26;
        }

LABEL_21:
        sub_1C56953AC();
        sub_1C56952EC();
        sub_1C584F630();

        if (v25 >> 62)
        {
          sub_1C5626E40(0, &qword_1EC170520, 0x1E69DCC78);

          sub_1C584FD10();
        }

        else
        {

          sub_1C584FDD0();
          sub_1C5626E40(0, &qword_1EC170520, 0x1E69DCC78);
        }

        sub_1C5626E40(0, &qword_1EC16DE20, 0x1E69DCC60);
        v66 = v70;
        return sub_1C584FA70();
      }
    }
  }

  v25 = MEMORY[0x1E69E7CC0];
  if (MEMORY[0x1E69E7CC0] >> 62)
  {
    goto LABEL_25;
  }

LABEL_20:
  if (*((v25 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 1)
  {
    goto LABEL_21;
  }

LABEL_26:

  sub_1C5626E40(0, &qword_1EC16E110, 0x1E69DC628);
  sub_1C56953AC();
  v68 = v70;
  sub_1C56952EC();
  sub_1C584F630();

  return sub_1C584FAD0();
}

uint64_t sub_1C5649518(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  sub_1C56495E4(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x1E69E6A18];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_1C56465F8(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

void sub_1C56495E4(uint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          *(__dst + v9) = 0;
          *a1 = __dst;
          return;
        }
      }
    }

LABEL_8:
    sub_1C56496F0(a5, a6);
    *a1 = v8;
    return;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    v7 = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    v7 = sub_1C584FC90();
    a6 = v11;
    if (!v7)
    {
      __break(1u);
      return;
    }
  }

  *a1 = v7;
  if ((a6 & 0x8000000000000000) == 0)
  {
    swift_unknownObjectRetain();
  }
}

void *sub_1C56496F0(uint64_t a1, unint64_t a2)
{
  v3 = sub_1C564973C(a1, a2);
  sub_1C564986C(&unk_1F44C2E30);
  return v3;
}

void *sub_1C564973C(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v6 = sub_1C5649958(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_1C584FC90();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_1C584F6F0();
        if (!v10)
        {
          return MEMORY[0x1E69E7CC0];
        }

        v11 = v10;
        v7 = sub_1C5649958(v10, 0);
        result = sub_1C584FC40();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_1C564986C(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_1C56499CC(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_1C5649958(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16E710, &qword_1C586A130);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_1C56499CC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16E710, &qword_1C586A130);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

void sub_1C5649AC0(void *a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for WebPlacecardBridge.MUWebMenuItem(0) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  if ([a1 sender])
  {
    sub_1C584FB30();
    swift_unknownObjectRelease();
  }

  else
  {
    v11 = 0u;
    v12 = 0u;
  }

  v7 = (v2 + v6);
  v13 = v11;
  v14 = v12;
  if (*(&v12 + 1))
  {
    sub_1C5626E40(0, &qword_1ED77E800, 0x1E69DD250);
    if (swift_dynamicCast())
    {
      v8 = v10;
      v9 = [objc_allocWithZone(MUPresentationOptions) init];
      if (v9)
      {
        [v9 setSourceView_];
      }

LABEL_16:

      goto LABEL_19;
    }
  }

  else
  {
    sub_1C5625230(&v13, &qword_1EC16E790, &unk_1C586A110);
  }

  if ([a1 sender])
  {
    sub_1C584FB30();
    swift_unknownObjectRelease();
  }

  else
  {
    v11 = 0u;
    v12 = 0u;
  }

  v13 = v11;
  v14 = v12;
  if (*(&v12 + 1))
  {
    sub_1C5626E40(0, &qword_1EC1705A0, 0x1E69DC708);
    if (swift_dynamicCast())
    {
      v8 = v10;
      v9 = [objc_allocWithZone(MUPresentationOptions) init];
      if (v9)
      {
        [v9 setSourceItem_];
      }

      goto LABEL_16;
    }
  }

  else
  {
    sub_1C5625230(&v13, &qword_1EC16E790, &unk_1C586A110);
  }

  v9 = 0;
LABEL_19:
  if (sub_1C5695674())
  {
    v7[2](v2 + v5, v9);
  }

  (*v7)(v2 + v5, v9);
}

uint64_t sub_1C5649D40(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1C5649DA8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1C5649E08(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_1C5649EE0(void *a1)
{
  v3 = *(type metadata accessor for WebPlacecardBridge.MUWebMenuItem(0) - 8);
  v4 = (*(v3 + 80) + 80) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));
  v6 = sub_1C56476B4((v1 + v4), a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16DBD0, &unk_1C58682B0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1C5867970;
  *(v7 + 32) = v6;
  v8 = v6;
  v5(v7);
}

void sub_1C5649FFC()
{
  v1 = *(v0 + 16);
  v2 = [*(v0 + 32) cachedImage];
  v1();
}

uint64_t EVChargingSection.headerTitle.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t EVChargingSection.headerIcon.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_1C564A0D8@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  *a6 = result;
  a6[1] = a2;
  a6[2] = a3;
  a6[3] = a4;
  a6[4] = a5;
  return result;
}

uint64_t EVChargingRow.leadingText.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1C584E8B0();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

id EVChargingRow.trailingText.getter()
{
  v1 = *(v0 + *(type metadata accessor for EVChargingRow(0) + 20));

  return v1;
}

uint64_t sub_1C564A1A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1C584E8B0();
  (*(*(v6 - 8) + 32))(a3, a1, v6);
  result = type metadata accessor for EVChargingRow(0);
  *(a3 + *(result + 20)) = a2;
  return result;
}

id sub_1C564A220()
{
  v0 = [objc_allocWithZone(MUPlaceVerticalCardConfiguration) init];
  [v0 setShowSeparators_];
  return v0;
}

id sub_1C564A26C(uint64_t a1, void *a2)
{
  v5 = objc_allocWithZone(v2);
  v6 = *(a1 + 32);
  v7 = &v5[OBJC_IVAR____TtC6MapsUI21EVChargingSectionView_section];
  v8 = *(a1 + 16);
  *v7 = *a1;
  *(v7 + 1) = v8;
  *(v7 + 4) = v6;
  v11.receiver = v5;
  v11.super_class = v2;
  v9 = objc_msgSendSuper2(&v11, sel_initWithConfiguration_, a2);
  sub_1C564A2F8();

  return v9;
}

void sub_1C564A2F8()
{
  v33 = sub_1C584E8B0();
  v31 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33, v1);
  v3 = &v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for EVChargingRow(0);
  v30 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = v0;
  v8 = &v0[OBJC_IVAR____TtC6MapsUI21EVChargingSectionView_section];
  v10 = *&v0[OBJC_IVAR____TtC6MapsUI21EVChargingSectionView_section];
  v9 = *&v0[OBJC_IVAR____TtC6MapsUI21EVChargingSectionView_section + 8];
  v12 = *&v0[OBJC_IVAR____TtC6MapsUI21EVChargingSectionView_section + 16];
  v11 = *&v0[OBJC_IVAR____TtC6MapsUI21EVChargingSectionView_section + 24];
  v13 = objc_allocWithZone(type metadata accessor for EVChargingPlugTitleRowView());

  v14 = sub_1C564AC1C(v10, v9, v12, v11);
  [v14 setTranslatesAutoresizingMaskIntoConstraints_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16DBD0, &unk_1C58682B0);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1C5867970;
  *(v15 + 32) = v14;
  v34 = v15;
  v16 = *(v8 + 4);
  v17 = *(v16 + 16);
  if (v17)
  {
    v18 = *(v4 + 20);
    v19 = v16 + ((*(v30 + 80) + 32) & ~*(v30 + 80));
    v20 = *(v30 + 72);
    v21 = (v31 + 16);
    v31 = v14;
    v22 = v14;
    do
    {
      sub_1C564CC70(v19, v7);
      (*v21)(v3, v7, v33);
      v23 = *&v7[v18];
      sub_1C564CCD4(v7);
      v24 = objc_allocWithZone(type metadata accessor for EVChargingPlugRowView(0));
      v25 = sub_1C564BE00(v3, v23);

      [v25 setTranslatesAutoresizingMaskIntoConstraints_];
      v26 = v25;
      MEMORY[0x1C6949DF0]();
      if (*((v34 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v34 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1C584F7A0();
      }

      sub_1C584F7E0();

      v19 += v20;
      --v17;
    }

    while (v17);
    v14 = v31;
  }

  else
  {
    v27 = v14;
  }

  sub_1C5626E40(0, &qword_1EC16D000, 0x1E696F438);
  v28 = sub_1C584F750();

  [v32 setRowViews_];
}

char *sub_1C564A6E4(uint64_t a1, void *a2)
{
  v5 = objc_allocWithZone(v2);
  v6 = sub_1C564BE00(a1, a2);

  return v6;
}

id sub_1C564A734(uint64_t a1, uint64_t a2)
{
  v4 = [objc_allocWithZone(MUButtonCellRowView) initWithFrame_];
  [v4 setTranslatesAutoresizingMaskIntoConstraints_];
  [v4 setBottomHairlineHidden_];
  v5 = [objc_allocWithZone(type metadata accessor for EVChargingMoreButtonViewModel()) init];
  [v4 setViewModel_];

  v6 = [v4 viewModel];
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  v10[4] = sub_1C564C854;
  v10[5] = v7;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 1107296256;
  v10[2] = sub_1C564A8C4;
  v10[3] = &block_descriptor_2;
  v8 = _Block_copy(v10);

  [v6 setActionBlock_];
  _Block_release(v8);
  swift_unknownObjectRelease();
  return v4;
}

void sub_1C564A8C4(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

id sub_1C564AA0C()
{
  v1 = OBJC_IVAR____TtC6MapsUI26EVChargingPlugTitleRowView____lazy_storage___titleLabel;
  v2 = *(v0 + OBJC_IVAR____TtC6MapsUI26EVChargingPlugTitleRowView____lazy_storage___titleLabel);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC6MapsUI26EVChargingPlugTitleRowView____lazy_storage___titleLabel);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
    [v4 setTranslatesAutoresizingMaskIntoConstraints_];
    v5 = [objc_opt_self() _mapkit_preferredFontForTextStyleInTableViewCell_weight_];
    [v4 setFont_];

    v6 = [objc_opt_self() labelColor];
    [v4 setTextColor_];

    [v4 setAdjustsFontForContentSizeCategory_];
    v7 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

id sub_1C564AB38()
{
  v1 = OBJC_IVAR____TtC6MapsUI26EVChargingPlugTitleRowView____lazy_storage___iconView;
  v2 = *(v0 + OBJC_IVAR____TtC6MapsUI26EVChargingPlugTitleRowView____lazy_storage___iconView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC6MapsUI26EVChargingPlugTitleRowView____lazy_storage___iconView);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) init];
    [v4 setTranslatesAutoresizingMaskIntoConstraints_];
    [v4 setContentMode_];

    v5 = [objc_opt_self() labelColor];
    [v4 setTintColor_];

    v6 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

char *sub_1C564AC1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  ObjectType = swift_getObjectType();
  *&v4[OBJC_IVAR____TtC6MapsUI26EVChargingPlugTitleRowView____lazy_storage___titleLabel] = 0;
  *&v4[OBJC_IVAR____TtC6MapsUI26EVChargingPlugTitleRowView____lazy_storage___iconView] = 0;
  v10 = &v4[OBJC_IVAR____TtC6MapsUI26EVChargingPlugTitleRowView_title];
  *v10 = a1;
  *(v10 + 1) = a2;
  v11 = &v4[OBJC_IVAR____TtC6MapsUI26EVChargingPlugTitleRowView_iconName];
  *v11 = a3;
  *(v11 + 1) = a4;
  v66.receiver = v4;
  v66.super_class = ObjectType;
  v12 = objc_msgSendSuper2(&v66, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v13 = *&v12[OBJC_IVAR____TtC6MapsUI26EVChargingPlugTitleRowView_iconName + 8];
  v14 = v12;
  if (v13)
  {
    v15 = sub_1C564AB38();
    [v14 addSubview_];
  }

  v16 = sub_1C564AA0C();
  [v14 addSubview_];

  [v14 setDirectionalLayoutMargins_];
  if (*&v14[OBJC_IVAR____TtC6MapsUI26EVChargingPlugTitleRowView_iconName + 8])
  {
    v65 = objc_opt_self();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16DBD0, &unk_1C58682B0);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_1C5868600;
    v18 = sub_1C564AB38();
    v19 = [v18 leadingAnchor];

    v20 = [v14 layoutMarginsGuide];
    v21 = [v20 leadingAnchor];

    v22 = [v19 constraintEqualToAnchor_];
    *(v17 + 32) = v22;
    v23 = OBJC_IVAR____TtC6MapsUI26EVChargingPlugTitleRowView____lazy_storage___iconView;
    v24 = [*&v14[OBJC_IVAR____TtC6MapsUI26EVChargingPlugTitleRowView____lazy_storage___iconView] centerYAnchor];
    v25 = [v14 &selRef_localizedStringForKey_value_table_ + 1];
    v26 = [v25 centerYAnchor];

    v27 = [v24 constraintEqualToAnchor_];
    *(v17 + 40) = v27;
    v28 = [*&v14[v23] widthAnchor];
    v29 = [v28 constraintEqualToConstant_];

    *(v17 + 48) = v29;
    v30 = [*&v14[v23] heightAnchor];
    v31 = [v30 constraintEqualToConstant_];

    *(v17 + 56) = v31;
    sub_1C5626E40(0, &qword_1ED77E810, 0x1E696ACD8);
    v32 = sub_1C584F750();

    [v65 activateConstraints_];

    v33 = sub_1C564AA0C();
    v34 = [v33 leadingAnchor];

    v35 = [*&v14[v23] &selRef_transitionDuration_ + 4];
    v36 = [v34 constraintEqualToAnchor:v35 constant:8.0];
  }

  else
  {
    v37 = sub_1C564AA0C();
    v34 = [v37 leadingAnchor];

    v38 = [v14 layoutMarginsGuide];
    v35 = [v38 leadingAnchor];

    v36 = [v34 constraintEqualToAnchor_];
  }

  v39 = v36;

  [v39 setActive_];
  v40 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16DBD0, &unk_1C58682B0);
  v41 = swift_allocObject();
  *(v41 + 16) = xmmword_1C58679B0;
  v42 = sub_1C564AA0C();
  v43 = [v42 trailingAnchor];

  v44 = [v14 layoutMarginsGuide];
  v45 = [v44 trailingAnchor];

  v46 = [v43 constraintEqualToAnchor_];
  *(v41 + 32) = v46;
  v47 = OBJC_IVAR____TtC6MapsUI26EVChargingPlugTitleRowView____lazy_storage___titleLabel;
  v48 = [*&v14[OBJC_IVAR____TtC6MapsUI26EVChargingPlugTitleRowView____lazy_storage___titleLabel] topAnchor];
  v49 = [v14 &selRef_localizedStringForKey_value_table_ + 1];
  v50 = [v49 topAnchor];

  v51 = [v48 constraintEqualToAnchor_];
  *(v41 + 40) = v51;
  v52 = [*&v14[v47] bottomAnchor];
  v53 = [v14 &selRef_localizedStringForKey_value_table_ + 1];
  v54 = [v53 bottomAnchor];

  v55 = [v52 constraintEqualToAnchor_];
  *(v41 + 48) = v55;
  sub_1C5626E40(0, &qword_1ED77E810, 0x1E696ACD8);
  v56 = sub_1C584F750();

  [v40 activateConstraints_];

  v57 = sub_1C564AA0C();
  if (*&v14[OBJC_IVAR____TtC6MapsUI26EVChargingPlugTitleRowView_title + 8])
  {
    v58 = sub_1C584F630();
  }

  else
  {
    v58 = 0;
  }

  [v57 setText_];

  if (*&v14[OBJC_IVAR____TtC6MapsUI26EVChargingPlugTitleRowView_iconName + 8])
  {
    v59 = sub_1C564AB38();
    v60 = objc_opt_self();
    v61 = sub_1C584F630();
    v62 = [v60 _mapsui_systemImageNamed_];

    v63 = [v62 imageWithRenderingMode_];
    [v59 setImage_];
  }

  return v14;
}

id sub_1C564B474()
{
  v1 = OBJC_IVAR____TtC6MapsUI21EVChargingPlugRowView____lazy_storage___leadingOrTopLabel;
  v2 = *(v0 + OBJC_IVAR____TtC6MapsUI21EVChargingPlugRowView____lazy_storage___leadingOrTopLabel);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC6MapsUI21EVChargingPlugRowView____lazy_storage___leadingOrTopLabel);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
    [v4 setTranslatesAutoresizingMaskIntoConstraints_];
    LODWORD(v5) = 1148846080;
    [v4 setContentHuggingPriority:0 forAxis:v5];
    LODWORD(v6) = 1144750080;
    [v4 setContentCompressionResistancePriority:0 forAxis:v6];
    v7 = [objc_opt_self() _mapkit_preferredFontForTextStyleInTableViewCell_];
    [v4 setFont_];

    [v4 setAdjustsFontForContentSizeCategory_];
    v8 = [objc_opt_self() labelColor];
    [v4 setTextColor_];

    v9 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v10 = v2;
  return v3;
}

id sub_1C564B5D0()
{
  v1 = OBJC_IVAR____TtC6MapsUI21EVChargingPlugRowView____lazy_storage___trailingOrBottomLabel;
  v2 = *(v0 + OBJC_IVAR____TtC6MapsUI21EVChargingPlugRowView____lazy_storage___trailingOrBottomLabel);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC6MapsUI21EVChargingPlugRowView____lazy_storage___trailingOrBottomLabel);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) init];
    [v4 setTranslatesAutoresizingMaskIntoConstraints_];
    LODWORD(v5) = 1148846080;
    [v4 setContentHuggingPriority:0 forAxis:v5];
    LODWORD(v6) = 1148846080;
    [v4 setContentCompressionResistancePriority:0 forAxis:v6];
    v7 = [objc_opt_self() _mapkit_preferredFontForTextStyleInTableViewCell_weight_];
    [v4 setFont_];

    [v4 setAdjustsFontForContentSizeCategory_];
    v8 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v9 = v2;
  return v3;
}

void sub_1C564B700()
{
  v1 = [v0 traitCollection];
  v2 = [v1 preferredContentSizeCategory];

  sub_1C584FA50();
  v3 = objc_opt_self();
  sub_1C5626E40(0, &qword_1ED77E810, 0x1E696ACD8);

  v4 = sub_1C584F750();

  [v3 deactivateConstraints_];

  v5 = sub_1C584F750();

  [v3 activateConstraints_];

  v6 = [v0 traitCollection];
  v7 = [v6 preferredContentSizeCategory];

  LOBYTE(v6) = sub_1C584FA50();
  *(v0 + OBJC_IVAR____TtC6MapsUI21EVChargingPlugRowView_areLabelsArrangedVertically) = v6 & 1;
}

id sub_1C564BCA0()
{
  ObjectType = swift_getObjectType();
  v2 = &v0[OBJC_IVAR____TtC6MapsUI29EVChargingMoreButtonViewModel_titleString];
  v3 = [objc_opt_self() moreButtonLabel];
  v4 = sub_1C584F660();
  v6 = v5;

  *v2 = v4;
  v2[1] = v6;
  v7 = &v0[OBJC_IVAR____TtC6MapsUI29EVChargingMoreButtonViewModel_symbolName];
  *v7 = 0;
  v7[1] = 0;
  v8 = &v0[OBJC_IVAR____TtC6MapsUI29EVChargingMoreButtonViewModel_actionBlock];
  *v8 = 0;
  v8[1] = 0;
  v0[OBJC_IVAR____TtC6MapsUI29EVChargingMoreButtonViewModel_isEnabled] = 1;
  *&v0[OBJC_IVAR____TtC6MapsUI29EVChargingMoreButtonViewModel_actionStyle] = 0;
  v10.receiver = v0;
  v10.super_class = ObjectType;
  return objc_msgSendSuper2(&v10, sel_init);
}

char *sub_1C564BE00(uint64_t a1, void *a2)
{
  v3 = v2;
  v85 = a1;
  ObjectType = swift_getObjectType();
  v81 = sub_1C584E8B0();
  v86 = *(v81 - 8);
  MEMORY[0x1EEE9AC00](v81, v7);
  v84 = v79 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3[OBJC_IVAR____TtC6MapsUI21EVChargingPlugRowView_areLabelsArrangedVertically] = 0;
  v9 = MEMORY[0x1E69E7CC0];
  *&v3[OBJC_IVAR____TtC6MapsUI21EVChargingPlugRowView_horizontalArrangementConstraints] = MEMORY[0x1E69E7CC0];
  *&v3[OBJC_IVAR____TtC6MapsUI21EVChargingPlugRowView_verticalArrangementConstraints] = v9;
  *&v3[OBJC_IVAR____TtC6MapsUI21EVChargingPlugRowView____lazy_storage___leadingOrTopLabel] = 0;
  *&v3[OBJC_IVAR____TtC6MapsUI21EVChargingPlugRowView____lazy_storage___trailingOrBottomLabel] = 0;
  v11 = *(v10 + 16);
  v82 = v10 + 16;
  v83 = v11;
  (v11)(&v3[OBJC_IVAR____TtC6MapsUI21EVChargingPlugRowView_leadingText], a1);
  *&v3[OBJC_IVAR____TtC6MapsUI21EVChargingPlugRowView_trailingText] = a2;
  v87.receiver = v3;
  v87.super_class = ObjectType;
  v12 = a2;
  v13 = objc_msgSendSuper2(&v87, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v14 = sub_1C564B474();
  [v13 addSubview_];

  v15 = sub_1C564B5D0();
  [v13 addSubview_];

  [v13 setDirectionalLayoutMargins_];
  v16 = objc_opt_self();
  v79[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16DBD0, &unk_1C58682B0);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1C58682A0;
  v18 = sub_1C564B474();
  v19 = [v18 leadingAnchor];

  v20 = [v13 layoutMarginsGuide];
  v21 = [v20 &selRef_mode + 1];

  v22 = [v19 constraintEqualToAnchor_];
  *(v17 + 32) = v22;
  v23 = OBJC_IVAR____TtC6MapsUI21EVChargingPlugRowView____lazy_storage___leadingOrTopLabel;
  v24 = [*&v13[OBJC_IVAR____TtC6MapsUI21EVChargingPlugRowView____lazy_storage___leadingOrTopLabel] topAnchor];
  v25 = [v13 layoutMarginsGuide];
  v26 = [v25 topAnchor];

  v27 = [v24 constraintEqualToAnchor_];
  *(v17 + 40) = v27;
  sub_1C5626E40(0, &qword_1ED77E810, 0x1E696ACD8);
  v28 = sub_1C584F750();

  [v16 activateConstraints_];

  v29 = swift_allocObject();
  v80 = xmmword_1C5868610;
  *(v29 + 16) = xmmword_1C5868610;
  v30 = [*&v13[v23] bottomAnchor];
  v31 = [v13 layoutMarginsGuide];
  v32 = [v31 bottomAnchor];

  v33 = [v30 constraintEqualToAnchor_];
  *(v29 + 32) = v33;
  v34 = [*&v13[v23] trailingAnchor];
  v35 = sub_1C564B5D0();
  v36 = [v35 leadingAnchor];

  v37 = [v34 constraintLessThanOrEqualToAnchor:v36 constant:-kMUPlaceHorizontalStackSpacing(1)];
  *(v29 + 40) = v37;
  v38 = OBJC_IVAR____TtC6MapsUI21EVChargingPlugRowView____lazy_storage___trailingOrBottomLabel;
  v39 = [*&v13[OBJC_IVAR____TtC6MapsUI21EVChargingPlugRowView____lazy_storage___trailingOrBottomLabel] &selRef_transitionDuration_ + 4];
  v40 = [v13 layoutMarginsGuide];
  v41 = [v40 &selRef_transitionDuration_ + 4];

  v42 = [v39 constraintEqualToAnchor_];
  *(v29 + 48) = v42;
  v43 = [*&v13[v38] topAnchor];
  v44 = [v13 &selRef_localizedStringForKey_value_table_ + 1];
  v45 = [v44 topAnchor];

  v46 = [v43 constraintEqualToAnchor_];
  *(v29 + 56) = v46;
  v47 = [*&v13[v38] bottomAnchor];
  v48 = [v13 &selRef_localizedStringForKey_value_table_ + 1];
  v49 = [v48 bottomAnchor];

  v50 = [v47 constraintEqualToAnchor_];
  *(v29 + 64) = v50;
  *&v13[OBJC_IVAR____TtC6MapsUI21EVChargingPlugRowView_horizontalArrangementConstraints] = v29;

  v51 = swift_allocObject();
  *(v51 + 16) = v80;
  v52 = [*&v13[v23] trailingAnchor];
  v53 = [v13 &selRef_localizedStringForKey_value_table_ + 1];
  v54 = [v53 trailingAnchor];

  v55 = [v52 constraintEqualToAnchor_];
  *(v51 + 32) = v55;
  v56 = [*&v13[v38] topAnchor];
  v57 = [*&v13[v23] bottomAnchor];
  v58 = [v56 constraintEqualToAnchor:v57 constant:11.0];

  *(v51 + 40) = v58;
  v59 = [*&v13[v38] leadingAnchor];
  v60 = [v13 &selRef_localizedStringForKey_value_table_ + 1];
  v61 = [v60 leadingAnchor];

  v62 = [v59 constraintEqualToAnchor_];
  *(v51 + 48) = v62;
  v63 = [*&v13[v38] bottomAnchor];
  v64 = [v13 &selRef_localizedStringForKey_value_table_ + 1];
  v65 = [v64 bottomAnchor];

  v66 = [v63 constraintEqualToAnchor_];
  *(v51 + 56) = v66;
  v67 = [*&v13[v38] trailingAnchor];
  v68 = [v13 &selRef_localizedStringForKey_value_table_ + 1];
  v69 = [v68 trailingAnchor];

  v70 = [v67 constraintEqualToAnchor_];
  *(v51 + 64) = v70;
  *&v13[OBJC_IVAR____TtC6MapsUI21EVChargingPlugRowView_verticalArrangementConstraints] = v51;

  sub_1C564B700();
  v71 = *&v13[OBJC_IVAR____TtC6MapsUI21EVChargingPlugRowView____lazy_storage___leadingOrTopLabel];
  sub_1C5626E40(0, &unk_1EC170B70, 0x1E696AAB0);
  v72 = v81;
  v83(v84, &v13[OBJC_IVAR____TtC6MapsUI21EVChargingPlugRowView_leadingText], v81);
  v73 = v71;
  v74 = sub_1C584FA40();
  [v73 setAttributedText_];

  [*&v13[OBJC_IVAR____TtC6MapsUI21EVChargingPlugRowView____lazy_storage___trailingOrBottomLabel] setAttributedText_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC16DE90, &qword_1C5876290);
  v75 = swift_allocObject();
  *(v75 + 16) = xmmword_1C5867900;
  v76 = sub_1C584F310();
  v77 = MEMORY[0x1E69DC2B0];
  *(v75 + 32) = v76;
  *(v75 + 40) = v77;
  swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_1C5626E40(0, &qword_1ED77E800, 0x1E69DD250);
  sub_1C584FAA0();

  swift_unknownObjectRelease();

  (*(v86 + 8))(v85, v72);
  return v13;
}