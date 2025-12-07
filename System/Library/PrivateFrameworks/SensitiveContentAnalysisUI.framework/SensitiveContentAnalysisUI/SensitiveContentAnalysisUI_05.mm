uint64_t sub_1BC6BBAE8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 16 * a3;
    v8 = result - a3;
LABEL_5:
    v9 = (v6 + 16 * v4);
    result = *v9;
    v10 = v9[1];
    v11 = v8;
    v12 = v7;
    while (1)
    {
      v13 = result == *(v12 - 2) && v10 == *(v12 - 1);
      if (v13 || (result = sub_1BC75C5E0(), (result & 1) == 0))
      {
LABEL_4:
        ++v4;
        v7 += 16;
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      result = *v12;
      v10 = v12[1];
      *v12 = *(v12 - 1);
      *(v12 - 1) = v10;
      *(v12 - 2) = result;
      v12 -= 2;
      if (__CFADD__(v11++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1BC6BBBB8(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v95 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_106:
    v9 = *v95;
    if (!*v95)
    {
      goto LABEL_144;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_138:
      result = sub_1BC6BC448(v8);
      v8 = result;
    }

    v85 = v8 + 16;
    v86 = *(v8 + 2);
    if (v86 >= 2)
    {
      while (*a3)
      {
        v87 = &v8[16 * v86];
        v88 = *v87;
        v89 = &v85[2 * v86];
        v90 = v89[1];
        sub_1BC6BC194((*a3 + 16 * *v87), (*a3 + 16 * *v89), (*a3 + 16 * v90), v9);
        if (v5)
        {
        }

        if (v90 < v88)
        {
          goto LABEL_130;
        }

        if (v86 - 2 >= *v85)
        {
          goto LABEL_131;
        }

        *v87 = v88;
        *(v87 + 1) = v90;
        v91 = *v85 - v86;
        if (*v85 < v86)
        {
          goto LABEL_132;
        }

        v86 = *v85 - 1;
        result = memmove(v89, v89 + 2, 16 * v91);
        *v85 = v86;
        if (v86 <= 1)
        {
        }
      }

      goto LABEL_142;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = (*a3 + 16 * v7);
      result = *v10;
      v11 = (*a3 + 16 * v9);
      if (*v10 == *v11 && v10[1] == v11[1])
      {
        v13 = 0;
      }

      else
      {
        result = sub_1BC75C5E0();
        v13 = result;
      }

      v7 = v9 + 2;
      if (v9 + 2 < v6)
      {
        v14 = v11 + 3;
        v15 = v11 + 3;
        do
        {
          result = v14[1];
          v17 = v15[2];
          v15 += 2;
          v16 = v17;
          if (result == *(v14 - 1) && v16 == *v14)
          {
            if (v13)
            {
              goto LABEL_24;
            }
          }

          else
          {
            result = sub_1BC75C5E0();
            if ((v13 ^ result))
            {
              goto LABEL_23;
            }
          }

          ++v7;
          v14 = v15;
        }

        while (v6 != v7);
        v7 = v6;
      }

LABEL_23:
      if (v13)
      {
LABEL_24:
        if (v7 < v9)
        {
          goto LABEL_135;
        }

        if (v9 < v7)
        {
          v19 = 0;
          v20 = 16 * v7;
          v21 = 16 * v9;
          v22 = v9;
          do
          {
            if (v22 != v7 + v19 - 1)
            {
              v27 = *a3;
              if (!*a3)
              {
                goto LABEL_141;
              }

              v23 = (v27 + v21);
              v24 = v27 + v20;
              v25 = *v23;
              v26 = v23[1];
              *v23 = *(v24 - 16);
              *(v24 - 16) = v25;
              *(v24 - 8) = v26;
            }

            ++v22;
            --v19;
            v20 -= 16;
            v21 += 16;
          }

          while (v22 < v7 + v19);
        }
      }
    }

    v28 = a3[1];
    if (v7 < v28)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_134;
      }

      if (v7 - v9 < a4)
      {
        break;
      }
    }

LABEL_55:
    if (v7 < v9)
    {
      goto LABEL_133;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1BC6BB23C(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v40 = *(v8 + 2);
    v39 = *(v8 + 3);
    v41 = v40 + 1;
    if (v40 >= v39 >> 1)
    {
      result = sub_1BC6BB23C((v39 > 1), v40 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v41;
    v42 = &v8[16 * v40];
    *(v42 + 4) = v9;
    *(v42 + 5) = v7;
    v43 = *v95;
    if (!*v95)
    {
      goto LABEL_143;
    }

    if (v40)
    {
      while (1)
      {
        v44 = v41 - 1;
        if (v41 >= 4)
        {
          break;
        }

        if (v41 == 3)
        {
          v45 = *(v8 + 4);
          v46 = *(v8 + 5);
          v55 = __OFSUB__(v46, v45);
          v47 = v46 - v45;
          v48 = v55;
LABEL_75:
          if (v48)
          {
            goto LABEL_121;
          }

          v61 = &v8[16 * v41];
          v63 = *v61;
          v62 = *(v61 + 1);
          v64 = __OFSUB__(v62, v63);
          v65 = v62 - v63;
          v66 = v64;
          if (v64)
          {
            goto LABEL_124;
          }

          v67 = &v8[16 * v44 + 32];
          v69 = *v67;
          v68 = *(v67 + 1);
          v55 = __OFSUB__(v68, v69);
          v70 = v68 - v69;
          if (v55)
          {
            goto LABEL_127;
          }

          if (__OFADD__(v65, v70))
          {
            goto LABEL_128;
          }

          if (v65 + v70 >= v47)
          {
            if (v47 < v70)
            {
              v44 = v41 - 2;
            }

            goto LABEL_96;
          }

          goto LABEL_89;
        }

        v71 = &v8[16 * v41];
        v73 = *v71;
        v72 = *(v71 + 1);
        v55 = __OFSUB__(v72, v73);
        v65 = v72 - v73;
        v66 = v55;
LABEL_89:
        if (v66)
        {
          goto LABEL_123;
        }

        v74 = &v8[16 * v44];
        v76 = *(v74 + 4);
        v75 = *(v74 + 5);
        v55 = __OFSUB__(v75, v76);
        v77 = v75 - v76;
        if (v55)
        {
          goto LABEL_126;
        }

        if (v77 < v65)
        {
          goto LABEL_3;
        }

LABEL_96:
        v9 = v44 - 1;
        if (v44 - 1 >= v41)
        {
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

        if (!*a3)
        {
          goto LABEL_140;
        }

        v82 = *&v8[16 * v9 + 32];
        v83 = *&v8[16 * v44 + 40];
        sub_1BC6BC194((*a3 + 16 * v82), (*a3 + 16 * *&v8[16 * v44 + 32]), (*a3 + 16 * v83), v43);
        if (v5)
        {
        }

        if (v83 < v82)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_1BC6BC448(v8);
        }

        if (v9 >= *(v8 + 2))
        {
          goto LABEL_118;
        }

        v84 = &v8[16 * v9];
        *(v84 + 4) = v82;
        *(v84 + 5) = v83;
        result = sub_1BC6BC3BC(v44);
        v41 = *(v8 + 2);
        if (v41 <= 1)
        {
          goto LABEL_3;
        }
      }

      v49 = &v8[16 * v41 + 32];
      v50 = *(v49 - 64);
      v51 = *(v49 - 56);
      v55 = __OFSUB__(v51, v50);
      v52 = v51 - v50;
      if (v55)
      {
        goto LABEL_119;
      }

      v54 = *(v49 - 48);
      v53 = *(v49 - 40);
      v55 = __OFSUB__(v53, v54);
      v47 = v53 - v54;
      v48 = v55;
      if (v55)
      {
        goto LABEL_120;
      }

      v56 = &v8[16 * v41];
      v58 = *v56;
      v57 = *(v56 + 1);
      v55 = __OFSUB__(v57, v58);
      v59 = v57 - v58;
      if (v55)
      {
        goto LABEL_122;
      }

      v55 = __OFADD__(v47, v59);
      v60 = v47 + v59;
      if (v55)
      {
        goto LABEL_125;
      }

      if (v60 >= v52)
      {
        v78 = &v8[16 * v44 + 32];
        v80 = *v78;
        v79 = *(v78 + 1);
        v55 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v55)
        {
          goto LABEL_129;
        }

        if (v47 < v81)
        {
          v44 = v41 - 2;
        }

        goto LABEL_96;
      }

      goto LABEL_75;
    }

LABEL_3:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_106;
    }
  }

  if (__OFADD__(v9, a4))
  {
    goto LABEL_136;
  }

  v93 = v5;
  if (v9 + a4 >= v28)
  {
    v5 = a3[1];
  }

  else
  {
    v5 = v9 + a4;
  }

  if (v5 < v9)
  {
LABEL_137:
    __break(1u);
    goto LABEL_138;
  }

  if (v7 == v5)
  {
LABEL_54:
    v5 = v93;
    goto LABEL_55;
  }

  v29 = *a3;
  v30 = *a3 + 16 * v7;
  v92 = v9;
  v31 = (v9 - v7);
LABEL_43:
  v32 = (v29 + 16 * v7);
  v33 = *v32;
  v34 = v32[1];
  v35 = v31;
  v36 = v30;
  while (1)
  {
    v37 = v33 == *(v36 - 2) && v34 == *(v36 - 1);
    if (v37 || (result = sub_1BC75C5E0(), (result & 1) == 0))
    {
LABEL_42:
      ++v7;
      v30 += 16;
      --v31;
      if (v7 != v5)
      {
        goto LABEL_43;
      }

      v7 = v5;
      v9 = v92;
      goto LABEL_54;
    }

    if (!v29)
    {
      break;
    }

    v33 = *v36;
    v34 = v36[1];
    *v36 = *(v36 - 1);
    *(v36 - 1) = v34;
    *(v36 - 2) = v33;
    v36 -= 2;
    if (__CFADD__(v35++, 1))
    {
      goto LABEL_42;
    }
  }

  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
  return result;
}

uint64_t sub_1BC6BC194(char *__dst, char *__src, char *a3, char *a4)
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
      if (!v16 && (sub_1BC75C5E0() & 1) != 0)
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
      if (!v21 && (sub_1BC75C5E0() & 1) != 0)
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

uint64_t sub_1BC6BC3BC(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1BC6BC448(v3);
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

uint64_t sub_1BC6BC45C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC518, &qword_1BC766450);
  result = sub_1BC75C240();
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
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 16 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      sub_1BC75C700();
      sub_1BC75BBE0();
      result = sub_1BC75C720();
      v21 = -1 << *(v5 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v12 + 8 * v23);
          if (v27 != -1)
          {
            v13 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v5 + 16);
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
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

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      bzero((v3 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_1BC6BC6BC(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_1BC6BC45C(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_1BC6BC83C();
      goto LABEL_16;
    }

    sub_1BC6BC998(v8 + 1);
  }

  v10 = *v4;
  sub_1BC75C700();
  sub_1BC75BBE0();
  result = sub_1BC75C720();
  v11 = -1 << *(v10 + 32);
  a3 = result & ~v11;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v12 = ~v11;
    do
    {
      v13 = (*(v10 + 48) + 16 * a3);
      if (*v13 == v7 && v13[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_1BC75C5E0();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v12;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v15 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v16 = (*(v15 + 48) + 16 * a3);
  *v16 = v7;
  v16[1] = a2;
  v17 = *(v15 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (!v18)
  {
    *(v15 + 16) = v19;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_1BC75C630();
  __break(1u);
  return result;
}

void *sub_1BC6BC83C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC518, &qword_1BC766450);
  v2 = *v0;
  v3 = sub_1BC75C230();
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
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

uint64_t sub_1BC6BC998(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC518, &qword_1BC766450);
  result = sub_1BC75C240();
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
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v3 + 48) + 16 * (v14 | (v6 << 6)));
      v18 = *v17;
      v19 = v17[1];
      sub_1BC75C700();

      sub_1BC75BBE0();
      result = sub_1BC75C720();
      v20 = -1 << *(v5 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v11 + 8 * v22);
          if (v26 != -1)
          {
            v12 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v5 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v16 = *(v3 + 56 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
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

uint64_t sub_1BC6BCBD0(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1BC75C3F0();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_1BC75C3F0();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1BC633C54(&qword_1EBCDD1E0, &qword_1EBCDD1D8, &unk_1BC766490, MEMORY[0x1E69E6340]);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDD1D8, &unk_1BC766490);
            v9 = sub_1BC6BCD84(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_1BC65F664(0, &qword_1EBCDCE30, off_1E7FF1298);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

void (*sub_1BC6BCD84(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x1BFB26EB0](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_1BC6BCE04;
  }

  __break(1u);
  return result;
}

void *sub_1BC6BCE0C(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
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
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

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
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

__n128 sub_1BC6BCF78@<Q0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [a1 address];
  if (v4)
  {
    v5 = v4;
    v6 = sub_1BC75BB60();
    v31 = v7;
    v32 = v6;
  }

  else
  {
    v31 = 0;
    v32 = 0;
  }

  v8 = [a1 city];
  if (v8)
  {
    v9 = v8;
    v29 = sub_1BC75BB60();
    v11 = v10;
  }

  else
  {
    v29 = 0;
    v11 = 0;
  }

  v12 = [a1 state];
  if (v12)
  {
    v13 = v12;
    v14 = sub_1BC75BB60();
    v16 = v15;
  }

  else
  {
    v14 = 0;
    v16 = 0;
  }

  v17 = [a1 country];
  if (v17)
  {
    v18 = v17;
    v19 = sub_1BC75BB60();
    v21 = v20;
  }

  else
  {
    v19 = 0;
    v21 = 0;
  }

  v22 = [a1 postCode];
  if (v22)
  {
    v23 = v22;
    v24 = sub_1BC75BB60();
    v26 = v25;
  }

  else
  {

    v24 = 0;
    v26 = 0;
  }

  *&v34 = v32;
  *(&v34 + 1) = v31;
  v35.n128_u64[0] = v30;
  v35.n128_u64[1] = v11;
  *&v36 = v14;
  *(&v36 + 1) = v16;
  *&v37 = v19;
  *(&v37 + 1) = v21;
  *&v38 = v24;
  *(&v38 + 1) = v26;
  v39[0] = v32;
  v39[1] = v31;
  v39[2] = v30;
  v39[3] = v11;
  v39[4] = v14;
  v39[5] = v16;
  v39[6] = v19;
  v39[7] = v21;
  v39[8] = v24;
  v39[9] = v26;
  sub_1BC6BFC40(&v34, v33);
  sub_1BC6BFDC8(v39);
  v27 = v37;
  *(a2 + 32) = v36;
  *(a2 + 48) = v27;
  *(a2 + 64) = v38;
  result = v35;
  *a2 = v34;
  *(a2 + 16) = result;
  return result;
}

__n128 sub_1BC6BD150@<Q0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v96 = a2;
  v104 = sub_1BC759940();
  v128 = *(v104 - 8);
  MEMORY[0x1EEE9AC00](v104);
  v103 = &v85 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDCFE8, &qword_1BC764A58);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v130 = &v85 - v5;
  v6 = sub_1BC759B50();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v102 = &v85 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDCFE0, &unk_1BC76D070);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v129 = &v85 - v10;
  v106 = sub_1BC759800();
  v11 = *(v106 - 8);
  MEMORY[0x1EEE9AC00](v106);
  v13 = &v85 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDD1E8, &unk_1BC76D820);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v123 = &v85 - v15;
  v122 = type metadata accessor for Report.Media(0);
  v105 = *(v122 - 8);
  v16 = MEMORY[0x1EEE9AC00](v122);
  v121 = &v85 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v120 = &v85 - v18;
  v19 = [a1 displayName];
  v20 = sub_1BC75BB60();
  v93 = v21;
  v94 = v20;

  v22 = [a1 accountID];
  v23 = sub_1BC75BB60();
  v91 = v24;
  v92 = v23;

  v25 = [a1 fullName];
  if (v25)
  {
    v26 = v25;
    v27 = sub_1BC75BB60();
    v89 = v28;
    v90 = v27;
  }

  else
  {
    v89 = 0;
    v90 = 0;
  }

  v29 = [a1 emailAddress];
  if (v29)
  {
    v30 = v29;
    v31 = sub_1BC75BB60();
    v87 = v32;
    v88 = v31;
  }

  else
  {
    v87 = 0;
    v88 = 0;
  }

  v33 = [a1 phoneNumber];
  if (v33)
  {
    v34 = v33;
    v35 = sub_1BC75BB60();
    v85 = v36;
    v86 = v35;
  }

  else
  {
    v85 = 0;
    v86 = 0;
  }

  v37 = [a1 sensitiveMediaFiles];
  sub_1BC65F664(0, &qword_1EBCDCE30, off_1E7FF1298);
  v38 = sub_1BC75BD00();

  if (v38 >> 62)
  {
    goto LABEL_37;
  }

  for (i = *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1BC75C3F0())
  {
    v40 = v106;
    v95 = a1;
    if (!i)
    {
      break;
    }

    v117 = v6;
    v6 = 0;
    v118 = v38 & 0xFFFFFFFFFFFFFF8;
    v119 = v38 & 0xC000000000000001;
    v113 = (v7 + 48);
    v114 = (v11 + 56);
    v100 = (v11 + 16);
    v101 = (v7 + 32);
    v98 = (v128 + 8);
    v99 = (v7 + 16);
    v97 = (v7 + 8);
    v111 = (v105 + 56);
    v112 = (v11 + 8);
    v110 = (v105 + 48);
    v126 = MEMORY[0x1E69E7CC0];
    v109 = xmmword_1BC7649C0;
    v115 = i;
    v116 = v38;
    v125 = v13;
    while (1)
    {
      if (v119)
      {
        v41 = MEMORY[0x1BFB26EB0](v6, v38);
      }

      else
      {
        if (v6 >= *(v118 + 16))
        {
          goto LABEL_36;
        }

        v41 = *(v38 + 8 * v6 + 32);
      }

      a1 = v41;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      v127 = v6 + 1;
      v128 = v6;
      v42 = [v41 url];
      sub_1BC7597C0();

      v43 = [a1 UTIType];
      sub_1BC75BB60();
      v44 = v130;
      v7 = v45;

      sub_1BC72E2A0(v129);
      v124 = [a1 wasImpetusOfReport];
      v46 = v121;
      v47 = v122;
      v48 = &v121[*(v122 + 36)];
      *v48 = v109;
      v49 = (v46 + v47[10]);
      *v49 = 0;
      v49[1] = 0;
      v50 = v47[11];
      (*v114)(v46 + v50, 1, 1, v40);
      sub_1BC759B60();
      v51 = v40;
      v52 = v117;
      if ((*v113)(v44, 1, v117) == 1)
      {

        sub_1BC66008C(v129, &qword_1EBCDCFE0, &unk_1BC76D070);
        a1 = v125;
        (*v112)(v125, v51);
        sub_1BC66008C(v130, &qword_1EBCDCFE8, &qword_1BC764A58);
        sub_1BC6AE12C(*v48, *(v48 + 1));
        sub_1BC66008C(v46 + v50, &qword_1EBCDC6D0, &qword_1BC761EF0);
        v11 = v123;
        (*v111)(v123, 1, 1, v47);
        v40 = v51;
        v13 = a1;
      }

      else
      {
        v108 = (v46 + v47[12]);
        v53 = v102;
        v7 = v129;
        (*v101)(v102, v130, v52);
        (*v100)(v46, v125, v51);
        (*v99)(v46 + v47[5], v53, v52);
        sub_1BC660024(v7, v46 + v47[6], &qword_1EBCDCFE0, &unk_1BC76D070);
        v54 = v103;
        sub_1BC759930();
        v55 = sub_1BC759920();
        v107 = v56;

        (*v98)(v54, v104);
        (*v97)(v53, v52);
        sub_1BC66008C(v7, &qword_1EBCDCFE0, &unk_1BC76D070);
        v13 = v125;
        (*v112)(v125, v51);
        v57 = (v46 + v47[8]);
        v58 = v107;
        *v57 = v55;
        v57[1] = v58;
        v59 = v108;
        *v108 = 0;
        *(v59 + 8) = 0;
        *(v46 + v47[7]) = v124;
        v11 = v123;
        sub_1BC6BDCF4(v46, v123, type metadata accessor for Report.Media);
        (*v111)(v11, 0, 1, v47);
        sub_1BC6BF988(v46, type metadata accessor for Report.Media);
        v40 = v51;
      }

      v60 = (*v110)(v11, 1, v47);
      v61 = v115;
      v38 = v116;
      v62 = v128;
      if (v60 == 1)
      {
        sub_1BC66008C(v11, &qword_1EBCDD1E8, &unk_1BC76D820);
      }

      else
      {
        sub_1BC6C1B80(v11, v120, type metadata accessor for Report.Media);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v126 = sub_1BC6BAE4C(0, v126[2] + 1, 1, v126);
        }

        v64 = v126[2];
        v63 = v126[3];
        v11 = v64 + 1;
        if (v64 >= v63 >> 1)
        {
          v126 = sub_1BC6BAE4C((v63 > 1), v64 + 1, 1, v126);
        }

        v65 = v126;
        v126[2] = v11;
        sub_1BC6C1B80(v120, v65 + ((*(v105 + 80) + 32) & ~*(v105 + 80)) + *(v105 + 72) * v64, type metadata accessor for Report.Media);
        v40 = v106;
      }

      v6 = v62 + 1;
      if (v127 == v61)
      {
        goto LABEL_31;
      }
    }

    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    ;
  }

  v126 = MEMORY[0x1E69E7CC0];
LABEL_31:

  v66 = v95;
  v67 = [v95 address];
  if (v67)
  {
    v68 = v67;
    sub_1BC6BCF78(v68, v144);

    v69 = v144[8];
    v70 = v144[9];
    v71 = v144[6];
    v72 = v144[7];
    v73 = v144[4];
    v74 = v144[5];
    v75 = v144[2];
    v76 = v144[3];
    v77 = v144[0];
    v78 = v144[1];
  }

  else
  {

    v77 = 0;
    v78 = 0;
    v75 = 0;
    v76 = 0;
    v73 = 0;
    v74 = 0;
    v71 = 0;
    v72 = 0;
    v69 = 0;
    v70 = 0;
  }

  v79 = v96;
  *&v132 = v94;
  *(&v132 + 1) = v93;
  *&v133 = v92;
  *(&v133 + 1) = v91;
  *&v134 = v90;
  *(&v134 + 1) = v89;
  v135.n128_u64[0] = v88;
  v135.n128_u64[1] = v87;
  *&v136 = v86;
  *(&v136 + 1) = v85;
  *&v137 = v77;
  *(&v137 + 1) = v78;
  *&v138 = v75;
  *(&v138 + 1) = v76;
  *&v139 = v73;
  *(&v139 + 1) = v74;
  *&v140 = v71;
  *(&v140 + 1) = v72;
  *&v141 = v69;
  *(&v141 + 1) = v70;
  v142 = v126;
  v143[0] = v94;
  v143[1] = v93;
  v143[2] = v92;
  v143[3] = v91;
  v143[4] = v90;
  v143[5] = v89;
  v143[6] = v88;
  v143[7] = v87;
  v143[8] = v86;
  v143[9] = v85;
  v143[10] = v77;
  v143[11] = v78;
  v143[12] = v75;
  v143[13] = v76;
  v143[14] = v73;
  v143[15] = v74;
  v143[16] = v71;
  v143[17] = v72;
  v143[18] = v69;
  v143[19] = v70;
  v143[20] = v126;
  sub_1BC6C3F8C(&v132, &v131);
  sub_1BC6C3FC4(v143);
  v80 = v141;
  *(v79 + 128) = v140;
  *(v79 + 144) = v80;
  *(v79 + 160) = v142;
  v81 = v137;
  *(v79 + 64) = v136;
  *(v79 + 80) = v81;
  v82 = v139;
  *(v79 + 96) = v138;
  *(v79 + 112) = v82;
  v83 = v133;
  *v79 = v132;
  *(v79 + 16) = v83;
  result = v135;
  *(v79 + 32) = v134;
  *(v79 + 48) = result;
  return result;
}

uint64_t sub_1BC6BDCF4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_1BC6BDD5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBCE6970;
  if (!qword_1EBCE6970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCE6970);
  }

  return result;
}

unint64_t sub_1BC6BDDB0()
{
  result = qword_1EBCDCE58;
  if (!qword_1EBCDCE58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDCE20, &qword_1BC7649D0);
    sub_1BC6BDE8C(&qword_1EBCDCE60, MEMORY[0x1E6969530], MEMORY[0x1E6969538]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDCE58);
  }

  return result;
}

uint64_t sub_1BC6BDE8C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1BC6BDED4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBCE6978;
  if (!qword_1EBCE6978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCE6978);
  }

  return result;
}

