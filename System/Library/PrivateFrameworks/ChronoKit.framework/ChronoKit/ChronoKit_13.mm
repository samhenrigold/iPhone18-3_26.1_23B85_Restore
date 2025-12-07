uint64_t sub_1BF4C7860@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1BF4E7194();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v28 - v11;
  (*(v6 + 16))(v8, a1, v5, v10);
  swift_beginAccess();

  sub_1BF4E70A4();

  v13 = *(a1 + *(type metadata accessor for ControlCacheKey(0) + 20));
  if (v13)
  {
    v14 = v13;
    sub_1BF39B13C();
    sub_1BF4E70A4();

    v15 = *(v6 + 32);
    v15(v12, v8, v5);
    v16 = [v14 intentReference];
    v28 = a2;
    if (v16)
    {
      v17 = v16;
      v18 = [v16 stableHash];

      v29 = v18;
      v19 = sub_1BF4E96A4();
      v21 = v20;
    }

    else
    {
      v21 = 0xE400000000000000;
      v19 = 1701736302;
    }

    v24 = [v14 kind];
    v25 = sub_1BF4E8914();
    v27 = v26;

    v29 = v25;
    v30 = v27;
    MEMORY[0x1BFB58C90](11565, 0xE200000000000000);
    MEMORY[0x1BFB58C90](v19, v21);

    MEMORY[0x1BFB58C90](0x7374657373612D2DLL, 0xE800000000000000);
    sub_1BF4E70B4();

    return (v15)(v28, v12, v5);
  }

  else
  {
    v22 = *(v6 + 32);
    v22(v12, v8, v5);
    return (v22)(a2, v12, v5);
  }
}

uint64_t ControlsCacheURLProvider.deinit()
{

  return v0;
}

uint64_t ControlsCacheURLProvider.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1BF4C7BFC(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1BF4C86E8(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_1BF4C7C68(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_1BF4C7C68(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1BF4E9694();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v5 = sub_1BF4E8C04();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_1BF4C7E30(v7, v8, a1, v4);
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
    return sub_1BF4C7D60(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1BF4C7D60(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
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
      if (v13 || (result = sub_1BF4E9734(), (result & 1) == 0))
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

uint64_t sub_1BF4C7E30(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
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
      result = sub_1BF4C86C0(v8);
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
        sub_1BF4C840C((*a3 + 16 * *v87), (*a3 + 16 * *v89), (*a3 + 16 * v90), v9);
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
        result = sub_1BF4E9734();
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
            result = sub_1BF4E9734();
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
      result = sub_1BF4322F0(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v40 = *(v8 + 2);
    v39 = *(v8 + 3);
    v41 = v40 + 1;
    if (v40 >= v39 >> 1)
    {
      result = sub_1BF4322F0((v39 > 1), v40 + 1, 1, v8);
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
        sub_1BF4C840C((*a3 + 16 * v82), (*a3 + 16 * *&v8[16 * v44 + 32]), (*a3 + 16 * v83), v43);
        if (v5)
        {
        }

        if (v83 < v82)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_1BF4C86C0(v8);
        }

        if (v9 >= *(v8 + 2))
        {
          goto LABEL_118;
        }

        v84 = &v8[16 * v9];
        *(v84 + 4) = v82;
        *(v84 + 5) = v83;
        result = sub_1BF4C8634(v44);
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
    if (v37 || (result = sub_1BF4E9734(), (result & 1) == 0))
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

uint64_t sub_1BF4C840C(char *__dst, char *__src, char *a3, char *a4)
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
      if (!v16 && (sub_1BF4E9734() & 1) != 0)
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
      if (!v21 && (sub_1BF4E9734() & 1) != 0)
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

uint64_t sub_1BF4C8634(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1BF4C86C0(v3);
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

uint64_t sub_1BF4C86FC(uint64_t a1, uint64_t a2, size_t *a3)
{
  v44 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8AD8, &unk_1BF4ED6C0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v34 - v5;
  v7 = sub_1BF4E7194();
  v38 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v42 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v34 - v10;
  v12 = sub_1BF4E7004();
  v35 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BF4E8E24();
  v43 = a2;
  swift_beginAccess();
  v16 = sub_1BF48238C(v15);
  sub_1BF4E9104();
  if (v48)
  {
    v17 = (v38 + 56);
    v49 = (v38 + 32);
    v39 = (v38 + 8);
    v36 = (v38 + 16);
    v37 = v11;
    v40 = v16;
    v41 = v14;
    do
    {
      sub_1BF38EB2C(&v47, v46);
      sub_1BF38D324(v46, v45);
      v18 = swift_dynamicCast();
      v19 = *v17;
      if (v18)
      {
        v20 = v12;
        v19(v6, 0, 1, v7);
        v21 = *v49;
        (*v49)(v11, v6, v7);
        sub_1BF4E7174();
        v22 = v11;

        v23 = sub_1BF4E8A74();

        if (v23)
        {
          (*v36)(v42, v22, v7);
          v24 = v44;
          v25 = *v44;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *v24 = v25;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v25 = sub_1BF4323F4(0, v25[2] + 1, 1, v25);
            *v44 = v25;
          }

          v28 = v25[2];
          v27 = v25[3];
          if (v28 >= v27 >> 1)
          {
            v32 = sub_1BF4323F4((v27 > 1), v28 + 1, 1, v25);
            *v44 = v32;
          }

          v29 = v38;
          v30 = v37;
          (*(v38 + 8))(v37, v7);
          v31 = *v44;
          *(v31 + 16) = v28 + 1;
          v11 = v30;
          v21((v31 + ((*(v29 + 80) + 32) & ~*(v29 + 80)) + *(v29 + 72) * v28), v42, v7);
          v12 = v20;
          v14 = v41;
        }

        else
        {
          (*v39)(v22, v7);
          v14 = v41;
          v11 = v22;
        }
      }

      else
      {
        v19(v6, 1, 1, v7);
        sub_1BF3FA9B4(v6);
      }

      __swift_destroy_boxed_opaque_existential_1Tm(v46);
      sub_1BF4E9104();
    }

    while (v48);
  }

  return (*(v35 + 8))(v14, v12);
}

uint64_t static WidgetCacheKey.allWidgetsAndMetrics(for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1BF4E7194();
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  result = type metadata accessor for WidgetCacheKey(0);
  v7 = *(result + 24);
  *(a2 + *(result + 20)) = 0;
  *(a2 + v7) = 0;
  return result;
}

id static WidgetCacheKey.allMetrics(of:for:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1BF4E7194();
  (*(*(v6 - 8) + 16))(a3, a2, v6);
  v7 = type metadata accessor for WidgetCacheKey(0);
  v8 = *(v7 + 24);
  *(a3 + *(v7 + 20)) = a1;
  *(a3 + v8) = 0;

  return a1;
}

uint64_t WidgetCacheKey.init(baseURL:entryKey:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a2 + 8);
  v7 = *a2;
  v8 = v6;
  sub_1BF393884(a2);
  v9 = type metadata accessor for WidgetCacheKey(0);
  v10 = *(v9 + 20);
  v11 = *(v9 + 24);
  v12 = sub_1BF4E7194();
  result = (*(*(v12 - 8) + 32))(a3, a1, v12);
  *(a3 + v10) = v7;
  *(a3 + v11) = v8;
  return result;
}

uint64_t WidgetCacheKey.init(baseURL:widget:metrics:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for WidgetCacheKey(0);
  v9 = *(v8 + 20);
  v10 = *(v8 + 24);
  v11 = sub_1BF4E7194();
  result = (*(*(v11 - 8) + 32))(a4, a1, v11);
  *(a4 + v9) = a2;
  *(a4 + v10) = a3;
  return result;
}

void *WidgetCacheKey.widget.getter()
{
  v1 = *(v0 + *(type metadata accessor for WidgetCacheKey(0) + 20));
  v2 = v1;
  return v1;
}

void *WidgetCacheKey.metrics.getter()
{
  v1 = *(v0 + *(type metadata accessor for WidgetCacheKey(0) + 24));
  v2 = v1;
  return v1;
}

uint64_t WidgetCacheKey.description.getter()
{
  v1 = type metadata accessor for WidgetCacheKey(0);
  v2 = *(v0 + *(v1 + 20));
  if (!v2)
  {
    return sub_1BF4E7074();
  }

  if (*(v0 + *(v1 + 24)))
  {
    sub_1BF4E92E4();

    sub_1BF4E7194();
    sub_1BF4C9618(&qword_1EDC9F100, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
    v3 = sub_1BF4E96A4();
    MEMORY[0x1BFB58C90](v3);

    MEMORY[0x1BFB58C90](0x3A74656764697720, 0xE900000000000020);
    v4 = [v2 extensionIdentity];
    v5 = [v4 description];
    v6 = sub_1BF4E8914();
    v8 = v7;

    MEMORY[0x1BFB58C90](v6, v8);

    MEMORY[0x1BFB58C90](0x697274656D202B20, 0xEA00000000007363);
  }

  else
  {
    sub_1BF4E92E4();

    sub_1BF4E7194();
    sub_1BF4C9618(&qword_1EDC9F100, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
    v10 = sub_1BF4E96A4();
    MEMORY[0x1BFB58C90](v10);

    MEMORY[0x1BFB58C90](0x3A74656764697720, 0xE900000000000020);
    v11 = [v2 extensionIdentity];
    v12 = [v11 description];
    v13 = sub_1BF4E8914();
    v15 = v14;

    MEMORY[0x1BFB58C90](v13, v15);
  }

  return 0x3A4C525565736162;
}

void WidgetCacheKey.hash(into:)(uint64_t a1, double a2)
{
  v3 = v2;
  sub_1BF4E7194();
  sub_1BF4C9618(&qword_1EDC9D610, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
  sub_1BF4E8884();
  v4 = type metadata accessor for WidgetCacheKey(0);
  v5 = *(v2 + *(v4 + 20));
  sub_1BF4E9824();
  if (v5)
  {
    v6 = v5;
    sub_1BF4E90B4();
  }

  v7 = *(v3 + *(v4 + 24));
  if (v7)
  {
    sub_1BF4E9824();
    v8 = v7;
    sub_1BF4E90B4();
  }

  else
  {
    sub_1BF4E9824();
  }
}

uint64_t WidgetCacheKey.hashValue.getter(double a1)
{
  sub_1BF4E9804();
  WidgetCacheKey.hash(into:)(v3, v1);
  return sub_1BF4E9844();
}

uint64_t sub_1BF4C9438(double a1)
{
  sub_1BF4E9804();
  WidgetCacheKey.hash(into:)(v3, v1);
  return sub_1BF4E9844();
}

uint64_t sub_1BF4C947C(uint64_t a1, double a2)
{
  sub_1BF4E9804();
  WidgetCacheKey.hash(into:)(v4, v2);
  return sub_1BF4E9844();
}

uint64_t _s9ChronoKit14WidgetCacheKeyV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if ((sub_1BF4E7144() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for WidgetCacheKey(0);
  v5 = *(v4 + 20);
  v6 = *(a1 + v5);
  v7 = *(a2 + v5);
  if (v6)
  {
    if (!v7)
    {
      return 0;
    }

    sub_1BF3901C0(0, &qword_1EDC9F120, 0x1E6994370);
    v8 = v7;
    v9 = v6;
    v10 = sub_1BF4E90A4();

    if ((v10 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v7)
  {
    return 0;
  }

  v11 = *(v4 + 24);
  v12 = *(a1 + v11);
  v13 = *(a2 + v11);
  if (v12)
  {
    if (v13)
    {
      sub_1BF3901C0(0, &unk_1EDC9F150, 0x1E69943F0);
      v14 = v13;
      v15 = v12;
      v16 = sub_1BF4E90A4();

      if (v16)
      {
        return 1;
      }
    }
  }

  else if (!v13)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_1BF4C9618(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1BF4C9660(uint64_t a1)
{
  v2 = swift_allocObject();
  sub_1BF4C96A0(a1);
  return v2;
}

uint64_t sub_1BF4C96A0(uint64_t a1)
{
  v3 = qword_1EDC9B168;
  type metadata accessor for ReloadHistory.ReloadHistoryRecord(255, *(*v1 + 80), *(*v1 + 88), *(*v1 + 96));
  sub_1BF4E8CA4();
  *(v1 + v3) = sub_1BF4E8724();
  v4 = qword_1EDC9B0E0;
  v5 = sub_1BF4E7B54();
  (*(*(v5 - 8) + 32))(v1 + v4, a1, v5);
  return v1;
}

uint64_t sub_1BF4C9794()
{
  v1 = *v0;
  swift_beginAccess();
  type metadata accessor for ReloadHistory.ReloadHistoryRecord(255, v1[10], v1[11], v1[12]);
  sub_1BF4E8CA4();
  sub_1BF4E8834();
  sub_1BF4E8824();
  return swift_endAccess();
}

uint64_t sub_1BF4C9864(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v4 = MEMORY[0x1EEE9AC00](a1);
  (*(v6 + 16))(&v8[-v5], v4);
  v9 = 0;
  swift_beginAccess();
  type metadata accessor for ReloadHistory.ReloadHistoryRecord(255, v3, *(v2 + 88), *(v2 + 96));
  sub_1BF4E8CA4();
  sub_1BF4E8834();
  sub_1BF4E8864();
  return swift_endAccess();
}

uint64_t ReloadHistory.deinit()
{
  v1 = qword_1EDC9B0E0;
  v2 = sub_1BF4E7B54();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t ReloadHistory.__deallocating_deinit()
{
  ReloadHistory.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1BF4C9AB4(uint64_t a1)
{
  result = sub_1BF4E7B54();
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

uint64_t sub_1BF4C9C58(uint64_t a1)
{
  result = sub_1BF4E7334();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t ReloadTaskPairResolver.init(taskPair:allowDebounce:logger:)(uint64_t a1, char a2, uint64_t a3)
{
  *(v3 + qword_1EDC994A8) = a1;
  *(v3 + qword_1EDC994A0) = a2;
  v5 = qword_1EDC99498;
  v6 = sub_1BF4E7B54();
  (*(*(v6 - 8) + 32))(v3 + v5, a3, v6);
  return v3;
}

uint64_t sub_1BF4C9D84(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v129 = a2;
  v9 = *v4;
  v128 = sub_1BF4E7B54();
  v126 = *(v128 - 8);
  MEMORY[0x1EEE9AC00](v128);
  v127 = &v108[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v132 = v9[10];
  isa = v132[-1].isa;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v108[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v15);
  v123 = &v108[-v16];
  MEMORY[0x1EEE9AC00](v17);
  v130 = &v108[-v18];
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v108[-v20];
  v22 = type metadata accessor for ReloadConfiguration(0);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v125 = &v108[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v108[-v25];
  v134 = *(a3 + *(v27 + 32));
  v133[0] = 0xA000000000000030;
  sub_1BF39C510(v134);
  v28 = static ReloadConfiguration.ReloadReason.== infix(_:_:)(&v134, v133);
  sub_1BF39C9A4(v134);
  v131 = a4;
  if (v28)
  {
    v29 = *(isa + 2);
    v29(v14, a1, v132);
    v124 = v5;
    v30 = sub_1BF4E7B34();
    v31 = sub_1BF4E8E84();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v129 = swift_slowAlloc();
      v134 = v129;
      *v32 = 134349314;
      v33 = v130;
      *(v32 + 4) = v131;
      *(v32 + 12) = 2082;
      v34 = v132;
      v29(v33, v14, v132);
      v35 = *(isa + 1);
      v35(v14, v34);
      v36 = sub_1BF4E96A4();
      v38 = v37;
      v35(v33, v34);
      v39 = sub_1BF38D65C(v36, v38, &v134);

      *(v32 + 14) = v39;
      _os_log_impl(&dword_1BF389000, v30, v31, "Task [%{public}llu] %{public}s Rejecting attempt to queue an .initial reload", v32, 0x16u);
      v40 = v129;
      __swift_destroy_boxed_opaque_existential_1Tm(v129);
      MEMORY[0x1BFB5A5D0](v40, -1, -1);
      MEMORY[0x1BFB5A5D0](v32, -1, -1);
    }

    else
    {
      (*(isa + 1))(v14, v132);
    }

    v77 = *&v124[qword_1EDC994A8];
  }

  else
  {
    v122 = a1;
    v41 = v9[11];
    v42 = v9[12];
    v43 = v9[13];
    v44 = v9[14];
    v45 = v9[15];
    v46 = v9[16];
    v47 = v9[17];
    v134 = v132;
    v135 = v41;
    v118 = v41;
    v117 = v42;
    v136 = v42;
    v137 = v43;
    v121 = v43;
    v116 = v44;
    v138 = v44;
    v139 = v45;
    v115 = v45;
    v114 = v46;
    v140 = v46;
    v141 = v47;
    v113 = v47;
    type metadata accessor for ReloadTaskPair(0, &v134);
    v120 = ReloadTaskPair.__allocating_init()();
    v119 = *&v5[qword_1EDC994A8];
    if (sub_1BF3AB3E8())
    {

      v48 = v26;
      sub_1BF3B4CAC(a3, v26);
      v49 = *(isa + 2);
      v112 = (isa + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v50 = v122;
      (v49)(v21, v122, v132);

      v51 = sub_1BF4E7B34();
      v52 = sub_1BF4E8E84();

      LODWORD(v123) = v52;
      v53 = os_log_type_enabled(v51, v52);
      v54 = v5;
      if (v53)
      {
        v55 = swift_slowAlloc();
        v124 = v49;
        v56 = v55;
        v111 = swift_slowAlloc();
        v134 = v111;
        *v56 = 134349826;
        v57 = v130;
        *(v56 + 4) = v131;
        *(v56 + 12) = 2082;
        v58 = v132;
        (v124)(v57, v21, v132);
        v59 = v54;
        v60 = *(isa + 1);
        v60(v21, v58);
        v110 = v51;
        v61 = sub_1BF4E96A4();
        v63 = v62;
        v60(v57, v58);
        v54 = v59;
        v64 = sub_1BF38D65C(v61, v63, &v134);

        *(v56 + 14) = v64;
        *(v56 + 22) = 2082;
        v65 = sub_1BF42E0F4();
        v67 = sub_1BF38D65C(v65, v66, &v134);

        *(v56 + 24) = v67;
        *(v56 + 32) = 2082;
        swift_beginAccess();
        v68 = ReloadConfiguration.description.getter();
        v70 = sub_1BF38D65C(v68, v69, &v134);
        v71 = v121;

        *(v56 + 34) = v70;
        v72 = v131;
        v73 = v57;
        v50 = v122;
        v74 = v110;
        _os_log_impl(&dword_1BF389000, v110, v123, "Task [%{public}llu] %{public}s Replacing queued task %{public}s with new configuration %{public}s", v56, 0x2Au);
        v75 = v111;
        swift_arrayDestroy();
        MEMORY[0x1BFB5A5D0](v75, -1, -1);
        v76 = v56;
        v49 = v124;
        MEMORY[0x1BFB5A5D0](v76, -1, -1);
      }

      else
      {
        (*(isa + 1))(v21, v132);

        v73 = v130;
        v72 = v131;
        v71 = v121;
      }
    }

    else
    {
      v111 = v26;
      sub_1BF3B31BC(a3, v26);
      v49 = *(isa + 2);
      v78 = v123;
      v50 = v122;
      (v49)(v123, v122, v132);
      v79 = sub_1BF4E7B34();
      v80 = sub_1BF4E8E84();
      v54 = v5;
      if (os_log_type_enabled(v79, v80))
      {
        v81 = swift_slowAlloc();
        v109 = v80;
        v82 = v81;
        v110 = swift_slowAlloc();
        v134 = v110;
        *v82 = 134349570;
        *(v82 + 4) = v131;
        v124 = v5;
        *(v82 + 12) = 2082;
        v112 = (isa + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
        v83 = v130;
        v84 = v49;
        v85 = v132;
        (v84)(v130, v78, v132);
        v86 = *(isa + 1);
        v86(v78, v85);
        v123 = v79;
        v87 = v121;
        v88 = sub_1BF4E96A4();
        v90 = v89;
        v91 = v85;
        v49 = v84;
        v86(v83, v91);
        v92 = sub_1BF38D65C(v88, v90, &v134);

        *(v82 + 14) = v92;
        *(v82 + 22) = 2082;
        v54 = v124;
        v93 = v111;
        swift_beginAccess();
        v94 = ReloadConfiguration.description.getter();
        v96 = sub_1BF38D65C(v94, v95, &v134);
        v71 = v87;

        *(v82 + 24) = v96;
        v97 = v123;
        _os_log_impl(&dword_1BF389000, v123, v109, "Task [%{public}llu] %{public}s Added queued task with configuration %{public}s", v82, 0x20u);
        v98 = v110;
        swift_arrayDestroy();
        MEMORY[0x1BFB5A5D0](v98, -1, -1);
        v99 = v82;
        v72 = v131;
        v73 = v83;
        MEMORY[0x1BFB5A5D0](v99, -1, -1);

        v48 = v93;
      }

      else
      {
        (*(isa + 1))(v78, v132);

        v73 = v130;
        v72 = v131;
        v48 = v111;
        v71 = v121;
      }
    }

    v100 = v132;
    v134 = v132;
    v135 = v118;
    v136 = v117;
    v137 = v71;
    v138 = v116;
    v139 = v115;
    v140 = v114;
    v141 = v113;
    type metadata accessor for ReloadTask(0, &v134);
    (v49)(v73, v50, v100);
    swift_beginAccess();
    v101 = v125;
    sub_1BF3B31BC(v48, v125);
    v102 = &v54[qword_1EDC99498];
    v103 = v127;
    (*(v126 + 16))(v127, v102, v128);
    v104 = v129;

    ReloadTask.__allocating_init(identifier:key:variantKeys:configuration:logger:)(v72, v73, v104, v101, v103);

    v77 = v120;
    sub_1BF410244(v105);
    sub_1BF39B43C();

    sub_1BF3A8AF8(v106);

    sub_1BF3A93B4(v48);
  }

  return v77;
}

uint64_t sub_1BF4CA89C()
{
  v0 = type metadata accessor for ReloadConfiguration(0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v7 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!sub_1BF3AB3E8())
  {
    goto LABEL_4;
  }

  result = sub_1BF3AB3E8();
  if (result)
  {
    sub_1BF3B31BC(result + *(*result + 168), v2);
    v4 = sub_1BF3C4704(v2);
    sub_1BF3A93B4(v2);
    if (v4)
    {
LABEL_4:
      v5 = 1;
      return v5 & 1;
    }

    result = sub_1BF3AB3E8();
    if (result)
    {

      v6 = sub_1BF4E8D54();

      v5 = v6 ^ 1;
      return v5 & 1;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1BF4CAA08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v44 = a3;
  v45 = a2;
  v47 = *v3;
  v5 = type metadata accessor for ReloadConfiguration(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v47 + 80);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v43 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v40 - v13;
  v56 = 0;
  v57 = 0xE000000000000000;
  v15 = *(v3 + qword_1EDC994A8);
  if (sub_1BF39B43C())
  {
    v48 = 0;
    *&v49 = 0xE000000000000000;

    sub_1BF4E92E4();

    v48 = 0x3A746E6572727543;
    *&v49 = 0xEF5B206B73617420;
    v16 = sub_1BF42E0F4();
    MEMORY[0x1BFB58C90](v16);

    MEMORY[0x1BFB58C90](93, 0xE100000000000000);
    MEMORY[0x1BFB58C90](v48, v49);
  }

  v46 = v15;
  v17 = sub_1BF3AB3E8();
  if (v17)
  {
    v48 = 0;
    *&v49 = 0xE000000000000000;
    v18 = v17;

    sub_1BF4E92E4();
    v54 = v48;
    v55 = v49;
    MEMORY[0x1BFB58C90](0x646575657551202CLL, 0xEF206B736174203ALL);
    v19 = *(v47 + 136);
    v48 = v8;
    v49 = *(v47 + 88);
    v50 = *(v47 + 104);
    v51 = *(v47 + 120);
    v52 = v19;
    v53 = v18;
    type metadata accessor for ReloadTask(0, &v48);
    swift_getWitnessTable();
    sub_1BF4E96F4();
    MEMORY[0x1BFB58C90](v54, v55);
  }

  v20 = *(v9 + 16);
  v20(v14, a1, v8);
  sub_1BF3B31BC(v45, v7);
  v21 = v57;
  v45 = v56;

  v22 = sub_1BF4E7B34();
  v23 = sub_1BF4E8E84();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v41 = v22;
    v25 = v24;
    v42 = swift_slowAlloc();
    v48 = v42;
    *v25 = 134349826;
    *(v25 + 4) = v44;
    *(v25 + 12) = 2082;
    LODWORD(v44) = v23;
    v26 = v43;
    v20(v43, v14, v8);
    v27 = *(v9 + 8);
    v27(v14, v8);
    v28 = sub_1BF4E96A4();
    v30 = v29;
    v27(v26, v8);
    v31 = sub_1BF38D65C(v28, v30, &v48);

    *(v25 + 14) = v31;
    *(v25 + 22) = 2082;
    v32 = ReloadConfiguration.description.getter();
    v34 = v33;
    sub_1BF3A93B4(v7);
    v35 = sub_1BF38D65C(v32, v34, &v48);

    *(v25 + 24) = v35;
    *(v25 + 32) = 2082;
    v36 = sub_1BF38D65C(v45, v21, &v48);

    *(v25 + 34) = v36;
    v37 = v41;
    _os_log_impl(&dword_1BF389000, v41, v44, "Task [%{public}llu] %{public}s Ignoring low-priority task with configuration: %{public}s; %{public}s", v25, 0x2Au);
    v38 = v42;
    swift_arrayDestroy();
    MEMORY[0x1BFB5A5D0](v38, -1, -1);
    MEMORY[0x1BFB5A5D0](v25, -1, -1);
  }

  else
  {
    (*(v9 + 8))(v14, v8);

    sub_1BF3A93B4(v7);
  }

  return v46;
}

uint64_t sub_1BF4CAF4C(uint64_t a1)
{
  result = sub_1BF4E7B54();
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

uint64_t EnvironmentProvider.init()()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD9110, &qword_1BF4EEFA0);
  swift_allocObject();
  *(v0 + 16) = sub_1BF4E7C34();
  type metadata accessor for UnfairLock();
  v2 = swift_allocObject();
  v3 = swift_slowAlloc();
  *v3 = 0;
  *(v2 + 16) = v3;
  *(v1 + 24) = v2;
  sub_1BF4E7F54();
  return v1;
}

uint64_t EnvironmentProvider.deinit()
{

  v1 = OBJC_IVAR____TtC9ChronoKit19EnvironmentProvider__lock_environmentValues;
  v2 = sub_1BF4E7F64();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t sub_1BF4CB144()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD9110, &qword_1BF4EEFA0);
  sub_1BF3A4BB0(&unk_1EDC9FD80, MEMORY[0x1E695BF88]);
  return sub_1BF4E7C84();
}

void sub_1BF4CB1B8(uint64_t a1@<X8>)
{
  v3 = *(v1 + 24);
  os_unfair_lock_lock(*(v3 + 16));
  v4 = OBJC_IVAR____TtC9ChronoKit19EnvironmentProvider__lock_environmentValues;
  swift_beginAccess();
  v5 = sub_1BF4E7F64();
  (*(*(v5 - 8) + 16))(a1, v1 + v4, v5);
  os_unfair_lock_unlock(*(v3 + 16));
}

double sub_1BF4CB254(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7[7] = *(v3 + 24);
  v7[2] = a3;
  v7[4] = a1;
  v7[5] = a2;
  v5 = type metadata accessor for UnfairLock();

  sub_1BF38D774(sub_1BF4CB73C, v7, v5, a3, &off_1F3DEE010);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD9110, &qword_1BF4EEFA0);
  sub_1BF3A4BB0(&qword_1EDC9FD90, MEMORY[0x1E695BF80]);
  sub_1BF4E7C74();

  return result;
}

double sub_1BF4CB350(void (*a1)(_BYTE *))
{
  v3 = sub_1BF4E7F64();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v13[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v13[-v8];
  v10 = *(v1 + 24);
  os_unfair_lock_lock(*(v10 + 16));
  v11 = OBJC_IVAR____TtC9ChronoKit19EnvironmentProvider__lock_environmentValues;
  swift_beginAccess();
  (*(v4 + 16))(v9, v1 + v11, v3);
  a1(v9);
  (*(v4 + 8))(v9, v3);
  swift_beginAccess();
  (*(v4 + 40))(v1 + v11, v6, v3);
  swift_endAccess();
  os_unfair_lock_unlock(*(v10 + 16));

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD9110, &qword_1BF4EEFA0);
  sub_1BF3A4BB0(&qword_1EDC9FD90, MEMORY[0x1E695BF80]);
  sub_1BF4E7C74();

  return result;
}

uint64_t EnvironmentProvider.__allocating_init()()
{
  v0 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD9110, &qword_1BF4EEFA0);
  swift_allocObject();
  *(v0 + 16) = sub_1BF4E7C34();
  type metadata accessor for UnfairLock();
  v1 = swift_allocObject();
  v2 = swift_slowAlloc();
  *v2 = 0;
  *(v1 + 16) = v2;
  *(v0 + 24) = v1;
  sub_1BF4E7F54();
  return v0;
}

uint64_t sub_1BF4CB5E4(uint64_t a1, void (*a2)(_BYTE *))
{
  v4 = sub_1BF4E7F64();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = OBJC_IVAR____TtC9ChronoKit19EnvironmentProvider__lock_environmentValues;
  swift_beginAccess();
  (*(v5 + 16))(v7, a1 + v8, v4);
  a2(v7);
  swift_beginAccess();
  (*(v5 + 40))(a1 + v8, v7, v4);
  return swift_endAccess();
}

uint64_t EnvironmentProvider.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC9ChronoKit19EnvironmentProvider__lock_environmentValues;
  v2 = sub_1BF4E7F64();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

unint64_t sub_1BF4CB8F4()
{
  v46 = type metadata accessor for RemoteActivityArchiveBudget(0);
  MEMORY[0x1EEE9AC00](v46);
  v45 = &v43 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v50 = &v43 - v3;
  *&v49 = 0;
  *(&v49 + 1) = 0xE000000000000000;
  v4 = sub_1BF3D871C(MEMORY[0x1E69E7CC0]);
  MEMORY[0x1BFB58C40](28);
  MEMORY[0x1BFB58C90](0x200A5443454C4553, 0xEB00000000202020);
  v5 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v5);

  MEMORY[0x1BFB58C90](0x202020200A2CLL, 0xE600000000000000);
  v6 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v6);

  MEMORY[0x1BFB58C90](0x20200A4D4F52460ALL, 0xEA00000000002020);
  v7 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v7);

  MEMORY[0x1BFB58C90](59, 0xE100000000000000);
  v8 = v49;
  if (!swift_weakLoadStrong())
  {
    goto LABEL_19;
  }

  v9 = sub_1BF3E4F48(v4, v8, *(&v8 + 1));
  if (!v0)
  {
    v48 = 0;
    v11 = v9;

    v12 = v11;
    v44 = v11[2];
    if (!v44)
    {
      v10 = MEMORY[0x1E69E7CC8];

      return v10;
    }

    v13 = 0;
    v10 = MEMORY[0x1E69E7CC8];
    v43 = v11;
    while (v13 < v12[2])
    {
      v47 = v10;
      v14 = v12[v13 + 4];

      v15 = sub_1BF4E92F4();
      v17 = sub_1BF48063C(v15, v16, v14);
      v19 = v18;
      v21 = v20;
      v22 = ~v20;

      if (!v22)
      {
        goto LABEL_19;
      }

      v23 = sub_1BF4244EC(v17, v19, v21);
      v25 = v24;
      sub_1BF3DB1FC(v17, v19, v21);
      if (!v25)
      {
        goto LABEL_19;
      }

      v26 = sub_1BF4E92F4();
      v28 = sub_1BF48063C(v26, v27, v14);
      v30 = v29;
      v32 = v31;
      v33 = ~v31;

      if (!v33)
      {
        goto LABEL_18;
      }

      sub_1BF424370(v28, v30, v32, &v49);
      sub_1BF3DB1FC(v28, v30, v32);
      v10 = *(&v49 + 1);
      if (*(&v49 + 1) >> 60 == 15)
      {
        goto LABEL_18;
      }

      v34 = v49;
      sub_1BF4E6DB4();
      swift_allocObject();
      sub_1BF4E6DA4();
      sub_1BF4CC680(&qword_1EBDD8998, &protocol conformance descriptor for RemoteActivityArchiveBudget);
      v35 = v50;
      v36 = v48;
      sub_1BF4E6D94();
      v48 = v36;
      if (v36)
      {

        sub_1BF3DB210(v34, v10);

        return v10;
      }

      ++v13;
      v37 = v35;
      v38 = v45;
      sub_1BF3DF4F4(v37, v45);
      v39 = v47;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v49 = v39;
      sub_1BF3D72F4(v38, v23, v25, isUniquelyReferenced_nonNull_native, v41);

      sub_1BF3DB210(v34, v10);

      sub_1BF3DF558(v50);
      v10 = v49;
      v12 = v43;
      if (v44 == v13)
      {

        return v10;
      }
    }

    __break(1u);
LABEL_18:

    while (1)
    {
LABEL_19:
      sub_1BF4E9464();
      __break(1u);
    }
  }

  v10 = v0;

  return v10;
}

uint64_t ChronoMetadataStore.RemoteActivityArchiveBudgetStore.__deallocating_deinit()
{
  swift_weakDestroy();

  return swift_deallocClassInstance();
}

void sub_1BF4CBE80(uint64_t a1)
{
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v4 = *(Strong + 24);
    v5 = Strong;
    os_unfair_lock_lock(*(v4 + 16));
    v6 = *(v5 + 64);
    os_unfair_lock_unlock(*(v4 + 16));

    if (v6)
    {
      sub_1BF4E6DE4();
      swift_allocObject();
      sub_1BF4E6DD4();
      v7 = type metadata accessor for RemoteActivityArchiveBudget(0);
      sub_1BF4CC680(&qword_1EBDD89A0, &protocol conformance descriptor for RemoteActivityArchiveBudget);
      v8 = sub_1BF4E6DC4();
      if (v1)
      {
LABEL_6:

        return;
      }

      v10 = v8;
      v39 = v9;
      v11 = sub_1BF3D871C(MEMORY[0x1E69E7CC0]);
      MEMORY[0x1BFB58C40](83);
      MEMORY[0x1BFB58C90](0xD000000000000011, 0x80000001BF4FAD70);
      v12 = sub_1BF4E92F4();
      MEMORY[0x1BFB58C90](v12);

      MEMORY[0x1BFB58C90](0x20202020200A2820, 0xEB00000000202020);
      v13 = sub_1BF4E92F4();
      MEMORY[0x1BFB58C90](v13);

      MEMORY[0x1BFB58C90](0x2020202020200A2CLL, 0xEA00000000002020);
      v14 = sub_1BF4E92F4();
      MEMORY[0x1BFB58C90](v14);

      MEMORY[0x1BFB58C90](0xD00000000000001CLL, 0x80000001BF4FAD90);
      v15 = (a1 + *(v7 + 24));
      v17 = *v15;
      v16 = v15[1];

      v19 = sub_1BF3D8148(v17, v16, v18);
      v21 = v20;
      v23 = v22;
      v24 = sub_1BF4E96A4();
      MEMORY[0x1BFB58C90](v24);

      MEMORY[0x1BFB58C90](0x676E69646E696240, 0xE800000000000000);
      sub_1BF3D8840(v19, v21, v23);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      sub_1BF3D6680(v19, v21, v23, 0x676E69646E696240, 0xE800000000000000, isUniquelyReferenced_nonNull_native, v26);

      v27 = sub_1BF3D88B8(v19, v21, v23);
      v28 = v11;
      MEMORY[0x1BFB58C90](0x2020202020200A2CLL, 0xEA00000000002020, v27);
      sub_1BF3D8864(v10, v39);
      sub_1BF3D8864(v10, v39);
      v30 = sub_1BF3D8134(v10, v39, v29);
      v32 = v31;
      v34 = v33;
      v35 = sub_1BF4E96A4();
      MEMORY[0x1BFB58C90](v35);

      MEMORY[0x1BFB58C90](0x676E69646E696240, 0xE800000000000000);
      sub_1BF3D8840(v30, v32, v34);
      v36 = swift_isUniquelyReferenced_nonNull_native();
      sub_1BF3D6680(v30, v32, v34, 0x676E69646E696240, 0xE800000000000000, v36, v37);

      sub_1BF3D88B8(v30, v32, v34);
      v38 = sub_1BF3B03C0(v10, v39);
      MEMORY[0x1BFB58C90](0x3B29202020200ALL, 0xE700000000000000, v38);
      if (swift_weakLoadStrong())
      {
        sub_1BF3E4F48(v28, 0, 0xE000000000000000);

        sub_1BF3B03C0(v10, v39);
        goto LABEL_6;
      }
    }

    else
    {
      __break(1u);
    }
  }

  sub_1BF4E9464();
  __break(1u);
}

void sub_1BF4CC390(uint64_t a1, uint64_t a2)
{
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    goto LABEL_8;
  }

  v6 = *(Strong + 24);
  v7 = Strong;
  os_unfair_lock_lock(*(v6 + 16));
  v8 = *(v7 + 64);
  os_unfair_lock_unlock(*(v6 + 16));

  if (!v8)
  {
    __break(1u);
    goto LABEL_8;
  }

  v9 = sub_1BF3D871C(MEMORY[0x1E69E7CC0]);
  MEMORY[0x1BFB58C40](24);
  MEMORY[0x1BFB58C90](0x46204554454C4544, 0xEC000000204D4F52);
  v10 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v10);

  MEMORY[0x1BFB58C90](0x2045524548570ALL, 0xE700000000000000);
  v11 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v11);

  MEMORY[0x1BFB58C90](542329120, 0xE400000000000000);

  v13 = sub_1BF3D8148(a1, a2, v12);
  v15 = v14;
  v17 = v16;
  v18 = sub_1BF4E96A4();
  MEMORY[0x1BFB58C90](v18);

  MEMORY[0x1BFB58C90](0x676E69646E696240, 0xE800000000000000);
  sub_1BF3D8840(v13, v15, v17);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_1BF3D6680(v13, v15, v17, 0x676E69646E696240, 0xE800000000000000, isUniquelyReferenced_nonNull_native, v20);

  v21 = sub_1BF3D88B8(v13, v15, v17);
  MEMORY[0x1BFB58C90](59, 0xE100000000000000, v21);
  if (!swift_weakLoadStrong())
  {
LABEL_8:
    sub_1BF4E9464();
    __break(1u);
    return;
  }

  sub_1BF3E4F48(v9, 0, 0xE000000000000000);

  if (!v2)
  {
  }
}

uint64_t sub_1BF4CC680(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for RemoteActivityArchiveBudget(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1BF4CC7E4()
{
  v1 = sub_1BF3D871C(MEMORY[0x1E69E7CC0]);
  MEMORY[0x1BFB58C40](69);
  MEMORY[0x1BFB58C90](0x5420455441455243, 0xED000020454C4241);
  v2 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v2);

  MEMORY[0x1BFB58C90](0x202020200A2820, 0xE700000000000000);
  v3 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v3);

  MEMORY[0x1BFB58C90](0xD000000000000020, 0x80000001BF4FD800);
  v4 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v4);

  MEMORY[0x1BFB58C90](0xD000000000000011, 0x80000001BF4FD830);
  sub_1BF3E4F48(v1, 0, 0xE000000000000000);

  if (!v0)
  {
  }

  return result;
}

uint64_t sub_1BF4CC9AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8AD8, &unk_1BF4ED6C0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = v12 - v8;
  sub_1BF38E49C(a1, v13);
  sub_1BF38E49C(a2, v12);
  sub_1BF3E90C8(a3, v9);
  type metadata accessor for RelevanceCacheManager(0);
  swift_allocObject();
  result = RelevanceCacheManager.init(cacheKeyProvider:descriptorProvider:relevanceCacheUrl:)(v13, v12, v9);
  if (!v3)
  {
    v11 = result;
    sub_1BF4CCAAC();
    return v11;
  }

  return result;
}

unint64_t sub_1BF4CCAAC()
{
  result = qword_1EDC99AE0;
  if (!qword_1EDC99AE0)
  {
    type metadata accessor for RelevanceCacheManager(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC99AE0);
  }

  return result;
}

uint64_t MockRelevanceCacheManager.__allocating_init(cacheKeyProvider:descriptorProvider:relevanceCacheUrl:beforeFirstUnlock:)(void *a1, void *a2, uint64_t a3, char a4)
{
  v5 = v4;
  v26 = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8AD8, &unk_1BF4ED6C0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v23 - v10;
  v12 = sub_1BF4E6D54();
  MEMORY[0x1EEE9AC00](v12 - 8);
  v13 = sub_1BF4E6D64();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23[1] = v5;
  v17 = swift_allocObject();
  v18 = v17;
  if (a4)
  {
    sub_1BF4E6D04();
    sub_1BF3EDBBC(MEMORY[0x1E69E7CC0]);
    sub_1BF4CE634(&qword_1EDC9F110, 255, MEMORY[0x1E6967E98], MEMORY[0x1E6967E90]);
    sub_1BF4E6FD4();
    sub_1BF4E6CD4();
    (*(v14 + 8))(v16, v13);
    swift_willThrow();
    sub_1BF3FA9B4(a3);
    __swift_destroy_boxed_opaque_existential_1Tm(v26);
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  else
  {
    *(v17 + 24) = 0;
    sub_1BF38E49C(a1, v25);
    v19 = v26;
    sub_1BF38E49C(v26, v24);
    sub_1BF3E90C8(a3, v11);
    type metadata accessor for RelevanceCacheManager(0);
    swift_allocObject();
    v20 = v23[0];
    v21 = RelevanceCacheManager.init(cacheKeyProvider:descriptorProvider:relevanceCacheUrl:)(v25, v24, v11);
    sub_1BF3FA9B4(a3);
    __swift_destroy_boxed_opaque_existential_1Tm(v19);
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    if (!v20)
    {
      *(v18 + 16) = v21;
      return v18;
    }
  }

  swift_deallocPartialClassInstance();
  return v18;
}

uint64_t MockRelevanceCacheManager.init(cacheKeyProvider:descriptorProvider:relevanceCacheUrl:beforeFirstUnlock:)(void *a1, void *a2, uint64_t a3, char a4)
{
  v25 = a2;
  v8 = sub_1BF4E6D54();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v9 = sub_1BF4E6D64();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8AD8, &unk_1BF4ED6C0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = v22 - v14;
  if (a4)
  {
    sub_1BF4E6D04();
    sub_1BF3EDBBC(MEMORY[0x1E69E7CC0]);
    sub_1BF4CE634(&qword_1EDC9F110, 255, MEMORY[0x1E6967E98], MEMORY[0x1E6967E90]);
    sub_1BF4E6FD4();
    sub_1BF4E6CD4();
    (*(v10 + 8))(v12, v9);
    swift_willThrow();
    sub_1BF3FA9B4(a3);
    v16 = v25;
  }

  else
  {
    *(v4 + 24) = 0;
    sub_1BF38E49C(a1, v24);
    v17 = v25;
    sub_1BF38E49C(v25, v23);
    sub_1BF3E90C8(a3, v15);
    type metadata accessor for RelevanceCacheManager(0);
    swift_allocObject();
    v18 = v22[1];
    v19 = RelevanceCacheManager.init(cacheKeyProvider:descriptorProvider:relevanceCacheUrl:)(v24, v23, v15);
    if (!v18)
    {
      v21 = v19;
      sub_1BF3FA9B4(a3);
      __swift_destroy_boxed_opaque_existential_1Tm(v17);
      __swift_destroy_boxed_opaque_existential_1Tm(a1);
      *(v4 + 16) = v21;
      return v4;
    }

    sub_1BF3FA9B4(a3);
    v16 = v17;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v16);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  type metadata accessor for MockRelevanceCacheManager();
  swift_deallocPartialClassInstance();
  return v4;
}

uint64_t sub_1BF4CD2A8(uint64_t a1, double a2)
{
  if (*(v2 + 24))
  {
    v3 = sub_1BF4E7744();
    sub_1BF4CE634(&qword_1EBDD9C38, 255, MEMORY[0x1E6994120], MEMORY[0x1E6994128]);
    swift_allocError();
    (*(*(v3 - 8) + 104))(v4, *MEMORY[0x1E6994118], v3);
    return swift_willThrow();
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1);
    v8[2] = v6;
    v8[3] = v7;
    return sub_1BF4CD3DC(sub_1BF4CE538, v8, "ChronoKit/MockRelevanceCacheManager.swift", 41, 2, 57);
  }
}

uint64_t sub_1BF4CD3DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = v6;
  if (swift_task_isCurrentExecutor())
  {
    v11 = swift_allocObject();
    *(v11 + 16) = a1;
    *(v11 + 24) = a2;
    v12 = swift_allocObject();
    *(v12 + 16) = sub_1BF4CE858;
    *(v12 + 24) = v11;

    v16 = v8;
    sub_1BF4CE89C(&v16, v17);

    if (v7)
    {
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if ((isEscapingClosureAtFileLocation & 1) == 0)
      {
        return v12;
      }

      __break(1u);
    }

    v12 = v17[0];
    v14 = swift_isEscapingClosureAtFileLocation();

    if ((v14 & 1) == 0)
    {
      return v12;
    }

    __break(1u);
  }

  v17[0] = 0;
  v17[1] = 0xE000000000000000;
  sub_1BF4E92E4();
  MEMORY[0x1BFB58C90](0xD00000000000003FLL, 0x80000001BF4FEFD0);
  v16 = v8;
  type metadata accessor for RelevanceCacheManager(0);
  sub_1BF4E9404();
  MEMORY[0x1BFB58C90](46, 0xE100000000000000);
  result = sub_1BF4E9464();
  __break(1u);
  return result;
}

uint64_t sub_1BF4CD5DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = v6;
  if (swift_task_isCurrentExecutor())
  {
    v11 = swift_allocObject();
    *(v11 + 16) = a1;
    *(v11 + 24) = a2;
    v12 = swift_allocObject();
    *(v12 + 16) = sub_1BF4CE858;
    *(v12 + 24) = v11;

    v16 = v8;
    sub_1BF4CE89C(&v16, v17);

    if (v7)
    {
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if ((isEscapingClosureAtFileLocation & 1) == 0)
      {
        return v12;
      }

      __break(1u);
    }

    v12 = v17[0];
    v14 = swift_isEscapingClosureAtFileLocation();

    if ((v14 & 1) == 0)
    {
      return v12;
    }

    __break(1u);
  }

  v17[0] = 0;
  v17[1] = 0xE000000000000000;
  sub_1BF4E92E4();
  MEMORY[0x1BFB58C90](0xD00000000000003FLL, 0x80000001BF4FEFD0);
  v16 = v8;
  type metadata accessor for RelevanceCacheManager(0);
  sub_1BF4E9404();
  MEMORY[0x1BFB58C90](46, 0xE100000000000000);
  result = sub_1BF4E9464();
  __break(1u);
  return result;
}

uint64_t sub_1BF4CD7DC(double a1)
{
  if (*(v1 + 24))
  {
    v3 = sub_1BF4E7744();
    sub_1BF4CE634(&qword_1EBDD9C38, 255, MEMORY[0x1E6994120], MEMORY[0x1E6994128]);
    swift_allocError();
    (*(*(v3 - 8) + 104))(v4, *MEMORY[0x1E6994118], v3);
    return swift_willThrow();
  }

  v6 = *(v1 + 16);
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    goto LABEL_10;
  }

  v7 = swift_allocObject();
  *(v7 + 16) = sub_1BF4CE310;
  *(v7 + 24) = 0;
  v8[0] = v6;
  sub_1BF4CE550(v8);
  v6 = v2;

  result = swift_isEscapingClosureAtFileLocation();
  if (v2)
  {
    if ((result & 1) == 0)
    {
      return result;
    }

    __break(1u);
  }

  if (result)
  {
    __break(1u);
LABEL_10:
    v8[0] = 0;
    v8[1] = 0xE000000000000000;
    sub_1BF4E92E4();
    MEMORY[0x1BFB58C90](0xD00000000000003FLL, 0x80000001BF4FEFD0);
    v8[3] = v6;
    type metadata accessor for RelevanceCacheManager(0);
    sub_1BF4E9404();
    MEMORY[0x1BFB58C90](46, 0xE100000000000000);
    result = sub_1BF4E9464();
    __break(1u);
  }

  return result;
}

void sub_1BF4CD9FC(uint64_t a1, double a2)
{
  if (*(v2 + 24))
  {
    v4 = sub_1BF4E7744();
    sub_1BF4CE634(&qword_1EBDD9C38, 255, MEMORY[0x1E6994120], MEMORY[0x1E6994128]);
    swift_allocError();
    (*(*(v4 - 8) + 104))(v5, *MEMORY[0x1E6994118], v4);
    swift_willThrow();
    return;
  }

  v6 = *(v2 + 16);
  MEMORY[0x1EEE9AC00](a1);
  v11[2] = v7;
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    goto LABEL_10;
  }

  v8 = swift_allocObject();
  *(v8 + 16) = sub_1BF4CE57C;
  *(v8 + 24) = v11;
  v9 = swift_allocObject();
  *(v9 + 16) = sub_1BF4CE598;
  *(v9 + 24) = v8;

  v12[0] = v6;
  sub_1BF4CE8E4(v12);
  v6 = v3;

  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (v3)
  {
    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return;
    }

    __break(1u);
  }

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
LABEL_10:
    v12[0] = 0;
    v12[1] = 0xE000000000000000;
    sub_1BF4E92E4();
    MEMORY[0x1BFB58C90](0xD00000000000003FLL, 0x80000001BF4FEFD0);
    v12[3] = v6;
    type metadata accessor for RelevanceCacheManager(0);
    sub_1BF4E9404();
    MEMORY[0x1BFB58C90](46, 0xE100000000000000);
    sub_1BF4E9464();
    __break(1u);
  }
}

void sub_1BF4CDC90(uint64_t a1, void *a2)
{
  v2 = OBJC_IVAR____TtC9ChronoKit21RelevanceCacheManager_relevanceCache;
  if (*(a1 + OBJC_IVAR____TtC9ChronoKit21RelevanceCacheManager_relevanceCache))
  {

    v5 = sub_1BF4E7644();

    v6 = a2;
    sub_1BF3FF650(v5, v6);

    if (*(a1 + v2))
    {
      MEMORY[0x1EEE9AC00](v7);

      sub_1BF4E7634();

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1BF4CDD90(uint64_t a1, double a2)
{
  if (*(v2 + 24))
  {
    v3 = sub_1BF4E7744();
    sub_1BF4CE634(&qword_1EBDD9C38, 255, MEMORY[0x1E6994120], MEMORY[0x1E6994128]);
    swift_allocError();
    (*(*(v3 - 8) + 104))(v4, *MEMORY[0x1E6994118], v3);
    return swift_willThrow();
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1);
    v7[2] = v6;
    return sub_1BF4CD5DC(sub_1BF4CE5C0, v7, "ChronoKit/MockRelevanceCacheManager.swift", 41, 2, 87);
  }
}

void sub_1BF4CDEC0(uint64_t a1@<X0>, unint64_t a2@<X1>, char **a3@<X8>)
{
  v5 = OBJC_IVAR____TtC9ChronoKit21RelevanceCacheManager_relevanceCache;
  if (!*(a1 + OBJC_IVAR____TtC9ChronoKit21RelevanceCacheManager_relevanceCache))
  {
    __break(1u);
    goto LABEL_8;
  }

  v8 = sub_1BF4E7644();

  v9 = sub_1BF3FFD20(v8, a2);

  if (!*(a1 + v5))
  {
LABEL_8:
    __break(1u);
    return;
  }

  MEMORY[0x1EEE9AC00](v10);

  sub_1BF4E7634();
  if (v3)
  {
  }

  else
  {

    v11 = sub_1BF3FEB38(v9);

    *a3 = v11;
  }
}

uint64_t MockRelevanceCacheManager.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1BF4CE074(uint64_t a1, double a2)
{
  if (*(v2 + 24) == 1)
  {
    v3 = sub_1BF4E7744();
    sub_1BF4CE634(&qword_1EBDD9C38, 255, MEMORY[0x1E6994120], MEMORY[0x1E6994128]);
    swift_allocError();
    (*(*(v3 - 8) + 104))(v4, *MEMORY[0x1E6994118], v3);
    return swift_willThrow();
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1);
    v8[2] = v6;
    v8[3] = v7;
    return sub_1BF4CD3DC(sub_1BF4CE8FC, v8, "ChronoKit/MockRelevanceCacheManager.swift", 41, 2, 57);
  }
}

uint64_t sub_1BF4CE1DC(uint64_t a1, double a2)
{
  if (*(v2 + 24) == 1)
  {
    v3 = sub_1BF4E7744();
    sub_1BF4CE634(&qword_1EBDD9C38, 255, MEMORY[0x1E6994120], MEMORY[0x1E6994128]);
    swift_allocError();
    (*(*(v3 - 8) + 104))(v4, *MEMORY[0x1E6994118], v3);
    return swift_willThrow();
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1);
    v7[2] = v6;
    return sub_1BF4CD5DC(sub_1BF4CE914, v7, "ChronoKit/MockRelevanceCacheManager.swift", 41, 2, 87);
  }
}

uint64_t sub_1BF4CE358(void *a1, void *a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8AD8, &unk_1BF4ED6C0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v17 - v11;
  sub_1BF38E49C(a1, v20);
  sub_1BF38E49C(a2, v19);
  sub_1BF3E90C8(a3, v12);
  type metadata accessor for MockRelevanceCacheManager();
  v13 = swift_allocObject();
  *(v13 + 24) = 0;
  sub_1BF38E49C(v20, v18);
  sub_1BF38E49C(v19, v17);
  sub_1BF3E90C8(v12, v9);
  type metadata accessor for RelevanceCacheManager(0);
  swift_allocObject();
  v14 = RelevanceCacheManager.init(cacheKeyProvider:descriptorProvider:relevanceCacheUrl:)(v18, v17, v9);
  if (v3)
  {
    sub_1BF3FA9B4(a3);
    __swift_destroy_boxed_opaque_existential_1Tm(a2);
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    sub_1BF3FA9B4(v12);
    __swift_destroy_boxed_opaque_existential_1Tm(v19);
    __swift_destroy_boxed_opaque_existential_1Tm(v20);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v15 = v14;
    sub_1BF3FA9B4(a3);
    __swift_destroy_boxed_opaque_existential_1Tm(a2);
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    sub_1BF3FA9B4(v12);
    __swift_destroy_boxed_opaque_existential_1Tm(v19);
    __swift_destroy_boxed_opaque_existential_1Tm(v20);
    *(v13 + 16) = v15;
  }

  return v13;
}

uint64_t sub_1BF4CE5DC(uint64_t a1, uint64_t a2)
{
  result = sub_1BF4CE634(&qword_1EBDD9C40, a2, type metadata accessor for MockRelevanceCacheManager, &protocol conformance descriptor for MockRelevanceCacheManager);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1BF4CE634(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1BF4CE7F8(uint64_t a1@<X0>, void *a2@<X8>)
{
  v6[2] = a1;
  v7 = *(v2 + 16);
  sub_1BF3FCA18(sub_1BF3FBF20, v6);
  if (!v3)
  {
    *a2 = v5;
  }
}

void *sub_1BF4CE858@<X0>(void *a1@<X8>)
{
  result = (*(v1 + 16))(&v5);
  if (!v2)
  {
    *a1 = v5;
  }

  return result;
}

void *sub_1BF4CE89C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = (*(v2 + 16))(&v6, *a1);
  if (!v3)
  {
    *a2 = v6;
  }

  return result;
}

uint64_t static VariantIdentifier<>.mock(extensionIdentity:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for ActivityKey(0);
  sub_1BF409B0C();
  sub_1BF4E7444();
  *a2 = a1;
  v5 = (a2 + *(v4 + 24));
  *v5 = 0x7974697669746361;
  v5[1] = 0xEB00000000314449;
  v6 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD87A8, &unk_1BF4EB2C0) + 68);
  v7 = a1;
  sub_1BF4E8654();
  v8 = type metadata accessor for ActivityVariantKey(0);
  sub_1BF4E8344();
  if (qword_1EDC9F028 != -1)
  {
    swift_once();
  }

  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD85B0, &unk_1BF4EA9E0);
  v10 = __swift_project_value_buffer(v9, qword_1EDC9F030);
  v11 = *(*(v9 - 8) + 16);
  v12 = &v6[*(v8 + 24)];

  return v11(v12, v10, v9);
}

uint64_t static LocaleChangeCoordinator.localeDidChangePublisher.getter()
{
  if (qword_1EDC99408 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9808, &qword_1BF4F7200);
  sub_1BF38C8B4(&qword_1EDC9D3B8, &qword_1EBDD9808, &qword_1BF4F7200, MEMORY[0x1E695BF88]);
  return sub_1BF4E7C84();
}

void sub_1BF4CEB48()
{
  type metadata accessor for _PerAppLanguageOverrideObserver();
  v0 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9C60, &qword_1BF4F7230);
  swift_allocObject();
  *(v0 + 16) = sub_1BF4E7C34();
  v1 = objc_opt_self();
  v3[4] = sub_1BF4D1174;
  v3[5] = v0;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 1107296256;
  v3[2] = sub_1BF4CED78;
  v3[3] = &block_descriptor_31;
  v2 = _Block_copy(v3);

  [v1 subscribeToAppLanguageChanges_];
  _Block_release(v2);
  off_1EDC96FB8 = v0;
}

uint64_t sub_1BF4CEC64(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8A38, &unk_1BF4EC4D0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;

  sub_1BF4E7694();
  sub_1BF4E7C14();

  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_1BF4CED78(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = sub_1BF4E8914();
  v5 = v4;

  v2(v3, v5);
}

uint64_t sub_1BF4CEDE4()
{
  [objc_opt_self() unsubscribeFromAppLanguageChanges];

  return swift_deallocClassInstance();
}

uint64_t sub_1BF4CEE34()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9808, &qword_1BF4F7200);
  swift_allocObject();
  result = sub_1BF4E7C34();
  qword_1EDC99410 = result;
  return result;
}

