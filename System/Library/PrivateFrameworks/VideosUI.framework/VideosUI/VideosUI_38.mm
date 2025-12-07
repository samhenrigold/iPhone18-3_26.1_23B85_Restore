void *sub_1E3923890(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E158, &qword_1E42AB3B8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || &a4[5 * v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF32770, &unk_1E42988A0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1E39239C8(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2B7A0, &qword_1E42AB350);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 8);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || &a4[v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770, &qword_1E42992B0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1E3923AF8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E150, &qword_1E42AB3B0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    if (v10 != a4 || &v13[88 * v8] <= v12)
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

char *sub_1E3923C10(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E138, &qword_1E42AB370);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 64);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[64 * v8] <= v12)
    {
      memmove(v12, v13, v8 << 6);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

unint64_t sub_1E3923D18()
{
  result = qword_1EE23B3F8;
  if (!qword_1EE23B3F8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE23B3F8);
  }

  return result;
}

void sub_1E3923D5C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  if (v1 >> 62)
  {
    v3 = OUTLINED_FUNCTION_26_29();
    if (!v3)
    {
      return;
    }
  }

  else
  {
    v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v3)
    {
      return;
    }
  }

  type metadata accessor for LibMediaEntityFactory();
  if (v3 < 1)
  {
    __break(1u);
  }

  else
  {
    for (i = 0; i != v3; ++i)
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x1E6911E60](i, v1);
      }

      else
      {
        v5 = *(v1 + 8 * i + 32);
      }

      v6 = v5;
      sub_1E3B46CE8(v5, 64, &v16);
      if (v17)
      {
        sub_1E3251BE8(&v16, v18);
        sub_1E327F454(v18, &v16);
        v7 = *v2;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *v2 = v7;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v12 = OUTLINED_FUNCTION_27();
          v7 = sub_1E3923890(v12, v13, v14, v7);
          *v2 = v7;
        }

        v10 = v7[2];
        v9 = v7[3];
        if (v10 >= v9 >> 1)
        {
          v15 = OUTLINED_FUNCTION_35(v9);
          *v2 = sub_1E3923890(v15, v10 + 1, 1, v7);
        }

        __swift_destroy_boxed_opaque_existential_1(v18);
        v11 = *v2;
        v11[2] = v10 + 1;
        sub_1E3251BE8(&v16, &v11[5 * v10 + 4]);
      }

      else
      {

        sub_1E325F748(&v16, &qword_1ECF28EB8, &unk_1E4298890);
      }
    }
  }
}

void *sub_1E3923EE8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1E3923F08(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1E3923F08(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E158, &qword_1E42AB3B8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || &a4[5 * v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF32770, &unk_1E42988A0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1E3924040(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E150, &qword_1E42AB3B0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    if (v10 != a4 || &v13[88 * v8] <= v12)
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

uint64_t sub_1E3924158(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1E3924DBC(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_1E392436C(v5);
  *a1 = v2;
  return result;
}

unint64_t sub_1E3924274()
{
  result = qword_1EE23B510;
  if (!qword_1EE23B510)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2C420, &qword_1E429CDD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE23B510);
  }

  return result;
}

uint64_t sub_1E39242D8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E148, &unk_1E42AB380);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E392436C(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1E4207914();
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
        v6 = sub_1E4206314();
        *(v6 + 16) = v5;
      }

      v7[0] = v6 + 32;
      v7[1] = v5;
      sub_1E3924550(v7, v8, a1, v4);
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
    return sub_1E3924460(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1E3924460(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 88 * a3;
    v8 = result - a3;
    while (2)
    {
      v9 = v8;
      v10 = v7;
      do
      {
        result = v10[2];
        if (result == *(v10 - 9) && v10[3] == *(v10 - 8))
        {
          break;
        }

        result = sub_1E42079A4();
        if ((result & 1) == 0)
        {
          break;
        }

        if (!v6)
        {
          __break(1u);
          return result;
        }

        memcpy(__dst, v10, sizeof(__dst));
        memcpy(v10, v10 - 11, 0x58uLL);
        result = memcpy(v10 - 11, __dst, 0x58uLL);
        v10 -= 11;
      }

      while (!__CFADD__(v9++, 1));
      ++v4;
      v7 += 88;
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

uint64_t sub_1E3924550(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v75 = result;
  v80 = MEMORY[0x1E69E7CC0];
  v5 = a3[1];
  if (v5 >= 1)
  {
    i = 0;
    v7 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v8 = i++;
      if (i < v5)
      {
        v9 = *a3;
        v10 = *a3 + 88 * i;
        result = *(v10 + 16);
        v11 = *(v10 + 24);
        v12 = *a3 + 88 * v8;
        if (result == *(v12 + 16) && v11 == *(v12 + 24))
        {
          v14 = 0;
        }

        else
        {
          result = sub_1E42079A4();
          v14 = result;
        }

        v15 = 88 * v8;
        v16 = (v9 + 88 * v8 + 200);
        for (i = v8 + 2; i < v5; ++i)
        {
          result = *(v16 - 1);
          if (result == *(v16 - 12) && *v16 == *(v16 - 11))
          {
            if (v14)
            {
              goto LABEL_21;
            }
          }

          else
          {
            result = sub_1E42079A4();
            if ((v14 ^ result))
            {
              break;
            }
          }

          v16 += 11;
        }

        if ((v14 & 1) == 0)
        {
          goto LABEL_28;
        }

LABEL_21:
        if (i < v8)
        {
          goto LABEL_122;
        }

        if (v8 < i)
        {
          v18 = 88 * i - 88;
          v19 = i;
          v20 = v8;
          do
          {
            if (v20 != --v19)
            {
              v21 = *a3;
              if (!*a3)
              {
                goto LABEL_127;
              }

              memcpy(__dst, (v21 + v15), sizeof(__dst));
              memmove((v21 + v15), (v21 + v18), 0x58uLL);
              result = memcpy((v21 + v18), __dst, 0x58uLL);
            }

            ++v20;
            v18 -= 88;
            v15 += 88;
          }

          while (v20 < v19);
        }
      }

LABEL_28:
      v22 = a3[1];
      if (i < v22)
      {
        if (__OFSUB__(i, v8))
        {
          goto LABEL_121;
        }

        if (i - v8 < a4)
        {
          if (__OFADD__(v8, a4))
          {
            goto LABEL_123;
          }

          if (v8 + a4 >= v22)
          {
            v23 = a3[1];
          }

          else
          {
            v23 = v8 + a4;
          }

          if (v23 < v8)
          {
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
            return result;
          }

          if (i != v23)
          {
            v76 = v7;
            v24 = *a3;
            v25 = *a3 + 88 * i;
            v26 = v8 - i;
            do
            {
              v27 = v26;
              v28 = v25;
              do
              {
                result = v28[2];
                if (result == *(v28 - 9) && v28[3] == *(v28 - 8))
                {
                  break;
                }

                result = sub_1E42079A4();
                if ((result & 1) == 0)
                {
                  break;
                }

                if (!v24)
                {
                  goto LABEL_125;
                }

                memcpy(__dst, v28, sizeof(__dst));
                memcpy(v28, v28 - 11, 0x58uLL);
                result = memcpy(v28 - 11, __dst, 0x58uLL);
                v28 -= 11;
              }

              while (!__CFADD__(v27++, 1));
              ++i;
              v25 += 88;
              --v26;
            }

            while (i != v23);
            i = v23;
            v7 = v76;
          }
        }
      }

      if (i < v8)
      {
        goto LABEL_120;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_1E37FFF70(0, *(v7 + 16) + 1, 1, v7);
        v7 = result;
      }

      v32 = *(v7 + 16);
      v31 = *(v7 + 24);
      v33 = v32 + 1;
      if (v32 >= v31 >> 1)
      {
        result = sub_1E37FFF70((v31 > 1), v32 + 1, 1, v7);
        v7 = result;
      }

      *(v7 + 16) = v33;
      v34 = v7 + 32;
      v35 = (v7 + 32 + 16 * v32);
      *v35 = v8;
      v35[1] = i;
      v77 = *v75;
      if (!*v75)
      {
        goto LABEL_128;
      }

      if (v32)
      {
        while (1)
        {
          v36 = v33 - 1;
          v37 = (v34 + 16 * (v33 - 1));
          v38 = (v7 + 16 * v33);
          if (v33 >= 4)
          {
            break;
          }

          if (v33 == 3)
          {
            v39 = *(v7 + 32);
            v40 = *(v7 + 40);
            v49 = __OFSUB__(v40, v39);
            v41 = v40 - v39;
            v42 = v49;
LABEL_69:
            if (v42)
            {
              goto LABEL_110;
            }

            v54 = *v38;
            v53 = v38[1];
            v55 = __OFSUB__(v53, v54);
            v56 = v53 - v54;
            v57 = v55;
            if (v55)
            {
              goto LABEL_113;
            }

            v58 = v37[1];
            v59 = v58 - *v37;
            if (__OFSUB__(v58, *v37))
            {
              goto LABEL_116;
            }

            if (__OFADD__(v56, v59))
            {
              goto LABEL_118;
            }

            if (v56 + v59 >= v41)
            {
              if (v41 < v59)
              {
                v36 = v33 - 2;
              }

              goto LABEL_91;
            }

            goto LABEL_84;
          }

          if (v33 < 2)
          {
            goto LABEL_112;
          }

          v61 = *v38;
          v60 = v38[1];
          v49 = __OFSUB__(v60, v61);
          v56 = v60 - v61;
          v57 = v49;
LABEL_84:
          if (v57)
          {
            goto LABEL_115;
          }

          v63 = *v37;
          v62 = v37[1];
          v49 = __OFSUB__(v62, v63);
          v64 = v62 - v63;
          if (v49)
          {
            goto LABEL_117;
          }

          if (v64 < v56)
          {
            goto LABEL_98;
          }

LABEL_91:
          if (v36 - 1 >= v33)
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
            goto LABEL_126;
          }

          v68 = v7;
          v69 = (v34 + 16 * (v36 - 1));
          v70 = *v69;
          v71 = (v34 + 16 * v36);
          v72 = v71[1];
          result = sub_1E3924BCC((*a3 + 88 * *v69), (*a3 + 88 * *v71), (*a3 + 88 * v72), v77);
          if (v4)
          {
          }

          if (v72 < v70)
          {
            goto LABEL_105;
          }

          v73 = *(v68 + 16);
          if (v36 > v73)
          {
            goto LABEL_106;
          }

          *v69 = v70;
          v69[1] = v72;
          if (v36 >= v73)
          {
            goto LABEL_107;
          }

          v33 = v73 - 1;
          result = memmove((v34 + 16 * v36), v71 + 2, 16 * (v73 - 1 - v36));
          v7 = v68;
          *(v68 + 16) = v73 - 1;
          if (v73 <= 2)
          {
            goto LABEL_98;
          }
        }

        v43 = v34 + 16 * v33;
        v44 = *(v43 - 64);
        v45 = *(v43 - 56);
        v49 = __OFSUB__(v45, v44);
        v46 = v45 - v44;
        if (v49)
        {
          goto LABEL_108;
        }

        v48 = *(v43 - 48);
        v47 = *(v43 - 40);
        v49 = __OFSUB__(v47, v48);
        v41 = v47 - v48;
        v42 = v49;
        if (v49)
        {
          goto LABEL_109;
        }

        v50 = v38[1];
        v51 = v50 - *v38;
        if (__OFSUB__(v50, *v38))
        {
          goto LABEL_111;
        }

        v49 = __OFADD__(v41, v51);
        v52 = v41 + v51;
        if (v49)
        {
          goto LABEL_114;
        }

        if (v52 >= v46)
        {
          v66 = *v37;
          v65 = v37[1];
          v49 = __OFSUB__(v65, v66);
          v67 = v65 - v66;
          if (v49)
          {
            goto LABEL_119;
          }

          if (v41 < v67)
          {
            v36 = v33 - 2;
          }

          goto LABEL_91;
        }

        goto LABEL_69;
      }

LABEL_98:
      v5 = a3[1];
      if (i >= v5)
      {
        v80 = v7;
        break;
      }
    }
  }

  if (!*v75)
  {
    goto LABEL_129;
  }

  sub_1E3924A94(&v80, *v75, a3);
}

uint64_t sub_1E3924A94(uint64_t *a1, char *a2, void *a3)
{
  v4 = a1;
  v15 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_1E37FFF5C(v15);
    v15 = result;
  }

  v12 = v4;
  *v4 = v15;
  v6 = (v15 + 16);
  for (i = *(v15 + 16); ; *v6 = i)
  {
    if (i < 2)
    {
LABEL_10:
      *v12 = v15;
      return 1;
    }

    if (!*a3)
    {
      break;
    }

    v4 = (v15 + 16 * i);
    v8 = *v4;
    v9 = &v6[2 * i];
    v10 = v9[1];
    sub_1E3924BCC((*a3 + 88 * *v4), (*a3 + 88 * *v9), (*a3 + 88 * v10), a2);
    if (v3)
    {
      goto LABEL_10;
    }

    if (v10 < v8)
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (i - 2 >= *v6)
    {
      goto LABEL_12;
    }

    *v4 = v8;
    v4[1] = v10;
    v11 = *v6 - i;
    if (*v6 < i)
    {
      goto LABEL_13;
    }

    i = *v6 - 1;
    result = memmove(v9, v9 + 2, 16 * v11);
  }

  *v12 = v15;
  __break(1u);
  return result;
}

uint64_t sub_1E3924BCC(char *__src, char *__dst, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __dst;
  v7 = __src;
  v8 = (__dst - __src) / 88;
  v9 = (a3 - __dst) / 88;
  if (v8 < v9)
  {
    if (a4 != __src || &__src[88 * v8] <= a4)
    {
      memmove(a4, __src, 88 * v8);
    }

    v11 = &v4[88 * v8];
    while (1)
    {
      if (v4 >= v11 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_46;
      }

      v13 = *(v6 + 2) == *(v4 + 2) && *(v6 + 3) == *(v4 + 3);
      if (v13 || (sub_1E42079A4() & 1) == 0)
      {
        break;
      }

      v14 = v6;
      v13 = v7 == v6;
      v6 += 88;
      if (!v13)
      {
        goto LABEL_21;
      }

LABEL_22:
      v7 += 88;
    }

    v14 = v4;
    v13 = v7 == v4;
    v4 += 88;
    if (v13)
    {
      goto LABEL_22;
    }

LABEL_21:
    memmove(v7, v14, 0x58uLL);
    goto LABEL_22;
  }

  if (a4 != __dst || &__dst[88 * v9] <= a4)
  {
    memmove(a4, __dst, 88 * v9);
  }

  v11 = &v4[88 * v9];
LABEL_29:
  for (v5 -= 88; v11 > v4 && v6 > v7; v5 -= 88)
  {
    v17 = *(v11 - 9) == *(v6 - 9) && *(v11 - 8) == *(v6 - 8);
    if (!v17 && (sub_1E42079A4() & 1) != 0)
    {
      v18 = v6 - 88;
      v13 = v5 + 88 == v6;
      v6 -= 88;
      if (!v13)
      {
        memmove(v5, v18, 0x58uLL);
        v6 = v18;
      }

      goto LABEL_29;
    }

    if (v11 != v5 + 88)
    {
      memmove(v5, v11 - 88, 0x58uLL);
    }

    v11 -= 88;
  }

LABEL_46:
  v19 = (v11 - v4) / 88;
  if (v6 != v4 || v6 >= &v4[88 * v19])
  {
    memmove(v6, v4, 88 * v19);
  }

  return 1;
}

double OUTLINED_FUNCTION_32_28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, __int128 a17)
{
  v19 = a1 & 0xFFFFFFFFFFFFLL | 0x73000000000000;

  return sub_1E3277E60(v19, 0xE700000000000000, v17, &a17);
}

double sub_1E3924DF8()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_83();
  v2 = sub_1E3928994(v0, v1);
  OUTLINED_FUNCTION_43(v2, v3);

  OUTLINED_FUNCTION_25();
  swift_beginAccess();

  return result;
}

uint64_t sub_1E3924F04(unint64_t a1)
{
  OUTLINED_FUNCTION_27_6();
  swift_beginAccess();
  v3 = *(v1 + 16);
  v4 = (v3 | a1) == 0;

  if (v3 && a1)
  {
    v4 = sub_1E3929398(v3, a1);
  }

  if (v4)
  {
    *(v1 + 16) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v8[2] = v1;
    v8[3] = a1;
    sub_1E3925060(v7, sub_1E3925000, v8);
  }
}

uint64_t sub_1E3925000()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  OUTLINED_FUNCTION_27_6();
  swift_beginAccess();
  *(v2 + 16) = v1;
}

uint64_t sub_1E3925060(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_0_83();
  sub_1E3928994(v3, v4);
  return sub_1E41FE8E4();
}

uint64_t sub_1E3925108()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_83();
  v3 = sub_1E3928994(v1, v2);
  OUTLINED_FUNCTION_43(v3, v4);

  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  return *(v0 + 24);
}

uint64_t sub_1E3925198@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1E3925108();
  *a1 = result & 1;
  return result;
}

void sub_1E39251F0(char a1)
{
  v2 = a1 & 1;
  OUTLINED_FUNCTION_27_6();
  swift_beginAccess();
  if (*(v1 + 24) == v2)
  {
    *(v1 + 24) = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v5[2] = v1;
    v6 = v2;
    sub_1E3925060(v4, sub_1E39252A8, v5);
  }
}

uint64_t sub_1E39252A8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  OUTLINED_FUNCTION_27_6();
  result = swift_beginAccess();
  *(v1 + 24) = v2;
  return result;
}

uint64_t sub_1E39252F8()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_83();
  v3 = sub_1E3928994(v1, v2);
  OUTLINED_FUNCTION_43(v3, v4);

  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  return *(v0 + 32);
}

uint64_t sub_1E392538C@<X0>(uint64_t a1@<X8>)
{
  result = sub_1E39252F8();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

double sub_1E39253F4(uint64_t a1, int a2)
{
  OUTLINED_FUNCTION_27_6();
  swift_beginAccess();
  v6 = *(v2 + 40);
  if (v6 & 1) != 0 || (a2)
  {
    if (v6 & a2)
    {
      goto LABEL_4;
    }
  }

  else
  {
    result = *(v2 + 32);
    if (result == *&a1)
    {
LABEL_4:
      *(v2 + 32) = *&a1;
      *(v2 + 40) = a2 & 1;
      return result;
    }
  }

  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath);
  v9[2] = v2;
  v9[3] = a1;
  v10 = a2 & 1;
  sub_1E3925060(v8, sub_1E39254DC, v9);

  return result;
}

uint64_t sub_1E39254DC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  OUTLINED_FUNCTION_27_6();
  result = swift_beginAccess();
  *(v1 + 32) = v2;
  *(v1 + 40) = v3;
  return result;
}

uint64_t sub_1E3925530()
{

  v1 = OBJC_IVAR____TtC8VideosUI34MediaShowcasingScoreboardPresenter___observationRegistrar;
  sub_1E41FE934();
  OUTLINED_FUNCTION_2();
  (*(v2 + 8))(v0 + v1);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v3, v4);
}

uint64_t sub_1E39255CC()
{
  v0 = swift_allocObject();
  sub_1E3925604(v0);
  return v0;
}

uint64_t sub_1E3925604(uint64_t a1)
{
  *(v1 + 16) = 0;
  *(v1 + 24) = 1;
  *(v1 + 32) = 0;
  *(v1 + 40) = 1;
  sub_1E41FE924();
  return v1;
}

double sub_1E39256FC(uint64_t a1)
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_55_14();
  OUTLINED_FUNCTION_57();
  sub_1E4200674();

  return v2;
}

uint64_t sub_1E39257D4(uint64_t a1, double a2)
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_55_14();

  return sub_1E4200684();
}

uint64_t sub_1E3925850@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1E392583C();
  *a1 = result;
  return result;
}

uint64_t sub_1E39258E8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1E39258D4();
  *a1 = result;
  return result;
}

uint64_t sub_1E3925914(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  return sub_1E3925A34(v1, &unk_1E42AB540, &unk_1E42AB568);
}

uint64_t sub_1E3925968(uint64_t a1)
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_55_14();
  OUTLINED_FUNCTION_57();
  sub_1E4200674();

  return v2;
}

uint64_t sub_1E39259C8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1E3925954();
  *a1 = result;
  return result;
}

uint64_t sub_1E39259F4(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  return sub_1E3925A34(v1, &unk_1E42AB598, &unk_1E42AB5C0);
}

uint64_t sub_1E3925A34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1E4200684();
}

uint64_t sub_1E3925AB4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1E3925AA0();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1E3925B4C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1E3925B38();
  *a1 = result & 1;
  return result;
}

double sub_1E3925BB4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1E4200674();

  return v1;
}

void sub_1E3925C2C(uint64_t a1@<X8>)
{
  *a1 = sub_1E3925BB4();
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
}

uint64_t sub_1E3925C88()
{
  OUTLINED_FUNCTION_0_8();
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1E4200684();
}

uint64_t sub_1E3925D0C(uint64_t a1)
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_55_14();
  OUTLINED_FUNCTION_57();
  sub_1E4200674();

  return v2;
}

double sub_1E3925DFC(uint64_t a1)
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_55_14();
  OUTLINED_FUNCTION_57();
  sub_1E4200674();

  return v2;
}

void sub_1E3925E78(double (*a1)(void)@<X3>, uint64_t a2@<X8>)
{
  *a2 = a1();
  *(a2 + 8) = v3;
  *(a2 + 16) = v4;
  *(a2 + 24) = v5;
}

uint64_t sub_1E3925EFC()
{
  OUTLINED_FUNCTION_0_8();
  swift_getKeyPath();
  OUTLINED_FUNCTION_55_14();

  return sub_1E4200684();
}

uint64_t sub_1E3925F70(void *a1, uint64_t *a2, uint64_t *a3)
{
  OUTLINED_FUNCTION_11_3(v3 + *a1, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_23_23();
  return swift_endAccess();
}

BOOL sub_1E3925FD8()
{
  v0 = sub_1E3925D6C();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v12.origin.x = sub_1E3925DE8();
  v12.origin.y = v7;
  v12.size.width = v8;
  v12.size.height = v9;
  v11.origin.x = v0;
  v11.origin.y = v2;
  v11.size.width = v4;
  v11.size.height = v6;
  return CGRectIntersectsRect(v11, v12);
}

uint64_t sub_1E3926038()
{
  v1 = *(v0 + OBJC_IVAR____TtC8VideosUI32MediaShowcasingMetadataPresenter_interactor);
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  v2 = *(v1 + 48);
  v3 = OBJC_IVAR____TtC8VideosUI32MediaShowcasingMetadataPresenter_metadataIndex;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  if (*(v2 + 16) && (sub_1E3928950(*(v0 + v3)), (v4 & 1) != 0))
  {
  }

  else
  {
    return 0;
  }
}

void sub_1E39260C8(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16))
  {
    sub_1E3928950(a1);
    if (v2)
    {
    }
  }
}

void *sub_1E3926118(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v3 = sub_1E3928950(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = *(*(a2 + 56) + 8 * v3);
  v6 = v5;
  return v5;
}

uint64_t sub_1E3926160()
{
  v1 = *(v0 + OBJC_IVAR____TtC8VideosUI32MediaShowcasingMetadataPresenter_interactor);
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  v2 = *(v1 + 56);
  if (v2 && (v3 = OBJC_IVAR____TtC8VideosUI32MediaShowcasingMetadataPresenter_metadataIndex, OUTLINED_FUNCTION_25(), swift_beginAccess(), *(v2 + 16)) && (sub_1E3928950(*(v0 + v3)), (v4 & 1) != 0))
  {
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1E39261F4()
{
  v1 = *(v0 + OBJC_IVAR____TtC8VideosUI32MediaShowcasingMetadataPresenter_interactor);
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  v2 = *(v1 + 16);
  if (v2 >> 62)
  {
    return sub_1E4207384();
  }

  else
  {
    return *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }
}

uint64_t sub_1E392625C(uint64_t a1, uint64_t a2)
{
  v2 = swift_allocObject();
  sub_1E39262AC();
  return v2;
}

void sub_1E39262AC()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v0;
  v66 = v3;
  v65 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E180, &qword_1E42AB708);
  OUTLINED_FUNCTION_0_10();
  v63 = v6;
  v64 = v5;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_44();
  v62 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E178, &qword_1E42AB6B8);
  OUTLINED_FUNCTION_0_10();
  v60 = v10;
  v61 = v9;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_44();
  v59 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BD0, &unk_1E42BEDC0);
  OUTLINED_FUNCTION_0_10();
  v57 = v14;
  v58 = v13;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_44();
  v56 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E168, &qword_1E42AB588);
  OUTLINED_FUNCTION_0_10();
  v54 = v18;
  v55 = v17;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_41();
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2BB30, &unk_1E42A2AB0);
  OUTLINED_FUNCTION_0_10();
  v21 = v20;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v53 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF429B0, &unk_1E42AB480);
  OUTLINED_FUNCTION_0_10();
  v27 = v26;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v53 - v29;
  v31 = OBJC_IVAR____TtC8VideosUI32MediaShowcasingMetadataPresenter__contentHeight;
  *&v67 = 0;
  sub_1E4200634();
  v32 = *(v27 + 32);
  v32(v2 + v31, v30, v25);
  v33 = OBJC_IVAR____TtC8VideosUI32MediaShowcasingMetadataPresenter__alpha;
  *&v67 = 0x3FF0000000000000;
  sub_1E4200634();
  v32(v2 + v33, v30, v25);
  v34 = OBJC_IVAR____TtC8VideosUI32MediaShowcasingMetadataPresenter__currentMetadata;
  *&v67 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2BB28, &qword_1E42A2A60);
  sub_1E4200634();
  (*(v21 + 32))(v2 + v34, v24, v53);
  v35 = OBJC_IVAR____TtC8VideosUI32MediaShowcasingMetadataPresenter__currentImage;
  *&v67 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E160, &qword_1E42DF980);
  sub_1E4200634();
  v36 = v55;
  v37 = *(v54 + 32);
  v37(v2 + v35, v1, v55);
  v38 = OBJC_IVAR____TtC8VideosUI32MediaShowcasingMetadataPresenter__currentFeaturedLogo;
  *&v67 = 0;
  sub_1E4200634();
  v37(v2 + v38, v1, v36);
  v39 = OBJC_IVAR____TtC8VideosUI32MediaShowcasingMetadataPresenter_scoreboardPresenter;
  type metadata accessor for MediaShowcasingScoreboardPresenter(0);
  v40 = swift_allocObject();
  sub_1E3925604(v40);
  *(v2 + v39) = v40;
  LOBYTE(v67) = 0;
  sub_1E4200634();
  v41 = *(v57 + 32);
  v42 = OUTLINED_FUNCTION_45_18();
  v41(v42);
  OUTLINED_FUNCTION_64_10();
  v43 = OUTLINED_FUNCTION_45_18();
  v41(v43);
  v44 = OBJC_IVAR____TtC8VideosUI32MediaShowcasingMetadataPresenter__safeAreaInset;
  v45 = *(MEMORY[0x1E69DDCE0] + 16);
  v67 = *MEMORY[0x1E69DDCE0];
  v68 = v45;
  type metadata accessor for UIEdgeInsets();
  v46 = v59;
  sub_1E4200634();
  (*(v60 + 32))(v2 + v44, v46, v61);
  OUTLINED_FUNCTION_64_10();
  v47 = OUTLINED_FUNCTION_45_18();
  v41(v47);
  v48 = OBJC_IVAR____TtC8VideosUI32MediaShowcasingMetadataPresenter__metadataFrame;
  type metadata accessor for CGRect(0);
  v67 = 0u;
  v68 = 0u;
  v49 = v62;
  sub_1E4200634();
  v50 = v64;
  v51 = *(v63 + 32);
  v51(v2 + v48, v49, v64);
  v52 = OBJC_IVAR____TtC8VideosUI32MediaShowcasingMetadataPresenter__pageControlFrame;
  v67 = 0u;
  v68 = 0u;
  sub_1E4200634();
  v51(v2 + v52, v49, v50);
  *(v2 + OBJC_IVAR____TtC8VideosUI32MediaShowcasingMetadataPresenter_metadataIndex) = 0;
  *(v2 + OBJC_IVAR____TtC8VideosUI32MediaShowcasingMetadataPresenter_isLoadedObserver) = 0;
  *(v2 + OBJC_IVAR____TtC8VideosUI32MediaShowcasingMetadataPresenter_scoreBoardObserver) = 0;
  *(v2 + OBJC_IVAR____TtC8VideosUI32MediaShowcasingMetadataPresenter_interactor) = v65;

  sub_1E3744B84(v66, &unk_1E42AB628, &unk_1E42AB650);

  OUTLINED_FUNCTION_25_2();
}

double sub_1E3926874(unint64_t a1, char a2, char a3)
{
  v4 = v3;
  if ((a2 & 1) != 0 || ((v6 = *(v3 + OBJC_IVAR____TtC8VideosUI32MediaShowcasingMetadataPresenter_interactor), OUTLINED_FUNCTION_25(), swift_beginAccess(), v7 = sub_1E32AE9B0(*(v6 + 16)), v7 >= 1) ? (v8 = v7 > a1) : (v8 = 0), !v8))
  {
    OUTLINED_FUNCTION_25();
    swift_beginAccess();
    sub_1E3926A6C();
    return result;
  }

  v19 = *(v6 + 16);
  v20 = a1;
  v21 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C790, &qword_1E42996A0);
  OUTLINED_FUNCTION_46();
  sub_1E328FCF4(v10, v11, &qword_1E42996A0);
  sub_1E38D2054(&v20, &v18);
  v12 = v18;
  v13 = sub_1E392583C();
  if (v13)
  {
    v20 = v13;
    if (v12)
    {
      v19 = v12;
      type metadata accessor for ViewModel();
      sub_1E3928994(&qword_1EE23BA60, type metadata accessor for ViewModel);
      v14 = sub_1E4205E84();

      v15 = OBJC_IVAR____TtC8VideosUI32MediaShowcasingMetadataPresenter_metadataIndex;
      OUTLINED_FUNCTION_27_6();
      swift_beginAccess();
      *(v4 + v15) = a1;
      if (v14)
      {
        goto LABEL_16;
      }

      goto LABEL_15;
    }

LABEL_14:
    v17 = OBJC_IVAR____TtC8VideosUI32MediaShowcasingMetadataPresenter_metadataIndex;
    OUTLINED_FUNCTION_27_6();
    swift_beginAccess();
    *(v4 + v17) = a1;
LABEL_15:
    sub_1E3926A6C();
    goto LABEL_16;
  }

  if (v12)
  {
    goto LABEL_14;
  }

  v16 = OBJC_IVAR____TtC8VideosUI32MediaShowcasingMetadataPresenter_metadataIndex;
  OUTLINED_FUNCTION_27_6();
  swift_beginAccess();
  *(v4 + v16) = a1;
