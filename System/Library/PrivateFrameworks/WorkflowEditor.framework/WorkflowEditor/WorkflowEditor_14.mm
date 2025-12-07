uint64_t sub_27454674C(char *a1, char *a2, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 16;
  v9 = (a3 - a2) / 16;
  if (v8 < v9)
  {
    sub_274451080(a1, (a2 - a1) / 16, a4);
    v10 = &v4[16 * v8];
    v34 = v5;
    for (i = v10; ; v10 = i)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v22 = v7;
        goto LABEL_39;
      }

      v12 = *(v6 + 1);
      v37 = *v6;
      v13 = v6;
      v14 = *v4;
      v15 = *(v4 + 1);
      v16 = v12;
      v17 = v15;
      v18 = [v16 parameterState];
      v19 = [v17 parameterState];
      if (v18)
      {
        swift_unknownObjectRelease();

        v6 = v13;
        if (!v19)
        {
          goto LABEL_13;
        }

        swift_unknownObjectRelease();
      }

      else
      {

        v6 = v13;
        if (v19)
        {
          swift_unknownObjectRelease();
LABEL_16:
          v20 = v4;
          v21 = v7 == v4;
          v4 += 16;
          if (v21)
          {
            goto LABEL_18;
          }

LABEL_17:
          *v7 = *v20;
          goto LABEL_18;
        }
      }

      if (v37 >= v14)
      {
        goto LABEL_16;
      }

LABEL_13:
      v20 = v6;
      v21 = v7 == v6;
      v6 += 16;
      if (!v21)
      {
        goto LABEL_17;
      }

LABEL_18:
      v7 += 16;
      v5 = v34;
    }
  }

  sub_274451080(a2, (a3 - a2) / 16, a4);
  v10 = &v4[16 * v9];
  v22 = v6;
  v36 = v7;
LABEL_20:
  v35 = v22 - 16;
  for (v5 -= 16; v10 > v4 && v22 > v7; v5 -= 16)
  {
    v40 = v10;
    v24 = v10 - 16;
    v38 = *(v10 - 2);
    v26 = *(v22 - 2);
    v25 = *(v22 - 1);
    v27 = *(v10 - 1);
    v28 = v25;
    v29 = [v27 parameterState];
    v30 = [v28 parameterState];
    if (v29)
    {
      swift_unknownObjectRelease();

      if (!v30)
      {
        goto LABEL_36;
      }

      swift_unknownObjectRelease();
    }

    else
    {

      if (v30)
      {
        swift_unknownObjectRelease();
        goto LABEL_33;
      }
    }

    if (v38 < v26)
    {
LABEL_36:
      v21 = v5 + 16 == v22;
      v22 -= 16;
      v7 = v36;
      v10 = v40;
      if (!v21)
      {
        *v5 = *v35;
      }

      goto LABEL_20;
    }

LABEL_33:
    if (v40 != v5 + 16)
    {
      *v5 = *v24;
    }

    v10 = v24;
    v7 = v36;
  }

LABEL_39:
  v31 = (v10 - v4) / 16;
  if (v22 != v4 || v22 >= &v4[16 * v31])
  {
    memmove(v22, v4, 16 * v31);
  }

  return 1;
}

char *sub_274546A38(char *__src, uint64_t a2, char *__dst)
{
  if (__dst != __src || &__src[16 * a2] <= __dst)
  {
    return memmove(__dst, __src, 16 * a2);
  }

  return __src;
}

char *sub_274546A64(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094B7C0, &qword_274658800);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
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

uint64_t sub_274546B64(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62)
  {
    result = sub_27463C27C();
  }

  else
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (result < a1)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (a1 < 0)
  {
LABEL_8:
    __break(1u);
  }

  return result;
}

void sub_274546BBC()
{
  OUTLINED_FUNCTION_24();
  v10 = v9 - v8;
  if (__OFSUB__(v9, v8))
  {
    __break(1u);
    goto LABEL_22;
  }

  OUTLINED_FUNCTION_0_36();
  v11 = sub_274412734(0, &qword_280950570, 0x277CFC2C0);
  v12 = OUTLINED_FUNCTION_8_21(v11);
  v14 = __OFSUB__(v4, v10);
  v10 = v4 - v10;
  if (v14)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (!v10)
  {
    goto LABEL_12;
  }

  v7 = v5 >> 62;
  if (!(v5 >> 62))
  {
    v15 = *(v1 + 16);
    goto LABEL_6;
  }

LABEL_23:
  v15 = sub_27463C27C();
LABEL_6:
  if (__OFSUB__(v15, v3))
  {
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  sub_274453590(v6 + 8 * v3, v15 - v3, (v2 + 8 * v4));
  if (v7)
  {
    v12 = sub_27463C27C();
  }

  else
  {
    v12 = *(v1 + 16);
  }

  if (__OFADD__(v12, v10))
  {
    goto LABEL_25;
  }

  *(v1 + 16) = v12 + v10;
LABEL_12:
  if (v4 < 1)
  {
    OUTLINED_FUNCTION_23();

    return;
  }

  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_5_27();
  if (v0 < 0 || (v0 & 0x4000000000000000) != 0)
  {
LABEL_26:
    sub_274547520(v0, sub_274547BA0, v13, sub_2745DFFE0);
    goto LABEL_17;
  }

  if (*((v0 & 0xFFFFFFFFFFFFFF8) + 0x10) == v4)
  {
    OUTLINED_FUNCTION_6_17();
LABEL_17:

    OUTLINED_FUNCTION_23();
    return;
  }

  __break(1u);
}

void sub_274546D40()
{
  OUTLINED_FUNCTION_24();
  v12 = v9 - v8;
  if (__OFSUB__(v9, v8))
  {
    __break(1u);
    goto LABEL_20;
  }

  v0 = v11;
  v3 = v10;
  v4 = v9;
  v2 = v8;
  v13 = *v1;
  v6 = *v1 & 0xFFFFFFFFFFFFFF8;
  v7 = v6 + 32;
  v5 = v6 + 32 + 8 * v8;
  type metadata accessor for WFEditorItem();
  swift_arrayDestroy();
  v14 = __OFSUB__(v3, v12);
  v12 = v3 - v12;
  if (v14)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v1 = (v5 + 8 * v3);
  if (!v12)
  {
    goto LABEL_12;
  }

  v5 = v13 >> 62;
  if (!(v13 >> 62))
  {
    v15 = *(v6 + 16);
    goto LABEL_6;
  }

LABEL_21:
  v15 = sub_27463C27C();
LABEL_6:
  if (__OFSUB__(v15, v4))
  {
    __break(1u);
LABEL_23:
    __break(1u);
    return;
  }

  sub_274453590(v7 + 8 * v4, v15 - v4, v1);
  if (v5)
  {
    v16 = sub_27463C27C();
  }

  else
  {
    v16 = *(v6 + 16);
  }

  if (__OFADD__(v16, v12))
  {
    goto LABEL_23;
  }

  *(v6 + 16) = v16 + v12;
LABEL_12:
  if (v3 < 1)
  {
    OUTLINED_FUNCTION_23();
  }

  else
  {
    v17 = v6 + 8 * v2;
    *(v17 + 32) = v0;
    if (v17 + 40 < v1)
    {

      __break(1u);
    }

    OUTLINED_FUNCTION_23();
  }
}

void sub_274546E84(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, char a5)
{
  v6 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_14;
  }

  v10 = *v5;
  v11 = v10 + 32 + 16 * a1;
  a1 = swift_arrayDestroy();
  v12 = __OFSUB__(a3, v6);
  v13 = a3 - v6;
  if (v12)
  {
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (!v13)
  {
    goto LABEL_7;
  }

  v14 = *(v10 + 16);
  if (__OFSUB__(v14, a2))
  {
    goto LABEL_15;
  }

  a1 = sub_274451080((v10 + 32 + 16 * a2), v14 - a2, (v11 + 16 * a3));
  v15 = *(v10 + 16);
  v12 = __OFADD__(v15, v13);
  v16 = v15 + v13;
  if (v12)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  *(v10 + 16) = v16;
LABEL_7:
  a1 = a4;
  if (a3 >= 1)
  {
    *v11 = a4;
    *(v11 + 8) = a5 & 1;
    if (a3 == 1)
    {
      return;
    }

LABEL_17:
    v17 = a1;
    __break(1u);
    return;
  }
}

void sub_274546F90(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{
  v10 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_19;
  }

  v4 = a3;
  v6 = a2;
  v15 = a4;
  v11 = *v5;
  v7 = *v5 & 0xFFFFFFFFFFFFFF8;
  v8 = v7 + 32;
  v5 = (v7 + 32 + 8 * a1);
  sub_274412734(0, &qword_280954170, 0x277D7C680);
  swift_arrayDestroy();
  v12 = __OFSUB__(v4, v10);
  v10 = v4 - v10;
  if (v12)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (!v10)
  {
    goto LABEL_12;
  }

  v9 = v11 >> 62;
  if (!(v11 >> 62))
  {
    v13 = *(v7 + 16);
    goto LABEL_6;
  }

LABEL_20:
  v13 = sub_27463C27C();
LABEL_6:
  if (__OFSUB__(v13, v6))
  {
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  sub_274453590(v8 + 8 * v6, &v13[-v6], &v5[v4]);
  if (v9)
  {
    v13 = sub_27463C27C();
  }

  else
  {
    v13 = *(v7 + 16);
  }

  if (__OFADD__(v13, v10))
  {
    goto LABEL_22;
  }

  *(v7 + 16) = &v13[v10];
LABEL_12:
  v13 = v15;
  if (v4 >= 1)
  {
    *v5 = v15;
    if (v4 == 1)
    {
      return;
    }

LABEL_23:
    v14 = v13;
    __break(1u);
    return;
  }
}

void sub_2745470D0()
{
  OUTLINED_FUNCTION_24();
  v10 = v9 - v8;
  if (__OFSUB__(v9, v8))
  {
    __break(1u);
    goto LABEL_22;
  }

  OUTLINED_FUNCTION_0_36();
  v11 = type metadata accessor for WFEditorItem();
  v12 = OUTLINED_FUNCTION_8_21(v11);
  v14 = __OFSUB__(v4, v10);
  v10 = v4 - v10;
  if (v14)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (!v10)
  {
    goto LABEL_12;
  }

  v7 = v5 >> 62;
  if (!(v5 >> 62))
  {
    v15 = *(v1 + 16);
    goto LABEL_6;
  }

LABEL_23:
  v15 = sub_27463C27C();
LABEL_6:
  if (__OFSUB__(v15, v3))
  {
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  sub_274453590(v6 + 8 * v3, v15 - v3, (v2 + 8 * v4));
  if (v7)
  {
    v12 = sub_27463C27C();
  }

  else
  {
    v12 = *(v1 + 16);
  }

  if (__OFADD__(v12, v10))
  {
    goto LABEL_25;
  }

  *(v1 + 16) = v12 + v10;
LABEL_12:
  if (v4 < 1)
  {
    OUTLINED_FUNCTION_23();

    return;
  }

  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_5_27();
  if (v0 < 0 || (v0 & 0x4000000000000000) != 0)
  {
LABEL_26:
    sub_274547520(v0, sub_274547BBC, v13, sub_2745DFFE0);
    goto LABEL_17;
  }

  if (*((v0 & 0xFFFFFFFFFFFFFF8) + 0x10) == v4)
  {
    OUTLINED_FUNCTION_6_17();
LABEL_17:

    OUTLINED_FUNCTION_23();
    return;
  }

  __break(1u);
}

uint64_t sub_274547244(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_15;
  }

  v3 = a3;
  v6 = a2;
  v10 = *v4;
  v4 = (*v4 & 0xFFFFFFFFFFFFFF8);
  v7 = v4 + 4;
  v5 = &v4[a1 + 4];
  type metadata accessor for WFEditorDragSession();
  result = swift_arrayDestroy();
  v12 = __OFSUB__(v3, v9);
  v9 = v3 - v9;
  if (v12)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (!v9)
  {
    goto LABEL_12;
  }

  v8 = v10 >> 62;
  if (!(v10 >> 62))
  {
    result = v4[2];
    goto LABEL_6;
  }

LABEL_16:
  result = sub_27463C27C();
LABEL_6:
  if (__OFSUB__(result, v6))
  {
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  sub_274453590(&v7[v6], result - v6, (v5 + 8 * v3));
  if (v8)
  {
    result = sub_27463C27C();
  }

  else
  {
    result = v4[2];
  }

  if (__OFADD__(result, v9))
  {
    goto LABEL_18;
  }

  v4[2] = result + v9;
LABEL_12:
  if (v3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

char *sub_27454732C(char *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_11;
  }

  v8 = a3 - v6;
  if (__OFSUB__(a3, v6))
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v11 = *v5;
  v12 = *v5 + 32;
  v13 = (v12 + 16 * result);
  if (v8)
  {
    v14 = *(v11 + 16);
    v15 = __OFSUB__(v14, a2);
    v16 = v14 - a2;
    if (!v15)
    {
      result = sub_274451080((v12 + 16 * a2), v16, &v13[2 * a3]);
      v17 = *(v11 + 16);
      v15 = __OFADD__(v17, v8);
      v18 = v17 + v8;
      if (!v15)
      {
        *(v11 + 16) = v18;
        goto LABEL_7;
      }

LABEL_13:
      __break(1u);
LABEL_14:
      __break(1u);
      return result;
    }

LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

LABEL_7:
  if (a3 >= 1)
  {
    *v13 = a4;
    v13[1] = a5;
    if (a3 != 1)
    {
      goto LABEL_14;
    }
  }

  return result;
}

uint64_t sub_2745473D4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 == a3)
  {
    if (result)
    {
      sub_274412734(0, &qword_280950570, 0x277CFC2C0);
      return swift_arrayInitWithCopy();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_27454744C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 == a3)
  {
    if (result)
    {
      type metadata accessor for WFEditorItem();
      return swift_arrayInitWithCopy();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_2745474B4(void *a1)
{
  v1 = [a1 parameterStates];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094BD50, &qword_2746475D0);
  v3 = sub_27463B81C();

  return v3;
}

uint64_t sub_274547520(uint64_t a1, uint64_t (*a2)(void *, uint64_t), uint64_t a3, uint64_t (*a4)(uint64_t))
{
  v5 = sub_274545BD0(a1, a4);
  v6 = v5[2];

  return a2(v5 + 4, v6);
}

void sub_2745475B0(uint64_t a1)
{
  v3 = sub_274453594();
  v4 = 0;
  v5 = 0;
  v6 = a1 & 0xC000000000000001;
  v7 = MEMORY[0x277D84F90];
  v8 = (MEMORY[0x277D84F90] + 32);
  v9 = a1 & 0xFFFFFFFFFFFFFF8;
  v26 = a1 & 0xFFFFFFFFFFFFFF8;
  v27 = a1;
  while (v3 != v4)
  {
    if (v6)
    {
      v10 = MEMORY[0x277C58B20](v4, a1);
    }

    else
    {
      if (v4 >= *(v9 + 16))
      {
        goto LABEL_29;
      }

      v10 = *(a1 + 8 * v4 + 32);
      swift_unknownObjectRetain();
    }

    if (__OFADD__(v4, 1))
    {
      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
LABEL_31:
      __break(1u);
      goto LABEL_32;
    }

    if (!v5)
    {
      v11 = v7[3];
      if (((v11 >> 1) + 0x4000000000000000) < 0)
      {
        goto LABEL_31;
      }

      v12 = v3;
      v13 = v6;
      v14 = v11 & 0xFFFFFFFFFFFFFFFELL;
      if (v14 <= 1)
      {
        v15 = 1;
      }

      else
      {
        v15 = v14;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280950C88, &qword_274658878);
      v16 = swift_allocObject();
      _swift_stdlib_malloc_size_0(v16);
      OUTLINED_FUNCTION_4_25();
      v16[2] = v15;
      v16[3] = v17;
      v18 = (v16 + 4);
      v19 = v7[3];
      v20 = v19 >> 1;
      if (v7[2])
      {
        if (v16 != v7 || v18 >= &v7[2 * v20 + 4])
        {
          memmove(v16 + 4, v7 + 4, 16 * v20);
        }

        v7[2] = 0;
      }

      v8 = (v18 + 16 * v20);
      v5 = (v1 & 0x7FFFFFFFFFFFFFFFLL) - (v19 >> 1);

      v7 = v16;
      v6 = v13;
      v3 = v12;
      v9 = v26;
      a1 = v27;
    }

    v22 = __OFSUB__(v5--, 1);
    if (v22)
    {
      goto LABEL_30;
    }

    *v8 = v4;
    v8[1] = v10;
    v8 += 2;
    ++v4;
  }

  v23 = v7[3];
  if (v23 < 2)
  {
    return;
  }

  v24 = v23 >> 1;
  v22 = __OFSUB__(v24, v5);
  v25 = v24 - v5;
  if (!v22)
  {
    v7[2] = v25;
    return;
  }

LABEL_32:
  __break(1u);
}

void *sub_274547760(uint64_t a1, uint64_t (*a2)(void), uint64_t *a3, uint64_t *a4)
{
  result = a2();
  v7 = result;
  v8 = 0;
  v9 = 0;
  v10 = a1 & 0xC000000000000001;
  v11 = MEMORY[0x277D84F90];
  v12 = (MEMORY[0x277D84F90] + 32);
  v13 = a1 & 0xFFFFFFFFFFFFFF8;
  v30 = a1 & 0xFFFFFFFFFFFFFF8;
  v31 = a1;
  while (1)
  {
    if (v7 == v8)
    {
      v27 = v11[3];
      if (v27 >= 2)
      {
        v28 = v27 >> 1;
        v26 = __OFSUB__(v28, v9);
        v29 = v28 - v9;
        if (v26)
        {
          goto LABEL_32;
        }

        v11[2] = v29;
      }

      return v11;
    }

    if (v10)
    {
      result = MEMORY[0x277C58B20](v8, a1);
    }

    else
    {
      if (v8 >= *(v13 + 16))
      {
        goto LABEL_29;
      }

      result = *(a1 + 8 * v8 + 32);
    }

    v14 = result;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (!v9)
    {
      v15 = v11[3];
      if (((v15 >> 1) + 0x4000000000000000) < 0)
      {
        goto LABEL_31;
      }

      v16 = v7;
      v17 = v10;
      v18 = v15 & 0xFFFFFFFFFFFFFFFELL;
      if (v18 <= 1)
      {
        v19 = 1;
      }

      else
      {
        v19 = v18;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
      v20 = swift_allocObject();
      _swift_stdlib_malloc_size_0(v20);
      OUTLINED_FUNCTION_4_25();
      v20[2] = v19;
      v20[3] = v21;
      v22 = (v20 + 4);
      v23 = v11[3];
      v24 = v23 >> 1;
      if (v11[2])
      {
        if (v20 != v11 || v22 >= &v11[2 * v24 + 4])
        {
          memmove(v20 + 4, v11 + 4, 16 * v24);
        }

        v11[2] = 0;
      }

      v12 = (v22 + 16 * v24);
      v9 = (v4 & 0x7FFFFFFFFFFFFFFFLL) - (v23 >> 1);

      v11 = v20;
      v10 = v17;
      v7 = v16;
      v13 = v30;
      a1 = v31;
    }

    v26 = __OFSUB__(v9--, 1);
    if (v26)
    {
      goto LABEL_30;
    }

    *v12 = v8;
    v12[1] = v14;
    v12 += 2;
    ++v8;
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_274547920(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280950BC8, &qword_274658778);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroy_10Tm_0()
{

  sub_2743F459C(*(v0 + 80), *(v0 + 88));
  sub_2743F459C(*(v0 + 104), *(v0 + 112));
  if (*(v0 + 168))
  {
    if (*(v0 + 152))
    {
      __swift_destroy_boxed_opaque_existential_1((v0 + 128));
    }
  }

  else
  {
  }

  sub_274482198(*(v0 + 208), *(v0 + 216));

  return swift_deallocObject();
}

void sub_274547A5C(uint64_t *a1)
{
  v3 = *(sub_274637EEC() - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + v5);
  v9 = *(v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8));

  sub_2745447F0(a1, v6, v7, v1 + v4, v8, v9);
}

uint64_t sub_274547B30(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280950C00, &qword_2746587F8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_274547BD8()
{
  result = qword_280950C48;
  if (!qword_280950C48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280950BB0, &qword_274658760);
    sub_274547C90();
    sub_274458A14(&qword_280950C78, &qword_280950C80, &unk_274658868);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280950C48);
  }

  return result;
}

unint64_t sub_274547C90()
{
  result = qword_280950C50;
  if (!qword_280950C50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280950BA8, &qword_274658730);
    sub_274547D4C();
    sub_274544E64(&qword_280950C70, type metadata accessor for ModuleSummaryModalViewModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280950C50);
  }

  return result;
}

unint64_t sub_274547D4C()
{
  result = qword_280950C58;
  if (!qword_280950C58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280950B98, &qword_274658728);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280950B88, &qword_274658720);
    sub_274458A14(&qword_280950B90, &qword_280950B88, &qword_274658720);
    swift_getOpaqueTypeConformance2();
    sub_274458A14(&qword_280950C60, &qword_280950C68, &qword_274658860);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280950C58);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_2_25()
{

  return sub_27463920C();
}

uint64_t OUTLINED_FUNCTION_6_17()
{

  return swift_arrayInitWithCopy();
}

uint64_t OUTLINED_FUNCTION_8_21(uint64_t a1)
{

  return swift_arrayDestroy();
}

uint64_t OUTLINED_FUNCTION_9_16()
{

  return sub_2745457E8(v0, v1 - 320);
}

void *OUTLINED_FUNCTION_10_21(void *a1)
{

  return memcpy(a1, (v1 - 320), 0xE8uLL);
}

uint64_t sub_274547F98(uint64_t *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 41))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_274547FEC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

id sub_274548078@<X0>(uint64_t a1@<X0>, id a2@<X8>)
{
  v37 = a1;
  v38 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280950C90, &qword_274658978);
  v4 = v3 - 8;
  MEMORY[0x28223BE20](v3);
  v6 = v36 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280950C98, &qword_274658980);
  MEMORY[0x28223BE20](v7);
  v9 = v36 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280950CA0, &qword_274658988);
  MEMORY[0x28223BE20](v10);
  v12 = v36 - v11;
  v13 = *v2;
  v15 = *(v2 + 16);
  v14 = *(v2 + 24);
  v36[0] = *(v2 + 8);
  v36[1] = v14;
  v40 = *(v2 + 32);
  v41 = *(v2 + 40);
  v16 = swift_allocObject();
  v17 = *(v2 + 16);
  v16[1] = *v2;
  v16[2] = v17;
  *(v16 + 41) = *(v2 + 25);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280950CA8, &unk_274658990);
  (*(*(v18 - 8) + 16))(v6, v37, v18);
  v19 = &v6[*(v4 + 44)];
  *v19 = sub_274548B00;
  v19[1] = v16;
  v19[2] = 0;
  v19[3] = 0;
  if (!v13)
  {
    sub_274548B08(&v40, v39);
    type metadata accessor for WorkflowEditorOptions(0);
    sub_274548B80(&qword_28094A730, type metadata accessor for WorkflowEditorOptions, &protocol conformance descriptor for WorkflowEditorOptions);
    v33 = v15;
LABEL_8:
    result = sub_27463978C();
    __break(1u);
    return result;
  }

  v20 = swift_allocObject();
  v21 = *(v2 + 16);
  v20[1] = *v2;
  v20[2] = v21;
  *(v20 + 41) = *(v2 + 25);
  sub_2744CE5D8(v6, v9, &qword_280950C90, &qword_274658978);
  v22 = &v9[*(v7 + 36)];
  *v22 = v13;
  *(v22 + 1) = sub_274548B78;
  *(v22 + 2) = v20;
  if (!v15)
  {
    v34 = v13;
    sub_274548B08(&v40, v39);
    sub_274548B08(&v40, v39);
    type metadata accessor for WorkflowEditorResults(0);
    sub_274548B80(&unk_28094C450, type metadata accessor for WorkflowEditorResults, &protocol conformance descriptor for WorkflowEditorResults);
    v35 = v34;
    goto LABEL_8;
  }

  v23 = swift_allocObject();
  v24 = *(v2 + 16);
  v23[1] = *v2;
  v23[2] = v24;
  *(v23 + 41) = *(v2 + 25);
  sub_2744CE5D8(v9, v12, &qword_280950C98, &qword_274658980);
  v25 = &v12[*(v10 + 36)];
  *v25 = v15;
  *(v25 + 1) = sub_274548C14;
  *(v25 + 2) = v23;
  sub_2744CE5D8(v12, v38, &qword_280950CA0, &qword_274658988);
  v26 = v15;
  v27 = v13;
  sub_274548B08(&v40, v39);
  v28 = v26;
  v38 = v27;
  sub_274548B08(&v40, v39);
  v29 = v28;
  sub_274548B08(&v40, v39);
  v30 = v29;
  v31 = v38;

  return v31;
}

void sub_2745484A4(uint64_t a1)
{
  if (!*a1)
  {
    type metadata accessor for WorkflowEditorOptions(0);
    v4 = &qword_28094A730;
    v5 = type metadata accessor for WorkflowEditorOptions;
    v6 = &protocol conformance descriptor for WorkflowEditorOptions;
LABEL_8:
    sub_274548B80(v4, v5, v6);
    sub_27463978C();
    __break(1u);
    return;
  }

  v2 = *a1;
  sub_2745485A8(v2);

  v3 = *(a1 + 16);
  if (!v3)
  {
    type metadata accessor for WorkflowEditorResults(0);
    v4 = &unk_28094C450;
    v5 = type metadata accessor for WorkflowEditorResults;
    v6 = &protocol conformance descriptor for WorkflowEditorResults;
    goto LABEL_8;
  }

  v7 = v3;
  sub_274548874();
}

void sub_2745485A8(uint64_t a1)
{
  v2 = sub_274639ABC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = *(v1 + 40);
  v6 = *(v1 + 32);
  v27 = v6;
  v7 = v28;

  if ((v7 & 1) == 0)
  {
    sub_27463BC0C();
    v8 = sub_27463A2FC();
    sub_274638CEC();

    sub_274639AAC();
    swift_getAtKeyPath();
    sub_274548C1C(&v27);
    (*(v3 + 8))(v5, v2);
    v6 = v20;
  }

  if (v6)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_274638FAC();

    v9 = v20;
    v10 = v21;
    v11 = v22;
    v12 = v23;
    v13 = v24;
    v14 = v25;
    if (v26)
    {
      if (v26 == 1)
      {
        v19[1] = 0x6E696C6165766552;
        v19[2] = 0xEA00000000002067;
        v15 = [v20 localizedName];
        v16 = sub_27463B6AC();
        v18 = v17;

        MEMORY[0x277C57EA0](v16, v18);

        sub_27443C9D4(v9, v10, v11, v12, v13, v14, 1);
      }
    }

    else
    {
      sub_27443C9D4(v20, v21, v22, v23, v24, v25, 0);
    }

    sub_27463875C();
  }
}

void sub_274548874()
{
  v1 = sub_274639ABC();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v0 + 40);
  v5 = *(v0 + 32);
  v14 = v5;
  v6 = v15;

  if ((v6 & 1) == 0)
  {
    sub_27463BC0C();
    v7 = sub_27463A2FC();
    sub_274638CEC();

    sub_274639AAC();
    swift_getAtKeyPath();
    sub_274548C1C(&v14);
    (*(v2 + 8))(v4, v1);
    v5 = v12;
  }

  if (v5)
  {
    v8 = sub_27443A0F0();
    v9 = v8;
    if (v8)
    {
      v11[1] = [v8 numberOfItems];
      v12 = sub_27463C66C();
      v13 = v10;
      MEMORY[0x277C57EA0](0x736D65746920, 0xE600000000000000);
    }

    sub_27463875C();
  }
}

uint64_t sub_274548B08(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094E440, &qword_274652630);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_274548B80(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t objectdestroyTm_15()
{
  j_j__swift_release(*(v0 + 48));

  return swift_deallocObject();
}

uint64_t sub_274548C1C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094E440, &qword_274652630);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_274548C84()
{
  result = qword_280950CB0;
  if (!qword_280950CB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280950CA0, &qword_274658988);
    sub_274548D3C();
    sub_27440CA78(&qword_280950CE0, &qword_280950CE8, qword_2746589F0, MEMORY[0x277CE0400]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280950CB0);
  }

  return result;
}

unint64_t sub_274548D3C()
{
  result = qword_280950CB8;
  if (!qword_280950CB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280950C98, &qword_274658980);
    sub_274548DF4();
    sub_27440CA78(&qword_280950CD0, &qword_280950CD8, &qword_2746589E8, MEMORY[0x277CE0400]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280950CB8);
  }

  return result;
}

unint64_t sub_274548DF4()
{
  result = qword_280950CC0;
  if (!qword_280950CC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280950C90, &qword_274658978);
    sub_27440CA78(&qword_280950CC8, &qword_280950CA8, &unk_274658990, MEMORY[0x277CE04B0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280950CC0);
  }

  return result;
}

