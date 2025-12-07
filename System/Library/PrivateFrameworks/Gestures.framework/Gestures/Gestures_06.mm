uint64_t sub_18E6DB910(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v89 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_88:
    v5 = *v89;
    if (!*v89)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_18E7290FC(v8);
      v8 = result;
    }

    v81 = (v8 + 16);
    v82 = *(v8 + 16);
    if (v82 >= 2)
    {
      while (*a3)
      {
        v83 = (v8 + 16 * v82);
        v84 = *v83;
        v85 = &v81[2 * v82];
        v86 = v85[1];
        sub_18E6DC0A8((*a3 + 16 * *v83), (*a3 + 16 * *v85), (*a3 + 16 * v86), v5);
        if (v4)
        {
        }

        if (v86 < v84)
        {
          goto LABEL_114;
        }

        if (v82 - 2 >= *v81)
        {
          goto LABEL_115;
        }

        *v83 = v84;
        v83[1] = v86;
        v87 = *v81 - v82;
        if (*v81 < v82)
        {
          goto LABEL_116;
        }

        v82 = *v81 - 1;
        result = memmove(v85, v85 + 2, 16 * v87);
        *v81 = v82;
        if (v82 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  v88 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 16 * v7 + 8);
      v11 = 16 * v9;
      v12 = *a3 + 16 * v9;
      v13 = *(v12 + 8);
      v14 = v9 + 2;
      v15 = (v12 + 40);
      v16 = v10;
      while (v6 != v14)
      {
        v17 = *v15;
        v15 += 2;
        v18 = v17 >= v16;
        ++v14;
        v16 = v17;
        if ((((v10 < v13) ^ v18) & 1) == 0)
        {
          v7 = v14 - 1;
          if (v10 >= v13)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v10 >= v13)
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
        v19 = 0;
        v20 = 16 * v7;
        v21 = v9;
        do
        {
          if (v21 != v7 + v19 - 1)
          {
            v26 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v22 = (v26 + v11);
            v23 = v26 + v20;
            v24 = *v22;
            v25 = v22[1];
            *v22 = *(v23 - 16);
            *(v23 - 16) = v24;
            *(v23 - 8) = v25;
          }

          ++v21;
          --v19;
          v20 -= 16;
          v11 += 16;
        }

        while (v21 < v7 + v19);
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
      result = sub_18E6ED5B4(0, *(v8 + 16) + 1, 1, v8);
      v8 = result;
    }

    v5 = *(v8 + 16);
    v35 = *(v8 + 24);
    v36 = v5 + 1;
    if (v5 >= v35 >> 1)
    {
      result = sub_18E6ED5B4((v35 > 1), v5 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 16) = v36;
    v37 = v8 + 32;
    v38 = (v8 + 32 + 16 * v5);
    *v38 = v9;
    v38[1] = v7;
    v90 = *v89;
    if (!*v89)
    {
      goto LABEL_127;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v36 - 1;
        if (v36 >= 4)
        {
          break;
        }

        if (v36 == 3)
        {
          v39 = *(v8 + 32);
          v40 = *(v8 + 40);
          v49 = __OFSUB__(v40, v39);
          v41 = v40 - v39;
          v42 = v49;
LABEL_57:
          if (v42)
          {
            goto LABEL_104;
          }

          v55 = (v8 + 16 * v36);
          v57 = *v55;
          v56 = v55[1];
          v58 = __OFSUB__(v56, v57);
          v59 = v56 - v57;
          v60 = v58;
          if (v58)
          {
            goto LABEL_106;
          }

          v61 = (v37 + 16 * v5);
          v63 = *v61;
          v62 = v61[1];
          v49 = __OFSUB__(v62, v63);
          v64 = v62 - v63;
          if (v49)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v59, v64))
          {
            goto LABEL_111;
          }

          if (v59 + v64 >= v41)
          {
            if (v41 < v64)
            {
              v5 = v36 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v36 < 2)
        {
          goto LABEL_112;
        }

        v65 = (v8 + 16 * v36);
        v67 = *v65;
        v66 = v65[1];
        v49 = __OFSUB__(v66, v67);
        v59 = v66 - v67;
        v60 = v49;
LABEL_72:
        if (v60)
        {
          goto LABEL_108;
        }

        v68 = (v37 + 16 * v5);
        v70 = *v68;
        v69 = v68[1];
        v49 = __OFSUB__(v69, v70);
        v71 = v69 - v70;
        if (v49)
        {
          goto LABEL_110;
        }

        if (v71 < v59)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v5 - 1 >= v36)
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

        v76 = (v37 + 16 * (v5 - 1));
        v77 = *v76;
        v78 = (v37 + 16 * v5);
        v79 = v78[1];
        sub_18E6DC0A8((*a3 + 16 * *v76), (*a3 + 16 * *v78), (*a3 + 16 * v79), v90);
        if (v4)
        {
        }

        if (v79 < v77)
        {
          goto LABEL_99;
        }

        if (v5 > *(v8 + 16))
        {
          goto LABEL_100;
        }

        *v76 = v77;
        v76[1] = v79;
        v80 = *(v8 + 16);
        if (v5 >= v80)
        {
          goto LABEL_101;
        }

        v36 = v80 - 1;
        result = memmove((v37 + 16 * v5), v78 + 2, 16 * (v80 - 1 - v5));
        *(v8 + 16) = v80 - 1;
        if (v80 <= 2)
        {
          goto LABEL_3;
        }
      }

      v43 = v37 + 16 * v36;
      v44 = *(v43 - 64);
      v45 = *(v43 - 56);
      v49 = __OFSUB__(v45, v44);
      v46 = v45 - v44;
      if (v49)
      {
        goto LABEL_102;
      }

      v48 = *(v43 - 48);
      v47 = *(v43 - 40);
      v49 = __OFSUB__(v47, v48);
      v41 = v47 - v48;
      v42 = v49;
      if (v49)
      {
        goto LABEL_103;
      }

      v50 = (v8 + 16 * v36);
      v52 = *v50;
      v51 = v50[1];
      v49 = __OFSUB__(v51, v52);
      v53 = v51 - v52;
      if (v49)
      {
        goto LABEL_105;
      }

      v49 = __OFADD__(v41, v53);
      v54 = v41 + v53;
      if (v49)
      {
        goto LABEL_107;
      }

      if (v54 >= v46)
      {
        v72 = (v37 + 16 * v5);
        v74 = *v72;
        v73 = v72[1];
        v49 = __OFSUB__(v73, v74);
        v75 = v73 - v74;
        if (v49)
        {
          goto LABEL_113;
        }

        if (v41 < v75)
        {
          v5 = v36 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v88;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v27 = *a3;
  v28 = *a3 + 16 * v7;
  v29 = v9 - v7;
LABEL_30:
  v30 = *(v27 + 16 * v7 + 8);
  v31 = v29;
  v32 = v28;
  while (1)
  {
    if (v30 >= *(v32 - 1))
    {
LABEL_29:
      ++v7;
      v28 += 16;
      --v29;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v27)
    {
      break;
    }

    v33 = *v32;
    *v32 = *(v32 - 1);
    *(v32 - 1) = v30;
    *(v32 - 2) = v33;
    v32 -= 2;
    if (__CFADD__(v31++, 1))
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

uint64_t sub_18E6DBEA4(char *__dst, char *__src, char *a3, char *a4)
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
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      if (*v6 < *v4)
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
LABEL_24:
    v17 = v6 - 16;
    v5 -= 16;
    v18 = v14;
    do
    {
      v19 = v5 + 16;
      v20 = *(v18 - 2);
      v18 -= 16;
      if (v20 < *v17)
      {
        if (v19 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 16, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      if (v19 != v14)
      {
        *v5 = *v18;
      }

      v5 -= 16;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_35:
  v21 = v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0);
  if (v6 != v4 || v6 >= &v4[v21 & 0xFFFFFFFFFFFFFFF0])
  {
    memmove(v6, v4, 16 * (v21 >> 4));
  }

  return 1;
}

uint64_t sub_18E6DC0A8(double *__dst, double *__src, double *a3, double *a4)
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
    if (a4 != __dst || &__dst[2 * v10] <= a4)
    {
      memmove(a4, __dst, 16 * v10);
    }

    v14 = &v4[2 * v10];
    if (v8 < 16)
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

      if (v6[1] < v4[1])
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 2;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 2;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 2;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[2 * v13] <= a4)
  {
    memmove(a4, __src, 16 * v13);
  }

  v14 = &v4[2 * v13];
  if (v11 >= 16 && v6 > v7)
  {
LABEL_24:
    v5 -= 2;
    do
    {
      v17 = v5 + 2;
      if (*(v14 - 1) < *(v6 - 1))
      {
        v19 = v6 - 2;
        if (v17 != v6)
        {
          *v5 = *v19;
        }

        if (v14 <= v4 || (v6 -= 2, v19 <= v7))
        {
          v6 = v19;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      v18 = v14 - 2;
      if (v17 != v14)
      {
        *v5 = *v18;
      }

      v5 -= 2;
      v14 -= 2;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_35:
  v20 = v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0);
  if (v6 != v4 || v6 >= (v4 + (v20 & 0xFFFFFFFFFFFFFFF0)))
  {
    memmove(v6, v4, 16 * (v20 >> 4));
  }

  return 1;
}

BOOL sub_18E6DC2AC(_BOOL8 result)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  v2 = *(v1 + 40);
  if (*(v2 + 16) <= result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v3 = *(v1 + 48);
  v4 = *(v2 + 8 * result + 32);
  if (v4 == 0.0)
  {
    return v3 <= *(v1 + 56);
  }

  else
  {
    return v3 * *(v1 + 64) <= v4;
  }
}

uint64_t sub_18E6DC2F8(char *a1)
{
  v3 = *(v1 + 40);
  v4 = *a1;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  return v3(v4, &a1[*(TupleTypeMetadata2 + 48)]) & 1;
}

uint64_t *sub_18E6DC3DC(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t *sub_18E6DC418(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t sub_18E6DC44C(uint64_t *a1, unsigned int a2)
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

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_18E6DC4A8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
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

uint64_t sub_18E6DC510(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = swift_getWitnessTable();
  result = swift_getWitnessTable();
  *(a1 + 16) = result;
  return result;
}

double sub_18E6DC574(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0.0;
  }

  if (v1 == 1)
  {
    v2 = 0;
    v3 = 0uLL;
  }

  else
  {
    v2 = v1 & 0x7FFFFFFFFFFFFFFELL;
    v5 = (a1 + 64);
    v3 = 0uLL;
    v6 = v1 & 0x7FFFFFFFFFFFFFFELL;
    do
    {
      v7 = *(v5 - 24);
      v8 = *v5;
      v5 += 3;
      v3 = vaddq_f64(vaddq_f64(v3, v7), v8);
      v6 -= 2;
    }

    while (v6);
    if (v1 == v2)
    {
      goto LABEL_10;
    }
  }

  v9 = v1 - v2;
  v10 = (a1 + 24 * v2 + 40);
  do
  {
    v11 = *v10;
    v10 = (v10 + 24);
    v3 = vaddq_f64(v3, v11);
    --v9;
  }

  while (v9);
LABEL_10:
  *&result = *&vmulq_n_f64(v3, 1.0 / v1);
  return result;
}

__n128 Sequence<>.centroid()(unsigned int (*a1)(char *, uint64_t, uint64_t), uint64_t a2, uint64_t a3)
{
  v20 = a1;
  v21 = a2;
  v22 = a3;
  type metadata accessor for CGPoint(0);
  v7 = sub_18E6DC79C(sub_18E6DC714, v19, a1, v5, MEMORY[0x1E69E73E0], a2, MEMORY[0x1E69E7410], v6);
  v8 = *(v7 + 16);
  if (v8)
  {
    if (v8 == 1)
    {
      v9 = 0;
      v10 = 0uLL;
    }

    else
    {
      v9 = v8 & 0x7FFFFFFFFFFFFFFELL;
      v12 = (v7 + 48);
      v10 = 0uLL;
      v13 = v8 & 0x7FFFFFFFFFFFFFFELL;
      do
      {
        v10 = vaddq_f64(vaddq_f64(v10, v12[-1]), *v12);
        v12 += 2;
        v13 -= 2;
      }

      while (v13);
      if (v8 == v9)
      {
        goto LABEL_10;
      }
    }

    v14 = v8 - v9;
    v15 = (v7 + 16 * v9 + 32);
    do
    {
      v16 = *v15++;
      v10 = vaddq_f64(v10, v16);
      --v14;
    }

    while (v14);
LABEL_10:
    v11 = vmulq_n_f64(v10, 1.0 / v8);
    goto LABEL_11;
  }

  v11 = 0uLL;
LABEL_11:
  v18 = v11;

  return v18;
}

void sub_18E6DC714(uint64_t a1@<X8>)
{
  v3 = *(*(v1 + 32) + 16);
  v4 = *(v3 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  *a1 = v4(AssociatedTypeWitness, v3);
  *(a1 + 8) = v6;
}

uint64_t sub_18E6DC79C(void (*a1)(char *, char *), uint64_t a2, unsigned int (*a3)(char *, uint64_t, uint64_t), char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v45 = a8;
  v9 = v8;
  v60 = a2;
  v61 = a4;
  v59 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v54 = *(AssociatedTypeWitness - 8);
  v14 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v43 = &v42 - v15;
  v46 = a5;
  v44 = *(a5 - 8);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v56 = &v42 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v57 = &v42 - v18;
  v19 = sub_18E72B438();
  v47 = *(v19 - 8);
  v48 = v19;
  v20 = MEMORY[0x1EEE9AC00](v19);
  v50 = &v42 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1EEE9AC00](v20);
  v24 = &v42 - v23;
  v25 = MEMORY[0x1EEE9AC00](v22);
  v49 = &v42 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x1EEE9AC00](v25);
  v55 = *(a3 - 1);
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v42 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = a6;
  v62 = swift_getAssociatedTypeWitness();
  v51 = *(v62 - 8);
  MEMORY[0x1EEE9AC00](v62);
  v31 = &v42 - v30;
  v32 = sub_18E72B0D8();
  v63 = sub_18E72B698();
  v58 = sub_18E72B6A8();
  sub_18E72B648();
  (*(v55 + 2))(v29, v52, a3);
  v61 = v31;
  v55 = a3;
  result = sub_18E72B0C8();
  if (v32 < 0)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v32)
  {
    v34 = (v54 + 48);
    v35 = (v54 + 8);
    swift_getAssociatedConformanceWitness();
    while (1)
    {
      sub_18E72B448();
      result = (*v34)(v24, 1, AssociatedTypeWitness);
      if (result == 1)
      {
        goto LABEL_17;
      }

      v59(v24, v57);
      if (v9)
      {
        (*(v51 + 8))(v61, v62);

        (*(v44 + 32))(v45, v57, v46);
        return (*v35)(v24, AssociatedTypeWitness);
      }

      v9 = 0;
      (*v35)(v24, AssociatedTypeWitness);
      sub_18E72B688();
      if (!--v32)
      {
        goto LABEL_9;
      }
    }
  }

  swift_getAssociatedConformanceWitness();
LABEL_9:
  v36 = v50;
  sub_18E72B448();
  v37 = v36;
  v38 = v54;
  v39 = *(v54 + 48);
  v57 = (v54 + 48);
  v55 = v39;
  if (v39(v36, 1, AssociatedTypeWitness) == 1)
  {
LABEL_13:
    (*(v51 + 8))(v61, v62);
    (*(v47 + 8))(v37, v48);
    return v63;
  }

  else
  {
    v54 = *(v38 + 32);
    v40 = (v38 + 8);
    v41 = v43;
    while (1)
    {
      (v54)(v41, v37, AssociatedTypeWitness);
      v59(v41, v56);
      if (v9)
      {
        break;
      }

      v9 = 0;
      (*v40)(v41, AssociatedTypeWitness);
      sub_18E72B688();
      sub_18E72B448();
      if (v55(v37, 1, AssociatedTypeWitness) == 1)
      {
        goto LABEL_13;
      }
    }

    (*v40)(v41, AssociatedTypeWitness);
    (*(v51 + 8))(v61, v62);

    return (*(v44 + 32))(v45, v56, v46);
  }
}

uint64_t LongPressComponent.pointCountTimeout.setter(uint64_t result, uint64_t a2)
{
  *(v2 + 16) = result;
  *(v2 + 24) = a2;
  return result;
}

uint64_t LongPressComponent.minimumDuration.setter(uint64_t result, uint64_t a2)
{
  *(v2 + 32) = result;
  *(v2 + 40) = a2;
  return result;
}

uint64_t LongPressComponent.maximumDuration.setter(uint64_t result, uint64_t a2)
{
  *(v2 + 48) = result;
  *(v2 + 56) = a2;
  return result;
}

uint64_t LongPressComponent.init(pointCount:pointCountTimeout:minimumDuration:maximumDuration:maximumMovement:maximumSeparationDistance:failOnExceedingMaximumPointCount:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char a8@<W7>, uint64_t a9@<X8>, double a10@<D0>, double a11@<D1>, uint64_t a12, uint64_t a13)
{
  v19 = *(type metadata accessor for LongPressComponent(0, a12, a13, a4) + 60);
  v21 = type metadata accessor for EventSource(255, a12, *(a13 + 8), v20);
  WitnessTable = swift_getWitnessTable();
  v24 = type metadata accessor for DynamicCombinerComponent(255, v21, WitnessTable, v23);
  v25 = swift_getWitnessTable();
  v27 = type metadata accessor for TimeoutComponent(255, v24, v25, v26);
  v28 = swift_getWitnessTable();
  v29 = sub_18E72B278();
  type metadata accessor for ExpirationRecord(255, v29, v30, v31);
  v32 = swift_getWitnessTable();
  v33 = type metadata accessor for ExpirationComponent(255, v27, v28, v32);
  v34 = swift_getWitnessTable();
  v36 = type metadata accessor for DurationGate(255, v33, v34, v35);
  v37 = swift_getWitnessTable();
  v38 = type metadata accessor for ExpirationComponent(255, v36, v37, v32);
  v39 = swift_getWitnessTable();
  v40 = swift_getWitnessTable();
  v41 = *(a13 + 16);
  v65 = v38;
  v66 = v39;
  v67 = v40;
  v68 = v41;
  v42 = type metadata accessor for SeparationDistanceGate(255, &v65);
  type metadata accessor for CGPoint(255);
  v44 = v43;
  v45 = swift_getWitnessTable();
  v46 = type metadata accessor for MapComponent(255, v42, v44, v45);
  v47 = swift_getWitnessTable();
  v48 = type metadata accessor for ValueTracker(255, v46, v44, v47);
  v49 = swift_getWitnessTable();
  v65 = v48;
  v66 = v44;
  v67 = v49;
  v68 = &protocol witness table for CGPoint;
  v50 = type metadata accessor for MovementGate(255, &v65);
  v51 = swift_getWitnessTable();
  v53 = type metadata accessor for RepeatComponent(255, v50, v51, v52);
  v54 = swift_getWitnessTable();
  v55 = sub_18E6B04D4();
  v56 = type metadata accessor for ExpirationComponent(255, v53, v54, v55);
  v57 = swift_getWitnessTable();
  v58 = type metadata accessor for MapComponent(0, v56, v44, v57);
  result = (*(*(v58 - 8) + 56))(a9 + v19, 1, 1, v58);
  *a9 = a10;
  *(a9 + 8) = a11;
  *(a9 + 16) = a2;
  *(a9 + 24) = a3;
  *(a9 + 32) = a4;
  *(a9 + 40) = a5;
  *(a9 + 48) = a6;
  *(a9 + 56) = a7;
  *(a9 + 64) = a1;
  *(a9 + 72) = a8;
  return result;
}

uint64_t LongPressComponent.upstream.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v6 = *(a1 + 16);
  v7 = *(a1 + 24);
  v8 = type metadata accessor for EventSource(255, v6, *(v7 + 8), a2);
  WitnessTable = swift_getWitnessTable();
  v11 = type metadata accessor for DynamicCombinerComponent(255, v8, WitnessTable, v10);
  v12 = swift_getWitnessTable();
  v14 = type metadata accessor for TimeoutComponent(255, v11, v12, v13);
  v15 = swift_getWitnessTable();
  v16 = sub_18E72B278();
  type metadata accessor for ExpirationRecord(255, v16, v17, v18);
  v19 = swift_getWitnessTable();
  v20 = type metadata accessor for ExpirationComponent(255, v14, v15, v19);
  v21 = swift_getWitnessTable();
  v23 = type metadata accessor for DurationGate(255, v20, v21, v22);
  v24 = swift_getWitnessTable();
  v25 = type metadata accessor for ExpirationComponent(255, v23, v24, v19);
  v26 = swift_getWitnessTable();
  v27 = swift_getWitnessTable();
  v28 = *(v7 + 16);
  v64 = v25;
  v65 = v26;
  v66 = v27;
  v67 = v28;
  v29 = type metadata accessor for SeparationDistanceGate(255, &v64);
  type metadata accessor for CGPoint(255);
  v31 = v30;
  v32 = swift_getWitnessTable();
  v33 = type metadata accessor for MapComponent(255, v29, v31, v32);
  v34 = swift_getWitnessTable();
  v35 = type metadata accessor for ValueTracker(255, v33, v31, v34);
  v36 = swift_getWitnessTable();
  v64 = v35;
  v65 = v31;
  v66 = v36;
  v67 = &protocol witness table for CGPoint;
  v37 = type metadata accessor for MovementGate(255, &v64);
  v38 = swift_getWitnessTable();
  v40 = type metadata accessor for RepeatComponent(255, v37, v38, v39);
  v41 = swift_getWitnessTable();
  v42 = sub_18E6B04D4();
  v43 = type metadata accessor for ExpirationComponent(255, v40, v41, v42);
  v44 = swift_getWitnessTable();
  v45 = type metadata accessor for MapComponent(255, v43, v31, v44);
  v46 = sub_18E72B438();
  v47 = *(v46 - 8);
  v48 = MEMORY[0x1EEE9AC00](v46);
  v50 = &v62 - v49;
  MEMORY[0x1EEE9AC00](v48);
  v52 = &v62 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v53 + 16))(v52, v3, a1);
  (*(v47 + 32))(v50, &v52[*(a1 + 60)], v46);
  v54 = *(v45 - 8);
  if ((*(v54 + 48))(v50, 1, v45) != 1)
  {
    return (*(v54 + 32))(a3, v50, v45);
  }

  v63 = a1;
  v55 = *(v47 + 8);
  v55(v50, v46);
  v56 = *v3;
  v57 = *(v3 + 8);
  v58 = sub_18E72B9B8();
  sub_18E718CC0(v58, v59, *(v3 + 16), *(v3 + 24), *(v3 + 32), *(v3 + 40), *(v3 + 48), a3, v56, v57, *(v3 + 56), 1, *(v3 + 64), *(v3 + 72), v6, v7);
  v60 = *(v63 + 60);
  v55((v3 + v60), v46);
  (*(v54 + 16))(v3 + v60, a3, v45);
  return (*(v54 + 56))(v3 + v60, 0, 1, v45);
}

uint64_t LongPressComponent.upstream.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a2 + 60);
  v7 = *(a2 + 24);
  v8 = type metadata accessor for EventSource(255, *(a2 + 16), *(v7 + 8), a4);
  WitnessTable = swift_getWitnessTable();
  v11 = type metadata accessor for DynamicCombinerComponent(255, v8, WitnessTable, v10);
  v12 = swift_getWitnessTable();
  v14 = type metadata accessor for TimeoutComponent(255, v11, v12, v13);
  v15 = swift_getWitnessTable();
  v16 = sub_18E72B278();
  type metadata accessor for ExpirationRecord(255, v16, v17, v18);
  v19 = swift_getWitnessTable();
  v20 = type metadata accessor for ExpirationComponent(255, v14, v15, v19);
  v21 = swift_getWitnessTable();
  v23 = type metadata accessor for DurationGate(255, v20, v21, v22);
  v24 = swift_getWitnessTable();
  v25 = type metadata accessor for ExpirationComponent(255, v23, v24, v19);
  v26 = swift_getWitnessTable();
  v27 = swift_getWitnessTable();
  v28 = *(v7 + 16);
  v49 = v25;
  v50 = v26;
  v51 = v27;
  v52 = v28;
  v29 = type metadata accessor for SeparationDistanceGate(255, &v49);
  type metadata accessor for CGPoint(255);
  v31 = v30;
  v32 = swift_getWitnessTable();
  v33 = type metadata accessor for MapComponent(255, v29, v31, v32);
  v34 = swift_getWitnessTable();
  v35 = type metadata accessor for ValueTracker(255, v33, v31, v34);
  v36 = swift_getWitnessTable();
  v49 = v35;
  v50 = v31;
  v51 = v36;
  v52 = &protocol witness table for CGPoint;
  v37 = type metadata accessor for MovementGate(255, &v49);
  v38 = swift_getWitnessTable();
  v40 = type metadata accessor for RepeatComponent(255, v37, v38, v39);
  v41 = swift_getWitnessTable();
  v42 = sub_18E6B04D4();
  v43 = type metadata accessor for ExpirationComponent(255, v40, v41, v42);
  v44 = swift_getWitnessTable();
  v45 = type metadata accessor for MapComponent(255, v43, v31, v44);
  v46 = sub_18E72B438();
  (*(*(v46 - 8) + 8))(v4 + v6, v46);
  v47 = *(v45 - 8);
  (*(v47 + 32))(v4 + v6, a1, v45);
  return (*(v47 + 56))(v4 + v6, 0, 1, v45);
}

void (*LongPressComponent.upstream.modify(uint64_t **a1, uint64_t a2))(uint64_t **a1, char a2, uint64_t a3, uint64_t a4)
{
  if (MEMORY[0x1E69E7D08])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x70uLL);
  }

  v7 = v5;
  *a1 = v5;
  v5[8] = a2;
  v5[9] = v2;
  v8 = *(a2 + 24);
  v9 = type metadata accessor for EventSource(255, *(a2 + 16), *(v8 + 8), v6);
  WitnessTable = swift_getWitnessTable();
  v12 = type metadata accessor for DynamicCombinerComponent(255, v9, WitnessTable, v11);
  v13 = swift_getWitnessTable();
  v15 = type metadata accessor for TimeoutComponent(255, v12, v13, v14);
  v16 = swift_getWitnessTable();
  v17 = sub_18E72B278();
  type metadata accessor for ExpirationRecord(255, v17, v18, v19);
  v20 = swift_getWitnessTable();
  v21 = type metadata accessor for ExpirationComponent(255, v15, v16, v20);
  v22 = swift_getWitnessTable();
  v24 = type metadata accessor for DurationGate(255, v21, v22, v23);
  v25 = swift_getWitnessTable();
  v26 = type metadata accessor for ExpirationComponent(255, v24, v25, v20);
  v27 = swift_getWitnessTable();
  v28 = swift_getWitnessTable();
  v29 = *(v8 + 16);
  *v7 = v26;
  v7[1] = v27;
  v7[2] = v28;
  v7[3] = v29;
  v30 = type metadata accessor for SeparationDistanceGate(255, v7);
  type metadata accessor for CGPoint(255);
  v32 = v31;
  v33 = swift_getWitnessTable();
  v34 = type metadata accessor for MapComponent(255, v30, v32, v33);
  v35 = swift_getWitnessTable();
  v36 = type metadata accessor for ValueTracker(255, v34, v32, v35);
  v37 = swift_getWitnessTable();
  v7[4] = v36;
  v7[5] = v32;
  v7[6] = v37;
  v7[7] = &protocol witness table for CGPoint;
  v38 = type metadata accessor for MovementGate(255, (v7 + 4));
  v39 = swift_getWitnessTable();
  v41 = type metadata accessor for RepeatComponent(255, v38, v39, v40);
  v42 = swift_getWitnessTable();
  v43 = sub_18E6B04D4();
  v44 = type metadata accessor for ExpirationComponent(255, v41, v42, v43);
  v45 = swift_getWitnessTable();
  v46 = type metadata accessor for MapComponent(0, v44, v32, v45);
  v7[10] = v46;
  v47 = *(v46 - 8);
  v7[11] = v47;
  v48 = *(v47 + 64);
  if (MEMORY[0x1E69E7D08])
  {
    v7[12] = swift_coroFrameAlloc();
    v49 = swift_coroFrameAlloc();
  }

  else
  {
    v7[12] = malloc(v48);
    v49 = malloc(v48);
  }

  v7[13] = v49;
  LongPressComponent.upstream.getter(a2, v50, v49);
  return sub_18E6DE308;
}

void sub_18E6DE308(uint64_t **a1, char a2, uint64_t a3, uint64_t a4)
{
  v4 = *a1;
  v5 = (*a1)[12];
  v6 = (*a1)[13];
  if (a2)
  {
    v7 = v4[10];
    v8 = v4[11];
    v9 = v4[8];
    (*(v8 + 16))((*a1)[12], v6, v7, a4);
    LongPressComponent.upstream.setter(v5, v9, v10, v11);
    (*(v8 + 8))(v6, v7);
  }

  else
  {
    LongPressComponent.upstream.setter((*a1)[13], v4[8], a3, a4);
  }

  free(v6);
  free(v5);

  free(v4);
}

Gestures::GestureTraitCollection_optional __swiftcall LongPressComponent.traits()()
{
  v2 = v0;
  v3 = v1[8];
  v4 = *v1;
  if (qword_1EAC8D918 != -1)
  {
    swift_once();
  }

  v5 = qword_1EAC8E758;
  v6 = MEMORY[0x1E69E7CC8];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_18E6B1E30(v3, 1, v5, isUniquelyReferenced_nonNull_native);
  if (qword_1EAC8D928 != -1)
  {
    swift_once();
  }

  v8 = qword_1EAC8E768;
  v9 = sub_18E72B938();
  sub_18E72B938();
  *&v11 = v10 / 1.0e18 + v9;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  sub_18E6B1E30(v11, 2, v8, v12);
  if (qword_1EAC8D930 != -1)
  {
    swift_once();
  }

  v13 = qword_1EAC8E770;
  v14 = swift_isUniquelyReferenced_nonNull_native();
  sub_18E6B1E30(v4, 2, v13, v14);
  if (qword_1EAC8D948 != -1)
  {
    swift_once();
  }

  v15 = qword_1EAC8EB60;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EAC8E0D8, &qword_18E72E770);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_18E72D720;
  *(inited + 32) = v15;
  *(inited + 40) = v6;
  result.value = GestureTraitCollection.init(traits:)(inited);
  *v2 = v6;
  return result;
}

uint64_t static GestureTrait.longPress(pointCount:minimumDuration:maximumMovement:)@<X0>(uint64_t result@<X0>, char a2@<W1>, char a5@<W4>, uint64_t a6@<X5>, char a7@<W6>, void *a8@<X8>)
{
  v12 = MEMORY[0x1E69E7CC8];
  if (a2)
  {
    if (a5)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v13 = result;
    if (qword_1EAC8D918 != -1)
    {
      swift_once();
    }

    v14 = qword_1EAC8E758;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    result = sub_18E6B1E30(v13, 1, v14, isUniquelyReferenced_nonNull_native);
    if (a5)
    {
LABEL_3:
      if (a7)
      {
        goto LABEL_14;
      }

      goto LABEL_11;
    }
  }

  if (qword_1EAC8D928 != -1)
  {
    swift_once();
  }

  v16 = qword_1EAC8E768;
  v17 = sub_18E72B938();
  sub_18E72B938();
  *&v19 = v18 / 1.0e18 + v17;
  v20 = swift_isUniquelyReferenced_nonNull_native();
  result = sub_18E6B1E30(v19, 2, v16, v20);
  if ((a7 & 1) == 0)
  {
LABEL_11:
    if (qword_1EAC8D930 != -1)
    {
      swift_once();
    }

    v21 = qword_1EAC8E770;
    v22 = swift_isUniquelyReferenced_nonNull_native();
    result = sub_18E6B1E30(a6, 2, v21, v22);
  }

LABEL_14:
  if (qword_1EAC8D948 != -1)
  {
    result = swift_once();
  }

  *a8 = qword_1EAC8EB60;
  a8[1] = v12;
  return result;
}

