uint64_t sub_2380103D0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 16 * a3;
    v8 = result - a3;
LABEL_5:
    v9 = (v6 + 16 * v4);
    v10 = *v9;
    v11 = v9[1];
    v12 = v8;
    v13 = v7;
    while (1)
    {
      result = *(v13 - 2);
      v14 = result == v10 && *(v13 - 1) == v11;
      if (v14 || (result = sub_2380324E4(), (result & 1) == 0))
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

      v10 = *v13;
      v11 = v13[1];
      *v13 = *(v13 - 1);
      *(v13 - 1) = v11;
      *(v13 - 2) = v10;
      v13 -= 2;
      if (__CFADD__(v12++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_2380104A0(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
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
      result = sub_238010D30(v8);
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
        sub_238010A7C((*a3 + 16 * *v87), (*a3 + 16 * *v89), (*a3 + 16 * v90), v9);
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
      v11 = (*a3 + 16 * v9);
      result = *v11;
      if (*v11 == *v10 && v11[1] == v10[1])
      {
        v13 = 0;
      }

      else
      {
        result = sub_2380324E4();
        v13 = result;
      }

      v7 = v9 + 2;
      if (v9 + 2 < v6)
      {
        v14 = v11 + 3;
        v15 = v11 + 3;
        do
        {
          v17 = v15[2];
          v15 += 2;
          v16 = v17;
          result = *(v14 - 1);
          if (result == v14[1] && *v14 == v16)
          {
            if (v13)
            {
              goto LABEL_24;
            }
          }

          else
          {
            result = sub_2380324E4();
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
      result = sub_237FB5990(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v40 = *(v8 + 2);
    v39 = *(v8 + 3);
    v41 = v40 + 1;
    if (v40 >= v39 >> 1)
    {
      result = sub_237FB5990((v39 > 1), v40 + 1, 1, v8);
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
        sub_238010A7C((*a3 + 16 * v82), (*a3 + 16 * *&v8[16 * v44 + 32]), (*a3 + 16 * v83), v43);
        if (v5)
        {
        }

        if (v83 < v82)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_238010D30(v8);
        }

        if (v9 >= *(v8 + 2))
        {
          goto LABEL_118;
        }

        v84 = &v8[16 * v9];
        *(v84 + 4) = v82;
        *(v84 + 5) = v83;
        result = sub_238010CA4(v44);
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
    v37 = *(v36 - 2) == v33 && *(v36 - 1) == v34;
    if (v37 || (result = sub_2380324E4(), (result & 1) == 0))
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

uint64_t sub_238010A7C(char *__dst, char *__src, char *a3, char *a4)
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

      v16 = *v4 == *v6 && *(v4 + 1) == *(v6 + 1);
      if (!v16 && (sub_2380324E4() & 1) != 0)
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
      v21 = *(v6 - 2) == v19 && *(v6 - 1) == v20;
      if (!v21 && (sub_2380324E4() & 1) != 0)
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

uint64_t sub_238010CA4(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_238010D30(v3);
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

BOOL sub_238010DB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      if (a1 > 0x20u || ((0x100003E01uLL >> a1) & 1) == 0)
      {
        goto LABEL_10;
      }

      return 0;
    }

    if ((a1 & 0x1000000000000000) != 0)
    {
      v4 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      if (v4 >= 0x21 || ((0x100003E01uLL >> v4) & 1) == 0)
      {
LABEL_10:
        v6 = _swift_stdlib_strtod_clocale();
        return v6 && *v6 == 0;
      }

      return 0;
    }
  }

  sub_2380322A4();
  if (!v3)
  {
    return v8;
  }

  return v5;
}

uint64_t sub_238010EC4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE55D8, &qword_238035C40);
    v3 = sub_238032284();
    v4 = 0;
    v5 = v3 + 56;
    v25 = v1;
    v26 = a1 + 32;
    v6 = v1;
    while (1)
    {
      v7 = *(v26 + 8 * v4);
      sub_238031EA4();
      sub_2380325B4();
      v27 = v7;
      sub_238031ED4();
      v8 = sub_2380325F4();

      v10 = -1 << *(v3 + 32);
      v11 = v8 & ~v10;
      v12 = v11 >> 6;
      v13 = *(v5 + 8 * (v11 >> 6));
      v14 = 1 << v11;
      if (((1 << v11) & v13) == 0)
      {
        goto LABEL_15;
      }

      v15 = ~v10;
      do
      {
        v16 = sub_238031EA4();
        v18 = v17;
        if (v16 == sub_238031EA4() && v18 == v19)
        {

LABEL_4:
          v6 = v25;
          goto LABEL_5;
        }

        v21 = sub_2380324E4();

        if (v21)
        {

          goto LABEL_4;
        }

        v11 = (v11 + 1) & v15;
        v12 = v11 >> 6;
        v13 = *(v5 + 8 * (v11 >> 6));
        v14 = 1 << v11;
      }

      while (((1 << v11) & v13) != 0);
      v6 = v25;
LABEL_15:
      *(v5 + 8 * v12) = v14 | v13;
      *(*(v3 + 48) + 8 * v11) = v27;
      v22 = *(v3 + 16);
      v23 = __OFADD__(v22, 1);
      v24 = v22 + 1;
      if (v23)
      {
        __break(1u);
        return result;
      }

      *(v3 + 16) = v24;
LABEL_5:
      if (++v4 == v6)
      {
        return v3;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

unint64_t sub_2380110B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v9 = *(TupleTypeMetadata2 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](TupleTypeMetadata2);
  v12 = v23 - v11;
  if (sub_238032004())
  {
    sub_2380323B4();
    v13 = sub_2380323A4();
  }

  else
  {
    v13 = MEMORY[0x277D84F98];
  }

  result = sub_238032004();
  if (result)
  {
    if (result >= 1)
    {
      v23[0] = v10;
      v27 = a4;
      v15 = 0;
      v16 = *(TupleTypeMetadata2 + 48);
      v25 = a3;
      v26 = (v9 + 16);
      v23[2] = a2 - 8;
      v24 = v16;
      v23[1] = a3 - 8;
      while (1)
      {
        v17 = result;
        if (sub_238031FE4())
        {
          (*(v9 + 16))(v12, a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v15, TupleTypeMetadata2);
        }

        else
        {
          result = sub_2380322C4();
          if (v23[0] != 8)
          {
            goto LABEL_19;
          }

          v28 = result;
          (*v26)(v12, &v28, TupleTypeMetadata2);
          swift_unknownObjectRelease();
        }

        result = sub_23800FE28(v12, a2, v27);
        if (v18)
        {
          break;
        }

        v19 = result;
        *(v13 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
        (*(*(a2 - 8) + 32))(v13[6] + *(*(a2 - 8) + 72) * result, v12, a2);
        result = (*(*(v25 - 8) + 32))(v13[7] + *(*(v25 - 8) + 72) * v19, &v12[v24]);
        v20 = v13[2];
        v21 = __OFADD__(v20, 1);
        v22 = v20 + 1;
        if (v21)
        {
          goto LABEL_17;
        }

        ++v15;
        v13[2] = v22;
        result = v17;
        if (v17 == v15)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_17:
      __break(1u);
    }

    __break(1u);
LABEL_19:
    __break(1u);
  }

  else
  {
LABEL_15:

    return v13;
  }

  return result;
}

unint64_t sub_2380113A4()
{
  result = qword_27DEE5508;
  if (!qword_27DEE5508)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEE5500, &qword_238035F40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEE5508);
  }

  return result;
}

unint64_t sub_238011408(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DEE5510;
  if (!qword_27DEE5510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEE5510);
  }

  return result;
}

uint64_t sub_23801147C(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_2380114A4()
{
  result = qword_280C350E8;
  if (!qword_280C350E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEE5528, &unk_2380359E8);
    sub_238011FC8(&qword_280C352A0, type metadata accessor for _DeviceActivityData.Metadata, &protocol conformance descriptor for _DeviceActivityData.Metadata);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C350E8);
  }

  return result;
}

uint64_t sub_238011560(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DEE5760, &unk_238036530);
    v3 = sub_238032284();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      sub_2380325B4();

      sub_238031ED4();
      result = sub_2380325F4();
      v11 = ~(-1 << *(v3 + 32));
      for (i = result & v11; ; i = (i + 1) & v11)
      {
        v13 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v13) == 0)
        {
          break;
        }

        v14 = (*(v3 + 48) + 16 * i);
        if (*v14 != v9 || v14[1] != v8)
        {
          result = sub_2380324E4();
          if ((result & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_4;
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v13;
      v16 = (*(v3 + 48) + 16 * i);
      *v16 = v9;
      v16[1] = v8;
      v17 = *(v3 + 16);
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (!v18)
      {
        *(v3 + 16) = v19;
LABEL_4:
        if (++v4 == v1)
        {
          return v3;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84FA0];
  }

  return result;
}

unint64_t sub_23801171C(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
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

unint64_t sub_238011804(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DEE5530;
  if (!qword_27DEE5530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEE5530);
  }

  return result;
}

__n128 __swift_memcpy72_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_23801187C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
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

uint64_t sub_2380118C4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_238011948(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DEE5538;
  if (!qword_27DEE5538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEE5538);
  }

  return result;
}

unint64_t sub_23801199C()
{
  result = qword_27DEE5560;
  if (!qword_27DEE5560)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEE5558, &qword_238035BC0);
    sub_238011FC8(&qword_27DEE5568, MEMORY[0x277CC9A70], MEMORY[0x277CC9A78]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEE5560);
  }

  return result;
}

uint64_t sub_238011A58(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_238011ADC()
{
  result = qword_280C35000;
  if (!qword_280C35000)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEE54B0, &qword_2380357B0);
    sub_238011FC8(&qword_280C35008, MEMORY[0x277CC9A70], MEMORY[0x277CC9A90]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C35000);
  }

  return result;
}

uint64_t sub_238011B90(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEE5588, &qword_238035BE0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_238011C00()
{
  result = qword_280C34AC0;
  if (!qword_280C34AC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEE55A0, &qword_238035BF8);
    sub_238011FC8(&qword_280C35030, MEMORY[0x277CC9578], MEMORY[0x277CC9580]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C34AC0);
  }

  return result;
}

unint64_t sub_238011CBC()
{
  result = qword_280C35018;
  if (!qword_280C35018)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEE51E0, &qword_2380365F0);
    sub_238011FC8(&qword_280C35348, MEMORY[0x277CC9578], MEMORY[0x277CC95A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C35018);
  }

  return result;
}

_BYTE *sub_238011D70@<X0>(_BYTE *result@<X0>, BOOL *a2@<X8>)
{
  v2 = *result;
  v3 = v2 > 0x20;
  v4 = (1 << v2) & 0x100003E01;
  if (v3 || v4 == 0)
  {
    result = _swift_stdlib_strtod_clocale();
    if (result)
    {
      v7 = *result == 0;
    }

    else
    {
      v7 = 0;
    }

    *a2 = v7;
  }

  else
  {
    *a2 = 0;
  }

  return result;
}

uint64_t sub_238011DF0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_238011E50()
{
  result = qword_280C34AA8;
  if (!qword_280C34AA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEE55C8, &qword_238035C28);
    sub_238011FC8(&qword_280C34F60, type metadata accessor for _DeviceActivityData.ActivitySegment, &protocol conformance descriptor for _DeviceActivityData.ActivitySegment);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C34AA8);
  }

  return result;
}

unint64_t sub_238011F0C()
{
  result = qword_280C34A98;
  if (!qword_280C34A98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEE5528, &unk_2380359E8);
    sub_238011FC8(&qword_280C34F48, type metadata accessor for _DeviceActivityData.Metadata, &protocol conformance descriptor for _DeviceActivityData.Metadata);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280C34A98);
  }

  return result;
}

uint64_t sub_238011FC8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t DeviceActivityFilter.SegmentInterval.interval.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for DeviceActivityFilter.SegmentInterval(0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_238018054(v1, v5);
  v6 = sub_238031654();
  return (*(*(v6 - 8) + 32))(a1, v5, v6);
}

uint64_t static _SegmentInterval.codableSegmentInterval(for:)@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = type metadata accessor for DeviceActivityFilter.SegmentInterval(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_238018054(a1, v6);
  *a2 = swift_getEnumCaseMultiPayload();
  v7 = sub_238031654();
  return (*(*(v7 - 8) + 8))(v6, v7);
}

uint64_t _SegmentInterval.unlocalizedSegmentName.getter()
{
  v1 = 0x796C696144;
  if (*v0 != 1)
  {
    v1 = 0x796C6B656557;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x796C72756F48;
  }
}

uint64_t DeviceActivityFilter.init(segment:devices:applications:categories:webDomains:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v11 = *a2;
  v12 = type metadata accessor for DeviceActivityFilter(0);
  v13 = (a6 + v12[6]);
  v14 = (a6 + v12[8]);
  *(a6 + v12[19]) = 0;
  sub_238014F74(a6);
  v15 = a6 + v12[5];
  *v15 = 0;
  *(v15 + 8) = 1;
  *v13 = 0;
  v13[1] = 0;
  *(a6 + v12[7]) = v11;
  *v14 = 0;
  v14[1] = 0;
  *(a6 + v12[9]) = a3;
  v16 = MEMORY[0x277D84FA0];
  *(a6 + v12[10]) = MEMORY[0x277D84FA0];
  *(a6 + v12[11]) = a4;
  *(a6 + v12[12]) = a5;
  *(a6 + v12[13]) = v16;
  *(a6 + v12[14]) = v16;
  *(a6 + v12[15]) = v16;
  *(a6 + v12[16]) = v16;
  *(a6 + v12[17]) = v16;
  result = sub_2380180B8(a1);
  *(a6 + v12[18]) = v16;
  return result;
}

uint64_t sub_238012728@<X0>(uint64_t x8_0@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE54B0, &qword_2380357B0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v16 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE54B8, &qword_2380357B8);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v16 - v7;
  v9 = sub_2380316C4();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_238031B74();
  (*(*(v13 - 8) + 56))(v8, 1, 1, v13);
  v14 = sub_238031B94();
  (*(*(v14 - 8) + 56))(v5, 1, 1, v14);
  sub_2380316B4();
  DateInterval.rounded(to:)(v12, x8_0);
  return (*(v10 + 8))(v12, v9);
}

uint64_t DateInterval.roundedToNearestWeek.getter@<X0>(uint64_t a1@<X8>)
{
  v17 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE54B0, &qword_2380357B0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v17 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE54B8, &qword_2380357B8);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v17 - v5;
  v7 = sub_2380316C4();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_238031B74();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_238031B44();
  (*(v12 + 56))(v6, 1, 1, v11);
  v15 = sub_238031B94();
  (*(*(v15 - 8) + 56))(v3, 1, 1, v15);
  sub_238031AE4();
  sub_2380316B4();
  DateInterval.rounded(to:)(v10, v17);
  (*(v8 + 8))(v10, v7);
  return (*(v12 + 8))(v14, v11);
}

uint64_t static DateInterval.today.getter@<X0>(uint64_t a1@<X8>)
{
  v27 = a1;
  v28 = sub_238031A64();
  v1 = *(v28 - 8);
  v2 = MEMORY[0x28223BE20](v28);
  v26 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v5 = &v25 - v4;
  v6 = sub_238031B64();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE50C8, &qword_2380357C0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v25 - v11;
  v13 = sub_238031B74();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v25 - v18;
  sub_238031B44();
  sub_238031B44();
  (*(v7 + 104))(v9, *MEMORY[0x277CC9968], v6);
  sub_238031A54();
  sub_238031AD4();
  v25 = *(v1 + 8);
  v25(v5, v28);
  (*(v7 + 8))(v9, v6);
  v20 = *(v14 + 8);
  v20(v17, v13);
  v21 = sub_238031654();
  v22 = *(v21 - 8);
  if ((*(v22 + 48))(v12, 1, v21) == 1)
  {
    sub_237FA5750(v12, &qword_27DEE50C8, &qword_2380357C0);
    v23 = v26;
    sub_238031A54();
    sub_238031AC4();
    v25(v23, v28);
    sub_238031A54();
    sub_238031614();
    return (v20)(v19, v13);
  }

  else
  {
    v20(v19, v13);
    return (*(v22 + 32))(v27, v12, v21);
  }
}

uint64_t static DateInterval.thisWeek.getter@<X0>(uint64_t a1@<X8>)
{
  v25 = a1;
  v1 = sub_238031A64();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_238031B64();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_238031B74();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE50C8, &qword_2380357C0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v24 - v14;
  sub_238031B44();
  (*(v6 + 104))(v8, *MEMORY[0x277CC9940], v5);
  sub_238031A54();
  sub_238031AD4();
  (*(v2 + 8))(v4, v1);
  (*(v6 + 8))(v8, v5);
  (*(v10 + 8))(v12, v9);
  v16 = sub_238031654();
  v17 = *(v16 - 8);
  if ((*(v17 + 48))(v15, 1, v16) != 1)
  {
    return (*(v17 + 32))(v25, v15, v16);
  }

  v18 = v25;
  sub_237FA5750(v15, &qword_27DEE50C8, &qword_2380357C0);
  if (qword_280C35388 != -1)
  {
    swift_once();
  }

  v19 = sub_238031DB4();
  __swift_project_value_buffer(v19, qword_280C36C50);
  v20 = sub_238031D94();
  v21 = sub_2380320F4();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&dword_237FA1000, v20, v21, "Failed to create a date interval for this week. Falling back to today.", v22, 2u);
    MEMORY[0x2383E5E30](v22, -1, -1);
  }

  return static DateInterval.today.getter(v18);
}

uint64_t static DateInterval.lastThirtyDays.getter@<X0>(uint64_t a1@<X8>)
{
  v69 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE54B0, &qword_2380357B0);
  MEMORY[0x28223BE20](v1 - 8);
  v68 = &v49 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE54B8, &qword_2380357B8);
  MEMORY[0x28223BE20](v3 - 8);
  v64 = &v49 - v4;
  v67 = sub_2380316C4();
  v70 = *(v67 - 8);
  MEMORY[0x28223BE20](v67);
  v62 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = sub_238031654();
  v61 = *(v63 - 8);
  v6 = MEMORY[0x28223BE20](v63);
  v66 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v60 = &v49 - v8;
  v9 = sub_238031B64();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_238031B74();
  v71 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v15 = &v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE51E0, &qword_2380365F0);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v49 - v17;
  v19 = sub_238031A64();
  v20 = *(v19 - 8);
  v21 = MEMORY[0x28223BE20](v19);
  v57 = (&v49 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = MEMORY[0x28223BE20](v21);
  v25 = &v49 - v24;
  MEMORY[0x28223BE20](v23);
  v65 = &v49 - v26;
  sub_238031B44();
  (*(v10 + 104))(v12, *MEMORY[0x277CC9968], v9);
  sub_238031A54();
  sub_238031B24();
  v58 = *(v20 + 8);
  v59 = v20 + 8;
  v58(v25, v19);
  (*(v10 + 8))(v12, v9);
  v27 = v71;
  v28 = v71 + 8;
  v29 = *(v71 + 8);
  v30 = v13;
  v29(v15, v13);
  v31 = v19;
  if ((*(v20 + 48))(v18, 1, v19) == 1)
  {
    v32 = v69;
    sub_237FA5750(v18, &qword_27DEE51E0, &qword_2380365F0);
    if (qword_280C35388 != -1)
    {
      swift_once();
    }

    v33 = sub_238031DB4();
    __swift_project_value_buffer(v33, qword_280C36C50);
    v34 = sub_238031D94();
    v35 = sub_2380320F4();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&dword_237FA1000, v34, v35, "Failed to create a date interval for the last thirty days. Falling back to today.", v36, 2u);
      MEMORY[0x2383E5E30](v36, -1, -1);
    }

    return static DateInterval.today.getter(v32);
  }

  else
  {
    v38 = *(v20 + 32);
    v39 = v65;
    v56 = v31;
    v38(v65, v18, v31);
    (*(v20 + 16))(v25, v39, v31);
    sub_238031A54();
    v40 = v60;
    sub_238031614();
    sub_238031B44();
    v41 = *(v27 + 56);
    v71 = v27 + 56;
    v57 = v41;
    v42 = v64;
    v41(v64, 1, 1, v30);
    v54 = sub_238031B94();
    v43 = *(v54 - 8);
    v53 = *(v43 + 56);
    v55 = v43 + 56;
    v53(v68, 1, 1, v54);
    sub_238031AE4();
    v44 = v62;
    sub_2380316B4();
    DateInterval.rounded(to:)(v44, v66);
    v45 = *(v70 + 8);
    v51 = v28;
    v52 = v45;
    v70 += 8;
    v45(v44, v67);
    v50 = v30;
    v29(v15, v30);
    v46 = *(v61 + 8);
    v47 = v63;
    v46(v40, v63);
    sub_238031B44();
    v57(v42, 1, 1, v30);
    v53(v68, 1, 1, v54);
    sub_238031AE4();
    sub_2380316B4();
    v48 = v66;
    DateInterval.rounded(to:)(v44, v69);
    v52(v44, v67);
    v29(v15, v50);
    v46(v48, v47);
    return (v58)(v65, v56);
  }
}

uint64_t DateInterval.rounded(to:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v160 = a1;
  v149 = a2;
  v150 = sub_2380316C4();
  v140 = *(v150 - 8);
  v4 = MEMORY[0x28223BE20](v150);
  v132 = &v127 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v134 = &v127 - v6;
  v157 = sub_238031654();
  v146 = *(v157 - 8);
  v7 = MEMORY[0x28223BE20](v157);
  v145 = (&v127 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v7);
  v133 = &v127 - v9;
  v135 = sub_238031B14();
  v142 = *(v135 - 8);
  MEMORY[0x28223BE20](v135);
  v138 = &v127 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_238031B04();
  v137 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v136 = &v127 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v158 = sub_238031AF4();
  v13 = *(v158 - 1);
  MEMORY[0x28223BE20](v158);
  v15 = &v127 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE51E0, &qword_2380365F0);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v131 = &v127 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v139 = &v127 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v141 = (&v127 - v22);
  MEMORY[0x28223BE20](v21);
  v162 = &v127 - v23;
  v24 = sub_238031A64();
  v25 = *(v24 - 8);
  v26 = MEMORY[0x28223BE20](v24);
  v129 = &v127 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x28223BE20](v26);
  v128 = (&v127 - v29);
  v30 = MEMORY[0x28223BE20](v28);
  v153 = (&v127 - v31);
  MEMORY[0x28223BE20](v30);
  v33 = (&v127 - v32);
  v34 = sub_238031B74();
  v147 = *(v34 - 8);
  v148 = v34;
  MEMORY[0x28223BE20](v34);
  v36 = &v127 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_238031B44();
  sub_238031634();
  v37 = sub_238031B34();
  v151 = v24;
  v152 = v25;
  isa = v25[1].isa;
  isa(v33, v24);
  v159 = v36;
  v155 = v33;
  v156 = v25 + 1;
  v161 = v3;
  v154 = isa;
  v143 = v13;
  v144 = v11;
  v130 = v15;
  if (v37)
  {
    v39 = v162;
    sub_238031634();
    v41 = v151;
    v40 = v152;
    (v152[7].isa)(v39, 0, 1, v151);
    v42 = v142;
    v43 = v158;
  }

  else
  {
    sub_238031634();
    v44 = v11;
    (*(v13 + 104))(v15, *MEMORY[0x277CC9878], v158);
    v45 = v137;
    v46 = v136;
    (*(v137 + 104))(v136, *MEMORY[0x277CC98F0], v44);
    v47 = v142;
    v48 = v138;
    v49 = v135;
    (*(v142 + 13))(v138, *MEMORY[0x277CC9900], v135);
    sub_238031B54();
    (*(v47 + 1))(v48, v49);
    v50 = v45;
    isa = v154;
    (*(v50 + 8))(v46, v144);
    v51 = v15;
    v43 = v158;
    (*(v143 + 8))(v51, v158);
    v41 = v151;
    isa(v33, v151);
    v42 = v47;
    v40 = v152;
  }

  v52 = v141;
  sub_238018114(v162, v141);
  v142 = v40[6].isa;
  v53 = (v142)(v52, 1, v41);
  v54 = v145;
  v55 = v41;
  if (v53 == 1)
  {
    sub_237FA5750(v52, &qword_27DEE51E0, &qword_2380365F0);
    v56 = v160;
    if (qword_280C35388 != -1)
    {
      swift_once();
    }

    v57 = sub_238031DB4();
    __swift_project_value_buffer(v57, qword_280C36C50);
    v58 = v146;
    v59 = *(v146 + 16);
    v60 = v157;
    v59(v54, v161, v157);
    v61 = v140;
    v62 = v132;
    v63 = v56;
    v64 = v54;
    v65 = v150;
    (*(v140 + 16))(v132, v63, v150);
    v66 = sub_238031D94();
    LODWORD(v160) = sub_2380320F4();
    if (os_log_type_enabled(v66, v160))
    {
      v67 = v61;
      v68 = swift_slowAlloc();
      v153 = swift_slowAlloc();
      v163 = v153;
      *v68 = 136446466;
      v158 = v59;
      v69 = v155;
      v152 = v66;
      sub_238031634();
      sub_238018184(&qword_280C35020, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
      v70 = sub_2380324C4();
      v71 = v62;
      v73 = v72;
      v154(v69, v41);
      (*(v58 + 8))(v64, v157);
      v74 = sub_237FDF8EC(v70, v73, &v163);

      *(v68 + 4) = v74;
      *(v68 + 12) = 2082;
      sub_238018184(&qword_27DEE5628, MEMORY[0x277CC8990], MEMORY[0x277CC89C0]);
      v75 = v150;
      v76 = sub_2380324C4();
      v78 = v77;
      (*(v67 + 8))(v71, v75);
      v79 = sub_237FDF8EC(v76, v78, &v163);
      v59 = v158;

      *(v68 + 14) = v79;
      v80 = v152;
      _os_log_impl(&dword_237FA1000, v152, v160, "Failed to round start date down: %{public}s to components: %{public}s", v68, 0x16u);
      v81 = v153;
      swift_arrayDestroy();
      v60 = v157;
      MEMORY[0x2383E5E30](v81, -1, -1);
      MEMORY[0x2383E5E30](v68, -1, -1);
    }

    else
    {

      (*(v61 + 8))(v62, v65);
      (*(v58 + 8))(v64, v60);
    }

    sub_237FA5750(v162, &qword_27DEE51E0, &qword_2380365F0);
    (*(v147 + 8))(v159, v148);
    return (v59)(v149, v161, v60);
  }

  else
  {
    v82 = v42;
    v83 = v40[4].isa;
    v145 = v40 + 4;
    v141 = v83;
    v83(v153, v52, v41);
    v84 = v155;
    sub_238031604();
    v85 = sub_238031B34();
    v86 = isa;
    isa(v84, v55);
    if (v85)
    {
      v87 = v139;
      sub_238031604();
      (v40[7].isa)(v87, 0, 1, v55);
    }

    else
    {
      sub_238031604();
      v89 = v130;
      (*(v143 + 104))(v130, *MEMORY[0x277CC9878], v43);
      v90 = v137;
      v91 = v136;
      (*(v137 + 104))(v136, *MEMORY[0x277CC98E8], v144);
      v92 = v138;
      v93 = v135;
      (*(v82 + 13))(v138, *MEMORY[0x277CC9900], v135);
      v87 = v139;
      sub_238031B54();
      v94 = v92;
      v55 = v151;
      (*(v82 + 1))(v94, v93);
      (*(v90 + 8))(v91, v144);
      (*(v143 + 8))(v89, v158);
      v86(v155, v55);
    }

    v95 = v131;
    sub_238018114(v87, v131);
    v96 = (v142)(v95, 1, v55);
    v97 = v146;
    v98 = v134;
    v99 = v153;
    v100 = v133;
    if (v96 == 1)
    {
      sub_237FA5750(v95, &qword_27DEE51E0, &qword_2380365F0);
      if (qword_280C35388 != -1)
      {
        swift_once();
      }

      v101 = sub_238031DB4();
      __swift_project_value_buffer(v101, qword_280C36C50);
      v102 = v100;
      v103 = v157;
      v158 = *(v97 + 16);
      (v158)(v100, v161, v157);
      v104 = v140;
      v105 = v150;
      (*(v140 + 16))(v98, v160, v150);
      v106 = sub_238031D94();
      v107 = sub_2380320F4();
      if (os_log_type_enabled(v106, v107))
      {
        v108 = swift_slowAlloc();
        v152 = swift_slowAlloc();
        v163 = v152;
        *v108 = 136446466;
        v160 = v97 + 16;
        v109 = v155;
        LODWORD(v145) = v107;
        sub_238031604();
        sub_238018184(&qword_280C35020, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
        v110 = sub_2380324C4();
        v112 = v111;
        v155 = v106;
        v113 = v98;
        v114 = v154;
        v154(v109, v55);
        (*(v97 + 8))(v102, v157);
        v115 = sub_237FDF8EC(v110, v112, &v163);

        *(v108 + 4) = v115;
        *(v108 + 12) = 2082;
        sub_238018184(&qword_27DEE5628, MEMORY[0x277CC8990], MEMORY[0x277CC89C0]);
        v116 = v150;
        v117 = sub_2380324C4();
        v119 = v118;
        (*(v104 + 8))(v113, v116);
        v120 = sub_237FDF8EC(v117, v119, &v163);

        *(v108 + 14) = v120;
        v121 = v155;
        _os_log_impl(&dword_237FA1000, v155, v145, "Failed to round end date up: %{public}s to components: %{public}s", v108, 0x16u);
        v122 = v152;
        swift_arrayDestroy();
        v103 = v157;
        MEMORY[0x2383E5E30](v122, -1, -1);
        MEMORY[0x2383E5E30](v108, -1, -1);

        sub_237FA5750(v139, &qword_27DEE51E0, &qword_2380365F0);
        v114(v153, v55);
      }

      else
      {

        (*(v104 + 8))(v98, v105);
        (*(v97 + 8))(v102, v103);
        sub_237FA5750(v139, &qword_27DEE51E0, &qword_2380365F0);
        v154(v153, v55);
      }

      sub_237FA5750(v162, &qword_27DEE51E0, &qword_2380365F0);
      (*(v147 + 8))(v159, v148);
      return (v158)(v149, v161, v103);
    }

    else
    {
      v123 = v128;
      (v141)(v128, v95, v55);
      v124 = v87;
      v125 = v152[2].isa;
      (v125)(v155, v99, v55);
      (v125)(v129, v123, v55);
      sub_238031614();
      v126 = v154;
      v154(v123, v55);
      sub_237FA5750(v124, &qword_27DEE51E0, &qword_2380365F0);
      v126(v99, v55);
      sub_237FA5750(v162, &qword_27DEE51E0, &qword_2380365F0);
      return (*(v147 + 8))(v159, v148);
    }
  }
}

uint64_t sub_238014F74@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v29 = a1;
  v30 = sub_238031B74();
  v3 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v25 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE54B0, &qword_2380357B0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v25 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE54B8, &qword_2380357B8);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v25 - v9;
  v11 = sub_2380316C4();
  v27 = *(v11 - 8);
  v28 = v11;
  MEMORY[0x28223BE20](v11);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_238031654();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for DeviceActivityFilter.SegmentInterval(0);
  MEMORY[0x28223BE20](v18);
  v20 = &v25 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_238018054(v2, v20);
  LODWORD(v2) = swift_getEnumCaseMultiPayload();
  v21 = *(v15 + 32);
  v26 = v14;
  v21(v17, v20, v14);
  if (v2 > 1)
  {
    sub_238031B44();
    (*(v3 + 56))(v10, 1, 1, v30);
    v23 = sub_238031B94();
    (*(*(v23 - 8) + 56))(v7, 1, 1, v23);
    sub_238031AE4();
    sub_2380316B4();
    DateInterval.rounded(to:)(v13, v29);
    (*(v27 + 8))(v13, v28);
    (*(v3 + 8))(v25, v30);
  }

  else
  {
    (*(v3 + 56))(v10, 1, 1, v30);
    v22 = sub_238031B94();
    (*(*(v22 - 8) + 56))(v7, 1, 1, v22);
    sub_2380316B4();
    DateInterval.rounded(to:)(v13, v29);
    (*(v27 + 8))(v13, v28);
  }

  (*(v15 + 8))(v17, v26);
  return swift_storeEnumTagMultiPayload();
}

uint64_t DeviceActivityFilter.SegmentInterval.hash(into:)(uint64_t a1)
{
  v2 = sub_238031654();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DeviceActivityFilter.SegmentInterval(0);
  MEMORY[0x28223BE20](v6);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_238018054(v1, v8);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  (*(v3 + 32))(v5, v8, v2);
  MEMORY[0x2383E5730](EnumCaseMultiPayload);
  sub_238018184(&qword_27DEE51E8, MEMORY[0x277CC88A8], MEMORY[0x277CC88B8]);
  sub_238031E34();
  return (*(v3 + 8))(v5, v2);
}

uint64_t DeviceActivityFilter.SegmentInterval.hashValue.getter()
{
  sub_2380325B4();
  DeviceActivityFilter.SegmentInterval.hash(into:)(v1);
  return sub_2380325F4();
}

uint64_t sub_238015780()
{
  sub_2380325B4();
  DeviceActivityFilter.SegmentInterval.hash(into:)(v1);
  return sub_2380325F4();
}

