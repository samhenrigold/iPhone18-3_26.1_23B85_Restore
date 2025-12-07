void *sub_268BEED54(uint64_t a1)
{
  v2 = type metadata accessor for MediaGroup(0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v39 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v32 - v6;
  v8 = sub_268C15B7C();
  v9 = *(a1 + 32);
  v34 = *(v9 + 16);
  if (!v34)
  {
    return v8;
  }

  v10 = 0;
  v33 = v9 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
  v38 = *(v3 + 72);
  while (1)
  {
    v35 = v10;
    sub_268BF24DC(v33 + v38 * v10, v7);
    v11 = *v7;
    v37 = *(*v7 + 16);
    if (v37)
    {
      break;
    }

LABEL_15:
    v10 = v35 + 1;
    sub_268BF25A0(v7);
    if (v10 == v34)
    {
      return v8;
    }
  }

  v12 = 0;
  v13 = v11 + 32;
  v36 = v11;
  while (v12 < *(v11 + 16))
  {
    sub_268BDFAE0(v13, v41);
    v14 = v42;
    v15 = v43;
    __swift_project_boxed_opaque_existential_1(v41, v42);
    v16 = (*(v15 + 88))(v14, v15);
    v18 = v17;
    __swift_destroy_boxed_opaque_existential_0(v41);
    v19 = v7;
    sub_268BF24DC(v7, v39);
    swift_isUniquelyReferenced_nonNull_native();
    v40 = v8;
    v20 = sub_268BD99A0(v16, v18);
    if (__OFADD__(v8[2], (v21 & 1) == 0))
    {
      goto LABEL_18;
    }

    v22 = v20;
    v23 = v21;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802CE580, &qword_268C18758);
    if (sub_268C1610C())
    {
      v24 = sub_268BD99A0(v16, v18);
      if ((v23 & 1) != (v25 & 1))
      {
        goto LABEL_20;
      }

      v22 = v24;
    }

    if (v23)
    {

      v8 = v40;
      sub_268BF25FC(v39, v40[7] + v22 * v38);
    }

    else
    {
      v26 = v39;
      v8 = v40;
      v40[(v22 >> 6) + 8] |= 1 << v22;
      v27 = (v8[6] + 16 * v22);
      *v27 = v16;
      v27[1] = v18;
      sub_268BF2540(v26, v8[7] + v22 * v38, type metadata accessor for MediaGroup);
      v28 = v8[2];
      v29 = __OFADD__(v28, 1);
      v30 = v28 + 1;
      if (v29)
      {
        goto LABEL_19;
      }

      v8[2] = v30;
    }

    ++v12;
    v13 += 40;
    v11 = v36;
    v7 = v19;
    if (v37 == v12)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  result = sub_268C161CC();
  __break(1u);
  return result;
}

uint64_t type metadata accessor for DeviceSelector(uint64_t a1)
{
  result = qword_2802CE508;
  if (!qword_2802CE508)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_268BEF0D4()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_268BEF114()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

_OWORD *sub_268BEF158(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v5 = a4[6] + 40 * a1;
  v6 = *(a2 + 16);
  *v5 = *a2;
  *(v5 + 16) = v6;
  *(v5 + 32) = *(a2 + 32);
  result = sub_268BD8290(a3, (a4[7] + 32 * a1));
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

unint64_t sub_268BEF1D4(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a5[7] + 8 * result) = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

unint64_t sub_268BEF21C(unint64_t result, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + 8 * result) = a2;
  *(a4[7] + 8 * result) = a3;
  v4 = a4[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v6;
  }

  return result;
}

unint64_t sub_268BEF260(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
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

uint64_t sub_268BEF2AC(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  sub_268BD99A0(a2, a3);
  OUTLINED_FUNCTION_4_7();
  if (v10)
  {
    __break(1u);
    goto LABEL_13;
  }

  v11 = v8;
  v12 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802CDF10, &qword_268C17288);
  if ((sub_268C1610C() & 1) == 0)
  {
    goto LABEL_5;
  }

  v13 = sub_268BD99A0(a2, a3);
  if ((v12 & 1) != (v14 & 1))
  {
LABEL_13:
    result = sub_268C161CC();
    __break(1u);
    return result;
  }

  v11 = v13;
LABEL_5:
  v15 = *v4;
  if (v12)
  {
    *(v15[7] + 8 * v11) = a1;
    OUTLINED_FUNCTION_14_3();

    return swift_unknownObjectRelease();
  }

  else
  {
    sub_268BEF1D4(v11, a2, a3, a1, v15);
    OUTLINED_FUNCTION_14_3();
  }
}

uint64_t sub_268BEF3D4(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_268BD9C8C(a2);
  if (__OFADD__(v7[2], (v9 & 1) == 0))
  {
    __break(1u);
    goto LABEL_13;
  }

  v10 = v8;
  v11 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802CE5C0, &qword_268C18778);
  if ((sub_268C1610C() & 1) == 0)
  {
    goto LABEL_5;
  }

  v12 = sub_268BD9C8C(a2);
  if ((v11 & 1) != (v13 & 1))
  {
LABEL_13:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802CE1E0, &qword_268C17B10);
    result = sub_268C161CC();
    __break(1u);
    return result;
  }

  v10 = v12;
LABEL_5:
  v14 = *v4;
  if (v11)
  {
    *(v14[7] + 8 * v10) = a1;
  }

  else
  {
    sub_268BEF21C(v10, a2, a1, v14);
  }
}

unint64_t sub_268BEF50C(uint64_t a1, uint64_t a2, char a3)
{
  sub_268BD9BEC(a2);
  OUTLINED_FUNCTION_4_7();
  if (v8)
  {
    __break(1u);
    goto LABEL_13;
  }

  v9 = v6;
  v10 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802CE5F0, &qword_268C18790);
  if ((sub_268C1610C() & 1) == 0)
  {
    goto LABEL_5;
  }

  v11 = sub_268BD9BEC(a2);
  if ((v10 & 1) != (v12 & 1))
  {
LABEL_13:
    result = sub_268C161CC();
    __break(1u);
    return result;
  }

  v9 = v11;
LABEL_5:
  if (v10)
  {
    *(*(*v3 + 56) + 8 * v9) = a1;
    OUTLINED_FUNCTION_14_3();
  }

  else
  {
    OUTLINED_FUNCTION_14_3();

    return sub_268BEF21C(v15, v16, v17, v18);
  }
}

uint64_t sub_268BEF61C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  sub_268BD99A0(a3, a4);
  OUTLINED_FUNCTION_4_7();
  if (v12)
  {
    __break(1u);
    goto LABEL_13;
  }

  v13 = v10;
  v14 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802CE5E0, &qword_268C18788);
  if ((sub_268C1610C() & 1) == 0)
  {
    goto LABEL_5;
  }

  v15 = sub_268BD99A0(a3, a4);
  if ((v14 & 1) != (v16 & 1))
  {
LABEL_13:
    result = sub_268C161CC();
    __break(1u);
    return result;
  }

  v13 = v15;
LABEL_5:
  v17 = *v5;
  if (v14)
  {
    v18 = (v17[7] + 16 * v13);
    *v18 = a1;
    v18[1] = a2;
    OUTLINED_FUNCTION_32_0();
  }

  else
  {
    sub_268BEF260(v13, a3, a4, a1, a2, v17);
    OUTLINED_FUNCTION_32_0();
  }
}

unint64_t *sub_268BEF754(uint64_t a1, unint64_t *a2)
{
  v4 = a1;
  v11[1] = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 32);
  v6 = ((1 << v5) + 63) >> 6;
  if ((v5 & 0x3Fu) > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v10 = swift_slowAlloc();
      a2 = sub_268BEFA38(v10, v6, v4, a2);
      MEMORY[0x26D628010](v10, -1, -1);
      return a2;
    }
  }

  MEMORY[0x28223BE20](a1);
  v7 = (v11 - ((8 * v6 + 15) & 0x3FFFFFFFFFFFFFF0));
  sub_268BF7C74(0, v6, v7);
  v8 = sub_268BEF8C4(v7, v6, v4, a2);
  if (!v2)
  {
    return v8;
  }

  swift_willThrow();
  return a2;
}

unint64_t *sub_268BEF8C4(unint64_t *result, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = 0;
  v6 = 0;
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
    v12 = v11 | (v6 << 6);
LABEL_11:
    if (*(*(*(a3 + 48) + 8 * v12) + 16) == *a4)
    {
      *(result + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      if (__OFADD__(v5++, 1))
      {
        __break(1u);
        return sub_268BF8588(result, a2, v5, a3);
      }
    }
  }

  v13 = v6;
  while (1)
  {
    v6 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v6 >= v10)
    {
      return sub_268BF8588(result, a2, v5, a3);
    }

    v14 = *(a3 + 64 + 8 * v6);
    ++v13;
    if (v14)
    {
      v9 = (v14 - 1) & v14;
      v12 = __clz(__rbit64(v14)) | (v6 << 6);
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

void *sub_268BEF9BC(void *result, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, void *, uint64_t))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v6 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    result = a3(&v7, v6, a2);
    if (!v3)
    {
      return v7;
    }
  }

  return result;
}

unint64_t *sub_268BEFA38(unint64_t *result, uint64_t a2, uint64_t a3, void *a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v8 = sub_268BEF8C4(v7, a2, a3, a4);

    return v8;
  }

  return result;
}

unint64_t *sub_268BEFAC0(uint64_t isStackAllocationSafe, uint64_t a2)
{
  v3 = isStackAllocationSafe;
  v11[6] = *MEMORY[0x277D85DE8];
  v11[0] = isStackAllocationSafe;
  v4 = *(a2 + 32);
  v11[3] = v11;
  v11[4] = a2;
  v5 = ((1 << v4) + 63) >> 6;
  if (v4 & 0x3Fu) <= 0xD || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe))
  {
    MEMORY[0x28223BE20](isStackAllocationSafe);
    v6 = (&v11[-1] - ((8 * v5 + 15) & 0x3FFFFFFFFFFFFFF0));
    sub_268BF7C74(0, v5, v6);
    v7 = sub_268BEFC60(v6, v5, v3, a2);
  }

  else
  {
    v9 = swift_slowAlloc();
    v7 = sub_268BEF9BC(v9, v5, sub_268BF2808);

    MEMORY[0x26D628010](v9, -1, -1);
  }

  return v7;
}

unint64_t *sub_268BEFC60(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = 0;
  v6 = 0;
  v24 = *(a3 + 16);
  v22 = result;
  v23 = a3 + 32;
  v7 = a4 + 56;
  while (1)
  {
    v21 = v5;
LABEL_3:
    if (v6 == v24)
    {
      goto LABEL_19;
    }

    if (v6 >= v24)
    {
      break;
    }

    if (__OFADD__(v6, 1))
    {
      goto LABEL_21;
    }

    v8 = (v23 + 16 * v6);
    v10 = *v8;
    v9 = v8[1];
    v25 = v6 + 1;
    sub_268C1624C();

    sub_268C15C3C();
    v11 = sub_268C1626C();
    v12 = ~(-1 << *(a4 + 32));
    do
    {
      v13 = v11 & v12;
      v14 = (v11 & v12) >> 6;
      v15 = 1 << (v11 & v12);
      if ((v15 & *(v7 + 8 * v14)) == 0)
      {

        v6 = v25;
        goto LABEL_3;
      }

      v16 = (*(a4 + 48) + 16 * v13);
      if (*v16 == v10 && v16[1] == v9)
      {
        break;
      }

      v18 = sub_268C1618C();
      v11 = v13 + 1;
    }

    while ((v18 & 1) == 0);

    v19 = v22[v14];
    v22[v14] = v19 | v15;
    v6 = v25;
    if ((v19 & v15) != 0)
    {
      goto LABEL_3;
    }

    v5 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      __break(1u);
LABEL_19:

      return sub_268BEFDEC(v22, a2, v21, a4);
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_268BEFDEC(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x277D84FA0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802CE5D0, &qword_268C17D68);
  result = sub_268C1604C();
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
  v12 = result + 56;
  v29 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = (*(v4 + 48) + 16 * (v13 | (v11 << 6)));
    v17 = *v16;
    v18 = v16[1];
    sub_268C1624C();

    sub_268C15C3C();
    result = sub_268C1626C();
    v19 = -1 << *(v9 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v12 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_30;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    v27 = (*(v9 + 48) + 16 * v22);
    *v27 = v17;
    v27[1] = v18;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_31;
    }

    v4 = v29;
    if (!v5)
    {
      goto LABEL_6;
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
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

unint64_t *sub_268BF0008@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, unint64_t **a5@<X8>)
{
  result = sub_268BEFC60(a1, a2, *a3, a4);
  if (!v5)
  {
    *a5 = result;
  }

  return result;
}

uint64_t sub_268BF0038(__int128 *a1, uint64_t (*a2)(uint64_t), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = a1[1];
  v8 = *a1;
  v9[0] = v6;
  *(v9 + 9) = *(a1 + 25);
  return sub_268BE8A3C(&v8, a2, a3, a4, a5, a6);
}

uint64_t sub_268BF006C@<X0>(void **a1@<X0>, uint64_t a3@<X2>, const void *a4@<X3>, uint64_t x8_0@<X8>)
{
  v5 = *a1;
  v6 = *(a3 + 16);
  v8[0] = *a3;
  v8[1] = v6;
  v9 = *(a3 + 32);
  return sub_268BED8F4(v5, v8, a4, x8_0);
}

uint64_t sub_268BF00B4(uint64_t *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t *a5)
{
  v5 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v5;
  v8 = *(a2 + 32);
  return sub_268BE6D80(a1, v7, a3, a4, a5);
}

unint64_t *sub_268BF00E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[3] = MEMORY[0x277D837D0];
  v10[4] = &off_287977A10;
  v10[0] = a1;
  v10[1] = a2;
  v9 = 0;
  v8[2] = a3;
  v8[3] = v10;
  v8[4] = &v9;

  v5 = sub_268BE7000(MEMORY[0x277D84F98], sub_268BF27E8, v8, a4);
  v6 = sub_268BEF754(v5, &v9);

  __swift_destroy_boxed_opaque_existential_0(v10);
  return v6;
}

uint64_t sub_268BF019C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v230 = a5;
  v235 = a4;
  v249 = a3;
  v248 = a2;
  v246 = a1;
  v237 = sub_268C15A1C();
  v236 = *(v237 - 8);
  MEMORY[0x28223BE20](v237);
  v226 = &v223 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v225 = &v223 - v9;
  MEMORY[0x28223BE20](v10);
  v227 = &v223 - v11;
  MEMORY[0x28223BE20](v12);
  v14 = &v223 - v13;
  MEMORY[0x28223BE20](v15);
  v229 = &v223 - v16;
  MEMORY[0x28223BE20](v17);
  v232 = &v223 - v18;
  MEMORY[0x28223BE20](v19);
  v231 = &v223 - v20;
  MEMORY[0x28223BE20](v21);
  v23 = &v223 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802CE5A8, &qword_268C18768);
  MEMORY[0x28223BE20](v24 - 8);
  v26 = &v223 - v25;
  v228 = 0;
  v27 = sub_268C1533C();
  v28 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v30 = &v223 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802CE4F8, &qword_268C186B0);
  sub_268BDC5A8(a6 + *(v31 + 36), v26, &qword_2802CE5A8, &qword_268C18768);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v26, 1, v27);
  v239 = v28;
  v233 = v27;
  v224 = v14;
  if (EnumTagSinglePayload == 1)
  {
    sub_268C1539C();
    __swift_project_boxed_opaque_existential_1(&v257, *(&v258 + 1));
    sub_268C1536C();
    __swift_destroy_boxed_opaque_existential_0(&v257);
    if (__swift_getEnumTagSinglePayload(v26, 1, v27) != 1)
    {
      sub_268BF2790(v26, &qword_2802CE5A8, &qword_268C18768);
    }
  }

  else
  {
    (*(v28 + 32))(v30, v26, v27);
  }

  v234 = v30;
  v247 = sub_268BEE764(v30);
  v33 = 0;
  v238 = MEMORY[0x277D84F90];
  v34 = *(v249 + 16);
  v240 = v34;
LABEL_6:
  v35 = 40 * v33;
  while (v34 != v33)
  {
    if (v33 >= v34)
    {
      __break(1u);
LABEL_109:
      __break(1u);
LABEL_110:
      __break(1u);
LABEL_111:
      __break(1u);
LABEL_112:
      swift_once();
LABEL_24:
      v56 = v237;
      v57 = __swift_project_value_buffer(v237, qword_2802D2F10);
      v58 = v236;
      (*(v236 + 16))(v23, v57, v56);
      v59 = v23;
      v60 = v238;

      v61 = v248;

      v251 = v59;
      v62 = sub_268C159FC();
      v63 = sub_268C15DFC();

      if (os_log_type_enabled(v62, v63))
      {
        v64 = swift_slowAlloc();
        v65 = swift_slowAlloc();
        v66 = v34;
        v67 = v65;
        *&v257 = v65;
        *v64 = v66[263];
        *(v64 + 4) = sub_268BB3D28(v246, v61, &v257);
        *(v64 + 12) = 2080;
        v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802CDCF0, &qword_268C170B8);
        v69 = MEMORY[0x26D6272E0](v60, v68);
        v71 = v70;

        v72 = sub_268BB3D28(v69, v71, &v257);

        *(v64 + 14) = v72;
        _os_log_impl(&dword_268BAD000, v62, v63, "Found perfect matches for user query: %s: %s", v64, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x26D628010](v67, -1, -1);
        MEMORY[0x26D628010](v64, -1, -1);
      }

      else
      {
      }

      (*(v58 + 8))(v251, v56);
      (*(v14 + 8))(v234, v233);
      return v238;
    }

    if (__OFADD__(v33, 1))
    {
      goto LABEL_109;
    }

    v251 = v33;
    v245 = (v33 + 1);
    v14 = v23;
    v250 = v35;
    v36 = *(v249 + v35 + 32);
    v37 = *(v249 + v35 + 40);
    LODWORD(v243) = *(v249 + v35 + 48);
    v38 = *(v249 + v35 + 56);
    LODWORD(v241) = *(v249 + v35 + 64);
    v242 = v38;
    v39 = v38;

    v40 = v247;
    v244 = v36;
    sub_268BDCB60(v247, v36, v37);
    v253[0] = v41;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802CE5B0, &qword_268C18770);
    sub_268BDCF60();
    v42 = sub_268C15B9C();
    v44 = v43;

    sub_268BDCB60(v40, v246, v248);
    v253[0] = v45;
    v46 = sub_268C15B9C();
    v48 = v47;

    if (v42 == v46 && v44 == v48)
    {

      v34 = v240;
LABEL_17:
      v51 = v238;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v257 = v51;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_268BB4AD8(0, *(v51 + 16) + 1, 1);
        v51 = v257;
      }

      v54 = *(v51 + 16);
      v53 = *(v51 + 24);
      if (v54 >= v53 >> 1)
      {
        sub_268BB4AD8((v53 > 1), v54 + 1, 1);
        v51 = v257;
      }

      *(v51 + 16) = v54 + 1;
      v238 = v51;
      v55 = v51 + 40 * v54;
      *(v55 + 32) = v244;
      *(v55 + 40) = v37;
      *(v55 + 48) = v243;
      *(v55 + 56) = v242;
      *(v55 + 64) = v241;
      v33 = v245;
      goto LABEL_6;
    }

    v50 = sub_268C1618C();

    v34 = v240;
    if (v50)
    {
      goto LABEL_17;
    }

    v33 = v251 + 1;
    v35 = v250 + 40;
  }

  v34 = &unk_268C17000;
  if (*(v238 + 16))
  {

    v14 = v239;
    if (qword_2802CDBE0 != -1)
    {
      goto LABEL_112;
    }

    goto LABEL_24;
  }

  v73 = sub_268BF00E8(v246, v248, v247, v249);
  v74 = v73;
  v14 = v239;
  if (v73[2] <= 1)
  {
    v84 = sub_268BC3248(v73);
    v238 = v85;
    if (v84)
    {
    }

    else
    {
      v238 = MEMORY[0x277D84F90];
    }

    v86 = v237;
    v87 = v232;
    if (qword_2802CDBE0 != -1)
    {
      swift_once();
      v86 = v237;
    }

    v88 = __swift_project_value_buffer(v86, qword_2802D2F10);
    v89 = v236;
    v90 = *(v236 + 16);
    v242 = v88;
    v244 = v236 + 16;
    v243 = v90;
    (v90)(v87);
    v34 = v248;

    v91 = v238;

    v92 = sub_268C159FC();
    v93 = sub_268C15DFC();

    if (os_log_type_enabled(v92, v93))
    {
      v94 = swift_slowAlloc();
      v95 = swift_slowAlloc();
      *&v257 = v95;
      *v94 = 136315394;
      *(v94 + 4) = sub_268BB3D28(v246, v34, &v257);
      *(v94 + 12) = 2080;
      v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802CDCF0, &qword_268C170B8);
      v97 = MEMORY[0x26D6272E0](v91, v96);
      v99 = v98;

      v34 = sub_268BB3D28(v97, v99, &v257);

      *(v94 + 14) = v34;
      _os_log_impl(&dword_268BAD000, v92, v93, "Rooms with at least one matching token to: %s -> %s", v94, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x26D628010](v95, -1, -1);
      MEMORY[0x26D628010](v94, -1, -1);

      v100 = *(v236 + 8);
      v101 = v87;
      v102 = v237;
    }

    else
    {

      v100 = *(v89 + 8);
      v101 = v87;
      v102 = v86;
    }

    v245 = v100;
    v100(v101, v102);
    if (*(v91 + 16))
    {
      v103 = v91;
    }

    else
    {
      v103 = v249;
    }

    v104 = sub_268BC3248(v74);

    v249 = v103;
    if (v104)
    {
    }

    else
    {
      v104 = MEMORY[0x277D84FA0];
    }

    v105 = v247;

    v107 = sub_268BEE7C4(v106, v104);
    sub_268BDCB60(v105, v246, v248);
    v109 = v108;
    v110 = 0;
    v111 = *(v108 + 16);
    v251 = v108 + 32;
    v23 = (v107 + 56);
    v112 = MEMORY[0x277D84F90];
    v250 = v111;