uint64_t sub_274548EAC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for VariableEditorModifier(0);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v5);
  v7 = (v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v7 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094D140, &qword_27464E160);
  swift_storeEnumTagMultiPayload();
  v8 = (v7 + v4[5]);
  type metadata accessor for WorkflowEditorOptions(0);
  sub_27454D7DC(&qword_28094A730, type metadata accessor for WorkflowEditorOptions, &protocol conformance descriptor for WorkflowEditorOptions);
  *v8 = sub_27463979C();
  v8[1] = v9;
  v10 = v4[6];
  *(v7 + v10) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094BC60, &qword_2746515D0);
  swift_storeEnumTagMultiPayload();
  v11 = (v7 + v4[7]);
  v14[1] = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094DE00, &unk_2746517B0);
  sub_27463ACDC();
  v12 = v14[3];
  *v11 = v14[2];
  v11[1] = v12;
  MEMORY[0x277C57160](v7, a1, v4, a2);
  return sub_27454DFF4(v7);
}

uint64_t sub_27454905C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280950E28, &unk_274658EF8);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v5);
  v7 = v20 - v6;
  v8 = *(v1 + 2);
  v22 = *v1;
  *&v23 = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094CDB0, &qword_27464C480);
  MEMORY[0x277C575F0](v20, v9);
  v10 = *&v20[0];
  v11 = 1;
  if (*&v20[0])
  {
    sub_274549210(*&v20[0]);
    v12 = sub_274549424();
    v13 = &v7[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280950E38, &qword_274658F08) + 36)];
    *v13 = 0u;
    *(v13 + 1) = 0u;
    v13[32] = 1;
    *(v13 + 5) = v12;
    v14 = *(v2 + 18);
    v15 = v2[8];
    v20[3] = v2[7];
    v20[4] = v15;
    v21 = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280950E40, &qword_27464E9D0);
    sub_27463AD0C();

    v22 = v20[0];
    v23 = v20[1];
    v24 = v20[2];
    OUTLINED_FUNCTION_8_4();
    v16 = swift_allocObject();
    v17 = v23;
    v16[1] = v22;
    v16[2] = v17;
    v16[3] = v24;
    v18 = &v7[*(v4 + 36)];
    *v18 = sub_274484054;
    *(v18 + 1) = v16;
    sub_274400880(v7, a1);
    v11 = 0;
  }

  return __swift_storeEnumTagSinglePayload(a1, v11, 1, v4);
}

uint64_t sub_274549210(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280950E58, &unk_274658F18);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v12[-v5];
  sub_27454DE7C(v1, &v13);
  v7 = swift_allocObject();
  sub_27454DEB4(&v13, v7 + 16);
  sub_27463AD5C();
  v8 = *(v1 + 104);
  LOBYTE(v13) = *(v1 + 96);
  v14 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094D1A0, &qword_27464C120);
  sub_27463ACEC();
  v9 = v12[7];
  KeyPath = swift_getKeyPath();
  v13 = a1;
  LOBYTE(v14) = v9;
  v15 = KeyPath;
  v16 = 0;
  sub_27454E488(&qword_280950E68, &unk_280950E58, &unk_274658F18, MEMORY[0x277CDF028]);
  sub_27454DEF4();
  sub_27463A6AC();

  return (*(v4 + 8))(v6, v3);
}

id sub_274549424()
{
  v1 = sub_274639ABC();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + 2);
  v19 = *v0;
  *&v20 = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094CDB0, &qword_27464C480);
  MEMORY[0x277C575F0](&v18, v6);
  v7 = v18;
  if (!v18)
  {
    return 0;
  }

  v8 = *(v0 + 6);
  if (*(v0 + 56) == 1)
  {
    swift_unknownObjectRetain();
    if (v8)
    {
      goto LABEL_4;
    }

LABEL_9:

    return 0;
  }

  sub_27463BC0C();
  v12 = sub_27463A2FC();
  sub_274638CEC();

  sub_274639AAC();
  swift_getAtKeyPath();
  sub_274482198(v8, 0);
  (*(v2 + 8))(v4, v1);
  v8 = v19;
  if (!v19)
  {
    goto LABEL_9;
  }

LABEL_4:
  v9 = *(v0 + 8);
  if ((*(v0 + 72) & 1) == 0)
  {

    sub_27463BC0C();
    v13 = sub_27463A2FC();
    sub_274638CEC();

    sub_274639AAC();
    swift_getAtKeyPath();
    sub_27447FCE8(v9, 0);
    (*(v2 + 8))(v4, v1);
    v9 = v19;
    if (v19)
    {
      goto LABEL_6;
    }

    goto LABEL_11;
  }

  v10 = v9;
  if (!v9)
  {
LABEL_11:

    swift_unknownObjectRelease();
    return 0;
  }

LABEL_6:
  sub_2744C6DD8();
  if (BYTE8(v19))
  {
    sub_27454D6A8(&v19, &qword_28094E090);
    Strong = 0;
  }

  else
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    sub_27454D6A8(&v19, &qword_280950E50);
  }

  v15 = *(v0 + 18);
  v16 = v0[8];
  v19 = v0[7];
  v20 = v16;
  v21 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280950E40, &qword_27464E9D0);
  sub_27463ACEC();
  v17 = objc_allocWithZone(WFVariableEditingAnchor);
  return sub_2745AFB44(v7, v8, v9, Strong);
}

void sub_274549754(uint64_t a1)
{
  v2 = sub_274549424();
  if (v2)
  {
    v3 = v2;
    v4 = *(a1 + 104);
    v15[0] = *(a1 + 96);
    v16 = v4;
    LOBYTE(v14[0]) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094D1A0, &qword_27464C120);
    sub_27463ACFC();
    v5 = *(a1 + 32);
    if (v5)
    {
      v6 = v5;
      v7 = sub_27443C514();

      if (v7)
      {
        [v7 finishEditingReturningToKeyboard_];
      }

      v8 = *(a1 + 24);
      sub_27454DE7C(a1, v15);
      v9 = swift_allocObject();
      sub_27454DEB4(v15, v9 + 16);
      sub_27454DE7C(a1, v14);
      v10 = swift_allocObject();
      sub_27454DEB4(v14, v10 + 16);
      objc_allocWithZone(WFVariableEditingOptions);
      v11 = v6;
      v12 = v3;
      v13 = sub_2745AFA0C(v12, v8, sub_27454DF48, v9, sub_27454DFEC, v10);
      sub_27443C58C(v13);
    }

    else
    {
      type metadata accessor for WorkflowEditorOptions(0);
      sub_27454D7DC(&qword_28094A730, type metadata accessor for WorkflowEditorOptions, &protocol conformance descriptor for WorkflowEditorOptions);
      sub_27463978C();
      __break(1u);
    }
  }
}

uint64_t sub_274549944(void *a1, __int128 *a2)
{
  v2 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094CDB0, &qword_27464C480);
  return sub_27463AEBC();
}

uint64_t sub_274549A04(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, char a5)
{
  v7 = a3;
  v8 = a2;
  v9 = sub_27463A0DC();
  sub_274549A88(v9 & 1, v8, v7, a4, a5 & 1);

  return sub_27463871C();
}

uint64_t sub_274549A88(char a1, uint64_t a2, char a3, uint64_t a4, char a5)
{
  v9 = sub_274639ABC();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v16[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if ((a5 & 1) == 0)
  {

    sub_27463BC0C();
    v13 = sub_27463A2FC();
    sub_274638CEC();

    sub_274639AAC();
    swift_getAtKeyPath();
    sub_2743F45E8(a4, 0);
    (*(v10 + 8))(v12, v9);
    LOBYTE(a4) = v16[15];
  }

  v14 = a1 & 1;
  if (a3)
  {
    v14 = 2;
  }

  if (a4)
  {
    return v14;
  }

  else
  {
    return 3;
  }
}

uint64_t sub_274549C08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  OUTLINED_FUNCTION_8_4();
  v5 = swift_allocObject();
  v6 = *(v2 + 16);
  *(v5 + 1) = *v2;
  *(v5 + 2) = v6;
  *(v5 + 3) = *(v2 + 32);
  v14 = *(v2 + 40);
  sub_27454D660(&v14, &v13, &qword_280950E78, &qword_274658F88);
  v7 = sub_27463B0CC();
  v9 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280950E80, &qword_274658F90);
  OUTLINED_FUNCTION_0_4();
  (*(v10 + 16))(a2, a1);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280950E88, &qword_274658F98);
  v12 = (a2 + *(result + 36));
  *v12 = sub_27454E050;
  v12[1] = v5;
  v12[2] = v7;
  v12[3] = v9;
  return result;
}

uint64_t sub_274549D08@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  v4 = sub_274639E5C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_27463AB7C();
  v9 = *(a1 + 40);
  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094B8A8, &qword_27464BC10);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_274648570;
    v11 = *a1;
    v12 = *(a1 + 8);
    v13 = *(a1 + 16);
    v14 = *(a1 + 24);
    v15 = *(a1 + 32);
    v40 = 0xD000000000000010;
    v41 = 0x800000027468CB80;
    v16 = v9;
    sub_27463A04C();
    sub_2746393CC();
    v18 = v17;
    v20 = v19;
    v22 = v21;
    v24 = v23;
    (*(v5 + 8))(v7, v4);
    v25 = v11 + v18;
    v26 = v12 + v20;
    if (v15)
    {
      v25 = v18;
      v26 = v20;
      v27 = v22;
    }

    else
    {
      v27 = v13;
    }

    *(v10 + 32) = v16;
    *(v10 + 40) = v25;
    *(v10 + 48) = v26;
    if (v15)
    {
      v28 = v24;
    }

    else
    {
      v28 = v14;
    }

    *(v10 + 56) = v27;
    *(v10 + 64) = v28;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v29 = sub_27463AB7C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280950E90, &unk_274658FA0);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_274648570;
  v40 = 0xD00000000000001BLL;
  v41 = 0x8000000274688E00;
  sub_27463A04C();
  sub_2746393CC();
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v38 = v37;
  (*(v5 + 8))(v7, v4);
  *(v30 + 32) = v32;
  *(v30 + 40) = v34;
  *(v30 + 48) = v36;
  *(v30 + 56) = v38;
  *a2 = v8;
  a2[1] = v10;
  a2[2] = v29;
  a2[3] = v30;
}

double sub_27454A020@<D0>(void *a1@<X8>)
{
  if (qword_280949320 != -1)
  {
    swift_once();
  }

  *a1 = qword_280950CF0;

  return result;
}

uint64_t sub_27454A090(uint64_t a1)
{
  sub_27463BF8C();
  v2 = v1[1];
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  if (v2 == 0.0)
  {
    v6 = 0.0;
  }

  else
  {
    v6 = v1[1];
  }

  MEMORY[0x277C58ED0](*&v6);
  if (v3 == 0.0)
  {
    v7 = 0.0;
  }

  else
  {
    v7 = v3;
  }

  MEMORY[0x277C58ED0](*&v7);
  v11.origin.x = v2;
  v11.origin.y = v3;
  v11.size.width = v4;
  v11.size.height = v5;
  Width = CGRectGetWidth(v11);
  if (Width == 0.0)
  {
    Width = 0.0;
  }

  MEMORY[0x277C58ED0](*&Width);
  v12.origin.x = v2;
  v12.origin.y = v3;
  v12.size.width = v4;
  v12.size.height = v5;
  Height = CGRectGetHeight(v12);
  if (Height == 0.0)
  {
    Height = 0.0;
  }

  return MEMORY[0x277C58ED0](*&Height);
}

uint64_t sub_27454A1C8()
{
  sub_27463C74C();
  sub_27454A090(v1);
  return sub_27463C7AC();
}

uint64_t sub_27454A280(uint64_t a1)
{
  v2 = v1[1];
  v5 = *v1;
  v6 = v2;
  v7 = *(v1 + 4);
  sub_27463C74C();
  sub_27454A090(v4);
  return sub_27463C7AC();
}

BOOL sub_27454A2D0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v6 = *(a1 + 32);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v8 = *(a2 + 32);
  return sub_27454A154(v5, v7);
}

uint64_t sub_27454A324()
{
  v0 = sub_274639FEC();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v23 = &v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094BC50, &qword_2746517C0);
  v4 = v3 - 8;
  MEMORY[0x28223BE20](v3);
  v6 = &v22 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094A610, &qword_2746493F0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v22 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v22 - v14;
  type metadata accessor for VariableEditorModifier(0);
  sub_2744C690C();
  (*(v1 + 104))(v12, *MEMORY[0x277CE0558], v0);
  __swift_storeEnumTagSinglePayload(v12, 0, 1, v0);
  v16 = *(v4 + 56);
  sub_27454D660(v15, v6, &qword_28094A610, &qword_2746493F0);
  sub_27454D660(v12, &v6[v16], &qword_28094A610, &qword_2746493F0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v0) != 1)
  {
    sub_27454D660(v6, v9, &qword_28094A610, &qword_2746493F0);
    if (__swift_getEnumTagSinglePayload(&v6[v16], 1, v0) != 1)
    {
      v18 = &v6[v16];
      v19 = v23;
      (*(v1 + 32))(v23, v18, v0);
      sub_27454D7DC(&unk_28094BC90, MEMORY[0x277CE0570], MEMORY[0x277CE0590]);
      v17 = sub_27463B5BC();
      v20 = *(v1 + 8);
      v20(v19, v0);
      sub_27454D6A8(v12, &qword_28094A610);
      sub_27454D6A8(v15, &qword_28094A610);
      v20(v9, v0);
      sub_27454D6A8(v6, &qword_28094A610);
      return v17 & 1;
    }

    sub_27454D6A8(v12, &qword_28094A610);
    sub_27454D6A8(v15, &qword_28094A610);
    (*(v1 + 8))(v9, v0);
    goto LABEL_6;
  }

  sub_27454D6A8(v12, &qword_28094A610);
  sub_27454D6A8(v15, &qword_28094A610);
  if (__swift_getEnumTagSinglePayload(&v6[v16], 1, v0) != 1)
  {
LABEL_6:
    sub_27454D6A8(v6, &unk_28094BC50);
    v17 = 0;
    return v17 & 1;
  }

  sub_27454D6A8(v6, &qword_28094A610);
  v17 = 1;
  return v17 & 1;
}

uint64_t sub_27454A744@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = sub_274638DAC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for VariableEditorModifier(0);
  v9 = *(v1 + *(v8 + 20));
  if (v9)
  {
    v10 = v8;
    v11 = v9;
    v12 = sub_27443C514();

    if (v12)
    {
      v45 = v4;
      v46 = v7;
      v44 = v5;
      v47 = a1;
      v13 = (v2 + *(v10 + 28));
      v15 = *v13;
      v14 = v13[1];
      v49 = v15;
      v50 = v14;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280950DF0, &qword_274658E78);
      sub_27463ACEC();
      v16 = 0;
      v17 = v48;
      v18 = *(v48 + 16);
      v19 = v48 + 64;
      while (v18 != v16)
      {
        if (v16 >= *(v17 + 16))
        {
          __break(1u);
          goto LABEL_16;
        }

        v20 = *(v19 - 32);
        sub_274412734(0, &qword_28094C5E0, 0x277D82BB8);
        v21 = v20;
        v22 = [v12 anchor];
        v23 = sub_27463BF7C();

        if (v23)
        {

          v34 = sub_27463AD2C();

          a1 = v47;
          *v47 = v34;
          v35 = MEMORY[0x277CDE248];
          goto LABEL_14;
        }

        ++v16;
        v19 += 40;
      }

      v24 = v46;
      sub_274638C2C();
      v25 = v12;
      v26 = sub_274638D9C();
      v27 = sub_27463BC1C();

      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        v29 = swift_slowAlloc();
        *v28 = 138412290;
        v30 = [v25 anchor];
        v31 = [v30 variable];

        *(v28 + 4) = v31;
        *v29 = v31;
        _os_log_impl(&dword_2743F0000, v26, v27, "Unable to find anchor for variable: %@", v28, 0xCu);
        sub_27454D6A8(v29, &qword_280950E00);
        v32 = v29;
        v24 = v46;
        MEMORY[0x277C5A270](v32, -1, -1);
        MEMORY[0x277C5A270](v28, -1, -1);
        v33 = v25;
      }

      else
      {
        v33 = v26;
        v26 = v25;
      }

      a1 = v47;
      v37 = v44;
      v36 = v45;

      (*(v37 + 8))(v24, v36);
    }

    sub_27463B1BC();
    *a1 = v38;
    a1[1] = v39;
    v35 = MEMORY[0x277CDE250];
LABEL_14:
    v40 = *v35;
    v41 = sub_27463A0AC();
    return (*(*(v41 - 8) + 104))(a1, v40, v41);
  }

  else
  {
LABEL_16:
    type metadata accessor for WorkflowEditorOptions(0);
    sub_27454D7DC(&qword_28094A730, type metadata accessor for WorkflowEditorOptions, &protocol conformance descriptor for WorkflowEditorOptions);
    result = sub_27463978C();
    __break(1u);
  }

  return result;
}

uint64_t sub_27454AB68()
{
  v1 = type metadata accessor for VariableEditorModifier(0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1 - 8);
  sub_27454D594(v0, v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_27463B9CC();
  v4 = sub_27463B9BC();
  v5 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v6 = swift_allocObject();
  v7 = MEMORY[0x277D85700];
  *(v6 + 16) = v4;
  *(v6 + 24) = v7;
  sub_27454D824(v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v5, type metadata accessor for VariableEditorModifier);
  sub_27454D594(v0, v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_27463B9BC();
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = v7;
  sub_27454D824(v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v5, type metadata accessor for VariableEditorModifier);
  sub_27463AF0C();
  return v11[1];
}

void sub_27454AD1C(uint64_t a1@<X2>, BOOL *a2@<X8>)
{
  v3 = *(a1 + *(type metadata accessor for VariableEditorModifier(0) + 20));
  if (v3)
  {
    v4 = v3;
    v5 = sub_27443C514();

    if (v5)
    {
    }

    *a2 = v5 != 0;
  }

  else
  {
    type metadata accessor for WorkflowEditorOptions(0);
    sub_27454D7DC(&qword_28094A730, type metadata accessor for WorkflowEditorOptions, &protocol conformance descriptor for WorkflowEditorOptions);
    sub_27463978C();
    __break(1u);
  }
}

void sub_27454ADE8(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((*a1 & 1) == 0)
  {
    v4 = *(a4 + *(type metadata accessor for VariableEditorModifier(0) + 20));
    if (v4)
    {
      v5 = v4;
      v6 = sub_27443C514();

      if (v6)
      {
        [v6 finishEditingReturningToKeyboard_];
      }

      v7 = v5;
      sub_27443C58C(0);
    }

    else
    {
      type metadata accessor for WorkflowEditorOptions(0);
      sub_27454D7DC(&qword_28094A730, type metadata accessor for WorkflowEditorOptions, &protocol conformance descriptor for WorkflowEditorOptions);
      sub_27463978C();
      __break(1u);
    }
  }
}

uint64_t sub_27454AEF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280950D38, &qword_274658E18);
  MEMORY[0x28223BE20](v32);
  v6 = v30 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280950D40, &qword_274658E20);
  MEMORY[0x28223BE20](v7);
  v9 = v30 - v8;
  v10 = type metadata accessor for VariableEditorModifier(0);
  v31 = *(v10 - 8);
  v11 = *(v31 + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280950D48, &qword_274658E28);
  MEMORY[0x28223BE20](v12);
  v14 = v30 - v13;
  if (sub_27454A324())
  {
    sub_27454B2E8(a1, v6);
    sub_27454D660(v6, v9, &qword_280950D38, &qword_274658E18);
    swift_storeEnumTagMultiPayload();
    sub_27454D048();
    sub_27454D29C();
    sub_274639DDC();
    v15 = v6;
    v16 = &qword_280950D38;
  }

  else
  {
    v17 = &v14[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280950D70, &qword_274658E38) + 36)];
    sub_27454BAF8(v2, v17);
    v18 = sub_27463B0CC();
    v30[0] = v7;
    v30[1] = a2;
    v19 = a1;
    v20 = v18;
    v22 = v21;
    v23 = (v17 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280950D90, &qword_274658E48) + 36));
    *v23 = v20;
    v23[1] = v22;
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280950D80, &qword_274658E40);
    (*(*(v24 - 8) + 16))(v14, v19, v24);
    v25 = &v14[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280950D60, &qword_274658E30) + 36)];
    *v25 = 0xD000000000000010;
    *(v25 + 1) = 0x800000027468CB80;
    sub_27454D594(v2, v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
    v26 = (*(v31 + 80) + 16) & ~*(v31 + 80);
    v27 = swift_allocObject();
    sub_27454D824(v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v27 + v26, type metadata accessor for VariableEditorModifier);
    v28 = &v14[*(v12 + 36)];
    *v28 = sub_27454D5F8;
    v28[1] = v27;
    sub_27454D660(v14, v9, &qword_280950D48, &qword_274658E28);
    swift_storeEnumTagMultiPayload();
    sub_27454D048();
    sub_27454D29C();
    sub_274639DDC();
    v15 = v14;
    v16 = &qword_280950D48;
  }

  return sub_27454D6A8(v15, v16);
}

uint64_t sub_27454B2E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v70 = a1;
  v71 = a2;
  v4 = type metadata accessor for VariableEditorModifier(0);
  v5 = v4 - 8;
  v6 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v8 = v7;
  v9 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280950DB0, &unk_274658E60);
  MEMORY[0x28223BE20](v10);
  v69 = &v51 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280950E08, &qword_274658EE8);
  v68 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v14 = &v51 - v13;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280950E10, &qword_274658EF0);
  MEMORY[0x28223BE20](v72);
  v16 = &v51 - v15;
  v17 = *(v3 + *(v5 + 28));
  if (v17)
  {
    v18 = v17;
    v19 = sub_27443B22C();

    if (v19)
    {
      v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280950D80, &qword_274658E40);
      (*(*(v20 - 8) + 16))(v16, v70, v20);
      swift_storeEnumTagMultiPayload();
      sub_27454E488(&qword_280950D78, &qword_280950D80, &qword_274658E40, MEMORY[0x277CE04B0]);
      v21 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094B0C0, &qword_27464AB18);
      v22 = sub_27454D3C4();
      v23 = sub_27454D4A8();
      v76 = v10;
      v77 = v21;
      v78 = v22;
      v79 = v23;
      swift_getOpaqueTypeConformance2();
      return sub_274639DDC();
    }

    else
    {
      v54 = sub_27454AB68();
      v53 = v25;
      LODWORD(v64) = v26;
      v27 = v18;
      v59 = v27;
      v67 = sub_27443C514();

      v56 = v9;
      sub_27454D594(v3, v9);
      v66 = v12;
      v57 = *(v6 + 80);
      v65 = v16;
      v62 = v3;
      v63 = v8;
      v28 = (v57 + 16) & ~v57;
      v58 = v28;
      v29 = swift_allocObject();
      v61 = type metadata accessor for VariableEditorModifier;
      v52 = v29;
      sub_27454D824(v9, v29 + v28, type metadata accessor for VariableEditorModifier);
      __src[0] = 0;
      __src[1] = 0;
      LOBYTE(__src[2]) = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094EFC8, qword_274653E88);
      sub_27463ACDC();
      v31 = v76;
      v30 = v77;
      v32 = v10;
      v55 = v10;
      v33 = v78;
      v34 = v79;
      v74 = v78;
      v60 = v14;
      v35 = v64 & 1;
      v36 = v54;
      v37 = v53;
      __src[0] = v54;
      __src[1] = v53;
      LOBYTE(__src[2]) = v64 & 1;
      __src[3] = v67;
      __src[4] = sub_27454DAF4;
      __src[5] = v29;
      __src[6] = v76;
      __src[7] = v77;
      LOBYTE(__src[8]) = v78;
      __src[9] = v79;
      v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280950D80, &qword_274658E40);
      v38 = v69;
      (*(*(v64 - 8) + 16))(v69, v70, v64);
      memcpy((v38 + *(v32 + 36)), __src, 0x50uLL);
      v76 = v36;
      v77 = v37;
      LOBYTE(v78) = v35;
      v79 = v67;
      v80 = sub_27454DAF4;
      v81 = v52;
      v82 = v31;
      v83 = v30;
      v84 = v33;
      v85 = v34;
      sub_27454D660(__src, v73, &qword_280950DD0, &qword_274658E70);
      sub_27454D6A8(&v76, &qword_280950DD0);
      v39 = v59;
      v40 = sub_27443C514();

      v73[0] = v40;
      v41 = v56;
      sub_27454D594(v62, v56);
      v42 = v58;
      v43 = swift_allocObject();
      sub_27454D824(v41, v43 + v42, v61);
      v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094B0C0, &qword_27464AB18);
      v45 = sub_27454D3C4();
      v46 = sub_27454D4A8();
      v47 = v60;
      v48 = v55;
      sub_27463AA3C();

      sub_27454D6A8(v38, &unk_280950DB0);
      v49 = v68;
      v50 = v66;
      (*(v68 + 16))(v65, v47, v66);
      swift_storeEnumTagMultiPayload();
      sub_27454E488(&qword_280950D78, &qword_280950D80, &qword_274658E40, MEMORY[0x277CE04B0]);
      v73[0] = v48;
      v73[1] = v44;
      v73[2] = v45;
      v73[3] = v46;
      swift_getOpaqueTypeConformance2();
      sub_274639DDC();
      return (*(v49 + 8))(v47, v50);
    }
  }

  else
  {
    type metadata accessor for WorkflowEditorOptions(0);
    sub_27454D7DC(&qword_28094A730, type metadata accessor for WorkflowEditorOptions, &protocol conformance descriptor for WorkflowEditorOptions);
    result = sub_27463978C();
    __break(1u);
  }

  return result;
}

uint64_t sub_27454BAF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v13[1] = a2;
  v3 = type metadata accessor for VariableEditorModifier(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v13[0] = sub_27463A0AC();
  v6 = *(v13[0] - 8);
  MEMORY[0x28223BE20](v13[0]);
  v8 = (v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_27463AB7C();
  sub_27454AB68();
  sub_27454A744(v8);
  sub_27454D594(a1, v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v11 = swift_allocObject();
  sub_27454D824(v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v10, type metadata accessor for VariableEditorModifier);
  v13[3] = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280949488, &qword_2746467C0);
  sub_27454D764(&qword_280949490, &qword_280949488, &qword_2746467C0, sub_27440AFCC);
  sub_27463A6DC();

  (*(v6 + 8))(v8, v13[0]);
}

void sub_27454BD7C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + *(type metadata accessor for VariableEditorModifier(0) + 20));
  if (v3)
  {
    v4 = v3;
    v5 = sub_27443C514();

    sub_27454BE5C(v5, a2);
  }

  else
  {
    type metadata accessor for WorkflowEditorOptions(0);
    sub_27454D7DC(&qword_28094A730, type metadata accessor for WorkflowEditorOptions, &protocol conformance descriptor for WorkflowEditorOptions);
    sub_27463978C();
    __break(1u);
  }
}

uint64_t sub_27454BE5C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for VariableConfigurationSheet(0);
  MEMORY[0x28223BE20](v4);
  v6 = (&v24[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809494A0, &qword_2746467C8);
  MEMORY[0x28223BE20](v7);
  v9 = &v24[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v24[-1] - v11;
  if (a1)
  {
    type metadata accessor for WorkflowEditorOptions(0);
    sub_27454D7DC(&qword_28094A730, type metadata accessor for WorkflowEditorOptions, &protocol conformance descriptor for WorkflowEditorOptions);
    v13 = a1;
    v6[1] = sub_27463979C();
    v6[2] = v14;
    v15 = v4[6];
    *(v6 + v15) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094C000, &qword_27464CA10);
    swift_storeEnumTagMultiPayload();
    v16 = v4[7];
    *(v6 + v16) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094D140, &qword_27464E160);
    swift_storeEnumTagMultiPayload();
    *v6 = v13;
    v17 = [v13 anchor];
    v18 = [v17 variable];

    sub_2745AA868(v18, v24);
    sub_27463ACDC();
    v19 = __src[1];
    v20 = __src[2];
    v21 = (v6 + v4[8]);
    *v21 = __src[0];
    v21[1] = v19;
    v21[2] = v20;
    sub_27463B0CC();
    sub_27463973C();
    sub_27454D824(v6, v9, type metadata accessor for VariableConfigurationSheet);
    memcpy(&v9[*(v7 + 36)], __src, 0x70uLL);
    sub_27454DE34(v9, v12, &qword_2809494A0, &qword_2746467C8);
    sub_27454DE34(v12, a2, &qword_2809494A0, &qword_2746467C8);
    return __swift_storeEnumTagSinglePayload(a2, 0, 1, v7);
  }

  else
  {

    return __swift_storeEnumTagSinglePayload(a2, 1, 1, v7);
  }
}

uint64_t sub_27454C1C4(uint64_t *a1, uint64_t a2)
{
  type metadata accessor for VariableEditorModifier(0);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280950DF0, &qword_274658E78);
  return sub_27463ACFC();
}