LABEL_16:

  return result;
}

void sub_1E3926A6C()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1;
  v4 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2D2B0, &unk_1E429D3D0);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v6);
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E190, &qword_1E42AB880);
  OUTLINED_FUNCTION_0_10();
  v85 = v7;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v9);
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E198, &qword_1E42AB888);
  OUTLINED_FUNCTION_0_10();
  v87 = v10;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E1A0, &unk_1E42AB890);
  OUTLINED_FUNCTION_0_10();
  v91 = v14;
  v92 = v13;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v16);
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D028, &qword_1E42A8DB8);
  OUTLINED_FUNCTION_0_10();
  v80 = v17;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v19);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E170, &qword_1E42AB590);
  OUTLINED_FUNCTION_0_10();
  v82 = v21;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v79[-v23];
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E1A8, &qword_1E42AB8A0);
  OUTLINED_FUNCTION_0_10();
  v83 = v26;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v27);
  v30 = &v79[-v29];
  v93 = v0;
  if (v2)
  {
    MEMORY[0x1EEE9AC00](v28);
    sub_1E4203E44();
    sub_1E4200FE4();
    v31 = v93;
  }

  else
  {
    v32 = *&v0[OBJC_IVAR____TtC8VideosUI32MediaShowcasingMetadataPresenter_interactor];
    OUTLINED_FUNCTION_25();
    swift_beginAccess();
    v100[3] = *(v32 + 16);
    v94 = v4;
    v95 = 0;
    v33 = OUTLINED_FUNCTION_57();
    __swift_instantiateConcreteTypeFromMangledNameV2(v33, v34);
    OUTLINED_FUNCTION_46();
    sub_1E328FCF4(v35, v36, &qword_1E42996A0);
    v31 = v93;
    sub_1E38D2054(&v94, v100);
    sub_1E3925A34(v100[0], &unk_1E42AB4E0, &unk_1E42AB508);
  }

  sub_1E3927B8C();
  v37 = *&v31[OBJC_IVAR____TtC8VideosUI32MediaShowcasingMetadataPresenter_interactor];
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  v38 = sub_1E3926118(v4, *(v37 + 24));
  v39 = &selRef__shouldShowRenewalOption;
  if (v38)
  {
    v40 = v38;
    v41 = [v38 image];
    if (v41 && (v42 = v41, v31 = [v41 uiImage], v42, v31))
    {
      v43 = v4;
      v44 = v31;
      OUTLINED_FUNCTION_66_13(v31, &unk_1E42AB540, &unk_1E42AB568);

      v4 = v43;
      v39 = &selRef__shouldShowRenewalOption;
    }

    else
    {
      OUTLINED_FUNCTION_66_13(0, &unk_1E42AB540, &unk_1E42AB568);
      OUTLINED_FUNCTION_4_0();
      v45 = swift_allocObject();
      swift_weakInit();
      OUTLINED_FUNCTION_2_4();
      v46 = swift_allocObject();
      *(v46 + 16) = v45;
      *(v46 + 24) = v4;
      OUTLINED_FUNCTION_18_32(v46);
      OUTLINED_FUNCTION_20_42(COERCE_DOUBLE(1107296256));
      v96 = v47;
      v97 = &block_descriptor_81;
      v48 = _Block_copy(&v94);

      [v40 addCompletion_];

      _Block_release(v48);
    }
  }

  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  v49 = *(v37 + 32);
  if (v49)
  {
    v50 = sub_1E3926118(v4, v49);
    if (v50)
    {
      v51 = v50;
      v52 = [v50 image];
      if (v52 && (v53 = v52, v31 = [v52 uiImage], v53, v31))
      {
        v39 = v4;
        v54 = v31;
        OUTLINED_FUNCTION_66_13(v31, &unk_1E42AB598, &unk_1E42AB5C0);

        v4 = v39;
      }

      else
      {
        OUTLINED_FUNCTION_66_13(0, &unk_1E42AB598, &unk_1E42AB5C0);
        OUTLINED_FUNCTION_4_0();
        v55 = swift_allocObject();
        swift_weakInit();
        OUTLINED_FUNCTION_2_4();
        v56 = swift_allocObject();
        *(v56 + 16) = v55;
        *(v56 + 24) = v4;
        OUTLINED_FUNCTION_18_32(v56);
        OUTLINED_FUNCTION_20_42(COERCE_DOUBLE(1107296256));
        v96 = v57;
        v97 = &block_descriptor_27;
        v58 = _Block_copy(&v94);

        [v51 v39[416]];

        _Block_release(v58);
      }
    }
  }

  sub_1E3744B84(0, &unk_1E42AB5E0, &unk_1E42AB608);
  if (sub_1E3926038())
  {

    OUTLINED_FUNCTION_11_3(&v31[OBJC_IVAR____TtC8VideosUI32MediaShowcasingMetadataPresenter__currentImage], &v94);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E168, &qword_1E42AB588);
    sub_1E4200644();
    swift_endAccess();
    OUTLINED_FUNCTION_28_26(&qword_1EE28A0B8, &qword_1ECF2E170, &qword_1E42AB590);
    OUTLINED_FUNCTION_54_9();
    v59 = v82;
    (*(v82 + 8))(v24, v20);
    OUTLINED_FUNCTION_11_54(&qword_1EE28A330, &qword_1ECF2E1A8, &qword_1E42AB8A0);
    v60 = sub_1E42006B4();
    v61 = v83;
    (*(v83 + 8))(v30, v25);
  }

  else
  {
    LOBYTE(v94) = 1;
    OUTLINED_FUNCTION_63_9();
    OUTLINED_FUNCTION_10_46(&qword_1EE28A118, &qword_1ECF2D028, &qword_1E42A8DB8);
    v60 = OUTLINED_FUNCTION_65_12();
    (*(v80 + 8))(v31, v39);
    v61 = v83;
    v59 = v82;
  }

  if (sub_1E3926160())
  {

    OUTLINED_FUNCTION_11_3(&v31[OBJC_IVAR____TtC8VideosUI32MediaShowcasingMetadataPresenter__currentFeaturedLogo], &v94);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E168, &qword_1E42AB588);
    sub_1E4200644();
    swift_endAccess();
    OUTLINED_FUNCTION_28_26(&qword_1EE28A0B8, &qword_1ECF2E170, &qword_1E42AB590);
    OUTLINED_FUNCTION_54_9();
    (*(v59 + 8))(v24, v20);
    OUTLINED_FUNCTION_11_54(&qword_1EE28A330, &qword_1ECF2E1A8, &qword_1E42AB8A0);
    v62 = sub_1E42006B4();
    (*(v61 + 8))(v30, v25);
  }

  else
  {
    LOBYTE(v94) = 1;

    OUTLINED_FUNCTION_63_9();
    OUTLINED_FUNCTION_10_46(&qword_1EE28A118, &qword_1ECF2D028, &qword_1E42A8DB8);
    v62 = OUTLINED_FUNCTION_65_12();
    (*(v80 + 8))(v31, v61);
  }

  sub_1E39281E4(v4);
  v64 = v63;
  v65 = OBJC_IVAR____TtC8VideosUI32MediaShowcasingMetadataPresenter_isLoadedObserver;
  if (*&v31[OBJC_IVAR____TtC8VideosUI32MediaShowcasingMetadataPresenter_isLoadedObserver])
  {

    sub_1E42004E4();
  }

  v94 = v60;
  v98 = v64;
  v99 = v62;

  v83 = v60;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E1B0, &unk_1E42DF9E0);
  OUTLINED_FUNCTION_1_37();
  sub_1E328FCF4(v66, v67, &unk_1E42DF9E0);
  sub_1E4200424();
  sub_1E328FCF4(&qword_1EE28A388, &qword_1ECF2E190, &qword_1E42AB880);
  v68 = v84;
  sub_1E4200744();
  v69 = OUTLINED_FUNCTION_57();
  v70(v69);
  sub_1E3280A90(0, &qword_1EE23B1D0, 0x1E69E9610);
  v71 = sub_1E4206A04();
  v94 = v71;
  v72 = sub_1E42069A4();
  v73 = v90;
  __swift_storeEnumTagSinglePayload(v90, 1, 1, v72);
  OUTLINED_FUNCTION_11_54(&unk_1EE28A318, &qword_1ECF2E198, &qword_1E42AB888);
  sub_1E3746800();
  v74 = v89;
  v75 = v88;
  sub_1E42007D4();
  sub_1E325F6F0(v73, &unk_1ECF2D2B0, &unk_1E429D3D0);

  (*(v87 + 8))(v68, v75);
  OUTLINED_FUNCTION_4_0();
  swift_allocObject();
  v76 = v93;
  swift_weakInit();
  OUTLINED_FUNCTION_29_24(&qword_1EE28A258, &qword_1ECF2E1A0, &unk_1E42AB890);
  v77 = v92;
  v78 = sub_1E4200844();

  (*(v91 + 8))(v74, v77);
  *&v76[v65] = v78;

  OUTLINED_FUNCTION_25_2();
}

double sub_1E3927714()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_23_31();
  sub_1E3928994(v0, v1);
  sub_1E4200514();
  sub_1E4200594();

  return result;
}

BOOL sub_1E39277A4()
{
  v0 = sub_1E392583C();
  if (!v0)
  {
    goto LABEL_9;
  }

  v1 = (*(*v0 + 488))(v0);

  if (v1)
  {
    v3 = sub_1E373E010(91, v1, v2);

    if (v3)
    {
      OUTLINED_FUNCTION_8();
      v5 = *(v4 + 488);

      v7 = v5(v6);

      if (v7)
      {

        v1 = *(v7 + 16);

        return v1 > 0;
      }

      OUTLINED_FUNCTION_8();
      v9 = (*(v8 + 464))();
      if (v9)
      {
        v1 = sub_1E32AE9B0(v9);

        return v1 > 0;
      }
    }

LABEL_9:
    v1 = 0;
  }

  return v1 > 0;
}

uint64_t sub_1E39278E4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF429B0, &unk_1E42AB480);
  OUTLINED_FUNCTION_2();
  v2 = *(v1 + 8);
  v3 = OUTLINED_FUNCTION_58_12();
  v2(v3);
  v4 = OUTLINED_FUNCTION_60_4(OBJC_IVAR____TtC8VideosUI32MediaShowcasingMetadataPresenter__alpha);
  v2(v4);
  v5 = OBJC_IVAR____TtC8VideosUI32MediaShowcasingMetadataPresenter__currentMetadata;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2BB30, &unk_1E42A2AB0);
  OUTLINED_FUNCTION_2();
  (*(v6 + 8))(v0 + v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E168, &qword_1E42AB588);
  OUTLINED_FUNCTION_2();
  v8 = *(v7 + 8);
  v9 = OUTLINED_FUNCTION_58_12();
  v8(v9);
  v10 = OUTLINED_FUNCTION_60_4(OBJC_IVAR____TtC8VideosUI32MediaShowcasingMetadataPresenter__currentFeaturedLogo);
  v8(v10);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BD0, &unk_1E42BEDC0);
  OUTLINED_FUNCTION_2();
  v12 = *(v11 + 8);
  v13 = OUTLINED_FUNCTION_58_12();
  v12(v13);
  v14 = OUTLINED_FUNCTION_60_4(OBJC_IVAR____TtC8VideosUI32MediaShowcasingMetadataPresenter__isMinimalMetadata);
  v12(v14);
  v15 = OBJC_IVAR____TtC8VideosUI32MediaShowcasingMetadataPresenter__safeAreaInset;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E178, &qword_1E42AB6B8);
  OUTLINED_FUNCTION_2();
  (*(v16 + 8))(v0 + v15);
  v17 = OUTLINED_FUNCTION_60_4(OBJC_IVAR____TtC8VideosUI32MediaShowcasingMetadataPresenter__isMuted);
  v12(v17);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E180, &qword_1E42AB708);
  OUTLINED_FUNCTION_2();
  v19 = *(v18 + 8);
  v20 = OUTLINED_FUNCTION_58_12();
  v19(v20);
  v21 = OUTLINED_FUNCTION_60_4(OBJC_IVAR____TtC8VideosUI32MediaShowcasingMetadataPresenter__pageControlFrame);
  v19(v21);

  return v0;
}

uint64_t sub_1E3927B34()
{
  sub_1E39278E4();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

double sub_1E3927B8C()
{
  OUTLINED_FUNCTION_31_1();
  v3 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2D2B0, &unk_1E429D3D0);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v4);
  v6 = v23 - v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E1B8, &unk_1E42AB8A8);
  OUTLINED_FUNCTION_8_1();
  v8 = v7;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_41();
  v10 = OBJC_IVAR____TtC8VideosUI32MediaShowcasingMetadataPresenter_scoreBoardObserver;
  if (*(v0 + OBJC_IVAR____TtC8VideosUI32MediaShowcasingMetadataPresenter_scoreBoardObserver))
  {

    sub_1E42004E4();
  }

  *(v0 + v10) = 0;

  v11 = sub_1E392583C();
  if (!v11)
  {
    goto LABEL_8;
  }

  v12 = (*(*v11 + 488))(v11);

  if (!v12)
  {
    goto LABEL_8;
  }

  v14 = sub_1E373E010(229, v12, v13);

  if (!v14)
  {
    goto LABEL_8;
  }

  if (*v14 == _TtC8VideosUI34MediaShowcasingScoreboardViewModel)
  {
    v25 = sub_1E3BB6124();
    v27 = v25;
    sub_1E3280A90(0, &qword_1EE23B1D0, 0x1E69E9610);
    v24 = sub_1E4206A04();
    v26 = v24;
    v15 = sub_1E42069A4();
    __swift_storeEnumTagSinglePayload(v6, 1, 1, v15);
    v23[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF32570, &unk_1E4299870);
    OUTLINED_FUNCTION_1_37();
    sub_1E328FCF4(v16, v17, &unk_1E4299870);
    sub_1E3746800();
    sub_1E42007D4();
    sub_1E325F6F0(v6, &unk_1ECF2D2B0, &unk_1E429D3D0);

    OUTLINED_FUNCTION_4_0();
    v18 = swift_allocObject();
    swift_weakInit();
    OUTLINED_FUNCTION_2_4();
    v19 = swift_allocObject();
    *(v19 + 16) = v14;
    *(v19 + 24) = v18;
    OUTLINED_FUNCTION_29_24(&qword_1ECF2E1C0, &qword_1ECF2E1B8, &unk_1E42AB8A8);

    v20 = sub_1E4200844();

    (*(v8 + 8))(v2, v1);
    *(v3 + v10) = v20;

LABEL_8:
    OUTLINED_FUNCTION_25_2();
    return result;
  }

  OUTLINED_FUNCTION_25_2();

  return result;
}

void sub_1E3927F14()
{
  OUTLINED_FUNCTION_31_1();
  v22 = v1;
  v23 = v2;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = sub_1E4203FC4();
  OUTLINED_FUNCTION_0_10();
  v25 = v10;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_41();
  v24 = sub_1E4203FF4();
  OUTLINED_FUNCTION_0_10();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_5();
  v17 = v16 - v15;
  sub_1E3280A90(0, &qword_1EE23B1D0, 0x1E69E9610);
  v18 = sub_1E4206A04();
  OUTLINED_FUNCTION_5_10();
  v19 = swift_allocObject();
  v19[2] = v6;
  v19[3] = v8;
  v19[4] = v4;
  v26[4] = v22;
  v26[5] = v19;
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 1107296256;
  v26[2] = sub_1E378AEA4;
  v26[3] = v23;
  v20 = _Block_copy(v26);
  v21 = v8;

  sub_1E4203FE4();
  v26[0] = MEMORY[0x1E69E7CC0];
  sub_1E3928994(&qword_1EE2882E0, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A730, &qword_1E429B000);
  sub_1E328FCF4(&qword_1EE23B5D0, &qword_1ECF2A730, &qword_1E429B000);
  sub_1E42072E4();
  MEMORY[0x1E6911380](0, v17, v0, v20);
  _Block_release(v20);

  (*(v25 + 8))(v0, v9);
  (*(v13 + 8))(v17, v24);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E39281E4(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D028, &qword_1E42A8DB8);
  OUTLINED_FUNCTION_0_10();
  v5 = v4;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v6);
  v8 = v24 - v7;
  v9 = *(v1 + OBJC_IVAR____TtC8VideosUI32MediaShowcasingMetadataPresenter_interactor);
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  sub_1E39260C8(a1, *(v9 + 40));
  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = v10;
  if (!sub_1E32AE9B0(v10))
  {

LABEL_13:
    LOBYTE(aBlock[0]) = 1;
    sub_1E42005C4();
    OUTLINED_FUNCTION_10_46(&qword_1EE28A118, &qword_1ECF2D028, &qword_1E42A8DB8);
    sub_1E42006B4();
    (*(v5 + 8))(v8, v3);
    return;
  }

  v25 = v8;
  v26 = v5;
  v27 = v3;
  OUTLINED_FUNCTION_4_0();
  v12 = swift_allocObject();
  swift_weakInit();
  OUTLINED_FUNCTION_5_10();
  v13 = swift_allocObject();
  v13[2] = v12;
  v13[3] = a1;
  v13[4] = v11;
  OUTLINED_FUNCTION_4_0();
  v14 = swift_allocObject();
  v24[1] = v12;

  v16 = sub_1E32AE9B0(v15);
  *(v14 + 16) = sub_1E39288C0(0, v16);
  OUTLINED_FUNCTION_4_0();
  v17 = swift_allocObject();
  *(v17 + 16) = 0;
  v18 = sub_1E32AE9B0(v11);
  v19 = 0;
  v28 = v11 & 0xFFFFFFFFFFFFFF8;
  v29 = v11 & 0xC000000000000001;
  while (1)
  {
    if (v18 == v19)
    {

      v5 = v26;
      v3 = v27;
      v8 = v25;
      goto LABEL_13;
    }

    if (v29)
    {
      v20 = MEMORY[0x1E6911E60](v19, v11);
    }

    else
    {
      if (v19 >= *(v28 + 16))
      {
        goto LABEL_15;
      }

      v20 = *(v11 + 8 * v19 + 32);
    }

    v21 = v20;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    v22 = swift_allocObject();
    v22[2] = v14;
    v22[3] = v19;
    v22[4] = v17;
    v22[5] = v11;
    v22[6] = sub_1E392909C;
    v22[7] = v13;
    aBlock[4] = sub_1E3929254;
    aBlock[5] = v22;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1E38B2C5C;
    aBlock[3] = &block_descriptor_109_0;
    v23 = _Block_copy(aBlock);

    [v21 fetchImageWithCompletion_];
    _Block_release(v23);

    ++v19;
  }

  __break(1u);
LABEL_15:
  __break(1u);
}

uint64_t sub_1E3928580@<X0>(unsigned __int8 *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1E3928570(*a1, a1[1], a1[2]);
  *a2 = result & 1;
  return result;
}

void sub_1E39285BC()
{
  OUTLINED_FUNCTION_31_1();
  v3 = v2;
  sub_1E41FFCB4();
  OUTLINED_FUNCTION_8_1();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_41();
  v7 = (*(*v3 + 552))();
  if (!v7)
  {
    v20 = 0u;
    v21 = 0u;
    goto LABEL_6;
  }

  sub_1E3277E60(0x4D746E65746E6F63, 0xEF61746164617465, v7, &v20);

  if (!*(&v21 + 1))
  {
LABEL_6:
    sub_1E325F6F0(&v20, &unk_1ECF296E0, &unk_1E4298030);
    goto LABEL_7;
  }

  if (swift_dynamicCast())
  {
    v9 = v18;
    v8 = v19;
    goto LABEL_8;
  }

LABEL_7:
  v8 = 0xE300000000000000;
  v9 = 7104878;
LABEL_8:
  v10 = sub_1E324FBDC();
  (*(v5 + 16))(v1, v10, v0);

  v11 = sub_1E41FFC94();
  v12 = sub_1E42067E4();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *&v20 = v14;
    *v13 = 136315138;
    v15 = sub_1E3270FC8(v9, v8, &v20);

    *(v13 + 4) = v15;
    _os_log_impl(&dword_1E323F000, v11, v12, "MediaShowcasingScoreboard:: [CloudChannels] Updated contentMetadata: %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v14);
    MEMORY[0x1E69143B0](v14, -1, -1);
    MEMORY[0x1E69143B0](v13, -1, -1);
  }

  else
  {
  }

  (*(v5 + 8))(v1, v0);
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    type metadata accessor for MediaShowcasingMetadataPresenter(0);
    OUTLINED_FUNCTION_23_31();
    sub_1E3928994(v16, v17);
    OUTLINED_FUNCTION_20_2();
    sub_1E4200514();
    sub_1E4200594();
  }

  OUTLINED_FUNCTION_25_2();
}

void *sub_1E39288C0(void *result, uint64_t a2)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = result;
    if (a2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E160, &qword_1E42DF980);
      v4 = sub_1E4206314();
      *(v4 + 16) = a2;
      v5 = a2 - 1;
      for (i = 32; ; i += 8)
      {
        *(v4 + i) = v3;
        if (!v5)
        {
          break;
        }

        v7 = v3;
        --v5;
      }
    }

    else
    {

      return MEMORY[0x1E69E7CC0];
    }

    return v4;
  }

  return result;
}

unint64_t sub_1E3928950(uint64_t a1)
{
  v2 = sub_1E4207B34();

  return sub_1E3887CB0(a1, v2);
}

uint64_t sub_1E3928994(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    OUTLINED_FUNCTION_20_2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1E3928A00()
{
  result = sub_1E41FE934();
  if (v1 <= 0x3F)
  {
    OUTLINED_FUNCTION_59_7();
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void sub_1E3928AAC(uint64_t a1)
{
  OUTLINED_FUNCTION_27_23(a1, &qword_1EE28A0A8, MEMORY[0x1E69E7DE0]);
  if (v1 <= 0x3F)
  {
    sub_1E3928D10(319, &qword_1EE289FD0, &qword_1ECF2BB28, &qword_1E42A2A60);
    if (v2 <= 0x3F)
    {
      sub_1E3928D10(319, &qword_1EE289F08, &qword_1ECF2E160, &qword_1E42DF980);
      if (v4 <= 0x3F)
      {
        OUTLINED_FUNCTION_27_23(v3 - 8, &qword_1EE289F50, MEMORY[0x1E69E6370]);
        if (v5 <= 0x3F)
        {
          sub_1E3928D60(319, &unk_1EE289F30, type metadata accessor for UIEdgeInsets);
          if (v6 <= 0x3F)
          {
            sub_1E3928D60(319, &qword_1EE289F20, type metadata accessor for CGRect);
            if (v7 <= 0x3F)
            {
              OUTLINED_FUNCTION_59_7();
              swift_updateClassMetadata2();
            }
          }
        }
      }
    }
  }
}

void sub_1E3928D10(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    OUTLINED_FUNCTION_20_2();
    v5 = sub_1E4200694();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1E3928D60(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    OUTLINED_FUNCTION_20_2();
    v4 = sub_1E4200694();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

double sub_1E3928DB0(char *a1)
{
  v1 = *a1;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_1E3744B84(v1, &unk_1E42AB5E0, &unk_1E42AB608);
  }

  return result;
}

uint64_t sub_1E3928E98()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = *(v2 + OBJC_IVAR____TtC8VideosUI32MediaShowcasingMetadataPresenter_interactor);
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  v9[5] = *(v3 + 16);
  v7 = v1;
  v8 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C790, &qword_1E42996A0);
  OUTLINED_FUNCTION_46();
  sub_1E328FCF4(v4, v5, &qword_1E42996A0);
  sub_1E38D2054(&v7, v9);
  return sub_1E3925A34(v9[0], &unk_1E42AB4E0, &unk_1E42AB508);
}

uint64_t objectdestroy_83Tm()
{

  OUTLINED_FUNCTION_5_10();

  return swift_deallocObject();
}

double sub_1E3928FD0(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);
  v6 = *(v2 + 32);
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    if (v5)
    {
      v10 = [v5 uiImage];
      if (v10)
      {
        v11 = v10;
        v12 = OBJC_IVAR____TtC8VideosUI32MediaShowcasingMetadataPresenter_metadataIndex;
        OUTLINED_FUNCTION_25();
        swift_beginAccess();
        if (*(v9 + v12) == v6)
        {
          v13 = v11;
          sub_1E3925A34(v11, a1, a2);
        }
      }
    }
  }

  return result;
}

void sub_1E392909C(uint64_t a1)
{
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v6 = Strong;
  v7 = OBJC_IVAR____TtC8VideosUI32MediaShowcasingMetadataPresenter_metadataIndex;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  if (*(v6 + v7) != v3)
  {
LABEL_19:

    return;
  }

  if (!a1)
  {
    v14 = 0;
    v9 = 0;
LABEL_14:
    v15 = sub_1E32AE9B0(v4);
    if (a1 && v14 == v15)
    {
    }

    else
    {

      v9 = 0;
    }

    sub_1E3924F04(v9);

    goto LABEL_19;
  }

  v8 = 0;
  v9 = MEMORY[0x1E69E7CC0];
  v16 = MEMORY[0x1E69E7CC0];
  v10 = *(a1 + 16);
  while (1)
  {
    if (v10 == v8)
    {
      v14 = sub_1E32AE9B0(v9);
      goto LABEL_14;
    }

    if (v8 >= v10)
    {
      break;
    }

    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      goto LABEL_22;
    }

    v12 = *(a1 + 32 + 8 * v8++);
    if (v12)
    {
      v13 = v12;
      MEMORY[0x1E6910BF0]();
      if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1E42062F4();
      }

      sub_1E4206324();
      v9 = v16;
      v8 = v11;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
}

uint64_t sub_1E3929254(void *a1)
{
  v2 = v1[2];
  v3 = v1[3];
  v5 = v1[4];
  v4 = v1[5];
  v6 = v1[6];
  v7 = [a1 uiImage];
  OUTLINED_FUNCTION_11_3(v2 + 16, v15);
  v8 = *(v2 + 16);
  result = swift_isUniquelyReferenced_nonNull_native();
  *(v2 + 16) = v8;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  result = sub_1E392937C(v8);
  v8 = result;
  *(v2 + 16) = result;
  if ((v3 & 0x8000000000000000) != 0)
  {
    goto LABEL_9;
  }

LABEL_3:
  if (*(v8 + 16) <= v3)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v10 = v8 + 8 * v3;
  v11 = *(v10 + 32);
  *(v10 + 32) = v7;
  *(v2 + 16) = v8;
  swift_endAccess();

  OUTLINED_FUNCTION_27_6();
  result = swift_beginAccess();
  v12 = *(v5 + 16);
  v13 = v12 + 1;
  if (__OFADD__(v12, 1))
  {
LABEL_11:
    __break(1u);
    return result;
  }

  *(v5 + 16) = v13;
  result = sub_1E32AE9B0(v4);
  if (v13 == result)
  {
    OUTLINED_FUNCTION_25();
    swift_beginAccess();

    v6(v14);
  }

  return result;
}

uint64_t sub_1E3929398(unint64_t a1, unint64_t a2)
{
  v3 = a1;
  v4 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_36;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1E4207384())
  {
    if (a2 >> 62)
    {
      result = sub_1E4207384();
    }

    else
    {
      result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (i != result)
    {
      v21 = 0;
      return v21 & 1;
    }

    if (!i)
    {
      goto LABEL_31;
    }

    v7 = v3 & 0xFFFFFFFFFFFFFF8;
    v8 = (v3 & 0xFFFFFFFFFFFFFF8) + 32;
    v23 = v3 & 0xFFFFFFFFFFFFFF8;
    if (v3 < 0)
    {
      v7 = v3;
    }

    if (v4)
    {
      v8 = v7;
    }

    v9 = a2 & 0xFFFFFFFFFFFFFF8;
    v10 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
    v22 = a2 & 0xFFFFFFFFFFFFFF8;
    if ((a2 & 0x8000000000000000) != 0)
    {
      v9 = a2;
    }

    if (a2 >> 62)
    {
      v10 = v9;
    }

    if (v8 == v10)
    {
LABEL_31:
      v21 = 1;
      return v21 & 1;
    }

    if (i < 0)
    {
      break;
    }

    v4 = sub_1E3280A90(0, &qword_1EE23AE00, 0x1E69DCAB8);
    v24 = v3;
    v11 = v3 & 0xC000000000000001;
    v12 = a2 & 0xC000000000000001;
    v13 = 4;
    v3 = i;
    v14 = a2;
    while (1)
    {
      v15 = v13 - 4;
      v16 = v13 - 3;
      if (__OFADD__(v13 - 4, 1))
      {
        break;
      }

      if (v11)
      {
        v17 = MEMORY[0x1E6911E60](v13 - 4, v24);
      }

      else
      {
        if (v15 >= *(v23 + 16))
        {
          goto LABEL_34;
        }

        v17 = *(v24 + 8 * v13);
      }

      v18 = v17;
      if (v12)
      {
        v19 = MEMORY[0x1E6911E60](v13 - 4, a2);
      }

      else
      {
        if (v15 >= *(v22 + 16))
        {
          goto LABEL_35;
        }

        v19 = *(a2 + 8 * v13);
      }

      v20 = v19;
      v21 = sub_1E4206F64();

      if (v21)
      {
        ++v13;
        a2 = v14;
        if (v16 != v3)
        {
          continue;
        }
      }

      return v21 & 1;
    }

    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    ;
  }

  __break(1u);
  return result;
}

void sub_1E392956C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

double sub_1E39295EC(uint64_t a1)
{
  sub_1E3929628(a1);
  v2 = v1;

  return v2;
}

