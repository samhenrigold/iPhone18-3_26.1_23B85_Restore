char *sub_1D84E71A8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA3A0F0, qword_1D859E580);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 16 * v8);
  }

  return v10;
}

char *sub_1D84E72A8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA3A0D0, &unk_1D859E570);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 32);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[32 * v8] <= v12)
    {
      memmove(v12, v13, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1D84E73B0(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA3A0C8, &qword_1D859F0C0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * ((v5 - 32) / 16);
  return v4;
}

uint64_t sub_1D84E742C(unint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 < a1 || (result = sub_1D8580B88(), a1 + *(*(result - 8) + 72) * a2 <= a3))
  {
    v7 = sub_1D8580B88();

    return MEMORY[0x1EEE6BD00](a3, a1, a2, v7);
  }

  else if (a3 != a1)
  {

    return MEMORY[0x1EEE6BCF8](a3, a1, a2, result);
  }

  return result;
}

unint64_t sub_1D84E7500(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA389B8, &qword_1D8590B30);
  sub_1D848211C(&qword_1EE0E0090);
  v2 = sub_1D85811D8();
  return sub_1D84E75B0(a1, a2, v2);
}

unint64_t sub_1D84E75B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3 + 64;
  v5 = ~(-1 << *(v3 + 32));
  for (i = a3 & v5; ((1 << i) & *(v4 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v5)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA389B8, &qword_1D8590B30);
    sub_1D848211C(&unk_1ECA3A0D8);

    v7 = sub_1D8581208();

    if (v7)
    {
      break;
    }
  }

  return i;
}

uint64_t sub_1D84E76D0(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1D84EB7D4(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_1D84E780C(v5);
  *a1 = v2;
  return result;
}

void sub_1D84E773C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
LABEL_9:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 >= 1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA3A0C8, &qword_1D859F0C0);
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size(v7);
      v7[2] = v5;
      v7[3] = 2 * ((v8 - 32) / 16);
    }

    if (v4 != a3)
    {
      swift_arrayInitWithCopy();
      return;
    }

    goto LABEL_9;
  }
}

uint64_t sub_1D84E780C(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1D8581A78();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v6 = sub_1D8581488();
        *(v6 + 16) = v5;
      }

      v7[0] = v6 + 32;
      v7[1] = v5;
      sub_1D84E79C8(v7, v8, a1, v4);
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
    return sub_1D84E7900(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1D84E7900(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 16 * a3;
    v8 = result - a3;
    while (2)
    {
      v9 = (v6 + 16 * v4);
      result = *v9;
      v10 = v9[1];
      v11 = v8;
      v12 = v7;
      do
      {
        if (result == *(v12 - 2) && v10 == *(v12 - 1))
        {
          break;
        }

        result = sub_1D8581AB8();
        if ((result & 1) == 0)
        {
          break;
        }

        if (!v6)
        {
          __break(1u);
          return result;
        }

        result = *v12;
        v10 = v12[1];
        *v12 = *(v12 - 1);
        *(v12 - 1) = v10;
        *(v12 - 2) = result;
        v12 -= 2;
      }

      while (!__CFADD__(v11++, 1));
      ++v4;
      v7 += 16;
      --v8;
      if (v4 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

uint64_t sub_1D84E79C8(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v83 = result;
  v89 = MEMORY[0x1E69E7CC0];
  v6 = a3[1];
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v9 = v7;
      v10 = v7 + 1;
      if (v7 + 1 < v6)
      {
        v11 = (*a3 + 16 * v10);
        result = *v11;
        v12 = (*a3 + 16 * v7);
        if (*v11 == *v12 && v11[1] == v12[1])
        {
          v14 = 0;
        }

        else
        {
          result = sub_1D8581AB8();
          v14 = result;
        }

        v10 = v9 + 2;
        v15 = 16 * v9;
        v16 = v12 + 5;
        while (v10 < v6)
        {
          result = *(v16 - 1);
          if (result == *(v16 - 3) && *v16 == *(v16 - 2))
          {
            if (v14)
            {
              goto LABEL_21;
            }
          }

          else
          {
            result = sub_1D8581AB8();
            if ((v14 ^ result))
            {
              break;
            }
          }

          ++v10;
          v16 += 2;
        }

        if ((v14 & 1) == 0)
        {
          goto LABEL_28;
        }

LABEL_21:
        if (v10 < v9)
        {
          goto LABEL_121;
        }

        if (v9 < v10)
        {
          v18 = 16 * v10;
          v19 = v10;
          v20 = v9;
          do
          {
            if (v20 != --v19)
            {
              v21 = *a3;
              if (!*a3)
              {
                goto LABEL_126;
              }

              v22 = (v21 + v15);
              v23 = v21 + v18;
              v24 = *v22;
              v25 = v22[1];
              *v22 = *(v23 - 16);
              *(v23 - 16) = v24;
              *(v23 - 8) = v25;
            }

            ++v20;
            v18 -= 16;
            v15 += 16;
          }

          while (v20 < v19);
        }
      }

LABEL_28:
      v26 = a3[1];
      if (v10 < v26)
      {
        if (__OFSUB__(v10, v9))
        {
          goto LABEL_120;
        }

        if (v10 - v9 < a4)
        {
          if (__OFADD__(v9, a4))
          {
            goto LABEL_122;
          }

          if (v9 + a4 >= v26)
          {
            v27 = a3[1];
          }

          else
          {
            v27 = v9 + a4;
          }

          if (v27 < v9)
          {
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
            return result;
          }

          if (v10 != v27)
          {
            v84 = v5;
            v86 = v9;
            v28 = *a3;
            v29 = *a3 + 16 * v10;
            v30 = v9 - v10;
            do
            {
              v31 = v10;
              v32 = (v28 + 16 * v10);
              result = *v32;
              v33 = v32[1];
              v34 = v30;
              v35 = v29;
              do
              {
                if (result == *(v35 - 2) && v33 == *(v35 - 1))
                {
                  break;
                }

                result = sub_1D8581AB8();
                if ((result & 1) == 0)
                {
                  break;
                }

                if (!v28)
                {
                  goto LABEL_124;
                }

                result = *v35;
                v33 = v35[1];
                *v35 = *(v35 - 1);
                *(v35 - 1) = v33;
                *(v35 - 2) = result;
                v35 -= 2;
              }

              while (!__CFADD__(v34++, 1));
              v10 = v31 + 1;
              v29 += 16;
              --v30;
            }

            while (v31 + 1 != v27);
            v10 = v27;
            v5 = v84;
            v9 = v86;
          }
        }
      }

      if (v10 < v9)
      {
        goto LABEL_119;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      v85 = v10;
      if ((result & 1) == 0)
      {
        result = sub_1D84E71A8(0, *(v8 + 16) + 1, 1, v8);
        v8 = result;
      }

      v39 = *(v8 + 16);
      v38 = *(v8 + 24);
      v40 = v39 + 1;
      if (v39 >= v38 >> 1)
      {
        result = sub_1D84E71A8((v38 > 1), v39 + 1, 1, v8);
        v8 = result;
      }

      *(v8 + 16) = v40;
      v41 = v8 + 32;
      v42 = (v8 + 32 + 16 * v39);
      *v42 = v9;
      v42[1] = v85;
      v87 = *v83;
      if (!*v83)
      {
        goto LABEL_127;
      }

      if (v39)
      {
        while (1)
        {
          v43 = v40 - 1;
          v44 = (v41 + 16 * (v40 - 1));
          v45 = (v8 + 16 * v40);
          if (v40 >= 4)
          {
            break;
          }

          if (v40 == 3)
          {
            v46 = *(v8 + 32);
            v47 = *(v8 + 40);
            v56 = __OFSUB__(v47, v46);
            v48 = v47 - v46;
            v49 = v56;
LABEL_69:
            if (v49)
            {
              goto LABEL_109;
            }

            v61 = *v45;
            v60 = v45[1];
            v62 = __OFSUB__(v60, v61);
            v63 = v60 - v61;
            v64 = v62;
            if (v62)
            {
              goto LABEL_112;
            }

            v65 = v44[1];
            v66 = v65 - *v44;
            if (__OFSUB__(v65, *v44))
            {
              goto LABEL_115;
            }

            if (__OFADD__(v63, v66))
            {
              goto LABEL_117;
            }

            if (v63 + v66 >= v48)
            {
              if (v48 < v66)
              {
                v43 = v40 - 2;
              }

              goto LABEL_91;
            }

            goto LABEL_84;
          }

          if (v40 < 2)
          {
            goto LABEL_111;
          }

          v68 = *v45;
          v67 = v45[1];
          v56 = __OFSUB__(v67, v68);
          v63 = v67 - v68;
          v64 = v56;
LABEL_84:
          if (v64)
          {
            goto LABEL_114;
          }

          v70 = *v44;
          v69 = v44[1];
          v56 = __OFSUB__(v69, v70);
          v71 = v69 - v70;
          if (v56)
          {
            goto LABEL_116;
          }

          if (v71 < v63)
          {
            goto LABEL_98;
          }

LABEL_91:
          if (v43 - 1 >= v40)
          {
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
LABEL_121:
            __break(1u);
LABEL_122:
            __break(1u);
            goto LABEL_123;
          }

          if (!*a3)
          {
            goto LABEL_125;
          }

          v75 = (v41 + 16 * (v43 - 1));
          v76 = *v75;
          v77 = (v41 + 16 * v43);
          v78 = v77[1];
          result = sub_1D84E7FFC((*a3 + 16 * *v75), (*a3 + 16 * *v77), (*a3 + 16 * v78), v87);
          if (v5)
          {
          }

          if (v78 < v76)
          {
            goto LABEL_104;
          }

          v79 = v8;
          v80 = *(v8 + 16);
          if (v43 > v80)
          {
            goto LABEL_105;
          }

          *v75 = v76;
          v75[1] = v78;
          if (v43 >= v80)
          {
            goto LABEL_106;
          }

          v40 = v80 - 1;
          result = memmove((v41 + 16 * v43), v77 + 2, 16 * (v80 - 1 - v43));
          *(v79 + 16) = v80 - 1;
          v81 = v80 > 2;
          v8 = v79;
          if (!v81)
          {
            goto LABEL_98;
          }
        }

        v50 = v41 + 16 * v40;
        v51 = *(v50 - 64);
        v52 = *(v50 - 56);
        v56 = __OFSUB__(v52, v51);
        v53 = v52 - v51;
        if (v56)
        {
          goto LABEL_107;
        }

        v55 = *(v50 - 48);
        v54 = *(v50 - 40);
        v56 = __OFSUB__(v54, v55);
        v48 = v54 - v55;
        v49 = v56;
        if (v56)
        {
          goto LABEL_108;
        }

        v57 = v45[1];
        v58 = v57 - *v45;
        if (__OFSUB__(v57, *v45))
        {
          goto LABEL_110;
        }

        v56 = __OFADD__(v48, v58);
        v59 = v48 + v58;
        if (v56)
        {
          goto LABEL_113;
        }

        if (v59 >= v53)
        {
          v73 = *v44;
          v72 = v44[1];
          v56 = __OFSUB__(v72, v73);
          v74 = v72 - v73;
          if (v56)
          {
            goto LABEL_118;
          }

          if (v48 < v74)
          {
            v43 = v40 - 2;
          }

          goto LABEL_91;
        }

        goto LABEL_69;
      }

LABEL_98:
      v6 = a3[1];
      v7 = v85;
      if (v85 >= v6)
      {
        v89 = v8;
        break;
      }
    }
  }

  if (!*v83)
  {
    goto LABEL_128;
  }

  sub_1D84E7ED0(&v89, *v83, a3);
}

uint64_t sub_1D84E7ED0(uint64_t *a1, char *a2, void *a3)
{
  v4 = a1;
  v5 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_1D84E81C0(v5);
    v5 = result;
  }

  v14 = v4;
  *v4 = v5;
  v7 = (v5 + 16);
  for (i = *(v5 + 16); ; *v7 = i)
  {
    v4 = (i - 2);
    if (i < 2)
    {
LABEL_10:
      *v14 = v5;
      return 1;
    }

    if (!*a3)
    {
      break;
    }

    v9 = (v5 + 16 * i);
    v10 = *v9;
    v11 = &v7[2 * i];
    v12 = v11[1];
    sub_1D84E7FFC((*a3 + 16 * *v9), (*a3 + 16 * *v11), (*a3 + 16 * v12), a2);
    if (v3)
    {
      goto LABEL_10;
    }

    if (v12 < v10)
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (v4 >= *v7)
    {
      goto LABEL_12;
    }

    *v9 = v10;
    v9[1] = v12;
    v13 = *v7 - i;
    if (*v7 < i)
    {
      goto LABEL_13;
    }

    i = *v7 - 1;
    result = memmove(v11, v11 + 2, 16 * v13);
  }

  *v14 = v5;
  __break(1u);
  return result;
}

uint64_t sub_1D84E7FFC(char *__src, char *__dst, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __dst;
  v7 = __src;
  v8 = (__dst - __src) / 16;
  v9 = (a3 - __dst) / 16;
  if (v8 < v9)
  {
    if (a4 != __src || &__src[16 * v8] <= a4)
    {
      memmove(a4, __src, 16 * v8);
    }

    v11 = &v4[16 * v8];
    while (1)
    {
      if (v4 >= v11 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_46;
      }

      v13 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (v13 || (sub_1D8581AB8() & 1) == 0)
      {
        break;
      }

      v14 = v6;
      v13 = v7 == v6;
      v6 += 16;
      if (!v13)
      {
        goto LABEL_21;
      }

LABEL_22:
      v7 += 16;
    }

    v14 = v4;
    v13 = v7 == v4;
    v4 += 16;
    if (v13)
    {
      goto LABEL_22;
    }

LABEL_21:
    *v7 = *v14;
    goto LABEL_22;
  }

  if (a4 != __dst || &__dst[16 * v9] <= a4)
  {
    memmove(a4, __dst, 16 * v9);
  }

  v11 = &v4[16 * v9];
LABEL_29:
  v16 = v6 - 16;
  for (v5 -= 16; v11 > v4 && v6 > v7; v5 -= 16)
  {
    v18 = *(v11 - 2) == *(v6 - 2) && *(v11 - 1) == *(v6 - 1);
    if (!v18 && (sub_1D8581AB8() & 1) != 0)
    {
      v13 = v5 + 16 == v6;
      v6 -= 16;
      if (!v13)
      {
        *v5 = *v16;
        v6 = v16;
      }

      goto LABEL_29;
    }

    if (v11 != v5 + 16)
    {
      *v5 = *(v11 - 1);
    }

    v11 -= 16;
  }

LABEL_46:
  v19 = (v11 - v4) / 16;
  if (v6 != v4 || v6 >= &v4[16 * v19])
  {
    memmove(v6, v4, 16 * v19);
  }

  return 1;
}

uint64_t sub_1D84E81D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v11 = *v5;
  v12 = sub_1D8436A4C(a3, a4);
  if (__OFADD__(v11[2], (v13 & 1) == 0))
  {
    __break(1u);
    goto LABEL_13;
  }

  v14 = v12;
  v15 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39F90, &unk_1D85A22D0);
  if ((sub_1D8581808() & 1) == 0)
  {
    goto LABEL_5;
  }

  v16 = sub_1D8436A4C(a3, a4);
  if ((v15 & 1) != (v17 & 1))
  {
LABEL_13:
    result = sub_1D8581AF8();
    __break(1u);
    return result;
  }

  v14 = v16;
LABEL_5:
  v18 = *v6;
  if (v15)
  {
    v19 = (v18[7] + 16 * v14);
    *v19 = a1;
    v19[1] = a2;
  }

  else
  {
    sub_1D84E8328(v14, a3, a4, a1, a2, v18);
  }
}

unint64_t sub_1D84E8328(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  a6[(result >> 6) + 8] |= 1 << result;
  v6 = (a6[6] + 16 * result);
  *v6 = a2;
  v6[1] = a3;
  v7 = (a6[7] + 16 * result);
  *v7 = a4;
  v7[1] = a5;
  v8 = a6[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v10;
  }

  return result;
}

char *sub_1D84E8374(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1D84E8394(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1D84E8394(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA3A0C8, &qword_1D859F0C0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1D84E849C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x1DA7191F0](v3);
  if (v3)
  {
    v5 = a2 + 40;
    do
    {

      sub_1D85812B8();

      v5 += 16;
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_1D84E8514(uint64_t a1, uint64_t a2)
{
  v24 = type metadata accessor for AchievementProgress(0);
  MEMORY[0x1EEE9AC00](v24);
  v23 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for GameActivityRuntimeStat(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v21 - v10;
  v12 = *(a2 + 16);
  v26 = a1;
  result = MEMORY[0x1DA7191F0](v12);
  if (v12)
  {
    v14 = a2 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
    v15 = *(v6 + 72);
    v21 = v11;
    v22 = v9;
    do
    {
      sub_1D84EA648();
      sub_1D84EA648();
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_1D84EB32C();
        MEMORY[0x1DA7191F0](1);
        sub_1D84C49BC(&unk_1ECA39DE0);
        sub_1D85811E8();
        sub_1D84EB2B8();
        result = sub_1D84EB2B8();
      }

      else
      {
        v16 = *v9;
        v17 = *(v9 + 1);
        v25 = *(v9 + 1);
        v18 = v5;
        v20 = *(v9 + 4);
        v19 = *(v9 + 5);
        MEMORY[0x1DA7191F0](0);
        v27 = v16;
        v28 = v17;
        v29 = v25;
        v30 = v20;
        v31 = v19;
        v5 = v18;
        sub_1D84EB4D4();
        v9 = v22;
        sub_1D85811E8();
        sub_1D84EB2B8();
      }

      v14 += v15;
      --v12;
    }

    while (v12);
  }

  return result;
}

uint64_t sub_1D84E8808(const void *a1, uint64_t a2)
{
  v3 = a2 + 64;
  v4 = 1 << *(a2 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a2 + 64);
  v7 = (v4 + 63) >> 6;

  v9 = 0;
  v10 = 0;
  if (v6)
  {
LABEL_8:
    while (1)
    {
      v12 = *(*(a2 + 48) + 16 * (__clz(__rbit64(v6)) | (v10 << 6)));

      if (!v13)
      {
        break;
      }

      v6 &= v6 - 1;
      v16 = v12;
      v17 = v13;
      memcpy(__dst, a1, sizeof(__dst));
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA389B8, &qword_1D8590B30);
      sub_1D848211C(&qword_1EE0E0090);
      sub_1D85811E8();

      sub_1D85812B8();

      result = sub_1D8581B98();
      v9 ^= result;
      if (!v6)
      {
        goto LABEL_4;
      }
    }

LABEL_11:

    return MEMORY[0x1DA7191F0](v9);
  }

  else
  {
LABEL_4:
    while (1)
    {
      v11 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v11 >= v7)
      {
        goto LABEL_11;
      }

      v6 = *(v3 + 8 * v11);
      ++v10;
      if (v6)
      {
        v10 = v11;
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1D84E8A08(void *__src, uint64_t a2)
{
  memcpy(__dst, __src, sizeof(__dst));
  sub_1D8581B98();
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

      return MEMORY[0x1DA7191F0](v8);
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

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA389B8, &qword_1D8590B30);
        sub_1D848211C(&qword_1EE0E0090);
        v11 = sub_1D85811D8();

        v8 ^= v11;
      }

      while (v5);
      continue;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1D84E8B94()
{
  result = qword_1ECA39CA8;
  if (!qword_1ECA39CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA39CA8);
  }

  return result;
}

unint64_t sub_1D84E8BE8()
{
  result = qword_1ECA39CB0;
  if (!qword_1ECA39CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA39CB0);
  }

  return result;
}

uint64_t sub_1D84E8C3C(uint64_t a1, uint64_t a2, char a3)
{
  switch(a3)
  {
    case 0:
    case 1:
    case 2:
    case 5:

      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D84E8C7C(uint64_t a1, uint64_t a2, char a3)
{
  switch(a3)
  {
    case 0:
    case 1:
    case 2:
    case 5:

      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1D84E8CBC()
{
  result = qword_1ECA47180;
  if (!qword_1ECA47180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA47180);
  }

  return result;
}

unint64_t sub_1D84E8D10()
{
  result = qword_1EE0E25E0[0];
  if (!qword_1EE0E25E0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE0E25E0);
  }

  return result;
}

unint64_t sub_1D84E8D64()
{
  result = qword_1EE0E0458;
  if (!qword_1EE0E0458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0E0458);
  }

  return result;
}

unint64_t sub_1D84E8DB8()
{
  result = qword_1ECA47188;
  if (!qword_1ECA47188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA47188);
  }

  return result;
}

unint64_t sub_1D84E8E0C()
{
  result = qword_1ECA47190;
  if (!qword_1ECA47190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA47190);
  }

  return result;
}

unint64_t sub_1D84E8E60()
{
  result = qword_1ECA47198;
  if (!qword_1ECA47198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA47198);
  }

  return result;
}

unint64_t sub_1D84E8EB4()
{
  result = qword_1EE0E02E0;
  if (!qword_1EE0E02E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0E02E0);
  }

  return result;
}

uint64_t sub_1D84E8F2C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *a2;
  v8[2] = *a2;
  v8[3] = *(v10 - 8);
  v8[4] = swift_task_alloc();
  sub_1D8580F88();
  v11 = a2[1];
  v8[5] = v11;
  v8[6] = *(v11 - 8);
  v8[7] = swift_task_alloc();
  sub_1D8580F88();
  v12 = swift_task_alloc();
  v8[8] = v12;
  *v12 = v8;
  v12[1] = sub_1D84F0BE8;

  return DistributedGameActivityServiceProtocol<>.refreshGameActivity(game:scope:)();
}

uint64_t sub_1D84E9164(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *a2;
  v8[2] = *a2;
  v8[3] = *(v9 - 8);
  v8[4] = swift_task_alloc();
  sub_1D8580F88();
  v10 = swift_task_alloc();
  v8[5] = v10;
  *v10 = v8;
  v10[1] = sub_1D84911F8;

  return DistributedGameActivityServiceProtocol<>.refreshGameActivity(game:)();
}

uint64_t sub_1D84E92EC(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *a2;
  v8[2] = *a2;
  v8[3] = *(v10 - 8);
  v8[4] = swift_task_alloc();
  sub_1D8580F88();
  v11 = a2[1];
  v8[5] = v11;
  v8[6] = *(v11 - 8);
  v8[7] = swift_task_alloc();
  sub_1D8580F88();
  v12 = a2[2];
  v8[8] = v12;
  v8[9] = *(v12 - 8);
  v8[10] = swift_task_alloc();
  sub_1D8580F88();
  v13 = swift_task_alloc();
  v8[11] = v13;
  *v13 = v8;
  v13[1] = sub_1D84E9608;

  return DistributedGameActivityServiceProtocol<>.listGameActivityDefinitions(game:filters:after:)();
}

uint64_t sub_1D84E9608(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_236();
  OUTLINED_FUNCTION_487();
  OUTLINED_FUNCTION_153();
  v43 = *(v17 + 72);
  OUTLINED_FUNCTION_193();
  v19 = *(v18 + 64);
  v21 = *(v20 + 56);
  v42 = *(v20 + 48);
  OUTLINED_FUNCTION_193();
  v23 = *(v22 + 40);
  v25 = v24[4];
  v26 = v24[3];
  v27 = v24[2];
  OUTLINED_FUNCTION_171_0();
  v29 = v28;
  OUTLINED_FUNCTION_37();
  *v30 = v29;

  (*(v26 + 8))(v25, v27);
  (*(v42 + 8))(v21, v23);
  v31 = OUTLINED_FUNCTION_233();
  v32(v31);

  OUTLINED_FUNCTION_146();
  OUTLINED_FUNCTION_428();

  return v34(v33, v34, v35, v36, v37, v38, v39, v40, a9, v42, v19 - 8, v43, v16, a14, a15, a16);
}