uint64_t sub_27454C260(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_27463B1EC();
  v42 = *(v4 - 8);
  v43 = v4;
  MEMORY[0x28223BE20](v4);
  v40 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_27463B21C();
  v39 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for VariableEditorModifier(0);
  v9 = v8 - 8;
  v38 = *(v8 - 8);
  v10 = *(v38 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = sub_27463B23C();
  v44 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v34 - v15;
  v17 = *(a3 + *(v9 + 28));
  if (v17)
  {
    v18 = v17;
    v19 = sub_27443C514();

    if (v19)
    {
      v20 = [v19 anchor];

      if (v20)
      {
        v21 = [v20 variableProvider];
        objc_opt_self();
        v22 = swift_dynamicCastObjCClass();
        if (v22)
        {
          v23 = v22;
          v24 = [v22 workflow];
          if (v24)
          {

            sub_274412734(0, &qword_28094AF90, 0x277D85C78);
            v37 = v21;
            v35 = sub_27463BCEC();
            sub_27463B22C();
            sub_27463B28C();
            v36 = *(v44 + 8);
            v44 += 8;
            v36(v13, v11);
            sub_27454D594(a3, &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
            v25 = (*(v38 + 80) + 16) & ~*(v38 + 80);
            v26 = swift_allocObject();
            sub_27454D824(&v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v26 + v25, type metadata accessor for VariableEditorModifier);
            *(v26 + ((v10 + v25 + 7) & 0xFFFFFFFFFFFFFFF8)) = v23;
            v49 = sub_27454DD74;
            v50 = v26;
            aBlock = MEMORY[0x277D85DD0];
            v46 = 1107296256;
            v47 = sub_27443E0E8;
            v48 = &block_descriptor_27;
            v27 = _Block_copy(&aBlock);
            swift_unknownObjectRetain();

            sub_27463B20C();
            aBlock = MEMORY[0x277D84F90];
            sub_27454D7DC(&qword_28094E100, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094AFA0, &unk_27464D1A0);
            sub_27454E488(&qword_28094E110, &unk_28094AFA0, &unk_27464D1A0, MEMORY[0x277D83970]);
            v28 = v40;
            v29 = v43;
            sub_27463C1EC();
            v30 = v35;
            MEMORY[0x277C58400](v16, v7, v28, v27);

            _Block_release(v27);
            swift_unknownObjectRelease();

            (*(v42 + 8))(v28, v29);
            (*(v39 + 8))(v7, v41);
            return (v36)(v16, v11);
          }
        }

        swift_unknownObjectRelease();
      }
    }

    aBlock = sub_27454AB68();
    v46 = v32;
    LOBYTE(v47) = v33 & 1;
    v51 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280950E20, &qword_27464D880);
    sub_27463AEBC();
  }

  else
  {
    type metadata accessor for WorkflowEditorOptions(0);
    sub_27454D7DC(&qword_28094A730, type metadata accessor for WorkflowEditorOptions, &protocol conformance descriptor for WorkflowEditorOptions);
    result = sub_27463978C();
    __break(1u);
  }

  return result;
}

uint64_t sub_27454C894(uint64_t a1, uint64_t a2, __n128 a3)
{
  sub_27463B13C();
  sub_27463946C();
}

uint64_t sub_27454C900(uint64_t a1, uint64_t a2)
{
  v16[0] = a2;
  v3 = sub_274639ABC();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094D140, &qword_27464E160);
  MEMORY[0x28223BE20](v7);
  v9 = v16 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094D7C0, &unk_274651B60);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = v16 - v11;
  sub_27454D660(a1, v9, &unk_28094D140, &qword_27464E160);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_27454DE34(v9, v12, &unk_28094D7C0, &unk_274651B60);
  }

  else
  {
    sub_27463BC0C();
    v13 = sub_27463A2FC();
    sub_274638CEC();

    sub_274639AAC();
    swift_getAtKeyPath();

    (*(v4 + 8))(v6, v3);
  }

  v14 = sub_27463969C();
  if (__swift_getEnumTagSinglePayload(v12, 1, v14) == 1)
  {
    return sub_27454D6A8(v12, &unk_28094D7C0);
  }

  v16[3] = v16[0];
  sub_27463968C();
  return (*(*(v14 - 8) + 8))(v12, v14);
}

uint64_t type metadata accessor for VariableEditorModifier(uint64_t a1)
{
  result = qword_280950D00;
  if (!qword_280950D00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_27454CC64(uint64_t a1)
{
  sub_27454CD9C(319, &qword_280950D10, &unk_28094D7C0, &unk_274651B60, MEMORY[0x277CDF468]);
  if (v1 <= 0x3F)
  {
    sub_274481024(319);
    if (v2 <= 0x3F)
    {
      sub_27454CD9C(319, &qword_28094BC00, &qword_28094A610, &qword_2746493F0, MEMORY[0x277CDF468]);
      if (v3 <= 0x3F)
      {
        sub_27454CD9C(319, &unk_280950D20, &qword_28094DE00, &unk_2746517B0, MEMORY[0x277CE10B8]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_27454CD9C(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t))
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v7 = OUTLINED_FUNCTION_54_1();
    v8 = a5(v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t get_enum_tag_for_layout_string_19VoiceShortcutClient13WeakReferenceVySo6UIViewCGSg(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_27454CE24(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 152))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
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

uint64_t sub_27454CE64(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0u;
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
      *(result + 152) = 1;
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

    *(result + 152) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_27454CED8(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 48))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 40);
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

uint64_t sub_27454CF2C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *(result + 40) = a2;
    }
  }

  return result;
}

unint64_t sub_27454CFBC()
{
  result = qword_280950D30;
  if (!qword_280950D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280950D30);
  }

  return result;
}

unint64_t sub_27454D048()
{
  result = qword_280950D50;
  if (!qword_280950D50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280950D48, &qword_274658E28);
    sub_27454D100();
    sub_27454E488(&qword_280950D98, &unk_280950DA0, &unk_274658E58, MEMORY[0x277CE07C8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280950D50);
  }

  return result;
}

unint64_t sub_27454D100()
{
  result = qword_280950D58;
  if (!qword_280950D58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280950D60, &qword_274658E30);
    sub_27454D1B8();
    sub_27454E488(&qword_28094A548, &unk_28094A550, &unk_274658E50, MEMORY[0x277CDE2D0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280950D58);
  }

  return result;
}

unint64_t sub_27454D1B8()
{
  result = qword_280950D68;
  if (!qword_280950D68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280950D70, &qword_274658E38);
    sub_27454E488(&qword_280950D78, &qword_280950D80, &qword_274658E40, MEMORY[0x277CE04B0]);
    sub_27454E488(&qword_280950D88, &qword_280950D90, &qword_274658E48, MEMORY[0x277CE0328]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280950D68);
  }

  return result;
}

unint64_t sub_27454D29C()
{
  result = qword_280950DA8;
  if (!qword_280950DA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280950D38, &qword_274658E18);
    sub_27454E488(&qword_280950D78, &qword_280950D80, &qword_274658E40, MEMORY[0x277CE04B0]);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_280950DB0, &unk_274658E60);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094B0C0, &qword_27464AB18);
    sub_27454D3C4();
    sub_27454D4A8();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280950DA8);
  }

  return result;
}

unint64_t sub_27454D3C4()
{
  result = qword_280950DC0;
  if (!qword_280950DC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_280950DB0, &unk_274658E60);
    sub_27454E488(&qword_280950D78, &qword_280950D80, &qword_274658E40, MEMORY[0x277CE04B0]);
    sub_27454E488(&qword_280950DC8, &unk_280950DD0, &unk_274658E70, &unk_274653EA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280950DC0);
  }

  return result;
}

unint64_t sub_27454D4A8()
{
  result = qword_280950DD8;
  if (!qword_280950DD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28094B0C0, &qword_27464AB18);
    sub_27454D52C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280950DD8);
  }

  return result;
}

unint64_t sub_27454D52C()
{
  result = qword_280950DE0;
  if (!qword_280950DE0)
  {
    sub_274412734(255, &qword_280950DE8, off_279ED93B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280950DE0);
  }

  return result;
}

uint64_t sub_27454D594(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for VariableEditorModifier(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_27454D5F8(uint64_t *a1)
{
  v3 = type metadata accessor for VariableEditorModifier(0);
  OUTLINED_FUNCTION_53_0(v3);
  OUTLINED_FUNCTION_30_2();

  return sub_27454C1C4(a1, v1 + v4);
}

uint64_t sub_27454D660(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_2_0(a1, a2, a3, a4);
  OUTLINED_FUNCTION_0_4();
  v5 = OUTLINED_FUNCTION_5_0();
  v6(v5);
  return v4;
}

uint64_t sub_27454D6A8(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_60_1(a1, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_7();
  (*(v5 + 8))(a1);
  return a1;
}

void sub_27454D6FC(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for VariableEditorModifier(0);
  OUTLINED_FUNCTION_53_0(v3);
  OUTLINED_FUNCTION_30_2();

  sub_27454BD7C(v1 + v4, a1);
}

uint64_t sub_27454D764(unint64_t *a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    v7 = OUTLINED_FUNCTION_60_1(0, a2);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v7, v8);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_27454D7DC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_27454D824(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_0_4();
  v4 = OUTLINED_FUNCTION_5_0();
  v5(v4);
  return a2;
}

void sub_27454D87C(BOOL *a1@<X8>)
{
  v3 = type metadata accessor for VariableEditorModifier(0);
  OUTLINED_FUNCTION_53_0(v3);
  v5 = v1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));

  sub_27454AD1C(v5, a1);
}

uint64_t objectdestroy_26Tm_0()
{
  type metadata accessor for VariableEditorModifier(0);
  OUTLINED_FUNCTION_3_14();
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  swift_unknownObjectRelease();
  v5 = v1 + v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094D140, &qword_27464E160);
  OUTLINED_FUNCTION_54_1();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_27463969C();
    if (!OUTLINED_FUNCTION_5_28(v6))
    {
      OUTLINED_FUNCTION_2_26();
      (*(v7 + 8))(v1 + v4, v2);
    }
  }

  else
  {
  }

  v8 = *(v0 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094BC60, &qword_2746515D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_274639FEC();
    if (!OUTLINED_FUNCTION_6_18(v9))
    {
      OUTLINED_FUNCTION_2_26();
      (*(v10 + 8))(v5 + v8, v2);
    }
  }

  else
  {
  }

  OUTLINED_FUNCTION_9_17();

  return swift_deallocObject();
}

void sub_27454DA84(_BYTE *a1)
{
  v3 = type metadata accessor for VariableEditorModifier(0);
  OUTLINED_FUNCTION_53_0(v3);
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  v7 = v1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));

  sub_27454ADE8(a1, v5, v6, v7);
}

uint64_t sub_27454DAF4@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for VariableEditorModifier(0);
  OUTLINED_FUNCTION_53_0(v4);
  OUTLINED_FUNCTION_30_2();

  return sub_27454C238(a1, a2);
}

uint64_t objectdestroyTm_16()
{
  type metadata accessor for VariableEditorModifier(0);
  OUTLINED_FUNCTION_3_14();
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = v1 + v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094D140, &qword_27464E160);
  OUTLINED_FUNCTION_54_1();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_27463969C();
    if (!OUTLINED_FUNCTION_5_28(v6))
    {
      OUTLINED_FUNCTION_2_26();
      (*(v7 + 8))(v1 + v4, v2);
    }
  }

  else
  {
  }

  v8 = *(v0 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094BC60, &qword_2746515D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_274639FEC();
    if (!OUTLINED_FUNCTION_6_18(v9))
    {
      OUTLINED_FUNCTION_2_26();
      (*(v10 + 8))(v5 + v8, v2);
    }
  }

  else
  {
  }

  OUTLINED_FUNCTION_9_17();

  return swift_deallocObject();
}

uint64_t sub_27454DCFC(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for VariableEditorModifier(0);
  OUTLINED_FUNCTION_53_0(v5);
  OUTLINED_FUNCTION_30_2();

  return sub_27454C260(a1, a2, v2 + v6);
}

uint64_t sub_27454DD74()
{
  v1 = *(type metadata accessor for VariableEditorModifier(0) - 8);
  v3 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v4 = *(v0 + ((*(v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_27454C894(v0 + v3, v4, v2);
}

double block_copy_helper_27(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_27454DE34(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_2_0(a1, a2, a3, a4);
  OUTLINED_FUNCTION_0_4();
  v5 = OUTLINED_FUNCTION_5_0();
  v6(v5);
  return v4;
}

unint64_t sub_27454DEF4()
{
  result = qword_280950E70;
  if (!qword_280950E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280950E70);
  }

  return result;
}

uint64_t objectdestroy_44Tm()
{

  sub_274482198(*(v0 + 64), *(v0 + 72));
  sub_27447FCE8(*(v0 + 80), *(v0 + 88));
  if (*(v0 + 105))
  {
    if ((*(v0 + 104) & 1) == 0)
    {
      MEMORY[0x277C5A3A0](v0 + 96);
    }
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_27454DFF4(uint64_t a1)
{
  v2 = type metadata accessor for VariableEditorModifier(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_27454E058(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 25))
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

uint64_t sub_27454E098(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 25) = 1;
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

    *(result + 25) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_27454E0FC()
{
  result = qword_280950EA0;
  if (!qword_280950EA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280950EA8, &qword_274659060);
    sub_27454D048();
    sub_27454D29C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280950EA0);
  }

  return result;
}

unint64_t sub_27454E188()
{
  result = qword_280950EC0;
  if (!qword_280950EC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_280950E28, &unk_274658EF8);
    sub_27454E240();
    sub_27454E488(&qword_280950ED8, &unk_280950EE0, &unk_274659070, MEMORY[0x277CE07C8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280950EC0);
  }

  return result;
}

unint64_t sub_27454E240()
{
  result = qword_280950EC8;
  if (!qword_280950EC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280950E38, &qword_274658F08);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_280950E58, &unk_274658F18);
    sub_27454E488(&qword_280950E68, &unk_280950E58, &unk_274658F18, MEMORY[0x277CDF028]);
    sub_27454DEF4();
    swift_getOpaqueTypeConformance2();
    sub_27454E350();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280950EC8);
  }

  return result;
}

unint64_t sub_27454E350()
{
  result = qword_280950ED0;
  if (!qword_280950ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280950ED0);
  }

  return result;
}

unint64_t sub_27454E3A4()
{
  result = qword_280950EE8;
  if (!qword_280950EE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280950E88, &qword_274658F98);
    sub_27454E488(&qword_280950EF0, &qword_280950E80, &qword_274658F90, MEMORY[0x277CE04B0]);
    sub_27454E488(&qword_280950EF8, &unk_280950F00, &unk_274659078, MEMORY[0x277CE0328]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280950EE8);
  }

  return result;
}

uint64_t sub_27454E488(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    v6 = OUTLINED_FUNCTION_60_1(0, a2);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v6, v7);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_5_28(uint64_t a1)
{

  return __swift_getEnumTagSinglePayload(v1, 1, a1);
}

uint64_t OUTLINED_FUNCTION_6_18(uint64_t a1)
{

  return __swift_getEnumTagSinglePayload(v1 + v2, 1, a1);
}

uint64_t OUTLINED_FUNCTION_9_17()
{
}

uint64_t WFSwitchParameter.view(with:)(uint64_t a1)
{
  type metadata accessor for ParameterStateStore();
  sub_2745501EC(&qword_28094B550, type metadata accessor for ParameterStateStore, &protocol conformance descriptor for ParameterStateStore);

  sub_27463950C();
  v3 = swift_allocObject();
  *(v3 + 16) = sub_27454FE0C;
  *(v3 + 24) = a1;
  v4 = swift_allocObject();
  *(v4 + 16) = sub_274458A90;
  *(v4 + 24) = a1;
  swift_getKeyPath();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_27454FE14();
  swift_retain_n();
  v5 = v1;
  return sub_27463AE9C();
}

id WFSwitchParameter.moduleSummarySlot(for:)(uint64_t a1)
{
  v2 = v1;
  sub_274466DA4();
  v4 = [v1 localizedLabel];
  v5 = sub_27463B6AC();
  v7 = v6;

  v8 = sub_27444C12C(v1);
  v10 = v9;
  v11 = sub_27463B66C();
  v12 = sub_27444AEE4(v5, v7, v8, v10, v11);
  if (!a1)
  {
    v13 = 0;
    goto LABEL_6;
  }

  objc_opt_self();
  v13 = swift_dynamicCastObjCClass();
  if (!v13)
  {
LABEL_6:
    v16 = &selRef_localizedOffDisplayName;
LABEL_7:
    v17 = [v2 *v16];
    v18 = sub_27463B6AC();
    v20 = v19;

    sub_274457D08(v18, v20, v12);
    return v12;
  }

  swift_unknownObjectRetain();
  v14 = [v13 variable];
  if (!v14)
  {
    v22 = [v13 number];
    if (v22)
    {
      v23 = v22;
      v24 = [v22 BOOLValue];

      if (v24)
      {
        v16 = &selRef_localizedOnDisplayName;
        goto LABEL_7;
      }
    }

    goto LABEL_6;
  }

  v15 = v14;
  [v12 populateWith_];

  swift_unknownObjectRelease();
  return v12;
}

id sub_27454E898(void *a1, uint64_t a2, uint64_t a3)
{
  swift_unknownObjectRetain();
  v5 = a1;
  v6 = WFSwitchParameter.moduleSummarySlot(for:)(a3);
  swift_unknownObjectRelease();

  return v6;
}

uint64_t sub_27454E900@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v64 = a1;
  sub_27463A19C();
  OUTLINED_FUNCTION_1();
  v60 = v4;
  v61 = v3;
  MEMORY[0x28223BE20](v3);
  v6 = &v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280950F18, &qword_274659378);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v8);
  v10 = (&v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v11);
  v13 = &v56 - v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280950F20, &qword_274659380);
  OUTLINED_FUNCTION_1();
  v62 = v15;
  v63 = v14;
  MEMORY[0x28223BE20](v14);
  v59 = &v56 - v16;
  v17 = *v1;
  v18 = *(v1 + 24);
  v68 = *(v1 + 8);
  v69 = v18;
  v70 = *(v1 + 40);
  v19 = v17;
  v20 = sub_274465DAC();
  v57 = v21;
  v58 = v20;
  v56 = v22;
  v23 = (v10 + v7[15]);
  type metadata accessor for WorkflowEditorOptions(0);
  sub_2745501EC(&qword_28094A730, type metadata accessor for WorkflowEditorOptions, &protocol conformance descriptor for WorkflowEditorOptions);
  *v23 = sub_27463979C();
  v23[1] = v24;
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_16_4(KeyPath);
  v26 = swift_getKeyPath();
  OUTLINED_FUNCTION_16_4(v26);
  v27 = swift_getKeyPath();
  OUTLINED_FUNCTION_16_4(v27);
  v28 = v10 + v7[19];
  *v28 = swift_getKeyPath();
  v28[40] = 0;
  v29 = swift_getKeyPath();
  OUTLINED_FUNCTION_16_4(v29);
  v65 = 0;
  sub_27463ACDC();
  OUTLINED_FUNCTION_5_29();
  v65 = 0;
  sub_27463ACDC();
  OUTLINED_FUNCTION_5_29();
  v30 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094B440, &qword_27464C470));
  v31 = v19;
  sub_27444A564(v31);
  sub_27440CA78(&qword_28094CF70, &unk_28094B440, &qword_27464C470, &unk_274648AD8);
  *v10 = sub_27463950C();
  v10[1] = v32;
  v33 = [v31 localizedLabel];
  v34 = sub_27463B6AC();
  v36 = v35;

  v10[2] = v34;
  v10[3] = v36;
  v37 = [v31 localizedDescription];
  if (v37)
  {
    v38 = v37;
    v39 = sub_27463B6AC();
    v41 = v40;
  }

  else
  {
    v39 = 0;
    v41 = 0;
  }

  v10[4] = v39;
  v10[5] = v41;
  v43 = v57;
  v42 = v58;
  v10[6] = 1;
  v10[7] = v42;
  v44 = v56;
  v10[8] = v43;
  v10[9] = v44;
  sub_27454EE38(v2, v10 + v7[13]);

  *(v10 + v7[14]) = 1;
  sub_274400A48(v10, v13);
  sub_27463A16C();
  OUTLINED_FUNCTION_7_8();
  v49 = sub_27440CA78(v45, v46, v47, v48);
  v50 = v59;
  sub_27463A82C();
  (*(v60 + 8))(v6, v61);
  v51 = sub_274400AB0(v13);
  MEMORY[0x28223BE20](v51);
  *(&v56 - 2) = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094D4E8, &qword_274650460);
  v66 = v7;
  v67 = v49;
  OUTLINED_FUNCTION_2_27();
  swift_getOpaqueTypeConformance2();
  OUTLINED_FUNCTION_1_30();
  sub_27440CA78(v52, &qword_28094D4E8, &qword_274650460, v53);
  v54 = v63;
  sub_27463A88C();
  return (*(v62 + 8))(v50, v54);
}

uint64_t sub_27454EE38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v64 = a2;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280950F58, &qword_274659440);
  MEMORY[0x28223BE20](v65);
  v62 = &v51 - v3;
  v61 = sub_274639B0C();
  v56 = *(v61 - 8);
  MEMORY[0x28223BE20](v61);
  v55 = &v51 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280950F60, &qword_274659448);
  v60 = *(v63 - 8);
  MEMORY[0x28223BE20](v63);
  v57 = &v51 - v5;
  v53 = sub_274639ABC();
  v52 = *(v53 - 8);
  MEMORY[0x28223BE20](v53);
  v54 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094D4E8, &qword_274650460);
  v59 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v51 - v8;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280950F68, &qword_274659450);
  MEMORY[0x28223BE20](v58);
  v11 = &v51 - v10;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280950F70, &qword_274659458);
  v66 = *(v67 - 8);
  *&v12 = MEMORY[0x28223BE20](v67).n128_u64[0];
  v68 = &v51 - v13;
  v14 = [*a1 localizedLabel];
  v15 = sub_27463B6AC();
  v17 = v16;

  __src[0] = v15;
  __src[1] = v17;
  v18 = *(a1 + 24);
  v70 = *(a1 + 8);
  v71 = v18;
  v72 = *(a1 + 40);
  sub_27454F7B4();
  sub_274412BBC();
  sub_27463AE4C();
  sub_274639BAC();
  v19 = sub_27463A52C();
  v21 = v20;
  LOBYTE(v15) = v22;
  sub_2745500C4(a1, __src);
  v23 = swift_allocObject();
  memcpy((v23 + 16), __src, 0x81uLL);
  sub_27440CA78(&unk_280950F40, &qword_28094D4E8, &qword_274650460, MEMORY[0x277CDF068]);
  sub_27463A7FC();
  v24 = v61;

  v25 = v15 & 1;
  v26 = v62;
  v27 = v19;
  v28 = v68;
  v29 = v21;
  v30 = v60;
  sub_274412C10(v27, v29, v25);

  v31 = v9;
  v32 = v58;
  (*(v59 + 8))(v31, v7);
  v33 = sub_274550104();
  sub_27463A71C();
  sub_27440CB1C(v11, &qword_280950F68, &qword_274659450);
  sub_2744C6ABC();
  v34 = __src[3];
  sub_27440CB1C(__src, &unk_2809507C0, &qword_274649C60);
  if (v34 || ((v35 = v54, v36 = *(a1 + 120), *(a1 + 128) != 1) ? (, sub_27463BC0C(), v38 = sub_27463A2FC(), sub_274638CEC(), v38, sub_274639AAC(), swift_getAtKeyPath(), sub_274435568(v36, 0), (*(v52 + 8))(v35, v53), v37 = LOBYTE(__src[0])) : (v37 = *(a1 + 120)), v28 = v68, v37 == 2))
  {
    v39 = v55;
    sub_274639AFC();
    __src[0] = v32;
    __src[1] = v33;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v41 = sub_2745501EC(&unk_280950F80, MEMORY[0x277CDDDF0], MEMORY[0x277CDDDE8]);
    v42 = v57;
    v43 = v67;
    sub_27463A6EC();
    (*(v56 + 8))(v39, v24);
    v44 = v63;
    (*(v30 + 16))(v26, v42, v63);
    swift_storeEnumTagMultiPayload();
    __src[0] = v43;
    __src[1] = v24;
    __src[2] = OpaqueTypeConformance2;
    __src[3] = v41;
    swift_getOpaqueTypeConformance2();
    sub_274639DDC();
    (*(v30 + 8))(v42, v44);
    v50 = v43;
    v46 = v66;
  }

  else
  {
    v46 = v66;
    v47 = v67;
    (*(v66 + 16))(v26, v68, v67);
    swift_storeEnumTagMultiPayload();
    __src[0] = v32;
    __src[1] = v33;
    v48 = swift_getOpaqueTypeConformance2();
    v49 = sub_2745501EC(&unk_280950F80, MEMORY[0x277CDDDF0], MEMORY[0x277CDDDE8]);
    __src[0] = v47;
    __src[1] = v24;
    __src[2] = v48;
    __src[3] = v49;
    swift_getOpaqueTypeConformance2();
    sub_274639DDC();
    v50 = v47;
  }

  return (*(v46 + 8))(v28, v50);
}

uint64_t sub_27454F7B4()
{
  v1 = v0;
  sub_27463B9CC();
  sub_27454FFB8(v0, &v10);
  v2 = sub_27463B9BC();
  v3 = swift_allocObject();
  v4 = MEMORY[0x277D85700];
  *(v3 + 16) = v2;
  *(v3 + 24) = v4;
  v5 = v0[1];
  *(v3 + 32) = *v0;
  *(v3 + 48) = v5;
  *(v3 + 64) = v0[2];
  sub_27454FFB8(v0, &v10);
  v6 = sub_27463B9BC();
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  *(v7 + 24) = v4;
  v8 = v1[1];
  *(v7 + 32) = *v1;
  *(v7 + 48) = v8;
  *(v7 + 64) = v1[2];
  sub_27463AF0C();
  return v10;
}

uint64_t StoredParameterState<A>.BOOL.getter(uint64_t a1)
{
  v3 = v1[1];
  v35 = *v1;
  v36 = v3;
  v37 = v1[2];
  sub_27463B9CC();
  v4 = *(*(a1 - 8) + 16);
  v4(&v29, &v35, a1);
  v5 = sub_27463B9BC();
  v6 = swift_allocObject();
  v7 = MEMORY[0x277D85700];
  *(v6 + 16) = v5;
  *(v6 + 24) = v7;
  v17 = OUTLINED_FUNCTION_4_26(v6, v8, v9, v10, v11, v12, v13, v14, v15, v29, v30, v31, v32, v33, v34, v35, v36, v16);
  (v4)(&v29, &v35, a1, v17);
  v18 = sub_27463B9BC();
  v19 = swift_allocObject();
  *(v19 + 16) = v18;
  *(v19 + 24) = v7;
  OUTLINED_FUNCTION_4_26(v19, v20, v21, v19, v22, v23, v24, v25, v26, v29, v30, v31, v32, v33, v34, v35, v36, v27);
  sub_27463AF0C();
  return v29;
}

uint64_t sub_27454FA0C(uint64_t a1)
{
  v1 = *(a1 + 24);
  v4 = *(a1 + 8);
  v5 = v1;
  v6 = *(a1 + 40);
  sub_27454F7B4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280950E20, &qword_27464D880);
  MEMORY[0x277C575F0](&v3);
  sub_27463AEBC();
}

uint64_t sub_27454FACC(id *a1)
{
  v1 = [*a1 localizedLabel];
  sub_27463B6AC();

  sub_27454F7B4();
  sub_274412BBC();
  return sub_27463AE4C();
}

id sub_27454FB8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  (*(a3 + 16))(&v6, a1, a2);
  v3 = v6;
  if (v6)
  {
    v4 = [v6 number];

    if (v4)
    {
      v3 = [v4 BOOLValue];
    }

    else
    {
      return 0;
    }
  }

  return v3;
}

void sub_27454FC10(uint64_t a1@<X3>, unsigned __int8 *a2@<X8>, __int128 *a3@<X2>)
{
  v6 = *a3;
  v7 = a3[1];
  v8 = a3[2];
  type metadata accessor for StoredParameterState(0, a1, a3, a1);
  StoredParameterState.wrappedValue.getter();
  if (v9 && (v4 = [v9 number], v9, v4))
  {
    v5 = [v4 BOOLValue];
  }

  else
  {
    v5 = 0;
  }

  *a2 = v5;
}

void sub_27454FCB8(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = [objc_allocWithZone(MEMORY[0x277D7C198]) initWithBoolValue_];
  v6 = v5;
  (*(a4 + 32))(&v6);
}

uint64_t sub_27454FD28(unsigned __int8 *a1, uint64_t a2, uint64_t a3, __int128 *a4, uint64_t a5)
{
  v7 = *a1;
  v8 = a4[1];
  v15 = *a4;
  v16 = v8;
  v17 = a4[2];
  v9 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v12 = type metadata accessor for StoredParameterState(0, a5, v10, v11);
  (*(*(v12 - 8) + 16))(v14, a4, v12);
  v14[0] = [v9 initWithBoolValue_];
  StoredParameterState.wrappedValue.setter(v14, v12);
}