uint64_t sub_1E3929628(uint64_t a1)
{
  v2 = sub_1E41FE5D4();
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E41FE5C4();
  sub_1E41FE574();
  v9 = v8;
  (*(v4 + 8))(v7, v2);
  LOBYTE(v22) = 35;
  v10 = *(*a1 + 776);
  v11 = v10(&v24, &v22, &unk_1F5D5DAC8, &off_1F5D5C998);
  if (!v25)
  {
    goto LABEL_15;
  }

  result = OUTLINED_FUNCTION_1_93(v11, v12, v13, MEMORY[0x1E69E76D8]);
  if ((result & 1) == 0)
  {
    goto LABEL_16;
  }

  v15 = v22;
  LOBYTE(v22) = 36;
  v16 = v10(&v24, &v22, &unk_1F5D5DAC8, &off_1F5D5C998);
  if (v25)
  {
    result = OUTLINED_FUNCTION_1_93(v16, v17, v18, MEMORY[0x1E69E76D8]);
    if (result)
    {
      v19 = v9 * 1000.0;
      if (COERCE__INT64(fabs(v9 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
      {
        __break(1u);
      }

      else if (v19 > -1.0)
      {
        if (v19 < 1.84467441e19)
        {
          if (v15 >= v19 && v22 <= v19)
          {
            goto LABEL_16;
          }

          if (v22 >= v15)
          {
            return result;
          }

LABEL_22:
          __break(1u);
          return result;
        }

LABEL_21:
        __break(1u);
        goto LABEL_22;
      }

      __break(1u);
      goto LABEL_21;
    }
  }

  else
  {
LABEL_15:
    result = sub_1E329505C(&v24);
  }

LABEL_16:
  v10(&v22, result, &unk_1F5D5D378, &off_1F5D5C7F8);
  if (!v23)
  {
    return sub_1E329505C(&v22);
  }

  sub_1E329504C(&v22, &v24);
  sub_1E329504C(&v24, &v22);
  return swift_dynamicCast();
}

uint64_t sub_1E39298C8@<X0>(uint64_t a1@<X8>, double a2@<D0>)
{
  v4 = sub_1E42022A4();
  OUTLINED_FUNCTION_0_10();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E1C8, &qword_1E42AB8B8);
  OUTLINED_FUNCTION_0_10();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = v28 - v14;
  *&v28[2] = a2;
  v29 = 0;
  v28[1] = 0x3FF0000000000000;
  sub_1E3929B88(v16, v17, v18);
  sub_1E4200CB4();
  sub_1E4202294();
  sub_1E32752B0(&qword_1ECF2E1D0, &qword_1ECF2E1C8, &qword_1E42AB8B8, MEMORY[0x1E697BF38]);
  sub_1E3929BDC();
  sub_1E4202CF4();
  (*(v6 + 8))(v9, v4);
  (*(v12 + 8))(v15, v10);
  v19 = sub_1E4203744();
  KeyPath = swift_getKeyPath();
  v21 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E1E0, &qword_1E42AB8F0) + 36));
  *v21 = KeyPath;
  v21[1] = v19;
  LODWORD(v19) = sub_1E4202184();
  v22 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E1E8, &qword_1E42AB8F8) + 36));
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E1F0, &qword_1E42AB900);
  v24 = *(v23 + 52);
  v25 = *MEMORY[0x1E697F468];
  v26 = sub_1E4201C44();
  result = (*(*(v26 - 8) + 104))(&v22[v24], v25, v26);
  *v22 = v19;
  *&v22[*(v23 + 56)] = 256;
  return result;
}

unint64_t sub_1E3929B88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EE28A3E0;
  if (!qword_1EE28A3E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE28A3E0);
  }

  return result;
}

unint64_t sub_1E3929BDC()
{
  result = qword_1ECF2E1D8;
  if (!qword_1ECF2E1D8)
  {
    sub_1E42022A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2E1D8);
  }

  return result;
}

uint64_t sub_1E3929C3C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1E4201A84();
  *a1 = result;
  return result;
}

unint64_t sub_1E3929CD0()
{
  result = qword_1ECF2E1F8;
  if (!qword_1ECF2E1F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2E1E8, &qword_1E42AB8F8);
    sub_1E3929D88();
    sub_1E32752B0(&qword_1ECF2E208, &qword_1ECF2E1F0, &qword_1E42AB900, MEMORY[0x1E6980BA8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2E1F8);
  }

  return result;
}

unint64_t sub_1E3929D88()
{
  result = qword_1ECF2E200;
  if (!qword_1ECF2E200)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2E1E0, &qword_1E42AB8F0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2E1C8, &qword_1E42AB8B8);
    sub_1E42022A4();
    sub_1E32752B0(&qword_1ECF2E1D0, &qword_1ECF2E1C8, &qword_1E42AB8B8, MEMORY[0x1E697BF38]);
    sub_1E3929BDC();
    swift_getOpaqueTypeConformance2();
    sub_1E32752B0(&qword_1EE288788, &qword_1ECF28998, &unk_1E4297E30, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2E200);
  }

  return result;
}

void sub_1E3929ED0(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  type metadata accessor for DescriptionTemplateLayout();
  v6 = sub_1E3D5030C();

  v7 = sub_1E39C408C();
  v8 = v7;
  if (v7 && *v7 != _TtC8VideosUI13TextViewModel)
  {

    v8 = 0;
  }

  v9 = sub_1E39C408C();

  if (v9 && *v9 != _TtC8VideosUI13TextViewModel)
  {

    v9 = 0;
  }

  *a3 = a1;
  a3[1] = a2;
  a3[2] = v6;
  a3[3] = v8;
  a3[5] = 0;
  a3[6] = 0;
  a3[4] = v9;
}

double sub_1E392A014@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1E3929ED0(a1, 0, &v7);
  result = *&v7;
  v4 = v8;
  v5 = v9;
  v6 = v10;
  *a2 = v7;
  *(a2 + 16) = v4;
  *(a2 + 24) = v5;
  *(a2 + 40) = v6;
  return result;
}

void sub_1E392A064(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_1E4201D54();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E248, &qword_1E42ABAC0);
  sub_1E392A0C4(a1, a2 + *(v5 + 44));
}

void sub_1E392A0C4(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E250, &qword_1E42ABAC8);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v35 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E258, &qword_1E42ABAD0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v35 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v35 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E260, &qword_1E42ABAD8);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v35 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v35 - v21;
  sub_1E392A3CC(&v35 - v21);
  sub_1E392A6F4(v6);
  (*(**(a1 + 16) + 152))(v37);
  v25 = 0uLL;
  v26 = 0uLL;
  if ((v38 & 1) == 0)
  {
    v26.n128_u64[0] = v37[2];
    v24.n128_u64[0] = v37[3];
    v25.n128_u64[0] = v37[0];
    v23.n128_u64[0] = v37[1];
    v25.n128_f64[0] = j_nullsub_1(v25, v23, v26, v24);
    v26.n128_u64[1] = v27;
    v25.n128_u64[1] = v28;
  }

  v35 = v26;
  v36 = v25;
  v29 = sub_1E4202734();
  sub_1E3741EA0(v6, v13, &qword_1ECF2E250, &qword_1E42ABAC8);
  v30 = &v13[*(v7 + 36)];
  *v30 = v29;
  v31 = v36;
  *(v30 + 24) = v35;
  *(v30 + 8) = v31;
  v30[40] = 0;
  sub_1E3741EA0(v13, v16, &qword_1ECF2E258, &qword_1E42ABAD0);
  sub_1E3743538(v22, v19, &qword_1ECF2E260, &qword_1E42ABAD8);
  sub_1E3743538(v16, v10, &qword_1ECF2E258, &qword_1E42ABAD0);
  v32 = OUTLINED_FUNCTION_38_0();
  sub_1E3743538(v32, v33, &qword_1ECF2E260, &qword_1E42ABAD8);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E268, &unk_1E42ABAE0);
  sub_1E3743538(v10, a2 + *(v34 + 48), &qword_1ECF2E258, &qword_1E42ABAD0);
  sub_1E325F6F0(v16, &qword_1ECF2E258, &qword_1E42ABAD0);
  sub_1E325F6F0(v22, &qword_1ECF2E260, &qword_1E42ABAD8);
  sub_1E325F6F0(v10, &qword_1ECF2E258, &qword_1E42ABAD0);
  sub_1E325F6F0(v19, &qword_1ECF2E260, &qword_1E42ABAD8);
  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E392A3CC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E280, &unk_1E42ABB00);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  v6 = MEMORY[0x1EEE9AC00](v5);
  v8 = &v29 - v7;
  v9 = (*(**v1 + 464))(v6);
  if (v9)
  {
    v10 = v9;
    result = sub_1E32AE9B0(v9);
    if (result)
    {
      if ((v10 & 0xC000000000000001) != 0)
      {
        v12 = MEMORY[0x1E6911E60](0, v10);
      }

      else
      {
        if (!*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          return result;
        }

        v12 = *(v10 + 32);
      }

      if (*v12 == _TtC8VideosUI13TextViewModel)
      {
        v15 = *(v2 + 8);
        if (v15 && (v16 = v31, v13 = (*(*v15 + 152))(v31, v13), (v32 & 1) == 0))
        {
          v18.n128_u64[0] = v31[1];
          v19.n128_u64[0] = v31[2];
          v20.n128_u64[0] = v31[3];
        }

        else
        {
          v21 = sub_1E3C27528(v13, v14);
          if (!v21)
          {
            v17 = 0uLL;
            v19 = 0uLL;
            goto LABEL_20;
          }

          v16 = v33;
          (*(*v21 + 152))(v33);

          v17 = 0uLL;
          v19 = 0uLL;
          if (v34)
          {
LABEL_20:
            v29 = v19;
            v30 = v17;
            OUTLINED_FUNCTION_18();
            sub_1E3F23370();
            sub_1E4203D44();
            sub_1E4200D94();
            v24 = &v8[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2BF48, &qword_1E42A6780) + 36)];
            v25 = v36;
            *v24 = v35;
            *(v24 + 1) = v25;
            *(v24 + 2) = v37;
            v26 = sub_1E4202734();

            v27 = &v8[*(v4 + 36)];
            *v27 = v26;
            v28 = v30;
            *(v27 + 24) = v29;
            *(v27 + 8) = v28;
            v27[40] = 0;
            sub_1E3741EA0(v8, a1, &qword_1ECF2E280, &unk_1E42ABB00);
            return __swift_storeEnumTagSinglePayload(a1, 0, 1, v4);
          }

          v18.n128_u64[0] = v33[1];
          v19.n128_u64[0] = v33[2];
          v20.n128_u64[0] = v33[3];
        }

        v17.n128_u64[0] = *v16;
        v17.n128_f64[0] = j_nullsub_1(v17, v18, v19, v20);
        v19.n128_u64[1] = v22;
        v17.n128_u64[1] = v23;
        goto LABEL_20;
      }
    }

    else
    {
    }
  }

  return __swift_storeEnumTagSinglePayload(a1, 1, 1, v4);
}

void sub_1E392A6F4(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28CB8, &unk_1E429B6E0);
  OUTLINED_FUNCTION_0_10();
  v5 = v4;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v38 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E270, &qword_1E42ABAF0);
  OUTLINED_FUNCTION_0_10();
  v11 = v10;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v38 - v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E278, &qword_1E42ABAF8);
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v38 - v18;
  if (*(v1 + 32))
  {
    v42 = v17;
    v43 = v16;
    v41 = v19;
    type metadata accessor for AttributionTextViewLayout();
    v20 = swift_retain_n();
    v21 = *(sub_1E3C82468(v20) + 104);
    swift_retain_n();

    OUTLINED_FUNCTION_18();
    sub_1E3F23370();
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v40 = a1;
    v23 = OpaqueTypeConformance2;
    OUTLINED_FUNCTION_38_0();
    v24 = j__OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_38_0();
    v25 = j__OUTLINED_FUNCTION_18();
    v39 = v9;
    v26 = v25;
    OUTLINED_FUNCTION_38_0();
    v27 = OUTLINED_FUNCTION_51_1();
    sub_1E383F6D4(v21, v24 & 1, v26 & 1, 1, v27 & 1, v3, v23);

    (*(v5 + 8))(v8, v3);

    v44 = v3;
    v45 = v23;
    swift_getOpaqueTypeConformance2();
    v28 = v41;
    v29 = v39;
    sub_1E4202E74();

    (*(v11 + 8))(v14, v29);
    v30 = v40;
    v31 = v28;
    v32 = v43;
    (*(v42 + 32))(v40, v31, v43);
    __swift_storeEnumTagSinglePayload(v30, 0, 1, v32);
    OUTLINED_FUNCTION_25_2();
  }

  else
  {
    OUTLINED_FUNCTION_25_2();

    __swift_storeEnumTagSinglePayload(v33, v34, v35, v36);
  }
}

void sub_1E392AA74(uint64_t a2@<X8>)
{
  v19 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E210, &qword_1E42AB9B0);
  OUTLINED_FUNCTION_0_10();
  v5 = v4;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v18 - v7;
  sub_1E4202704();
  v20 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E218, &qword_1E42AB9B8);
  OUTLINED_FUNCTION_2_71();
  sub_1E32752B0(v9, v10, &qword_1E42AB9B8, v11);
  sub_1E4200AD4();
  v12 = *sub_1E3E6011C();
  OUTLINED_FUNCTION_3_70();
  v15 = sub_1E32752B0(v13, &qword_1ECF2E210, &qword_1E42AB9B0, v14);
  v16 = v12;
  v17 = v19;
  sub_1E39B87A4(v12, v3, v15);

  (*(v5 + 8))(v8, v3);
  *(v17 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E230, &qword_1E42AB9C0) + 36)) = 0;
  OUTLINED_FUNCTION_25_2();
}

double sub_1E392AC10@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1E392A014(a1, v5);
  v3 = v5[1];
  *a2 = v5[0];
  *(a2 + 16) = v3;
  result = *&v6;
  *(a2 + 32) = v6;
  *(a2 + 48) = v7;
  return result;
}

unint64_t sub_1E392AC5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1E392AC84(a1, a2, a3);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1E392AC84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EE274968[0];
  if (!qword_1EE274968[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE274968);
  }

  return result;
}

uint64_t sub_1E392AD4C(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 56))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1E392AD8C(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

unint64_t sub_1E392ADE8()
{
  result = qword_1ECF2E238;
  if (!qword_1ECF2E238)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2E230, &qword_1E42AB9C0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2E210, &qword_1E42AB9B0);
    sub_1E32752B0(&qword_1ECF2E228, &qword_1ECF2E210, &qword_1E42AB9B0, MEMORY[0x1E697BE60]);
    swift_getOpaqueTypeConformance2();
    sub_1E32752B0(&qword_1EE289DF0, &qword_1ECF2E240, &qword_1E42AC470, MEMORY[0x1E697DDB0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2E238);
  }

  return result;
}

