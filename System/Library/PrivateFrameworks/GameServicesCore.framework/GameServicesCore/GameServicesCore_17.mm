uint64_t sub_227CC8574(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_13_18(a4 + 8 * (a1 >> 6));
  v9 = *(v8 + 48);
  OUTLINED_FUNCTION_146_6(v10, v11, v12, v8, v13, v14);
  OUTLINED_FUNCTION_6_15();
  result = (*(v15 + 32))(v9 + *(v15 + 72) * a1, a2);
  *(*(a4 + 56) + 8 * a1) = a3;
  v17 = *(a4 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a4 + 16) = v19;
  }

  return result;
}

uint64_t sub_227CC8614()
{
  OUTLINED_FUNCTION_118_4();
  v2 = v1;
  v5 = OUTLINED_FUNCTION_397(v3, v4, v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
  OUTLINED_FUNCTION_38_12();
  sub_227CCB9FC(v0, v2);
  OUTLINED_FUNCTION_82();
  return sub_227D4CF38() & 1;
}

uint64_t sub_227CC8698()
{
  if (sub_227CC1684())
  {
    type metadata accessor for AchievementPlayerKey(0);
    v0 = sub_227CC1684();
  }

  else
  {
    v0 = 0;
  }

  return v0 & 1;
}

void sub_227CC8728()
{
  OUTLINED_FUNCTION_351();
  v2 = v1;
  v22 = v3;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_26_0();
  v19 = v8;
  v20 = v7;
  v18 = v2 + 64;
  v9 = 1 << *(v2 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(v2 + 64);
  v12 = (v9 + 63) >> 6;
  v23 = v2;
  sub_227D4CE58();
  v13 = 0;
  while (v11)
  {
LABEL_9:
    (*(v19 + 16))(v20, *(v23 + 56) + *(v19 + 72) * (__clz(__rbit64(v11)) | (v13 << 6)), v21);
    v15 = v22(v20);
    v16 = OUTLINED_FUNCTION_173();
    v17(v16);
    if (!v0)
    {
      v11 &= v11 - 1;
      if ((v15 & 1) == 0)
      {
        continue;
      }
    }

LABEL_11:

    OUTLINED_FUNCTION_352();
    return;
  }

  while (1)
  {
    v14 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v14 >= v12)
    {
      goto LABEL_11;
    }

    v11 = *(v18 + 8 * v14);
    ++v13;
    if (v11)
    {
      v13 = v14;
      goto LABEL_9;
    }
  }

  __break(1u);
}

BOOL sub_227CC8900(uint64_t (*a1)(unint64_t), uint64_t a2, uint64_t a3)
{
  v6 = 0;
  v7 = *(a3 + 16);
  do
  {
    v8 = v6;
    if (v7 == v6)
    {
      break;
    }

    v9 = *(type metadata accessor for AchievementPlayerKey(0) - 8);
    v10 = a1(a3 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v8);
    if (v3)
    {
      break;
    }

    v6 = v8 + 1;
  }

  while ((v10 & 1) == 0);
  return v7 != v8;
}

void sub_227CC89D4(uint64_t a1, char a2)
{
  v5 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v5;
  if (!isUniquelyReferenced_nonNull_native || a1 > *(v5 + 24) >> 1)
  {
    if (*(v5 + 16) <= a1)
    {
      v7 = a1;
    }

    else
    {
      v7 = *(v5 + 16);
    }

    sub_227CC8CA8(isUniquelyReferenced_nonNull_native, v7, a2 & 1, v5, &unk_27D7E9FD8, &unk_227D633F0, type metadata accessor for AchievementPlayerKey, type metadata accessor for AchievementPlayerKey);
    *v2 = v8;
  }
}

void sub_227CC8A64(uint64_t result)
{
  v2 = *(*v1 + 24);
  if (result + 1 > (v2 >> 1))
  {
    sub_227CC8CA8(v2 > 1, result + 1, 1, *v1, &unk_27D7E9FD8, &unk_227D633F0, type metadata accessor for AchievementPlayerKey, type metadata accessor for AchievementPlayerKey);
    *v1 = v3;
  }
}

void *sub_227CC8ACC(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
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

  v8 = *(a4 + 16);
  v9 = sub_227CC535C(v8, v7);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6938, &qword_227D4E760) - 8);
  if (v5)
  {
    v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    sub_227CC590C(a4 + v11, v8, v9 + v11);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v9;
}

void sub_227CC8BC4()
{
  OUTLINED_FUNCTION_450_0();
  OUTLINED_FUNCTION_189_0();
  if (v4)
  {
    OUTLINED_FUNCTION_154();
    if (v9 != v10)
    {
      OUTLINED_FUNCTION_119_6();
      if (v9)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_153();
    }
  }

  else
  {
    v8 = v3;
  }

  v11 = *(v0 + 2);
  if (v8 <= v11)
  {
    v12 = *(v0 + 2);
  }

  else
  {
    v12 = v8;
  }

  if (v12)
  {
    v13 = OUTLINED_FUNCTION_146_6(v2, v3, v4, v5, v6, v7);
    v14 = OUTLINED_FUNCTION_143_2(v13);
    v15 = _swift_stdlib_malloc_size(v14);
    OUTLINED_FUNCTION_92_3(v15 - 32);
  }

  else
  {
    v14 = MEMORY[0x277D84F90];
  }

  if (v1)
  {
    if (v14 != v0 || &v0[24 * v11 + 32] <= v14 + 32)
    {
      v17 = OUTLINED_FUNCTION_173();
      memmove(v17, v18, v19);
    }

    *(v0 + 2) = 0;
  }

  else
  {
    v20 = OUTLINED_FUNCTION_87_1();
    __swift_instantiateConcreteTypeFromMangledNameV2(v20, v21);
    OUTLINED_FUNCTION_173();
    swift_arrayInitWithCopy();
  }

  OUTLINED_FUNCTION_451_0();
}