LABEL_51:
    while (v110 != v111)
    {
      if (v110 >= *(v109 + 16))
      {
        goto LABEL_110;
      }

      v113 = v251 + 16 * v110;
      v34 = *v113;
      v114 = *(v113 + 8);
      ++v110;
      if (*(v107 + 16))
      {
        sub_268C1624C();

        sub_268C15C3C();
        v115 = sub_268C1626C();
        v116 = ~(-1 << *(v107 + 32));
        while (1)
        {
          v117 = v115 & v116;
          if (((*&v23[((v115 & v116) >> 3) & 0xFFFFFFFFFFFFFF8] >> (v115 & v116)) & 1) == 0)
          {
            break;
          }

          v118 = (*(v107 + 48) + 16 * v117);
          if (*v118 != v34 || v118[1] != v114)
          {
            v120 = sub_268C1618C();
            v115 = v117 + 1;
            if ((v120 & 1) == 0)
            {
              continue;
            }
          }

          v14 = v239;
          goto LABEL_51;
        }
      }

      else
      {
      }

      v121 = swift_isUniquelyReferenced_nonNull_native();
      v253[0] = v112;
      if ((v121 & 1) == 0)
      {
        sub_268BB4AB8(0, *(v112 + 16) + 1, 1);
        v112 = v253[0];
      }

      v123 = *(v112 + 16);
      v122 = *(v112 + 24);
      if (v123 >= v122 >> 1)
      {
        sub_268BB4AB8((v122 > 1), v123 + 1, 1);
        v112 = v253[0];
      }

      *(v112 + 16) = v123 + 1;
      v124 = v112 + 16 * v123;
      *(v124 + 32) = v34;
      *(v124 + 40) = v114;
      v14 = v239;
      v111 = v250;
    }

    *&v257 = v112;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802CE5B0, &qword_268C18770);
    sub_268BDCF60();
    v125 = sub_268C15B9C();
    v127 = v126;

    v129 = sub_268C0E9A4(v125, v127, v128);
    v131 = v130;

    sub_268C0E9BC(v129, v131, v132);

    v133 = sub_268C15C1C();
    v135 = v134;

    v136 = HIBYTE(v135) & 0xF;
    if ((v135 & 0x2000000000000000) == 0)
    {
      v136 = v133 & 0xFFFFFFFFFFFFLL;
    }

    if (v136)
    {
      v251 = v133;

      v137 = sub_268C062D4();
      v138 = sub_268BE6F40(v137);
      v139 = v138;
      v140 = v138 + 56;
      v141 = 1 << *(v138 + 32);
      v142 = -1;
      if (v141 < 64)
      {
        v142 = ~(-1 << v141);
      }

      v14 = v142 & *(v138 + 56);
      v23 = ((v141 + 63) >> 6);
      swift_bridgeObjectRetain_n();

      v143 = 0;
      v250 = v135;
      while (v14)
      {
        v144 = v143;
LABEL_79:
        v145 = (*(v139 + 48) + ((v144 << 10) | (16 * __clz(__rbit64(v14)))));
        v146 = *v145;
        v34 = v145[1];
        v14 &= v14 - 1;
        *&v257 = v251;
        *(&v257 + 1) = v135;
        v253[0] = v146;
        v253[1] = v34;
        v252[0] = 0;
        v252[1] = 0xE000000000000000;
        sub_268BB9A64();

        v251 = sub_268C15F4C();
        v135 = v147;
      }

      while (1)
      {
        v144 = v143 + 1;
        if (__OFADD__(v143, 1))
        {
          goto LABEL_111;
        }

        if (v144 >= v23)
        {
          swift_bridgeObjectRelease_n();

          v148 = v251;
          v256[0] = v251;
          v256[1] = v135;
          v149 = v229;
          v150 = v237;
          v243(v229, v242, v237);
          v151 = v249;

          v152 = sub_268C159FC();
          v153 = sub_268C15DFC();
          v154 = os_log_type_enabled(v152, v153);
          v241 = v135;
          if (v154)
          {
            v155 = swift_slowAlloc();
            v156 = swift_slowAlloc();
            *&v257 = v156;
            *v155 = 136315394;

            v157 = sub_268BB3D28(v148, v135, &v257);

            *(v155 + 4) = v157;
            *(v155 + 12) = 2080;
            v158 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802CDCF0, &qword_268C170B8);
            v159 = MEMORY[0x26D6272E0](v151, v158);
            v161 = v160;

            v162 = sub_268BB3D28(v159, v161, &v257);

            *(v155 + 14) = v162;
            _os_log_impl(&dword_268BAD000, v152, v153, "Searching for q: %s in containers: %s", v155, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x26D628010](v156, -1, -1);
            MEMORY[0x26D628010](v155, -1, -1);

            v163 = v229;
          }

          else
          {

            v163 = v149;
          }

          v245(v163, v150);
          v174 = v247;
          v255 = 0x7FFFFFFFFFFFFFFFLL;
          v254 = MEMORY[0x277D84F90];
          v175 = *(v151 + 16);

          for (i = 32; v175; --v175)
          {
            v177 = *(v151 + i);
            v178 = *(v151 + i + 16);
            LOBYTE(v259) = *(v151 + i + 32);
            v257 = v177;
            v258 = v178;
            sub_268BDC5A8(&v257, v253, &unk_2802CDCF0, &qword_268C170B8);
            sub_268BEE8C8(&v257, v174, v107, v139, v256, &v255, &v254);
            sub_268BF2790(&v257, &unk_2802CDCF0, &qword_268C170B8);
            i += 40;
          }

          swift_bridgeObjectRelease_n();
          swift_bridgeObjectRelease_n();
          swift_bridgeObjectRelease_n();
          v179 = v255;
          if (v255 <= v230)
          {
            v193 = v226;
            v194 = v237;
            v243(v226, v242, v237);
            v195 = v248;

            v196 = sub_268C159FC();
            v197 = sub_268C15DEC();

            if (os_log_type_enabled(v196, v197))
            {
              v198 = swift_slowAlloc();
              v199 = swift_slowAlloc();
              v253[0] = v199;
              *v198 = 136315906;
              *(v198 + 4) = sub_268BB3D28(v246, v195, v253);
              *(v198 + 12) = 2080;
              swift_beginAccess();
              v200 = v254;

              v201 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802CDCF0, &qword_268C170B8);
              v202 = MEMORY[0x26D6272E0](v200, v201);
              v204 = v203;

              v205 = sub_268BB3D28(v202, v204, v253);

              *(v198 + 14) = v205;
              *(v198 + 22) = 2048;
              *(v198 + 24) = v179;
              *(v198 + 32) = 2048;
              *(v198 + 34) = v230;
              _os_log_impl(&dword_268BAD000, v196, v197, "Closest match to: %s is %s with score: %ld is within the acceptable threshold: %ld.", v198, 0x2Au);
              swift_arrayDestroy();
              MEMORY[0x26D628010](v199, -1, -1);
              MEMORY[0x26D628010](v198, -1, -1);
            }

            v245(v193, v194);
            (*(v239 + 8))(v234, v233);
            swift_beginAccess();
            v82 = v254;
          }

          else
          {
            v180 = v225;
            v181 = v237;
            v243(v225, v242, v237);
            v182 = sub_268C159FC();
            v183 = sub_268C15DEC();
            if (os_log_type_enabled(v182, v183))
            {
              v184 = swift_slowAlloc();
              v185 = v180;
              v186 = swift_slowAlloc();
              v252[0] = v186;
              *v184 = 136315650;
              swift_beginAccess();
              v187 = v254;

              v188 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802CDCF0, &qword_268C170B8);
              v189 = MEMORY[0x26D6272E0](v187, v188);
              v191 = v190;

              v192 = sub_268BB3D28(v189, v191, v252);

              *(v184 + 4) = v192;
              *(v184 + 12) = 2048;
              *(v184 + 14) = v179;
              *(v184 + 22) = 2048;
              *(v184 + 24) = v230;
              _os_log_impl(&dword_268BAD000, v182, v183, "Closest match: %s has score: %ld outside of the acceptable threshold: %ld. Dropping", v184, 0x20u);
              __swift_destroy_boxed_opaque_existential_0(v186);
              MEMORY[0x26D628010](v186, -1, -1);
              MEMORY[0x26D628010](v184, -1, -1);

              v245(v185, v181);
            }

            else
            {

              v245(v180, v181);
            }

            (*(v239 + 8))(v234, v233);

            return 2;
          }

          return v82;
        }

        v14 = *(v140 + 8 * v144);
        ++v143;
        if (v14)
        {
          v143 = v144;
          goto LABEL_79;
        }
      }
    }

    v164 = v238;
    v165 = *(v238 + 16);
    v166 = MEMORY[0x277D84F90];
    if (v165)
    {
      v167 = v135;
      *&v257 = MEMORY[0x277D84F90];
      sub_268BB4AB8(0, v165, 0);
      v166 = v257;
      v168 = (v164 + 40);
      do
      {
        v170 = *(v168 - 1);
        v169 = *v168;
        *&v257 = v166;
        v171 = *(v166 + 16);
        v172 = *(v166 + 24);

        if (v171 >= v172 >> 1)
        {
          sub_268BB4AB8((v172 > 1), v171 + 1, 1);
          v166 = v257;
        }

        *(v166 + 16) = v171 + 1;
        v173 = v166 + 16 * v171;
        *(v173 + 32) = v170;
        *(v173 + 40) = v169;
        v168 += 5;
        --v165;
      }

      while (v165);
      v14 = v239;
      v135 = v167;
    }

    v206 = *(sub_268BE6F40(v166) + 16);

    if (v206 == 1)
    {
      v207 = v224;
      v208 = v237;
      v243(v224, v242, v237);
      v209 = v248;

      v210 = v238;

      v211 = sub_268C159FC();
      v212 = sub_268C15DFC();

      if (os_log_type_enabled(v211, v212))
      {
        v213 = swift_slowAlloc();
        v214 = swift_slowAlloc();
        *&v257 = v214;
        *v213 = 136315394;
        *(v213 + 4) = sub_268BB3D28(v246, v209, &v257);
        *(v213 + 12) = 2080;
        v215 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802CDCF0, &qword_268C170B8);
        v216 = MEMORY[0x26D6272E0](v210, v215);
        v250 = v135;
        v218 = v217;

        v219 = sub_268BB3D28(v216, v218, &v257);

        *(v213 + 14) = v219;
        _os_log_impl(&dword_268BAD000, v211, v212, "One container is the closest. Query: %s, result: %s. Returning", v213, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x26D628010](v214, -1, -1);
        MEMORY[0x26D628010](v213, -1, -1);
      }

      else
      {
      }

      v245(v207, v208);
      (*(v14 + 8))(v234, v233);

      return v238;
    }

    v243(v227, v242, v237);
    v220 = sub_268C159FC();
    v221 = sub_268C15DEC();
    if (os_log_type_enabled(v220, v221))
    {
      v222 = swift_slowAlloc();
      *v222 = 0;
      _os_log_impl(&dword_268BAD000, v220, v221, "query is empty after filtering out tokens. User needs to be more specific. Bailing", v222, 2u);
      MEMORY[0x26D628010](v222, -1, -1);
    }

    v245(v227, v237);
    (*(v14 + 8))(v234, v233);

    return 1;
  }

  else
  {

    if (qword_2802CDBE0 != -1)
    {
      swift_once();
    }

    v75 = v237;
    v76 = __swift_project_value_buffer(v237, qword_2802D2F10);
    v77 = v236;
    v78 = v231;
    (*(v236 + 16))(v231, v76, v75);
    v79 = sub_268C159FC();
    v80 = sub_268C15DEC();
    if (os_log_type_enabled(v79, v80))
    {
      v81 = swift_slowAlloc();
      *v81 = 0;
      _os_log_impl(&dword_268BAD000, v79, v80, "Found more than 1 group overlapping with the query but they don't intersect. Bailing", v81, 2u);
      MEMORY[0x26D628010](v81, -1, -1);
    }

    (*(v77 + 8))(v78, v75);
    (*(v14 + 8))(v234, v233);
    return 0;
  }
}

uint64_t sub_268BF1E08@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *(a3 + 16);
  v6[0] = *a3;
  v6[1] = v4;
  v7 = *(a3 + 32);
  return sub_268BEDF18(a1, a2, v6, a4);
}

uint64_t sub_268BF1E3C(void *a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v4[0] = *a2;
  v4[1] = v2;
  v5 = *(a2 + 32);
  return sub_268BEE518(a1, v4) & 1;
}

uint64_t sub_268BF1E74@<X0>(void **a1@<X0>, uint64_t a2@<X2>, void *a3@<X3>, uint64_t a4@<X8>)
{
  v4 = *a1;
  v5 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v5;
  v8 = *(a2 + 32);
  return sub_268BEE660(a3, v4, v7, a4);
}

void sub_268BF1EBC(__int128 *a1, void (*a2)(id *), uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v6 = a1[1];
  v7 = *a1;
  v8[0] = v6;
  *(v8 + 9) = *(a1 + 25);
  sub_268BEA59C(&v7, a2, a3, a4, a5, a6);
}

uint64_t sub_268BF1EF0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802CE4F8, &qword_268C186B0);
  OUTLINED_FUNCTION_6_8();
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);

  v5 = *(v0 + 36);
  v6 = sub_268C1533C();
  if (!OUTLINED_FUNCTION_10_7(v6))
  {
    (*(*(v2 - 8) + 8))(v1 + v4 + v5, v2);
  }

  OUTLINED_FUNCTION_8_8();

  OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2821FE8E8](v7, v8, v9);
}

uint64_t sub_268BF1FFC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802CE4F8, &qword_268C186B0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_268BF206C(__int128 *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802CE4F8, &qword_268C186B0);
  OUTLINED_FUNCTION_28(v3);
  OUTLINED_FUNCTION_9_6();
  v8 = (v1 + v7);
  v9 = *v8;
  v10 = v8[1];

  sub_268BF1EBC(a1, v4, v5, v1 + v6, v9, v10);
}

void sub_268BF2110(uint64_t a1)
{
  sub_268BF2224(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_268BF2224(uint64_t a1)
{
  if (!qword_2802CE518)
  {
    v2 = type metadata accessor for HomeManager(255);
    v3 = sub_268BF2288();
    v5 = type metadata accessor for HomeProvider(a1, v2, v3, v4);
    if (!v6)
    {
      atomic_store(v5, &qword_2802CE518);
    }
  }
}

unint64_t sub_268BF2288()
{
  result = qword_2802CE520;
  if (!qword_2802CE520)
  {
    type metadata accessor for HomeManager(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802CE520);
  }

  return result;
}

uint64_t sub_268BF22E0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802CE4F8, &qword_268C186B0);
  OUTLINED_FUNCTION_6_8();
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);

  v5 = *(v0 + 36);
  v6 = sub_268C1533C();
  if (!OUTLINED_FUNCTION_10_7(v6))
  {
    (*(*(v2 - 8) + 8))(v1 + v4 + v5, v2);
  }

  OUTLINED_FUNCTION_8_8();
  __swift_destroy_boxed_opaque_existential_0((v1 + v2));
  OUTLINED_FUNCTION_14_3();

  return MEMORY[0x2821FE8E8](v7, v8, v9);
}

uint64_t sub_268BF23F0(__int128 *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802CE4F8, &qword_268C186B0);
  OUTLINED_FUNCTION_28(v3);
  OUTLINED_FUNCTION_9_6();
  v8 = *(v1 + 32);

  return sub_268BF0038(a1, v4, v5, v8, v1 + v6, v1 + v7);
}

uint64_t sub_268BF248C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_23_4(a1, a2, a3, a4);
  OUTLINED_FUNCTION_2_4();
  (*(v6 + 40))(v4, v5);
  return v4;
}

uint64_t sub_268BF24DC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MediaGroup(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_268BF2540(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_2_4();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_268BF25A0(uint64_t a1)
{
  v2 = type metadata accessor for MediaGroup(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_268BF25FC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MediaGroup(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_268BF26E4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a2)
  {
    v4 = a4;
  }
}

void sub_268BF2724(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a2)
  {
  }
}

uint64_t sub_268BF2768(uint64_t result, unsigned __int8 a2)
{
  if (a2 <= 2u)
  {
  }

  return v2;
}

uint64_t sub_268BF277C(uint64_t result, unsigned __int8 a2)
{
  if (a2 <= 2u)
  {
  }

  return v2;
}

uint64_t sub_268BF2790(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_2_4();
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t OUTLINED_FUNCTION_8_8()
{
  v3 = (v1 + *(v0 + 40));

  return __swift_destroy_boxed_opaque_existential_0(v3);
}

uint64_t OUTLINED_FUNCTION_10_7(uint64_t a1)
{

  return __swift_getEnumTagSinglePayload(v1 + v2, 1, a1);
}

unint64_t UsoEntityBuilder_common_UserEntity.addName(displayName:)()
{
  sub_268C153FC();
  sub_268C1577C();
  result = sub_268C1564C();
  if (result)
  {
    v1 = result;
    v2 = sub_268BC4A94(result);
    v3 = v2 - 1;
    if (__OFSUB__(v2, 1))
    {
      __break(1u);
    }

    else
    {
      sub_268BC4F00();
      if ((v1 & 0xC000000000000001) == 0)
      {
        v4 = *(v1 + 8 * v3 + 32);

LABEL_5:

        return v4;
      }
    }

    v4 = MEMORY[0x26D627640](v3, v1);
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

Swift::Void __swiftcall UsoPrimitiveStringBuilder.addEntitySpans(entitySpanBuilders:)(Swift::OpaquePointer entitySpanBuilders)
{
  v3 = 0;
  v4 = *(entitySpanBuilders._rawValue + 2);
  while (v4 != v3)
  {
    v5 = *(type metadata accessor for UsoEntitySpanBuilder(0) - 8);
    sub_268BF2A54(entitySpanBuilders._rawValue + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v3++, v1);
  }
}

uint64_t sub_268BF2A54(uint64_t a1, void *a2)
{
  v31 = a2;
  v3 = type metadata accessor for UsoEntitySpanBuilder(0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = (&v30 - v7);
  v9 = sub_268C15A1C();
  v32 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802CE600, &unk_268C18798);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v30 - v13;
  v15 = sub_268C1551C();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  UsoEntitySpanBuilder.build()(v14);
  if (__swift_getEnumTagSinglePayload(v14, 1, v15) == 1)
  {
    sub_268BF3498(v14);
    if (qword_2802CDBE0 != -1)
    {
      swift_once();
    }

    v19 = __swift_project_value_buffer(v9, qword_2802D2F10);
    v20 = v32;
    (*(v32 + 16))(v11, v19, v9);
    sub_268BF3500(a1, v8);
    sub_268BF3500(a1, v5);
    v21 = sub_268C159FC();
    v22 = sub_268C15DEC();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v33 = v31;
      *v23 = 136315394;
      v24 = *v8;
      v25 = v8[1];

      sub_268BF3564(v8);
      v26 = sub_268BB3D28(v24, v25, &v33);

      *(v23 + 4) = v26;
      *(v23 + 12) = 2048;
      v27 = v5[16];
      sub_268BF3564(v5);
      *(v23 + 14) = v27;
      _os_log_impl(&dword_268BAD000, v21, v22, "Unable to get usoEntitySpan for semanticValue: %s, and homeAutomationEntityType: %ld", v23, 0x16u);
      v28 = v31;
      __swift_destroy_boxed_opaque_existential_0(v31);
      MEMORY[0x26D628010](v28, -1, -1);
      MEMORY[0x26D628010](v23, -1, -1);

      return (*(v32 + 8))(v11, v9);
    }

    else
    {
      sub_268BF3564(v5);

      sub_268BF3564(v8);
      return (*(v20 + 8))(v11, v9);
    }
  }

  else
  {
    (*(v16 + 32))(v18, v14, v15);
    sub_268C1541C();
    return (*(v16 + 8))(v18, v15);
  }
}

Swift::Void __swiftcall UsoPrimitiveStringBuilder.addUsoIdentifiers(usoIdentifierBuilders:)(Swift::OpaquePointer usoIdentifierBuilders)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802CDF58, &qword_268C17338);
  MEMORY[0x28223BE20](v2 - 8);
  OUTLINED_FUNCTION_1_8(&v62[-v3]);
  v73 = sub_268C1570C();
  OUTLINED_FUNCTION_3_0();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_4_2();
  OUTLINED_FUNCTION_1_8(v7);
  v71 = sub_268C156EC();
  OUTLINED_FUNCTION_3_0();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_4_2();
  OUTLINED_FUNCTION_1_8(v11);
  v12 = sub_268C155DC();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v13);
  v15 = &v62[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v16);
  v83 = &v62[-v17];
  MEMORY[0x28223BE20](v18);
  v69 = &v62[-v19];
  MEMORY[0x28223BE20](v20);
  v82 = &v62[-v21];
  v22 = 0;
  v23 = *(usoIdentifierBuilders._rawValue + 2);
  v75 = usoIdentifierBuilders._rawValue + 32;
  v76 = v23;
  v68 = *MEMORY[0x277D5E6A8];
  v67 = v9 + 104;
  v66 = v9 + 8;
  v65 = v5 + 104;
  v64 = v5 + 8;
  v81 = (v24 + 32);
  v63 = *MEMORY[0x277D5E6C0];
  v25 = (v24 + 16);
  v84 = v24;
  v26 = (v24 + 8);
  while (v22 != v76)
  {
    v27 = &v75[48 * v22];
    v28 = *(v27 + 10);
    v29 = v27[44];
    v30 = *(v27 + 3);
    v31 = *(v27 + 4);
    v32 = v27[16];
    v33 = *(v27 + 1);
    v90 = *v27;
    v91 = v33;
    v92 = v32;
    v93 = v30;
    v94 = v31;
    v85 = v28;
    v95 = v28;
    v96 = v29;

    v86 = v33;

    sub_268BBA140();
    v35 = v34;
    v87 = v31;
    if (v31)
    {
      v89 = v22;
      OUTLINED_FUNCTION_2_7();
      v88 = v35;
      v36 = v70;
      v80 = v30;
      v37 = v71;
      v38(v70, v68, v71);

      v39 = sub_268C156DC();
      v78 = v40;
      v79 = v39;
      OUTLINED_FUNCTION_2_7();
      v41(v36, v37);
      OUTLINED_FUNCTION_2_7();
      v42 = v72;
      v43 = v73;
      v44(v72, v63, v73);
      sub_268C156FC();
      v77 = v45;
      OUTLINED_FUNCTION_2_7();
      v46(v42, v43);
      v47 = sub_268C1553C();
      __swift_storeEnumTagSinglePayload(v74, 1, 1, v47);
      LOBYTE(v90) = v29;
      v48 = v69;
      sub_268C1559C();
      v49 = v82;
      v85 = *v81;
      v85(v82, v48, v12);
      v50 = v49;
      v51 = v88;
      (*v25)(v83, v50, v12);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_268BB31EC(0, *(v51 + 16) + 1, 1, v51);
        v51 = v60;
      }

      v53 = *(v51 + 16);
      v52 = *(v51 + 24);
      v54 = v51;
      v22 = v89;
      if (v53 >= v52 >> 1)
      {
        sub_268BB31EC(v52 > 1, v53 + 1, 1, v51);
        v54 = v61;
      }

      v55 = v84;
      (*(v84 + 8))(v82, v12);
      *(v54 + 16) = v53 + 1;
      v35 = v54;
      v85((v54 + ((*(v55 + 80) + 32) & ~*(v55 + 80)) + *(v55 + 72) * v53), v83, v12);
    }

    ++v22;
    v56 = *(v35 + 16);
    if (v56)
    {
      v88 = v35;
      v89 = v22;
      v57 = v35 + ((*(v84 + 80) + 32) & ~*(v84 + 80));
      v58 = *(v84 + 72);
      v59 = *(v84 + 16);
      do
      {
        v59(v15, v57, v12);
        sub_268C1540C();
        (*v26)(v15, v12);
        v57 += v58;
        --v56;
      }

      while (v56);

      v22 = v89;
    }

    else
    {
    }
  }
}