uint64_t sub_2380157C4(uint64_t a1)
{
  sub_2380325B4();
  DeviceActivityFilter.SegmentInterval.hash(into:)(v2);
  return sub_2380325F4();
}

uint64_t DeviceActivityFilter.Users.hashValue.getter()
{
  v1 = *v0;
  sub_2380325B4();
  MEMORY[0x2383E5730](v1);
  return sub_2380325F4();
}

uint64_t sub_2380158B0()
{
  v1 = *v0;
  sub_2380325B4();
  MEMORY[0x2383E5730](v1);
  return sub_2380325F4();
}

uint64_t sub_238015924(uint64_t a1)
{
  v2 = *v1;
  sub_2380325B4();
  MEMORY[0x2383E5730](v2);
  return sub_2380325F4();
}

uint64_t static DeviceActivityFilter.Devices.all.getter@<X0>(void *a1@<X8>)
{
  if (qword_27DEE4D10 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  *a1 = qword_27DEE5620;
}

uint64_t sub_238015A08(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, unint64_t *a5, unint64_t *a6)
{
  v49 = a6;
  v50 = a3;
  v45 = a5;
  v51 = a4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v52 = &v37 - v14;
  result = MEMORY[0x28223BE20](v13);
  v17 = &v37 - v16;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v18 = 0;
  v19 = *(a1 + 56);
  v37 = a1 + 56;
  v20 = 1 << *(a1 + 32);
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  else
  {
    v21 = -1;
  }

  v22 = v21 & v19;
  v23 = (v20 + 63) >> 6;
  v44 = v9 + 32;
  v47 = a2 + 56;
  v48 = v9 + 16;
  v24 = (v9 + 8);
  v38 = v23;
  v39 = &v37 - v16;
  v40 = v9;
  v41 = a1;
  if (v22)
  {
    while (1)
    {
      v25 = __clz(__rbit64(v22));
      v43 = (v22 - 1) & v22;
LABEL_13:
      v28 = *(a1 + 48);
      v46 = *(v9 + 72);
      v29 = *(v9 + 16);
      v29(v17, v28 + v46 * (v25 | (v18 << 6)), v8);
      (*(v9 + 32))(v52, v17, v8);
      sub_237FBCCF0(v45, v50, v51, MEMORY[0x277CD4B00]);
      v30 = sub_238031E24();
      v31 = -1 << *(a2 + 32);
      v32 = v30 & ~v31;
      if (((*(v47 + ((v32 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v32) & 1) == 0)
      {
        break;
      }

      v42 = v24 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v33 = a2;
      v34 = ~v31;
      while (1)
      {
        v29(v12, *(v33 + 48) + v32 * v46, v8);
        sub_237FBCCF0(v49, v50, v51, MEMORY[0x277CD4B08]);
        v35 = sub_238031E64();
        v36 = *v24;
        (*v24)(v12, v8);
        if (v35)
        {
          break;
        }

        v32 = (v32 + 1) & v34;
        if (((*(v47 + ((v32 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v32) & 1) == 0)
        {
          v36(v52, v8);
          return 0;
        }
      }

      result = (v36)(v52, v8);
      a2 = v33;
      v9 = v40;
      a1 = v41;
      v23 = v38;
      v17 = v39;
      v22 = v43;
      if (!v43)
      {
        goto LABEL_8;
      }
    }

    (*v24)(v52, v8);
    return 0;
  }

LABEL_8:
  v26 = v18;
  while (1)
  {
    v18 = v26 + 1;
    if (__OFADD__(v26, 1))
    {
      break;
    }

    if (v18 >= v23)
    {
      return 1;
    }

    v27 = *(v37 + 8 * v18);
    ++v26;
    if (v27)
    {
      v25 = __clz(__rbit64(v27));
      v43 = (v27 - 1) & v27;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_238015DA0(uint64_t a1, uint64_t a2)
{
  v4 = sub_238031BE4();
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
      sub_238018184(&qword_280C34B28, MEMORY[0x277CD4AB0], MEMORY[0x277CD4AB8]);
      v26 = sub_238031E24();
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
        sub_238018184(&qword_27DEE5088, MEMORY[0x277CD4AB0], MEMORY[0x277CD4AC0]);
        v31 = sub_238031E64();
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

uint64_t sub_238016150(uint64_t a1, uint64_t a2)
{
  v4 = sub_238031C44();
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
      sub_238018184(&qword_280C34B20, MEMORY[0x277CD4AD0], MEMORY[0x277CD4AD8]);
      v26 = sub_238031E24();
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
        sub_238018184(&qword_27DEE5078, MEMORY[0x277CD4AD0], MEMORY[0x277CD4AE0]);
        v31 = sub_238031E64();
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

uint64_t sub_238016500(uint64_t a1, uint64_t a2)
{
  v4 = sub_238031CC4();
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
      sub_238018184(&qword_280C34AD0, MEMORY[0x277CD4B20], MEMORY[0x277CD4B28]);
      v26 = sub_238031E24();
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
        sub_238018184(&qword_27DEE5070, MEMORY[0x277CD4B20], MEMORY[0x277CD4B30]);
        v31 = sub_238031E64();
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

uint64_t sub_2380168B0(uint64_t result, uint64_t a2)
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
  while (v7)
  {
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_14:
    v13 = *(*(v3 + 48) + (v10 | (v4 << 6)));
    sub_2380325B4();
    MEMORY[0x2383E5730](v13 - 1);
    result = sub_2380325F4();
    v14 = -1 << *(a2 + 32);
    v15 = result & ~v14;
    if (((*(v9 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
    {
      return 0;
    }

    v16 = ~v14;
    while (*(*(a2 + 48) + v15) != v13)
    {
      v15 = (v15 + 1) & v16;
      if (((*(v9 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
      {
        return 0;
      }
    }
  }

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

    v12 = *(v3 + 56 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v7 = (v12 - 1) & v12;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t DeviceActivityFilter.Devices.hashValue.getter()
{
  v1 = *v0;
  sub_2380325B4();
  sub_238017B2C(v3, v1);
  return sub_2380325F4();
}

uint64_t sub_238016A70()
{
  v1 = *v0;
  sub_2380325B4();
  sub_238017B2C(v3, v1);
  return sub_2380325F4();
}

uint64_t sub_238016AC0(uint64_t a1)
{
  v2 = *v1;
  sub_2380325B4();
  sub_238017B2C(v4, v2);
  return sub_2380325F4();
}

uint64_t DeviceActivityFilter.users.getter@<X0>(uint64_t a1@<X8>)
{
  result = type metadata accessor for DeviceActivityFilter(0);
  v4 = (v1 + *(result + 20));
  v5 = *v4;
  LOBYTE(v4) = *(v4 + 8);
  *a1 = v5;
  *(a1 + 8) = v4;
  return result;
}

uint64_t DeviceActivityFilter.userAltDSID.getter()
{
  v1 = *(v0 + *(type metadata accessor for DeviceActivityFilter(0) + 24));

  return v1;
}

uint64_t DeviceActivityFilter.userAltDSID.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for DeviceActivityFilter(0) + 24));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t DeviceActivityFilter.devices.getter@<X0>(void *a1@<X8>)
{
  *a1 = *(v1 + *(type metadata accessor for DeviceActivityFilter(0) + 28));
}

uint64_t DeviceActivityFilter.deviceIdentifier.getter()
{
  v1 = *(v0 + *(type metadata accessor for DeviceActivityFilter(0) + 32));

  return v1;
}

uint64_t DeviceActivityFilter.deviceIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for DeviceActivityFilter(0) + 32));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t DeviceActivityFilter.applications.getter()
{
  type metadata accessor for DeviceActivityFilter(0);
}

uint64_t DeviceActivityFilter.applications.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for DeviceActivityFilter(0) + 36);

  *(v1 + v3) = a1;
  return result;
}

uint64_t DeviceActivityFilter.exemptApplications.getter()
{
  type metadata accessor for DeviceActivityFilter(0);
}

uint64_t DeviceActivityFilter.exemptApplications.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for DeviceActivityFilter(0) + 40);

  *(v1 + v3) = a1;
  return result;
}

uint64_t DeviceActivityFilter.categories.getter()
{
  type metadata accessor for DeviceActivityFilter(0);
}

uint64_t DeviceActivityFilter.categories.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for DeviceActivityFilter(0) + 44);

  *(v1 + v3) = a1;
  return result;
}

uint64_t DeviceActivityFilter.webDomains.getter()
{
  type metadata accessor for DeviceActivityFilter(0);
}

uint64_t DeviceActivityFilter.webDomains.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for DeviceActivityFilter(0) + 48);

  *(v1 + v3) = a1;
  return result;
}

uint64_t DeviceActivityFilter.exemptWebDomains.getter()
{
  type metadata accessor for DeviceActivityFilter(0);
}

uint64_t DeviceActivityFilter.exemptWebDomains.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for DeviceActivityFilter(0) + 52);

  *(v1 + v3) = a1;
  return result;
}

uint64_t DeviceActivityFilter.untokenizedApplications.getter()
{
  type metadata accessor for DeviceActivityFilter(0);
}

uint64_t DeviceActivityFilter.untokenizedApplications.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for DeviceActivityFilter(0) + 56);

  *(v1 + v3) = a1;
  return result;
}

uint64_t DeviceActivityFilter.untokenizedExemptApplications.getter()
{
  type metadata accessor for DeviceActivityFilter(0);
}

uint64_t DeviceActivityFilter.untokenizedExemptApplications.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for DeviceActivityFilter(0) + 60);

  *(v1 + v3) = a1;
  return result;
}

uint64_t DeviceActivityFilter.untokenizedCategories.getter()
{
  type metadata accessor for DeviceActivityFilter(0);
}

uint64_t DeviceActivityFilter.untokenizedCategories.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for DeviceActivityFilter(0) + 64);

  *(v1 + v3) = a1;
  return result;
}

uint64_t DeviceActivityFilter.untokenizedWebDomains.getter()
{
  type metadata accessor for DeviceActivityFilter(0);
}

uint64_t DeviceActivityFilter.untokenizedWebDomains.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for DeviceActivityFilter(0) + 68);

  *(v1 + v3) = a1;
  return result;
}

uint64_t DeviceActivityFilter.untokenizedExemptWebDomains.getter()
{
  type metadata accessor for DeviceActivityFilter(0);
}

uint64_t DeviceActivityFilter.untokenizedExemptWebDomains.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for DeviceActivityFilter(0) + 72);

  *(v1 + v3) = a1;
  return result;
}

uint64_t DeviceActivityFilter.init(segment:users:devices:applications:categories:webDomains:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v12 = *a2;
  v13 = *a3;
  v14 = type metadata accessor for DeviceActivityFilter(0);
  v15 = (a7 + v14[6]);
  v16 = (a7 + v14[8]);
  *(a7 + v14[19]) = 0;
  sub_238014F74(a7);
  v17 = a7 + v14[5];
  *v17 = v12;
  *(v17 + 8) = 0;
  *v15 = 0;
  v15[1] = 0;
  *(a7 + v14[7]) = v13;
  *v16 = 0;
  v16[1] = 0;
  *(a7 + v14[9]) = a4;
  v18 = MEMORY[0x277D84FA0];
  *(a7 + v14[10]) = MEMORY[0x277D84FA0];
  *(a7 + v14[11]) = a5;
  *(a7 + v14[12]) = a6;
  *(a7 + v14[13]) = v18;
  *(a7 + v14[14]) = v18;
  *(a7 + v14[15]) = v18;
  *(a7 + v14[16]) = v18;
  *(a7 + v14[17]) = v18;
  result = sub_2380180B8(a1);
  *(a7 + v14[18]) = v18;
  return result;
}

uint64_t DeviceActivityFilter.init(segment:devices:applications:exemptApplications:categories:webDomains:exemptWebDomains:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v14 = *a2;
  v15 = type metadata accessor for DeviceActivityFilter(0);
  v16 = (a8 + v15[6]);
  v17 = (a8 + v15[8]);
  *(a8 + v15[19]) = 0;
  sub_238014F74(a8);
  v18 = a8 + v15[5];
  *v18 = 0;
  *(v18 + 8) = 1;
  *v16 = 0;
  v16[1] = 0;
  *(a8 + v15[7]) = v14;
  *v17 = 0;
  v17[1] = 0;
  *(a8 + v15[9]) = a3;
  *(a8 + v15[10]) = a4;
  *(a8 + v15[11]) = a5;
  *(a8 + v15[12]) = a6;
  *(a8 + v15[13]) = a7;
  v19 = MEMORY[0x277D84FA0];
  *(a8 + v15[14]) = MEMORY[0x277D84FA0];
  *(a8 + v15[15]) = v19;
  *(a8 + v15[16]) = v19;
  *(a8 + v15[17]) = v19;
  result = sub_2380180B8(a1);
  *(a8 + v15[18]) = v19;
  return result;
}

uint64_t DeviceActivityFilter.init(segment:userAltDSID:deviceIdentifier:untokenizedApplications:untokenizedCategories:untokenizedWebDomains:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v16 = type metadata accessor for DeviceActivityFilter(0);
  v17 = (a9 + v16[6]);
  v18 = (a9 + v16[8]);
  *(a9 + v16[19]) = 0;
  sub_238014F74(a9);
  v19 = a9 + v16[5];
  *v19 = 0;
  *(v19 + 8) = 1;
  *v17 = a2;
  v17[1] = a3;
  *(a9 + v16[7]) = 0;
  *v18 = a4;
  v18[1] = a5;
  v20 = MEMORY[0x277D84FA0];
  *(a9 + v16[9]) = MEMORY[0x277D84FA0];
  *(a9 + v16[10]) = v20;
  *(a9 + v16[11]) = v20;
  *(a9 + v16[12]) = v20;
  *(a9 + v16[13]) = v20;
  *(a9 + v16[14]) = a6;
  *(a9 + v16[15]) = v20;
  *(a9 + v16[16]) = a7;
  *(a9 + v16[17]) = a8;
  result = sub_2380180B8(a1);
  *(a9 + v16[18]) = v20;
  return result;
}

uint64_t DeviceActivityFilter.init(segment:userAltDSID:deviceIdentifier:untokenizedApplications:untokenizedExemptApplications:untokenizedCategories:untokenizedWebDomains:untokenizedExemptWebDomains:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v17 = type metadata accessor for DeviceActivityFilter(0);
  v18 = (a9 + v17[6]);
  v19 = (a9 + v17[8]);
  *(a9 + v17[19]) = 0;
  sub_238014F74(a9);
  v20 = a9 + v17[5];
  *v20 = 0;
  *(v20 + 8) = 1;
  *v18 = a2;
  v18[1] = a3;
  *(a9 + v17[7]) = 0;
  *v19 = a4;
  v19[1] = a5;
  v21 = MEMORY[0x277D84FA0];
  *(a9 + v17[9]) = MEMORY[0x277D84FA0];
  *(a9 + v17[10]) = v21;
  *(a9 + v17[11]) = v21;
  *(a9 + v17[12]) = v21;
  result = sub_2380180B8(a1);
  *(a9 + v17[13]) = v21;
  *(a9 + v17[14]) = a6;
  *(a9 + v17[15]) = a7;
  *(a9 + v17[16]) = a8;
  *(a9 + v17[17]) = a10;
  *(a9 + v17[18]) = a11;
  return result;
}

DeviceActivity::_SegmentInterval_optional __swiftcall _SegmentInterval.init(unlocalizedSegmentName:)(Swift::String_optional unlocalizedSegmentName)
{
  v2 = v1;
  if (!unlocalizedSegmentName.value._object)
  {
    goto LABEL_15;
  }

  object = unlocalizedSegmentName.value._object;
  countAndFlagsBits = unlocalizedSegmentName.value._countAndFlagsBits;
  if ((unlocalizedSegmentName.value._countAndFlagsBits != 0x796C72756F48 || unlocalizedSegmentName.value._object != 0xE600000000000000) && (sub_2380324E4() & 1) == 0)
  {
    if (countAndFlagsBits == 0x796C696144 && object == 0xE500000000000000 || (sub_2380324E4() & 1) != 0)
    {

      v5 = 1;
      goto LABEL_16;
    }

    if (countAndFlagsBits == 0x796C6B656557 && object == 0xE600000000000000)
    {

      v5 = 2;
      goto LABEL_16;
    }

    v6 = sub_2380324E4();

    if (v6)
    {
      v5 = 2;
      goto LABEL_16;
    }

LABEL_15:
    v5 = 3;
    goto LABEL_16;
  }

  v5 = 0;
LABEL_16:
  *v2 = v5;
  return unlocalizedSegmentName.value._countAndFlagsBits;
}

DeviceActivity::_SegmentInterval_optional __swiftcall _SegmentInterval.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 3;
  if (rawValue < 3)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_238017B2C(__int128 *a1, uint64_t a2)
{
  result = sub_2380325F4();
  v4 = 0;
  v5 = 0;
  v6 = 1 << *(a2 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a2 + 56);
  for (i = (v6 + 63) >> 6; v8; v4 ^= result)
  {
    v10 = v5;
LABEL_9:
    v11 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v12 = *(*(a2 + 48) + (v11 | (v10 << 6)));
    sub_2380325B4();
    MEMORY[0x2383E5730](v12 - 1);
    result = sub_2380325F4();
  }

  while (1)
  {
    v10 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      break;
    }

    if (v10 >= i)
    {
      return MEMORY[0x2383E5730](v4);
    }

    v8 = *(a2 + 56 + 8 * v10);
    ++v5;
    if (v8)
    {
      v5 = v10;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t _s14DeviceActivity0aB6FilterV15SegmentIntervalO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v39 = a2;
  v38 = sub_238031654();
  v3 = *(v38 - 8);
  v4 = MEMORY[0x28223BE20](v38);
  v37 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v36 - v7;
  MEMORY[0x28223BE20](v6);
  v10 = &v36 - v9;
  v11 = type metadata accessor for DeviceActivityFilter.SegmentInterval(0);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v36 - v16;
  MEMORY[0x28223BE20](v15);
  v19 = &v36 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE5648, qword_2380360D0);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v23 = &v36 - v22;
  v24 = *(v21 + 56);
  sub_238018054(a1, &v36 - v22);
  sub_238018054(v39, &v23[v24]);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_238018054(v23, v17);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v26 = v38;
        (*(v3 + 32))(v8, &v23[v24], v38);
        v27 = sub_2380315E4();
        v28 = *(v3 + 8);
        v28(v8, v26);
        v29 = v17;
        v30 = v26;
LABEL_9:
        v28(v29, v30);
LABEL_13:
        sub_2380180B8(v23);
        return v27 & 1;
      }

      v14 = v17;
    }

    else
    {
      sub_238018054(v23, v14);
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        v32 = v37;
        v31 = v38;
        (*(v3 + 32))(v37, &v23[v24], v38);
        v27 = sub_2380315E4();
        v28 = *(v3 + 8);
        v28(v32, v31);
        v29 = v14;
        v30 = v31;
        goto LABEL_9;
      }
    }
  }

  else
  {
    sub_238018054(v23, v19);
    if (!swift_getEnumCaseMultiPayload())
    {
      v33 = v38;
      (*(v3 + 32))(v10, &v23[v24], v38);
      v27 = sub_2380315E4();
      v34 = *(v3 + 8);
      v34(v10, v33);
      v34(v19, v33);
      goto LABEL_13;
    }

    v14 = v19;
  }

  (*(v3 + 8))(v14, v38);
  sub_237FA5750(v23, &qword_27DEE5648, qword_2380360D0);
  v27 = 0;
  return v27 & 1;
}

