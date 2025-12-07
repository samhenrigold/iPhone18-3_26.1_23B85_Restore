uint64_t sub_25F1BB8C0(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_25F305E6C() + 1) & ~v5;
    do
    {
      v9 = *(*(a2 + 48) + 8 * v6);
      sub_25F30671C();
      MEMORY[0x25F8D88E0](v9);
      result = sub_25F30676C();
      v10 = result & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 8 * v3);
        v13 = (v11 + 8 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 8 * v3);
        v16 = (v14 + 8 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_25F1BBA54(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_25F305E6C() + 1) & ~v5;
    do
    {
      sub_25F30671C();

      sub_25F304F0C();
      v10 = sub_25F30676C();

      v11 = v10 & v7;
      if (v3 >= v8)
      {
        if (v11 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v11 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v11)
      {
LABEL_10:
        v12 = *(a2 + 48);
        v13 = (v12 + 16 * v3);
        v14 = (v12 + 16 * v6);
        if (v3 != v6 || v13 >= v14 + 1)
        {
          *v13 = *v14;
        }

        v15 = *(a2 + 56);
        v16 = (v15 + 32 * v3);
        v17 = (v15 + 32 * v6);
        if (v3 != v6 || v16 >= v17 + 2)
        {
          v9 = v17[1];
          *v16 = *v17;
          v16[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_25F1BBC04(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_25F305E6C() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 48);
      v10 = (v9 + 4 * v6);
      result = MEMORY[0x25F8D88B0](*(a2 + 40), *v10, 4);
      v11 = result & v7;
      if (v3 >= v8)
      {
        if (v11 >= v8 && v3 >= v11)
        {
LABEL_15:
          v14 = (v9 + 4 * v3);
          if (v3 != v6 || v14 >= v10 + 1)
          {
            *v14 = *v10;
          }

          v15 = *(a2 + 56);
          v16 = (v15 + 8 * v3);
          v17 = (v15 + 8 * v6);
          if (v3 != v6 || v16 >= v17 + 1)
          {
            *v16 = *v17;
            v3 = v6;
          }
        }
      }

      else if (v11 >= v8 || v3 >= v11)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_25F1BBD78(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_25F30671C();
  sub_25F304F0C();
  v8 = sub_25F30676C();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_25F30659C() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v16 = (*(v7 + 48) + 16 * v10);
    v17 = v16[1];
    *a1 = *v16;
    a1[1] = v17;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    sub_25F1BCAF4(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_25F1BBEC8(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_25F30647C();
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
        v5 = sub_25F3052EC();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_25F1BC090(v7, v8, a1, v4);
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
    return sub_25F1BBFC0(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_25F1BBFC0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
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
      if (v13 || (result = sub_25F30659C(), (result & 1) == 0))
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

uint64_t sub_25F1BC090(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
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
      result = sub_25F2D89A0(v8);
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
        sub_25F1BC66C((*a3 + 16 * *v87), (*a3 + 16 * *v89), (*a3 + 16 * v90), v9);
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
        result = sub_25F30659C();
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
            result = sub_25F30659C();
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
      result = sub_25F2D89B4(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v40 = *(v8 + 2);
    v39 = *(v8 + 3);
    v41 = v40 + 1;
    if (v40 >= v39 >> 1)
    {
      result = sub_25F2D89B4((v39 > 1), v40 + 1, 1, v8);
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
        sub_25F1BC66C((*a3 + 16 * v82), (*a3 + 16 * *&v8[16 * v44 + 32]), (*a3 + 16 * v83), v43);
        if (v5)
        {
        }

        if (v83 < v82)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_25F2D89A0(v8);
        }

        if (v9 >= *(v8 + 2))
        {
          goto LABEL_118;
        }

        v84 = &v8[16 * v9];
        *(v84 + 4) = v82;
        *(v84 + 5) = v83;
        result = sub_25F2D8914(v44);
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
    if (v37 || (result = sub_25F30659C(), (result & 1) == 0))
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

uint64_t sub_25F1BC66C(char *__dst, char *__src, char *a3, char *a4)
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
      if (!v16 && (sub_25F30659C() & 1) != 0)
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
      if (!v21 && (sub_25F30659C() & 1) != 0)
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

uint64_t sub_25F1BC894(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD52E60, &unk_25F3084B0);
  result = sub_25F305F2C();
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
      sub_25F30671C();
      sub_25F304F0C();
      result = sub_25F30676C();
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

uint64_t sub_25F1BCAF4(uint64_t result, uint64_t a2, unint64_t a3, char a4)
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
    sub_25F1BC894(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_25F1BCC74();
      goto LABEL_16;
    }

    sub_25F1BCDD0(v8 + 1);
  }

  v10 = *v4;
  sub_25F30671C();
  sub_25F304F0C();
  result = sub_25F30676C();
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

      result = sub_25F30659C();
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
  result = sub_25F30664C();
  __break(1u);
  return result;
}

void *sub_25F1BCC74()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD52E60, &unk_25F3084B0);
  v2 = *v0;
  v3 = sub_25F305F1C();
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

uint64_t sub_25F1BCDD0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD52E60, &unk_25F3084B0);
  result = sub_25F305F2C();
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
      sub_25F30671C();

      sub_25F304F0C();
      result = sub_25F30676C();
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

char *sub_25F1BD008(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_25F1BD248(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_25F1BD028(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_25F1BD354(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_25F1BD048(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_25F1BD458(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_25F1BD068(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_25F1BD58C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_25F1BD088(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_25F1BD6D4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_25F1BD0A8(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_25F1BD808(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_25F1BD0C8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_25F1BDA5C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_25F1BD0E8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_25F1BE07C(a1, a2, a3, *v3, &qword_27FD52DB0, &qword_25F308400, &qword_27FD52DB8, &qword_25F308408);
  *v3 = result;
  return result;
}

void *sub_25F1BD128(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_25F1BDB90(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_25F1BD148(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_25F1BDCD4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_25F1BD168(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_25F1BDE1C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_25F1BD188(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_25F1BDF38(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_25F1BD1A8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_25F1BE07C(a1, a2, a3, *v3, &qword_27FD52DE0, &unk_25F308430, &qword_27FD52DE8, &qword_25F316520);
  *v3 = result;
  return result;
}

void *sub_25F1BD1E8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_25F1BE1B0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_25F1BD208(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_25F1BE42C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_25F1BD228(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_25F1BE538(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_25F1BD248(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD52E50, &qword_25F3084A0);
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

char *sub_25F1BD354(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD52E00, &qword_25F308450);
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
    v10 = MEMORY[0x277D84F90];
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

void *sub_25F1BD458(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD52D48, &unk_25F308200);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD52D50, &qword_25F3085B0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_25F1BD58C(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD52D90, &qword_25F3083D8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD52D98, &unk_25F3083E0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_25F1BD6D4(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD52E40, &qword_25F308490);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD52E48, &qword_25F308498);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_25F1BD808(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD52E20, &unk_25F308470);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
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

void *sub_25F1BD928(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD52E10, &qword_25F308460);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD52E18, &qword_25F308468);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_25F1BDA5C(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD52DA8, &unk_25F3083F0);
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
    v10 = MEMORY[0x277D84F90];
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
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27FD52B48, &qword_25F3084D0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_25F1BDB90(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD52DC0, &qword_25F308410);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD52DC8, &qword_25F308418);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_25F1BDCD4(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD52DF0, &unk_25F308440);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 80);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[10 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 80 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD52DF8, &qword_25F311460);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_25F1BDE1C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD52DA0, &qword_25F316570);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 80);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[80 * v8])
    {
      memmove(v12, v13, 80 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_25F1BDF38(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD52DD0, &qword_25F308420);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD52DD8, &qword_25F308428);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_25F1BE07C(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
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
      v18 = v17 - 1;
    }

    v16[2] = v14;
    v16[3] = 2 * (v18 >> 5);
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[4 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 32 * v14);
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

void *sub_25F1BE1B0(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD52E30, &qword_25F308480);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD52E38, &qword_25F308488);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_25F1BE2F8(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD52D80, &qword_25F3083C8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD52D88, &qword_25F3083D0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_25F1BE42C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD52D78, &qword_25F3083C0);
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

void *sub_25F1BE538(void *result, int64_t a2, char a3, void *a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD52D70, &qword_25F3083B8);
  v10 = *(type metadata accessor for IOPowerSource.Observer(0) - 8);
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
  v15 = *(type metadata accessor for IOPowerSource.Observer(0) - 8);
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

uint64_t sub_25F1BE710(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD52E58, &qword_25F3084A8);
  result = swift_allocObject();
  v10 = result;
  *(result + 16) = a4;
  *(result + 24) = 0;
  if (!a2)
  {
LABEL_11:
    a3 = 0;
    goto LABEL_14;
  }

  if (!a3)
  {
LABEL_14:
    *a1 = v10;
    return a3;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = 1;
    while (1)
    {
      v13 = *(v10 + 16);
      v12 = *(v10 + 24);
      v14 = *(v13 + 16);
      if (v12 == v14)
      {
        a3 = v11 - 1;
        goto LABEL_14;
      }

      if (v12 >= v14)
      {
        break;
      }

      v17 = (v13 + 16 * v12 + 32);
      v16 = *v17;
      v15 = v17[1];
      *(v10 + 24) = v12 + 1;
      *a2 = v16;
      a2[1] = v15;
      if (a3 == v11)
      {

        goto LABEL_14;
      }

      a2 += 2;

      if (__OFADD__(v11++, 1))
      {
        __break(1u);
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_25F1BE7F8(void *result, void *a2, uint64_t a3, uint64_t a4)
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

void *sub_25F1BE950(void *result, void *a2, uint64_t a3, uint64_t a4)
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
      v17 = (v12 << 9) | (8 * __clz(__rbit64(v9)));
      v18 = *(*(a4 + 56) + v17);
      v9 &= v9 - 1;
      *v11 = *(*(a4 + 48) + v17);
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

void *sub_25F1BEAAC(void *result, void *a2, uint64_t a3, uint64_t a4)
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
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = *(*(a4 + 48) + ((v12 << 9) | (8 * v17)));
      *v11 = v18;
      if (v14 == v10)
      {
        v22 = v18;
        goto LABEL_24;
      }

      ++v11;
      v19 = v18;
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
      v21 = v12 + 1;
    }

    else
    {
      v21 = (63 - v7) >> 6;
    }

    v12 = v21 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_25F1BEC00(void *result, void *a2, uint64_t a3, uint64_t a4)
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
      *a2 = *(*(a4 + 48) + ((v9 << 9) | (8 * v14)));
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

void *sub_25F1BED00(void *result, void *a2, uint64_t a3, uint64_t a4)
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
      v17 = (v12 << 9) | (8 * __clz(__rbit64(v9)));
      v18 = *(*(a4 + 56) + v17);
      v9 &= v9 - 1;
      *v11 = *(*(a4 + 48) + v17);
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

void *sub_25F1BEE58(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
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
      v17 = __clz(__rbit64(v9)) | (v12 << 6);
      v18 = *(*(a4 + 56) + 8 * v17);
      v9 &= v9 - 1;
      *v11 = *(*(a4 + 48) + 4 * v17);
      *(v11 + 8) = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 16;

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

uint64_t sub_25F1BEFB0(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_25F30659C() & 1;
  }
}

uint64_t sub_25F1BF018@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = a1[1];
  if (result)
  {
    *a2 = *a1;
    a2[1] = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_25F1BF03C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_25F1BF0A0(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

unint64_t sub_25F1BF0B4()
{
  result = qword_27FD52D60;
  if (!qword_27FD52D60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD52D58, &qword_25F308210);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD52D60);
  }

  return result;
}

unint64_t sub_25F1BF118()
{
  result = qword_27FD52D68;
  if (!qword_27FD52D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD52D68);
  }

  return result;
}

uint64_t sub_25F1BF16C(uint64_t *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_25F30659C() & 1;
  }
}

uint64_t get_enum_tag_for_layout_string_20PreviewsFoundationOS30EnvironmentVariableMergeResultO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_25F1BF1E8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 16))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) < 2)
  {
    LODWORD(v3) = 0;
  }

  if (v3 >= 2)
  {
    return (v3 - 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_25F1BF244(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

void *sub_25F1BF2A0(void *result, unsigned int a2)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    result[1] = 0;
    *result = a2 - 0x7FFFFFFF;
  }

  else if (a2)
  {
    result[1] = a2;
  }

  return result;
}

uint64_t sub_25F1BF308(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_25F1BF350(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AnalyticsFieldBuilder(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for AnalyticsFieldBuilder(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

uint64_t sub_25F1BF47C(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x25F8D77F0](v2, MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_25F1BBD78(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

void sub_25F1BF514(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = a4 >> 1;
  v6 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
    goto LABEL_18;
  }

  v7 = *v4;
  v8 = *(*v4 + 2);
  v9 = v8 + v6;
  if (__OFADD__(v8, v6))
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || v9 > *(v7 + 3) >> 1)
  {
    goto LABEL_8;
  }

  if (v5 == a3)
  {
    while (v6 > 0)
    {
      __break(1u);
LABEL_8:
      if (v8 <= v9)
      {
        v12 = v8 + v6;
      }

      else
      {
        v12 = v8;
      }

      isUniquelyReferenced_nonNull_native = sub_25F2EFB20(isUniquelyReferenced_nonNull_native, v12, 1, v7);
      v7 = isUniquelyReferenced_nonNull_native;
      if (v5 != a3)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_16;
  }

LABEL_12:
  if ((*(v7 + 3) >> 1) - *(v7 + 2) < v6)
  {
    goto LABEL_19;
  }

  swift_arrayInitWithCopy();
  if (v6 <= 0)
  {
LABEL_16:
    *v4 = v7;
    return;
  }

  v13 = *(v7 + 2);
  v14 = __OFADD__(v13, v6);
  v15 = v13 + v6;
  if (!v14)
  {
    *(v7 + 2) = v15;
    goto LABEL_16;
  }

LABEL_20:
  __break(1u);
}

uint64_t static Future.completed(dsoHandle:file:line:column:function:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9, uint64_t a10)
{
  *&v11 = a2;
  *(&v11 + 1) = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v16 = a8;
  v17 = a9;
  return sub_25F1BF710(&v11, a10, a3, a4);
}

uint64_t sub_25F1BF710(_OWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(v4 + 80);
  v8 = type metadata accessor for FutureTermination(0, v7, a3, a4);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = (v19 - v10);
  v12 = a1[1];
  v19[0] = *a1;
  v19[1] = v12;
  v20[0] = a1[2];
  *(v20 + 9) = *(a1 + 41);
  type metadata accessor for ConstantFuture(0, v7, v13, v14);
  static FutureTermination.completed(_:)(a2, v7, v11);
  swift_allocObject();
  v17 = sub_25F1C13BC(v19, v11, v15, v16);
  (*(v9 + 8))(v11, v8);
  return v17;
}

uint64_t static Future.canceled(dsoHandle:file:line:column:function:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v28 = a7;
  v29 = a8;
  v12 = a4;
  v15 = *(v9 + 80);
  v16 = type metadata accessor for FutureTermination(0, v15, a3, a4);
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v28 - v18;
  type metadata accessor for ConstantFuture(0, v15, v20, v21);
  *&v30 = a2;
  *(&v30 + 1) = a3;
  v31 = v12;
  v32 = a5;
  v33 = a6;
  v23 = v28;
  v22 = v29;
  v34 = v28;
  v35 = v29;
  v36 = a9;
  *v19 = a2;
  *(v19 + 1) = a3;
  v19[16] = v12;
  *(v19 + 3) = a5;
  *(v19 + 4) = a6;
  *(v19 + 5) = v23;
  *(v19 + 6) = v22;
  v19[56] = a9;
  swift_storeEnumTagMultiPayload();
  swift_allocObject();
  v26 = sub_25F1C13BC(&v30, v19, v24, v25);
  (*(v17 + 8))(v19, v16);
  return v26;
}

uint64_t static Future.unreachable(dsoHandle:file:line:column:function:_:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9, uint64_t (*a10)(void))
{
  v36 = a7;
  v37 = a8;
  v35 = a10;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27FD52B48, &qword_25F3084D0);
  v38 = sub_25F30678C();
  v15 = *(v38 - 8);
  v16 = MEMORY[0x28223BE20](v38);
  v18 = (&v34 - v17);
  v19 = a10(v16);
  v34 = v20;
  v35 = v19;
  *&v39 = a2;
  *(&v39 + 1) = a3;
  v21 = a3;
  LOBYTE(a3) = a4;
  v40 = a4;
  v22 = a5;
  v41 = a5;
  v42 = a6;
  v23 = a6;
  v25 = v36;
  v24 = v37;
  v43 = v36;
  v44 = v37;
  v45 = a9;
  sub_25F213F98(&v39);
  *&v39 = a2;
  *(&v39 + 1) = v21;
  v40 = a3;
  v41 = v22;
  v42 = v23;
  v43 = v25;
  v44 = v24;
  v45 = a9;
  sub_25F1C172C();
  v26 = swift_allocError();
  v27 = v34;
  *v28 = v35;
  v28[1] = v27;
  v28[2] = 0;
  v28[3] = 0;
  *v18 = v26;
  v29 = v38;
  swift_storeEnumTagMultiPayload();
  v32 = sub_25F1BF710(&v39, v18, v30, v31);
  (*(v15 + 8))(v18, v29);
  return v32;
}

uint64_t static Future.completed(dsoHandle:file:line:column:function:_:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9, uint64_t a10, uint64_t a11)
{
  v27 = a7;
  v28 = a8;
  v25 = a6;
  v26 = a11;
  v24[0] = a5;
  v24[1] = a10;
  v15 = *(v11 + 80);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27FD52B48, &qword_25F3084D0);
  v16 = sub_25F30678C();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = v24 - v18;
  *&v32 = a2;
  *(&v32 + 1) = a3;
  v33 = a4;
  v34 = v24[0];
  v35 = v25;
  v36 = v27;
  v37 = v28;
  v38 = a9;
  v29 = v15;
  v30 = a10;
  v31 = a11;
  sub_25F1BFDA0(sub_25F1C1780, v24 - v18);
  v22 = sub_25F1BF710(&v32, v19, v20, v21);
  (*(v17 + 8))(v19, v16);
  return v22;
}

uint64_t sub_25F1BFD68(uint64_t (*a1)(void), uint64_t a2, uint64_t a3, void *a4)
{
  result = a1();
  if (v4)
  {
    *a4 = v4;
  }

  return result;
}

uint64_t sub_25F1BFDA0@<X0>(void (*a1)(_BYTE *)@<X0>, uint64_t a2@<X8>)
{
  MEMORY[0x28223BE20](a1);
  v5 = &v11[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_25F30678C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v11[-v8];
  a1(v5);
  swift_storeEnumTagMultiPayload();
  return (*(v7 + 32))(a2, v9, v6);
}

uint64_t static Future<A>.succeeded(dsoHandle:file:line:column:function:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  *&v13 = a2;
  *(&v13 + 1) = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v18 = a8;
  v19 = a9;
  v12 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27FD52E78, qword_25F3084D8);
  swift_allocObject();
  v9 = sub_25F1BFFDC(&v13);

  sub_25F1C0934(v11);

  return v9;
}

uint64_t sub_25F1BFFDC(_OWORD *a1)
{
  v2 = a1[1];
  *(v1 + 16) = *a1;
  *(v1 + 32) = v2;
  *(v1 + 48) = a1[2];
  *(v1 + 57) = *(a1 + 41);
  *(v1 + 80) = mach_absolute_time();
  v9 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD52F70, &qword_25F3085C8);
  v3 = swift_allocObject();
  *(v3 + 100) = 0;
  *(v3 + 16) = MEMORY[0x277D84F90];
  *(v3 + 96) = v9;
  *(v1 + 88) = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD52F78, &unk_25F3085D0);
  v4 = swift_allocObject();
  *(v4 + 24) = 0;
  v5 = (v4 + 24);
  *(v4 + 16) = 0;
  *(v1 + 96) = v4;
  v8 = v1;
  swift_getKeyPath();

  os_unfair_lock_lock(v5);
  sub_25F1C1AAC(&v7);
  os_unfair_lock_unlock(v5);

  return v1;
}

uint64_t sub_25F1C0138(_OWORD *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD52F00, &qword_25F308550);
  MEMORY[0x28223BE20](v4);
  v6 = &v13[-v5];
  v7 = a1[1];
  *(v2 + 16) = *a1;
  *(v2 + 32) = v7;
  *(v2 + 48) = a1[2];
  *(v2 + 57) = *(a1 + 41);
  *(v2 + 80) = mach_absolute_time();
  *v6 = MEMORY[0x277D84F90];
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD52F08, &qword_25F308558);
  v8 = swift_allocObject();
  *(v8 + ((*(*v8 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
  sub_25F1C1878(v6, v8 + *(*v8 + *MEMORY[0x277D841D0] + 16));
  *(v2 + 88) = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD52F10, &qword_25F308560);
  v9 = swift_allocObject();
  *(v9 + 24) = 0;
  v10 = (v9 + 24);
  *(v9 + 16) = 0;
  *(v2 + 96) = v9;
  v16 = type metadata accessor for CrashReport(0);
  KeyPath = swift_getKeyPath();
  v18 = v2;
  v14 = KeyPath;
  v15 = &v18;

  os_unfair_lock_lock(v10);
  sub_25F1C1AAC(&v17);
  os_unfair_lock_unlock(v10);

  return v2;
}

uint64_t sub_25F1C0374(_OWORD *a1)
{
  v2 = a1[1];
  *(v1 + 16) = *a1;
  *(v1 + 32) = v2;
  *(v1 + 48) = a1[2];
  *(v1 + 57) = *(a1 + 41);
  *(v1 + 80) = mach_absolute_time();
  v9 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD52F20, &qword_25F308570);
  v3 = swift_allocObject();
  *(v3 + 100) = 0;
  *(v3 + 16) = MEMORY[0x277D84F90];
  *(v3 + 96) = v9;
  *(v1 + 88) = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD52F28, &qword_25F308578);
  v4 = swift_allocObject();
  *(v4 + 24) = 0;
  v5 = (v4 + 24);
  *(v4 + 16) = 0;
  *(v1 + 96) = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD52F18, &qword_25F308568);
  v8 = v1;
  swift_getKeyPath();

  os_unfair_lock_lock(v5);
  sub_25F1C1AAC(&v7);
  os_unfair_lock_unlock(v5);

  return v1;
}

uint64_t sub_25F1C04D8(_OWORD *a1)
{
  v2 = a1[1];
  *(v1 + 16) = *a1;
  *(v1 + 32) = v2;
  *(v1 + 48) = a1[2];
  *(v1 + 57) = *(a1 + 41);
  *(v1 + 80) = mach_absolute_time();
  v9 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD52F60, &qword_25F3085B8);
  v3 = swift_allocObject();
  *(v3 + 100) = 0;
  *(v3 + 16) = MEMORY[0x277D84F90];
  *(v3 + 96) = v9;
  *(v1 + 88) = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD52F68, &qword_25F3085C0);
  v4 = swift_allocObject();
  *(v4 + 24) = 0;
  v5 = (v4 + 24);
  *(v4 + 16) = 0;
  *(v1 + 96) = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD52D50, &qword_25F3085B0);
  v8 = v1;
  swift_getKeyPath();

  os_unfair_lock_lock(v5);
  sub_25F1C1AAC(&v7);
  os_unfair_lock_unlock(v5);

  return v1;
}

uint64_t sub_25F1C063C(_OWORD *a1)
{
  v2 = a1[1];
  *(v1 + 16) = *a1;
  *(v1 + 32) = v2;
  *(v1 + 48) = a1[2];
  *(v1 + 57) = *(a1 + 41);
  *(v1 + 80) = mach_absolute_time();
  v9 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD52F50, &qword_25F3085A0);
  v3 = swift_allocObject();
  *(v3 + 100) = 0;
  *(v3 + 16) = MEMORY[0x277D84F90];
  *(v3 + 96) = v9;
  *(v1 + 88) = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD52F58, &qword_25F3085A8);
  v4 = swift_allocObject();
  *(v4 + 24) = 0;
  v5 = (v4 + 24);
  *(v4 + 16) = 0;
  *(v1 + 96) = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD52F48, &qword_25F308598);
  v8 = v1;
  swift_getKeyPath();

  os_unfair_lock_lock(v5);
  sub_25F1C1AAC(&v7);
  os_unfair_lock_unlock(v5);

  return v1;
}

uint64_t sub_25F1C07A0(_OWORD *a1)
{
  v2 = a1[1];
  *(v1 + 16) = *a1;
  *(v1 + 32) = v2;
  *(v1 + 48) = a1[2];
  *(v1 + 57) = *(a1 + 41);
  *(v1 + 80) = mach_absolute_time();
  v9 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD52F38, &qword_25F308588);
  v3 = swift_allocObject();
  *(v3 + 100) = 0;
  *(v3 + 16) = MEMORY[0x277D84F90];
  *(v3 + 96) = v9;
  *(v1 + 88) = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD52F40, &qword_25F308590);
  v4 = swift_allocObject();
  *(v4 + 24) = 0;
  v5 = (v4 + 24);
  *(v4 + 16) = 0;
  *(v1 + 96) = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD52F30, &qword_25F308580);
  v8 = v1;
  swift_getKeyPath();

  os_unfair_lock_lock(v5);
  sub_25F1C1AAC(&v7);
  os_unfair_lock_unlock(v5);

  return v1;
}

uint64_t sub_25F1C0904()
{
  v0 = Future.deinit();

  return MEMORY[0x2821FE8D8](v0, 104, 7);
}

uint64_t sub_25F1C0934(_OWORD *a1)
{
  v2 = v1;
  v3 = a1[1];
  v20[0] = *a1;
  v20[1] = v3;
  v21[0] = a1[2];
  *(v21 + 10) = *(a1 + 42);
  v4 = *(v1 + 80);
  v5 = mach_absolute_time();
  v6 = *(v2 + 88);
  v15 = v20;
  v16 = v4;
  v17 = v5;
  os_unfair_lock_lock(v6 + 25);
  sub_25F1C19B0(&v6[4], &v19);
  os_unfair_lock_unlock(v6 + 25);
  v8 = v19;
  if (v19)
  {
    MEMORY[0x28223BE20](v7);
    v13 = v20;
    sub_25F2C4430(sub_25F1C1A94, &v12, v8);
  }

  v9 = *(v2 + 96);
  MEMORY[0x28223BE20](v7);
  v13 = (MEMORY[0x277D84F78] + 8);
  KeyPath = swift_getKeyPath();
  v19 = 0;
  v13 = MEMORY[0x28223BE20](KeyPath);
  v14 = &v19;
  os_unfair_lock_lock(v9 + 6);
  sub_25F1C1AAC(&v18);
  os_unfair_lock_unlock(v9 + 6);
}

uint64_t sub_25F1C0AC8(uint64_t a1)
{
  v2 = v1;
  v4 = *(v1 + 80);
  v5 = mach_absolute_time();
  v6 = *(v2 + 88);
  v17 = a1;
  v18 = v4;
  v19 = v5;
  v7 = *(*v6 + *MEMORY[0x277D841D0] + 16);
  v8 = (*(*v6 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v6 + v8));
  sub_25F1C17F0(v6 + v7, &v21);
  os_unfair_lock_unlock((v6 + v8));
  v10 = v21;
  if (v21)
  {
    MEMORY[0x28223BE20](v9);
    v15 = a1;
    sub_25F2C4430(sub_25F1C1840, &v14, v10);
  }

  v11 = *(v2 + 96);
  MEMORY[0x28223BE20](v9);
  v15 = type metadata accessor for CrashReport(0);
  KeyPath = swift_getKeyPath();
  v21 = 0;
  v15 = MEMORY[0x28223BE20](KeyPath);
  v16 = &v21;
  os_unfair_lock_lock(v11 + 6);
  sub_25F1C1824(&v20);
  os_unfair_lock_unlock(v11 + 6);
}

uint64_t sub_25F1C0C90(_OWORD *a1)
{
  v2 = v1;
  v3 = a1[1];
  v20[0] = *a1;
  v20[1] = v3;
  v21[0] = a1[2];
  *(v21 + 10) = *(a1 + 42);
  v4 = *(v1 + 80);
  v5 = mach_absolute_time();
  v6 = *(v2 + 88);
  v15 = v20;
  v16 = v4;
  v17 = v5;
  os_unfair_lock_lock(v6 + 25);
  sub_25F1C18E8(&v6[4], &v19);
  os_unfair_lock_unlock(v6 + 25);
  v8 = v19;
  if (v19)
  {
    MEMORY[0x28223BE20](v7);
    v13 = v20;
    sub_25F2C4430(sub_25F1C1A94, &v12, v8);
  }

  v9 = *(v2 + 96);
  MEMORY[0x28223BE20](v7);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD52F18, &qword_25F308568);
  KeyPath = swift_getKeyPath();
  v19 = 0;
  v13 = MEMORY[0x28223BE20](KeyPath);
  v14 = &v19;
  os_unfair_lock_lock(v9 + 6);
  sub_25F1C1AAC(&v18);
  os_unfair_lock_unlock(v9 + 6);
}

uint64_t sub_25F1C0E30(_OWORD *a1)
{
  v2 = v1;
  v3 = a1[1];
  v20[0] = *a1;
  v20[1] = v3;
  v21[0] = a1[2];
  *(v21 + 10) = *(a1 + 42);
  v4 = *(v1 + 80);
  v5 = mach_absolute_time();
  v6 = *(v2 + 88);
  v15 = v20;
  v16 = v4;
  v17 = v5;
  os_unfair_lock_lock(v6 + 25);
  sub_25F1C196C(&v6[4], &v19);
  os_unfair_lock_unlock(v6 + 25);
  v8 = v19;
  if (v19)
  {
    MEMORY[0x28223BE20](v7);
    v13 = v20;
    sub_25F2C4430(sub_25F1C1998, &v12, v8);
  }

  v9 = *(v2 + 96);
  MEMORY[0x28223BE20](v7);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD52D50, &qword_25F3085B0);
  KeyPath = swift_getKeyPath();
  v19 = 0;
  v13 = MEMORY[0x28223BE20](KeyPath);
  v14 = &v19;
  os_unfair_lock_lock(v9 + 6);
  sub_25F1C1AAC(&v18);
  os_unfair_lock_unlock(v9 + 6);
}

uint64_t sub_25F1C0FD0(_OWORD *a1)
{
  v2 = v1;
  v3 = a1[1];
  v20[0] = *a1;
  v20[1] = v3;
  v21[0] = a1[2];
  *(v21 + 10) = *(a1 + 42);
  v4 = *(v1 + 80);
  v5 = mach_absolute_time();
  v6 = *(v2 + 88);
  v15 = v20;
  v16 = v4;
  v17 = v5;
  os_unfair_lock_lock(v6 + 25);
  sub_25F1C1940(&v6[4], &v19);
  os_unfair_lock_unlock(v6 + 25);
  v8 = v19;
  if (v19)
  {
    MEMORY[0x28223BE20](v7);
    v13 = v20;
    sub_25F2C4430(sub_25F1C1A94, &v12, v8);
  }

  v9 = *(v2 + 96);
  MEMORY[0x28223BE20](v7);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD52F48, &qword_25F308598);
  KeyPath = swift_getKeyPath();
  v19 = 0;
  v13 = MEMORY[0x28223BE20](KeyPath);
  v14 = &v19;
  os_unfair_lock_lock(v9 + 6);
  sub_25F1C1AAC(&v18);
  os_unfair_lock_unlock(v9 + 6);
}

uint64_t sub_25F1C1170(_OWORD *a1)
{
  v2 = v1;
  v3 = a1[1];
  v20[0] = *a1;
  v20[1] = v3;
  v21[0] = a1[2];
  *(v21 + 10) = *(a1 + 42);
  v4 = *(v1 + 80);
  v5 = mach_absolute_time();
  v6 = *(v2 + 88);
  v15 = v20;
  v16 = v4;
  v17 = v5;
  os_unfair_lock_lock(v6 + 25);
  sub_25F1C1914(&v6[4], &v19);
  os_unfair_lock_unlock(v6 + 25);
  v8 = v19;
  if (v19)
  {
    MEMORY[0x28223BE20](v7);
    v13 = v20;
    sub_25F2C4430(sub_25F1C1A94, &v12, v8);
  }

  v9 = *(v2 + 96);
  MEMORY[0x28223BE20](v7);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD52F30, &qword_25F308580);
  KeyPath = swift_getKeyPath();
  v19 = 0;
  v13 = MEMORY[0x28223BE20](KeyPath);
  v14 = &v19;
  os_unfair_lock_lock(v9 + 6);
  sub_25F1C1AAC(&v18);
  os_unfair_lock_unlock(v9 + 6);
}

uint64_t sub_25F1C1310@<X0>(uint64_t *a3@<X2>, void *a4@<X8>)
{
  v5 = *a3;
  v6 = swift_readAtKeyPath();
  v8 = *v7;

  v6(v10, 0);
  v10[0] = v5;

  result = swift_setAtWritableKeyPath();
  *a4 = v8;
  return result;
}

uint64_t sub_25F1C13BC(_OWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a1[1];
  v8[0] = *a1;
  v8[1] = v5;
  v9[0] = a1[2];
  *(v9 + 9) = *(a1 + 41);
  v6 = sub_25F2E95EC(v8, a2, a3, a4);

  sub_25F2EA104(a2);

  return v6;
}

uint64_t sub_25F1C1420(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, uint64_t a9)
{
  v26 = a8;
  v24 = a6;
  v25 = a7;
  v27 = a9;
  v15 = *(v9 + 80);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27FD52B48, &qword_25F3084D0);
  v16 = sub_25F30678C();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v24 - v18;
  *&v28 = a1;
  *(&v28 + 1) = a2;
  v29 = a3;
  v30 = a4;
  v31 = a5;
  v32 = v24;
  v33 = v25;
  v34 = v26;
  (*(*(v15 - 8) + 16))(&v24 - v18, a9, v15);
  swift_storeEnumTagMultiPayload();
  v22 = sub_25F1BF710(&v28, v19, v20, v21);
  (*(v17 + 8))(v19, v16);
  return v22;
}

uint64_t sub_25F1C15B0(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, void *a9)
{
  v26 = a8;
  v24 = a6;
  v25 = a7;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27FD52B48, &qword_25F3084D0);
  v14 = sub_25F30678C();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v23 - v16;
  *&v27 = a1;
  *(&v27 + 1) = a2;
  v28 = a3;
  v29 = a4;
  v30 = a5;
  v31 = v24;
  v32 = v25;
  v33 = v26;
  *(&v23 - v16) = a9;
  swift_storeEnumTagMultiPayload();
  v18 = a9;
  v21 = sub_25F1BF710(&v27, v17, v19, v20);
  (*(v15 + 8))(v17, v14);
  return v21;
}