uint64_t sub_1D84E9850(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[2] = a3;
  v9 = *a2;
  v8[3] = *a2;
  v8[4] = *(v9 - 8);
  v8[5] = swift_task_alloc();
  sub_1D8580F88();
  v10 = swift_task_alloc();
  v8[6] = v10;
  *v10 = v8;
  v10[1] = sub_1D84F0BE4;

  return DistributedGameActivityServiceProtocol<>.describeGameActivityDefinitions(gameActivityDefinitions:)();
}

uint64_t sub_1D84E9A00(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *a2;
  v8[2] = *a2;
  v8[3] = *(v9 - 8);
  v8[4] = swift_task_alloc();
  sub_1D8580F88();
  v10 = a2[1];
  v8[5] = v10;
  v8[6] = *(v10 - 8);
  v8[7] = swift_task_alloc();
  sub_1D8580F88();
  v11 = a2[2];
  v8[8] = v11;
  v8[9] = *(v11 - 8);
  v8[10] = swift_task_alloc();
  sub_1D8580F88();
  v12 = a2[3];
  v8[11] = v12;
  v8[12] = *(v12 - 8);
  v8[13] = swift_task_alloc();
  sub_1D8580F88();
  v13 = swift_task_alloc();
  v8[14] = v13;
  *v13 = v8;
  v13[1] = sub_1D84E9E20;

  return DistributedGameActivityServiceProtocol<>.listGameActivities(game:filters:excludedFilters:after:)();
}

uint64_t sub_1D84E9E20()
{
  OUTLINED_FUNCTION_153();
  OUTLINED_FUNCTION_193();
  OUTLINED_FUNCTION_193();
  v22 = *(v0 + 80);
  OUTLINED_FUNCTION_193();
  v21 = *(v1 + 72);
  OUTLINED_FUNCTION_193();
  v3 = *(v2 + 64);
  v20 = *(v4 + 56);
  OUTLINED_FUNCTION_193();
  v19 = *(v5 + 48);
  OUTLINED_FUNCTION_193();
  v7 = *(v6 + 40);
  v9 = v8[4];
  v10 = v8[3];
  v11 = v8[2];
  OUTLINED_FUNCTION_171_0();
  v13 = v12;
  OUTLINED_FUNCTION_37();
  *v14 = v13;

  (*(v10 + 8))(v9, v11);
  (*(v19 + 8))(v20, v7);
  (*(v21 + 8))(v22, v3);
  v15 = OUTLINED_FUNCTION_368_0();
  v16(v15);

  v17 = *(v13 + 8);

  return v17();
}

uint64_t sub_1D84EA10C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[2] = a3;
  v9 = *a2;
  v8[3] = *a2;
  v8[4] = *(v9 - 8);
  v8[5] = swift_task_alloc();
  sub_1D8580F88();
  v10 = swift_task_alloc();
  v8[6] = v10;
  *v10 = v8;
  v10[1] = sub_1D84EA29C;

  return DistributedGameActivityServiceProtocol<>.describeGameActivities(activities:)();
}

uint64_t sub_1D84EA29C()
{
  OUTLINED_FUNCTION_536();
  OUTLINED_FUNCTION_204();
  OUTLINED_FUNCTION_153();
  OUTLINED_FUNCTION_171_0();
  *v0 = v1;
  *v3 = v2;

  v4 = OUTLINED_FUNCTION_188();
  v5(v4);

  OUTLINED_FUNCTION_146();
  OUTLINED_FUNCTION_535();

  return v7(v6, v7, v8, v9, v10, v11, v12, v13);
}

uint64_t sub_1D84EA410(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *a2;
  v8[2] = *a2;
  v8[3] = *(v10 - 8);
  v8[4] = swift_task_alloc();
  sub_1D8580F88();
  v11 = a2[1];
  v8[5] = v11;
  v8[6] = *(v11 - 8);
  v8[7] = swift_task_alloc();
  sub_1D8580F88();
  v12 = swift_task_alloc();
  v8[8] = v12;
  *v12 = v8;
  v12[1] = sub_1D84BF8AC;

  return DistributedGameActivityServiceProtocol<>.createOrUpdateGameActivity(activity:context:)();
}

uint64_t sub_1D84EA648()
{
  OUTLINED_FUNCTION_263_0();
  v1(0);
  OUTLINED_FUNCTION_4_0();
  v2 = OUTLINED_FUNCTION_194();
  v3(v2);
  return v0;
}

uint64_t sub_1D84EA6A0(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *a2;
  v8[2] = *a2;
  v8[3] = *(v9 - 8);
  v8[4] = swift_task_alloc();
  sub_1D8580F88();
  v10 = swift_task_alloc();
  v8[5] = v10;
  *v10 = v8;
  v10[1] = sub_1D84A7CAC;

  return DistributedGameActivityServiceProtocol<>.delete(gameActivity:)();
}

unint64_t sub_1D84EA834()
{
  result = qword_1ECA39D48;
  if (!qword_1ECA39D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA39D48);
  }

  return result;
}

unint64_t sub_1D84EA888()
{
  result = qword_1ECA39D50;
  if (!qword_1ECA39D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA39D50);
  }

  return result;
}

uint64_t sub_1D84EA8DC(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *a2;
  v8[2] = *a2;
  v8[3] = *(v9 - 8);
  v8[4] = swift_task_alloc();
  sub_1D8580F88();
  v10 = swift_task_alloc();
  v8[5] = v10;
  *v10 = v8;
  v10[1] = sub_1D84A7CAC;

  return DistributedGameActivityServiceProtocol<>.deleteAllActivities(for:)();
}

uint64_t sub_1D84EAA70(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *a2;
  v8[2] = *a2;
  v8[3] = *(v10 - 8);
  v8[4] = swift_task_alloc();
  sub_1D8580F88();
  v11 = a2[1];
  v8[5] = v11;
  v8[6] = *(v11 - 8);
  v8[7] = swift_task_alloc();
  sub_1D8580F88();
  v12 = swift_task_alloc();
  v8[8] = v12;
  *v12 = v8;
  v12[1] = sub_1D84BF8AC;

  return DistributedGameActivityServiceProtocol<>.shareGameActivity(activity:receivingPlayers:)();
}

uint64_t sub_1D84EACAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a3;
  v4 = swift_task_alloc();
  *(v3 + 24) = v4;
  *v4 = v3;
  v4[1] = sub_1D84EAD60;

  return DistributedGameActivityServiceProtocol<>.listAllStoredGameActivityDefinitions()();
}

uint64_t sub_1D84EAD60()
{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_153();
  **(v0 + 16) = v1;

  OUTLINED_FUNCTION_146();

  return v2();
}

unint64_t sub_1D84EAE60()
{
  result = qword_1ECA39D60;
  if (!qword_1ECA39D60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA39D58, &qword_1D859A968);
    sub_1D84C49BC(&qword_1ECA39898);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA39D60);
  }

  return result;
}

unint64_t sub_1D84EAF18()
{
  result = qword_1ECA39D68;
  if (!qword_1ECA39D68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA39D58, &qword_1D859A968);
    sub_1D84C49BC(&qword_1ECA398B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA39D68);
  }

  return result;
}

uint64_t sub_1D84EAFD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a3;
  v4 = swift_task_alloc();
  *(v3 + 24) = v4;
  *v4 = v3;
  v4[1] = sub_1D84F0B90;

  return DistributedGameActivityServiceProtocol<>.listAllStoredGameActivityInstances()();
}

unint64_t sub_1D84EB084()
{
  result = qword_1ECA39D78;
  if (!qword_1ECA39D78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA39D70, &qword_1D859A980);
    sub_1D84C49BC(&qword_1ECA39970);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA39D78);
  }

  return result;
}

unint64_t sub_1D84EB13C()
{
  result = qword_1ECA39D80;
  if (!qword_1ECA39D80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA39D70, &qword_1D859A980);
    sub_1D84C49BC(&qword_1ECA39988);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA39D80);
  }

  return result;
}

uint64_t sub_1D84EB1F4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39D88, &qword_1D859A988);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1D84EB264()
{
  result = qword_1ECA471A0;
  if (!qword_1ECA471A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA471A0);
  }

  return result;
}

uint64_t sub_1D84EB2B8()
{
  v1 = OUTLINED_FUNCTION_85_1();
  v2(v1);
  OUTLINED_FUNCTION_4_0();
  (*(v3 + 8))(v0);
  return v0;
}

uint64_t sub_1D84EB32C()
{
  OUTLINED_FUNCTION_263_0();
  v1(0);
  OUTLINED_FUNCTION_4_0();
  v2 = OUTLINED_FUNCTION_194();
  v3(v2);
  return v0;
}

unint64_t sub_1D84EB384()
{
  result = qword_1ECA471A8;
  if (!qword_1ECA471A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA471A8);
  }

  return result;
}

unint64_t sub_1D84EB3D8()
{
  result = qword_1ECA471B0;
  if (!qword_1ECA471B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA471B0);
  }

  return result;
}

unint64_t sub_1D84EB42C()
{
  result = qword_1ECA471B8;
  if (!qword_1ECA471B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA471B8);
  }

  return result;
}

unint64_t sub_1D84EB480()
{
  result = qword_1ECA39DD8;
  if (!qword_1ECA39DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA39DD8);
  }

  return result;
}

unint64_t sub_1D84EB4D4()
{
  result = qword_1ECA39DE8;
  if (!qword_1ECA39DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA39DE8);
  }

  return result;
}

unint64_t sub_1D84EB528()
{
  result = qword_1ECA39E08;
  if (!qword_1ECA39E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA39E08);
  }

  return result;
}

unint64_t sub_1D84EB57C()
{
  result = qword_1ECA471C0;
  if (!qword_1ECA471C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA471C0);
  }

  return result;
}

unint64_t sub_1D84EB5D0()
{
  result = qword_1ECA471C8;
  if (!qword_1ECA471C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA471C8);
  }

  return result;
}

unint64_t sub_1D84EB624()
{
  result = qword_1ECA471D0;
  if (!qword_1ECA471D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA471D0);
  }

  return result;
}

void *sub_1D84EB678(void *result, void *a2, unint64_t a3, uint64_t a4)
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
    v13 = 0;
    v10 = 0;
LABEL_20:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v13;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v13 = 0;
    goto LABEL_20;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    v12 = 0;
    v13 = 0;
    while (v12 < v10)
    {
      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_24;
      }

      if (!v9)
      {
        while (1)
        {
          v15 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            break;
          }

          if (v15 >= ((63 - v7) >> 6))
          {
            v9 = 0;
            v10 = v12;
            goto LABEL_20;
          }

          v9 = *(v6 + 8 * v15);
          ++v13;
          if (v9)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
        break;
      }

      v15 = v13;
LABEL_15:
      v16 = (*(a4 + 48) + ((v15 << 10) | (16 * __clz(__rbit64(v9)))));
      v17 = v16[1];
      v9 &= v9 - 1;
      *v11 = *v16;
      v11[1] = v17;
      if (v14 == v10)
      {

        v13 = v15;
        goto LABEL_20;
      }

      v11 += 2;

      v12 = v14;
      v13 = v15;
    }

    __break(1u);
LABEL_24:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1D84EB7E8(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  v4 = *(*v2 + 16);
  if (v4 < a2)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v5 = result;
  v6 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v7 = result - a2;
  if (__OFSUB__(0, v6))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  result = v4 - v6;
  if (__OFADD__(v4, v7))
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  sub_1D84EB918(result, 1);
  v8 = *v2;
  v9 = *(sub_1D8580B88() - 8);
  v10 = v8 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
  v11 = *(v9 + 72);
  v12 = v10 + v11 * v5;
  result = swift_arrayDestroy();
  if (!v6)
  {
LABEL_10:
    *v2 = v8;
    return result;
  }

  v13 = *(v8 + 16);
  if (__OFSUB__(v13, a2))
  {
    goto LABEL_16;
  }

  result = sub_1D84E742C(v10 + v11 * a2, v13 - a2, v12);
  v14 = *(v8 + 16);
  v15 = __OFADD__(v14, v7);
  v16 = v14 - v6;
  if (!v15)
  {
    *(v8 + 16) = v16;
    goto LABEL_10;
  }

LABEL_17:
  __break(1u);
  return result;
}

void *sub_1D84EB918(int64_t a1, char a2)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v5;
  if (!result || a1 > *(v5 + 24) >> 1)
  {
    if (*(v5 + 16) <= a1)
    {
      v7 = a1;
    }

    else
    {
      v7 = *(v5 + 16);
    }

    result = sub_1D8439370(result, v7, a2 & 1, v5);
    *v2 = result;
  }

  return result;
}

uint64_t sub_1D84EB994(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_1D84C55F4();
  }

  return result;
}

uint64_t sub_1D84EB9AC(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_1D84C5620();
  }

  return result;
}

uint64_t sub_1D84EB9C4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *a1)
{
  v1 = a1;
  if ((*(*(a1[3] - 8) + 82) & 2) != 0)
  {
    *a1 = swift_allocBox();
    return v2;
  }

  return v1;
}

uint64_t sub_1D84EBA88(uint64_t a1, uint64_t a2, char a3)
{
  switch(a3)
  {
    case 0:
    case 2:
    case 3:

      break;
    case 1:
      JUMPOUT(0x1DA719660);
    default:
      return result;
  }

  return result;
}

unint64_t sub_1D84EBAC8()
{
  result = qword_1ECA471D8;
  if (!qword_1ECA471D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA471D8);
  }

  return result;
}

unint64_t sub_1D84EBB1C()
{
  result = qword_1ECA39E70;
  if (!qword_1ECA39E70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA39E68, &qword_1D859AA48);
    sub_1D84C49BC(&unk_1ECA39E78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA39E70);
  }

  return result;
}

unint64_t sub_1D84EBBD4()
{
  result = qword_1ECA39E88;
  if (!qword_1ECA39E88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA39E80, &qword_1D859AA50);
    sub_1D848211C(&qword_1ECA389C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA39E88);
  }

  return result;
}

unint64_t sub_1D84EBC84()
{
  result = qword_1ECA39E98;
  if (!qword_1ECA39E98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA39E90, &qword_1D859AA58);
    sub_1D848211C(&qword_1ECA389C0);
    sub_1D84EBD3C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA39E98);
  }

  return result;
}

unint64_t sub_1D84EBD3C()
{
  result = qword_1ECA39EA0;
  if (!qword_1ECA39EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA39EA0);
  }

  return result;
}

unint64_t sub_1D84EBD90()
{
  result = qword_1ECA39EB8;
  if (!qword_1ECA39EB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA39E68, &qword_1D859AA48);
    sub_1D84C49BC(&unk_1ECA39EC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA39EB8);
  }

  return result;
}

unint64_t sub_1D84EBE48()
{
  result = qword_1ECA39EC8;
  if (!qword_1ECA39EC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA39E80, &qword_1D859AA50);
    sub_1D848211C(&qword_1ECA389F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA39EC8);
  }

  return result;
}

unint64_t sub_1D84EBEF8()
{
  result = qword_1ECA39ED0;
  if (!qword_1ECA39ED0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA39E90, &qword_1D859AA58);
    sub_1D848211C(&qword_1ECA389F8);
    sub_1D84EBFB0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA39ED0);
  }

  return result;
}

unint64_t sub_1D84EBFB0()
{
  result = qword_1ECA39ED8;
  if (!qword_1ECA39ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA39ED8);
  }

  return result;
}

unint64_t sub_1D84EC004()
{
  result = qword_1ECA471E0;
  if (!qword_1ECA471E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA471E0);
  }

  return result;
}

unint64_t sub_1D84EC058()
{
  result = qword_1ECA471E8;
  if (!qword_1ECA471E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA471E8);
  }

  return result;
}

unint64_t sub_1D84EC0AC()
{
  result = qword_1ECA471F0;
  if (!qword_1ECA471F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA471F0);
  }

  return result;
}

unint64_t sub_1D84EC100()
{
  result = qword_1ECA471F8;
  if (!qword_1ECA471F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA471F8);
  }

  return result;
}

unint64_t sub_1D84EC154()
{
  result = qword_1ECA47200;
  if (!qword_1ECA47200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA47200);
  }

  return result;
}

unint64_t sub_1D84EC1A8()
{
  result = qword_1ECA47208;
  if (!qword_1ECA47208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA47208);
  }

  return result;
}

unint64_t sub_1D84EC1FC()
{
  result = qword_1ECA47210;
  if (!qword_1ECA47210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA47210);
  }

  return result;
}

unint64_t sub_1D84EC270()
{
  result = qword_1ECA47218;
  if (!qword_1ECA47218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA47218);
  }

  return result;
}

uint64_t sub_1D84EC2E4()
{
  OUTLINED_FUNCTION_263_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_4_0();
  v3 = OUTLINED_FUNCTION_194();
  v4(v3);
  return v0;
}

unint64_t sub_1D84EC33C()
{
  result = qword_1ECA47220[0];
  if (!qword_1ECA47220[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECA47220);
  }

  return result;
}

unint64_t sub_1D84EC390()
{
  result = qword_1ECA39F68;
  if (!qword_1ECA39F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA39F68);
  }

  return result;
}

unint64_t sub_1D84EC3E4()
{
  result = qword_1ECA39F78;
  if (!qword_1ECA39F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA39F78);
  }

  return result;
}

unint64_t sub_1D84EC484(void *a1)
{
  a1[1] = OUTLINED_FUNCTION_382_0(&unk_1ECA39FA0);
  a1[2] = OUTLINED_FUNCTION_382_0(&unk_1ECA39FA8);
  result = OUTLINED_FUNCTION_382_0(&unk_1ECA39FB0);
  a1[3] = result;
  return result;
}

unint64_t sub_1D84EC564()
{
  result = qword_1ECA39FC0;
  if (!qword_1ECA39FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA39FC0);
  }

  return result;
}

unint64_t sub_1D84EC5BC()
{
  result = qword_1ECA39FC8;
  if (!qword_1ECA39FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA39FC8);
  }

  return result;
}

unint64_t sub_1D84EC614()
{
  result = qword_1ECA39FD0;
  if (!qword_1ECA39FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA39FD0);
  }

  return result;
}

unint64_t sub_1D84EC66C()
{
  result = qword_1ECA39FD8;
  if (!qword_1ECA39FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA39FD8);
  }

  return result;
}

unint64_t sub_1D84EC76C(uint64_t a1)
{
  OUTLINED_FUNCTION_0_5();
  result = sub_1D84C49BC(v2);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D84EC858()
{
  result = qword_1ECA3A000;
  if (!qword_1ECA3A000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA3A000);
  }

  return result;
}

unint64_t sub_1D84EC92C()
{
  result = qword_1ECA3A020;
  if (!qword_1ECA3A020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA3A020);
  }

  return result;
}

unint64_t sub_1D84EC9D0()
{
  result = qword_1ECA3A030;
  if (!qword_1ECA3A030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA3A030);
  }

  return result;
}

unint64_t sub_1D84ECA58()
{
  result = qword_1ECA3A048;
  if (!qword_1ECA3A048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA3A048);
  }

  return result;
}

unint64_t sub_1D84ECAE0()
{
  result = qword_1ECA3A060;
  if (!qword_1ECA3A060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA3A060);
  }

  return result;
}

unint64_t sub_1D84ECB80()
{
  result = qword_1ECA3A070;
  if (!qword_1ECA3A070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA3A070);
  }

  return result;
}

uint64_t sub_1D84ECC24()
{
  result = sub_1D8580D78();
  if (v1 <= 0x3F)
  {
    OUTLINED_FUNCTION_413();
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ActivityInstanceDeletionResult(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return OUTLINED_FUNCTION_226(*a1);
  }

  else
  {
    return OUTLINED_FUNCTION_192();
  }
}

uint64_t storeEnumTagSinglePayload for Artwork.Size(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 16) = v3;
  return result;
}

uint64_t sub_1D84ECD00(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7B && *(a1 + 17))
    {
      return OUTLINED_FUNCTION_226(*a1 + 122);
    }

    v3 = ((*(a1 + 16) >> 5) & 0xFFFFFF87 | (8 * ((*(a1 + 16) >> 1) & 0xF))) ^ 0x7F;
    if (v3 >= 0x7A)
    {
      return OUTLINED_FUNCTION_226(-1);
    }
  }

  else
  {
    v3 = -1;
  }

  return OUTLINED_FUNCTION_226(v3);
}

uint64_t sub_1D84ECD48(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7A)
  {
    *(result + 16) = 0;
    *result = a2 - 123;
    *(result + 8) = 0;
    if (a3 >= 0x7B)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7B)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 0;
      return OUTLINED_FUNCTION_277_0(result, 2 * (((-a2 >> 3) & 0xF) - 16 * a2));
    }
  }

  return result;
}

uint64_t sub_1D84ECDC4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFA)
  {
    *(result + 16) = 0;
    *result = a2 - 251;
    *(result + 8) = 0;
    if (a3 >= 0xFB)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFB)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      return OUTLINED_FUNCTION_277_0(result, -a2);
    }
  }

  return result;
}

uint64_t dispatch thunk of GameActivityServiceProtocol.refreshGameActivity(game:scope:)()
{
  OUTLINED_FUNCTION_219();
  OUTLINED_FUNCTION_28(v0, v1, v2, v3);
  OUTLINED_FUNCTION_54();
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_176(v4);
  *v5 = v6;
  OUTLINED_FUNCTION_191(v5);
  OUTLINED_FUNCTION_114_0();

  return v7();
}

uint64_t dispatch thunk of GameActivityServiceProtocol.refreshGameActivity(game:)()
{
  OUTLINED_FUNCTION_475();
  v10 = v0;
  OUTLINED_FUNCTION_204();
  OUTLINED_FUNCTION_296(v1, v2, v3);
  OUTLINED_FUNCTION_130_1();
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_176(v4);
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_12_0(v5);

  return v8(v7);
}

uint64_t dispatch thunk of GameActivityServiceProtocol.listGameActivityDefinitions(game:filters:after:)()
{
  OUTLINED_FUNCTION_177();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  OUTLINED_FUNCTION_54();
  v17 = (v12 + *v12);
  v13 = swift_task_alloc();
  v14 = OUTLINED_FUNCTION_97(v13);
  *v14 = v15;
  v14[1] = sub_1D8442F30;

  return v17(v11, v9, v7, v5, v3, v1);
}

uint64_t dispatch thunk of GameActivityServiceProtocol.describeGameActivityDefinitions(gameActivityDefinitions:)()
{
  OUTLINED_FUNCTION_475();
  v10 = v0;
  OUTLINED_FUNCTION_204();
  OUTLINED_FUNCTION_296(v1, v2, v3);
  OUTLINED_FUNCTION_130_1();
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_176(v4);
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_12_0(v5);

  return v8(v7);
}

uint64_t dispatch thunk of GameActivityServiceProtocol.listGameActivities(game:filters:excludedFilters:after:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_426();
  OUTLINED_FUNCTION_177();
  v27 = v12 + 40;
  OUTLINED_FUNCTION_130_1();
  v28 = v13 + *v13;
  v14 = swift_task_alloc();
  v15 = OUTLINED_FUNCTION_97(v14);
  *v15 = v16;
  v15[1] = sub_1D8442F30;
  OUTLINED_FUNCTION_240();

  return v24(v17, v18, v19, v20, v21, v22, v23, v24, v27, v28, a11, a12);
}

uint64_t dispatch thunk of GameActivityServiceProtocol.describeGameActivities(activities:)()
{
  OUTLINED_FUNCTION_475();
  v10 = v0;
  OUTLINED_FUNCTION_204();
  OUTLINED_FUNCTION_296(v1, v2, v3);
  OUTLINED_FUNCTION_130_1();
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_176(v4);
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_12_0(v5);

  return v8(v7);
}

uint64_t dispatch thunk of GameActivityServiceProtocol.createOrUpdateGameActivity(activity:context:)()
{
  OUTLINED_FUNCTION_219();
  OUTLINED_FUNCTION_28(v0, v1, v2, v3);
  OUTLINED_FUNCTION_54();
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_176(v4);
  *v5 = v6;
  OUTLINED_FUNCTION_191(v5);
  OUTLINED_FUNCTION_114_0();

  return v7();
}