uint64_t LocaleChangeCoordinator.__allocating_init(with:)(void *a1)
{
  v2 = swift_allocObject();
  LocaleChangeCoordinator.init(with:)(a1);
  return v2;
}

uint64_t LocaleChangeCoordinator.init(with:)(void *a1)
{
  v3 = sub_1BF4E9044();
  v51 = *(v3 - 8);
  v52 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v50 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9C48, &unk_1BF4F7208);
  v54 = *(v5 - 8);
  v55 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v53 = &v39 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD95E8, &qword_1BF4F1CB0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v49 = &v39 - v8;
  v58 = sub_1BF4E8F14();
  v48 = *(v58 - 8);
  MEMORY[0x1EEE9AC00](v58);
  v47 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9C50, &qword_1BF4F7218);
  v45 = *(v46 - 8);
  MEMORY[0x1EEE9AC00](v46);
  v44 = &v39 - v10;
  v11 = sub_1BF4E8ED4();
  MEMORY[0x1EEE9AC00](v11);
  v57 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1BF4E8F24();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v43 = &v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1BF4E8064();
  MEMORY[0x1EEE9AC00](v16 - 8);
  v59 = v1;
  *(v1 + 16) = MEMORY[0x1E69E7CD0];
  *(v1 + 48) = 0u;
  *(v1 + 64) = 0u;
  *(v1 + 32) = 0u;
  v17 = [objc_opt_self() preferredLanguages];
  v18 = sub_1BF4E8BA4();

  *(v1 + 80) = v18;
  v56 = a1;
  sub_1BF38E49C(a1, v61);
  swift_beginAccess();
  sub_1BF4CF928(v61, v1 + 32);
  swift_endAccess();
  v19 = sub_1BF3DC720();
  v42 = "beforeFirstUnlock";
  sub_1BF4E8034();
  (*(v14 + 104))(v43, *MEMORY[0x1E69E8098], v13);
  v61[0] = MEMORY[0x1E69E7CC0];
  sub_1BF3A118C(&qword_1EDC9F148, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD85C0, &qword_1BF4EC090);
  sub_1BF38C8B4(&qword_1EDC9F178, &qword_1EBDD85C0, &qword_1BF4EC090, MEMORY[0x1E69E6328]);
  sub_1BF4E91A4();
  v20 = v1 + 16;
  v57 = v19;
  *(v1 + 24) = sub_1BF4E8F64();
  if (qword_1EDC96FB0 != -1)
  {
    swift_once();
  }

  v61[0] = *(off_1EDC96FB8 + 2);

  v21 = v47;
  sub_1BF4E8F04();
  v60 = *(v59 + 24);
  v22 = v60;
  v23 = sub_1BF4E8EF4();
  v24 = *(v23 - 8);
  v42 = *(v24 + 56);
  v43 = (v24 + 56);
  v25 = v49;
  (v42)(v49, 1, 1, v23);
  v26 = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9C60, &qword_1BF4F7230);
  sub_1BF38C8B4(&unk_1EDC9D3D0, &qword_1EBDD9C60, &qword_1BF4F7230, MEMORY[0x1E695BF88]);
  v41 = sub_1BF3A118C(&qword_1EDC9D718, sub_1BF3DC720, MEMORY[0x1E69E8028]);
  v27 = v44;
  sub_1BF4E7CF4();
  sub_1BF38C9B4(v25, &qword_1EBDD95E8, &qword_1BF4F1CB0);

  v48 = *(v48 + 8);
  (v48)(v21, v58);

  swift_allocObject();
  v28 = v59;
  swift_weakInit();
  v40 = MEMORY[0x1E695BE50];
  sub_1BF38C8B4(&qword_1EDC9D430, &qword_1EBDD9C50, &qword_1BF4F7218, MEMORY[0x1E695BE50]);

  v29 = v46;
  sub_1BF4E7D14();

  (*(v45 + 8))(v27, v29);
  swift_beginAccess();
  sub_1BF4E7BC4();
  swift_endAccess();

  v30 = [objc_opt_self() defaultCenter];
  v46 = v20;
  v31 = v50;
  sub_1BF4E9054();

  sub_1BF4E8F04();
  v61[0] = *(v28 + 24);
  v32 = v61[0];
  (v42)(v25, 1, 1, v23);
  sub_1BF3A118C(&qword_1EDC9D6B8, MEMORY[0x1E6969F20], MEMORY[0x1E6969F18]);
  v33 = v32;
  v35 = v52;
  v34 = v53;
  sub_1BF4E7CF4();
  sub_1BF38C9B4(v25, &qword_1EBDD95E8, &qword_1BF4F1CB0);

  (v48)(v21, v58);
  (*(v51 + 8))(v31, v35);
  swift_allocObject();
  swift_weakInit();
  v36 = v28;

  sub_1BF38C8B4(&qword_1EDC9D420, &qword_1EBDD9C48, &unk_1BF4F7208, v40);
  v37 = v55;
  sub_1BF4E7D14();

  (*(v54 + 8))(v34, v37);
  swift_beginAccess();
  sub_1BF4E7BC4();
  swift_endAccess();

  __swift_destroy_boxed_opaque_existential_1Tm(v56);
  return v36;
}

uint64_t sub_1BF4CF928(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9C58, &unk_1BF4F7220);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

double sub_1BF4CF998(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_1BF4CFC8C(a1);
  }

  return result;
}

double sub_1BF4CFA00(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v3 = *(Strong + 80);
  }

  else
  {
    v3 = 0;
  }

  v4 = [objc_opt_self() preferredLanguages];
  v5 = sub_1BF4E8BA4();

  if (!v3)
  {

LABEL_10:
    type metadata accessor for KeepAliveTransaction();
    swift_initStackObject();
    sub_1BF390264(0x6843656C61636F6CLL, 0xEC00000065676E61);

    if (qword_1EDC9EFF8 != -1)
    {
      swift_once();
    }

    v8 = sub_1BF4E7B54();
    __swift_project_value_buffer(v8, qword_1EDCA6AA8);
    v9 = sub_1BF4E7B34();
    v10 = sub_1BF4E8E84();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_1BF389000, v9, v10, "Locale preferred languages changed - exiting.", v11, 2u);
      MEMORY[0x1BFB5A5D0](v11, -1, -1);
    }

    exit(0);
  }

  v6 = sub_1BF4D1C7C(v3, v5);

  if ((v6 & 1) == 0)
  {
    goto LABEL_10;
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_1BF4D0230(0);
  }

  return result;
}

double static LocaleChangeCoordinator._simulateLocaleChangesForExtensions(_:)(uint64_t a1)
{
  if (qword_1EDC99408 != -1)
  {
    swift_once();
  }

  sub_1BF4E7C14();

  return result;
}

uint64_t sub_1BF4CFC8C(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8A38, &unk_1BF4EC4D0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v42 - v6;
  swift_beginAccess();
  sub_1BF4D10FC(v1 + 32, v55);
  if (!v56)
  {
    return sub_1BF38C9B4(v55, &qword_1EBDD9C58, &unk_1BF4F7220);
  }

  sub_1BF38E49C(v55, v52);
  sub_1BF38C9B4(v55, &qword_1EBDD9C58, &unk_1BF4F7220);
  v8 = v53;
  v9 = v54;
  __swift_project_boxed_opaque_existential_1(v52, v53);
  v10 = (*(v9 + 32))(a1, v8, v9);
  __swift_destroy_boxed_opaque_existential_1Tm(v52);
  v51 = MEMORY[0x1E69E7CC0];
  v12 = *(v10 + 16);
  if (v12)
  {
    v42[1] = v2;
    v42[0] = v10;
    v13 = v10 + 32;
    v14 = (v5 + 16);
    v49 = (v5 + 8);
    *&v11 = 138543618;
    v43 = v11;
    v44 = (v5 + 16);
    v45 = a1;
    do
    {
      sub_1BF38E49C(v13, v55);
      v15 = v56;
      v16 = v57;
      __swift_project_boxed_opaque_existential_1(v55, v56);
      v17 = (*(v16 + 40))(v15, v16);
      MEMORY[0x1BFB58DD0](v17);
      if (*((v51 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v51 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1BF4E8BE4();
      }

      sub_1BF4E8C24();
      v18 = v51;
      if (qword_1EDC9EFF8 != -1)
      {
        swift_once();
      }

      v19 = sub_1BF4E7B54();
      __swift_project_value_buffer(v19, qword_1EDCA6AA8);
      sub_1BF38E49C(v55, v52);
      (*v14)(v7, a1, v4);
      v20 = sub_1BF4E7B34();
      v21 = sub_1BF4E8E84();
      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        v46 = swift_slowAlloc();
        v48 = swift_slowAlloc();
        v50 = v48;
        *v22 = v43;
        v47 = v21;
        v23 = v13;
        v24 = v18;
        v25 = v12;
        v26 = v7;
        v27 = v4;
        v29 = v53;
        v28 = v54;
        __swift_project_boxed_opaque_existential_1(v52, v53);
        v30 = v29;
        v4 = v27;
        v7 = v26;
        v12 = v25;
        v18 = v24;
        v13 = v23;
        v31 = (*(v28 + 40))(v30, v28);
        __swift_destroy_boxed_opaque_existential_1Tm(v52);
        *(v22 + 4) = v31;
        v32 = v46;
        *v46 = v31;
        *(v22 + 12) = 2082;
        sub_1BF38C8B4(&qword_1EBDD9C68, &qword_1EBDD8A38, &unk_1BF4EC4D0, MEMORY[0x1E69940E0]);
        v33 = sub_1BF4E96A4();
        v35 = v34;
        (*v49)(v7, v4);
        v36 = sub_1BF38D65C(v33, v35, &v50);
        v14 = v44;

        *(v22 + 14) = v36;
        _os_log_impl(&dword_1BF389000, v20, v47, "[Locale] Per app language change detected for extension: %{public}@ (container: %{public}s).", v22, 0x16u);
        sub_1BF38C9B4(v32, &unk_1EBDD9260, &qword_1BF4EC380);
        MEMORY[0x1BFB5A5D0](v32, -1, -1);
        v37 = v48;
        __swift_destroy_boxed_opaque_existential_1Tm(v48);
        MEMORY[0x1BFB5A5D0](v37, -1, -1);
        v38 = v22;
        a1 = v45;
        MEMORY[0x1BFB5A5D0](v38, -1, -1);
      }

      else
      {

        (*v49)(v7, v4);
        __swift_destroy_boxed_opaque_existential_1Tm(v52);
      }

      sub_1BF38E49C(v55, v52);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD92D0, &qword_1BF4F08C0);
      type metadata accessor for WidgetExtension(0);
      if (swift_dynamicCast())
      {
        v39 = v50;
        v40 = *(v50 + OBJC_IVAR____TtC9ChronoKit15WidgetExtension__preferredLanguageChangeLock);
        os_unfair_lock_lock(*(v40 + 16));
        *(v39 + OBJC_IVAR____TtC9ChronoKit15WidgetExtension__preferredLanguageChangeUpdateRequired) = 1;
        os_unfair_lock_unlock(*(v40 + 16));
      }

      __swift_destroy_boxed_opaque_existential_1Tm(v55);
      v13 += 40;
      --v12;
    }

    while (v12);
  }

  else
  {

    v18 = MEMORY[0x1E69E7CC0];
  }

  sub_1BF4D0230(v18);
}

void sub_1BF4D0230(unint64_t a1)
{
  v4 = v1;
  v6 = sub_1BF4E7FF4();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v95 = &v79 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = sub_1BF4E8064();
  v94 = *(v96 - 8);
  MEMORY[0x1EEE9AC00](v96);
  v93 = &v79 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = sub_1BF4E7FE4();
  v91 = *(v92 - 1);
  MEMORY[0x1EEE9AC00](v92);
  v90 = (&v79 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = sub_1BF4E80A4();
  MEMORY[0x1EEE9AC00](v11);
  MEMORY[0x1EEE9AC00](v12);
  v17 = v4[9];
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (v18)
  {
    __break(1u);
    goto LABEL_51;
  }

  v84 = v16;
  v85 = &v79 - v14;
  v86 = v15;
  v87 = v13;
  v88 = v7;
  v89 = v6;
  v4[9] = v19;
  if (qword_1EDC9EFF8 != -1)
  {
LABEL_51:
    swift_once();
  }

  v20 = sub_1BF4E7B54();
  v21 = __swift_project_value_buffer(v20, qword_1EDCA6AA8);

  v83 = v21;
  v22 = sub_1BF4E7B34();
  v23 = sub_1BF4E8E84();

  v24 = os_log_type_enabled(v22, v23);
  v97 = v4;
  if (!v24)
  {
    goto LABEL_20;
  }

  v2 = swift_slowAlloc();
  v3 = swift_slowAlloc();
  aBlock[0] = v3;
  *v2 = 136446210;
  if (!a1)
  {
    v41 = 0xEE00736E6F69736ELL;
    v39 = 0x65747865206C6C61;
    goto LABEL_19;
  }

  if (a1 >> 62)
  {
    goto LABEL_55;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1BF4E9204())
  {
    v26 = MEMORY[0x1E69E7CC0];
    if (i)
    {
      v79 = v3;
      v80 = v2;
      v81 = v23;
      v82 = v22;
      *&v101 = MEMORY[0x1E69E7CC0];
      sub_1BF3A31DC(0, i & ~(i >> 63), 0);
      if (i < 0)
      {
        __break(1u);
        return;
      }

      v27 = 0;
      v26 = v101;
      v28 = a1 & 0xC000000000000001;
      v29 = a1;
      do
      {
        if (v28)
        {
          v30 = MEMORY[0x1BFB59570](v27, a1);
        }

        else
        {
          v30 = *(a1 + 8 * v27 + 32);
        }

        v31 = v30;
        v32 = [v30 description];
        v33 = sub_1BF4E8914();
        v35 = v34;

        *&v101 = v26;
        v37 = *(v26 + 16);
        v36 = *(v26 + 24);
        if (v37 >= v36 >> 1)
        {
          sub_1BF3A31DC((v36 > 1), v37 + 1, 1);
          v26 = v101;
        }

        ++v27;
        *(v26 + 16) = v37 + 1;
        v38 = v26 + 16 * v37;
        *(v38 + 32) = v33;
        *(v38 + 40) = v35;
        a1 = v29;
      }

      while (i != v27);
      v22 = v82;
      v23 = v81;
      v2 = v80;
      v3 = v79;
    }

    *&v101 = v26;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD9BB0, &qword_1BF4EC140);
    sub_1BF38C8B4(&qword_1EDC9F180, &unk_1EBDD9BB0, &qword_1BF4EC140, MEMORY[0x1E69E6310]);
    v39 = sub_1BF4E8894();
    v41 = v40;

    v4 = v97;
LABEL_19:
    v42 = sub_1BF38D65C(v39, v41, aBlock);

    *(v2 + 4) = v42;
    _os_log_impl(&dword_1BF389000, v22, v23, "[Locale] Locale changed detected for %{public}s!  Killing...", v2, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v3);
    MEMORY[0x1BFB5A5D0](v3, -1, -1);
    MEMORY[0x1BFB5A5D0](v2, -1, -1);
LABEL_20:

    if (!a1)
    {
      break;
    }

    if (a1 >> 62)
    {
      v43 = sub_1BF4E9204();
      if (!v43)
      {
        goto LABEL_48;
      }
    }

    else
    {
      v43 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v43)
      {
        goto LABEL_48;
      }
    }

    if (v43 >= 1)
    {
      swift_beginAccess();
      v44 = 0;
      v45 = MEMORY[0x1E69E7CC0];
      while (1)
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          v46 = MEMORY[0x1BFB59570](v44, a1);
        }

        else
        {
          v46 = *(a1 + 8 * v44 + 32);
        }

        v47 = v46;
        sub_1BF4D10FC((v4 + 4), aBlock);
        if (v105)
        {
          sub_1BF38E49C(aBlock, v98);
          sub_1BF38C9B4(aBlock, &qword_1EBDD9C58, &unk_1BF4F7220);
          v48 = v99;
          v49 = v100;
          __swift_project_boxed_opaque_existential_1(v98, v99);
          ExtensionManaging.extension(for:)(v47, v48, v49);
          __swift_destroy_boxed_opaque_existential_1Tm(v98);
          if (*(&v102 + 1))
          {
            sub_1BF38E60C(&v101, aBlock);
            sub_1BF38E49C(aBlock, &v101);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v45 = sub_1BF38E628(0, v45[2] + 1, 1, v45);
            }

            v51 = v45[2];
            v50 = v45[3];
            if (v51 >= v50 >> 1)
            {
              v45 = sub_1BF38E628((v50 > 1), v51 + 1, 1, v45);
            }

            __swift_destroy_boxed_opaque_existential_1Tm(aBlock);
            v45[2] = v51 + 1;
            sub_1BF38E60C(&v101, &v45[5 * v51 + 4]);
            v4 = v97;
            goto LABEL_27;
          }

          v4 = v97;
        }

        else
        {

          sub_1BF38C9B4(aBlock, &qword_1EBDD9C58, &unk_1BF4F7220);
          v101 = 0u;
          v102 = 0u;
          v103 = 0;
        }

        sub_1BF38C9B4(&v101, &unk_1EBDD91B0, &unk_1BF4F0720);