uint64_t sub_268BF3498(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802CE600, &unk_268C18798);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_268BF3500(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UsoEntitySpanBuilder(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_268BF3564(uint64_t a1)
{
  v2 = type metadata accessor for UsoEntitySpanBuilder(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t Reference.rawValue.getter()
{
  result = 6647407;
  switch(*v0)
  {
    case 1:
      result = 6645876;
      break;
    case 2:
      result = 2037277037;
      break;
    case 3:
      result = 0x6574696E69666564;
      break;
    case 4:
      result = 0x696E696665646E69;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t FromEntity.init(haEntity:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v4 = OUTLINED_FUNCTION_2_8();
  v6 = v5(v4);
  if (v7)
  {
    v8 = 2;
LABEL_11:
    *a2 = v8;
    a2[1] = v6;
    a2[2] = v7;
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  OUTLINED_FUNCTION_6_9();
  v9 = OUTLINED_FUNCTION_2_8();
  v6 = v10(v9);
  if (v7)
  {
    v8 = 0;
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_6_9();
  v11 = OUTLINED_FUNCTION_2_8();
  v6 = v12(v11);
  if (v7)
  {
    v8 = 1;
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_6_9();
  v13 = OUTLINED_FUNCTION_2_8();
  v6 = v14(v13);
  if (v7)
  {
    v8 = 3;
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_6_9();
  v15 = OUTLINED_FUNCTION_2_8();
  v6 = v16(v15);
  if (v7)
  {
    v8 = 4;
    goto LABEL_11;
  }

  result = __swift_destroy_boxed_opaque_existential_0(a1);
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  return result;
}

BOOL HomeAutomationEntity.currentRoom.getter(uint64_t a1, uint64_t a2)
{
  (*(a2 + 104))(&var1, a1);
  v2 = var1;

  return sub_268BDD94C(v2, &unk_287975108);
}

uint64_t PlaceHint.rawValue.getter()
{
  result = 1936287860;
  switch(*v0)
  {
    case 1:
      return 0x657265685F6E69;
    case 2:
      return 0x6E69685F6D6F6F72;
    case 3:
      return 0x69685F6573756F68;
    case 4:
      return 0x725F6E6F6D6D6F63;
    case 5:
      return 1819042152;
    case 6:
      return 0x6E65686374696BLL;
    case 7:
      v3 = 1769367916;
      return v3 | 0x6F72676E00000000;
    case 8:
      v3 = 1768843620;
      return v3 | 0x6F72676E00000000;
    case 9:
      return 0x65636E6172746E65;
    case 0xA:
      return 0x6D6F6F7268746162;
    case 0xB:
      return 0x65636966666FLL;
    case 0xC:
      v2 = 1919182178;
      goto LABEL_18;
    case 0xD:
      return 0x625F72657473616DLL;
    case 0xE:
      return 0x746E656D65736162;
    case 0xF:
      return 1685217657;
    case 0x10:
      return 7174503;
    case 0x11:
      return 0x6F6F725F79616C70;
    case 0x12:
      v2 = 1918858868;
LABEL_18:
      result = v2 | 0x6D6F6F00000000;
      break;
    case 0x13:
      result = 0x706F68736B726F77;
      break;
    default:
      return result;
  }

  return result;
}

void DeviceType.rawValue.getter()
{
  switch(*v0)
  {
    case 8:
      OUTLINED_FUNCTION_15_5();
      break;
    default:
      return;
  }
}

uint64_t HomeAutomationEntity.name.getter(uint64_t a1, uint64_t a2)
{
  result = (*(a2 + 24))();
  if (!v3)
  {
    v4 = OUTLINED_FUNCTION_15();
    return v5(v4);
  }

  return result;
}

uint64_t sub_268BF3C50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  (*(a2 + 104))(&v6, a1);
  v4 = v6;
  if (v6 == 20)
  {
    return 0;
  }

  return sub_268BB0EAC(v4, a3);
}

uint64_t HomeAutomationEntity.description.getter()
{
  sub_268C1606C();
  OUTLINED_FUNCTION_13_5();
  MEMORY[0x26D627230]();
  v0 = OUTLINED_FUNCTION_17();
  v90 = v1(v0);
  v98 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802CE098, &qword_268C177C0);
  sub_268C15C0C();
  OUTLINED_FUNCTION_19_6();

  MEMORY[0x26D627230](0x614E656E6F7A202CLL, 0xEC000000203A656DLL);
  v3 = OUTLINED_FUNCTION_17();
  v5 = v4(v3);
  OUTLINED_FUNCTION_10_8(v5, v6, v7, v8, v9, v10, v11, v12, v90, v98);
  OUTLINED_FUNCTION_19_6();

  OUTLINED_FUNCTION_13_5();
  MEMORY[0x26D627230](0xD000000000000011);
  v13 = OUTLINED_FUNCTION_17();
  v15 = v14(v13);
  OUTLINED_FUNCTION_10_8(v15, v16, v17, v18, v19, v20, v21, v22, v91, v99);
  OUTLINED_FUNCTION_19_6();

  MEMORY[0x26D627230](0x636976726573202CLL, 0xEF203A656D614E65);
  v23 = OUTLINED_FUNCTION_17();
  v25 = v24(v23);
  OUTLINED_FUNCTION_10_8(v25, v26, v27, v28, v29, v30, v31, v32, v92, v100);
  OUTLINED_FUNCTION_19_6();

  OUTLINED_FUNCTION_13_5();
  MEMORY[0x26D627230]();
  v33 = OUTLINED_FUNCTION_17();
  v35 = v34(v33);
  OUTLINED_FUNCTION_10_8(v35, v36, v37, v38, v39, v40, v41, v42, v93, v101);
  OUTLINED_FUNCTION_16_5();

  MEMORY[0x26D627230](0x656369766564202CLL, 0xEE00203A65707954);
  v43 = OUTLINED_FUNCTION_17();
  v44(v43);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802CE608, &qword_268C187A8);
  OUTLINED_FUNCTION_17_6(v45, v46, v47, v48, v49, v50, v51, v52, v94);
  OUTLINED_FUNCTION_16_5();

  MEMORY[0x26D627230](0x486563616C70202CLL, 0xED0000203A746E69);
  v53 = OUTLINED_FUNCTION_17();
  v54(v53);
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802CE610, &qword_268C187B0);
  OUTLINED_FUNCTION_17_6(v55, v56, v57, v58, v59, v60, v61, v62, v95);
  OUTLINED_FUNCTION_16_5();

  OUTLINED_FUNCTION_13_5();
  MEMORY[0x26D627230]();
  v63 = OUTLINED_FUNCTION_17();
  v64(v63);
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802CE618, &qword_268C187B8);
  OUTLINED_FUNCTION_17_6(v65, v66, v67, v68, v69, v70, v71, v72, v96);
  OUTLINED_FUNCTION_16_5();

  MEMORY[0x26D627230](0x657265666572202CLL, 0xED0000203A65636ELL);
  v73 = OUTLINED_FUNCTION_17();
  v74(v73);
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802CE620, &unk_268C187C0);
  OUTLINED_FUNCTION_17_6(v75, v76, v77, v78, v79, v80, v81, v82, v97);
  OUTLINED_FUNCTION_16_5();

  OUTLINED_FUNCTION_13_5();
  MEMORY[0x26D627230](0xD000000000000011);
  v83 = OUTLINED_FUNCTION_17();
  v85 = v84(v83);
  v86 = (v85 & 1) == 0;
  if (v85)
  {
    v87 = 1702195828;
  }

  else
  {
    v87 = 0x65736C6166;
  }

  if (v86)
  {
    v88 = 0xE500000000000000;
  }

  else
  {
    v88 = 0xE400000000000000;
  }

  MEMORY[0x26D627230](v87, v88);

  MEMORY[0x26D627230](32032, 0xE200000000000000);
  return 0;
}

uint64_t HomeAutomationEntity.matches(haEntity:)(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_268C15A1C();
  OUTLINED_FUNCTION_3_0();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  v11 = &v45[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v45[-1] - v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v45[-1] - v16;
  if (sub_268BF455C(a1, a2, a3))
  {
    if (qword_2802CDBE0 != -1)
    {
      OUTLINED_FUNCTION_18(&qword_2802CDBE0);
    }

    __swift_project_value_buffer(v6, qword_2802D2F10);
    OUTLINED_FUNCTION_11_5();
    v18(v17);
    sub_268BDFAE0(a1, v45);
    v19 = sub_268C159FC();
    v20 = sub_268C15DCC();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      *v21 = 136315138;
      v22 = OUTLINED_FUNCTION_5_6();
      v24 = OUTLINED_FUNCTION_7_7(v22, v23);

      *(v21 + 4) = v24;
      _os_log_impl(&dword_268BAD000, v19, v20, "HomeAutomation entities have a matching name: %s", v21, 0xCu);
      OUTLINED_FUNCTION_12_5();
      OUTLINED_FUNCTION_30();

      (*(v8 + 8))(v17, v6);
      return 1;
    }

    (*(v8 + 8))(v17, v6);
    goto LABEL_17;
  }

  if (sub_268BF46DC(a1, a2, a3))
  {
    if (qword_2802CDBE0 != -1)
    {
      OUTLINED_FUNCTION_18(&qword_2802CDBE0);
    }

    __swift_project_value_buffer(v6, qword_2802D2F10);
    OUTLINED_FUNCTION_11_5();
    v25(v14);
    sub_268BDFAE0(a1, v45);
    v26 = sub_268C159FC();
    v27 = sub_268C15DCC();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      *v28 = 136315138;
      v29 = OUTLINED_FUNCTION_5_6();
      v31 = OUTLINED_FUNCTION_7_7(v29, v30);

      *(v28 + 4) = v31;
      _os_log_impl(&dword_268BAD000, v26, v27, "HomeAutomation entities have a matching device type: %s", v28, 0xCu);
      OUTLINED_FUNCTION_12_5();
      OUTLINED_FUNCTION_30();

      (*(v8 + 8))(v14, v6);
      return 1;
    }

    (*(v8 + 8))(v14, v6);
LABEL_17:
    __swift_destroy_boxed_opaque_existential_0(v45);
    return 1;
  }

  if (qword_2802CDBE0 != -1)
  {
    OUTLINED_FUNCTION_18(&qword_2802CDBE0);
  }

  __swift_project_value_buffer(v6, qword_2802D2F10);
  OUTLINED_FUNCTION_11_5();
  v32(v11);
  sub_268BDFAE0(a1, v45);
  v33 = sub_268C159FC();
  v34 = sub_268C15DCC();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    *v35 = 136315138;
    v36 = OUTLINED_FUNCTION_5_6();
    v38 = OUTLINED_FUNCTION_7_7(v36, v37);

    *(v35 + 4) = v38;
    _os_log_impl(&dword_268BAD000, v33, v34, "HomeAutomation entities did not match: %s", v35, 0xCu);
    OUTLINED_FUNCTION_12_5();
    OUTLINED_FUNCTION_30();

    v39 = OUTLINED_FUNCTION_15();
    v40(v39);
  }

  else
  {

    v42 = OUTLINED_FUNCTION_15();
    v43(v42);
    __swift_destroy_boxed_opaque_existential_0(v45);
  }

  return 0;
}

uint64_t sub_268BF455C(void *a1, uint64_t a2, uint64_t a3)
{
  HomeAutomationEntity.name.getter(a2, a3);
  if (v6)
  {

    v7 = HomeAutomationEntity.name.getter(a2, a3);
    v9 = v8;
    v10 = a1[3];
    v11 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v10);
    v12 = HomeAutomationEntity.name.getter(v10, v11);
  }

  else
  {
    v14 = *(a3 + 8);
    v14(a2, a3);
    if (!v15)
    {
      v20 = 0;
      return v20 & 1;
    }

    v7 = (v14)(a2, a3);
    v9 = v16;
    v17 = a1[3];
    v18 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v17);
    v12 = (*(v18 + 8))(v17, v18);
  }

  if (v9)
  {
    if (v13)
    {
      if (v7 == v12 && v9 == v13)
      {

        v20 = 1;
      }

      else
      {
        v20 = sub_268C1618C();
      }
    }

    else
    {
      v20 = 0;
    }
  }

  else
  {
    if (!v13)
    {
      v20 = 1;
      return v20 & 1;
    }

    v20 = 0;
  }

  return v20 & 1;
}

BOOL sub_268BF46DC(void *a1, uint64_t a2, uint64_t a3)
{
  (*(a3 + 80))(&v10, a2, a3);
  result = 0;
  if (v10 != 12)
  {
    v4 = a1[3];
    v5 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v4);
    (*(v5 + 80))(&v10, v4, v5);
    if (v10 != 12)
    {
      DeviceType.rawValue.getter();
      DeviceCategory.init(deviceType:)(v6);
      if ((v11 & 1) == 0)
      {
        v7 = v10;
        DeviceType.rawValue.getter();
        DeviceCategory.init(deviceType:)(v8);
        if (v11 != 1 && (v7 & ~v10) == 0)
        {
          return 1;
        }
      }
    }
  }

  return result;
}

BOOL HomeAutomationEntity.isDeviceTypeOnly.getter(uint64_t a1, uint64_t a2)
{
  (*(a2 + 80))(&v29);
  if (v29 != 12)
  {
    v2 = OUTLINED_FUNCTION_15();
    v3(v2);
    if (v4 || (v5 = OUTLINED_FUNCTION_15(), v6(v5), v7) || (v8 = OUTLINED_FUNCTION_15(), v9(v8), v10) || (v11 = OUTLINED_FUNCTION_15(), v12(v11), v13) || (v14 = OUTLINED_FUNCTION_15(), v15(v14), v16))
    {
    }

    else
    {
      v18 = OUTLINED_FUNCTION_15();
      if ((v19(v18) & 1) == 0)
      {
        v20 = OUTLINED_FUNCTION_15();
        v21(v20);
        if (v28 == 5)
        {
          v22 = OUTLINED_FUNCTION_15();
          v23(v22);
          if (v27 == 20)
          {
            v24 = OUTLINED_FUNCTION_15();
            v25(v24);
            return v26 == 5;
          }
        }
      }
    }
  }

  return 0;
}

unint64_t Collection<>.getFilteringDeviceCategory()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v31 = a4;
  sub_268C15A1C();
  OUTLINED_FUNCTION_3_0();
  v29 = v8;
  v30 = v7;
  MEMORY[0x28223BE20](v7);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = sub_268C15F1C();
  OUTLINED_FUNCTION_3_0();
  v14 = v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v28 - v16;
  v32 = a1;
  v33 = a2;
  v34 = a3;
  sub_268C15CBC();
  if (__swift_getEnumTagSinglePayload(v17, 1, AssociatedTypeWitness) == 1)
  {
    (*(v14 + 8))(v17, v12);
LABEL_4:
    if (qword_2802CDBE0 != -1)
    {
      OUTLINED_FUNCTION_18(&qword_2802CDBE0);
    }

    v19 = v30;
    v20 = __swift_project_value_buffer(v30, qword_2802D2F10);
    v21 = v29;
    (*(v29 + 16))(v10, v20, v19);
    v22 = sub_268C159FC();
    v23 = sub_268C15DFC();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_268BAD000, v22, v23, "No entities found with a deviceType. Returning filtering DeviceCategory: .everything", v24, 2u);
      OUTLINED_FUNCTION_30();
    }

    result = (*(v21 + 8))(v10, v19);
    v26 = 15;
    goto LABEL_11;
  }

  (*(a3 + 80))(&v36, AssociatedTypeWitness, a3);
  v18 = v36;
  (*(*(AssociatedTypeWitness - 8) + 8))(v17, AssociatedTypeWitness);
  if (v18 == 12)
  {
    goto LABEL_4;
  }

  v35 = v18;
  DeviceType.rawValue.getter();
  result = DeviceCategory.init(deviceType:)(v27);
  v26 = 15;
  if (!v37)
  {
    v26 = v36;
  }

LABEL_11:
  *v31 = v26;
  return result;
}

BOOL sub_268BF4C88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a4 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5(&v8, AssociatedTypeWitness, a4);
  return v8 != 12;
}

uint64_t sub_268BF4D70@<X0>(uint64_t (**a3)(uint64_t, uint64_t)@<X3>, uint64_t *a4@<X8>)
{
  v6 = a3[1];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  result = v6(AssociatedTypeWitness, a3);
  if (v9 || (result = a3[2](AssociatedTypeWitness, a3), v9) || (result = a3[3](AssociatedTypeWitness, a3), v9) || (result = a3[4](AssociatedTypeWitness, a3), v9))
  {
    *a4 = result;
LABEL_6:
    a4[1] = v9;
    return result;
  }

  result = a3[5](AssociatedTypeWitness, a3);
  *a4 = result;
  if (v9)
  {
    goto LABEL_6;
  }

  a4[1] = 0;
  return result;
}

uint64_t sub_268BF4EE0(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v1);
  return (*(v2 + 48))(v1, v2) & 1;
}