void sub_227CC8CA8(char a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(void), void (*a8)(void))
{
  if (a3)
  {
    OUTLINED_FUNCTION_154();
    if (v13 != v14)
    {
      OUTLINED_FUNCTION_119_6();
      if (v13)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_153();
    }
  }

  else
  {
    v12 = a2;
  }

  v15 = *(a4 + 16);
  v16 = sub_227CC5464(v15, v12, a5, a6, a7);
  a8(0);
  OUTLINED_FUNCTION_11_12();
  OUTLINED_FUNCTION_19();
  if (a1)
  {
    sub_227CC59F8(a4 + v17, v15, v16 + v17, a7);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_227CC8D9C()
{
  v1 = *v0;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v0 = v1;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_227CC8CA8(0, *(v1 + 16) + 1, 1, v1, &unk_27D7E9FD8, &unk_227D633F0, type metadata accessor for AchievementPlayerKey, type metadata accessor for AchievementPlayerKey);
    *v0 = v3;
  }
}

void sub_227CC8E10(uint64_t a1, char a2, void *a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t *a7)
{
  v8 = 0;
  v36 = *(a1 + 16);
  for (i = (a1 + 48); ; i += 3)
  {
    if (v36 == v8)
    {

      return;
    }

    if (v8 >= *(a1 + 16))
    {
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      sub_227D4DAE8();
      __break(1u);
      goto LABEL_22;
    }

    v11 = *(i - 2);
    v10 = *(i - 1);
    v12 = *i;
    v13 = *a3;
    sub_227D4CE58();
    sub_227D4CE58();
    v14 = OUTLINED_FUNCTION_236();
    v16 = sub_227B2664C(v14, v15);
    OUTLINED_FUNCTION_5_19();
    v20 = v18 + v19;
    if (__OFADD__(v18, v19))
    {
      goto LABEL_19;
    }

    v21 = v17;
    if (v13[3] < v20)
    {
      break;
    }

    if (a2)
    {
      if (v17)
      {
        goto LABEL_14;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(a6, a7);
      sub_227D4D7D8();
      if (v21)
      {
        goto LABEL_14;
      }
    }

LABEL_11:
    v26 = *a3;
    *(*a3 + 8 * (v16 >> 6) + 64) |= 1 << v16;
    v27 = (v26[6] + 16 * v16);
    *v27 = v11;
    v27[1] = v10;
    *(v26[7] + 8 * v16) = v12;
    v28 = v26[2];
    v29 = __OFADD__(v28, 1);
    v30 = v28 + 1;
    if (v29)
    {
      goto LABEL_20;
    }

    v26[2] = v30;
    ++v8;
    a2 = 1;
  }

  sub_227CC4F04(v20, a2 & 1, a4);
  v22 = OUTLINED_FUNCTION_236();
  v24 = sub_227B2664C(v22, v23);
  if ((v21 & 1) != (v25 & 1))
  {
    goto LABEL_21;
  }

  v16 = v24;
  if ((v21 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_14:
  OUTLINED_FUNCTION_208();
  v31 = swift_allocError();
  swift_willThrow();
  v32 = v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E69C0, &qword_227D4EAD0);
  if ((swift_dynamicCast() & 1) == 0)
  {

    return;
  }

LABEL_22:
  sub_227D4D668();
  MEMORY[0x22AAA5DA0](0xD00000000000001BLL, 0x8000000227D77FE0);
  sub_227D4D7B8();
  MEMORY[0x22AAA5DA0](39, 0xE100000000000000);
  sub_227D4D7F8();
  __break(1u);
}

uint64_t sub_227CC90E4(uint64_t (*a1)(unint64_t), uint64_t a2)
{
  v4 = v2;
  v7 = type metadata accessor for AchievementPlayerKey(0);
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v33 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = &v33 - v15;
  v17 = *v4;
  result = sub_227CC93EC(a1, a2, *v4);
  v41 = v3;
  if (!v3)
  {
    v38 = v16;
    v40 = result;
    v35 = v11;
    if (v19)
    {
      return *(v17 + 16);
    }

    else
    {
      v33 = v4;
      v20 = v40 + 1;
      if (!__OFADD__(v40, 1))
      {
        v21 = v38;
        v36 = a1;
        v37 = v8;
        v34 = v14;
        while (1)
        {
          v22 = *(v17 + 16);
          if (v20 == v22)
          {
            return v40;
          }

          if (v20 >= v22)
          {
            break;
          }

          v39 = (*(v8 + 80) + 32) & ~*(v8 + 80);
          v23 = *(v8 + 72);
          v24 = v20;
          v25 = v23 * v20;
          sub_227CCB9A8();
          v26 = v41;
          v27 = a1(v21);
          result = sub_227CCB950(v21, type metadata accessor for AchievementPlayerKey);
          v41 = v26;
          if (v26)
          {
            return result;
          }

          if (v27)
          {
            a1 = v36;
            v21 = v38;
          }

          else
          {
            v28 = v40;
            v21 = v38;
            if (v20 != v40)
            {
              if ((v40 & 0x8000000000000000) != 0)
              {
                goto LABEL_24;
              }

              v29 = *(v17 + 16);
              if (v40 >= v29)
              {
                goto LABEL_25;
              }

              v30 = v23 * v40;
              result = sub_227CCB9A8();
              if (v24 >= v29)
              {
                goto LABEL_26;
              }

              v20 = v24;
              sub_227CCB9A8();
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                sub_227CC95A8(v17);
                v17 = v32;
              }

              v31 = v17 + v39;
              result = sub_227CCB8EC(v35, v17 + v39 + v30);
              if (v24 >= *(v17 + 16))
              {
                goto LABEL_27;
              }

              result = sub_227CCB8EC(v34, v31 + v25);
              *v33 = v17;
              v28 = v40;
            }

            v40 = v28 + 1;
            a1 = v36;
          }

          ++v20;
          v8 = v37;
        }

        __break(1u);
LABEL_24:
        __break(1u);
LABEL_25:
        __break(1u);
LABEL_26:
        __break(1u);
LABEL_27:
        __break(1u);
      }

      __break(1u);
    }
  }

  return result;
}

uint64_t sub_227CC93EC(uint64_t (*a1)(unint64_t), uint64_t a2, uint64_t a3)
{
  v6 = 0;
  v7 = *(a3 + 16);
  while (1)
  {
    if (v7 == v6)
    {
      return 0;
    }

    v8 = *(type metadata accessor for AchievementPlayerKey(0) - 8);
    result = a1(a3 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v6);
    if (v3)
    {
      return result;
    }

    if (result)
    {
      break;
    }

    ++v6;
  }

  return v6;
}

uint64_t sub_227CC94D0(uint64_t *a1, uint64_t a2, uint64_t a3, int a4)
{
  v8 = *(sub_227D4A0E8() - 8);
  v9 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_227CCB89C();
    v9 = v10;
  }

  v11 = *(v9 + 16);
  v13[0] = v9 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
  v13[1] = v11;
  result = sub_227CC9648(v13, a2, a3, a4 & 0x10101);
  *a1 = v9;
  return result;
}

uint64_t sub_227CC9648(uint64_t *a1, uint64_t a2, uint64_t a3, int a4)
{
  v8 = a1[1];
  result = sub_227D4DA28();
  if (result < v8)
  {
    if (v8 >= -1)
    {
      v10 = result;
      v11 = v8 / 2;
      if (v8 <= 1)
      {
        v12 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_227D4A0E8();
        v12 = sub_227D4D218();
        *(v12 + 16) = v11;
      }

      v13 = *(sub_227D4A0E8() - 8);
      v14[0] = (v12 + ((*(v13 + 80) + 32) & ~*(v13 + 80)));
      v14[1] = v11;
      sub_227CC9B78(v14, v15, a1, v10, a2, a3, a4 & 0x10101);
      *(v12 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v8 < 0)
  {
    goto LABEL_12;
  }

  if (v8)
  {
    return sub_227CC97BC(0, v8, 1, a1, a2, a3, a4 & 0x10101);
  }

  return result;
}

uint64_t sub_227CC97BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, int a7)
{
  v67 = a7;
  v59 = sub_227D492A8();
  v11 = *(v59 - 8);
  v12 = MEMORY[0x28223BE20](v59);
  v58 = &v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v57 = &v48 - v14;
  v15 = sub_227D4A0E8();
  v16 = MEMORY[0x28223BE20](v15);
  v63 = &v48 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v48 - v19;
  result = MEMORY[0x28223BE20](v18);
  v50 = a2;
  if (a3 != a2)
  {
    v24 = &v48 - v22;
    v25 = *a4;
    v27 = *(v23 + 16);
    v26 = v23 + 16;
    v28 = *(v26 + 56);
    v55 = v15;
    v56 = (v11 + 8);
    v64 = (v26 - 8);
    v65 = v27;
    v66 = v26;
    v29 = v25 + v28 * (a3 - 1);
    v60 = -v28;
    v61 = (v26 + 16);
    v30 = a1 - a3;
    v62 = v25;
    v49 = v28;
    v31 = v25 + v28 * a3;
    v68 = &v48 - v22;
    while (2)
    {
      v53 = v29;
      v54 = a3;
      v51 = v31;
      v52 = v30;
      v32 = v30;
      do
      {
        v33 = v65;
        v65(v24, v31, v15);
        v33(v20, v29, v15);
        if ((v67 & 0x10000) != 0)
        {
          v42 = sub_227D4A0B8();
          v37 = sub_227D4A0B8() < v42;
        }

        else
        {
          v34 = v20;
          v35 = v57;
          sub_227D4A068();
          v36 = v58;
          sub_227D4A068();
          v37 = sub_227D49208();
          v38 = *v56;
          v39 = v36;
          v40 = v59;
          (*v56)(v39, v59);
          v41 = v35;
          v20 = v34;
          v24 = v68;
          v38(v41, v40);
          v15 = v55;
        }

        v43 = *v64;
        (*v64)(v20, v15);
        result = (v43)(v24, v15);
        if ((v37 & 1) == 0)
        {
          break;
        }

        if (!v62)
        {
          __break(1u);
          return result;
        }

        v44 = *v61;
        v45 = v63;
        (*v61)(v63, v31, v15);
        swift_arrayInitWithTakeFrontToBack();
        v46 = v45;
        v24 = v68;
        result = (v44)(v29, v46, v15);
        v29 += v60;
        v31 += v60;
      }

      while (!__CFADD__(v32++, 1));
      a3 = v54 + 1;
      v29 = v53 + v49;
      v30 = v52 - 1;
      v31 = v51 + v49;
      if (v54 + 1 != v50)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

uint64_t sub_227CC9B78(char **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  LODWORD(v7) = a7;
  v166 = a6;
  v165 = a5;
  v153 = a1;
  v174 = sub_227D492A8();
  v10 = *(v174 - 8);
  v11 = MEMORY[0x28223BE20](v174);
  v173 = &v150 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v172 = &v150 - v13;
  v14 = sub_227D4A0E8();
  v15 = MEMORY[0x28223BE20](v14);
  v158 = &v150 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v178 = &v150 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v150 - v20;
  v22 = MEMORY[0x28223BE20](v19);
  v183 = &v150 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v161 = &v150 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v160 = &v150 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  result = MEMORY[0x28223BE20](v28);
  v167 = v31;
  v168 = a3;
  v33 = *(a3 + 8);
  v185 = v7;
  if (v33 < 1)
  {
    v35 = MEMORY[0x277D84F90];
LABEL_111:
    v184 = *v153;
    if (!v184)
    {
      goto LABEL_153;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    LODWORD(a3) = 65792;
    if (result)
    {
LABEL_113:
      v142 = (v35 + 16);
      v143 = *(v35 + 16);
      LODWORD(v183) = v7 & a3;
      v144 = v169;
      while (v143 >= 2)
      {
        if (!*v168)
        {
          goto LABEL_150;
        }

        v7 = v35;
        v35 += 16 * v143;
        v145 = *v35;
        v146 = &v142[2 * v143];
        v147 = v146[1];
        sub_227CCA948(*v168 + *(v167 + 72) * *v35, *v168 + *(v167 + 72) * *v146, *v168 + *(v167 + 72) * v147, v184, v165, v166, v183 | v185 & 1);
        LODWORD(a3) = v144;
        if (v144)
        {
          break;
        }

        if (v147 < v145)
        {
          goto LABEL_138;
        }

        if (v143 - 2 >= *v142)
        {
          goto LABEL_139;
        }

        *v35 = v145;
        *(v35 + 8) = v147;
        v148 = *v142 - v143;
        if (*v142 < v143)
        {
          goto LABEL_140;
        }

        v143 = *v142 - 1;
        result = memmove(v146, v146 + 2, 16 * v148);
        *v142 = v143;
        v35 = v7;
      }
    }

LABEL_147:
    result = sub_227B65968(v35);
    v35 = result;
    goto LABEL_113;
  }

  v152 = &v150 - v30;
  v150 = v32;
  v34 = 0;
  v181 = v31 + 16;
  v163 = v7 & 0x10100;
  v182 = (v31 + 8);
  v171 = (v10 + 8);
  v180 = (v31 + 32);
  v35 = MEMORY[0x277D84F90];
  v155 = a4;
  v175 = v14;
  v184 = v21;
  while (1)
  {
    v36 = v34;
    v170 = v34 + 1;
    if (v34 + 1 >= v33)
    {
      v49 = v183;
    }

    else
    {
      v176 = v33;
      v37 = *v168;
      v38 = *(v31 + 72);
      v39 = *v168 + v38 * (v34 + 1);
      v40 = v14;
      v41 = *(v31 + 16);
      v41(v152, v39, v14);
      v177 = v38;
      v154 = v36;
      v42 = v150;
      v162 = v41;
      v41(v150, v37 + v38 * v36, v40);
      v43 = v152;
      sub_227CC30D8();
      LODWORD(v164) = v44;
      if (v169)
      {
        v149 = *v182;
        (*v182)(v42, v40);
        v149(v43, v40);
      }

      v151 = v35;
      v45 = *v182;
      (*v182)(v42, v40);
      v159 = v45;
      result = (v45)(v43, v40);
      v46 = (v154 + 2);
      v47 = v176;
      v35 = v177;
      v48 = v37 + v177 * (v154 + 2);
      v49 = v183;
      v21 = v184;
      a3 = v170;
      while (1)
      {
        v50 = v46;
        if (a3 + 1 >= v47)
        {
          break;
        }

        v179 = v46;
        v51 = v21;
        v170 = a3;
        v52 = v160;
        v53 = v175;
        v54 = v162;
        (v162)(v160, v48, v175);
        v55 = v161;
        v54(v161, v39, v53);
        if ((v7 & 0x10000) != 0)
        {
          v64 = sub_227D4A0B8();
          v58 = sub_227D4A0B8() < v64;
          v63 = v55;
          v35 = v177;
        }

        else
        {
          v56 = v172;
          sub_227D4A068();
          v57 = v173;
          sub_227D4A068();
          v58 = sub_227D49208();
          v59 = *v171;
          v60 = v57;
          v61 = v174;
          (*v171)(v60, v174);
          v62 = v61;
          v51 = v184;
          v59(v56, v62);
          v35 = v177;
          v63 = v55;
        }

        v65 = v175;
        v66 = v159;
        (v159)(v63, v175);
        result = v66(v52, v65);
        v48 += v35;
        v39 += v35;
        a3 = v170 + 1;
        v50 = v179;
        v46 = v179 + 1;
        v67 = (v164 & 1) == (v58 & 1);
        LODWORD(v7) = v185;
        v49 = v183;
        v21 = v51;
        v47 = v176;
        if (!v67)
        {
          goto LABEL_14;
        }
      }

      a3 = v47;
LABEL_14:
      v170 = a3;
      if (v164)
      {
        v36 = v154;
        a4 = v155;
        v14 = v175;
        if (a3 < v154)
        {
          goto LABEL_146;
        }

        v68 = v21;
        v69 = a3;
        if (v154 >= a3)
        {
          v35 = v151;
          v21 = v68;
          goto LABEL_37;
        }

        v70 = v47 >= v50 ? v50 : v47;
        a3 = v35 * (v70 - 1);
        v71 = v35;
        v72 = v154;
        v73 = v71 * v70;
        v74 = v154 * v71;
        v75 = v169;
        do
        {
          if (v72 != --v69)
          {
            v76 = *v168;
            if (!*v168)
            {
              goto LABEL_151;
            }

            v179 = *v180;
            (v179)(v158, v76 + v74, v14);
            v77 = v74 < a3 || v76 + v74 >= (v76 + v73);
            if (v77)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v74 != a3)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            result = (v179)(v76 + a3, v158, v14);
            a4 = v155;
            v49 = v183;
            v68 = v184;
          }

          ++v72;
          a3 -= v177;
          v73 -= v177;
          v74 += v177;
        }

        while (v72 < v69);
        v169 = v75;
        LODWORD(v7) = v185;
        v35 = v151;
        v21 = v68;
      }

      else
      {
        a4 = v155;
        v35 = v151;
        v14 = v175;
      }

      v36 = v154;
    }

LABEL_37:
    v78 = v168[1];
    if (v170 < v78)
    {
      if (__OFSUB__(v170, v36))
      {
        goto LABEL_143;
      }

      if (v170 - v36 < a4)
      {
        break;
      }
    }

LABEL_59:
    if (v170 < v36)
    {
      goto LABEL_142;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_227B63228(0, *(v35 + 16) + 1, 1, v35);
      v35 = result;
    }

    a3 = *(v35 + 16);
    v100 = *(v35 + 24);
    v101 = a3 + 1;
    if (a3 >= v100 >> 1)
    {
      result = sub_227B63228((v100 > 1), a3 + 1, 1, v35);
      v35 = result;
    }

    *(v35 + 16) = v101;
    v7 = v35 + 32;
    v102 = (v35 + 32 + 16 * a3);
    v103 = v170;
    *v102 = v36;
    v102[1] = v103;
    v179 = *v153;
    if (!v179)
    {
      goto LABEL_152;
    }

    if (a3)
    {
      while (1)
      {
        v104 = v101 - 1;
        v105 = (v7 + 16 * (v101 - 1));
        v106 = (v35 + 16 * v101);
        if (v101 >= 4)
        {
          break;
        }

        if (v101 == 3)
        {
          v107 = *(v35 + 32);
          v108 = *(v35 + 40);
          v117 = __OFSUB__(v108, v107);
          v109 = v108 - v107;
          v110 = v117;
LABEL_79:
          if (v110)
          {
            goto LABEL_129;
          }

          v122 = *v106;
          v121 = v106[1];
          v123 = __OFSUB__(v121, v122);
          v124 = v121 - v122;
          v125 = v123;
          if (v123)
          {
            goto LABEL_132;
          }

          v126 = v105[1];
          v127 = v126 - *v105;
          if (__OFSUB__(v126, *v105))
          {
            goto LABEL_135;
          }

          if (__OFADD__(v124, v127))
          {
            goto LABEL_137;
          }

          if (v124 + v127 >= v109)
          {
            if (v109 < v127)
            {
              v104 = v101 - 2;
            }

            goto LABEL_101;
          }

          goto LABEL_94;
        }

        if (v101 < 2)
        {
          goto LABEL_131;
        }

        v129 = *v106;
        v128 = v106[1];
        v117 = __OFSUB__(v128, v129);
        v124 = v128 - v129;
        v125 = v117;
LABEL_94:
        if (v125)
        {
          goto LABEL_134;
        }

        v131 = *v105;
        v130 = v105[1];
        v117 = __OFSUB__(v130, v131);
        v132 = v130 - v131;
        if (v117)
        {
          goto LABEL_136;
        }

        if (v132 < v124)
        {
          goto LABEL_108;
        }

LABEL_101:
        if (v104 - 1 >= v101)
        {
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
LABEL_137:
          __break(1u);
LABEL_138:
          __break(1u);
LABEL_139:
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
          goto LABEL_145;
        }

        if (!*v168)
        {
          goto LABEL_149;
        }

        a3 = v7 + 16 * (v104 - 1);
        v136 = *a3;
        v137 = (v7 + 16 * v104);
        v138 = v137[1];
        v139 = v169;
        sub_227CCA948(*v168 + *(v167 + 72) * *a3, *v168 + *(v167 + 72) * *v137, *v168 + *(v167 + 72) * v138, v179, v165, v166, v163 | v185 & 1);
        if (v139)
        {
        }

        if (v138 < v136)
        {
          goto LABEL_124;
        }

        v140 = v35;
        v35 = *(v35 + 16);
        if (v104 > v35)
        {
          goto LABEL_125;
        }

        *a3 = v136;
        *(a3 + 8) = v138;
        if (v104 >= v35)
        {
          goto LABEL_126;
        }

        v169 = 0;
        v101 = v35 - 1;
        result = memmove((v7 + 16 * v104), v137 + 2, 16 * (v35 - 1 - v104));
        *(v140 + 16) = v35 - 1;
        v141 = v35 > 2;
        v35 = v140;
        v21 = v184;
        if (!v141)
        {
          goto LABEL_108;
        }
      }

      v111 = v7 + 16 * v101;
      v112 = *(v111 - 64);
      v113 = *(v111 - 56);
      v117 = __OFSUB__(v113, v112);
      v114 = v113 - v112;
      if (v117)
      {
        goto LABEL_127;
      }

      v116 = *(v111 - 48);
      v115 = *(v111 - 40);
      v117 = __OFSUB__(v115, v116);
      v109 = v115 - v116;
      v110 = v117;
      if (v117)
      {
        goto LABEL_128;
      }

      v118 = v106[1];
      v119 = v118 - *v106;
      if (__OFSUB__(v118, *v106))
      {
        goto LABEL_130;
      }

      v117 = __OFADD__(v109, v119);
      v120 = v109 + v119;
      if (v117)
      {
        goto LABEL_133;
      }

      if (v120 >= v114)
      {
        v134 = *v105;
        v133 = v105[1];
        v117 = __OFSUB__(v133, v134);
        v135 = v133 - v134;
        if (v117)
        {
          goto LABEL_141;
        }

        if (v109 < v135)
        {
          v104 = v101 - 2;
        }

        goto LABEL_101;
      }

      goto LABEL_79;
    }

LABEL_108:
    v31 = v167;
    v33 = v168[1];
    v34 = v170;
    LODWORD(v7) = v185;
    a4 = v155;
    if (v170 >= v33)
    {
      goto LABEL_111;
    }
  }

  if (__OFADD__(v36, a4))
  {
    goto LABEL_144;
  }

  if (v36 + a4 >= v78)
  {
    v79 = v168[1];
  }

  else
  {
    v79 = v36 + a4;
  }

  if (v79 < v36)
  {
LABEL_145:
    __break(1u);
LABEL_146:
    __break(1u);
    goto LABEL_147;
  }

  if (v170 == v79)
  {
    goto LABEL_59;
  }

  v151 = v35;
  v80 = *v168;
  v81 = *(v167 + 72);
  v179 = *(v167 + 16);
  v82 = v80 + v81 * (v170 - 1);
  v176 = -v81;
  v154 = v36;
  v83 = (v36 - v170);
  v177 = v80;
  v156 = v81;
  v84 = (v80 + v170 * v81);
  v157 = v79;
LABEL_47:
  v159 = v84;
  v162 = v83;
  v164 = v82;
  v85 = v82;
  while (1)
  {
    v86 = v179;
    (v179)(v49, v84, v14);
    v86(v21, v85, v14);
    if ((v7 & 0x10000) != 0)
    {
      a3 = v49;
      v96 = sub_227D4A0B8();
      v89 = sub_227D4A0B8() < v96;
    }

    else
    {
      v87 = v172;
      a3 = v49;
      sub_227D4A068();
      v88 = v173;
      sub_227D4A068();
      v89 = sub_227D49208();
      v90 = *v171;
      v91 = v88;
      v92 = v174;
      (*v171)(v91, v174);
      v93 = v87;
      v14 = v175;
      v94 = v92;
      v95 = v184;
      v90(v93, v94);
      v21 = v95;
    }

    v97 = *v182;
    (*v182)(v21, v14);
    result = (v97)(a3, v14);
    if ((v89 & 1) == 0)
    {
      LODWORD(v7) = v185;
      v49 = v183;
LABEL_57:
      v82 = v164 + v156;
      v83 = v162 - 1;
      v84 = &v159[v156];
      if (++v170 == v157)
      {
        v170 = v157;
        v35 = v151;
        v36 = v154;
        goto LABEL_59;
      }

      goto LABEL_47;
    }

    LODWORD(v7) = v185;
    if (!v177)
    {
      break;
    }

    LODWORD(a3) = v180;
    v98 = *v180;
    v99 = v178;
    (*v180)(v178, v84, v14);
    swift_arrayInitWithTakeFrontToBack();
    v98(v85, v99, v14);
    v85 += v176;
    v84 += v176;
    v77 = __CFADD__(v83++, 1);
    v49 = v183;
    v21 = v184;
    if (v77)
    {
      goto LABEL_57;
    }
  }

  __break(1u);
LABEL_149:
  __break(1u);
LABEL_150:
  __break(1u);
LABEL_151:
  __break(1u);
LABEL_152:
  __break(1u);
LABEL_153:
  __break(1u);
  return result;
}

uint64_t sub_227CCA948(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  v92 = a7;
  v93 = a3;
  v94 = a2;
  v95 = a1;
  v86 = sub_227D492A8();
  v8 = *(v86 - 8);
  v9 = MEMORY[0x28223BE20](v86);
  v85 = &v76 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v84 = &v76 - v11;
  v12 = sub_227D4A0E8();
  v13 = MEMORY[0x28223BE20](v12);
  v15 = &v76 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v76 - v17;
  v19 = MEMORY[0x28223BE20](v16);
  v89 = &v76 - v20;
  result = MEMORY[0x28223BE20](v19);
  v88 = &v76 - v23;
  v25 = *(v24 + 72);
  if (!v25)
  {
    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
    return result;
  }

  v26 = v94 - v95;
  v27 = v94 - v95 == 0x8000000000000000 && v25 == -1;
  if (v27)
  {
    goto LABEL_67;
  }

  v28 = v93 - v94;
  if (v93 - v94 == 0x8000000000000000 && v25 == -1)
  {
    goto LABEL_68;
  }

  v30 = v26 / v25;
  v98 = v95;
  v97 = a4;
  v82 = v12;
  v83 = (v8 + 8);
  v90 = (v22 + 8);
  v91 = (v22 + 16);
  v31 = v28 / v25;
  if (v26 / v25 >= v28 / v25)
  {
    sub_227CC59F8(v94, v28 / v25, a4, MEMORY[0x277D0D080]);
    v53 = a4 + v31 * v25;
    v54 = -v25;
    v55 = v53;
    v81 = v54;
    v79 = a4;
LABEL_40:
    v56 = v93;
    v57 = v94 + v54;
    v77 = v55;
    v58 = v55;
    v80 = v94 + v54;
    while (1)
    {
      if (v53 <= a4)
      {
        v98 = v94;
        v96 = v58;
        goto LABEL_65;
      }

      if (v94 <= v95)
      {
        break;
      }

      v88 = v56;
      v89 = v53;
      v78 = v58;
      v59 = v53 + v54;
      v60 = *v91;
      (*v91)(v18, v59, v12);
      v60(v15, v57, v12);
      if ((v92 & 0x10000) != 0)
      {
        v68 = sub_227D4A0B8();
        v87 = sub_227D4A0B8() < v68;
        v61 = v15;
        v63 = v18;
      }

      else
      {
        v61 = v15;
        v62 = v84;
        sub_227D4A068();
        v63 = v18;
        v64 = v85;
        sub_227D4A068();
        v87 = sub_227D49208();
        v65 = *v83;
        v66 = v64;
        v67 = v86;
        (*v83)(v66, v86);
        v65(v62, v67);
        v54 = v81;
        v12 = v82;
      }

      v69 = v88;
      v93 = &v88[v54];
      v70 = *v90;
      v71 = v61;
      (*v90)(v61, v12);
      v18 = v63;
      v70(v63, v12);
      if (v87)
      {
        v73 = v69 < v94 || v93 >= v94;
        a4 = v79;
        v74 = v80;
        if (v73)
        {
          swift_arrayInitWithTakeFrontToBack();
          v94 = v74;
          v55 = v78;
          v15 = v61;
          v54 = v81;
          v53 = v89;
        }

        else
        {
          v75 = v78;
          v55 = v78;
          v27 = v69 == v94;
          v94 = v80;
          v15 = v71;
          v54 = v81;
          v53 = v89;
          if (!v27)
          {
            swift_arrayInitWithTakeBackToFront();
            v94 = v74;
            v55 = v75;
          }
        }

        goto LABEL_40;
      }

      v72 = v69 < v89 || v93 >= v89;
      a4 = v79;
      v57 = v80;
      if (v72)
      {
        v56 = v93;
        swift_arrayInitWithTakeFrontToBack();
        v53 = v59;
        v58 = v59;
        v15 = v71;
        v54 = v81;
      }

      else
      {
        v58 = v59;
        v27 = v89 == v69;
        v56 = v93;
        v53 = v59;
        v15 = v71;
        v54 = v81;
        if (!v27)
        {
          v56 = v93;
          swift_arrayInitWithTakeBackToFront();
          v53 = v59;
          v58 = v59;
        }
      }
    }

    v98 = v94;
    v96 = v77;
  }

  else
  {
    sub_227CC59F8(v95, v30, a4, MEMORY[0x277D0D080]);
    v32 = a4 + v30 * v25;
    v96 = v32;
    v33 = v25;
    v35 = v88;
    v34 = v89;
    while (a4 < v32 && v94 < v93)
    {
      v37 = *v91;
      (*v91)(v35, v94, v12);
      v37(v34, a4, v12);
      if ((v92 & 0x10000) != 0)
      {
        v48 = sub_227D4A0B8();
        v41 = sub_227D4A0B8() < v48;
      }

      else
      {
        v38 = v32;
        v39 = v84;
        sub_227D4A068();
        v40 = v85;
        sub_227D4A068();
        v41 = sub_227D49208();
        v42 = *v83;
        v43 = v40;
        v44 = a4;
        v45 = v86;
        (*v83)(v43, v86);
        v46 = v39;
        v32 = v38;
        v47 = v45;
        a4 = v44;
        v35 = v88;
        v42(v46, v47);
        v34 = v89;
        v12 = v82;
      }

      v49 = *v90;
      (*v90)(v34, v12);
      v49(v35, v12);
      if (v41)
      {
        v50 = v94 + v33;
        if (v95 < v94 || v95 >= v50)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (v95 != v94)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        v94 = v50;
      }

      else
      {
        if (v95 < a4 || v95 >= a4 + v33)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (v95 != a4)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        v97 = a4 + v33;
        a4 += v33;
      }

      v95 += v33;
      v98 = v95;
    }
  }

LABEL_65:
  sub_227CCB08C(&v98, &v97, &v96);
  return 1;
}

uint64_t sub_227CCB08C(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = sub_227D4A0E8();
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_20:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_20;
  }

  v9 = v4 + (v5 - v4) / v7 * v7;
  if (v3 < v4 || v3 >= v9)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

uint64_t sub_227CCB1D4(uint64_t result, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  if (a2 < 0 || 1 << *(a5 + 32) <= a2)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a5 + 8 * (a2 >> 6) + 64) >> a2) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a5 + 36) == a3)
  {
    v6 = result;
    v7 = *(a5 + 56);
    v8 = *(*(a5 + 48) + 16 * a2);
    v9 = sub_227D4A4D8();
    (*(*(v9 - 8) + 16))(v6, v7 + *(*(v9 - 8) + 72) * a2, v9);
    sub_227D4CE58();
    return v8;
  }

LABEL_8:
  __break(1u);
  return result;
}

void sub_227CCB2A8(uint64_t a1, uint64_t a2)
{
  if (a1 < 0)
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

  v6 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v7 = a1 - a2;
  if (__OFSUB__(0, v6))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (__OFADD__(v4, v7))
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  sub_227CC89D4(v4 - v6, 1);
  v8 = *v2;
  v9 = *(type metadata accessor for AchievementPlayerKey(0) - 8);
  v10 = v8 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
  v11 = *(v9 + 72);
  v12 = v10 + v11 * a1;
  swift_arrayDestroy();
  if (!v6)
  {
LABEL_10:
    *v2 = v8;
    return;
  }

  v13 = *(v8 + 16);
  if (__OFSUB__(v13, a2))
  {
    goto LABEL_16;
  }

  sub_227CC59F8(v10 + v11 * a2, v13 - a2, v12, type metadata accessor for AchievementPlayerKey);
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
}

void sub_227CCB4AC(uint64_t a1)
{
  sub_227CCB6D8(319, &qword_280E7B6A0, &qword_27D7E8558);
  if (v1 <= 0x3F)
  {
    sub_227D49188();
    if (v2 <= 0x3F)
    {
      sub_227D492A8();
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_227CCB624(uint64_t a1)
{
  sub_227CCB6D8(319, &qword_27D7E9FA0, &unk_27D7E9FA8);
  if (v1 <= 0x3F)
  {
    sub_227CCB6D8(319, &qword_27D7E99A8, &qword_27D7E67D0);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_227CCB6D8(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = OUTLINED_FUNCTION_397(0, a2, a3);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v4, v5);
    OUTLINED_FUNCTION_78_0();
    v6 = sub_227D4A928();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

__n128 __swift_memcpy19_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 15) = *(a2 + 15);
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for LeaderboardProperties(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 19))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 17);
      v4 = v3 >= 2;
      v2 = (v3 + 2147483646) & 0x7FFFFFFF;
      if (!v4)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for LeaderboardProperties(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 18) = 0;
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 19) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 19) = 0;
    }

    if (a2)
    {
      *(result + 17) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_227CCB7DC(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 40))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_227CCB830(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

uint64_t sub_227CCB8EC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AchievementPlayerKey(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_227CCB950(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_62_0();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_227CCB9A8()
{
  OUTLINED_FUNCTION_37();
  v1(0);
  OUTLINED_FUNCTION_6_15();
  v2 = OUTLINED_FUNCTION_58();
  v3(v2);
  return v0;
}

uint64_t sub_227CCB9FC(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    v4 = OUTLINED_FUNCTION_356(0, a2);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v4, v5);
    OUTLINED_FUNCTION_78_0();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_227CCBA3C()
{
  OUTLINED_FUNCTION_37();
  v4 = OUTLINED_FUNCTION_397(v1, v2, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_6_15();
  v6 = OUTLINED_FUNCTION_58();
  v7(v6);
  return v0;
}

uint64_t sub_227CCBAFC()
{
  OUTLINED_FUNCTION_37();
  v4 = OUTLINED_FUNCTION_397(v1, v2, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_6_15();
  v6 = OUTLINED_FUNCTION_58();
  v7(v6);
  return v0;
}

uint64_t sub_227CCBB4C(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_356(a1, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_62_0();
  (*(v5 + 8))(a1);
  return a1;
}

uint64_t sub_227CCBBA0()
{
  OUTLINED_FUNCTION_37();
  v1(0);
  OUTLINED_FUNCTION_6_15();
  v2 = OUTLINED_FUNCTION_58();
  v3(v2);
  return v0;
}

void *OUTLINED_FUNCTION_60_9@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  result[7] = a2;
  result[8] = v2;
  result[4] = v3;
  result[12] = a2;
  result[13] = v2;
  result[9] = v4;
  return result;
}

__n128 OUTLINED_FUNCTION_67_2()
{
  result = *v1;
  *v0 = *v1;
  return result;
}

uint64_t OUTLINED_FUNCTION_87_8()
{
  *(v4 - 128) = v0;
  *(v4 - 120) = v2;

  return sub_227CBAE28(v0, v2, v1, v3);
}

uint64_t OUTLINED_FUNCTION_98_6(uint64_t result, uint64_t a2)
{
  *(v2 - 96) = a2;
  *(v2 - 88) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_109_6(uint64_t a1)
{
  __swift_getEnumTagSinglePayload(v2, 1, a1);

  return sub_227CCBB4C(v2, v1);
}

void OUTLINED_FUNCTION_128_4(uint64_t a1@<X8>)
{
  *a1 = v3;
  *(a1 + 8) = *(v1 + 616);
  *(a1 + 16) = v2;
}

uint64_t OUTLINED_FUNCTION_140_2(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = (*(a5 + 48) + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  return result;
}

uint64_t OUTLINED_FUNCTION_143_2(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_144_5(uint64_t a1)
{

  return sub_227D4D7C8();
}

uint64_t OUTLINED_FUNCTION_146_6(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
}

uint64_t sub_227CCC030()
{
  v0 = sub_227D4CAB8();
  __swift_allocate_value_buffer(v0, qword_280E7D410);
  __swift_project_value_buffer(v0, qword_280E7D410);
  sub_227D4AA68();
  return sub_227D4CAA8();
}

uint64_t sub_227CCC094@<X0>(uint64_t a1@<X8>)
{
  if (qword_280E7D0C0 != -1)
  {
    OUTLINED_FUNCTION_0_53(&qword_280E7D0C0);
  }

  v2 = sub_227D4CAB8();
  v3 = __swift_project_value_buffer(v2, qword_280E7D410);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t ActivitiesMessageExtensionService.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC16GameServicesCore33ActivitiesMessageExtensionService_id;
  sub_227D49EF8();
  OUTLINED_FUNCTION_62_0();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

uint64_t sub_227CCC1AC()
{
  v0 = sub_227D49EF8();
  __swift_allocate_value_buffer(v0, qword_280E7BD48);
  __swift_project_value_buffer(v0, qword_280E7BD48);
  return sub_227D49E98();
}

uint64_t sub_227CCC1F8()
{
  if (_MergedGlobals_14 != -1)
  {
    OUTLINED_FUNCTION_23_9(&_MergedGlobals_14);
  }

  v0 = sub_227D49EF8();

  return __swift_project_value_buffer(v0, qword_280E7BD48);
}

uint64_t static ActivitiesMessageExtensionService.actorID.getter@<X0>(uint64_t a1@<X8>)
{
  if (_MergedGlobals_14 != -1)
  {
    OUTLINED_FUNCTION_23_9(&_MergedGlobals_14);
  }

  v2 = sub_227D49EF8();
  v3 = __swift_project_value_buffer(v2, qword_280E7BD48);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t ActivitiesMessageExtensionService.__allocating_init(actorSystem:dataProvider:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  ActivitiesMessageExtensionService.init(actorSystem:dataProvider:)(a1, a2);
  return v4;
}

uint64_t ActivitiesMessageExtensionService.init(actorSystem:dataProvider:)(uint64_t a1, uint64_t a2)
{
  v13 = a2;
  v12 = sub_227D49EF8();
  v4 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_defaultActor_initialize();
  v7 = OBJC_IVAR____TtC16GameServicesCore33ActivitiesMessageExtensionService_actorSystem;
  *(v2 + OBJC_IVAR____TtC16GameServicesCore33ActivitiesMessageExtensionService_actorSystem) = a1;
  type metadata accessor for ActivitiesMessageExtensionService(0);
  v14 = a1;
  sub_227D49D78();
  OUTLINED_FUNCTION_1_33();
  sub_227B0F88C(v8);
  OUTLINED_FUNCTION_0_54();
  sub_227B0F88C(v9);

  OUTLINED_FUNCTION_105();
  sub_227D493B8();
  (*(v4 + 32))(v2 + OBJC_IVAR____TtC16GameServicesCore33ActivitiesMessageExtensionService_id, v6, v12);
  *(v2 + OBJC_IVAR____TtC16GameServicesCore33ActivitiesMessageExtensionService_dataProvider) = v13;
  v14 = *(v2 + v7);

  OUTLINED_FUNCTION_105();
  sub_227D49398();

  return v2;
}

uint64_t type metadata accessor for ActivitiesMessageExtensionService(uint64_t a1)
{
  result = qword_27D801BD0;
  if (!qword_27D801BD0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ActivitiesMessageExtensionService.refreshGameActivity(game:scope:)()
{
  OUTLINED_FUNCTION_6();
  v1[3] = v2;
  v1[4] = v0;
  v1[2] = v3;
  v4 = sub_227D49458();
  v1[5] = v4;
  OUTLINED_FUNCTION_10_0(v4);
  v1[6] = v5;
  v1[7] = OUTLINED_FUNCTION_30();
  v6 = sub_227D4A058();
  v1[8] = v6;
  OUTLINED_FUNCTION_10_0(v6);
  v1[9] = v7;
  v1[10] = OUTLINED_FUNCTION_30();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6A00, &unk_227D4EB40);
  v1[11] = v8;
  OUTLINED_FUNCTION_10_0(v8);
  v1[12] = v9;
  v1[13] = OUTLINED_FUNCTION_30();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6888, &unk_227D4E630);
  v1[14] = v10;
  OUTLINED_FUNCTION_10_0(v10);
  v1[15] = v11;
  v1[16] = OUTLINED_FUNCTION_30();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6A08, &qword_227D4EB50);
  v1[17] = v12;
  OUTLINED_FUNCTION_10_0(v12);
  v1[18] = v13;
  v1[19] = OUTLINED_FUNCTION_30();
  v14 = sub_227D49D58();
  v1[20] = v14;
  OUTLINED_FUNCTION_10_0(v14);
  v1[21] = v15;
  v1[22] = OUTLINED_FUNCTION_30();
  v16 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v16, v17, v18);
}

uint64_t sub_227CCC7A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_111();
  if (swift_distributed_actor_is_remote())
  {
    v13 = v12[22];
    OUTLINED_FUNCTION_36();
    v14 = OUTLINED_FUNCTION_9_1();
    v15(v14);
    OUTLINED_FUNCTION_14_1();
    OUTLINED_FUNCTION_7_1(&qword_280E7B830);
    OUTLINED_FUNCTION_6_19(&qword_280E7B838);
    v16 = OUTLINED_FUNCTION_10();
    OUTLINED_FUNCTION_44_1(v16, v17, v18, v19);
    if (v13)
    {
      v20 = v12[21];
      (*(v12[18] + 8))(v12[19], v12[17]);
      (*(v20 + 8))(v12[22], v12[20]);

      OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_33();

      __asm { BRAA            X1, X16 }
    }

    (*(v12[9] + 16))(v12[10], v12[3], v12[8]);
    sub_227D49478();
    sub_227B0F88C(&qword_27D7E6A10);
    sub_227B0F88C(&qword_27D7E6A18);
    sub_227D49D18();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E69C0, &qword_227D4EAD0);
    sub_227D49D28();
    sub_227D49D08();
    sub_227D49468();
    v28 = swift_task_alloc();
    v12[23] = v28;
    type metadata accessor for ActivitiesMessageExtensionService(0);
    OUTLINED_FUNCTION_0_54();
    sub_227B0F88C(v29);
    OUTLINED_FUNCTION_48_0();
    *v28 = v30;
    v28[1] = sub_227CCCB80;
    OUTLINED_FUNCTION_19_1();
    OUTLINED_FUNCTION_33();

    return MEMORY[0x282164B10](v31, v32, v33, v34, v35, v36, v37, v38, a9, a10, a11, a12);
  }

  else
  {
    v21 = swift_task_alloc();
    v12[25] = v21;
    *v21 = v12;
    v21[1] = sub_227BC686C;
    OUTLINED_FUNCTION_53(v12[2]);
    OUTLINED_FUNCTION_33();

    return sub_227CCD318(v22, v23);
  }
}

uint64_t sub_227CCCB80()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_2();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v5 = v4;
  *(v6 + 192) = v0;

  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_227CCCC7C()
{
  OUTLINED_FUNCTION_111();
  v1 = v0[19];
  v2 = v0[17];
  v3 = v0[18];
  v5 = v0[12];
  v4 = v0[13];
  v6 = v0[11];
  (*(v0[6] + 8))(v0[7], v0[5]);
  (*(v5 + 8))(v4, v6);
  (*(v3 + 8))(v1, v2);
  v7 = OUTLINED_FUNCTION_57_0();
  v8(v7);

  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_72();

  return v9();
}

uint64_t sub_227CCCD9C()
{
  OUTLINED_FUNCTION_51_0();
  (*(v0[6] + 8))(v0[7], v0[5]);
  v1 = OUTLINED_FUNCTION_42();
  v2(v1);
  v3 = OUTLINED_FUNCTION_22_1();
  v4(v3);
  (*(v0[21] + 8))(v0[22], v0[20]);

  OUTLINED_FUNCTION_18();

  return v5();
}

uint64_t sub_227CCCEA4(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v2[2] = *a2;
  v2[3] = *(v4 - 8);
  v2[4] = swift_task_alloc();
  result = swift_conformsToProtocol2();
  if (!result)
  {
    __break(1u);
    goto LABEL_9;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  sub_227D49CF8();
  v6 = a2[1];
  v2[5] = v6;
  v2[6] = *(v6 - 8);
  v2[7] = swift_task_alloc();
  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  sub_227D49CF8();
  v7 = swift_task_alloc();
  v2[8] = v7;
  *v7 = v2;
  v7[1] = sub_227CCD144;

  return ActivitiesMessageExtensionService.refreshGameActivity(game:scope:)();
}

uint64_t sub_227CCD144()
{
  OUTLINED_FUNCTION_111();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_80_0();
  v1 = v0;
  OUTLINED_FUNCTION_5_4();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_148();
  v4(v3);
  v5 = OUTLINED_FUNCTION_9_2();
  v6(v5);

  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_72();

  return v7();
}

uint64_t sub_227CCD318(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_2_0(sub_227CCD338, v2);
}

uint64_t sub_227CCD338()
{
  OUTLINED_FUNCTION_6();
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *v1 = v0;
  v1[1] = sub_227B45D74;
  OUTLINED_FUNCTION_53(*(v0 + 16));

  return sub_227B4EFC0();
}

uint64_t ActivitiesMessageExtensionService.refreshGameActivity(game:)()
{
  OUTLINED_FUNCTION_6();
  v1[2] = v2;
  v1[3] = v0;
  v3 = sub_227D49458();
  v1[4] = v3;
  OUTLINED_FUNCTION_10_0(v3);
  v1[5] = v4;
  v1[6] = OUTLINED_FUNCTION_30();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6888, &unk_227D4E630);
  v1[7] = v5;
  OUTLINED_FUNCTION_10_0(v5);
  v1[8] = v6;
  v1[9] = OUTLINED_FUNCTION_30();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6A08, &qword_227D4EB50);
  v1[10] = v7;
  OUTLINED_FUNCTION_10_0(v7);
  v1[11] = v8;
  v1[12] = OUTLINED_FUNCTION_30();
  v9 = sub_227D49D58();
  v1[13] = v9;
  OUTLINED_FUNCTION_10_0(v9);
  v1[14] = v10;
  v1[15] = OUTLINED_FUNCTION_30();
  v11 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_227CCD578(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_111();
  if (swift_distributed_actor_is_remote())
  {
    v13 = v12[15];
    OUTLINED_FUNCTION_36();
    v14 = OUTLINED_FUNCTION_9_1();
    v15(v14);
    OUTLINED_FUNCTION_14_1();
    OUTLINED_FUNCTION_7_1(&qword_280E7B830);
    OUTLINED_FUNCTION_6_19(&qword_280E7B838);
    v16 = OUTLINED_FUNCTION_10();
    OUTLINED_FUNCTION_44_1(v16, v17, v18, v19);
    if (v13)
    {
      v20 = v12[14];
      (*(v12[11] + 8))(v12[12], v12[10]);
      (*(v20 + 8))(v12[15], v12[13]);

      OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_33();

      __asm { BRAA            X1, X16 }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E69C0, &qword_227D4EAD0);
    sub_227D49D28();
    sub_227D49D08();
    sub_227D49468();
    v27 = swift_task_alloc();
    v12[16] = v27;
    type metadata accessor for ActivitiesMessageExtensionService(0);
    OUTLINED_FUNCTION_0_54();
    sub_227B0F88C(v28);
    OUTLINED_FUNCTION_48_0();
    *v27 = v29;
    v27[1] = sub_227CCD834;
    OUTLINED_FUNCTION_19_1();
    OUTLINED_FUNCTION_33();

    return MEMORY[0x282164B10](v30, v31, v32, v33, v34, v35, v36, v37, a9, a10, a11, a12);
  }

  else
  {
    v23 = swift_task_alloc();
    v12[18] = v23;
    *v23 = v12;
    v23[1] = sub_227BC46B4;
    OUTLINED_FUNCTION_53(v12[2]);
    OUTLINED_FUNCTION_33();

    return sub_227CCDCF8(v24);
  }
}

uint64_t sub_227CCD834()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_2();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v5 = v4;
  *(v6 + 136) = v0;

  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_227CCD930()
{
  OUTLINED_FUNCTION_51_0();
  (*(v0[5] + 8))(v0[6], v0[4]);
  v1 = OUTLINED_FUNCTION_42();
  v2(v1);
  v3 = OUTLINED_FUNCTION_22_1();
  v4(v3);

  OUTLINED_FUNCTION_18();

  return v5();
}

uint64_t sub_227CCDA04(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v2[2] = *a2;
  v2[3] = *(v3 - 8);
  v2[4] = swift_task_alloc();
  result = swift_conformsToProtocol2();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  sub_227D49CF8();
  v5 = swift_task_alloc();
  v2[5] = v5;
  *v5 = v2;
  v5[1] = sub_227CCDB9C;

  return ActivitiesMessageExtensionService.refreshGameActivity(game:)();
}

uint64_t sub_227CCDB9C()
{
  OUTLINED_FUNCTION_51_0();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_80_0();
  v1 = v0;
  OUTLINED_FUNCTION_5_4();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_9_2();
  v4(v3);

  OUTLINED_FUNCTION_18();

  return v5();
}

uint64_t sub_227CCDCF8(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_2_0(sub_227CCDD14, v1);
}

uint64_t sub_227CCDD14()
{
  OUTLINED_FUNCTION_6();
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_227B2F79C;
  OUTLINED_FUNCTION_53(*(v0 + 16));

  return sub_227B4EC94();
}

uint64_t ActivitiesMessageExtensionService.listGameActivityDefinitions(game:filters:after:)()
{
  OUTLINED_FUNCTION_6();
  v1[6] = v2;
  v1[7] = v0;
  v1[4] = v3;
  v1[5] = v4;
  v1[3] = v5;
  v6 = sub_227D49458();
  v1[8] = v6;
  OUTLINED_FUNCTION_10_0(v6);
  v1[9] = v7;
  v1[10] = OUTLINED_FUNCTION_30();
  v1[11] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6908, &unk_227D4E690);
  v1[12] = OUTLINED_FUNCTION_30();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6A20, &unk_227D4EC60);
  v1[13] = v8;
  OUTLINED_FUNCTION_10_0(v8);
  v1[14] = v9;
  v1[15] = OUTLINED_FUNCTION_30();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6A28, &qword_227D636E0);
  v1[16] = v10;
  OUTLINED_FUNCTION_10_0(v10);
  v1[17] = v11;
  v1[18] = OUTLINED_FUNCTION_30();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6888, &unk_227D4E630);
  v1[19] = v12;
  OUTLINED_FUNCTION_10_0(v12);
  v1[20] = v13;
  v1[21] = OUTLINED_FUNCTION_30();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6A08, &qword_227D4EB50);
  v1[22] = v14;
  OUTLINED_FUNCTION_10_0(v14);
  v1[23] = v15;
  v1[24] = OUTLINED_FUNCTION_30();
  v16 = sub_227D49D58();
  v1[25] = v16;
  OUTLINED_FUNCTION_10_0(v16);
  v1[26] = v17;
  v1[27] = OUTLINED_FUNCTION_30();
  v18 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v18, v19, v20);
}