uint64_t sub_238018054(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DeviceActivityFilter.SegmentInterval(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2380180B8(uint64_t a1)
{
  v2 = type metadata accessor for DeviceActivityFilter.SegmentInterval(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_238018114(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE51E0, &qword_2380365F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_238018184(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2380181CC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DeviceActivityFilter.SegmentInterval(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t _s14DeviceActivity0aB6FilterV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if ((_s14DeviceActivity0aB6FilterV15SegmentIntervalO2eeoiySbAE_AEtFZ_0(a1, a2) & 1) == 0)
  {
    goto LABEL_23;
  }

  v4 = type metadata accessor for DeviceActivityFilter(0);
  v5 = v4[5];
  v6 = (a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = *(a2 + v5 + 8);
  if ((v7 & 1) == 0)
  {
    if (*v6 != *v8)
    {
      LOBYTE(v9) = 1;
    }

    if (v9)
    {
      goto LABEL_23;
    }

LABEL_8:
    v10 = v4[6];
    v11 = (a1 + v10);
    v12 = *(a1 + v10 + 8);
    v13 = (a2 + v10);
    v14 = v13[1];
    if (v12)
    {
      if (!v14)
      {
        goto LABEL_23;
      }

      if (*v11 != *v13 || v12 != v14)
      {
        v16 = v4;
        v17 = sub_2380324E4();
        v4 = v16;
        if ((v17 & 1) == 0)
        {
          goto LABEL_23;
        }
      }
    }

    else if (v14)
    {
      goto LABEL_23;
    }

    v18 = v4[7];
    v19 = *(a2 + v18);
    if (*(a1 + v18))
    {
      if (v19)
      {
        v20 = v4;
        if ((sub_2380168B0(*(a1 + v18), *(a2 + v18)) & 1) == 0)
        {
          goto LABEL_23;
        }

        goto LABEL_26;
      }
    }

    else if (!v19)
    {
      v20 = v4;

LABEL_26:
      v22 = v20;
      v23 = v20[8];
      v24 = (a1 + v23);
      v25 = *(a1 + v23 + 8);
      v26 = (a2 + v23);
      v27 = v26[1];
      if (v25)
      {
        if (v27)
        {
          if (*v24 == *v26 && v25 == v27 || (v28 = sub_2380324E4(), v22 = v20, (v28 & 1) != 0))
          {
LABEL_33:
            v29 = v22;
            if (sub_238015A08(*(a1 + v22[9]), *(a2 + v22[9]), &qword_27DEE4FF8, &unk_2380343E0, &qword_280C34B10, &qword_27DEE50A0) & 1) != 0 && (sub_238015A08(*(a1 + v29[10]), *(a2 + v29[10]), &qword_27DEE4FF8, &unk_2380343E0, &qword_280C34B10, &qword_27DEE50A0) & 1) != 0 && (sub_238015A08(*(a1 + v29[11]), *(a2 + v29[11]), &qword_27DEE4FF0, &unk_238033980, &qword_280C34AF8, &qword_27DEE5098) & 1) != 0 && (sub_238015A08(*(a1 + v29[12]), *(a2 + v29[12]), &qword_27DEE4FE8, &unk_238035410, &qword_280C34AE0, &qword_27DEE5090) & 1) != 0 && (sub_238015A08(*(a1 + v29[13]), *(a2 + v29[13]), &qword_27DEE4FE8, &unk_238035410, &qword_280C34AE0, &qword_27DEE5090) & 1) != 0 && (sub_238015DA0(*(a1 + v29[14]), *(a2 + v29[14])) & 1) != 0 && (sub_238015DA0(*(a1 + v29[15]), *(a2 + v29[15])) & 1) != 0 && (sub_238016150(*(a1 + v29[16]), *(a2 + v29[16])) & 1) != 0 && (sub_238016500(*(a1 + v29[17]), *(a2 + v29[17])) & 1) != 0 && (sub_238016500(*(a1 + v29[18]), *(a2 + v29[18])))
            {
              LOBYTE(v9) = *(a1 + v29[19]) ^ *(a2 + v29[19]) ^ 1;
              return v9 & 1;
            }
          }
        }
      }

      else if (!v27)
      {
        goto LABEL_33;
      }

LABEL_23:
      LOBYTE(v9) = 0;
      return v9 & 1;
    }

    goto LABEL_23;
  }

  if (v9)
  {
    goto LABEL_8;
  }

  return v9 & 1;
}

unint64_t sub_238018584(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DEE5638;
  if (!qword_27DEE5638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEE5638);
  }

  return result;
}

unint64_t sub_2380185DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DEE5640;
  if (!qword_27DEE5640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEE5640);
  }

  return result;
}

void sub_2380186A0(uint64_t a1)
{
  type metadata accessor for DeviceActivityFilter.SegmentInterval(319);
  if (v1 <= 0x3F)
  {
    sub_238018888(319, &qword_280C34B68, &type metadata for DeviceActivityFilter.Users);
    if (v2 <= 0x3F)
    {
      sub_238018888(319, &qword_280C35380, MEMORY[0x277D837D0]);
      if (v3 <= 0x3F)
      {
        sub_238018888(319, &qword_280C34B60, &type metadata for DeviceActivityFilter.Devices);
        if (v4 <= 0x3F)
        {
          sub_2380188D4(319, &qword_280C34A48, &qword_27DEE4FF8, &unk_2380343E0, &qword_280C34B10);
          if (v5 <= 0x3F)
          {
            sub_2380188D4(319, &qword_280C34A40, &qword_27DEE4FF0, &unk_238033980, &qword_280C34AF8);
            if (v6 <= 0x3F)
            {
              sub_2380188D4(319, &qword_280C34A38, &qword_27DEE4FE8, &unk_238035410, &qword_280C34AE0);
              if (v7 <= 0x3F)
              {
                sub_238018970(319);
                if (v8 <= 0x3F)
                {
                  sub_238018A04(319);
                  if (v9 <= 0x3F)
                  {
                    sub_238018A98(319);
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

void sub_238018888(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_2380321B4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_2380188D4(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, unint64_t *a5)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    sub_237FBCCF0(a5, a3, a4, MEMORY[0x277CD4B00]);
    v9 = sub_2380320A4();
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_238018970(uint64_t a1)
{
  if (!qword_280C34A58)
  {
    sub_238031BE4();
    sub_238018184(&qword_280C34B28, MEMORY[0x277CD4AB0], MEMORY[0x277CD4AB8]);
    v1 = sub_2380320A4();
    if (!v2)
    {
      atomic_store(v1, &qword_280C34A58);
    }
  }
}

void sub_238018A04(uint64_t a1)
{
  if (!qword_280C34A50)
  {
    sub_238031C44();
    sub_238018184(&qword_280C34B20, MEMORY[0x277CD4AD0], MEMORY[0x277CD4AD8]);
    v1 = sub_2380320A4();
    if (!v2)
    {
      atomic_store(v1, &qword_280C34A50);
    }
  }
}

void sub_238018A98(uint64_t a1)
{
  if (!qword_280C34A30)
  {
    sub_238031CC4();
    sub_238018184(&qword_280C34AD0, MEMORY[0x277CD4B20], MEMORY[0x277CD4B28]);
    v1 = sub_2380320A4();
    if (!v2)
    {
      atomic_store(v1, &qword_280C34A30);
    }
  }
}

void sub_238018B7C(uint64_t a1)
{
  sub_238018BE0();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
  }
}

void sub_238018BE0()
{
  if (!qword_280C35080)
  {
    v0 = sub_238031654();
    if (!v1)
    {
      atomic_store(v0, &qword_280C35080);
    }
  }
}

uint64_t getEnumTagSinglePayload for DeviceActivityFilter.Users(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for DeviceActivityFilter.Users(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 8) = v3;
  return result;
}

unint64_t sub_238018CA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280C35118[0];
  if (!qword_280C35118[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280C35118);
  }

  return result;
}

void sub_238018D3C(uint64_t *a1, const char *a2, ...)
{
  v4 = *a1;
  v3 = a1[1];
  if (qword_27DEE4D80 != -1)
  {
    swift_once();
  }

  v5 = sub_238031DB4();
  __swift_project_value_buffer(v5, qword_27DEE95A8);

  oslog = sub_238031D94();
  v6 = sub_238032114();

  if (os_log_type_enabled(oslog, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v10 = v8;
    *v7 = 136446210;
    *(v7 + 4) = sub_237FDF8EC(v4, v3, &v10);
    _os_log_impl(&dword_237FA1000, oslog, v6, a2, v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    MEMORY[0x2383E5E30](v8, -1, -1);
    MEMORY[0x2383E5E30](v7, -1, -1);
  }
}

void sub_238018E9C(uint64_t *a1, uint64_t *a2, const char *a3, ...)
{
  v5 = *a1;
  v4 = a1[1];
  v7 = *a2;
  v6 = a2[1];
  if (qword_27DEE4D80 != -1)
  {
    swift_once();
  }

  v8 = sub_238031DB4();
  __swift_project_value_buffer(v8, qword_27DEE95A8);

  oslog = sub_238031D94();
  v9 = sub_238032114();

  if (os_log_type_enabled(oslog, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v13 = v11;
    *v10 = 136315394;
    *(v10 + 4) = sub_237FDF8EC(v5, v4, &v13);
    *(v10 + 12) = 2082;
    *(v10 + 14) = sub_237FDF8EC(v7, v6, &v13);
    _os_log_impl(&dword_237FA1000, oslog, v9, a3, v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x2383E5E30](v11, -1, -1);
    MEMORY[0x2383E5E30](v10, -1, -1);
  }
}

id DeviceActivityMonitor.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id DeviceActivityMonitor.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DeviceActivityMonitor();
  return objc_msgSendSuper2(&v2, sel_init);
}

id DeviceActivityMonitor.__deallocating_deinit(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for DeviceActivityMonitor();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

void sub_2380192E4(uint64_t a1, void **a2, void *a3)
{
  v4 = *a2;
  v5 = objc_opt_self();
  v6 = v4;
  v7 = [v5 interfaceWithProtocol_];

  *a3 = v7;
}

id sub_238019398(uint64_t a1, uint64_t a2, void *a3, void **a4, uint64_t a5)
{
  if (*a3 == -1)
  {
    v6 = *a4;
  }

  else
  {
    swift_once();
    v6 = *a4;
  }

  return v6;
}

void *sub_2380193FC()
{
  v1 = OBJC_IVAR____TtC14DeviceActivity28DeviceActivityMonitorContext____lazy_storage___monitor;
  v2 = *&v0[OBJC_IVAR____TtC14DeviceActivity28DeviceActivityMonitorContext____lazy_storage___monitor];
  v3 = v2;
  if (v2 == 1)
  {
    if ([v0 _principalObject])
    {
      type metadata accessor for DeviceActivityMonitor();
      v3 = swift_dynamicCastClass();
      if (!v3)
      {
        swift_unknownObjectRelease();
      }
    }

    else
    {
      v3 = 0;
    }

    v4 = *&v0[v1];
    *&v0[v1] = v3;
    v5 = v3;
    sub_238019E24(v4);
  }

  sub_238019E34(v2);
  return v3;
}

uint64_t sub_23801953C(void *a1, int a2, uint64_t a3, void *aBlock, void (*a5)(uint64_t, uint64_t, id, void *))
{
  v7 = _Block_copy(aBlock);
  v8 = sub_238031EA4();
  v10 = v9;
  _Block_copy(v7);
  v11 = a1;
  a5(v8, v10, v11, v7);
  _Block_release(v7);
  _Block_release(v7);
}

uint64_t sub_2380195F8(void *a1, int a2, uint64_t a3, uint64_t a4, void *aBlock, void (*a6)(uint64_t, uint64_t, uint64_t, uint64_t, id, void *))
{
  v8 = _Block_copy(aBlock);
  v9 = sub_238031EA4();
  v11 = v10;
  v12 = sub_238031EA4();
  v14 = v13;
  _Block_copy(v8);
  v15 = a1;
  a6(v9, v11, v12, v14, v15, v8);
  _Block_release(v8);
  _Block_release(v8);
}

id sub_238019718(uint64_t a1)
{
  *&v1[OBJC_IVAR____TtC14DeviceActivity28DeviceActivityMonitorContext____lazy_storage___monitor] = 1;
  if (a1)
  {
    v2 = sub_238031F84();
  }

  else
  {
    v2 = 0;
  }

  v5.receiver = v1;
  v5.super_class = type metadata accessor for DeviceActivityMonitorContext();
  v3 = objc_msgSendSuper2(&v5, sel_initWithInputItems_, v2);

  if (v3)
  {
  }

  return v3;
}

id sub_2380197FC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE56C8, "&%");
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v17 - v7;
  *&v3[OBJC_IVAR____TtC14DeviceActivity28DeviceActivityMonitorContext____lazy_storage___monitor] = 1;
  if (a1)
  {
    v9 = sub_238031F84();
  }

  else
  {
    v9 = 0;
  }

  sub_238019E44(a2, v8);
  v10 = sub_238031AB4();
  v11 = *(v10 - 8);
  v12 = 0;
  if ((*(v11 + 48))(v8, 1, v10) != 1)
  {
    v12 = sub_238031A84();
    (*(v11 + 8))(v8, v10);
  }

  v13 = type metadata accessor for DeviceActivityMonitorContext();
  v17.receiver = v3;
  v17.super_class = v13;
  v14 = objc_msgSendSuper2(&v17, sel_initWithInputItems_contextUUID_, v9, v12);

  v15 = v14;
  sub_238019EB4(a2);
  if (v15)
  {
  }

  return v15;
}

id sub_238019ACC(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE56C8, "&%");
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v19 - v9;
  *&v4[OBJC_IVAR____TtC14DeviceActivity28DeviceActivityMonitorContext____lazy_storage___monitor] = 1;
  if (a1)
  {
    v11 = sub_238031F84();
  }

  else
  {
    v11 = 0;
  }

  sub_238019E44(a3, v10);
  v12 = sub_238031AB4();
  v13 = *(v12 - 8);
  v14 = 0;
  if ((*(v13 + 48))(v10, 1, v12) != 1)
  {
    v14 = sub_238031A84();
    (*(v13 + 8))(v10, v12);
  }

  v15 = type metadata accessor for DeviceActivityMonitorContext();
  v19.receiver = v4;
  v19.super_class = v15;
  v16 = objc_msgSendSuper2(&v19, sel_initWithInputItems_listenerEndpoint_contextUUID_, v11, a2, v14);

  v17 = v16;
  sub_238019EB4(a3);
  if (v17)
  {
  }

  return v17;
}

id sub_238019DBC(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for DeviceActivityMonitorContext();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void sub_238019E24(id a1)
{
  if (a1 != 1)
  {
  }
}

id sub_238019E34(id result)
{
  if (result != 1)
  {
    return result;
  }

  return result;
}

uint64_t sub_238019E44(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE56C8, "&%");
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_238019EB4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE56C8, "&%");
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_238019F1C(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  if (qword_27DEE4D80 != -1)
  {
    swift_once();
  }

  v7 = sub_238031DB4();
  __swift_project_value_buffer(v7, qword_27DEE95A8);

  v8 = sub_238031D94();
  v9 = sub_2380320E4();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v21[0] = v11;
    *v10 = 136315138;
    *(v10 + 4) = sub_237FDF8EC(a1, a2, v21);
    _os_log_impl(&dword_237FA1000, v8, v9, "Interval started for: %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v11);
    MEMORY[0x2383E5E30](v11, -1, -1);
    MEMORY[0x2383E5E30](v10, -1, -1);
  }

  v12 = sub_2380193FC();
  if (v12)
  {
    v21[0] = a1;
    v21[1] = a2;
    v15 = *((*MEMORY[0x277D85000] & *v12) + 0x50);
    v20 = v12;

    v15(v21);

    (*(a4 + 16))(a4, 0);
    v16 = v20;
  }

  else
  {
    sub_23801B0A0(0, v13, v14);
    v17 = swift_allocError();
    *v18 = 0;
    v19 = sub_238031854();
    (*(a4 + 16))(a4, v19);

    v16 = v17;
  }
}

void sub_23801A170(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  if (qword_27DEE4D80 != -1)
  {
    swift_once();
  }

  v7 = sub_238031DB4();
  __swift_project_value_buffer(v7, qword_27DEE95A8);

  v8 = sub_238031D94();
  v9 = sub_2380320E4();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v21[0] = v11;
    *v10 = 136315138;
    *(v10 + 4) = sub_237FDF8EC(a1, a2, v21);
    _os_log_impl(&dword_237FA1000, v8, v9, "Interval ended for: %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v11);
    MEMORY[0x2383E5E30](v11, -1, -1);
    MEMORY[0x2383E5E30](v10, -1, -1);
  }

  v12 = sub_2380193FC();
  if (v12)
  {
    v21[0] = a1;
    v21[1] = a2;
    v15 = *((*MEMORY[0x277D85000] & *v12) + 0x58);
    v20 = v12;

    v15(v21);

    (*(a4 + 16))(a4, 0);
    v16 = v20;
  }

  else
  {
    sub_23801B0A0(0, v13, v14);
    v17 = swift_allocError();
    *v18 = 0;
    v19 = sub_238031854();
    (*(a4 + 16))(a4, v19);

    v16 = v17;
  }
}

void sub_23801A3C4(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  if (qword_27DEE4D80 != -1)
  {
    swift_once();
  }

  v11 = sub_238031DB4();
  __swift_project_value_buffer(v11, qword_27DEE95A8);

  v12 = sub_238031D94();
  v13 = sub_2380320E4();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v26[0] = v15;
    *v14 = 136315394;
    *(v14 + 4) = sub_237FDF8EC(a1, a2, v26);
    *(v14 + 12) = 2080;
    *(v14 + 14) = sub_237FDF8EC(a3, a4, v26);
    _os_log_impl(&dword_237FA1000, v12, v13, "%s reached threshold for: %s", v14, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x2383E5E30](v15, -1, -1);
    MEMORY[0x2383E5E30](v14, -1, -1);
  }

  v16 = sub_2380193FC();
  if (v16)
  {
    v26[0] = a1;
    v26[1] = a2;
    v25[0] = a3;
    v25[1] = a4;
    v19 = *((*MEMORY[0x277D85000] & *v16) + 0x60);
    v24 = v16;

    v19(v26, v25);

    (*(a6 + 16))(a6, 0);
    v20 = v24;
  }

  else
  {
    sub_23801B0A0(0, v17, v18);
    v21 = swift_allocError();
    *v22 = 0;
    v23 = sub_238031854();
    (*(a6 + 16))(a6, v23);

    v20 = v21;
  }
}

void sub_23801A680(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  if (qword_27DEE4D80 != -1)
  {
    swift_once();
  }

  v11 = sub_238031DB4();
  __swift_project_value_buffer(v11, qword_27DEE95A8);

  v12 = sub_238031D94();
  v13 = sub_2380320E4();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v26[0] = v15;
    *v14 = 136315394;
    *(v14 + 4) = sub_237FDF8EC(a1, a2, v26);
    *(v14 + 12) = 2080;
    *(v14 + 14) = sub_237FDF8EC(a3, a4, v26);
    _os_log_impl(&dword_237FA1000, v12, v13, "%s unreached threshold for: %s", v14, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x2383E5E30](v15, -1, -1);
    MEMORY[0x2383E5E30](v14, -1, -1);
  }

  v16 = sub_2380193FC();
  if (v16)
  {
    v26[0] = a1;
    v26[1] = a2;
    v25[0] = a3;
    v25[1] = a4;
    v19 = *((*MEMORY[0x277D85000] & *v16) + 0x68);
    v24 = v16;

    v19(v26, v25);

    (*(a6 + 16))(a6, 0);
    v20 = v24;
  }

  else
  {
    sub_23801B0A0(0, v17, v18);
    v21 = swift_allocError();
    *v22 = 0;
    v23 = sub_238031854();
    (*(a6 + 16))(a6, v23);

    v20 = v21;
  }
}

void sub_23801A93C(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  if (qword_27DEE4D80 != -1)
  {
    swift_once();
  }

  v7 = sub_238031DB4();
  __swift_project_value_buffer(v7, qword_27DEE95A8);

  v8 = sub_238031D94();
  v9 = sub_2380320E4();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v21[0] = v11;
    *v10 = 136315138;
    *(v10 + 4) = sub_237FDF8EC(a1, a2, v21);
    _os_log_impl(&dword_237FA1000, v8, v9, "Interval will start warning for: %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v11);
    MEMORY[0x2383E5E30](v11, -1, -1);
    MEMORY[0x2383E5E30](v10, -1, -1);
  }

  v12 = sub_2380193FC();
  if (v12)
  {
    v21[0] = a1;
    v21[1] = a2;
    v15 = *((*MEMORY[0x277D85000] & *v12) + 0x70);
    v20 = v12;

    v15(v21);

    (*(a4 + 16))(a4, 0);
    v16 = v20;
  }

  else
  {
    sub_23801B0A0(0, v13, v14);
    v17 = swift_allocError();
    *v18 = 0;
    v19 = sub_238031854();
    (*(a4 + 16))(a4, v19);

    v16 = v17;
  }
}

void sub_23801AB90(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  if (qword_27DEE4D80 != -1)
  {
    swift_once();
  }

  v7 = sub_238031DB4();
  __swift_project_value_buffer(v7, qword_27DEE95A8);

  v8 = sub_238031D94();
  v9 = sub_2380320E4();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v21[0] = v11;
    *v10 = 136315138;
    *(v10 + 4) = sub_237FDF8EC(a1, a2, v21);
    _os_log_impl(&dword_237FA1000, v8, v9, "Interval will end warning for: %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v11);
    MEMORY[0x2383E5E30](v11, -1, -1);
    MEMORY[0x2383E5E30](v10, -1, -1);
  }

  v12 = sub_2380193FC();
  if (v12)
  {
    v21[0] = a1;
    v21[1] = a2;
    v15 = *((*MEMORY[0x277D85000] & *v12) + 0x78);
    v20 = v12;

    v15(v21);

    (*(a4 + 16))(a4, 0);
    v16 = v20;
  }

  else
  {
    sub_23801B0A0(0, v13, v14);
    v17 = swift_allocError();
    *v18 = 0;
    v19 = sub_238031854();
    (*(a4 + 16))(a4, v19);

    v16 = v17;
  }
}

void sub_23801ADE4(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  if (qword_27DEE4D80 != -1)
  {
    swift_once();
  }

  v11 = sub_238031DB4();
  __swift_project_value_buffer(v11, qword_27DEE95A8);

  v12 = sub_238031D94();
  v13 = sub_2380320E4();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v26[0] = v15;
    *v14 = 136315394;
    *(v14 + 4) = sub_237FDF8EC(a1, a2, v26);
    *(v14 + 12) = 2080;
    *(v14 + 14) = sub_237FDF8EC(a3, a4, v26);
    _os_log_impl(&dword_237FA1000, v12, v13, "%s will reach threshold warning for: %s", v14, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x2383E5E30](v15, -1, -1);
    MEMORY[0x2383E5E30](v14, -1, -1);
  }

  v16 = sub_2380193FC();
  if (v16)
  {
    v26[0] = a1;
    v26[1] = a2;
    v25[0] = a3;
    v25[1] = a4;
    v19 = *((*MEMORY[0x277D85000] & *v16) + 0x80);
    v24 = v16;

    v19(v26, v25);

    (*(a6 + 16))(a6, 0);
    v20 = v24;
  }

  else
  {
    sub_23801B0A0(0, v17, v18);
    v21 = swift_allocError();
    *v22 = 0;
    v23 = sub_238031854();
    (*(a6 + 16))(a6, v23);

    v20 = v21;
  }
}

unint64_t sub_23801B0A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DEE56D0;
  if (!qword_27DEE56D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEE56D0);
  }

  return result;
}

unint64_t sub_23801B108(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DEE56D8;
  if (!qword_27DEE56D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEE56D8);
  }

  return result;
}

uint64_t sub_23801B1B4()
{
  result = sub_238031E74();
  qword_27DEE56E0 = result;
  return result;
}

uint64_t sub_23801B210()
{
  result = sub_238031E74();
  qword_27DEE56E8 = result;
  return result;
}

uint64_t sub_23801B26C()
{
  result = sub_238031E74();
  qword_27DEE56F0 = result;
  return result;
}

uint64_t sub_23801B2C8()
{
  result = sub_238031E74();
  qword_27DEE56F8 = result;
  return result;
}

uint64_t sub_23801B324()
{
  result = sub_238031E74();
  qword_27DEE5700 = result;
  return result;
}

uint64_t sub_23801B380()
{
  result = sub_238031E74();
  qword_27DEE5708 = result;
  return result;
}

uint64_t sub_23801B3DC()
{
  result = sub_238031E74();
  qword_27DEE5710 = result;
  return result;
}

id sub_23801B438(void *a1, void **a2, uint64_t a3)
{
  if (*a1 == -1)
  {
    v4 = *a2;
  }

  else
  {
    swift_once();
    v4 = *a2;
  }

  return v4;
}

double sub_23801B498()
{
  qword_27DEE9588 = 0;
  result = 0.0;
  xmmword_27DEE9568 = 0u;
  unk_27DEE9578 = 0u;
  return result;
}

uint64_t _DeviceActivityData.activitySegments(filteredBy:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for DeviceActivityFilter(0);
  v6 = v5 - 8;
  MEMORY[0x28223BE20](v5);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_237FAB208(a1, v8, type metadata accessor for DeviceActivityFilter);
  v8[*(v6 + 84)] = 1;
  v9 = type metadata accessor for _DeviceActivityData.Metadata(0);
  v10 = v9[7];
  v11 = (v2 + v9[6]);
  v13 = *v11;
  v12 = v11[1];
  v15 = *(v2 + v10);
  v14 = *(v2 + v10 + 8);
  v16 = *(v2 + v9[8]);
  v17 = *(v2 + *(type metadata accessor for _DeviceActivityData(0) + 20));
  v18 = qword_27DEE4D60;

  if (v18 != -1)
  {
    swift_once();
  }

  sub_23801B6C0(&xmmword_27DEE9568, &v21);
  if (v22)
  {
    sub_237FB0034(&v21, &v23);
  }

  else
  {
    v24 = &type metadata for DeviceActivityDataSource;
    v25 = &protocol witness table for DeviceActivityDataSource;
    *&v23 = swift_allocObject();
    DeviceActivityDataSource.init()((v23 + 16));
    if (v22)
    {
      sub_237FA5750(&v21, &qword_27DEE5718, &qword_238036210);
    }
  }

  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DEE5720, &qword_238036218);
  sub_237FA608C(v8, a2 + *(v19 + 48), type metadata accessor for DeviceActivityFilter);
  *a2 = 0;
  *(a2 + 8) = v13;
  *(a2 + 16) = v12;
  *(a2 + 24) = v15;
  *(a2 + 32) = v14;
  *(a2 + 40) = v16;
  *(a2 + 48) = v17;
  return sub_237FB0034(&v23, a2 + 56);
}

uint64_t sub_23801B6C0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE5718, &qword_238036210);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t _DeviceActivityResults.init(userAltDSID:deviceIdentifier:segmentInterval:elementRecordNames:elementFetcher:filter:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X4>, uint64_t a6@<X5>, __int128 *a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v12 = *a5;
  *a9 = 0;
  *(a9 + 8) = a1;
  *(a9 + 16) = a2;
  *(a9 + 24) = a3;
  *(a9 + 32) = a4;
  *(a9 + 40) = v12;
  *(a9 + 48) = a6;
  sub_237FB0034(a7, a9 + 56);
  v15 = type metadata accessor for _DeviceActivityResults(0, a10, v13, v14);
  return sub_237FA608C(a8, a9 + *(v15 + 48), type metadata accessor for DeviceActivityFilter);
}

uint64_t sub_23801B7E0(uint64_t a1, uint64_t a2)
{
  v4 = sub_23801BA94(v2, a1, a2);
  (*(*(a1 - 8) + 8))(v2, a1);
  return v4;
}

void sub_23801B8A0(uint64_t a1)
{
  sub_23801B9DC(319, &qword_280C35380, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_23801B9DC(319, &qword_280C350C8, MEMORY[0x277D83940]);
    if (v2 <= 0x3F)
    {
      sub_23801BA30();
      if (v3 <= 0x3F)
      {
        type metadata accessor for DeviceActivityFilter(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_23801B9DC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x277D837D0]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_23801BA30()
{
  result = qword_280C34B38;
  if (!qword_280C34B38)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_280C34B38);
  }

  return result;
}

uint64_t dispatch thunk of ElementFetching.fetchActivitySegment(userAltDSID:deviceIdentifier:segmentInterval:recordName:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v20 = (*(a10 + 8) + **(a10 + 8));
  v18 = swift_task_alloc();
  *(v10 + 16) = v18;
  *v18 = v10;
  v18[1] = sub_23801BC34;

  return v20(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10);
}

uint64_t sub_23801BC34()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_23801BD60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_2380325B4();
  sub_238031ED4();
  v6 = sub_2380325F4();
  v7 = -1 << *(a3 + 32);
  v8 = v6 & ~v7;
  if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(a3 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (sub_2380324E4() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

void static EventStreams.adjust(_:)(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v3 = sub_238031A64();
  v4 = *(v3 - 8);
  v22 = v3;
  v23 = v4;
  v5 = MEMORY[0x28223BE20](v3);
  MEMORY[0x28223BE20](v5);
  v7 = &v21 - v6;
  v8 = swift_allocBox();
  v10 = v9;
  v21 = a1;
  sub_238031634();
  v11 = [BiomeLibrary() Device];
  swift_unknownObjectRelease();
  v12 = [v11 Display];
  swift_unknownObjectRelease();
  v13 = [v12 Backlight];
  swift_unknownObjectRelease();
  v14 = sub_2380245E4();
  v15 = [v13 publisherWithOptions_];

  v16 = swift_allocObject();
  *(v16 + 16) = v13;
  v29 = sub_2380254B4;
  v30 = v16;
  aBlock = MEMORY[0x277D85DD0];
  v26 = 1107296256;
  v27 = sub_2380254A0;
  v28 = &block_descriptor_1;
  v17 = _Block_copy(&aBlock);
  v18 = v13;

  v29 = sub_2380247D4;
  v30 = v8;
  aBlock = MEMORY[0x277D85DD0];
  v26 = 1107296256;
  v27 = sub_23801CD10;
  v28 = &block_descriptor_3;
  v19 = _Block_copy(&aBlock);

  v20 = [v15 sinkWithCompletion:v17 shouldContinue:v19];
  _Block_release(v19);
  _Block_release(v17);

  swift_beginAccess();
  (*(v23 + 16))(v7, v10, v22);
  sub_238031604();
  sub_238031614();
}

void *static EventStreams.identifiers(during:)(uint64_t a1)
{
  v1 = swift_allocObject();
  v2 = MEMORY[0x277D84FA0];
  *(v1 + 16) = MEMORY[0x277D84FA0];
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  v51 = (v3 + 16);
  v4 = sub_2380247DC();
  v5 = [BiomeLibrary() ScreenTime];
  swift_unknownObjectRelease();
  v6 = [v5 AppUsage];
  swift_unknownObjectRelease();
  v7 = v4;
  v8 = [v6 publisherWithOptions_];
  v9 = swift_allocObject();
  *(v9 + 16) = v6;
  v56 = sub_2380254B4;
  v57 = v9;
  aBlock = MEMORY[0x277D85DD0];
  v53 = 1107296256;
  v54 = sub_2380254A0;
  v55 = &block_descriptor_13;
  v10 = _Block_copy(&aBlock);
  v49 = v6;

  v56 = sub_2380249E8;
  v57 = v1;
  aBlock = MEMORY[0x277D85DD0];
  v53 = 1107296256;
  v54 = sub_2380254A0;
  v55 = &block_descriptor_16;
  v11 = _Block_copy(&aBlock);

  v12 = [v8 sinkWithCompletion:v10 receiveInput:v11];
  _Block_release(v11);
  _Block_release(v10);

  v13 = [BiomeLibrary() App];
  swift_unknownObjectRelease();
  v14 = [v13 MediaUsage];
  swift_unknownObjectRelease();
  v15 = [v14 &selRef:v7 eventWithStream:? startDate:? endDate:? value:? metadata:?];
  v16 = swift_allocObject();
  *(v16 + 16) = v14;
  v56 = sub_238024A18;
  v57 = v16;
  aBlock = MEMORY[0x277D85DD0];
  v53 = 1107296256;
  v54 = sub_2380254A0;
  v55 = &block_descriptor_22;
  v17 = _Block_copy(&aBlock);
  v48 = v14;

  v18 = swift_allocObject();
  *(v18 + 16) = v1;
  *(v18 + 24) = v3;
  v56 = sub_238024A20;
  v57 = v18;
  aBlock = MEMORY[0x277D85DD0];
  v53 = 1107296256;
  v54 = sub_2380254A0;
  v55 = &block_descriptor_28;
  v19 = _Block_copy(&aBlock);

  v20 = [v15 sinkWithCompletion:v17 receiveInput:v19];
  _Block_release(v19);
  _Block_release(v17);

  v21 = [BiomeLibrary() App];
  swift_unknownObjectRelease();
  v22 = [v21 WebUsage];
  swift_unknownObjectRelease();
  v23 = [v22 &selRef:v7 eventWithStream:? startDate:? endDate:? value:? metadata:?];
  v24 = swift_allocObject();
  *(v24 + 16) = v22;
  v56 = sub_2380254B4;
  v57 = v24;
  aBlock = MEMORY[0x277D85DD0];
  v53 = 1107296256;
  v54 = sub_2380254A0;
  v55 = &block_descriptor_34;
  v25 = _Block_copy(&aBlock);
  v47 = v22;

  v56 = sub_238024A28;
  v57 = v3;
  aBlock = MEMORY[0x277D85DD0];
  v53 = 1107296256;
  v54 = sub_2380254A0;
  v55 = &block_descriptor_37_0;
  v26 = _Block_copy(&aBlock);

  v27 = [v23 sinkWithCompletion:v25 receiveInput:v26];
  _Block_release(v26);
  _Block_release(v25);

  v28 = [BiomeLibrary() Notification];
  swift_unknownObjectRelease();
  v29 = [v28 Usage];
  swift_unknownObjectRelease();
  v30 = [v29 &selRef:v7 eventWithStream:? startDate:? endDate:? value:? metadata:?];
  v50 = v7;

  v31 = swift_allocObject();
  *(v31 + 16) = v29;
  v56 = sub_2380254B4;
  v57 = v31;
  aBlock = MEMORY[0x277D85DD0];
  v53 = 1107296256;
  v54 = sub_2380254A0;
  v55 = &block_descriptor_43_0;
  v32 = _Block_copy(&aBlock);
  v46 = v29;

  v56 = sub_238024A58;
  v57 = v1;
  aBlock = MEMORY[0x277D85DD0];
  v53 = 1107296256;
  v54 = sub_2380254A0;
  v55 = &block_descriptor_46_0;
  v33 = _Block_copy(&aBlock);

  v34 = [v30 sinkWithCompletion:v32 receiveInput:v33];
  _Block_release(v33);
  _Block_release(v32);

  swift_beginAccess();
  v35 = *(v1 + 16);
  v36 = *(v35 + 16);
  if (v36)
  {
    v37 = sub_237FCC224(*(*(v1 + 16) + 16), 0);
    v38 = sub_237FD1008(&aBlock, v37 + 4, v36, v35);
    v39 = aBlock;

    sub_237FBDBF0(v39);
    if (v38 == v36)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v37 = MEMORY[0x277D84F90];
LABEL_5:
  swift_beginAccess();
  v40 = *v51;
  v41 = *(*v51 + 16);
  if (!v41)
  {

    goto LABEL_9;
  }

  v42 = sub_237FCC224(*(*v51 + 16), 0);
  v43 = sub_237FD1008(&aBlock, v42 + 4, v41, v40);
  v44 = aBlock;

  result = sub_237FBDBF0(v44);
  if (v43 == v41)
  {

LABEL_9:

    return v37;
  }

  __break(1u);
  return result;
}

uint64_t sub_23801CA68(void *a1, uint64_t a2)
{
  v3 = sub_238031A64();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v25[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = swift_projectBox();
  v8 = [a1 eventBody];
  if (v8)
  {
    v9 = v8;
    if ([v8 backlightLevel])
    {
      [a1 timestamp];
      sub_2380319D4();

      v10 = 1;
      swift_beginAccess();
      (*(v4 + 40))(v7, v6, v3);
    }

    else
    {

      return 0;
    }
  }

  else
  {
    if (qword_280C35388 != -1)
    {
      swift_once();
    }

    v11 = sub_238031DB4();
    __swift_project_value_buffer(v11, qword_280C36C50);
    v12 = a1;
    v13 = sub_238031D94();
    v14 = sub_2380320F4();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v25[0] = v16;
      *v15 = 136446210;
      v17 = v12;
      v18 = [v17 description];
      v19 = sub_238031EA4();
      v21 = v20;

      v22 = sub_237FDF8EC(v19, v21, v25);

      *(v15 + 4) = v22;
      _os_log_impl(&dword_237FA1000, v13, v14, "Skipping malformed display backlight event %{public}s", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v16);
      MEMORY[0x2383E5E30](v16, -1, -1);
      MEMORY[0x2383E5E30](v15, -1, -1);
    }

    return 1;
  }

  return v10;
}

uint64_t sub_23801CD10(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  LOBYTE(v3) = v3();

  return v3 & 1;
}

void sub_23801CD68(void *a1)
{
  v2 = [a1 eventBody];
  if (v2)
  {
    v3 = v2;
    v4 = [v2 parentBundleID];
    if (v4 || (v4 = [v3 bundleID]) != 0)
    {
      v5 = v4;
      v6 = sub_238031EA4();
      v8 = v7;

      sub_237FB5F68(&v21, v6, v8);

      return;
    }
  }

  if (qword_280C35388 != -1)
  {
    swift_once();
  }

  v9 = sub_238031DB4();
  __swift_project_value_buffer(v9, qword_280C36C50);
  v10 = a1;
  oslog = sub_238031D94();
  v11 = sub_2380320F4();

  if (os_log_type_enabled(oslog, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v21 = v13;
    *v12 = 136446210;
    v14 = v10;
    v15 = [v14 description];
    v16 = sub_238031EA4();
    v18 = v17;

    v19 = sub_237FDF8EC(v16, v18, &v21);

    *(v12 + 4) = v19;
    _os_log_impl(&dword_237FA1000, oslog, v11, "Received malformed app event: %{public}s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v13);
    MEMORY[0x2383E5E30](v13, -1, -1);
    MEMORY[0x2383E5E30](v12, -1, -1);
  }

  else
  {
  }
}

void sub_23801CFB0(void *a1)
{
  v2 = [a1 eventBody];
  if (v2)
  {
    v3 = v2;
    v4 = [v2 bundleID];
    if (v4)
    {
      v5 = v4;
      v6 = sub_238031EA4();
      v8 = v7;

      sub_237FB5F68(&v21, v6, v8);

      return;
    }
  }

  if (qword_280C35388 != -1)
  {
    swift_once();
  }

  v9 = sub_238031DB4();
  __swift_project_value_buffer(v9, qword_280C36C50);
  v10 = a1;
  oslog = sub_238031D94();
  v11 = sub_2380320F4();

  if (os_log_type_enabled(oslog, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v21 = v13;
    *v12 = 136446210;
    v14 = v10;
    v15 = [v14 description];
    v16 = sub_238031EA4();
    v18 = v17;

    v19 = sub_237FDF8EC(v16, v18, &v21);

    *(v12 + 4) = v19;
    _os_log_impl(&dword_237FA1000, oslog, v11, "Received malformed app event: %{public}s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v13);
    MEMORY[0x2383E5E30](v13, -1, -1);
    MEMORY[0x2383E5E30](v12, -1, -1);
  }

  else
  {
  }
}

uint64_t sub_23801D1DC(void *a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  sub_23801CFB0(a1);
  swift_endAccess();
  swift_beginAccess();
  sub_23801D264(a1);
  return swift_endAccess();
}

void sub_23801D264(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE5488, "b*");
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v26 - v3;
  v5 = [a1 eventBody];
  if (v5)
  {
    v6 = v5;
    v7 = [v5 URL];
    if (v7)
    {
      v8 = v7;
      sub_238031EA4();
    }

    sub_238031974();

    v9 = sub_238031994();
    v10 = *(v9 - 8);
    if ((*(v10 + 48))(v4, 1, v9) == 1)
    {
      sub_237FE6EC0(v4);
    }

    else
    {
      v11 = sub_238031944();
      v13 = v12;
      (*(v10 + 8))(v4, v9);

      if (v13)
      {
        sub_237FB5F68(&v26, v11, v13);

        return;
      }
    }
  }

  if (qword_280C35388 != -1)
  {
    swift_once();
  }

  v14 = sub_238031DB4();
  __swift_project_value_buffer(v14, qword_280C36C50);
  v15 = a1;
  v16 = sub_238031D94();
  v17 = sub_2380320F4();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v26 = v19;
    *v18 = 136446210;
    v20 = v15;
    v21 = [v20 description];
    v22 = sub_238031EA4();
    v24 = v23;

    v25 = sub_237FDF8EC(v22, v24, &v26);

    *(v18 + 4) = v25;
    _os_log_impl(&dword_237FA1000, v16, v17, "Received malformed web event: %{public}s", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v19);
    MEMORY[0x2383E5E30](v19, -1, -1);
    MEMORY[0x2383E5E30](v18, -1, -1);
  }
}

void sub_23801D564(void *a1)
{
  v2 = [a1 eventBody];
  if (v2)
  {
    v3 = v2;
    v4 = [v2 webDomain];
    if (v4)
    {
      v5 = v4;
      v6 = sub_238031EA4();
      v8 = v7;

      sub_237FB5F68(&v21, v6, v8);

      return;
    }
  }

  if (qword_280C35388 != -1)
  {
    swift_once();
  }

  v9 = sub_238031DB4();
  __swift_project_value_buffer(v9, qword_280C36C50);
  v10 = a1;
  oslog = sub_238031D94();
  v11 = sub_2380320F4();

  if (os_log_type_enabled(oslog, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v21 = v13;
    *v12 = 136446210;
    v14 = v10;
    v15 = [v14 description];
    v16 = sub_238031EA4();
    v18 = v17;

    v19 = sub_237FDF8EC(v16, v18, &v21);

    *(v12 + 4) = v19;
    _os_log_impl(&dword_237FA1000, oslog, v11, "Received malformed web event: %{public}s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v13);
    MEMORY[0x2383E5E30](v13, -1, -1);
    MEMORY[0x2383E5E30](v12, -1, -1);
  }

  else
  {
  }
}

uint64_t sub_23801D790(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t))
{
  swift_beginAccess();
  a3(a1, a2 + 16);
  return swift_endAccess();
}

uint64_t sub_23801D7F4(void *a1, uint64_t a2)
{
  swift_beginAccess();
  sub_23801CFB0(a1);
  return swift_endAccess();
}

uint64_t sub_23801D850(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v9 = swift_allocObject();
  *(v9 + 16) = MEMORY[0x277D84FA0];
  v10 = sub_2380247DC();
  v11 = [BiomeLibrary() App];
  swift_unknownObjectRelease();
  v12 = [v11 MediaUsage];
  swift_unknownObjectRelease();
  v35 = v10;
  v13 = [v12 publisherWithOptions_];
  v14 = swift_allocObject();
  *(v14 + 16) = v12;
  v41 = sub_2380254B4;
  v42 = v14;
  aBlock = MEMORY[0x277D85DD0];
  v38 = 1107296256;
  v39 = sub_2380254A0;
  v40 = &block_descriptor_208;
  v15 = _Block_copy(&aBlock);
  v36 = v12;

  v16 = swift_allocObject();
  *(v16 + 16) = a2;
  *(v16 + 24) = a3;
  *(v16 + 32) = a4;
  *(v16 + 40) = a5;
  *(v16 + 48) = a6;
  *(v16 + 56) = v9;
  v41 = sub_238025300;
  v42 = v16;
  aBlock = MEMORY[0x277D85DD0];
  v38 = 1107296256;
  v39 = sub_2380254A0;
  v40 = &block_descriptor_214;
  v17 = _Block_copy(&aBlock);

  v18 = [v13 sinkWithCompletion:v15 receiveInput:v17];
  _Block_release(v17);
  _Block_release(v15);

  v19 = [BiomeLibrary() App];
  swift_unknownObjectRelease();
  v20 = [v19 WebUsage];
  swift_unknownObjectRelease();
  v21 = [v20 publisherWithOptions_];

  v22 = swift_allocObject();
  *(v22 + 16) = v20;
  v41 = sub_2380254B4;
  v42 = v22;
  aBlock = MEMORY[0x277D85DD0];
  v38 = 1107296256;
  v39 = sub_2380254A0;
  v40 = &block_descriptor_220;
  v23 = _Block_copy(&aBlock);
  v24 = v20;

  v25 = swift_allocObject();
  *(v25 + 16) = a2;
  *(v25 + 24) = a3;
  *(v25 + 32) = a4;
  *(v25 + 40) = a5;
  *(v25 + 48) = a6;
  *(v25 + 56) = v9;
  v41 = sub_238025360;
  v42 = v25;
  aBlock = MEMORY[0x277D85DD0];
  v38 = 1107296256;
  v39 = sub_2380254A0;
  v40 = &block_descriptor_226;
  v26 = _Block_copy(&aBlock);

  v27 = [v21 sinkWithCompletion:v23 receiveInput:v26];

  _Block_release(v26);
  _Block_release(v23);

  swift_beginAccess();
  v28 = *(v9 + 16);

  return v28;
}

void sub_23801DD10(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7)
{
  v45 = a4;
  v46 = a5;
  v47 = a3;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE5488, "b*");
  MEMORY[0x28223BE20](v11 - 8);
  v13 = v43 - v12;
  v14 = sub_238031994();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = v43 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v16);
  v21 = v43 - v20;
  MEMORY[0x28223BE20](v19);
  v23 = v43 - v22;
  v24 = [a1 eventBody];
  if (v24)
  {
    v48 = v24;
    if ([v24 starting])
    {
      v25 = [v48 URL];
      if (v25)
      {
        v44 = a6;
        v43[1] = a7;
        v26 = v25;
        sub_238031EA4();

        v27 = v15;
        sub_238031974();

        if ((*(v15 + 48))(v13, 1, v14) == 1)
        {

          sub_237FE6EC0(v13);
          return;
        }

        (*(v15 + 32))(v23, v13, v14);
        v29 = [v48 bundleID];
        v30 = v44;
        if (!v29)
        {
          goto LABEL_25;
        }

        v31 = v29;
        v32 = sub_238031EA4();
        v34 = v33;

        if (v32 == a2 && v34 == v47)
        {
        }

        else
        {
          v35 = sub_2380324E4();

          if ((v35 & 1) == 0)
          {
            goto LABEL_25;
          }
        }

        v36 = [v48 safariProfileID];
        if (v36)
        {
          v37 = v36;
          v38 = sub_238031EA4();
          v40 = v39;

          if (v46)
          {
            if (v38 == v45 && v40 == v46)
            {

              goto LABEL_23;
            }

            v41 = sub_2380324E4();

            if (v41)
            {
LABEL_23:
              if (([v48 isUsageTrusted] ^ v30))
              {
                (*(v27 + 8))(v23, v14);
              }

              else
              {
                (*(v27 + 16))(v18, v23, v14);
                swift_beginAccess();
                sub_237FB768C(v21, v18);
                swift_endAccess();

                v42 = *(v27 + 8);
                v42(v21, v14);
                v42(v23, v14);
              }

              return;
            }
          }

          else
          {
          }
        }

        else if (!v46)
        {
          goto LABEL_23;
        }

LABEL_25:

        (*(v27 + 8))(v23, v14);
        return;
      }
    }

    v28 = v48;
  }
}

void sub_23801E174(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7)
{
  v45 = a4;
  v46 = a5;
  v47 = a3;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE5488, "b*");
  MEMORY[0x28223BE20](v11 - 8);
  v13 = v43 - v12;
  v14 = sub_238031994();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = v43 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v16);
  v21 = v43 - v20;
  MEMORY[0x28223BE20](v19);
  v23 = v43 - v22;
  v24 = [a1 eventBody];
  if (v24)
  {
    v48 = v24;
    if ([v24 usageState] == 3)
    {
      v25 = [v48 webpageURL];
      if (v25)
      {
        v44 = a6;
        v43[1] = a7;
        v26 = v25;
        sub_238031EA4();

        v27 = v15;
        sub_238031974();

        if ((*(v15 + 48))(v13, 1, v14) == 1)
        {

          sub_237FE6EC0(v13);
          return;
        }

        (*(v15 + 32))(v23, v13, v14);
        v29 = [v48 applicationID];
        v30 = v44;
        if (!v29)
        {
          goto LABEL_25;
        }

        v31 = v29;
        v32 = sub_238031EA4();
        v34 = v33;

        if (v32 == a2 && v34 == v47)
        {
        }

        else
        {
          v35 = sub_2380324E4();

          if ((v35 & 1) == 0)
          {
            goto LABEL_25;
          }
        }

        v36 = [v48 safariProfileID];
        if (v36)
        {
          v37 = v36;
          v38 = sub_238031EA4();
          v40 = v39;

          if (v46)
          {
            if (v38 == v45 && v40 == v46)
            {

              goto LABEL_23;
            }

            v41 = sub_2380324E4();

            if (v41)
            {
LABEL_23:
              if (([v48 isUsageTrusted] ^ v30))
              {
                (*(v27 + 8))(v23, v14);
              }

              else
              {
                (*(v27 + 16))(v18, v23, v14);
                swift_beginAccess();
                sub_237FB768C(v21, v18);
                swift_endAccess();

                v42 = *(v27 + 8);
                v42(v21, v14);
                v42(v23, v14);
              }

              return;
            }
          }

          else
          {
          }
        }

        else if (!v46)
        {
          goto LABEL_23;
        }

LABEL_25:

        (*(v27 + 8))(v23, v14);
        return;
      }
    }

    v28 = v48;
  }
}

id static EventStreams.currentBundleIdentifiers.getter()
{
  v0 = sub_238031A64();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_238031654();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v23 - v6;
  sub_238031A54();
  sub_238031624();
  static EventStreams.adjust(_:)(v5, v7);
  v8 = *(v2 + 8);
  v8(v5, v1);
  sub_238031644();
  if (v9 <= 0.0)
  {
    sub_238024CE8();
    v19 = MEMORY[0x2383E5240](MEMORY[0x277D84F90]);
  }

  else
  {
    v24 = [objc_allocWithZone(MEMORY[0x277CBEB40]) init];
    v10 = [BiomeLibrary() ScreenTime];
    swift_unknownObjectRelease();
    v11 = [v10 AppUsage];
    swift_unknownObjectRelease();
    v12 = sub_2380247DC();
    v23 = [v11 publisherWithOptions_];

    v13 = swift_allocObject();
    *(v13 + 16) = v11;
    v29 = sub_2380254B4;
    v30 = v13;
    aBlock = MEMORY[0x277D85DD0];
    v26 = 1107296256;
    v27 = sub_2380254A0;
    v28 = &block_descriptor_52;
    v14 = _Block_copy(&aBlock);
    v15 = v11;

    v16 = swift_allocObject();
    v17 = v24;
    *(v16 + 16) = v24;
    v29 = sub_238024D34;
    v30 = v16;
    aBlock = MEMORY[0x277D85DD0];
    v26 = 1107296256;
    v27 = sub_2380254A0;
    v28 = &block_descriptor_58;
    v18 = _Block_copy(&aBlock);
    v19 = v17;

    v20 = v23;
    v21 = [v23 sinkWithCompletion:v14 receiveInput:v18];
    _Block_release(v18);
    _Block_release(v14);
  }

  v8(v7, v1);
  return v19;
}

void sub_23801E980(void *a1, void *a2)
{
  v3 = [a1 eventBody];
  if (v3)
  {
    v8 = v3;
    v4 = [v3 parentBundleID];
    if (v4 || (v4 = [v8 bundleID]) != 0)
    {
      v5 = v4;
      sub_238031EA4();

      LODWORD(v5) = [v8 starting];
      v6 = sub_238031E74();

      v7 = &selRef_addObject_;
      if (!v5)
      {
        v7 = &selRef_removeObject_;
      }

      [a2 *v7];
    }
  }
}

id static EventStreams.currentWebDomains.getter()
{
  v0 = sub_238031A64();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_238031654();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v26 - v6;
  sub_238031A54();
  sub_238031624();
  static EventStreams.adjust(_:)(v5, v7);
  v8 = *(v2 + 8);
  v8(v5, v1);
  sub_238031644();
  if (v9 <= 0.0)
  {
    sub_238024CE8();
    v25 = MEMORY[0x2383E5240](MEMORY[0x277D84F90]);
    v8(v7, v1);
    return v25;
  }

  else
  {
    v28 = [objc_allocWithZone(MEMORY[0x277CBEB40]) init];
    v10 = swift_allocObject();
    *(v10 + 16) = MEMORY[0x277D84F98];
    v11 = BiomeLibrary();
    v29 = v8;
    v12 = [v11 App];
    swift_unknownObjectRelease();
    v13 = [v12 WebUsage];
    swift_unknownObjectRelease();
    v14 = sub_2380247DC();
    v27 = [v13 publisherWithOptions_];

    v15 = swift_allocObject();
    *(v15 + 16) = v13;
    v34 = sub_2380254B4;
    v35 = v15;
    aBlock = MEMORY[0x277D85DD0];
    v31 = 1107296256;
    v32 = sub_2380254A0;
    v33 = &block_descriptor_67;
    v16 = _Block_copy(&aBlock);
    v17 = v13;

    v18 = swift_allocObject();
    v19 = v28;
    *(v18 + 16) = v10;
    *(v18 + 24) = v19;
    v34 = sub_238024D3C;
    v35 = v18;
    aBlock = MEMORY[0x277D85DD0];
    v31 = 1107296256;
    v32 = sub_2380254A0;
    v33 = &block_descriptor_73;
    v20 = _Block_copy(&aBlock);

    v21 = v19;

    v22 = v27;
    v23 = [v27 sinkWithCompletion:v16 receiveInput:v20];
    _Block_release(v20);
    _Block_release(v16);

    v29(v7, v1);

    return v21;
  }
}

void sub_23801EE8C(void *a1, uint64_t a2, void *a3)
{
  v5 = [a1 eventBody];
  if (v5)
  {
    v20 = v5;
    v6 = [v5 uniqueID];
    if (v6)
    {
      v7 = v6;
      v8 = sub_238031EA4();
      v10 = v9;

      v11 = [v20 webDomain];
      if (v11)
      {
        v12 = v11;
        v13 = [v20 usageState];
        swift_beginAccess();
        v14 = *(a2 + 16);
        if (*(v14 + 16) && (v15 = sub_237FA4E8C(v8, v10), (v16 & 1) != 0))
        {
          v17 = *(*(v14 + 56) + 4 * v15);
          swift_endAccess();
          if (v17 == 3)
          {
            if (v13 != 3)
            {
              v18 = &selRef_removeObject_;
LABEL_15:
              [a3 *v18];
              goto LABEL_16;
            }

            goto LABEL_16;
          }
        }

        else
        {
          swift_endAccess();
        }

        if (v13 == 3)
        {
          v18 = &selRef_addObject_;
          goto LABEL_15;
        }

LABEL_16:

        swift_beginAccess();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v21 = *(a2 + 16);
        *(a2 + 16) = 0x8000000000000000;
        sub_237FFBD68(v13, v8, v10, isUniquelyReferenced_nonNull_native);

        *(a2 + 16) = v21;
        swift_endAccess();

        return;
      }
    }

    else
    {
    }
  }
}

BOOL static EventStreams.isQuickLookVideoNowPlaying.getter()
{
  v0 = sub_238031A64();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_238031654();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v26 - v6;
  sub_238031A54();
  sub_238031624();
  static EventStreams.adjust(_:)(v5, v7);
  v8 = *(v2 + 8);
  v8(v5, v1);
  sub_238031644();
  if (v9 <= 0.0)
  {
    v8(v7, v1);
    return 0;
  }

  else
  {
    v10 = swift_allocObject();
    *(v10 + 16) = 0;
    v28 = (v10 + 16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE50A8, &qword_238033C90);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_238036350;
    *(inited + 32) = sub_238031EA4();
    *(inited + 40) = v12;
    *(inited + 48) = sub_238031EA4();
    *(inited + 56) = v13;
    v27 = sub_238011560(inited);
    swift_setDeallocating();
    swift_arrayDestroy();
    v14 = [BiomeLibrary() Media];
    swift_unknownObjectRelease();
    v15 = [v14 NowPlaying];
    swift_unknownObjectRelease();
    v16 = sub_2380247DC();
    v17 = [v15 publisherWithOptions_];

    v18 = swift_allocObject();
    *(v18 + 16) = v15;
    v33 = sub_2380254B4;
    v34 = v18;
    aBlock = MEMORY[0x277D85DD0];
    v30 = 1107296256;
    v26 = v8;
    v31 = sub_2380254A0;
    v32 = &block_descriptor_82_0;
    v19 = _Block_copy(&aBlock);
    v20 = v15;

    v21 = swift_allocObject();
    *(v21 + 16) = v27;
    *(v21 + 24) = v10;
    v33 = sub_238024D44;
    v34 = v21;
    aBlock = MEMORY[0x277D85DD0];
    v30 = 1107296256;
    v31 = sub_2380254A0;
    v32 = &block_descriptor_88;
    v22 = _Block_copy(&aBlock);

    v23 = [v17 sinkWithCompletion:v19 receiveInput:v22];
    _Block_release(v22);
    _Block_release(v19);

    v26(v7, v1);
    v24 = v28;
    swift_beginAccess();
    LODWORD(v24) = *v24;

    return v24 == 1;
  }
}

void sub_23801F4F4(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = [a1 eventBody];
  if (v5)
  {
    v13 = v5;
    v6 = [v5 bundleID];
    if (v6 && (v7 = v6, v8 = sub_238031EA4(), v10 = v9, v7, v11 = sub_23801BD60(v8, v10, a2), , (v11 & 1) != 0) && [v13 itemMediaType] == 2)
    {
      v12 = [v13 playbackState];

      swift_beginAccess();
      *(a3 + 16) = v12;
    }

    else
    {
    }
  }
}

void static EventStreams.currentMediaUsageIdentifiers.getter()
{
  v0 = sub_238031A64();
  MEMORY[0x28223BE20](v0 - 8);
  v1 = sub_238031654();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = v48 - v6;
  sub_238031A54();
  sub_238031624();
  static EventStreams.adjust(_:)(v5, v7);
  v10 = *(v2 + 8);
  v8 = v2 + 8;
  v9 = v10;
  v10(v5, v1);
  sub_238031644();
  if (v11 <= 0.0)
  {
    sub_238024CE8();
    v35 = MEMORY[0x277D84F90];
    MEMORY[0x2383E5240](MEMORY[0x277D84F90]);
    MEMORY[0x2383E5240](v35);
    v9(v7, v1);
  }

  else
  {
    v49 = v9;
    v51 = v8;
    v52 = v1;
    v12 = swift_allocObject();
    v13 = MEMORY[0x277D84F98];
    v12[2] = MEMORY[0x277D84F98];
    v14 = swift_allocObject();
    v14[2] = v13;
    v53 = v14 + 2;
    v15 = [BiomeLibrary() App];
    swift_unknownObjectRelease();
    v16 = [v15 MediaUsage];
    swift_unknownObjectRelease();
    v50 = v7;
    v17 = sub_2380247DC();
    v18 = [v16 publisherWithOptions_];

    v19 = swift_allocObject();
    *(v19 + 16) = v16;
    v58 = sub_2380254B4;
    v59 = v19;
    aBlock = MEMORY[0x277D85DD0];
    v55 = 1107296256;
    v56 = sub_2380254A0;
    v57 = &block_descriptor_98;
    v20 = _Block_copy(&aBlock);
    v48[0] = v16;

    v21 = swift_allocObject();
    *(v21 + 16) = v12;
    *(v21 + 24) = v14;
    v58 = sub_238024D94;
    v59 = v21;
    aBlock = MEMORY[0x277D85DD0];
    v55 = 1107296256;
    v56 = sub_2380254A0;
    v57 = &block_descriptor_104;
    v22 = _Block_copy(&aBlock);
    v48[2] = v12;

    v48[1] = v14;

    v23 = [v18 sinkWithCompletion:v20 receiveInput:v22];
    _Block_release(v22);
    _Block_release(v20);

    swift_beginAccess();
    v24 = v12[2];
    v25 = objc_allocWithZone(MEMORY[0x277CBEB40]);

    v26 = [v25 init];
    v27 = 1 << *(v24 + 32);
    v28 = -1;
    if (v27 < 64)
    {
      v28 = ~(-1 << v27);
    }

    v29 = v28 & *(v24 + 64);
    v30 = (v27 + 63) >> 6;

    v31 = 0;
    if (v29)
    {
      goto LABEL_10;
    }

    while (1)
    {
      v32 = v31 + 1;
      if (__OFADD__(v31, 1))
      {
        __break(1u);
LABEL_25:
        __break(1u);
        return;
      }

      if (v32 >= v30)
      {
        break;
      }

      v29 = *(v24 + 64 + 8 * v32);
      ++v31;
      if (v29)
      {
        v31 = v32;
        do
        {
LABEL_10:
          v29 &= v29 - 1;

          sub_238020124(v33);
          v34 = sub_238032064();

          [v26 unionSet_];
        }

        while (v29);
        continue;
      }
    }

    v36 = v53;
    swift_beginAccess();
    v37 = *v36;
    v38 = objc_allocWithZone(MEMORY[0x277CBEB40]);

    v39 = [v38 init];
    v40 = 1 << *(v37 + 32);
    v41 = -1;
    if (v40 < 64)
    {
      v41 = ~(-1 << v40);
    }

    v42 = v41 & *(v37 + 64);
    v43 = (v40 + 63) >> 6;

    v44 = 0;
    if (v42)
    {
      goto LABEL_21;
    }

    while (1)
    {
      v45 = v44 + 1;
      if (__OFADD__(v44, 1))
      {
        goto LABEL_25;
      }

      if (v45 >= v43)
      {
        break;
      }

      v42 = *(v37 + 64 + 8 * v45);
      ++v44;
      if (v42)
      {
        v44 = v45;
        do
        {
LABEL_21:
          v42 &= v42 - 1;

          sub_238020124(v46);
          v47 = sub_238032064();

          [v39 unionSet_];
        }

        while (v42);
        continue;
      }
    }

    v49(v50, v52);
  }
}

void sub_23801FCB0(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE5488, "b*");
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v41 - v7;
  v9 = [a1 eventBody];
  if (v9)
  {
    v41 = v9;
    v10 = [v9 uniqueID];
    if (v10)
    {
      v11 = v10;
      v12 = sub_238031EA4();
      v14 = v13;

      v15 = [v41 starting];
      v16 = [v41 bundleID];
      if (!v16)
      {
        goto LABEL_14;
      }

      v17 = v16;
      v18 = sub_238031EA4();
      v20 = v19;

      swift_beginAccess();
      v21 = *(a2 + 16);
      if (*(v21 + 16) && (v22 = sub_237FA4E8C(v12, v14), (v23 & 1) != 0))
      {
        v24 = *(*(v21 + 56) + 8 * v22);
        swift_endAccess();
        v44 = v24;

        if (!v15)
        {
LABEL_7:
          sub_2380242E4(v18, v20);

LABEL_13:

          v26 = v44;
          swift_beginAccess();

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v42 = *(a2 + 16);
          *(a2 + 16) = 0x8000000000000000;
          sub_237FFBBBC(v26, v12, v14, isUniquelyReferenced_nonNull_native);

          *(a2 + 16) = v42;
          swift_endAccess();
LABEL_14:
          v28 = [v41 URL];
          if (v28)
          {
            v29 = v28;
            sub_238031EA4();
          }

          sub_238031974();

          v30 = sub_238031994();
          v31 = *(v30 - 8);
          if ((*(v31 + 48))(v8, 1, v30) == 1)
          {
            sub_237FE6EC0(v8);
LABEL_23:

LABEL_27:

            return;
          }

          v32 = sub_238031944();
          v34 = v33;
          (*(v31 + 8))(v8, v30);
          if (!v34)
          {
            goto LABEL_23;
          }

          swift_beginAccess();
          v35 = *(a3 + 16);
          if (*(v35 + 16) && (v36 = sub_237FA4E8C(v12, v14), (v37 & 1) != 0))
          {
            v38 = *(*(v35 + 56) + 8 * v36);
            swift_endAccess();
            v44 = v38;

            if (!v15)
            {
LABEL_22:
              sub_2380242E4(v32, v34);

LABEL_26:

              v39 = v44;
              swift_beginAccess();
              v40 = swift_isUniquelyReferenced_nonNull_native();
              v42 = *(a3 + 16);
              *(a3 + 16) = 0x8000000000000000;
              sub_237FFBBBC(v39, v12, v14, v40);

              *(a3 + 16) = v42;
              swift_endAccess();
              goto LABEL_27;
            }
          }

          else
          {
            swift_endAccess();
            v44 = MEMORY[0x277D84FA0];
            if (!v15)
            {
              goto LABEL_22;
            }
          }

          sub_237FB5F68(&v43, v32, v34);
          goto LABEL_26;
        }
      }

      else
      {
        swift_endAccess();
        v44 = MEMORY[0x277D84FA0];
        if (!v15)
        {
          goto LABEL_7;
        }
      }

      sub_237FB5F68(&v43, v18, v20);
      goto LABEL_13;
    }

    v25 = v41;
  }
}

uint64_t sub_238020124(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DEE5750, &unk_238036520);
    v2 = sub_238032284();
  }

  else
  {
    v2 = MEMORY[0x277D84FA0];
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

  v5 = v4 & *(a1 + 56);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 56;

  v9 = 0;
  while (v5)
  {
LABEL_15:

    swift_dynamicCast();
    result = sub_238032234();
    v13 = -1 << *(v2 + 32);
    v14 = result & ~v13;
    v15 = v14 >> 6;
    if (((-1 << v14) & ~*(v7 + 8 * (v14 >> 6))) == 0)
    {
      v16 = 0;
      v17 = (63 - v13) >> 6;
      while (++v15 != v17 || (v16 & 1) == 0)
      {
        v18 = v15 == v17;
        if (v15 == v17)
        {
          v15 = 0;
        }

        v16 |= v18;
        v19 = *(v7 + 8 * v15);
        if (v19 != -1)
        {
          v10 = __clz(__rbit64(~v19)) + (v15 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v14) & ~*(v7 + 8 * (v14 >> 6)))) | v14 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v5 &= v5 - 1;
    v11 = *(v2 + 48) + 40 * v10;
    *(v11 + 32) = v22;
    *v11 = v20;
    *(v11 + 16) = v21;
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

    v5 = *(a1 + 56 + 8 * v12);
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

uint64_t EventStreams.ExportError.hashValue.getter()
{
  sub_2380325B4();
  MEMORY[0x2383E5730](0);
  return sub_2380325F4();
}

uint64_t sub_2380203D4()
{
  sub_2380325B4();
  MEMORY[0x2383E5730](0);
  return sub_2380325F4();
}

uint64_t sub_238020440(uint64_t a1)
{
  sub_2380325B4();
  MEMORY[0x2383E5730](0);
  return sub_2380325F4();
}

void static EventStreams.export(to:)(char *a1)
{
  v3 = [BiomeLibrary() ScreenTime];
  swift_unknownObjectRelease();
  v4 = [v3 AppUsage];
  swift_unknownObjectRelease();
  sub_238020774(v4, a1);

  if (!v1)
  {
    v5 = [BiomeLibrary() App];
    swift_unknownObjectRelease();
    v6 = [v5 MediaUsage];
    swift_unknownObjectRelease();
    sub_238020E94(v6, a1);

    v7 = [BiomeLibrary() App];
    swift_unknownObjectRelease();
    v8 = [v7 WebUsage];
    swift_unknownObjectRelease();
    sub_2380215B4(v8, a1);

    v9 = [BiomeLibrary() Device];
    swift_unknownObjectRelease();
    v10 = [v9 Display];
    swift_unknownObjectRelease();
    v11 = [v10 Backlight];
    swift_unknownObjectRelease();
    sub_238021CD4(v11, a1);

    v12 = [BiomeLibrary() Media];
    swift_unknownObjectRelease();
    v13 = [v12 NowPlaying];
    swift_unknownObjectRelease();
    sub_2380223F4(v13, a1);

    v14 = [BiomeLibrary() Notification];
    swift_unknownObjectRelease();
    v15 = [v14 Usage];
    swift_unknownObjectRelease();
    sub_238022B14(v15, a1);
  }
}

uint64_t sub_238020774(char *a1, char *a2)
{
  v65 = a2;
  v3 = sub_238031884();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v63 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_238031994();
  v67 = *(v7 - 8);
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v63 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v63 - v11;
  v66 = a1;
  v13 = [a1 identifier];
  v14 = sub_238031EA4();
  v16 = v15;

  aBlock = v14;
  v69 = v16;
  v17 = v12;
  MEMORY[0x2383E5050](0x6E6F736A2ELL, 0xE500000000000000);
  v18 = (*(v4 + 104))(v6, *MEMORY[0x277CC91D0], v3);
  sub_238024E68(v18, v19, v20);
  sub_238031984();
  (*(v4 + 8))(v6, v3);

  if (qword_27DEE4D78 != -1)
  {
    swift_once();
  }

  v21 = sub_238031DB4();
  __swift_project_value_buffer(v21, qword_27DEE9590);
  v22 = v67;
  (*(v67 + 16))(v10, v12, v7);
  v23 = v66;
  v24 = sub_238031D94();
  v25 = sub_238032114();

  v26 = os_log_type_enabled(v24, v25);
  v27 = v7;
  v65 = v23;
  if (v26)
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v66 = v17;
    v64 = v29;
    aBlock = v29;
    *v28 = 136446466;
    v30 = [v23 identifier];
    v31 = v7;
    v32 = v22;
    v33 = sub_238031EA4();
    v35 = v34;

    v36 = sub_237FDF8EC(v33, v35, &aBlock);

    *(v28 + 4) = v36;
    *(v28 + 12) = 2082;
    v37 = sub_238031954();
    v39 = v38;
    v40 = *(v32 + 8);
    v40(v10, v31);
    v41 = sub_237FDF8EC(v37, v39, &aBlock);
    v27 = v31;

    *(v28 + 14) = v41;
    _os_log_impl(&dword_237FA1000, v24, v25, "Exporting %{public}s to %{public}s", v28, 0x16u);
    v42 = v64;
    swift_arrayDestroy();
    v17 = v66;
    MEMORY[0x2383E5E30](v42, -1, -1);
    MEMORY[0x2383E5E30](v28, -1, -1);
  }

  else
  {

    v40 = *(v22 + 8);
    v40(v10, v27);
  }

  v43 = [objc_opt_self() defaultManager];
  sub_238031954();
  v44 = sub_238031E74();

  [v43 createFileAtPath:v44 contents:0 attributes:0];

  v45 = objc_allocWithZone(MEMORY[0x277CBEB78]);
  v46 = sub_2380318D4();
  v47 = [v45 initWithURL:v46 append:0];

  if (!v47)
  {
    sub_238024EBC(v48, v49, v50);
    swift_allocError();
    swift_willThrow();
    goto LABEL_10;
  }

  v51 = v47;
  [v51 open];
  v52 = [v51 streamError];

  if (v52)
  {
    swift_willThrow();

LABEL_10:
    return (v40)(v17, v27);
  }

  v54 = v65;
  v55 = [v65 publisher];
  v56 = swift_allocObject();
  *(v56 + 16) = v54;
  v72 = sub_2380254A8;
  v73 = v56;
  v66 = v17;
  aBlock = MEMORY[0x277D85DD0];
  v69 = 1107296256;
  v64 = v27;
  v70 = sub_2380254A0;
  v71 = &block_descriptor_193;
  v57 = _Block_copy(&aBlock);
  v58 = v54;

  v59 = swift_allocObject();
  *(v59 + 16) = v51;
  v72 = sub_2380254AC;
  v73 = v59;
  aBlock = MEMORY[0x277D85DD0];
  v69 = 1107296256;
  v70 = sub_2380254A0;
  v71 = &block_descriptor_199;
  v60 = _Block_copy(&aBlock);
  v61 = v51;

  v62 = [v55 sinkWithCompletion:v57 receiveInput:v60];
  _Block_release(v60);
  _Block_release(v57);

  [v61 close];
  return (v40)(v66, v64);
}

uint64_t sub_238020E94(char *a1, char *a2)
{
  v65 = a2;
  v3 = sub_238031884();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v63 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_238031994();
  v67 = *(v7 - 8);
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v63 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v63 - v11;
  v66 = a1;
  v13 = [a1 identifier];
  v14 = sub_238031EA4();
  v16 = v15;

  aBlock = v14;
  v69 = v16;
  v17 = v12;
  MEMORY[0x2383E5050](0x6E6F736A2ELL, 0xE500000000000000);
  v18 = (*(v4 + 104))(v6, *MEMORY[0x277CC91D0], v3);
  sub_238024E68(v18, v19, v20);
  sub_238031984();
  (*(v4 + 8))(v6, v3);

  if (qword_27DEE4D78 != -1)
  {
    swift_once();
  }

  v21 = sub_238031DB4();
  __swift_project_value_buffer(v21, qword_27DEE9590);
  v22 = v67;
  (*(v67 + 16))(v10, v12, v7);
  v23 = v66;
  v24 = sub_238031D94();
  v25 = sub_238032114();

  v26 = os_log_type_enabled(v24, v25);
  v27 = v7;
  v65 = v23;
  if (v26)
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v66 = v17;
    v64 = v29;
    aBlock = v29;
    *v28 = 136446466;
    v30 = [v23 identifier];
    v31 = v7;
    v32 = v22;
    v33 = sub_238031EA4();
    v35 = v34;

    v36 = sub_237FDF8EC(v33, v35, &aBlock);

    *(v28 + 4) = v36;
    *(v28 + 12) = 2082;
    v37 = sub_238031954();
    v39 = v38;
    v40 = *(v32 + 8);
    v40(v10, v31);
    v41 = sub_237FDF8EC(v37, v39, &aBlock);
    v27 = v31;

    *(v28 + 14) = v41;
    _os_log_impl(&dword_237FA1000, v24, v25, "Exporting %{public}s to %{public}s", v28, 0x16u);
    v42 = v64;
    swift_arrayDestroy();
    v17 = v66;
    MEMORY[0x2383E5E30](v42, -1, -1);
    MEMORY[0x2383E5E30](v28, -1, -1);
  }

  else
  {

    v40 = *(v22 + 8);
    v40(v10, v27);
  }

  v43 = [objc_opt_self() defaultManager];
  sub_238031954();
  v44 = sub_238031E74();

  [v43 createFileAtPath:v44 contents:0 attributes:0];

  v45 = objc_allocWithZone(MEMORY[0x277CBEB78]);
  v46 = sub_2380318D4();
  v47 = [v45 initWithURL:v46 append:0];

  if (!v47)
  {
    sub_238024EBC(v48, v49, v50);
    swift_allocError();
    swift_willThrow();
    goto LABEL_10;
  }

  v51 = v47;
  [v51 open];
  v52 = [v51 streamError];

  if (v52)
  {
    swift_willThrow();

LABEL_10:
    return (v40)(v17, v27);
  }

  v54 = v65;
  v55 = [v65 publisher];
  v56 = swift_allocObject();
  *(v56 + 16) = v54;
  v72 = sub_2380254A8;
  v73 = v56;
  v66 = v17;
  aBlock = MEMORY[0x277D85DD0];
  v69 = 1107296256;
  v64 = v27;
  v70 = sub_2380254A0;
  v71 = &block_descriptor_181;
  v57 = _Block_copy(&aBlock);
  v58 = v54;

  v59 = swift_allocObject();
  *(v59 + 16) = v51;
  v72 = sub_2380254AC;
  v73 = v59;
  aBlock = MEMORY[0x277D85DD0];
  v69 = 1107296256;
  v70 = sub_2380254A0;
  v71 = &block_descriptor_187;
  v60 = _Block_copy(&aBlock);
  v61 = v51;

  v62 = [v55 sinkWithCompletion:v57 receiveInput:v60];
  _Block_release(v60);
  _Block_release(v57);

  [v61 close];
  return (v40)(v66, v64);
}

uint64_t sub_2380215B4(char *a1, char *a2)
{
  v65 = a2;
  v3 = sub_238031884();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v63 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_238031994();
  v67 = *(v7 - 8);
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v63 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v63 - v11;
  v66 = a1;
  v13 = [a1 identifier];
  v14 = sub_238031EA4();
  v16 = v15;

  aBlock = v14;
  v69 = v16;
  v17 = v12;
  MEMORY[0x2383E5050](0x6E6F736A2ELL, 0xE500000000000000);
  v18 = (*(v4 + 104))(v6, *MEMORY[0x277CC91D0], v3);
  sub_238024E68(v18, v19, v20);
  sub_238031984();
  (*(v4 + 8))(v6, v3);

  if (qword_27DEE4D78 != -1)
  {
    swift_once();
  }

  v21 = sub_238031DB4();
  __swift_project_value_buffer(v21, qword_27DEE9590);
  v22 = v67;
  (*(v67 + 16))(v10, v12, v7);
  v23 = v66;
  v24 = sub_238031D94();
  v25 = sub_238032114();

  v26 = os_log_type_enabled(v24, v25);
  v27 = v7;
  v65 = v23;
  if (v26)
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v66 = v17;
    v64 = v29;
    aBlock = v29;
    *v28 = 136446466;
    v30 = [v23 identifier];
    v31 = v7;
    v32 = v22;
    v33 = sub_238031EA4();
    v35 = v34;

    v36 = sub_237FDF8EC(v33, v35, &aBlock);

    *(v28 + 4) = v36;
    *(v28 + 12) = 2082;
    v37 = sub_238031954();
    v39 = v38;
    v40 = *(v32 + 8);
    v40(v10, v31);
    v41 = sub_237FDF8EC(v37, v39, &aBlock);
    v27 = v31;

    *(v28 + 14) = v41;
    _os_log_impl(&dword_237FA1000, v24, v25, "Exporting %{public}s to %{public}s", v28, 0x16u);
    v42 = v64;
    swift_arrayDestroy();
    v17 = v66;
    MEMORY[0x2383E5E30](v42, -1, -1);
    MEMORY[0x2383E5E30](v28, -1, -1);
  }

  else
  {

    v40 = *(v22 + 8);
    v40(v10, v27);
  }

  v43 = [objc_opt_self() defaultManager];
  sub_238031954();
  v44 = sub_238031E74();

  [v43 createFileAtPath:v44 contents:0 attributes:0];

  v45 = objc_allocWithZone(MEMORY[0x277CBEB78]);
  v46 = sub_2380318D4();
  v47 = [v45 initWithURL:v46 append:0];

  if (!v47)
  {
    sub_238024EBC(v48, v49, v50);
    swift_allocError();
    swift_willThrow();
    goto LABEL_10;
  }

  v51 = v47;
  [v51 open];
  v52 = [v51 streamError];

  if (v52)
  {
    swift_willThrow();

LABEL_10:
    return (v40)(v17, v27);
  }

  v54 = v65;
  v55 = [v65 publisher];
  v56 = swift_allocObject();
  *(v56 + 16) = v54;
  v72 = sub_238024F10;
  v73 = v56;
  v66 = v17;
  aBlock = MEMORY[0x277D85DD0];
  v69 = 1107296256;
  v64 = v27;
  v70 = sub_2380254A0;
  v71 = &block_descriptor_169;
  v57 = _Block_copy(&aBlock);
  v58 = v54;

  v59 = swift_allocObject();
  *(v59 + 16) = v51;
  v72 = sub_238024F2C;
  v73 = v59;
  aBlock = MEMORY[0x277D85DD0];
  v69 = 1107296256;
  v70 = sub_2380254A0;
  v71 = &block_descriptor_175;
  v60 = _Block_copy(&aBlock);
  v61 = v51;

  v62 = [v55 sinkWithCompletion:v57 receiveInput:v60];
  _Block_release(v60);
  _Block_release(v57);

  [v61 close];
  return (v40)(v66, v64);
}

uint64_t sub_238021CD4(char *a1, char *a2)
{
  v65 = a2;
  v3 = sub_238031884();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v63 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_238031994();
  v67 = *(v7 - 8);
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v63 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v63 - v11;
  v66 = a1;
  v13 = [a1 identifier];
  v14 = sub_238031EA4();
  v16 = v15;

  aBlock = v14;
  v69 = v16;
  v17 = v12;
  MEMORY[0x2383E5050](0x6E6F736A2ELL, 0xE500000000000000);
  v18 = (*(v4 + 104))(v6, *MEMORY[0x277CC91D0], v3);
  sub_238024E68(v18, v19, v20);
  sub_238031984();
  (*(v4 + 8))(v6, v3);

  if (qword_27DEE4D78 != -1)
  {
    swift_once();
  }

  v21 = sub_238031DB4();
  __swift_project_value_buffer(v21, qword_27DEE9590);
  v22 = v67;
  (*(v67 + 16))(v10, v12, v7);
  v23 = v66;
  v24 = sub_238031D94();
  v25 = sub_238032114();

  v26 = os_log_type_enabled(v24, v25);
  v27 = v7;
  v65 = v23;
  if (v26)
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v66 = v17;
    v64 = v29;
    aBlock = v29;
    *v28 = 136446466;
    v30 = [v23 identifier];
    v31 = v7;
    v32 = v22;
    v33 = sub_238031EA4();
    v35 = v34;

    v36 = sub_237FDF8EC(v33, v35, &aBlock);

    *(v28 + 4) = v36;
    *(v28 + 12) = 2082;
    v37 = sub_238031954();
    v39 = v38;
    v40 = *(v32 + 8);
    v40(v10, v31);
    v41 = sub_237FDF8EC(v37, v39, &aBlock);
    v27 = v31;

    *(v28 + 14) = v41;
    _os_log_impl(&dword_237FA1000, v24, v25, "Exporting %{public}s to %{public}s", v28, 0x16u);
    v42 = v64;
    swift_arrayDestroy();
    v17 = v66;
    MEMORY[0x2383E5E30](v42, -1, -1);
    MEMORY[0x2383E5E30](v28, -1, -1);
  }

  else
  {

    v40 = *(v22 + 8);
    v40(v10, v27);
  }

  v43 = [objc_opt_self() defaultManager];
  sub_238031954();
  v44 = sub_238031E74();

  [v43 createFileAtPath:v44 contents:0 attributes:0];

  v45 = objc_allocWithZone(MEMORY[0x277CBEB78]);
  v46 = sub_2380318D4();
  v47 = [v45 initWithURL:v46 append:0];

  if (!v47)
  {
    sub_238024EBC(v48, v49, v50);
    swift_allocError();
    swift_willThrow();
    goto LABEL_10;
  }

  v51 = v47;
  [v51 open];
  v52 = [v51 streamError];

  if (v52)
  {
    swift_willThrow();

LABEL_10:
    return (v40)(v17, v27);
  }

  v54 = v65;
  v55 = [v65 publisher];
  v56 = swift_allocObject();
  *(v56 + 16) = v54;
  v72 = sub_2380254A8;
  v73 = v56;
  v66 = v17;
  aBlock = MEMORY[0x277D85DD0];
  v69 = 1107296256;
  v64 = v27;
  v70 = sub_2380254A0;
  v71 = &block_descriptor_157;
  v57 = _Block_copy(&aBlock);
  v58 = v54;

  v59 = swift_allocObject();
  *(v59 + 16) = v51;
  v72 = sub_2380254AC;
  v73 = v59;
  aBlock = MEMORY[0x277D85DD0];
  v69 = 1107296256;
  v70 = sub_2380254A0;
  v71 = &block_descriptor_163;
  v60 = _Block_copy(&aBlock);
  v61 = v51;

  v62 = [v55 sinkWithCompletion:v57 receiveInput:v60];
  _Block_release(v60);
  _Block_release(v57);

  [v61 close];
  return (v40)(v66, v64);
}

uint64_t sub_2380223F4(char *a1, char *a2)
{
  v65 = a2;
  v3 = sub_238031884();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v63 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_238031994();
  v67 = *(v7 - 8);
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v63 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v63 - v11;
  v66 = a1;
  v13 = [a1 identifier];
  v14 = sub_238031EA4();
  v16 = v15;

  aBlock = v14;
  v69 = v16;
  v17 = v12;
  MEMORY[0x2383E5050](0x6E6F736A2ELL, 0xE500000000000000);
  v18 = (*(v4 + 104))(v6, *MEMORY[0x277CC91D0], v3);
  sub_238024E68(v18, v19, v20);
  sub_238031984();
  (*(v4 + 8))(v6, v3);

  if (qword_27DEE4D78 != -1)
  {
    swift_once();
  }

  v21 = sub_238031DB4();
  __swift_project_value_buffer(v21, qword_27DEE9590);
  v22 = v67;
  (*(v67 + 16))(v10, v12, v7);
  v23 = v66;
  v24 = sub_238031D94();
  v25 = sub_238032114();

  v26 = os_log_type_enabled(v24, v25);
  v27 = v7;
  v65 = v23;
  if (v26)
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v66 = v17;
    v64 = v29;
    aBlock = v29;
    *v28 = 136446466;
    v30 = [v23 identifier];
    v31 = v7;
    v32 = v22;
    v33 = sub_238031EA4();
    v35 = v34;

    v36 = sub_237FDF8EC(v33, v35, &aBlock);

    *(v28 + 4) = v36;
    *(v28 + 12) = 2082;
    v37 = sub_238031954();
    v39 = v38;
    v40 = *(v32 + 8);
    v40(v10, v31);
    v41 = sub_237FDF8EC(v37, v39, &aBlock);
    v27 = v31;

    *(v28 + 14) = v41;
    _os_log_impl(&dword_237FA1000, v24, v25, "Exporting %{public}s to %{public}s", v28, 0x16u);
    v42 = v64;
    swift_arrayDestroy();
    v17 = v66;
    MEMORY[0x2383E5E30](v42, -1, -1);
    MEMORY[0x2383E5E30](v28, -1, -1);
  }

  else
  {

    v40 = *(v22 + 8);
    v40(v10, v27);
  }

  v43 = [objc_opt_self() defaultManager];
  sub_238031954();
  v44 = sub_238031E74();

  [v43 createFileAtPath:v44 contents:0 attributes:0];

  v45 = objc_allocWithZone(MEMORY[0x277CBEB78]);
  v46 = sub_2380318D4();
  v47 = [v45 initWithURL:v46 append:0];

  if (!v47)
  {
    sub_238024EBC(v48, v49, v50);
    swift_allocError();
    swift_willThrow();
    goto LABEL_10;
  }

  v51 = v47;
  [v51 open];
  v52 = [v51 streamError];

  if (v52)
  {
    swift_willThrow();

LABEL_10:
    return (v40)(v17, v27);
  }

  v54 = v65;
  v55 = [v65 publisher];
  v56 = swift_allocObject();
  *(v56 + 16) = v54;
  v72 = sub_2380254A8;
  v73 = v56;
  v66 = v17;
  aBlock = MEMORY[0x277D85DD0];
  v69 = 1107296256;
  v64 = v27;
  v70 = sub_2380254A0;
  v71 = &block_descriptor_145;
  v57 = _Block_copy(&aBlock);
  v58 = v54;

  v59 = swift_allocObject();
  *(v59 + 16) = v51;
  v72 = sub_2380254AC;
  v73 = v59;
  aBlock = MEMORY[0x277D85DD0];
  v69 = 1107296256;
  v70 = sub_2380254A0;
  v71 = &block_descriptor_151;
  v60 = _Block_copy(&aBlock);
  v61 = v51;

  v62 = [v55 sinkWithCompletion:v57 receiveInput:v60];
  _Block_release(v60);
  _Block_release(v57);

  [v61 close];
  return (v40)(v66, v64);
}

uint64_t sub_238022B14(char *a1, char *a2)
{
  v65 = a2;
  v3 = sub_238031884();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v63 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_238031994();
  v67 = *(v7 - 8);
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v63 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v63 - v11;
  v66 = a1;
  v13 = [a1 identifier];
  v14 = sub_238031EA4();
  v16 = v15;

  aBlock = v14;
  v69 = v16;
  v17 = v12;
  MEMORY[0x2383E5050](0x6E6F736A2ELL, 0xE500000000000000);
  v18 = (*(v4 + 104))(v6, *MEMORY[0x277CC91D0], v3);
  sub_238024E68(v18, v19, v20);
  sub_238031984();
  (*(v4 + 8))(v6, v3);

  if (qword_27DEE4D78 != -1)
  {
    swift_once();
  }

  v21 = sub_238031DB4();
  __swift_project_value_buffer(v21, qword_27DEE9590);
  v22 = v67;
  (*(v67 + 16))(v10, v12, v7);
  v23 = v66;
  v24 = sub_238031D94();
  v25 = sub_238032114();

  v26 = os_log_type_enabled(v24, v25);
  v27 = v7;
  v65 = v23;
  if (v26)
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v66 = v17;
    v64 = v29;
    aBlock = v29;
    *v28 = 136446466;
    v30 = [v23 identifier];
    v31 = v7;
    v32 = v22;
    v33 = sub_238031EA4();
    v35 = v34;

    v36 = sub_237FDF8EC(v33, v35, &aBlock);

    *(v28 + 4) = v36;
    *(v28 + 12) = 2082;
    v37 = sub_238031954();
    v39 = v38;
    v40 = *(v32 + 8);
    v40(v10, v31);
    v41 = sub_237FDF8EC(v37, v39, &aBlock);
    v27 = v31;

    *(v28 + 14) = v41;
    _os_log_impl(&dword_237FA1000, v24, v25, "Exporting %{public}s to %{public}s", v28, 0x16u);
    v42 = v64;
    swift_arrayDestroy();
    v17 = v66;
    MEMORY[0x2383E5E30](v42, -1, -1);
    MEMORY[0x2383E5E30](v28, -1, -1);
  }

  else
  {

    v40 = *(v22 + 8);
    v40(v10, v27);
  }

  v43 = [objc_opt_self() defaultManager];
  sub_238031954();
  v44 = sub_238031E74();

  [v43 createFileAtPath:v44 contents:0 attributes:0];

  v45 = objc_allocWithZone(MEMORY[0x277CBEB78]);
  v46 = sub_2380318D4();
  v47 = [v45 initWithURL:v46 append:0];

  if (!v47)
  {
    sub_238024EBC(v48, v49, v50);
    swift_allocError();
    swift_willThrow();
    goto LABEL_10;
  }

  v51 = v47;
  [v51 open];
  v52 = [v51 streamError];

  if (v52)
  {
    swift_willThrow();

LABEL_10:
    return (v40)(v17, v27);
  }

  v54 = v65;
  v55 = [v65 publisher];
  v56 = swift_allocObject();
  *(v56 + 16) = v54;
  v72 = sub_2380254A8;
  v73 = v56;
  v66 = v17;
  aBlock = MEMORY[0x277D85DD0];
  v69 = 1107296256;
  v64 = v27;
  v70 = sub_2380254A0;
  v71 = &block_descriptor_133;
  v57 = _Block_copy(&aBlock);
  v58 = v54;

  v59 = swift_allocObject();
  *(v59 + 16) = v51;
  v72 = sub_2380254AC;
  v73 = v59;
  aBlock = MEMORY[0x277D85DD0];
  v69 = 1107296256;
  v70 = sub_2380254A0;
  v71 = &block_descriptor_139;
  v60 = _Block_copy(&aBlock);
  v61 = v51;

  v62 = [v55 sinkWithCompletion:v57 receiveInput:v60];
  _Block_release(v60);
  _Block_release(v57);

  [v61 close];
  return (v40)(v66, v64);
}

void sub_238023234(void *a1, void *a2)
{
  v4 = [a1 state];
  if (v4 == 1)
  {
    if (qword_27DEE4D78 != -1)
    {
      swift_once();
    }

    v5 = sub_238031DB4();
    __swift_project_value_buffer(v5, qword_27DEE9590);
    v6 = a2;
    v7 = a1;
    oslog = sub_238031D94();
    v8 = sub_2380320F4();

    if (os_log_type_enabled(oslog, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v28 = v10;
      *v9 = 136446466;
      v11 = [v6 identifier];
      v12 = sub_238031EA4();
      v14 = v13;

      v15 = sub_237FDF8EC(v12, v14, &v28);

      *(v9 + 4) = v15;
      *(v9 + 12) = 2082;
      [v7 error];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE54C0, &unk_238035868);
      v16 = sub_238031EB4();
      v18 = sub_237FDF8EC(v16, v17, &v28);

      *(v9 + 14) = v18;
      _os_log_impl(&dword_237FA1000, oslog, v8, "Failed to export %{public}s: %{public}s", v9, 0x16u);
      swift_arrayDestroy();
LABEL_11:
      MEMORY[0x2383E5E30](v10, -1, -1);
      MEMORY[0x2383E5E30](v9, -1, -1);

      return;
    }
  }

  else
  {
    if (v4)
    {
      sub_238032364();
      __break(1u);
      return;
    }

    if (qword_27DEE4D78 != -1)
    {
      swift_once();
    }

    v19 = sub_238031DB4();
    __swift_project_value_buffer(v19, qword_27DEE9590);
    v20 = a2;
    oslog = sub_238031D94();
    v21 = sub_238032114();

    if (os_log_type_enabled(oslog, v21))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v28 = v10;
      *v9 = 136446210;
      v22 = [v20 identifier];
      v23 = sub_238031EA4();
      v25 = v24;

      v26 = sub_237FDF8EC(v23, v25, &v28);

      *(v9 + 4) = v26;
      _os_log_impl(&dword_237FA1000, oslog, v21, "Finished exporting %{public}s", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v10);
      goto LABEL_11;
    }
  }
}

void sub_2380235F0(void *a1, uint64_t a2)
{
  v35[1] = *MEMORY[0x277D85DE8];
  v4 = [a1 jsonDictionary];
  sub_238031DF4();

  v5 = objc_opt_self();
  v6 = sub_238031DE4();
  v7 = [v5 isValidJSONObject_];

  if (v7)
  {
    v8 = sub_238031DE4();

    v35[0] = 0;
    [v5 writeJSONObject:v8 toStream:a2 options:1 error:v35];

    if (v35[0])
    {
      v9 = qword_27DEE4D78;
      v10 = v35[0];
      if (v9 != -1)
      {
        swift_once();
      }

      v11 = sub_238031DB4();
      __swift_project_value_buffer(v11, qword_27DEE9590);
      v12 = v10;
      v13 = sub_238031D94();
      v14 = sub_2380320F4();

      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        v16 = swift_slowAlloc();
        v35[0] = v16;
        *v15 = 136446210;
        v17 = v12;
        v18 = [v17 description];
        v19 = sub_238031EA4();
        v21 = v20;

        v22 = sub_237FDF8EC(v19, v21, v35);

        *(v15 + 4) = v22;
        _os_log_impl(&dword_237FA1000, v13, v14, "Failed to write an event: %{public}s", v15, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v16);
        MEMORY[0x2383E5E30](v16, -1, -1);
        MEMORY[0x2383E5E30](v15, -1, -1);
      }

      else
      {
      }
    }
  }

  else
  {

    if (qword_27DEE4D78 != -1)
    {
      swift_once();
    }

    v23 = sub_238031DB4();
    __swift_project_value_buffer(v23, qword_27DEE9590);
    v24 = a1;
    oslog = sub_238031D94();
    v25 = sub_2380320F4();

    if (os_log_type_enabled(oslog, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v35[0] = v27;
      *v26 = 136446210;
      v28 = v24;
      v29 = [v28 description];
      v30 = sub_238031EA4();
      v32 = v31;

      v33 = sub_237FDF8EC(v30, v32, v35);

      *(v26 + 4) = v33;
      _os_log_impl(&dword_237FA1000, oslog, v25, "Invalid JSON object for event: %{public}s", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v27);
      MEMORY[0x2383E5E30](v27, -1, -1);
      MEMORY[0x2383E5E30](v26, -1, -1);
    }

    else
    {
    }
  }
}

void sub_238023A54(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

void *sub_238023ABC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DEE5760, &unk_238036530);
  v2 = *v0;
  v3 = sub_238032264();
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

void sub_238023C18()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE50B0, &qword_238033C98);
  v2 = *v0;
  v3 = sub_238032264();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
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
        v18 = *(*(v2 + 48) + v17);
        *(*(v4 + 48) + v17) = v18;
        sub_237FBC9FC(v18, *(&v18 + 1));
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
}

void *sub_238023DE0(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v7 = v4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v27 - v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v12 = *v4;
  v13 = sub_238032264();
  v14 = v13;
  if (*(v12 + 16))
  {
    v28 = v7;
    result = (v13 + 56);
    v16 = ((1 << *(v14 + 32)) + 63) >> 6;
    if (v14 != v12 || result >= v12 + 56 + 8 * v16)
    {
      result = memmove(result, (v12 + 56), 8 * v16);
    }

    v18 = 0;
    *(v14 + 16) = *(v12 + 16);
    v19 = 1 << *(v12 + 32);
    v20 = -1;
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    v21 = v20 & *(v12 + 56);
    v22 = (v19 + 63) >> 6;
    v29 = v9 + 32;
    for (i = v9 + 16; v21; result = (*(v9 + 32))(*(v14 + 48) + v26, v11, v8))
    {
      v23 = __clz(__rbit64(v21));
      v21 &= v21 - 1;
LABEL_17:
      v26 = *(v9 + 72) * (v23 | (v18 << 6));
      (*(v9 + 16))(v11, *(v12 + 48) + v26, v8);
    }

    v24 = v18;
    while (1)
    {
      v18 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        break;
      }

      if (v18 >= v22)
      {

        v7 = v28;
        goto LABEL_21;
      }

      v25 = *(v12 + 56 + 8 * v18);
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v21 = (v25 - 1) & v25;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v7 = v14;
  }

  return result;
}

void *sub_2380240AC(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3)
{
  v6 = v3;
  v7 = a1(0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v26 - v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v11 = *v3;
  v12 = sub_238032264();
  v13 = v12;
  if (*(v11 + 16))
  {
    v27 = v6;
    result = (v12 + 56);
    v15 = ((1 << *(v13 + 32)) + 63) >> 6;
    if (v13 != v11 || result >= v11 + 56 + 8 * v15)
    {
      result = memmove(result, (v11 + 56), 8 * v15);
    }

    v17 = 0;
    *(v13 + 16) = *(v11 + 16);
    v18 = 1 << *(v11 + 32);
    v19 = -1;
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    v20 = v19 & *(v11 + 56);
    v21 = (v18 + 63) >> 6;
    v28 = v8 + 32;
    for (i = v8 + 16; v20; result = (*(v8 + 32))(*(v13 + 48) + v25, v10, v7))
    {
      v22 = __clz(__rbit64(v20));
      v20 &= v20 - 1;
LABEL_17:
      v25 = *(v8 + 72) * (v22 | (v17 << 6));
      (*(v8 + 16))(v10, *(v11 + 48) + v25, v7);
    }

    v23 = v17;
    while (1)
    {
      v17 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        break;
      }

      if (v17 >= v21)
      {

        v6 = v27;
        goto LABEL_21;
      }

      v24 = *(v11 + 56 + 8 * v17);
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v20 = (v24 - 1) & v24;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v6 = v13;
  }

  return result;
}

uint64_t sub_2380242E4(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  sub_2380325B4();
  sub_238031ED4();
  v6 = sub_2380325F4();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(v5 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (sub_2380324E4() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *v2;
  v16 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_238023ABC();
    v14 = v16;
  }

  v12 = *(*(v14 + 48) + 16 * v8);
  sub_238024420(v8);
  *v2 = v16;
  return v12;
}

unint64_t sub_238024420(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_238032204();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        sub_2380325B4();

        sub_238031ED4();
        v10 = sub_2380325F4();

        v11 = v10 & v7;
        if (v2 >= v9)
        {
          if (v11 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v11 >= v9)
        {
          goto LABEL_11;
        }

        if (v2 >= v11)
        {
LABEL_11:
          v12 = *(v3 + 48);
          v13 = (v12 + 16 * v2);
          v14 = (v12 + 16 * v6);
          if (v2 != v6 || v13 >= v14 + 1)
          {
            *v13 = *v14;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v15 = *(v3 + 16);
  v16 = __OFSUB__(v15, 1);
  v17 = v15 - 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v17;
    ++*(v3 + 36);
  }

  return result;
}

id sub_2380245E4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE51E0, &qword_2380365F0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v12 - v1;
  v3 = sub_238031A64();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_238031634();
  (*(v4 + 56))(v2, 1, 1, v3);
  v7 = sub_2380319F4();
  v8 = *(v4 + 8);
  v8(v6, v3);
  v9 = 0;
  if ((*(v4 + 48))(v2, 1, v3) != 1)
  {
    v9 = sub_2380319F4();
    v8(v2, v3);
  }

  v10 = [objc_allocWithZone(MEMORY[0x277CF1A50]) initWithStartDate:v7 endDate:v9 maxEvents:0 lastN:0 reversed:1];

  return v10;
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id sub_2380247DC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE51E0, &qword_2380365F0);
  v1 = MEMORY[0x28223BE20](v0 - 8);
  v3 = &v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v1);
  v5 = &v14 - v4;
  sub_238031634();
  v6 = sub_238031A64();
  v7 = *(v6 - 8);
  v8 = *(v7 + 56);
  v8(v5, 0, 1, v6);
  sub_238031604();
  v8(v3, 0, 1, v6);
  v9 = *(v7 + 48);
  v10 = 0;
  if (v9(v5, 1, v6) != 1)
  {
    v10 = sub_2380319F4();
    (*(v7 + 8))(v5, v6);
  }

  if (v9(v3, 1, v6) == 1)
  {
    v11 = 0;
  }

  else
  {
    v11 = sub_2380319F4();
    (*(v7 + 8))(v3, v6);
  }

  v12 = [objc_allocWithZone(MEMORY[0x277CF1A50]) initWithStartDate:v10 endDate:v11 maxEvents:0 lastN:0 reversed:0];

  return v12;
}

uint64_t _s14DeviceActivity12EventStreamsV5BiomeV3allSaySo8NSObjectCGvgZ_0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DEE5770, &unk_238036540);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_238036360;
  v1 = [BiomeLibrary() ScreenTime];
  swift_unknownObjectRelease();
  v2 = [v1 AppUsage];
  swift_unknownObjectRelease();
  *(v0 + 32) = v2;
  v3 = [BiomeLibrary() App];
  swift_unknownObjectRelease();
  v4 = [v3 MediaUsage];
  swift_unknownObjectRelease();
  *(v0 + 40) = v4;
  v5 = [BiomeLibrary() App];
  swift_unknownObjectRelease();
  v6 = [v5 WebUsage];
  swift_unknownObjectRelease();
  *(v0 + 48) = v6;
  v7 = [BiomeLibrary() Device];
  swift_unknownObjectRelease();
  v8 = [v7 Display];
  swift_unknownObjectRelease();
  v9 = [v8 Backlight];
  swift_unknownObjectRelease();
  *(v0 + 56) = v9;
  v10 = [BiomeLibrary() Media];
  swift_unknownObjectRelease();
  v11 = [v10 NowPlaying];
  swift_unknownObjectRelease();
  *(v0 + 64) = v11;
  v12 = [BiomeLibrary() Notification];
  swift_unknownObjectRelease();
  v13 = [v12 Usage];
  swift_unknownObjectRelease();
  *(v0 + 72) = v13;
  return v0;
}

