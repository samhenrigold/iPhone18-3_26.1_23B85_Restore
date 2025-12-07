uint64_t sub_24909FC84(uint64_t result)
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

  result = sub_24909FDE4(result, v11, 1, v3);
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

void *sub_24909FD70(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED7EC0, &qword_249110010);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_24909FDE4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED7EC0, &qword_249110010);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
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

uint64_t sub_24909FED8(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_2490A2D10(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_24909FF44(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_24909FF44(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_24910D4FC();
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
        v5 = sub_24910CD8C();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_2490A010C(v7, v8, a1, v4);
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
    return sub_2490A003C(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_2490A003C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
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
      if (v13 || (result = sub_24910D54C(), (result & 1) == 0))
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

uint64_t sub_2490A010C(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v95 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
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
      result = sub_2490A099C(v8);
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
        sub_2490A06E8((*a3 + 16 * *v87), (*a3 + 16 * *v89), (*a3 + 16 * v90), v9);
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
  v8 = MEMORY[0x277D84F90];
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
        result = sub_24910D54C();
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
            result = sub_24910D54C();
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
      result = sub_24909F544(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v40 = *(v8 + 2);
    v39 = *(v8 + 3);
    v41 = v40 + 1;
    if (v40 >= v39 >> 1)
    {
      result = sub_24909F544((v39 > 1), v40 + 1, 1, v8);
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
        sub_2490A06E8((*a3 + 16 * v82), (*a3 + 16 * *&v8[16 * v44 + 32]), (*a3 + 16 * v83), v43);
        if (v5)
        {
        }

        if (v83 < v82)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_2490A099C(v8);
        }

        if (v9 >= *(v8 + 2))
        {
          goto LABEL_118;
        }

        v84 = &v8[16 * v9];
        *(v84 + 4) = v82;
        *(v84 + 5) = v83;
        result = sub_2490A0910(v44);
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
    if (v37 || (result = sub_24910D54C(), (result & 1) == 0))
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

uint64_t sub_2490A06E8(char *__dst, char *__src, char *a3, char *a4)
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
      if (!v16 && (sub_24910D54C() & 1) != 0)
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
      if (!v21 && (sub_24910D54C() & 1) != 0)
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

uint64_t sub_2490A0910(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_2490A099C(v3);
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

unint64_t sub_2490A09B0(unint64_t result)
{
  if (result)
  {
    v1 = result;
    v3 = 0;
    MEMORY[0x24C1F2700](&v3, 8);
    result = (v3 * v1) >> 64;
    if (v3 * v1 < v1)
    {
      v2 = -v1 % v1;
      if (v2 > v3 * v1)
      {
        do
        {
          v3 = 0;
          MEMORY[0x24C1F2700](&v3, 8);
        }

        while (v2 > v3 * v1);
        return (v3 * v1) >> 64;
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_2490A0A3C(uint64_t a1, uint64_t a2)
{
  sub_24910D60C();
  sub_24910CCCC();
  v4 = sub_24910D62C();

  return sub_2490A0AF8(a1, a2, v4);
}

unint64_t sub_2490A0AB4(uint64_t a1)
{
  v2 = sub_24910D5FC();

  return sub_2490A0BB0(a1, v2);
}

unint64_t sub_2490A0AF8(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_24910D54C())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_2490A0BB0(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

uint64_t sub_2490A0C1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t (*a4)(void)@<X3>, uint64_t (*a5)(void)@<X4>, void (*a6)(void)@<X5>, uint64_t a7@<X8>)
{
  v12 = v7;
  v14 = sub_2490A0A3C(a1, a2);
  if (v15)
  {
    v16 = v14;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v7;
    v28 = *v12;
    if (!isUniquelyReferenced_nonNull_native)
    {
      a6();
      v18 = v28;
    }

    v19 = *(v18 + 56);
    v20 = a3(0);
    v27 = *(v20 - 8);
    sub_2490A43AC(v19 + *(v27 + 72) * v16, a7, a4);
    sub_2490A17E4(v16, v18, a5);
    *v12 = v18;
    v21 = *(v27 + 56);
    v22 = a7;
    v23 = 0;
    v24 = v20;
  }

  else
  {
    v25 = a3(0);
    v21 = *(*(v25 - 8) + 56);
    v24 = v25;
    v22 = a7;
    v23 = 1;
  }

  return v21(v22, v23, 1, v24);
}

uint64_t sub_2490A0DA0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for DTSyncedAlarm(0);
  v39 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v41 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED7648, &qword_24910EB60);
  v40 = v4;
  result = sub_24910D36C();
  v9 = result;
  if (*(v7 + 16))
  {
    v37 = v2;
    v38 = v7;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = result + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = *(v7 + 56);
      v24 = (*(v7 + 48) + 16 * v22);
      v25 = *v24;
      v26 = v24[1];
      v27 = *(v39 + 72);
      v28 = v23 + v27 * v22;
      if (v40)
      {
        sub_2490A43AC(v28, v41, type metadata accessor for DTSyncedAlarm);
      }

      else
      {
        sub_2490A3010(v28, v41, type metadata accessor for DTSyncedAlarm);
      }

      sub_24910D60C();
      sub_24910CCCC();
      result = sub_24910D62C();
      v29 = -1 << *(v9 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v16 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v16 + 8 * v31);
          if (v35 != -1)
          {
            v17 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v30) & ~*(v16 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v25;
      v18[1] = v26;
      result = sub_2490A43AC(v41, *(v9 + 56) + v27 * v17, type metadata accessor for DTSyncedAlarm);
      ++*(v9 + 16);
      v7 = v38;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_34;
    }

    v36 = 1 << *(v7 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero(v11, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v36;
    }

    *(v7 + 16) = 0;
  }

LABEL_34:
  *v3 = v9;
  return result;
}

uint64_t sub_2490A1118(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for DTSyncedTimer(0);
  v39 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v41 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED7650, &qword_24910EB68);
  v40 = v4;
  result = sub_24910D36C();
  v9 = result;
  if (*(v7 + 16))
  {
    v37 = v2;
    v38 = v7;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = result + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = *(v7 + 56);
      v24 = (*(v7 + 48) + 16 * v22);
      v25 = *v24;
      v26 = v24[1];
      v27 = *(v39 + 72);
      v28 = v23 + v27 * v22;
      if (v40)
      {
        sub_2490A43AC(v28, v41, type metadata accessor for DTSyncedTimer);
      }

      else
      {
        sub_2490A3010(v28, v41, type metadata accessor for DTSyncedTimer);
      }

      sub_24910D60C();
      sub_24910CCCC();
      result = sub_24910D62C();
      v29 = -1 << *(v9 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v16 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v16 + 8 * v31);
          if (v35 != -1)
          {
            v17 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v30) & ~*(v16 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v25;
      v18[1] = v26;
      result = sub_2490A43AC(v41, *(v9 + 56) + v27 * v17, type metadata accessor for DTSyncedTimer);
      ++*(v9 + 16);
      v7 = v38;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_34;
    }

    v36 = 1 << *(v7 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero(v11, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v36;
    }

    *(v7 + 16) = 0;
  }

LABEL_34:
  *v3 = v9;
  return result;
}

uint64_t sub_2490A1490(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED7598, &qword_24910E890);
  v5 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v38 = &v34 - v6;
  v7 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED7690, &qword_24910EBA0);
  v37 = v4;
  result = sub_24910D36C();
  v9 = result;
  if (*(v7 + 16))
  {
    v34 = v3;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v35 = (v5 + 16);
    v36 = v5;
    v16 = (v5 + 32);
    v17 = result + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = *(*(v7 + 48) + 8 * v22);
      v24 = *(v5 + 72);
      v25 = *(v7 + 56) + v24 * v22;
      if (v37)
      {
        (*v16)(v38, v25, v39);
      }

      else
      {
        (*v35)(v38, v25, v39);
      }

      result = sub_24910D5FC();
      v26 = -1 << *(v9 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v17 + 8 * (v27 >> 6))) == 0)
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
          v32 = *(v17 + 8 * v28);
          if (v32 != -1)
          {
            v18 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v27) & ~*(v17 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      *(*(v9 + 48) + 8 * v18) = v23;
      result = (*v16)(*(v9 + 56) + v24 * v18, v38, v39);
      ++*(v9 + 16);
      v5 = v36;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v34;
      goto LABEL_34;
    }

    v33 = 1 << *(v7 + 32);
    v3 = v34;
    if (v33 >= 64)
    {
      bzero((v7 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v33;
    }

    *(v7 + 16) = 0;
  }

LABEL_34:
  *v3 = v9;
  return result;
}

unint64_t sub_2490A17E4(unint64_t result, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = result;
  v5 = a2 + 64;
  v6 = -1 << *(a2 + 32);
  v7 = (result + 1) & ~v6;
  if ((*(a2 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v9 = ~v6;
    v10 = (sub_24910D16C() + 1) & ~v6;
    while (1)
    {
      sub_24910D60C();

      sub_24910CCCC();
      v11 = sub_24910D62C();

      v12 = v11 & v9;
      if (v4 >= v10)
      {
        break;
      }

      if (v12 < v10)
      {
        goto LABEL_10;
      }

LABEL_11:
      v13 = *(a2 + 48);
      v14 = (v13 + 16 * v4);
      v15 = (v13 + 16 * v7);
      if (v4 != v7 || v14 >= v15 + 1)
      {
        *v14 = *v15;
      }

      v16 = *(a2 + 56);
      v17 = *(*(a3(0) - 8) + 72);
      v18 = v17 * v4;
      result = v16 + v17 * v4;
      v19 = v17 * v7;
      v20 = v16 + v17 * v7 + v17;
      if (v18 < v19 || result >= v20)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v4 = v7;
        if (v18 == v19)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v4 = v7;
LABEL_5:
      v7 = (v7 + 1) & v9;
      if (((*(v5 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v12 < v10)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v4 < v12)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v5 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v4) - 1;
  v22 = *(a2 + 16);
  v23 = __OFSUB__(v22, 1);
  v24 = v22 - 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v24;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_2490A19D8(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_24910D16C() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 48);
      v10 = (v9 + 8 * v6);
      result = sub_24910D5FC();
      v11 = result & v7;
      if (v3 >= v8)
      {
        if (v11 < v8 || v3 < v11)
        {
          goto LABEL_5;
        }
      }

      else if (v11 < v8 && v3 < v11)
      {
        goto LABEL_5;
      }

      v14 = (v9 + 8 * v3);
      if (v3 != v6 || v14 >= v10 + 1)
      {
        *v14 = *v10;
      }

      v15 = *(a2 + 56);
      v16 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED7598, &qword_24910E890) - 8) + 72);
      v17 = v16 * v3;
      result = v15 + v16 * v3;
      v18 = v16 * v6;
      v19 = v15 + v16 * v6 + v16;
      if (v17 < v18 || result >= v19)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v17 == v18)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }

  return result;
}

void sub_2490A1B9C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_2490A0A3C(a2, a3);
  v13 = v10[2];
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_15;
  }

  v16 = v11;
  v17 = v10[3];
  if (v17 >= v15 && (a4 & 1) != 0)
  {
LABEL_7:
    v18 = *v5;
    if (v16)
    {
LABEL_8:
      v19 = v18[7];
      v20 = type metadata accessor for DTSyncedAlarm(0);
      sub_2490A4480(a1, v19 + *(*(v20 - 8) + 72) * v12, type metadata accessor for DTSyncedAlarm);
      return;
    }

    goto LABEL_11;
  }

  if (v17 >= v15 && (a4 & 1) == 0)
  {
    sub_2490A219C();
    goto LABEL_7;
  }

  sub_2490A0DA0(v15, a4 & 1);
  v21 = sub_2490A0A3C(a2, a3);
  if ((v16 & 1) != (v22 & 1))
  {
LABEL_15:
    sub_24910D57C();
    __break(1u);
    return;
  }

  v12 = v21;
  v18 = *v5;
  if (v16)
  {
    goto LABEL_8;
  }

LABEL_11:
  sub_2490A2038(v12, a2, a3, a1, v18, type metadata accessor for DTSyncedAlarm, type metadata accessor for DTSyncedAlarm);
}

void sub_2490A1D30(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_2490A0A3C(a2, a3);
  v13 = v10[2];
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_15;
  }

  v16 = v11;
  v17 = v10[3];
  if (v17 >= v15 && (a4 & 1) != 0)
  {
LABEL_7:
    v18 = *v5;
    if (v16)
    {
LABEL_8:
      v19 = v18[7];
      v20 = type metadata accessor for DTSyncedTimer(0);
      sub_2490A4480(a1, v19 + *(*(v20 - 8) + 72) * v12, type metadata accessor for DTSyncedTimer);
      return;
    }

    goto LABEL_11;
  }

  if (v17 >= v15 && (a4 & 1) == 0)
  {
    sub_2490A23F4();
    goto LABEL_7;
  }

  sub_2490A1118(v15, a4 & 1);
  v21 = sub_2490A0A3C(a2, a3);
  if ((v16 & 1) != (v22 & 1))
  {
LABEL_15:
    sub_24910D57C();
    __break(1u);
    return;
  }

  v12 = v21;
  v18 = *v5;
  if (v16)
  {
    goto LABEL_8;
  }

LABEL_11:
  sub_2490A2038(v12, a2, a3, a1, v18, type metadata accessor for DTSyncedTimer, type metadata accessor for DTSyncedTimer);
}

uint64_t sub_2490A1EC4(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_2490A0AB4(a2);
  v11 = v8[2];
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_17;
  }

  v14 = v9;
  v15 = v8[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      sub_2490A264C();
      goto LABEL_7;
    }

    sub_2490A1490(v13, a3 & 1);
    v24 = sub_2490A0AB4(a2);
    if ((v14 & 1) == (v25 & 1))
    {
      v10 = v24;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    result = sub_24910D57C();
    __break(1u);
    return result;
  }

LABEL_7:
  v16 = *v4;
  if (v14)
  {
LABEL_8:
    v17 = v16[7];
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED7598, &qword_24910E890);
    v19 = *(v18 - 8);
    v20 = *(v19 + 40);
    v21 = v18;
    v22 = v17 + *(v19 + 72) * v10;

    return v20(v22, a1, v21);
  }

LABEL_13:

  return sub_2490A20E4(v10, a2, a1, v16);
}

uint64_t sub_2490A2038(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t (*a6)(void), uint64_t (*a7)(void))
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v11 = (a5[6] + 16 * a1);
  *v11 = a2;
  v11[1] = a3;
  v12 = a5[7];
  v13 = a6(0);
  result = sub_2490A43AC(a4, v12 + *(*(v13 - 8) + 72) * a1, a7);
  v15 = a5[2];
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v17;
  }

  return result;
}

uint64_t sub_2490A20E4(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  v7 = a4[7];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED7598, &qword_24910E890);
  result = (*(*(v8 - 8) + 32))(v7 + *(*(v8 - 8) + 72) * a1, a3, v8);
  v10 = a4[2];
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v12;
  }

  return result;
}

void sub_2490A219C()
{
  v1 = v0;
  v2 = type metadata accessor for DTSyncedAlarm(0);
  v31 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v30 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED7648, &qword_24910EB60);
  v4 = *v0;
  v5 = sub_24910D35C();
  v6 = v5;
  if (*(v4 + 16))
  {
    v29 = v1;
    v7 = (v5 + 64);
    v8 = v4 + 64;
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || v7 >= v8 + 8 * v9)
    {
      memmove(v7, (v4 + 64), 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v32 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = *(v4 + 64);
    v14 = -1;
    if (v12 < 64)
    {
      v14 = ~(-1 << v12);
    }

    v15 = v14 & v13;
    v16 = (v12 + 63) >> 6;
    if ((v14 & v13) != 0)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
LABEL_14:
        v20 = v17 | (v10 << 6);
        v21 = 16 * v20;
        v22 = (*(v4 + 48) + 16 * v20);
        v23 = *v22;
        v24 = v22[1];
        v25 = v30;
        v26 = *(v31 + 72) * v20;
        sub_2490A3010(*(v4 + 56) + v26, v30, type metadata accessor for DTSyncedAlarm);
        v27 = v32;
        v28 = (*(v32 + 48) + v21);
        *v28 = v23;
        v28[1] = v24;
        sub_2490A43AC(v25, *(v27 + 56) + v26, type metadata accessor for DTSyncedAlarm);
      }

      while (v15);
    }

    v18 = v10;
    while (1)
    {
      v10 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v10 >= v16)
      {

        v1 = v29;
        v6 = v32;
        goto LABEL_18;
      }

      v19 = *(v8 + 8 * v10);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }
}

void sub_2490A23F4()
{
  v1 = v0;
  v2 = type metadata accessor for DTSyncedTimer(0);
  v31 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v30 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED7650, &qword_24910EB68);
  v4 = *v0;
  v5 = sub_24910D35C();
  v6 = v5;
  if (*(v4 + 16))
  {
    v29 = v1;
    v7 = (v5 + 64);
    v8 = v4 + 64;
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || v7 >= v8 + 8 * v9)
    {
      memmove(v7, (v4 + 64), 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v32 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = *(v4 + 64);
    v14 = -1;
    if (v12 < 64)
    {
      v14 = ~(-1 << v12);
    }

    v15 = v14 & v13;
    v16 = (v12 + 63) >> 6;
    if ((v14 & v13) != 0)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
LABEL_14:
        v20 = v17 | (v10 << 6);
        v21 = 16 * v20;
        v22 = (*(v4 + 48) + 16 * v20);
        v23 = *v22;
        v24 = v22[1];
        v25 = v30;
        v26 = *(v31 + 72) * v20;
        sub_2490A3010(*(v4 + 56) + v26, v30, type metadata accessor for DTSyncedTimer);
        v27 = v32;
        v28 = (*(v32 + 48) + v21);
        *v28 = v23;
        v28[1] = v24;
        sub_2490A43AC(v25, *(v27 + 56) + v26, type metadata accessor for DTSyncedTimer);
      }

      while (v15);
    }

    v18 = v10;
    while (1)
    {
      v10 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v10 >= v16)
      {

        v1 = v29;
        v6 = v32;
        goto LABEL_18;
      }

      v19 = *(v8 + 8 * v10);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }
}

void *sub_2490A264C()
{
  v1 = v0;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED7598, &qword_24910E890);
  v31 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v28 = &v24 - v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED7690, &qword_24910EBA0);
  v3 = *v0;
  v4 = sub_24910D35C();
  v5 = v4;
  if (*(v3 + 16))
  {
    v24 = v1;
    result = (v4 + 64);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v3 + 64 + 8 * v7)
    {
      result = memmove(result, (v3 + 64), 8 * v7);
    }

    v8 = 0;
    v9 = *(v3 + 16);
    v30 = v5;
    *(v5 + 16) = v9;
    v10 = 1 << *(v3 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(v3 + 64);
    v13 = (v10 + 63) >> 6;
    v27 = v31 + 16;
    v25 = v3 + 64;
    for (i = v31 + 32; v12; result = (*(v19 + 32))(*(v23 + 56) + v20, v22, v21))
    {
      v14 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_14:
      v17 = v14 | (v8 << 6);
      v18 = *(*(v3 + 48) + 8 * v17);
      v19 = v31;
      v20 = *(v31 + 72) * v17;
      v22 = v28;
      v21 = v29;
      (*(v31 + 16))(v28, *(v3 + 56) + v20, v29);
      v23 = v30;
      *(*(v30 + 48) + 8 * v17) = v18;
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
        v5 = v30;
        goto LABEL_18;
      }

      v16 = *(v25 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }

  return result;
}