unint64_t sub_1BC6BDF28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBCE6980;
  if (!qword_1EBCE6980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCE6980);
  }

  return result;
}

unint64_t sub_1BC6BDF7C()
{
  result = qword_1EBCDCE90;
  if (!qword_1EBCDCE90)
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDCE88, &qword_1BC7649F8);
    sub_1BC6BE000(v1, v2, v3);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDCE90);
  }

  return result;
}

unint64_t sub_1BC6BE000(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBCDCE98;
  if (!qword_1EBCDCE98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDCE98);
  }

  return result;
}

unint64_t sub_1BC6BE054()
{
  result = qword_1EBCDCEA8;
  if (!qword_1EBCDCEA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDCEA0, &qword_1BC764A00);
    sub_1BC6BDE8C(&qword_1EBCDCEB0, type metadata accessor for Report.Message, &protocol conformance descriptor for Report.Message);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDCEA8);
  }

  return result;
}

unint64_t sub_1BC6BE108(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBCE6988;
  if (!qword_1EBCE6988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCE6988);
  }

  return result;
}

unint64_t sub_1BC6BE15C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBCDCEC0;
  if (!qword_1EBCDCEC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDCEC0);
  }

  return result;
}

uint64_t sub_1BC6BE1B0(unint64_t *a1, uint64_t (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDCED0, &qword_1BC764A10);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1BC6BE228(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBCDCEE0;
  if (!qword_1EBCDCEE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDCEE0);
  }

  return result;
}

unint64_t sub_1BC6BE27C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBCDCEF0;
  if (!qword_1EBCDCEF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDCEF0);
  }

  return result;
}

unint64_t sub_1BC6BE2D0()
{
  result = qword_1EBCDCEF8;
  if (!qword_1EBCDCEF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDCEA0, &qword_1BC764A00);
    sub_1BC6BDE8C(&qword_1EBCDCF00, type metadata accessor for Report.Message, &protocol conformance descriptor for Report.Message);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDCEF8);
  }

  return result;
}

uint64_t sub_1BC6BE3AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = sub_1BC759620();
  v11 = result;
  if (result)
  {
    result = sub_1BC759640();
    if (__OFSUB__(a1, result))
    {
LABEL_9:
      __break(1u);
      return result;
    }

    v11 += a1 - result;
  }

  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_9;
  }

  sub_1BC759630();
  sub_1BC6BA8FC(v11, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return v12;
}