uint64_t sub_227CCE040()
{
  OUTLINED_FUNCTION_111();
  if (swift_distributed_actor_is_remote())
  {
    v1 = v0[27];
    OUTLINED_FUNCTION_36();
    v2 = OUTLINED_FUNCTION_9_1();
    v3(v2);
    OUTLINED_FUNCTION_14_1();
    OUTLINED_FUNCTION_7_1(&qword_280E7B830);
    OUTLINED_FUNCTION_6_19(&qword_280E7B838);
    v4 = OUTLINED_FUNCTION_10();
    OUTLINED_FUNCTION_44_1(v4, v5, v6, v7);
    if (v1)
    {
      (*(v0[23] + 8))(v0[24], v0[22]);
      v8 = OUTLINED_FUNCTION_57_0();
      v9(v8);
      OUTLINED_FUNCTION_115_0(v0[27]);

      OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_72();

      return v17();
    }

    else
    {
      v0[2] = v0[5];
      sub_227D4CE58();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6A30, &unk_227D62390);
      sub_227D49478();
      sub_227CCF26C(&qword_27D7E6A38);
      sub_227CCF26C(&qword_27D7E6A58);
      OUTLINED_FUNCTION_10();
      sub_227D49D18();
      sub_227B41B14(v0[6], v0[12]);
      sub_227D49478();
      sub_227B15FB0();
      sub_227B16064();
      sub_227D49D18();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E69C0, &qword_227D4EAD0);
      sub_227D49D28();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6A70, &qword_227D623A0);
      sub_227B15ABC(&qword_27D7E6A78);
      v19 = sub_227B15ABC(&qword_27D7E6A80);
      OUTLINED_FUNCTION_17(v19);
      sub_227D49D08();
      sub_227D49468();
      v20 = swift_task_alloc();
      v0[28] = v20;
      type metadata accessor for ActivitiesMessageExtensionService(0);
      OUTLINED_FUNCTION_0_54();
      sub_227B0F88C(v21);
      OUTLINED_FUNCTION_48_0();
      *v20 = v22;
      v20[1] = sub_227CCE65C;
      OUTLINED_FUNCTION_5_7();
      OUTLINED_FUNCTION_72();

      return MEMORY[0x282164B00](v23);
    }
  }

  else
  {
    v10 = swift_task_alloc();
    v0[30] = v10;
    *v10 = v0;
    v10[1] = sub_227CCE88C;
    OUTLINED_FUNCTION_72();

    return sub_227CCF1A0(v11, v12, v13, v14);
  }
}

uint64_t sub_227CCE65C()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_2();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v5 = v4;
  *(v6 + 232) = v0;

  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_227CCE758()
{
  v9 = OUTLINED_FUNCTION_53_0();
  v10(v9);
  (*(v2 + 8))(v6, v7);
  (*(v0 + 8))(v4, v5);
  (*(v1 + 8))(v13, v3);
  (*(v8 + 8))();

  OUTLINED_FUNCTION_18();

  return v11();
}

uint64_t sub_227CCE88C()
{
  v1 = *v0;
  OUTLINED_FUNCTION_5_4();
  *v2 = v1;

  OUTLINED_FUNCTION_27();

  return v3();
}

uint64_t sub_227CCEA4C()
{
  v10 = OUTLINED_FUNCTION_53_0();
  v11(v10);
  (*(v2 + 8))(v7, v8);
  (*(v0 + 8))(v5, v6);
  (*(v1 + 8))(v14, v4);
  (*(v9 + 8))();
  OUTLINED_FUNCTION_115_0(*(v3 + 216));

  OUTLINED_FUNCTION_18();

  return v12();
}

uint64_t sub_227CCEB70(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v2[2] = *a2;
  v2[3] = *(v4 - 8);
  v2[4] = swift_task_alloc();
  result = swift_conformsToProtocol2();
  if (!result)
  {
    __break(1u);
    goto LABEL_11;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  sub_227D49CF8();
  v6 = a2[1];
  v2[5] = v6;
  v2[6] = *(v6 - 8);
  v2[7] = swift_task_alloc();
  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  sub_227D49CF8();
  v7 = a2[2];
  v2[8] = v7;
  v2[9] = *(v7 - 8);
  v2[10] = swift_task_alloc();
  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_15:
    __break(1u);
    return result;
  }

  sub_227D49CF8();
  v8 = swift_task_alloc();
  v2[11] = v8;
  *v8 = v2;
  v8[1] = sub_227CCEF30;

  return ActivitiesMessageExtensionService.listGameActivityDefinitions(game:filters:after:)();
}

uint64_t sub_227CCEF30()
{
  OUTLINED_FUNCTION_14();
  v1 = v0[10];
  v14 = v0[9];
  v2 = v0[8];
  v3 = v0[7];
  v13 = v0[6];
  v4 = v0[5];
  v5 = v0[4];
  v6 = v0[3];
  v7 = v0[2];
  OUTLINED_FUNCTION_80_0();
  v9 = v8;
  OUTLINED_FUNCTION_5_4();
  *v10 = v9;

  (*(v6 + 8))(v5, v7);
  (*(v13 + 8))(v3, v4);
  (*(v14 + 8))(v1, v2);

  OUTLINED_FUNCTION_18();

  return v11();
}

uint64_t sub_227CCF1A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return OUTLINED_FUNCTION_2_0(sub_227CCF1C4, v4);
}

uint64_t sub_227CCF1C4()
{
  OUTLINED_FUNCTION_6();
  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  *v1 = v0;
  v1[1] = sub_227B417C4;

  return sub_227B53F5C();
}

unint64_t sub_227CCF26C(uint64_t a1)
{
  result = OUTLINED_FUNCTION_217(a1);
  if (!result)
  {
    v4 = v3;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7E6A30, &unk_227D62390);
    v4();
    OUTLINED_FUNCTION_36_8();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t ActivitiesMessageExtensionService.describeGameActivityDefinitions(gameActivityDefinitions:)()
{
  OUTLINED_FUNCTION_6();
  v1[4] = v2;
  v1[5] = v0;
  v3 = sub_227D49458();
  v1[6] = v3;
  OUTLINED_FUNCTION_10_0(v3);
  v1[7] = v4;
  v1[8] = OUTLINED_FUNCTION_30();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6A88, &qword_227D62480);
  v1[9] = v5;
  OUTLINED_FUNCTION_10_0(v5);
  v1[10] = v6;
  v1[11] = OUTLINED_FUNCTION_30();
  v7 = sub_227D49D58();
  v1[12] = v7;
  OUTLINED_FUNCTION_10_0(v7);
  v1[13] = v8;
  v1[14] = OUTLINED_FUNCTION_30();
  v9 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_227CCF420()
{
  OUTLINED_FUNCTION_111();
  if (swift_distributed_actor_is_remote())
  {
    v1 = v0[4];
    OUTLINED_FUNCTION_36();
    v0[2] = v1;
    sub_227D4CE58();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6A90, &unk_227D62490);
    sub_227D49478();
    sub_227CCFFC0(&qword_27D7E6A98);
    sub_227CCFFC0(&qword_27D7E6AB0);
    OUTLINED_FUNCTION_10();
    sub_227D49D18();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E69C0, &qword_227D4EAD0);
    sub_227D49D28();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6AC0, &unk_227D624A0);
    sub_227CD004C(&qword_27D7E6AC8);
    v2 = sub_227CD004C(&qword_27D7E6AE8);
    OUTLINED_FUNCTION_17(v2);
    sub_227D49D08();
    sub_227D49468();
    v7 = swift_task_alloc();
    v0[15] = v7;
    type metadata accessor for ActivitiesMessageExtensionService(0);
    OUTLINED_FUNCTION_0_54();
    sub_227B0F88C(v8);
    OUTLINED_FUNCTION_48_0();
    *v7 = v9;
    v7[1] = sub_227CCF81C;
    OUTLINED_FUNCTION_5_7();
    OUTLINED_FUNCTION_72();

    return MEMORY[0x282164B00](v10);
  }

  else
  {
    v3 = swift_task_alloc();
    v0[17] = v3;
    *v3 = v0;
    v3[1] = sub_227CCF9D4;
    OUTLINED_FUNCTION_53(v0[4]);
    OUTLINED_FUNCTION_72();

    return sub_227CCFF04(v4);
  }
}

uint64_t sub_227CCF81C()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_2();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v5 = v4;
  *(v6 + 128) = v0;

  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_227CCF918()
{
  OUTLINED_FUNCTION_51_0();
  v1 = OUTLINED_FUNCTION_83();
  v2(v1);
  v3 = OUTLINED_FUNCTION_42();
  v4(v3);
  v5 = OUTLINED_FUNCTION_22_1();
  v6(v5);
  v7 = *(v0 + 24);

  OUTLINED_FUNCTION_115();

  return v8(v7);
}

uint64_t sub_227CCF9D4()
{
  OUTLINED_FUNCTION_51_0();
  v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v5 = v4;

  v7 = *(v4 + 8);
  if (!v0)
  {
    v6 = v3;
  }

  return v7(v6);
}

uint64_t sub_227CCFB34()
{
  OUTLINED_FUNCTION_51_0();
  v0 = OUTLINED_FUNCTION_83();
  v1(v0);
  v2 = OUTLINED_FUNCTION_42();
  v3(v2);
  v4 = OUTLINED_FUNCTION_22_1();
  v5(v4);

  OUTLINED_FUNCTION_18();

  return v6();
}

uint64_t sub_227CCFBE8(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3[2] = a3;
  v4 = *a2;
  v3[3] = *a2;
  v3[4] = *(v4 - 8);
  v3[5] = swift_task_alloc();
  result = swift_conformsToProtocol2();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  sub_227D49CF8();
  v6 = swift_task_alloc();
  v3[6] = v6;
  *v6 = v3;
  v6[1] = sub_227CCFD88;

  return ActivitiesMessageExtensionService.describeGameActivityDefinitions(gameActivityDefinitions:)();
}

uint64_t sub_227CCFD88()
{
  OUTLINED_FUNCTION_51_0();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_80_0();
  *v0 = v1;
  *v3 = v2;

  v4 = OUTLINED_FUNCTION_9_2();
  v5(v4);

  OUTLINED_FUNCTION_18();

  return v6();
}

uint64_t sub_227CCFF04(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_2_0(sub_227CCFF20, v1);
}

uint64_t sub_227CCFF20()
{
  OUTLINED_FUNCTION_6();
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_227B44998;
  OUTLINED_FUNCTION_53(*(v0 + 16));

  return sub_227B55528();
}

unint64_t sub_227CCFFC0(uint64_t a1)
{
  result = OUTLINED_FUNCTION_217(a1);
  if (!result)
  {
    v4 = v3;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7E6A90, &unk_227D62490);
    sub_227B15ABC(v4);
    OUTLINED_FUNCTION_36_8();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_227CD004C(uint64_t a1)
{
  result = OUTLINED_FUNCTION_217(a1);
  if (!result)
  {
    v4 = v3;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7E6AC0, &unk_227D624A0);
    v4();
    OUTLINED_FUNCTION_36_8();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t static ActivitiesMessageExtensionService.resolve(id:using:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for ActivitiesMessageExtensionService(0);
  sub_227D49D78();
  OUTLINED_FUNCTION_1_33();
  sub_227B0F88C(v5);
  OUTLINED_FUNCTION_0_54();
  sub_227B0F88C(v6);
  v7 = sub_227D493A8();
  v8 = v7;
  if (!v2 && !v7)
  {
    v8 = swift_distributedActor_remote_initialize();
    v9 = OBJC_IVAR____TtC16GameServicesCore33ActivitiesMessageExtensionService_id;
    sub_227D49EF8();
    OUTLINED_FUNCTION_62_0();
    (*(v10 + 16))(v8 + v9, a1);
    *(v8 + OBJC_IVAR____TtC16GameServicesCore33ActivitiesMessageExtensionService_actorSystem) = a2;
  }

  return v8;
}

uint64_t ActivitiesMessageExtensionService.deinit()
{
  v1 = OBJC_IVAR____TtC16GameServicesCore33ActivitiesMessageExtensionService_id;
  sub_227D49D78();
  OUTLINED_FUNCTION_1_33();
  sub_227B0F88C(v2);
  sub_227D493C8();
  sub_227D49EF8();
  OUTLINED_FUNCTION_62_0();
  (*(v3 + 8))(v0 + v1);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t ActivitiesMessageExtensionService.__deallocating_deinit()
{
  if (swift_distributed_actor_is_remote())
  {
    v1 = OBJC_IVAR____TtC16GameServicesCore33ActivitiesMessageExtensionService_id;
    sub_227D49EF8();
    OUTLINED_FUNCTION_62_0();
    (*(v2 + 8))(v0 + v1);

    swift_defaultActor_destroy();
  }

  else
  {
    ActivitiesMessageExtensionService.deinit();
  }

  return MEMORY[0x282200960](v0);
}

uint64_t sub_227CD0364()
{
  sub_227D4DB58();
  type metadata accessor for ActivitiesMessageExtensionService(0);
  OUTLINED_FUNCTION_0_54();
  sub_227B0F88C(v0);
  sub_227D4CEA8();
  return sub_227D4DB98();
}

uint64_t ActivitiesMessageExtensionService.unownedExecutor.getter()
{
  if ((sub_227D49448() & 1) == 0)
  {
    type metadata accessor for ActivitiesMessageExtensionService(0);
    OUTLINED_FUNCTION_0_54();
    sub_227B0F88C(v1);
    OUTLINED_FUNCTION_57_0();
    return sub_227D49388();
  }

  return v0;
}

uint64_t sub_227CD0458@<X0>(uint64_t *a1@<X8>)
{
  result = ActivitiesMessageExtensionService.actorSystem.getter();
  *a1 = result;
  return result;
}

uint64_t sub_227CD04F8()
{
  type metadata accessor for ActivitiesMessageExtensionService(0);
  OUTLINED_FUNCTION_0_54();
  sub_227B0F88C(v0);
  OUTLINED_FUNCTION_9_2();
  return sub_227D49418();
}

uint64_t sub_227CD0560(uint64_t a1)
{
  sub_227D4DB58();
  type metadata accessor for ActivitiesMessageExtensionService(0);
  sub_227D4CEA8();
  return sub_227D4DB98();
}

uint64_t sub_227CD0768()
{
  OUTLINED_FUNCTION_20();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_50(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_16_1(v1);

  return ActivitiesMessageExtensionService.refreshGameActivity(game:scope:)();
}

uint64_t sub_227CD07FC()
{
  OUTLINED_FUNCTION_6();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_50(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_26(v1);

  return ActivitiesMessageExtensionService.refreshGameActivity(game:)();
}

uint64_t sub_227CD0884()
{
  OUTLINED_FUNCTION_51_0();
  OUTLINED_FUNCTION_168();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_50(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_76(v1);

  return ActivitiesMessageExtensionService.listGameActivityDefinitions(game:filters:after:)();
}

uint64_t sub_227CD0920()
{
  OUTLINED_FUNCTION_6();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_50(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_26(v1);

  return ActivitiesMessageExtensionService.describeGameActivityDefinitions(gameActivityDefinitions:)();
}

uint64_t sub_227CD09A8()
{
  type metadata accessor for ActivitiesMessageExtensionService(0);
  OUTLINED_FUNCTION_0_54();
  sub_227B0F88C(v0);
  v1 = OUTLINED_FUNCTION_9_2();

  return MEMORY[0x2821FF4E0](v1);
}

uint64_t sub_227CD0A20(uint64_t a1)
{
  type metadata accessor for ActivitiesMessageExtensionService(0);
  OUTLINED_FUNCTION_0_54();
  sub_227B0F88C(v1);
  OUTLINED_FUNCTION_5_25();
  sub_227B0F88C(v2);
  return sub_227D49428();
}

uint64_t sub_227CD0AC8@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for ActivitiesMessageExtensionService(0);
  OUTLINED_FUNCTION_0_54();
  sub_227B0F88C(v3);
  OUTLINED_FUNCTION_5_25();
  sub_227B0F88C(v4);
  OUTLINED_FUNCTION_10();
  result = sub_227D49438();
  if (!v1)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_227CD0B78(uint64_t a1)
{
  result = sub_227D49EF8();
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

uint64_t dispatch thunk of ActivitiesMessageExtensionService.refreshGameActivity(game:scope:)()
{
  OUTLINED_FUNCTION_51_0();
  OUTLINED_FUNCTION_45();
  v6 = (*(v0 + 120) + **(v0 + 120));
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_50(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_16_1(v2);

  return v6(v4);
}

uint64_t dispatch thunk of ActivitiesMessageExtensionService.refreshGameActivity(game:)()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_45();
  v6 = (*(v0 + 128) + **(v0 + 128));
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_50(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_26(v2);

  return v6(v4);
}

uint64_t dispatch thunk of ActivitiesMessageExtensionService.listGameActivityDefinitions(game:filters:after:)()
{
  OUTLINED_FUNCTION_168();
  OUTLINED_FUNCTION_45();
  v6 = (*(v0 + 136) + **(v0 + 136));
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_50(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_76(v2);

  return v6(v4);
}

uint64_t dispatch thunk of ActivitiesMessageExtensionService.describeGameActivityDefinitions(gameActivityDefinitions:)()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_45();
  v6 = (*(v0 + 144) + **(v0 + 144));
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_50(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_26(v2);

  return v6(v4);
}

uint64_t OUTLINED_FUNCTION_23_9(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_227CD10D8()
{
  OUTLINED_FUNCTION_20();
  *(v1 + 184) = v23;
  *(v1 + 192) = v0;
  *(v1 + 441) = v2;
  *(v1 + 168) = v3;
  *(v1 + 176) = v22;
  *(v1 + 440) = v4;
  *(v1 + 152) = v5;
  *(v1 + 160) = v6;
  *(v1 + 136) = v7;
  *(v1 + 144) = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6978, &qword_227D4EA70);
  *(v1 + 200) = v9;
  OUTLINED_FUNCTION_10_0(v9);
  *(v1 + 208) = v10;
  *(v1 + 216) = OUTLINED_FUNCTION_30();
  v11 = sub_227D4CAB8();
  *(v1 + 224) = v11;
  OUTLINED_FUNCTION_10_0(v11);
  *(v1 + 232) = v12;
  *(v1 + 240) = OUTLINED_FUNCTION_30();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E7118, &qword_227D51020);
  OUTLINED_FUNCTION_5(v13);
  *(v1 + 248) = OUTLINED_FUNCTION_30();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6888, &unk_227D4E630);
  *(v1 + 256) = v14;
  OUTLINED_FUNCTION_10_0(v14);
  *(v1 + 264) = v15;
  *(v1 + 272) = OUTLINED_FUNCTION_30();
  v16 = sub_227D4B758();
  *(v1 + 280) = v16;
  OUTLINED_FUNCTION_10_0(v16);
  *(v1 + 288) = v17;
  *(v1 + 296) = OUTLINED_FUNCTION_298_1();
  *(v1 + 304) = swift_task_alloc();
  v18 = swift_task_alloc();
  *(v1 + 312) = v18;
  *v18 = v1;
  v19 = OUTLINED_FUNCTION_19_15(v18);

  return sub_227B24B80(v19);
}

uint64_t sub_227CD130C()
{
  OUTLINED_FUNCTION_116();
  OUTLINED_FUNCTION_51_0();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_0();
  *v4 = v3;
  *v4 = *v1;
  v3[40] = v5;
  v3[41] = v6;
  v3[42] = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_373_1();

    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_117_0();

    return v8(v7, v8, v9, v10, v11, v12, v13, v14);
  }

  else
  {
    OUTLINED_FUNCTION_15();
    OUTLINED_FUNCTION_117_0();

    return MEMORY[0x2822009F8](v16, v17, v18);
  }
}

uint64_t sub_227CD1464(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  OUTLINED_FUNCTION_111();
  if (v13[22])
  {
    v14 = swift_task_alloc();
    v13[43] = v14;
    *v14 = v13;
    OUTLINED_FUNCTION_19_15(v14);
    OUTLINED_FUNCTION_54_4();

    return sub_227B24FC4();
  }

  else
  {
    v17 = v13[42];
    v13[46] = 0;
    OUTLINED_FUNCTION_324_0(v13[24]);
    sub_227D4A7E8();
    if (v17)
    {
      OUTLINED_FUNCTION_387_1();

      OUTLINED_FUNCTION_231_0();

      OUTLINED_FUNCTION_19_0();
      OUTLINED_FUNCTION_54_4();

      return v19();
    }

    else
    {
      sub_227D4A6A8();
      v13[47] = v18;
      v21 = OUTLINED_FUNCTION_340_0();
      v22(v21);
      sub_227D4A7D8();
      v13[48] = v23;
      v24 = v13[25];
      sub_227CF3F60();
      v25 = OUTLINED_FUNCTION_215_2();
      if (__swift_getEnumTagSinglePayload(v25, v26, v24) == 1)
      {
        sub_227B1DE58(v13[31], &qword_27D7E7118, &qword_227D51020);
        v27 = 0;
      }

      else
      {
        sub_227D4A8F8();
        v27 = v28;
        (*(v13[26] + 8))(v13[31], v13[25]);
      }

      v13[49] = v27;
      swift_task_alloc();
      OUTLINED_FUNCTION_47();
      v13[50] = v29;
      *v29 = v30;
      OUTLINED_FUNCTION_138_2(v29);
      OUTLINED_FUNCTION_54_4();

      return sub_227B729D0(v31, v32, v33, v34, v35, v36, v37, v38, a9, a10, a11, a12, a13);
    }
  }
}

uint64_t sub_227CD17A0()
{
  OUTLINED_FUNCTION_116();
  OUTLINED_FUNCTION_51_0();
  OUTLINED_FUNCTION_58_8();
  v4 = v3;
  OUTLINED_FUNCTION_0();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_5_4();
  *v7 = v6;
  *(v4 + 352) = v0;

  if (v0)
  {

    OUTLINED_FUNCTION_373_1();

    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_117_0();

    return v9(v8, v9, v10, v11, v12, v13, v14, v15);
  }

  else
  {
    *(v4 + 360) = v1;
    OUTLINED_FUNCTION_16();
    OUTLINED_FUNCTION_117_0();

    return MEMORY[0x2822009F8](v17, v18, v19);
  }
}

uint64_t sub_227CD18F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  OUTLINED_FUNCTION_111();
  v14 = v13[44];
  v13[46] = v13[45];
  OUTLINED_FUNCTION_324_0(v13[24]);
  sub_227D4A7E8();
  if (v14)
  {
    OUTLINED_FUNCTION_387_1();

    OUTLINED_FUNCTION_231_0();

    OUTLINED_FUNCTION_19_0();

    return v16();
  }

  else
  {
    sub_227D4A6A8();
    v13[47] = v15;
    OUTLINED_FUNCTION_335_1();
    v18 = OUTLINED_FUNCTION_340_0();
    v19(v18);
    sub_227D4A7D8();
    v13[48] = v20;
    v21 = v13[25];
    sub_227CF3F60();
    v22 = OUTLINED_FUNCTION_215_2();
    if (__swift_getEnumTagSinglePayload(v22, v23, v21) == 1)
    {
      sub_227B1DE58(v13[31], &qword_27D7E7118, &qword_227D51020);
      v24 = 0;
    }

    else
    {
      sub_227D4A8F8();
      v24 = v25;
      (*(v13[26] + 8))(v13[31], v13[25]);
    }

    v13[49] = v24;
    swift_task_alloc();
    OUTLINED_FUNCTION_47();
    v13[50] = v26;
    *v26 = v27;
    OUTLINED_FUNCTION_138_2(v26);
    OUTLINED_FUNCTION_336_1();
    OUTLINED_FUNCTION_135_0();

    return sub_227B729D0(v28, v29, v30, v31, v32, v33, v34, v35, a9, a10, a11, a12, a13);
  }
}

uint64_t sub_227CD1BB4()
{
  OUTLINED_FUNCTION_183();
  OUTLINED_FUNCTION_119();
  v2 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 408) = v0;

  sub_227B26090(v2 + 16);
  if (v0)
  {
  }

  OUTLINED_FUNCTION_30_2();
  OUTLINED_FUNCTION_163();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_227CD2038()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  v1 = *v0;
  OUTLINED_FUNCTION_5_4();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_227CD211C()
{
  OUTLINED_FUNCTION_51_0();
  OUTLINED_FUNCTION_13_0(v0 + 12);
  OUTLINED_FUNCTION_32();
  v1 = swift_task_alloc();
  v0[53] = v1;
  *v1 = v0;
  v1[1] = sub_227CD2220;
  v2 = OUTLINED_FUNCTION_18_11(v0[38]);

  return v3(v2);
}

uint64_t sub_227CD2220()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_13();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v5 = v4;
  *(v6 + 432) = v0;

  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_227CD2318()
{
  OUTLINED_FUNCTION_111();
  v1 = v0[54];
  __swift_destroy_boxed_opaque_existential_0(v0 + 12);
  sub_227D4B678();
  sub_227D4A8E8();
  OUTLINED_FUNCTION_347_0();
  sub_227CD25A0();
  v2 = OUTLINED_FUNCTION_93_6();
  v3(v2);
  sub_227CD267C();
  v4 = v0[38];
  if (v1)
  {
    OUTLINED_FUNCTION_222_1();
    v5(v4);
    OUTLINED_FUNCTION_231_0();

    OUTLINED_FUNCTION_19_0();
  }

  else
  {
    (*(v0[36] + 8))(v0[38], v0[35]);

    OUTLINED_FUNCTION_15_0();
  }

  OUTLINED_FUNCTION_54_4();

  return v6();
}

uint64_t sub_227CD2474()
{
  OUTLINED_FUNCTION_116();
  OUTLINED_FUNCTION_51_0();
  OUTLINED_FUNCTION_362_1();

  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_117_0();

  return v1(v0, v1, v2, v3, v4, v5, v6, v7);
}

uint64_t sub_227CD24FC()
{
  OUTLINED_FUNCTION_116();
  OUTLINED_FUNCTION_51_0();
  OUTLINED_FUNCTION_222_1();
  v1();
  __swift_destroy_boxed_opaque_existential_0((v0 + 96));
  OUTLINED_FUNCTION_362_1();

  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_117_0();

  return v3(v2, v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_227CD25A0()
{
  v1 = v0[18];
  v2 = v0[19];
  __swift_project_boxed_opaque_existential_1(v0 + 15, v1);
  v6 = 2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6850, qword_227D54330);
  OUTLINED_FUNCTION_378();
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_227D4E520;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6978, &qword_227D4EA70);
  *(v3 + 32) = sub_227D4A5E8();
  *(v3 + 40) = v4;
  (*(v2 + 120))(&v6, v3, v1, v2);
}

void sub_227CD267C()
{
  OUTLINED_FUNCTION_351();
  OUTLINED_FUNCTION_360_1(v1);
  OUTLINED_FUNCTION_9();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_5_3();
  v39 = v3;
  v4 = OUTLINED_FUNCTION_382_0();
  v5 = OUTLINED_FUNCTION_5(v4);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_5_3();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6888, &unk_227D4E630);
  OUTLINED_FUNCTION_9();
  v40 = v6;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_67_1();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E68E0, &unk_227D50DE0);
  OUTLINED_FUNCTION_5(v8);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_26_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E67C0, &unk_227D4FB20);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_26_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6978, &qword_227D4EA70);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_103();
  v12 = sub_227D4A318();
  OUTLINED_FUNCTION_9();
  v14 = v13;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_3();
  v18 = v17 - v16;
  MEMORY[0x22AAA4460]();
  if ((v19 & 1) == 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E85E0, &qword_227D59C20);
    v20 = sub_227D4A328();
    OUTLINED_FUNCTION_10_0(v20);
    *(OUTLINED_FUNCTION_215_4() + 16) = xmmword_227D4E520;
    (*(v14 + 104))(v18, *MEMORY[0x277D0D160], v12);
    v21 = sub_227C1897C();
    sub_227B2819C(MEMORY[0x277D84A28], v21);
    v22 = sub_227D4DC18();
    OUTLINED_FUNCTION_275(v22);
  }

  sub_227D4B678();
  sub_227D4B678();
  sub_227D4A8E8();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E8CE8, &unk_227D5BA30);
  OUTLINED_FUNCTION_18_16(v23, &qword_27D7E6890);
  OUTLINED_FUNCTION_66_8();
  OUTLINED_FUNCTION_232_1();
  *(OUTLINED_FUNCTION_377_1() + 16) = xmmword_227D4E520;
  v24 = sub_227D4B708();
  OUTLINED_FUNCTION_376_0(v24, v25);
  sub_227D4A8B8();
  if (v41)
  {
    v26 = OUTLINED_FUNCTION_199_2();
    v27(v26);

LABEL_11:
    OUTLINED_FUNCTION_249_0();
    OUTLINED_FUNCTION_352();
    return;
  }

  OUTLINED_FUNCTION_21_7();
  sub_227CEE1E4();
  if (*(v28 + 16))
  {
    OUTLINED_FUNCTION_55_10();
    v31(v0, v29 + v30, v40);

    v32 = sub_227D4B6D8();
    if (!v33)
    {
      v32 = 0;
    }

    OUTLINED_FUNCTION_374_1(v32);
    v34 = OUTLINED_FUNCTION_350_1();
    v35(v34);

    OUTLINED_FUNCTION_21_7();
    sub_227CEE1E4();
    MEMORY[0x22AAA4440]();
    sub_227C1897C();
    sub_227B27F4C(MEMORY[0x277D84A28]);
    OUTLINED_FUNCTION_349_1();
    v36 = sub_227D4B698();
    if ((v36 & 0x100000000) == 0)
    {
      *v39 = v36;
    }

    v37 = OUTLINED_FUNCTION_295_0();
    v38(v37);
    OUTLINED_FUNCTION_201_3();
    goto LABEL_11;
  }

  __break(1u);
}

