uint64_t sub_227C42F20(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = sub_227D49AB8();
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

void sub_227C43098()
{
  OUTLINED_FUNCTION_11();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  if (v11)
  {
    OUTLINED_FUNCTION_154();
    if (v13 != v14)
    {
      if (v12 + 0x4000000000000000 < 0)
      {
LABEL_24:
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_153();
    }
  }

  else
  {
    v12 = v0;
  }

  v15 = *(v8 + 16);
  if (v12 <= v15)
  {
    v16 = *(v8 + 16);
  }

  else
  {
    v16 = v12;
  }

  if (!v16)
  {
    v21 = MEMORY[0x277D84F90];
    goto LABEL_18;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  v17 = OUTLINED_FUNCTION_300_0();
  v18 = v6(v17);
  OUTLINED_FUNCTION_10_0(v18);
  v20 = *(v19 + 72);
  OUTLINED_FUNCTION_241_0();
  v21 = OUTLINED_FUNCTION_436_0();
  _swift_stdlib_malloc_size(v21);
  if (!v20)
  {
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  OUTLINED_FUNCTION_187_0();
  v23 = v23 && v20 == -1;
  if (v23)
  {
    goto LABEL_23;
  }

  v21[2] = v15;
  v21[3] = 2 * (v22 / v20);
LABEL_18:
  v6(0);
  OUTLINED_FUNCTION_19();
  if (v10)
  {
    sub_227C4186C(v8 + v24, v15, v21 + v24, v4);
    *(v8 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_211();
  }

  OUTLINED_FUNCTION_8_1();
}

BOOL sub_227C43208(char *a1, char *a2)
{
  v22 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E67C0, &unk_227D4FB20);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v21 - v6;
  v21 = v2;
  v8 = *v2;
  sub_227B1A6E4(&qword_27D7E6868);
  v27 = a2;
  v9 = sub_227D4CE98();
  v24 = v8;
  v25 = v8 + 56;
  v10 = ~(-1 << *(v8 + 32));
  v26 = v5 + 16;
  v23 = v5 + 8;
  while (1)
  {
    v11 = v9 & v10;
    v12 = (1 << (v9 & v10)) & *(v25 + (((v9 & v10) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v12)
    {
      v17 = v21;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v19 = v27;
      (*(v5 + 16))(v7, v27, v4);
      v28 = *v17;
      sub_227C4382C(v7, v11, isUniquelyReferenced_nonNull_native);
      *v17 = v28;
      (*(v5 + 32))(v22, v19, v4);
      return v12 == 0;
    }

    v13 = *(v5 + 72) * v11;
    v14 = *(v5 + 16);
    v14(v7, *(v24 + 48) + v13, v4);
    sub_227B1A6E4(&qword_27D7E6870);
    v15 = sub_227D4CF38();
    v16 = *(v5 + 8);
    v16(v7, v4);
    if (v15)
    {
      break;
    }

    v9 = v11 + 1;
  }

  v16(v27, v4);
  v14(v22, *(v24 + 48) + v13, v4);
  return v12 == 0;
}

uint64_t sub_227C434D0(uint64_t a1)
{
  v2 = v1;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E67C0, &unk_227D4FB20);
  v3 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v35 = &v29 - v4;
  v5 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E96D0, &unk_227D5E250);
  result = sub_227D4D638();
  v7 = result;
  if (!*(v5 + 16))
  {
LABEL_27:

    *v2 = v7;
    return result;
  }

  v30 = v1;
  v31 = v5;
  v8 = 0;
  v9 = (v5 + 56);
  v10 = 1 << *(v5 + 32);
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v12 = v11 & *(v5 + 56);
  v13 = (v10 + 63) >> 6;
  v34 = v3 + 32;
  v14 = result + 56;
  if (!v12)
  {
LABEL_7:
    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v8 >= v13)
      {
        break;
      }

      v17 = v9[v8];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v12 = (v17 - 1) & v17;
        goto LABEL_12;
      }
    }

    v28 = 1 << *(v5 + 32);
    if (v28 >= 64)
    {
      sub_227B26E40(0, (v28 + 63) >> 6, v9);
    }

    else
    {
      *v9 = -1 << v28;
    }

    v2 = v30;
    *(v5 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v15 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_12:
    v18 = *(v5 + 48) + *(v3 + 72) * (v15 | (v8 << 6));
    v19 = *(v3 + 32);
    v32 = *(v3 + 72);
    v33 = v19;
    v19(v35, v18, v36);
    sub_227B1A6E4(&qword_27D7E6868);
    result = sub_227D4CE98();
    v20 = -1 << *(v7 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v14 + 8 * (v21 >> 6))) == 0)
    {
      break;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v14 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    result = v33(*(v7 + 48) + v23 * v32, v35, v36);
    ++*(v7 + 16);
    v5 = v31;
    if (!v12)
    {
      goto LABEL_7;
    }
  }

  v24 = 0;
  v25 = (63 - v20) >> 6;
  while (++v22 != v25 || (v24 & 1) == 0)
  {
    v26 = v22 == v25;
    if (v22 == v25)
    {
      v22 = 0;
    }

    v24 |= v26;
    v27 = *(v14 + 8 * v22);
    if (v27 != -1)
    {
      v23 = __clz(__rbit64(~v27)) + (v22 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_227C4382C(uint64_t a1, unint64_t a2, char a3)
{
  v22 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E67C0, &unk_227D4FB20);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v21 - v8;
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  if (v11 <= v10 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_227C434D0(v10 + 1);
      goto LABEL_8;
    }

    if (v11 <= v10)
    {
      sub_227C43CF4(v10 + 1);
LABEL_8:
      v21 = v3;
      v12 = *v3;
      sub_227B1A6E4(&qword_27D7E6868);
      v13 = sub_227D4CE98();
      v14 = ~(-1 << *(v12 + 32));
      while (1)
      {
        a2 = v13 & v14;
        if (((*(v12 + 56 + (((v13 & v14) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v13 & v14)) & 1) == 0)
        {
          break;
        }

        (*(v7 + 16))(v9, *(v12 + 48) + *(v7 + 72) * a2, v6);
        sub_227B1A6E4(&qword_27D7E6870);
        v15 = sub_227D4CF38();
        (*(v7 + 8))(v9, v6);
        if (v15)
        {
          goto LABEL_16;
        }

        v13 = a2 + 1;
      }

      v3 = v21;
      goto LABEL_13;
    }

    sub_227C43AB8();
  }

LABEL_13:
  v16 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v7 + 32))(*(v16 + 48) + *(v7 + 72) * a2, v22, v6);
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (v19)
  {
    __break(1u);
LABEL_16:
    result = sub_227D4DAD8();
    __break(1u);
  }

  else
  {
    *(v16 + 16) = v20;
  }

  return result;
}

void *sub_227C43AB8()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E67C0, &unk_227D4FB20);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v21 - v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E96D0, &unk_227D5E250);
  v6 = *v0;
  v7 = sub_227D4D628();
  v8 = v7;
  if (*(v6 + 16))
  {
    v22 = v1;
    result = (v7 + 56);
    v10 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v6 + 56 + 8 * v10)
    {
      result = memmove(result, (v6 + 56), 8 * v10);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v6 + 56);
    v16 = (v13 + 63) >> 6;
    v23 = v3 + 32;
    for (i = v3 + 16; v15; result = (*(v3 + 32))(*(v8 + 48) + v20, v5, v2))
    {
      v17 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v20 = *(v3 + 72) * (v17 | (v12 << 6));
      (*(v3 + 16))(v5, *(v6 + 48) + v20, v2);
    }

    v18 = v12;
    while (1)
    {
      v12 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v12 >= v16)
      {

        v1 = v22;
        goto LABEL_21;
      }

      v19 = *(v6 + 56 + 8 * v12);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v8;
  }

  return result;
}

uint64_t sub_227C43CF4(uint64_t a1)
{
  v2 = v1;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E67C0, &unk_227D4FB20);
  v3 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v5 = &v28 - v4;
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E96D0, &unk_227D5E250);
  v7 = sub_227D4D638();
  result = v6;
  if (*(v6 + 16))
  {
    v28 = v1;
    v9 = 0;
    v10 = v6 + 56;
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v31 = v3 + 16;
    v32 = v3;
    v15 = v7 + 56;
    v29 = (v3 + 32);
    v30 = result;
    if (v13)
    {
      while (1)
      {
        v16 = __clz(__rbit64(v13));
        v13 &= v13 - 1;
LABEL_12:
        v19 = *(v32 + 72);
        (*(v32 + 16))(v5, *(result + 48) + v19 * (v16 | (v9 << 6)), v33);
        sub_227B1A6E4(&qword_27D7E6868);
        result = sub_227D4CE98();
        v20 = -1 << *(v7 + 32);
        v21 = result & ~v20;
        v22 = v21 >> 6;
        if (((-1 << v21) & ~*(v15 + 8 * (v21 >> 6))) == 0)
        {
          break;
        }

        v23 = __clz(__rbit64((-1 << v21) & ~*(v15 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v15 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
        (*v29)(*(v7 + 48) + v23 * v19, v5, v33);
        ++*(v7 + 16);
        result = v30;
        if (!v13)
        {
          goto LABEL_7;
        }
      }

      v24 = 0;
      v25 = (63 - v20) >> 6;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v15 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v17 = v9;
      while (1)
      {
        v9 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
          break;
        }

        if (v9 >= v14)
        {

          v2 = v28;
          goto LABEL_25;
        }

        v18 = *(v10 + 8 * v9);
        ++v17;
        if (v18)
        {
          v16 = __clz(__rbit64(v18));
          v13 = (v18 - 1) & v18;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v2 = v7;
  }

  return result;
}

void sub_227C44010(uint64_t a1, char a2, void *a3)
{
  v51 = a3;
  v6 = sub_227D49B88();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v50 = v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E67C0, &unk_227D4FB20);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v52 = v39 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E96B0, &qword_227D5E228);
  v13 = MEMORY[0x28223BE20](v12);
  v47 = v39 - v15;
  v46 = *(a1 + 16);
  if (!v46)
  {
LABEL_13:

    return;
  }

  v39[1] = v3;
  v39[2] = v14;
  v16 = 0;
  v45 = a1 + ((*(v14 + 80) + 32) & ~*(v14 + 80));
  v17 = *(v13 + 48);
  v43 = v9;
  v44 = v17;
  v48 = (v7 + 32);
  v49 = (v10 + 32);
  v40 = a1;
  v41 = v7;
  v42 = v6;
  while (1)
  {
    if (v16 >= *(a1 + 16))
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

    v18 = v47;
    sub_227C4BC80();
    v19 = *v49;
    v20 = v52;
    (*v49)(v52, v18, v9);
    v21 = *v48;
    (*v48)(v50, &v18[v44], v6);
    v22 = *v51;
    v24 = sub_227B266C4(v20);
    v25 = v22[2];
    v26 = (v23 & 1) == 0;
    v27 = v25 + v26;
    if (__OFADD__(v25, v26))
    {
      goto LABEL_19;
    }

    v28 = v23;
    if (v22[3] < v27)
    {
      break;
    }

    if (a2)
    {
      if (v23)
      {
        goto LABEL_15;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E96C0, &unk_227D5E238);
      sub_227D4D7D8();
      if (v28)
      {
        goto LABEL_15;
      }
    }

LABEL_11:
    v31 = v52;
    v32 = *v51;
    *(*v51 + 8 * (v24 >> 6) + 64) |= 1 << v24;
    v9 = v43;
    v19(v32[6] + *(v10 + 72) * v24, v31, v43);
    v33 = v32[7] + *(v41 + 72) * v24;
    v6 = v42;
    v21(v33, v50, v42);
    v34 = v32[2];
    v35 = __OFADD__(v34, 1);
    v36 = v34 + 1;
    if (v35)
    {
      goto LABEL_20;
    }

    ++v16;
    v32[2] = v36;
    a2 = 1;
    a1 = v40;
    if (v46 == v16)
    {
      goto LABEL_13;
    }
  }

  sub_227C44558(v27, a2 & 1);
  v29 = sub_227B266C4(v52);
  if ((v28 & 1) != (v30 & 1))
  {
    goto LABEL_21;
  }

  v24 = v29;
  if ((v28 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_15:
  v37 = swift_allocError();
  swift_willThrow();

  v55 = v37;
  v38 = v37;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E69C0, &qword_227D4EAD0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    (*(v41 + 8))(v50, v42);
    (*(v10 + 8))(v52, v43);

    return;
  }

LABEL_22:
  v53 = 0;
  v54 = 0xE000000000000000;
  sub_227D4D668();
  MEMORY[0x22AAA5DA0](0xD00000000000001BLL, 0x8000000227D77FE0);
  sub_227D4D7B8();
  MEMORY[0x22AAA5DA0](39, 0xE100000000000000);
  sub_227D4D7F8();
  __break(1u);
}

uint64_t sub_227C44558(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v52 = sub_227D49B88();
  v5 = *(v52 - 8);
  MEMORY[0x28223BE20](v52);
  v51 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E67C0, &unk_227D4FB20);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v53 = &v40 - v9;
  v10 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E96B8, &qword_227D5E230);
  v47 = v4;
  result = sub_227D4D828();
  v12 = result;
  if (*(v10 + 16))
  {
    v13 = 0;
    v14 = v8;
    v15 = (v10 + 64);
    v16 = 1 << *(v10 + 32);
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v18 = v17 & *(v10 + 64);
    v19 = (v16 + 63) >> 6;
    v43 = (v14 + 16);
    v44 = v14;
    v41 = v2;
    v42 = v5 + 16;
    v45 = v10;
    v46 = v5;
    v48 = (v5 + 32);
    v49 = (v14 + 32);
    v20 = result + 64;
    v21 = v14;
    while (v18)
    {
      v22 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
LABEL_13:
      v25 = v22 | (v13 << 6);
      v26 = *(v10 + 48);
      v50 = *(v21 + 72);
      v27 = v26 + v50 * v25;
      if (v47)
      {
        (*v49)(v53, v27, v7);
        v28 = *(v10 + 56);
        v29 = *(v46 + 72);
        (*(v46 + 32))(v51, v28 + v29 * v25, v52);
      }

      else
      {
        (*v43)(v53, v27, v7);
        v30 = *(v10 + 56);
        v29 = *(v46 + 72);
        (*(v46 + 16))(v51, v30 + v29 * v25, v52);
      }

      sub_227B1A6E4(&qword_27D7E6868);
      result = sub_227D4CE98();
      v31 = -1 << *(v12 + 32);
      v32 = result & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v20 + 8 * (v32 >> 6))) == 0)
      {
        v35 = 0;
        v36 = (63 - v31) >> 6;
        while (++v33 != v36 || (v35 & 1) == 0)
        {
          v37 = v33 == v36;
          if (v33 == v36)
          {
            v33 = 0;
          }

          v35 |= v37;
          v38 = *(v20 + 8 * v33);
          if (v38 != -1)
          {
            v34 = __clz(__rbit64(~v38)) + (v33 << 6);
            goto LABEL_25;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v34 = __clz(__rbit64((-1 << v32) & ~*(v20 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
LABEL_25:
      *(v20 + ((v34 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v34;
      (*v49)((*(v12 + 48) + v50 * v34), v53, v7);
      result = (*v48)(*(v12 + 56) + v29 * v34, v51, v52);
      ++*(v12 + 16);
      v21 = v44;
      v10 = v45;
    }

    v23 = v13;
    while (1)
    {
      v13 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v13 >= v19)
      {
        break;
      }

      v24 = v15[v13];
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v18 = (v24 - 1) & v24;
        goto LABEL_13;
      }
    }

    if ((v47 & 1) == 0)
    {

      v3 = v41;
      goto LABEL_33;
    }

    v39 = 1 << *(v10 + 32);
    v3 = v41;
    if (v39 >= 64)
    {
      sub_227B26E40(0, (v39 + 63) >> 6, v15);
    }

    else
    {
      *v15 = -1 << v39;
    }

    *(v10 + 16) = 0;
  }

LABEL_33:
  *v3 = v12;
  return result;
}

uint64_t sub_227C449FC()
{
  v1 = v0;
  sub_227B17CD8();
  if ((v3 & 1) == 0)
  {
    return 0;
  }

  v4 = v2;
  swift_isUniquelyReferenced_nonNull_native();
  v7 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9688, &qword_227D5E1F8);
  sub_227D4D7C8();
  type metadata accessor for GameActivityDefinitionStoreRegistry.DefinitionStoreKey(0);
  sub_227B179FC();
  v5 = *(*(v7 + 56) + 8 * v4);
  type metadata accessor for GameActivityDefinitionStore();
  sub_227B180A0(&unk_27D7FD290);
  sub_227D4D7E8();
  *v1 = v7;
  return v5;
}

uint64_t sub_227C44B64()
{
  v1 = v0;
  sub_227B17CD8();
  if ((v3 & 1) == 0)
  {
    return 0;
  }

  v4 = v2;
  swift_isUniquelyReferenced_nonNull_native();
  v7 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9680, &qword_227D5E1F0);
  sub_227D4D7C8();
  type metadata accessor for GameActivityInstanceStoreRegistry.GameActivityStoreKey(0);
  sub_227B179FC();
  v5 = *(*(v7 + 56) + 8 * v4);
  type metadata accessor for GameActivityInstanceStore();
  sub_227B180A0(&unk_280E7C638);
  sub_227D4D7E8();
  *v1 = v7;
  return v5;
}

uint64_t sub_227C44CCC(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v7 = type metadata accessor for GameActivityDefinitionStoreRegistry.DefinitionStoreKey(0);
  MEMORY[0x28223BE20](v7);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v3;
  sub_227B17CD8();
  if (__OFADD__(*(v10 + 16), (v12 & 1) == 0))
  {
    __break(1u);
    goto LABEL_11;
  }

  v13 = v11;
  v14 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9688, &qword_227D5E1F8);
  if ((sub_227D4D7C8() & 1) == 0)
  {
    goto LABEL_5;
  }

  sub_227B17CD8();
  if ((v14 & 1) != (v16 & 1))
  {
LABEL_11:
    result = sub_227D4DAE8();
    __break(1u);
    return result;
  }

  v13 = v15;
LABEL_5:
  if (v14)
  {
    *(*(*v4 + 56) + 8 * v13) = a1;
  }

  else
  {
    sub_227B18028(a2, v9);
    return sub_227C450D4();
  }
}

uint64_t sub_227C44ED0(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v7 = type metadata accessor for GameActivityInstanceStoreRegistry.GameActivityStoreKey(0);
  MEMORY[0x28223BE20](v7);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v3;
  sub_227B17CD8();
  if (__OFADD__(*(v10 + 16), (v12 & 1) == 0))
  {
    __break(1u);
    goto LABEL_11;
  }

  v13 = v11;
  v14 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9680, &qword_227D5E1F0);
  if ((sub_227D4D7C8() & 1) == 0)
  {
    goto LABEL_5;
  }

  sub_227B17CD8();
  if ((v14 & 1) != (v16 & 1))
  {
LABEL_11:
    result = sub_227D4DAE8();
    __break(1u);
    return result;
  }

  v13 = v15;
LABEL_5:
  if (v14)
  {
    *(*(*v4 + 56) + 8 * v13) = a1;
  }

  else
  {
    sub_227B18028(a2, v9);
    return sub_227C450D4();
  }
}

uint64_t sub_227C450D4()
{
  OUTLINED_FUNCTION_236_0();
  v3 = v2;
  *(v4 + 8 * (v2 >> 6) + 64) |= 1 << v2;
  v6 = v5(0);
  OUTLINED_FUNCTION_5(v6);
  v7 = OUTLINED_FUNCTION_305();
  result = sub_227C4B9D0(v7, v8);
  *(*(v0 + 56) + 8 * v3) = v1;
  v10 = *(v0 + 16);
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    *(v0 + 16) = v12;
  }

  return result;
}

uint64_t *sub_227C451D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char *a7, uint64_t a8, __int128 a9, __int128 a10, __int128 a11, uint64_t a12, uint64_t a13, unsigned __int8 a14, uint64_t a15, char a16, uint64_t a17, char a18, unsigned __int8 a19, __int128 a20, __int128 a21, uint64_t a22, unsigned __int8 a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28)
{
  v57 = a6;
  v58 = a7;
  v55 = a4;
  v56 = a5;
  v53 = a2;
  v54 = a3;
  v52 = a1;
  v50 = a10;
  v51 = a9;
  v49 = a11;
  v47 = a13;
  v48 = a12;
  v46 = a14;
  v44 = a17;
  v45 = a15;
  v43 = a19;
  v42 = a20;
  v41 = a21;
  v40 = a22;
  v39 = a23;
  v28 = *(a27 - 8);
  v29 = MEMORY[0x28223BE20](a1);
  v31 = &v38[-((v30 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v29);
  v33 = &v38[-v32];
  (*(v28 + 32))(&v38[-v32], v34, a27);
  v35 = swift_allocObject();
  (*(v28 + 16))(v31, v33, a27);
  v36 = sub_227C4544C(v52, v53, v54, v55, v56, v57, v58, v31, v51, *(&v51 + 1), v50, *(&v50 + 1), v49, *(&v49 + 1), v48, v47, v46, v45, a16 & 1, v44, a18 & 1, v43, v42, *(&v42 + 1), v41, *(&v41 + 1), v40, v39, a24, a25, v35, a27, a28);
  (*(v28 + 8))(v33, a27);
  return v36;
}

uint64_t *sub_227C4544C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, unsigned __int8 a17, uint64_t a18, unsigned __int8 a19, uint64_t a20, unsigned __int8 a21, unsigned __int8 a22, const void *a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, unsigned __int8 a28, char a29, uint64_t a30, uint64_t *a31, uint64_t a32, uint64_t a33)
{
  v109 = a7;
  v85 = a6;
  v84 = a5;
  v83 = a4;
  v80 = a3;
  v79 = a2;
  v115 = a28;
  v113 = a27;
  v110 = a26;
  v107 = a24;
  v108 = a25;
  v106 = a23;
  v105 = a22;
  v104 = a20;
  v103 = a21;
  v102 = a18;
  v100 = a17;
  v101 = a19;
  v77 = a16;
  v97 = a15;
  v96 = a13;
  v95 = a14;
  v93 = a11;
  v92 = a12;
  v81 = a30;
  v36 = *a31;
  v90 = a9;
  v89 = a10;
  v82 = a33;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6CD8, &qword_227D5C1C0);
  MEMORY[0x28223BE20](v98);
  v91 = &v75 - v37;
  v86 = sub_227D49188();
  v87 = *(v86 - 8);
  MEMORY[0x28223BE20](v86);
  v78 = &v75 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_227D492A8();
  v40 = *(v39 - 8);
  v41 = MEMORY[0x28223BE20](v39);
  v43 = &v75 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = a32;
  MEMORY[0x28223BE20](v41);
  v45 = &v75 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = v46;
  (*(v46 + 32))(v45, a8);
  a31[6] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E91F0, &qword_227D5C220);
  v47 = sub_227B17E0C(&unk_27D7E91D8);
  v117 = v36;
  v118 = v36;
  v119 = v47;
  v120 = v47;
  a31[7] = swift_getOpaqueTypeConformance2();
  __swift_allocate_boxed_opaque_existential_1(a31 + 3);
  sub_227D4CC08();
  *(a31 + 4) = 16843009;
  *(a31 + 10) = 257;
  v88 = a31 + 20;
  *(a31 + 22) = 1;
  v94 = a31 + 22;
  sub_227D494B8();
  v48 = *(v40 + 16);
  v116 = a1;
  v48(v43, a1, v39);
  __swift_project_boxed_opaque_existential_1(a31 + 3, a31[6]);
  swift_getKeyPath();
  sub_227B17E0C(&unk_280E7B6F8);
  v49 = v77;
  sub_227D4CAD8();

  v50 = *(v40 + 8);
  v114 = v39;
  v112 = v40 + 8;
  v99 = v50;
  v50(v43, v39);
  sub_227C3C834(v79);
  sub_227C31FB4();
  sub_227C31FB4();
  sub_227C34014(v81, (a31 + 3), v51, &unk_227D5C660, &qword_27D7E7710, &qword_227D531D0, sub_227C170F8, v52, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86);
  v53 = v76;
  v54 = sub_227D49AE8();
  sub_227C3C834(v54);
  v55 = v78;
  v109 = v45;
  v56 = v53;
  sub_227D49AD8();
  __swift_project_boxed_opaque_existential_1(a31 + 3, a31[6]);
  swift_getKeyPath();
  sub_227B17E0C(&unk_27D7E7528);
  v57 = v55;
  v58 = v86;
  sub_227D4CAD8();

  (*(v87 + 8))(v57, v58);
  sub_227C3C834(v90);
  sub_227C3C834(v93);
  sub_227C31FB4();
  sub_227C330DC(v97);
  v59 = v91;
  sub_227C4BC80();
  __swift_project_boxed_opaque_existential_1(a31 + 3, a31[6]);
  swift_getKeyPath();
  sub_227C3F494();
  sub_227D4CAD8();

  sub_227C1CB1C(v59, &qword_27D7E6CD8);
  *(a31 + 19) = 0;
  __swift_project_boxed_opaque_existential_1(a31 + 3, a31[6]);
  swift_getKeyPath();
  LOBYTE(v117) = v100;
  sub_227D4CAD8();

  sub_227C3381C();
  sub_227C3381C();
  if (v105)
  {
    if (v105 == 1)
    {
      v60 = 0x6E6F7268636E7973;
    }

    else
    {
      v60 = 0x6F7268636E797361;
    }
  }

  else
  {
    v60 = 0x6669636570736E75;
  }

  v61 = v116;
  v62 = v115;
  v63 = v106;
  v64 = v94;
  sub_227C3C834(v60);
  sub_227C33B9C(v63, v64, a31 + 3);
  sub_227C34014(v107, (a31 + 3), v65, &unk_227D5C7B0, &qword_27D7E7710, &qword_227D531D0, sub_227C170F8, v66, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86);
  sub_227C34014(v108, (a31 + 3), v67, &unk_227D5C7D8, &qword_27D7E7710, &qword_227D531D0, sub_227C170F8, v68, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86);
  sub_227C34014(v110, (a31 + 3), v69, &unk_227D5C4E8, &qword_27D7E7710, &qword_227D531D0, sub_227C170F8, v70, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86);
  sub_227C34014(v113, (a31 + 3), v71, &unk_227D5C4B8, &qword_27D7E7710, &qword_227D531D0, sub_227C170F8, v72, v75, v76, v77, v78, v79, v80, v81, v82, v83, v84, v85, v86);
  if (v62)
  {
    if (v62 == 1)
    {
      v73 = 0x646567617473;
    }

    else
    {
      v73 = 0x6D706F6C65766564;
    }
  }

  else
  {
    v73 = 1702259052;
  }

  sub_227C3C834(v73);
  __swift_project_boxed_opaque_existential_1(a31 + 3, a31[6]);
  swift_getKeyPath();
  LOBYTE(v117) = a29 & 1;
  sub_227D4CAD8();

  sub_227C1CB1C(v49, &qword_27D7E6CD8);
  v99(v61, v114);
  (*(v111 + 8))(v109, v56);
  return a31;
}