uint64_t Collection<>.hasFromAndToEntities.getter(uint64_t a1, uint64_t a2)
{
  if (Collection<>.hasFromEntities.getter(a1, a2))
  {
    v2 = sub_268C15CCC();
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

BOOL sub_268BF4FAC(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v1);
  return ((*(v2 + 48))(v1, v2) & 1) == 0;
}

SiriPlaybackControlSupport::DeviceType __swiftcall DeviceType.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  countAndFlagsBits = rawValue._countAndFlagsBits;
  v4 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802CDCC8, &qword_268C17090);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_268C172C0;
  *(inited + 32) = 0x76745F656C707061;
  *(inited + 40) = 0xE800000000000000;
  *(inited + 48) = 0x7674656C707061;
  *(inited + 56) = 0xE700000000000000;
  v16 = countAndFlagsBits;
  v17 = object;
  v15 = &v16;
  v6 = sub_268BC48EC(sub_268BC4C7C, v14, inited);
  swift_setDeallocating();
  sub_268BF5B34();
  if (v6)
  {
    LOBYTE(v7) = 0;
  }

  else
  {
    v8 = 0;
    while (1)
    {
      v7 = byte_287974650[v8++ + 32];
      v16 = 0;
      v17 = 0xE000000000000000;
      v9 = 0xE800000000000000;
      v10 = 0x76745F656C707061;
      switch(v7)
      {
        case 1:
          v9 = 0xEA00000000006E6FLL;
          v10 = 0x69736976656C6574;
          break;
        case 2:
          v9 = 0xE700000000000000;
          v10 = 0x646F70656D6F68;
          break;
        case 3:
          v9 = 0xE700000000000000;
          v10 = 0x72656B61657073;
          break;
        case 4:
          v10 = 0x5F74726F70726961;
          v9 = 0xEF73736572707865;
          break;
        case 5:
          v9 = 0xE400000000000000;
          v10 = 1684099177;
          break;
        case 6:
          v9 = 0xE600000000000000;
          v10 = 0x656E6F685069;
          break;
        case 7:
          v10 = 0x5F79616C70726961;
          v9 = 0xEF72656B61657073;
          break;
        case 8:
          v10 = 0xD000000000000011;
          v9 = 0x8000000268C1B470;
          break;
        case 9:
          v10 = 0xD000000000000012;
          v9 = 0x8000000268C1B380;
          break;
        case 10:
          v10 = 0x636341726568746FLL;
          v9 = 0xEE0079726F737365;
          break;
        case 11:
          v9 = 0xE700000000000000;
          v10 = 0x6E776F6E6B6E75;
          break;
        default:
          break;
      }

      MEMORY[0x26D627230](v10, v9);

      if (v16 == countAndFlagsBits && v17 == object)
      {
        break;
      }

      v12 = sub_268C1618C();

      if (v12)
      {
        goto LABEL_24;
      }

      if (v8 == 12)
      {
        LOBYTE(v7) = 11;
        goto LABEL_24;
      }
    }
  }

LABEL_24:

  *v4 = v7;
  return result;
}

void DeviceType.capabilities.getter(uint64_t a1@<X8>)
{
  v2 = 0;
  v3 = 9;
  switch(*v1)
  {
    case 0:
    case 1:
      break;
    case 2:
    case 3:
    case 4:
    case 7:
    case 8:
      v2 = 0;
      v3 = 6;
      break;
    default:
      v3 = 0;
      v2 = 1;
      break;
  }

  *a1 = v3;
  *(a1 + 8) = v2;
}

uint64_t sub_268BF53F0@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = DeviceType.init(rawValue:)(*a1);
  *a2 = v4;
  return result;
}

void sub_268BF5430(unint64_t *a1@<X8>)
{
  DeviceType.rawValue.getter();
  *a1 = v2;
  a1[1] = v3;
}

SiriPlaybackControlSupport::PlaceHint_optional __swiftcall PlaceHint.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_268C1619C();

  v5 = 0;
  v6 = 2;
  switch(v3)
  {
    case 0:
      goto LABEL_3;
    case 1:
      v5 = 1;
LABEL_3:
      v6 = v5;
      break;
    case 2:
      break;
    case 3:
      v6 = 3;
      break;
    case 4:
      v6 = 4;
      break;
    case 5:
      v6 = 5;
      break;
    case 6:
      v6 = 6;
      break;
    case 7:
      v6 = 7;
      break;
    case 8:
      v6 = 8;
      break;
    case 9:
      v6 = 9;
      break;
    case 10:
      v6 = 10;
      break;
    case 11:
      v6 = 11;
      break;
    case 12:
      v6 = 12;
      break;
    case 13:
      v6 = 13;
      break;
    case 14:
      v6 = 14;
      break;
    case 15:
      v6 = 15;
      break;
    case 16:
      v6 = 16;
      break;
    case 17:
      v6 = 17;
      break;
    case 18:
      v6 = 18;
      break;
    case 19:
      v6 = 19;
      break;
    default:
      v6 = 20;
      break;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_268BF5618@<X0>(uint64_t *a1@<X8>)
{
  result = PlaceHint.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

SiriPlaybackControlSupport::DeviceQuantifier_optional __swiftcall DeviceQuantifier.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_8_9();
  sub_268C1615C();
  result.value = OUTLINED_FUNCTION_18_5();
  v4 = 5;
  if (v2 < 5)
  {
    v4 = v2;
  }

  *v1 = v4;
  return result;
}

uint64_t DeviceQuantifier.rawValue.getter()
{
  result = 6647407;
  switch(*v0)
  {
    case 1:
      result = 1752461154;
      break;
    case 2:
      result = 1701670771;
      break;
    case 3:
      result = 7105633;
      break;
    case 4:
      result = 0x747065637865;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_268BF575C@<X0>(uint64_t *a1@<X8>)
{
  result = DeviceQuantifier.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t FromEntity.value.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

SiriPlaybackControlSupport::FromEntity __swiftcall FromEntity.init(entityType:value:)(SiriPlaybackControlSupport::FromEntity::FromEntityType entityType, Swift::String value)
{
  *v2 = *entityType;
  *(v2 + 8) = value;
  result.value = value;
  result.type = entityType;
  return result;
}

SiriPlaybackControlSupport::FromEntity::FromEntityType_optional __swiftcall FromEntity.FromEntityType.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_8_9();
  sub_268C1615C();
  result.value = OUTLINED_FUNCTION_18_5();
  v4 = 6;
  if (v2 < 6)
  {
    v4 = v2;
  }

  *v1 = v4;
  return result;
}

void FromEntity.FromEntityType.rawValue.getter()
{
  switch(*v0)
  {
    case 2:
    case 3:
    case 4:
    case 5:
      return;
    default:
      OUTLINED_FUNCTION_15_5();
      break;
  }
}

void sub_268BF5944(unint64_t *a1@<X8>)
{
  FromEntity.FromEntityType.rawValue.getter();
  *a1 = v2;
  a1[1] = v3;
}

SiriPlaybackControlSupport::Reference_optional __swiftcall Reference.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_8_9();
  sub_268C1615C();
  result.value = OUTLINED_FUNCTION_18_5();
  v4 = 5;
  if (v2 < 5)
  {
    v4 = v2;
  }

  *v1 = v4;
  return result;
}

uint64_t sub_268BF5A04@<X0>(uint64_t *a1@<X8>)
{
  result = Reference.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t MediaSettingName.init(rawValue:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_8_9();
  sub_268C1615C();
  result = OUTLINED_FUNCTION_18_5();
  *v2 = v3 != 0;
  return result;
}

uint64_t sub_268BF5B34()
{
  swift_arrayDestroy();

  return MEMORY[0x2821FE8D8](v0);
}

unint64_t sub_268BF5BC0()
{
  result = qword_2802CE628;
  if (!qword_2802CE628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802CE628);
  }

  return result;
}

unint64_t sub_268BF5C48()
{
  result = qword_2802CE640;
  if (!qword_2802CE640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802CE640);
  }

  return result;
}

unint64_t sub_268BF5CD0()
{
  result = qword_2802CE658;
  if (!qword_2802CE658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802CE658);
  }

  return result;
}

unint64_t sub_268BF5D58()
{
  result = qword_2802CE670;
  if (!qword_2802CE670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802CE670);
  }

  return result;
}

unint64_t sub_268BF5DE0()
{
  result = qword_2802CE688;
  if (!qword_2802CE688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802CE688);
  }

  return result;
}

unint64_t sub_268BF5E68()
{
  result = qword_2802CE6A0;
  if (!qword_2802CE6A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802CE6A0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DeviceType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF5)
  {
    if (a2 + 11 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 11) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 12;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xC;
  v5 = v6 - 12;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for DeviceType(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 11 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 11) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF5)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF4)
  {
    v6 = ((a2 - 245) >> 8) + 1;
    *result = a2 + 11;
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
        JUMPOUT(0x268BF6158);
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
          *result = a2 + 11;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PlaceHint(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xED)
  {
    if (a2 + 19 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 19) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 20;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x14;
  v5 = v6 - 20;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for PlaceHint(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 19 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 19) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xED)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xEC)
  {
    v6 = ((a2 - 237) >> 8) + 1;
    *result = a2 + 19;
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
        JUMPOUT(0x268BF62E0);
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
          *result = a2 + 19;
        }

        break;
    }
  }

  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_268BF633C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 16);
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

uint64_t sub_268BF637C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FromEntity.FromEntityType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFB)
  {
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

    v5 = (*a1 | (v4 << 8)) - 6;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v5 = v6 - 6;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for FromEntity.FromEntityType(_BYTE *result, unsigned int a2, unsigned int a3)
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
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x268BF651CLL);
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
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Features(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFC)
  {
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

    v5 = (*a1 | (v4 << 8)) - 5;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v5 = v6 - 5;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_268BF65D8(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
        JUMPOUT(0x268BF66A4);
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MRErrorEncoder(unsigned int *a1, int a2)
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

_BYTE *sub_268BF6748(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

  switch(v5)
  {
    case 1:
      *result = 0;
      break;
    case 2:
      *result = 0;
      break;
    case 3:
LABEL_19:
      __break(1u);
      JUMPOUT(0x268BF67E4);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_5_6()
{
  __swift_project_boxed_opaque_existential_1((v0 - 120), *(v0 - 96));

  return HomeAutomationEntity.description.getter();
}

unint64_t OUTLINED_FUNCTION_7_7(uint64_t a1, unint64_t a2)
{
  __swift_destroy_boxed_opaque_existential_0((v2 - 120));

  return sub_268BB3D28(a1, a2, (v2 - 128));
}

uint64_t OUTLINED_FUNCTION_10_8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{

  return sub_268C15C0C();
}

void OUTLINED_FUNCTION_12_5()
{
  __swift_destroy_boxed_opaque_existential_0(v0);

  JUMPOUT(0x26D628010);
}

void OUTLINED_FUNCTION_16_5()
{

  JUMPOUT(0x26D627230);
}

uint64_t OUTLINED_FUNCTION_17_6(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return sub_268C15C0C();
}

uint64_t OUTLINED_FUNCTION_18_5()
{
}

void OUTLINED_FUNCTION_19_6()
{

  JUMPOUT(0x26D627230);
}

double sub_268BF69E8()
{
  v3[1] = *MEMORY[0x277D85DE8];
  v3[0] = 0;
  mach_timebase_info(v3);
  LODWORD(v0) = v3[0].denom;
  LODWORD(v1) = v3[0].numer;
  return v1 / v0 / 1000000000.0;
}

uint64_t sub_268BF6D2C(uint64_t a1)
{
  v2 = MEMORY[0x277D84F90];
  *(v1 + 32) = 8;
  *(v1 + 40) = 0;
  *(v1 + 48) = 0;
  *(v1 + 56) = 4;
  *(v1 + 16) = v2;
  *(v1 + 24) = a1;
  return v1;
}

uint64_t sub_268BF6D54()
{
  sub_268C1606C();
  MEMORY[0x26D627230](0xD000000000000026, 0x8000000268C1C830);
  v0 = sub_268C1616C();
  MEMORY[0x26D627230](v0);

  OUTLINED_FUNCTION_0_6();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802CE6B8, &unk_268C19070);
  v1 = sub_268C15C0C();
  MEMORY[0x26D627230](v1);

  OUTLINED_FUNCTION_0_6();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802CE098, &qword_268C177C0);
  v2 = sub_268C15C0C();
  MEMORY[0x26D627230](v2);

  MEMORY[0x26D627230](0xD000000000000011, 0x8000000268C1C880);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802CE6C0, &unk_268C19080);
  v3 = sub_268C15C0C();
  MEMORY[0x26D627230](v3);

  MEMORY[0x26D627230](32032, 0xE200000000000000);
  return 0;
}

uint64_t sub_268BF6F10()
{

  return v0;
}

uint64_t sub_268BF6F38()
{
  sub_268BF6F10();

  return MEMORY[0x2821FE8D8](v0);
}

void OUTLINED_FUNCTION_0_6()
{

  JUMPOUT(0x26D627230);
}

uint64_t sub_268BF6FD4()
{
  result = sub_268C15B7C();
  qword_2802CE6C8 = result;
  return result;
}

uint64_t sub_268BF7038()
{
  result = sub_268C15B7C();
  qword_2802CE6D0 = result;
  return result;
}

uint64_t sub_268BF709C(void *a1, uint64_t *a2, uint64_t a3)
{
  if (*a1 != -1)
  {
    swift_once();
  }
}

uint64_t MRErrorEncoder.ResultError.errorDescription.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t MRErrorEncoder.ResultError.errorDescription.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t static MRErrorEncoder.createErrorRepresentationDomain(command:errorDescription:)(void *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (qword_2802CDBD0 != -1)
  {
    swift_once();
  }

  v8 = qword_2802CE6D0;

  v9 = sub_268BF7CD8(v8, a1, a2, sub_268BF8140, sub_268BF8140);
  sub_268BC31AC(v9);

  v10 = sub_268C1616C();
  v11 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v11 = a3 & 0xFFFFFFFFFFFFLL;
  }

  if (v11)
  {
    v12 = 47;
  }

  else
  {
    v12 = 0;
  }

  if (v11)
  {
    v13 = 0xE100000000000000;
  }

  else
  {
    v13 = 0xE000000000000000;
  }

  v15 = v10;

  MEMORY[0x26D627230](v12, v13);

  MEMORY[0x26D627230](a3, a4);

  return v15;
}

uint64_t static MRErrorEncoder.commandResultErrorWrapper(commandResult:error:)@<X0>(id a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v16 = 1;
  v13 = 0;
  v14 = 0xE000000000000000;
  v15 = 0;
  sub_268BF792C(a2, &v13, &v15);
  v6 = v13;
  v5 = v14;
  if (a1)
  {
    a1 = [a1 error];
  }

  v14 = 0xE000000000000000;
  v15 = 0;
  v16 = 1;
  v13 = 0;
  sub_268BF792C(a1, &v13, &v15);

  v7 = v14;
  if (v16)
  {
    v8 = -1;
  }

  else
  {
    v8 = v15;
  }

  v9 = v13;
  v13 = v6;
  v14 = v5;

  MEMORY[0x26D627230](v9, v7);

  v11 = v13;
  v12 = v14;
  *a3 = v8;
  a3[1] = v11;
  a3[2] = v12;
  return result;
}

uint64_t static MRErrorEncoder.generateCommandEncoding(commandResult:)(void *a1)
{
  v2 = sub_268C15A1C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v28 - v7;
  if (qword_2802CDBE0 != -1)
  {
    swift_once();
  }

  v9 = __swift_project_value_buffer(v2, qword_2802D2F10);
  v30 = *(v3 + 16);
  v30(v8, v9, v2);
  v10 = sub_268C159FC();
  v11 = sub_268C15DDC();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_268BAD000, v10, v11, "MRErrorEncoder#generateCommandEncoding", v12, 2u);
    OUTLINED_FUNCTION_1_9();
    MEMORY[0x26D628010]();
  }

  v13 = *(v3 + 8);
  v13(v8, v2);
  v14 = [a1 playerPath];
  v15 = [v14 origin];

  v16 = [objc_opt_self() deviceInfoForOrigin_];
  v32 = 0;
  v33 = 0xE000000000000000;
  if (!v15 || ([v15 isLocallyHosted] & 1) == 0)
  {
    switch([v16 clusterType])
    {
      case 0u:
        v17 = 20545;
        goto LABEL_12;
      case 1u:
        v17 = 20563;
        goto LABEL_12;
      case 2u:
        v17 = 21576;
        goto LABEL_12;
      case 3u:
        v17 = 16711;
LABEL_12:
        v18 = 0xE200000000000000;
        break;
      default:
        v17 = 4935253;
        v18 = 0xE300000000000000;
        break;
    }

    MEMORY[0x26D627230](v17, v18);
  }

  v29 = v16;
  v30(v5, v9, v2);
  v19 = v32;
  v20 = v33;

  v21 = sub_268C159FC();
  v22 = v5;
  v23 = sub_268C15DDC();

  if (os_log_type_enabled(v21, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v30 = v13;
    v31 = v25;
    v26 = v25;
    *v24 = 136315138;
    *(v24 + 4) = sub_268BB3D28(v19, v20, &v31);
    _os_log_impl(&dword_268BAD000, v21, v23, "MRErrorEncoder#generateCommandEncoding: %s", v24, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v26);
    OUTLINED_FUNCTION_1_9();
    MEMORY[0x26D628010]();
    OUTLINED_FUNCTION_1_9();
    MEMORY[0x26D628010]();

    (v30)(v22, v2);
  }

  else
  {

    v13(v22, v2);
  }

  return v19;
}

uint64_t static MRErrorEncoder.getStatusCode(commandResult:)(void *a1)
{
  if (!a1)
  {
    return 45;
  }

  v1 = [a1 resultStatuses];
  sub_268BF7EA4();
  v2 = sub_268C15D0C();

  if (sub_268BC4EF4(v2))
  {
    sub_268BC4F00();
    if ((v2 & 0xC000000000000001) != 0)
    {
      v3 = MEMORY[0x26D627640](0, v2);
    }

    else
    {
      v3 = *(v2 + 32);
    }

    v4 = v3;

    [v4 statusCode];

    return sub_268C1616C();
  }

  else
  {

    return 45;
  }
}

void sub_268BF792C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    v5 = sub_268C1523C();
    v6 = [v5 __msv_objectDescription];
    if (v6 && (v7 = v6, v8 = sub_268C15BFC(), v10 = v9, v7, v20 = v8, v21 = v10, v18 = 0xD000000000000014, v19 = 0x8000000268C1C8A0, sub_268BB9A64(), LOBYTE(v7) = sub_268C15F7C(), , (v7 & 1) != 0))
    {
    }

    else
    {
      v11 = sub_268BF7AD4(v5);
      MEMORY[0x26D627230](v11);

      if (*(a3 + 8) == 1)
      {
        *a3 = [v5 code];
        *(a3 + 8) = 0;
      }

      v12 = [v5 underlyingErrors];
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2802CE4E0, &qword_268C19100);
      v13 = sub_268C15D0C();

      v14 = *(v13 + 16);
      if (v14)
      {
        v15 = 32;
        do
        {
          v16 = *(v13 + v15);
          v17 = v16;
          sub_268BF792C(v16, a2, a3);

          v15 += 8;
          --v14;
        }

        while (v14);
      }
    }
  }
}

uint64_t sub_268BF7AD4(void *a1)
{
  [a1 code];
  v2 = sub_268C1616C();
  v4 = v3;
  v5 = [a1 domain];
  v6 = sub_268C15BFC();
  v8 = v7;

  if (qword_2802CDBC8 != -1)
  {
    swift_once();
  }

  v9 = qword_2802CE6C8;

  v10 = sub_268BF7CD8(v9, v6, v8, sub_268BF7FCC, sub_268BF7FCC);
  sub_268BC31AC(v10);

  v11 = sub_268C1616C();
  MEMORY[0x26D627230](v11);

  MEMORY[0x26D627230](8236, 0xE200000000000000);
  MEMORY[0x26D627230](v2, v4);

  MEMORY[0x26D627230](41, 0xE100000000000000);
  return 40;
}