LABEL_27:
        if (v43 == ++v44)
        {
          goto LABEL_41;
        }
      }
    }

    __break(1u);
LABEL_55:
    ;
  }

  swift_beginAccess();
  sub_1BF4D10FC((v4 + 4), aBlock);
  v52 = v105;
  if (v105)
  {
    v53 = v106;
    v54 = __swift_project_boxed_opaque_existential_1(aBlock, v105);
    v55 = *(v52 - 1);
    v56 = MEMORY[0x1EEE9AC00](v54);
    v58 = &v79 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v55 + 16))(v58, v56);
    sub_1BF38C9B4(aBlock, &qword_1EBDD9C58, &unk_1BF4F7220);
    v45 = (*(v53 + 2))(v52, v53);
    (*(v55 + 8))(v58, v52);
LABEL_41:
    v59 = v45[2];
    if (v59)
    {
      goto LABEL_42;
    }

LABEL_49:

    return;
  }

  sub_1BF38C9B4(aBlock, &qword_1EBDD9C58, &unk_1BF4F7220);
LABEL_48:
  v45 = MEMORY[0x1E69E7CC0];
  v59 = *(MEMORY[0x1E69E7CC0] + 16);
  if (!v59)
  {
    goto LABEL_49;
  }

LABEL_42:
  v60 = MEMORY[0x1E69E7CC0];
  v61 = (v45 + 4);
  do
  {
    sub_1BF38E49C(v61, aBlock);
    v62 = v105;
    v63 = v106;
    __swift_project_boxed_opaque_existential_1(aBlock, v105);
    (*(v63 + 38))(v62, v63);
    __swift_destroy_boxed_opaque_existential_1Tm(aBlock);
    v61 += 40;
    --v59;
  }

  while (v59);

  v64 = sub_1BF4E7B34();
  v65 = sub_1BF4E8E84();
  if (os_log_type_enabled(v64, v65))
  {
    v66 = swift_slowAlloc();
    *v66 = 0;
    _os_log_impl(&dword_1BF389000, v64, v65, "[Locale] Terminations completed!", v66, 2u);
    MEMORY[0x1BFB5A5D0](v66, -1, -1);
  }

  v97 = v97[3];
  v67 = v84;
  sub_1BF4E8084();
  v68 = v90;
  *v90 = 2;
  v69 = v91;
  v70 = v92;
  (*(v91 + 104))(v68, *MEMORY[0x1E69E7F48], v92);
  v71 = v85;
  sub_1BF4E8094();
  (*(v69 + 8))(v68, v70);
  v92 = *(v86 + 8);
  v72 = v87;
  (v92)(v67, v87);
  v73 = swift_allocObject();
  *(v73 + 16) = a1;
  v106 = sub_1BF4D116C;
  v107 = v73;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BF38E868;
  v105 = &block_descriptor_16;
  v74 = _Block_copy(aBlock);

  v75 = v93;
  sub_1BF4E8014();
  v98[0] = v60;
  sub_1BF3A118C(&qword_1EDC9F980, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8EB8, &unk_1BF4F0890);
  sub_1BF38C8B4(&qword_1EDC9F190, &qword_1EBDD8EB8, &unk_1BF4F0890, MEMORY[0x1E69E6328]);
  v76 = v95;
  v77 = v89;
  sub_1BF4E91A4();
  v78 = v97;
  MEMORY[0x1BFB59140](v71, v75, v76, v74);
  _Block_release(v74);

  (*(v88 + 8))(v76, v77);
  (*(v94 + 8))(v75, v96);
  (v92)(v71, v72);
}

double sub_1BF4D0EA8(uint64_t a1)
{
  if (qword_1EDC9EFF8 != -1)
  {
    swift_once();
  }

  v1 = sub_1BF4E7B54();
  __swift_project_value_buffer(v1, qword_1EDCA6AA8);
  v2 = sub_1BF4E7B34();
  v3 = sub_1BF4E8E84();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1BF389000, v2, v3, "[Locale] Notifying internally...", v4, 2u);
    MEMORY[0x1BFB5A5D0](v4, -1, -1);
  }

  if (qword_1EDC99408 != -1)
  {
    swift_once();
  }

  sub_1BF4E7C14();

  return result;
}

uint64_t LocaleChangeCoordinator.deinit()
{

  sub_1BF38C9B4(v0 + 32, &qword_1EBDD9C58, &unk_1BF4F7220);

  return v0;
}

uint64_t LocaleChangeCoordinator.__deallocating_deinit()
{

  sub_1BF38C9B4(v0 + 32, &qword_1EBDD9C58, &unk_1BF4F7220);

  return swift_deallocClassInstance();
}

uint64_t sub_1BF4D10FC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9C58, &unk_1BF4F7220);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t Extension.description.getter(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BF4E7334();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27[0] = 0;
  v27[1] = 0xE000000000000000;
  sub_1BF4E92E4();
  MEMORY[0x1BFB58C90](60, 0xE100000000000000);
  v8 = sub_1BF4E9894();
  MEMORY[0x1BFB58C90](v8);

  MEMORY[0x1BFB58C90](0x746E656469202D20, 0xEF203A7265696669);
  v9 = (*(a2 + 40))(a1, a2);
  v10 = [v9 description];
  v11 = sub_1BF4E8914();
  v13 = v12;

  MEMORY[0x1BFB58C90](v11, v13);

  MEMORY[0x1BFB58C90](0x6F6973726576202CLL, 0xEB00000000203A6ELL);
  v14 = (*(a2 + 56))(a1, a2);
  MEMORY[0x1BFB58C90](v14);

  MEMORY[0x1BFB58C90](0xD000000000000014, 0x80000001BF4FABD0);
  v15 = (*(a2 + 152))(a1, a2);
  MEMORY[0x1BFB58C90](v15);

  MEMORY[0x1BFB58C90](0xD000000000000014, 0x80000001BF4FE780);
  (*(a2 + 72))(a1, a2);
  if (qword_1EDC9F0F0 != -1)
  {
    swift_once();
  }

  v16 = qword_1EDC9F0F8;
  v17 = sub_1BF4E7254();
  v18 = [v16 stringFromDate_];

  v19 = sub_1BF4E8914();
  v21 = v20;

  (*(v5 + 8))(v7, v4);
  MEMORY[0x1BFB58C90](v19, v21);

  MEMORY[0x1BFB58C90](0x7265746E49736920, 0xED0000203A6C616ELL);
  v22 = (*(a2 + 80))(a1, a2);
  v23 = (v22 & 1) == 0;
  if (v22)
  {
    v24 = 1702195828;
  }

  else
  {
    v24 = 0x65736C6166;
  }

  if (v23)
  {
    v25 = 0xE500000000000000;
  }

  else
  {
    v25 = 0xE400000000000000;
  }

  MEMORY[0x1BFB58C90](v24, v25);

  MEMORY[0x1BFB58C90](62, 0xE100000000000000);
  return v27[0];
}

uint64_t sub_1BF4D155C(uint64_t a1)
{
  v2 = v1 + *(a1 + 20);
  if (*(v2 + 32))
  {
    v3 = *(v2 + 24);
  }

  else
  {
    swift_beginAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8B48, &unk_1BF4EC990);
    v3 = sub_1BF4E76B4();
    swift_endAccess();
  }

  return v3;
}

uint64_t sub_1BF4D15FC(uint64_t a1)
{
  v2 = (v1 + *(a1 + 20));
  v3 = (v2 + *(type metadata accessor for WidgetExtensionInfo(0) + 68));
  if (v3[1])
  {
    v4 = *v3;
  }

  else
  {
    v5 = *v2;
    v6 = *MEMORY[0x1E69941B0];
    swift_beginAccess();
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8A38, &unk_1BF4EC4D0);
    if ((*(*(v7 - 8) + 48))(v5 + v6, 1, v7))
    {
      swift_endAccess();
      v4 = 0x6E776F6E6B6E55;
    }

    else
    {
      v4 = sub_1BF4E76B4();
      swift_endAccess();
    }
  }

  return v4;
}

uint64_t static Extension.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v9[3] = a3;
  v9[4] = a4;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v9);
  (*(*(a3 - 8) + 16))(boxed_opaque_existential_0, a2, a3);
  LOBYTE(v4) = (*(v4 + 312))(v9, a3, v4);
  __swift_destroy_boxed_opaque_existential_1Tm(v9);
  return v4 & 1;
}

id AssetCatalogInfo.configurationBackgroundColor.getter()
{
  v1 = *v0;
  v2 = *v0;
  return v1;
}

void *AssetCatalogInfo.configurationAccentColor.getter()
{
  v1 = *(v0 + 8);
  v2 = v1;
  return v1;
}

uint64_t sub_1BF4D18B0(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
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

uint64_t sub_1BF4D190C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

BOOL sub_1BF4D1B60(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  v3 = *(a2 + 16);
  do
  {
    v4 = v2;
    if (v3 == v2)
    {
      break;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD91A0, &unk_1BF4EC4E0);
    ++v2;
    sub_1BF38C8B4(&qword_1EDC9D538, &unk_1EBDD91A0, &unk_1BF4EC4E0, MEMORY[0x1E6994148]);
  }

  while ((sub_1BF4E88C4() & 1) == 0);
  return v3 != v4;
}

uint64_t sub_1BF4D1C7C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (sub_1BF4E9734() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_1BF4D1D0C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8A38, &unk_1BF4EC4D0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9.n128_f64[0] = MEMORY[0x1EEE9AC00](v8);
  v11 = &v25 - v10;
  v12 = *(a1 + 16);
  if (v12 != *(a2 + 16))
  {
    v22 = 0;
    return v22 & 1;
  }

  if (!v12 || a1 == a2)
  {
    v22 = 1;
    return v22 & 1;
  }

  v13 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v14 = a1 + v13;
  v15 = a2 + v13;
  v17 = *(v5 + 16);
  v16 = v5 + 16;
  v18 = (v16 - 8);
  v25 = *(v16 + 56);
  v26 = v17;
  while (1)
  {
    v19 = v26;
    result = (v26)(v11, v14, v4, v9);
    if (!v12)
    {
      break;
    }

    v21 = v16;
    v19(v7, v15, v4);
    sub_1BF38C8B4(&qword_1EDC9F050, &qword_1EBDD8A38, &unk_1BF4EC4D0, MEMORY[0x1E69940C8]);
    v22 = sub_1BF4E88C4();
    v23 = *v18;
    (*v18)(v7, v4);
    v23(v11, v4);
    if (v22)
    {
      v15 += v25;
      v14 += v25;
      v24 = v12-- == 1;
      v16 = v21;
      if (!v24)
      {
        continue;
      }
    }

    return v22 & 1;
  }

  __break(1u);
  return result;
}

void sub_1BF4D1F28(uint64_t (*a1)(char **), uint64_t a2, uint64_t a3, void (*a4)(uint64_t *__return_ptr, uint64_t), uint64_t a5)
{
  v56 = a5;
  v52 = a4;
  v45 = a1;
  v46 = a2;
  v55 = type metadata accessor for ExtensionMetadata(0);
  v6 = *(v55 - 8);
  MEMORY[0x1EEE9AC00](v55);
  v51 = v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9318, &qword_1BF4F09A8);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12.n128_f64[0] = MEMORY[0x1EEE9AC00](v11);
  v14 = v42 - v13;
  v15 = 0;
  v16 = 0;
  v17 = 0;
  v18 = 0;
  v59 = MEMORY[0x1E69E7CC0];
  v49 = v6;
  v50 = a3;
  v21 = *(a3 + 64);
  v20 = a3 + 64;
  v19 = v21;
  v22 = -1 << *(v20 - 32);
  if (-v22 < 64)
  {
    v23 = ~(-1 << -v22);
  }

  else
  {
    v23 = -1;
  }

  v24 = v23 & v19;
  v47 = -1 << *(v20 - 32);
  v25 = (63 - v22) >> 6;
  v53 = (v6 + 48);
  v54 = (v6 + 56);
  while (1)
  {
    while (1)
    {
      if (!v15)
      {
        goto LABEL_8;
      }

      if (v15 >> 62)
      {
        break;
      }

      if (v16 == *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_8;
      }

LABEL_22:
      v44 = v17;
      if ((v15 & 0xC000000000000001) != 0)
      {
        v41 = v16;
        v36 = MEMORY[0x1BFB59570](v16, v15, v12);
        v37 = __OFADD__(v41, 1);
        v38 = v41 + 1;
        if (v37)
        {
          goto LABEL_33;
        }
      }

      else
      {
        if ((v16 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_39:
          __break(1u);
          return;
        }

        if (v16 >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_39;
        }

        v35 = v16;
        v36 = *(v15 + 8 * v16 + 32);
        v37 = __OFADD__(v35, 1);
        v38 = v35 + 1;
        if (v37)
        {
LABEL_33:
          __break(1u);
LABEL_34:
          sub_1BF39A9CC(v50);

          return;
        }
      }

      v43 = v38;
      v17 = v36;
      v58 = v36;
      v39 = v48;
      v40 = v45(&v58);
      if (v39)
      {
        goto LABEL_37;
      }

      v48 = 0;
      if (v40)
      {
        sub_1BF4E9374();
        v42[1] = *(v59 + 16);
        sub_1BF4E93B4();
        sub_1BF4E93C4();
        sub_1BF4E9384();
      }

      else
      {
      }

      v16 = v43;
      v17 = v44;
    }

    v44 = v17;
    v33 = v16;
    v34 = sub_1BF4E9204();
    v16 = v33;
    v17 = v44;
    if (v16 != v34)
    {
      goto LABEL_22;
    }

LABEL_8:
    if (!v24)
    {
      break;
    }

    v26 = v18;
LABEL_17:
    v28 = __clz(__rbit64(v24));
    v24 &= v24 - 1;
    sub_1BF38F0DC(*(v50 + 56) + *(v49 + 72) * (v28 | (v26 << 6)), v14);
    v29 = 0;
    v17 = v26;
LABEL_18:
    v30 = v55;
    (*v54)(v14, v29, 1, v55);
    sub_1BF4DD22C(v14, v10);
    if ((*v53)(v10, 1, v30) == 1)
    {
      goto LABEL_34;
    }

    v31 = v51;
    sub_1BF3919A0(v10, v51);
    v52(&v57, v31);
    sub_1BF38F140(v31);
    v32 = v57;

    v16 = 0;
    v15 = v32;
    v18 = v17;
  }

  if (v25 <= (v18 + 1))
  {
    v27 = (v18 + 1);
  }

  else
  {
    v27 = v25;
  }

  v17 = (v27 - 1);
  while (1)
  {
    v26 = (v18 + 1);
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v26 >= v25)
    {
      v24 = 0;
      v29 = 1;
      goto LABEL_18;
    }

    v24 = *(v20 + 8 * v26);
    ++v18;
    if (v24)
    {
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_37:

  sub_1BF39A9CC(v50);
}

BOOL CHSBaseDescriptor.matches(localeData:)(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 == 15)
  {
    v3 = [v2 localeToken];
    if (v3)
    {
      v4 = v3;
      v5 = sub_1BF4E71C4();
      v7 = v6;

      sub_1BF3B03C0(v5, v7);
      return 0;
    }

    else
    {
      return 1;
    }
  }

  else
  {
    sub_1BF3D8864(a1, a2);
    v11 = CHSBaseDescriptor.matches(locale:)(a1, a2);
    sub_1BF3DB210(a1, a2);
    return v11;
  }
}

BOOL CHSBaseDescriptor.matches(locale:)(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = [v3 localeToken];
  if (v6)
  {
    v7 = v6;
    v8 = sub_1BF4E71C4();
    v10 = v9;

    if (v10 >> 60 != 15)
    {
      if (a2 >> 60 != 15)
      {
        sub_1BF48055C(a1, a2);
        sub_1BF48055C(v8, v10);
        v11 = sub_1BF408374(v8, v10, a1, a2);
        sub_1BF3DB210(a1, a2);
        sub_1BF3DB210(v8, v10);
        sub_1BF3DB210(v8, v10);
        return v11;
      }

      goto LABEL_8;
    }
  }

  else
  {
    v8 = 0;
    v10 = 0xF000000000000000;
  }

  if (a2 >> 60 == 15)
  {
    sub_1BF48055C(a1, a2);
    sub_1BF3DB210(v8, v10);
    return 1;
  }

LABEL_8:
  sub_1BF48055C(a1, a2);
  sub_1BF3DB210(v8, v10);
  sub_1BF3DB210(a1, a2);
  return 0;
}

uint64_t WidgetDescriptorCache.__allocating_init(backingStore:)(uint64_t a1)
{
  v2 = swift_allocObject();
  WidgetDescriptorCache.init(backingStore:)(a1);
  return v2;
}

void *WidgetDescriptorCache.init(backingStore:)(uint64_t a1)
{
  v1[3] = 0;
  swift_unknownObjectWeakInit();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9C70, &qword_1BF4F73C0);
  swift_allocObject();
  v1[5] = sub_1BF4E7C34();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9C78, &qword_1BF4F73C8);
  v3 = swift_allocObject();
  *(v3 + 24) = 0;
  *(v3 + 16) = MEMORY[0x1E69E7CC8];
  v1[8] = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9C80, &unk_1BF4F73D0);
  v4 = swift_allocObject();
  *(v4 + 24) = 0;
  *(v4 + 16) = MEMORY[0x1E69E7CD0];
  v1[9] = v4;
  v1[4] = a1;
  v1[6] = sub_1BF4D2668;
  v1[7] = 0;
  return v1;
}

uint64_t sub_1BF4D2668@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8A30, &qword_1BF4F3E50);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8A38, &unk_1BF4EC4D0);
  v5 = *(v4 - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1BF4EBEF0;
  (*(v5 + 16))(v7 + v6, a1, v4);
  v8 = _sSo8NSLocaleC9ChronoKitE18currentLocaleToken3forSDy0B8Services15TypedIdentifierVyAF0J4TypeO6BundleO9ContainerOGAC0eF10DescriptorVGSayAOG_tFZ_0(v7);
  swift_setDeallocating();
  (*(v5 + 8))(v7 + v6, v4);
  swift_deallocClassInstance();
  sub_1BF4274EC(a1, v8, a2);
}

uint64_t WidgetDescriptorCache.deinit()
{
  sub_1BF4DB608(v0 + 16);

  return v0;
}

uint64_t WidgetDescriptorCache.__deallocating_deinit()
{
  sub_1BF4DB608(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t WidgetDescriptorCache.descriptorUpdatePublisher.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9C70, &qword_1BF4F73C0);
  sub_1BF38C8B4(&qword_1EDC9D3C8, &qword_1EBDD9C70, &qword_1BF4F73C0, MEMORY[0x1E695BF88]);
  return sub_1BF4E7C84();
}

void *WidgetDescriptorCache.allDescriptors.getter()
{
  v1 = *(v0 + 64);

  os_unfair_lock_lock((v1 + 24));
  v2 = sub_1BF4D9FC4(*(v1 + 16));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9978, &qword_1BF4F4970);
  v3 = swift_allocObject();
  v4 = type metadata accessor for DefaultFeatureFlagEvaluator();
  v5 = swift_allocObject();
  v3[6] = v4;
  v3[7] = &off_1F3DF42A8;
  v3[2] = v2;
  v3[3] = v5;
  os_unfair_lock_unlock((v1 + 24));

  return v3;
}

uint64_t WidgetDescriptorCache.allDescriptors(extensionIdentity:)()
{
  v1 = *(v0 + 64);

  os_unfair_lock_lock((v1 + 24));
  sub_1BF4DB630((v1 + 16), &v4);
  os_unfair_lock_unlock((v1 + 24));
  v2 = v4;

  return v2;
}

uint64_t sub_1BF4D2A18@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = type metadata accessor for ExtensionMetadata(0);
  v7 = *(v6 - 1);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9318, &qword_1BF4F09A8);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v25 - v11;
  v13 = *a1;
  if (*(v13 + 16) && (v14 = sub_1BF3916CC(a2), (v15 & 1) != 0))
  {
    sub_1BF38F0DC(*(v13 + 56) + *(v7 + 72) * v14, v12);
    (*(v7 + 56))(v12, 0, 1, v6);
  }

  else
  {
    (*(v7 + 56))(v12, 1, 1, v6);
  }

  if ((*(v7 + 48))(v12, 1, v6))
  {
    result = sub_1BF38C9B4(v12, &qword_1EBDD9318, &qword_1BF4F09A8);
    v17 = 0;
  }

  else
  {
    sub_1BF38F0DC(v12, v9);
    sub_1BF38C9B4(v12, &qword_1EBDD9318, &qword_1BF4F09A8);
    v18 = *&v9[v6[6]];
    if (v18 >> 62)
    {
      sub_1BF3901C0(0, &qword_1EDC9D720, 0x1E6994220);

      v22 = sub_1BF4E9474();

      v18 = v22;
    }

    else
    {

      sub_1BF4E9754();
      sub_1BF3901C0(0, &qword_1EDC9D720, 0x1E6994220);
    }

    v19 = *&v9[v6[7]];
    if (v19 >> 62)
    {
      sub_1BF3901C0(0, &qword_1EDC9D720, 0x1E6994220);

      v23 = sub_1BF4E9474();

      v19 = v23;
    }

    else
    {

      sub_1BF4E9754();
      sub_1BF3901C0(0, &qword_1EDC9D720, 0x1E6994220);
    }

    v26 = v18;
    sub_1BF44BBA4(v19);
    v20 = v26;
    v21 = *&v9[v6[9]];
    if (v21 >> 62)
    {
      sub_1BF3901C0(0, &qword_1EDC9D720, 0x1E6994220);

      v24 = sub_1BF4E9474();

      v21 = v24;
    }

    else
    {

      sub_1BF4E9754();
      sub_1BF3901C0(0, &qword_1EDC9D720, 0x1E6994220);
    }

    v26 = v20;
    sub_1BF44BBA4(v21);
    v17 = v26;
    result = sub_1BF38F140(v9);
  }

  *a3 = v17;
  return result;
}

uint64_t WidgetDescriptorCache.controlDescriptors(containedBy:)()
{
  v1 = *(v0 + 64);

  os_unfair_lock_lock((v1 + 24));
  sub_1BF4DB64C((v1 + 16), &v4);
  os_unfair_lock_unlock((v1 + 24));
  v2 = v4;

  return v2;
}

double sub_1BF4D2E48@<D0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = *(a1 + *(type metadata accessor for ExtensionMetadata(0) + 28));

  return result;
}

uint64_t sub_1BF4D2E90(id *a1, uint64_t a2)
{
  v29 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8A38, &unk_1BF4EC4D0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v28 = &v28 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9288, &unk_1BF4F5A20);
  v7 = v6 - 8;
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v28 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9290, &qword_1BF4EE4B0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v30 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v28 - v13;
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = &v28 - v17;
  v19 = [*a1 extensionIdentity];
  v20 = *MEMORY[0x1E69941B0];
  swift_beginAccess();
  sub_1BF38C94C(v19 + v20, v18, &qword_1EBDD9290, &qword_1BF4EE4B0);

  (*(v4 + 16))(v14, v29, v3);
  (*(v4 + 56))(v14, 0, 1, v3);
  v21 = *(v7 + 56);
  sub_1BF38C94C(v18, v9, &qword_1EBDD9290, &qword_1BF4EE4B0);
  sub_1BF38C94C(v14, &v9[v21], &qword_1EBDD9290, &qword_1BF4EE4B0);
  v22 = *(v4 + 48);
  if (v22(v9, 1, v3) != 1)
  {
    sub_1BF38C94C(v9, v30, &qword_1EBDD9290, &qword_1BF4EE4B0);
    if (v22(&v9[v21], 1, v3) != 1)
    {
      v24 = v28;
      (*(v4 + 32))(v28, &v9[v21], v3);
      sub_1BF38C8B4(&qword_1EDC9F050, &qword_1EBDD8A38, &unk_1BF4EC4D0, MEMORY[0x1E69940C8]);
      v25 = v30;
      v23 = sub_1BF4E88C4();
      v26 = *(v4 + 8);
      v26(v24, v3);
      sub_1BF38C9B4(v14, &qword_1EBDD9290, &qword_1BF4EE4B0);
      sub_1BF38C9B4(v18, &qword_1EBDD9290, &qword_1BF4EE4B0);
      v26(v25, v3);
      sub_1BF38C9B4(v9, &qword_1EBDD9290, &qword_1BF4EE4B0);
      return v23 & 1;
    }

    sub_1BF38C9B4(v14, &qword_1EBDD9290, &qword_1BF4EE4B0);
    sub_1BF38C9B4(v18, &qword_1EBDD9290, &qword_1BF4EE4B0);
    (*(v4 + 8))(v30, v3);
    goto LABEL_6;
  }

  sub_1BF38C9B4(v14, &qword_1EBDD9290, &qword_1BF4EE4B0);
  sub_1BF38C9B4(v18, &qword_1EBDD9290, &qword_1BF4EE4B0);
  if (v22(&v9[v21], 1, v3) != 1)
  {
LABEL_6:
    sub_1BF38C9B4(v9, &qword_1EBDD9288, &unk_1BF4F5A20);
    v23 = 0;
    return v23 & 1;
  }

  sub_1BF38C9B4(v9, &qword_1EBDD9290, &qword_1BF4EE4B0);
  v23 = 1;
  return v23 & 1;
}

uint64_t sub_1BF4D336C(uint64_t (*a1)(void))
{
  v3 = *(v1 + 64);

  os_unfair_lock_lock((v3 + 24));
  v4 = a1(*(v3 + 16));
  os_unfair_lock_unlock((v3 + 24));

  return v4;
}

uint64_t sub_1BF4D33D8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9C70, &qword_1BF4F73C0);
  sub_1BF38C8B4(&qword_1EDC9D3C8, &qword_1EBDD9C70, &qword_1BF4F73C0, MEMORY[0x1E695BF88]);
  return sub_1BF4E7C84();
}

uint64_t WidgetDescriptorCache.initialize(with:)(uint64_t a1, void *a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD91A0, &unk_1BF4EC4E0);
  v144 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v133 = &v133 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v149 = &v133 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v141 = &v133 - v10;
  v11 = type metadata accessor for ExtensionMetadata(0);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v136 = &v133 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v145 = &v133 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v133 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v133 - v20;
  MEMORY[0x1EEE9AC00](v22);
  v147 = &v133 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v138 = &v133 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v137 = &v133 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v146 = &v133 - v29;
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v133 - v31;
  *(v2 + 24) = a2;
  swift_unknownObjectWeakAssign();
  v135 = v2;
  v33 = sub_1BF4D5248();
  v34 = *(v33 + 16);
  v139 = v12;
  v150 = v34;
  v151 = v33;
  v143 = a1;
  v142 = a2;
  if (v34)
  {
    v35 = v33;
    ObjectType = swift_getObjectType();
    v148 = a2[4];
    v36 = v35 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
    v140 = *(v12 + 72);
    v152 = MEMORY[0x1E69E7CC0];
    v37 = v34;
    do
    {
      sub_1BF38F0DC(v36, v32);
      (v148)(v157, v32, ObjectType, v142);
      sub_1BF38F140(v32);
      if (v157[3])
      {
        sub_1BF38E60C(v157, &v158);
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v38 = v152;
        }

        else
        {
          v38 = sub_1BF38E628(0, v152[2] + 1, 1, v152);
        }

        v40 = v38[2];
        v39 = v38[3];
        if (v40 >= v39 >> 1)
        {
          v38 = sub_1BF38E628((v39 > 1), v40 + 1, 1, v38);
        }

        v38[2] = v40 + 1;
        v152 = v38;
        sub_1BF38E60C(&v158, &v38[5 * v40 + 4]);
      }

      else
      {
        sub_1BF38C9B4(v157, &unk_1EBDD91B0, &unk_1BF4F0720);
      }

      v36 += v140;
      --v37;
    }

    while (v37);
  }

  else
  {
    v152 = MEMORY[0x1E69E7CC0];
  }

  v134 = v11;
  ObjectType = sub_1BF3DAEA0(MEMORY[0x1E69E7CC0]);
  v41 = v152[2];
  if (v41)
  {
    v42 = v152 + 4;
    v148 = (v144 + 16);
    v140 = (v144 + 8);
    v43 = v149;
    v44 = v141;
    while (1)
    {
      sub_1BF38E49C(v42, &v158);
      v47 = *(&v159 + 1);
      v48 = v160;
      __swift_project_boxed_opaque_existential_1(&v158, *(&v159 + 1));
      v49 = (*(v48 + 40))(v47, v48);
      sub_1BF4E9024();

      v50 = v44;
      v51 = *v148;
      (*v148)(v43, v50, v5);
      sub_1BF38E49C(&v158, v157);
      v52 = ObjectType;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v156 = v52;
      v54 = sub_1BF38C890(v43);
      v56 = *(v52 + 16);
      v57 = (v55 & 1) == 0;
      v58 = __OFADD__(v56, v57);
      v59 = v56 + v57;
      if (v58)
      {
        break;
      }

      v60 = v55;
      if (*(v52 + 24) >= v59)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v68 = v54;
          sub_1BF4A3A84();
          v54 = v68;
        }
      }

      else
      {
        sub_1BF49F724(v59, isUniquelyReferenced_nonNull_native);
        v54 = sub_1BF38C890(v149);
        if ((v60 & 1) != (v61 & 1))
        {
          result = sub_1BF4E9794();
          __break(1u);
          return result;
        }
      }

      isUniquelyReferenced_nonNull_native = v146;
      v62 = v156;
      ObjectType = v156;
      if (v60)
      {
        v45 = (v156[7] + 40 * v54);
        __swift_destroy_boxed_opaque_existential_1Tm(v45);
        sub_1BF38E60C(v157, v45);
        v43 = v149;
      }

      else
      {
        v156[(v54 >> 6) + 8] |= 1 << v54;
        v63 = v54;
        v43 = v149;
        v51((v62[6] + *(v144 + 72) * v54), v149, v5);
        v64 = *(ObjectType + 56) + 40 * v63;
        v65 = ObjectType;
        sub_1BF38E60C(v157, v64);
        v66 = *(v65 + 16);
        v58 = __OFADD__(v66, 1);
        v67 = v66 + 1;
        if (v58)
        {
          goto LABEL_113;
        }

        *(v65 + 16) = v67;
      }

      v46 = *v140;
      (*v140)(v43, v5);
      v44 = v141;
      v46(v141, v5);
      __swift_destroy_boxed_opaque_existential_1Tm(&v158);
      v42 += 5;
      if (!--v41)
      {
        goto LABEL_27;
      }
    }

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
    swift_once();
    goto LABEL_94;
  }

  isUniquelyReferenced_nonNull_native = v146;
LABEL_27:

  if (v150)
  {
    v69 = 0;
    v43 = MEMORY[0x1E69E7CC0];
    v42 = v139;
    v70 = ObjectType;
    v71 = v138;
    v72 = v151;
    do
    {
      if (v69 >= v72[2])
      {
        goto LABEL_110;
      }

      v73 = v42[9];
      v152 = ((*(v42 + 80) + 32) & ~*(v42 + 80));
      v149 = v73;
      sub_1BF38F0DC(v152 + v72 + v73 * v69, isUniquelyReferenced_nonNull_native);
      if (v70[2] && (v74 = sub_1BF38C890(isUniquelyReferenced_nonNull_native), v70 = ObjectType, (v75 & 1) != 0))
      {
        sub_1BF38E49C(*(ObjectType + 56) + 40 * v74, &v158);
        sub_1BF38C9B4(&v158, &unk_1EBDD91B0, &unk_1BF4F0720);
        sub_1BF3919A0(isUniquelyReferenced_nonNull_native, v137);
        v76 = swift_isUniquelyReferenced_nonNull_native();
        v157[0] = v43;
        if ((v76 & 1) == 0)
        {
          sub_1BF3E1604(0, *(v43 + 2) + 1, 1);
          v70 = ObjectType;
          v43 = v157[0];
        }

        v78 = *(v43 + 2);
        v77 = *(v43 + 3);
        if (v78 >= v77 >> 1)
        {
          sub_1BF3E1604((v77 > 1), v78 + 1, 1);
          v70 = ObjectType;
          v43 = v157[0];
        }

        *(v43 + 2) = v78 + 1;
        sub_1BF3919A0(v137, v152 + v43 + v78 * v149);
        v42 = v139;
        isUniquelyReferenced_nonNull_native = v146;
      }

      else
      {
        v160 = 0;
        v158 = 0u;
        v159 = 0u;
        sub_1BF38F140(isUniquelyReferenced_nonNull_native);
        sub_1BF38C9B4(&v158, &unk_1EBDD91B0, &unk_1BF4F0720);
      }

      ++v69;
      v72 = v151;
    }

    while (v150 != v69);
    v148 = v43;
    isUniquelyReferenced_nonNull_native = 0;
    v42 = (v152 + v151);
    v79 = MEMORY[0x1E69E7CC0];
    v43 = v134;
    v80 = v149;
    do
    {
      if (isUniquelyReferenced_nonNull_native >= v72[2])
      {
        goto LABEL_111;
      }

      sub_1BF38F0DC(v42, v71);
      if (v70[2] && (v81 = sub_1BF38C890(v71), v70 = ObjectType, (v82 & 1) != 0))
      {
        sub_1BF38E49C(*(ObjectType + 56) + 40 * v81, &v158);
        sub_1BF38F140(v71);
        sub_1BF38C9B4(&v158, &unk_1EBDD91B0, &unk_1BF4F0720);
      }

      else
      {
        v160 = 0;
        v158 = 0u;
        v159 = 0u;
        sub_1BF38C9B4(&v158, &unk_1EBDD91B0, &unk_1BF4F0720);
        sub_1BF3919A0(v71, v147);
        v83 = swift_isUniquelyReferenced_nonNull_native();
        v157[0] = v79;
        if ((v83 & 1) == 0)
        {
          sub_1BF3E1604(0, v79[2] + 1, 1);
          v70 = ObjectType;
          v79 = v157[0];
        }

        v85 = v79[2];
        v84 = v79[3];
        if (v85 >= v84 >> 1)
        {
          sub_1BF3E1604((v84 > 1), v85 + 1, 1);
          v70 = ObjectType;
          v79 = v157[0];
        }

        v79[2] = v85 + 1;
        v80 = v149;
        sub_1BF3919A0(v147, v152 + v79 + v85 * v149);
        v71 = v138;
      }

      ++isUniquelyReferenced_nonNull_native;
      v42 = (v42 + v80);
      v72 = v151;
    }

    while (v150 != isUniquelyReferenced_nonNull_native);
    isUniquelyReferenced_nonNull_native = v148;
  }

  else
  {
    isUniquelyReferenced_nonNull_native = MEMORY[0x1E69E7CC0];
    v79 = MEMORY[0x1E69E7CC0];
    v70 = ObjectType;
    v43 = v134;
  }

  v156 = v79;
  v155 = MEMORY[0x1E69E7CC0];
  v86 = v143;
  swift_unknownObjectRetain();

  sub_1BF4DB6C4(isUniquelyReferenced_nonNull_native, v86, v142, v70, &v155);
  v88 = v87;
  v146 = 0;

  swift_unknownObjectRelease();

  sub_1BF4DC064(v88);
  v42 = v89;
  if (*(v89 + 16))
  {
    v148 = *(v88 + 16);
    if (v148)
    {
      v90 = 0;
      v91 = MEMORY[0x1E69E7CC0];
      v92 = v139;
      v147 = v88;
      v149 = v89;
      while (1)
      {
        if (v90 >= *(v88 + 16))
        {
          goto LABEL_112;
        }

        v150 = v91;
        v151 = v90;
        v152 = ((*(v92 + 80) + 32) & ~*(v92 + 80));
        v93 = v152 + v88;
        v94 = v92[9];
        sub_1BF38F0DC(&v93[v94 * v90], v21);
        v95 = v42[2];
        if (v95)
        {
          break;
        }

LABEL_82:
        sub_1BF3919A0(v21, v145);
        v91 = v150;
        v109 = swift_isUniquelyReferenced_nonNull_native();
        v154 = v91;
        if ((v109 & 1) == 0)
        {
          sub_1BF3E1604(0, *(v91 + 16) + 1, 1);
          v91 = v154;
        }

        v111 = *(v91 + 16);
        v110 = *(v91 + 24);
        if (v111 >= v110 >> 1)
        {
          sub_1BF3E1604((v110 > 1), v111 + 1, 1);
          v91 = v154;
        }

        *(v91 + 16) = v111 + 1;
        sub_1BF3919A0(v145, v152 + v91 + v111 * v94);
LABEL_87:
        v90 = v151 + 1;
        v88 = v147;
        v92 = v139;
        v42 = v149;
        if (v151 + 1 == v148)
        {
          goto LABEL_91;
        }
      }

      v96 = v152 + v149;
      while (1)
      {
        sub_1BF38F0DC(v96, v18);
        sub_1BF38C8B4(&qword_1EDC9D530, &unk_1EBDD91A0, &unk_1BF4EC4E0, MEMORY[0x1E6994150]);
        sub_1BF4E8B54();
        sub_1BF4E8B54();
        if (v158 == v157[0] && *(&v158 + 1) == v157[1])
        {
        }

        else
        {
          isUniquelyReferenced_nonNull_native = sub_1BF4E9734();

          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            break;
          }
        }

        v98 = *(v43 + 5);
        v99 = *&v18[v98];
        v100 = *&v18[v98 + 8];
        v101 = &v21[v98];
        v102 = v99 == *v101 && v100 == *(v101 + 1);
        if (!v102 && (sub_1BF4E9734() & 1) == 0 || (sub_1BF391BD8(*&v18[*(v43 + 6)], *&v21[*(v43 + 6)], &unk_1EDC9D6D8, 0x1E6994388) & 1) == 0 || (sub_1BF391BD8(*&v18[*(v43 + 7)], *&v21[*(v43 + 7)], &qword_1EDC96348, 0x1E6994248) & 1) == 0)
        {
          break;
        }

        v103 = *(v43 + 8);
        v104 = &v18[v103];
        v105 = *&v18[v103 + 8];
        v106 = &v21[v103];
        v107 = *(v106 + 1);
        if (v105)
        {
          if (!v107 || (*v104 != *v106 || v105 != v107) && (sub_1BF4E9734() & 1) == 0)
          {
            break;
          }
        }

        else if (v107)
        {
          break;
        }

        v108 = sub_1BF391BD8(*&v18[*(v43 + 9)], *&v21[*(v43 + 9)], &qword_1EDC96310, 0x1E6994358);
        sub_1BF38F140(v18);
        if (v108)
        {
          sub_1BF38F140(v21);
          v91 = v150;
          goto LABEL_87;
        }

LABEL_81:
        v96 += v94;
        if (!--v95)
        {
          goto LABEL_82;
        }
      }

      sub_1BF38F140(v18);
      goto LABEL_81;
    }

    v91 = MEMORY[0x1E69E7CC0];