unint64_t sub_25F1C172C()
{
  result = qword_27FD52E70;
  if (!qword_27FD52E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD52E70);
  }

  return result;
}

uint64_t sub_25F1C1780(void *a1)
{
  result = (*(v1 + 24))();
  if (v2)
  {
    *a1 = v2;
  }

  return result;
}

uint64_t sub_25F1C17F0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_25F2C38FC(a1, v2[2], v2[3], v2[4]);
  if (!v3)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_25F1C1878(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD52F00, &qword_25F308550);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_25F1C19DC@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t, _OWORD *, uint64_t, uint64_t)@<X1>, uint64_t *a3@<X8>)
{
  v7 = v3[2];
  v6 = v3[3];
  v8 = v3[4];
  v9 = v7[1];
  v11[0] = *v7;
  v11[1] = v9;
  v12[0] = v7[2];
  *(v12 + 10) = *(v7 + 42);
  result = a2(a1, v11, v6, v8);
  if (!v4)
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_25F1C1A3C(uint64_t (**a1)(_OWORD *))
{
  v2 = *(v1 + 16);
  v3 = *a1;
  v4 = v2[1];
  v6[0] = *v2;
  v6[1] = v4;
  v7[0] = v2[2];
  *(v7 + 10) = *(v2 + 42);
  return v3(v6);
}

uint64_t sub_25F1C1AC4(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v29 = a8;
  v38 = a1;
  v39 = a2;
  v10 = *(a5 - 8);
  MEMORY[0x28223BE20](a1);
  v40 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v42 = *(AssociatedTypeWitness - 8);
  v12 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v14 = &v27 - v13;
  MEMORY[0x28223BE20](v12);
  v36 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_getAssociatedTypeWitness();
  v30 = *(v16 - 8);
  v31 = v16;
  MEMORY[0x28223BE20](v16);
  v18 = &v27 - v17;
  v19 = sub_25F3057BC();
  if (!v19)
  {
    return sub_25F3052DC();
  }

  v41 = v19;
  v45 = sub_25F30611C();
  v32 = sub_25F30612C();
  sub_25F3060CC();
  result = sub_25F3057AC();
  if ((v41 & 0x8000000000000000) == 0)
  {
    v27 = v10;
    v28 = a5;
    v21 = 0;
    v33 = (v42 + 16);
    v34 = (v42 + 8);
    v35 = v8;
    while (!__OFADD__(v21, 1))
    {
      v42 = v21 + 1;
      v22 = sub_25F3058FC();
      v23 = v14;
      v24 = v14;
      v25 = AssociatedTypeWitness;
      (*v33)(v23);
      v22(v44, 0);
      v26 = v43;
      v38(v24, v40);
      if (v26)
      {
        (*v34)(v24, v25);
        (*(v30 + 8))(v18, v31);

        return (*(v27 + 32))(v29, v40, v28);
      }

      v43 = 0;
      (*v34)(v24, v25);
      sub_25F30610C();
      result = sub_25F30580C();
      ++v21;
      v14 = v24;
      if (v42 == v41)
      {
        (*(v30 + 8))(v18, v31);
        return v45;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t CommandLineOptionDescription.name.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t CommandLineOptionDescription.parameterDescription.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t CommandLineOptionDescription.description.getter()
{
  v1 = *(v0 + 40);

  return v1;
}

uint64_t CommandLineOptionDescription.shortUsage.getter()
{
  v1 = v0[1];
  v25 = *v0;
  v26 = v1;
  v27 = v0[2];
  v28 = *(v0 + 6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD52E50, &qword_25F3084A0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_25F3077D0;
  *(v2 + 32) = sub_25F1C21E4(v25, *(&v25 + 1), &v25);
  *(v2 + 40) = v3;
  v4 = v26;
  v5 = *(v26 + 16);
  v6 = MEMORY[0x277D84F90];
  if (v5)
  {
    v24 = MEMORY[0x277D84F90];
    sub_25F1BD008(0, v5, 0);
    v6 = v24;
    v7 = (v4 + 40);
    v8 = v27;
    do
    {
      v10 = *(v7 - 1);
      v9 = *v7;

      v11 = sub_25F304F2C();
      v12 = 11565;
      if (v11 == 1)
      {
        v12 = 45;
        v13 = 0xE100000000000000;
      }

      else
      {
        v13 = 0xE200000000000000;
      }

      v23 = v12;

      MEMORY[0x25F8D7130](v10, v9);

      v14 = v13;
      if (v8)
      {
        v15 = sub_25F304C0C();
        MEMORY[0x25F8D7130](v15);

        v17 = 32;
        v16 = 0xE100000000000000;
      }

      else
      {
        v17 = 0;
        v16 = 0xE000000000000000;
      }

      MEMORY[0x25F8D7130](v17, v16);

      v19 = *(v24 + 16);
      v18 = *(v24 + 24);
      if (v19 >= v18 >> 1)
      {
        sub_25F1BD008((v18 > 1), v19 + 1, 1);
      }

      *(v24 + 16) = v19 + 1;
      v20 = v24 + 16 * v19;
      *(v20 + 32) = v23;
      *(v20 + 40) = v14;
      v7 += 2;
      --v5;
    }

    while (v5);
  }

  sub_25F1BA2E0(v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD52F80, &qword_25F309110);
  sub_25F1C3498();
  v21 = sub_25F304CAC();

  return v21;
}

uint64_t sub_25F1C21E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_25F304F2C();
  v7 = 11565;
  if (v6 == 1)
  {
    v7 = 45;
  }

  v12 = v7;

  MEMORY[0x25F8D7130](a1, a2);

  if (*(a3 + 32))
  {
    v8 = sub_25F304C0C();
    MEMORY[0x25F8D7130](v8);

    v10 = 32;
    v9 = 0xE100000000000000;
  }

  else
  {
    v10 = 0;
    v9 = 0xE000000000000000;
  }

  MEMORY[0x25F8D7130](v10, v9);

  return v12;
}

uint64_t CommandLineOption.name.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t CommandLineOption.parameterDescription.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t CommandLineOption.description.getter()
{
  v1 = *(v0 + 40);

  return v1;
}

uint64_t CommandLineOption.apply.getter()
{
  v1 = *(v0 + 56);

  return v1;
}

uint64_t CommandLineOption.init(_:_:parameter:description:apply:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10)
{
  *a9 = result;
  a9[1] = a2;
  a9[2] = a3;
  a9[3] = a4;
  a9[4] = a5;
  a9[5] = a6;
  a9[6] = a7;
  a9[7] = a8;
  a9[8] = a10;
  return result;
}

uint64_t CommandLineOption.init(_:_:BOOLean:description:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  *a7 = result;
  a7[1] = a2;
  a7[5] = a5;
  a7[6] = a6;
  a7[3] = 0;
  a7[4] = 0;
  a7[2] = a3;
  a7[7] = sub_25F1C34FC;
  a7[8] = a4;
  return result;
}

uint64_t CommandLineOption.init(_:_:parameter:string:description:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>)
{
  v14 = result;
  if (!a5)
  {
    result = sub_25F304C0C();
    a4 = result;
    a5 = v16;
  }

  *a9 = v14;
  a9[1] = a2;
  a9[2] = a3;
  a9[3] = a4;
  a9[4] = a5;
  a9[5] = a7;
  a9[6] = a8;
  a9[7] = sub_25F1C3534;
  a9[8] = a6;
  return result;
}

uint64_t CommandLineOption.init(_:_:parameter:int:description:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>)
{
  v12 = a5;
  if (!a5)
  {
    a4 = sub_25F304C0C();
    v12 = v18;
  }

  v19 = swift_allocObject();
  v19[2] = a1;
  v19[3] = a2;
  v19[4] = a6;
  *a9 = a1;
  a9[1] = a2;
  a9[2] = a3;
  a9[3] = a4;
  a9[4] = v12;
  a9[5] = a7;
  a9[6] = a8;
  a9[7] = sub_25F1C3594;
  a9[8] = v19;
}

uint64_t sub_25F1C253C(uint64_t a1, uint64_t (*a2)(void), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  result = a2();
  if (!v6)
  {
    v11 = HIBYTE(v10) & 0xF;
    v12 = result & 0xFFFFFFFFFFFFLL;
    if ((v10 & 0x2000000000000000) != 0)
    {
      v13 = HIBYTE(v10) & 0xF;
    }

    else
    {
      v13 = result & 0xFFFFFFFFFFFFLL;
    }

    if (!v13)
    {
      goto LABEL_64;
    }

    if ((v10 & 0x1000000000000000) != 0)
    {
      v45 = 0;
      v41 = result;
      v42 = v10;

      v16 = sub_25F2F1970(v41, v42, 10);
      v38 = v37;

      result = v41;
      v10 = v42;
      if (v38)
      {
        goto LABEL_64;
      }

LABEL_66:

      v44[0] = v16;
      return swift_setAtWritableKeyPath();
    }

    if ((v10 & 0x2000000000000000) != 0)
    {
      v44[0] = result;
      v44[1] = v10 & 0xFFFFFFFFFFFFFFLL;
      if (result == 43)
      {
        if (v11)
        {
          v12 = v11 - 1;
          if (v11 != 1)
          {
            v16 = 0;
            v26 = v44 + 1;
            while (1)
            {
              v27 = *v26 - 48;
              if (v27 > 9)
              {
                break;
              }

              v28 = 10 * v16;
              if ((v16 * 10) >> 64 != (10 * v16) >> 63)
              {
                break;
              }

              v16 = v28 + v27;
              if (__OFADD__(v28, v27))
              {
                break;
              }

              ++v26;
              if (!--v12)
              {
                goto LABEL_63;
              }
            }
          }

          goto LABEL_62;
        }

LABEL_72:
        __break(1u);
        return result;
      }

      if (result != 45)
      {
        if (v11)
        {
          v16 = 0;
          v31 = v44;
          while (1)
          {
            v32 = *v31 - 48;
            if (v32 > 9)
            {
              break;
            }

            v33 = 10 * v16;
            if ((v16 * 10) >> 64 != (10 * v16) >> 63)
            {
              break;
            }

            v16 = v33 + v32;
            if (__OFADD__(v33, v32))
            {
              break;
            }

            ++v31;
            if (!--v11)
            {
              goto LABEL_61;
            }
          }
        }

        goto LABEL_62;
      }

      if (v11)
      {
        v12 = v11 - 1;
        if (v11 != 1)
        {
          v16 = 0;
          v20 = v44 + 1;
          while (1)
          {
            v21 = *v20 - 48;
            if (v21 > 9)
            {
              break;
            }

            v22 = 10 * v16;
            if ((v16 * 10) >> 64 != (10 * v16) >> 63)
            {
              break;
            }

            v16 = v22 - v21;
            if (__OFSUB__(v22, v21))
            {
              break;
            }

            ++v20;
            if (!--v12)
            {
              goto LABEL_63;
            }
          }
        }

        goto LABEL_62;
      }
    }

    else
    {
      if ((result & 0x1000000000000000) != 0)
      {
        v14 = ((v10 & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      else
      {
        v39 = result;
        v43 = v10;
        v14 = sub_25F30605C();
        result = v39;
        v12 = v40;
        v10 = v43;
      }

      v15 = *v14;
      if (v15 == 43)
      {
        if (v12 >= 1)
        {
          if (--v12)
          {
            v16 = 0;
            if (v14)
            {
              v23 = v14 + 1;
              while (1)
              {
                v24 = *v23 - 48;
                if (v24 > 9)
                {
                  goto LABEL_62;
                }

                v25 = 10 * v16;
                if ((v16 * 10) >> 64 != (10 * v16) >> 63)
                {
                  goto LABEL_62;
                }

                v16 = v25 + v24;
                if (__OFADD__(v25, v24))
                {
                  goto LABEL_62;
                }

                ++v23;
                if (!--v12)
                {
                  goto LABEL_63;
                }
              }
            }

            goto LABEL_61;
          }

          goto LABEL_62;
        }

        goto LABEL_71;
      }

      if (v15 != 45)
      {
        if (v12)
        {
          v16 = 0;
          if (v14)
          {
            while (1)
            {
              v29 = *v14 - 48;
              if (v29 > 9)
              {
                goto LABEL_62;
              }

              v30 = 10 * v16;
              if ((v16 * 10) >> 64 != (10 * v16) >> 63)
              {
                goto LABEL_62;
              }

              v16 = v30 + v29;
              if (__OFADD__(v30, v29))
              {
                goto LABEL_62;
              }

              ++v14;
              if (!--v12)
              {
                goto LABEL_63;
              }
            }
          }

          goto LABEL_61;
        }

LABEL_62:
        v16 = 0;
        LOBYTE(v12) = 1;
LABEL_63:
        v45 = v12;
        if (v12)
        {
LABEL_64:
          v34 = v10;
          v35 = result;
          sub_25F1C397C();
          swift_allocError();
          *v36 = a4;
          v36[1] = a5;
          v36[2] = v35;
          v36[3] = v34;
          swift_willThrow();
        }

        goto LABEL_66;
      }

      if (v12 >= 1)
      {
        if (--v12)
        {
          v16 = 0;
          if (v14)
          {
            v17 = v14 + 1;
            while (1)
            {
              v18 = *v17 - 48;
              if (v18 > 9)
              {
                goto LABEL_62;
              }

              v19 = 10 * v16;
              if ((v16 * 10) >> 64 != (10 * v16) >> 63)
              {
                goto LABEL_62;
              }

              v16 = v19 - v18;
              if (__OFSUB__(v19, v18))
              {
                goto LABEL_62;
              }

              ++v17;
              if (!--v12)
              {
                goto LABEL_63;
              }
            }
          }

LABEL_61:
          LOBYTE(v12) = 0;
          goto LABEL_63;
        }

        goto LABEL_62;
      }

      __break(1u);
    }

    __break(1u);
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  return result;
}

void *CommandLineOption.init<A>(_:_:parameter:optionalEnum:description:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X5>, uint64_t a7@<X6>, unint64_t a8@<X7>, uint64_t *a9@<X8>, uint64_t a10, uint64_t a11)
{
  v43 = a7;
  v44 = a8;
  v46 = a3;
  v47 = a4;
  v48 = a11;
  v45 = a6;
  v15 = *a6;
  v16 = *(*(*a6 + *MEMORY[0x277D84308] + 8) + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v18 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v20 = &v40 - v19;
  v41 = a1;
  v42 = a2;
  if (!a5)
  {
    v47 = sub_25F304C0C();
    a5 = v21;
  }

  v22 = sub_25F305FCC();
  MEMORY[0x28223BE20](v22);
  *(&v40 - 4) = *(v15 + *MEMORY[0x277D84308]);
  *(&v40 - 3) = v16;
  v23 = v48;
  *(&v40 - 2) = a10;
  *(&v40 - 1) = v23;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v26 = sub_25F1C1AC4(sub_25F1C35B4, (&v40 - 6), AssociatedTypeWitness, MEMORY[0x277D837D0], MEMORY[0x277D84A98], AssociatedConformanceWitness, MEMORY[0x277D84AC0], v25);
  (*(v18 + 8))(v20, AssociatedTypeWitness);
  v49 = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD52F80, &qword_25F309110);
  sub_25F1C3498();
  v27 = sub_25F304CAC();
  v29 = v28;

  v49 = 0;
  v50 = 0xE000000000000000;
  v30 = v42;

  sub_25F305FAC();

  v49 = 2570;
  v50 = 0xE200000000000000;
  v31 = v47;
  MEMORY[0x25F8D7130](v47, a5);

  MEMORY[0x25F8D7130](0xD000000000000010, 0x800000025F317500);
  MEMORY[0x25F8D7130](v27, v29);

  v32 = v49;
  v33 = v50;
  v49 = v43;
  v50 = v44;

  MEMORY[0x25F8D7130](v32, v33);

  v34 = v49;
  v35 = v50;
  result = swift_allocObject();
  v37 = v48;
  result[2] = a10;
  result[3] = v37;
  v38 = v41;
  result[4] = v41;
  result[5] = v30;
  v39 = v46;
  result[6] = v45;
  *a9 = v38;
  a9[1] = v30;
  a9[2] = v39;
  a9[3] = v31;
  a9[4] = a5;
  a9[5] = v34;
  a9[6] = v35;
  a9[7] = sub_25F1C35EC;
  a9[8] = result;
  return result;
}

uint64_t sub_25F1C2C50(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8)
{
  v52 = a8;
  v53 = a2;
  v48 = a4;
  v49 = a5;
  v46 = a1;
  v9 = *MEMORY[0x277D84308];
  v45 = *a6;
  v10 = *(v45 + v9 + 8);
  v11 = *(v10 + 16);
  v51 = a7;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v47 = *(AssociatedTypeWitness - 8);
  v13 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v15 = &v40 - v14;
  v44 = *(v10 - 8);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v40 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v40 - v20;
  v50 = *(v11 - 8);
  v22 = MEMORY[0x28223BE20](v19);
  v24 = &v40 - v23;
  v25 = v56;
  result = v53(v22);
  if (!v25)
  {
    v41 = v18;
    v42 = result;
    v43 = a6;
    v28 = v51;
    v56 = 0;
    v54 = result;
    v55 = v27;
    v53 = v27;

    sub_25F3051FC();
    v29 = v50;
    if ((*(v50 + 48))(v21, 1, v11) == 1)
    {
      (*(v44 + 8))(v21, v10);
      v30 = v15;
      v31 = sub_25F305FCC();
      MEMORY[0x28223BE20](v31);
      *(&v40 - 4) = *(v45 + *MEMORY[0x277D84308]);
      *(&v40 - 3) = v11;
      v32 = v52;
      *(&v40 - 2) = v28;
      *(&v40 - 1) = v32;
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      v35 = sub_25F1C1AC4(sub_25F1C3B84, (&v40 - 6), AssociatedTypeWitness, MEMORY[0x277D837D0], MEMORY[0x277D84A98], AssociatedConformanceWitness, MEMORY[0x277D84AC0], v34);
      (*(v47 + 8))(v30, AssociatedTypeWitness);
      sub_25F1C3928();
      swift_allocError();
      v36 = v49;
      *v37 = v48;
      v37[1] = v36;
      v38 = v53;
      v37[2] = v42;
      v37[3] = v38;
      v37[4] = v35;
      swift_willThrow();
    }

    else
    {

      (*(v29 + 32))(v24, v21, v11);
      v39 = v41;
      (*(v29 + 16))(v41, v24, v11);
      (*(v29 + 56))(v39, 0, 1, v11);
      swift_setAtWritableKeyPath();
      return (*(v29 + 8))(v24, v11);
    }
  }

  return result;
}

__n128 CommandLineOption.init<A>(_:_:parameter:enum:description:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a7@<X6>, unint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  swift_getKeyPath();
  v16 = sub_25F30608C();

  CommandLineOption.init<A>(_:_:parameter:optionalEnum:description:)(a1, a2, a3, a4, a5, v16, a7, a8, v22, a10, a11);

  v17 = v22[3];
  *(a9 + 32) = v22[2];
  *(a9 + 48) = v17;
  *(a9 + 64) = v23;
  result = v22[1];
  *a9 = v22[0];
  *(a9 + 16) = result;
  return result;
}

uint64_t sub_25F1C31F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v8 = *(a1 - 8);
  (*(v8 + 16))(a2, v3, a1);
  v6 = *(v8 + 56);

  return v6(a2, 0, 1, a1);
}

uint64_t CommandLineOption.names.getter()
{
  v2 = *v0;
  v1 = v0[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD52E50, &qword_25F3084A0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_25F3077D0;
  *(v3 + 32) = v2;
  *(v3 + 40) = v1;
  v6 = v3;

  sub_25F1BA2E0(v4);
  return v6;
}

uint64_t sub_25F1C3330()
{
  v1 = v0;
  sub_25F305FAC();
  MEMORY[0x25F8D7130](0xD00000000000001ALL, 0x800000025F317520);
  MEMORY[0x25F8D7130](*v1, v1[1]);
  MEMORY[0x25F8D7130](572537378, 0xE400000000000000);
  MEMORY[0x25F8D7130](v1[2], v1[3]);
  MEMORY[0x25F8D7130](0xD000000000000011, 0x800000025F317540);
  v6 = v0[4];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD52F80, &qword_25F309110);
  sub_25F1C3498();
  v2 = sub_25F304CAC();
  v4 = v3;
  sub_25F1C3B1C(&v6);
  MEMORY[0x25F8D7130](v2, v4);

  return 0;
}

unint64_t sub_25F1C3498()
{
  result = qword_27FD52F88[0];
  if (!qword_27FD52F88[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD52F80, &qword_25F309110);
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FD52F88);
  }

  return result;
}

uint64_t sub_25F1C3534(uint64_t a1, uint64_t (*a2)(void))
{
  result = a2();
  if (!v2)
  {
    return swift_setAtWritableKeyPath();
  }

  return result;
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

uint64_t sub_25F1C362C(uint64_t a1, int a2)
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

uint64_t sub_25F1C3674(uint64_t result, int a2, int a3)
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

uint64_t sub_25F1C36D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
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

uint64_t sub_25F1C3730(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
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

uint64_t sub_25F1C3778(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_25F1C37E0(uint64_t a1, uint64_t a2)
{
  v5 = sub_25F305C1C();
  MEMORY[0x28223BE20](v5);
  v7 = &v11 - v6;
  (*(v8 + 16))(&v11 - v6, a1);
  v9 = *(a2 - 8);
  result = (*(v9 + 48))(v7, 1, a2);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v9 + 8))(v2, a2);
    return (*(v9 + 32))(v2, v7, a2);
  }

  return result;
}

unint64_t sub_25F1C3928()
{
  result = qword_27FD53010;
  if (!qword_27FD53010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD53010);
  }

  return result;
}

unint64_t sub_25F1C397C()
{
  result = qword_27FD53018[0];
  if (!qword_27FD53018[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FD53018);
  }

  return result;
}

uint64_t sub_25F1C39D0(uint64_t a1, int a2)
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

uint64_t sub_25F1C3A18(uint64_t result, int a2, int a3)
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

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_25F1C3A7C(uint64_t a1, int a2)
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

uint64_t sub_25F1C3AC4(uint64_t result, int a2, int a3)
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

uint64_t sub_25F1C3B1C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD52F80, &qword_25F309110);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t SafeDecodable.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v32 = a4;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27FD52B48, &qword_25F3084D0);
  v31 = sub_25F30678C();
  v8 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v10 = &v27 - v9;
  v12 = type metadata accessor for SafeDecodable(0, a2, a3, v11);
  v29 = *(v12 - 8);
  v30 = v12;
  MEMORY[0x28223BE20](v12);
  v14 = (&v27 - v13);
  v15 = a1[3];
  v28 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v15);
  sub_25F30679C();
  if (v4)
  {
    if (qword_27FD528B0 != -1)
    {
      swift_once();
    }

    v16 = sub_25F30479C();
    __swift_project_value_buffer(v16, qword_27FD57070);
    v17 = v4;
    v18 = sub_25F30477C();
    v19 = sub_25F305A0C();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v27 = 0;
      v22 = v21;
      v33[0] = v21;
      *v20 = 136315138;
      swift_getErrorValue();
      v23 = Error.describe()();
      v24 = sub_25F1C53AC(v23._countAndFlagsBits, v23._object, v33);

      *(v20 + 4) = v24;
      _os_log_impl(&dword_25F1A2000, v18, v19, "Error decoding SafeDecodable value: %s", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v22);
      MEMORY[0x25F8D9510](v22, -1, -1);
      MEMORY[0x25F8D9510](v20, -1, -1);
    }

    *v14 = v4;
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    __swift_project_boxed_opaque_existential_1(v33, v33[3]);
    sub_25F3065BC();
    v26 = v31;
    swift_storeEnumTagMultiPayload();
    (*(v8 + 32))(v14, v10, v26);
    __swift_destroy_boxed_opaque_existential_1(v33);
  }

  (*(v29 + 32))(v32, v14, v30);
  return __swift_destroy_boxed_opaque_existential_1(v28);
}

uint64_t SafeDecodable.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  (*(*(a2 - 8) + 32))(a3, a1, a2);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27FD52B48, &qword_25F3084D0);
  sub_25F30678C();

  return swift_storeEnumTagMultiPayload();
}