uint64_t sub_227CD2C50()
{
  OUTLINED_FUNCTION_20();
  v1[42] = v2;
  v1[43] = v0;
  v1[40] = v3;
  v1[41] = v4;
  v1[38] = v5;
  v1[39] = v6;
  v1[37] = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6978, &qword_227D4EA70);
  v1[44] = v8;
  OUTLINED_FUNCTION_10_0(v8);
  v1[45] = v9;
  v1[46] = OUTLINED_FUNCTION_30();
  v10 = sub_227D4CAB8();
  v1[47] = v10;
  OUTLINED_FUNCTION_10_0(v10);
  v1[48] = v11;
  v1[49] = OUTLINED_FUNCTION_298_1();
  v1[50] = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E7118, &qword_227D51020);
  OUTLINED_FUNCTION_5(v12);
  v1[51] = OUTLINED_FUNCTION_30();
  v13 = sub_227D4B758();
  v1[52] = v13;
  OUTLINED_FUNCTION_10_0(v13);
  v1[53] = v14;
  v1[54] = OUTLINED_FUNCTION_298_1();
  v1[55] = swift_task_alloc();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6888, &unk_227D4E630);
  v1[56] = v15;
  OUTLINED_FUNCTION_10_0(v15);
  v1[57] = v16;
  v1[58] = OUTLINED_FUNCTION_30();
  v17 = swift_task_alloc();
  v1[59] = v17;
  *v17 = v1;
  v18 = OUTLINED_FUNCTION_19_15(v17);

  return sub_227B24B80(v18);
}

uint64_t sub_227CD2E80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_183();
  OUTLINED_FUNCTION_119();
  OUTLINED_FUNCTION_14();
  v13 = v12;
  OUTLINED_FUNCTION_0();
  *v14 = v13;
  *v14 = *v11;
  v13[60] = v15;
  v13[61] = v16;
  v13[62] = v10;

  if (v10)
  {
    OUTLINED_FUNCTION_316_0();

    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_163();

    return v18(v17, v18, v19, v20, v21, v22, v23, v24, a9, a10);
  }

  else
  {
    OUTLINED_FUNCTION_15();
    OUTLINED_FUNCTION_163();

    return MEMORY[0x2822009F8](v26, v27, v28);
  }
}

uint64_t sub_227CD2FE0()
{
  OUTLINED_FUNCTION_111();
  if (!v0[41])
  {
    v4 = v0[62];
    v0[66] = 0;
    sub_227D4A838();
    if (!v4)
    {
      v5 = v0[57];
      v0[67] = sub_227D4A6A8();
      v0[68] = v6;
      v9 = v0[43];
      (*(v5 + 8))(v0[58], v0[56]);
      __swift_project_boxed_opaque_existential_1((v9 + 120), *(v9 + 144));
      OUTLINED_FUNCTION_286_1();
      OUTLINED_FUNCTION_28_2();
      swift_task_alloc();
      OUTLINED_FUNCTION_47();
      v0[69] = v10;
      *v10 = v11;
      OUTLINED_FUNCTION_119_7(v10);
      OUTLINED_FUNCTION_183_1();

      __asm { BRAA            X5, X16 }
    }

    OUTLINED_FUNCTION_80_6();

    OUTLINED_FUNCTION_19_0();
    OUTLINED_FUNCTION_183_1();

    __asm { BRAA            X1, X16 }
  }

  v1 = swift_task_alloc();
  v0[63] = v1;
  *v1 = v0;
  OUTLINED_FUNCTION_19_15(v1);
  OUTLINED_FUNCTION_183_1();

  return sub_227B24FC4();
}

uint64_t sub_227CD3234(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_183();
  OUTLINED_FUNCTION_119();
  OUTLINED_FUNCTION_58_8();
  v14 = v13;
  OUTLINED_FUNCTION_0();
  *v15 = v14;
  v16 = *v12;
  OUTLINED_FUNCTION_5_4();
  *v17 = v16;
  *(v14 + 512) = v10;

  if (v10)
  {

    OUTLINED_FUNCTION_316_0();

    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_163();

    return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10);
  }

  else
  {
    *(v14 + 520) = v11;
    OUTLINED_FUNCTION_16();
    OUTLINED_FUNCTION_163();

    return MEMORY[0x2822009F8](v27, v28, v29);
  }
}

void sub_227CD3390()
{
  OUTLINED_FUNCTION_111();
  v1 = v0[64];
  v0[66] = v0[65];
  sub_227D4A838();
  if (!v1)
  {
    v2 = v0[57];
    v0[67] = sub_227D4A6A8();
    v0[68] = v3;
    v4 = (v2 + 8);
    v7 = v0[43];
    (*v4)(v0[58], v0[56]);
    __swift_project_boxed_opaque_existential_1((v7 + 120), *(v7 + 144));
    OUTLINED_FUNCTION_286_1();
    OUTLINED_FUNCTION_28_2();
    swift_task_alloc();
    OUTLINED_FUNCTION_47();
    v0[69] = v8;
    *v8 = v9;
    OUTLINED_FUNCTION_119_7(v8);
    OUTLINED_FUNCTION_183_1();

    __asm { BRAA            X5, X16 }
  }

  OUTLINED_FUNCTION_80_6();

  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_183_1();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_227CD356C()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_13();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v5 = v4;
  *(v6 + 560) = v0;

  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_227CD3664()
{
  OUTLINED_FUNCTION_152();
  memcpy(v0 + 2, v0 + 12, 0x50uLL);
  v2 = v0[70];
  OUTLINED_FUNCTION_370_0();
  sub_227D4A848();
  v0[71] = v3;
  if (v2)
  {
    OUTLINED_FUNCTION_338_0();
    sub_227B26090((v0 + 22));

    sub_227B1DE58((v0 + 2), &qword_27D7E9700, &unk_227D5E2D0);
    OUTLINED_FUNCTION_80_6();

    OUTLINED_FUNCTION_19_0();

    return v5();
  }

  else
  {
    OUTLINED_FUNCTION_335_1();
    Array<A>.iso8601Duration.getter(v0[39]);
    v0[72] = v4;
    sub_227CD4AB0();
    OUTLINED_FUNCTION_285_0();
    sub_227CF3F60();
    v7 = OUTLINED_FUNCTION_215_2();
    if (__swift_getEnumTagSinglePayload(v7, v8, v1) == 1)
    {
      sub_227B1DE58(v0[51], &qword_27D7E7118, &qword_227D51020);
      v9 = 0;
    }

    else
    {
      sub_227D4A8F8();
      v9 = v10;
      (*(v0[45] + 8))(v0[51], v0[44]);
    }

    v0[73] = v9;
    if (v0[3])
    {
      v11 = v0[7];
      v12 = v0[9];
      v13 = v0[11];
      sub_227D4CE58();
      sub_227D4CE58();
      sub_227D4CE58();
      sub_227B1DE58((v0 + 2), &qword_27D7E9700, &unk_227D5E2D0);
    }

    else
    {
      v13 = 0;
      v12 = 0;
      v11 = 0;
    }

    v0[76] = v11;
    v0[75] = v12;
    v0[74] = v13;
    swift_task_alloc();
    OUTLINED_FUNCTION_47();
    v0[77] = v14;
    *v14 = v15;
    OUTLINED_FUNCTION_129_5(v14);
    OUTLINED_FUNCTION_205_3();
    OUTLINED_FUNCTION_90();

    return sub_227B73750();
  }
}

uint64_t sub_227CD39CC()
{
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_28_1();
  OUTLINED_FUNCTION_93();
  OUTLINED_FUNCTION_5_4();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 624) = v0;

  OUTLINED_FUNCTION_209();
  OUTLINED_FUNCTION_209();
  sub_227B26090(v2 + 176);
  if (v0)
  {
  }

  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_16_0();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_227CD3EE0()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  v1 = *v0;
  OUTLINED_FUNCTION_5_4();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_227CD3FC4()
{
  OUTLINED_FUNCTION_51_0();
  OUTLINED_FUNCTION_13_0(v0 + 32);
  OUTLINED_FUNCTION_32();
  v1 = swift_task_alloc();
  v0[80] = v1;
  *v1 = v0;
  v1[1] = sub_227CD40C8;
  v2 = OUTLINED_FUNCTION_18_11(v0[55]);

  return v3(v2);
}

uint64_t sub_227CD40C8()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_13();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v5 = v4;
  *(v6 + 648) = v0;

  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_227CD4330()
{
  OUTLINED_FUNCTION_152();
  v42 = v0;
  v2 = *(v0 + 560);
  sub_227D4AA58();
  sub_227D4CE58();
  v3 = v2;
  v4 = sub_227D4CA98();
  v5 = sub_227D4D438();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 560);
  if (v6)
  {
    v1 = *(v0 + 544);
    v8 = *(v0 + 536);
    v9 = *(v0 + 384);
    v38 = *(v0 + 376);
    v40 = *(v0 + 392);
    v10 = OUTLINED_FUNCTION_12_1();
    v11 = swift_slowAlloc();
    v12 = OUTLINED_FUNCTION_14_5();
    v41 = v12;
    *v10 = 136315394;
    *(v10 + 4) = sub_227B1B1A4(v8, v1, &v41);
    *(v10 + 12) = 2112;
    v13 = v7;
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 14) = v14;
    *v11 = v14;
    OUTLINED_FUNCTION_31();
    _os_log_impl(v15, v16, v17, v18, v19, 0x16u);
    sub_227B1DE58(v11, &qword_27D7E68C8, &qword_227D4F740);
    OUTLINED_FUNCTION_44_3();
    __swift_destroy_boxed_opaque_existential_0(v12);
    OUTLINED_FUNCTION_48_1();
    OUTLINED_FUNCTION_41_1();

    (*(v9 + 8))(v40, v38);
  }

  else
  {

    v20 = OUTLINED_FUNCTION_91_0();
    v21(v20);
  }

  *(v0 + 64) = 0u;
  *(v0 + 80) = 0u;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0u;
  *(v0 + 16) = 0u;
  OUTLINED_FUNCTION_370_0();
  sub_227D4A848();
  *(v0 + 568) = v22;
  OUTLINED_FUNCTION_335_1();
  Array<A>.iso8601Duration.getter(*(v0 + 312));
  *(v0 + 576) = v23;
  sub_227CD4AB0();
  OUTLINED_FUNCTION_285_0();
  sub_227CF3F60();
  v24 = OUTLINED_FUNCTION_215_2();
  if (__swift_getEnumTagSinglePayload(v24, v25, v1) == 1)
  {
    sub_227B1DE58(*(v0 + 408), &qword_27D7E7118, &qword_227D51020);
    v26 = 0;
  }

  else
  {
    sub_227D4A8F8();
    v26 = v27;
    (*(*(v0 + 360) + 8))(*(v0 + 408), *(v0 + 352));
  }

  v39 = v26;
  *(v0 + 584) = v26;
  if (*(v0 + 24))
  {
    v28 = *(v0 + 56);
    v29 = *(v0 + 72);
    v36 = *(v0 + 64);
    v37 = *(v0 + 48);
    v30 = *(v0 + 88);
    v35 = *(v0 + 80);
    sub_227D4CE58();
    sub_227D4CE58();
    sub_227D4CE58();
    sub_227B1DE58(v0 + 16, &qword_27D7E9700, &unk_227D5E2D0);
  }

  else
  {
    v35 = 0;
    v36 = 0;
    v30 = 0;
    v29 = 0;
    v37 = 0;
    v28 = 0;
  }

  *(v0 + 608) = v28;
  *(v0 + 600) = v29;
  *(v0 + 592) = v30;
  swift_task_alloc();
  OUTLINED_FUNCTION_47();
  *(v0 + 616) = v31;
  *v31 = v32;
  OUTLINED_FUNCTION_129_5(v31);
  v47 = v29;
  v48 = v35;
  v45 = v28;
  v46 = v36;
  v44 = v37;
  v43 = v39;
  OUTLINED_FUNCTION_205_3();
  OUTLINED_FUNCTION_90();

  return sub_227B73750();
}

uint64_t sub_227CD47FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_183();
  OUTLINED_FUNCTION_119();
  OUTLINED_FUNCTION_313();

  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_163();

  return v11(v10, v11, v12, v13, v14, v15, v16, v17, a9, a10);
}

uint64_t sub_227CD488C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_183();
  OUTLINED_FUNCTION_119();
  (*(v10[53] + 8))(v10[55], v10[52]);
  __swift_destroy_boxed_opaque_existential_0(v10 + 32);
  OUTLINED_FUNCTION_313();

  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_163();

  return v12(v11, v12, v13, v14, v15, v16, v17, v18, a9, a10);
}

uint64_t Array<A>.iso8601Duration.getter(uint64_t a1)
{
  if (*(a1 + 16))
  {
    Array<A>.timeUnitToValue.getter();
    if (_MergedGlobals_15 != -1)
    {
      OUTLINED_FUNCTION_166_5();
      swift_once();
    }

    sub_227CEFD20();
    if (v1)
    {
      goto LABEL_10;
    }

    MEMORY[0x22AAA5DA0]();

    if (qword_280E7BD78 != -1)
    {
      OUTLINED_FUNCTION_165_5();
      swift_once();
    }

    sub_227CEFD20();
    v3 = v2;
    v5 = v4;

    v7 = HIBYTE(v5) & 0xF;
    if ((v5 & 0x2000000000000000) == 0)
    {
      v7 = v3 & 0xFFFFFFFFFFFFLL;
    }

    if (!v7)
    {
LABEL_10:
    }

    else
    {
      MEMORY[0x22AAA5DA0](84, 0xE100000000000000);
      MEMORY[0x22AAA5DA0](v3, v5);
    }
  }

  return OUTLINED_FUNCTION_127_1();
}

uint64_t sub_227CD4AB0()
{
  v1 = sub_227D4A2B8();
  OUTLINED_FUNCTION_9();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_3();
  v7 = v6 - v5;
  OUTLINED_FUNCTION_327();
  v8(v7, v0, v1);
  v9 = (*(v3 + 88))(v7, v1);
  if (v9 == *MEMORY[0x277D0D0E8])
  {
    (*(v3 + 96))(v7, v1);
    return *v7;
  }

  else if (v9 == *MEMORY[0x277D0D0F0])
  {
    return 0;
  }

  else
  {
    sub_227D4D668();
    OUTLINED_FUNCTION_21_2();
    MEMORY[0x22AAA5DA0](0xD00000000000002FLL);
    sub_227D4D7B8();
    sub_227D49E08();
    OUTLINED_FUNCTION_1_34();
    sub_227B12A58(v11, v12);
    OUTLINED_FUNCTION_208();
    swift_allocError();
    OUTLINED_FUNCTION_174();
    sub_227D49D98();

    swift_willThrow();
    return (*(v3 + 8))(v7, v1);
  }
}

void sub_227CD4CC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_351();
  OUTLINED_FUNCTION_361_1();
  OUTLINED_FUNCTION_9();
  v12 = v11;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_5_3();
  v52 = v14;
  OUTLINED_FUNCTION_382_0();
  OUTLINED_FUNCTION_9();
  v55 = v16;
  v56 = v15;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_5_3();
  v57 = v17;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6888, &unk_227D4E630);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_26_0();
  v60 = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E68E0, &unk_227D50DE0);
  OUTLINED_FUNCTION_9();
  v53 = v21;
  v54 = v20;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_26_0();
  v62 = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E67C0, &unk_227D4FB20);
  OUTLINED_FUNCTION_9();
  v58 = v25;
  v59 = v24;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v26);
  v28 = v51 - v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6978, &qword_227D4EA70);
  OUTLINED_FUNCTION_9();
  v63 = v30;
  v64 = v29;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_75_2();
  v32 = sub_227D4B688();
  if (!v33)
  {
    OUTLINED_FUNCTION_3_7();
    OUTLINED_FUNCTION_301_0(v40);
    OUTLINED_FUNCTION_1_34();
    sub_227B12A58(v41, v42);
    OUTLINED_FUNCTION_18_2();
    swift_allocError();
    sub_227D49DD8();
    sub_227B1DE58(&v65, &qword_27D7E6C80, &unk_227D4F780);
    swift_willThrow();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_233_0(v32);
  v51[2] = sub_227D4B678();
  v35 = v34;
  sub_227D4B678();
  sub_227D4A8E8();
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E8CE8, &unk_227D5BA30);
  OUTLINED_FUNCTION_18_16(v36, &qword_27D7E6890);
  OUTLINED_FUNCTION_66_8();
  OUTLINED_FUNCTION_232_1();
  v37 = OUTLINED_FUNCTION_359_0();
  *(v37 + 16) = xmmword_227D4E520;
  v38 = (v37 + v12);
  *v38 = sub_227D4B708();
  v38[1] = v39;
  OUTLINED_FUNCTION_114();
  swift_storeEnumTagMultiPayload();
  sub_227D4A8B8();
  if (a10)
  {
    (*(v63 + 8))(v10, v64);

LABEL_7:
    OUTLINED_FUNCTION_352();
    return;
  }

  v51[1] = v35;
  OUTLINED_FUNCTION_21_7();
  sub_227CEE1E4();
  if (*(v43 + 16))
  {
    OUTLINED_FUNCTION_55_10();
    v44 = OUTLINED_FUNCTION_351_1();
    v45(v44);

    OUTLINED_FUNCTION_300_1();
    v51[6] = v28;
    v46 = OUTLINED_FUNCTION_175_4();
    v47(v46, v10);

    OUTLINED_FUNCTION_21_7();
    sub_227CEE1E4();
    v65 = MEMORY[0x22AAA4440]();
    sub_227C1897C();
    sub_227B27F4C(MEMORY[0x277D84A28]);
    sub_227D4B6A8();
    static Array<A>.fromISO8601Duration(iso8601Duration:)();

    v48 = sub_227D4B698();
    if ((v48 & 0x100000000) == 0)
    {
      *v52 = v48;
    }

    v49 = OUTLINED_FUNCTION_179_3();
    v50(v49);
    OUTLINED_FUNCTION_220_0();
    goto LABEL_7;
  }

  __break(1u);
}

uint64_t sub_227CD52D8(uint64_t a1)
{
  *(v2 + 56) = a1;
  *(v2 + 64) = v1;
  return OUTLINED_FUNCTION_1();
}