unint64_t sub_238024CE8()
{
  result = qword_280C34A20;
  if (!qword_280C34A20)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280C34A20);
  }

  return result;
}

uint64_t objectdestroy_24Tm(void (*a1)(void))
{
  a1(*(v1 + 16));

  return MEMORY[0x2821FE8E8](v1, 32, 7);
}

unint64_t sub_238024DA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DEE5730;
  if (!qword_27DEE5730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEE5730);
  }

  return result;
}

unint64_t sub_238024E68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DEE5738;
  if (!qword_27DEE5738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEE5738);
  }

  return result;
}

unint64_t sub_238024EBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DEE5740;
  if (!qword_27DEE5740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEE5740);
  }

  return result;
}

void sub_238024F48(void *a1, void *a2)
{
  v4 = [a1 state];
  if (v4 == 1)
  {
    v5 = [a1 error];
    if (v5)
    {
      v6 = v5;
      swift_getErrorValue();
      v7 = sub_238032564();
      v9 = v8;
    }

    else
    {
      v9 = 0xE400000000000000;
      v7 = 1701736270;
    }

    if (qword_280C35388 != -1)
    {
      swift_once();
    }

    v18 = sub_238031DB4();
    __swift_project_value_buffer(v18, qword_280C36C50);
    v19 = a2;

    v20 = sub_238031D94();
    v21 = sub_2380320F4();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v29 = v23;
      *v22 = 136446466;
      v24 = sub_238031EA4();
      v26 = sub_237FDF8EC(v24, v25, &v29);

      *(v22 + 4) = v26;
      *(v22 + 12) = 2082;
      v27 = sub_237FDF8EC(v7, v9, &v29);

      *(v22 + 14) = v27;
      _os_log_impl(&dword_237FA1000, v20, v21, "Failed to complete query for %{public}s: %{public}s", v22, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2383E5E30](v23, -1, -1);
      MEMORY[0x2383E5E30](v22, -1, -1);
    }

    else
    {
    }
  }

  else if (v4)
  {
    sub_238032364();
    __break(1u);
  }

  else
  {
    if (qword_280C35388 != -1)
    {
      swift_once();
    }

    v10 = sub_238031DB4();
    __swift_project_value_buffer(v10, qword_280C36C50);
    v11 = a2;
    oslog = sub_238031D94();
    v12 = sub_2380320E4();

    if (os_log_type_enabled(oslog, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v29 = v14;
      *v13 = 136446210;
      v15 = sub_238031EA4();
      v17 = sub_237FDF8EC(v15, v16, &v29);

      *(v13 + 4) = v17;
      _os_log_impl(&dword_237FA1000, oslog, v12, "Successfully completed query for %{public}s", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v14);
      MEMORY[0x2383E5E30](v14, -1, -1);
      MEMORY[0x2383E5E30](v13, -1, -1);
    }

    else
    {
    }
  }
}