uint64_t sub_1E392AF14(char a1)
{
  v2 = *sub_1E3C2AE50();
  if (a1)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (a1 == 2)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (v2)
  {
    return 2;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_1E392AF60(unsigned __int8 a1, unsigned __int8 a2)
{
  if (a1 == 2)
  {
    if (a2 == 2)
    {
      return OUTLINED_FUNCTION_51_1();
    }

    return 0;
  }

  if (a2 == 2)
  {
    return 0;
  }

  return ((a2 ^ a1) & 1) == 0;
}

uint64_t sub_1E392AFA8(char a1)
{
  if (a1 == 2)
  {
    return 2;
  }

  else
  {
    return a1 & 1;
  }
}

uint64_t sub_1E392AFBC(uint64_t result)
{
  if (result == 3)
  {
    v1 = 1;
  }

  else
  {
    v1 = result & 1;
  }

  if (result == 2)
  {
    return result;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_1E392AFDC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E288, &qword_1E42ABB40);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1E42ABB10;
  v1 = *MEMORY[0x1E69DDC90];
  v2 = *MEMORY[0x1E69DDC68];
  *(v0 + 32) = *MEMORY[0x1E69DDC90];
  *(v0 + 40) = v2;
  v3 = *MEMORY[0x1E69DDC88];
  v4 = *MEMORY[0x1E69DDC78];
  *(v0 + 48) = *MEMORY[0x1E69DDC88];
  *(v0 + 56) = v4;
  v5 = *MEMORY[0x1E69DDC70];
  v6 = *MEMORY[0x1E69DDC60];
  *(v0 + 64) = *MEMORY[0x1E69DDC70];
  *(v0 + 72) = v6;
  v7 = *MEMORY[0x1E69DDC58];
  v8 = *MEMORY[0x1E69DDC50];
  *(v0 + 80) = *MEMORY[0x1E69DDC58];
  *(v0 + 88) = v8;
  v9 = *MEMORY[0x1E69DDC40];
  v10 = *MEMORY[0x1E69DDC38];
  *(v0 + 96) = *MEMORY[0x1E69DDC40];
  *(v0 + 104) = v10;
  v26 = *MEMORY[0x1E69DDC30];
  v27 = *MEMORY[0x1E69DDC28];
  v11 = *MEMORY[0x1E69DDC28];
  *(v0 + 112) = *MEMORY[0x1E69DDC30];
  *(v0 + 120) = v11;
  v28 = *MEMORY[0x1E69DDC20];
  *(v0 + 128) = *MEMORY[0x1E69DDC20];
  v12 = v1;
  v13 = v2;
  v14 = v3;
  v15 = v4;
  v16 = v5;
  v17 = v6;
  v18 = v7;
  v19 = v8;
  v20 = v9;
  v21 = v10;
  v22 = v26;
  v23 = v27;
  v24 = v28;
  return v0;
}

uint64_t sub_1E392B158(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_15_0(v2 + 98, a2);
  result = *(v2 + 98);
  if (result == 4)
  {
    return *(v2 + 99);
  }

  return result;
}

double sub_1E392B18C(char a1, uint64_t a2)
{
  v3 = v2;
  OUTLINED_FUNCTION_14_0(v3 + 98, a2);
  v5 = *(v3 + 98);
  *(v3 + 98) = a1;
  OUTLINED_FUNCTION_111();
  v6 = OUTLINED_FUNCTION_5_0(v3 + 98, v14);
  if (*(v3 + 98) == 4)
  {
    if (v5 == 4)
    {
      return result;
    }

LABEL_6:
    v10 = sub_1E392B158(v6, v7);
    sub_1E392C5E0(v10, v11);
    sub_1E392B774();
    OUTLINED_FUNCTION_1_94();
    sub_1E392EACC(v12, v13, &unk_1E42ABC48);
    sub_1E4200514();
    sub_1E4200594();

    return result;
  }

  if (v5 == 4)
  {
    goto LABEL_6;
  }

  sub_1E392EDD8(v6, v7, v8);
  v6 = sub_1E4205E84();
  if ((v6 & 1) == 0)
  {
    goto LABEL_6;
  }

  return result;
}

double sub_1E392B2CC(uint64_t a1, uint64_t a2)
{
  v2 = sub_1E392B304(a1, a2);
  v3 = 4.0;
  if (v2)
  {
    v3 = 2.0;
  }

  return sub_1E392B33C(v2, v3);
}

BOOL sub_1E392B304(uint64_t a1, uint64_t a2)
{
  v2 = sub_1E392B158(a1, a2);
  v3 = (v2 & 1) == 0;
  if (v2 == 3)
  {
    v3 = 0;
  }

  return v2 == 2 || v3;
}

double sub_1E392B33C(uint64_t a1, double a2)
{
  v3 = v2;
  v5 = sub_1E3C2F8E8();
  if (v5)
  {
    v6 = v5;
    v7 = [v5 preferredContentSizeCategory];

    OUTLINED_FUNCTION_15_0(v3 + 128, v8);
    v9 = *(v3 + 128);
    if (v9)
    {
      v10 = *(v3 + 128);
    }

    else
    {
      v10 = *MEMORY[0x1E69DDC20];
      v9 = 0;
    }

    v11 = *(v3 + 120);
    v12 = v9;
    v13 = v11;
    if (sub_1E4206CA4())
    {
      v14 = v10;

      v13 = v14;
    }

    if ((sub_1E4206CA4() & 1) == 0)
    {
      v15 = v7;

      v13 = v15;
    }

    v16 = [objc_opt_self() defaultMetrics];
    sub_1E42067C4();
    v18 = v17;

    return v18 * *(v3 + OBJC_IVAR____TtC8VideosUI41SportsCanonicalBannerScoreboardViewLayout_scaleFactor);
  }

  return a2;
}

double sub_1E392B4A8(uint64_t a1, uint64_t a2)
{
  v2 = sub_1E392B304(a1, a2);
  result = 20.0;
  if (!v2)
  {

    return sub_1E392B33C(v2, 20.0);
  }

  return result;
}

void sub_1E392B4E0(uint64_t a1, void *a2, uint64_t a3)
{
  OUTLINED_FUNCTION_8();
  v6 = sub_1E3C2F8E8();
  v7 = &selRef_textLayout;
  if (v6)
  {
    v8 = v6;
    v9 = [v6 preferredContentSizeCategory];

    if (!a2)
    {
      if (v9)
      {

        v10 = 0;
        v9 = 0;
        v11 = 1;
        goto LABEL_21;
      }

      goto LABEL_15;
    }
  }

  else
  {
    v9 = 0;
    if (!a2)
    {
LABEL_15:
      v11 = 1;
      v10 = 1;
      goto LABEL_21;
    }
  }

  v12 = [a2 preferredContentSizeCategory];
  v13 = v12;
  if (v9)
  {
    if (v12)
    {
      v14 = sub_1E4205F14();
      v16 = v15;
      if (v14 == sub_1E4205F14() && v16 == v17)
      {
        v10 = 1;
      }

      else
      {
        v10 = sub_1E42079A4();
      }

      v7 = &selRef_textLayout;
    }

    else
    {
      v10 = 0;
      v13 = v9;
    }
  }

  else
  {
    if (!v12)
    {
      v10 = 1;
      goto LABEL_20;
    }

    v10 = 0;
  }

LABEL_20:
  v9 = [a2 v7[284]];
  v11 = 0;
LABEL_21:
  v19 = sub_1E3C2F8E8();
  if (v19)
  {
    v20 = v19;
    v21 = [v19 v7[284]];

    if (v9 == v21)
    {
      v22 = v11;
    }

    else
    {
      v22 = 1;
    }

    if (v22 == 1)
    {
      goto LABEL_26;
    }
  }

  else if ((v11 & 1) == 0)
  {
LABEL_26:
    OUTLINED_FUNCTION_1_94();
    sub_1E392EACC(v23, v24, &unk_1E42ABC48);
    sub_1E4200514();
    sub_1E4200594();
  }

  sub_1E3C35CF4(a1, a2);
  OUTLINED_FUNCTION_36();
  (*(v25 + 1640))(a1, a2, a3);
  if ((v10 & 1) == 0)
  {

    sub_1E392B774();
  }
}

void sub_1E392B774()
{
  v1 = v0;
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_1_94();
  sub_1E392EACC(v2, v3, &unk_1E42ABC48);
  sub_1E4200514();
  sub_1E4200594();

  sub_1E392B158(v4, v5);
  OUTLINED_FUNCTION_38_15();
  if (v7)
  {
    sub_1E392B33C(v6, 5.0);
    OUTLINED_FUNCTION_52_12();
    v8 = MEMORY[0x1E69E7DE0];
    v9 = sub_1E3C2FC98();
    OUTLINED_FUNCTION_32_29(v9, v10, v11, v12, v13, v14, v15, v16, *v331, v331[8]);
    OUTLINED_FUNCTION_31_26();
    OUTLINED_FUNCTION_30_24();
    OUTLINED_FUNCTION_29_25();
    OUTLINED_FUNCTION_12_49();
    sub_1E3C2FCB8(v17, v18, v19, v20, v21, v22, v8, v23);
    v32 = OUTLINED_FUNCTION_35_22(v24, v25, v26, v27, v28, v29, v30, v31, *v331, *&v331[8], *&v331[16], *&v331[24], *&v331[32], *&v331[40], *&v331[48], *&v331[56], *&v331[64], *&v331[72], *&v331[80], *&v331[88], v332, v333, v334, v335, v336, v337, v338, v339, v340, v341, v342, v343, v344);
    memcpy(v32, v33, 0x59uLL);
    v34 = OUTLINED_FUNCTION_18();
    v42 = OUTLINED_FUNCTION_36_22(v34, v35, v36, v37, v38, v39, v40, v41, *v331, *&v331[8], *&v331[16], *&v331[24], *&v331[32], *&v331[40], *&v331[48], *&v331[56], *&v331[64], *&v331[72], *&v331[80], *&v331[88], v332, v333, v334, v335, v336, v337, v338, v339, v340, v341, v342, v343, v344);
    sub_1E3C2FDFC(v42, 10, v43, v8);
    [objc_opt_self() isPad];
  }

  else
  {
    sub_1E3C2EAE8();
    OUTLINED_FUNCTION_36_0();
  }

  v44 = sub_1E3C2CE80();
  v45 = OBJC_IVAR____TtC8VideosUI41SportsCanonicalBannerScoreboardViewLayout_scaleFactor;
  v46 = *(v1 + OBJC_IVAR____TtC8VideosUI41SportsCanonicalBannerScoreboardViewLayout_scaleFactor);
  v48 = sub_1E392B158(v44, v47);
  sub_1E392D628();
  if (v48 == 2)
  {
    OUTLINED_FUNCTION_8();
    (*(v49 + 1768))(0, 0);

    OUTLINED_FUNCTION_36();
    v51 = *(v50 + 1816);

    v52 = OUTLINED_FUNCTION_36_0();
    v51(v52);

    OUTLINED_FUNCTION_36();
    v54 = *(v53 + 1696);

    v54(17);

    OUTLINED_FUNCTION_36();
    v56 = *(v55 + 1840);

    v56(0);

    OUTLINED_FUNCTION_36();
    v58 = *(v57 + 1792);

    v59 = 10;
  }

  else
  {
    sub_1E4205F14();
    OUTLINED_FUNCTION_8();
    (*(v60 + 1768))();

    if (sub_1E392B304(v61, v62))
    {
      v63 = 42.0;
    }

    else
    {
      v63 = 50.0;
    }

    *v331 = sub_1E392B33C(v64, v63);
    v331[8] = 0;
    v67 = sub_1E392B304(v65, v66);
    *&v69 = 76.0;
    if (v67)
    {
      *&v69 = 56.0;
    }

    v384 = *&v69;
    LOBYTE(v385) = 0;
    v379 = v46 * 48.0;
    LOBYTE(v380) = 0;
    v70 = sub_1E392B304(v67, v68);
    v71 = 60.0;
    if (v70)
    {
      v71 = 42.0;
    }

    sub_1E392B33C(v70, v71);
    OUTLINED_FUNCTION_52_12();
    v72 = MEMORY[0x1E69E7DE0];
    sub_1E3C2FC98();
    OUTLINED_FUNCTION_10_47();
    sub_1E3C3DE00();
    OUTLINED_FUNCTION_9_53();
    v81 = OUTLINED_FUNCTION_26_30(v73, v74, v75, v76, v77, v78, v79, v80, *v331);
    sub_1E3C2FCB8(v81, v82, v83, v84, v85, v86, v72, v87);
    v96 = OUTLINED_FUNCTION_35_22(v88, v89, v90, v91, v92, v93, v94, v95, *v331, *&v331[8], *&v331[16], *&v331[24], *&v331[32], *&v331[40], *&v331[48], *&v331[56], *&v331[64], *&v331[72], *&v331[80], *&v331[88], v332, v333, v334, v335, v336, v337, v338, v339, v340, v341, v342, v343, v344);
    memcpy(v96, v97, 0x59uLL);
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_28_27();
    v106 = OUTLINED_FUNCTION_36_22(v98, v99, v100, v101, v102, v103, v104, v105, *v331, *&v331[8], *&v331[16], *&v331[24], *&v331[32], *&v331[40], *&v331[48], *&v331[56], *&v331[64], *&v331[72], *&v331[80], *&v331[88], v332, v333, v334, v335, v336, v337, v338, v339, v340, v341, v342, v343, v344);
    v107(v106, 52);

    OUTLINED_FUNCTION_36();
    v109 = *(v108 + 1840);

    v109(4);

    OUTLINED_FUNCTION_36();
    v58 = *(v110 + 1792);

    v59 = 6;
  }

  v58(v59);

  v112 = *(v1 + v45);
  sub_1E392B158(v111, v113);
  OUTLINED_FUNCTION_38_15();
  if (v7)
  {
    *&v344 = 0x4051000000000000;
    BYTE8(v344) = 0;
    v124 = MEMORY[0x1E69E7DE0];
    v115 = sub_1E3C2FC98();
    OUTLINED_FUNCTION_32_29(v115, v116, v117, v118, v119, v120, v121, v122, *v331, v331[8]);
    OUTLINED_FUNCTION_31_26();
    OUTLINED_FUNCTION_30_24();
    OUTLINED_FUNCTION_29_25();
    OUTLINED_FUNCTION_12_49();
  }

  else
  {
    sub_1E392B33C(v114, 54.0);
    OUTLINED_FUNCTION_52_12();
    *v331 = 0x404F000000000000;
    v331[8] = 0;
    v384 = v112 * 50.0;
    LOBYTE(v385) = 0;
    v379 = sub_1E392B33C(v123, 62.0);
    LOBYTE(v380) = 0;
    v124 = MEMORY[0x1E69E7DE0];
    sub_1E3C2FC98();
    OUTLINED_FUNCTION_10_47();
    sub_1E3C3DE00();
    OUTLINED_FUNCTION_9_53();
    v126 = &v344;
    v127 = &v376;
    v128 = v374;
    v129 = v331;
    v130 = &v384;
    v131 = &v379;
  }

  sub_1E3C2FCB8(v126, v127, v128, v129, v130, v131, v124, v125);
  memcpy(v331, __src, 0x59uLL);
  memcpy(__src, v331, 0x59uLL);
  v132 = MEMORY[0x1E69E7DE0];
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_28_27();
  v134 = *(v133 + 1600);
  v134(__src, 2, v135 & 1, v132);
  memcpy(__src, v331, 0x59uLL);
  v136 = OUTLINED_FUNCTION_18();
  v137 = (v134)(__src, 6, v136 & 1, v132);
  sub_1E392B158(v137, v138);
  OUTLINED_FUNCTION_38_15();
  if (v7)
  {
    v140 = *(MEMORY[0x1E69DDCE0] + 16);
    v344 = *MEMORY[0x1E69DDCE0];
    v345 = v140;
    LOBYTE(v346) = 0;
    type metadata accessor for UIEdgeInsets();
    v172 = v141;
    sub_1E3C2FC98();
    OUTLINED_FUNCTION_37_0();
    sub_1E3C3DE00();
    OUTLINED_FUNCTION_8_47();
    sub_1E3C3DE00();
    OUTLINED_FUNCTION_7_33();
    v142 = sub_1E3C3DE00();
    OUTLINED_FUNCTION_17_39(v142, v143, v144, v145, v146, v147, v148, v149, *v331, *&v331[8], *&v331[16], *&v331[24], *&v331[32], *&v331[40], *&v331[48], *&v331[56], *&v331[64], *&v331[72], *&v331[80], *&v331[88], v332, v333, v334, v335, v336, v337, v338, v339, v340, v341, v342, v343, v344, *(&v344 + 1), v345, *(&v345 + 1), v346, v347, v348, v349, v350, v351, v352, v353, v354, v355, v356, v357, v358, v359, v360, v361, v362, v363, v364, v365, v366, v367, v368, v369, v370, v371, v372[0]);
    v150 = sub_1E3C3DE00();
    LOBYTE(v336) = v342;
    v174 = OUTLINED_FUNCTION_50_10(v150, v151, v152, v153, v154, v155, v156, v157, *v331, *&v331[8], *&v331[16], *&v331[24], *&v331[32], *&v331[40], *&v331[48], *&v331[56], *&v331[64], *&v331[72], *&v331[80], *&v331[88], v338, v339, v340, v341, v336, v337, v338, v339, v340, v341, v342, v343, v344);
    v177 = v374;
    v178 = v372;
    v179 = &v332;
  }

  else
  {
    sub_1E392B33C(v139, 8.0);
    *&v344 = sub_1E3952CA4();
    *(&v344 + 1) = v158;
    *&v345 = v159;
    *(&v345 + 1) = v160;
    LOBYTE(v346) = 0;
    v384 = sub_1E3952CA4();
    v385 = v161;
    v386 = v162;
    v387 = v163;
    v388 = 0;
    v379 = sub_1E3952CA4();
    v380 = v164;
    v381 = v165;
    v382 = v166;
    v383 = 0;
    sub_1E392B33C(v167, 10.0);
    v377[0] = sub_1E3952CA4();
    v377[1] = v168;
    v377[2] = v169;
    v377[3] = v170;
    v378 = 0;
    type metadata accessor for UIEdgeInsets();
    v172 = v171;
    sub_1E3C2FC98();
    OUTLINED_FUNCTION_33_27();
    sub_1E3C3DE00();
    OUTLINED_FUNCTION_47_14();
    v173 = __src;
    v174 = &v344;
    v175 = v375;
    v176 = v373;
    v177 = &v384;
    v178 = &v379;
    v179 = v377;
  }

  sub_1E3C2FCB8(v174, v175, v176, v177, v178, v179, v172, v173);
  v188 = OUTLINED_FUNCTION_35_22(v180, v181, v182, v183, v184, v185, v186, v187, *v331, *&v331[8], *&v331[16], *&v331[24], *&v331[32], *&v331[40], *&v331[48], *&v331[56], *&v331[64], *&v331[72], *&v331[80], *&v331[88], v332, v333, v334, v335, v336, v337, v338, v339, v340, v341, v342, v343, v344);
  memcpy(v188, v189, 0xE9uLL);
  type metadata accessor for UIEdgeInsets();
  v191 = v190;
  v192 = OUTLINED_FUNCTION_18();
  v200 = OUTLINED_FUNCTION_36_22(v192, v193, v194, v195, v196, v197, v198, v199, *v331, *&v331[8], *&v331[16], *&v331[24], *&v331[32], *&v331[40], *&v331[48], *&v331[56], *&v331[64], *&v331[72], *&v331[80], *&v331[88], v332, v333, v334, v335, v336, v337, v338, v339, v340, v341, v342, v343, v344);
  v201 = (v134)(v200, 0);
  v203 = sub_1E392B158(v201, v202) & 0xFE;
  sub_1E392CEFC();
  if (v203 == 2)
  {
    memset(__src, 0, 32);
    LOBYTE(__src[2]) = 1;
    OUTLINED_FUNCTION_8();
    (*(v204 + 160))(__src);
  }

  else
  {
    v344 = 0uLL;
    v345 = 0uLL;
    LOBYTE(v346) = 1;
    sub_1E3952C78();
    *v331 = v205;
    *&v331[8] = v206;
    *&v331[16] = v207;
    *&v331[24] = v208;
    v331[32] = 0;
    sub_1E3C2FC98();
    OUTLINED_FUNCTION_37_0();
    sub_1E3C3DE00();
    OUTLINED_FUNCTION_8_47();
    sub_1E3C3DE00();
    OUTLINED_FUNCTION_7_33();
    v209 = sub_1E3C3DE00();
    OUTLINED_FUNCTION_17_39(v209, v210, v211, v212, v213, v214, v215, v216, *v331, *&v331[8], *&v331[16], *&v331[24], *&v331[32], *&v331[40], *&v331[48], *&v331[56], *&v331[64], *&v331[72], *&v331[80], *&v331[88], v332, v333, v334, v335, v336, v337, v338, v339, v340, v341, v342, v343, v344, *(&v344 + 1), v345, *(&v345 + 1), v346, v347, v348, v349, v350, v351, v352, v353, v354, v355, v356, v357, v358, v359, v360, v361, v362, v363, v364, v365, v366, v367, v368, v369, v370, v371, v372[0]);
    v225 = OUTLINED_FUNCTION_50_10(v217, v218, v219, v220, v221, v222, v223, v224, *v331, *&v331[8], *&v331[16], *&v331[24], *&v331[32], *&v331[40], *&v331[48], *&v331[56], *&v331[64], *&v331[72], *&v331[80], *&v331[88], v332, v333, v334, v335, v336, v337, v338, v339, v340, v341, v342, v343, v344);
    sub_1E3C2FCB8(v225, v226, v227, v331, v374, v372, v191, v228);
    v237 = OUTLINED_FUNCTION_35_22(v229, v230, v231, v232, v233, v234, v235, v236, *v331, *&v331[8], *&v331[16], *&v331[24], *&v331[32], *&v331[40], *&v331[48], *&v331[56], *&v331[64], *&v331[72], *&v331[80], *&v331[88], v332, v333, v334, v335, v336, v337, v338, v339, v340, v341, v342, v343, v344);
    memcpy(v237, v238, 0xE9uLL);
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_36();
    v247 = OUTLINED_FUNCTION_36_22(v239, v240, v241, v242, v243, v244, v245, v246, *v331, *&v331[8], *&v331[16], *&v331[24], *&v331[32], *&v331[40], *&v331[48], *&v331[56], *&v331[64], *&v331[72], *&v331[80], *&v331[88], v332, v333, v334, v335, v336, v337, v338, v339, v340, v341, v342, v343, v344);
    v248(v247, 0);
  }

  v251 = sub_1E392B158(v249, v250);
  sub_1E392CEFC();
  if (v251 == 2)
  {
    v252 = *sub_1E3E5FDEC();
    OUTLINED_FUNCTION_8();
    v254 = *(v253 + 680);
    v255 = v252;
    v254(v252);

    v256 = v1 + OBJC_IVAR____TtC8VideosUI41SportsCanonicalBannerScoreboardViewLayout____lazy_storage___clockLayout;
    OUTLINED_FUNCTION_36();
    v258 = *(v257 + 1696);

    v258(17);

    v259 = 1;
  }

  else
  {
    v260 = *sub_1E3E5FD88();
    OUTLINED_FUNCTION_8();
    v262 = *(v261 + 680);
    v263 = v260;
    v262(v260);

    v256 = v1 + OBJC_IVAR____TtC8VideosUI41SportsCanonicalBannerScoreboardViewLayout____lazy_storage___clockLayout;
    v331[0] = 17;
    LOBYTE(v384) = 21;

    sub_1E3C2FC98();
    LOBYTE(v377[0]) = LOBYTE(v379);
    sub_1E3C3DE00();
    v375[0] = v376;
    sub_1E3C3DE00();
    v373[0] = v374[0];
    sub_1E3C3DE00();
    LOBYTE(v338) = v372[0];
    sub_1E3C2FCB8(v331, v377, v375, &v384, v373, &v338, &qword_1F5D549D8, &v344);
    *v331 = v344;
    *&v331[4] = WORD2(v344);
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_36();
    (*(v264 + 1600))(v331, 48, v265 & 1, &qword_1F5D549D8);

    v259 = 3;
  }

  v266 = *(**v256 + 2272);

  v266(v259);

  v267 = *sub_1E392CEFC();
  (*(v267 + 1720))(6);

  sub_1E392CDE8(&OBJC_IVAR____TtC8VideosUI41SportsCanonicalBannerScoreboardViewLayout____lazy_storage___scoreLayout);
  v268 = OUTLINED_FUNCTION_51_15();
  sub_1E392C8F8(v269, 0, v268);

  sub_1E392CD7C(&OBJC_IVAR____TtC8VideosUI41SportsCanonicalBannerScoreboardViewLayout____lazy_storage___winnerIndicationTextLayout);
  v270 = OUTLINED_FUNCTION_51_15();
  sub_1E392C8F8(v271, 0, v270);

  sub_1E392CD7C(&OBJC_IVAR____TtC8VideosUI41SportsCanonicalBannerScoreboardViewLayout____lazy_storage___winnerIndicationSecondaryTextLayout);
  v272 = OUTLINED_FUNCTION_51_15();
  sub_1E392C8F8(v273, 1, v272);

  sub_1E392CDE8(&OBJC_IVAR____TtC8VideosUI41SportsCanonicalBannerScoreboardViewLayout____lazy_storage___secondaryScoreLayout);
  v274 = OUTLINED_FUNCTION_51_15();
  sub_1E392C8F8(v275, 1, v274);

  LODWORD(v266) = sub_1E392B158(v276, v277);
  OUTLINED_FUNCTION_2_72();
  v279 = *(*sub_1E392DAEC(&OBJC_IVAR____TtC8VideosUI41SportsCanonicalBannerScoreboardViewLayout____lazy_storage___eventTitleLayout, v278) + 1984);
  if (v266 == 2)
  {
    v279(1);

    v280 = *(v1 + OBJC_IVAR____TtC8VideosUI41SportsCanonicalBannerScoreboardViewLayout____lazy_storage___eventTitleLayout);

    v282 = sub_1E392B33C(v281, 30.0);
    (*(*v280 + 1816))(COERCE_DOUBLE(*&v282), 0);
  }

  else
  {
    v279(5);

    if (sub_1E392B304(v283, v284))
    {
      v285 = 42.0;
    }

    else
    {
      v285 = 50.0;
    }

    *v331 = sub_1E392B33C(v286, v285);
    v331[8] = 0;
    v289 = sub_1E392B304(v287, v288);
    *&v291 = 76.0;
    if (v289)
    {
      *&v291 = 56.0;
    }

    v384 = *&v291;
    v292 = *(v1 + OBJC_IVAR____TtC8VideosUI41SportsCanonicalBannerScoreboardViewLayout_scaleFactor);
    LOBYTE(v385) = 0;
    v379 = v292 * 48.0;
    LOBYTE(v380) = 0;
    v293 = sub_1E392B304(v289, v290);
    v294 = 60.0;
    if (v293)
    {
      v294 = 42.0;
    }

    sub_1E392B33C(v293, v294);
    OUTLINED_FUNCTION_52_12();
    v295 = MEMORY[0x1E69E7DE0];
    sub_1E3C2FC98();
    OUTLINED_FUNCTION_10_47();
    sub_1E3C3DE00();
    OUTLINED_FUNCTION_9_53();
    v304 = OUTLINED_FUNCTION_26_30(v296, v297, v298, v299, v300, v301, v302, v303, *v331);
    sub_1E3C2FCB8(v304, v305, v306, v307, v308, v309, v295, v310);
    v319 = OUTLINED_FUNCTION_35_22(v311, v312, v313, v314, v315, v316, v317, v318, *v331, *&v331[8], *&v331[16], *&v331[24], *&v331[32], *&v331[40], *&v331[48], *&v331[56], *&v331[64], *&v331[72], *&v331[80], *&v331[88], v332, v333, v334, v335, v336, v337, v338, v339, v340, v341, v342, v343, v344);
    memcpy(v319, v320, 0x59uLL);
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_28_27();
    v329 = OUTLINED_FUNCTION_36_22(v321, v322, v323, v324, v325, v326, v327, v328, *v331, *&v331[8], *&v331[16], *&v331[24], *&v331[32], *&v331[40], *&v331[48], *&v331[56], *&v331[64], *&v331[72], *&v331[80], *&v331[88], v332, v333, v334, v335, v336, v337, v338, v339, v340, v341, v342, v343, v344);
    v330(v329, 52);
  }
}

void sub_1E392C5E0(uint64_t result, uint64_t a2)
{
  if (*(v2 + 100) - 1 >= 2)
  {
    sub_1E392B158(result, a2);
    OUTLINED_FUNCTION_38_15();
    if (v3)
    {
      OUTLINED_FUNCTION_49_15();
      type metadata accessor for UIEdgeInsets();
      v22 = v4;
      sub_1E3C2FC98();
      OUTLINED_FUNCTION_8_47();
      sub_1E3C3DE00();
      OUTLINED_FUNCTION_7_33();
      v5 = sub_1E3C3DE00();
      OUTLINED_FUNCTION_17_39(v5, v6, v7, v8, v9, v10, v11, v12, v29, *(&v29 + 1), v30, *(&v30 + 1), v31, v32, *&__dst[0], *&__dst[1], *&__dst[2], *&__dst[3], *&__dst[4], *&__dst[5], *&__dst[6], *&__dst[7], *&__dst[8], *&__dst[9], *&__dst[10], *&__dst[11], *&__dst[12], *&__dst[13], *&__dst[14], *&__dst[15], *&__dst[16], *&__dst[17], *&__dst[18], *&__dst[19], *&__dst[20], *&__dst[21], *&__dst[22], *&__dst[23], *&__dst[24], *&__dst[25], *&__dst[26], *&__dst[27], *&__dst[28], *&__dst[29], v34, *(&v34 + 1), v35, *(&v35 + 1), v36, v37, v38, *(&v38 + 1), v39, *(&v39 + 1), v40, v41, v42, *(&v42 + 1), v43, *(&v43 + 1), v44, v45, *&v46[0]);
      sub_1E3C3DE00();
      OUTLINED_FUNCTION_4_10(v13, v14, v15, v16, v17, v18, v19, v20, *&v29, *(&v29 + 1), *&v30, *(&v30 + 1), *&v31, *&v32, __dst[0], __dst[1], __dst[2], __dst[3], __dst[4], __dst[5], __dst[6], __dst[7], __dst[8], __dst[9], __dst[10], __dst[11], __dst[12], __dst[13], __dst[14], __dst[15], __dst[16], __dst[17], __dst[18], __dst[19], __dst[20], __dst[21], __dst[22], __dst[23], __dst[24], __dst[25], __dst[26], __dst[27], __dst[28], __dst[29], *&v34, *(&v34 + 1), *&v35, *(&v35 + 1), *&v36, *&v37, *&v38, *(&v38 + 1), *&v39, *(&v39 + 1), *&v40, *&v41, *&v42);
      sub_1E3C3DE00();
      v29 = v34;
      v30 = v35;
      LOBYTE(v31) = v36;
      v23 = &v51;
      v24 = &v49;
      v25 = v46;
      v26 = &v38;
      v27 = &v29;
    }

    else
    {
      OUTLINED_FUNCTION_49_15();
      v52[0] = 0x4034000000000000;
      memset(&v52[1], 0, 24);
      v53 = 0;
      type metadata accessor for UIEdgeInsets();
      v22 = v21;
      sub_1E3C2FC98();
      OUTLINED_FUNCTION_33_27();
      sub_1E3C3DE00();
      OUTLINED_FUNCTION_47_14();
      sub_1E3C3DE00();
      v42 = v46[0];
      v43 = v46[1];
      LOBYTE(v44) = v47;
      sub_1E3C3DE00();
      v34 = v38;
      v35 = v39;
      LOBYTE(v36) = v40;
      v23 = &v50;
      v24 = &v48;
      v25 = v52;
      v26 = &v42;
      v27 = &v34;
    }

    sub_1E3C2FCB8(__dst, v23, v24, v25, v26, v27, v22, __src);
    memcpy(__dst, __src, 0xE9uLL);
    v28 = OUTLINED_FUNCTION_18();
    sub_1E3C2FDFC(__dst, 1, v28 & 1, v22);
  }
}

void sub_1E392C768(double a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_14_0(v3 + 112, a3);
  if (*(v3 + 112) == a1)
  {
    return;
  }

  *(v3 + 112) = a1;
  v5 = a1 / 66.0;
  if ((*&v5 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_18;
  }

  if (v5 <= -9.22337204e18)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (v5 >= 9.22337204e18)
  {
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    return;
  }

  v6 = *(sub_1E392AFDC() + 16);

  v7 = v6 - 1;
  if (v6 - 1 >= v5)
  {
    v7 = v5;
  }

  v8 = v7 & ~(v7 >> 63);
  v9 = sub_1E392AFDC();
  if (v8 >= *(v9 + 16))
  {
    goto LABEL_20;
  }

  v10 = *(v9 + 8 * v8 + 32);

  v11 = sub_1E4205F14();
  v13 = v12;
  if (v11 == sub_1E4205F14() && v13 == v14)
  {
  }

  else
  {
    v16 = sub_1E42079A4();

    if ((v16 & 1) == 0)
    {
      v17 = *(v3 + 120);
      *(v3 + 120) = v10;
      v10 = v10;

      sub_1E392B774();
    }
  }
}

uint64_t sub_1E392C8F8(uint64_t a1, uint64_t a2, double a3)
{
  v3 = a2;
  sub_1E392B158(a1, a2);
  OUTLINED_FUNCTION_38_15();
  if (v5)
  {
    OUTLINED_FUNCTION_111();
    (*(v6 + 464))(1);
    OUTLINED_FUNCTION_111();
    (*(v7 + 1984))(1);
    OUTLINED_FUNCTION_9_2();
    (*(v8 + 1696))(27);
    OUTLINED_FUNCTION_9_2();
    (*(v9 + 1816))(0x404A000000000000, 0);
    OUTLINED_FUNCTION_9_2();
    return (*(v10 + 1792))(5);
  }

  else
  {
    OUTLINED_FUNCTION_111();
    v13 = (v12 + 464);
    if (v3)
    {
      v14 = 4;
    }

    else
    {
      v14 = 5;
    }

    if (v3)
    {
      v15 = 5;
    }

    else
    {
      v15 = 6;
    }

    (*v13)(v14);
    OUTLINED_FUNCTION_9_2();
    v17 = (*(v16 + 1984))(v15);
    v19 = sub_1E392B304(v17, v18);
    v20 = 50.0;
    if (v19)
    {
      v20 = 42.0;
    }

    v96 = sub_1E392B33C(v19, v20);
    v97 = 0;
    v23 = sub_1E392B304(v21, v22);
    v25 = 0x4053000000000000;
    if (v23)
    {
      v25 = 0x404C000000000000;
    }

    v94 = v25;
    v95 = 0;
    v92 = a3 * 48.0;
    v93 = 0;
    v26 = sub_1E392B304(v23, v24);
    v27 = 60.0;
    if (v26)
    {
      v27 = 42.0;
    }

    __dst[0] = sub_1E392B33C(v26, v27);
    LOBYTE(__dst[1]) = 0;
    v28 = MEMORY[0x1E69E7DE0];
    sub_1E3C2FC98();
    v86 = *v66;
    LOBYTE(v87) = v66[8];
    sub_1E3C3DE00();
    v76 = v81;
    LOBYTE(v77) = v82;
    sub_1E3C2FCB8(&v96, &v86, &v76, &v94, &v92, __dst, v28, __src);
    memcpy(__dst, __src, 0x59uLL);
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_9_2();
    v30 = *(v29 + 1600);
    v30(__dst, 52, v31 & 1, v28);
    OUTLINED_FUNCTION_9_2();
    result = (*(v32 + 1792))(6);
    if (v3)
    {
      sub_1E392B33C(result, 18.0);
      sub_1E3952C78();
      v86 = v33;
      v87 = v34;
      v88 = v35;
      v89 = v36;
      v90 = 0;
      v39 = sub_1E392B304(v37, v38);
      v40 = 27.0;
      if (v39)
      {
        v40 = 20.0;
      }

      sub_1E392B33C(v39, v40);
      sub_1E3952C78();
      *v66 = v41;
      *&v66[8] = v42;
      *&v66[16] = v43;
      *&v66[24] = v44;
      v66[32] = 0;
      sub_1E392B33C(v45, 17.0);
      sub_1E3952C78();
      v81 = v46;
      v82 = v47;
      v83 = v48;
      v84 = v49;
      v85 = 0;
      sub_1E392B33C(v50, 18.0);
      sub_1E3952C78();
      v76 = v51;
      v77 = v52;
      v78 = v53;
      v79 = v54;
      v80 = 0;
      type metadata accessor for UIEdgeInsets();
      v56 = v55;
      sub_1E3C2FC98();
      OUTLINED_FUNCTION_4_10(v57, v58, v59, v60, v61, v62, v63, v64, *v66, *&v66[8], *&v66[16], *&v66[24], *&v66[32], *&v66[40], *&v66[48], *&v66[56], *&v66[64], *&v66[72], *&v66[80], *&v66[88], *&v66[96], *&v66[104], *&v66[112], *&v66[120], *&v66[128], *&v66[136], *&v66[144], *&v66[152], *&v66[160], *&v66[168], *&v66[176], *&v66[184], *&v66[192], *&v66[200], *&v66[208], *&v66[216], *&v66[224], *&v66[232], *&v67, *(&v67 + 1), *&v68, *(&v68 + 1), v69, v70, *&v71, *(&v71 + 1), *&v72, *(&v72 + 1), v73, v74, v75[0], v75[1], v75[2], v75[3], v75[4], v75[5], v75[6]);
      sub_1E3C3DE00();
      v67 = v71;
      v68 = v72;
      LOBYTE(v69) = LOBYTE(v73);
      sub_1E3C2FCB8(&v86, v75, &v67, v66, &v81, &v76, v56, __dst);
      memcpy(v66, __dst, 0xE9uLL);
      v65 = OUTLINED_FUNCTION_18();
      return v30(v66, 1, v65 & 1, v56);
    }
  }

  return result;
}

uint64_t sub_1E392CD7C(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(v1 + *a1);
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = sub_1E392D4B0();
    *(v1 + v2) = v4;
  }

  return v4;
}

uint64_t sub_1E392CDE8(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(v1 + *a1);
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v5 = v1;
    v4 = sub_1E392D4B0();

    v6 = *sub_1E3E5FD88();
    v7 = sub_1E3E5F2C0();

    OUTLINED_FUNCTION_9_2();
    (*(v8 + 680))(v7);
    OUTLINED_FUNCTION_9_2();
    (*(v9 + 728))(2);

    *(v5 + v2) = v4;
  }

  return v4;
}

uint64_t sub_1E392CEFC()
{
  v1 = OBJC_IVAR____TtC8VideosUI41SportsCanonicalBannerScoreboardViewLayout____lazy_storage___clockLayout;
  if (*(v0 + OBJC_IVAR____TtC8VideosUI41SportsCanonicalBannerScoreboardViewLayout____lazy_storage___clockLayout))
  {
    v2 = *(v0 + OBJC_IVAR____TtC8VideosUI41SportsCanonicalBannerScoreboardViewLayout____lazy_storage___clockLayout);
  }

  else
  {
    v3 = v0;
    type metadata accessor for SportsClockTextLayout();
    v2 = sub_1E3B4767C();
    v4 = *(*v2 + 1696);

    v4(17);
    OUTLINED_FUNCTION_36();
    (*(v5 + 1792))(5);

    v6 = *sub_1E3E5FDEC();
    v7 = *(*v2 + 680);
    v8 = v6;
    v7(v6);

    OUTLINED_FUNCTION_36();
    (*(v9 + 2272))(1);

    *(v3 + v1) = v2;
  }

  return v2;
}

uint64_t sub_1E392D0B0@<X0>(uint64_t *a1@<X0>, uint64_t (*a2)(uint64_t)@<X1>, uint64_t a3@<X8>)
{
  v7 = type metadata accessor for SportsCanonicalBannerScoreboardViewLayout.SymbolLayout(0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v8);
  v10 = v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E290, &qword_1E42ABB48);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0) + 16;
  MEMORY[0x1EEE9AC00](v14);
  v16 = v24 - v15 + 16;
  v17 = *a1;
  OUTLINED_FUNCTION_5_0(v3 + *a1, v25);
  sub_1E392EBD4(v3 + v17, v16);
  if (__swift_getEnumTagSinglePayload(v16, 1, v7) != 1)
  {
    return sub_1E392ED74(v16, a3);
  }

  sub_1E392E2E4(v16);
  v18 = *sub_1E3E5FD88();
  v19 = sub_1E3B030C0();
  OUTLINED_FUNCTION_5_0(v19, v24);
  v20 = *(v7 + 36);
  sub_1E42012F4();
  OUTLINED_FUNCTION_2();
  (*(v21 + 16))(&v10[v20], v19);
  *v10 = 0x6C69662E72617473;
  *(v10 + 1) = 0xE90000000000006CLL;
  *(v10 + 2) = v18;
  *(v10 + 3) = 0;
  v10[32] = 1;
  *(v10 + 40) = xmmword_1E42ABB20;
  sub_1E41E1A64(v10, a2, v7, a3);
  sub_1E392EC44(v10);
  sub_1E392ECA0(a3, v13);
  __swift_storeEnumTagSinglePayload(v13, 0, 1, v7);
  swift_beginAccess();
  sub_1E392ED04(v13, v3 + v17);
  return swift_endAccess();
}

uint64_t sub_1E392D328(uint64_t a1, double (*a2)(void), uint64_t (*a3)(void), unsigned int *a4)
{
  v8 = sub_1E3E5FD88();
  objc_storeStrong((a1 + 16), *v8);
  *(a1 + 24) = a2();
  *(a1 + 32) = 0;
  v9 = a3();

  *(a1 + 40) = v9;
  *(a1 + 48) = 1;
  v10 = *(type metadata accessor for SportsCanonicalBannerScoreboardViewLayout.SymbolLayout(0) + 36);
  v11 = sub_1E42012F4();
  v15 = *(v11 - 8);
  (*(v15 + 8))(a1 + v10, v11);
  v12 = *a4;
  v13 = *(v15 + 104);

  return v13(a1 + v10, v12, v11);
}

uint64_t sub_1E392D428@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  OUTLINED_FUNCTION_15_0(v2 + 98, a1);
  v4 = *(v2 + 98);
  v5 = v4 - 5;
  v6 = v4 & 1;
  if (v5 <= 0xFFFFFFFC && v6 == 0)
  {
    v8 = &OBJC_IVAR____TtC8VideosUI41SportsCanonicalBannerScoreboardViewLayout____lazy_storage___smallFollowingSymbolLayout;
    v9 = sub_1E392D2F4;
  }

  else
  {
    v8 = &OBJC_IVAR____TtC8VideosUI41SportsCanonicalBannerScoreboardViewLayout____lazy_storage___followingSymbolLayout;
    v9 = sub_1E392D07C;
  }

  return sub_1E392D0B0(v8, v9, a2);
}

uint64_t sub_1E392D4B0()
{
  type metadata accessor for TextLayout();
  v0 = sub_1E383BCC0();
  v1 = OUTLINED_FUNCTION_15_8();
  v2(v1);
  OUTLINED_FUNCTION_36();
  (*(v3 + 2008))(1);
  OUTLINED_FUNCTION_36();
  (*(v4 + 1840))(4);
  sub_1E4205F14();
  OUTLINED_FUNCTION_36();
  (*(v5 + 1768))();

  v6 = *sub_1E3E5FD88();
  v7 = *(*v0 + 680);
  v8 = v6;
  v7(v6);

  return v0;
}

uint64_t sub_1E392D628()
{
  v1 = OBJC_IVAR____TtC8VideosUI41SportsCanonicalBannerScoreboardViewLayout____lazy_storage___teamLabelLayout;
  if (*(v0 + OBJC_IVAR____TtC8VideosUI41SportsCanonicalBannerScoreboardViewLayout____lazy_storage___teamLabelLayout))
  {
    v2 = *(v0 + OBJC_IVAR____TtC8VideosUI41SportsCanonicalBannerScoreboardViewLayout____lazy_storage___teamLabelLayout);
  }

  else
  {
    v3 = v0;
    type metadata accessor for TextLayout();
    v2 = sub_1E383BCC0();

    v4 = *sub_1E3E5FD88();
    v5 = *(*v2 + 680);
    v6 = v4;
    v5(v4);

    OUTLINED_FUNCTION_36();
    (*(v7 + 1936))(2);
    OUTLINED_FUNCTION_36();
    v8 = OUTLINED_FUNCTION_15_8();
    v9(v8);
    OUTLINED_FUNCTION_36();
    v10 = OUTLINED_FUNCTION_15_8();
    v11(v10);
    OUTLINED_FUNCTION_36();
    v12 = OUTLINED_FUNCTION_15_8();
    v13(v12);
    *(v3 + v1) = v2;
  }

  return v2;
}

uint64_t sub_1E392D7F8(uint64_t *a1)
{
  v1 = *a1;
  OUTLINED_FUNCTION_8();
  (*(v2 + 1792))(6);
  v3 = *sub_1E3E5FD88();
  v4 = *(*v1 + 680);
  v5 = v3;
  v4(v3);
  OUTLINED_FUNCTION_36();
  (*(v6 + 1840))(4);
  OUTLINED_FUNCTION_36();
  (*(v7 + 1936))(2);
  OUTLINED_FUNCTION_36();
  v8 = OUTLINED_FUNCTION_36_0();
  v9(v8);
  OUTLINED_FUNCTION_36();
  v10 = OUTLINED_FUNCTION_36_0();
  v11(v10);
  OUTLINED_FUNCTION_36();
  v12 = OUTLINED_FUNCTION_36_0();
  v13(v12);
  sub_1E4205F14();
  OUTLINED_FUNCTION_36();
  return (*(v14 + 1768))();
}

uint64_t sub_1E392DA10()
{
  OUTLINED_FUNCTION_19_39();
  sub_1E3C2FC98();
  v0 = OUTLINED_FUNCTION_54_10();
  OUTLINED_FUNCTION_18_33(v0, v1, v2, v3, v4, v5, v6, v7, v20, v22, SHIDWORD(v22), v24, SBYTE1(v24), SBYTE2(v24), SBYTE3(v24), SBYTE4(v24), SBYTE5(v24), SBYTE6(v24), SHIBYTE(v24), v25);
  OUTLINED_FUNCTION_44_4();
  OUTLINED_FUNCTION_36();
  v16 = OUTLINED_FUNCTION_46_16(v8, v9, v10, v11, v12, v13, v14, v15, v21, v23);
  v17(v16);
  OUTLINED_FUNCTION_36();
  return (*(v18 + 1792))(7);
}

uint64_t sub_1E392DAEC(uint64_t *a1, uint64_t (*a2)(uint64_t))
{
  v3 = *a1;
  v4 = *(v2 + *a1);
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v7 = v2;
    v8 = type metadata accessor for TextLayout();
    v10 = sub_1E383BCC0();
    sub_1E41E1A64(&v10, a2, v8, &v11);

    v5 = v11;
    *(v7 + v3) = v11;
  }

  return v5;
}

uint64_t sub_1E392DB98()
{
  OUTLINED_FUNCTION_19_39();
  sub_1E3C2FC98();
  v0 = OUTLINED_FUNCTION_54_10();
  OUTLINED_FUNCTION_18_33(v0, v1, v2, v3, v4, v5, v6, v7, v19, v21, SHIDWORD(v21), v23, SBYTE1(v23), SBYTE2(v23), SBYTE3(v23), SBYTE4(v23), SBYTE5(v23), SBYTE6(v23), SHIBYTE(v23), v24);
  OUTLINED_FUNCTION_44_4();
  OUTLINED_FUNCTION_36();
  v16 = OUTLINED_FUNCTION_46_16(v8, v9, v10, v11, v12, v13, v14, v15, v20, v22);
  return v17(v16);
}

uint64_t sub_1E392DC54(uint64_t a1)
{
  v1 = a1;
  swift_allocObject();
  return sub_1E392DC90(v1);
}