uint64_t dispatch thunk of GameActivityServiceProtocol.delete(gameActivity:)()
{
  OUTLINED_FUNCTION_219();
  OUTLINED_FUNCTION_28(v0, v1, v2, v3);
  OUTLINED_FUNCTION_54();
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_97(v4);
  *v5 = v6;
  v5[1] = sub_1D8442F30;
  OUTLINED_FUNCTION_114_0();

  return v7();
}

uint64_t dispatch thunk of GameActivityServiceProtocol.deleteAllActivities(for:)()
{
  OUTLINED_FUNCTION_219();
  OUTLINED_FUNCTION_28(v0, v1, v2, v3);
  OUTLINED_FUNCTION_54();
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_97(v4);
  *v5 = v6;
  v5[1] = sub_1D8442F30;
  OUTLINED_FUNCTION_114_0();

  return v7();
}

uint64_t dispatch thunk of GameActivityServiceProtocol.shareGameActivity(activity:receivingPlayers:)()
{
  OUTLINED_FUNCTION_219();
  OUTLINED_FUNCTION_28(v0, v1, v2, v3);
  OUTLINED_FUNCTION_54();
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_176(v4);
  *v5 = v6;
  OUTLINED_FUNCTION_191(v5);
  OUTLINED_FUNCTION_114_0();

  return v7();
}

uint64_t dispatch thunk of GameActivityServiceProtocol.listAllStoredGameActivityDefinitions()()
{
  OUTLINED_FUNCTION_204();
  OUTLINED_FUNCTION_129_0();
  OUTLINED_FUNCTION_54();
  v6 = (v0 + *v0);
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_176(v1);
  *v2 = v3;
  OUTLINED_FUNCTION_191(v2);
  v4 = OUTLINED_FUNCTION_506();

  return v6(v4);
}

uint64_t dispatch thunk of GameActivityServiceProtocol.listAllStoredGameActivityInstances()()
{
  OUTLINED_FUNCTION_204();
  OUTLINED_FUNCTION_129_0();
  OUTLINED_FUNCTION_54();
  v6 = (v0 + *v0);
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_176(v1);
  *v2 = v3;
  OUTLINED_FUNCTION_191(v2);
  v4 = OUTLINED_FUNCTION_506();

  return v6(v4);
}

uint64_t sub_1D84EDAF0()
{
  v1 = MEMORY[0x1E69E6158];
  v2 = OUTLINED_FUNCTION_4_2();
  sub_1D84EE594(v2, v3, v1, v4);
  OUTLINED_FUNCTION_289_0();
  if (!(!v6 & v5))
  {
    v7 = sub_1D8580D78();
    if (v8 > 0x3F)
    {
      return v7;
    }

    else
    {
      sub_1D84EDCD8();
      OUTLINED_FUNCTION_289_0();
      if (!(!v6 & v5))
      {
        sub_1D84EE134(319, &qword_1ECA3A078, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
        OUTLINED_FUNCTION_289_0();
        if (!(!v6 & v5))
        {
          v9 = OUTLINED_FUNCTION_4_2();
          sub_1D84EE594(v9, v10, v11, v12);
          OUTLINED_FUNCTION_289_0();
          if (!(!v6 & v5))
          {
            v13 = OUTLINED_FUNCTION_4_2();
            sub_1D84EE594(v13, v14, v15, v16);
            OUTLINED_FUNCTION_289_0();
            if (!(!v6 & v5))
            {
              sub_1D84EE594(319, &qword_1ECA3A088, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
              OUTLINED_FUNCTION_289_0();
              if (!(!v6 & v5))
              {
                OUTLINED_FUNCTION_413();
                swift_cvw_initStructMetadataWithLayoutString();
                return 0;
              }
            }
          }
        }
      }
    }
  }

  return v0;
}

void sub_1D84EDCD8()
{
  if (!qword_1EE0E0068)
  {
    v0 = sub_1D85811C8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE0E0068);
    }
  }
}

void sub_1D84EDD44(uint64_t a1)
{
  sub_1D84EDDB8();
  if (v1 <= 0x3F)
  {
    sub_1D84EDDE0();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

ValueMetadata *sub_1D84EDDB8()
{
  result = qword_1EE0E0150;
  if (!qword_1EE0E0150)
  {
    result = &type metadata for LeaderboardScore;
    atomic_store(&type metadata for LeaderboardScore, &qword_1EE0E0150);
  }

  return result;
}

void sub_1D84EDDE0()
{
  if (!qword_1EE0E0148)
  {
    v0 = type metadata accessor for AchievementProgress(0);
    if (!v1)
    {
      atomic_store(v0, &qword_1EE0E0148);
    }
  }
}

uint64_t sub_1D84EDE28(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_226(-1);
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return OUTLINED_FUNCTION_226(*a1 + 254);
  }

  v3 = *(a1 + 16);
  if (v3 > 1)
  {
    return OUTLINED_FUNCTION_226(v3 ^ 0xFF);
  }

  else
  {
    return OUTLINED_FUNCTION_226(-1);
  }
}

uint64_t sub_1D84EDE64(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      return OUTLINED_FUNCTION_277_0(result, -a2);
    }
  }

  return result;
}

void sub_1D84EDF04()
{
  sub_1D8449F34(319, &qword_1EE0E00A0, &qword_1ECA3A090, &unk_1D859C228);
  if (v0 <= 0x3F)
  {
    sub_1D84EDCD8();
    if (v1 <= 0x3F)
    {
      v2 = MEMORY[0x1E69E6158];
      v3 = OUTLINED_FUNCTION_4_2();
      sub_1D84EE594(v3, v4, v2, v5);
      if (v6 <= 0x3F)
      {
        sub_1D8580EA8();
        if (v7 <= 0x3F)
        {
          sub_1D84EE134(319, &qword_1EE0E02E8, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
          if (v8 <= 0x3F)
          {
            sub_1D84EE134(319, &qword_1EE0E0050, type metadata accessor for GameActivityRuntimeStat, MEMORY[0x1E69E62F8]);
            if (v9 <= 0x3F)
            {
              sub_1D84EE198(319);
              if (v10 <= 0x3F)
              {
                sub_1D84EE23C(319);
                if (v11 <= 0x3F)
                {
                  sub_1D8449F34(319, &qword_1EE0E0088, &qword_1ECA38A18, &qword_1D8590940);
                  if (v12 <= 0x3F)
                  {
                    v13 = OUTLINED_FUNCTION_4_2();
                    sub_1D84EE594(v13, v14, v15, v16);
                    if (v17 <= 0x3F)
                    {
                      OUTLINED_FUNCTION_413();
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

void sub_1D84EE134(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1D84EE198(uint64_t a1)
{
  if (!qword_1EE0E0030)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA389B8, &qword_1D8590B30);
    sub_1D848211C(&qword_1EE0E0090);
    v1 = sub_1D8581638();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE0E0030);
    }
  }
}

void sub_1D84EE23C(uint64_t a1)
{
  if (!qword_1EE0E0070)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA389B8, &qword_1D8590B30);
    sub_1D848211C(&qword_1EE0E0090);
    v1 = sub_1D85811C8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE0E0070);
    }
  }
}

void __swift_store_extra_inhabitant_indexTm()
{
  OUTLINED_FUNCTION_319();
  if (v4)
  {
    *(v1 + 8) = (v0 - 1);
  }

  else
  {
    v5 = v2;
    v3(0);
    v6 = OUTLINED_FUNCTION_288_1(*(v5 + 20));

    __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
  }
}

void sub_1D84EE390()
{
  type metadata accessor for GameActivityInstance(319);
  if (v0 <= 0x3F)
  {
    v1 = OUTLINED_FUNCTION_4_2();
    sub_1D84EE594(v1, v2, v3, v4);
    if (v5 <= 0x3F)
    {
      OUTLINED_FUNCTION_413();
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1D84EE454()
{
  v1 = OUTLINED_FUNCTION_4_2();
  sub_1D84EE594(v1, v2, v3, v4);
  OUTLINED_FUNCTION_289_0();
  if (!(!v6 & v5))
  {
    sub_1D84EE134(319, &qword_1ECA3A098, type metadata accessor for GameActivityInstance, MEMORY[0x1E69E6720]);
    if (v8 > 0x3F)
    {
      return v7;
    }

    v9 = OUTLINED_FUNCTION_4_2();
    sub_1D84EE594(v9, v10, v11, v12);
    if (v13 > 0x3F)
    {
      return v7;
    }

    else
    {
      sub_1D84EDCD8();
      OUTLINED_FUNCTION_289_0();
      if (!(!v6 & v5))
      {
        v14 = OUTLINED_FUNCTION_4_2();
        sub_1D84EE594(v14, v15, v16, v17);
        OUTLINED_FUNCTION_289_0();
        if (!(!v6 & v5))
        {
          OUTLINED_FUNCTION_413();
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return v0;
}

void sub_1D84EE594(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1D84EE5E8(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_226(-1);
  }

  if (a2 < 0xF6)
  {
    goto LABEL_17;
  }

  if (a2 + 10 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 10) >> 8 < 0xFF)
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
      return OUTLINED_FUNCTION_226((*a1 | (v4 << 8)) - 11);
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

      return OUTLINED_FUNCTION_226((*a1 | (v4 << 8)) - 11);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return OUTLINED_FUNCTION_226((*a1 | (v4 << 8)) - 11);
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xB;
  v8 = v6 - 11;
  if (!v7)
  {
    v8 = -1;
  }

  return OUTLINED_FUNCTION_226(v8);
}

_BYTE *sub_1D84EE670(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF6)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF5)
  {
    v6 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
    switch(v5)
    {
      case 1:
        result = OUTLINED_FUNCTION_282(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_280(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = OUTLINED_FUNCTION_281(result, v6);
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          result = OUTLINED_FUNCTION_262(result, a2 + 10);
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_1D84EE740(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result = OUTLINED_FUNCTION_282(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_280(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = OUTLINED_FUNCTION_281(result, v6);
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          result = OUTLINED_FUNCTION_262(result, a2 + 2);
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for GameActivityInstance.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_226(-1);
  }

  if (a2 < 0xEF)
  {
    goto LABEL_17;
  }

  if (a2 + 17 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 17) >> 8 < 0xFF)
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
      return OUTLINED_FUNCTION_226((*a1 | (v4 << 8)) - 18);
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

      return OUTLINED_FUNCTION_226((*a1 | (v4 << 8)) - 18);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return OUTLINED_FUNCTION_226((*a1 | (v4 << 8)) - 18);
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x12;
  v8 = v6 - 18;
  if (!v7)
  {
    v8 = -1;
  }

  return OUTLINED_FUNCTION_226(v8);
}

_BYTE *storeEnumTagSinglePayload for GameActivityInstance.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 17 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 17) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xEF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xEE)
  {
    v6 = ((a2 - 239) >> 8) + 1;
    *result = a2 + 17;
    switch(v5)
    {
      case 1:
        result = OUTLINED_FUNCTION_282(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_280(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = OUTLINED_FUNCTION_281(result, v6);
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          result = OUTLINED_FUNCTION_262(result, a2 + 17);
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for GameActivityDefinition.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_226(-1);
  }

  if (a2 < 0xEB)
  {
    goto LABEL_17;
  }

  if (a2 + 21 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 21) >> 8 < 0xFF)
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
      return OUTLINED_FUNCTION_226((*a1 | (v4 << 8)) - 22);
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

      return OUTLINED_FUNCTION_226((*a1 | (v4 << 8)) - 22);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return OUTLINED_FUNCTION_226((*a1 | (v4 << 8)) - 22);
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x16;
  v8 = v6 - 22;
  if (!v7)
  {
    v8 = -1;
  }

  return OUTLINED_FUNCTION_226(v8);
}

_BYTE *storeEnumTagSinglePayload for GameActivityDefinition.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 21 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 21) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xEB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xEA)
  {
    v6 = ((a2 - 235) >> 8) + 1;
    *result = a2 + 21;
    switch(v5)
    {
      case 1:
        result = OUTLINED_FUNCTION_282(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_280(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = OUTLINED_FUNCTION_281(result, v6);
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          result = OUTLINED_FUNCTION_262(result, a2 + 21);
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ListGamesRequest.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_226(-1);
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
      return OUTLINED_FUNCTION_226((*a1 | (v4 << 8)) - 6);
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

      return OUTLINED_FUNCTION_226((*a1 | (v4 << 8)) - 6);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return OUTLINED_FUNCTION_226((*a1 | (v4 << 8)) - 6);
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

  return OUTLINED_FUNCTION_226(v8);
}

_BYTE *_s12GameServices18GameActivityFilterO10CodingKeysOwst_0(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
    switch(v5)
    {
      case 1:
        result = OUTLINED_FUNCTION_282(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_280(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = OUTLINED_FUNCTION_281(result, v6);
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          result = OUTLINED_FUNCTION_262(result, a2 + 5);
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_1D84EED58(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result = OUTLINED_FUNCTION_282(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_280(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = OUTLINED_FUNCTION_281(result, v6);
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          result = OUTLINED_FUNCTION_262(result, a2 + 1);
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1D84EEE28()
{
  result = qword_1ECA49770[0];
  if (!qword_1ECA49770[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECA49770);
  }

  return result;
}

unint64_t sub_1D84EEE80()
{
  result = qword_1ECA49980[0];
  if (!qword_1ECA49980[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECA49980);
  }

  return result;
}

unint64_t sub_1D84EEED8()
{
  result = qword_1ECA49B90[0];
  if (!qword_1ECA49B90[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECA49B90);
  }

  return result;
}

unint64_t sub_1D84EEF30()
{
  result = qword_1ECA49DA0[0];
  if (!qword_1ECA49DA0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECA49DA0);
  }

  return result;
}

unint64_t sub_1D84EEF88()
{
  result = qword_1ECA49FB0[0];
  if (!qword_1ECA49FB0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECA49FB0);
  }

  return result;
}

unint64_t sub_1D84EEFE0()
{
  result = qword_1ECA4A1C0[0];
  if (!qword_1ECA4A1C0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECA4A1C0);
  }

  return result;
}

unint64_t sub_1D84EF038()
{
  result = qword_1ECA4A3D0[0];
  if (!qword_1ECA4A3D0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECA4A3D0);
  }

  return result;
}

unint64_t sub_1D84EF090()
{
  result = qword_1ECA4A5E0[0];
  if (!qword_1ECA4A5E0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECA4A5E0);
  }

  return result;
}

unint64_t sub_1D84EF0E8()
{
  result = qword_1ECA4A7F0[0];
  if (!qword_1ECA4A7F0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECA4A7F0);
  }

  return result;
}

unint64_t sub_1D84EF140()
{
  result = qword_1ECA4A900[0];
  if (!qword_1ECA4A900[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECA4A900);
  }

  return result;
}

unint64_t sub_1D84EF198()
{
  result = qword_1ECA4AA10[0];
  if (!qword_1ECA4AA10[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECA4AA10);
  }

  return result;
}

unint64_t sub_1D84EF1F0()
{
  result = qword_1ECA4AB20[0];
  if (!qword_1ECA4AB20[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECA4AB20);
  }

  return result;
}

unint64_t sub_1D84EF248()
{
  result = qword_1ECA4AC30[0];
  if (!qword_1ECA4AC30[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECA4AC30);
  }

  return result;
}

unint64_t sub_1D84EF2A0()
{
  result = qword_1ECA4AD40[0];
  if (!qword_1ECA4AD40[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECA4AD40);
  }

  return result;
}

unint64_t sub_1D84EF2F8()
{
  result = qword_1ECA4AE50[0];
  if (!qword_1ECA4AE50[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECA4AE50);
  }

  return result;
}

unint64_t sub_1D84EF350()
{
  result = qword_1ECA4AF60[0];
  if (!qword_1ECA4AF60[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECA4AF60);
  }

  return result;
}

unint64_t sub_1D84EF3A8()
{
  result = qword_1ECA4B170[0];
  if (!qword_1ECA4B170[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECA4B170);
  }

  return result;
}

unint64_t sub_1D84EF400()
{
  result = qword_1ECA4B380[0];
  if (!qword_1ECA4B380[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECA4B380);
  }

  return result;
}

unint64_t sub_1D84EF458()
{
  result = qword_1ECA4B590[0];
  if (!qword_1ECA4B590[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECA4B590);
  }

  return result;
}

unint64_t sub_1D84EF4B0()
{
  result = qword_1ECA4B7A0[0];
  if (!qword_1ECA4B7A0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECA4B7A0);
  }

  return result;
}

unint64_t sub_1D84EF508()
{
  result = qword_1ECA4B9B0[0];
  if (!qword_1ECA4B9B0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECA4B9B0);
  }

  return result;
}

unint64_t sub_1D84EF560()
{
  result = qword_1ECA4BBC0[0];
  if (!qword_1ECA4BBC0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECA4BBC0);
  }

  return result;
}

unint64_t sub_1D84EF5B8()
{
  result = qword_1ECA4BDD0[0];
  if (!qword_1ECA4BDD0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECA4BDD0);
  }

  return result;
}

unint64_t sub_1D84EF610()
{
  result = qword_1ECA4BFE0[0];
  if (!qword_1ECA4BFE0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECA4BFE0);
  }

  return result;
}

unint64_t sub_1D84EF668()
{
  result = qword_1ECA4C7F0[0];
  if (!qword_1ECA4C7F0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECA4C7F0);
  }

  return result;
}

unint64_t sub_1D84EF6C0()
{
  result = qword_1ECA4CA00[0];
  if (!qword_1ECA4CA00[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECA4CA00);
  }

  return result;
}

unint64_t sub_1D84EF718()
{
  result = qword_1ECA4CC10[0];
  if (!qword_1ECA4CC10[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECA4CC10);
  }

  return result;
}

unint64_t sub_1D84EF770()
{
  result = qword_1ECA4CD20;
  if (!qword_1ECA4CD20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA4CD20);
  }

  return result;
}

unint64_t sub_1D84EF7C8()
{
  result = qword_1ECA4CD28[0];
  if (!qword_1ECA4CD28[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECA4CD28);
  }

  return result;
}

unint64_t sub_1D84EF820()
{
  result = qword_1ECA4CDB0;
  if (!qword_1ECA4CDB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA4CDB0);
  }

  return result;
}

unint64_t sub_1D84EF878()
{
  result = qword_1ECA4CDB8[0];
  if (!qword_1ECA4CDB8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECA4CDB8);
  }

  return result;
}

unint64_t sub_1D84EF8D0()
{
  result = qword_1ECA4CE40;
  if (!qword_1ECA4CE40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA4CE40);
  }

  return result;
}

unint64_t sub_1D84EF928()
{
  result = qword_1ECA4CE48[0];
  if (!qword_1ECA4CE48[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECA4CE48);
  }

  return result;
}

unint64_t sub_1D84EF980()
{
  result = qword_1ECA4CED0;
  if (!qword_1ECA4CED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA4CED0);
  }

  return result;
}

unint64_t sub_1D84EF9D8()
{
  result = qword_1ECA4CED8[0];
  if (!qword_1ECA4CED8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECA4CED8);
  }

  return result;
}

unint64_t sub_1D84EFA30()
{
  result = qword_1ECA4CF60;
  if (!qword_1ECA4CF60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA4CF60);
  }

  return result;
}

unint64_t sub_1D84EFA88()
{
  result = qword_1ECA4CF68[0];
  if (!qword_1ECA4CF68[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECA4CF68);
  }

  return result;
}

unint64_t sub_1D84EFAE0()
{
  result = qword_1ECA4CFF0;
  if (!qword_1ECA4CFF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA4CFF0);
  }

  return result;
}

unint64_t sub_1D84EFB38()
{
  result = qword_1ECA4CFF8[0];
  if (!qword_1ECA4CFF8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECA4CFF8);
  }

  return result;
}

unint64_t sub_1D84EFB90()
{
  result = qword_1ECA4D080;
  if (!qword_1ECA4D080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA4D080);
  }

  return result;
}

unint64_t sub_1D84EFBE8()
{
  result = qword_1ECA4D088[0];
  if (!qword_1ECA4D088[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECA4D088);
  }

  return result;
}

unint64_t sub_1D84EFC40()
{
  result = qword_1ECA4D110;
  if (!qword_1ECA4D110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA4D110);
  }

  return result;
}

unint64_t sub_1D84EFC98()
{
  result = qword_1ECA4D118[0];
  if (!qword_1ECA4D118[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECA4D118);
  }

  return result;
}

unint64_t sub_1D84EFCF0()
{
  result = qword_1ECA4D1A0;
  if (!qword_1ECA4D1A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA4D1A0);
  }

  return result;
}

unint64_t sub_1D84EFD48()
{
  result = qword_1ECA4D1A8[0];
  if (!qword_1ECA4D1A8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECA4D1A8);
  }

  return result;
}

unint64_t sub_1D84EFDA0()
{
  result = qword_1ECA4D230;
  if (!qword_1ECA4D230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA4D230);
  }

  return result;
}

unint64_t sub_1D84EFDF8()
{
  result = qword_1ECA4D238[0];
  if (!qword_1ECA4D238[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECA4D238);
  }

  return result;
}

unint64_t sub_1D84EFE50()
{
  result = qword_1ECA4D2C0;
  if (!qword_1ECA4D2C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA4D2C0);
  }

  return result;
}

unint64_t sub_1D84EFEA8()
{
  result = qword_1ECA4D2C8[0];
  if (!qword_1ECA4D2C8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECA4D2C8);
  }

  return result;
}

unint64_t sub_1D84EFF00()
{
  result = qword_1ECA4D350;
  if (!qword_1ECA4D350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA4D350);
  }

  return result;
}

unint64_t sub_1D84EFF58()
{
  result = qword_1ECA4D358[0];
  if (!qword_1ECA4D358[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECA4D358);
  }

  return result;
}

unint64_t sub_1D84EFFB0()
{
  result = qword_1ECA4D3E0;
  if (!qword_1ECA4D3E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA4D3E0);
  }

  return result;
}

unint64_t sub_1D84F0008()
{
  result = qword_1ECA4D3E8[0];
  if (!qword_1ECA4D3E8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECA4D3E8);
  }

  return result;
}

unint64_t sub_1D84F0060()
{
  result = qword_1ECA4D470;
  if (!qword_1ECA4D470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA4D470);
  }

  return result;
}

unint64_t sub_1D84F00B8()
{
  result = qword_1ECA4D478;
  if (!qword_1ECA4D478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA4D478);
  }

  return result;
}

unint64_t sub_1D84F0110()
{
  result = qword_1ECA4D500;
  if (!qword_1ECA4D500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA4D500);
  }

  return result;
}

unint64_t sub_1D84F0168()
{
  result = qword_1ECA4D508[0];
  if (!qword_1ECA4D508[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECA4D508);
  }

  return result;
}

unint64_t sub_1D84F01C0()
{
  result = qword_1ECA4D590;
  if (!qword_1ECA4D590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA4D590);
  }

  return result;
}

unint64_t sub_1D84F0218()
{
  result = qword_1ECA4D598[0];
  if (!qword_1ECA4D598[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECA4D598);
  }

  return result;
}

unint64_t sub_1D84F0270()
{
  result = qword_1ECA4D620;
  if (!qword_1ECA4D620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA4D620);
  }

  return result;
}

unint64_t sub_1D84F02C8()
{
  result = qword_1ECA4D628[0];
  if (!qword_1ECA4D628[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECA4D628);
  }

  return result;
}

unint64_t sub_1D84F0320()
{
  result = qword_1EE0E1190;
  if (!qword_1EE0E1190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0E1190);
  }

  return result;
}

unint64_t sub_1D84F0378()
{
  result = qword_1EE0E1198;
  if (!qword_1EE0E1198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0E1198);
  }

  return result;
}

unint64_t sub_1D84F03D0()
{
  result = qword_1ECA4D6B0;
  if (!qword_1ECA4D6B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA4D6B0);
  }

  return result;
}

unint64_t sub_1D84F0428()
{
  result = qword_1ECA4D6B8[0];
  if (!qword_1ECA4D6B8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECA4D6B8);
  }

  return result;
}