unint64_t sub_227C45EE4()
{
  result = qword_280E7B338[0];
  if (!qword_280E7B338[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280E7B338);
  }

  return result;
}

uint64_t sub_227C45F98()
{
  OUTLINED_FUNCTION_263();
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_41();
  sub_227B17E0C(v0);
  OUTLINED_FUNCTION_31_3();
  sub_227B17E0C(v1);
  OUTLINED_FUNCTION_27_6();
  sub_227D4CC88();
}

uint64_t sub_227C46078()
{
  OUTLINED_FUNCTION_307();
  swift_getKeyPath();
  v0 = OUTLINED_FUNCTION_201();
  sub_227B17E0C(v0);
  OUTLINED_FUNCTION_179_2();
  sub_227C411D0(v1);
  sub_227D4CC88();
}

unint64_t sub_227C4614C()
{
  result = qword_27D7E9270;
  if (!qword_27D7E9270)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7E6D08, &qword_227D59460);
    sub_227B17E0C(&unk_280E7B6E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E9270);
  }

  return result;
}

uint64_t sub_227C46200()
{
  OUTLINED_FUNCTION_263();
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_41();
  sub_227B17E0C(v0);
  sub_227C3F588();
  OUTLINED_FUNCTION_27_6();
  sub_227D4CC88();
}

uint64_t sub_227C46280()
{
  OUTLINED_FUNCTION_263();
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_41();
  sub_227B17E0C(v0);
  sub_227C3F588();
  OUTLINED_FUNCTION_27_6();
  sub_227D4CC88();
}

uint64_t sub_227C46300()
{
  OUTLINED_FUNCTION_263();
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_41();
  sub_227B17E0C(v0);
  sub_227C3F588();
  OUTLINED_FUNCTION_27_6();
  sub_227D4CC88();
}

uint64_t sub_227C46380()
{
  OUTLINED_FUNCTION_263();
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_41();
  sub_227B17E0C(v0);
  OUTLINED_FUNCTION_2_26();
  sub_227B17E0C(v1);
  OUTLINED_FUNCTION_27_6();
  sub_227D4CC98();
}

uint64_t sub_227C46420()
{
  OUTLINED_FUNCTION_263();
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_41();
  sub_227B17E0C(v0);
  sub_227C19A60();
  v1 = OUTLINED_FUNCTION_297_0();
  OUTLINED_FUNCTION_448_0(v1, v2, v3, v4);
}

uint64_t sub_227C46568(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char *a7, uint64_t a8, __int128 a9, __int128 a10, __int128 a11, __int128 a12, __int128 a13, __int128 a14, uint64_t a15, char *a16, unsigned __int8 a17, __int128 a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  v46 = a6;
  v47 = a7;
  v44 = a4;
  v45 = a5;
  v42 = a2;
  v43 = a3;
  v41 = a1;
  v39 = a10;
  v40 = a9;
  v37 = a12;
  v38 = a11;
  v35 = a14;
  v36 = a13;
  v34 = a15;
  v33 = a18;
  v23 = *(a22 - 8);
  v24 = MEMORY[0x28223BE20](a1);
  v26 = &v33 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v28 = &v33 - v27;
  (*(v23 + 32))(&v33 - v27, v29, a22);
  v30 = swift_allocObject();
  (*(v23 + 16))(v26, v28, a22);
  v31 = sub_227C46770(v41, v42, v43, v44, v45, v46, v47, v26, v40, *(&v40 + 1), v39, *(&v39 + 1), v38, *(&v38 + 1), v37, *(&v37 + 1), v36, *(&v36 + 1), v35, *(&v35 + 1), v34, a16, a17, v33, *(&v33 + 1), a19, a20, v30, a22, a23);
  (*(v23 + 8))(v28, a22);
  return v31;
}

uint64_t sub_227C46770(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char *a7, uint64_t a8, uint64_t a9, uint64_t a10, unint64_t a11, uint64_t a12, char *a13, uint64_t a14, uint64_t a15, uint64_t a16, void (**a17)(char *, uint64_t), uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char *a22, unsigned __int8 a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  v155 = a8;
  v149 = a7;
  v148 = a6;
  v147 = a5;
  v146 = a4;
  v133 = a27;
  v129 = a26;
  v128 = a25;
  v134 = a24;
  v123 = a23;
  v135 = a22;
  v122 = a21;
  v166 = a20;
  v130 = a19;
  v156 = a16;
  v157 = a15;
  v158 = a14;
  v159 = a13;
  v163 = a18;
  v164 = a17;
  v153 = a11;
  v151 = a12;
  v160 = a10;
  v150 = a9;
  v34 = *a28;
  v145 = a30;
  v116 = sub_227D4CAB8();
  v115 = *(v116 - 8);
  MEMORY[0x28223BE20](v116);
  v114 = &v111 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9200, &unk_227D5C318);
  v112 = *(v113 - 8);
  MEMORY[0x28223BE20](v113);
  v111 = &v111 - v36;
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6938, &qword_227D4E760);
  v118 = *(v119 - 8);
  MEMORY[0x28223BE20](v119);
  v117 = &v111 - v37;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6CF0, "ƈ");
  MEMORY[0x28223BE20](v38 - 8);
  v121 = &v111 - v39;
  v126 = sub_227D49AC8();
  v120 = *(v126 - 8);
  v40 = MEMORY[0x28223BE20](v126);
  v124 = &v111 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v40);
  v125 = &v111 - v42;
  v162 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E67C0, &unk_227D4FB20);
  v165 = *(v162 - 8);
  MEMORY[0x28223BE20](v162);
  v152 = &v111 - v43;
  v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6D08, &qword_227D59460);
  MEMORY[0x28223BE20](v144);
  v143 = &v111 - v44;
  v141 = sub_227D49188();
  v142 = *(v141 - 8);
  MEMORY[0x28223BE20](v141);
  v140 = &v111 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_227D492A8();
  v47 = *(v46 - 8);
  v48 = MEMORY[0x28223BE20](v46);
  v50 = &v111 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v161 = a29;
  MEMORY[0x28223BE20](v48);
  v52 = &v111 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  v127 = v53;
  (*(v53 + 32))(v52, v155);
  *(a28 + 48) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9208, &qword_227D5C328);
  v54 = sub_227B17E0C(&unk_280E7B4C0);
  v167 = v34;
  v168 = v34;
  v169 = v54;
  v170 = v54;
  *(a28 + 56) = swift_getOpaqueTypeConformance2();
  __swift_allocate_boxed_opaque_existential_1((a28 + 24));
  sub_227D4CC08();
  *(a28 + 16) = 0x101010101010101;
  v139 = a28 + 16;
  sub_227D494B8();
  sub_227D4CE58();
  v131 = a1;
  v132 = a2;
  sub_227C3C834(a1);
  v138 = *(v47 + 16);
  v136 = a3;
  v138(v50, a3, v46);
  __swift_project_boxed_opaque_existential_1((a28 + 24), *(a28 + 48));
  swift_getKeyPath();
  v137 = sub_227B17E0C(&unk_280E7B6F8);
  sub_227D4CAD8();

  v154 = *(v47 + 8);
  v155 = v47 + 8;
  v154(v50, v46);
  sub_227C3C834(v146);
  sub_227C3C834(v148);
  v55 = sub_227D49AE8();
  sub_227C3C834(v55);
  v56 = v140;
  v149 = v52;
  sub_227D49AD8();
  __swift_project_boxed_opaque_existential_1((a28 + 24), *(a28 + 48));
  swift_getKeyPath();
  sub_227B17E0C(&unk_27D7E7528);
  v57 = v141;
  sub_227D4CAD8();

  (*(v142 + 8))(v56, v57);
  sub_227C330DC(v150);
  v58 = sub_227D49638();
  sub_227C3C834(v58);
  sub_227C31FB4();
  v138(v50, v159, v46);
  __swift_project_boxed_opaque_existential_1((a28 + 24), *(a28 + 48));
  swift_getKeyPath();
  sub_227D4CAD8();

  v151 = v46;
  v154(v50, v46);
  v59 = v143;
  sub_227C4BC80();
  __swift_project_boxed_opaque_existential_1((a28 + 24), *(a28 + 48));
  swift_getKeyPath();
  sub_227C3F588();
  sub_227D4CAD8();

  sub_227C1CB1C(v59, &qword_27D7E6D08);
  *(a28 + 17) = 0;
  sub_227C4BC80();
  __swift_project_boxed_opaque_existential_1((a28 + 24), *(a28 + 48));
  swift_getKeyPath();
  sub_227D4CAD8();

  sub_227C1CB1C(v59, &qword_27D7E6D08);
  *(a28 + 18) = 0;
  sub_227C4BC80();
  __swift_project_boxed_opaque_existential_1((a28 + 24), *(a28 + 48));
  swift_getKeyPath();
  sub_227D4CAD8();

  sub_227C1CB1C(v59, &qword_27D7E6D08);
  *(a28 + 19) = 0;
  v60 = sub_227D4DC28();
  __swift_project_boxed_opaque_existential_1((a28 + 24), *(a28 + 48));
  swift_getKeyPath();
  v167 = v60;
  sub_227D4CAD8();

  v61 = v166 + 56;
  v62 = 1 << *(v166 + 32);
  v63 = -1;
  if (v62 < 64)
  {
    v63 = ~(-1 << v62);
  }

  v64 = v63 & *(v166 + 56);
  v65 = (v62 + 63) >> 6;
  v163 = v165 + 16;
  v164 = (v165 + 8);
  result = sub_227D4CE58();
  v67 = 0;
  v153 = MEMORY[0x277D84F90];
  while (1)
  {
    v68 = v67;
    v69 = v162;
    v70 = v152;
    if (!v64)
    {
      break;
    }

LABEL_8:
    v71 = __clz(__rbit64(v64));
    v64 &= v64 - 1;
    (*(v165 + 16))(v152, *(v166 + 48) + *(v165 + 72) * (v71 | (v67 << 6)), v162);
    v72 = sub_227D4A898();
    v74 = v73;
    (*v164)(v70, v69);
    v75 = v153;
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_227B25F88(0, *(v75 + 16) + 1, 1, v75);
      v75 = result;
    }

    v77 = *(v75 + 16);
    v76 = *(v75 + 24);
    v78 = v77 + 1;
    if (v77 >= v76 >> 1)
    {
      v153 = v77 + 1;
      result = sub_227B25F88((v76 > 1), v77 + 1, 1, v75);
      v78 = v153;
      v75 = result;
    }

    *(v75 + 16) = v78;
    v153 = v75;
    v79 = v75 + 16 * v77;
    *(v79 + 32) = v72;
    *(v79 + 40) = v74;
  }

  while (1)
  {
    v67 = v68 + 1;
    if (__OFADD__(v68, 1))
    {
      break;
    }

    if (v67 >= v65)
    {

      v80 = sub_227B30834(v153);
      sub_227C34014(v80, a28 + 24, v81, &unk_227D5C8C8, &qword_27D7E68F0, &qword_227D5B840, sub_227C19A60, v82, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121, v122);
      sub_227C37E24();
      v84 = v83;

      sub_227C330DC(v84);
      v85 = v135;
      sub_227D4A898();
      v86 = v124;
      v87 = v121;
      sub_227C31FB4();
      __swift_project_boxed_opaque_existential_1((a28 + 24), *(a28 + 48));
      swift_getKeyPath();
      LOBYTE(v167) = v123 & 1;
      sub_227D4CAD8();

      v88 = v134;
      sub_227C4BC80();
      v89 = v126;
      if (__swift_getEnumTagSinglePayload(v87, 1, v126) == 1)
      {
        sub_227C1CB1C(v87, &qword_27D7E6CF0);
        goto LABEL_15;
      }

      v91 = v120;
      v92 = v125;
      (*(v120 + 32))(v125, v87, v89);
      (*(v91 + 16))(v86, v92, v89);
      v93 = (*(v91 + 88))(v86, v89);
      if (v93 == *MEMORY[0x277D0CB90])
      {
        (*(v91 + 96))(v86, v89);
        (*(v118 + 32))(v117, v86, v119);
        sub_227D4A7D8();
        v90 = v133;
        sub_227C31FB4();
        (*(v118 + 8))(v117, v119);
        goto LABEL_20;
      }

      if (v93 == *MEMORY[0x277D0CB98])
      {
        (*(v91 + 96))(v86, v89);
        (*(v112 + 32))(v111, v86, v113);
        sub_227D4A868();
        v90 = v133;
        sub_227C31FB4();
        (*(v112 + 8))(v111, v113);
LABEL_20:
        (*(v91 + 8))(v125, v89);
      }

      else
      {
        v105 = sub_227B1AF8C();
        (*(v115 + 16))(v114, v105, v116);
        v106 = sub_227D4CA98();
        v107 = sub_227D4D418();
        if (os_log_type_enabled(v106, v107))
        {
          v108 = swift_slowAlloc();
          *v108 = 0;
          _os_log_impl(&dword_227B0D000, v106, v107, "Found unknown deep link referral type in GameActivityStoreV1", v108, 2u);
          v109 = v108;
          v91 = v120;
          MEMORY[0x22AAA7130](v109, -1, -1);
        }

        (*(v115 + 8))(v114, v116);
        v110 = *(v91 + 8);
        v110(v125, v89);
        v110(v86, v89);
LABEL_15:
        v90 = v133;
      }

      sub_227C3C834(v128);
      v94 = sub_227D49B38();
      sub_227C3C834(v94);
      sub_227C38398(v131, v132, a28, v130, v95, v96, v97, v98, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120);
      v100 = v99;

      sub_227C36CE8(v100);
      v101 = sub_227D49B48();
      (*(*(v101 - 8) + 8))(v90, v101);
      sub_227C1CB1C(v88, &qword_27D7E6CF0);
      (*v164)(v85, v162);
      sub_227C1CB1C(v156, &qword_27D7E6D08);
      sub_227C1CB1C(v157, &qword_27D7E6D08);
      sub_227C1CB1C(v158, &qword_27D7E6D08);
      v102 = v151;
      v103 = v154;
      v154(v159, v151);
      v104 = sub_227D49648();
      (*(*(v104 - 8) + 8))(v160, v104);
      v103(v136, v102);
      (*(v127 + 8))(v149, v161);
      return a28;
    }

    v64 = *(v61 + 8 * v67);
    ++v68;
    if (v64)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_227C47B98()
{
  OUTLINED_FUNCTION_263();
  swift_getKeyPath();
  OUTLINED_FUNCTION_2_26();
  sub_227B17E0C(v0);
  OUTLINED_FUNCTION_0_41();
  sub_227B17E0C(v1);
  OUTLINED_FUNCTION_27_6();
  sub_227D4CC98();
}

unint64_t sub_227C47C88()
{
  result = qword_27D7E9280;
  if (!qword_27D7E9280)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7E9278, &qword_227D5CA10);
    sub_227B17E0C(&unk_280E7B050);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E9280);
  }

  return result;
}

unint64_t sub_227C47D74()
{
  result = qword_27D7E9290;
  if (!qword_27D7E9290)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7E9288, &qword_227D5CA40);
    sub_227B17E0C(&unk_280E7AF50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E9290);
  }

  return result;
}

uint64_t sub_227C47E60(uint64_t a1, void (*a2)(void), void (*a3)(void))
{
  swift_getKeyPath();
  a2(0);
  OUTLINED_FUNCTION_2_26();
  sub_227B17E0C(v5);
  a3();
  OUTLINED_FUNCTION_418_0();
  sub_227D4CC78();
}

uint64_t sub_227C47F14()
{
  OUTLINED_FUNCTION_263();
  swift_getKeyPath();
  OUTLINED_FUNCTION_7_17();
  sub_227B17E0C(v0);
  OUTLINED_FUNCTION_2_26();
  sub_227B17E0C(v1);
  OUTLINED_FUNCTION_27_6();
  sub_227D4CC98();
}

uint64_t sub_227C47FB4()
{
  OUTLINED_FUNCTION_263();
  swift_getKeyPath();
  OUTLINED_FUNCTION_3_19();
  sub_227B17E0C(v0);
  OUTLINED_FUNCTION_2_26();
  sub_227B17E0C(v1);
  OUTLINED_FUNCTION_27_6();
  sub_227D4CC98();
}

uint64_t sub_227C480E4(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_7_17();
  sub_227B17E0C(v2);
  sub_227D4CC88();
}

uint64_t sub_227C48230()
{
  OUTLINED_FUNCTION_307();
  swift_getKeyPath();
  v0 = OUTLINED_FUNCTION_201();
  sub_227B17E0C(v0);
  sub_227D4CC88();
}

uint64_t sub_227C482B8()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_3_19();
  sub_227B17E0C(v0);
  OUTLINED_FUNCTION_297_0();
  sub_227D4CC88();
}

uint64_t sub_227C4838C()
{
  OUTLINED_FUNCTION_307();
  swift_getKeyPath();
  v0 = OUTLINED_FUNCTION_201();
  sub_227B17E0C(v0);
  sub_227D4CC88();
}

uint64_t sub_227C4840C()
{
  OUTLINED_FUNCTION_263();
  swift_getKeyPath();
  OUTLINED_FUNCTION_3_19();
  sub_227B17E0C(v0);
  sub_227C3F588();
  OUTLINED_FUNCTION_27_6();
  sub_227D4CC88();
}

unint64_t sub_227C484F8()
{
  result = qword_27D7E92D0;
  if (!qword_27D7E92D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E92D0);
  }

  return result;
}

unint64_t sub_227C48550()
{
  result = qword_27D7E92D8;
  if (!qword_27D7E92D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E92D8);
  }

  return result;
}

uint64_t sub_227C48B64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  OUTLINED_FUNCTION_36_0();
  v19 = (v14 + *v14);
  v15 = swift_task_alloc();
  v16 = OUTLINED_FUNCTION_20_0(v15);
  *v16 = v17;
  v16[1] = sub_227B3E2E8;

  return v19(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t sub_227C48CB4()
{
  OUTLINED_FUNCTION_119();
  OUTLINED_FUNCTION_5_12(v0, v1, v2, v3);
  OUTLINED_FUNCTION_36_0();
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_50(v4);
  *v5 = v6;
  OUTLINED_FUNCTION_35(v5);
  OUTLINED_FUNCTION_98_3();

  return v7();
}

uint64_t sub_227C48DB8()
{
  OUTLINED_FUNCTION_51_0();
  OUTLINED_FUNCTION_104_0();
  OUTLINED_FUNCTION_36_0();
  v6 = (v0 + *v0);
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_50(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_16_1(v2);

  return v6(v4);
}

uint64_t sub_227C48EB4()
{
  OUTLINED_FUNCTION_119();
  OUTLINED_FUNCTION_387_0();
  OUTLINED_FUNCTION_142_4();
  OUTLINED_FUNCTION_36_0();
  v5 = (v0 + *v0);
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_50(v1);
  *v2 = v3;
  OUTLINED_FUNCTION_35(v2);
  OUTLINED_FUNCTION_208_1();

  return v5();
}

uint64_t sub_227C48FCC()
{
  OUTLINED_FUNCTION_119();
  OUTLINED_FUNCTION_236_0();
  OUTLINED_FUNCTION_36_0();
  v5 = (v0 + *v0);
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_50(v1);
  *v2 = v3;
  OUTLINED_FUNCTION_35(v2);
  OUTLINED_FUNCTION_236();
  OUTLINED_FUNCTION_224();

  return v5();
}

uint64_t sub_227C490F0()
{
  OUTLINED_FUNCTION_119();
  OUTLINED_FUNCTION_5_12(v0, v1, v2, v3);
  OUTLINED_FUNCTION_36_0();
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_50(v4);
  *v5 = v6;
  OUTLINED_FUNCTION_35(v5);
  OUTLINED_FUNCTION_98_3();

  return v7();
}

uint64_t sub_227C491F4()
{
  OUTLINED_FUNCTION_119();
  OUTLINED_FUNCTION_387_0();
  OUTLINED_FUNCTION_142_4();
  OUTLINED_FUNCTION_36_0();
  v5 = (v0 + *v0);
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_50(v1);
  *v2 = v3;
  OUTLINED_FUNCTION_35(v2);
  OUTLINED_FUNCTION_208_1();

  return v5();
}

uint64_t sub_227C4935C()
{
  OUTLINED_FUNCTION_119();
  OUTLINED_FUNCTION_5_12(v0, v1, v2, v3);
  OUTLINED_FUNCTION_36_0();
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_20_0(v4);
  *v5 = v6;
  v5[1] = sub_227B3E2E8;
  OUTLINED_FUNCTION_98_3();

  return v7();
}

uint64_t sub_227C49464()
{
  OUTLINED_FUNCTION_119();
  OUTLINED_FUNCTION_5_12(v0, v1, v2, v3);
  OUTLINED_FUNCTION_36_0();
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_20_0(v4);
  *v5 = v6;
  v5[1] = sub_227B3E2E8;
  OUTLINED_FUNCTION_98_3();

  return v7();
}

uint64_t sub_227C4956C()
{
  OUTLINED_FUNCTION_51_0();
  OUTLINED_FUNCTION_104_0();
  OUTLINED_FUNCTION_36_0();
  v6 = (v0 + *v0);
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_50(v1);
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_16_1(v2);

  return v6(v4);
}

_BYTE *sub_227C496C8(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_227C497F0()
{
  result = sub_227D494C8();
  if (v1 <= 0x3F)
  {
    OUTLINED_FUNCTION_151_1();
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t sub_227C498DC()
{
  result = sub_227D494C8();
  if (v1 <= 0x3F)
  {
    OUTLINED_FUNCTION_151_1();
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_227C499A8()
{
  result = sub_227D494C8();
  if (v1 <= 0x3F)
  {
    OUTLINED_FUNCTION_151_1();
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_227C49A74()
{
  result = sub_227D494C8();
  if (v1 <= 0x3F)
  {
    OUTLINED_FUNCTION_151_1();
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_227C49BB4(uint64_t a1)
{
  result = sub_227D49328();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for GameActivityDefinitionStoreV1.GameActivityDefinitionSchema.Artwork.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF9)
  {
    if (a2 + 7 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 7) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 8;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v5 = v6 - 8;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for GameActivityDefinitionStoreV1.GameActivityDefinitionSchema.Artwork.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF9)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF8)
  {
    v6 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
          *result = a2 + 7;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_227C49D88()
{
  result = qword_27D7FCEC0[0];
  if (!qword_27D7FCEC0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27D7FCEC0);
  }

  return result;
}

unint64_t sub_227C49ED4(uint64_t a1)
{
  OUTLINED_FUNCTION_12_9();
  result = sub_227B180A0(v2);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_227C49F1C(uint64_t a1)
{
  OUTLINED_FUNCTION_5_16();
  result = sub_227B180A0(v2);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_227C49F68()
{
  result = qword_280E7CA00;
  if (!qword_280E7CA00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E7CA00);
  }

  return result;
}

unint64_t sub_227C49FC0()
{
  result = qword_280E7CA08;
  if (!qword_280E7CA08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E7CA08);
  }

  return result;
}

unint64_t sub_227C4A01C()
{
  result = qword_280E7B7B0;
  if (!qword_280E7B7B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7E9328, &qword_227D5DF38);
    sub_227B1AD64();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E7B7B0);
  }

  return result;
}

unint64_t sub_227C4A0A0()
{
  result = qword_280E7B728;
  if (!qword_280E7B728)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7E9318, &qword_227D5DF28);
    sub_227B1A6E4(&unk_280E7B708);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E7B728);
  }

  return result;
}

unint64_t sub_227C4A15C()
{
  result = qword_280E7B718;
  if (!qword_280E7B718)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7E9338, &qword_227D5DF50);
    sub_227B1A6E4(&unk_280E7B708);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E7B718);
  }

  return result;
}

unint64_t sub_227C4A214()
{
  result = qword_27D7E9388;
  if (!qword_27D7E9388)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7E9380, &qword_227D5DF90);
    sub_227C4A298();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E9388);
  }

  return result;
}

unint64_t sub_227C4A298()
{
  result = qword_280E7B7D8;
  if (!qword_280E7B7D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7E9378, &qword_227D5DF88);
    sub_227C4A358();
    sub_227B1A6E4(&unk_280E7B708);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E7B7D8);
  }

  return result;
}

unint64_t sub_227C4A358()
{
  result = qword_280E7B778;
  if (!qword_280E7B778)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7E9370, &qword_227D5DF80);
    sub_227B1A6E4(&unk_280E7B6C8);
    sub_227B1A6E4(&unk_280E7B6D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E7B778);
  }

  return result;
}

unint64_t sub_227C4A4C0()
{
  result = qword_27D7E93A8;
  if (!qword_27D7E93A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7E93A0, &qword_227D5DFA8);
    sub_227C4A54C();
    sub_227C4A5FC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E93A8);
  }

  return result;
}

unint64_t sub_227C4A54C()
{
  result = qword_27D7E93B0;
  if (!qword_27D7E93B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7E9398, &qword_227D5DFA0);
    sub_227B1A6E4(&unk_280E7B708);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E93B0);
  }

  return result;
}

unint64_t sub_227C4A5FC()
{
  result = qword_27D7E93B8;
  if (!qword_27D7E93B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7E9390, &qword_227D5DF98);
    sub_227C17488();
    sub_227C1740C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E93B8);
  }

  return result;
}

unint64_t sub_227C4A688()
{
  result = qword_27D7E93D0;
  if (!qword_27D7E93D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7E6880, &qword_227D5C4B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E93D0);
  }

  return result;
}

unint64_t sub_227C4A704()
{
  result = qword_27D7E93E0;
  if (!qword_27D7E93E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7E93D8, &qword_227D5DFC0);
    sub_227C19540();
    sub_227C4A15C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E93E0);
  }

  return result;
}

unint64_t sub_227C4A790()
{
  result = qword_27D7E9400;
  if (!qword_27D7E9400)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7E93F8, &qword_227D5E008);
    sub_227C4A15C();
    sub_227C4A81C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E9400);
  }

  return result;
}

unint64_t sub_227C4A81C()
{
  result = qword_280E7B748;
  if (!qword_280E7B748)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7E93F0, &qword_227D5DFD0);
    sub_227C4A8A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E7B748);
  }

  return result;
}

unint64_t sub_227C4A8A0()
{
  result = qword_280E7B798;
  if (!qword_280E7B798)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7E93E8, &qword_227D5DFC8);
    sub_227B17E0C(&unk_280E7B6B8);
    sub_227B17E0C(&unk_280E7B6C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E7B798);
  }

  return result;
}

unint64_t sub_227C4A988()
{
  result = qword_280E7B738;
  if (!qword_280E7B738)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7E9410, &qword_227D5E018);
    sub_227C4AA0C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E7B738);
  }

  return result;
}

unint64_t sub_227C4AA0C()
{
  result = qword_280E7B788;
  if (!qword_280E7B788)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7E9408, &qword_227D5E010);
    sub_227B17E0C(&unk_280E7B6A8);
    sub_227B17E0C(&unk_280E7B6B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E7B788);
  }

  return result;
}