uint64_t sub_2490A28BC(uint64_t result)
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
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= v3[3] >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  v3 = sub_24909F754(isUniquelyReferenced_nonNull_native, v12, 1, v3, &qword_27EED7600, &qword_24910EB38, MEMORY[0x277CBBC78]);
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
  v8 = (v3[3] >> 1) - v3[2];
  result = sub_24910C99C();
  if (v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = v3[2];
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    v3[2] = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_2490A2A0C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2490A2B38(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2490A2A2C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EED81E0, &unk_249110E50);
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_2490A2B38(void *result, int64_t a2, char a3, void *a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED7600, &qword_24910EB38);
  v10 = *(sub_24910C99C() - 8);
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
  v15 = *(sub_24910C99C() - 8);
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

uint64_t sub_2490A2D24(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  swift_weakInit();
  *(v3 + 32) = 0;
  *(v3 + 40) = 1;
  sub_2490A561C((v3 + OBJC_IVAR____TtC23DistributedTimersDaemon12DTSyncDaemon__persistentData));
  v5 = OBJC_IVAR____TtC23DistributedTimersDaemon12DTSyncDaemon__migrateTime;
  v6 = sub_24910C48C();
  (*(*(v6 - 8) + 56))(v3 + v5, 1, 1, v6);
  *(v3 + OBJC_IVAR____TtC23DistributedTimersDaemon12DTSyncDaemon__eventContinuations) = MEMORY[0x277D84F98];
  v7 = sub_24910C37C();
  if (!v7)
  {
    v8 = [objc_allocWithZone(MEMORY[0x277CBC230]) init];
    [v8 setUseZoneWidePCS_];
    v9 = sub_24910CC8C();
    v10 = [objc_opt_self() containerWithIdentifier_];

    v11 = [v10 containerID];
    v12 = [objc_allocWithZone(MEMORY[0x277CBC218]) initWithContainerID:v11 options:v8];

    v7 = v12;
  }

  *(v3 + 24) = v7;
  swift_weakAssign();
  v13 = OBJC_IVAR____TtC23DistributedTimersDaemon12DTSyncDaemon__environment;
  v14 = sub_24910C3BC();
  (*(*(v14 - 8) + 32))(v3 + v13, a2, v14);
  return v3;
}

uint64_t sub_2490A2F0C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED75A0, &qword_24910E898);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for DTSyncDaemon(uint64_t a1)
{
  result = qword_27EED8610;
  if (!qword_27EED8610)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2490A2FC8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2490A3010(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_2490A3078()
{
  result = qword_27EED75C8;
  if (!qword_27EED75C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EED75C8);
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_0(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_2490A317C()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2490A31BC(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  v3 = sub_24910CA7C();
  v2[7] = v3;
  v2[8] = *(v3 - 8);
  v2[9] = swift_task_alloc();
  v4 = sub_24910CA5C();
  v2[10] = v4;
  v2[11] = *(v4 - 8);
  v2[12] = swift_task_alloc();
  v5 = sub_24910CAAC();
  v2[13] = v5;
  v2[14] = *(v5 - 8);
  v2[15] = swift_task_alloc();
  v6 = sub_24910C9EC();
  v2[16] = v6;
  v2[17] = *(v6 - 8);
  v2[18] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED7710, &qword_24910E8C8);
  v2[19] = swift_task_alloc();
  v7 = sub_24910C9BC();
  v2[20] = v7;
  v2[21] = *(v7 - 8);
  v2[22] = swift_task_alloc();
  v8 = sub_24910CABC();
  v2[23] = v8;
  v2[24] = *(v8 - 8);
  v2[25] = swift_task_alloc();
  v2[26] = swift_task_alloc();
  sub_2490A2FC8(&qword_27EED7578, type metadata accessor for DTSyncDaemon, &protocol conformance descriptor for DTSyncDaemon);
  v10 = sub_24910CDAC();

  return MEMORY[0x2822009F8](sub_2490A3504, v10, v9);
}

uint64_t sub_2490A3504()
{
  v97 = v0;
  if (qword_27EED82D0 != -1)
  {
    swift_once();
  }

  v1 = v0[26];
  v3 = v0[23];
  v2 = v0[24];
  v4 = v0[5];
  v91 = sub_24910C89C();
  __swift_project_value_buffer(v91, qword_27EED82D8);
  v5 = *(v2 + 16);
  v5(v1, v4, v3);
  v6 = sub_24910C87C();
  v7 = sub_24910CF5C();
  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[26];
  v11 = v0[23];
  v10 = v0[24];
  if (v8)
  {
    bufa = swift_slowAlloc();
    v94 = swift_slowAlloc();
    v96 = v94;
    *bufa = 136315138;
    sub_2490A2FC8(&qword_27EED7620, MEMORY[0x277CBBD88], MEMORY[0x277CBBD90]);
    v90 = v7;
    v12 = v5;
    v13 = sub_24910D50C();
    v15 = v14;
    v16 = *(v10 + 8);
    v16(v9, v11);
    v17 = v13;
    v5 = v12;
    v18 = sub_24909F930(v17, v15, &v96);

    *(bufa + 4) = v18;
    _os_log_impl(&dword_249083000, v6, v90, "CloudKit event: %s", bufa, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v94);
    MEMORY[0x24C1F26F0](v94, -1, -1);
    MEMORY[0x24C1F26F0](bufa, -1, -1);
  }

  else
  {

    v16 = *(v10 + 8);
    v16(v9, v11);
  }

  v20 = v0[24];
  v19 = v0[25];
  v21 = v0[23];
  v5(v19, v0[5], v21);
  v22 = (*(v20 + 88))(v19, v21);
  if (v22 == *MEMORY[0x277CBBC98])
  {
    v23 = v0[25];
    v24 = v0[22];
    v25 = v0[20];
    v26 = v0[21];
    v27 = v0[19];
    v28 = v0[6];
    (*(v0[24] + 96))(v23, v0[23]);
    (*(v26 + 32))(v24, v23, v25);
    sub_24910C9AC();
    v29 = sub_24910CACC();
    (*(*(v29 - 8) + 56))(v27, 0, 1, v29);
    v30 = v28 + OBJC_IVAR____TtC23DistributedTimersDaemon12DTSyncDaemon__persistentData;
    swift_beginAccess();
    v31 = type metadata accessor for DTSyncDaemon.PersistentData(0);
    sub_2490A48DC(v27, v30 + *(v31 + 20), &qword_27EED7710, &qword_24910E8C8);
    swift_endAccess();
    sub_24909329C();
    LOBYTE(v96) = 0;
    DTSyncDaemon._report(event:)(&v96);
    (*(v26 + 8))(v24, v25);
    goto LABEL_13;
  }

  if (v22 == *MEMORY[0x277CBBCD0])
  {
    v32 = v0[25];
    v34 = v0[17];
    v33 = v0[18];
    v35 = v0[16];
    (*(v0[24] + 96))(v32, v0[23]);
    (*(v34 + 32))(v33, v32, v35);
    sub_249096028(v33);
LABEL_12:
    (*(v34 + 8))(v33, v35);
    goto LABEL_13;
  }

  if (v22 == *MEMORY[0x277CBBD58])
  {
    v36 = v0[25];
    v34 = v0[8];
    v33 = v0[9];
    v35 = v0[7];
    (*(v0[24] + 96))(v36, v0[23]);
    (*(v34 + 32))(v33, v36, v35);
    sub_2490967C0();
    goto LABEL_12;
  }

  if (v22 == *MEMORY[0x277CBBD70])
  {
    v39 = v0[25];
    v40 = v0[14];
    v41 = v0[15];
    v42 = v0[13];
    (*(v0[24] + 96))(v39, v0[23]);
    v43 = (*(v40 + 32))(v41, v39, v42);
    v44 = MEMORY[0x24C1F14B0](v43);
    v45 = *(v44 + 16);
    if (v45)
    {
      v46 = v44;
      v95 = 0;
      v47 = *(sub_24910CECC() - 8);
      v48 = v46 + ((*(v47 + 80) + 32) & ~*(v47 + 80));
      buf = *(v47 + 72);
      while (1)
      {
        v49 = MEMORY[0x24C1F18E0]();
        v50 = sub_24910D0FC();
        v52 = v51;
        v53 = [v49 recordID];
        v54 = [v53 recordName];

        v55 = sub_24910CC9C();
        v57 = v56;

        v58 = sub_2490A86B8();
        if (v50 == *v58 && v52 == *(v58 + 1) || (sub_24910D54C() & 1) != 0)
        {

          v59.super.isa = v49;
          v60 = sub_249099438(v55, v57, v59);
        }

        else
        {
          v62 = sub_2490AF22C();
          if ((v50 != *v62 || v52 != *(v62 + 1)) && (sub_24910D54C() & 1) == 0)
          {
            if (qword_27EED82D0 != -1)
            {
              swift_once();
            }

            __swift_project_value_buffer(v91, qword_27EED82D8);

            v63 = sub_24910C87C();
            v64 = sub_24910CF5C();

            if (os_log_type_enabled(v63, v64))
            {
              log = v63;
              v65 = swift_slowAlloc();
              v89 = swift_slowAlloc();
              v96 = v89;
              *v65 = 136315394;
              v66 = sub_24909F930(v50, v52, &v96);

              *(v65 + 4) = v66;
              *(v65 + 12) = 2080;
              v67 = sub_24909F930(v55, v57, &v96);

              *(v65 + 14) = v67;
              _os_log_impl(&dword_249083000, log, v64, "Server modification: unsupported, type=%s, id=%s", v65, 0x16u);
              swift_arrayDestroy();
              MEMORY[0x24C1F26F0](v89, -1, -1);
              MEMORY[0x24C1F26F0](v65, -1, -1);
            }

            else
            {
            }

            goto LABEL_24;
          }

          v60 = sub_249099DC8(v55, v57, v49);
        }

        v61 = v60;

        v95 |= v61;
LABEL_24:
        v48 += buf;
        if (!--v45)
        {
          goto LABEL_44;
        }
      }
    }

    v95 = 0;
LABEL_44:

    v86 = MEMORY[0x24C1F14C0](v85);
    v87 = sub_249098278(v86);

    if (v95 & 1) != 0 || (v87)
    {
      sub_24909329C();
    }

    v83 = v0[14];
    v82 = v0[15];
    v84 = v0[13];
    goto LABEL_48;
  }

  if (v22 == *MEMORY[0x277CBBD28])
  {
    v68 = v0[25];
    v69 = v0[23];
  }

  else
  {
    v70 = v0[25];
    v69 = v0[23];
    if (v22 == *MEMORY[0x277CBBD40])
    {
      v72 = v0[11];
      v71 = v0[12];
      v73 = v0[10];
      (*(v0[24] + 96))(v0[25], v69);
      v74 = (*(v72 + 32))(v71, v70, v73);
      v75 = MEMORY[0x24C1F1470](v74);
      LOBYTE(v72) = sub_24909A748(v75);

      v77 = MEMORY[0x24C1F1460](v76);
      v78 = sub_24909B378(v77);

      v80 = MEMORY[0x24C1F1450](v79);
      v81 = sub_24909C2CC(v80);

      if (v72 & 1) != 0 || (v78 & 1) != 0 || (v81)
      {
        sub_24909329C();
      }

      v83 = v0[11];
      v82 = v0[12];
      v84 = v0[10];
LABEL_48:
      (*(v83 + 8))(v82, v84);
      goto LABEL_13;
    }

    v68 = v0[25];
  }

  v16(v68, v69);
LABEL_13:

  v37 = v0[1];

  return v37();
}

uint64_t sub_2490A3F18(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_24909EED8;

  return sub_249097610(a1, v5, v4);
}

unint64_t sub_2490A3FC4()
{
  result = qword_27EED75F0;
  if (!qword_27EED75F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EED75F0);
  }

  return result;
}

uint64_t sub_2490A4018(uint64_t a1)
{
  result = sub_2490A2FC8(&qword_27EED7578, type metadata accessor for DTSyncDaemon, &protocol conformance descriptor for DTSyncDaemon);
  *(a1 + 8) = result;
  return result;
}

void sub_2490A4078(uint64_t a1)
{
  sub_24910C3BC();
  if (v1 <= 0x3F)
  {
    type metadata accessor for DTSyncDaemon.PersistentData(319);
    if (v2 <= 0x3F)
    {
      sub_2490A41E0(319);
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_2490A41E0(uint64_t a1)
{
  if (!qword_27EED75F8)
  {
    sub_24910C48C();
    v1 = sub_24910D11C();
    if (!v2)
    {
      atomic_store(v1, &qword_27EED75F8);
    }
  }
}

uint64_t getEnumTagSinglePayload for DTSyncDaemon.Event(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for DTSyncDaemon.Event(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_2490A43AC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2490A4414(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2490A4474(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return v3;
}

uint64_t sub_2490A4480(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

unint64_t sub_2490A44E8()
{
  result = qword_27EED7668;
  if (!qword_27EED7668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EED7668);
  }

  return result;
}

uint64_t sub_2490A453C(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_2490A45A4()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2490A45DC()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_24908837C;

  return sub_2490955DC(v4, v2, v3);
}

uint64_t sub_2490A4674(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

unint64_t sub_2490A46DC()
{
  result = qword_27EED8180;
  if (!qword_27EED8180)
  {
    sub_2490A4744(255, &qword_27EED7B60, 0x277D85C90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EED8180);
  }

  return result;
}

uint64_t sub_2490A4744(uint64_t a1, unint64_t *a2, void *a3)
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

uint64_t sub_2490A478C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2490A47C4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2490887FC;

  return sub_249087F68(a1, v4);
}

uint64_t sub_2490A487C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_2490A48DC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t sub_2490A4944(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_2490A49A0()
{
  v1 = sub_24910C48C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_2490A4A6C()
{
  v2 = *(sub_24910C48C() - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = *(v0 + 32);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_24908837C;

  return sub_249093EA4(v5, v6, v7, v4, v0 + v3);
}

void sub_2490A4D08(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v5)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

unint64_t sub_2490A4DA0()
{
  result = qword_27EED76F8;
  if (!qword_27EED76F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EED76F8);
  }

  return result;
}

uint64_t sub_2490A4E8C()
{
  v0 = sub_24910C89C();
  __swift_allocate_value_buffer(v0, qword_27EED8AA8);
  __swift_project_value_buffer(v0, qword_27EED8AA8);
  sub_24910C58C();
  return sub_24910C88C();
}

double DTSyncDaemon.PersistentData.database.getter@<D0>(uint64_t *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;

  return result;
}

__n128 DTSyncDaemon.PersistentData.database.setter(__n128 *a1)
{

  result = *a1;
  *v1 = *a1;
  return result;
}

uint64_t DTSyncDaemon.PersistentData.stateSerialization.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for DTSyncDaemon.PersistentData(0) + 20);

  return sub_2490A4FFC(v3, a1);
}

uint64_t sub_2490A4FFC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED7710, &qword_24910E8C8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t DTSyncDaemon.PersistentData.stateSerialization.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for DTSyncDaemon.PersistentData(0) + 20);

  return sub_2490A50B0(a1, v3);
}

uint64_t sub_2490A50B0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED7710, &qword_24910E8C8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_2490A5188()
{
  if (*v0)
  {
    return 0xD000000000000012;
  }

  else
  {
    return 0x6573616261746164;
  }
}

uint64_t sub_2490A51C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6573616261746164 && a2 == 0xE800000000000000;
  if (v6 || (sub_24910D54C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000249111270 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_24910D54C();

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

uint64_t sub_2490A52C4(uint64_t a1)
{
  v2 = sub_2490A5574();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2490A5300(uint64_t a1)
{
  v2 = sub_2490A5574();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t DTSyncDaemon.PersistentData.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED7718, &qword_24910EEF0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2490A5574();
  sub_24910D64C();
  v9 = v3[1];
  v12 = *v3;
  v13 = v9;
  v11[15] = 0;
  sub_2490A55C8();

  sub_24910D4EC();

  if (!v2)
  {
    type metadata accessor for DTSyncDaemon.PersistentData(0);
    LOBYTE(v12) = 1;
    sub_24910CACC();
    sub_2490A5A5C(&qword_27EED7728, MEMORY[0x277CBBD98], MEMORY[0x277CBBDA0]);
    sub_24910D49C();
  }

  return (*(v6 + 8))(v8, v5);
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_2490A5574()
{
  result = qword_27EED8AC0;
  if (!qword_27EED8AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EED8AC0);
  }

  return result;
}

unint64_t sub_2490A55C8()
{
  result = qword_27EED7720;
  if (!qword_27EED7720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EED7720);
  }

  return result;
}

uint64_t sub_2490A561C@<X0>(char *a1@<X8>)
{
  v2 = MEMORY[0x277D84F98];
  *a1 = MEMORY[0x277D84F98];
  *(a1 + 1) = v2;
  v3 = *(type metadata accessor for DTSyncDaemon.PersistentData(0) + 20);
  v4 = sub_24910CACC();
  v5 = *(*(v4 - 8) + 56);

  return v5(&a1[v3], 1, 1, v4);
}

uint64_t DTSyncDaemon.PersistentData.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED7710, &qword_24910E8C8);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v21 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED7730, &qword_24910EEF8);
  v24 = *(v7 - 8);
  v25 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v21 - v8;
  v10 = type metadata accessor for DTSyncDaemon.PersistentData(0);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x277D84F98];
  *v13 = MEMORY[0x277D84F98];
  *(v13 + 1) = v14;
  v15 = *(v11 + 28);
  v16 = sub_24910CACC();
  (*(*(v16 - 8) + 56))(&v13[v15], 1, 1, v16);
  v17 = a1[3];
  v26 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v17);
  sub_2490A5574();
  sub_24910D63C();
  if (!v2)
  {
    v22 = v15;
    v18 = v24;
    v28 = 0;
    sub_2490A5A08();
    v19 = v25;
    sub_24910D43C();
    v21 = v27;

    *v13 = v21;
    LOBYTE(v27) = 1;
    sub_2490A5A5C(&qword_27EED7740, MEMORY[0x277CBBD98], MEMORY[0x277CBBDA8]);
    sub_24910D3EC();
    (*(v18 + 8))(v9, v19);
    sub_2490A50B0(v6, &v13[v22]);
    sub_2490B3938(v13, v23, type metadata accessor for DTSyncDaemon.PersistentData);
  }

  __swift_destroy_boxed_opaque_existential_0(v26);
  return sub_2490A4414(v13, type metadata accessor for DTSyncDaemon.PersistentData);
}

unint64_t sub_2490A5A08()
{
  result = qword_27EED7738;
  if (!qword_27EED7738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EED7738);
  }

  return result;
}

uint64_t sub_2490A5A5C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t DTSyncedDatabase.alarms.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t DTSyncedDatabase.timers.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

uint64_t sub_2490A5BA0()
{
  if (*v0)
  {
    return 0x7372656D6974;
  }

  else
  {
    return 0x736D72616C61;
  }
}

uint64_t sub_2490A5BCC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x736D72616C61 && a2 == 0xE600000000000000;
  if (v6 || (sub_24910D54C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x7372656D6974 && a2 == 0xE600000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_24910D54C();

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

uint64_t sub_2490A5CA0(uint64_t a1)
{
  v2 = sub_2490A5EF0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2490A5CDC(uint64_t a1)
{
  v2 = sub_2490A5EF0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t DTSyncedDatabase.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED7748, &qword_24910EF00);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - v6;
  v8 = *v1;
  v10 = v1[1];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2490A5EF0();

  sub_24910D64C();
  v12 = v8;
  v11 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED7750, &qword_24910EF08);
  sub_2490A5F44();
  sub_24910D4EC();

  if (!v2)
  {
    v12 = v10;
    v11 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED7768, &qword_24910EF10);
    sub_2490A6020();
    sub_24910D4EC();
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_2490A5EF0()
{
  result = qword_27EED8AC8;
  if (!qword_27EED8AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EED8AC8);
  }

  return result;
}

unint64_t sub_2490A5F44()
{
  result = qword_27EED7758;
  if (!qword_27EED7758)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EED7750, &qword_24910EF08);
    sub_2490A5A5C(&qword_27EED7760, type metadata accessor for DTSyncedAlarm, &protocol conformance descriptor for DTSyncedAlarm);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EED7758);
  }

  return result;
}