uint64_t objectdestroy_210Tm()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_2380254B8()
{
  result = sub_237FFCE24(0, &qword_280C34A10, 0x277CFE208);
  qword_280C36C40 = result;
  *algn_280C36C48 = &off_284AE73B8;
  return result;
}

char *static EventStreams.allRemoteCoreDuetIdentifiers.getter()
{
  v0 = sub_238031874();
  v37 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v2 = &v35 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = [objc_allocWithZone(MEMORY[0x277CFE1E0]) init];
  v4 = [objc_opt_self() onlyRemoteDevice];
  if (v4)
  {
    sub_238031AB4();
    sub_238026040(&qword_280C35010, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
    sub_238032074();

    v4 = sub_238032064();
  }

  v38 = v0;
  [v3 setDeviceIDs_];

  sub_238025E0C();
  sub_237FFCE24(0, &qword_280C34A18, 0x277CFE1E8);
  v5 = sub_238031F84();

  [v3 setEventStreams_];

  v6 = sub_238031F84();
  [v3 setGroupByProperties_];

  [v3 setResultType_];
  if (qword_280C34B48 != -1)
  {
    swift_once();
  }

  v7 = qword_280C36C40;
  v8 = *algn_280C36C48;
  v9 = *(*algn_280C36C48 + 8);
  v10 = sub_2380321B4();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v35 - v12;
  v9(v7, v8);
  v14 = *(v7 - 8);
  if ((*(v14 + 48))(v13, 1, v7) == 1)
  {
    result = (*(v11 + 8))(v13, v10);
    __break(1u);
  }

  else
  {
    v47 = v7;
    v48 = v8;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v46);
    (*(v14 + 32))(boxed_opaque_existential_1, v13, v7);
    sub_237FB0034(&v46, &v49);
    v16 = v50;
    v17 = v51;
    __swift_project_boxed_opaque_existential_1(&v49, v50);
    v18 = *(v8 + 24);
    v19 = v3;
    v20 = v18(v3, v16, v17);

    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      v35 = v20;
      v36 = v19;
      __swift_destroy_boxed_opaque_existential_1Tm(&v49);
      sub_238032154();
      sub_238026040(&qword_280C35058, MEMORY[0x277CC9178], MEMORY[0x277CC9180]);
      v21 = v38;
      sub_2380321C4();
      if (v50)
      {
        v22 = MEMORY[0x277D84F90];
        while (1)
        {
          sub_237FC156C(&v49, &v46);
          sub_237FD4FB0(&v46, v41);
          sub_237FFCE24(0, &qword_27DEE57C8, 0x277CBEAC0);
          if (swift_dynamicCast())
          {
            v23 = v39;
            *&v39 = 0x642E656372756F73;
            *(&v39 + 1) = 0xEF44496563697665;
            v24 = [v23 __swift_objectForKeyedSubscript_];
            swift_unknownObjectRelease();

            if (v24)
            {
              sub_2380321D4();
              swift_unknownObjectRelease();
              __swift_destroy_boxed_opaque_existential_1Tm(&v46);
            }

            else
            {
              __swift_destroy_boxed_opaque_existential_1Tm(&v46);
              v40 = 0u;
              v39 = 0u;
            }

            v42 = v39;
            v43 = v40;
            if (*(&v40 + 1))
            {
              if (swift_dynamicCast())
              {
                v25 = v45;
                if (v45)
                {
                  v26 = v44;
                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    v22 = sub_237FB5A94(0, *(v22 + 2) + 1, 1, v22);
                  }

                  v28 = *(v22 + 2);
                  v27 = *(v22 + 3);
                  if (v28 >= v27 >> 1)
                  {
                    v22 = sub_237FB5A94((v27 > 1), v28 + 1, 1, v22);
                  }

                  *(v22 + 2) = v28 + 1;
                  v29 = &v22[16 * v28];
                  *(v29 + 4) = v26;
                  *(v29 + 5) = v25;
                }
              }

              goto LABEL_11;
            }
          }

          else
          {
            __swift_destroy_boxed_opaque_existential_1Tm(&v46);
            v42 = 0u;
            v43 = 0u;
          }

          sub_238025FD8(&v42);
LABEL_11:
          sub_2380321C4();
          if (!v50)
          {
            goto LABEL_30;
          }
        }
      }

      v22 = MEMORY[0x277D84F90];
LABEL_30:
      (*(v37 + 8))(v2, v21);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1Tm(&v49);
      if (qword_27DEE4D80 != -1)
      {
        swift_once();
      }

      v30 = sub_238031DB4();
      __swift_project_value_buffer(v30, qword_27DEE95A8);
      v31 = sub_238031D94();
      v32 = sub_2380320F4();
      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        *v33 = 0;
        _os_log_impl(&dword_237FA1000, v31, v32, "Failed to query for all CoreDuet device identifiers", v33, 2u);
        MEMORY[0x2383E5E30](v33, -1, -1);
      }

      return MEMORY[0x277D84F90];
    }

    return v22;
  }

  return result;
}