unint64_t sub_227C4AAF4(uint64_t a1)
{
  result = OUTLINED_FUNCTION_217(a1);
  if (!result)
  {
    v5 = v4;
    v6 = OUTLINED_FUNCTION_356(0, v3);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v6, v7);
    v5();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_227C4AB70()
{
  result = qword_27D7E9448;
  if (!qword_27D7E9448)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7E9440, &qword_227D5E0A0);
    sub_227C4A15C();
    sub_227C4ABFC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E9448);
  }

  return result;
}

unint64_t sub_227C4ABFC()
{
  result = qword_27D7E9450;
  if (!qword_27D7E9450)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7E9430, &qword_227D5E068);
    sub_227C4AC80();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E9450);
  }

  return result;
}

unint64_t sub_227C4AC80()
{
  result = qword_27D7E9458;
  if (!qword_27D7E9458)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7E9428, &qword_227D5E060);
    sub_227B17E0C(&qword_27D7E6B68);
    sub_227B17E0C(&off_27D7E6B80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E9458);
  }

  return result;
}

void sub_227C4AD68()
{
  OUTLINED_FUNCTION_351();
  type metadata accessor for GameActivityDefinitionStore();
  OUTLINED_FUNCTION_5_16();
  sub_227B180A0(v1);
  sub_227D4D278();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  OUTLINED_FUNCTION_5_16();
  sub_227B180A0(v2);
  sub_227D4CAF8();
  sub_227D499B8();
  OUTLINED_FUNCTION_148();
  sub_227C260A0();

  if (!v0)
  {
    type metadata accessor for GameActivityDefinitionStoreV1.GameActivityDefinitionSchema(0);
    OUTLINED_FUNCTION_1_22();
    sub_227B17E0C(v3);
    OUTLINED_FUNCTION_168_1();
    sub_227D4CB68();
  }

  OUTLINED_FUNCTION_352();
}

unint64_t sub_227C4AEDC()
{
  result = qword_27D7E94C0;
  if (!qword_27D7E94C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7E94B8, &qword_227D5E0E0);
    sub_227C4B3BC(&unk_27D7E94C8);
    sub_227C4B024();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E94C0);
  }

  return result;
}

unint64_t sub_227C4AF94(uint64_t a1)
{
  result = OUTLINED_FUNCTION_217(a1);
  if (!result)
  {
    v4 = OUTLINED_FUNCTION_356(0, v3);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v4, v5);
    sub_227B1A6E4(&unk_27D7E94D8);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_227C4B024()
{
  result = qword_27D7E94E0;
  if (!qword_27D7E94E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7E9480, &qword_227D5E0C0);
    sub_227C4AF94(&unk_27D7E94E8);
    sub_227C1888C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E94E0);
  }

  return result;
}

unint64_t sub_227C4B0F8()
{
  result = qword_27D7E9520;
  if (!qword_27D7E9520)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7E9518, &unk_227D5E100);
    sub_227C4B3BC(&unk_27D7E94C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E9520);
  }

  return result;
}

unint64_t sub_227C4B274()
{
  result = qword_27D7E9538;
  if (!qword_27D7E9538)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7E9530, &qword_227D5E128);
    sub_227C4AF94(&unk_27D7E9540);
    sub_227C186CC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E9538);
  }

  return result;
}

unint64_t sub_227C4B318()
{
  result = qword_27D7E9560;
  if (!qword_27D7E9560)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7E9558, &qword_227D5E138);
    sub_227C4AF94(&unk_27D7E9568);
    sub_227C19ADC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E9560);
  }

  return result;
}

unint64_t sub_227C4B3BC(uint64_t a1)
{
  result = OUTLINED_FUNCTION_217(a1);
  if (!result)
  {
    v5 = v4;
    v6 = OUTLINED_FUNCTION_356(0, v3);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v6, v7);
    sub_227C4AF94(&unk_27D7E94D0);
    v5();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_227C4B450()
{
  result = qword_27D7E95A0;
  if (!qword_27D7E95A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7E9580, &qword_227D5E148);
    sub_227C4B4D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E95A0);
  }

  return result;
}

unint64_t sub_227C4B4D4()
{
  result = qword_27D7E95A8;
  if (!qword_27D7E95A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7E9578, &qword_227D5E140);
    sub_227B17E0C(&unk_27D7E95B0);
    sub_227B17E0C(&unk_27D7E95B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E95A8);
  }

  return result;
}

unint64_t sub_227C4B5BC()
{
  result = qword_27D7E95F0;
  if (!qword_27D7E95F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7E95D0, &qword_227D5E190);
    sub_227C4B640();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E95F0);
  }

  return result;
}

unint64_t sub_227C4B640()
{
  result = qword_27D7E95F8;
  if (!qword_27D7E95F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7E95C8, &qword_227D5E188);
    sub_227B17E0C(&unk_27D7E9600);
    sub_227B17E0C(&unk_27D7E9608);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E95F8);
  }

  return result;
}

unint64_t sub_227C4B728()
{
  result = qword_27D7E9640;
  if (!qword_27D7E9640)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7E9620, &qword_227D5E1D8);
    sub_227C4B7E8();
    sub_227B1A6E4(&unk_27D7E94D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E9640);
  }

  return result;
}

unint64_t sub_227C4B7E8()
{
  result = qword_27D7E9648;
  if (!qword_27D7E9648)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7E9618, &qword_227D5E1D0);
    sub_227B1A6E4(&unk_27D7E9650);
    sub_227B1A6E4(&unk_27D7E9658);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E9648);
  }

  return result;
}

unint64_t sub_227C4B8D4()
{
  result = qword_27D7E9670;
  if (!qword_27D7E9670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E9670);
  }

  return result;
}

unint64_t sub_227C4B928()
{
  result = qword_27D7E9678;
  if (!qword_27D7E9678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E9678);
  }

  return result;
}

unint64_t sub_227C4B97C()
{
  result = qword_280E7B1B0;
  if (!qword_280E7B1B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E7B1B0);
  }

  return result;
}

uint64_t sub_227C4B9D0(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_342();
  v4(v3);
  OUTLINED_FUNCTION_62_0();
  v5 = OUTLINED_FUNCTION_58();
  v6(v5);
  return a2;
}

unint64_t sub_227C4BA28()
{
  result = qword_27D7E9690;
  if (!qword_27D7E9690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E9690);
  }

  return result;
}

uint64_t sub_227C4BAFC()
{
  OUTLINED_FUNCTION_307();
  swift_getKeyPath();
  v0 = OUTLINED_FUNCTION_201();
  sub_227B17E0C(v0);
  sub_227C1740C();
  OUTLINED_FUNCTION_309_0();
  sub_227D4CC88();
}

uint64_t sub_227C4BB84()
{
  OUTLINED_FUNCTION_263();
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_41();
  sub_227B17E0C(v0);
  OUTLINED_FUNCTION_297_0();
  sub_227D4CC88();
}

uint64_t sub_227C4BC10(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E96B0, &qword_227D5E228);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_227C4BC80()
{
  OUTLINED_FUNCTION_37();
  v4 = OUTLINED_FUNCTION_397(v1, v2, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_62_0();
  v6 = OUTLINED_FUNCTION_58();
  v7(v6);
  return v0;
}

uint64_t OUTLINED_FUNCTION_56_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return sub_227D494A8();
}

uint64_t OUTLINED_FUNCTION_132_3(uint64_t a1, uint64_t a2)
{

  return sub_227D4CD68();
}

uint64_t OUTLINED_FUNCTION_143_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return swift_beginAccess();
}

void OUTLINED_FUNCTION_171_3(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __n128 a10@<Q0>, __n128 a11@<Q1>, __n128 a12@<Q2>, __n128 a13@<Q3>, __n128 a14@<Q4>, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37, uint64_t a38, __int16 a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, __int16 a45, uint64_t a46, void (*a47)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, char, uint64_t, _BYTE, uint64_t, _WORD, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, __int16, uint64_t, uint64_t, uint64_t, uint64_t))
{
  BYTE1(a33) = v56;
  LOBYTE(a33) = v55;
  LOWORD(a27) = v52;
  LOBYTE(a25) = v50;
  LOBYTE(a23) = v48;

  sub_227C346E4(a1, a2, a3, a4, a5, a6, a7, a8, a10.n128_i64[0], a10.n128_i64[1], a11.n128_i64[0], a11.n128_i64[1], a12.n128_i64[0], a12.n128_i64[1], a9, v47, a23, v49, a25, v51, a27, a13.n128_i64[0], a13.n128_i64[1], a14.n128_i64[0], a14.n128_i64[1], v53, a33, v57, v54, a36, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47);
}

uint64_t OUTLINED_FUNCTION_188_2()
{
  v2 = *(v1 - 296);
  v3 = *(v2 + 16);
  result = v0;
  *(v1 - 224) = v2 + 16;
  *(v1 - 256) = v3;
  return result;
}

uint64_t OUTLINED_FUNCTION_201_1(uint64_t result)
{
  *(v5 - 320) = v3;
  *(v5 - 312) = v4;
  *(v5 - 304) = v2;
  *(v5 - 296) = v1;
  *(v5 - 288) = result;
  return result;
}

unint64_t OUTLINED_FUNCTION_211_2(uint64_t a1)
{

  return sub_227C411D0(a1);
}

uint64_t OUTLINED_FUNCTION_222_0(uint64_t a1)
{

  return sub_227D48FF8();
}

uint64_t OUTLINED_FUNCTION_230()
{
  result = type metadata accessor for GameActivityInstanceStoreV1.GameActivityInstanceSchema(0);
  *(v0 - 88) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_277()
{

  return swift_allocObject();
}

void OUTLINED_FUNCTION_278_0(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __n128 a10@<Q0>, __n128 a11@<Q1>, __n128 a12@<Q2>, __n128 a13@<Q3>, __n128 a14@<Q4>, __n128 a15@<Q5>, __n128 a16@<Q6>, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, void (*a48)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, char, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  LOBYTE(a31) = v49;

  sub_227C37A48(a1, a2, a3, a4, a5, a6, a7, a8, a10.n128_i64[0], a10.n128_i64[1], a11.n128_i64[0], a11.n128_i64[1], a12.n128_i64[0], a12.n128_i64[1], a13.n128_i64[0], a13.n128_i64[1], a14.n128_i64[0], a14.n128_i64[1], a15.n128_i64[0], a15.n128_i64[1], a9, v48, a31, a16.n128_i64[0], a16.n128_i64[1], v50, v51, v52, a37, a38, a39, a40, a41, a42, a43, a44, a45, a46, a47, a48);
}

uint64_t OUTLINED_FUNCTION_292_0(uint64_t a1, uint64_t a2)
{

  return sub_227D4CAD8();
}

unint64_t OUTLINED_FUNCTION_303_0(float a1)
{
  *v1 = a1;
  v4 = *(v2 - 360);
  v5 = *(v2 - 336);

  return sub_227B1B1A4(v4, v5, (v2 - 168));
}

uint64_t OUTLINED_FUNCTION_306_0()
{

  return sub_227D4CC28();
}

uint64_t OUTLINED_FUNCTION_333()
{
  result = 0;
  *(v0 - 160) = 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_335_0(uint64_t a1)
{

  return sub_227D48F28();
}

void OUTLINED_FUNCTION_336_0()
{

  JUMPOUT(0x22AAA5A20);
}

uint64_t OUTLINED_FUNCTION_337_0()
{
  *(v2 - 352) = v1;
  *(v2 - 344) = v0;

  return sub_227B132F0((v2 - 168), v2 - 128);
}

uint64_t *OUTLINED_FUNCTION_338(uint64_t a1)
{
  *(v1 + 56) = a1;

  return __swift_allocate_boxed_opaque_existential_1((v1 + 24));
}

void OUTLINED_FUNCTION_371_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{

  sub_227C34014(a1, a2, a3, a4, v20, v21, v22, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
}

uint64_t OUTLINED_FUNCTION_373_0(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_227D4DA78();
}

uint64_t OUTLINED_FUNCTION_374_0(uint64_t a1, uint64_t a2)
{

  return sub_227D4CD88();
}

unint64_t OUTLINED_FUNCTION_375_0@<X0>(uint64_t a1@<X8>)
{

  return sub_227B1B1A4(0xD00000000000001BLL, (a1 - 32) | 0x8000000000000000, (v1 - 112));
}

uint64_t OUTLINED_FUNCTION_376(uint64_t a1, uint64_t a2)
{
  v5 = a1 & 0xFFFFFFFFFFFFLL | 0xD000000000000000;

  return MEMORY[0x28212CBA0](v5, a2, 0, v2, 1, v3);
}

uint64_t OUTLINED_FUNCTION_377_0(uint64_t a1)
{

  return sub_227D48FF8();
}

uint64_t OUTLINED_FUNCTION_379_0()
{

  return sub_227D4CE58();
}

void OUTLINED_FUNCTION_380(uint64_t a1, uint64_t a2)
{

  sub_227B28D80(v4, a2, v3, v2, v5);
}

uint64_t OUTLINED_FUNCTION_384_0(uint64_t a1, uint64_t a2)
{

  return sub_227D48F28();
}

uint64_t OUTLINED_FUNCTION_386_0(uint64_t a1, uint64_t a2, void *a3)
{
  __swift_project_boxed_opaque_existential_1(a3, a3[3]);

  return swift_getKeyPath();
}

void OUTLINED_FUNCTION_389_0()
{
  v1 = *(v0 - 128);
  *(v0 - 96) = *(v0 - 136);
  *(v0 - 88) = v1;
}

void OUTLINED_FUNCTION_390_0()
{
  *(v0 + 116) = v4;
  *(v0 + 120) = v3;
  *(v0 + 296) = v2;
  *(v0 + 304) = v1;
}

uint64_t OUTLINED_FUNCTION_393_0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  *(result + 16) = a11;
  *(result + 24) = v11;
  return result;
}

void OUTLINED_FUNCTION_430_0(void *a1@<X8>)
{
  v2 = *(v1 - 112);
  *a1 = *(v1 - 264);
  a1[1] = v2;
}

uint64_t OUTLINED_FUNCTION_434_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{

  return sub_227D4D7F8();
}

uint64_t OUTLINED_FUNCTION_436_0()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_437_0()
{
  *(v0 - 168) = 0;
  *(v0 - 160) = 0xE000000000000000;

  return sub_227D4D668();
}

void OUTLINED_FUNCTION_438_0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_439_0()
{

  return sub_227D48FF8();
}

uint64_t OUTLINED_FUNCTION_440_0(uint64_t a1)
{
  *(v1 - 328) = a1;

  return MEMORY[0x28211DFD0]();
}

uint64_t OUTLINED_FUNCTION_442_0()
{

  return type metadata accessor for GameServicesEnvironment(0);
}

uint64_t OUTLINED_FUNCTION_443_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_227D4CAD8();
}

uint64_t OUTLINED_FUNCTION_444_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return sub_227D49498();
}

uint64_t OUTLINED_FUNCTION_445(uint64_t a1)
{

  return sub_227D49378();
}

uint64_t OUTLINED_FUNCTION_446_0(uint64_t a1)
{

  return sub_227D48FF8();
}

uint64_t OUTLINED_FUNCTION_448_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_227D4CC88();
}

uint64_t *OUTLINED_FUNCTION_449_0(uint64_t a1)
{
  v1[4] = a1;

  return __swift_allocate_boxed_opaque_existential_1(v1);
}

uint64_t sub_227C4CC40()
{
  OUTLINED_FUNCTION_6();
  v1[20] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E96E0, &qword_227D5E288);
  v1[21] = v2;
  OUTLINED_FUNCTION_10_0(v2);
  v1[22] = v3;
  v1[23] = OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_227C4CCF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_139();
  OUTLINED_FUNCTION_111();
  OUTLINED_FUNCTION_29_7();
  v16 = v15 + 144;
  v17 = *(v15 + 184);
  v18 = *(v15 + 168);
  v19 = **(v14 + 160);
  v20 = sub_227D4CF78();
  v21 = [v19 stringForKey_];
  *(v14 + 192) = v21;

  *(v14 + 16) = v14;
  *(v14 + 56) = v16;
  OUTLINED_FUNCTION_60_5();
  OUTLINED_FUNCTION_58_6();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E96E8, &unk_227D5E290);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E69C0, &qword_227D4EAD0);
  OUTLINED_FUNCTION_74_5(v22, v23, 0x8000000227D76390, v24, v22, MEMORY[0x277D84950]);
  v25 = OUTLINED_FUNCTION_44_5();
  v26(v25, v17, v18);
  OUTLINED_FUNCTION_4_20();
  *(v14 + 88) = 1107296256;
  *(v14 + 96) = sub_227C4D098;
  *(v14 + 104) = &block_descriptor_2;
  [v21 valueWithCompletion_];
  v27 = OUTLINED_FUNCTION_43_5();
  v28(v27);
  OUTLINED_FUNCTION_135_0();

  return MEMORY[0x282200938](v29, v30, v31, v32, v33, v34, v35, v36, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_227C4CE90()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_2();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 200) = *(v3 + 48);
  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_227C4CF90()
{
  OUTLINED_FUNCTION_51_0();
  v1 = *(v0 + 192);
  v2 = *(v0 + 144);
  v3 = sub_227D4CFA8();
  v5 = v4;

  OUTLINED_FUNCTION_50_0();

  return v6(v3, v5);
}

uint64_t sub_227C4D024()
{
  OUTLINED_FUNCTION_20();
  v1 = *(v0 + 192);
  swift_willThrow();

  OUTLINED_FUNCTION_18();

  return v2();
}

uint64_t sub_227C4D120(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t *, uint64_t))
{
  v8 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  return a5(&v8, v6);
}

uint64_t sub_227C4D16C()
{
  OUTLINED_FUNCTION_6();
  v1[20] = v2;
  v1[21] = v0;
  v3 = sub_227D4CAB8();
  v1[22] = v3;
  OUTLINED_FUNCTION_10_0(v3);
  v1[23] = v4;
  v1[24] = OUTLINED_FUNCTION_30();
  v5 = sub_227D49188();
  v1[25] = v5;
  OUTLINED_FUNCTION_10_0(v5);
  v1[26] = v6;
  v1[27] = OUTLINED_FUNCTION_30();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E96F0, &unk_227D5E2A8);
  v1[28] = v7;
  OUTLINED_FUNCTION_10_0(v7);
  v1[29] = v8;
  v1[30] = OUTLINED_FUNCTION_30();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6CD8, &qword_227D5C1C0);
  v1[31] = OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_227C4D2E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_139();
  OUTLINED_FUNCTION_111();
  OUTLINED_FUNCTION_29_7();
  v16 = v15 + 144;
  v17 = *(v15 + 240);
  v18 = *(v15 + 224);
  v19 = **(v14 + 168);
  v20 = sub_227D4CF78();
  v21 = [v19 URLForKey_];
  *(v14 + 256) = v21;

  *(v14 + 16) = v14;
  *(v14 + 56) = v16;
  OUTLINED_FUNCTION_60_5();
  OUTLINED_FUNCTION_58_6();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E96F8, &qword_227D5E2B8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E69C0, &qword_227D4EAD0);
  sub_227D4D288();
  v22 = OUTLINED_FUNCTION_44_5();
  v23(v22, v17, v18);
  OUTLINED_FUNCTION_4_20();
  *(v14 + 88) = 1107296256;
  *(v14 + 96) = sub_227C4D938;
  *(v14 + 104) = &block_descriptor_8_0;
  [v21 valueWithCompletion_];
  v24 = OUTLINED_FUNCTION_43_5();
  v25(v24);
  OUTLINED_FUNCTION_135_0();

  return MEMORY[0x282200938](v26, v27, v28, v29, v30, v31, v32, v33, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_227C4D49C()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_2();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 264) = *(v3 + 48);
  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_227C4D59C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_183();
  OUTLINED_FUNCTION_119();
  v11 = v10[31];
  v12 = v10[32];
  v13 = v10[26];
  v14 = v10[25];
  v15 = v10[18];
  sub_227D49138();

  v16 = *(v13 + 32);
  v17 = OUTLINED_FUNCTION_45_6();
  v16(v17);
  __swift_storeEnumTagSinglePayload(v11, 0, 1, v14);

  if (__swift_getEnumTagSinglePayload(v11, 1, v14) == 1)
  {
    sub_227B2746C(v10[31], &qword_27D7E6CD8, &qword_227D5C1C0);
    sub_227D4AA58();
    v18 = sub_227D4CA98();
    v19 = sub_227D4D438();
    if (os_log_type_enabled(v18, v19))
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_79_5(&dword_227B0D000, v20, v21, "Cannot find gameActivityPartyStartUrl in AMSBag.");
      OUTLINED_FUNCTION_5_2();
    }

    OUTLINED_FUNCTION_78_7();
    (v12)[1](v19, v16);
    sub_227D49E08();
    OUTLINED_FUNCTION_1_23();
    v24 = sub_227B129C8(v22, v23, MEMORY[0x277D0CE88]);
    OUTLINED_FUNCTION_23_6(v24);
    OUTLINED_FUNCTION_63_3();
    swift_willThrow();

    OUTLINED_FUNCTION_18();
  }

  else
  {
    (v16)(v10[20], v10[31], v10[25]);

    OUTLINED_FUNCTION_18();
  }

  OUTLINED_FUNCTION_163();

  return v26(v25, v26, v27, v28, v29, v30, v31, v32, a9, a10);
}

uint64_t sub_227C4D7AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_183();
  OUTLINED_FUNCTION_119();
  v14 = v10[32];
  v13 = v10[33];
  v15 = v10[31];
  v16 = v10[25];
  swift_willThrow();

  __swift_storeEnumTagSinglePayload(v15, 1, 1, v16);
  sub_227B2746C(v10[31], &qword_27D7E6CD8, &qword_227D5C1C0);
  sub_227D4AA58();
  v17 = sub_227D4CA98();
  v18 = sub_227D4D438();
  if (os_log_type_enabled(v17, v18))
  {
    *swift_slowAlloc() = 0;
    OUTLINED_FUNCTION_79_5(&dword_227B0D000, v19, v20, "Cannot find gameActivityPartyStartUrl in AMSBag.");
    OUTLINED_FUNCTION_5_2();
  }

  OUTLINED_FUNCTION_78_7();
  (*(v12 + 8))(v18, v11);
  sub_227D49E08();
  OUTLINED_FUNCTION_1_23();
  v23 = sub_227B129C8(v21, v22, MEMORY[0x277D0CE88]);
  OUTLINED_FUNCTION_23_6(v23);
  OUTLINED_FUNCTION_63_3();
  swift_willThrow();

  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_163();

  return v25(v24, v25, v26, v27, v28, v29, v30, v31, a9, a10);
}

void sub_227C4D94C(uint64_t a1, void *a2, char a3, void *a4, uint64_t *a5, uint64_t *a6)
{
  v11 = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a4)
  {
    v12 = a4;
    sub_227C4D120(v11, v12, a5, a6, MEMORY[0x277D85660]);
  }

  else if (a2)
  {
    sub_227C4D0D8(v11, a2, a3, a5, a6);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_227C4DA2C()
{
  OUTLINED_FUNCTION_6();
  v1[6] = v2;
  v1[7] = v0;
  sub_227D49188();
  v1[8] = OUTLINED_FUNCTION_30();
  v3 = swift_task_alloc();
  v1[9] = v3;
  *v3 = v1;
  OUTLINED_FUNCTION_35(v3);

  return sub_227C4CC40();
}

uint64_t sub_227C4DAD8()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_0();
  *v4 = v3;
  v3[2] = v1;
  v3[3] = v5;
  v3[4] = v6;
  v3[5] = v0;
  v7 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v8 = v7;
  v3[10] = v9;

  if (v0)
  {

    OUTLINED_FUNCTION_27();

    return v10();
  }

  else
  {
    v12 = swift_task_alloc();
    v3[11] = v12;
    *v12 = v7;
    v12[1] = sub_227C4DC3C;

    return sub_227C4D16C();
  }
}

uint64_t sub_227C4DC3C()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v6 = v5;
  v3[12] = v0;

  if (v0)
  {
  }

  else
  {
    v3[13] = v3[3];
  }

  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_227C4DD44()
{
  OUTLINED_FUNCTION_20();
  v1 = *(v0 + 48);
  v1[3] = sub_227D49528();
  v1[4] = sub_227B129C8(&qword_27D7E91E0, MEMORY[0x277D0C9B8], MEMORY[0x277D0C9B0]);
  __swift_allocate_boxed_opaque_existential_1(v1);
  OUTLINED_FUNCTION_45_6();
  sub_227D49518();

  OUTLINED_FUNCTION_18();

  return v2();
}

uint64_t sub_227C4DE10()
{
  OUTLINED_FUNCTION_6();

  OUTLINED_FUNCTION_18();

  return v0();
}

uint64_t sub_227C4DE6C()
{
  OUTLINED_FUNCTION_6();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_50(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_35(v1);

  return sub_227C4CC40();
}

uint64_t sub_227C4DEEC()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_14();
  v2 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v3 = v2;

  OUTLINED_FUNCTION_50_0();
  if (!v0)
  {
    v4 = OUTLINED_FUNCTION_150();
  }

  return v5(v4);
}

uint64_t sub_227C4DFE4()
{
  OUTLINED_FUNCTION_6();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_20_0(v0);
  *v1 = v2;
  v1[1] = sub_227B3E2E8;

  return sub_227C4D16C();
}

uint64_t sub_227C4E070()
{
  OUTLINED_FUNCTION_6();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_20_0(v0);
  *v1 = v2;
  v1[1] = sub_227B355D0;

  return sub_227C4DA2C();
}

uint64_t sub_227C4E0FC()
{
  OUTLINED_FUNCTION_20();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_50(v6);
  *v7 = v8;
  OUTLINED_FUNCTION_35(v7);

  return sub_227C4E2B0(v5, v3, v1);
}

uint64_t sub_227C4E19C()
{
  OUTLINED_FUNCTION_51_0();
  OUTLINED_FUNCTION_14();
  v2 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v3 = v2;

  v5 = *(v2 + 8);
  if (!v0)
  {
    v4 = OUTLINED_FUNCTION_236();
  }

  return v5(v4);
}

uint64_t sub_227C4E2B0(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 184) = a2;
  *(v4 + 192) = v3;
  *(v4 + 256) = a3;
  *(v4 + 176) = a1;
  return OUTLINED_FUNCTION_1();
}

uint64_t sub_227C4E2CC()
{
  OUTLINED_FUNCTION_51_0();
  v1 = v0[24];
  v2 = v1[4];
  v3 = v1[5];
  __swift_project_boxed_opaque_existential_1(v1 + 1, v2);
  OUTLINED_FUNCTION_36_0();
  v10 = (v4 + *v4);
  swift_task_alloc();
  OUTLINED_FUNCTION_47();
  v0[25] = v5;
  *v5 = v6;
  v5[1] = sub_227C4E3F4;
  v7 = v0[22];
  v8 = v0[23];

  return (v10)(v0 + 2, v7, v8, v2, v3);
}