unint64_t sub_1D84F0480()
{
  result = qword_1ECA4D740;
  if (!qword_1ECA4D740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA4D740);
  }

  return result;
}

unint64_t sub_1D84F04D8()
{
  result = qword_1ECA4D748[0];
  if (!qword_1ECA4D748[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECA4D748);
  }

  return result;
}

unint64_t sub_1D84F0530()
{
  result = qword_1ECA4D7D0;
  if (!qword_1ECA4D7D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA4D7D0);
  }

  return result;
}

unint64_t sub_1D84F0588()
{
  result = qword_1ECA4D7D8[0];
  if (!qword_1ECA4D7D8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECA4D7D8);
  }

  return result;
}

unint64_t sub_1D84F05E0()
{
  result = qword_1ECA4D860;
  if (!qword_1ECA4D860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA4D860);
  }

  return result;
}

unint64_t sub_1D84F0638()
{
  result = qword_1ECA4D868[0];
  if (!qword_1ECA4D868[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECA4D868);
  }

  return result;
}

unint64_t sub_1D84F0690()
{
  result = qword_1ECA4D8F0;
  if (!qword_1ECA4D8F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA4D8F0);
  }

  return result;
}

unint64_t sub_1D84F06E8()
{
  result = qword_1ECA4D8F8[0];
  if (!qword_1ECA4D8F8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECA4D8F8);
  }

  return result;
}

unint64_t sub_1D84F0740()
{
  result = qword_1ECA4D980;
  if (!qword_1ECA4D980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA4D980);
  }

  return result;
}

unint64_t sub_1D84F0798()
{
  result = qword_1ECA4D988[0];
  if (!qword_1ECA4D988[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECA4D988);
  }

  return result;
}

unint64_t sub_1D84F07F0()
{
  result = qword_1ECA4DA10;
  if (!qword_1ECA4DA10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA4DA10);
  }

  return result;
}

unint64_t sub_1D84F0848()
{
  result = qword_1ECA4DA18[0];
  if (!qword_1ECA4DA18[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECA4DA18);
  }

  return result;
}

unint64_t sub_1D84F08A0()
{
  result = qword_1ECA4DAA0;
  if (!qword_1ECA4DAA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA4DAA0);
  }

  return result;
}

unint64_t sub_1D84F08F8()
{
  result = qword_1ECA4DAA8[0];
  if (!qword_1ECA4DAA8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECA4DAA8);
  }

  return result;
}

unint64_t sub_1D84F0950()
{
  result = qword_1ECA4DB30;
  if (!qword_1ECA4DB30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA4DB30);
  }

  return result;
}

unint64_t sub_1D84F09A8()
{
  result = qword_1ECA4DB38[0];
  if (!qword_1ECA4DB38[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECA4DB38);
  }

  return result;
}

unint64_t sub_1D84F09FC()
{
  result = qword_1EE0E0620;
  if (!qword_1EE0E0620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0E0620);
  }

  return result;
}

unint64_t sub_1D84F0A50()
{
  result = qword_1ECA3A0A8;
  if (!qword_1ECA3A0A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA3A0A8);
  }

  return result;
}

unint64_t sub_1D84F0AA4()
{
  result = qword_1ECA3A0B0;
  if (!qword_1ECA3A0B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA3A0B0);
  }

  return result;
}

unint64_t sub_1D84F0AF8()
{
  result = qword_1ECA3A0B8;
  if (!qword_1ECA3A0B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA3A0B8);
  }

  return result;
}

unint64_t OUTLINED_FUNCTION_46_0(uint64_t a1)
{

  return sub_1D84C49BC(a1);
}

uint64_t OUTLINED_FUNCTION_70_0()
{

  return sub_1D8581AB8();
}

uint64_t OUTLINED_FUNCTION_78_1()
{

  return sub_1D8581A58();
}

uint64_t OUTLINED_FUNCTION_92_0(uint64_t a1, uint64_t a2)
{

  return sub_1D8581878();
}

uint64_t OUTLINED_FUNCTION_101_0(uint64_t a1, uint64_t a2)
{

  return sub_1D8581988();
}

unint64_t OUTLINED_FUNCTION_102_1(uint64_t a1)
{

  return sub_1D843D7B8(a1);
}

unint64_t OUTLINED_FUNCTION_108_2(uint64_t a1)
{

  return sub_1D84BB220(a1);
}

__n128 OUTLINED_FUNCTION_109_0()
{
  v2 = v0[1].n128_u8[0];
  result = *v0;
  *(v1 - 48) = *v0;
  *(v1 - 32) = v2;
  return result;
}

uint64_t OUTLINED_FUNCTION_113_0(uint64_t a1, uint64_t a2)
{

  return sub_1D8581988();
}

void OUTLINED_FUNCTION_167_0(int a1@<W8>)
{
  *(v1 - 256) = a1;
  *(v2 - 260) = a1;
  *(v2 - 72) = a1;
}

uint64_t OUTLINED_FUNCTION_173_0(uint64_t a1, uint64_t a2)
{

  return sub_1D8581878();
}

void OUTLINED_FUNCTION_176_1()
{
  *(v0 - 552) = 0;
  *(v0 - 520) = 0;
  *(v0 - 584) = 0;
  *(v0 - 576) = 0;
  *(v0 - 568) = 0;
  *(v0 - 560) = 0;
  *(v0 - 528) = 0;
  *(v0 - 512) = 0;
  *(v0 - 288) = 0;
  *(v0 - 272) = 0;
}

uint64_t OUTLINED_FUNCTION_207_2@<X0>(uint64_t a1@<X8>)
{
  *(v2 + a1) = v1;
  v5 = (v2 + *(v3 + 72));
  v6 = *(v4 - 368);
  *v5 = *(v4 - 360);
  v5[1] = v6;
  return v2 + *(v3 + 36);
}

uint64_t OUTLINED_FUNCTION_208_1(uint64_t a1, uint64_t a2)
{

  return sub_1D8581878();
}

void OUTLINED_FUNCTION_229_2(void *a1@<X8>)
{
  v3 = *(v1 - 256);
  *a1 = v2;
  a1[1] = v3;
}

void OUTLINED_FUNCTION_268_1(uint64_t a1@<X8>)
{
  v2 = v1 + a1;
  *v2 = 0;
  *(v2 + 8) = 0;
  *(v2 + 16) = -1;
}

uint64_t OUTLINED_FUNCTION_271_1(uint64_t a1)
{

  return sub_1D8581AB8();
}

void OUTLINED_FUNCTION_330_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v9 - 216) = v8;
  *(v9 - 256) = a7;
  *(v9 - 248) = a8;
  *(v9 - 264) = a6;
  *(v9 - 272) = a4;
  *(v9 - 208) = a2;
}

uint64_t OUTLINED_FUNCTION_347_0(uint64_t a1)
{
  v3 = *(v1 - 168);
  *(v1 - 360) = *(v1 - 176);
  *(v1 - 368) = v3;

  return sub_1D8580E98();
}

uint64_t OUTLINED_FUNCTION_350_0()
{

  return sub_1D85811E8();
}

void *OUTLINED_FUNCTION_351_0()
{

  return sub_1D8581958();
}

void OUTLINED_FUNCTION_357_0(uint64_t a1@<X8>)
{
  v2 = (v1 + a1);
  *v2 = 0;
  v2[1] = 0;
}

uint64_t OUTLINED_FUNCTION_377_0(uint64_t a1)
{

  return sub_1D8581BB8();
}

unint64_t OUTLINED_FUNCTION_382_0(uint64_t a1)
{

  return sub_1D84C49BC(a1);
}

void OUTLINED_FUNCTION_384_0(void *a1@<X8>)
{
  v3 = *(v1 - 256);
  v4 = *(v2 - 256);
  *a1 = v3;
  a1[1] = v4;
}

uint64_t OUTLINED_FUNCTION_396_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return sub_1D8581038();
}

void OUTLINED_FUNCTION_402_0()
{
  v1 = *(v0 - 152);
  *(v0 - 176) = *(v0 - 160);
  *(v0 - 168) = v1;
}

uint64_t OUTLINED_FUNCTION_417_0@<X0>(uint64_t a1@<X8>)
{
  v3 = v2 + a1;
  result = *v3;
  v5 = *(v3 + 8);
  *v1 = *v3;
  *(v1 + 8) = v5;
  *(v1 + 16) = *(v3 + 16);
  return result;
}

uint64_t OUTLINED_FUNCTION_425_0()
{

  return sub_1D8581B78();
}

uint64_t OUTLINED_FUNCTION_426_0()
{

  return sub_1D8581B78();
}

uint64_t OUTLINED_FUNCTION_427_0()
{
}

uint64_t OUTLINED_FUNCTION_433_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return sub_1D8581038();
}

uint64_t OUTLINED_FUNCTION_436_0@<X0>(uint64_t a1@<X8>)
{
  *(v2 + a1) = v1;
  v5 = *v3;
  v6 = *(v3 + 8);
  v7 = *(v3 + 16);

  return sub_1D84EB9AC(v5, v6, v7);
}

char *OUTLINED_FUNCTION_437_0@<X0>(uint64_t a1@<X8>)
{
  *(v2 - 152) = a1;

  return sub_1D84E8374(0, v1, 0);
}

uint64_t OUTLINED_FUNCTION_439_0()
{

  return sub_1D847C204();
}

void *OUTLINED_FUNCTION_440_0@<X0>(uint64_t a1@<X8>)
{

  return memcpy((a1 + 16), (v1 + 16), 0x60uLL);
}

uint64_t OUTLINED_FUNCTION_441_0()
{

  return sub_1D8580D68();
}

uint64_t OUTLINED_FUNCTION_442_0()
{
}

uint64_t OUTLINED_FUNCTION_446_0(uint64_t *a1)
{
  v3 = *a1;
  v4 = a1[1];
  *(v1 - 416) = v3;
  *(v1 - 400) = v4;
}

uint64_t OUTLINED_FUNCTION_449_0()
{
  v2 = *(v0 - 136);
  *(v0 - 144) = *(v0 - 144);
  *(v0 - 136) = v2;
}

uint64_t OUTLINED_FUNCTION_452_0()
{
}

uint64_t OUTLINED_FUNCTION_453_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return sub_1D8581038();
}

uint64_t OUTLINED_FUNCTION_455_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[14] = a5;
  v6[15] = v5;
  v6[12] = a3;
  v6[13] = a4;
  v6[11] = a1;

  return sub_1D8581018();
}

uint64_t OUTLINED_FUNCTION_467_0()
{
}

uint64_t OUTLINED_FUNCTION_472_0@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = (v3 + a3);
  *v4 = result;
  v4[1] = a2;
  return result;
}

uint64_t OUTLINED_FUNCTION_473_0@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v4 = v3 + a3;
  *v4 = result;
  *(v4 + 8) = a2 & 1;
  return result;
}

uint64_t OUTLINED_FUNCTION_507_0(uint64_t a1)
{
  type metadata accessor for DefaultGameActivityEnvironment(a1);

  return sub_1D8580D78();
}

void OUTLINED_FUNCTION_509_0()
{

  Ref<A>.init(internalID:)(v0);
}

uint64_t OUTLINED_FUNCTION_513_0@<X0>(uint64_t a1@<X8>)
{
  *(v1 + *(v2 + 60)) = a1;
  v5 = *v3;
  v6 = *(v3 + 8);
  v7 = *(v3 + 16);

  return sub_1D84EB9AC(v5, v6, v7);
}

uint64_t OUTLINED_FUNCTION_516_0(uint64_t a1, uint64_t a2)
{

  return sub_1D8581988();
}

uint64_t OUTLINED_FUNCTION_519_0(uint64_t a1, uint64_t a2)
{

  return sub_1D8581988();
}

uint64_t OUTLINED_FUNCTION_520_0()
{
}

uint64_t OUTLINED_FUNCTION_521_0()
{
}

uint64_t OUTLINED_FUNCTION_524_0(uint64_t a1, uint64_t a2, ...)
{

  return sub_1D85811E8();
}

uint64_t OUTLINED_FUNCTION_525_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{

  return sub_1D85811E8();
}

uint64_t OUTLINED_FUNCTION_526_0()
{
  v2 = *v0;
  v3 = *(v0 + 8);
  v4 = *(v0 + 16);

  return sub_1D84EB9AC(v2, v3, v4);
}

uint64_t OUTLINED_FUNCTION_527_0()
{
}

uint64_t OUTLINED_FUNCTION_528()
{

  return sub_1D84EC2E4();
}

uint64_t sub_1D84F1F10(uint64_t a1, uint64_t a2)
{
  v3 = sub_1D8581268();
  MEMORY[0x1EEE9AC00](v3 - 8);
  if (!a2)
  {
    return 0;
  }

  v4 = sub_1D8580DC8();
  v6 = v5;

  if (v6 >> 60 == 15)
  {
    return 0;
  }

  sub_1D8581258();
  v7 = sub_1D8581248();
  v9 = v8;
  sub_1D8443C38(v4, v6);
  if (!v9)
  {
    return 0;
  }

  return v7;
}

uint64_t sub_1D84F1FF4(uint64_t a1, unint64_t a2)
{

  v4 = sub_1D84F2068(a1, a2);
  v6 = v5;
  v7 = sub_1D8580E38();
  sub_1D843F6E8(v4, v6);
  return v7;
}

uint64_t sub_1D84F2068(uint64_t a1, unint64_t a2)
{
  v4 = 0;
  v45 = *MEMORY[0x1E69E9840];
  v39[0] = a1;
  v39[1] = a2;
  *&v42 = a1;
  *(&v42 + 1) = a2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA3A100, &qword_1D859ED90);
  if (swift_dynamicCast())
  {
    sub_1D84F2D50(v40, &v43);
    __swift_project_boxed_opaque_existential_1(&v43, v44);
    sub_1D8580D08();
    v40[0] = v42;
    __swift_destroy_boxed_opaque_existential_1(&v43);
    goto LABEL_59;
  }

  v41 = 0;
  memset(v40, 0, sizeof(v40));
  sub_1D84F2560(v40);
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_63;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    *&v40[0] = a1;
    *(&v40[0] + 1) = a2 & 0xFFFFFFFFFFFFFFLL;
    v5 = v40;
    v6 = HIBYTE(a2) & 0xF;
  }

  else if ((a1 & 0x1000000000000000) != 0)
  {
    v5 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v6 = a1 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v5 = sub_1D85817D8();
  }

  sub_1D84F25C8(v5, v6, &v43);
  v7 = *(&v43 + 1);
  v8 = v43;
  if (*(&v43 + 1) >> 60 != 15)
  {
    v40[0] = v43;
    goto LABEL_59;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v9 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v9 = a1 & 0xFFFFFFFFFFFFLL;
  }

LABEL_12:
  *&v40[0] = MEMORY[0x1DA718480](v9);
  *(&v40[0] + 1) = v10;
  MEMORY[0x1EEE9AC00](*&v40[0]);
  v34[2] = v39;
  v11 = sub_1D84F26E4(sub_1D84F2D34, v34);
  v13 = *(&v40[0] + 1) >> 62;
  v14 = v11;
  v16 = v15;
  v18 = v17;
  v19 = BYTE14(v40[0]);
  switch(*(&v40[0] + 1) >> 62)
  {
    case 1:
      LODWORD(v20) = DWORD1(v40[0]) - LODWORD(v40[0]);
      if (__OFSUB__(DWORD1(v40[0]), v40[0]))
      {
        goto LABEL_66;
      }

      v20 = v20;
LABEL_22:
      if (v12 == v20)
      {
        goto LABEL_23;
      }

      if (v13 == 2)
      {
        v19 = *(*&v40[0] + 24);
      }

      else if (v13 == 1)
      {
        v19 = *&v40[0] >> 32;
      }

      goto LABEL_56;
    case 2:
      v22 = *(*&v40[0] + 16);
      v21 = *(*&v40[0] + 24);
      v23 = __OFSUB__(v21, v22);
      v20 = v21 - v22;
      if (!v23)
      {
        goto LABEL_22;
      }

      __break(1u);
LABEL_18:
      if (v12)
      {
        v19 = 0;
LABEL_56:
        if (v19 < v12)
        {
          __break(1u);
LABEL_66:
          __break(1u);
        }

        sub_1D8580DE8();
LABEL_58:

        goto LABEL_59;
      }

LABEL_23:
      v34[4] = v4;
      v35 = v8;
      v36 = v7;
      LOBYTE(v24) = 0;
      if ((v16 & 0x2000000000000000) != 0)
      {
        v25 = HIBYTE(v16) & 0xF;
      }

      else
      {
        v25 = v11 & 0xFFFFFFFFFFFFLL;
      }

      v26 = (v11 >> 59) & 1;
      if ((v16 & 0x1000000000000000) == 0)
      {
        LOBYTE(v26) = 1;
      }

      v27 = 4 << v26;
      v37 = (v16 & 0xFFFFFFFFFFFFFFFLL) + 32;
      v38 = v16 & 0xFFFFFFFFFFFFFFLL;
      *(&v42 + 7) = 0;
      *&v42 = 0;
      break;
    case 3:
      goto LABEL_18;
    default:
      v20 = BYTE14(v40[0]);
      goto LABEL_22;
  }

  while (4 * v25 != v18 >> 14)
  {
    v4 = v18 & 0xC;
    v28 = v18;
    if (v4 == v27)
    {
      v28 = sub_1D84F2C80(v18, v14, v16);
    }

    v29 = v28 >> 16;
    if (v28 >> 16 >= v25)
    {
      __break(1u);
LABEL_61:
      __break(1u);
LABEL_62:
      __break(1u);
LABEL_63:
      v9 = sub_1D8581328();
      v8 = 0;
      v7 = 0xF000000000000000;
      goto LABEL_12;
    }

    if ((v16 & 0x1000000000000000) != 0)
    {
      v31 = sub_1D8581358();
    }

    else if ((v16 & 0x2000000000000000) != 0)
    {
      *&v43 = v14;
      *(&v43 + 1) = v38;
      v31 = *(&v43 + v29);
    }

    else
    {
      v30 = v37;
      if ((v14 & 0x1000000000000000) == 0)
      {
        v30 = sub_1D85817D8();
      }

      v31 = *(v30 + v29);
    }

    if (v4 == v27)
    {
      v18 = sub_1D84F2C80(v18, v14, v16);
      if ((v16 & 0x1000000000000000) == 0)
      {
LABEL_41:
        v18 = (v18 & 0xFFFFFFFFFFFF0000) + 65540;
        goto LABEL_46;
      }
    }

    else if ((v16 & 0x1000000000000000) == 0)
    {
      goto LABEL_41;
    }

    if (v25 <= v18 >> 16)
    {
      goto LABEL_62;
    }

    v18 = sub_1D8581338();
LABEL_46:
    *(&v42 + v24) = v31;
    v24 = v24 + 1;
    if ((v24 >> 8))
    {
      goto LABEL_61;
    }

    if (v24 == 14)
    {
      *&v43 = v42;
      *(&v43 + 6) = *(&v42 + 6);
      sub_1D8580E08();
      LOBYTE(v24) = 0;
    }
  }

  if (v24)
  {
    *&v43 = v42;
    *(&v43 + 6) = *(&v42 + 6);
    sub_1D8580E08();
    sub_1D8443C38(v35, v36);
    goto LABEL_58;
  }

  sub_1D8443C38(v35, v36);
LABEL_59:
  v32 = v40[0];
  sub_1D843DDD8(*&v40[0], *(&v40[0] + 1));

  sub_1D843F6E8(v32, *(&v32 + 1));
  return v32;
}

uint64_t sub_1D84F2560(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA3A108, &qword_1D859ED98);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D84F25C8@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = 0;
  v6 = 0xC000000000000000;
  if (a1 && a2)
  {
    if (a2 <= 14)
    {
      result = sub_1D8580D88();
      v6 = v9 & 0xFFFFFFFFFFFFFFLL;
    }

    else
    {
      sub_1D8580CC8();
      swift_allocObject();
      v8 = sub_1D8580C88();
      if (a2 >= 0x7FFFFFFF)
      {
        sub_1D8580DD8();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = a2;
        v6 = v8 | 0x8000000000000000;
      }

      else
      {
        result = a2 << 32;
        v6 = v8 | 0x4000000000000000;
      }
    }
  }

  *a3 = result;
  a3[1] = v6;
  return result;
}

void *sub_1D84F2690(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6[0] = a3;
  v6[1] = a4;
  v5[2] = v6;
  return sub_1D84F2B68(sub_1D84F2DA8, v5, a1, a2);
}

uint64_t sub_1D84F26E4(void *(*a1)(uint64_t *__return_ptr, char *, char *), uint64_t a2)
{
  v5 = v2;
  v19[2] = *MEMORY[0x1E69E9840];
  v7 = *v2;
  v6 = v2[1];
  switch(v6 >> 62)
  {
    case 1uLL:
      v12 = v6 & 0x3FFFFFFFFFFFFFFFLL;

      sub_1D843F6E8(v7, v6);
      *v5 = xmmword_1D859ED80;
      sub_1D843F6E8(0, 0xC000000000000000);
      v13 = v7 >> 32;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_16;
      }

      if (v13 < v7)
      {
        goto LABEL_23;
      }

      if (sub_1D8580C98() && __OFSUB__(v7, sub_1D8580CB8()))
      {
        goto LABEL_24;
      }

      sub_1D8580CC8();
      swift_allocObject();
      v14 = sub_1D8580C78();

      v12 = v14;
LABEL_16:
      if (v13 < v7)
      {
        __break(1u);
LABEL_23:
        __break(1u);
LABEL_24:
        __break(1u);
      }

      v4 = sub_1D84F2BCC(v7, v7 >> 32, a1);

      v11 = v12 | 0x4000000000000000;
      if (v3)
      {
        goto LABEL_18;
      }

      goto LABEL_20;
    case 2uLL:
      v4 = v6 & 0x3FFFFFFFFFFFFFFFLL;

      sub_1D843F6E8(v7, v6);
      v17 = v7;
      v18 = v6 & 0x3FFFFFFFFFFFFFFFLL;
      *v5 = xmmword_1D859ED80;
      sub_1D843F6E8(0, 0xC000000000000000);
      sub_1D8580D98();
      v7 = v17;
      v10 = sub_1D84F2BCC(*(v17 + 16), *(v17 + 24), a1);
      if (v3)
      {
        v11 = v18 | 0x8000000000000000;
LABEL_18:
        *v5 = v7;
        v5[1] = v11;
      }

      else
      {
        v4 = v10;
        v11 = v18 | 0x8000000000000000;
LABEL_20:
        *v5 = v7;
        v5[1] = v11;
      }

      return v4;
    case 3uLL:
      memset(v19, 0, 15);
      a1(&v17, v19, v19);
      if (!v3)
      {
        return v17;
      }

      return v4;
    default:
      v4 = v7 >> 8;
      sub_1D843F6E8(v7, v6);
      v19[0] = v7;
      LOWORD(v19[1]) = v6;
      BYTE2(v19[1]) = BYTE2(v6);
      BYTE3(v19[1]) = BYTE3(v6);
      BYTE4(v19[1]) = BYTE4(v6);
      BYTE5(v19[1]) = BYTE5(v6);
      BYTE6(v19[1]) = BYTE6(v6);
      a1(&v17, v19, v19 + BYTE6(v6));
      if (!v3)
      {
        v4 = v17;
      }

      v9 = LODWORD(v19[1]) | ((WORD2(v19[1]) | (BYTE6(v19[1]) << 16)) << 32);
      *v5 = v19[0];
      v5[1] = v9;
      return v4;
  }
}

uint64_t sub_1D84F2AA8@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v4 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    v5 = 0xC000000000000000;
    goto LABEL_5;
  }

  if (v4 <= 14)
  {
    result = sub_1D8580D88();
    v5 = v7 & 0xFFFFFFFFFFFFFFLL;
  }

  else if (v4 >= 0x7FFFFFFF)
  {
    result = MEMORY[0x1DA718430]();
    v5 = v8 | 0x8000000000000000;
  }

  else
  {
    result = MEMORY[0x1DA718440]();
    v5 = v6 | 0x4000000000000000;
  }