uint64_t sub_268BF7C74(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = (a2 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v4 = vdupq_n_s64(a2 - 1);
    v5 = xmmword_268C16D40;
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

void *sub_268BF7CD8(uint64_t a1, void *a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void *, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v20[1] = *MEMORY[0x277D85DE8];
  v9 = *(a1 + 32);
  v10 = v9 & 0x3F;
  v11 = ((1 << v9) + 63) >> 6;
  v12 = swift_bridgeObjectRetain_n();
  if (v10 > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      swift_slowAlloc();

      OUTLINED_FUNCTION_0_7();
      a2 = sub_268BF829C(v15, v16, v17, v18, v19, a5);
      OUTLINED_FUNCTION_1_9();
      MEMORY[0x26D628010]();
      swift_bridgeObjectRelease_n();
      goto LABEL_6;
    }
  }

  MEMORY[0x28223BE20](v12);
  sub_268BF7C74(0, v11, v20 - ((8 * v11 + 15) & 0x3FFFFFFFFFFFFFF0));

  OUTLINED_FUNCTION_0_7();
  v13 = a4();
  if (v5)
  {
    swift_willThrow();
  }

  else
  {
    a2 = v13;
  }

  swift_bridgeObjectRelease_n();
LABEL_6:

  return a2;
}

unint64_t sub_268BF7EA4()
{
  result = qword_2802CE6D8;
  if (!qword_2802CE6D8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2802CE6D8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for MRErrorEncoder(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

  switch(v5)
  {
    case 1:
      *result = 0;
      break;
    case 2:
      *result = 0;
      break;
    case 3:
LABEL_19:
      __break(1u);
      JUMPOUT(0x268BF7F84);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_268BF7FCC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v19 = result;
  v20 = 0;
  v6 = 0;
  v7 = a3 + 64;
  v8 = 1 << *(a3 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a3 + 64);
  v11 = (v8 + 63) >> 6;
  while (v10)
  {
    v12 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_11:
    v15 = v12 | (v6 << 6);
    sub_268BB9A64();
    result = sub_268C15F7C();
    if (result)
    {
      *(v19 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      if (__OFADD__(v20++, 1))
      {
        __break(1u);
LABEL_15:
        v17 = sub_268BF8354(v19, a2, v20, a3);

        return v17;
      }
    }
  }

  v13 = v6;
  while (1)
  {
    v6 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v6 >= v11)
    {
      goto LABEL_15;
    }

    v14 = *(v7 + 8 * v6);
    ++v13;
    if (v14)
    {
      v12 = __clz(__rbit64(v14));
      v10 = (v14 - 1) & v14;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_268BF8140(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v24 = result;
  v8 = 0;
  v9 = 0;
  v10 = a3 + 64;
  v11 = 1 << *(a3 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(a3 + 64);
  v14 = (v11 + 63) >> 6;
  while (v13)
  {
    v15 = __clz(__rbit64(v13));
    v13 &= v13 - 1;
LABEL_11:
    v18 = v15 | (v9 << 6);
    v19 = (*(a3 + 48) + 16 * v18);
    if (*v19 != a4 || v19[1] != a5)
    {
      result = sub_268C1618C();
      if ((result & 1) == 0)
      {
        continue;
      }
    }

    *(v24 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
    if (__OFADD__(v8++, 1))
    {
      __break(1u);
LABEL_19:
      v22 = sub_268BF8354(v24, a2, v8, a3);

      return v22;
    }
  }

  v16 = v9;
  while (1)
  {
    v9 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v9 >= v14)
    {
      goto LABEL_19;
    }

    v17 = *(v10 + 8 * v9);
    ++v16;
    if (v17)
    {
      v15 = __clz(__rbit64(v17));
      v13 = (v17 - 1) & v17;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

void *sub_268BF829C(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void *, uint64_t, uint64_t, uint64_t, uint64_t))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v11 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    swift_bridgeObjectRetain_n();
    v12 = a6(v11, a2, a3, a4, a5);
    swift_bridgeObjectRelease_n();

    return v12;
  }

  return result;
}

uint64_t sub_268BF8354(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802CE6E0, &qword_268C19108);
  result = sub_268C1614C();
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
    v32 = *(v17 + 8 * v16);
    sub_268C1624C();

    sub_268C15C3C();
    result = sub_268C1626C();
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
    *(*(v9 + 56) + 8 * v24) = v32;
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

unint64_t sub_268BF8588(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802CE6E8, &unk_268C19110);
  result = sub_268C1614C();
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
  v19 = result + 64;
  while (v10)
  {
    v12 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v15 = v12 | (v11 << 6);
    v16 = *(*(v4 + 48) + 8 * v15);
    v17 = *(*(v4 + 56) + 8 * v15);
    sub_268C1624C();

    sub_268BF8744(__src, v16);
    sub_268C1626C();
    result = sub_268C15FEC();
    *(v19 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
    *(v9[6] + 8 * result) = v16;
    *(v9[7] + 8 * result) = v17;
    ++v9[2];
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_21;
    }

    if (!v5)
    {
      return v9;
    }
  }

  v13 = v11;
  while (1)
  {
    v11 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      return v9;
    }

    v14 = a1[v11];
    ++v13;
    if (v14)
    {
      v12 = __clz(__rbit64(v14));
      v10 = (v14 - 1) & v14;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_268BF8744(void *__src, uint64_t a2)
{
  memcpy(__dst, __src, sizeof(__dst));
  sub_268C1626C();
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

      return MEMORY[0x26D627820](v8);
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
        sub_268C1624C();

        sub_268C15C3C();
        v11 = sub_268C1626C();

        v8 ^= v11;
      }

      while (v5);
      continue;
    }
  }

  __break(1u);
  return result;
}

uint64_t static LanguageOption.autoLanguage(localizationProvider:locale:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v8 = 8;
  result = (*(v3 + 8))(&v8);
  v6 = 1869903169;
  if (v5)
  {
    v6 = result;
    v7 = v5;
  }

  else
  {
    v7 = 0xE400000000000000;
  }

  *a2 = 1869903201;
  *(a2 + 8) = 0xE400000000000000;
  *(a2 + 16) = 1869903201;
  *(a2 + 24) = 0xE400000000000000;
  *(a2 + 32) = v6;
  *(a2 + 40) = v7;
  *(a2 + 48) = MEMORY[0x277D84F90];
  *(a2 + 56) = 0;
  return result;
}

SiriPlaybackControlSupport::LanguageGroup_optional __swiftcall LanguageGroup.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_8_9();
  v2 = sub_268C1615C();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *v1 = v4;
  return result;
}

uint64_t LanguageGroup.rawValue.getter()
{
  if (*v0)
  {
    return 0x4F49445541;
  }

  else
  {
    return 0x454C544954425553;
  }
}

uint64_t sub_268BF8AC0@<X0>(uint64_t *a1@<X8>)
{
  result = LanguageGroup.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t PlaybackControllingError.description.getter()
{
  v1 = *v0;
  v2 = *v0 >> 62;
  if (!v2)
  {
    v4 = *(v1 + 16);
    v5 = *(v1 + 24);
    sub_268C1606C();

    OUTLINED_FUNCTION_22_5();
    v6 = 0xD000000000000016;
    goto LABEL_5;
  }

  if (v2 == 1)
  {
    v3 = v1 & 0x3FFFFFFFFFFFFFFFLL;
    v4 = *(v3 + 16);
    v5 = *(v3 + 24);
    sub_268C1606C();

    OUTLINED_FUNCTION_22_5();
    v6 = 0xD00000000000001CLL;
LABEL_5:
    v16 = v6;
    MEMORY[0x26D627230](v4, v5);
    MEMORY[0x26D627230](8236, 0xE200000000000000);
    v7 = PlaybackControllingError.description.getter();
    MEMORY[0x26D627230](v7);

    MEMORY[0x26D627230](41, 0xE100000000000000);
    return v16;
  }

  result = 0x6E776F6E6B6E75;
  switch(__ROR8__(v1 ^ 0x8000000000000000, 3))
  {
    case 1:
      OUTLINED_FUNCTION_0_8();
      result = v9 - 1;
      break;
    case 2:
      OUTLINED_FUNCTION_0_8();
      result = v11 + 2;
      break;
    case 3:
      OUTLINED_FUNCTION_0_8();
      result = v12 | 1;
      break;
    case 4:
      result = 0xD000000000000012;
      break;
    case 5:
      OUTLINED_FUNCTION_0_8();
      result = v14 + 10;
      break;
    case 6:
      OUTLINED_FUNCTION_0_8();
      result = v15 + 6;
      break;
    case 7:
      OUTLINED_FUNCTION_0_8();
      result = v13 | 8;
      break;
    case 8:
      result = 0xD000000000000012;
      break;
    case 9:
      result = 0x616C50776F4E6F6ELL;
      break;
    case 0xALL:
      result = 0x6E65746E6F436F6ELL;
      break;
    case 0xBLL:
      result = 0x726F7774654E6F6ELL;
      break;
    case 0xCLL:
      OUTLINED_FUNCTION_0_8();
      result = v10 + 3;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t static PlaybackControllingError.== infix(_:_:)()
{
  v0 = PlaybackControllingError.description.getter();
  v2 = v1;
  if (v0 == PlaybackControllingError.description.getter() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_268C1618C();
  }

  return v5 & 1;
}

uint64_t PlaybackControllingError.reason.getter()
{
  if ((*v0 >> 62) > 1)
  {
    OUTLINED_FUNCTION_16_6();
  }

  else
  {
  }

  return OUTLINED_FUNCTION_2_5();
}

uint64_t PlaybackControllingError.cmdID.getter()
{
  OUTLINED_FUNCTION_12_6();
  if (v0)
  {
  }

  else
  {
    OUTLINED_FUNCTION_16_6();
  }

  return OUTLINED_FUNCTION_2_5();
}

uint64_t PlaybackControllingError.playerPath.getter()
{
  OUTLINED_FUNCTION_12_6();
  if (v0)
  {
  }

  else
  {
    OUTLINED_FUNCTION_16_6();
  }

  return OUTLINED_FUNCTION_2_5();
}

uint64_t PlaybackControllingError.timestamp.getter()
{
  OUTLINED_FUNCTION_12_6();
  if (v0)
  {
  }

  else
  {
    OUTLINED_FUNCTION_16_6();
  }

  return OUTLINED_FUNCTION_2_5();
}

SiriPlaybackControlSupport::PlaybackControllingError::UserInfoKeys_optional __swiftcall PlaybackControllingError.UserInfoKeys.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_8_9();
  v2 = sub_268C1615C();

  v4 = 4;
  if (v2 < 4)
  {
    v4 = v2;
  }

  *v1 = v4;
  return result;
}

uint64_t PlaybackControllingError.UserInfoKeys.rawValue.getter()
{
  result = 0x726F727265;
  switch(*v0)
  {
    case 1:
      result = 0x4449646D63;
      break;
    case 2:
      result = 0x6150726579616C70;
      break;
    case 3:
      result = 0x6D617473656D6974;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_268BF9054@<X0>(uint64_t *a1@<X8>)
{
  result = PlaybackControllingError.UserInfoKeys.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t PlaybackControllingError.UserInfo.cmdID.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t PlaybackControllingError.UserInfo.playerPath.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t PlaybackControllingError.UserInfo.timestamp.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

void sub_268BF9214(unint64_t a1@<X0>, unint64_t *a2@<X8>)
{
  if (a1 >> 62)
  {
    v4 = sub_268C1613C();
  }

  else
  {
    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = 0x8000000000000008;
  if (v4)
  {
    sub_268BC4F00();
    if ((a1 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x26D627640](0, a1);
    }

    else
    {
      v6 = *(a1 + 32);
    }

    v7 = v6;
    v8 = [v6 unsignedIntValue];

    if (v8 == 100)
    {
      v5 = 0x8000000000000010;
    }

    else if (v8 != 108)
    {
      if (v8 == 107)
      {
        v5 = 0x8000000000000028;
      }

      else
      {
        v5 = 0x8000000000000000;
      }
    }
  }

  else
  {
    v5 = 0x8000000000000020;
  }

  *a2 = v5;
}

unint64_t static PlaybackControllingError.flattenPlaybackControllingError(pce:)@<X0>(unint64_t *a1@<X0>, unint64_t *a2@<X8>)
{
  v2 = *a1;
  if (!(v2 >> 62))
  {
    v3 = 32;
    goto LABEL_5;
  }

  if (v2 >> 62 == 1)
  {
    v2 &= 0x3FFFFFFFFFFFFFFFuLL;
    v3 = 80;
LABEL_5:
    v2 = *(v2 + v3);
  }

  *a2 = v2;
  return sub_268BB99C0(v2);
}

id static PlaybackControllingError.createUserActivityForResult<A>(result:fallbackError:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_268BD8218();
  v7 = sub_268C1627C();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = (v30 - v10);
  (*(v8 + 16))(v30 - v10, a1, v7, v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = *v11;
    v13 = *v11 >> 62;
    if (v13 == 1)
    {
      v20 = *((v12 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v21 = *((v12 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
      v18 = *((v12 & 0x3FFFFFFFFFFFFFFFLL) + 0x20);
      v19 = *((v12 & 0x3FFFFFFFFFFFFFFFLL) + 0x28);
      v16 = *((v12 & 0x3FFFFFFFFFFFFFFFLL) + 0x30);
      v17 = *((v12 & 0x3FFFFFFFFFFFFFFFLL) + 0x38);
      v14 = *((v12 & 0x3FFFFFFFFFFFFFFFLL) + 0x40);
      v23 = *((v12 & 0x3FFFFFFFFFFFFFFFLL) + 0x48);

      v15 = v23;
      goto LABEL_8;
    }

    if (!v13)
    {
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v17 = 0;
      v18 = 0;
      v19 = 0;
      v20 = *(v12 + 16);
      v21 = *(v12 + 24);
LABEL_8:

      v22 = static PlaybackControllingError.createUserActivityForErrorReason(errorReason:cmdID:playerPath:timestamp:)(v20, v21, v18, v19, v16, v17, v14, v15);

      sub_268BB99A4(v12);

      return v22;
    }

    if (a3)
    {
      sub_268BF98F0();
      v22 = OUTLINED_FUNCTION_5_7();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802CE108, &unk_268C19120);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_268C172B0;
      OUTLINED_FUNCTION_3_9();
      v30[1] = v25;
      v30[2] = v26;
      v27 = MEMORY[0x277D837D0];
      sub_268C1601C();
      *(inited + 96) = v27;
      *(inited + 72) = a2;
      *(inited + 80) = a3;

      v28 = sub_268C15B7C();
      sub_268BFA71C(v28, v22);
      sub_268BB99A4(v12);
      return v22;
    }

    sub_268BB99A4(*v11);
  }

  else
  {
    (*(v8 + 8))(v11, v7);
  }

  return 0;
}

id static PlaybackControllingError.createUserActivityForErrorReason(errorReason:cmdID:playerPath:timestamp:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v90 = a7;
  sub_268BF98F0();
  v15 = OUTLINED_FUNCTION_5_7();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802CE108, &unk_268C19120);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_268C172B0;
  OUTLINED_FUNCTION_3_9();
  v93 = v17;
  v94 = v18;
  v19 = MEMORY[0x277D837D0];
  sub_268C1601C();
  *(inited + 96) = v19;
  *(inited + 72) = a1;
  *(inited + 80) = a2;

  v20 = sub_268C15B7C();
  sub_268BFA71C(v20, v15);
  if (a4)
  {

    v102 = sub_268BFA79C(v15);
    if (v102)
    {
      v101 = v19;
      v98 = a3;
      v99 = a4;
      OUTLINED_FUNCTION_20_4();
      v91 = v21;
      v92 = v22;
      v27 = OUTLINED_FUNCTION_15_6(v23, v24, MEMORY[0x277D837E0], v25, v26);
      OUTLINED_FUNCTION_6_10(v27, v28, v29, v30);
      sub_268BDAE1C(&v93);
      sub_268BE07E8(&v103);
      if (v102)
      {
        v31 = sub_268C15B4C();
      }

      else
      {
        v31 = 0;
      }

      v42 = OUTLINED_FUNCTION_9_7();
      [v42 v43];
    }

    else
    {

      v32 = OUTLINED_FUNCTION_9_7();
      v34 = [v32 v33];
      OUTLINED_FUNCTION_14_4(v34, v35, v36, v37, v38, v39, v40, v41, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, 0, v103, v104);
    }
  }

  if (a6)
  {

    v102 = sub_268BFA79C(v15);
    if (v102)
    {
      v101 = v19;
      v98 = a5;
      v99 = a6;
      OUTLINED_FUNCTION_8_10();
      v91 = v44;
      v92 = v45;
      v50 = OUTLINED_FUNCTION_15_6(v46, v47, MEMORY[0x277D837E0], v48, v49);
      OUTLINED_FUNCTION_6_10(v50, v51, v52, v53);
      sub_268BDAE1C(&v93);
      sub_268BE07E8(&v103);
      if (v102)
      {
        v54 = sub_268C15B4C();
      }

      else
      {
        v54 = 0;
      }

      v65 = OUTLINED_FUNCTION_9_7();
      [v65 v66];
    }

    else
    {

      v55 = OUTLINED_FUNCTION_9_7();
      v57 = [v55 v56];
      OUTLINED_FUNCTION_14_4(v57, v58, v59, v60, v61, v62, v63, v64, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104);
    }
  }

  if (a8)
  {

    v102 = sub_268BFA79C(v15);
    if (v102)
    {
      v101 = v19;
      v98 = v90;
      v99 = a8;
      OUTLINED_FUNCTION_10_9();
      v71 = OUTLINED_FUNCTION_15_6(v67, v68, MEMORY[0x277D837E0], v69, v70);
      OUTLINED_FUNCTION_6_10(v71, v72, v73, v74);
      sub_268BDAE1C(&v93);
      sub_268BE07E8(&v103);
      if (v102)
      {
        v75 = sub_268C15B4C();
      }

      else
      {
        v75 = 0;
      }

      v86 = OUTLINED_FUNCTION_9_7();
      [v86 v87];
    }

    else
    {

      v76 = OUTLINED_FUNCTION_9_7();
      v78 = [v76 v77];
      OUTLINED_FUNCTION_14_4(v78, v79, v80, v81, v82, v83, v84, v85, v89, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101, v102, v103, v104);
    }
  }

  return v15;
}

unint64_t sub_268BF98F0()
{
  result = qword_2802CE6F8;
  if (!qword_2802CE6F8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2802CE6F8);
  }

  return result;
}

id sub_268BF9934(uint64_t a1, uint64_t a2)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = sub_268C15BEC();

  v4 = [v2 initWithActivityType_];

  return v4;
}

uint64_t static PlaybackControllingError.checkIntentReponseForErrorDescription(intentResponse:)(void *a1)
{
  v1 = [a1 userActivity];
  if (!v1 || (v2 = sub_268BFA808(v1)) == 0)
  {
    OUTLINED_FUNCTION_17_7();
    goto LABEL_9;
  }

  v3 = v2;
  OUTLINED_FUNCTION_3_9();
  v28[0] = v4;
  v28[1] = v5;
  v12 = OUTLINED_FUNCTION_23_5(v6, MEMORY[0x277D837D0], MEMORY[0x277D837E0], v7, v8, v9, v10, v11, v25);
  v20 = OUTLINED_FUNCTION_21_4(v12, v13, v14, v15, v16, v17, v18, v19, v26, v27[0]);
  sub_268C0F2AC(v20, v3, v21);

  sub_268BDAE1C(v27);
  if (!v28[3])
  {
LABEL_9:
    sub_268BE07E8(v28);
    return 0;
  }

  swift_dynamicCast();
  OUTLINED_FUNCTION_19_7();
  if (v23)
  {
    return 0;
  }

  else
  {
    return v22;
  }
}

void static PlaybackControllingError.checkIntentReponseForFullErrorDescription(intentResponse:)(void *a1@<X0>, void *a2@<X8>)
{
  v4 = [a1 userActivity];
  if (!v4 || (v5 = sub_268BFA808(v4)) == 0)
  {
    OUTLINED_FUNCTION_17_7();
    goto LABEL_11;
  }

  v6 = v5;
  OUTLINED_FUNCTION_20_4();
  v97 = v7;
  v98 = v8;
  v15 = OUTLINED_FUNCTION_23_5(v9, MEMORY[0x277D837D0], MEMORY[0x277D837E0], v10, v11, v12, v13, v14, v92);
  v23 = OUTLINED_FUNCTION_21_4(v15, v16, v17, v18, v19, v20, v21, v22, v93, v96[0]);
  sub_268C0F2AC(v23, v6, v24);

  v25 = sub_268BDAE1C(v96);
  if (!v99)
  {
LABEL_11:
    sub_268BE07E8(&v97);
    v32 = 0;
    v33 = 0;
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_7_8(v25, v26, v27, MEMORY[0x277D837D0], v28);
  OUTLINED_FUNCTION_19_7();
  if (v29)
  {
    v32 = 0;
  }

  else
  {
    v32 = v30;
  }

  if (v29)
  {
    v33 = 0;
  }

  else
  {
    v33 = v31;
  }

LABEL_12:
  v34 = [a1 userActivity];
  if (!v34 || (v35 = sub_268BFA808(v34)) == 0)
  {
    OUTLINED_FUNCTION_17_7();
    goto LABEL_22;
  }

  v36 = v35;
  OUTLINED_FUNCTION_8_10();
  v97 = v37;
  v98 = v38;
  v45 = OUTLINED_FUNCTION_23_5(v39, MEMORY[0x277D837D0], MEMORY[0x277D837E0], v40, v41, v42, v43, v44, v92);
  v53 = OUTLINED_FUNCTION_21_4(v45, v46, v47, v48, v49, v50, v51, v52, v94, v96[0]);
  sub_268C0F2AC(v53, v36, v54);

  v55 = sub_268BDAE1C(v96);
  if (!v99)
  {
LABEL_22:
    sub_268BE07E8(&v97);
    v62 = 0;
    v63 = 0;
    goto LABEL_23;
  }

  OUTLINED_FUNCTION_7_8(v55, v56, v57, MEMORY[0x277D837D0], v58);
  OUTLINED_FUNCTION_19_7();
  if (v59)
  {
    v62 = 0;
  }

  else
  {
    v62 = v60;
  }

  if (v59)
  {
    v63 = 0;
  }

  else
  {
    v63 = v61;
  }

LABEL_23:
  v64 = [a1 userActivity];
  if (!v64 || (v65 = sub_268BFA808(v64)) == 0)
  {
    OUTLINED_FUNCTION_17_7();
    goto LABEL_33;
  }

  v66 = v65;
  OUTLINED_FUNCTION_10_9();
  v97 = v67;
  v98 = v68;
  v75 = OUTLINED_FUNCTION_23_5(v69, MEMORY[0x277D837D0], MEMORY[0x277D837E0], v70, v71, v72, v73, v74, v92);
  v83 = OUTLINED_FUNCTION_21_4(v75, v76, v77, v78, v79, v80, v81, v82, v95, v96[0]);
  sub_268C0F2AC(v83, v66, v84);

  v85 = sub_268BDAE1C(v96);
  if (!v99)
  {
LABEL_33:
    sub_268BE07E8(&v97);
    v90 = 0;
    v91 = 0;
    goto LABEL_34;
  }

  OUTLINED_FUNCTION_7_8(v85, v86, v87, MEMORY[0x277D837D0], v88);
  OUTLINED_FUNCTION_19_7();
  if (v89)
  {
    v90 = 0;
  }

  if (v89)
  {
    v91 = 0;
  }

LABEL_34:
  *a2 = v32;
  a2[1] = v33;
  a2[2] = v62;
  a2[3] = v63;
  a2[4] = v90;
  a2[5] = v91;
}

uint64_t static PlaybackControllingError.checkIntentReponseForErrorDescriptionOrCode(intentResponse:errorCode:)(void *a1, uint64_t a2, uint64_t a3)
{
  static PlaybackControllingError.checkIntentReponseForErrorDescription(intentResponse:)(a1);
  if (v4)
  {
    sub_268BB9A64();
    v5 = sub_268C15F3C();

    v6 = sub_268BF9D4C(v5);
    v8 = v7;

    if (v8)
    {
      return v6;
    }
  }

  return a2;
}

uint64_t sub_268BF9D4C(uint64_t a1)
{
  v3 = *(a1 + 16);
  v1 = a1 + 16;
  v2 = v3;
  if (!v3)
  {
    return 0;
  }

  v4 = *(v1 + 16 * v2);

  return v4;
}

uint64_t sub_268BF9D94(uint64_t a1)
{
  if (*(a1 + 16))
  {
  }

  else
  {
    return 0;
  }
}

uint64_t sub_268BF9DC8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    return *(a1 + 8 * v1 + 24);
  }

  else
  {
    return 0;
  }
}

uint64_t LanguageOption.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[6];
  v8 = *(v0 + 56);
  sub_268C1606C();
  OUTLINED_FUNCTION_18_6();
  MEMORY[0x26D627230](0xD000000000000018);
  MEMORY[0x26D627230](v5, v6);
  MEMORY[0x26D627230](0x203A676174202CLL, 0xE700000000000000);
  MEMORY[0x26D627230](v3, v4);
  MEMORY[0x26D627230](0x203A6469202CLL, 0xE600000000000000);
  MEMORY[0x26D627230](v1, v2);
  OUTLINED_FUNCTION_18_6();
  MEMORY[0x26D627230]();
  v9 = MEMORY[0x26D6272E0](v7, MEMORY[0x277D837D0]);
  MEMORY[0x26D627230](v9);

  MEMORY[0x26D627230](0x697463417369202CLL, 0xEC000000203A6576);
  if (v8)
  {
    v10 = 1702195828;
  }

  else
  {
    v10 = 0x65736C6166;
  }

  if (v8)
  {
    v11 = 0xE400000000000000;
  }

  else
  {
    v11 = 0xE500000000000000;
  }

  MEMORY[0x26D627230](v10, v11);

  MEMORY[0x26D627230](32032, 0xE200000000000000);
  return 0;
}

uint64_t static LanguageOption.== infix(_:_:)(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_268C1618C();
  }
}

Swift::Bool __swiftcall LanguageOption.matches(language:characteristic:)(Swift::String language, SiriPlaybackControlSupport::LanguageCharacteristic_optional characteristic)
{
  v3 = *characteristic.value;
  v4 = v2[3];
  v5 = v2[6];
  v17 = v2[2];
  v18 = v4;
  v16 = language;
  sub_268BB9A64();
  if (sub_268C15F6C())
  {
    v6 = 1;
    switch(v3)
    {
      case 2:
LABEL_5:

        goto LABEL_7;
      case 4:
        return v6;
      default:
        v7 = sub_268C1618C();

        if (v7)
        {
LABEL_7:
          OUTLINED_FUNCTION_22_5();
          v17 = 0xD00000000000002ELL;
          v18 = v9;
          MEMORY[0x28223BE20](v10);
          v15 = &v17;
          if (!sub_268BC48EC(sub_268BC4C7C, v14, v5))
          {
            return 0;
          }

          OUTLINED_FUNCTION_22_5();
          v17 = 0xD00000000000002ELL;
          v18 = v11;
          MEMORY[0x28223BE20](v12);
          v15 = &v17;
          v6 = sub_268BC48EC(sub_268BFB5B0, v14, v5);
        }

        else
        {
          switch(v3)
          {
            case 1:
              goto LABEL_5;
            default:
              v8 = sub_268C1618C();

              if (v8)
              {
                goto LABEL_7;
              }

              v6 = 1;
              break;
          }
        }

        break;
    }
  }

  else
  {
    return 0;
  }

  return v6;
}

uint64_t DurationInfo.description.getter()
{
  sub_268C1606C();
  OUTLINED_FUNCTION_18_6();
  MEMORY[0x26D627230]();
  sub_268C15D9C();
  OUTLINED_FUNCTION_18_6();
  MEMORY[0x26D627230](0xD000000000000013);
  sub_268C15D9C();
  MEMORY[0x26D627230](32032, 0xE200000000000000);
  return 0;
}

uint64_t ShuffleMode.hashValue.getter()
{
  v1 = *v0;
  sub_268C1624C();
  MEMORY[0x26D627820](v1);
  return sub_268C1626C();
}

uint64_t sub_268BFA488()
{
  v1 = *v0;
  sub_268C1624C();
  MEMORY[0x26D627820](v1);
  return sub_268C1626C();
}

uint64_t sub_268BFA518()
{
  v1 = *v0;
  sub_268C1624C();
  MEMORY[0x26D627820](v1);
  return sub_268C1626C();
}

SiriPlaybackControlSupport::LanguageCharacteristic_optional __swiftcall LanguageCharacteristic.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_8_9();
  v2 = sub_268C1615C();

  v4 = 4;
  if (v2 < 4)
  {
    v4 = v2;
  }

  *v1 = v4;
  return result;
}

uint64_t LanguageCharacteristic.rawValue.getter()
{
  result = 0x746C7561666564;
  switch(*v0)
  {
    case 1:
      result = 6841459;
      break;
    case 2:
      result = 25443;
      break;
    case 3:
      result = 25697;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_268BFA65C@<X0>(uint64_t *a1@<X8>)
{
  result = LanguageCharacteristic.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_268BFA684()
{
  result = sub_268C15B7C();
  qword_2802CE6F0 = result;
  return result;
}

uint64_t systemLanguageRegionToLanguageTagMap.getter()
{
  if (qword_2802CDBD8 != -1)
  {
    swift_once();
  }
}

void sub_268BFA71C(uint64_t a1, void *a2)
{
  v3 = sub_268C15B4C();

  [a2 setUserInfo_];
}

uint64_t sub_268BFA79C(void *a1)
{
  v1 = [a1 userInfo];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_268C15B5C();

  return v3;
}

uint64_t sub_268BFA808(void *a1)
{
  v2 = [a1 userInfo];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_268C15B5C();

  return v3;
}

unint64_t sub_268BFA884()
{
  result = qword_2802CE700;
  if (!qword_2802CE700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802CE700);
  }

  return result;
}

unint64_t sub_268BFA8DC()
{
  result = qword_2802CE708;
  if (!qword_2802CE708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802CE708);
  }

  return result;
}

unint64_t sub_268BFA934()
{
  result = qword_2802CE710;
  if (!qword_2802CE710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802CE710);
  }

  return result;
}

unint64_t sub_268BFA98C()
{
  result = qword_2802CE718;
  if (!qword_2802CE718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802CE718);
  }

  return result;
}

unint64_t sub_268BFA9E4()
{
  result = qword_2802CE720;
  if (!qword_2802CE720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802CE720);
  }

  return result;
}

unint64_t sub_268BFAA3C()
{
  result = qword_2802CE728;
  if (!qword_2802CE728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802CE728);
  }

  return result;
}

unint64_t sub_268BFAA94()
{
  result = qword_2802CE730;
  if (!qword_2802CE730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802CE730);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_26SiriPlaybackControlSupport13LanguageErrorO(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_268BFADBC(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFFA && *(a1 + 8))
  {
    return (*a1 + 2147483643);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 4;
  if (v4 >= 6)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_268BFAE14(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFB)
  {
    *result = 0;
    *result = a2 - 2147483643;
    if (a3 >= 0x7FFFFFFB)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFB)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 4;
    }
  }

  return result;
}

void *sub_268BFAE64(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

unint64_t get_enum_tag_for_layout_string_26SiriPlaybackControlSupport0B16ControllingErrorO(unint64_t *a1)
{
  if ((*a1 & 0x8000000000000000) == 0)
  {
    return *a1 >> 62;
  }

  else
  {
    return (*a1 >> 3) + 2;
  }
}

uint64_t sub_268BFAEAC(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7E && *(a1 + 8))
    {
      v2 = *a1 + 125;
    }

    else
    {
      v2 = (((*a1 >> 57) >> 5) | (4 * ((*a1 >> 57) & 0x18 | *a1 & 7))) ^ 0x7F;
      if (v2 >= 0x7D)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return v2 + 1;
}

uint64_t sub_268BFAF00(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7D)
  {
    *result = a2 - 126;
    if (a3 >= 0x7E)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7E)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 2) & 0x1F | (32 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

unint64_t *sub_268BFAF60(unint64_t *result, uint64_t a2)
{
  if (a2 < 2)
  {
    v2 = *result & 0xFFFFFFFFFFFFFF8 | (a2 << 62);
  }

  else
  {
    v2 = (8 * (a2 - 2)) | 0x8000000000000000;
  }

  *result = v2;
  return result;
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

uint64_t sub_268BFAFBC(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 48))
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

uint64_t sub_268BFB010(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 8) = a2;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for VolumeControllingError(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x268BFB148);
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

__n128 __swift_memcpy57_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_268BFB198(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 57))
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

uint64_t sub_268BFB1D8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 57) = 1;
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

    *(result + 57) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DurationInfo(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for DurationInfo(uint64_t result, int a2, int a3)
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

_BYTE *sub_268BFB290(_BYTE *result, unsigned int a2, unsigned int a3)
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
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x268BFB358);
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
          result = OUTLINED_FUNCTION_13_6(result, a2 + 1);
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PlaybackState(_BYTE *result, unsigned int a2, unsigned int a3)
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
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x268BFB46CLL);
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
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_268BFB4A0(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
        JUMPOUT(0x268BFB568);
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
          result = OUTLINED_FUNCTION_13_6(result, a2 + 3);
        }

        break;
    }
  }

  return result;
}