LABEL_91:

    v88 = v91;
    sub_1BF44BC94(v42);
    v70 = ObjectType;
  }

  else
  {
  }

  isUniquelyReferenced_nonNull_native = v155;

  v43 = sub_1BF4DC6DC(v88, v70);

  swift_bridgeObjectRelease_n();
  v112 = *(v135 + 64);

  os_unfair_lock_lock((v112 + 24));
  sub_1BF4D6274((v112 + 16), v43);
  os_unfair_lock_unlock((v112 + 24));

  MEMORY[0x1EEE9AC00](v113);
  *(&v133 - 2) = isUniquelyReferenced_nonNull_native;
  sub_1BF4D6630(sub_1BF4DC9B4);
  v42 = v156;
  if (!v156[2])
  {
    goto LABEL_104;
  }

  v18 = v139;
  if (qword_1EDC9D460 != -1)
  {
    goto LABEL_114;
  }

LABEL_94:
  v114 = sub_1BF4E7B54();
  __swift_project_value_buffer(v114, qword_1EDCA6898);
  v115 = sub_1BF4E7B34();
  v116 = sub_1BF4E8E84();
  if (os_log_type_enabled(v115, v116))
  {
    v117 = swift_slowAlloc();
    *v117 = 0;
    _os_log_impl(&dword_1BF389000, v115, v116, "Clearing abandoned extensions...", v117, 2u);
    MEMORY[0x1BFB5A5D0](v117, -1, -1);
  }

  v118 = v42[2];
  if (v118)
  {
    v152 = v43;
    ObjectType = isUniquelyReferenced_nonNull_native;
    *&v158 = MEMORY[0x1E69E7CC0];
    sub_1BF3E153C(0, v118, 0);
    v119 = v158;
    v120 = v18[80];
    v151 = v42;
    v121 = v42 + ((v120 + 32) & ~v120);
    v122 = *(v18 + 9);
    v123 = (v144 + 16);
    v124 = v133;
    do
    {
      v125 = v136;
      sub_1BF38F0DC(v121, v136);
      (*v123)(v124, v125, v5);
      sub_1BF38F140(v125);
      *&v158 = v119;
      v127 = *(v119 + 16);
      v126 = *(v119 + 24);
      if (v127 >= v126 >> 1)
      {
        sub_1BF3E153C((v126 > 1), v127 + 1, 1);
        v124 = v133;
        v119 = v158;
      }

      *(v119 + 16) = v127 + 1;
      (*(v144 + 32))(v119 + ((*(v144 + 80) + 32) & ~*(v144 + 80)) + *(v144 + 72) * v127, v124, v5);
      v121 += v122;
      --v118;
    }

    while (v118);

    v43 = v152;
  }

  else
  {
  }

  sub_1BF4D6888();
LABEL_104:

  v128 = *(v43 + 2);
  if (!v128)
  {
LABEL_107:

    v129 = MEMORY[0x1E69E7CC0];
    goto LABEL_108;
  }

  v129 = sub_1BF3BC668(*(v43 + 2), 0);
  v130 = sub_1BF439144(&v158, v129 + 4, v128, v43);
  sub_1BF39A9CC(v158);
  if (v130 != v128)
  {
    __break(1u);
    goto LABEL_107;
  }

LABEL_108:
  v131 = sub_1BF44B578(&unk_1F3DEDA78);
  sub_1BF4DC9D0(&unk_1F3DEDA98);
  *&v158 = v129;
  *(&v158 + 1) = v131;
  sub_1BF4E7C14();
}

uint64_t WidgetDescriptorCache.populate(for:reason:completion:)(uint64_t result, __int128 *a2, void (*a3)(uint64_t *), uint64_t a4)
{
  if (*(result + 16))
  {
    v27 = *a2;
    v35 = MEMORY[0x1E69E7CC8];
    isa = v4[8].isa;

    os_unfair_lock_lock(isa + 6);

    v7 = sub_1BF4DB854(v6, isa + 2, &v35, v4);

    os_unfair_lock_unlock(isa + 6);

    if (*(v7 + 16))
    {
      if (qword_1EDC9D4B8 != -1)
      {
        swift_once();
      }

      v8 = sub_1BF4E7B54();
      __swift_project_value_buffer(v8, qword_1EDCA6928);

      v9 = sub_1BF4E7B34();
      v10 = sub_1BF4E8E84();

      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        v12 = swift_slowAlloc();
        v34 = v12;
        *v11 = 136446210;
        v13 = *(v7 + 16);
        v14 = MEMORY[0x1E69E7CC0];
        if (v13)
        {
          v33 = MEMORY[0x1E69E7CC0];
          sub_1BF4E93A4();
          v15 = v7 + 32;
          do
          {
            sub_1BF38E49C(v15, &v30);
            v16 = v31;
            v17 = v32;
            __swift_project_boxed_opaque_existential_1(&v30, v31);
            (*(v17 + 40))(v16, v17);
            __swift_destroy_boxed_opaque_existential_1Tm(&v30);
            sub_1BF4E9374();
            sub_1BF4E93B4();
            sub_1BF4E93C4();
            sub_1BF4E9384();
            v15 += 40;
            --v13;
          }

          while (v13);
          v14 = v33;
        }

        v18 = sub_1BF4E9034();
        v19 = MEMORY[0x1BFB58E10](v14, v18);
        v21 = v20;

        v22 = sub_1BF38D65C(v19, v21, &v34);

        *(v11 + 4) = v22;
        _os_log_impl(&dword_1BF389000, v9, v10, "Refetching descriptors due to mismatching versions or locales: %{public}s", v11, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v12);
        MEMORY[0x1BFB5A5D0](v12, -1, -1);
        MEMORY[0x1BFB5A5D0](v11, -1, -1);
      }

      v30 = v27;
      sub_1BF4D8544(v7, &v30, a3, a4);
    }

    else
    {

      if (qword_1EDC9D460 != -1)
      {
        swift_once();
      }

      v23 = sub_1BF4E7B54();
      __swift_project_value_buffer(v23, qword_1EDCA6898);
      v24 = sub_1BF4E7B34();
      v25 = sub_1BF4E8E84();
      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        *v26 = 0;
        _os_log_impl(&dword_1BF389000, v24, v25, "No updates required - descriptors are up to date", v26, 2u);
        MEMORY[0x1BFB5A5D0](v26, -1, -1);
      }
    }
  }

  return result;
}

Swift::Void __swiftcall WidgetDescriptorCache.refetch(for:)(Swift::OpaquePointer a1)
{
  if (*(a1._rawValue + 2))
  {
    if (qword_1EDC9D460 != -1)
    {
      swift_once();
    }

    v2 = sub_1BF4E7B54();
    __swift_project_value_buffer(v2, qword_1EDCA6898);

    v3 = sub_1BF4E7B34();
    v4 = sub_1BF4E8E84();

    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      *&v11 = v6;
      *v5 = 136446210;
      v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD92D0, &qword_1BF4F08C0);
      v8 = MEMORY[0x1BFB58E10](a1._rawValue, v7);
      v10 = sub_1BF38D65C(v8, v9, &v11);

      *(v5 + 4) = v10;
      _os_log_impl(&dword_1BF389000, v3, v4, "Refetching extensions: %{public}s", v5, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v6);
      MEMORY[0x1BFB5A5D0](v6, -1, -1);
      MEMORY[0x1BFB5A5D0](v5, -1, -1);
    }

    v11 = xmmword_1BF4F73A0;
    sub_1BF4D8544(a1._rawValue, &v11, 0, 0);
  }
}

uint64_t sub_1BF4D4B34()
{
  v1 = *(*v0 + 64);

  os_unfair_lock_lock((v1 + 24));
  sub_1BF4DD2B4((v1 + 16), &v4);
  os_unfair_lock_unlock((v1 + 24));
  v2 = v4;

  return v2;
}

uint64_t WidgetDescriptorCache.hasAnyVersionCached(extension:)()
{
  v1 = *(v0 + 64);

  os_unfair_lock_lock((v1 + 24));
  sub_1BF4DCA24((v1 + 16), &v4);
  os_unfair_lock_unlock((v1 + 24));
  v2 = v4;

  return v2;
}

Swift::Void __swiftcall WidgetDescriptorCache.clear(for:)(Swift::OpaquePointer a1)
{
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD91A0, &unk_1BF4EC4E0);
  v3 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v5 = &v18 - v4;
  v6 = *(a1._rawValue + 2);
  if (v6)
  {
    v18 = v1;
    v7 = MEMORY[0x1E69E7CC0];
    v23 = MEMORY[0x1E69E7CC0];
    v8 = a1._rawValue + 32;
    do
    {
      sub_1BF38E49C(v8, v20);
      v9 = v21;
      v10 = v22;
      __swift_project_boxed_opaque_existential_1(v20, v21);
      (*(v10 + 40))(v9, v10);
      MEMORY[0x1BFB58DD0]();
      if (*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v23 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1BF4E8BE4();
      }

      sub_1BF4E8C24();
      v12 = v22;
      v11 = v23;
      v13 = v21;
      __swift_project_boxed_opaque_existential_1(v20, v21);
      v14 = (*(v12 + 40))(v13, v12);
      __swift_destroy_boxed_opaque_existential_1Tm(v20);
      sub_1BF4E9024();

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = sub_1BF432D54(0, v7[2] + 1, 1, v7);
      }

      v16 = v7[2];
      v15 = v7[3];
      if (v16 >= v15 >> 1)
      {
        v7 = sub_1BF432D54((v15 > 1), v16 + 1, 1, v7);
      }

      v7[2] = v16 + 1;
      (*(v3 + 32))(v7 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v16, v5, v19);
      v8 += 40;
      --v6;
    }

    while (v6);
    sub_1BF4D6888();

    v17 = sub_1BF44B578(&unk_1F3DEDAA8);
    sub_1BF4DC9D0(&unk_1F3DEDAC8);
    v20[0] = v11;
    v20[1] = v17;
    sub_1BF4E7C14();
  }
}

uint64_t sub_1BF4D4F60(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = *(*v3 + 64);

  os_unfair_lock_lock((v5 + 24));
  v6 = a3(*(v5 + 16));
  os_unfair_lock_unlock((v5 + 24));

  return v6;
}

uint64_t sub_1BF4D4FF4()
{
  v1 = *(*v0 + 64);

  os_unfair_lock_lock((v1 + 24));
  sub_1BF4DD29C((v1 + 16), &v4);
  os_unfair_lock_unlock((v1 + 24));
  v2 = v4;

  return v2;
}

unint64_t DescriptorMatchError.failureReason.getter()
{
  v1 = *v0;
  if (*(v0 + 8))
  {
    v11 = 0;
    sub_1BF4E92E4();
    MEMORY[0x1BFB58C90](0x6F69736E65747845, 0xEB0000000028206ELL);
    v2 = [v1 description];
    v3 = sub_1BF4E8914();
    v5 = v4;

    MEMORY[0x1BFB58C90](v3, v5);

    MEMORY[0x1BFB58C90](0xD00000000000002ELL, 0x80000001BF4FF210);
  }

  else
  {
    sub_1BF4E92E4();

    v11 = 0xD00000000000002DLL;
    v6 = [v1 description];
    v7 = sub_1BF4E8914();
    v9 = v8;

    MEMORY[0x1BFB58C90](v7, v9);
  }

  return v11;
}

unint64_t DescriptorMatchError.recoverySuggestion.getter()
{
  if (*(v0 + 8))
  {
    return 0xD000000000000060;
  }

  else
  {
    return 0xD000000000000049;
  }
}

unint64_t sub_1BF4D520C()
{
  if (*(v0 + 8))
  {
    return 0xD000000000000060;
  }

  else
  {
    return 0xD000000000000049;
  }
}

uint64_t sub_1BF4D5248()
{
  if (!*(v0 + 32))
  {
    return MEMORY[0x1E69E7CC0];
  }

  v1 = sub_1BF48EE44();

  return v1;
}