uint64_t sub_1E392DC90(char a1)
{
  v2 = v1;
  *(v1 + 98) = 4;
  *(v1 + 101) = 1;
  *(v1 + 104) = xmmword_1E42ABB30;
  v4 = *MEMORY[0x1E69DDC20];
  *(v1 + 120) = *MEMORY[0x1E69DDC20];
  *(v1 + 128) = 0;
  v5 = OBJC_IVAR____TtC8VideosUI41SportsCanonicalBannerScoreboardViewLayout____lazy_storage___followingSymbolLayout;
  v6 = type metadata accessor for SportsCanonicalBannerScoreboardViewLayout.SymbolLayout(0);
  __swift_storeEnumTagSinglePayload(v2 + v5, 1, 1, v6);
  __swift_storeEnumTagSinglePayload(v2 + OBJC_IVAR____TtC8VideosUI41SportsCanonicalBannerScoreboardViewLayout____lazy_storage___smallFollowingSymbolLayout, 1, 1, v6);
  v7 = OBJC_IVAR____TtC8VideosUI41SportsCanonicalBannerScoreboardViewLayout_logoImageLayout;
  type metadata accessor for ImageLayout();
  v8 = v4;
  *(v2 + v7) = sub_1E3BD61D8();
  *(v2 + OBJC_IVAR____TtC8VideosUI41SportsCanonicalBannerScoreboardViewLayout____lazy_storage___clockLayout) = 0;
  *(v2 + OBJC_IVAR____TtC8VideosUI41SportsCanonicalBannerScoreboardViewLayout_scaleFactor) = 0x3FF0000000000000;
  *(v2 + OBJC_IVAR____TtC8VideosUI41SportsCanonicalBannerScoreboardViewLayout____lazy_storage___winnerIndicationTextLayout) = 0;
  *(v2 + OBJC_IVAR____TtC8VideosUI41SportsCanonicalBannerScoreboardViewLayout____lazy_storage___scoreLayout) = 0;
  *(v2 + OBJC_IVAR____TtC8VideosUI41SportsCanonicalBannerScoreboardViewLayout____lazy_storage___winnerIndicationSecondaryTextLayout) = 0;
  *(v2 + OBJC_IVAR____TtC8VideosUI41SportsCanonicalBannerScoreboardViewLayout____lazy_storage___secondaryScoreLayout) = 0;
  *(v2 + OBJC_IVAR____TtC8VideosUI41SportsCanonicalBannerScoreboardViewLayout____lazy_storage___teamLabelLayout) = 0;
  *(v2 + OBJC_IVAR____TtC8VideosUI41SportsCanonicalBannerScoreboardViewLayout____lazy_storage___eventTitleLayout) = 0;
  *(v2 + OBJC_IVAR____TtC8VideosUI41SportsCanonicalBannerScoreboardViewLayout____lazy_storage___errorTitleLayout) = 0;
  *(v2 + OBJC_IVAR____TtC8VideosUI41SportsCanonicalBannerScoreboardViewLayout____lazy_storage___errorSubtitleLayout) = 0;
  *(v2 + 99) = sub_1E3D3CD00(2, 0);
  *(v2 + 100) = a1;
  v9 = sub_1E3C2F9A0();

  v23[0] = 0x4071800000000000;
  LOBYTE(v23[1]) = 0;
  v10 = MEMORY[0x1E69E7DE0];
  sub_1E3C3DE00();
  v40 = v42;
  v41 = v43;
  sub_1E3C2FC98();
  v36 = v38;
  v37 = v39;
  sub_1E3C3DE00();
  v32 = v34;
  v33 = v35;
  sub_1E3C3DE00();
  v28 = v30;
  v29 = v31;
  sub_1E3C3DE00();
  v24 = v26;
  v25 = v27;
  sub_1E3C2FCB8(&v40, &v36, &v32, &v28, v23, &v24, v10, __src);
  memcpy(v23, __src, 0x59uLL);
  v11 = OUTLINED_FUNCTION_18();
  sub_1E3C2FDFC(v23, 3, v11 & 1, v10);
  v14 = sub_1E392B158(v12, v13);
  sub_1E392C5E0(v14, v15);
  sub_1E392B774();
  v16 = sub_1E392D628();
  sub_1E3C37CBC(v16, 16);

  sub_1E3C37CBC(v17, 15);

  v18 = sub_1E392CDE8(&OBJC_IVAR____TtC8VideosUI41SportsCanonicalBannerScoreboardViewLayout____lazy_storage___scoreLayout);
  sub_1E3C37CBC(v18, 237);

  v19 = sub_1E392CDE8(&OBJC_IVAR____TtC8VideosUI41SportsCanonicalBannerScoreboardViewLayout____lazy_storage___secondaryScoreLayout);
  sub_1E3C37CBC(v19, 238);

  OUTLINED_FUNCTION_2_72();
  v21 = sub_1E392DAEC(&OBJC_IVAR____TtC8VideosUI41SportsCanonicalBannerScoreboardViewLayout____lazy_storage___eventTitleLayout, v20);
  sub_1E3C37CBC(v21, 236);

  sub_1E3C37CBC(*(v9 + OBJC_IVAR____TtC8VideosUI41SportsCanonicalBannerScoreboardViewLayout_logoImageLayout), 40);

  return v9;
}

void sub_1E392DF94(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 100);
  v4 = 1.0;
  if (v3 != 3)
  {
    v5 = a1;
    a1 = sub_1E392B158(a1, a2);
    if (v3 == 2 && a1 != 2)
    {
      a1 = sub_1E373F630(v5, 3, v6);
      v4 = 0.5;
      if ((a1 & 1) == 0)
      {
        a1 = sub_1E373F630(v5, 2, v8);
        if (a1)
        {
          v4 = 0.5;
        }

        else
        {
          v4 = 1.0;
        }
      }
    }
  }

  v9 = *(v2 + OBJC_IVAR____TtC8VideosUI41SportsCanonicalBannerScoreboardViewLayout_scaleFactor);
  *(v2 + OBJC_IVAR____TtC8VideosUI41SportsCanonicalBannerScoreboardViewLayout_scaleFactor) = v4;
  if (*(v2 + OBJC_IVAR____TtC8VideosUI41SportsCanonicalBannerScoreboardViewLayout_scaleFactor) != v9)
  {
    OUTLINED_FUNCTION_1_94();
    sub_1E392EACC(v10, v11, &unk_1E42ABC48);
    sub_1E4200514();
    sub_1E4200594();
  }

  v12 = sub_1E392B158(a1, a2);
  sub_1E392C5E0(v12, v13);

  sub_1E392B774();
}

double sub_1E392E0C8()
{
  sub_1E392E2E4(v0 + OBJC_IVAR____TtC8VideosUI41SportsCanonicalBannerScoreboardViewLayout____lazy_storage___followingSymbolLayout);
  sub_1E392E2E4(v0 + OBJC_IVAR____TtC8VideosUI41SportsCanonicalBannerScoreboardViewLayout____lazy_storage___smallFollowingSymbolLayout);

  return result;
}

uint64_t sub_1E392E19C()
{
  v0 = sub_1E3C36C6C();

  sub_1E392E2E4(v0 + OBJC_IVAR____TtC8VideosUI41SportsCanonicalBannerScoreboardViewLayout____lazy_storage___followingSymbolLayout);
  sub_1E392E2E4(v0 + OBJC_IVAR____TtC8VideosUI41SportsCanonicalBannerScoreboardViewLayout____lazy_storage___smallFollowingSymbolLayout);

  return v0;
}

uint64_t sub_1E392E270()
{
  v0 = sub_1E392E19C();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1E392E2E4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E290, &qword_1E42ABB48);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1E392E350(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF2E298;
  if (!qword_1ECF2E298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2E298);
  }

  return result;
}

unint64_t sub_1E392E3A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF2E2A0;
  if (!qword_1ECF2E2A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2E2A0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SportsCanonicalBannerScoreboardViewLayout.Placement(_BYTE *result, unsigned int a2, unsigned int a3)
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
        result = OUTLINED_FUNCTION_5_13(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_2_22(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = OUTLINED_FUNCTION_3_21(result, v6);
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
          result = OUTLINED_FUNCTION_15(result, a2 + 2);
        }

        break;
    }
  }

  return result;
}

unsigned __int8 *getEnumTagSinglePayload for SportsCanonicalScoreboardLayoutVariation(unsigned __int8 *result, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
LABEL_18:
    v6 = *result;
    v7 = v6 >= 2;
    v8 = v6 - 2;
    if (!v7)
    {
      v8 = -1;
    }

    if (v8 + 1 >= 2)
    {
      return v8;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v2 = a2 + 2;
    if (a2 + 2 >= 0xFFFF00)
    {
      v3 = 4;
    }

    else
    {
      v3 = 2;
    }

    if (v2 >> 8 < 0xFF)
    {
      v3 = 1;
    }

    if (v2 >= 0x100)
    {
      v4 = v3;
    }

    else
    {
      v4 = 0;
    }

    switch(v4)
    {
      case 1:
        v5 = result[1];
        if (!result[1])
        {
          goto LABEL_18;
        }

        goto LABEL_16;
      case 2:
        v5 = *(result + 1);
        if (!*(result + 1))
        {
          goto LABEL_18;
        }

        goto LABEL_16;
      case 3:
        __break(1u);
        return result;
      case 4:
        v5 = *(result + 1);
        if (!v5)
        {
          goto LABEL_18;
        }

LABEL_16:
        result = ((*result | (v5 << 8)) - 2);
        break;
      default:
        goto LABEL_18;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SportsCanonicalScoreboardLayoutVariation(_BYTE *result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 2;
  if (a3 + 2 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 >= 0xFE)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  if (a2 > 0xFD)
  {
    v7 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v6)
    {
      case 1:
        result = OUTLINED_FUNCTION_5_13(result, v7);
        break;
      case 2:
        result = OUTLINED_FUNCTION_2_22(result, v7);
        break;
      case 3:
LABEL_25:
        __break(1u);
        break;
      case 4:
        result = OUTLINED_FUNCTION_3_21(result, v7);
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v6)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_20;
      case 2:
        *(result + 1) = 0;
        goto LABEL_19;
      case 3:
        goto LABEL_25;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_20;
      default:
LABEL_19:
        if (a2)
        {
LABEL_20:
          result = OUTLINED_FUNCTION_15(result, a2 + 2);
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1E392E638(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 2)
  {
    return v1 - 1;
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_1E392E64C(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 1;
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SportsCanonicalScoreboardLayoutVariation.Size(_BYTE *result, unsigned int a2, unsigned int a3)
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
        result = OUTLINED_FUNCTION_5_13(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_2_22(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = OUTLINED_FUNCTION_3_21(result, v6);
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
          result = OUTLINED_FUNCTION_15(result, a2 + 1);
        }

        break;
    }
  }

  return result;
}

void sub_1E392E740(uint64_t a1)
{
  sub_1E392E83C(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1E392E83C(uint64_t a1)
{
  if (!qword_1EE23CFD8[0])
  {
    type metadata accessor for SportsCanonicalBannerScoreboardViewLayout.SymbolLayout(255);
    v1 = sub_1E4207104();
    if (!v2)
    {
      atomic_store(v1, qword_1EE23CFD8);
    }
  }
}

void sub_1E392E8BC(uint64_t a1)
{
  v1 = sub_1E3755B54();
  if (v2 <= 0x3F)
  {
    OUTLINED_FUNCTION_13_59(v1, &qword_1EE288748, MEMORY[0x1E6980E60]);
    if (v4 <= 0x3F)
    {
      OUTLINED_FUNCTION_13_59(v3, &qword_1EE288738, MEMORY[0x1E6980F50]);
      if (v5 <= 0x3F)
      {
        type metadata accessor for SymbolScale(319);
        if (v6 <= 0x3F)
        {
          sub_1E42012F4();
          if (v7 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_1E392E9D8(uint64_t a1)
{
  sub_1E392EACC(&qword_1ECF2E2C0, type metadata accessor for UIContentSizeCategory, &unk_1E42D1508);
  sub_1E392EACC(&qword_1ECF2E2C8, type metadata accessor for UIContentSizeCategory, &unk_1E42D14C8);

  return sub_1E4207764();
}

uint64_t sub_1E392EACC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1E392EB84(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1E392EBD4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E290, &qword_1E42ABB48);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E392EC44(uint64_t a1)
{
  v2 = type metadata accessor for SportsCanonicalBannerScoreboardViewLayout.SymbolLayout(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E392ECA0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SportsCanonicalBannerScoreboardViewLayout.SymbolLayout(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E392ED04(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E290, &qword_1E42ABB48);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E392ED74(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SportsCanonicalBannerScoreboardViewLayout.SymbolLayout(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1E392EDD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EE23DF30;
  if (!qword_1EE23DF30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE23DF30);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_32_29(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unint64_t a9, char a10)
{
  STACK[0x300] = a9;
  LOBYTE(STACK[0x308]) = a10;

  return sub_1E3C3DE00();
}

void sub_1E392EE54(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = (*(*a1 + 1720))();
  if (v6)
  {
    sub_1E4203F04();
    v8 = v7;
    v10 = v9;
  }

  else
  {
    v8 = v4;
    v10 = v5;
  }

  OUTLINED_FUNCTION_47_0();
  v12 = (*(v11 + 1744))();
  if (v14)
  {
    sub_1E4203F54();
    v16 = v15;
    v18 = v17;
  }

  else
  {
    v16 = v12;
    v18 = v13;
  }

  OUTLINED_FUNCTION_47_0();
  v20 = (*(v19 + 1792))();
  v21 = MEMORY[0x1E69E7CC0];
  if (v20)
  {
    v22 = v20;
    v23 = sub_1E32AE9B0(v20);
    if (v23)
    {
      v24 = v23;
      v58 = v21;
      sub_1E4207574();
      if (v24 < 0)
      {
        __break(1u);
        return;
      }

      v25 = 0;
      do
      {
        if ((v22 & 0xC000000000000001) != 0)
        {
          v26 = MEMORY[0x1E6911E60](v25, v22);
        }

        else
        {
          v26 = *(v22 + 8 * v25 + 32);
        }

        v27 = v26;
        ++v25;
        sub_1E38F08C4(v26);

        sub_1E4207544();
        sub_1E4207584();
        sub_1E4207594();
        sub_1E4207554();
      }

      while (v24 != v25);

      v21 = v58;
    }

    else
    {
    }
  }

  OUTLINED_FUNCTION_47_0();
  v29 = (*(v28 + 1816))();
  if (v29)
  {
    if (*(v29 + 16) >= *(v21 + 16))
    {
      v30 = *(v21 + 16);
    }

    else
    {
      v30 = *(v29 + 16);
    }

    if (v30)
    {
      v31 = v21 + 32;
      v32 = v29 + 32;
      v33 = MEMORY[0x1E69E7CC0];
      do
      {

        v34 = sub_1E4203C14();
        v36 = v35;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v33 = sub_1E392FDC8(0, *(v33 + 2) + 1, 1, v33);
        }

        v38 = *(v33 + 2);
        v37 = *(v33 + 3);
        if (v38 >= v37 >> 1)
        {
          v33 = sub_1E392FDC8((v37 > 1), v38 + 1, 1, v33);
        }

        *(v33 + 2) = v38 + 1;
        v39 = &v33[16 * v38];
        *(v39 + 4) = v34;
        *(v39 + 5) = v36;
        v32 += 8;
        v31 += 8;
        --v30;
      }

      while (v30);
    }

    v40 = sub_1E4203C24();
  }

  else
  {
    v40 = MEMORY[0x1E690E590](v21);
  }

  v41 = v40;
  OUTLINED_FUNCTION_47_0();
  v43 = *(v42 + 200);

  v45 = v43(v44);
  v61 = v46 & 1;
  v47 = (*(*a1 + 304))();
  v49 = v48;

  v60 = v49 & 1;
  v51 = (*(*a1 + 1768))(v50);
  if (v51 == 4)
  {
    v52 = 2;
  }

  else
  {
    v52 = v51 == 2;
  }

  v53 = (*(*a1 + 1840))();
  v59 = v54 & 1;
  v55 = (*(*a1 + 1864))();
  v57 = v56;

  *a2 = v41;
  *(a2 + 8) = v8;
  *(a2 + 16) = v10;
  *(a2 + 24) = v16;
  *(a2 + 32) = v18;
  *(a2 + 40) = v52;
  *(a2 + 48) = v45;
  *(a2 + 56) = v61;
  *(a2 + 64) = v47;
  *(a2 + 72) = v60;
  *(a2 + 80) = v53;
  *(a2 + 88) = v59;
  *(a2 + 96) = v55;
  *(a2 + 104) = v57 & 1;
}

uint64_t sub_1E392F30C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v49 = a1;
  v52 = a2;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E2D0, &qword_1E42ABEC0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v3);
  v5 = v47 - v4;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E2D8, &qword_1E42ABEC8);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_4_6();
  v9 = v7 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = v47 - v11;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E2E0, &qword_1E42ABED0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v13);
  v15 = v47 - v14;
  v47[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E2E8, &qword_1E42ABED8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v16);
  v18 = v47 - v17;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E2F0, &qword_1E42ABEE0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v19);
  v21 = v47 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E2F8, &qword_1E42ABEE8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v23);
  v25 = v47 - v24;
  if (*(v2 + 40))
  {
    if (*(v2 + 40) == 1)
    {
      sub_1E392FED0(v2, __dst);
      sub_1E4201144();
      v26 = __dst[0];
      v27 = sub_1E4202734();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E300, &qword_1E42ABEF0);
      OUTLINED_FUNCTION_2();
      (*(v28 + 16))(v9, v49);
      v29 = v9 + *(v48 + 36);
      *v29 = v26;
      v30 = *&__dst[1];
      *(v29 + 24) = *&__dst[3];
      *(v29 + 8) = v30;
      *(v29 + 40) = v27;
      sub_1E3930240(v9, v12);
      v31 = &qword_1ECF2E2D8;
      v32 = &qword_1E42ABEC8;
      OUTLINED_FUNCTION_10_48(v12, v18);
      swift_storeEnumTagMultiPayload();
      sub_1E392FF94();
      sub_1E3930078();
      OUTLINED_FUNCTION_9_54();
      sub_1E4201F44();
      sub_1E37E93E8(v21, v15, &qword_1ECF2E2F0, &qword_1E42ABEE0);
      swift_storeEnumTagMultiPayload();
      sub_1E392FF08();
      sub_1E393015C();
      OUTLINED_FUNCTION_6_57();
      OUTLINED_FUNCTION_7_75();
      sub_1E325F6F0(v33, v34, v35);
      v36 = v12;
    }

    else
    {
      sub_1E392FED0(v2, __dst);
      sub_1E4201144();
      v41 = __dst[0];
      v42 = sub_1E4202734();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E300, &qword_1E42ABEF0);
      OUTLINED_FUNCTION_2();
      (*(v43 + 16))(v5, v49);
      v44 = &v5[*(v53 + 36)];
      *v44 = v41;
      v45 = *&__dst[1];
      *(v44 + 24) = *&__dst[3];
      *(v44 + 8) = v45;
      v44[40] = v42;
      v31 = &qword_1ECF2E2D0;
      v32 = &qword_1E42ABEC0;
      OUTLINED_FUNCTION_10_48(v5, v15);
      swift_storeEnumTagMultiPayload();
      sub_1E392FF08();
      sub_1E393015C();
      sub_1E4201F44();
      v36 = v5;
    }
  }

  else
  {
    sub_1E392FED0(v2, __dst);
    sub_1E4201064();
    sub_1E4203DA4();
    sub_1E4200D94();
    v37 = sub_1E4203D94();
    v39 = v38;
    memcpy(v56, v55, 0x58uLL);
    v56[11] = v37;
    v56[12] = v39;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E300, &qword_1E42ABEF0);
    OUTLINED_FUNCTION_2();
    (*(v40 + 16))(v25, v49);
    memcpy(&v25[*(v22 + 36)], v56, 0x68uLL);
    memcpy(__dst, v55, 0x58uLL);
    __dst[11] = v37;
    __dst[12] = v39;
    OUTLINED_FUNCTION_10_48(v56, &v54);
    sub_1E325F6F0(__dst, &qword_1ECF2E328, &qword_1E42ABEF8);
    v31 = &qword_1ECF2E2F8;
    v32 = &qword_1E42ABEE8;
    OUTLINED_FUNCTION_10_48(v25, v18);
    swift_storeEnumTagMultiPayload();
    sub_1E392FF94();
    sub_1E3930078();
    OUTLINED_FUNCTION_9_54();
    sub_1E4201F44();
    sub_1E37E93E8(v21, v15, &qword_1ECF2E2F0, &qword_1E42ABEE0);
    swift_storeEnumTagMultiPayload();
    sub_1E392FF08();
    sub_1E393015C();
    OUTLINED_FUNCTION_6_57();
    sub_1E325F6F0(v21, &qword_1ECF2E2F0, &qword_1E42ABEE0);
    v36 = v25;
  }

  return sub_1E325F6F0(v36, v31, v32);
}

uint64_t sub_1E392F9D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v65 = a4;
  v66 = a3;
  OUTLINED_FUNCTION_1_2();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_4_6();
  v11 = v9 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v60 - v13;
  v15 = sub_1E42013A4();
  OUTLINED_FUNCTION_1_2();
  v17 = v16;
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_4_6();
  v21 = (v19 - v20);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v60 - v23;
  OUTLINED_FUNCTION_7_75();
  sub_1E4201F54();
  OUTLINED_FUNCTION_1_2();
  v63 = v26;
  v64 = v25;
  OUTLINED_FUNCTION_5_7();
  v28 = MEMORY[0x1EEE9AC00](v27);
  v62 = &v60 - v29;
  if (a1)
  {
    v30 = swift_retain_n();
    sub_1E392EE54(v30, v69);
    v60 = a1;
    v31 = v66;
    MEMORY[0x1E690DE70](v69, a2, &type metadata for GradientModifier, v66);
    memcpy(v70, v69, 0x69uLL);
    v32 = sub_1E3930304(v70);
    v35 = sub_1E39302B0(v32, v33, v34);
    v67 = v31;
    v68 = v35;
    OUTLINED_FUNCTION_4_1();
    WitnessTable = swift_getWitnessTable();
    v36 = *(v17 + 16);
    v36(v24, v21, v15);
    v37 = *(v17 + 8);
    v37(v21, v15);
    v36(v21, v24, v15);
    v38 = v62;
    OUTLINED_FUNCTION_7_75();
    sub_1E37B8D98(v39, v40);

    v37(v21, v15);
    v41 = (v37)(v24, v15);
  }

  else
  {
    v44 = *(v7 + 16);
    v44(v14, WitnessTable, a2, v28);
    v45 = (v44)(v11, v14, a2);
    v48 = sub_1E39302B0(v45, v46, v47);
    v75 = v66;
    v76 = v48;
    OUTLINED_FUNCTION_4_1();
    swift_getWitnessTable();
    v49 = v62;
    OUTLINED_FUNCTION_7_75();
    sub_1E37B8E90(v50, v51, v52);
    v53 = *(v7 + 8);
    v54 = v11;
    v38 = v49;
    v53(v54, a2);
    v41 = (v53)(v14, a2);
  }

  v55 = sub_1E39302B0(v41, v42, v43);
  v56 = v66;
  v73 = v66;
  v74 = v55;
  OUTLINED_FUNCTION_4_1();
  v71 = swift_getWitnessTable();
  v72 = v56;
  OUTLINED_FUNCTION_2_25();
  v57 = v64;
  swift_getWitnessTable();
  v58 = v63;
  (*(v63 + 16))(v65, v38, v57);
  return (*(v58 + 8))(v38, v57);
}

char *sub_1E392FDC8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E378, &qword_1E42B4C40);
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

unint64_t sub_1E392FF08()
{
  result = qword_1ECF2E308;
  if (!qword_1ECF2E308)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2E2F0, &qword_1E42ABEE0);
    sub_1E392FF94();
    sub_1E3930078();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2E308);
  }

  return result;
}

unint64_t sub_1E392FF94()
{
  result = qword_1ECF2E310;
  if (!qword_1ECF2E310)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2E2F8, &qword_1E42ABEE8);
    sub_1E32752B0(&qword_1ECF2E318, &qword_1ECF2E300, &qword_1E42ABEF0, MEMORY[0x1E697FDF8]);
    sub_1E32752B0(&qword_1ECF2E320, &qword_1ECF2E328, &qword_1E42ABEF8, MEMORY[0x1E697F940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2E310);
  }

  return result;
}

unint64_t sub_1E3930078()
{
  result = qword_1ECF2E330;
  if (!qword_1ECF2E330)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2E2D8, &qword_1E42ABEC8);
    sub_1E32752B0(&qword_1ECF2E318, &qword_1ECF2E300, &qword_1E42ABEF0, MEMORY[0x1E697FDF8]);
    sub_1E32752B0(&qword_1ECF2E338, &qword_1ECF2E340, &qword_1E42ABF00, MEMORY[0x1E6980468]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2E330);
  }

  return result;
}

unint64_t sub_1E393015C()
{
  result = qword_1ECF2E348;
  if (!qword_1ECF2E348)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2E2D0, &qword_1E42ABEC0);
    sub_1E32752B0(&qword_1ECF2E318, &qword_1ECF2E300, &qword_1E42ABEF0, MEMORY[0x1E697FDF8]);
    sub_1E32752B0(&qword_1ECF2E350, &qword_1ECF2E358, &qword_1E42ABF08, MEMORY[0x1E6980468]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2E348);
  }

  return result;
}

uint64_t sub_1E3930240(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E2D8, &qword_1E42ABEC8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1E39302B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EE27E4F0;
  if (!qword_1EE27E4F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE27E4F0);
  }

  return result;
}

unint64_t sub_1E3930338(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF2E360;
  if (!qword_1ECF2E360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2E360);
  }

  return result;
}

uint64_t sub_1E39303B0(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 105))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1E39303F0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 104) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 105) = 1;
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

    *(result + 105) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for GradientModifier.GradientType(_BYTE *result, unsigned int a2, unsigned int a3)
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
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1E3930538()
{
  result = qword_1ECF2E368;
  if (!qword_1ECF2E368)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2E370, &qword_1E42AC010);
    sub_1E392FF08();
    sub_1E393015C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2E368);
  }

  return result;
}

uint64_t sub_1E39305C4@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = sub_1E4201AB4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E428, &qword_1E42AC180);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v17 - v9;
  sub_1E3743538(v2, &v17 - v9, &qword_1ECF2E428, &qword_1E42AC180);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1E4201CF4();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    v13 = sub_1E4206804();
    v14 = sub_1E42026D4();
    if (os_log_type_enabled(v14, v13))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v18 = v16;
      *v15 = 136315138;
      *(v15 + 4) = sub_1E3270FC8(0xD000000000000013, 0x80000001E4268150, &v18);
      _os_log_impl(&dword_1E323F000, v14, v13, "Accessing Environment<%s>'s value outside of being installed on a View. This will always read the default value and will not update.", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v16);
      MEMORY[0x1E69143B0](v16, -1, -1);
      MEMORY[0x1E69143B0](v15, -1, -1);
    }

    sub_1E4201AA4();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
}

uint64_t sub_1E3930868()
{
  type metadata accessor for SportsPlayByPlayItemViewData(0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_74_1();
  OUTLINED_FUNCTION_100_2();
  sub_1E38197D0();
  if (!v1 && sub_1E38196B0())
  {
    OUTLINED_FUNCTION_30();
    (*(v2 + 112))();

    OUTLINED_FUNCTION_22_25();
    sub_1E393B640();
  }

  return OUTLINED_FUNCTION_53();
}

uint64_t sub_1E3930950@<X0>(uint64_t a1@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E388, &qword_1E42AC0A0);
  OUTLINED_FUNCTION_17_2(v4);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_26_2();
  type metadata accessor for SportsPlayByPlayContentView(0);
  OUTLINED_FUNCTION_8();
  (*(v6 + 176))(&v24);
  v7 = 0.0;
  if ((v28 & 1) == 0)
  {
    v7 = sub_1E3952BD8(*&v24, *&v25, *&v26);
  }

  *v2 = sub_1E4201D44();
  *(v2 + 8) = v7;
  *(v2 + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E390, &qword_1E42AC0A8);
  OUTLINED_FUNCTION_140_5();
  sub_1E3930AB0(v1, v8, v9, v10, v11, v12, v13, v14, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34);
  v15 = sub_1E4203E64();
  v16 = sub_1E3818BB0();
  v17 = OUTLINED_FUNCTION_11_6();
  sub_1E3741EA0(v17, v18, v19, v20);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E398, &unk_1E42AC0B0);
  v22 = (a1 + *(result + 36));
  *v22 = v15;
  v22[1] = v16;
  return result;
}