uint64_t sub_227C4E3F4()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_2();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v5 = v4;
  *(v6 + 208) = v0;

  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_227C4E4F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_138();
  memcpy((v16 + 96), (v16 + 16), 0x50uLL);
  v18 = *(v16 + 104);
  if (v18)
  {
    v19 = *(v16 + 192);
    v20 = *(v16 + 256);
    v48 = *(v16 + 184);
    v21 = *(v16 + 176);
    v22 = *(v16 + 96);
    sub_227D4CE58();
    sub_227B2746C(v16 + 96, &qword_27D7E9700, &unk_227D5E2D0);
    v23 = *v19;
    sub_227C504E0(v20);
    v24 = objc_allocWithZone(MEMORY[0x277CEE570]);
    v25 = v23;
    v26 = OUTLINED_FUNCTION_59_5();

    v27 = sub_227D4CF78();
    v28 = OUTLINED_FUNCTION_57_6(v24, sel_initWithType_clientIdentifier_clientVersion_bag_, 0);
    *(v16 + 216) = v28;

    [v28 setEnvironment_];
    v29 = sub_227D4CE28();
    sub_227C527E8(v29, v28);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6850, qword_227D54330);
    v30 = swift_allocObject();
    *(v30 + 16) = xmmword_227D4E520;
    *(v30 + 32) = v22;
    *(v30 + 40) = v18;
    sub_227D4CE58();
    sub_227C5293C(v30, v28, &selRef_setItemIdentifiers_);
    OUTLINED_FUNCTION_30_8();
    sub_227D4D668();

    OUTLINED_FUNCTION_12_10();
    v49 = v31;
    MEMORY[0x22AAA5DA0](v21, v48);
    OUTLINED_FUNCTION_41_5();
    v32 = OUTLINED_FUNCTION_150();
    MEMORY[0x22AAA5DA0](v32);

    MEMORY[0x22AAA5DA0](93, 0xE100000000000000);
    *(v16 + 224) = v49;
    v33 = swift_task_alloc();
    *(v16 + 232) = v33;
    *v33 = v16;
    OUTLINED_FUNCTION_35(v33);
    OUTLINED_FUNCTION_23();

    return sub_227C50644();
  }

  else
  {
    OUTLINED_FUNCTION_30_8();
    sub_227D4D668();

    OUTLINED_FUNCTION_38_7();
    v36 = OUTLINED_FUNCTION_150();
    MEMORY[0x22AAA5DA0](v36);
    sub_227D49E08();
    OUTLINED_FUNCTION_1_23();
    v39 = sub_227B129C8(v37, v38, MEMORY[0x277D0CE88]);
    OUTLINED_FUNCTION_23_6(v39);
    OUTLINED_FUNCTION_76_4();

    swift_willThrow();
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_23();

    return v41(v40, v41, v42, v43, v44, v45, v46, v47, a9, a10, a11, a12, a13, a14, a15, a16);
  }
}

uint64_t sub_227C4E7E0()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_2();
  *v5 = v4;
  *(v7 + 240) = v6;
  *(v7 + 248) = v0;

  OUTLINED_FUNCTION_30_2();

  return MEMORY[0x2822009F8](v8, v9, v10);
}

uint64_t sub_227C4E904()
{
  OUTLINED_FUNCTION_51_0();
  v1 = *(v0 + 240);
  if (v1)
  {
    v2 = *(v0 + 216);
    if (*(v1 + 16))
    {
      sub_227D4CE58();
      sub_227D4CE58();
      sub_227D4CE58();
    }
  }

  else
  {
  }

  v3 = OUTLINED_FUNCTION_45_6();

  return v4(v3);
}

uint64_t sub_227C4EA04()
{
  OUTLINED_FUNCTION_6();

  OUTLINED_FUNCTION_18();

  return v1();
}

uint64_t sub_227C4EA60()
{
  OUTLINED_FUNCTION_51_0();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  *(v0 + 232) = v11;
  swift_task_alloc();
  OUTLINED_FUNCTION_47();
  *(v0 + 240) = v12;
  *v12 = v13;
  v12[1] = sub_227C4EB28;

  return sub_227C4EC1C(v0 + 16, v10, v8, v6, v4, v2);
}

uint64_t sub_227C4EB28()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v6 = v5;

  if (!v0)
  {
    memcpy(*(v3 + 232), (v3 + 16), 0xD8uLL);
  }

  OUTLINED_FUNCTION_27();

  return v7();
}

uint64_t sub_227C4EC1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  *(v7 + 1000) = v6;
  *(v7 + 1048) = a6;
  *(v7 + 992) = a5;
  *(v7 + 984) = a4;
  *(v7 + 976) = a3;
  *(v7 + 968) = a2;
  *(v7 + 960) = a1;
  return OUTLINED_FUNCTION_1();
}

uint64_t sub_227C4EC48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_138();
  v18 = *(v16 + 1048);
  v19 = *(v16 + 984);
  v20 = *(v16 + 976);
  v21 = *(v16 + 968);
  v42 = v21;
  v43 = *(v16 + 992);
  v22 = **(v16 + 1000);
  sub_227C504E0(v18);
  v23 = objc_allocWithZone(MEMORY[0x277CEE570]);
  v24 = v22;
  v25 = OUTLINED_FUNCTION_59_5();

  v26 = sub_227D4CF78();
  v27 = OUTLINED_FUNCTION_57_6(v23, sel_initWithType_clientIdentifier_clientVersion_bag_, 9);
  *(v16 + 1008) = v27;

  [v27 setEnvironment_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9708, &qword_227D5E2F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_227D4F750;
  v29 = *MEMORY[0x277CEE258];
  v30 = MEMORY[0x277CEE268];
  *(inited + 32) = *MEMORY[0x277CEE258];
  *(inited + 40) = v21;
  v31 = *v30;
  *(inited + 48) = v20;
  *(inited + 56) = v31;
  *(inited + 64) = v19;
  *(inited + 72) = v43;
  type metadata accessor for AMSMediaTaskFilter(0);
  OUTLINED_FUNCTION_2_27();
  sub_227B129C8(v32, v33, &unk_227D5E814);
  v34 = v29;
  sub_227D4CE58();
  v35 = v31;
  sub_227D4CE58();
  v36 = sub_227D4CE28();
  sub_227C52874(v36, v27);
  v37 = sub_227D4CE28();
  sub_227C527E8(v37, v27);
  sub_227D4D668();

  OUTLINED_FUNCTION_12_10();
  v44 = v38;
  MEMORY[0x22AAA5DA0](v42, v20);
  MEMORY[0x22AAA5DA0](0x726F646E6576202CLL, 0xEC000000203A4449);
  MEMORY[0x22AAA5DA0](v19, v43);
  *(v16 + 1016) = v44;
  v39 = swift_task_alloc();
  *(v16 + 1024) = v39;
  *v39 = v16;
  OUTLINED_FUNCTION_35(v39);
  OUTLINED_FUNCTION_23();

  return sub_227C509F8();
}

uint64_t sub_227C4EEE0()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_0();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 1032) = v5;
  *(v3 + 1040) = v0;

  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_227C4EFF4()
{
  OUTLINED_FUNCTION_6();
  v1 = *(v0 + 1032);
  if (v1)
  {
    if (*(v1 + 16))
    {
      v2 = *(v0 + 1008);
      memcpy((v0 + 448), (v1 + 32), 0xD8uLL);
      sub_227B3E28C(v0 + 448, v0 + 664);

      memcpy((v0 + 232), (v0 + 448), 0xD8uLL);
      nullsub_1();
      memcpy((v0 + 16), (v0 + 232), 0xD8uLL);
      goto LABEL_6;
    }
  }

  sub_227C52934((v0 + 16));
LABEL_6:
  memcpy(*(v0 + 960), (v0 + 16), 0xD8uLL);
  OUTLINED_FUNCTION_18();

  return v3();
}

uint64_t sub_227C4F0D8()
{
  OUTLINED_FUNCTION_6();

  OUTLINED_FUNCTION_18();

  return v1();
}

uint64_t sub_227C4F134()
{
  OUTLINED_FUNCTION_20();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_20_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_28_8(v1);

  return sub_227C4F1CC();
}

uint64_t sub_227C4F1CC()
{
  OUTLINED_FUNCTION_6();
  *(v1 + 288) = v2;
  *(v1 + 296) = v0;
  *(v1 + 504) = v3;
  *(v1 + 280) = v4;
  v5 = sub_227D4CAB8();
  *(v1 + 304) = v5;
  OUTLINED_FUNCTION_10_0(v5);
  *(v1 + 312) = v6;
  *(v1 + 320) = swift_task_alloc();
  *(v1 + 328) = swift_task_alloc();
  *(v1 + 336) = swift_task_alloc();
  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_227C4F29C()
{
  OUTLINED_FUNCTION_119();
  v1 = sub_227D4A6A8();
  v0[43] = v1;
  v0[44] = v2;
  v3 = v1;
  v4 = v2;
  v5 = v0[37];
  v6 = v5[4];
  v7 = v5[5];
  __swift_project_boxed_opaque_existential_1(v5 + 1, v6);
  OUTLINED_FUNCTION_36_0();
  v12 = (v8 + *v8);
  swift_task_alloc();
  OUTLINED_FUNCTION_47();
  v0[45] = v9;
  *v9 = v10;
  v9[1] = sub_227C4F43C;

  return (v12)(v0 + 2, v3, v4, v6, v7);
}

uint64_t sub_227C4F43C()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v6 = v5;
  *(v3 + 368) = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_227C4F53C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_138();
  memcpy((v16 + 96), (v16 + 16), 0x50uLL);
  v19 = *(v16 + 96);
  v18 = *(v16 + 104);
  *(v16 + 376) = v19;
  *(v16 + 384) = v18;
  v20 = *(v16 + 48);
  *(v16 + 176) = *(v16 + 32);
  *(v16 + 192) = v20;
  v21 = *(v16 + 80);
  *(v16 + 208) = *(v16 + 64);
  *(v16 + 224) = v21;
  v23 = *(v16 + 344);
  v22 = *(v16 + 352);
  if (v18)
  {
    v24 = *(v16 + 504);
    v25 = **(v16 + 296);
    sub_227D4CE58();
    v26 = v25;
    sub_227C504E0(v24);
    v50 = v23;
    v27 = objc_allocWithZone(MEMORY[0x277CEE570]);
    v28 = v26;
    v29 = OUTLINED_FUNCTION_59_5();

    v30 = sub_227D4CF78();
    v31 = OUTLINED_FUNCTION_57_6(v27, sel_initWithType_clientIdentifier_clientVersion_bag_, 0);
    *(v16 + 392) = v31;

    [v31 setEnvironment_];
    v32 = sub_227D4CE28();
    sub_227C527E8(v32, v31);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6850, qword_227D54330);
    v33 = swift_allocObject();
    *(v33 + 16) = xmmword_227D4E520;
    *(v33 + 32) = v19;
    *(v33 + 40) = v18;
    sub_227D4CE58();
    sub_227C5293C(v33, v31, &selRef_setItemIdentifiers_);
    sub_227C5293C(&unk_283B3D130, v31, &selRef_setIncludedResultKeys_);
    OUTLINED_FUNCTION_30_8();
    sub_227D4D668();

    OUTLINED_FUNCTION_12_10();
    v51 = v34;
    v52 = v35;
    MEMORY[0x22AAA5DA0](v50, v22);

    OUTLINED_FUNCTION_41_5();
    MEMORY[0x22AAA5DA0](v19, v18);

    MEMORY[0x22AAA5DA0](93, 0xE100000000000000);
    *(v16 + 400) = v51;
    *(v16 + 408) = v52;
    v36 = swift_task_alloc();
    *(v16 + 416) = v36;
    *v36 = v16;
    v36[1] = sub_227C4F868;
    OUTLINED_FUNCTION_23();

    return sub_227C4CC40();
  }

  else
  {
    OUTLINED_FUNCTION_30_8();
    sub_227D4D668();

    OUTLINED_FUNCTION_38_7();
    MEMORY[0x22AAA5DA0](v23, v22);

    sub_227D49E08();
    OUTLINED_FUNCTION_1_23();
    v41 = sub_227B129C8(v39, v40, MEMORY[0x277D0CE88]);
    OUTLINED_FUNCTION_23_6(v41);
    OUTLINED_FUNCTION_76_4();

    swift_willThrow();
    OUTLINED_FUNCTION_82_5();

    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_23();

    return v43(v42, v43, v44, v45, v46, v47, v48, v49, a9, a10, a11, a12, a13, a14, a15, a16);
  }
}

uint64_t sub_227C4F868()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_2();
  *v3 = v2;
  *v3 = *v1;
  v2[53] = v4;
  v2[54] = v5;
  v2[55] = v0;

  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_227C4F970(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_24();
  a21 = v23;
  a22 = v24;
  a20 = v22;
  sub_227D4AA58();
  sub_227D4CE58();
  sub_227D4CE58();
  v25 = sub_227D4CA98();
  v26 = sub_227D4D418();

  if (os_log_type_enabled(v25, v26))
  {
    v28 = v22[53];
    v27 = v22[54];
    v29 = v22[50];
    v30 = v22[51];
    v31 = v22[39];
    v41 = v22[38];
    v42 = v22[42];
    v32 = swift_slowAlloc();
    a11 = swift_slowAlloc();
    *v32 = 136315394;
    v33 = sub_227B1B1A4(v28, v27, &a11);

    *(v32 + 4) = v33;
    *(v32 + 12) = 2080;
    *(v32 + 14) = sub_227B1B1A4(v29, v30, &a11);
    _os_log_impl(&dword_227B0D000, v25, v26, "Fetching Game Activity Definitions with language: %s, for %s", v32, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_5_2();
    OUTLINED_FUNCTION_56_0();

    v34 = *(v31 + 8);
    v34(v42, v41);
  }

  else
  {
    v35 = v22[42];
    v36 = v22[38];
    v37 = v22[39];

    v34 = *(v37 + 8);
    v34(v35, v36);
  }

  v22[56] = v34;
  v38 = swift_task_alloc();
  v22[57] = v38;
  *v38 = v22;
  v38[1] = sub_227C4FB70;
  OUTLINED_FUNCTION_16_0();

  return sub_227C50DAC();
}

uint64_t sub_227C4FB70()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_0();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 464) = v5;
  *(v3 + 472) = v0;

  if (v0)
  {

    sub_227B2746C(v3 + 96, &qword_27D7E9700, &unk_227D5E2D0);
  }

  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_227C4FC90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_24();
  a21 = v23;
  a22 = v24;
  a20 = v22;
  v25 = *(v22 + 464);
  if (v25)
  {
    if (*(v25 + 16))
    {

      if (*(v25 + 16))
      {
        *(v22 + 480) = *(v25 + 32);
        sub_227D4CE58();

        swift_task_alloc();
        OUTLINED_FUNCTION_47();
        *(v22 + 488) = v27;
        *v27 = v28;
        v27[1] = sub_227C4FEFC;
        OUTLINED_FUNCTION_16_0();

        return sub_227C4DA2C();
      }

      else
      {
        __break(1u);
      }

      return result;
    }
  }

  sub_227D4AA58();
  sub_227D4CE58();
  v30 = sub_227D4CA98();
  v31 = sub_227D4D438();

  v32 = os_log_type_enabled(v30, v31);
  v33 = *(v22 + 448);
  v34 = *(v22 + 408);
  if (v32)
  {
    v35 = *(v22 + 400);
    a10 = *(v22 + 320);
    v36 = *(v22 + 304);
    v37 = OUTLINED_FUNCTION_129();
    v38 = swift_slowAlloc();
    a11 = v38;
    *v37 = 136315138;
    v39 = sub_227B1B1A4(v35, v34, &a11);

    *(v37 + 4) = v39;
    _os_log_impl(&dword_227B0D000, v30, v31, "No activities returned for %s", v37, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v38);
    OUTLINED_FUNCTION_5_2();
    OUTLINED_FUNCTION_5_2();

    v40 = a10;
  }

  else
  {
    v41 = *(v22 + 320);
    v36 = *(v22 + 304);

    v40 = v41;
  }

  v33(v40, v36);
  v42 = *(v22 + 392);
  v43 = *(v22 + 280);
  *v43 = *(v22 + 376);
  v44 = *(v22 + 176);
  v45 = *(v22 + 192);
  v46 = *(v22 + 224);
  v43[3] = *(v22 + 208);
  v43[4] = v46;
  v43[1] = v44;
  v43[2] = v45;

  OUTLINED_FUNCTION_82_5();

  OUTLINED_FUNCTION_115();
  OUTLINED_FUNCTION_16_0();

  return v49(v47, v48, v49, v50, v51, v52, v53, v54, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_227C4FEFC()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v6 = v5;
  *(v3 + 496) = v0;

  if (v0)
  {

    sub_227B2746C(v3 + 96, &qword_27D7E9700, &unk_227D5E2D0);
  }

  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

void sub_227C50014()
{
  OUTLINED_FUNCTION_111();
  v1 = OUTLINED_FUNCTION_49_0();
  if (v1 == 5)
  {

    sub_227B2746C(v0 + 96, &qword_27D7E9700, &unk_227D5E2D0);
    sub_227D4AA58();
    v2 = sub_227D4CA98();
    v3 = sub_227D4D438();
    if (os_log_type_enabled(v2, v3))
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_11_18();
      _os_log_impl(v4, v5, v6, v7, v8, 2u);
      OUTLINED_FUNCTION_27_7();
    }

    v9 = *(v0 + 448);
    v10 = *(v0 + 392);
    v11 = *(v0 + 328);
    v12 = *(v0 + 304);

    v9(v11, v12);
    sub_227D49E08();
    OUTLINED_FUNCTION_1_23();
    sub_227B129C8(v13, v14, MEMORY[0x277D0CE88]);
    swift_allocError();
    sub_227D49D98();
    swift_willThrow();
  }

  else
  {
    v15 = *(v0 + 496);
    v16 = *(v0 + 480);
    v17 = sub_227CFC854(v1);
    v19 = v18;
    v20 = swift_task_alloc();
    v20[2] = v17;
    v20[3] = v19;
    v20[4] = v0 + 240;
    sub_227C51180(sub_227C529B0, v20, v16);
    v21 = *(v0 + 392);
    if (!v15)
    {
      v25 = *(v0 + 376);
      v24 = *(v0 + 384);
      v26 = *(v0 + 280);

      *v26 = v25;
      *(v26 + 8) = v24;
      v27 = *(v0 + 176);
      v28 = *(v0 + 192);
      v29 = *(v0 + 224);
      *(v26 + 48) = *(v0 + 208);
      *(v26 + 64) = v29;
      *(v26 + 16) = v27;
      *(v26 + 32) = v28;
      __swift_destroy_boxed_opaque_existential_0((v0 + 240));
      OUTLINED_FUNCTION_82_5();

      OUTLINED_FUNCTION_115();
      OUTLINED_FUNCTION_33();

      __asm { BRAA            X2, X16 }
    }

    sub_227B2746C(v0 + 96, &qword_27D7E9700, &unk_227D5E2D0);
  }

  __swift_destroy_boxed_opaque_existential_0((v0 + 240));
  OUTLINED_FUNCTION_68_5();

  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_33();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_227C502E8()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_68_5();

  OUTLINED_FUNCTION_18();

  return v0();
}

uint64_t sub_227C50358()
{
  OUTLINED_FUNCTION_20();
  v1 = *(v0 + 392);

  sub_227B2746C(v0 + 96, &qword_27D7E9700, &unk_227D5E2D0);
  OUTLINED_FUNCTION_68_5();

  OUTLINED_FUNCTION_18();

  return v2();
}

uint64_t sub_227C503F0()
{
  OUTLINED_FUNCTION_20();

  OUTLINED_FUNCTION_68_5();

  OUTLINED_FUNCTION_18();

  return v1();
}

uint64_t sub_227C50468()
{
  OUTLINED_FUNCTION_20();

  OUTLINED_FUNCTION_68_5();

  OUTLINED_FUNCTION_18();

  return v1();
}

uint64_t sub_227C504E0(uint64_t a1)
{
  if (!a1)
  {
    return 0x6C7070612E6D6F63;
  }

  if (a1 == 1)
  {
    return 0xD000000000000017;
  }

  sub_227D4D668();
  MEMORY[0x22AAA5DA0](0xD000000000000025, 0x8000000227D78310);
  type metadata accessor for AMSMediaTaskEnvironment(0);
  sub_227D4D7B8();
  result = sub_227D4D7F8();
  __break(1u);
  return result;
}

id static AMSMediaTask.createGameCenterTask(type:environment:bag:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();

  return sub_227C52D90(a1, a2, a3, v3, ObjectType);
}

uint64_t sub_227C50644()
{
  OUTLINED_FUNCTION_6();
  v1 = sub_227D4CAB8();
  v0[3] = v1;
  OUTLINED_FUNCTION_10_0(v1);
  v0[4] = v2;
  v0[5] = OUTLINED_FUNCTION_30();
  v3 = swift_task_alloc();
  v0[6] = v3;
  *v3 = v0;
  OUTLINED_FUNCTION_35(v3);

  return sub_227C5139C();
}

uint64_t sub_227C50714()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_0();
  *v4 = v3;
  *v4 = *v1;
  OUTLINED_FUNCTION_66_5(v5, v6);
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

uint64_t sub_227C5083C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_183();
  OUTLINED_FUNCTION_119();
  OUTLINED_FUNCTION_46_5();
  if (!v15 & v14)
  {
LABEL_4:

    OUTLINED_FUNCTION_8_0();
    OUTLINED_FUNCTION_163();

    return v18(v16, v17, v18, v19, v20, v21, v22, v23, a9, a10);
  }

  if (sub_227C51BE8(*(v12 + 56), v13))
  {
    sub_227C53B8C(*(v12 + 56), *(v12 + 64));
    goto LABEL_4;
  }

  OUTLINED_FUNCTION_65_3();
  swift_allocObject();
  sub_227D48D88();
  sub_227C53BF4();
  OUTLINED_FUNCTION_36_6(&unk_283B3F040);
  if (!v11)
  {
    sub_227C53B8C(*(v12 + 56), *(v12 + 64));

    goto LABEL_4;
  }

  OUTLINED_FUNCTION_64_2();
  sub_227D4AA58();
  v25 = v10;
  sub_227D4CA98();
  sub_227D4D438();
  OUTLINED_FUNCTION_80_3();
  if (OUTLINED_FUNCTION_62_5())
  {
    OUTLINED_FUNCTION_129();
    v26 = OUTLINED_FUNCTION_33_5();
    OUTLINED_FUNCTION_81_4(5.7779e-34);
    v27 = _swift_stdlib_bridgeErrorToNSError();
    OUTLINED_FUNCTION_51_6(v27);
    OUTLINED_FUNCTION_11_18();
    _os_log_impl(v28, v29, v30, v31, v32, 0xCu);
    sub_227B2746C(v26, &qword_27D7E68C8, &qword_227D4F740);
    OUTLINED_FUNCTION_56_0();
    OUTLINED_FUNCTION_27_7();
  }

  OUTLINED_FUNCTION_61_6();
  v33 = OUTLINED_FUNCTION_47_5();
  v34(v33);
  swift_willThrow();
  v35 = OUTLINED_FUNCTION_236();
  sub_227C53B8C(v35, v36);

  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_163();

  return v38(v37, v38, v39, v40, v41, v42, v43, v44, a9, a10);
}

uint64_t sub_227C509F8()
{
  OUTLINED_FUNCTION_6();
  v1 = sub_227D4CAB8();
  v0[3] = v1;
  OUTLINED_FUNCTION_10_0(v1);
  v0[4] = v2;
  v0[5] = OUTLINED_FUNCTION_30();
  v3 = swift_task_alloc();
  v0[6] = v3;
  *v3 = v0;
  OUTLINED_FUNCTION_35(v3);

  return sub_227C5139C();
}

uint64_t sub_227C50AC8()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_0();
  *v4 = v3;
  *v4 = *v1;
  OUTLINED_FUNCTION_66_5(v5, v6);
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

uint64_t sub_227C50BF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_183();
  OUTLINED_FUNCTION_119();
  OUTLINED_FUNCTION_46_5();
  if (!v15 & v14)
  {
LABEL_4:

    OUTLINED_FUNCTION_8_0();
    OUTLINED_FUNCTION_163();

    return v18(v16, v17, v18, v19, v20, v21, v22, v23, a9, a10);
  }

  if (sub_227C51BE8(*(v12 + 56), v13))
  {
    sub_227C53B8C(*(v12 + 56), *(v12 + 64));
    goto LABEL_4;
  }

  OUTLINED_FUNCTION_65_3();
  swift_allocObject();
  sub_227D48D88();
  sub_227C53BA0();
  OUTLINED_FUNCTION_36_6(&unk_283B3F1F0);
  if (!v11)
  {
    sub_227C53B8C(*(v12 + 56), *(v12 + 64));

    goto LABEL_4;
  }

  OUTLINED_FUNCTION_64_2();
  sub_227D4AA58();
  v25 = v10;
  sub_227D4CA98();
  sub_227D4D438();
  OUTLINED_FUNCTION_80_3();
  if (OUTLINED_FUNCTION_62_5())
  {
    OUTLINED_FUNCTION_129();
    v26 = OUTLINED_FUNCTION_33_5();
    OUTLINED_FUNCTION_81_4(5.7779e-34);
    v27 = _swift_stdlib_bridgeErrorToNSError();
    OUTLINED_FUNCTION_51_6(v27);
    OUTLINED_FUNCTION_11_18();
    _os_log_impl(v28, v29, v30, v31, v32, 0xCu);
    sub_227B2746C(v26, &qword_27D7E68C8, &qword_227D4F740);
    OUTLINED_FUNCTION_56_0();
    OUTLINED_FUNCTION_27_7();
  }

  OUTLINED_FUNCTION_61_6();
  v33 = OUTLINED_FUNCTION_47_5();
  v34(v33);
  swift_willThrow();
  v35 = OUTLINED_FUNCTION_236();
  sub_227C53B8C(v35, v36);

  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_163();

  return v38(v37, v38, v39, v40, v41, v42, v43, v44, a9, a10);
}

uint64_t sub_227C50DAC()
{
  OUTLINED_FUNCTION_6();
  v1 = sub_227D4CAB8();
  v0[3] = v1;
  OUTLINED_FUNCTION_10_0(v1);
  v0[4] = v2;
  v0[5] = OUTLINED_FUNCTION_30();
  v3 = swift_task_alloc();
  v0[6] = v3;
  *v3 = v0;
  OUTLINED_FUNCTION_35(v3);

  return sub_227C5139C();
}

uint64_t sub_227C50E7C()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_14();
  v3 = v2;
  OUTLINED_FUNCTION_0();
  *v4 = v3;
  *v4 = *v1;
  OUTLINED_FUNCTION_66_5(v5, v6);
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