uint64_t SafeDecodable<>.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v14[1] = a3;
  v3 = *(a2 + 16);
  v4 = sub_25F305C1C();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = v14 - v7;
  v9 = *(v3 - 8);
  MEMORY[0x28223BE20](v6);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27FD52B48, &qword_25F3084D0);
  v12 = sub_25F30678C();
  Result.value.getter(v12, v8);
  if ((*(v9 + 48))(v8, 1, v3) == 1)
  {
    return (*(v5 + 8))(v8, v4);
  }

  (*(v9 + 32))(v11, v8, v3);
  sub_25F304BBC();
  return (*(v9 + 8))(v11, v3);
}

uint64_t SafeDecodable<>.value.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a1 + 16);
  v6 = sub_25F305C1C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v14 - v8;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27FD52B48, &qword_25F3084D0);
  v10 = sub_25F30678C();
  Result.value.getter(v10, v9);
  v11 = *(v5 - 8);
  v12 = *(v11 + 48);
  if (v12(v9, 1, v5) != 1)
  {
    return (*(v11 + 32))(a3, v9, v5);
  }

  (*(a2 + 8))(v5, a2);
  result = (v12)(v9, 1, v5);
  if (result != 1)
  {
    return (*(v7 + 8))(v9, v6);
  }

  return result;
}