BOOL sub_1BC6BE464(_BOOL8 result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a2 >> 62;
  v5 = a4 >> 62;
  if (a2 >> 62 == 3)
  {
    v6 = 0;
    if (!result && a2 == 0xC000000000000000 && a4 >> 62 == 3)
    {
      v6 = 0;
      if (!a3 && a4 == 0xC000000000000000)
      {
        return 1;
      }
    }

    goto LABEL_14;
  }

  if (!v4)
  {
    v6 = BYTE6(a2);
    goto LABEL_14;
  }

  if (v4 == 1)
  {
    LODWORD(v6) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v6 = v6;
LABEL_14:
    if (v5 > 1)
    {
      if (v5 != 2)
      {
        return v6 == 0;
      }

      v11 = *(a3 + 16);
      v10 = *(a3 + 24);
      v9 = __OFSUB__(v10, v11);
      v12 = v10 - v11;
      if (!v9)
      {
        if (v6 != v12)
        {
          return 0;
        }

        goto LABEL_21;
      }

      __break(1u);
    }

    else
    {
      if (!v5)
      {
        if (v6 != BYTE6(a4))
        {
          return 0;
        }

LABEL_21:
        if (v6 >= 1)
        {
          v13 = result;
          sub_1BC6AE090(a3, a4);
          return sub_1BC6BAB2C(v13, a2, a3, a4) & 1;
        }

        return 1;
      }

      if (!__OFSUB__(HIDWORD(a3), a3))
      {
        if (v6 != HIDWORD(a3) - a3)
        {
          return 0;
        }

        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

  v8 = *(result + 16);
  v7 = *(result + 24);
  v9 = __OFSUB__(v7, v8);
  v6 = v7 - v8;
  if (!v9)
  {
    goto LABEL_14;
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_1BC6BE5CC(void *a1, void *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  if (v2)
  {
    if (!v3)
    {
      return 0;
    }

    if (*a1 != *a2 || v2 != v3)
    {
      v5 = a1;
      v6 = a2;
      v7 = sub_1BC75C5E0();
      a2 = v6;
      v8 = v7;
      a1 = v5;
      if ((v8 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v3)
  {
    return 0;
  }

  v9 = a1[3];
  v10 = a2[3];
  if (v9)
  {
    if (!v10)
    {
      return 0;
    }

    if (a1[2] != a2[2] || v9 != v10)
    {
      v11 = a1;
      v12 = a2;
      v13 = sub_1BC75C5E0();
      a2 = v12;
      v14 = v13;
      a1 = v11;
      if ((v14 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v10)
  {
    return 0;
  }

  v15 = a1[5];
  v16 = a2[5];
  if (v15)
  {
    if (!v16)
    {
      return 0;
    }

    if (a1[4] != a2[4] || v15 != v16)
    {
      v17 = a1;
      v18 = a2;
      v19 = sub_1BC75C5E0();
      a2 = v18;
      v20 = v19;
      a1 = v17;
      if ((v20 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v16)
  {
    return 0;
  }

  v21 = a1[7];
  v22 = a2[7];
  if (v21)
  {
    if (!v22)
    {
      return 0;
    }

    if (a1[6] != a2[6] || v21 != v22)
    {
      v23 = a1;
      v24 = a2;
      v25 = sub_1BC75C5E0();
      a2 = v24;
      v26 = v25;
      a1 = v23;
      if ((v26 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v22)
  {
    return 0;
  }

  v27 = a1[9];
  v28 = a2[9];
  if (v27)
  {
    if (v28 && (a1[8] == a2[8] && v27 == v28 || (sub_1BC75C5E0() & 1) != 0))
    {
      return 1;
    }
  }

  else if (!v28)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_1BC6BE78C(uint64_t *a1, uint64_t a2)
{
  v4 = a1[1];
  v5 = *(a2 + 8);
  if (v4)
  {
    if (!v5)
    {
      return 0;
    }

    v6 = *a1 == *a2 && v4 == v5;
    if (!v6 && (sub_1BC75C5E0() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  v7 = a1[2] == *(a2 + 16) && a1[3] == *(a2 + 24);
  if (!v7 && (sub_1BC75C5E0() & 1) == 0)
  {
    return 0;
  }

  v8 = a1[5];
  v9 = *(a2 + 40);
  if (v8)
  {
    if (!v9 || (a1[4] != *(a2 + 32) || v8 != v9) && (sub_1BC75C5E0() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v9)
  {
    return 0;
  }

  v10 = a1[7];
  v11 = *(a2 + 56);
  if (v10)
  {
    if (!v11 || (a1[6] != *(a2 + 48) || v10 != v11) && (sub_1BC75C5E0() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v11)
  {
    return 0;
  }

  v12 = a1[9];
  v13 = *(a2 + 72);
  if (v12)
  {
    if (!v13 || (a1[8] != *(a2 + 64) || v12 != v13) && (sub_1BC75C5E0() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v13)
  {
    return 0;
  }

  v14 = a1[11];
  v15 = a1[12];
  v16 = a1[13];
  v17 = *(a2 + 88);
  v18 = *(a2 + 96);
  v19 = *(a2 + 104);
  if (v14)
  {
    if (!v17 || (a1[10] != *(a2 + 80) || v14 != v17) && (sub_1BC75C5E0() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v17)
  {
    return 0;
  }

  if (!v16)
  {
    if (!v19)
    {
      goto LABEL_50;
    }

    return 0;
  }

  if (!v19 || (v15 != v18 || v16 != v19) && (sub_1BC75C5E0() & 1) == 0)
  {
    return 0;
  }

LABEL_50:
  v20 = *(a1 + 10);
  v26[2] = *(a1 + 9);
  v26[3] = v20;
  v21 = *(a1 + 11);
  v22 = *(a1 + 8);
  v26[0] = *(a1 + 7);
  v26[1] = v22;
  v23 = *(a2 + 160);
  v27[2] = *(a2 + 144);
  v27[3] = v23;
  v27[4] = *(a2 + 176);
  v24 = *(a2 + 112);
  v27[1] = *(a2 + 128);
  v26[4] = v21;
  v27[0] = v24;
  if ((sub_1BC6BE5CC(v26, v27) & 1) == 0)
  {
    return 0;
  }

  _s6VictimVMa(0);

  return sub_1BC7598E0();
}

BOOL sub_1BC6BE9D4(uint64_t *a1, uint64_t a2)
{
  v4 = *a1 == *a2 && a1[1] == *(a2 + 8);
  if (!v4 && (sub_1BC75C5E0() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[2] == *(a2 + 16) && a1[3] == *(a2 + 24);
  if (!v5 && (sub_1BC75C5E0() & 1) == 0)
  {
    return 0;
  }

  v6 = a1[5];
  v7 = *(a2 + 40);
  if (v6)
  {
    if (!v7 || (a1[4] != *(a2 + 32) || v6 != v7) && (sub_1BC75C5E0() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v7)
  {
    return 0;
  }

  v8 = a1[7];
  v9 = *(a2 + 56);
  if (v8)
  {
    if (!v9 || (a1[6] != *(a2 + 48) || v8 != v9) && (sub_1BC75C5E0() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v9)
  {
    return 0;
  }

  v10 = a1[9];
  v11 = *(a2 + 72);
  if (!v10)
  {
    if (!v11)
    {
      goto LABEL_32;
    }

    return 0;
  }

  if (!v11 || (a1[8] != *(a2 + 64) || v10 != v11) && (sub_1BC75C5E0() & 1) == 0)
  {
    return 0;
  }

LABEL_32:
  v12 = *(a1 + 8);
  v20[2] = *(a1 + 7);
  v20[3] = v12;
  v20[4] = *(a1 + 9);
  v13 = *(a1 + 6);
  v20[0] = *(a1 + 5);
  v20[1] = v13;
  v14 = *(a2 + 128);
  v19[2] = *(a2 + 112);
  v19[3] = v14;
  v19[4] = *(a2 + 144);
  v15 = *(a2 + 96);
  v19[0] = *(a2 + 80);
  v19[1] = v15;
  if ((sub_1BC6BE5CC(v20, v19) & 1) == 0)
  {
    return 0;
  }

  v16 = a1[20];
  v17 = *(a2 + 160);

  return sub_1BC6B0604(v16, v17);
}

BOOL _s26SensitiveContentAnalysisUI6ReportC5MediaV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BC759800();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v73 = &v67 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC6D0, &qword_1BC761EF0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v74 = &v67 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDD198, &qword_1BC766478);
  MEMORY[0x1EEE9AC00](v9);
  v75 = &v67 - v10;
  v11 = sub_1BC75A050();
  v76 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v67 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDCFE0, &unk_1BC76D070);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v67 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDCFF0, &qword_1BC764A60);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v67 - v18;
  if ((sub_1BC7597B0() & 1) == 0)
  {
    return 0;
  }

  v71 = v9;
  v20 = a1;
  v21 = type metadata accessor for Report.Media(0);
  if ((sub_1BC759B10() & 1) == 0)
  {
    return 0;
  }

  v68 = v5;
  v69 = v4;
  v72 = a2;
  v70 = v21;
  v22 = *(v21 + 24);
  v23 = *(v17 + 48);
  sub_1BC660024(v20 + v22, v19, &qword_1EBCDCFE0, &unk_1BC76D070);
  v24 = v72 + v22;
  v25 = v72;
  sub_1BC660024(v24, &v19[v23], &qword_1EBCDCFE0, &unk_1BC76D070);
  v26 = *(v76 + 48);
  if (v26(v19, 1, v11) == 1)
  {
    if (v26(&v19[v23], 1, v11) == 1)
    {
      sub_1BC66008C(v19, &qword_1EBCDCFE0, &unk_1BC76D070);
      goto LABEL_11;
    }

LABEL_8:
    v27 = &qword_1EBCDCFF0;
    v28 = &qword_1BC764A60;
LABEL_9:
    sub_1BC66008C(v19, v27, v28);
    return 0;
  }

  sub_1BC660024(v19, v16, &qword_1EBCDCFE0, &unk_1BC76D070);
  if (v26(&v19[v23], 1, v11) == 1)
  {
    (*(v76 + 8))(v16, v11);
    goto LABEL_8;
  }

  v29 = v76;
  (*(v76 + 32))(v13, &v19[v23], v11);
  sub_1BC6BDE8C(&qword_1EBCDD030, MEMORY[0x1E697B600], MEMORY[0x1E697B610]);
  v30 = sub_1BC75BAB0();
  v31 = *(v29 + 8);
  v31(v13, v11);
  v31(v16, v11);
  v25 = v72;
  sub_1BC66008C(v19, &qword_1EBCDCFE0, &unk_1BC76D070);
  if ((v30 & 1) == 0)
  {
    return 0;
  }

LABEL_11:
  v32 = v70;
  if (*(v20 + v70[7]) != *(v25 + v70[7]))
  {
    return 0;
  }

  v33 = v70[8];
  v34 = v20;
  v35 = *(v20 + v33);
  v36 = *(v20 + v33 + 8);
  v37 = (v25 + v33);
  if ((v35 != *v37 || v36 != v37[1]) && (sub_1BC75C5E0() & 1) == 0)
  {
    return 0;
  }

  v38 = v32[9];
  v40 = *(v20 + v38);
  v39 = *(v20 + v38 + 8);
  v41 = (v25 + v38);
  v43 = *v41;
  v42 = v41[1];
  if (v39 >> 60 == 15)
  {
    v45 = v68;
    v44 = v69;
    if (v42 >> 60 == 15)
    {
      sub_1BC6AE07C(v40, v39);
      sub_1BC6AE07C(v43, v42);
      sub_1BC6AE12C(v40, v39);
      goto LABEL_22;
    }

LABEL_19:
    sub_1BC6AE07C(v40, v39);
    sub_1BC6AE07C(v43, v42);
    sub_1BC6AE12C(v40, v39);
    sub_1BC6AE12C(v43, v42);
    return 0;
  }

  v45 = v68;
  v44 = v69;
  if (v42 >> 60 == 15)
  {
    goto LABEL_19;
  }

  sub_1BC6AE07C(v40, v39);
  sub_1BC6AE07C(v43, v42);
  v47 = sub_1BC6BE464(v40, v39, v43, v42);
  sub_1BC6AE12C(v43, v42);
  sub_1BC6AE12C(v40, v39);
  if (!v47)
  {
    return 0;
  }

LABEL_22:
  v48 = v32[10];
  v49 = (v34 + v48);
  v50 = *(v34 + v48 + 8);
  v51 = (v25 + v48);
  v52 = v51[1];
  if (v50)
  {
    v19 = v75;
    if (!v52 || (*v49 != *v51 || v50 != v52) && (sub_1BC75C5E0() & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    v19 = v75;
    if (v52)
    {
      return 0;
    }
  }

  v53 = v32[11];
  v54 = *(v71 + 48);
  sub_1BC660024(v34 + v53, v19, &qword_1EBCDC6D0, &qword_1BC761EF0);
  v55 = v72 + v53;
  v56 = v72;
  sub_1BC660024(v55, &v19[v54], &qword_1EBCDC6D0, &qword_1BC761EF0);
  v57 = *(v45 + 48);
  if (v57(v19, 1, v44) == 1)
  {
    if (v57(&v19[v54], 1, v44) == 1)
    {
      sub_1BC66008C(v19, &qword_1EBCDC6D0, &qword_1BC761EF0);
      goto LABEL_36;
    }

    goto LABEL_34;
  }

  v58 = v74;
  sub_1BC660024(v19, v74, &qword_1EBCDC6D0, &qword_1BC761EF0);
  if (v57(&v19[v54], 1, v44) == 1)
  {
    (*(v45 + 8))(v58, v44);
LABEL_34:
    v27 = &qword_1EBCDD198;
    v28 = &qword_1BC766478;
    goto LABEL_9;
  }

  v59 = v73;
  (*(v45 + 32))(v73, &v19[v54], v44);
  sub_1BC6BDE8C(&qword_1EBCDD1A0, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC8]);
  v60 = sub_1BC75BAB0();
  v61 = *(v45 + 8);
  v61(v59, v44);
  v61(v58, v44);
  v56 = v72;
  sub_1BC66008C(v19, &qword_1EBCDC6D0, &qword_1BC761EF0);
  if ((v60 & 1) == 0)
  {
    return 0;
  }

LABEL_36:
  v62 = v32[12];
  v63 = (v34 + v62);
  v64 = *(v34 + v62 + 8);
  v65 = (v56 + v62);
  v66 = *(v56 + v62 + 8);
  if ((v64 & 1) == 0)
  {
    if (*v63 != *v65)
    {
      v66 = 1;
    }

    return (v66 & 1) == 0;
  }

  return (v66 & 1) != 0;
}

BOOL _s26SensitiveContentAnalysisUI6ReportC8EvidenceV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BC759910();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v51[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDCE20, &qword_1BC7649D0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v51[-v9];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDD1C0, &qword_1BC766488);
  v12 = MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v51[-v13];
  v15 = *(v12 + 56);
  sub_1BC660024(a1, &v51[-v13], &qword_1EBCDCE20, &qword_1BC7649D0);
  sub_1BC660024(a2, &v14[v15], &qword_1EBCDCE20, &qword_1BC7649D0);
  v16 = *(v5 + 48);
  if (v16(v14, 1, v4) == 1)
  {
    if (v16(&v14[v15], 1, v4) == 1)
    {
      sub_1BC66008C(v14, &qword_1EBCDCE20, &qword_1BC7649D0);
      goto LABEL_8;
    }

LABEL_6:
    sub_1BC66008C(v14, &qword_1EBCDD1C0, &qword_1BC766488);
    return 0;
  }

  sub_1BC660024(v14, v10, &qword_1EBCDCE20, &qword_1BC7649D0);
  if (v16(&v14[v15], 1, v4) == 1)
  {
    (*(v5 + 8))(v10, v4);
    goto LABEL_6;
  }

  (*(v5 + 32))(v7, &v14[v15], v4);
  sub_1BC6BDE8C(&qword_1EBCDD1C8, MEMORY[0x1E6969530], MEMORY[0x1E6969550]);
  v17 = sub_1BC75BAB0();
  v18 = *(v5 + 8);
  v18(v7, v4);
  v18(v10, v4);
  sub_1BC66008C(v14, &qword_1EBCDCE20, &qword_1BC7649D0);
  if ((v17 & 1) == 0)
  {
    return 0;
  }

LABEL_8:
  v19 = type metadata accessor for Report.Evidence(0);
  if ((sub_1BC6BE78C((a1 + v19[6]), a2 + v19[6]) & 1) == 0)
  {
    return 0;
  }

  v20 = sub_1BC6AFE0C(*(a1 + v19[7]), *(a2 + v19[7]));
  if ((v20 & 1) == 0 || *(a1 + v19[8]) != *(a2 + v19[8]))
  {
    return 0;
  }

  v22 = v19[9];
  v23 = (a1 + v22);
  v24 = *(a1 + v22 + 8);
  v25 = (a2 + v22);
  v26 = v25[1];
  if (!v24)
  {
    if (!v26)
    {
      goto LABEL_18;
    }

    return 0;
  }

  if (!v26)
  {
    return 0;
  }

  v20 = *v23;
  v21 = *v25;
  if (*v23 != *v25 || v24 != v26)
  {
    v20 = sub_1BC75C5E0();
    if ((v20 & 1) == 0)
    {
      return 0;
    }
  }

LABEL_18:
  if (*(a1 + v19[10]) != *(a2 + v19[10]))
  {
    return 0;
  }

  v28 = v19[11];
  v29 = *(a1 + v28);
  v30 = *(a2 + v28);
  if (v29 == 8)
  {
    if (v30 != 8)
    {
      return 0;
    }
  }

  else
  {
    v51[15] = v29;
    if (v30 == 8)
    {
      return 0;
    }

    v51[14] = v30;
    sub_1BC686258(v20, v24, v21);
    if ((sub_1BC75BAB0() & 1) == 0)
    {
      return 0;
    }
  }

  if ((sub_1BC6B03FC(*(a1 + v19[12]), *(a2 + v19[12])) & 1) == 0)
  {
    return 0;
  }

  v31 = v19[13];
  v33 = *(a1 + v31);
  v32 = *(a1 + v31 + 8);
  v34 = (a2 + v31);
  v36 = *v34;
  v35 = v34[1];
  if (v32 >> 60 == 15)
  {
    if (v35 >> 60 == 15)
    {
      sub_1BC6AE07C(v33, v32);
      sub_1BC6AE07C(v36, v35);
      sub_1BC6AE12C(v33, v32);
      goto LABEL_32;
    }

LABEL_30:
    sub_1BC6AE07C(v33, v32);
    sub_1BC6AE07C(v36, v35);
    sub_1BC6AE12C(v33, v32);
    sub_1BC6AE12C(v36, v35);
    return 0;
  }

  if (v35 >> 60 == 15)
  {
    goto LABEL_30;
  }

  sub_1BC6AE07C(v33, v32);
  sub_1BC6AE07C(v36, v35);
  v37 = sub_1BC6BE464(v33, v32, v36, v35);
  sub_1BC6AE12C(v36, v35);
  sub_1BC6AE12C(v33, v32);
  if (!v37)
  {
    return 0;
  }

LABEL_32:
  v38 = v19[14];
  v39 = (a1 + v38);
  v40 = *(a1 + v38 + 8);
  v41 = (a2 + v38);
  v42 = v41[1];
  if (v40)
  {
    if (!v42 || (*v39 != *v41 || v40 != v42) && (sub_1BC75C5E0() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v42)
  {
    return 0;
  }

  if (*(a1 + v19[15]) != *(a2 + v19[15]))
  {
    return 0;
  }

  v43 = v19[16];
  v44 = *(a1 + v43);
  v45 = *(a1 + v43 + 8);
  v46 = (a2 + v43);
  if ((v44 != *v46 || v45 != v46[1]) && (sub_1BC75C5E0() & 1) == 0)
  {
    return 0;
  }

  v47 = v19[17];
  v48 = *(a1 + v47);
  v49 = *(a1 + v47 + 8);
  v50 = (a2 + v47);
  if ((v48 != *v50 || v49 != v50[1]) && (sub_1BC75C5E0() & 1) == 0)
  {
    return 0;
  }

  return *(a1 + v19[18]) == *(a2 + v19[18]);
}

uint64_t sub_1BC6BF988(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1BC6BF9E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBCDCF20;
  if (!qword_1EBCDCF20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDCF20);
  }

  return result;
}

unint64_t sub_1BC6BFA3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBCDCF38;
  if (!qword_1EBCDCF38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDCF38);
  }

  return result;
}

unint64_t sub_1BC6BFA90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBCDCF48;
  if (!qword_1EBCDCF48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDCF48);
  }

  return result;
}

unint64_t sub_1BC6BFAE4()
{
  result = qword_1EBCDCF50;
  if (!qword_1EBCDCF50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDCEA0, &qword_1BC764A00);
    sub_1BC6BDE8C(&qword_1EBCDCF58, type metadata accessor for Report.Message, &protocol conformance descriptor for Report.Message);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDCF50);
  }

  return result;
}

unint64_t sub_1BC6BFB98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBCDCF60;
  if (!qword_1EBCDCF60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDCF60);
  }

  return result;
}

unint64_t sub_1BC6BFBEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBCE6990;
  if (!qword_1EBCE6990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCE6990);
  }

  return result;
}

unint64_t sub_1BC6BFC78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBCE6998;
  if (!qword_1EBCE6998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCE6998);
  }

  return result;
}

unint64_t sub_1BC6BFCCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBCE69A0;
  if (!qword_1EBCE69A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCE69A0);
  }

  return result;
}

unint64_t sub_1BC6BFD20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBCDCF98;
  if (!qword_1EBCDCF98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDCF98);
  }

  return result;
}

unint64_t sub_1BC6BFD74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBCDCFA0;
  if (!qword_1EBCDCFA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDCFA0);
  }

  return result;
}

unint64_t sub_1BC6BFDF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBCDCFB0;
  if (!qword_1EBCDCFB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDCFB0);
  }

  return result;
}

unint64_t sub_1BC6BFE4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBCDCFB8;
  if (!qword_1EBCDCFB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDCFB8);
  }

  return result;
}

unint64_t sub_1BC6BFEA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBCE69A8;
  if (!qword_1EBCE69A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCE69A8);
  }

  return result;
}

unint64_t sub_1BC6BFEF4()
{
  result = qword_1EBCDCFD0;
  if (!qword_1EBCDCFD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDCFC8, &qword_1BC764A50);
    sub_1BC6BDE8C(&qword_1EBCDCFD8, type metadata accessor for Report.Media, &protocol conformance descriptor for Report.Media);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDCFD0);
  }

  return result;
}

uint64_t sub_1BC6BFFC8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746E656469636E69 && a2 == 0xEC00000065746144;
  if (v4 || (sub_1BC75C5E0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E7265636E6F63 && a2 == 0xE700000000000000 || (sub_1BC75C5E0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6D6974636976 && a2 == 0xE600000000000000 || (sub_1BC75C5E0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7374636570737573 && a2 == 0xE800000000000000 || (sub_1BC75C5E0() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001BC770660 == a2 || (sub_1BC75C5E0() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001BC772960 == a2 || (sub_1BC75C5E0() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001BC772CB0 == a2 || (sub_1BC75C5E0() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD00000000000001ALL && 0x80000001BC772CD0 == a2 || (sub_1BC75C5E0() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x6E61725474616863 && a2 == 0xEE00747069726373 || (sub_1BC75C5E0() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD00000000000001ALL && 0x80000001BC772990 == a2 || (sub_1BC75C5E0() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x6D6F6F5274616863 && a2 == 0xEC000000656D614ELL || (sub_1BC75C5E0() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x746163696C707061 && a2 == 0xEB000000006E6F69 || (sub_1BC75C5E0() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x656D614E736FLL && a2 == 0xE600000000000000 || (sub_1BC75C5E0() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0x6F6973726556736FLL && a2 == 0xE90000000000006ELL || (sub_1BC75C5E0() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0x7367616C66 && a2 == 0xE500000000000000)
  {

    return 14;
  }

  else
  {
    v6 = sub_1BC75C5E0();

    if (v6)
    {
      return 14;
    }

    else
    {
      return 15;
    }
  }
}

uint64_t sub_1BC6C0484(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4E79616C70736964 && a2 == 0xEB00000000656D61;
  if (v4 || (sub_1BC75C5E0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x49746E756F636361 && a2 == 0xE900000000000044 || (sub_1BC75C5E0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656D614E6C6C7566 && a2 == 0xE800000000000000 || (sub_1BC75C5E0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6464416C69616D65 && a2 == 0xEC00000073736572 || (sub_1BC75C5E0() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6D754E656E6F6870 && a2 == 0xEB00000000726562 || (sub_1BC75C5E0() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6552656369766564 && a2 == 0xEC0000006E6F6967 || (sub_1BC75C5E0() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x73736572646461 && a2 == 0xE700000000000000 || (sub_1BC75C5E0() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6942664F65746164 && a2 == 0xEB00000000687472)
  {

    return 7;
  }

  else
  {
    v6 = sub_1BC75C5E0();

    if (v6)
    {
      return 7;
    }

    else
    {
      return 8;
    }
  }
}

uint64_t sub_1BC6C0734(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4E79616C70736964 && a2 == 0xEB00000000656D61;
  if (v4 || (sub_1BC75C5E0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x49746E756F636361 && a2 == 0xE900000000000044 || (sub_1BC75C5E0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656D614E6C6C7566 && a2 == 0xE800000000000000 || (sub_1BC75C5E0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6464416C69616D65 && a2 == 0xEC00000073736572 || (sub_1BC75C5E0() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6D754E656E6F6870 && a2 == 0xEB00000000726562 || (sub_1BC75C5E0() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x73736572646461 && a2 == 0xE700000000000000 || (sub_1BC75C5E0() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001BC772D10 == a2)
  {

    return 6;
  }

  else
  {
    v6 = sub_1BC75C5E0();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

uint64_t sub_1BC6C0998@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDD1A8, &qword_1BC766480);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v36 - v7;
  v9 = a1[3];
  v74 = a1;
  v10 = __swift_project_boxed_opaque_existential_1(a1, v9);
  sub_1BC6BFEA0(v10, v11, v12);
  sub_1BC75C730();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(v74);
    return swift_bridgeObjectRelease_n();
  }

  else
  {
    v13 = v6;
    v42 = a2;
    LOBYTE(v54[0]) = 0;
    v14 = v5;
    v15 = sub_1BC75C4A0();
    v41 = v16;
    LOBYTE(v54[0]) = 1;
    v17 = sub_1BC75C4A0();
    *(&v40 + 1) = v18;
    LOBYTE(v54[0]) = 2;
    v19 = sub_1BC75C470();
    v21 = v20;
    LOBYTE(v54[0]) = 3;
    v38 = sub_1BC75C470();
    v39 = v19;
    *&v40 = v17;
    v23 = v22;
    LOBYTE(v54[0]) = 4;
    *&v37 = sub_1BC75C470();
    *(&v37 + 1) = v24;
    v63 = 5;
    sub_1BC6BFE4C(v37, v24, v25);
    sub_1BC75C4C0();
    v71 = v66;
    v72 = v67;
    v73 = v68;
    v69 = v64;
    v70 = v65;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDCFC8, &qword_1BC764A50);
    v61 = 6;
    sub_1BC6C3ED8();
    sub_1BC75C4C0();
    (*(v13 + 8))(v8, v14);
    v36 = v62;
    v26 = *(&v40 + 1);
    v27 = v41;
    *&v43 = v15;
    *(&v43 + 1) = v41;
    v44 = v40;
    *&v45 = v39;
    *(&v45 + 1) = v21;
    v28 = *(&v37 + 1);
    *&v46 = v38;
    *(&v46 + 1) = v23;
    v47 = v37;
    v50 = v71;
    v51 = v72;
    v52 = v73;
    v49 = v70;
    v48 = v69;
    v53 = v62;
    sub_1BC6C3F8C(&v43, v54);
    __swift_destroy_boxed_opaque_existential_1(v74);
    v54[0] = v15;
    v54[1] = v27;
    v54[2] = v40;
    v54[3] = v26;
    v54[4] = v39;
    v54[5] = v21;
    v54[6] = v38;
    v54[7] = v23;
    v54[8] = v37;
    v54[9] = v28;
    v57 = v71;
    v58 = v72;
    v59 = v73;
    v55 = v69;
    v56 = v70;
    v60 = v36;
    result = sub_1BC6C3FC4(v54);
    v30 = v52;
    v31 = v42;
    *(v42 + 128) = v51;
    *(v31 + 144) = v30;
    *(v31 + 160) = v53;
    v32 = v48;
    *(v31 + 64) = v47;
    *(v31 + 80) = v32;
    v33 = v50;
    *(v31 + 96) = v49;
    *(v31 + 112) = v33;
    v34 = v44;
    *v31 = v43;
    *(v31 + 16) = v34;
    v35 = v46;
    *(v31 + 32) = v45;
    *(v31 + 48) = v35;
  }

  return result;
}

uint64_t sub_1BC6C0EE4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC6D0, &qword_1BC761EF0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_1BC6C0F54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBCE69B0;
  if (!qword_1EBCE69B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCE69B0);
  }

  return result;
}

uint64_t sub_1BC6C0FA8(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

unint64_t sub_1BC6C1010(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBCE69B8;
  if (!qword_1EBCE69B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCE69B8);
  }

  return result;
}

unint64_t sub_1BC6C1064(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBCE69C0;
  if (!qword_1EBCE69C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCE69C0);
  }

  return result;
}

uint64_t sub_1BC6C10B8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 7107189 && a2 == 0xE300000000000000;
  if (v3 || (sub_1BC75C5E0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65707954697475 && a2 == 0xE700000000000000 || (sub_1BC75C5E0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x76697469736E6573 && a2 == 0xEB00000000797469 || (sub_1BC75C5E0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001BC772D30 == a2 || (sub_1BC75C5E0() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 25705 && a2 == 0xE200000000000000 || (sub_1BC75C5E0() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x363532616873 && a2 == 0xE600000000000000 || (sub_1BC75C5E0() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x4955557465737361 && a2 == 0xE900000000000044 || (sub_1BC75C5E0() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001BC772D50 == a2 || (sub_1BC75C5E0() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x664F7265626D756ELL && a2 == 0xEE00736B6E756843)
  {

    return 8;
  }

  else
  {
    v6 = sub_1BC75C5E0();

    if (v6)
    {
      return 8;
    }

    else
    {
      return 9;
    }
  }
}

uint64_t sub_1BC6C13B0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x73736572646461 && a2 == 0xE700000000000000;
  if (v4 || (sub_1BC75C5E0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 2037672291 && a2 == 0xE400000000000000 || (sub_1BC75C5E0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6574617473 && a2 == 0xE500000000000000 || (sub_1BC75C5E0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7972746E756F63 && a2 == 0xE700000000000000 || (sub_1BC75C5E0() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6F436C6174736F70 && a2 == 0xEA00000000006564)
  {

    return 4;
  }

  else
  {
    v6 = sub_1BC75C5E0();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_1BC6C1564@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDD190, &qword_1BC766470);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v31 - v7;
  v9 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BC6C1064(v9, v10, v11);
  sub_1BC75C730();
  if (v2)
  {
    v36 = v2;
    __swift_destroy_boxed_opaque_existential_1(a1);
    v42 = 0uLL;
    v43 = 0;
    v44 = 0;
    v45 = 0;
    v46 = 0;
    v47 = 0;
    v48 = 0;
    v49 = 0;
    v50 = 0;
    return sub_1BC6BFDC8(&v42);
  }

  else
  {
    LOBYTE(v42) = 0;
    *&v35 = sub_1BC75C470();
    *(&v35 + 1) = v13;
    LOBYTE(v42) = 1;
    v34 = sub_1BC75C470();
    v33 = v14;
    v32 = a2;
    LOBYTE(v42) = 2;
    v15 = sub_1BC75C470();
    v17 = v16;
    LOBYTE(v42) = 3;
    v18 = sub_1BC75C470();
    v20 = v19;
    v51 = 4;
    v21 = sub_1BC75C470();
    v36 = 0;
    v22 = v21;
    v23 = v8;
    v25 = v24;
    (*(v6 + 8))(v23, v5);
    v26 = v35;
    v37 = v35;
    v27 = v33;
    *&v38 = v34;
    *(&v38 + 1) = v33;
    *&v39 = v15;
    *(&v39 + 1) = v17;
    *&v40 = v18;
    *(&v40 + 1) = v20;
    *&v41 = v22;
    *(&v41 + 1) = v25;
    sub_1BC6BFC40(&v37, &v42);
    __swift_destroy_boxed_opaque_existential_1(a1);
    v42 = __PAIR128__(*(&v35 + 1), v26);
    v43 = v34;
    v44 = v27;
    v45 = v15;
    v46 = v17;
    v47 = v18;
    v48 = v20;
    v49 = v22;
    v50 = v25;
    result = sub_1BC6BFDC8(&v42);
    v28 = v40;
    v29 = v32;
    v32[2] = v39;
    v29[3] = v28;
    v29[4] = v41;
    v30 = v38;
    *v29 = v37;
    v29[1] = v30;
  }

  return result;
}

unint64_t sub_1BC6C1940(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBCE69C8[0];
  if (!qword_1EBCE69C8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EBCE69C8);
  }

  return result;
}

uint64_t sub_1BC6C1994(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDD188, &qword_1BC766468);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v12 - v5;
  v7 = a1[4];
  v8 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BC6C1940(v8, v9, v10);
  sub_1BC75C730();
  if (!v1)
  {
    v14 = 0;
    v7 = sub_1BC75C470();
    v13 = 1;
    sub_1BC75C470();
    (*(v4 + 8))(v6, v3);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v7;
}

uint64_t sub_1BC6C1B80(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1BC6C1BE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBCDD088;
  if (!qword_1EBCDD088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDD088);
  }

  return result;
}

uint64_t sub_1BC6C1C3C(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x1BFB26A40](v2, MEMORY[0x1E69E6158], MEMORY[0x1E69E6168]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_1BC6BB834(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

unint64_t sub_1BC6C1CD4(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_17;
  }

  v11 = *v5;
  v12 = (v11 + 32 + 16 * result);
  result = swift_arrayDestroy();
  v13 = __OFSUB__(a3, v6);
  v14 = a3 - v6;
  if (v13)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v14)
  {
    v15 = *(v11 + 16);
    v13 = __OFSUB__(v15, a2);
    v16 = v15 - a2;
    if (!v13)
    {
      result = &v12[2 * a3];
      v17 = (v11 + 32 + 16 * a2);
      if (result != v17 || result >= v17 + 16 * v16)
      {
        result = memmove(result, v17, 16 * v16);
      }

      v19 = *(v11 + 16);
      v13 = __OFADD__(v19, v14);
      v20 = v19 + v14;
      if (!v13)
      {
        *(v11 + 16) = v20;
        goto LABEL_13;
      }

LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
      return result;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_13:
  if (a3 > 0)
  {
    *v12 = a4;
    v12[1] = a5;

    if (a3 != 1)
    {
      goto LABEL_20;
    }
  }

  return result;
}

unint64_t sub_1BC6C1DBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBCDD0A0;
  if (!qword_1EBCDD0A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDD0A0);
  }

  return result;
}

unint64_t sub_1BC6C1E10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1BC6C1DBC(a1, a2, a3);
  *(a1 + 8) = v4;
  result = sub_1BC6C1E40(v4, v5, v6);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1BC6C1E40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBCDD0A8;
  if (!qword_1EBCDD0A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDD0A8);
  }

  return result;
}

unint64_t sub_1BC6C1EDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBCDD0C0;
  if (!qword_1EBCDD0C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDD0C0);
  }

  return result;
}

void sub_1BC6C1F68(uint64_t a1)
{
  sub_1BC6C21C4(319, &qword_1EBCDD0C8, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    _s6VictimVMa(319);
    if (v2 <= 0x3F)
    {
      sub_1BC6C29AC(319, &qword_1EBCDD0D0, &_s7SuspectVN, MEMORY[0x1E69E62F8]);
      if (v3 <= 0x3F)
      {
        type metadata accessor for SCUIInterventionType(319);
        if (v4 <= 0x3F)
        {
          sub_1BC6C29AC(319, &qword_1EDDCF0F0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
          if (v5 <= 0x3F)
          {
            sub_1BC6C29AC(319, &qword_1EBCDD0D8, &type metadata for AustralianState, MEMORY[0x1E69E6720]);
            if (v6 <= 0x3F)
            {
              sub_1BC6C21C4(319, &qword_1EBCDD0E0, type metadata accessor for Report.Message, MEMORY[0x1E69E62F8]);
              if (v7 <= 0x3F)
              {
                sub_1BC6C29AC(319, &qword_1EBCDD0E8, MEMORY[0x1E6969080], MEMORY[0x1E69E6720]);
                if (v8 <= 0x3F)
                {
                  type metadata accessor for SCUIReportingApplication(319);
                  if (v9 <= 0x3F)
                  {
                    type metadata accessor for SCUIReportFlags(319);
                    if (v10 <= 0x3F)
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
    }
  }
}

void sub_1BC6C21C4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1BC6C2260(uint64_t a1)
{
  sub_1BC6C29AC(319, &qword_1EDDCF0F0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    sub_1BC759910();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

__n128 __swift_memcpy168_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  result = a2[7];
  v8 = a2[8];
  v9 = a2[9];
  *(a1 + 160) = *(a2 + 20);
  *(a1 + 128) = v8;
  *(a1 + 144) = v9;
  *(a1 + 112) = result;
  return result;
}

uint64_t sub_1BC6C236C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 168))
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

uint64_t sub_1BC6C23B4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0u;
    *(result + 152) = 0u;
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
      *(result + 168) = 1;
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

    *(result + 168) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1BC6C2454(uint64_t a1)
{
  sub_1BC759800();
  if (v1 <= 0x3F)
  {
    sub_1BC759B50();
    if (v2 <= 0x3F)
    {
      sub_1BC6C21C4(319, &qword_1EBCDD0F0, MEMORY[0x1E697B600], MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        sub_1BC6C29AC(319, &qword_1EBCDD0E8, MEMORY[0x1E6969080], MEMORY[0x1E69E6720]);
        if (v4 <= 0x3F)
        {
          sub_1BC6C29AC(319, &qword_1EDDCF0F0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
          if (v5 <= 0x3F)
          {
            sub_1BC6C21C4(319, &qword_1EBCDD0F8, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
            if (v6 <= 0x3F)
            {
              sub_1BC6C29AC(319, &qword_1EBCDD100, MEMORY[0x1E69E6530], MEMORY[0x1E69E6720]);
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

uint64_t sub_1BC6C2634(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 80))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
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

uint64_t sub_1BC6C2690(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 80) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 80) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_1BC6C2708(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
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

uint64_t sub_1BC6C2764(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

void sub_1BC6C27F0(uint64_t a1)
{
  sub_1BC759800();
  if (v1 <= 0x3F)
  {
    sub_1BC6C2884(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1BC6C2884(uint64_t a1)
{
  if (!qword_1EBCDD108)
  {
    sub_1BC65F664(255, &qword_1EBCDD110, 0x1E695B878);
    v1 = sub_1BC75BD70();
    if (!v2)
    {
      atomic_store(v1, &qword_1EBCDD108);
    }
  }
}

uint64_t sub_1BC6C28EC(uint64_t a1, int a2)
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

uint64_t sub_1BC6C2934(uint64_t result, int a2, int a3)
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

void sub_1BC6C29AC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t _s5MediaV10CodingKeysOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_17;
  }

  if (a2 + 8 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 8) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 8;
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

      return (*a1 | (v4 << 8)) - 8;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v8 = v6 - 9;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s5MediaV10CodingKeysOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF8)
  {
    v4 = 0;
  }

  if (a2 > 0xF7)
  {
    v5 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1BC6C2B78(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_1BC6C2C0C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t _s8EvidenceV10CodingKeysOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF2)
  {
    goto LABEL_17;
  }

  if (a2 + 14 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 14) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 14;
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

      return (*a1 | (v4 << 8)) - 14;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 14;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xF;
  v8 = v6 - 15;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s8EvidenceV10CodingKeysOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 14 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 14) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF2)
  {
    v4 = 0;
  }

  if (a2 > 0xF1)
  {
    v5 = ((a2 - 242) >> 8) + 1;
    *result = a2 + 14;
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
    *result = a2 + 14;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t _s7SuspectV10CodingKeysOwet_0(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s7SuspectV10CodingKeysOwst_0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1BC6C2FD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBCE8110[0];
  if (!qword_1EBCE8110[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EBCE8110);
  }

  return result;
}

unint64_t sub_1BC6C3030(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBCE83A0[0];
  if (!qword_1EBCE83A0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EBCE83A0);
  }

  return result;
}

unint64_t sub_1BC6C3088(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBCE8630[0];
  if (!qword_1EBCE8630[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EBCE8630);
  }

  return result;
}

unint64_t sub_1BC6C30E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBCE88C0[0];
  if (!qword_1EBCE88C0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EBCE88C0);
  }

  return result;
}

unint64_t sub_1BC6C3258(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBCE8D50[0];
  if (!qword_1EBCE8D50[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EBCE8D50);
  }

  return result;
}

unint64_t sub_1BC6C32B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBCE8FE0[0];
  if (!qword_1EBCE8FE0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EBCE8FE0);
  }

  return result;
}

unint64_t sub_1BC6C3308(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBCE91F0;
  if (!qword_1EBCE91F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCE91F0);
  }

  return result;
}

unint64_t sub_1BC6C3360(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBCE9400[0];
  if (!qword_1EBCE9400[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EBCE9400);
  }

  return result;
}

unint64_t sub_1BC6C33B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBCE9690[0];
  if (!qword_1EBCE9690[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EBCE9690);
  }

  return result;
}

unint64_t sub_1BC6C3410(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBCE98A0[0];
  if (!qword_1EBCE98A0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EBCE98A0);
  }

  return result;
}

unint64_t sub_1BC6C3468(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBCE9AB0[0];
  if (!qword_1EBCE9AB0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EBCE9AB0);
  }

  return result;
}

unint64_t sub_1BC6C34C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBCE9CC0[0];
  if (!qword_1EBCE9CC0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EBCE9CC0);
  }

  return result;
}

unint64_t sub_1BC6C3518(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBCE9E50;
  if (!qword_1EBCE9E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCE9E50);
  }

  return result;
}

unint64_t sub_1BC6C3570(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBCE9E58[0];
  if (!qword_1EBCE9E58[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EBCE9E58);
  }

  return result;
}

unint64_t sub_1BC6C35C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBCE9EE0;
  if (!qword_1EBCE9EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCE9EE0);
  }

  return result;
}

unint64_t sub_1BC6C3620(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBCE9EE8[0];
  if (!qword_1EBCE9EE8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EBCE9EE8);
  }

  return result;
}

unint64_t sub_1BC6C3678(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBCE9F70;
  if (!qword_1EBCE9F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCE9F70);
  }

  return result;
}

unint64_t sub_1BC6C36D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBCE9F78;
  if (!qword_1EBCE9F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCE9F78);
  }

  return result;
}

unint64_t sub_1BC6C3728(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBCEA000;
  if (!qword_1EBCEA000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCEA000);
  }

  return result;
}

unint64_t sub_1BC6C3780(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBCEA008[0];
  if (!qword_1EBCEA008[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EBCEA008);
  }

  return result;
}

unint64_t sub_1BC6C37D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBCEA090;
  if (!qword_1EBCEA090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCEA090);
  }

  return result;
}

unint64_t sub_1BC6C3830(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBCEA098[0];
  if (!qword_1EBCEA098[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EBCEA098);
  }

  return result;
}

unint64_t sub_1BC6C3888(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBCEA120;
  if (!qword_1EBCEA120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCEA120);
  }

  return result;
}

unint64_t sub_1BC6C38E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBCEA128[0];
  if (!qword_1EBCEA128[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EBCEA128);
  }

  return result;
}

unint64_t sub_1BC6C3938(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBCEA1B0;
  if (!qword_1EBCEA1B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCEA1B0);
  }

  return result;
}

unint64_t sub_1BC6C3990(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBCEA1B8[0];
  if (!qword_1EBCEA1B8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EBCEA1B8);
  }

  return result;
}

unint64_t sub_1BC6C39E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBCEA240;
  if (!qword_1EBCEA240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCEA240);
  }

  return result;
}

unint64_t sub_1BC6C3A40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBCEA248[0];
  if (!qword_1EBCEA248[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EBCEA248);
  }

  return result;
}

unint64_t sub_1BC6C3A98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBCEA2D0;
  if (!qword_1EBCEA2D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCEA2D0);
  }

  return result;
}

unint64_t sub_1BC6C3AF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBCEA2D8[0];
  if (!qword_1EBCEA2D8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EBCEA2D8);
  }

  return result;
}

unint64_t sub_1BC6C3B48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBCEA360;
  if (!qword_1EBCEA360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCEA360);
  }

  return result;
}

unint64_t sub_1BC6C3BA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBCEA368[0];
  if (!qword_1EBCEA368[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EBCEA368);
  }

  return result;
}

unint64_t sub_1BC6C3BF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBCEA3F0;
  if (!qword_1EBCEA3F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCEA3F0);
  }

  return result;
}

unint64_t sub_1BC6C3C50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBCEA3F8[0];
  if (!qword_1EBCEA3F8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EBCEA3F8);
  }

  return result;
}

unint64_t sub_1BC6C3CA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBCEA480;
  if (!qword_1EBCEA480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCEA480);
  }

  return result;
}

unint64_t sub_1BC6C3D00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBCEA488[0];
  if (!qword_1EBCEA488[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EBCEA488);
  }

  return result;
}

unint64_t sub_1BC6C3D54(uint64_t a1, uint64_t a2)
{
  v2 = sub_1BC75C440();

  if (v2 >= 7)
  {
    return 7;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_1BC6C3DA0(uint64_t a1, uint64_t a2)
{
  v2 = sub_1BC75C440();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_1BC6C3DEC(uint64_t a1, uint64_t a2)
{
  v2 = sub_1BC75C440();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_1BC6C3E38(uint64_t a1, uint64_t a2)
{
  v2 = sub_1BC75C440();

  if (v2 >= 5)
  {
    return 5;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_1BC6C3E84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBCDD160;
  if (!qword_1EBCDD160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDD160);
  }

  return result;
}

unint64_t sub_1BC6C3ED8()
{
  result = qword_1EBCDD1B0;
  if (!qword_1EBCDD1B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDCFC8, &qword_1BC764A50);
    sub_1BC6BDE8C(&qword_1EBCDD1B8, type metadata accessor for Report.Media, &protocol conformance descriptor for Report.Media);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDD1B0);
  }

  return result;
}

uint64_t sub_1BC6C4028(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC998, &qword_1BC7641A0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t WarningMenuButton.body.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDD1F8, &qword_1BC7664A8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v40 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDD200, &qword_1BC7664B0);
  v42 = *(v7 - 8);
  v43 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v40 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC998, &qword_1BC7641A0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v40 - v11;
  v13 = sub_1BC759CA0();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BC6C45B8(v2, v12);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_1BC66008C(v12, &qword_1EBCDC998, &qword_1BC7641A0);
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDD208, &qword_1BC7664B8);
    return (*(*(v17 - 8) + 56))(a1, 1, 1, v17);
  }

  else
  {
    (*(v14 + 32))(v16, v12, v13);
    v19 = type metadata accessor for _WarningMenuButton(0);
    (*(v14 + 16))(&v6[*(v19 + 24)], v16, v13);
    *&v46[0] = swift_getKeyPath();
    sub_1BC6A7104(v46);
    v20 = v46[11];
    *(v6 + 10) = v46[10];
    *(v6 + 11) = v20;
    *(v6 + 12) = v46[12];
    v6[208] = v47;
    v21 = v46[7];
    *(v6 + 6) = v46[6];
    *(v6 + 7) = v21;
    v22 = v46[9];
    *(v6 + 8) = v46[8];
    *(v6 + 9) = v22;
    v23 = v46[3];
    *(v6 + 2) = v46[2];
    *(v6 + 3) = v23;
    v24 = v46[5];
    *(v6 + 4) = v46[4];
    *(v6 + 5) = v24;
    v25 = v46[1];
    *v6 = v46[0];
    *(v6 + 1) = v25;
    PolicyProperty.init()(&v6[*(v19 + 20)]);
    v26 = sub_1BC75B810();
    v28 = v27;
    v29 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDD210, &qword_1BC7664E8) + 36);
    v41 = a1;
    v30 = &v6[v29];
    sub_1BC75B7E0();
    *&v30[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDD218, &qword_1BC7664F0) + 56)] = 256;
    v31 = &v30[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDD220, &qword_1BC7664F8) + 36)];
    *v31 = v26;
    v31[1] = v28;
    sub_1BC75B810();
    sub_1BC75A810();
    v32 = &v6[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDD228, &qword_1BC766500) + 36)];
    v33 = v48[1];
    *v32 = v48[0];
    *(v32 + 1) = v33;
    *(v32 + 2) = v48[2];
    v34 = sub_1BC75B000();
    v35 = &v6[*(v4 + 36)];
    *v35 = v34;
    *(v35 + 8) = 0u;
    *(v35 + 24) = 0u;
    v35[40] = 1;
    v36 = sub_1BC6C464C();
    View.prefetchSensitiveContentPolicy()(v4, v36);
    sub_1BC66008C(v6, &qword_1EBCDD1F8, &qword_1BC7664A8);
    v44 = v4;
    v45 = v36;
    swift_getOpaqueTypeConformance2();
    v37 = v41;
    v38 = v43;
    sub_1BC75B330();
    (*(v42 + 8))(v9, v38);
    (*(v14 + 8))(v16, v13);
    v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDD208, &qword_1BC7664B8);
    return (*(*(v39 - 8) + 56))(v37, 0, 1, v39);
  }
}