unint64_t sub_27454FE14()
{
  result = qword_280950F08;
  if (!qword_280950F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280950F08);
  }

  return result;
}

uint64_t objectdestroy_13Tm()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_27454FEE0(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 129))
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

uint64_t sub_27454FF20(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 128) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 129) = 1;
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

    *(result + 129) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_27454FFB8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280950F50, &qword_27464CCF0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id sub_274550028@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  result = sub_27454FB8C(a1, a2, a3);
  *a4 = result & 1;
  return result;
}

uint64_t objectdestroy_36Tm()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

unint64_t sub_274550104()
{
  result = qword_280950F78;
  if (!qword_280950F78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280950F68, &qword_274659450);
    sub_27440CA78(&unk_280950F40, &qword_28094D4E8, &qword_274650460, MEMORY[0x277CDF068]);
    sub_2745501EC(&qword_28094A6C0, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280950F78);
  }

  return result;
}

uint64_t sub_2745501EC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

__n128 OUTLINED_FUNCTION_4_26(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a17, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, __int128 a15, __int128 a16, __n128 a18)
{
  *(a1 + 32) = v18;
  *(a1 + 40) = a15;
  *(a1 + 56) = a16;
  result = a18;
  *(a1 + 72) = a18;
  return result;
}

void OUTLINED_FUNCTION_5_29()
{
  v2 = *(v1 - 136);
  *v0 = *(v1 - 144);
  *(v0 + 8) = v2;
}

uint64_t sub_274550294(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = sub_27463B6AC();
  v7 = v6;

  swift_unknownObjectRetain();
  v4(v5, v7, a3);

  return swift_unknownObjectRelease();
}

uint64_t sub_274550320()
{
  v1 = OUTLINED_FUNCTION_3();

  return MEMORY[0x2821FE8D8](v1);
}

uint64_t sub_274550374@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for SummaryCoordinator();
  result = sub_274638EFC();
  *a2 = result;
  return result;
}

id sub_2745503B0()
{
  result = [v0 currentEditorIsEditing];
  if ((result & 1) == 0)
  {

    return [v0 setUpdateBlock_];
  }

  return result;
}

uint64_t sub_274550400()
{
  type metadata accessor for SummaryCoordinator();
  v0 = swift_allocObject();
  *(v0 + 16) = [objc_allocWithZone(WFModuleSummaryCoordinator) init];
  return v0;
}

uint64_t sub_274550450@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v136 = a1;
  v3 = sub_274639ABC();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v103 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v128.i64[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280951068, &qword_2746598D8);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v7);
  v9 = &v103 - v8;
  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280951070, &unk_2746598E0);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v10);
  v135 = &v103 - v11;
  v12 = *(v1 + 224);
  v13 = *(v2 + 232);
  v14 = *(v2 + 240);
  v15 = type metadata accessor for SummaryCoordinator();
  v17 = sub_274556B78(&unk_280951078, v16, type metadata accessor for SummaryCoordinator, &unk_274659850);
  v133 = v13;
  v134 = v12;
  v132 = v14;
  v131 = v15;
  v129 = v17;
  v126 = *(sub_27463920C() + 16);

  v18 = *v2;
  v123 = *(v2 + 8);
  v124 = v18;
  v19 = *(v2 + 16);
  v20 = *(v2 + 32);
  v21 = *(v2 + 112);
  LODWORD(v18) = *(v2 + 120);
  v127 = *(v2 + 24);
  v122 = v19;
  if (v18 == 1)
  {

    sub_27450AF48(v21, 1);
  }

  else
  {

    sub_27450AF48(v21, 0);
    sub_27463BC0C();
    v22 = sub_27463A2FC();
    OUTLINED_FUNCTION_9_15(v22, &dword_2743F0000, v23, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", v24, v25, MEMORY[0x277D84F90]);

    sub_274639AAC();
    swift_getAtKeyPath();
    sub_274482198(v21, 0);
    v26 = OUTLINED_FUNCTION_5_30();
    v27(v26);
    v21 = v138;
  }

  v28 = *(v2 + 128);
  v29 = *(v2 + 136);
  v125 = v21;
  if (v29 == 1)
  {
    swift_unknownObjectRetain();
  }

  else
  {

    sub_27463BC0C();
    v30 = sub_27463A2FC();
    OUTLINED_FUNCTION_9_15(v30, &dword_2743F0000, v31, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", v32, v33, MEMORY[0x277D84F90]);

    sub_274639AAC();
    swift_getAtKeyPath();
    sub_274482198(v28, 0);
    v34 = OUTLINED_FUNCTION_5_30();
    v35(v34);
    v28 = v138;
  }

  sub_2744C6F1C();
  Strong = swift_unknownObjectWeakLoadStrong();
  sub_27440CB1C(v147, &unk_28094A0F0, &unk_27465AFF0);
  v36 = *(v2 + 160);
  v37 = *(v2 + 168);
  v121 = v28;
  if (v37 == 1)
  {
    *&v113 = v36;
  }

  else
  {

    sub_27463BC0C();
    v38 = sub_27463A2FC();
    OUTLINED_FUNCTION_9_15(v38, &dword_2743F0000, v39, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", v40, v41, MEMORY[0x277D84F90]);

    sub_274639AAC();
    swift_getAtKeyPath();
    sub_2743F45E8(v36, 0);
    (*(v4 + 8))(v6, v3);
    *&v113 = v138;
  }

  v116 = *(v2 + 40);
  v42 = *(v2 + 48);
  v110 = *(v2 + 56);
  v43 = v110;
  v111 = v42;
  v44 = *(v2 + 64);
  v46 = *(v2 + 88);
  v108 = *(v2 + 80);
  v45 = v108;
  v109 = v44;
  v107 = v46;
  v47 = *(v2 + 104);
  v48 = *(v2 + 176);
  v137.i64[0] = *(v2 + 184);
  v49 = *(v2 + 200);
  v112 = *(v2 + 192);
  v51 = *(v2 + 208);
  v50 = *(v2 + 216);
  v114 = v49;
  v115 = v51;
  v117 = v48;
  v118 = v50;
  v52 = *(v2 + 72);
  v53 = *(v2 + 96);
  v143 = v48;
  v144.i64[0] = v137.i64[0];
  v144.i64[1] = v112;
  v145.i64[0] = v49;
  v145.i64[1] = v51;
  v146 = v50;

  sub_274483110(v43, v44);
  sub_274483110(v45, v46);
  v54 = v47;
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280951088, &qword_2746598F0);
  sub_27463AD0C();
  v104 = v139;
  v105 = v138;
  v106 = v142;
  sub_27440CA78(&qword_280950FF0, &unk_2809521A0, &unk_27465ACC0, MEMORY[0x277D7D3A0]);
  LOBYTE(v44) = v113 & 1;
  v113 = v140;
  v103 = v141;
  v56 = v123;
  v55 = v124;
  *v9 = v126;
  *(v9 + 1) = v55;
  v57 = v122;
  *(v9 + 2) = v56;
  *(v9 + 3) = v57;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2809521A0, &unk_27465ACC0);
  *(v9 + 4) = sub_27463950C();
  *(v9 + 5) = v58;
  *(v9 + 6) = v20;
  v59 = v121;
  *(v9 + 7) = v125;
  *(v9 + 8) = v59;
  swift_unknownObjectWeakInit();
  swift_unknownObjectRelease();
  v9[80] = v44;
  v9[81] = v116;
  v60 = v112;
  v61 = v109;
  v62 = v110;
  *(v9 + 11) = v111;
  *(v9 + 12) = v62;
  *(v9 + 13) = v61;
  v9[112] = v52;
  v63 = v107;
  *(v9 + 15) = v108;
  *(v9 + 16) = v63;
  v9[136] = v53;
  v64 = v104;
  v65 = v105;
  *(v9 + 18) = v47;
  *(v9 + 19) = v65;
  *(v9 + 20) = v64;
  *(v9 + 184) = v103;
  *(v9 + 168) = v113;
  *(v9 + 25) = v106;
  type metadata accessor for WorkflowEditorOptions(0);
  sub_274556B78(&qword_28094A730, 255, type metadata accessor for WorkflowEditorOptions, &protocol conformance descriptor for WorkflowEditorOptions);
  *(v9 + 26) = sub_27463979C();
  *(v9 + 27) = v66;
  v67 = type metadata accessor for SummaryHostingView(0);
  v68 = *(v67 + 80);
  *&v9[v68] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094D140, &qword_27464E160);
  swift_storeEnumTagMultiPayload();
  KeyPath = swift_getKeyPath();
  OUTLINED_FUNCTION_4_27(KeyPath);
  v70 = swift_getKeyPath();
  OUTLINED_FUNCTION_4_27(v70);
  v71 = swift_getKeyPath();
  OUTLINED_FUNCTION_4_27(v71);
  v72 = swift_getKeyPath();
  OUTLINED_FUNCTION_4_27(v72);
  v73 = swift_getKeyPath();
  OUTLINED_FUNCTION_4_27(v73);
  v74 = &v9[*(v67 + 104)];
  *v74 = swift_getKeyPath();
  v74[9] = 0;
  sub_274556FA8(v2, &v138);
  v75 = swift_allocObject();
  sub_274556FE0(&v138, v75 + 16);
  v76 = &v9[*(v128.i64[0] + 36)];
  *v76 = 0;
  *(v76 + 1) = 0;
  *(v76 + 2) = sub_274557018;
  *(v76 + 3) = v75;
  v77 = v117;
  v138 = v117;
  v139 = v137.i64[0];
  *&v140 = v60;
  v78 = v114;
  *(&v140 + 1) = v114;
  v79 = v115;
  *&v141 = v115;
  v80 = v118;
  *(&v141 + 1) = v118;
  sub_27463ACEC();
  v81 = v143;
  if (v143)
  {
    v82 = v143;
  }

  v138 = v77;
  v139 = v137.i64[0];
  *&v140 = v60;
  *(&v140 + 1) = v78;
  *&v141 = v79;
  *(&v141 + 1) = v80;
  sub_27463ACEC();
  v83.i64[0] = 0;
  v84.i64[0] = v143;
  v85 = vdupq_lane_s64(vmvnq_s8(vceqq_s64(v84, v83)).i64[0], 0);
  v137 = vandq_s8(v144, v85);
  v128 = vandq_s8(v145, v85);
  v86 = v143 == 0;

  v87 = v135;
  sub_274557428(v9, v135, &qword_280951068, &qword_2746598D8);
  v88 = v87 + *(v130 + 36);
  v89 = v128;
  *v88 = v137;
  *(v88 + 16) = v89;
  *(v88 + 32) = v86;
  *(v88 + 40) = v81;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094C820, &unk_27464AF60);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_274648560;
  v91 = *(sub_27463920C() + 16);

  *(inited + 32) = v91;
  if (sub_274453594())
  {
    sub_274574834(inited, v92, v93, v94, v95, v96, v97, v98, v103);
    v100 = v99;
  }

  else
  {
    swift_setDeallocating();
    sub_2744EBB98();
    v100 = MEMORY[0x277D84FA0];
  }

  v101 = v136;
  sub_274557428(v87, v136, &qword_280951070, &unk_2746598E0);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280951090, &qword_274659A30);
  *(v101 + *(result + 36)) = v100;
  return result;
}

void sub_274550D6C(uint64_t a1)
{
  type metadata accessor for SummaryCoordinator();
  sub_274556B78(&unk_280951078, v1, type metadata accessor for SummaryCoordinator, &unk_274659850);
  v2 = *(sub_27463920C() + 16);

  sub_2745503B0();
}

void sub_274550E2C()
{
  if (MEMORY[0x277D84F90] >> 62)
  {
    if (sub_27463C27C())
    {
      sub_274574834(MEMORY[0x277D84F90], v2, v3, v4, v5, v6, v7, v8, v0);
    }

    else
    {
      v1 = MEMORY[0x277D84FA0];
    }
  }

  else
  {
    v1 = MEMORY[0x277D84FA0];
  }

  qword_280965ED8 = v1;
}

double sub_274550ED4@<D0>(void *a1@<X8>)
{
  if (qword_280949328 != -1)
  {
    swift_once();
  }

  *a1 = qword_280965ED8;

  return result;
}

id sub_274550F44()
{
  v1 = v0 + OBJC_IVAR____TtCV14WorkflowEditorP33_060892FA80DB790CDB013ACF6F2F770418SummaryHostingView11Coordinator_view;
  swift_beginAccess();
  result = *(v1 + 64);
  if (result)
  {
    result = swift_dynamicCastObjCProtocolConditional();
    if (result)
    {
      return [result viewController];
    }
  }

  return result;
}

void sub_274551020(void *a1)
{
  v1 = [a1 templateView];
  if (v1)
  {
    v2 = v1;
    [v1 invalidateIntrinsicContentSize];
  }
}

void sub_274551104(uint64_t a1@<X0>, BOOL *a3@<X8>)
{
  v4 = a1 + OBJC_IVAR____TtCV14WorkflowEditorP33_060892FA80DB790CDB013ACF6F2F770418SummaryHostingView11Coordinator_view;
  swift_beginAccess();
  v5 = *(v4 + 104);
  if (v5)
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280950E20, &qword_27464D880);
    sub_27463AEBC();
  }

  *a3 = v5 == 0;
}

uint64_t sub_274551264(uint64_t a1, char a2, uint64_t a3)
{
  sub_27463B14C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094D7F0, &unk_2746508D0);
  sub_27463946C();
}

void sub_2745512E8(uint64_t a1@<X0>, BOOL *a3@<X8>)
{
  v4 = a1 + OBJC_IVAR____TtCV14WorkflowEditorP33_060892FA80DB790CDB013ACF6F2F770418SummaryHostingView11Coordinator_view;
  swift_beginAccess();
  v5 = *(v4 + 128);
  if (v5)
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280950E20, &qword_27464D880);
    sub_27463AEBC();
  }

  *a3 = v5 == 0;
}

uint64_t sub_274551430(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = type metadata accessor for SummaryHostingView(0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV14WorkflowEditorP33_060892FA80DB790CDB013ACF6F2F770418SummaryHostingView11Coordinator_view;
  swift_beginAccess();
  sub_274557020(v4 + v12, v11);
  v13 = *(v11 + 26);
  if (v13)
  {
    *&v16 = a2;
    *(&v16 + 1) = a1 & 1;
    v17 = a3;
    v18 = a4;
    v19 = 0;
    v20 = 0;
    v21 = 0;
    v14 = v13;
    swift_unknownObjectRetain();

    sub_27443CA58(&v16);

    return sub_274557084(v11);
  }

  else
  {
    type metadata accessor for WorkflowEditorOptions(0);
    sub_274556B78(&qword_28094A730, 255, type metadata accessor for WorkflowEditorOptions, &protocol conformance descriptor for WorkflowEditorOptions);
    result = sub_27463978C();
    __break(1u);
  }

  return result;
}

uint64_t sub_274551648(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = type metadata accessor for SummaryHostingView(0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = OBJC_IVAR____TtCV14WorkflowEditorP33_060892FA80DB790CDB013ACF6F2F770418SummaryHostingView11Coordinator_view;
  swift_beginAccess();
  sub_274557020(v7 + v16, v15);
  if (a6)
  {
    v17 = swift_allocObject();
    *(v17 + 16) = a6;
    *(v17 + 24) = a7;
    v18 = sub_27440CBD0;
  }

  else
  {
    v18 = CGSizeMake;
    v17 = 0;
  }

  v19 = swift_allocObject();
  v20 = v19;
  *(v19 + 16) = v18;
  *(v19 + 24) = v17;
  v21 = *(v15 + 7);
  if (!v21)
  {
    sub_2744069F0(a6, a7);
    goto LABEL_8;
  }

  MEMORY[0x28223BE20](v19);
  *(&v26 - 2) = v15;
  *(&v26 - 1) = a1;
  swift_unknownObjectRetain();
  sub_2744069F0(a6, a7);
  sub_27463B13C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094D7F0, &unk_2746508D0);
  sub_27463946C();

  v22 = *(v15 + 26);
  if (v22)
  {
    *&v27 = a1;
    *(&v27 + 1) = v21;
    v28 = sub_27440CB74;
    v29 = v20;
    v30 = a4;
    v31 = a5;
    v32 = 1;
    swift_unknownObjectRetain();
    v23 = v22;
    v24 = a1;

    sub_27443CA58(&v27);

    swift_unknownObjectRelease();
LABEL_8:

    return sub_274557084(v15);
  }

  type metadata accessor for WorkflowEditorOptions(0);
  sub_274556B78(&qword_28094A730, 255, type metadata accessor for WorkflowEditorOptions, &protocol conformance descriptor for WorkflowEditorOptions);
  result = sub_27463978C();
  __break(1u);
  return result;
}

uint64_t sub_274551A50(void *a1, double a2, double a3, double a4, double a5)
{
  v39 = sub_27463B1EC();
  v42 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v12 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_27463B21C();
  v40 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v14 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for SummaryHostingView(0);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v39 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = OBJC_IVAR____TtCV14WorkflowEditorP33_060892FA80DB790CDB013ACF6F2F770418SummaryHostingView11Coordinator_view;
  swift_beginAccess();
  sub_274557020(v5 + v18, v17);
  v19 = [a1 anchor];
  v20 = *(v17 + 20);
  v21 = *(v17 + 25);
  aBlock = *(v17 + 19);
  v49 = v20;
  v22 = *(v17 + 184);
  v50 = *(v17 + 168);
  v51 = v22;
  v52 = v21;
  v43 = v19;
  v44 = a2;
  v45 = a3;
  v46 = a4;
  v47 = a5;
  v23 = v50;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809510A8, &unk_274659A90);
  sub_27463AEBC();
  sub_274557084(v17);

  v24 = [a1 anchor];
  v25 = [a1 resultType];
  v26 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v27 = swift_allocObject();
  *(v27 + 16) = v26;
  *(v27 + 24) = a1;
  *(v27 + 32) = a2;
  *(v27 + 40) = a3;
  *(v27 + 48) = a4;
  *(v27 + 56) = a5;
  v28 = swift_allocObject();
  *(v28 + 16) = a1;
  v29 = objc_allocWithZone(WFVariableEditingOptions);
  v30 = a1;
  v31 = sub_2745AFA0C(v24, v25, sub_274557338, v27, sub_27445B60C, v28);
  sub_274412734(0, &qword_28094AF90, 0x277D85C78);
  v32 = sub_27463BCEC();
  v33 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v34 = swift_allocObject();
  *(v34 + 16) = v33;
  *(v34 + 24) = v31;
  *&v51 = sub_274557394;
  *(&v51 + 1) = v34;
  aBlock = MEMORY[0x277D85DD0];
  v49 = 1107296256;
  *&v50 = sub_27443E0E8;
  *(&v50 + 1) = &block_descriptor_68;
  v35 = _Block_copy(&aBlock);

  v36 = v31;
  sub_27463B20C();
  v43 = MEMORY[0x277D84F90];
  sub_274556B78(&qword_28094E100, 255, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094AFA0, &unk_27464D1A0);
  sub_27440CA78(&qword_28094E110, &unk_28094AFA0, &unk_27464D1A0, MEMORY[0x277D83970]);
  v37 = v39;
  sub_27463C1EC();
  MEMORY[0x277C58440](0, v14, v12, v35);
  _Block_release(v35);

  (*(v42 + 8))(v12, v37);
  (*(v40 + 8))(v14, v41);
}

id sub_274551FB4(void *a1, uint64_t a2, void *a3, double a4, double a5, double a6, double a7)
{
  v13 = type metadata accessor for SummaryHostingView(0);
  MEMORY[0x28223BE20](v13);
  v15 = &v49[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v16);
  v18 = &v49[-v17];
  MEMORY[0x28223BE20](v19);
  v21 = &v49[-v20];
  if (a1)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v23 = Strong;
      v24 = OBJC_IVAR____TtCV14WorkflowEditorP33_060892FA80DB790CDB013ACF6F2F770418SummaryHostingView11Coordinator_view;
      swift_beginAccess();
      sub_274557020(v23 + v24, v21);
      v25 = a1;

      v26 = [a3 anchor];
      v27 = [v26 variableProvider];

      v28 = [a3 anchor];
      v29 = [v28 parameter];

      swift_beginAccess();
      v30 = swift_unknownObjectWeakLoadStrong();
      if (v30)
      {
        v31 = v30;
        v32 = OBJC_IVAR____TtCV14WorkflowEditorP33_060892FA80DB790CDB013ACF6F2F770418SummaryHostingView11Coordinator_view;
        swift_beginAccess();
        sub_274557020(v31 + v32, v18);

        sub_2744C6DD8();
        sub_274557084(v18);
        if (v54 != 1)
        {
          v33 = swift_unknownObjectWeakLoadStrong();
          sub_27440CB1C(&v53, &qword_280950E50, &qword_274658F10);
          goto LABEL_10;
        }

        sub_27440CB1C(&v53, &qword_28094E090, &qword_274651B80);
      }

      v33 = 0;
LABEL_10:
      v41 = objc_allocWithZone(WFVariableEditingAnchor);
      v42 = v25;
      v43 = sub_2745AFB44(v42, v27, v29, v33);
      v44 = *(v21 + 20);
      v45 = *(v21 + 25);
      v53 = *(v21 + 19);
      v54 = v44;
      v46 = *(v21 + 184);
      v55 = *(v21 + 168);
      v56 = v46;
      v57 = v45;
      *&v50 = v43;
      *(&v50 + 1) = a4;
      *&v51 = a5;
      *(&v51 + 1) = a6;
      v52 = a7;
      v47 = v55;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809510A8, &unk_274659A90);
      sub_27463AEBC();

      sub_274557084(v21);

      goto LABEL_11;
    }
  }

  else
  {
    swift_beginAccess();
    v34 = swift_unknownObjectWeakLoadStrong();
    if (v34)
    {
      v35 = v34;
      v36 = OBJC_IVAR____TtCV14WorkflowEditorP33_060892FA80DB790CDB013ACF6F2F770418SummaryHostingView11Coordinator_view;
      swift_beginAccess();
      sub_274557020(v35 + v36, v15);

      v37 = *(v15 + 20);
      v38 = *(v15 + 25);
      v53 = *(v15 + 19);
      v54 = v37;
      v39 = *(v15 + 184);
      v55 = *(v15 + 168);
      v56 = v39;
      v57 = v38;
      v52 = 0.0;
      v51 = 0u;
      v50 = 0u;
      v40 = v55;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809510A8, &unk_274659A90);
      sub_27463AEBC();
      sub_274557084(v15);

LABEL_11:
    }
  }

  return [a3 variableDidChange_];
}

void sub_2745523E0(uint64_t a1, void *a2)
{
  v3 = type metadata accessor for SummaryHostingView(0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v21[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6);
  v8 = &v21[-v7];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    v11 = OBJC_IVAR____TtCV14WorkflowEditorP33_060892FA80DB790CDB013ACF6F2F770418SummaryHostingView11Coordinator_view;
    swift_beginAccess();
    sub_274557020(v10 + v11, v8);

    v12 = *(v8 + 26);
    if (!v12)
    {
      goto LABEL_9;
    }

    v13 = v12;
    sub_274557084(v8);
    v14 = sub_27443C514();

    if (v14)
    {
      [v14 finishEditingReturningToKeyboard_];
    }
  }

  swift_beginAccess();
  v15 = swift_unknownObjectWeakLoadStrong();
  if (!v15)
  {
    return;
  }

  v16 = v15;
  v17 = OBJC_IVAR____TtCV14WorkflowEditorP33_060892FA80DB790CDB013ACF6F2F770418SummaryHostingView11Coordinator_view;
  swift_beginAccess();
  sub_274557020(v16 + v17, v5);

  v18 = *(v5 + 26);
  if (!v18)
  {
LABEL_9:
    type metadata accessor for WorkflowEditorOptions(0);
    sub_274556B78(&qword_28094A730, 255, type metadata accessor for WorkflowEditorOptions, &protocol conformance descriptor for WorkflowEditorOptions);
    sub_27463978C();
    __break(1u);
    return;
  }

  v19 = v18;
  sub_274557084(v5);
  v20 = a2;
  sub_27443C58C(a2);
}