uint64_t SafeDecodable.value.getter@<X0>(uint64_t x8_0@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27FD52B48, &qword_25F3084D0);
  v3 = sub_25F30678C();

  return Result.value.getter(v3, x8_0);
}

uint64_t sub_25F1C445C@<X0>(uint64_t *a2@<X8>)
{
  result = sub_25F304A1C();
  *a2 = result;
  return result;
}

uint64_t sub_25F1C4488@<X0>(uint64_t *a2@<X8>)
{
  result = sub_25F304A0C();
  *a2 = result;
  return result;
}

uint64_t SafeDecodableArray.value.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 8);
  v12[1] = *v4;
  v13 = v5;
  type metadata accessor for SafeDecodable(255, *(a1 + 16), *(a1 + 24), a4);
  v6 = sub_25F30539C();
  swift_getWitnessTable();
  WitnessTable = swift_getWitnessTable();
  v9 = type metadata accessor for SafeDecodable(0, v6, WitnessTable, v8);
  SafeDecodable<>.value.getter(v9, &protocol witness table for [A], v12);
  swift_getWitnessTable();
  v10 = sub_25F30511C();

  return v10;
}

uint64_t SafeDecodableArray.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25F30679C();
  if (!v4)
  {
    __swift_project_boxed_opaque_existential_1(v16, v16[3]);
    type metadata accessor for SafeDecodable(255, a2, a3, v9);
    v10 = sub_25F30539C();
    v16[6] = swift_getWitnessTable();
    WitnessTable = swift_getWitnessTable();
    type metadata accessor for SafeDecodable(0, v10, WitnessTable, v12);
    swift_getWitnessTable();
    sub_25F3065BC();
    __swift_destroy_boxed_opaque_existential_1(v16);
    *a4 = v14;
    *(a4 + 8) = v15;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t SafeDecodableArray.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v18 = a1;
  v16[2] = a2;
  v16[3] = a3;
  v7 = sub_25F30539C();
  v9 = type metadata accessor for SafeDecodable(0, a2, a3, v8);
  WitnessTable = swift_getWitnessTable();
  v12 = sub_25F1C1AC4(sub_25F1C593C, v16, v7, v9, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v11);

  v17 = v12;
  v13 = sub_25F30539C();
  v16[5] = swift_getWitnessTable();
  swift_getWitnessTable();
  result = SafeDecodable.init(_:)(&v17, v13, &v18);
  v15 = v19;
  *a4 = v18;
  *(a4 + 8) = v15;
  return result;
}