LABEL_5:
  *a3 = result;
  a3[1] = v5;
  return result;
}

uint64_t sub_1D84F2B20(uint64_t result)
{
  if (result)
  {
    result = sub_1D8581778();
    if ((v1 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_1D84F2B68(void *(*a1)(uint64_t *__return_ptr, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    v6 = a4 - a3;
    v7 = a3;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  result = a1(&v9, v7, v6);
  if (!v4)
  {
    return v9;
  }

  __break(1u);
  return result;
}

char *sub_1D84F2BCC(uint64_t a1, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, char *, char *))
{
  result = sub_1D8580C98();
  if (!result)
  {
    goto LABEL_12;
  }

  v8 = result;
  result = sub_1D8580CB8();
  v9 = a1 - result;
  if (__OFSUB__(a1, result))
  {
    __break(1u);
    goto LABEL_11;
  }

  v10 = __OFSUB__(a2, a1);
  v11 = a2 - a1;
  if (v10)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  v12 = sub_1D8580CA8();
  if (v12 >= v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  result = a3(&v14, &v8[v9], &v8[v9 + v13]);
  if (!v3)
  {
    return v14;
  }

  return result;
}

unint64_t sub_1D84F2C80(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_1D8581368();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x1DA7189D0](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

void *sub_1D84F2CFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X8>)
{
  result = sub_1D84F2690(a1, a2, *a3, a3[1]);
  if (!v4)
  {
    *a4 = result;
    a4[1] = v7;
    a4[2] = v8;
    a4[3] = v9;
  }

  return result;
}

uint64_t sub_1D84F2D50(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_1D84F2D68@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1D84F2B20(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
    a2[3] = v7;
  }

  return result;
}

uint64_t static GameServicesError.== infix(_:_:)()
{
  OUTLINED_FUNCTION_434();
  switch(v6)
  {
    case 1:
      if (v5 != 1)
      {
        goto LABEL_25;
      }

      v26 = OUTLINED_FUNCTION_138();
      sub_1D84EBA88(v26, v27, v28);
      v29 = OUTLINED_FUNCTION_133();
      sub_1D84EBA88(v29, v30, v31);
      v32 = OUTLINED_FUNCTION_138();
      sub_1D84EBA88(v32, v33, v34);
      v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C88, &qword_1D859EDF0);
      if (OUTLINED_FUNCTION_28_2(v35, v36, v37, &type metadata for GameServicesInternalError, v38, v39))
      {
        v40 = MEMORY[0x1DA719660](v3);
        if (OUTLINED_FUNCTION_28_2(v40, v41, v42, &type metadata for GameServicesInternalError, v43, v44))
        {
          v45 = static GameServicesInternalError.== infix(_:_:)();
          v46 = OUTLINED_FUNCTION_138();
          sub_1D84F31AC(v46, v47, v48);
          v49 = OUTLINED_FUNCTION_133();
          sub_1D84F31AC(v49, v50, v51);
          sub_1D84F31EC(v114, v115, v116);
          sub_1D84F31EC(v114, v115, v116);
          return v45 & 1;
        }

        sub_1D84F31EC(v114, v115, v116);
      }

      v90 = sub_1D8580D28();
      v91 = sub_1D8580D28();
      v92 = [v90 domain];
      v93 = sub_1D8581228();
      v95 = v94;

      v113 = v91;
      v96 = [v91 domain];
      v97 = sub_1D8581228();
      v99 = v98;

      if (v93 == v97 && v95 == v99)
      {
      }

      else
      {
        v101 = sub_1D8581AB8();

        if ((v101 & 1) == 0)
        {

          v102 = OUTLINED_FUNCTION_138();
          sub_1D84F31AC(v102, v103, v104);
          v68 = OUTLINED_FUNCTION_133();
          goto LABEL_26;
        }
      }

      v105 = [v90 code];
      v106 = [v113 code];

      v107 = OUTLINED_FUNCTION_138();
      sub_1D84F31AC(v107, v108, v109);
      v110 = OUTLINED_FUNCTION_133();
      sub_1D84F31AC(v110, v111, v112);
      v45 = v105 == v106;
      return v45 & 1;
    case 2:
      if (v5 != 2)
      {
        goto LABEL_25;
      }

      if (v1 != v3 || v0 != v2)
      {
        OUTLINED_FUNCTION_13_1(v1, v0);
        v53 = OUTLINED_FUNCTION_7_3();
        sub_1D84EBA88(v53, v54, 2);
        v55 = OUTLINED_FUNCTION_141();
        sub_1D84EBA88(v55, v56, v57);
        v58 = OUTLINED_FUNCTION_141();
        sub_1D84F31AC(v58, v59, v60);
        v16 = OUTLINED_FUNCTION_183();
        v18 = 2;
        goto LABEL_24;
      }

      sub_1D84EBA88(v1, v0, 2);
      v78 = OUTLINED_FUNCTION_141();
      sub_1D84EBA88(v78, v79, v80);
      v81 = OUTLINED_FUNCTION_141();
      sub_1D84F31AC(v81, v82, v83);
      v75 = OUTLINED_FUNCTION_141();
      goto LABEL_32;
    case 3:
      if (v5 != 3)
      {
        goto LABEL_25;
      }

      if (v1 != v3 || v0 != v2)
      {
        OUTLINED_FUNCTION_13_1(v1, v0);
        v20 = OUTLINED_FUNCTION_7_3();
        v22 = OUTLINED_FUNCTION_3_5(v20, v21, 3);
        v24 = OUTLINED_FUNCTION_3_5(v22, v23, 3);
        sub_1D84F31AC(v24, v25, 3);
        v16 = OUTLINED_FUNCTION_183();
        v18 = 3;
        goto LABEL_24;
      }

      v71 = OUTLINED_FUNCTION_3_5(v1, v0, 3);
      v73 = OUTLINED_FUNCTION_3_5(v71, v72, 3);
      sub_1D84F31AC(v73, v74, 3);
      v75 = OUTLINED_FUNCTION_140();
      goto LABEL_32;
    case 4:
      goto LABEL_25;
    default:
      if (v5)
      {
LABEL_25:
        v62 = OUTLINED_FUNCTION_183();
        v64 = OUTLINED_FUNCTION_3_5(v62, v63, v5);
        v66 = OUTLINED_FUNCTION_3_5(v64, v65, v4);
        sub_1D84F31AC(v66, v67, v4);
        v68 = OUTLINED_FUNCTION_183();
        v70 = v5;
LABEL_26:
        sub_1D84F31AC(v68, v69, v70);
        v45 = 0;
        return v45 & 1;
      }

      if (v1 == v3 && v0 == v2)
      {
        sub_1D84EBA88(v1, v0, 0);
        v84 = OUTLINED_FUNCTION_139();
        sub_1D84EBA88(v84, v85, v86);
        v87 = OUTLINED_FUNCTION_139();
        sub_1D84F31AC(v87, v88, v89);
        v75 = OUTLINED_FUNCTION_139();
LABEL_32:
        sub_1D84F31AC(v75, v76, v77);
        v45 = 1;
        return v45 & 1;
      }

      OUTLINED_FUNCTION_13_1(v1, v0);
      v8 = OUTLINED_FUNCTION_7_3();
      sub_1D84EBA88(v8, v9, 0);
      v10 = OUTLINED_FUNCTION_139();
      sub_1D84EBA88(v10, v11, v12);
      v13 = OUTLINED_FUNCTION_139();
      sub_1D84F31AC(v13, v14, v15);
      v16 = OUTLINED_FUNCTION_183();
      v18 = 0;
LABEL_24:
      sub_1D84F31AC(v16, v17, v18);
      return v4 & 1;
  }
}

uint64_t sub_1D84F31AC(uint64_t a1, uint64_t a2, char a3)
{
  switch(a3)
  {
    case 0:
    case 2:
    case 3:

      break;
    case 1:
      JUMPOUT(0x1DA719650);
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D84F31EC(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 2u)
  {
  }

  return result;
}

uint64_t GameServicesError.errorDescription.getter()
{
  v1 = *v0;
  v2 = *(v0 + 16);
  if (v2 == 3)
  {
  }

  else
  {
    sub_1D84EBA88(v1, *(v0 + 8), v2);
    return sub_1D8581278();
  }

  return v1;
}

uint64_t static GameServicesInternalError.== infix(_:_:)()
{
  OUTLINED_FUNCTION_434();
  switch(v6)
  {
    case 1:
      if (v5 != 1)
      {
        goto LABEL_35;
      }

      if (v1 != v3 || v0 != v2)
      {
        v4 = OUTLINED_FUNCTION_13_1(v1, v0);
        v38 = OUTLINED_FUNCTION_133();
        sub_1D84F34C8(v38, v39, v40);
        v41 = OUTLINED_FUNCTION_138();
        sub_1D84F34C8(v41, v42, v43);
        v44 = OUTLINED_FUNCTION_138();
        sub_1D84F31EC(v44, v45, v46);
        v16 = OUTLINED_FUNCTION_133();
        goto LABEL_30;
      }

      v33 = 1;
      v62 = OUTLINED_FUNCTION_138();
      sub_1D84F34C8(v62, v63, v64);
      v65 = OUTLINED_FUNCTION_138();
      sub_1D84F34C8(v65, v66, v67);
      v68 = OUTLINED_FUNCTION_138();
      sub_1D84F31EC(v68, v69, v70);
      v34 = OUTLINED_FUNCTION_138();
      goto LABEL_38;
    case 2:
      if (v5 != 2)
      {
        goto LABEL_35;
      }

      if (v1 != v3 || v0 != v2)
      {
        OUTLINED_FUNCTION_13_1(v1, v0);
        v20 = OUTLINED_FUNCTION_7_3();
        sub_1D84F34C8(v20, v21, 2u);
        v22 = OUTLINED_FUNCTION_141();
        sub_1D84F34C8(v22, v23, v24);
        v25 = OUTLINED_FUNCTION_141();
        sub_1D84F31EC(v25, v26, v27);
        v16 = OUTLINED_FUNCTION_183();
        v18 = 2;
        goto LABEL_30;
      }

      sub_1D84F34C8(v1, v0, 2u);
      v53 = OUTLINED_FUNCTION_141();
      sub_1D84F34C8(v53, v54, v55);
      v56 = OUTLINED_FUNCTION_141();
      sub_1D84F31EC(v56, v57, v58);
      v59 = OUTLINED_FUNCTION_141();
      goto LABEL_41;
    case 3:
      if (v1 | v0)
      {
        if (v5 != 3 || v3 != 1 || v2 != 0)
        {
LABEL_35:
          v49 = OUTLINED_FUNCTION_183();
          sub_1D84F34C8(v49, v50, v5);
          sub_1D84F34C8(v1, v0, v4);
          sub_1D84F31EC(v1, v0, v4);
          v51 = OUTLINED_FUNCTION_183();
          sub_1D84F31EC(v51, v52, v5);
          return 0;
        }

        v30 = OUTLINED_FUNCTION_140();
        sub_1D84F31EC(v30, v31, v32);
        v33 = 1;
        v34 = 1;
        v35 = 0;
        v36 = 3;
LABEL_38:
        sub_1D84F31EC(v34, v35, v36);
      }

      else
      {
        if (v5 != 3 || (v2 | v3) != 0)
        {
          goto LABEL_35;
        }

        v71 = OUTLINED_FUNCTION_140();
        sub_1D84F31EC(v71, v72, v73);
        v59 = 0;
        v60 = 0;
        v61 = 3;
LABEL_41:
        sub_1D84F31EC(v59, v60, v61);
        return 1;
      }

      return v33;
    default:
      if (v5)
      {
        goto LABEL_35;
      }

      if (v1 == v3 && v0 == v2)
      {
        sub_1D84F34C8(v1, v0, 0);
        v74 = OUTLINED_FUNCTION_139();
        sub_1D84F34C8(v74, v75, v76);
        v77 = OUTLINED_FUNCTION_139();
        sub_1D84F31EC(v77, v78, v79);
        v59 = OUTLINED_FUNCTION_139();
        goto LABEL_41;
      }

      OUTLINED_FUNCTION_13_1(v1, v0);
      v8 = OUTLINED_FUNCTION_7_3();
      sub_1D84F34C8(v8, v9, 0);
      v10 = OUTLINED_FUNCTION_139();
      sub_1D84F34C8(v10, v11, v12);
      v13 = OUTLINED_FUNCTION_139();
      sub_1D84F31EC(v13, v14, v15);
      v16 = OUTLINED_FUNCTION_183();
      v18 = 0;
LABEL_30:
      sub_1D84F31EC(v16, v17, v18);
      return v4 & 1;
  }
}

uint64_t sub_1D84F34C8(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 2u)
  {
  }

  return result;
}

uint64_t sub_1D84F34E4()
{
  sub_1D84F38A0();
  OUTLINED_FUNCTION_10_0();
  result = swift_allocError();
  *v1 = 0;
  *(v1 + 8) = 0;
  *(v1 + 16) = 3;
  qword_1EE0E11B8 = result;
  unk_1EE0E11C0 = 0;
  byte_1EE0E11C8 = 1;
  return result;
}

uint64_t *sub_1D84F3530()
{
  if (_MergedGlobals != -1)
  {
    OUTLINED_FUNCTION_11_1(&_MergedGlobals);
  }

  return &qword_1EE0E11B8;
}

uint64_t static GameServicesError.notYetImplemented.getter()
{
  if (_MergedGlobals != -1)
  {
    OUTLINED_FUNCTION_11_1(&_MergedGlobals);
  }

  v0 = OUTLINED_FUNCTION_17_2(&qword_1EE0E11B8);

  return sub_1D84EBA88(v0, v1, v2);
}

double sub_1D84F35CC()
{
  sub_1D84F38A0();
  OUTLINED_FUNCTION_10_0();
  v0 = swift_allocError();
  *&result = 1;
  *v2 = xmmword_1D859EDA0;
  *(v2 + 16) = 3;
  qword_1EE0E11D0 = v0;
  *algn_1EE0E11D8 = 0;
  byte_1EE0E11E0 = 1;
  return result;
}

uint64_t *sub_1D84F3620()
{
  if (qword_1EE0E11A8 != -1)
  {
    OUTLINED_FUNCTION_15_2(&qword_1EE0E11A8);
  }

  return &qword_1EE0E11D0;
}

uint64_t static GameServicesError.deprecated.getter()
{
  if (qword_1EE0E11A8 != -1)
  {
    OUTLINED_FUNCTION_15_2(&qword_1EE0E11A8);
  }

  v0 = OUTLINED_FUNCTION_17_2(&qword_1EE0E11D0);

  return sub_1D84EBA88(v0, v1, v2);
}

double sub_1D84F36BC()
{
  sub_1D84F38A0();
  OUTLINED_FUNCTION_10_0();
  v0 = swift_allocError();
  result = 1.9491968e243;
  *v2 = xmmword_1D859EDB0;
  *(v2 + 16) = 1;
  qword_1EE0E11E8 = v0;
  unk_1EE0E11F0 = 0;
  byte_1EE0E11F8 = 1;
  return result;
}

uint64_t *sub_1D84F370C()
{
  if (qword_1EE0E11B0 != -1)
  {
    OUTLINED_FUNCTION_4_3(&qword_1EE0E11B0);
  }

  return &qword_1EE0E11E8;
}

uint64_t static GameServicesError.testError.getter()
{
  if (qword_1EE0E11B0 != -1)
  {
    OUTLINED_FUNCTION_4_3(&qword_1EE0E11B0);
  }

  v0 = OUTLINED_FUNCTION_17_2(&qword_1EE0E11E8);

  return sub_1D84EBA88(v0, v1, v2);
}

uint64_t static GameServicesError.illegalCast<A, B>(from:to:)@<X0>(uint64_t a3@<X8>)
{
  sub_1D8581768();

  v4 = sub_1D8581C28();
  MEMORY[0x1DA718990](v4);

  MEMORY[0x1DA718990](0x203A6F7420, 0xE500000000000000);
  v5 = sub_1D8581C28();
  MEMORY[0x1DA718990](v5);

  sub_1D84F38A0();
  OUTLINED_FUNCTION_10_0();
  result = swift_allocError();
  *v7 = 0xD000000000000013;
  *(v7 + 8) = 0x80000001D8586920;
  *(v7 + 16) = 0;
  *a3 = result;
  *(a3 + 8) = 0;
  *(a3 + 16) = 1;
  return result;
}

unint64_t sub_1D84F38A0()
{
  result = qword_1ECA3A110;
  if (!qword_1ECA3A110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA3A110);
  }

  return result;
}

uint64_t static GameServicesError.illegalState(message:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1D84F38A0();
  OUTLINED_FUNCTION_10_0();
  v6 = swift_allocError();
  *v7 = a1;
  *(v7 + 8) = a2;
  *(v7 + 16) = 1;
  *a3 = v6;
  *(a3 + 8) = 0;
  *(a3 + 16) = 1;
}

uint64_t static GameServicesError.invalidReference<A>(ref:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v3 = a1[1];
  *a2 = v2;
  *(a2 + 8) = v3;
  *(a2 + 16) = 2;
}

uint64_t static GameServicesError.unexpectedStatusFromService(_:message:)()
{
  OUTLINED_FUNCTION_27_2();
  OUTLINED_FUNCTION_21_2();
  sub_1D8581768();
  v12 = v10;
  MEMORY[0x1DA718990](0xD000000000000013, 0x80000001D8586940);
  sub_1D84F3AD4(v2, &v8);
  if (v9)
  {
    sub_1D84F3B44(&v8, &v10);
  }

  else
  {
    v11 = MEMORY[0x1E69E6158];
    *&v10 = 7104878;
    *(&v10 + 1) = 0xE300000000000000;
  }

  sub_1D85817E8();
  __swift_destroy_boxed_opaque_existential_1(&v10);
  MEMORY[0x1DA718990](0xD000000000000018, 0x80000001D8586960);
  if (v0)
  {
    v3 = v0;
  }

  else
  {
    v1 = 7104878;
    v3 = 0xE300000000000000;
  }

  MEMORY[0x1DA718990](v1, v3);

  v4 = v12;
  sub_1D84F38A0();
  OUTLINED_FUNCTION_10_0();
  v5 = swift_allocError();
  *v6 = v4;
  return OUTLINED_FUNCTION_8_0(v5, v6);
}

uint64_t sub_1D84F3AD4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA3A118, &qword_1D859EDF8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

_OWORD *sub_1D84F3B44(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t static GameServicesError.unexpectedResponseFromService(_:context:)()
{
  OUTLINED_FUNCTION_27_2();
  OUTLINED_FUNCTION_21_2();
  sub_1D8581768();
  v13 = v12[0];
  MEMORY[0x1DA718990](0xD000000000000015, 0x80000001D8586980);
  sub_1D84F3AD4(v1, &v10);
  if (v11)
  {
    sub_1D84F3B44(&v10, v12);
  }

  else
  {
    OUTLINED_FUNCTION_22_0();
  }

  sub_1D85817E8();
  __swift_destroy_boxed_opaque_existential_1(v12);
  v2 = OUTLINED_FUNCTION_18_0();
  MEMORY[0x1DA718990](v2);
  if (v0)
  {
    *&v12[0] = 0x7865746E6F63202CLL;
    *(&v12[0] + 1) = 0xEB00000000203A74;
    v3 = OUTLINED_FUNCTION_183();
    MEMORY[0x1DA718990](v3);
    v5 = *(&v12[0] + 1);
    v4 = *&v12[0];
  }

  else
  {
    v4 = 0;
    v5 = 0xE000000000000000;
  }

  MEMORY[0x1DA718990](v4, v5);

  v6 = v13;
  sub_1D84F38A0();
  OUTLINED_FUNCTION_10_0();
  v7 = swift_allocError();
  *v8 = v6;
  return OUTLINED_FUNCTION_8_0(v7, v8);
}

uint64_t static GameServicesError.unexpectedValueFromService(_:)(uint64_t a1)
{
  OUTLINED_FUNCTION_21_2();
  sub_1D8581768();
  v10 = v9[0];
  MEMORY[0x1DA718990](0xD000000000000012, 0x80000001D85869A0);
  sub_1D84F3AD4(a1, &v7);
  if (v8)
  {
    sub_1D84F3B44(&v7, v9);
  }

  else
  {
    OUTLINED_FUNCTION_22_0();
  }

  sub_1D85817E8();
  __swift_destroy_boxed_opaque_existential_1(v9);
  v2 = OUTLINED_FUNCTION_18_0();
  MEMORY[0x1DA718990](v2);
  v3 = v10;
  sub_1D84F38A0();
  OUTLINED_FUNCTION_10_0();
  v4 = swift_allocError();
  *v5 = v3;
  return OUTLINED_FUNCTION_8_0(v4, v5);
}

uint64_t static GameServicesError.validateCount(foundCount:expectedCount:)(uint64_t result, uint64_t a2)
{
  if (result != a2)
  {
    sub_1D8581768();
    v2 = sub_1D8581A88();
    v4 = v3;

    MEMORY[0x1DA718990](0x7720646E756F6620, 0xEC000000206E6568);
    v5 = sub_1D8581A88();
    MEMORY[0x1DA718990](v5);

    MEMORY[0x1DA718990](0x7865206572657720, 0xEE00646574636570);
    sub_1D8448448();
    OUTLINED_FUNCTION_10_0();
    swift_allocError();
    sub_1D84F38A0();
    OUTLINED_FUNCTION_10_0();
    v6 = swift_allocError();
    *v7 = v2;
    v7[1] = v4;
    OUTLINED_FUNCTION_8_0(v6, v7);
    return swift_willThrow();
  }

  return result;
}

unint64_t GameServicesError.errorKey.getter()
{
  result = 0x416C6167656C6C69;
  switch(*(v0 + 16))
  {
    case 1:
      result = 0x6C616E7265746E69;
      break;
    case 2:
      result = 0xD000000000000010;
      break;
    case 3:
      result = 0x6F72724572657375;
      break;
    case 4:
      result = 0xD000000000000016;
      break;
    default:
      return result;
  }

  return result;
}

BOOL sub_1D84F3FB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  OUTLINED_FUNCTION_12_1();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_2_1();
  v11 = v10 - v9;
  DynamicType = swift_getDynamicType();
  swift_getErrorValue();
  v13 = swift_getDynamicType();
  result = 0;
  if (DynamicType == v13)
  {
    (*(v7 + 16))(v11, v4, a2);
    v15 = sub_1D8581A98();
    if (v15)
    {
      v16 = v15;
      (*(v7 + 8))(v11, a2);
    }

    else
    {
      OUTLINED_FUNCTION_10_0();
      v16 = swift_allocError();
      (*(v7 + 32))(v17, v11, a2);
    }

    v18 = sub_1D8580D28();
    MEMORY[0x1DA719650](v16);
    v19 = [v18 code];

    v20 = sub_1D8580D28();
    v21 = [v20 code];

    return v19 == v21;
  }

  return result;
}

BOOL Error.shallowEquals(_:)()
{
  OUTLINED_FUNCTION_25_2();
  v3 = v2;
  if (qword_1EE0E11B0 != -1)
  {
    OUTLINED_FUNCTION_4_3(&qword_1EE0E11B0);
  }

  v4 = qword_1EE0E11E8;
  v5 = unk_1EE0E11F0;
  v6 = byte_1EE0E11F8;
  sub_1D8448448();
  OUTLINED_FUNCTION_10_0();
  v7 = swift_allocError();
  *v8 = v4;
  *(v8 + 8) = v5;
  *(v8 + 16) = v6;
  sub_1D84EBA88(v4, v5, v6);
  v9 = v3(v7);
  MEMORY[0x1DA719650](v7);
  v10 = sub_1D84F3FB4(v9, v1, v0);
  MEMORY[0x1DA719650](v9);
  return v10;
}

{
  OUTLINED_FUNCTION_25_2();
  v3 = v2(0x7272452074736554, 0xEA0000000000726FLL);
  v4 = sub_1D84F3FB4(v3, v1, v0);
  MEMORY[0x1DA719650](v3);
  return v4;
}

uint64_t sub_1D84F42C8(uint64_t a1, uint64_t a2)
{
  v84 = a2;
  sub_1D85810A8();
  OUTLINED_FUNCTION_12_1();
  v82 = v4;
  v83 = v3;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_2_1();
  v7 = v6 - v5;
  OUTLINED_FUNCTION_12_1();
  v9 = v8;
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = &v77 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = &v77 - v15;
  v17 = MEMORY[0x1EEE9AC00](v14);
  v19 = &v77 - v18;
  v20 = MEMORY[0x1EEE9AC00](v17);
  v22 = &v77 - v21;
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v77 - v23;
  v85 = v9;
  v27 = *(v9 + 16);
  v25 = v9 + 16;
  v26 = v27;
  OUTLINED_FUNCTION_26_0();
  v28 = v27();
  v31 = OUTLINED_FUNCTION_29_2(v28, v29, v30, &type metadata for GameServicesError);
  if (v31)
  {
    v34 = v88;
    v35 = v89;
    v36 = v90;
    if (v90 == 1)
    {
      swift_getErrorValue();
      v37 = v86;
      v38 = v87;
      MEMORY[0x1DA719660](v34);
      v39 = sub_1D84F42C8(v37, v38);
      sub_1D8448448();
      OUTLINED_FUNCTION_10_0();
      v40 = swift_allocError();
      *v41 = v39;
      *(v41 + 8) = 0;
      *(v41 + 16) = 1;
      sub_1D84F31AC(v34, v35, 1);
      sub_1D84F31AC(v34, v35, 1);
      v25 = v85;
    }

    else
    {
      OUTLINED_FUNCTION_26_0();
      v26();
      v44 = sub_1D8581A98();
      if (v44)
      {
        v40 = v44;
        OUTLINED_FUNCTION_14_2();
        v45(v22, a1);
      }

      else
      {
        OUTLINED_FUNCTION_10_0();
        v40 = swift_allocError();
        v65 = OUTLINED_FUNCTION_16_3(v40, v64);
        v66(v65, v22, a1);
      }

      sub_1D84F31AC(v34, v35, v36);
    }
  }

  else if (OUTLINED_FUNCTION_29_2(v31, v32, v33, &type metadata for GameServicesInternalError))
  {
    if (v90 <= 2u)
    {
      sub_1D84F31EC(v88, v89, v90);
    }

    OUTLINED_FUNCTION_26_0();
    v26();
    v42 = sub_1D8581A98();
    if (v42)
    {
      v40 = v42;
      OUTLINED_FUNCTION_14_2();
      v43(v19, a1);
    }

    else
    {
      OUTLINED_FUNCTION_10_0();
      v40 = swift_allocError();
      v62 = OUTLINED_FUNCTION_16_3(v40, v61);
      v63(v62, v19, a1);
    }
  }

  else
  {
    v46 = sub_1D84F48AC(a1, v84);
    v49 = sub_1D84355A0(v46, v47, v48);
    v50 = v82;
    (*(v82 + 16))(v7, v49, v83);
    OUTLINED_FUNCTION_26_0();
    v26();
    v51 = v46;
    v52 = sub_1D8581088();
    v80 = v7;
    v53 = v52;
    v54 = sub_1D8581678();
    v81 = v51;

    v79 = v54;
    v55 = v54;
    v56 = v53;
    if (os_log_type_enabled(v53, v55))
    {
      v57 = v80;
      v58 = swift_slowAlloc();
      v78 = swift_slowAlloc();
      *v58 = 138412546;
      (v26)(v13, v16, a1);
      v25 = v84;
      if (sub_1D8581A98())
      {
        OUTLINED_FUNCTION_14_2();
        v59(v13, a1);
      }

      else
      {
        OUTLINED_FUNCTION_10_0();
        v67 = swift_allocError();
        v69 = OUTLINED_FUNCTION_16_3(v67, v68);
        v70(v69, v13, a1);
      }

      v71 = v82;
      v72 = _swift_stdlib_bridgeErrorToNSError();
      (*(v25 + 8))(v16, a1);
      *(v58 + 4) = v72;
      *(v58 + 12) = 2112;
      v73 = v81;
      *(v58 + 14) = v81;
      v74 = v78;
      *v78 = v72;
      v74[1] = v73;
      v75 = v73;
      _os_log_impl(&dword_1D8433000, v56, v79, "Expunged error: %@ as XPC safe: %@", v58, 0x16u);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA3A120, &qword_1D859EE00);
      swift_arrayDestroy();
      MEMORY[0x1DA719810](v74, -1, -1);
      MEMORY[0x1DA719810](v58, -1, -1);

      (*(v71 + 8))(v57, v83);
      v40 = v75;
    }

    else
    {

      OUTLINED_FUNCTION_14_2();
      v60(v16, a1);
      (*(v50 + 8))(v80, v83);
      v40 = v81;
    }
  }

  (*(v25 + 8))(v24, a1);
  return v40;
}

id sub_1D84F48AC(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_12_1();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_2_1();
  v9 = v8 - v7;
  (*(v5 + 16))(v8 - v7, v2, a1);
  v10 = sub_1D8581A98();
  if (v10)
  {
    v11 = v10;
    (*(v5 + 8))(v9, a1);
  }

  else
  {
    OUTLINED_FUNCTION_10_0();
    v11 = swift_allocError();
    (*(v5 + 32))(v12, v9, a1);
  }

  v13 = sub_1D8580D28();
  MEMORY[0x1DA719650](v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA3A0C8, &qword_1D859F0C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D859EDC0;
  *(inited + 32) = sub_1D8581228();
  *(inited + 40) = v15;
  *(inited + 48) = sub_1D8581228();
  *(inited + 56) = v16;
  *(inited + 64) = sub_1D8581228();
  *(inited + 72) = v17;
  *(inited + 80) = sub_1D8581228();
  *(inited + 88) = v18;
  *(inited + 96) = sub_1D8581228();
  *(inited + 104) = v19;
  v20 = [v13 userInfo];
  v21 = MEMORY[0x1E69E6158];
  v22 = sub_1D8581198();

  v23 = sub_1D84F4F48(v22, inited);

  v24 = sub_1D8581228();
  sub_1D84F4CA8(v24, v25, v23, &v45);

  v26 = v46;
  sub_1D84F589C(&v45, &qword_1ECA3A118, &qword_1D859EDF8);
  if (!v26)
  {
    v27 = sub_1D8581228();
    v29 = v28;
    v30 = sub_1D8581B08();
    v46 = v21;
    *&v45 = v30;
    *(&v45 + 1) = v31;
    sub_1D84F3B44(&v45, v44);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1D84F50F8(v44, v27, v29, isUniquelyReferenced_nonNull_native);
  }

  v33 = [v13 domain];
  v34 = sub_1D8581228();
  v36 = v35;

  v37 = [v13 code];
  v38 = [v13 userInfo];
  v39 = sub_1D8581198();

  v40 = sub_1D84F4F48(v39, inited);
  swift_setDeallocating();
  sub_1D84F4DBC();

  v41 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
  v42 = sub_1D84F4D0C(v34, v36, v37, v40);

  return v42;
}

double sub_1D84F4CA8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  if (*(a3 + 16) && (v6 = sub_1D8436A4C(a1, a2), (v7 & 1) != 0))
  {
    v8 = *(a3 + 56) + 32 * v6;

    sub_1D8435CE4(v8, a4);
  }

  else
  {
    result = 0.0;
    *a4 = 0u;
    a4[1] = 0u;
  }

  return result;
}

id sub_1D84F4D0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_1D8581218();

  if (a4)
  {
    v8 = sub_1D8581188();
  }

  else
  {
    v8 = 0;
  }

  v9 = [v4 initWithDomain:v7 code:a3 userInfo:v8];

  return v9;
}

uint64_t sub_1D84F4DBC()
{
  swift_arrayDestroy();

  return MEMORY[0x1EEE6BDC0](v0, 32, 7);
}

uint64_t get_enum_tag_for_layout_string_12GameServices0aB5ErrorO(uint64_t a1)
{
  if ((*(a1 + 16) & 4) != 0)
  {
    return (*a1 + 4);
  }

  else
  {
    return *(a1 + 16) & 7;
  }
}

uint64_t sub_1D84F4E20(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFC && *(a1 + 17))
    {
      v2 = *a1 + 251;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 <= 4)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D84F4E60(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 16) = 0;
    *result = a2 - 252;
    *(result + 8) = 0;
    if (a3 >= 0xFC)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      return OUTLINED_FUNCTION_449(result, a2);
    }
  }

  return result;
}