uint64_t sub_1BC6C45B8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC998, &qword_1BC7641A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1BC6C464C()
{
  result = qword_1EBCDD230;
  if (!qword_1EBCDD230)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDD1F8, &qword_1BC7664A8);
    sub_1BC6C46D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDD230);
  }

  return result;
}

unint64_t sub_1BC6C46D8()
{
  result = qword_1EBCDD238;
  if (!qword_1EBCDD238)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDD228, &qword_1BC766500);
    sub_1BC6C4764();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDD238);
  }

  return result;
}

unint64_t sub_1BC6C4764()
{
  result = qword_1EBCDD240;
  if (!qword_1EBCDD240)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDD210, &qword_1BC7664E8);
    sub_1BC6C6264(&qword_1EBCDD248, type metadata accessor for _WarningMenuButton, &unk_1BC766614);
    sub_1BC6C4820();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDD240);
  }

  return result;
}

unint64_t sub_1BC6C4820()
{
  result = qword_1EBCDD250;
  if (!qword_1EBCDD250)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDD220, &qword_1BC7664F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDD250);
  }

  return result;
}

id sub_1BC6C4884()
{
  v1 = sub_1BC75ABB0();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v30[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = v0[11];
  v6 = v0[9];
  v82 = v0[10];
  v83 = v5;
  v7 = v0[11];
  v84 = v0[12];
  v8 = v0[7];
  v9 = v0[5];
  v78 = v0[6];
  v79 = v8;
  v10 = v0[7];
  v11 = v0[9];
  v80 = v0[8];
  v81 = v11;
  v12 = v0[3];
  v13 = v0[1];
  v74 = v0[2];
  v75 = v12;
  v14 = v0[3];
  v15 = v0[5];
  v76 = v0[4];
  v77 = v15;
  v16 = v0[1];
  v72 = *v0;
  v73 = v16;
  v86[10] = v82;
  v86[11] = v7;
  v86[12] = v0[12];
  v86[6] = v78;
  v86[7] = v10;
  v86[8] = v80;
  v86[9] = v6;
  v86[2] = v74;
  v86[3] = v14;
  v86[4] = v76;
  v86[5] = v9;
  v85 = *(v0 + 208);
  v87 = *(v0 + 208);
  v86[0] = v72;
  v86[1] = v13;
  if (sub_1BC6A78D4(v86) == 1)
  {
    nullsub_1();
    v41 = v82;
    v42 = v83;
    v43 = v84;
    v44 = v85;
    v37 = v78;
    v38 = v79;
    v39 = v80;
    v40 = v81;
    v33 = v74;
    v34 = v75;
    v35 = v76;
    v36 = v77;
    v31 = v72;
    v32 = v73;
    nullsub_1();
    v59 = *v17;
    v18 = v17[1];
    v19 = v17[2];
    v20 = v17[4];
    v62 = v17[3];
    v63 = v20;
    v60 = v18;
    v61 = v19;
    v21 = v17[5];
    v22 = v17[6];
    v23 = v17[8];
    v66 = v17[7];
    v67 = v23;
    v64 = v21;
    v65 = v22;
    v24 = v17[9];
    v25 = v17[10];
    v26 = v17[12];
    v70 = v17[11];
    v71 = v26;
    v68 = v24;
    v69 = v25;
    v58 = v85;
    v56 = v83;
    v57 = v84;
    v54 = v81;
    v55 = v82;
    v52 = v79;
    v53 = v80;
    v50 = v77;
    v51 = v78;
    v48 = v75;
    v49 = v76;
    v46 = v73;
    v47 = v74;
    v45 = v72;
    nullsub_1();
    sub_1BC6362BC(v27, v30);
  }

  else
  {
    nullsub_1();
    v41 = v82;
    v42 = v83;
    v43 = v84;
    v44 = v85;
    v37 = v78;
    v38 = v79;
    v39 = v80;
    v40 = v81;
    v33 = v74;
    v34 = v75;
    v35 = v76;
    v36 = v77;
    v31 = v72;
    v32 = v73;
    nullsub_1();
    v45 = v72;
    v46 = v73;
    v49 = v76;
    v50 = v77;
    v47 = v74;
    v48 = v75;
    v53 = v80;
    v54 = v81;
    v51 = v78;
    v52 = v79;
    v58 = v85;
    v56 = v83;
    v57 = v84;
    v55 = v82;
    nullsub_1();

    sub_1BC75BF70();
    v28 = sub_1BC75AFC0();
    sub_1BC75A4B0();

    sub_1BC75ABA0();
    swift_getAtKeyPath();
    sub_1BC66008C(&v72, &qword_1EBCDD8B0, &qword_1BC764368);
    (*(v2 + 8))(v4, v1);
  }

  type metadata accessor for Callbacks.LegacyDelegate(0);
  v55 = v69;
  v56 = v70;
  v57 = v71;
  v51 = v65;
  v52 = v66;
  v53 = v67;
  v54 = v68;
  v47 = v61;
  v48 = v62;
  v49 = v63;
  v50 = v64;
  v45 = v59;
  v46 = v60;
  return Callbacks.LegacyDelegate.__allocating_init(callbacks:)(&v45);
}

id sub_1BC6C4C4C(uint64_t a1)
{
  v2 = v1;
  v76 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCDBD90, &unk_1BC75F850);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v80 = &v72 - v4;
  v5 = sub_1BC75ABB0();
  v73 = *(v5 - 8);
  v74 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v72 = &v72 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDD258, &qword_1BC766508);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v75 = &v72 - v8;
  v9 = sub_1BC75C080();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v72 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1BC75C0E0();
  v81 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v72 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BC75C0D0();
  v16 = [objc_opt_self() configurationWithTextStyle_];
  v17 = sub_1BC75BB30();
  v18 = [objc_opt_self() systemImageNamed:v17 withConfiguration:v16];

  v77 = v16;
  sub_1BC75C0C0();
  v19 = [objc_opt_self() labelColor];
  sub_1BC75C0B0();
  (*(v10 + 104))(v12, *MEMORY[0x1E69DC508], v9);
  sub_1BC75C090();
  v20 = [objc_opt_self() preferredFontForTextStyle_];
  [v20 _scaledValueForValue_];
  v22 = v21;

  v23 = sub_1BC75C0A0();
  *v24 = *v24 - v22;
  v23(v139, 0);
  v25 = sub_1BC75C0A0();
  *(v26 + 16) = v22 + *(v26 + 16);
  v25(v139, 0);
  v27 = [objc_allocWithZone(MEMORY[0x1E69DC738]) init];
  v28 = v81;
  v29 = *(v81 + 16);
  v30 = v75;
  v78 = v15;
  v29(v75, v15, v13);
  v31 = *(v28 + 56);
  v79 = v13;
  v31(v30, 0, 1, v13);
  sub_1BC75C0F0();
  v32 = [v27 titleLabel];
  if (v32)
  {
    v33 = v32;
    [v32 _setOverrideUserInterfaceStyle_];
  }

  v34 = [v27 imageView];
  if (v34)
  {
    v35 = v34;
    [v34 _setOverrideUserInterfaceStyle_];
  }

  [v27 setShowsMenuAsPrimaryAction_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDD260, &qword_1BC766510);
  sub_1BC75AF10();
  v36 = v2[11];
  v37 = v2[9];
  v135 = v2[10];
  v136 = v36;
  v38 = v2[11];
  v137 = v2[12];
  v39 = v2[7];
  v40 = v2[5];
  v131 = v2[6];
  v132 = v39;
  v41 = v2[7];
  v42 = v2[9];
  v133 = v2[8];
  v134 = v42;
  v43 = v2[3];
  v44 = v2[1];
  v127 = v2[2];
  v128 = v43;
  v45 = v2[3];
  v46 = v2[5];
  v129 = v2[4];
  v130 = v46;
  v47 = v2[1];
  v125 = *v2;
  v126 = v47;
  v139[10] = v135;
  v139[11] = v38;
  v139[12] = v2[12];
  v139[6] = v131;
  v139[7] = v41;
  v139[8] = v133;
  v139[9] = v37;
  v139[2] = v127;
  v139[3] = v45;
  v139[4] = v129;
  v139[5] = v40;
  v48 = v124;
  v138 = *(v2 + 208);
  v140 = *(v2 + 208);
  v139[0] = v125;
  v139[1] = v44;
  if (sub_1BC6A78D4(v139) == 1)
  {
    nullsub_1();
    v93 = v135;
    v94 = v136;
    v95 = v137;
    v96 = v138;
    v89 = v131;
    v90 = v132;
    v91 = v133;
    v92 = v134;
    v85 = v127;
    v86 = v128;
    v87 = v129;
    v88 = v130;
    v83 = v125;
    v84 = v126;
    nullsub_1();
    v111 = *v49;
    v50 = v49[1];
    v51 = v49[2];
    v52 = v49[4];
    v114 = v49[3];
    v115 = v52;
    v112 = v50;
    v113 = v51;
    v53 = v49[5];
    v54 = v49[6];
    v55 = v49[8];
    v118 = v49[7];
    v119 = v55;
    v116 = v53;
    v117 = v54;
    v56 = v49[9];
    v57 = v49[10];
    v58 = v49[12];
    v122 = v49[11];
    v123 = v58;
    v120 = v56;
    v121 = v57;
    v110 = v138;
    v108 = v136;
    v109 = v137;
    v106 = v134;
    v107 = v135;
    v104 = v132;
    v105 = v133;
    v102 = v130;
    v103 = v131;
    v100 = v128;
    v101 = v129;
    v98 = v126;
    v99 = v127;
    v97 = v125;
    nullsub_1();
    sub_1BC6362BC(v59, &v82);
  }

  else
  {
    nullsub_1();
    v93 = v135;
    v94 = v136;
    v95 = v137;
    v96 = v138;
    v89 = v131;
    v90 = v132;
    v91 = v133;
    v92 = v134;
    v85 = v127;
    v86 = v128;
    v87 = v129;
    v88 = v130;
    v83 = v125;
    v84 = v126;
    nullsub_1();
    v97 = v125;
    v98 = v126;
    v101 = v129;
    v102 = v130;
    v99 = v127;
    v100 = v128;
    v105 = v133;
    v106 = v134;
    v103 = v131;
    v104 = v132;
    v110 = v138;
    v108 = v136;
    v109 = v137;
    v107 = v135;
    nullsub_1();

    sub_1BC75BF70();
    v60 = sub_1BC75AFC0();
    sub_1BC75A4B0();

    v61 = v72;
    sub_1BC75ABA0();
    swift_getAtKeyPath();
    sub_1BC66008C(&v125, &qword_1EBCDD8B0, &qword_1BC764368);
    (*(v73 + 8))(v61, v74);
  }

  v62 = v80;
  v107 = v121;
  v108 = v122;
  v109 = v123;
  v103 = v117;
  v104 = v118;
  v105 = v119;
  v106 = v120;
  v99 = v113;
  v100 = v114;
  v101 = v115;
  v102 = v116;
  v97 = v111;
  v98 = v112;
  v93 = v121;
  v94 = v122;
  v95 = v123;
  v89 = v117;
  v90 = v118;
  v91 = v119;
  v92 = v120;
  v85 = v113;
  v86 = v114;
  v87 = v115;
  v88 = v116;
  v83 = v111;
  v84 = v112;
  v63 = sub_1BC712B9C();
  sub_1BC69811C(&v97);
  type metadata accessor for _WarningMenuButton(0);
  PolicyProperty.wrappedValue.getter(v62);
  v64 = sub_1BC759EE0();
  v65 = *(v64 - 8);
  if ((*(v65 + 48))(v62, 1, v64) == 1)
  {
    sub_1BC66008C(v62, &unk_1EBCDBD90, &unk_1BC75F850);
LABEL_11:
    v66 = 2;
    goto LABEL_12;
  }

  v66 = sub_1BC6F39FC();
  v67 = v62;
  v69 = v68;
  (*(v65 + 8))(v67, v64);
  if (v69)
  {
    goto LABEL_11;
  }

LABEL_12:
  v70 = [objc_opt_self() menuWithDelegate:v48 additionalOptions:v63 interventionType:v66];

  [v27 setMenu_];
  (*(v81 + 8))(v78, v79);
  return v27;
}

void sub_1BC6C5624(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCDBD90, &unk_1BC75F850);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v43 - v4;
  v6 = sub_1BC75ABB0();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDD260, &qword_1BC766510);
  sub_1BC75AF10();
  v10 = v1[11];
  v11 = v1[9];
  v97 = v1[10];
  v98 = v10;
  v12 = v1[11];
  v99 = v1[12];
  v13 = v1[7];
  v14 = v1[5];
  v93 = v1[6];
  v94 = v13;
  v15 = v1[7];
  v16 = v1[9];
  v95 = v1[8];
  v96 = v16;
  v17 = v1[3];
  v18 = v1[1];
  v89 = v1[2];
  v90 = v17;
  v19 = v1[3];
  v20 = v1[5];
  v91 = v1[4];
  v92 = v20;
  v21 = v1[1];
  v87 = *v1;
  v88 = v21;
  v101[10] = v97;
  v101[11] = v12;
  v101[12] = v1[12];
  v101[6] = v93;
  v101[7] = v15;
  v101[8] = v95;
  v101[9] = v11;
  v101[2] = v89;
  v101[3] = v19;
  v101[4] = v91;
  v101[5] = v14;
  v22 = v86;
  v100 = *(v1 + 208);
  v102 = *(v1 + 208);
  v101[0] = v87;
  v101[1] = v18;
  if (sub_1BC6A78D4(v101) == 1)
  {
    nullsub_1();
    v55 = v97;
    v56 = v98;
    v57 = v99;
    v58 = v100;
    v51 = v93;
    v52 = v94;
    v53 = v95;
    v54 = v96;
    v47 = v89;
    v48 = v90;
    v49 = v91;
    v50 = v92;
    v45 = v87;
    v46 = v88;
    nullsub_1();
    v73 = *v23;
    v24 = v23[1];
    v25 = v23[2];
    v26 = v23[4];
    v76 = v23[3];
    v77 = v26;
    v74 = v24;
    v75 = v25;
    v27 = v23[5];
    v28 = v23[6];
    v29 = v23[8];
    v80 = v23[7];
    v81 = v29;
    v78 = v27;
    v79 = v28;
    v30 = v23[9];
    v31 = v23[10];
    v32 = v23[12];
    v84 = v23[11];
    v85 = v32;
    v82 = v30;
    v83 = v31;
    v72 = v100;
    v70 = v98;
    v71 = v99;
    v68 = v96;
    v69 = v97;
    v66 = v94;
    v67 = v95;
    v64 = v92;
    v65 = v93;
    v62 = v90;
    v63 = v91;
    v60 = v88;
    v61 = v89;
    v59 = v87;
    nullsub_1();
    sub_1BC6362BC(v33, &v44);
  }

  else
  {
    nullsub_1();
    v55 = v97;
    v56 = v98;
    v57 = v99;
    v58 = v100;
    v51 = v93;
    v52 = v94;
    v53 = v95;
    v54 = v96;
    v47 = v89;
    v48 = v90;
    v49 = v91;
    v50 = v92;
    v45 = v87;
    v46 = v88;
    nullsub_1();
    v43[1] = *v34;
    v59 = v87;
    v60 = v88;
    v63 = v91;
    v64 = v92;
    v61 = v89;
    v62 = v90;
    v67 = v95;
    v68 = v96;
    v65 = v93;
    v66 = v94;
    v72 = v100;
    v70 = v98;
    v71 = v99;
    v69 = v97;
    nullsub_1();

    sub_1BC75BF70();
    v35 = sub_1BC75AFC0();
    sub_1BC75A4B0();

    sub_1BC75ABA0();
    swift_getAtKeyPath();
    sub_1BC66008C(&v87, &qword_1EBCDD8B0, &qword_1BC764368);
    (*(v7 + 8))(v9, v6);
  }

  v69 = v83;
  v70 = v84;
  v71 = v85;
  v65 = v79;
  v66 = v80;
  v67 = v81;
  v68 = v82;
  v61 = v75;
  v62 = v76;
  v63 = v77;
  v64 = v78;
  v59 = v73;
  v60 = v74;
  v55 = v83;
  v56 = v84;
  v57 = v85;
  v51 = v79;
  v52 = v80;
  v53 = v81;
  v54 = v82;
  v47 = v75;
  v48 = v76;
  v49 = v77;
  v50 = v78;
  v45 = v73;
  v46 = v74;
  v36 = sub_1BC712B9C();
  sub_1BC69811C(&v59);
  type metadata accessor for _WarningMenuButton(0);
  PolicyProperty.wrappedValue.getter(v5);
  v37 = sub_1BC759EE0();
  v38 = *(v37 - 8);
  if ((*(v38 + 48))(v5, 1, v37) == 1)
  {
    sub_1BC66008C(v5, &unk_1EBCDBD90, &unk_1BC75F850);
LABEL_7:
    v39 = 2;
    goto LABEL_8;
  }

  v39 = sub_1BC6F39FC();
  v41 = v40;
  (*(v38 + 8))(v5, v37);
  if (v41)
  {
    goto LABEL_7;
  }