uint64_t sub_25F1C48B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  MEMORY[0x28223BE20](a1);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v6);
  return SafeDecodable.init(_:)(v6, a2, a3);
}

uint64_t SafeDecodableDictionary.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  v32 = a3;
  v33 = a6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25F30679C();
  if (!v7)
  {
    v29 = a5;
    v30 = a2;
    v31 = a7;
    __swift_project_boxed_opaque_existential_1(&v38, v40);
    type metadata accessor for SafeDecodable(255, v32, v33, v12);
    v13 = sub_25F304B4C();
    WitnessTable = swift_getWitnessTable();
    v34 = MEMORY[0x277D83808];
    v35 = WitnessTable;
    v15 = swift_getWitnessTable();
    v17 = type metadata accessor for SafeDecodable(0, v13, v15, v16);
    swift_getWitnessTable();
    sub_25F3065BC();
    v28 = v36;
    v27 = v37;
    __swift_destroy_boxed_opaque_existential_1(&v38);
    v26 = sub_25F304B4C();
    v38 = v36;
    v39 = v37;
    v18 = SafeDecodable<>.value.getter(v17, &protocol witness table for [A : B], &v36);
    v25 = &v25;
    v41 = v36;
    MEMORY[0x28223BE20](v18);
    swift_getTupleTypeMetadata2();
    swift_getWitnessTable();
    v19 = sub_25F30511C();

    v36 = v19;
    v20 = sub_25F30539C();
    v21 = v26;
    v22 = swift_getWitnessTable();
    v23 = swift_getWitnessTable();
    KeyValueMap.init<A>(_:)(&v36, v21, v20, v22, v23, &v38);
    sub_25F1C5980(v28, v27);
    *v31 = v38;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_25F1C4CD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void (*a4)(char *, char *, uint64_t)@<X4>, uint64_t a5@<X5>, char *a6@<X8>)
{
  v49 = a4;
  v51 = a6;
  v10 = sub_25F305C1C();
  v41 = *(v10 - 8);
  v42 = v10;
  v11 = MEMORY[0x28223BE20](v10);
  v45 = &v40 - v12;
  v46 = *(a3 - 8);
  MEMORY[0x28223BE20](v11);
  v40 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_25F305C1C();
  v43 = *(v14 - 8);
  v44 = v14;
  v15 = MEMORY[0x28223BE20](v14);
  v17 = &v40 - v16;
  v47 = *(a2 - 8);
  MEMORY[0x28223BE20](v15);
  v48 = &v40 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = a3;
  v20 = type metadata accessor for SafeDecodable(255, a3, a5, v19);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v22 = MEMORY[0x28223BE20](TupleTypeMetadata2);
  v24 = &v40 - v23;
  v25 = *(v20 - 8);
  MEMORY[0x28223BE20](v22);
  v27 = &v40 - v26;
  (*(v28 + 16))(v24, a1, TupleTypeMetadata2);
  (*(v25 + 32))(v27, &v24[*(TupleTypeMetadata2 + 48)], v20);
  sub_25F30651C();
  v29 = v47;
  if ((*(v47 + 48))(v17, 1, a2) == 1)
  {
    (*(v25 + 8))(v27, v20);
    (*(v43 + 8))(v17, v44);
LABEL_5:
    v33 = swift_getTupleTypeMetadata2();
    return (*(*(v33 - 8) + 56))(v51, 1, 1, v33);
  }

  v49 = *(v29 + 32);
  v49(v48, v17, a2);
  v30 = v45;
  SafeDecodable.value.getter(v45);
  (*(v25 + 8))(v27, v20);
  v31 = v46;
  v32 = v50;
  if ((*(v46 + 48))(v30, 1, v50) == 1)
  {
    (*(v29 + 8))(v48, a2);
    (*(v41 + 8))(v30, v42);
    goto LABEL_5;
  }

  v35 = *(v31 + 32);
  v36 = v40;
  v35(v40, v30, v32);
  v37 = swift_getTupleTypeMetadata2();
  v38 = *(v37 + 48);
  v39 = v51;
  v49(v51, v48, a2);
  v35(&v39[v38], v36, v32);
  return (*(*(v37 - 8) + 56))(v39, 0, 1, v37);
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_25F1C52DC(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_25F1C5350(unint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(unint64_t **, uint64_t))
{
  v6 = a4(a1, a2);
  v8 = sub_25F1C53AC(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

unint64_t sub_25F1C53AC(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_25F1C5478(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
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
    sub_25F1B7118(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t sub_25F1C5478(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_25F1C5584(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_25F30605C();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

void *sub_25F1C5584(uint64_t a1, unint64_t a2)
{
  v3 = sub_25F1C55D0(a1, a2);
  sub_25F1C5700(&unk_28715BC40);
  return v3;
}

void *sub_25F1C55D0(uint64_t a1, unint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  v6 = sub_25F2E1468(v5, 0);
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

  result = sub_25F30605C();
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
        v10 = sub_25F304FAC();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_25F2E1468(v10, 0);
        result = sub_25F305F5C();
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

uint64_t sub_25F1C5700(uint64_t result)
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

  result = sub_25F1C57EC(result, v11, 1, v3);
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

char *sub_25F1C57EC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27FD531A0, &qword_25F308A90);
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

_BYTE **sub_25F1C58E0(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

void sub_25F1C5980(id a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

uint64_t sub_25F1C598C(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27FD52B48, &qword_25F3084D0);
  result = sub_25F30678C();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_25F1C5A20(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  v4 = 8;
  if (*(v3 + 64) > 8uLL)
  {
    v4 = *(v3 + 64);
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_25;
  }

  v5 = v4 + 1;
  v6 = 8 * (v4 + 1);
  if ((v4 + 1) <= 3)
  {
    v9 = ((a2 + ~(-1 << v6) - 254) >> v6) + 1;
    if (HIWORD(v9))
    {
      v7 = *(a1 + v5);
      if (!v7)
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v9 > 0xFF)
    {
      v7 = *(a1 + v5);
      if (!*(a1 + v5))
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v9 < 2)
    {
LABEL_25:
      v11 = *(a1 + v4);
      if (v11 >= 2)
      {
        return (v11 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v7 = *(a1 + v5);
  if (!*(a1 + v5))
  {
    goto LABEL_25;
  }

LABEL_14:
  v10 = (v7 - 1) << v6;
  if (v5 > 3)
  {
    v10 = 0;
  }

  if (v5)
  {
    if (v5 > 3)
    {
      LODWORD(v5) = 4;
    }

    if (v5 > 2)
    {
      if (v5 == 3)
      {
        LODWORD(v5) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v5) = *a1;
      }
    }

    else if (v5 == 1)
    {
      LODWORD(v5) = *a1;
    }

    else
    {
      LODWORD(v5) = *a1;
    }
  }

  return (v5 | v10) + 255;
}

void sub_25F1C5B38(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  if (v5 <= 8)
  {
    v5 = 8;
  }

  v6 = v5 + 1;
  if (a3 < 0xFF)
  {
    v7 = 0;
  }

  else if (v6 <= 3)
  {
    v10 = ((a3 + ~(-1 << (8 * v6)) - 254) >> (8 * v6)) + 1;
    if (HIWORD(v10))
    {
      v7 = 4;
    }

    else
    {
      if (v10 < 0x100)
      {
        v11 = 1;
      }

      else
      {
        v11 = 2;
      }

      if (v10 >= 2)
      {
        v7 = v11;
      }

      else
      {
        v7 = 0;
      }
    }
  }

  else
  {
    v7 = 1;
  }

  if (a2 > 0xFE)
  {
    v8 = a2 - 255;
    if (v6 >= 4)
    {
      bzero(a1, v5 + 1);
      *a1 = v8;
      v9 = 1;
      if (v7 > 1)
      {
        goto LABEL_39;
      }

      goto LABEL_36;
    }

    v9 = (v8 >> (8 * v6)) + 1;
    if (v5 != -1)
    {
      v12 = v8 & ~(-1 << (8 * v6));
      bzero(a1, v6);
      if (v6 != 3)
      {
        if (v6 == 2)
        {
          *a1 = v12;
          if (v7 > 1)
          {
LABEL_39:
            if (v7 == 2)
            {
              *&a1[v6] = v9;
            }

            else
            {
              *&a1[v6] = v9;
            }

            return;
          }
        }

        else
        {
          *a1 = v8;
          if (v7 > 1)
          {
            goto LABEL_39;
          }
        }

LABEL_36:
        if (v7)
        {
          a1[v6] = v9;
        }

        return;
      }

      *a1 = v12;
      a1[2] = BYTE2(v12);
    }

    if (v7 > 1)
    {
      goto LABEL_39;
    }

    goto LABEL_36;
  }

  if (v7 <= 1)
  {
    if (v7)
    {
      a1[v6] = 0;
      if (!a2)
      {
        return;
      }

LABEL_25:
      a1[v5] = -a2;
      return;
    }

LABEL_24:
    if (!a2)
    {
      return;
    }

    goto LABEL_25;
  }

  if (v7 == 2)
  {
    *&a1[v6] = 0;
    goto LABEL_24;
  }

  *&a1[v6] = 0;
  if (a2)
  {
    goto LABEL_25;
  }
}

uint64_t sub_25F1C5CF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_25F1C5D4C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 9))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_25F1C5D94(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_25F1C5DF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t Either.left.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 - 8);
  MEMORY[0x28223BE20](a1);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v6);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v8 = *(a1 + 16);
  v9 = *(v8 - 8);
  v10 = v9;
  if (EnumCaseMultiPayload == 1)
  {
    (*(v9 + 56))(a2, 1, 1);
    return (*(v4 + 8))(v6, a1);
  }

  else
  {
    v12 = *(a1 + 16);
    (*(v9 + 32))(a2, v6, v8);
    return (*(v10 + 56))(a2, 0, 1, v12);
  }
}

uint64_t Either.right.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 - 8);
  MEMORY[0x28223BE20](a1);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v6);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v8 = *(a1 + 24);
  v9 = *(v8 - 8);
  v10 = v9;
  if (EnumCaseMultiPayload == 1)
  {
    v11 = *(a1 + 24);
    (*(v9 + 32))(a2, v6, v8);
    return (*(v10 + 56))(a2, 0, 1, v11);
  }

  else
  {
    (*(v9 + 56))(a2, 1, 1);
    return (*(v4 + 8))(v6, a1);
  }
}

uint64_t Either.analyze<A>(left:right:)(void (*a1)(char *), uint64_t a2, void (*a3)(char *), uint64_t a4, uint64_t a5)
{
  v24 = a4;
  v25 = a3;
  v23 = a1;
  v5 = *(a5 + 24);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](a1);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v10 + 16);
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v7);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v22 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v18 + 16))(v17, v20, v19);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v6 + 32))(v9, v17, v5);
    v25(v9);
    return (*(v6 + 8))(v9, v5);
  }

  else
  {
    (*(v12 + 32))(v15, v17, v11);
    v23(v15);
    return (*(v12 + 8))(v15, v11);
  }
}

uint64_t Either.mapLeft<A>(_:)@<X0>(void (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v8 = *(a2 + 16);
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](a1);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v14, v16);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = *(a2 + 24);
    (*(*(v17 - 8) + 32))(a4, v14, v17);
  }

  else
  {
    (*(v9 + 32))(v12, v14, v8);
    a1(v12);
    (*(v9 + 8))(v12, v8);
    v17 = *(a2 + 24);
  }

  type metadata accessor for Either(0, a3, v17, v18);
  return swift_storeEnumTagMultiPayload();
}

uint64_t Either.flatMapLeft<A>(_:)@<X0>(void (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v8 = *(a2 + 16);
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](a1);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v14, v16);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = *(a2 + 24);
    (*(*(v17 - 8) + 32))(a4, v14, v17);
    type metadata accessor for Either(0, a3, v17, v18);
    return swift_storeEnumTagMultiPayload();
  }

  else
  {
    (*(v9 + 32))(v12, v14, v8);
    a1(v12);
    return (*(v9 + 8))(v12, v8);
  }
}

uint64_t Either.flattenedLeft<A>(type:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  MEMORY[0x28223BE20](a1);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v6, v8, a2);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    return (*(*(*(a2 + 16) - 8) + 32))(a3, v6);
  }

  (*(*(*(a2 + 24) - 8) + 32))(a3, v6);
  return swift_storeEnumTagMultiPayload();
}

uint64_t Either.mapRight<A>(_:)@<X0>(void (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v8 = *(a2 + 24);
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](a1);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v14, v16);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v9 + 32))(v12, v14, v8);
    a1(v12);
    (*(v9 + 8))(v12, v8);
    v18 = *(a2 + 16);
  }

  else
  {
    v18 = *(a2 + 16);
    (*(*(v18 - 8) + 32))(a4, v14, v18);
  }

  type metadata accessor for Either(0, v18, a3, v17);
  return swift_storeEnumTagMultiPayload();
}

uint64_t Either.flatMapRight<A>(_:)@<X0>(void (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v8 = *(a2 + 24);
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](a1);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v14, v16);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v9 + 32))(v12, v14, v8);
    a1(v12);
    return (*(v9 + 8))(v12, v8);
  }

  else
  {
    v18 = *(a2 + 16);
    (*(*(v18 - 8) + 32))(a4, v14, v18);
    type metadata accessor for Either(0, v18, a3, v19);
    return swift_storeEnumTagMultiPayload();
  }
}

uint64_t Either.flattenedRight<A>(type:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  MEMORY[0x28223BE20](a1);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v6, v8, a2);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return (*(*(*(a2 + 24) - 8) + 32))(a3, v6);
  }

  (*(*(*(a2 + 16) - 8) + 32))(a3, v6);
  return swift_storeEnumTagMultiPayload();
}

uint64_t Either.Discriminant.description.getter(char a1)
{
  if (a1)
  {
    return 0x7468676972;
  }

  else
  {
    return 1952867692;
  }
}

uint64_t Either.Discriminant.hashValue.getter(char a1)
{
  sub_25F30671C();
  MEMORY[0x25F8D88E0](a1 & 1);
  return sub_25F30676C();
}

uint64_t sub_25F1C6F64(uint64_t a1)
{
  sub_25F30671C();
  Either.Discriminant.hash(into:)(v3, *v1);
  return sub_25F30676C();
}

BOOL Either.discriminant.getter(uint64_t a1)
{
  v2 = *(a1 - 8);
  MEMORY[0x28223BE20](a1);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v4);
  v5 = swift_getEnumCaseMultiPayload() == 1;
  (*(v2 + 8))(v4, a1);
  return v5;
}

uint64_t Either<>.value.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  MEMORY[0x28223BE20](a1);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v5);
  return (*(*(*(a1 + 16) - 8) + 32))(a2, v5);
}

uint64_t Either<>.init(left:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27FD52B48, &qword_25F3084D0);
  sub_25F30678C();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    *a3 = *a1;
  }

  else
  {
    (*(*(a2 - 8) + 32))(a3, a1, a2);
  }

  type metadata accessor for Either(0, a2, v6, v7);

  return swift_storeEnumTagMultiPayload();
}