uint64_t sub_227C50FA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_183();
  OUTLINED_FUNCTION_119();
  OUTLINED_FUNCTION_46_5();
  if (!v15 & v14)
  {
LABEL_4:

    OUTLINED_FUNCTION_8_0();
    OUTLINED_FUNCTION_163();

    return v18(v16, v17, v18, v19, v20, v21, v22, v23, a9, a10);
  }

  if (sub_227C51BE8(*(v12 + 56), v13))
  {
    sub_227C53B8C(*(v12 + 56), *(v12 + 64));
    goto LABEL_4;
  }

  OUTLINED_FUNCTION_65_3();
  swift_allocObject();
  sub_227D48D88();
  sub_227C53B38();
  OUTLINED_FUNCTION_36_6(&unk_283B3EC88);
  if (!v11)
  {
    sub_227C53B8C(*(v12 + 56), *(v12 + 64));

    goto LABEL_4;
  }

  OUTLINED_FUNCTION_64_2();
  sub_227D4AA58();
  v25 = v10;
  sub_227D4CA98();
  sub_227D4D438();
  OUTLINED_FUNCTION_80_3();
  if (OUTLINED_FUNCTION_62_5())
  {
    OUTLINED_FUNCTION_129();
    v26 = OUTLINED_FUNCTION_33_5();
    OUTLINED_FUNCTION_81_4(5.7779e-34);
    v27 = _swift_stdlib_bridgeErrorToNSError();
    OUTLINED_FUNCTION_51_6(v27);
    OUTLINED_FUNCTION_11_18();
    _os_log_impl(v28, v29, v30, v31, v32, 0xCu);
    sub_227B2746C(v26, &qword_27D7E68C8, &qword_227D4F740);
    OUTLINED_FUNCTION_56_0();
    OUTLINED_FUNCTION_27_7();
  }

  OUTLINED_FUNCTION_61_6();
  v33 = OUTLINED_FUNCTION_47_5();
  v34(v33);
  swift_willThrow();
  v35 = OUTLINED_FUNCTION_236();
  sub_227C53B8C(v35, v36);

  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_163();

  return v38(v37, v38, v39, v40, v41, v42, v43, v44, a9, a10);
}

double sub_227C51160@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  if (*(a1 + 16))
  {
    sub_227B1B268(a1 + 32, a2);
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

uint64_t sub_227C51180(void (*a1)(_BYTE *, uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v18 = a1;
  v19 = a2;
  v17 = sub_227D49AB8();
  v6 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a3 + 16);
  v10 = MEMORY[0x277D84F90];
  if (v9)
  {
    v24 = MEMORY[0x277D84F90];
    sub_227B63A14(0, v9, 0);
    v10 = v24;
    v11 = (a3 + 32);
    v15 = v6 + 32;
    v16 = v6;
    while (1)
    {
      memcpy(v23, v11, 0x148uLL);
      memcpy(v22, v11, sizeof(v22));
      sub_227C53A88(v23, v20);
      v18(v22, &v21);
      if (v4)
      {
        break;
      }

      v4 = 0;
      memcpy(v20, v22, sizeof(v20));
      sub_227C53AE4(v20);
      v24 = v10;
      v13 = *(v10 + 16);
      v12 = *(v10 + 24);
      if (v13 >= v12 >> 1)
      {
        sub_227B63A14(v12 > 1, v13 + 1, 1);
        v10 = v24;
      }

      *(v10 + 16) = v13 + 1;
      (*(v16 + 32))(v10 + ((*(v16 + 80) + 32) & ~*(v16 + 80)) + *(v16 + 72) * v13, v8, v17);
      v11 += 328;
      if (!--v9)
      {
        return v10;
      }
    }

    memcpy(v20, v22, sizeof(v20));
    sub_227C53AE4(v20);
  }

  return v10;
}

uint64_t sub_227C5139C()
{
  OUTLINED_FUNCTION_6();
  v1[21] = v0;
  v2 = sub_227D4CAB8();
  v1[22] = v2;
  OUTLINED_FUNCTION_10_0(v2);
  v1[23] = v3;
  v1[24] = swift_task_alloc();
  v1[25] = swift_task_alloc();
  v1[26] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E97B0, &qword_227D5E868);
  v1[27] = v4;
  OUTLINED_FUNCTION_10_0(v4);
  v1[28] = v5;
  v1[29] = OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_227C514BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_139();
  OUTLINED_FUNCTION_111();
  OUTLINED_FUNCTION_29_7();
  v16 = v15 + 144;
  v17 = *(v15 + 232);
  v18 = *(v15 + 216);
  v19 = [*(v14 + 168) perform];
  *(v14 + 240) = v19;
  *(v14 + 16) = v14;
  *(v14 + 56) = v16;
  OUTLINED_FUNCTION_60_5();
  OUTLINED_FUNCTION_58_6();
  sub_227B0F360(0, &qword_27D7E97B8, 0x277CEE568);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E69C0, &qword_227D4EAD0);
  *(v14 + 248) = v20;
  OUTLINED_FUNCTION_74_5(v20, v21, 0x8000000227D76390, v22, v20, MEMORY[0x277D84950]);
  v23 = OUTLINED_FUNCTION_44_5();
  v24(v23, v17, v18);
  OUTLINED_FUNCTION_4_20();
  *(v14 + 88) = 1107296256;
  *(v14 + 96) = sub_227C51C3C;
  *(v14 + 104) = &block_descriptor_46;
  [v19 resultWithCompletion_];
  v25 = OUTLINED_FUNCTION_43_5();
  v26(v25);
  OUTLINED_FUNCTION_135_0();

  return MEMORY[0x282200938](v27, v28, v29, v30, v31, v32, v33, v34, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_227C51634()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_2();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 256) = *(v3 + 48);
  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_227C51734()
{
  OUTLINED_FUNCTION_51_0();
  v1 = *(v0 + 240);
  v2 = *(v0 + 144);
  v3 = [v2 data];

  v4 = sub_227D491C8();
  v6 = v5;

  OUTLINED_FUNCTION_50_0();

  return v7(v4, v6);
}

void sub_227C51808()
{
  OUTLINED_FUNCTION_111();
  v2 = *(v0 + 248);
  v1 = *(v0 + 256);
  v3 = *(v0 + 240);
  swift_willThrow();

  *(v0 + 152) = v1;
  v4 = v1;
  type metadata accessor for AMSError(0);
  v5 = swift_dynamicCast();
  v6 = *(v0 + 256);
  if (v5)
  {

    v7 = *(v0 + 160);
    if ((related decl 'e' for AMSErrorCode.gkIs404Status()(v7) & 1) == 0)
    {
      sub_227D4AA58();
      v26 = v7;
      v27 = sub_227D4CA98();
      sub_227D4D438();

      if (OUTLINED_FUNCTION_62_5())
      {
        OUTLINED_FUNCTION_129();
        v28 = OUTLINED_FUNCTION_33_5();
        *v2 = 138412290;
        v29 = v26;
        v30 = _swift_stdlib_bridgeErrorToNSError();
        OUTLINED_FUNCTION_51_6(v30);
        OUTLINED_FUNCTION_11_18();
        _os_log_impl(v31, v32, v33, v34, v35, 0xCu);
        sub_227B2746C(v28, &qword_27D7E68C8, &qword_227D4F740);
        OUTLINED_FUNCTION_56_0();
        OUTLINED_FUNCTION_27_7();
      }

      v36 = *(v0 + 200);
      v37 = *(v0 + 184);
      v38 = *(v0 + 176);

      (*(v37 + 8))(v36, v38);
      swift_willThrow();

      OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_33();

      __asm { BRAA            X1, X16 }
    }

    sub_227D4AA58();
    v8 = v7;
    v9 = sub_227D4CA98();
    v10 = sub_227D4D438();

    if (OUTLINED_FUNCTION_62_5())
    {
      v11 = OUTLINED_FUNCTION_129();
      v12 = swift_slowAlloc();
      *v11 = 138412290;
      v13 = v8;
      v14 = _swift_stdlib_bridgeErrorToNSError();
      *(v11 + 4) = v14;
      *v12 = v14;
      _os_log_impl(&dword_227B0D000, v9, v10, "AMSMediaTask returned a 404: %@", v11, 0xCu);
      sub_227B2746C(v12, &qword_27D7E68C8, &qword_227D4F740);
      OUTLINED_FUNCTION_5_2();
      OUTLINED_FUNCTION_56_0();
    }

    else
    {
      v13 = v9;
      v9 = v8;
    }

    v41 = *(v0 + 208);
    v42 = *(v0 + 176);
    v43 = *(v0 + 184);

    (*(v43 + 8))(v41, v42);
  }

  else
  {

    sub_227D4AA58();
    v15 = v6;
    v16 = sub_227D4CA98();
    sub_227D4D438();
    OUTLINED_FUNCTION_80_3();
    v17 = OUTLINED_FUNCTION_62_5();
    v18 = *(v0 + 256);
    if (v17)
    {
      OUTLINED_FUNCTION_129();
      v19 = OUTLINED_FUNCTION_33_5();
      OUTLINED_FUNCTION_81_4(5.7779e-34);
      v20 = _swift_stdlib_bridgeErrorToNSError();
      OUTLINED_FUNCTION_51_6(v20);
      OUTLINED_FUNCTION_11_18();
      _os_log_impl(v21, v22, v23, v24, v25, 0xCu);
      sub_227B2746C(v19, &qword_27D7E68C8, &qword_227D4F740);
      OUTLINED_FUNCTION_56_0();
      OUTLINED_FUNCTION_27_7();
    }

    else
    {
    }

    (*(*(v0 + 184) + 8))(*(v0 + 192), *(v0 + 176));
  }

  OUTLINED_FUNCTION_50_0();
  OUTLINED_FUNCTION_33();

  __asm { BRAA            X3, X16 }
}

BOOL sub_227C51BE8(uint64_t a1, unint64_t a2)
{
  v2 = 0;
  v3 = 0;
  switch(a2 >> 62)
  {
    case 1uLL:
      v3 = a1;
      v2 = a1 >> 32;
      break;
    case 2uLL:
      v3 = *(a1 + 16);
      v2 = *(a1 + 24);
      break;
    case 3uLL:
      return v3 == v2;
    default:
      v3 = 0;
      v2 = BYTE6(a2);
      break;
  }

  return v3 == v2;
}

void sub_227C51C3C(uint64_t a1, void *a2, void *a3)
{
  v5 = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v7 = a3;
    sub_227C4D120(v5, v7, &qword_27D7E97B0, &qword_227D5E868, MEMORY[0x277D85660]);
  }

  else if (a2)
  {
    v6 = a2;
    sub_227C4D120(v5, v6, &qword_27D7E97B0, &qword_227D5E868, MEMORY[0x277D85668]);
  }

  else
  {
    __break(1u);
  }
}

uint64_t related decl e for AMSErrorCode.gkIs404Status()(uint64_t a1)
{
  *&v29 = a1;
  type metadata accessor for AMSError(0);
  OUTLINED_FUNCTION_0_42();
  sub_227B129C8(v2, v3, &unk_227D5E704);
  sub_227D49048();
  if (v31 != 301)
  {
    return 0;
  }

  *&v31 = a1;
  v4 = sub_227D49068();
  v5 = sub_227D4CFA8();
  sub_227B4E76C(v5, v6, v4, &v29);

  if (!v30)
  {
    goto LABEL_17;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9720, &qword_227D5E318);
  if ((OUTLINED_FUNCTION_77_4(&v27, v7, v8, v9) & 1) == 0)
  {
    return 0;
  }

  v10 = v27;
  v27 = 0x73726F727265;
  v28 = 0xE600000000000000;
  sub_227D4D618();
  sub_227BBF88C(v10, &v31, &v29);

  sub_227BBF8F0(&v29);
  if (!v32)
  {
    goto LABEL_18;
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9728, &qword_227D5E320);
  if ((OUTLINED_FUNCTION_75_4(v11, v12, v13, v11, v14) & 1) == 0)
  {
    return 0;
  }

  if (*(v27 + 16) != 1)
  {

    return 0;
  }

  sub_227C51160(v27, &v29);

  if (!v30)
  {
LABEL_17:
    v25 = &v29;
LABEL_19:
    sub_227B2746C(v25, &qword_27D7E6C80, &unk_227D4F780);
    return 0;
  }

  if ((OUTLINED_FUNCTION_77_4(&v31, v15, v16, v17) & 1) == 0)
  {
    return 0;
  }

  v18 = v31;
  v27 = 0x737574617473;
  v28 = 0xE600000000000000;
  sub_227D4D618();
  sub_227BBF88C(v18, &v31, &v29);

  v19 = sub_227BBF8F0(&v29);
  if (!v32)
  {
LABEL_18:
    v25 = &v31;
    goto LABEL_19;
  }

  if (OUTLINED_FUNCTION_75_4(v19, v20, v21, MEMORY[0x277D837D0], v22))
  {
    if (v27 == 3420212 && v28 == 0xE300000000000000)
    {

      return 1;
    }

    v24 = sub_227D4DA78();

    if (v24)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_227C51FE0(uint64_t a1)
{
  v2 = sub_227B129C8(&qword_27D7E9760, type metadata accessor for AMSError, &unk_227D5E6C0);

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_227C5204C(uint64_t a1)
{
  v2 = sub_227B129C8(&qword_27D7E9760, type metadata accessor for AMSError, &unk_227D5E6C0);

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t sub_227C520B8(uint64_t a1)
{
  v2 = sub_227B129C8(&qword_27D7E9718, type metadata accessor for AMSError, &unk_227D5E704);

  return MEMORY[0x28211CA68](a1, v2);
}

void sub_227C52134(uint64_t a2@<X8>)
{
  sub_227C52168();
  *a2 = v3;
  *(a2 + 8) = v4 & 1;
}

uint64_t sub_227C521B0(uint64_t a1)
{
  v2 = sub_227B129C8(&qword_27D7E9718, type metadata accessor for AMSError, &unk_227D5E704);

  return MEMORY[0x28211CAD0](a1, v2);
}

uint64_t sub_227C5221C(uint64_t a1)
{
  v2 = sub_227B129C8(&qword_27D7E9718, type metadata accessor for AMSError, &unk_227D5E704);

  return MEMORY[0x28211CA88](a1, v2);
}

uint64_t sub_227C52288(void *a1, uint64_t a2)
{
  v4 = sub_227B129C8(&qword_27D7E9718, type metadata accessor for AMSError, &unk_227D5E704);
  v5 = a1;

  return MEMORY[0x28211CA70](v5, a2, v4);
}

uint64_t sub_227C52344(uint64_t a1, uint64_t a2)
{
  v4 = sub_227B129C8(&qword_27D7E9718, type metadata accessor for AMSError, &unk_227D5E704);

  return MEMORY[0x28211CAB8](a1, a2, v4);
}

uint64_t sub_227C523C0(uint64_t a1, uint64_t a2)
{
  sub_227D4DB58();
  sub_227D4CEA8();
  return sub_227D4DB98();
}

uint64_t sub_227C52420(uint64_t a1)
{
  v2 = sub_227B129C8(&qword_27D7E9710, type metadata accessor for AMSMediaTaskFilter, &unk_227D5E814);
  v3 = sub_227B129C8(&qword_27D7E97A0, type metadata accessor for AMSMediaTaskFilter, &unk_227D5E52C);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_227C524DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_227B129C8(&qword_27D7E9718, type metadata accessor for AMSError, &unk_227D5E704);

  return MEMORY[0x28211CA98](a1, a2, a3, v6);
}

uint64_t sub_227C52560(unint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 < a1 || (result = sub_227D49AB8(), a1 + *(*(result - 8) + 72) * a2 <= a3))
  {
    sub_227D49AB8();

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (a3 != a1)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

void *sub_227C52634(void *result, int64_t a2, char a3, uint64_t a4)
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
LABEL_25:
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
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6D18, &qword_227D4F960);
  v10 = *(sub_227D49AB8() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_24;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_227D49AB8() - 8);
  if (v5)
  {
    v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    sub_227C52560(a4 + v16, v8, v13 + v16);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

void sub_227C527E8(uint64_t a1, void *a2)
{
  v3 = sub_227D4CE08();

  [a2 setAdditionalQueryParams_];
}

void sub_227C52874(uint64_t a1, void *a2)
{
  type metadata accessor for AMSMediaTaskFilter(0);
  sub_227B129C8(&qword_27D7E9710, type metadata accessor for AMSMediaTaskFilter, &unk_227D5E814);
  v3 = sub_227D4CE08();

  [a2 setFilters_];
}

void sub_227C5293C(uint64_t a1, void *a2, SEL *a3)
{
  v5 = sub_227D4D1B8();

  [a2 *a3];
}

uint64_t sub_227C529B0(uint64_t *a1, void *a2)
{
  v4 = *(v2 + 16);
  v5 = *(v2 + 24);
  memcpy(__dst, a1 + 4, sizeof(__dst));
  v41 = a1[37];
  v6 = a1[38];
  v7 = MEMORY[0x277D84F90];
  v39 = a1[39];
  if (v6 != 1 && a1[40])
  {
    v7 = sub_227D4CE58();
  }

  v42 = v6;
  v8 = *(v7 + 16);
  if (v8)
  {
    v9 = v7 + 64;
    v44 = MEMORY[0x277D84F90];
    do
    {
      v10 = *v9;
      if (*(*v9 + 16))
      {
        sub_227D4CE58();
        sub_227D4CE58();
        sub_227D4CE58();
        v11 = sub_227B2664C(v4, v5);
        if (v12)
        {
          v13 = (*(v10 + 56) + 32 * v11);
          v15 = *v13;
          v14 = v13[1];
          sub_227D4CE58();

          if (v14)
          {
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v44 = sub_227B25F88(0, *(v44 + 2) + 1, 1, v44);
            }

            v17 = *(v44 + 2);
            v16 = *(v44 + 3);
            if (v17 >= v16 >> 1)
            {
              v44 = sub_227B25F88((v16 > 1), v17 + 1, 1, v44);
            }

            *(v44 + 2) = v17 + 1;
            v18 = &v44[16 * v17];
            *(v18 + 4) = v15;
            *(v18 + 5) = v14;
          }
        }

        else
        {
        }
      }

      v9 += 40;
      --v8;
    }

    while (v8);
  }

  if (v6 != 1)
  {
    if (v6)
    {
      v19 = *(v6 + 16);
      v20 = v39;
      if (v19)
      {
        v46 = MEMORY[0x277D84F90];
        sub_227B3CA88(0, v19, 0);
        v21 = v46;
        v22 = *(v46 + 16);
        v23 = 16 * v22;
        v24 = (v42 + 40);
        do
        {
          v26 = *(v24 - 1);
          v25 = *v24;
          v46 = v21;
          v27 = *(v21 + 24);
          sub_227D4CE58();
          if (v22 >= v27 >> 1)
          {
            sub_227B3CA88((v27 > 1), v22 + 1, 1);
            v21 = v46;
          }

          *(v21 + 16) = v22 + 1;
          v28 = v21 + v23;
          *(v28 + 32) = v26;
          *(v28 + 40) = v25;
          v23 += 16;
          v24 += 4;
          ++v22;
          --v19;
        }

        while (v19);
      }
    }

    else
    {
      v20 = v39;
    }

    if (v20)
    {
      v29 = *(v20 + 16);
      if (v29)
      {
        v46 = MEMORY[0x277D84F90];
        sub_227B3CA88(0, v29, 0);
        v30 = v46;
        v31 = *(v46 + 16);
        v32 = 16 * v31;
        v33 = (v20 + 40);
        do
        {
          v35 = *(v33 - 1);
          v34 = *v33;
          v46 = v30;
          v36 = *(v30 + 24);
          sub_227D4CE58();
          if (v31 >= v36 >> 1)
          {
            sub_227B3CA88((v36 > 1), v31 + 1, 1);
            v30 = v46;
          }

          *(v30 + 16) = v31 + 1;
          v37 = v30 + v32;
          *(v37 + 32) = v35;
          *(v37 + 40) = v34;
          v32 += 16;
          v33 += 4;
          ++v31;
          --v29;
        }

        while (v29);
      }
    }
  }

  if ((__dst[16] & 1) != 0 && v41 != 1)
  {
    sub_227D4CE58();
  }

  sub_227D2DB50();

  if (v43)
  {
    *a2 = v43;
  }

  return result;
}

id sub_227C52D90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_227C504E0(a2);
  v10 = v9;
  v11 = objc_allocWithZone(MEMORY[0x277CEE570]);
  swift_unknownObjectRetain();
  v12 = sub_227C539D4(a1, v8, v10, 49, 0xE100000000000000, a3, v11);
  [v12 setEnvironment_];
  return v12;
}

uint64_t sub_227C52E4C()
{
  OUTLINED_FUNCTION_51_0();
  OUTLINED_FUNCTION_36_0();
  v6 = (v0 + *v0);
  v1 = swift_task_alloc();
  v2 = OUTLINED_FUNCTION_50(v1);
  *v2 = v3;
  OUTLINED_FUNCTION_35(v2);
  v4 = OUTLINED_FUNCTION_150();

  return v6(v4);
}

uint64_t sub_227C52F50()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_14();
  v1 = *v0;
  OUTLINED_FUNCTION_5_4();
  *v2 = v1;

  OUTLINED_FUNCTION_50_0();
  v3 = OUTLINED_FUNCTION_150();

  return v4(v3);
}

uint64_t sub_227C53044()
{
  OUTLINED_FUNCTION_51_0();
  OUTLINED_FUNCTION_2_19(v0, v1, v2);
  OUTLINED_FUNCTION_36_0();
  v9 = (v3 + *v3);
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_20_0(v4);
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_28_8(v5);

  return v9(v7);
}

uint64_t sub_227C53148()
{
  OUTLINED_FUNCTION_51_0();
  OUTLINED_FUNCTION_2_19(v0, v1, v2);
  OUTLINED_FUNCTION_36_0();
  v9 = (v3 + *v3);
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_20_0(v4);
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_28_8(v5);

  return v9(v7);
}

uint64_t sub_227C5324C()
{
  OUTLINED_FUNCTION_119();
  OUTLINED_FUNCTION_13_10(v0, v1, v2, v3, v4);
  OUTLINED_FUNCTION_36_0();
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_50(v5);
  *v6 = v7;
  OUTLINED_FUNCTION_35(v6);
  OUTLINED_FUNCTION_19_6();

  return v8();
}

uint64_t sub_227C53358()
{
  OUTLINED_FUNCTION_51_0();
  OUTLINED_FUNCTION_14();
  v1 = *v0;
  OUTLINED_FUNCTION_5_4();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_236();

  return v4(v3);
}

uint64_t sub_227C53468(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_24();
  v30 = v14 + 40;
  OUTLINED_FUNCTION_36_0();
  v31 = v15 + *v15;
  v16 = swift_task_alloc();
  v17 = OUTLINED_FUNCTION_20_0(v16);
  *v17 = v18;
  v17[1] = sub_227B3E2E8;
  OUTLINED_FUNCTION_16_0();

  return v27(v19, v20, v21, v22, v23, v24, v25, v26, a9, v30, v31, a12, a13, a14);
}

uint64_t sub_227C535A8()
{
  OUTLINED_FUNCTION_119();
  OUTLINED_FUNCTION_13_10(v0, v1, v2, v3, v4);
  OUTLINED_FUNCTION_36_0();
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_20_0(v5);
  *v6 = v7;
  v6[1] = sub_227B4AD00;
  OUTLINED_FUNCTION_19_6();

  return v8();
}

unint64_t sub_227C538D8()
{
  result = qword_27D7E9788;
  if (!qword_27D7E9788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E9788);
  }

  return result;
}

id sub_227C539D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v10 = sub_227D4CF78();

  v11 = sub_227D4CF78();

  v12 = [a7 initWithType:a1 clientIdentifier:v10 clientVersion:v11 bag:a6];

  swift_unknownObjectRelease();
  return v12;
}

unint64_t sub_227C53B38()
{
  result = qword_27D7E97A8;
  if (!qword_27D7E97A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E97A8);
  }

  return result;
}

uint64_t sub_227C53B8C(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_227B728BC(result, a2);
  }

  return result;
}

unint64_t sub_227C53BA0()
{
  result = qword_27D7E97C0;
  if (!qword_27D7E97C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E97C0);
  }

  return result;
}

unint64_t sub_227C53BF4()
{
  result = qword_27D7E97C8;
  if (!qword_27D7E97C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7E97C8);
  }

  return result;
}

void sub_227C53C5C(uint64_t a1, unint64_t *a2, uint64_t a3)
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

uint64_t OUTLINED_FUNCTION_23_6(uint64_t a1)
{

  return swift_allocError();
}

uint64_t OUTLINED_FUNCTION_33_5()
{

  return swift_slowAlloc();
}

void OUTLINED_FUNCTION_41_5()
{

  JUMPOUT(0x22AAA5DA0);
}

uint64_t OUTLINED_FUNCTION_51_6(uint64_t result)
{
  *(v1 + 4) = result;
  *v2 = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_60_5()
{
  *(v1 + 24) = v0;

  return swift_continuation_init();
}

BOOL OUTLINED_FUNCTION_62_5()
{

  return os_log_type_enabled(v0, v1);
}

uint64_t OUTLINED_FUNCTION_63_3()
{

  return sub_227D49D98();
}

uint64_t OUTLINED_FUNCTION_74_5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{

  return sub_227D4D288();
}

void OUTLINED_FUNCTION_79_5(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v6, v5, a4, v4, 2u);
}

id OUTLINED_FUNCTION_81_4(float a1)
{
  *v2 = a1;

  return v1;
}

uint64_t GamePolicyProvider.fetch()(uint64_t a1)
{
  v2[16] = a1;
  v2[17] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6888, &unk_227D4E630);
  v2[18] = v3;
  v2[19] = *(v3 - 8);
  v2[20] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_227C53F20, 0, 0);
}

uint64_t sub_227C53F20()
{
  v1 = *(v0 + 136);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v6 = (*(v3 + 248) + **(v3 + 248));
  v4 = swift_task_alloc();
  *(v0 + 168) = v4;
  *v4 = v0;
  v4[1] = sub_227C54048;

  return v6(0, v2, v3);
}

uint64_t sub_227C54048(uint64_t a1)
{
  v3 = *v2;
  *(*v2 + 176) = a1;

  if (v1)
  {

    v4 = *(v3 + 8);

    return v4();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_227C54198, 0, 0);
  }
}