LABEL_8:
  v42 = [objc_opt_self() menuWithDelegate:v22 additionalOptions:v36 interventionType:v39];

  [a1 setMenu_];
}

uint64_t sub_1BC6C5BEC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BC6C6264(&qword_1EBCDD288, type metadata accessor for _WarningMenuButton, &unk_1BC766568);

  return PlatformViewRepresentable.makeUIView(context:)(a1, a2, v4);
}

uint64_t sub_1BC6C5C68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BC6C6264(&qword_1EBCDD288, type metadata accessor for _WarningMenuButton, &unk_1BC766568);

  return PlatformViewRepresentable.updateUIView(_:context:)(a1, a2, a3, v6);
}

id sub_1BC6C5CF4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1BC6C4884();
  *a1 = result;
  return result;
}

uint64_t sub_1BC6C5D64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BC6C6264(&qword_1EBCDD268, type metadata accessor for _WarningMenuButton, &unk_1BC766584);

  return MEMORY[0x1EEDDAA28](a1, a2, a3, v6);
}

uint64_t sub_1BC6C5DF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BC6C6264(&qword_1EBCDD268, type metadata accessor for _WarningMenuButton, &unk_1BC766584);

  return MEMORY[0x1EEDDA9B8](a1, a2, a3, v6);
}

void sub_1BC6C5E8C(uint64_t a1)
{
  sub_1BC6C6264(&qword_1EBCDD268, type metadata accessor for _WarningMenuButton, &unk_1BC766584);
  sub_1BC75ADC0();
  __break(1u);
}

uint64_t sub_1BC6C5EE4()
{
  v0 = [objc_opt_self() secondaryLabelColor];
  result = sub_1BC75B4D0();
  qword_1EBCF45F0 = result;
  return result;
}

uint64_t *sub_1BC6C5F24()
{
  if (qword_1EBCEA510 != -1)
  {
    swift_once();
  }

  return &qword_1EBCF45F0;
}

uint64_t sub_1BC6C5F74()
{
  if (qword_1EBCEA510 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  qword_1EBCF45F8 = qword_1EBCF45F0;
}

uint64_t *sub_1BC6C5FF4()
{
  if (qword_1EBCEA518 != -1)
  {
    swift_once();
  }

  return &qword_1EBCF45F8;
}

uint64_t sub_1BC6C6044()
{
  v0 = objc_opt_self();
  v1 = *MEMORY[0x1E69DDCF8];
  v2 = [v0 preferredFontForTextStyle_];

  result = sub_1BC75B100();
  qword_1EBCF4600 = result;
  return result;
}

uint64_t *sub_1BC6C60B8()
{
  if (qword_1EBCEA520 != -1)
  {
    swift_once();
  }

  return &qword_1EBCF4600;
}

uint64_t sub_1BC6C6108()
{
  v0 = objc_opt_self();
  v1 = *MEMORY[0x1E69DDD28];
  v2 = [v0 preferredFontForTextStyle_];

  v3 = [v2 fontWithSize_];
  result = sub_1BC75B100();
  qword_1EBCF4608 = result;
  return result;
}

uint64_t *sub_1BC6C61A0()
{
  if (qword_1EBCEA528 != -1)
  {
    swift_once();
  }

  return &qword_1EBCF4608;
}

uint64_t sub_1BC6C620C(uint64_t a1)
{
  result = sub_1BC6C6264(&qword_1EBCDD268, type metadata accessor for _WarningMenuButton, &unk_1BC766584);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1BC6C6264(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1BC6C633C(uint64_t a1)
{
  sub_1BC6C63A8(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_1BC6C63A8(uint64_t a1)
{
  if (!qword_1EDDCE6F8)
  {
    sub_1BC759CA0();
    v1 = sub_1BC75C110();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDDCE6F8);
    }
  }
}

void sub_1BC6C6428(uint64_t a1)
{
  sub_1BC6A8C64();
  if (v1 <= 0x3F)
  {
    type metadata accessor for PolicyProperty(319);
    if (v2 <= 0x3F)
    {
      sub_1BC759CA0();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_1BC6C64C4()
{
  result = qword_1EBCDD270;
  if (!qword_1EBCDD270)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDD278, &qword_1BC7666A8);
    sub_1BC6C6548();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDD270);
  }

  return result;
}

unint64_t sub_1BC6C6548()
{
  result = qword_1EBCDD280;
  if (!qword_1EBCDD280)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDD208, &qword_1BC7664B8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDD1F8, &qword_1BC7664A8);
    sub_1BC6C464C();
    swift_getOpaqueTypeConformance2();
    sub_1BC6C6264(&qword_1EDDCE000, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDD280);
  }

  return result;
}

uint64_t sub_1BC6C6640(uint64_t a1)
{
  v1[3] = a1;
  v2 = sub_1BC7594B0();
  v1[4] = v2;
  v1[5] = *(v2 - 8);
  v1[6] = swift_task_alloc();
  v3 = sub_1BC759AA0();
  v1[7] = v3;
  v1[8] = *(v3 - 8);
  v1[9] = swift_task_alloc();
  v4 = sub_1BC759AB0();
  v1[10] = v4;
  v1[11] = *(v4 - 8);
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BC6C67C4, 0, 0);
}

uint64_t sub_1BC6C67C4()
{
  sub_1BC759AC0();
  (*(v0[11] + 16))(v0[12], v0[13], v0[10]);
  sub_1BC6C6D1C(&qword_1EBCDD290, MEMORY[0x1E6966BE8], MEMORY[0x1E6966BF0]);
  sub_1BC75BE30();
  v1 = sub_1BC6C6D1C(&qword_1EBCDD298, MEMORY[0x1E6966BD8], MEMORY[0x1E6966BE0]);
  v2 = swift_task_alloc();
  v0[14] = v2;
  *v2 = v0;
  v2[1] = sub_1BC6C6994;
  v3 = v0[7];

  return MEMORY[0x1EEE6D8C8](v0 + 2, v3, v1);
}

uint64_t sub_1BC6C6994()
{
  v2 = *v1;

  if (v0)
  {
    v4 = v2[8];
    v3 = v2[9];
    v5 = v2[7];

    (*(v4 + 8))(v3, v5);
    v6 = nullsub_1;
  }

  else
  {
    v6 = sub_1BC6C6AD4;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_1BC6C6AD4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 104);
  v3 = *(v0 + 80);
  v4 = *(v0 + 88);
  v6 = *(v0 + 64);
  v5 = *(v0 + 72);
  v7 = *(v0 + 56);
  if (v1)
  {
    (*(v6 + 8))(v5, v7);
    (*(v4 + 8))(v2, v3);
    if (*(v1 + 16))
    {
      v8 = *(v0 + 24);
      v9 = sub_1BC759AD0();
      (*(*(v9 - 8) + 16))(v8, v1 + ((*(*(v9 - 8) + 80) + 32) & ~*(*(v9 - 8) + 80)), v9);

      v10 = *(v0 + 8);
      goto LABEL_7;
    }
  }

  else
  {
    (*(v6 + 8))(v5, v7);
    (*(v4 + 8))(v2, v3);
  }

  v12 = *(v0 + 40);
  v11 = *(v0 + 48);
  v13 = *(v0 + 32);
  *(v0 + 120) = 2;
  sub_1BC678250(MEMORY[0x1E69E7CC0]);
  sub_1BC6C6D1C(&qword_1EBCDD2A0, MEMORY[0x1E6967EB8], MEMORY[0x1E6967EB0]);
  sub_1BC759700();
  sub_1BC7594A0();
  (*(v12 + 8))(v11, v13);
  swift_willThrow();

  v10 = *(v0 + 8);
LABEL_7:

  return v10();
}

uint64_t sub_1BC6C6D1C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t SensitiveContentOverlay.Background.Style.hashValue.getter()
{
  v1 = *v0;
  sub_1BC75C700();
  MEMORY[0x1BFB272F0](v1);
  return sub_1BC75C720();
}

uint64_t type metadata accessor for SensitiveContentOverlay.Background(uint64_t a1)
{
  result = qword_1EDDD0910;
  if (!qword_1EDDD0910)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t SensitiveContentOverlay.Background.init(style:options:contentDescription:)@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = *a1;
  *(a4 + 8) = a2;
  v6 = type metadata accessor for SensitiveContentOverlay.Background(0);
  return sub_1BC65FFBC(a3, a4 + *(v6 + 24), &qword_1EBCDBC80, qword_1BC75F1D0);
}

uint64_t SensitiveContentOverlay.Background.body.getter@<X0>(uint64_t a1@<X8>)
{
  sub_1BC6C6F20(v1, a1);
  v3 = sub_1BC75A980();
  v4 = sub_1BC75B000();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDD2A8, &qword_1BC7666E8);
  v6 = a1 + *(result + 36);
  *v6 = v3;
  *(v6 + 8) = v4;
  return result;
}

uint64_t sub_1BC6C6F20@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  v115 = a2;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDD3B0, &qword_1BC766948);
  MEMORY[0x1EEE9AC00](v116);
  v4 = &v92 - v3;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDD390, &qword_1BC766938);
  MEMORY[0x1EEE9AC00](v107);
  v99 = &v92 - v5;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDD3E0, &qword_1BC766968);
  MEMORY[0x1EEE9AC00](v105);
  v106 = &v92 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDD360, &qword_1BC766920);
  MEMORY[0x1EEE9AC00](v7);
  v108 = &v92 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDD3E8, &qword_1BC766970);
  v10 = MEMORY[0x1EEE9AC00](v9 - 8);
  v98 = &v92 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v97 = &v92 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDD3F0, &qword_1BC766978);
  v14 = MEMORY[0x1EEE9AC00](v13 - 8);
  v96 = &v92 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v95 = &v92 - v16;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDD370, &qword_1BC766928);
  MEMORY[0x1EEE9AC00](v104);
  v100 = &v92 - v17;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDD3F8, &qword_1BC766980);
  v101 = *(v102 - 8);
  v18 = MEMORY[0x1EEE9AC00](v102);
  v20 = &v92 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v94 = &v92 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDD400, &qword_1BC766988);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v24 = &v92 - v23;
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDD340, &qword_1BC766910);
  MEMORY[0x1EEE9AC00](v109);
  v103 = &v92 - v25;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDD408, &qword_1BC766990);
  MEMORY[0x1EEE9AC00](v114);
  v27 = &v92 - v26;
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDD410, &qword_1BC766998);
  MEMORY[0x1EEE9AC00](v110);
  v112 = &v92 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDD418, &qword_1BC7669A0);
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v92 - v30;
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDD328, &qword_1BC766908);
  MEMORY[0x1EEE9AC00](v111);
  v33 = &v92 - v32;
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDD318, &qword_1BC766900);
  MEMORY[0x1EEE9AC00](v113);
  v35 = &v92 - v34;
  v36 = a1;
  v37 = *a1;
  if (v37 > 3)
  {
    if (*a1 <= 5u)
    {
      v46 = v35;
      v92 = v7;
      v93 = v27;
      if (v37 == 4)
      {
        v47 = sub_1BC75B810();
        v49 = v48;
        v50 = v97;
        sub_1BC6C7E44(v97);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDD2B0, &unk_1BC7666F0);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_1BC75F0C0;
        v52 = sub_1BC75AFD0();
        *(inited + 32) = v52;
        v53 = sub_1BC75AFF0();
        *(inited + 33) = v53;
        v54 = sub_1BC75AFE0();
        sub_1BC75AFE0();
        if (sub_1BC75AFE0() != v52)
        {
          v54 = sub_1BC75AFE0();
        }

        sub_1BC75AFE0();
        if (sub_1BC75AFE0() != v53)
        {
          v54 = sub_1BC75AFE0();
        }

        v55 = v96;
        *v96 = v54;
        v56 = v55 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDD428, &qword_1BC7669B0) + 44);
        v57 = sub_1BC75B520();
        v58 = v98;
        sub_1BC660024(v50, v98, &qword_1EBCDD3E8, &qword_1BC766970);
        sub_1BC660024(v58, v56, &qword_1EBCDD3E8, &qword_1BC766970);
        v59 = v56 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDD430, &qword_1BC7669B8) + 48);
        *v59 = v57;
        *(v59 + 8) = 256;
        sub_1BC66008C(v58, &qword_1EBCDD3E8, &qword_1BC766970);
        sub_1BC66008C(v50, &qword_1EBCDD3E8, &qword_1BC766970);
        v60 = v95;
        sub_1BC65FFBC(v55, v95, &qword_1EBCDD3F0, &qword_1BC766978);
        v61 = v100;
        sub_1BC65FFBC(v60, v100, &qword_1EBCDD3F0, &qword_1BC766978);
        v62 = &v61[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDD380, &qword_1BC766930) + 36)];
        *v62 = v47;
        v62[1] = v49;
        v43 = &qword_1EBCDD370;
        v44 = &qword_1BC766928;
        sub_1BC660024(v61, v106, &qword_1EBCDD370, &qword_1BC766928);
      }

      else
      {
        v78 = sub_1BC75B800();
        v80 = v79;
        v61 = v99;
        sub_1BC6C8D30(v99);
        v81 = &v61[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDD3A0, &qword_1BC766940) + 36)];
        *v81 = v78;
        v81[1] = v80;
        v43 = &qword_1EBCDD390;
        v44 = &qword_1BC766938;
        sub_1BC660024(v61, v106, &qword_1EBCDD390, &qword_1BC766938);
      }

      swift_storeEnumTagMultiPayload();
      sub_1BC6CAF00();
      sub_1BC6CAFB8();
      v82 = v108;
      sub_1BC75AE00();
      sub_1BC660024(v82, v112, &qword_1EBCDD360, &qword_1BC766920);
      swift_storeEnumTagMultiPayload();
      sub_1BC6CACDC();
      sub_1BC6CAE74();
      sub_1BC75AE00();
      sub_1BC66008C(v82, &qword_1EBCDD360, &qword_1BC766920);
      sub_1BC660024(v46, v93, &qword_1EBCDD318, &qword_1BC766900);
      swift_storeEnumTagMultiPayload();
      sub_1BC6CAC50();
      sub_1BC6CB070();
      sub_1BC75AE00();
      sub_1BC66008C(v46, &qword_1EBCDD318, &qword_1BC766900);
      v45 = v61;
      goto LABEL_22;
    }

    v108 = v35;
    if (v37 != 6)
    {
      goto LABEL_12;
    }

LABEL_19:
    v74 = swift_storeEnumTagMultiPayload();
    sub_1BC6CAD68(v74, v75, v76);
    sub_1BC6CADBC();
    sub_1BC75AE00();
    sub_1BC660024(v33, v112, &qword_1EBCDD328, &qword_1BC766908);
    swift_storeEnumTagMultiPayload();
    sub_1BC6CACDC();
    sub_1BC6CAE74();
    v77 = v108;
    sub_1BC75AE00();
    sub_1BC66008C(v33, &qword_1EBCDD328, &qword_1BC766908);
    v43 = &qword_1EBCDD318;
    v44 = &qword_1BC766900;
    sub_1BC660024(v77, v27, &qword_1EBCDD318, &qword_1BC766900);
    swift_storeEnumTagMultiPayload();
    sub_1BC6CAC50();
    sub_1BC6CB070();
    sub_1BC75AE00();
    v45 = v77;
    goto LABEL_22;
  }

  if (v37 < 2)
  {
    v38 = sub_1BC75B810();
    v40 = v39;
    *v4 = sub_1BC75ACD0();
    *(v4 + 1) = 0;
    v4[16] = 1;
    v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDD420, &qword_1BC7669A8);
    sub_1BC6C9A08(&v4[*(v41 + 44)]);
    v42 = &v4[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDD3C0, &qword_1BC766950) + 36)];
    *v42 = v38;
    v42[1] = v40;
    v43 = &qword_1EBCDD3B0;
    v44 = &qword_1BC766948;
    sub_1BC660024(v4, v27, &qword_1EBCDD3B0, &qword_1BC766948);
    swift_storeEnumTagMultiPayload();
    sub_1BC6CAC50();
    sub_1BC6CB070();
    sub_1BC75AE00();
    v45 = v4;
LABEL_22:
    v83 = v43;
    v84 = v44;
    return sub_1BC66008C(v45, v83, v84);
  }

  v108 = v35;
  if (v37 == 2)
  {
    goto LABEL_19;
  }

LABEL_12:
  v92 = v7;
  v93 = v27;
  v63 = sub_1BC75B810();
  v65 = v63;
  v66 = v64;
  if ((v36[8] & 2) != 0)
  {
    (*(v101 + 56))(v24, 1, 1, v102);
  }

  else
  {
    v106 = v64;
    v107 = v63;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDD2B0, &unk_1BC7666F0);
    v67 = swift_initStackObject();
    *(v67 + 16) = xmmword_1BC75F0C0;
    v68 = sub_1BC75AFD0();
    *(v67 + 32) = v68;
    v69 = sub_1BC75AFF0();
    *(v67 + 33) = v69;
    v70 = sub_1BC75AFE0();
    sub_1BC75AFE0();
    if (sub_1BC75AFE0() != v68)
    {
      v70 = sub_1BC75AFE0();
    }

    sub_1BC75AFE0();
    if (sub_1BC75AFE0() != v69)
    {
      v70 = sub_1BC75AFE0();
    }

    *v20 = v70;
    v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDD438, &qword_1BC7669C0);
    sub_1BC6C9094(&v20[*(v71 + 44)]);
    v72 = v20;
    v73 = v94;
    sub_1BC65FFBC(v72, v94, &qword_1EBCDD3F8, &qword_1BC766980);
    sub_1BC65FFBC(v73, v24, &qword_1EBCDD3F8, &qword_1BC766980);
    (*(v101 + 56))(v24, 0, 1, v102);
    v66 = v106;
    v65 = v107;
  }

  v85 = v103;
  sub_1BC65FFBC(v24, v103, &qword_1EBCDD400, &qword_1BC766988);
  v86 = (v85 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDD350, &qword_1BC766918) + 36));
  *v86 = v65;
  v86[1] = v66;
  sub_1BC660024(v85, v31, &qword_1EBCDD340, &qword_1BC766910);
  v87 = swift_storeEnumTagMultiPayload();
  sub_1BC6CAD68(v87, v88, v89);
  sub_1BC6CADBC();
  sub_1BC75AE00();
  sub_1BC660024(v33, v112, &qword_1EBCDD328, &qword_1BC766908);
  swift_storeEnumTagMultiPayload();
  sub_1BC6CACDC();
  sub_1BC6CAE74();
  v90 = v108;
  sub_1BC75AE00();
  sub_1BC66008C(v33, &qword_1EBCDD328, &qword_1BC766908);
  sub_1BC660024(v90, v93, &qword_1EBCDD318, &qword_1BC766900);
  swift_storeEnumTagMultiPayload();
  sub_1BC6CAC50();
  sub_1BC6CB070();
  sub_1BC75AE00();
  sub_1BC66008C(v90, &qword_1EBCDD318, &qword_1BC766900);
  v45 = v85;
  v83 = &qword_1EBCDD340;
  v84 = &qword_1BC766910;
  return sub_1BC66008C(v45, v83, v84);
}