uint64_t sub_1BF4D53D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t *a4@<X3>, void **a5@<X4>, uint64_t a6@<X8>)
{
  v117 = a5;
  v128 = a2;
  v129 = a3;
  v119 = a6;
  v8 = type metadata accessor for ExtensionMetadata(0);
  v116 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v115 = &v110 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = (&v110 - v11);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v110 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v118 = &v110 - v17;
  v134 = MEMORY[0x1E69E7CC0];
  v122 = v18;
  v19 = v18[6];
  v130 = a1;
  v20 = *(a1 + v19);
  if (v20 >> 62)
  {
    goto LABEL_96;
  }

  for (i = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1BF4E9204())
  {
    v22 = MEMORY[0x1E69E7CC0];
    v120 = v12;
    v121 = v15;
    if (i)
    {
      ObjectType = swift_getObjectType();
      v24 = 0;
      v25 = 0;
      v125 = v129[1];
      v126 = ObjectType;
      v127 = v20 & 0xC000000000000001;
      v124 = v20 & 0xFFFFFFFFFFFFFF8;
      *&v26 = 136446210;
      v114 = v26;
LABEL_5:
      LODWORD(v123) = v24;
      v15 = v25;
      while (1)
      {
        if (v127)
        {
          v27 = MEMORY[0x1BFB59570](v15, v20);
        }

        else
        {
          if (v15 >= *(v124 + 16))
          {
            goto LABEL_93;
          }

          v27 = *(v20 + 8 * v15 + 32);
        }

        v28 = v27;
        v25 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          break;
        }

        if (!a4[2])
        {
          goto LABEL_85;
        }

        v12 = a4;
        v29 = sub_1BF38C890(v130);
        if ((v30 & 1) == 0)
        {
          goto LABEL_86;
        }

        sub_1BF38E49C(a4[7] + 40 * v29, v133);
        v31 = v125(v28, v133, v126, v129);
        __swift_destroy_boxed_opaque_existential_1Tm(v133);
        if (v31)
        {
          if (qword_1EDC9D460 != -1)
          {
            swift_once();
          }

          v33 = sub_1BF4E7B54();
          __swift_project_value_buffer(v33, qword_1EDCA6898);
          v34 = v118;
          sub_1BF38F0DC(v130, v118);
          v35 = sub_1BF4E7B34();
          LODWORD(v123) = sub_1BF4E8E84();
          if (os_log_type_enabled(v35, v123))
          {
            v36 = swift_slowAlloc();
            v113 = v36;
            v112 = swift_slowAlloc();
            v133[0] = v112;
            *v36 = v114;
            v111 = v35;
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD91A0, &unk_1BF4EC4E0);
            sub_1BF38C8B4(&qword_1EDC9D528, &unk_1EBDD91A0, &unk_1BF4EC4E0, MEMORY[0x1E6994160]);
            v37 = v118;
            v110 = sub_1BF4E96A4();
            v39 = v38;
            sub_1BF38F140(v37);
            v40 = sub_1BF38D65C(v110, v39, v133);

            v41 = v113;
            *(v113 + 4) = v40;
            v42 = v111;
            _os_log_impl(&dword_1BF389000, v111, v123, "Initialization: Migrated cached descriptors for extension %{public}s", v41, 0xCu);
            v43 = v112;
            __swift_destroy_boxed_opaque_existential_1Tm(v112);
            MEMORY[0x1BFB5A5D0](v43, -1, -1);
            MEMORY[0x1BFB5A5D0](v113, -1, -1);
          }

          else
          {

            sub_1BF38F140(v34);
          }

          v44 = v31;
          v12 = &v134;
          MEMORY[0x1BFB58DD0]();
          if (*((v134 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v134 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_1BF4E8BE4();
          }

          sub_1BF4E8C24();

          v24 = 1;
          if (v25 == i)
          {
            LODWORD(v123) = 1;
LABEL_28:
            v118 = v134;
            v22 = MEMORY[0x1E69E7CC0];
            goto LABEL_29;
          }

          goto LABEL_5;
        }

        v32 = v28;
        v12 = &v134;
        MEMORY[0x1BFB58DD0]();
        if (*((v134 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v134 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1BF4E8BE4();
        }

        sub_1BF4E8C24();

        ++v15;
        if (v25 == i)
        {
          goto LABEL_28;
        }
      }

      __break(1u);
LABEL_85:
      __break(1u);
LABEL_86:
      __break(1u);
      goto LABEL_87;
    }

    LODWORD(v123) = 0;
    v118 = MEMORY[0x1E69E7CC0];
LABEL_29:
    v132 = v22;
    v45 = *(v130 + v122[7]);
    v46 = v45 >> 62 ? sub_1BF4E9204() : *((v45 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v47 = MEMORY[0x1E69E7CC0];
    if (!v46)
    {
      break;
    }

    v48 = swift_getObjectType();
    v20 = 0;
    v125 = v129[2];
    v126 = v48;
    v127 = v45 & 0xC000000000000001;
    v124 = v45 & 0xFFFFFFFFFFFFFF8;
    *&v49 = 136446210;
    v114 = v49;
LABEL_33:
    v15 = v20;
    while (1)
    {
      if (v127)
      {
        v50 = MEMORY[0x1BFB59570](v15, v45);
      }

      else
      {
        if (v15 >= *(v124 + 16))
        {
          goto LABEL_94;
        }

        v50 = *(v45 + 8 * v15 + 32);
      }

      v51 = v50;
      v20 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (!a4[2])
      {
        goto LABEL_88;
      }

      v12 = a4;
      v52 = sub_1BF38C890(v130);
      if ((v53 & 1) == 0)
      {
        goto LABEL_89;
      }

      sub_1BF38E49C(a4[7] + 40 * v52, v133);
      v54 = v125(v51, v133, v126, v129);
      __swift_destroy_boxed_opaque_existential_1Tm(v133);
      if (v54)
      {
        if (qword_1EDC9D460 != -1)
        {
          swift_once();
        }

        v56 = sub_1BF4E7B54();
        __swift_project_value_buffer(v56, qword_1EDCA6898);
        sub_1BF38F0DC(v130, v121);
        v57 = sub_1BF4E7B34();
        v58 = sub_1BF4E8E84();
        if (os_log_type_enabled(v57, v58))
        {
          v123 = swift_slowAlloc();
          v113 = swift_slowAlloc();
          v133[0] = v113;
          *v123 = v114;
          v112 = v57;
          LODWORD(v111) = v58;
          v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD91A0, &unk_1BF4EC4E0);
          sub_1BF38C8B4(&qword_1EDC9D528, &unk_1EBDD91A0, &unk_1BF4EC4E0, MEMORY[0x1E6994160]);
          v59 = v121;
          v110 = sub_1BF4E96A4();
          v61 = v60;
          sub_1BF38F140(v59);
          v62 = sub_1BF38D65C(v110, v61, v133);

          v63 = v123;
          *(v123 + 4) = v62;
          v64 = v112;
          _os_log_impl(&dword_1BF389000, v112, v111, "Initialization: Migrated cached descriptors for extension %{public}s", v63, 0xCu);
          v65 = v113;
          __swift_destroy_boxed_opaque_existential_1Tm(v113);
          MEMORY[0x1BFB5A5D0](v65, -1, -1);
          MEMORY[0x1BFB5A5D0](v123, -1, -1);
        }

        else
        {

          sub_1BF38F140(v121);
        }

        v66 = v54;
        v12 = &v132;
        MEMORY[0x1BFB58DD0]();
        if (*((v132 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v132 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1BF4E8BE4();
        }

        sub_1BF4E8C24();

        LODWORD(v123) = 1;
        if (v20 == v46)
        {
          LODWORD(v123) = 1;
LABEL_56:
          v67 = v132;
          v47 = MEMORY[0x1E69E7CC0];
          goto LABEL_57;
        }

        goto LABEL_33;
      }

      v55 = v51;
      v12 = &v132;
      MEMORY[0x1BFB58DD0]();
      if (*((v132 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v132 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1BF4E8BE4();
      }

      sub_1BF4E8C24();

      ++v15;
      if (v20 == v46)
      {
        goto LABEL_56;
      }
    }

LABEL_87:
    __break(1u);
LABEL_88:
    __break(1u);
LABEL_89:
    __break(1u);
LABEL_90:
    __break(1u);
LABEL_91:
    __break(1u);
LABEL_92:
    __break(1u);
LABEL_93:
    __break(1u);
LABEL_94:
    __break(1u);
LABEL_95:
    __break(1u);
LABEL_96:
    ;
  }

  v67 = MEMORY[0x1E69E7CC0];
LABEL_57:
  v131 = v47;
  v68 = *(v130 + v122[9]);
  if (!(v68 >> 62))
  {
    v20 = *((v68 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v69 = &loc_1BF4EA000;
    if (!v20)
    {
      goto LABEL_99;
    }

    goto LABEL_59;
  }

  v20 = sub_1BF4E9204();
  v69 = &loc_1BF4EA000;
  if (v20)
  {
LABEL_59:
    v121 = v67;
    v70 = swift_getObjectType();
    v71 = 0;
    v125 = v129[3];
    v126 = v70;
    v127 = v68 & 0xC000000000000001;
    v124 = v68 & 0xFFFFFFFFFFFFFF8;
    *&v72 = v69[314];
    v114 = v72;
LABEL_60:
    v15 = v71;
    while (1)
    {
      if (v127)
      {
        v73 = MEMORY[0x1BFB59570](v15, v68);
      }

      else
      {
        if (v15 >= *(v124 + 16))
        {
          goto LABEL_95;
        }

        v73 = *(v68 + 8 * v15 + 32);
      }

      v74 = v73;
      v71 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        goto LABEL_90;
      }

      if (!a4[2])
      {
        goto LABEL_91;
      }

      v12 = a4;
      v75 = sub_1BF38C890(v130);
      if ((v76 & 1) == 0)
      {
        goto LABEL_92;
      }

      sub_1BF38E49C(a4[7] + 40 * v75, v133);
      v77 = v125(v74, v133, v126, v129);
      __swift_destroy_boxed_opaque_existential_1Tm(v133);
      if (v77)
      {
        if (qword_1EDC9D460 != -1)
        {
          swift_once();
        }

        v79 = sub_1BF4E7B54();
        __swift_project_value_buffer(v79, qword_1EDCA6898);
        sub_1BF38F0DC(v130, v120);
        v80 = sub_1BF4E7B34();
        v81 = sub_1BF4E8E84();
        if (os_log_type_enabled(v80, v81))
        {
          v123 = swift_slowAlloc();
          v113 = swift_slowAlloc();
          v133[0] = v113;
          *v123 = v114;
          v112 = v80;
          LODWORD(v111) = v81;
          v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD91A0, &unk_1BF4EC4E0);
          sub_1BF38C8B4(&qword_1EDC9D528, &unk_1EBDD91A0, &unk_1BF4EC4E0, MEMORY[0x1E6994160]);
          v82 = v120;
          v110 = sub_1BF4E96A4();
          v84 = v83;
          sub_1BF38F140(v82);
          v85 = sub_1BF38D65C(v110, v84, v133);

          v86 = v123;
          *(v123 + 4) = v85;
          v87 = v112;
          _os_log_impl(&dword_1BF389000, v112, v111, "Initialization: Migrated cached descriptors for extension %{public}s", v86, 0xCu);
          v88 = v113;
          __swift_destroy_boxed_opaque_existential_1Tm(v113);
          MEMORY[0x1BFB5A5D0](v88, -1, -1);
          MEMORY[0x1BFB5A5D0](v123, -1, -1);
        }

        else
        {

          sub_1BF38F140(v120);
        }

        v89 = v77;
        v12 = &v131;
        MEMORY[0x1BFB58DD0]();
        if (*((v131 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v131 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1BF4E8BE4();
        }

        sub_1BF4E8C24();

        LODWORD(v123) = 1;
        if (v71 == v20)
        {
          v90 = v131;
          v67 = v121;
          goto LABEL_100;
        }

        goto LABEL_60;
      }

      v78 = v74;
      v12 = &v131;
      MEMORY[0x1BFB58DD0]();
      if (*((v131 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v131 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1BF4E8BE4();
      }

      sub_1BF4E8C24();

      ++v15;
      if (v71 == v20)
      {
        v90 = v131;
        v67 = v121;
        if (v123)
        {
          goto LABEL_100;
        }

        goto LABEL_105;
      }
    }
  }

LABEL_99:
  v90 = MEMORY[0x1E69E7CC0];
  if (v123)
  {
LABEL_100:
    v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD91A0, &unk_1BF4EC4E0);
    v92 = v119;
    v93 = v130;
    (*(*(v91 - 8) + 16))(v119, v130, v91);
    v94 = v122;
    v95 = v122[5];
    v96 = *(v93 + v95);
    v97 = *(v93 + v95 + 8);
    v98 = v122[8];
    v99 = *(v93 + v98);
    v100 = *(v93 + v98 + 8);
    v101 = (v92 + v98);
    v102 = (v92 + v95);
    *v102 = v96;
    v102[1] = v97;
    *v101 = v99;
    v101[1] = v100;
    *(v92 + v94[6]) = v118;
    *(v92 + v94[9]) = v90;
    *(v92 + v94[7]) = v67;
    v103 = v115;
    sub_1BF38F0DC(v92, v115);
    v104 = v117;
    v105 = *v117;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v104 = v105;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v105 = sub_1BF432D2C(0, v105[2] + 1, 1, v105);
      *v104 = v105;
    }

    v108 = v105[2];
    v107 = v105[3];
    if (v108 >= v107 >> 1)
    {
      v105 = sub_1BF432D2C((v107 > 1), v108 + 1, 1, v105);
      *v104 = v105;
    }

    v105[2] = v108 + 1;
    return sub_1BF3919A0(v103, v105 + ((*(v116 + 80) + 32) & ~*(v116 + 80)) + *(v116 + 72) * v108);
  }

  else
  {
LABEL_105:

    return sub_1BF38F0DC(v130, v119);
  }
}

uint64_t sub_1BF4D6274(void *a1, uint64_t a2)
{

  *a1 = a2;
  v4 = qword_1EDC9D4B8;
  swift_bridgeObjectRetain_n();
  if (v4 != -1)
  {
    swift_once();
  }

  v5 = sub_1BF4E7B54();
  __swift_project_value_buffer(v5, qword_1EDCA6928);

  v6 = sub_1BF4E7B34();
  v7 = sub_1BF4E8E84();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v14 = v9;
    *v8 = 134349314;
    *(v8 + 4) = *(a2 + 16);

    *(v8 + 12) = 2082;
    sub_1BF4E9034();
    type metadata accessor for ExtensionMetadata(0);
    sub_1BF392020(&qword_1EDC9F128, MEMORY[0x1E69941C0], MEMORY[0x1E69E81B8]);
    v10 = sub_1BF4E87A4();
    v12 = sub_1BF38D65C(v10, v11, &v14);

    *(v8 + 14) = v12;
    _os_log_impl(&dword_1BF389000, v6, v7, "Initialization: Descriptors loaded from cache (%{public}ld) %{public}s", v8, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    MEMORY[0x1BFB5A5D0](v9, -1, -1);
    MEMORY[0x1BFB5A5D0](v8, -1, -1);
  }

  else
  {

    return swift_bridgeObjectRelease_n();
  }
}

void sub_1BF4D6478(uint64_t a1, uint64_t a2)
{
  v15[1] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9318, &qword_1BF4F09A8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v15 - v5;
  v7 = type metadata accessor for ExtensionMetadata(0);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a2 + 16);
  if (v11)
  {
    v12 = (v8 + 56);
    v13 = a2 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v14 = *(v8 + 72);
    do
    {
      sub_1BF38F0DC(v13, v10);
      sub_1BF38F0DC(v10, v6);
      (*v12)(v6, 0, 1, v7);
      sub_1BF49117C(v6, v10);
      sub_1BF38C9B4(v6, &qword_1EBDD9318, &qword_1BF4F09A8);
      sub_1BF38F140(v10);
      if (v2)
      {
        break;
      }

      v13 += v14;
      --v11;
    }

    while (v11);
  }
}

double sub_1BF4D6630(uint64_t a1)
{
  v2 = *(v1 + 32);
  if (v2)
  {
    MEMORY[0x1EEE9AC00](a1);
    v10[2] = v3;
    v10[3] = v4;
    v5 = *(v2 + 16);
    type metadata accessor for ChronoMetadataStore.MutableStore();
    swift_allocObject();
    v6 = sub_1BF4A4E98(v5);
    v7 = *(v2 + 136);
    os_unfair_lock_lock(*(v7 + 16));
    v8 = *(v2 + 16);

    sub_1BF3E7904(0xD000000000000015, 0x80000001BF4FF3E0, v8, sub_1BF4DD180, v10, v6);

    os_unfair_lock_unlock(*(v7 + 16));
    sub_1BF48EBD0();
  }

  return result;
}

double sub_1BF4D6888()
{
  v1 = *(v0 + 72);

  os_unfair_lock_lock(v1 + 6);
  sub_1BF4DCD68(&v1[4]);
  os_unfair_lock_unlock(v1 + 6);

  sub_1BF4D6630(sub_1BF4DCD84);
  v2 = *(v0 + 64);

  os_unfair_lock_lock((v2 + 24));
  sub_1BF4DCDA0((v2 + 16));
  os_unfair_lock_unlock((v2 + 24));

  return result;
}

uint64_t WidgetDescriptorCacheUpdate.init(extensionIdentities:reasons:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t sub_1BF4D696C(unint64_t a1, uint64_t *a2, void *a3, NSObject *a4)
{
  v5 = v4;
  v252 = a4;
  v256 = a3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8A38, &unk_1BF4EC4D0);
  isa = v8[-1].isa;
  v255 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v253 = &v241 - v9;
  v258 = type metadata accessor for ExtensionMetadata(0);
  v10 = *(v258 - 8);
  MEMORY[0x1EEE9AC00](v258);
  v257 = &v241 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v241 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = (&v241 - v16);
  v19 = *(a1 + 24);
  v18 = *(a1 + 32);
  __swift_project_boxed_opaque_existential_1(a1, v19);
  v20 = (*(v18 + 40))(v19, v18);
  v21 = v20;
  v22 = *a2;
  if (!*(*a2 + 16) || (v23 = sub_1BF3916CC(v20), (v24 & 1) == 0))
  {

    if (qword_1EDC9D460 != -1)
    {
      swift_once();
    }

    v32 = sub_1BF4E7B54();
    __swift_project_value_buffer(v32, qword_1EDCA6898);
    sub_1BF38E49C(a1, &v262);
    v33 = sub_1BF4E7B34();
    v34 = sub_1BF4E8E84();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      *v35 = 138543362;
      v37 = v265;
      v38 = v266;
      __swift_project_boxed_opaque_existential_1(&v262, v265);
      v39 = (*(v38 + 40))(v37, v38);
      __swift_destroy_boxed_opaque_existential_1Tm(&v262);
      *(v35 + 4) = v39;
      *v36 = v39;
      _os_log_impl(&dword_1BF389000, v33, v34, "No metadata for %{public}@", v35, 0xCu);
      sub_1BF38C9B4(v36, &unk_1EBDD9260, &qword_1BF4EC380);
      MEMORY[0x1BFB5A5D0](v36, -1, -1);
      MEMORY[0x1BFB5A5D0](v35, -1, -1);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1Tm(&v262);
    }

    return 1;
  }

  sub_1BF38F0DC(*(v22 + 56) + *(v10 + 72) * v23, v14);

  sub_1BF3919A0(v14, v17);
  v25 = [objc_allocWithZone(MEMORY[0x1E698E638]) init];
  v251 = a1;
  if (v25)
  {
    v26 = v25;
    if (*(&v17[1].isa + *(v258 + 32)) && (v27 = objc_allocWithZone(MEMORY[0x1E698E638]), v28 = sub_1BF4E88E4(), v29 = [v27 initWithString_], v28, v29))
    {
      v30 = [v29 isBefore:v26 withPrecision:1];

      if ((v30 & 1) == 0)
      {
        LOBYTE(v31) = 0;
        goto LABEL_24;
      }
    }

    else
    {
    }

    if (qword_1EDC9D460 != -1)
    {
LABEL_141:
      swift_once();
    }

    v40 = sub_1BF4E7B54();
    __swift_project_value_buffer(v40, qword_1EDCA6898);
    sub_1BF38E49C(a1, &v262);
    v41 = sub_1BF4E7B34();
    v42 = sub_1BF4E8E84();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      *v43 = 138543362;
      v45 = v17;
      v46 = v5;
      v47 = v265;
      v48 = v266;
      __swift_project_boxed_opaque_existential_1(&v262, v265);
      v49 = *(v48 + 40);
      v50 = v48;
      v5 = v46;
      v17 = v45;
      a1 = v251;
      v51 = v49(v47, v50);
      __swift_destroy_boxed_opaque_existential_1Tm(&v262);
      *(v43 + 4) = v51;
      *v44 = v51;
      _os_log_impl(&dword_1BF389000, v41, v42, "Refetching descriptors due to OS version change for %{public}@", v43, 0xCu);
      sub_1BF38C9B4(v44, &unk_1EBDD9260, &qword_1BF4EC380);
      MEMORY[0x1BFB5A5D0](v44, -1, -1);
      MEMORY[0x1BFB5A5D0](v43, -1, -1);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1Tm(&v262);
    }

    LOBYTE(v31) = 1;
  }

  else
  {
    if (qword_1EDC9D460 != -1)
    {
      swift_once();
    }

    v52 = sub_1BF4E7B54();
    __swift_project_value_buffer(v52, qword_1EDCA6898);
    v53 = sub_1BF4E7B34();
    v54 = sub_1BF4E8E64();
    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      *v55 = 0;
      _os_log_impl(&dword_1BF389000, v53, v54, "Failed to get build version", v55, 2u);
      MEMORY[0x1BFB5A5D0](v55, -1, -1);
    }

    LOBYTE(v31) = 0;
  }

LABEL_24:
  v56 = (v17 + *(v258 + 20));
  v57 = *v56;
  v58 = v56[1];
  v59 = *(a1 + 24);
  v60 = *(a1 + 32);
  __swift_project_boxed_opaque_existential_1(a1, v59);
  if (v57 == sub_1BF390B24(v59, v60) && v58 == v61)
  {

    v62 = 1;
  }

  else
  {
    v63 = sub_1BF4E9734();

    if (v63)
    {
      v62 = 1;
    }

    else
    {
      if (qword_1EDC9D460 != -1)
      {
LABEL_143:
        swift_once();
      }

      v64 = sub_1BF4E7B54();
      __swift_project_value_buffer(v64, qword_1EDCA6898);
      v65 = v257;
      sub_1BF38F0DC(v17, v257);
      sub_1BF38E49C(a1, &v262);
      sub_1BF38E49C(a1, v259);
      v66 = sub_1BF4E7B34();
      v67 = sub_1BF4E8E84();
      if (os_log_type_enabled(v66, v67))
      {
        v68 = swift_slowAlloc();
        v249 = swift_slowAlloc();
        v250 = swift_slowAlloc();
        p_isa = v250;
        *v68 = 136446722;
        v69 = (v65 + *(v258 + 20));
        v70 = *v69;
        v71 = v69[1];

        sub_1BF38F140(v65);
        v72 = v67;
        v73 = sub_1BF38D65C(v70, v71, &p_isa);

        *(v68 + 4) = v73;
        *(v68 + 12) = 2082;
        v74 = v265;
        v75 = v266;
        __swift_project_boxed_opaque_existential_1(&v262, v265);
        v76 = sub_1BF390B24(v74, v75);
        v78 = v77;
        __swift_destroy_boxed_opaque_existential_1Tm(&v262);
        v79 = sub_1BF38D65C(v76, v78, &p_isa);

        *(v68 + 14) = v79;
        *(v68 + 22) = 2114;
        v80 = v260;
        v81 = v261;
        __swift_project_boxed_opaque_existential_1(v259, v260);
        v82 = (*(v81 + 40))(v80, v81);
        __swift_destroy_boxed_opaque_existential_1Tm(v259);
        *(v68 + 24) = v82;
        v83 = v249;
        *v249 = v82;
        _os_log_impl(&dword_1BF389000, v66, v72, "Refetching descriptors due to extension version change, from %{public}s to %{public}s for %{public}@", v68, 0x20u);
        sub_1BF38C9B4(v83, &unk_1EBDD9260, &qword_1BF4EC380);
        MEMORY[0x1BFB5A5D0](v83, -1, -1);
        v84 = v250;
        swift_arrayDestroy();
        MEMORY[0x1BFB5A5D0](v84, -1, -1);
        MEMORY[0x1BFB5A5D0](v68, -1, -1);
      }

      else
      {

        sub_1BF38F140(v65);
        __swift_destroy_boxed_opaque_existential_1Tm(&v262);
        __swift_destroy_boxed_opaque_existential_1Tm(v259);
      }

      v62 = 0;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD91A0, &unk_1BF4EC4E0);
  sub_1BF4E7774();
  v85 = sub_1BF4E76E4();

  if (!v62 || (v31 & 1) != 0)
  {
    sub_1BF38F140(v17);
    return 1;
  }

  if (v85)
  {
    sub_1BF38F140(v17);
    return 0;
  }

  v87 = v251[3];
  v88 = v251[4];
  __swift_project_boxed_opaque_existential_1(v251, v87);
  v89 = (*(v88 + 144))(v87, v88);
  v92 = *v256;
  if (*(*v256 + 16))
  {
    v93 = sub_1BF3CD5D0(v89, v90, v91);
    v95 = v94;

    if (v95)
    {
      v96 = (*(v92 + 56) + 24 * v93);
      v97 = *v96;
      v98 = v96[1];
      v99 = v96[2];
      sub_1BF3D8864(*v96, v98);

      v100 = v97;
      v249 = v99;
      v250 = v98;
      if (v99)
      {
        goto LABEL_50;
      }

      goto LABEL_46;
    }
  }

  else
  {
  }

  v98 = 0;
  v97 = 0;
LABEL_46:
  v249 = v98;
  v257 = v5;
  v101 = v251;
  v102 = v252[6].isa;
  v103 = v251[3];
  v104 = v251[4];
  __swift_project_boxed_opaque_existential_1(v251, v103);
  v105 = *(v104 + 144);

  v105(v103, v104);
  v106 = v253;
  sub_1BF4E7694();
  (v102)(&v262, v106);

  (*(isa + 8))(v106, v255);
  v100 = v262;
  v31 = v263;
  v107 = v264;
  sub_1BF48051C(v97, v249, 0);
  v108 = v101[3];
  v109 = v101[4];
  __swift_project_boxed_opaque_existential_1(v101, v108);
  v110 = (*(v109 + 144))(v108, v109);
  v113 = v110;
  v114 = v111;
  v250 = v31;
  if (v107)
  {
    sub_1BF4804DC(v100, v31, v107);
    v115 = v256;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v262 = *v115;
    v249 = v107;
    sub_1BF3D7DCC(v100, v31, v107, v113, v114, isUniquelyReferenced_nonNull_native, v117);

    *v115 = v262;
  }

  else
  {
    sub_1BF47B5D8(v110, v111, &v262, v112);

    sub_1BF48051C(v262, v263, v264);
    v249 = 0;
  }

  v5 = v257;
LABEL_50:
  v118 = *(&v17->isa + *(v258 + 24));
  if (v118 >> 62)
  {
    sub_1BF3901C0(0, &qword_1EDC9D720, 0x1E6994220);

    v213 = sub_1BF4E9474();

    v118 = v213;
  }

  else
  {

    sub_1BF4E9754();
    sub_1BF3901C0(0, &qword_1EDC9D720, 0x1E6994220);
  }

  v256 = *(&v17->isa + *(v258 + 28));
  v119 = v256;
  v247 = v256 >> 62;
  if (v256 >> 62)
  {
    sub_1BF3901C0(0, &qword_1EDC9D720, 0x1E6994220);

    v214 = sub_1BF4E9474();

    v120 = v214;
  }

  else
  {

    sub_1BF4E9754();
    sub_1BF3901C0(0, &qword_1EDC9D720, 0x1E6994220);
    v120 = v119;
  }

  v262 = v118;
  sub_1BF44BBA4(v120);
  v121 = v262;
  v122 = *(&v17->isa + *(v258 + 36));
  if (v122 >> 62)
  {
    sub_1BF3901C0(0, &qword_1EDC9D720, 0x1E6994220);

    v215 = sub_1BF4E9474();

    v122 = v215;
  }

  else
  {

    sub_1BF4E9754();
    sub_1BF3901C0(0, &qword_1EDC9D720, 0x1E6994220);
  }

  v262 = v121;
  sub_1BF44BBA4(v122);
  a1 = v262;
  if (v262 >> 62)
  {
    v123 = sub_1BF4E9204();
    v258 = v100;
    if (v123)
    {
      goto LABEL_58;
    }

LABEL_148:

    v179 = 0;
    LODWORD(v255) = 0;
    goto LABEL_149;
  }

  v123 = *((v262 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v258 = v100;
  if (!v123)
  {
    goto LABEL_148;
  }

LABEL_58:
  v124 = 0;
  v255 = (a1 & 0xC000000000000001);
  v252 = (a1 & 0xFFFFFFFFFFFFFF8);
  if (v100)
  {
    v125 = 0;
  }

  else
  {
    v125 = v250 == 0xC000000000000000;
  }

  v126 = !v125;
  LODWORD(v246) = v126;
  v248 = v250 >> 62;
  v127 = __OFSUB__(HIDWORD(v100), v100);
  v243 = v127;
  v242 = HIDWORD(v100) - v100;
  v245 = BYTE6(v250);
  v253 = (v250 >> 60);
  isa = a1;
  v128 = v249;
  while (1)
  {
    v257 = v5;
    if (v255)
    {
      v130 = MEMORY[0x1BFB59570](v124, a1);
    }

    else
    {
      if (v124 >= v252[2].isa)
      {
        __break(1u);
        goto LABEL_143;
      }

      v130 = *(a1 + 8 * v124 + 32);
    }

    v5 = v130;
    v131 = (v124 + 1);
    if (__OFADD__(v124, 1))
    {
      __break(1u);
      goto LABEL_141;
    }

    v132 = v123;
    v133 = v251[3];
    v31 = v251[4];
    __swift_project_boxed_opaque_existential_1(v251, v133);
    if (((*(v31 + 168))(v133, v31) & 1) != 0 && [v5 version] <= 1)
    {

      if (qword_1EDC9D510 != -1)
      {
        goto LABEL_176;
      }

      goto LABEL_118;
    }

    if (!v128)
    {
      v129 = [v5 localeToken];
      if (v129)
      {
        v174 = v129;
        v175 = sub_1BF4E71C4();
        v177 = v176;

        v178 = sub_1BF3B03C0(v175, v177);
        goto LABEL_128;
      }

      goto LABEL_69;
    }

    v134 = v258;
    v135 = v250;
    sub_1BF3D8864(v258, v250);
    sub_1BF3D8864(v134, v135);
    sub_1BF3D8864(v134, v135);
    v136 = [v5 localeToken];
    if (!v136)
    {
      v31 = 0;
      v139 = 0xF000000000000000;
LABEL_95:
      sub_1BF48055C(v31, v139);
      v146 = v258;
      v147 = v250;
      sub_1BF3B03C0(v258, v250);
      sub_1BF3B03C0(v146, v147);
      sub_1BF3DB210(v31, v139);
      if (v253 > 0xE)
      {

        sub_1BF3DB210(v31, v139);
        v128 = v249;
        goto LABEL_70;
      }

      v128 = v249;
LABEL_125:
      sub_1BF3DB210(v31, v139);
      v178 = sub_1BF3DB210(v258, v250);
      goto LABEL_128;
    }

    v137 = v136;
    v31 = sub_1BF4E71C4();
    v139 = v138;

    if (v139 >> 60 == 15)
    {
      goto LABEL_95;
    }

    if (v253 > 0xE)
    {
      sub_1BF48055C(v31, v139);

      v180 = v258;
      v181 = v250;
      sub_1BF3B03C0(v258, v250);
      sub_1BF3B03C0(v180, v181);
      sub_1BF3DB210(v31, v139);
      goto LABEL_125;
    }

    v140 = v139 >> 62;
    if (v139 >> 62 != 3)
    {
      break;
    }

    if (v31)
    {
      v141 = 0;
    }

    else
    {
      v141 = v139 == 0xC000000000000000;
    }

    v143 = !v141 || v248 < 3;
    if ((v143 | v246))
    {
      v144 = 0;
      v145 = v248;
      goto LABEL_104;
    }

    sub_1BF48055C(0, 0xC000000000000000);
    sub_1BF3DB210(0, 0xC000000000000000);
    sub_1BF3B03C0(0, 0xC000000000000000);
    sub_1BF3DB210(0, 0xC000000000000000);
    sub_1BF3B03C0(0, 0xC000000000000000);
LABEL_116:
    sub_1BF3DB210(v31, v139);
LABEL_69:

LABEL_70:
    v124 = (v124 + 1);
    v123 = v132;
    v125 = v131 == v132;
    v5 = v257;
    a1 = isa;
    if (v125)
    {
      goto LABEL_148;
    }
  }

  if (v140)
  {
    if (v140 == 1)
    {
      LODWORD(v144) = HIDWORD(v31) - v31;
      v145 = v248;
      if (__OFSUB__(HIDWORD(v31), v31))
      {
        goto LABEL_175;
      }

      v144 = v144;
    }

    else
    {
      v149 = *(v31 + 16);
      v148 = *(v31 + 24);
      v150 = __OFSUB__(v148, v149);
      v144 = v148 - v149;
      v145 = v248;
      if (v150)
      {
        goto LABEL_174;
      }
    }
  }

  else
  {
    v144 = BYTE6(v139);
    v145 = v248;
  }

LABEL_104:
  if (v145 <= 1)
  {
    v151 = v245;
    if (v145)
    {
      v151 = v242;
      if (v243)
      {
        goto LABEL_173;
      }
    }

    goto LABEL_110;
  }

  if (v145 == 2)
  {
    v153 = *(v258 + 16);
    v152 = *(v258 + 24);
    v150 = __OFSUB__(v152, v153);
    v151 = v152 - v153;
    if (!v150)
    {
LABEL_110:
      if (v144 != v151)
      {
        goto LABEL_126;
      }

      if (v144 >= 1)
      {
        v154 = v258;
        v155 = v250;
        sub_1BF3D8864(v258, v250);
        sub_1BF48055C(v31, v139);
        sub_1BF48055C(v154, v155);
        v156 = v257;
        v244 = sub_1BF4D9E34(v31, v139, v154, v155);
        v257 = v156;
        sub_1BF3B03C0(v154, v155);
        sub_1BF3B03C0(v154, v155);
        sub_1BF3DB210(v31, v139);
        sub_1BF3B03C0(v154, v155);
        sub_1BF3DB210(v154, v155);
        sub_1BF3DB210(v31, v139);
        v128 = v249;
        if ((v244 & 1) == 0)
        {
          goto LABEL_127;
        }

        goto LABEL_69;
      }

      goto LABEL_115;
    }

    __break(1u);
LABEL_173:
    __break(1u);
LABEL_174:
    __break(1u);
LABEL_175:
    __break(1u);
LABEL_176:
    swift_once();
LABEL_118:
    v159 = sub_1BF4E7B54();
    v123 = __swift_project_value_buffer(v159, qword_1EDCA69B8);
    v160 = v251;
    sub_1BF38E49C(v251, &v262);
    sub_1BF38E49C(v160, v259);
    v161 = sub_1BF4E7B34();
    v162 = sub_1BF4E8E84();
    if (os_log_type_enabled(v161, v162))
    {
      v163 = swift_slowAlloc();
      v164 = swift_slowAlloc();
      v255 = swift_slowAlloc();
      p_isa = &v255->isa;
      *v163 = 138543618;
      v165 = v265;
      v166 = v266;
      __swift_project_boxed_opaque_existential_1(&v262, v265);
      v167 = (*(v166 + 40))(v165, v166);
      __swift_destroy_boxed_opaque_existential_1Tm(&v262);
      *(v163 + 4) = v167;
      *v164 = v167;
      *(v163 + 12) = 2082;
      v168 = v260;
      v169 = v261;
      __swift_project_boxed_opaque_existential_1(v259, v260);
      v170 = (*(v169 + 144))(v168, v169);
      v172 = v171;
      __swift_destroy_boxed_opaque_existential_1Tm(v259);
      v173 = sub_1BF38D65C(v170, v172, &p_isa);

      *(v163 + 14) = v173;
      _os_log_impl(&dword_1BF389000, v161, v162, "Reloading extension: %{public}@ on behalf of %{public}s because it contains descriptors that have color assets that need to be processed.", v163, 0x16u);
      sub_1BF38C9B4(v164, &unk_1EBDD9260, &qword_1BF4EC380);
      MEMORY[0x1BFB5A5D0](v164, -1, -1);
      v123 = v255;
      __swift_destroy_boxed_opaque_existential_1Tm(v255);
      MEMORY[0x1BFB5A5D0](v123, -1, -1);
      MEMORY[0x1BFB5A5D0](v163, -1, -1);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1Tm(&v262);
      __swift_destroy_boxed_opaque_existential_1Tm(v259);
    }

    LODWORD(v255) = 0;
    v179 = 1;
    v5 = v257;
    goto LABEL_149;
  }

  if (!v144)
  {
LABEL_115:
    sub_1BF48055C(v31, v139);
    v157 = v258;
    v158 = v250;
    sub_1BF3DB210(v258, v250);
    sub_1BF3B03C0(v157, v158);
    sub_1BF3DB210(v31, v139);
    sub_1BF3B03C0(v157, v158);
    v128 = v249;
    goto LABEL_116;
  }

LABEL_126:
  sub_1BF48055C(v31, v139);
  v182 = v258;
  v183 = v250;
  sub_1BF3DB210(v258, v250);
  sub_1BF3B03C0(v182, v183);
  sub_1BF3DB210(v31, v139);
  sub_1BF3B03C0(v182, v183);
  sub_1BF3DB210(v31, v139);
  v128 = v249;
LABEL_127:

LABEL_128:
  v184 = 7104878;
  v185 = [v5 localeToken];
  if (v185)
  {
    v186 = v185;
    v187 = sub_1BF4E71C4();
    v189 = v188;

    isa = sub_1BF4E71B4();
    v191 = v190;
    sub_1BF3B03C0(v187, v189);
  }

  else
  {
    v191 = 0xE300000000000000;
    isa = 7104878;
  }

  v192 = v251;
  if (v128)
  {
    v184 = sub_1BF4E71B4();
    v194 = v193;
  }

  else
  {
    v194 = 0xE300000000000000;
  }

  if (qword_1EDC9D510 != -1)
  {
    swift_once();
  }

  v195 = sub_1BF4E7B54();
  __swift_project_value_buffer(v195, qword_1EDCA69B8);
  sub_1BF38E49C(v192, &v262);
  sub_1BF38E49C(v192, v259);

  v196 = sub_1BF4E7B34();
  v123 = sub_1BF4E8E84();

  if (os_log_type_enabled(v196, v123))
  {
    v197 = swift_slowAlloc();
    v252 = v196;
    v198 = v197;
    v199 = swift_slowAlloc();
    v253 = swift_slowAlloc();
    p_isa = v253;
    *v198 = 138544130;
    v246 = v184;
    v200 = v265;
    v201 = v266;
    __swift_project_boxed_opaque_existential_1(&v262, v265);
    v202 = *(v201 + 40);
    LODWORD(v248) = v123;
    v203 = v202(v200, v201);
    __swift_destroy_boxed_opaque_existential_1Tm(&v262);
    *(v198 + 4) = v203;
    *v199 = v203;
    v255 = v17;
    *(v198 + 12) = 2082;
    v204 = v260;
    v205 = v261;
    __swift_project_boxed_opaque_existential_1(v259, v260);
    v206 = (*(v205 + 144))(v204, v205);
    v208 = v207;
    __swift_destroy_boxed_opaque_existential_1Tm(v259);
    v209 = sub_1BF38D65C(v206, v208, &p_isa);

    *(v198 + 14) = v209;
    *(v198 + 22) = 2082;
    v210 = sub_1BF38D65C(isa, v191, &p_isa);

    *(v198 + 24) = v210;
    *(v198 + 32) = 2082;
    v17 = v255;
    v211 = sub_1BF38D65C(v246, v194, &p_isa);

    *(v198 + 34) = v211;
    v123 = v252;
    _os_log_impl(&dword_1BF389000, v252, v248, "Reloading extension: %{public}@ on behalf of %{public}s because it contains descriptors (%{public}s) that do not match current locale token: %{public}s", v198, 0x2Au);
    sub_1BF38C9B4(v199, &unk_1EBDD9260, &qword_1BF4EC380);
    MEMORY[0x1BFB5A5D0](v199, -1, -1);
    v212 = v253;
    swift_arrayDestroy();
    MEMORY[0x1BFB5A5D0](v212, -1, -1);
    MEMORY[0x1BFB5A5D0](v198, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1Tm(&v262);
    __swift_destroy_boxed_opaque_existential_1Tm(v259);
  }

  v179 = 0;
  LODWORD(v255) = 1;
  v5 = v257;
LABEL_149:
  v216 = v256;
  if (v247)
  {
    v217 = sub_1BF4E9204();
    v216 = v256;
  }

  else
  {
    v217 = *((v256 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v257 = v5;
  if (v217)
  {
    v218 = 0;
    v219 = v216 & 0xC000000000000001;
    v220 = v216 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v219)
      {
        v221 = MEMORY[0x1BFB59570](v218, v216);
      }

      else
      {
        if (v218 >= *(v220 + 16))
        {
          goto LABEL_170;
        }

        v221 = *(v216 + 8 * v218 + 32);
      }

      v123 = v221;
      v222 = v218 + 1;
      if (__OFADD__(v218, 1))
      {
        __break(1u);
LABEL_170:
        __break(1u);
        goto LABEL_171;
      }

      if ([v221 controlVersion]!= 1)
      {
        break;
      }

      ++v218;
      v216 = v256;
      if (v222 == v217)
      {
        goto LABEL_162;
      }
    }

    v255 = v17;
    if (qword_1EDC9D510 == -1)
    {
      goto LABEL_165;
    }

LABEL_171:
    swift_once();
LABEL_165:
    v223 = sub_1BF4E7B54();
    __swift_project_value_buffer(v223, qword_1EDCA69B8);
    v224 = v251;
    sub_1BF38E49C(v251, &v262);
    sub_1BF38E49C(v224, v259);
    v225 = v123;
    v226 = sub_1BF4E7B34();
    v227 = sub_1BF4E8E84();
    if (os_log_type_enabled(v226, v227))
    {
      v228 = swift_slowAlloc();
      v229 = swift_slowAlloc();
      v256 = swift_slowAlloc();
      p_isa = v256;
      *v228 = 138544130;
      v230 = v265;
      v231 = v266;
      __swift_project_boxed_opaque_existential_1(&v262, v265);
      v232 = (*(v231 + 40))(v230, v231);
      __swift_destroy_boxed_opaque_existential_1Tm(&v262);
      *(v228 + 4) = v232;
      *v229 = v232;
      *(v228 + 12) = 2082;
      v233 = v260;
      v234 = v261;
      __swift_project_boxed_opaque_existential_1(v259, v260);
      v235 = (*(v234 + 144))(v233, v234);
      v237 = v236;
      __swift_destroy_boxed_opaque_existential_1Tm(v259);
      v238 = sub_1BF38D65C(v235, v237, &p_isa);

      *(v228 + 14) = v238;
      *(v228 + 22) = 2050;
      v239 = [v225 controlVersion];

      *(v228 + 24) = v239;
      *(v228 + 32) = 2050;
      *(v228 + 34) = 1;
      _os_log_impl(&dword_1BF389000, v226, v227, "Reloading extension: %{public}@ on behalf of %{public}s because it has out of date control descriptors (%{public}llu < %{public}llu)", v228, 0x2Au);
      sub_1BF38C9B4(v229, &unk_1EBDD9260, &qword_1BF4EC380);
      MEMORY[0x1BFB5A5D0](v229, -1, -1);
      v240 = v256;
      __swift_destroy_boxed_opaque_existential_1Tm(v256);
      MEMORY[0x1BFB5A5D0](v240, -1, -1);
      MEMORY[0x1BFB5A5D0](v228, -1, -1);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1Tm(&v262);
      __swift_destroy_boxed_opaque_existential_1Tm(v259);
    }

    sub_1BF38F140(v255);
    sub_1BF48051C(v258, v250, v249);
    return 1;
  }

  else
  {
LABEL_162:
    sub_1BF38F140(v17);
    sub_1BF48051C(v258, v250, v249);
    result = v179;
    if (v255)
    {
      return 1;
    }
  }

  return result;
}

uint64_t sub_1BF4D8544(uint64_t result, uint64_t *a2, void (*a3)(uint64_t *), uint64_t a4)
{
  v5 = *(result + 16);
  if (!v5)
  {
    return result;
  }

  v6 = v4;
  v7 = result;
  v27 = a2[1];
  v28 = *a2;
  v8 = *(v4 + 72);
  MEMORY[0x1EEE9AC00](result);

  os_unfair_lock_lock((v8 + 24));
  sub_1BF4DCD1C((v8 + 16), v39);
  os_unfair_lock_unlock((v8 + 24));
  v9 = v39[0];

  v29 = *(v9 + 16);
  if (v29)
  {
    v10 = 0;
    v11 = v9 + 32;
    v7 = v9;
    while (v10 < *(v9 + 16))
    {
      v35 = v11;
      sub_1BF38E49C(v11, v39);
      if (qword_1EDC9D460 != -1)
      {
        swift_once();
      }

      v15 = sub_1BF4E7B54();
      __swift_project_value_buffer(v15, qword_1EDCA6898);
      sub_1BF38E49C(v39, v36);
      v16 = sub_1BF4E7B34();
      v17 = sub_1BF4E8E84();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        v19 = swift_slowAlloc();
        *v18 = 138543362;
        v21 = v37;
        v20 = v38;
        __swift_project_boxed_opaque_existential_1(v36, v37);
        v5 = (*(v20 + 40))(v21, v20);
        __swift_destroy_boxed_opaque_existential_1Tm(v36);
        *(v18 + 4) = v5;
        *v19 = v5;
        _os_log_impl(&dword_1BF389000, v16, v17, "Requesting descriptor fetch for %{public}@", v18, 0xCu);
        sub_1BF38C9B4(v19, &unk_1EBDD9260, &qword_1BF4EC380);
        MEMORY[0x1BFB5A5D0](v19, -1, -1);
        MEMORY[0x1BFB5A5D0](v18, -1, -1);
      }

      else
      {

        __swift_destroy_boxed_opaque_existential_1Tm(v36);
      }

      if (swift_unknownObjectWeakLoadStrong())
      {
        v32 = v10;
        v12 = *(v6 + 24);
        ObjectType = swift_getObjectType();
        sub_1BF38E49C(v39, v36);
        v13 = swift_allocObject();
        v13[2] = v6;
        sub_1BF38E60C(v36, (v13 + 3));
        v5 = v27;
        v13[8] = v28;
        v13[9] = v27;
        v13[10] = a3;
        v13[11] = a4;
        v30 = *(v12 + 40);

        sub_1BF44B994(v28, v27);
        sub_1BF391990(a3, a4);
        v14 = v12;
        v10 = v32;
        v30(v39, sub_1BF4DCD38, v13, ObjectType, v14);

        swift_unknownObjectRelease();
      }

      else if (a3)
      {
        a3(v39);
      }

      ++v10;
      __swift_destroy_boxed_opaque_existential_1Tm(v39);
      v11 = v35 + 40;
      if (v29 == v10)
      {
      }
    }

    __break(1u);
    goto LABEL_25;
  }

  if (qword_1EDC9D460 != -1)
  {
LABEL_25:
    swift_once();
  }

  v22 = sub_1BF4E7B54();
  __swift_project_value_buffer(v22, qword_1EDCA6898);
  v23 = sub_1BF4E7B34();
  v24 = sub_1BF4E8E84();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    *v25 = 0;
    _os_log_impl(&dword_1BF389000, v23, v24, "No descriptors to load because they were filtered.", v25, 2u);
    MEMORY[0x1BFB5A5D0](v25, -1, -1);
  }

  v26 = v7 + 32;
  do
  {
    sub_1BF38E49C(v26, v39);
    if (a3)
    {
      a3(v39);
    }

    result = __swift_destroy_boxed_opaque_existential_1Tm(v39);
    v26 += 40;
    --v5;
  }

  while (v5);
  return result;
}

uint64_t sub_1BF4D89D0@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, char *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9318, &qword_1BF4F09A8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v23 - v7;
  v9 = a2[3];
  v10 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v9);
  v11 = (*(v10 + 40))(v9, v10);
  v12 = v11;
  v13 = *a1;
  if (*(*a1 + 16) && (v14 = sub_1BF3916CC(v11), (v15 & 1) != 0))
  {
    v16 = v14;
    v17 = *(v13 + 56);
    v18 = type metadata accessor for ExtensionMetadata(0);
    v19 = *(v18 - 8);
    sub_1BF38F0DC(v17 + *(v19 + 72) * v16, v8);

    v20 = 1;
    (*(v19 + 56))(v8, 0, 1, v18);
  }

  else
  {

    v21 = type metadata accessor for ExtensionMetadata(0);
    (*(*(v21 - 8) + 56))(v8, 1, 1, v21);
    v20 = 0;
  }

  result = sub_1BF38C9B4(v8, &qword_1EBDD9318, &qword_1BF4F09A8);
  *a3 = v20;
  return result;
}

uint64_t sub_1BF4D8BA8@<X0>(uint64_t *a1@<X0>, uint64_t *a3@<X8>)
{
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD91A0, &unk_1BF4EC4E0);
  v6 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v8 = &v20 - v7;

  v10 = sub_1BF4DB9D8(v9, a1);

  v11 = *(v10 + 16);
  v12 = MEMORY[0x1E69E7CC0];
  if (v11)
  {
    v20 = v3;
    v22 = a1;
    v23 = a3;
    v28 = MEMORY[0x1E69E7CC0];
    sub_1BF3E153C(0, v11, 0);
    v12 = v28;
    v21 = v10;
    v13 = v10 + 32;
    do
    {
      sub_1BF38E49C(v13, v25);
      v14 = v26;
      v15 = v27;
      __swift_project_boxed_opaque_existential_1(v25, v26);
      v16 = (*(v15 + 40))(v14, v15);
      sub_1BF4E9024();

      __swift_destroy_boxed_opaque_existential_1Tm(v25);
      v28 = v12;
      v18 = *(v12 + 16);
      v17 = *(v12 + 24);
      if (v18 >= v17 >> 1)
      {
        sub_1BF3E153C((v17 > 1), v18 + 1, 1);
        v12 = v28;
      }

      *(v12 + 16) = v18 + 1;
      (*(v6 + 32))(v12 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v18, v8, v24);
      v13 += 40;
      --v11;
    }

    while (v11);
    a3 = v23;
    v10 = v21;
  }

  sub_1BF4DBF10(v12);

  *a3 = v10;
  return result;
}

void sub_1BF4D8DD0(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, unint64_t a6, void (*a7)(void *, __n128), uint64_t a8)
{
  v60 = a8;
  v62 = a7;
  v56 = a5;
  v57 = a6;
  v11 = type metadata accessor for ExtensionMetadata(0);
  MEMORY[0x1EEE9AC00](v11);
  v59 = v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = v54 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD92E0, &unk_1BF4F08D0);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = v54 - v17;
  v58 = a3;
  v19 = *(a3 + 72);
  v63 = a4;

  os_unfair_lock_lock(v19 + 6);
  sub_1BF4DCD4C(v18);
  os_unfair_lock_unlock(v19 + 6);
  sub_1BF38C9B4(v18, &unk_1EBDD92E0, &unk_1BF4F08D0);

  if (!a1)
  {
    goto LABEL_16;
  }

  v54[1] = 0;
  v20 = a1;
  v21 = sub_1BF4E8554();
  v61 = sub_1BF4E8564();
  v55 = v20;
  v22 = sub_1BF4E8574();
  v23 = [objc_allocWithZone(MEMORY[0x1E698E638]) init];
  if (v23)
  {
    v24 = v23;
    v25 = [v23 stringRepresentation];

    v26 = sub_1BF4E8914();
    v28 = v27;
  }

  else
  {
    v26 = 0;
    v28 = 0xE000000000000000;
  }

  v29 = a4[3];
  v30 = a4[4];
  __swift_project_boxed_opaque_existential_1(a4, v29);
  v31 = (*(v30 + 40))(v29, v30);
  sub_1BF4E9024();

  v32 = a4[3];
  v33 = a4[4];
  __swift_project_boxed_opaque_existential_1(a4, v32);
  v34 = sub_1BF390B24(v32, v33);
  v35 = &v15[v11[8]];
  v36 = &v15[v11[5]];
  *v36 = v34;
  v36[1] = v37;
  *v35 = v26;
  v35[1] = v28;
  *&v15[v11[6]] = v21;
  v38 = v11[9];
  *&v15[v11[7]] = v61;
  *&v15[v38] = v22;
  v39 = qword_1EDC9D470;

  if (v39 != -1)
  {
    swift_once();
  }

  v40 = sub_1BF4E7B54();
  __swift_project_value_buffer(v40, qword_1EDCA68B0);

  v41 = sub_1BF4E7B34();
  v42 = sub_1BF4E8E84();
  v43 = os_log_type_enabled(v41, v42);
  v45 = v58;
  v44 = v59;
  if (v43)
  {
    v46 = swift_slowAlloc();
    *v46 = 134349056;
    if (v22 >> 62)
    {
      v47 = sub_1BF4E9204();
    }

    else
    {
      v47 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v46 + 4) = v47;

    _os_log_impl(&dword_1BF389000, v41, v42, "Filling descriptor cache with %{public}ld activity descriptors", v46, 0xCu);
    MEMORY[0x1BFB5A5D0](v46, -1, -1);
  }

  else
  {
  }

  sub_1BF38F0DC(v15, v44);
  v48 = *(v45 + 64);

  os_unfair_lock_lock((v48 + 24));
  sub_1BF390E94((v48 + 16), a4, v44, v45, v64);
  os_unfair_lock_unlock((v48 + 24));
  v49 = v64[0];

  if (v49 >> 62)
  {
    if (!sub_1BF4E9204())
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  if (*((v49 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_14:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9C90, &qword_1BF4F73F0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1BF4EBEF0;
    v51 = v56;
    v52 = v57;
    *(inited + 32) = v56;
    *(inited + 40) = v52;
    sub_1BF44B994(v51, v52);
    v53 = sub_1BF44B578(inited);
    swift_setDeallocating();
    sub_1BF4DC9D0(inited + 32);
    v64[0] = v49;
    v64[1] = v53;
    sub_1BF4E7C14();
  }

LABEL_15:

  sub_1BF38F140(v44);
  sub_1BF38F140(v15);

LABEL_16:
  if (v62)
  {
    v62(a4);
  }
}

uint64_t sub_1BF4D92D0@<X0>(void *a2@<X1>, uint64_t x8_0@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD91A0, &unk_1BF4EC4E0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13 - v7;
  v9 = a2[3];
  v10 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v9);
  v11 = (*(v10 + 40))(v9, v10);
  sub_1BF4E9024();

  sub_1BF4DADD8(v8, x8_0);
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1BF4D940C(uint64_t a1, char *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9318, &qword_1BF4F09A8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v8 - v4;
  sub_1BF38F0DC(a2, v8 - v4);
  v6 = type metadata accessor for ExtensionMetadata(0);
  (*(*(v6 - 8) + 56))(v5, 0, 1, v6);
  sub_1BF49117C(v5, a2);
  return sub_1BF38C9B4(v5, &qword_1EBDD9318, &qword_1BF4F09A8);
}

void sub_1BF4D951C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD92E0, &unk_1BF4F08D0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v11 - v5;
  if (*(*a1 + 16))
  {
    v7 = *(a2 + 16);
    if (v7)
    {
      v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD91A0, &unk_1BF4EC4E0) - 8);
      v9 = a2 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
      v10 = *(v8 + 72);
      do
      {
        sub_1BF4DADD8(v9, v6);
        sub_1BF38C9B4(v6, &unk_1EBDD92E0, &unk_1BF4F08D0);
        v9 += v10;
        --v7;
      }

      while (v7);
    }
  }
}

void sub_1BF4D9660(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9318, &qword_1BF4F09A8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v42 = &v34 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD91A0, &unk_1BF4EC4E0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v34 - v13;
  v16 = *(a2 + 16);
  if (v16)
  {
    v19 = *(v9 + 16);
    v18 = v9 + 16;
    v17 = v19;
    v20 = a2 + ((*(v18 + 64) + 32) & ~*(v18 + 64));
    v40 = *(a1 + 16);
    v21 = (v18 - 8);
    v38 = *(v18 + 56);
    *&v14 = 136446210;
    v34 = v14;
    v35 = v18;
    v41 = &v34 - v13;
    v39 = v19;
    do
    {
      v43 = v16;
      v17(v15, v20, v8);
      if (qword_1EDC9D460 != -1)
      {
        swift_once();
      }

      v22 = sub_1BF4E7B54();
      __swift_project_value_buffer(v22, qword_1EDCA6898);
      v17(v11, v15, v8);
      v23 = sub_1BF4E7B34();
      v24 = v11;
      v25 = sub_1BF4E8E84();
      if (os_log_type_enabled(v23, v25))
      {
        v26 = swift_slowAlloc();
        v36 = swift_slowAlloc();
        v37 = v3;
        v45 = v36;
        *v26 = v34;
        sub_1BF38C8B4(&qword_1EDC9D528, &unk_1EBDD91A0, &unk_1BF4EC4E0, MEMORY[0x1E6994160]);
        v27 = sub_1BF4E96A4();
        v29 = v28;
        v44 = *v21;
        v44(v24, v8);
        v30 = sub_1BF38D65C(v27, v29, &v45);

        *(v26 + 4) = v30;
        _os_log_impl(&dword_1BF389000, v23, v25, "Clearing descriptor cache for %{public}s", v26, 0xCu);
        v31 = v36;
        __swift_destroy_boxed_opaque_existential_1Tm(v36);
        v3 = v37;
        MEMORY[0x1BFB5A5D0](v31, -1, -1);
        MEMORY[0x1BFB5A5D0](v26, -1, -1);
      }

      else
      {

        v44 = *v21;
        v44(v24, v8);
      }

      v11 = v24;
      v32 = type metadata accessor for ExtensionMetadata(0);
      v33 = v42;
      (*(*(v32 - 8) + 56))(v42, 1, 1, v32);
      v15 = v41;
      sub_1BF49117C(v33, v41);
      sub_1BF38C9B4(v33, &qword_1EBDD9318, &qword_1BF4F09A8);
      v44(v15, v8);
      if (v3)
      {
        break;
      }

      v17 = v39;
      v20 += v38;
      v16 = v43 - 1;
    }

    while (v43 != 1);
  }
}

BOOL sub_1BF4D9A6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD91A0, &unk_1BF4EC4E0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v9 - v6;
  sub_1BF4E9024();
  LOBYTE(a3) = sub_1BF4D1B60(v7, a3);
  (*(v5 + 8))(v7, v4);
  return (a3 & 1) == 0;
}

uint64_t WidgetDescriptorCacheUpdate.extensionIdentities.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t WidgetDescriptorCacheUpdate.reasons.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

uint64_t sub_1BF4D9C04@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
{
  v25 = *MEMORY[0x1E69E9840];
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
    v10 = sub_1BF4E6EC4();
    if (v10)
    {
      v11 = sub_1BF4E6EE4();
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
      result = sub_1BF4E6ED4();
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
  v10 = sub_1BF4E6EC4();
  if (!v10)
  {
    goto LABEL_21;
  }

  v18 = sub_1BF4E6EE4();
  if (__OFSUB__(v15, v18))
  {
LABEL_34:
    __break(1u);
  }

  v10 += v15 - v18;
LABEL_21:
  result = sub_1BF4E6ED4();
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

uint64_t sub_1BF4D9E34(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v13[2] = *MEMORY[0x1E69E9840];
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
    v10 = sub_1BF4DB550(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    sub_1BF3B03C0(a3, a4);
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
  sub_1BF4D9C04(v13, a3, a4, &v12);
  v10 = v4;
  sub_1BF3B03C0(a3, a4);
  if (!v4)
  {
    v10 = v12;
  }

  return v10 & 1;
}

void *sub_1BF4D9FC4(uint64_t a1)
{
  v38 = type metadata accessor for ExtensionMetadata(0);
  v35 = *(v38 - 1);
  MEMORY[0x1EEE9AC00](v38);
  v3 = &v32 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9A38, &qword_1BF4F5408);
  result = sub_1BF4E9494();
  v5 = 0;
  v36 = a1;
  v8 = *(a1 + 64);
  v7 = a1 + 64;
  v6 = v8;
  v9 = 1 << *(v7 - 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & v6;
  v12 = (v9 + 63) >> 6;
  v33 = result + 8;
  v34 = result;
  if ((v10 & v6) != 0)
  {
    while (1)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_10:
      v16 = v13 | (v5 << 6);
      v17 = *(*(v36 + 48) + 8 * v16);
      sub_1BF38F0DC(*(v36 + 56) + *(v35 + 72) * v16, v3);
      v18 = *&v3[v38[6]];
      v37 = v17;
      if (v18 >> 62)
      {
        v27 = v18 & 0xFFFFFFFFFFFFFF8;
        if (v18 < 0)
        {
          v27 = v18;
        }

        v32 = v27;
        sub_1BF3901C0(0, &qword_1EDC9D720, 0x1E6994220);
        v28 = v17;

        v29 = sub_1BF4E9474();

        v18 = v29;
      }

      else
      {
        v19 = v17;

        sub_1BF4E9754();
        sub_1BF3901C0(0, &qword_1EDC9D720, 0x1E6994220);
      }

      v20 = *&v3[v38[7]];
      if (v20 >> 62)
      {
        sub_1BF3901C0(0, &qword_1EDC9D720, 0x1E6994220);

        v30 = sub_1BF4E9474();

        v20 = v30;
      }

      else
      {

        sub_1BF4E9754();
        sub_1BF3901C0(0, &qword_1EDC9D720, 0x1E6994220);
      }

      v39 = v18;
      sub_1BF44BBA4(v20);
      v21 = v39;
      v22 = *&v3[v38[9]];
      if (v22 >> 62)
      {
        sub_1BF3901C0(0, &qword_1EDC9D720, 0x1E6994220);

        v31 = sub_1BF4E9474();

        v22 = v31;
      }

      else
      {

        sub_1BF4E9754();
        sub_1BF3901C0(0, &qword_1EDC9D720, 0x1E6994220);
      }

      v39 = v21;
      sub_1BF44BBA4(v22);
      v23 = v39;
      sub_1BF38F140(v3);
      result = v34;
      *(v33 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(result[6] + 8 * v16) = v37;
      *(result[7] + 8 * v16) = v23;
      v24 = result[2];
      v25 = __OFADD__(v24, 1);
      v26 = v24 + 1;
      if (v25)
      {
        break;
      }

      result[2] = v26;
      if (!v11)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v5 >= v12)
      {
        return result;
      }

      v15 = *(v7 + 8 * v5);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v11 = (v15 - 1) & v15;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_1BF4DA38C(uint64_t a1)
{
  v2 = type metadata accessor for ExtensionMetadata(0);
  v27 = *(v2 - 8);
  v28 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9CB0, &qword_1BF4F7648);
  result = sub_1BF4E9494();
  v6 = result;
  v7 = 0;
  v29 = a1;
  v10 = *(a1 + 64);
  v9 = a1 + 64;
  v8 = v10;
  v11 = 1 << *(v9 - 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & v8;
  v14 = (v11 + 63) >> 6;
  v26 = result + 8;
  if ((v12 & v8) != 0)
  {
    while (1)
    {
      v15 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_10:
      v18 = v15 | (v7 << 6);
      v19 = *(*(v29 + 48) + 8 * v18);
      sub_1BF38F0DC(*(v29 + 56) + *(v27 + 72) * v18, v4);
      v20 = *&v4[*(v28 + 36)];
      v21 = v19;

      result = sub_1BF38F140(v4);
      *(v26 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      *(v6[6] + 8 * v18) = v21;
      *(v6[7] + 8 * v18) = v20;
      v22 = v6[2];
      v23 = __OFADD__(v22, 1);
      v24 = v22 + 1;
      if (v23)
      {
        break;
      }

      v6[2] = v24;
      if (!v13)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v14)
      {
        return v6;
      }

      v17 = *(v9 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v13 = (v17 - 1) & v17;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_1BF4DA594(void *result, uint64_t a2, void *a3, uint64_t (*a4)(id))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v5 = result;
      v6 = a2;
      v7 = a4;
      bzero(result, 8 * a2);
      result = v5;
      a2 = v6;
      a4 = v7;
    }

    sub_1BF4DCE1C(result, a2, a3, a4);
    v9 = v8;

    return v9;
  }

  return result;
}

uint64_t sub_1BF4DA624(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v48 = a1;
  v7 = sub_1BF4E7334();
  v54 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v55 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v50 = &v44 - v11;
  if (!a3)
  {
    return MEMORY[0x1E69E7CC8];
  }

  if (a4[2] == a3)
  {

    return a4;
  }

  v49 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD87B8, &unk_1BF4EB2D0);
  result = sub_1BF4E94C4();
  v13 = result;
  if (a2 < 1)
  {
    v14 = 0;
  }

  else
  {
    v14 = *v48;
  }

  v15 = 0;
  v46 = result;
  v47 = v54 + 16;
  v16 = v54 + 32;
  v17 = result + 64;
  v18 = v49;
  v45 = a4;
  while (v14)
  {
    v19 = v18;
    v20 = v16;
    v21 = __clz(__rbit64(v14));
    v51 = (v14 - 1) & v14;
LABEL_16:
    v24 = v21 | (v15 << 6);
    v25 = a4[7];
    v26 = (a4[6] + 16 * v24);
    v27 = *v26;
    v28 = v26[1];
    v29 = v54;
    v53 = *(v54 + 72);
    v30 = v50;
    (*(v54 + 16))(v50, v25 + v53 * v24, v19);
    v31 = *(v29 + 32);
    v32 = v30;
    v16 = v20;
    v31(v55, v32, v19);
    v13 = v46;
    sub_1BF4E9804();

    v52 = v27;
    sub_1BF4E89F4();
    result = sub_1BF4E9844();
    v33 = -1 << *(v13 + 32);
    v34 = result & ~v33;
    v35 = v34 >> 6;
    if (((-1 << v34) & ~*(v17 + 8 * (v34 >> 6))) == 0)
    {
      v37 = 0;
      v38 = (63 - v33) >> 6;
      v18 = v49;
      while (++v35 != v38 || (v37 & 1) == 0)
      {
        v39 = v35 == v38;
        if (v35 == v38)
        {
          v35 = 0;
        }

        v37 |= v39;
        v40 = *(v17 + 8 * v35);
        if (v40 != -1)
        {
          v36 = __clz(__rbit64(~v40)) + (v35 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v36 = __clz(__rbit64((-1 << v34) & ~*(v17 + 8 * (v34 >> 6)))) | v34 & 0x7FFFFFFFFFFFFFC0;
    v18 = v49;
LABEL_26:
    *(v17 + ((v36 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v36;
    v41 = (*(v13 + 48) + 16 * v36);
    v42 = v53;
    *v41 = v52;
    v41[1] = v28;
    result = (v31)(*(v13 + 56) + v36 * v42, v55, v18);
    ++*(v13 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v45;
    v14 = v51;
    if (!a3)
    {
      return v13;
    }
  }

  v22 = v15;
  while (1)
  {
    v15 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v15 >= a2)
    {
      return v13;
    }

    v23 = v48[v15];
    ++v22;
    if (v23)
    {
      v19 = v18;
      v20 = v16;
      v21 = __clz(__rbit64(v23));
      v51 = (v23 - 1) & v23;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_1BF4DA9B8(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = type metadata accessor for ExtensionMetadata(0);
  v38 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v37 = &v36 - v12;
  if (!a3)
  {
    return MEMORY[0x1E69E7CC8];
  }

  if (a4[2] == a3)
  {

    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8750, &qword_1BF4EB270);
  result = sub_1BF4E94C4();
  v14 = result;
  if (a2 < 1)
  {
    v15 = 0;
  }

  else
  {
    v15 = *a1;
  }

  v16 = 0;
  v17 = result + 64;
  v36 = a4;
  while (v15)
  {
    v18 = __clz(__rbit64(v15));
    v39 = (v15 - 1) & v15;
LABEL_16:
    v21 = v18 | (v16 << 6);
    v22 = a4[7];
    v23 = *(a4[6] + 8 * v21);
    v24 = v37;
    v25 = *(v38 + 72);
    sub_1BF38F0DC(v22 + v25 * v21, v37);
    sub_1BF3919A0(v24, v10);
    v26 = v23;
    result = sub_1BF4E9094();
    v27 = -1 << *(v14 + 32);
    v28 = result & ~v27;
    v29 = v28 >> 6;
    if (((-1 << v28) & ~*(v17 + 8 * (v28 >> 6))) == 0)
    {
      v31 = 0;
      v32 = (63 - v27) >> 6;
      while (++v29 != v32 || (v31 & 1) == 0)
      {
        v33 = v29 == v32;
        if (v29 == v32)
        {
          v29 = 0;
        }

        v31 |= v33;
        v34 = *(v17 + 8 * v29);
        if (v34 != -1)
        {
          v30 = __clz(__rbit64(~v34)) + (v29 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v30 = __clz(__rbit64((-1 << v28) & ~*(v17 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v17 + ((v30 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v30;
    *(*(v14 + 48) + 8 * v30) = v26;
    result = sub_1BF3919A0(v10, *(v14 + 56) + v30 * v25);
    ++*(v14 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v36;
    v15 = v39;
    if (!a3)
    {
      return v14;
    }
  }

  v19 = v16;
  while (1)
  {
    v16 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v16 >= a2)
    {
      return v14;
    }

    v20 = a1[v16];
    ++v19;
    if (v20)
    {
      v18 = __clz(__rbit64(v20));
      v39 = (v20 - 1) & v20;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_1BF4DAC9C(uint64_t a1, uint64_t a2, double a3)
{
  v6 = *v3;
  sub_1BF4E9804();
  sub_1BF4E89F4();
  v7 = sub_1BF4E9844();
  v8 = -1 << *(v6 + 32);
  v9 = v7 & ~v8;
  if (((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
    return 0;
  }

  v10 = ~v8;
  while (1)
  {
    v11 = (*(v6 + 48) + 16 * v9);
    v12 = *v11 == a1 && v11[1] == a2;
    if (v12 || (sub_1BF4E9734() & 1) != 0)
    {
      break;
    }

    v9 = (v9 + 1) & v10;
    if (((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v15 = *v3;
  v17 = *v3;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1BF4AF3F8();
    v15 = v17;
  }

  v13 = *(*(v15 + 48) + 16 * v9);
  sub_1BF4DB080(v9);
  *v3 = v17;
  return v13;
}

uint64_t sub_1BF4DADD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD91A0, &unk_1BF4EC4E0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v26 - v7;
  v9 = *v2;
  sub_1BF38C8B4(&qword_1EDC9D540, &unk_1EBDD91A0, &unk_1BF4EC4E0, MEMORY[0x1E6994140]);
  v32 = a1;
  v10 = sub_1BF4E8874();
  v30 = v9 + 56;
  v31 = v9;
  v11 = -1 << *(v9 + 32);
  v12 = v10 & ~v11;
  if ((*(v9 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v27 = v2;
    v28 = v6;
    v29 = a2;
    v13 = ~v11;
    v16 = *(v6 + 16);
    v15 = v6 + 16;
    v14 = v16;
    v17 = *(v15 + 56);
    while (1)
    {
      v18 = v17 * v12;
      v14(v8, *(v31 + 48) + v17 * v12, v5);
      sub_1BF38C8B4(&qword_1EDC9D538, &unk_1EBDD91A0, &unk_1BF4EC4E0, MEMORY[0x1E6994148]);
      v19 = sub_1BF4E88C4();
      (*(v15 - 8))(v8, v5);
      if (v19)
      {
        break;
      }

      v12 = (v12 + 1) & v13;
      if (((*(v30 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
      {
        v20 = 1;
        v6 = v28;
        a2 = v29;
        return (*(v6 + 56))(a2, v20, 1, v5);
      }
    }

    v21 = v27;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v21;
    v33 = *v21;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1BF4AF554(v23);
      v24 = v33;
    }

    v6 = v28;
    a2 = v29;
    (*(v28 + 32))(v29, *(v24 + 48) + v18, v5);
    sub_1BF4DB244(v12);
    v20 = 0;
    *v21 = v33;
  }

  else
  {
    v20 = 1;
  }

  return (*(v6 + 56))(a2, v20, 1, v5);
}

void sub_1BF4DB080(unint64_t a1)
{
  v2 = a1;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (a1 + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_1BF4E91C4();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        sub_1BF4E9804();

        sub_1BF4E89F4();
        v10 = sub_1BF4E9844();

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
    *(v4 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
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
}

void sub_1BF4DB244(int64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD91A0, &unk_1BF4EC4E0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v32 - v5;
  v7 = *v1;
  v8 = *v1 + 56;
  v9 = -1 << *(*v1 + 32);
  v10 = (a1 + 1) & ~v9;
  if (((1 << v10) & *(v8 + 8 * (v10 >> 6))) != 0)
  {
    v11 = ~v9;

    v12 = sub_1BF4E91C4();
    if ((*(v8 + 8 * (v10 >> 6)) & (1 << v10)) != 0)
    {
      v13 = v11;
      v14 = (v12 + 1) & v11;
      v34 = *(v4 + 16);
      v35 = v4 + 16;
      v15 = *(v4 + 72);
      v32 = (v4 + 8);
      v33 = v8;
      v16 = v15;
      do
      {
        v17 = v16;
        v18 = v16 * v10;
        v34(v6, *(v7 + 48) + v16 * v10, v3);
        v19 = v7;
        v20 = v14;
        v21 = v13;
        v22 = v19;
        sub_1BF38C8B4(&qword_1EDC9D540, &unk_1EBDD91A0, &unk_1BF4EC4E0, MEMORY[0x1E6994140]);
        v23 = sub_1BF4E8874();
        (*v32)(v6, v3);
        v24 = v23 & v21;
        v13 = v21;
        v14 = v20;
        if (a1 >= v20)
        {
          if (v24 >= v20 && a1 >= v24)
          {
LABEL_16:
            v7 = v22;
            v27 = *(v22 + 48);
            v16 = v17;
            v28 = v17 * a1;
            if (v17 * a1 < v18 || v27 + v17 * a1 >= (v27 + v18 + v17))
            {
              swift_arrayInitWithTakeFrontToBack();
              a1 = v10;
            }

            else
            {
              a1 = v10;
              if (v28 != v18)
              {
                swift_arrayInitWithTakeBackToFront();
                a1 = v10;
              }
            }

            goto LABEL_5;
          }
        }

        else if (v24 >= v20 || a1 >= v24)
        {
          goto LABEL_16;
        }

        v7 = v22;
        v16 = v17;
LABEL_5:
        v10 = (v10 + 1) & v13;
        v8 = v33;
      }

      while (((*(v33 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
    }

    *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  else
  {
    *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v29 = *(v7 + 16);
  v30 = __OFSUB__(v29, 1);
  v31 = v29 - 1;
  if (v30)
  {
    __break(1u);
  }

  else
  {
    *(v7 + 16) = v31;
    ++*(v7 + 36);
  }
}

uint64_t sub_1BF4DB550(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = sub_1BF4E6EC4();
  v11 = result;
  if (result)
  {
    result = sub_1BF4E6EE4();
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

  sub_1BF4E6ED4();
  sub_1BF4D9C04(v11, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return v12;
}

void sub_1BF4DB64C(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *(v2 + 16);
  v5 = *a1;
  v7[2] = v4;

  sub_1BF4D1F28(sub_1BF4DD20C, v7, v5, sub_1BF4D2E48, 0);
  *a2 = v6;
}

void sub_1BF4DB6C4(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, void **a5)
{
  v6 = v5;
  v21 = a4;
  v22 = a5;
  v19 = a2;
  v20 = a3;
  v8 = type metadata accessor for ExtensionMetadata(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a1 + 16);
  if (v12)
  {
    v23 = MEMORY[0x1E69E7CC0];
    sub_1BF3E1604(0, v12, 0);
    v13 = v23;
    v14 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v15 = a1 + v14;
    v16 = *(v9 + 72);
    while (1)
    {
      sub_1BF4D53D4(v15, v19, v20, v21, v22, v11);
      if (v6)
      {
        break;
      }

      v6 = 0;
      v23 = v13;
      v18 = *(v13 + 16);
      v17 = *(v13 + 24);
      if (v18 >= v17 >> 1)
      {
        sub_1BF3E1604((v17 > 1), v18 + 1, 1);
        v13 = v23;
      }

      *(v13 + 16) = v18 + 1;
      sub_1BF3919A0(v11, v13 + v14 + v18 * v16);
      v15 += v16;
      if (!--v12)
      {
        return;
      }
    }

    __break(1u);
  }
}

uint64_t sub_1BF4DB854(uint64_t result, uint64_t *a2, void *a3, NSObject *a4)
{
  v5 = result;
  v6 = *(result + 16);
  if (v6)
  {
    v7 = a4;
    v8 = a3;
    v10 = 0;
    v11 = result + 32;
    v12 = MEMORY[0x1E69E7CC0];
    while (v10 < *(v5 + 16))
    {
      sub_1BF38E49C(v11, v20);
      v13 = sub_1BF4D696C(v20, a2, v8, v7);
      if (v4)
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v20);

        goto LABEL_15;
      }

      if (v13)
      {
        sub_1BF38E60C(v20, v19);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v21 = v12;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1BF3E16D0(0, *(v12 + 16) + 1, 1);
          v12 = v21;
        }

        v16 = *(v12 + 16);
        v15 = *(v12 + 24);
        if (v16 >= v15 >> 1)
        {
          sub_1BF3E16D0((v15 > 1), v16 + 1, 1);
          v12 = v21;
        }

        *(v12 + 16) = v16 + 1;
        result = sub_1BF38E60C(v19, v12 + 40 * v16 + 32);
        v8 = a3;
        v7 = a4;
      }

      else
      {
        result = __swift_destroy_boxed_opaque_existential_1Tm(v20);
      }

      ++v10;
      v11 += 40;
      if (v6 == v10)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
LABEL_15:

    return v12;
  }

  return result;
}

uint64_t sub_1BF4DB9D8(uint64_t a1, uint64_t *a2)
{
  v42 = a2;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD91A0, &unk_1BF4EC4E0);
  MEMORY[0x1EEE9AC00](v49);
  v46 = &v37[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v4);
  v50 = &v37[-v7];
  v41 = *(a1 + 16);
  if (!v41)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v8 = 0;
  v40 = a1 + 32;
  v45 = v5 + 16;
  v39 = v5;
  v48 = (v5 + 8);
  v9 = MEMORY[0x1E69E7CC0];
  *&v6 = 138543362;
  v38 = v6;
  do
  {
    v43 = v9;
    v44 = v8;
    sub_1BF38E49C(v40 + 40 * v8, v54);
    v10 = *v42;
    v11 = v55;
    v12 = v56;
    __swift_project_boxed_opaque_existential_1(v54, v55);
    v13 = *(v12 + 40);

    v14 = v13(v11, v12);
    sub_1BF4E9024();

    if (*(v10 + 16) && (sub_1BF38C8B4(&qword_1EDC9D540, &unk_1EBDD91A0, &unk_1BF4EC4E0, MEMORY[0x1E6994140]), v15 = sub_1BF4E8874(), v16 = -1 << *(v10 + 32), v17 = v15 & ~v16, v47 = v10 + 56, ((*(v10 + 56 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) != 0))
    {
      v18 = ~v16;
      v19 = *(v39 + 72);
      v20 = *(v39 + 16);
      while (1)
      {
        v21 = v46;
        v22 = v49;
        v20(v46, *(v10 + 48) + v19 * v17, v49);
        sub_1BF38C8B4(&qword_1EDC9D538, &unk_1EBDD91A0, &unk_1BF4EC4E0, MEMORY[0x1E6994148]);
        v23 = sub_1BF4E88C4();
        v24 = *v48;
        (*v48)(v21, v22);
        if (v23)
        {
          break;
        }

        v17 = (v17 + 1) & v18;
        if (((*(v47 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
        {
          goto LABEL_11;
        }
      }

      v24(v50, v49);
      if (qword_1EDC9D460 != -1)
      {
        swift_once();
      }

      v28 = sub_1BF4E7B54();
      __swift_project_value_buffer(v28, qword_1EDCA6898);
      sub_1BF38E49C(v54, v51);
      v29 = sub_1BF4E7B34();
      v30 = sub_1BF4E8E84();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        v32 = swift_slowAlloc();
        *v31 = v38;
        v34 = v52;
        v33 = v53;
        __swift_project_boxed_opaque_existential_1(v51, v52);
        v35 = (*(v33 + 40))(v34, v33);
        __swift_destroy_boxed_opaque_existential_1Tm(v51);
        *(v31 + 4) = v35;
        *v32 = v35;
        _os_log_impl(&dword_1BF389000, v29, v30, "Pending descriptor fetch already exists for %{public}@", v31, 0xCu);
        sub_1BF38C9B4(v32, &unk_1EBDD9260, &qword_1BF4EC380);
        MEMORY[0x1BFB5A5D0](v32, -1, -1);
        MEMORY[0x1BFB5A5D0](v31, -1, -1);
      }

      else
      {

        __swift_destroy_boxed_opaque_existential_1Tm(v51);
      }

      v9 = v43;
      __swift_destroy_boxed_opaque_existential_1Tm(v54);
    }

    else
    {
LABEL_11:

      (*v48)(v50, v49);
      sub_1BF38E60C(v54, v51);
      v9 = v43;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v57 = v9;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1BF3E16D0(0, *(v9 + 16) + 1, 1);
        v9 = v57;
      }

      v27 = *(v9 + 16);
      v26 = *(v9 + 24);
      if (v27 >= v26 >> 1)
      {
        sub_1BF3E16D0((v26 > 1), v27 + 1, 1);
        v9 = v57;
      }

      *(v9 + 16) = v27 + 1;
      sub_1BF38E60C(v51, v9 + 40 * v27 + 32);
    }

    v8 = v44 + 1;
  }

  while (v44 + 1 != v41);
  return v9;
}

void sub_1BF4DBF10(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD91A0, &unk_1BF4EC4E0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7.n128_f64[0] = MEMORY[0x1EEE9AC00](v6);
  v9 = &v16 - v8;
  v10 = *(a1 + 16);
  if (v10)
  {
    v13 = *(v3 + 16);
    v11 = v3 + 16;
    v12 = v13;
    v14 = a1 + ((*(v11 + 64) + 32) & ~*(v11 + 64));
    v15 = *(v11 + 56);
    do
    {
      v12(v5, v14, v2, v7);
      sub_1BF4ACCF8(v9, v5);
      (*(v11 - 8))(v9, v2);
      v14 += v15;
      --v10;
    }

    while (v10);
  }
}

void sub_1BF4DC064(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9CA8, &qword_1BF4F7640);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v29 - v3;
  v37 = type metadata accessor for ExtensionMetadata(0);
  v5 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v32 = &v29 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v29 - v11;
  sub_1BF4E6F84();
  swift_allocObject();
  v13 = sub_1BF4E6F74();
  v36 = *(a1 + 16);
  if (v36)
  {
    v40 = v13;
    v15 = 0;
    v30 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v31 = v7;
    v35 = a1 + v30;
    v33 = MEMORY[0x1E69E7CC0];
    v38 = *(v5 + 72);
    *&v14 = 136380675;
    v29 = v14;
    v34 = v12;
    while (1)
    {
      v39 = v15;
      sub_1BF38F0DC(v35 + v38 * v15, v12);
      v16 = *&v12[*(v37 + 36)];
      v17 = v16 >> 62 ? sub_1BF4E9204() : *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);

      if (v17)
      {
        break;
      }

LABEL_3:
      v12 = v34;
      sub_1BF38F140(v34);

      v15 = v39 + 1;
      if (v39 + 1 == v36)
      {

        return;
      }
    }

    v18 = 0;
    v42 = v16 & 0xFFFFFFFFFFFFFF8;
    v43 = v16 & 0xC000000000000001;
    v41 = v16;
    while (1)
    {
      if (v43)
      {
        v19 = MEMORY[0x1BFB59570](v18, v16);
      }

      else
      {
        if (v18 >= *(v42 + 16))
        {
          goto LABEL_20;
        }

        v19 = *(v16 + 8 * v18 + 32);
      }

      v20 = v19;
      v21 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      v22 = sub_1BF4E7454();
      v23 = [v20 activityAttributesType];
      v24 = v4;
      v25 = sub_1BF4E71C4();
      v27 = v26;

      sub_1BF392020(&qword_1EDC9F0A0, MEMORY[0x1E6959BC8], MEMORY[0x1E6959BE0]);
      sub_1BF4E6F64();

      v28 = sub_1BF3B03C0(v25, v27);
      (*(*(v22 - 8) + 56))(v24, 0, 1, v22, v28);
      sub_1BF38C9B4(v24, &qword_1EBDD9CA8, &qword_1BF4F7640);
      ++v18;
      v4 = v24;
      v16 = v41;
      if (v21 == v17)
      {
        goto LABEL_3;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
  }

  else
  {
  }
}

void *sub_1BF4DC6DC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ExtensionMetadata(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v38[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v38[-1] - v9;
  v11 = sub_1BF3DACD0(MEMORY[0x1E69E7CC0]);
  v12 = *(a1 + 16);
  if (!v12)
  {
    return v11;
  }

  v13 = a1 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
  v14 = *(v5 + 72);
  v37 = a2;
  while (1)
  {
    sub_1BF38F0DC(v13, v10);
    if (!*(a2 + 16))
    {
      break;
    }

    v15 = sub_1BF38C890(v10);
    if ((v16 & 1) == 0)
    {
      goto LABEL_18;
    }

    sub_1BF38E49C(*(a2 + 56) + 40 * v15, v38);
    v17 = v39;
    v18 = v40;
    __swift_project_boxed_opaque_existential_1(v38, v39);
    v19 = (*(v18 + 40))(v17, v18);
    __swift_destroy_boxed_opaque_existential_1Tm(v38);
    v20 = v10;
    v21 = v10;
    v22 = v7;
    sub_1BF38F0DC(v21, v7);
    v23 = v19;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v38[0] = v11;
    v25 = sub_1BF3916CC(v23);
    v27 = v11[2];
    v28 = (v26 & 1) == 0;
    v29 = __OFADD__(v27, v28);
    v30 = v27 + v28;
    if (v29)
    {
      goto LABEL_19;
    }

    v31 = v26;
    if (v11[3] >= v30)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v35 = v25;
        sub_1BF4A4A00();
        v25 = v35;
      }
    }

    else
    {
      sub_1BF4A1688(v30, isUniquelyReferenced_nonNull_native);
      v25 = sub_1BF3916CC(v23);
      if ((v31 & 1) != (v32 & 1))
      {
        goto LABEL_21;
      }
    }

    v7 = v22;
    v11 = v38[0];
    v10 = v20;
    if (v31)
    {
      sub_1BF4DD1A8(v7, *(v38[0] + 56) + v25 * v14);
    }

    else
    {
      *(v38[0] + 8 * (v25 >> 6) + 64) |= 1 << v25;
      *(v11[6] + 8 * v25) = v23;
      sub_1BF3919A0(v7, v11[7] + v25 * v14);
      v33 = v11[2];
      v29 = __OFADD__(v33, 1);
      v34 = v33 + 1;
      if (v29)
      {
        goto LABEL_20;
      }

      v11[2] = v34;
    }

    sub_1BF38F140(v20);
    v13 += v14;
    --v12;
    a2 = v37;
    if (!v12)
    {
      return v11;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:

  sub_1BF4E9034();
  result = sub_1BF4E9794();
  __break(1u);
  return result;
}

unint64_t sub_1BF4DCA44()
{
  result = qword_1EBDD9C98;
  if (!qword_1EBDD9C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDD9C98);
  }

  return result;
}

uint64_t dispatch thunk of WidgetDescriptorProvider.migrateCachedDescriptorIfNecessary(for:with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  return (*(a4 + 8))(a1, a2, a3);
}

{
  return (*(a4 + 16))(a1, a2, a3);
}

{
  return (*(a4 + 24))(a1, a2, a3);
}

uint64_t sub_1BF4DCC48(uint64_t a1, unsigned int a2)
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

uint64_t sub_1BF4DCC90(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1BF4DCDA0(uint64_t *a1)
{
  sub_1BF4DD000(*a1, sub_1BF4DCE14);
  v3 = v2;

  *a1 = v3;
  return result;
}

void sub_1BF4DCE1C(unint64_t *a1, uint64_t a2, void *a3, uint64_t (*a4)(id))
{
  v24 = a2;
  v28 = a4;
  v25 = a1;
  v5 = type metadata accessor for ExtensionMetadata(0);
  v27 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = 0;
  v8 = 0;
  v29 = a3;
  v11 = a3[8];
  v10 = a3 + 8;
  v9 = v11;
  v12 = 1 << *(v10 - 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & v9;
  v15 = (v12 + 63) >> 6;
  while (v14)
  {
    v16 = __clz(__rbit64(v14));
    v14 &= v14 - 1;
LABEL_11:
    v19 = v16 | (v8 << 6);
    v20 = *(v29[6] + 8 * v19);
    sub_1BF38F0DC(v29[7] + *(v27 + 72) * v19, v7);
    v21 = v20;
    v22 = v28(v21);
    sub_1BF38F140(v7);

    if (v22)
    {
      *(v25 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      if (__OFADD__(v26++, 1))
      {
        __break(1u);
LABEL_15:
        sub_1BF4DA9B8(v25, v24, v26, v29);
        return;
      }
    }
  }

  v17 = v8;
  while (1)
  {
    v8 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v8 >= v15)
    {
      goto LABEL_15;
    }

    v18 = v10[v8];
    ++v17;
    if (v18)
    {
      v16 = __clz(__rbit64(v18));
      v14 = (v18 - 1) & v18;
      goto LABEL_11;
    }
  }

  __break(1u);
}

void sub_1BF4DD000(uint64_t a1, uint64_t (*a2)(id))
{
  v4 = a1;
  v10[1] = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 32);
  v6 = ((1 << v5) + 63) >> 6;
  if ((v5 & 0x3Fu) > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v9 = swift_slowAlloc();
      sub_1BF4DA594(v9, v6, v4, a2);
      MEMORY[0x1BFB5A5D0](v9, -1, -1);
      return;
    }
  }

  MEMORY[0x1EEE9AC00](a1);
  v8 = v10 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0);
  bzero(v8, v7);
  sub_1BF4DCE1C(v8, v6, v4, a2);
  if (v2)
  {
    swift_willThrow();
  }
}

uint64_t sub_1BF4DD1A8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ExtensionMetadata(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BF4DD22C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9318, &qword_1BF4F09A8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BF4DD2CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a2;
  v4 = sub_1BF4E7014();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_1BF4E7194();
  v8 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v32 - v12;
  v14 = (a1 + *MEMORY[0x1E69941A8]);
  swift_beginAccess();
  v15 = v14[1];
  if (v15)
  {
    v16 = *v14;

    sub_1BF4E76F4();
    v38 = v16;
    v39 = v15;
    v17 = *MEMORY[0x1E6968F58];
    v35 = *(v5 + 104);
    v35(v7, v17, v4);
    v34 = sub_1BF399080();
    sub_1BF4E7184();
    v33 = *(v5 + 8);
    v33(v7, v4);

    v32 = *(v8 + 8);
    v18 = v10;
    v19 = v36;
    v32(v18, v36);
    swift_beginAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8B48, &unk_1BF4EC990);
    v20 = sub_1BF4E76B4();
    v22 = v21;
    swift_endAccess();
    v38 = v20;
    v39 = v22;
    v35(v7, *MEMORY[0x1E6968F70], v4);
    v23 = v37;
    sub_1BF4E7184();
    v33(v7, v4);

    v32(v13, v19);
    return (*(v8 + 56))(v23, 0, 1, v19);
  }

  else
  {
    v25 = v8;
    v26 = v36;
    v27 = v2[5];
    v28 = v2[6];
    __swift_project_boxed_opaque_existential_1(v2 + 2, v27);
    ExtensionManaging.extension(for:)(a1, v27, v28);
    v29 = v40;
    if (v40)
    {
      v30 = v41;
      __swift_project_boxed_opaque_existential_1(&v38, v40);
      v31 = v37;
      (*(v30 + 104))(v29, v30);
      (*(v25 + 56))(v31, 0, 1, v26);
      return __swift_destroy_boxed_opaque_existential_1Tm(&v38);
    }

    else
    {
      sub_1BF38C9B4(&v38, &unk_1EBDD91B0, &unk_1BF4F0720);
      return (*(v25 + 56))(v37, 1, 1, v26);
    }
  }
}

uint64_t sub_1BF4DD6D0()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t sub_1BF4DD75C()
{
  v0 = sub_1BF4DE31C();

  return v0;
}

void *ExtensionSystemDataCacheKeyProvider.init(subsystemIdentifier:systemDataURLProvider:fileManager:)(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a2;
  sub_1BF38E610(a3, (v4 + 4));
  v4[9] = a4;
  return v4;
}

uint64_t sub_1BF4DD7D8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1BF4E7194();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a1[3];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v9);
  (*(v10 + 104))(v9, v10);
  swift_beginAccess();

  sub_1BF4E70F4();

  (*(v6 + 8))(v8, v5);
  return (*(v6 + 56))(a2, 0, 1, v5);
}

uint64_t ExtensionSystemDataCacheKeyProvider.__deallocating_deinit()
{
  ExtensionSystemDataCacheKeyProvider.deinit();

  return swift_deallocClassInstance();
}

void sub_1BF4DD9A4(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  v5 = (*(v4 + 40))(v3, v4);
  sub_1BF4DDEB4(v5, a2);
}

uint64_t sub_1BF4DDA38@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD95A0, &unk_1BF4F7670);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v32 = &v31 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD95A8, &unk_1BF4F1960);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v31 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD87A8, &unk_1BF4EB2C0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v31 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8AD8, &unk_1BF4ED6C0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v31 - v13;
  v15 = sub_1BF4E7194();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BF4DDEB4(*a1, v14);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    sub_1BF38C9B4(v14, &qword_1EBDD8AD8, &unk_1BF4ED6C0);
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8FF8, &qword_1BF4EFD98);
    return (*(*(v19 - 8) + 56))(a2, 1, 1, v19);
  }

  else
  {
    v21 = *(v16 + 32);
    v21(v18, v14, v15);
    v21(a2, v18, v15);
    sub_1BF38C94C(a1, v11, &qword_1EBDD87A8, &unk_1BF4EB2C0);
    sub_1BF44C740(v11, v8, type metadata accessor for ActivityKey);
    v22 = type metadata accessor for ActivityKey(0);
    v23 = *(*(v22 - 8) + 56);
    v23(v8, 0, 1, v22);
    v24 = &v11[*(v9 + 68)];
    v31 = v8;
    v25 = v32;
    sub_1BF44C740(v24, v32, type metadata accessor for ActivityVariantKey);
    v26 = type metadata accessor for ActivityVariantKey(0);
    v27 = *(*(v26 - 8) + 56);
    v27(v25, 0, 1, v26);
    v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8FF8, &qword_1BF4EFD98);
    v29 = *(v28 + 68);
    v23(&a2[v29], 1, 1, v22);
    v30 = *(v28 + 72);
    v27(&a2[v30], 1, 1, v26);
    sub_1BF3A3A54(v31, &a2[v29], &qword_1EBDD95A8, &unk_1BF4F1960);
    sub_1BF3A3A54(v25, &a2[v30], &qword_1EBDD95A0, &unk_1BF4F7670);
    return (*(*(v28 - 8) + 56))(a2, 0, 1, v28);
  }
}

uint64_t sub_1BF4DDEB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v26 = a2;
  v25 = sub_1BF4E7014();
  v5 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8AD8, &unk_1BF4ED6C0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v24 - v12;
  sub_1BF38E49C(v3 + 32, v27);
  v15 = v28;
  v14 = v29;
  __swift_project_boxed_opaque_existential_1(v27, v28);
  (*(v14 + 8))(a1, v15, v14);
  __swift_destroy_boxed_opaque_existential_1Tm(v27);
  sub_1BF38C94C(v13, v10, &qword_1EBDD8AD8, &unk_1BF4ED6C0);
  v16 = sub_1BF4E7194();
  v17 = *(v16 - 8);
  if ((*(v17 + 48))(v10, 1, v16) == 1)
  {
    sub_1BF38C9B4(v13, &qword_1EBDD8AD8, &unk_1BF4ED6C0);
    sub_1BF38C9B4(v10, &qword_1EBDD8AD8, &unk_1BF4ED6C0);
    v18 = 1;
    v19 = v26;
  }

  else
  {
    v20 = *(v3 + 24);
    v27[0] = *(v3 + 16);
    v27[1] = v20;
    v21 = v25;
    (*(v5 + 104))(v7, *MEMORY[0x1E6968F58], v25);
    sub_1BF399080();

    v22 = v26;
    sub_1BF4E7184();
    (*(v5 + 8))(v7, v21);

    sub_1BF38C9B4(v13, &qword_1EBDD8AD8, &unk_1BF4ED6C0);
    (*(v17 + 8))(v10, v16);
    v18 = 0;
    v19 = v22;
  }

  return (*(v17 + 56))(v19, v18, 1, v16);
}

uint64_t _s9ChronoKit35ExtensionSystemDataCacheKeyProviderCfd_0()
{

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 32));

  return v0;
}

uint64_t ActivityExtensionSystemDataCacheKeyProvider.__deallocating_deinit()
{

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 32));

  return swift_deallocClassInstance();
}

void sub_1BF4DE244(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  v5 = (*(v4 + 40))(v3, v4);
  sub_1BF4DDEB4(v5, a2);
}

uint64_t dispatch thunk of ExtensionSystemDataCacheKeyProvider.baseURL(for:)()
{
  return (*(*v0 + 224))();
}

{
  return (*(*v0 + 232))();
}

uint64_t dispatch thunk of ActivityExtensionSystemDataCacheKeyProvider.baseURL(for:)()
{
  return (*(*v0 + 184))();
}

{
  return (*(*v0 + 192))();
}

uint64_t sub_1BF4DE5EC()
{

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 136));
  v1 = qword_1EDCA6868;
  v2 = sub_1BF4E8424();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = qword_1EDC9AF50;
  v4 = sub_1BF4E7B54();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + qword_1EDC9AFC8));

  return v0;
}

char *PlaceholderStatefulStore.__allocating_init<A, B>(reloadStrategy:reloadConfigurationPolicy:reloadTriggers:logger:dataMigrator:allowDebounce:enabled:expirationDuration:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, int a6, int a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  swift_allocObject();
  v17 = sub_1BF4DEEA0(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11);
  (*(*(a9 - 8) + 8))(a2, a9);
  (*(*(a8 - 8) + 8))(a1, a8);
  return v17;
}

char *PlaceholderStatefulStore.init<A, B>(reloadStrategy:reloadConfigurationPolicy:reloadTriggers:logger:dataMigrator:allowDebounce:enabled:expirationDuration:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v14 = sub_1BF4DEEA0(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11);
  (*(*(a9 - 8) + 8))(a2, a9);
  (*(*(a8 - 8) + 8))(a1, a8);
  return v14;
}

char *PlaceholderStatefulStore.__allocating_init<A, B>(reloadStrategy:reloadConfigurationPolicy:reloadTriggers:logger:dataMigrator:allowDebounce:enabled:reloadQueue:calloutQueue:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, int a6, int a7, void *a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  swift_allocObject();
  v18 = sub_1BF4DEEA0(a1, a2, a3, a4, a5, a6, a7, a10, a11, a12, a13);

  (*(*(a11 - 8) + 8))(a2, a11);
  (*(*(a10 - 8) + 8))(a1, a10);
  return v18;
}

char *PlaceholderStatefulStore.init<A, B>(reloadStrategy:reloadConfigurationPolicy:reloadTriggers:logger:dataMigrator:allowDebounce:enabled:reloadQueue:calloutQueue:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, void *a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v16 = sub_1BF4DEEA0(a1, a2, a3, a4, a5, a6, a7, a10, a11, a12, a13);

  (*(*(a11 - 8) + 8))(a2, a11);
  (*(*(a10 - 8) + 8))(a1, a10);
  return v16;
}

uint64_t sub_1BF4DEC44(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  if (*(v2 + 176) == 1)
  {
    v5 = *(v2 + qword_1EDC99040);
    v8 = a1;
    v6 = (*(**(v5 + 16) + 152))(&v8, a2);
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

uint64_t PlaceholderStatefulStore.deinit()
{
  v0 = sub_1BF4DE5EC();

  v1 = qword_1EDC99B70;
  v2 = sub_1BF4E7B54();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_1BF3B0E64(*(v0 + qword_1EDCA6810), *(v0 + qword_1EDCA6810 + 8));
  sub_1BF3B0E64(*(v0 + qword_1EDCA6808), *(v0 + qword_1EDCA6808 + 8));

  return v0;
}

uint64_t PlaceholderStatefulStore.__deallocating_deinit()
{
  v0 = sub_1BF4DE5EC();

  v1 = qword_1EDC99B70;
  v2 = sub_1BF4E7B54();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_1BF3B0E64(*(v0 + qword_1EDCA6810), *(v0 + qword_1EDCA6810 + 8));
  sub_1BF3B0E64(*(v0 + qword_1EDCA6808), *(v0 + qword_1EDCA6808 + 8));

  return swift_deallocClassInstance();
}

char *sub_1BF4DEEA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, int a6, int a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v27 = a8;
  v25 = a6;
  v26 = a7;
  v23 = a1;
  v24 = a3;
  v22 = a10;
  v15 = sub_1BF4E7B54();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v22 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9CC8, &qword_1BF4F78A0);
  *(v11 + qword_1EDC99040) = sub_1BF4857B4(a2, a9);
  (*(v16 + 16))(v18, a4, v15);
  sub_1BF38E49C(a5, v28);
  *&v21 = a9;
  *(&v21 + 1) = v22;
  v19 = sub_1BF3E4870(v23, a2, v24, v18, v28, v25, v26, v27, v21, a11);
  __swift_destroy_boxed_opaque_existential_1Tm(a5);
  (*(v16 + 8))(a4, v15);
  return v19;
}

uint64_t type metadata accessor for PlaceholderStatefulStore(uint64_t a1)
{
  result = qword_1EDC99030;
  if (!qword_1EDC99030)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ControlsCacheManager.__allocating_init(subdirectory:cacheKeyProvider:protectionLevelProvider:fileManager:forReading:)(uint64_t a1, uint64_t a2, __int128 *a3, __int128 *a4, uint64_t a5, char a6)
{
  v12 = type metadata accessor for ControlsCacheURLProvider();
  v13 = swift_allocObject();
  v13[2] = a1;
  v13[3] = a2;
  v13[4] = 0x632D6F6E6F726863;
  v13[5] = 0xEF736C6F72746E6FLL;
  v17 = v12;
  v18 = &protocol witness table for ControlsCacheURLProvider;
  *&v16 = v13;
  type metadata accessor for ControlsCacheManager(0);
  v14 = swift_allocObject();
  *(v14 + 160) = a6 ^ 1;
  *(v14 + 24) = a1;
  *(v14 + 32) = a2;
  sub_1BF38E610(a3, v14 + 40);
  sub_1BF38E610(&v16, v14 + 80);
  sub_1BF38E610(a4, v14 + 120);
  *(v14 + 16) = a5;

  return v14;
}

uint64_t sub_1BF4DF20C(void *a1)
{
  v31 = type metadata accessor for ControlCacheKey(0);
  MEMORY[0x1EEE9AC00](v31);
  v32 = v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8AD8, &unk_1BF4ED6C0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v26 - v5;
  v7 = sub_1BF4E7194();
  v36 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v29 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = v1;
  sub_1BF38E49C(v1 + 40, v33);
  v10 = v34;
  v9 = v35;
  __swift_project_boxed_opaque_existential_1(v33, v34);
  v12 = a1[3];
  v11 = a1[4];
  v13 = __swift_project_boxed_opaque_existential_1(a1, v12);
  v15 = v11 + 40;
  v14 = *(v11 + 40);
  v26[1] = v13;
  v27 = v14;
  v28 = v11;
  v16 = v14(v12, v11);
  v17 = v10;
  v18 = v7;
  v19 = v36;
  (*(v9 + 48))(v16, v17, v9);

  if ((*(v19 + 48))(v6, 1, v18) == 1)
  {
    sub_1BF38C9B4(v6, &qword_1EBDD8AD8, &unk_1BF4ED6C0);
    __swift_destroy_boxed_opaque_existential_1Tm(v33);
    type metadata accessor for ControlsCacheManager.CacheManagementError(0);
    sub_1BF4E10F8(&qword_1EBDD9CD0, type metadata accessor for ControlsCacheManager.CacheManagementError, &unk_1BF4F79F0);
    swift_allocError();
    *v20 = v27(v12, v28);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
  }

  else
  {
    v21 = v29;
    (*(v19 + 32))(v29, v6, v18);
    __swift_destroy_boxed_opaque_existential_1Tm(v33);
    sub_1BF38E49C(v30 + 80, v33);
    v22 = v34;
    v23 = v35;
    __swift_project_boxed_opaque_existential_1(v33, v34);
    v24 = v32;
    (*(v19 + 16))(v32, v21, v18);
    *(v24 + *(v31 + 20)) = 0;
    v15 = (*(v23 + 16))(v24, v22, v23);
    (*(v19 + 8))(v21, v18);
    sub_1BF4E0EF0(v24);
    __swift_destroy_boxed_opaque_existential_1Tm(v33);
  }

  return v15;
}

uint64_t sub_1BF4DF5B0@<X0>(id *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v17 = a2;
  v16 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8BE0, &qword_1BF4ED500);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v16 - v6;
  v8 = type metadata accessor for ControlCacheKey(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BF38E49C(v3 + 40, v18);
  v12 = v19;
  v13 = v20;
  __swift_project_boxed_opaque_existential_1(v18, v19);
  (*(v13 + 56))(a1, v12, v13);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_1BF38C9B4(v7, &qword_1EBDD8BE0, &qword_1BF4ED500);
    __swift_destroy_boxed_opaque_existential_1Tm(v18);
    type metadata accessor for ControlsCacheManager.CacheManagementError(0);
    sub_1BF4E10F8(&qword_1EBDD9CD0, type metadata accessor for ControlsCacheManager.CacheManagementError, &unk_1BF4F79F0);
    swift_allocError();
    *v14 = [*a1 extensionIdentity];
    swift_storeEnumTagMultiPayload();
    return swift_willThrow();
  }

  else
  {
    sub_1BF4E0F4C(v7, v11);
    __swift_destroy_boxed_opaque_existential_1Tm(v18);
    sub_1BF38E49C(v3 + 80, v18);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9CD8, &unk_1BF4F78A8);
    type metadata accessor for ControlsCacheURLProvider();
    swift_dynamicCast();
    sub_1BF4C76DC(v11, v17, v16);

    return sub_1BF4E0EF0(v11);
  }
}

uint64_t sub_1BF4DF864@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8BE0, &qword_1BF4ED500);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v21 - v5;
  v7 = type metadata accessor for ControlCacheKey(0);
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a1;
  v13 = [*a1 extensionIdentity];
  v14 = [v13 isRemote];

  if (v14)
  {
    sub_1BF38E49C(v22 + 40, v23);
    v15 = v24;
    v16 = v25;
    __swift_project_boxed_opaque_existential_1(v23, v24);
    (*(v16 + 56))(a1, v15, v16);
    if ((*(v8 + 48))(v6, 1, v7) == 1)
    {
      sub_1BF38C9B4(v6, &qword_1EBDD8BE0, &qword_1BF4ED500);
      __swift_destroy_boxed_opaque_existential_1Tm(v23);
      type metadata accessor for ControlsCacheManager.CacheManagementError(0);
      sub_1BF4E10F8(&qword_1EBDD9CD0, type metadata accessor for ControlsCacheManager.CacheManagementError, &unk_1BF4F79F0);
      swift_allocError();
      *v17 = [v12 extensionIdentity];
      swift_storeEnumTagMultiPayload();
      return swift_willThrow();
    }

    else
    {
      sub_1BF4E0F4C(v6, v11);
      __swift_destroy_boxed_opaque_existential_1Tm(v23);
      sub_1BF38E49C(v22 + 80, v23);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9CD8, &unk_1BF4F78A8);
      type metadata accessor for ControlsCacheURLProvider();
      swift_dynamicCast();
      sub_1BF4C7860(v11, a2);

      sub_1BF4E0EF0(v11);
      v20 = sub_1BF4E7194();
      return (*(*(v20 - 8) + 56))(a2, 0, 1, v20);
    }
  }

  else
  {
    v19 = sub_1BF4E7194();
    return (*(*(v19 - 8) + 56))(a2, 1, 1, v19);
  }
}

uint64_t sub_1BF4DFBCC@<X0>(id *a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v8 = sub_1BF4E7194();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v32 - v13;
  result = sub_1BF4DF5B0(a1, a2, &v32 - v13);
  if (!v4)
  {
    sub_1BF4E7134();
    if (sub_1BF4E7024() == 0x656C646E7562 && v16 == 0xE600000000000000)
    {

      return (*(v9 + 8))(v14, v8);
    }

    v17 = sub_1BF4E9734();

    if (v17)
    {
      return (*(v9 + 8))(v14, v8);
    }

    if (qword_1EBDD8578 != -1)
    {
      swift_once();
    }

    v18 = sub_1BF4E7B54();
    __swift_project_value_buffer(v18, qword_1EBDE1ED8);
    v37 = *(v9 + 16);
    v37(v11, v14, v8);
    v19 = sub_1BF4E7B34();
    v20 = sub_1BF4E8E64();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v34 = v21;
      v35 = swift_slowAlloc();
      v38 = v35;
      *v21 = 136446210;
      sub_1BF4E10F8(&qword_1EDC9F100, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
      v33 = v20;
      v32 = sub_1BF4E96A4();
      v36 = v9 + 16;
      v23 = v22;
      v24 = *(v9 + 8);
      v24(v11, v8);
      v25 = v24;
      v26 = sub_1BF38D65C(v32, v23, &v38);

      v27 = v34;
      *(v34 + 1) = v26;
      v28 = v27;
      _os_log_impl(&dword_1BF389000, v19, v33, "assetLibraryURL did not return a path contained in a bundle: %{public}s", v27, 0xCu);
      v29 = v35;
      __swift_destroy_boxed_opaque_existential_1Tm(v35);
      MEMORY[0x1BFB5A5D0](v29, -1, -1);
      MEMORY[0x1BFB5A5D0](v28, -1, -1);
    }

    else
    {

      v30 = *(v9 + 8);
      v30(v11, v8);
      v25 = v30;
    }

    type metadata accessor for ControlsCacheManager.CacheManagementError(0);
    sub_1BF4E10F8(&qword_1EBDD9CD0, type metadata accessor for ControlsCacheManager.CacheManagementError, &unk_1BF4F79F0);
    swift_allocError();
    v37(v31, v14, v8);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    v25(a3, v8);
    return (v25)(v14, v8);
  }

  return result;
}

void *sub_1BF4E0068@<X0>(id *a2@<X3>, uint64_t *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8F38, &qword_1BF4F7A30);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v15 - v7;
  result = sub_1BF4E83C4();
  if (!v3)
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8F40, &qword_1BF4EF090);
    sub_1BF4E1608();
    sub_1BF4E7034();
    v11 = *(v10 - 8);
    (*(v11 + 56))(v8, 0, 1, v10);
    sub_1BF4E7614();
    v12 = v15[0];
    (*(v11 + 8))(v8, v10);
    v13 = sub_1BF4E095C(a2);
    sub_1BF38E610(&v16, v15);
    type metadata accessor for ControlEntryContent();
    v14 = swift_allocObject();
    result = sub_1BF38E610(v15, v14 + 16);
    *(v14 + 56) = v12;
    *(v14 + 64) = v13;
    *a3 = v14;
  }

  return result;
}

uint64_t sub_1BF4E02BC(id *a1)
{
  v3 = v1;
  v56 = *MEMORY[0x1E69E9840];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8AF8, &qword_1BF4EC370);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v46 - v6;
  v8 = sub_1BF4E8424();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1BF4E7194();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v46 - v18;
  if (*(v3 + 160) != 1)
  {
    v23 = type metadata accessor for ControlsCacheManager.CacheManagementError(0);
    sub_1BF4E10F8(&qword_1EBDD9CD0, type metadata accessor for ControlsCacheManager.CacheManagementError, &unk_1BF4F79F0);
    swift_allocError();
LABEL_7:
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    return v23;
  }

  v49 = v9;
  v50 = v8;
  v51 = v17;
  v52 = v16;
  v48 = v7;
  sub_1BF38E49C(v3 + 40, &v53);
  v20 = v54;
  v21 = v55;
  __swift_project_boxed_opaque_existential_1(&v53, v54);
  v22 = (v21[5])(a1, v20, v21);
  __swift_destroy_boxed_opaque_existential_1Tm(&v53);
  if ((v22 & 1) == 0)
  {
    v23 = type metadata accessor for ControlsCacheManager.CacheManagementError(0);
    sub_1BF4E10F8(&qword_1EBDD9CD0, type metadata accessor for ControlsCacheManager.CacheManagementError, &unk_1BF4F79F0);
    swift_allocError();
    sub_1BF4700C0(a1, v27);
    goto LABEL_7;
  }

  v23 = v3;
  sub_1BF3F5278(a1, v19);
  if (!v2)
  {
    swift_beginAccess();
    sub_1BF38E49C(v3 + 120, &v53);
    v24 = v55;
    __swift_project_boxed_opaque_existential_1(&v53, v54);
    v25 = [*a1 extensionIdentity];
    v26 = v24[2];
    v47 = v25;
    v26();

    __swift_destroy_boxed_opaque_existential_1Tm(&v53);
    v29 = *(v3 + 16);
    sub_1BF4E7134();
    v30 = sub_1BF4E7094();
    v31 = *(v51 + 8);
    v46 = v51 + 8;
    v47 = v31;
    (v31)(v14, v52);
    *&v53 = 0;
    v32 = [v29 createDirectoryAtURL:v30 withIntermediateDirectories:1 attributes:0 error:&v53];

    v23 = v53;
    if (v32)
    {
      v33 = v53;
      *&v53 = ControlEntryKey.description.getter();
      *(&v53 + 1) = v34;
      MEMORY[0x1BFB58C90](45, 0xE100000000000000);
      sub_1BF4E10F8(&qword_1EDC9F100, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
      v35 = v52;
      v36 = sub_1BF4E96A4();
      MEMORY[0x1BFB58C90](v36);

      v46 = *(&v53 + 1);
      v47 = v53;
      v51 = *(v51 + 32);
      (v51)(v14, v19, v35);
      v38 = v48;
      v37 = v49;
      v39 = v50;
      (*(v49 + 32))(v48, v11, v50);
      (*(v37 + 56))(v38, 0, 1, v39);
      v40 = *(v3 + 16);
      v54 = sub_1BF3C82A8();
      v55 = &off_1F3DF3DC0;
      *&v53 = v40;
      type metadata accessor for DataProtectedArchiveFilePromise(0);
      v23 = swift_allocObject();
      v41 = OBJC_IVAR____TtC9ChronoKit31DataProtectedArchiveFilePromise_intermediates;
      v42 = type metadata accessor for DataProtectedArchiveFilePromise.Intermediates(0);
      (*(*(v42 - 8) + 56))(v23 + v41, 1, 1, v42);
      *(v23 + OBJC_IVAR____TtC9ChronoKit31DataProtectedArchiveFilePromise__needsCleanup) = 0;
      v43 = v46;
      *(v23 + 16) = v47;
      *(v23 + 24) = v43;
      (v51)(v23 + OBJC_IVAR____TtC9ChronoKit31DataProtectedArchiveFilePromise_destination, v14, v35);
      sub_1BF38E610(&v53, v23 + 32);
      sub_1BF3C846C(v38, v23 + OBJC_IVAR____TtC9ChronoKit31DataProtectedArchiveFilePromise_protectionLevel);
      v44 = v40;
    }

    else
    {
      v45 = v53;
      sub_1BF4E6FF4();

      swift_willThrow();
      (*(v49 + 8))(v11, v50);
      (v47)(v19, v52);
    }
  }

  return v23;
}

uint64_t sub_1BF4E095C(id *a1)
{
  v2 = v1;
  v4 = sub_1BF4E8454();
  v34 = *(v4 - 8);
  v35 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v33 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v32 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8AD8, &unk_1BF4ED6C0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v32 - v10;
  v12 = sub_1BF4E7194();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v32 - v17;
  v36 = MEMORY[0x1E69E7CD0];
  sub_1BF3F5278(a1, v11);
  (*(v13 + 56))(v11, 0, 1, v12);
  (*(v13 + 32))(v18, v11, v12);
  v19 = URL.hasRequiresReloadExtendedAttribute.getter();
  (*(v13 + 8))(v18, v12);
  if (v19)
  {
    v20 = *MEMORY[0x1E6985A08];
    v22 = v34;
    v21 = v35;
    v23 = *(v34 + 104);
    v32 = v2;
    v24 = v8;
    v25 = v33;
    v23(v33, v20, v35);
    v26 = v25;
    v8 = v24;
    sub_1BF4AC8C8(v24, v26);
    (*(v22 + 8))(v24, v21);
  }

  sub_1BF3F5278(a1, v15);
  v27 = URL.hasRemovedFromStoreExtendedAttribute.getter();
  (*(v13 + 8))(v15, v12);
  if (v27)
  {
    v29 = v33;
    v28 = v34;
    v30 = v35;
    (*(v34 + 104))(v33, *MEMORY[0x1E6985A10], v35);
    sub_1BF4AC8C8(v8, v29);
    (*(v28 + 8))(v8, v30);
  }

  return v36;
}

uint64_t ControlsCacheManager.__allocating_init(identifier:cacheKeyProvider:cacheURLProvider:protectionLevelProvider:fileManager:forReading:)(uint64_t a1, uint64_t a2, __int128 *a3, void *a4, __int128 *a5, uint64_t a6, uint64_t a7)
{
  v7 = a7;
  v15 = a4[3];
  v14 = a4[4];
  v16 = __swift_mutable_project_boxed_opaque_existential_1(a4, v15);
  v17 = MEMORY[0x1EEE9AC00](v16);
  v19 = v23 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v20 + 16))(v19, v17);
  v21 = sub_1BF4E115C(a1, a2, a3, v19, a5, a6, v7, v23[1], v15, v14);
  __swift_destroy_boxed_opaque_existential_1Tm(a4);
  return v21;
}

uint64_t ControlsCacheManager.init(identifier:cacheKeyProvider:cacheURLProvider:protectionLevelProvider:fileManager:forReading:)(uint64_t a1, uint64_t a2, __int128 *a3, __int128 *a4, __int128 *a5, uint64_t a6, char a7)
{
  *(v7 + 160) = a7 ^ 1;
  *(v7 + 24) = a1;
  *(v7 + 32) = a2;
  sub_1BF38E610(a3, v7 + 40);
  sub_1BF38E610(a4, v7 + 80);
  sub_1BF38E610(a5, v7 + 120);
  *(v7 + 16) = a6;
  return v7;
}

uint64_t sub_1BF4E0EF0(uint64_t a1)
{
  v2 = type metadata accessor for ControlCacheKey(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BF4E0F4C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ControlCacheKey(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t ControlsCacheManager.deinit()
{

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 40));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 80));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 120));
  return v0;
}

uint64_t ControlsCacheManager.__deallocating_deinit()
{

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 40));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 80));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 120));

  return swift_deallocClassInstance();
}

uint64_t sub_1BF4E1048@<X0>(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v5[3] = a1;
  result = sub_1BF3F54FC(a1, sub_1BF4E166C, v5);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1BF4E10F8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1BF4E115C(uint64_t a1, uint64_t a2, __int128 *a3, uint64_t a4, __int128 *a5, uint64_t a6, char a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v21 = a9;
  v22 = a10;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v20);
  (*(*(a9 - 8) + 32))(boxed_opaque_existential_0, a4, a9);
  type metadata accessor for ControlsCacheManager(0);
  v18 = swift_allocObject();
  *(v18 + 160) = a7 ^ 1;
  *(v18 + 24) = a1;
  *(v18 + 32) = a2;
  sub_1BF38E610(a3, v18 + 40);
  sub_1BF38E610(&v20, v18 + 80);
  sub_1BF38E610(a5, v18 + 120);
  *(v18 + 16) = a6;
  return v18;
}

uint64_t sub_1BF4E1244(uint64_t a1)
{
  *(a1 + 8) = sub_1BF4E10F8(&qword_1EDC99CA8, type metadata accessor for ControlsCacheManager, &protocol conformance descriptor for ControlsCacheManager);
  result = sub_1BF4E10F8(qword_1EDC99CB0, type metadata accessor for ControlsCacheManager, &protocol conformance descriptor for BaseCacheManager<A, B, C>);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1BF4E12C8(uint64_t a1)
{
  result = sub_1BF4E10F8(qword_1EDC9F600, type metadata accessor for ControlsCacheManager, &protocol conformance descriptor for BaseCacheManager<A, B, C>);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1BF4E1538(uint64_t a1)
{
  result = sub_1BF4E9034();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for ControlEntryKey(319);
    if (v3 <= 0x3F)
    {
      result = sub_1BF4E7194();
      if (v4 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

unint64_t sub_1BF4E1608()
{
  result = qword_1EDC9FD98;
  if (!qword_1EDC9FD98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBDD8F40, &qword_1BF4EF090);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC9FD98);
  }

  return result;
}

uint64_t FixedDataProtectionProvider.init(_:)(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9ChronoKit27FixedDataProtectionProvider_protectionType;
  v4 = sub_1BF4E8424();
  (*(*(v4 - 8) + 32))(v1 + v3, a1, v4);
  return v1;
}

uint64_t sub_1BF4E176C@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9ChronoKit27FixedDataProtectionProvider_protectionType;
  swift_beginAccess();
  v4 = sub_1BF4E8424();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t FixedDataProtectionProvider.deinit()
{
  v1 = OBJC_IVAR____TtC9ChronoKit27FixedDataProtectionProvider_protectionType;
  v2 = sub_1BF4E8424();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t FixedDataProtectionProvider.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC9ChronoKit27FixedDataProtectionProvider_protectionType;
  v2 = sub_1BF4E8424();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t ClientDataProtectionLevelProvider.init(defaultLevel:extensionProvider:)(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC9ChronoKit33ClientDataProtectionLevelProvider_extensionProvider;
  v5 = *(a2 + 16);
  *v4 = *a2;
  *(v4 + 16) = v5;
  *(v4 + 32) = *(a2 + 32);
  v6 = OBJC_IVAR____TtC9ChronoKit33ClientDataProtectionLevelProvider_defaultLevel;
  v7 = sub_1BF4E8424();
  (*(*(v7 - 8) + 32))(v2 + v6, a1, v7);
  return v2;
}

uint64_t ClientDataProtectionLevelProvider.deinit()
{
  v1 = OBJC_IVAR____TtC9ChronoKit33ClientDataProtectionLevelProvider_defaultLevel;
  v2 = sub_1BF4E8424();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_1BF38C9B4(v0 + OBJC_IVAR____TtC9ChronoKit33ClientDataProtectionLevelProvider_extensionProvider, &qword_1EBDD9CF0, &qword_1BF4F7A38);
  return v0;
}

uint64_t ClientDataProtectionLevelProvider.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC9ChronoKit33ClientDataProtectionLevelProvider_defaultLevel;
  v2 = sub_1BF4E8424();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_1BF38C9B4(v0 + OBJC_IVAR____TtC9ChronoKit33ClientDataProtectionLevelProvider_extensionProvider, &qword_1EBDD9CF0, &qword_1BF4F7A38);

  return swift_deallocClassInstance();
}

uint64_t sub_1BF4E1B50(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v8 = sub_1BF4E8424();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v12, a1, v8, v10);
  v13 = *a2;
  v14 = *a5;
  swift_beginAccess();
  (*(v9 + 40))(v13 + v14, v12, v8);
  return swift_endAccess();
}

uint64_t sub_1BF4E1C80(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  swift_beginAccess();
  v5 = sub_1BF4E8424();
  (*(*(v5 - 8) + 40))(v2 + v4, a1, v5);
  return swift_endAccess();
}

uint64_t ExtensionDataProtectionLevelProvider.__allocating_init(extensionManager:default:)(__int128 *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  sub_1BF38E610(a1, v4 + 16);
  v5 = OBJC_IVAR____TtC9ChronoKit36ExtensionDataProtectionLevelProvider_defaultLevel;
  v6 = sub_1BF4E8424();
  (*(*(v6 - 8) + 32))(v4 + v5, a2, v6);
  return v4;
}

uint64_t ExtensionDataProtectionLevelProvider.init(extensionManager:default:)(__int128 *a1, uint64_t a2)
{
  sub_1BF38E610(a1, v2 + 16);
  v4 = OBJC_IVAR____TtC9ChronoKit36ExtensionDataProtectionLevelProvider_defaultLevel;
  v5 = sub_1BF4E8424();
  (*(*(v5 - 8) + 32))(v2 + v4, a2, v5);
  return v2;
}

uint64_t ExtensionDataProtectionLevelProvider.deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  v1 = OBJC_IVAR____TtC9ChronoKit36ExtensionDataProtectionLevelProvider_defaultLevel;
  v2 = sub_1BF4E8424();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t ExtensionDataProtectionLevelProvider.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  v1 = OBJC_IVAR____TtC9ChronoKit36ExtensionDataProtectionLevelProvider_defaultLevel;
  v2 = sub_1BF4E8424();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_1BF4E21A0(uint64_t a1)
{
  result = sub_1BF4E8424();
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

uint64_t _ReloadStateKey.__allocating_init(extensionBundleIdentifier:kind:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  v7 = OBJC_IVAR____TtC9ChronoKit15_ReloadStateKey_extensionBundleIdentifier;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD91A0, &unk_1BF4EC4E0);
  (*(*(v8 - 8) + 32))(v6 + v7, a1, v8);
  v9 = (v6 + OBJC_IVAR____TtC9ChronoKit15_ReloadStateKey_kind);
  *v9 = a2;
  v9[1] = a3;
  return v6;
}

uint64_t _ReloadState.__allocating_init(key:dateReloadRequested:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  v5 = OBJC_IVAR____TtC9ChronoKit12_ReloadState_dateReloadRequested;
  v6 = sub_1BF4E7334();
  (*(*(v6 - 8) + 56))(v4 + v5, 1, 1, v6);
  *(v4 + 16) = a1;
  v7 = OBJC_IVAR____TtC9ChronoKit12_ReloadState_dateReloadRequested;
  swift_beginAccess();
  sub_1BF3AC398(a2, v4 + v7);
  swift_endAccess();
  return v4;
}

uint64_t _ReloadStateKey.extensionBundleIdentifier.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9ChronoKit15_ReloadStateKey_extensionBundleIdentifier;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD91A0, &unk_1BF4EC4E0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t _ReloadStateKey.kind.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC9ChronoKit15_ReloadStateKey_kind);

  return v1;
}

uint64_t _ReloadStateKey.init(extensionBundleIdentifier:kind:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = OBJC_IVAR____TtC9ChronoKit15_ReloadStateKey_extensionBundleIdentifier;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD91A0, &unk_1BF4EC4E0);
  (*(*(v8 - 8) + 32))(v3 + v7, a1, v8);
  v9 = (v3 + OBJC_IVAR____TtC9ChronoKit15_ReloadStateKey_kind);
  *v9 = a2;
  v9[1] = a3;
  return v3;
}

uint64_t sub_1BF4E2654()
{
  sub_1BF4E92E4();
  MEMORY[0x1BFB58C90](0xD00000000000002CLL, 0x80000001BF4FF720);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD91A0, &unk_1BF4EC4E0);
  sub_1BF38C8B4(&qword_1EDC9D528, &unk_1EBDD91A0, &unk_1BF4EC4E0, MEMORY[0x1E6994160]);
  v1 = sub_1BF4E96A4();
  MEMORY[0x1BFB58C90](v1);

  MEMORY[0x1BFB58C90](0x3D646E696B202CLL, 0xE700000000000000);
  if (*(v0 + OBJC_IVAR____TtC9ChronoKit15_ReloadStateKey_kind + 8))
  {
    v2 = *(v0 + OBJC_IVAR____TtC9ChronoKit15_ReloadStateKey_kind);
    v3 = *(v0 + OBJC_IVAR____TtC9ChronoKit15_ReloadStateKey_kind + 8);
  }

  else
  {
    v3 = 0xE300000000000000;
    v2 = 7105633;
  }

  MEMORY[0x1BFB58C90](v2, v3);

  MEMORY[0x1BFB58C90](62, 0xE100000000000000);
  return 0;
}

uint64_t sub_1BF4E27B4(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD91A0, &unk_1BF4EC4E0);
  sub_1BF38C8B4(&qword_1EDC9D540, &unk_1EBDD91A0, &unk_1BF4EC4E0, MEMORY[0x1E6994140]);
  sub_1BF4E8884();
  if (!*(v1 + OBJC_IVAR____TtC9ChronoKit15_ReloadStateKey_kind + 8))
  {
    return sub_1BF4E9824();
  }

  sub_1BF4E9824();

  return sub_1BF4E89F4();
}

uint64_t _ReloadStateKey.deinit()
{
  v1 = OBJC_IVAR____TtC9ChronoKit15_ReloadStateKey_extensionBundleIdentifier;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD91A0, &unk_1BF4EC4E0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t _ReloadStateKey.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC9ChronoKit15_ReloadStateKey_extensionBundleIdentifier;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD91A0, &unk_1BF4EC4E0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_1BF4E29EC(double a1)
{
  sub_1BF4E9804();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD91A0, &unk_1BF4EC4E0);
  sub_1BF38C8B4(&qword_1EDC9D540, &unk_1EBDD91A0, &unk_1BF4EC4E0, MEMORY[0x1E6994140]);
  sub_1BF4E8884();
  if (*(v1 + OBJC_IVAR____TtC9ChronoKit15_ReloadStateKey_kind + 8))
  {
    sub_1BF4E9824();
    sub_1BF4E89F4();
  }

  else
  {
    sub_1BF4E9824();
  }

  return sub_1BF4E9844();
}

uint64_t sub_1BF4E2AE0(double a1)
{
  v2 = *v1;
  sub_1BF4E9804();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD91A0, &unk_1BF4EC4E0);
  sub_1BF38C8B4(&qword_1EDC9D540, &unk_1EBDD91A0, &unk_1BF4EC4E0, MEMORY[0x1E6994140]);
  sub_1BF4E8884();
  if (*(v2 + OBJC_IVAR____TtC9ChronoKit15_ReloadStateKey_kind + 8))
  {
    sub_1BF4E9824();
    sub_1BF4E89F4();
  }

  else
  {
    sub_1BF4E9824();
  }

  return sub_1BF4E9844();
}

uint64_t sub_1BF4E2BD4(uint64_t a1)
{
  v2 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD91A0, &unk_1BF4EC4E0);
  sub_1BF38C8B4(&qword_1EDC9D540, &unk_1EBDD91A0, &unk_1BF4EC4E0, MEMORY[0x1E6994140]);
  sub_1BF4E8884();
  if (!*(v2 + OBJC_IVAR____TtC9ChronoKit15_ReloadStateKey_kind + 8))
  {
    return sub_1BF4E9824();
  }

  sub_1BF4E9824();

  return sub_1BF4E89F4();
}

uint64_t sub_1BF4E2CCC(uint64_t a1, double a2)
{
  sub_1BF4E9804();
  v3 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD91A0, &unk_1BF4EC4E0);
  sub_1BF38C8B4(&qword_1EDC9D540, &unk_1EBDD91A0, &unk_1BF4EC4E0, MEMORY[0x1E6994140]);
  sub_1BF4E8884();
  if (*(v3 + OBJC_IVAR____TtC9ChronoKit15_ReloadStateKey_kind + 8))
  {
    sub_1BF4E9824();
    sub_1BF4E89F4();
  }

  else
  {
    sub_1BF4E9824();
  }

  return sub_1BF4E9844();
}

uint64_t sub_1BF4E2DF4(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9B00, &qword_1BF4F1E50);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v10 - v5;
  sub_1BF3ABF74(a1, &v10 - v5);
  v7 = *a2;
  v8 = OBJC_IVAR____TtC9ChronoKit12_ReloadState_dateReloadRequested;
  swift_beginAccess();
  sub_1BF3AC398(v6, v7 + v8);
  return swift_endAccess();
}

uint64_t sub_1BF4E2EB4@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9ChronoKit12_ReloadState_dateReloadRequested;
  swift_beginAccess();
  return sub_1BF3ABF74(v1 + v3, a1);
}

uint64_t sub_1BF4E2F0C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9ChronoKit12_ReloadState_dateReloadRequested;
  swift_beginAccess();
  sub_1BF3AC398(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t _ReloadState.init(key:dateReloadRequested:)(uint64_t a1, uint64_t a2)
{
  v5 = OBJC_IVAR____TtC9ChronoKit12_ReloadState_dateReloadRequested;
  v6 = sub_1BF4E7334();
  (*(*(v6 - 8) + 56))(v2 + v5, 1, 1, v6);
  *(v2 + 16) = a1;
  v7 = OBJC_IVAR____TtC9ChronoKit12_ReloadState_dateReloadRequested;
  swift_beginAccess();
  sub_1BF3AC398(a2, v2 + v7);
  swift_endAccess();
  return v2;
}

uint64_t _ReloadState.deinit()
{

  sub_1BF38C9B4(v0 + OBJC_IVAR____TtC9ChronoKit12_ReloadState_dateReloadRequested, &qword_1EBDD9B00, &qword_1BF4F1E50);
  return v0;
}

uint64_t _ReloadState.__deallocating_deinit()
{

  sub_1BF38C9B4(v0 + OBJC_IVAR____TtC9ChronoKit12_ReloadState_dateReloadRequested, &qword_1EBDD9B00, &qword_1BF4F1E50);

  return swift_deallocClassInstance();
}

uint64_t sub_1BF4E3150(uint64_t a1)
{
  v2 = v1;
  v36[0] = 0;
  v36[1] = 0xE000000000000000;
  v4 = sub_1BF3D871C(MEMORY[0x1E69E7CC0]);
  MEMORY[0x1BFB58C40](49);
  v39 = 0;
  v40 = 0xE000000000000000;
  v41 = v4;
  MEMORY[0x1BFB58C90](0xD000000000000016, 0x80000001BF4FF750);
  v5 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v5);

  MEMORY[0x1BFB58C90](0x200A45524548570ALL, 0xEB00000000202020);
  v6 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v6);

  MEMORY[0x1BFB58C90](2112800, 0xE300000000000000);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD91A0, &unk_1BF4EC4E0);
  sub_1BF38C8B4(&qword_1EDC9D530, &unk_1EBDD91A0, &unk_1BF4EC4E0, MEMORY[0x1E6994150]);
  sub_1BF4E8B54();

  v8 = sub_1BF3D8148(0, 0xE000000000000000, v7);
  v10 = v9;
  v12 = v11;
  *&v33 = 0x676E69646E696240;
  *(&v33 + 1) = 0xE800000000000000;
  v42 = *(v4 + 16) + 1;
  v13 = sub_1BF4E96A4();
  MEMORY[0x1BFB58C90](v13);

  v14 = v33;
  MEMORY[0x1BFB58C90](0x676E69646E696240, 0xE800000000000000);
  sub_1BF3D8840(v8, v10, v12);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v33 = v4;
  sub_1BF3D6680(v8, v10, v12, v14, *(&v14 + 1), isUniquelyReferenced_nonNull_native, v16);

  sub_1BF3D88B8(v8, v10, v12);

  MEMORY[0x1BFB58C90](0x2020200A444E4120, 0xE900000000000020);
  v17 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v17);

  MEMORY[0x1BFB58C90](2112800, 0xE300000000000000);
  v18 = *(a1 + OBJC_IVAR____TtC9ChronoKit15_ReloadStateKey_kind + 8);
  if (v18)
  {
    v19 = *(a1 + OBJC_IVAR____TtC9ChronoKit15_ReloadStateKey_kind);
    *(&v34 + 1) = MEMORY[0x1E69E6158];
    v35 = &off_1F3DF00A0;
    *&v33 = v19;
    *(&v33 + 1) = v18;
    sub_1BF38E610(&v33, v36);
  }

  else
  {
    v35 = 0;
    v33 = 0u;
    v34 = 0u;
    v20 = [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
    v37 = sub_1BF4E4B78();
    v38 = &off_1F3DF0088;
    v36[0] = v20;
  }

  v21 = v37;
  v22 = v38;
  v23 = __swift_project_boxed_opaque_existential_1(v36, v37);

  sub_1BF478C08(v23, &v39, v21, v22);
  __swift_destroy_boxed_opaque_existential_1Tm(v36);
  MEMORY[0x1BFB58C90](59, 0xE100000000000000);
  v25 = v39;
  v24 = v40;
  v26 = v41;
  if (!swift_weakLoadStrong())
  {
    goto LABEL_18;
  }

  v27 = sub_1BF3E4F48(v26, v25, v24);
  if (v32)
  {

    return v2;
  }

  v28 = v27;

  sub_1BF4E4EF4(v28);
  v30 = v29;

  if (v30 >> 62)
  {
    if (sub_1BF4E9204())
    {
      goto LABEL_9;
    }

LABEL_14:

    return 0;
  }

  if (!*((v30 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_14;
  }

LABEL_9:
  if ((v30 & 0xC000000000000001) != 0)
  {
    v2 = MEMORY[0x1BFB59570](0, v30);
    goto LABEL_12;
  }

  if (*((v30 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v2 = *(v30 + 32);

LABEL_12:

    return v2;
  }

  __break(1u);
LABEL_18:
  result = sub_1BF4E9464();
  __break(1u);
  return result;
}

uint64_t sub_1BF4E3648()
{
  v1 = sub_1BF3D871C(MEMORY[0x1E69E7CC0]);
  MEMORY[0x1BFB58C40](33);
  MEMORY[0x1BFB58C90](0x200A5443454C4553, 0xEB00000000202020);
  v2 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v2);

  MEMORY[0x1BFB58C90](0x202020200A2CLL, 0xE600000000000000);
  v3 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v3);

  MEMORY[0x1BFB58C90](0x202020200A2CLL, 0xE600000000000000);
  v4 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v4);

  MEMORY[0x1BFB58C90](0x20200A4D4F52460ALL, 0xEA00000000002020);
  v5 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v5);

  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = sub_1BF3E4F48(v1, 0, 0xE000000000000000);
    if (v0)
    {

      return v7;
    }

    v9 = v8;

    sub_1BF4E4EF4(v9);
    v11 = v10;

    v7 = sub_1BF3DB09C(MEMORY[0x1E69E7CC0]);
    if (v11 >> 62)
    {
      goto LABEL_36;
    }

    v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v12)
    {
LABEL_37:

      return v7;
    }

LABEL_6:
    v13 = 0;
    while (1)
    {
      if ((v11 & 0xC000000000000001) != 0)
      {
        v14 = MEMORY[0x1BFB59570](v13, v11);
        v15 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          goto LABEL_31;
        }
      }

      else
      {
        if (v13 >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_32;
        }

        v14 = *(v11 + 8 * v13 + 32);

        v15 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
LABEL_31:
          __break(1u);
LABEL_32:
          __break(1u);
LABEL_33:
          __break(1u);
LABEL_34:
          __break(1u);
LABEL_35:
          __break(1u);
LABEL_36:
          v12 = sub_1BF4E9204();
          if (!v12)
          {
            goto LABEL_37;
          }

          goto LABEL_6;
        }
      }

      v16 = *(v14 + 16);
      if ((v7 & 0xC000000000000001) != 0)
      {
        if (v7 >= 0)
        {
          v7 &= 0xFFFFFFFFFFFFFF8uLL;
        }

        v17 = sub_1BF4E9204();
        if (__OFADD__(v17, 1))
        {
          goto LABEL_34;
        }

        v7 = sub_1BF4E4368(v7, v17 + 1);
      }

      else
      {
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v20 = sub_1BF3ECA90(v16, v19);
      v22 = *(v7 + 16);
      v23 = (v21 & 1) == 0;
      v24 = __OFADD__(v22, v23);
      v25 = v22 + v23;
      if (v24)
      {
        goto LABEL_33;
      }

      v26 = v21;
      if (*(v7 + 24) < v25)
      {
        break;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_23;
      }

      v31 = v20;
      sub_1BF4A4898();
      v20 = v31;
      if (v26)
      {
LABEL_7:
        *(*(v7 + 56) + 8 * v20) = v14;

        goto LABEL_8;
      }

LABEL_24:
      *(v7 + 8 * (v20 >> 6) + 64) |= 1 << v20;
      *(*(v7 + 48) + 8 * v20) = v16;
      *(*(v7 + 56) + 8 * v20) = v14;

      v29 = *(v7 + 16);
      v24 = __OFADD__(v29, 1);
      v30 = v29 + 1;
      if (v24)
      {
        goto LABEL_35;
      }

      *(v7 + 16) = v30;
LABEL_8:
      ++v13;
      if (v15 == v12)
      {
        goto LABEL_37;
      }
    }

    sub_1BF4A1318(v25, isUniquelyReferenced_nonNull_native);
    v20 = sub_1BF3ECA90(v16, v27);
    if ((v26 & 1) != (v28 & 1))
    {
      type metadata accessor for _ReloadStateKey(0);
      sub_1BF4E9794();
      __break(1u);
      goto LABEL_39;
    }

LABEL_23:
    if (v26)
    {
      goto LABEL_7;
    }

    goto LABEL_24;
  }

LABEL_39:
  result = sub_1BF4E9464();
  __break(1u);
  return result;
}