uint64_t sub_227CD52EC()
{
  OUTLINED_FUNCTION_34_0();
  OUTLINED_FUNCTION_51_0();
  OUTLINED_FUNCTION_2_36();
  swift_task_alloc();
  OUTLINED_FUNCTION_47();
  *(v0 + 72) = v1;
  *v1 = v2;
  OUTLINED_FUNCTION_178_5(v1);
  OUTLINED_FUNCTION_6_20();
  OUTLINED_FUNCTION_33_0();

  return v7(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_227CD53E4()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  v1 = *v0;
  OUTLINED_FUNCTION_5_4();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

void sub_227CD54C8()
{
  OUTLINED_FUNCTION_119();
  OUTLINED_FUNCTION_13_0((v0 + 16));
  sub_227CD57E4();
  *(v0 + 80) = v1;
  OUTLINED_FUNCTION_286_1();
  OUTLINED_FUNCTION_28_2();
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_354(v2);
  *v3 = v4;
  OUTLINED_FUNCTION_104_6(v3);
  OUTLINED_FUNCTION_42_2();

  __asm { BRAA            X3, X16 }
}

uint64_t sub_227CD5614()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_58_8();
  v4 = v3;
  OUTLINED_FUNCTION_0();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_5_4();
  *v7 = v6;
  *(v4 + 96) = v0;

  if (!v0)
  {

    *(v4 + 104) = v1;
  }

  OUTLINED_FUNCTION_30_2();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_227CD5720()
{
  OUTLINED_FUNCTION_6();
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  OUTLINED_FUNCTION_115();
  v2 = *(v0 + 104);

  return v1(v2);
}

uint64_t sub_227CD5780()
{
  OUTLINED_FUNCTION_6();

  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  OUTLINED_FUNCTION_18();

  return v1();
}

void sub_227CD57E4()
{
  OUTLINED_FUNCTION_351();
  v1 = v0;
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6978, &qword_227D4EA70);
  OUTLINED_FUNCTION_9();
  v6 = v5;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_26_0();
  v9 = *(v3 + 16);
  if (v9)
  {
    v29 = MEMORY[0x277D84F90];
    v26 = v8;
    sub_227B3CA88(0, v9, 0);
    v10 = v26;
    OUTLINED_FUNCTION_19();
    v12 = v3 + v11;
    v28 = v13;
    v27 = *(v6 + 72);
    while (1)
    {
      v28(v10, v12, v4);
      v14 = sub_227D4A8F8();
      if (v1)
      {
        break;
      }

      v16 = v14;
      v17 = v15;
      v18 = OUTLINED_FUNCTION_375();
      v19(v18, v4);
      v21 = *(v29 + 16);
      v20 = *(v29 + 24);
      if (v21 >= v20 >> 1)
      {
        v23 = OUTLINED_FUNCTION_12(v20);
        sub_227B3CA88(v23, v21 + 1, 1);
        v10 = v26;
      }

      *(v29 + 16) = v21 + 1;
      v22 = v29 + 16 * v21;
      *(v22 + 32) = v16;
      *(v22 + 40) = v17;
      v12 += v27;
      --v9;
      v1 = 0;
      if (!v9)
      {
        goto LABEL_9;
      }
    }

    v24 = OUTLINED_FUNCTION_269();
    v25(v24);
  }

LABEL_9:
  OUTLINED_FUNCTION_249_0();
  OUTLINED_FUNCTION_352();
}

uint64_t sub_227CD59B4()
{
  OUTLINED_FUNCTION_20();
  v1[43] = v2;
  v1[44] = v0;
  v3 = sub_227D4CAB8();
  v1[45] = v3;
  OUTLINED_FUNCTION_10_0(v3);
  v1[46] = v4;
  v1[47] = OUTLINED_FUNCTION_298_1();
  v1[48] = swift_task_alloc();
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_353_1(v5);
  *v6 = v7;
  v8 = OUTLINED_FUNCTION_19_15(v6);

  return sub_227B24B80(v8);
}

uint64_t sub_227CD5AA0()
{
  OUTLINED_FUNCTION_182();
  OUTLINED_FUNCTION_51_0();
  v4 = v3;
  OUTLINED_FUNCTION_8();
  v6 = v5;
  OUTLINED_FUNCTION_0();
  *v7 = v6;
  v8 = *v2;
  OUTLINED_FUNCTION_5_4();
  *v9 = v8;

  if (v1)
  {

    OUTLINED_FUNCTION_164();

    return v11(v10, v11, v12, v13, v14, v15, v16, v17);
  }

  else
  {
    *(v6 + 400) = v4;
    *(v6 + 408) = v0;
    OUTLINED_FUNCTION_15();
    OUTLINED_FUNCTION_164();

    return MEMORY[0x2822009F8](v19, v20, v21);
  }
}

uint64_t sub_227CD5BE0()
{
  OUTLINED_FUNCTION_34_0();
  OUTLINED_FUNCTION_51_0();
  OUTLINED_FUNCTION_2_36();
  swift_task_alloc();
  OUTLINED_FUNCTION_47();
  *(v0 + 416) = v1;
  *v1 = v2;
  v1[1] = sub_227CD5CDC;
  OUTLINED_FUNCTION_6_20();
  OUTLINED_FUNCTION_33_0();

  return v7(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_227CD5CDC()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_93();
  OUTLINED_FUNCTION_5_4();
  *v2 = v1;
  v3 = *v0;
  *v2 = *v0;

  v1[42] = MEMORY[0x277D84FA0];
  v4 = swift_task_alloc();
  v1[53] = v4;
  *v4 = v3;
  v4[1] = sub_227CD5E54;
  v5 = OUTLINED_FUNCTION_53(v1[51]);

  return sub_227CD6974(v5, v6, v7);
}

uint64_t sub_227CD5E54()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_13();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v5 = v4;
  *(v7 + 432) = v6;
  *(v7 + 440) = v0;

  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_227CD5F6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_28_1();
  v15 = v14[54];
  v16 = *(v15 + 16);
  v14[56] = v16;
  if (v16)
  {
    v14[57] = 0;
    v17 = v14[48];
    sub_227B11EE8(v15 + 32, (v14 + 27));
    sub_227D4AA58();
    sub_227B11EE8((v14 + 27), (v14 + 32));
    v18 = sub_227D4CA98();
    v19 = sub_227D4D428();
    if (OUTLINED_FUNCTION_307_1(v19))
    {
      v20 = swift_slowAlloc();
      a11 = OUTLINED_FUNCTION_14_5();
      OUTLINED_FUNCTION_163_3(4.8149e-34);
      OUTLINED_FUNCTION_312_0();
      v21 = OUTLINED_FUNCTION_587();
      v24 = sub_227B1B1A4(v21, v22, v23);

      *(v20 + 4) = v24;
      OUTLINED_FUNCTION_133_5();
      _os_log_impl(v25, v26, v27, v28, v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(a11);
      OUTLINED_FUNCTION_48_1();
      OUTLINED_FUNCTION_41_1();

      v30 = OUTLINED_FUNCTION_97_5();
      v24(v30);
    }

    else
    {

      v40 = OUTLINED_FUNCTION_97_5();
      v17(v40);
      __swift_destroy_boxed_opaque_existential_0(v14 + 32);
    }

    OUTLINED_FUNCTION_124_4();
    OUTLINED_FUNCTION_342_0();
    v41 = swift_allocObject();
    OUTLINED_FUNCTION_190_5(v41);
    OUTLINED_FUNCTION_9_12();
    v54 = v42 + *v42;
    swift_task_alloc();
    OUTLINED_FUNCTION_47();
    v14[60] = v43;
    *v43 = v44;
    OUTLINED_FUNCTION_45_9(v43);
    OUTLINED_FUNCTION_64_6();
    OUTLINED_FUNCTION_16_0();

    return v52(v45, v46, v47, v48, v49, v50, v51, v52, a9, v54, a11, a12, a13, a14);
  }

  else
  {

    OUTLINED_FUNCTION_323_1();

    OUTLINED_FUNCTION_15_0();
    OUTLINED_FUNCTION_16_0();

    return v32(v31, v32, v33, v34, v35, v36, v37, v38, a9, a10, a11, a12, a13, a14);
  }
}

uint64_t sub_227CD61B8()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_58_8();
  v4 = v3;
  OUTLINED_FUNCTION_0();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_5_4();
  *v7 = v6;
  *(v4 + 488) = v0;

  if (!v0)
  {

    *(v4 + 496) = v1;
  }

  OUTLINED_FUNCTION_30_2();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_227CD62C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_28_1();
  sub_227CD7894(v14[62]);
  v15 = v14[56];
  v16 = v14[57] + 1;
  __swift_destroy_boxed_opaque_existential_0(v14 + 27);
  if (v16 == v15)
  {

    OUTLINED_FUNCTION_323_1();

    OUTLINED_FUNCTION_15_0();
    OUTLINED_FUNCTION_16_0();

    return v18(v17, v18, v19, v20, v21, v22, v23, v24, a9, a10, a11, a12, a13, a14);
  }

  else
  {
    OUTLINED_FUNCTION_218_3();
    sub_227D4AA58();
    sub_227B11EE8((v14 + 27), (v14 + 32));
    v26 = sub_227D4CA98();
    v27 = sub_227D4D428();
    if (OUTLINED_FUNCTION_307_1(v27))
    {
      v28 = swift_slowAlloc();
      a11 = OUTLINED_FUNCTION_14_5();
      OUTLINED_FUNCTION_163_3(4.8149e-34);
      OUTLINED_FUNCTION_312_0();
      v29 = OUTLINED_FUNCTION_587();
      v32 = sub_227B1B1A4(v29, v30, v31);

      *(v28 + 4) = v32;
      OUTLINED_FUNCTION_133_5();
      _os_log_impl(v33, v34, v35, v36, v37, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(a11);
      OUTLINED_FUNCTION_48_1();
      OUTLINED_FUNCTION_41_1();

      v38 = OUTLINED_FUNCTION_97_5();
      v32(v38);
    }

    else
    {

      v39 = OUTLINED_FUNCTION_97_5();
      v15(v39);
      __swift_destroy_boxed_opaque_existential_0(v14 + 32);
    }

    OUTLINED_FUNCTION_124_4();
    OUTLINED_FUNCTION_342_0();
    v40 = swift_allocObject();
    OUTLINED_FUNCTION_190_5(v40);
    OUTLINED_FUNCTION_9_12();
    v53 = v41 + *v41;
    swift_task_alloc();
    OUTLINED_FUNCTION_47();
    v14[60] = v42;
    *v42 = v43;
    OUTLINED_FUNCTION_45_9(v42);
    OUTLINED_FUNCTION_64_6();
    OUTLINED_FUNCTION_16_0();

    return v51(v44, v45, v46, v47, v48, v49, v50, v51, a9, v53, a11, a12, a13, a14);
  }
}

uint64_t sub_227CD6518()
{
  OUTLINED_FUNCTION_6();
  __swift_destroy_boxed_opaque_existential_0((v0 + 176));

  OUTLINED_FUNCTION_18();

  return v1();
}

uint64_t sub_227CD6584(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void (*a10)(void, void), uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_166();
  v17 = v16[61];

  sub_227D4AA58();
  sub_227B11EE8((v16 + 27), (v16 + 37));
  v18 = v17;
  v19 = sub_227D4CA98();
  v20 = sub_227D4D438();

  v21 = os_log_type_enabled(v19, v20);
  v22 = v16[61];
  v23 = v16[58];
  v24 = v16[47];
  v25 = v16[45];
  if (v21)
  {
    a12 = v16[46] + 8;
    OUTLINED_FUNCTION_12_1();
    v26 = OUTLINED_FUNCTION_229_0();
    a13 = OUTLINED_FUNCTION_14_5();
    *v24 = 136315394;
    a10 = v23;
    __swift_project_boxed_opaque_existential_1(v16 + 37, v16[40]);
    OUTLINED_FUNCTION_280();
    v27 = sub_227D4DA88();
    __swift_destroy_boxed_opaque_existential_0(v16 + 37);
    v28 = OUTLINED_FUNCTION_147();
    sub_227B1B1A4(v28, v29, v30);
    OUTLINED_FUNCTION_280();

    *(v24 + 4) = v27;
    *(v24 + 12) = 2112;
    v31 = v22;
    v32 = _swift_stdlib_bridgeErrorToNSError();
    *(v24 + 14) = v32;
    *v26 = v32;
    _os_log_impl(&dword_227B0D000, v19, v20, "Failed to run: %s: %@", v24, 0x16u);
    sub_227B1DE58(v26, &qword_27D7E68C8, &qword_227D4F740);
    OUTLINED_FUNCTION_79_2();
    __swift_destroy_boxed_opaque_existential_0(a13);
    OUTLINED_FUNCTION_44_3();
    OUTLINED_FUNCTION_41_1();

    v23(a11, v25);
  }

  else
  {

    v23(v24, v25);
    __swift_destroy_boxed_opaque_existential_0(v16 + 37);
  }

  v33 = v16[56];
  v34 = v16[57] + 1;
  __swift_destroy_boxed_opaque_existential_0(v16 + 27);
  if (v34 == v33)
  {

    OUTLINED_FUNCTION_323_1();

    OUTLINED_FUNCTION_15_0();
    OUTLINED_FUNCTION_23();

    return v36(v35, v36, v37, v38, v39, v40, v41, v42, a9, a10, a11, a12, a13, a14, a15, a16);
  }

  else
  {
    OUTLINED_FUNCTION_218_3();
    sub_227D4AA58();
    sub_227B11EE8((v16 + 27), (v16 + 32));
    v44 = sub_227D4CA98();
    v45 = sub_227D4D428();
    v46 = OUTLINED_FUNCTION_307_1(v45);
    v47 = v16[48];
    if (v46)
    {
      v48 = swift_slowAlloc();
      a13 = OUTLINED_FUNCTION_14_5();
      OUTLINED_FUNCTION_163_3(4.8149e-34);
      OUTLINED_FUNCTION_312_0();
      v49 = OUTLINED_FUNCTION_587();
      v52 = sub_227B1B1A4(v49, v50, v51);

      *(v48 + 4) = v52;
      OUTLINED_FUNCTION_133_5();
      _os_log_impl(v53, v54, v55, v56, v57, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(a13);
      OUTLINED_FUNCTION_48_1();
      OUTLINED_FUNCTION_41_1();

      v58 = OUTLINED_FUNCTION_97_5();
      v52(v58);
    }

    else
    {

      v59 = OUTLINED_FUNCTION_97_5();
      v33(v59);
      __swift_destroy_boxed_opaque_existential_0(v16 + 32);
    }

    OUTLINED_FUNCTION_124_4();
    OUTLINED_FUNCTION_342_0();
    v60 = swift_allocObject();
    OUTLINED_FUNCTION_190_5(v60);
    OUTLINED_FUNCTION_36_0();
    v73 = v61 + *v61;
    swift_task_alloc();
    OUTLINED_FUNCTION_47();
    v16[60] = v62;
    *v62 = v63;
    OUTLINED_FUNCTION_45_9(v62);
    OUTLINED_FUNCTION_64_6();
    OUTLINED_FUNCTION_23();

    return v71(v64, v65, v66, v67, v68, v69, v70, v71, a9, a10, v47 + 16, v73, a13, a14, a15, a16);
  }
}

uint64_t sub_227CD6974(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[92] = v3;
  v4[91] = a3;
  v4[90] = a2;
  v4[89] = a1;
  return OUTLINED_FUNCTION_1();
}

uint64_t sub_227CD6994()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_324_0(v0[92]);
  OUTLINED_FUNCTION_337_1();
  v1 = swift_allocObject();
  v0[93] = v1;
  memcpy((v1 + 16), v0 + 2, 0x50uLL);
  swift_task_alloc();
  OUTLINED_FUNCTION_47();
  v0[94] = v2;
  *v2 = v3;
  v2[1] = sub_227CD6A6C;

  return sub_227CD83B8();
}

uint64_t sub_227CD6A6C()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v6 = v5;
  *(v3 + 760) = v0;

  if (!v0)
  {
    v7 = *(v3 + 176);
    *(v3 + 768) = *(v3 + 160);
    *(v3 + 784) = v7;
    v8 = *(v3 + 208);
    *(v3 + 800) = *(v3 + 192);
    *(v3 + 816) = v8;
  }

  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_227CD6B7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t (*a10)(), char *a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_142();
  OUTLINED_FUNCTION_168_0();
  v21 = v20;
  v22 = v20 + 160;
  v23 = *(v20 + 160);
  if (!v23)
  {
    v30 = sub_227CEDA08;
    a13 = 0;
    v31 = 0;
    v25 = 0;
LABEL_5:
    v32 = &unk_283B3E2D0;
    goto LABEL_11;
  }

  v24 = *(v20 + 776);
  v25 = swift_allocObject();
  *(v25 + 16) = v23;
  *(v25 + 72) = *(v20 + 216);
  *(v25 + 56) = *(v20 + 200);
  *(v25 + 40) = *(v20 + 184);
  *(v25 + 24) = *(v20 + 168);
  if (*(v24 + 16))
  {
    v26 = *(v20 + 720);
    v27 = *(v20 + 712);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7EA2C8, &qword_227D640A0);
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_227D4E520;
    *(v28 + 56) = &type metadata for IDDrivenChallengeSyncOperation;
    *(v28 + 64) = sub_227CF374C();
    v29 = swift_allocObject();
    *(v28 + 32) = v29;
    v29[2] = v24;
    v29[3] = sub_227CF37A0;
    v29[4] = v25;
    v29[5] = v27;
    v29[6] = v26;
    sub_227D4CE58();
    sub_227D4CE58();
LABEL_33:
    OUTLINED_FUNCTION_137();

    return v70(v68, v69, v70, v71, v72, v73, v74, v75, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
  }

  if (*(*(v20 + 768) + 16) == 1)
  {
    sub_227CF3F60();
    v33 = sub_227D4CE58();
    a13 = sub_227BF11E0(v33);
    v31 = v34;
  }

  else
  {
    sub_227CF3F60();
    a13 = 0;
    v31 = 0;
  }

  v35 = *(v21 + 824);
  v36 = *(v21 + 816);
  v37 = *(v21 + 784);
  *(v21 + 352) = *(v21 + 768);
  *(v21 + 368) = v37;
  *(v21 + 384) = *(v21 + 800);
  *(v21 + 400) = v36;
  *(v21 + 408) = v35;
  sub_227CF3F60();
  sub_227D4CE58();
  sub_227CF371C(v22 + 192);
  if (!*(v35 + 16))
  {

    v30 = sub_227CF37A0;
    goto LABEL_5;
  }

  v32 = *(v21 + 824);
  v30 = sub_227CF37A0;
LABEL_11:
  *(v21 + 832) = v25;
  v38 = *(v32 + 2);
  if (v38)
  {
    v93 = MEMORY[0x277D84F90];
    sub_227D4CE58();
    sub_227CF198C(0, v38, 0);
    v39 = 32;
    v40 = v93;
    a11 = v32;
    a12 = v22;
    a10 = v30;
    do
    {
      v41 = *(v21 + 720);
      v42 = v32[v39];
      v43 = *(v40 + 16);
      v44 = *(v40 + 24);
      a14 = (v43 + 1);
      a15 = v40;
      sub_227D4CE58();

      sub_227D4CE58();
      if (v43 >= v44 >> 1)
      {
        sub_227CF198C((v44 > 1), a14, 1);
        v41 = *(v21 + 720);
      }

      v45 = *(v21 + 712);
      *(v21 + 568) = &type metadata for StatusDrivenChallengeSyncOperation;
      *(v21 + 576) = sub_227CF36C8();
      v46 = swift_allocObject();
      *(v21 + 544) = v46;
      *(v46 + 16) = v42;
      *(v46 + 24) = a10;
      *(v46 + 32) = v25;
      *(v46 + 40) = v45;
      *(v46 + 48) = v41;
      *(v46 + 56) = a13;
      *(v46 + 64) = v31;
      v47 = v40 + 40 * v43;
      *(v40 + 16) = a14;
      v22 = a12;
      sub_227B132F0((a12 + 384), v47 + 32);
      ++v39;
      --v38;
      v32 = a11;
    }

    while (v38);
  }

  else
  {

    v40 = MEMORY[0x277D84F90];
  }

  *(v21 + 840) = v40;
  if (*(v40 + 16))
  {
    a14 = v21;
    v48 = v22;
    v49 = *(v32 + 2);
    v50 = (v32 + 32);
    while (1)
    {
      if (!v49)
      {

        sub_227B1DE58(v48, &qword_27D7EA198, &qword_227D63B80);

        goto LABEL_33;
      }

      v51 = *v50;
      if (v51 != 1 && v51 != 2)
      {
        break;
      }

      v52 = sub_227D4DA78();

      ++v50;
      --v49;
      if (v52)
      {
        goto LABEL_31;
      }
    }

LABEL_31:
    v67 = sub_227CF0500(v32, &unk_283B3E2D0);

    if (v67)
    {

      sub_227B1DE58(v48, &qword_27D7EA198, &qword_227D63B80);
      goto LABEL_33;
    }

    v76 = *v48;
    v77 = MEMORY[0x277D84FA0];
    if (*v48)
    {
      sub_227D4CE58();
      sub_227B1DE58(v48, &qword_27D7EA198, &qword_227D63B80);
    }

    else
    {
      v76 = MEMORY[0x277D84FA0];
    }

    a14[28] = v76;
    a14[29] = v77;
    a14[30] = v77;
    a14[31] = v77;
    a14[32] = v77;
    a14[33] = v77;
    a14[34] = v77;
    a14[35] = &unk_283B3E2F8;
    v78 = OUTLINED_FUNCTION_9_2();
    __swift_project_boxed_opaque_existential_1(v78, v79);
    v91 = OUTLINED_FUNCTION_308() + 16;
    OUTLINED_FUNCTION_36_0();
    v92 = v80 + *v80;
    swift_task_alloc();
    OUTLINED_FUNCTION_47();
    a14[106] = v81;
    *v81 = v82;
    v81[1] = sub_227CD72C0;
    OUTLINED_FUNCTION_137();

    return v87(v83, v84, v85, v86, v87, v88, v89, v90, a9, a10, a11, v91, v92, a14, a15, a16, a17, a18, a19, a20);
  }

  else
  {
    v53 = *(v21 + 728);

    sub_227B1DE58(v22, &qword_27D7EA198, &qword_227D63B80);
    OUTLINED_FUNCTION_183_6();
    sub_227D4D668();

    OUTLINED_FUNCTION_3_7();
    v94 = v54;
    *(v21 + 704) = v53;
    sub_227D4CE58();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E7270, &unk_227D5FBA0);
    v55 = sub_227D4CFF8();
    MEMORY[0x22AAA5DA0](v55);

    sub_227D49E08();
    OUTLINED_FUNCTION_1_34();
    sub_227B12A58(v56, v57);
    OUTLINED_FUNCTION_208();
    swift_allocError();
    OUTLINED_FUNCTION_147();
    sub_227D49D98();

    swift_willThrow();

    OUTLINED_FUNCTION_137();

    return v59(v58, v59, v60, v61, v62, v63, v64, v65, a9, a10, a11, a12, a13, a14, 0xD000000000000027, v94, a17, a18, a19, a20);
  }
}

uint64_t sub_227CD72C0()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  v1 = *v0;
  OUTLINED_FUNCTION_5_4();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_227CD73A4()
{
  OUTLINED_FUNCTION_51_0();
  __swift_project_boxed_opaque_existential_1((v0 + 584), *(v0 + 608));
  v1 = *(v0 + 272);
  *(v0 + 128) = *(v0 + 256);
  *(v0 + 144) = v1;
  v2 = *(v0 + 240);
  *(v0 + 96) = *(v0 + 224);
  *(v0 + 112) = v2;
  OUTLINED_FUNCTION_32();
  v7 = (v3 + *v3);
  swift_task_alloc();
  OUTLINED_FUNCTION_47();
  *(v0 + 856) = v4;
  *v4 = v5;
  v4[1] = sub_227CD74D4;
  OUTLINED_FUNCTION_116_6();

  return v7();
}

uint64_t sub_227CD74D4()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v6 = v5;
  *(v3 + 864) = v0;

  if (v0)
  {
  }

  sub_227CF371C(v3 + 224);
  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_227CD75E4()
{
  OUTLINED_FUNCTION_116();
  OUTLINED_FUNCTION_51_0();
  v1 = *(v0 + 648);
  v2 = __swift_project_boxed_opaque_existential_1((v0 + 624), v1);
  v3 = *(v1 - 8);
  v4 = OUTLINED_FUNCTION_30();
  (*(v3 + 16))(v4, v2, v1);
  sub_227D4D388();
  OUTLINED_FUNCTION_280();

  __swift_destroy_boxed_opaque_existential_0((v0 + 624));
  __swift_destroy_boxed_opaque_existential_0((v0 + 584));
  if (*(v1 + 16))
  {
    sub_227D4CE58();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *(v0 + 840);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v21 = OUTLINED_FUNCTION_8_15();
      v6 = sub_227CF0984(v21, v22, v23, v24);
    }

    v8 = v6[2];
    v7 = v6[3];
    if (v8 >= v7 >> 1)
    {
      OUTLINED_FUNCTION_12(v7);
      OUTLINED_FUNCTION_117();
      v6 = sub_227CF0984(v25, v26, v27, v28);
    }

    v9 = *(v0 + 720);
    v10 = *(v0 + 712);

    *(v0 + 688) = &type metadata for IDDrivenChallengeSyncOperation;
    *(v0 + 696) = sub_227CF374C();
    v11 = swift_allocObject();
    *(v0 + 664) = v11;
    v11[2] = v1;
    v11[3] = OUTLINED_FUNCTION_51;
    v11[4] = 0;
    v11[5] = v10;
    v11[6] = v9;
    v6[2] = v8 + 1;
    sub_227B132F0((v0 + 664), &v6[5 * v8 + 4]);
  }

  else
  {
  }

  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_117_0();

  return v14(v12, v13, v14, v15, v16, v17, v18, v19);
}

uint64_t sub_227CD77D4()
{
  OUTLINED_FUNCTION_6();

  OUTLINED_FUNCTION_18();

  return v0();
}

uint64_t sub_227CD7830()
{
  OUTLINED_FUNCTION_6();

  __swift_destroy_boxed_opaque_existential_0((v0 + 584));
  OUTLINED_FUNCTION_18();

  return v1();
}

uint64_t sub_227CD7894(uint64_t result)
{
  v1 = result;
  v2 = 0;
  v3 = result + 56;
  v4 = 1 << *(result + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(result + 56);
  v7 = (v4 + 63) >> 6;
  if (v6)
  {
    while (1)
    {
      v8 = v2;
LABEL_9:
      v9 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v10 = (*(v1 + 48) + ((v8 << 10) | (16 * v9)));
      v11 = *v10;
      v12 = v10[1];
      sub_227D4CE58();
      sub_227B274CC(&v13, v11, v12);

      if (!v6)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
      return result;
    }

    if (v8 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v8);
    ++v2;
    if (v6)
    {
      v2 = v8;
      goto LABEL_9;
    }
  }
}

uint64_t sub_227CD7998()
{
  OUTLINED_FUNCTION_6();
  v1[31] = v2;
  v1[32] = v0;
  v1[30] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6908, &unk_227D4E690);
  OUTLINED_FUNCTION_5(v4);
  v1[33] = OUTLINED_FUNCTION_30();
  v5 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_227CD7A20()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_324_0(v0[32]);
  OUTLINED_FUNCTION_337_1();
  v1 = swift_allocObject();
  v0[34] = v1;
  memcpy((v1 + 16), v0 + 2, 0x50uLL);
  swift_task_alloc();
  OUTLINED_FUNCTION_47();
  v0[35] = v2;
  *v2 = v3;
  v2[1] = sub_227CD7AF8;

  return sub_227CD83B8();
}

uint64_t sub_227CD7AF8()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v6 = v5;
  *(v3 + 288) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_227CD7BF8()
{
  OUTLINED_FUNCTION_34_0();
  OUTLINED_FUNCTION_51_0();
  OUTLINED_FUNCTION_2_36();
  swift_task_alloc();
  OUTLINED_FUNCTION_47();
  *(v0 + 296) = v1;
  *v1 = v2;
  v1[1] = sub_227CD7CF4;
  OUTLINED_FUNCTION_6_20();
  OUTLINED_FUNCTION_33_0();

  return v7(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_227CD7CF4()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  v1 = *v0;
  OUTLINED_FUNCTION_5_4();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_227CD7DD8()
{
  OUTLINED_FUNCTION_51_0();
  OUTLINED_FUNCTION_13_0((v0 + 160));
  OUTLINED_FUNCTION_32();
  v5 = (v1 + *v1);
  swift_task_alloc();
  OUTLINED_FUNCTION_47();
  *(v0 + 304) = v2;
  *v2 = v3;
  v2[1] = sub_227CD7EE8;
  OUTLINED_FUNCTION_116_6();

  return v5();
}

uint64_t sub_227CD7EE8()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v6 = v5;
  *(v3 + 312) = v0;

  sub_227B1DE58(v3 + 96, &qword_27D7EA198, &qword_227D63B80);
  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_227CD7FF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_139();
  OUTLINED_FUNCTION_111();
  v13 = v12[29];
  v14 = v12[28];
  __swift_project_boxed_opaque_existential_1(v12 + 25, v14);
  v15 = OUTLINED_FUNCTION_173();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(v15, v16);
  sub_227CDA6DC(sub_227CDA158, 0, v14, v17, MEMORY[0x277D84A98], v13, MEMORY[0x277D84AC0], v18);
  __swift_destroy_boxed_opaque_existential_0(v12 + 25);
  __swift_destroy_boxed_opaque_existential_0(v12 + 20);
  sub_227D4A958();
  OUTLINED_FUNCTION_71_0();
  __swift_storeEnumTagSinglePayload(v19, v20, v21, v22);
  sub_227B69F68(&qword_27D7E71A8, &qword_27D7E6978, &qword_227D4EA70);
  sub_227B69F68(&qword_27D7E71B8, &qword_27D7E6978, &qword_227D4EA70);
  OUTLINED_FUNCTION_57_0();
  sub_227D4A948();

  OUTLINED_FUNCTION_15_0();
  OUTLINED_FUNCTION_135_0();

  return v24(v23, v24, v25, v26, v27, v28, v29, v30, a9, a10, a11, a12);
}

uint64_t sub_227CD8168()
{
  OUTLINED_FUNCTION_6();

  OUTLINED_FUNCTION_18();

  return v0();
}

uint64_t sub_227CD81CC()
{
  OUTLINED_FUNCTION_6();
  __swift_destroy_boxed_opaque_existential_0((v0 + 160));

  OUTLINED_FUNCTION_18();

  return v1();
}

uint64_t sub_227CD8230()
{
  OUTLINED_FUNCTION_6();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_50(v0);
  *v1 = v2;
  v1[1] = sub_227CD82C0;
  v3 = OUTLINED_FUNCTION_13_2();

  return sub_227B24B80(v3);
}

uint64_t sub_227CD82C0()
{
  OUTLINED_FUNCTION_20();
  v4 = v3;
  OUTLINED_FUNCTION_58_8();
  v5 = *v2;
  OUTLINED_FUNCTION_5_4();
  *v6 = v5;

  OUTLINED_FUNCTION_50_0();
  if (!v0)
  {
    v7 = v1;
    v8 = v4;
  }

  return v9(v7, v8);
}

uint64_t sub_227CD83B8()
{
  OUTLINED_FUNCTION_6();
  v0[21] = v1;
  v0[22] = v2;
  v0[19] = v3;
  v0[20] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6888, &unk_227D4E630);
  v0[23] = v5;
  OUTLINED_FUNCTION_10_0(v5);
  v0[24] = v6;
  v0[25] = OUTLINED_FUNCTION_30();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E68E0, &unk_227D50DE0);
  v0[26] = v7;
  OUTLINED_FUNCTION_10_0(v7);
  v0[27] = v8;
  v0[28] = OUTLINED_FUNCTION_30();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E67C0, &unk_227D4FB20);
  v0[29] = v9;
  OUTLINED_FUNCTION_10_0(v9);
  v0[30] = v10;
  v0[31] = OUTLINED_FUNCTION_121();
  v0[32] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6978, &qword_227D4EA70);
  v0[33] = v11;
  OUTLINED_FUNCTION_10_0(v11);
  v0[34] = v12;
  v0[35] = OUTLINED_FUNCTION_30();
  v13 = sub_227D49F58();
  v0[36] = v13;
  OUTLINED_FUNCTION_10_0(v13);
  v0[37] = v14;
  v0[38] = OUTLINED_FUNCTION_121();
  v0[39] = swift_task_alloc();
  v15 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v15, v16, v17);
}

uint64_t sub_227CD85D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_142();
  OUTLINED_FUNCTION_168_0();
  v21 = *(v18 + 160);
  if (!v21 || (v22 = *(v21 + 16), (*(v18 + 320) = v22) == 0))
  {
    v110 = 0;
    a12 = 0;
    v111 = 0;
    a9 = 0u;
    a10 = 0u;
LABEL_65:
    OUTLINED_FUNCTION_61_9();
    v112 = *(v18 + 152);

    *v112 = a10;
    *(v112 + 16) = a9;
    *(v112 + 32) = v110;
    *(v112 + 40) = v110;
    *(v112 + 48) = a12;
    *(v112 + 56) = v111;
    OUTLINED_FUNCTION_15_0();
LABEL_66:
    OUTLINED_FUNCTION_137();

    return v114(v113, v114, v115, v116, v117, v118, v119, v120, a9, *(&a9 + 1), a10, *(&a10 + 1), a11, a12, a13, a14, a15, a16, a17, a18);
  }

  v23 = 0;
  v24 = MEMORY[0x277D84FA0];
  v25 = *(v18 + 296);
  *(v18 + 112) = MEMORY[0x277D84FA0];
  *(v18 + 120) = v24;
  *(v18 + 128) = v24;
  *(v18 + 136) = v24;
  *(v18 + 144) = v24;
  *(v18 + 424) = *MEMORY[0x277D0CFA0];
  *(v18 + 428) = *MEMORY[0x277D0CF68];
  *(v18 + 432) = *MEMORY[0x277D0CF80];
  *(v18 + 436) = *MEMORY[0x277D0CF90];
  *(v18 + 440) = *MEMORY[0x277D0CF70];
  *(v18 + 444) = *MEMORY[0x277D0CF88];
  *(v18 + 448) = *MEMORY[0x277D0CF98];
  *(v18 + 452) = *MEMORY[0x277D0CF78];
  *(v18 + 456) = *(v25 + 80);
  *(v18 + 328) = *(v25 + 72);
  *(v18 + 336) = *(v25 + 16);
  v26 = MEMORY[0x277D84F90];
  while (1)
  {
    *(v18 + 344) = v23;
    *(v18 + 352) = v26;
    if (v23 == v22)
    {
      a9 = *(v18 + 128);
      a10 = *(v18 + 112);
      a12 = *(v18 + 144);
      v110 = MEMORY[0x277D84FA0];
      v111 = v26;
      goto LABEL_65;
    }

    OUTLINED_FUNCTION_273_0();
    v28 = *(v18 + 304);
    v27 = *(v18 + 312);
    v29 = *(v18 + 288);
    v30 = *(v18 + 296);
    OUTLINED_FUNCTION_105_7();
    v31 = OUTLINED_FUNCTION_250_0();
    v19(v31);
    v32 = OUTLINED_FUNCTION_87_1();
    v19(v32);
    v33 = (*(v30 + 88))(v28, v29);
    if (v33 == v20)
    {
      v34 = *(v18 + 264);
      v35 = *(v18 + 272);
      v36 = OUTLINED_FUNCTION_106_7();
      v37(v36);
      v19 = (v35 + 32);
      OUTLINED_FUNCTION_141_4();
      v38();
      OUTLINED_FUNCTION_49_1();
      sub_227D4A8F8();
      OUTLINED_FUNCTION_60_10();
      OUTLINED_FUNCTION_198_5();
      if (v34)
      {
        goto LABEL_69;
      }

      OUTLINED_FUNCTION_185();
      OUTLINED_FUNCTION_183_0();
      sub_227B274CC(v39, v40, v41);
LABEL_14:

      v58 = OUTLINED_FUNCTION_101_7();
      v59(v58);
      v60 = OUTLINED_FUNCTION_99_5();
      v61(v60);
      goto LABEL_15;
    }

    if (v33 == *(v18 + 428))
    {
      OUTLINED_FUNCTION_162_2();
      v42 = *(v18 + 216);
      v43 = *(v18 + 208);
      v44 = OUTLINED_FUNCTION_106_7();
      v45(v44);
      v19 = (v42 + 32);
      OUTLINED_FUNCTION_141_4();
      v46();
      OUTLINED_FUNCTION_49_1();
      sub_227D4A848();
      OUTLINED_FUNCTION_60_10();
      OUTLINED_FUNCTION_196_5();
      if (v43)
      {
        goto LABEL_69;
      }

      OUTLINED_FUNCTION_103_5();
      OUTLINED_FUNCTION_183_0();
      sub_227B274CC(v47, v48, v49);
      goto LABEL_14;
    }

    if (v33 == *(v18 + 432))
    {
      OUTLINED_FUNCTION_162_2();
      v50 = *(v18 + 192);
      v51 = *(v18 + 184);
      v52 = OUTLINED_FUNCTION_106_7();
      v53(v52);
      v19 = (v50 + 32);
      OUTLINED_FUNCTION_141_4();
      v54();
      OUTLINED_FUNCTION_49_1();
      sub_227D4A6A8();
      OUTLINED_FUNCTION_60_10();
      OUTLINED_FUNCTION_195_2();
      if (v51)
      {
LABEL_69:
        v122 = OUTLINED_FUNCTION_101_7();
        v123(v122);
        v124 = OUTLINED_FUNCTION_99_5();
        v125(v124);

LABEL_70:
        OUTLINED_FUNCTION_189_5();

        OUTLINED_FUNCTION_18();
        goto LABEL_66;
      }

      OUTLINED_FUNCTION_185();
      OUTLINED_FUNCTION_345_1();
      OUTLINED_FUNCTION_183_0();
      sub_227B274CC(v55, v56, v57);
      goto LABEL_14;
    }

    if (v33 == *(v18 + 436))
    {
      v126 = OUTLINED_FUNCTION_77_7();
      v127(v126);
      v128 = OUTLINED_FUNCTION_26_12();
      v129(v128);
      OUTLINED_FUNCTION_0_55();
      a12 = v130;
      v131 = swift_task_alloc();
      *(v18 + 360) = v131;
      *v131 = v18;
      OUTLINED_FUNCTION_42_8(v131);
      goto LABEL_73;
    }

    if (v33 == *(v18 + 440))
    {
      break;
    }

    if (v33 == *(v18 + 444))
    {
      v62 = *(v26 + 2);
      v63 = v26 + 32;
      while (v62)
      {
        v64 = OUTLINED_FUNCTION_20_10();
        if (v65 != 1)
        {
          if (v65 != 2)
          {
            goto LABEL_61;
          }

          v64 = OUTLINED_FUNCTION_98_7();
        }

        v28 = OUTLINED_FUNCTION_156_5(v64);

        ++v63;
        --v62;
        if (v28)
        {
          goto LABEL_62;
        }
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v86 = OUTLINED_FUNCTION_8_15();
        v26 = sub_227CF0890(v86, v87, v88, v89);
      }

      OUTLINED_FUNCTION_268_0();
      if (v73)
      {
        v90 = OUTLINED_FUNCTION_11_22(v72);
        v26 = sub_227CF0890(v90, v91, v92, v93);
      }

      v74 = OUTLINED_FUNCTION_47_10();
      v75(v74);
      *(v26 + 2) = v27;
      v26[v28 + 32] = 0;
    }

    else
    {
      if (v33 == *(v18 + 448))
      {
        v66 = *(v26 + 2);
        v67 = v26 + 32;
        while (v66)
        {
          if (*v67)
          {
            if (*v67 != 2)
            {
              goto LABEL_61;
            }

            v68 = OUTLINED_FUNCTION_98_7();
          }

          else
          {
            v68 = OUTLINED_FUNCTION_54_9();
          }

          v28 = OUTLINED_FUNCTION_96_7(v68);

          ++v67;
          --v66;
          if (v28)
          {
            goto LABEL_62;
          }
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v94 = OUTLINED_FUNCTION_8_15();
          v26 = sub_227CF0890(v94, v95, v96, v97);
        }

        OUTLINED_FUNCTION_268_0();
        if (v73)
        {
          v98 = OUTLINED_FUNCTION_11_22(v76);
          v26 = sub_227CF0890(v98, v99, v100, v101);
        }

        v77 = OUTLINED_FUNCTION_47_10();
        v78(v77);
        *(v26 + 2) = v27;
        v79 = &v26[v28];
        v80 = 1;
      }

      else
      {
        if (v33 != *(v18 + 452))
        {
          OUTLINED_FUNCTION_310_1();

          OUTLINED_FUNCTION_183_6();
          sub_227D4D668();
          *(v18 + 16) = a13;
          *(v18 + 24) = a14;
          OUTLINED_FUNCTION_90_5();
          v141 = MEMORY[0x22AAA5DA0](0xD00000000000001DLL);
          OUTLINED_FUNCTION_315_0(v141, v142, v143, MEMORY[0x277D84698], MEMORY[0x277D846A8]);
          v144 = *(v18 + 16);
          sub_227D49E08();
          OUTLINED_FUNCTION_1_34();
          sub_227B12A58(v145, v146);
          OUTLINED_FUNCTION_208();
          swift_allocError();
          OUTLINED_FUNCTION_57_0();
          sub_227D49D98();

          swift_willThrow();
          v147 = OUTLINED_FUNCTION_266_1();
          v144(v147);
          v148 = OUTLINED_FUNCTION_141();
          v144(v148);
          goto LABEL_70;
        }

        v69 = *(v26 + 2);
        v70 = v26 + 32;
        while (v69)
        {
          if (*v70)
          {
            if (*v70 != 1)
            {
LABEL_61:

LABEL_62:
              v84 = OUTLINED_FUNCTION_47_10();
              v85(v84);
              goto LABEL_15;
            }

            v71 = OUTLINED_FUNCTION_20_10();
          }

          else
          {
            v71 = OUTLINED_FUNCTION_54_9();
          }

          v28 = OUTLINED_FUNCTION_187_3(v71);

          ++v70;
          --v69;
          if (v28)
          {
            goto LABEL_62;
          }
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v102 = OUTLINED_FUNCTION_8_15();
          v26 = sub_227CF0890(v102, v103, v104, v105);
        }

        OUTLINED_FUNCTION_268_0();
        if (v73)
        {
          v106 = OUTLINED_FUNCTION_11_22(v81);
          v26 = sub_227CF0890(v106, v107, v108, v109);
        }

        v82 = OUTLINED_FUNCTION_47_10();
        v83(v82);
        *(v26 + 2) = v27;
        v79 = &v26[v28];
        v80 = 2;
      }

      v79[32] = v80;
    }

LABEL_15:
    v23 = *(v18 + 344) + 1;
    v22 = *(v18 + 320);
  }

  v133 = OUTLINED_FUNCTION_78_10();
  v134(v133);
  v135 = OUTLINED_FUNCTION_26_12();
  v136(v135);
  OUTLINED_FUNCTION_0_55();
  a12 = v137;
  v138 = swift_task_alloc();
  v139 = OUTLINED_FUNCTION_353_1(v138);
  *v139 = v140;
  OUTLINED_FUNCTION_49_7(v139);
  v132 = *(v18 + 248);