void (*sub_18E6DE80C(char **a1, uint64_t a2))(uint64_t *a1, uint64_t a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x90uLL);
  }

  v6 = v4;
  *a1 = v4;
  v7 = *(a2 + 24);
  v8 = type metadata accessor for EventSource(255, *(a2 + 16), *(v7 + 8), v5);
  WitnessTable = swift_getWitnessTable();
  v11 = type metadata accessor for DynamicCombinerComponent(255, v8, WitnessTable, v10);
  v12 = swift_getWitnessTable();
  v14 = type metadata accessor for TimeoutComponent(255, v11, v12, v13);
  v15 = swift_getWitnessTable();
  v16 = sub_18E72B278();
  type metadata accessor for ExpirationRecord(255, v16, v17, v18);
  v19 = swift_getWitnessTable();
  v20 = type metadata accessor for ExpirationComponent(255, v14, v15, v19);
  v21 = swift_getWitnessTable();
  v23 = type metadata accessor for DurationGate(255, v20, v21, v22);
  v24 = swift_getWitnessTable();
  v25 = type metadata accessor for ExpirationComponent(255, v23, v24, v19);
  v26 = swift_getWitnessTable();
  v27 = swift_getWitnessTable();
  v28 = *(v7 + 16);
  *v6 = v25;
  *(v6 + 8) = v26;
  *(v6 + 16) = v27;
  *(v6 + 24) = v28;
  v29 = type metadata accessor for SeparationDistanceGate(255, v6);
  type metadata accessor for CGPoint(255);
  v31 = v30;
  v32 = swift_getWitnessTable();
  v33 = type metadata accessor for MapComponent(255, v29, v31, v32);
  v34 = swift_getWitnessTable();
  v35 = type metadata accessor for ValueTracker(255, v33, v31, v34);
  v36 = swift_getWitnessTable();
  *(v6 + 32) = v35;
  *(v6 + 40) = v31;
  *(v6 + 48) = v36;
  *(v6 + 56) = &protocol witness table for CGPoint;
  v37 = type metadata accessor for MovementGate(255, v6 + 32);
  v38 = swift_getWitnessTable();
  v40 = type metadata accessor for RepeatComponent(255, v37, v38, v39);
  v41 = swift_getWitnessTable();
  v42 = sub_18E6B04D4();
  v43 = type metadata accessor for ExpirationComponent(255, v40, v41, v42);
  v44 = swift_getWitnessTable();
  v45 = type metadata accessor for MapComponent(0, v43, v31, v44);
  *(v6 + 96) = v45;
  v46 = *(v45 - 8);
  if (MEMORY[0x1E69E7D08])
  {
    v47 = swift_coroFrameAlloc();
  }

  else
  {
    v47 = malloc(*(v46 + 64));
  }

  v48 = v47;
  *(v6 + 104) = v47;
  *(v6 + 112) = LongPressComponent.upstream.modify((v6 + 64), a2);
  *(v6 + 120) = v49;
  v50 = *(v46 + 32);
  *(v6 + 128) = v50;
  *(v6 + 136) = (v46 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v50(v48);
  return sub_18E6B1A6C;
}

Gestures::GestureTraitID sub_18E6DEC1C()
{
  v0._countAndFlagsBits = 0x73657250676E6F6CLL;
  v0._object = 0xE900000000000073;
  return GestureTraitID.init(_:)(v0);
}

uint64_t static GestureTraitID.longPress.getter@<X0>(void *a1@<X8>)
{
  if (qword_1EAC8D948 != -1)
  {
    v1 = a1;
    result = swift_once();
    a1 = v1;
  }

  *a1 = qword_1EAC8EB60;
  return result;
}