uint64_t ChronoMetadataStore.ReloadStateStore.__deallocating_deinit()
{
  swift_weakDestroy();

  return swift_deallocClassInstance();
}

void sub_1BF4E3B30(uint64_t a1, uint64_t a2)
{
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    goto LABEL_11;
  }

  v5 = *(Strong + 24);
  v6 = Strong;
  os_unfair_lock_lock(*(v5 + 16));
  v7 = *(v6 + 64);
  os_unfair_lock_unlock(*(v5 + 16));

  if (!v7)
  {
    __break(1u);
LABEL_11:
    sub_1BF4E9464();
    __break(1u);
    return;
  }

  v45 = v2;
  v49 = 0;
  v50 = 0xE000000000000000;
  v8 = sub_1BF3D871C(MEMORY[0x1E69E7CC0]);
  MEMORY[0x1BFB58C40](63);
  v53 = 0;
  v54 = 0xE000000000000000;
  v55 = v8;
  MEMORY[0x1BFB58C90](0x204543414C504552, 0xED0000204F544E49);
  v9 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v9);

  MEMORY[0x1BFB58C90](0x202020200A2820, 0xE700000000000000);
  v10 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v10);

  MEMORY[0x1BFB58C90](0x202020200A2CLL, 0xE600000000000000);
  v11 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v11);

  MEMORY[0x1BFB58C90](0x202020200A2CLL, 0xE600000000000000);
  v12 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v12);

  MEMORY[0x1BFB58C90](0xD000000000000010, 0x80000001BF4FA310);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD91A0, &unk_1BF4EC4E0);
  sub_1BF38C8B4(&qword_1EDC9D530, &unk_1EBDD91A0, &unk_1BF4EC4E0, MEMORY[0x1E6994150]);
  sub_1BF4E8B54();

  v14 = sub_1BF3D8148(0, 0xE000000000000000, v13);
  v16 = v15;
  v18 = v17;
  *&v46 = 0x676E69646E696240;
  *(&v46 + 1) = 0xE800000000000000;
  v56 = *(v8 + 16) + 1;
  v19 = sub_1BF4E96A4();
  MEMORY[0x1BFB58C90](v19);

  v20 = v46;
  MEMORY[0x1BFB58C90](0x676E69646E696240, 0xE800000000000000);
  sub_1BF3D8840(v14, v16, v18);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v46 = v8;
  sub_1BF3D6680(v14, v16, v18, v20, *(&v20 + 1), isUniquelyReferenced_nonNull_native, v22);

  sub_1BF3D88B8(v14, v16, v18);

  MEMORY[0x1BFB58C90](0x202020200A2CLL, 0xE600000000000000);
  v23 = *(a2 + OBJC_IVAR____TtC9ChronoKit15_ReloadStateKey_kind + 8);
  if (v23)
  {
    v24 = *(a2 + OBJC_IVAR____TtC9ChronoKit15_ReloadStateKey_kind);
    *(&v47 + 1) = MEMORY[0x1E69E6158];
    v48 = &off_1F3DF00A0;
    *&v46 = v24;
    *(&v46 + 1) = v23;
    sub_1BF38E610(&v46, &v49);
  }

  else
  {
    v48 = 0;
    v46 = 0u;
    v47 = 0u;
    v25 = [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
    v51 = sub_1BF4E4B78();
    v52 = &off_1F3DF0088;
    v49 = v25;
  }

  v26 = v51;
  v27 = v52;
  v28 = __swift_project_boxed_opaque_existential_1(&v49, v51);

  sub_1BF478C08(v28, &v53, v26, v27);
  __swift_destroy_boxed_opaque_existential_1Tm(&v49);
  MEMORY[0x1BFB58C90](0x202020200A2CLL, 0xE600000000000000);
  sub_1BF4E71F4();
  v30 = sub_1BF3D833C(v29);
  v32 = v31;
  v34 = v33;
  v49 = 0x676E69646E696240;
  v50 = 0xE800000000000000;
  *&v46 = *(v55 + 16) + 1;
  v35 = sub_1BF4E96A4();
  MEMORY[0x1BFB58C90](v35);

  v36 = v49;
  v37 = v50;
  MEMORY[0x1BFB58C90](v49, v50);
  sub_1BF3D8840(v30, v32, v34);
  v38 = v55;
  v39 = swift_isUniquelyReferenced_nonNull_native();
  v49 = v38;
  sub_1BF3D6680(v30, v32, v34, v36, v37, v39, v40);

  v41 = sub_1BF3D88B8(v30, v32, v34);
  v42 = v49;
  v55 = v49;
  MEMORY[0x1BFB58C90](3877130, 0xE300000000000000, v41);
  v44 = v53;
  v43 = v54;
  if (!swift_weakLoadStrong())
  {
    goto LABEL_11;
  }

  sub_1BF3E4F48(v42, v44, v43);

  if (!v45)
  {
  }
}