LABEL_73:
  OUTLINED_FUNCTION_53(v132);
  OUTLINED_FUNCTION_137();

  return v114(v113, v114, v115, v116, v117, v118, v119, v120, a9, *(&a9 + 1), a10, *(&a10 + 1), a11, a12, a13, a14, a15, a16, a17, a18);
}

uint64_t sub_227CD8E38()
{
  OUTLINED_FUNCTION_20();
  v4 = v3;
  OUTLINED_FUNCTION_8();
  v6 = v5;
  OUTLINED_FUNCTION_0();
  *v7 = v6;
  v8 = *v2;
  OUTLINED_FUNCTION_5_4();
  *v9 = v8;
  v6[46] = v1;

  if (v1)
  {
  }

  else
  {
    v6[47] = v4;
    v6[48] = v0;
  }

  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_227CD96FC()
{
  OUTLINED_FUNCTION_20();
  v4 = v3;
  OUTLINED_FUNCTION_8();
  v6 = v5;
  OUTLINED_FUNCTION_0();
  *v7 = v6;
  v8 = *v2;
  OUTLINED_FUNCTION_5_4();
  *v9 = v8;
  v6[50] = v1;

  if (v1)
  {
  }

  else
  {
    v6[51] = v4;
    v6[52] = v0;
  }

  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_227CD9FC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_183();
  OUTLINED_FUNCTION_119();
  (*(v10[30] + 8))(v10[32], v10[29]);
  v11 = OUTLINED_FUNCTION_57_0();
  v12(v11);
  OUTLINED_FUNCTION_61_9();

  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_163();

  return v14(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10);
}

uint64_t sub_227CDA08C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_183();
  OUTLINED_FUNCTION_119();
  (*(v10[30] + 8))(v10[31], v10[29]);
  v11 = OUTLINED_FUNCTION_57_0();
  v12(v11);
  OUTLINED_FUNCTION_61_9();

  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_163();

  return v14(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10);
}

uint64_t sub_227CDA158()
{
  OUTLINED_FUNCTION_375_1();
  OUTLINED_FUNCTION_269();
  return sub_227D4A8E8();
}

uint64_t sub_227CDA190(void (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v37 = a1;
  v38 = a2;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6888, &unk_227D4E630);
  v5 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v42 = &v33 - v6;
  v7 = *(a3 + 16);
  result = MEMORY[0x277D84F90];
  if (v7)
  {
    v44 = v3;
    v46 = MEMORY[0x277D84F90];
    sub_227C11484(0, v7, 0);
    v43 = v46;
    v10 = sub_227B3E1D8(a3);
    v12 = v11;
    v13 = 0;
    v41 = a3 + 56;
    v34 = v7;
    v35 = v5 + 32;
    v33 = a3 + 64;
    v14 = a3;
    v39 = a3;
    if ((v10 & 0x8000000000000000) == 0)
    {
      while (v10 < 1 << *(v14 + 32))
      {
        v15 = v10 >> 6;
        if ((*(v41 + 8 * (v10 >> 6)) & (1 << v10)) == 0)
        {
          goto LABEL_27;
        }

        if (*(v14 + 36) != v9)
        {
          goto LABEL_28;
        }

        v40 = v13;
        v16 = v9;
        v17 = v5;
        v18 = (*(v14 + 48) + 16 * v10);
        v19 = v18[1];
        v45[0] = *v18;
        v45[1] = v19;
        sub_227D4CE58();
        v20 = v44;
        v37(v45);
        v44 = v20;
        if (v20)
        {
          goto LABEL_32;
        }

        v21 = v43;
        v46 = v43;
        v23 = *(v43 + 16);
        v22 = *(v43 + 24);
        if (v23 >= v22 >> 1)
        {
          sub_227C11484(v22 > 1, v23 + 1, 1);
          v21 = v46;
        }

        *(v21 + 16) = v23 + 1;
        v5 = v17;
        v24 = (*(v17 + 80) + 32) & ~*(v17 + 80);
        v43 = v21;
        result = (*(v17 + 32))(v21 + v24 + *(v17 + 72) * v23, v42, v36);
        if (v12)
        {
          goto LABEL_33;
        }

        v14 = v39;
        v25 = 1 << *(v39 + 32);
        if (v10 >= v25)
        {
          goto LABEL_29;
        }

        v26 = *(v41 + 8 * v15);
        if ((v26 & (1 << v10)) == 0)
        {
          goto LABEL_30;
        }

        if (*(v39 + 36) != v16)
        {
          goto LABEL_31;
        }

        v27 = v26 & (-2 << (v10 & 0x3F));
        if (v27)
        {
          v25 = __clz(__rbit64(v27)) | v10 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v28 = v15 << 6;
          v29 = v15 + 1;
          v30 = (v33 + 8 * v15);
          while (v29 < (v25 + 63) >> 6)
          {
            v32 = *v30++;
            v31 = v32;
            v28 += 64;
            ++v29;
            if (v32)
            {
              sub_227B3E218(v10, v16, 0);
              v25 = __clz(__rbit64(v31)) + v28;
              goto LABEL_20;
            }
          }

          sub_227B3E218(v10, v16, 0);
LABEL_20:
          v14 = v39;
        }

        v13 = v40 + 1;
        if (v40 + 1 == v34)
        {
          return v43;
        }

        v12 = 0;
        v9 = *(v14 + 36);
        v10 = v25;
        if (v25 < 0)
        {
          break;
        }
      }
    }

    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:

    __break(1u);
LABEL_33:
    __break(1u);
  }

  return result;
}

void sub_227CDA4F4()
{
  OUTLINED_FUNCTION_351();
  v3 = v2;
  v5 = v4;
  v6 = v0;
  v8 = v7;
  v24 = v9;
  v23 = v10(0);
  OUTLINED_FUNCTION_9();
  v12 = v11;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_68_3();
  v14 = *(v8 + 16);
  if (v14)
  {
    v26 = MEMORY[0x277D84F90];
    v5(0, v14, 0);
    v15 = v3(0);
    OUTLINED_FUNCTION_10_0(v15);
    OUTLINED_FUNCTION_136_0();
    v17 = v8 + v16;
    OUTLINED_FUNCTION_36_0();
    v22 = *(v18 + 72);
    while (1)
    {
      v24(v17, &v25);
      if (v6)
      {
        break;
      }

      v6 = 0;
      v20 = *(v26 + 16);
      v19 = *(v26 + 24);
      if (v20 >= v19 >> 1)
      {
        v5(v19 > 1, v20 + 1, 1);
      }

      *(v26 + 16) = v20 + 1;
      OUTLINED_FUNCTION_19();
      (*(v12 + 32))(v26 + v21 + *(v12 + 72) * v20, v1, v23);
      v17 += v22;
      if (!--v14)
      {
        goto LABEL_9;
      }
    }
  }

LABEL_9:
  OUTLINED_FUNCTION_249_0();
  OUTLINED_FUNCTION_352();
}

uint64_t sub_227CDA6DC(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
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
  v19 = sub_227D4D3A8();
  if (!v19)
  {
    return sub_227D4D208();
  }

  v41 = v19;
  v45 = sub_227D4D768();
  v32 = sub_227D4D778();
  sub_227D4D718();
  result = sub_227D4D398();
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
      v22 = sub_227D4D3F8();
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
      sub_227D4D758();
      result = sub_227D4D3D8();
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

uint64_t sub_227CDAAF8(uint64_t a1)
{
  *(v2 + 56) = a1;
  *(v2 + 64) = v1;
  return OUTLINED_FUNCTION_1();
}

uint64_t sub_227CDAB0C()
{
  OUTLINED_FUNCTION_34_0();
  OUTLINED_FUNCTION_51_0();
  OUTLINED_FUNCTION_2_36();
  swift_task_alloc();
  OUTLINED_FUNCTION_47();
  *(v0 + 72) = v1;
  *v1 = v2;
  OUTLINED_FUNCTION_178_5(v1);
  OUTLINED_FUNCTION_6_20();
  OUTLINED_FUNCTION_33_0();

  return v7(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_227CDAC04()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  v1 = *v0;
  OUTLINED_FUNCTION_5_4();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

void sub_227CDACE8()
{
  OUTLINED_FUNCTION_119();
  OUTLINED_FUNCTION_13_0((v0 + 16));
  sub_227CD57E4();
  *(v0 + 80) = v1;
  OUTLINED_FUNCTION_286_1();
  OUTLINED_FUNCTION_28_2();
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_354(v2);
  *v3 = v4;
  OUTLINED_FUNCTION_104_6(v3);
  OUTLINED_FUNCTION_42_2();

  __asm { BRAA            X3, X16 }
}

uint64_t sub_227CDAE34()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_58_8();
  v4 = v3;
  OUTLINED_FUNCTION_0();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_5_4();
  *v7 = v6;
  *(v4 + 96) = v0;

  if (!v0)
  {

    *(v4 + 104) = v1;
  }

  OUTLINED_FUNCTION_30_2();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_227CDAF40()
{
  OUTLINED_FUNCTION_20();
  v1[3] = v2;
  v1[4] = v0;
  v3 = sub_227D4B078();
  v1[5] = v3;
  OUTLINED_FUNCTION_10_0(v3);
  v1[6] = v4;
  v1[7] = OUTLINED_FUNCTION_30();
  v5 = sub_227D49F48();
  v1[8] = v5;
  OUTLINED_FUNCTION_10_0(v5);
  v1[9] = v6;
  v1[10] = OUTLINED_FUNCTION_298_1();
  v1[11] = swift_task_alloc();
  v7 = sub_227D4B198();
  v1[12] = v7;
  OUTLINED_FUNCTION_10_0(v7);
  v1[13] = v8;
  v1[14] = OUTLINED_FUNCTION_30();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7EA1A0, &qword_227D63B98);
  OUTLINED_FUNCTION_5(v9);
  v1[15] = OUTLINED_FUNCTION_30();
  v10 = sub_227D4B1D8();
  v1[16] = v10;
  OUTLINED_FUNCTION_10_0(v10);
  v1[17] = v11;
  v1[18] = OUTLINED_FUNCTION_298_1();
  v1[19] = swift_task_alloc();
  v12 = sub_227D4B8E8();
  v1[20] = v12;
  OUTLINED_FUNCTION_10_0(v12);
  v1[21] = v13;
  v1[22] = OUTLINED_FUNCTION_30();
  v14 = swift_task_alloc();
  v1[23] = v14;
  *v14 = v1;
  v15 = OUTLINED_FUNCTION_19_15(v14);

  return sub_227B24B80(v15);
}

uint64_t sub_227CDB198(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_378_1();
  OUTLINED_FUNCTION_119();
  OUTLINED_FUNCTION_58_8();
  v13 = v12;
  OUTLINED_FUNCTION_0();
  *v14 = v13;
  v15 = *v11;
  OUTLINED_FUNCTION_5_4();
  *v16 = v15;
  *(v13 + 192) = v17;

  if (v10)
  {

    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_319_0();

    return v19(v18, v19, v20, v21, v22, v23, v24, v25, a9, a10);
  }

  else
  {
    swift_task_alloc();
    OUTLINED_FUNCTION_47();
    *(v13 + 200) = v27;
    *v27 = v28;
    v27[1] = sub_227CDB354;
    OUTLINED_FUNCTION_267_2();
    OUTLINED_FUNCTION_319_0();

    return sub_227B750FC(v29, v30, v31, v32, v33);
  }
}

uint64_t sub_227CDB354()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_0();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 208) = v0;

  OUTLINED_FUNCTION_30_2();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

void sub_227CDB474(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_28_1();
  v15 = 0;
  v14[2] = MEMORY[0x277D84F98];
  v16 = *(v14[3] + 16);
  v14[27] = v16;
  v79 = v14 + 2;
  v17 = v14[26];
  v18 = MEMORY[0x277D84F90];
  while (1)
  {
    v14[28] = v18;
    if (v15 == v16)
    {
      break;
    }

    if (v15 >= v16)
    {
LABEL_34:
      __break(1u);
LABEL_35:
      __break(1u);
      return;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6978, &qword_227D4EA70);
    v14[29] = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      goto LABEL_35;
    }

    v19 = sub_227D4A8F8();
    v14[30] = v20;
    if (v17)
    {

      v66 = OUTLINED_FUNCTION_116_0();
      v67(v66);

      OUTLINED_FUNCTION_234_1(v14[22]);

      OUTLINED_FUNCTION_19_0();
      OUTLINED_FUNCTION_16_0();

      v69(v68, v69, v70, v71, v72, v73, v74, v75, a9, v79, a11, a12, a13, a14);
      return;
    }

    v21 = v19;
    v22 = v20;
    ++v15;
    v23 = sub_227D4B8C8();
    v24 = MEMORY[0x22AAA3ED0](v23);
    v25 = OUTLINED_FUNCTION_281_1();
    v26(v25);
    v27 = 0;
    v28 = *(v24 + 16);
    while (1)
    {
      if (v28 == v27)
      {

        goto LABEL_18;
      }

      if (v27 >= *(v24 + 16))
      {
        __break(1u);
        goto LABEL_34;
      }

      OUTLINED_FUNCTION_55_10();
      v29 = OUTLINED_FUNCTION_328_1();
      v30(v29);
      v32 = sub_227D4B1A8() == v21 && v31 == v22;
      if (v32)
      {
        break;
      }

      v33 = sub_227D4DA78();

      if (v33)
      {
        goto LABEL_17;
      }

      (*(v14[17] + 8))(v14[18], v14[16]);
      ++v27;
    }

LABEL_17:

    (*(v14[17] + 32))(v14[15], v14[18], v14[16]);
LABEL_18:
    v34 = v14[15];
    OUTLINED_FUNCTION_51_10();
    __swift_storeEnumTagSinglePayload(v35, v36, v37, v38);
    OUTLINED_FUNCTION_10_16(v34);
    if (v32)
    {
      sub_227B1DE58(v14[15], &qword_27D7EA1A0, &qword_227D63B98);
      swift_task_alloc();
      OUTLINED_FUNCTION_47();
      v14[31] = v76;
      *v76 = v77;
      OUTLINED_FUNCTION_151_2(v76);
      OUTLINED_FUNCTION_16_0();

      sub_227CDC040();
      return;
    }

    v39 = OUTLINED_FUNCTION_116_0();
    v40(v39);
    sub_227CDC8E8();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v48 = OUTLINED_FUNCTION_8_15();
      v18 = sub_227CF0BE0(v48, v49, v50, v51);
    }

    v42 = *(v18 + 2);
    v41 = *(v18 + 3);
    if (v42 >= v41 >> 1)
    {
      v52 = OUTLINED_FUNCTION_11_22(v41);
      v18 = sub_227CF0BE0(v52, v53, v54, v55);
    }

    v43 = v14[11];
    v44 = v14[8];
    v45 = v14[9];
    (*(v14[17] + 8))(v14[19], v14[16]);
    *(v18 + 2) = v42 + 1;
    OUTLINED_FUNCTION_136_0();
    v47(&v18[v46 + *(v45 + 72) * v42], v43, v44);
    v17 = 0;
    v16 = v14[27];
  }

  OUTLINED_FUNCTION_227_1();
  v56 = OUTLINED_FUNCTION_147();
  v57(v56);

  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_16_0();

  v60(v58, v59, v60, v61, v62, v63, v64, v65, a9, v79, a11, a12, a13, a14);
}

uint64_t sub_227CDB8E8()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v6 = v5;
  *(v3 + 256) = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_227CDBA10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_28_1();
  v15 = v14[7];
  sub_227CDC4C4();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v17 = v14[28];
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_39:
    v89 = OUTLINED_FUNCTION_8_15();
    v17 = sub_227CF0BE0(v89, v90, v91, v92);
  }

  OUTLINED_FUNCTION_72_6();
  if (v18)
  {
    OUTLINED_FUNCTION_59_0();
    v17 = sub_227CF0BE0(v93, v94, v95, v96);
  }

  (*(v14[6] + 8))(v14[7], v14[5]);
  *(v17 + 2) = v15;
  OUTLINED_FUNCTION_136_0();
  v19 = OUTLINED_FUNCTION_181_2();
  v20(v19);
  v21 = v14[32];
  v22 = v14[29];
  while (1)
  {
    v14[28] = v17;
    v23 = v14[27];
    if (v22 == v23)
    {
      break;
    }

    if (v22 >= v23)
    {
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6978, &qword_227D4EA70);
    v14[29] = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      goto LABEL_38;
    }

    v24 = sub_227D4A8F8();
    v14[30] = v25;
    if (v21)
    {

      v76 = OUTLINED_FUNCTION_116_0();
      v77(v76);

      OUTLINED_FUNCTION_234_1(v14[22]);

      OUTLINED_FUNCTION_19_0();
      OUTLINED_FUNCTION_16_0();

      return v79(v78, v79, v80, v81, v82, v83, v84, v85, a9, a10, a11, a12, a13, a14);
    }

    v26 = v24;
    v27 = v25;
    ++v22;
    v28 = v14[14];
    v29 = sub_227D4B8C8();
    v15 = v28;
    v30 = MEMORY[0x22AAA3ED0](v29);
    v31 = OUTLINED_FUNCTION_113();
    v32(v31);
    v33 = 0;
    v34 = *(v30 + 16);
    while (1)
    {
      if (v34 == v33)
      {

        goto LABEL_21;
      }

      if (v33 >= *(v30 + 16))
      {
        __break(1u);
        goto LABEL_37;
      }

      OUTLINED_FUNCTION_55_10();
      v35 = OUTLINED_FUNCTION_328_1();
      v36(v35);
      v37 = sub_227D4B1A8();
      v15 = v38;
      v39 = v37 == v26 && v38 == v27;
      if (v39)
      {
        break;
      }

      v40 = sub_227D4DA78();

      if (v40)
      {
        goto LABEL_20;
      }

      (*(v14[17] + 8))(v14[18], v14[16]);
      ++v33;
    }

LABEL_20:

    (*(v14[17] + 32))(v14[15], v14[18], v14[16]);
LABEL_21:
    v41 = v14[15];
    OUTLINED_FUNCTION_51_10();
    __swift_storeEnumTagSinglePayload(v42, v43, v44, v45);
    OUTLINED_FUNCTION_10_16(v41);
    if (v39)
    {
      sub_227B1DE58(v14[15], &qword_27D7EA1A0, &qword_227D63B98);
      swift_task_alloc();
      OUTLINED_FUNCTION_47();
      v14[31] = v86;
      *v86 = v87;
      OUTLINED_FUNCTION_151_2(v86);
      OUTLINED_FUNCTION_16_0();

      return sub_227CDC040();
    }

    v15 = v14[19];
    v46 = v14[16];
    v47 = v14[17];
    v48 = v14[15];

    v50 = *(v47 + 32);
    v49 = v47 + 32;
    v50(v15, v48, v46);
    sub_227CDC8E8();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v57 = OUTLINED_FUNCTION_8_15();
      v17 = sub_227CF0BE0(v57, v58, v59, v60);
    }

    OUTLINED_FUNCTION_72_6();
    if (v18)
    {
      v61 = OUTLINED_FUNCTION_11_22(v51);
      v17 = sub_227CF0BE0(v61, v62, v63, v64);
    }

    v52 = v14[11];
    v53 = v14[8];
    v54 = v14[9];
    (*(v14[17] + 8))(v14[19], v14[16]);
    *(v17 + 2) = v15;
    OUTLINED_FUNCTION_136_0();
    v56(&v17[v55 + *(v54 + 72) * v49], v52, v53);
    v21 = 0;
  }

  OUTLINED_FUNCTION_227_1();
  v65 = OUTLINED_FUNCTION_147();
  v66(v65);

  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_16_0();

  return v69(v67, v68, v69, v70, v71, v72, v73, v74, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_227CDBEE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_378_1();
  OUTLINED_FUNCTION_119();
  OUTLINED_FUNCTION_234_1(*(v10 + 176));

  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_319_0();

  return v12(v11, v12, v13, v14, v15, v16, v17, v18, a9, a10);
}

uint64_t sub_227CDBF88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_378_1();
  OUTLINED_FUNCTION_119();
  (*(v10[21] + 8))(v10[22], v10[20]);
  OUTLINED_FUNCTION_234_1(v10[22]);

  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_319_0();

  return v12(v11, v12, v13, v14, v15, v16, v17, v18, a9, a10);
}

uint64_t sub_227CDC040()
{
  OUTLINED_FUNCTION_6();
  v1[5] = v2;
  v1[6] = v0;
  v1[3] = v3;
  v1[4] = v4;
  v1[2] = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7EA2B0, &qword_227D64070);
  OUTLINED_FUNCTION_5(v6);
  v1[7] = OUTLINED_FUNCTION_30();
  v7 = sub_227D4B078();
  v1[8] = v7;
  OUTLINED_FUNCTION_10_0(v7);
  v1[9] = v8;
  v1[10] = OUTLINED_FUNCTION_121();
  v1[11] = swift_task_alloc();
  v9 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_227CDC124()
{
  OUTLINED_FUNCTION_182();
  OUTLINED_FUNCTION_51_0();
  v1 = **(v0 + 48);
  if (*(v1 + 16) && (v2 = sub_227B2664C(*(v0 + 24), *(v0 + 32)), (v3 & 1) != 0))
  {
    (*(*(v0 + 72) + 16))(*(v0 + 88), *(v1 + 56) + *(*(v0 + 72) + 72) * v2, *(v0 + 64));
    v4 = OUTLINED_FUNCTION_173_0();
    v5(v4);

    OUTLINED_FUNCTION_15_0();
    OUTLINED_FUNCTION_164();

    return v7(v6, v7, v8, v9, v10, v11, v12, v13);
  }

  else
  {
    swift_task_alloc();
    OUTLINED_FUNCTION_47();
    *(v0 + 96) = v15;
    *v15 = v16;
    v15[1] = sub_227CDC278;
    OUTLINED_FUNCTION_164();

    return sub_227B74EF8(v17, v18, v19);
  }
}

uint64_t sub_227CDC278()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_13();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v5 = v4;
  *(v6 + 104) = v0;

  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_227CDC370(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_183();
  OUTLINED_FUNCTION_119();
  v11 = v10[9];
  v12 = v10[7];
  v13 = v10[8];
  v14 = v10[2];
  (*(v11 + 32))(v14, v10[10], v13);
  (*(v11 + 16))(v12, v14, v13);
  OUTLINED_FUNCTION_99();
  __swift_storeEnumTagSinglePayload(v15, v16, v17, v13);
  sub_227D4CE58();
  OUTLINED_FUNCTION_336_1();
  sub_227CEFB54(v18, v19, v20);

  OUTLINED_FUNCTION_15_0();
  OUTLINED_FUNCTION_163();

  return v22(v21, v22, v23, v24, v25, v26, v27, v28, a9, a10);
}

uint64_t sub_227CDC454()
{
  OUTLINED_FUNCTION_6();

  OUTLINED_FUNCTION_18();

  return v0();
}

void sub_227CDC4C4()
{
  OUTLINED_FUNCTION_11();
  v48 = v0;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6888, &unk_227D4E630);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_26_0();
  v47 = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6978, &qword_227D4EA70);
  OUTLINED_FUNCTION_5(v3);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_26_0();
  v49 = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6D08, &qword_227D59460);
  v7 = OUTLINED_FUNCTION_5(v6);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_54_0();
  v45 = v8 - v9;
  MEMORY[0x28223BE20](v10);
  v12 = &v45 - v11;
  v13 = sub_227D492A8();
  OUTLINED_FUNCTION_9();
  v15 = v14;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_54_0();
  v19 = v17 - v18;
  v21 = MEMORY[0x28223BE20](v20);
  v23 = &v45 - v22;
  v24 = MEMORY[0x28223BE20](v21);
  v26 = &v45 - v25;
  v27 = MEMORY[0x22AAA3D70](v24);
  if (v28)
  {
    v50 = MEMORY[0x22AAA3D00](v27);
  }

  else
  {
    v29 = v27;
    v30 = MEMORY[0x22AAA3D40]();
    if (__OFADD__(v30, v29))
    {
      goto LABEL_16;
    }

    v50 = v30 + v29;
  }

  sub_227C1897C();
  sub_227B27F4C(MEMORY[0x277D84A28]);
  (*(v15 + 32))(v26, v23, v13);
  sub_227D4B038();
  v31 = sub_227D4AF88();
  v33 = v32;
  if (v31 == sub_227D4AF88() && v33 == v34)
  {

    goto LABEL_12;
  }

  v36 = sub_227D4DA78();

  if (v36)
  {
LABEL_12:
    v50 = MEMORY[0x22AAA3D00](v37);
    sub_227C1897C();
    sub_227B27F4C(MEMORY[0x277D84A28]);
    v38 = v12;
    v39 = 0;
    goto LABEL_13;
  }

  v38 = v12;
  v39 = 1;
LABEL_13:
  __swift_storeEnumTagSinglePayload(v38, v39, 1, v13);
  sub_227D4AF68();
  sub_227D4A8E8();
  OUTLINED_FUNCTION_12_15();
  sub_227CEE1E4();
  if (*(v40 + 16))
  {
    OUTLINED_FUNCTION_136_0();
    v43(v47, v41 + v42, v46);

    OUTLINED_FUNCTION_327();
    v44(v19, v26, v13);
    sub_227CF3F60();
    sub_227D49F38();
    sub_227B1DE58(v12, &qword_27D7E6D08, &qword_227D59460);
    (*(v15 + 8))(v26, v13);
    OUTLINED_FUNCTION_8_1();
    return;
  }

  __break(1u);
LABEL_16:
  __break(1u);
}