unint64_t sub_2490A6020()
{
  result = qword_27EED7770;
  if (!qword_27EED7770)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EED7768, &qword_24910EF10);
    sub_2490A5A5C(&qword_27EED7778, type metadata accessor for DTSyncedTimer, &protocol conformance descriptor for DTSyncedTimer);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EED7770);
  }

  return result;
}

uint64_t sub_2490A60FC(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t DTSyncedDatabase.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED7780, &qword_24910EF18);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v12 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2490A5EF0();
  sub_24910D63C();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED7750, &qword_24910EF08);
    v13 = 0;
    sub_2490A6368();
    sub_24910D43C();
    v10 = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED7768, &qword_24910EF10);
    v13 = 1;
    sub_2490A6424();
    sub_24910D43C();
    (*(v6 + 8))(v8, v5);
    v11 = v14;
    *a2 = v10;
    a2[1] = v11;
  }

  __swift_destroy_boxed_opaque_existential_0(a1);
}

unint64_t sub_2490A6368()
{
  result = qword_27EED7788;
  if (!qword_27EED7788)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EED7750, &qword_24910EF08);
    sub_2490A5A5C(&qword_27EED7790, type metadata accessor for DTSyncedAlarm, &protocol conformance descriptor for DTSyncedAlarm);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EED7788);
  }

  return result;
}

unint64_t sub_2490A6424()
{
  result = qword_27EED7798;
  if (!qword_27EED7798)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EED7768, &qword_24910EF10);
    sub_2490A5A5C(&qword_27EED77A0, type metadata accessor for DTSyncedTimer, &protocol conformance descriptor for DTSyncedTimer);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EED7798);
  }

  return result;
}

id sub_2490A6514()
{
  result = 0;
  v2 = *(v0 + 48);
  if (v2 >> 60 != 15)
  {
    v3 = *(v0 + 40);
    v4 = objc_allocWithZone(MEMORY[0x277CCAAC8]);
    sub_2490B3924(v3, v2);
    v5 = sub_2490B3794();
    [v5 setRequiresSecureCoding_];
    v6 = [objc_allocWithZone(MEMORY[0x277CBC5A0]) initWithCoder_];

    sub_2490B3854(v3, v2);
    return v6;
  }

  return result;
}

id sub_2490A6750()
{
  result = 0;
  v2 = *(v0 + 32);
  if (v2 >> 60 != 15)
  {
    v3 = *(v0 + 24);
    v4 = objc_allocWithZone(MEMORY[0x277CCAAC8]);
    sub_2490B3924(v3, v2);
    v5 = sub_2490B3794();
    [v5 setRequiresSecureCoding_];
    v6 = [objc_allocWithZone(MEMORY[0x277CBC5A0]) initWithCoder_];

    sub_2490B3854(v3, v2);
    return v6;
  }

  return result;
}

id DTSyncedObject.lastKnownRecord.getter(uint64_t a1, uint64_t a2)
{
  v3 = (*(a2 + 56))(a1);
  result = 0;
  if (v2 >> 60 != 15)
  {
    v5 = v2;
    v6 = objc_allocWithZone(MEMORY[0x277CCAAC8]);
    v7 = sub_2490B3794();
    [v7 setRequiresSecureCoding_];
    v8 = [objc_allocWithZone(MEMORY[0x277CBC5A0]) initWithCoder_];

    sub_2490B3854(v3, v5);
    return v8;
  }

  return result;
}

void DTSyncedObject.lastKnownRecord.setter(void *a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    v11 = [objc_allocWithZone(MEMORY[0x277CCAAB0]) initRequiringSecureCoding_];
    [a1 encodeSystemFieldsWithCoder_];
    v6 = [v11 encodedData];
    v7 = sub_24910C1DC();
    v9 = v8;

    (*(a3 + 64))(v7, v9, a2, a3);
  }

  else
  {
    v10 = *(a3 + 64);

    v10();
  }
}

uint64_t (*sub_2490A6D04(uint64_t *a1, void *a2, void *a3))()
{
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  *(v6 + 32) = DTSyncedObject.lastKnownRecord.modify(v6, a2, a3);
  return sub_2490B6480;
}

void (*sub_2490A6D8C(id *a1))(void **a1, char a2)
{
  a1[1] = v1;
  *a1 = sub_2490A6514();
  return sub_2490A6DD4;
}

void sub_2490A6DD4(void **a1, char a2)
{
  v3 = *a1;
  if (a2)
  {
    v18 = v3;
    if (v3)
    {
      v4 = objc_allocWithZone(MEMORY[0x277CCAAB0]);
      v5 = v18;
      v6 = [v4 initRequiringSecureCoding_];
      [v5 encodeSystemFieldsWithCoder_];
      v7 = [v6 encodedData];
      v8 = sub_24910C1DC();
      v10 = v9;
    }

    else
    {
      v8 = 0;
      v10 = 0xF000000000000000;
    }

    v16 = a1[1];
    sub_2490B3854(v16[5], v16[6]);
    v16[5] = v8;
    v16[6] = v10;
  }

  else
  {
    if (v3)
    {
      v19 = v3;
      v11 = [objc_allocWithZone(MEMORY[0x277CCAAB0]) initRequiringSecureCoding_];
      [v19 encodeSystemFieldsWithCoder_];
      v12 = [v11 encodedData];
      v13 = sub_24910C1DC();
      v15 = v14;
    }

    else
    {
      v13 = 0;
      v15 = 0xF000000000000000;
    }

    v17 = a1[1];
    sub_2490B3854(v17[5], v17[6]);
    v17[5] = v13;
    v17[6] = v15;
  }
}

void (*sub_2490A6F70(id *a1))(void **a1, char a2)
{
  a1[1] = v1;
  *a1 = sub_2490A6750();
  return sub_2490A6FB8;
}

void sub_2490A6FB8(void **a1, char a2)
{
  v3 = *a1;
  if (a2)
  {
    v18 = v3;
    if (v3)
    {
      v4 = objc_allocWithZone(MEMORY[0x277CCAAB0]);
      v5 = v18;
      v6 = [v4 initRequiringSecureCoding_];
      [v5 encodeSystemFieldsWithCoder_];
      v7 = [v6 encodedData];
      v8 = sub_24910C1DC();
      v10 = v9;
    }

    else
    {
      v8 = 0;
      v10 = 0xF000000000000000;
    }

    v16 = a1[1];
    sub_2490B3854(v16[3], v16[4]);
    v16[3] = v8;
    v16[4] = v10;
  }

  else
  {
    if (v3)
    {
      v19 = v3;
      v11 = [objc_allocWithZone(MEMORY[0x277CCAAB0]) initRequiringSecureCoding_];
      [v19 encodeSystemFieldsWithCoder_];
      v12 = [v11 encodedData];
      v13 = sub_24910C1DC();
      v15 = v14;
    }

    else
    {
      v13 = 0;
      v15 = 0xF000000000000000;
    }

    v17 = a1[1];
    sub_2490B3854(v17[3], v17[4]);
    v17[3] = v13;
    v17[4] = v15;
  }
}

void (*DTSyncedObject.lastKnownRecord.modify(id *a1, void *a2, void *a3))(uint64_t a1, char a2)
{
  a1[2] = a3;
  a1[3] = v3;
  a1[1] = a2;
  *a1 = DTSyncedObject.lastKnownRecord.getter(a2, a3);
  return sub_2490A71A8;
}

void sub_2490A71A8(uint64_t a1, char a2)
{
  v2 = *(a1 + 16);
  v4 = *a1;
  v3 = *(a1 + 8);
  if (a2)
  {
    v5 = v4;
    DTSyncedObject.lastKnownRecord.setter(v4, v3, v2);
  }

  else
  {
    DTSyncedObject.lastKnownRecord.setter(*a1, v3, v2);
  }
}

uint64_t sub_2490A7234(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED77A8, &unk_24910EF20);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v6 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v38 - v7;
  v9 = sub_24910C26C();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v38 - v14;
  v16 = sub_2490A6514();
  if (!v16)
  {
    (*(v10 + 56))(v8, 1, 1, v9);
LABEL_7:
    sub_2490A487C(v8, &qword_27EED77A8, &unk_24910EF20);
    v19 = objc_allocWithZone(MEMORY[0x277CCAAB0]);
    v20 = a1;
    v21 = [v19 initRequiringSecureCoding_];
    [v20 encodeSystemFieldsWithCoder_];
    v22 = [v21 encodedData];
    v23 = sub_24910C1DC();
    v25 = v24;

    result = sub_2490B3854(*(v1 + 40), *(v1 + 48));
    *(v1 + 40) = v23;
    *(v1 + 48) = v25;
    return result;
  }

  v17 = v16;
  v18 = [v16 modificationDate];

  if (v18)
  {
    sub_24910C22C();

    (*(v10 + 56))(v6, 0, 1, v9);
  }

  else
  {
    (*(v10 + 56))(v6, 1, 1, v9);
  }

  sub_2490B3868(v6, v8, &qword_27EED77A8, &unk_24910EF20);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    goto LABEL_7;
  }

  (*(v10 + 32))(v15, v8, v9);
  v27 = [a1 modificationDate];
  if (!v27)
  {
    return (*(v10 + 8))(v15, v9);
  }

  v28 = v27;
  sub_24910C22C();

  if (sub_24910C20C())
  {
    v29 = objc_allocWithZone(MEMORY[0x277CCAAB0]);
    v30 = a1;
    v31 = [v29 initRequiringSecureCoding_];
    [v30 encodeSystemFieldsWithCoder_];
    v32 = [v31 encodedData];
    v33 = sub_24910C1DC();
    v35 = v34;

    v36 = *(v10 + 8);
    v36(v13, v9);
    v36(v15, v9);
    result = sub_2490B3854(*(v1 + 40), *(v1 + 48));
    *(v1 + 40) = v33;
    *(v1 + 48) = v35;
  }

  else
  {
    v37 = *(v10 + 8);
    v37(v13, v9);
    return (v37)(v15, v9);
  }

  return result;
}

uint64_t sub_2490A7654(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED77A8, &unk_24910EF20);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v6 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v38 - v7;
  v9 = sub_24910C26C();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v38 - v14;
  v16 = sub_2490A6750();
  if (!v16)
  {
    (*(v10 + 56))(v8, 1, 1, v9);
LABEL_7:
    sub_2490A487C(v8, &qword_27EED77A8, &unk_24910EF20);
    v19 = objc_allocWithZone(MEMORY[0x277CCAAB0]);
    v20 = a1;
    v21 = [v19 initRequiringSecureCoding_];
    [v20 encodeSystemFieldsWithCoder_];
    v22 = [v21 encodedData];
    v23 = sub_24910C1DC();
    v25 = v24;

    result = sub_2490B3854(*(v1 + 24), *(v1 + 32));
    *(v1 + 24) = v23;
    *(v1 + 32) = v25;
    return result;
  }

  v17 = v16;
  v18 = [v16 modificationDate];

  if (v18)
  {
    sub_24910C22C();

    (*(v10 + 56))(v6, 0, 1, v9);
  }

  else
  {
    (*(v10 + 56))(v6, 1, 1, v9);
  }

  sub_2490B3868(v6, v8, &qword_27EED77A8, &unk_24910EF20);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    goto LABEL_7;
  }

  (*(v10 + 32))(v15, v8, v9);
  v27 = [a1 modificationDate];
  if (!v27)
  {
    return (*(v10 + 8))(v15, v9);
  }

  v28 = v27;
  sub_24910C22C();

  if (sub_24910C20C())
  {
    v29 = objc_allocWithZone(MEMORY[0x277CCAAB0]);
    v30 = a1;
    v31 = [v29 initRequiringSecureCoding_];
    [v30 encodeSystemFieldsWithCoder_];
    v32 = [v31 encodedData];
    v33 = sub_24910C1DC();
    v35 = v34;

    v36 = *(v10 + 8);
    v36(v13, v9);
    v36(v15, v9);
    result = sub_2490B3854(*(v1 + 24), *(v1 + 32));
    *(v1 + 24) = v33;
    *(v1 + 32) = v35;
  }

  else
  {
    v37 = *(v10 + 8);
    v37(v13, v9);
    return (v37)(v15, v9);
  }

  return result;
}

Swift::Void __swiftcall DTSyncedObject.setLastKnownRecordIfNewer(_:)(CKRecord a1)
{
  v3 = v2;
  v4 = v1;
  isa = a1.super.isa;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED77A8, &unk_24910EF20);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v36 - v9;
  v11 = sub_24910C26C();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v36 - v17;
  MEMORY[0x28223BE20](v16);
  v20 = &v36 - v19;
  v21 = *(v3 + 80);
  v38 = v4;
  v22 = v21(v4, v3);
  if (!v22)
  {
    (*(v12 + 56))(v10, 1, 1, v11);
LABEL_7:
    sub_2490A487C(v10, &qword_27EED77A8, &unk_24910EF20);
    v25 = *(v3 + 88);
    v26 = isa;
    v27 = isa;
    v25(v26, v38, v3);
    return;
  }

  v23 = v22;
  v37 = v18;
  v24 = [v22 modificationDate];

  if (v24)
  {
    sub_24910C22C();

    (*(v12 + 56))(v8, 0, 1, v11);
  }

  else
  {
    (*(v12 + 56))(v8, 1, 1, v11);
  }

  sub_2490B3868(v8, v10, &qword_27EED77A8, &unk_24910EF20);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    goto LABEL_7;
  }

  v28 = *(v12 + 32);
  v28(v20, v10, v11);
  v29 = isa;
  v30 = [(objc_class *)isa modificationDate];
  if (v30)
  {
    v31 = v30;
    sub_24910C22C();

    v32 = v37;
    v28(v37, v15, v11);
    if (sub_24910C20C())
    {
      v33 = *(v3 + 88);
      v34 = v29;
      v33(v29, v38, v3);
    }

    v35 = *(v12 + 8);
    v35(v32, v11);
    v35(v20, v11);
  }

  else
  {
    (*(v12 + 8))(v20, v11);
  }
}

uint64_t sub_2490A7E1C(void *a1)
{
  sub_24910BFDC();
  swift_allocObject();
  sub_24910BFCC();
  type metadata accessor for DTSyncedAlarm(0);
  sub_2490A5A5C(&qword_27EED7760, type metadata accessor for DTSyncedAlarm, &protocol conformance descriptor for DTSyncedAlarm);
  v2 = sub_24910BFBC();
  v4 = v3;

  v5 = [a1 encryptedValues];
  swift_getObjectType();
  sub_2490B38D0(v2, v4);
  sub_24910CFEC();
  sub_2490A453C(v2, v4);
  return swift_unknownObjectRelease();
}

uint64_t sub_2490A80D8(void *a1)
{
  sub_24910BFDC();
  swift_allocObject();
  sub_24910BFCC();
  type metadata accessor for DTSyncedTimer(0);
  sub_2490A5A5C(&qword_27EED7778, type metadata accessor for DTSyncedTimer, &protocol conformance descriptor for DTSyncedTimer);
  v2 = sub_24910BFBC();
  v4 = v3;

  v5 = [a1 encryptedValues];
  swift_getObjectType();
  sub_2490B38D0(v2, v4);
  sub_24910CFEC();
  sub_2490A453C(v2, v4);
  return swift_unknownObjectRelease();
}

Swift::Void __swiftcall DTSyncedObject.populateRecord(_:)(CKRecord a1)
{
  v3 = v2;
  v4 = v1;
  sub_24910BFDC();
  swift_allocObject();
  sub_24910BFCC();
  v6 = sub_24910BFBC();
  v8 = v7;

  [(objc_class *)a1.super.isa encryptedValues];
  swift_getObjectType();
  (*(v3 + 48))(v4, v3);
  sub_2490B38D0(v6, v8);
  sub_24910CFEC();
  sub_2490A453C(v6, v8);
  swift_unknownObjectRelease();
}

id sub_2490A863C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, void *a3@<X8>)
{
  result = DTSyncedObject.lastKnownRecord.getter(*(a1 + a2 - 16), *(a1 + a2 - 8));
  *a3 = result;
  return result;
}

void sub_2490A8670(id *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a3 + a4 - 16);
  v5 = *(a3 + a4 - 8);
  v6 = *a1;
  v7 = *a1;
  DTSyncedObject.lastKnownRecord.setter(v6, v4, v5);
}

uint64_t DTSyncedAlarm.id.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t DTSyncedAlarm.id.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t DTSyncedAlarm.lastKnownRecordData.getter()
{
  v1 = *(v0 + 40);
  sub_2490B3924(v1, *(v0 + 48));
  return v1;
}

uint64_t DTSyncedAlarm.lastKnownRecordData.setter(uint64_t a1, uint64_t a2)
{
  result = sub_2490B3854(*(v2 + 40), *(v2 + 48));
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return result;
}

uint64_t DTSyncedAlarm.modificationDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for DTSyncedAlarm(0) + 36);
  v4 = sub_24910C26C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t DTSyncedAlarm.modificationDate.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for DTSyncedAlarm(0) + 36);
  v4 = sub_24910C26C();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

double DTSyncedAlarm.repeatSchedule.getter()
{
  type metadata accessor for DTSyncedAlarm(0);

  return result;
}