id sub_238025E0C()
{
  v4 = MEMORY[0x277D84F90];
  sub_238032324();
  v0 = 0;
  while (1)
  {
    v2 = byte_284AE5C48[v0 + 32];
    v3 = objc_opt_self();
    if (v2 <= 2)
    {
      if (v2)
      {
        if (v2 == 1)
        {
          result = [v3 appClipUsageStream];
          if (!result)
          {
            goto LABEL_26;
          }
        }

        else
        {
          result = [v3 appMediaUsageStream];
          if (!result)
          {
            goto LABEL_25;
          }
        }
      }

      else
      {
        result = [v3 appUsageStream];
        if (!result)
        {
          goto LABEL_27;
        }
      }

      goto LABEL_3;
    }

    if (v2 > 4)
    {
      break;
    }

    if (v2 == 3)
    {
      result = [v3 appWebUsageStream];
      if (!result)
      {
        goto LABEL_24;
      }
    }

    else
    {
      result = [v3 displayIsBacklit];
      if (!result)
      {
        goto LABEL_23;
      }
    }

LABEL_3:
    ++v0;
    sub_238032304();
    sub_238032334();
    sub_238032344();
    sub_238032314();
    if (v0 == 7)
    {
      return v4;
    }
  }

  if (v2 != 5)
  {
    if (![v3 notificationUsageStream])
    {
      __break(1u);
      return v4;
    }

    goto LABEL_3;
  }

  result = [v3 nowPlayingStream];
  if (result)
  {
    goto LABEL_3;
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_238025FD8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE50F8, &qword_238033EC0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_238026040(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t AppUsageEvent.init(bundleIdentifier:interval:timeZone:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  *a5 = a1;
  *(a5 + 1) = a2;
  v8 = type metadata accessor for AppUsageEvent(0);
  v9 = *(v8 + 20);
  v10 = sub_238031654();
  (*(*(v10 - 8) + 32))(&a5[v9], a3, v10);
  v11 = *(v8 + 24);
  v12 = sub_238031B94();
  v13 = *(*(v12 - 8) + 32);

  return v13(&a5[v11], a4, v12);
}

uint64_t WebUsageEvent.init(url:interval:bundleIdentifier:timeZone:safariProfileId:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v16 = type metadata accessor for WebUsageEvent(0);
  v17 = (a8 + v16[8]);
  v18 = sub_238031994();
  (*(*(v18 - 8) + 32))(a8, a1, v18);
  v19 = v16[5];
  v20 = sub_238031654();
  (*(*(v20 - 8) + 32))(a8 + v19, a2, v20);
  v21 = (a8 + v16[6]);
  *v21 = a3;
  v21[1] = a4;
  v22 = v16[7];
  v23 = sub_238031B94();
  result = (*(*(v23 - 8) + 32))(a8 + v22, a5, v23);
  *v17 = a6;
  v17[1] = a7;
  return result;
}

uint64_t PickupEvent.duration.setter(uint64_t result, char a2)
{
  *v2 = result;
  *(v2 + 8) = a2 & 1;
  return result;
}

uint64_t PickupEvent.init(bundleIdentifier:date:timeZone:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *a5 = 0;
  *(a5 + 8) = 1;
  *(a5 + 16) = a1;
  *(a5 + 24) = a2;
  v8 = type metadata accessor for PickupEvent(0);
  v9 = v8[6];
  v10 = sub_238031A64();
  (*(*(v10 - 8) + 32))(a5 + v9, a3, v10);
  *(a5 + v8[7]) = 1;
  v11 = v8[8];
  v12 = sub_238031B94();
  v13 = *(*(v12 - 8) + 32);

  return v13(a5 + v11, a4, v12);
}

uint64_t PickupEvent.init(bundleIdentifier:date:includeStopEvent:timeZone:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  *a6 = 0;
  *(a6 + 8) = 1;
  *(a6 + 16) = a1;
  *(a6 + 24) = a2;
  v10 = type metadata accessor for PickupEvent(0);
  v11 = v10[6];
  v12 = sub_238031A64();
  (*(*(v12 - 8) + 32))(a6 + v11, a3, v12);
  *(a6 + v10[7]) = a4;
  v13 = v10[8];
  v14 = sub_238031B94();
  v15 = *(*(v14 - 8) + 32);

  return v15(a6 + v13, a5, v14);
}

uint64_t NotificationEvent.init(date:bundleIdentifier:userIdentifier:timeZone:deviceId:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v16 = sub_238031A64();
  (*(*(v16 - 8) + 32))(a8, a1, v16);
  v17 = type metadata accessor for NotificationEvent(0);
  v18 = (a8 + v17[5]);
  *v18 = a2;
  v18[1] = a3;
  *(a8 + v17[6]) = a4;
  v19 = v17[7];
  v20 = sub_238031B94();
  result = (*(*(v20 - 8) + 32))(a8 + v19, a5, v20);
  v22 = (a8 + v17[8]);
  *v22 = a6;
  v22[1] = a7;
  return result;
}

uint64_t static EventStreams.save(_:)(uint64_t a1)
{
  return sub_238026B58(a1, sub_238029C90, sub_23802A308);
}

{
  return sub_238026B58(a1, sub_23802A60C, sub_23802AAE8);
}

{
  return sub_238026B58(a1, sub_23802B96C, sub_23802BE6C);
}

{
  return sub_238026B58(a1, sub_23802C098, sub_23802C6B8);
}

void sub_2380265E8(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v42 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE51E0, &qword_2380365F0);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v6 = v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = v41 - v7;
  v48 = [objc_opt_self() appUsageStream];
  v41[0] = type metadata accessor for AppUsageEvent(0);
  sub_238031634();
  v9 = sub_238031A64();
  v10 = *(v9 - 8);
  v11 = *(v10 + 56);
  v11(v8, 0, 1, v9);
  sub_238031604();
  v11(v6, 0, 1, v9);
  v12 = objc_opt_self();
  v41[1] = a1;
  v13 = sub_238031E74();
  v44 = [v12 withBundle_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE5848, &qword_2380365F8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_238036350;
  v15 = objc_opt_self();
  v16 = [v15 usageType];
  v45 = v6;
  v43 = v10;
  if (v16)
  {
    v17 = v16;
    v18 = sub_238031EA4();
    v20 = v19;
  }

  else
  {
    v18 = 0;
    v20 = 0;
  }

  v46 = v18;
  v47 = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE5850, &unk_238036600);
  sub_23802E250();
  sub_238032254();
  v21 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  v22 = sub_237FFCE24(0, &qword_27DEE5840, 0x277CCABB0);
  *(inited + 96) = v22;
  *(inited + 72) = v21;
  v23 = [v15 isUsageTrusted];
  if (v23)
  {
    v24 = v23;
    v25 = sub_238031EA4();
    v27 = v26;
  }

  else
  {
    v25 = 0;
    v27 = 0;
  }

  v46 = v25;
  v47 = v27;
  sub_238032254();
  v28 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
  *(inited + 168) = v22;
  *(inited + 144) = v28;
  sub_237FD4B0C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE5258, &qword_2380346F8);
  swift_arrayDestroy();
  v29 = v43;
  v30 = *(v43 + 48);
  v31 = v30(v8, 1, v9);
  v32 = v45;
  if (v31 == 1)
  {
    v33 = 0;
  }

  else
  {
    v33 = sub_2380319F4();
    (*(v29 + 8))(v8, v9);
  }

  if (v30(v32, 1, v9) == 1)
  {
    v34 = 0;
  }

  else
  {
    v34 = sub_2380319F4();
    (*(v29 + 8))(v32, v9);
  }

  v35 = sub_238031DE4();

  v36 = objc_opt_self();
  v37 = v48;
  v38 = v44;
  v39 = [v36 eventWithStream:v48 startDate:v33 endDate:v34 value:v44 metadata:v35];

  if (v39)
  {
    v40 = sub_238031B84();
    [v39 setTimeZone_];

    *v42 = v39;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_238026B58(uint64_t a1, void (*a2)(uint64_t), uint64_t (*a3)(uint64_t))
{
  v6 = swift_beginAccess();
  if (byte_27DEE58A1 == 2)
  {
    v11[3] = &type metadata for Feature.FeatureFlags;
    v11[4] = sub_237FBEFF4(v6, v7, v8);
    LOBYTE(v11[0]) = 1;
    v9 = sub_238031BA4();
    __swift_destroy_boxed_opaque_existential_1Tm(v11);
    if ((v9 & 1) == 0)
    {
      return a3(a1);
    }

    goto LABEL_5;
  }

  if (byte_27DEE58A1)
  {
LABEL_5:
    a2(a1);
  }

  return a3(a1);
}

_OWORD *sub_238026C1C(char **a1, uint64_t a2)
{
  v88 = a1;
  v86 = sub_238031AB4();
  v82 = *(v86 - 8);
  MEMORY[0x28223BE20](v86);
  v80 = v78 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE51E0, &qword_2380365F0);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v85 = v78 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v83 = v78 - v8;
  v9 = MEMORY[0x28223BE20](v7);
  v11 = v78 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = v78 - v12;
  v14 = sub_237FFCE24(0, &qword_27DEE5840, 0x277CCABB0);
  v15 = sub_238032164();
  v16 = type metadata accessor for WebUsageEvent(0);
  v93 = *(v16 + 20);
  sub_238031634();
  v17 = sub_238031A64();
  v18 = *(v17 - 8);
  v91 = *(v18 + 56);
  v92 = v18 + 56;
  v91(v13, 0, 1, v17);
  v81 = v16;
  v19 = (a2 + *(v16 + 24));
  v21 = *v19;
  v20 = v19[1];
  v100 = v21;
  v96 = a2;
  v97 = v20;
  v94 = v14;
  v22 = sub_238032164();
  v87 = v18;
  v89 = *(v18 + 48);
  v90 = v18 + 48;
  v23 = 0;
  if (v89(v13, 1, v17) != 1)
  {
    v23 = sub_2380319F4();
    (*(v87 + 8))(v13, v17);
  }

  v95 = v17;
  v24 = objc_allocWithZone(MEMORY[0x277CF1440]);
  v25 = sub_238031E74();
  v26 = [v24 initWithStarting:v15 absoluteTimestamp:v23 bundleID:v25 parentBundleID:0 isUsageTrusted:v22];

  v84 = sub_237FFCE24(0, &qword_27DEE5868, 0x277CF1440);
  v99 = v84;
  *&v98 = v26;
  v27 = *v88;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v27 = sub_237FB5E58(0, *(v27 + 2) + 1, 1, v27);
  }

  v29 = *(v27 + 2);
  v28 = *(v27 + 3);
  v30 = v95;
  if (v29 >= v28 >> 1)
  {
    v27 = sub_237FB5E58((v28 > 1), v29 + 1, 1, v27);
  }

  *(v27 + 2) = v29 + 1;
  sub_237FC156C(&v98, &v27[32 * v29 + 32]);
  v31 = v80;
  sub_238031AA4();
  v32 = sub_238031A74();
  v34 = v33;
  (*(v82 + 8))(v31, v86);
  v35 = v96;
  sub_238031634();
  v91(v11, 0, 1, v30);
  v79 = sub_238031894();
  v78[1] = sub_238031934();
  v37 = v36;
  v80 = sub_238032164();
  v38 = (v35 + *(v81 + 32));
  v39 = *v38;
  v86 = v38[1];
  v81 = v32;
  v82 = v34;
  v40 = sub_238031E74();
  if (v89(v11, 1, v30) == 1)
  {
    v41 = 0;
  }

  else
  {
    v41 = sub_2380319F4();
    (*(v87 + 8))(v11, v30);
  }

  v42 = sub_238031E74();

  if (v37)
  {
    v43 = sub_238031E74();
  }

  else
  {
    v43 = 0;
  }

  v44 = sub_238031E74();
  v78[2] = v39;
  if (v86)
  {
    v45 = sub_238031E74();
  }

  else
  {
    v45 = 0;
  }

  v46 = objc_allocWithZone(MEMORY[0x277CF1010]);
  v47 = v80;
  v48 = [v46 initWithUniqueID:v40 absoluteTimestamp:v41 usageState:3 webpageURL:v42 webDomain:v43 applicationID:v44 deviceID:0 isUsageTrusted:v80 safariProfileID:v45];

  v80 = sub_237FFCE24(0, &qword_27DEE5888, 0x277CF1010);
  v99 = v80;
  *&v98 = v48;
  v50 = *(v27 + 2);
  v49 = *(v27 + 3);
  if (v50 >= v49 >> 1)
  {
    v27 = sub_237FB5E58((v49 > 1), v50 + 1, 1, v27);
  }

  v51 = v95;
  *(v27 + 2) = v50 + 1;
  sub_237FC156C(&v98, &v27[32 * v50 + 32]);
  v52 = v83;
  sub_238031604();
  v91(v52, 0, 1, v51);
  sub_238031894();
  sub_238031934();
  v54 = v53;
  v55 = v52;
  v79 = sub_238032164();
  v56 = sub_238031E74();

  if (v89(v55, 1, v51) == 1)
  {
    v57 = 0;
  }

  else
  {
    v57 = sub_2380319F4();
    (*(v87 + 8))(v55, v51);
  }

  v58 = sub_238031E74();

  if (v54)
  {
    v59 = sub_238031E74();
  }

  else
  {
    v59 = 0;
  }

  v60 = sub_238031E74();
  if (v86)
  {
    v61 = sub_238031E74();
  }

  else
  {
    v61 = 0;
  }

  v62 = objc_allocWithZone(MEMORY[0x277CF1010]);
  v63 = v79;
  v64 = [v62 initWithUniqueID:v56 absoluteTimestamp:v57 usageState:1 webpageURL:v58 webDomain:v59 applicationID:v60 deviceID:0 isUsageTrusted:v79 safariProfileID:v61];

  v99 = v80;
  *&v98 = v64;
  v66 = *(v27 + 2);
  v65 = *(v27 + 3);
  if (v66 >= v65 >> 1)
  {
    v27 = sub_237FB5E58((v65 > 1), v66 + 1, 1, v27);
  }

  v67 = v85;
  v68 = v95;
  *(v27 + 2) = v66 + 1;
  sub_237FC156C(&v98, &v27[32 * v66 + 32]);
  v69 = sub_238032164();
  sub_238031604();
  v91(v67, 0, 1, v68);
  v70 = sub_238032164();
  if (v89(v67, 1, v68) == 1)
  {
    v71 = 0;
  }

  else
  {
    v71 = sub_2380319F4();
    (*(v87 + 8))(v67, v68);
  }

  v72 = objc_allocWithZone(MEMORY[0x277CF1440]);
  v73 = sub_238031E74();
  v74 = [v72 initWithStarting:v69 absoluteTimestamp:v71 bundleID:v73 parentBundleID:0 isUsageTrusted:v70];

  v99 = v84;
  *&v98 = v74;
  v76 = *(v27 + 2);
  v75 = *(v27 + 3);
  if (v76 >= v75 >> 1)
  {
    v27 = sub_237FB5E58((v75 > 1), v76 + 1, 1, v27);
  }

  *(v27 + 2) = v76 + 1;
  result = sub_237FC156C(&v98, &v27[32 * v76 + 32]);
  *v88 = v27;
  return result;
}

_OWORD *sub_238027604(char **a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE51E0, &qword_2380365F0);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v53 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v55 = &v51 - v8;
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v51 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = &v51 - v12;
  v59 = a1;
  v57 = type metadata accessor for PickupEvent(0);
  v14 = *(v57 + 24);
  v15 = sub_238031A64();
  v16 = *(v15 - 8);
  v17 = v16[2];
  v65 = v14;
  v54 = v17;
  v17(v13, a2 + v14, v15);
  v63 = v16[7];
  v64 = v16 + 7;
  v63(v13, 0, 1, v15);
  v62 = sub_237FFCE24(0, &qword_27DEE5840, 0x277CCABB0);
  v18 = sub_238032174();
  v58 = v16;
  v60 = v16[6];
  v61 = v16 + 6;
  v19 = 0;
  if (v60(v13, 1, v15) != 1)
  {
    v19 = sub_2380319F4();
    (v58[1])(v13, v15);
  }

  v20 = [objc_allocWithZone(MEMORY[0x277CF1098]) initWithAbsoluteTimestamp:v19 backlightLevel:v18];

  v52 = sub_237FFCE24(0, &qword_27DEE5860, 0x277CF1098);
  v67 = v52;
  *&v66 = v20;
  v21 = v59;
  v22 = *v59;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v22 = sub_237FB5E58(0, *(v22 + 2) + 1, 1, v22);
  }

  v24 = *(v22 + 2);
  v23 = *(v22 + 3);
  if (v24 >= v23 >> 1)
  {
    v22 = sub_237FB5E58((v23 > 1), v24 + 1, 1, v22);
  }

  *(v22 + 2) = v24 + 1;
  result = sub_237FC156C(&v66, &v22[32 * v24 + 32]);
  *v21 = v22;
  v26 = *(a2 + 24);
  if (v26)
  {
    v56 = *(a2 + 16);
    v27 = sub_238032164();
    v54(v11, a2 + v65, v15);
    v63(v11, 0, 1, v15);
    v28 = sub_238032164();
    if (v60(v11, 1, v15) == 1)
    {
      v29 = 0;
    }

    else
    {
      v29 = sub_2380319F4();
      (v58[1])(v11, v15);
    }

    v30 = objc_allocWithZone(MEMORY[0x277CF1440]);
    v54 = v26;
    v31 = sub_238031E74();
    v32 = [v30 initWithStarting:v27 absoluteTimestamp:v29 bundleID:v31 parentBundleID:0 isUsageTrusted:v28];

    v33 = sub_237FFCE24(0, &qword_27DEE5868, 0x277CF1440);
    v67 = v33;
    *&v66 = v32;
    v35 = *(v22 + 2);
    v34 = *(v22 + 3);
    if (v35 >= v34 >> 1)
    {
      v22 = sub_237FB5E58((v34 > 1), v35 + 1, 1, v22);
    }

    v36 = v55;
    *(v22 + 2) = v35 + 1;
    sub_237FC156C(&v66, &v22[32 * v35 + 32]);
    v37 = sub_238032164();
    sub_238031A24();
    v63(v36, 0, 1, v15);
    v38 = sub_238032164();
    if (v60(v36, 1, v15) == 1)
    {
      v39 = 0;
    }

    else
    {
      v39 = sub_2380319F4();
      (v58[1])(v36, v15);
    }

    v40 = objc_allocWithZone(MEMORY[0x277CF1440]);
    v41 = sub_238031E74();
    v42 = [v40 initWithStarting:v37 absoluteTimestamp:v39 bundleID:v41 parentBundleID:0 isUsageTrusted:v38];

    v67 = v33;
    *&v66 = v42;
    v44 = *(v22 + 2);
    v43 = *(v22 + 3);
    if (v44 >= v43 >> 1)
    {
      v22 = sub_237FB5E58((v43 > 1), v44 + 1, 1, v22);
    }

    v21 = v59;
    *(v22 + 2) = v44 + 1;
    result = sub_237FC156C(&v66, &v22[32 * v44 + 32]);
    *v21 = v22;
  }

  if (*(a2 + *(v57 + 28)) == 1)
  {
    v45 = v53;
    sub_238031A24();
    v63(v45, 0, 1, v15);
    v46 = sub_238032174();
    v47 = 0;
    if (v60(v45, 1, v15) != 1)
    {
      v47 = sub_2380319F4();
      (v58[1])(v45, v15);
    }

    v48 = [objc_allocWithZone(MEMORY[0x277CF1098]) initWithAbsoluteTimestamp:v47 backlightLevel:v46];

    v67 = v52;
    *&v66 = v48;
    v50 = *(v22 + 2);
    v49 = *(v22 + 3);
    if (v50 >= v49 >> 1)
    {
      v22 = sub_237FB5E58((v49 > 1), v50 + 1, 1, v22);
    }

    *(v22 + 2) = v50 + 1;
    result = sub_237FC156C(&v66, &v22[32 * v50 + 32]);
    *v21 = v22;
  }

  return result;
}

void sub_238027D28(uint64_t a1@<X0>, void *a2@<X8>)
{
  v67 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE51E0, &qword_2380365F0);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v71 = v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v70 = v59 - v7;
  v8 = MEMORY[0x28223BE20](v6);
  v10 = v59 - v9;
  MEMORY[0x28223BE20](v8);
  v12 = v59 - v11;
  v77 = MEMORY[0x277D84F90];
  v63 = objc_opt_self();
  v69 = [v63 displayIsBacklit];
  v68 = type metadata accessor for PickupEvent(0);
  v13 = v68[6];
  v14 = sub_238031A64();
  v15 = *(v14 - 8);
  v61 = v15[2];
  v61(v12, a1 + v13, v14);
  v16 = v15[7];
  v16(v12, 0, 1, v14);
  v72 = a1;
  v64 = v13;
  sub_238031A24();
  v62 = v16;
  v16(v10, 0, 1, v14);
  v73 = v15;
  v18 = v15[6];
  v17 = v15 + 6;
  v74 = v18;
  v19 = 0;
  if (v18(v12, 1, v14) != 1)
  {
    v19 = sub_2380319F4();
    (v73[1])(v12, v14);
  }

  if (v74(v10, 1, v14) == 1)
  {
    v20 = 0;
  }

  else
  {
    v20 = sub_2380319F4();
    (v73[1])(v10, v14);
  }

  v66 = v17;
  v65 = objc_opt_self();
  v21 = v69;
  v22 = [v65 eventWithStream:v69 startDate:v19 endDate:v20 categoryIntegerValue:1 metadata:0];

  if (v22)
  {
    v23 = v68[8];
    v24 = v72;
    v25 = sub_238031B84();
    [v22 setTimeZone_];

    v26 = v22;
    MEMORY[0x2383E50E0]();
    if (*((v77 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v77 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_238031FC4();
    }

    sub_238031FF4();
    if (!*(v24 + 24))
    {
      v39 = v77;

LABEL_27:
      *v67 = v39;
      return;
    }

    v59[1] = v23;
    v60 = v26;
    v69 = [v63 appUsageStream];
    v27 = v70;
    v61(v70, v24 + v64, v14);
    v28 = v62;
    v62(v27, 0, 1, v14);
    v29 = v71;
    sub_238031A24();
    v28(v29, 0, 1, v14);
    v30 = objc_opt_self();
    v31 = sub_238031E74();
    v68 = [v30 withBundle_];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE5848, &qword_2380365F8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_238036350;
    v33 = objc_opt_self();
    v34 = [v33 usageType];
    if (v34)
    {
      v35 = v34;
      v36 = sub_238031EA4();
      v38 = v37;
    }

    else
    {
      v36 = 0;
      v38 = 0;
    }

    v75 = v36;
    v76 = v38;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE5850, &unk_238036600);
    sub_23802E250();
    sub_238032254();
    v40 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
    v41 = sub_237FFCE24(0, &qword_27DEE5840, 0x277CCABB0);
    *(inited + 96) = v41;
    *(inited + 72) = v40;
    v42 = [v33 isUsageTrusted];
    if (v42)
    {
      v43 = v42;
      v44 = sub_238031EA4();
      v46 = v45;
    }

    else
    {
      v44 = 0;
      v46 = 0;
    }

    v75 = v44;
    v76 = v46;
    sub_238032254();
    v47 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
    *(inited + 168) = v41;
    *(inited + 144) = v47;
    sub_237FD4B0C(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE5258, &qword_2380346F8);
    swift_arrayDestroy();
    v48 = v70;
    if (v74(v70, 1, v14) == 1)
    {
      v49 = 0;
    }

    else
    {
      v49 = sub_2380319F4();
      (v73[1])(v48, v14);
    }

    v50 = v71;
    if (v74(v71, 1, v14) == 1)
    {
      v51 = 0;
    }

    else
    {
      v51 = sub_2380319F4();
      (v73[1])(v50, v14);
    }

    v52 = sub_238031DE4();

    v53 = v69;
    v54 = v68;
    v55 = [v65 eventWithStream:v69 startDate:v49 endDate:v51 value:v68 metadata:v52];

    if (v55)
    {
      v56 = sub_238031B84();
      [v55 setTimeZone_];

      v57 = v55;
      MEMORY[0x2383E50E0]();
      v58 = v60;
      if (*((v77 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v77 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_238031FC4();
      }

      sub_238031FF4();

      v39 = v77;
      goto LABEL_27;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_238028604(uint64_t a1)
{
  v2 = v1;
  v32 = *(a1 + 16);
  if (!v32)
  {
    return MEMORY[0x277D84F90];
  }

  v4 = 0;
  v5 = *(type metadata accessor for PickupEvent(0) - 8);
  v6 = MEMORY[0x277D84F90];
  v31 = a1 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
  v30 = *(v5 + 72);
  while (1)
  {
    v8 = v2;
    sub_238027D28(v31 + v30 * v4, &v36);
    if (v2)
    {

      return v6;
    }

    v9 = v36;
    v10 = v36 >> 62;
    if (v36 >> 62)
    {
      v11 = sub_238032374();
    }

    else
    {
      v11 = *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v12 = v6 >> 62;
    if (v6 >> 62)
    {
      v28 = sub_238032374();
      v14 = v28 + v11;
      if (__OFADD__(v28, v11))
      {
LABEL_33:
        __break(1u);
        return MEMORY[0x277D84F90];
      }
    }

    else
    {
      v13 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v14 = v13 + v11;
      if (__OFADD__(v13, v11))
      {
        goto LABEL_33;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    v34 = v11;
    if (result)
    {
      if (!v12)
      {
        v15 = v6 & 0xFFFFFFFFFFFFFF8;
        if (v14 <= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_17;
        }

        goto LABEL_16;
      }

LABEL_15:
      sub_238032374();
      goto LABEL_16;
    }

    if (v12)
    {
      goto LABEL_15;
    }

LABEL_16:
    result = sub_2380322E4();
    v6 = result;
    v15 = result & 0xFFFFFFFFFFFFFF8;
LABEL_17:
    v16 = *(v15 + 16);
    v17 = *(v15 + 24);
    if (v10)
    {
      break;
    }

    v18 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v18)
    {
      goto LABEL_3;
    }

LABEL_21:
    if (((v17 >> 1) - v16) < v34)
    {
      goto LABEL_38;
    }

    v33 = v6;
    v20 = v15 + 8 * v16 + 32;
    v29 = v15;
    if (v10)
    {
      if (v18 < 1)
      {
        goto LABEL_40;
      }

      sub_237FBCCF0(&qword_27DEE5880, &qword_27DEE5878, &unk_238036610, MEMORY[0x277D83988]);
      for (i = 0; i != v18; ++i)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE5878, &unk_238036610);
        v22 = sub_238029688(v35, i, v9);
        v24 = *v23;
        (v22)(v35, 0);
        *(v20 + 8 * i) = v24;
      }
    }

    else
    {
      sub_237FFCE24(0, &qword_27DEE5870, 0x277CFE1D8);
      swift_arrayInitWithCopy();
    }

    v2 = v8;
    v6 = v33;
    if (v34 >= 1)
    {
      v25 = *(v29 + 16);
      v26 = __OFADD__(v25, v34);
      v27 = v25 + v34;
      if (v26)
      {
        goto LABEL_39;
      }

      *(v29 + 16) = v27;
    }

LABEL_4:
    if (++v4 == v32)
    {
      return v6;
    }
  }

  v19 = v15;
  result = sub_238032374();
  v15 = v19;
  v18 = result;
  if (result)
  {
    goto LABEL_21;
  }

LABEL_3:

  if (v34 <= 0)
  {
    goto LABEL_4;
  }

  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
  return result;
}

void sub_2380289A4(uint64_t a1@<X0>, void *a2@<X8>)
{
  v42 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE51E0, &qword_2380365F0);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v6 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v37 - v7;
  v9 = type metadata accessor for NotificationEvent(0);
  v10 = (a1 + *(v9 + 20));
  v12 = *v10;
  v11 = v10[1];
  v13 = *(a1 + *(v9 + 32) + 8);
  v14 = sub_2380320B4();
  v38 = v12;
  v39 = v11;
  v15 = sub_238031E74();
  if (v13)
  {
    v16 = sub_238031E74();
  }

  else
  {
    v16 = 0;
  }

  v41 = [objc_allocWithZone(MEMORY[0x277CFE268]) initWithIdentifier:0 bundleIdentifier:v15 itemIdentifier:0 groupIdentifier:0 deviceIdentifier:v16 userIdentifier:v14];

  v40 = [objc_opt_self() notificationUsageStream];
  v17 = sub_238031A64();
  v18 = *(v17 - 8);
  v19 = *(v18 + 16);
  v19(v8, a1, v17);
  v20 = *(v18 + 56);
  v20(v8, 0, 1, v17);
  v19(v6, a1, v17);
  v20(v6, 0, 1, v17);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE5848, &qword_2380365F8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_238035770;
  v22 = [objc_opt_self() bundleID];
  if (v22)
  {
    v23 = v22;
    v24 = sub_238031EA4();
    v26 = v25;
  }

  else
  {
    v24 = 0;
    v26 = 0;
  }

  v43 = v24;
  v44 = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE5850, &unk_238036600);
  sub_23802E250();
  sub_238032254();
  *(inited + 96) = MEMORY[0x277D837D0];
  v27 = v39;
  *(inited + 72) = v38;
  *(inited + 80) = v27;

  sub_237FD4B0C(inited);
  swift_setDeallocating();
  sub_23802E2CC(inited + 32);
  v28 = *(v18 + 48);
  if (v28(v8, 1, v17) == 1)
  {
    v29 = 0;
  }

  else
  {
    v29 = sub_2380319F4();
    (*(v18 + 8))(v8, v17);
  }

  if (v28(v6, 1, v17) == 1)
  {
    v30 = 0;
  }

  else
  {
    v30 = sub_2380319F4();
    (*(v18 + 8))(v6, v17);
  }

  v31 = sub_238031E74();
  v32 = sub_238031DE4();

  v33 = objc_opt_self();
  v35 = v40;
  v34 = v41;
  v36 = [v33 eventWithStream:v40 source:v41 startDate:v29 endDate:v30 identifierStringValue:v31 metadata:v32];

  *v42 = v36;
}

void static EventStreams.delete()()
{
  v1 = swift_beginAccess();
  if (byte_27DEE58A1 != 2)
  {
    if ((byte_27DEE58A1 & 1) == 0)
    {
      goto LABEL_6;
    }

LABEL_5:
    sub_23802D0AC();
    if (v0)
    {
      return;
    }

    goto LABEL_6;
  }

  v5[3] = &type metadata for Feature.FeatureFlags;
  v5[4] = sub_237FBEFF4(v1, v2, v3);
  LOBYTE(v5[0]) = 1;
  v4 = sub_238031BA4();
  __swift_destroy_boxed_opaque_existential_1Tm(v5);
  if (v4)
  {
    goto LABEL_5;
  }

LABEL_6:
  sub_23802DA78();
}

uint64_t sub_238028EC8()
{
  v7 = sub_238032134();
  v0 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v2 = v6 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_238032124();
  MEMORY[0x28223BE20](v3);
  v4 = sub_238031DD4();
  MEMORY[0x28223BE20](v4 - 8);
  v6[1] = sub_237FFCE24(0, &qword_27DEE5820, 0x277D85C78);
  sub_238031DC4();
  v8 = MEMORY[0x277D84F90];
  sub_23802E19C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE5830, "X#");
  sub_237FBCCF0(&qword_27DEE5838, &qword_27DEE5830, "X#", MEMORY[0x277D83970]);
  sub_2380321E4();
  (*(v0 + 104))(v2, *MEMORY[0x277D85260], v7);
  result = sub_238032144();
  qword_27DEE57D0 = result;
  return result;
}

id static EventStreams.testBiomeQueue.getter()
{
  if (qword_27DEE4D70 != -1)
  {
    swift_once();
  }

  v1 = qword_27DEE57D0;

  return v1;
}

id sub_238029168()
{
  v0 = objc_opt_self();

  return [v0 unsetBasePathForTesting];
}

void sub_2380291C8(uint64_t a1)
{
  v1 = objc_opt_self();
  v2 = sub_238031E74();
  [v1 setBasePathForTestingWithPath_];
}

uint64_t static EventStreams.command(rateLimit:)()
{
  v0 = sub_237FD47FC(&unk_284AE5CA0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE5580, &qword_238036580);
  result = swift_arrayDestroy();
  v2 = 0;
  v3 = 1 << *(v0 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(v0 + 64);
  v6 = (v3 + 63) >> 6;
  if (v5)
  {
    goto LABEL_9;
  }

  while (1)
  {
    v7 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      break;
    }

    if (v7 >= v6)
    {

      return 0;
    }

    v5 = *(v0 + 64 + 8 * v7);
    ++v2;
    if (v5)
    {
      v2 = v7;
      do
      {
LABEL_9:
        v5 &= v5 - 1;
        sub_2380322B4();

        v8 = sub_2380324C4();
        MEMORY[0x2383E5050](v8);

        MEMORY[0x2383E5050](0xD000000000000019, 0x80000002380375D0);
        v9 = sub_2380324C4();
        MEMORY[0x2383E5050](v9);

        MEMORY[0x2383E5050](32, 0xE100000000000000);
        MEMORY[0x2383E5050](0xD00000000000005ALL, 0x8000000238037550);
        MEMORY[0x2383E5050](8251, 0xE200000000000000);
        MEMORY[0x2383E5050](0xD000000000000010, 0x80000002380375B0);
      }

      while (v5);
      continue;
    }
  }

  __break(1u);
  return result;
}

uint64_t static EventStreams.synchronize()()
{
  if (qword_280C34B48 != -1)
  {
    swift_once();
  }

  v0 = qword_280C36C40;
  v1 = *algn_280C36C48;
  v2 = *(*algn_280C36C48 + 8);
  v3 = sub_2380321B4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v12 - v5;
  v2(v0, v1);
  v7 = *(v0 - 8);
  if ((*(v7 + 48))(v6, 1, v0) == 1)
  {
    result = (*(v4 + 8))(v6, v3);
    __break(1u);
  }

  else
  {
    v13 = v0;
    v14 = v1;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v12);
    (*(v7 + 32))(boxed_opaque_existential_1, v6, v0);
    sub_237FB0034(&v12, v15);
    v9 = v16;
    v10 = v17;
    __swift_project_boxed_opaque_existential_1(v15, v16);
    (*(v1 + 40))(v9, v10);
    return __swift_destroy_boxed_opaque_existential_1Tm(v15);
  }

  return result;
}

void (*sub_238029688(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x2383E5440](a2, a3);
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
    return sub_238029708;
  }

  __break(1u);
  return result;
}

void _s14DeviceActivity12EventStreamsV29useTestBiomeDirectoryIfNeededyyFZ_0()
{
  v0 = sub_238031994();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = aBlock - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = aBlock - v6;
  MEMORY[0x28223BE20](v5);
  v9 = aBlock - v8;
  if (qword_280C353B8 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v0, qword_280C353C0);
  sub_238031904();
  sub_2380318F4();
  v10 = *(v1 + 8);
  v10(v4, v0);
  sub_2380318F4();
  v10(v7, v0);
  v11 = sub_238031954();
  v13 = v12;
  v10(v9, v0);
  v14 = [objc_opt_self() defaultManager];
  v15 = sub_238031E74();
  v16 = [v14 fileExistsAtPath_];

  if (v16)
  {
    if (qword_27DEE4D70 != -1)
    {
      swift_once();
    }

    v17 = qword_27DEE57D0;
    v18 = swift_allocObject();
    *(v18 + 16) = v11;
    *(v18 + 24) = v13;
    v19 = swift_allocObject();
    *(v19 + 16) = sub_23802E41C;
    *(v19 + 24) = v18;
    aBlock[4] = sub_23802E420;
    aBlock[5] = v19;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2380291A0;
    aBlock[3] = &block_descriptor_62;
    v20 = _Block_copy(aBlock);

    dispatch_sync(v17, v20);
    _Block_release(v20);
    LOBYTE(v20) = swift_isEscapingClosureAtFileLocation();

    if ((v20 & 1) == 0)
    {
      if (qword_280C35398 != -1)
      {
        swift_once();
      }

      v21 = sub_238031DB4();
      __swift_project_value_buffer(v21, qword_280C36C68);
      v22 = sub_238031D94();
      v23 = sub_238032114();
      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        *v24 = 0;
        _os_log_impl(&dword_237FA1000, v22, v23, "Using test Biome directory", v24, 2u);
        MEMORY[0x2383E5E30](v24, -1, -1);
      }

      goto LABEL_15;
    }

    __break(1u);
  }

  else
  {

    if (qword_280C35398 == -1)
    {
      goto LABEL_13;
    }
  }

  swift_once();