void sub_227CDC8E8()
{
  OUTLINED_FUNCTION_11();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6D08, &qword_227D59460);
  OUTLINED_FUNCTION_5(v1);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_246_0();
  v19 = sub_227D492A8();
  OUTLINED_FUNCTION_62_0();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_3();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6888, &unk_227D4E630);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_61_4();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6978, &qword_227D4EA70);
  OUTLINED_FUNCTION_5(v6);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_68_3();
  sub_227D4B1A8();
  sub_227D4A8E8();
  v8 = OUTLINED_FUNCTION_170_2();
  v9 = sub_227CE9B9C(v8, MEMORY[0x277D0C390]);
  v10 = OUTLINED_FUNCTION_160_3();
  v12 = sub_227CDA190(v10, v11, v9);

  if (*(v12 + 16))
  {
    OUTLINED_FUNCTION_136_0();
    v14(v0, v12 + v13, v4);

    MEMORY[0x22AAA3F00](v15);
    sub_227C1897C();
    sub_227B27F4C(MEMORY[0x277D84A28]);
    sub_227D4B1C8();
    OUTLINED_FUNCTION_71_0();
    __swift_storeEnumTagSinglePayload(v16, v17, v18, v19);
    OUTLINED_FUNCTION_114();
    sub_227D49F38();
    OUTLINED_FUNCTION_8_1();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_227CDCB28()
{
  OUTLINED_FUNCTION_6();
  v1[12] = v2;
  v1[13] = v0;
  v3 = sub_227D4B078();
  v1[14] = v3;
  OUTLINED_FUNCTION_10_0(v3);
  v1[15] = v4;
  v1[16] = OUTLINED_FUNCTION_30();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6978, &qword_227D4EA70);
  v1[17] = v5;
  OUTLINED_FUNCTION_10_0(v5);
  v1[18] = v6;
  v1[19] = OUTLINED_FUNCTION_30();
  v7 = swift_task_alloc();
  v1[20] = v7;
  *v7 = v1;
  v8 = OUTLINED_FUNCTION_19_15(v7);

  return sub_227B24B80(v8);
}

uint64_t sub_227CDCC5C()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v6 = v5;
  *(v3 + 168) = v0;

  if (v0)
  {

    OUTLINED_FUNCTION_18();

    return v7();
  }

  else
  {

    v9 = OUTLINED_FUNCTION_16();

    return MEMORY[0x2822009F8](v9, v10, v11);
  }
}

uint64_t sub_227CDCD98()
{
  OUTLINED_FUNCTION_34_0();
  OUTLINED_FUNCTION_51_0();
  v1 = *(v0[12] + 16);
  v2 = v0[21];
  v3 = MEMORY[0x277D84F90];
  v0[23] = 0;
  v0[24] = v3;
  v0[22] = v1;
  if (v1)
  {
    v4 = v0[13];
    v5 = OUTLINED_FUNCTION_106_5();
    v6(v5);
    sub_227B23878(v4 + 40, (v0 + 2));
    sub_227D4A8F8();
    v0[25] = v7;
    if (v2)
    {
      sub_227B26090((v0 + 2));

      v8 = OUTLINED_FUNCTION_57_0();
      v9(v8);

      OUTLINED_FUNCTION_19_0();
      OUTLINED_FUNCTION_33_0();

      return v11(v10, v11, v12, v13, v14, v15, v16, v17);
    }

    else
    {
      OUTLINED_FUNCTION_332();
      swift_task_alloc();
      OUTLINED_FUNCTION_47();
      v0[26] = v27;
      *v27 = v28;
      OUTLINED_FUNCTION_137_5(v27);
      OUTLINED_FUNCTION_33_0();

      return sub_227B74EF8(v29, v30, v31);
    }
  }

  else
  {

    OUTLINED_FUNCTION_115();
    OUTLINED_FUNCTION_33_0();

    return v21(v19, v20, v21, v22, v23, v24, v25, v26);
  }
}

uint64_t sub_227CDCF38()
{
  OUTLINED_FUNCTION_20();
  v2 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 216) = v0;

  sub_227B26090(v2 + 16);
  if (v0)
  {
  }

  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_227CDD084(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_28_1();
  v15 = v14[27];
  v16 = v14[19];
  v17 = v14[16];
  MEMORY[0x22AAA3D10]();
  v18 = swift_task_alloc();
  *(v18 + 16) = v16;
  *(v18 + 24) = v17;
  sub_227CDA4F4();
  if (v15)
  {
    v19 = v14[18];
    v63 = v14[19];
    v20 = v14[17];

    v21 = OUTLINED_FUNCTION_93_0();
    v22(v21);
    (*(v19 + 8))(v63, v20);

    OUTLINED_FUNCTION_19_0();
    OUTLINED_FUNCTION_16_0();

    return v24(v23, v24, v25, v26, v27, v28, v29, v30, a9, v63, a11, a12, a13, a14);
  }

  else
  {
    OUTLINED_FUNCTION_308();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v33 = v14[24];
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      OUTLINED_FUNCTION_54();
      sub_227CF0F18();
      v33 = v61;
    }

    v35 = *(v33 + 16);
    v34 = *(v33 + 24);
    if (v35 >= v34 >> 1)
    {
      OUTLINED_FUNCTION_12(v34);
      OUTLINED_FUNCTION_117();
      sub_227CF0F18();
      v33 = v62;
    }

    v36 = v14[16];
    v37 = v14[14];
    v38 = v14[15];
    *(v33 + 16) = v35 + 1;
    *(v33 + 8 * v35 + 32) = v17;
    (*(v38 + 8))(v36, v37);
    v39 = OUTLINED_FUNCTION_148();
    v40(v39);
    v41 = v14[22];
    v42 = v14[23] + 1;
    v14[23] = v42;
    v14[24] = v33;
    if (v42 == v41)
    {

      OUTLINED_FUNCTION_7();
      OUTLINED_FUNCTION_16_0();

      return v45(v43, v44, v45, v46, v47, v48, v49, v50, a9, a10, a11, a12, a13, a14);
    }

    else
    {
      v51 = v14[13];
      v52 = OUTLINED_FUNCTION_4_27();
      v53(v52);
      sub_227B23878(v51 + 40, (v14 + 2));
      sub_227D4A8F8();
      v14[25] = v54;
      swift_task_alloc();
      OUTLINED_FUNCTION_47();
      v14[26] = v55;
      *v55 = v56;
      OUTLINED_FUNCTION_137_5(v55);
      OUTLINED_FUNCTION_16_0();

      return sub_227B74EF8(v57, v58, v59);
    }
  }
}

uint64_t sub_227CDD3C8()
{
  OUTLINED_FUNCTION_6();
  (*(v0[18] + 8))(v0[19], v0[17]);

  OUTLINED_FUNCTION_18();

  return v1();
}

void sub_227CDD448()
{
  OUTLINED_FUNCTION_351();
  v15 = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6888, &unk_227D4E630);
  OUTLINED_FUNCTION_9();
  v5 = v4;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_61_4();
  v7 = OUTLINED_FUNCTION_168_4();
  v8 = sub_227CE9B9C(v7, MEMORY[0x277D0C360]);
  v9 = OUTLINED_FUNCTION_160_3();
  v11 = sub_227CDA190(v9, v10, v8);

  if (*(v11 + 16))
  {
    OUTLINED_FUNCTION_19();
    (*(v5 + 16))(v1, v11 + v12, v3);

    v13 = OUTLINED_FUNCTION_149_0();
    sub_227CDD5B8(v13, v14);
    (*(v5 + 8))(v1, v3);
    if (v0)
    {
      *v15 = v0;
    }

    OUTLINED_FUNCTION_352();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_227CDD5B8(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6888, &unk_227D4E630);
  OUTLINED_FUNCTION_9();
  v5 = v4;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_246_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6978, &qword_227D4EA70);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_67_1();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E67C0, &unk_227D4FB20);
  OUTLINED_FUNCTION_5(v8);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_75_2();
  sub_227D4B978();
  sub_227D4A888();
  v10 = OUTLINED_FUNCTION_173();
  v11(v10);
  (*(v5 + 16))(v2, a2, v3);
  sub_227D4B948();
  sub_227D4B958();
  MEMORY[0x22AAA4680]();
  sub_227D4B968();
  return sub_227D4A518();
}

uint64_t sub_227CDD7BC(uint64_t a1)
{
  *(v2 + 56) = a1;
  *(v2 + 64) = v1;
  return OUTLINED_FUNCTION_1();
}

uint64_t sub_227CDD7D0()
{
  OUTLINED_FUNCTION_34_0();
  OUTLINED_FUNCTION_51_0();
  OUTLINED_FUNCTION_2_36();
  swift_task_alloc();
  OUTLINED_FUNCTION_47();
  *(v0 + 72) = v1;
  *v1 = v2;
  OUTLINED_FUNCTION_178_5(v1);
  OUTLINED_FUNCTION_6_20();
  OUTLINED_FUNCTION_33_0();

  return v7(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_227CDD8C8()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  v1 = *v0;
  OUTLINED_FUNCTION_5_4();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

void sub_227CDD9AC()
{
  OUTLINED_FUNCTION_119();
  OUTLINED_FUNCTION_13_0((v0 + 16));
  sub_227CD57E4();
  *(v0 + 80) = v1;
  OUTLINED_FUNCTION_286_1();
  OUTLINED_FUNCTION_28_2();
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_354(v2);
  *v3 = v4;
  OUTLINED_FUNCTION_104_6(v3);
  OUTLINED_FUNCTION_42_2();

  __asm { BRAA            X3, X16 }
}

uint64_t sub_227CDDAF8()
{
  OUTLINED_FUNCTION_6();
  v1[13] = v2;
  v1[14] = v0;
  v1[12] = v3;
  v4 = sub_227D49F78();
  v1[15] = v4;
  OUTLINED_FUNCTION_10_0(v4);
  v1[16] = v5;
  v1[17] = OUTLINED_FUNCTION_30();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E73C8, &qword_227D51870);
  OUTLINED_FUNCTION_5(v6);
  v1[18] = OUTLINED_FUNCTION_30();
  v7 = swift_task_alloc();
  v1[19] = v7;
  *v7 = v1;
  v8 = OUTLINED_FUNCTION_19_15(v7);

  return sub_227B24B80(v8);
}

uint64_t sub_227CDDC04()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_0();
  *v4 = v3;
  *v4 = *v1;
  v3[20] = v5;
  v3[21] = v6;
  v3[22] = v0;

  if (v0)
  {

    OUTLINED_FUNCTION_27();

    return v7();
  }

  else
  {
    OUTLINED_FUNCTION_30_2();

    return MEMORY[0x2822009F8](v9, v10, v11);
  }
}

uint64_t sub_227CDDD40()
{
  OUTLINED_FUNCTION_34_0();
  OUTLINED_FUNCTION_51_0();
  v1 = v0[22];
  OUTLINED_FUNCTION_324_0(v0[14]);
  sub_227D4A8F8();
  v0[23] = v2;
  if (v1)
  {
    sub_227B26090((v0 + 2));

    OUTLINED_FUNCTION_19_0();
    OUTLINED_FUNCTION_33_0();

    return v4(v3, v4, v5, v6, v7, v8, v9, v10);
  }

  else
  {
    OUTLINED_FUNCTION_332();
    v12 = swift_task_alloc();
    v13 = OUTLINED_FUNCTION_163_0(v12);
    *v13 = v14;
    v13[1] = sub_227CDDE50;
    OUTLINED_FUNCTION_53(v0[20]);
    OUTLINED_FUNCTION_33_0();

    return sub_227B745B4(v15, v16, v17, v18);
  }
}

uint64_t sub_227CDDE50()
{
  OUTLINED_FUNCTION_182();
  OUTLINED_FUNCTION_51_0();
  v2 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_0();
  *v5 = v4;
  v2[25] = v6;
  v2[26] = v7;
  v2[27] = v0;

  sub_227B26090((v2 + 2));

  OUTLINED_FUNCTION_30_2();
  OUTLINED_FUNCTION_164();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_227CDDF9C()
{
  OUTLINED_FUNCTION_20();
  v1 = v0[27];
  sub_227D4A908();
  v2 = v0[26];
  if (v1)
  {

    OUTLINED_FUNCTION_19_0();
  }

  else
  {
    v4 = v0[17];
    v5 = v0[15];
    v6 = v0[16];
    *v4 = v0[25];
    v4[1] = v2;
    (*(v6 + 104))(v4, *MEMORY[0x277D0CFC0], v5);
    OUTLINED_FUNCTION_57_0();
    sub_227D49F68();

    OUTLINED_FUNCTION_15_0();
  }

  return v3();
}

uint64_t sub_227CDE07C()
{
  OUTLINED_FUNCTION_6();

  OUTLINED_FUNCTION_18();

  return v0();
}

uint64_t sub_227CDE0E0()
{
  OUTLINED_FUNCTION_6();
  v1[7] = v2;
  v1[8] = v0;
  v3 = type metadata accessor for InternalChallengeInvite(0);
  OUTLINED_FUNCTION_10_0(v3);
  v1[9] = v4;
  v1[10] = OUTLINED_FUNCTION_121();
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6978, &qword_227D4EA70);
  v1[13] = v5;
  OUTLINED_FUNCTION_10_0(v5);
  v1[14] = v6;
  v1[15] = OUTLINED_FUNCTION_30();
  v7 = sub_227D49F78();
  v1[16] = v7;
  OUTLINED_FUNCTION_10_0(v7);
  v1[17] = v8;
  v1[18] = OUTLINED_FUNCTION_30();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E73F8, &unk_227D51880);
  OUTLINED_FUNCTION_10_0(v9);
  v1[19] = v10;
  v1[20] = OUTLINED_FUNCTION_121();
  v1[21] = swift_task_alloc();
  v1[22] = swift_task_alloc();
  v1[23] = swift_task_alloc();
  v1[24] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7EA1A8, &unk_227D63BE0);
  OUTLINED_FUNCTION_5(v11);
  v1[25] = OUTLINED_FUNCTION_121();
  v1[26] = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E73C8, &qword_227D51870);
  v1[27] = v12;
  OUTLINED_FUNCTION_10_0(v12);
  v1[28] = v13;
  v1[29] = OUTLINED_FUNCTION_121();
  v1[30] = swift_task_alloc();
  v14 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v14, v15, v16);
}

uint64_t sub_227CDE35C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void (*a13)(uint64_t, uint64_t, uint64_t), uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_142();
  OUTLINED_FUNCTION_168_0();
  v21 = *(v20 + 56);
  v22 = *(v21 + 16);
  *(v20 + 248) = v22;
  if (!v22)
  {
LABEL_16:
    OUTLINED_FUNCTION_69_7(*(v20 + 240));

    OUTLINED_FUNCTION_7();
    OUTLINED_FUNCTION_137();

    return v67(v65, v66, v67, v68, v69, v70, v71, v72, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
  }

  v23 = 0;
  v24 = *(v20 + 224);
  v25 = *(v24 + 80);
  *(v20 + 368) = v25;
  v26 = MEMORY[0x277D0D4E0];
  *(v20 + 372) = *MEMORY[0x277D0D4D8];
  *(v20 + 376) = *v26;
  *(v20 + 380) = *MEMORY[0x277D0CFC0];
  v27 = *(v24 + 72);
  *(v20 + 256) = v27;
  a16 = v20 + 168;
  a9 = v20 + 160;
  a10 = v20 + 192;
  v28 = MEMORY[0x277D84F90];
  v29 = *(v24 + 16);
  *(v20 + 264) = v29;
  while (1)
  {
    *(v20 + 272) = v23;
    *(v20 + 280) = v28;
    v30 = *(v20 + 240);
    v29(v30, v21 + ((v25 + 32) & ~v25) + v27 * v23, *(v20 + 216));
    sub_227D4A818();
    *(v20 + 288) = 0;
    v31 = *(v20 + 372);
    v32 = *(v20 + 200);
    v33 = OUTLINED_FUNCTION_5_26();
    sub_227CF1940(v33, &qword_27D7EA1B0, v34);
    OUTLINED_FUNCTION_280();
    OUTLINED_FUNCTION_51_10();
    __swift_storeEnumTagSinglePayload(v35, v36, v37, v38);
    sub_227CF3EB4();
    v39 = *(v30 - 8);
    if ((*(v39 + 88))(v32, v30) == v31)
    {
      LODWORD(a15) = *(v20 + 380);
      v40 = *(v20 + 232);
      v41 = *(v20 + 216);
      v42 = *(v20 + 200);
      a13 = *(v20 + 264);
      a14 = *(v20 + 192);
      v44 = *(v20 + 136);
      v43 = *(v20 + 144);
      a11 = *(v20 + 240);
      a12 = *(v20 + 128);
      (*(v39 + 96))(v42, v30);
      v45 = *v42;
      v46 = v42[1];
      a13(v40, a11, v41);
      *v43 = v45;
      v43[1] = v46;
      (*(v44 + 104))(v43, a15, a12);
      v30 = a14;
      OUTLINED_FUNCTION_276();
      sub_227D49F68();
      sub_227D49F88();
      OUTLINED_FUNCTION_202_0();
      OUTLINED_FUNCTION_99();
      if ((OUTLINED_FUNCTION_379_1(v47, v48, v49, v50) & 1) == 0)
      {
        OUTLINED_FUNCTION_8_15();
        sub_227CF0D04();
        v28 = v61;
      }

      OUTLINED_FUNCTION_259_1();
      if (v52)
      {
        OUTLINED_FUNCTION_11_22(v51);
        sub_227CF0D04();
        v28 = v62;
      }

      goto LABEL_14;
    }

    OUTLINED_FUNCTION_330_0();
    if (v53)
    {
      break;
    }

    (*(v39 + 8))(*(v20 + 200), v30);
    sub_227D49F88();
    OUTLINED_FUNCTION_71_0();
    if ((OUTLINED_FUNCTION_379_1(v54, v55, v56, v57) & 1) == 0)
    {
      OUTLINED_FUNCTION_8_15();
      sub_227CF0D04();
      v28 = v63;
    }

    OUTLINED_FUNCTION_259_1();
    if (v52)
    {
      OUTLINED_FUNCTION_11_22(v58);
      sub_227CF0D04();
      v28 = v64;
    }

LABEL_14:
    v59 = *(v20 + 248);
    v60 = *(v20 + 272) + 1;
    (*(*(v20 + 224) + 8))(*(v20 + 240), *(v20 + 216));
    *(v28 + 16) = v30;
    OUTLINED_FUNCTION_19();
    sub_227CF3EB4();
    if (v60 == v59)
    {
      goto LABEL_16;
    }

    v29 = *(v20 + 264);
    v23 = *(v20 + 272) + 1;
    v27 = *(v20 + 256);
    LOBYTE(v25) = *(v20 + 368);
    v21 = *(v20 + 56);
  }

  v74 = *(v20 + 200);
  v75 = OUTLINED_FUNCTION_87_1();
  v76(v75);
  *(v20 + 296) = *v74;
  *(v20 + 304) = v74[1];
  *(v20 + 312) = v74[2];
  *(v20 + 320) = v74[3];
  v77 = OUTLINED_FUNCTION_9_2();
  __swift_project_boxed_opaque_existential_1(v77, v78);
  v90 = OUTLINED_FUNCTION_308() + 16;
  OUTLINED_FUNCTION_36_0();
  v91 = v79 + *v79;
  swift_task_alloc();
  OUTLINED_FUNCTION_47();
  *(v20 + 328) = v80;
  *v80 = v81;
  OUTLINED_FUNCTION_126_4(v80);
  OUTLINED_FUNCTION_137();

  return v86(v82, v83, v84, v85, v86, v87, v88, v89, a9, a10, a11, a12, a13, a14, v90, v91, a17, a18, a19, a20);
}

uint64_t sub_227CDE9A0()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  v1 = *v0;
  OUTLINED_FUNCTION_5_4();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_227CDEA84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_109_1();
  OUTLINED_FUNCTION_152();
  v19 = v18[36];
  v20 = v18[6];
  __swift_project_boxed_opaque_existential_1(v18 + 2, v18[5]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6850, qword_227D54330);
  OUTLINED_FUNCTION_378();
  v21 = swift_allocObject();
  v18[42] = v21;
  *(v21 + 16) = xmmword_227D4E520;
  sub_227D4A828();
  if (v19)
  {
    (*(v18[28] + 8))(v18[30], v18[27]);

    *(v21 + 16) = 0;

    __swift_destroy_boxed_opaque_existential_0(v18 + 2);
    v44 = v18[15];
    v45 = v18[12];
    v46 = v18[11];
    v47 = v18[10];

    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_90();

    return v23(v22, v23, v24, v25, v26, v27, v28, v29, a9, v44, v45, v46, v47, v19, a15, a16, a17, a18);
  }

  else
  {
    v31 = sub_227D4A8F8();
    v33 = v32;
    (*(v18[14] + 8))(v18[15], v18[13]);
    *(v21 + 32) = v31;
    *(v21 + 40) = v33;
    OUTLINED_FUNCTION_36_0();
    v48 = v34 + *v34;
    v35 = swift_task_alloc();
    v18[43] = v35;
    *v35 = v18;
    v35[1] = sub_227CDED94;
    OUTLINED_FUNCTION_13_2();
    OUTLINED_FUNCTION_90();

    return v39(v36, v37, v38, v39, v40, v41, v42, v43, a9, a10, a11, a12, v20 + 40, v48, a15, a16, a17, a18);
  }
}

uint64_t sub_227CDED94()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_93();
  OUTLINED_FUNCTION_5_4();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_0();
  *v5 = v4;
  *(v2 + 352) = v6;
  *(v2 + 360) = v0;

  OUTLINED_FUNCTION_209();
  if (v0)
  {
  }

  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_227CDEED8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void (*a12)(uint64_t, uint64_t, uint64_t), uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_142();
  OUTLINED_FUNCTION_168_0();
  v21 = *(v20 + 352);
  if (!*(v21 + 16))
  {

    __swift_destroy_boxed_opaque_existential_0((v20 + 16));
    goto LABEL_20;
  }

  v22 = *(v21 + 32);
  sub_227D4CE58();

  __swift_destroy_boxed_opaque_existential_0((v20 + 16));
  if (!v22)
  {
LABEL_19:

LABEL_20:
    v22 = *(v20 + 176);
    sub_227D49F88();
    OUTLINED_FUNCTION_202_0();
    OUTLINED_FUNCTION_71_0();
    v39 = OUTLINED_FUNCTION_379_1(v35, v36, v37, v38);
    v40 = *(v20 + 280);
    if (v39)
    {
LABEL_21:
      OUTLINED_FUNCTION_72_6();
      if (v41)
      {
        OUTLINED_FUNCTION_59_0();
        sub_227CF0D04();
        v40 = v135;
      }

      v42 = *(v20 + 360);
LABEL_24:
      v138 = v20 + 192;
      while (1)
      {
        while (1)
        {
          while (1)
          {
            v43 = *(v20 + 248);
            v44 = *(v20 + 272) + 1;
            (*(*(v20 + 224) + 8))(*(v20 + 240), *(v20 + 216));
            *(v40 + 16) = v22;
            OUTLINED_FUNCTION_19();
            sub_227CF3EB4();
            if (v44 == v43)
            {
              OUTLINED_FUNCTION_69_7(*(v20 + 240));

              OUTLINED_FUNCTION_7();
              OUTLINED_FUNCTION_137();

              return v92(v90, v91, v92, v93, v94, v95, v96, v97, v138, a10, a11, a12, a13, a14, v20 + 160, v20 + 168, a17, a18, a19, a20);
            }

            v45 = *(v20 + 264);
            v46 = *(v20 + 272) + 1;
            *(v20 + 272) = v46;
            *(v20 + 280) = v40;
            v22 = *(v20 + 240);
            v45(v22, *(v20 + 56) + ((*(v20 + 368) + 32) & ~*(v20 + 368)) + *(v20 + 256) * v46, *(v20 + 216));
            sub_227D4A818();
            *(v20 + 288) = v42;
            if (!v42)
            {
              break;
            }

            v22 = *(v20 + 208);

            v47 = OUTLINED_FUNCTION_5_26();
            sub_227CF1940(v47, &qword_27D7EA1B0, v48);
            OUTLINED_FUNCTION_202_0();
            OUTLINED_FUNCTION_71_0();
            __swift_storeEnumTagSinglePayload(v49, v50, v51, v52);
            sub_227B1DE58(v22, &qword_27D7EA1A8, &unk_227D63BE0);
            sub_227D49F88();
            OUTLINED_FUNCTION_71_0();
            if ((OUTLINED_FUNCTION_379_1(v53, v54, v55, v56) & 1) == 0)
            {
              OUTLINED_FUNCTION_8_15();
              sub_227CF0D04();
              v40 = v87;
            }

            v42 = 0;
            OUTLINED_FUNCTION_72_6();
            if (v41)
            {
              goto LABEL_43;
            }
          }

          v58 = *(v20 + 372);
          v59 = *(v20 + 200);
          v60 = OUTLINED_FUNCTION_5_26();
          sub_227CF1940(v60, &qword_27D7EA1B0, v61);
          OUTLINED_FUNCTION_280();
          OUTLINED_FUNCTION_51_10();
          __swift_storeEnumTagSinglePayload(v62, v63, v64, v65);
          sub_227CF3EB4();
          v66 = *(v22 - 8);
          v67 = (*(v66 + 88))(v59, v22);
          if (v67 != v58)
          {
            break;
          }

          LODWORD(a14) = *(v20 + 380);
          v68 = *(v20 + 232);
          v69 = *(v20 + 216);
          v70 = *(v20 + 200);
          a12 = *(v20 + 264);
          a13 = *(v20 + 192);
          v72 = *(v20 + 136);
          v71 = *(v20 + 144);
          a10 = *(v20 + 240);
          a11 = *(v20 + 128);
          (*(v66 + 96))(v70, v22);
          v73 = *v70;
          v74 = v70[1];
          a12(v68, a10, v69);
          *v71 = v73;
          v71[1] = v74;
          (*(v72 + 104))(v71, a14, a11);
          v22 = a13;
          sub_227D49F68();
          sub_227D49F88();
          OUTLINED_FUNCTION_202_0();
          OUTLINED_FUNCTION_99();
          if ((OUTLINED_FUNCTION_379_1(v75, v76, v77, v78) & 1) == 0)
          {
            OUTLINED_FUNCTION_8_15();
            sub_227CF0D04();
            v40 = v88;
          }

          v42 = 0;
          OUTLINED_FUNCTION_72_6();
          if (v41)
          {
            goto LABEL_43;
          }
        }

        v79 = *(v20 + 200);
        if (v67 == *(v20 + 376))
        {
          v99 = OUTLINED_FUNCTION_87_1();
          v100(v99);
          *(v20 + 296) = *v79;
          *(v20 + 304) = v79[1];
          *(v20 + 312) = v79[2];
          *(v20 + 320) = v79[3];
          v101 = OUTLINED_FUNCTION_9_2();
          __swift_project_boxed_opaque_existential_1(v101, v102);
          v139 = OUTLINED_FUNCTION_308() + 16;
          OUTLINED_FUNCTION_36_0();
          v140 = v103 + *v103;
          swift_task_alloc();
          OUTLINED_FUNCTION_47();
          *(v20 + 328) = v104;
          *v104 = v105;
          OUTLINED_FUNCTION_126_4(v104);
          OUTLINED_FUNCTION_137();

          return v110(v106, v107, v108, v109, v110, v111, v112, v113, v138, a10, a11, a12, a13, a14, v139, v140, a17, a18, a19, a20);
        }

        v80 = OUTLINED_FUNCTION_87_1();
        v81(v80);
        sub_227D49F88();
        OUTLINED_FUNCTION_71_0();
        if ((OUTLINED_FUNCTION_379_1(v82, v83, v84, v85) & 1) == 0)
        {
          OUTLINED_FUNCTION_8_15();
          sub_227CF0D04();
          v40 = v89;
        }

        v42 = 0;
        OUTLINED_FUNCTION_72_6();
        if (v41)
        {
LABEL_43:
          OUTLINED_FUNCTION_11_22(v57);
          sub_227CF0D04();
          v40 = v86;
          v42 = 0;
        }
      }
    }

LABEL_61:
    OUTLINED_FUNCTION_54();
    sub_227CF0D04();
    v40 = v134;
    goto LABEL_21;
  }

  v23 = *(v22 + 16);
  if (!v23)
  {
LABEL_17:

    goto LABEL_19;
  }

  v24 = 0;
  OUTLINED_FUNCTION_19();
  while (1)
  {
    if (v24 >= *(v22 + 16))
    {
      __break(1u);
      goto LABEL_61;
    }

    v26 = *(v20 + 296);
    v25 = *(v20 + 304);
    v27 = *(v20 + 80);
    OUTLINED_FUNCTION_10_18();
    sub_227CF3E08(v28, v27);
    v29 = *(v27 + 24) == v26 && *(v27 + 32) == v25;
    if (v29 || (sub_227D4DA78() & 1) != 0)
    {
      v30 = *(v20 + 312);
      v31 = *(v20 + 80);
      v32 = *(v31 + 40);
      v33 = *(v31 + 48);
      if (v32 == v30 && v33 == *(v20 + 320))
      {
        goto LABEL_51;
      }

      if (OUTLINED_FUNCTION_385_1(v32, v33, v30))
      {
        break;
      }
    }

    ++v24;
    OUTLINED_FUNCTION_4_28();
    sub_227CF3E60();
    if (v23 == v24)
    {
      goto LABEL_17;
    }
  }

  v31 = *(v20 + 80);