uint64_t sub_1D84F4E9C(uint64_t result, unsigned int a2)
{
  if (a2 >= 4)
  {
    *result = a2 - 4;
    *(result + 8) = 0;
    LOBYTE(a2) = 4;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t get_enum_tag_for_layout_string_12GameServices0aB13InternalErrorO(uint64_t a1)
{
  if ((*(a1 + 16) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

uint64_t sub_1D84F4EE0(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFD && *(a1 + 17))
    {
      v2 = *a1 + 252;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 <= 3)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D84F4F20(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    *(result + 8) = 0;
    LOBYTE(a2) = 3;
  }

  *(result + 16) = a2;
  return result;
}

unint64_t *sub_1D84F4F48(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v21[1] = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 32);
  v5 = v4 & 0x3F;
  v6 = ((1 << v4) + 63) >> 6;
  v7 = swift_bridgeObjectRetain_n();
  if (v5 > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v15 = swift_slowAlloc();

      v16 = OUTLINED_FUNCTION_19_1();
      v3 = sub_1D84F54FC(v16, v17, v18, v19, v20);
      MEMORY[0x1DA719810](v15, -1, -1);
      swift_bridgeObjectRelease_n();
      goto LABEL_6;
    }
  }

  MEMORY[0x1EEE9AC00](v7);
  sub_1D84F52AC(0, v6, v21 - ((8 * v6 + 15) & 0x3FFFFFFFFFFFFFF0));

  v8 = OUTLINED_FUNCTION_19_1();
  v13 = sub_1D84F5310(v8, v9, v10, v11, v12);
  if (v2)
  {
    swift_willThrow();
  }

  else
  {
    v3 = v13;
  }

  swift_bridgeObjectRelease_n();
LABEL_6:

  return v3;
}

_OWORD *sub_1D84F50F8(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v9 = *v4;
  v10 = sub_1D8436A4C(a2, a3);
  if (__OFADD__(v9[2], (v11 & 1) == 0))
  {
    __break(1u);
    goto LABEL_13;
  }

  v12 = v10;
  v13 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA3A138, &qword_1D859F0D8);
  if ((sub_1D8581808() & 1) == 0)
  {
    goto LABEL_5;
  }

  v14 = sub_1D8436A4C(a2, a3);
  if ((v13 & 1) != (v15 & 1))
  {
LABEL_13:
    result = sub_1D8581AF8();
    __break(1u);
    return result;
  }

  v12 = v14;
LABEL_5:
  v16 = *v5;
  if (v13)
  {
    v17 = (v16[7] + 32 * v12);
    __swift_destroy_boxed_opaque_existential_1(v17);

    return sub_1D84F3B44(a1, v17);
  }

  else
  {
    sub_1D84F5240(v12, a2, a3, a1, v16);
  }
}

_OWORD *sub_1D84F5240(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_1D84F3B44(a4, (a5[7] + 32 * a1));
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

uint64_t sub_1D84F52AC(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = (a2 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v4 = vdupq_n_s64(a2 - 1);
    v5 = xmmword_1D859EDD0;
    v6 = (a3 + 8);
    v7 = vdupq_n_s64(2uLL);
    do
    {
      v8 = vmovn_s64(vcgeq_u64(v4, v5));
      if (v8.i8[0])
      {
        *(v6 - 1) = result;
      }

      if (v8.i8[4])
      {
        *v6 = result;
      }

      v5 = vaddq_s64(v5, v7);
      v6 += 2;
      v3 -= 2;
    }

    while (v3);
  }

  return result;
}

unint64_t *sub_1D84F5310(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void *))
{
  v24 = 0;
  v25 = a5;
  v31 = a4;
  v22 = a2;
  v23 = result;
  v5 = 0;
  v26 = a3;
  v6 = a3 + 64;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 64);
  v10 = (v7 + 63) >> 6;
  while (v9)
  {
    v11 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_11:
    v14 = v11 | (v5 << 6);
    v15 = (*(v26 + 48) + 16 * v14);
    v17 = *v15;
    v16 = v15[1];
    sub_1D8435CE4(*(v26 + 56) + 32 * v14, v30);
    v28[0] = v17;
    v28[1] = v16;
    v18 = sub_1D8435CE4(v30, &v29);
    v27[0] = v17;
    v27[1] = v16;
    MEMORY[0x1EEE9AC00](v18);
    v21[2] = v27;
    swift_bridgeObjectRetain_n();
    LOBYTE(v17) = sub_1D84F57EC(v25, v21, v31);
    sub_1D84F589C(v28, &qword_1ECA3A128, &qword_1D859F0C8);
    __swift_destroy_boxed_opaque_existential_1(v30);

    if (v17)
    {
      *(v23 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      if (__OFADD__(v24++, 1))
      {
        __break(1u);
LABEL_15:
        v20 = sub_1D84F55A4(v23, v22, v24, v26);

        return v20;
      }
    }
  }

  v12 = v5;
  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= v10)
    {
      goto LABEL_15;
    }

    v13 = *(v6 + 8 * v5);
    ++v12;
    if (v13)
    {
      v11 = __clz(__rbit64(v13));
      v9 = (v13 - 1) & v13;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

unint64_t *sub_1D84F54FC(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void *))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v9 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    swift_bridgeObjectRetain_n();
    v10 = sub_1D84F5310(v9, a2, a3, a4, a5);
    swift_bridgeObjectRelease_n();

    return v10;
  }

  return result;
}

uint64_t sub_1D84F55A4(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return MEMORY[0x1E69E7CC8];
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA3A130, &qword_1D859F0D0);
  result = sub_1D8581858();
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
  v12 = result + 64;
  v31 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(v4 + 56);
    v18 = (*(v4 + 48) + 16 * v16);
    v19 = *v18;
    v20 = v18[1];
    sub_1D8435CE4(v17 + 32 * v16, v33);
    sub_1D84F3B44(v33, v32);
    sub_1D8581B58();

    sub_1D85812B8();
    result = sub_1D8581B98();
    v21 = -1 << *(v9 + 32);
    v22 = result & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
    {
      v25 = 0;
      v26 = (63 - v21) >> 6;
      while (++v23 != v26 || (v25 & 1) == 0)
      {
        v27 = v23 == v26;
        if (v23 == v26)
        {
          v23 = 0;
        }

        v25 |= v27;
        v28 = *(v12 + 8 * v23);
        if (v28 != -1)
        {
          v24 = __clz(__rbit64(~v28)) + (v23 << 6);
          goto LABEL_25;
        }
      }

      goto LABEL_30;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_25:
    *(v12 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    v29 = (*(v9 + 48) + 16 * v24);
    *v29 = v19;
    v29[1] = v20;
    result = sub_1D84F3B44(v32, (*(v9 + 56) + 32 * v24));
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_31;
    }

    v4 = v31;
    if (!v5)
    {
      return v9;
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
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

BOOL sub_1D84F57EC(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v5 = (a3 + 40);
  v6 = *(a3 + 16) + 1;
  do
  {
    if (!--v6)
    {
      break;
    }

    v7 = *v5;
    v11[0] = *(v5 - 1);
    v11[1] = v7;

    v8 = a1(v11);
    if (v3)
    {

      return v6 != 0;
    }

    v9 = v8;
    v5 += 2;
  }

  while ((v9 & 1) == 0);
  return v6 != 0;
}

uint64_t sub_1D84F589C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t OUTLINED_FUNCTION_11_1(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_15_2(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_17_2@<X0>(uint64_t *a1@<X8>)
{
  result = *a1;
  v3 = a1[1];
  *v1 = *a1;
  *(v1 + 8) = v3;
  *(v1 + 16) = *(a1 + 16);
  return result;
}

uint64_t OUTLINED_FUNCTION_28_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_29_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return swift_dynamicCast();
}

uint64_t $DistributedGameServicesDebuggerProtocol.deinit()
{
  type metadata accessor for GameServicesActorSystem(0);
  OUTLINED_FUNCTION_21_3();
  v2 = sub_1D8526788(v1);
  OUTLINED_FUNCTION_406_1(v2);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t $DistributedGameServicesDebuggerProtocol.__allocating_init(actorSystem:)(uint64_t a1)
{
  v2 = swift_allocObject();
  $DistributedGameServicesDebuggerProtocol.init(actorSystem:)(a1);
  return v2;
}

void *$DistributedGameServicesDebuggerProtocol.init(actorSystem:)(uint64_t a1)
{
  swift_defaultActor_initialize();
  v1[16] = a1;
  type metadata accessor for $DistributedGameServicesDebuggerProtocol();
  type metadata accessor for GameServicesActorSystem(0);
  OUTLINED_FUNCTION_21_3();
  sub_1D8526788(v3);
  OUTLINED_FUNCTION_0_6();
  sub_1D8526788(v4);

  OUTLINED_FUNCTION_324();
  sub_1D8580F58();
  v1[14] = v6;
  v1[15] = v7;

  OUTLINED_FUNCTION_324();
  sub_1D8580F38();

  return v1;
}

uint64_t sub_1D84F5D40@<X0>(uint64_t *a1@<X8>)
{
  result = $DistributedGameServicesDebuggerProtocol.actorSystem.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1D84F5E4C()
{
  OUTLINED_FUNCTION_174();
  OUTLINED_FUNCTION_366();
  OUTLINED_FUNCTION_31_0(&unk_1D85A10B0);
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_176(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_42_0(v1);

  return v4(v3);
}

uint64_t sub_1D84F5ED8(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v3 = sub_1D8581018();
  v2[9] = v3;
  v2[10] = *(v3 - 8);
  v2[11] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39500, &unk_1D8595FD0);
  v2[12] = v4;
  v2[13] = *(v4 - 8);
  v2[14] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D84F6000);
}

uint64_t sub_1D84F6000(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_257();
  OUTLINED_FUNCTION_177();
  if ((swift_distributed_actor_is_remote() & 1) == 0)
  {
    OUTLINED_FUNCTION_24(&unk_1D85A10B0);
    v15 = swift_task_alloc();
    v16 = OUTLINED_FUNCTION_201_0(v15);
    *v16 = v17;
    OUTLINED_FUNCTION_33_1(v16);
    OUTLINED_FUNCTION_197();

    return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, a11, a12);
  }

  OUTLINED_FUNCTION_91_1();
  v14 = type metadata accessor for $DistributedGameServicesDebuggerProtocol();
  OUTLINED_FUNCTION_91(v14);
  if (v12)
  {
    OUTLINED_FUNCTION_342();

    goto LABEL_9;
  }

  OUTLINED_FUNCTION_175_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39508, &unk_1D85A4F80);
  OUTLINED_FUNCTION_284_2();
  OUTLINED_FUNCTION_11_2();
  sub_1D8581038();
  sub_1D8484CB0();
  v27 = sub_1D8484D60();
  OUTLINED_FUNCTION_31(v27);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C88, &qword_1D859EDF0);
  OUTLINED_FUNCTION_156();
  GameServicesActorSystem.JSONInvocationEncoder.recordErrorType<A>(_:)(v28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39538, &unk_1D8595FF0);
  sub_1D8484E10();
  sub_1D8484F6C();
  v29 = OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_353(v29, v30);
  GameServicesActorSystem.JSONInvocationEncoder.doneRecording()();
  if (v31)
  {
    OUTLINED_FUNCTION_453();
    v32 = OUTLINED_FUNCTION_49_0();
    v33(v32);
    OUTLINED_FUNCTION_331();

LABEL_9:
    OUTLINED_FUNCTION_191_2();

    OUTLINED_FUNCTION_48();
    OUTLINED_FUNCTION_197();

    return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, a11, a12);
  }

  OUTLINED_FUNCTION_184_0();
  OUTLINED_FUNCTION_413_1(v34, v35);
  v36 = swift_task_alloc();
  OUTLINED_FUNCTION_203_0(v36);
  OUTLINED_FUNCTION_0_6();
  sub_1D8526788(v37);
  OUTLINED_FUNCTION_98();
  *(v13 + 16) = v38;
  OUTLINED_FUNCTION_419();
  OUTLINED_FUNCTION_9_0(v39);
  OUTLINED_FUNCTION_118_0();

  return GameServicesActorSystem.remoteCall<A, B, C>(on:target:invocation:throwing:returning:)();
}

uint64_t sub_1D84F6288()
{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_153();
  OUTLINED_FUNCTION_42();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_37();
  *v5 = v4;
  *(v6 + 144) = v0;

  OUTLINED_FUNCTION_149();

  return MEMORY[0x1EEE6DFA0](v7);
}

uint64_t DistributedGameServicesDebuggerProtocol<>.describeAchievements(_:)()
{
  OUTLINED_FUNCTION_148();
  v5 = OUTLINED_FUNCTION_371(v1, v2, v3, v4);
  v0[14] = v5;
  OUTLINED_FUNCTION_39(v5);
  v0[15] = v6;
  v0[16] = OUTLINED_FUNCTION_332();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39500, &unk_1D8595FD0);
  OUTLINED_FUNCTION_29(v7);
  v0[18] = v8;
  v0[19] = OUTLINED_FUNCTION_332();
  v9 = OUTLINED_FUNCTION_64_0();

  return MEMORY[0x1EEE6DFA0](v9);
}

{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_250(v0, v1, v2);
  OUTLINED_FUNCTION_198();
  v3 = OUTLINED_FUNCTION_63();

  return MEMORY[0x1EEE6DFA0](v3);
}

uint64_t sub_1D84F6470(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_208();
  OUTLINED_FUNCTION_185();
  if (swift_distributed_actor_is_remote())
  {
    OUTLINED_FUNCTION_73();
    OUTLINED_FUNCTION_110_0();
    OUTLINED_FUNCTION_90();
    if (v14)
    {
      OUTLINED_FUNCTION_342();

LABEL_12:
      OUTLINED_FUNCTION_168_0();

      OUTLINED_FUNCTION_48();
      OUTLINED_FUNCTION_169();

      return v37(v36, v37, v38, v39, v40, v41, v42, v43, a9, a10, a11, a12, a13, a14);
    }

    OUTLINED_FUNCTION_174_0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39508, &unk_1D85A4F80);
    OUTLINED_FUNCTION_195();
    OUTLINED_FUNCTION_11_2();
    sub_1D8581038();
    sub_1D8484CB0();
    v29 = sub_1D8484D60();
    OUTLINED_FUNCTION_31(v29);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C88, &qword_1D859EDF0);
    OUTLINED_FUNCTION_156();
    GameServicesActorSystem.JSONInvocationEncoder.recordErrorType<A>(_:)(v30);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39538, &unk_1D8595FF0);
    sub_1D8484E10();
    sub_1D8484F6C();
    v31 = OUTLINED_FUNCTION_16();
    OUTLINED_FUNCTION_353(v31, v32);
    GameServicesActorSystem.JSONInvocationEncoder.doneRecording()();
    if (v33)
    {
      OUTLINED_FUNCTION_452();
      v34 = OUTLINED_FUNCTION_49_0();
      v35(v34);
      OUTLINED_FUNCTION_331();

      goto LABEL_12;
    }

    OUTLINED_FUNCTION_184_0();
    OUTLINED_FUNCTION_413_1(v44, v45);
    v46 = swift_task_alloc();
    v47 = OUTLINED_FUNCTION_90_0(v46);
    *v47 = v48;
    OUTLINED_FUNCTION_294(v47);
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_112();

    return GameServicesActorSystem.remoteCall<A, B, C>(on:target:invocation:throwing:returning:)();
  }

  else
  {
    OUTLINED_FUNCTION_210(*(v15 + 96));
    OUTLINED_FUNCTION_54();
    v50 = v16 + *v16;
    v17 = swift_task_alloc();
    v18 = OUTLINED_FUNCTION_286(v17);
    *v18 = v19;
    OUTLINED_FUNCTION_17(v18);
    OUTLINED_FUNCTION_169();

    return v23(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10, v50, a12, a13, a14);
  }
}