uint64_t DTSyncedAlarm.repeatSchedule.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for DTSyncedAlarm(0) + 40);

  *(v1 + v3) = a1;
  return result;
}

double DTSyncedAlarm.sound.getter@<D0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for DTSyncedAlarm(0) + 44);
  v4 = *(v3 + 24);
  *a1 = *v3;
  *(a1 + 8) = *(v3 + 8);
  *(a1 + 24) = v4;

  return result;
}

__n128 DTSyncedAlarm.sound.setter(__n128 *a1)
{
  v6 = *a1;
  v2 = a1[1].n128_u64[0];
  v3 = a1[1].n128_u8[8];
  v4 = (v1 + *(type metadata accessor for DTSyncedAlarm(0) + 44));

  result = v6;
  *v4 = v6;
  v4[1].n128_u64[0] = v2;
  v4[1].n128_u8[8] = v3;
  return result;
}

uint64_t DTSyncedAlarm.targetIdentifier.getter()
{
  v1 = *(v0 + *(type metadata accessor for DTSyncedAlarm(0) + 48));

  return v1;
}

uint64_t DTSyncedAlarm.targetIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for DTSyncedAlarm(0) + 48));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t DTSyncedAlarm.title.getter()
{
  v1 = *(v0 + *(type metadata accessor for DTSyncedAlarm(0) + 52));

  return v1;
}

uint64_t DTSyncedAlarm.title.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for DTSyncedAlarm(0) + 52));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t DTSyncedAlarm.init(id:hour:minute:modificationDate:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = sub_24910C2FC();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24910C2EC();
  sub_24910C28C();
  (*(v13 + 8))(v15, v12);
  *(a6 + 16) = 1;
  *(a6 + 40) = xmmword_24910EEA0;
  v16 = type metadata accessor for DTSyncedAlarm(0);
  v17 = v16[9];
  sub_24910C1FC();
  v18 = v16[10];

  *(a6 + v18) = MEMORY[0x277D84FA0];
  v19 = a6 + v16[11];
  *v19 = 0;
  *(v19 + 8) = 0;
  *(v19 + 24) = 0;
  *(v19 + 16) = 0;
  v20 = (a6 + v16[12]);
  *v20 = 0;
  v20[1] = 0;
  v21 = (a6 + v16[13]);
  *v21 = 0;
  v21[1] = 0;
  *a6 = a1;
  *(a6 + 8) = a2;
  *(a6 + 24) = a3;
  *(a6 + 32) = a4;
  v22 = sub_24910C26C();
  return (*(*(v22 - 8) + 40))(a6 + v17, a5, v22);
}