void sub_274552690(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for SummaryHostingView(0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtCV14WorkflowEditorP33_060892FA80DB790CDB013ACF6F2F770418SummaryHostingView11Coordinator_view;
  swift_beginAccess();
  sub_274557020(v2 + v8, v7);
  v9 = *(v7 + 26);
  if (v9)
  {
    v10 = v9;
    sub_274557084(v7);
    if (a2)
    {
      v11 = a1;
    }

    else
    {
      v11 = 0;
    }

    if (a2)
    {
      v12 = a2;
    }

    else
    {
      v12 = 0xE000000000000000;
    }

    sub_27443CE38(v11, v12);
  }

  else
  {
    type metadata accessor for WorkflowEditorOptions(0);
    sub_274556B78(&qword_28094A730, 255, type metadata accessor for WorkflowEditorOptions, &protocol conformance descriptor for WorkflowEditorOptions);
    sub_27463978C();
    __break(1u);
  }
}

id sub_274552870()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SummaryHostingView.Coordinator(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2745528E0(uint64_t a1)
{
  result = type metadata accessor for SummaryHostingView(319);
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

id sub_274552990()
{
  v1 = type metadata accessor for SummaryHostingView(0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_274557020(v0, v3);
  v4 = type metadata accessor for SummaryHostingView.Coordinator(0);
  v5 = objc_allocWithZone(v4);
  sub_274557020(v3, v5 + OBJC_IVAR____TtCV14WorkflowEditorP33_060892FA80DB790CDB013ACF6F2F770418SummaryHostingView11Coordinator_view);
  v8.receiver = v5;
  v8.super_class = v4;
  v6 = objc_msgSendSuper2(&v8, sel_init);
  sub_274557084(v3);
  return v6;
}

uint64_t sub_274552A58()
{
  v0 = sub_274638D4C();
  v55 = *(v0 - 8);
  v56 = v0;
  MEMORY[0x28223BE20](v0);
  v64 = &v55 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_274639ABC();
  v63 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v62 = &v55 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = sub_274638D1C();
  v4 = *(v67 - 8);
  MEMORY[0x28223BE20](v67);
  v70 = &v55 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v60 = &v55 - v7;
  MEMORY[0x28223BE20](v8);
  v10 = &v55 - v9;
  v69 = sub_274638D3C();
  v11 = *(v69 - 8);
  MEMORY[0x28223BE20](v69);
  v66 = &v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v55 - v14;
  MEMORY[0x28223BE20](v16);
  v18 = &v55 - v17;
  v19 = sub_274638BEC();
  v58 = *(v19 - 8);
  v59 = v19;
  MEMORY[0x28223BE20](v19);
  v65 = &v55 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_274638BBC();
  sub_274638D2C();
  sub_274638CFC();
  v21 = sub_274638D2C();
  v22 = sub_27463BD4C();
  if (sub_27463C08C())
  {
    v23 = swift_slowAlloc();
    v68 = v11;
    v24 = v23;
    *v23 = 0;
    v25 = sub_274638D0C();
    _os_signpost_emit_with_name_impl(&dword_2743F0000, v21, v22, v25, "SummaryViewMake", "Making summary view", v24, 2u);
    v11 = v68;
    MEMORY[0x277C5A270](v24, -1, -1);
  }

  v26 = v67;
  (*(v4 + 16))(v60, v10, v67);
  sub_274638D7C();
  swift_allocObject();
  sub_274638D6C();
  v27 = v69;
  (*(v11 + 16))(v15, v18, v69);
  v28 = v65;
  sub_274638BFC();
  v30 = *(v4 + 8);
  v29 = (v4 + 8);
  v60 = v30;
  (v30)(v10, v26);
  v32 = *(v11 + 8);
  v31 = v11 + 8;
  v57 = v32;
  v32(v18, v27);
  v33 = v61 + *(type metadata accessor for SummaryHostingView(0) + 92);
  v34 = *v33;
  v35 = *(v33 + 8);

  v36 = v34;
  if ((v35 & 1) == 0)
  {
    sub_27463BC0C();
    v37 = sub_27463A2FC();
    sub_274638CEC();

    v38 = v62;
    sub_274639AAC();
    swift_getAtKeyPath();
    j_j__swift_release(v34);
    (*(v63 + 8))(v38, v2);
    v36 = v72;
  }

  v68 = v31;
  if (v36)
  {
    v39 = sub_27463876C();
  }

  else
  {
    v39 = 0;
  }

  v40 = [objc_allocWithZone(type metadata accessor for SummaryViewHost()) initWithUseCase_];

  if ((v35 & 1) == 0)
  {
    sub_27463BC0C();
    v41 = sub_27463A2FC();
    sub_274638CEC();

    v42 = v62;
    sub_274639AAC();
    swift_getAtKeyPath();
    j_j__swift_release(v34);
    (*(v63 + 8))(v42, v2);
    v34 = v72;
  }

  v43 = v64;
  v64 = v29;
  *&v40[OBJC_IVAR____TtC14WorkflowEditorP33_060892FA80DB790CDB013ACF6F2F770415SummaryViewHost_statistics] = v34;

  [v40 setExtendSlotBackgroundOffEdges_];
  v44 = v66;
  if (v39)
  {

    sub_27463877C();
  }

  sub_274638BAC();
  v45 = sub_274638BCC();
  v47 = v46;
  sub_274638BDC();
  v48 = sub_274638D2C();
  sub_274638D5C();
  LODWORD(v63) = sub_27463BD3C();
  result = sub_27463C08C();
  if ((result & 1) == 0)
  {
    goto LABEL_24;
  }

  if ((v47 & 1) == 0)
  {
    if (v45)
    {
      v51 = v55;
      v50 = v56;
LABEL_20:

      sub_274638D8C();

      if ((*(v51 + 88))(v43, v50) == *MEMORY[0x277D85B00])
      {
        v52 = "[Error] Interval already ended";
      }

      else
      {
        (*(v51 + 8))(v43, v50);
        v52 = "";
      }

      v53 = swift_slowAlloc();
      *v53 = 0;
      v54 = sub_274638D0C();
      _os_signpost_emit_with_name_impl(&dword_2743F0000, v48, v63, v54, v45, v52, v53, 2u);
      MEMORY[0x277C5A270](v53, -1, -1);
      v28 = v65;
      v44 = v66;
LABEL_24:

      (v60)(v70, v67);
      v57(v44, v69);
      (*(v58 + 8))(v28, v59);
      return v40;
    }

    __break(1u);
    goto LABEL_26;
  }

  if (HIDWORD(v45))
  {
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if ((v45 & 0xFFFFF800) != 0xD800)
  {
    v51 = v55;
    v50 = v56;
    if (v45 >> 16 <= 0x10)
    {
      v45 = &v71;
      goto LABEL_20;
    }

    goto LABEL_27;
  }

LABEL_28:
  __break(1u);
  return result;
}

uint64_t sub_2745532CC(void *a1, uint64_t a2)
{
  v3 = v2;
  v141 = a2;
  v144 = a1;
  v119 = sub_274638D4C();
  v118 = *(v119 - 8);
  MEMORY[0x28223BE20](v119);
  v134 = &v118 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v132 = sub_274638C1C();
  v131 = *(v132 - 8);
  MEMORY[0x28223BE20](v132);
  v130 = &v118 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2746395EC();
  MEMORY[0x28223BE20](v6 - 8);
  v129 = &v118 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v147 = type metadata accessor for SummaryHostingView(0);
  v126 = *(v147 - 1);
  MEMORY[0x28223BE20](v147);
  v127 = v8;
  v140 = &v118 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v142 = sub_274639ABC();
  v146 = *(v142 - 1);
  MEMORY[0x28223BE20](v142);
  v137 = &v118 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v139 = sub_274638D1C();
  v145 = *(v139 - 8);
  MEMORY[0x28223BE20](v139);
  v133 = &v118 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v118 - v12;
  MEMORY[0x28223BE20](v14);
  v16 = &v118 - v15;
  v138 = sub_274638D3C();
  v17 = *(v138 - 8);
  MEMORY[0x28223BE20](v138);
  v135 = &v118 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = &v118 - v20;
  MEMORY[0x28223BE20](v22);
  v24 = &v118 - v23;
  v124 = sub_274638BEC();
  v123 = *(v124 - 8);
  MEMORY[0x28223BE20](v124);
  v143 = &v118 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_274638BBC();
  sub_274638D2C();
  sub_274638CFC();
  v26 = sub_274638D2C();
  v27 = sub_27463BD4C();
  if (sub_27463C08C())
  {
    v28 = swift_slowAlloc();
    *v28 = 0;
    v29 = sub_274638D0C();
    _os_signpost_emit_with_name_impl(&dword_2743F0000, v26, v27, v29, "SummaryViewUpdate", "Making summary view", v28, 2u);
    MEMORY[0x277C5A270](v28, -1, -1);
  }

  v30 = v145;
  v31 = v139;
  (*(v145 + 16))(v13, v16, v139);
  sub_274638D7C();
  swift_allocObject();
  sub_274638D6C();
  v32 = v138;
  (*(v17 + 16))(v21, v24, v138);
  sub_274638BFC();
  v33 = *(v30 + 8);
  v145 = v30 + 8;
  v122 = v33;
  v33(v16, v31);
  v34 = *(v17 + 8);
  v125 = v17 + 8;
  v121 = v34;
  v34(v24, v32);
  v35 = v3 + v147[23];
  v36 = *v35;
  v37 = *(v35 + 8);

  if (v37)
  {
    v38 = v144;
    v39 = v137;
    if (v36)
    {
LABEL_5:
      v137 = sub_27463876C();

      goto LABEL_8;
    }
  }

  else
  {
    sub_27463BC0C();
    v40 = sub_27463A2FC();
    sub_274638CEC();

    v39 = v137;
    sub_274639AAC();
    swift_getAtKeyPath();
    j_j__swift_release(v36);
    (v146)[1](v39, v142);
    v38 = v144;
    if (aBlock)
    {
      goto LABEL_5;
    }
  }

  v137 = 0;
LABEL_8:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280951098, &qword_274659A38);
  sub_27463A1BC();
  v41 = v156;
  v42 = v140;
  sub_274557020(v3, v140);
  v43 = OBJC_IVAR____TtCV14WorkflowEditorP33_060892FA80DB790CDB013ACF6F2F770418SummaryHostingView11Coordinator_view;
  swift_beginAccess();
  sub_2745570E0(v42, v41 + v43);
  swift_endAccess();

  v44 = *v3;
  sub_27463A1BC();
  v45 = aBlock;
  [v44 setDelegate_];

  if ([v38 delegate])
  {
    objc_opt_self();
    v46 = swift_dynamicCastObjCClass();
    if (v46 && v46 != v44)
    {
      [v46 setTemplateView_];
    }

    swift_unknownObjectRelease();
  }

  v47 = [v44 templateView];
  if (!v47 || (v48 = v47, v47, v48 != v38))
  {
    [v44 setTemplateView_];
  }

  v128 = *(v3 + 80);
  if (v128 == 1)
  {
    v141 = *(v3 + 24);
  }

  else if (sub_274453594())
  {
    sub_274573900(MEMORY[0x277D84F90], v49, v50, v51, v52, v53, v54, v55, v118);
    v141 = v56;
  }

  else
  {
    v141 = MEMORY[0x277D84FA0];
  }

  v57 = v3 + v147[22];
  v58 = *v57;
  v59 = *(v57 + 8);
  if (v59 == 1)
  {
    if (v58)
    {
LABEL_23:
      v60 = &selRef_wf_slotTemplateSlotRunningTitleColor;
      goto LABEL_26;
    }
  }

  else
  {

    sub_27463BC0C();
    v61 = sub_27463A2FC();
    sub_274638CEC();

    sub_274639AAC();
    swift_getAtKeyPath();
    sub_2743F45E8(v58, 0);
    (v146)[1](v39, v142);
    if (aBlock)
    {
      goto LABEL_23;
    }
  }

  v60 = &selRef_wf_slotTemplateSlotDisabledTitleColor;
LABEL_26:
  v136 = [objc_opt_self() *v60];
  if (v59)
  {
    v62 = v142;
    if (v58)
    {
LABEL_28:
      v63 = &selRef_wf_slotTemplateSlotRunningBackgroundColor;
      goto LABEL_31;
    }
  }

  else
  {

    sub_27463BC0C();
    v64 = sub_27463A2FC();
    sub_274638CEC();

    sub_274639AAC();
    swift_getAtKeyPath();
    sub_2743F45E8(v58, 0);
    v62 = v142;
    (v146)[1](v39, v142);
    if (aBlock)
    {
      goto LABEL_28;
    }
  }

  v63 = &selRef_wf_slotTemplateSlotDisabledBackgroundColor;
LABEL_31:
  v142 = [objc_opt_self() *v63];
  sub_27463A1BC();
  v65 = aBlock;
  v66 = sub_27463B66C();
  sub_274412734(0, qword_28094AE40, 0x277D7C6D8);
  sub_27445B7F8();
  v67 = sub_27463BA3C();
  v68 = sub_274554818();
  sub_274557144(v66, v67, v141, v68, v44);

  [v44 setVariableProvider_];
  v120 = v65;
  [v44 setVariableUIDelegate_];
  [v44 setAuxiliaryViewPresenter_];
  swift_unknownObjectRelease();
  v69 = v3 + v147[21];
  v70 = *v69;
  if (*(v69 + 8) != 1)
  {

    sub_27463BC0C();
    v71 = sub_27463A2FC();
    sub_274638CEC();

    sub_274639AAC();
    swift_getAtKeyPath();
    sub_2743F45E8(v70, 0);
    (v146)[1](v39, v62);
    LOBYTE(v70) = aBlock;
  }

  v72 = v144;
  [v44 setProcessing_];
  v73 = v140;
  sub_274557020(v3, v140);
  v74 = (*(v126 + 80) + 16) & ~*(v126 + 80);
  v75 = swift_allocObject();
  sub_274557234(v73, v75 + v74);
  v152 = sub_274557298;
  v153 = v75;
  aBlock = MEMORY[0x277D85DD0];
  v149 = 1107296256;
  v150 = sub_274550294;
  v151 = &block_descriptor_28;
  v76 = _Block_copy(&aBlock);

  [v44 setUpdateBlock_];
  _Block_release(v76);
  [v44 setTemplateView_];
  v77 = v3 + v147[24];
  v78 = *v77;
  if (*(v77 + 8) == 1)
  {
    v79 = v146;
  }

  else
  {

    sub_27463BC0C();
    v80 = sub_27463A2FC();
    sub_274638CEC();

    v72 = v144;
    sub_274639AAC();
    swift_getAtKeyPath();
    sub_2743F45E8(v78, 0);
    v79 = v146;
    (v146)[1](v39, v62);
    LOBYTE(v78) = aBlock;
  }

  [v44 setAllowsPickingVariables_];
  v81 = objc_opt_self();
  v82 = [v81 preferredFontForTextStyle_];
  [v82 pointSize];
  v84 = v83;

  v85 = [v81 systemFontOfSize:v84 weight:*MEMORY[0x277D74410]];
  v86 = [v81 systemFontOfSize_];
  v147 = v85;
  [v72 setFont_];
  v146 = v86;
  [v72 setUnpopulatedFont_];
  [v72 setDisabledSlotTitleColor:v136 backgroundColor:v142 animated:0];
  sub_27463A1CC();
  sub_2746398FC();
  (v79)[1](v39, v62);
  [v72 setTextAlignment_];
  [v72 setHorizontalPadding_];
  sub_274412734(0, &qword_280951020, 0x277D7D7A8);
  v87 = sub_27463B7FC();
  [v72 setExclusionRects_];

  if (*(v3 + 144))
  {
    [v72 setTextColor_];
  }

  else
  {
    v88 = [objc_opt_self() wf_labelColor];
    [v72 setTextColor_];
  }

  v89 = *(v3 + 104);
  if (v89)
  {
    v90 = *(v3 + 112);
    v91 = *(v3 + 96);

    [v72 setShowsDisclosureArrow_];
    aBlock = v91;
    v149 = v89;
    LOBYTE(v150) = v90 & 1;
    v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280950E20, &qword_27464D880);
    MEMORY[0x277C575F0](&v156, v92);
    [v72 setDisclosureArrowIsOpen_];
  }

  else
  {
    [v72 setShowsDisclosureArrow_];
    [v72 setDisclosureArrowIsOpen_];
  }

  v93 = v131;
  v94 = v130;
  v95 = v132;
  (*(v131 + 104))(v130, *MEMORY[0x277D79BE8], v132);
  v96 = sub_274638C0C();
  (*(v93 + 8))(v94, v95);
  if ((v96 & 1) != 0 && (v97 = *(v3 + 128)) != 0)
  {
    v98 = *(v3 + 136);
    v99 = *(v3 + 120);

    [v72 setShowsOutputButton_];
    aBlock = v99;
    v149 = v97;
    LOBYTE(v150) = v98 & 1;
    v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280950E20, &qword_27464D880);
    MEMORY[0x277C575F0](&v156, v100);
    [v72 setOutputButtonIsOpen_];
  }

  else
  {
    [v72 setShowsOutputButton_];
    [v72 setOutputButtonIsOpen_];
  }

  if ((v128 & 1) != 0 || ([v44 currentEditorIsEditing] & 1) == 0)
  {

    v103 = v134;
    v104 = v133;
    goto LABEL_53;
  }

  v101 = *(v3 + 208);
  if (v101)
  {
    v102 = v101;

    swift_getKeyPath();
    swift_getKeyPath();
    sub_274638FAC();

    v103 = v134;
    v104 = v133;
    if (v154 == 2 && !(v149 | aBlock | v150 | v151 | v152 | v153))
    {
      [v44 cancelEditingWithCompletionHandler_];
    }

    else
    {
      sub_27443C9D4(aBlock, v149, v150, v151, v152, v153, v154);
    }

LABEL_53:
    v105 = v135;
    v106 = v143;
    if (v137)
    {

      sub_27463877C();
    }

    sub_274638BAC();
    v107 = sub_274638BCC();
    v109 = v108;
    sub_274638BDC();
    v110 = sub_274638D2C();
    sub_274638D5C();
    v111 = sub_27463BD3C();
    if ((sub_27463C08C() & 1) == 0)
    {
      goto LABEL_67;
    }

    if (v109)
    {
      if (!HIDWORD(v107))
      {
        if ((v107 & 0xFFFFF800) == 0xD800)
        {
LABEL_72:
          __break(1u);
          goto LABEL_73;
        }

        v112 = v119;
        v113 = v118;
        if (v107 >> 16 <= 0x10)
        {
          v107 = &v155;
          goto LABEL_63;
        }

LABEL_71:
        __break(1u);
        goto LABEL_72;
      }
    }

    else
    {
      if (v107)
      {
        v112 = v119;
        v113 = v118;
LABEL_63:

        sub_274638D8C();

        if ((*(v113 + 88))(v103, v112) == *MEMORY[0x277D85B00])
        {
          v114 = "[Error] Interval already ended";
        }

        else
        {
          (*(v113 + 8))(v103, v112);
          v114 = "";
        }

        v115 = swift_slowAlloc();
        *v115 = 0;
        v116 = sub_274638D0C();
        _os_signpost_emit_with_name_impl(&dword_2743F0000, v110, v111, v116, v107, v114, v115, 2u);
        MEMORY[0x277C5A270](v115, -1, -1);
        v105 = v135;
        v106 = v143;
LABEL_67:

        v122(v104, v139);
        v121(v105, v138);
        return (*(v123 + 8))(v106, v124);
      }

      __break(1u);
    }

    __break(1u);
    goto LABEL_71;
  }

LABEL_73:
  type metadata accessor for WorkflowEditorOptions(0);
  sub_274556B78(&qword_28094A730, 255, type metadata accessor for WorkflowEditorOptions, &protocol conformance descriptor for WorkflowEditorOptions);
  result = sub_27463978C();
  __break(1u);
  return result;
}

void *sub_274554818()
{
  v1 = *(v0 + 24);
  if ((v1 & 0xC000000000000001) != 0)
  {

    sub_27463C23C();
    sub_274412734(0, qword_28094AE40, 0x277D7C6D8);
    sub_27445B7F8();
    sub_27463BA7C();
    v1 = v35;
    v2 = v36;
    v3 = v37;
    v4 = v38;
    v5 = v39;
  }

  else
  {
    v6 = -1 << *(v1 + 32);
    v2 = v1 + 56;
    v3 = ~v6;
    v7 = -v6;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v5 = v8 & *(v1 + 56);

    v4 = 0;
  }

  v9 = (v3 + 64) >> 6;
  v32 = MEMORY[0x277D84F98];
  while (1)
  {
    if (v1 < 0)
    {
      if (!sub_27463C2BC() || (sub_274412734(0, qword_28094AE40, 0x277D7C6D8), swift_dynamicCast(), (v12 = v34) == 0))
      {
LABEL_28:
        sub_274406A24(v1);
        return v32;
      }

      goto LABEL_17;
    }

    v10 = v4;
    v11 = v5;
    if (!v5)
    {
      break;
    }

LABEL_13:
    v5 = (v11 - 1) & v11;
    v12 = *(*(v1 + 48) + ((v4 << 9) | (8 * __clz(__rbit64(v11)))));
    if (!v12)
    {
      goto LABEL_28;
    }

LABEL_17:
    v13 = [v12 key];
    v14 = sub_27463B6AC();

    v34 = v14;
    v15 = sub_2746387FC();

    if (v15 && (swift_getObjectType(), v16 = sub_2746385AC(), , v16))
    {
      v17 = [v12 key];
      v18 = sub_27463B6AC();
      v20 = v19;

      swift_unknownObjectRetain();
      swift_isUniquelyReferenced_nonNull_native();
      v34 = v32;
      v31 = v18;
      v21 = sub_274534C48(v18, v20);
      v33 = v22;
      if (__OFADD__(v34[2], (v22 & 1) == 0))
      {
        goto LABEL_30;
      }

      v23 = v21;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094BD58, &unk_27464C260);
      if (sub_27463C4CC())
      {
        v24 = sub_274534C48(v31, v20);
        if ((v33 & 1) != (v25 & 1))
        {
          goto LABEL_32;
        }

        v23 = v24;
        if (v33)
        {
          goto LABEL_27;
        }

LABEL_24:
        v34[(v23 >> 6) + 8] |= 1 << v23;
        v26 = (v34[6] + 16 * v23);
        *v26 = v31;
        v26[1] = v20;
        *(v34[7] + 8 * v23) = v16;
        swift_unknownObjectRelease();

        v27 = v34[2];
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          goto LABEL_31;
        }

        v32 = v34;
        v34[2] = v29;
      }

      else
      {
        if ((v33 & 1) == 0)
        {
          goto LABEL_24;
        }

LABEL_27:

        v32 = v34;
        *(v34[7] + 8 * v23) = v16;
        swift_unknownObjectRelease();

        swift_unknownObjectRelease();
      }
    }

    else
    {
    }
  }

  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v9)
    {
      goto LABEL_28;
    }

    v11 = *(v2 + 8 * v4);
    ++v10;
    if (v11)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  result = sub_27463C71C();
  __break(1u);
  return result;
}

uint64_t sub_274554C00(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = sub_274638DAC();
  v36 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_274639ABC();
  v35 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37[0] = a1;
  v37[1] = a2;

  v13 = sub_2746387FC();

  if (v13)
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    sub_2746385BC();
  }

  v31 = v12;
  v32 = v10;
  v15 = v9;
  v33 = v7;
  v34 = a1;
  if (*(v3 + 56))
  {
    objc_opt_self();
    v16 = swift_dynamicCastObjCClass();
    if (v16)
    {
      v17 = v16;
      swift_unknownObjectRetain();
      v18 = sub_27463B66C();
      v19 = [v17 parameterForKey_];

      if (v19)
      {
        v20 = v4 + *(type metadata accessor for SummaryHostingView(0) + 100);
        v21 = *v20;
        if (*(v20 + 8))
        {
          swift_unknownObjectRetain();
          v22 = v19;
          sub_27455732C(v21, 1);
        }

        else
        {
          swift_unknownObjectRetain();
          v28 = v19;
          sub_27455732C(v21, 0);
          sub_27463BC0C();
          v29 = sub_27463A2FC();
          sub_274638CEC();

          v30 = v31;
          sub_274639AAC();
          swift_getAtKeyPath();
          sub_27447FCE8(v21, 0);
          (*(v35 + 8))(v30, v32);
        }

        type metadata accessor for ParameterStateStore();
        ParameterStateStore.__allocating_init(action:parameter:undoManager:)();
        swift_getObjectType();
        swift_unknownObjectRetain();
        sub_2746385BC();
        swift_unknownObjectRelease();
      }

      swift_unknownObjectRelease();
    }
  }

  v23 = v15;
  sub_274638C2C();

  v24 = sub_274638D9C();
  v25 = sub_27463BBFC();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v37[0] = v27;
    *v26 = 136315138;
    *(v26 + 4) = sub_2745E7980(v34, a2, v37);
    _os_log_impl(&dword_2743F0000, v24, v25, "Unable to update parameter state for key: %s, since action or parameter is missing", v26, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v27);
    MEMORY[0x277C5A270](v27, -1, -1);
    MEMORY[0x277C5A270](v26, -1, -1);
  }

  return (*(v36 + 8))(v23, v33);
}

uint64_t sub_274555044(uint64_t a1, uint64_t a2)
{
  v68 = a2;
  v57 = sub_274638D4C();
  v62 = *(v57 - 8);
  MEMORY[0x28223BE20](v57);
  v61 = &v56 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_274639ABC();
  v59 = *(v3 - 8);
  v60 = v3;
  MEMORY[0x28223BE20](v3);
  v58 = &v56 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = sub_274638D1C();
  v5 = *(v72 - 8);
  MEMORY[0x28223BE20](v72);
  v70 = &v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v56 - v8;
  MEMORY[0x28223BE20](v10);
  v12 = &v56 - v11;
  v73 = sub_274638D3C();
  v13 = *(v73 - 8);
  MEMORY[0x28223BE20](v73);
  v15 = &v56 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v56 - v17;
  MEMORY[0x28223BE20](v19);
  v21 = &v56 - v20;
  v22 = sub_274638BEC();
  v65 = *(v22 - 8);
  v66 = v22;
  MEMORY[0x28223BE20](v22);
  v71 = &v56 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_274638BBC();
  sub_274638D2C();
  sub_274638CFC();
  v24 = sub_274638D2C();
  v25 = sub_27463BD4C();
  if (sub_27463C08C())
  {
    v26 = swift_slowAlloc();
    v67 = v15;
    v27 = v13;
    v28 = v5;
    v29 = v26;
    *v26 = 0;
    v30 = sub_274638D0C();
    _os_signpost_emit_with_name_impl(&dword_2743F0000, v24, v25, v30, "SummaryViewReset", "Resetting summary view", v29, 2u);
    v31 = v29;
    v5 = v28;
    v13 = v27;
    v15 = v67;
    MEMORY[0x277C5A270](v31, -1, -1);
  }

  v32 = v72;
  (*(v5 + 16))(v9, v12, v72);
  sub_274638D7C();
  swift_allocObject();
  sub_274638D6C();
  v33 = v73;
  (*(v13 + 16))(v18, v21, v73);
  v34 = v71;
  sub_274638BFC();
  v35 = *(v5 + 8);
  v67 = (v5 + 8);
  v64 = v35;
  v35(v12, v32);
  v37 = *(v13 + 8);
  v36 = (v13 + 8);
  v63 = v37;
  v37(v21, v33);
  v38 = v68 + OBJC_IVAR____TtCV14WorkflowEditorP33_060892FA80DB790CDB013ACF6F2F770418SummaryHostingView11Coordinator_view;
  swift_beginAccess();
  v39 = v38 + *(type metadata accessor for SummaryHostingView(0) + 92);
  v40 = *v39;
  LOBYTE(v38) = *(v39 + 8);

  if ((v38 & 1) == 0)
  {
    sub_27463BC0C();
    v41 = sub_27463A2FC();
    sub_274638CEC();

    v42 = v58;
    sub_274639AAC();
    swift_getAtKeyPath();
    j_j__swift_release(v40);
    (*(v59 + 8))(v42, v60);
    v40 = v75;
  }

  v43 = v70;
  v70 = v36;
  if (v40)
  {
    sub_27463874C();
  }

  [*v69 setTemplateView_];
  sub_2745503B0();
  sub_274638BAC();
  v44 = sub_274638BCC();
  v46 = v45;
  sub_274638BDC();
  v47 = sub_274638D2C();
  sub_274638D5C();
  v48 = sub_27463BD3C();
  result = sub_27463C08C();
  if ((result & 1) == 0)
  {
    goto LABEL_19;
  }

  if ((v46 & 1) == 0)
  {
    v51 = v61;
    v50 = v62;
    if (v44)
    {
      v52 = v57;
LABEL_15:

      sub_274638D8C();

      if ((*(v50 + 88))(v51, v52) == *MEMORY[0x277D85B00])
      {
        v53 = "[Error] Interval already ended";
      }

      else
      {
        (*(v50 + 8))(v51, v52);
        v53 = "";
      }

      v54 = swift_slowAlloc();
      *v54 = 0;
      v55 = sub_274638D0C();
      _os_signpost_emit_with_name_impl(&dword_2743F0000, v47, v48, v55, v44, v53, v54, 2u);
      MEMORY[0x277C5A270](v54, -1, -1);
      v34 = v71;
      v32 = v72;
LABEL_19:

      v64(v43, v32);
      v63(v15, v73);
      return (*(v65 + 8))(v34, v66);
    }

    __break(1u);
    goto LABEL_21;
  }

  v51 = v61;
  v50 = v62;
  if (HIDWORD(v44))
  {
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if ((v44 & 0xFFFFF800) != 0xD800)
  {
    v52 = v57;
    if (v44 >> 16 <= 0x10)
    {
      v44 = &v74;
      goto LABEL_15;
    }

    goto LABEL_22;
  }

LABEL_23:
  __break(1u);
  return result;
}

uint64_t sub_2745557F8(uint64_t a1, uint64_t a2)
{
  v60 = sub_274638D4C();
  v62 = *(v60 - 8);
  MEMORY[0x28223BE20](v60);
  v61 = v58 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_274638D1C();
  v71 = *(v4 - 8);
  v72 = v4;
  MEMORY[0x28223BE20](v4);
  v70 = v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v68 = v58 - v7;
  MEMORY[0x28223BE20](v8);
  v10 = v58 - v9;
  v69 = sub_274638D3C();
  v11 = *(v69 - 8);
  MEMORY[0x28223BE20](v69);
  v13 = v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v66 = v58 - v15;
  MEMORY[0x28223BE20](v16);
  v67 = v58 - v17;
  v18 = sub_274638BEC();
  v63 = *(v18 - 8);
  v64 = v18;
  MEMORY[0x28223BE20](v18);
  v20 = v58 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_274639ABC();
  v22 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v24 = v58 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = (a2 + OBJC_IVAR____TtCV14WorkflowEditorP33_060892FA80DB790CDB013ACF6F2F770418SummaryHostingView11Coordinator_view);
  swift_beginAccess();
  v26 = v25 + *(type metadata accessor for SummaryHostingView(0) + 92);
  v27 = *v26;
  v28 = v26[8];

  v65 = v13;
  if ((v28 & 1) == 0)
  {
    sub_27463BC0C();
    v59 = v21;
    v29 = sub_27463A2FC();
    sub_274638CEC();

    sub_274639AAC();
    swift_getAtKeyPath();
    j_j__swift_release(v27);
    (*(v22 + 8))(v24, v59);
    v27 = v74;
  }

  v31 = v71;
  v30 = v72;
  v32 = v67;
  if (v27)
  {
    sub_27463874C();
  }

  [*v25 setTemplateView_];
  v33 = *v25;
  sub_2745503B0();

  sub_274638BBC();
  sub_274638D2C();
  sub_274638CFC();
  v34 = sub_274638D2C();
  v35 = sub_27463BD4C();
  if (sub_27463C08C())
  {
    v36 = swift_slowAlloc();
    *v36 = 0;
    v37 = sub_274638D0C();
    _os_signpost_emit_with_name_impl(&dword_2743F0000, v34, v35, v37, "SummaryViewDismantle", "Dismantling summary view", v36, 2u);
    v38 = v36;
    v30 = v72;
    MEMORY[0x277C5A270](v38, -1, -1);
  }

  (*(v31 + 16))(v68, v10, v30);
  sub_274638D7C();
  swift_allocObject();
  sub_274638D6C();
  v39 = v69;
  (*(v11 + 16))(v66, v32, v69);
  sub_274638BFC();
  v68 = *(v31 + 8);
  (v68)(v10, v30);
  v40 = *(v11 + 8);
  v40(v32, v39);
  v41 = v65;
  sub_274638BAC();
  v67 = sub_274638BCC();
  LODWORD(v66) = v42;
  v43 = v31 + 8;
  sub_274638BDC();
  v44 = sub_274638D2C();
  v45 = v20;
  v46 = v11 + 8;
  v47 = v39;
  v48 = v70;
  sub_274638D5C();
  LODWORD(v59) = sub_27463BD3C();
  result = sub_27463C08C();
  v50 = v72;
  if ((result & 1) == 0)
  {
    goto LABEL_19;
  }

  v58[0] = v40;
  v58[1] = v46;
  v71 = v43;
  if ((v66 & 1) == 0)
  {
    v52 = v61;
    v51 = v62;
    v53 = v67;
    if (v67)
    {
      v54 = v60;
LABEL_15:

      sub_274638D8C();

      if ((*(v51 + 88))(v52, v54) == *MEMORY[0x277D85B00])
      {
        v55 = "[Error] Interval already ended";
      }

      else
      {
        (*(v51 + 8))(v52, v54);
        v55 = "";
      }

      v56 = swift_slowAlloc();
      *v56 = 0;
      v48 = v70;
      v57 = sub_274638D0C();
      _os_signpost_emit_with_name_impl(&dword_2743F0000, v44, v59, v57, v53, v55, v56, 2u);
      MEMORY[0x277C5A270](v56, -1, -1);
      v50 = v72;
      v40 = v58[0];
LABEL_19:

      (v68)(v48, v50);
      v40(v41, v47);
      return (*(v63 + 8))(v45, v64);
    }

    __break(1u);
    goto LABEL_21;
  }

  v52 = v61;
  v51 = v62;
  if (HIDWORD(v67))
  {
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if ((v67 & 0xFFFFF800) != 0xD800)
  {
    v54 = v60;
    if (v67 >> 16 <= 0x10)
    {
      v53 = &v73;
      goto LABEL_15;
    }

    goto LABEL_22;
  }

LABEL_23:
  __break(1u);
  return result;
}

uint64_t sub_274555FE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, BOOL *a3@<X8>)
{
  v21 = a2;
  v5 = sub_274639ABC();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094D140, &qword_27464E160);
  MEMORY[0x28223BE20](v9);
  v11 = &v20 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094D7C0, &unk_274651B60);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v20 - v13;
  v15 = type metadata accessor for SummaryHostingView(0);
  sub_2745573B8(a1 + *(v15 + 80), v11);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_274557428(v11, v14, &unk_28094D7C0, &unk_274651B60);
  }

  else
  {
    sub_27463BC0C();
    v16 = sub_27463A2FC();
    sub_274638CEC();

    sub_274639AAC();
    swift_getAtKeyPath();

    (*(v6 + 8))(v8, v5);
  }

  v17 = sub_27463969C();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v14, 1, v17);
  if (EnumTagSinglePayload == 1)
  {
    result = sub_27440CB1C(v14, &unk_28094D7C0, &unk_274651B60);
  }

  else
  {
    v22 = v21;
    sub_27463B1BC();
    sub_27463968C();
    result = (*(*(v17 - 8) + 8))(v14, v17);
  }

  *a3 = EnumTagSinglePayload == 1;
  return result;
}