void sub_1E3930AB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_31_1();
  a19 = v23;
  a20 = v24;
  v26 = v25;
  v232 = v27;
  v230 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E898, &qword_1E42AC7F0);
  OUTLINED_FUNCTION_0_10();
  v216 = v28;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_8_4();
  v227 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E8A0, &qword_1E42AC7F8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_44();
  v229 = v31;
  v228 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E8A8, &qword_1E42AC800);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_44();
  v223 = v33;
  v34 = OUTLINED_FUNCTION_138();
  v35 = type metadata accessor for SportsPlayByPlayContentView(v34);
  OUTLINED_FUNCTION_0_10();
  v224 = v36;
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_25_6();
  v225 = v39;
  v226 = v38;
  v40 = OUTLINED_FUNCTION_138();
  v220 = type metadata accessor for SportsPlayByPlayItemView(v40);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_74_1();
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E8B0, &qword_1E42AC808);
  v43 = OUTLINED_FUNCTION_3_6(v42, &a18);
  v222 = v44;
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_2_5();
  v221 = v45;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v46);
  OUTLINED_FUNCTION_25_3();
  v231 = v47;
  OUTLINED_FUNCTION_138();
  v48 = sub_1E4201CF4();
  v49 = OUTLINED_FUNCTION_3_6(v48, &a13);
  v213 = v50;
  MEMORY[0x1EEE9AC00](v49);
  OUTLINED_FUNCTION_9_3();
  OUTLINED_FUNCTION_20(v51);
  v52 = sub_1E4201324();
  v53 = OUTLINED_FUNCTION_3_6(v52, &a10);
  v209 = v54;
  MEMORY[0x1EEE9AC00](v53);
  OUTLINED_FUNCTION_9_3();
  OUTLINED_FUNCTION_20(v55);
  v56 = sub_1E42012F4();
  v57 = OUTLINED_FUNCTION_3_6(v56, v238);
  v204 = v58;
  MEMORY[0x1EEE9AC00](v57);
  OUTLINED_FUNCTION_9_3();
  OUTLINED_FUNCTION_17_3(v59);
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C2B8, &unk_1E42AA120);
  OUTLINED_FUNCTION_3_6(v60, &a11);
  v210 = v61;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v62);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v63);
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E7D0, &qword_1E42AC760);
  OUTLINED_FUNCTION_3_6(v64, &a16);
  v205 = v65;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v66);
  OUTLINED_FUNCTION_44();
  v68 = OUTLINED_FUNCTION_20(v67);
  v69 = type metadata accessor for SportsPlayByPlayItemViewData(v68);
  v70 = OUTLINED_FUNCTION_17_2(v69);
  MEMORY[0x1EEE9AC00](v70);
  OUTLINED_FUNCTION_9_3();
  OUTLINED_FUNCTION_17_3(v71);
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E7C8, &unk_1E42F36F0);
  v73 = OUTLINED_FUNCTION_17_2(v72);
  MEMORY[0x1EEE9AC00](v73);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v74);
  v76 = &v196[-v75];
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E8B8, &qword_1E42AC810);
  v78 = OUTLINED_FUNCTION_17_2(v77);
  MEMORY[0x1EEE9AC00](v78);
  OUTLINED_FUNCTION_2_5();
  v235 = v79;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v80);
  OUTLINED_FUNCTION_25_3();
  v234 = v81;
  v82 = OUTLINED_FUNCTION_138();
  v83 = type metadata accessor for SportsPlayByPlayErrorView(v82);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v84);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_9_12();
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E8C0, &unk_1E42AC818);
  v86 = OUTLINED_FUNCTION_17_2(v85);
  MEMORY[0x1EEE9AC00](v86);
  OUTLINED_FUNCTION_2_5();
  v233 = v87;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v88);
  v90 = &v196[-v89];
  v91 = sub_1E3819C14();
  if (v91 == 3)
  {
    OUTLINED_FUNCTION_32_2();
    __swift_storeEnumTagSinglePayload(v92, v93, v94, v83);
  }

  else
  {
    v95 = v91;
    v202 = *(v26 + *(v35 + 28));
    *v22 = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C18, &qword_1E42982F0);
    swift_storeEnumTagMultiPayload();
    v203 = v21;
    v96 = v35;
    v97 = v20;
    v98 = v76;
    v99 = v26;
    v100 = v83[5];
    *(v22 + v100) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C20, &qword_1E429F7D0);
    v26 = v99;
    v76 = v98;
    v20 = v97;
    v35 = v96;
    v21 = v203;
    swift_storeEnumTagMultiPayload();
    *(v22 + v83[6]) = v95;
    *(v22 + v83[7]) = v202;
    sub_1E393C6D8(v22, v90, type metadata accessor for SportsPlayByPlayErrorView);
    __swift_storeEnumTagSinglePayload(v90, 0, 1, v83);
  }

  v101 = sub_1E38196B0();
  if (v101)
  {
    v102 = v101;
    if (sub_1E3819C14() == 3)
    {
      v103 = sub_1E3930868();
      v201 = v90;
      if (v104)
      {
        v105 = v103;
        v106 = v104;
        OUTLINED_FUNCTION_153();
        v107();
        v108 = *(v21 + 72);
        v109 = *(v21 + 80);

        OUTLINED_FUNCTION_22_25();
        sub_1E393B640();
        LOBYTE(v108) = sub_1E41494A8(v108, v109);

        if ((v108 & 1) == 0)
        {
          v236 = v105;
          v237 = v106;
          sub_1E32822E0(v110, v111, v112);
          v203 = sub_1E4202C44();
          v202 = v137;
          v215 = v138;
          v236 = v203;
          v237 = v137;
          v199 = v139 & 1;
          v238[0] = v139 & 1;
          v239 = v138;
          v198 = sub_1E3753E44();
          OUTLINED_FUNCTION_142_4();
          sub_1E3746E10(v140);
          v141 = v206;
          sub_1E374709C(v206);
          v216 = v35;
          v197 = j__OUTLINED_FUNCTION_18();
          OUTLINED_FUNCTION_153();
          sub_1E37B5FBC(v142);
          v143 = j__OUTLINED_FUNCTION_18();
          v144 = v208;
          sub_1E37B6028(v198, v109, v141, v197, v21, v143 & 1, MEMORY[0x1E6981148], MEMORY[0x1E6981138], v208);

          OUTLINED_FUNCTION_15_5();
          v145(v21, v214);
          OUTLINED_FUNCTION_15_5();
          v146(v141, v211);
          OUTLINED_FUNCTION_15_5();
          v147(v109, v207);
          sub_1E37434B8(v203, v202, v199);

          v236 = MEMORY[0x1E6981148];
          v35 = v216;
          v237 = MEMORY[0x1E6981138];
          OUTLINED_FUNCTION_20_43();
          swift_getOpaqueTypeConformance2();
          OUTLINED_FUNCTION_41_0();
          v148 = v212;
          View.accessibilityIdentifier(key:location:)();
          OUTLINED_FUNCTION_15_5();
          v149(v144, v148);
          OUTLINED_FUNCTION_155_0();
          v150 = OUTLINED_FUNCTION_87_2();
          v114 = v217;
          v151(v150);
          v113 = 0;
          goto LABEL_15;
        }
      }

      v113 = 1;
      v114 = v217;
LABEL_15:
      __swift_storeEnumTagSinglePayload(v76, v113, 1, v114);
      v152 = *(v26 + *(v35 + 28));
      *v20 = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C18, &qword_1E42982F0);
      OUTLINED_FUNCTION_125_2();
      v153 = v220;
      v154 = v76;
      v200 = v76;
      v155 = *(v220 + 20);
      *(v20 + v155) = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C20, &qword_1E429F7D0);
      swift_storeEnumTagMultiPayload();
      *(v20 + v153[7]) = v102;
      *(v20 + v153[6]) = v152;
      v156 = *(*v102 + 112);
      swift_retain_n();

      v156(v157);

      *(v20 + v153[9]) = 0;
      OUTLINED_FUNCTION_25_34();
      v158 = v226;
      sub_1E393C67C(v26, v226, v159);
      OUTLINED_FUNCTION_16_14();
      swift_allocObject();
      OUTLINED_FUNCTION_19_40();
      sub_1E393C6D8(v158, v160, v161);
      sub_1E393CB3C(&qword_1ECF2E8F0, type metadata accessor for SportsPlayByPlayItemView, &unk_1E42AC320);
      v162 = v231;
      sub_1E4202E74();

      OUTLINED_FUNCTION_63_10();
      v163 = v218;
      sub_1E3743538(v154, v218, &qword_1ECF2E7C8, &unk_1E42F36F0);
      v165 = v221;
      v164 = v222;
      v166 = *(v222 + 16);
      v167 = v219;
      v166(v221, v162, v219);
      v168 = v223;
      sub_1E3743538(v163, v223, &qword_1ECF2E7C8, &unk_1E42F36F0);
      v169 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E920, &unk_1E42AC850);
      v166(v168 + *(v169 + 48), v165, v167);
      v170 = *(v164 + 8);
      v170(v165, v167);
      sub_1E325F6F0(v163, &qword_1ECF2E7C8, &unk_1E42F36F0);
      sub_1E3743538(v168, v229, &qword_1ECF2E8A8, &qword_1E42AC800);
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_6_1();
      OUTLINED_FUNCTION_112_1();
      sub_1E32752B0(v171, v172, v173, v174);
      sub_1E393D16C();
      v116 = v234;
      sub_1E4201F44();

      OUTLINED_FUNCTION_112_1();
      sub_1E325F6F0(v175, v176, v177);
      v170(v231, v167);
      sub_1E325F6F0(v200, &qword_1ECF2E7C8, &unk_1E42F36F0);
      v115 = 0;
      goto LABEL_16;
    }
  }

  if (sub_1E38196B0())
  {

    v115 = 1;
    v116 = v234;
  }

  else
  {
    v240 = sub_1E3818BB0();
    OUTLINED_FUNCTION_25_34();
    v117 = v226;
    sub_1E393C67C(v26, v226, v118);
    OUTLINED_FUNCTION_16_14();
    swift_allocObject();
    OUTLINED_FUNCTION_19_40();
    sub_1E393C6D8(v117, v119, v120);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B4B0, &qword_1E42A0700);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E8C8, &qword_1E42AC828);
    OUTLINED_FUNCTION_112_1();
    sub_1E32752B0(v121, v122, v123, v124);
    v125 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2E8D8, &qword_1E42AC830);
    v126 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2E8E0, &qword_1E42AC838);
    v127 = sub_1E393D084();
    v236 = v126;
    v237 = v127;
    OUTLINED_FUNCTION_8_16();
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v236 = v125;
    v237 = OpaqueTypeConformance2;
    swift_getOpaqueTypeConformance2();
    sub_1E393CB3C(&qword_1ECF2E8F8, type metadata accessor for SportsPlayByPlayItemViewData, &unk_1E42E89F8);
    OUTLINED_FUNCTION_19_1();
    sub_1E4203B44();
    v129 = v216;
    v130 = v230;
    v131 = OUTLINED_FUNCTION_35_5();
    v132(v131);
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_6_1();
    sub_1E32752B0(v133, v134, v135, v136);
    sub_1E393D16C();
    v116 = v234;
    sub_1E4201F44();
    (*(v129 + 8))(v21, v130);
    v115 = 0;
  }

LABEL_16:
  v178 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E910, &qword_1E42AC840);
  __swift_storeEnumTagSinglePayload(v116, v115, 1, v178);
  OUTLINED_FUNCTION_19_1();
  sub_1E3743538(v179, v180, v181, v182);
  v183 = v235;
  sub_1E3743538(v116, v235, &qword_1ECF2E8B8, &qword_1E42AC810);
  v184 = v232;
  OUTLINED_FUNCTION_19_1();
  sub_1E3743538(v185, v186, v187, v188);
  v189 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E918, &qword_1E42AC848);
  sub_1E3743538(v183, v184 + *(v189 + 48), &qword_1ECF2E8B8, &qword_1E42AC810);
  sub_1E325F6F0(v116, &qword_1ECF2E8B8, &qword_1E42AC810);
  OUTLINED_FUNCTION_21_1();
  sub_1E325F6F0(v190, v191, v192);
  sub_1E325F6F0(v183, &qword_1ECF2E8B8, &qword_1E42AC810);
  OUTLINED_FUNCTION_21_1();
  sub_1E325F6F0(v193, v194, v195);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3931B64()
{
  OUTLINED_FUNCTION_31_1();
  v3 = v2;
  v5 = v4;
  v63 = v6;
  v7 = type metadata accessor for SportsPlayByPlayContentView(0);
  v8 = v7 - 8;
  v62 = *(v7 - 8);
  v61 = *(v62 + 64);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_25_6();
  v60 = v9;
  v10 = OUTLINED_FUNCTION_138();
  v11 = type metadata accessor for SportsPlayByPlayItemViewData(v10);
  v12 = OUTLINED_FUNCTION_17_2(v11);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_73_5();
  v13 = type metadata accessor for SportsPlayByPlayItemView(0);
  v14 = (v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_74_1();
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E8E0, &qword_1E42AC838);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v53 - v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E8D8, &qword_1E42AC830);
  OUTLINED_FUNCTION_0_10();
  v58 = v18;
  v59 = v19;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_44();
  v55 = v21;
  sub_1E393C67C(v5, v1, type metadata accessor for SportsPlayByPlayItemViewData);
  v23 = *(v8 + 32);
  v22 = *(v8 + 36);
  v24 = v3;
  v57 = v3;
  v25 = *(v3 + v22);
  v26 = *(v24 + v23 + 8);
  v28 = v5[1];
  v54 = *v5;
  v27 = v54;
  v29 = OBJC_IVAR____TtC8VideosUI25SportsPlayByPlayViewModel_playsToIndicies;
  OUTLINED_FUNCTION_161_2();
  v30 = *(v26 + v29);

  v31 = sub_1E3893E78(v27, v28, v30);
  LOBYTE(v27) = v32;
  swift_endAccess();
  if (v27)
  {
    v33 = 0;
  }

  else
  {
    v33 = v31;
  }

  *v0 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C18, &qword_1E42982F0);
  OUTLINED_FUNCTION_125_2();
  v34 = v14[7];
  *(v0 + v34) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C20, &qword_1E429F7D0);
  swift_storeEnumTagMultiPayload();
  *(v0 + v14[9]) = 0;
  *(v0 + v14[8]) = v25;
  OUTLINED_FUNCTION_23_33();
  v37 = sub_1E393C6D8(v1, v0 + v35, v36);
  *(v0 + v14[11]) = v33;
  sub_1E3931FE8(v37, v38, v39, v40);
  sub_1E4200DC4();
  sub_1E4200DD4();
  sub_1E4200DE4();

  v41 = sub_1E4200DB4();

  v42 = OUTLINED_FUNCTION_32_0();
  sub_1E393C67C(v42, v43, v44);
  v45 = v56;
  *&v17[*(v56 + 36)] = v41;
  OUTLINED_FUNCTION_63_10();
  OUTLINED_FUNCTION_161_2();
  sub_1E3893E78(v54, v28, *(v26 + v29));
  swift_endAccess();
  v46 = sub_1E393D084();
  v47 = v55;
  View.accessibilityIdentifier(key:location:)();
  sub_1E325F6F0(v17, &qword_1ECF2E8E0, &qword_1E42AC838);
  OUTLINED_FUNCTION_25_34();
  v48 = v60;
  sub_1E393C67C(v57, v60, v49);
  OUTLINED_FUNCTION_16_14();
  swift_allocObject();
  OUTLINED_FUNCTION_19_40();
  sub_1E393C6D8(v48, v50, v51);
  v64 = v45;
  v65 = v46;
  OUTLINED_FUNCTION_8_16();
  swift_getOpaqueTypeConformance2();
  v52 = v58;
  sub_1E4202E74();

  (*(v59 + 8))(v47, v52);
  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3931FE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  __asm { FMOV            V0.2D, #1.0 }

  sub_1E3932088(a1, a2, a3);
  sub_1E4200DF4();
  v9 = sub_1E4203E64();
  sub_1E4203E04();

  OUTLINED_FUNCTION_13_8();
  sub_1E4200E04();
  OUTLINED_FUNCTION_50();

  return v9;
}

unint64_t sub_1E3932088(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF4FD30[0];
  if (!qword_1ECF4FD30[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECF4FD30);
  }

  return result;
}

uint64_t sub_1E39320F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  sub_1E3741EA0(a1, a3, &qword_1ECF28BB8, &unk_1E429B6A0);
  v5 = type metadata accessor for SportsPlayByPlayContentView(0);
  v6 = v5[5];
  *(a3 + v6) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C20, &qword_1E429F7D0);
  swift_storeEnumTagMultiPayload();
  v7 = (a3 + v5[6]);
  type metadata accessor for SportsPlayByPlayViewModel(0);
  OUTLINED_FUNCTION_26_31();
  sub_1E393CB3C(v8, v9, &unk_1E42A07C0);
  OUTLINED_FUNCTION_35_5();
  result = sub_1E42010C4();
  *v7 = result;
  v7[1] = v11;
  *(a3 + v5[7]) = a2;
  return result;
}

void sub_1E39321E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_9_4();
  a23 = v26;
  a24 = v27;
  v28 = v24;
  v134 = v29;
  v137 = sub_1E42012F4();
  OUTLINED_FUNCTION_0_10();
  v124 = v30;
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_9_3();
  OUTLINED_FUNCTION_17_3(v32);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E5D0, &qword_1E42AC588);
  v34 = OUTLINED_FUNCTION_17_2(v33);
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_4_6();
  v37 = v35 - v36;
  MEMORY[0x1EEE9AC00](v38);
  v40 = &v120 - v39;
  v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E5D8, &qword_1E42AC590);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_9_12();
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E5E0, &qword_1E42AC598);
  OUTLINED_FUNCTION_3_6(v42, &a22);
  v131 = v43;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v45);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E5E8, &qword_1E42AC5A0);
  OUTLINED_FUNCTION_3_6(v46, &a20);
  v129 = v47;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v48);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v49);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E5F0, &qword_1E42AC5A8);
  OUTLINED_FUNCTION_6_4(v50, &a17);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v51);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v52);
  v53 = objc_opt_self();
  v54 = *(v24 + *(type metadata accessor for SportsPlayByPlayErrorView(0) + 28));
  sub_1E3754C00();
  OUTLINED_FUNCTION_2_1();
  v56 = (*(v55 + 2408))();

  v57 = [v53 vui:v56 fontFromTextLayout:?];

  sub_1E3754D00();
  OUTLINED_FUNCTION_2_1();
  v59 = (*(v58 + 2408))();

  v60 = [v53 vui:v59 fontFromTextLayout:?];

  *v25 = sub_1E4201B84();
  *(v25 + 8) = 0;
  *(v25 + 16) = 1;
  v121 = v25;
  v61 = v25 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E5F8, &qword_1E42AC5B0) + 44);
  *v40 = sub_1E4201D44();
  *(v40 + 1) = 0;
  v40[16] = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E600, &qword_1E42AC5B8);
  v62 = v122;
  sub_1E3932994(v28, v57, v60, v63, v64, v65, v66, v67, v120, v121, v122, v123, v124, v60, v57, v126, v127, v128, v129, v130);
  sub_1E3743538(v40, v37, &qword_1ECF2E5D0, &qword_1E42AC588);
  *v61 = 0;
  *(v61 + 8) = 1;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E608, &qword_1E42AC5C0);
  sub_1E3743538(v37, v61 + *(v68 + 48), &qword_1ECF2E5D0, &qword_1E42AC588);
  v69 = v61 + *(v68 + 64);
  *v69 = 0;
  *(v69 + 8) = 1;
  sub_1E325F6F0(v40, &qword_1ECF2E5D0, &qword_1E42AC588);
  v70 = OUTLINED_FUNCTION_11_6();
  sub_1E325F6F0(v70, v71, &qword_1E42AC588);
  v135 = v54;
  sub_1E375397C();
  OUTLINED_FUNCTION_2_1();
  v73 = (*(v72 + 304))();
  LOBYTE(v37) = v74;

  if (v37)
  {
    v75 = 0;
  }

  else
  {
    v75 = v73;
  }

  v133 = v28;
  v76 = v124;
  sub_1E3746E10(v62);
  v77 = sub_1E42012B4();
  v78 = v62;
  v124 = v76[1];
  (v124)(v62, v137);
  OUTLINED_FUNCTION_9_0();
  v81 = sub_1E32752B0(v79, &qword_1ECF2E5D8, &qword_1E42AC590, v80);
  v82 = v136;
  OUTLINED_FUNCTION_27_0();
  v83 = sub_1E3B6C5B4();
  v119 = (v77 & 1) == 0;
  v118 = v84 & 1;
  v116 = v83;
  v117 = v85;
  v86 = v123;
  v87 = OUTLINED_FUNCTION_27_24();
  v88 = v121;
  View.conditionalFrame(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:condition:)(v87, v89, v90, v91, v92, v93, v75, 0, 0, 1, 0, 1, v116, v117, v118, v119, v82, v81);
  sub_1E325F6F0(v88, &qword_1ECF2E5D8, &qword_1E42AC590);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BA8, &unk_1E42980C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E4299720;
  v95 = sub_1E4202744();
  *(inited + 32) = v95;
  *(inited + 33) = sub_1E4202754();
  v96 = sub_1E4202774();
  sub_1E4202774();
  if (sub_1E4202774() != v95)
  {
    v96 = sub_1E4202774();
  }

  sub_1E4202774();
  sub_1E4202774();
  OUTLINED_FUNCTION_29();
  if (!v97)
  {
    v96 = sub_1E4202774();
  }

  sub_1E3754B54();
  OUTLINED_FUNCTION_30();
  (*(v98 + 176))(v140);
  OUTLINED_FUNCTION_122_1();
  v99 = v141;
  if (v141)
  {
    v100 = 0;
  }

  else
  {
    v101 = OUTLINED_FUNCTION_6();
    v100 = sub_1E3952BD8(v101, v102, v103);
  }

  sub_1E3746E10(v78);
  v104 = sub_1E42012B4();
  OUTLINED_FUNCTION_113_0();
  v105();
  v138 = v136;
  v139 = v81;
  OUTLINED_FUNCTION_5_71();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v107 = v132;
  View.conditionalPadding(edges:length:condition:)(v96, v100, v99 & 1, v104 & 1, v132, OpaqueTypeConformance2);
  OUTLINED_FUNCTION_89_0();

  OUTLINED_FUNCTION_15_5();
  v109(v86, v107);
  OUTLINED_FUNCTION_155_0();
  v110 = v126;
  v111 = OUTLINED_FUNCTION_16_0();
  v112(v111);
  OUTLINED_FUNCTION_141();
  v114 = v110 + v113;
  v115 = v134;
  *v114 = v135;
  *(v114 + 8) = 0;
  sub_1E3741EA0(v110, v115, &qword_1ECF2E5F0, &qword_1E42AC5A8);

  OUTLINED_FUNCTION_10_3();
}

void sub_1E3932994(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_31_1();
  a19 = v23;
  a20 = v24;
  v121 = v25;
  v119 = v26;
  v28 = v27;
  v122 = v29;
  v130 = sub_1E4201CF4();
  OUTLINED_FUNCTION_0_10();
  v134 = v30;
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_73_5();
  v129 = sub_1E4201324();
  OUTLINED_FUNCTION_0_10();
  v133 = v32;
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_41();
  v127 = sub_1E42012F4();
  OUTLINED_FUNCTION_0_10();
  v131 = v34;
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_9_12();
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C2B8, &unk_1E42AA120);
  OUTLINED_FUNCTION_0_10();
  v132 = v36;
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_2_5();
  v125 = v38;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_25_3();
  v123 = v40;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E470, &qword_1E42AC1C0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v46);
  OUTLINED_FUNCTION_25_3();
  v126 = v47;
  v48 = OUTLINED_FUNCTION_138();
  v116 = *(v28 + *(type metadata accessor for SportsPlayByPlayErrorView(v48) + 24));
  v49 = SportsDisplayError.title.getter();
  sub_1E32822E0(v49, v50, v51);
  v52 = sub_1E4202C44();
  v112 = v53;
  v55 = v54 & 1;
  v56 = sub_1E3754C00();
  sub_1E3746E10(v21);
  sub_1E374709C(v20);
  v57 = MEMORY[0x1E6981148];
  v58 = MEMORY[0x1E6981138];
  OUTLINED_FUNCTION_154_0();
  v59 = j__OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_154_0();
  sub_1E37B5FBC(v60);
  OUTLINED_FUNCTION_154_0();
  j__OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_92_5();
  sub_1E37B6028(v56, v21, v20, v59, v22, v61, v57, v58, v123);

  v115 = *(v134 + 8);
  v115(v22, v130);
  v114 = *(v133 + 8);
  v114(v20, v129);
  v62 = v21;
  v113 = *(v131 + 8);
  v113(v21, v127);
  sub_1E37434B8(v52, v112, v55);

  if (v119)
  {
    sub_1E405EEA0();
  }

  swift_getKeyPath();
  v63 = v123;
  v124 = *(v132 + 32);
  v124(v117, v63, v128);
  OUTLINED_FUNCTION_141_3();
  sub_1E3741EA0(v117, v126, &qword_1ECF2E470, &qword_1E42AC1C0);
  SportsDisplayError.subtitle.getter(v116);
  v118 = sub_1E4202C44();
  v65 = v64;
  OUTLINED_FUNCTION_110_4(v118, v64, v66, v67, &a15);
  sub_1E3754D00();
  v68 = v62;
  sub_1E3746E10(v62);
  OUTLINED_FUNCTION_89_0();
  v69 = v20;
  sub_1E374709C(v20);
  v70 = MEMORY[0x1E6981148];
  v71 = MEMORY[0x1E6981138];
  OUTLINED_FUNCTION_87_2();
  v72 = j__OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_87_2();
  sub_1E37B5FBC(v73);
  OUTLINED_FUNCTION_87_2();
  j__OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_92_5();
  v74 = OUTLINED_FUNCTION_35_5();
  sub_1E37B6028(v74, v75, v69, v72, v22, v76, v70, v71, v77);

  v115(v22, v130);
  v114(v69, v129);
  v113(v68, v127);
  sub_1E37434B8(v118, v65, v52);

  if (v121)
  {
    sub_1E405EEA0();
  }

  swift_getKeyPath();
  v124(v120, v125, v128);
  OUTLINED_FUNCTION_141_3();
  OUTLINED_FUNCTION_19_1();
  sub_1E3741EA0(v78, v79, v80, v81);
  OUTLINED_FUNCTION_19_1();
  sub_1E3743538(v82, v83, v84, v85);
  OUTLINED_FUNCTION_19_1();
  sub_1E3743538(v86, v87, v88, v89);
  *v122 = 0;
  *(v122 + 8) = 1;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E618, &qword_1E42AC5C8);
  OUTLINED_FUNCTION_19_1();
  sub_1E3743538(v91, v92, v93, v94);
  OUTLINED_FUNCTION_131_5();
  OUTLINED_FUNCTION_19_1();
  sub_1E3743538(v95, v96, v97, v98);
  v99 = v122 + *(v90 + 80);
  *v99 = 0;
  *(v99 + 8) = 1;
  OUTLINED_FUNCTION_21_1();
  sub_1E325F6F0(v100, v101, v102);
  OUTLINED_FUNCTION_21_1();
  sub_1E325F6F0(v103, v104, v105);
  OUTLINED_FUNCTION_21_1();
  sub_1E325F6F0(v106, v107, v108);
  OUTLINED_FUNCTION_21_1();
  sub_1E325F6F0(v109, v110, v111);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E393310C()
{
  OUTLINED_FUNCTION_21_5();
  v4 = v3;
  v43 = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E3A0, &qword_1E42AC0C0) - 8;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_8_4();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E3A8, &qword_1E42AC0C8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_9_12();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E3B0, &qword_1E42AC0D0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_26_2();
  sub_1E3755264(v4);
  v12 = sub_1E4203644();
  v13 = sub_1E4202734();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E3B8, &qword_1E42AC0D8);
  OUTLINED_FUNCTION_2();
  v14 = OUTLINED_FUNCTION_113();
  v15(v14);
  v16 = v1 + *(v6 + 44);
  *v16 = v12;
  *(v16 + 8) = v13;
  sub_1E375397C();
  OUTLINED_FUNCTION_2_1();
  (*(v17 + 552))(&v48);

  v18 = 0.0;
  if ((v49 & 1) == 0)
  {
    v18 = OUTLINED_FUNCTION_86_3();
  }

  v19 = (v2 + *(v8 + 36));
  v20 = *(sub_1E4201534() + 20);
  v21 = *MEMORY[0x1E697F468];
  sub_1E4201C44();
  OUTLINED_FUNCTION_2();
  (*(v22 + 104))(v19 + v20, v21);
  *v19 = v18;
  v19[1] = v18;
  *(v19 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF298B0, &unk_1E42AC0E0) + 36)) = 256;
  sub_1E3741EA0(v1, v2, &qword_1ECF2E3A0, &qword_1E42AC0C0);
  sub_1E3741EA0(v2, v0, &qword_1ECF2E3A8, &qword_1E42AC0C8);
  *(v0 + *(v10 + 36)) = 0;
  v23 = sub_1E375397C();
  (*(*v23 + 600))();
  OUTLINED_FUNCTION_50();

  if (!v23)
  {
    v46 = 0u;
    v47 = 0u;
LABEL_11:
    sub_1E325F6F0(&v46, &unk_1ECF296E0, &unk_1E4298030);
    goto LABEL_12;
  }

  v24 = [v23 shadowColor];

  if (v24)
  {
    sub_1E4207264();
    swift_unknownObjectRelease();
  }

  else
  {
    v44 = 0u;
    v45 = 0u;
  }

  v46 = v44;
  v47 = v45;
  if (!*(&v45 + 1))
  {
    goto LABEL_11;
  }

  sub_1E3755B54();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_12:
    v25 = [objc_opt_self() clearColor];
  }

  v26 = sub_1E4203644();
  sub_1E375397C();
  OUTLINED_FUNCTION_26_0();
  v29 = v28;
  (*(v27 + 600))();
  OUTLINED_FUNCTION_50();

  v30 = 0;
  v31 = 0;
  if (v29)
  {
    [v29 shadowBlurRadius];
    v31 = v32;
  }

  sub_1E375397C();
  OUTLINED_FUNCTION_26_0();
  v35 = v34;
  (*(v33 + 600))();
  OUTLINED_FUNCTION_50();

  if (v35)
  {
    [v35 shadowOffset];
    v30 = v36;
  }

  sub_1E375397C();
  OUTLINED_FUNCTION_26_0();
  v39 = v38;
  (*(v37 + 600))();
  OUTLINED_FUNCTION_50();

  if (v39)
  {
    [v39 shadowOffset];
    v41 = v40;
  }

  else
  {
    v41 = 0;
  }

  sub_1E3741EA0(v0, v43, &qword_1ECF2E3B0, &qword_1E42AC0D0);
  v42 = (v43 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E3C0, &qword_1E42AC0F0) + 36));
  *v42 = v26;
  v42[1] = v31;
  v42[2] = v30;
  v42[3] = v41;
  OUTLINED_FUNCTION_20_0();
}

uint64_t sub_1E3933638(uint64_t (*a1)(void, void))
{
  v4 = v1;
  sub_1E42012F4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_35_3();
  sub_1E3746E10(v2);
  v6 = sub_1E42012B4();
  v7 = OUTLINED_FUNCTION_53();
  v8(v7);
  v9 = type metadata accessor for SportsPlayByPlayItemView(0);
  if ((v6 & 1) == 0)
  {
    return a1(*(v4 + *(v9 + 32) + 24), *(v4 + *(v9 + 32) + 32));
  }

  sub_1E375417C();
  OUTLINED_FUNCTION_30();
  (*(v10 + 672))();
  OUTLINED_FUNCTION_35_2();
  if (a1)
  {
    return sub_1E4203644();
  }

  else
  {
    return sub_1E4203704();
  }
}