uint64_t sub_1BF4E40F8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9A20, &unk_1BF4F7D20);
    v2 = sub_1BF4E94B4();
    v19 = v2;
    sub_1BF4E9414();
    v3 = sub_1BF4E9444();
    if (v3)
    {
      v4 = v3;
      sub_1BF4E79A4();
      v5 = v4;
      do
      {
        v17 = v5;
        swift_dynamicCast();
        sub_1BF4E7904();
        swift_dynamicCast();
        v12 = *(v2 + 16);
        if (*(v2 + 24) <= v12)
        {
          sub_1BF4A1034(v12 + 1, 1);
        }

        v2 = v19;
        sub_1BF4E5A38(&qword_1EBDD8B08, MEMORY[0x1E69C7338], MEMORY[0x1E69C7340]);
        result = sub_1BF4E8874();
        v7 = v19 + 64;
        v8 = -1 << *(v19 + 32);
        v9 = result & ~v8;
        v10 = v9 >> 6;
        if (((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6))) != 0)
        {
          v11 = __clz(__rbit64((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6)))) | v9 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v13 = 0;
          v14 = (63 - v8) >> 6;
          do
          {
            if (++v10 == v14 && (v13 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v15 = v10 == v14;
            if (v10 == v14)
            {
              v10 = 0;
            }

            v13 |= v15;
            v16 = *(v7 + 8 * v10);
          }

          while (v16 == -1);
          v11 = __clz(__rbit64(~v16)) + (v10 << 6);
        }

        *(v7 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
        *(*(v19 + 48) + 8 * v11) = v18;
        *(*(v19 + 56) + 8 * v11) = v17;
        ++*(v19 + 16);
        v5 = sub_1BF4E9444();
      }

      while (v5);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CC8];
  }

  return v2;
}