uint64_t Either<>.init(right:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27FD52B48, &qword_25F3084D0);
  sub_25F30678C();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    *a3 = *a1;
  }

  else
  {
    (*(*(a2 - 8) + 32))(a3, a1, a2);
  }

  type metadata accessor for Either(0, v6, a2, v7);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_25F1C7394(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_25F1C7410(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(*(a3 + 24) - 8) + 64);
  if (v3 <= *(*(*(a3 + 16) - 8) + 64))
  {
    v3 = *(*(*(a3 + 16) - 8) + 64);
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_25;
  }

  v4 = v3 + 1;
  v5 = 8 * (v3 + 1);
  if ((v3 + 1) <= 3)
  {
    v8 = ((a2 + ~(-1 << v5) - 254) >> v5) + 1;
    if (HIWORD(v8))
    {
      v6 = *(a1 + v4);
      if (!v6)
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v8 > 0xFF)
    {
      v6 = *(a1 + v4);
      if (!*(a1 + v4))
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v8 < 2)
    {
LABEL_25:
      v10 = *(a1 + v3);
      if (v10 >= 2)
      {
        return (v10 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v6 = *(a1 + v4);
  if (!*(a1 + v4))
  {
    goto LABEL_25;
  }

LABEL_14:
  v9 = (v6 - 1) << v5;
  if (v4 > 3)
  {
    v9 = 0;
  }

  if (v4)
  {
    if (v4 > 3)
    {
      LODWORD(v4) = 4;
    }

    if (v4 > 2)
    {
      if (v4 == 3)
      {
        LODWORD(v4) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v4) = *a1;
      }
    }

    else if (v4 == 1)
    {
      LODWORD(v4) = *a1;
    }

    else
    {
      LODWORD(v4) = *a1;
    }
  }

  return (v4 | v9) + 255;
}

void sub_25F1C7538(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  if (*(*(*(a4 + 24) - 8) + 64) > v5)
  {
    v5 = *(*(*(a4 + 24) - 8) + 64);
  }

  v6 = v5 + 1;
  if (a3 < 0xFF)
  {
    v7 = 0;
  }

  else if (v6 <= 3)
  {
    v10 = ((a3 + ~(-1 << (8 * v6)) - 254) >> (8 * v6)) + 1;
    if (HIWORD(v10))
    {
      v7 = 4;
    }

    else
    {
      if (v10 < 0x100)
      {
        v11 = 1;
      }

      else
      {
        v11 = 2;
      }

      if (v10 >= 2)
      {
        v7 = v11;
      }

      else
      {
        v7 = 0;
      }
    }
  }

  else
  {
    v7 = 1;
  }

  if (a2 > 0xFE)
  {
    v8 = a2 - 255;
    if (v6 >= 4)
    {
      bzero(a1, v5 + 1);
      *a1 = v8;
      v9 = 1;
      if (v7 > 1)
      {
        goto LABEL_39;
      }

      goto LABEL_36;
    }

    v9 = (v8 >> (8 * v6)) + 1;
    if (v5 != -1)
    {
      v12 = v8 & ~(-1 << (8 * v6));
      bzero(a1, v6);
      if (v6 != 3)
      {
        if (v6 == 2)
        {
          *a1 = v12;
          if (v7 > 1)
          {
LABEL_39:
            if (v7 == 2)
            {
              *&a1[v6] = v9;
            }

            else
            {
              *&a1[v6] = v9;
            }

            return;
          }
        }

        else
        {
          *a1 = v8;
          if (v7 > 1)
          {
            goto LABEL_39;
          }
        }

LABEL_36:
        if (v7)
        {
          a1[v6] = v9;
        }

        return;
      }

      *a1 = v12;
      a1[2] = BYTE2(v12);
    }

    if (v7 > 1)
    {
      goto LABEL_39;
    }

    goto LABEL_36;
  }

  if (v7 <= 1)
  {
    if (v7)
    {
      a1[v6] = 0;
      if (!a2)
      {
        return;
      }

LABEL_25:
      a1[v5] = -a2;
      return;
    }

LABEL_24:
    if (!a2)
    {
      return;
    }

    goto LABEL_25;
  }

  if (v7 == 2)
  {
    *&a1[v6] = 0;
    goto LABEL_24;
  }

  *&a1[v6] = 0;
  if (a2)
  {
    goto LABEL_25;
  }
}

uint64_t _s15PaddingPositionOwet(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for AnalyticsHints(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t NSObjectBox.value.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *MEMORY[0x277D85000];
  v5 = *((*MEMORY[0x277D85000] & *v1) + 0x58);
  swift_beginAccess();
  return (*(*(*((v4 & v3) + 0x50) - 8) + 16))(a1, &v1[v5]);
}

uint64_t NSObjectBox.value.setter(uint64_t a1)
{
  v3 = *v1;
  v4 = *MEMORY[0x277D85000];
  v5 = *((*MEMORY[0x277D85000] & *v1) + 0x58);
  swift_beginAccess();
  (*(*(*((v4 & v3) + 0x50) - 8) + 40))(&v1[v5], a1);
  return swift_endAccess();
}

id NSObjectBox.__allocating_init(_:)(uint64_t a1)
{
  v2 = v1;
  v4 = objc_allocWithZone(v1);
  v5 = sub_25F1C7C78(a1);
  (*(*(*(v2 + 10) - 8) + 8))(a1);
  return v5;
}

id NSObjectBox.init(_:)(uint64_t a1)
{
  v3 = *v1;
  v4 = *MEMORY[0x277D85000];
  v5 = sub_25F1C7C78(a1);
  (*(*(*((v4 & v3) + 0x50) - 8) + 8))(a1);
  return v5;
}

id NSObjectBox.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id NSObjectBox.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_25F1C7C78(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  (*(*(*((*MEMORY[0x277D85000] & *v1) + 0x50) - 8) + 16))(&v1[*((*MEMORY[0x277D85000] & *v1) + 0x58)], a1);
  v5.receiver = v1;
  v5.super_class = ObjectType;
  return objc_msgSendSuper2(&v5, sel_init);
}

uint64_t sub_25F1C7D60(uint64_t a1)
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

uint64_t IdentifiedSet.subscript.getter(uint64_t a1, uint64_t a2)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();

  return sub_25F304B8C();
}

{
  v10[1] = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v8 = v10 - v7;
  swift_getAssociatedConformanceWitness();
  sub_25F304BAC();
  return (*(v6 + 8))(v8, AssociatedTypeWitness);
}

uint64_t IdentifiedSet.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_25F1CCEA8(a1, a2, a3);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 8))(a2, AssociatedTypeWitness);
  v6 = sub_25F305C1C();
  v7 = *(*(v6 - 8) + 8);

  return v7(a1, v6);
}

void (*IdentifiedSet.subscript.modify(void *a1, uint64_t a2, uint64_t a3))(uint64_t **a1, char a2)
{
  v7 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x48uLL);
  }

  v9 = v8;
  *a1 = v8;
  *v8 = a3;
  v8[1] = v3;
  v10 = sub_25F305C1C();
  v9[2] = v10;
  v11 = *(v10 - 8);
  v9[3] = v11;
  v12 = *(v11 + 64);
  if (v7)
  {
    v9[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v9[4] = malloc(*(v11 + 64));
    v13 = malloc(v12);
  }

  v9[5] = v13;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9[6] = AssociatedTypeWitness;
  v15 = *(AssociatedTypeWitness - 8);
  v16 = v15;
  v9[7] = v15;
  if (v7)
  {
    v17 = swift_coroFrameAlloc();
  }

  else
  {
    v17 = malloc(*(v15 + 64));
  }

  v9[8] = v17;
  (*(v16 + 16))();
  IdentifiedSet.subscript.getter(a2, a3);
  return sub_25F1C8198;
}

void sub_25F1C8198(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = (*a1)[7];
  v3 = (*a1)[8];
  v5 = (*a1)[5];
  v6 = (*a1)[6];
  v8 = (*a1)[3];
  v7 = (*a1)[4];
  v9 = (*a1)[2];
  v10 = **a1;
  if (a2)
  {
    (*(v8 + 16))((*a1)[4], v5, v9);
    sub_25F1CCEA8(v7, v3, v10);
    (*(v4 + 8))(v3, v6);
    v11 = *(v8 + 8);
    v11(v7, v9);
    v11(v5, v9);
  }

  else
  {
    sub_25F1CCEA8((*a1)[5], v3, v10);
    (*(v4 + 8))(v3, v6);
    (*(v8 + 8))(v5, v9);
  }

  free(v3);
  free(v5);
  free(v7);

  free(v2);
}

uint64_t IdentifiedSet.init()@<X0>(uint64_t a1@<X0>, unint64_t *a3@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  swift_getTupleTypeMetadata2();
  v6 = sub_25F3052DC();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v8 = sub_25F1CCBBC(v6, AssociatedTypeWitness, a1, AssociatedConformanceWitness);

  *a3 = v8;
  return result;
}

uint64_t IdentifiedSet.init<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v12 = *(a3 - 8);
  MEMORY[0x28223BE20](a1);
  v14 = &v16[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v12 + 16))(v14, a1);
  v17 = a2;
  v18 = a3;
  v19 = a4;
  v20 = a5;
  IdentifiedSet.init<A>(_:uniquingElementsWith:)(v14, a2, a3, &v21);
  result = (*(v12 + 8))(a1, a3);
  *a6 = v21;
  return result;
}

uint64_t IdentifiedSet.init<A>(_:uniquingElementsWith:)@<X0>(uint64_t a1@<X0>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a8@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  swift_getTupleTypeMetadata2();
  v12 = sub_25F3052DC();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  sub_25F1CCBBC(v12, AssociatedTypeWitness, a4, AssociatedConformanceWitness);

  sub_25F304B4C();
  sub_25F30518C();
  result = (*(*(a5 - 8) + 8))(a1, a5);
  if (!v16)
  {
    *a8 = v17;
  }

  return result;
}

uint64_t IdentifiedSet.init(arrayLiteral:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v10 = a1;
  v7 = sub_25F30539C();
  WitnessTable = swift_getWitnessTable();
  result = IdentifiedSet.init<A>(_:)(&v10, a2, v7, a3, WitnessTable, &v11);
  *a4 = v11;
  return result;
}

uint64_t sub_25F1C86F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  sub_25F3064EC();
  swift_allocObject();
  v11 = sub_25F30527C();
  v13 = v12;
  v14 = *(TupleTypeMetadata2 + 48);
  sub_25F305FDC();
  (*(*(a5 - 8) + 16))(v13 + v14, a2, a5);
  sub_25F1F7314(v11, TupleTypeMetadata2);
  v16 = v15;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  sub_25F1CCBBC(v16, AssociatedTypeWitness, a5, AssociatedConformanceWitness);

  sub_25F304B4C();
  return sub_25F304AFC();
}

BOOL IdentifiedSet.contains(_:)(uint64_t a1, uint64_t a2)
{
  v13[1] = a1;
  v2 = *(a2 + 16);
  v3 = sub_25F305C1C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v13 - v5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v10 = v13 - v9;
  sub_25F305FDC();
  swift_getAssociatedConformanceWitness();
  sub_25F304B8C();
  (*(v8 + 8))(v10, AssociatedTypeWitness);
  v11 = (*(*(v2 - 8) + 48))(v6, 1, v2) != 1;
  (*(v4 + 8))(v6, v3);
  return v11;
}

uint64_t IdentifiedSet.insert(_:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v6 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v8 = &v12 - v7;
  MEMORY[0x28223BE20](v6);
  (*(v10 + 16))(&v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  sub_25F305FDC();
  swift_getAssociatedConformanceWitness();
  sub_25F304B4C();
  sub_25F304A9C();
  return (*(v5 + 8))(v8, AssociatedTypeWitness);
}

uint64_t IdentifiedSet.remove(_:)(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v5 = &v7 - v4;
  sub_25F305FDC();
  swift_getAssociatedConformanceWitness();
  sub_25F304B4C();
  sub_25F304A8C();
  return (*(v3 + 8))(v5, AssociatedTypeWitness);
}

Swift::Void __swiftcall IdentifiedSet.removeAll()()
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  sub_25F304B4C();

  sub_25F304B3C();
}

uint64_t IdentifiedSet.filter(_:)@<X0>(uint64_t a3@<X2>, void *a4@<X8>)
{
  v7 = *v4;
  v9 = *(a3 + 16);
  v8 = *(a3 + 24);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v13 = v7;
  sub_25F304B0C();

  swift_getWitnessTable();
  result = sub_25F30517C();
  if (!v5)
  {
    v13 = result;
    v11 = sub_25F30539C();
    WitnessTable = swift_getWitnessTable();
    return IdentifiedSet.init<A>(_:)(&v13, v9, v11, v8, WitnessTable, a4);
  }

  return result;
}

uint64_t IdentifiedSet.merge<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a2 + 24);
  v6[2] = *(a2 + 16);
  v6[3] = a3;
  v6[4] = v4;
  v6[5] = a4;
  return IdentifiedSet.merge<A>(_:uniquingElementsWith:)(a1, sub_25F1CD0AC, v6, a2, a3, a4);
}

uint64_t IdentifiedSet.merge<A>(_:uniquingElementsWith:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  MEMORY[0x28223BE20](a1);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v10);
  result = IdentifiedSet.init<A>(_:uniquingElementsWith:)(v10, *(a4 + 16), a5, &v14);
  if (!v6)
  {
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    sub_25F304B4C();
    return sub_25F304AFC();
  }

  return result;
}

uint64_t IdentifiedSet.merging<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v8[7] = *v5;
  v6 = *(a2 + 24);
  v8[2] = *(a2 + 16);
  v8[3] = a3;
  v8[4] = v6;
  v8[5] = a4;
  return IdentifiedSet.merging<A>(_:uniquingElementsWith:)(a1, sub_25F1CD4F4, v8, a2, a3, a4, a5);
}

uint64_t IdentifiedSet.merging<A>(_:uniquingElementsWith:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  v17 = *v7;

  IdentifiedSet.merge<A>(_:uniquingElementsWith:)(a1, a2, a3, a4, a5, a6);
  result = v17;
  if (v8)
  {
  }

  *a7 = v17;
  return result;
}

uint64_t IdentifiedSet.subtract<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v37 = a2;
  v6 = *(a2 + 16);
  v40 = *(v6 - 8);
  MEMORY[0x28223BE20](a1);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_25F305C1C();
  v32 = *(v36 - 8);
  v9 = MEMORY[0x28223BE20](v36);
  v35 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v32 - v12;
  v14 = *(a3 - 8);
  MEMORY[0x28223BE20](v11);
  v16 = &v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v33 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v19 = &v32 - v18;
  (*(v14 + 16))(v16, a1, a3);
  sub_25F3050DC();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v38 = v19;
  v39 = AssociatedTypeWitness;
  v21 = AssociatedConformanceWitness;
  sub_25F305CDC();
  v22 = v40;
  v23 = *(v40 + 48);
  if (v23(v13, 1, v6) != 1)
  {
    v34 = *(v22 + 32);
    v24 = (v32 + 8);
    v40 = v22 + 32;
    v25 = (v22 + 8);
    do
    {
      v34(v8, v13, v6);
      v26 = v6;
      v27 = v23;
      v28 = v21;
      v29 = v35;
      IdentifiedSet.remove(_:)(v8, v37);
      v30 = v29;
      v21 = v28;
      v23 = v27;
      v6 = v26;
      (*v24)(v30, v36);
      (*v25)(v8, v26);
      sub_25F305CDC();
    }

    while (v23(v13, 1, v26) != 1);
  }

  return (*(v33 + 8))(v38, v39);
}

uint64_t IdentifiedSet.subtracting<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  *a5 = *v5;

  return IdentifiedSet.subtract<A>(_:)(a1, a2, a3, a4);
}