uint64_t sub_1BC6C7E44@<X0>(uint64_t a1@<X8>)
{
  v74 = a1;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDD4B8, &qword_1BC766A90);
  MEMORY[0x1EEE9AC00](v75);
  v3 = &v62 - v2;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDD4C0, &qword_1BC766A98);
  MEMORY[0x1EEE9AC00](v67);
  v5 = (&v62 - v4);
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDD4C8, &qword_1BC766AA0);
  MEMORY[0x1EEE9AC00](v70);
  v68 = &v62 - v6;
  v7 = sub_1BC75B5D0();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v62 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDD4D0, &unk_1BC766AA8);
  MEMORY[0x1EEE9AC00](v66);
  v12 = &v62 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC5D0, &unk_1BC761EE0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v62 - v14;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDD4D8, &qword_1BC766AB8);
  MEMORY[0x1EEE9AC00](v71);
  v73 = &v62 - v16;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDD4E0, &qword_1BC766AC0);
  MEMORY[0x1EEE9AC00](v69);
  v18 = (&v62 - v17);
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDD4E8, &qword_1BC766AC8);
  MEMORY[0x1EEE9AC00](v72);
  v20 = &v62 - v19;
  v21 = *v1;
  if (v21 > 3)
  {
    if (*v1 <= 5u)
    {
      v65 = v20;
      if (v21 != 4)
      {
        sub_1BC75B5C0();
        sub_1BC75ACF0();
        v57 = sub_1BC75AD00();
        (*(*(v57 - 8) + 56))(v15, 0, 1, v57);
        v58 = sub_1BC75B5E0();

        sub_1BC66008C(v15, &qword_1EBCDC5D0, &unk_1BC761EE0);
        *v5 = v58;
        swift_storeEnumTagMultiPayload();
        sub_1BC6CBA1C();

        v59 = v68;
        sub_1BC75AE00();
        sub_1BC660024(v59, v18, &qword_1EBCDD4C8, &qword_1BC766AA0);
        swift_storeEnumTagMultiPayload();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDD510, &qword_1BC766B28);
        sub_1BC6CB708();
        sub_1BC6CB990();
        v60 = v65;
        sub_1BC75AE00();
        sub_1BC66008C(v59, &qword_1EBCDD4C8, &qword_1BC766AA0);
        sub_1BC660024(v60, v73, &qword_1EBCDD4E8, &qword_1BC766AC8);
        swift_storeEnumTagMultiPayload();
        sub_1BC6CB67C();
        sub_1BC6CBC18();
        sub_1BC75AE00();

        v42 = v60;
        v43 = &qword_1EBCDD4E8;
        v46 = &qword_1BC766AC8;
        return sub_1BC66008C(v42, v43, v46);
      }

      sub_1BC75B5C0();
      sub_1BC75ACF0();
      v63 = sub_1BC75AD00();
      v62 = *(*(v63 - 8) + 56);
      v64 = v5;
      v62(v15, 0, 1, v63);
      sub_1BC75B5E0();

      sub_1BC66008C(v15, &qword_1EBCDC5D0, &unk_1BC761EE0);
      (*(v8 + 104))(v10, *MEMORY[0x1E6981630], v7);
      v34 = sub_1BC75B610();

      (*(v8 + 8))(v10, v7);
      v35 = &v12[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC590, &unk_1BC766AD0) + 36)];
      v36 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC598, &qword_1BC761D20) + 28);
      sub_1BC75ACF0();
      v62(v35 + v36, 0, 1, v63);
      *v35 = swift_getKeyPath();
      *v12 = v34;
      *(v12 + 1) = 0;
      *(v12 + 8) = 1;
      v37 = sub_1BC75B530();
      *&v12[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC5A0, &qword_1BC766B10) + 36)] = v37;
      sub_1BC75B810();
      sub_1BC75A810();
      v38 = &v12[*(v66 + 36)];
      v39 = v82;
      *v38 = v81;
      *(v38 + 1) = v39;
      *(v38 + 2) = v83;
      v33 = &unk_1BC766AA8;
      sub_1BC660024(v12, v64, &qword_1EBCDD4D0, &unk_1BC766AA8);
      swift_storeEnumTagMultiPayload();
      sub_1BC6CBA1C();
      v40 = v68;
      sub_1BC75AE00();
      sub_1BC660024(v40, v18, &qword_1EBCDD4C8, &qword_1BC766AA0);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDD510, &qword_1BC766B28);
      sub_1BC6CB708();
      sub_1BC6CB990();
      v41 = v65;
      sub_1BC75AE00();
      sub_1BC66008C(v40, &qword_1EBCDD4C8, &qword_1BC766AA0);
      sub_1BC660024(v41, v73, &qword_1EBCDD4E8, &qword_1BC766AC8);
      swift_storeEnumTagMultiPayload();
      sub_1BC6CB67C();
      sub_1BC6CBC18();
      sub_1BC75AE00();
      sub_1BC66008C(v41, &qword_1EBCDD4E8, &qword_1BC766AC8);
      v42 = v12;
      v43 = &qword_1EBCDD4D0;
      goto LABEL_11;
    }

    if (v21 != 6)
    {
LABEL_12:
      v47 = v20;
      sub_1BC75B5C0();
      sub_1BC75ACF0();
      v48 = sub_1BC75AD00();
      (*(*(v48 - 8) + 56))(v15, 0, 1, v48);
      v49 = sub_1BC75B5E0();

      sub_1BC66008C(v15, &qword_1EBCDC5D0, &unk_1BC761EE0);
      v50 = sub_1BC6C5FF4();
      swift_beginAccess();
      v51 = *v50;

      v52 = *sub_1BC6C60B8();
      KeyPath = swift_getKeyPath();

      v54 = sub_1BC75B000();
      v89 = 1;
      *&v85 = v49;
      *(&v85 + 1) = v51;
      *&v86 = KeyPath;
      *(&v86 + 1) = v52;
      v87[0] = v54;
      *&v87[1] = v90[0];
      *&v87[4] = *(v90 + 3);
      memset(&v87[8], 0, 32);
      v87[40] = 1;
      v78 = *v87;
      *v79 = *&v87[16];
      *&v79[9] = *&v87[25];
      v76 = v85;
      v77 = v86;
      v88 = 1;
      v80 = 1;
      sub_1BC660024(&v85, &v81, &qword_1EBCDD520, &qword_1BC766B30);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDD520, &qword_1BC766B30);
      sub_1BC6CB794();
      sub_1BC75AE00();
      v55 = v84[0];
      v18[2] = v83;
      v18[3] = v55;
      *(v18 + 58) = *(v84 + 10);
      v56 = v82;
      *v18 = v81;
      v18[1] = v56;
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDD510, &qword_1BC766B28);
      sub_1BC6CB708();
      sub_1BC6CB990();
      sub_1BC75AE00();
      sub_1BC660024(v47, v73, &qword_1EBCDD4E8, &qword_1BC766AC8);
      swift_storeEnumTagMultiPayload();
      sub_1BC6CB67C();
      sub_1BC6CBC18();
      sub_1BC75AE00();
      sub_1BC66008C(&v85, &qword_1EBCDD520, &qword_1BC766B30);
      v42 = v47;
      v43 = &qword_1EBCDD4E8;
      v46 = &qword_1BC766AC8;
      return sub_1BC66008C(v42, v43, v46);
    }

LABEL_9:
    LOBYTE(v85) = 0;
    v80 = 0;
    v3 = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDD520, &qword_1BC766B30);
    sub_1BC6CB794();
    sub_1BC75AE00();
    v44 = v84[0];
    v18[2] = v83;
    v18[3] = v44;
    *(v18 + 58) = *(v84 + 10);
    v45 = v82;
    *v18 = v81;
    v18[1] = v45;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDD510, &qword_1BC766B28);
    sub_1BC6CB708();
    sub_1BC6CB990();
    sub_1BC75AE00();
    v32 = &qword_1EBCDD4E8;
    v33 = &qword_1BC766AC8;
    sub_1BC660024(v3, v73, &qword_1EBCDD4E8, &qword_1BC766AC8);
    swift_storeEnumTagMultiPayload();
    sub_1BC6CB67C();
    sub_1BC6CBC18();
    goto LABEL_10;
  }

  if (v21 - 1 < 2)
  {
    goto LABEL_9;
  }

  if (*v1)
  {
    goto LABEL_12;
  }

  sub_1BC75B5C0();
  (*(v8 + 104))(v10, *MEMORY[0x1E6981630], v7);
  v22 = sub_1BC75B610();

  (*(v8 + 8))(v10, v7);
  v23 = &v3[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC590, &unk_1BC766AD0) + 36)];
  v24 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC598, &qword_1BC761D20) + 28);
  sub_1BC75ACF0();
  v25 = sub_1BC75AD00();
  (*(*(v25 - 8) + 56))(v23 + v24, 0, 1, v25);
  *v23 = swift_getKeyPath();
  *v3 = v22;
  *(v3 + 1) = 0;
  *(v3 + 8) = 1;
  v26 = sub_1BC75B530();
  *&v3[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC5A0, &qword_1BC766B10) + 36)] = v26;
  *&v3[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDD4F0, &qword_1BC766B18) + 36)] = 0x3FE3333333333333;
  v27 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDD4F8, &qword_1BC766B20) + 36);
  v28 = *MEMORY[0x1E6981DB8];
  v29 = sub_1BC75B830();
  (*(*(v29 - 8) + 104))(&v3[v27], v28, v29);
  sub_1BC75B810();
  sub_1BC75A810();
  v30 = &v3[*(v75 + 36)];
  v31 = v82;
  *v30 = v81;
  *(v30 + 1) = v31;
  *(v30 + 2) = v83;
  v32 = &qword_1EBCDD4B8;
  v33 = &qword_1BC766A90;
  sub_1BC660024(v3, v73, &qword_1EBCDD4B8, &qword_1BC766A90);
  swift_storeEnumTagMultiPayload();
  sub_1BC6CB67C();
  sub_1BC6CBC18();
LABEL_10:
  sub_1BC75AE00();
  v42 = v3;
  v43 = v32;
LABEL_11:
  v46 = v33;
  return sub_1BC66008C(v42, v43, v46);
}

uint64_t sub_1BC6C8D30@<X0>(_BYTE *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDD3E8, &qword_1BC766970);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v32 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDD588, &unk_1BC766B50);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v32 - v9;
  sub_1BC6C7E44(v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC5B8, &qword_1BC761DA0);
  inited = swift_initStackObject();
  v32 = xmmword_1BC75F0C0;
  *(inited + 16) = xmmword_1BC75F0C0;
  v12 = sub_1BC75B050();
  *(inited + 32) = v12;
  v13 = sub_1BC75B020();
  *(inited + 33) = v13;
  v14 = sub_1BC75B040();
  sub_1BC75B040();
  if (sub_1BC75B040() != v12)
  {
    v14 = sub_1BC75B040();
  }

  sub_1BC75B040();
  if (sub_1BC75B040() != v13)
  {
    v14 = sub_1BC75B040();
  }

  sub_1BC75A670();
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  sub_1BC65FFBC(v4, v10, &qword_1EBCDD3E8, &qword_1BC766970);
  v23 = &v10[*(v5 + 36)];
  *v23 = v14;
  *(v23 + 1) = v16;
  *(v23 + 2) = v18;
  *(v23 + 3) = v20;
  *(v23 + 4) = v22;
  v23[40] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDD2B0, &unk_1BC7666F0);
  v24 = swift_initStackObject();
  *(v24 + 16) = v32;
  v25 = sub_1BC75AFD0();
  *(v24 + 32) = v25;
  v26 = sub_1BC75AFF0();
  *(v24 + 33) = v26;
  v27 = sub_1BC75AFE0();
  sub_1BC75AFE0();
  if (sub_1BC75AFE0() != v25)
  {
    v27 = sub_1BC75AFE0();
  }

  sub_1BC75AFE0();
  if (sub_1BC75AFE0() != v26)
  {
    v27 = sub_1BC75AFE0();
  }

  *a1 = v27;
  v28 = &a1[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDD590, &qword_1BC766B60) + 44)];
  v29 = sub_1BC75B520();
  sub_1BC660024(v10, v8, &qword_1EBCDD588, &unk_1BC766B50);
  sub_1BC660024(v8, v28, &qword_1EBCDD588, &unk_1BC766B50);
  v30 = &v28[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDD598, &qword_1BC766B68) + 48)];
  *v30 = v29;
  *(v30 + 4) = 256;
  sub_1BC66008C(v8, &qword_1EBCDD588, &unk_1BC766B50);
  return sub_1BC66008C(v10, &qword_1EBCDD588, &unk_1BC766B50);
}

uint64_t sub_1BC6C9094@<X0>(uint64_t a1@<X8>)
{
  v25 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDD3E8, &qword_1BC766970);
  v2 = MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v24 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDD440, &qword_1BC7669C8);
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v24 - v11;
  *v12 = sub_1BC75ACD0();
  *(v12 + 1) = 0;
  v12[16] = 1;
  v13 = &v12[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDD448, &qword_1BC7669D0) + 44)];
  sub_1BC6C7E44(v6);
  sub_1BC6C9420(&v26);
  sub_1BC660024(v6, v4, &qword_1EBCDD3E8, &qword_1BC766970);
  sub_1BC660024(v4, v13, &qword_1EBCDD3E8, &qword_1BC766970);
  v14 = (v13 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDD450, &qword_1BC7669D8) + 48));
  v15 = *(v29 + 10);
  v16 = v29[0];
  v30[2] = v28;
  v31[0] = v29[0];
  *(v31 + 10) = *(v29 + 10);
  v17 = v27;
  v18 = v26;
  v30[0] = v26;
  v30[1] = v27;
  v14[2] = v28;
  v14[3] = v16;
  *(v14 + 58) = v15;
  *v14 = v18;
  v14[1] = v17;
  sub_1BC660024(v30, v32, &qword_1EBCDD458, &qword_1BC7669E0);
  sub_1BC66008C(v6, &qword_1EBCDD3E8, &qword_1BC766970);
  v32[2] = v28;
  v33[0] = v29[0];
  *(v33 + 10) = *(v29 + 10);
  v32[0] = v26;
  v32[1] = v27;
  sub_1BC66008C(v32, &qword_1EBCDD458, &qword_1BC7669E0);
  sub_1BC66008C(v4, &qword_1EBCDD3E8, &qword_1BC766970);
  sub_1BC6C7E44(v6);
  v19 = sub_1BC75B520();
  sub_1BC660024(v12, v10, &qword_1EBCDD440, &qword_1BC7669C8);
  sub_1BC660024(v6, v4, &qword_1EBCDD3E8, &qword_1BC766970);
  v20 = v25;
  sub_1BC660024(v10, v25, &qword_1EBCDD440, &qword_1BC7669C8);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDD460, &qword_1BC7669E8);
  sub_1BC660024(v4, v20 + *(v21 + 48), &qword_1EBCDD3E8, &qword_1BC766970);
  v22 = v20 + *(v21 + 64);
  *v22 = v19;
  *(v22 + 8) = 256;

  sub_1BC66008C(v6, &qword_1EBCDD3E8, &qword_1BC766970);
  sub_1BC66008C(v12, &qword_1EBCDD440, &qword_1BC7669C8);

  sub_1BC66008C(v4, &qword_1EBCDD3E8, &qword_1BC766970);
  return sub_1BC66008C(v10, &qword_1EBCDD440, &qword_1BC7669C8);
}

__n128 sub_1BC6C9420@<Q0>(uint64_t a1@<X8>)
{
  v3 = 1 << *v1;
  if ((v3 & 0xF4) != 0)
  {
    v45[25] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDD468, &qword_1BC7669F0);
    sub_1BC6CB310();
    sub_1BC75AE00();
  }

  else
  {
    if ((v3 & 3) != 0)
    {
      SensitiveContentOverlay.Background.contentWarningTitle.getter();
      v44[0] = v46;
      v6 = sub_1BC651E78(v44, v4, v5);
      v8 = v7;
      v10 = v9;
      v12 = v11;
      KeyPath = swift_getKeyPath();
      v14 = sub_1BC75B530();
      v43 = 0;
      *&v46 = v6;
      *(&v46 + 1) = v8;
      v47.n128_u8[0] = v10 & 1;
      v47.n128_u64[1] = v12;
      *&v48 = KeyPath;
      BYTE8(v48) = 1;
      *v49 = v14;
      v49[24] = 0;
      sub_1BC680FFC(v6, v8, v10 & 1);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDD480, &qword_1BC7669F8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDD4A0, &qword_1BC766A18);
      sub_1BC6CB39C();
      sub_1BC6CB50C();
      sub_1BC75AE00();
      v48 = v35;
      *v49 = *v36;
      *&v49[9] = *&v36[9];
      v46 = v33;
      v47 = v34;
      LOBYTE(v37) = 0;
      v49[25] = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDD468, &qword_1BC7669F0);
      sub_1BC6CB310();
      sub_1BC75AE00();
      sub_1BC680E6C(v6, v8, v10 & 1);
    }

    else
    {
      v15._object = 0x80000001BC772EF0;
      v15._countAndFlagsBits = 0xD000000000000011;
      v16 = SCLocalizedStringKey.init(stringLiteral:)(v15);
      v44[0] = v46;
      v18 = sub_1BC651E78(v44, v16.localized._object, v17);
      v20 = v19;
      v22 = v21;
      v24 = v23;
      v25 = swift_getKeyPath();
      v26 = *sub_1BC6C61A0();
      v27 = swift_getKeyPath();
      v28 = v22 & 1;
      LOBYTE(v46) = v22 & 1;

      v29 = sub_1BC6C5F24();
      swift_beginAccess();
      v30 = *v29;
      *&v37 = v18;
      *(&v37 + 1) = v20;
      v38.n128_u8[0] = v28;
      v38.n128_u64[1] = v24;
      *&v39 = v25;
      BYTE8(v39) = 1;
      *&v40 = v27;
      *(&v40 + 1) = v26;
      v41 = v30;
      v48 = v39;
      *v49 = v40;
      *&v49[16] = v30;
      v46 = v37;
      v47 = v38;
      v42 = 1;
      v49[24] = 1;

      sub_1BC660024(&v37, v44, &qword_1EBCDD4A0, &qword_1BC766A18);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDD480, &qword_1BC7669F8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDD4A0, &qword_1BC766A18);
      sub_1BC6CB39C();
      sub_1BC6CB50C();
      sub_1BC75AE00();
      v48 = v35;
      *v49 = *v36;
      *&v49[9] = *&v36[9];
      v46 = v33;
      v47 = v34;
      v43 = 0;
      v49[25] = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDD468, &qword_1BC7669F0);
      sub_1BC6CB310();
      sub_1BC75AE00();
      sub_1BC66008C(&v37, &qword_1EBCDD4A0, &qword_1BC766A18);
    }

    v48 = v44[2];
    *v49 = *v45;
    *&v49[10] = *&v45[10];
    v46 = v44[0];
    v47 = v44[1];
  }

  v31 = *v49;
  *(a1 + 32) = v48;
  *(a1 + 48) = v31;
  *(a1 + 58) = *&v49[10];
  result = v47;
  *a1 = v46;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1BC6C9838(uint64_t *TupleTypeMetadata, unint64_t a2, uint64_t a3)
{
  v5 = TupleTypeMetadata;
  if (a2 == 1)
  {
    v6 = *(a3 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    MEMORY[0x1EEE9AC00](TupleTypeMetadata);
    v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (a2)
    {
      v9 = 0;
      v10 = a3 & 0xFFFFFFFFFFFFFFFELL;
      if (a2 < 4)
      {
        goto LABEL_9;
      }

      if (&v8[-v10] < 0x20)
      {
        goto LABEL_9;
      }

      v9 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      v11 = (v10 + 16);
      v12 = v8 + 16;
      v13 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v14 = *v11;
        *(v12 - 1) = *(v11 - 1);
        *v12 = v14;
        v11 += 2;
        v12 += 2;
        v13 -= 4;
      }

      while (v13);
      if (v9 != a2)
      {
LABEL_9:
        v15 = a2 - v9;
        v16 = 8 * v9;
        v17 = &v8[8 * v9];
        v18 = (v10 + v16);
        do
        {
          v19 = *v18++;
          *v17 = v19;
          v17 += 8;
          --v15;
        }

        while (v15);
      }
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v6 = TupleTypeMetadata;
  }

  MEMORY[0x1EEE9AC00](TupleTypeMetadata);
  v21 = &v30 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v22 = (a3 & 0xFFFFFFFFFFFFFFFELL);
    v23 = (v6 + 32);
    v24 = a2;
    do
    {
      if (a2 == 1)
      {
        v25 = 0;
      }

      else
      {
        v25 = *v23;
      }

      v27 = *v22++;
      v26 = v27;
      v28 = *v5++;
      (*(*(v26 - 8) + 16))(&v21[v25], v28);
      v23 += 4;
      --v24;
    }

    while (v24);
  }

  return sub_1BC75B860();
}

uint64_t sub_1BC6C9A08@<X0>(uint64_t a1@<X8>)
{
  v50 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDD3E8, &qword_1BC766970);
  v2 = MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v49 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v49 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDD3F0, &qword_1BC766978);
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v54 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v49 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v53 = &v49 - v13;
  sub_1BC6C7E44(v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDD2B0, &unk_1BC7666F0);
  v14 = swift_allocObject();
  v51 = xmmword_1BC75F0C0;
  *(v14 + 16) = xmmword_1BC75F0C0;
  v15 = sub_1BC75AFD0();
  *(v14 + 32) = v15;
  v16 = sub_1BC75AFF0();
  *(v14 + 33) = v16;
  v17 = sub_1BC75AFE0();
  sub_1BC75AFE0();
  if (sub_1BC75AFE0() != v15)
  {
    v17 = sub_1BC75AFE0();
  }

  sub_1BC75AFE0();
  if (sub_1BC75AFE0() != v16)
  {
    v17 = sub_1BC75AFE0();
  }

  *v12 = v17;
  v18 = &v12[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDD428, &qword_1BC7669B0) + 44)];
  v19 = sub_1BC75B520();
  sub_1BC660024(v6, v4, &qword_1EBCDD3E8, &qword_1BC766970);
  sub_1BC660024(v4, v18, &qword_1EBCDD3E8, &qword_1BC766970);
  v20 = v18 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDD430, &qword_1BC7669B8) + 48);
  *v20 = v19;
  *(v20 + 8) = 256;
  sub_1BC66008C(v4, &qword_1EBCDD3E8, &qword_1BC766970);
  sub_1BC66008C(v6, &qword_1EBCDD3E8, &qword_1BC766970);
  sub_1BC65FFBC(v12, v53, &qword_1EBCDD3F0, &qword_1BC766978);
  sub_1BC6C9420(v116);
  v21 = sub_1BC75B000();
  v115 = 1;
  v120 = v116[2];
  v121 = v116[3];
  v122 = v116[4];
  v118 = v116[0];
  v119 = v116[1];
  v123[0] = v21;
  memset(&v123[8], 0, 32);
  v123[40] = 1;
  v22 = swift_allocObject();
  *(v22 + 16) = v51;
  v23 = sub_1BC75AFD0();
  *(v22 + 32) = v23;
  v24 = sub_1BC75AFF0();
  *(v22 + 33) = v24;
  v55 = sub_1BC75AFE0();
  sub_1BC75AFE0();
  if (sub_1BC75AFE0() != v23)
  {
    v55 = sub_1BC75AFE0();
  }

  sub_1BC75AFE0();
  if (sub_1BC75AFE0() != v24)
  {
    v55 = sub_1BC75AFE0();
  }

  v52 = sub_1BC75B520();
  v97 = *v123;
  v98[0] = *&v123[16];
  *(v98 + 9) = *&v123[25];
  v92 = v118;
  v93 = v119;
  v94 = v120;
  v95 = v121;
  v96 = v122;
  v99[0] = v118;
  v99[1] = v119;
  v99[2] = v120;
  v99[3] = v121;
  *(v100 + 9) = *&v123[25];
  v100[0] = *&v123[16];
  v99[5] = *v123;
  v99[4] = v122;
  v107[0] = *&v123[16];
  v101 = v118;
  v102 = v119;
  v103 = v120;
  v104 = v121;
  v106 = *v123;
  v105 = v122;
  *(v107 + 9) = *&v123[25];
  sub_1BC660024(&v118, &v80, &qword_1EBCDD5A0, &qword_1BC766B70);
  sub_1BC660024(v99, &v80, &qword_1EBCDD5A0, &qword_1BC766B70);
  v108[4] = v96;
  v108[5] = v97;
  v109[0] = v98[0];
  *(v109 + 9) = *(v98 + 9);
  v108[0] = v92;
  v108[1] = v93;
  v108[2] = v94;
  v108[3] = v95;
  sub_1BC66008C(v108, &qword_1EBCDD5A0, &qword_1BC766B70);
  sub_1BC66008C(&v118, &qword_1EBCDD5A0, &qword_1BC766B70);
  *&v117[71] = v105;
  *&v117[87] = v106;
  *&v117[103] = v107[0];
  *&v117[119] = v107[1];
  *&v117[7] = v101;
  *&v117[23] = v102;
  *&v117[39] = v103;
  *&v117[55] = v104;
  v25 = sub_1BC686DCC();
  ShowContentButton.init(isShowingContent:)(v25, v27, v26 & 1, &v110);
  v28 = swift_allocObject();
  *(v28 + 16) = v51;
  v29 = sub_1BC75AFD0();
  *(v28 + 32) = v29;
  v30 = sub_1BC75AFF0();
  *(v28 + 33) = v30;
  v31 = sub_1BC75AFE0();
  sub_1BC75AFE0();
  if (sub_1BC75AFE0() != v29)
  {
    v31 = sub_1BC75AFE0();
  }

  sub_1BC75AFE0();
  if (sub_1BC75AFE0() != v30)
  {
    v31 = sub_1BC75AFE0();
  }

  *&v51 = sub_1BC75B520();
  v58 = v112;
  v59 = v113;
  v60 = v114;
  v56 = v110;
  v57 = v111;
  v61[2] = v112;
  v61[3] = v113;
  v62 = v114;
  v61[0] = v110;
  v61[1] = v111;
  LOBYTE(v67) = v114;
  v65 = v112;
  v66 = v113;
  v63 = v110;
  v64 = v111;
  sub_1BC6877B8(&v110, &v80);
  sub_1BC6877B8(v61, &v80);
  v68[2] = v58;
  v68[3] = v59;
  v69 = v60;
  v68[0] = v56;
  v68[1] = v57;
  sub_1BC6CBDBC(v68);
  sub_1BC6CBDBC(&v110);
  *&v91[23] = v64;
  *&v91[39] = v65;
  *&v91[55] = v66;
  *&v91[71] = v67;
  *&v91[7] = v63;
  v33 = v53;
  v32 = v54;
  sub_1BC660024(v53, v54, &qword_1EBCDD3F0, &qword_1BC766978);
  v34 = v32;
  v35 = v50;
  sub_1BC660024(v34, v50, &qword_1EBCDD3F0, &qword_1BC766978);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDD5A8, &qword_1BC766B78);
  v37 = v35 + *(v36 + 48);
  LOBYTE(v70[0]) = v55;
  *(&v70[5] + 1) = *&v117[80];
  *(&v70[6] + 1) = *&v117[96];
  *(&v70[7] + 1) = *&v117[112];
  *(&v70[2] + 1) = *&v117[32];
  *(&v70[1] + 1) = *&v117[16];
  *(&v70[3] + 1) = *&v117[48];
  *(&v70[4] + 1) = *&v117[64];
  *(v70 + 1) = *v117;
  *&v70[8] = *&v117[127];
  *(&v70[8] + 1) = v52;
  v71 = 256;
  v38 = v70[5];
  *(v37 + 64) = v70[4];
  *(v37 + 80) = v38;
  v39 = v70[3];
  *(v37 + 32) = v70[2];
  *(v37 + 48) = v39;
  *(v37 + 144) = 256;
  v40 = v70[7];
  *(v37 + 96) = v70[6];
  *(v37 + 112) = v40;
  *(v37 + 128) = v70[8];
  v41 = v70[1];
  *v37 = v70[0];
  *(v37 + 16) = v41;
  v42 = (v35 + *(v36 + 64));
  LOBYTE(v72[0]) = v31;
  *(v72 + 1) = *v91;
  *(&v72[1] + 1) = *&v91[16];
  *(&v72[2] + 1) = *&v91[32];
  *(&v72[3] + 1) = *&v91[48];
  v72[4] = *&v91[63];
  v43 = v51;
  *&v72[5] = v51;
  WORD4(v72[5]) = 256;
  v44 = v72[1];
  *v42 = v72[0];
  v42[1] = v44;
  v45 = v72[2];
  v46 = v72[3];
  v47 = v72[4];
  *(v42 + 74) = *(&v72[4] + 10);
  v42[3] = v46;
  v42[4] = v47;
  v42[2] = v45;
  sub_1BC660024(v70, &v80, &qword_1EBCDD5B0, &qword_1BC766B80);
  sub_1BC660024(v72, &v80, &qword_1EBCDD5B8, &qword_1BC766B88);
  sub_1BC66008C(v33, &qword_1EBCDD3F0, &qword_1BC766978);
  v73 = v31;
  v75 = *&v91[16];
  v76 = *&v91[32];
  *v77 = *&v91[48];
  *&v77[15] = *&v91[63];
  v74 = *v91;
  v78 = v43;
  v79 = 256;
  sub_1BC66008C(&v73, &qword_1EBCDD5B8, &qword_1BC766B88);
  v80 = v55;
  v86 = *&v117[80];
  v87 = *&v117[96];
  *v88 = *&v117[112];
  v82 = *&v117[16];
  v83 = *&v117[32];
  v84 = *&v117[48];
  v85 = *&v117[64];
  v81 = *v117;
  *&v88[15] = *&v117[127];
  v89 = v52;
  v90 = 256;
  sub_1BC66008C(&v80, &qword_1EBCDD5B0, &qword_1BC766B80);
  return sub_1BC66008C(v54, &qword_1EBCDD3F0, &qword_1BC766978);
}