void sub_1E393376C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_9_4();
  a23 = v28;
  a24 = v29;
  v30 = v25;
  v95 = v31;
  sub_1E42012F4();
  OUTLINED_FUNCTION_0_10();
  v96 = v32;
  v97 = v33;
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_9_3();
  OUTLINED_FUNCTION_20(v34);
  v35 = sub_1E4202494();
  v36 = OUTLINED_FUNCTION_3_6(v35, &a15);
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_73_5();
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E3C8, &qword_1E42AC0F8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_74_1();
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E3D0, &qword_1E42AC100);
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_26_2();
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E3D8, &qword_1E42AC108);
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_44();
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E3E0, &qword_1E42AC110);
  OUTLINED_FUNCTION_3_6(v42, &a20);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v44);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E3E8, &qword_1E42AC118);
  OUTLINED_FUNCTION_6_4(v45, &a17);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v46);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v47);
  *v24 = sub_1E4201D44();
  *(v24 + 8) = 0;
  *(v24 + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E3F0, &unk_1E42AC120);
  OUTLINED_FUNCTION_139_1();
  sub_1E3933DD4();
  sub_1E4202484();
  OUTLINED_FUNCTION_1();
  v50 = sub_1E32752B0(v48, &qword_1ECF2E3C8, &qword_1E42AC0F8, v49);
  v51 = v37;
  OUTLINED_FUNCTION_82();
  sub_1E4203224();
  OUTLINED_FUNCTION_15_5();
  v52(v27);
  sub_1E325F6F0(v24, &qword_1ECF2E3C8, &qword_1E42AC0F8);
  OUTLINED_FUNCTION_89_0();
  v53 = v30;
  v55 = v54;
  v56 = v53;
  sub_1E3746E10(v54);
  LOBYTE(v53) = sub_1E42012B4();
  v92 = *(v97 + 8);
  v92(v55, v96);
  v98[0] = v51;
  v98[1] = v50;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  OUTLINED_FUNCTION_32_12();
  v58 = sub_1E3B6C5B4();
  v91 = v59 & 1;
  v89 = v58;
  v90 = v60;
  v61 = OUTLINED_FUNCTION_27_24();
  View.conditionalFrame(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:condition:)(v61, v62, v63, v64, v65, v66, 0, 1, 0, 1, 0, 1, v89, v90, v91, v53 & 1, v39, OpaqueTypeConformance2);
  OUTLINED_FUNCTION_15_5();
  v67(v26, v39);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BA8, &unk_1E42980C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E4299720;
  v69 = sub_1E4202744();
  *(inited + 32) = v69;
  *(inited + 33) = sub_1E4202754();
  v70 = sub_1E4202774();
  sub_1E4202774();
  if (sub_1E4202774() != v69)
  {
    v70 = sub_1E4202774();
  }

  sub_1E4202774();
  sub_1E4202774();
  OUTLINED_FUNCTION_29();
  if (!v71)
  {
    v70 = sub_1E4202774();
  }

  v72 = v56;
  v73 = type metadata accessor for SportsPlayByPlayItemView(0);
  v74 = *(v72 + *(v73 + 24));
  sub_1E375397C();
  OUTLINED_FUNCTION_30();
  (*(v75 + 176))(v98);
  OUTLINED_FUNCTION_122_1();
  v76 = 0;
  if ((v99 & 1) == 0)
  {
    v77 = OUTLINED_FUNCTION_6();
    v76 = sub_1E3952BD8(v77, v78, v79);
  }

  sub_1E3746E10(v55);
  sub_1E42012B4();
  v92(v55, v96);
  OUTLINED_FUNCTION_5_71();
  swift_getOpaqueTypeConformance2();
  OUTLINED_FUNCTION_153();
  View.conditionalPadding(edges:length:condition:)(v70, v76, v80, v81, v94, v82);
  OUTLINED_FUNCTION_15_5();
  v83 = OUTLINED_FUNCTION_16_0();
  v84(v83);
  v85 = *(v72 + *(v73 + 28)) != 0;
  OUTLINED_FUNCTION_155_0();
  v86(v93, v55);
  OUTLINED_FUNCTION_141();
  v88 = v93 + v87;
  *v88 = v74;
  *(v88 + 8) = v85;
  sub_1E3741EA0(v93, v95, &qword_1ECF2E3E8, &qword_1E42AC118);

  OUTLINED_FUNCTION_10_3();
}

void sub_1E3933DD4()
{
  OUTLINED_FUNCTION_31_1();
  v3 = v2;
  v81 = v4;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E7E0, &qword_1E42AC770);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_44();
  v70 = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E7E8, &qword_1E42AC778);
  v8 = OUTLINED_FUNCTION_17_2(v7);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_2_5();
  v80 = v9;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_25_3();
  v76 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E7F0, &qword_1E42AC780);
  OUTLINED_FUNCTION_0_10();
  v71 = v12;
  v72 = v13;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_26_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E7F8, &qword_1E42AC788);
  OUTLINED_FUNCTION_0_10();
  v73 = v15;
  v74 = v16;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_8_4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E800, &qword_1E42AC790);
  OUTLINED_FUNCTION_0_10();
  v77 = v19;
  v78 = v18;
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_2_5();
  v75 = v20;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v70 - v22;
  v24 = type metadata accessor for SportsPlayByPlayItemView(0);
  sub_1E39342C8();
  v84 = v3;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E808, &qword_1E42AC798);
  v26 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2E410, &qword_1E42AC140);
  v27 = OUTLINED_FUNCTION_32_12();
  v29 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v27, v28);
  OUTLINED_FUNCTION_9_0();
  v32 = sub_1E32752B0(v30, &qword_1ECF2E408, &qword_1E42AC138, v31);
  v85 = v29;
  v86 = v32;
  OUTLINED_FUNCTION_21_37();
  v35 = OUTLINED_FUNCTION_121_2(v33, v34);
  v85 = v26;
  v86 = v35;
  OUTLINED_FUNCTION_55_15();
  v38 = OUTLINED_FUNCTION_121_2(v36, v37);
  v39 = sub_1E393CB8C();
  v40 = v71;
  sub_1E3E35D1C(v25, v1);
  (*(v72 + 8))(v0, v40);
  v85 = v40;
  v86 = v25;
  v87 = v38;
  v88 = v39;
  OUTLINED_FUNCTION_60_9();
  v41 = v73;
  View.accessibilityIdentifier(key:location:)();
  (*(v74 + 8))(v1, v41);
  if (*(v3 + *(v24 + 28)))
  {

    v42 = sub_1E4201D44();
    v43 = v70;
    *v70 = v42;
    v43[1] = 0;
    *(v43 + 16) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E830, &qword_1E42AC7B0);
    v44 = OUTLINED_FUNCTION_27_0();
    sub_1E3934850(v44, v45, v46, v47, v48, v49, v50, v51, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86, v87);

    v52 = v76;
    sub_1E3741EA0(v43, v76, &qword_1ECF2E7E0, &qword_1E42AC770);
    v53 = 0;
  }

  else
  {
    v52 = v76;
    v53 = 1;
  }

  __swift_storeEnumTagSinglePayload(v52, v53, 1, v79);
  v54 = v77;
  v55 = *(v77 + 16);
  v56 = v78;
  v55(v75, v23, v78);
  sub_1E3743538(v52, v80, &qword_1ECF2E7E8, &qword_1E42AC778);
  v57 = OUTLINED_FUNCTION_95_0();
  (v55)(v57);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E828, &qword_1E42AC7A8);
  OUTLINED_FUNCTION_131_5();
  OUTLINED_FUNCTION_43_11();
  sub_1E3743538(v58, v59, v60, v61);
  OUTLINED_FUNCTION_40_21();
  sub_1E325F6F0(v62, v63, v64);
  v65 = *(v54 + 8);
  v65(v23, v56);
  v66 = OUTLINED_FUNCTION_77_5();
  sub_1E325F6F0(v66, v67, v68);
  v69 = OUTLINED_FUNCTION_159();
  (v65)(v69);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3934660()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1;
  v4 = v3;
  OUTLINED_FUNCTION_173();
  sub_1E4201704();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_139();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E820, &qword_1E42AC7A0);
  OUTLINED_FUNCTION_17_2(v6);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_26_2();
  v8 = *(v2 + *(type metadata accessor for SportsPlayByPlayItemView(0) + 28));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E7F0, &qword_1E42AC780);
  OUTLINED_FUNCTION_2();
  (*(v9 + 16))(v0, v4);
  if (v8)
  {
    v10 = OUTLINED_FUNCTION_108_4();
    v11(v10);
    sub_1E4203E64();
    sub_1E42016D4();
    sub_1E42016E4();
  }

  else
  {
    sub_1E42016F4();
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E808, &qword_1E42AC798);
  v13 = OUTLINED_FUNCTION_94_6(v12);
  v14(v13);
  v15 = sub_1E42024D4();
  OUTLINED_FUNCTION_129_3(v15);
  v16 = OUTLINED_FUNCTION_11_6();
  sub_1E3741EA0(v16, v17, v18, v19);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3934850(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_21_5();
  a25 = v30;
  a26 = v31;
  v144 = v32;
  v151 = v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E7F0, &qword_1E42AC780);
  OUTLINED_FUNCTION_3_6(v34, &v152[16]);
  v139 = v35;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v37);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E838, &qword_1E42AC7B8);
  OUTLINED_FUNCTION_6_4(v38, &v152[13]);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v40);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E840, &qword_1E42AC7C0);
  OUTLINED_FUNCTION_6_4(v41, v153);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v43);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E848, &qword_1E42AC7C8);
  v45 = OUTLINED_FUNCTION_6_4(v44, &a15);
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v46);
  OUTLINED_FUNCTION_25_3();
  v48 = OUTLINED_FUNCTION_20(v47);
  v49 = type metadata accessor for SportsPlayByPlayItemViewData(v48);
  v50 = OUTLINED_FUNCTION_17_2(v49);
  MEMORY[0x1EEE9AC00](v50);
  OUTLINED_FUNCTION_9_3();
  OUTLINED_FUNCTION_17_3(v51);
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E850, &qword_1E42AC7D0);
  OUTLINED_FUNCTION_6_4(v52, &a10);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v53);
  OUTLINED_FUNCTION_44();
  v55 = OUTLINED_FUNCTION_20(v54);
  v56 = type metadata accessor for SportsPlayByPlayGroupChildView(v55);
  v57 = OUTLINED_FUNCTION_6_4(v56, &a11);
  MEMORY[0x1EEE9AC00](v57);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_74_1();
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E858, &qword_1E42AC7D8);
  OUTLINED_FUNCTION_3_6(v58, &a12);
  v138 = v59;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v60);
  OUTLINED_FUNCTION_128();
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E860, &qword_1E42AC7E0);
  OUTLINED_FUNCTION_6_4(v61, &a16);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v62);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v63);
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E868, &qword_1E42AC7E8);
  OUTLINED_FUNCTION_17_2(v64);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v65);
  OUTLINED_FUNCTION_8_4();
  v66 = type metadata accessor for SportsPlayGroupItemViewData.SportsPlayGroupItemType(0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v67);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_37_5();
  MEMORY[0x1EEE9AC00](v68);
  v70 = &v137 - v69;
  OUTLINED_FUNCTION_8();
  v72 = *(v71 + 160);
  v73 = v72();
  sub_1E39352D8(v73, v27);

  if (__swift_getEnumTagSinglePayload(v27, 1, v66) == 1)
  {
    sub_1E325F6F0(v27, &qword_1ECF2E868, &qword_1E42AC7E8);
    v74 = 1;
    v75 = v151;
  }

  else
  {
    v76 = OUTLINED_FUNCTION_95_0();
    v79 = sub_1E393C6D8(v76, v77, v78);
    (v72)(v79);
    v80 = OUTLINED_FUNCTION_159();
    sub_1E3935390(v80, v81);

    sub_1E393C67C(v70, v29, type metadata accessor for SportsPlayGroupItemViewData.SportsPlayGroupItemType);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      OUTLINED_FUNCTION_23_33();
      sub_1E393C6D8(v29, v143, v82);
      OUTLINED_FUNCTION_142_4();
      v83 = v144;
      sub_1E39342C8();
      OUTLINED_FUNCTION_75_5();
      v85 = *(v83 + v84);
      v86 = OBJC_IVAR____TtC8VideosUI22SportsPlayByPlayLayout_highlightedPlayItemLayout;
      OUTLINED_FUNCTION_5_0(v85 + OBJC_IVAR____TtC8VideosUI22SportsPlayByPlayLayout_highlightedPlayItemLayout, v154);
      v87 = (**(v85 + v86) + 744);
      v88 = *v87;

      v88(v89);
      OUTLINED_FUNCTION_35_2();
      if (!v87)
      {
        v90 = [objc_opt_self() clearColor];
      }

      v91 = v147;
      v92 = v141;
      v93 = sub_1E4203644();
      v94 = sub_1E4202734();
      OUTLINED_FUNCTION_155_0();
      v95(v92, v29, v140);
      OUTLINED_FUNCTION_141();
      v97 = v92 + v96;
      *v97 = v93;
      *(v97 + 8) = v94;
      OUTLINED_FUNCTION_8();
      v99 = *(v98 + 552);

      v99(v152, v100);

      v101 = 0.0;
      if ((v152[4] & 1) == 0)
      {
        v101 = OUTLINED_FUNCTION_86_3();
      }

      OUTLINED_FUNCTION_141();
      v102 = v142;
      v104 = (v142 + v103);
      v105 = *(sub_1E4201534() + 20);
      v106 = *MEMORY[0x1E697F468];
      sub_1E4201C44();
      OUTLINED_FUNCTION_2();
      (*(v107 + 104))(v104 + v105, v106);
      *v104 = v101;
      v104[1] = v101;
      *(v104 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF298B0, &unk_1E42AC0E0) + 36)) = 256;
      sub_1E3741EA0(v92, v102, &qword_1ECF2E838, &qword_1E42AC7B8);
      sub_1E4202734();
      sub_1E4202774();
      sub_1E4202774();
      sub_1E4202774();
      OUTLINED_FUNCTION_29();
      if (!v108)
      {
        sub_1E4202774();
      }

      sub_1E4200A54();
      OUTLINED_FUNCTION_3();
      OUTLINED_FUNCTION_133_4();
      sub_1E3741EA0(v109, v110, v111, v112);
      OUTLINED_FUNCTION_32_4(v105 + *(v149 + 36));
      OUTLINED_FUNCTION_19_1();
      sub_1E3741EA0(v113, v114, v115, v116);
      OUTLINED_FUNCTION_19_1();
      sub_1E3743538(v117, v118, v119, v120);
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_59_8();
      v123 = sub_1E393CB3C(v121, v122, &unk_1E42AC370);
      v153[0] = v145;
      v153[1] = v123;
      OUTLINED_FUNCTION_8_16();
      swift_getOpaqueTypeConformance2();
      sub_1E393CD58();
      sub_1E4201F44();
      OUTLINED_FUNCTION_21_1();
      sub_1E325F6F0(v124, v125, v126);
      OUTLINED_FUNCTION_22_25();
      sub_1E393B640();
    }

    else
    {
      memcpy(v152, v29, 0x81uLL);
      OUTLINED_FUNCTION_75_5();
      v128 = *(v144 + v127);
      *v26 = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E428, &qword_1E42AC180);
      OUTLINED_FUNCTION_125_2();
      KeyPath = swift_getKeyPath();
      v130 = v145;
      *(v26 + v145[5]) = KeyPath;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C18, &qword_1E42982F0);
      swift_storeEnumTagMultiPayload();
      v131 = v130[6];
      *(v26 + v131) = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C20, &qword_1E429F7D0);
      swift_storeEnumTagMultiPayload();
      memcpy(v26 + v130[7], v152, 0x81uLL);
      *(v26 + v130[8]) = v128;
      OUTLINED_FUNCTION_59_8();
      v134 = sub_1E393CB3C(v132, v133, &unk_1E42AC370);

      OUTLINED_FUNCTION_57();
      View.accessibilityIdentifier(key:location:)();
      sub_1E393B640();
      v135 = v138;
      v136 = v146;
      (*(v138 + 16))(v148, v28, v146);
      swift_storeEnumTagMultiPayload();
      v154[0] = v130;
      v154[1] = v134;
      OUTLINED_FUNCTION_8_16();
      swift_getOpaqueTypeConformance2();
      sub_1E393CD58();
      v91 = v147;
      OUTLINED_FUNCTION_57();
      sub_1E4201F44();
      (*(v135 + 8))(v28, v136);
    }

    sub_1E393B640();
    v75 = v151;
    sub_1E3741EA0(v91, v151, &qword_1ECF2E860, &qword_1E42AC7E0);
    v74 = 0;
  }

  __swift_storeEnumTagSinglePayload(v75, v74, 1, v150);
  OUTLINED_FUNCTION_20_0();
}

uint64_t sub_1E39352D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = type metadata accessor for SportsPlayGroupItemViewData.SportsPlayGroupItemType(0);
  v6 = v5;
  if (v4)
  {
    sub_1E393C67C(a1 + ((*(*(v5 - 8) + 80) + 32) & ~*(*(v5 - 8) + 80)), a2, type metadata accessor for SportsPlayGroupItemViewData.SportsPlayGroupItemType);
    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  return __swift_storeEnumTagSinglePayload(a2, v7, 1, v6);
}

uint64_t sub_1E3935390(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  v3 = *(a2 + 16);
  while (1)
  {
    if (v3 == v2)
    {
      return 0;
    }

    type metadata accessor for SportsPlayGroupItemViewData.SportsPlayGroupItemType(0);
    sub_1E393CB3C(&qword_1ECF2E890, type metadata accessor for SportsPlayGroupItemViewData.SportsPlayGroupItemType, &unk_1E42BA5F0);
    if (sub_1E4205E84())
    {
      break;
    }

    ++v2;
  }

  return v2;
}

void sub_1E39354AC()
{
  OUTLINED_FUNCTION_31_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E438, &qword_1E42AC190);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_9_12();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E440, &qword_1E42AC198);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_26_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E448, &qword_1E42AC1A0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_14_5();
  sub_1E42012F4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_73_5();
  sub_1E3746E10(v2);
  v7 = OUTLINED_FUNCTION_159();
  v9 = v8(v7);
  if (v9 == *MEMORY[0x1E697E6D0] || v9 == *MEMORY[0x1E697E6D8] || v9 == *MEMORY[0x1E697E6E0])
  {
    *v1 = sub_1E4201D54();
    *(v1 + 8) = 0;
    *(v1 + 16) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E468, &unk_1E42AC1B0);
    sub_1E39360C8();
    OUTLINED_FUNCTION_40_21();
    sub_1E3743538(v12, v13, v14, &qword_1E42AC1A0);
    OUTLINED_FUNCTION_87_2();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_1();
    sub_1E32752B0(v15, &qword_1ECF2E448, &qword_1E42AC1A0, v16);
    OUTLINED_FUNCTION_9_0();
    sub_1E32752B0(v17, v18, v19, v20);
    OUTLINED_FUNCTION_107_5();
    sub_1E325F6F0(v1, &qword_1ECF2E448, &qword_1E42AC1A0);
  }

  else
  {
    *v0 = sub_1E4201B84();
    *(v0 + 8) = 0;
    *(v0 + 16) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E450, &qword_1E42AC1A8);
    sub_1E39357D0();
    v21 = OUTLINED_FUNCTION_77_5();
    sub_1E3743538(v21, v22, v23, &qword_1E42AC190);
    OUTLINED_FUNCTION_87_2();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_1();
    sub_1E32752B0(v24, v25, v26, v27);
    OUTLINED_FUNCTION_9_0();
    sub_1E32752B0(v28, &qword_1ECF2E438, &qword_1E42AC190, v29);
    OUTLINED_FUNCTION_107_5();
    sub_1E325F6F0(v0, &qword_1ECF2E438, &qword_1E42AC190);
    v30 = OUTLINED_FUNCTION_159();
    v31(v30);
  }

  OUTLINED_FUNCTION_25_2();
}

void sub_1E39357D0()
{
  OUTLINED_FUNCTION_31_1();
  v37 = v2;
  v3 = sub_1E41FE1F4();
  v4 = OUTLINED_FUNCTION_17_2(v3);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_93_2();
  sub_1E41FE1B4();
  OUTLINED_FUNCTION_0_10();
  v33 = v6;
  v34 = v5;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_41();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E6D8, &qword_1E42AC690);
  OUTLINED_FUNCTION_0_10();
  v35 = v8;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_73_5();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E6E0, &qword_1E42AC698);
  OUTLINED_FUNCTION_0_10();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_2_5();
  v36 = v14;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_18_6();
  v32 = v17;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_25_3();
  v19 = OUTLINED_FUNCTION_138();
  type metadata accessor for SportsPlayByPlayItemView(v19);

  sub_1E41FE1E4();
  OUTLINED_FUNCTION_146_4();
  sub_1E41FE1C4();
  sub_1E3935BA4();
  (*(v33 + 8))(v0, v34);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2E470, &qword_1E42AC1C0);
  sub_1E393B558();
  OUTLINED_FUNCTION_24_26();
  OUTLINED_FUNCTION_16_8(v20, v21);
  OUTLINED_FUNCTION_41_0();
  OUTLINED_FUNCTION_150_3();
  View.accessibilityIdentifier(key:location:)();
  v22 = *(v35 + 8);
  v23 = OUTLINED_FUNCTION_160_1();
  v22(v23);
  type metadata accessor for SportsPlayByPlayItemViewData(0);
  sub_1E3935BA4();
  OUTLINED_FUNCTION_41_0();
  OUTLINED_FUNCTION_150_3();
  View.accessibilityIdentifier(key:location:)();
  v24 = OUTLINED_FUNCTION_160_1();
  v22(v24);
  v25 = OUTLINED_FUNCTION_115_1();
  v1(v25);
  v26 = OUTLINED_FUNCTION_113();
  v1(v26);
  v27 = OUTLINED_FUNCTION_87_2();
  v1(v27);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E6F0, &qword_1E42AC6A8);
  v29 = v37 + *(v28 + 48);
  *v29 = 0;
  *(v29 + 8) = 0;
  (v1)(v37 + *(v28 + 64), v36, v10);
  v30 = *(v12 + 8);
  v30(v32, v10);
  v31 = OUTLINED_FUNCTION_154_0();
  (v30)(v31);
  v30(v36, v10);
  v30(v7, v10);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3935BA4()
{
  OUTLINED_FUNCTION_31_1();
  v41 = v2;
  sub_1E4201CF4();
  OUTLINED_FUNCTION_0_10();
  v51 = v4;
  v52 = v3;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_9_3();
  v42 = v5;
  OUTLINED_FUNCTION_138();
  v50 = sub_1E4201324();
  OUTLINED_FUNCTION_0_10();
  v48 = v6;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_9_3();
  v40 = v8;
  OUTLINED_FUNCTION_138();
  v46 = sub_1E42012F4();
  OUTLINED_FUNCTION_0_10();
  v43 = v9;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_9_12();
  v11 = sub_1E41FE1B4();
  OUTLINED_FUNCTION_0_10();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_74_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C2B8, &unk_1E42AA120);
  OUTLINED_FUNCTION_0_10();
  v44 = v16;
  v45 = v15;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_44();
  v53 = v18;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E470, &qword_1E42AC1C0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_44();
  v49 = v20;
  v21 = objc_opt_self();
  type metadata accessor for SportsPlayByPlayItemView(0);
  sub_1E375412C();
  OUTLINED_FUNCTION_2_1();
  v23 = (*(v22 + 2408))();

  v38 = [v21 vui:v23 fontFromTextLayout:?];

  (*(v13 + 16))(v0, v41, v11);
  v24 = sub_1E4202C34();
  v39 = v25;
  LOBYTE(v23) = v26 & 1;
  v27 = sub_1E375412C();
  sub_1E3746E10(v1);
  sub_1E374709C(v40);
  v28 = MEMORY[0x1E6981148];
  v29 = MEMORY[0x1E6981138];
  OUTLINED_FUNCTION_113();
  v30 = j__OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_113();
  sub_1E37B5FBC(v31);
  OUTLINED_FUNCTION_113();
  j__OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_92_5();
  sub_1E37B6028(v27, v1, v40, v30, v42, v32, v28, v29, v53);

  (*(v51 + 8))(v42, v52);
  (*(v48 + 8))(v40, v50);
  (*(v43 + 8))(v1, v46);
  sub_1E37434B8(v24, v39, v23);

  if (v38)
  {
    v33 = v38;
    v34 = sub_1E405EEA0();
  }

  else
  {
    v34 = 0;
  }

  KeyPath = swift_getKeyPath();
  (*(v44 + 32))(v49, v53, v45);
  v36 = (v49 + *(v47 + 36));
  *v36 = KeyPath;
  v36[1] = v34;
  sub_1E375412C();
  OUTLINED_FUNCTION_2_1();
  (*(v37 + 672))();
  OUTLINED_FUNCTION_35_2();
  sub_1E393B558();
  sub_1E39B9138();

  sub_1E325F6F0(v49, &qword_1ECF2E470, &qword_1E42AC1C0);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E39360C8()
{
  OUTLINED_FUNCTION_31_1();
  v36 = v2;
  v3 = sub_1E41FE1F4();
  v4 = OUTLINED_FUNCTION_17_2(v3);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_93_2();
  sub_1E41FE1B4();
  OUTLINED_FUNCTION_0_10();
  v32 = v6;
  v33 = v5;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_139();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E6D8, &qword_1E42AC690);
  OUTLINED_FUNCTION_0_10();
  v34 = v8;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_14_5();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E6E0, &qword_1E42AC698);
  OUTLINED_FUNCTION_0_10();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_2_5();
  v35 = v14;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_25_3();
  v31 = v18;
  v19 = OUTLINED_FUNCTION_138();
  type metadata accessor for SportsPlayByPlayItemView(v19);

  sub_1E41FE1E4();
  OUTLINED_FUNCTION_146_4();
  sub_1E41FE1C4();
  sub_1E3935BA4();
  (*(v32 + 8))(v0, v33);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2E470, &qword_1E42AC1C0);
  sub_1E393B558();
  OUTLINED_FUNCTION_24_26();
  OUTLINED_FUNCTION_16_8(v20, v21);
  OUTLINED_FUNCTION_41_0();
  OUTLINED_FUNCTION_150_3();
  View.accessibilityIdentifier(key:location:)();
  v22 = *(v34 + 8);
  v23 = OUTLINED_FUNCTION_88();
  v22(v23);
  type metadata accessor for SportsPlayByPlayItemViewData(0);
  sub_1E3935BA4();
  OUTLINED_FUNCTION_41_0();
  OUTLINED_FUNCTION_150_3();
  View.accessibilityIdentifier(key:location:)();
  v24 = OUTLINED_FUNCTION_88();
  v22(v24);
  v25 = OUTLINED_FUNCTION_115_1();
  v1(v25);
  v26 = OUTLINED_FUNCTION_95_0();
  v1(v26);
  (v1)(v36, v7, v10);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E6E8, &qword_1E42AC6A0);
  (v1)(v36 + *(v27 + 48), v35, v10);
  v28 = *(v12 + 8);
  v29 = OUTLINED_FUNCTION_109_2();
  v28(v29);
  (v28)(v31, v10);
  v30 = OUTLINED_FUNCTION_53();
  v28(v30);
  (v28)(v7, v10);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3936488()
{
  OUTLINED_FUNCTION_21_5();
  v3 = v2;
  v86 = v4;
  v5 = sub_1E4203AF4();
  v6 = OUTLINED_FUNCTION_17_2(v5);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_139();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E480, &qword_1E42AC200);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_73_5();
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E488, &qword_1E42AC208);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_44();
  v79 = v10;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E490, &qword_1E42AC210);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_44();
  v85 = v12;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E498, &qword_1E42AC218);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_44();
  v83 = v14;
  v15 = OUTLINED_FUNCTION_138();
  type metadata accessor for SportsPlayByPlayItemView(v15);
  sub_1E375417C();
  OUTLINED_FUNCTION_30();
  v17 = (*(v16 + 200))();
  v19 = v18;

  if (v19)
  {
    v20 = 0;
  }

  else
  {
    v20 = v17;
  }

  sub_1E4203DA4();
  OUTLINED_FUNCTION_59();
  OUTLINED_FUNCTION_123_4(v20);
  *&v87[6] = v88;
  *&v87[22] = v89;
  *&v87[38] = v90;
  v21 = v3;

  sub_1E375417C();
  OUTLINED_FUNCTION_2_1();
  (*(v22 + 552))(v91);

  v23 = 0.0;
  if ((v92 & 1) == 0)
  {
    v23 = OUTLINED_FUNCTION_86_3();
  }

  v24 = (v1 + *(v7 + 36));
  v25 = *(sub_1E4201534() + 20);
  v26 = *MEMORY[0x1E697F468];
  v27 = sub_1E4201C44();
  OUTLINED_FUNCTION_2();
  v29 = *(v28 + 104);
  v29(v24 + v25, v26, v27);
  *v24 = v23;
  v24[1] = v23;
  *(v24 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF298B0, &unk_1E42AC0E0) + 36)) = 256;
  *v1 = v21;
  *(v1 + 8) = 256;
  *(v1 + 10) = *v87;
  *(v1 + 26) = *&v87[16];
  *(v1 + 42) = *&v87[32];
  *(v1 + 56) = *(&v90 + 1);
  v29(v0, v26, v27);
  sub_1E4203704();
  v30 = sub_1E4203734();

  sub_1E4200BF4();
  v31 = v79 + *(v77 + 36);
  v32 = OUTLINED_FUNCTION_67_0();
  sub_1E393C67C(v32, v33, v34);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E4A0, &unk_1E42AC220);
  OUTLINED_FUNCTION_134_3();
  v35 = v94;
  *v36 = v93;
  *(v36 + 16) = v35;
  *(v36 + 32) = v95;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E4A8, &unk_1E42F3430);
  *(v31 + *(v37 + 52)) = v30;
  *(v31 + *(v37 + 56)) = 256;
  v38 = sub_1E4203DA4();
  v40 = v39;
  sub_1E393B640();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E4B0, &unk_1E42AC230);
  OUTLINED_FUNCTION_134_3();
  *v41 = v38;
  v41[1] = v40;
  v42 = sub_1E4203DA4();
  v44 = v43;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E4B8, &qword_1E42F3440);
  OUTLINED_FUNCTION_134_3();
  *v45 = v42;
  v45[1] = v44;
  v46 = OUTLINED_FUNCTION_159();
  sub_1E3741EA0(v46, v47, v48, v49);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BA8, &unk_1E42980C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E4299720;
  v51 = sub_1E4202764();
  *(inited + 32) = v51;
  *(inited + 33) = sub_1E4202784();
  v52 = sub_1E4202774();
  sub_1E4202774();
  if (sub_1E4202774() != v51)
  {
    v52 = sub_1E4202774();
  }

  sub_1E4202774();
  sub_1E4202774();
  OUTLINED_FUNCTION_29();
  if (!v53)
  {
    v52 = sub_1E4202774();
  }

  sub_1E375417C();
  OUTLINED_FUNCTION_30();
  (*(v54 + 176))(v96);

  v55 = 0uLL;
  v56 = 0uLL;
  if ((v97 & 1) == 0)
  {
    v57 = OUTLINED_FUNCTION_6();
    sub_1E3952BE0(v57, v58, v59, v60);
    sub_1E4200A54();
    *(&v56 + 1) = v61;
    v55.n128_u64[1] = v62;
  }

  v76 = v56;
  v81 = v55;
  sub_1E3741EA0(v79, v85, &qword_1ECF2E488, &qword_1E42AC208);
  v63 = v85 + *(v78 + 36);
  *v63 = v52;
  *(v63 + 24) = v76;
  OUTLINED_FUNCTION_105_4(v63, v81);
  v64 = swift_initStackObject();
  *(v64 + 16) = xmmword_1E4299720;
  v65 = sub_1E4202744();
  *(v64 + 32) = v65;
  *(v64 + 33) = sub_1E4202754();
  v66 = sub_1E4202774();
  sub_1E4202774();
  if (sub_1E4202774() != v65)
  {
    v66 = sub_1E4202774();
  }

  sub_1E4202774();
  sub_1E4202774();
  OUTLINED_FUNCTION_29();
  if (!v53)
  {
    v66 = sub_1E4202774();
  }

  sub_1E375417C();
  OUTLINED_FUNCTION_30();
  (*(v67 + 176))(v98);

  v68 = 0uLL;
  v69 = 0uLL;
  if ((v99 & 1) == 0)
  {
    v70 = OUTLINED_FUNCTION_6();
    sub_1E3952BD8(v70, v71, v72);
    sub_1E4200A54();
    *(&v69 + 1) = v73;
    v68.n128_u64[1] = v74;
  }

  v80 = v69;
  v82 = v68;
  sub_1E3741EA0(v85, v83, &qword_1ECF2E490, &qword_1E42AC210);
  v75 = v83 + *(v84 + 36);
  *v75 = v66;
  *(v75 + 24) = v80;
  OUTLINED_FUNCTION_105_4(v75, v82);
  sub_1E3741EA0(v83, v86, &qword_1ECF2E498, &qword_1E42AC218);
  *(v86 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E4C0, &qword_1E42AC240) + 36)) = 1;
  OUTLINED_FUNCTION_20_0();
}