uint64_t IdentifiedSet.formIntersection<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  Sequence<>.identified()(a3, a4, *(a2 + 24), &v11);
  v5 = *(a2 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  swift_getTupleTypeMetadata2();
  v7 = sub_25F3052DC();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  sub_25F1CCBBC(v7, AssociatedTypeWitness, v5, AssociatedConformanceWitness);

  sub_25F304B4C();
  swift_getWitnessTable();
  sub_25F30518C();

  *v10 = v11;
  return result;
}

uint64_t sub_25F1C98C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v43 = a3;
  v41 = a1;
  v9 = sub_25F305C1C();
  v36 = *(v9 - 8);
  v37 = v9;
  v10 = MEMORY[0x28223BE20](v9);
  v40 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v34 - v12;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v16 = *(TupleTypeMetadata2 - 8);
  v17 = MEMORY[0x28223BE20](TupleTypeMetadata2);
  v38 = &v34 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v34 - v20;
  v22 = *(a4 - 8);
  MEMORY[0x28223BE20](v19);
  v44 = &v34 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = *(v16 + 16);
  v39 = a2;
  v35 = v24;
  v24(v21, a2, TupleTypeMetadata2);
  v25 = *(TupleTypeMetadata2 + 48);
  v45 = v43;
  v42 = v25;
  v43 = a6;
  v27 = type metadata accessor for IdentifiedSet(0, a4, a6, v26);
  IdentifiedSet.subscript.getter(v21, v27);
  if ((*(v22 + 48))(v13, 1, a4) == 1)
  {
    (*(v36 + 8))(v13, v37);
    (*(v22 + 8))(&v21[v42], a4);
    return (*(*(AssociatedTypeWitness - 8) + 8))(v21, AssociatedTypeWitness);
  }

  else
  {
    (*(v22 + 32))(v44, v13, a4);
    v29 = *(v22 + 8);
    v29(&v21[v42], a4);
    (*(*(AssociatedTypeWitness - 8) + 8))(v21, AssociatedTypeWitness);
    v30 = v38;
    v35(v38, v39, TupleTypeMetadata2);
    v31 = *(TupleTypeMetadata2 + 48);
    v32 = v40;
    v33 = v44;
    (*(v22 + 16))(v40, v44, a4);
    (*(v22 + 56))(v32, 0, 1, a4);
    swift_getAssociatedConformanceWitness();
    sub_25F304B4C();
    sub_25F304B9C();
    v29(v33, a4);
    return (v29)(&v30[v31], a4);
  }
}

uint64_t IdentifiedSet.intersection<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  *a5 = *v5;

  return IdentifiedSet.formIntersection<A>(_:)(a1, a2, a3, a4);
}

uint64_t IdentifiedSet.values.getter(uint64_t a1)
{
  v2 = *v1;
  v4 = *(a1 + 16);
  v3 = *(a1 + 24);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v10[5] = v2;
  v10[2] = v4;
  v10[3] = v3;
  v5 = sub_25F304B0C();

  WitnessTable = swift_getWitnessTable();
  v8 = sub_25F1C1AC4(sub_25F1CD13C, v10, v5, v4, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v7);

  return v8;
}

uint64_t IdentifiedSet.ids.getter(uint64_t a1)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  sub_25F304ACC();

  swift_getWitnessTable();
  return sub_25F30570C();
}

uint64_t IdentifiedSet.mapValues<A>(_:)@<X0>(uint64_t a4@<X3>, uint64_t *a6@<X8>)
{
  IdentifiedSet.init()(a4, &v9);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v7 = sub_25F304B2C();

  *a6 = v7;
  return result;
}

uint64_t sub_25F1CA0A0(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v4 = *v2;
  v5 = *(a1 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  return a2(v4, AssociatedTypeWitness, v5, AssociatedConformanceWitness);
}

uint64_t IdentifiedSet.index(after:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  return sub_25F304AEC();
}

uint64_t sub_25F1CA364@<X0>(uint64_t (*a1)(void)@<X2>, uint64_t a2@<X8>)
{
  result = a1();
  *a2 = result;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5 & 1;
  return result;
}

uint64_t (*sub_25F1CA398(void *a1, uint64_t a2, uint64_t a3))()
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
  v6[4] = sub_25F1CA428(v6, *a2, *(a2 + 8), *(a2 + 16), a3);
  return sub_25F1CA424;
}

uint64_t (*sub_25F1CA428(void *a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5))()
{
  v9 = *(a5 + 16);
  a1[1] = v9;
  v10 = *(v9 - 8);
  a1[2] = v10;
  v11 = *(v10 + 64);
  if (MEMORY[0x277D84FD8])
  {
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v12 = malloc(v11);
  }

  a1[3] = v12;
  *a1 = *v5;
  IdentifiedSet.subscript.getter(a2, a3);
  return sub_25F1CA51C;
}

void sub_25F1CA51C(void *a1)
{
  v1 = a1[3];
  (*(a1[2] + 8))(v1, a1[1]);

  free(v1);
}

uint64_t sub_25F1CA584@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = IdentifiedSet.index(after:)(*a1, *(a1 + 8), *(a1 + 16), a2);
  *a3 = result;
  *(a3 + 8) = v5;
  *(a3 + 16) = v6 & 1;
  return result;
}

uint64_t sub_25F1CA5C4(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = IdentifiedSet.index(after:)(*a1, v4, v5, a2);
  v8 = v7;
  v10 = v9;
  result = sub_25F1AC3CC(v3, v4, v5);
  *a1 = v6;
  *(a1 + 8) = v8;
  *(a1 + 16) = v10 & 1;
  return result;
}

uint64_t sub_25F1CA64C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = *v2;

  v5 = IdentifiedSet.startIndex.getter(a1);
  v7 = v6;
  v9 = v8;

  *(a2 + 8) = v5;
  *(a2 + 16) = v7;
  *(a2 + 24) = v9 & 1;
  return result;
}

uint64_t sub_25F1CA6B8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FC7A8](a1, WitnessTable);
}

uint64_t sub_25F1CA714(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();
  v4 = sub_25F2B6F1C(v1, a1, WitnessTable);

  return v4;
}

uint64_t static IdentifiedSet<>.== infix(_:_:)(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();

  return sub_25F304B6C();
}

uint64_t OrderedIdentifiedSet.subscript.getter(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v6 = type metadata accessor for OrderedDictionary(0, AssociatedTypeWitness, v3, AssociatedConformanceWitness);
  return OrderedDictionary.subscript.getter(a1, v6);
}

uint64_t OrderedIdentifiedSet.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_25F1CD194(a1, a2, a3);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 8))(a2, AssociatedTypeWitness);
  v6 = sub_25F305C1C();
  v7 = *(*(v6 - 8) + 8);

  return v7(a1, v6);
}

void (*OrderedIdentifiedSet.subscript.modify(void *a1, uint64_t a2, uint64_t a3))(uint64_t **a1, char a2)
{
  v7 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x48uLL);
  }

  v9 = v8;
  *a1 = v8;
  *v8 = a3;
  v8[1] = v3;
  v10 = sub_25F305C1C();
  v9[2] = v10;
  v11 = *(v10 - 8);
  v9[3] = v11;
  v12 = *(v11 + 64);
  if (v7)
  {
    v9[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v9[4] = malloc(*(v11 + 64));
    v13 = malloc(v12);
  }

  v9[5] = v13;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9[6] = AssociatedTypeWitness;
  v15 = *(AssociatedTypeWitness - 8);
  v16 = v15;
  v9[7] = v15;
  if (v7)
  {
    v17 = swift_coroFrameAlloc();
  }

  else
  {
    v17 = malloc(*(v15 + 64));
  }

  v9[8] = v17;
  (*(v16 + 16))();
  OrderedIdentifiedSet.subscript.getter(a2, a3);
  return sub_25F1CABF4;
}

void sub_25F1CABF4(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = (*a1)[7];
  v3 = (*a1)[8];
  v5 = (*a1)[5];
  v6 = (*a1)[6];
  v8 = (*a1)[3];
  v7 = (*a1)[4];
  v9 = (*a1)[2];
  v10 = **a1;
  if (a2)
  {
    (*(v8 + 16))((*a1)[4], v5, v9);
    sub_25F1CD194(v7, v3, v10);
    (*(v4 + 8))(v3, v6);
    v11 = *(v8 + 8);
    v11(v7, v9);
    v11(v5, v9);
  }

  else
  {
    sub_25F1CD194((*a1)[5], v3, v10);
    (*(v4 + 8))(v3, v6);
    (*(v8 + 8))(v5, v9);
  }

  free(v3);
  free(v5);
  free(v7);

  free(v2);
}

double OrderedIdentifiedSet.init()@<D0>(uint64_t a1@<X0>, _OWORD *a3@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  swift_getTupleTypeMetadata2();
  v6 = sub_25F3052DC();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  OrderedDictionary.init(dictionaryLiteral:)(v6, AssociatedTypeWitness, a1, AssociatedConformanceWitness, &v9);
  result = *&v9;
  *a3 = v9;
  return result;
}

double OrderedIdentifiedSet.init<A>(_:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a6@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  swift_getTupleTypeMetadata2();
  v11 = sub_25F3052DC();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  OrderedDictionary.init(dictionaryLiteral:)(v11, AssociatedTypeWitness, a2, AssociatedConformanceWitness, &v14);
  type metadata accessor for OrderedDictionary(0, AssociatedTypeWitness, a2, AssociatedConformanceWitness);
  sub_25F30518C();
  (*(*(a3 - 8) + 8))(a1, a3);
  result = *&v15;
  *a6 = v15;
  return result;
}

uint64_t sub_25F1CAF6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v18[1] = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v10 = v18 - v9;
  v11 = sub_25F305C1C();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v18 - v13;
  sub_25F305FDC();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v16 = type metadata accessor for OrderedDictionary(0, AssociatedTypeWitness, a3, AssociatedConformanceWitness);
  OrderedDictionary.updateValue(_:forKey:)(a2, v10, v16, v14);
  (*(v8 + 8))(v10, AssociatedTypeWitness);
  return (*(v12 + 8))(v14, v11);
}

double OrderedIdentifiedSet.init(arrayLiteral:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a4@<X8>)
{
  v8 = a1;
  v6 = sub_25F30539C();
  swift_getWitnessTable();
  OrderedIdentifiedSet.init<A>(_:)(&v8, a2, v6, &v9);
  result = *&v9;
  *a4 = v9;
  return result;
}

BOOL OrderedIdentifiedSet.contains(_:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v16 = sub_25F305C1C();
  v4 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v6 = &v15 - v5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v10 = &v15 - v9;
  sub_25F305FDC();
  v17 = *v2;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v12 = type metadata accessor for OrderedDictionary(0, AssociatedTypeWitness, v3, AssociatedConformanceWitness);
  OrderedDictionary.subscript.getter(v10, v12);
  (*(v8 + 8))(v10, AssociatedTypeWitness);
  v13 = (*(*(v3 - 8) + 48))(v6, 1, v3) != 1;
  (*(v4 + 8))(v6, v16);
  return v13;
}

uint64_t OrderedIdentifiedSet.insert(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a2 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v9 = &v13 - v8;
  sub_25F305FDC();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v11 = type metadata accessor for OrderedDictionary(0, AssociatedTypeWitness, v5, AssociatedConformanceWitness);
  OrderedDictionary.updateValue(_:forKey:)(a1, v9, v11, a3);
  return (*(v7 + 8))(v9, AssociatedTypeWitness);
}

uint64_t OrderedIdentifiedSet.remove(_:)@<X0>(uint64_t a2@<X1>, char *x8_0@<X8>)
{
  v4 = *(a2 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v8 = &v12 - v7;
  sub_25F305FDC();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v10 = type metadata accessor for OrderedDictionary(0, AssociatedTypeWitness, v4, AssociatedConformanceWitness);
  OrderedDictionary.removeValue(forKey:)(v8, v10, x8_0);
  return (*(v6 + 8))(v8, AssociatedTypeWitness);
}

Swift::Void __swiftcall OrderedIdentifiedSet.removeAll()()
{
  v1 = *(v0 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  type metadata accessor for OrderedDictionary(0, AssociatedTypeWitness, v1, AssociatedConformanceWitness);

  OrderedDictionary.removeAll()();
}

double OrderedIdentifiedSet.filter(_:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  v10 = *v4;
  v9 = v4[1];
  v11 = *(a3 + 16);
  v12 = *(a3 + 24);

  OrderedIdentifiedSet.init()(v11, &v19);
  v17[6] = v10;
  v17[7] = v9;
  v17[2] = v11;
  v17[3] = v12;
  v17[4] = a1;
  v17[5] = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v15 = type metadata accessor for OrderedDictionary(0, AssociatedTypeWitness, v11, AssociatedConformanceWitness);
  OrderedDictionary.filter(_:)(sub_25F1CD394, v17, v15, &v18);

  if (!v5)
  {
    result = *&v18;
    *a4 = v18;
  }

  return result;
}

uint64_t OrderedIdentifiedSet.append<A>(contentsOf:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  MEMORY[0x28223BE20](a1);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v7);
  v9 = *(a2 + 16);
  OrderedIdentifiedSet.init<A>(_:)(v7, v9, a3, &v14);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v12 = type metadata accessor for OrderedDictionary(0, AssociatedTypeWitness, v9, AssociatedConformanceWitness);
  OrderedDictionary.append(contentsOf:)(&v14, v12);
}

uint64_t OrderedIdentifiedSet.subtract<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v37 = a2;
  v6 = *(a2 + 16);
  v40 = *(v6 - 8);
  MEMORY[0x28223BE20](a1);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_25F305C1C();
  v32 = *(v36 - 8);
  v9 = MEMORY[0x28223BE20](v36);
  v35 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v32 - v12;
  v14 = *(a3 - 8);
  MEMORY[0x28223BE20](v11);
  v16 = &v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v33 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v19 = &v32 - v18;
  (*(v14 + 16))(v16, a1, a3);
  sub_25F3050DC();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v38 = v19;
  v39 = AssociatedTypeWitness;
  v21 = AssociatedConformanceWitness;
  sub_25F305CDC();
  v22 = v40;
  v23 = *(v40 + 48);
  if (v23(v13, 1, v6) != 1)
  {
    v34 = *(v22 + 32);
    v24 = (v32 + 8);
    v40 = v22 + 32;
    v25 = (v22 + 8);
    do
    {
      v34(v8, v13, v6);
      v26 = v6;
      v27 = v23;
      v28 = v21;
      v29 = v35;
      OrderedIdentifiedSet.remove(_:)(v37, v35);
      v30 = v29;
      v21 = v28;
      v23 = v27;
      v6 = v26;
      (*v24)(v30, v36);
      (*v25)(v8, v26);
      sub_25F305CDC();
    }

    while (v23(v13, 1, v26) != 1);
  }

  return (*(v33 + 8))(v38, v39);
}

double OrderedIdentifiedSet.formIntersection<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  Sequence<>.identified()(a3, a4, *(a2 + 24), &v13);
  v12[1] = *v4;
  v7 = *(a2 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  swift_getTupleTypeMetadata2();
  v9 = sub_25F3052DC();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  OrderedDictionary.init(dictionaryLiteral:)(v9, AssociatedTypeWitness, v7, AssociatedConformanceWitness, v12);
  type metadata accessor for OrderedDictionary(0, AssociatedTypeWitness, v7, AssociatedConformanceWitness);
  swift_getWitnessTable();
  sub_25F30518C();

  result = *&v13;
  *v5 = v13;
  return result;
}