id OUTLINED_FUNCTION_5_7()
{

  return sub_268BF9934(0x726F727245435053, 0xED0000736D6D6F43);
}

_OWORD *OUTLINED_FUNCTION_6_10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{

  return sub_268C0F744(v7, &v6, &v8);
}

uint64_t OUTLINED_FUNCTION_7_8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_14_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, __int128 a23, __int128 a24)
{
  a23 = 0u;
  a24 = 0u;

  return sub_268BE07E8(&a23);
}

uint64_t OUTLINED_FUNCTION_15_6(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{

  return sub_268C1601C();
}

uint64_t OUTLINED_FUNCTION_23_5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{

  return sub_268C1601C();
}

void sub_268BFB7BC(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

uint64_t Accessory.description.getter()
{
  v3 = 0x3E6C696E3CLL;
  v4 = *v0;
  sub_268C1606C();
  MEMORY[0x26D627230](0xD000000000000012, 0x8000000268C1CAF0);
  v5 = [v4 name];
  sub_268C15BFC();
  OUTLINED_FUNCTION_14_5();

  MEMORY[0x26D627230](v1, v2);

  v6 = OUTLINED_FUNCTION_5_8();
  MEMORY[0x26D627230](v6);
  v7 = [v4 deviceIdentifier];
  sub_268C15BFC();
  OUTLINED_FUNCTION_14_5();

  MEMORY[0x26D627230](v1, v2);

  MEMORY[0x26D627230](0xD000000000000019, 0x8000000268C1CB10);
  Accessory.mediaSystemIdentifier.getter();
  if (v9)
  {
    v10 = v9;
  }

  else
  {
    v8 = 0x3E6C696E3CLL;
    v10 = 0xE500000000000000;
  }

  MEMORY[0x26D627230](v8, v10);

  OUTLINED_FUNCTION_10_10();
  Accessory.type.getter();
  DeviceCategory.init(homekitType:)(v11);
  if (v32)
  {
    v12 = 0xE500000000000000;
    v13 = 0x3E6C696E3CLL;
  }

  else
  {
    v13 = DeviceCategory.description.getter();
    v12 = v14;
  }

  MEMORY[0x26D627230](v13, v12);

  MEMORY[0x26D627230](0x656469537369202CLL, 0xEE00203A6B63694BLL);
  v15 = [v4 siriEndpointProfile];
  if (v15)
  {

    v16 = 0xE400000000000000;
    v17 = 1702195828;
  }

  else
  {
    v16 = 0xE500000000000000;
    v17 = 0x65736C6166;
  }

  MEMORY[0x26D627230](v17, v16);

  OUTLINED_FUNCTION_10_10();
  v18 = [v4 room];
  if (v18)
  {
    v19 = v18;
    v20 = Room.description.getter();
    v22 = v21;
  }

  else
  {
    v22 = 0xE500000000000000;
    v20 = 0x3E6C696E3CLL;
  }

  MEMORY[0x26D627230](v20, v22);

  OUTLINED_FUNCTION_10_10();
  v23 = [v4 home];
  if (v23)
  {
    v24 = v23;
    v3 = Home.description.getter();
    v26 = v25;
  }

  else
  {
    v26 = 0xE500000000000000;
  }

  MEMORY[0x26D627230](v3, v26);

  MEMORY[0x26D627230](0xD000000000000018, 0x8000000268C1CB30);
  v27 = [v4 supportsNativeMatter];
  v28 = v27 == 0;
  if (v27)
  {
    v29 = 1702195828;
  }

  else
  {
    v29 = 0x65736C6166;
  }

  if (v28)
  {
    v30 = 0xE500000000000000;
  }

  else
  {
    v30 = 0xE400000000000000;
  }

  MEMORY[0x26D627230](v29, v30);

  MEMORY[0x26D627230](32032, 0xE200000000000000);
  return 0;
}

void Home.rooms.getter()
{
  OUTLINED_FUNCTION_31_0();
  v1 = *v0;
  v2 = [v1 rooms];
  sub_268BB9B44(0, &qword_2802CE738, 0x277CD1D88);
  v3 = sub_268C15D0C();

  v4 = sub_268BC4EF4(v3);
  v5 = 0;
  v6 = MEMORY[0x277D84F90];
  while (v4 != v5)
  {
    if ((v3 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x26D627640](v5, v3);
    }

    else
    {
      if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_20;
      }

      v7 = *(v3 + 8 * v5 + 32);
    }

    v8 = v7;
    if (__OFADD__(v5, 1))
    {
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      OUTLINED_FUNCTION_11_6();
      v6 = v16;
      goto LABEL_15;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_11_6();
      v6 = v11;
    }

    v10 = *(v6 + 16);
    v9 = *(v6 + 24);
    if (v10 >= v9 >> 1)
    {
      sub_268BB3578(v9 > 1, v10 + 1, 1, v6);
      v6 = v12;
    }

    *(v6 + 16) = v10 + 1;
    *(v6 + 8 * v10 + 32) = v8;
    ++v5;
  }

  v13 = [v1 roomForEntireHome];
  if (!v13)
  {
    goto LABEL_18;
  }

  v1 = v13;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_21;
  }

LABEL_15:
  v15 = *(v6 + 16);
  v14 = *(v6 + 24);
  if (v15 >= v14 >> 1)
  {
    sub_268BB3578(v14 > 1, v15 + 1, 1, v6);
    v6 = v17;
  }

  *(v6 + 16) = v15 + 1;
  *(v6 + 8 * v15 + 32) = v1;
LABEL_18:
  OUTLINED_FUNCTION_32_0();
}

void Home.zones.getter()
{
  OUTLINED_FUNCTION_31_0();
  v4 = [*v0 zones];
  v5 = sub_268BB9B44(0, &qword_2802CE740, 0x277CD1F50);
  v6 = OUTLINED_FUNCTION_15_7(v5);

  sub_268BC4EF4(v6);
  OUTLINED_FUNCTION_4_9();
  while (1)
  {
    if (v4 == v1)
    {

      OUTLINED_FUNCTION_32_0();
      return;
    }

    if (v2)
    {
      v9 = OUTLINED_FUNCTION_15();
      MEMORY[0x26D627640](v9);
    }

    else
    {
      if (v1 >= *(v3 + 16))
      {
        goto LABEL_15;
      }

      v7 = *(v6 + 8 * v1 + 32);
    }

    if (__OFADD__(v1, 1))
    {
      break;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v10 = OUTLINED_FUNCTION_1_10();
      sub_268BB36F8(v10, v11, v12, v13);
    }

    OUTLINED_FUNCTION_7_9();
    if (v8)
    {
      OUTLINED_FUNCTION_6_11();
      sub_268BB36F8(v14, v15, v16, v17);
    }

    OUTLINED_FUNCTION_2_9();
  }

  __break(1u);
LABEL_15:
  __break(1u);
}

uint64_t Home.users.getter()
{
  v1 = [*v0 users];
  sub_268BB9B44(0, &qword_2802CE748, 0x277CD1EE0);
  v2 = sub_268C15D0C();

  v3 = sub_268BC4EF4(v2);

  result = v3 + 1;
  if (__OFADD__(v3, 1))
  {
    __break(1u);
  }

  return result;
}

id Home.homeKitHome.getter()
{
  v1 = *v0;
  v2 = *v0;
  return v1;
}

void _s26SiriPlaybackControlSupport4HomeV11accessoriesSayAA9AccessoryVGvg_0()
{
  OUTLINED_FUNCTION_31_0();
  v4 = [*v0 accessories];
  v5 = sub_268BB9B44(0, &qword_2802CE528, 0x277CD1650);
  v6 = OUTLINED_FUNCTION_15_7(v5);

  sub_268BC4EF4(v6);
  OUTLINED_FUNCTION_4_9();
  while (1)
  {
    if (v4 == v1)
    {

      OUTLINED_FUNCTION_32_0();
      return;
    }

    if (v2)
    {
      v9 = OUTLINED_FUNCTION_15();
      MEMORY[0x26D627640](v9);
    }

    else
    {
      if (v1 >= *(v3 + 16))
      {
        goto LABEL_15;
      }

      v7 = *(v6 + 8 * v1 + 32);
    }

    if (__OFADD__(v1, 1))
    {
      break;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v10 = OUTLINED_FUNCTION_1_10();
      sub_268BB3594(v10, v11, v12, v13);
    }

    OUTLINED_FUNCTION_7_9();
    if (v8)
    {
      OUTLINED_FUNCTION_6_11();
      sub_268BB3594(v14, v15, v16, v17);
    }

    OUTLINED_FUNCTION_2_9();
  }

  __break(1u);
LABEL_15:
  __break(1u);
}

void Zone.rooms.getter()
{
  OUTLINED_FUNCTION_31_0();
  v4 = [*v0 rooms];
  v5 = sub_268BB9B44(0, &qword_2802CE738, 0x277CD1D88);
  v6 = OUTLINED_FUNCTION_15_7(v5);

  sub_268BC4EF4(v6);
  OUTLINED_FUNCTION_4_9();
  while (1)
  {
    if (v4 == v1)
    {

      OUTLINED_FUNCTION_32_0();
      return;
    }

    if (v2)
    {
      v9 = OUTLINED_FUNCTION_15();
      MEMORY[0x26D627640](v9);
    }

    else
    {
      if (v1 >= *(v3 + 16))
      {
        goto LABEL_15;
      }

      v7 = *(v6 + 8 * v1 + 32);
    }

    if (__OFADD__(v1, 1))
    {
      break;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v10 = OUTLINED_FUNCTION_1_10();
      sub_268BB3578(v10, v11, v12, v13);
    }

    OUTLINED_FUNCTION_7_9();
    if (v8)
    {
      OUTLINED_FUNCTION_6_11();
      sub_268BB3578(v14, v15, v16, v17);
    }

    OUTLINED_FUNCTION_2_9();
  }

  __break(1u);
LABEL_15:
  __break(1u);
}

uint64_t _s26SiriPlaybackControlSupport4HomeV10identifierSSvg_0()
{
  sub_268C1531C();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_15_0();
  v2 = [*v0 uniqueIdentifier];
  sub_268C152FC();

  v3 = sub_268C152EC();
  v4 = OUTLINED_FUNCTION_15();
  v5(v4);
  return v3;
}

uint64_t sub_268BFC2FC(uint64_t a1)
{
  sub_268C1531C();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_15_0();
  v4 = *v1;
  sub_268C1606C();

  v14 = a1;
  v5 = [v4 name];
  v6 = sub_268C15BFC();
  v8 = v7;

  MEMORY[0x26D627230](v6, v8);

  v9 = OUTLINED_FUNCTION_5_8();
  MEMORY[0x26D627230](v9);
  v10 = [v4 uniqueIdentifier];
  sub_268C152FC();

  sub_268C152EC();
  OUTLINED_FUNCTION_14_5();
  v11 = OUTLINED_FUNCTION_15();
  v12(v11);
  MEMORY[0x26D627230](v4, v6);

  MEMORY[0x26D627230](32032, 0xE200000000000000);
  return v14;
}

id Accessory.home.getter@<X0>(void *a1@<X8>)
{
  result = [*v1 home];
  *a1 = result;
  return result;
}

id Accessory.room.getter@<X0>(void *a1@<X8>)
{
  result = [*v1 room];
  *a1 = result;
  return result;
}