void sub_1E3936BCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_9_4();
  a23 = v28;
  a24 = v29;
  v150 = v30;
  v147 = v31;
  v33 = v32;
  v160 = v34;
  v35 = sub_1E42012F4();
  v36 = OUTLINED_FUNCTION_3_6(v35, &a9);
  v38 = v37;
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_128();
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E6F8, &qword_1E42AC6B0);
  OUTLINED_FUNCTION_6_4(v39, &a10);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_74_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E700, &qword_1E42AC6B8);
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v42);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E708, &qword_1E42AC6C0);
  v44 = OUTLINED_FUNCTION_6_4(v43, &a20);
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_2_5();
  v159 = v45;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v46);
  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_25_3();
  v161 = v48;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E4C0, &qword_1E42AC240);
  v50 = OUTLINED_FUNCTION_17_2(v49);
  MEMORY[0x1EEE9AC00](v50);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v51);
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E710, &qword_1E42AC6C8);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v53);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v54);
  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v55);
  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v56);
  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v57);
  OUTLINED_FUNCTION_37_5();
  MEMORY[0x1EEE9AC00](v58);
  OUTLINED_FUNCTION_19_7();
  sub_1E3933638(sub_1E4071808);
  sub_1E3936488();

  v142 = type metadata accessor for SportsPlayByPlayItemView(0);
  HIDWORD(v154) = *(v33 + *(v142 + 32) + 32);
  if (sub_1E40781E4(SBYTE4(v154), 1))
  {
    v59 = 1.0;
  }

  else
  {
    v59 = 0.0;
  }

  v60 = OUTLINED_FUNCTION_39_9();
  sub_1E3741EA0(v60, v61, &qword_1ECF2E4C0, &qword_1E42AC240);
  *(v27 + *(v52 + 36)) = v59;
  sub_1E3741EA0(v27, v25, &qword_1ECF2E710, &qword_1E42AC6C8);
  v62 = sub_1E4201D54();
  sub_1E3746E10(v26);
  v63 = sub_1E42012B4();
  v64 = *(v38 + 8);
  v65 = v144;
  v64(v26);
  *v24 = v62;
  *(v24 + 8) = 0;
  *(v24 + 16) = v63 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E718, &qword_1E42AC6D0);
  OUTLINED_FUNCTION_139_1();
  sub_1E39373FC(v33, v147, v150, v66, v67, v68, v69, v70, v140, v141, v142, v143, v144, v145, v147, v149, v150, v152, v153, v154);
  sub_1E3746E10(v26);
  v71 = sub_1E42012B4();
  (v64)(v26, v65);
  OUTLINED_FUNCTION_1();
  v74 = sub_1E32752B0(v72, &qword_1ECF2E6F8, &qword_1E42AC6B0, v73);
  v75 = sub_1E3B6C5B4();
  v139 = v76 & 1;
  v137 = v75;
  v138 = v77;
  v78 = OUTLINED_FUNCTION_27_24();
  View.conditionalFrame(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:condition:)(v78, v79, v80, v81, v82, v83, 0, 1, 0, 1, 0x7FF0000000000000, 0, v137, v138, v139, v71 & 1, v146, v74);
  sub_1E325F6F0(v24, &qword_1ECF2E6F8, &qword_1E42AC6B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BA8, &unk_1E42980C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E4299720;
  LOBYTE(v65) = sub_1E4202744();
  *(inited + 32) = v65;
  *(inited + 33) = sub_1E4202754();
  v85 = sub_1E4202774();
  sub_1E4202774();
  if (sub_1E4202774() != v65)
  {
    v85 = sub_1E4202774();
  }

  sub_1E4202774();
  sub_1E4202774();
  OUTLINED_FUNCTION_29();
  if (!v86)
  {
    v85 = sub_1E4202774();
  }

  sub_1E375397C();
  OUTLINED_FUNCTION_30();
  (*(v87 + 176))(v162);
  OUTLINED_FUNCTION_122_1();
  v88 = 0uLL;
  v89 = 0uLL;
  if ((v163 & 1) == 0)
  {
    v90 = OUTLINED_FUNCTION_6();
    sub_1E3952BD8(v90, v91, v92);
    sub_1E4200A54();
    *(&v89 + 1) = v93;
    v88.n128_u64[1] = v94;
  }

  v148 = v89;
  v151 = v88;
  OUTLINED_FUNCTION_155_0();
  v95 = OUTLINED_FUNCTION_58_1();
  v96(v95);
  OUTLINED_FUNCTION_141();
  v98 = v157 + v97;
  *v98 = v85;
  *(v98 + 24) = v148;
  OUTLINED_FUNCTION_105_4(v98, v151);
  OUTLINED_FUNCTION_146_4();
  v100 = v99;
  sub_1E3741EA0(v101, v102, v103, v99);
  sub_1E3933638(sub_1E407181C);
  sub_1E3936488();

  if (sub_1E40781E4(v155, 2))
  {
    v104 = 1.0;
  }

  else
  {
    v104 = 0.0;
  }

  sub_1E3741EA0(v158, v156, &qword_1ECF2E4C0, &qword_1E42AC240);
  OUTLINED_FUNCTION_141();
  *(v156 + v105) = v104;
  OUTLINED_FUNCTION_21_1();
  sub_1E3741EA0(v106, v107, v108, &qword_1E42AC6C8);
  OUTLINED_FUNCTION_18_5();
  sub_1E3743538(v109, v110, v111, v112);
  sub_1E3743538(v161, v159, &qword_1ECF2E708, v100);
  OUTLINED_FUNCTION_18_5();
  sub_1E3743538(v113, v114, v115, v116);
  OUTLINED_FUNCTION_18_5();
  sub_1E3743538(v117, v118, v119, v120);
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E728, &qword_1E42AC6D8);
  sub_1E3743538(v159, v160 + *(v121 + 48), &qword_1ECF2E708, v100);
  OUTLINED_FUNCTION_18_5();
  sub_1E3743538(v122, v123, v124, v125);
  v126 = OUTLINED_FUNCTION_32_0();
  sub_1E325F6F0(v126, v127, &qword_1E42AC6C8);
  sub_1E325F6F0(v161, &qword_1ECF2E708, v100);
  OUTLINED_FUNCTION_82();
  sub_1E325F6F0(v128, v129, v130);
  OUTLINED_FUNCTION_82();
  sub_1E325F6F0(v131, v132, v133);
  sub_1E325F6F0(v159, &qword_1ECF2E708, v100);
  OUTLINED_FUNCTION_82();
  sub_1E325F6F0(v134, v135, v136);
  OUTLINED_FUNCTION_10_3();
}

void sub_1E39373FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_31_1();
  a19 = v22;
  a20 = v23;
  v180 = v24;
  v26 = v25;
  v28 = v27;
  v192 = v29;
  v189 = sub_1E4205BF4();
  OUTLINED_FUNCTION_0_10();
  v187 = v30;
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_9_3();
  OUTLINED_FUNCTION_17_3(v32);
  v186 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E730, &qword_1E42AC6E0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v34);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E738, &qword_1E42AC6E8);
  OUTLINED_FUNCTION_0_10();
  v190 = v36;
  v191 = v35;
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_2_5();
  v201 = v37;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_25_3();
  v200 = v39;
  OUTLINED_FUNCTION_138();
  v193 = sub_1E4201CF4();
  OUTLINED_FUNCTION_0_10();
  v172 = v40;
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_9_3();
  OUTLINED_FUNCTION_20(v42);
  v43 = sub_1E4201324();
  v44 = OUTLINED_FUNCTION_3_6(v43, &v199);
  v165 = v45;
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_9_3();
  OUTLINED_FUNCTION_20(v46);
  v195 = sub_1E42012F4();
  OUTLINED_FUNCTION_0_10();
  v202 = v47;
  MEMORY[0x1EEE9AC00](v48);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_9_12();
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C2B8, &unk_1E42AA120);
  OUTLINED_FUNCTION_3_6(v49, &v198);
  v164 = v50;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v51);
  OUTLINED_FUNCTION_44();
  v194 = v52;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E470, &qword_1E42AC1C0);
  OUTLINED_FUNCTION_6_4(v53, &v202);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v54);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v55);
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E6D8, &qword_1E42AC690);
  OUTLINED_FUNCTION_3_6(v56, &v200);
  v166 = v57;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v58);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v59);
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E740, &qword_1E42AC6F0);
  OUTLINED_FUNCTION_6_4(v60, &v206);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v61);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v62);
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E748, &qword_1E42AC6F8);
  OUTLINED_FUNCTION_3_6(v63, &a11);
  v176 = v64;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v65);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v66);
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E750, &qword_1E42AC700);
  OUTLINED_FUNCTION_3_6(v67, &a12);
  v177 = v68;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v69);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v70);
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E758, &qword_1E42AC708);
  v72 = OUTLINED_FUNCTION_3_6(v71, &a15);
  v181 = v73;
  MEMORY[0x1EEE9AC00](v72);
  OUTLINED_FUNCTION_2_5();
  v199 = v74;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v75);
  OUTLINED_FUNCTION_25_3();
  v198 = v76;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E760, &qword_1E42AC710);
  v78 = OUTLINED_FUNCTION_17_2(v77);
  MEMORY[0x1EEE9AC00](v78);
  OUTLINED_FUNCTION_2_5();
  v197 = v79;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v80);
  v82 = &v160 - v81;
  *v82 = sub_1E4201B84();
  *(v82 + 1) = 0;
  v82[16] = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E768, &qword_1E42AC718);
  v196 = v82;
  OUTLINED_FUNCTION_11_6();
  sub_1E3938444();
  v83 = *(v26 + 40);
  v84 = *(v26 + 48);
  v188 = v26;
  v203 = v83;
  v204 = v84;
  v88 = sub_1E32822E0(v85, v86, v87);

  v161 = sub_1E4202C44();
  v90 = v89;
  OUTLINED_FUNCTION_110_4(v161, v89, v91, v92, &v190);
  v162 = *(v28 + *(type metadata accessor for SportsPlayByPlayItemView(0) + 24));
  sub_1E3753CC0();
  sub_1E3746E10(v20);
  v183 = v28;
  v93 = v163;
  sub_1E374709C(v163);
  v94 = MEMORY[0x1E6981148];
  v95 = MEMORY[0x1E6981138];
  OUTLINED_FUNCTION_109_2();
  v96 = j__OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_153();
  OUTLINED_FUNCTION_109_2();
  sub_1E37B5FBC(v97);
  OUTLINED_FUNCTION_109_2();
  j__OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_92_5();
  v98 = OUTLINED_FUNCTION_58_1();
  sub_1E37B6028(v98, v99, v93, v96, v88, v100, v94, v95, v101);

  OUTLINED_FUNCTION_15_5();
  v102(v88, v193);
  OUTLINED_FUNCTION_15_5();
  v103(v93, v168);
  v104 = *(v202 + 8);
  v105 = v20;
  v202 += 8;
  v193 = v104;
  v104(v20);
  sub_1E37434B8(v161, v90, v21);

  v106 = v180;
  if (v180)
  {
    v106 = sub_1E405EEA0();
  }

  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_155_0();
  v108 = v170;
  v109(v170, v194, v167);
  v110 = (v108 + *(v171 + 36));
  *v110 = KeyPath;
  v110[1] = v106;
  sub_1E3753CC0();
  OUTLINED_FUNCTION_2_1();
  (*(v111 + 672))();
  OUTLINED_FUNCTION_35_2();
  sub_1E393B558();
  OUTLINED_FUNCTION_153();
  OUTLINED_FUNCTION_27_0();
  sub_1E39B9138();

  sub_1E325F6F0(v108, &qword_1ECF2E470, &qword_1E42AC1C0);
  OUTLINED_FUNCTION_155_0();
  v112 = v173;
  v113(v173, v88, v169);
  v114 = v174;
  *(v112 + *(v174 + 36)) = 256;
  v115 = sub_1E4203D44();
  v117 = v116;
  sub_1E3746E10(v105);
  v118 = sub_1E42012B4();
  v119 = OUTLINED_FUNCTION_109_2();
  v193(v119);
  v120 = sub_1E393C7F0();
  OUTLINED_FUNCTION_142_4();
  v121 = OUTLINED_FUNCTION_27_24();
  View.conditionalFrame(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:condition:)(v121, v122, v123, v124, v125, v126, 0, 1, 0, 1, 0x7FF0000000000000, 0, v115, v117, 0, v118 & 1, v114, v120);
  v127 = sub_1E325F6F0(v112, &qword_1ECF2E740, &qword_1E42AC6F0);
  MEMORY[0x1EEE9AC00](v127);
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E778, &qword_1E42AC720);
  v203 = v114;
  v204 = v120;
  OUTLINED_FUNCTION_5_71();
  v131 = OUTLINED_FUNCTION_121_2(v129, v130);
  v132 = sub_1E393C8C0();
  v133 = v175;
  v134 = v178;
  sub_1E3E35D1C(v128, v175);
  OUTLINED_FUNCTION_15_5();
  v135 = OUTLINED_FUNCTION_32_12();
  v136(v135);
  v203 = v134;
  v204 = v128;
  v205 = v131;
  v206 = v132;
  OUTLINED_FUNCTION_60_9();
  v137 = v198;
  OUTLINED_FUNCTION_41_0();
  v138 = v179;
  View.accessibilityIdentifier(key:location:)();
  OUTLINED_FUNCTION_15_5();
  v139(v133, v138);
  sub_1E3746E10(v105);
  LODWORD(v194) = sub_1E42012B4();
  (v193)(v105, v195);
  v140 = v185;
  sub_1E39354AC();
  *(v140 + *(v186 + 36)) = 0x3FF0000000000000;
  type metadata accessor for SportsPlayByPlayItemViewData(0);
  v141 = v187;
  v142 = v184;
  v143 = v189;
  (*(v187 + 104))(v184, *MEMORY[0x1E69D3D88], v189);
  sub_1E3938364();
  (*(v141 + 8))(v142, v143);
  sub_1E393CA84();
  v144 = v200;
  OUTLINED_FUNCTION_41_0();
  View.accessibilityIdentifier(key:location:)();
  sub_1E325F6F0(v140, &qword_1ECF2E730, &qword_1E42AC6E0);
  v145 = v197;
  sub_1E3743538(v196, v197, &qword_1ECF2E760, &qword_1E42AC710);
  v146 = v181;
  v147 = *(v181 + 16);
  v148 = v199;
  v149 = v182;
  v147(v199, v137, v182);
  v150 = v190;
  v202 = *(v190 + 16);
  v151 = v144;
  v152 = v191;
  (v202)(v201, v151, v191);
  v153 = v192;
  sub_1E3743538(v145, v192, &qword_1ECF2E760, &qword_1E42AC710);
  v154 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E7B0, &qword_1E42AC740);
  v147(v153 + v154[12], v148, v149);
  v155 = v153 + v154[16];
  *v155 = 0;
  *(v155 + 8) = v194 & 1;
  v156 = v153 + v154[20];
  v157 = v201;
  (v202)(v156, v201, v152);
  v158 = *(v150 + 8);
  v158(v200, v152);
  v159 = *(v146 + 8);
  v159(v198, v149);
  sub_1E325F6F0(v196, &qword_1ECF2E760, &qword_1E42AC710);
  v158(v157, v152);
  v159(v199, v149);
  sub_1E325F6F0(v197, &qword_1ECF2E760, &qword_1E42AC710);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3938120()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E790, &unk_1E42AC728);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_26_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E7B8, &qword_1E42AC748);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_139();
  if (*(v2 + *(type metadata accessor for SportsPlayByPlayItemView(0) + 28)))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E748, &qword_1E42AC6F8);
    OUTLINED_FUNCTION_2();
    v8 = OUTLINED_FUNCTION_35_5();
    v9(v8);
    OUTLINED_FUNCTION_58_1();
    swift_storeEnumTagMultiPayload();
    sub_1E393C990();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2E740, &qword_1E42AC6F0);
    sub_1E393C7F0();
    OUTLINED_FUNCTION_5_71();
    OUTLINED_FUNCTION_16_8(v10, v11);
    OUTLINED_FUNCTION_67_0();
    sub_1E4201F44();
  }

  else
  {
    v12 = sub_1E3B16518();
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E748, &qword_1E42AC6F8);
    OUTLINED_FUNCTION_2();
    (*(v14 + 16))(v0, v4, v13);
    *(v0 + *(v5 + 36)) = v12;
    v15 = OUTLINED_FUNCTION_74();
    sub_1E3743538(v15, v16, &qword_1ECF2E790, &unk_1E42AC728);
    OUTLINED_FUNCTION_58_1();
    swift_storeEnumTagMultiPayload();
    sub_1E393C990();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2E740, &qword_1E42AC6F0);
    sub_1E393C7F0();
    OUTLINED_FUNCTION_5_71();
    OUTLINED_FUNCTION_16_8(v17, v18);
    OUTLINED_FUNCTION_67_0();
    sub_1E4201F44();
    OUTLINED_FUNCTION_146_4();
    sub_1E325F6F0(v19, v20, v21);
  }

  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3938364()
{
  sub_1E4205BF4();
  sub_1E393CB3C(&qword_1ECF2B4F8, MEMORY[0x1E69D3D90], MEMORY[0x1E69D3DA0]);
  sub_1E4206254();
  sub_1E4206254();
  if (v5 == v3 && v6 == v4)
  {
    v1 = 1;
  }

  else
  {
    v1 = sub_1E42079A4();
  }

  return v1 & 1;
}

void sub_1E3938444()
{
  OUTLINED_FUNCTION_31_1();
  v114 = v5;
  v7 = v6;
  v9 = v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E7C0, &unk_1E42AC750);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_93_2();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E7C8, &unk_1E42F36F0);
  v13 = OUTLINED_FUNCTION_17_2(v12);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_2_5();
  v105 = v14;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_25_3();
  v104 = v16;
  OUTLINED_FUNCTION_138();
  v109 = sub_1E4201CF4();
  OUTLINED_FUNCTION_0_10();
  v113 = v17;
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_35_3();
  v108 = sub_1E4201324();
  OUTLINED_FUNCTION_0_10();
  v112 = v19;
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_73_5();
  v106 = sub_1E42012F4();
  OUTLINED_FUNCTION_0_10();
  v99 = v21;
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_74_1();
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C2B8, &unk_1E42AA120);
  OUTLINED_FUNCTION_0_10();
  v111 = v23;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_26_2();
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E7D0, &qword_1E42AC760);
  OUTLINED_FUNCTION_0_10();
  v103 = v25;
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_2_5();
  v102 = v27;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_25_3();
  v110 = v29;
  v30 = OUTLINED_FUNCTION_138();
  if (!*(v7 + *(type metadata accessor for SportsPlayByPlayItemView(v30) + 28)) || !*(v114 + 80))
  {
LABEL_5:
    OUTLINED_FUNCTION_32_2();
    OUTLINED_FUNCTION_25_2();

    __swift_storeEnumTagSinglePayload(v37, v38, v39, v40);
    return;
  }

  v96 = v3;
  v97 = v10;
  v98 = v9;
  v31 = (v114 + *(type metadata accessor for SportsPlayByPlayItemViewData(0) + 56));
  v33 = *v31;
  v32 = v31[1];

  v34 = sub_1E41494A8(v33, v32);
  if (v34)
  {

    goto LABEL_5;
  }

  sub_1E32822E0(v34, v35, v36);
  v94 = sub_1E4202C44();
  v92 = v42;
  v90 = v43 & 1;
  sub_1E3753FDC();
  sub_1E3746E10(v0);
  sub_1E374709C(v4);
  v44 = MEMORY[0x1E6981148];
  v45 = MEMORY[0x1E6981138];
  OUTLINED_FUNCTION_88();
  v46 = j__OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_88();
  sub_1E37B5FBC(v47);
  OUTLINED_FUNCTION_88();
  j__OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_92_5();
  v48 = OUTLINED_FUNCTION_148_3();
  sub_1E37B6028(v48, v49, v50, v46, v2, v51, v44, v45, v52);

  (*(v113 + 8))(v2, v109);
  (*(v112 + 8))(v4, v108);
  v100 = *(v99 + 8);
  v100(v0, v106);
  sub_1E37434B8(v94, v92, v90);

  OUTLINED_FUNCTION_20_43();
  OUTLINED_FUNCTION_121_2(v53, v54);
  OUTLINED_FUNCTION_41_0();
  View.accessibilityIdentifier(key:location:)();
  v95 = *(v111 + 8);
  v95(v1, v107);
  if (*(v114 + 64))
  {

    v93 = sub_1E4202C44();
    v91 = v55;
    v89 = v56 & 1;
    sub_1E3753FDC();
    sub_1E3746E10(v0);
    sub_1E374709C(v4);
    v57 = MEMORY[0x1E6981148];
    v58 = MEMORY[0x1E6981138];
    OUTLINED_FUNCTION_39_9();
    v59 = j__OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_39_9();
    sub_1E37B5FBC(v60);
    OUTLINED_FUNCTION_39_9();
    j__OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_92_5();
    v61 = OUTLINED_FUNCTION_148_3();
    sub_1E37B6028(v61, v62, v63, v59, v2, v64, v57, v58, v65);

    OUTLINED_FUNCTION_89_0();
    v66();
    OUTLINED_FUNCTION_113_0();
    v67();
    v100(v0, v106);
    sub_1E37434B8(v93, v91, v89);

    v68 = v102;
    OUTLINED_FUNCTION_41_0();
    View.accessibilityIdentifier(key:location:)();
    v69 = OUTLINED_FUNCTION_11_6();
    (v95)(v69);
    v71 = v103;
    v70 = v104;
    v72 = v101;
    (*(v103 + 32))(v104, v102, v101);
    v73 = 0;
  }

  else
  {
    v73 = 1;
    v71 = v103;
    v70 = v104;
    v72 = v101;
    v68 = v102;
  }

  __swift_storeEnumTagSinglePayload(v70, v73, 1, v72);
  v74 = *(v71 + 16);
  v74(v68, v110, v72);
  sub_1E3743538(v70, v105, &qword_1ECF2E7C8, &unk_1E42F36F0);
  v75 = OUTLINED_FUNCTION_95_0();
  (v74)(v75);
  v76 = v96 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E7D8, &qword_1E42AC768) + 48);
  *v76 = 0;
  *(v76 + 8) = 1;
  OUTLINED_FUNCTION_131_5();
  OUTLINED_FUNCTION_43_11();
  sub_1E3743538(v77, v78, v79, v80);
  OUTLINED_FUNCTION_40_21();
  sub_1E325F6F0(v81, v82, v83);
  v84 = *(v71 + 8);
  v84(v110, v72);
  v85 = OUTLINED_FUNCTION_77_5();
  sub_1E325F6F0(v85, v86, v87);
  v88 = OUTLINED_FUNCTION_160_1();
  (v84)(v88);
  sub_1E3741EA0(v96, v98, &qword_1ECF2E7C0, &unk_1E42AC750);
  __swift_storeEnumTagSinglePayload(v98, 0, 1, v97);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3938CBC(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E5B8, &qword_1E42AC570);
  OUTLINED_FUNCTION_2();
  v6 = OUTLINED_FUNCTION_16_0();
  v7(v6);
  *(a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E5C0, &qword_1E42AC578) + 36)) = a2;
  sub_1E4203F64();
  v9 = v8;
  v11 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E5C8, &qword_1E42AC580);
  OUTLINED_FUNCTION_134_3();
  *v12 = a3;
  *(v12 + 8) = a3;
  *(v12 + 16) = v9;
  *(v12 + 24) = v11;
}

uint64_t sub_1E3938DC8@<X0>(uint64_t *a2@<X8>)
{
  *a2 = swift_getKeyPath();
  v2 = OUTLINED_FUNCTION_16_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_40_3();

  return swift_storeEnumTagMultiPayload();
}

void sub_1E3939300(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_9_4();
  a23 = v27;
  a24 = v32;
  v34 = v33;
  v113 = v35;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E670, &qword_1E42AC620);
  OUTLINED_FUNCTION_17_2(v36);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_14_5();
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E678, &qword_1E42AC628);
  v39 = OUTLINED_FUNCTION_6_4(v38, &a14);
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_25_3();
  OUTLINED_FUNCTION_17_3(v42);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E680, &qword_1E42AC630);
  OUTLINED_FUNCTION_17_2(v43);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_74_1();
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E688, &qword_1E42AC638);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v46);
  OUTLINED_FUNCTION_26_2();
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E690, &qword_1E42AC640);
  v48 = OUTLINED_FUNCTION_6_4(v47, v118);
  MEMORY[0x1EEE9AC00](v48);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v49);
  v51 = (v102 - v50);
  MEMORY[0x1EEE9AC00](v52);
  OUTLINED_FUNCTION_25_3();
  v54 = OUTLINED_FUNCTION_20(v53);
  v55 = type metadata accessor for SportsPlayGroupCellDivider(v54);
  v56 = OUTLINED_FUNCTION_17_2(v55);
  MEMORY[0x1EEE9AC00](v56);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v57);
  v59 = (v102 - v58);
  OUTLINED_FUNCTION_119_3();
  v61 = *(v34 + v60);
  v62 = sub_1E3754B2C();
  v114 = v59;
  sub_1E3B10DE8(v59, v62);
  v103 = OBJC_IVAR____TtC8VideosUI22SportsPlayByPlayLayout_childItemVerticalMargin;
  sub_1E4203DA4();
  OUTLINED_FUNCTION_59();
  OUTLINED_FUNCTION_36_0();
  sub_1E4200D94();
  OUTLINED_FUNCTION_49_16();
  v118[8] = 1;
  v118[0] = v63;
  v117 = v64;
  v65 = sub_1E4201B84();
  v66 = OBJC_IVAR____TtC8VideosUI22SportsPlayByPlayLayout_childItemHorizontalSpacing;
  v67 = *(v61 + OBJC_IVAR____TtC8VideosUI22SportsPlayByPlayLayout_childItemHorizontalSpacing);
  *v24 = v65;
  *(v24 + 8) = v67;
  *(v24 + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E698, &qword_1E42AC648);
  OUTLINED_FUNCTION_139_1();
  sub_1E3939964(v34, v68, v69, v70, v71, v72, v73, v74, v102[0], v102[1], v103, v104, v105, v106, v107, v34, v108, v109, v110, v111);
  LOBYTE(v59) = sub_1E4202724();
  v75 = sub_1E4202774();
  sub_1E4202774();
  if (sub_1E4202774() != v59)
  {
    v75 = sub_1E4202774();
  }

  sub_1E4200A54();
  OUTLINED_FUNCTION_3();
  sub_1E3741EA0(v24, v25, &qword_1ECF2E680, &qword_1E42AC630);
  v76 = v25 + *(v45 + 36);
  *v76 = v75;
  *(v76 + 8) = v28;
  *(v76 + 16) = v29;
  *(v76 + 24) = v30;
  *(v76 + 32) = v31;
  *(v76 + 40) = 0;
  v77 = sub_1E4202754();
  sub_1E4202774();
  sub_1E4202774();
  if (sub_1E4202774() != v77)
  {
    sub_1E4202774();
  }

  sub_1E4200A54();
  OUTLINED_FUNCTION_3();
  sub_1E3741EA0(v25, v51, &qword_1ECF2E688, &qword_1E42AC638);
  OUTLINED_FUNCTION_141();
  OUTLINED_FUNCTION_32_4(v51 + v78);
  sub_1E3741EA0(v51, v115, &qword_1ECF2E690, &qword_1E42AC640);
  v79 = sub_1E4201B84();
  v80 = *(v61 + v66);
  *v26 = v79;
  *(v26 + 8) = v80;
  *(v26 + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E6A0, &qword_1E42AC650);
  sub_1E3939E48();
  v81 = sub_1E4202724();
  sub_1E4202774();
  sub_1E4202774();
  if (sub_1E4202774() != v81)
  {
    sub_1E4202774();
  }

  sub_1E4200A54();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_133_4();
  sub_1E3741EA0(v82, v83, v84, v85);
  OUTLINED_FUNCTION_141();
  OUTLINED_FUNCTION_32_4(v81 + v86);
  v87 = v116;
  sub_1E3741EA0(v81, v116, &qword_1ECF2E678, &qword_1E42AC628);
  sub_1E4203DA4();
  OUTLINED_FUNCTION_59();
  OUTLINED_FUNCTION_36_0();
  sub_1E4200D94();
  OUTLINED_FUNCTION_39_17();
  v89 = sub_1E393C67C(v114, v110, v88);
  OUTLINED_FUNCTION_106_6(v89, v90, &qword_1ECF2E690, &qword_1E42AC640);
  v91 = v112;
  sub_1E3743538(v87, v112, &qword_1ECF2E678, &qword_1E42AC628);
  OUTLINED_FUNCTION_52_13();
  OUTLINED_FUNCTION_133_4();
  sub_1E393C67C(v92, v93, v51);
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E6A8, &unk_1E42AC658);
  OUTLINED_FUNCTION_47_15(&qword_1E42AC628 + v94[12]);
  sub_1E3743538(1, &qword_1E42AC628 + v95, &qword_1ECF2E690, &qword_1E42AC640);
  sub_1E3743538(v91, &qword_1E42AC628 + v94[20], &qword_1ECF2E678, &qword_1E42AC628);
  v96 = OUTLINED_FUNCTION_42_23(&qword_1E42AC628 + v94[24]);
  sub_1E325F6F0(v96, &qword_1ECF2E678, &qword_1E42AC628);
  sub_1E325F6F0(v66, &qword_1ECF2E690, &qword_1E42AC640);
  OUTLINED_FUNCTION_56_13();
  sub_1E393B640();
  v97 = OUTLINED_FUNCTION_57();
  sub_1E325F6F0(v97, v98, &qword_1E42AC628);
  OUTLINED_FUNCTION_112_1();
  sub_1E325F6F0(v99, v100, v101);
  sub_1E393B640();
  OUTLINED_FUNCTION_10_3();
}