uint64_t sub_1BF4E4368(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8740, &qword_1BF4EB260);
    v2 = sub_1BF4E94B4();
    v16 = v2;
    sub_1BF4E9414();
    if (sub_1BF4E9444())
    {
      type metadata accessor for _ReloadStateKey(0);
      do
      {
        swift_dynamicCast();
        type metadata accessor for _ReloadState(0);
        swift_dynamicCast();
        v4 = *(v2 + 16);
        if (*(v2 + 24) <= v4)
        {
          sub_1BF4A1318(v4 + 1, 1);
        }

        v2 = v16;
        sub_1BF4E9804();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD91A0, &unk_1BF4EC4E0);
        sub_1BF38C8B4(&qword_1EDC9D540, &unk_1EBDD91A0, &unk_1BF4EC4E0, MEMORY[0x1E6994140]);
        sub_1BF4E8884();
        if (*(v15 + OBJC_IVAR____TtC9ChronoKit15_ReloadStateKey_kind + 8))
        {
          sub_1BF4E9824();
          sub_1BF4E89F4();
        }

        else
        {
          sub_1BF4E9824();
        }

        result = sub_1BF4E9844();
        v6 = v16 + 64;
        v7 = -1 << *(v16 + 32);
        v8 = result & ~v7;
        v9 = v8 >> 6;
        if (((-1 << v8) & ~*(v16 + 64 + 8 * (v8 >> 6))) != 0)
        {
          v3 = __clz(__rbit64((-1 << v8) & ~*(v16 + 64 + 8 * (v8 >> 6)))) | v8 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v10 = 0;
          v11 = (63 - v7) >> 6;
          do
          {
            if (++v9 == v11 && (v10 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v12 = v9 == v11;
            if (v9 == v11)
            {
              v9 = 0;
            }

            v10 |= v12;
            v13 = *(v6 + 8 * v9);
          }

          while (v13 == -1);
          v3 = __clz(__rbit64(~v13)) + (v9 << 6);
        }

        *(v6 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v3;
        *(*(v16 + 48) + 8 * v3) = v15;
        *(*(v16 + 56) + 8 * v3) = v14;
        ++*(v16 + 16);
      }

      while (sub_1BF4E9444());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CC8];
  }

  return v2;
}

uint64_t _s9ChronoKit15_ReloadStateKeyC2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD91A0, &unk_1BF4EC4E0);
  sub_1BF38C8B4(&qword_1EDC9D530, &unk_1EBDD91A0, &unk_1BF4EC4E0, MEMORY[0x1E6994150]);
  sub_1BF4E8B54();
  sub_1BF4E8B54();
  if (v12 == v11)
  {
  }

  else
  {
    v4 = sub_1BF4E9734();

    v5 = 0;
    if ((v4 & 1) == 0)
    {
      return v5 & 1;
    }
  }

  v6 = *(a1 + OBJC_IVAR____TtC9ChronoKit15_ReloadStateKey_kind + 8);
  v7 = *(a2 + OBJC_IVAR____TtC9ChronoKit15_ReloadStateKey_kind + 8);
  v5 = (v6 | v7) == 0;
  if (v6)
  {
    v8 = v7 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (!v8)
  {
    if (*(a1 + OBJC_IVAR____TtC9ChronoKit15_ReloadStateKey_kind) == *(a2 + OBJC_IVAR____TtC9ChronoKit15_ReloadStateKey_kind) && v6 == v7)
    {
      v5 = 1;
    }

    else
    {
      v5 = sub_1BF4E9734();
    }
  }

  return v5 & 1;
}

uint64_t _s9ChronoKit12_ReloadStateC2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BF4E7334();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD97C8, &qword_1BF4F5FA0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v29 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9B00, &qword_1BF4F1E50);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v29 - v15;
  if ((_s9ChronoKit15_ReloadStateKeyC2eeoiySbAC_ACtFZ_0(*(a1 + 16), *(a2 + 16)) & 1) == 0)
  {
    v24 = 0;
    return v24 & 1;
  }

  v30 = v7;
  v17 = v5;
  v18 = OBJC_IVAR____TtC9ChronoKit12_ReloadState_dateReloadRequested;
  swift_beginAccess();
  sub_1BF3ABF74(a1 + v18, v16);
  v19 = OBJC_IVAR____TtC9ChronoKit12_ReloadState_dateReloadRequested;
  swift_beginAccess();
  v20 = *(v8 + 48);
  sub_1BF3ABF74(v16, v10);
  v21 = a2 + v19;
  v22 = v17;
  sub_1BF3ABF74(v21, &v10[v20]);
  v23 = *(v17 + 48);
  if (v23(v10, 1, v4) != 1)
  {
    sub_1BF3ABF74(v10, v13);
    if (v23(&v10[v20], 1, v4) != 1)
    {
      v25 = *(v17 + 32);
      v26 = v30;
      v25(v30, &v10[v20], v4);
      sub_1BF4E5A38(&qword_1EDC9F0C0, MEMORY[0x1E6969530], MEMORY[0x1E6969550]);
      v24 = sub_1BF4E88C4();
      v27 = *(v22 + 8);
      v27(v26, v4);
      sub_1BF38C9B4(v16, &qword_1EBDD9B00, &qword_1BF4F1E50);
      v27(v13, v4);
      sub_1BF38C9B4(v10, &qword_1EBDD9B00, &qword_1BF4F1E50);
      return v24 & 1;
    }

    sub_1BF38C9B4(v16, &qword_1EBDD9B00, &qword_1BF4F1E50);
    (*(v17 + 8))(v13, v4);
    goto LABEL_8;
  }

  sub_1BF38C9B4(v16, &qword_1EBDD9B00, &qword_1BF4F1E50);
  if (v23(&v10[v20], 1, v4) != 1)
  {
LABEL_8:
    sub_1BF38C9B4(v10, &qword_1EBDD97C8, &qword_1BF4F5FA0);
    v24 = 0;
    return v24 & 1;
  }

  sub_1BF38C9B4(v10, &qword_1EBDD9B00, &qword_1BF4F1E50);
  v24 = 1;
  return v24 & 1;
}

unint64_t sub_1BF4E4B78()
{
  result = qword_1EDC962F8;
  if (!qword_1EDC962F8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDC962F8);
  }

  return result;
}

uint64_t sub_1BF4E4BC4()
{
  v1 = sub_1BF3D871C(MEMORY[0x1E69E7CC0]);
  MEMORY[0x1BFB58C40](159);
  MEMORY[0x1BFB58C90](0x5420455441455243, 0xED000020454C4241);
  v2 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v2);

  MEMORY[0x1BFB58C90](0x202020200A2820, 0xE700000000000000);
  v3 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v3);

  MEMORY[0x1BFB58C90](0xD000000000000014, 0x80000001BF4FA3B0);
  v4 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v4);

  MEMORY[0x1BFB58C90](0xD000000000000014, 0x80000001BF4FF890);
  v5 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v5);

  MEMORY[0x1BFB58C90](0xD000000000000023, 0x80000001BF4FF8B0);
  v6 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v6);

  MEMORY[0x1BFB58C90](8236, 0xE200000000000000);
  v7 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v7);

  MEMORY[0x1BFB58C90](0xD000000000000012, 0x80000001BF4FDC40);
  v8 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v8);

  MEMORY[0x1BFB58C90](0xD000000000000015, 0x80000001BF4FDC60);
  v9 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v9);

  MEMORY[0x1BFB58C90](40, 0xE100000000000000);
  v10 = sub_1BF4E92F4();
  MEMORY[0x1BFB58C90](v10);

  MEMORY[0x1BFB58C90](0xD000000000000016, 0x80000001BF4FDC80);
  sub_1BF3E4F48(v1, 0, 0xE000000000000000);

  if (!v0)
  {
  }

  return result;
}

void sub_1BF4E4EF4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9B00, &qword_1BF4F1E50);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v75 = &v65 - v3;
  v74 = sub_1BF4E7334();
  v4 = *(v74 - 8);
  MEMORY[0x1EEE9AC00](v74);
  v73 = &v65 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD92E0, &unk_1BF4F08D0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v65 - v7;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD91A0, &unk_1BF4EC4E0);
  MEMORY[0x1EEE9AC00](v78);
  v72 = &v65 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v71 = &v65 - v12;
  v86 = MEMORY[0x1E69E7CC0];
  v13 = *(a1 + 16);
  if (!v13)
  {
    v79 = MEMORY[0x1E69E7CC0];
    return;
  }

  v14 = 0;
  v81 = a1 + 32;
  v76 = (v11 + 48);
  v69 = (v11 + 16);
  v70 = (v11 + 32);
  v68 = (v11 + 8);
  v67 = (v4 + 32);
  v66 = (v4 + 56);
  v79 = MEMORY[0x1E69E7CC0];
  v77 = v8;
  v82 = v13;
  do
  {
    if (v14 >= v13)
    {
      __break(1u);
LABEL_31:
      __break(1u);
      return;
    }

    v15 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      goto LABEL_31;
    }

    v16 = *(v81 + 8 * v14);
    v83 = v14 + 1;

    v17 = sub_1BF4E92F4();
    v19 = v18;
    v20 = (v16 + 64);
    v21 = *(v16 + 16) + 1;
    do
    {
      if (!--v21)
      {

LABEL_21:

        v13 = v82;
        goto LABEL_22;
      }

      v22 = *(v20 - 2);
      v23 = *(v20 - 1);
      v24 = *v20;
      if (*(v20 - 4) == v17 && *(v20 - 3) == v19)
      {
        break;
      }

      v20 += 40;
    }

    while ((sub_1BF4E9734() & 1) == 0);

    sub_1BF3D8840(v22, v23, v24);

    v26 = sub_1BF4244EC(v22, v23, v24);
    v28 = v27;
    sub_1BF3D88B8(v22, v23, v24);
    if (!v28)
    {
      goto LABEL_21;
    }

    v29 = sub_1BF4E92F4();
    v31 = sub_1BF48063C(v29, v30, v16);
    v33 = v32;
    v35 = v34;
    v36 = ~v34;

    if (!v36 || (v37 = sub_1BF4244EC(v31, v33, v35), v39 = v38, sub_1BF3DB1FC(v31, v33, v35), !v39))
    {
LABEL_18:

      goto LABEL_21;
    }

    v80 = v37;
    v40 = sub_1BF4E92F4();
    v42 = sub_1BF48063C(v40, v41, v16);
    v44 = v43;
    v46 = v45;
    v47 = ~v45;

    if (!v47 || (sub_1BF424634(v42, v44, v46), v49 = v48, sub_1BF3DB1FC(v42, v44, v46), (v49 & 1) != 0))
    {

      goto LABEL_18;
    }

    v84 = v26;
    v85 = v28;
    sub_1BF38C8B4(&qword_1EDC9D530, &unk_1EBDD91A0, &unk_1BF4EC4E0, MEMORY[0x1E6994150]);
    v51 = v77;
    v50 = v78;
    sub_1BF4E8B64();
    v52 = (*v76)(v51, 1, v50);
    v13 = v82;
    if (v52 == 1)
    {

      sub_1BF38C9B4(v51, &unk_1EBDD92E0, &unk_1BF4F08D0);
    }

    else
    {
      v65 = *v70;
      v53 = v71;
      v54 = v78;
      v65(v71, v51, v78);
      v55 = v72;
      (*v69)(v72, v53, v54);
      type metadata accessor for _ReloadStateKey(0);
      v56 = swift_allocObject();
      v79 = v56;
      v65((v56 + OBJC_IVAR____TtC9ChronoKit15_ReloadStateKey_extensionBundleIdentifier), v55, v54);
      v57 = (v56 + OBJC_IVAR____TtC9ChronoKit15_ReloadStateKey_kind);
      *v57 = v80;
      v57[1] = v39;
      v58 = v73;
      sub_1BF4E71E4();

      (*v68)(v53, v54);
      v60 = v74;
      v59 = v75;
      (*v67)(v75, v58, v74);
      v61 = *v66;
      (*v66)(v59, 0, 1, v60);
      type metadata accessor for _ReloadState(0);
      v62 = swift_allocObject();
      v61(v62 + OBJC_IVAR____TtC9ChronoKit12_ReloadState_dateReloadRequested, 1, 1, v60);
      *(v62 + 16) = v79;
      v63 = OBJC_IVAR____TtC9ChronoKit12_ReloadState_dateReloadRequested;
      swift_beginAccess();
      sub_1BF3AC398(v59, v62 + v63);
      v64 = swift_endAccess();
      MEMORY[0x1BFB58DD0](v64);
      if (*((v86 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v86 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1BF4E8BE4();
      }

      sub_1BF4E8C24();
      v79 = v86;
    }

LABEL_22:
    v14 = v83;
  }

  while (v15 != v13);
}

void sub_1BF4E5688(uint64_t a1)
{
  sub_1BF464F94(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1BF4E57E0(uint64_t a1)
{
  sub_1BF3C363C(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1BF4E5A38(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void DuetWidgetViewIdentity.init(configuration:)(void *a1@<X0>, uint64_t *a2@<X8>)
{
  a2[2] = a1;
  v3 = a1;
  v4 = sub_1BF3B253C(v3);
  v6 = v5;
  *a2 = v4;
  a2[1] = v5;

  v7 = [v3 uniqueIdentifier];
  sub_1BF4E8914();

  sub_1BF399080();
  v8 = sub_1BF4E9134();
  v10 = v9;

  MEMORY[0x1BFB58C90](14906, 0xE200000000000000);
  MEMORY[0x1BFB58C90](v4, v6);

  a2[3] = v8;
  a2[4] = v10;
}

uint64_t static DuetWidgetViewIdentity.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24) == *(a2 + 24) && *(a1 + 32) == *(a2 + 32))
  {
    return 1;
  }

  else
  {
    return sub_1BF4E9734();
  }
}

double DuetWidgetViewIdentity.budgetIdentity.getter@<D0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;

  return result;
}

uint64_t DuetWidgetViewIdentity.identifier.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t static DuetWidgetViewIdentity.identifierString(from:uniqueViewID:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  v4 = a1[1];
  sub_1BF399080();
  v6 = sub_1BF4E9134();
  MEMORY[0x1BFB58C90](14906, 0xE200000000000000);
  MEMORY[0x1BFB58C90](v3, v4);
  return v6;
}

uint64_t DuetWidgetViewIdentity.hashValue.getter(double a1)
{
  sub_1BF4E9804();
  sub_1BF4E89F4();
  return sub_1BF4E9844();
}

uint64_t sub_1BF4E5D30(double a1)
{
  sub_1BF4E9804();
  sub_1BF4E89F4();
  return sub_1BF4E9844();
}

uint64_t sub_1BF4E5D84(uint64_t a1, double a2)
{
  sub_1BF4E9804();
  sub_1BF4E89F4();
  return sub_1BF4E9844();
}

uint64_t sub_1BF4E5DCC(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24) == *(a2 + 24) && *(a1 + 32) == *(a2 + 32))
  {
    return 1;
  }

  else
  {
    return sub_1BF4E9734();
  }
}

unint64_t sub_1BF4E5E00()
{
  result = qword_1EBDD9CF8;
  if (!qword_1EBDD9CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDD9CF8);
  }

  return result;
}

uint64_t PushToken.init(subscriptionIdentifier:environmentName:topic:token:expirationDate:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v15 = *a5;
  v16 = a5[1];
  v17 = *(a5 + 16);
  v18 = *(type metadata accessor for PushToken(0) + 32);
  v19 = sub_1BF4E7334();
  (*(*(v19 - 8) + 56))(a9 + v18, 1, 1, v19);
  *(a9 + 16) = a1;
  *(a9 + 24) = a2;
  *(a9 + 32) = a3;
  *(a9 + 40) = a4;
  *(a9 + 48) = v15;
  *(a9 + 56) = v16;
  *(a9 + 64) = v17;
  *a9 = a6;
  *(a9 + 8) = a7;

  return sub_1BF3AC398(a8, a9 + v18);
}

uint64_t type metadata accessor for PushToken(uint64_t a1)
{
  result = qword_1EDC96538;
  if (!qword_1EDC96538)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t PushToken.token.getter()
{
  v1 = *v0;
  sub_1BF3D8864(*v0, *(v0 + 8));
  return v1;
}

void PushToken.token.setter(uint64_t a1, uint64_t a2)
{
  sub_1BF3B03C0(*v2, *(v2 + 8));
  *v2 = a1;
  *(v2 + 8) = a2;
}

uint64_t PushToken.subscriptionIdentifier.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t PushToken.subscriptionIdentifier.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t PushToken.environmentName.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t PushToken.environmentName.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

double PushToken.topic.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 56);
  v3 = *(v1 + 64);
  *a1 = *(v1 + 48);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;

  return result;
}

uint64_t PushToken.topic.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);

  *(v1 + 48) = v2;
  *(v1 + 56) = v3;
  *(v1 + 64) = v4;
  return result;
}

uint64_t PushToken.expirationDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for PushToken(0) + 32);

  return sub_1BF3ABF74(v3, a1);
}

uint64_t PushToken.expirationDate.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for PushToken(0) + 32);

  return sub_1BF3AC398(a1, v3);
}

uint64_t PushToken.description.getter()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9B00, &qword_1BF4F1E50);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v14 - v3;
  v17 = sub_1BF407D50(*v0, *(v0 + 8));
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD9BB0, &qword_1BF4EC140);
  sub_1BF3E4AF0();
  v5 = sub_1BF4E8894();
  v7 = v6;

  v17 = 0;
  v18 = 0xE000000000000000;
  sub_1BF4E92E4();
  v8 = 0xD000000000000012;
  MEMORY[0x1BFB58C90](0xD000000000000018, 0x80000001BF4FF8E0);
  MEMORY[0x1BFB58C90](v1[2], v1[3]);
  MEMORY[0x1BFB58C90](0xD000000000000013, 0x80000001BF4FF900);
  MEMORY[0x1BFB58C90](v1[4], v1[5]);
  MEMORY[0x1BFB58C90](0x3A6369706F74203BLL, 0xE900000000000020);
  v9 = *(v0 + 56);
  if (*(v0 + 64))
  {
    v10 = "extensionIdentity: ";
  }

  else
  {
    v8 = 0xD000000000000013;
    v10 = "; subscriptionType: ";
  }

  v15 = *(v0 + 48);
  v16 = v9;

  MEMORY[0x1BFB58C90](v8, v10 | 0x8000000000000000);

  MEMORY[0x1BFB58C90](v15, v16);

  MEMORY[0x1BFB58C90](0x3A6E656B6F74203BLL, 0xE900000000000020);
  MEMORY[0x1BFB58C90](v5, v7);

  MEMORY[0x1BFB58C90](0xD000000000000012, 0x80000001BF4FF920);
  v11 = type metadata accessor for PushToken(0);
  sub_1BF3ABF74(v0 + *(v11 + 32), v4);
  v12 = sub_1BF4E8994();
  MEMORY[0x1BFB58C90](v12);

  return v17;
}

BOOL _s9ChronoKit9PushTokenV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BF4E7334();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9B00, &qword_1BF4F1E50);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v23 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD97C8, &qword_1BF4F5FA0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v23 - v12;
  if (!sub_1BF408374(*a1, *(a1 + 8), *a2, *(a2 + 8)) || (*(a1 + 16) != *(a2 + 16) || *(a1 + 24) != *(a2 + 24)) && (sub_1BF4E9734() & 1) == 0 || (*(a1 + 32) != *(a2 + 32) || *(a1 + 40) != *(a2 + 40)) && (sub_1BF4E9734() & 1) == 0)
  {
    return 0;
  }

  v14 = *(a1 + 64);
  v15 = *(a2 + 64);
  if (*(a1 + 48) == *(a2 + 48) && *(a1 + 56) == *(a2 + 56))
  {
    if (v14 != v15)
    {
      return 0;
    }

LABEL_14:
    v18 = *(type metadata accessor for PushToken(0) + 32);
    v19 = *(v11 + 48);
    sub_1BF3ABF74(a1 + v18, v13);
    sub_1BF3ABF74(a2 + v18, &v13[v19]);
    v20 = *(v5 + 48);
    if (v20(v13, 1, v4) == 1)
    {
      if (v20(&v13[v19], 1, v4) == 1)
      {
        sub_1BF38C9B4(v13, &qword_1EBDD9B00, &qword_1BF4F1E50);
        return 1;
      }
    }

    else
    {
      sub_1BF3ABF74(v13, v10);
      if (v20(&v13[v19], 1, v4) != 1)
      {
        (*(v5 + 32))(v7, &v13[v19], v4);
        sub_1BF4E68E8();
        v21 = sub_1BF4E88C4();
        v22 = *(v5 + 8);
        v22(v7, v4);
        v22(v10, v4);
        sub_1BF38C9B4(v13, &qword_1EBDD9B00, &qword_1BF4F1E50);
        return (v21 & 1) != 0;
      }

      (*(v5 + 8))(v10, v4);
    }

    sub_1BF38C9B4(v13, &qword_1EBDD97C8, &qword_1BF4F5FA0);
    return 0;
  }

  v16 = sub_1BF4E9734();
  result = 0;
  if ((v16 & 1) != 0 && ((v14 ^ v15) & 1) == 0)
  {
    goto LABEL_14;
  }

  return result;
}

void sub_1BF4E6858(uint64_t a1)
{
  sub_1BF3C363C(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

unint64_t sub_1BF4E68E8()
{
  result = qword_1EDC9F0C0;
  if (!qword_1EDC9F0C0)
  {
    sub_1BF4E7334();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC9F0C0);
  }

  return result;
}

void _CHDMonotonicNSEC_cold_1()
{
  OUTLINED_FUNCTION_0();
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"uint64_t _CHDMonotonicNSEC(CHDMonotonicTime, char *)"}];
  [v2 handleFailureInFunction:v3 file:@"CHDMonotonicTimer.m" lineNumber:26 description:{@"failed to decompose %s %llu", v1, v0}];
}

void _CHDMonotonicNSEC_cold_2(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = [MEMORY[0x1E696AAA8] currentHandler];
  v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"uint64_t _CHDMonotonicNSEC(CHDMonotonicTime, char *)"}];
  [v6 handleFailureInFunction:v7 file:@"CHDMonotonicTimer.m" lineNumber:27 description:{@"expected clock of %s %llu to be DISPATCH_CLOCKID_MONOTONIC but got %lu", a2, a3, *a1}];
}

void _CHDMonotonicNSEC_cold_3()
{
  OUTLINED_FUNCTION_1();
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"uint64_t _CHDMonotonicNSEC(CHDMonotonicTime, char *)"}];
  [v4 handleFailureInFunction:v5 file:@"CHDMonotonicTimer.m" lineNumber:28 description:{@"unexpected nsecs of %s %llu as 0 means *now* to dispatch but we use only concrete times", v3, v2}];

  *v0 = *v1;
}