void Accessory.type.getter()
{
  v1 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2802CDCC8, &qword_268C17090);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_268C19970;
  *(inited + 32) = sub_268C15BFC();
  *(inited + 40) = v3;
  *(inited + 48) = sub_268C15BFC();
  *(inited + 56) = v4;
  *(inited + 64) = sub_268C15BFC();
  *(inited + 72) = v5;
  *(inited + 80) = sub_268C15BFC();
  *(inited + 88) = v6;
  *(inited + 96) = sub_268C15BFC();
  *(inited + 104) = v7;
  v8 = [v1 category];
  v9 = [v8 categoryType];

  v10 = sub_268C15BFC();
  v12 = v11;

  v23[0] = v10;
  v23[1] = v12;
  v22[2] = v23;
  LOBYTE(v10) = sub_268BC48EC(sub_268BC4C7C, v22, inited);
  swift_setDeallocating();
  sub_268BF5B34();

  if (v10)
  {
    v13 = [v1 category];
    v14 = [v13 categoryType];
LABEL_13:
    v21 = v14;

    sub_268C15BFC();
  }

  else
  {
    v15 = [v1 profiles];
    sub_268BB9B44(0, &qword_2802CE750, 0x277CD1760);
    v16 = sub_268C15D0C();

    v17 = sub_268BC4EF4(v16);
    for (i = 0; ; ++i)
    {
      if (v17 == i)
      {

        v13 = [v1 category];
        v14 = [v13 categoryType];
        goto LABEL_13;
      }

      if ((v16 & 0xC000000000000001) != 0)
      {
        v19 = MEMORY[0x26D627640](i, v16);
      }

      else
      {
        if (i >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_16;
        }

        v19 = *(v16 + 8 * i + 32);
      }

      v20 = v19;
      if (__OFADD__(i, 1))
      {
        break;
      }

      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {

        sub_268C15BFC();
        return;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }
}

uint64_t sub_268BFC800(SEL *a1)
{
  v2 = [*v1 *a1];
  v3 = sub_268C15BFC();

  return v3;
}

BOOL Accessory.isSideKick.getter()
{
  v1 = [*v0 siriEndpointProfile];
  v2 = v1;
  if (v1)
  {
  }

  return v2 != 0;
}

void Accessory.mediaSystemIdentifier.getter()
{
  OUTLINED_FUNCTION_31_0();
  sub_268C1531C();
  OUTLINED_FUNCTION_3_0();
  v39 = v2;
  v40 = v1;
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_15_0();
  v38 = v4 - v3;
  v42 = *v0;
  v5 = [*v0 home];
  v6 = v5;
  if (!v5)
  {
    goto LABEL_34;
  }

  v7 = [v5 mediaSystems];

  v8 = sub_268BB9B44(0, &qword_2802CE758, 0x277CD1BE8);
  v9 = OUTLINED_FUNCTION_15_7(v8);

  v35 = sub_268BC4EF4(v9);
  if (!v35)
  {
LABEL_30:

LABEL_34:
    OUTLINED_FUNCTION_32_0();
    return;
  }

  v10 = 0;
  v11 = v9 & 0xC000000000000001;
  v33 = v9 + 32;
  v34 = v9 & 0xC000000000000001;
  v12 = &qword_2802CE760;
  v13 = &off_279C44000;
  v14 = &off_279C44000;
  v37 = v9;
LABEL_4:
  sub_268BC4F00();
  if (v11)
  {
    v15 = MEMORY[0x26D627640](v10, v9);
  }

  else
  {
    v15 = *(v33 + 8 * v10);
  }

  v16 = __OFADD__(v10, 1);
  v17 = v10 + 1;
  if (v16)
  {
    goto LABEL_37;
  }

  v36 = v17;
  v41 = v15;
  v18 = [v15 v13[303]];
  sub_268BB9B44(0, &qword_2802CE760, 0x277CD1C00);
  v19 = sub_268C15D0C();

  v20 = sub_268BC4EF4(v19);
  for (i = 0; ; ++i)
  {
    if (v20 == i)
    {

      v10 = v36;
      v9 = v37;
      v11 = v34;
      v12 = &qword_2802CE760;
      v13 = &off_279C44000;
      if (v36 != v35)
      {
        goto LABEL_4;
      }

      goto LABEL_30;
    }

    if ((v19 & 0xC000000000000001) != 0)
    {
      v22 = MEMORY[0x26D627640](i, v19);
    }

    else
    {
      if (i >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_36;
      }

      v22 = *(v19 + 8 * i + 32);
    }

    v23 = v22;
    if (__OFADD__(i, 1))
    {
      break;
    }

    v24 = [v22 mediaProfile];
    v25 = v24;
    if (v24)
    {
      v26 = [v24 accessory];

      if (v26)
      {
        v12 = [v26 v14[275]];

        v25 = sub_268C15BFC();
        v26 = v27;
      }

      else
      {
        v25 = 0;
      }
    }

    else
    {
      v26 = 0;
    }

    v28 = v14;
    v29 = [v42 v14[275]];
    sub_268C15BFC();
    OUTLINED_FUNCTION_14_5();

    if (v26)
    {
      if (v25 == v12 && v26 == v13)
      {

        goto LABEL_33;
      }

      v31 = sub_268C1618C();

      if (v31)
      {

LABEL_33:
        v32 = [v41 uniqueIdentifier];
        sub_268C152FC();

        sub_268C152EC();
        (*(v39 + 8))(v38, v40);
        goto LABEL_34;
      }
    }

    else
    {
    }

    v14 = v28;
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
}

void __swiftcall Accessory.getVolume()(Swift::Float_optional *__return_ptr retstr)
{
  v2 = [*v1 mediaProfile];
  if (v2)
  {
    v3 = v2;
    v4 = [v2 mediaSession];

    if (v4)
    {
      v5 = [v4 audioControl];

      [v5 volume];
    }
  }
}

void Accessory.setVolume(volume:with:)(uint64_t a1, uint64_t a2, float a3)
{
  v7 = [*v3 mediaProfile];
  if (v7)
  {
    v8 = v7;
    v9 = [v7 mediaSession];

    if (v9)
    {
      v10 = [v9 audioControl];

      v13[4] = a1;
      v13[5] = a2;
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 1107296256;
      v13[2] = sub_268BFB7BC;
      v13[3] = &block_descriptor_2;
      v11 = _Block_copy(v13);

      *&v12 = a3;
      [v10 updateVolume:v11 completionHandler:v12];
      _Block_release(v11);
    }
  }
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_268BFCF50()
{
  result = qword_2802CE768;
  if (!qword_2802CE768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802CE768);
  }

  return result;
}

unint64_t sub_268BFCFA8()
{
  result = qword_2802CE770;
  if (!qword_2802CE770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802CE770);
  }

  return result;
}

unint64_t sub_268BFD000()
{
  result = qword_2802CE778;
  if (!qword_2802CE778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802CE778);
  }

  return result;
}

unint64_t sub_268BFD080()
{
  result = qword_2802CE780;
  if (!qword_2802CE780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802CE780);
  }

  return result;
}

unint64_t sub_268BFD0D4()
{
  result = qword_2802CE788;
  if (!qword_2802CE788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802CE788);
  }

  return result;
}

unint64_t sub_268BFD154()
{
  result = qword_2802CE790;
  if (!qword_2802CE790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802CE790);
  }

  return result;
}

unint64_t sub_268BFD1A8()
{
  result = qword_2802CE798;
  if (!qword_2802CE798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802CE798);
  }

  return result;
}

unint64_t sub_268BFD228()
{
  result = qword_2802CE7A0;
  if (!qword_2802CE7A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802CE7A0);
  }

  return result;
}

unint64_t sub_268BFD27C()
{
  result = qword_2802CE7A8;
  if (!qword_2802CE7A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802CE7A8);
  }

  return result;
}

uint64_t sub_268BFD2FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4(a1, a2, a3);
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_268BFD338()
{
  result = qword_2802CE7B0;
  if (!qword_2802CE7B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802CE7B0);
  }

  return result;
}

unint64_t sub_268BFD38C()
{
  result = qword_2802CE7B8;
  if (!qword_2802CE7B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802CE7B8);
  }

  return result;
}

uint64_t sub_268BFD418(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 8))
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

uint64_t sub_268BFD458(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void OUTLINED_FUNCTION_10_10()
{

  JUMPOUT(0x26D627230);
}

void OUTLINED_FUNCTION_11_6()
{
  v2 = *(v0 + 16) + 1;

  sub_268BB3578(0, v2, 1, v0);
}

uint64_t OUTLINED_FUNCTION_15_7(uint64_t a1)
{

  return sub_268C15D0C();
}

Swift::Bool __swiftcall PlaybackControlsFeatureFlagProviding.isSiriXEnabled()()
{
  result = OUTLINED_FUNCTION_3_10("Fatal error", 11, 2, 89, 0x8000000268C1CBB0, "SiriPlaybackControlSupport/PlaybackControlsFeatureFlagProvider.swift");
  __break(1u);
  return result;
}

Swift::Bool __swiftcall PlaybackControlsFeatureFlagProviding.isSiriXv2Enabled()()
{
  result = OUTLINED_FUNCTION_3_10("Fatal error", 11, 2, 91, 0x8000000268C1CC10, "SiriPlaybackControlSupport/PlaybackControlsFeatureFlagProvider.swift");
  __break(1u);
  return result;
}

Swift::Bool __swiftcall PlaybackControlsFeatureFlagProviding.isResponseFrameworkEnabled()()
{
  result = OUTLINED_FUNCTION_3_10("Fatal error", 11, 2, 101, 0x8000000268C1CC70, "SiriPlaybackControlSupport/PlaybackControlsFeatureFlagProvider.swift");
  __break(1u);
  return result;
}

Swift::Bool __swiftcall PlaybackControlsFeatureFlagProviding.isControlsOnWatchEnabled()()
{
  result = OUTLINED_FUNCTION_3_10("Fatal error", 11, 2, 99, 0x8000000268C1CD50, "SiriPlaybackControlSupport/PlaybackControlsFeatureFlagProvider.swift");
  __break(1u);
  return result;
}

Swift::Bool __swiftcall PlaybackControlsFeatureFlagProviding.isPermanentSpeakerGroupsEnabled()()
{
  result = OUTLINED_FUNCTION_3_10("Fatal error", 11, 2, 106, 0x8000000268C1CDC0, "SiriPlaybackControlSupport/PlaybackControlsFeatureFlagProvider.swift");
  __break(1u);
  return result;
}

Swift::Bool __swiftcall PlaybackControlsFeatureFlagProviding.shouldQuickStopCallBell()()
{
  result = OUTLINED_FUNCTION_3_10("Fatal error", 11, 2, 98, 0x8000000268C1CE30, "SiriPlaybackControlSupport/PlaybackControlsFeatureFlagProvider.swift");
  __break(1u);
  return result;
}

Swift::Bool __swiftcall PlaybackControlsFeatureFlagProviding.isCoordinatedVolumeEnabled()()
{
  result = OUTLINED_FUNCTION_3_10("Fatal error", 11, 2, 101, 0x8000000268C1CEA0, "SiriPlaybackControlSupport/PlaybackControlsFeatureFlagProvider.swift");
  __break(1u);
  return result;
}

Swift::Bool __swiftcall PlaybackControlsFeatureFlagProviding.isUnifySiriLocalVolumeEnabled()()
{
  result = OUTLINED_FUNCTION_3_10("Fatal error", 11, 2, 104, 0x8000000268C1CF10, "SiriPlaybackControlSupport/PlaybackControlsFeatureFlagProvider.swift");
  __break(1u);
  return result;
}

uint64_t sub_268BFD940(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v8 = sub_268C15A1C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v41 - v13;
  v15 = [objc_opt_self() shared];
  v44 = a1;
  v16 = sub_268C15BEC();
  v45 = a3;
  v17 = sub_268C15BEC();
  v18 = [v15 stateForFeature:v16 domain:v17];

  if (v18)
  {
    v19 = v9;
    v20 = v8;
    v21 = [v18 value];
    v22 = v21 == 1;
    if (qword_2802CDBE0 != -1)
    {
      swift_once();
    }

    v23 = __swift_project_value_buffer(v8, qword_2802D2F10);
    v24 = v19;
    (*(v19 + 16))(v14, v23, v20);

    v25 = sub_268C159FC();
    v26 = sub_268C15DDC();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v43 = v21 == 1;
      v28 = v27;
      v29 = swift_slowAlloc();
      v42 = v21;
      v30 = v29;
      v46 = v29;
      *v28 = 136446722;
      *(v28 + 4) = sub_268BB3D28(v44, a2, &v46);
      *(v28 + 12) = 2082;
      *(v28 + 14) = sub_268BB3D28(v45, a4, &v46);
      *(v28 + 22) = 2082;
      if (v42 == 1)
      {
        v31 = 0x64656C62616E65;
      }

      else
      {
        v31 = 0x64656C6261736964;
      }

      if (v42 == 1)
      {
        v32 = 0xE700000000000000;
      }

      else
      {
        v32 = 0xE800000000000000;
      }

      v33 = sub_268BB3D28(v31, v32, &v46);

      *(v28 + 24) = v33;
      _os_log_impl(&dword_268BAD000, v25, v26, "FeatureFlagProvider#featureIsEnabled Feature flag %{public}s/%{public}s : %{public}s", v28, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x26D628010](v30, -1, -1);
      v34 = v28;
      v22 = v43;
      MEMORY[0x26D628010](v34, -1, -1);
    }

    (*(v24 + 8))(v14, v20);
  }

  else
  {
    if (qword_2802CDBE0 != -1)
    {
      swift_once();
    }

    v35 = __swift_project_value_buffer(v8, qword_2802D2F10);
    (*(v9 + 16))(v11, v35, v8);

    v36 = sub_268C159FC();
    v37 = sub_268C15DDC();

    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v46 = v39;
      *v38 = 136446466;
      *(v38 + 4) = sub_268BB3D28(v44, a2, &v46);
      *(v38 + 12) = 2082;
      *(v38 + 14) = sub_268BB3D28(v45, a4, &v46);
      _os_log_impl(&dword_268BAD000, v36, v37, "FeatureFlagProvider#featureIsEnabled flag %{public}s/%{public}s : disabled", v38, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x26D628010](v39, -1, -1);
      MEMORY[0x26D628010](v38, -1, -1);
    }

    (*(v9 + 8))(v11, v8);
    return 0;
  }

  return v22;
}

Swift::Bool __swiftcall PlaybackControlsFeatureFlagProvider.isResponseFrameworkEnabled()()
{
  sub_268C15A1C();
  OUTLINED_FUNCTION_2_2();
  v2 = v1;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_17_2();
  v6 = v4 - v5;
  MEMORY[0x28223BE20](v7);
  v9 = &v31 - v8;
  v34[3] = &type metadata for Features;
  v34[4] = sub_268BFF138();
  LOBYTE(v34[0]) = 2;
  v10 = sub_268C153AC();
  __swift_destroy_boxed_opaque_existential_0(v34);
  v11 = [objc_opt_self() shared];
  v12 = sub_268C15BEC();
  v13 = sub_268C15BEC();
  v14 = [v11 stateForFeature:v12 domain:v13];

  if (v14)
  {
    v15 = [v14 value];
    if (qword_2802CDBE0 != -1)
    {
      OUTLINED_FUNCTION_18(&qword_2802CDBE0);
    }

    __swift_project_value_buffer(v0, qword_2802D2F10);
    v16 = OUTLINED_FUNCTION_11_7();
    v17(v16);
    v18 = sub_268C159FC();
    v19 = sub_268C15DDC();
    if (os_log_type_enabled(v18, v19))
    {
      v32 = v15 == 1;
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v33 = v0;
      v34[0] = v21;
      *v20 = 136446722;
      *(v20 + 4) = sub_268BB3D28(0xD00000000000001ALL, 0x8000000268C1CFA0, v34);
      *(v20 + 12) = 2082;
      *(v20 + 14) = sub_268BB3D28(0xD000000000000014, 0x8000000268C1B7C0, v34);
      *(v20 + 22) = 2082;
      v22 = v10 & v32;
      if ((v10 & v32) != 0)
      {
        v23 = 0x64656C62616E65;
      }

      else
      {
        v23 = 0x64656C6261736964;
      }

      if ((v10 & v32) != 0)
      {
        v24 = 0xE700000000000000;
      }

      else
      {
        v24 = 0xE800000000000000;
      }

      v25 = sub_268BB3D28(v23, v24, v34);

      *(v20 + 24) = v25;
      _os_log_impl(&dword_268BAD000, v18, v19, "FeatureFlagProvider#isResponseFrameworkEnabled Feature flag %{public}s/%{public}s : %{public}s", v20, 0x20u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_30();
      OUTLINED_FUNCTION_37_0();

      (*(v2 + 8))(v9, v33);
    }

    else
    {

      (*(v2 + 8))(v9);
      v22 = v10 & (v15 == 1);
    }
  }

  else
  {
    if (qword_2802CDBE0 != -1)
    {
      OUTLINED_FUNCTION_18(&qword_2802CDBE0);
    }

    v26 = __swift_project_value_buffer(v0, qword_2802D2F10);
    (*(v2 + 16))(v6, v26);
    v27 = sub_268C159FC();
    v28 = sub_268C15DDC();
    if (OUTLINED_FUNCTION_34_0(v28))
    {
      v29 = swift_slowAlloc();
      v34[0] = swift_slowAlloc();
      *v29 = 136446466;
      *(v29 + 4) = sub_268BB3D28(0xD00000000000001ALL, 0x8000000268C1CFA0, v34);
      *(v29 + 12) = 2082;
      *(v29 + 14) = sub_268BB3D28(0xD000000000000011, 0x8000000268C1CF80, v34);
      _os_log_impl(&dword_268BAD000, v27, v28, "FeatureFlagProvider#isResponseFrameworkEnabled Feature flag %{public}s/%{public}s : disabled", v29, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_37_0();
      OUTLINED_FUNCTION_30();
    }

    (*(v2 + 8))(v6);
    v22 = 0;
  }

  return v22 & 1;
}

uint64_t PlaybackControlsFeatureFlagProvider.shouldSuppressSnippetIfNeeded(deviceState:)(void *a1)
{
  sub_268C15A1C();
  OUTLINED_FUNCTION_2_2();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_17_2();
  v8 = (v6 - v7);
  MEMORY[0x28223BE20](v9);
  v11 = &v23 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v12 = sub_268C1535C();
  if (v12)
  {
    if (qword_2802CDBE0 != -1)
    {
      v12 = OUTLINED_FUNCTION_18(&qword_2802CDBE0);
    }

    OUTLINED_FUNCTION_4_10(v12, qword_2802D2F10);
    v13(v11);
    v14 = sub_268C159FC();
    v15 = sub_268C15DDC();
    if (!OUTLINED_FUNCTION_34_0(v15))
    {
      v17 = 0;
      goto LABEL_13;
    }

    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_268BAD000, v14, v15, "FeatureFlagProvider#shouldSuppressSnippetIfNeeded skipping on xr", v16, 2u);
    v17 = 0;
  }

  else
  {
    v18 = sub_268BFD940(0xD000000000000010, 0x8000000268C1CFC0, 0x495569726953, 0xE600000000000000);
    v17 = v18;
    if (qword_2802CDBE0 != -1)
    {
      v18 = OUTLINED_FUNCTION_18(&qword_2802CDBE0);
    }

    OUTLINED_FUNCTION_4_10(v18, qword_2802D2F10);
    v19(v8);
    v14 = sub_268C159FC();
    v20 = sub_268C15DDC();
    if (!OUTLINED_FUNCTION_34_0(v20))
    {
      v11 = v8;
      goto LABEL_13;
    }

    v21 = OUTLINED_FUNCTION_14_6();
    *v21 = 67109120;
    *(v21 + 4) = v17 & 1;
    _os_log_impl(&dword_268BAD000, v14, v20, "FeatureFlagProvider#shouldSuppressSnippetIfNeeded: %{BOOL}d", v21, 8u);
    v11 = v8;
  }

  OUTLINED_FUNCTION_37_0();
LABEL_13:

  (*(v4 + 8))(v11, v1);
  return v17 & 1;
}

Swift::Bool __swiftcall PlaybackControlsFeatureFlagProvider.isPermanentSpeakerGroupsEnabled()()
{
  v0 = sub_268C15A1C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  OUTLINED_FUNCTION_17_2();
  v4 = v2 - v3;
  MEMORY[0x28223BE20](v5);
  v7 = &v34 - v6;
  v8 = [objc_opt_self() shared];
  v9 = sub_268C15BEC();
  v10 = sub_268C15BEC();
  v11 = [v8 stateForFeature:v9 domain:v10];

  if (v11)
  {
    v12 = [v11 value];
    v13 = v12 == 1;
    if (qword_2802CDBE0 != -1)
    {
      OUTLINED_FUNCTION_18(&qword_2802CDBE0);
    }

    v14 = __swift_project_value_buffer(v0, qword_2802D2F10);
    (*(v1 + 16))(v7, v14, v0);
    v15 = v0;
    v16 = sub_268C159FC();
    v17 = sub_268C15DDC();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v34 = v15;
      v19 = v18;
      v35 = swift_slowAlloc();
      v20 = OUTLINED_FUNCTION_8_11(4.8754e-34);
      v21 = OUTLINED_FUNCTION_6_12(v20);
      *(v19 + 14) = sub_268BB3D28(v21, 0xEB00000000737075, v22);
      *(v19 + 22) = 2080;
      if (v12 == 1)
      {
        v23 = 0x64656C62616E65;
      }

      else
      {
        v23 = 0x64656C6261736964;
      }

      if (v12 == 1)
      {
        v24 = 0xE700000000000000;
      }

      else
      {
        v24 = 0xE800000000000000;
      }

      v25 = sub_268BB3D28(v23, v24, &v35);

      *(v19 + 24) = v25;
      _os_log_impl(&dword_268BAD000, v16, v17, "FeatureFlagProvider#isPermanentSpeakerGroupsEnabled Feature flag %{public}s/%{public}s : %s", v19, 0x20u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_30();
      OUTLINED_FUNCTION_30();

      (*(v1 + 8))(v7, v34);
    }

    else
    {

      (*(v1 + 8))(v7, v15);
    }
  }

  else
  {
    if (qword_2802CDBE0 != -1)
    {
      OUTLINED_FUNCTION_18(&qword_2802CDBE0);
    }

    v26 = __swift_project_value_buffer(v0, qword_2802D2F10);
    (*(v1 + 16))(v4, v26, v0);
    v27 = sub_268C159FC();
    v28 = sub_268C15DDC();
    if (OUTLINED_FUNCTION_34_0(v28))
    {
      v29 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v30 = OUTLINED_FUNCTION_8_11(4.8752e-34);
      v31 = OUTLINED_FUNCTION_6_12(v30);
      *(v29 + 14) = sub_268BB3D28(v31, 0xEB00000000737075, v32);
      _os_log_impl(&dword_268BAD000, v27, v28, "FeatureFlagProvider#isPermanentSpeakerGroupsEnabled Feature flag %{public}s/%{public}s : disabled", v29, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_30();
      OUTLINED_FUNCTION_30();
    }

    (*(v1 + 8))(v4, v0);
    return 0;
  }

  return v13;
}

uint64_t sub_268BFEA30(char a1, const char *a2, ...)
{
  sub_268C15A1C();
  OUTLINED_FUNCTION_2_2();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_4_3();
  v16[3] = &type metadata for Features;
  v16[4] = sub_268BFF138();
  LOBYTE(v16[0]) = a1;
  v9 = sub_268C153AC();
  __swift_destroy_boxed_opaque_existential_0(v16);
  if (qword_2802CDBE0 != -1)
  {
    OUTLINED_FUNCTION_18(&qword_2802CDBE0);
  }

  __swift_project_value_buffer(v2, qword_2802D2F10);
  v10 = OUTLINED_FUNCTION_11_7();
  v11(v10);
  v12 = sub_268C159FC();
  v13 = sub_268C15DDC();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = OUTLINED_FUNCTION_14_6();
    *v14 = 67109120;
    *(v14 + 4) = v9 & 1;
    _os_log_impl(&dword_268BAD000, v12, v13, a2, v14, 8u);
    OUTLINED_FUNCTION_30();
  }

  (*(v7 + 8))(v3, v2);
  return v9 & 1;
}

Swift::Bool __swiftcall PlaybackControlsFeatureFlagProvider.isCoordinatedVolumeEnabled()()
{
  sub_268C15A1C();
  OUTLINED_FUNCTION_2_2();
  v1 = v0;
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_5_9();
  v6 = sub_268BFD940(0xD000000000000012, v3, v4, v5);
  v7 = v6;
  if (qword_2802CDBE0 != -1)
  {
    v6 = OUTLINED_FUNCTION_18(&qword_2802CDBE0);
  }

  OUTLINED_FUNCTION_4_10(v6, qword_2802D2F10);
  v8 = OUTLINED_FUNCTION_11_7();
  v9(v8);
  v10 = sub_268C159FC();
  v11 = sub_268C15DDC();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = OUTLINED_FUNCTION_14_6();
    *v12 = 67109120;
    v12[1] = v7 & 1;
    OUTLINED_FUNCTION_12_7(&dword_268BAD000, v13, v14, "FeatureFlagProvider#isCoordinatedVolumeEnabled Feature flag: %{BOOL}d");
    OUTLINED_FUNCTION_37_0();
  }

  (*(v1 + 8))();
  return v7 & 1;
}