LABEL_13:
  v25 = sub_238031DB4();
  __swift_project_value_buffer(v25, qword_280C36C68);
  v22 = sub_238031D94();
  v26 = sub_238032114();
  if (os_log_type_enabled(v22, v26))
  {
    v27 = swift_slowAlloc();
    *v27 = 0;
    _os_log_impl(&dword_237FA1000, v22, v26, "Using production Biome directory", v27, 2u);
    MEMORY[0x2383E5E30](v27, -1, -1);
  }

LABEL_15:
}

void sub_238029C90(uint64_t a1)
{
  v2 = sub_238031A64();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v47 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE51E0, &qword_2380365F0);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v51 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v46 - v8;
  v10 = type metadata accessor for AppUsageEvent(0);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = (&v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = MEMORY[0x277D84F90];
  v59 = MEMORY[0x277D84F90];
  v15 = *(a1 + 16);
  v56 = v2;
  v46 = v3;
  if (v15)
  {
    v16 = sub_237FFCE24(0, &qword_27DEE5840, 0x277CCABB0);
    v54 = *(v10 + 20);
    v55 = v16;
    v17 = a1 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
    v18 = *(v11 + 72);
    v52 = (v3 + 48);
    v53 = (v3 + 56);
    v48 = (v3 + 8);
    v49 = v18;
    v50 = v9;
    do
    {
      sub_23802E334(v17, v13, type metadata accessor for AppUsageEvent);
      v19 = sub_238032164();
      sub_238031634();
      v20 = *v53;
      (*v53)(v9, 0, 1, v2);
      v21 = *v13;
      v57 = v13[1];
      v58 = v21;
      v22 = sub_238032164();
      v23 = *v52;
      if ((*v52)(v9, 1, v2) == 1)
      {
        v24 = 0;
      }

      else
      {
        v24 = sub_2380319F4();
        (*v48)(v9, v2);
      }

      v25 = objc_allocWithZone(MEMORY[0x277CF1440]);
      v26 = sub_238031E74();
      [v25 initWithStarting:v19 absoluteTimestamp:v24 bundleID:v26 parentBundleID:0 isUsageTrusted:v22];

      MEMORY[0x2383E50E0]();
      if (*((v59 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v59 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_238031FC4();
      }

      sub_238031FF4();
      v27 = sub_238032164();
      v28 = v51;
      sub_238031604();
      v29 = v56;
      v20(v28, 0, 1, v56);
      v30 = v28;
      v31 = sub_238032164();
      if (v23(v30, 1, v29) == 1)
      {
        v32 = 0;
      }

      else
      {
        v32 = sub_2380319F4();
        (*v48)(v30, v29);
      }

      v33 = objc_allocWithZone(MEMORY[0x277CF1440]);
      v34 = sub_238031E74();
      [v33 initWithStarting:v27 absoluteTimestamp:v32 bundleID:v34 parentBundleID:0 isUsageTrusted:v31];

      MEMORY[0x2383E50E0]();
      if (*((v59 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v59 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_238031FC4();
      }

      sub_238031FF4();
      sub_23802E39C(v13, type metadata accessor for AppUsageEvent);
      v9 = v50;
      v17 += v49;
      --v15;
      v2 = v56;
    }

    while (v15);
    v14 = v59;
  }

  v35 = [BiomeLibrary() ScreenTime];
  swift_unknownObjectRelease();
  v36 = [v35 AppUsage];
  swift_unknownObjectRelease();
  v37 = [v36 source];

  if (!(v14 >> 62))
  {
    v38 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v38)
    {
      goto LABEL_17;
    }

LABEL_27:

    return;
  }

  v38 = sub_238032374();
  if (!v38)
  {
    goto LABEL_27;
  }

LABEL_17:
  if (v38 >= 1)
  {
    v39 = 0;
    v40 = v47;
    v41 = (v46 + 8);
    do
    {
      if ((v14 & 0xC000000000000001) != 0)
      {
        v43 = MEMORY[0x2383E5440](v39, v14);
      }

      else
      {
        v43 = *(v14 + 8 * v39 + 32);
      }

      v44 = v43;
      v45 = [v43 absoluteTimestamp];
      if (v45)
      {
        v42 = v45;
        sub_238031A44();

        sub_2380319E4();
        [v37 sendEvent:v44 timestamp:?];

        (*v41)(v40, v56);
      }

      else
      {
      }

      ++v39;
    }

    while (v38 != v39);
    goto LABEL_27;
  }

  __break(1u);
}

uint64_t sub_23802A308(uint64_t a1)
{
  v2 = v1;
  v3 = *(a1 + 16);
  v4 = MEMORY[0x277D84F90];
  if (v3)
  {
    v24[0] = MEMORY[0x277D84F90];
    sub_238032324();
    v6 = *(type metadata accessor for AppUsageEvent(0) - 8);
    v7 = (a1 + ((*(v6 + 80) + 32) & ~*(v6 + 80)));
    v8 = *(v6 + 72);
    while (1)
    {
      sub_2380265E8(v7, &v21);
      if (v2)
      {
        break;
      }

      v2 = 0;
      sub_238032304();
      sub_238032334();
      sub_238032344();
      sub_238032314();
      v7 = (v7 + v8);
      if (!--v3)
      {
        v4 = v24[0];
        goto LABEL_6;
      }
    }
  }

  else
  {
LABEL_6:
    if (qword_280C34B48 != -1)
    {
      swift_once();
    }

    v9 = qword_280C36C40;
    v10 = *algn_280C36C48;
    v11 = *(*algn_280C36C48 + 8);
    v12 = sub_2380321B4();
    v27 = *(v12 - 8);
    MEMORY[0x28223BE20](v12);
    v14 = &v21 - v13;
    v11(v9, v10);
    v15 = *(v9 - 8);
    if ((*(v15 + 48))(v14, 1, v9) != 1)
    {
      v22 = v9;
      v23 = v10;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v21);
      (*(v15 + 32))(boxed_opaque_existential_1, v14, v9);
      sub_237FB0034(&v21, v24);
      v17 = v25;
      v18 = v26;
      __swift_project_boxed_opaque_existential_1(v24, v25);
      v19 = sub_23802E63C(v4);

      (*(v10 + 32))(v19, v17, v18);

      return __swift_destroy_boxed_opaque_existential_1Tm(v24);
    }

    (*(v27 + 8))(v14, v12);
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_23802A60C(uint64_t a1)
{
  v2 = sub_238031A64();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v35 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v34 = &v33 - v7;
  v8 = MEMORY[0x28223BE20](v6);
  v37 = &v33 - v9;
  MEMORY[0x28223BE20](v8);
  v11 = &v33 - v10;
  v12 = 0;
  v41[0] = MEMORY[0x277D84F90];
  v13 = *(a1 + 16);
  while (v13 != v12)
  {
    v14 = *(type metadata accessor for WebUsageEvent(0) - 8);
    sub_238026C1C(v41, a1 + ((*(v14 + 80) + 32) & ~*(v14 + 80)) + *(v14 + 72) * v12++);
  }

  v15 = v41[0];
  v16 = [BiomeLibrary() ScreenTime];
  swift_unknownObjectRelease();
  v17 = [v16 AppUsage];
  swift_unknownObjectRelease();
  v38 = [v17 source];

  v18 = [BiomeLibrary() App];
  swift_unknownObjectRelease();
  v19 = [v18 WebUsage];
  swift_unknownObjectRelease();
  v20 = [v19 source];

  v21 = *(v15 + 2);
  if (!v21)
  {

    goto LABEL_17;
  }

  v36 = v20;
  v33 = v15;
  v22 = (v15 + 32);
  v23 = (v3 + 32);
  v24 = (v3 + 8);
  do
  {
    sub_237FD4FB0(v22, v41);
    sub_237FD4FB0(v41, v40);
    sub_237FFCE24(0, &qword_27DEE5868, 0x277CF1440);
    if (swift_dynamicCast())
    {
      v25 = v39;
      v26 = [v39 absoluteTimestamp];
      if (!v26)
      {
        goto LABEL_6;
      }

      v27 = v37;
      v28 = v26;
      sub_238031A44();

      (*v23)(v11, v27, v2);
      sub_2380319E4();
      [v38 sendEvent:v25 timestamp:?];

      (*v24)(v11, v2);
    }

    else
    {
      sub_237FD4FB0(v41, v40);
      sub_237FFCE24(0, &qword_27DEE5888, 0x277CF1010);
      if (swift_dynamicCast())
      {
        v25 = v39;
        v29 = [v39 absoluteTimestamp];
        if (!v29)
        {
LABEL_6:
          __swift_destroy_boxed_opaque_existential_1Tm(v41);

          goto LABEL_7;
        }

        v30 = v35;
        v31 = v29;
        sub_238031A44();

        v32 = v34;
        (*v23)(v34, v30, v2);
        sub_2380319E4();
        [v36 sendEvent:v25 timestamp:?];

        (*v24)(v32, v2);
      }
    }

    __swift_destroy_boxed_opaque_existential_1Tm(v41);
LABEL_7:
    v22 += 32;
    --v21;
  }

  while (v21);

LABEL_17:
}

uint64_t sub_23802AAE8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE51E0, &qword_2380365F0);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = &v124 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v124 - v7;
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v124 - v10;
  MEMORY[0x28223BE20](v9);
  v145 = &v124 - v12;
  v150 = type metadata accessor for WebUsageEvent(0);
  v13 = *(v150 - 1);
  MEMORY[0x28223BE20](v150);
  v146 = &v124 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x277D84F90];
  v164 = MEMORY[0x277D84F90];
  v16 = *(a1 + 16);
  if (v16)
  {
    v126 = v8;
    v143 = objc_opt_self();
    v142 = objc_opt_self();
    v154 = objc_opt_self();
    v153 = sub_237FFCE24(0, &qword_27DEE5840, 0x277CCABB0);
    v141 = objc_opt_self();
    v17 = a1 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
    v125 = *(v13 + 72);
    v128 = xmmword_238036350;
    v127 = xmmword_238036570;
    v144 = v11;
    v18 = v146;
    v129 = v5;
    while (1)
    {
      v131 = v17;
      v132 = v16;
      sub_23802E334(v17, v18, type metadata accessor for WebUsageEvent);
      v140 = [v143 appUsageStream];
      v19 = v150;
      v20 = v150[5];
      v21 = v145;
      sub_238031634();
      v22 = sub_238031A64();
      v148 = *(v22 - 8);
      v149 = v22;
      v24 = v148 + 56;
      v23 = *(v148 + 56);
      v23(v21, 0, 1, v22);
      v138 = v20;
      v25 = v144;
      sub_238031604();
      v136 = v23;
      v137 = v24;
      v23(v25, 0, 1, v22);
      v26 = (v18 + v19[6]);
      v27 = *v26;
      v134 = v26[1];
      v135 = v27;
      v28 = sub_238031E74();
      v29 = [v142 withBundle_];

      v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE5848, &qword_2380365F8);
      inited = swift_initStackObject();
      *(inited + 16) = v128;
      v31 = [v154 usageType];
      if (v31)
      {
        v32 = v31;
        v33 = sub_238031EA4();
        v35 = v34;
      }

      else
      {
        v33 = 0;
        v35 = 0;
      }

      v160 = v33;
      v161 = v35;
      v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE5850, &unk_238036600);
      v37 = sub_23802E250();
      sub_238032254();
      v38 = v153;
      v39 = sub_238032174();
      *(inited + 96) = v38;
      *(inited + 72) = v39;
      v40 = [v154 isUsageTrusted];
      if (v40)
      {
        v41 = v40;
        v42 = sub_238031EA4();
        v44 = v43;
      }

      else
      {
        v42 = 0;
        v44 = 0;
      }

      v45 = v148;
      v160 = v42;
      v161 = v44;
      v151 = v36;
      sub_238032254();
      v46 = v153;
      v47 = sub_238032164();
      *(inited + 168) = v46;
      *(inited + 144) = v47;
      sub_237FD4B0C(inited);
      swift_setDeallocating();
      v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE5258, &qword_2380346F8);
      swift_arrayDestroy();
      v48 = v145;
      v49 = v149;
      v152 = *(v45 + 48);
      if (v152(v145, 1, v149) == 1)
      {
        v50 = 0;
      }

      else
      {
        v50 = sub_2380319F4();
        (*(v45 + 8))(v48, v49);
      }

      v51 = v144;
      v52 = v152(v144, 1, v49);
      v147 = v45 + 48;
      if (v52 == 1)
      {
        v53 = 0;
      }

      else
      {
        v54 = v51;
        v53 = sub_2380319F4();
        (*(v45 + 8))(v54, v49);
      }

      v55 = sub_238031DE4();

      v56 = v140;
      v57 = [v141 eventWithStream:v140 startDate:v50 endDate:v53 value:v29 metadata:v55];

      if (!v57)
      {
        break;
      }

      v58 = v146;
      v130 = v150[7];
      v59 = sub_238031B84();
      [v57 setTimeZone_];

      v60 = v57;
      MEMORY[0x2383E50E0]();
      if (*((v164 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v164 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_238031FC4();
      }

      v140 = v60;
      sub_238031FF4();
      v57 = swift_initStackObject();
      *(v57 + 1) = v127;
      v61 = [v154 webpageURL];
      if (v61)
      {
        v62 = v61;
        v63 = sub_238031EA4();
        v65 = v64;
      }

      else
      {
        v63 = 0;
        v65 = 0;
      }

      v160 = v63;
      v161 = v65;
      sub_238032254();
      v66 = sub_238031994();
      v57[12] = v66;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v57 + 9);
      (*(*(v66 - 8) + 16))(boxed_opaque_existential_1, v58, v66);
      v68 = [v154 webDomain];
      if (v68)
      {
        v69 = v68;
        v70 = sub_238031EA4();
        v72 = v71;
      }

      else
      {
        v70 = 0;
        v72 = 0;
      }

      v73 = v129;
      v160 = v70;
      v161 = v72;
      sub_238032254();
      sub_238031944();
      if (!v74)
      {
        goto LABEL_52;
      }

      v75 = objc_allocWithZone(MEMORY[0x277CCACA8]);
      v76 = sub_238031E74();

      v77 = [v75 initWithString_];

      v139 = sub_237FFCE24(0, &qword_27DEE5890, 0x277CCACA8);
      v57[21] = v139;
      v57[18] = v77;
      v78 = [v154 usageType];
      if (v78)
      {
        v79 = v78;
        v80 = sub_238031EA4();
        v82 = v81;
      }

      else
      {
        v80 = 0;
        v82 = 0;
      }

      v160 = v80;
      v161 = v82;
      sub_238032254();
      v83 = v153;
      v84 = sub_238032174();
      v57[30] = v83;
      v57[27] = v84;
      v85 = [v154 isUsageTrusted];
      if (v85)
      {
        v86 = v85;
        v87 = sub_238031EA4();
        v89 = v88;
      }

      else
      {
        v87 = 0;
        v89 = 0;
      }

      v160 = v87;
      v161 = v89;
      sub_238032254();
      v90 = v153;
      v91 = sub_238032164();
      v57[39] = v90;
      v57[36] = v91;
      v92 = sub_237FD4B0C(v57);
      swift_setDeallocating();
      swift_arrayDestroy();
      if (*&v58[v150[8] + 8])
      {
        v93 = [v154 safariProfileID];
        if (v93)
        {
          v94 = v93;
          v95 = sub_238031EA4();
          v97 = v96;
        }

        else
        {
          v95 = 0;
          v97 = 0;
        }

        *&v157 = v95;
        *(&v157 + 1) = v97;
        sub_238032254();
        v99 = objc_allocWithZone(MEMORY[0x277CCACA8]);
        v100 = sub_238031E74();
        v101 = [v99 initWithString_];

        v158 = v139;
        *&v157 = v101;
        sub_237FC156C(&v157, v156);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v155 = v92;
        sub_237FFBE98(v156, &v160, isUniquelyReferenced_nonNull_native);
        sub_237FD4F5C(&v160);
        v151 = v155;
        v98 = v129;
      }

      else
      {
        v151 = v92;
        v98 = v73;
      }

      v139 = [v143 appWebUsageStream];
      v103 = v126;
      sub_238031634();
      v104 = v149;
      v105 = v136;
      v136(v103, 0, 1, v149);
      sub_238031604();
      v106 = v98;
      v105(v98, 0, 1, v104);
      v107 = sub_238031E74();
      v108 = [v142 withBundle_];

      if (v152(v103, 1, v104) == 1)
      {
        v109 = 0;
      }

      else
      {
        v109 = sub_2380319F4();
        (*(v148 + 8))(v103, v104);
      }

      if (v152(v106, 1, v104) == 1)
      {
        v110 = 0;
      }

      else
      {
        v110 = sub_2380319F4();
        (*(v148 + 8))(v106, v104);
      }

      v111 = sub_238031DE4();
      v57 = v139;
      v37 = [v141 eventWithStream:v139 startDate:v109 endDate:v110 value:v108 metadata:v111];

      if (!v37)
      {
        goto LABEL_53;
      }

      v18 = v146;
      v112 = sub_238031B84();
      [v37 setTimeZone_];

      v113 = v37;
      MEMORY[0x2383E50E0]();
      if (*((v164 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v164 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_238031FC4();
      }

      sub_238031FF4();

      v15 = v164;
      sub_23802E39C(v18, type metadata accessor for WebUsageEvent);
      v17 = v131 + v125;
      v16 = v132 - 1;
      if (v132 == 1)
      {
        goto LABEL_47;
      }
    }

    __break(1u);
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
  }

  else
  {
LABEL_47:
    if (qword_280C34B48 != -1)
    {
      swift_once();
    }

    v114 = qword_280C36C40;
    v115 = *algn_280C36C48;
    v116 = *(*algn_280C36C48 + 8);
    v57 = sub_2380321B4();
    v154 = *(v57 - 1);
    MEMORY[0x28223BE20](v57);
    v37 = &v124 - v117;
    v116(v114, v115);
    v118 = *(v114 - 8);
    if ((*(v118 + 48))(v37, 1, v114) != 1)
    {
      v158 = v114;
      v159 = v115;
      v119 = __swift_allocate_boxed_opaque_existential_1(&v157);
      (*(v118 + 32))(v119, v37, v114);
      sub_237FB0034(&v157, &v160);
      v120 = v162;
      v121 = v163;
      __swift_project_boxed_opaque_existential_1(&v160, v162);
      v122 = sub_23802E63C(v15);

      (*(v115 + 32))(v122, v120, v121);

      return __swift_destroy_boxed_opaque_existential_1Tm(&v160);
    }
  }

  result = (*(v154 + 1))(v37, v57);
  __break(1u);
  return result;
}

void sub_23802B96C(uint64_t a1)
{
  v2 = sub_238031A64();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v36 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v35 = &v34 - v7;
  v8 = MEMORY[0x28223BE20](v6);
  v38 = &v34 - v9;
  MEMORY[0x28223BE20](v8);
  v11 = &v34 - v10;
  v12 = 0;
  v42[0] = MEMORY[0x277D84F90];
  v13 = *(a1 + 16);
  while (v13 != v12)
  {
    v14 = *(type metadata accessor for PickupEvent(0) - 8);
    sub_238027604(v42, a1 + ((*(v14 + 80) + 32) & ~*(v14 + 80)) + *(v14 + 72) * v12++);
  }

  v15 = v42[0];
  v16 = [BiomeLibrary() Device];
  swift_unknownObjectRelease();
  v17 = [v16 Display];
  swift_unknownObjectRelease();
  v18 = [v17 Backlight];
  swift_unknownObjectRelease();
  v39 = [v18 source];

  v19 = [BiomeLibrary() ScreenTime];
  swift_unknownObjectRelease();
  v20 = [v19 AppUsage];
  swift_unknownObjectRelease();
  v21 = [v20 source];

  v22 = *(v15 + 2);
  if (!v22)
  {

    goto LABEL_17;
  }

  v37 = v21;
  v34 = v15;
  v23 = (v15 + 32);
  v24 = (v3 + 32);
  v25 = (v3 + 8);
  do
  {
    sub_237FD4FB0(v23, v42);
    sub_237FD4FB0(v42, v41);
    sub_237FFCE24(0, &qword_27DEE5860, 0x277CF1098);
    if (swift_dynamicCast())
    {
      v26 = v40;
      v27 = [v40 absoluteTimestamp];
      if (!v27)
      {
        goto LABEL_6;
      }

      v28 = v38;
      v29 = v27;
      sub_238031A44();

      (*v24)(v11, v28, v2);
      sub_2380319E4();
      [v39 sendEvent:v26 timestamp:?];

      (*v25)(v11, v2);
    }

    else
    {
      sub_237FD4FB0(v42, v41);
      sub_237FFCE24(0, &qword_27DEE5868, 0x277CF1440);
      if (swift_dynamicCast())
      {
        v26 = v40;
        v30 = [v40 absoluteTimestamp];
        if (!v30)
        {
LABEL_6:
          __swift_destroy_boxed_opaque_existential_1Tm(v42);

          goto LABEL_7;
        }

        v31 = v36;
        v32 = v30;
        sub_238031A44();

        v33 = v35;
        (*v24)(v35, v31, v2);
        sub_2380319E4();
        [v37 sendEvent:v26 timestamp:?];

        (*v25)(v33, v2);
      }
    }

    __swift_destroy_boxed_opaque_existential_1Tm(v42);
LABEL_7:
    v23 += 32;
    --v22;
  }

  while (v22);

LABEL_17:
}

uint64_t sub_23802BE6C(uint64_t a1)
{
  v1 = sub_238028604(a1);
  if (qword_280C34B48 != -1)
  {
    swift_once();
  }

  v2 = qword_280C36C40;
  v3 = *algn_280C36C48;
  v4 = *(*algn_280C36C48 + 8);
  v5 = sub_2380321B4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v15 - v7;
  v4(v2, v3);
  v9 = *(v2 - 8);
  if ((*(v9 + 48))(v8, 1, v2) == 1)
  {
    result = (*(v6 + 8))(v8, v5);
    __break(1u);
  }

  else
  {
    v16 = v2;
    v17 = v3;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v15);
    (*(v9 + 32))(boxed_opaque_existential_1, v8, v2);
    sub_237FB0034(&v15, v18);
    v11 = v19;
    v12 = v20;
    __swift_project_boxed_opaque_existential_1(v18, v19);
    v13 = sub_23802E63C(v1);

    (*(v3 + 32))(v13, v11, v12);

    return __swift_destroy_boxed_opaque_existential_1Tm(v18);
  }

  return result;
}

void sub_23802C098(uint64_t a1)
{
  v53 = sub_238031A64();
  v2 = *(v53 - 8);
  MEMORY[0x28223BE20](v53);
  v42 = &v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE51E0, &qword_2380365F0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v40 - v5;
  v52 = sub_238031AB4();
  v7 = *(v52 - 8);
  MEMORY[0x28223BE20](v52);
  v51 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = type metadata accessor for NotificationEvent(0);
  v9 = *(v50 - 8);
  MEMORY[0x28223BE20](v50);
  v11 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a1 + 16);
  v13 = MEMORY[0x277D84F90];
  v40 = v2;
  if (v12)
  {
    v49 = v6;
    v55 = MEMORY[0x277D84F90];
    sub_238032324();
    v14 = a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
    v15 = *(v9 + 72);
    v46 = (v7 + 8);
    v47 = v15;
    v44 = (v2 + 56);
    v45 = (v2 + 16);
    v43 = (v2 + 48);
    v41 = (v2 + 8);
    v48 = v11;
    v16 = v53;
    do
    {
      sub_23802E334(v14, v11, type metadata accessor for NotificationEvent);
      v20 = v51;
      sub_238031AA4();
      sub_238031A74();
      (*v46)(v20, v52);
      v21 = v11;
      v22 = v49;
      (*v45)(v49, v21, v16);
      (*v44)(v22, 0, 1, v16);
      v23 = &v21[*(v50 + 32)];
      v24 = *(v23 + 1);
      v54 = *v23;
      v25 = sub_238031E74();

      if ((*v43)(v22, 1, v16) == 1)
      {
        v26 = 0;
      }

      else
      {
        v26 = sub_2380319F4();
        (*v41)(v22, v16);
      }

      v27 = sub_238031E74();
      if (v24)
      {
        v17 = sub_238031E74();
      }

      else
      {
        v17 = 0;
      }

      v18 = objc_allocWithZone(MEMORY[0x277CF1388]);
      v19 = sub_238031F84();
      [v18 initWithUniqueID:v25 absoluteTimestamp:v26 usageType:1 bundleID:v27 notificationID:0 deviceID:v17 title:0 subtitle:0 body:0 badge:0 threadID:0 categoryID:0 sectionID:0 contactIDs:v19 isGroupMessage:0 parentBundleID:0 bodyLength:0];

      v11 = v48;
      sub_23802E39C(v48, type metadata accessor for NotificationEvent);
      sub_238032304();
      sub_238032334();
      sub_238032344();
      sub_238032314();
      v14 += v47;
      --v12;
    }

    while (v12);
    v13 = v55;
  }

  v28 = [BiomeLibrary() Notification];
  swift_unknownObjectRelease();
  v29 = [v28 Usage];
  swift_unknownObjectRelease();
  v30 = [v29 source];

  v31 = v53;
  if (!(v13 >> 62))
  {
    v32 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v32)
    {
      goto LABEL_13;
    }

LABEL_23:

    return;
  }

  v32 = sub_238032374();
  if (!v32)
  {
    goto LABEL_23;
  }

LABEL_13:
  if (v32 >= 1)
  {
    v33 = 0;
    v34 = (v40 + 8);
    v35 = v42;
    do
    {
      if ((v13 & 0xC000000000000001) != 0)
      {
        v37 = MEMORY[0x2383E5440](v33, v13);
      }

      else
      {
        v37 = *(v13 + 8 * v33 + 32);
      }

      v38 = v37;
      v39 = [v37 absoluteTimestamp];
      if (v39)
      {
        v36 = v39;
        sub_238031A44();

        sub_2380319E4();
        [v30 sendEvent:v38 timestamp:?];

        (*v34)(v35, v31);
      }

      else
      {
      }

      ++v33;
    }

    while (v32 != v33);
    goto LABEL_23;
  }

  __break(1u);
}

uint64_t sub_23802C6B8(uint64_t a1)
{
  v2 = v1;
  v3 = *(a1 + 16);
  v4 = MEMORY[0x277D84F90];
  if (v3)
  {
    v24[0] = MEMORY[0x277D84F90];
    sub_238032324();
    v6 = *(type metadata accessor for NotificationEvent(0) - 8);
    v7 = a1 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
    v8 = *(v6 + 72);
    while (1)
    {
      sub_2380289A4(v7, &v21);
      if (v2)
      {
        break;
      }

      v2 = 0;
      sub_238032304();
      sub_238032334();
      sub_238032344();
      sub_238032314();
      v7 += v8;
      if (!--v3)
      {
        v4 = v24[0];
        goto LABEL_6;
      }
    }
  }

  else
  {
LABEL_6:
    if (qword_280C34B48 != -1)
    {
      swift_once();
    }

    v9 = qword_280C36C40;
    v10 = *algn_280C36C48;
    v11 = *(*algn_280C36C48 + 8);
    v12 = sub_2380321B4();
    v27 = *(v12 - 8);
    MEMORY[0x28223BE20](v12);
    v14 = &v21 - v13;
    v11(v9, v10);
    v15 = *(v9 - 8);
    if ((*(v15 + 48))(v14, 1, v9) != 1)
    {
      v22 = v9;
      v23 = v10;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v21);
      (*(v15 + 32))(boxed_opaque_existential_1, v14, v9);
      sub_237FB0034(&v21, v24);
      v17 = v25;
      v18 = v26;
      __swift_project_boxed_opaque_existential_1(v24, v25);
      v19 = sub_23802E83C(v4);

      (*(v10 + 32))(v19, v17, v18);

      return __swift_destroy_boxed_opaque_existential_1Tm(v24);
    }

    (*(v27 + 8))(v14, v12);
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_23802C9BC(char a1)
{
  v47 = *MEMORY[0x277D85DE8];
  v2 = sub_238031994();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v40 - v8;
  MEMORY[0x28223BE20](v7);
  v11 = &v40 - v10;
  if (qword_280C353B8 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v2, qword_280C353C0);
  sub_238031904();
  sub_2380318F4();
  v12 = *(v3 + 8);
  v12(v6, v2);
  sub_2380318F4();
  v12(v9, v2);
  v13 = sub_238031954();
  v15 = v14;
  v12(v11, v2);
  v16 = [objc_opt_self() defaultManager];
  v17 = sub_238031E74();
  v18 = [v16 fileExistsAtPath_];

  if ((a1 & 1) == 0)
  {
    if (!v18)
    {

      goto LABEL_26;
    }

    v30 = sub_238031E74();

    aBlock = 0;
    v31 = [v16 removeItemAtPath:v30 error:&aBlock];

    if (!v31)
    {
      v39 = aBlock;
      goto LABEL_25;
    }

    v32 = qword_27DEE4D70;
    v33 = aBlock;
    if (v32 != -1)
    {
      swift_once();
    }

    v34 = qword_27DEE57D0;
    v45 = sub_238029168;
    v46 = 0;
    aBlock = MEMORY[0x277D85DD0];
    v42 = 1107296256;
    v43 = sub_2380291A0;
    v44 = &block_descriptor_2;
    v35 = _Block_copy(&aBlock);

    dispatch_sync(v34, v35);
    _Block_release(v35);
    if (swift_isEscapingClosureAtFileLocation())
    {
      __break(1u);
    }

    else if (qword_280C35398 == -1)
    {
      goto LABEL_20;
    }

    swift_once();
LABEL_20:
    v36 = sub_238031DB4();
    __swift_project_value_buffer(v36, qword_280C36C68);
    v27 = sub_238031D94();
    v37 = sub_238032114();
    if (os_log_type_enabled(v27, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&dword_237FA1000, v27, v37, "Deleted test Biome directory", v38, 2u);
      MEMORY[0x2383E5E30](v38, -1, -1);
    }

    goto LABEL_13;
  }

  if ((v18 & 1) == 0)
  {
    v19 = sub_238031E74();
    aBlock = 0;
    v20 = [v16 createDirectoryAtPath:v19 withIntermediateDirectories:1 attributes:0 error:&aBlock];

    v21 = aBlock;
    if (!v20)
    {
      v39 = v21;

LABEL_25:
      sub_238031864();

      swift_willThrow();
      goto LABEL_26;
    }
  }

  if (qword_27DEE4D70 != -1)
  {
    swift_once();
  }

  v22 = qword_27DEE57D0;
  v23 = swift_allocObject();
  *(v23 + 16) = v13;
  *(v23 + 24) = v15;
  v24 = swift_allocObject();
  *(v24 + 16) = sub_23802E20C;
  *(v24 + 24) = v23;
  v45 = sub_23802E228;
  v46 = v24;
  aBlock = MEMORY[0x277D85DD0];
  v42 = 1107296256;
  v43 = sub_2380291A0;
  v44 = &block_descriptor_34_0;
  v25 = _Block_copy(&aBlock);

  dispatch_sync(v22, v25);
  _Block_release(v25);
  LOBYTE(v25) = swift_isEscapingClosureAtFileLocation();

  if (v25)
  {
    __break(1u);
    goto LABEL_28;
  }

  if (qword_280C35398 != -1)
  {
LABEL_28:
    swift_once();
  }

  v26 = sub_238031DB4();
  __swift_project_value_buffer(v26, qword_280C36C68);
  v27 = sub_238031D94();
  v28 = sub_238032114();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    *v29 = 0;
    _os_log_impl(&dword_237FA1000, v27, v28, "Created test Biome directory", v29, 2u);
    MEMORY[0x2383E5E30](v29, -1, -1);
  }

LABEL_13:

LABEL_26:
}