uint64_t sub_1D84F673C()
{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_153();
  OUTLINED_FUNCTION_42();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_37();
  *v5 = v4;
  *(v6 + 176) = v0;

  OUTLINED_FUNCTION_149();

  return MEMORY[0x1EEE6DFA0](v7);
}

uint64_t sub_1D84F6834()
{
  OUTLINED_FUNCTION_174();
  OUTLINED_FUNCTION_95();
  v3 = v2;
  OUTLINED_FUNCTION_62();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_37();
  *v6 = v5;
  *(v3 + 192) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_149();

    return MEMORY[0x1EEE6DFA0](v7);
  }

  else
  {
    OUTLINED_FUNCTION_236_2();

    v8 = OUTLINED_FUNCTION_56_0();

    return v9(v8);
  }
}

uint64_t sub_1D84F6964(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[2] = a3;
  v9 = *a2;
  v8[3] = *a2;
  v8[4] = *(v9 - 8);
  v8[5] = swift_task_alloc();
  sub_1D8580F88();
  v10 = swift_task_alloc();
  v8[6] = v10;
  *v10 = v8;
  v10[1] = sub_1D84A7CD8;

  return DistributedGameServicesDebuggerProtocol<>.describeAchievements(_:)();
}

uint64_t sub_1D84F6AF4()
{
  OUTLINED_FUNCTION_475();
  v10 = v0;
  OUTLINED_FUNCTION_204();
  OUTLINED_FUNCTION_366();
  v2 = *v1;
  v3 = v1[1];
  OUTLINED_FUNCTION_31_0(&unk_1D85A10A8);
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_176(v4);
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_64(v5);

  return v9(v7, v2, v3);
}

uint64_t sub_1D84F6B94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[11] = a3;
  v4[12] = v3;
  v4[9] = a1;
  v4[10] = a2;
  v5 = sub_1D8581018();
  v4[13] = v5;
  v4[14] = *(v5 - 8);
  v4[15] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38CB0, &unk_1D8590C60);
  v4[16] = v6;
  v4[17] = *(v6 - 8);
  v4[18] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39578, &unk_1D85981A0);
  v4[19] = v7;
  v4[20] = *(v7 - 8);
  v4[21] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D84F6D28);
}

uint64_t sub_1D84F6D28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_257();
  OUTLINED_FUNCTION_177();
  if (swift_distributed_actor_is_remote())
  {
    v13[22] = OUTLINED_FUNCTION_209_1();
    OUTLINED_FUNCTION_354();
    v14 = type metadata accessor for $DistributedGameServicesDebuggerProtocol();
    OUTLINED_FUNCTION_91(v14);
    if (v12)
    {
      OUTLINED_FUNCTION_342();

LABEL_9:
      OUTLINED_FUNCTION_266_0();

      OUTLINED_FUNCTION_48();
      OUTLINED_FUNCTION_197();

      return v39(v38, v39, v40, v41, v42, v43, v44, v45, a9, a10, a11, a12);
    }

    OUTLINED_FUNCTION_244_0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA392E0, &qword_1D8591020);
    OUTLINED_FUNCTION_87_0();
    OUTLINED_FUNCTION_195();
    OUTLINED_FUNCTION_100_1();
    sub_1D8581038();
    sub_1D847C154();
    v27 = sub_1D847C0A4();
    OUTLINED_FUNCTION_31(v27);
    v28 = v13[11];
    v13[5] = v13[10];
    v13[6] = v28;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38CB8, &unk_1D8596010);
    OUTLINED_FUNCTION_26_1();
    OUTLINED_FUNCTION_284_2();
    OUTLINED_FUNCTION_254_1();
    sub_1D8581038();
    sub_1D84751F0();
    v29 = sub_1D8475274();
    OUTLINED_FUNCTION_31(v29);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C88, &qword_1D859EDF0);
    OUTLINED_FUNCTION_156();
    GameServicesActorSystem.JSONInvocationEncoder.recordErrorType<A>(_:)(v30);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39580, &unk_1D85A4FB0);
    sub_1D8486070();
    sub_1D8486120();
    v31 = OUTLINED_FUNCTION_16();
    OUTLINED_FUNCTION_353(v31, v32);
    GameServicesActorSystem.JSONInvocationEncoder.doneRecording()();
    if (v33)
    {
      OUTLINED_FUNCTION_187();
      v34 = OUTLINED_FUNCTION_52();
      v35(v34);
      v36 = OUTLINED_FUNCTION_51_0();
      v37(v36);
      OUTLINED_FUNCTION_331();

      goto LABEL_9;
    }

    OUTLINED_FUNCTION_184_0();
    sub_1D8581028();
    v46 = swift_task_alloc();
    OUTLINED_FUNCTION_396(v46);
    OUTLINED_FUNCTION_0_6();
    sub_1D8526788(v47);
    OUTLINED_FUNCTION_98();
    v13[2] = v48;
    OUTLINED_FUNCTION_258_2();
    OUTLINED_FUNCTION_9_0(v49);
    OUTLINED_FUNCTION_118_0();

    return GameServicesActorSystem.remoteCall<A, B, C>(on:target:invocation:throwing:returning:)();
  }

  else
  {
    OUTLINED_FUNCTION_24(&unk_1D85A10A8);
    v15 = swift_task_alloc();
    v16 = OUTLINED_FUNCTION_286(v15);
    *v16 = v17;
    v16[1] = sub_1D845C784;
    OUTLINED_FUNCTION_207_0(v13[9]);
    OUTLINED_FUNCTION_197();

    return v21(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, a11, a12);
  }
}

uint64_t DistributedGameServicesDebuggerProtocol<>.listAchievements(games:after:)()
{
  OUTLINED_FUNCTION_148();
  v7 = OUTLINED_FUNCTION_307_0(v2, v3, v4, v5, v6);
  *(v1 + 144) = v7;
  OUTLINED_FUNCTION_39(v7);
  *(v1 + 152) = v8;
  *(v1 + 160) = OUTLINED_FUNCTION_332();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38CB0, &unk_1D8590C60);
  *(v1 + 168) = v9;
  OUTLINED_FUNCTION_39(v9);
  *(v1 + 176) = v10;
  *(v1 + 184) = OUTLINED_FUNCTION_332();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39578, &unk_1D85981A0);
  *(v1 + 192) = v11;
  OUTLINED_FUNCTION_39(v11);
  *(v1 + 200) = v12;
  *(v1 + 208) = OUTLINED_FUNCTION_332();
  *(v1 + 216) = *v0;
  v13 = OUTLINED_FUNCTION_64_0();

  return MEMORY[0x1EEE6DFA0](v13);
}

{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_401(v0, v1, v2, v3);
  OUTLINED_FUNCTION_198();
  v4 = OUTLINED_FUNCTION_63();

  return MEMORY[0x1EEE6DFA0](v4);
}

uint64_t sub_1D84F71B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_208();
  OUTLINED_FUNCTION_185();
  if (swift_distributed_actor_is_remote())
  {
    v15 = *(v14 + 112);
    OUTLINED_FUNCTION_166();
    sub_1D8580F98();
    *(v14 + 232) = *(v14 + 80);
    OUTLINED_FUNCTION_355();
    OUTLINED_FUNCTION_90();
    if (v15)
    {
      OUTLINED_FUNCTION_342();

LABEL_9:

      OUTLINED_FUNCTION_48();
      OUTLINED_FUNCTION_169();

      return v44(v43, v44, v45, v46, v47, v48, v49, v50, a9, a10, a11, a12, a13, a14);
    }

    *(v14 + 88) = *(v14 + 104);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA392E0, &qword_1D8591020);
    OUTLINED_FUNCTION_87_0();
    OUTLINED_FUNCTION_100_1();
    sub_1D8581038();
    sub_1D847C154();
    v27 = sub_1D847C0A4();
    OUTLINED_FUNCTION_31(v27);
    v28 = *(v14 + 224);
    *(v14 + 56) = *(v14 + 216);
    *(v14 + 64) = v28;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38CB8, &unk_1D8596010);
    OUTLINED_FUNCTION_26_1();
    OUTLINED_FUNCTION_95_0();
    OUTLINED_FUNCTION_252(v29, v30, v31, v32, v33);
    sub_1D84751F0();
    v34 = sub_1D8475274();
    OUTLINED_FUNCTION_31(v34);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C88, &qword_1D859EDF0);
    OUTLINED_FUNCTION_156();
    GameServicesActorSystem.JSONInvocationEncoder.recordErrorType<A>(_:)(v35);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39580, &unk_1D85A4FB0);
    sub_1D8486070();
    sub_1D8486120();
    v36 = OUTLINED_FUNCTION_16();
    OUTLINED_FUNCTION_353(v36, v37);
    GameServicesActorSystem.JSONInvocationEncoder.doneRecording()();
    if (v38)
    {
      OUTLINED_FUNCTION_213();
      v39 = OUTLINED_FUNCTION_52();
      v40(v39);
      v41 = OUTLINED_FUNCTION_51_0();
      v42(v41);
      OUTLINED_FUNCTION_331();

      goto LABEL_9;
    }

    OUTLINED_FUNCTION_184_0();
    sub_1D8581028();
    swift_task_alloc();
    OUTLINED_FUNCTION_168();
    *(v14 + 240) = v51;
    *v51 = v52;
    v51[1] = sub_1D845CFE0;
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_112();

    return GameServicesActorSystem.remoteCall<A, B, C>(on:target:invocation:throwing:returning:)();
  }

  else
  {
    *(v14 + 72) = *(v14 + 136);
    *(v14 + 40) = *(v14 + 216);
    OUTLINED_FUNCTION_54();
    v54 = v16 + *v16;
    v17 = swift_task_alloc();
    *(v14 + 256) = v17;
    *v17 = v14;
    v17[1] = sub_1D8485B18;
    OUTLINED_FUNCTION_81_2(*(v14 + 104));
    OUTLINED_FUNCTION_169();

    return v22(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, v54, a12, a13, a14);
  }
}

uint64_t sub_1D84F7574(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[2] = a3;
  v10 = *a2;
  v8[3] = *a2;
  v8[4] = *(v10 - 8);
  v8[5] = swift_task_alloc();
  sub_1D8580F88();
  v11 = a2[1];
  v8[6] = v11;
  v8[7] = *(v11 - 8);
  v8[8] = swift_task_alloc();
  sub_1D8580F88();
  v12 = swift_task_alloc();
  v8[9] = v12;
  *v12 = v8;
  v12[1] = sub_1D84F77B8;

  return DistributedGameServicesDebuggerProtocol<>.listAchievements(games:after:)();
}

uint64_t sub_1D84F77B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_190();
  OUTLINED_FUNCTION_177();
  OUTLINED_FUNCTION_153();
  v13 = v12[5];
  v14 = v12[4];
  v15 = v12[3];
  OUTLINED_FUNCTION_171_0();
  *v16 = v17;
  OUTLINED_FUNCTION_476(v18, v19);
  (*(v14 + 8))(v13, v15);
  v20 = OUTLINED_FUNCTION_166();
  v21(v20);

  OUTLINED_FUNCTION_146();
  OUTLINED_FUNCTION_173();

  return v23(v22, v23, v24, v25, v26, v27, v28, v29, a9, a10, a11, a12);
}

uint64_t sub_1D84F7998()
{
  OUTLINED_FUNCTION_475();
  v10 = v0;
  OUTLINED_FUNCTION_204();
  OUTLINED_FUNCTION_366();
  v2 = *v1;
  v3 = v1[1];
  OUTLINED_FUNCTION_31_0(&unk_1D85A10A0);
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_176(v4);
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_64(v5);

  return v9(v7, v2, v3);
}

uint64_t sub_1D84F7A38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[11] = a3;
  v4[12] = v3;
  v4[9] = a1;
  v4[10] = a2;
  v5 = sub_1D8581018();
  v4[13] = v5;
  v4[14] = *(v5 - 8);
  v4[15] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38DB0, &qword_1D8590D00);
  v4[16] = v6;
  v4[17] = *(v6 - 8);
  v4[18] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39500, &unk_1D8595FD0);
  v4[19] = v7;
  v4[20] = *(v7 - 8);
  v4[21] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D84F7BCC);
}

uint64_t sub_1D84F7BCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_257();
  OUTLINED_FUNCTION_177();
  if (swift_distributed_actor_is_remote())
  {
    v13[22] = OUTLINED_FUNCTION_209_1();
    OUTLINED_FUNCTION_354();
    v14 = type metadata accessor for $DistributedGameServicesDebuggerProtocol();
    OUTLINED_FUNCTION_91(v14);
    if (v12)
    {
      OUTLINED_FUNCTION_342();

LABEL_9:
      OUTLINED_FUNCTION_266_0();

      OUTLINED_FUNCTION_48();
      OUTLINED_FUNCTION_197();

      return v42(v41, v42, v43, v44, v45, v46, v47, v48, a9, a10, a11, a12);
    }

    OUTLINED_FUNCTION_244_0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39508, &unk_1D85A4F80);
    OUTLINED_FUNCTION_195();
    OUTLINED_FUNCTION_11_2();
    sub_1D8581038();
    sub_1D8484CB0();
    v27 = sub_1D8484D60();
    OUTLINED_FUNCTION_31(v27);
    v28 = v13[11];
    v13[5] = v13[10];
    v13[6] = v28;

    OUTLINED_FUNCTION_232_0();
    OUTLINED_FUNCTION_70();
    OUTLINED_FUNCTION_50_0();
    sub_1D8581038();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_302_1(v29);
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_302_1(v30);
    OUTLINED_FUNCTION_36();
    OUTLINED_FUNCTION_155();
    GameServicesActorSystem.JSONInvocationEncoder.recordArgument<A>(_:)(v31, v32);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C88, &qword_1D859EDF0);
    OUTLINED_FUNCTION_156();
    GameServicesActorSystem.JSONInvocationEncoder.recordErrorType<A>(_:)(v33);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA395B0, &qword_1D85A4FD0);
    sub_1D8486FDC();
    sub_1D8487094();
    v34 = OUTLINED_FUNCTION_16();
    OUTLINED_FUNCTION_353(v34, v35);
    GameServicesActorSystem.JSONInvocationEncoder.doneRecording()();
    if (v36)
    {
      OUTLINED_FUNCTION_187();
      v37 = OUTLINED_FUNCTION_52();
      v38(v37);
      v39 = OUTLINED_FUNCTION_51_0();
      v40(v39);
      OUTLINED_FUNCTION_331();

      goto LABEL_9;
    }

    OUTLINED_FUNCTION_184_0();
    sub_1D8581028();
    v49 = swift_task_alloc();
    OUTLINED_FUNCTION_396(v49);
    OUTLINED_FUNCTION_0_6();
    sub_1D8526788(v50);
    OUTLINED_FUNCTION_98();
    v13[2] = v51;
    OUTLINED_FUNCTION_258_2();
    OUTLINED_FUNCTION_9_0(v52);
    OUTLINED_FUNCTION_118_0();

    return GameServicesActorSystem.remoteCall<A, B, C>(on:target:invocation:throwing:returning:)();
  }

  else
  {
    OUTLINED_FUNCTION_24(&unk_1D85A10A0);
    v15 = swift_task_alloc();
    v16 = OUTLINED_FUNCTION_286(v15);
    *v16 = v17;
    v16[1] = sub_1D84821F8;
    OUTLINED_FUNCTION_207_0(v13[9]);
    OUTLINED_FUNCTION_197();

    return v21(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, a11, a12);
  }
}

uint64_t DistributedGameServicesDebuggerProtocol<>.getAchievementsProgresses(_:player:)()
{
  OUTLINED_FUNCTION_148();
  v7 = OUTLINED_FUNCTION_307_0(v2, v3, v4, v5, v6);
  v1[18] = v7;
  OUTLINED_FUNCTION_39(v7);
  v1[19] = v8;
  v1[20] = OUTLINED_FUNCTION_332();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38DB0, &qword_1D8590D00);
  v1[21] = v9;
  OUTLINED_FUNCTION_39(v9);
  v1[22] = v10;
  v1[23] = OUTLINED_FUNCTION_332();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39500, &unk_1D8595FD0);
  v1[24] = v11;
  OUTLINED_FUNCTION_39(v11);
  v1[25] = v12;
  v13 = OUTLINED_FUNCTION_332();
  v14 = *v0;
  v15 = v0[1];
  v1[26] = v13;
  v1[27] = v14;
  v1[28] = v15;
  v16 = OUTLINED_FUNCTION_64_0();

  return MEMORY[0x1EEE6DFA0](v16);
}

{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_401(v0, v1, v2, v3);
  OUTLINED_FUNCTION_198();
  v4 = OUTLINED_FUNCTION_63();

  return MEMORY[0x1EEE6DFA0](v4);
}

uint64_t sub_1D84F8074(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_208();
  OUTLINED_FUNCTION_185();
  if (swift_distributed_actor_is_remote())
  {
    v15 = v14[14];
    OUTLINED_FUNCTION_166();
    sub_1D8580F98();
    v14[29] = v14[10];
    OUTLINED_FUNCTION_355();
    OUTLINED_FUNCTION_90();
    if (v15)
    {
      OUTLINED_FUNCTION_342();

LABEL_9:

      OUTLINED_FUNCTION_48();
      OUTLINED_FUNCTION_169();

      return v43(v42, v43, v44, v45, v46, v47, v48, v49, a9, a10, a11, a12, a13, a14);
    }

    v14[11] = v14[13];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39508, &unk_1D85A4F80);
    OUTLINED_FUNCTION_11_2();
    sub_1D8581038();
    sub_1D8484CB0();
    v28 = sub_1D8484D60();
    OUTLINED_FUNCTION_31(v28);
    v29 = v14[28];
    v14[7] = v14[27];
    v14[8] = v29;

    OUTLINED_FUNCTION_232_0();
    OUTLINED_FUNCTION_70();
    OUTLINED_FUNCTION_50_0();
    sub_1D8581038();
    OUTLINED_FUNCTION_3();
    OUTLINED_FUNCTION_302_1(v30);
    OUTLINED_FUNCTION_4();
    OUTLINED_FUNCTION_302_1(v31);
    OUTLINED_FUNCTION_36();
    OUTLINED_FUNCTION_155();
    GameServicesActorSystem.JSONInvocationEncoder.recordArgument<A>(_:)(v32, v33);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C88, &qword_1D859EDF0);
    OUTLINED_FUNCTION_156();
    GameServicesActorSystem.JSONInvocationEncoder.recordErrorType<A>(_:)(v34);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA395B0, &qword_1D85A4FD0);
    sub_1D8486FDC();
    sub_1D8487094();
    v35 = OUTLINED_FUNCTION_16();
    OUTLINED_FUNCTION_353(v35, v36);
    GameServicesActorSystem.JSONInvocationEncoder.doneRecording()();
    if (v37)
    {
      OUTLINED_FUNCTION_213();
      v38 = OUTLINED_FUNCTION_52();
      v39(v38);
      v40 = OUTLINED_FUNCTION_51_0();
      v41(v40);
      OUTLINED_FUNCTION_331();

      goto LABEL_9;
    }

    OUTLINED_FUNCTION_184_0();
    sub_1D8581028();
    swift_task_alloc();
    OUTLINED_FUNCTION_168();
    v14[30] = v50;
    *v50 = v51;
    v50[1] = sub_1D845B2D4;
    OUTLINED_FUNCTION_8();
    OUTLINED_FUNCTION_112();

    return GameServicesActorSystem.remoteCall<A, B, C>(on:target:invocation:throwing:returning:)();
  }

  else
  {
    v14[9] = v14[17];
    v16 = v14[28];
    v14[5] = v14[27];
    v14[6] = v16;
    OUTLINED_FUNCTION_54();
    v53 = v17 + *v17;
    v18 = swift_task_alloc();
    v14[32] = v18;
    *v18 = v14;
    v18[1] = sub_1D8486C58;
    OUTLINED_FUNCTION_81_2(v14[13]);
    OUTLINED_FUNCTION_169();

    return v23(v19, v20, v21, v22, v23, v24, v25, v26, a9, a10, v53, a12, a13, a14);
  }
}

uint64_t sub_1D84F8464(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[2] = a3;
  v10 = *a2;
  v8[3] = *a2;
  v8[4] = *(v10 - 8);
  v8[5] = swift_task_alloc();
  sub_1D8580F88();
  v11 = a2[1];
  v8[6] = v11;
  v8[7] = *(v11 - 8);
  v8[8] = swift_task_alloc();
  sub_1D8580F88();
  v12 = swift_task_alloc();
  v8[9] = v12;
  *v12 = v8;
  v12[1] = sub_1D852A37C;

  return DistributedGameServicesDebuggerProtocol<>.getAchievementsProgresses(_:player:)();
}

uint64_t sub_1D84F86A8()
{
  OUTLINED_FUNCTION_174();
  OUTLINED_FUNCTION_206();
  OUTLINED_FUNCTION_24(&unk_1D85A1098);
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_176(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_28_3(v1);

  return v5(v3);
}

uint64_t sub_1D84F873C(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v3[7] = a1;
  v4 = sub_1D8581018();
  v3[10] = v4;
  v3[11] = *(v4 - 8);
  v3[12] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38FE0, &qword_1D8590E40);
  v3[13] = v5;
  v3[14] = *(v5 - 8);
  v3[15] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39500, &unk_1D8595FD0);
  v3[16] = v6;
  v3[17] = *(v6 - 8);
  v3[18] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D84F88D0);
}

uint64_t sub_1D84F88D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_426();
  OUTLINED_FUNCTION_177();
  if (swift_distributed_actor_is_remote())
  {
    v15[19] = OUTLINED_FUNCTION_209_1();
    OUTLINED_FUNCTION_354();
    v16 = type metadata accessor for $DistributedGameServicesDebuggerProtocol();
    OUTLINED_FUNCTION_91(v16);
    if (v14)
    {
      OUTLINED_FUNCTION_342();

LABEL_9:
      OUTLINED_FUNCTION_231_0();

      OUTLINED_FUNCTION_48();
      OUTLINED_FUNCTION_240();

      return v38(v37, v38, v39, v40, v41, v42, v43, v44, a9, a10, a11, a12);
    }

    v15[5] = v15[7];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39508, &unk_1D85A4F80);
    OUTLINED_FUNCTION_284_2();
    OUTLINED_FUNCTION_11_2();
    sub_1D8581038();
    sub_1D8484CB0();
    v29 = sub_1D8484D60();
    OUTLINED_FUNCTION_31(v29);
    OUTLINED_FUNCTION_414_0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38E10, &qword_1D8590D20);
    OUTLINED_FUNCTION_51_4();
    OUTLINED_FUNCTION_152_0();
    sub_1D8581038();
    sub_1D84769B4();
    v30 = sub_1D8476AE8();
    OUTLINED_FUNCTION_31(v30);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C88, &qword_1D859EDF0);
    OUTLINED_FUNCTION_156();
    GameServicesActorSystem.JSONInvocationEncoder.recordErrorType<A>(_:)(v31);
    GameServicesActorSystem.JSONInvocationEncoder.doneRecording()();
    if (v32)
    {
      OUTLINED_FUNCTION_238_0();
      v33 = OUTLINED_FUNCTION_52();
      v34(v33);
      v35 = OUTLINED_FUNCTION_51_0();
      v36(v35);
      OUTLINED_FUNCTION_331();

      goto LABEL_9;
    }

    OUTLINED_FUNCTION_184_0();
    sub_1D8581028();
    v45 = swift_task_alloc();
    v15[21] = v45;
    OUTLINED_FUNCTION_0_6();
    sub_1D8526788(v46);
    OUTLINED_FUNCTION_81();
    *v45 = v47;
    OUTLINED_FUNCTION_195_0();
    OUTLINED_FUNCTION_66();
    OUTLINED_FUNCTION_240();

    return GameServicesActorSystem.remoteCallVoid<A, B>(on:target:invocation:throwing:)(v48, v49, v50, v51, v52, v53, v54);
  }

  else
  {
    OUTLINED_FUNCTION_24(&unk_1D85A1098);
    v17 = swift_task_alloc();
    v18 = OUTLINED_FUNCTION_275_0(v17);
    *v18 = v19;
    OUTLINED_FUNCTION_52_1(v18);
    OUTLINED_FUNCTION_240();

    return v22(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10, a11, a12);
  }
}