Swift::Bool __swiftcall PlaybackControlsFeatureFlagProvider.isUnifySiriLocalVolumeEnabled()()
{
  sub_268C15A1C();
  OUTLINED_FUNCTION_2_2();
  v1 = v0;
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_4_3();
  OUTLINED_FUNCTION_5_9();
  v6 = sub_268BFD940(0xD000000000000017, v3, v4, v5);
  v7 = v6;
  if (qword_2802CDBE0 != -1)
  {
    v6 = OUTLINED_FUNCTION_18(&qword_2802CDBE0);
  }

  OUTLINED_FUNCTION_4_10(v6, qword_2802D2F10);
  v8 = OUTLINED_FUNCTION_11_7();
  v9(v8);
  v10 = sub_268C159FC();
  v11 = sub_268C15DDC();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = OUTLINED_FUNCTION_14_6();
    *v12 = 67109120;
    v12[1] = v7 & 1;
    OUTLINED_FUNCTION_12_7(&dword_268BAD000, v13, v14, "FeatureFlagProvider#isUnifySiriLocalVolumeEnabled Feature flag: %{BOOL}d");
    OUTLINED_FUNCTION_37_0();
  }

  (*(v1 + 8))();
  return v7 & 1;
}

const char *sub_268BFEF90(char a1)
{
  result = "media_controls_on_sirix";
  switch(a1)
  {
    case 1:
      result = "media_controls_on_sirix_v2";
      break;
    case 2:
      result = "response_framework";
      break;
    case 3:
      result = "controls_enabled_on_watch";
      break;
    case 4:
      result = "quick_stop_call_bell";
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_268BFF01C(unsigned __int8 a1)
{
  sub_268C1624C();
  MEMORY[0x26D627820](a1);
  return sub_268C1626C();
}

void *sub_268BFF090(void *__src, uint64_t a2, void *__dst)
{
  if (__dst)
  {
    if (__src)
    {
      return memmove(__dst, __src, a2 - __src);
    }
  }

  return __src;
}

uint64_t sub_268BFF108@<X0>(uint64_t (*a1)(void)@<X0>, _DWORD *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

unint64_t sub_268BFF138()
{
  result = qword_2802CE7C0;
  if (!qword_2802CE7C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802CE7C0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PlaybackControlsFeatureFlagProvider(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

  switch(v5)
  {
    case 1:
      *result = 0;
      break;
    case 2:
      *result = 0;
      break;
    case 3:
LABEL_19:
      __break(1u);
      JUMPOUT(0x268BFF2DCLL);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for Features(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
        JUMPOUT(0x268BFF3E0);
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_268BFF41C()
{
  result = qword_2802CE7C8;
  if (!qword_2802CE7C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2802CE7C8);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_3_10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = a4 & 0xFFFFFFFFFFFFLL | 0xD000000000000000;

  return MEMORY[0x2821FD720](a1, a2, a3, v7, a5, a6, 68, 2);
}

uint64_t OUTLINED_FUNCTION_6_12(uint64_t a1)
{
  *(v1 + 4) = a1;
  *(v1 + 12) = 2082;
  return 0x6F7247616964654DLL;
}

unint64_t OUTLINED_FUNCTION_8_11(float a1)
{
  *v1 = a1;

  return sub_268BB3D28(v2, 0xEF7370756F724774, (v3 - 88));
}

void OUTLINED_FUNCTION_12_7(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 8u);
}

uint64_t OUTLINED_FUNCTION_14_6()
{

  return swift_slowAlloc();
}

SiriPlaybackControlSupport::HomeAutomationEntityType_optional __swiftcall HomeAutomationEntityType.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 8;
  if (rawValue < 8)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

unint64_t sub_268BFF58C()
{
  result = qword_2802CE7D0[0];
  if (!qword_2802CE7D0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2802CE7D0);
  }

  return result;
}

uint64_t sub_268BFF5F8@<X0>(uint64_t *a1@<X8>)
{
  result = HomeAutomationEntityType.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for HomeAutomationEntityType(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *storeEnumTagSinglePayload for HomeAutomationEntityType(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0x268BFF774);
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

uint64_t sub_268BFF7AC()
{
  v0 = sub_268C15A1C();
  __swift_allocate_value_buffer(v0, qword_2802D2F10);
  __swift_project_value_buffer(v0, qword_2802D2F10);
  if (qword_2802CDB60 != -1)
  {
    swift_once();
  }

  v1 = qword_2802D2EB8;
  return sub_268C15A2C();
}

uint64_t ListPosition.description.getter()
{
  if (*(v0 + 8))
  {
    v1 = 0x657372657665722ELL;
  }

  else
  {
    v1 = 0x6465726564726F2ELL;
  }

  v4 = v1;
  v2 = sub_268C1616C();
  MEMORY[0x26D627230](v2);

  MEMORY[0x26D627230](41, 0xE100000000000000);
  return v4;
}

Swift::Int __swiftcall ListPosition.toIndex()()
{
  v1 = *v0;
  if (v0[1])
  {
    result = -v1;
    if (!__OFSUB__(0, v1))
    {
      return result;
    }

    __break(1u);
  }

  result = v1 - 1;
  if (__OFSUB__(v1, 1))
  {
    __break(1u);
  }

  return result;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for ListPosition(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 9))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 <= 1)
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

uint64_t storeEnumTagSinglePayload for ListPosition(uint64_t result, unsigned int a2, unsigned int a3)
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

void __swiftcall HomeAutomationEntityQuery.init(roomName:zoneName:homeName:accessoryName:serviceName:serviceGroup:isFromEntity:deviceQuantifier:deviceType:placeHint:reference:)(SiriPlaybackControlSupport::HomeAutomationEntityQuery *__return_ptr retstr, Swift::String_optional roomName, Swift::String_optional zoneName, Swift::String_optional homeName, Swift::String_optional accessoryName, Swift::String_optional serviceName, Swift::String_optional serviceGroup, Swift::Bool isFromEntity, SiriPlaybackControlSupport::DeviceQuantifier_optional deviceQuantifier, SiriPlaybackControlSupport::DeviceType_optional deviceType, SiriPlaybackControlSupport::PlaceHint_optional placeHint, SiriPlaybackControlSupport::Reference_optional reference)
{
  v12 = *v16;
  v13 = *v17;
  v14 = *v18;
  v15 = *v19;
  retstr->roomName = roomName;
  retstr->zoneName = zoneName;
  retstr->homeName = homeName;
  retstr->accessoryName = accessoryName;
  retstr->serviceName = serviceName;
  retstr->serviceGroup = serviceGroup;
  retstr->isFromEntity = isFromEntity;
  retstr->deviceQuantifier.value = v12;
  retstr->deviceType.value = v13;
  retstr->placeHint.value = v14;
  retstr->reference.value = v15;
}

uint64_t sub_268BFFA1C(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, char *a8, char *a9)
{
  v43 = a7;
  v44 = a8;
  v41 = a5;
  v42 = a6;
  v39 = a3;
  v40 = a4;
  v38 = a2;
  v37 = a9;
  v10 = sub_268C15A1C();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_268BC4EF4(a1);
  v15 = result;
  v16 = 0;
  v47 = a1 & 0xFFFFFFFFFFFFFF8;
  v48 = a1 & 0xC000000000000001;
  v45 = (v11 + 8);
  v46 = (v11 + 16);
  while (v15 != v16)
  {
    if (v48)
    {
      MEMORY[0x26D627640](v16, a1);
    }

    else
    {
      if (v16 >= *(v47 + 16))
      {
        goto LABEL_39;
      }
    }

    if (__OFADD__(v16, 1))
    {
      __break(1u);
LABEL_39:
      __break(1u);
      JUMPOUT(0x268BFFE2CLL);
    }

    v17 = sub_268C0258C();
    v18 = sub_268C00328(v17);

    if (v18)
    {
      switch(*(v18 + 32))
      {
        case 1:
          v26 = *(v18 + 40);
          v25 = *(v18 + 48);

          v27 = v38;
          goto LABEL_24;
        case 2:
          v26 = *(v18 + 40);
          v25 = *(v18 + 48);

          v27 = v39;
          goto LABEL_24;
        case 3:
          v26 = *(v18 + 40);
          v25 = *(v18 + 48);

          v27 = v40;
          goto LABEL_24;
        case 4:
          v26 = *(v18 + 40);
          v25 = *(v18 + 48);

          v27 = v41;
          goto LABEL_24;
        case 5:
          v26 = *(v18 + 40);
          v25 = *(v18 + 48);

          v27 = v42;
          goto LABEL_24;
        case 6:
          v26 = *(v18 + 40);
          v25 = *(v18 + 48);

          v27 = v43;
LABEL_24:
          *v27 = v26;
          v27[1] = v25;

          goto LABEL_35;
        case 7:
          if (*(v18 + 48))
          {
            v28 = *(v18 + 40);
            v29 = *(v18 + 48);
          }

          else
          {
            v28 = 0;
            v29 = 0xE000000000000000;
          }

          v30._countAndFlagsBits = v28;
          v30._object = v29;
          PlaceHint.init(rawValue:)(v30);

          v31 = v49;
          v32 = v44;
          goto LABEL_33;
        case 8:

          break;
        default:
          if (*(v18 + 48))
          {
            v19 = *(v18 + 40);
            v20 = *(v18 + 48);
          }

          else
          {
            v19 = 0;
            v20 = 0xE000000000000000;
          }

          v33._countAndFlagsBits = v19;
          v33._object = v20;
          DeviceType.init(rawValue:)(v33);
          v34 = v50;
          v35 = sub_268BB1A6C(v50, 11);

          if (v35)
          {
            v31 = 12;
          }

          else
          {
            v31 = v34;
          }

          v32 = v37;
LABEL_33:
          *v32 = v31;
          break;
      }
    }

    else
    {
      if (qword_2802CDBE0 != -1)
      {
        swift_once();
      }

      v21 = __swift_project_value_buffer(v10, qword_2802D2F10);
      (*v46)(v13, v21, v10);
      v22 = sub_268C159FC();
      v23 = sub_268C15DEC();
      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        *v24 = 0;
        _os_log_impl(&dword_268BAD000, v22, v23, "Could not find the highest scoring interpretation group from the parse", v24, 2u);
        MEMORY[0x26D628010](v24, -1, -1);
      }

      (*v45)(v13, v10);
    }

LABEL_35:
    ++v16;
  }

  return result;
}

uint64_t HomeAutomationEntityQuery.roomName.setter()
{
  OUTLINED_FUNCTION_8_6();

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t HomeAutomationEntityQuery.zoneName.setter()
{
  OUTLINED_FUNCTION_8_6();

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t HomeAutomationEntityQuery.homeName.setter()
{
  OUTLINED_FUNCTION_8_6();

  *(v1 + 32) = v2;
  *(v1 + 40) = v0;
  return result;
}

uint64_t HomeAutomationEntityQuery.accessoryName.setter()
{
  OUTLINED_FUNCTION_8_6();

  *(v1 + 48) = v2;
  *(v1 + 56) = v0;
  return result;
}

uint64_t HomeAutomationEntityQuery.serviceName.setter()
{
  OUTLINED_FUNCTION_8_6();

  *(v1 + 64) = v2;
  *(v1 + 72) = v0;
  return result;
}

uint64_t HomeAutomationEntityQuery.serviceGroup.setter()
{
  OUTLINED_FUNCTION_8_6();

  *(v1 + 80) = v2;
  *(v1 + 88) = v0;
  return result;
}

__n128 sub_268C00250@<Q0>(uint64_t a1@<X8>)
{
  v17 = 0uLL;
  v16 = 0uLL;
  v15 = 0uLL;
  v14 = 0uLL;
  v13 = 0uLL;
  v12 = 0uLL;
  v11 = 12;
  v10 = 20;
  v2 = sub_268C07A74();
  sub_268BFFA1C(v2, &v17, &v16, &v15, &v14, &v13, &v12, &v10, &v11);

  v3 = v11;
  v4 = v10;
  result = v12;
  v6 = v13;
  v7 = v14;
  v8 = v15;
  v9 = v17;
  *a1 = v16;
  *(a1 + 16) = v9;
  *(a1 + 32) = v7;
  *(a1 + 48) = v8;
  *(a1 + 64) = v6;
  *(a1 + 80) = result;
  *(a1 + 96) = 1280;
  *(a1 + 98) = v3;
  *(a1 + 99) = v4;
  *(a1 + 100) = 5;
  return result;
}

uint64_t sub_268C00328(unint64_t a1)
{
  v1 = a1;
  v2 = sub_268BC4EF4(a1);
  v3 = 0;
  v4 = v1 & 0xC000000000000001;
  v5 = v1 & 0xFFFFFFFFFFFFFF8;
  v6 = MEMORY[0x277D84F90];
  while (v2 != v3)
  {
    if (v4)
    {
      v7 = MEMORY[0x26D627640](v3, v1);
    }

    else
    {
      if (v3 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_77;
      }

      v7 = *(v1 + 8 * v3 + 32);
    }

    v8 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      __break(1u);
LABEL_77:
      __break(1u);
LABEL_78:
      __break(1u);
LABEL_79:
      __break(1u);
LABEL_80:
      __break(1u);
LABEL_81:
      __break(1u);
LABEL_82:
      __break(1u);
LABEL_83:
      __break(1u);
LABEL_84:
      __break(1u);
LABEL_85:
      __break(1u);
LABEL_86:
      v25 = sub_268C1613C();
      if (!v25)
      {
        return 0;
      }

LABEL_54:
      sub_268BC4F00();
      if (v4)
      {
        v19 = MEMORY[0x26D627640](0, v1);
      }

      else
      {
        v19 = *(v1 + 32);
      }

      for (i = 1; ; ++i)
      {
        while (2)
        {
          if (v25 == i)
          {
            return v19;
          }

          if (v4)
          {
            v27 = MEMORY[0x26D627640](i, v1);
          }

          else
          {
            if ((i & 0x8000000000000000) != 0)
            {
              goto LABEL_82;
            }

            if (i >= *(v5 + 16))
            {
              goto LABEL_83;
            }

            v27 = *(v1 + 8 * i + 32);
          }

          if (__OFADD__(i, 1))
          {
            goto LABEL_80;
          }

          v28 = *(v27 + 32);
          v29 = *(v19 + 32);
          if (v29 == 8)
          {
            if (v28 != 8)
            {
              goto LABEL_66;
            }
          }

          else if (v28 != 8 && v28 < v29)
          {
LABEL_66:

            ++i;
            v19 = v27;
            continue;
          }

          break;
        }
      }
    }

    swift_beginAccess();
    v9 = *(v7 + 56);

    ++v3;
    if (v9 != 4)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_268BB37F4();
        v6 = v12;
      }

      v10 = *(v6 + 16);
      if (v10 >= *(v6 + 24) >> 1)
      {
        sub_268BB37F4();
        v6 = v13;
      }

      *(v6 + 16) = v10 + 1;
      v11 = v6 + 8 * v10;
      *(v11 + 32) = v9;
      *(v11 + 36) = HIDWORD(v9);
      v3 = v8;
    }
  }

  sub_268C00DCC(v6, v32);

  v14 = *v32;
  v15 = MEMORY[0x277D84F90];
  if (v32[0] != 4)
  {
    v16 = 0;
    v33 = MEMORY[0x277D84F90];
    while (v2 != v16)
    {
      if (v4)
      {
        v17 = MEMORY[0x26D627640](v16, v1);
      }

      else
      {
        if (v16 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_79;
        }

        v17 = *(v1 + 8 * v16 + 32);
      }

      if (__OFADD__(v16, 1))
      {
        goto LABEL_78;
      }

      swift_beginAccess();
      v18 = *(v17 + 56);
      if (v18 == 4 || v14 != v18 || *(&v18 + 1) != *(&v14 + 1))
      {
      }

      else
      {
        sub_268C160AC();
        sub_268C160DC();
        sub_268C160EC();
        sub_268C160BC();
      }

      ++v16;
    }

    v15 = v33;
  }

  if (sub_268BC4EF4(v15))
  {
    if (sub_268BC4EF4(v15) > 1)
    {
      if (v15 >> 62)
      {
        v1 = sub_268C1613C();
        if (v1)
        {
          goto LABEL_33;
        }
      }

      else
      {
        v1 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v1)
        {
LABEL_33:
          sub_268BC4F00();
          if ((v15 & 0xC000000000000001) != 0)
          {
            v19 = MEMORY[0x26D627640](0, v15);
          }

          else
          {
            v19 = *(v15 + 32);
          }

          v4 = v15 & 0xFFFFFFFFFFFFFF8;
          v20 = 1;
          while (1)
          {
            if (v1 == v20)
            {
              goto LABEL_75;
            }

            if ((v15 & 0xC000000000000001) != 0)
            {
              v21 = MEMORY[0x26D627640](v20, v15);
            }

            else
            {
              if ((v20 & 0x8000000000000000) != 0)
              {
                goto LABEL_84;
              }

              if (v20 >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_85;
              }

              v21 = *(v15 + 8 * v20 + 32);
            }

            v5 = v20 + 1;
            if (__OFADD__(v20, 1))
            {
              goto LABEL_81;
            }

            v22 = *(v21 + 32);
            v23 = *(v19 + 32);
            if (v23 == 8)
            {
              if (v22 != 8)
              {
                goto LABEL_45;
              }

LABEL_51:

              ++v20;
            }

            else
            {
              if (v22 == 8 || v22 >= v23)
              {
                goto LABEL_51;
              }

LABEL_45:

              ++v20;
              v19 = v21;
            }
          }
        }
      }

      return 0;
    }

    sub_268BC4F00();
    if ((v15 & 0xC000000000000001) != 0)
    {
      v19 = MEMORY[0x26D627640](0, v15);
    }

    else
    {
      v19 = *(v15 + 32);
    }

LABEL_75:
  }

  else
  {

    if (v1 >> 62)
    {
      goto LABEL_86;
    }

    v25 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v25)
    {
      goto LABEL_54;
    }

    return 0;
  }

  return v19;
}