uint64_t sub_2745562CC(uint64_t a1)
{
  v4.receiver = v1;
  v4.super_class = type metadata accessor for SummaryViewHost();
  objc_msgSendSuper2(&v4, sel_willMoveToWindow_, a1);
  return sub_27455638C(a1 != 0);
}

uint64_t sub_27455638C(uint64_t result)
{
  v2 = *(v1 + OBJC_IVAR____TtC14WorkflowEditorP33_060892FA80DB790CDB013ACF6F2F770415SummaryViewHost_statistics);
  if (result)
  {
    if (!v2)
    {
      return result;
    }

    sub_27463874C();
  }

  else
  {
    if (!v2)
    {
      return result;
    }

    sub_27463878C();
  }
}

id sub_27455645C()
{
  if (*&v0[OBJC_IVAR____TtC14WorkflowEditorP33_060892FA80DB790CDB013ACF6F2F770415SummaryViewHost_statistics])
  {

    sub_27463874C();
  }

  v2.receiver = v0;
  v2.super_class = type metadata accessor for SummaryViewHost();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_274556528(uint64_t a1)
{
  *&v1[OBJC_IVAR____TtC14WorkflowEditorP33_060892FA80DB790CDB013ACF6F2F770415SummaryViewHost_statistics] = 0;
  v4.receiver = v1;
  v4.super_class = type metadata accessor for SummaryViewHost();
  return objc_msgSendSuper2(&v4, sel_initWithUseCase_, a1);
}

uint64_t sub_2745565F0(uint64_t a1)
{
  v1 = sub_274412734(319, &qword_280950FD0, off_279ED92B8);
  if (v2 <= 0x3F)
  {
    sub_2745569F8(319);
    v1 = v3;
    if (v4 <= 0x3F)
    {
      sub_274556A6C(319);
      v1 = v5;
      if (v6 <= 0x3F)
      {
        sub_274556BC0(319, &qword_280950FF8, &qword_280951000, &unk_2746594B8, MEMORY[0x277D83D88]);
        v1 = v7;
        if (v8 <= 0x3F)
        {
          sub_274556BC0(319, &qword_280951008, &qword_280951010, &qword_2746594C8, MEMORY[0x277D83D88]);
          v1 = v9;
          if (v10 <= 0x3F)
          {
            sub_274556B10(319, &qword_280951018, &qword_280951020, 0x277D7D7A8, MEMORY[0x277D83940]);
            v1 = v11;
            if (v12 <= 0x3F)
            {
              sub_274556BC0(319, &unk_28094C490, &qword_280950E20, &qword_27464D880, MEMORY[0x277D83D88]);
              v1 = v13;
              if (v14 <= 0x3F)
              {
                sub_274556B10(319, &unk_280951028, qword_28094A770, 0x277D75348, MEMORY[0x277D83D88]);
                v1 = v15;
                if (v16 <= 0x3F)
                {
                  sub_274556BC0(319, &qword_280951038, &unk_280951040, &qword_2746594F0, MEMORY[0x277CE11F8]);
                  v1 = v17;
                  if (v18 <= 0x3F)
                  {
                    sub_274481024(319);
                    v1 = v19;
                    if (v20 <= 0x3F)
                    {
                      sub_274556BC0(319, &qword_280950D10, &unk_28094D7C0, &unk_274651B60, MEMORY[0x277CDF468]);
                      v1 = v21;
                      if (v22 <= 0x3F)
                      {
                        sub_27453EAA0();
                        v1 = v23;
                        if (v24 <= 0x3F)
                        {
                          sub_274556BC0(319, &qword_28094DCB0, &qword_28094DCB8, &unk_2746514F0, MEMORY[0x277CDF468]);
                          if (v26 > 0x3F)
                          {
                            return v25;
                          }

                          else
                          {
                            sub_274556BC0(319, &qword_28094C4C0, &qword_28094C4C8, &qword_27464D888, MEMORY[0x277CDF468]);
                            v1 = v27;
                            if (v28 <= 0x3F)
                            {
                              sub_274556BC0(319, &unk_280951050, &qword_28094E090, &qword_274651B80, MEMORY[0x277CDF468]);
                              v1 = v29;
                              if (v30 <= 0x3F)
                              {
                                swift_cvw_initStructMetadataWithLayoutString();
                                return 0;
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
        }
      }
    }
  }

  return v1;
}

void sub_2745569F8(uint64_t a1)
{
  if (!qword_280950FD8)
  {
    sub_274412734(255, qword_28094AE40, 0x277D7C6D8);
    sub_27445B7F8();
    v1 = sub_27463BA9C();
    if (!v2)
    {
      atomic_store(v1, &qword_280950FD8);
    }
  }
}

void sub_274556A6C(uint64_t a1)
{
  if (!qword_280950FE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_2809521A0, &unk_27465ACC0);
    sub_27440CA78(&qword_280950FF0, &unk_2809521A0, &unk_27465ACC0, MEMORY[0x277D7D3A0]);
    v1 = sub_27463953C();
    if (!v2)
    {
      atomic_store(v1, &qword_280950FE0);
    }
  }
}

void sub_274556B10(uint64_t a1, unint64_t *a2, unint64_t *a3, void *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_274412734(255, a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_274556B78(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

void sub_274556BC0(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t get_enum_tag_for_layout_string_7SwiftUI7BindingVySbGSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_274556C48(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 241))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
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

uint64_t sub_274556C88(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 232) = 0;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 240) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 241) = 1;
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

    *(result + 241) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

double *sub_274556D24(double *result, int a2, id a3)
{
  v3 = result;
  v4 = 0;
  if (*result != 0.0)
  {
    result = [a3 heightForWidth_];
    v4 = v5;
  }

  *(v3 + 1) = v4;
  return result;
}

id sub_274556D88@<X0>(void *a1@<X8>)
{
  result = sub_274552990();
  *a1 = result;
  return result;
}

uint64_t sub_274556DB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_274556B78(&qword_2809510A0, 255, type metadata accessor for SummaryHostingView, &unk_2746597C0);

  return MEMORY[0x28212E3C8](a1, a2, a3, v6);
}

uint64_t sub_274556E4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_274556B78(&qword_2809510A0, 255, type metadata accessor for SummaryHostingView, &unk_2746597C0);

  return MEMORY[0x28212E358](a1, a2, a3, v6);
}

void sub_274556EE4(uint64_t a1)
{
  sub_274556B78(&qword_2809510A0, 255, type metadata accessor for SummaryHostingView, &unk_2746597C0);
  sub_274639D9C();
  __break(1u);
}

uint64_t sub_274557020(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SummaryHostingView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_274557084(uint64_t a1)
{
  v2 = type metadata accessor for SummaryHostingView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2745570E0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SummaryHostingView(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_274557144(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  sub_274412734(0, qword_28094AE40, 0x277D7C6D8);
  sub_27445B7F8();
  v8 = sub_27463BA3C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094BD50, &qword_2746475D0);
  v9 = sub_27463B4BC();

  [a5 setSummaryFormatString:a1 withParameters:a2 editableParameters:v8 parameterStates:v9];
}

uint64_t sub_274557234(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SummaryHostingView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

double block_copy_helper_28(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

double sub_27455732C(id a1, char a2)
{
  if (a2)
  {
    v2 = a1;
  }

  else
  {
  }

  return result;
}

uint64_t objectdestroy_57Tm()
{

  return swift_deallocObject();
}

uint64_t sub_2745573B8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094D140, &qword_27464E160);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_274557428(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_7();
  (*(v6 + 32))(a2, a1);
  return a2;
}

unint64_t sub_2745574D8()
{
  result = qword_280951110;
  if (!qword_280951110)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280951090, &qword_274659A30);
    sub_274557590();
    sub_27440CA78(&qword_280951130, &qword_280951138, &qword_274659AC8, MEMORY[0x277CE0800]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280951110);
  }

  return result;
}

unint64_t sub_274557590()
{
  result = qword_280951118;
  if (!qword_280951118)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280951070, &unk_2746598E0);
    sub_27455761C();
    sub_27454E350();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280951118);
  }

  return result;
}

unint64_t sub_27455761C()
{
  result = qword_280951120;
  if (!qword_280951120)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280951068, &qword_2746598D8);
    sub_274556B78(&qword_280951060, 255, type metadata accessor for SummaryHostingView, &unk_274659770);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280951120);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_4_27(uint64_t result)
{
  *v1 = result;
  *(v1 + 8) = 0;
  return result;
}

void WFActionDetailsViewController.__allocating_init(action:showCloseButton:appendActionHandler:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = a2;
  v9 = objc_allocWithZone(v4);
  WFActionDetailsViewController.init(action:showCloseButton:appendActionHandler:)(a1, v7, a3, a4);
}

CGSize __swiftcall WFActionDetailsViewController.contentSizeThatFits(_:)(CGSize a1)
{
  sub_274559F74();
  v2 = [v1 traitCollection];
  [v2 displayScale];

  BSFloatRoundForScale();
  v3 = *&v1[OBJC_IVAR____TtC14WorkflowEditor29WFActionDetailsViewController_descriptionTextView];
  CGSizeMake();
  [v3 sizeThatFits_];
  sub_274557AD4();

  CGSizeMake();
  result.height = v5;
  result.width = v4;
  return result;
}

id sub_274557868(uint64_t a1, uint64_t a2)
{
  v2 = sub_27463B66C();

  v3 = [swift_getObjCClassFromMetadata() systemImageNamed_];

  return v3;
}

uint64_t sub_2745578CC@<X0>(uint64_t (**a1)()@<X8>)
{
  result = sub_2745579CC();
  if (result)
  {
    v4 = result;
    v5 = v3;
    result = swift_allocObject();
    *(result + 16) = v4;
    *(result + 24) = v5;
    v6 = sub_27440CBD0;
  }

  else
  {
    v6 = 0;
  }

  *a1 = v6;
  a1[1] = result;
  return result;
}

uint64_t sub_27455793C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (*a1)
  {
    v3 = swift_allocObject();
    *(v3 + 16) = v1;
    *(v3 + 24) = v2;
    v4 = sub_27440CB74;
  }

  else
  {
    v4 = 0;
    v3 = 0;
  }

  sub_2744069F0(v1, v2);
  return sub_274557A24(v4, v3);
}

uint64_t sub_2745579CC()
{
  v1 = (v0 + OBJC_IVAR____TtC14WorkflowEditor29WFActionDetailsViewController_dismissalHandler);
  OUTLINED_FUNCTION_16_12();
  swift_beginAccess();
  v2 = *v1;
  sub_2744069F0(*v1, v1[1]);
  return v2;
}

uint64_t sub_274557A24(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC14WorkflowEditor29WFActionDetailsViewController_dismissalHandler);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  return sub_274406A94(v6, v7);
}

void sub_274557AD4()
{
  if ((_UISolariumEnabled() & 1) == 0)
  {
    v0 = [objc_opt_self() sharedContext];
    v1 = [v0 keyWindow];

    if (v1)
    {
      [v1 safeAreaInsets];

      v2 = [MEMORY[0x277D75418] currentDevice];
      [v2 userInterfaceIdiom];
    }
  }
}

double sub_274557BA0()
{
  v1 = OBJC_IVAR____TtC14WorkflowEditor29WFActionDetailsViewController_popoverArrowRegionInset;
  OUTLINED_FUNCTION_16_12();
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_274557BE0(double a1)
{
  v3 = OBJC_IVAR____TtC14WorkflowEditor29WFActionDetailsViewController_popoverArrowRegionInset;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

void WFActionDetailsViewController.init(action:showCloseButton:appendActionHandler:)(void *a1, int a2, uint64_t a3, uint64_t a4)
{
  v253 = a4;
  *&v250 = a3;
  LODWORD(v255) = a2;
  v6 = sub_2746381FC();
  OUTLINED_FUNCTION_4_0();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  v246 = v10;
  v257 = &v246 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR____TtC14WorkflowEditor29WFActionDetailsViewController_iconView;
  *(v4 + v11) = [objc_allocWithZone(MEMORY[0x277D7D520]) initWithIcon:0 size:{27.0, 27.0}];
  v12 = OBJC_IVAR____TtC14WorkflowEditor29WFActionDetailsViewController_titleLabel;
  *(v4 + v12) = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v13 = OBJC_IVAR____TtC14WorkflowEditor29WFActionDetailsViewController_descriptionTextView;
  *(v4 + v13) = [objc_allocWithZone(MEMORY[0x277D75C40]) init];
  *(v4 + OBJC_IVAR____TtC14WorkflowEditor29WFActionDetailsViewController_closeButton) = 0;
  v14 = OBJC_IVAR____TtC14WorkflowEditor29WFActionDetailsViewController_topSeparator;
  *(v4 + v14) = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  v15 = OBJC_IVAR____TtC14WorkflowEditor29WFActionDetailsViewController_bottomSeparator;
  *(v4 + v15) = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  v16 = OBJC_IVAR____TtC14WorkflowEditor29WFActionDetailsViewController_addButton;
  *(v4 + v16) = [objc_allocWithZone(MEMORY[0x277D75220]) init];
  v17 = OBJC_IVAR____TtC14WorkflowEditor29WFActionDetailsViewController_pinButton;
  *(v4 + v17) = [objc_allocWithZone(MEMORY[0x277D75220]) init];
  v18 = (v4 + OBJC_IVAR____TtC14WorkflowEditor29WFActionDetailsViewController_dismissalHandler);
  *v18 = 0;
  v18[1] = 0;
  *(v4 + OBJC_IVAR____TtC14WorkflowEditor29WFActionDetailsViewController_titleLabelTopPadding) = 0x4038000000000000;
  *(v4 + OBJC_IVAR____TtC14WorkflowEditor29WFActionDetailsViewController_titleLabelConstrainedTopPadding) = 0x4030000000000000;
  *(v4 + OBJC_IVAR____TtC14WorkflowEditor29WFActionDetailsViewController_titleLabelHorizontalPadding) = 0x404E000000000000;
  *(v4 + OBJC_IVAR____TtC14WorkflowEditor29WFActionDetailsViewController_titleDescriptionSpacing) = 0x4032000000000000;
  *(v4 + OBJC_IVAR____TtC14WorkflowEditor29WFActionDetailsViewController_popoverArrowRegionInset) = 0;
  v19 = v8 + 16;
  v20 = *(v8 + 16);
  v254 = a1;
  v20(v4 + OBJC_IVAR____TtC14WorkflowEditor29WFActionDetailsViewController_action, a1, v6);
  v21 = type metadata accessor for WFActionDetailsViewController(0);
  v260 = v4;
  v261 = v21;
  v251 = v21;
  OUTLINED_FUNCTION_16_12();
  v24 = objc_msgSendSuper2(v22, v23);
  v25 = OBJC_IVAR____TtC14WorkflowEditor29WFActionDetailsViewController_iconView;
  v26 = *&v24[OBJC_IVAR____TtC14WorkflowEditor29WFActionDetailsViewController_iconView];
  v27 = OBJC_IVAR____TtC14WorkflowEditor29WFActionDetailsViewController_action;
  v28 = v257;
  v256 = v20;
  v20(v257, &v24[OBJC_IVAR____TtC14WorkflowEditor29WFActionDetailsViewController_action], v6);
  v29 = v24;
  v30 = v26;
  v31 = v28;
  v32 = sub_2746381DC();
  v247 = v8;
  v34 = *(v8 + 8);
  v33 = v8 + 8;
  v35 = v31;
  v36 = v34;
  v34(v35, v6);
  [v30 setIcon_];

  v37 = [v29 view];
  if (!v37)
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  v38 = v37;
  [v37 addSubview_];

  v39 = OBJC_IVAR____TtC14WorkflowEditor29WFActionDetailsViewController_titleLabel;
  v40 = *&v29[OBJC_IVAR____TtC14WorkflowEditor29WFActionDetailsViewController_titleLabel];
  v41 = objc_opt_self();
  v42 = v40;
  v258 = v41;
  v43 = [v41 clearColor];
  [v42 setBackgroundColor_];

  v44 = *&v29[v39];
  v45 = &v24[v27];
  v46 = v257;
  (v256)(v257, v45, v6);
  v47 = v44;
  v48 = sub_2746381EC();
  v50 = v49;
  v252 = v6;
  v36(v46, v6);
  sub_27455AA28(v48, v50, v47);

  [*&v29[v39] setNumberOfLines_];
  v51 = [v29 view];

  if (!v51)
  {
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  v52 = v33;
  v53 = v36;
  v54 = v46;
  [v51 addSubview_];

  if (v255)
  {
    v55 = [objc_opt_self() buttonWithType_];
    sub_274412734(0, &unk_280951140, 0x277D750C8);
    OUTLINED_FUNCTION_5();
    swift_allocObject();
    v56 = swift_unknownObjectWeakInit();
    v64 = OUTLINED_FUNCTION_0_38(v56, v57, v58, v59, v60, v61, v62, v63, 0, 0);
    v65 = OUTLINED_FUNCTION_4_28();
    [v65 v66];

    v67 = [v29 view];
    if (!v67)
    {
LABEL_53:
      __break(1u);
      goto LABEL_54;
    }

    v68 = v67;
    [v67 addSubview_];

    v69 = *&v29[OBJC_IVAR____TtC14WorkflowEditor29WFActionDetailsViewController_closeButton];
    *&v29[OBJC_IVAR____TtC14WorkflowEditor29WFActionDetailsViewController_closeButton] = v55;

    v52 = v33;
  }

  v255 = v19;
  v248 = v53;
  v249 = v52;
  v70 = OBJC_IVAR____TtC14WorkflowEditor29WFActionDetailsViewController_descriptionTextView;
  v71 = *&v29[OBJC_IVAR____TtC14WorkflowEditor29WFActionDetailsViewController_descriptionTextView];
  v72 = DrawerAction.attributedDescription.getter();
  v73 = OUTLINED_FUNCTION_4_28();
  [v73 v74];

  [*&v29[v70] setScrollEnabled_];
  [*&v29[v70] setEditable_];
  [*&v29[v70] setSelectable_];
  v75 = *&v29[v70];
  v76 = OUTLINED_FUNCTION_22_8(v75, sel_clearColor);
  v77 = OUTLINED_FUNCTION_4_28();
  [v77 v78];

  [*&v29[v70] setTextContainerInset_];
  v79 = *&v29[v70];
  v80 = v29;
  [v79 setDelegate_];
  v81 = *&v29[v70];
  v259[3] = v251;
  v259[0] = v80;
  v82 = objc_allocWithZone(MEMORY[0x277D75B80]);
  v83 = v81;
  v84 = sub_27455A888(v259, sel_handleTapOnDescriptionTextView_);
  [v83 addGestureRecognizer_];

  v85 = [v80 view];
  if (!v85)
  {
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  v86 = v85;
  [v85 addSubview_];

  if ((sub_2746381AC() & 1) == 0)
  {
    goto LABEL_10;
  }

  v87 = OBJC_IVAR____TtC14WorkflowEditor29WFActionDetailsViewController_pinButton;
  v88 = *&v80[OBJC_IVAR____TtC14WorkflowEditor29WFActionDetailsViewController_pinButton];
  v89 = OUTLINED_FUNCTION_22_8(v88, sel_systemBlueColor);
  v90 = OUTLINED_FUNCTION_4_28();
  [v90 v91];

  v92 = *&v80[v87];
  v93 = objc_allocWithZone(MEMORY[0x277D75348]);
  v94 = v92;
  v95 = sub_27451A6B0(sub_274558F5C, 0);
  v96 = OUTLINED_FUNCTION_4_28();
  [v96 v97];

  v98 = [v80 view];
  if (v98)
  {
    v99 = v98;
    [v98 addSubview_];

    v100 = v80;
    v101 = v254;
    sub_274558FC8(v100);
    v102 = *&v80[v87];
    sub_274412734(0, &unk_280951140, 0x277D750C8);
    v103 = v252;
    (v256)(v54, v101, v252);
    v104 = v247;
    v105 = (*(v247 + 80) + 24) & ~*(v247 + 80);
    v106 = swift_allocObject();
    v107 = OUTLINED_FUNCTION_10_22(v106);
    (*(v104 + 32))(v107 + v105, v54, v103);
    v108 = v100;
    v109 = v102;
    OUTLINED_FUNCTION_0_38(v109, v110, v111, v112, v113, v114, v115, v116, 0, 0);
    OUTLINED_FUNCTION_12_14();
    [v109 addAction:v101 forControlEvents:64];

    v117 = *&v80[v87];
    OUTLINED_FUNCTION_5();
    v118 = swift_allocObject();
    OUTLINED_FUNCTION_10_22(v118);
    v119 = v117;
    OUTLINED_FUNCTION_0_38(v119, v120, v121, v122, v123, v124, v125, v126, 0, 0);
    OUTLINED_FUNCTION_12_14();
    [v119 addAction:v101 forControlEvents:17];

    v127 = *&v80[v87];
    OUTLINED_FUNCTION_5();
    v128 = swift_allocObject();
    OUTLINED_FUNCTION_10_22(v128);
    v129 = v108;
    v130 = v127;
    v138 = OUTLINED_FUNCTION_0_38(v130, v131, v132, v133, v134, v135, v136, v137, 0, 0);
    v139 = OUTLINED_FUNCTION_4_28();
    [v139 v140];

LABEL_10:
    v141 = OBJC_IVAR____TtC14WorkflowEditor29WFActionDetailsViewController_addButton;
    v142 = *&v80[OBJC_IVAR____TtC14WorkflowEditor29WFActionDetailsViewController_addButton];
    sub_27463B70C("Add", 3);
    if (qword_2809492C0 != -1)
    {
      goto LABEL_46;
    }

    while (1)
    {
      v143 = qword_28094BB00;
      v144 = sub_27463B66C();
      v145 = sub_27463B66C();

      v146 = [v143 localizedStringForKey:v144 value:v145 table:0];

      v147 = sub_27463B6AC();
      v149 = v148;

      sub_27455A9B4(v147, v149, 0, v142);
      v150 = *(v141 + v80);
      v151 = v258;
      v152 = [v258 whiteColor];
      v153 = OUTLINED_FUNCTION_4_28();
      [v153 v154];

      v155 = *(v141 + v80);
      v156 = [v151 whiteColor];
      v157 = OUTLINED_FUNCTION_4_28();
      [v157 v158];

      v159 = [v80 traitCollection];
      v160 = [v159 preferredContentSizeCategory];

      LOBYTE(v159) = sub_27463BDFC();
      v161 = MEMORY[0x277D76918];
      v162 = MEMORY[0x277D74420];
      if (v159)
      {
        v163 = *(v141 + v80);
        sub_274412734(0, &unk_280951150, 0x277D755B8);
        v164 = v163;
        v165 = sub_274557868(1937075312, 0xE400000000000000);
        if (v165)
        {
          v166 = v165;
          v167 = [objc_opt_self() _preferredFontForTextStyle_weight_];
          if (!v167)
          {
            goto LABEL_55;
          }

          v168 = v167;
          v169 = [objc_opt_self() configurationWithFont_];

          v170 = [v166 imageWithConfiguration_];
        }

        else
        {
          v170 = 0;
        }

        v171 = OUTLINED_FUNCTION_20_12();
        [v171 v172];
      }

      v173 = *(v141 + v80);
      v174 = OUTLINED_FUNCTION_22_8(v173, sel_systemBlueColor);
      v175 = OUTLINED_FUNCTION_4_28();
      [v175 v176];

      v177 = [v80 view];
      if (!v177)
      {
        goto LABEL_52;
      }

      [v177 addSubview_];

      v178 = *(v141 + v80);
      sub_274412734(0, &unk_280951140, 0x277D750C8);
      OUTLINED_FUNCTION_5();
      v179 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v180 = swift_allocObject();
      v181 = v250;
      v180[2] = v179;
      v180[3] = v181;
      v180[4] = v253;
      v182 = v178;

      OUTLINED_FUNCTION_0_38(v183, v184, v185, v186, v187, v188, v189, v190, 0, 0);
      OUTLINED_FUNCTION_12_14();
      v191 = OUTLINED_FUNCTION_20_12();
      [v191 v192];

      v251 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28094C820, &unk_27464AF60);
      inited = swift_initStackObject();
      v250 = xmmword_27464AEE0;
      *(inited + 16) = xmmword_27464AEE0;
      v194 = *(v141 + v80);
      *(inited + 32) = v194;
      v255 = inited + 32;
      v142 = *&v80[OBJC_IVAR____TtC14WorkflowEditor29WFActionDetailsViewController_pinButton];
      *(inited + 40) = v142;
      v256 = inited & 0xFFFFFFFFFFFFFF8;
      v257 = *v161;
      v195 = *v162;
      v196 = v194;
      v197 = v142;
      v198 = 0;
      v199 = 0;
      do
      {
        v200 = v198;
        if ((inited & 0xC000000000000001) != 0)
        {
          v201 = MEMORY[0x277C58B20](v199, inited);
        }

        else
        {
          if (v199 >= *(v256 + 16))
          {
            goto LABEL_45;
          }

          v201 = *(v255 + 8 * v199);
        }

        v202 = v201;
        if ((_UISolariumEnabled() & 1) == 0)
        {
          v203 = [v202 layer];
          [v203 setCornerRadius_];
        }

        [v202 setAdjustsImageWhenHighlighted_];
        v204 = [v202 titleLabel];
        if (v204)
        {
          v205 = v204;
          v206 = objc_allocWithZone(MEMORY[0x277D75520]);
          v207 = [v206 initForTextStyle_];
          v208 = [objc_opt_self() systemFontOfSize:17.0 weight:v195];
          v209 = [v207 scaledFontForFont:v208 maximumPointSize:35.0];

          [v205 setFont_];
        }

        v210 = [v80 view];
        if (!v210)
        {
          __break(1u);
LABEL_48:
          __break(1u);
          goto LABEL_49;
        }

        v211 = v210;
        v212 = [v210 effectiveUserInterfaceLayoutDirection];

        if (v212)
        {
          v213 = 0.0;
        }

        else
        {
          v213 = -10.0;
        }

        if (v212)
        {
          v214 = -10.0;
        }

        else
        {
          v214 = 0.0;
        }

        [v202 setImageEdgeInsets_];
        OUTLINED_FUNCTION_5();
        v215 = swift_allocObject();
        OUTLINED_FUNCTION_10_22(v215);
        v216 = v202;
        OUTLINED_FUNCTION_0_38(v216, v217, v218, v219, v220, v221, v222, v223, 0, 0);
        OUTLINED_FUNCTION_12_14();
        v141 = &selRef_editingContext;
        v224 = OUTLINED_FUNCTION_20_12();
        [v224 v225];

        OUTLINED_FUNCTION_5();
        v226 = swift_allocObject();
        OUTLINED_FUNCTION_10_22(v226);
        v142 = v216;
        OUTLINED_FUNCTION_0_38(v142, v227, v228, v229, v230, v231, v232, v233, 0, 0);
        OUTLINED_FUNCTION_12_14();
        v234 = OUTLINED_FUNCTION_20_12();
        [v234 v235];

        v198 = 1;
        v199 = 1;
      }

      while ((v200 & 1) == 0);
      swift_setDeallocating();
      sub_2744EBB98();
      v236 = swift_initStackObject();
      *(v236 + 16) = v250;
      v237 = *&v80[OBJC_IVAR____TtC14WorkflowEditor29WFActionDetailsViewController_topSeparator];
      *(v236 + 32) = v237;
      v238 = *&v80[OBJC_IVAR____TtC14WorkflowEditor29WFActionDetailsViewController_bottomSeparator];
      *(v236 + 40) = v238;
      v141 = (v236 & 0xC000000000000001);
      v239 = v237;
      v240 = v238;
      v142 = 0;
      while (1)
      {
        if (v142 == 2)
        {

          swift_setDeallocating();
          sub_2744EBB98();
          v248(v254, v252);
          return;
        }

        if (!v141)
        {
          break;
        }

        v241 = MEMORY[0x277C58B20](v142, v236);
LABEL_40:
        v242 = v241;
        v243 = OUTLINED_FUNCTION_22_8([v241 setAlpha_], sel_separatorColor);
        [v242 setBackgroundColor_];

        v244 = [v80 view];
        if (!v244)
        {
          goto LABEL_48;
        }

        v245 = v244;
        ++v142;
        [v244 addSubview_];
      }

      if (v142 < *((v236 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        break;
      }

      __break(1u);
LABEL_45:
      __break(1u);
LABEL_46:
      swift_once();
    }

    v241 = *(v236 + 8 * v142 + 32);
    goto LABEL_40;
  }

LABEL_54:
  __break(1u);
LABEL_55:
  __break(1u);
}

void sub_274558EBC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = Strong + OBJC_IVAR____TtC14WorkflowEditor29WFActionDetailsViewController_dismissalHandler;
    swift_beginAccess();
    v6 = *v4;
    v5 = *(v4 + 8);
    sub_2744069F0(v6, v5);

    if (v6)
    {
      v6();
      sub_274406A94(v6, v5);
    }
  }
}

id sub_274558F5C(void *a1)
{
  v1 = [a1 userInterfaceStyle];
  v2 = objc_opt_self();
  v3 = &selRef_systemGray4Color;
  if (v1 != 2)
  {
    v3 = &selRef_systemGray5Color;
  }

  v4 = [v2 *v3];

  return v4;
}

void sub_274558FC8(char *a1)
{
  v2 = *&a1[OBJC_IVAR____TtC14WorkflowEditor29WFActionDetailsViewController_pinButton];
  if (sub_27463816C())
  {
    sub_27463B70C("Unpin", 5);
  }

  else
  {
    sub_27463B70C("Pin", 3);
  }

  if (qword_2809492C0 != -1)
  {
    swift_once();
  }

  v3 = qword_28094BB00;
  v4 = sub_27463B66C();
  v5 = sub_27463B66C();

  v6 = [v3 localizedStringForKey:v4 value:v5 table:0];

  v7 = sub_27463B6AC();
  v9 = v8;

  sub_27455A9B4(v7, v9, 0, v2);
  v10 = [a1 traitCollection];
  v11 = [v10 preferredContentSizeCategory];

  LOBYTE(v10) = sub_27463BDFC();
  if (v10)
  {
    v12 = sub_27463816C();
    if (v12)
    {
      v13 = 0x73616C732E6E6970;
    }

    else
    {
      v13 = 0x6C6C69662E6E6970;
    }

    if (v12)
    {
      v14 = 0xEE006C6C69662E68;
    }

    else
    {
      v14 = 0xE800000000000000;
    }

    sub_274412734(0, &unk_280951150, 0x277D755B8);
    v15 = sub_274557868(v13, v14);
    if (v15)
    {
      v16 = v15;
      v17 = [objc_opt_self() _preferredFontForTextStyle_weight_];
      if (!v17)
      {
        __break(1u);
        return;
      }

      v18 = v17;
      v19 = [objc_opt_self() configurationWithFont_];

      v20 = [v16 imageWithConfiguration_];
    }

    else
    {
      v20 = 0;
    }

    [v2 setImage:v20 forState:0];
  }
}

void sub_2745592B4(uint64_t a1, char *a2)
{
  v3 = sub_27463815C();
  *v4 = !*v4;
  v3(&v5, 0);
  sub_274558FC8(a2);
}

uint64_t sub_274559334(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = Strong + OBJC_IVAR____TtC14WorkflowEditor29WFActionDetailsViewController_dismissalHandler;
    swift_beginAccess();
    v7 = *v6;
    v8 = *(v6 + 8);
    sub_2744069F0(v7, v8);

    if (v7)
    {
      v7();
      Strong = sub_274406A94(v7, v8);
    }
  }

  return a3(Strong);
}

void sub_2745593F4(double a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_5();
  v8 = swift_allocObject();
  *(v8 + 16) = a3;
  v9 = objc_allocWithZone(MEMORY[0x277D75D40]);
  v10 = a3;
  v11 = sub_2745FB6C4(a5, v8, a1, 1.0);
  [v11 startAnimation];
}

void sub_274559498()
{
  v1 = OBJC_IVAR____TtC14WorkflowEditor29WFActionDetailsViewController_iconView;
  *(v0 + v1) = [objc_allocWithZone(MEMORY[0x277D7D520]) initWithIcon:0 size:{27.0, 27.0}];
  v2 = OBJC_IVAR____TtC14WorkflowEditor29WFActionDetailsViewController_titleLabel;
  *(v0 + v2) = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v3 = OBJC_IVAR____TtC14WorkflowEditor29WFActionDetailsViewController_descriptionTextView;
  *(v0 + v3) = [objc_allocWithZone(MEMORY[0x277D75C40]) init];
  *(v0 + OBJC_IVAR____TtC14WorkflowEditor29WFActionDetailsViewController_closeButton) = 0;
  v4 = OBJC_IVAR____TtC14WorkflowEditor29WFActionDetailsViewController_topSeparator;
  *(v0 + v4) = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  v5 = OBJC_IVAR____TtC14WorkflowEditor29WFActionDetailsViewController_bottomSeparator;
  *(v0 + v5) = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  v6 = OBJC_IVAR____TtC14WorkflowEditor29WFActionDetailsViewController_addButton;
  *(v0 + v6) = [objc_allocWithZone(MEMORY[0x277D75220]) init];
  v7 = OBJC_IVAR____TtC14WorkflowEditor29WFActionDetailsViewController_pinButton;
  *(v0 + v7) = [objc_allocWithZone(MEMORY[0x277D75220]) init];
  v8 = (v0 + OBJC_IVAR____TtC14WorkflowEditor29WFActionDetailsViewController_dismissalHandler);
  *v8 = 0;
  v8[1] = 0;
  *(v0 + OBJC_IVAR____TtC14WorkflowEditor29WFActionDetailsViewController_titleLabelTopPadding) = 0x4038000000000000;
  *(v0 + OBJC_IVAR____TtC14WorkflowEditor29WFActionDetailsViewController_titleLabelConstrainedTopPadding) = 0x4030000000000000;
  *(v0 + OBJC_IVAR____TtC14WorkflowEditor29WFActionDetailsViewController_titleLabelHorizontalPadding) = 0x404E000000000000;
  *(v0 + OBJC_IVAR____TtC14WorkflowEditor29WFActionDetailsViewController_titleDescriptionSpacing) = 0x4032000000000000;
  *(v0 + OBJC_IVAR____TtC14WorkflowEditor29WFActionDetailsViewController_popoverArrowRegionInset) = 0;
  sub_27463C56C();
  __break(1u);
}

id sub_27455966C()
{
  v1 = v0;
  v57.receiver = v0;
  v57.super_class = type metadata accessor for WFActionDetailsViewController(0);
  objc_msgSendSuper2(&v57, sel_viewWillLayoutSubviews);
  v2 = OBJC_IVAR____TtC14WorkflowEditor29WFActionDetailsViewController_closeButton;
  v3 = *&v0[OBJC_IVAR____TtC14WorkflowEditor29WFActionDetailsViewController_closeButton];
  if (v3)
  {
    v4 = v3;
    sub_27455A10C();
    CGRectGetWidth(v58);
    CGSizeMake();
    [v4 setFrame_];
  }

  v5 = *&v0[OBJC_IVAR____TtC14WorkflowEditor29WFActionDetailsViewController_iconView];
  CGSizeMake();
  v6 = OUTLINED_FUNCTION_19_11();
  [v6 v7];
  sub_27455A10C();
  CGRectGetWidth(v59);
  sub_27455A10C();
  CGRectGetWidth(v60);
  sub_274559F74();
  v56 = v5;
  [v5 frame];
  CGRectGetMidY(v61);
  v8 = OUTLINED_FUNCTION_15_14();
  [v8 displayScale];

  BSFloatRoundForScale();
  v9 = *&v1[OBJC_IVAR____TtC14WorkflowEditor29WFActionDetailsViewController_titleLabel];
  CGSizeMake();
  v10 = OUTLINED_FUNCTION_19_11();
  [v10 v11];
  v12 = *&v1[OBJC_IVAR____TtC14WorkflowEditor29WFActionDetailsViewController_descriptionTextView];
  [v9 frame];
  CGRectGetMaxY(v62);
  sub_27455A10C();
  CGRectGetWidth(v63);
  sub_27455A10C();
  CGRectGetHeight(v64);
  v55 = v9;
  [v9 frame];
  CGRectGetMaxY(v65);
  sub_274557AD4();
  OUTLINED_FUNCTION_11_15();
  [v12 v13];
  OUTLINED_FUNCTION_16_14();
  [v12 setFrame_];
  _UISolariumEnabled();
  if (sub_2746381AC())
  {
    sub_27455A10C();
    CGRectGetWidth(v66);
    v14 = OUTLINED_FUNCTION_15_14();
    [v14 displayScale];

    BSFloatRoundForScale();
    v15 = *&v1[OBJC_IVAR____TtC14WorkflowEditor29WFActionDetailsViewController_pinButton];
    OUTLINED_FUNCTION_16_14();
    CGRectGetMaxY(v67);
    CGSizeMake();
    [v15 setFrame_];
    v16 = *&v1[OBJC_IVAR____TtC14WorkflowEditor29WFActionDetailsViewController_addButton];
    sub_27455A10C();
    CGRectGetWidth(v68);
    OUTLINED_FUNCTION_16_14();
    CGRectGetMaxY(v69);
  }

  else
  {
    v16 = *&v1[OBJC_IVAR____TtC14WorkflowEditor29WFActionDetailsViewController_addButton];
    OUTLINED_FUNCTION_16_14();
    CGRectGetMaxY(v70);
    sub_27455A10C();
    CGRectGetWidth(v71);
  }

  CGSizeMake();
  v17 = OUTLINED_FUNCTION_19_11();
  [v17 v18];
  v19 = *&v1[OBJC_IVAR____TtC14WorkflowEditor29WFActionDetailsViewController_pinButton];
  v20 = [v19 layer];
  v54 = v19;
  [v19 bounds];
  [v20 setCornerRadius_];

  v21 = [v16 layer];
  [v16 bounds];
  [v21 setCornerRadius_];

  v22 = *&v1[OBJC_IVAR____TtC14WorkflowEditor29WFActionDetailsViewController_topSeparator];
  OUTLINED_FUNCTION_16_14();
  CGRectGetMinY(v74);
  [v12 bounds];
  CGRectGetWidth(v75);
  v23 = OUTLINED_FUNCTION_15_14();
  [v23 displayScale];

  OUTLINED_FUNCTION_11_15();
  [v22 v24];
  v25 = *&v1[OBJC_IVAR____TtC14WorkflowEditor29WFActionDetailsViewController_bottomSeparator];
  OUTLINED_FUNCTION_16_14();
  CGRectGetMaxY(v76);
  v26 = OUTLINED_FUNCTION_15_14();
  [v26 displayScale];

  [v12 bounds];
  CGRectGetWidth(v77);
  v27 = OUTLINED_FUNCTION_15_14();
  [v27 displayScale];

  OUTLINED_FUNCTION_11_15();
  [v25 v28];
  v29 = OUTLINED_FUNCTION_15_14();
  v30 = [v29 layoutDirection];

  if (v30 != 1)
  {
    return _s14WorkflowEditor29WFActionDetailsViewControllerC06scrollE9DidScrollyySo08UIScrollE0CF_0();
  }

  result = OUTLINED_FUNCTION_17_11();
  if (!result)
  {
    __break(1u);
    goto LABEL_18;
  }

  v32 = result;
  [result &selRef_deselectAllButtonTitle];
  OUTLINED_FUNCTION_6_6();

  v33 = OUTLINED_FUNCTION_2_28();
  [v56 frame];
  CGRectGetMaxX(v78);
  OUTLINED_FUNCTION_9_18();
  [v56 v34];
  [v56 setFrame_];
  v35 = *&v1[v2];
  if (!v35)
  {
LABEL_11:
    result = OUTLINED_FUNCTION_17_11();
    if (result)
    {
      v40 = result;
      [result &selRef_deselectAllButtonTitle];
      OUTLINED_FUNCTION_6_6();

      OUTLINED_FUNCTION_2_28();
      OUTLINED_FUNCTION_14_13();
      [v55 v41];
      CGRectGetMaxX(v80);
      OUTLINED_FUNCTION_9_18();
      [v55 v42];
      [v55 setFrame_];
      result = OUTLINED_FUNCTION_17_11();
      if (result)
      {
        v43 = result;
        [result &selRef_deselectAllButtonTitle];
        OUTLINED_FUNCTION_6_6();

        OUTLINED_FUNCTION_2_28();
        OUTLINED_FUNCTION_14_13();
        [v12 v44];
        CGRectGetMaxX(v81);
        OUTLINED_FUNCTION_9_18();
        [v12 v45];
        [v12 setFrame_];
        result = OUTLINED_FUNCTION_17_11();
        if (result)
        {
          v46 = result;
          [result &selRef_deselectAllButtonTitle];
          OUTLINED_FUNCTION_6_6();

          OUTLINED_FUNCTION_2_28();
          OUTLINED_FUNCTION_14_13();
          [v16 v47];
          CGRectGetMaxX(v82);
          OUTLINED_FUNCTION_9_18();
          [v16 v48];
          v49 = OUTLINED_FUNCTION_19_11();
          [v49 v50];
          result = OUTLINED_FUNCTION_17_11();
          if (result)
          {
            v51 = result;
            [result &selRef_deselectAllButtonTitle];
            OUTLINED_FUNCTION_6_6();

            OUTLINED_FUNCTION_2_28();
            OUTLINED_FUNCTION_14_13();
            [v54 v52];
            CGRectGetMaxX(v83);
            OUTLINED_FUNCTION_9_18();
            [v54 v53];
            [v54 setFrame_];
            return _s14WorkflowEditor29WFActionDetailsViewControllerC06scrollE9DidScrollyySo08UIScrollE0CF_0();
          }

          goto LABEL_21;
        }

LABEL_20:
        __break(1u);
LABEL_21:
        __break(1u);
        goto LABEL_22;
      }

LABEL_19:
      __break(1u);
      goto LABEL_20;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v36 = v35;
  result = OUTLINED_FUNCTION_17_11();
  if (result)
  {
    v37 = result;
    [result &selRef_deselectAllButtonTitle];
    OUTLINED_FUNCTION_6_6();

    OUTLINED_FUNCTION_2_28();
    OUTLINED_FUNCTION_14_13();
    [v36 v38];
    CGRectGetMaxX(v79);
    OUTLINED_FUNCTION_9_18();
    [v36 v39];
    [v36 setFrame_];

    goto LABEL_11;
  }

LABEL_22:
  __break(1u);
  return result;
}

id _s14WorkflowEditor29WFActionDetailsViewControllerC06scrollE9DidScrollyySo08UIScrollE0CF_0()
{
  v1 = *(v0 + OBJC_IVAR____TtC14WorkflowEditor29WFActionDetailsViewController_descriptionTextView);
  [v1 contentSize];
  v3 = v2;
  [v1 frame];
  if (v4 >= v3)
  {
    v5 = 0.0;
    [*(v0 + OBJC_IVAR____TtC14WorkflowEditor29WFActionDetailsViewController_topSeparator) setAlpha_];
  }

  else
  {
    [v1 contentOffset];
    v5 = 0.0;
    v6 = 1.0;
    if (v7 <= 0.0)
    {
      v6 = 0.0;
    }

    [*(v0 + OBJC_IVAR____TtC14WorkflowEditor29WFActionDetailsViewController_topSeparator) setAlpha_];
    [v1 contentOffset];
    v9 = v8;
    [v1 frame];
    v11 = v9 + v10;
    [v1 contentSize];
    if (v12 > v11)
    {
      v5 = 1.0;
    }
  }

  v13 = *(v0 + OBJC_IVAR____TtC14WorkflowEditor29WFActionDetailsViewController_bottomSeparator);

  return [v13 setAlpha_];
}

double sub_274559F74()
{
  v1 = objc_opt_self();
  v2 = [v1 preferredFontForTextStyle_];
  [v2 pointSize];
  v4 = v3;

  if (v4 <= 30.0)
  {
    v5 = v4;
  }

  else
  {
    v5 = 30.0;
  }

  v15 = *&v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094B7F0, &qword_27464BB40);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_274659B30;
  *(inited + 32) = v15;
  *(inited + 40) = vaddq_f64(vdupq_lane_s64(v15, 0), xmmword_274659B40);
  v7 = OBJC_IVAR____TtC14WorkflowEditor29WFActionDetailsViewController_titleLabel;
  v8 = *MEMORY[0x277D74420];
  v9 = 32;
  v10 = 0.0;
  do
  {
    if (v9 == 56)
    {
      break;
    }

    v11 = *(v0 + v7);
    v12 = [v1 systemFontOfSize:*(inited + v9) weight:v8];
    [v11 setFont_];

    CGSizeMake();
    [v11 sizeThatFits_];
    v10 = v13;
    v9 += 8;
  }

  while (v13 >= 30.0);

  return v10;
}

void sub_27455A10C()
{
  v1 = [v0 view];
  if (v1)
  {
    v2 = v1;
    [v1 bounds];
    OUTLINED_FUNCTION_6_6();

    OUTLINED_FUNCTION_16_12();
    swift_beginAccess();
  }

  else
  {
    __break(1u);
  }
}

void sub_27455A1A4(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280949E10, &unk_274648610);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v27[-v5];
  v7 = sub_274637E2C();
  OUTLINED_FUNCTION_4_0();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_25_9();
  v11 = *(v1 + OBJC_IVAR____TtC14WorkflowEditor29WFActionDetailsViewController_descriptionTextView);
  [a1 locationInView_];
  v13 = v12;
  v15 = v14;
  v16 = [v11 layoutManager];
  v17 = [v11 textContainer];
  v18 = [v16 characterIndexForPoint:v17 inTextContainer:0 fractionOfDistanceBetweenInsertionPoints:{v13, v15}];

  v19 = [v11 textStorage];
  v20 = [v19 length];

  if (v18 < v20)
  {
    v21 = [v11 attributedText];
    if (v21)
    {
      v22 = v21;
      v23 = [v21 attributesAtIndex:v18 effectiveRange:0];

      type metadata accessor for Key(0);
      sub_2744D0860();
      sub_27463B4CC();

      sub_27452F5DC();

      if (v28)
      {
        v24 = swift_dynamicCast();
        __swift_storeEnumTagSinglePayload(v6, v24 ^ 1u, 1, v7);
        if (__swift_getEnumTagSinglePayload(v6, 1, v7) != 1)
        {
          (*(v9 + 32))(v2, v6, v7);
          v25 = [objc_opt_self() sharedContext];
          v26 = sub_274637DFC();
          [v25 openURL_];

          (*(v9 + 8))(v2, v7);
          return;
        }
      }

      else
      {
        sub_27443FF80(v27, &unk_28094A230, &qword_27464D1B0);
        __swift_storeEnumTagSinglePayload(v6, 1, 1, v7);
      }

      sub_27443FF80(v6, &qword_280949E10, &unk_274648610);
    }

    else
    {
      __break(1u);
    }
  }
}

id WFActionDetailsViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_27463B66C();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id WFActionDetailsViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WFActionDetailsViewController(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id WFActionDetailsViewController.contentHeightProvidingView.getter()
{
  result = [v0 view];
  if (!result)
  {
    __break(1u);
  }

  return result;
}

id sub_27455A888(void *a1, uint64_t a2)
{
  v5 = a1[3];
  if (v5)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    OUTLINED_FUNCTION_4_0();
    v8 = v7;
    MEMORY[0x28223BE20](v9);
    OUTLINED_FUNCTION_25_9();
    (*(v8 + 16))(v3);
    v10 = sub_27463C69C();
    (*(v8 + 8))(v3, v5);
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v10 = 0;
  }

  v11 = [v2 initWithTarget:v10 action:a2];
  swift_unknownObjectRelease();
  return v11;
}

void sub_27455A9B4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = sub_27463B66C();

  [a4 setTitle:v6 forState:a3];
}

void sub_27455AA28(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_27463B66C();

  [a3 setText_];
}

uint64_t type metadata accessor for WFActionDetailsViewController(uint64_t a1)
{
  result = qword_280951160;
  if (!qword_280951160)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_27455AB64(uint64_t a1)
{
  sub_2746381FC();
  v3 = *(v1 + 16);

  sub_2745592B4(a1, v3);
}

uint64_t sub_27455AC64(uint64_t a1)
{
  result = sub_2746381FC();
  if (v2 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{

  return MEMORY[0x2821DE0D8](0, 0xE000000000000000, 0, 0, 0, 0, 0, 0, a9, a10, 0, v10, v11);
}

CGFloat OUTLINED_FUNCTION_2_28()
{
  v5 = v1;
  v6 = v2;
  v7 = v3;
  v8 = v4;

  return CGRectGetWidth(*&v5);
}

id OUTLINED_FUNCTION_15_14()
{

  return [v0 (v1 + 1016)];
}

id OUTLINED_FUNCTION_16_14()
{

  return [v0 (v1 + 3192)];
}

id OUTLINED_FUNCTION_17_11()
{

  return [v0 (v1 + 2808)];
}

id OUTLINED_FUNCTION_22_8(uint64_t a1, const char *a2)
{
  v4 = *(v2 - 272);

  return [v4 a2];
}

uint64_t sub_27455B048()
{

  return MEMORY[0x2821FE8D8](v0);
}

double sub_27455B0A4@<D0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = a1;
  v3 = type metadata accessor for NativeViewRepresentable(0);
  v4 = *(v3 + 20);
  *(a2 + v4) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094D000, &qword_2746487E0);
  swift_storeEnumTagMultiPayload();
  v5 = a2 + *(v3 + 24);
  *v5 = swift_getKeyPath();
  v5[40] = 0;

  return result;
}

id sub_27455B184()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ViewController();
  return objc_msgSendSuper2(&v2, sel_overrideUserInterfaceStyle);
}

void sub_27455B210(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for ViewController();
  objc_msgSendSuper2(&v3, sel_setOverrideUserInterfaceStyle_, a1);
  sub_27455B25C();
}

void sub_27455B25C()
{
  v1 = [v0 presentedViewController];
  if (v1)
  {
    v2 = v1;
    [v1 setOverrideUserInterfaceStyle_];
  }
}

void sub_27455B2DC(void *a1, char a2, void *a3, uint64_t a4)
{
  v5 = v4;
  if ([v5 overrideUserInterfaceStyle])
  {
    [a1 setOverrideUserInterfaceStyle_];
  }

  if (a3)
  {
    v11[4] = a3;
    v11[5] = a4;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 1107296256;
    v11[2] = sub_27443E0E8;
    v11[3] = &block_descriptor_29;
    a3 = _Block_copy(v11);
  }

  v10 = type metadata accessor for ViewController();
  v12.receiver = v5;
  v12.super_class = v10;
  objc_msgSendSuper2(&v12, sel_presentViewController_animated_completion_, a1, a2 & 1, a3);
  _Block_release(a3);
}

id sub_27455B4CC(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    v5 = sub_27463B66C();
  }

  else
  {
    v5 = 0;
  }

  v8.receiver = v3;
  v8.super_class = type metadata accessor for ViewController();
  v6 = objc_msgSendSuper2(&v8, sel_initWithNibName_bundle_, v5, a3);

  return v6;
}

id sub_27455B5B0(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for ViewController();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id sub_27455B644()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_27455B6A0()
{
  v1 = v0;
  v2 = sub_27463918C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ViewController();
  v6 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  type metadata accessor for NativeViewRepresentable(0);
  sub_2744C6ABC();
  if (v15)
  {
    sub_27443557C(&v14, v17);
    sub_2744306B8(v17, v16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094F0B0, &qword_274659E00);
    if (swift_dynamicCast())
    {
      sub_27455C024(&v14);
      sub_2744C68C0();
      v7 = (*(v3 + 88))(v5, v2);
      if (v7 == *MEMORY[0x277CDF3D0])
      {
        v8 = 1;
      }

      else if (v7 == *MEMORY[0x277CDF3C0])
      {
        v8 = 2;
      }

      else
      {
        (*(v3 + 8))(v5, v2);
        v8 = 0;
      }

      [v6 setOverrideUserInterfaceStyle_];
    }

    __swift_destroy_boxed_opaque_existential_1(v17);
  }

  else
  {
    sub_27455BFBC(&v14);
  }

  v9 = v6;
  result = [v9 view];
  if (result)
  {
    v11 = result;
    v12 = [objc_opt_self() clearColor];
    [v11 setBackgroundColor_];

    v13 = *(*v1 + 16);
    *(*v1 + 16) = v9;

    return v9;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_27455B910(void *a1)
{
  v3 = sub_27463918C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_274639ABC();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for NativeViewRepresentable(0);
  sub_27455BF4C(v1 + *(v11 + 24), v18);
  if (v20 == 1)
  {
    v21 = v18[0];
    v22 = v18[1];
    v23 = v19;
  }

  else
  {
    v16 = v3;
    v17 = v4;
    sub_27463BC0C();
    v12 = sub_27463A2FC();
    sub_274638CEC();

    sub_274639AAC();
    swift_getAtKeyPath();
    v3 = v16;
    v4 = v17;

    (*(v8 + 8))(v10, v7);
  }

  if (!*(&v22 + 1))
  {
    return sub_27455BFBC(&v21);
  }

  sub_27443557C(&v21, v24);
  sub_2744306B8(v24, &v21);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094F0B0, &qword_274659E00);
  if (swift_dynamicCast())
  {
    sub_27455C024(v18);
    sub_2744C68C0();
    v13 = (*(v4 + 88))(v6, v3);
    if (v13 == *MEMORY[0x277CDF3D0])
    {
      v14 = 1;
    }

    else if (v13 == *MEMORY[0x277CDF3C0])
    {
      v14 = 2;
    }

    else
    {
      (*(v4 + 8))(v6, v3);
      v14 = 0;
    }

    [a1 setOverrideUserInterfaceStyle_];
  }

  return __swift_destroy_boxed_opaque_existential_1(v24);
}

uint64_t sub_27455BC28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_27455C078(&qword_2809511E8, &unk_274659D80);

  return MEMORY[0x28212EF70](a1, a2, a3, v6);
}

uint64_t sub_27455BCA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_27455C078(&qword_2809511E8, &unk_274659D80);

  return MEMORY[0x28212EF38](a1, a2, a3, v6);
}

void sub_27455BD28(uint64_t a1)
{
  sub_27455C078(&qword_2809511E8, &unk_274659D80);
  sub_27463A26C();
  __break(1u);
}

double block_copy_helper_29(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t type metadata accessor for NativeViewRepresentable(uint64_t a1)
{
  result = qword_2809511D0;
  if (!qword_2809511D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_27455BE24(uint64_t a1)
{
  type metadata accessor for NativeViewControllerContext();
  sub_274435D7C(319);
  if (v1 <= 0x3F)
  {
    sub_27455BEB4(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_27455BEB4(uint64_t a1)
{
  if (!qword_28094A5F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_2809507C0, &qword_274649C60);
    v1 = sub_27463919C();
    if (!v2)
    {
      atomic_store(v1, &qword_28094A5F0);
    }
  }
}

uint64_t sub_27455BF4C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28094E078, &qword_27465AF70);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_27455BFBC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2809507C0, &qword_274649C60);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_27455C078(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for NativeViewRepresentable(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_27455C0BC(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return;
    }

LABEL_3:
    v2 = sub_274453594();
    v3 = v2 - 1;
    if (__OFSUB__(v2, 1))
    {
      __break(1u);
    }

    else
    {
      sub_2744535A4();
      if ((a1 & 0xC000000000000001) == 0)
      {

        return;
      }
    }

    MEMORY[0x277C58B20](v3, a1);
    return;
  }

  if (sub_27463C27C())
  {
    goto LABEL_3;
  }
}

char *sub_27455C170(unint64_t a1, void (*a2)(char *, BOOL, uint64_t))
{
  if (!(a1 >> 62))
  {
    result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }

LABEL_3:
    v5 = result - 1;
    if (__OFSUB__(result, 1))
    {
      __break(1u);
    }

    else
    {
      a2(result - 1, (a1 & 0xC000000000000001) == 0, a1);
      if ((a1 & 0xC000000000000001) == 0)
      {
        return *(a1 + 8 * v5 + 32);
      }
    }

    return MEMORY[0x277C58B20](v5, a1);
  }

  result = sub_27463C27C();
  if (result)
  {
    goto LABEL_3;
  }

  return result;
}

uint64_t sub_27455C20C(uint64_t a1)
{
  v3 = *(a1 + 16);
  v1 = a1 + 16;
  v2 = v3;
  if (v3)
  {
    return *(v1 + 16 * v2);
  }

  else
  {
    return 0;
  }
}

WorkflowEditor::WFSheetViewState_optional __swiftcall WFSheetViewState.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 4;
  if (rawValue < 4)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_27455C26C@<X0>(uint64_t *a1@<X8>)
{
  result = WFSheetViewState.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t WFSheetViewGrabberVisibility.hashValue.getter()
{
  v1 = *v0;
  sub_27463C74C();
  MEMORY[0x277C58EA0](v1);
  return sub_27463C7AC();
}

uint64_t sub_27455C380(void *a1)
{
  v1 = a1[1];
  v2 = swift_unknownObjectRetain();
  return sub_27455C404(v2, v1);
}

uint64_t sub_27455C404(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_delegate;
  OUTLINED_FUNCTION_72_1(v4, v6);
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_27455C468(void *a1))(uint64_t a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x38uLL);
  *a1 = v3;
  v4 = OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_delegate;
  v3[5] = v1;
  v3[6] = v4;
  v5 = v1 + v4;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v7 = *(v5 + 8);
  v3[3] = Strong;
  v3[4] = v7;
  return sub_27451265C;
}

void sub_27455C4F4()
{
  v1 = OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_state;
  swift_beginAccess();
  if (*(v0 + v1) == 3 && (*(v0 + OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_isTrackingPanGesture) & 1) == 0)
  {
    v2 = *(v0 + OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_translationView);
    sub_27455CBF4();

    [v2 frame];
    [v2 setFrame_];
  }

  sub_274562BF8();
}

double sub_27455C5A8(uint64_t a1, uint64_t a2)
{
  v3 = OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_topInset;
  OUTLINED_FUNCTION_47(OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_topInset + v2, a2);
  return *&v3[v2];
}

void sub_27455C5E0(double a1)
{
  v3 = OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_topInset;
  OUTLINED_FUNCTION_72_1(OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_topInset + v1, v4);
  *&v3[v1] = a1;
  sub_27455C4F4();
}

uint64_t sub_27455C62C(uint64_t a1)
{
  OUTLINED_FUNCTION_28_11(a1);
  OUTLINED_FUNCTION_20_8();
  return OUTLINED_FUNCTION_58_2();
}

void sub_27455C6C4(uint64_t a1, char a2)
{
  v5 = v2 + OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_bottomInset;
  swift_beginAccess();
  if (*(v5 + 8))
  {
    if (a2)
    {
      return;
    }
  }

  else if ((a2 & 1) == 0 && *v5 == *&a1)
  {
    return;
  }

  v6 = OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_state;
  swift_beginAccess();
  if (*(v2 + v6) == 1 && (*(v2 + OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_isTrackingPanGesture) & 1) == 0)
  {
    v7 = *(v2 + OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_translationView);
    v8 = sub_27455CBF4();
    sub_27455C20C(v8);

    [v7 frame];
    [v7 setFrame_];
  }
}

void sub_27455C7E4(uint64_t a1, char a2)
{
  v5 = v2 + OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_bottomInset;
  OUTLINED_FUNCTION_72_1(v2 + OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_bottomInset, v8);
  v6 = *v5;
  v7 = *(v5 + 8);
  *v5 = a1;
  *(v5 + 8) = a2 & 1;
  sub_27455C6C4(v6, v7);
}

void (*sub_27455C848(void *a1))(uint64_t a1)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  v3[5] = v1;
  v4 = v1 + OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_bottomInset;
  OUTLINED_FUNCTION_29_3(v4, v3);
  v5 = *(v4 + 8);
  v3[3] = *v4;
  *(v3 + 32) = v5;
  return sub_27455C8CC;
}

void sub_27455C8CC(uint64_t a1)
{
  v1 = *a1;
  sub_27455C7E4(*(*a1 + 24), *(*a1 + 32));

  free(v1);
}

uint64_t sub_27455C950(void *a1)
{
  v2 = v1 + *a1;
  OUTLINED_FUNCTION_29_3(v2, v4);
  return *v2;
}

void sub_27455C990(uint64_t a1, char a2)
{
  v5 = v2 + OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_intermediateBottomInset;
  OUTLINED_FUNCTION_72_1(v5, v6);
  *v5 = a1;
  *(v5 + 8) = a2 & 1;
}

id sub_27455CA34(__n128 a1)
{
  if (sub_27455CBF4()[2])
  {

    return [v1 safeAreaInsets];
  }

  else
  {

    __break(1u);
  }

  return result;
}

void *sub_27455CA90@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X1>)
{
  result = sub_27455CB04(a2, &v4);
  *a1 = v4;
  return result;
}

uint64_t sub_27455CB04@<X0>(uint64_t a1@<X1>, _BYTE *a2@<X8>)
{
  v4 = OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_grabberVisibility;
  result = OUTLINED_FUNCTION_47(v2 + OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_grabberVisibility, a1);
  *a2 = *(v2 + v4);
  return result;
}

id sub_27455CB4C(char *a1)
{
  v2 = *a1;
  v3 = OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_grabberVisibility;
  OUTLINED_FUNCTION_31_4(a1);
  *(v1 + v3) = v2;
  return sub_274563210();
}

uint64_t sub_27455CB90(uint64_t a1)
{
  OUTLINED_FUNCTION_28_11(a1);
  OUTLINED_FUNCTION_20_8();
  return OUTLINED_FUNCTION_58_2();
}

char **sub_27455CBF4()
{
  v2 = v0;
  v3 = OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_contentProvider;
  OUTLINED_FUNCTION_29_3(&v2[OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_contentProvider], v52);
  sub_27456329C(&v2[v3], &v53);
  if (v54)
  {
    sub_2743F45D0(&v53, v55);
    OUTLINED_FUNCTION_33_5();
    Height = CGRectGetHeight(v58);
    v5 = v56;
    v6 = v57;
    __swift_project_boxed_opaque_existential_1(v55, v56);
    OUTLINED_FUNCTION_33_5();
    CGRectGetWidth(v59);
    CGSizeMake();
    (*(v6 + 16))(v5, v6);
    v47 = Height - v7;
    v8 = &selRef_editingContext;
    [v2 safeAreaInsets];
    if (v47 <= v9)
    {
      [v2 safeAreaInsets];
      Height = v22;
      v8 = OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_topInset;
      OUTLINED_FUNCTION_29_3(OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_topInset + v2, v49);
      v23 = *(v8 + v2);
      OUTLINED_FUNCTION_30_9();
      OUTLINED_FUNCTION_23_10();
      if (v6 >= v24 >> 1)
      {
        OUTLINED_FUNCTION_1_31(v24);
        sub_274450D6C();
        v8 = v46;
      }

      *(&_Q1 + 1) = 0;
      *&_Q1 = Height + v23;
    }

    else
    {
      OUTLINED_FUNCTION_30_9();
      OUTLINED_FUNCTION_23_10();
      __asm { FMOV            V1.2D, #6.0 }

      *&_Q1 = v47;
      if (v6 >= v10 >> 1)
      {
        OUTLINED_FUNCTION_1_31(v10);
        v48 = v16;
        sub_274450D6C();
        _Q1 = v48;
        v8 = v17;
      }
    }

    v8[2] = v5;
    *&v8[2 * v6 + 4] = _Q1;
    __swift_destroy_boxed_opaque_existential_1(v55);
  }

  else
  {
    sub_27456337C(&v53);
    [v2 safeAreaInsets];
    Height = v18;
    v8 = OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_topInset;
    OUTLINED_FUNCTION_29_3(OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_topInset + v2, v55);
    v19 = *(v8 + v2);
    OUTLINED_FUNCTION_30_9();
    OUTLINED_FUNCTION_23_10();
    if (v1 >= v20 >> 1)
    {
      OUTLINED_FUNCTION_1_31(v20);
      sub_274450D6C();
      v8 = v45;
    }

    OUTLINED_FUNCTION_25_12(Height + v19);
    *(v21 + 40) = 0;
  }

  v25 = &v2[OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_intermediateBottomInset];
  OUTLINED_FUNCTION_29_3(&v2[OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_intermediateBottomInset], &v53);
  if ((v25[1] & 1) == 0)
  {
    v26 = *v25;
    OUTLINED_FUNCTION_33_5();
    CGRectGetHeight(v60);
    OUTLINED_FUNCTION_37_4();
    if (_CF)
    {
      OUTLINED_FUNCTION_1_31(v27);
      sub_274450D6C();
      v8 = v41;
    }

    OUTLINED_FUNCTION_25_12(Height - v26);
    *(v28 + 40) = 0x4018000000000000;
  }

  v29 = &v2[OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_bottomInset];
  OUTLINED_FUNCTION_29_3(&v2[OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_bottomInset], v51);
  if ((v29[1] & 1) == 0)
  {
    v30 = *v29;
    OUTLINED_FUNCTION_33_5();
    CGRectGetHeight(v61);
    OUTLINED_FUNCTION_37_4();
    if (_CF)
    {
      OUTLINED_FUNCTION_1_31(v31);
      sub_274450D6C();
      v8 = v42;
    }

    OUTLINED_FUNCTION_25_12(Height - v30);
    *(v32 + 40) = 0x4034000000000000;
  }

  v33 = OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_allowsDismissal;
  OUTLINED_FUNCTION_29_3(&v2[OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_allowsDismissal], v50);
  if (v2[v33] == 1)
  {
    OUTLINED_FUNCTION_33_5();
    v34 = CGRectGetHeight(v62);
    sub_27455C20C(v8);
    if (v36)
    {
      v37 = 0.0;
    }

    else
    {
      v37 = v35;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_274450D6C();
      v8 = v43;
    }

    v38 = v8[2];
    if (v38 >= v8[3] >> 1)
    {
      sub_274450D6C();
      v8 = v44;
    }

    v8[2] = (v38 + 1);
    v39 = &v8[2 * v38];
    *(v39 + 4) = v34 + 70.0;
    *(v39 + 5) = v37;
  }

  return v8;
}

id sub_27455CF60()
{
  v1 = *(v0 + OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_grabberView);
  v2 = OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_allowsDismissal;
  swift_beginAccess();
  return [v1 setHidden_];
}

uint64_t sub_27455CFC8(uint64_t a1, uint64_t a2)
{
  v3 = OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_allowsDismissal;
  OUTLINED_FUNCTION_47(v2 + OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_allowsDismissal, a2);
  return *(v2 + v3);
}

id sub_27455D000(uint64_t a1)
{
  v2 = a1;
  v3 = OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_allowsDismissal;
  OUTLINED_FUNCTION_31_4(a1);
  *(v1 + v3) = v2;
  return sub_27455CF60();
}

uint64_t sub_27455D044(uint64_t a1)
{
  OUTLINED_FUNCTION_28_11(a1);
  OUTLINED_FUNCTION_20_8();
  return OUTLINED_FUNCTION_58_2();
}

void sub_27455D0FC()
{
  v1 = (v0 + OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_contentProvider);
  swift_beginAccess();
  v2 = v1[3];
  if (v2)
  {
    v3 = v1[4];
    v4 = __swift_project_boxed_opaque_existential_1(v1, v1[3]);
    v5 = *(v2 - 8);
    v6 = MEMORY[0x28223BE20](v4);
    v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v5 + 16))(v8, v6);
    v9 = (*(v3 + 24))(v2, v3);
    (*(v5 + 8))(v8, v2);
    v10 = v9;
    sub_27455D568(v9);
  }
}

uint64_t sub_27455D250@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_contentProvider;
  OUTLINED_FUNCTION_47(v2 + OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_contentProvider, a1);
  return sub_27456329C(v2 + v4, a2);
}

uint64_t sub_27455D29C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_contentProvider;
  swift_beginAccess();
  sub_27456330C(a1, v1 + v3);
  swift_endAccess();
  sub_27455D0FC();
  return sub_27456337C(a1);
}

uint64_t sub_27455D308(uint64_t a1)
{
  OUTLINED_FUNCTION_28_11(a1);
  OUTLINED_FUNCTION_20_8();
  return OUTLINED_FUNCTION_58_2();
}

uint64_t sub_27455D36C(uint64_t a1, uint64_t a2)
{
  v3 = OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_automaticallyAdjustsScrollViewInsets;
  OUTLINED_FUNCTION_47(v2 + OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_automaticallyAdjustsScrollViewInsets, a2);
  return *(v2 + v3);
}

void sub_27455D3A4(uint64_t a1)
{
  v2 = a1;
  v3 = OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_automaticallyAdjustsScrollViewInsets;
  OUTLINED_FUNCTION_31_4(a1);
  *(v1 + v3) = v2;
}

void sub_27455D430(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_27455D568(v1);
}

void sub_27455D460()
{
  v1 = OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_scrollView;
  swift_beginAccess();
  v2 = *&v0[v1];
  if (v2)
  {
    v3 = v2;
    [v3 _setShouldScrollAncestors_];
    v4 = [v3 panGestureRecognizer];
    [v4 addTarget:v0 action:sel_handlePanGestureWithRecognizer_];

    [v0 setNeedsLayout];
    [v0 layoutIfNeeded];
    sub_274562BF8();
  }
}

void *sub_27455D528(uint64_t a1, uint64_t a2)
{
  v3 = OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_scrollView;
  OUTLINED_FUNCTION_47(v2 + OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_scrollView, a2);
  v4 = *(v2 + v3);
  v5 = v4;
  return v4;
}

void sub_27455D568(void *a1)
{
  v3 = OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_scrollView;
  OUTLINED_FUNCTION_31_4(a1);
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  v5 = a1;

  sub_27455D460();
}

uint64_t sub_27455D5C0(uint64_t a1)
{
  OUTLINED_FUNCTION_28_11(a1);
  OUTLINED_FUNCTION_20_8();
  return OUTLINED_FUNCTION_58_2();
}

void sub_27455D624(uint64_t a1, char a2, void (*a3)(uint64_t))
{
  v5 = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    a3(v5);
  }
}

void *sub_27455D668@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X1>)
{
  result = sub_27455D868(a2, &v4);
  *a1 = v4;
  return result;
}