uint64_t sub_18E6DECE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v48 = MEMORY[0x1E69E5D08] + 64;
  v49 = MEMORY[0x1E69E5D08] + 64;
  v50 = &unk_18E72F128;
  v51 = &unk_18E72F128;
  v52 = &unk_18E72F128;
  v53 = MEMORY[0x1E69E5D08] + 64;
  v54 = &unk_18E72F140;
  v4 = *(a1 + 24);
  v5 = type metadata accessor for EventSource(255, *(a1 + 16), *(v4 + 8), a4);
  WitnessTable = swift_getWitnessTable();
  v8 = type metadata accessor for DynamicCombinerComponent(255, v5, WitnessTable, v7);
  v9 = swift_getWitnessTable();
  v11 = type metadata accessor for TimeoutComponent(255, v8, v9, v10);
  v12 = swift_getWitnessTable();
  v13 = sub_18E72B278();
  type metadata accessor for ExpirationRecord(255, v13, v14, v15);
  v16 = swift_getWitnessTable();
  v17 = type metadata accessor for ExpirationComponent(255, v11, v12, v16);
  v18 = swift_getWitnessTable();
  v20 = type metadata accessor for DurationGate(255, v17, v18, v19);
  v21 = swift_getWitnessTable();
  v22 = type metadata accessor for ExpirationComponent(255, v20, v21, v16);
  v23 = swift_getWitnessTable();
  v24 = swift_getWitnessTable();
  v25 = *(v4 + 16);
  v44 = v22;
  v45 = v23;
  v46 = v24;
  v47 = v25;
  v26 = type metadata accessor for SeparationDistanceGate(255, &v44);
  type metadata accessor for CGPoint(255);
  v28 = v27;
  v29 = swift_getWitnessTable();
  v30 = type metadata accessor for MapComponent(255, v26, v28, v29);
  v31 = swift_getWitnessTable();
  v32 = type metadata accessor for ValueTracker(255, v30, v28, v31);
  v33 = swift_getWitnessTable();
  v44 = v32;
  v45 = v28;
  v46 = v33;
  v47 = &protocol witness table for CGPoint;
  v34 = type metadata accessor for MovementGate(255, &v44);
  v35 = swift_getWitnessTable();
  v37 = type metadata accessor for RepeatComponent(255, v34, v35, v36);
  v38 = swift_getWitnessTable();
  v39 = sub_18E6B04D4();
  v40 = type metadata accessor for ExpirationComponent(255, v37, v38, v39);
  v41 = swift_getWitnessTable();
  type metadata accessor for MapComponent(255, v40, v28, v41);
  result = sub_18E72B438();
  if (v43 <= 0x3F)
  {
    v55 = *(result - 8) + 64;
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t *sub_18E6DF094(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 80);
  v6 = v5 & 0xF8 | 7;
  v7 = *(v4 + 64);
  if (((v7 + 7) & 0xFFFFFFFFFFFFFFF8) + 32 <= 0x28)
  {
    v8 = 40;
  }

  else
  {
    v8 = ((v7 + 7) & 0xFFFFFFFFFFFFFFF8) + 32;
  }

  if ((((((v5 & 0xF8) + 16) & ~v6) + v8) | 2) <= 8)
  {
    v9 = 8;
  }

  else
  {
    v9 = ((((v5 & 0xF8) + 16) & ~v6) + v8) | 2;
  }

  if ((v5 & 0x1000F8) != 0 || (v10 = ((((v9 & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8, v11 = (((((v10 + 18) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8, v12 = (v11 + 23) & 0xFFFFFFFFFFFFFFF8, v13 = (((v12 + 63) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8, v14 = (v13 + 23) & 0xFFFFFFFFFFFFFFF8, v15 = (v14 + 63) & 0xFFFFFFFFFFFFFFF8, v16 = (v15 + 15) & 0xFFFFFFFFFFFFFFF8, v17 = (((((v16 + 71) & 0xFFFFFFFFFFFFFFF8) + 95) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8, v18 = (v17 + 23) & 0xFFFFFFFFFFFFFFF8, ((-74 - v6) | v6) - (((v18 + 63) & 0xFFFFFFFFFFFFFFF8) + 16) < 0xFFFFFFFFFFFFFFE7))
  {
    v40 = *a2;
    *a1 = *a2;
    a1 = (v40 + ((v6 + 16) & ~v6));
LABEL_77:

    return a1;
  }

  v20 = *a2;
  v19 = a2 + 15;
  *a1 = v20;
  v21 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v21 = *(v19 & 0xFFFFFFFFFFFFFFF8);
  v22 = ((v21 + 15) & 0xFFFFFFFFFFFFFFF8);
  v23 = (((v19 & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8);
  *v22 = *v23;
  v24 = ((v22 + 23) & 0xFFFFFFFFFFFFFFF8);
  v25 = ((v23 + 23) & 0xFFFFFFFFFFFFFFF8);
  *v24 = *v25;
  v26 = ((v24 + 23) & 0xFFFFFFFFFFFFFFF8);
  v27 = ((v25 + 23) & 0xFFFFFFFFFFFFFFF8);
  *v26 = *v27;
  v28 = (v26 + 23) & 0xFFFFFFFFFFFFFFF8;
  v29 = (v27 + 23) & 0xFFFFFFFFFFFFFFF8;
  *v28 = *v29;
  *(v28 + 8) = *(v29 + 8);
  v30 = v26 + 39;
  v31 = (v26 + 39) & 0xFFFFFFFFFFFFFFF8;
  v32 = v27 + 39;
  v33 = ((v27 + 39) & 0xFFFFFFFFFFFFFFF8);
  v34 = v9 + 8;
  v35 = ((v33 + v9 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (*v35 >= 0xFFFFFFFFuLL)
  {
    v36 = *(v33 + v9);
    v37 = v36 - 3;
    if (v36 < 3)
    {
      goto LABEL_28;
    }

    if (v9 <= 3)
    {
      v38 = v9;
    }

    else
    {
      v38 = 4;
    }

    if (v38 > 1)
    {
      if (v38 == 2)
      {
        v39 = *v33;
        if (v9 >= 4)
        {
          goto LABEL_25;
        }
      }

      else
      {
        if (v38 == 3)
        {
          v39 = *v33 | (*(v33 + 2) << 16);
          if (v9 < 4)
          {
            goto LABEL_27;
          }

LABEL_25:
          v36 = v39 + 3;
          goto LABEL_28;
        }

        v39 = *v33;
        if (v9 >= 4)
        {
          goto LABEL_25;
        }
      }

LABEL_27:
      v36 = (v39 | (v37 << (8 * v9))) + 3;
LABEL_28:
      v158 = (((((v16 + 71) & 0xFFFFFFFFFFFFFFF8) + 95) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
      v159 = (v17 + 23) & 0xFFFFFFFFFFFFFFF8;
      v156 = (v15 + 15) & 0xFFFFFFFFFFFFFFF8;
      v157 = (v16 + 71) & 0xFFFFFFFFFFFFFFF8;
      v154 = (v13 + 23) & 0xFFFFFFFFFFFFFFF8;
      v155 = (v14 + 63) & 0xFFFFFFFFFFFFFFF8;
      v152 = (v11 + 23) & 0xFFFFFFFFFFFFFFF8;
      v153 = (((v12 + 63) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
      if (v36 == 2)
      {
        *v31 = *v33;
        *(v31 + v9) = 2;

        v34 = v9 + 8;
        v11 = (((((v10 + 18) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
LABEL_67:
        v83 = ((v34 + v31) & 0xFFFFFFFFFFFFFFF8);
        v84 = v35[1];
        *v83 = *v35;
        v83[1] = v84;
        v85 = ((v35 + 23) & 0xFFFFFFFFFFFFFFF8);
        v86 = ((v83 + 23) & 0xFFFFFFFFFFFFFFF8);
        *v86 = *v85;
        v87 = (v86 + 15) & 0xFFFFFFFFFFFFFFF8;
        v88 = (v85 + 15) & 0xFFFFFFFFFFFFFFF8;
        *v87 = *v88;
        *(v87 + 8) = *(v88 + 8);
        *(v87 + 9) = *(v88 + 9);
        v89 = v10 + 10 + v31;
        v90 = v33 + v10 + 10;
        *v89 = *v90;
        v89 &= 0xFFFFFFFFFFFFFFF8;
        v90 &= 0xFFFFFFFFFFFFFFF8;
        *(v89 + 8) = *(v90 + 8);
        v91 = ((v89 + 31) & 0xFFFFFFFFFFFFFFF8);
        v92 = ((v90 + 31) & 0xFFFFFFFFFFFFFFF8);
        *v91 = *v92;
        v91[1] = v92[1];
        v93 = ((v91 + 23) & 0xFFFFFFFFFFFFFFF8);
        v94 = ((v92 + 23) & 0xFFFFFFFFFFFFFFF8);
        v95 = v94[1];
        *v93 = *v94;
        v93[1] = v95;
        v96 = &v30[v11 + 16] & 0xFFFFFFFFFFFFFFF8;
        v97 = &v32[v11 + 16] & 0xFFFFFFFFFFFFFFF8;
        v98 = *(v97 + 48);

        if (v98 == 1)
        {
          v99 = *v97;
          v100 = *(v97 + 16);
          v101 = *(v97 + 32);
          *(v96 + 48) = *(v97 + 48);
          *(v96 + 16) = v100;
          *(v96 + 32) = v101;
          *v96 = v99;
        }

        else
        {
          *v96 = *v97;
          *(v96 + 8) = *(v97 + 8);
          *(v96 + 24) = *(v97 + 24);
          *(v96 + 40) = *(v97 + 40);
          *(v96 + 48) = *(v97 + 48);
        }

        v102 = (&v30[v152 + 56] & 0xFFFFFFFFFFFFFFF8);
        v103 = (&v32[v152 + 56] & 0xFFFFFFFFFFFFFFF8);
        *v102 = *v103;
        *((v102 + 23) & 0xFFFFFFFFFFFFFFF8) = *((v103 + 23) & 0xFFFFFFFFFFFFFFF8);
        v104 = &v30[v153 + 16] & 0xFFFFFFFFFFFFFFF8;
        v105 = &v32[v153 + 16] & 0xFFFFFFFFFFFFFFF8;
        if (*(v105 + 48) == 1)
        {
          v106 = *v105;
          v107 = *(v105 + 16);
          v108 = *(v105 + 32);
          *(v104 + 48) = *(v105 + 48);
          *(v104 + 16) = v107;
          *(v104 + 32) = v108;
          *v104 = v106;
        }

        else
        {
          *v104 = *v105;
          *(v104 + 8) = *(v105 + 8);
          *(v104 + 24) = *(v105 + 24);
          *(v104 + 40) = *(v105 + 40);
          *(v104 + 48) = *(v105 + 48);
        }

        *(&v30[v154 + 56] & 0xFFFFFFFFFFFFFFF8) = *(&v32[v154 + 56] & 0xFFFFFFFFFFFFFFF8);
        v109 = (&v30[v155 + 8] & 0xFFFFFFFFFFFFFFF8);
        v110 = (&v32[v155 + 8] & 0xFFFFFFFFFFFFFFF8);
        v111 = v110[1];
        *v109 = *v110;
        v109[1] = v111;
        v112 = &v30[v156 + 16] & 0xFFFFFFFFFFFFFFF8;
        v113 = &v32[v156 + 16] & 0xFFFFFFFFFFFFFFF8;
        v114 = *v113;
        v115 = *(v113 + 16);
        *(v112 + 25) = *(v113 + 25);
        *v112 = v114;
        *(v112 + 16) = v115;
        v116 = *(v113 + 56);
        *(v112 + 48) = *(v113 + 48);
        *(v112 + 56) = v116;
        v117 = &v30[v157 + 16] & 0xFFFFFFFFFFFFFFF8;
        v118 = &v32[v157 + 16] & 0xFFFFFFFFFFFFFFF8;
        *v117 = *v118;
        *(v117 + 8) = *(v118 + 8);
        v119 = ((v157 + 23) & 0xFFFFFFFFFFFFFFF8) + 9;
        v120 = v119 + v31;
        v121 = v33 + v119;
        v122 = *(v121 + 7);
        v123 = *(v121 + 23);
        v124 = *(v121 + 39);
        *(v120 + 55) = v121[55];
        *(v120 + 39) = v124;
        *(v120 + 23) = v123;
        *(v120 + 7) = v122;
        *(v120 + 63) = *(v121 + 63);
        *((v120 + 78) & 0xFFFFFFFFFFFFFFF8) = *((v121 + 78) & 0xFFFFFFFFFFFFFFF8);
        v125 = &v30[v158 + 16] & 0xFFFFFFFFFFFFFFF8;
        v126 = &v32[v158 + 16] & 0xFFFFFFFFFFFFFFF8;
        v127 = *(v126 + 48);

        if (v127 == 1)
        {
          v128 = *v126;
          v129 = *(v126 + 16);
          v130 = *(v126 + 32);
          *(v125 + 48) = *(v126 + 48);
          *(v125 + 16) = v129;
          *(v125 + 32) = v130;
          *v125 = v128;
        }

        else
        {
          *v125 = *v126;
          *(v125 + 8) = *(v126 + 8);
          *(v125 + 24) = *(v126 + 24);
          *(v125 + 40) = *(v126 + 40);
          *(v125 + 48) = *(v126 + 48);
        }

        v131 = (&v32[v159 + 56] & 0xFFFFFFFFFFFFFFF8);
        v133 = *v131;
        v132 = v131[1];
        v134 = (&v30[v159 + 56] & 0xFFFFFFFFFFFFFFF8);
        *v134 = v133;
        v134[1] = v132;
        goto LABEL_77;
      }

      v41 = v8 | 1;
      if (v36 == 1)
      {
        v42 = *v33;
        *(v31 + 8) = *(v33 + 8);
        *v31 = v42;
        v43 = v26 + 55;
        v44 = ((v26 + 55) & 0xFFFFFFFFFFFFFFF8);
        v45 = v27 + 55;
        v46 = (v45 & 0xFFFFFFFFFFFFFFF8);
        v47 = *((v45 & 0xFFFFFFFFFFFFFFF8) + v8);
        if (v47 > 2)
        {
          v58 = v45 & 0xFFFFFFFFFFFFFFF8;
          v59 = v11;
          v60 = v41;
          v144 = v44;
          memcpy(v44, v46, v41);
          v46 = v58;
          v44 = v144;
          v41 = v60;
          v11 = v59;
          v34 = v9 + 8;
          v10 = ((((v9 & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
        }

        else
        {
          if (v47 == 2)
          {
            v148 = v11;
            v140 = v45 & 0xFFFFFFFFFFFFFFF8;
            v142 = v44;
            v138 = v45;
            (*(v4 + 16))(v44);
            v65 = &v43[v7] & 0xFFFFFFFFFFFFFFF8;
            v66 = (v138 + v7) & 0xFFFFFFFFFFFFFFF8;
            if (*v66 < 0xFFFFFFFFuLL)
            {
              v77 = *(v66 + 16);
              *v65 = *v66;
              *(v65 + 16) = v77;
            }

            else
            {
              *v65 = *v66;
              *(v65 + 8) = *(v66 + 8);
              *(v65 + 16) = *(v66 + 16);
              *(v65 + 24) = *(v66 + 24);
            }

            v11 = v148;
            v34 = v9 + 8;
            v10 = ((((v9 & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
            v41 = v8 | 1;
            v76 = 2;
          }

          else
          {
            if (v47 != 1)
            {
              *v44 = *v46;
              v67 = v46[1];
              if (v67)
              {
                v44[1] = v67;
                v44[2] = v46[2];
                v44[3] = v46[3];
                v44[4] = v46[4];
                v149 = v11;
                v68 = v44;
                v69 = v45 & 0xFFFFFFFFFFFFFFF8;

                v46 = v69;
                v44 = v68;
                v41 = v8 | 1;
                v11 = v149;
                v34 = v9 + 8;
              }

              else
              {
                v81 = *(v46 + 3);
                *(v44 + 1) = *(v46 + 1);
                *(v44 + 3) = v81;
              }

              v10 = ((((v9 & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
              *(v44 + v8) = 0;
              goto LABEL_63;
            }

            v145 = v11;
            v140 = v45 & 0xFFFFFFFFFFFFFFF8;
            v142 = v44;
            v136 = v45;
            (*(v4 + 16))(v44);
            v48 = &v43[v7] & 0xFFFFFFFFFFFFFFF8;
            v49 = (v136 + v7) & 0xFFFFFFFFFFFFFFF8;
            if (*v49 < 0xFFFFFFFFuLL)
            {
              v75 = *(v49 + 16);
              *v48 = *v49;
              *(v48 + 16) = v75;
            }

            else
            {
              *v48 = *v49;
              *(v48 + 8) = *(v49 + 8);
              *(v48 + 16) = *(v49 + 16);
              *(v48 + 24) = *(v49 + 24);
            }

            v11 = v145;
            v34 = v9 + 8;
            v10 = ((((v9 & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
            v41 = v8 | 1;
            v76 = 1;
          }

          v46 = v140;
          v44 = v142;
          *(v142 + v8) = v76;
        }

LABEL_63:
        *(v44 + v41) = *(v46 + v41);
        *(v31 + v9) = 1;
        goto LABEL_67;
      }

      v50 = *v33;
      *(v31 + 8) = *(v33 + 8);
      *v31 = v50;
      v51 = v26 + 55;
      v52 = ((v26 + 55) & 0xFFFFFFFFFFFFFFF8);
      v53 = v27 + 55;
      v54 = (v53 & 0xFFFFFFFFFFFFFFF8);
      v55 = *((v53 & 0xFFFFFFFFFFFFFFF8) + v8);
      if (v55 > 2)
      {
        v61 = v53 & 0xFFFFFFFFFFFFFFF8;
        v62 = v11;
        v63 = v41;
        v147 = v31;
        v64 = v52;
        memcpy(v52, v54, v41);
        v54 = v61;
        v52 = v64;
        v31 = v147;
        v34 = v9 + 8;
        v41 = v63;
        v11 = v62;
        v10 = ((((v9 & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
      }

      else
      {
        if (v55 == 2)
        {
          v150 = v11;
          v141 = v53 & 0xFFFFFFFFFFFFFFF8;
          v143 = v52;
          v139 = v53;
          (*(v4 + 16))(v52);
          v70 = &v51[v7] & 0xFFFFFFFFFFFFFFF8;
          v71 = (v139 + v7) & 0xFFFFFFFFFFFFFFF8;
          if (*v71 < 0xFFFFFFFFuLL)
          {
            v80 = *(v71 + 16);
            *v70 = *v71;
            *(v70 + 16) = v80;
          }

          else
          {
            *v70 = *v71;
            *(v70 + 8) = *(v71 + 8);
            *(v70 + 16) = *(v71 + 16);
            *(v70 + 24) = *(v71 + 24);
          }

          v11 = v150;
          v34 = v9 + 8;
          v10 = ((((v9 & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
          v41 = v8 | 1;
          v79 = 2;
        }

        else
        {
          if (v55 != 1)
          {
            *v52 = *v54;
            v72 = v54[1];
            if (v72)
            {
              v52[1] = v72;
              v52[2] = v54[2];
              v52[3] = v54[3];
              v52[4] = v54[4];
              v151 = v11;
              v73 = v52;
              v74 = v53 & 0xFFFFFFFFFFFFFFF8;

              v54 = v74;
              v52 = v73;
              v41 = v8 | 1;
              v11 = v151;
              v34 = v9 + 8;
            }

            else
            {
              v82 = *(v54 + 3);
              *(v52 + 1) = *(v54 + 1);
              *(v52 + 3) = v82;
            }

            v10 = ((((v9 & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
            *(v52 + v8) = 0;
            goto LABEL_66;
          }

          v146 = v11;
          v141 = v53 & 0xFFFFFFFFFFFFFFF8;
          v143 = v52;
          v137 = v53;
          (*(v4 + 16))(v52);
          v56 = &v51[v7] & 0xFFFFFFFFFFFFFFF8;
          v57 = (v137 + v7) & 0xFFFFFFFFFFFFFFF8;
          if (*v57 < 0xFFFFFFFFuLL)
          {
            v78 = *(v57 + 16);
            *v56 = *v57;
            *(v56 + 16) = v78;
          }

          else
          {
            *v56 = *v57;
            *(v56 + 8) = *(v57 + 8);
            *(v56 + 16) = *(v57 + 16);
            *(v56 + 24) = *(v57 + 24);
          }

          v11 = v146;
          v34 = v9 + 8;
          v10 = ((((v9 & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
          v41 = v8 | 1;
          v79 = 1;
        }

        v54 = v141;
        v52 = v143;
        *(v143 + v8) = v79;
      }

LABEL_66:
      *(v52 + v41) = *(v54 + v41);
      *(v31 + v9) = 0;
      goto LABEL_67;
    }

    if (!v38)
    {
      goto LABEL_28;
    }

    v39 = *v33;
    if (v9 < 4)
    {
      goto LABEL_27;
    }

    goto LABEL_25;
  }

  memcpy(((v26 + 39) & 0xFFFFFFFFFFFFFFF8), ((v27 + 39) & 0xFFFFFFFFFFFFFFF8), ((v18 + 63) & 0xFFFFFFFFFFFFFFF8) + 16);
  return a1;
}

uint64_t sub_18E6DFB58(uint64_t result, uint64_t a2)
{
  v2 = *(*(a2 + 16) - 8);
  v3 = *(v2 + 80) & 0xF8;
  v4 = v3 + 16;
  v5 = ~v3 & 0xFFFFFFFFFFFFFFF8;
  v6 = ((v3 + 16 + ((((((((((result + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)) & v5);
  v7 = (v3 + 16) & v5;
  v8 = *(v2 + 64) + 7;
  v9 = (v8 & 0xFFFFFFFFFFFFFFF8) + 32;
  if (v9 <= 0x28)
  {
    v9 = 40;
  }

  if (((v7 + v9) | 2) <= 8)
  {
    v10 = 8;
  }

  else
  {
    v10 = (v7 + v9) | 2;
  }

  if (*(&v6[v10 + 8] & 0xFFFFFFFFFFFFFFF8) >= 0xFFFFFFFFuLL)
  {
    v11 = v6[v10];
    v12 = v11 - 3;
    if (v11 < 3)
    {
      goto LABEL_22;
    }

    if (v10 <= 3)
    {
      v13 = v10;
    }

    else
    {
      v13 = 4;
    }

    if (v13 <= 1)
    {
      if (!v13)
      {
        goto LABEL_22;
      }

      v14 = *v6;
    }

    else if (v13 == 2)
    {
      v14 = *v6;
    }

    else if (v13 == 3)
    {
      v14 = *v6 | (v6[2] << 16);
    }

    else
    {
      v14 = *v6;
    }

    v15 = (v14 | (v12 << (8 * v10))) + 3;
    v11 = v14 + 3;
    if (v10 < 4)
    {
      v11 = v15;
    }

LABEL_22:
    if (v11 == 2)
    {
LABEL_28:

      goto LABEL_29;
    }

    v16 = &v6[v4] & v5;
    v17 = *(v16 + v9);
    if (v17 <= 2)
    {
      if (v17 != 2 && v17 != 1)
      {
        if (!*((&v6[v4] & v5) + 8))
        {
          goto LABEL_29;
        }

        goto LABEL_27;
      }

      (*(v2 + 8))(&v6[v4] & v5);
      if (*((v8 + v16) & 0xFFFFFFFFFFFFFFF8) >= 0xFFFFFFFFuLL)
      {
LABEL_27:

        goto LABEL_28;
      }
    }

LABEL_29:

    v18 = ((((((((((v10 & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 18) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
    v19 = v6 + 16;
    if (*&v6[v18 + 64] != 1)
    {
    }

    v20 = (((((v18 + 23) & 0xFFFFFFFFFFFFFFF8) + 63) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
    if (*&v19[v20 + 48] != 1)
    {
    }

    if (*&v19[((((((((((((v20 + 23) & 0xFFFFFFFFFFFFFFF8) + 63) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 71) & 0xFFFFFFFFFFFFFFF8) + 95) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 48] != 1)
    {
    }
  }

  return result;
}

void *sub_18E6DFE98(void *a1, uint64_t *a2, uint64_t a3)
{
  v5 = *a2;
  v4 = a2 + 15;
  *a1 = v5;
  v6 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v6 = *(v4 & 0xFFFFFFFFFFFFFFF8);
  v7 = ((v6 + 15) & 0xFFFFFFFFFFFFFFF8);
  v8 = (((v4 & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8);
  *v7 = *v8;
  v9 = ((v7 + 23) & 0xFFFFFFFFFFFFFFF8);
  v10 = ((v8 + 23) & 0xFFFFFFFFFFFFFFF8);
  *v9 = *v10;
  v11 = ((v9 + 23) & 0xFFFFFFFFFFFFFFF8);
  v12 = ((v10 + 23) & 0xFFFFFFFFFFFFFFF8);
  *v11 = *v12;
  v13 = (v11 + 23) & 0xFFFFFFFFFFFFFFF8;
  v14 = (v12 + 23) & 0xFFFFFFFFFFFFFFF8;
  *v13 = *v14;
  *(v13 + 8) = *(v14 + 8);
  v15 = *(*(a3 + 16) - 8);
  v16 = *(v15 + 80) & 0xF8;
  v17 = v16 + 16;
  v18 = v16 + 16 + v13;
  v19 = ~v16 & 0xFFFFFFFFFFFFFFF8;
  v20 = (v18 & v19);
  v21 = ((v16 + 16 + v14) & v19);
  v22 = *(v15 + 64) + 7;
  if ((v22 & 0xFFFFFFFFFFFFFFF8) + 32 <= 0x28)
  {
    v23 = 40;
  }

  else
  {
    v23 = (v22 & 0xFFFFFFFFFFFFFFF8) + 32;
  }

  if (((((v16 + 16) & v19) + v23) | 2) <= 8)
  {
    v24 = 8;
  }

  else
  {
    v24 = (((v16 + 16) & v19) + v23) | 2;
  }

  v25 = (&v21[v24 + 8] & 0xFFFFFFFFFFFFFFF8);
  if (*v25 < 0xFFFFFFFFuLL)
  {
    memcpy((v18 & v19), v21, (((((((((((((((((((((((((((((((((v24 & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 18) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 63) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 63) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 71) & 0xFFFFFFFFFFFFFFF8) + 95) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 63) & 0xFFFFFFFFFFFFFFF8) + 16);
    return a1;
  }

  v26 = v21[v24];
  v27 = v26 - 3;
  if (v26 >= 3)
  {
    if (v24 <= 3)
    {
      v28 = v24;
    }

    else
    {
      v28 = 4;
    }

    if (v28 <= 1)
    {
      if (!v28)
      {
        goto LABEL_23;
      }

      v29 = *v21;
      if (v24 < 4)
      {
LABEL_38:
        v43 = v29 | (v27 << (8 * v24));
        v26 = v43 + 3;
        if (v43 == -1)
        {
          goto LABEL_39;
        }

LABEL_24:
        v30 = v23 | 1;
        if (v26 == 1)
        {
          v31 = *v21;
          *((v18 & v19) + 8) = v21[8];
          *v20 = v31;
          v32 = ((v20 + v17) & v19);
          v33 = (&v21[v17] & v19);
          v34 = v33[v23];
          if (v34 > 2)
          {
            memcpy(((v20 + v17) & v19), (&v21[v17] & v19), v23 | 1);
            v30 = v23 | 1;
          }

          else if (v34 == 2)
          {
            (*(v15 + 16))((v20 + v17) & v19, &v21[v17] & v19);
            v44 = &v32[v22] & 0xFFFFFFFFFFFFFFF8;
            v45 = &v33[v22] & 0xFFFFFFFFFFFFFFF8;
            if (*v45 < 0xFFFFFFFFuLL)
            {
              v51 = *(v45 + 16);
              *v44 = *v45;
              *(v44 + 16) = v51;
            }

            else
            {
              *v44 = *v45;
              *(v44 + 8) = *(v45 + 8);
              *(v44 + 16) = *(v45 + 16);
              *(v44 + 24) = *(v45 + 24);
            }

            v30 = v23 | 1;
            v32[v23] = 2;
          }

          else if (v34 == 1)
          {
            (*(v15 + 16))((v20 + v17) & v19, &v21[v17] & v19);
            v35 = &v32[v22] & 0xFFFFFFFFFFFFFFF8;
            v36 = &v33[v22] & 0xFFFFFFFFFFFFFFF8;
            if (*v36 < 0xFFFFFFFFuLL)
            {
              v50 = *(v36 + 16);
              *v35 = *v36;
              *(v35 + 16) = v50;
            }

            else
            {
              *v35 = *v36;
              *(v35 + 8) = *(v36 + 8);
              *(v35 + 16) = *(v36 + 16);
              *(v35 + 24) = *(v36 + 24);
            }

            v30 = v23 | 1;
            v32[v23] = 1;
          }

          else
          {
            *v32 = *v33;
            v46 = *((&v21[v17] & v19) + 8);
            if (v46)
            {
              *(((v20 + v17) & v19) + 8) = v46;
              *(((v20 + v17) & v19) + 0x10) = *((&v21[v17] & v19) + 0x10);
              *(((v20 + v17) & v19) + 0x18) = *((&v21[v17] & v19) + 0x18);
              *(((v20 + v17) & v19) + 0x20) = *((&v21[v17] & v19) + 0x20);

              v30 = v23 | 1;
            }

            else
            {
              v54 = *((&v21[v17] & v19) + 0x18);
              *(((v20 + v17) & v19) + 8) = *((&v21[v17] & v19) + 8);
              *(((v20 + v17) & v19) + 0x18) = v54;
            }

            v32[v23] = 0;
          }

          v32[v30] = v33[v30];
          *(v20 + v24) = 1;
        }

        else
        {
          v37 = *v21;
          *((v18 & v19) + 8) = v21[8];
          *v20 = v37;
          v38 = ((v20 + v17) & v19);
          v39 = (&v21[v17] & v19);
          v40 = v39[v23];
          if (v40 > 2)
          {
            memcpy(((v20 + v17) & v19), (&v21[v17] & v19), v23 | 1);
            v30 = v23 | 1;
          }

          else if (v40 == 2)
          {
            (*(v15 + 16))((v20 + v17) & v19, &v21[v17] & v19);
            v47 = &v38[v22] & 0xFFFFFFFFFFFFFFF8;
            v48 = &v39[v22] & 0xFFFFFFFFFFFFFFF8;
            if (*v48 < 0xFFFFFFFFuLL)
            {
              v53 = *(v48 + 16);
              *v47 = *v48;
              *(v47 + 16) = v53;
            }

            else
            {
              *v47 = *v48;
              *(v47 + 8) = *(v48 + 8);
              *(v47 + 16) = *(v48 + 16);
              *(v47 + 24) = *(v48 + 24);
            }

            v30 = v23 | 1;
            v38[v23] = 2;
          }

          else if (v40 == 1)
          {
            (*(v15 + 16))((v20 + v17) & v19, &v21[v17] & v19);
            v41 = &v38[v22] & 0xFFFFFFFFFFFFFFF8;
            v42 = &v39[v22] & 0xFFFFFFFFFFFFFFF8;
            if (*v42 < 0xFFFFFFFFuLL)
            {
              v52 = *(v42 + 16);
              *v41 = *v42;
              *(v41 + 16) = v52;
            }

            else
            {
              *v41 = *v42;
              *(v41 + 8) = *(v42 + 8);
              *(v41 + 16) = *(v42 + 16);
              *(v41 + 24) = *(v42 + 24);
            }

            v30 = v23 | 1;
            v38[v23] = 1;
          }

          else
          {
            *v38 = *v39;
            v49 = *((&v21[v17] & v19) + 8);
            if (v49)
            {
              *(((v20 + v17) & v19) + 8) = v49;
              *(((v20 + v17) & v19) + 0x10) = *((&v21[v17] & v19) + 0x10);
              *(((v20 + v17) & v19) + 0x18) = *((&v21[v17] & v19) + 0x18);
              *(((v20 + v17) & v19) + 0x20) = *((&v21[v17] & v19) + 0x20);

              v30 = v23 | 1;
            }

            else
            {
              v55 = *((&v21[v17] & v19) + 0x18);
              *(((v20 + v17) & v19) + 8) = *((&v21[v17] & v19) + 8);
              *(((v20 + v17) & v19) + 0x18) = v55;
            }

            v38[v23] = 0;
          }

          v38[v30] = v39[v30];
          *(v20 + v24) = 0;
        }

        goto LABEL_62;
      }
    }

    else if (v28 == 2)
    {
      v29 = *v21;
      if (v24 < 4)
      {
        goto LABEL_38;
      }
    }

    else if (v28 == 3)
    {
      v29 = *v21 | (v21[2] << 16);
      if (v24 < 4)
      {
        goto LABEL_38;
      }
    }

    else
    {
      v29 = *v21;
      if (v24 < 4)
      {
        goto LABEL_38;
      }
    }

    v26 = v29 + 3;
  }

LABEL_23:
  if (v26 != 2)
  {
    goto LABEL_24;
  }

LABEL_39:
  *v20 = *v21;
  *(v20 + v24) = 2;

LABEL_62:
  v56 = ((v20 + v24 + 8) & 0xFFFFFFFFFFFFFFF8);
  v57 = v25[1];
  *v56 = *v25;
  v56[1] = v57;
  v58 = ((v56 + 23) & 0xFFFFFFFFFFFFFFF8);
  v59 = ((v25 + 23) & 0xFFFFFFFFFFFFFFF8);
  *v58 = *v59;
  v60 = (v58 + 15) & 0xFFFFFFFFFFFFFFF8;
  v61 = (v59 + 15) & 0xFFFFFFFFFFFFFFF8;
  *v60 = *v61;
  *(v60 + 8) = *(v61 + 8);
  *(v60 + 9) = *(v61 + 9);
  v62 = ((((v24 & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v63 = v20 + v62 + 10;
  v64 = &v21[v62 + 10];
  *v63 = *v64;
  v63 &= 0xFFFFFFFFFFFFFFF8;
  v64 &= 0xFFFFFFFFFFFFFFF8;
  *(v63 + 8) = *(v64 + 8);
  v65 = ((v63 + 31) & 0xFFFFFFFFFFFFFFF8);
  v66 = ((v64 + 31) & 0xFFFFFFFFFFFFFFF8);
  *v65 = *v66;
  v65[1] = v66[1];
  v67 = ((v65 + 23) & 0xFFFFFFFFFFFFFFF8);
  v68 = ((v66 + 23) & 0xFFFFFFFFFFFFFFF8);
  v69 = v68[1];
  *v67 = *v68;
  v67[1] = v69;
  v70 = (((((v62 + 18) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  v71 = v20 + v70 + 16;
  v72 = &v21[v70 + 16];
  v73 = *(v72 + 6);

  if (v73 == 1)
  {
    v74 = *v72;
    v75 = *(v72 + 1);
    v76 = *(v72 + 2);
    *(v71 + 6) = *(v72 + 6);
    *(v71 + 1) = v75;
    *(v71 + 2) = v76;
    *v71 = v74;
  }

  else
  {
    *v71 = *v72;
    *(v71 + 8) = *(v72 + 8);
    *(v71 + 24) = *(v72 + 24);
    *(v71 + 5) = *(v72 + 5);
    *(v71 + 6) = *(v72 + 6);
  }

  v77 = (v70 + 23) & 0xFFFFFFFFFFFFFFF8;
  v78 = (v20 + v77 + 56);
  v79 = &v21[v77 + 56];
  *v78 = *v79;
  *((v78 + 23) & 0xFFFFFFFFFFFFFFF8) = *((v79 + 23) & 0xFFFFFFFFFFFFFFF8);
  v80 = (((v77 + 63) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  v81 = v20 + v80 + 16;
  v82 = &v21[v80 + 16];
  if (*(v82 + 6) == 1)
  {
    v83 = *v82;
    v84 = *(v82 + 1);
    v85 = *(v82 + 2);
    *(v81 + 6) = *(v82 + 6);
    *(v81 + 1) = v84;
    *(v81 + 2) = v85;
    *v81 = v83;
  }

  else
  {
    *v81 = *v82;
    *(v81 + 8) = *(v82 + 8);
    *(v81 + 24) = *(v82 + 24);
    *(v81 + 5) = *(v82 + 5);
    *(v81 + 6) = *(v82 + 6);
  }

  v86 = (v80 + 23) & 0xFFFFFFFFFFFFFFF8;
  *(v20 + v86 + 56) = *&v21[v86 + 56];
  v87 = (v86 + 63) & 0xFFFFFFFFFFFFFFF8;
  v88 = (v20 + v87 + 8);
  v89 = &v21[v87 + 8];
  v90 = *(v89 + 1);
  *v88 = *v89;
  v88[1] = v90;
  v91 = (v87 + 15) & 0xFFFFFFFFFFFFFFF8;
  v92 = v20 + v91 + 16;
  v93 = &v21[v91 + 16];
  v94 = *v93;
  v95 = *(v93 + 1);
  *(v92 + 25) = *(v93 + 25);
  *v92 = v94;
  *(v92 + 1) = v95;
  v96 = *(v93 + 7);
  *(v92 + 6) = *(v93 + 6);
  *(v92 + 7) = v96;
  v97 = (v91 + 71) & 0xFFFFFFFFFFFFFFF8;
  v98 = v20 + v97 + 16;
  v99 = &v21[v97 + 16];
  *v98 = *v99;
  v98[8] = v99[8];
  v100 = ((v97 + 23) & 0xFFFFFFFFFFFFFFF8) + 9;
  v101 = v20 + v100;
  v102 = &v21[v100];
  v103 = (v101 + 7) & 0xFFFFFFFFFFFFFFF8;
  v104 = (v102 + 7) & 0xFFFFFFFFFFFFFFF8;
  v105 = *v104;
  v106 = *(v104 + 16);
  v107 = *(v104 + 32);
  *(v103 + 48) = *(v104 + 48);
  *(v103 + 16) = v106;
  *(v103 + 32) = v107;
  *v103 = v105;
  v108 = ((v101 + 63) & 0xFFFFFFFFFFFFFFF8);
  v109 = ((v102 + 63) & 0xFFFFFFFFFFFFFFF8);
  *v108 = *v109;
  *((v108 + 15) & 0xFFFFFFFFFFFFFFF8) = *((v109 + 15) & 0xFFFFFFFFFFFFFFF8);
  v110 = (((v97 + 95) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v111 = v20 + v110 + 16;
  v112 = &v21[v110 + 16];
  v113 = *(v112 + 6);

  if (v113 == 1)
  {
    v114 = *v112;
    v115 = *(v112 + 1);
    v116 = *(v112 + 2);
    *(v111 + 6) = *(v112 + 6);
    *(v111 + 1) = v115;
    *(v111 + 2) = v116;
    *v111 = v114;
  }

  else
  {
    *v111 = *v112;
    *(v111 + 8) = *(v112 + 8);
    *(v111 + 24) = *(v112 + 24);
    *(v111 + 5) = *(v112 + 5);
    *(v111 + 6) = *(v112 + 6);
  }

  v117 = ((v110 + 23) & 0xFFFFFFFFFFFFFFF8) + 56;
  v119 = *&v21[v117];
  v118 = *&v21[v117 + 8];
  v120 = (v20 + v117);
  *v120 = v119;
  v120[1] = v118;

  return a1;
}

void *sub_18E6E0880(void *a1, uint64_t *a2, uint64_t a3)
{
  v4 = *a2;
  v3 = a2 + 15;
  *a1 = v4;
  v5 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v5 = *(v3 & 0xFFFFFFFFFFFFFFF8);
  v6 = ((v5 + 15) & 0xFFFFFFFFFFFFFFF8);
  v7 = (((v3 & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8);
  *v6 = *v7;
  v6[1] = v7[1];
  v8 = ((v6 + 23) & 0xFFFFFFFFFFFFFFF8);
  v9 = ((v7 + 23) & 0xFFFFFFFFFFFFFFF8);
  *v8 = *v9;
  v8[1] = v9[1];
  v10 = ((v8 + 23) & 0xFFFFFFFFFFFFFFF8);
  v11 = ((v9 + 23) & 0xFFFFFFFFFFFFFFF8);
  *v10 = *v11;
  v10[1] = v11[1];
  v12 = (v10 + 23) & 0xFFFFFFFFFFFFFFF8;
  v13 = (v11 + 23) & 0xFFFFFFFFFFFFFFF8;
  *v12 = *v13;
  *(v12 + 8) = *(v13 + 8);
  v14 = *(a3 + 16);
  v15 = *(v14 - 8);
  v16 = *(v15 + 80) & 0xF8;
  v17 = v16 + 16;
  v18 = ~v16 & 0xFFFFFFFFFFFFFFF8;
  v19 = ((v16 + 16 + v12) & v18);
  v20 = ((v16 + 16 + v13) & v18);
  v21 = (v16 + 16) & v18;
  v22 = *(v15 + 64) + 7;
  if ((v22 & 0xFFFFFFFFFFFFFFF8) + 32 <= 0x28)
  {
    v23 = 40;
  }

  else
  {
    v23 = (v22 & 0xFFFFFFFFFFFFFFF8) + 32;
  }

  v24 = v23 | 1;
  if (((v21 + v23) | 2) <= 8)
  {
    v25 = 8;
  }

  else
  {
    v25 = (v21 + v23) | 2;
  }

  v26 = (&v19[v25 + 8] & 0xFFFFFFFFFFFFFFF8);
  v27 = (&v20[v25 + 8] & 0xFFFFFFFFFFFFFFF8);
  v28 = *v27;
  if (*v26 < 0xFFFFFFFFuLL)
  {
    if (v28 < 0xFFFFFFFF)
    {
      memcpy(v19, v20, (((((((((((((((((((((((((((((((((v25 & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 18) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 63) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 63) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 71) & 0xFFFFFFFFFFFFFFF8) + 95) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 63) & 0xFFFFFFFFFFFFFFF8) + 16);
      return a1;
    }

    v33 = v20[v25];
    v34 = v33 - 3;
    if (v33 >= 3)
    {
      if (v25 <= 3)
      {
        v35 = v25;
      }

      else
      {
        v35 = 4;
      }

      if (v35 <= 1)
      {
        if (!v35)
        {
          goto LABEL_46;
        }

        v36 = *v20;
        if (v25 < 4)
        {
LABEL_71:
          v64 = v36 | (v34 << (8 * v25));
          v33 = v64 + 3;
          if (v64 == -1)
          {
            goto LABEL_72;
          }

          goto LABEL_47;
        }
      }

      else if (v35 == 2)
      {
        v36 = *v20;
        if (v25 < 4)
        {
          goto LABEL_71;
        }
      }

      else if (v35 == 3)
      {
        v36 = *v20 | (v20[2] << 16);
        if (v25 < 4)
        {
          goto LABEL_71;
        }
      }

      else
      {
        v36 = *v20;
        if (v25 < 4)
        {
          goto LABEL_71;
        }
      }

      v33 = v36 + 3;
    }

LABEL_46:
    if (v33 == 2)
    {
LABEL_72:
      *v19 = *v20;
      v19[v25] = 2;

      v26 = (&v19[v25 + 8] & 0xFFFFFFFFFFFFFFF8);
      v41 = a1;
LABEL_155:
      v112 = v27[1];
      *v26 = *v27;
      v26[1] = v112;
      v113 = ((v26 + 23) & 0xFFFFFFFFFFFFFFF8);
      v114 = ((v27 + 23) & 0xFFFFFFFFFFFFFFF8);
      *v113 = *v114;
      v115 = (v113 + 15) & 0xFFFFFFFFFFFFFFF8;
      v116 = (v114 + 15) & 0xFFFFFFFFFFFFFFF8;
      *v115 = *v116;
      *(v115 + 8) = *(v116 + 8);
      *(v115 + 9) = *(v116 + 9);
      v117 = ((((v25 & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
      v118 = &v19[v117 + 10];
      v119 = &v20[v117 + 10];
      *v118 = *v119;
      v118 &= 0xFFFFFFFFFFFFFFF8;
      v119 &= 0xFFFFFFFFFFFFFFF8;
      *(v118 + 8) = *(v119 + 8);
      v120 = ((v118 + 31) & 0xFFFFFFFFFFFFFFF8);
      v121 = ((v119 + 31) & 0xFFFFFFFFFFFFFFF8);
      *v120 = *v121;
      v120[1] = v121[1];
      v122 = ((v120 + 23) & 0xFFFFFFFFFFFFFFF8);
      v123 = ((v121 + 23) & 0xFFFFFFFFFFFFFFF8);
      v124 = v123[1];
      *v122 = *v123;
      v122[1] = v124;
      v125 = (((((v117 + 18) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
      v126 = &v19[v125 + 16];
      v127 = &v20[v125 + 16];
      v128 = *(v127 + 6);

      if (v128 == 1)
      {
        v129 = *v127;
        v130 = *(v127 + 1);
        v131 = *(v127 + 2);
        *(v126 + 6) = *(v127 + 6);
        *(v126 + 1) = v130;
        *(v126 + 2) = v131;
        *v126 = v129;
      }

      else
      {
        *v126 = *v127;
        *(v126 + 8) = *(v127 + 8);
        *(v126 + 24) = *(v127 + 24);
        *(v126 + 5) = *(v127 + 5);
        *(v126 + 6) = *(v127 + 6);
      }

      v132 = (v125 + 23) & 0xFFFFFFFFFFFFFFF8;
      v133 = &v19[v132 + 56];
      v134 = &v20[v132 + 56];
      *v133 = *v134;
      *((v133 + 23) & 0xFFFFFFFFFFFFFFF8) = *((v134 + 23) & 0xFFFFFFFFFFFFFFF8);
      v135 = (((v132 + 63) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
      v136 = &v19[v135 + 16];
      v137 = &v20[v135 + 16];
      if (*(v137 + 6) == 1)
      {
        v138 = *v137;
        v139 = *(v137 + 1);
        v140 = *(v137 + 2);
        *(v136 + 6) = *(v137 + 6);
        *(v136 + 1) = v139;
        *(v136 + 2) = v140;
        *v136 = v138;
      }

      else
      {
        *v136 = *v137;
        *(v136 + 8) = *(v137 + 8);
        *(v136 + 24) = *(v137 + 24);
        *(v136 + 5) = *(v137 + 5);
        *(v136 + 6) = *(v137 + 6);
      }

      v141 = (v135 + 23) & 0xFFFFFFFFFFFFFFF8;
      *&v19[v141 + 56] = *&v20[v141 + 56];
      v142 = (v141 + 63) & 0xFFFFFFFFFFFFFFF8;
      v143 = &v19[v142 + 8];
      v144 = &v20[v142 + 8];
      v145 = *(v144 + 1);
      *v143 = *v144;
      *(v143 + 1) = v145;
      v146 = (v142 + 15) & 0xFFFFFFFFFFFFFFF8;
      v147 = &v19[v146 + 16];
      v148 = &v20[v146 + 16];
      v149 = *v148;
      v150 = *(v148 + 1);
      *(v147 + 25) = *(v148 + 25);
      *v147 = v149;
      *(v147 + 1) = v150;
      v151 = *(v148 + 7);
      *(v147 + 6) = *(v148 + 6);
      *(v147 + 7) = v151;
      v152 = (v146 + 71) & 0xFFFFFFFFFFFFFFF8;
      v153 = &v19[v152 + 16];
      v154 = &v20[v152 + 16];
      *v153 = *v154;
      v153[8] = v154[8];
      v155 = ((v152 + 23) & 0xFFFFFFFFFFFFFFF8) + 9;
      v156 = &v19[v155];
      v157 = &v20[v155];
      v158 = (v156 + 7) & 0xFFFFFFFFFFFFFFF8;
      v159 = (v157 + 7) & 0xFFFFFFFFFFFFFFF8;
      v160 = *v159;
      v161 = *(v159 + 16);
      v162 = *(v159 + 32);
      *(v158 + 48) = *(v159 + 48);
      *(v158 + 16) = v161;
      *(v158 + 32) = v162;
      *v158 = v160;
      v163 = ((v156 + 63) & 0xFFFFFFFFFFFFFFF8);
      v164 = ((v157 + 63) & 0xFFFFFFFFFFFFFFF8);
      *v163 = *v164;
      *((v163 + 15) & 0xFFFFFFFFFFFFFFF8) = *((v164 + 15) & 0xFFFFFFFFFFFFFFF8);
      v165 = (((v152 + 95) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
      v166 = &v19[v165 + 16];
      v167 = &v20[v165 + 16];
      v168 = *(v167 + 6);

      if (v168 == 1)
      {
        v169 = *v167;
        v170 = *(v167 + 1);
        v171 = *(v167 + 2);
        *(v166 + 6) = *(v167 + 6);
        *(v166 + 1) = v170;
        *(v166 + 2) = v171;
        *v166 = v169;
      }

      else
      {
        *v166 = *v167;
        *(v166 + 8) = *(v167 + 8);
        *(v166 + 24) = *(v167 + 24);
        *(v166 + 5) = *(v167 + 5);
        *(v166 + 6) = *(v167 + 6);
      }

      v172 = ((v165 + 23) & 0xFFFFFFFFFFFFFFF8) + 56;
      v174 = *&v20[v172];
      v173 = *&v20[v172 + 8];
      v175 = &v19[v172];
      *v175 = v174;
      *(v175 + 1) = v173;

      return v41;
    }

LABEL_47:
    if (v33 == 1)
    {
      v42 = *v20;
      v19[8] = v20[8];
      *v19 = v42;
      v43 = (&v19[v17] & v18);
      v44 = (&v20[v17] & v18);
      v45 = *(v44 + v23);
      if (v45 > 2)
      {
        v60 = v43;
        memcpy(v43, v44, v24);
        v43 = v60;
        v24 = v23 | 1;
        v26 = (&v19[v25 + 8] & 0xFFFFFFFFFFFFFFF8);
        v41 = a1;
      }

      else
      {
        v41 = a1;
        if (v45 == 2)
        {
          v69 = v14;
          v70 = v43;
          (*(v15 + 16))(v43, v44, v69);
          v48 = v70;
          v71 = (v70 + v22) & 0xFFFFFFFFFFFFFFF8;
          v72 = (v44 + v22) & 0xFFFFFFFFFFFFFFF8;
          if (*v72 < 0xFFFFFFFFuLL)
          {
            v104 = *(v72 + 16);
            *v71 = *v72;
            *(v71 + 16) = v104;
          }

          else
          {
            *v71 = *v72;
            *(v71 + 8) = *(v72 + 8);
            *(v71 + 16) = *(v72 + 16);
            *(v71 + 24) = *(v72 + 24);
          }

          v24 = v23 | 1;
          v26 = (&v19[v25 + 8] & 0xFFFFFFFFFFFFFFF8);
          v103 = 2;
        }

        else
        {
          if (v45 != 1)
          {
            *v43 = *v44;
            v73 = v44[1];
            if (v73)
            {
              v43[1] = v73;
              v43[2] = v44[2];
              v43[3] = v44[3];
              v43[4] = v44[4];
              v74 = v43;

              v43 = v74;
              v24 = v23 | 1;
              v26 = (&v19[v25 + 8] & 0xFFFFFFFFFFFFFFF8);
              *(v74 + v23) = 0;
            }

            else
            {
              v180 = *(v44 + 3);
              *(v43 + 1) = *(v44 + 1);
              *(v43 + 3) = v180;
              *(v43 + v23) = 0;
            }

            goto LABEL_144;
          }

          v46 = v14;
          v47 = v43;
          (*(v15 + 16))(v43, v44, v46);
          v48 = v47;
          v49 = (v47 + v22) & 0xFFFFFFFFFFFFFFF8;
          v50 = (v44 + v22) & 0xFFFFFFFFFFFFFFF8;
          if (*v50 < 0xFFFFFFFFuLL)
          {
            v102 = *(v50 + 16);
            *v49 = *v50;
            *(v49 + 16) = v102;
          }

          else
          {
            *v49 = *v50;
            *(v49 + 8) = *(v50 + 8);
            *(v49 + 16) = *(v50 + 16);
            *(v49 + 24) = *(v50 + 24);
          }

          v24 = v23 | 1;
          v26 = (&v19[v25 + 8] & 0xFFFFFFFFFFFFFFF8);
          v103 = 1;
        }

        v43 = v48;
        *(v48 + v23) = v103;
      }

LABEL_144:
      *(v43 + v24) = *(v44 + v24);
      v19[v25] = 1;
      goto LABEL_155;
    }

    v51 = *v20;
    v19[8] = v20[8];
    *v19 = v51;
    v52 = (&v19[v17] & v18);
    v53 = (&v20[v17] & v18);
    v54 = *(v53 + v23);
    if (v54 > 2)
    {
      v61 = v52;
      memcpy(v52, v53, v24);
      v52 = v61;
      v24 = v23 | 1;
      v26 = (&v19[v25 + 8] & 0xFFFFFFFFFFFFFFF8);
      v41 = a1;
    }

    else
    {
      v41 = a1;
      if (v54 == 2)
      {
        v75 = v14;
        v76 = v52;
        (*(v15 + 16))(v52, v53, v75);
        v57 = v76;
        v77 = (v76 + v22) & 0xFFFFFFFFFFFFFFF8;
        v78 = (v53 + v22) & 0xFFFFFFFFFFFFFFF8;
        if (*v78 < 0xFFFFFFFFuLL)
        {
          v111 = *(v78 + 16);
          *v77 = *v78;
          *(v77 + 16) = v111;
        }

        else
        {
          *v77 = *v78;
          *(v77 + 8) = *(v78 + 8);
          *(v77 + 16) = *(v78 + 16);
          *(v77 + 24) = *(v78 + 24);
        }

        v24 = v23 | 1;
        v26 = (&v19[v25 + 8] & 0xFFFFFFFFFFFFFFF8);
        v108 = 2;
      }

      else
      {
        if (v54 != 1)
        {
          *v52 = *v53;
          v79 = v53[1];
          if (v79)
          {
            v52[1] = v79;
            v52[2] = v53[2];
            v52[3] = v53[3];
            v52[4] = v53[4];
            v80 = v52;

            v52 = v80;
            v24 = v23 | 1;
            v26 = (&v19[v25 + 8] & 0xFFFFFFFFFFFFFFF8);
            *(v80 + v23) = 0;
          }

          else
          {
            v181 = *(v53 + 3);
            *(v52 + 1) = *(v53 + 1);
            *(v52 + 3) = v181;
            *(v52 + v23) = 0;
          }

          goto LABEL_154;
        }

        v55 = v14;
        v56 = v52;
        (*(v15 + 16))(v52, v53, v55);
        v57 = v56;
        v58 = (v56 + v22) & 0xFFFFFFFFFFFFFFF8;
        v59 = (v53 + v22) & 0xFFFFFFFFFFFFFFF8;
        if (*v59 < 0xFFFFFFFFuLL)
        {
          v107 = *(v59 + 16);
          *v58 = *v59;
          *(v58 + 16) = v107;
        }

        else
        {
          *v58 = *v59;
          *(v58 + 8) = *(v59 + 8);
          *(v58 + 16) = *(v59 + 16);
          *(v58 + 24) = *(v59 + 24);
        }

        v24 = v23 | 1;
        v26 = (&v19[v25 + 8] & 0xFFFFFFFFFFFFFFF8);
        v108 = 1;
      }

      v52 = v57;
      *(v57 + v23) = v108;
    }

LABEL_154:
    *(v52 + v24) = *(v53 + v24);
    v19[v25] = 0;
    goto LABEL_155;
  }

  if (v28 >= 0xFFFFFFFF)
  {
    if (v19 == v20)
    {
LABEL_185:
      v188 = v27[1];
      *v26 = *v27;
      v26[1] = v188;
      v189 = v26;

      v190 = ((v27 + 23) & 0xFFFFFFFFFFFFFFF8);
      v191 = ((v189 + 23) & 0xFFFFFFFFFFFFFFF8);
      *v191 = *v190;
      v192 = (v191 + 15) & 0xFFFFFFFFFFFFFFF8;
      v193 = (v190 + 15) & 0xFFFFFFFFFFFFFFF8;
      *v192 = *v193;
      *(v192 + 8) = *(v193 + 8);
      *(v192 + 9) = *(v193 + 9);
      v194 = ((((v25 & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
      v195 = &v19[v194 + 10];
      v196 = &v20[v194 + 10];
      *v195 = *v196;
      v195 &= 0xFFFFFFFFFFFFFFF8;
      v196 &= 0xFFFFFFFFFFFFFFF8;
      *(v195 + 8) = *(v196 + 8);
      *(v195 + 16) = *(v196 + 16);
      v197 = ((v195 + 31) & 0xFFFFFFFFFFFFFFF8);
      v198 = ((v196 + 31) & 0xFFFFFFFFFFFFFFF8);
      *v197 = *v198;
      v197[1] = v198[1];

      v199 = ((v197 + 23) & 0xFFFFFFFFFFFFFFF8);
      v200 = ((v198 + 23) & 0xFFFFFFFFFFFFFFF8);
      v201 = v200[1];
      *v199 = *v200;
      v199[1] = v201;

      v202 = (((((v194 + 18) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
      v203 = &v19[v202 + 16];
      v204 = &v20[v202 + 16];
      v205 = *(v204 + 6);
      if (*(v203 + 6) == 1)
      {
        v41 = a1;
        if (v205 == 1)
        {
          v206 = *v204;
          v207 = *(v204 + 1);
          v208 = *(v204 + 2);
          *(v203 + 6) = *(v204 + 6);
          *(v203 + 1) = v207;
          *(v203 + 2) = v208;
          *v203 = v206;
        }

        else
        {
          *v203 = *v204;
          *(v203 + 8) = *(v204 + 8);
          *(v203 + 24) = *(v204 + 24);
          *(v203 + 5) = *(v204 + 5);
          *(v203 + 6) = *(v204 + 6);
        }
      }

      else
      {
        v41 = a1;
        if (v205 == 1)
        {
          sub_18E6AC114(&v19[v202 + 16]);
          v210 = *(v204 + 1);
          v209 = *(v204 + 2);
          v211 = *v204;
          *(v203 + 6) = *(v204 + 6);
          *(v203 + 1) = v210;
          *(v203 + 2) = v209;
          *v203 = v211;
        }

        else
        {
          *v203 = *v204;
          *(v203 + 1) = *(v204 + 1);
          *(v203 + 2) = *(v204 + 2);
          *(v203 + 3) = *(v204 + 3);
          *(v203 + 4) = *(v204 + 4);
          *(v203 + 5) = *(v204 + 5);
          *(v203 + 6) = *(v204 + 6);
        }
      }

      v212 = (v202 + 23) & 0xFFFFFFFFFFFFFFF8;
      v213 = &v19[v212 + 56];
      v214 = &v20[v212 + 56];
      *v213 = *v214;
      *(v213 + 1) = *(v214 + 1);
      v215 = ((v213 + 23) & 0xFFFFFFFFFFFFFFF8);
      v216 = ((v214 + 23) & 0xFFFFFFFFFFFFFFF8);
      *v215 = *v216;
      v215[1] = v216[1];
      v217 = (((v212 + 63) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
      v218 = &v19[v217 + 16];
      v219 = &v20[v217 + 16];
      v220 = *(v219 + 6);
      if (*(v218 + 6) == 1)
      {
        if (v220 == 1)
        {
          v221 = *v219;
          v222 = *(v219 + 1);
          v223 = *(v219 + 2);
          *(v218 + 6) = *(v219 + 6);
          *(v218 + 1) = v222;
          *(v218 + 2) = v223;
          *v218 = v221;
        }

        else
        {
          *v218 = *v219;
          *(v218 + 8) = *(v219 + 8);
          *(v218 + 24) = *(v219 + 24);
          *(v218 + 5) = *(v219 + 5);
          *(v218 + 6) = *(v219 + 6);
        }
      }

      else if (v220 == 1)
      {
        sub_18E6AC114(&v19[v217 + 16]);
        v225 = *(v219 + 1);
        v224 = *(v219 + 2);
        v226 = *v219;
        *(v218 + 6) = *(v219 + 6);
        *(v218 + 1) = v225;
        *(v218 + 2) = v224;
        *v218 = v226;
      }

      else
      {
        *v218 = *v219;
        *(v218 + 1) = *(v219 + 1);
        *(v218 + 2) = *(v219 + 2);
        *(v218 + 3) = *(v219 + 3);
        *(v218 + 4) = *(v219 + 4);
        *(v218 + 5) = *(v219 + 5);
        *(v218 + 6) = *(v219 + 6);
      }

      v227 = (v217 + 23) & 0xFFFFFFFFFFFFFFF8;
      *&v19[v227 + 56] = *&v20[v227 + 56];
      v228 = (v227 + 63) & 0xFFFFFFFFFFFFFFF8;
      v229 = &v19[v228 + 8];
      v230 = &v20[v228 + 8];
      v231 = *(v230 + 1);
      *v229 = *v230;
      *(v229 + 1) = v231;

      v232 = (v228 + 15) & 0xFFFFFFFFFFFFFFF8;
      v233 = &v19[v232 + 16];
      v234 = &v20[v232 + 16];
      v235 = *v234;
      v233[16] = v234[16];
      *v233 = v235;
      v236 = *(v234 + 24);
      v233[40] = v234[40];
      *(v233 + 24) = v236;
      v237 = *(v234 + 7);
      *(v233 + 6) = *(v234 + 6);
      *(v233 + 7) = v237;

      v238 = (v232 + 71) & 0xFFFFFFFFFFFFFFF8;
      v239 = &v19[v238 + 16];
      v240 = &v20[v238 + 16];
      *v239 = *v240;
      v239[8] = v240[8];
      v241 = ((v238 + 23) & 0xFFFFFFFFFFFFFFF8) + 9;
      v242 = &v19[v241];
      v243 = &v20[v241];
      v244 = (v242 + 7) & 0xFFFFFFFFFFFFFFF8;
      v245 = (v243 + 7) & 0xFFFFFFFFFFFFFFF8;
      *v244 = *v245;
      v246 = *(v245 + 8);
      *(v244 + 24) = *(v245 + 24);
      *(v244 + 8) = v246;
      v247 = *(v245 + 32);
      *(v244 + 48) = *(v245 + 48);
      *(v244 + 32) = v247;
      v248 = ((v242 + 63) & 0xFFFFFFFFFFFFFFF8);
      v249 = ((v243 + 63) & 0xFFFFFFFFFFFFFFF8);
      *v248 = *v249;
      v250 = ((v248 + 15) & 0xFFFFFFFFFFFFFFF8);
      v251 = ((v249 + 15) & 0xFFFFFFFFFFFFFFF8);
      *v250 = *v251;
      v250[1] = v251[1];
      v252 = (((v238 + 95) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
      v253 = &v19[v252 + 16];
      v254 = &v20[v252 + 16];
      v255 = *(v254 + 6);
      if (*(v253 + 6) == 1)
      {
        if (v255 == 1)
        {
          v256 = *v254;
          v257 = *(v254 + 1);
          v258 = *(v254 + 2);
          *(v253 + 6) = *(v254 + 6);
          *(v253 + 1) = v257;
          *(v253 + 2) = v258;
          *v253 = v256;
        }

        else
        {
          *v253 = *v254;
          *(v253 + 8) = *(v254 + 8);
          *(v253 + 24) = *(v254 + 24);
          *(v253 + 5) = *(v254 + 5);
          *(v253 + 6) = *(v254 + 6);
        }
      }

      else if (v255 == 1)
      {
        sub_18E6AC114(&v19[v252 + 16]);
        v260 = *(v254 + 1);
        v259 = *(v254 + 2);
        v261 = *v254;
        *(v253 + 6) = *(v254 + 6);
        *(v253 + 1) = v260;
        *(v253 + 2) = v259;
        *v253 = v261;
      }

      else
      {
        *v253 = *v254;
        *(v253 + 1) = *(v254 + 1);
        *(v253 + 2) = *(v254 + 2);
        *(v253 + 3) = *(v254 + 3);
        *(v253 + 4) = *(v254 + 4);
        *(v253 + 5) = *(v254 + 5);
        *(v253 + 6) = *(v254 + 6);
      }

      v262 = ((v252 + 23) & 0xFFFFFFFFFFFFFFF8) + 56;
      v263 = &v19[v262];
      v264 = &v20[v262];
      v265 = *(v264 + 1);
      *v263 = *v264;
      *(v263 + 1) = v265;

      return v41;
    }

    v29 = v19[v25];
    v30 = v29 - 3;
    if (v29 >= 3)
    {
      if (v25 <= 3)
      {
        v31 = v25;
      }

      else
      {
        v31 = 4;
      }

      if (v31 <= 1)
      {
        if (!v31)
        {
          goto LABEL_99;
        }

        v32 = *v19;
      }

      else if (v31 == 2)
      {
        v32 = *v19;
      }

      else if (v31 == 3)
      {
        v32 = *v19 | (v19[2] << 16);
      }

      else
      {
        v32 = *v19;
      }

      if (v25 < 4)
      {
        v29 = (v32 | (v30 << (8 * v25))) + 3;
      }

      else
      {
        v29 = v32 + 3;
      }
    }

LABEL_99:
    if (v29 == 2)
    {
      v267 = v23 | 1;
    }

    else
    {
      v81 = *((&v19[v17] & v18) + v23);
      if (v81 > 2)
      {
        goto LABEL_107;
      }

      v267 = v23 | 1;
      if (v81 == 2 || v81 == 1)
      {
        (*(v15 + 8))(&v19[v17] & v18, v14);
        v24 = v23 | 1;
        if (*((v22 + (&v19[v17] & v18)) & 0xFFFFFFFFFFFFFFF8) < 0xFFFFFFFFuLL)
        {
          goto LABEL_107;
        }
      }

      else
      {
        v24 = v23 | 1;
        if (!*((&v19[v17] & v18) + 8))
        {
LABEL_107:
          v82 = v20[v25];
          v83 = v82 - 3;
          if (v82 < 3)
          {
            goto LABEL_124;
          }

          if (v25 <= 3)
          {
            v84 = v25;
          }

          else
          {
            v84 = 4;
          }

          if (v84 <= 1)
          {
            if (!v84)
            {
              goto LABEL_124;
            }

            v85 = *v20;
          }

          else if (v84 == 2)
          {
            v85 = *v20;
          }

          else if (v84 == 3)
          {
            v85 = *v20 | (v20[2] << 16);
          }

          else
          {
            v85 = *v20;
          }

          if (v25 < 4)
          {
            v82 = (v85 | (v83 << (8 * v25))) + 3;
          }

          else
          {
            v82 = v85 + 3;
          }

LABEL_124:
          if (v82 == 2)
          {
            *v19 = *v20;
            v19[v25] = 2;

            v26 = (&v19[v25 + 8] & 0xFFFFFFFFFFFFFFF8);
          }

          else if (v82 == 1)
          {
            v86 = *v20;
            v19[8] = v20[8];
            *v19 = v86;
            v87 = (&v19[v17] & v18);
            v88 = (&v20[v17] & v18);
            v89 = *(v88 + v23);
            v90 = v87;
            if (v89 > 2)
            {
              v100 = v24;
              memcpy(v87, v88, v24);
              v87 = v90;
              v24 = v100;
              v26 = (&v19[v25 + 8] & 0xFFFFFFFFFFFFFFF8);
            }

            else if (v89 == 2)
            {
              v270 = v24;
              (*(v15 + 16))(v87, v88, v14);
              v105 = (v90 + v22) & 0xFFFFFFFFFFFFFFF8;
              v106 = (v88 + v22) & 0xFFFFFFFFFFFFFFF8;
              if (*v106 < 0xFFFFFFFFuLL)
              {
                v87 = v90;
                v183 = *(v106 + 16);
                *v105 = *v106;
                *(v105 + 16) = v183;
              }

              else
              {
                *v105 = *v106;
                *(v105 + 8) = *(v106 + 8);
                *(v105 + 16) = *(v106 + 16);
                *(v105 + 24) = *(v106 + 24);

                v87 = v90;
              }

              v24 = v270;
              v26 = (&v19[v25 + 8] & 0xFFFFFFFFFFFFFFF8);
              *(v87 + v23) = 2;
            }

            else if (v89 == 1)
            {
              v268 = v24;
              (*(v15 + 16))(v87, v88, v14);
              v91 = (v90 + v22) & 0xFFFFFFFFFFFFFFF8;
              v92 = (v88 + v22) & 0xFFFFFFFFFFFFFFF8;
              if (*v92 < 0xFFFFFFFFuLL)
              {
                v87 = v90;
                v182 = *(v92 + 16);
                *v91 = *v92;
                *(v91 + 16) = v182;
              }

              else
              {
                *v91 = *v92;
                *(v91 + 8) = *(v92 + 8);
                *(v91 + 16) = *(v92 + 16);
                *(v91 + 24) = *(v92 + 24);

                v87 = v90;
              }

              v24 = v268;
              v26 = (&v19[v25 + 8] & 0xFFFFFFFFFFFFFFF8);
              *(v87 + v23) = 1;
            }

            else
            {
              *v87 = *v88;
              v109 = v88[1];
              if (v109)
              {
                v87[1] = v109;
                v87[2] = v88[2];
                v87[3] = v88[3];
                v87[4] = v88[4];
                v110 = v24;

                v87 = v90;
                v24 = v110;
              }

              else
              {
                v186 = *(v88 + 3);
                *(v87 + 1) = *(v88 + 1);
                *(v87 + 3) = v186;
              }

              v26 = (&v19[v25 + 8] & 0xFFFFFFFFFFFFFFF8);
              *(v87 + v23) = 0;
            }

            *(v87 + v24) = *(v88 + v24);
            v19[v25] = 1;
          }

          else
          {
            v93 = *v20;
            v19[8] = v20[8];
            *v19 = v93;
            v94 = (&v19[v17] & v18);
            v95 = (&v20[v17] & v18);
            v96 = *(v95 + v23);
            v97 = v94;
            if (v96 > 2)
            {
              v101 = v24;
              memcpy(v94, v95, v24);
              v94 = v97;
              v24 = v101;
              v26 = (&v19[v25 + 8] & 0xFFFFFFFFFFFFFFF8);
            }

            else if (v96 == 2)
            {
              v271 = v24;
              (*(v15 + 16))(v94, v95, v14);
              v176 = (v97 + v22) & 0xFFFFFFFFFFFFFFF8;
              v177 = (v95 + v22) & 0xFFFFFFFFFFFFFFF8;
              if (*v177 < 0xFFFFFFFFuLL)
              {
                v94 = v97;
                v185 = *(v177 + 16);
                *v176 = *v177;
                *(v176 + 16) = v185;
              }

              else
              {
                *v176 = *v177;
                *(v176 + 8) = *(v177 + 8);
                *(v176 + 16) = *(v177 + 16);
                *(v176 + 24) = *(v177 + 24);

                v94 = v97;
              }

              v24 = v271;
              v26 = (&v19[v25 + 8] & 0xFFFFFFFFFFFFFFF8);
              *(v94 + v23) = 2;
            }

            else if (v96 == 1)
            {
              v269 = v24;
              (*(v15 + 16))(v94, v95, v14);
              v98 = (v97 + v22) & 0xFFFFFFFFFFFFFFF8;
              v99 = (v95 + v22) & 0xFFFFFFFFFFFFFFF8;
              if (*v99 < 0xFFFFFFFFuLL)
              {
                v94 = v97;
                v184 = *(v99 + 16);
                *v98 = *v99;
                *(v98 + 16) = v184;
              }

              else
              {
                *v98 = *v99;
                *(v98 + 8) = *(v99 + 8);
                *(v98 + 16) = *(v99 + 16);
                *(v98 + 24) = *(v99 + 24);

                v94 = v97;
              }

              v24 = v269;
              v26 = (&v19[v25 + 8] & 0xFFFFFFFFFFFFFFF8);
              *(v94 + v23) = 1;
            }

            else
            {
              *v94 = *v95;
              v178 = v95[1];
              if (v178)
              {
                v94[1] = v178;
                v94[2] = v95[2];
                v94[3] = v95[3];
                v94[4] = v95[4];
                v179 = v24;

                v94 = v97;
                v24 = v179;
              }

              else
              {
                v187 = *(v95 + 3);
                *(v94 + 1) = *(v95 + 1);
                *(v94 + 3) = v187;
              }

              v26 = (&v19[v25 + 8] & 0xFFFFFFFFFFFFFFF8);
              *(v94 + v23) = 0;
            }

            *(v94 + v24) = *(v95 + v24);
            v19[v25] = 0;
          }

          goto LABEL_185;
        }
      }
    }

    v24 = v267;
    goto LABEL_107;
  }

  v37 = v19[v25];
  v38 = v37 - 3;
  if (v37 >= 3)
  {
    if (v25 <= 3)
    {
      v39 = v25;
    }

    else
    {
      v39 = 4;
    }

    if (v39 <= 1)
    {
      if (!v39)
      {
        goto LABEL_62;
      }

      v40 = *v19;
      if (v25 < 4)
      {
LABEL_74:
        if ((v40 | (v38 << (8 * v25))) == 0xFFFFFFFF)
        {
          goto LABEL_75;
        }

        goto LABEL_63;
      }
    }

    else if (v39 == 2)
    {
      v40 = *v19;
      if (v25 < 4)
      {
        goto LABEL_74;
      }
    }

    else if (v39 == 3)
    {
      v40 = *v19 | (v19[2] << 16);
      if (v25 < 4)
      {
        goto LABEL_74;
      }
    }

    else
    {
      v40 = *v19;
      if (v25 < 4)
      {
        goto LABEL_74;
      }
    }

    v37 = v40 + 3;
  }

LABEL_62:
  if (v37 == 2)
  {
LABEL_75:
    v41 = a1;
    goto LABEL_76;
  }

LABEL_63:
  v62 = &v19[v17] & v18;
  v63 = *(v62 + v23);
  v41 = a1;
  if (v63 <= 2)
  {
    if (v63 == 2 || v63 == 1)
    {
      (*(v15 + 8))(v62, v14);
      if (*((v22 + v62) & 0xFFFFFFFFFFFFFFF8) >= 0xFFFFFFFFuLL)
      {
LABEL_67:

LABEL_76:
      }
    }

    else if (*(v62 + 8))
    {
      goto LABEL_67;
    }
  }

  v65 = ((((((((((v25 & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 18) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  v66 = v19 + 16;
  if (*&v19[v65 + 64] != 1)
  {
  }

  v67 = (((((v65 + 23) & 0xFFFFFFFFFFFFFFF8) + 63) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  if (*&v66[v67 + 48] != 1)
  {
  }

  v68 = (((((((((((v67 + 23) & 0xFFFFFFFFFFFFFFF8) + 63) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 71) & 0xFFFFFFFFFFFFFFF8) + 95) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  if (*&v66[v68 + 48] != 1)
  {
  }

  memcpy(v19, v20, ((((v68 + 23) & 0xFFFFFFFFFFFFFFF8) + 63) & 0xFFFFFFFFFFFFFFF8) + 16);
  return v41;
}

__n128 sub_18E6E20FC(void *a1, uint64_t *a2, uint64_t a3)
{
  v4 = *a2;
  v3 = a2 + 15;
  *a1 = v4;
  v5 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v5 = *(v3 & 0xFFFFFFFFFFFFFFF8);
  v6 = ((v5 + 15) & 0xFFFFFFFFFFFFFFF8);
  v7 = (((v3 & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8);
  *v6 = *v7;
  v8 = ((v6 + 23) & 0xFFFFFFFFFFFFFFF8);
  v9 = ((v7 + 23) & 0xFFFFFFFFFFFFFFF8);
  *v8 = *v9;
  v10 = ((v8 + 23) & 0xFFFFFFFFFFFFFFF8);
  v11 = ((v9 + 23) & 0xFFFFFFFFFFFFFFF8);
  *v10 = *v11;
  v12 = (v10 + 23) & 0xFFFFFFFFFFFFFFF8;
  v13 = (v11 + 23) & 0xFFFFFFFFFFFFFFF8;
  *v12 = *v13;
  *(v12 + 8) = *(v13 + 8);
  v14 = *(*(a3 + 16) - 8);
  v15 = *(v14 + 80) & 0xF8;
  v16 = v15 + 16;
  v17 = v15 + 16 + v12;
  v18 = ~v15 & 0xFFFFFFFFFFFFFFF8;
  v19 = (v17 & v18);
  v20 = ((v15 + 16 + v13) & v18);
  v21 = *(v14 + 64) + 7;
  if ((v21 & 0xFFFFFFFFFFFFFFF8) + 32 <= 0x28)
  {
    v22 = 40;
  }

  else
  {
    v22 = (v21 & 0xFFFFFFFFFFFFFFF8) + 32;
  }

  if (((((v15 + 16) & v18) + v22) | 2) <= 8)
  {
    v23 = 8;
  }

  else
  {
    v23 = (((v15 + 16) & v18) + v22) | 2;
  }

  v24 = (&v20[v23 + 8] & 0xFFFFFFFFFFFFFFF8);
  if (*v24 < 0xFFFFFFFFuLL)
  {
    memcpy((v17 & v18), v20, (((((((((((((((((((((((((((((((((v23 & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 18) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 63) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 63) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 71) & 0xFFFFFFFFFFFFFFF8) + 95) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 63) & 0xFFFFFFFFFFFFFFF8) + 16);
    return result;
  }

  v25 = v20[v23];
  v26 = v25 - 3;
  if (v25 >= 3)
  {
    if (v23 <= 3)
    {
      v27 = v23;
    }

    else
    {
      v27 = 4;
    }

    if (v27 <= 1)
    {
      if (!v27)
      {
        goto LABEL_23;
      }

      v28 = *v20;
      if (v23 < 4)
      {
LABEL_36:
        v45 = v28 | (v26 << (8 * v23));
        v25 = v45 + 3;
        if (v45 == -1)
        {
          goto LABEL_37;
        }

LABEL_24:
        v30 = v22 | 1;
        if (v25 == 1)
        {
          v31 = *v20;
          *((v17 & v18) + 8) = v20[8];
          *v19 = v31;
          v32 = ((v19 + v16) & v18);
          v33 = (&v20[v16] & v18);
          v34 = *(v33 + v22);
          if (v34 > 2)
          {
            memcpy(((v19 + v16) & v18), (&v20[v16] & v18), v22 | 1);
          }

          else if (v34 == 2)
          {
            (*(v14 + 32))((v19 + v16) & v18, &v20[v16] & v18);
            v47 = ((v32 + v21) & 0xFFFFFFFFFFFFFFF8);
            v48 = ((v33 + v21) & 0xFFFFFFFFFFFFFFF8);
            v49 = v48[1];
            *v47 = *v48;
            v47[1] = v49;
            *(v32 + v22) = 2;
          }

          else if (v34 == 1)
          {
            (*(v14 + 32))((v19 + v16) & v18, &v20[v16] & v18);
            v35 = ((v32 + v21) & 0xFFFFFFFFFFFFFFF8);
            v36 = ((v33 + v21) & 0xFFFFFFFFFFFFFFF8);
            v37 = v36[1];
            *v35 = *v36;
            v35[1] = v37;
            *(v32 + v22) = 1;
          }

          else
          {
            v50 = *v33;
            v51 = *((&v20[v16] & v18) + 0x10);
            *(((v19 + v16) & v18) + 0x20) = *((&v20[v16] & v18) + 0x20);
            *v32 = v50;
            *(((v19 + v16) & v18) + 0x10) = v51;
            *(v32 + v22) = 0;
          }

          *(v32 + v30) = *(v33 + v30);
          v46 = 1;
        }

        else
        {
          v38 = *v20;
          *((v17 & v18) + 8) = v20[8];
          *v19 = v38;
          v39 = ((v19 + v16) & v18);
          v40 = (&v20[v16] & v18);
          v41 = *(v40 + v22);
          if (v41 > 2)
          {
            memcpy(((v19 + v16) & v18), (&v20[v16] & v18), v22 | 1);
          }

          else if (v41 == 2)
          {
            (*(v14 + 32))((v19 + v16) & v18, &v20[v16] & v18);
            v52 = ((v39 + v21) & 0xFFFFFFFFFFFFFFF8);
            v53 = ((v40 + v21) & 0xFFFFFFFFFFFFFFF8);
            v54 = v53[1];
            *v52 = *v53;
            v52[1] = v54;
            *(v39 + v22) = 2;
          }

          else if (v41 == 1)
          {
            (*(v14 + 32))((v19 + v16) & v18, &v20[v16] & v18);
            v42 = ((v39 + v21) & 0xFFFFFFFFFFFFFFF8);
            v43 = ((v40 + v21) & 0xFFFFFFFFFFFFFFF8);
            v44 = v43[1];
            *v42 = *v43;
            v42[1] = v44;
            *(v39 + v22) = 1;
          }

          else
          {
            v55 = *v40;
            v56 = *((&v20[v16] & v18) + 0x10);
            *(((v19 + v16) & v18) + 0x20) = *((&v20[v16] & v18) + 0x20);
            *v39 = v55;
            *(((v19 + v16) & v18) + 0x10) = v56;
            *(v39 + v22) = 0;
          }

          v46 = 0;
          *(v39 + v30) = *(v40 + v30);
        }

        goto LABEL_44;
      }
    }

    else if (v27 == 2)
    {
      v28 = *v20;
      if (v23 < 4)
      {
        goto LABEL_36;
      }
    }

    else if (v27 == 3)
    {
      v28 = *v20 | (v20[2] << 16);
      if (v23 < 4)
      {
        goto LABEL_36;
      }
    }

    else
    {
      v28 = *v20;
      if (v23 < 4)
      {
        goto LABEL_36;
      }
    }

    v25 = v28 + 3;
  }

LABEL_23:
  if (v25 != 2)
  {
    goto LABEL_24;
  }

LABEL_37:
  *v19 = *v20;
  v46 = 2;
LABEL_44:
  *(v19 + v23) = v46;
  v57 = ((v19 + v23 + 8) & 0xFFFFFFFFFFFFFFF8);
  *v57 = *v24;
  v58 = ((v57 + 23) & 0xFFFFFFFFFFFFFFF8);
  v59 = ((v24 + 23) & 0xFFFFFFFFFFFFFFF8);
  *v58 = *v59;
  v60 = (v58 + 15) & 0xFFFFFFFFFFFFFFF8;
  v61 = (v59 + 15) & 0xFFFFFFFFFFFFFFF8;
  *v60 = *v61;
  *(v60 + 8) = *(v61 + 8);
  *(v60 + 9) = *(v61 + 9);
  v62 = ((((v23 & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v63 = v19 + v62 + 10;
  v64 = &v20[v62 + 10];
  *v63 = *v64;
  v63 &= 0xFFFFFFFFFFFFFFF8;
  v64 &= 0xFFFFFFFFFFFFFFF8;
  *(v63 + 8) = *(v64 + 8);
  v65 = ((v63 + 31) & 0xFFFFFFFFFFFFFFF8);
  v66 = ((v64 + 31) & 0xFFFFFFFFFFFFFFF8);
  *v65 = *v66;
  *((v65 + 23) & 0xFFFFFFFFFFFFFFF8) = *((v66 + 23) & 0xFFFFFFFFFFFFFFF8);
  v67 = (((((v62 + 18) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  v68 = v19 + v67 + 16;
  v69 = &v20[v67 + 16];
  v70 = *v69;
  v71 = *(v69 + 1);
  v72 = *(v69 + 2);
  *(v68 + 6) = *(v69 + 6);
  *(v68 + 1) = v71;
  *(v68 + 2) = v72;
  *v68 = v70;
  v73 = (v67 + 23) & 0xFFFFFFFFFFFFFFF8;
  v74 = (v19 + v73 + 56);
  v75 = &v20[v73 + 56];
  *v74 = *v75;
  *((v74 + 23) & 0xFFFFFFFFFFFFFFF8) = *((v75 + 23) & 0xFFFFFFFFFFFFFFF8);
  v76 = (((v73 + 63) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  v77 = v19 + v76 + 16;
  v78 = &v20[v76 + 16];
  v79 = *v78;
  v80 = *(v78 + 1);
  v81 = *(v78 + 2);
  *(v77 + 6) = *(v78 + 6);
  *(v77 + 1) = v80;
  *(v77 + 2) = v81;
  *v77 = v79;
  v82 = (v76 + 23) & 0xFFFFFFFFFFFFFFF8;
  *(v19 + v82 + 56) = *&v20[v82 + 56];
  v83 = (v82 + 63) & 0xFFFFFFFFFFFFFFF8;
  *(v19 + v83 + 8) = *&v20[v83 + 8];
  v84 = (v83 + 15) & 0xFFFFFFFFFFFFFFF8;
  v85 = (v19 + v84 + 16);
  v86 = &v20[v84 + 16];
  v87 = *v86;
  v88 = *(v86 + 1);
  *(v85 + 25) = *(v86 + 25);
  *v85 = v87;
  v85[1] = v88;
  v85[3] = *(v86 + 3);
  v89 = (v84 + 71) & 0xFFFFFFFFFFFFFFF8;
  v90 = v19 + v89 + 16;
  v91 = &v20[v89 + 16];
  *v90 = *v91;
  v90[8] = v91[8];
  v92 = ((v89 + 23) & 0xFFFFFFFFFFFFFFF8) + 9;
  v93 = v19 + v92;
  v94 = &v20[v92];
  v95 = (v93 + 7) & 0xFFFFFFFFFFFFFFF8;
  v96 = (v94 + 7) & 0xFFFFFFFFFFFFFFF8;
  v97 = *v96;
  v98 = *(v96 + 16);
  v99 = *(v96 + 32);
  *(v95 + 48) = *(v96 + 48);
  *(v95 + 16) = v98;
  *(v95 + 32) = v99;
  *v95 = v97;
  v100 = ((v93 + 63) & 0xFFFFFFFFFFFFFFF8);
  v101 = ((v94 + 63) & 0xFFFFFFFFFFFFFFF8);
  *v100 = *v101;
  *((v100 + 15) & 0xFFFFFFFFFFFFFFF8) = *((v101 + 15) & 0xFFFFFFFFFFFFFFF8);
  v102 = (((v89 + 95) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v103 = v19 + v102 + 16;
  v104 = &v20[v102 + 16];
  v105 = *v104;
  v106 = *(v104 + 1);
  v107 = *(v104 + 2);
  *(v103 + 6) = *(v104 + 6);
  *(v103 + 1) = v106;
  *(v103 + 2) = v107;
  *v103 = v105;
  v108 = ((v102 + 23) & 0xFFFFFFFFFFFFFFF8) + 56;
  result = *&v20[v108];
  *(v19 + v108) = result;
  return result;
}

void *sub_18E6E27F0(void *result, uint64_t *a2, uint64_t a3)
{
  v4 = *a2;
  v3 = a2 + 15;
  *result = v4;
  v5 = ((result + 15) & 0xFFFFFFFFFFFFFFF8);
  *v5 = *(v3 & 0xFFFFFFFFFFFFFFF8);
  v6 = ((v5 + 15) & 0xFFFFFFFFFFFFFFF8);
  v7 = (((v3 & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8);
  *v6 = *v7;
  v6[1] = v7[1];
  v8 = ((v6 + 23) & 0xFFFFFFFFFFFFFFF8);
  v9 = ((v7 + 23) & 0xFFFFFFFFFFFFFFF8);
  *v8 = *v9;
  v8[1] = v9[1];
  v10 = ((v8 + 23) & 0xFFFFFFFFFFFFFFF8);
  v11 = ((v9 + 23) & 0xFFFFFFFFFFFFFFF8);
  *v10 = *v11;
  v10[1] = v11[1];
  v12 = (v10 + 23) & 0xFFFFFFFFFFFFFFF8;
  v13 = (v11 + 23) & 0xFFFFFFFFFFFFFFF8;
  *v12 = *v13;
  *(v12 + 8) = *(v13 + 8);
  v14 = *(a3 + 16);
  v15 = *(v14 - 8);
  v16 = *(v15 + 80) & 0xF8;
  v17 = v16 + 16;
  v18 = ~v16 & 0xFFFFFFFFFFFFFFF8;
  v19 = ((v16 + 16 + v12) & v18);
  v20 = ((v16 + 16 + v13) & v18);
  v21 = (v16 + 16) & v18;
  v22 = *(v15 + 64) + 7;
  if ((v22 & 0xFFFFFFFFFFFFFFF8) + 32 <= 0x28)
  {
    v23 = 40;
  }

  else
  {
    v23 = (v22 & 0xFFFFFFFFFFFFFFF8) + 32;
  }

  v24 = v23 | 1;
  if (((v21 + v23) | 2) <= 8)
  {
    v25 = 8;
  }

  else
  {
    v25 = (v21 + v23) | 2;
  }

  v26 = (&v19[v25 + 8] & 0xFFFFFFFFFFFFFFF8);
  v27 = (&v20[v25 + 8] & 0xFFFFFFFFFFFFFFF8);
  v28 = *v27;
  if (*v26 < 0xFFFFFFFFuLL)
  {
    if (v28 < 0xFFFFFFFF)
    {
      v41 = result;
      memcpy(v19, v20, (((((((((((((((((((((((((((((((((v25 & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 18) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 63) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 63) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 71) & 0xFFFFFFFFFFFFFFF8) + 95) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 63) & 0xFFFFFFFFFFFFFFF8) + 16);
      return v41;
    }

    v33 = v20[v25];
    v34 = v33 - 3;
    if (v33 >= 3)
    {
      if (v25 <= 3)
      {
        v35 = v25;
      }

      else
      {
        v35 = 4;
      }

      if (v35 <= 1)
      {
        if (!v35)
        {
          goto LABEL_46;
        }

        v36 = *v20;
        if (v25 < 4)
        {
LABEL_61:
          v62 = v36 | (v34 << (8 * v25));
          v33 = v62 + 3;
          if (v62 == -1)
          {
            goto LABEL_62;
          }

          goto LABEL_47;
        }
      }

      else if (v35 == 2)
      {
        v36 = *v20;
        if (v25 < 4)
        {
          goto LABEL_61;
        }
      }

      else if (v35 == 3)
      {
        v36 = *v20 | (v20[2] << 16);
        if (v25 < 4)
        {
          goto LABEL_61;
        }
      }

      else
      {
        v36 = *v20;
        if (v25 < 4)
        {
          goto LABEL_61;
        }
      }

      v33 = v36 + 3;
    }

LABEL_46:
    if (v33 == 2)
    {
LABEL_62:
      *v19 = *v20;
      v63 = 2;
LABEL_94:
      v19[v25] = v63;
      *v26 = *v27;
      v84 = ((v26 + 23) & 0xFFFFFFFFFFFFFFF8);
      v85 = ((v27 + 23) & 0xFFFFFFFFFFFFFFF8);
      *v84 = *v85;
      v86 = (v84 + 15) & 0xFFFFFFFFFFFFFFF8;
      v87 = (v85 + 15) & 0xFFFFFFFFFFFFFFF8;
      *v86 = *v87;
      *(v86 + 8) = *(v87 + 8);
      *(v86 + 9) = *(v87 + 9);
      v88 = ((((v25 & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
      v89 = &v19[v88 + 10];
      v90 = &v20[v88 + 10];
      *v89 = *v90;
      v89 &= 0xFFFFFFFFFFFFFFF8;
      v90 &= 0xFFFFFFFFFFFFFFF8;
      *(v89 + 8) = *(v90 + 8);
      v91 = ((v89 + 31) & 0xFFFFFFFFFFFFFFF8);
      v92 = ((v90 + 31) & 0xFFFFFFFFFFFFFFF8);
      *v91 = *v92;
      *((v91 + 23) & 0xFFFFFFFFFFFFFFF8) = *((v92 + 23) & 0xFFFFFFFFFFFFFFF8);
      v93 = (((((v88 + 18) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
      v94 = &v19[v93 + 16];
      v95 = &v20[v93 + 16];
      v96 = *v95;
      v97 = *(v95 + 1);
      v98 = *(v95 + 2);
      *(v94 + 6) = *(v95 + 6);
      *(v94 + 1) = v97;
      *(v94 + 2) = v98;
      *v94 = v96;
      v99 = (v93 + 23) & 0xFFFFFFFFFFFFFFF8;
      v100 = &v19[v99 + 56];
      v101 = &v20[v99 + 56];
      *v100 = *v101;
      *((v100 + 23) & 0xFFFFFFFFFFFFFFF8) = *((v101 + 23) & 0xFFFFFFFFFFFFFFF8);
      v102 = (((v99 + 63) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
      v103 = &v19[v102 + 16];
      v104 = &v20[v102 + 16];
      v105 = *v104;
      v106 = *(v104 + 1);
      v107 = *(v104 + 2);
      *(v103 + 6) = *(v104 + 6);
      *(v103 + 1) = v106;
      *(v103 + 2) = v107;
      *v103 = v105;
      v108 = (v102 + 23) & 0xFFFFFFFFFFFFFFF8;
      *&v19[v108 + 56] = *&v20[v108 + 56];
      v109 = (v108 + 63) & 0xFFFFFFFFFFFFFFF8;
      *&v19[v109 + 8] = *&v20[v109 + 8];
      v110 = (v109 + 15) & 0xFFFFFFFFFFFFFFF8;
      v111 = &v19[v110 + 16];
      v112 = &v20[v110 + 16];
      v113 = *v112;
      v114 = *(v112 + 1);
      *(v111 + 25) = *(v112 + 25);
      *v111 = v113;
      *(v111 + 1) = v114;
      *(v111 + 3) = *(v112 + 3);
      v115 = (v110 + 71) & 0xFFFFFFFFFFFFFFF8;
      v116 = &v19[v115 + 16];
      v117 = &v20[v115 + 16];
      *v116 = *v117;
      v116[8] = v117[8];
      v118 = ((v115 + 23) & 0xFFFFFFFFFFFFFFF8) + 9;
      v119 = &v19[v118];
      v120 = &v20[v118];
      v121 = (v119 + 7) & 0xFFFFFFFFFFFFFFF8;
      v122 = (v120 + 7) & 0xFFFFFFFFFFFFFFF8;
      v123 = *v122;
      v124 = *(v122 + 16);
      v125 = *(v122 + 32);
      *(v121 + 48) = *(v122 + 48);
      *(v121 + 16) = v124;
      *(v121 + 32) = v125;
      *v121 = v123;
      v126 = ((v119 + 63) & 0xFFFFFFFFFFFFFFF8);
      v127 = ((v120 + 63) & 0xFFFFFFFFFFFFFFF8);
      *v126 = *v127;
      *((v126 + 15) & 0xFFFFFFFFFFFFFFF8) = *((v127 + 15) & 0xFFFFFFFFFFFFFFF8);
      v128 = (((v115 + 95) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
      v129 = &v19[v128 + 16];
      v130 = &v20[v128 + 16];
      v131 = *v130;
      v132 = *(v130 + 1);
      v133 = *(v130 + 2);
      *(v129 + 6) = *(v130 + 6);
      *(v129 + 1) = v132;
      *(v129 + 2) = v133;
      *v129 = v131;
      *&v19[((v128 + 23) & 0xFFFFFFFFFFFFFFF8) + 56] = *&v20[((v128 + 23) & 0xFFFFFFFFFFFFFFF8) + 56];
      return result;
    }

LABEL_47:
    v239 = result;
    if (v33 == 1)
    {
      v42 = *v20;
      v19[8] = v20[8];
      *v19 = v42;
      v43 = (&v19[v17] & v18);
      v44 = (&v20[v17] & v18);
      v45 = *(v44 + v23);
      if (v45 > 2)
      {
        v60 = v23 | 1;
        memcpy(v43, v44, v24);
LABEL_87:
        *(v43 + v60) = *(v44 + v60);
        v63 = 1;
LABEL_93:
        result = v239;
        goto LABEL_94;
      }

      if (v45 == 2)
      {
        v72 = v22;
        (*(v15 + 32))(v43, v44);
        v73 = ((v43 + v72) & 0xFFFFFFFFFFFFFFF8);
        v74 = ((v44 + v72) & 0xFFFFFFFFFFFFFFF8);
        v75 = v74[1];
        *v73 = *v74;
        v73[1] = v75;
        v50 = 2;
      }

      else
      {
        if (v45 != 1)
        {
          v76 = *v44;
          v77 = v44[1];
          *(v43 + 4) = *(v44 + 4);
          *v43 = v76;
          v43[1] = v77;
          *(v43 + v23) = 0;
          goto LABEL_86;
        }

        v46 = v22;
        (*(v15 + 32))(v43, v44);
        v47 = ((v43 + v46) & 0xFFFFFFFFFFFFFFF8);
        v48 = ((v44 + v46) & 0xFFFFFFFFFFFFFFF8);
        v49 = v48[1];
        *v47 = *v48;
        v47[1] = v49;
        v50 = 1;
      }

      *(v43 + v23) = v50;
LABEL_86:
      v60 = v23 | 1;
      goto LABEL_87;
    }

    v51 = *v20;
    v19[8] = v20[8];
    *v19 = v51;
    v52 = (&v19[v17] & v18);
    v53 = (&v20[v17] & v18);
    v54 = *(v53 + v23);
    if (v54 > 2)
    {
      v61 = v23 | 1;
      memcpy(v52, v53, v24);
LABEL_92:
      v63 = 0;
      *(v52 + v61) = *(v53 + v61);
      goto LABEL_93;
    }

    if (v54 == 2)
    {
      v78 = v22;
      (*(v15 + 32))(v52, v53);
      v79 = ((v52 + v78) & 0xFFFFFFFFFFFFFFF8);
      v80 = ((v53 + v78) & 0xFFFFFFFFFFFFFFF8);
      v81 = v80[1];
      *v79 = *v80;
      v79[1] = v81;
      v59 = 2;
    }

    else
    {
      if (v54 != 1)
      {
        v82 = *v53;
        v83 = v53[1];
        *(v52 + 4) = *(v53 + 4);
        *v52 = v82;
        v52[1] = v83;
        *(v52 + v23) = 0;
        goto LABEL_91;
      }

      v55 = v22;
      (*(v15 + 32))(v52, v53);
      v56 = ((v52 + v55) & 0xFFFFFFFFFFFFFFF8);
      v57 = ((v53 + v55) & 0xFFFFFFFFFFFFFFF8);
      v58 = v57[1];
      *v56 = *v57;
      v56[1] = v58;
      v59 = 1;
    }

    *(v52 + v23) = v59;
LABEL_91:
    v61 = v23 | 1;
    goto LABEL_92;
  }

  if (v28 < 0xFFFFFFFF)
  {
    v37 = v19[v25];
    v38 = v37 - 3;
    if (v37 < 3)
    {
      goto LABEL_65;
    }

    if (v25 <= 3)
    {
      v39 = v25;
    }

    else
    {
      v39 = 4;
    }

    if (v39 > 1)
    {
      if (v39 == 2)
      {
        v40 = *v19;
        if (v25 >= 4)
        {
          goto LABEL_59;
        }
      }

      else
      {
        if (v39 == 3)
        {
          v40 = *v19 | (v19[2] << 16);
          if (v25 < 4)
          {
            goto LABEL_64;
          }

LABEL_59:
          v37 = v40 + 3;
          goto LABEL_65;
        }

        v40 = *v19;
        if (v25 >= 4)
        {
          goto LABEL_59;
        }
      }

LABEL_64:
      v37 = (v40 | (v38 << (8 * v25))) + 3;
LABEL_65:
      v64 = result;
      if (v37 == 2)
      {
LABEL_71:

        goto LABEL_72;
      }

      v65 = &v19[v17] & v18;
      v66 = *(v65 + v23);
      if (v66 <= 2)
      {
        if (v66 != 2 && v66 != 1)
        {
          if (!*(v65 + 8))
          {
            goto LABEL_72;
          }

          goto LABEL_70;
        }

        v67 = *(*(v14 - 8) + 64) + 7;
        (*(v15 + 8))(v65, v14);
        if (*((v67 + v65) & 0xFFFFFFFFFFFFFFF8) >= 0xFFFFFFFFuLL)
        {
LABEL_70:

          goto LABEL_71;
        }
      }

LABEL_72:

      v68 = ((((((((((v25 & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 18) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
      v69 = v19 + 16;
      if (*&v19[v68 + 64] != 1)
      {
      }

      v70 = (((((v68 + 23) & 0xFFFFFFFFFFFFFFF8) + 63) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
      if (*&v69[v70 + 48] != 1)
      {
      }

      v71 = (((((((((((v70 + 23) & 0xFFFFFFFFFFFFFFF8) + 63) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 71) & 0xFFFFFFFFFFFFFFF8) + 95) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
      if (*&v69[v71 + 48] != 1)
      {
      }

      memcpy(v19, v20, ((((v71 + 23) & 0xFFFFFFFFFFFFFFF8) + 63) & 0xFFFFFFFFFFFFFFF8) + 16);
      return v64;
    }

    if (!v39)
    {
      goto LABEL_65;
    }

    v40 = *v19;
    if (v25 < 4)
    {
      goto LABEL_64;
    }

    goto LABEL_59;
  }

  if (v19 != v20)
  {
    v29 = v19[v25];
    v30 = v29 - 3;
    if (v29 < 3)
    {
      goto LABEL_100;
    }

    if (v25 <= 3)
    {
      v31 = v25;
    }

    else
    {
      v31 = 4;
    }

    if (v31 <= 1)
    {
      if (!v31)
      {
        goto LABEL_100;
      }

      v32 = *v19;
    }

    else if (v31 == 2)
    {
      v32 = *v19;
    }

    else if (v31 == 3)
    {
      v32 = *v19 | (v19[2] << 16);
    }

    else
    {
      v32 = *v19;
    }

    if (v25 < 4)
    {
      v29 = (v32 | (v30 << (8 * v25))) + 3;
    }

    else
    {
      v29 = v32 + 3;
    }

LABEL_100:
    v238 = v14;
    v240 = result;
    if (v29 == 2)
    {
      v237 = *(*(v14 - 8) + 64) + 7;
    }

    else
    {
      v134 = &v19[v17] & v18;
      v135 = *(v134 + v23);
      if (v135 > 2)
      {
        goto LABEL_111;
      }

      v237 = *(*(v14 - 8) + 64) + 7;
      if (v135 == 2 || v135 == 1)
      {
        (*(v15 + 8))(&v19[v17] & v18, v14);
        v22 = v237;
        v24 = v23 | 1;
        if (*((v237 + v134) & 0xFFFFFFFFFFFFFFF8) < 0xFFFFFFFFuLL)
        {
          goto LABEL_111;
        }
      }

      else
      {
        v24 = v23 | 1;
        if (!*((&v19[v17] & v18) + 8))
        {
          goto LABEL_111;
        }
      }
    }

    v24 = v23 | 1;
    v22 = v237;
LABEL_111:
    v136 = v20[v25];
    v137 = v136 - 3;
    result = v240;
    if (v136 < 3)
    {
      v139 = v238;
      goto LABEL_127;
    }

    if (v25 <= 3)
    {
      v138 = v25;
    }

    else
    {
      v138 = 4;
    }

    v139 = v238;
    if (v138 <= 1)
    {
      if (!v138)
      {
        goto LABEL_127;
      }

      v140 = *v20;
    }

    else if (v138 == 2)
    {
      v140 = *v20;
    }

    else if (v138 == 3)
    {
      v140 = *v20 | (v20[2] << 16);
    }

    else
    {
      v140 = *v20;
    }

    if (v25 < 4)
    {
      v136 = (v140 | (v137 << (8 * v25))) + 3;
    }

    else
    {
      v136 = v140 + 3;
    }

LABEL_127:
    if (v136 == 2)
    {
      *v19 = *v20;
      v150 = 2;
LABEL_151:
      v19[v25] = v150;
      goto LABEL_152;
    }

    if (v136 == 1)
    {
      v141 = *v20;
      v19[8] = v20[8];
      *v19 = v141;
      v142 = (&v19[v17] & v18);
      v143 = (&v20[v17] & v18);
      v144 = *(v143 + v23);
      if (v144 > 2)
      {
        v160 = v24;
        memcpy(v142, v143, v24);
LABEL_144:
        *(v142 + v160) = *(v143 + v160);
        v150 = 1;
LABEL_150:
        result = v240;
        goto LABEL_151;
      }

      if (v144 == 2)
      {
        v162 = v22;
        (*(v15 + 32))(v142, v143, v139);
        v163 = ((v142 + v162) & 0xFFFFFFFFFFFFFFF8);
        v164 = ((v143 + v162) & 0xFFFFFFFFFFFFFFF8);
        v165 = v164[1];
        *v163 = *v164;
        v163[1] = v165;
        v149 = 2;
      }

      else
      {
        if (v144 != 1)
        {
          v166 = *v143;
          v167 = v143[1];
          *(v142 + 4) = *(v143 + 4);
          *v142 = v166;
          v142[1] = v167;
          *(v142 + v23) = 0;
          goto LABEL_143;
        }

        v145 = v22;
        (*(v15 + 32))(v142, v143, v139);
        v146 = ((v142 + v145) & 0xFFFFFFFFFFFFFFF8);
        v147 = ((v143 + v145) & 0xFFFFFFFFFFFFFFF8);
        v148 = v147[1];
        *v146 = *v147;
        v146[1] = v148;
        v149 = 1;
      }

      *(v142 + v23) = v149;
LABEL_143:
      v160 = v23 | 1;
      goto LABEL_144;
    }

    v151 = *v20;
    v19[8] = v20[8];
    *v19 = v151;
    v152 = (&v19[v17] & v18);
    v153 = (&v20[v17] & v18);
    v154 = *(v153 + v23);
    if (v154 > 2)
    {
      v161 = v24;
      memcpy(v152, v153, v24);
LABEL_149:
      v150 = 0;
      *(v152 + v161) = *(v153 + v161);
      goto LABEL_150;
    }

    if (v154 == 2)
    {
      v168 = v22;
      (*(v15 + 32))(v152, v153, v139);
      v169 = ((v152 + v168) & 0xFFFFFFFFFFFFFFF8);
      v170 = ((v153 + v168) & 0xFFFFFFFFFFFFFFF8);
      v171 = v170[1];
      *v169 = *v170;
      v169[1] = v171;
      v159 = 2;
    }

    else
    {
      if (v154 != 1)
      {
        v172 = *v153;
        v173 = v153[1];
        *(v152 + 4) = *(v153 + 4);
        *v152 = v172;
        v152[1] = v173;
        *(v152 + v23) = 0;
        goto LABEL_148;
      }

      v155 = v22;
      (*(v15 + 32))(v152, v153, v139);
      v156 = ((v152 + v155) & 0xFFFFFFFFFFFFFFF8);
      v157 = ((v153 + v155) & 0xFFFFFFFFFFFFFFF8);
      v158 = v157[1];
      *v156 = *v157;
      v156[1] = v158;
      v159 = 1;
    }

    *(v152 + v23) = v159;
LABEL_148:
    v161 = v23 | 1;
    goto LABEL_149;
  }

LABEL_152:
  v64 = result;
  v175 = *v27;
  v174 = v27 + 23;
  *v26 = v175;

  v176 = ((v26 + 23) & 0xFFFFFFFFFFFFFFF8);
  *v176 = *(v174 & 0xFFFFFFFFFFFFFFF8);
  v177 = (v176 + 15) & 0xFFFFFFFFFFFFFFF8;
  v178 = ((v174 & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  *v177 = *v178;
  *(v177 + 8) = *(v178 + 8);
  *(v177 + 9) = *(v178 + 9);
  v179 = ((((v25 & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v180 = &v19[v179 + 10];
  v181 = &v20[v179 + 10];
  *v180 = *v181;
  v180 &= 0xFFFFFFFFFFFFFFF8;
  v181 &= 0xFFFFFFFFFFFFFFF8;
  *(v180 + 8) = *(v181 + 8);
  *(v180 + 16) = *(v181 + 16);
  v182 = ((v180 + 31) & 0xFFFFFFFFFFFFFFF8);
  v183 = ((v181 + 31) & 0xFFFFFFFFFFFFFFF8);
  *v182 = *v183;
  v182[1] = v183[1];

  *((v182 + 23) & 0xFFFFFFFFFFFFFFF8) = *((v183 + 23) & 0xFFFFFFFFFFFFFFF8);

  v184 = (((((v179 + 18) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  v185 = &v19[v184 + 16];
  v186 = &v20[v184 + 16];
  if (*(v185 + 6) == 1)
  {
    v187 = *v186;
    v188 = *(v186 + 1);
    v189 = *(v186 + 2);
    *(v185 + 6) = *(v186 + 6);
    *(v185 + 1) = v188;
    *(v185 + 2) = v189;
    *v185 = v187;
  }

  else if (*(v186 + 6) == 1)
  {
    sub_18E6AC114(&v19[v184 + 16]);
    v191 = *(v186 + 1);
    v190 = *(v186 + 2);
    v192 = *v186;
    *(v185 + 6) = *(v186 + 6);
    *(v185 + 1) = v191;
    *(v185 + 2) = v190;
    *v185 = v192;
  }

  else
  {
    *v185 = *v186;
    *(v185 + 1) = *(v186 + 1);
    *(v185 + 2) = *(v186 + 2);
    *(v185 + 3) = *(v186 + 3);
    *(v185 + 4) = *(v186 + 4);
    *(v185 + 5) = *(v186 + 5);
    *(v185 + 6) = *(v186 + 6);
  }

  v193 = (v184 + 23) & 0xFFFFFFFFFFFFFFF8;
  v194 = &v19[v193 + 56];
  v195 = &v20[v193 + 56];
  *v194 = *v195;
  *(v194 + 1) = *(v195 + 1);
  v196 = ((v194 + 23) & 0xFFFFFFFFFFFFFFF8);
  v197 = ((v195 + 23) & 0xFFFFFFFFFFFFFFF8);
  *v196 = *v197;
  v196[1] = v197[1];
  v198 = (((v193 + 63) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  v199 = &v19[v198 + 16];
  v200 = &v20[v198 + 16];
  if (*(v199 + 6) == 1)
  {
    v201 = *v200;
    v202 = *(v200 + 1);
    v203 = *(v200 + 2);
    *(v199 + 6) = *(v200 + 6);
    *(v199 + 1) = v202;
    *(v199 + 2) = v203;
    *v199 = v201;
  }

  else if (*(v200 + 6) == 1)
  {
    sub_18E6AC114(&v19[v198 + 16]);
    v205 = *(v200 + 1);
    v204 = *(v200 + 2);
    v206 = *v200;
    *(v199 + 6) = *(v200 + 6);
    *(v199 + 1) = v205;
    *(v199 + 2) = v204;
    *v199 = v206;
  }

  else
  {
    *v199 = *v200;
    *(v199 + 1) = *(v200 + 1);
    *(v199 + 2) = *(v200 + 2);
    *(v199 + 3) = *(v200 + 3);
    *(v199 + 4) = *(v200 + 4);
    *(v199 + 5) = *(v200 + 5);
    *(v199 + 6) = *(v200 + 6);
  }

  v207 = (v198 + 23) & 0xFFFFFFFFFFFFFFF8;
  *&v19[v207 + 56] = *&v20[v207 + 56];
  v208 = (v207 + 63) & 0xFFFFFFFFFFFFFFF8;
  *&v19[v208 + 8] = *&v20[v208 + 8];

  v209 = (v208 + 15) & 0xFFFFFFFFFFFFFFF8;
  v210 = &v19[v209 + 16];
  v211 = &v20[v209 + 16];
  v212 = *v211;
  v210[16] = v211[16];
  *v210 = v212;
  v213 = v211[40];
  *(v210 + 24) = *(v211 + 24);
  v210[40] = v213;
  *(v210 + 3) = *(v211 + 3);

  v214 = (v209 + 71) & 0xFFFFFFFFFFFFFFF8;
  v215 = &v19[v214 + 16];
  v216 = &v20[v214 + 16];
  *v215 = *v216;
  v215[8] = v216[8];
  v217 = ((v214 + 23) & 0xFFFFFFFFFFFFFFF8) + 9;
  v218 = &v19[v217];
  v219 = &v20[v217];
  v220 = (v218 + 7) & 0xFFFFFFFFFFFFFFF8;
  v221 = (v219 + 7) & 0xFFFFFFFFFFFFFFF8;
  *v220 = *v221;
  v222 = *(v221 + 8);
  *(v220 + 24) = *(v221 + 24);
  *(v220 + 8) = v222;
  v223 = *(v221 + 32);
  *(v220 + 48) = *(v221 + 48);
  *(v220 + 32) = v223;
  v224 = ((v219 + 63) & 0xFFFFFFFFFFFFFFF8);
  v225 = ((v218 + 63) & 0xFFFFFFFFFFFFFFF8);
  *v225 = *v224;
  v226 = ((v225 + 15) & 0xFFFFFFFFFFFFFFF8);
  v227 = ((v224 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v226 = *v227;
  v226[1] = v227[1];
  v228 = (((v214 + 95) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v229 = &v19[v228 + 16];
  v230 = &v20[v228 + 16];
  if (*(v229 + 6) == 1)
  {
    v231 = *v230;
    v232 = *(v230 + 1);
    v233 = *(v230 + 2);
    *(v229 + 6) = *(v230 + 6);
    *(v229 + 1) = v232;
    *(v229 + 2) = v233;
    *v229 = v231;
  }

  else if (*(v230 + 6) == 1)
  {
    sub_18E6AC114(&v19[v228 + 16]);
    v235 = *(v230 + 1);
    v234 = *(v230 + 2);
    v236 = *v230;
    *(v229 + 6) = *(v230 + 6);
    *(v229 + 1) = v235;
    *(v229 + 2) = v234;
    *v229 = v236;
  }

  else
  {
    *v229 = *v230;
    *(v229 + 1) = *(v230 + 1);
    *(v229 + 2) = *(v230 + 2);
    *(v229 + 3) = *(v230 + 3);
    *(v229 + 4) = *(v230 + 4);
    *(v229 + 5) = *(v230 + 5);
    *(v229 + 6) = *(v230 + 6);
  }

  *&v19[((v228 + 23) & 0xFFFFFFFFFFFFFFF8) + 56] = *&v20[((v228 + 23) & 0xFFFFFFFFFFFFFFF8) + 56];

  return v64;
}

uint64_t sub_18E6E3A04(int *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  v4 = *(v3 + 80) & 0xF8;
  v5 = v4 | 7;
  v6 = ((*(v3 + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 32;
  if (v6 <= 0x28)
  {
    v6 = 40;
  }

  v7 = v6 + ((v4 + 16) & ~(v4 | 7));
  if (v7 <= 8)
  {
    v7 = 8;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0x7FFFFFFF)
  {
    goto LABEL_24;
  }

  v8 = ((v4 + 80) & ~v5) + ((((((((((((((((((((((((((((((((v7 + 31) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 18) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 63) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 63) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 71) & 0xFFFFFFFFFFFFFFF8) + 95) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 63) & 0xFFFFFFFFFFFFFFF8) + 16;
  v9 = v8 & 0xFFFFFFF8;
  v10 = a2 - 2147483645;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v10 = 2;
  }

  if (v10 >= 0x10000)
  {
    v11 = 4;
  }

  else
  {
    v11 = 2;
  }

  if (v10 < 0x100)
  {
    v12 = 1;
  }

  else
  {
    v12 = v11;
  }

  if (v12 == 4)
  {
    v13 = *(a1 + v8);
    if (v13)
    {
      goto LABEL_21;
    }
  }

  else
  {
    if (v12 == 2)
    {
      v13 = *(a1 + v8);
      if (!v13)
      {
        goto LABEL_24;
      }

LABEL_21:
      v15 = v13 - 1;
      if (v9)
      {
        v15 = 0;
        v16 = *a1;
      }

      else
      {
        v16 = 0;
      }

      return (v16 | v15) + 0x7FFFFFFF;
    }

    v13 = *(a1 + v8);
    if (v13)
    {
      goto LABEL_21;
    }
  }

LABEL_24:
  v17 = *((((((((((((((a1 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + v5 + 9) & ~v5) + v7 + 8) & 0xFFFFFFFFFFFFFFF8);
  if (v17 >= 0xFFFFFFFF)
  {
    LODWORD(v17) = -1;
  }

  if ((v17 + 1) >= 2)
  {
    return v17;
  }

  else
  {
    return 0;
  }
}

unsigned int *sub_18E6E3C10(unsigned int *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v4 = *(*(*(a4 + 16) - 8) + 80) & 0xF8;
  v5 = v4 | 7;
  v6 = (v4 + 16) & ~(v4 | 7);
  v7 = ((*(*(*(a4 + 16) - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 32;
  if (v7 <= 0x28)
  {
    v7 = 40;
  }

  v8 = (v4 + 80) & ~v5;
  v9 = v7 + v6;
  if (v7 + v6 <= 8)
  {
    v9 = 8;
  }

  v10 = v8 + ((((((((((((((((((((((((((((((((v9 + 31) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 18) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 63) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 63) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 71) & 0xFFFFFFFFFFFFFFF8) + 95) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 63) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (a3 < 0x7FFFFFFF)
  {
    v13 = 0;
  }

  else
  {
    v11 = a3 - 2147483645;
    if (v8 + ((((((((((((((((((((((((((((((((v9 + 31) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 18) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 63) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 63) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 71) & 0xFFFFFFF8) + 95) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 63) & 0xFFFFFFF8) != -16)
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
      v13 = 1;
    }

    else
    {
      v13 = v12;
    }
  }

  if (a2 > 0x7FFFFFFE)
  {
    if (v8 + ((((((((((((((((((((((((((((((((v9 + 31) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 18) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 63) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 63) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 71) & 0xFFFFFFF8) + 95) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 63) & 0xFFFFFFF8) == -16)
    {
      v14 = a2 - 2147483646;
    }

    else
    {
      v14 = 1;
    }

    if (v8 + ((((((((((((((((((((((((((((((((v9 + 31) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 18) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 63) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 63) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 71) & 0xFFFFFFF8) + 95) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 63) & 0xFFFFFFF8) != -16)
    {
      v15 = a2 - 0x7FFFFFFF;
      v16 = result;
      bzero(result, v10);
      result = v16;
      *v16 = v15;
    }

    if (v13 > 1)
    {
      if (v13 == 2)
      {
        *(result + v10) = v14;
      }

      else
      {
        *(result + v10) = v14;
      }
    }

    else if (v13)
    {
      *(result + v10) = v14;
    }
  }

  else
  {
    if (v13 <= 1)
    {
      if (v13)
      {
        *(result + v10) = 0;
        if (!a2)
        {
          return result;
        }

LABEL_31:
        *((((((((((((((result + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + v5 + 9) & ~v5) + v9 + 8) & 0xFFFFFFFFFFFFFFF8) = a2;
        return result;
      }

LABEL_30:
      if (!a2)
      {
        return result;
      }

      goto LABEL_31;
    }

    if (v13 == 2)
    {
      *(result + v10) = 0;
      goto LABEL_30;
    }

    *(result + v10) = 0;
    if (a2)
    {
      goto LABEL_31;
    }
  }

  return result;
}

uint64_t sub_18E6E3E74(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a1[2];
  if (v5 == 1)
  {
    TupleTypeMetadata = type metadata accessor for CombinerElement(319, *(a1[3] & 0xFFFFFFFFFFFFFFFELL), *(a1[5] & 0xFFFFFFFFFFFFFFFELL), a4);
    if (v7 > 0x3F)
    {
      return TupleTypeMetadata;
    }

    TupleTypeMetadata = swift_checkMetadataState();
    if (v8 > 0x3F)
    {
      return TupleTypeMetadata;
    }

LABEL_9:
    v20[1] = *(TupleTypeMetadata - 8) + 64;
    v20[2] = "0";
    v20[3] = &unk_18E72F1A0;
    swift_initStructMetadata();
    return 0;
  }

  MEMORY[0x1EEE9AC00](a1);
  if (v5)
  {
    v11 = (a1[3] & 0xFFFFFFFFFFFFFFFELL);
    v12 = (a1[5] & 0xFFFFFFFFFFFFFFFELL);
    v13 = (v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
    v14 = v5;
    do
    {
      v16 = *v11++;
      v15 = v16;
      v17 = *v12++;
      *v13++ = type metadata accessor for CombinerElement(255, v15, v17, v9);
      --v14;
    }

    while (v14);
  }

  TupleTypeMetadata = swift_getTupleTypeMetadata();
  if (v18 <= 0x3F)
  {
    goto LABEL_9;
  }

  return TupleTypeMetadata;
}

void *sub_18E6E3FFC(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = a1;
  v6 = *(*(a3 - 8) + 80);
  if ((v6 & 0x20000) != 0)
  {
    v10 = *a2;
    *v5 = *a2;
    v5 = (v10 + ((v6 + 16) & ~v6));
  }

  else
  {
    v8 = *(a3 + 16);
    if (v8 == 1)
    {
      TupleTypeMetadata = type metadata accessor for CombinerElement(0, *(*(a3 + 24) & 0xFFFFFFFFFFFFFFFELL), *(*(a3 + 40) & 0xFFFFFFFFFFFFFFFELL), a4);
    }

    else
    {
      MEMORY[0x1EEE9AC00](a1);
      if (v8)
      {
        v13 = (*(a3 + 24) & 0xFFFFFFFFFFFFFFFELL);
        v14 = (*(a3 + 40) & 0xFFFFFFFFFFFFFFFELL);
        v15 = (&v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
        v16 = v8;
        do
        {
          v18 = *v13++;
          v17 = v18;
          v19 = *v14++;
          *v15++ = type metadata accessor for CombinerElement(255, v17, v19, v11);
          --v16;
        }

        while (v16);
      }

      TupleTypeMetadata = swift_getTupleTypeMetadata();
    }

    (*(*(TupleTypeMetadata - 8) + 16))(v5, a2);
    v20 = *(a3 + 52);
    v21 = (v5 + v20);
    v22 = a2 + v20;
    v23 = *(a2 + v20);
    if (v23)
    {
      v24 = *(v22 + 1);
      *v21 = v23;
      v21[1] = v24;
    }

    else
    {
      *v21 = *v22;
    }

    v25 = *(v22 + 2);
    if (v25)
    {
      v26 = *(v22 + 3);
      v21[2] = v25;
      v21[3] = v26;
    }

    else
    {
      *(v21 + 1) = *(v22 + 1);
    }

    v27 = *(v22 + 5);
    v21[4] = *(v22 + 4);
    v21[5] = v27;
    *(v5 + *(a3 + 56)) = *(a2 + *(a3 + 56));
  }

  return v5;
}

uint64_t sub_18E6E4200(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a2 + 16);
  if (v6 == 1)
  {
    TupleTypeMetadata = type metadata accessor for CombinerElement(0, *(*(a2 + 24) & 0xFFFFFFFFFFFFFFFELL), *(*(a2 + 40) & 0xFFFFFFFFFFFFFFFELL), a4);
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1);
    if (v6)
    {
      v10 = (*(a2 + 24) & 0xFFFFFFFFFFFFFFFELL);
      v11 = (*(a2 + 40) & 0xFFFFFFFFFFFFFFFELL);
      v12 = (&v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
      v13 = v6;
      do
      {
        v15 = *v10++;
        v14 = v15;
        v16 = *v11++;
        *v12++ = type metadata accessor for CombinerElement(255, v14, v16, v8);
        --v13;
      }

      while (v13);
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
  }

  (*(*(TupleTypeMetadata - 8) + 8))(a1);
  v17 = (a1 + *(a2 + 52));
  if (*v17)
  {
  }

  if (v17[2])
  {
  }
}

uint64_t sub_18E6E4360(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a3 + 16);
  if (v7 == 1)
  {
    TupleTypeMetadata = type metadata accessor for CombinerElement(0, *(*(a3 + 24) & 0xFFFFFFFFFFFFFFFELL), *(*(a3 + 40) & 0xFFFFFFFFFFFFFFFELL), a4);
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1);
    if (v7)
    {
      v11 = (*(a3 + 24) & 0xFFFFFFFFFFFFFFFELL);
      v12 = (*(a3 + 40) & 0xFFFFFFFFFFFFFFFELL);
      v13 = (&v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
      v14 = v7;
      do
      {
        v16 = *v11++;
        v15 = v16;
        v17 = *v12++;
        *v13++ = type metadata accessor for CombinerElement(255, v15, v17, v9);
        --v14;
      }

      while (v14);
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
  }

  (*(*(TupleTypeMetadata - 8) + 16))(a1, a2);
  v18 = *(a3 + 52);
  v19 = (a1 + v18);
  v20 = a2 + v18;
  v21 = *(a2 + v18);
  if (v21)
  {
    v22 = *(v20 + 8);
    *v19 = v21;
    v19[1] = v22;
  }

  else
  {
    *v19 = *v20;
  }

  v23 = *(v20 + 16);
  if (v23)
  {
    v24 = *(v20 + 24);
    v19[2] = v23;
    v19[3] = v24;
  }

  else
  {
    *(v19 + 1) = *(v20 + 16);
  }

  v25 = *(v20 + 40);
  v19[4] = *(v20 + 32);
  v19[5] = v25;
  *(a1 + *(a3 + 56)) = *(a2 + *(a3 + 56));

  return a1;
}

uint64_t sub_18E6E4504(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a3 + 16);
  if (v7 == 1)
  {
    TupleTypeMetadata = type metadata accessor for CombinerElement(0, *(*(a3 + 24) & 0xFFFFFFFFFFFFFFFELL), *(*(a3 + 40) & 0xFFFFFFFFFFFFFFFELL), a4);
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1);
    if (v7)
    {
      v11 = (*(a3 + 24) & 0xFFFFFFFFFFFFFFFELL);
      v12 = (*(a3 + 40) & 0xFFFFFFFFFFFFFFFELL);
      v13 = (&v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
      v14 = v7;
      do
      {
        v16 = *v11++;
        v15 = v16;
        v17 = *v12++;
        *v13++ = type metadata accessor for CombinerElement(255, v15, v17, v9);
        --v14;
      }

      while (v14);
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
  }

  (*(*(TupleTypeMetadata - 8) + 24))(a1, a2);
  v18 = *(a3 + 52);
  v19 = (a1 + v18);
  v20 = a2 + v18;
  v21 = *(a1 + v18);
  v22 = *(a2 + v18);
  if (v21)
  {
    if (v22)
    {
      v23 = *(v20 + 8);
      *v19 = v22;
      v19[1] = v23;

      goto LABEL_14;
    }
  }

  else if (v22)
  {
    v24 = *(v20 + 8);
    *v19 = v22;
    v19[1] = v24;

    goto LABEL_14;
  }

  *v19 = *v20;
LABEL_14:
  v25 = *(v20 + 16);
  if (!v19[2])
  {
    if (v25)
    {
      v27 = *(v20 + 24);
      v19[2] = v25;
      v19[3] = v27;

      goto LABEL_21;
    }

LABEL_20:
    *(v19 + 1) = *(v20 + 16);
    goto LABEL_21;
  }

  if (!v25)
  {

    goto LABEL_20;
  }

  v26 = *(v20 + 24);
  v19[2] = v25;
  v19[3] = v26;

LABEL_21:
  v28 = *(v20 + 40);
  v19[4] = *(v20 + 32);
  v19[5] = v28;

  *(a1 + *(a3 + 56)) = *(a2 + *(a3 + 56));
  return a1;
}

uint64_t sub_18E6E4718(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a3 + 16);
  if (v7 == 1)
  {
    TupleTypeMetadata = type metadata accessor for CombinerElement(0, *(*(a3 + 24) & 0xFFFFFFFFFFFFFFFELL), *(*(a3 + 40) & 0xFFFFFFFFFFFFFFFELL), a4);
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1);
    if (v7)
    {
      v11 = (*(a3 + 24) & 0xFFFFFFFFFFFFFFFELL);
      v12 = (*(a3 + 40) & 0xFFFFFFFFFFFFFFFELL);
      v13 = (&v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
      v14 = v7;
      do
      {
        v16 = *v11++;
        v15 = v16;
        v17 = *v12++;
        *v13++ = type metadata accessor for CombinerElement(255, v15, v17, v9);
        --v14;
      }

      while (v14);
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
  }

  (*(*(TupleTypeMetadata - 8) + 32))(a1, a2);
  v18 = *(a3 + 52);
  v19 = *(a3 + 56);
  v20 = (a1 + v18);
  v21 = (a2 + v18);
  v22 = v21[1];
  *v20 = *v21;
  v20[1] = v22;
  v20[2] = v21[2];
  *(a1 + v19) = *(a2 + v19);
  return a1;
}

uint64_t sub_18E6E4878(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a3 + 16);
  if (v7 == 1)
  {
    TupleTypeMetadata = type metadata accessor for CombinerElement(0, *(*(a3 + 24) & 0xFFFFFFFFFFFFFFFELL), *(*(a3 + 40) & 0xFFFFFFFFFFFFFFFELL), a4);
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1);
    if (v7)
    {
      v11 = (*(a3 + 24) & 0xFFFFFFFFFFFFFFFELL);
      v12 = (*(a3 + 40) & 0xFFFFFFFFFFFFFFFELL);
      v13 = (&v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
      v14 = v7;
      do
      {
        v16 = *v11++;
        v15 = v16;
        v17 = *v12++;
        *v13++ = type metadata accessor for CombinerElement(255, v15, v17, v9);
        --v14;
      }

      while (v14);
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
  }

  (*(*(TupleTypeMetadata - 8) + 40))(a1, a2);
  v18 = *(a3 + 52);
  v19 = a1 + v18;
  v20 = a2 + v18;
  v21 = *(a1 + v18);
  v22 = *(a2 + v18);
  if (v21)
  {
    if (v22)
    {
      v23 = *(v20 + 8);
      *v19 = v22;
      *(v19 + 8) = v23;

      goto LABEL_14;
    }
  }

  else if (v22)
  {
    v24 = *(v20 + 8);
    *v19 = v22;
    *(v19 + 8) = v24;
    goto LABEL_14;
  }

  *v19 = *v20;
LABEL_14:
  v25 = *(v20 + 16);
  if (!*(v19 + 16))
  {
    if (v25)
    {
      v27 = *(v20 + 24);
      *(v19 + 16) = v25;
      *(v19 + 24) = v27;
      goto LABEL_21;
    }

LABEL_20:
    *(v19 + 16) = *(v20 + 16);
    goto LABEL_21;
  }

  if (!v25)
  {

    goto LABEL_20;
  }

  v26 = *(v20 + 24);
  *(v19 + 16) = v25;
  *(v19 + 24) = v26;

LABEL_21:
  *(v19 + 32) = *(v20 + 32);

  *(a1 + *(a3 + 56)) = *(a2 + *(a3 + 56));
  return a1;
}

uint64_t sub_18E6E4AAC(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v4 <= 0x3F)
  {
    result = type metadata accessor for CombinerElement.State(319, result, *(a1 + 24), v3);
    if (v5 <= 0x3F)
    {
      swift_initStructMetadata();
      return 0;
    }
  }

  return result;
}

uint64_t *sub_18E6E4B80(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  v10 = *(v9 + 64);
  if (((v10 + 7) & 0xFFFFFFFFFFFFFFF8) + 32 <= 0x28)
  {
    v11 = 40;
  }

  else
  {
    v11 = ((v10 + 7) & 0xFFFFFFFFFFFFFFF8) + 32;
  }

  v12 = *(v9 + 80);
  v13 = v12 & 0xF8 | 7;
  v14 = (((v7 + v13) & ~v13) + v11) | 2;
  v15 = v13 | *(v6 + 80);
  v16 = (*(v6 + 80) | v12) & 0x100000;
  if (v15 != 7 || v16 != 0 || v14 > 0x18)
  {
    v19 = *a2;
    *a1 = *a2;
    a1 = (v19 + ((v15 + 16) & ~v15));
  }

  else
  {
    v20 = AssociatedTypeWitness;
    (*(v6 + 16))(a1, a2, v5);
    v21 = a1 + v7 + 7;
    v22 = v21 & 0xFFFFFFFFFFFFFFF8;
    v23 = a2 + v7 + 7;
    v24 = v23 & 0xFFFFFFFFFFFFFFF8;
    v25 = *((v23 & 0xFFFFFFFFFFFFFFF8) + v11);
    if (v25 > 2)
    {
      memcpy((v21 & 0xFFFFFFFFFFFFFFF8), (v23 & 0xFFFFFFFFFFFFFFF8), v11 | 1);
    }

    else if (v25 == 2)
    {
      (*(v9 + 16))(v21 & 0xFFFFFFFFFFFFFFF8, v23 & 0xFFFFFFFFFFFFFFF8, v20);
      v28 = ((v21 | 7) + v10) & 0xFFFFFFFFFFFFFFF8;
      v29 = ((v23 | 7) + v10) & 0xFFFFFFFFFFFFFFF8;
      if (*v29 < 0xFFFFFFFFuLL)
      {
        v32 = *(v29 + 16);
        *v28 = *v29;
        *(v28 + 16) = v32;
      }

      else
      {
        *v28 = *v29;
        *(v28 + 8) = *(v29 + 8);
        *(v28 + 16) = *(v29 + 16);
        *(v28 + 24) = *(v29 + 24);
      }

      *(v22 + v11) = 2;
    }

    else if (v25 == 1)
    {
      (*(v9 + 16))(v21 & 0xFFFFFFFFFFFFFFF8, v23 & 0xFFFFFFFFFFFFFFF8, v20);
      v26 = ((v21 | 7) + v10) & 0xFFFFFFFFFFFFFFF8;
      v27 = ((v23 | 7) + v10) & 0xFFFFFFFFFFFFFFF8;
      if (*v27 < 0xFFFFFFFFuLL)
      {
        v31 = *(v27 + 16);
        *v26 = *v27;
        *(v26 + 16) = v31;
      }

      else
      {
        *v26 = *v27;
        *(v26 + 8) = *(v27 + 8);
        *(v26 + 16) = *(v27 + 16);
        *(v26 + 24) = *(v27 + 24);
      }

      *(v22 + v11) = 1;
    }

    else
    {
      *v22 = *v24;
      v30 = *(v24 + 8);
      if (v30)
      {
        *(v22 + 8) = v30;
        *(v22 + 16) = *(v24 + 16);
        *(v22 + 24) = *(v24 + 24);
        *(v22 + 32) = *(v24 + 32);
      }

      else
      {
        v33 = *(v24 + 24);
        *(v22 + 8) = *(v24 + 8);
        *(v22 + 24) = v33;
      }

      *(v22 + v11) = 0;
    }

    *((v11 | 1) + v22) = *((v11 | 1) + v24);
  }

  return a1;
}

unint64_t sub_18E6E4EC4(uint64_t a1, uint64_t a2)
{
  v3 = *(*(a2 + 16) - 8) + 8;
  (*v3)(a1, *(a2 + 16));
  v4 = *(v3 + 56) + a1;
  result = swift_getAssociatedTypeWitness();
  v6 = *(result - 8);
  v7 = *(v6 + 80) & 0xF8 | 7;
  v8 = (v4 + v7) & ~v7;
  v9 = *(v6 + 64) + 7;
  v10 = (v9 & 0xFFFFFFFFFFFFFFF8) + 32;
  if (v10 <= 0x28)
  {
    v10 = 40;
  }

  v11 = *(v8 + v10);
  if (v11 <= 2)
  {
    if (v11 == 2 || v11 == 1)
    {
      (*(v6 + 8))(v8, result);
      result = *((v9 + v8) & 0xFFFFFFFFFFFFFFF8);
      if (result < 0xFFFFFFFF)
      {
        return result;
      }
    }

    else
    {
      result = *(v8 + 8);
      if (!result)
      {
        return result;
      }
    }
  }

  return result;
}

uint64_t sub_18E6E5050(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 16;
  (*v5)(a1, a2, *(a3 + 16));
  v6 = *(v5 + 48);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  v9 = *(v8 + 80) & 0xF8 | 7;
  v10 = ((v6 + v9 + a1) & ~v9);
  v11 = ((v6 + v9 + a2) & ~v9);
  v12 = *(v8 + 64) + 7;
  if ((v12 & 0xFFFFFFFFFFFFFFF8) + 32 <= 0x28)
  {
    v13 = 40;
  }

  else
  {
    v13 = (v12 & 0xFFFFFFFFFFFFFFF8) + 32;
  }

  v14 = *(v11 + v13);
  if (v14 > 2)
  {
    memcpy(v10, v11, v13 | 1);
  }

  else if (v14 == 2)
  {
    (*(v8 + 16))(v10, v11, AssociatedTypeWitness);
    v17 = (v10 + v12) & 0xFFFFFFFFFFFFFFF8;
    v18 = (v11 + v12) & 0xFFFFFFFFFFFFFFF8;
    if (*v18 < 0xFFFFFFFFuLL)
    {
      v21 = *(v18 + 16);
      *v17 = *v18;
      *(v17 + 16) = v21;
    }

    else
    {
      *v17 = *v18;
      *(v17 + 8) = *(v18 + 8);
      *(v17 + 16) = *(v18 + 16);
      *(v17 + 24) = *(v18 + 24);
    }

    *(v10 + v13) = 2;
  }

  else if (v14 == 1)
  {
    (*(v8 + 16))(v10, v11, AssociatedTypeWitness);
    v15 = (v10 + v12) & 0xFFFFFFFFFFFFFFF8;
    v16 = (v11 + v12) & 0xFFFFFFFFFFFFFFF8;
    if (*v16 < 0xFFFFFFFFuLL)
    {
      v20 = *(v16 + 16);
      *v15 = *v16;
      *(v15 + 16) = v20;
    }

    else
    {
      *v15 = *v16;
      *(v15 + 8) = *(v16 + 8);
      *(v15 + 16) = *(v16 + 16);
      *(v15 + 24) = *(v16 + 24);
    }

    *(v10 + v13) = 1;
  }

  else
  {
    *v10 = *v11;
    v19 = v11[1];
    if (v19)
    {
      v10[1] = v19;
      v10[2] = v11[2];
      v10[3] = v11[3];
      v10[4] = v11[4];
    }

    else
    {
      v22 = *(v11 + 3);
      *(v10 + 1) = *(v11 + 1);
      *(v10 + 3) = v22;
    }

    *(v10 + v13) = 0;
  }

  *(v10 + (v13 | 1)) = *(v11 + (v13 | 1));
  return a1;
}

uint64_t sub_18E6E52F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 24;
  (*v5)(a1, a2, *(a3 + 16));
  v6 = *(v5 + 40);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  v9 = *(v8 + 80) & 0xF8 | 7;
  v10 = ((v6 + v9 + a1) & ~v9);
  v11 = ((v6 + v9 + a2) & ~v9);
  v12 = *(v8 + 64) + 7;
  if ((v12 & 0xFFFFFFFFFFFFFFF8) + 32 <= 0x28)
  {
    v13 = 40;
  }

  else
  {
    v13 = (v12 & 0xFFFFFFFFFFFFFFF8) + 32;
  }

  v14 = *(v10 + v13);
  v15 = *(v11 + v13);
  if (v14 <= 2)
  {
    if (v15 <= 2)
    {
      if (v10 == v11)
      {
        goto LABEL_23;
      }

      if (v14 == 2 || v14 == 1)
      {
        (*(v8 + 8))(v10, AssociatedTypeWitness);
        if (*((v10 + v12) & 0xFFFFFFFFFFFFFFF8) < 0xFFFFFFFFuLL)
        {
          goto LABEL_28;
        }
      }

      else if (!v10[1])
      {
        goto LABEL_28;
      }

LABEL_28:
      v20 = *(v11 + v13);
      if ((v13 & 0xFFFFFFF8) != 0 && v20 >= 3)
      {
        v20 = *v11 + 3;
      }

      if (v20 != 2)
      {
        if (v20 != 1)
        {
          goto LABEL_36;
        }

LABEL_14:
        (*(v8 + 16))(v10, v11, AssociatedTypeWitness);
        v16 = (v10 + v12) & 0xFFFFFFFFFFFFFFF8;
        v17 = (v11 + v12) & 0xFFFFFFFFFFFFFFF8;
        if (*v17 < 0xFFFFFFFFuLL)
        {
          v19 = *(v17 + 16);
          *v16 = *v17;
          *(v16 + 16) = v19;
        }

        else
        {
          *v16 = *v17;
          *(v16 + 8) = *(v17 + 8);
          *(v16 + 16) = *(v17 + 16);
          *(v16 + 24) = *(v17 + 24);
        }

        *(v10 + v13) = 1;
        goto LABEL_23;
      }

      goto LABEL_39;
    }

    if (v14 == 2 || v14 == 1)
    {
      (*(v8 + 8))(v10, AssociatedTypeWitness);
      if (*((v10 + v12) & 0xFFFFFFFFFFFFFFF8) >= 0xFFFFFFFFuLL)
      {
        goto LABEL_21;
      }
    }

    else if (v10[1])
    {
LABEL_21:
    }

LABEL_22:
    memcpy(v10, v11, v13 | 1);
    goto LABEL_23;
  }

  if (v15 > 2)
  {
    goto LABEL_22;
  }

  if (v15 != 2)
  {
    if (v15 != 1)
    {
LABEL_36:
      *v10 = *v11;
      v22 = v11[1];
      if (v22)
      {
        v10[1] = v22;
        v10[2] = v11[2];
        v10[3] = v11[3];
        v10[4] = v11[4];
      }

      else
      {
        v26 = *(v11 + 3);
        *(v10 + 1) = *(v11 + 1);
        *(v10 + 3) = v26;
      }

      *(v10 + v13) = 0;
      goto LABEL_23;
    }

    goto LABEL_14;
  }

LABEL_39:
  (*(v8 + 16))(v10, v11, AssociatedTypeWitness);
  v23 = (v10 + v12) & 0xFFFFFFFFFFFFFFF8;
  v24 = (v11 + v12) & 0xFFFFFFFFFFFFFFF8;
  if (*v24 < 0xFFFFFFFFuLL)
  {
    v25 = *(v24 + 16);
    *v23 = *v24;
    *(v23 + 16) = v25;
  }

  else
  {
    *v23 = *v24;
    *(v23 + 8) = *(v24 + 8);
    *(v23 + 16) = *(v24 + 16);
    *(v23 + 24) = *(v24 + 24);
  }

  *(v10 + v13) = 2;
LABEL_23:
  *(v10 + (v13 | 1)) = *(v11 + (v13 | 1));
  return a1;
}

uint64_t sub_18E6E56E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 32;
  (*v5)(a1, a2, *(a3 + 16));
  v6 = *(v5 + 32);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  v9 = *(v8 + 80) & 0xF8 | 7;
  v10 = ((v6 + v9 + a1) & ~v9);
  v11 = ((v6 + v9 + a2) & ~v9);
  v12 = *(v8 + 64) + 7;
  if ((v12 & 0xFFFFFFFFFFFFFFF8) + 32 <= 0x28)
  {
    v13 = 40;
  }

  else
  {
    v13 = (v12 & 0xFFFFFFFFFFFFFFF8) + 32;
  }

  v14 = *(v11 + v13);
  if (v14 > 2)
  {
    memcpy(v10, v11, v13 | 1);
  }

  else if (v14 == 2)
  {
    (*(v8 + 32))(v10, v11, AssociatedTypeWitness);
    v18 = ((v10 + v12) & 0xFFFFFFFFFFFFFFF8);
    v19 = ((v11 + v12) & 0xFFFFFFFFFFFFFFF8);
    v20 = v19[1];
    *v18 = *v19;
    v18[1] = v20;
    *(v10 + v13) = 2;
  }

  else if (v14 == 1)
  {
    (*(v8 + 32))(v10, v11, AssociatedTypeWitness);
    v15 = ((v10 + v12) & 0xFFFFFFFFFFFFFFF8);
    v16 = ((v11 + v12) & 0xFFFFFFFFFFFFFFF8);
    v17 = v16[1];
    *v15 = *v16;
    v15[1] = v17;
    *(v10 + v13) = 1;
  }

  else
  {
    v21 = *v11;
    v22 = v11[1];
    *(v10 + 4) = *(v11 + 4);
    *v10 = v21;
    v10[1] = v22;
    *(v10 + v13) = 0;
  }

  *(v10 + (v13 | 1)) = *(v11 + (v13 | 1));
  return a1;
}

uint64_t sub_18E6E58BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 40;
  (*v5)(a1, a2, *(a3 + 16));
  v6 = *(v5 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  v9 = *(v8 + 80) & 0xF8 | 7;
  v10 = ((v6 + v9 + a1) & ~v9);
  v11 = ((v6 + v9 + a2) & ~v9);
  v12 = *(v8 + 64) + 7;
  if ((v12 & 0xFFFFFFFFFFFFFFF8) + 32 <= 0x28)
  {
    v13 = 40;
  }

  else
  {
    v13 = (v12 & 0xFFFFFFFFFFFFFFF8) + 32;
  }

  v14 = *(v10 + v13);
  v15 = *(v11 + v13);
  if (v14 > 2)
  {
    if (v15 <= 2)
    {
      if (v15 != 2)
      {
        if (v15 != 1)
        {
LABEL_32:
          v22 = *v11;
          v23 = v11[1];
          v10[4] = *(v11 + 4);
          *v10 = v22;
          *(v10 + 1) = v23;
          *(v10 + v13) = 0;
          goto LABEL_35;
        }

        goto LABEL_14;
      }

LABEL_33:
      (*(v8 + 32))(v10, v11, AssociatedTypeWitness);
      v24 = ((v10 + v12) & 0xFFFFFFFFFFFFFFF8);
      v25 = ((v11 + v12) & 0xFFFFFFFFFFFFFFF8);
      v26 = v25[1];
      *v24 = *v25;
      v24[1] = v26;
      v19 = 2;
      goto LABEL_34;
    }

    goto LABEL_21;
  }

  if (v15 > 2)
  {
    if (v14 == 2 || v14 == 1)
    {
      (*(v8 + 8))(v10, AssociatedTypeWitness);
      if (*((v10 + v12) & 0xFFFFFFFFFFFFFFF8) >= 0xFFFFFFFFuLL)
      {
        goto LABEL_20;
      }
    }

    else if (v10[1])
    {
LABEL_20:
    }

LABEL_21:
    memcpy(v10, v11, v13 | 1);
    goto LABEL_35;
  }

  if (v10 != v11)
  {
    if (v14 == 2 || v14 == 1)
    {
      (*(v8 + 8))(v10, AssociatedTypeWitness);
      if (*((v10 + v12) & 0xFFFFFFFFFFFFFFF8) < 0xFFFFFFFFuLL)
      {
        goto LABEL_24;
      }
    }

    else if (!v10[1])
    {
      goto LABEL_24;
    }

LABEL_24:
    v20 = *(v11 + v13);
    if ((v13 & 0xFFFFFFF8) != 0 && v20 >= 3)
    {
      v20 = *v11 + 3;
    }

    if (v20 != 2)
    {
      if (v20 != 1)
      {
        goto LABEL_32;
      }

LABEL_14:
      (*(v8 + 32))(v10, v11, AssociatedTypeWitness);
      v16 = ((v10 + v12) & 0xFFFFFFFFFFFFFFF8);
      v17 = ((v11 + v12) & 0xFFFFFFFFFFFFFFF8);
      v18 = v17[1];
      *v16 = *v17;
      v16[1] = v18;
      v19 = 1;
LABEL_34:
      *(v10 + v13) = v19;
      goto LABEL_35;
    }

    goto LABEL_33;
  }

LABEL_35:
  *(v10 + (v13 | 1)) = *(v11 + (v13 | 1));
  return a1;
}

uint64_t sub_18E6E5BD8(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  v8 = *(swift_getAssociatedTypeWitness() - 8);
  v9 = 40;
  if (((*(v8 + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 > 0x28)
  {
    v9 = ((*(v8 + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 32;
  }

  if (v7 <= 0xFE)
  {
    v10 = 254;
  }

  else
  {
    v10 = v7;
  }

  if (!a2)
  {
    return 0;
  }

  v11 = *(v8 + 80) & 0xF8 | 7;
  v12 = *(v6 + 64) + v11;
  if (a2 > v10)
  {
    v13 = ((v12 & ~v11) + v9) | 2;
    v14 = 8 * v13;
    if (v13 > 3)
    {
      goto LABEL_9;
    }

    v16 = ((a2 - v10 + ~(-1 << v14)) >> v14) + 1;
    if (HIWORD(v16))
    {
      v15 = *(a1 + v13);
      if (!v15)
      {
        goto LABEL_21;
      }

      goto LABEL_16;
    }

    if (v16 > 0xFF)
    {
      v15 = *(a1 + v13);
      if (!*(a1 + v13))
      {
        goto LABEL_21;
      }

      goto LABEL_16;
    }

    if (v16 >= 2)
    {
LABEL_9:
      v15 = *(a1 + v13);
      if (!*(a1 + v13))
      {
        goto LABEL_21;
      }

LABEL_16:
      v17 = (v15 - 1) << v14;
      if (v13 <= 3)
      {
        v18 = *a1;
      }

      else
      {
        v17 = 0;
        v18 = *a1;
      }

      v19 = v10 + (v18 | v17);
      return (v19 + 1);
    }
  }

LABEL_21:
  if (v7 < 0xFE)
  {
    v22 = *((v9 | 1) + ((a1 + v12) & ~v11));
    if (v22 < 2)
    {
      return 0;
    }

    v19 = (v22 + 2147483646) & 0x7FFFFFFF;
    return (v19 + 1);
  }

  v20 = *(v6 + 48);

  return v20(a1, v7, v5);
}

void sub_18E6E5E10(_WORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v24 = v8;
  v9 = *(v8 + 84);
  v10 = *(swift_getAssociatedTypeWitness() - 8);
  if (((*(v10 + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 32 <= 0x28)
  {
    v11 = 40;
  }

  else
  {
    v11 = ((*(v10 + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 32;
  }

  if (v9 <= 0xFE)
  {
    v12 = 254;
  }

  else
  {
    v12 = v9;
  }

  v13 = *(v10 + 80) & 0xF8 | 7;
  v14 = *(v8 + 64) + v13;
  v15 = ((v14 & ~v13) + v11) | 2;
  if (a3 <= v12)
  {
    v16 = 0;
  }

  else if (v15 <= 3)
  {
    v19 = ((a3 - v12 + ~(-1 << (8 * v15))) >> (8 * v15)) + 1;
    if (HIWORD(v19))
    {
      v16 = 4;
    }

    else
    {
      if (v19 < 0x100)
      {
        v20 = 1;
      }

      else
      {
        v20 = 2;
      }

      if (v19 >= 2)
      {
        v16 = v20;
      }

      else
      {
        v16 = 0;
      }
    }
  }

  else
  {
    v16 = 1;
  }

  if (v12 >= a2)
  {
    if (v16 > 1)
    {
      if (v16 != 2)
      {
        *(a1 + v15) = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_33;
      }

      *(a1 + v15) = 0;
    }

    else if (v16)
    {
      *(a1 + v15) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_33;
    }

    if (!a2)
    {
      return;
    }

LABEL_33:
    if (v9 < 0xFE)
    {
      v22 = ((a1 + v14) & ~v13);
      if (a2 > 0xFE)
      {
        v23 = a2 - 255;
        bzero(v22, v11 | 2);
        if (v11)
        {
          *v22 = v23;
        }

        else
        {
          *v22 = v23;
        }
      }

      else
      {
        *(v22 + (v11 | 1)) = a2 + 1;
      }
    }

    else
    {
      v21 = *(v24 + 56);

      v21(a1, a2, v9, v7);
    }

    return;
  }

  v17 = ~v12 + a2;
  if (v15 <= 3)
  {
    v18 = (v17 >> (8 * v15)) + 1;
    bzero(a1, v15);
    *a1 = v17 & ~(-1 << (8 * v15));
    if (v16 > 1)
    {
LABEL_14:
      if (v16 == 2)
      {
        *(a1 + v15) = v18;
      }

      else
      {
        *(a1 + v15) = v18;
      }

      return;
    }
  }

  else
  {
    bzero(a1, v15);
    *a1 = v17;
    v18 = 1;
    if (v16 > 1)
    {
      goto LABEL_14;
    }
  }

  if (v16)
  {
    *(a1 + v15) = v18;
  }
}

uint64_t sub_18E6E610C(uint64_t a1)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  type metadata accessor for GestureOutput(255, AssociatedTypeWitness, v2, v3);
  result = sub_18E72B438();
  if (v5 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t sub_18E6E61CC(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v5 = *(*(swift_getAssociatedTypeWitness() - 8) + 80) & 0xF8;
  *a1 = *a2;
  return  + ((v5 + 23) & ~v5 & 0x1F8);
}

unint64_t sub_18E6E6254(uint64_t *a1, uint64_t a2)
{
  result = swift_getAssociatedTypeWitness();
  v4 = *(*(result - 8) + 64);
  v5 = ((v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 32;
  if (v5 <= 0x28)
  {
    v5 = 40;
  }

  v6 = *(a1 + v5);
  if (v6 <= 2)
  {
    if (v6 == 2 || v6 == 1)
    {
      (*(*(result - 8) + 8))(a1, result);
      result = *((a1 + v4 + 7) & 0xFFFFFFFFFFFFFFF8);
      if (result < 0xFFFFFFFF)
      {
        return result;
      }
    }

    else
    {
      result = a1[1];
      if (!result)
      {
        return result;
      }
    }
  }

  return result;
}

void *sub_18E6E6388(void *a1, void *a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = *(v6 + 64);
  if (((v7 + 7) & 0xFFFFFFFFFFFFFFF8) + 32 <= 0x28)
  {
    v8 = 40;
  }

  else
  {
    v8 = ((v7 + 7) & 0xFFFFFFFFFFFFFFF8) + 32;
  }

  v9 = *(a2 + v8);
  if (v9 > 2)
  {
    memcpy(a1, a2, v8 | 1);
  }

  else if (v9 == 2)
  {
    (*(v6 + 16))(a1, a2, AssociatedTypeWitness);
    v12 = (a1 + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
    v13 = (a2 + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
    if (*v13 < 0xFFFFFFFFuLL)
    {
      v19 = *(v13 + 16);
      *v12 = *v13;
      *(v12 + 16) = v19;
    }

    else
    {
      *v12 = *v13;
      *(v12 + 8) = *(v13 + 8);
      *(v12 + 16) = *(v13 + 16);
      *(v12 + 24) = *(v13 + 24);
    }

    *(a1 + v8) = 2;
  }

  else if (v9 == 1)
  {
    (*(v6 + 16))(a1, a2, AssociatedTypeWitness);
    v10 = (a1 + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
    v11 = (a2 + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
    if (*v11 < 0xFFFFFFFFuLL)
    {
      v18 = *(v11 + 16);
      *v10 = *v11;
      *(v10 + 16) = v18;
    }

    else
    {
      *v10 = *v11;
      *(v10 + 8) = *(v11 + 8);
      *(v10 + 16) = *(v11 + 16);
      *(v10 + 24) = *(v11 + 24);
    }

    *(a1 + v8) = 1;
  }

  else
  {
    *a1 = *a2;
    v14 = a2[1];
    if (v14)
    {
      v16 = a2[2];
      v15 = a2[3];
      a1[1] = v14;
      a1[2] = v16;
      v17 = a2[4];
      a1[3] = v15;
      a1[4] = v17;
    }

    else
    {
      v20 = *(a2 + 3);
      *(a1 + 1) = *(a2 + 1);
      *(a1 + 3) = v20;
    }

    *(a1 + v8) = 0;
  }

  *(a1 + (v8 | 1)) = *(a2 + (v8 | 1));
  return a1;
}

void *sub_18E6E65D0(void *a1, void *a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = *(v6 + 64);
  if (((v7 + 7) & 0xFFFFFFFFFFFFFFF8) + 32 <= 0x28)
  {
    v8 = 40;
  }

  else
  {
    v8 = ((v7 + 7) & 0xFFFFFFFFFFFFFFF8) + 32;
  }

  v9 = *(a1 + v8);
  v10 = *(a2 + v8);
  if (v9 <= 2)
  {
    if (v10 <= 2)
    {
      if (a1 == a2)
      {
        goto LABEL_43;
      }

      if (v9 == 2 || v9 == 1)
      {
        (*(v6 + 8))(a1, AssociatedTypeWitness);
        if (*((a1 + v7 + 7) & 0xFFFFFFFFFFFFFFF8) < 0xFFFFFFFFuLL)
        {
          goto LABEL_27;
        }
      }

      else if (!a1[1])
      {
        goto LABEL_27;
      }

LABEL_27:
      v15 = *(a2 + v8);
      if ((v8 & 0xFFFFFFF8) != 0 && v15 >= 3)
      {
        v15 = *a2 + 3;
      }

      if (v15 != 2)
      {
        if (v15 != 1)
        {
          goto LABEL_35;
        }

        goto LABEL_14;
      }

LABEL_38:
      (*(v6 + 16))(a1, a2, AssociatedTypeWitness);
      v18 = (a1 + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
      v19 = (a2 + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
      if (*v19 < 0xFFFFFFFFuLL)
      {
        v20 = *(v19 + 16);
        *v18 = *v19;
        *(v18 + 16) = v20;
      }

      else
      {
        *v18 = *v19;
        *(v18 + 8) = *(v19 + 8);
        *(v18 + 16) = *(v19 + 16);
        *(v18 + 24) = *(v19 + 24);
      }

      v14 = 2;
      goto LABEL_42;
    }

    if (v9 == 2 || v9 == 1)
    {
      (*(v6 + 8))(a1, AssociatedTypeWitness);
      if (*((a1 + v7 + 7) & 0xFFFFFFFFFFFFFFF8) >= 0xFFFFFFFFuLL)
      {
        goto LABEL_21;
      }
    }

    else if (a1[1])
    {
LABEL_21:
    }

LABEL_22:
    memcpy(a1, a2, v8 | 1);
    goto LABEL_43;
  }

  if (v10 > 2)
  {
    goto LABEL_22;
  }

  if (v10 == 2)
  {
    goto LABEL_38;
  }

  if (v10 == 1)
  {
LABEL_14:
    (*(v6 + 16))(a1, a2, AssociatedTypeWitness);
    v11 = (a1 + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
    v12 = (a2 + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
    if (*v12 < 0xFFFFFFFFuLL)
    {
      v13 = *(v12 + 16);
      *v11 = *v12;
      *(v11 + 16) = v13;
    }

    else
    {
      *v11 = *v12;
      *(v11 + 8) = *(v12 + 8);
      *(v11 + 16) = *(v12 + 16);
      *(v11 + 24) = *(v12 + 24);
    }

    v14 = 1;
LABEL_42:
    *(a1 + v8) = v14;
    goto LABEL_43;
  }

LABEL_35:
  *a1 = *a2;
  v17 = a2[1];
  if (v17)
  {
    a1[1] = v17;
    a1[2] = a2[2];
    a1[3] = a2[3];
    a1[4] = a2[4];
  }

  else
  {
    v22 = *(a2 + 3);
    *(a1 + 1) = *(a2 + 1);
    *(a1 + 3) = v22;
  }

  *(a1 + v8) = 0;
LABEL_43:
  *(a1 + (v8 | 1)) = *(a2 + (v8 | 1));
  return a1;
}

_OWORD *sub_18E6E6978(_OWORD *a1, _OWORD *a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = *(v6 + 64);
  if (((v7 + 7) & 0xFFFFFFFFFFFFFFF8) + 32 <= 0x28)
  {
    v8 = 40;
  }

  else
  {
    v8 = ((v7 + 7) & 0xFFFFFFFFFFFFFFF8) + 32;
  }

  v9 = *(a2 + v8);
  if (v9 > 2)
  {
    memcpy(a1, a2, v8 | 1);
  }

  else if (v9 == 2)
  {
    (*(v6 + 32))(a1, a2, AssociatedTypeWitness);
    v13 = ((a1 + v7 + 7) & 0xFFFFFFFFFFFFFFF8);
    v14 = ((a2 + v7 + 7) & 0xFFFFFFFFFFFFFFF8);
    v15 = v14[1];
    *v13 = *v14;
    v13[1] = v15;
    *(a1 + v8) = 2;
  }

  else if (v9 == 1)
  {
    (*(v6 + 32))(a1, a2, AssociatedTypeWitness);
    v10 = ((a1 + v7 + 7) & 0xFFFFFFFFFFFFFFF8);
    v11 = ((a2 + v7 + 7) & 0xFFFFFFFFFFFFFFF8);
    v12 = v11[1];
    *v10 = *v11;
    v10[1] = v12;
    *(a1 + v8) = 1;
  }

  else
  {
    v16 = a2[1];
    *a1 = *a2;
    a1[1] = v16;
    *(a1 + 4) = *(a2 + 4);
    *(a1 + v8) = 0;
  }

  *(a1 + (v8 | 1)) = *(a2 + (v8 | 1));
  return a1;
}

unsigned __int8 *sub_18E6E6B00(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = *(v6 + 64);
  if (((v7 + 7) & 0xFFFFFFFFFFFFFFF8) + 32 <= 0x28)
  {
    v8 = 40;
  }

  else
  {
    v8 = ((v7 + 7) & 0xFFFFFFFFFFFFFFF8) + 32;
  }

  v9 = a1[v8];
  v10 = a2[v8];
  if (v9 > 2)
  {
    if (v10 <= 2)
    {
      if (v10 != 2)
      {
        if (v10 != 1)
        {
LABEL_32:
          v17 = *(a2 + 1);
          *a1 = *a2;
          *(a1 + 1) = v17;
          *(a1 + 4) = *(a2 + 4);
          a1[v8] = 0;
          goto LABEL_35;
        }

        goto LABEL_14;
      }

LABEL_33:
      (*(v6 + 32))(a1, a2, AssociatedTypeWitness);
      v18 = (&a1[v7 + 7] & 0xFFFFFFFFFFFFFFF8);
      v19 = (&a2[v7 + 7] & 0xFFFFFFFFFFFFFFF8);
      v20 = v19[1];
      *v18 = *v19;
      v18[1] = v20;
      v14 = 2;
      goto LABEL_34;
    }

    goto LABEL_21;
  }

  if (v10 > 2)
  {
    if (v9 == 2 || v9 == 1)
    {
      (*(v6 + 8))(a1, AssociatedTypeWitness);
      if (*(&a1[v7 + 7] & 0xFFFFFFFFFFFFFFF8) >= 0xFFFFFFFFuLL)
      {
        goto LABEL_20;
      }
    }

    else if (*(a1 + 1))
    {
LABEL_20:
    }

LABEL_21:
    memcpy(a1, a2, v8 | 1);
    goto LABEL_35;
  }

  if (a1 != a2)
  {
    if (v9 == 2 || v9 == 1)
    {
      (*(v6 + 8))(a1, AssociatedTypeWitness);
      if (*(&a1[v7 + 7] & 0xFFFFFFFFFFFFFFF8) < 0xFFFFFFFFuLL)
      {
        goto LABEL_24;
      }
    }

    else if (!*(a1 + 1))
    {
      goto LABEL_24;
    }

LABEL_24:
    v15 = a2[v8];
    if ((v8 & 0xFFFFFFF8) != 0 && v15 >= 3)
    {
      v15 = *a2 + 3;
    }

    if (v15 != 2)
    {
      if (v15 != 1)
      {
        goto LABEL_32;
      }

LABEL_14:
      (*(v6 + 32))(a1, a2, AssociatedTypeWitness);
      v11 = (&a1[v7 + 7] & 0xFFFFFFFFFFFFFFF8);
      v12 = (&a2[v7 + 7] & 0xFFFFFFFFFFFFFFF8);
      v13 = v12[1];
      *v11 = *v12;
      v11[1] = v13;
      v14 = 1;
LABEL_34:
      a1[v8] = v14;
      goto LABEL_35;
    }

    goto LABEL_33;
  }

LABEL_35:
  a1[v8 | 1] = a2[v8 | 1];
  return a1;
}

uint64_t sub_18E6E6DD8(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = ((*(*(swift_getAssociatedTypeWitness() - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 32;
  if (v5 <= 0x28)
  {
    v5 = 40;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_26;
  }

  v6 = v5 | 2;
  if ((v5 | 2) <= 3)
  {
    v7 = ((a2 + 65281) >> 16) + 1;
  }

  else
  {
    v7 = 2;
  }

  if (v7 >= 0x10000)
  {
    v8 = 4;
  }

  else
  {
    v8 = 2;
  }

  if (v7 < 0x100)
  {
    v8 = 1;
  }

  if (v7 >= 2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  if (v9 > 1)
  {
    if (v9 == 2)
    {
      v10 = *(a1 + v6);
      if (*(a1 + v6))
      {
        goto LABEL_19;
      }
    }

    else
    {
      v10 = *(a1 + v6);
      if (v10)
      {
        goto LABEL_19;
      }
    }

    goto LABEL_26;
  }

  if (!v9 || (v10 = *(a1 + v6), !*(a1 + v6)))
  {
LABEL_26:
    v13 = *(a1 + v5 + 1);
    if (v13 >= 2)
    {
      return ((v13 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    return 0;
  }

LABEL_19:
  v11 = (v10 - 1) << (8 * v6);
  if (v6 <= 3)
  {
    v12 = *a1;
  }

  else
  {
    v11 = 0;
    v12 = *a1;
  }

  return (v12 | v11) + 255;
}

void sub_18E6E6F10(_WORD *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v7 = ((*(*(swift_getAssociatedTypeWitness() - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 32;
  if (v7 <= 0x28)
  {
    v7 = 40;
  }

  v8 = v7 | 2;
  if (a3 < 0xFF)
  {
    v11 = 0;
    if (a2 > 0xFE)
    {
      goto LABEL_16;
    }

LABEL_24:
    if (v11 > 1)
    {
      if (v11 != 2)
      {
        *(a1 + v8) = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_34;
      }

      *(a1 + v8) = 0;
    }

    else if (v11)
    {
      *(a1 + v8) = 0;
      if (!a2)
      {
        return;
      }

LABEL_34:
      *(a1 + v7 + 1) = a2 + 1;
      return;
    }

    if (!a2)
    {
      return;
    }

    goto LABEL_34;
  }

  if (v8 <= 3)
  {
    v9 = ((a3 + 65281) >> 16) + 1;
  }

  else
  {
    v9 = 2;
  }

  if (v9 >= 0x10000)
  {
    v10 = 4;
  }

  else
  {
    v10 = 2;
  }

  if (v9 < 0x100)
  {
    v10 = 1;
  }

  if (v9 >= 2)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  if (a2 <= 0xFE)
  {
    goto LABEL_24;
  }

LABEL_16:
  v12 = a2 - 255;
  bzero(a1, v7 | 2);
  if (v8 <= 3)
  {
    v13 = HIWORD(v12) + 1;
  }

  else
  {
    v13 = 1;
  }

  if (v8 <= 3)
  {
    *a1 = v12;
    if (v11 > 1)
    {
LABEL_21:
      if (v11 == 2)
      {
        *(a1 + v8) = v13;
      }

      else
      {
        *(a1 + v8) = v13;
      }

      return;
    }
  }

  else
  {
    *a1 = v12;
    if (v11 > 1)
    {
      goto LABEL_21;
    }
  }

  if (v11)
  {
    *(a1 + v8) = v13;
  }
}

uint64_t sub_18E6E7084@<X0>(uint64_t *a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v10 = a1;
  v11 = 8 * a4;
  v48 = a6;
  v49 = a7;
  v50 = a5;
  v47 = a2;
  v46 = a8;
  if (a4 == 1)
  {
    TupleTypeMetadata = *(a5 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1);
    v14 = v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (a4)
    {
      v15 = 0;
      v16 = v13 & 0xFFFFFFFFFFFFFFFELL;
      if (a4 < 4)
      {
        goto LABEL_9;
      }

      if (&v14[-v16] < 0x20)
      {
        goto LABEL_9;
      }

      v15 = a4 & 0xFFFFFFFFFFFFFFFCLL;
      v17 = (v16 + 16);
      v18 = v14 + 16;
      v19 = a4 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v20 = *v17;
        *(v18 - 1) = *(v17 - 1);
        *v18 = v20;
        v17 += 2;
        v18 += 2;
        v19 -= 4;
      }

      while (v19);
      if (v15 != a4)
      {
LABEL_9:
        v21 = a4 - v15;
        v22 = 8 * v15;
        v23 = &v14[8 * v15];
        v24 = (v16 + v22);
        do
        {
          v25 = *v24++;
          *v23 = v25;
          v23 += 8;
          --v21;
        }

        while (v21);
      }
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
  }

  v45[2] = v45;
  v26 = MEMORY[0x1EEE9AC00](TupleTypeMetadata);
  v28 = v45 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45[1] = v45;
  v29 = MEMORY[0x1EEE9AC00](v26);
  v30 = v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a4)
  {
    v31 = (v50 & 0xFFFFFFFFFFFFFFFELL);
    v32 = (v29 + 32);
    v33 = (v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
    v34 = a4;
    do
    {
      if (a4 == 1)
      {
        v35 = 0;
      }

      else
      {
        v35 = *v32;
      }

      v37 = *v31++;
      v36 = v37;
      v38 = &v28[v35];
      v39 = *v10++;
      (*(*(v36 - 8) + 16))(&v28[v35], v39);
      *v33++ = v38;
      v32 += 4;
      --v34;
    }

    while (v34);
  }

  v40 = *a3;
  v41 = *(a3 + 8);
  v42 = *(a3 + 16);
  v43 = *(a3 + 24);
  v52 = *(a3 + 32);
  sub_18E68CB70(v40, v41);
  sub_18E68CB70(v42, v43);
  sub_18E6EA7EC(&v52, v51);
  return sub_18E6E7788(v30, v47 & 1, a3, a4, v50, v48, v49, v46);
}

uint64_t sub_18E6E7304@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  (*(*(a3 - 8) + 32))(a5, a1);
  v10 = *(type metadata accessor for CombinerElement(0, a3, a4, v9) + 36);
  v12 = type metadata accessor for CombinerElement.State(0, a3, a4, v11);
  v13 = *(*(v12 - 8) + 32);

  return v13(a5 + v10, a2, v12);
}

uint64_t sub_18E6E73D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4 + *(a1 + 36);
  v6 = *(a1 + 16);
  v7 = *(a1 + 24);
  result = type metadata accessor for CombinerElement.State(0, v6, v7, a4);
  if (*(v5 + *(result + 36)) == 1)
  {
    (*(*(result - 8) + 8))(v5, result);
    sub_18E6E9F5C(v6, v7, v5);
    v9 = *(v7 + 24);

    return v9(v6, v7);
  }

  return result;
}

uint64_t sub_18E6E749C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4 + *(a1 + 36);
  v6 = *(a1 + 16);
  v7 = *(a1 + 24);
  *(v5 + *(type metadata accessor for CombinerElement.State(0, v6, v7, a4) + 36)) = 1;
  v8 = *(v7 + 32);

  return v8(v6, v7);
}

uint64_t sub_18E6E7520(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v27 = a3;
  v28 = a4;
  v26 = a1;
  v8 = *(a2 + 16);
  v7 = *(a2 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = type metadata accessor for GestureOutput(255, AssociatedTypeWitness, v10, v11);
  v13 = sub_18E72B438();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v25 - v16;
  v18 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v20 = &v25 - v19;
  v21 = v5 + *(a2 + 36);
  *(v21 + *(type metadata accessor for CombinerElement.State(0, v8, v7, v22) + 36)) = 1;
  (*(v14 + 16))(v17, v21, v13);
  if ((*(v18 + 48))(v17, 1, v12) == 1)
  {
    (*(v14 + 8))(v17, v13);
  }

  else
  {
    (*(v18 + 32))(v20, v17, v12);
    v23 = GestureOutput.isFinal.getter(v12);
    (*(v18 + 8))(v20, v12);
    if (v23)
    {
      return 0;
    }
  }

  return (*(v7 + 40))(v26, v27, v28, v8, v7);
}

uint64_t sub_18E6E7788@<X0>(uint64_t a1@<X0>, int a2@<W1>, _OWORD *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v11 = a4;
  v55 = a3;
  v56 = a2;
  v57 = a8;
  v58 = a1;
  if (a4 == 1)
  {
    TupleTypeMetadata = type metadata accessor for CombinerElement(0, *(a5 & 0xFFFFFFFFFFFFFFFELL), *(a7 & 0xFFFFFFFFFFFFFFFELL), 1);
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1);
    v15 = (v14 + 15) & 0xFFFFFFFFFFFFFFF0;
    if (v11)
    {
      v16 = (a5 & 0xFFFFFFFFFFFFFFFELL);
      v17 = (a7 & 0xFFFFFFFFFFFFFFFELL);
      v18 = (&v50 - v15);
      v19 = v11;
      do
      {
        v21 = *v16++;
        v20 = v21;
        v22 = *v17++;
        *v18++ = type metadata accessor for CombinerElement(255, v20, v22, v13);
        --v19;
      }

      while (v19);
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
  }

  v60 = TupleTypeMetadata;
  v53 = *(TupleTypeMetadata - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata);
  v62 = &v50 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65[0] = v11;
  v65[1] = a5;
  v59 = a5;
  v65[2] = a6;
  v65[3] = a7;
  v24 = type metadata accessor for CombinerComponent(0, v65);
  v54 = &v50;
  v51 = *(v24 - 8);
  v52 = v24;
  v25 = MEMORY[0x1EEE9AC00](v24);
  v50 = &v50 - v26;
  if (v11)
  {
    v27 = (v59 & 0xFFFFFFFFFFFFFFFELL);
    v28 = (a7 & 0xFFFFFFFFFFFFFFFELL);
    v29 = (v60 + 32);
    v30 = v58;
    v31 = v11;
    v61 = v11;
    do
    {
      if (v11 == 1)
      {
        v63 = 0;
      }

      else
      {
        v63 = *v29;
      }

      v64 = &v50;
      v33 = *v27++;
      v32 = v33;
      v34 = *v28++;
      v30 += 8;
      MEMORY[0x1EEE9AC00](v25);
      v36 = &v50 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v37 + 16))(v36);
      v39 = type metadata accessor for CombinerElement.State(0, v32, v34, v38);
      MEMORY[0x1EEE9AC00](v39 - 8);
      v41 = &v50 - v40;
      sub_18E6E9F5C(v32, v34, &v50 - v40);
      v25 = sub_18E6E7304(v36, v41, v32, v34, &v62[v63]);
      v29 += 4;
      --v31;
      v11 = v61;
    }

    while (v31);
  }

  v42 = v50;
  (*(v53 + 32))(v50, v62, v60);
  v43 = v52;
  v44 = &v42[*(v52 + 52)];
  v45 = v55;
  v46 = v55[1];
  *v44 = *v55;
  *(v44 + 1) = v46;
  *(v44 + 2) = v45[2];
  v42[*(v43 + 56)] = v56 & 1;
  result = (*(v51 + 32))(v57, v42);
  if (v11)
  {
    v48 = (v59 & 0xFFFFFFFFFFFFFFFELL) - 8;
    v49 = v58 - 8;
    do
    {
      result = (*(*(*(v48 + 8 * v11) - 8) + 8))(*(v49 + 8 * v11));
      --v11;
    }

    while (v11);
  }

  return result;
}

uint64_t sub_18E6E7BBC@<X0>(char *a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  v3 = a1;
  v145 = a3;
  v4 = a2[2];
  v5 = 8 * v4;
  v183 = v4;
  v167 = a2;
  v155 = 8 * v4;
  if (v4 == 1)
  {
    v6 = a2;
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    TupleTypeMetadata = type metadata accessor for GestureOutput(0, AssociatedTypeWitness, v8, v9);
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1);
    v11 = (&v144 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
    if (v4)
    {
      v12 = v167[3] & 0xFFFFFFFFFFFFFFFELL;
      v13 = v167[5] & 0xFFFFFFFFFFFFFFFELL;
      v14 = v11;
      v15 = v183;
      do
      {
        v12 += 8;
        v13 += 8;
        v16 = swift_getAssociatedTypeWitness();
        *v14++ = type metadata accessor for GestureOutput(255, v16, v17, v18);
        --v15;
      }

      while (v15);
    }

    v4 = v183;
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v6 = v167;
    v5 = v155;
  }

  v151 = &v144;
  v153 = TupleTypeMetadata;
  v144 = *(TupleTypeMetadata - 8);
  v19 = MEMORY[0x1EEE9AC00](TupleTypeMetadata);
  v169 = &v144 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v4 == 1)
  {
    v22 = type metadata accessor for CombinerElement(0, *(v6[3] & 0xFFFFFFFFFFFFFFFELL), *(v6[5] & 0xFFFFFFFFFFFFFFFELL), v20);
  }

  else
  {
    MEMORY[0x1EEE9AC00](v19);
    v24 = (&v144 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
    v25 = v4;
    if (v4)
    {
      v26 = (v167[3] & 0xFFFFFFFFFFFFFFFELL);
      v27 = (v167[5] & 0xFFFFFFFFFFFFFFFELL);
      v28 = v24;
      v29 = v25;
      do
      {
        v31 = *v26++;
        v30 = v31;
        v32 = *v27++;
        *v28++ = type metadata accessor for CombinerElement(255, v30, v32, v23);
        --v29;
      }

      while (v29);
    }

    v4 = v25;
    v22 = swift_getTupleTypeMetadata();
    v6 = v167;
    v5 = v155;
  }

  v150 = &v144;
  v158 = v22;
  v156 = *(v22 - 8);
  v33 = MEMORY[0x1EEE9AC00](v22);
  v168 = &v144 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v149 = &v144;
  v35 = MEMORY[0x1EEE9AC00](v33);
  v173 = &v144 - v37;
  if (v4 == 1)
  {
    type metadata accessor for CombinerElement(255, *(v6[3] & 0xFFFFFFFFFFFFFFFELL), *(v6[5] & 0xFFFFFFFFFFFFFFFELL), v36);
    v38 = swift_getAssociatedTypeWitness();
    type metadata accessor for GestureOutput(255, v38, v39, v40);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    v42 = TupleTypeMetadata2;
    v43 = 1;
  }

  else
  {
    v174 = v3;
    v171 = &v144;
    MEMORY[0x1EEE9AC00](v35);
    v175 = &v144 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (v4)
    {
      v45 = (v167[3] & 0xFFFFFFFFFFFFFFFELL);
      v46 = (v167[5] & 0xFFFFFFFFFFFFFFFELL);
      v47 = v175;
      v48 = v183;
      do
      {
        v50 = *v45++;
        v49 = v50;
        v51 = *v46++;
        type metadata accessor for CombinerElement(255, v49, v51, v44);
        v52 = swift_getAssociatedTypeWitness();
        type metadata accessor for GestureOutput(255, v52, v53, v54);
        *v47++ = swift_getTupleTypeMetadata2();
        --v48;
      }

      while (v48);
    }

    v43 = v183;
    TupleTypeMetadata2 = swift_getTupleTypeMetadata();
    v42 = TupleTypeMetadata2;
    v3 = v174;
  }

  v148 = &v144;
  v157 = *(v42 - 8);
  v55 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v171 = &v144 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  v147 = &v144;
  v57 = MEMORY[0x1EEE9AC00](v55);
  v170 = &v144 - v58;
  v146 = &v144;
  MEMORY[0x1EEE9AC00](v57);
  v60 = &v144 - v59;
  v61 = *v3;
  v165 = *(v3 + 1);
  v164 = v61;
  v62 = v3[5];
  v163 = v3[4];
  v162 = v62;
  v161 = v3[6];
  (*(v156 + 16))(v173, v166, v158);
  v154 = v42;
  if (v43)
  {
    v64 = 0;
    v65 = v167[5];
    v160 = v167[3] & 0xFFFFFFFFFFFFFFFELL;
    v159 = v65 & 0xFFFFFFFFFFFFFFFELL;
    v66 = (v42 + 16);
    v175 = 32;
    while (1)
    {
      v67 = v43 == 1 ? 0 : v66[4];
      v68 = type metadata accessor for CombinerElement(255, *(v160 + 8 * v64), *(v159 + 8 * v64), v63);
      v69 = swift_getAssociatedTypeWitness();
      type metadata accessor for GestureOutput(255, v69, v70, v71);
      v72 = swift_getTupleTypeMetadata2();
      v73 = v60;
      v74 = &v60[v67];
      v174 = *(v72 + 48);
      v75 = *(v68 - 8);
      MEMORY[0x1EEE9AC00](v72);
      v77 = &v144 - ((v76 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v75 + 16))(v77, &v173[v78], v68);
      v176[1] = v165;
      v176[0] = v164;
      v177 = v163;
      v178 = v162;
      v179 = v161;
      v79 = v166[*(v167 + 14)];
      WitnessTable = swift_getWitnessTable();
      v81 = v172;
      sub_18E6E8C60(v74, v174 + v74, v77, v176, v79, v68, WitnessTable);
      v172 = v81;
      if (v81)
      {
        break;
      }

      (*(v75 + 8))(v77, v68);
      ++v64;
      v66 += 4;
      v175 += 16;
      v43 = v183;
      v60 = v73;
      if (v183 == v64)
      {
        goto LABEL_26;
      }
    }

    v168 = &v144;
    (*(v75 + 8))(v77, v68);
    if (v64)
    {
      v135 = v160 - 8;
      v136 = v159 - 8;
      do
      {
        v137 = *v66;
        v66 -= 4;
        type metadata accessor for CombinerElement(255, *(v135 + 8 * v64), *(v136 + 8 * v64), v134);
        v138 = swift_getAssociatedTypeWitness();
        type metadata accessor for GestureOutput(255, v138, v139, v140);
        v141 = swift_getTupleTypeMetadata2();
        (*(*(v141 - 8) + 8))(&v73[v137], v141);
        --v64;
      }

      while (v64);
    }

    return (*(v156 + 8))(v173, v158);
  }

  else
  {
LABEL_26:
    v82 = v158;
    (*(v156 + 8))(v173, v158);
    v83 = *(v157 + 16);
    v84 = v154;
    *&v165 = v157 + 16;
    *&v164 = v83;
    v83(v170, v60, v154);
    v152 = v60;
    if (v43)
    {
      v86 = v43;
      v87 = (v167[3] & 0xFFFFFFFFFFFFFFFELL);
      v88 = (v167[5] & 0xFFFFFFFFFFFFFFFELL);
      v89 = (v84 + 32);
      v90 = (v82 + 32);
      do
      {
        if (v183 == 1)
        {
          v174 = 0;
          v175 = v168;
        }

        else
        {
          v175 = &v168[*v90];
          v174 = *v89;
        }

        v92 = *v87++;
        v91 = v92;
        v93 = *v88++;
        v94 = type metadata accessor for CombinerElement(255, v91, v93, v85);
        v95 = swift_getAssociatedTypeWitness();
        v98 = type metadata accessor for GestureOutput(255, v95, v96, v97);
        v99 = swift_getTupleTypeMetadata2();
        v173 = &v144;
        MEMORY[0x1EEE9AC00](v99);
        v101 = &v144 - v100;
        (*(v102 + 16))(&v144 - v100, v174 + v170, v99);
        v103 = *(v99 + 48);
        (*(*(v94 - 8) + 32))(v175, v101, v94);
        (*(*(v98 - 8) + 8))(&v101[v103], v98);
        v89 += 4;
        v90 += 4;
        --v86;
      }

      while (v86);
    }

    v104 = v166;
    (*(v156 + 40))(v166, v168, v158);
    v105 = *(v157 + 8);
    v106 = v154;
    v157 += 8;
    v107 = (v105)(v170, v154);
    v108 = v167;
    v109 = &v104[*(v167 + 13)];
    v110 = *(v109 + 1);
    v180 = *v109;
    v181 = v110;
    v182 = *(v109 + 2);
    v111 = v155;
    MEMORY[0x1EEE9AC00](v107);
    v112 = (v111 + 15) & 0xFFFFFFFFFFFFFFF0;
    v174 = (&v144 - v112);
    v113 = (v164)(v171, v152, v106);
    v115 = v183;
    if (v183)
    {
      v166 = v105;
      v168 = &v144;
      v116 = 0;
      v117 = v108[5];
      v173 = (v108[3] & 0xFFFFFFFFFFFFFFFELL);
      v170 = (v117 & 0xFFFFFFFFFFFFFFFELL);
      v118 = (v106 + 32);
      v119 = (v153 + 32);
      do
      {
        if (v115 == 1)
        {
          v175 = 0;
          v120 = v169;
        }

        else
        {
          v120 = &v169[*v119];
          v175 = *v118;
        }

        v121 = type metadata accessor for CombinerElement(255, *&v173[8 * v116], *&v170[8 * v116], v114);
        v122 = swift_getAssociatedTypeWitness();
        v125 = type metadata accessor for GestureOutput(255, v122, v123, v124);
        v126 = swift_getTupleTypeMetadata2();
        MEMORY[0x1EEE9AC00](v126);
        v128 = &v144 - v127;
        (*(v129 + 16))(&v144 - v127, &v171[v175], v126);
        (*(*(v125 - 8) + 32))(v120, &v128[*(v126 + 48)], v125);
        v174[v116] = v120;
        v130 = (*(*(v121 - 8) + 8))(v128, v121);
        ++v116;
        v118 += 4;
        v119 += 4;
        v115 = v183;
      }

      while (v183 != v116);
      MEMORY[0x1EEE9AC00](v130);
      v132 = &v144 - ((v131 + 15) & 0xFFFFFFFFFFFFFFF0);
      v133 = 0;
      do
      {
        *&v132[8 * v133++] = swift_getAssociatedTypeWitness();
      }

      while (v115 != v133);
      v108 = v167;
      v106 = v154;
      v105 = v166;
    }

    else
    {
      MEMORY[0x1EEE9AC00](v113);
      v132 = &v144 - v112;
    }

    v143 = type metadata accessor for GestureOutputCombiner(0, v115, v132, v108[4]);
    sub_18E701D38(v174, v143, v145);
    (*(v144 + 8))(v169, v153);
    (v105)(v171, v106);
    return (v105)(v152, v106);
  }
}

uint64_t sub_18E6E8C60(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4, int a5, uint64_t a6, uint64_t a7)
{
  v29 = a5;
  v13 = *(a6 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = *(v16 + 32);
  v17 = *(v16 + 48);
  (*(v13 + 16))(v15, v18, v19);
  v20 = *a4;
  v27[1] = a4[1];
  v27[0] = v20;
  v27[2] = v26;
  v28 = v17;
  GestureComponent.tracingUpdate(context:)(v27, a6, a7, a2);
  if (v7)
  {
    return (*(v13 + 8))(v15, a6);
  }

  if (v29)
  {
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v25 = type metadata accessor for GestureOutput(0, AssociatedTypeWitness, v23, v24);
    if (GestureOutput.isFinal.getter(v25))
    {
      (*(a7 + 24))(a6, a7);
    }
  }

  return (*(v13 + 32))(a1, v15, a6);
}

uint64_t sub_18E6E8E30(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v7 = a1[2];
  if (v7 == 1)
  {
    TupleTypeMetadata = type metadata accessor for CombinerElement(0, *(a1[3] & 0xFFFFFFFFFFFFFFFELL), *(a1[5] & 0xFFFFFFFFFFFFFFFELL), a4);
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1);
    if (v7)
    {
      v11 = (a1[3] & 0xFFFFFFFFFFFFFFFELL);
      v12 = (a1[5] & 0xFFFFFFFFFFFFFFFELL);
      v13 = (v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
      v14 = v7;
      do
      {
        v16 = *v11++;
        v15 = v16;
        v17 = *v12++;
        *v13++ = type metadata accessor for CombinerElement(255, v15, v17, v9);
        --v14;
      }

      while (v14);
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
  }

  MEMORY[0x1EEE9AC00](TupleTypeMetadata);
  v43[1] = v43;
  v19 = MEMORY[0x1EEE9AC00](v43 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v48 = v43 - v20;
  v49 = v19;
  v44 = v21;
  v45 = v5;
  v22 = *(v21 + 16);
  v46 = v23;
  v22(v19, v5);
  if (v7)
  {
    v25 = (a1[3] & 0xFFFFFFFFFFFFFFFELL);
    v26 = (a1[5] & 0xFFFFFFFFFFFFFFFELL);
    v27 = (v46 + 32);
    v28 = v7;
    v47 = v7;
    do
    {
      v51 = v28;
      if (v7 == 1)
      {
        v29 = 0;
        v30 = v48;
      }

      else
      {
        v29 = *v27;
        v30 = &v48[v29];
      }

      v32 = *v25++;
      v31 = v32;
      v33 = *v26++;
      v34 = type metadata accessor for CombinerElement(0, v31, v33, v24);
      v50 = v43;
      v35 = *(v34 - 8);
      MEMORY[0x1EEE9AC00](v34);
      v37 = v43 - v36;
      v38 = *(v35 + 16);
      v38(v43 - v36, v49 + v29, v34);
      WitnessTable = swift_getWitnessTable();
      v38(v30, v37, v34);
      (*(WitnessTable + 24))(v34, WitnessTable);
      (*(v35 + 8))(v37, v34);
      v27 += 4;
      v28 = v51 - 1;
      v7 = v47;
    }

    while (v51 != 1);
  }

  v40 = v44;
  v41 = v46;
  (*(v44 + 40))(v45, v48, v46);
  return (*(v40 + 8))(v49, v41);
}

uint64_t sub_18E6E91AC@<X0>(void *a1@<X0>, uint64_t a2@<X3>, void *a3@<X8>)
{
  v4 = v3;
  v6 = a1[2];
  v44 = a3;
  if (v6 == 1)
  {
    TupleTypeMetadata = type metadata accessor for CombinerElement(0, *(a1[3] & 0xFFFFFFFFFFFFFFFELL), *(a1[5] & 0xFFFFFFFFFFFFFFFELL), a2);
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1);
    if (v6)
    {
      v10 = (a1[3] & 0xFFFFFFFFFFFFFFFELL);
      v11 = (a1[5] & 0xFFFFFFFFFFFFFFFELL);
      v12 = (v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
      v13 = v6;
      do
      {
        v15 = *v10++;
        v14 = v15;
        v16 = *v11++;
        *v12++ = type metadata accessor for CombinerElement(255, v14, v16, v8);
        --v13;
      }

      while (v13);
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
  }

  MEMORY[0x1EEE9AC00](TupleTypeMetadata);
  v41[1] = v41;
  v18 = MEMORY[0x1EEE9AC00](v41 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v47 = v41 - v19;
  v48 = v18;
  v49 = 0;
  v42 = v20;
  v43 = v4;
  v21 = *(v20 + 16);
  v45 = v22;
  v21(v18, v4);
  if (v6)
  {
    v24 = (a1[3] & 0xFFFFFFFFFFFFFFFELL);
    v25 = (a1[5] & 0xFFFFFFFFFFFFFFFELL);
    v26 = (v45 + 32);
    v27 = v6;
    v46 = v6;
    do
    {
      if (v6 == 1)
      {
        v28 = 0;
        v29 = v47;
      }

      else
      {
        v28 = *v26;
        v29 = &v47[v28];
      }

      v31 = *v24++;
      v30 = v31;
      v32 = *v25++;
      v33 = type metadata accessor for CombinerElement(0, v30, v32, v23);
      v34 = *(v33 - 8);
      MEMORY[0x1EEE9AC00](v33);
      v36 = v41 - v35;
      (*(v34 + 16))(v41 - v35, v48 + v28, v33);
      WitnessTable = swift_getWitnessTable();
      sub_18E6E9510(v36, &v49, v33, WitnessTable, v29);
      (*(v34 + 8))(v36, v33);
      v26 += 4;
      --v27;
      v6 = v46;
    }

    while (v27);
  }

  v38 = v42;
  v39 = v45;
  (*(v42 + 40))(v43, v47, v45);
  result = (*(v38 + 8))(v48, v39);
  *v44 = v49;
  return result;
}

void *sub_18E6E9510@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  (*(*(a3 - 8) + 16))(a5, a1);
  v8 = *a2;
  result = (*(a4 + 32))(&v12, a3, a4);
  v10 = v12;
  if (v8)
  {
    v11[1] = v8;
    if (v12)
    {
      v11[0] = v12;
      sub_18E70A628(v11, &v13);

      v8 = v13;
    }

    v10 = v8;
  }

  *a2 = v10;
  return result;
}

uint64_t sub_18E6E95E8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v101 = a3;
  v102 = a4;
  v100 = a1;
  v6 = a2[2];
  if (v6 == 1)
  {
    TupleTypeMetadata = type metadata accessor for CombinerElement(0, *(a2[3] & 0xFFFFFFFFFFFFFFFELL), *(a2[5] & 0xFFFFFFFFFFFFFFFELL), a4);
    v8 = TupleTypeMetadata;
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1);
    if (v6)
    {
      v11 = (a2[3] & 0xFFFFFFFFFFFFFFFELL);
      v12 = (a2[5] & 0xFFFFFFFFFFFFFFFELL);
      v13 = (v93 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
      v14 = v6;
      do
      {
        v16 = *v11++;
        v15 = v16;
        v17 = *v12++;
        *v13++ = type metadata accessor for CombinerElement(255, v15, v17, v9);
        --v14;
      }

      while (v14);
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v8 = TupleTypeMetadata;
  }

  v96 = *(v8 - 8);
  v18 = MEMORY[0x1EEE9AC00](TupleTypeMetadata);
  v103 = v93 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v105 = v93 - v22;
  v112 = v6;
  v95 = a2;
  v93[3] = v23;
  if (v6 == 1)
  {
    type metadata accessor for CombinerElement(255, *(a2[3] & 0xFFFFFFFFFFFFFFFELL), *(a2[5] & 0xFFFFFFFFFFFFFFFELL), v21);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  }

  else
  {
    MEMORY[0x1EEE9AC00](v20);
    if (v6)
    {
      v27 = (a2[3] & 0xFFFFFFFFFFFFFFFELL);
      v28 = (a2[5] & 0xFFFFFFFFFFFFFFFELL);
      v29 = (v93 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
      v30 = v112;
      do
      {
        v32 = *v27++;
        v31 = v32;
        v33 = *v28++;
        type metadata accessor for CombinerElement(255, v31, v33, v25);
        *v29++ = swift_getTupleTypeMetadata2();
        --v30;
      }

      while (v30);
    }

    v6 = v112;
    TupleTypeMetadata2 = swift_getTupleTypeMetadata();
  }

  v93[2] = v93;
  v98 = *(TupleTypeMetadata2 - 8);
  v99 = TupleTypeMetadata2;
  v34 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v104 = v93 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93[1] = v93;
  v36 = MEMORY[0x1EEE9AC00](v34);
  v106 = v93 - v37;
  v93[0] = v93;
  MEMORY[0x1EEE9AC00](v36);
  v107 = v93 - v38;
  v39 = *(v96 + 16);
  v94 = v4;
  v97 = v8;
  v39(v105, v4, v8);
  if (v6)
  {
    v41 = (v95[3] & 0xFFFFFFFFFFFFFFFELL);
    v42 = (v95[5] & 0xFFFFFFFFFFFFFFFELL);
    v43 = v97 + 32;
    v44 = (v99 + 32);
    v45 = v6;
    do
    {
      v111 = v44;
      if (v6 == 1)
      {
        v55 = 0;
      }

      else
      {
        v55 = *v44;
      }

      v110 = v45;
      v56 = type metadata accessor for CombinerElement(255, *v41, *v42, v40);
      v57 = swift_getTupleTypeMetadata2();
      v109 = v93;
      v46 = &v107[v55];
      v108 = *(v57 + 48);
      v47 = *(v56 - 8);
      MEMORY[0x1EEE9AC00](v57);
      v49 = v93 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
      v50 = v43;
      v51 = *(v47 + 16);
      v51(v49, &v105[v52], v56);
      WitnessTable = swift_getWitnessTable();
      v51(v46, v49, v56);
      v54 = (*(WitnessTable + 40))(v100, v101, v102, v56, WitnessTable);
      (*(v47 + 8))(v49, v56);
      *&v46[v108] = v54;
      v43 = v50 + 16;
      v44 = v111 + 4;
      ++v42;
      ++v41;
      v45 = v110 - 1;
      v6 = v112;
    }

    while (v110 != 1);
  }

  (*(v96 + 8))(v105, v97);
  v110 = *(v98 + 16);
  v111 = (v98 + 16);
  (v110)(v106, v107, v99);
  if (v6)
  {
    v59 = (v95[3] & 0xFFFFFFFFFFFFFFFELL);
    v60 = (v95[5] & 0xFFFFFFFFFFFFFFFELL);
    v61 = (v99 + 32);
    v62 = (v97 + 32);
    v63 = v6;
    do
    {
      if (v6 == 1)
      {
        v64 = 0;
        v65 = v103;
      }

      else
      {
        v65 = &v103[*v62];
        v64 = *v61;
      }

      v67 = *v59++;
      v66 = v67;
      v68 = *v60++;
      v69 = type metadata accessor for CombinerElement(255, v66, v68, v58);
      v70 = swift_getTupleTypeMetadata2();
      MEMORY[0x1EEE9AC00](v70);
      v72 = v93 - v71;
      (*(v73 + 16))(v93 - v71, &v106[v64]);
      (*(*(v69 - 8) + 32))(v65, v72, v69);
      v61 += 4;
      v62 += 4;
      --v63;
      v6 = v112;
    }

    while (v63);
  }

  (*(v96 + 40))(v94, v103, v97);
  v74 = v99;
  v75 = *(v98 + 8);
  v98 += 8;
  v109 = v75;
  v75(v106, v99);
  (v110)(v104, v107, v74);
  v77 = 0;
  if (v6)
  {
    v78 = (v95[3] & 0xFFFFFFFFFFFFFFFELL);
    v79 = (v95[5] & 0xFFFFFFFFFFFFFFFELL);
    v80 = (v74 + 32);
    v81 = v6;
    while (1)
    {
      v82 = v6 == 1 ? 0 : *v80;
      v83 = type metadata accessor for CombinerElement(255, *v78, *v79, v76);
      v84 = swift_getTupleTypeMetadata2();
      MEMORY[0x1EEE9AC00](v84);
      v86 = v93 - v85;
      result = (*(v87 + 16))(v93 - v85, &v104[v82], v84);
      v89 = *&v86[*(v84 + 48)];
      v90 = __OFADD__(v77, v89);
      v77 += v89;
      if (v90)
      {
        break;
      }

      (*(*(v83 - 8) + 8))(v86, v83);
      v80 += 4;
      ++v79;
      ++v78;
      --v81;
      v6 = v112;
      if (!v81)
      {
        goto LABEL_33;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_33:
    v91 = v99;
    v92 = v109;
    v109(v104, v99);
    v92(v107, v91);
    return v77;
  }

  return result;
}

uint64_t sub_18E6E9F5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = type metadata accessor for GestureOutput(0, AssociatedTypeWitness, v7, v8);
  (*(*(v9 - 8) + 56))(a3, 1, 1, v9);
  result = type metadata accessor for CombinerElement.State(0, a1, a2, v10);
  *(a3 + *(result + 36)) = 0;
  return result;
}

uint64_t sub_18E6EA010(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return sub_18E6C8EBC(a1, WitnessTable);
}

uint64_t sub_18E6EA064(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return sub_18E6C8EC0(a1, WitnessTable);
}

uint64_t sub_18E6EA0B8(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = swift_getWitnessTable();
  result = swift_getWitnessTable();
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_18E6EA118@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v60 = a3;
  v7 = *(a2 + 16);
  v8 = *(a2 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = type metadata accessor for GestureOutput(255, AssociatedTypeWitness, v10, v11);
  v13 = sub_18E72B438();
  v76 = *(v13 - 8);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v56 = &v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v55 = &v53 - v17;
  v18 = MEMORY[0x1EEE9AC00](v16);
  v20 = &v53 - v19;
  v21 = MEMORY[0x1EEE9AC00](v18);
  v57 = &v53 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v21);
  v68 = &v53 - v24;
  MEMORY[0x1EEE9AC00](v23);
  v26 = &v53 - v25;
  v27 = *a1;
  v65 = a1[1];
  v61 = v27;
  v28 = *(a1 + 4);
  v63 = *(a1 + 5);
  v64 = v28;
  v62 = *(a1 + 6);
  v29 = *(a2 + 36);
  v69 = v4;
  v30 = v4 + v29;
  v66 = v7;
  v67 = v8;
  v32 = v31;
  *(v30 + *(type metadata accessor for CombinerElement.State(0, v7, v8, v33) + 36)) = 1;
  v34 = v76;
  v35 = *(v76 + 16);
  v58 = v30;
  v54 = v35;
  v35(v20, v30, v13);
  v53 = *(v32 + 48);
  v36 = v53(v20, 1, v12);
  v59 = v13;
  if (v36 == 1)
  {
    (*(v34 + 8))(v20, v13);
  }

  else
  {
    v37 = *(v32 + 32);
    v37(v26, v20, v12);
    if (GestureOutput.isFinal.getter(v12))
    {
      return (v37)(v60, v26, v12);
    }

    (*(v32 + 8))(v26, v12);
  }

  v39 = v12;
  v71 = v61;
  v72 = v65;
  v73 = v64;
  v74 = v63;
  v75 = v62;
  v40 = v68;
  v41 = v70;
  result = GestureComponent.tracingUpdate(context:)(&v71, v66, v67, v68);
  if (!v41)
  {
    if ((GestureOutput.isEmpty.getter(v12) & 1) == 0)
    {
      v44 = v55;
      sub_18E6FF508(v39, v55);
      (*(v32 + 56))(v44, 0, 1, v39);
      (*(v76 + 40))(v58, v44, v59);
      return (*(v32 + 32))(v60, v40, v39);
    }

    v42 = v56;
    v43 = v59;
    v54(v56, v58, v59);
    if (v53(v42, 1, v12) == 1)
    {
      (*(v76 + 8))(v42, v43);
      return (*(v32 + 32))(v60, v40, v39);
    }

    v45 = v60;
    (*(v32 + 32))(v57, v42, v12);
    sub_18E6FED28(v12, &v71);
    v46 = v71;
    if (v71)
    {
      v48 = *(&v72 + 1);
      v47 = v72;
      v49 = *(&v71 + 1);
    }

    else
    {
      v48 = 0;
      v47 = 0;
      v49 = MEMORY[0x1E69E7CC0];
      v46 = MEMORY[0x1E69E7CC0];
    }

    *&v71 = v46;
    *(&v71 + 1) = v49;
    *&v72 = v47;
    *(&v72 + 1) = v48;
    v50 = v45;
    v51 = v57;
    sub_18E6FF750(&v71, v39, v50);
    v52 = *(v32 + 8);
    v52(v51, v39);
    v52(v40, v39);
  }

  return result;
}

uint64_t sub_18E6EA694@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v5 = *(a1 + 36);
  v6 = type metadata accessor for CombinerElement.State(0, *(a1 + 16), *(a1 + 24), a2);
  v7 = *(*(v6 - 8) + 16);

  return v7(a3, v3 + v5, v6);
}

uint64_t sub_18E6EA70C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a2 + 36);
  v7 = type metadata accessor for CombinerElement.State(0, *(a2 + 16), *(a2 + 24), a4);
  v8 = *(*(v7 - 8) + 40);

  return v8(v4 + v6, a1, v7);
}

uint64_t static Timestamp.- infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_18E72B9B8();
  _s8Gestures9TimestampV1soiys8DurationVAC_ACtFZ_0();

  return _s8Gestures9TimestampV1poiyA2C_s8DurationVtFZ_0();
}

void *DispatchTimeScheduler.__allocating_init(queue:timeSource:)(uint64_t a1, void *a2)
{
  v5 = a2[3];
  v6 = a2[4];
  v7 = __swift_mutable_project_boxed_opaque_existential_1(a2, v5);
  v8 = sub_18E6EB91C(a1, v7, v2, v5, v6);
  __swift_destroy_boxed_opaque_existential_0(a2);
  return v8;
}

Swift::Double __swiftcall Duration.asTimeInterval()()
{
  v0 = sub_18E72B938();
  sub_18E72B938();
  return v1 / 1.0e18 + v0;
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

uint64_t Timestamp.hashValue.getter(uint64_t a1, uint64_t a2)
{
  sub_18E72B888();
  _s8Gestures9TimestampV4hash4intoys6HasherVz_tF_0();
  return sub_18E72B8E8();
}

uint64_t sub_18E6EAA98()
{
  sub_18E72B888();
  _s8Gestures9TimestampV4hash4intoys6HasherVz_tF_0();
  return sub_18E72B8E8();
}

uint64_t sub_18E6EAAEC(uint64_t a1)
{
  sub_18E72B888();
  _s8Gestures9TimestampV4hash4intoys6HasherVz_tF_0();
  return sub_18E72B8E8();
}

uint64_t TimeSchedulerToken.hashValue.getter()
{
  v1 = *v0;
  sub_18E72B888();
  MEMORY[0x193AD1DF0](v1);
  return sub_18E72B8E8();
}

uint64_t DispatchTimeScheduler.timestamp.getter()
{
  v1 = v0[6];
  v2 = v0[7];
  __swift_project_boxed_opaque_existential_1(v0 + 3, v1);
  return (*(v2 + 8))(v1, v2);
}

void *DispatchTimeScheduler.init(queue:timeSource:)(uint64_t a1, void *a2)
{
  v5 = a2[3];
  v6 = a2[4];
  v7 = __swift_mutable_project_boxed_opaque_existential_1(a2, v5);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v9);
  v11 = sub_18E6EB898(a1, v9, v2, v5, v6);
  __swift_destroy_boxed_opaque_existential_0(a2);
  return v11;
}

unint64_t DispatchTimeScheduler.schedule(after:handler:cancelHandler:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  v26 = a5;
  v27 = a6;
  v25[0] = a1;
  v25[1] = a2;
  v28 = a7;
  v10 = sub_18E72AE58();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = v25 - v15;
  v17 = sub_18E72AE38();
  MEMORY[0x1EEE9AC00](v17);
  aBlock[4] = a3;
  aBlock[5] = a4;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_18E6EB030;
  aBlock[3] = &block_descriptor_0;
  _Block_copy(aBlock);
  v29 = MEMORY[0x1E69E7CC0];
  sub_18E6EBA44();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAC8ED70, &qword_18E72F2F0);
  sub_18E6EBA9C();
  sub_18E72B488();
  sub_18E72AE98();
  swift_allocObject();
  v18 = sub_18E72AE78();

  sub_18E72AE48();
  sub_18E72B938();
  sub_18E72B938();
  sub_18E72AEA8();
  v19 = *(v11 + 8);
  v19(v14, v10);
  sub_18E72B3F8();
  v19(v16, v10);
  v20 = *(v7 + 72) + 1;
  *(v7 + 72) = v20;
  v22 = v26;
  v21 = v27;
  sub_18E68CB70(v26, v27);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  aBlock[0] = *(v7 + 64);
  *(v7 + 64) = 0x8000000000000000;
  result = sub_18E6B73C0(v18, v22, v21, v20, isUniquelyReferenced_nonNull_native);
  *(v7 + 64) = aBlock[0];
  *v28 = v20;
  return result;
}

uint64_t sub_18E6EB030(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

Swift::Void __swiftcall DispatchTimeScheduler.cancel(token:)(Gestures::TimeSchedulerToken token)
{
  v2 = *(v1 + 64);
  if (!*(v2 + 16))
  {
    return;
  }

  v3 = sub_18E6EB33C(*token.rawValue);
  if ((v4 & 1) == 0)
  {
    return;
  }

  v5 = *(v2 + 56) + 24 * v3;
  v6 = *(v5 + 8);
  v7 = *(v5 + 16);

  sub_18E68CB70(v6, v7);
  if (sub_18E72AE68())
  {
    goto LABEL_6;
  }

  v8 = sub_18E72AE88();
  if (v6)
  {
    v6(v8);
LABEL_6:

    sub_18E6826D0(v6, v7);
    return;
  }
}

uint64_t DispatchTimeScheduler.deinit()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 24));

  return v0;
}

uint64_t DispatchTimeScheduler.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 24));

  return MEMORY[0x1EEE6BDC0](v0, 80, 7);
}

uint64_t sub_18E6EB1D0()
{
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 56);
  __swift_project_boxed_opaque_existential_1((*v0 + 24), v1);
  return (*(v2 + 8))(v1, v2);
}

uint64_t static Timestamp.+= infix(_:_:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = _s8Gestures9TimestampV1poiyA2C_s8DurationVtFZ_0();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t static Timestamp.-= infix(_:_:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  sub_18E72B9B8();
  _s8Gestures9TimestampV1soiys8DurationVAC_ACtFZ_0();
  result = _s8Gestures9TimestampV1poiyA2C_s8DurationVtFZ_0();
  *a1 = result;
  a1[1] = v5;
  return result;
}

unint64_t sub_18E6EB33C(uint64_t a1)
{
  sub_18E72B888();
  MEMORY[0x193AD1DF0](a1);
  v2 = sub_18E72B8E8();
  return sub_18E687A3C(a1, v2);
}

unint64_t sub_18E6EB3A4(unsigned int a1)
{
  sub_18E72B888();
  MEMORY[0x193AD1DF0](a1);
  MEMORY[0x193AD1DF0]((a1 >> 8) & 1);
  sub_18E72B8A8();
  if ((a1 & 0xFF0000) != 0x20000)
  {
    MEMORY[0x193AD1DF0](HIWORD(a1) & 1);
  }

  v2 = sub_18E72B8E8();

  return sub_18E6EB618(a1 & 0xFF01FF, v2);
}

unint64_t sub_18E6EB48C(unsigned int *a1)
{
  sub_18E72B888();
  sub_18E72B8C8();
  v2 = sub_18E72B8E8();

  return sub_18E6EB6D4(a1, v2);
}

unint64_t sub_18E6EB4FC(uint64_t a1)
{
  v1 = a1;
  sub_18E72B888();
  sub_18E72B8C8();
  v2 = sub_18E72B8E8();
  return sub_18E6EB74C(v1, v2);
}

unint64_t sub_18E6EB564(uint64_t a1)
{
  v2 = a1;
  v3 = MEMORY[0x193AD1DC0](*(v1 + 40), a1, 2);

  return sub_18E6EB7B8(v2, v3);
}

unint64_t sub_18E6EB5AC(uint64_t *a1)
{
  v2 = *a1;
  sub_18E72B888();
  MEMORY[0x193AD1DF0](v2);
  v3 = sub_18E72B8E8();
  return sub_18E6EB828(a1, v3);
}

unint64_t sub_18E6EB618(unsigned int a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    v7 = a1 & 0xFF0000;
    do
    {
      v8 = (*(v2 + 48) + 3 * result);
      if (*v8 == a1 && ((v8[1] ^ ((a1 & 0x100) >> 8)) & 1) == 0)
      {
        v9 = v8[2];
        if (v9 == 2)
        {
          if (v7 == 0x20000)
          {
            return result;
          }
        }

        else if (v7 != 0x20000 && (HIWORD(a1) & 1) == (v9 & 1))
        {
          return result;
        }
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_18E6EB6D4(int *a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    v7 = *a1;
    do
    {
      if (*(*(v2 + 48) + 56 * result) == v7)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_18E6EB74C(int a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 4 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_18E6EB7B8(unsigned __int16 a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 2 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_18E6EB828(uint64_t *a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    v7 = *a1;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == v7)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

void *sub_18E6EB898(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  a3[6] = a4;
  a3[7] = a5;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(a3 + 3);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_0, a2, a4);
  a3[8] = MEMORY[0x1E69E7CC8];
  a3[9] = 0;
  a3[2] = a1;
  return a3;
}

void *sub_18E6EB91C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = swift_allocObject();
  (*(v9 + 16))(v11, a2, a4);
  v12[6] = a4;
  v12[7] = a5;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v12 + 3);
  (*(v9 + 32))(boxed_opaque_existential_0, v11, a4);
  v12[8] = MEMORY[0x1E69E7CC8];
  v12[9] = 0;
  v12[2] = a1;
  return v12;
}

unint64_t sub_18E6EBA44()
{
  result = qword_1EAC8ED68;
  if (!qword_1EAC8ED68)
  {
    sub_18E72AE38();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAC8ED68);
  }

  return result;
}

unint64_t sub_18E6EBA9C()
{
  result = qword_1EAC8ED78;
  if (!qword_1EAC8ED78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAC8ED70, &qword_18E72F2F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAC8ED78);
  }

  return result;
}

unint64_t sub_18E6EBB00()
{
  result = qword_1EAC8ED80;
  if (!qword_1EAC8ED80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAC8ED80);
  }

  return result;
}

unint64_t sub_18E6EBB58()
{
  result = qword_1EAC8ED88;
  if (!qword_1EAC8ED88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EAC8ED88);
  }

  return result;
}

uint64_t destroy for ScheduledJob(void *a1)
{

  if (a1[1])
  {
  }

  return result;
}

void *sub_18E6EBCCC(void *a1, void *a2)
{
  *a1 = *a2;
  v5 = a2 + 1;
  v4 = a2[1];

  if (v4)
  {
    v6 = a2[2];
    a1[1] = v4;
    a1[2] = v6;
  }

  else
  {
    *(a1 + 1) = *v5;
  }

  return a1;
}

void *assignWithCopy for ScheduledJob(void *a1, void *a2)
{
  *a1 = *a2;

  v4 = a2[1];
  if (!a1[1])
  {
    if (v4)
    {
      v6 = a2[2];
      a1[1] = v4;
      a1[2] = v6;

      return a1;
    }

LABEL_7:
    *(a1 + 1) = *(a2 + 1);
    return a1;
  }

  if (!v4)
  {

    goto LABEL_7;
  }

  v5 = a2[2];
  a1[1] = v4;
  a1[2] = v5;

  return a1;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

void *assignWithTake for ScheduledJob(void *a1, void *a2)
{
  *a1 = *a2;

  v4 = a2[1];
  if (!a1[1])
  {
    if (v4)
    {
      v6 = a2[2];
      a1[1] = v4;
      a1[2] = v6;
      return a1;
    }

LABEL_7:
    *(a1 + 1) = *(a2 + 1);
    return a1;
  }

  if (!v4)
  {

    goto LABEL_7;
  }

  v5 = a2[2];
  a1[1] = v4;
  a1[2] = v5;

  return a1;
}

uint64_t getEnumTagSinglePayload for ScheduledJob(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t storeEnumTagSinglePayload for ScheduledJob(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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