void DTSyncedAlarm.init(mtAlarm:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v108 = a2;
  v107 = sub_24910C26C();
  v4 = *(v107 - 1);
  MEMORY[0x28223BE20](v107);
  v6 = &v102 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_24910C2FC();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v102 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24910C2EC();
  sub_24910C28C();
  (*(v8 + 8))(v10, v7);
  *(a2 + 40) = xmmword_24910EEA0;
  v11 = type metadata accessor for DTSyncedAlarm(0);
  v12 = v11[9];
  sub_24910C1FC();
  v13 = v11[10];
  v14 = MEMORY[0x277D84FA0];
  v104 = v11;
  v105 = v13;
  *(a2 + v13) = MEMORY[0x277D84FA0];
  v15 = a2 + v11[11];
  *v15 = 0;
  *(v15 + 8) = 0;
  *(v15 + 24) = 0;
  v103 = v15;
  *(v15 + 16) = 0;
  v16 = [a1 alarmIDString];
  v17 = sub_24910CC9C();
  v19 = v18;

  *a2 = v17;
  *(a2 + 8) = v19;
  *(a2 + 16) = [a1 isEnabled];
  *(a2 + 24) = [a1 hour];
  *(a2 + 32) = [a1 minute];
  sub_24910C23C();
  (*(v4 + 40))(a2 + v12, v6, v107);
  v107 = a1;
  v20 = [a1 repeatSchedule];
  if (v20)
  {
    sub_24910D60C();
    sub_24910CCCC();
    v21 = sub_24910D62C();
    v22 = -1 << *(v14 + 32);
    v23 = v21 & ~v22;
    if ((*(v14 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v23))
    {
      v24 = ~v22;
      while (*(*(v14 + 48) + v23) > 3u || *(*(v14 + 48) + v23))
      {
        v25 = sub_24910D54C();

        if (v25)
        {
          goto LABEL_12;
        }

        v23 = (v23 + 1) & v24;
        if (((*(v14 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v23) & 1) == 0)
        {
          goto LABEL_11;
        }
      }

      v14 = MEMORY[0x277D84FA0];
    }

    else
    {
LABEL_11:
      v26 = v108;
      v27 = v105;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v109 = *(v26 + v27);
      sub_2490B293C(0, v23, isUniquelyReferenced_nonNull_native);
      v14 = v109;
      *(v26 + v27) = v109;
    }
  }

LABEL_12:
  v106 = v20;
  if ((v20 & 2) != 0)
  {
    sub_24910D60C();
    sub_24910CCCC();
    v29 = sub_24910D62C();
    v30 = -1 << *(v14 + 32);
    v31 = v29 & ~v30;
    if ((*(v14 + 56 + ((v31 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v31))
    {
      v32 = ~v30;
      while (*(*(v14 + 48) + v31) >= 2u || !*(*(v14 + 48) + v31))
      {
        v33 = sub_24910D54C();

        if (v33)
        {
          goto LABEL_26;
        }

        v31 = (v31 + 1) & v32;
        if (((*(v14 + 56 + ((v31 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v31) & 1) == 0)
        {
          goto LABEL_25;
        }
      }
    }

    else
    {
LABEL_25:
      v34 = v108;
      v35 = v105;
      v36 = swift_isUniquelyReferenced_nonNull_native();
      v109 = *(v34 + v35);
      sub_2490B293C(1, v31, v36);
      v14 = v109;
      *(v34 + v35) = v109;
    }

LABEL_26:
    LOBYTE(v20) = v106;
    if ((v106 & 4) == 0)
    {
LABEL_14:
      if ((v20 & 8) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_38;
    }
  }

  else if ((v20 & 4) == 0)
  {
    goto LABEL_14;
  }

  sub_24910D60C();
  sub_24910CCCC();
  v37 = sub_24910D62C();
  v38 = -1 << *(v14 + 32);
  v39 = v37 & ~v38;
  if ((*(v14 + 56 + ((v39 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v39))
  {
    v40 = ~v38;
    while (*(*(v14 + 48) + v39) > 3u || *(*(v14 + 48) + v39) <= 1u || *(*(v14 + 48) + v39) == 3)
    {
      v41 = sub_24910D54C();

      if (v41)
      {
        goto LABEL_37;
      }

      v39 = (v39 + 1) & v40;
      if (((*(v14 + 56 + ((v39 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v39) & 1) == 0)
      {
        goto LABEL_36;
      }
    }
  }

  else
  {
LABEL_36:
    v42 = v108;
    v43 = v105;
    v44 = swift_isUniquelyReferenced_nonNull_native();
    v109 = *(v42 + v43);
    sub_2490B293C(2, v39, v44);
    v14 = v109;
    *(v42 + v43) = v109;
  }

LABEL_37:
  LOBYTE(v20) = v106;
  if ((v106 & 8) == 0)
  {
LABEL_15:
    if ((v20 & 0x10) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_46;
  }

LABEL_38:
  sub_24910D60C();
  sub_24910CCCC();
  v45 = sub_24910D62C();
  v46 = -1 << *(v14 + 32);
  v47 = v45 & ~v46;
  if ((*(v14 + 56 + ((v47 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v47))
  {
    v48 = ~v46;
    while (*(*(v14 + 48) + v47) != 3)
    {
      v49 = sub_24910D54C();

      if (v49)
      {
        goto LABEL_45;
      }

      v47 = (v47 + 1) & v48;
      if (((*(v14 + 56 + ((v47 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v47) & 1) == 0)
      {
        goto LABEL_44;
      }
    }
  }

  else
  {
LABEL_44:
    v50 = v108;
    v51 = v105;
    v52 = swift_isUniquelyReferenced_nonNull_native();
    v109 = *(v50 + v51);
    sub_2490B293C(3, v47, v52);
    v14 = v109;
    *(v50 + v51) = v109;
  }

LABEL_45:
  LOBYTE(v20) = v106;
  if ((v106 & 0x10) == 0)
  {
LABEL_16:
    if ((v20 & 0x20) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_57;
  }

LABEL_46:
  sub_24910D60C();
  sub_24910CCCC();
  v53 = sub_24910D62C();
  v54 = -1 << *(v14 + 32);
  v55 = v53 & ~v54;
  if ((*(v14 + 56 + ((v55 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v55))
  {
    v56 = ~v54;
    while (*(*(v14 + 48) + v55) <= 2u || *(*(v14 + 48) + v55) > 4u || *(*(v14 + 48) + v55) == 3)
    {
      v57 = sub_24910D54C();

      if (v57)
      {
        goto LABEL_56;
      }

      v55 = (v55 + 1) & v56;
      if (((*(v14 + 56 + ((v55 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v55) & 1) == 0)
      {
        goto LABEL_55;
      }
    }
  }

  else
  {
LABEL_55:
    v58 = v108;
    v59 = v105;
    v60 = swift_isUniquelyReferenced_nonNull_native();
    v109 = *(v58 + v59);
    sub_2490B293C(4, v55, v60);
    v14 = v109;
    *(v58 + v59) = v109;
  }

LABEL_56:
  LOBYTE(v20) = v106;
  if ((v106 & 0x20) == 0)
  {
LABEL_17:
    if ((v20 & 0x40) == 0)
    {
      goto LABEL_71;
    }

    goto LABEL_65;
  }

LABEL_57:
  sub_24910D60C();
  sub_24910CCCC();
  v61 = sub_24910D62C();
  v62 = -1 << *(v14 + 32);
  v63 = v61 & ~v62;
  if ((*(v14 + 56 + ((v63 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v63))
  {
    v64 = ~v62;
    while (*(*(v14 + 48) + v63) <= 4u || *(*(v14 + 48) + v63) == 6)
    {
      v65 = sub_24910D54C();

      if (v65)
      {
        goto LABEL_64;
      }

      v63 = (v63 + 1) & v64;
      if (((*(v14 + 56 + ((v63 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v63) & 1) == 0)
      {
        goto LABEL_63;
      }
    }
  }

  else
  {
LABEL_63:
    v66 = v108;
    v67 = v105;
    v68 = swift_isUniquelyReferenced_nonNull_native();
    v109 = *(v66 + v67);
    sub_2490B293C(5, v63, v68);
    v14 = v109;
    *(v66 + v67) = v109;
  }

LABEL_64:
  if ((v106 & 0x40) != 0)
  {
LABEL_65:
    sub_24910D60C();
    sub_24910CCCC();
    v69 = sub_24910D62C();
    v70 = -1 << *(v14 + 32);
    v71 = v69 & ~v70;
    if ((*(v14 + 56 + ((v71 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v71))
    {
      v72 = ~v70;
      while (*(*(v14 + 48) + v71) <= 5u)
      {
        v73 = sub_24910D54C();

        if (v73)
        {
          goto LABEL_71;
        }

        v71 = (v71 + 1) & v72;
        if (((*(v14 + 56 + ((v71 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v71) & 1) == 0)
        {
          goto LABEL_70;
        }
      }
    }

    else
    {
LABEL_70:
      v74 = v108;
      v75 = v105;
      v76 = swift_isUniquelyReferenced_nonNull_native();
      v109 = *(v74 + v75);
      sub_2490B293C(6, v71, v76);
      *(v74 + v75) = v109;
    }
  }

LABEL_71:
  v77 = [v107 title];
  if (v77)
  {
    v78 = v77;
    v79 = sub_24910CC9C();
    v81 = v80;
  }

  else
  {
    v79 = 0;
    v81 = 0;
  }

  v82 = v104;
  v83 = v107;
  v84 = (v108 + v104[13]);
  *v84 = v79;
  v84[1] = v81;
  v85 = [v83 sound];
  if ([v85 soundType] == 2)
  {
    v86 = [v85 toneIdentifier];
    if (v86)
    {
      v87 = v86;
      v88 = sub_24910CC9C();
      v90 = v89;

      if (sub_24910CCDC() > 19999)
      {
      }

      else
      {
        v91 = [v85 soundVolume];
        if (v91)
        {
          v92 = v91;
          [v91 doubleValue];
          v94 = v93;

          v95 = v103;

          *v95 = v88;
          *(v95 + 8) = v90;
          *(v95 + 16) = v94;
          *(v95 + 24) = 0;
        }

        else
        {
          v96 = v103;

          *v96 = v88;
          *(v96 + 8) = v90;
          *(v96 + 16) = 0;
          *(v96 + 24) = 1;
        }
      }
    }
  }

  v97 = v107;
  v98 = (v108 + v82[12]);
  v99 = sub_24910D0AC();
  v101 = v100;

  *v98 = v99;
  v98[1] = v101;
}

DistributedTimersDaemon::DTSyncedAlarm::Sound::MediaInfo __swiftcall DTSyncedAlarm.Sound.MediaInfo.init(mediaIdentifier:volume:)(Swift::String mediaIdentifier, Swift::Double_optional volume)
{
  *v3 = mediaIdentifier;
  *(v3 + 16) = *&volume.is_nil;
  *(v3 + 24) = v2 & 1;
  result.mediaIdentifier = mediaIdentifier;
  result.volume.value = volume.value;
  result.volume.is_nil = volume.is_nil;
  return result;
}

uint64_t DTSyncedAlarm.description.getter()
{
  v42 = sub_24910C3EC();
  v40 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v49 = 0;
  v50 = 0xE000000000000000;
  v43 = &v38 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24910C3CC();
  v2 = 0;
  v39 = type metadata accessor for DTSyncedAlarm(0);
  v3 = *(v39 + 40);
  v41 = v0;
  v4 = *(v0 + v3);
  v5 = v4 + 56;
  while (2)
  {
    if (!*(v4 + 16))
    {
      goto LABEL_5;
    }

    v6 = &unk_285C1EDE8 + 24 * v2;
    v7 = *(v6 + 5);
    v44 = *(v6 + 4);
    v8 = v6[48];
    sub_24910D60C();
    v45 = v7;

    sub_24910CCCC();

    v9 = sub_24910D62C();
    v10 = -1 << *(v4 + 32);
    v11 = v9 & ~v10;
    if (((*(v5 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
    {
      goto LABEL_4;
    }

    v12 = ~v10;
    while (1)
    {
      v13 = *(*(v4 + 48) + v11);
      if (v13 <= 2)
      {
        break;
      }

      if (*(*(v4 + 48) + v11) <= 4u)
      {
        if (v13 == 3)
        {
          v14 = 0xE800000000000000;
          v15 = 0x647372756874;
          goto LABEL_32;
        }

        v14 = 0xE600000000000000;
        v19 = 1684632166;
        goto LABEL_38;
      }

      if (v13 == 5)
      {
        v14 = 0xE800000000000000;
        v15 = 0x647275746173;
LABEL_32:
        v16 = v15 & 0xFFFFFFFFFFFFLL | 0x7961000000000000;
        if (v8 > 2)
        {
          goto LABEL_39;
        }

        goto LABEL_21;
      }

      v16 = 0x7961646E7573;
      v14 = 0xE600000000000000;
      if (v8 > 2)
      {
        goto LABEL_39;
      }

LABEL_21:
      if (v8)
      {
        if (v8 == 1)
        {
          v17 = 0x79616473657574;
        }

        else
        {
          v17 = 0x616473656E646577;
        }

        if (v8 == 1)
        {
          v18 = 0xE700000000000000;
        }

        else
        {
          v18 = 0xE900000000000079;
        }

        if (v16 == v17)
        {
          goto LABEL_52;
        }
      }

      else
      {
        v18 = 0xE600000000000000;
        if (v16 == 0x7961646E6F6DLL)
        {
          goto LABEL_52;
        }
      }

LABEL_53:
      v25 = sub_24910D54C();

      if (v25)
      {
        goto LABEL_3;
      }

      v11 = (v11 + 1) & v12;
      if (((*(v5 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_4;
      }
    }

    if (!*(*(v4 + 48) + v11))
    {
      v14 = 0xE600000000000000;
      v19 = 1684959085;
LABEL_38:
      v16 = v19 & 0xFFFF0000FFFFFFFFLL | 0x796100000000;
      if (v8 > 2)
      {
        goto LABEL_39;
      }

      goto LABEL_21;
    }

    if (v13 == 1)
    {
      v16 = 0x79616473657574;
    }

    else
    {
      v16 = 0x616473656E646577;
    }

    if (v13 == 1)
    {
      v14 = 0xE700000000000000;
    }

    else
    {
      v14 = 0xE900000000000079;
    }

    if (v8 <= 2)
    {
      goto LABEL_21;
    }

LABEL_39:
    v20 = 0x7961646E7573;
    if (v8 == 5)
    {
      v20 = 0x7961647275746173;
      v21 = 0xE800000000000000;
    }

    else
    {
      v21 = 0xE600000000000000;
    }

    v22 = 0x7961647372756874;
    if (v8 == 3)
    {
      v23 = 0xE800000000000000;
    }

    else
    {
      v22 = 0x796164697266;
      v23 = 0xE600000000000000;
    }

    if (v8 <= 4)
    {
      v24 = v22;
    }

    else
    {
      v24 = v20;
    }

    if (v8 <= 4)
    {
      v18 = v23;
    }

    else
    {
      v18 = v21;
    }

    if (v16 != v24)
    {
      goto LABEL_53;
    }

LABEL_52:
    if (v14 != v18)
    {
      goto LABEL_53;
    }

LABEL_3:
    sub_24910CCBC();
LABEL_4:

LABEL_5:
    if (++v2 != 7)
    {
      continue;
    }

    break;
  }

  v47 = 0;
  v48 = 0xE000000000000000;
  sub_24910D25C();
  MEMORY[0x24C1F1710](4023401, 0xE300000000000000);
  v26 = v41;
  MEMORY[0x24C1F1710](*v41, v41[1]);
  MEMORY[0x24C1F1710](0x656C62616E65202CLL, 0xEA00000000003D64);
  if (*(v26 + 16))
  {
    v27 = 1702195828;
  }

  else
  {
    v27 = 0x65736C6166;
  }

  if (*(v26 + 16))
  {
    v28 = 0xE400000000000000;
  }

  else
  {
    v28 = 0xE500000000000000;
  }

  MEMORY[0x24C1F1710](v27, v28);

  MEMORY[0x24C1F1710](0x3D656D6974202CLL, 0xE700000000000000);
  *&v46 = v26[3];
  v29 = sub_24910D50C();
  MEMORY[0x24C1F1710](v29);

  MEMORY[0x24C1F1710](58, 0xE100000000000000);
  *&v46 = v26[4];
  v30 = sub_24910D50C();
  MEMORY[0x24C1F1710](v30);

  MEMORY[0x24C1F1710](0x3D657461646D202CLL, 0xE800000000000000);
  v31 = v39;
  v32 = sub_24910C25C();
  MEMORY[0x24C1F1710](v32);

  MEMORY[0x24C1F1710](0x746165706572202CLL, 0xEA00000000005B3DLL);
  MEMORY[0x24C1F1710](v49, v50);

  MEMORY[0x24C1F1710](0x646E756F73202C5DLL, 0xE90000000000003DLL);
  v33 = *(v26 + v31[11] + 8);
  if (v33)
  {
    v34 = 1702195828;
  }

  else
  {
    v34 = 0x65736C6166;
  }

  if (v33)
  {
    v35 = 0xE400000000000000;
  }

  else
  {
    v35 = 0xE500000000000000;
  }

  MEMORY[0x24C1F1710](v34, v35);

  MEMORY[0x24C1F1710](0x746567726174202CLL, 0xE90000000000003DLL);
  v46 = *(v26 + v31[12]);
  sub_24910D52C();
  MEMORY[0x24C1F1710](0x3D656C746974202CLL, 0xE800000000000000);
  v46 = *(v26 + v31[13]);
  sub_24910D52C();
  v36 = v47;
  (*(v40 + 8))(v43, v42);
  return v36;
}

Swift::Bool __swiftcall DTSyncedAlarm.mergeFromServerRecord(_:)(CKRecord a1)
{
  v2 = v1;
  v4 = sub_24910C26C();
  v81 = *(v4 - 8);
  v82 = v4;
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v75 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v83 = &v75 - v8;
  v9 = type metadata accessor for DTSyncedAlarm(0);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v75 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v75 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v75 - v16;
  v18 = *(v2 + 8);
  v84 = *v2;
  v19 = [(objc_class *)a1.super.isa encryptedValues];
  v20 = sub_24910CC8C();
  v21 = [v19 objectForKeyedSubscript_];
  swift_unknownObjectRelease();

  if (!v21 || (v85[2] = v21, __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED7820, &qword_24910EF30), (swift_dynamicCast() & 1) == 0))
  {
    if (qword_27EED8AA0 != -1)
    {
      swift_once();
    }

    v24 = sub_24910C89C();
    __swift_project_value_buffer(v24, qword_27EED8AA8);

    v25 = sub_24910C87C();
    v26 = sub_24910CF4C();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v85[0] = v28;
      *v27 = 136315138;
      v29 = sub_24909F930(v84, v18, v85);

      *(v27 + 4) = v29;
      _os_log_impl(&dword_249083000, v25, v26, "No server alarm data: id=%s", v27, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v28);
      MEMORY[0x24C1F26F0](v28, -1, -1);
      MEMORY[0x24C1F26F0](v27, -1, -1);
    }

    else
    {
    }

    return 0;
  }

  v22 = v85[0];
  v23 = v85[1];
  sub_24910BFAC();
  swift_allocObject();
  sub_24910BF9C();
  sub_2490A5A5C(&qword_27EED7790, type metadata accessor for DTSyncedAlarm, &protocol conformance descriptor for DTSyncedAlarm);
  v80 = v22;
  sub_24910BF8C();
  v75 = v7;
  v79 = v23;

  sub_2490B4644(v15, v17, type metadata accessor for DTSyncedAlarm);
  v31 = v9[9];
  v33 = v81;
  v32 = v82;
  v78 = *(v81 + 16);
  v78(v83, v31 + v2, v82);
  v34 = v9[9];
  sub_2490A5A5C(&qword_27EED7828, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
  v76 = v31;
  v77 = v34;
  v35 = sub_24910CC6C();
  if ((v35 & 1) == 0)
  {
    if (qword_27EED8AA0 != -1)
    {
      swift_once();
    }

    v52 = sub_24910C89C();
    __swift_project_value_buffer(v52, qword_27EED8AA8);
    v53 = v75;
    v54 = v82;
    v55 = v83;
    v78(v75, v83, v82);
    sub_2490B3938(v17, v12, type metadata accessor for DTSyncedAlarm);

    v56 = sub_24910C87C();
    v57 = sub_24910CF2C();

    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      v78 = v17;
      v59 = v54;
      v60 = v58;
      v77 = swift_slowAlloc();
      v85[0] = v77;
      *v60 = 136315650;
      *(v60 + 4) = sub_24909F930(v84, v18, v85);
      *(v60 + 12) = 2080;
      sub_2490A5A5C(&qword_27EED7830, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
      LODWORD(v84) = v57;
      v61 = sub_24910D50C();
      v63 = v62;
      v76 = v56;
      v64 = *(v81 + 8);
      v64(v53, v59);
      v65 = sub_24909F930(v61, v63, v85);

      *(v60 + 14) = v65;
      *(v60 + 22) = 2080;
      v66 = v59;
      v67 = sub_24910D50C();
      v69 = v68;
      sub_2490A4414(v12, type metadata accessor for DTSyncedAlarm);
      v70 = sub_24909F930(v67, v69, v85);

      *(v60 + 24) = v70;
      v71 = v76;
      _os_log_impl(&dword_249083000, v76, v84, "Ignoring older alarm: id=%s, localDate=%s, serverDate=%s", v60, 0x20u);
      v72 = v77;
      swift_arrayDestroy();
      MEMORY[0x24C1F26F0](v72, -1, -1);
      MEMORY[0x24C1F26F0](v60, -1, -1);
      sub_2490A453C(v80, v79);

      v64(v83, v66);
      v73 = v78;
    }

    else
    {
      sub_2490A453C(v80, v79);

      sub_2490A4414(v12, type metadata accessor for DTSyncedAlarm);
      v74 = *(v81 + 8);
      v74(v53, v54);
      v74(v55, v54);
      v73 = v17;
    }

    sub_2490A4414(v73, type metadata accessor for DTSyncedAlarm);
    return 0;
  }

  (*(v33 + 8))(v83, v32);
  sub_2490A453C(v80, v79);
  *(v2 + 16) = v17[16];
  *(v2 + 24) = *(v17 + 24);
  (*(v33 + 24))(v76 + v2, &v17[v77], v32);
  v36 = v9[10];
  v37 = *&v17[v36];

  *(v2 + v36) = v37;
  v38 = v9[11];
  v40 = *&v17[v38];
  v39 = *&v17[v38 + 8];
  v41 = *&v17[v38 + 16];
  v42 = v17[v38 + 24];
  v43 = v2 + v38;

  *v43 = v40;
  *(v43 + 8) = v39;
  *(v43 + 16) = v41;
  *(v43 + 24) = v42;
  v44 = v9[12];
  v46 = *&v17[v44];
  v45 = *&v17[v44 + 8];
  v47 = (v2 + v44);

  *v47 = v46;
  v47[1] = v45;
  v48 = &v17[v9[13]];
  v50 = *v48;
  v49 = *(v48 + 1);

  sub_2490A4414(v17, type metadata accessor for DTSyncedAlarm);
  v51 = (v2 + v9[13]);

  *v51 = v50;
  v51[1] = v49;
  return 1;
}

unint64_t sub_2490AAF44(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0x646E756F73;
    v6 = 0xD000000000000010;
    if (a1 != 8)
    {
      v6 = 0x656C746974;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 0xD000000000000010;
    if (a1 != 5)
    {
      v7 = 0x6353746165706572;
    }

    if (a1 <= 6u)
    {
      return v7;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 25705;
    v2 = 1920298856;
    v3 = 0x6574756E696DLL;
    if (a1 != 3)
    {
      v3 = 0xD000000000000013;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 0x64656C62616E65;
    }

    if (a1 <= 1u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_2490AB07C(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = sub_2490AAF44(*a1);
  v5 = v4;
  if (v3 == sub_2490AAF44(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_24910D54C();
  }

  return v8 & 1;
}

uint64_t sub_2490AB104(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x6E776F6E6B6E75;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x646573756170;
    }

    else
    {
      v4 = 0x676E696E6E7572;
    }

    if (v3 == 2)
    {
      v5 = 0xE600000000000000;
    }

    else
    {
      v5 = 0xE700000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x646570706F7473;
    }

    else
    {
      v4 = 0x6E776F6E6B6E75;
    }

    v5 = 0xE700000000000000;
  }

  v6 = 0xE600000000000000;
  v7 = 0x646573756170;
  if (a2 != 2)
  {
    v7 = 0x676E696E6E7572;
    v6 = 0xE700000000000000;
  }

  if (a2)
  {
    v2 = 0x646570706F7473;
  }

  if (a2 <= 1u)
  {
    v8 = v2;
  }

  else
  {
    v8 = v7;
  }

  if (a2 <= 1u)
  {
    v9 = 0xE700000000000000;
  }

  else
  {
    v9 = v6;
  }

  if (v4 == v8 && v5 == v9)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_24910D54C();
  }

  return v10 & 1;
}

uint64_t sub_2490AB23C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE200000000000000;
  v4 = 25705;
  v5 = 0x80000002491111C0;
  v6 = 0x656C746974;
  if (a1 == 5)
  {
    v6 = 0xD000000000000010;
  }

  else
  {
    v5 = 0xE500000000000000;
  }

  v7 = 0x8000000249111190;
  v8 = 0x6574617473;
  if (v2 == 3)
  {
    v8 = 0xD000000000000010;
  }

  else
  {
    v7 = 0xE500000000000000;
  }

  if (v2 > 4)
  {
    v7 = v5;
  }

  else
  {
    v6 = v8;
  }

  v9 = 0xE800000000000000;
  v10 = 0xD000000000000013;
  if (v2 == 1)
  {
    v10 = 0x6E6F697461727564;
  }

  else
  {
    v9 = 0x8000000249111170;
  }

  if (v2)
  {
    v4 = v10;
    v3 = v9;
  }

  if (v2 <= 2)
  {
    v11 = v4;
  }

  else
  {
    v11 = v6;
  }

  if (v2 <= 2)
  {
    v12 = v3;
  }

  else
  {
    v12 = v7;
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v13 = 0xE800000000000000;
        if (v11 != 0x6E6F697461727564)
        {
          goto LABEL_42;
        }
      }

      else
      {
        v13 = 0x8000000249111170;
        if (v11 != 0xD000000000000013)
        {
          goto LABEL_42;
        }
      }
    }

    else
    {
      v13 = 0xE200000000000000;
      if (v11 != 25705)
      {
        goto LABEL_42;
      }
    }

    goto LABEL_40;
  }

  if (a2 > 4u)
  {
    if (a2 == 5)
    {
      v13 = 0x80000002491111C0;
      if (v11 != 0xD000000000000010)
      {
        goto LABEL_42;
      }

      goto LABEL_40;
    }

    v13 = 0xE500000000000000;
    v14 = 1819568500;
  }

  else
  {
    if (a2 == 3)
    {
      v13 = 0x8000000249111190;
      if (v11 != 0xD000000000000010)
      {
        goto LABEL_42;
      }

      goto LABEL_40;
    }

    v13 = 0xE500000000000000;
    v14 = 1952543859;
  }

  if (v11 != (v14 & 0xFFFF0000FFFFFFFFLL | 0x6500000000))
  {
LABEL_42:
    v15 = sub_24910D54C();
    goto LABEL_43;
  }

LABEL_40:
  if (v12 != v13)
  {
    goto LABEL_42;
  }

  v15 = 1;
LABEL_43:

  return v15 & 1;
}

uint64_t sub_2490AB43C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x7961646E6F6DLL;
  v3 = a1;
  v4 = 0xE600000000000000;
  v5 = 0xE800000000000000;
  v6 = 0x7961647275746173;
  if (a1 != 5)
  {
    v6 = 0x7961646E7573;
    v5 = 0xE600000000000000;
  }

  v7 = 0xE800000000000000;
  v8 = 0x7961647372756874;
  if (a1 != 3)
  {
    v8 = 0x796164697266;
    v7 = 0xE600000000000000;
  }

  if (a1 <= 4u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE700000000000000;
  v10 = 0x79616473657574;
  if (a1 != 1)
  {
    v10 = 0x616473656E646577;
    v9 = 0xE900000000000079;
  }

  if (a1)
  {
    v4 = v9;
  }

  else
  {
    v10 = 0x7961646E6F6DLL;
  }

  if (a1 <= 2u)
  {
    v11 = v10;
  }

  else
  {
    v11 = v6;
  }

  if (v3 <= 2)
  {
    v12 = v4;
  }

  else
  {
    v12 = v5;
  }

  if (a2 > 2u)
  {
    if (a2 <= 4u)
    {
      if (a2 == 3)
      {
        v13 = 0xE800000000000000;
        v2 = 0x7961647372756874;
      }

      else
      {
        v13 = 0xE600000000000000;
        v2 = 0x796164697266;
      }

      goto LABEL_31;
    }

    if (a2 == 5)
    {
      v13 = 0xE800000000000000;
      v2 = 0x7961647275746173;
      goto LABEL_31;
    }

    v2 = 0x7961646E7573;
LABEL_30:
    v13 = 0xE600000000000000;
    goto LABEL_31;
  }

  if (!a2)
  {
    goto LABEL_30;
  }

  if (a2 == 1)
  {
    v13 = 0xE700000000000000;
    v2 = 0x79616473657574;
  }

  else
  {
    v2 = 0x616473656E646577;
    v13 = 0xE900000000000079;
  }

LABEL_31:
  if (v11 == v2 && v12 == v13)
  {
    v14 = 1;
  }

  else
  {
    v14 = sub_24910D54C();
  }

  return v14 & 1;
}

uint64_t sub_2490AB618()
{
  v1 = *v0;
  sub_24910D60C();
  sub_2490AAF44(v1);
  sub_24910CCCC();

  return sub_24910D62C();
}

uint64_t sub_2490AB67C(uint64_t a1)
{
  sub_2490AAF44(*v1);
  sub_24910CCCC();
}

uint64_t sub_2490AB6D0(uint64_t a1)
{
  v2 = *v1;
  sub_24910D60C();
  sub_2490AAF44(v2);
  sub_24910CCCC();

  return sub_24910D62C();
}

uint64_t sub_2490AB730(uint64_t a1, unsigned __int8 a2)
{
  sub_24910D60C();
  sub_24910CCCC();

  return sub_24910D62C();
}

uint64_t sub_2490AB844(uint64_t a1, unsigned __int8 a2)
{
  sub_24910D60C();
  sub_24910CCCC();

  return sub_24910D62C();
}

unint64_t sub_2490AB95C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_2490B412C(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_2490AB98C@<X0>(unint64_t *a1@<X8>)
{
  result = sub_2490AAF44(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_2490AB9D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2490B412C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2490ABA08(uint64_t a1)
{
  v2 = sub_2490B431C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2490ABA44(uint64_t a1)
{
  v2 = sub_2490B431C();

  return MEMORY[0x2821FE720](a1, v2);
}

DistributedTimersDaemon::DTSyncedAlarm::Day_optional __swiftcall DTSyncedAlarm.Day.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_24910D38C();

  v5 = 7;
  if (v3 < 7)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t DTSyncedAlarm.Day.rawValue.getter()
{
  v1 = 0x7961646E6F6DLL;
  v2 = *v0;
  v3 = 0x7961647275746173;
  if (v2 != 5)
  {
    v3 = 0x7961646E7573;
  }

  v4 = 0x7961647372756874;
  if (v2 != 3)
  {
    v4 = 0x796164697266;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x79616473657574;
  if (v2 != 1)
  {
    v5 = 0x616473656E646577;
  }

  if (*v0)
  {
    v1 = v5;
  }

  if (*v0 <= 2u)
  {
    return v1;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_2490ABBC0(uint64_t a1)
{
  sub_24910CCCC();
}

void sub_2490ABCD4(uint64_t *a1@<X8>)
{
  v2 = 0x7961646E6F6DLL;
  v3 = *v1;
  v4 = 0xE600000000000000;
  v5 = 0xE800000000000000;
  v6 = 0x7961647275746173;
  if (v3 != 5)
  {
    v6 = 0x7961646E7573;
    v5 = 0xE600000000000000;
  }

  v7 = 0xE800000000000000;
  v8 = 0x7961647372756874;
  if (v3 != 3)
  {
    v8 = 0x796164697266;
    v7 = 0xE600000000000000;
  }

  if (*v1 <= 4u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE700000000000000;
  v10 = 0x79616473657574;
  if (v3 != 1)
  {
    v10 = 0x616473656E646577;
    v9 = 0xE900000000000079;
  }

  if (*v1)
  {
    v2 = v10;
    v4 = v9;
  }

  if (*v1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v2 = v6;
    v11 = v5;
  }

  *a1 = v2;
  a1[1] = v11;
}

uint64_t DTSyncedAlarm.Sound.MediaInfo.mediaIdentifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t static DTSyncedAlarm.Sound.MediaInfo.== infix(_:_:)(double *a1, uint64_t a2)
{
  v2 = a1[2];
  v3 = *(a1 + 24);
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  v6 = *a1 == *a2 && *(a1 + 1) == *(a2 + 8);
  if (v6 || (v7 = sub_24910D54C(), result = 0, (v7 & 1) != 0))
  {
    if (v3)
    {
      if ((v5 & 1) == 0)
      {
        return 0;
      }
    }

    else
    {
      if (v2 == v4)
      {
        v9 = v5;
      }

      else
      {
        v9 = 1;
      }

      if (v9)
      {
        return 0;
      }
    }

    return 1;
  }

  return result;
}

uint64_t sub_2490ABF18()
{
  if (*v0)
  {
    return 0x656D756C6F76;
  }

  else
  {
    return 0x656449616964656DLL;
  }
}

uint64_t sub_2490ABF5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x656449616964656DLL && a2 == 0xEF7265696669746ELL;
  if (v6 || (sub_24910D54C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x656D756C6F76 && a2 == 0xE600000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_24910D54C();

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

uint64_t sub_2490AC03C(uint64_t a1)
{
  v2 = sub_2490B4178();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2490AC078(uint64_t a1)
{
  v2 = sub_2490B4178();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t DTSyncedAlarm.Sound.MediaInfo.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED7838, &qword_24910EF38);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v9 - v5;
  v9[0] = *(v1 + 16);
  v10 = *(v1 + 24);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2490B4178();
  sub_24910D64C();
  v12 = 0;
  v7 = v9[1];
  sub_24910D4AC();
  if (!v7)
  {
    v11 = 1;
    sub_24910D48C();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t DTSyncedAlarm.Sound.MediaInfo.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED7840, &qword_24910EF40);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v16 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2490B4178();
  sub_24910D63C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v19 = 0;
  v9 = sub_24910D3FC();
  v11 = v10;
  v17 = v9;
  v18 = 1;
  v12 = sub_24910D3DC();
  v14 = v13;
  (*(v6 + 8))(v8, v5);
  *a2 = v17;
  *(a2 + 8) = v11;
  *(a2 + 16) = v12;
  *(a2 + 24) = v14 & 1;

  __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_2490AC474(double *a1, uint64_t a2)
{
  v2 = a1[2];
  v3 = *(a1 + 24);
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  v6 = *a1 == *a2 && *(a1 + 1) == *(a2 + 8);
  if (v6 || (v7 = sub_24910D54C(), result = 0, (v7 & 1) != 0))
  {
    if (v3)
    {
      if (v5)
      {
        return 1;
      }
    }

    else
    {
      if (v2 == v4)
      {
        v9 = v5;
      }

      else
      {
        v9 = 1;
      }

      if ((v9 & 1) == 0)
      {
        return 1;
      }
    }

    return 0;
  }

  return result;
}

uint64_t sub_2490AC544@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x616964656DLL && a2 == 0xE500000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_24910D54C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_2490AC5D4(uint64_t a1)
{
  v2 = sub_2490B41CC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2490AC610(uint64_t a1)
{
  v2 = sub_2490B41CC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2490AC64C()
{
  sub_24910D60C();
  MEMORY[0x24C1F2040](0);
  return sub_24910D62C();
}

uint64_t sub_2490AC690(uint64_t a1)
{
  sub_24910D60C();
  MEMORY[0x24C1F2040](0);
  return sub_24910D62C();
}

uint64_t sub_2490AC6DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_24910D54C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_2490AC75C(uint64_t a1)
{
  v2 = sub_2490B4220();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2490AC798(uint64_t a1)
{
  v2 = sub_2490B4220();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t DTSyncedAlarm.Sound.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED7848, &qword_24910EF48);
  v4 = *(v3 - 8);
  v17 = v3;
  v18 = v4;
  MEMORY[0x28223BE20](v3);
  v6 = &v14[-v5];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED7850, &qword_24910EF50);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v14[-v9];
  v16 = *v1;
  v11 = *(v1 + 2);
  v15 = *(v1 + 24);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2490B41CC();
  sub_24910D64C();
  sub_2490B4220();
  sub_24910D45C();
  v19 = v16;
  v20 = v11;
  v21 = v15;
  sub_2490B4274();
  v12 = v17;
  sub_24910D4EC();
  (*(v18 + 8))(v6, v12);
  return (*(v8 + 8))(v10, v7);
}

uint64_t DTSyncedAlarm.Sound.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v23 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED7860, &qword_24910EF58);
  v24 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v21 - v5;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED7868, &qword_24910EF60);
  v7 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v9 = &v21 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2490B41CC();
  sub_24910D63C();
  if (v2)
  {
    goto LABEL_5;
  }

  v21 = a1;
  v22 = v7;
  v10 = v28;
  if (*(sub_24910D44C() + 16) != 1)
  {
    v12 = sub_24910D28C();
    swift_allocError();
    v13 = v10;
    v15 = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED7870, &qword_24910EF68);
    *v15 = &type metadata for DTSyncedAlarm.Sound;
    sub_24910D3AC();
    sub_24910D27C();
    (*(*(v12 - 8) + 104))(v15, *MEMORY[0x277D84160], v12);
    swift_willThrow();
    (*(v22 + 8))(v9, v13);
    swift_unknownObjectRelease();
    a1 = v21;
LABEL_5:
    v20 = a1;
    return __swift_destroy_boxed_opaque_existential_0(v20);
  }

  sub_2490B4220();
  sub_24910D39C();
  v11 = v22;
  sub_2490B42C8();
  sub_24910D43C();
  (*(v24 + 8))(v6, v4);
  (*(v11 + 8))(v9, v10);
  swift_unknownObjectRelease();
  v17 = v26;
  v18 = v27;
  v19 = v23;
  *v23 = v25;
  *(v19 + 2) = v17;
  *(v19 + 24) = v18;
  v20 = v21;
  return __swift_destroy_boxed_opaque_existential_0(v20);
}

uint64_t sub_2490ACDCC(uint64_t result, uint64_t a2)
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
  v5 = result + 56;
  v6 = 1 << *(result + 32);
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  else
  {
    v7 = -1;
  }

  v8 = v7 & *(result + 56);
  v9 = (v6 + 63) >> 6;
  v10 = a2 + 56;
  v35 = v9;
  v36 = result;
  if (!v8)
  {
    goto LABEL_8;
  }

  do
  {
    v11 = __clz(__rbit64(v8));
    v12 = (v8 - 1) & v8;
LABEL_13:
    v15 = v11 | (v4 << 6);
    v16 = *(v3 + 48);
    v17 = *(v16 + v15);
    v18 = sub_2490AB730(*(a2 + 40), *(v16 + v15));
    v19 = -1 << *(a2 + 32);
    v20 = v18 & ~v19;
    if (((*(v10 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
    {
      return 0;
    }

    v37 = v12;
    v21 = ~v19;
    while (1)
    {
      v22 = *(*(a2 + 48) + v20);
      if (v22 <= 2)
      {
        break;
      }

      if (*(*(a2 + 48) + v20) <= 4u)
      {
        if (v22 == 3)
        {
          v23 = 0xE800000000000000;
          v24 = 0x647372756874;
          goto LABEL_38;
        }

        v23 = 0xE600000000000000;
        v28 = 1684632166;
        goto LABEL_44;
      }

      if (v22 == 5)
      {
        v23 = 0xE800000000000000;
        v24 = 0x647275746173;
LABEL_38:
        v25 = v24 & 0xFFFFFFFFFFFFLL | 0x7961000000000000;
        if (v17 > 2)
        {
          goto LABEL_45;
        }

        goto LABEL_27;
      }

      v25 = 0x7961646E7573;
      v23 = 0xE600000000000000;
      if (v17 > 2)
      {
        goto LABEL_45;
      }

LABEL_27:
      if (v17)
      {
        if (v17 == 1)
        {
          v26 = 0x79616473657574;
        }

        else
        {
          v26 = 0x616473656E646577;
        }

        if (v17 == 1)
        {
          v27 = 0xE700000000000000;
        }

        else
        {
          v27 = 0xE900000000000079;
        }

        if (v25 == v26)
        {
          goto LABEL_58;
        }
      }

      else
      {
        v27 = 0xE600000000000000;
        if (v25 == 0x7961646E6F6DLL)
        {
          goto LABEL_58;
        }
      }

LABEL_59:
      v34 = sub_24910D54C();

      if (v34)
      {
        goto LABEL_65;
      }

      v20 = (v20 + 1) & v21;
      if (((*(v10 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
      {
        return 0;
      }
    }

    if (!*(*(a2 + 48) + v20))
    {
      v23 = 0xE600000000000000;
      v28 = 1684959085;
LABEL_44:
      v25 = v28 & 0xFFFF0000FFFFFFFFLL | 0x796100000000;
      if (v17 > 2)
      {
        goto LABEL_45;
      }

      goto LABEL_27;
    }

    if (v22 == 1)
    {
      v25 = 0x79616473657574;
    }

    else
    {
      v25 = 0x616473656E646577;
    }

    if (v22 == 1)
    {
      v23 = 0xE700000000000000;
    }

    else
    {
      v23 = 0xE900000000000079;
    }

    if (v17 <= 2)
    {
      goto LABEL_27;
    }

LABEL_45:
    v29 = 0x7961646E7573;
    if (v17 == 5)
    {
      v29 = 0x7961647275746173;
      v30 = 0xE800000000000000;
    }

    else
    {
      v30 = 0xE600000000000000;
    }

    v31 = 0x7961647372756874;
    if (v17 == 3)
    {
      v32 = 0xE800000000000000;
    }

    else
    {
      v31 = 0x796164697266;
      v32 = 0xE600000000000000;
    }

    if (v17 <= 4)
    {
      v33 = v31;
    }

    else
    {
      v33 = v29;
    }

    if (v17 <= 4)
    {
      v27 = v32;
    }

    else
    {
      v27 = v30;
    }

    if (v25 != v33)
    {
      goto LABEL_59;
    }

LABEL_58:
    if (v23 != v27)
    {
      goto LABEL_59;
    }

LABEL_65:
    v9 = v35;
    v3 = v36;
    v8 = v37;
  }

  while (v37);
LABEL_8:
  v13 = v4;
  while (1)
  {
    v4 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v4 >= v9)
    {
      return 1;
    }

    v14 = *(v5 + 8 * v4);
    ++v13;
    if (v14)
    {
      v11 = __clz(__rbit64(v14));
      v12 = (v14 - 1) & v14;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t DTSyncedAlarm.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED7880, &qword_24910EF70);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v14 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2490B431C();
  sub_24910D64C();
  LOBYTE(v14) = 0;
  sub_24910D4AC();
  if (!v2)
  {
    LOBYTE(v14) = 1;
    sub_24910D4BC();
    LOBYTE(v14) = 2;
    sub_24910D4DC();
    LOBYTE(v14) = 3;
    sub_24910D4DC();
    v9 = *(v3 + 48);
    v14 = *(v3 + 40);
    *&v15 = v9;
    v17 = 4;
    sub_2490B3924(v14, v9);
    sub_2490B4370();
    sub_24910D49C();
    sub_2490B3854(v14, v15);
    v10 = type metadata accessor for DTSyncedAlarm(0);
    LOBYTE(v14) = 5;
    sub_24910C26C();
    sub_2490A5A5C(&qword_27EED7898, MEMORY[0x277CC9578], MEMORY[0x277CC9580]);
    sub_24910D4EC();
    v14 = *(v3 + *(v10 + 40));
    v17 = 6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED78A0, &qword_24910EF78);
    sub_2490B44C0(&qword_27EED78A8, sub_2490B43C4, MEMORY[0x277D83B50]);
    sub_24910D4EC();
    v11 = v3 + *(v10 + 44);
    v12 = *(v11 + 24);
    v14 = *v11;
    v15 = *(v11 + 8);
    v16 = v12;
    v17 = 7;
    sub_2490B4418();

    sub_24910D49C();

    LOBYTE(v14) = 8;
    sub_24910D46C();
    LOBYTE(v14) = 9;
    sub_24910D46C();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t DTSyncedAlarm.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v59 = a1;
  v48 = a2;
  v52 = sub_24910C26C();
  v50 = *(v52 - 8);
  MEMORY[0x28223BE20](v52);
  v51 = &v44 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED78C0, &unk_24910EF80);
  v54 = *(v3 - 8);
  v55 = v3;
  MEMORY[0x28223BE20](v3);
  v58 = &v44 - v4;
  v5 = sub_24910C2FC();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DTSyncedAlarm(0);
  v10 = (v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24910C2EC();
  v13 = sub_24910C28C();
  v15 = v14;
  (*(v6 + 8))(v8, v5);
  *v12 = v13;
  *(v12 + 1) = v15;
  v53 = v15;
  *(v12 + 3) = 0;
  v12[16] = 1;
  *(v12 + 4) = 0;
  *(v12 + 5) = 0;
  *(v12 + 6) = 0xF000000000000000;
  v49 = v10[11];
  sub_24910C1FC();
  v16 = v10[12];
  *&v12[v16] = MEMORY[0x277D84FA0];
  v17 = &v12[v10[13]];
  *v17 = 0;
  *(v17 + 1) = 0;
  v17[24] = 0;
  *(v17 + 2) = 0;
  v18 = &v12[v10[14]];
  *v18 = 0;
  *(v18 + 1) = 0;
  v19 = v10[15];
  v57 = v12;
  v20 = &v12[v19];
  *v20 = 0;
  *(v20 + 1) = 0;
  __swift_project_boxed_opaque_existential_1(v59, v59[3]);
  sub_2490B431C();
  v21 = v56;
  sub_24910D63C();
  if (v21)
  {
    v23 = v57;
    __swift_destroy_boxed_opaque_existential_0(v59);
    v43 = v23;
  }

  else
  {
    *&v56 = v12 + 24;
    v46 = v17;
    v47 = v16;
    v44 = v20;
    v45 = v18;
    v22 = v54;
    LOBYTE(v60) = 0;
    v25 = sub_24910D3FC();
    v27 = v26;

    v28 = v57;
    *v57 = v25;
    v28[1] = v27;
    LOBYTE(v60) = 1;
    *(v28 + 16) = sub_24910D40C() & 1;
    LOBYTE(v60) = 2;
    *v56 = sub_24910D42C();
    LOBYTE(v60) = 3;
    v28[4] = sub_24910D42C();
    v63 = 4;
    sub_2490B446C();
    sub_24910D3EC();
    v29 = v60;
    sub_2490B3854(v28[5], v28[6]);
    *(v28 + 5) = v29;
    LOBYTE(v60) = 5;
    sub_2490A5A5C(&qword_27EED78D0, MEMORY[0x277CC9578], MEMORY[0x277CC95A0]);
    v31 = v51;
    v30 = v52;
    sub_24910D43C();
    (*(v50 + 40))(v28 + v49, v31, v30);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED78A0, &qword_24910EF78);
    v63 = 6;
    sub_2490B44C0(&qword_27EED78D8, sub_2490B4538, MEMORY[0x277D83B70]);
    sub_24910D43C();
    *(v28 + v47) = v60;
    v63 = 7;
    sub_2490B458C();
    sub_24910D3EC();
    v56 = v60;
    v32 = v61;
    v33 = v62;
    v34 = v46;

    *v34 = v56;
    *(v34 + 2) = v32;
    v34[24] = v33;
    LOBYTE(v60) = 8;
    v35 = sub_24910D3BC();
    v36 = v45;
    *v45 = v35;
    v36[1] = v37;
    LOBYTE(v60) = 9;
    v38 = sub_24910D3BC();
    v40 = v39;
    (*(v22 + 8))(v58, v55);
    v41 = v44;
    *v44 = v38;
    v41[1] = v40;
    v42 = v57;
    sub_2490B3938(v57, v48, type metadata accessor for DTSyncedAlarm);
    __swift_destroy_boxed_opaque_existential_0(v59);
    v43 = v42;
  }

  return sub_2490A4414(v43, type metadata accessor for DTSyncedAlarm);
}

uint64_t sub_2490ADC6C()
{
  v1 = *(v0 + 40);
  sub_2490B3924(v1, *(v0 + 48));
  return v1;
}

uint64_t sub_2490ADCA0(uint64_t a1, uint64_t a2)
{
  result = sub_2490B3854(*(v2 + 40), *(v2 + 48));
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return result;
}

uint64_t sub_2490ADCFC(void *a1)
{
  if (a1)
  {
    v3 = [objc_allocWithZone(MEMORY[0x277CCAAB0]) initRequiringSecureCoding_];
    [a1 encodeSystemFieldsWithCoder_];
    v4 = [v3 encodedData];
    v5 = sub_24910C1DC();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0xF000000000000000;
  }

  result = sub_2490B3854(*(v1 + 40), *(v1 + 48));
  *(v1 + 40) = v5;
  *(v1 + 48) = v7;
  return result;
}

uint64_t (*sub_2490ADDB0(id **a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_2490A6D8C(v2);
  return sub_2490ADE20;
}

uint64_t sub_2490ADE24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 36);
  v5 = sub_24910C26C();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_2490ADE98(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 36);
  v5 = sub_24910C26C();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

double sub_2490ADF74@<D0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;

  return result;
}

void *MTMutableAlarm.init(_:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED78F0, &qword_24910EB70);
  MEMORY[0x28223BE20](v3 - 8);
  v94 = &v86 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED78F8, &unk_24910EF90);
  MEMORY[0x28223BE20](v5 - 8);
  v96 = &v86 - v6;
  v7 = sub_24910C02C();
  v8 = *(v7 - 1);
  MEMORY[0x28223BE20](v7);
  v95 = &v86 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED7900, &qword_24910EB50);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v86 - v11;
  v13 = sub_24910C2FC();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v86 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24910C27C();
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_2490A487C(v12, &qword_27EED7900, &qword_24910EB50);
    sub_24910C7DC();
    sub_24910C7EC();
    swift_willThrow();
    sub_2490A4414(a1, type metadata accessor for DTSyncedAlarm);
    return v7;
  }

  v87 = v8;
  v88 = v7;
  v92 = v1;
  v90 = v14;
  v17 = *(v14 + 32);
  v91 = v13;
  v17(v16, v12, v13);
  v18 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v89 = v16;
  v19 = sub_24910C2AC();
  v20 = [v18 initWithIdentifier_];

  v21 = *(a1 + 16);
  v7 = v20;
  [v7 setEnabled_];
  [v7 setHour_];
  [v7 setMinute_];

  v93 = type metadata accessor for DTSyncedAlarm(0);
  v22 = *(a1 + *(v93 + 40));
  if (*(v22 + 16))
  {
    sub_24910D60C();
    sub_24910CCCC();
    v23 = sub_24910D62C();
    v24 = v22 + 56;
    v25 = -1 << *(v22 + 32);
    v26 = v23 & ~v25;
    if ((*(v22 + 56 + ((v26 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v26))
    {
      v27 = ~v25;
      while (*(*(v22 + 48) + v26))
      {
        v28 = sub_24910D54C();

        if (v28)
        {
          goto LABEL_12;
        }

        v26 = (v26 + 1) & v27;
        if (((*(v24 + ((v26 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v26) & 1) == 0)
        {
          goto LABEL_10;
        }
      }

LABEL_12:
      [v7 setRepeatSchedule_];
      if (!*(v22 + 16))
      {
        goto LABEL_76;
      }

      goto LABEL_13;
    }

LABEL_10:
    if (*(v22 + 16))
    {
LABEL_13:
      sub_24910D60C();
      sub_24910CCCC();
      v29 = sub_24910D62C();
      v30 = -1 << *(v22 + 32);
      v31 = v29 & ~v30;
      if ((*(v24 + ((v31 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v31))
      {
        v32 = ~v30;
        while (*(*(v22 + 48) + v31) >= 2u || !*(*(v22 + 48) + v31))
        {
          v33 = sub_24910D54C();

          if (v33)
          {
            goto LABEL_21;
          }

          v31 = (v31 + 1) & v32;
          if (((*(v24 + ((v31 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v31) & 1) == 0)
          {
            goto LABEL_22;
          }
        }

LABEL_21:
        [v7 setRepeatSchedule_];
      }

LABEL_22:
      if (*(v22 + 16))
      {
        sub_24910D60C();
        sub_24910CCCC();
        v34 = sub_24910D62C();
        v35 = -1 << *(v22 + 32);
        v36 = v34 & ~v35;
        if ((*(v24 + ((v36 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v36))
        {
          v37 = ~v35;
          while (*(*(v22 + 48) + v36) > 3u || *(*(v22 + 48) + v36) <= 1u || *(*(v22 + 48) + v36) == 3)
          {
            v38 = sub_24910D54C();

            if (v38)
            {
              goto LABEL_34;
            }

            v36 = (v36 + 1) & v37;
            if (((*(v24 + ((v36 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v36) & 1) == 0)
            {
              goto LABEL_35;
            }
          }

LABEL_34:
          [v7 setRepeatSchedule_];
        }

LABEL_35:
        if (*(v22 + 16))
        {
          sub_24910D60C();
          sub_24910CCCC();
          v39 = sub_24910D62C();
          v40 = -1 << *(v22 + 32);
          v41 = v39 & ~v40;
          if ((*(v24 + ((v41 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v41))
          {
            v42 = ~v40;
            while (*(*(v22 + 48) + v41) != 3)
            {
              v43 = sub_24910D54C();

              if (v43)
              {
                goto LABEL_43;
              }

              v41 = (v41 + 1) & v42;
              if (((*(v24 + ((v41 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v41) & 1) == 0)
              {
                goto LABEL_44;
              }
            }

LABEL_43:
            [v7 setRepeatSchedule_];
          }

LABEL_44:
          if (*(v22 + 16))
          {
            sub_24910D60C();
            sub_24910CCCC();
            v44 = sub_24910D62C();
            v45 = -1 << *(v22 + 32);
            v46 = v44 & ~v45;
            if ((*(v24 + ((v46 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v46))
            {
              v47 = ~v45;
              while (*(*(v22 + 48) + v46) <= 2u || *(*(v22 + 48) + v46) > 4u || *(*(v22 + 48) + v46) == 3)
              {
                v48 = sub_24910D54C();

                if (v48)
                {
                  goto LABEL_56;
                }

                v46 = (v46 + 1) & v47;
                if (((*(v24 + ((v46 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v46) & 1) == 0)
                {
                  goto LABEL_57;
                }
              }

LABEL_56:
              [v7 setRepeatSchedule_];
            }

LABEL_57:
            if (*(v22 + 16))
            {
              sub_24910D60C();
              sub_24910CCCC();
              v49 = sub_24910D62C();
              v50 = -1 << *(v22 + 32);
              v51 = v49 & ~v50;
              if ((*(v24 + ((v51 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v51))
              {
                v52 = ~v50;
                while (*(*(v22 + 48) + v51) <= 4u || *(*(v22 + 48) + v51) == 6)
                {
                  v53 = sub_24910D54C();

                  if (v53)
                  {
                    goto LABEL_66;
                  }

                  v51 = (v51 + 1) & v52;
                  if (((*(v24 + ((v51 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v51) & 1) == 0)
                  {
                    goto LABEL_67;
                  }
                }

LABEL_66:
                [v7 setRepeatSchedule_];
              }

LABEL_67:
              if (*(v22 + 16))
              {
                sub_24910D60C();
                sub_24910CCCC();
                v54 = sub_24910D62C();
                v55 = -1 << *(v22 + 32);
                v56 = v54 & ~v55;
                if ((*(v24 + ((v56 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v56))
                {
                  v57 = ~v55;
                  while (*(*(v22 + 48) + v56) <= 5u)
                  {
                    v58 = sub_24910D54C();

                    if (v58)
                    {
                      goto LABEL_75;
                    }

                    v56 = (v56 + 1) & v57;
                    if (((*(v24 + ((v56 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v56) & 1) == 0)
                    {
                      goto LABEL_76;
                    }
                  }

LABEL_75:
                  [v7 setRepeatSchedule_];
                }
              }
            }
          }
        }
      }
    }
  }

LABEL_76:
  v59 = v93;
  v60 = a1 + *(v93 + 44);
  v61 = v88;
  v62 = v87;
  v63 = v96;
  if (*(v60 + 8))
  {
    v64 = *(v60 + 24);
    v65 = sub_24910CC8C();
    if (v64)
    {
      v66 = 0;
    }

    else
    {
      v66 = sub_24910CE5C();
    }

    v67 = [objc_opt_self() toneSoundWithIdentifier:v65 vibrationIdentifer:0 volume:v66];

    [v7 setSound_];
  }

  if (*(a1 + *(v59 + 48) + 8))
  {
    sub_24910D09C();
    sub_24910D06C();
    if ((*(v62 + 48))(v63, 1, v61) == 1)
    {
      sub_2490A487C(v63, &qword_27EED78F8, &unk_24910EF90);
    }

    else
    {
      v68 = v95;
      (*(v62 + 32))(v95, v63, v61);
      v69 = v94;
      sub_24910C01C();
      v70 = sub_24910C1AC();
      v71 = *(v70 - 8);
      if ((*(v71 + 48))(v69, 1, v70) == 1)
      {
        (*(v62 + 8))(v68, v61);
        sub_2490A487C(v69, &qword_27EED78F0, &qword_24910EB70);
      }

      else
      {
        v96 = sub_24910C13C();
        v72 = v69;
        v74 = v73;
        (*(v71 + 8))(v72, v70);
        v75 = [v7 siriContext];
        if (v75)
        {
          v76 = v75;
          v77 = sub_24910CC2C();
        }

        else
        {
          v77 = MEMORY[0x277D84F98];
        }

        *&v99 = sub_24910D07C();
        *(&v99 + 1) = v78;
        v79 = MEMORY[0x277D837D0];
        sub_24910D1FC();
        v100 = v79;
        *&v99 = v96;
        *(&v99 + 1) = v74;
        sub_2490B45E0(&v99, v98);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v97 = v77;
        sub_2490B3360(v98, v101, isUniquelyReferenced_nonNull_native);
        sub_2490B45F0(v101);
        v81 = sub_24910CC1C();

        [v7 setSiriContext_];

        (*(v62 + 8))(v95, v61);
      }

      v59 = v93;
    }
  }

  v82 = a1 + *(v59 + 52);
  v83 = v91;
  if (*(v82 + 8))
  {
    v84 = sub_24910CC8C();
  }

  else
  {
    v84 = 0;
  }

  [v7 setTitle_];

  (*(v90 + 8))(v89, v83);
  sub_2490A4414(a1, type metadata accessor for DTSyncedAlarm);
  return v7;
}

uint64_t _s23DistributedTimersDaemon13DTSyncedAlarmV10ckRecordIDSo08CKRecordH0Cvg_0()
{
  sub_2490A4744(0, &qword_27EED77B0, 0x277CBC5D0);
  sub_2490A4744(0, &qword_27EED77B8, 0x277CBC5F8);
  sub_24910CC9C();

  sub_24910CF6C();
  return sub_24910CF0C();
}

uint64_t DTSyncedTimer.lastKnownRecordData.getter()
{
  v1 = *(v0 + 24);
  sub_2490B3924(v1, *(v0 + 32));
  return v1;
}

uint64_t DTSyncedTimer.lastKnownRecordData.setter(uint64_t a1, uint64_t a2)
{
  result = sub_2490B3854(*(v2 + 24), *(v2 + 32));
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

uint64_t DTSyncedTimer.modificationDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for DTSyncedTimer(0) + 28);
  v4 = sub_24910C26C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t DTSyncedTimer.modificationDate.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for DTSyncedTimer(0) + 28);
  v4 = sub_24910C26C();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t DTSyncedTimer.state.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for DTSyncedTimer(0);
  *a1 = *(v1 + *(result + 32));
  return result;
}

uint64_t DTSyncedTimer.state.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for DTSyncedTimer(0);
  *(v1 + *(result + 32)) = v2;
  return result;
}

uint64_t DTSyncedTimer.targetIdentifier.getter()
{
  v1 = *(v0 + *(type metadata accessor for DTSyncedTimer(0) + 36));

  return v1;
}

uint64_t DTSyncedTimer.targetIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for DTSyncedTimer(0) + 36));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t DTSyncedTimer.title.getter()
{
  v1 = *(v0 + *(type metadata accessor for DTSyncedTimer(0) + 40));

  return v1;
}

uint64_t DTSyncedTimer.title.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for DTSyncedTimer(0) + 40));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t DTSyncedTimer.init(id:duration:modificationDate:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D0>)
{
  v10 = sub_24910C2FC();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24910C2EC();
  sub_24910C28C();
  (*(v11 + 8))(v13, v10);
  *(a4 + 24) = xmmword_24910EEA0;
  v14 = type metadata accessor for DTSyncedTimer(0);
  v15 = v14[7];
  sub_24910C1FC();

  *(a4 + v14[8]) = 0;
  v16 = (a4 + v14[9]);
  *v16 = 0;
  v16[1] = 0;
  v17 = (a4 + v14[10]);
  *v17 = 0;
  v17[1] = 0;
  *a4 = a1;
  *(a4 + 8) = a2;
  *(a4 + 16) = a5;
  v18 = sub_24910C26C();
  return (*(*(v18 - 8) + 40))(a4 + v15, a3, v18);
}

void DTSyncedTimer.init(mtTimer:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_24910C26C();
  v29 = *(v4 - 8);
  v30 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_24910C2FC();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24910C2EC();
  sub_24910C28C();
  (*(v8 + 8))(v10, v7);
  *(a2 + 24) = xmmword_24910EEA0;
  v11 = type metadata accessor for DTSyncedTimer(0);
  v12 = v11[7];
  sub_24910C1FC();
  v13 = v11[8];
  *(a2 + v13) = 0;
  v14 = [a1 timerIDString];
  v15 = sub_24910CC9C();
  v17 = v16;

  *a2 = v15;
  *(a2 + 8) = v17;
  [a1 duration];
  *(a2 + 16) = v18;
  sub_24910C23C();
  (*(v29 + 40))(a2 + v12, v6, v30);
  v19 = [a1 state];
  if (v19 >= 4)
  {
    v20 = 0;
  }

  else
  {
    v20 = v19;
  }

  v21 = (a2 + v11[9]);
  *(a2 + v13) = v20;
  *v21 = sub_24910D0CC();
  v21[1] = v22;
  v23 = [a1 title];
  if (v23)
  {
    v24 = v23;
    v25 = sub_24910CC9C();
    v27 = v26;
  }

  else
  {

    v25 = 0;
    v27 = 0;
  }

  v28 = (a2 + v11[10]);
  *v28 = v25;
  v28[1] = v27;
}

unint64_t DTSyncedTimer.State.init(mtTimerState:)@<X0>(unint64_t result@<X0>, _BYTE *a2@<X8>)
{
  if (result >= 4)
  {
    v2 = 0;
  }

  else
  {
    v2 = result;
  }

  *a2 = v2;
  return result;
}

uint64_t DTSyncedTimer.description.getter()
{
  sub_24910D25C();
  MEMORY[0x24C1F1710](4023401, 0xE300000000000000);
  MEMORY[0x24C1F1710](*v0, v0[1]);
  MEMORY[0x24C1F1710](0x697461727564202CLL, 0xEB000000003D6E6FLL);
  sub_24910CE6C();
  MEMORY[0x24C1F1710](0x3D657461646D202CLL, 0xE800000000000000);
  type metadata accessor for DTSyncedTimer(0);
  v1 = sub_24910C25C();
  MEMORY[0x24C1F1710](v1);

  MEMORY[0x24C1F1710](0x3D6574617473202CLL, 0xE800000000000000);
  sub_24910D32C();
  MEMORY[0x24C1F1710](0x746567726174202CLL, 0xE90000000000003DLL);
  sub_24910D52C();
  MEMORY[0x24C1F1710](0x3D656C746974202CLL, 0xE800000000000000);
  sub_24910D52C();
  return 0;
}

Swift::Bool __swiftcall DTSyncedTimer.mergeFromServerRecord(_:)(CKRecord a1)
{
  v2 = v1;
  v4 = sub_24910C26C();
  v5 = *(v4 - 8);
  v74 = v4;
  v75 = v5;
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v68 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v76 = &v68 - v9;
  v10 = type metadata accessor for DTSyncedTimer(0);
  v11 = MEMORY[0x28223BE20](v10);
  v13 = &v68 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v68 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = &v68 - v17;
  v19 = *(v2 + 8);
  v77 = *v2;
  v20 = [(objc_class *)a1.super.isa encryptedValues];
  v21 = sub_24910CC8C();
  v22 = [v20 objectForKeyedSubscript_];
  swift_unknownObjectRelease();

  if (!v22 || (v78[2] = v22, __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED7820, &qword_24910EF30), (swift_dynamicCast() & 1) == 0))
  {
    if (qword_27EED8AA0 != -1)
    {
      swift_once();
    }

    v25 = sub_24910C89C();
    __swift_project_value_buffer(v25, qword_27EED8AA8);

    v26 = sub_24910C87C();
    v27 = sub_24910CF4C();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v78[0] = v29;
      *v28 = 136315138;
      v30 = sub_24909F930(v77, v19, v78);

      *(v28 + 4) = v30;
      _os_log_impl(&dword_249083000, v26, v27, "No server timer data: id=%s", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v29);
      MEMORY[0x24C1F26F0](v29, -1, -1);
      MEMORY[0x24C1F26F0](v28, -1, -1);
    }

    else
    {
    }

    return 0;
  }

  v24 = v78[0];
  v23 = v78[1];
  sub_24910BFAC();
  swift_allocObject();
  sub_24910BF9C();
  sub_2490A5A5C(&qword_27EED77A0, type metadata accessor for DTSyncedTimer, &protocol conformance descriptor for DTSyncedTimer);
  v72 = v24;
  v73 = v23;
  sub_24910BF8C();
  v69 = v8;

  sub_2490B4644(v16, v18, type metadata accessor for DTSyncedTimer);
  v32 = v10[7];
  v33 = v75;
  v34 = v74;
  v71 = *(v75 + 16);
  v71(v76, v2 + v32, v74);
  v35 = v18;
  v36 = v10[7];
  sub_2490A5A5C(&qword_27EED7828, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
  v70 = v36;
  v37 = v35;
  v38 = sub_24910CC6C();
  if ((v38 & 1) == 0)
  {
    if (qword_27EED8AA0 != -1)
    {
      swift_once();
    }

    v47 = sub_24910C89C();
    __swift_project_value_buffer(v47, qword_27EED8AA8);
    v48 = v69;
    v49 = v76;
    v50 = v74;
    v71(v69, v76, v74);
    sub_2490B3938(v37, v13, type metadata accessor for DTSyncedTimer);

    v51 = sub_24910C87C();
    v52 = sub_24910CF2C();

    if (os_log_type_enabled(v51, v52))
    {
      v53 = v50;
      v54 = swift_slowAlloc();
      v71 = swift_slowAlloc();
      v78[0] = v71;
      *v54 = 136315650;
      *(v54 + 4) = sub_24909F930(v77, v19, v78);
      *(v54 + 12) = 2080;
      sub_2490A5A5C(&qword_27EED7830, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
      v77 = v51;
      LODWORD(v70) = v52;
      v55 = sub_24910D50C();
      v57 = v56;
      v58 = *(v75 + 8);
      v75 += 8;
      v58(v48, v53);
      v59 = sub_24909F930(v55, v57, v78);

      *(v54 + 14) = v59;
      *(v54 + 22) = 2080;
      v60 = v53;
      v61 = sub_24910D50C();
      v63 = v62;
      sub_2490A4414(v13, type metadata accessor for DTSyncedTimer);
      v64 = sub_24909F930(v61, v63, v78);

      *(v54 + 24) = v64;
      v65 = v77;
      _os_log_impl(&dword_249083000, v77, v70, "Ignoring older timer: id=%s, localDate=%s, serverDate=%s", v54, 0x20u);
      v66 = v71;
      swift_arrayDestroy();
      MEMORY[0x24C1F26F0](v66, -1, -1);
      MEMORY[0x24C1F26F0](v54, -1, -1);
      sub_2490A453C(v72, v73);

      v58(v76, v60);
    }

    else
    {
      sub_2490A453C(v72, v73);

      sub_2490A4414(v13, type metadata accessor for DTSyncedTimer);
      v67 = *(v75 + 8);
      v67(v48, v50);
      v67(v49, v50);
    }

    sub_2490A4414(v37, type metadata accessor for DTSyncedTimer);
    return 0;
  }

  (*(v33 + 8))(v76, v34);
  sub_2490A453C(v72, v73);
  *(v2 + 16) = *(v35 + 2);
  (*(v33 + 24))(v2 + v32, &v35[v70], v34);
  *(v2 + v10[8]) = v35[v10[8]];
  v39 = v10[9];
  v41 = *&v35[v39];
  v40 = *&v35[v39 + 8];
  v42 = (v2 + v39);

  *v42 = v41;
  v42[1] = v40;
  v43 = (v37 + v10[10]);
  v45 = *v43;
  v44 = v43[1];

  sub_2490A4414(v37, type metadata accessor for DTSyncedTimer);
  v46 = (v2 + v10[10]);

  *v46 = v45;
  v46[1] = v44;
  return 1;
}

uint64_t sub_2490B077C(uint64_t a1)
{
  sub_24910CCCC();
}

unint64_t sub_2490B0888@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_2490B46AC(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_2490B08B8(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE200000000000000;
  v4 = 25705;
  v5 = 0xD000000000000010;
  v6 = 0x80000002491111C0;
  if (v2 != 5)
  {
    v5 = 0x656C746974;
    v6 = 0xE500000000000000;
  }

  v7 = 0x8000000249111190;
  v8 = 0x6574617473;
  if (v2 == 3)
  {
    v8 = 0xD000000000000010;
  }

  else
  {
    v7 = 0xE500000000000000;
  }

  if (*v1 <= 4u)
  {
    v5 = v8;
    v6 = v7;
  }

  v9 = 0xE800000000000000;
  v10 = 0xD000000000000013;
  if (v2 == 1)
  {
    v10 = 0x6E6F697461727564;
  }

  else
  {
    v9 = 0x8000000249111170;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  if (*v1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v5;
  }

  if (*v1 > 2u)
  {
    v3 = v6;
  }

  *a1 = v11;
  a1[1] = v3;
}

unint64_t sub_2490B098C()
{
  v1 = *v0;
  v2 = 25705;
  v3 = 0xD000000000000010;
  if (v1 != 5)
  {
    v3 = 0x656C746974;
  }

  v4 = 0x6574617473;
  if (v1 == 3)
  {
    v4 = 0xD000000000000010;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0xD000000000000013;
  if (v1 == 1)
  {
    v5 = 0x6E6F697461727564;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_2490B0A5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2490B46AC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2490B0A90(uint64_t a1)
{
  v2 = sub_2490B46F8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2490B0ACC(uint64_t a1)
{
  v2 = sub_2490B46F8();

  return MEMORY[0x2821FE720](a1, v2);
}

DistributedTimersDaemon::DTSyncedTimer::State_optional __swiftcall DTSyncedTimer.State.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_24910D38C();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t DTSyncedTimer.State.rawValue.getter()
{
  v1 = 0x6E776F6E6B6E75;
  v2 = 0x646573756170;
  if (*v0 != 2)
  {
    v2 = 0x676E696E6E7572;
  }

  if (*v0)
  {
    v1 = 0x646570706F7473;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_2490B0BEC()
{
  sub_24910D60C();
  sub_24910CCCC();

  return sub_24910D62C();
}

uint64_t sub_2490B0CA8(uint64_t a1)
{
  sub_24910CCCC();
}

uint64_t sub_2490B0D50(uint64_t a1)
{
  sub_24910D60C();
  sub_24910CCCC();

  return sub_24910D62C();
}

void sub_2490B0E14(uint64_t *a1@<X8>)
{
  v2 = 0xE700000000000000;
  v3 = 0x6E776F6E6B6E75;
  v4 = 0xE600000000000000;
  v5 = 0x646573756170;
  if (*v1 != 2)
  {
    v5 = 0x676E696E6E7572;
    v4 = 0xE700000000000000;
  }

  if (*v1)
  {
    v3 = 0x646570706F7473;
    v2 = 0xE700000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t DTSyncedTimer.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED7908, &qword_24910EFA0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v12 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2490B46F8();
  sub_24910D64C();
  LOBYTE(v14) = 0;
  sub_24910D4AC();
  if (!v2)
  {
    LOBYTE(v14) = 1;
    sub_24910D4CC();
    v9 = *(v3 + 32);
    v14 = *(v3 + 24);
    v15 = v9;
    v13 = 2;
    sub_2490B3924(v14, v9);
    sub_2490B4370();
    sub_24910D49C();
    sub_2490B3854(v14, v15);
    v10 = type metadata accessor for DTSyncedTimer(0);
    LOBYTE(v14) = 3;
    sub_24910C26C();
    sub_2490A5A5C(&qword_27EED7898, MEMORY[0x277CC9578], MEMORY[0x277CC9580]);
    sub_24910D4EC();
    LOBYTE(v14) = *(v3 + *(v10 + 32));
    v13 = 4;
    sub_2490B474C();
    sub_24910D4EC();
    LOBYTE(v14) = 5;
    sub_24910D46C();
    LOBYTE(v14) = 6;
    sub_24910D46C();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t DTSyncedTimer.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v53 = a1;
  v43 = a2;
  v2 = sub_24910C26C();
  v44 = *(v2 - 8);
  v45 = v2;
  MEMORY[0x28223BE20](v2);
  v48 = &v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED7920, &qword_24910EFA8);
  v47 = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v52 = &v40 - v4;
  v5 = sub_24910C2FC();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DTSyncedTimer(0);
  v10 = (v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = (&v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_24910C2EC();
  v13 = sub_24910C28C();
  v15 = v14;
  (*(v6 + 8))(v8, v5);
  *v12 = v13;
  v12[1] = v15;
  v46 = v15;
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = 0xF000000000000000;
  v16 = v10[9];
  sub_24910C1FC();
  v17 = v10[10];
  *(v12 + v17) = 0;
  v18 = (v12 + v10[11]);
  *v18 = 0;
  v18[1] = 0;
  v19 = v10[12];
  v51 = v12;
  v20 = (v12 + v19);
  *v20 = 0;
  v20[1] = 0;
  __swift_project_boxed_opaque_existential_1(v53, v53[3]);
  sub_2490B46F8();
  v21 = v50;
  sub_24910D63C();
  if (v21)
  {
    v22 = v51;
  }

  else
  {
    v50 = v16;
    v40 = v20;
    v41 = v18;
    v42 = v17;
    v24 = v47;
    v23 = v48;
    LOBYTE(v54) = 0;
    v25 = sub_24910D3FC();
    v27 = v26;

    v22 = v51;
    *v51 = v25;
    v22[1] = v27;
    LOBYTE(v54) = 1;
    sub_24910D41C();
    v12[2] = v28;
    v56 = 2;
    sub_2490B446C();
    sub_24910D3EC();
    v29 = v54;
    v30 = v55;
    sub_2490B3854(v22[3], v22[4]);
    v22[3] = v29;
    v22[4] = v30;
    LOBYTE(v54) = 3;
    sub_2490A5A5C(&qword_27EED78D0, MEMORY[0x277CC9578], MEMORY[0x277CC95A0]);
    v31 = v45;
    sub_24910D43C();
    (*(v44 + 40))(v22 + v50, v23, v31);
    v56 = 4;
    sub_2490B47A0();
    sub_24910D43C();
    *(v22 + v42) = v54;
    LOBYTE(v54) = 5;
    v32 = sub_24910D3BC();
    v33 = v41;
    *v41 = v32;
    v33[1] = v34;
    LOBYTE(v54) = 6;
    v36 = sub_24910D3BC();
    v38 = v37;
    (*(v24 + 8))(v52, v49);
    v39 = v40;
    *v40 = v36;
    v39[1] = v38;
    sub_2490B3938(v22, v43, type metadata accessor for DTSyncedTimer);
  }

  __swift_destroy_boxed_opaque_existential_0(v53);
  return sub_2490A4414(v22, type metadata accessor for DTSyncedTimer);
}

uint64_t sub_2490B17A4()
{
  v1 = *(v0 + 24);
  sub_2490B3924(v1, *(v0 + 32));
  return v1;
}

uint64_t sub_2490B17D8(uint64_t a1, uint64_t a2)
{
  result = sub_2490B3854(*(v2 + 24), *(v2 + 32));
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

uint64_t sub_2490B1834(void *a1)
{
  if (a1)
  {
    v3 = [objc_allocWithZone(MEMORY[0x277CCAAB0]) initRequiringSecureCoding_];
    [a1 encodeSystemFieldsWithCoder_];
    v4 = [v3 encodedData];
    v5 = sub_24910C1DC();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0xF000000000000000;
  }

  result = sub_2490B3854(*(v1 + 24), *(v1 + 32));
  *(v1 + 24) = v5;
  *(v1 + 32) = v7;
  return result;
}

uint64_t (*sub_2490B18E8(id **a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_2490A6F70(v2);
  return sub_2490B6480;
}

void sub_2490B1958(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

uint64_t sub_2490B19A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 28);
  v5 = sub_24910C26C();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_2490B1A14(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 28);
  v5 = sub_24910C26C();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

void *MTMutableTimer.init(_:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED78F0, &qword_24910EB70);
  MEMORY[0x28223BE20](v2 - 8);
  v56 = v54 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED78F8, &unk_24910EF90);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v54 - v5;
  v7 = sub_24910C02C();
  v8 = *(v7 - 8);
  v58 = v7;
  v59 = v8;
  MEMORY[0x28223BE20](v7);
  v57 = v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_24910C26C();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED7900, &qword_24910EB50);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = v54 - v15;
  v17 = sub_24910C2FC();
  v18 = *(v17 - 1);
  MEMORY[0x28223BE20](v17);
  v20 = v54 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24910C27C();
  if ((*(v18 + 48))(v16, 1, v17) != 1)
  {
    v21 = *(v18 + 32);
    v55 = v17;
    v21(v20, v16, v17);
    v22 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    v60 = v20;
    v23 = sub_24910C2AC();
    v24 = [v22 initWithIdentifier_];

    v17 = v24;
    [v17 setState_];
    v25 = type metadata accessor for DTSyncedTimer(0);
    sub_24910C23C();
    sub_24910C24C();
    v27 = v26;
    (*(v11 + 8))(v13, v10);
    v28 = *(a1 + 16);
    v29 = v28 - v27;
    v30 = v27 < v28;
    v31 = 1.0;
    if (v30)
    {
      v31 = v29;
    }

    [v17 setDuration_];

    if (*(a1 + v25[9] + 8))
    {
      v32 = sub_24910D09C();
      sub_24910D06C();
      v34 = v58;
      v33 = v59;
      if ((*(v59 + 48))(v6, 1, v58) == 1)
      {
        sub_2490A487C(v6, &qword_27EED78F8, &unk_24910EF90);
      }

      else
      {
        v54[1] = v32;
        v35 = v57;
        (*(v33 + 32))(v57, v6, v34);
        v36 = v56;
        sub_24910C01C();
        v37 = v36;
        v38 = sub_24910C1AC();
        v39 = *(v38 - 8);
        if ((*(v39 + 48))(v37, 1, v38) == 1)
        {
          (*(v59 + 8))(v35, v34);
          sub_2490A487C(v37, &qword_27EED78F0, &qword_24910EB70);
        }

        else
        {
          v40 = sub_24910C13C();
          v42 = v41;
          (*(v39 + 8))(v37, v38);
          v43 = [v17 siriContext];
          if (v43)
          {
            v44 = v43;
            v45 = sub_24910CC2C();
          }

          else
          {
            v45 = MEMORY[0x277D84F98];
          }

          *&v63 = sub_24910D08C();
          *(&v63 + 1) = v46;
          v47 = MEMORY[0x277D837D0];
          sub_24910D1FC();
          v64 = v47;
          *&v63 = v40;
          *(&v63 + 1) = v42;
          sub_2490B45E0(&v63, v62);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v61 = v45;
          sub_2490B3360(v62, v65, isUniquelyReferenced_nonNull_native);
          sub_2490B45F0(v65);
          v49 = sub_24910CC1C();

          [v17 setSiriContext_];

          (*(v59 + 8))(v57, v58);
        }
      }
    }

    if (*(a1 + v25[10] + 8))
    {
      v50 = sub_24910CC8C();
    }

    else
    {
      v50 = 0;
    }

    [v17 setTitle_];

    v51 = *(a1 + v25[8]);
    if (v51 > 1)
    {
      v52 = v60;
      if (v51 == 2)
      {
        v51 = 2;
      }

      else
      {
        v51 = 3;
      }
    }

    else
    {
      v52 = v60;
      if (!v51)
      {
        goto LABEL_24;
      }
    }

    [v17 setState_];
LABEL_24:
    (*(v18 + 8))(v52, v55);
    sub_2490A4414(a1, type metadata accessor for DTSyncedTimer);
    return v17;
  }

  sub_2490A487C(v16, &qword_27EED7900, &qword_24910EB50);
  sub_24910C7DC();
  sub_24910C7EC();
  swift_willThrow();
  sub_2490A4414(a1, type metadata accessor for DTSyncedTimer);
  return v17;
}

uint64_t sub_2490B225C@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
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
    v10 = sub_24910C03C();
    if (v10)
    {
      v11 = sub_24910C05C();
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
      result = sub_24910C04C();
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
  v10 = sub_24910C03C();
  if (!v10)
  {
    goto LABEL_21;
  }

  v18 = sub_24910C05C();
  if (__OFSUB__(v15, v18))
  {
LABEL_34:
    __break(1u);
  }

  v10 += v15 - v18;
LABEL_21:
  result = sub_24910C04C();
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

uint64_t sub_2490B248C(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v13[2] = *MEMORY[0x277D85DE8];
  v7 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v7)
    {
      v13[0] = a1;
      LOWORD(v13[1]) = a2;
      BYTE2(v13[1]) = BYTE2(a2);
      BYTE3(v13[1]) = BYTE3(a2);
      BYTE4(v13[1]) = BYTE4(a2);
      BYTE5(v13[1]) = BYTE5(a2);
      goto LABEL_9;
    }

    v8 = a1;
    v9 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

LABEL_7:
    v10 = sub_2490B39A0(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    sub_2490A453C(a3, a4);
    return v10 & 1;
  }

  if (v7 == 2)
  {
    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
    goto LABEL_7;
  }

  memset(v13, 0, 14);
LABEL_9:
  sub_2490B225C(v13, a3, a4, &v12);
  v10 = v4;
  sub_2490A453C(a3, a4);
  if (!v4)
  {
    v10 = v12;
  }

  return v10 & 1;
}

uint64_t sub_2490B261C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EED79F0, &unk_24910FE70);
  result = sub_24910D21C();
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
      v17 = *(*(v3 + 48) + (v14 | (v6 << 6)));
      sub_24910D60C();
      sub_24910CCCC();

      result = sub_24910D62C();
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
      *(*(v5 + 48) + v13) = v17;
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

uint64_t sub_2490B293C(uint64_t result, unint64_t a2, char a3)
{
  v27 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_53;
  }

  if (a3)
  {
    sub_2490B261C(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      result = sub_2490B2C34();
      goto LABEL_53;
    }

    sub_2490B2D74(v5 + 1);
  }

  v7 = *v3;
  result = sub_2490AB730(*(*v3 + 40), v27);
  v8 = -1 << *(v7 + 32);
  a2 = result & ~v8;
  if ((*(v7 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v9 = ~v8;
    do
    {
      v10 = *(*(v7 + 48) + a2);
      if (v10 <= 2)
      {
        if (*(*(v7 + 48) + a2))
        {
          if (v10 == 1)
          {
            v11 = 0x79616473657574;
          }

          else
          {
            v11 = 0x616473656E646577;
          }

          if (v10 == 1)
          {
            v12 = 0xE700000000000000;
          }

          else
          {
            v12 = 0xE900000000000079;
          }
        }

        else
        {
          v12 = 0xE600000000000000;
          v11 = 0x7961646E6F6DLL;
        }
      }

      else if (*(*(v7 + 48) + a2) > 4u)
      {
        if (v10 == 5)
        {
          v12 = 0xE800000000000000;
          v11 = 0x7961647275746173;
        }

        else
        {
          v11 = 0x7961646E7573;
          v12 = 0xE600000000000000;
        }
      }

      else
      {
        if (v10 == 3)
        {
          v11 = 0x7961647372756874;
        }

        else
        {
          v11 = 0x796164697266;
        }

        if (v10 == 3)
        {
          v12 = 0xE800000000000000;
        }

        else
        {
          v12 = 0xE600000000000000;
        }
      }

      v13 = 0x7961646E7573;
      if (v27 == 5)
      {
        v13 = 0x7961647275746173;
        v14 = 0xE800000000000000;
      }

      else
      {
        v14 = 0xE600000000000000;
      }

      v15 = 0x7961647372756874;
      if (v27 == 3)
      {
        v16 = 0xE800000000000000;
      }

      else
      {
        v15 = 0x796164697266;
        v16 = 0xE600000000000000;
      }

      if (v27 <= 4u)
      {
        v13 = v15;
        v14 = v16;
      }

      v17 = 0x616473656E646577;
      if (v27 == 1)
      {
        v17 = 0x79616473657574;
      }

      v18 = 0xE900000000000079;
      if (v27 == 1)
      {
        v18 = 0xE700000000000000;
      }

      if (!v27)
      {
        v17 = 0x7961646E6F6DLL;
        v18 = 0xE600000000000000;
      }

      v19 = v27 <= 2u ? v17 : v13;
      v20 = v27 <= 2u ? v18 : v14;
      if (v11 == v19 && v12 == v20)
      {
        goto LABEL_56;
      }

      v21 = sub_24910D54C();

      if (v21)
      {
        goto LABEL_57;
      }

      a2 = (a2 + 1) & v9;
    }

    while (((*(v7 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_53:
  v22 = *v26;
  *(*v26 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v22 + 48) + a2) = v27;
  v23 = *(v22 + 16);
  v24 = __OFADD__(v23, 1);
  v25 = v23 + 1;
  if (!v24)
  {
    *(v22 + 16) = v25;
    return result;
  }

  __break(1u);
LABEL_56:

LABEL_57:
  result = sub_24910D56C();
  __break(1u);
  return result;
}

void *sub_2490B2C34()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EED79F0, &unk_24910FE70);
  v2 = *v0;
  v3 = sub_24910D20C();
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
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14))
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

uint64_t sub_2490B2D74(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EED79F0, &unk_24910FE70);
  result = sub_24910D21C();
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
      v16 = *(*(v3 + 48) + (v13 | (v6 << 6)));
      sub_24910D60C();
      sub_24910CCCC();

      result = sub_24910D62C();
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
      *(*(v5 + 48) + v12) = v16;
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

unint64_t sub_2490B3064(uint64_t a1)
{
  v2 = sub_24910D1DC();

  return sub_2490B3528(a1, v2);
}

uint64_t sub_2490B30A8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED79E8, &qword_24910FE68);
  result = sub_24910D36C();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v2;
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
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = v19 | (v8 << 6);
      v23 = *(v5 + 48) + 40 * v22;
      if (v4)
      {
        v24 = *v23;
        v25 = *(v23 + 16);
        v38 = *(v23 + 32);
        v36 = v24;
        v37 = v25;
        sub_2490B45E0((*(v5 + 56) + 32 * v22), v35);
      }

      else
      {
        sub_2490B63E8(v23, &v36);
        sub_2490A4944(*(v5 + 56) + 32 * v22, v35);
      }

      result = sub_24910D1DC();
      v26 = -1 << *(v7 + 32);
      v27 = result & ~v26;
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
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = *(v7 + 48) + 40 * v15;
      v17 = v36;
      v18 = v37;
      *(v16 + 32) = v38;
      *v16 = v17;
      *(v16 + 16) = v18;
      result = sub_2490B45E0(v35, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if (v4)
    {
      v33 = 1 << *(v5 + 32);
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

    v3 = v34;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

_OWORD *sub_2490B3360(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_2490B3064(a2);
  v11 = v8[2];
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_15;
  }

  v14 = v9;
  v15 = v8[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      sub_2490B35F0();
      goto LABEL_7;
    }

    sub_2490B30A8(v13, a3 & 1);
    v19 = sub_2490B3064(a2);
    if ((v14 & 1) == (v20 & 1))
    {
      v10 = v19;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_2490B63E8(a2, v21);
      return sub_2490B34AC(v10, v21, a1, v16);
    }

LABEL_15:
    result = sub_24910D57C();
    __break(1u);
    return result;
  }

LABEL_7:
  v16 = *v4;
  if ((v14 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v17 = (v16[7] + 32 * v10);
  __swift_destroy_boxed_opaque_existential_0(v17);

  return sub_2490B45E0(a1, v17);
}

_OWORD *sub_2490B34AC(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v5 = a4[6] + 40 * a1;
  v6 = *(a2 + 16);
  *v5 = *a2;
  *(v5 + 16) = v6;
  *(v5 + 32) = *(a2 + 32);
  result = sub_2490B45E0(a3, (a4[7] + 32 * a1));
  v8 = a4[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v10;
  }

  return result;
}

unint64_t sub_2490B3528(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_2490B63E8(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x24C1F1C10](v9, a1);
      sub_2490B45F0(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

void *sub_2490B35F0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EED79E8, &qword_24910FE68);
  v2 = *v0;
  v3 = sub_24910D35C();
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
        v18 = 40 * v17;
        sub_2490B63E8(*(v2 + 48) + 40 * v17, v23);
        v17 *= 32;
        sub_2490A4944(*(v2 + 56) + v17, v22);
        v19 = *(v4 + 48) + v18;
        v20 = v23[0];
        v21 = v23[1];
        *(v19 + 32) = v24;
        *v19 = v20;
        *(v19 + 16) = v21;
        result = sub_2490B45E0(v22, (*(v4 + 56) + v17));
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

id sub_2490B3794()
{
  v6[1] = *MEMORY[0x277D85DE8];
  v1 = sub_24910C1CC();
  v6[0] = 0;
  v2 = [v0 initForReadingFromData:v1 error:v6];

  if (v2)
  {
    v3 = v6[0];
  }

  else
  {
    v4 = v6[0];
    sub_24910C11C();

    swift_willThrow();
  }

  return v2;
}

uint64_t sub_2490B3854(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_2490A453C(result, a2);
  }

  return result;
}

uint64_t sub_2490B3868(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_2490B38D0(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_2490B3924(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_2490B38D0(result, a2);
  }

  return result;
}

uint64_t sub_2490B3938(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2490B39A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = sub_24910C03C();
  v11 = result;
  if (result)
  {
    result = sub_24910C05C();
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

  sub_24910C04C();
  sub_2490B225C(v11, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return v12;
}

BOOL sub_2490B3A58(_BOOL8 result, unint64_t a2, uint64_t a3, unint64_t a4)
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
          sub_2490B38D0(a3, a4);
          return sub_2490B248C(v13, a2, a3, a4) & 1;
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