uint64_t sub_227C54198()
{
  v1 = v0[19];
  v2 = v0[22];
  v5 = *(v2 + 64);
  v4 = v2 + 64;
  v3 = v5;
  v6 = -1;
  v7 = -1 << *(v0[22] + 32);
  if (-v7 < 64)
  {
    v6 = ~(-1 << -v7);
  }

  v8 = v6 & v3;
  v9 = (63 - v7) >> 6;
  v59 = v0[19];
  v60 = v0[22];
  v55 = v1 + 40;
  v56 = v1 + 32;
  result = sub_227D4CE58();
  v11 = 0;
  v12 = MEMORY[0x277D84F98];
  v57 = v9;
  v58 = v4;
  if (v8)
  {
    while (1)
    {
LABEL_8:
      v14 = __clz(__rbit64(v8)) | (v11 << 6);
      v15 = (*(v60 + 48) + 16 * v14);
      v16 = *v15;
      v17 = v15[1];
      sub_227B11EE8(*(v60 + 56) + 40 * v14, (v0 + 4));
      v0[2] = v16;
      v0[3] = v17;
      sub_227C544B8((v0 + 2), (v0 + 9));
      v19 = v0[9];
      v18 = v0[10];
      v20 = v0[7];
      v21 = v0[8];
      __swift_project_boxed_opaque_existential_1(v0 + 4, v20);
      sub_227D4CE58();
      sub_227C54528(v20, v21);
      swift_isUniquelyReferenced_nonNull_native();
      result = sub_227B2664C(v19, v18);
      if (__OFADD__(*(v12 + 16), (v22 & 1) == 0))
      {
LABEL_25:
        __break(1u);
LABEL_26:
        __break(1u);
        return result;
      }

      v23 = result;
      v24 = v22;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E97E8, &qword_227D5E8C8);
      v25 = sub_227D4D7C8();
      if (v25)
      {
        v25 = sub_227B2664C(v19, v18);
        if ((v24 & 1) != (v26 & 1))
        {

          return sub_227D4DAE8();
        }

        v23 = v25;
      }

      v33 = v0[20];
      v34 = v0[18];
      if (v24)
      {

        v43 = OUTLINED_FUNCTION_0_43(v35, v36, v37, v38, v39, v40, v41, v42, v54, v55, v56, v57, v58, v59);
        (*(v44 + 40))(v43, v33, v34);
      }

      else
      {
        *(v12 + 8 * (v23 >> 6) + 64) |= 1 << v23;
        v45 = (*(v12 + 48) + 16 * v23);
        *v45 = v19;
        v45[1] = v18;
        v46 = OUTLINED_FUNCTION_0_43(v25, v26, v27, v28, v29, v30, v31, v32, v54, v55, v56, v57, v58, v59);
        result = (*(v47 + 32))(v46, v33, v34);
        v48 = *(v12 + 16);
        v49 = __OFADD__(v48, 1);
        v50 = v48 + 1;
        if (v49)
        {
          goto LABEL_26;
        }

        *(v12 + 16) = v50;
      }

      v8 &= v8 - 1;
      __swift_destroy_boxed_opaque_existential_0(v0 + 11);
      result = sub_227C545CC((v0 + 2));
      v9 = v57;
      v4 = v58;
      if (!v8)
      {
        goto LABEL_4;
      }
    }
  }

  while (1)
  {
LABEL_4:
    v13 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      __break(1u);
      goto LABEL_25;
    }

    if (v13 >= v9)
    {
      break;
    }

    v8 = *(v4 + 8 * v13);
    ++v11;
    if (v8)
    {
      v11 = v13;
      goto LABEL_8;
    }
  }

  v51 = v0[22];
  v52 = v0[16];

  *v52 = v12;
  v52[1] = v51;

  v53 = v0[1];

  return v53();
}

uint64_t sub_227C544B8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E97E0, &qword_227D5E8C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_227C54528(uint64_t a1, uint64_t a2)
{
  (*(a2 + 8))();
  (*(a2 + 16))(a1, a2);

  return sub_227D4A688();
}

uint64_t sub_227C545CC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E97E0, &qword_227D5E8C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_227C54654@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_227D4A678();
  v6 = v5;
  v7 = sub_227D4A6A8();
  v9 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6888, &unk_227D4E630);
  OUTLINED_FUNCTION_14_0();
  result = (*(v10 + 8))(a1);
  *a2 = v4;
  a2[1] = v6;
  a2[2] = v7;
  a2[3] = v9;
  return result;
}

GameServicesCore::GameIdentifier __swiftcall GameIdentifier.init(adamID:bundleID:)(Swift::String_optional adamID, Swift::String_optional bundleID)
{
  *v2 = adamID;
  v2[1] = bundleID;
  result.bundleID = bundleID;
  result.adamID = adamID;
  return result;
}

uint64_t static GameIdentifier.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = a2[1];
  v7 = a2[2];
  v8 = a2[3];
  if (v3)
  {
    if (!v6)
    {
      return 0;
    }

    v9 = *a1 == *a2 && v3 == v6;
    if (!v9 && (sub_227D4DA78() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v6)
  {
    return 0;
  }

  if (v5)
  {
    if (v8)
    {
      v10 = v4 == v7 && v5 == v8;
      if (v10 || (sub_227D4DA78() & 1) != 0)
      {
        return 1;
      }
    }
  }

  else if (!v8)
  {
    return 1;
  }

  return 0;
}

uint64_t Array<A>.queryableIDs(installMetadata:installedOnly:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v161 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6888, &unk_227D4E630);
  OUTLINED_FUNCTION_9();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_54_0();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_2_2();
  result = MEMORY[0x28223BE20](v13);
  v16 = v155 - v15;
  v17 = 0;
  v18 = *(a3 + 16);
  v175 = (v9 + 16);
  v160 = (v9 + 32);
  v165 = MEMORY[0x277D84F90];
  v164 = MEMORY[0x277D84F90];
  v167 = MEMORY[0x277D84F90];
  v163 = MEMORY[0x277D84F90];
  v166 = MEMORY[0x277D84F90];
  v168 = v155 - v15;
  v169 = v9 + 8;
  for (i = v18; ; v18 = i)
  {
    if (v18 == v17)
    {
      v150 = v161;
      v151 = v167;
      *v161 = v166;
      v150[1] = v151;
      v152 = v165;
      v150[2] = v164;
      v150[3] = v152;
      v150[4] = v163;
      return result;
    }

    if (v17 >= v18)
    {
      break;
    }

    if (__OFADD__(v17, 1))
    {
      goto LABEL_78;
    }

    v172 = v17 + 1;
    v19 = *(v9 + 72);
    v171 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v170 = v19;
    v174 = *v175;
    v174(v16, a3 + v171 + v19 * v17, v7);
    v20 = v178;
    v176 = sub_227D4A6A8();
    v178 = v20;
    if (v20)
    {
      v153 = OUTLINED_FUNCTION_30_9();
      v154(v153);
    }

    v22 = *(a1 + 16);
    v177 = v21;
    if (v22 && (v23 = sub_227B2664C(v176, v21), (v24 & 1) != 0))
    {
      sub_227C19454(*(a1 + 56) + 40 * v23, &v184);
      v25 = *(&v185 + 1) == 0;
      if ((a2 & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    else
    {
      v186 = 0;
      v25 = 1;
      v184 = 0u;
      v185 = 0u;
      if ((a2 & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    if (v25)
    {
      goto LABEL_15;
    }

LABEL_12:
    sub_227C579D8(&v184, &v181);
    v26 = v182;
    if (v182)
    {
      v27 = v9;
      v28 = v7;
      v29 = a1;
      v30 = a2;
      v31 = a3;
      v32 = v183;
      OUTLINED_FUNCTION_49_4();
      v33 = *(v32 + 48);
      v34 = v32;
      a3 = v31;
      a2 = v30;
      a1 = v29;
      v7 = v28;
      v9 = v27;
      v16 = v168;
      v35 = v33(v26, v34);
      __swift_destroy_boxed_opaque_existential_0(&v181);
      if (v35)
      {
        OUTLINED_FUNCTION_40_3();
LABEL_15:
        v36 = OUTLINED_FUNCTION_30_9();
        v37(v36);

        result = sub_227B4DB00(&v184, &qword_27D7E97F0, &qword_227D5EEF0);
        ++v17;
        continue;
      }
    }

    else
    {
      sub_227B4DB00(&v181, &qword_27D7E97F0, &qword_227D5EEF0);
    }

    if (!*(a1 + 16) || (v38 = sub_227B2664C(v176, v177), (v39 & 1) == 0))
    {
      v51 = v16;
      v52 = v178;
      v53 = sub_227D4A678();
      if (v52)
      {

        v157 = 0;
        v156 = 0;
      }

      else
      {
        v156 = v54;
        v157 = v53;
      }

      v178 = 0;
      v55 = v164;
      sub_227D4CE58();
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v56 = v165;
      }

      else
      {
        v115 = OUTLINED_FUNCTION_3_20();
        v56 = sub_227C576DC(v115, v116, v117, v118);
      }

      v57 = *(v56 + 2);
      OUTLINED_FUNCTION_24_7();
      if (v60)
      {
        v119 = OUTLINED_FUNCTION_55(v59);
        v58 = sub_227C576DC(v119, v120, v121, v122);
      }

      *(v58 + 2) = v16;
      v165 = v58;
      v61 = &v58[32 * v57];
      v62 = v156;
      *(v61 + 4) = v157;
      *(v61 + 5) = v62;
      v63 = v177;
      *(v61 + 6) = v176;
      *(v61 + 7) = v63;
      sub_227D4CE58();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v123 = OUTLINED_FUNCTION_21();
        v55 = sub_227B25F88(v123, v124, v125, v55);
      }

      OUTLINED_FUNCTION_24_7();
      if (v60)
      {
        v126 = OUTLINED_FUNCTION_55(v64);
        v55 = sub_227B25F88(v126, v127, v128, v55);
      }

      OUTLINED_FUNCTION_38_8();
      goto LABEL_63;
    }

    v157 = a3;
    sub_227C19454(*(a1 + 56) + 40 * v38, v180);
    sub_227B132F0(v180, &v181);
    v40 = v182;
    OUTLINED_FUNCTION_49_4();
    v41 = OUTLINED_FUNCTION_8_12();
    v42(v41);
    v43 = sub_227B6DCA4();
    OUTLINED_FUNCTION_27_8(v43);
    v44 = sub_227B6E22C();
    v45 = sub_227D4D578();
    v156 = v44;
    if (v45)
    {
      v46 = v159;
      OUTLINED_FUNCTION_32_5();
      v47();
      v48 = v178;
      v49 = sub_227D4A678();
      if (v48)
      {

        OUTLINED_FUNCTION_33_6();
      }

      else
      {
        OUTLINED_FUNCTION_43_6(v49, v50);
      }

      v73 = v163;
      OUTLINED_FUNCTION_40_3();
      v74 = sub_227D4A6A8();
      if (v48)
      {

        OUTLINED_FUNCTION_36_7();
      }

      else
      {
        OUTLINED_FUNCTION_35_5(v74);
      }

      (*v40)(v46, v7);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v129 = OUTLINED_FUNCTION_21();
        v73 = sub_227C576DC(v129, v130, v131, v73);
      }

      v75 = *(v73 + 2);
      OUTLINED_FUNCTION_24_7();
      if (v60)
      {
        v132 = OUTLINED_FUNCTION_55(v77);
        v78 = sub_227C576DC(v132, v133, v134, v73);
        v76 = v165;
        v73 = v78;
      }

      else
      {
        v78 = v73;
      }

LABEL_54:
      v165 = v76;
      v163 = v73;
      *(v78 + 2) = v46;
      v81 = &v78[32 * v75];
      v82 = v155[3];
      *(v81 + 4) = v155[2];
      *(v81 + 5) = v82;
      *(v81 + 6) = v155[1];
      *(v81 + 7) = v44;
      goto LABEL_55;
    }

    v65 = v182;
    OUTLINED_FUNCTION_49_4();
    v66 = OUTLINED_FUNCTION_8_12();
    v67(v66);
    v68 = sub_227B6DC90();
    OUTLINED_FUNCTION_27_8(v68);
    if (sub_227D4D578())
    {
      v46 = v158;
      OUTLINED_FUNCTION_32_5();
      v69();
      v70 = v178;
      sub_227D4A678();
      OUTLINED_FUNCTION_40_3();
      if (v70)
      {

        OUTLINED_FUNCTION_33_6();
      }

      else
      {
        OUTLINED_FUNCTION_43_6(v71, v72);
      }

      v73 = v163;
      v79 = sub_227D4A6A8();
      if (v70)
      {

        OUTLINED_FUNCTION_36_7();
      }

      else
      {
        OUTLINED_FUNCTION_35_5(v79);
      }

      (*v65)(v46, v7);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v142 = OUTLINED_FUNCTION_3_20();
        v165 = sub_227C576DC(v142, v143, v144, v145);
      }

      v75 = *(v165 + 2);
      OUTLINED_FUNCTION_24_7();
      if (v60)
      {
        v146 = OUTLINED_FUNCTION_55(v80);
        v78 = sub_227C576DC(v146, v147, v148, v149);
        v76 = v78;
      }

      else
      {
        v78 = v76;
      }

      goto LABEL_54;
    }

LABEL_55:
    OUTLINED_FUNCTION_49_4();
    v83 = OUTLINED_FUNCTION_8_12();
    v84(v83);
    v85 = sub_227B6DCB8();
    OUTLINED_FUNCTION_27_8(v85);
    v51 = &v179;
    if (sub_227D4D578())
    {
      sub_227D4CE58();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      a3 = v157;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v135 = OUTLINED_FUNCTION_3_20();
        v164 = sub_227B25F88(v135, v136, v137, v138);
      }

      v55 = v164;
      OUTLINED_FUNCTION_24_7();
      if (v60)
      {
        v139 = OUTLINED_FUNCTION_55(v87);
        v55 = sub_227B25F88(v139, v140, v141, v55);
      }

      OUTLINED_FUNCTION_38_8();
    }

    else
    {
      a3 = v157;
      v55 = v164;
    }

    __swift_destroy_boxed_opaque_existential_0(&v181);
LABEL_63:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v100 = OUTLINED_FUNCTION_3_20();
      v167 = sub_227B25F88(v100, v101, v102, v103);
    }

    v88 = *(v167 + 2);
    OUTLINED_FUNCTION_24_7();
    v90 = v177;
    if (v60)
    {
      v104 = OUTLINED_FUNCTION_55(v89);
      v107 = sub_227B25F88(v104, v105, v106, v167);
      v90 = v177;
      v167 = v107;
    }

    v91 = v167;
    *(v167 + 2) = v51;
    v92 = &v91[16 * v88];
    *(v92 + 4) = v176;
    *(v92 + 5) = v90;
    OUTLINED_FUNCTION_32_5();
    v93();
    v94 = swift_isUniquelyReferenced_nonNull_native();
    v164 = v55;
    if ((v94 & 1) == 0)
    {
      v108 = OUTLINED_FUNCTION_3_20();
      v166 = sub_227C575E4(v108, v109, v110, v111);
    }

    v96 = *(v166 + 2);
    v95 = *(v166 + 3);
    if (v96 >= v95 >> 1)
    {
      v112 = OUTLINED_FUNCTION_55(v95);
      v166 = sub_227C575E4(v112, v113, v114, v166);
    }

    OUTLINED_FUNCTION_40_3();
    v97 = OUTLINED_FUNCTION_30_9();
    v98(v97);
    v99 = v166;
    *(v166 + 2) = v96 + 1;
    (*v160)(&v99[v171 + v96 * v170], v162, v7);
    result = sub_227B4DB00(&v184, &qword_27D7E97F0, &qword_227D5EEF0);
    v17 = v172;
  }

  __break(1u);
LABEL_78:
  __break(1u);
  return result;
}

uint64_t sub_227C551F8(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    v5 = swift_task_alloc();
    *(v4 + 96) = v5;
    *v5 = v4;
    v6 = OUTLINED_FUNCTION_0_32(v5);
  }

  else
  {
    v8 = swift_task_alloc();
    *(v4 + 120) = v8;
    *v8 = v4;
    v6 = OUTLINED_FUNCTION_0_32(v8);
  }

  return v7(v6);
}

uint64_t sub_227C553E4()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_8();
  v4 = v3;
  OUTLINED_FUNCTION_2();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_5_4();
  *v7 = v6;
  *(v4 + 104) = v1;

  if (v1)
  {
    v8 = *(v6 + 8);

    return v8();
  }

  else
  {
    *(v4 + 112) = v0;

    return MEMORY[0x2822009F8](sub_227C5551C, 0, 0);
  }
}

uint64_t sub_227C5551C()
{
  OUTLINED_FUNCTION_20();
  sub_227C57D08(*(v0 + 112));

  v1 = OUTLINED_FUNCTION_15_10();

  return v2(v1);
}

uint64_t sub_227C55590()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_2();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 128) = v4;

  if (v0)
  {
    OUTLINED_FUNCTION_18();

    return v5();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_227C556B8, 0, 0);
  }
}

void sub_227C556B8()
{
  v1 = *(v0 + 128);
  v2 = *(v1 + 16);
  if (!v2)
  {
LABEL_15:

    OUTLINED_FUNCTION_16_0();

    __asm { BRAA            X2, X16 }
  }

  v3 = 0;
  v4 = v1 + 32;
  v5 = MEMORY[0x277D84F98];
  v27 = *(v1 + 16);
  v28 = *(v0 + 128);
  while (v3 < *(v1 + 16))
  {
    sub_227C19454(v4, v0 + 16);
    v6 = *(v0 + 40);
    v7 = *(v0 + 48);
    __swift_project_boxed_opaque_existential_1((v0 + 16), v6);
    if (sub_227C55944(v6, v7))
    {
      __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
      v8 = OUTLINED_FUNCTION_17_12();
      v10 = v9(v8);
      v12 = v11;
      sub_227C19454(v0 + 16, v0 + 56);
      swift_isUniquelyReferenced_nonNull_native();
      v13 = sub_227B2664C(v10, v12);
      if (__OFADD__(v5[2], (v14 & 1) == 0))
      {
        goto LABEL_22;
      }

      v15 = v13;
      v16 = v14;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E97F8, &qword_227D5E978);
      if (sub_227D4D7C8())
      {
        v17 = sub_227B2664C(v10, v12);
        if ((v16 & 1) != (v18 & 1))
        {
          OUTLINED_FUNCTION_16_0();

          sub_227D4DAE8();
          return;
        }

        v15 = v17;
      }

      if (v16)
      {

        v19 = (v5[7] + 40 * v15);
        __swift_destroy_boxed_opaque_existential_0(v19);
        sub_227B132F0((v0 + 56), v19);
      }

      else
      {
        v5[(v15 >> 6) + 8] |= 1 << v15;
        v20 = (v5[6] + 16 * v15);
        *v20 = v10;
        v20[1] = v12;
        sub_227B132F0((v0 + 56), v5[7] + 40 * v15);
        v21 = v5[2];
        v22 = __OFADD__(v21, 1);
        v23 = v21 + 1;
        if (v22)
        {
          goto LABEL_23;
        }

        v5[2] = v23;
      }

      v2 = v27;
      v1 = v28;
    }

    ++v3;
    __swift_destroy_boxed_opaque_existential_0((v0 + 16));
    v4 += 40;
    if (v2 == v3)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
}

BOOL sub_227C55944(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_9();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_3();
  v10 = v9 - v8;
  sub_227D4CAB8();
  OUTLINED_FUNCTION_9();
  v28 = v12;
  v29 = v11;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_3();
  v15 = v14 - v13;
  v16 = (*(a2 + 8))(a1, a2);
  sub_227C58D0C();
  v17 = sub_227D4D4B8();
  OUTLINED_FUNCTION_113();
  v18 = sub_227D4D4C8();

  if (v18)
  {
    sub_227D4AA58();
    (*(v6 + 16))(v10, v2, a1);
    v19 = sub_227D4CA98();
    v20 = sub_227D4D438();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v30 = v27;
      *v21 = 136315138;
      v22 = (*(a2 + 16))(a1, a2);
      v24 = v23;
      (*(v6 + 8))(v10, a1);
      v25 = sub_227B1B1A4(v22, v24, &v30);

      *(v21 + 4) = v25;
      _os_log_impl(&dword_227B0D000, v19, v20, "Invalid data for Game Center data with bundleID: %s", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v27);
      MEMORY[0x22AAA7130](v27, -1, -1);
      MEMORY[0x22AAA7130](v21, -1, -1);
    }

    else
    {

      (*(v6 + 8))(v10, a1);
    }

    (*(v28 + 8))(v15, v29);
  }

  return (v18 & 1) == 0;
}

uint64_t sub_227C55C0C()
{
  OUTLINED_FUNCTION_20();
  v3 = v2;
  v5 = v4;
  *(v1 + 1776) = v0;
  *(v1 + 1768) = v6;
  *(v1 + 1720) = v7;
  *(v1 + 1864) = v8;
  *(v1 + 1672) = v4;
  v9 = *(v7 - 8);
  *(v1 + 1784) = v9;
  *(v1 + 1792) = *(v9 + 64);
  *(v1 + 1800) = swift_task_alloc();
  *(v1 + 1808) = swift_task_alloc();
  v10 = *(v5 + 16);
  *(v1 + 1336) = *v5;
  *(v1 + 1352) = v10;
  *(v1 + 1368) = *(v5 + 32);
  *(v1 + 1865) = *v3;

  return MEMORY[0x2822009F8](sub_227C55D08, 0, 0);
}

uint64_t sub_227C55D08()
{
  v25 = *(v0 + 1865);
  v18 = *(v0 + 1808);
  v23 = *(v0 + 1800);
  v1 = *(v0 + 1792);
  v2 = *(v0 + 1784);
  v21 = *(v0 + 1776);
  v3 = *(v0 + 1768);
  v20 = v3;
  v4 = *(v0 + 1720);
  v24 = *(v0 + 1864);
  v5 = *(v0 + 1672);
  v22 = *(v2 + 16);
  v22();
  v6 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v7 = (v1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = swift_allocObject();
  *(v8 + 16) = v4;
  *(v8 + 24) = v3;
  v19 = *(v2 + 32);
  v19(v8 + v6, v18, v4);
  v9 = v8 + v7;
  v10 = *(v5 + 32);
  v11 = *(v5 + 16);
  *v9 = *v5;
  *(v9 + 16) = v11;
  *(v9 + 32) = v10;
  *(v8 + v7 + 40) = v25;
  *(v8 + v7 + 41) = v24;
  v12 = swift_allocObject();
  *(v0 + 1816) = v12;
  *(v12 + 16) = &unk_227D5E990;
  *(v12 + 24) = v8;
  sub_227C58420(v0 + 1336, v0 + 1416);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9800, &qword_227D5EE90);
  swift_asyncLet_begin();
  (v22)(v23, v21, v4);
  v13 = swift_allocObject();
  *(v13 + 16) = v4;
  *(v13 + 24) = v20;
  v19(v13 + v6, v23, v4);
  v14 = v13 + v7;
  v15 = *(v0 + 1352);
  *v14 = *(v0 + 1336);
  *(v14 + 16) = v15;
  *(v14 + 32) = *(v0 + 1368);
  *(v13 + v7 + 40) = v25;
  *(v13 + v7 + 41) = v24;
  v16 = swift_allocObject();
  *(v0 + 1824) = v16;
  *(v16 + 16) = &unk_227D5E9B8;
  *(v16 + 24) = v13;
  sub_227C58420(v0 + 1336, v0 + 1496);
  swift_asyncLet_begin();

  return MEMORY[0x282200930](v0 + 16, v0 + 1576, sub_227C55FE4, v0 + 1296);
}

uint64_t sub_227C55FE4()
{
  OUTLINED_FUNCTION_6();
  v1[229] = v0;
  if (v0)
  {

    return MEMORY[0x282200920](v1 + 82, v1 + 203, sub_227C5620C, v1 + 172);
  }

  else
  {
    v1[230] = v1[197];
    sub_227D4CE58();
    v2 = OUTLINED_FUNCTION_31_4();

    return MEMORY[0x282200930](v2, v3, v4, v1 + 192);
  }
}

uint64_t sub_227C5608C()
{
  *(v1 + 1848) = v0;
  if (v0)
  {
    return OUTLINED_FUNCTION_22(sub_227C562CC);
  }

  else
  {
    return OUTLINED_FUNCTION_22(sub_227C560B8);
  }
}

uint64_t sub_227C560B8()
{
  OUTLINED_FUNCTION_20();
  v1 = *(v0 + 1840);
  v2 = sub_227D4CE58();
  *(v0 + 1856) = sub_227C56E48(v2, v1);
  v3 = OUTLINED_FUNCTION_31_4();

  return MEMORY[0x282200920](v3, v4, v5, v0 + 1680);
}

uint64_t sub_227C5617C()
{
  OUTLINED_FUNCTION_20();

  v1 = *(v0 + 8);
  v2 = *(v0 + 1856);

  return v1(v2);
}

uint64_t sub_227C56254()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_47_6();

  OUTLINED_FUNCTION_18();

  return v0();
}

uint64_t sub_227C562CC()
{
  OUTLINED_FUNCTION_6();

  v1 = OUTLINED_FUNCTION_31_4();

  return MEMORY[0x282200920](v1, v2, v3, v0 + 1584);
}

uint64_t sub_227C56374()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_47_6();

  OUTLINED_FUNCTION_18();

  return v0();
}

uint64_t sub_227C563EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_183();
  OUTLINED_FUNCTION_119();
  OUTLINED_FUNCTION_41_6();
  *(v10 + 32) = v11 & 1;
  *(v10 + 33) = 0;
  v12 = swift_task_alloc();
  *(v10 + 16) = v12;
  *v12 = v10;
  v12[1] = sub_227C564A4;
  OUTLINED_FUNCTION_34_5();
  OUTLINED_FUNCTION_163();

  return sub_227C565C0(v13, v14, v15, v16, v17, v18);
}

uint64_t sub_227C564A4()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_2();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v5 = v4;
  *(v6 + 24) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_227C58D50, 0, 0);
  }

  else
  {
    v7 = OUTLINED_FUNCTION_15_10();

    return v8(v7);
  }
}

uint64_t sub_227C565C0(uint64_t a1, _BYTE *a2, _BYTE *a3, char a4, uint64_t a5, uint64_t a6)
{
  *(v7 + 32) = a6;
  *(v7 + 40) = v6;
  *(v7 + 82) = a4;
  *(v7 + 16) = a1;
  *(v7 + 24) = a5;
  *(v7 + 83) = *a2;
  *(v7 + 84) = *a3;
  return OUTLINED_FUNCTION_22(sub_227C565F0);
}