uint64_t sub_1D84F8BC4()
{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_153();
  OUTLINED_FUNCTION_42();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_37();
  *v5 = v4;
  *(v6 + 176) = v0;

  OUTLINED_FUNCTION_149();

  return MEMORY[0x1EEE6DFA0](v7);
}

uint64_t DistributedGameServicesDebuggerProtocol<>.resetAchievementsProgress(_:players:)()
{
  OUTLINED_FUNCTION_148();
  v6 = OUTLINED_FUNCTION_336_0(v1, v2, v3, v4, v5);
  v0[15] = v6;
  OUTLINED_FUNCTION_39(v6);
  v0[16] = v7;
  v0[17] = OUTLINED_FUNCTION_332();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38FE0, &qword_1D8590E40);
  v0[18] = v8;
  OUTLINED_FUNCTION_39(v8);
  v0[19] = v9;
  v0[20] = OUTLINED_FUNCTION_332();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39500, &unk_1D8595FD0);
  v0[21] = v10;
  OUTLINED_FUNCTION_39(v10);
  v0[22] = v11;
  v0[23] = OUTLINED_FUNCTION_332();
  v12 = OUTLINED_FUNCTION_64_0();

  return MEMORY[0x1EEE6DFA0](v12);
}

{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_401(v0, v1, v2, v3);
  OUTLINED_FUNCTION_198();
  v4 = OUTLINED_FUNCTION_63();

  return MEMORY[0x1EEE6DFA0](v4);
}

uint64_t sub_1D84F8E08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_185();
  if ((swift_distributed_actor_is_remote() & 1) == 0)
  {
    OUTLINED_FUNCTION_210(v14[13]);
    OUTLINED_FUNCTION_54();
    v16 = swift_task_alloc();
    v14[27] = v16;
    *v16 = v14;
    OUTLINED_FUNCTION_77_1(v16);
    OUTLINED_FUNCTION_239();

    __asm { BRAA            X4, X16 }
  }

  v15 = v14[11];
  OUTLINED_FUNCTION_83_0();
  v14[24] = v14[6];
  OUTLINED_FUNCTION_355();
  OUTLINED_FUNCTION_90();
  if (v15)
  {
    OUTLINED_FUNCTION_342();

    goto LABEL_9;
  }

  OUTLINED_FUNCTION_244_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39508, &unk_1D85A4F80);
  OUTLINED_FUNCTION_195();
  OUTLINED_FUNCTION_11_2();
  sub_1D8581038();
  sub_1D8484CB0();
  v19 = sub_1D8484D60();
  OUTLINED_FUNCTION_31(v19);
  v14[8] = v14[10];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38E10, &qword_1D8590D20);
  OUTLINED_FUNCTION_35_2();
  OUTLINED_FUNCTION_152_0();
  sub_1D8581038();
  sub_1D84769B4();
  v20 = sub_1D8476AE8();
  OUTLINED_FUNCTION_31(v20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C88, &qword_1D859EDF0);
  OUTLINED_FUNCTION_156();
  GameServicesActorSystem.JSONInvocationEncoder.recordErrorType<A>(_:)(v21);
  GameServicesActorSystem.JSONInvocationEncoder.doneRecording()();
  if (v22)
  {
    OUTLINED_FUNCTION_527();
    v23 = OUTLINED_FUNCTION_52();
    v24(v23);
    v25 = OUTLINED_FUNCTION_51_0();
    v26(v25);
    OUTLINED_FUNCTION_331();

LABEL_9:
    OUTLINED_FUNCTION_342_2();

    OUTLINED_FUNCTION_48();
    OUTLINED_FUNCTION_239();

    __asm { BRAA            X1, X16 }
  }

  OUTLINED_FUNCTION_184_0();
  sub_1D8581028();
  v29 = swift_task_alloc();
  v14[25] = v29;
  *v29 = v14;
  OUTLINED_FUNCTION_145_0(v29);
  OUTLINED_FUNCTION_53(v30);
  OUTLINED_FUNCTION_239();

  return GameServicesActorSystem.remoteCallVoid<A, B>(on:target:invocation:throwing:)(v31, v32, v33, v34, v35, v36, v37);
}

uint64_t sub_1D84F9154()
{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_153();
  OUTLINED_FUNCTION_42();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_37();
  *v5 = v4;
  *(v6 + 208) = v0;

  OUTLINED_FUNCTION_149();

  return MEMORY[0x1EEE6DFA0](v7);
}

uint64_t sub_1D84F924C()
{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_153();
  v3 = v2;
  OUTLINED_FUNCTION_62();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_37();
  *v6 = v5;
  *(v3 + 224) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_149();

    return MEMORY[0x1EEE6DFA0](v7);
  }

  else
  {

    OUTLINED_FUNCTION_57();

    return v8();
  }
}

uint64_t sub_1D84F9380(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *a2;
  v8[2] = *a2;
  v8[3] = *(v10 - 8);
  v8[4] = swift_task_alloc();
  sub_1D8580F88();
  v11 = a2[1];
  v8[5] = v11;
  v8[6] = *(v11 - 8);
  v8[7] = swift_task_alloc();
  sub_1D8580F88();
  v12 = swift_task_alloc();
  v8[8] = v12;
  *v12 = v8;
  v12[1] = sub_1D852A3A4;

  return DistributedGameServicesDebuggerProtocol<>.resetAchievementsProgress(_:players:)();
}

uint64_t sub_1D84F95C4()
{
  OUTLINED_FUNCTION_174();
  OUTLINED_FUNCTION_206();
  OUTLINED_FUNCTION_24(&unk_1D85A1090);
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_176(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_28_3(v1);

  return v5(v3);
}

uint64_t sub_1D84F9658(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v3[7] = a1;
  v4 = sub_1D8581018();
  v3[10] = v4;
  v3[11] = *(v4 - 8);
  v3[12] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38FE0, &qword_1D8590E40);
  v3[13] = v5;
  v3[14] = *(v5 - 8);
  v3[15] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39500, &unk_1D8595FD0);
  v3[16] = v6;
  v3[17] = *(v6 - 8);
  v3[18] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D84F97EC);
}

uint64_t sub_1D84F97EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_426();
  OUTLINED_FUNCTION_177();
  if (swift_distributed_actor_is_remote())
  {
    v15[19] = OUTLINED_FUNCTION_209_1();
    OUTLINED_FUNCTION_354();
    v16 = type metadata accessor for $DistributedGameServicesDebuggerProtocol();
    OUTLINED_FUNCTION_91(v16);
    if (v14)
    {
      OUTLINED_FUNCTION_342();

LABEL_9:
      OUTLINED_FUNCTION_231_0();

      OUTLINED_FUNCTION_48();
      OUTLINED_FUNCTION_240();

      return v38(v37, v38, v39, v40, v41, v42, v43, v44, a9, a10, a11, a12);
    }

    v15[5] = v15[7];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39508, &unk_1D85A4F80);
    OUTLINED_FUNCTION_284_2();
    OUTLINED_FUNCTION_11_2();
    sub_1D8581038();
    sub_1D8484CB0();
    v29 = sub_1D8484D60();
    OUTLINED_FUNCTION_31(v29);
    OUTLINED_FUNCTION_414_0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38E10, &qword_1D8590D20);
    OUTLINED_FUNCTION_51_4();
    OUTLINED_FUNCTION_152_0();
    sub_1D8581038();
    sub_1D84769B4();
    v30 = sub_1D8476AE8();
    OUTLINED_FUNCTION_31(v30);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C88, &qword_1D859EDF0);
    OUTLINED_FUNCTION_156();
    GameServicesActorSystem.JSONInvocationEncoder.recordErrorType<A>(_:)(v31);
    GameServicesActorSystem.JSONInvocationEncoder.doneRecording()();
    if (v32)
    {
      OUTLINED_FUNCTION_238_0();
      v33 = OUTLINED_FUNCTION_52();
      v34(v33);
      v35 = OUTLINED_FUNCTION_51_0();
      v36(v35);
      OUTLINED_FUNCTION_331();

      goto LABEL_9;
    }

    OUTLINED_FUNCTION_184_0();
    sub_1D8581028();
    v45 = swift_task_alloc();
    v15[21] = v45;
    OUTLINED_FUNCTION_0_6();
    sub_1D8526788(v46);
    OUTLINED_FUNCTION_81();
    *v45 = v47;
    OUTLINED_FUNCTION_195_0();
    OUTLINED_FUNCTION_66();
    OUTLINED_FUNCTION_240();

    return GameServicesActorSystem.remoteCallVoid<A, B>(on:target:invocation:throwing:)(v48, v49, v50, v51, v52, v53, v54);
  }

  else
  {
    OUTLINED_FUNCTION_24(&unk_1D85A1090);
    v17 = swift_task_alloc();
    v18 = OUTLINED_FUNCTION_275_0(v17);
    *v18 = v19;
    OUTLINED_FUNCTION_52_1(v18);
    OUTLINED_FUNCTION_240();

    return v22(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10, a11, a12);
  }
}

uint64_t sub_1D84F9AE0()
{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_153();
  OUTLINED_FUNCTION_42();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_37();
  *v5 = v4;
  *(v6 + 176) = v0;

  OUTLINED_FUNCTION_149();

  return MEMORY[0x1EEE6DFA0](v7);
}

uint64_t sub_1D84F9BD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_190();
  OUTLINED_FUNCTION_177();
  OUTLINED_FUNCTION_293();
  v12 = OUTLINED_FUNCTION_67();
  v13(v12);
  v14 = OUTLINED_FUNCTION_69();
  v15(v14);
  v16 = OUTLINED_FUNCTION_68();
  v17(v16);
  OUTLINED_FUNCTION_331();

  OUTLINED_FUNCTION_370_0();

  OUTLINED_FUNCTION_146();
  OUTLINED_FUNCTION_173();

  return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, a11, a12);
}

uint64_t DistributedGameServicesDebuggerProtocol<>.revealAchievements(_:players:)()
{
  OUTLINED_FUNCTION_148();
  v6 = OUTLINED_FUNCTION_336_0(v1, v2, v3, v4, v5);
  v0[15] = v6;
  OUTLINED_FUNCTION_39(v6);
  v0[16] = v7;
  v0[17] = OUTLINED_FUNCTION_332();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38FE0, &qword_1D8590E40);
  v0[18] = v8;
  OUTLINED_FUNCTION_39(v8);
  v0[19] = v9;
  v0[20] = OUTLINED_FUNCTION_332();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39500, &unk_1D8595FD0);
  v0[21] = v10;
  OUTLINED_FUNCTION_39(v10);
  v0[22] = v11;
  v0[23] = OUTLINED_FUNCTION_332();
  v12 = OUTLINED_FUNCTION_64_0();

  return MEMORY[0x1EEE6DFA0](v12);
}

{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_401(v0, v1, v2, v3);
  OUTLINED_FUNCTION_198();
  v4 = OUTLINED_FUNCTION_63();

  return MEMORY[0x1EEE6DFA0](v4);
}

uint64_t sub_1D84F9DE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_185();
  if ((swift_distributed_actor_is_remote() & 1) == 0)
  {
    OUTLINED_FUNCTION_210(v14[13]);
    OUTLINED_FUNCTION_54();
    v16 = swift_task_alloc();
    v14[27] = v16;
    *v16 = v14;
    OUTLINED_FUNCTION_77_1(v16);
    OUTLINED_FUNCTION_239();

    __asm { BRAA            X4, X16 }
  }

  v15 = v14[11];
  OUTLINED_FUNCTION_83_0();
  v14[24] = v14[6];
  OUTLINED_FUNCTION_355();
  OUTLINED_FUNCTION_90();
  if (v15)
  {
    OUTLINED_FUNCTION_342();

    goto LABEL_9;
  }

  OUTLINED_FUNCTION_244_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA39508, &unk_1D85A4F80);
  OUTLINED_FUNCTION_195();
  OUTLINED_FUNCTION_11_2();
  sub_1D8581038();
  sub_1D8484CB0();
  v19 = sub_1D8484D60();
  OUTLINED_FUNCTION_31(v19);
  v14[8] = v14[10];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38E10, &qword_1D8590D20);
  OUTLINED_FUNCTION_35_2();
  OUTLINED_FUNCTION_152_0();
  sub_1D8581038();
  sub_1D84769B4();
  v20 = sub_1D8476AE8();
  OUTLINED_FUNCTION_31(v20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C88, &qword_1D859EDF0);
  OUTLINED_FUNCTION_156();
  GameServicesActorSystem.JSONInvocationEncoder.recordErrorType<A>(_:)(v21);
  GameServicesActorSystem.JSONInvocationEncoder.doneRecording()();
  if (v22)
  {
    OUTLINED_FUNCTION_527();
    v23 = OUTLINED_FUNCTION_52();
    v24(v23);
    v25 = OUTLINED_FUNCTION_51_0();
    v26(v25);
    OUTLINED_FUNCTION_331();

LABEL_9:
    OUTLINED_FUNCTION_342_2();

    OUTLINED_FUNCTION_48();
    OUTLINED_FUNCTION_239();

    __asm { BRAA            X1, X16 }
  }

  OUTLINED_FUNCTION_184_0();
  sub_1D8581028();
  v29 = swift_task_alloc();
  v14[25] = v29;
  *v29 = v14;
  OUTLINED_FUNCTION_145_0(v29);
  OUTLINED_FUNCTION_53(v30);
  OUTLINED_FUNCTION_239();

  return GameServicesActorSystem.remoteCallVoid<A, B>(on:target:invocation:throwing:)(v31, v32, v33, v34, v35, v36, v37);
}

uint64_t sub_1D84FA130()
{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_153();
  OUTLINED_FUNCTION_42();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_37();
  *v5 = v4;
  *(v6 + 208) = v0;

  OUTLINED_FUNCTION_149();

  return MEMORY[0x1EEE6DFA0](v7);
}

uint64_t sub_1D84FA228(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_190();
  OUTLINED_FUNCTION_177();
  OUTLINED_FUNCTION_454();
  v12 = OUTLINED_FUNCTION_67();
  v13(v12);
  v14 = OUTLINED_FUNCTION_69();
  v15(v14);
  v16 = OUTLINED_FUNCTION_68();
  v17(v16);
  OUTLINED_FUNCTION_331();

  OUTLINED_FUNCTION_342_2();

  OUTLINED_FUNCTION_57();
  OUTLINED_FUNCTION_173();

  return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, a11, a12);
}

uint64_t sub_1D84FA2DC()
{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_153();
  v3 = v2;
  OUTLINED_FUNCTION_62();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_37();
  *v6 = v5;
  *(v3 + 224) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_149();

    return MEMORY[0x1EEE6DFA0](v7);
  }

  else
  {

    OUTLINED_FUNCTION_57();

    return v8();
  }
}

uint64_t sub_1D84FA410(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_190();
  OUTLINED_FUNCTION_177();
  OUTLINED_FUNCTION_454();
  v12 = OUTLINED_FUNCTION_67();
  v13(v12);
  v14 = OUTLINED_FUNCTION_69();
  v15(v14);
  v16 = OUTLINED_FUNCTION_68();
  v17(v16);
  OUTLINED_FUNCTION_331();

  OUTLINED_FUNCTION_146();
  OUTLINED_FUNCTION_173();

  return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10, a11, a12);
}

uint64_t sub_1D84FA4D4()
{
  OUTLINED_FUNCTION_174();

  OUTLINED_FUNCTION_146();

  return v0();
}

uint64_t sub_1D84FA550(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *a2;
  v8[2] = *a2;
  v8[3] = *(v10 - 8);
  v8[4] = swift_task_alloc();
  sub_1D8580F88();
  v11 = a2[1];
  v8[5] = v11;
  v8[6] = *(v11 - 8);
  v8[7] = swift_task_alloc();
  sub_1D8580F88();
  v12 = swift_task_alloc();
  v8[8] = v12;
  *v12 = v8;
  v12[1] = sub_1D84FA794;

  return DistributedGameServicesDebuggerProtocol<>.revealAchievements(_:players:)();
}

uint64_t sub_1D84FA794(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_190();
  OUTLINED_FUNCTION_177();
  OUTLINED_FUNCTION_153();
  OUTLINED_FUNCTION_171_0();
  v13 = v12;
  OUTLINED_FUNCTION_37();
  *v14 = v13;

  v15 = OUTLINED_FUNCTION_221();
  v16(v15);
  v17 = OUTLINED_FUNCTION_188();
  v18(v17);

  OUTLINED_FUNCTION_146();
  OUTLINED_FUNCTION_173();

  return v20(v19, v20, v21, v22, v23, v24, v25, v26, a9, a10, a11, a12);
}

uint64_t sub_1D84FA958()
{
  OUTLINED_FUNCTION_174();
  OUTLINED_FUNCTION_366();
  OUTLINED_FUNCTION_31_0(&unk_1D85A1088);
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_176(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_42_0(v1);

  return v4(v3);
}

uint64_t sub_1D84FA9E4(uint64_t a1)
{
  v2[6] = a1;
  v2[7] = v1;
  v3 = sub_1D8581018();
  v2[8] = v3;
  v2[9] = *(v3 - 8);
  v2[10] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA395D8, &qword_1D8596070);
  v2[11] = v4;
  v2[12] = *(v4 - 8);
  v2[13] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D84FAB0C);
}

uint64_t sub_1D84FAB0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_245_0();
  OUTLINED_FUNCTION_177();
  if ((swift_distributed_actor_is_remote() & 1) == 0)
  {
    OUTLINED_FUNCTION_31_0(&unk_1D85A1088);
    v17 = swift_task_alloc();
    v18 = OUTLINED_FUNCTION_264_2(v17);
    *v18 = v19;
    OUTLINED_FUNCTION_113_1(v18);
    OUTLINED_FUNCTION_207();

    return v21(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10, a11, a12);
  }

  *(v15 + 112) = OUTLINED_FUNCTION_209_1();
  OUTLINED_FUNCTION_354();
  v16 = type metadata accessor for $DistributedGameServicesDebuggerProtocol();
  OUTLINED_FUNCTION_91(v16);
  if (v14)
  {
    OUTLINED_FUNCTION_342();

    goto LABEL_9;
  }

  OUTLINED_FUNCTION_339_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA395B0, &qword_1D85A4FD0);
  OUTLINED_FUNCTION_248_0();
  OUTLINED_FUNCTION_44_2();
  sub_1D8581038();
  sub_1D8486FDC();
  v29 = sub_1D8487094();
  OUTLINED_FUNCTION_31(v29);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C88, &qword_1D859EDF0);
  OUTLINED_FUNCTION_156();
  GameServicesActorSystem.JSONInvocationEncoder.recordErrorType<A>(_:)(v30);
  GameServicesActorSystem.JSONInvocationEncoder.doneRecording()();
  if (v31)
  {
    OUTLINED_FUNCTION_338_1();
    v32 = OUTLINED_FUNCTION_49_0();
    v33(v32);
    OUTLINED_FUNCTION_331();

LABEL_9:
    OUTLINED_FUNCTION_324_1();

    OUTLINED_FUNCTION_48();
    OUTLINED_FUNCTION_207();

    return v21(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10, a11, a12);
  }

  OUTLINED_FUNCTION_184_0();
  sub_1D8581028();
  v34 = swift_task_alloc();
  OUTLINED_FUNCTION_333_2(v34);
  OUTLINED_FUNCTION_0_6();
  sub_1D8526788(v35);
  OUTLINED_FUNCTION_81();
  *(v15 + 16) = v36;
  OUTLINED_FUNCTION_256_0();
  OUTLINED_FUNCTION_66();
  OUTLINED_FUNCTION_207();

  return GameServicesActorSystem.remoteCallVoid<A, B>(on:target:invocation:throwing:)(v37, v38, v39, v40, v41, v42, v43);
}

uint64_t sub_1D84FAD74()
{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_153();
  OUTLINED_FUNCTION_42();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_37();
  *v5 = v4;
  *(v6 + 136) = v0;

  OUTLINED_FUNCTION_149();

  return MEMORY[0x1EEE6DFA0](v7);
}

uint64_t DistributedGameServicesDebuggerProtocol<>.submitAchievementsProgress(_:)()
{
  OUTLINED_FUNCTION_148();
  v5 = OUTLINED_FUNCTION_333(v1, v2, v3, v4);
  v0[13] = v5;
  OUTLINED_FUNCTION_39(v5);
  v0[14] = v6;
  v0[15] = OUTLINED_FUNCTION_332();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA395D8, &qword_1D8596070);
  v0[16] = v7;
  OUTLINED_FUNCTION_39(v7);
  v0[17] = v8;
  v0[18] = OUTLINED_FUNCTION_332();
  v9 = OUTLINED_FUNCTION_64_0();

  return MEMORY[0x1EEE6DFA0](v9);
}

{
  OUTLINED_FUNCTION_148();
  OUTLINED_FUNCTION_250(v0, v1, v2);
  OUTLINED_FUNCTION_198();
  v3 = OUTLINED_FUNCTION_63();

  return MEMORY[0x1EEE6DFA0](v3);
}

uint64_t sub_1D84FAF60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_245_0();
  OUTLINED_FUNCTION_177();
  if (swift_distributed_actor_is_remote())
  {
    v15 = v14[9];
    OUTLINED_FUNCTION_83_0();
    v14[19] = v14[6];
    OUTLINED_FUNCTION_355();
    OUTLINED_FUNCTION_90();
    if (v15)
    {
      OUTLINED_FUNCTION_342();

LABEL_11:
      OUTLINED_FUNCTION_231_0();

      OUTLINED_FUNCTION_48();
      OUTLINED_FUNCTION_207();

      return v35(v34, v35, v36, v37, v38, v39, v40, v41, a9, a10, a11, a12);
    }

    OUTLINED_FUNCTION_346_0();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA395B0, &qword_1D85A4FD0);
    OUTLINED_FUNCTION_248_0();
    OUTLINED_FUNCTION_36_3();
    sub_1D8581038();
    sub_1D8486FDC();
    v29 = sub_1D8487094();
    OUTLINED_FUNCTION_31(v29);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA38C88, &qword_1D859EDF0);
    OUTLINED_FUNCTION_156();
    GameServicesActorSystem.JSONInvocationEncoder.recordErrorType<A>(_:)(v30);
    GameServicesActorSystem.JSONInvocationEncoder.doneRecording()();
    if (v31)
    {
      OUTLINED_FUNCTION_229_0();
      v32 = OUTLINED_FUNCTION_49_0();
      v33(v32);
      OUTLINED_FUNCTION_331();

      goto LABEL_11;
    }

    OUTLINED_FUNCTION_184_0();
    sub_1D8581028();
    v42 = swift_task_alloc();
    v43 = OUTLINED_FUNCTION_275_0(v42);
    *v43 = v44;
    OUTLINED_FUNCTION_200_0(v43);
    OUTLINED_FUNCTION_53(v45);
    OUTLINED_FUNCTION_207();

    return GameServicesActorSystem.remoteCallVoid<A, B>(on:target:invocation:throwing:)(v46, v47, v48, v49, v50, v51, v52);
  }

  else
  {
    OUTLINED_FUNCTION_210(v14[11]);
    OUTLINED_FUNCTION_131();
    v54 = v16 + *v16;
    v17 = swift_task_alloc();
    v18 = OUTLINED_FUNCTION_322_0(v17);
    *v18 = v19;
    v18[1] = sub_1D84FB314;
    OUTLINED_FUNCTION_44(v14[8]);
    OUTLINED_FUNCTION_207();

    return v23(v20, v21, v22, v23, v24, v25, v26, v27, a9, v54, a11, a12);
  }
}