uint64_t sub_25F1CBF9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v45 = a3;
  v43 = a1;
  v9 = sub_25F305C1C();
  v38 = *(v9 - 8);
  v39 = v9;
  v10 = MEMORY[0x28223BE20](v9);
  v42 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v36 - v12;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v16 = *(TupleTypeMetadata2 - 8);
  v17 = MEMORY[0x28223BE20](TupleTypeMetadata2);
  v40 = &v36 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v36 - v20;
  v22 = *(a4 - 8);
  MEMORY[0x28223BE20](v19);
  v46 = &v36 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = *(v16 + 16);
  v41 = a2;
  v37 = v24;
  v24(v21, a2, TupleTypeMetadata2);
  v25 = *(TupleTypeMetadata2 + 48);
  v47 = v45;
  v44 = v25;
  v45 = a6;
  v27 = type metadata accessor for IdentifiedSet(0, a4, a6, v26);
  IdentifiedSet.subscript.getter(v21, v27);
  if ((*(v22 + 48))(v13, 1, a4) == 1)
  {
    (*(v38 + 8))(v13, v39);
    (*(v22 + 8))(&v21[v44], a4);
    return (*(*(AssociatedTypeWitness - 8) + 8))(v21, AssociatedTypeWitness);
  }

  else
  {
    (*(v22 + 32))(v46, v13, a4);
    v29 = *(v22 + 8);
    v29(&v21[v44], a4);
    (*(*(AssociatedTypeWitness - 8) + 8))(v21, AssociatedTypeWitness);
    v30 = v40;
    v37(v40, v41, TupleTypeMetadata2);
    v31 = *(TupleTypeMetadata2 + 48);
    v32 = v42;
    v33 = v46;
    (*(v22 + 16))(v42, v46, a4);
    (*(v22 + 56))(v32, 0, 1, a4);
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v35 = type metadata accessor for OrderedDictionary(0, AssociatedTypeWitness, a4, AssociatedConformanceWitness);
    OrderedDictionary.subscript.setter(v32, v30, v35);
    v29(v33, a4);
    return (v29)(v30 + v31, a4);
  }
}

uint64_t sub_25F1CC420@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t (*a5)(uint64_t, uint64_t, uint64_t, uint64_t)@<X4>, void *a6@<X8>)
{
  v12 = *v6;
  v13 = v6[1];
  *a6 = v12;
  a6[1] = v13;

  return a5(a1, a2, a3, a4);
}

uint64_t OrderedIdentifiedSet.ids.getter(uint64_t a1)
{
  v1 = *(a1 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  type metadata accessor for OrderedDictionary(0, AssociatedTypeWitness, v1, AssociatedConformanceWitness);
  sub_25F1F3320();
}

uint64_t sub_25F1CC57C(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v3 = *(a1 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v6 = type metadata accessor for OrderedDictionary(0, AssociatedTypeWitness, v3, AssociatedConformanceWitness);
  return a2(v6);
}

Swift::Int __swiftcall OrderedIdentifiedSet.index(after:)(Swift::Int after)
{
  v1 = __OFADD__(after, 1);
  result = after + 1;
  if (v1)
  {
    __break(1u);
  }

  return result;
}

uint64_t OrderedIdentifiedSet.subscript.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a2 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v10 = &v14 - v9;
  v14 = *v3;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v12 = type metadata accessor for OrderedDictionary(0, AssociatedTypeWitness, v6, AssociatedConformanceWitness);
  OrderedDictionary.subscript.getter(v10, a3, a1, v12);
  return (*(v8 + 8))(v10, AssociatedTypeWitness);
}

uint64_t sub_25F1CC77C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = OrderedIdentifiedSet.endIndex.getter(a1);
  *a2 = result;
  return result;
}

uint64_t (*sub_25F1CC7A4(uint64_t **a1, uint64_t *a2, uint64_t a3))()
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
  v6[4] = sub_25F1CC874(v6, *a2, a3);
  return sub_25F1CD510;
}

void sub_25F1CC82C(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

void (*sub_25F1CC874(uint64_t *a1, uint64_t a2, uint64_t a3))(uint64_t a1)
{
  v7 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x28uLL);
  }

  v9 = v8;
  *a1 = v8;
  v10 = *(a3 + 16);
  *(v8 + 16) = v10;
  v11 = *(v10 - 8);
  *(v8 + 24) = v11;
  v12 = *(v11 + 64);
  if (v7)
  {
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v13 = malloc(v12);
  }

  *(v9 + 32) = v13;
  *v9 = *v3;
  OrderedIdentifiedSet.subscript.getter(a2, a3, v13);
  return sub_25F1CC970;
}

void sub_25F1CC970(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 32);
  (*(*(*a1 + 24) + 8))(v2, *(*a1 + 16));
  free(v2);

  free(v1);
}

__n128 sub_25F1CC9D4@<Q0>(__n128 *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  a1[1].n128_u64[0] = 0;
  return result;
}

uint64_t sub_25F1CC9E4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FC7A8](a1, WitnessTable);
}

uint64_t sub_25F1CCA38(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();
  v4 = sub_25F2B6F1C(v1, a1, WitnessTable);

  return v4;
}

uint64_t static OrderedIdentifiedSet<>.== infix(_:_:)(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = a1[1];
  v8 = *a2;
  v9 = a2[1];
  v14[0] = *a1;
  v14[1] = v7;
  v13[0] = v8;
  v13[1] = v9;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();

  LOBYTE(AssociatedConformanceWitness) = static OrderedDictionary<>.== infix(_:_:)(v14, v13, AssociatedTypeWitness, a3, AssociatedConformanceWitness, a4);

  return AssociatedConformanceWitness & 1;
}

unint64_t sub_25F1CCBBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v9 = *(TupleTypeMetadata2 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](TupleTypeMetadata2);
  v12 = v23 - v11;
  if (sub_25F30531C())
  {
    sub_25F30635C();
    v13 = sub_25F30634C();
  }

  else
  {
    v13 = MEMORY[0x277D84F98];
  }

  result = sub_25F30531C();
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
        if (sub_25F3052FC())
        {
          (*(v9 + 16))(v12, a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v15, TupleTypeMetadata2);
        }

        else
        {
          result = sub_25F30601C();
          if (v23[0] != 8)
          {
            goto LABEL_19;
          }

          v28 = result;
          (*v26)(v12, &v28, TupleTypeMetadata2);
          swift_unknownObjectRelease();
        }

        result = sub_25F281E0C(v12, a2, v27);
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

uint64_t sub_25F1CCEA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_25F305C1C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13 - v7;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  (*(v11 + 16))(&v13 - v10, a2, AssociatedTypeWitness);
  (*(v6 + 16))(v8, a1, v5);
  swift_getAssociatedConformanceWitness();
  sub_25F304B4C();
  return sub_25F304B9C();
}

uint64_t sub_25F1CD194(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = sub_25F305C1C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v17 - v8;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v12 = &v17 - v11;
  (*(v13 + 16))(&v17 - v11, a2, AssociatedTypeWitness);
  (*(v7 + 16))(v9, a1, v6);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v15 = type metadata accessor for OrderedDictionary(0, AssociatedTypeWitness, v5, AssociatedConformanceWitness);
  return OrderedDictionary.subscript.setter(v9, v12, v15);
}

uint64_t sub_25F1CD448(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_25F1CD49C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t SendableAnyHashable.init<A>(_:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v20 = a3;
  v8 = *(a2 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](a1);
  a4[3] = v10;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a4);
  v12 = *(v8 + 16);
  v12(boxed_opaque_existential_1, a1, a2);
  v12((&v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0)), a1, a2);
  v13 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = a2;
  *(v14 + 24) = a3;
  v15 = *(v8 + 32);
  v15(v14 + v13, &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a2);
  a4[4] = sub_25F1CD6EC;
  a4[5] = v14;
  v15(&v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a1, a2);
  v16 = swift_allocObject();
  v17 = v20;
  *(v16 + 16) = a2;
  *(v16 + 24) = v17;
  result = (v15)(v16 + v13, &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a2);
  a4[6] = sub_25F1CD9EC;
  a4[7] = v16;
  return result;
}

uint64_t sub_25F1CD744(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_25F305C1C();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v17[-v8];
  v10 = *(a3 - 8);
  MEMORY[0x28223BE20](v7);
  v12 = &v17[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_25F1B7118(a1, v17);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD53428, &qword_25F309000);
  v13 = swift_dynamicCast();
  v14 = *(v10 + 56);
  if (v13)
  {
    v14(v9, 0, 1, a3);
    (*(v10 + 32))(v12, v9, a3);
    v15 = sub_25F304DCC();
    (*(v10 + 8))(v12, a3);
  }

  else
  {
    v14(v9, 1, 1, a3);
    (*(v6 + 8))(v9, v5);
    v15 = 0;
  }

  return v15 & 1;
}

uint64_t objectdestroyTm_0()
{
  (*(*(*(v0 + 16) - 8) + 8))(v0 + ((*(*(*(v0 + 16) - 8) + 80) + 32) & ~*(*(*(v0 + 16) - 8) + 80)));

  return swift_deallocObject();
}

uint64_t SendableAnyHashable.description.getter()
{
  sub_25F1B7118(v0, &v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD53428, &qword_25F309000);
  return sub_25F304E7C();
}

uint64_t SendableAnyHashable.hashValue.getter()
{
  sub_25F30671C();
  (*(v0 + 32))(v2);
  return sub_25F30676C();
}

uint64_t sub_25F1CDB10()
{
  sub_25F30671C();
  (*(v0 + 32))(v2);
  return sub_25F30676C();
}

uint64_t sub_25F1CDB80(uint64_t a1)
{
  sub_25F30671C();
  (*(v1 + 32))(v3);
  return sub_25F30676C();
}

unint64_t sub_25F1CDBC8()
{
  result = qword_27FD53430[0];
  if (!qword_27FD53430[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FD53430);
  }

  return result;
}

uint64_t sub_25F1CDC1C()
{
  sub_25F1B7118(v0, &v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD53428, &qword_25F309000);
  return sub_25F304E7C();
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

uint64_t sub_25F1CDCA8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_25F1CDCF0(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t CommandLineArgumentConsumer.name.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t CommandLineArgumentConsumer.aggregate.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t CommandLineArgumentConsumer.init(_:limit:aggregate:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  if ((a4 & 1) != 0 || a3)
  {
    *a7 = result;
    *(a7 + 8) = a2;
    *(a7 + 16) = a3;
    *(a7 + 24) = a4 & 1;
    *(a7 + 32) = a5;
    *(a7 + 40) = a6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t CommandLineArgumentConsumer.init(_:string:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = result;
  *(a4 + 8) = a2;
  *(a4 + 16) = 1;
  *(a4 + 24) = 0;
  *(a4 + 32) = sub_25F1CDE08;
  *(a4 + 40) = a3;
  return result;
}

uint64_t CommandLineArgumentConsumer.init(_:strings:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = result;
  *(a4 + 8) = a2;
  *(a4 + 16) = 0;
  *(a4 + 24) = 1;
  *(a4 + 32) = sub_25F1CDF80;
  *(a4 + 40) = a3;
  return result;
}

uint64_t sub_25F1CDE7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  v6 = swift_modifyAtWritableKeyPath();
  v8 = v7;
  v9 = *v7;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v8 = v9;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v9 = sub_25F2EFB20(0, *(v9 + 2) + 1, 1, v9);
    *v8 = v9;
  }

  v12 = *(v9 + 2);
  v11 = *(v9 + 3);
  if (v12 >= v11 >> 1)
  {
    v9 = sub_25F2EFB20((v11 > 1), v12 + 1, 1, v9);
    *v8 = v9;
  }

  *(v9 + 2) = v12 + 1;
  v13 = &v9[16 * v12];
  *(v13 + 4) = a2;
  *(v13 + 5) = a3;
  return v6(&v15, 0);
}

uint64_t CommandLineArgumentConsumer.shortUsage.getter(uint64_t result)
{
  v2 = v1[1];
  v17 = *v1;
  v18 = v2;
  v19 = v1[2];
  if (BYTE8(v2))
  {
    v3 = sub_25F304C0C();
    MEMORY[0x25F8D7130](v3);

    MEMORY[0x25F8D7130](93, 0xE100000000000000);
    return 91;
  }

  else
  {
    v4 = v18;
    if (v18 == 1)
    {
      return sub_25F304C0C();
    }

    else if ((v18 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      if (v18)
      {
        v15 = MEMORY[0x277D84F90];
        sub_25F1BD008(0, v18, 0);
        v5 = 0;
        v6 = v15;
        do
        {
          v7 = sub_25F1CE148(v5, &v17);
          v16 = v6;
          v10 = *(v6 + 16);
          v9 = *(v6 + 24);
          if (v10 >= v9 >> 1)
          {
            v12 = v7;
            v13 = v8;
            sub_25F1BD008((v9 > 1), v10 + 1, 1);
            v8 = v13;
            v7 = v12;
            v6 = v16;
          }

          ++v5;
          *(v6 + 16) = v10 + 1;
          v11 = v6 + 16 * v10;
          *(v11 + 32) = v7;
          *(v11 + 40) = v8;
        }

        while (v4 != v5);
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD52F80, &qword_25F309110);
      sub_25F1C3498();
      v14 = sub_25F304CAC();

      return v14;
    }
  }

  return result;
}

uint64_t sub_25F1CE148(uint64_t a1, void *a2)
{
  result = sub_25F304C0C();
  if (__OFADD__(a1, 1))
  {
    __break(1u);
  }

  else
  {
    v4 = result;
    v5 = sub_25F3064DC();
    v7 = v6;

    MEMORY[0x25F8D7130](v5, v7);

    return v4;
  }

  return result;
}

uint64_t sub_25F1CE1F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
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

uint64_t sub_25F1CE240(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_25F1CE288(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

void sub_25F1CE300(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v17[3] = a2;
  v17[2] = a1;
  if ((a4 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(a4) & 0xF;
  }

  else
  {
    v4 = a3 & 0xFFFFFFFFFFFFLL;
  }

  if (v4)
  {
    v7 = 0;
    v8 = a4 & 0xFFFFFFFFFFFFFFLL;
    v9 = (a4 & 0xFFFFFFFFFFFFFFFLL) + 32;
    do
    {
      if ((a4 & 0x1000000000000000) != 0)
      {
        v12 = sub_25F305F9C();
        v14 = v13;
      }

      else
      {
        if ((a4 & 0x2000000000000000) != 0)
        {
          v17[0] = a3;
          v17[1] = v8;
          v11 = v17 + v7;
        }

        else
        {
          v10 = v9;
          if ((a3 & 0x1000000000000000) == 0)
          {
            v10 = sub_25F30605C();
          }

          v11 = (v10 + v7);
        }

        v12 = *v11;
        if ((*v11 & 0x80000000) == 0)
        {
          goto LABEL_15;
        }

        v16 = (__clz(v12 ^ 0xFF) - 24);
        if (v16 <= 2)
        {
          if (v16 != 1)
          {
            v12 = v11[1] & 0x3F | ((v12 & 0x1F) << 6);
            v14 = 2;
            goto LABEL_16;
          }

LABEL_15:
          v14 = 1;
          goto LABEL_16;
        }

        if (v16 == 3)
        {
          v12 = ((v12 & 0xF) << 12) | ((v11[1] & 0x3F) << 6) | v11[2] & 0x3F;
          v14 = 3;
        }

        else
        {
          v12 = ((v12 & 0xF) << 18) | ((v11[1] & 0x3F) << 12) | ((v11[2] & 0x3F) << 6) | v11[3] & 0x3F;
          v14 = 4;
        }
      }

LABEL_16:
      if (v12 < 0x80)
      {
        v17[0] = v12;
        v15 = sub_25F304EFC();
        MEMORY[0x25F8D7120](v15);
      }

      v7 += v14;
    }

    while (v7 < v4);
  }
}