LABEL_51:
  v114 = *(v20 + 360);
  v115 = *(v20 + 88);

  sub_227CF3DB0(v31, v115);
  v116 = OUTLINED_FUNCTION_114();
  sub_227CF3DB0(v116, v117);
  sub_227CDF994();
  v22 = *(v20 + 280);
  if (!v114)
  {
    sub_227D49F88();
    OUTLINED_FUNCTION_99();
    __swift_storeEnumTagSinglePayload(v128, v129, v130, v131);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v40 = *(v20 + 280);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      OUTLINED_FUNCTION_54();
      sub_227CF0D04();
      v40 = v136;
    }

    OUTLINED_FUNCTION_72_6();
    if (v41)
    {
      OUTLINED_FUNCTION_12(v133);
      OUTLINED_FUNCTION_59_0();
      sub_227CF0D04();
      v40 = v137;
    }

    OUTLINED_FUNCTION_4_28();
    sub_227CF3E60();
    v42 = 0;
    goto LABEL_24;
  }

  OUTLINED_FUNCTION_4_28();
  sub_227CF3E60();
  v118 = OUTLINED_FUNCTION_132_0();
  v119(v118);

  OUTLINED_FUNCTION_69_7(*(v20 + 240));

  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_137();

  return v121(v120, v121, v122, v123, v124, v125, v126, v127, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
}

uint64_t sub_227CDF878(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_166();
  (*(v16[28] + 8))(v16[30], v16[27]);
  __swift_destroy_boxed_opaque_existential_0(v16 + 2);
  v26 = v16[15];
  v27 = v16[12];
  v28 = v16[11];
  v29 = v16[10];
  v30 = v16[45];

  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_23();

  return v18(v17, v18, v19, v20, v21, v22, v23, v24, v26, v27, v28, v29, v30, a14, a15, a16);
}

void sub_227CDF994()
{
  OUTLINED_FUNCTION_351();
  v53 = v1;
  v45 = v2;
  sub_227D49F78();
  OUTLINED_FUNCTION_9();
  v43 = v4;
  v44 = v3;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_5_3();
  v42 = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E73C8, &qword_227D51870);
  OUTLINED_FUNCTION_5(v6);
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_26_0();
  v46 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E67C0, &unk_227D4FB20);
  OUTLINED_FUNCTION_9();
  v51 = v10;
  v52 = v9;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_54_0();
  v50 = (v11 - v12);
  MEMORY[0x28223BE20](v13);
  v55 = &v41 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6978, &qword_227D4EA70);
  OUTLINED_FUNCTION_9();
  v17 = v16;
  OUTLINED_FUNCTION_11_1();
  MEMORY[0x28223BE20](v18);
  v20 = &v41 - v19;
  sub_227D4CE58();
  v54 = v20;
  sub_227D4A8E8();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E8CE8, &unk_227D5BA30);
  OUTLINED_FUNCTION_18_16(v21, &qword_27D7E6890);
  OUTLINED_FUNCTION_66_8();
  v23 = (*(v22 + 80) + 32) & ~*(v22 + 80);
  v48 = v21;
  v24 = swift_allocObject();
  v47 = xmmword_227D4E520;
  *(v24 + 16) = xmmword_227D4E520;
  v25 = (v24 + v23);
  v26 = *(v0 + 24);
  v27 = *(v0 + 32);
  v49 = v0;
  *v25 = v26;
  v25[1] = v27;
  swift_storeEnumTagMultiPayload();
  sub_227D4CE58();
  v28 = v53;
  sub_227D4A8B8();
  if (v28)
  {
    (*(v17 + 8))(v54, v15);
  }

  else
  {
    v41 = v17;
    v53 = v15;
    v29 = swift_allocObject();
    *(v29 + 16) = v47;
    v30 = (v29 + v23);
    v31 = *(v49 + 48);
    *v30 = *(v49 + 40);
    v30[1] = v31;
    swift_storeEnumTagMultiPayload();
    sub_227D4CE58();
    v32 = v50;
    sub_227D4A8B8();
    OUTLINED_FUNCTION_173();
    sub_227D4A918();
    v33 = v51;
    v34 = v52;
    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7EA1B8, &qword_227D63BF0);
    v36 = *(v35 + 48);
    v48 = *(v35 + 64);
    v37 = v32;
    v38 = *(v33 + 16);
    v39 = v42;
    v38(v42, v55, v34);
    v38(v39 + v36, v37, v34);
    type metadata accessor for InternalChallengeInvite(0);
    sub_227CF3F60();
    (*(v43 + 104))(v39, *MEMORY[0x277D0CFC8], v44);
    sub_227D49F68();
    v40 = *(v33 + 8);
    v40(v37, v34);
    v40(v55, v34);
    (*(v41 + 8))(v54, v53);
  }

  OUTLINED_FUNCTION_352();
}

uint64_t sub_227CDFE64()
{
  OUTLINED_FUNCTION_6();
  v1[58] = v2;
  v1[59] = v0;
  v1[57] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6908, &unk_227D4E690);
  OUTLINED_FUNCTION_5(v4);
  v1[60] = OUTLINED_FUNCTION_30();
  v5 = sub_227D49F88();
  v1[61] = v5;
  OUTLINED_FUNCTION_10_0(v5);
  v1[62] = v6;
  v1[63] = OUTLINED_FUNCTION_30();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7EA1C0, &qword_227D63C00);
  OUTLINED_FUNCTION_5(v7);
  v1[64] = OUTLINED_FUNCTION_121();
  v1[65] = swift_task_alloc();
  v8 = type metadata accessor for InternalChallengeInvite(0);
  v1[66] = v8;
  OUTLINED_FUNCTION_10_0(v8);
  v1[67] = v9;
  v1[68] = OUTLINED_FUNCTION_121();
  v1[69] = swift_task_alloc();
  v1[70] = swift_task_alloc();
  v10 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

uint64_t sub_227CDFFD4()
{
  OUTLINED_FUNCTION_6();
  sub_227B23878(v0[59] + 40, (v0 + 16));
  OUTLINED_FUNCTION_337_1();
  v1 = swift_allocObject();
  v0[71] = v1;
  memcpy((v1 + 16), v0 + 16, 0x50uLL);
  swift_task_alloc();
  OUTLINED_FUNCTION_47();
  v0[72] = v2;
  *v2 = v3;
  v2[1] = sub_227CE00B4;

  return sub_227CE1520();
}

uint64_t sub_227CE00B4()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v6 = v5;
  *(v3 + 584) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_227CE01B4()
{
  OUTLINED_FUNCTION_34_0();
  OUTLINED_FUNCTION_51_0();
  OUTLINED_FUNCTION_2_36();
  swift_task_alloc();
  OUTLINED_FUNCTION_47();
  *(v0 + 592) = v1;
  *v1 = v2;
  v1[1] = sub_227CE02B0;
  OUTLINED_FUNCTION_6_20();
  OUTLINED_FUNCTION_33_0();

  return v7(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_227CE02B0()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  v1 = *v0;
  OUTLINED_FUNCTION_5_4();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_227CE0394()
{
  OUTLINED_FUNCTION_51_0();
  OUTLINED_FUNCTION_13_0((v0 + 312));
  OUTLINED_FUNCTION_32();
  v5 = (v1 + *v1);
  swift_task_alloc();
  OUTLINED_FUNCTION_47();
  *(v0 + 600) = v2;
  *v2 = v3;
  v2[1] = sub_227CE04A4;
  OUTLINED_FUNCTION_116_6();

  return v5();
}

uint64_t sub_227CE04A4()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v6 = v5;
  *(v3 + 608) = v0;

  sub_227B1DE58(v3 + 208, &qword_27D7EA198, &qword_227D63B80);
  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_227CE05B4()
{
  OUTLINED_FUNCTION_6();
  __swift_destroy_boxed_opaque_existential_0(v0 + 39);
  v1 = swift_task_alloc();
  v0[77] = v1;
  *v1 = v0;
  v1[1] = sub_227CE0648;
  OUTLINED_FUNCTION_53(v0[58]);

  return sub_227CE29E0();
}

uint64_t sub_227CE0648()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_13();
  *v3 = v2;
  *v3 = *v1;
  v2[78] = v4;
  v2[79] = v5;
  v2[80] = v0;

  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_227CE0750()
{
  OUTLINED_FUNCTION_34_0();
  OUTLINED_FUNCTION_51_0();
  OUTLINED_FUNCTION_2_36();
  swift_task_alloc();
  OUTLINED_FUNCTION_47();
  *(v0 + 648) = v1;
  *v1 = v2;
  v1[1] = sub_227CE084C;
  OUTLINED_FUNCTION_6_20();
  OUTLINED_FUNCTION_33_0();

  return v7(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_227CE084C()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  v1 = *v0;
  OUTLINED_FUNCTION_5_4();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_227CE0930()
{
  OUTLINED_FUNCTION_111();
  __swift_project_boxed_opaque_existential_1(v0 + 44, v0[47]);
  __swift_project_boxed_opaque_existential_1(v0 + 34, v0[37]);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_336_1();
  v1();
  v0[82] = sub_227D4D258();

  OUTLINED_FUNCTION_28_2();
  v2 = swift_task_alloc();
  v0[83] = v2;
  *v2 = v0;
  v2[1] = sub_227CE0AF4;
  OUTLINED_FUNCTION_173_0();
  OUTLINED_FUNCTION_54_4();

  return v3();
}

uint64_t sub_227CE0AF4()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_0();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 672) = v5;
  *(v3 + 680) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_227CE0C00()
{
  v1 = *(v0 + 672);
  v2 = *(v0 + 632);
  v3 = *(v0 + 624);
  __swift_destroy_boxed_opaque_existential_0((v0 + 352));
  *(v0 + 424) = v1;
  *(v0 + 432) = j__OUTLINED_FUNCTION_193_4;
  *(v0 + 440) = 0;

  sub_227D4CE58();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7EA1C8, &qword_227D63C28);
  sub_227D4D788();
  *(v0 + 16) = *(v0 + 392);
  v4 = *(v0 + 408);
  *(v0 + 24) = *(v0 + 400);
  *(v0 + 32) = v4;
  *(v0 + 48) = sub_227CF2B84;
  *(v0 + 56) = 0;
  *(v0 + 64) = sub_227CF2B8C;
  *(v0 + 72) = 0;
  *(v0 + 80) = j__OUTLINED_FUNCTION_193_4;
  *(v0 + 88) = 0;
  *(v0 + 96) = 0;
  *(v0 + 104) = 0;
  *(v0 + 112) = v3;
  *(v0 + 120) = v2;
  v53 = *(v0 + 680);

  v54 = MEMORY[0x277D84F90];
  while (1)
  {
    v6 = *(v0 + 96);
    if (!v6)
    {
      goto LABEL_4;
    }

    v7 = *(v0 + 104);
LABEL_8:
    v10 = *(v6 + 16);
    if (v7 == v10)
    {
      v11 = *(v0 + 512);
      OUTLINED_FUNCTION_71_0();
      __swift_storeEnumTagSinglePayload(v12, v13, v14, v15);
      sub_227B1DE58(v11, &qword_27D7EA1C0, &qword_227D63C00);
LABEL_4:
      while (1)
      {
        v8 = OUTLINED_FUNCTION_141();
        __swift_instantiateConcreteTypeFromMangledNameV2(v8, v9);
        sub_227D4D798();
        v6 = *(v0 + 448);
        if (v6 == 1)
        {
          break;
        }

        if (v6)
        {

          v7 = 0;
          *(v0 + 96) = v6;
          *(v0 + 104) = 0;
          goto LABEL_8;
        }

        sub_227CF2C80(0);
      }

      OUTLINED_FUNCTION_71_0();
      __swift_storeEnumTagSinglePayload(v42, v43, v44, v45);
LABEL_21:
      sub_227B1DE58(*(v0 + 520), &qword_27D7EA1C0, &qword_227D63C00);

      sub_227D4A958();
      OUTLINED_FUNCTION_202_0();
      OUTLINED_FUNCTION_71_0();
      __swift_storeEnumTagSinglePayload(v46, v47, v48, v49);
      v50 = MEMORY[0x277D0CFD0];
      sub_227B12A58(&qword_27D7E7398, MEMORY[0x277D0CFD0]);
      sub_227B12A58(&qword_27D7E73A0, v50);
      sub_227D4A948();

      __swift_destroy_boxed_opaque_existential_0((v0 + 272));

      OUTLINED_FUNCTION_15_0();
LABEL_22:
      OUTLINED_FUNCTION_65();

      __asm { BRAA            X1, X16 }
    }

    if (v7 >= v10)
    {
      break;
    }

    v16 = *(v0 + 520);
    v17 = *(v0 + 512);
    OUTLINED_FUNCTION_19();
    OUTLINED_FUNCTION_10_18();
    sub_227CF3E08(v18, v17);
    *(v0 + 104) = v7 + 1;
    OUTLINED_FUNCTION_51_10();
    __swift_storeEnumTagSinglePayload(v19, v20, v21, v22);
    sub_227CF3EB4();
    OUTLINED_FUNCTION_10_16(v16);
    if (v23)
    {
      goto LABEL_21;
    }

    v24 = *(v0 + 624);
    v25 = *(v0 + 552);
    OUTLINED_FUNCTION_10_18();
    sub_227CF3DB0(v26, v25);
    if (v24(v25))
    {
      sub_227CF3DB0(*(v0 + 552), *(v0 + 560));
      v27 = OUTLINED_FUNCTION_147();
      sub_227CF3DB0(v27, v28);
      sub_227CDF994();
      v29 = v54;
      if (v53)
      {

        OUTLINED_FUNCTION_4_28();
        sub_227CF3E60();

        __swift_destroy_boxed_opaque_existential_0((v0 + 272));

        OUTLINED_FUNCTION_19_0();
        goto LABEL_22;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v36 = OUTLINED_FUNCTION_21();
        v29 = sub_227CF0DF4(v36, v37, v38, v54);
      }

      v31 = *(v29 + 2);
      v30 = *(v29 + 3);
      if (v31 >= v30 >> 1)
      {
        v39 = OUTLINED_FUNCTION_55(v30);
        v29 = sub_227CF0DF4(v39, v40, v41, v29);
      }

      v32 = *(v0 + 504);
      v33 = *(v0 + 488);
      OUTLINED_FUNCTION_4_28();
      sub_227CF3E60();
      *(v29 + 2) = v31 + 1;
      OUTLINED_FUNCTION_19();
      v54 = v29;
      result = (*(v35 + 32))(&v29[v34 + *(v35 + 72) * v31], v32, v33);
      v53 = 0;
    }

    else
    {
      OUTLINED_FUNCTION_4_28();
      result = sub_227CF3E60();
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_227CE1214(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_183();
  OUTLINED_FUNCTION_119();

  OUTLINED_FUNCTION_81_9();

  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_163();

  return v11(v10, v11, v12, v13, v14, v15, v16, v17, a9, a10);
}

uint64_t sub_227CE12AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_183();
  OUTLINED_FUNCTION_119();
  __swift_destroy_boxed_opaque_existential_0((v10 + 312));
  OUTLINED_FUNCTION_81_9();

  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_163();

  return v12(v11, v12, v13, v14, v15, v16, v17, v18, a9, a10);
}

uint64_t sub_227CE1344(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_183();
  OUTLINED_FUNCTION_119();
  __swift_destroy_boxed_opaque_existential_0((v10 + 272));
  OUTLINED_FUNCTION_81_9();

  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_163();

  return v12(v11, v12, v13, v14, v15, v16, v17, v18, a9, a10);
}

uint64_t sub_227CE13DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_183();
  OUTLINED_FUNCTION_119();

  __swift_destroy_boxed_opaque_existential_0((v10 + 352));
  __swift_destroy_boxed_opaque_existential_0((v10 + 272));
  OUTLINED_FUNCTION_81_9();

  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_163();

  return v12(v11, v12, v13, v14, v15, v16, v17, v18, a9, a10);
}

uint64_t sub_227CE1490()
{
  OUTLINED_FUNCTION_6();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_50(v0);
  *v1 = v2;
  v1[1] = sub_227CF4150;
  v3 = OUTLINED_FUNCTION_13_2();

  return sub_227B24B80(v3);
}

uint64_t sub_227CE1520()
{
  OUTLINED_FUNCTION_6();
  v0[18] = v1;
  v0[19] = v2;
  v0[16] = v3;
  v0[17] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E67C0, &unk_227D4FB20);
  v0[20] = v5;
  OUTLINED_FUNCTION_10_0(v5);
  v0[21] = v6;
  v0[22] = OUTLINED_FUNCTION_121();
  v0[23] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6888, &unk_227D4E630);
  v0[24] = v7;
  OUTLINED_FUNCTION_10_0(v7);
  v0[25] = v8;
  v0[26] = OUTLINED_FUNCTION_30();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6978, &qword_227D4EA70);
  v0[27] = v9;
  OUTLINED_FUNCTION_10_0(v9);
  v0[28] = v10;
  v0[29] = OUTLINED_FUNCTION_30();
  v11 = sub_227D4A488();
  v0[30] = v11;
  OUTLINED_FUNCTION_10_0(v11);
  v0[31] = v12;
  v0[32] = OUTLINED_FUNCTION_121();
  v0[33] = swift_task_alloc();
  v13 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v13, v14, v15);
}

uint64_t sub_227CE16E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, unint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_138();
  OUTLINED_FUNCTION_166();
  v17 = *(v16 + 136);
  if (!v17 || (v18 = *(v17 + 16), (*(v16 + 272) = v18) == 0))
  {
    a10 = 0;
    v50 = 0;
    v51 = 0;
    v52 = 0;
LABEL_14:
    OUTLINED_FUNCTION_184_3();
    v53 = *(v16 + 128);

    *v53 = a10;
    v53[1] = v50;
    v53[2] = v51;
    v53[3] = v51;
    v53[4] = v51;
    v53[5] = v51;
    v53[6] = v51;
    v53[7] = v52;
    OUTLINED_FUNCTION_15_0();
LABEL_15:
    OUTLINED_FUNCTION_23();

    return v55(v54, v55, v56, v57, v58, v59, v60, v61, a9, a10, a11, a12, a13, a14, a15, a16);
  }

  v19 = 0;
  v20 = *(v16 + 248);
  v21 = MEMORY[0x277D84FA0];
  *(v16 + 96) = MEMORY[0x277D84FA0];
  *(v16 + 104) = v21;
  *(v16 + 112) = v21;
  *(v16 + 120) = v21;
  *(v16 + 368) = *MEMORY[0x277D0D2D8];
  *(v16 + 372) = *MEMORY[0x277D0D2D0];
  *(v16 + 376) = *MEMORY[0x277D0D2C8];
  *(v16 + 380) = *MEMORY[0x277D0D2C0];
  *(v16 + 384) = *(v20 + 80);
  *(v16 + 280) = *(v20 + 72);
  *(v16 + 288) = *(v20 + 16);
  while (1)
  {
    *(v16 + 296) = v19;
    if (v19 == v18)
    {

      v50 = *(v16 + 104);
      a10 = *(v16 + 96);
      v52 = &unk_283B3E320;
      v51 = MEMORY[0x277D84FA0];
      goto LABEL_14;
    }

    v22 = *(v16 + 288);
    v23 = *(v16 + 368);
    v24 = *(v16 + 248);
    OUTLINED_FUNCTION_105_7();
    v25 = OUTLINED_FUNCTION_250_0();
    v22(v25);
    v26 = OUTLINED_FUNCTION_41_9();
    v22(v26);
    v27 = OUTLINED_FUNCTION_9_2();
    v29 = v28(v27);
    if (v29 == v23)
    {
      v30 = *(v16 + 232);
      v31 = OUTLINED_FUNCTION_106_7();
      v32(v31);
      v33 = OUTLINED_FUNCTION_41_9();
      v34(v33);
      sub_227D4A8F8();
      OUTLINED_FUNCTION_75_8();
      if (v30)
      {
        goto LABEL_18;
      }

      OUTLINED_FUNCTION_185();
      OUTLINED_FUNCTION_183_0();
      sub_227B274CC(v35, v36, v37);
      goto LABEL_11;
    }

    if (v29 != *(v16 + 372))
    {
      break;
    }

    OUTLINED_FUNCTION_223_1();
    v38 = *(v16 + 208);
    v39 = OUTLINED_FUNCTION_106_7();
    v40(v39);
    v41 = OUTLINED_FUNCTION_41_9();
    v42(v41);
    sub_227D4A6A8();
    OUTLINED_FUNCTION_74_7();
    if (v38)
    {
LABEL_18:
      v62 = OUTLINED_FUNCTION_92_4();
      v63(v62);
      v64 = OUTLINED_FUNCTION_100_6();
      v65(v64);

LABEL_19:
      OUTLINED_FUNCTION_134_4();

      OUTLINED_FUNCTION_18();
      goto LABEL_15;
    }

    OUTLINED_FUNCTION_103_5();
    OUTLINED_FUNCTION_183_0();
    sub_227B274CC(v43, v44, v45);
LABEL_11:

    v46 = OUTLINED_FUNCTION_92_4();
    v47(v46);
    v48 = OUTLINED_FUNCTION_100_6();
    v49(v48);
    v19 = *(v16 + 296) + 1;
    v18 = *(v16 + 272);
  }

  OUTLINED_FUNCTION_330_0();
  if (v75)
  {
    v66 = OUTLINED_FUNCTION_73_4();
    v67(v66);
    v68 = OUTLINED_FUNCTION_26_12();
    v69(v68);
    OUTLINED_FUNCTION_0_55();
    a10 = v70;
    v71 = swift_task_alloc();
    v72 = OUTLINED_FUNCTION_208_2(v71);
    *v72 = v73;
    OUTLINED_FUNCTION_43_8(v72);
  }

  else
  {
    OUTLINED_FUNCTION_331();
    if (!v75)
    {

      a11 = 0;
      a12 = 0xE000000000000000;
      sub_227D4D668();
      *(v16 + 16) = 0;
      *(v16 + 24) = 0xE000000000000000;
      OUTLINED_FUNCTION_90_5();
      v85 = MEMORY[0x22AAA5DA0](0xD000000000000024);
      OUTLINED_FUNCTION_314_0(v85, v86, v87, MEMORY[0x277D84698], MEMORY[0x277D846A8]);
      sub_227D49E08();
      OUTLINED_FUNCTION_1_34();
      sub_227B12A58(v88, v89);
      OUTLINED_FUNCTION_78_0();
      OUTLINED_FUNCTION_208();
      swift_allocError();
      OUTLINED_FUNCTION_230_1();

      swift_willThrow();
      v90 = *(v24 + 24);
      v91 = OUTLINED_FUNCTION_236();
      v90(v91);
      v92 = OUTLINED_FUNCTION_132_0();
      v90(v92);
      goto LABEL_19;
    }

    v76 = OUTLINED_FUNCTION_132_0();
    v77(v76);
    v78 = OUTLINED_FUNCTION_57_0();
    v79(v78);
    OUTLINED_FUNCTION_115_5();
    a10 = v80;
    v81 = swift_task_alloc();
    v82 = OUTLINED_FUNCTION_118_3(v81);
    *v82 = v83;
    OUTLINED_FUNCTION_48_9(v82);
    v74 = *(v16 + 176);
  }

  OUTLINED_FUNCTION_53(v74);
  OUTLINED_FUNCTION_23();

  return v55(v54, v55, v56, v57, v58, v59, v60, v61, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_227CE1C3C()
{
  OUTLINED_FUNCTION_20();
  v4 = v3;
  OUTLINED_FUNCTION_8();
  v6 = v5;
  OUTLINED_FUNCTION_0();
  *v7 = v6;
  v8 = *v2;
  OUTLINED_FUNCTION_5_4();
  *v9 = v8;
  v6[39] = v1;

  if (v1)
  {
  }

  else
  {
    v6[40] = v4;
    v6[41] = v0;
  }

  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v10, v11, v12);
}

void sub_227CE1D64()
{
  OUTLINED_FUNCTION_28_1();
  v1 = OUTLINED_FUNCTION_345_1();
  sub_227B274CC(v1, v2, v3);

  v4 = OUTLINED_FUNCTION_148();
  v5(v4);
  v6 = OUTLINED_FUNCTION_9_2();
  v7(v6);
  while (1)
  {
    OUTLINED_FUNCTION_282_1();
    if (v55)
    {
      break;
    }

    v8 = *(v0 + 288);
    v9 = *(v0 + 368);
    v10 = *(v0 + 248);
    OUTLINED_FUNCTION_105_7();
    v11 = OUTLINED_FUNCTION_250_0();
    v8(v11);
    v12 = OUTLINED_FUNCTION_65_7();
    v8(v12);
    v13 = v10 + 88;
    v14 = OUTLINED_FUNCTION_132_0();
    v16 = v15(v14);
    if (v16 == v9)
    {
      v17 = *(v0 + 232);
      v18 = OUTLINED_FUNCTION_106_7();
      v19(v18);
      v20 = OUTLINED_FUNCTION_39_10();
      v21(v20);
      sub_227D4A8F8();
      OUTLINED_FUNCTION_75_8();
      if (v17)
      {
        goto LABEL_11;
      }

      OUTLINED_FUNCTION_185();
      OUTLINED_FUNCTION_183_0();
      sub_227B274CC(v22, v23, v24);
    }

    else
    {
      if (v16 != *(v0 + 372))
      {
        OUTLINED_FUNCTION_330_0();
        if (v55)
        {
          v47 = OUTLINED_FUNCTION_73_4();
          v48(v47);
          v49 = OUTLINED_FUNCTION_26_12();
          v50(v49);
          OUTLINED_FUNCTION_0_55();
          v51 = swift_task_alloc();
          v52 = OUTLINED_FUNCTION_208_2(v51);
          *v52 = v53;
          OUTLINED_FUNCTION_43_8(v52);
        }

        else
        {
          OUTLINED_FUNCTION_331();
          if (!v55)
          {

            OUTLINED_FUNCTION_364_1();
            *(v0 + 16) = v73;
            *(v0 + 24) = v74;
            OUTLINED_FUNCTION_90_5();
            v65 = MEMORY[0x22AAA5DA0](0xD000000000000024);
            OUTLINED_FUNCTION_314_0(v65, v66, v67, MEMORY[0x277D84698], MEMORY[0x277D846A8]);
            sub_227D49E08();
            OUTLINED_FUNCTION_1_34();
            sub_227B12A58(v68, v69);
            OUTLINED_FUNCTION_78_0();
            OUTLINED_FUNCTION_208();
            swift_allocError();
            OUTLINED_FUNCTION_230_1();

            swift_willThrow();
            v70 = *(v13 + 8);
            v71 = OUTLINED_FUNCTION_236();
            v70(v71);
            v72 = OUTLINED_FUNCTION_132_0();
            v70(v72);
LABEL_12:
            OUTLINED_FUNCTION_134_4();

            OUTLINED_FUNCTION_18();
LABEL_13:
            OUTLINED_FUNCTION_149_1();

            __asm { BRAA            X1, X16 }
          }

          v56 = OUTLINED_FUNCTION_132_0();
          v57(v56);
          v58 = OUTLINED_FUNCTION_57_0();
          v59(v58);
          OUTLINED_FUNCTION_115_5();
          v60 = swift_task_alloc();
          v61 = OUTLINED_FUNCTION_118_3(v60);
          *v61 = v62;
          OUTLINED_FUNCTION_48_9(v61);
          v54 = *(v0 + 176);
        }

        OUTLINED_FUNCTION_53(v54);
        OUTLINED_FUNCTION_149_1();

        __asm { BRAA            X1, X16 }
      }

      OUTLINED_FUNCTION_223_1();
      v25 = *(v0 + 208);
      v26 = OUTLINED_FUNCTION_106_7();
      v27(v26);
      v28 = OUTLINED_FUNCTION_39_10();
      v29(v28);
      sub_227D4A6A8();
      OUTLINED_FUNCTION_74_7();
      if (v25)
      {
LABEL_11:
        v41 = OUTLINED_FUNCTION_92_4();
        v42(v41);
        v43 = OUTLINED_FUNCTION_100_6();
        v44(v43);

        goto LABEL_12;
      }

      OUTLINED_FUNCTION_103_5();
      OUTLINED_FUNCTION_183_0();
      sub_227B274CC(v30, v31, v32);
    }

    v33 = OUTLINED_FUNCTION_92_4();
    v34(v33);
    v35 = OUTLINED_FUNCTION_100_6();
    v36(v35);
  }

  v37 = *(v0 + 96);
  v38 = *(v0 + 104);
  OUTLINED_FUNCTION_184_3();
  v39 = *(v0 + 128);

  v40 = MEMORY[0x277D84FA0];
  *v39 = v37;
  v39[1] = v38;
  v39[2] = v40;
  v39[3] = v40;
  v39[4] = v40;
  v39[5] = v40;
  v39[6] = v40;
  v39[7] = &unk_283B3E320;
  OUTLINED_FUNCTION_15_0();
  goto LABEL_13;
}

uint64_t sub_227CE2250()
{
  OUTLINED_FUNCTION_20();
  v4 = v3;
  OUTLINED_FUNCTION_8();
  v6 = v5;
  OUTLINED_FUNCTION_0();
  *v7 = v6;
  v8 = *v2;
  OUTLINED_FUNCTION_5_4();
  *v9 = v8;
  v6[43] = v1;

  if (v1)
  {
  }

  else
  {
    v6[44] = v4;
    v6[45] = v0;
  }

  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v10, v11, v12);
}