uint64_t SensitiveContentOverlay.Background.contentWarningTitle.getter()
{
  v1 = sub_1BC759D10();
  v24 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBC80, qword_1BC75F1D0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v23 - v5;
  v7 = sub_1BC759D50();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for SensitiveContentOverlay.Background(0);
  sub_1BC660024(v0 + *(v11 + 24), v6, &qword_1EBCDBC80, qword_1BC75F1D0);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_1BC66008C(v6, &qword_1EBCDBC80, qword_1BC75F1D0);
    v12._object = 0x80000001BC772E00;
    v12._countAndFlagsBits = 0xD000000000000015;
    return SCLocalizedStringKey.init(stringLiteral:)(v12).localized._countAndFlagsBits;
  }

  (*(v8 + 32))(v10, v6, v7);
  sub_1BC759D20();
  v14 = v24;
  v15 = (*(v24 + 88))(v3, v1);
  if (v15 == *MEMORY[0x1E697B4A0])
  {
    v16 = "THESE_PHOTOS_MAY_BE_SENSITIVE";
LABEL_7:
    v17 = v16 - 32;
    v18 = 0xD00000000000001DLL;
LABEL_8:
    v19 = v17 | 0x8000000000000000;
    SCLocalizedStringKey.init(stringLiteral:)(*&v18);
    return (*(v8 + 8))(v10, v7);
  }

  if (v15 == *MEMORY[0x1E697B4A8])
  {
    v16 = "THESE_VIDEOS_MAY_BE_SENSITIVE";
    goto LABEL_7;
  }

  if (v15 == *MEMORY[0x1E697B488])
  {
    v17 = "THIS_MAY_BE_SENSITIVE";
    v18 = 0xD000000000000027;
    goto LABEL_8;
  }

  if (v15 == *MEMORY[0x1E697B498])
  {
    v17 = "THESE_VIDEOS_MAY_BE_SENSITIVE";
    v18 = 0xD00000000000001BLL;
    goto LABEL_8;
  }

  v20 = (v8 + 8);
  if (v15 == *MEMORY[0x1E697B490])
  {
    v21._countAndFlagsBits = 0xD00000000000001BLL;
    v21._object = 0x80000001BC772EB0;
    SCLocalizedStringKey.init(stringLiteral:)(v21);
    return (*v20)(v10, v7);
  }

  else
  {
    v22._object = 0x80000001BC772E00;
    v22._countAndFlagsBits = 0xD000000000000015;
    SCLocalizedStringKey.init(stringLiteral:)(v22);
    (*v20)(v10, v7);
    return (*(v14 + 8))(v3, v1);
  }
}

uint64_t sub_1BC6CA6B0@<X0>(uint64_t a1@<X8>)
{
  sub_1BC6C6F20(v1, a1);
  v3 = sub_1BC75A980();
  v4 = sub_1BC75B000();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDD2A8, &qword_1BC7666E8);
  v6 = a1 + *(result + 36);
  *v6 = v3;
  *(v6 + 8) = v4;
  return result;
}

uint64_t sub_1BC6CA714@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDD2C0, &qword_1BC766700);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v11 - v3;
  sub_1BC75B7E0();
  *&v4[*(v2 + 56)] = 256;
  sub_1BC633C54(&qword_1EDDCE158, &qword_1EBCDD2C0, &qword_1BC766700, MEMORY[0x1E697DB78]);
  sub_1BC75B330();
  sub_1BC66008C(v4, &qword_1EBCDD2C0, &qword_1BC766700);
  KeyPath = swift_getKeyPath();
  v6 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDD2C8, &unk_1BC766738) + 36));
  v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC458, &qword_1BC762B00) + 28);
  v8 = *MEMORY[0x1E697DBA8];
  v9 = sub_1BC75A710();
  result = (*(*(v9 - 8) + 104))(v6 + v7, v8, v9);
  *v6 = KeyPath;
  return result;
}

unint64_t sub_1BC6CA8B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBCDD2D0;
  if (!qword_1EBCDD2D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDD2D0);
  }

  return result;
}

void sub_1BC6CA9A8(uint64_t a1)
{
  type metadata accessor for SCUISensitiveContentOverlayOptions();
  if (v1 <= 0x3F)
  {
    sub_1BC6CAA3C(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1BC6CAA3C(uint64_t a1)
{
  if (!qword_1EDDCE6F0)
  {
    sub_1BC759D50();
    v1 = sub_1BC75C110();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDDCE6F0);
    }
  }
}

unint64_t sub_1BC6CAAB4()
{
  result = qword_1EBCDD2E8;
  if (!qword_1EBCDD2E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDD2A8, &qword_1BC7666E8);
    sub_1BC6CAB40();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDD2E8);
  }

  return result;
}

unint64_t sub_1BC6CAB40()
{
  result = qword_1EBCDD2F0;
  if (!qword_1EBCDD2F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDD2F8, &qword_1BC7668F0);
    sub_1BC6CABC4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDD2F0);
  }

  return result;
}

unint64_t sub_1BC6CABC4()
{
  result = qword_1EBCDD300;
  if (!qword_1EBCDD300)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDD308, &qword_1BC7668F8);
    sub_1BC6CAC50();
    sub_1BC6CB070();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDD300);
  }

  return result;
}

unint64_t sub_1BC6CAC50()
{
  result = qword_1EBCDD310;
  if (!qword_1EBCDD310)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDD318, &qword_1BC766900);
    sub_1BC6CACDC();
    sub_1BC6CAE74();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDD310);
  }

  return result;
}

unint64_t sub_1BC6CACDC()
{
  result = qword_1EBCDD320;
  if (!qword_1EBCDD320)
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDD328, &qword_1BC766908);
    sub_1BC6CAD68(v1, v2, v3);
    sub_1BC6CADBC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDD320);
  }

  return result;
}

unint64_t sub_1BC6CAD68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBCDD330;
  if (!qword_1EBCDD330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDD330);
  }

  return result;
}

unint64_t sub_1BC6CADBC()
{
  result = qword_1EBCDD338;
  if (!qword_1EBCDD338)
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDD340, &qword_1BC766910);
    sub_1BC6CAD68(v1, v2, v3);
    sub_1BC633C54(&qword_1EBCDD348, &qword_1EBCDD350, &qword_1BC766918, MEMORY[0x1E697EC18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDD338);
  }

  return result;
}

unint64_t sub_1BC6CAE74()
{
  result = qword_1EBCDD358;
  if (!qword_1EBCDD358)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDD360, &qword_1BC766920);
    sub_1BC6CAF00();
    sub_1BC6CAFB8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDD358);
  }

  return result;
}

unint64_t sub_1BC6CAF00()
{
  result = qword_1EBCDD368;
  if (!qword_1EBCDD368)
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDD370, &qword_1BC766928);
    sub_1BC6CAD68(v1, v2, v3);
    sub_1BC633C54(&qword_1EBCDD378, &qword_1EBCDD380, &qword_1BC766930, MEMORY[0x1E697EC18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDD368);
  }

  return result;
}

unint64_t sub_1BC6CAFB8()
{
  result = qword_1EBCDD388;
  if (!qword_1EBCDD388)
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDD390, &qword_1BC766938);
    sub_1BC6CAD68(v1, v2, v3);
    sub_1BC633C54(&qword_1EBCDD398, &qword_1EBCDD3A0, &qword_1BC766940, MEMORY[0x1E697EC18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDD388);
  }

  return result;
}

unint64_t sub_1BC6CB070()
{
  result = qword_1EBCDD3A8;
  if (!qword_1EBCDD3A8)
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDD3B0, &qword_1BC766948);
    sub_1BC6CAD68(v1, v2, v3);
    sub_1BC633C54(&qword_1EBCDD3B8, &qword_1EBCDD3C0, &qword_1BC766950, MEMORY[0x1E697EC18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDD3A8);
  }

  return result;
}

unint64_t sub_1BC6CB128()
{
  result = qword_1EBCDD3C8;
  if (!qword_1EBCDD3C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDD2C8, &unk_1BC766738);
    sub_1BC6CB1E0();
    sub_1BC633C54(&qword_1EBCDC4F0, &qword_1EBCDC458, &qword_1BC762B00, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDD3C8);
  }

  return result;
}

unint64_t sub_1BC6CB1E0()
{
  result = qword_1EBCDD3D0;
  if (!qword_1EBCDD3D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDD3D8, &unk_1BC766958);
    sub_1BC633C54(&qword_1EDDCE158, &qword_1EBCDD2C0, &qword_1BC766700, MEMORY[0x1E697DB78]);
    sub_1BC6CB2C8(&qword_1EDDCE000, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDD3D0);
  }

  return result;
}

uint64_t sub_1BC6CB2C8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1BC6CB310()
{
  result = qword_1EBCDD470;
  if (!qword_1EBCDD470)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDD468, &qword_1BC7669F0);
    sub_1BC6CB39C();
    sub_1BC6CB50C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDD470);
  }

  return result;
}

unint64_t sub_1BC6CB39C()
{
  result = qword_1EBCDD478;
  if (!qword_1EBCDD478)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDD480, &qword_1BC7669F8);
    sub_1BC6CB454();
    sub_1BC633C54(&qword_1EBCDC6B8, &qword_1EBCDC6C0, &qword_1BC761ED0, MEMORY[0x1E6980490]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDD478);
  }

  return result;
}

unint64_t sub_1BC6CB454()
{
  result = qword_1EBCDE3B0;
  if (!qword_1EBCDE3B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDD488, &qword_1BC766A00);
    sub_1BC633C54(&unk_1EBCDE3C0, &qword_1EBCDD490, &unk_1BC766A08, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDE3B0);
  }

  return result;
}

unint64_t sub_1BC6CB50C()
{
  result = qword_1EBCDD498;
  if (!qword_1EBCDD498)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDD4A0, &qword_1BC766A18);
    sub_1BC6CB5C4();
    sub_1BC633C54(&qword_1EBCDC6B8, &qword_1EBCDC6C0, &qword_1BC761ED0, MEMORY[0x1E6980490]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDD498);
  }

  return result;
}

unint64_t sub_1BC6CB5C4()
{
  result = qword_1EBCDD4A8;
  if (!qword_1EBCDD4A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDD4B0, &unk_1BC766A20);
    sub_1BC6CB454();
    sub_1BC633C54(&qword_1EBCDC418, &qword_1EBCDC420, &unk_1BC76EA00, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDD4A8);
  }

  return result;
}

unint64_t sub_1BC6CB67C()
{
  result = qword_1EBCDD500;
  if (!qword_1EBCDD500)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDD4E8, &qword_1BC766AC8);
    sub_1BC6CB708();
    sub_1BC6CB990();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDD500);
  }

  return result;
}

unint64_t sub_1BC6CB708()
{
  result = qword_1EBCDD508;
  if (!qword_1EBCDD508)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDD510, &qword_1BC766B28);
    sub_1BC6CB794();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDD508);
  }

  return result;
}

unint64_t sub_1BC6CB794()
{
  result = qword_1EBCDD518;
  if (!qword_1EBCDD518)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDD520, &qword_1BC766B30);
    sub_1BC6CB820();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDD518);
  }

  return result;
}

unint64_t sub_1BC6CB820()
{
  result = qword_1EBCDD528;
  if (!qword_1EBCDD528)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDD530, &qword_1BC766B38);
    sub_1BC6CB8D8();
    sub_1BC633C54(&qword_1EBCDC418, &qword_1EBCDC420, &unk_1BC76EA00, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDD528);
  }

  return result;
}

unint64_t sub_1BC6CB8D8()
{
  result = qword_1EBCDD538;
  if (!qword_1EBCDD538)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDD540, &unk_1BC766B40);
    sub_1BC633C54(&qword_1EBCDC6B8, &qword_1EBCDC6C0, &qword_1BC761ED0, MEMORY[0x1E6980490]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDD538);
  }

  return result;
}

unint64_t sub_1BC6CB990()
{
  result = qword_1EBCDD548;
  if (!qword_1EBCDD548)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDD4C8, &qword_1BC766AA0);
    sub_1BC6CBA1C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDD548);
  }

  return result;
}

unint64_t sub_1BC6CBA1C()
{
  result = qword_1EBCDD550;
  if (!qword_1EBCDD550)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDD4D0, &unk_1BC766AA8);
    sub_1BC6CBAA8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDD550);
  }

  return result;
}

unint64_t sub_1BC6CBAA8()
{
  result = qword_1EBCDD558;
  if (!qword_1EBCDD558)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDC5A0, &qword_1BC766B10);
    sub_1BC6CBB60();
    sub_1BC633C54(&qword_1EBCDC6B8, &qword_1EBCDC6C0, &qword_1BC761ED0, MEMORY[0x1E6980490]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDD558);
  }

  return result;
}

unint64_t sub_1BC6CBB60()
{
  result = qword_1EBCDD560;
  if (!qword_1EBCDD560)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDC590, &unk_1BC766AD0);
    sub_1BC680F34();
    sub_1BC633C54(&qword_1EBCDD568, &qword_1EBCDC598, &qword_1BC761D20, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDD560);
  }

  return result;
}

unint64_t sub_1BC6CBC18()
{
  result = qword_1EBCDD570;
  if (!qword_1EBCDD570)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDD4B8, &qword_1BC766A90);
    sub_1BC6CBCA4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDD570);
  }

  return result;
}

unint64_t sub_1BC6CBCA4()
{
  result = qword_1EBCDD578;
  if (!qword_1EBCDD578)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDD4F8, &qword_1BC766B20);
    sub_1BC6CBD30();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDD578);
  }

  return result;
}

unint64_t sub_1BC6CBD30()
{
  result = qword_1EBCDD580;
  if (!qword_1EBCDD580)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDD4F0, &qword_1BC766B18);
    sub_1BC6CBAA8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDD580);
  }

  return result;
}

uint64_t SensitiveParticipantBadge.Kind.hashValue.getter()
{
  v1 = *v0;
  sub_1BC75C700();
  MEMORY[0x1BFB272F0](v1);
  return sub_1BC75C720();
}

uint64_t SensitiveParticipantBadge.init(kind:participant:)@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  *a3 = *a1;
  v5 = *(type metadata accessor for SensitiveParticipantBadge(0) + 20);
  v6 = sub_1BC759FE0();
  v7 = *(*(v6 - 8) + 32);

  return v7(&a3[v5], a2, v6);
}

uint64_t SensitiveParticipantBadge.body.getter@<X0>(uint64_t a1@<X8>)
{
  v27 = a1;
  v2 = type metadata accessor for _SensitiveParticipantBadge(0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDD5C0, &qword_1BC766B90);
  v24 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v24 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDD5C8, &qword_1BC766B98);
  v9 = *(v8 - 8);
  v25 = v8;
  v26 = v9;
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v24 - v10;
  v12 = *v1;
  KeyPath = swift_getKeyPath();
  PolicyProperty.init()(&v4[*(v2 + 20)]);
  *v4 = KeyPath;
  *(v4 + 4) = 0;
  v4[*(v2 + 24)] = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC1F8, &qword_1BC761170);
  v14 = sub_1BC759FE0();
  v15 = *(v14 - 8);
  v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1BC761600;
  v18 = type metadata accessor for SensitiveParticipantBadge(0);
  (*(v15 + 16))(v17 + v16, &v1[*(v18 + 20)], v14);
  v19 = swift_getKeyPath();
  v20 = sub_1BC6CC3E8(&qword_1EBCDD5D0, type metadata accessor for _SensitiveParticipantBadge, &unk_1BC766CC0);

  View.checkingHistory(of:predicate:)(v17, sub_1BC6A5314, v19, v2, v20);

  sub_1BC6CC38C(v4);
  v28 = v2;
  v29 = v20;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  View.prefetchSensitiveContentPolicy()(v5, OpaqueTypeConformance2);
  (*(v24 + 8))(v7, v5);
  sub_1BC759D90();
  sub_1BC759D80();
  v28 = v5;
  v29 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  sub_1BC6CC3E8(&qword_1EDDCF1C8, MEMORY[0x1E697B4E8], MEMORY[0x1E697B4D0]);
  v22 = v25;
  sub_1BC75B210();

  return (*(v26 + 8))(v11, v22);
}

uint64_t sub_1BC6CC38C(uint64_t a1)
{
  v2 = type metadata accessor for _SensitiveParticipantBadge(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BC6CC3E8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1BC6CC430@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1BC75ABB0();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v1;
  v8 = *(v1 + 8);
  if (*(v1 + 9) == 1)
  {
    sub_1BC6354C8(*v1, *(v1 + 8));
    if (v8 == 255)
    {
      goto LABEL_8;
    }
  }

  else
  {

    sub_1BC75BF70();
    v9 = sub_1BC75AFC0();
    sub_1BC75A4B0();

    sub_1BC75ABA0();
    swift_getAtKeyPath();
    sub_1BC638C10(v7, v8, 0);
    (*(v4 + 8))(v6, v3);
    v7 = v14;
    LOBYTE(v8) = v15;
    if (v15 == 255)
    {
      goto LABEL_8;
    }
  }

  if (*(v7 + 16))
  {
    v10 = sub_1BC759D00();
    v11 = *(v10 - 8);
    (*(v11 + 16))(a1, v7 + ((*(v11 + 80) + 32) & ~*(v11 + 80)), v10);
    sub_1BC638C1C(v7, v8);
    return (*(v11 + 56))(a1, 0, 1, v10);
  }

  sub_1BC638C1C(v7, v8);
LABEL_8:
  v13 = sub_1BC759D00();
  return (*(*(v13 - 8) + 56))(a1, 1, 1, v13);
}

uint64_t sub_1BC6CC6A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v25[1] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDD5F8, &qword_1BC766D90);
  v4 = MEMORY[0x1EEE9AC00](v3);
  v6 = (v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v4);
  v8 = v25 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDD600, &qword_1BC766D98);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v25 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDD608, &qword_1BC766DA0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = v25 - v13;
  sub_1BC6CC430(v25 - v13);
  v15 = sub_1BC759D00();
  v16 = (*(*(v15 - 8) + 48))(v14, 1, v15);
  sub_1BC66008C(v14, &qword_1EBCDD608, &qword_1BC766DA0);
  if (v16 == 1)
  {
    swift_storeEnumTagMultiPayload();
    sub_1BC6CCDC4();
    return sub_1BC75AE00();
  }

  else
  {
    v18 = sub_1BC75B5C0();
    if (*(a1 + *(type metadata accessor for _SensitiveParticipantBadge(0) + 24)))
    {
      v19 = sub_1BC75B540();
    }

    else
    {
      v19 = sub_1BC75B570();
    }

    v20 = v19;
    v21 = (v6 + *(v3 + 36));
    v22 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDD620, &qword_1BC766DA8) + 28);
    v23 = *MEMORY[0x1E69816E0];
    v24 = sub_1BC75B600();
    (*(*(v24 - 8) + 104))(v21 + v22, v23, v24);
    *v21 = swift_getKeyPath();
    *v6 = v18;
    v6[1] = v20;
    sub_1BC6CCF68(v6, v8);
    sub_1BC6CCFD8(v8, v11);
    swift_storeEnumTagMultiPayload();
    sub_1BC6CCDC4();
    sub_1BC75AE00();
    return sub_1BC66008C(v8, &qword_1EBCDD5F8, &qword_1BC766D90);
  }
}

unint64_t sub_1BC6CC9D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBCDD5E0;
  if (!qword_1EBCDD5E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDD5E0);
  }

  return result;
}

uint64_t sub_1BC6CCA64@<X0>(uint64_t a2@<X8>)
{
  *a2 = sub_1BC75ACD0();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDD5D8, &qword_1BC766C00);
  return sub_1BC6CC6A4(v2, a2 + *(v4 + 44));
}