void sub_27455D6DC(unsigned __int8 *a1)
{
  v2 = *a1;
  v3 = OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_state;
  swift_beginAccess();
  if (*(v1 + v3) != v2)
  {
    v4 = v1 + OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_delegate;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v5 = *(v4 + 8);
      ObjectType = swift_getObjectType();
      v7 = v2;
      (*(v5 + 8))(&v7, v1, ObjectType, v5);
      swift_unknownObjectRelease();
    }
  }
}

void sub_27455D7A0(unsigned __int8 *a1)
{
  v2 = *a1;
  v3 = OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_state;
  swift_beginAccess();
  if (*(v1 + v3) != v2)
  {
    v4 = v1 + OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_delegate;
    swift_beginAccess();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v5 = *(v4 + 8);
      ObjectType = swift_getObjectType();
      v7 = *(v1 + v3);
      (*(v5 + 16))(&v7, v1, ObjectType, v5);
      swift_unknownObjectRelease();
    }
  }
}

uint64_t sub_27455D868@<X0>(uint64_t a1@<X1>, _BYTE *a2@<X8>)
{
  v4 = OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_state;
  result = OUTLINED_FUNCTION_47(v2 + OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_state, a1);
  *a2 = *(v2 + v4);
  return result;
}

void sub_27455D8B0(unsigned __int8 *a1)
{
  v2 = *a1;
  v3 = OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_state;
  OUTLINED_FUNCTION_31_4(a1);
  v4 = *(v1 + v3);
  v5[0] = v2;
  sub_27455D6DC(v5);
  *(v1 + v3) = v2;
  v5[0] = v4;
  sub_27455D7A0(v5);
}