void sub_23802D0AC()
{
  v1 = sub_238031994();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = &aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &aBlock - v7;
  MEMORY[0x28223BE20](v6);
  v10 = &aBlock - v9;
  if (qword_280C353B8 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v1, qword_280C353C0);
  sub_238031904();
  sub_2380318F4();
  v11 = *(v2 + 8);
  v11(v5, v1);
  sub_2380318F4();
  v11(v8, v1);
  sub_238031954();
  v11(v10, v1);
  v12 = [objc_opt_self() defaultManager];
  v13 = sub_238031E74();

  v14 = [v12 fileExistsAtPath_];

  if (!v14)
  {
    v15 = [BiomeLibrary() ScreenTime];
    swift_unknownObjectRelease();
    v16 = [v15 AppUsage];
    swift_unknownObjectRelease();
    v17 = [v16 pruner];

    v18 = sub_238031E74();
    v50 = sub_2380203CC;
    v51 = 0;
    aBlock = MEMORY[0x277D85DD0];
    v47 = 1107296256;
    v48 = sub_23802E424;
    v49 = &block_descriptor_37_1;
    v19 = _Block_copy(&aBlock);

    [v17 deleteWithPolicy:v18 eventsPassingTest:v19];

    _Block_release(v19);
    if (swift_isEscapingClosureAtFileLocation())
    {
      __break(1u);
    }

    else
    {
      v20 = [BiomeLibrary() App];
      swift_unknownObjectRelease();
      v21 = [v20 MediaUsage];
      swift_unknownObjectRelease();
      v22 = [v21 pruner];

      v23 = sub_238031E74();
      v50 = sub_2380203CC;
      v51 = 0;
      aBlock = MEMORY[0x277D85DD0];
      v47 = 1107296256;
      v48 = sub_23802E424;
      v49 = &block_descriptor_40;
      v24 = _Block_copy(&aBlock);

      [v22 deleteWithPolicy:v23 eventsPassingTest:v24];

      _Block_release(v24);
      if ((swift_isEscapingClosureAtFileLocation() & 1) == 0)
      {
        v25 = [BiomeLibrary() App];
        swift_unknownObjectRelease();
        v26 = [v25 WebUsage];
        swift_unknownObjectRelease();
        v27 = [v26 pruner];

        v28 = sub_238031E74();
        v50 = sub_2380203CC;
        v51 = 0;
        aBlock = MEMORY[0x277D85DD0];
        v47 = 1107296256;
        v48 = sub_23802E424;
        v49 = &block_descriptor_43_1;
        v29 = _Block_copy(&aBlock);

        [v27 deleteWithPolicy:v28 eventsPassingTest:v29];

        _Block_release(v29);
        if ((swift_isEscapingClosureAtFileLocation() & 1) == 0)
        {
          v30 = [BiomeLibrary() Device];
          swift_unknownObjectRelease();
          v31 = [v30 Display];
          swift_unknownObjectRelease();
          v32 = [v31 Backlight];
          swift_unknownObjectRelease();
          v33 = [v32 pruner];

          v34 = sub_238031E74();
          v50 = sub_2380203CC;
          v51 = 0;
          aBlock = MEMORY[0x277D85DD0];
          v47 = 1107296256;
          v48 = sub_23802E424;
          v49 = &block_descriptor_46_1;
          v35 = _Block_copy(&aBlock);

          [v33 deleteWithPolicy:v34 eventsPassingTest:v35];

          _Block_release(v35);
          if ((swift_isEscapingClosureAtFileLocation() & 1) == 0)
          {
            v36 = [BiomeLibrary() Media];
            swift_unknownObjectRelease();
            v37 = [v36 NowPlaying];
            swift_unknownObjectRelease();
            v38 = [v37 pruner];

            v39 = sub_238031E74();
            v50 = sub_2380203CC;
            v51 = 0;
            aBlock = MEMORY[0x277D85DD0];
            v47 = 1107296256;
            v48 = sub_23802E424;
            v49 = &block_descriptor_49;
            v40 = _Block_copy(&aBlock);

            [v38 deleteWithPolicy:v39 eventsPassingTest:v40];

            _Block_release(v40);
            if ((swift_isEscapingClosureAtFileLocation() & 1) == 0)
            {
              v41 = [BiomeLibrary() Notification];
              swift_unknownObjectRelease();
              v42 = [v41 Usage];
              swift_unknownObjectRelease();
              v43 = [v42 pruner];

              v44 = sub_238031E74();
              v50 = sub_2380203CC;
              v51 = 0;
              aBlock = MEMORY[0x277D85DD0];
              v47 = 1107296256;
              v48 = sub_23802E424;
              v49 = &block_descriptor_52_0;
              v45 = _Block_copy(&aBlock);

              [v43 deleteWithPolicy:v44 eventsPassingTest:v45];

              _Block_release(v45);
              if ((swift_isEscapingClosureAtFileLocation() & 1) == 0)
              {
                return;
              }

LABEL_18:
              __break(1u);
              return;
            }

LABEL_17:
            __break(1u);
            goto LABEL_18;
          }

LABEL_16:
          __break(1u);
          goto LABEL_17;
        }

LABEL_15:
        __break(1u);
        goto LABEL_16;
      }
    }

    __break(1u);
    goto LABEL_15;
  }

  sub_23802C9BC(0);
  if (!v0)
  {
    sub_23802C9BC(1);
  }
}

id sub_23802DA78()
{
  result = [objc_opt_self() keyPathForBacklightOnStatus];
  if (!result)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v1 = result;
  result = [objc_opt_self() userContext];
  if (result)
  {
    v2 = result;
    sub_237FFCE24(0, &qword_27DEE5840, 0x277CCABB0);
    v3 = sub_238032164();
    [v2 setObject:v3 forContextualKeyPath:v1];

    v4 = sub_238025E0C();
    v5 = v4;
    v25 = v1;
    if (v4 >> 62)
    {
LABEL_18:
      v6 = sub_238032374();
      if (v6)
      {
LABEL_5:
        v7 = 0;
        v28 = v5 & 0xFFFFFFFFFFFFFF8;
        v29 = v5 & 0xC000000000000001;
        v26 = v6;
        v27 = v5;
        while (1)
        {
          if (v29)
          {
            v8 = MEMORY[0x2383E5440](v7, v5);
            v9 = v7 + 1;
            if (__OFADD__(v7, 1))
            {
              goto LABEL_16;
            }
          }

          else
          {
            if (v7 >= *(v28 + 16))
            {
              goto LABEL_17;
            }

            v8 = *(v5 + 8 * v7 + 32);
            v9 = v7 + 1;
            if (__OFADD__(v7, 1))
            {
LABEL_16:
              __break(1u);
LABEL_17:
              __break(1u);
              goto LABEL_18;
            }
          }

          v30 = v8;
          v37 = v9;
          if (qword_280C34B48 != -1)
          {
            swift_once();
          }

          v10 = qword_280C36C40;
          v11 = *algn_280C36C48;
          v12 = *(*algn_280C36C48 + 8);
          v13 = sub_2380321B4();
          v14 = *(v13 - 8);
          MEMORY[0x28223BE20](v13);
          v16 = &v24 - v15;
          v12(v10, v11);
          v17 = *(v10 - 8);
          if ((*(v17 + 48))(v16, 1, v10) == 1)
          {
            break;
          }

          v32 = v10;
          v33 = v11;
          boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v31);
          (*(v17 + 32))(boxed_opaque_existential_1, v16, v10);
          sub_237FB0034(&v31, v34);
          v19 = v35;
          v20 = v36;
          __swift_project_boxed_opaque_existential_1(v34, v35);
          v21 = *(v11 + 16);
          v22 = v30;
          v23 = v30;
          v21(v22, 0, v19, v20);

          __swift_destroy_boxed_opaque_existential_1Tm(v34);
          ++v7;
          v5 = v27;
          if (v37 == v26)
          {
            goto LABEL_19;
          }
        }

        result = (*(v14 + 8))(v16, v13);
        __break(1u);
        goto LABEL_21;
      }
    }

    else
    {
      v6 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v6)
      {
        goto LABEL_5;
      }
    }

LABEL_19:
  }

LABEL_22:
  __break(1u);
  return result;
}

uint64_t sub_23802DE24(uint64_t a1)
{
  result = sub_238031654();
  if (v2 <= 0x3F)
  {
    result = sub_238031B94();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_23802DEE0(uint64_t a1)
{
  sub_238031994();
  if (v1 <= 0x3F)
  {
    sub_238031654();
    if (v2 <= 0x3F)
    {
      sub_238031B94();
      if (v3 <= 0x3F)
      {
        sub_238018888(319, &qword_280C35380, MEMORY[0x277D837D0]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_23802DFD4(uint64_t a1)
{
  sub_238018888(319, &qword_27DEE5808, MEMORY[0x277D839F8]);
  if (v1 <= 0x3F)
  {
    sub_238018888(319, &qword_280C35380, MEMORY[0x277D837D0]);
    if (v2 <= 0x3F)
    {
      sub_238031A64();
      if (v3 <= 0x3F)
      {
        sub_238031B94();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_23802E0D8(uint64_t a1)
{
  sub_238031A64();
  if (v1 <= 0x3F)
  {
    sub_238031B94();
    if (v2 <= 0x3F)
    {
      sub_238018888(319, &qword_280C35380, MEMORY[0x277D837D0]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_23802E19C()
{
  result = qword_27DEE5828;
  if (!qword_27DEE5828)
  {
    sub_238032124();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEE5828);
  }

  return result;
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_23802E250()
{
  result = qword_27DEE5858;
  if (!qword_27DEE5858)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEE5850, &unk_238036600);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEE5858);
  }

  return result;
}

uint64_t sub_23802E2CC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE5258, &qword_2380346F8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23802E334(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_23802E39C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void *sub_23802E448(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_238032374();
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

  v17 = MEMORY[0x277D84F90];
  result = sub_23800F154(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v17;
    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = 0;
      do
      {
        v6 = MEMORY[0x2383E5440](v5, a1);
        v17 = v3;
        v8 = *(v3 + 16);
        v7 = *(v3 + 24);
        if (v8 >= v7 >> 1)
        {
          sub_23800F154((v7 > 1), v8 + 1, 1);
          v3 = v17;
        }

        ++v5;
        v15 = sub_237FFCE24(0, &qword_280C350B8, 0x277D08268);
        v16 = &off_284AE4B10;
        *&v14 = v6;
        *(v3 + 16) = v8 + 1;
        sub_237FB0034(&v14, v3 + 40 * v8 + 32);
      }

      while (v2 != v5);
    }

    else
    {
      v9 = (a1 + 32);
      do
      {
        v10 = *v9;
        v17 = v3;
        v12 = *(v3 + 16);
        v11 = *(v3 + 24);
        v13 = v10;
        if (v12 >= v11 >> 1)
        {
          sub_23800F154((v11 > 1), v12 + 1, 1);
          v3 = v17;
        }

        v15 = sub_237FFCE24(0, &qword_280C350B8, 0x277D08268);
        v16 = &off_284AE4B10;
        *&v14 = v13;
        *(v3 + 16) = v12 + 1;
        sub_237FB0034(&v14, v3 + 40 * v12 + 32);
        ++v9;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

char *sub_23802E650(unint64_t a1, unint64_t *a2, void *a3)
{
  if (a1 >> 62)
  {
    v6 = sub_238032374();
  }

  else
  {
    v6 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v7 = MEMORY[0x277D84F90];
  if (!v6)
  {
    return v7;
  }

  v17 = MEMORY[0x277D84F90];
  result = sub_23800F1D4(0, v6 & ~(v6 >> 63), 0);
  if ((v6 & 0x8000000000000000) == 0)
  {
    v7 = v17;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v6; ++i)
      {
        MEMORY[0x2383E5440](i, a1);
        sub_237FFCE24(0, a2, a3);
        swift_dynamicCast();
        v17 = v7;
        v11 = *(v7 + 16);
        v10 = *(v7 + 24);
        if (v11 >= v10 >> 1)
        {
          sub_23800F1D4((v10 > 1), v11 + 1, 1);
          v7 = v17;
        }

        *(v7 + 16) = v11 + 1;
        sub_237FC156C(v16, (v7 + 32 * v11 + 32));
      }
    }

    else
    {
      v12 = (a1 + 32);
      sub_237FFCE24(0, a2, a3);
      do
      {
        v13 = *v12;
        swift_dynamicCast();
        v17 = v7;
        v15 = *(v7 + 16);
        v14 = *(v7 + 24);
        if (v15 >= v14 >> 1)
        {
          sub_23800F1D4((v14 > 1), v15 + 1, 1);
          v7 = v17;
        }

        *(v7 + 16) = v15 + 1;
        sub_237FC156C(v16, (v7 + 32 * v15 + 32));
        ++v12;
        --v6;
      }

      while (v6);
    }

    return v7;
  }

  __break(1u);
  return result;
}

uint64_t sub_23802E83C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v11 = MEMORY[0x277D84F90];
    sub_23800F1D4(0, v1, 0);
    v2 = v11;
    v4 = (a1 + 32);
    do
    {
      v5 = *v4++;
      v6 = v5;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE5898, &qword_2380366F8);
      swift_dynamicCast();
      v11 = v2;
      v8 = *(v2 + 16);
      v7 = *(v2 + 24);
      if (v8 >= v7 >> 1)
      {
        sub_23800F1D4((v7 > 1), v8 + 1, 1);
        v2 = v11;
      }

      *(v2 + 16) = v8 + 1;
      sub_237FC156C(&v10, (v2 + 32 * v8 + 32));
      --v1;
    }

    while (v1);
  }

  return v2;
}

id sub_23802E94C@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v9[1] = *MEMORY[0x277D85DE8];
  v9[0] = 0;
  v4 = [v2 fetchFamilyCircleWithError_];
  v5 = v9[0];
  if (v4)
  {
    v6 = v4;
    a1[3] = sub_237FFCE24(0, &qword_280C350C0, 0x277D08248);
    a1[4] = &off_284AE4B28;
    *a1 = v6;
    return v5;
  }

  else
  {
    v8 = v9[0];
    sub_238031864();

    return swift_willThrow();
  }
}

void *sub_23802EA50()
{
  v1 = [*v0 members];
  sub_237FFCE24(0, &qword_280C350B8, 0x277D08268);
  v2 = sub_238031F94();

  v3 = sub_23802E448(v2);

  return v3;
}

uint64_t sub_23802EBB4(uint64_t a1, uint64_t a2, unsigned __int8 *a3, char a4)
{
  v6 = swift_beginAccess();
  v9 = *a3;
  if (v9 == 2)
  {
    v11[3] = &type metadata for Feature.FeatureFlags;
    v11[4] = sub_237FBEFF4(v6, v7, v8);
    LOBYTE(v11[0]) = a4;
    LOBYTE(v9) = sub_238031BA4();
    __swift_destroy_boxed_opaque_existential_1Tm(v11);
  }

  return v9 & 1;
}

uint64_t sub_23802EC40(unsigned __int8 *a1, char a2)
{
  v4 = swift_beginAccess();
  v7 = *a1;
  if (v7 == 2)
  {
    v9[3] = &type metadata for Feature.FeatureFlags;
    v9[4] = sub_237FBEFF4(v4, v5, v6);
    LOBYTE(v9[0]) = a2;
    LOBYTE(v7) = sub_238031BA4();
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
  }

  return v7 & 1;
}

const char *sub_23802ECCC()
{
  v1 = "DeviceActivityBiome";
  if (*v0 != 1)
  {
    v1 = "DeviceActivityUI";
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return "DeviceActivity";
  }
}

id Feature.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id Feature.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for Feature();
  return objc_msgSendSuper2(&v2, sel_init);
}

id Feature.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for Feature();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_23802F0D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27DEE58A8;
  if (!qword_27DEE58A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEE58A8);
  }

  return result;
}

id sub_23802F12C@<X0>(void *a1@<X8>)
{
  result = [swift_getObjCClassFromMetadata() userKnowledgeStore];
  *a1 = result;
  return result;
}

id sub_23802F1A8(uint64_t a1)
{
  v6[1] = *MEMORY[0x277D85DE8];
  v6[0] = 0;
  v2 = [v1 executeQuery:a1 error:v6];
  if (v2)
  {
    v3 = v6[0];
  }

  else
  {
    v4 = v6[0];
    sub_238031864();

    swift_willThrow();
  }

  return v2;
}

id sub_23802F288(uint64_t a1)
{
  v6[1] = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v2 = sub_238031F84();
  }

  else
  {
    v2 = 0;
  }

  v6[0] = 0;
  v3 = [v1 saveObjects:v2 error:v6];

  if (v3)
  {
    return v6[0];
  }

  v5 = v6[0];
  sub_238031864();

  return swift_willThrow();
}

id sub_23802F420()
{
  v3[1] = *MEMORY[0x277D85DE8];
  v3[0] = 0;
  if ([v0 synchronizeWithError_])
  {
    return v3[0];
  }

  v2 = v3[0];
  sub_238031864();

  return swift_willThrow();
}

uint64_t sub_23802F57C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_238031DB4();
  __swift_allocate_value_buffer(v5, a2);
  __swift_project_value_buffer(v5, a2);
  return sub_238031DA4();
}

uint64_t sub_23802F5F4(double a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *v4;
  v9 = sub_2380315D4();
  v12[4] = a3;
  v12[5] = a4;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 1107296256;
  v12[2] = sub_23802F6D0;
  v12[3] = &block_descriptor_8;
  v10 = _Block_copy(v12);

  [v8 queryUsageDuringInterval:v9 partitionInterval:v10 completionHandler:a1];
  _Block_release(v10);
}

uint64_t sub_23802F6D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v8 = a2;
  v9 = *(a1 + 32);
  if (a2)
  {
    sub_237FFCE24(0, &qword_27DEE58B8, 0x277D77B50);
    v8 = sub_238031F94();
  }

  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE54D0, &qword_238035880);
    a3 = sub_238031DF4();
  }

  if (a4)
  {
    sub_237FFCE24(0, &qword_27DEE58B8, 0x277D77B50);
    a4 = sub_238031F94();
  }

  v10 = a5;
  v9(v8, a3, a4, a5);
}

uint64_t sub_23802F800(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, double a8)
{
  v17 = swift_task_alloc();
  *(v8 + 16) = v17;
  *v17 = v8;
  v17[1] = sub_23801BC34;
  v18.n128_f64[0] = a8;

  return (sub_23802FBEC)(a1, a2, a3, a4, a5, a6, a7, v18);
}

uint64_t sub_23802F900(uint64_t a1)
{
  v1 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));

  return MEMORY[0x282200948](v1);
}

uint64_t sub_23802F974(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, uint64_t a10)
{
  v22 = (*(a10 + 24) + **(a10 + 24));
  v19 = swift_task_alloc();
  *(v10 + 16) = v19;
  *v19 = v10;
  v19[1] = sub_23801BC34;
  v20.n128_f64[0] = a9;

  return v22(a1, a2, a3, a4, a5, a6, a7, a8, v20, a10);
}

id sub_23802FB14()
{
  v6[1] = *MEMORY[0x277D85DE8];
  v6[0] = 0;
  v0 = [swift_getObjCClassFromMetadata() getLocalDeviceIdentifierAndReturnError_];
  v1 = v6[0];
  if (v0)
  {
    v2 = v0;
    v3 = sub_238031EA4();
    v4 = v1;
  }

  else
  {
    v3 = v6[0];
    sub_238031864();

    swift_willThrow();
  }

  return v3;
}

uint64_t sub_23802FBEC(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE51E0, &qword_2380365F0);
  v12 = swift_task_alloc();
  v8[24] = v12;
  v23 = sub_2380315D4();
  v8[25] = v23;
  sub_238018114(a3, v12);
  v13 = sub_238031A64();
  v14 = *(v13 - 8);
  v15 = 0;
  if ((*(v14 + 48))(v12, 1, v13) != 1)
  {
    v15 = sub_2380319F4();
    (*(v14 + 8))(v12, v13);
  }

  v8[26] = v15;
  v16 = sub_238031F84();
  v8[27] = v16;
  sub_237FFCE24(0, &qword_280C34A28, 0x277CF9658);
  v17 = sub_238031DE4();
  v8[28] = v17;
  v18 = sub_238031DE4();
  v8[29] = v18;
  v8[22] = a7;
  v8[23] = a8;
  v8[18] = MEMORY[0x277D85DD0];
  v8[19] = 1107296256;
  v8[20] = sub_238023A54;
  v8[21] = &block_descriptor_3;
  v19 = _Block_copy(v8 + 18);
  v8[30] = v19;
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v8[2] = v8;
  v8[3] = sub_23802FF24;
  v21 = swift_continuation_init();
  v8[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE58B0, &unk_238036890);
  v8[14] = v21;
  v8[10] = MEMORY[0x277D85DD0];
  v8[11] = 1107296256;
  v8[12] = sub_23802F900;
  v8[13] = &block_descriptor_5;

  [ObjCClassFromMetadata queryUsageDuringInterval:v23 partitionInterval:v15 adjustedStartDate:v16 eventStreams:v17 categoryByBundleIdentifier:v18 categoryByWebDomain:v19 usageReportHandler:a1 completionHandler:v8 + 10];

  return MEMORY[0x282200938](v8 + 2);
}

uint64_t sub_23802FF24()
{
  v1 = *(*v0 + 232);
  v2 = *(*v0 + 224);
  v3 = *(*v0 + 216);
  v4 = *(*v0 + 208);
  v5 = *(*v0 + 200);
  v8 = *v0;
  _Block_release(*(*v0 + 240));

  v6 = *(v8 + 8);

  return v6();
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

{
  return sub_237FD4FB0(a2 + 32, a1 + 32);
}

void *sub_238030118(unint64_t a1, uint64_t a2)
{
  v3 = v2;
  v37 = a2;
  v36 = sub_238031654();
  v5 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v34 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for _DeviceActivityData.CategoryActivity(0);
  v35 = *(v7 - 8);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >> 62)
  {
    goto LABEL_17;
  }

  for (i = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = v27)
  {
    v12 = MEMORY[0x277D84F90];
    if (!i)
    {
      return v12;
    }

    v13 = v8;
    v38 = MEMORY[0x277D84F90];
    result = sub_23800F258(0, i & ~(i >> 63), 0);
    if (i < 0)
    {
      break;
    }

    v28 = v3;
    v12 = v38;
    v33 = v13 & 0xC000000000000001;
    v15 = type metadata accessor for _DeviceActivityData.ActivitySegment(0);
    v16 = v13;
    v3 = 0;
    v17 = *(v15 + 24);
    v29 = v13 & 0xFFFFFFFFFFFFFF8;
    v30 = (v5 + 2);
    v31 = v17;
    ++v5;
    v32 = v13;
    while (1)
    {
      v18 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        break;
      }

      if (v33)
      {
        v19 = MEMORY[0x2383E5440](v3, v16);
      }

      else
      {
        if (v3 >= *(v29 + 16))
        {
          goto LABEL_16;
        }

        v19 = *(v16 + 8 * v3 + 32);
      }

      v20 = v19;
      v21 = v36;
      v22 = v34;
      (*v30)(v34, v37 + v31, v36);
      sub_238030DFC(v22, v10);
      (*v5)(v22, v21);

      v38 = v12;
      v23 = v10;
      v25 = *(v12 + 16);
      v24 = *(v12 + 24);
      if (v25 >= v24 >> 1)
      {
        sub_23800F258((v24 > 1), v25 + 1, 1);
        v12 = v38;
      }

      *(v12 + 16) = v25 + 1;
      sub_238031508(v23, v12 + ((*(v35 + 80) + 32) & ~*(v35 + 80)) + *(v35 + 72) * v25, type metadata accessor for _DeviceActivityData.CategoryActivity);
      ++v3;
      v16 = v32;
      v10 = v23;
      if (v18 == i)
      {
        return v12;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    v26 = v8;
    v27 = sub_238032374();
    v8 = v26;
  }

  __break(1u);
  return result;
}

uint64_t sub_238030420@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t, uint64_t, uint64_t, uint64_t)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v89 = a1;
  v87 = a3;
  v88 = a4;
  v85 = a2;
  v95 = a5;
  v5 = sub_238031654();
  v96 = *(v5 - 8);
  v6 = MEMORY[0x28223BE20](v5);
  v93 = &v82 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v94 = &v82 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE51E0, &qword_2380365F0);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v92 = &v82 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v86 = (&v82 - v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE50C8, &qword_2380357C0);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v91 = &v82 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v82 - v17;
  MEMORY[0x28223BE20](v16);
  v20 = &v82 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE54A8, &qword_2380359E0);
  MEMORY[0x28223BE20](v21 - 8);
  v23 = &v82 - v22;
  v24 = type metadata accessor for _DeviceActivityData.ActivitySegment(0);
  v25 = *(v24 - 1);
  v26 = MEMORY[0x28223BE20](v24);
  v28 = (&v82 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v26);
  v30 = &v82 - v29;
  sub_237FA90E4(v89, v23, &qword_27DEE54A8, &qword_2380359E0);
  if ((*(v25 + 48))(v23, 1, v24) == 1)
  {
    v31 = v90;
    sub_237FA5750(v23, &qword_27DEE54A8, &qword_2380359E0);
    sub_237FA90E4(v85, v18, &qword_27DEE50C8, &qword_2380357C0);
    v32 = v96;
    v33 = *(v96 + 48);
    if (v33(v18, 1, v5) == 1)
    {
      v34 = [v31 interval];
      v35 = v94;
      sub_2380315F4();

      v36 = v33(v18, 1, v5);
      v37 = v92;
      if (v36 != 1)
      {
        sub_237FA5750(v18, &qword_27DEE50C8, &qword_2380357C0);
      }
    }

    else
    {
      v35 = v94;
      (*(v32 + 32))(v94, v18, v5);
      v37 = v92;
    }

    v47 = *(v32 + 16);
    v89 = v32 + 16;
    v86 = v47;
    v47(v93, v35, v5);
    [v31 screenTime];
    v49 = v48;
    sub_238031644();
    if (v50 < v49)
    {
      v49 = v50;
    }

    v51 = [v31 longestSession];
    if (v51)
    {
      v52 = v91;
      v53 = v51;
      sub_2380315F4();

      v54 = 0;
    }

    else
    {
      v54 = 1;
      v52 = v91;
    }

    v59 = 1;
    v85 = *(v32 + 56);
    v85(v52, v54, 1, v5);
    v60 = [v31 firstPickup];
    v83 = v5;
    if (v60)
    {
      v61 = v60;
      sub_238031A44();

      v59 = 0;
    }

    v62 = sub_238031A64();
    v82 = *(*(v62 - 8) + 56);
    v82(v37, v59, 1, v62);
    v84 = [v31 pickupsWithoutApplicationUsage];
    v63 = [v31 categoryUsage];
    sub_237FFCE24(0, &unk_280C349F8, 0x277D77B10);
    v64 = sub_238031F94();

    MEMORY[0x28223BE20](v65);
    *(&v82 - 2) = v35;
    sub_237FE72F0(sub_238031120, (&v82 - 4), v64);
    v67 = v66;

    v90 = xmmword_238033ED0;
    *v28 = xmmword_238033ED0;
    v68 = v24[7];
    v69 = v83;
    v85(v28 + v68, 1, 1, v83);
    v70 = v24[8];
    v82(v28 + v70, 1, 1, v62);
    sub_237FA38D0(*v28, v28[1]);
    *v28 = v90;
    v71 = v88;
    v28[2] = v87;
    v28[3] = v71;
    v72 = v93;
    v86(v28 + v24[6], v93, v69);
    *(v28 + v24[9]) = v49;

    v73 = v91;
    sub_237FD3ACC(v91, v28 + v68, &qword_27DEE50C8, &qword_2380357C0);
    v74 = v92;
    sub_237FD3ACC(v92, v28 + v70, &qword_27DEE51E0, &qword_2380365F0);
    *(v28 + v24[10]) = v84;
    v97[0] = v67;

    sub_237FCBD54(v97);

    sub_237FA5750(v74, &qword_27DEE51E0, &qword_2380365F0);
    sub_237FA5750(v73, &qword_27DEE50C8, &qword_2380357C0);
    v75 = *(v96 + 8);
    v75(v72, v69);
    *(v28 + v24[11]) = v97[0];
    sub_238031508(v28, v95, type metadata accessor for _DeviceActivityData.ActivitySegment);
    return (v75)(v94, v69);
  }

  else
  {
    v38 = v96;
    sub_238031508(v23, v30, type metadata accessor for _DeviceActivityData.ActivitySegment);
    v39 = v90;
    [v90 screenTime];
    v41 = v40;
    sub_238031644();
    if (v42 >= v41)
    {
      v42 = v41;
    }

    *&v30[v24[9]] = v42;
    v43 = [v39 longestSession];
    v44 = v39;
    if (v43)
    {
      v45 = v43;
      sub_2380315F4();

      v46 = 0;
    }

    else
    {
      v46 = 1;
    }

    v55 = 1;
    (*(v38 + 56))(v20, v46, 1, v5);
    sub_237FA39BC(v20, &v30[v24[7]], &qword_27DEE50C8, &qword_2380357C0);
    v56 = [v44 firstPickup];
    v57 = v86;
    if (v56)
    {
      v58 = v56;
      sub_238031A44();

      v55 = 0;
    }

    v77 = sub_238031A64();
    (*(*(v77 - 8) + 56))(v57, v55, 1, v77);
    sub_237FA39BC(v57, &v30[v24[8]], &qword_27DEE51E0, &qword_2380365F0);
    *&v30[v24[10]] = [v44 pickupsWithoutApplicationUsage];
    v78 = [v44 categoryUsage];
    sub_237FFCE24(0, &unk_280C349F8, 0x277D77B10);
    v79 = sub_238031F94();

    v80 = sub_238030118(v79, v30);

    v81 = v24[11];

    *&v30[v81] = v80;
    return sub_238031508(v30, v95, type metadata accessor for _DeviceActivityData.ActivitySegment);
  }
}

uint64_t sub_238030DFC@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE51D0, &qword_238034400);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v28 - v7;
  v9 = [v3 categoryIdentifier];
  v10 = sub_238031EA4();
  v30 = v11;
  v31 = v10;

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE4FF0, &unk_238033980);
  v29 = *(*(v12 - 8) + 56);
  v29(v8, 1, 1, v12);
  [v3 totalUsageTime];
  v14 = v13;
  sub_238031644();
  if (v15 < v14)
  {
    v14 = v15;
  }

  v16 = [v3 applicationUsage];
  sub_237FFCE24(0, &qword_27DEE58C0, 0x277D77B08);
  v17 = sub_238031F94();

  v35 = a1;
  sub_237FE7344(sub_238031570, v34, v17);
  v19 = v18;

  v20 = [v3 webUsage];
  sub_237FFCE24(0, &qword_27DEE58C8, 0x277D77B70);
  v21 = sub_238031F94();

  v33 = a1;
  sub_237FE75D0(sub_2380315A4, v32, v21);
  v23 = v22;

  v24 = type metadata accessor for _DeviceActivityData.CategoryActivity(0);
  v25 = v24[5];
  v29(&a2[v25], 1, 1, v12);
  v26 = v30;
  *a2 = v31;
  *(a2 + 1) = v26;
  sub_237FD3ACC(v8, &a2[v25], &qword_27DEE51D0, &qword_238034400);
  *&a2[v24[6]] = v14;
  v36[0] = v19;

  sub_237FAA8D4(v36);

  *&a2[v24[7]] = v36[0];
  v36[0] = v23;

  sub_237FAAF84(v36);

  result = sub_237FA5750(v8, &qword_27DEE51D0, &qword_238034400);
  *&a2[v24[8]] = v36[0];
  return result;
}

uint64_t sub_238031154@<X0>(char *a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE51C0, &unk_238034790);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v23 - v5;
  v7 = [v1 canonicalBundleIdentifier];
  v8 = sub_238031EA4();
  v23 = v9;
  v24 = v8;

  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE4FF8, &unk_2380343E0);
  v11 = *(*(v10 - 8) + 56);
  v11(v6, 1, 1, v10);
  [v1 totalUsageTime];
  v13 = v12;
  sub_238031644();
  if (v14 < v13)
  {
    v13 = v14;
  }

  v15 = [v1 totalPickups];
  v16 = [v2 totalUserNotifications];
  v17 = [v2 applicationUsageTrusted];
  v18 = type metadata accessor for _DeviceActivityData.ApplicationActivity(0);
  v19 = v18[5];
  v11(&a1[v19], 1, 1, v10);
  v20 = &a1[v18[6]];
  v21 = v23;
  *a1 = v24;
  *(a1 + 1) = v21;
  result = sub_237FA39BC(v6, &a1[v19], &qword_27DEE51C0, &unk_238034790);
  *v20 = 0;
  *(v20 + 1) = 0;
  *&a1[v18[7]] = v13;
  *&a1[v18[8]] = v15;
  *&a1[v18[9]] = v16;
  a1[v18[10]] = v17;
  return result;
}

uint64_t sub_238031348@<X0>(void **a1@<X0>, char *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE51B0, &qword_2380343D0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v20 - v5;
  v7 = *a1;
  v8 = [v7 domainIdentifier];
  v20 = sub_238031EA4();
  v10 = v9;

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEE4FE8, &unk_238035410);
  v12 = *(*(v11 - 8) + 56);
  v12(v6, 1, 1, v11);
  [v7 totalUsageTime];
  v14 = v13;
  sub_238031644();
  if (v15 < v14)
  {
    v14 = v15;
  }

  v16 = [v7 webUsageTrusted];
  v17 = type metadata accessor for _DeviceActivityData.WebDomainActivity(0);
  v18 = v17[5];
  v12(&a2[v18], 1, 1, v11);
  *a2 = v20;
  *(a2 + 1) = v10;
  result = sub_237FA39BC(v6, &a2[v18], &qword_27DEE51B0, &qword_2380343D0);
  *&a2[v17[6]] = v14;
  a2[v17[7]] = v16;
  return result;
}

uint64_t sub_238031508(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}