uint64_t sub_1BC6CCAE0(uint64_t a1)
{
  result = sub_1BC759FE0();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SensitiveParticipantBadge.Kind(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for SensitiveParticipantBadge.Kind(uint64_t result, unsigned int a2, unsigned int a3)
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

void sub_1BC6CCCD4(uint64_t a1)
{
  sub_1BC6CCD60(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for PolicyProperty(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1BC6CCD60(uint64_t a1)
{
  if (!qword_1EDDCE7F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDC948, &qword_1BC766D80);
    v1 = sub_1BC75A720();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDDCE7F8);
    }
  }
}

unint64_t sub_1BC6CCDC4()
{
  result = qword_1EBCDD610;
  if (!qword_1EBCDD610)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDD5F8, &qword_1BC766D90);
    sub_1BC6CB8D8();
    sub_1BC633C54(&qword_1EBCDD618, &qword_1EBCDD620, &qword_1BC766DA8, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDD610);
  }

  return result;
}

uint64_t sub_1BC6CCEA0(uint64_t a1)
{
  v2 = sub_1BC75B600();
  MEMORY[0x1EEE9AC00](v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_1BC75AA40();
}

uint64_t sub_1BC6CCF68(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDD5F8, &qword_1BC766D90);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BC6CCFD8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDD5F8, &qword_1BC766D90);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t SensitiveContentInPreviousCallTipView.ParticipantDetails.participant.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1BC759FE0();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t SensitiveContentInPreviousCallTipView.ParticipantDetails.init(participant:context:isBlocked:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = sub_1BC759FE0();
  (*(*(v10 - 8) + 32))(a5, a1, v10);
  v13 = type metadata accessor for SensitiveContentInPreviousCallTipView.ParticipantDetails(0, a4, v11, v12);
  result = (*(*(a4 - 8) + 32))(a5 + *(v13 + 28), a2, a4);
  *(a5 + *(v13 + 32)) = a3;
  return result;
}

uint64_t sub_1BC6CD1CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t *a6@<X8>)
{
  v123 = a5;
  v115 = a2;
  v116 = a3;
  v117 = a6;
  v8 = sub_1BC759FE0();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v128 = &v106 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v106 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v131 = &v106 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDD630, &qword_1BC766DE8);
  v127 = *(v16 - 8);
  v17 = MEMORY[0x1EEE9AC00](v16 - 8);
  v120 = &v106 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v121 = v18;
  MEMORY[0x1EEE9AC00](v17);
  v122 = &v106 - v19;
  v20 = sub_1BC6360D4(MEMORY[0x1E69E7CC0]);
  v21 = v20;
  v126 = *(a1 + 16);
  if (!v126)
  {
    v42 = v20;
LABEL_64:
    sub_1BC635484(v115, v116);

    result = sub_1BC635484(a4, v123);
    *v117 = v42;
    return result;
  }

  v22 = 0;
  v130 = (v9 + 16);
  v113 = v9 + 32;
  v114 = v14;
  v118 = v9;
  v119 = a1;
  v124 = v8;
  v125 = (v9 + 8);
  v23 = v122;
  while (1)
  {
    if (v22 >= *(a1 + 16))
    {
      __break(1u);
LABEL_66:
      __break(1u);
LABEL_67:
      __break(1u);
LABEL_68:
      __break(1u);
LABEL_69:
      __break(1u);
LABEL_70:
      __break(1u);
      goto LABEL_71;
    }

    v27 = (*(v127 + 80) + 32) & ~*(v127 + 80);
    sub_1BC660024(a1 + v27 + *(v127 + 72) * v22, v23, &qword_1EBCDD630, &qword_1BC766DE8);
    v28 = *v130;
    v129 = *v130;
    if (!a4)
    {
      break;
    }

    v29 = v131;
    v28(v131, v23, v8);
    v30 = v23;
    v31 = v120;
    sub_1BC660024(v30, v120, &qword_1EBCDD630, &qword_1BC766DE8);
    v32 = swift_allocObject();
    v33 = a4;
    v34 = v123;
    *(v32 + 16) = a4;
    *(v32 + 24) = v34;
    sub_1BC6D1388(v31, v32 + v27);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v132 = v21;
    v37 = sub_1BC639118(v29);
    v38 = *(v21 + 16);
    v39 = (v36 & 1) == 0;
    v40 = v38 + v39;
    if (__OFADD__(v38, v39))
    {
      goto LABEL_66;
    }

    v41 = v36;
    if (*(v21 + 24) >= v40)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        v42 = v21;
        if ((v36 & 1) == 0)
        {
          goto LABEL_20;
        }
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDD720, &qword_1BC7670E0);
        v61 = sub_1BC75C400();
        v42 = v61;
        if (*(v21 + 16))
        {
          v62 = (v61 + 64);
          v63 = (v21 + 64);
          v64 = ((1 << *(v42 + 32)) + 63) >> 6;
          v107 = v21 + 64;
          if (v42 != v21 || v62 >= &v63[8 * v64])
          {
            memmove(v62, v63, 8 * v64);
          }

          v65 = 0;
          *(v42 + 16) = *(v21 + 16);
          v66 = 1 << *(v21 + 32);
          if (v66 < 64)
          {
            v67 = ~(-1 << v66);
          }

          else
          {
            v67 = -1;
          }

          v68 = v67 & *(v21 + 64);
          v69 = (v66 + 63) >> 6;
          if (v68)
          {
            do
            {
              v70 = __clz(__rbit64(v68));
              v112 = (v68 - 1) & v68;
LABEL_39:
              v73 = v70 | (v65 << 6);
              v74 = *(v21 + 48);
              v111 = *(v118 + 72) * v73;
              v129(v114, v74 + v111, v124);
              v75 = *(v21 + 56);
              v109 = 16 * v73;
              v76 = (v75 + 16 * v73);
              v77 = *v76;
              v110 = v76[1];
              (*(v118 + 32))(*(v42 + 48) + v111, v114, v124);
              v78 = (*(v42 + 56) + v109);
              v79 = v110;
              *v78 = v77;
              v78[1] = v79;
              sub_1BC635800(v77, v79);
              v68 = v112;
            }

            while (v112);
          }

          v71 = v65;
          while (1)
          {
            v65 = v71 + 1;
            if (__OFADD__(v71, 1))
            {
              goto LABEL_70;
            }

            if (v65 >= v69)
            {
              break;
            }

            v72 = *(v107 + 8 * v65);
            ++v71;
            if (v72)
            {
              v70 = __clz(__rbit64(v72));
              v112 = (v72 - 1) & v72;
              goto LABEL_39;
            }
          }
        }

        if ((v41 & 1) == 0)
        {
LABEL_20:
          *(v42 + 8 * (v37 >> 6) + 64) |= 1 << v37;
          v129(*(v42 + 48) + *(v118 + 72) * v37, v131, v124);
          v55 = (*(v42 + 56) + 16 * v37);
          *v55 = sub_1BC6D2864;
          v55[1] = v32;
          v56 = *(v42 + 16);
          v51 = __OFADD__(v56, 1);
          v57 = v56 + 1;
          if (v51)
          {
            goto LABEL_68;
          }

          *(v42 + 16) = v57;
          goto LABEL_4;
        }
      }
    }

    else
    {
      sub_1BC639370(v40, isUniquelyReferenced_nonNull_native);
      v42 = v132;
      v43 = sub_1BC639118(v131);
      if ((v41 & 1) != (v44 & 1))
      {
        goto LABEL_72;
      }

      v37 = v43;
      if ((v41 & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    v24 = (*(v42 + 56) + 16 * v37);
    v25 = *v24;
    v26 = v24[1];
    *v24 = sub_1BC6D2864;
    v24[1] = v32;
    sub_1BC635484(v25, v26);
LABEL_4:
    v8 = v124;
    (*v125)(v131, v124);
    a4 = v33;
    a1 = v119;
    v23 = v122;
LABEL_5:
    ++v22;
    sub_1BC66008C(v23, &qword_1EBCDD630, &qword_1BC766DE8);
    v21 = v42;
    if (v22 == v126)
    {
      goto LABEL_64;
    }
  }

  v45 = v128;
  v28(v128, v23, v8);
  v46 = swift_isUniquelyReferenced_nonNull_native();
  v132 = v21;
  v47 = sub_1BC639118(v45);
  v49 = *(v21 + 16);
  v50 = (v48 & 1) == 0;
  v51 = __OFADD__(v49, v50);
  v52 = v49 + v50;
  if (v51)
  {
    goto LABEL_67;
  }

  if (*(v21 + 24) < v52)
  {
    v53 = v48;
    sub_1BC639370(v52, v46);
    v42 = v132;
    v47 = sub_1BC639118(v128);
    if ((v53 & 1) != (v54 & 1))
    {
      goto LABEL_73;
    }

    a4 = 0;
    if ((v53 & 1) == 0)
    {
LABEL_60:
      *(v42 + 8 * (v47 >> 6) + 64) |= 1 << v47;
      v101 = v47;
      v129(*(v42 + 48) + *(v118 + 72) * v47, v128, v8);
      v102 = (*(v42 + 56) + 16 * v101);
      *v102 = 0;
      v102[1] = 0;
      v103 = *(v42 + 16);
      v51 = __OFADD__(v103, 1);
      v104 = v103 + 1;
      if (v51)
      {
        goto LABEL_69;
      }

      *(v42 + 16) = v104;
      goto LABEL_62;
    }

LABEL_24:
    v58 = (*(v42 + 56) + 16 * v47);
    v59 = *v58;
    v60 = v58[1];
    *v58 = 0;
    v58[1] = 0;
    sub_1BC635484(v59, v60);
LABEL_62:
    (*v125)(v128, v8);
    goto LABEL_5;
  }

  if (v46)
  {
    v42 = v21;
    a4 = 0;
    if ((v48 & 1) == 0)
    {
      goto LABEL_60;
    }

    goto LABEL_24;
  }

  LODWORD(v107) = v48;
  v109 = v47;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDD720, &qword_1BC7670E0);
  v80 = sub_1BC75C400();
  v42 = v80;
  a4 = 0;
  if (!*(v21 + 16))
  {
LABEL_59:

    v47 = v109;
    a1 = v119;
    v8 = v124;
    if ((v107 & 1) == 0)
    {
      goto LABEL_60;
    }

    goto LABEL_24;
  }

  v81 = (v80 + 64);
  v82 = (v21 + 64);
  v83 = ((1 << *(v42 + 32)) + 63) >> 6;
  v106 = v21 + 64;
  if (v42 != v21 || v81 >= &v82[8 * v83])
  {
    memmove(v81, v82, 8 * v83);
  }

  v84 = 0;
  *(v42 + 16) = *(v21 + 16);
  v85 = 1 << *(v21 + 32);
  if (v85 < 64)
  {
    v86 = ~(-1 << v85);
  }

  else
  {
    v86 = -1;
  }

  v87 = v86 & *(v21 + 64);
  v88 = (v85 + 63) >> 6;
  v108 = 0;
  v110 = v88;
  if (v87)
  {
    do
    {
      v89 = __clz(__rbit64(v87));
      v112 = (v87 - 1) & v87;
LABEL_57:
      v92 = v89 | (v84 << 6);
      v93 = *(v21 + 48);
      v94 = v118;
      v111 = *(v118 + 72) * v92;
      v95 = v114;
      v96 = v124;
      v129(v114, v93 + v111, v124);
      v92 *= 16;
      v97 = (*(v21 + 56) + v92);
      v98 = *v97;
      v99 = v97[1];
      (*(v94 + 32))(*(v42 + 48) + v111, v95, v96);
      v100 = (*(v42 + 56) + v92);
      *v100 = v98;
      v100[1] = v99;
      sub_1BC635800(v98, v99);
      a4 = v108;
      v23 = v122;
      v88 = v110;
      v87 = v112;
    }

    while (v112);
  }

  v90 = v84;
  while (1)
  {
    v84 = v90 + 1;
    if (__OFADD__(v90, 1))
    {
      break;
    }

    if (v84 >= v88)
    {
      goto LABEL_59;
    }

    v91 = *(v106 + 8 * v84);
    ++v90;
    if (v91)
    {
      v89 = __clz(__rbit64(v91));
      v112 = (v91 - 1) & v91;
      goto LABEL_57;
    }
  }

LABEL_71:
  __break(1u);
LABEL_72:
  sub_1BC75C640();
  __break(1u);
LABEL_73:
  result = sub_1BC75C640();
  __break(1u);
  return result;
}

uint64_t SensitiveContentInPreviousCallTipView.init<A>(participants:areParticipantsBlocked:onBlockParticipant:)@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  sub_1BC6360D4(MEMORY[0x1E69E7CC0]);
  type metadata accessor for SensitiveContentInPreviousCallTipView.ParticipantDetails(255, a6, v13, v14);
  sub_1BC75BD70();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDD628, &qword_1BC766DE0);
  swift_getWitnessTable();
  sub_1BC75BC60();
  sub_1BC635484(a2, a3);
  sub_1BC635484(a4, a5);

  *a7 = v16;
  return result;
}

uint64_t sub_1BC6CDCA8(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = type metadata accessor for SensitiveContentInPreviousCallTipView.ParticipantDetails(0, a5, a3, a4);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v20 - v12;
  if (a3)
  {
    (*(v11 + 16))(v13, a2, v10);
    v14 = (*(v11 + 80) + 40) & ~*(v11 + 80);
    v15 = swift_allocObject();
    *(v15 + 2) = a5;
    *(v15 + 3) = a3;
    *(v15 + 4) = a4;
    (*(v11 + 32))(&v15[v14], v13, v10);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v21 = *a1;
    v17 = sub_1BC6D28D8;
    v18 = v15;
  }

  else
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v21 = *a1;
    v17 = 0;
    v18 = 0;
  }

  result = sub_1BC6D0A6C(v17, v18, a2, isUniquelyReferenced_nonNull_native);
  *a1 = v21;
  return result;
}

uint64_t sub_1BC6CDE54@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1BC759BB0();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1BC6CDE84()
{
  v1 = sub_1BC75ABB0();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + 56);
  v6 = *(v0 + 64);
  if (*(v0 + 65) == 1)
  {
    sub_1BC6354C8(*(v0 + 56), *(v0 + 64));
  }

  else
  {

    sub_1BC75BF70();
    v7 = sub_1BC75AFC0();
    sub_1BC75A4B0();

    sub_1BC75ABA0();
    swift_getAtKeyPath();
    sub_1BC638C10(v5, v6, 0);
    (*(v2 + 8))(v4, v1);
    return v9;
  }

  return v5;
}

void *Array<A>.partitionByIsFromMeFlag.getter(void *a1)
{
  v73 = sub_1BC759C40();
  v2 = *(v73 - 8);
  v3 = MEMORY[0x1EEE9AC00](v73);
  v72 = &v50 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v69 = &v50 - v5;
  v71 = sub_1BC759CA0();
  v6 = *(v71 - 8);
  MEMORY[0x1EEE9AC00](v71);
  v70 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1BC759D00();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v68 = &v50 - v13;

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    a1 = sub_1BC6D1344(a1);
    v14 = a1[2];
    if (v14)
    {
      goto LABEL_3;
    }

    return a1;
  }

  v14 = a1[2];
  if (!v14)
  {
    return a1;
  }

LABEL_3:
  v15 = 0;
  v16 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v55 = a1;
  v17 = a1 + v16;
  v19 = *(v9 + 16);
  v18 = v9 + 16;
  v20 = *(v18 + 56);
  v64 = (v6 + 8);
  v65 = v19;
  v62 = (v18 - 8);
  v63 = (v2 + 8);
  v66 = v18;
  v52 = a1 + v16 + v20;
  v76 = v8;
  v54 = v12;
  v61 = a1 + v16;
  v67 = v20;
  v53 = (v18 + 16);
  do
  {
    v21 = v20 * v15;
    v60 = v14;
    v74 = (v20 * (v15 - v14));
    while (1)
    {
      v75 = v15;
      v22 = v68;
      v59 = v17 + v21;
      v65(v68);
      v23 = v70;
      sub_1BC759CF0();
      v24 = v69;
      sub_1BC759C90();
      v25 = *v64;
      (*v64)(v23, v71);
      v26 = v72;
      sub_1BC759C30();
      v27 = sub_1BC6330EC(&qword_1EBCDBF78, MEMORY[0x1E697B3F0], MEMORY[0x1E697B408]);
      v28 = v73;
      v29 = sub_1BC75C170();
      v30 = *v63;
      (*v63)(v26, v28);
      v30(v24, v28);
      v31 = *v62;
      result = (*v62)(v22, v76);
      if (v29)
      {
        break;
      }

      v15 = v75 + 1;
      v21 += v67;
      v74 += v67;
      v17 = v61;
      if (v75 + 1 >= v60)
      {
        goto LABEL_19;
      }
    }

    v57 = v27;
    v58 = v25;
    v51 = v21;
    v33 = 0;
    v56 = &v61[v67 * (v60 - 1)];
    v34 = v60;
    v35 = v74;
    v15 = v75;
    do
    {
      if (v15 >= --v34)
      {
        v17 = v61;
        goto LABEL_19;
      }

      v36 = v68;
      (v65)(v68, &v56[v33], v76);
      v37 = v70;
      sub_1BC759CF0();
      v38 = v69;
      sub_1BC759C90();
      v58(v37, v71);
      v39 = v38;
      v40 = v72;
      sub_1BC759C30();
      v41 = v73;
      LODWORD(v74) = sub_1BC75C170();
      v42 = v40;
      v15 = v75;
      v30(v42, v41);
      v30(v39, v41);
      result = v31(v36, v76);
      v35 += v67;
      v33 -= v67;
    }

    while ((v74 & 1) != 0);
    v14 = v34;
    v43 = v54;
    v44 = v59;
    v74 = *v53;
    (v74)(v54, v59, v76);
    v20 = v67;
    v45 = v67 * v60 + v33;
    if (v51 < v45 || v44 >= &v52[v33 + v67 * v60])
    {
      v17 = v61;
      v46 = v76;
      swift_arrayInitWithTakeFrontToBack();
    }

    else
    {
      v46 = v76;
      v17 = v61;
      if (v35)
      {
        swift_arrayInitWithTakeBackToFront();
      }
    }

    result = (v74)(v45 + v17, v43, v46);
    ++v15;
  }

  while (v15 < v14);
LABEL_19:
  a1 = v55;
  v47 = v55[2];
  if (v47 < v15)
  {
    __break(1u);
  }

  else if ((v15 & 0x8000000000000000) == 0)
  {
    if (v15)
    {
      if (v47 != v15)
      {
        sub_1BC6D11A4(v55, v17, 0, (2 * v15) | 1);
        v49 = v48;

        return v49;
      }
    }

    return a1;
  }

  __break(1u);
  return result;
}

uint64_t sub_1BC6CE62C()
{
  v1 = type metadata accessor for _SensitiveContentInPreviousCallTipView(0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  result = MEMORY[0x1EEE9AC00](v1 - 8);
  v5 = 0;
  v6 = *(v0 + *(result + 48));
  v7 = 1 << *(v6 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(v6 + 64);
  v10 = (v7 + 63) >> 6;
  while (v9)
  {
    v11 = v5;
LABEL_10:
    v12 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    if (*(*(v6 + 56) + ((v11 << 10) | (16 * v12))))
    {
      v13 = sub_1BC6CDE84();
      if (v14 == -1)
      {
        v17 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v15 = v14;
        v16 = v13;
        v17 = Array<A>.partitionByIsFromMeFlag.getter(v13);
        sub_1BC638C1C(v16, v15);
      }

      v18 = v17[2];

      if (v18)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDD710, &unk_1BC767080);
        v19 = swift_allocObject();
        *(v19 + 16) = xmmword_1BC75F0C0;
        v20 = sub_1BC72931C();
        v21 = v20[1];
        v64 = *v20;

        v22._object = 0x80000001BC772FA0;
        v22._countAndFlagsBits = 0xD000000000000015;
        object = SCLocalizedStringKey.init(stringLiteral:)(v22).localized._object;
        v65 = v67;
        v66 = v68;
        v25 = sub_1BC651E78(&v65, object, v24);
        v62 = v26;
        v63 = v25;
        v28 = v27;
        v30 = v29;
        sub_1BC6D1EF8(v0, &v61 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
        v31 = (*(v2 + 80) + 16) & ~*(v2 + 80);
        v32 = swift_allocObject();
        sub_1BC6D1F5C(&v61 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v32 + v31);
        v33 = swift_allocObject();
        *(v33 + 16) = sub_1BC6D2200;
        *(v33 + 24) = v32;
        LOBYTE(v65) = v30 & 1;
        v34 = v63;
        *(v19 + 32) = v64;
        *(v19 + 40) = v21;
        *(v19 + 48) = v34;
        *(v19 + 56) = v28;
        *(v19 + 64) = v30 & 1;
        *(v19 + 72) = v62;
        *(v19 + 80) = sub_1BC68CD08;
        *(v19 + 88) = v33;
        v35 = sub_1BC729328();
        v36 = v35[1];
        v64 = *v35;

        v37 = sub_1BC6CFD08();
        v63 = v38;
        LOBYTE(v28) = v39;
        v41 = v40;
        sub_1BC6D1EF8(v0, &v61 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
        v42 = swift_allocObject();
        sub_1BC6D1F5C(&v61 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v42 + v31);
        v43 = swift_allocObject();
        result = v19;
        *(v43 + 16) = sub_1BC6D2220;
        *(v43 + 24) = v42;
        LOBYTE(v67) = v28 & 1;
        v44 = v63;
        *(v19 + 96) = v64;
        *(v19 + 104) = v36;
        *(v19 + 112) = v37;
        *(v19 + 120) = v44;
        *(v19 + 128) = v28 & 1;
        *(v19 + 136) = v41;
        *(v19 + 144) = sub_1BC6D2C10;
        *(v19 + 152) = v43;
      }

      else
      {
LABEL_16:
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDD710, &unk_1BC767080);
        v45 = swift_allocObject();
        *(v45 + 16) = xmmword_1BC761600;
        v46 = sub_1BC72931C();
        v47 = v46[1];
        v64 = *v46;

        v48._object = 0x80000001BC772FA0;
        v48._countAndFlagsBits = 0xD000000000000015;
        v49 = SCLocalizedStringKey.init(stringLiteral:)(v48).localized._object;
        v65 = v67;
        v66 = v68;
        v51 = sub_1BC651E78(&v65, v49, v50);
        v53 = v52;
        v55 = v54;
        v57 = v56;
        sub_1BC6D1EF8(v0, &v61 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
        v58 = (*(v2 + 80) + 16) & ~*(v2 + 80);
        v59 = swift_allocObject();
        sub_1BC6D1F5C(&v61 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v59 + v58);
        v60 = swift_allocObject();
        result = v45;
        *(v60 + 16) = sub_1BC6D2C0C;
        *(v60 + 24) = v59;
        LOBYTE(v67) = v55 & 1;
        *(v45 + 32) = v64;
        *(v45 + 40) = v47;
        *(v45 + 48) = v51;
        *(v45 + 56) = v53;
        *(v45 + 64) = v55 & 1;
        *(v45 + 72) = v57;
        *(v45 + 80) = sub_1BC6D2C10;
        *(v45 + 88) = v60;
      }

      return result;
    }
  }

  while (1)
  {
    v11 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      break;
    }

    if (v11 >= v10)
    {
      goto LABEL_16;
    }

    v9 = *(v6 + 64 + 8 * v11);
    ++v5;
    if (v9)
    {
      v5 = v11;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}