void sub_227C565F0()
{
  v1 = 0;
  v2 = *(v0 + 16);
  v3 = *(v2 + 16);
  v4 = v2 + 32;
  v5 = MEMORY[0x277D84F90];
  v6 = MEMORY[0x277D84F90];
LABEL_2:
  *(v0 + 48) = v5;
LABEL_3:
  *(v0 + 56) = v6;
  v7 = (v4 + 32 * v1);
  v8 = v1;
  while (1)
  {
    if (v3 == v8)
    {
      v26 = *(v0 + 84);
      *(v0 + 80) = *(v0 + 83);
      *(v0 + 81) = v26;
      v27 = swift_task_alloc();
      *(v0 + 64) = v27;
      *v27 = v0;
      v27[1] = sub_227C568B8;
      OUTLINED_FUNCTION_16_0();

      __asm { BRAA            X7, X16 }
    }

    if (v8 >= v3)
    {
      break;
    }

    v1 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      goto LABEL_24;
    }

    v9 = v7[3];
    v10 = v7[1];
    if (v10)
    {
      v30 = v4;
      v11 = *v7;
      sub_227D4CE58();
      swift_bridgeObjectRetain_n();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v15 = OUTLINED_FUNCTION_21();
        v6 = sub_227B25F88(v15, v16, v17, v6);
      }

      v13 = *(v6 + 2);
      v12 = *(v6 + 3);
      if (v13 >= v12 >> 1)
      {
        v6 = sub_227B25F88((v12 > 1), v13 + 1, 1, v6);
      }

      *(v6 + 2) = v13 + 1;
      v14 = &v6[16 * v13];
      *(v14 + 4) = v11;
      *(v14 + 5) = v10;

      v4 = v30;
      goto LABEL_3;
    }

    ++v8;
    v7 += 4;
    if (v9)
    {
      v18 = *(v7 - 2);
      swift_bridgeObjectRetain_n();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v23 = OUTLINED_FUNCTION_21();
        v5 = sub_227B25F88(v23, v24, v25, v5);
      }

      v21 = *(v5 + 2);
      v20 = *(v5 + 3);
      if (v21 >= v20 >> 1)
      {
        v5 = sub_227B25F88((v20 > 1), v21 + 1, 1, v5);
      }

      *(v5 + 2) = v21 + 1;
      v22 = &v5[16 * v21];
      *(v22 + 4) = v18;
      *(v22 + 5) = v9;

      goto LABEL_2;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
}

uint64_t sub_227C568B8()
{
  OUTLINED_FUNCTION_20();
  v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_2();
  *v5 = v4;
  v6 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v7 = v6;
  *(v4 + 72) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_227C56A04, 0, 0);
  }

  else
  {

    v8 = *(v6 + 8);

    return v8(v3);
  }
}

uint64_t sub_227C56A04()
{
  OUTLINED_FUNCTION_6();

  OUTLINED_FUNCTION_18();

  return v0();
}

uint64_t sub_227C56A68(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_227C56B54;

  return v5();
}

uint64_t sub_227C56B54()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_8();
  v4 = v3;
  OUTLINED_FUNCTION_2();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_5_4();
  *v7 = v6;

  if (!v1)
  {
    **(v4 + 16) = v0;
  }

  v8 = *(v6 + 8);

  return v8();
}

uint64_t sub_227C56C4C()
{
  OUTLINED_FUNCTION_183();
  OUTLINED_FUNCTION_119();
  OUTLINED_FUNCTION_41_6();
  *(v0 + 32) = v1 & 1;
  *(v0 + 33) = 1;
  v2 = swift_task_alloc();
  *(v0 + 16) = v2;
  *v2 = v0;
  v2[1] = sub_227C56D08;
  OUTLINED_FUNCTION_34_5();
  OUTLINED_FUNCTION_163();

  return sub_227C565C0(v3, v4, v5, v6, v7, v8);
}

uint64_t sub_227C56D08()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_2();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v5 = v4;
  *(v6 + 24) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_227C56E24, 0, 0);
  }

  else
  {
    v7 = OUTLINED_FUNCTION_15_10();

    return v8(v7);
  }
}

uint64_t sub_227C56E48(uint64_t a1, uint64_t a2)
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = a2;
  sub_227C587CC(a1, sub_227C58794, 0, isUniquelyReferenced_nonNull_native, &v8);
  v6 = v8;
  if (v2)
  {
  }

  return v6;
}

uint64_t sub_227C56ECC(void *a1)
{
  sub_227D49BA8();
  OUTLINED_FUNCTION_9();
  v81 = v2;
  v82 = v3;
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_3();
  v80 = v5 - v4;
  sub_227D49588();
  OUTLINED_FUNCTION_9();
  v83 = v7;
  v84 = v6;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_54_0();
  v10 = v8 - v9;
  MEMORY[0x28223BE20](v11);
  v12 = sub_227D4AA88();
  OUTLINED_FUNCTION_9();
  v14 = v13;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_54_0();
  v18 = (v16 - v17);
  MEMORY[0x28223BE20](v19);
  v21 = &v78[-v20];
  OUTLINED_FUNCTION_20_9();
  v22 = OUTLINED_FUNCTION_17_12();
  if (v23(v22))
  {
    goto LABEL_30;
  }

  OUTLINED_FUNCTION_20_9();
  v24 = OUTLINED_FUNCTION_17_12();
  if ((v25(v24) & 1) == 0)
  {
    goto LABEL_30;
  }

  if (sub_227D49BC8())
  {
    OUTLINED_FUNCTION_20_9();
    v26 = OUTLINED_FUNCTION_39_6();
    if ((v27(v26) & 1) == 0)
    {
      goto LABEL_30;
    }
  }

  if (sub_227D49BB8())
  {
    OUTLINED_FUNCTION_20_9();
    v28 = OUTLINED_FUNCTION_17_12();
    v29(v28);
    sub_227D4AA78();
    sub_227C58B74(&qword_27D7E6810, MEMORY[0x277D0D550], MEMORY[0x277D0D558]);
    v30 = sub_227D4D578();
    v31 = *(v14 + 8);
    v31(v18, v12);
    v31(v21, v12);
    if ((v30 & 1) == 0)
    {
      goto LABEL_30;
    }
  }

  v32 = sub_227D49BE8();
  v33 = v83;
  v34 = v84;
  if (v32)
  {
    v35 = OUTLINED_FUNCTION_4_21();
    v36(v35);
    sub_227D49548();
    OUTLINED_FUNCTION_1_24();
    sub_227C58B74(v37, v38, MEMORY[0x277D0C9E8]);
    OUTLINED_FUNCTION_10_15();
    sub_227D4D578();
    v39 = OUTLINED_FUNCTION_9_10();
    v18(v39);
    v40 = OUTLINED_FUNCTION_113();
    v18(v40);
    if ((v21 & 1) == 0)
    {
      goto LABEL_30;
    }
  }

  if (sub_227D49C28())
  {
    v41 = OUTLINED_FUNCTION_4_21();
    v42(v41);
    sub_227D49578();
    OUTLINED_FUNCTION_1_24();
    sub_227C58B74(v43, v44, MEMORY[0x277D0C9E8]);
    OUTLINED_FUNCTION_10_15();
    sub_227D4D578();
    v45 = OUTLINED_FUNCTION_9_10();
    v18(v45);
    v46 = OUTLINED_FUNCTION_113();
    v18(v46);
    if ((v21 & 1) == 0)
    {
      goto LABEL_30;
    }
  }

  if (sub_227D49BF8())
  {
    v47 = OUTLINED_FUNCTION_4_21();
    v48(v47);
    sub_227D49558();
    OUTLINED_FUNCTION_1_24();
    sub_227C58B74(v49, v50, MEMORY[0x277D0C9E8]);
    OUTLINED_FUNCTION_10_15();
    sub_227D4D578();
    v51 = OUTLINED_FUNCTION_9_10();
    v18(v51);
    v52 = OUTLINED_FUNCTION_113();
    v18(v52);
    if ((v21 & 1) == 0)
    {
      goto LABEL_30;
    }
  }

  v53 = OUTLINED_FUNCTION_4_21();
  v54(v53);
  sub_227D49538();
  OUTLINED_FUNCTION_1_24();
  sub_227C58B74(v55, v56, MEMORY[0x277D0C9E8]);
  OUTLINED_FUNCTION_10_15();
  v79 = sub_227D4D578();
  v57 = *(v33 + 8);
  v57(v10, v34);
  v58 = OUTLINED_FUNCTION_113();
  (v57)(v58);
  OUTLINED_FUNCTION_20_9();
  v59 = OUTLINED_FUNCTION_39_6();
  v60(v59);
  sub_227D49568();
  OUTLINED_FUNCTION_10_15();
  v61 = sub_227D4D578();
  v57(v10, v34);
  v62 = OUTLINED_FUNCTION_113();
  (v57)(v62);
  if (sub_227D49C18() & 1) != 0 && (sub_227D49C08())
  {
    v63 = v61 | v79;
    return v63 & 1;
  }

  if (!(v61 & 1 | ((sub_227D49C18() & 1) == 0)) || !(v79 & 1 | ((sub_227D49C08() & 1) == 0)) || (sub_227D49BD8() & 1) != 0 && (v64 = a1[3], v65 = a1[4], __swift_project_boxed_opaque_existential_1(a1, v64), ((*(v65 + 40))(v64, v65) & 1) != 0))
  {
LABEL_30:
    v63 = 0;
    return v63 & 1;
  }

  v66 = sub_227D49C38();
  if (!v66)
  {
LABEL_28:
    v63 = 1;
    return v63 & 1;
  }

  if (!*(v66 + 16))
  {
LABEL_27:

    goto LABEL_28;
  }

  v85 = v66;
  v67 = a1[3];
  v68 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v67);
  result = (*(v68 + 80))(v67, v68);
  v70 = result;
  v71 = 0;
  v72 = *(result + 16);
  v73 = v81;
  v83 = v82 + 8;
  v84 = v82 + 16;
  while (1)
  {
    if (v72 == v71)
    {

      goto LABEL_30;
    }

    if (v71 >= *(v70 + 16))
    {
      break;
    }

    v74 = v82;
    v75 = v80;
    (*(v82 + 16))(v80, v70 + ((*(v74 + 80) + 32) & ~*(v74 + 80)) + *(v74 + 72) * v71++, v73);
    v86[0] = sub_227D49B98();
    v86[1] = v76;
    MEMORY[0x28223BE20](v86[0]);
    *&v78[-16] = v86;
    v77 = sub_227BB7050(sub_227BB7AF0, &v78[-32], v85);
    (*(v74 + 8))(v75, v73);

    if (v77)
    {

      goto LABEL_27;
    }
  }

  __break(1u);
  return result;
}

void *sub_227C575E4(void *result, int64_t a2, char a3, uint64_t a4)
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
  v9 = sub_227C577E4(v8, v7);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6888, &unk_227D4E630) - 8);
  if (v5)
  {
    v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    sub_227C578EC(a4 + v11, v8, v9 + v11);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v9;
}

char *sub_227C576DC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9830, &unk_227D5EAD0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 32);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
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

void *sub_227C577E4(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E8CF0, &qword_227D5BA40);
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6888, &unk_227D4E630) - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v7);
  if (v5)
  {
    if ((result - v6) != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * ((result - v6) / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_227C578EC(unint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 < a1 || (result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6888, &unk_227D4E630), a1 + *(*(result - 8) + 72) * a2 <= a3))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6888, &unk_227D4E630);

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (a3 != a1)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

uint64_t sub_227C579D8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E97F0, &qword_227D5EEF0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_227C57A48(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9818, &qword_227D5EAA8);
  v33 = v4;
  result = sub_227D4D828();
  v7 = result;
  if (!*(v5 + 16))
  {
LABEL_32:

LABEL_33:
    *v3 = v7;
    return result;
  }

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
  if (!v12)
  {
LABEL_7:
    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v17 = v9[v8];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v12 = (v17 - 1) & v17;
        goto LABEL_12;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      sub_227B26E40(0, (v32 + 63) >> 6, v5 + 64);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
    goto LABEL_32;
  }

  while (1)
  {
    v15 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_12:
    v18 = v15 | (v8 << 6);
    v19 = (*(v5 + 48) + 16 * v18);
    v20 = *v19;
    v21 = v19[1];
    v22 = (*(v5 + 56) + 40 * v18);
    if (v33)
    {
      sub_227B132F0(v22, v34);
    }

    else
    {
      sub_227C19454(v22, v34);
      sub_227D4CE58();
    }

    sub_227D4DB58();
    sub_227D4D048();
    result = sub_227D4DB98();
    v23 = -1 << *(v7 + 32);
    v24 = result & ~v23;
    v25 = v24 >> 6;
    if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
    {
      break;
    }

    v26 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_24:
    *(v14 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
    v31 = (*(v7 + 48) + 16 * v26);
    *v31 = v20;
    v31[1] = v21;
    result = sub_227B132F0(v34, *(v7 + 56) + 40 * v26);
    ++*(v7 + 16);
    if (!v12)
    {
      goto LABEL_7;
    }
  }

  v27 = 0;
  v28 = (63 - v23) >> 6;
  while (++v25 != v28 || (v27 & 1) == 0)
  {
    v29 = v25 == v28;
    if (v25 == v28)
    {
      v25 = 0;
    }

    v27 |= v29;
    v30 = *(v14 + 8 * v25);
    if (v30 != -1)
    {
      v26 = __clz(__rbit64(~v30)) + (v25 << 6);
      goto LABEL_24;
    }
  }

LABEL_35:
  __break(1u);
  return result;
}

unint64_t *sub_227C57D08(uint64_t a1)
{
  v2 = a1;
  v9[1] = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v4 = ((1 << v3) + 63) >> 6;
  if ((v3 & 0x3Fu) > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v8 = swift_slowAlloc();
      v2 = sub_227C57FEC(v8, v4, v2);
      MEMORY[0x22AAA7130](v8, -1, -1);
      return v2;
    }
  }

  MEMORY[0x28223BE20](a1);
  v5 = (v9 - ((8 * v4 + 15) & 0x3FFFFFFFFFFFFFF0));
  sub_227B26E40(0, v4, v5);
  v6 = sub_227C57E6C(v5, v4, v2);
  if (!v1)
  {
    return v6;
  }

  swift_willThrow();
  return v2;
}

unint64_t *sub_227C57E6C(unint64_t *result, uint64_t a2, uint64_t a3)
{
  v18 = result;
  v4 = 0;
  v5 = a3 + 64;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 64);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