id sub_27455D94C(void *a1)
{
  if ([a1 userInterfaceStyle] == 2)
  {
    v1 = objc_allocWithZone(MEMORY[0x277D75348]);

    return [v1 initWithRed:0.211764706 green:0.211764706 blue:0.219607843 alpha:1.0];
  }

  else
  {
    v3 = [objc_opt_self() whiteColor];

    return v3;
  }
}

id sub_27455D9E0()
{
  v1 = OBJC_IVAR____TtC14WorkflowEditor11WFSheetView____lazy_storage___glassTintColor;
  v2 = *(v0 + OBJC_IVAR____TtC14WorkflowEditor11WFSheetView____lazy_storage___glassTintColor);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC14WorkflowEditor11WFSheetView____lazy_storage___glassTintColor);
  }

  else
  {
    v4 = v0;
    v5 = objc_allocWithZone(MEMORY[0x277D75348]);
    v6 = OUTLINED_FUNCTION_40_5();
    v7 = *(v0 + v1);
    *(v4 + v1) = v6;
    v3 = v6;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

id sub_27455DA64(void *a1)
{
  v1 = [a1 userInterfaceStyle];
  v2 = objc_allocWithZone(MEMORY[0x277D75348]);
  if (v1 == 1)
  {
    v3 = 0.01;
    v4 = 0.0;
  }

  else
  {
    v3 = 0.08;
    v4 = 1.0;
  }

  return [v2 initWithWhite:v4 alpha:v3];
}

char *WFSheetView.init(initialState:)(char *a1)
{
  ObjectType = swift_getObjectType();
  v3 = *a1;
  OUTLINED_FUNCTION_29_10(OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_delegate);
  *(OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_topInset + v1) = 0x4000000000000000;
  v4 = v1 + OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_bottomInset;
  *v4 = 0;
  *(v4 + 8) = 1;
  v5 = v1 + OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_intermediateBottomInset;
  *v5 = 0;
  *(v5 + 8) = 1;
  *(v1 + OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_bottomRubberBandRange) = 0x4032000000000000;
  *(v1 + OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_grabberVisibility) = 0;
  *(v1 + OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_allowsDismissal) = 1;
  v6 = OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_contentView;
  *(v1 + v6) = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  v7 = OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_unscaledContentOverlay;
  *(v1 + v7) = [objc_allocWithZone(MEMORY[0x277D7D528]) init];
  v8 = v1 + OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_contentProvider;
  *(v8 + 32) = 0;
  *v8 = 0u;
  *(v8 + 16) = 0u;
  *(v1 + OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_automaticallyAdjustsScrollViewInsets) = 0;
  *(v1 + OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_scrollView) = 0;
  v9 = OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_translationView;
  *(v1 + v9) = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  v10 = OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_glassView;
  *(v1 + v10) = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  v11 = OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_verticalStretchTransformView;
  *(v1 + v11) = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  v12 = OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_opaqueOverlayFillView;
  *(v1 + v12) = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  v13 = OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_grabberView;
  *(v1 + v13) = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  *(v1 + OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_completedInitialValidLayoutPass) = 0;
  v14 = (v1 + OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_pendingLayoutWork);
  *v14 = 0;
  v14[1] = 0;
  *(v1 + OBJC_IVAR____TtC14WorkflowEditor11WFSheetView____lazy_storage___glassTintColor) = 0;
  v15 = (v1 + OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_initialGestureOrigin);
  *v15 = 0;
  v15[1] = 0;
  *(v1 + OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_initialGestureScrollOffset) = 0;
  *(v1 + OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_isTrackingPanGesture) = 0;
  *(v1 + OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_dimmingFraction) = 0;
  *(v1 + OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_state) = v3;
  v62 = v1;
  v63 = type metadata accessor for WFSheetView();
  v16 = OUTLINED_FUNCTION_7_16();
  v19 = objc_msgSendSuper2(v17, v18, v16);
  v20 = OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_translationView;
  v21 = *&v19[OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_translationView];
  v22 = v19;
  v23 = [v21 layer];
  [v23 setShadowRadius_];

  v24 = [*&v19[v20] layer];
  [v24 setShadowPathIsBounds_];

  [v22 addSubview_];
  v25 = OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_glassView;
  [*&v19[v20] addSubview_];
  v26 = OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_opaqueOverlayFillView;
  v27 = *&v22[OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_opaqueOverlayFillView];
  v28 = objc_allocWithZone(MEMORY[0x277D75348]);
  v29 = v27;
  v30 = OUTLINED_FUNCTION_40_5();
  [v29 setBackgroundColor_];

  [*&v22[v26] setAlpha_];
  v31 = [*&v22[v25] layer];
  [v31 setCornerRadius_];

  v32 = [*&v22[v25] layer];
  v33 = *MEMORY[0x277CDA138];
  [v32 setCornerCurve_];

  v34 = [*&v22[v25] layer];
  [v34 setMasksToBounds_];

  v35 = *&v22[v25];
  v36 = sub_27455D9E0();
  [v35 setBackgroundColor_];

  [*&v22[v25] addSubview_];
  v37 = *&v22[v25];
  v38 = OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_verticalStretchTransformView;
  [v37 addSubview_];
  [*&v22[v38] setAnchorPoint_];
  [*&v22[v38] addSubview_];
  [*&v22[v38] addSubview_];
  v39 = OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_grabberView;
  v40 = [*&v22[OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_grabberView] layer];
  [v40 setCornerRadius_];

  v41 = [*&v22[v39] layer];
  [v41 setCornerCurve_];

  v42 = *&v22[v39];
  v43 = objc_allocWithZone(MEMORY[0x277D75348]);
  v44 = v42;
  v45 = OUTLINED_FUNCTION_40_5();
  [v44 setBackgroundColor_];

  sub_274563210();
  [*&v22[v38] addSubview_];
  v46 = v63;
  v61 = v63;
  v60[0] = v22;
  v47 = objc_allocWithZone(MEMORY[0x277D757F8]);
  v48 = sub_274563A90(v60, sel_handlePanGestureWithRecognizer_);
  [*&v19[v20] addGestureRecognizer_];
  v49 = OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_state;
  OUTLINED_FUNCTION_29_3(&v22[OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_state], v59);
  v50 = 1.0;
  if (v22[v49] != 3)
  {
    v50 = 0.0;
  }

  *&v22[OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_dimmingFraction] = v50;
  sub_274562D50();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2809512E0, &qword_274659ED8);
  OUTLINED_FUNCTION_2_6();
  v51 = swift_allocObject();
  *(v51 + 16) = xmmword_274648570;
  v52 = sub_274638DBC();
  v53 = MEMORY[0x277D74BF0];
  *(v51 + 32) = v52;
  *(v51 + 40) = v53;
  OUTLINED_FUNCTION_5();
  *(swift_allocObject() + 16) = ObjectType;
  sub_27463BF0C();
  swift_unknownObjectRelease();

  v61 = v46;
  v60[0] = v22;
  v54 = objc_allocWithZone(MEMORY[0x277D75B80]);
  v55 = v22;
  v56 = sub_27455A888(v60, sel_handleDimmingLayerTap);
  [v56 setDelegate_];
  [v55 addGestureRecognizer_];

  return v55;
}

id sub_27455E204(void *a1)
{
  v1 = [a1 userInterfaceStyle];
  v2 = objc_allocWithZone(MEMORY[0x277D75348]);
  if (v1 == 1)
  {
    v3 = 0.957;
    v4 = 0.97;
  }

  else
  {
    v3 = 0.141;
    v4 = 0.145;
  }

  return [v2 initWithRed:v3 green:v3 blue:v4 alpha:1.0];
}

id sub_27455E288(void *a1)
{
  v1 = [a1 userInterfaceStyle];
  v2 = objc_allocWithZone(MEMORY[0x277D75348]);
  if (v1 == 2)
  {
    v3 = 0.2;
    v4 = 1.0;
  }

  else
  {
    v3 = 0.15;
    v4 = 0.0;
  }

  return [v2 initWithWhite:v4 alpha:v3];
}

void sub_27455E2FC()
{
  v1 = [*(v0 + OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_glassView) layer];
  CGSizeMake();
  v3 = v2;
  v5 = v4;
  CGSizeMake();
  v8[0] = v3;
  v8[1] = v5;
  v8[2] = v3;
  v8[3] = v5;
  v8[4] = v6;
  v8[5] = v7;
  v8[6] = v6;
  v8[7] = v7;
  [v1 setCornerRadii_];
}

void sub_27455E404()
{
  OUTLINED_FUNCTION_29_10(OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_delegate);
  *(OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_topInset + v0) = 0x4000000000000000;
  v1 = v0 + OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_bottomInset;
  *v1 = 0;
  *(v1 + 8) = 1;
  v2 = v0 + OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_intermediateBottomInset;
  *v2 = 0;
  *(v2 + 8) = 1;
  *(v0 + OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_bottomRubberBandRange) = 0x4032000000000000;
  *(v0 + OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_grabberVisibility) = 0;
  *(v0 + OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_allowsDismissal) = 1;
  v3 = OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_contentView;
  *(v0 + v3) = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  v4 = OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_unscaledContentOverlay;
  *(v0 + v4) = [objc_allocWithZone(MEMORY[0x277D7D528]) init];
  v5 = v0 + OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_contentProvider;
  *(v5 + 32) = 0;
  *v5 = 0u;
  *(v5 + 16) = 0u;
  *(v0 + OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_automaticallyAdjustsScrollViewInsets) = 0;
  *(v0 + OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_scrollView) = 0;
  v6 = OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_translationView;
  *(v0 + v6) = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  v7 = OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_glassView;
  *(v0 + v7) = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  v8 = OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_verticalStretchTransformView;
  *(v0 + v8) = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  v9 = OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_opaqueOverlayFillView;
  *(v0 + v9) = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  v10 = OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_grabberView;
  *(v0 + v10) = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  *(v0 + OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_completedInitialValidLayoutPass) = 0;
  v11 = (v0 + OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_pendingLayoutWork);
  *v11 = 0;
  v11[1] = 0;
  *(v0 + OBJC_IVAR____TtC14WorkflowEditor11WFSheetView____lazy_storage___glassTintColor) = 0;
  v12 = (v0 + OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_initialGestureOrigin);
  *v12 = 0;
  v12[1] = 0;
  *(v0 + OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_initialGestureScrollOffset) = 0;
  *(v0 + OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_isTrackingPanGesture) = 0;
  *(v0 + OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_dimmingFraction) = 0;
  OUTLINED_FUNCTION_20_13("Fatal error", 11, 2, 37, 0x800000027468D320, "WorkflowEditor/WFSheetView.swift", v13, v14, 306, 0);
  __break(1u);
}

void sub_27455E640()
{
  OUTLINED_FUNCTION_29_10(OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_delegate);
  *(OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_topInset + v0) = 0x4000000000000000;
  v1 = v0 + OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_bottomInset;
  *v1 = 0;
  *(v1 + 8) = 1;
  v2 = v0 + OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_intermediateBottomInset;
  *v2 = 0;
  *(v2 + 8) = 1;
  *(v0 + OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_bottomRubberBandRange) = 0x4032000000000000;
  *(v0 + OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_grabberVisibility) = 0;
  *(v0 + OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_allowsDismissal) = 1;
  v3 = OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_contentView;
  *(v0 + v3) = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  v4 = OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_unscaledContentOverlay;
  *(v0 + v4) = [objc_allocWithZone(MEMORY[0x277D7D528]) init];
  v5 = v0 + OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_contentProvider;
  *(v5 + 32) = 0;
  *v5 = 0u;
  *(v5 + 16) = 0u;
  *(v0 + OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_automaticallyAdjustsScrollViewInsets) = 0;
  *(v0 + OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_scrollView) = 0;
  v6 = OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_translationView;
  *(v0 + v6) = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  v7 = OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_glassView;
  *(v0 + v7) = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  v8 = OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_verticalStretchTransformView;
  *(v0 + v8) = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  v9 = OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_opaqueOverlayFillView;
  *(v0 + v9) = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  v10 = OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_grabberView;
  *(v0 + v10) = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  *(v0 + OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_completedInitialValidLayoutPass) = 0;
  v11 = (v0 + OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_pendingLayoutWork);
  *v11 = 0;
  v11[1] = 0;
  *(v0 + OBJC_IVAR____TtC14WorkflowEditor11WFSheetView____lazy_storage___glassTintColor) = 0;
  v12 = (v0 + OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_initialGestureOrigin);
  *v12 = 0;
  v12[1] = 0;
  *(v0 + OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_initialGestureScrollOffset) = 0;
  *(v0 + OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_isTrackingPanGesture) = 0;
  *(v0 + OBJC_IVAR____TtC14WorkflowEditor11WFSheetView_dimmingFraction) = 0;
  OUTLINED_FUNCTION_20_13("Fatal error", 11, 2, 37, 0x8000000274689920, "WorkflowEditor/WFSheetView.swift", v13, v14, 311, 0);
  __break(1u);
}