LABEL_11:
    v13 = v10 | (v4 << 6);
    sub_227C19454(*(a3 + 56) + 40 * v13, v19);
    v14 = v20;
    v15 = v21;
    __swift_project_boxed_opaque_existential_1(v19, v20);
    sub_227D4CE58();
    LOBYTE(v14) = sub_227C55944(v14, v15);
    __swift_destroy_boxed_opaque_existential_0(v19);

    if (v14)
    {
      *(v18 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      if (__OFADD__(v22++, 1))
      {
        __break(1u);
        return sub_227C58064(v18, a2, v22, a3);
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

    if (v4 >= v9)
    {
      return sub_227C58064(v18, a2, v22, a3);
    }

    v12 = *(v5 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v8 = (v12 - 1) & v12;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

unint64_t *sub_227C57FEC(unint64_t *result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v5 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v6 = sub_227C57E6C(v5, a2, a3);

    return v6;
  }

  return result;
}

uint64_t sub_227C58064(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return MEMORY[0x277D84F98];
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9828, &unk_227D5EAC0);
  result = sub_227D4D838();
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
    sub_227C19454(v17 + 40 * v16, v33);
    sub_227B132F0(v33, v32);
    sub_227D4DB58();
    sub_227D4CE58();
    sub_227D4D048();
    result = sub_227D4DB98();
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
    result = sub_227B132F0(v32, *(v9 + 56) + 40 * v24);
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

uint64_t sub_227C582B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_183();
  OUTLINED_FUNCTION_119();
  OUTLINED_FUNCTION_14_11();
  OUTLINED_FUNCTION_14_11();
  OUTLINED_FUNCTION_22_8();
  v10 = swift_task_alloc();
  v11 = OUTLINED_FUNCTION_20_0(v10);
  *v11 = v12;
  OUTLINED_FUNCTION_19_10(v11);
  OUTLINED_FUNCTION_163();

  return sub_227C563EC(v13, v14, v15, v16, v17, v18, v19, v20, a9, a10);
}

uint64_t sub_227C5838C()
{
  OUTLINED_FUNCTION_20();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_20_0(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_0_31(v1);

  return v4(v3);
}

uint64_t objectdestroyTm_1()
{
  OUTLINED_FUNCTION_14_0();
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = (*(v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x2821FE8E8](v0, v4 + 42, v2 | 7);
}

uint64_t sub_227C5850C()
{
  OUTLINED_FUNCTION_183();
  OUTLINED_FUNCTION_119();
  OUTLINED_FUNCTION_14_11();
  OUTLINED_FUNCTION_14_11();
  OUTLINED_FUNCTION_22_8();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_20_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_19_10(v1);
  OUTLINED_FUNCTION_163();

  return sub_227C56C4C();
}

uint64_t sub_227C585E0()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_8();
  v1 = *v0;
  OUTLINED_FUNCTION_5_4();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_15_10();

  return v4(v3);
}

uint64_t sub_227C586C0()
{
  OUTLINED_FUNCTION_20();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_20_0(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_0_31(v1);

  return v4(v3);
}

uint64_t sub_227C58754(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_227C19454(a4, a1);
  sub_227D4CE58();
  return a2;
}

uint64_t sub_227C58794@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_227C58754((a2 + 2), *a1, a1[1], (a1 + 2));
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_227C587CC(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5)
{
  sub_227B3D8D4(a1, a2, a3, v35);
  v31 = v35[0];
  v32 = v35[1];
  v33 = v35[2];
  v34 = v36;
  sub_227D4CE58();

  while (1)
  {
    sub_227C58A0C(&v28);
    v7 = v29;
    if (!v29)
    {
      sub_227B223D4(v31);
    }

    v8 = v28;
    sub_227B132F0(&v30, v27);
    v9 = *a5;
    v11 = sub_227B2664C(v8, v7);
    v12 = *(v9 + 16);
    v13 = (v10 & 1) == 0;
    v14 = v12 + v13;
    if (__OFADD__(v12, v13))
    {
      break;
    }

    v15 = v10;
    if (*(v9 + 24) >= v14)
    {
      if (a4)
      {
        if (v10)
        {
          goto LABEL_10;
        }
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9810, &qword_227D5EAA0);
        sub_227D4D7D8();
        if (v15)
        {
          goto LABEL_10;
        }
      }
    }

    else
    {
      sub_227C57A48(v14, a4 & 1);
      v16 = sub_227B2664C(v8, v7);
      if ((v15 & 1) != (v17 & 1))
      {
        goto LABEL_18;
      }

      v11 = v16;
      if (v15)
      {
LABEL_10:
        v18 = *a5;
        sub_227C19454(*(*a5 + 56) + 40 * v11, v26);
        __swift_destroy_boxed_opaque_existential_0(v27);

        v19 = (*(v18 + 56) + 40 * v11);
        __swift_destroy_boxed_opaque_existential_0(v19);
        sub_227B132F0(v26, v19);
        goto LABEL_14;
      }
    }

    v20 = *a5;
    *(*a5 + 8 * (v11 >> 6) + 64) |= 1 << v11;
    v21 = (v20[6] + 16 * v11);
    *v21 = v8;
    v21[1] = v7;
    sub_227B132F0(v27, v20[7] + 40 * v11);
    v22 = v20[2];
    v23 = __OFADD__(v22, 1);
    v24 = v22 + 1;
    if (v23)
    {
      goto LABEL_17;
    }

    v20[2] = v24;
LABEL_14:
    a4 = 1;
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  result = sub_227D4DAE8();
  __break(1u);
  return result;
}

uint64_t sub_227C58A0C@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  if (v7)
  {
    v8 = v1[3];
LABEL_7:
    v9 = (v7 - 1) & v7;
    v10 = __clz(__rbit64(v7)) | (v8 << 6);
    v11 = (*(v3 + 48) + 16 * v10);
    v13 = *v11;
    v12 = v11[1];
    sub_227C19454(*(v3 + 56) + 40 * v10, v18);
    *&v20 = v13;
    *(&v20 + 1) = v12;
    sub_227B132F0(v18, &v21);
    result = sub_227D4CE58();
    v15 = *(&v20 + 1);
    v16 = v20;
LABEL_8:
    *v1 = v3;
    v1[1] = v4;
    v1[2] = v5;
    v1[3] = v6;
    v1[4] = v9;
    if (v15)
    {
      v17 = v1[5];
      *&v18[0] = v16;
      *(&v18[0] + 1) = v15;
      v18[1] = v21;
      v18[2] = v22;
      v19 = v23;
      v17(v18);
      return sub_227B4DB00(v18, &qword_27D7E9820, &qword_227D5EAB0);
    }

    else
    {
      *(a1 + 48) = 0;
      *(a1 + 16) = 0u;
      *(a1 + 32) = 0u;
      *a1 = 0u;
    }
  }

  else
  {
    while (1)
    {
      v8 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      if (v8 >= ((v5 + 64) >> 6))
      {
        v15 = 0;
        v16 = 0;
        v9 = 0;
        v23 = 0;
        v21 = 0u;
        v22 = 0u;
        v20 = 0u;
        goto LABEL_8;
      }

      v7 = *(v4 + 8 * v8);
      ++v6;
      if (v7)
      {
        v6 = v8;
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_227C58B74(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_227C58BBC(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 32))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 8);
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

uint64_t sub_227C58C10(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_227C58C74(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_227C58CB4(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

unint64_t sub_227C58D0C()
{
  result = qword_27D7E8568;
  if (!qword_27D7E8568)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27D7E8568);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_4_21()
{
  v1 = v0[3];
  __swift_project_boxed_opaque_existential_1(v0, v1);
  return v1;
}

uint64_t OUTLINED_FUNCTION_43_6(uint64_t result, uint64_t a2)
{
  *(v2 - 416) = result;
  *(v2 - 408) = a2;
  return result;
}

void *OUTLINED_FUNCTION_49_4()
{

  return __swift_project_boxed_opaque_existential_1((v1 - 168), v0);
}

uint64_t sub_227C58E34@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for AppPurchaseHistoryProvider();
  v3 = sub_227BD63E8();
  result = AppPurchaseHistoryProvider.__allocating_init(purchaseHistoryStore:)(v3);
  a1[3] = v2;
  a1[4] = &protocol witness table for AppPurchaseHistoryProvider;
  *a1 = result;
  return result;
}

uint64_t sub_227C58E78@<X0>(void *a1@<X0>, __int128 *a2@<X1>, void *a3@<X2>, void *a4@<X8>)
{
  sub_227B11EE8(a1, v13);
  GamePolicyProvider.init(support:)(v13, (a4 + 15));
  sub_227B11EE8(a1, v13);
  sub_227B11EE8(a3, v12);
  sub_227B11EE8(a2, v11);
  sub_227C58FCC((a4 + 15), v10);
  a4[8] = &type metadata for GameListMetadataProvider;
  a4[9] = &protocol witness table for GameListMetadataProvider;
  v8 = swift_allocObject();
  a4[5] = v8;
  GameListMetadataProvider.init(support:restrictionsProvider:purchaseHistoryProvider:policyProvider:)(v13, v12, v11, v10, v8 + 16);
  sub_227B11EE8(a1, a4);
  __swift_destroy_boxed_opaque_existential_0(a3);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return sub_227B132F0(a2, (a4 + 10));
}

__n128 GameLibraryAggregateService.init(support:gameListDataProvider:purchaseHistoryProvider:policyProvider:)@<Q0>(__int128 *a1@<X0>, __int128 *a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  sub_227B132F0(a1, a5);
  sub_227B132F0(a2, a5 + 40);
  sub_227B132F0(a3, a5 + 80);
  result = *a4;
  v10 = *(a4 + 16);
  *(a5 + 120) = *a4;
  *(a5 + 136) = v10;
  *(a5 + 152) = *(a4 + 32);
  return result;
}

uint64_t GameLibraryAggregateService.describe(games:)()
{
  OUTLINED_FUNCTION_6();
  v1[2] = v2;
  v1[3] = v0;
  v3 = sub_227D4A458();
  v1[4] = v3;
  OUTLINED_FUNCTION_10_0(v3);
  v1[5] = v4;
  v1[6] = OUTLINED_FUNCTION_30();
  v5 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_227C590CC()
{
  OUTLINED_FUNCTION_6();
  sub_227D4CE58();
  sub_227D4A438();
  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  *v1 = v0;
  OUTLINED_FUNCTION_59_6(v1);

  return GameLibraryAggregateService.describe(with:)();
}

uint64_t sub_227C59164()
{
  OUTLINED_FUNCTION_51_0();
  OUTLINED_FUNCTION_0();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 64) = v0;

  v4 = OUTLINED_FUNCTION_537();
  v5(v4);
  if (!v0)
  {

    OUTLINED_FUNCTION_69_4();
    OUTLINED_FUNCTION_164();

    __asm { BRAA            X2, X16 }
  }

  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_164();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t GameLibraryAggregateService.describe(with:)()
{
  OUTLINED_FUNCTION_6();
  v1[262] = v0;
  v1[261] = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6888, &unk_227D4E630);
  v1[263] = v3;
  OUTLINED_FUNCTION_10_0(v3);
  v1[264] = v4;
  v1[265] = OUTLINED_FUNCTION_30();
  v5 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

void sub_227C593A0()
{
  v1 = *(v0 + 2096);
  v2 = sub_227D4A448();
  *(v0 + 2128) = v2;
  *(v0 + 2224) = sub_227D4A428() & 1;
  sub_227B11EE8(v1, v0 + 1736);
  v3 = *(v0 + 1760);
  v4 = *(v0 + 1768);
  OUTLINED_FUNCTION_85_5((v0 + 1736));
  v5 = *(v2 + 16);
  v6 = MEMORY[0x277D84F90];
  if (v5)
  {
    v21 = v3;
    v7 = *(v0 + 2112);
    v25 = MEMORY[0x277D84F90];
    sub_227B3CA88(0, v5, 0);
    v8 = 0;
    v6 = v25;
    OUTLINED_FUNCTION_19();
    v22 = v2 + v9;
    v23 = v7;
    while (v8 < *(v2 + 16))
    {
      (*(v23 + 16))(*(v0 + 2120), v22 + *(v23 + 72) * v8, *(v0 + 2104));
      v10 = sub_227D4A6A8();
      v12 = v11;
      v13 = v2;
      v14 = OUTLINED_FUNCTION_63_4();
      v15(v14);
      v17 = *(v25 + 16);
      v16 = *(v25 + 24);
      if (v17 >= v16 >> 1)
      {
        sub_227B3CA88((v16 > 1), v17 + 1, 1);
      }

      ++v8;
      *(v25 + 16) = v17 + 1;
      v18 = v25 + 16 * v17;
      *(v18 + 32) = v10;
      *(v18 + 40) = v12;
      v2 = v13;
      if (v5 == v8)
      {
        v3 = v21;
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_8:
    *(v0 + 2136) = v6;
    OUTLINED_FUNCTION_36_0();
    v24 = (v19 + *v19);
    v20 = swift_task_alloc();
    *(v0 + 2144) = v20;
    *v20 = v0;
    v20[1] = sub_227C59694;

    (v24)(v6, 0, v3, v4);
  }
}

uint64_t sub_227C59694()
{
  OUTLINED_FUNCTION_20();
  v2 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_0();
  *v5 = v4;
  *(v2 + 2152) = v6;
  *(v2 + 2160) = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_227C597CC()
{
  v17 = v0;
  v1 = *(v0 + 2160);
  v2 = *(v0 + 2152);
  v3 = *(v0 + 2128);
  __swift_destroy_boxed_opaque_existential_0((v0 + 1736));
  Array<A>.queryableIDs(installMetadata:installedOnly:)(v2, 0, v3, v15);
  if (v1)
  {

    OUTLINED_FUNCTION_19_0();

    return v4();
  }

  else
  {
    v6 = *(v0 + 2224);
    v7 = *(v0 + 2096);
    v8 = v15[1];
    *(v0 + 1656) = v15[0];
    *(v0 + 1672) = v8;
    *(v0 + 1688) = v16;
    sub_227C5FB5C(v7, v0 + 1336);
    v9 = swift_allocObject();
    memcpy((v9 + 16), (v0 + 1336), 0xA0uLL);
    v10 = *(v0 + 1672);
    *(v9 + 176) = *(v0 + 1656);
    *(v9 + 192) = v10;
    *(v9 + 208) = *(v0 + 1688);
    *(v9 + 216) = v6;
    v11 = swift_allocObject();
    *(v0 + 2168) = v11;
    *(v11 + 16) = &unk_227D5EB00;
    *(v11 + 24) = v9;
    sub_227C58420(v0 + 1656, v0 + 1816);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9800, &qword_227D5EE90);
    swift_asyncLet_begin();
    sub_227C5FB5C(v7, v0 + 1496);
    v12 = swift_allocObject();
    memcpy((v12 + 16), (v0 + 1496), 0xA0uLL);
    v13 = *(v0 + 1672);
    *(v12 + 176) = *(v0 + 1656);
    *(v12 + 192) = v13;
    *(v12 + 208) = *(v0 + 1688);
    *(v12 + 216) = v6;
    v14 = swift_allocObject();
    *(v0 + 2176) = v14;
    *(v14 + 16) = &unk_227D5EB28;
    *(v14 + 24) = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9838, &qword_227D5EB40);
    swift_asyncLet_begin();

    return MEMORY[0x282200930](v0 + 16, v0 + 1992, sub_227C59A58, v0 + 1296);
  }
}

uint64_t sub_227C59A58()
{
  OUTLINED_FUNCTION_6();
  v1[273] = v0;
  if (v0)
  {

    v2 = OUTLINED_FUNCTION_31_5();

    return MEMORY[0x282200920](v2, v3, v4, v1 + 212);
  }

  else
  {
    v1[274] = v1[249];
    sub_227D4CE58();
    v5 = OUTLINED_FUNCTION_31_5();

    return MEMORY[0x282200930](v5, v6, v7, v1 + 232);
  }
}

uint64_t sub_227C59B0C()
{
  OUTLINED_FUNCTION_6();
  *(v1 + 2200) = v0;
  if (v0)
  {

    v2 = OUTLINED_FUNCTION_31_5();

    return MEMORY[0x282200920](v2, v3, v4, v1 + 1904);
  }

  else
  {
    OUTLINED_FUNCTION_15();

    return MEMORY[0x2822009F8](v5, v6, v7);
  }
}

uint64_t sub_227C59BC0()
{
  v1 = v0[269];
  v0[237] = v0[274];
  v2 = swift_task_alloc();
  v2[2] = (v0 + 237);
  v3 = sub_227D4CE58();
  v4 = sub_227C5F78C(v3, sub_227C5FE20, v2);
  v0[276] = v4;

  v0[243] = v4;
  sub_227D4CE58();
  v5 = OUTLINED_FUNCTION_57_0();
  v0[277] = sub_227C5A244(v5, v6, v1, v7);

  v8 = OUTLINED_FUNCTION_31_5();

  return MEMORY[0x282200920](v8, v9, v10, v0 + 250);
}

uint64_t sub_227C59D14()
{
  OUTLINED_FUNCTION_20();

  OUTLINED_FUNCTION_115();
  v2 = *(v0 + 2216);

  return v1(v2);
}

uint64_t sub_227C59DAC()
{
  OUTLINED_FUNCTION_6();
  __swift_destroy_boxed_opaque_existential_0((v0 + 1736));

  OUTLINED_FUNCTION_18();

  return v1();
}

uint64_t sub_227C59E58()
{
  OUTLINED_FUNCTION_6();

  OUTLINED_FUNCTION_18();

  return v0();
}

uint64_t sub_227C59F10()
{
  OUTLINED_FUNCTION_6();

  OUTLINED_FUNCTION_18();

  return v0();
}

uint64_t GameLibraryAggregateService.describe2(games:)()
{
  OUTLINED_FUNCTION_6();
  v1[2] = v2;
  v1[3] = v0;
  v3 = sub_227D4A458();
  v1[4] = v3;
  OUTLINED_FUNCTION_10_0(v3);
  v1[5] = v4;
  v1[6] = OUTLINED_FUNCTION_30();
  v5 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_227C5A024()
{
  OUTLINED_FUNCTION_6();
  sub_227D4CE58();
  sub_227D4A438();
  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  *v1 = v0;
  OUTLINED_FUNCTION_59_6(v1);

  return GameLibraryAggregateService.describe(with:)();
}

uint64_t sub_227C5A0BC()
{
  OUTLINED_FUNCTION_51_0();
  OUTLINED_FUNCTION_0();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 64) = v0;

  v4 = OUTLINED_FUNCTION_537();
  v5(v4);
  if (!v0)
  {

    OUTLINED_FUNCTION_69_4();
    OUTLINED_FUNCTION_164();

    __asm { BRAA            X2, X16 }
  }

  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_164();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_227C5A244(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t *a4)
{
  v5 = v4;
  v57 = a4;
  v56 = a2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6D08, &qword_227D59460);
  MEMORY[0x28223BE20](v8 - 8);
  v55 = &v53 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9938, &unk_227D5EED0);
  MEMORY[0x28223BE20](v10 - 8);
  v61 = &v53 - v11;
  v60 = sub_227D4CAB8();
  v12 = *(v60 - 8);
  MEMORY[0x28223BE20](v60);
  v64 = &v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for GameLibraryMetadata(0);
  MEMORY[0x28223BE20](v14 - 8);
  v54 = &v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9940, &unk_227D5EDF0);
  v63 = *(v16 - 8);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v53 - v17;
  v19 = *(a1 + 16);
  if (!v19)
  {

    return MEMORY[0x277D84F90];
  }

  v58 = a3;
  v73 = MEMORY[0x277D84F90];
  sub_227C5FB1C(0, v19, 0);
  v20 = v73;
  v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6888, &unk_227D4E630) - 8);
  v22 = a1 + ((*(v21 + 80) + 32) & ~*(v21 + 80));
  v59 = (v12 + 8);
  v62 = *(v21 + 72);
  *&v23 = 138412290;
  v53 = v23;
  do
  {
    v24 = sub_227D4A6A8();
    if (v5)
    {
      sub_227D4AA58();
      v26 = v5;
      v27 = sub_227D4CA98();
      v28 = sub_227D4D438();

      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        v30 = swift_slowAlloc();
        *v29 = v53;
        v31 = v5;
        v32 = _swift_stdlib_bridgeErrorToNSError();
        *(v29 + 4) = v32;
        *v30 = v32;
        _os_log_impl(&dword_227B0D000, v27, v28, "Game is missing bundleID: %@", v29, 0xCu);
        sub_227B1DE58(v30, &qword_27D7E68C8, &qword_227D4F740);
        MEMORY[0x22AAA7130](v30, -1, -1);
        MEMORY[0x22AAA7130](v29, -1, -1);
      }

      else
      {
      }

      (*v59)(v64, v60);
      v39 = sub_227D49618();
      __swift_storeEnumTagSinglePayload(v18, 1, 1, v39);
      v5 = 0;
      goto LABEL_27;
    }

    v33 = v24;
    v34 = v25;
    v72 = 0;
    v35 = 0uLL;
    memset(v71, 0, sizeof(v71));
    v36 = *v56;
    if (!*v56 || !*(v36 + 16))
    {
      v70 = 0;
LABEL_14:
      v69[0] = v35;
      v69[1] = v35;
      goto LABEL_15;
    }

    v37 = sub_227B2664C(v24, v25);
    if ((v38 & 1) == 0)
    {
      v70 = 0;
      v35 = 0uLL;
      goto LABEL_14;
    }

    sub_227B11EE8(*(v36 + 56) + 40 * v37, v69);
LABEL_15:
    v40 = type metadata accessor for PurchaseHistoryGame(0);
    __swift_storeEnumTagSinglePayload(v61, 1, 1, v40);
    v41 = v58;
    if (*(v58 + 16) && (v42 = sub_227B2664C(v33, v34), (v43 & 1) != 0))
    {
      sub_227B11EE8(*(v41 + 56) + 40 * v42, v67);
      v44 = 0uLL;
    }

    else
    {
      v68 = 0;
      v44 = 0uLL;
      memset(v67, 0, sizeof(v67));
    }

    v45 = *v57;
    if (!*v57 || !*(v45 + 16))
    {
      v66 = 0;
LABEL_25:
      v65[1] = v44;
      v65[0] = v44;
      goto LABEL_26;
    }

    v46 = sub_227B2664C(v33, v34);
    if ((v47 & 1) == 0)
    {
      v66 = 0;
      v44 = 0uLL;
      goto LABEL_25;
    }

    sub_227B11EE8(*(v45 + 56) + 40 * v46, v65);
LABEL_26:
    v48 = sub_227D492A8();
    __swift_storeEnumTagSinglePayload(v55, 1, 1, v48);
    v49 = v54;
    sub_227C683B8(v33, v34, v71, v69, v67, v65, v54, 0);
    sub_227C6D028();
    sub_227C608D8(v49, type metadata accessor for GameLibraryMetadata);
LABEL_27:
    v73 = v20;
    v51 = *(v20 + 16);
    v50 = *(v20 + 24);
    if (v51 >= v50 >> 1)
    {
      sub_227C5FB1C(v50 > 1, v51 + 1, 1);
      v20 = v73;
    }

    *(v20 + 16) = v51 + 1;
    sub_227C63524(v18, v20 + ((*(v63 + 80) + 32) & ~*(v63 + 80)) + *(v63 + 72) * v51, &qword_27D7E9940, &unk_227D5EDF0);
    v22 += v62;
    --v19;
  }

  while (v19);

  return v20;
}

uint64_t sub_227C5A914(void (*a1)(uint64_t), uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, void (*a6)(BOOL, unint64_t, uint64_t))
{
  v8 = v6;
  v27 = a1;
  v28 = a2;
  v25 = a4;
  v26 = a5;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v11 = OUTLINED_FUNCTION_10_0(v10);
  v13 = v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v23 - v14;
  v16 = *(a3 + 16);
  v17 = MEMORY[0x277D84F90];
  if (!v16)
  {
    return v17;
  }

  v29 = MEMORY[0x277D84F90];
  v24 = a6;
  a6(0, v16, 0);
  v17 = v29;
  for (i = a3 + 32; ; i += 40)
  {
    v27(i);
    if (v8)
    {
      break;
    }

    v8 = 0;
    v29 = v17;
    v20 = *(v17 + 16);
    v19 = *(v17 + 24);
    if (v20 >= v19 >> 1)
    {
      v24(v19 > 1, v20 + 1, 1);
      v17 = v29;
    }

    *(v17 + 16) = v20 + 1;
    OUTLINED_FUNCTION_19();
    sub_227C63524(v15, v17 + v21 + *(v13 + 72) * v20, v25, v26);
    if (!--v16)
    {
      return v17;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_227C5AAB0(uint64_t a1, uint64_t a2, char a3)
{
  *(v3 + 89) = a3;
  *(v3 + 56) = a1;
  *(v3 + 64) = a2;
  return OUTLINED_FUNCTION_22(sub_227C5AACC);
}

uint64_t sub_227C5AACC()
{
  OUTLINED_FUNCTION_20();
  v1 = *(v0 + 64);
  __swift_project_boxed_opaque_existential_1(*(v0 + 56), *(*(v0 + 56) + 24));
  v2 = *(v1 + 32);
  v3 = *(v1 + 16);
  *(v0 + 16) = *v1;
  *(v0 + 32) = v3;
  *(v0 + 48) = v2;
  *(v0 + 88) = 0;
  swift_task_alloc();
  OUTLINED_FUNCTION_47();
  *(v0 + 72) = v4;
  *v4 = v5;
  v4[1] = sub_227C5ABA4;

  return sub_227C55C0C();
}

uint64_t sub_227C5ABA4()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_13();
  *v4 = v3;
  v5 = *v2;
  OUTLINED_FUNCTION_5_4();
  *v6 = v5;
  *(v7 + 80) = v1;

  if (v1)
  {
    OUTLINED_FUNCTION_15();

    return MEMORY[0x2822009F8](v8, v9, v10);
  }

  else
  {
    OUTLINED_FUNCTION_115();

    return v11(v0);
  }
}

uint64_t sub_227C5ACE0(uint64_t a1, uint64_t a2, char a3)
{
  *(v3 + 40) = a3;
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  return OUTLINED_FUNCTION_22(sub_227C5ACFC);
}

uint64_t sub_227C5ACFC()
{
  OUTLINED_FUNCTION_20();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v4);
  v5 = *(v2 + 16);
  v6 = swift_task_alloc();
  *(v0 + 32) = v6;
  *v6 = v0;
  v6[1] = sub_227BD04A4;
  v7 = *(v0 + 40);

  return sub_227C551F8(v5, v7, v4, v3);
}

uint64_t sub_227C5ADBC(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_227C5AEA8;

  return v5();
}

uint64_t sub_227C5AEA8()
{
  OUTLINED_FUNCTION_20();
  OUTLINED_FUNCTION_8();
  v4 = v3;
  OUTLINED_FUNCTION_0();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_5_4();
  *v7 = v6;

  if (!v1)
  {
    **(v4 + 16) = v0;
  }

  v8 = *(v6 + 8);

  return v8();
}

uint64_t sub_227C5AF9C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = *a3;
  if (!*a3)
  {
    return 1;
  }

  if (!*(v3 + 16) || (v4 = sub_227B2664C(a1, a2), (v5 & 1) == 0))
  {
    v19 = 0;
    v17 = 0u;
    v18 = 0u;
    goto LABEL_8;
  }

  sub_227B11EE8(*(v3 + 56) + 40 * v4, &v17);
  if (!*(&v18 + 1))
  {
LABEL_8:
    sub_227B1DE58(&v17, &qword_27D7E9950, &qword_227D5EE10);
    return 1;
  }

  v6 = *(&v18 + 1);
  v7 = v19;
  __swift_project_boxed_opaque_existential_1(&v17, *(&v18 + 1));
  OUTLINED_FUNCTION_6_2();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_3();
  v13 = v12 - v11;
  (*(v9 + 16))(v12 - v11);
  sub_227B1DE58(&v17, &qword_27D7E9950, &qword_227D5EE10);
  v14 = (*(v7 + 64))(v6, v7);
  (*(v9 + 8))(v13, v6);
  if (!v14)
  {
    return 1;
  }

  v15 = [v14 BOOLValue];

  return v15;
}

uint64_t GameLibraryAggregateService.listGameHistories(by:sortBy:upTo:after:belongingTo:)()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_55_6(v1, v2, v3, v4, v5, v6, v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6908, &unk_227D4E690);
  OUTLINED_FUNCTION_5(v8);
  v0[9] = OUTLINED_FUNCTION_30();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9840, &qword_227D5EB60);
  OUTLINED_FUNCTION_5(v9);
  v0[10] = OUTLINED_FUNCTION_30();
  v10 = sub_227D49698();
  v0[11] = v10;
  OUTLINED_FUNCTION_10_0(v10);
  v0[12] = v11;
  v0[13] = OUTLINED_FUNCTION_121();
  v0[14] = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9848, &unk_227D5EB68);
  OUTLINED_FUNCTION_5(v12);
  v0[15] = OUTLINED_FUNCTION_30();
  v13 = sub_227D49C48();
  v0[16] = v13;
  OUTLINED_FUNCTION_10_0(v13);
  v0[17] = v14;
  v0[18] = OUTLINED_FUNCTION_121();
  v0[19] = swift_task_alloc();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E67C0, &unk_227D4FB20);
  v0[20] = v15;
  OUTLINED_FUNCTION_10_0(v15);
  v0[21] = v16;
  v0[22] = OUTLINED_FUNCTION_30();
  v17 = sub_227D4A1F8();
  v0[23] = v17;
  OUTLINED_FUNCTION_10_0(v17);
  v0[24] = v18;
  v0[25] = OUTLINED_FUNCTION_30();
  v19 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v19, v20, v21);
}

uint64_t sub_227C5B370()
{
  OUTLINED_FUNCTION_51_0();
  v4 = OUTLINED_FUNCTION_37_3();
  v5(v4);
  sub_227D4A1C8();
  sub_227C60738(v3, v2, &qword_27D7E9848, &unk_227D5EB68);
  if (__swift_getEnumTagSinglePayload(v2, 1, v0) == 1)
  {
    sub_227B1DE58(v1[15], &qword_27D7E9848, &unk_227D5EB68);
  }

  else
  {
    v6 = OUTLINED_FUNCTION_12_11();
    v7(v6);
    v8 = OUTLINED_FUNCTION_6_14();
    v9(v8);
    sub_227D4A1E8();
    v10 = OUTLINED_FUNCTION_33_7();
    v11(v10);
  }

  v12 = v1[10];
  v13 = v1[11];
  sub_227C60738(v1[4], v12, &qword_27D7E9840, &qword_227D5EB60);
  if (__swift_getEnumTagSinglePayload(v12, 1, v13) == 1)
  {
    sub_227B1DE58(v1[10], &qword_27D7E9840, &qword_227D5EB60);
  }

  else
  {
    v12 = v1[14];
    v14 = OUTLINED_FUNCTION_12_11();
    v15(v14);
    v16 = OUTLINED_FUNCTION_6_14();
    v17(v16);
    sub_227D4A178();
    v18 = OUTLINED_FUNCTION_33_7();
    v19(v18);
  }

  v20 = OUTLINED_FUNCTION_62_6();
  sub_227C60738(v20, v12, &qword_27D7E6908, &unk_227D4E690);
  sub_227D4A1A8();
  sub_227D4A198();
  swift_task_alloc();
  OUTLINED_FUNCTION_47();
  v1[26] = v21;
  *v21 = v22;
  OUTLINED_FUNCTION_58_7(v21);
  OUTLINED_FUNCTION_164();

  return GameLibraryAggregateService.listGameHistories(with:)();
}

uint64_t sub_227C5B580()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_13();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v5 = v4;
  *(v6 + 216) = v0;

  OUTLINED_FUNCTION_15();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_227C5B678(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_139();
  v12 = OUTLINED_FUNCTION_38_9();
  v13(v12);

  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_135_0();

  return v15(v14, v15, v16, v17, v18, v19, v20, v21, a9, a10, a11, a12);
}

uint64_t sub_227C5B730(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_139();
  v12 = OUTLINED_FUNCTION_38_9();
  v13(v12);

  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_135_0();

  return v15(v14, v15, v16, v17, v18, v19, v20, v21, a9, a10, a11, a12);
}

uint64_t GameLibraryAggregateService.listGameHistories(with:)()
{
  OUTLINED_FUNCTION_6();
  v1[6] = v2;
  v1[7] = v0;
  v1[5] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E6908, &unk_227D4E690);
  OUTLINED_FUNCTION_5(v4);
  v1[8] = OUTLINED_FUNCTION_30();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9850, &qword_227D5EB80);
  v1[9] = v5;
  OUTLINED_FUNCTION_10_0(v5);
  v1[10] = v6;
  v1[11] = OUTLINED_FUNCTION_30();
  v7 = sub_227D49CB8();
  v1[12] = v7;
  OUTLINED_FUNCTION_10_0(v7);
  v1[13] = v8;
  v1[14] = OUTLINED_FUNCTION_30();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9858, &qword_227D5EB88);
  v1[15] = v9;
  OUTLINED_FUNCTION_10_0(v9);
  v1[16] = v10;
  v1[17] = OUTLINED_FUNCTION_30();
  v11 = type metadata accessor for GameListMetadataRequest(0);
  OUTLINED_FUNCTION_5(v11);
  v1[18] = OUTLINED_FUNCTION_30();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E67C0, &unk_227D4FB20);
  v1[19] = v12;
  OUTLINED_FUNCTION_10_0(v12);
  v1[20] = v13;
  v1[21] = OUTLINED_FUNCTION_121();
  v1[22] = swift_task_alloc();
  v14 = sub_227D49678();
  OUTLINED_FUNCTION_5(v14);
  v1[23] = OUTLINED_FUNCTION_30();
  v15 = sub_227D49698();
  v1[24] = v15;
  OUTLINED_FUNCTION_10_0(v15);
  v1[25] = v16;
  v1[26] = OUTLINED_FUNCTION_30();
  v17 = sub_227D49C48();
  v1[27] = v17;
  OUTLINED_FUNCTION_10_0(v17);
  v1[28] = v18;
  v1[29] = OUTLINED_FUNCTION_121();
  v1[30] = swift_task_alloc();
  v19 = OUTLINED_FUNCTION_16();

  return MEMORY[0x2822009F8](v19, v20, v21);
}

uint64_t sub_227C5BAB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_109_1();
  v27 = v26[29];
  v28 = v26[30];
  v29 = v26[27];
  v30 = v26[28];
  sub_227D4A1D8();
  sub_227D4A168();
  (*(v30 + 16))(v27, v28, v29);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9860, &qword_227D5EB90);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_227D4E520;
  v32 = *sub_227C73008();
  v26[3] = v31;
  *(v31 + 32) = v32;
  sub_227C5FE28();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9870, &qword_227D5EB98);
  OUTLINED_FUNCTION_4_22();
  sub_227B15A74(v33, v34, &qword_227D5EB98, v35);
  sub_227D4D5B8();
  LOBYTE(a14) = 0;
  sub_227D49688();
  sub_227C730A8();
  v36 = v26[21];
  v57 = v26[18];
  v37 = v26[7];
  v38 = a12;
  sub_227D4A1B8();
  sub_227D4A158();
  v39 = OUTLINED_FUNCTION_52_6();
  v40(v39);
  LOBYTE(a12) = 0;
  sub_227D49BC8();
  OUTLINED_FUNCTION_34_6();
  GameListMetadataRequest.init(player:ttlOption:installedOnly:fetchingRequirements:localDataOnly:)(v36, v41, v42, v43, v44, v57);
  v45 = *(v37 + 72);
  OUTLINED_FUNCTION_85_5((v37 + 40));
  OUTLINED_FUNCTION_36_0();
  v58 = v46 + *v46;
  v47 = swift_task_alloc();
  v26[31] = v47;
  *v47 = v26;
  v47[1] = sub_227C5BE08;
  OUTLINED_FUNCTION_18_11(v26[18]);
  OUTLINED_FUNCTION_90();

  return v51(v48, v49, v50, v51, v52, v53, v54, v55, a9, v45 + 8, v58, a12, v38, a14, a15, a16, a17, a18);
}

uint64_t sub_227C5BE08()
{
  OUTLINED_FUNCTION_20();
  v3 = v2;
  OUTLINED_FUNCTION_14();
  v5 = v4;
  OUTLINED_FUNCTION_0();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_5_4();
  *v8 = v7;
  *(v5 + 256) = v0;

  if (!v0)
  {
    *(v5 + 264) = v3;
  }

  OUTLINED_FUNCTION_30_2();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_227C5BF10()
{
  v1 = v0;
  v2 = v0[33];
  v3 = v0[30];
  v4 = v0[26];
  v5 = v0[22];
  v7 = v0[19];
  v6 = v0[20];
  v8 = v0[18];
  v51 = v1[16];
  v48 = v1[17];
  v49 = v1[15];
  v9 = swift_task_alloc();
  *(v9 + 16) = v3;
  v10 = sub_227C5DEDC(sub_227C5FE7C, v9, v2);

  OUTLINED_FUNCTION_0_44();
  sub_227C608D8(v8, v11);
  (*(v6 + 8))(v5, v7);
  v12 = swift_task_alloc();
  *(v12 + 16) = v4;
  v13 = sub_227C5A914(sub_227C5FEA8, v12, v10, &qword_27D7E9850, &qword_227D5EB80, sub_227C5FF2C);

  v1[4] = v13;
  v14 = (v1 + 4);
  swift_getKeyPath();
  sub_227D49668();
  OUTLINED_FUNCTION_26_7();
  sub_227C634DC(v15, v16, &protocol conformance descriptor for AnySortableKey);
  sub_227D48ED8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7E9888, &qword_227D5EBC0);
  OUTLINED_FUNCTION_4_22();
  sub_227B15A74(v17, v18, &qword_227D5EBC0, v19);
  OUTLINED_FUNCTION_32_6(&qword_27D7E9898, &qword_27D7E9858, &qword_227D5EB88);
  OUTLINED_FUNCTION_278();
  v20 = sub_227D4D108();
  (*(v51 + 8))(v48, v49);

  v21 = *(v20 + 16);
  if (v21)
  {
    v14 = v1[13];
    v22 = v1[10];
    v52 = MEMORY[0x277D84F90];
    sub_227C5FED4(0, v21, 0);
    v23 = v52;
    OUTLINED_FUNCTION_19();
    v25 = v20 + v24;
    v50 = *(v22 + 72);
    v26 = v1;
    do
    {
      v27 = v1[11];
      sub_227C60738(v25, v27, &qword_27D7E9850, &qword_227D5EB80);
      v28 = OUTLINED_FUNCTION_74_6();
      v29(v28);
      sub_227B1DE58(v27, &qword_27D7E9850, &qword_227D5EB80);
      v31 = *(v52 + 16);
      v30 = *(v52 + 24);
      if (v31 >= v30 >> 1)
      {
        sub_227C5FED4(v30 > 1, v31 + 1, 1);
      }

      *(v52 + 16) = v31 + 1;
      OUTLINED_FUNCTION_17_13();
      (*(v14 + 32))(v32 + v33 * v31);
      v25 += v50;
      --v21;
    }

    while (v21);
  }

  else
  {

    v23 = MEMORY[0x277D84F90];
    v26 = v1;
  }

  v34 = sub_227D4A188();
  if ((v35 & 1) == 0)
  {
    if (v34 < 0)
    {
      __break(1u);
      __break(1u);
      swift_unknownObjectRelease();
    }

    else
    {
      sub_227C5C824(v34, v23, sub_227C6303C);
      OUTLINED_FUNCTION_72_4();
    }

    v36 = OUTLINED_FUNCTION_57_0();
    sub_227C60608(v36, v37, v14, 0);
    swift_unknownObjectRelease();
  }

  v38 = v26[30];
  v39 = v26[28];
  v40 = v26[25];
  v47 = v26[26];
  v45 = v26[27];
  v46 = v26[24];
  v41 = sub_227D4A958();
  OUTLINED_FUNCTION_81_5(v41);
  OUTLINED_FUNCTION_27_9();
  sub_227C634DC(v42, 0, MEMORY[0x277D0CE20]);
  OUTLINED_FUNCTION_30_10(&qword_27D7E98A8);
  OUTLINED_FUNCTION_64_3();
  sub_227D4A948();
  (*(v39 + 8))(v38, v45);
  (*(v40 + 8))(v47, v46);

  OUTLINED_FUNCTION_18();

  return v43();
}