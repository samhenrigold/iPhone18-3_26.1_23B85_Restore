void *sub_25E604E5C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCF9158, &qword_25E63B108);
  v2 = *v0;
  v3 = sub_25E635DA0();
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
        v17 = v14 | (v8 << 6);
        v18 = 5 * v17;
        result = sub_25E5F82CC(*(v2 + 48) + 40 * v17, v22);
        v19 = *(v4 + 48) + 8 * v18;
        v20 = v22[0];
        v21 = v22[1];
        *(v19 + 32) = v23;
        *v19 = v20;
        *(v19 + 16) = v21;
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

uint64_t sub_25E604FD0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCF9178, &qword_25E63B128);
  result = sub_25E635DB0();
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
    if (v9)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v9));
        v9 &= v9 - 1;
LABEL_12:
        v15 = *(*(v3 + 48) + (v12 | (v6 << 6)));
        sub_25E636110();
        sub_25E635860();

        result = sub_25E636130();
        v16 = -1 << *(v5 + 32);
        v17 = result & ~v16;
        v18 = v17 >> 6;
        if (((-1 << v17) & ~*(v11 + 8 * (v17 >> 6))) == 0)
        {
          break;
        }

        v19 = __clz(__rbit64((-1 << v17) & ~*(v11 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v11 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
        *(*(v5 + 48) + v19) = v15;
        ++*(v5 + 16);
        if (!v9)
        {
          goto LABEL_7;
        }
      }

      v20 = 0;
      v21 = (63 - v16) >> 6;
      while (++v18 != v21 || (v20 & 1) == 0)
      {
        v22 = v18 == v21;
        if (v18 == v21)
        {
          v18 = 0;
        }

        v20 |= v22;
        v23 = *(v11 + 8 * v18);
        if (v23 != -1)
        {
          v19 = __clz(__rbit64(~v23)) + (v18 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
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

          v2 = v1;
          goto LABEL_25;
        }

        v14 = *(v3 + 56 + 8 * v6);
        ++v13;
        if (v14)
        {
          v12 = __clz(__rbit64(v14));
          v9 = (v14 - 1) & v14;
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
    *v2 = v5;
  }

  return result;
}

uint64_t sub_25E60527C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCF9160, &qword_25E63B110);
  result = sub_25E635DB0();
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
    if (v9)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v9));
        v9 &= v9 - 1;
LABEL_12:
        v15 = (*(v3 + 48) + 16 * (v12 | (v6 << 6)));
        v16 = *v15;
        v17 = v15[1];
        sub_25E636110();

        sub_25E635860();
        result = sub_25E636130();
        v18 = -1 << *(v5 + 32);
        v19 = result & ~v18;
        v20 = v19 >> 6;
        if (((-1 << v19) & ~*(v11 + 8 * (v19 >> 6))) == 0)
        {
          break;
        }

        v21 = __clz(__rbit64((-1 << v19) & ~*(v11 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v11 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
        v26 = (*(v5 + 48) + 16 * v21);
        *v26 = v16;
        v26[1] = v17;
        ++*(v5 + 16);
        if (!v9)
        {
          goto LABEL_7;
        }
      }

      v22 = 0;
      v23 = (63 - v18) >> 6;
      while (++v20 != v23 || (v22 & 1) == 0)
      {
        v24 = v20 == v23;
        if (v20 == v23)
        {
          v20 = 0;
        }

        v22 |= v24;
        v25 = *(v11 + 8 * v20);
        if (v25 != -1)
        {
          v21 = __clz(__rbit64(~v25)) + (v20 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
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

          v2 = v1;
          goto LABEL_25;
        }

        v14 = *(v3 + 56 + 8 * v6);
        ++v13;
        if (v14)
        {
          v12 = __clz(__rbit64(v14));
          v9 = (v14 - 1) & v14;
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
    *v2 = v5;
  }

  return result;
}

uint64_t sub_25E6054B0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCF9170, &qword_25E63B120);
  result = sub_25E635DB0();
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
    if (v9)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v9));
        v9 &= v9 - 1;
LABEL_12:
        v15 = *(*(v3 + 48) + (v12 | (v6 << 6)));
        sub_25E636110();
        MEMORY[0x25F8B9DE0](v15);
        result = sub_25E636130();
        v16 = -1 << *(v5 + 32);
        v17 = result & ~v16;
        v18 = v17 >> 6;
        if (((-1 << v17) & ~*(v11 + 8 * (v17 >> 6))) == 0)
        {
          break;
        }

        v19 = __clz(__rbit64((-1 << v17) & ~*(v11 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v11 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
        *(*(v5 + 48) + v19) = v15;
        ++*(v5 + 16);
        if (!v9)
        {
          goto LABEL_7;
        }
      }

      v20 = 0;
      v21 = (63 - v16) >> 6;
      while (++v18 != v21 || (v20 & 1) == 0)
      {
        v22 = v18 == v21;
        if (v18 == v21)
        {
          v18 = 0;
        }

        v20 |= v22;
        v23 = *(v11 + 8 * v18);
        if (v23 != -1)
        {
          v19 = __clz(__rbit64(~v23)) + (v18 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
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

          v2 = v1;
          goto LABEL_25;
        }

        v14 = *(v3 + 56 + 8 * v6);
        ++v13;
        if (v14)
        {
          v12 = __clz(__rbit64(v14));
          v9 = (v14 - 1) & v14;
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
    *v2 = v5;
  }

  return result;
}

void sub_25E6056CC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v5 = OUTLINED_FUNCTION_6_2(a1, a2, a3);
  sub_25E635DB0();
  OUTLINED_FUNCTION_13_1();
  if (v6)
  {
    v7 = 0;
    v8 = 1 << *(v4 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v4 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = v5 + 56;
    if (v10)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v10));
        v10 &= v10 - 1;
LABEL_12:
        v16 = *(*(v4 + 48) + 8 * (v13 | (v7 << 6)));
        sub_25E636100();
        OUTLINED_FUNCTION_12_0();
        if (((-1 << v18) & ~*(v12 + 8 * v17)) == 0)
        {
          break;
        }

        OUTLINED_FUNCTION_11_1();
LABEL_21:
        OUTLINED_FUNCTION_16_1();
        *(v12 + v23) |= v24;
        *(*(v5 + 48) + 8 * v25) = v16;
        ++*(v5 + 16);
        if (!v10)
        {
          goto LABEL_7;
        }
      }

      OUTLINED_FUNCTION_20();
      while (++v19 != v21 || (v20 & 1) == 0)
      {
        v22 = v19 == v21;
        if (v19 == v21)
        {
          v19 = 0;
        }

        v20 |= v22;
        if (*(v12 + 8 * v19) != -1)
        {
          OUTLINED_FUNCTION_18_0();
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v14 = v7;
      while (1)
      {
        v7 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        if (v7 >= v11)
        {
          goto LABEL_23;
        }

        v15 = *(v4 + 56 + 8 * v7);
        ++v14;
        if (v15)
        {
          v13 = __clz(__rbit64(v15));
          v10 = (v15 - 1) & v15;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {
LABEL_23:

    *v3 = v5;
  }
}

uint64_t sub_25E605854(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCF9158, &qword_25E63B108);
  result = sub_25E635DB0();
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
    if (v9)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v9));
        v9 &= v9 - 1;
LABEL_12:
        sub_25E5F82CC(*(v3 + 48) + 40 * (v12 | (v6 << 6)), v26);
        result = sub_25E635D80();
        v15 = -1 << *(v5 + 32);
        v16 = result & ~v15;
        v17 = v16 >> 6;
        if (((-1 << v16) & ~*(v11 + 8 * (v16 >> 6))) == 0)
        {
          break;
        }

        v18 = __clz(__rbit64((-1 << v16) & ~*(v11 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v11 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
        v23 = *(v5 + 48) + 40 * v18;
        v24 = v26[0];
        v25 = v26[1];
        *(v23 + 32) = v27;
        *v23 = v24;
        *(v23 + 16) = v25;
        ++*(v5 + 16);
        if (!v9)
        {
          goto LABEL_7;
        }
      }

      v19 = 0;
      v20 = (63 - v15) >> 6;
      while (++v17 != v20 || (v19 & 1) == 0)
      {
        v21 = v17 == v20;
        if (v17 == v20)
        {
          v17 = 0;
        }

        v19 |= v21;
        v22 = *(v11 + 8 * v17);
        if (v22 != -1)
        {
          v18 = __clz(__rbit64(~v22)) + (v17 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
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

          v2 = v1;
          goto LABEL_25;
        }

        v14 = *(v3 + 56 + 8 * v6);
        ++v13;
        if (v14)
        {
          v12 = __clz(__rbit64(v14));
          v9 = (v14 - 1) & v14;
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
    *v2 = v5;
  }

  return result;
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

uint64_t sub_25E605AF0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_25E605B58()
{
  result = qword_27FCF8FC8[0];
  if (!qword_27FCF8FC8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FCF8FC8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SummaryItemRequirementEvaluationResult(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_25E605D10(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_25E605D50(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t getEnumTagSinglePayload for PartOfWeek(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
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

    v5 = (*a1 | (v4 << 8)) - 2;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v5 = v6 - 2;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *sub_25E605E34(_BYTE *result, unsigned int a2, unsigned int a3)
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
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

uint64_t OUTLINED_FUNCTION_6_2(uint64_t a1, uint64_t *a2, uint64_t *a3)
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
}

uint64_t EventRecorderDiagramRenderer.Color.hashValue.getter()
{
  v1 = *v0;
  sub_25E636110();
  MEMORY[0x25F8B9DE0](v1);
  return sub_25E636130();
}

uint64_t EventRecorderDiagramRenderer.__allocating_init(referenceDate:colorForTag:)()
{
  OUTLINED_FUNCTION_37();
  v0 = swift_allocObject();
  EventRecorderDiagramRenderer.init(referenceDate:colorForTag:)();
  return v0;
}

uint64_t EventRecorderDiagramRenderer.init(referenceDate:colorForTag:)()
{
  OUTLINED_FUNCTION_37();
  v4 = MEMORY[0x277D84F90];
  *(v1 + OBJC_IVAR____TtC22PhotosIntelligenceCore28EventRecorderDiagramRenderer_eventIntervals) = MEMORY[0x277D84F90];
  *(v1 + OBJC_IVAR____TtC22PhotosIntelligenceCore28EventRecorderDiagramRenderer_stageNames) = v4;
  *(v1 + OBJC_IVAR____TtC22PhotosIntelligenceCore28EventRecorderDiagramRenderer_height) = 0;
  *(v1 + OBJC_IVAR____TtC22PhotosIntelligenceCore28EventRecorderDiagramRenderer_fullDuration) = 0;
  v5 = MEMORY[0x277D84F98];
  *(v1 + OBJC_IVAR____TtC22PhotosIntelligenceCore28EventRecorderDiagramRenderer_maxSublevelByColor) = MEMORY[0x277D84F98];
  *(v1 + OBJC_IVAR____TtC22PhotosIntelligenceCore28EventRecorderDiagramRenderer_thermalStateByX) = v5;
  *(v1 + OBJC_IVAR____TtC22PhotosIntelligenceCore28EventRecorderDiagramRenderer_cpuLoadByX) = v5;
  *(v1 + OBJC_IVAR____TtC22PhotosIntelligenceCore28EventRecorderDiagramRenderer_width) = 0x40A3880000000000;
  *(v1 + OBJC_IVAR____TtC22PhotosIntelligenceCore28EventRecorderDiagramRenderer_xMargin) = 0x405E000000000000;
  *(v1 + OBJC_IVAR____TtC22PhotosIntelligenceCore28EventRecorderDiagramRenderer_yHeader) = 0x4034000000000000;
  *(v1 + OBJC_IVAR____TtC22PhotosIntelligenceCore28EventRecorderDiagramRenderer_yThermalHigh) = 0x4043000000000000;
  *(v1 + OBJC_IVAR____TtC22PhotosIntelligenceCore28EventRecorderDiagramRenderer_yCPULoadHigh) = 0x4043000000000000;
  *(v1 + OBJC_IVAR____TtC22PhotosIntelligenceCore28EventRecorderDiagramRenderer_ySpacing) = 0x4018000000000000;
  *(v1 + OBJC_IVAR____TtC22PhotosIntelligenceCore28EventRecorderDiagramRenderer_blockHeight) = 0x4043000000000000;
  *(v1 + OBJC_IVAR____TtC22PhotosIntelligenceCore28EventRecorderDiagramRenderer_legendLineHeight) = 0x4034000000000000;
  *(v1 + OBJC_IVAR____TtC22PhotosIntelligenceCore28EventRecorderDiagramRenderer_legendNumberOfNamesPerRow) = 4;
  v6 = OBJC_IVAR____TtC22PhotosIntelligenceCore28EventRecorderDiagramRenderer_referenceDate;
  sub_25E635570();
  OUTLINED_FUNCTION_1_2();
  (*(v7 + 32))(v1 + v6, v3);
  v8 = (v1 + OBJC_IVAR____TtC22PhotosIntelligenceCore28EventRecorderDiagramRenderer_colorForTag);
  *v8 = v2;
  v8[1] = v0;
  *(v1 + OBJC_IVAR____TtC22PhotosIntelligenceCore28EventRecorderDiagramRenderer_yStride) = 0x4046000000000000;
  return v1;
}

void sub_25E606498(uint64_t a1)
{
  OUTLINED_FUNCTION_11_2();
  v293 = v2;
  v294 = v3;
  v4 = v1;
  v6 = v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCF9180, &qword_25E63B180);
  MEMORY[0x28223BE20](v7 - 8);
  OUTLINED_FUNCTION_7();
  v268 = v8 - v9;
  v11 = MEMORY[0x28223BE20](v10);
  v270 = &v253 - v12;
  MEMORY[0x28223BE20](v11);
  v14 = &v253 - v13;
  v15 = sub_25E635570();
  OUTLINED_FUNCTION_5();
  v17 = v16;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_2_3();
  v21 = v20 - v19;
  v22 = type metadata accessor for RootEventRecorder.Event(0);
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v26);
  v29 = &v253 - v28;
  v30 = *(v6 + 16);
  if (v30)
  {
    v31 = v6 + ((*(v27 + 80) + 32) & ~*(v27 + 80));
    v32 = *(v27 + 72);
    v281 = v31;
    sub_25E60AF74(v31 + v32 * (v30 - 1), &v253 - v28);
    v33 = *(v4 + OBJC_IVAR____TtC22PhotosIntelligenceCore28EventRecorderDiagramRenderer_fullDuration);
    v34 = v22[8];
    if (v33 <= *(v29 + v34))
    {
      v33 = *(v29 + v34);
    }

    *(v4 + OBJC_IVAR____TtC22PhotosIntelligenceCore28EventRecorderDiagramRenderer_fullDuration) = v33;
    if (v33 > 0.0)
    {
      v274 = v32;
      v279 = v30;
      v263 = v29;
      v265 = v14;
      sub_25E635560();
      sub_25E635540();
      v260 = v35;
      v36 = *(v17 + 8);
      v36(v21, v15);
      sub_25E635560();
      sub_25E635540();
      v38 = v37;
      v36(v21, v15);
      v292 = MEMORY[0x277D84FA0];
      v280 = OBJC_IVAR____TtC22PhotosIntelligenceCore28EventRecorderDiagramRenderer_thermalStateByX;
      v278 = OBJC_IVAR____TtC22PhotosIntelligenceCore28EventRecorderDiagramRenderer_cpuLoadByX;
      v259 = (v4 + OBJC_IVAR____TtC22PhotosIntelligenceCore28EventRecorderDiagramRenderer_colorForTag);
      v258 = OBJC_IVAR____TtC22PhotosIntelligenceCore28EventRecorderDiagramRenderer_eventIntervals;
      v39 = OBJC_IVAR____TtC22PhotosIntelligenceCore28EventRecorderDiagramRenderer_maxSublevelByColor;
      v266 = OBJC_IVAR____TtC22PhotosIntelligenceCore28EventRecorderDiagramRenderer_height;
      v275 = OBJC_IVAR____TtC22PhotosIntelligenceCore28EventRecorderDiagramRenderer_stageNames;
      OUTLINED_FUNCTION_41(v4 + OBJC_IVAR____TtC22PhotosIntelligenceCore28EventRecorderDiagramRenderer_stageNames, &v291);
      v264 = v39;
      OUTLINED_FUNCTION_41(v4 + v39, &v290);
      v261 = 0;
      v262 = 0x800000025E638DA0;
      v40 = MEMORY[0x277D84F98];
      v41 = 0.5;
      v42 = 2.0;
      v271 = MEMORY[0x277D84F98];
      v43 = MEMORY[0x277D84F98];
      v277 = MEMORY[0x277D84F98];
      v282 = v22;
      OUTLINED_FUNCTION_44();
      v44 = v281;
      while (1)
      {
        v281 = v44;
        sub_25E60AF74(v44, v29);
        v45 = *(v29 + v22[8]);
        v46 = v45 * 2260.0 / *(v4 + OBJC_IVAR____TtC22PhotosIntelligenceCore28EventRecorderDiagramRenderer_fullDuration) + 120.0;
        v47 = *(v29 + v22[10]);
        OUTLINED_FUNCTION_17_2(v4 + v280);
        swift_isUniquelyReferenced_nonNull_native();
        OUTLINED_FUNCTION_40();
        OUTLINED_FUNCTION_7_3();
        if (__OFADD__(v50, v51))
        {
          __break(1u);
LABEL_185:
          __break(1u);
LABEL_186:
          __break(1u);
LABEL_187:
          __break(1u);
LABEL_188:
          __break(1u);
LABEL_189:
          __break(1u);
LABEL_190:
          __break(1u);
LABEL_191:
          __break(1u);
LABEL_192:
          __break(1u);
LABEL_193:
          __break(1u);
LABEL_194:
          __break(1u);
LABEL_195:
          __break(1u);
LABEL_196:
          __break(1u);
LABEL_197:
          __break(1u);
LABEL_198:
          __break(1u);
LABEL_199:
          __break(1u);
LABEL_200:
          __break(1u);
LABEL_201:
          __break(1u);
LABEL_202:
          __break(1u);
LABEL_203:
          __break(1u);
LABEL_204:
          __break(1u);
LABEL_205:
          __break(1u);
LABEL_206:
          __break(1u);
          goto LABEL_207;
        }

        v52 = v48;
        v53 = v49;
        v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCF9188, &qword_25E63B188);
        if (OUTLINED_FUNCTION_54(v54))
        {
          sub_25E60D614(v46);
          OUTLINED_FUNCTION_4_5();
          if (!v216)
          {
            goto LABEL_210;
          }

          v52 = v55;
        }

        v56 = v287;
        if (v53)
        {
          *(*(v287 + 56) + 8 * v52) = v47;
        }

        else
        {
          OUTLINED_FUNCTION_18_1(v287);
          *(v57 + 8 * v52) = v47;
          v58 = *(v56 + 16);
          v59 = __OFADD__(v58, 1);
          v60 = v58 + 1;
          if (v59)
          {
            goto LABEL_190;
          }

          *(v56 + 16) = v60;
        }

        *(v4 + v280) = v56;
        swift_endAccess();
        v29 = v283;
        v61 = v283 + v22[11];
        v62 = *v61;
        v276 = *(v61 + 16);
        v273 = v62;
        v63 = *(v61 + 32);
        OUTLINED_FUNCTION_17_2(v4 + v278);
        if (v63)
        {
          sub_25E60D614(v46);
          if (v64)
          {
            v30 = v278;
            swift_isUniquelyReferenced_nonNull_native();
            v287 = *(v4 + v30);
            *(v4 + v30) = 0x8000000000000000;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCF91B8, &unk_25E63B1B0);
            sub_25E635EA0();
            v65 = v287;
            sub_25E635EB0();
            *(v4 + v30) = v65;
          }
        }

        else
        {
          swift_isUniquelyReferenced_nonNull_native();
          OUTLINED_FUNCTION_40();
          OUTLINED_FUNCTION_7_3();
          if (__OFADD__(v68, v69))
          {
            goto LABEL_191;
          }

          v70 = v66;
          v71 = v67;
          v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCF91B8, &unk_25E63B1B0);
          if (OUTLINED_FUNCTION_54(v72))
          {
            sub_25E60D614(v46);
            OUTLINED_FUNCTION_4_5();
            if (!v216)
            {
              goto LABEL_210;
            }

            v70 = v73;
          }

          v74 = v278;
          v75 = v287;
          if (v71)
          {
            v76 = (*(v287 + 56) + 32 * v70);
            v77 = v276;
            *v76 = v273;
            v76[1] = v77;
          }

          else
          {
            OUTLINED_FUNCTION_18_1(v287);
            v79 = (v78 + 32 * v70);
            v80 = v276;
            *v79 = v273;
            v79[1] = v80;
            v81 = *(v75 + 16);
            v59 = __OFADD__(v81, 1);
            v82 = v81 + 1;
            if (v59)
            {
              goto LABEL_193;
            }

            *(v75 + 16) = v82;
          }

          *(v4 + v74) = v75;
        }

        swift_endAccess();
        if (v38 <= v45)
        {
          v38 = v45;
        }

        v83 = v29 + v22[9];
        v84 = *(v83 + 8);
        v85 = *(v84 + 16);
        if (!v85)
        {
          goto LABEL_37;
        }

        v86 = *(v84 + 8 * v85 + 24);
        v87 = v86 + 1;
        if (__OFADD__(v86, 1))
        {
          goto LABEL_187;
        }

        if ((v87 & 0x8000000000000000) != 0)
        {
          goto LABEL_188;
        }

        v88 = *v83;
        v89 = *(*v83 + 16);
        if (v89 < v87)
        {
          goto LABEL_189;
        }

        if (v89 != v87)
        {
          break;
        }

LABEL_39:
        v92 = v275;
        v93 = *(v4 + v275);
        v94 = sub_25E607A48(v88, v93);
        if (v95)
        {
          v22 = v93[2];
          OUTLINED_FUNCTION_17_2(v4 + v92);

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *(v4 + v92) = v93;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            OUTLINED_FUNCTION_32();
            v93 = sub_25E60A598(v240, v241, v242, v243);
            *(v4 + v92) = v93;
          }

          v29 = v93[2];
          if (v29 >= v93[3] >> 1)
          {
            OUTLINED_FUNCTION_32();
            v93 = sub_25E60A598(v244, v245, v246, v247);
          }

          v93[2] = v29 + 1;
          v93[v29 + 4] = v88;
          *(v4 + v275) = v93;
          swift_endAccess();
          OUTLINED_FUNCTION_44();
        }

        else
        {
          v22 = v94;
        }

        if (*(v43 + 16) && (v97 = sub_25E60D4B8(v88), (v98 & 1) != 0))
        {
          *&v276 = *(*(v43 + 56) + 8 * v97);
        }

        else
        {
          *&v276 = 0;
        }

        if (!v40[2] || (v99 = v40, sub_25E60D4B8(v88), (v100 & 1) == 0))
        {
          v289[0] = *v83;
          sub_25E6146C0(&v287);
          v30 = v288;
          v285 = v287;
          v286 = v288;
          v83 = sub_25E61459C(v101);

          if (v40[2] && (v102 = sub_25E60D4B8(v83), (v103 & 1) != 0))
          {
            v104 = *(v40[7] + 8 * v102);
          }

          else
          {
            v104 = 0;
          }

          if (*(v43 + 16))
          {
            v105 = sub_25E60D4B8(v83);
            v107 = v106;

            if (v107)
            {
              v108 = *(*(v43 + 56) + 8 * v105);
LABEL_61:
              v59 = __OFADD__(v104, v108);
              v29 = v104 + v108;
              if (v59)
              {
                goto LABEL_185;
              }

              swift_isUniquelyReferenced_nonNull_native();
              *&v289[0] = v40;
              v99 = v40;
              sub_25E60D4B8(v88);
              OUTLINED_FUNCTION_15_2();
              if (__OFADD__(v109, v110))
              {
                goto LABEL_186;
              }

              OUTLINED_FUNCTION_52();
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCF9190, &qword_25E63B190);
              OUTLINED_FUNCTION_8_3();
              if (sub_25E635EA0())
              {
                OUTLINED_FUNCTION_48();
                OUTLINED_FUNCTION_4_5();
                if (!v216)
                {
                  goto LABEL_209;
                }

                v30 = v111;
              }

              v40 = *&v289[0];
              if (v83)
              {
                *(*(*&v289[0] + 56) + 8 * v30) = v29;
              }

              else
              {
                OUTLINED_FUNCTION_2_7(*&v289[0] + 8 * (v30 >> 6));
                *(v40[6] + 8 * v30) = v88;
                *(v40[7] + 8 * v30) = v29;
                v112 = v40[2];
                v59 = __OFADD__(v112, 1);
                v113 = v112 + 1;
                if (v59)
                {
                  goto LABEL_192;
                }

                v40[2] = v113;
              }

              OUTLINED_FUNCTION_44();
              goto LABEL_72;
            }
          }

          else
          {
          }

          v108 = 0;
          goto LABEL_61;
        }

LABEL_72:
        switch(*(v29 + v282[6]))
        {
          case 1:
            OUTLINED_FUNCTION_43();
            if (!v125)
            {
              goto LABEL_91;
            }

            sub_25E60D524(v29);
            if ((v126 & 1) == 0)
            {
              goto LABEL_91;
            }

            OUTLINED_FUNCTION_28();
            v130 = v267;
            sub_25E60AF74(v128 + v127 * v129, v267);
            sub_25E60DD54(v130, v269);
            v131 = (v22 + v41) * 44.0 + 96.0;
            OUTLINED_FUNCTION_29();
            if (v133 > 30 || v46 - v132 < v42)
            {
              goto LABEL_87;
            }

            CGPointMake();
            OUTLINED_FUNCTION_29();
            v296 = CGRectInset(v295, 0.0, v205 + v205);
            x = v296.origin.x;
            y = v296.origin.y;
            width = v296.size.width;
            height = v296.size.height;
            v209 = *v259;
            v210 = v282;
            v211 = (v29 + v282[7]);
            v212 = v211[1];
            *&v289[0] = *v211;
            *(&v289[0] + 1) = v212;

            v209(&v287, v289);

            LODWORD(v273) = v287;
            v213 = (v29 + *(v210 + 20));
            v214 = *v213;
            v215 = v213[1];
            v216 = *v213 == 0xD000000000000029 && v262 == v215;
            if (v216 || (sub_25E636070() & 1) != 0)
            {
              v217 = v271;
              if (__OFADD__(v261, 1))
              {
                goto LABEL_208;
              }

              v218 = v214;
              v219 = 0;
              v220 = v260;
              v221 = v45;
              v256 = v261;
              v260 = v45;
              ++v261;
            }

            else
            {
              v218 = v214;
              v220 = 0.0;
              v221 = 0.0;
              v256 = 0;
              v219 = 1;
              v217 = v271;
            }

            if (*(v217 + 16) && (v222 = sub_25E60D4B8(v88), (v223 & 1) != 0))
            {
              if (*(*(v271 + 56) + 8 * v222) == v276)
              {
                goto LABEL_161;
              }
            }

            else
            {
              OUTLINED_FUNCTION_29();
              if (!v224)
              {
LABEL_161:

                v255 = v218;
                goto LABEL_164;
              }
            }

            v255 = 0;
            v215 = 0;
LABEL_164:
            if (v219)
            {
              v225 = 0.0;
            }

            else
            {
              v225 = v220;
            }

            v254 = v225;
            if (v219)
            {
              v226 = 0.0;
            }

            else
            {
              v226 = v221;
            }

            v253 = v226;
            LOBYTE(v285) = v219;
            v284 = v219;
            v29 = v258;
            OUTLINED_FUNCTION_17_2(v4 + v258);

            sub_25E60A2E0(sub_25E60A480);
            v227 = *(*(v4 + v29) + 16);
            sub_25E60A36C(v227, sub_25E60A480);
            v228 = *(v4 + v29);
            *(v228 + 16) = v227 + 1;
            v229 = v228 + 104 * v227;
            v230 = y;
            *(v229 + 32) = x;
            *(v229 + 40) = v230;
            *(v229 + 48) = width;
            *(v229 + 56) = height;
            v231 = v273;
            *(v229 + 64) = v273;
            v232 = v256;
            *(v229 + 72) = v276;
            *(v229 + 80) = v232;
            *(v229 + 88) = v219;
            v233 = v253;
            *(v229 + 96) = v254;
            *(v229 + 104) = v233;
            *(v229 + 112) = v219;
            v30 = v255;
            *(v229 + 120) = v255;
            *(v229 + 128) = v215;
            *(v4 + v29) = v228;
            swift_endAccess();
            v234 = *(v4 + v264);
            v235 = *(v234 + 16);
            if (v235)
            {
              sub_25E60D5A8(v231);
              OUTLINED_FUNCTION_44();
              v41 = 0.5;
              v42 = 2.0;
              if (v237)
              {
                v235 = *(*(v234 + 56) + 8 * v236);
              }

              else
              {
                v235 = 0;
              }
            }

            else
            {
              v29 = v283;
              v41 = 0.5;
              v42 = 2.0;
            }

            if (v276 <= v235)
            {
              v238 = v235;
            }

            else
            {
              v238 = v276;
            }

            v83 = v264;
            OUTLINED_FUNCTION_17_2(v4 + v264);
            v239 = swift_isUniquelyReferenced_nonNull_native();
            v287 = *(v4 + v83);
            sub_25E60DDB8(v238, v273, v239);
            *(v4 + v83) = v287;
            swift_endAccess();
            if (v215)
            {
              sub_25E603328(v289, v30, v215);
            }

LABEL_87:
            OUTLINED_FUNCTION_49();
            v136 = *(v4 + v135);
            if (v136 <= v131 + 38.0)
            {
              v136 = v131 + 38.0;
            }

            *(v4 + v135) = v136;
            v137 = v277;
            v138 = sub_25E60D524(v29);
            if (v139)
            {
              v140 = v138;
              swift_isUniquelyReferenced_nonNull_native();
              *&v289[0] = v137;
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCF91A0, &unk_25E63B1A0);
              OUTLINED_FUNCTION_8_3();
              sub_25E635EA0();
              LOBYTE(v83) = v289[0];
              v141 = *(*&v289[0] + 48);
              v142 = sub_25E6355A0();
              OUTLINED_FUNCTION_1_2();
              (*(v143 + 8))(v141 + *(v143 + 72) * v140, v142);
              OUTLINED_FUNCTION_28();
              v146 = v265;
              sub_25E60DD54(v144 + v140 * v145, v265);
              OUTLINED_FUNCTION_14_2();
              sub_25E60EF80(&qword_27FCF91A8, v147);
              OUTLINED_FUNCTION_27();
              sub_25E635EB0();
            }

            else
            {
              v146 = v265;
            }

            OUTLINED_FUNCTION_32();
            __swift_storeEnumTagSinglePayload(v194, v195, v196, v197);
            sub_25E60DCEC(v146);
            OUTLINED_FUNCTION_29();
            v29 = v198 - 1;
            if (__OFSUB__(v198, 1))
            {
              goto LABEL_202;
            }

            swift_isUniquelyReferenced_nonNull_native();
            OUTLINED_FUNCTION_26();
            OUTLINED_FUNCTION_15_2();
            v22 = (v199 + v200);
            if (__OFADD__(v199, v200))
            {
              goto LABEL_204;
            }

            OUTLINED_FUNCTION_52();
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCF9190, &qword_25E63B190);
            OUTLINED_FUNCTION_8_3();
            if (sub_25E635EA0())
            {
              OUTLINED_FUNCTION_48();
              OUTLINED_FUNCTION_4_5();
              v22 = v282;
              if (!v216)
              {
LABEL_209:
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCF9198, &qword_25E63B198);
                goto LABEL_210;
              }

              v30 = v201;
            }

            else
            {
              OUTLINED_FUNCTION_45();
            }

            v43 = *&v289[0];
            if (v83)
            {
              *(*(*&v289[0] + 56) + 8 * v30) = v29;
            }

            else
            {
              OUTLINED_FUNCTION_1_5();
              if (v59)
              {
                goto LABEL_206;
              }

              *(v43 + 16) = v203;
            }

            sub_25E60AFD8(v269);
LABEL_147:
            OUTLINED_FUNCTION_44();
LABEL_148:
            v204 = v281;
            sub_25E60AFD8(v29);
            v44 = v204 + v274;
            if (!--v279)
            {
              v248 = v292;
              sub_25E607BCC(v277, v43);
              v249 = OUTLINED_FUNCTION_51();
              sub_25E60AFD8(v249);
              v250 = *(v248 + 16);

              if (!__OFADD__(v250, 4))
              {
                OUTLINED_FUNCTION_49();
                *(v4 + v251) = v252 + *(v4 + v251);

                goto LABEL_183;
              }

LABEL_207:
              __break(1u);
LABEL_208:
              __break(1u);
              while (1)
              {
LABEL_210:
                sub_25E6360A0();
                __break(1u);
LABEL_211:
                sub_25E6355A0();
              }
            }

            break;
          case 2:
            OUTLINED_FUNCTION_43();
            if (!v148 || (sub_25E60D524(v29), v30 = v277, (v149 & 1) == 0))
            {
              OUTLINED_FUNCTION_42();
              OUTLINED_FUNCTION_45();
              __swift_storeEnumTagSinglePayload(v164, v165, v166, v22);

              sub_25E60DCEC(v99);
              goto LABEL_148;
            }

            OUTLINED_FUNCTION_28();
            OUTLINED_FUNCTION_42();
            sub_25E60AF74(v150, v99);
            v151 = 1;
            v152 = v29;
            v153 = v282;
            __swift_storeEnumTagSinglePayload(v99, 0, 1, v282);
            sub_25E60DCEC(v99);
            v154 = sub_25E60D524(v152);
            if (v155)
            {
              v156 = v154;
              swift_isUniquelyReferenced_nonNull_native();
              *&v289[0] = v30;
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCF91A0, &unk_25E63B1A0);
              OUTLINED_FUNCTION_8_3();
              sub_25E635EA0();
              v157 = *(*&v289[0] + 48);
              v158 = sub_25E6355A0();
              OUTLINED_FUNCTION_1_2();
              (*(v159 + 8))(v157 + *(v159 + 72) * v156, v158);
              OUTLINED_FUNCTION_28();
              v162 = v268;
              sub_25E60DD54(v160 + v156 * v161, v268);
              OUTLINED_FUNCTION_14_2();
              sub_25E60EF80(&qword_27FCF91A8, v163);
              OUTLINED_FUNCTION_27();
              sub_25E635EB0();
              v151 = 0;
            }

            else
            {
              v162 = v268;
            }

            __swift_storeEnumTagSinglePayload(v162, v151, 1, v153);
            sub_25E60DCEC(v162);
            OUTLINED_FUNCTION_29();
            v29 = v190 - 1;
            if (__OFSUB__(v190, 1))
            {
              goto LABEL_201;
            }

            swift_isUniquelyReferenced_nonNull_native();
            OUTLINED_FUNCTION_26();
            OUTLINED_FUNCTION_15_2();
            v22 = (v191 + v192);
            if (__OFADD__(v191, v192))
            {
              goto LABEL_203;
            }

            OUTLINED_FUNCTION_52();
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCF9190, &qword_25E63B190);
            OUTLINED_FUNCTION_8_3();
            if (sub_25E635EA0())
            {
              OUTLINED_FUNCTION_48();
              OUTLINED_FUNCTION_4_5();
              v22 = v282;
              if (!v216)
              {
                goto LABEL_209;
              }

              v30 = v193;
            }

            else
            {
              OUTLINED_FUNCTION_45();
            }

            v43 = *&v289[0];
            if (v151)
            {
              v186 = *(*&v289[0] + 56);
LABEL_138:
              *(v186 + 8 * v30) = v29;
            }

            else
            {
              OUTLINED_FUNCTION_1_5();
              if (v59)
              {
                goto LABEL_205;
              }

              *(v43 + 16) = v202;
            }

            goto LABEL_147;
          case 3:
LABEL_91:

            OUTLINED_FUNCTION_45();
            goto LABEL_148;
          default:
            sub_25E60AF74(v29, v272);
            v114 = v277;
            swift_isUniquelyReferenced_nonNull_native();
            *&v289[0] = v114;
            sub_25E60D524(v29);
            OUTLINED_FUNCTION_7_3();
            v119 = v117 + v118;
            if (__OFADD__(v117, v118))
            {
              goto LABEL_194;
            }

            v120 = v115;
            v121 = v116;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCF91A0, &unk_25E63B1A0);
            OUTLINED_FUNCTION_8_3();
            if ((sub_25E635EA0() & 1) == 0)
            {
              goto LABEL_78;
            }

            sub_25E60D524(v29);
            OUTLINED_FUNCTION_4_5();
            if (!v216)
            {
              goto LABEL_211;
            }

            v120 = v122;
LABEL_78:
            v277 = *&v289[0];
            if (v121)
            {
              OUTLINED_FUNCTION_28();
              sub_25E60DEC8(v272, v123 + v120 * v124);
            }

            else
            {
              OUTLINED_FUNCTION_5_3(*&v289[0] + 8 * (v120 >> 6));
              v168 = *(v167 + 48);
              sub_25E6355A0();
              OUTLINED_FUNCTION_1_2();
              (*(v169 + 16))(v168 + *(v169 + 72) * v120, v29);
              OUTLINED_FUNCTION_53();
              OUTLINED_FUNCTION_28();
              sub_25E60DD54(v272, v170 + v120 * v171);
              v172 = *(v277 + 16);
              v59 = __OFADD__(v172, 1);
              v173 = v172 + 1;
              if (v59)
              {
                goto LABEL_198;
              }

              *(v277 + 16) = v173;
            }

            OUTLINED_FUNCTION_29();
            v29 = v174 + 1;
            if (__OFADD__(v174, 1))
            {
              goto LABEL_195;
            }

            swift_isUniquelyReferenced_nonNull_native();
            OUTLINED_FUNCTION_26();
            OUTLINED_FUNCTION_15_2();
            if (__OFADD__(v175, v176))
            {
              goto LABEL_196;
            }

            OUTLINED_FUNCTION_52();
            v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCF9190, &qword_25E63B190);
            if ((sub_25E635EA0() & 1) == 0)
            {
              goto LABEL_105;
            }

            OUTLINED_FUNCTION_48();
            OUTLINED_FUNCTION_4_5();
            if (!v216)
            {
              goto LABEL_209;
            }

            v119 = v177;
LABEL_105:
            v178 = v271;
            v43 = *&v289[0];
            if (v121)
            {
              *(*(*&v289[0] + 56) + 8 * v119) = v29;
            }

            else
            {
              OUTLINED_FUNCTION_1_5();
              if (v59)
              {
                goto LABEL_199;
              }

              *(v43 + 16) = v179;
            }

            if (v29 >= 30)
            {
              v29 = 30;
            }

            swift_isUniquelyReferenced_nonNull_native();
            *&v289[0] = v178;
            sub_25E60D4B8(v88);
            v181 = v180;
            OUTLINED_FUNCTION_7_3();
            if (__OFADD__(v183, v184))
            {
              goto LABEL_197;
            }

            v30 = v182;
            if (sub_25E635EA0())
            {
              OUTLINED_FUNCTION_48();
              OUTLINED_FUNCTION_4_5();
              v22 = v282;
              if (!v216)
              {
                goto LABEL_209;
              }

              v30 = v185;
            }

            else
            {
              OUTLINED_FUNCTION_45();
            }

            v271 = *&v289[0];
            if (v181)
            {
              v186 = *(*&v289[0] + 56);
              goto LABEL_138;
            }

            OUTLINED_FUNCTION_2_7(*&v289[0] + 8 * (v30 >> 6));
            *(v187[6] + 8 * v30) = v88;
            *(v187[7] + 8 * v30) = v29;
            v188 = v187[2];
            v59 = __OFADD__(v188, 1);
            v189 = v188 + 1;
            if (v59)
            {
              goto LABEL_200;
            }

            v187[2] = v189;
            goto LABEL_147;
        }
      }

      if (v87)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCF91B0, &unk_25E63BD20);
        v90 = OUTLINED_FUNCTION_35();
        _swift_stdlib_malloc_size(v90);
        OUTLINED_FUNCTION_3_6();
        v90[2] = v87;
        v90[3] = v91;
        swift_arrayInitWithCopy();
        v88 = v90;
        goto LABEL_39;
      }

LABEL_37:
      v88 = MEMORY[0x277D84F90];
      goto LABEL_39;
    }

    sub_25E60AFD8(v29);
  }

LABEL_183:
  OUTLINED_FUNCTION_12_1();
}

uint64_t sub_25E607A48(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2)
  {
    v4 = 0;
    v5 = *(a1 + 16);
    v6 = a2 + 32;
    v7 = (a1 + 40);
    do
    {
      v8 = *(v6 + 8 * v4);
      if (*(v8 + 16) == v5)
      {
        if (!v5 || v8 == a1)
        {
          return v4;
        }

        v9 = (v8 + 40);
        v10 = v7;
        v11 = v5;
        while (1)
        {
          v12 = *(v9 - 1) == *(v10 - 1) && *v9 == *v10;
          if (!v12 && (sub_25E636070() & 1) == 0)
          {
            break;
          }

          v9 += 2;
          v10 += 2;
          if (!--v11)
          {
            return v4;
          }
        }
      }

      ++v4;
    }

    while (v4 != v2);
  }

  return 0;
}

uint64_t sub_25E607B24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_25E60D660(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = *(*(a3 + 56) + 16 * v4);

  return v6;
}

uint64_t sub_25E607B7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_25E60D6D8(a1, a2);
  if (v3)
  {
  }

  else
  {
    return 0;
  }
}

void sub_25E607BCC(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_11_2();
  v200 = v3;
  v201 = v4;
  v170 = v2;
  v6 = v5;
  v164 = v7;
  v172 = v8;
  v173 = v9;
  v11 = v10;
  v188 = type metadata accessor for RootEventRecorder.Event(0);
  OUTLINED_FUNCTION_5();
  v184 = v12;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_7();
  v16 = v14 - v15;
  MEMORY[0x28223BE20](v17);
  v183 = &v160 - v18;
  v189 = sub_25E6355A0();
  OUTLINED_FUNCTION_5();
  v20 = v19;
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_2_3();
  v180 = v23 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCF9260, &qword_25E63B328);
  MEMORY[0x28223BE20](v24 - 8);
  OUTLINED_FUNCTION_7();
  v27 = v25 - v26;
  MEMORY[0x28223BE20](v28);
  v30 = &v160 - v29;
  v199 = v6;
  v198 = MEMORY[0x277D84FA0];
  v31 = v11 + 64;
  v32 = 1 << *(v11 + 32);
  v33 = -1;
  if (v32 < 64)
  {
    v33 = ~(-1 << v32);
  }

  v34 = v33 & *(v11 + 64);
  v35 = OBJC_IVAR____TtC22PhotosIntelligenceCore28EventRecorderDiagramRenderer_stageNames;
  v165 = OBJC_IVAR____TtC22PhotosIntelligenceCore28EventRecorderDiagramRenderer_eventIntervals;
  v163 = OBJC_IVAR____TtC22PhotosIntelligenceCore28EventRecorderDiagramRenderer_height;

  v185 = v11;

  v169 = v35;
  OUTLINED_FUNCTION_41(v170 + v35, &v197);
  v36 = 0;
  v37 = (v32 + 63) >> 6;
  v177 = v20 + 16;
  v176 = v20 + 32;
  v187 = 0x800000025E638F30;
  v181 = v20;
  v186 = (v20 + 8);
  v182 = v16;
  v179 = v27;
  v178 = v30;
  v175 = v11 + 64;
  v174 = v37;
  if (v34)
  {
    while (1)
    {
      v38 = v36;
LABEL_9:
      v39 = __clz(__rbit64(v34));
      v34 &= v34 - 1;
      v40 = v39 | (v38 << 6);
      v41 = v185;
      (*(v181 + 16))(v180, *(v185 + 48) + *(v181 + 72) * v40, v189);
      v42 = v183;
      sub_25E60AF74(*(v41 + 56) + *(v184 + 72) * v40, v183);
      v43 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCF9268, &qword_25E63B330) + 48);
      v27 = v179;
      v44 = OUTLINED_FUNCTION_46();
      v45(v44);
      sub_25E60DD54(v42, v27 + v43);
      OUTLINED_FUNCTION_32();
      __swift_storeEnumTagSinglePayload(v46, v47, v48, v49);
      v16 = v182;
      v30 = v178;
      v31 = v175;
      v37 = v174;
LABEL_10:
      v50 = OUTLINED_FUNCTION_46();
      sub_25E60EFC4(v50, v51);
      v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCF9268, &qword_25E63B330);
      if (__swift_getEnumTagSinglePayload(v30, 1, v52) == 1)
      {

        OUTLINED_FUNCTION_12_1();
        return;
      }

      sub_25E60DD54(&v30[*(v52 + 48)], v16);
      v53 = (v16 + *(v188 + 20));
      v54 = *v53;
      v55 = v53[1];
      *&v194[0] = *v53;
      *(&v194[0] + 1) = v55;
      v195 = 0xD000000000000011;
      v196 = v187;
      sub_25E60F034();
      if ((sub_25E635D60() & 1) == 0)
      {
        break;
      }

LABEL_12:
      sub_25E60AFD8(v16);
      (*v186)(v30, v189);
      if (!v34)
      {
        goto LABEL_5;
      }
    }

    v57 = (v16 + *(v188 + 36));
    v58 = v57[1];
    v59 = *(v58 + 16);
    v166 = v57;
    if (v59)
    {
      v60 = *(v58 + 8 * v59 + 24);
      v61 = v60 + 1;
      if (__OFADD__(v60, 1))
      {
        goto LABEL_85;
      }

      if ((v61 & 0x8000000000000000) != 0)
      {
        goto LABEL_86;
      }

      v62 = *(*v57 + 16);
      if (v62 < v61)
      {
        goto LABEL_87;
      }

      if (v62 == v61)
      {
        v66 = *v57;

        v65 = v66;
LABEL_24:
        v171 = v65;
        v67 = *(v169 + v170);
        v68 = sub_25E607A48(v65, v67);
        if (v69)
        {
          v168 = v67[2];
          OUTLINED_FUNCTION_49();
          OUTLINED_FUNCTION_17_2(v170 + v70);
          OUTLINED_FUNCTION_23();

          swift_isUniquelyReferenced_nonNull_native();
          OUTLINED_FUNCTION_25();
          OUTLINED_FUNCTION_49();
          *(v71 + v72) = v67;
          v73 = v67;
          if (v74)
          {
            v67 = v169;
          }

          else
          {
            sub_25E60A598(0, (v168 + 1), 1, v67);
            OUTLINED_FUNCTION_25();
            v73 = v150;
            v67 = v169;
            *(v169 + v71) = v150;
          }

          v76 = v73[2];
          v75 = v73[3];
          v77 = v76 + 1;
          if (v76 >= v75 >> 1)
          {
            v167 = (v76 + 1);
            v162 = v76;
            sub_25E60A598((v75 > 1), v76 + 1, 1, v73);
            OUTLINED_FUNCTION_25();
            v73 = v151;
          }

          v73[2] = v77;
          v73[v76 + 4] = v171;
          *(v67 + v71) = v73;
          swift_endAccess();
        }

        else
        {
          v168 = v68;
        }

        OUTLINED_FUNCTION_42();
        v78 = v67[2];
        v173 = v67;
        if (v78 && (v79 = OUTLINED_FUNCTION_23(), sub_25E60D4B8(v79), (v80 & 1) != 0))
        {
          OUTLINED_FUNCTION_53();
          v167 = *(v82 + 8 * v81);
        }

        else
        {
          v167 = 0;
        }

        OUTLINED_FUNCTION_43();
        if (v83)
        {
          v84 = OUTLINED_FUNCTION_23();
          sub_25E60D4B8(v84);
          if (v85)
          {
            OUTLINED_FUNCTION_20_0();
LABEL_57:
            v117 = (v168 + 0.5) * 44.0 + 96.0;
            v172 = v87;
            if (v67 <= v164)
            {
              CGPointMake();
              v203 = CGRectInset(v202, 0.0, v67 + v67);
              x = v203.origin.x;
              y = v203.origin.y;
              width = v203.size.width;
              height = v203.size.height;
              if (sub_25E5F7000(v168, v198))
              {
                v166 = 0;
                v162 = 0;
              }

              else
              {
                *&v194[0] = v54;
                *(&v194[0] + 1) = v55;

                MEMORY[0x25F8B9540](0x696E69666E552820, 0xED00002964656873);
                v122 = v194[0];

                v162 = *(&v122 + 1);
                v166 = v122;
                sub_25E603328(v194, v122, *(&v122 + 1));

                sub_25E603558(v194, v168);
              }

              v191 = 1;
              v190 = 1;
              v123 = v170;
              v124 = v165;
              OUTLINED_FUNCTION_17_2(v170 + v165);
              v125 = *(v123 + v124);
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              *(v123 + v124) = v125;
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                OUTLINED_FUNCTION_32();
                v125 = sub_25E60A480(v152, v153, v154, v155);
                *(v170 + v165) = v125;
              }

              v127 = *(v125 + 2);
              if (v127 >= *(v125 + 3) >> 1)
              {
                OUTLINED_FUNCTION_32();
                v125 = sub_25E60A480(v156, v157, v158, v159);
              }

              *(v125 + 2) = v127 + 1;
              v128 = &v125[104 * v127];
              *(v128 + 4) = x;
              *(v128 + 5) = y;
              *(v128 + 6) = width;
              *(v128 + 7) = height;
              v128[64] = 5;
              v129 = *(&v195 + 3);
              *(v128 + 65) = v195;
              *(v128 + 17) = v129;
              v130 = v167;
              *(v128 + 9) = v167;
              *(v128 + 10) = 0;
              v128[88] = 1;
              v131 = *(v193 + 3);
              *(v128 + 89) = v193[0];
              *(v128 + 23) = v131;
              *(v128 + 12) = 0;
              *(v128 + 13) = 0;
              v128[112] = 1;
              v132 = *&v192[3];
              *(v128 + 113) = *v192;
              *(v128 + 29) = v132;
              v133 = v162;
              *(v128 + 15) = v166;
              *(v128 + 16) = v133;
              v134 = v170;
              *(v170 + v165) = v125;
              v67 = v130;
              swift_endAccess();
              v86 = v134;
            }

            v135 = *(v86 + v163);
            if (v135 <= v117 + 38.0)
            {
              v135 = v117 + 38.0;
            }

            *(v86 + v163) = v135;
            if (__OFSUB__(v67, 1))
            {
              goto LABEL_81;
            }

            v168 = v67 - 1;
            OUTLINED_FUNCTION_42();
            LODWORD(v167) = swift_isUniquelyReferenced_nonNull_native();
            *&v194[0] = v67;
            v136 = OUTLINED_FUNCTION_23();
            sub_25E60D4B8(v136);
            OUTLINED_FUNCTION_7_3();
            if (__OFADD__(v139, v140))
            {
              goto LABEL_82;
            }

            v141 = v137;
            LODWORD(v173) = v138;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCF9190, &qword_25E63B190);
            if (sub_25E635EA0())
            {
              v142 = OUTLINED_FUNCTION_23();
              v143 = sub_25E60D4B8(v142);
              v145 = v173;
              if ((v173 & 1) != (v144 & 1))
              {
                goto LABEL_90;
              }

              v141 = v143;
            }

            else
            {
              v145 = v173;
            }

            v173 = *&v194[0];
            if (v145)
            {
              OUTLINED_FUNCTION_50();
              OUTLINED_FUNCTION_23();
            }

            else
            {
              OUTLINED_FUNCTION_5_3(*&v194[0] + 8 * (v141 >> 6));
              *(*(v146 + 48) + 8 * v141) = v171;
              OUTLINED_FUNCTION_50();
              v148 = *(v147 + 16);
              v100 = __OFADD__(v148, 1);
              v149 = v148 + 1;
              if (v100)
              {
                goto LABEL_88;
              }

              *(v147 + 16) = v149;
            }

            goto LABEL_12;
          }
        }

        v194[0] = *v166;
        sub_25E6146C0(&v195);
        v162 = v195;
        v161 = v196;
        v193[0] = v195;
        v193[1] = v196;
        v166 = sub_25E61459C(v88);

        OUTLINED_FUNCTION_43();
        if (v89 && (v90 = OUTLINED_FUNCTION_51(), v172 = v193, sub_25E60D4B8(v90), (v91 & 1) != 0))
        {
          OUTLINED_FUNCTION_53();
          v162 = *(v93 + 8 * v92);
        }

        else
        {
          v162 = 0;
        }

        OUTLINED_FUNCTION_42();
        v94 = OUTLINED_FUNCTION_51();
        if (*&v194[0])
        {
          v161 = sub_25E60D4B8(v94);
          v96 = v95;
          OUTLINED_FUNCTION_51();

          if (v96)
          {
            OUTLINED_FUNCTION_53();
            v98 = *(v97 + 8 * v161);
LABEL_47:
            v99 = v172;
            v100 = __OFADD__(v162, v98);
            v101 = (v162 + v98);
            if (v100)
            {
              goto LABEL_83;
            }

            v172 = v101;
            v102 = v99;
            LODWORD(v166) = swift_isUniquelyReferenced_nonNull_native();
            *&v194[0] = v102;
            v103 = OUTLINED_FUNCTION_23();
            sub_25E60D4B8(v103);
            OUTLINED_FUNCTION_7_3();
            v100 = __OFADD__(v106, v107);
            v108 = v106 + v107;
            if (v100)
            {
              goto LABEL_84;
            }

            LODWORD(v162) = v105;
            v160 = v104;
            v161 = v108;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCF9190, &qword_25E63B190);
            v67 = v194;
            if (sub_25E635EA0())
            {
              v67 = *&v194[0];
              v109 = OUTLINED_FUNCTION_23();
              sub_25E60D4B8(v109);
              if ((v162 & 1) != (v110 & 1))
              {
                goto LABEL_90;
              }

              OUTLINED_FUNCTION_20_0();
            }

            else
            {
              OUTLINED_FUNCTION_20_0();
              v112 = v160;
              v111 = v162;
            }

            v87 = *&v194[0];
            if (v111)
            {
              *(*(*&v194[0] + 56) + 8 * v112) = v172;
            }

            else
            {
              OUTLINED_FUNCTION_5_3(*&v194[0] + 8 * (v112 >> 6));
              *(v113[6] + 8 * v114) = v171;
              *(v113[7] + 8 * v114) = v172;
              v115 = v113[2];
              v100 = __OFADD__(v115, 1);
              v116 = v115 + 1;
              if (v100)
              {
                goto LABEL_89;
              }

              v113[2] = v116;

              v67 = v167;
              OUTLINED_FUNCTION_25();
            }

            goto LABEL_57;
          }
        }

        else
        {
        }

        v98 = 0;
        goto LABEL_47;
      }

      if (v61)
      {
        v171 = *v57;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCF91B0, &unk_25E63BD20);
        v168 = OUTLINED_FUNCTION_35();
        _swift_stdlib_malloc_size(v168);
        OUTLINED_FUNCTION_3_6();
        v63 = v168;
        *(v168 + 2) = v61;
        v63[3] = v64;
        swift_arrayInitWithCopy();
        v65 = v168;
        goto LABEL_24;
      }
    }

    v65 = MEMORY[0x277D84F90];
    goto LABEL_24;
  }

LABEL_5:
  while (1)
  {
    v38 = v36 + 1;
    if (__OFADD__(v36, 1))
    {
      break;
    }

    if (v38 >= v37)
    {
      v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCF9268, &qword_25E63B330);
      __swift_storeEnumTagSinglePayload(v27, 1, 1, v56);
      v34 = 0;
      goto LABEL_10;
    }

    v34 = *(v31 + 8 * v38);
    ++v36;
    if (v34)
    {
      v36 = v38;
      goto LABEL_9;
    }
  }

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
  __break(1u);
LABEL_87:
  __break(1u);
LABEL_88:
  __break(1u);
LABEL_89:
  __break(1u);
LABEL_90:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCF9198, &qword_25E63B198);
  sub_25E6360A0();
  __break(1u);
}

void sub_25E608A2C(uint64_t a1)
{
  OUTLINED_FUNCTION_11_2();
  v66 = v2;
  v67 = v3;
  v4 = v1;
  v58 = v5;
  v6 = OBJC_IVAR____TtC22PhotosIntelligenceCore28EventRecorderDiagramRenderer_eventIntervals;
  OUTLINED_FUNCTION_41(v1 + OBJC_IVAR____TtC22PhotosIntelligenceCore28EventRecorderDiagramRenderer_eventIntervals, &v65);
  v7 = *(v1 + v6);
  v8 = *(v7 + 16);
  if (v8)
  {

    v9 = 104 * v8 - 72;
    v59 = MEMORY[0x277D84F98];
    v60 = 65;
    v61 = 0xE100000000000000;
    v10 = v8;
    v11 = v58;
    v57 = v7;
    while (1)
    {
      if (v10 > v8)
      {
        __break(1u);
LABEL_43:

        v56 = v59;
        goto LABEL_44;
      }

      memcpy(__dst, (v7 + v9), sizeof(__dst));
      memcpy(v63, (v7 + v9), sizeof(v63));
      sub_25E60DF2C(__dst, v62);
      sub_25E6090B8(v63, v11);
      v12 = __dst[12];
      if (__dst[12])
      {
        break;
      }

LABEL_19:
      v71.origin.x = OUTLINED_FUNCTION_0_5();
      CGRectGetMaxX(v71);
      v72.origin.x = OUTLINED_FUNCTION_0_5();
      CGRectGetMinY(v72);
      sub_25E60DF64(__dst);
      if ((__dst[7] & 1) == 0 && (__dst[10] & 1) == 0)
      {
        v38 = __dst[6];
        v40 = *&__dst[8];
        v39 = *&__dst[9];
        CGPointMake();
        CGPointMake();
        v63[0] = 0;
        v63[1] = 0xE000000000000000;
        sub_25E635DE0();

        v63[0] = 0x6F7420656D6954;
        v63[1] = 0xE700000000000000;
        if (v38)
        {
          v41 = 0;
        }

        else
        {
          v41 = 0x747372694620;
        }

        if (v38)
        {
          v42 = 0xE000000000000000;
        }

        else
        {
          v42 = 0xE600000000000000;
        }

        MEMORY[0x25F8B9540](v41, v42);

        MEMORY[0x25F8B9540](0x522079726F745320, 0xEC00000079646165);
        v43 = v63[0];
        v44 = v63[1];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCF91C0, &qword_25E63BD00);
        v45 = swift_allocObject();
        *(v45 + 16) = xmmword_25E63A3E0;
        *(v45 + 56) = MEMORY[0x277D839F8];
        *(v45 + 64) = MEMORY[0x277D83A80];
        *(v45 + 32) = v39 - v40;
        v63[0] = sub_25E6357F0();
        v63[1] = v46;
        MEMORY[0x25F8B9540](29472, 0xE200000000000000);
        v47 = v63[1];
        OUTLINED_FUNCTION_0_5();
        sub_25E609AD4(v43, v44, v48, v47, v11);
      }

      if (!--v10)
      {
        goto LABEL_43;
      }

      v8 = *(v7 + 16);
      v9 -= 104;
    }

    v13 = __dst[11];
    v14 = sub_25E60DF94();
    sub_25E60DF2C(__dst, v63);
    sub_25E60DF2C(__dst, v63);
    v15 = OUTLINED_FUNCTION_46();
    v17 = sub_25E609044(v15, v16);
    v18 = CTLineCreateWithAttributedString(v17);
    OUTLINED_FUNCTION_47(v18);
    v20 = v19;

    v68.origin.x = OUTLINED_FUNCTION_0_5();
    if (CGRectGetWidth(v68) > v20)
    {
      sub_25E60DF64(__dst);
LABEL_18:
      v69.origin.x = OUTLINED_FUNCTION_0_5();
      CGRectGetMidX(v69);
      v70.origin.x = OUTLINED_FUNCTION_0_5();
      CGRectGetMinY(v70);
      CGPointMake();
      sub_25E60A0A0(v17, v11, v36, v37);

      goto LABEL_19;
    }

    v21 = v4;
    v22 = OUTLINED_FUNCTION_46();
    v24 = sub_25E607B24(v22, v23, v59);
    if (v25)
    {
      v26 = v24;
      v27 = v25;
      sub_25E60DF64(__dst);
      v29 = v60;
      v28 = v61;
      v30 = v26;
    }

    else
    {
      v27 = v61;
      swift_bridgeObjectRetain_n();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v63[0] = v59;
      sub_25E60DFD8(v60, v61, v13, v12, isUniquelyReferenced_nonNull_native);
      v59 = v63[0];
      if (v60 != 90 || v61 != 0xE100000000000000)
      {
        v7 = v57;
        if (sub_25E636070())
        {

          sub_25E60DF64(__dst);
          v28 = 0xE100000000000000;
          v29 = 97;
          v30 = v60;
          v33 = v21;
        }

        else
        {
          v49 = sub_25E635770();

          if ((v49 & 0x100) != 0)
          {
            __break(1u);
            return;
          }

          sub_25E60DF64(__dst);
          if (((v49 + 1) & 0x100) != 0)
          {
            __break(1u);
LABEL_46:
            __break(1u);
LABEL_47:
            __break(1u);
            goto LABEL_48;
          }

          if ((v49 + 1) >= 0)
          {
            v50 = (v49 + 2);
          }

          else
          {
            v50 = ((((v49 + 1) & 0x3F) << 8) | ((v49 + 1) >> 6)) + 33217;
          }

          v63[0] = (v50 + 0xFEFEFEFEFEFEFFLL) & ~(-1 << (8 * (4 - (__clz(v50) >> 3))));
          v29 = sub_25E635850();
          v28 = v51;
          if ((v51 & 0x2000000000000000) != 0)
          {
            v33 = v21;
            v30 = v60;
            v27 = v61;
            if ((v51 & 0xF00000000000000) == 0)
            {
              goto LABEL_46;
            }
          }

          else
          {
            v30 = v60;
            if ((v29 & 0xFFFFFFFFFFFFLL) == 0)
            {
              goto LABEL_47;
            }

            v33 = v21;
            if ((v29 & 0x1000000000000000) == 0)
            {
              v52 = OUTLINED_FUNCTION_46();
              v29 = sub_25E60E258(v52, v53);
              v55 = v54;

              v30 = v60;
              v28 = v55;
            }

            v27 = v61;
          }
        }

        goto LABEL_17;
      }

      sub_25E60DF64(__dst);
      v28 = 0xE100000000000000;
      v29 = 97;
      v30 = 90;
      v27 = 0xE100000000000000;
    }

    v33 = v21;
    v7 = v57;
LABEL_17:
    v34 = sub_25E609044(v30, v27);

    v17 = v34;
    v35 = CTLineCreateWithAttributedString(v17);
    CTLineGetBoundsWithOptions(v35, 0);

    v60 = v29;
    v61 = v28;
    v11 = v58;
    v4 = v33;
    goto LABEL_18;
  }

LABEL_48:
  v56 = MEMORY[0x277D84F98];
  v11 = v58;
LABEL_44:
  sub_25E609294(v11);
  sub_25E609568(v11);
  sub_25E60993C(v11);
  sub_25E609C64(v11);
  sub_25E609E48(v56, v11);

  OUTLINED_FUNCTION_12_1();
}

id sub_25E609044(uint64_t a1, uint64_t a2)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = sub_25E6357C0();

  v4 = [v2 initWithString_];

  return v4;
}

void sub_25E6090B8(uint64_t a1, CGContextRef c)
{
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  CGContextBeginPath(c);
  v17.origin.x = OUTLINED_FUNCTION_0_5();
  CGContextAddRect(v6, v17);
  v7 = OBJC_IVAR____TtC22PhotosIntelligenceCore28EventRecorderDiagramRenderer_maxSublevelByColor;
  OUTLINED_FUNCTION_41(v2 + OBJC_IVAR____TtC22PhotosIntelligenceCore28EventRecorderDiagramRenderer_maxSublevelByColor, v16);
  v8 = *(v2 + v7);
  v9 = 1.0;
  if (v8[2])
  {
    v10 = sub_25E60D5A8(v4);
    if (v11)
    {
      v9 = *(v8[7] + 8 * v10);
    }
  }

  v15 = v4;
  v12 = sub_25E609240(&v15, v5 / v9);
  CGContextSetFillColorWithColor(c, v12);
  CGContextDrawPath(c, kCGPathFill);
  CGColorCreateGenericRGB(0.1, 0.1, 0.1, 0.75);
  v13 = OUTLINED_FUNCTION_36();
  CGContextSetStrokeColorWithColor(v13, v14);

  CGContextBeginPath(c);
  v18.origin.x = OUTLINED_FUNCTION_0_5();
  CGRectGetMinX(v18);
  v19.origin.x = OUTLINED_FUNCTION_0_5();
  CGRectGetMinY(v19);
  OUTLINED_FUNCTION_55();
  sub_25E635CA0();
  v20.origin.x = OUTLINED_FUNCTION_0_5();
  CGRectGetMinX(v20);
  v21.origin.x = OUTLINED_FUNCTION_0_5();
  CGRectGetMaxY(v21);
  OUTLINED_FUNCTION_55();
  sub_25E635CB0();
  v22.origin.x = OUTLINED_FUNCTION_0_5();
  CGRectGetMaxX(v22);
  v23.origin.x = OUTLINED_FUNCTION_0_5();
  CGRectGetMinY(v23);
  OUTLINED_FUNCTION_55();
  sub_25E635CA0();
  v24.origin.x = OUTLINED_FUNCTION_0_5();
  CGRectGetMaxX(v24);
  v25.origin.x = OUTLINED_FUNCTION_0_5();
  CGRectGetMaxY(v25);
  OUTLINED_FUNCTION_55();
  sub_25E635CB0();
  OUTLINED_FUNCTION_56();
}

CGColorRef sub_25E609240(char *a1, double a2)
{
  v2 = *a1;
  v3 = (1.0 - dbl_25E63B3B8[v2]) * a2;
  v4 = 1.0 - (1.0 - dbl_25E63B388[v2]) * a2;
  v5 = (1.0 - dbl_25E63B358[v2]) * a2;
  return OUTLINED_FUNCTION_21(v5, v4, 1.0 - v5, v3, 1.0 - v3);
}

void sub_25E609294(uint64_t a1)
{
  OUTLINED_FUNCTION_11_2();
  v36 = v2;
  v37 = v3;
  v4 = v1;
  v6 = v5;
  v7 = sub_25E635620();
  OUTLINED_FUNCTION_5();
  v9 = v8;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_2_3();
  v13 = v12 - v11;
  v14 = sub_25E60DF94();
  v15 = sub_25E609044(0x206C616D72656854, 0xED00006574617453);
  v16 = CTLineCreateWithAttributedString(v15);
  OUTLINED_FUNCTION_47(v16);

  CGPointMake();
  v33 = v15;
  sub_25E60A0A0(v15, v6, v17, v18);
  OUTLINED_FUNCTION_41(v4 + OBJC_IVAR____TtC22PhotosIntelligenceCore28EventRecorderDiagramRenderer_thermalStateByX, &v35);

  v20 = sub_25E60B034(v19, sub_25E60AADC, sub_25E60EBA0);

  v34 = v20;
  sub_25E60B6BC(&v34);
  v21 = *(v34 + 2);
  if (v21)
  {
    v22 = *MEMORY[0x277CBF258];
    v23 = (v9 + 104);
    v24 = (v9 + 8);
    v25 = (v34 + 40);
    v26 = 1;
    do
    {
      v27 = *v25;
      CGContextBeginPath(v6);
      sub_25E609844(v27, v28, v29, v30);
      v31 = OUTLINED_FUNCTION_36();
      CGContextSetFillColorWithColor(v31, v32);

      if ((v26 & 1) == 0)
      {
        sub_25E635CA0();
        sub_25E635CB0();
        sub_25E635CB0();
        sub_25E635CB0();
        sub_25E635CB0();
      }

      v25 += 2;
      (*v23)(v13, v22, v7);
      sub_25E635CC0();
      (*v24)(v13, v7);
      v26 = 0;
      --v21;
    }

    while (v21);
  }

  OUTLINED_FUNCTION_12_1();
}

uint64_t sub_25E609568(CGContext *a1)
{
  v2 = v1;
  v4 = sub_25E635620();
  OUTLINED_FUNCTION_5();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_2_3();
  v10 = v9 - v8;
  v11 = sub_25E60DF94();
  v12 = sub_25E609044(0x64616F4C20555043, 0xE800000000000000);
  v13 = CTLineCreateWithAttributedString(v12);
  OUTLINED_FUNCTION_47(v13);

  CGPointMake();
  v33 = v12;
  sub_25E60A0A0(v12, a1, v14, v15);
  v16 = OBJC_IVAR____TtC22PhotosIntelligenceCore28EventRecorderDiagramRenderer_cpuLoadByX;
  OUTLINED_FUNCTION_41(v2 + OBJC_IVAR____TtC22PhotosIntelligenceCore28EventRecorderDiagramRenderer_cpuLoadByX, v35);
  v17 = *(v2 + v16);

  v34 = sub_25E60B034(v18, sub_25E60AB58, sub_25E60EC94);
  sub_25E60B760(&v34);

  v19 = *(v34 + 2);
  if (v19)
  {
    v20 = *MEMORY[0x277CBF258];
    v21 = (v6 + 104);
    v22 = (v6 + 8);
    v23 = (v34 + 64);
    v24 = 1;
    do
    {
      v25 = *(v23 - 3) + *(v23 - 2) + *v23;
      CGContextBeginPath(a1);
      v26.n128_f64[0] = v25;
      sub_25E6098E0(v26, v27, v28, v29);
      v30 = OUTLINED_FUNCTION_36();
      CGContextSetFillColorWithColor(v30, v31);

      if ((v24 & 1) == 0)
      {
        sub_25E635CA0();
        sub_25E635CB0();
        sub_25E635CB0();
        sub_25E635CB0();
        sub_25E635CB0();
      }

      (*v21)(v10, v20, v4);
      v17 = a1;
      sub_25E635CC0();
      (*v22)(v10, v4);
      v24 = 0;
      v23 += 5;
      --v19;
    }

    while (v19);
  }
}

CGColorRef sub_25E609844(uint64_t a1, __n128 a2, __n128 a3, __n128 a4)
{
  switch(a1)
  {
    case 0:
      result = CGColorCreateGenericRGB(0.1, 1.0, 0.1, 1.0);
      break;
    case 1:
      result = OUTLINED_FUNCTION_24(0.9, 1.0, 0.1);
      break;
    case 2:
      result = OUTLINED_FUNCTION_24(1.0, 0.6, 0.1);
      break;
    case 3:
      result = CGColorCreateGenericRGB(1.0, 0.1, 0.1, 1.0);
      break;
    default:
      result = OUTLINED_FUNCTION_24(0.5, 0.5, 0.5);
      break;
  }

  return result;
}

CGColorRef sub_25E6098E0(__n128 a1, __n128 a2, __n128 a3, double a4)
{
  if (a1.n128_f64[0] >= 0.6)
  {
    return OUTLINED_FUNCTION_24(0.9, 1.1 - a1.n128_f64[0], 0.1);
  }

  else
  {
    return OUTLINED_FUNCTION_21(a1.n128_f64[0] * -0.833333333, a1.n128_f64[0] * -0.833333333 + 1.0, 0.1, a4, a1.n128_f64[0] * 1.5 + 0.1);
  }
}

void sub_25E60993C(CGContext *a1)
{
  v3 = OBJC_IVAR____TtC22PhotosIntelligenceCore28EventRecorderDiagramRenderer_stageNames;
  OUTLINED_FUNCTION_41(v1 + OBJC_IVAR____TtC22PhotosIntelligenceCore28EventRecorderDiagramRenderer_stageNames, v14);
  v4 = *(v1 + v3);
  v5 = *(v4 + 16);

  for (i = 0; ; ++i)
  {
    if (v5 == i)
    {

      return;
    }

    if (i >= *(v4 + 16))
    {
      break;
    }

    if (*(*(v4 + 8 * i + 32) + 16))
    {

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCF9198, &qword_25E63B198);
      sub_25E60EF1C();
      v7 = sub_25E6357A0();
      v9 = v8;
    }

    else
    {
      v9 = 0xE400000000000000;
      v7 = 1852399949;
    }

    sub_25E60DF94();
    v10 = sub_25E609044(v7, v9);
    v11 = CTLineCreateWithAttributedString(v10);
    CTLineGetBoundsWithOptions(v11, 0);

    CGPointMake();
    sub_25E60A0A0(v10, a1, v12, v13);
  }

  __break(1u);
}

void sub_25E609AD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, CGContextRef c)
{
  CGContextBeginPath(c);
  sub_25E635CA0();
  sub_25E635CB0();
  CGPointMake();
  sub_25E635CB0();
  CGPointMake();
  sub_25E635CB0();
  CGPointMake();
  sub_25E635CB0();
  v10 = sub_25E60DF94();

  v11 = sub_25E609044(a1, a2);
  v12 = CTLineCreateWithAttributedString(v11);
  CTLineGetBoundsWithOptions(v12, 0);

  CGPointMake();
  sub_25E60A0A0(v11, c, v13, v14);

  v18 = sub_25E609044(a3, a4);
  v15 = CTLineCreateWithAttributedString(v18);
  OUTLINED_FUNCTION_47(v15);

  CGPointMake();
  sub_25E60A0A0(v18, c, v16, v17);
  OUTLINED_FUNCTION_56();
}

void sub_25E609C64(uint64_t a1)
{
  OUTLINED_FUNCTION_11_2();
  v2 = v1;
  v4 = v3;
  CGContextBeginPath(v3);
  CGPointMake();
  sub_25E635CA0();
  CGPointMake();
  sub_25E635CB0();
  v5 = OBJC_IVAR____TtC22PhotosIntelligenceCore28EventRecorderDiagramRenderer_fullDuration;
  for (i = 5.0; i <= *(v2 + v5); i = i + 5.0)
  {
    sub_25E60DF94();
    sub_25E635B20();
    MEMORY[0x25F8B9540](29472, 0xE200000000000000);
    v7 = sub_25E609044(0, 0xE000000000000000);
    v8 = CTLineCreateWithAttributedString(v7);
    CTLineGetBoundsWithOptions(v8, 0);

    CGPointMake();
    sub_25E60A0A0(v7, v4, v9, v10);
  }

  OUTLINED_FUNCTION_56();
  CGContextBeginPath(v4);
  sub_25E635C90();
  for (j = 5.0; j <= *(v2 + v5); j = j + 5.0)
  {
    CGPointMake();
    sub_25E635CA0();
    CGPointMake();
    sub_25E635CB0();
  }

  OUTLINED_FUNCTION_56();
  sub_25E635C90();
  OUTLINED_FUNCTION_12_1();
}

void sub_25E609E48(uint64_t a1, CGContext *a2)
{
  v4 = *(a1 + 16);
  v5 = v4 + 4;
  if (__OFADD__(v4, 4))
  {
LABEL_12:
    __break(1u);

    __break(1u);
  }

  else
  {
    v6 = v2;
    v18 = OBJC_IVAR____TtC22PhotosIntelligenceCore28EventRecorderDiagramRenderer_height;
    v7 = *(v2 + OBJC_IVAR____TtC22PhotosIntelligenceCore28EventRecorderDiagramRenderer_height);
    v22 = sub_25E60B034(a1, sub_25E60ABDC, sub_25E60ED8C);
    sub_25E60B804(&v22);
    v8 = 0;
    v19 = (v5 - 1) >> 2;
    v3 = v22;
    v21 = v22[2];
    v9 = v22 + 7;
    while (v21 != v8)
    {
      if (v8 >= v3[2])
      {
        __break(1u);
        goto LABEL_12;
      }

      v11 = *(v9 - 1);
      v10 = *v9;
      v13 = *(v9 - 3);
      v12 = *(v9 - 2);
      sub_25E60DF94();
      v22 = v11;
      v23 = v10;

      MEMORY[0x25F8B9540](8250, 0xE200000000000000);
      MEMORY[0x25F8B9540](v13, v12);

      v14 = sub_25E609044(v22, v23);
      v15 = *(v6 + v18) + -24.0 + (v19 + ~(v8 >> 2)) * -20.0;
      CGPointMake();
      sub_25E60A0A0(v14, a2, v16, v17);

      if (v15 < v7)
      {
        v7 = v15;
      }

      v9 += 4;
      ++v8;
    }

    CGContextBeginPath(a2);
    CGPointMake();
    CGContextAddRect(a2, v25);

    CGContextStrokePath(a2);
  }
}

void sub_25E60A0A0(const __CFAttributedString *a1, CGContextRef c, CGFloat a3, double a4)
{
  CGContextSaveGState(c);
  v8 = CTLineCreateWithAttributedString(a1);
  v10.origin.x = OUTLINED_FUNCTION_47(v8);
  v9.a = 1.0;
  v9.b = 0.0;
  v9.c = 0.0;
  v9.d = -1.0;
  v9.tx = a3;
  v9.ty = CGRectGetMaxY(v10) + a4;
  CGContextSetTextMatrix(c, &v9);
  CTLineDraw(a1, c);
  CGContextRestoreGState(c);
}

uint64_t EventRecorderDiagramRenderer.deinit()
{
  v1 = OBJC_IVAR____TtC22PhotosIntelligenceCore28EventRecorderDiagramRenderer_referenceDate;
  sub_25E635570();
  OUTLINED_FUNCTION_1_2();
  (*(v2 + 8))(v0 + v1);

  return v0;
}

uint64_t EventRecorderDiagramRenderer.__deallocating_deinit()
{
  EventRecorderDiagramRenderer.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

unint64_t sub_25E60A244(unint64_t result, uint64_t a2, uint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v3 = *(a3 + 16);
  if (v3 < result || v3 < a2)
  {
    goto LABEL_9;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_25E60A2E0(uint64_t (*a1)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v1 = v3;
  if (!result)
  {
    result = a1(result, *(v3 + 16) + 1, 1, v3);
    *v1 = result;
  }

  return result;
}

uint64_t sub_25E60A36C(uint64_t result, uint64_t (*a2)(BOOL))
{
  v3 = *(*v2 + 24);
  if (result + 1 > (v3 >> 1))
  {
    result = a2(v3 > 1);
    *v2 = result;
  }

  return result;
}

void sub_25E60A3B4()
{
  OUTLINED_FUNCTION_31();
  if (v4)
  {
    OUTLINED_FUNCTION_10_2();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_30();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_9_2();
    }
  }

  OUTLINED_FUNCTION_39();
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCF9220, &qword_25E63B2F0);
    v7 = OUTLINED_FUNCTION_35();
    _swift_stdlib_malloc_size(v7);
    OUTLINED_FUNCTION_3_6();
    *(v7 + 2) = v3;
    *(v7 + 3) = v8;
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  v9 = v7 + 32;
  v10 = v0 + 32;
  if (v1)
  {
    if (v7 != v0 || &v10[16 * v3] <= v9)
    {
      memmove(v9, v10, 16 * v3);
    }

    *(v0 + 2) = 0;
  }

  else
  {
    memcpy(v9, v10, 16 * v3);
  }
}

char *sub_25E60A480(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCF9250, &qword_25E63B320);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 104);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[104 * v8] <= v12)
    {
      memmove(v12, v13, 104 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_25E60A598(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCF9278, &qword_25E63B338);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 8);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCF9198, &qword_25E63B198);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_25E60A6C8()
{
  OUTLINED_FUNCTION_31();
  if (v4)
  {
    OUTLINED_FUNCTION_10_2();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_30();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_9_2();
    }
  }

  OUTLINED_FUNCTION_39();
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCF91E8, " A");
    v7 = OUTLINED_FUNCTION_35();
    _swift_stdlib_malloc_size(v7);
    OUTLINED_FUNCTION_34();
    *(v7 + 2) = v3;
    *(v7 + 3) = 2 * v8;
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  v9 = v7 + 32;
  v10 = v0 + 32;
  if (v1)
  {
    if (v7 != v0 || &v10[8 * v3] <= v9)
    {
      memmove(v9, v10, 8 * v3);
    }

    *(v0 + 2) = 0;
  }

  else
  {
    memcpy(v9, v10, 8 * v3);
  }
}

void sub_25E60A798()
{
  OUTLINED_FUNCTION_31();
  if (v4)
  {
    OUTLINED_FUNCTION_10_2();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_30();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_9_2();
    }
  }

  OUTLINED_FUNCTION_38();
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCF91B0, &unk_25E63BD20);
    v7 = OUTLINED_FUNCTION_35();
    _swift_stdlib_malloc_size(v7);
    OUTLINED_FUNCTION_3_6();
    *(v7 + 2) = v2;
    *(v7 + 3) = v8;
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  v9 = v7 + 32;
  v10 = v0 + 32;
  if (v1)
  {
    if (v7 != v0 || &v10[16 * v2] <= v9)
    {
      memmove(v9, v10, 16 * v2);
    }

    *(v0 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void *sub_25E60A86C(void *result, int64_t a2, char a3, uint64_t a4)
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
  v9 = sub_25E60AC58(v8, v7);
  v10 = *(type metadata accessor for RootEventRecorder.Event(0) - 8);
  if (v5)
  {
    v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    sub_25E60AD74(a4 + v11, v8, v9 + v11);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v9;
}

char *sub_25E60A958(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCF91F0, &qword_25E63CAA0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[40 * v8] <= v12)
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 40 * v8);
  }

  return v10;
}

void *sub_25E60AA6C(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCF9288, &unk_25E63B348);
  v4 = OUTLINED_FUNCTION_35();
  _swift_stdlib_malloc_size(v4);
  OUTLINED_FUNCTION_34();
  v4[2] = a1;
  v4[3] = (2 * v5) | 1;
  return v4;
}

void *sub_25E60AADC(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCF9238, &qword_25E63B308);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * ((v5 - 32) / 16);
  return v4;
}

void *sub_25E60AB58(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCF9228, &qword_25E63B2F8);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * ((v5 - 32) / 40);
  return v4;
}

void *sub_25E60ABDC(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCF9210, &qword_25E63B2E0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * ((v5 - 32) / 32);
  return v4;
}

void *sub_25E60AC58(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCF91F8, "(A");
  v4 = *(type metadata accessor for RootEventRecorder.Event(0) - 8);
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

char *sub_25E60AD54(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[8 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_16_2(a3, result);
  }

  return result;
}

uint64_t sub_25E60AD74(unint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 < a1 || (result = type metadata accessor for RootEventRecorder.Event(0), a1 + *(*(result - 8) + 72) * a2 <= a3))
  {
    v7 = type metadata accessor for RootEventRecorder.Event(0);

    return MEMORY[0x2821FE828](a3, a1, a2, v7);
  }

  else if (a3 != a1)
  {

    return MEMORY[0x2821FE820](a3, a1, a2, result);
  }

  return result;
}

void *sub_25E60AE48(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCF8FC0, &qword_25E63ACC0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

void sub_25E60AEB8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
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
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCF91B0, &unk_25E63BD20);
      v7 = OUTLINED_FUNCTION_35();
      _swift_stdlib_malloc_size(v7);
      OUTLINED_FUNCTION_3_6();
      v7[2] = v5;
      v7[3] = v8;
    }

    if (v4 != a3)
    {
      swift_arrayInitWithCopy();
      return;
    }

    goto LABEL_9;
  }
}

uint64_t sub_25E60AF74(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RootEventRecorder.Event(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25E60AFD8(uint64_t a1)
{
  v2 = type metadata accessor for RootEventRecorder.Event(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_25E60B034(uint64_t a1, uint64_t (*a2)(void, void), uint64_t (*a3)(uint64_t *, uint64_t, uint64_t, uint64_t))
{
  v3 = *(a1 + 16);
  if (!v3)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = a2(*(a1 + 16), 0);
  v7 = a3(&v10, v6 + 32, v3, a1);
  v8 = v10;

  sub_25E60EF14(v8);
  if (v7 != v3)
  {
    __break(1u);
    return MEMORY[0x277D84F90];
  }

  return v6;
}

void sub_25E60B100()
{
  OUTLINED_FUNCTION_31();
  if (v4)
  {
    OUTLINED_FUNCTION_10_2();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_30();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_9_2();
    }
  }

  OUTLINED_FUNCTION_38();
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCF91B0, &unk_25E63BD20);
    v7 = OUTLINED_FUNCTION_35();
    _swift_stdlib_malloc_size(v7);
    OUTLINED_FUNCTION_3_6();
    *(v7 + 2) = v2;
    *(v7 + 3) = v8;
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  v9 = v7 + 32;
  v10 = v0 + 32;
  if (v1)
  {
    if (v7 != v0 || &v10[16 * v2] <= v9)
    {
      memmove(v9, v10, 16 * v2);
    }

    *(v0 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_25E60B1D4()
{
  OUTLINED_FUNCTION_31();
  if (v4)
  {
    OUTLINED_FUNCTION_10_2();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_30();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_9_2();
    }
  }

  OUTLINED_FUNCTION_38();
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCF9280, &qword_25E63B340);
    v7 = swift_allocObject();
    v8 = _swift_stdlib_malloc_size(v7);
    *(v7 + 2) = v2;
    *(v7 + 3) = 2 * v8 - 64;
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  v9 = v7 + 32;
  v10 = v0 + 32;
  if (v1)
  {
    if (v7 != v0 || &v10[v2] <= v9)
    {
      memmove(v9, v10, v2);
    }

    *(v0 + 2) = 0;
  }

  else
  {
    memcpy(v9, v10, v2);
  }
}

void sub_25E60B2A8()
{
  OUTLINED_FUNCTION_31();
  if (v4)
  {
    OUTLINED_FUNCTION_10_2();
    if (v5 != v6)
    {
      OUTLINED_FUNCTION_30();
      if (v5)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_9_2();
    }
  }

  OUTLINED_FUNCTION_39();
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCF91E8, " A");
    v7 = OUTLINED_FUNCTION_35();
    _swift_stdlib_malloc_size(v7);
    OUTLINED_FUNCTION_34();
    *(v7 + 2) = v3;
    *(v7 + 3) = 2 * v8;
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  v9 = v7 + 32;
  v10 = v0 + 32;
  if (v1)
  {
    if (v7 != v0 || &v10[8 * v3] <= v9)
    {
      memmove(v9, v10, 8 * v3);
    }

    *(v0 + 2) = 0;
  }

  else
  {
    memcpy(v9, v10, 8 * v3);
  }
}

char *sub_25E60B378(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCF9238, &qword_25E63B308);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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

char *sub_25E60B478(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCF9228, &qword_25E63B2F8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[40 * v8] <= v12)
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 40 * v8);
  }

  return v10;
}

void *sub_25E60B58C(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCF9210, &qword_25E63B2E0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 32);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || &a4[4 * v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCF9218, &qword_25E63B2E8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_25E60B6BC(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_25E60EB64(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = v2 + 32;
  v5[1] = v3;
  result = sub_25E60B8A8(v5, &qword_27FCF9240, &qword_25E63B310, sub_25E60BB8C, sub_25E60B9C4);
  *a1 = v2;
  return result;
}

uint64_t sub_25E60B760(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_25E60EB78(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = v2 + 32;
  v5[1] = v3;
  result = sub_25E60B8A8(v5, &qword_27FCF9230, &qword_25E63B300, sub_25E60C074, sub_25E60BA3C);
  *a1 = v2;
  return result;
}

uint64_t sub_25E60B804(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_25E60EB8C(v2);
  }

  v3 = v2[2];
  v5[0] = v2 + 4;
  v5[1] = v3;
  result = sub_25E60B8A8(v5, &qword_27FCF9218, &qword_25E63B2E8, sub_25E60C590, sub_25E60BAC4);
  *a1 = v2;
  return result;
}

uint64_t sub_25E60B8A8(uint64_t a1, uint64_t *a2, uint64_t *a3, void (*a4)(void *, _BYTE *, uint64_t, uint64_t), uint64_t (*a5)(void, uint64_t, uint64_t, uint64_t))
{
  v10 = *(a1 + 8);
  result = sub_25E636030();
  if (result < v10)
  {
    if (v10 >= -1)
    {
      v12 = result;
      v13 = v10 / 2;
      if (v10 <= 1)
      {
        v14 = MEMORY[0x277D84F90];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
        v14 = sub_25E635A40();
        *(v14 + 16) = v13;
      }

      v15[0] = v14 + 32;
      v15[1] = v13;
      a4(v15, v16, a1, v12);
      *(v14 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v10 < 0)
  {
    goto LABEL_12;
  }

  if (v10)
  {
    return a5(0, v10, 1, a1);
  }

  return result;
}

uint64_t sub_25E60B9C4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 16 * a3 - 16;
    v6 = result - a3;
    while (2)
    {
      v7 = *(v4 + 16 * a3);
      v8 = v6;
      v9 = v5;
      do
      {
        if (v7 >= *v9)
        {
          break;
        }

        if (!v4)
        {
          __break(1u);
          return result;
        }

        v10 = *(v9 + 24);
        *(v9 + 16) = *v9;
        *v9 = v7;
        *(v9 + 8) = v10;
        v9 -= 16;
      }

      while (!__CFADD__(v8++, 1));
      ++a3;
      v5 += 16;
      --v6;
      if (a3 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

uint64_t sub_25E60BA3C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 40 * a3 - 40;
    v6 = result - a3;
    while (2)
    {
      v7 = *(v4 + 40 * a3);
      v8 = v6;
      v9 = v5;
      do
      {
        v10 = v9 + 40;
        if (v7 >= *v9)
        {
          break;
        }

        if (!v4)
        {
          __break(1u);
          return result;
        }

        v11 = *(v9 + 48);
        v12 = *(v9 + 64);
        v13 = *(v9 + 16);
        *v10 = *v9;
        *(v9 + 56) = v13;
        v14 = *(v9 + 32);
        *v9 = v7;
        *(v9 + 8) = v11;
        *(v9 + 24) = v12;
        v9 -= 40;
        *(v10 + 32) = v14;
      }

      while (!__CFADD__(v8++, 1));
      ++a3;
      v5 += 40;
      --v6;
      if (a3 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

uint64_t sub_25E60BAC4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 32 * a3 - 32;
    v8 = result - a3;
    while (2)
    {
      v9 = v6 + 32 * v4;
      result = *(v9 + 16);
      v10 = *(v9 + 24);
      v11 = v8;
      v12 = v7;
      do
      {
        if (result == *(v12 + 16) && v10 == *(v12 + 24))
        {
          break;
        }

        result = sub_25E636070();
        if ((result & 1) == 0)
        {
          break;
        }

        if (!v6)
        {
          __break(1u);
          return result;
        }

        v14 = *(v12 + 32);
        v15 = *(v12 + 40);
        result = *(v12 + 48);
        v10 = *(v12 + 56);
        v16 = *(v12 + 16);
        *(v12 + 32) = *v12;
        *(v12 + 48) = v16;
        *v12 = v14;
        *(v12 + 8) = v15;
        *(v12 + 16) = result;
        *(v12 + 24) = v10;
        v12 -= 32;
      }

      while (!__CFADD__(v11++, 1));
      ++v4;
      v7 += 32;
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

void sub_25E60BB8C(double **result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v87 = MEMORY[0x277D84F90];
  v6 = a3[1];
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = MEMORY[0x277D84F90];
    v82 = a4;
    while (1)
    {
      v9 = v7 + 1;
      if (v7 + 1 < v6)
      {
        v10 = *(*a3 + 16 * v9);
        v11 = (*a3 + 16 * v7);
        v12 = 16 * v7;
        v14 = *v11;
        v13 = v11 + 4;
        v15 = v14;
        v16 = v7 + 2;
        v17 = v10;
        while (1)
        {
          v18 = v16;
          if (++v9 >= v6)
          {
            break;
          }

          v19 = *v13;
          v13 += 2;
          v20 = (v10 < v15) ^ (v19 >= v17);
          ++v16;
          v17 = v19;
          if ((v20 & 1) == 0)
          {
            goto LABEL_9;
          }
        }

        v9 = v6;
LABEL_9:
        if (v10 < v15)
        {
          if (v9 < v7)
          {
            goto LABEL_108;
          }

          if (v7 < v9)
          {
            if (v6 >= v18)
            {
              v6 = v18;
            }

            v21 = 16 * v6;
            v22 = v9;
            v23 = v7;
            do
            {
              if (v23 != --v22)
              {
                v24 = *a3;
                if (!*a3)
                {
                  goto LABEL_113;
                }

                v25 = (v24 + v12);
                v26 = v24 + v21;
                v27 = *v25;
                v28 = v25[1];
                *v25 = *(v26 - 16);
                *(v26 - 16) = v27;
                *(v26 - 8) = v28;
              }

              ++v23;
              v21 -= 16;
              v12 += 16;
            }

            while (v23 < v22);
            v6 = a3[1];
          }
        }
      }

      if (v9 < v6)
      {
        if (__OFSUB__(v9, v7))
        {
          goto LABEL_107;
        }

        if (v9 - v7 < a4)
        {
          if (__OFADD__(v7, a4))
          {
            goto LABEL_109;
          }

          if (v7 + a4 < v6)
          {
            v6 = v7 + a4;
          }

          if (v6 < v7)
          {
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
            return;
          }

          if (v9 != v6)
          {
            v29 = *a3;
            v30 = *a3 + 16 * v9 - 16;
            v31 = v7 - v9;
            do
            {
              v32 = *(v29 + 16 * v9);
              v33 = v31;
              v34 = v30;
              do
              {
                if (v32 >= *v34)
                {
                  break;
                }

                if (!v29)
                {
                  goto LABEL_111;
                }

                v35 = *(v34 + 24);
                *(v34 + 16) = *v34;
                *v34 = v32;
                *(v34 + 8) = v35;
                v34 -= 16;
              }

              while (!__CFADD__(v33++, 1));
              ++v9;
              v30 += 16;
              --v31;
            }

            while (v9 != v6);
            v9 = v6;
          }
        }
      }

      if (v9 < v7)
      {
        goto LABEL_106;
      }

      v84 = v9;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_25E60A3B4();
        v8 = v80;
      }

      v37 = v8[2];
      v38 = v37 + 1;
      if (v37 >= v8[3] >> 1)
      {
        sub_25E60A3B4();
        v8 = v81;
      }

      v8[2] = v38;
      v39 = v8 + 4;
      v40 = &v8[2 * v37 + 4];
      *v40 = v7;
      v40[1] = v9;
      v85 = *result;
      if (!*result)
      {
        goto LABEL_114;
      }

      if (v37)
      {
        while (1)
        {
          v41 = v38 - 1;
          v42 = &v39[2 * v38 - 2];
          v43 = &v8[2 * v38];
          if (v38 >= 4)
          {
            break;
          }

          if (v38 == 3)
          {
            v44 = v8[4];
            v45 = v8[5];
            v54 = __OFSUB__(v45, v44);
            v46 = v45 - v44;
            v47 = v54;
LABEL_56:
            if (v47)
            {
              goto LABEL_96;
            }

            v59 = *v43;
            v58 = v43[1];
            v60 = __OFSUB__(v58, v59);
            v61 = v58 - v59;
            v62 = v60;
            if (v60)
            {
              goto LABEL_99;
            }

            v63 = v42[1];
            v64 = v63 - *v42;
            if (__OFSUB__(v63, *v42))
            {
              goto LABEL_102;
            }

            if (__OFADD__(v61, v64))
            {
              goto LABEL_104;
            }

            if (v61 + v64 >= v46)
            {
              if (v46 < v64)
              {
                v41 = v38 - 2;
              }

              goto LABEL_78;
            }

            goto LABEL_71;
          }

          if (v38 < 2)
          {
            goto LABEL_98;
          }

          v66 = *v43;
          v65 = v43[1];
          v54 = __OFSUB__(v65, v66);
          v61 = v65 - v66;
          v62 = v54;
LABEL_71:
          if (v62)
          {
            goto LABEL_101;
          }

          v68 = *v42;
          v67 = v42[1];
          v54 = __OFSUB__(v67, v68);
          v69 = v67 - v68;
          if (v54)
          {
            goto LABEL_103;
          }

          if (v69 < v61)
          {
            goto LABEL_85;
          }

LABEL_78:
          if (v41 - 1 >= v38)
          {
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
            __break(1u);
LABEL_97:
            __break(1u);
LABEL_98:
            __break(1u);
LABEL_99:
            __break(1u);
LABEL_100:
            __break(1u);
LABEL_101:
            __break(1u);
LABEL_102:
            __break(1u);
LABEL_103:
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
            goto LABEL_110;
          }

          if (!*a3)
          {
            goto LABEL_112;
          }

          v73 = &v39[2 * v41 - 2];
          v74 = *v73;
          v75 = &v39[2 * v41];
          v76 = v75[1];
          sub_25E60CE48((*a3 + 16 * *v73), (*a3 + 16 * *v75), (*a3 + 16 * v76), v85);
          if (v5)
          {
            goto LABEL_89;
          }

          if (v76 < v74)
          {
            goto LABEL_91;
          }

          v77 = v8;
          v78 = v8[2];
          if (v41 > v78)
          {
            goto LABEL_92;
          }

          *v73 = v74;
          v73[1] = v76;
          if (v41 >= v78)
          {
            goto LABEL_93;
          }

          v38 = v78 - 1;
          memmove(&v39[2 * v41], v75 + 2, 16 * (v78 - 1 - v41));
          v77[2] = v78 - 1;
          v79 = v78 > 2;
          v8 = v77;
          v5 = 0;
          if (!v79)
          {
            goto LABEL_85;
          }
        }

        v48 = &v39[2 * v38];
        v49 = *(v48 - 8);
        v50 = *(v48 - 7);
        v54 = __OFSUB__(v50, v49);
        v51 = v50 - v49;
        if (v54)
        {
          goto LABEL_94;
        }

        v53 = *(v48 - 6);
        v52 = *(v48 - 5);
        v54 = __OFSUB__(v52, v53);
        v46 = v52 - v53;
        v47 = v54;
        if (v54)
        {
          goto LABEL_95;
        }

        v55 = v43[1];
        v56 = v55 - *v43;
        if (__OFSUB__(v55, *v43))
        {
          goto LABEL_97;
        }

        v54 = __OFADD__(v46, v56);
        v57 = v46 + v56;
        if (v54)
        {
          goto LABEL_100;
        }

        if (v57 >= v51)
        {
          v71 = *v42;
          v70 = v42[1];
          v54 = __OFSUB__(v70, v71);
          v72 = v70 - v71;
          if (v54)
          {
            goto LABEL_105;
          }

          if (v46 < v72)
          {
            v41 = v38 - 2;
          }

          goto LABEL_78;
        }

        goto LABEL_56;
      }

LABEL_85:
      v6 = a3[1];
      v7 = v84;
      a4 = v82;
      if (v84 >= v6)
      {
        v87 = v8;
        break;
      }
    }
  }

  if (!*result)
  {
    goto LABEL_115;
  }

  sub_25E60CAB8(&v87, *result, a3);
LABEL_89:
}

void sub_25E60C074(double **result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v94 = MEMORY[0x277D84F90];
  v6 = a3[1];
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = MEMORY[0x277D84F90];
    v89 = a4;
    while (1)
    {
      v9 = v7 + 1;
      if (v7 + 1 < v6)
      {
        v10 = *(*a3 + 40 * v9);
        v11 = (*a3 + 40 * v7);
        v12 = 40 * v7;
        v14 = *v11;
        v13 = v11 + 10;
        v15 = v14;
        v16 = v7 + 2;
        v17 = v10;
        while (1)
        {
          v18 = v16;
          if (++v9 >= v6)
          {
            break;
          }

          v19 = *v13;
          v13 += 5;
          v20 = (v10 < v15) ^ (v19 >= v17);
          ++v16;
          v17 = v19;
          if ((v20 & 1) == 0)
          {
            goto LABEL_9;
          }
        }

        v9 = v6;
LABEL_9:
        if (v10 < v15)
        {
          if (v9 < v7)
          {
            goto LABEL_108;
          }

          if (v7 < v9)
          {
            if (v6 >= v18)
            {
              v6 = v18;
            }

            v21 = 40 * v6 - 40;
            v22 = v9;
            v23 = v7;
            do
            {
              if (v23 != --v22)
              {
                v24 = *a3;
                if (!*a3)
                {
                  goto LABEL_113;
                }

                v25 = (v24 + v12);
                v26 = *(v24 + v12 + 32);
                v27 = (v24 + v21);
                v28 = *v25;
                v29 = v25[1];
                v30 = *(v27 + 4);
                v31 = v27[1];
                *v25 = *v27;
                v25[1] = v31;
                *(v25 + 4) = v30;
                *v27 = v28;
                v27[1] = v29;
                *(v27 + 4) = v26;
              }

              ++v23;
              v21 -= 40;
              v12 += 40;
            }

            while (v23 < v22);
            v6 = a3[1];
          }
        }
      }

      if (v9 < v6)
      {
        if (__OFSUB__(v9, v7))
        {
          goto LABEL_107;
        }

        if (v9 - v7 < a4)
        {
          if (__OFADD__(v7, a4))
          {
            goto LABEL_109;
          }

          if (v7 + a4 < v6)
          {
            v6 = v7 + a4;
          }

          if (v6 < v7)
          {
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
            return;
          }

          if (v9 != v6)
          {
            v32 = *a3;
            v33 = *a3 + 40 * v9 - 40;
            v34 = v7 - v9;
            do
            {
              v35 = *(v32 + 40 * v9);
              v36 = v34;
              v37 = v33;
              do
              {
                v38 = v37 + 40;
                if (v35 >= *v37)
                {
                  break;
                }

                if (!v32)
                {
                  goto LABEL_111;
                }

                v39 = *(v37 + 48);
                v40 = *(v37 + 64);
                v41 = *(v37 + 16);
                *v38 = *v37;
                *(v37 + 56) = v41;
                v42 = *(v37 + 32);
                *v37 = v35;
                *(v37 + 8) = v39;
                *(v37 + 24) = v40;
                v37 -= 40;
                *(v38 + 32) = v42;
              }

              while (!__CFADD__(v36++, 1));
              ++v9;
              v33 += 40;
              --v34;
            }

            while (v9 != v6);
            v9 = v6;
          }
        }
      }

      if (v9 < v7)
      {
        goto LABEL_106;
      }

      v91 = v9;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_25E60A3B4();
        v8 = v87;
      }

      v44 = v8[2];
      v45 = v44 + 1;
      if (v44 >= v8[3] >> 1)
      {
        sub_25E60A3B4();
        v8 = v88;
      }

      v8[2] = v45;
      v46 = v8 + 4;
      v47 = &v8[2 * v44 + 4];
      *v47 = v7;
      v47[1] = v91;
      v92 = *result;
      if (!*result)
      {
        goto LABEL_114;
      }

      if (v44)
      {
        while (1)
        {
          v48 = v45 - 1;
          v49 = &v46[2 * v45 - 2];
          v50 = &v8[2 * v45];
          if (v45 >= 4)
          {
            break;
          }

          if (v45 == 3)
          {
            v51 = v8[4];
            v52 = v8[5];
            v61 = __OFSUB__(v52, v51);
            v53 = v52 - v51;
            v54 = v61;
LABEL_56:
            if (v54)
            {
              goto LABEL_96;
            }

            v66 = *v50;
            v65 = v50[1];
            v67 = __OFSUB__(v65, v66);
            v68 = v65 - v66;
            v69 = v67;
            if (v67)
            {
              goto LABEL_99;
            }

            v70 = v49[1];
            v71 = v70 - *v49;
            if (__OFSUB__(v70, *v49))
            {
              goto LABEL_102;
            }

            if (__OFADD__(v68, v71))
            {
              goto LABEL_104;
            }

            if (v68 + v71 >= v53)
            {
              if (v53 < v71)
              {
                v48 = v45 - 2;
              }

              goto LABEL_78;
            }

            goto LABEL_71;
          }

          if (v45 < 2)
          {
            goto LABEL_98;
          }

          v73 = *v50;
          v72 = v50[1];
          v61 = __OFSUB__(v72, v73);
          v68 = v72 - v73;
          v69 = v61;
LABEL_71:
          if (v69)
          {
            goto LABEL_101;
          }

          v75 = *v49;
          v74 = v49[1];
          v61 = __OFSUB__(v74, v75);
          v76 = v74 - v75;
          if (v61)
          {
            goto LABEL_103;
          }

          if (v76 < v68)
          {
            goto LABEL_85;
          }

LABEL_78:
          if (v48 - 1 >= v45)
          {
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
            __break(1u);
LABEL_97:
            __break(1u);
LABEL_98:
            __break(1u);
LABEL_99:
            __break(1u);
LABEL_100:
            __break(1u);
LABEL_101:
            __break(1u);
LABEL_102:
            __break(1u);
LABEL_103:
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
            goto LABEL_110;
          }

          if (!*a3)
          {
            goto LABEL_112;
          }

          v80 = &v46[2 * v48 - 2];
          v81 = *v80;
          v82 = &v46[2 * v48];
          v83 = v82[1];
          sub_25E60CFEC((*a3 + 40 * *v80), (*a3 + 40 * *v82), *a3 + 40 * v83, v92);
          if (v5)
          {
            goto LABEL_89;
          }

          if (v83 < v81)
          {
            goto LABEL_91;
          }

          v84 = v8;
          v85 = v8[2];
          if (v48 > v85)
          {
            goto LABEL_92;
          }

          *v80 = v81;
          v80[1] = v83;
          if (v48 >= v85)
          {
            goto LABEL_93;
          }

          v45 = v85 - 1;
          memmove(&v46[2 * v48], v82 + 2, 16 * (v85 - 1 - v48));
          v84[2] = v85 - 1;
          v86 = v85 > 2;
          v8 = v84;
          v5 = 0;
          if (!v86)
          {
            goto LABEL_85;
          }
        }

        v55 = &v46[2 * v45];
        v56 = *(v55 - 8);
        v57 = *(v55 - 7);
        v61 = __OFSUB__(v57, v56);
        v58 = v57 - v56;
        if (v61)
        {
          goto LABEL_94;
        }

        v60 = *(v55 - 6);
        v59 = *(v55 - 5);
        v61 = __OFSUB__(v59, v60);
        v53 = v59 - v60;
        v54 = v61;
        if (v61)
        {
          goto LABEL_95;
        }

        v62 = v50[1];
        v63 = v62 - *v50;
        if (__OFSUB__(v62, *v50))
        {
          goto LABEL_97;
        }

        v61 = __OFADD__(v53, v63);
        v64 = v53 + v63;
        if (v61)
        {
          goto LABEL_100;
        }

        if (v64 >= v58)
        {
          v78 = *v49;
          v77 = v49[1];
          v61 = __OFSUB__(v77, v78);
          v79 = v77 - v78;
          if (v61)
          {
            goto LABEL_105;
          }

          if (v53 < v79)
          {
            v48 = v45 - 2;
          }

          goto LABEL_78;
        }

        goto LABEL_56;
      }

LABEL_85:
      v6 = a3[1];
      v7 = v91;
      a4 = v89;
      if (v91 >= v6)
      {
        v94 = v8;
        break;
      }
    }
  }

  if (!*result)
  {
    goto LABEL_115;
  }

  sub_25E60CBE4(&v94, *result, a3);
LABEL_89:
}

void sub_25E60C590(char **result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v95 = MEMORY[0x277D84F90];
  v6 = a3[1];
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = MEMORY[0x277D84F90];
    while (1)
    {
      v9 = v7;
      i = v7 + 1;
      if (v7 + 1 < v6)
      {
        v11 = *a3 + 32 * i;
        v12 = *a3 + 32 * v7;
        if (*(v11 + 16) == *(v12 + 16) && *(v11 + 24) == *(v12 + 24))
        {
          v14 = 0;
        }

        else
        {
          v14 = sub_25E636070();
        }

        v15 = (v12 + 88);
        for (i = v9 + 2; i < v6; ++i)
        {
          if (*(v15 - 1) == *(v15 - 5) && *v15 == *(v15 - 4))
          {
            if (v14)
            {
              goto LABEL_21;
            }
          }

          else if ((v14 ^ sub_25E636070()))
          {
            break;
          }

          v15 += 4;
        }

        if ((v14 & 1) == 0)
        {
          goto LABEL_28;
        }

LABEL_21:
        if (i < v9)
        {
          goto LABEL_121;
        }

        if (v9 < i)
        {
          v17 = 32 * i - 16;
          v18 = 32 * v9 + 24;
          v19 = i;
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

              v22 = (v21 + v18);
              v23 = (v21 + v17);
              v24 = *(v22 - 3);
              v25 = *(v22 - 1);
              v26 = *v22;
              v27 = *v23;
              *(v22 - 3) = *(v23 - 1);
              *(v22 - 1) = v27;
              *(v23 - 1) = v24;
              *v23 = v25;
              *(v23 + 1) = v26;
            }

            ++v20;
            v17 -= 32;
            v18 += 32;
          }

          while (v20 < v19);
        }
      }

LABEL_28:
      v28 = a3[1];
      if (i < v28)
      {
        if (__OFSUB__(i, v9))
        {
          goto LABEL_120;
        }

        if (i - v9 < a4)
        {
          if (__OFADD__(v9, a4))
          {
            goto LABEL_122;
          }

          if (v9 + a4 >= v28)
          {
            v29 = a3[1];
          }

          else
          {
            v29 = v9 + a4;
          }

          if (v29 < v9)
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
            return;
          }

          if (i != v29)
          {
            v30 = *a3;
            v31 = *a3 + 32 * i - 32;
            v92 = v9;
            v32 = v9 - i;
            do
            {
              v33 = i;
              v34 = v30 + 32 * i;
              v35 = *(v34 + 16);
              v36 = *(v34 + 24);
              v37 = v32;
              v38 = v31;
              do
              {
                v39 = v35 == *(v38 + 16) && v36 == *(v38 + 24);
                if (v39 || (sub_25E636070() & 1) == 0)
                {
                  break;
                }

                if (!v30)
                {
                  goto LABEL_124;
                }

                v40 = *(v38 + 32);
                v41 = *(v38 + 40);
                v35 = *(v38 + 48);
                v36 = *(v38 + 56);
                v42 = *(v38 + 16);
                *(v38 + 32) = *v38;
                *(v38 + 48) = v42;
                *v38 = v40;
                *(v38 + 8) = v41;
                *(v38 + 16) = v35;
                *(v38 + 24) = v36;
                v38 -= 32;
              }

              while (!__CFADD__(v37++, 1));
              i = v33 + 1;
              v31 += 32;
              --v32;
            }

            while (v33 + 1 != v29);
            i = v29;
            v9 = v92;
          }
        }
      }

      if (i < v9)
      {
        goto LABEL_119;
      }

      v91 = i;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_25E60A3B4();
        v8 = v87;
      }

      v44 = v8[2];
      v45 = v44 + 1;
      if (v44 >= v8[3] >> 1)
      {
        sub_25E60A3B4();
        v8 = v88;
      }

      v8[2] = v45;
      v46 = v8 + 4;
      v47 = &v8[2 * v44 + 4];
      *v47 = v9;
      v47[1] = v91;
      v93 = *result;
      if (!*result)
      {
        goto LABEL_127;
      }

      if (v44)
      {
        while (1)
        {
          v48 = v45 - 1;
          v49 = &v46[2 * v45 - 2];
          v50 = &v8[2 * v45];
          if (v45 >= 4)
          {
            break;
          }

          if (v45 == 3)
          {
            v51 = v8[4];
            v52 = v8[5];
            v61 = __OFSUB__(v52, v51);
            v53 = v52 - v51;
            v54 = v61;
LABEL_69:
            if (v54)
            {
              goto LABEL_109;
            }

            v66 = *v50;
            v65 = v50[1];
            v67 = __OFSUB__(v65, v66);
            v68 = v65 - v66;
            v69 = v67;
            if (v67)
            {
              goto LABEL_112;
            }

            v70 = v49[1];
            v71 = v70 - *v49;
            if (__OFSUB__(v70, *v49))
            {
              goto LABEL_115;
            }

            if (__OFADD__(v68, v71))
            {
              goto LABEL_117;
            }

            if (v68 + v71 >= v53)
            {
              if (v53 < v71)
              {
                v48 = v45 - 2;
              }

              goto LABEL_91;
            }

            goto LABEL_84;
          }

          if (v45 < 2)
          {
            goto LABEL_111;
          }

          v73 = *v50;
          v72 = v50[1];
          v61 = __OFSUB__(v72, v73);
          v68 = v72 - v73;
          v69 = v61;
LABEL_84:
          if (v69)
          {
            goto LABEL_114;
          }

          v75 = *v49;
          v74 = v49[1];
          v61 = __OFSUB__(v74, v75);
          v76 = v74 - v75;
          if (v61)
          {
            goto LABEL_116;
          }

          if (v76 < v68)
          {
            goto LABEL_98;
          }

LABEL_91:
          if (v48 - 1 >= v45)
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

          v80 = &v46[2 * v48 - 2];
          v81 = *v80;
          v82 = &v46[2 * v48];
          v83 = v82[1];
          sub_25E60D1C0((*a3 + 32 * *v80), (*a3 + 32 * *v82), (*a3 + 32 * v83), v93);
          if (v5)
          {
            goto LABEL_102;
          }

          if (v83 < v81)
          {
            goto LABEL_104;
          }

          v84 = v8;
          v85 = v8[2];
          if (v48 > v85)
          {
            goto LABEL_105;
          }

          *v80 = v81;
          v80[1] = v83;
          if (v48 >= v85)
          {
            goto LABEL_106;
          }

          v45 = v85 - 1;
          memmove(&v46[2 * v48], v82 + 2, 16 * (v85 - 1 - v48));
          v84[2] = v85 - 1;
          v86 = v85 > 2;
          v8 = v84;
          v5 = 0;
          if (!v86)
          {
            goto LABEL_98;
          }
        }

        v55 = &v46[2 * v45];
        v56 = *(v55 - 8);
        v57 = *(v55 - 7);
        v61 = __OFSUB__(v57, v56);
        v58 = v57 - v56;
        if (v61)
        {
          goto LABEL_107;
        }

        v60 = *(v55 - 6);
        v59 = *(v55 - 5);
        v61 = __OFSUB__(v59, v60);
        v53 = v59 - v60;
        v54 = v61;
        if (v61)
        {
          goto LABEL_108;
        }

        v62 = v50[1];
        v63 = v62 - *v50;
        if (__OFSUB__(v62, *v50))
        {
          goto LABEL_110;
        }

        v61 = __OFADD__(v53, v63);
        v64 = v53 + v63;
        if (v61)
        {
          goto LABEL_113;
        }

        if (v64 >= v58)
        {
          v78 = *v49;
          v77 = v49[1];
          v61 = __OFSUB__(v77, v78);
          v79 = v77 - v78;
          if (v61)
          {
            goto LABEL_118;
          }

          if (v53 < v79)
          {
            v48 = v45 - 2;
          }

          goto LABEL_91;
        }

        goto LABEL_69;
      }

LABEL_98:
      v6 = a3[1];
      v7 = v91;
      if (v91 >= v6)
      {
        v95 = v8;
        break;
      }
    }
  }

  if (!*result)
  {
    goto LABEL_128;
  }

  sub_25E60CD1C(&v95, *result, a3);
LABEL_102:
}

uint64_t sub_25E60CAB8(uint64_t *a1, double *a2, void *a3)
{
  v4 = a1;
  v5 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_25E60D384(v5);
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
    sub_25E60CE48((*a3 + 16 * *v9), (*a3 + 16 * *v11), (*a3 + 16 * v12), a2);
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

uint64_t sub_25E60CBE4(uint64_t *a1, double *a2, void *a3)
{
  v4 = a1;
  v15 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_25E60D384(v15);
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
    sub_25E60CFEC((*a3 + 40 * *v4), (*a3 + 40 * *v9), *a3 + 40 * v10, a2);
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

uint64_t sub_25E60CD1C(uint64_t *a1, char *a2, void *a3)
{
  v4 = a1;
  v5 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_25E60D384(v5);
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
    sub_25E60D1C0((*a3 + 32 * *v9), (*a3 + 32 * *v11), (*a3 + 32 * v12), a2);
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

uint64_t sub_25E60CE48(double *__src, double *__dst, double *a3, double *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __dst;
  v7 = __src;
  v8 = (__dst - __src) / 16;
  v9 = (a3 - __dst) / 16;
  if (v8 < v9)
  {
    if (a4 != __src || &__src[2 * v8] <= a4)
    {
      memmove(a4, __src, 16 * v8);
    }

    v11 = &v4[2 * v8];
    while (1)
    {
      if (v4 >= v11 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_38;
      }

      if (*v6 >= *v4)
      {
        break;
      }

      v13 = v6;
      v14 = v7 == v6;
      v6 += 2;
      if (!v14)
      {
        goto LABEL_17;
      }

LABEL_18:
      v7 += 2;
    }

    v13 = v4;
    v14 = v7 == v4;
    v4 += 2;
    if (v14)
    {
      goto LABEL_18;
    }

LABEL_17:
    *v7 = *v13;
    goto LABEL_18;
  }

  if (a4 != __dst || &__dst[2 * v9] <= a4)
  {
    memmove(a4, __dst, 16 * v9);
  }

  v11 = &v4[2 * v9];
LABEL_25:
  v16 = v6 - 2;
  for (v5 -= 2; v11 > v4 && v6 > v7; v5 -= 2)
  {
    if (*(v11 - 2) < *v16)
    {
      v14 = v5 + 2 == v6;
      v6 -= 2;
      if (!v14)
      {
        *v5 = *v16;
        v6 = v16;
      }

      goto LABEL_25;
    }

    if (v11 != v5 + 2)
    {
      *v5 = *(v11 - 1);
    }

    v11 -= 2;
  }

LABEL_38:
  v18 = (v11 - v4) / 16;
  if (v6 != v4 || v6 >= &v4[2 * v18])
  {
    memmove(v6, v4, 16 * v18);
  }

  return 1;
}

uint64_t sub_25E60CFEC(double *__src, double *__dst, unint64_t a3, double *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __dst;
  v7 = __src;
  v8 = (__dst - __src) / 40;
  v9 = (a3 - __dst) / 40;
  if (v8 < v9)
  {
    if (a4 != __src || &__src[5 * v8] <= a4)
    {
      memmove(a4, __src, 40 * v8);
    }

    v11 = &v4[5 * v8];
    while (1)
    {
      if (v4 >= v11 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_38;
      }

      if (*v6 >= *v4)
      {
        break;
      }

      v13 = v6;
      v14 = v7 == v6;
      v6 += 5;
      if (!v14)
      {
        goto LABEL_17;
      }

LABEL_18:
      v7 += 5;
    }

    v13 = v4;
    v14 = v7 == v4;
    v4 += 5;
    if (v14)
    {
      goto LABEL_18;
    }

LABEL_17:
    v15 = *v13;
    v16 = *(v13 + 1);
    v7[4] = v13[4];
    *v7 = v15;
    *(v7 + 1) = v16;
    goto LABEL_18;
  }

  if (a4 != __dst || &__dst[5 * v9] <= a4)
  {
    memmove(a4, __dst, 40 * v9);
  }

  v11 = &v4[5 * v9];
LABEL_25:
  v18 = v6 - 5;
  for (v5 -= 40; v11 > v4 && v6 > v7; v5 -= 40)
  {
    if (*(v11 - 5) < *v18)
    {
      v14 = v5 + 40 == v6;
      v6 -= 5;
      if (!v14)
      {
        v22 = *v18;
        v23 = *(v18 + 1);
        *(v5 + 32) = v18[4];
        *v5 = v22;
        *(v5 + 16) = v23;
        v6 = v18;
      }

      goto LABEL_25;
    }

    if (v11 != (v5 + 40))
    {
      v20 = *(v11 - 5);
      v21 = *(v11 - 3);
      *(v5 + 32) = *(v11 - 1);
      *v5 = v20;
      *(v5 + 16) = v21;
    }

    v11 -= 5;
  }

LABEL_38:
  v24 = (v11 - v4) / 40;
  if (v6 != v4 || v6 >= &v4[5 * v24])
  {
    memmove(v6, v4, 40 * v24);
  }

  return 1;
}

uint64_t sub_25E60D1C0(char *__src, char *__dst, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __dst;
  v7 = __src;
  v8 = (__dst - __src) / 32;
  v9 = (a3 - __dst) / 32;
  if (v8 < v9)
  {
    if (a4 != __src || &__src[32 * v8] <= a4)
    {
      memmove(a4, __src, 32 * v8);
    }

    v11 = &v4[32 * v8];
    while (1)
    {
      if (v4 >= v11 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_46;
      }

      v13 = *(v6 + 2) == *(v4 + 2) && *(v6 + 3) == *(v4 + 3);
      if (v13 || (sub_25E636070() & 1) == 0)
      {
        break;
      }

      v14 = v6;
      v13 = v7 == v6;
      v6 += 32;
      if (!v13)
      {
        goto LABEL_21;
      }

LABEL_22:
      v7 += 32;
    }

    v14 = v4;
    v13 = v7 == v4;
    v4 += 32;
    if (v13)
    {
      goto LABEL_22;
    }

LABEL_21:
    v15 = *(v14 + 1);
    *v7 = *v14;
    *(v7 + 1) = v15;
    goto LABEL_22;
  }

  if (a4 != __dst || &__dst[32 * v9] <= a4)
  {
    memmove(a4, __dst, 32 * v9);
  }

  v11 = &v4[32 * v9];
LABEL_29:
  for (v5 -= 32; v11 > v4 && v6 > v7; v5 -= 32)
  {
    v18 = *(v11 - 2) == *(v6 - 2) && *(v11 - 1) == *(v6 - 1);
    if (!v18 && (sub_25E636070() & 1) != 0)
    {
      v20 = v6 - 32;
      v13 = v5 + 32 == v6;
      v6 -= 32;
      if (!v13)
      {
        v21 = *(v20 + 1);
        *v5 = *v20;
        *(v5 + 1) = v21;
        v6 = v20;
      }

      goto LABEL_29;
    }

    if (v11 != v5 + 32)
    {
      v19 = *(v11 - 1);
      *v5 = *(v11 - 2);
      *(v5 + 1) = v19;
    }

    v11 -= 32;
  }

LABEL_46:
  v22 = (v11 - v4) / 32;
  if (v6 != v4 || v6 >= &v4[32 * v22])
  {
    memmove(v6, v4, 32 * v22);
  }

  return 1;
}

char *sub_25E60D398(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[16 * a2] <= a3)
  {
    return OUTLINED_FUNCTION_16_2(a3, result);
  }

  return result;
}

char *sub_25E60D3B8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCF9220, &qword_25E63B2F0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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

unint64_t sub_25E60D4B8(uint64_t a1)
{
  sub_25E636110();
  sub_25E61D8BC();
  v2 = sub_25E636130();

  return sub_25E60D758(a1, v2);
}

unint64_t sub_25E60D524(uint64_t a1)
{
  sub_25E6355A0();
  sub_25E60EF80(&qword_27FCF91A8, MEMORY[0x277CC9600]);
  v2 = sub_25E635760();

  return sub_25E60D860(a1, v2);
}

unint64_t sub_25E60D5A8(uint64_t a1)
{
  v1 = a1;
  sub_25E636110();
  MEMORY[0x25F8B9DE0](v1);
  v2 = sub_25E636130();

  return sub_25E60DA08(v1, v2);
}

unint64_t sub_25E60D614(double a1)
{
  v2 = sub_25E636100();

  return sub_25E60DA68(v2, a1);
}

unint64_t sub_25E60D660(uint64_t a1, uint64_t a2)
{
  sub_25E636110();
  sub_25E635860();
  v4 = sub_25E636130();

  return sub_25E60DAC4(a1, a2, v4);
}

unint64_t sub_25E60D6D8(uint64_t a1, uint64_t a2)
{
  sub_25E636110();
  sub_25E61D8BC();
  sub_25E61D87C();
  v4 = sub_25E636130();

  return sub_25E60DB78(a1, a2, v4);
}

unint64_t sub_25E60D758(uint64_t a1, uint64_t a2)
{
  v3 = v2 + 64;
  v4 = -1 << *(v2 + 32);
  v5 = a2 & ~v4;
  if ((*(v2 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v7 = ~v4;
    v8 = *(a1 + 16);
    v9 = *(v2 + 48);
    v10 = (a1 + 40);
    do
    {
      v11 = *(v9 + 8 * v5);
      if (*(v11 + 16) == v8)
      {
        if (!v8 || v11 == a1)
        {
          return v5;
        }

        v12 = (v11 + 40);
        v13 = v10;
        v14 = v8;
        while (1)
        {
          v15 = *(v12 - 1) == *(v13 - 1) && *v12 == *v13;
          if (!v15 && (sub_25E636070() & 1) == 0)
          {
            break;
          }

          v12 += 2;
          v13 += 2;
          if (!--v14)
          {
            return v5;
          }
        }
      }

      v5 = (v5 + 1) & v7;
    }

    while (((*(v3 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_25E60D860(uint64_t a1, uint64_t a2)
{
  v13 = a1;
  v4 = sub_25E6355A0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = v2 + 64;
  v12 = ~(-1 << *(v2 + 32));
  for (i = a2 & v12; ((1 << i) & *(v14 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v12)
  {
    (*(v5 + 16))(v7, *(v2 + 48) + *(v5 + 72) * i, v4);
    sub_25E60EF80(&qword_27FCF9258, MEMORY[0x277CC9610]);
    v9 = sub_25E6357B0();
    (*(v5 + 8))(v7, v4);
    if (v9)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_25E60DA08(unsigned __int8 a1, uint64_t a2)
{
  v3 = a1;
  v4 = ~(-1 << *(v2 + 32));
    ;
  }

  return result;
}

unint64_t sub_25E60DA68(uint64_t a1, double a2)
{
  v3 = ~(-1 << *(v2 + 32));
    ;
  }

  return result;
}

unint64_t sub_25E60DAC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (sub_25E636070() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_25E60DB78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3 + 64;
  v5 = -1 << *(v3 + 32);
  v6 = a3 & ~v5;
  if ((*(v3 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v8 = ~v5;
    v9 = *(a1 + 16);
    v10 = *(v3 + 48);
    v23 = (a2 + 32);
    v22 = (a1 + 40);
    do
    {
      v11 = (v10 + 16 * v6);
      v12 = *v11;
      if (*(*v11 + 16) == v9)
      {
        v13 = v11[1];
        if (!v9 || v12 == a1)
        {
LABEL_13:
          v18 = *(v13 + 16);
          if (v18 == *(a2 + 16))
          {
            if (!v18 || v13 == a2)
            {
              return v6;
            }

            v19 = (v13 + 32);
            for (i = v23; *v19 == *i; ++i)
            {
              ++v19;
              if (!--v18)
              {
                return v6;
              }
            }
          }
        }

        else
        {
          v14 = (v12 + 40);
          v15 = v22;
          v16 = v9;
          while (1)
          {
            v17 = *(v14 - 1) == *(v15 - 1) && *v14 == *v15;
            if (!v17 && (sub_25E636070() & 1) == 0)
            {
              break;
            }

            v14 += 2;
            v15 += 2;
            if (!--v16)
            {
              goto LABEL_13;
            }
          }
        }
      }

      v6 = (v6 + 1) & v8;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  return v6;
}

uint64_t sub_25E60DCEC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCF9180, &qword_25E63B180);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_25E60DD54(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RootEventRecorder.Event(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_25E60DDB8(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_25E60D5A8(a2);
  if (__OFADD__(v7[2], (v9 & 1) == 0))
  {
    __break(1u);
    goto LABEL_11;
  }

  v10 = v8;
  v11 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCF9248, &qword_25E63B318);
  result = sub_25E635EA0();
  if ((result & 1) == 0)
  {
    goto LABEL_5;
  }

  result = sub_25E60D5A8(a2);
  if ((v11 & 1) != (v13 & 1))
  {
LABEL_11:
    result = sub_25E6360A0();
    __break(1u);
    return result;
  }

  v10 = result;
LABEL_5:
  v14 = *v4;
  if (v11)
  {
    *(v14[7] + 8 * v10) = a1;
  }

  else
  {

    return sub_25E61D400(v10, a2, a1, v14);
  }

  return result;
}

uint64_t sub_25E60DEC8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RootEventRecorder.Event(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_25E60DF94()
{
  result = qword_27FCF91C8;
  if (!qword_27FCF91C8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27FCF91C8);
  }

  return result;
}

uint64_t sub_25E60DFD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v11 = *v5;
  v12 = sub_25E60D660(a3, a4);
  if (__OFADD__(v11[2], (v13 & 1) == 0))
  {
    __break(1u);
    goto LABEL_13;
  }

  v14 = v12;
  v15 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCF9208, &qword_25E63B2D8);
  if ((sub_25E635EA0() & 1) == 0)
  {
    goto LABEL_5;
  }

  v16 = sub_25E60D660(a3, a4);
  if ((v15 & 1) != (v17 & 1))
  {
LABEL_13:
    result = sub_25E6360A0();
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
    sub_25E61D444(v14, a3, a4, a1, a2, v18);
  }
}

uint64_t sub_25E60E12C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  OUTLINED_FUNCTION_37();
  sub_25E60D6D8(v8, v9);
  OUTLINED_FUNCTION_7_3();
  if (__OFADD__(v12, v13))
  {
    __break(1u);
LABEL_14:
    result = sub_25E6360A0();
    __break(1u);
    return result;
  }

  v14 = v10;
  v15 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCF9200, &unk_25E63B2C8);
  if (sub_25E635EA0())
  {
    sub_25E60D6D8(v6, v4);
    OUTLINED_FUNCTION_4_5();
    if (!v17)
    {
      goto LABEL_14;
    }

    v14 = v16;
  }

  v18 = *v5;
  if (v15)
  {
    *(v18[7] + 8 * v14) = v7;
  }

  else
  {
    sub_25E61D490(v14, v6, v4, v7, v18);
  }
}

uint64_t sub_25E60E258(uint64_t a1, unint64_t a2)
{
  v2 = sub_25E60E730(sub_25E60E72C, 0, a1, a2);
  v6 = sub_25E60E764(v2, v3, v4, v5);

  return v6;
}

unint64_t sub_25E60E2C4()
{
  result = qword_27FCF91D0;
  if (!qword_27FCF91D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCF91D0);
  }

  return result;
}

uint64_t type metadata accessor for EventRecorderDiagramRenderer(uint64_t a1)
{
  result = qword_27FCF91D8;
  if (!qword_27FCF91D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_25E60E36C(uint64_t a1)
{
  result = sub_25E635570();
  if (v2 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t getEnumTagSinglePayload for EventRecorderDiagramRenderer.Color(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *storeEnumTagSinglePayload for EventRecorderDiagramRenderer.Color(_BYTE *result, unsigned int a2, unsigned int a3)
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
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_25E60E65C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 104))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 96);
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

uint64_t sub_25E60E6B0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 104) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 104) = 0;
    }

    if (a2)
    {
      *(result + 96) = a2;
    }
  }

  return result;
}

uint64_t sub_25E60E764(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = sub_25E635D40();
    if (!v9 || (v10 = v9, v11 = sub_25E60AE48(v9, 0), v12 = sub_25E60E8C4(v14, (v11 + 4), v10, a1, a2, a3, a4), , , v12 == v10))
    {
      v13 = sub_25E635850();

      return v13;
    }

    __break(1u);
  }

  else
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v14[0] = a3;
      v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_25E635850();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  sub_25E635E40();
LABEL_4:

  return sub_25E635850();
}

unint64_t sub_25E60E8C4(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_36;
  }

  if (a3 < 0)
  {
    goto LABEL_40;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_36:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    result = v12;
    if ((v12 & 0xC) == v15)
    {
      result = sub_25E60EAD4(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_25E6358C0();
      v19 = result;
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_25E635E40();
        }

        v19 = *(result + v18);
      }
    }

    if ((v12 & 0xC) == v15)
    {
      result = sub_25E60EAD4(v12, a6, a7);
      v12 = result;
      if ((a7 & 0x1000000000000000) == 0)
      {
LABEL_27:
        v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
        goto LABEL_31;
      }
    }

    else if ((a7 & 0x1000000000000000) == 0)
    {
      goto LABEL_27;
    }

    if (v23 <= v12 >> 16)
    {
      goto LABEL_39;
    }

    result = sub_25E6358A0();
    v12 = result;
LABEL_31:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_36;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_38;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_36;
    }
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

unint64_t sub_25E60EAD4(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_25E6358D0();
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
    v5 = MEMORY[0x25F8B9570](15, a1 >> 16);
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

void *sub_25E60EBA0(void *result, void *a2, uint64_t a3, uint64_t a4)
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
    v9 = 0;
    a3 = 0;
LABEL_18:
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
    goto LABEL_18;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    while (1)
    {
      v10 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if (!v7)
      {
        while (1)
        {
          v11 = v9 + 1;
          if (__OFADD__(v9, 1))
          {
            break;
          }

          if (v11 >= ((63 - v6) >> 6))
          {
            v7 = 0;
            a3 = v8;
            goto LABEL_18;
          }

          v7 = *(v4 + 8 * v11);
          ++v9;
          if (v7)
          {
            v9 = v11;
            goto LABEL_13;
          }
        }

        __break(1u);
        break;
      }

LABEL_13:
      v12 = (v9 << 9) | (8 * __clz(__rbit64(v7)));
      v13 = *(*(a4 + 48) + v12);
      v14 = *(*(a4 + 56) + v12);
      v7 &= v7 - 1;
      *a2 = v13;
      a2[1] = v14;
      a2 += 2;
      v8 = v10;
      if (v10 == a3)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_25E60EC94(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
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
    v9 = 0;
    a3 = 0;
LABEL_18:
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
    goto LABEL_18;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    while (1)
    {
      v10 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if (!v7)
      {
        while (1)
        {
          v11 = v9 + 1;
          if (__OFADD__(v9, 1))
          {
            break;
          }

          if (v11 >= ((63 - v6) >> 6))
          {
            v7 = 0;
            a3 = v8;
            goto LABEL_18;
          }

          v7 = *(v4 + 8 * v11);
          ++v9;
          if (v7)
          {
            v9 = v11;
            goto LABEL_13;
          }
        }

        __break(1u);
        break;
      }

LABEL_13:
      v12 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      v13 = v12 | (v9 << 6);
      v14 = *(*(a4 + 48) + 8 * v13);
      v15 = (*(a4 + 56) + 32 * v13);
      v16 = *v15;
      v17 = v15[1];
      *a2 = v14;
      *(a2 + 8) = v16;
      *(a2 + 24) = v17;
      a2 += 40;
      v8 = v10;
      if (v10 == a3)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_25E60ED8C(void *result, void *a2, unint64_t a3, uint64_t a4)
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
LABEL_21:
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
    goto LABEL_21;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    v12 = 0;
    v13 = 0;
    v25 = -1 << *(a4 + 32);
    v14 = (63 - v7) >> 6;
    while (1)
    {
      if (v12 >= v10)
      {
        goto LABEL_24;
      }

      v15 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_25;
      }

      if (!v9)
      {
        while (1)
        {
          v16 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            break;
          }

          if (v16 >= v14)
          {
            v9 = 0;
            v10 = v12;
            goto LABEL_19;
          }

          v9 = *(v6 + 8 * v16);
          ++v13;
          if (v9)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
LABEL_24:
        __break(1u);
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      v16 = v13;
LABEL_15:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = (v16 << 10) | (16 * v17);
      v19 = (*(a4 + 48) + v18);
      v21 = *v19;
      v20 = v19[1];
      v22 = (*(a4 + 56) + v18);
      v23 = *v22;
      v24 = v22[1];
      *v11 = v21;
      v11[1] = v20;
      v11[2] = v23;
      v11[3] = v24;
      if (v15 == v10)
      {
        break;
      }

      v11 += 4;

      v12 = v15;
      v13 = v16;
    }

    v13 = v16;
LABEL_19:
    v7 = v25;
    goto LABEL_21;
  }

LABEL_26:
  __break(1u);
  return result;
}

unint64_t sub_25E60EF1C()
{
  result = qword_280CB2808;
  if (!qword_280CB2808)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FCF9198, &qword_25E63B198);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CB2808);
  }

  return result;
}

uint64_t sub_25E60EF80(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_25E6355A0();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_25E60EFC4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCF9260, &qword_25E63B328);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_25E60F034()
{
  result = qword_27FCF9270;
  if (!qword_27FCF9270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCF9270);
  }

  return result;
}

void OUTLINED_FUNCTION_1_5()
{
  *(v3 + 8 * (v2 >> 6) + 64) |= 1 << v2;
  *(*(v3 + 48) + 8 * v2) = v0;
  *(*(v3 + 56) + 8 * v2) = v1;
}

uint64_t OUTLINED_FUNCTION_17_2(uint64_t a1)
{

  return swift_beginAccess();
}

unint64_t OUTLINED_FUNCTION_26()
{
  *(v2 - 240) = v1;

  return sub_25E60D4B8(v0);
}

uint64_t OUTLINED_FUNCTION_27()
{
  result = v1;
  *(v2 - 336) = v0;
  return result;
}

uint64_t OUTLINED_FUNCTION_35()
{

  return swift_allocObject();
}

unint64_t OUTLINED_FUNCTION_40()
{
  *(v2 - 256) = *(v0 + v1);
  *(v0 + v1) = 0x8000000000000000;

  return sub_25E60D614(v4);
}

uint64_t OUTLINED_FUNCTION_41(uint64_t a1, uint64_t a2)
{

  return swift_beginAccess();
}

double OUTLINED_FUNCTION_47(const __CTLine *a1)
{

  *&result = CTLineGetBoundsWithOptions(a1, 0);
  return result;
}

unint64_t OUTLINED_FUNCTION_48()
{

  return sub_25E60D4B8(v0);
}

uint64_t OUTLINED_FUNCTION_54(uint64_t a1)
{

  return sub_25E635EA0();
}

void OUTLINED_FUNCTION_55()
{

  CGPointMake();
}

void OUTLINED_FUNCTION_56()
{

  CGContextDrawPath(v0, kCGPathStroke);
}

uint64_t sub_25E60F494(uint64_t a1)
{
  if ((a1 - 1664) < 2)
  {
    v7 = 0;
    v9 = MEMORY[0x277D84FA0];
    v8 = 2;
    goto LABEL_20;
  }

  switch(a1)
  {
    case 287:
    case 421:
      goto LABEL_18;
    case 595:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FCF92C0, &unk_25E63B410);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_25E63A3E0;
      v5 = 595;
      goto LABEL_19;
    case 839:
      goto LABEL_18;
    case 881:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FCF92C0, &unk_25E63B410);
      v10 = swift_initStackObject();
      *(v10 + 16) = xmmword_25E63A3E0;
      *(v10 + 32) = 881;
      v9 = sub_25E612764(v10);
      v8 = 0;
      v7 = 2;
      goto LABEL_20;
  }

  if (a1 == 910 || a1 == 1086 || a1 == 1533 || (a1 != 1663 ? (v2 = a1 == 15291) : (v2 = 1), !v2 ? (v3 = a1 == 10932) : (v3 = 1), v3))
  {
LABEL_18:
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FCF92C0, &unk_25E63B410);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_25E63A3E0;
    v5 = 492;
LABEL_19:
    *(inited + 32) = v5;
    v9 = sub_25E612764(inited);
    v8 = 0;
    v7 = 1;
    goto LABEL_20;
  }

  v7 = 0;
  v8 = 0;
  v9 = MEMORY[0x277D84FA0];
LABEL_20:
  type metadata accessor for UtilitySceneConfiguration();
  swift_allocObject();
  return sub_25E5F60A8(a1, v8, v7, v9);
}

uint64_t sub_25E60F680(uint64_t a1)
{
  result = MEMORY[0x277D84FA0];
  switch(a1)
  {
    case 1:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FCF92C0, &unk_25E63B410);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_25E63B450;
      *(inited + 32) = xmmword_25E63B460;
      *(inited + 48) = xmmword_25E63B470;
      *(inited + 64) = xmmword_25E63B480;
      *(inited + 80) = 1663;
      return sub_25E5F696C(inited);
    case 2:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FCF92C0, &unk_25E63B410);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_25E63A3E0;
      v4 = 1086;
      goto LABEL_10;
    case 3:
    case 5:
    case 6:
    case 7:
      return result;
    case 4:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FCF92C0, &unk_25E63B410);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_25E63B490;
      *(inited + 32) = xmmword_25E63B4A0;
      *(inited + 48) = xmmword_25E63B4B0;
      *(inited + 64) = xmmword_25E63B4C0;
      *(inited + 80) = xmmword_25E63B4D0;
      *(inited + 96) = xmmword_25E63B4E0;
      *(inited + 112) = xmmword_25E63B4F0;
      *(inited + 128) = xmmword_25E63B500;
      *(inited + 144) = xmmword_25E63B510;
      *(inited + 160) = xmmword_25E63B520;
      return sub_25E5F696C(inited);
    case 8:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FCF92C0, &unk_25E63B410);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_25E63A3E0;
      v4 = 1664;
      goto LABEL_10;
    default:
      if (a1 == 16)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FCF92C0, &unk_25E63B410);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_25E63A3E0;
        v4 = 2147482095;
      }

      else
      {
        if (a1 != 32)
        {
          return result;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FCF92C0, &unk_25E63B410);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_25E63A3E0;
        v4 = 839;
      }

LABEL_10:
      *(inited + 32) = v4;
      return sub_25E5F696C(inited);
  }
}

uint64_t sub_25E60F888(uint64_t a1)
{
  if (a1 == 4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FCF92C0, &unk_25E63B410);
    inited = swift_initStackObject();
    inited[1] = xmmword_25E63B530;
    inited[2] = xmmword_25E63B540;
    inited[3] = xmmword_25E63B550;
    inited[4] = xmmword_25E63B560;
    inited[5] = xmmword_25E63B570;
    return sub_25E5F696C(inited);
  }

  if (a1 == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FCF92C0, &unk_25E63B410);
    inited = swift_initStackObject();
    inited[1] = xmmword_25E63B580;
    inited[2] = xmmword_25E63B590;
    inited[3] = xmmword_25E63B5A0;
    inited[4] = xmmword_25E63B5B0;
    inited[5] = xmmword_25E63B5C0;
    inited[6] = xmmword_25E63B5D0;
    inited[7] = xmmword_25E63B5E0;
    inited[8] = xmmword_25E63B5F0;
    return sub_25E5F696C(inited);
  }

  return MEMORY[0x277D84FA0];
}

uint64_t static PartOfWeek.partOfWeek(for:in:)@<X0>(_BYTE *a1@<X8>)
{
  result = sub_25E6355E0();
  *a1 = result & 1;
  return result;
}

Swift::String __swiftcall PartOfWeek.localizedText()()
{
  if (*v0)
  {
    v1 = "ilityTypeConfiguration";
  }

  else
  {
    v1 = "PNPartOfWeekWeekendText";
  }

  type metadata accessor for LocalizedString();
  v2 = static LocalizedString.localizedString(forKey:)(0xD000000000000017, v1 | 0x8000000000000000);
  v4 = v3;

  v5 = v2;
  v6 = v4;
  result._object = v6;
  result._countAndFlagsBits = v5;
  return result;
}

uint64_t PartOfWeek.localizedSynonyms()()
{
  if (*v0)
  {
    v1 = "ilityTypeConfiguration";
  }

  else
  {
    v1 = "PNPartOfWeekWeekendText";
  }

  v6 = v1 | 0x8000000000000000;

  v2 = OUTLINED_FUNCTION_0_0();
  MEMORY[0x25F8B9540](v2, 0xE800000000000000);

  type metadata accessor for LocalizedString();
  static LocalizedString.localizedSynonyms(forKey:)(0xD000000000000017, v6);
  v4 = v3;

  return v4;
}

uint64_t static PartOfWeek.from(localizedText:)@<X0>(char *a3@<X8>)
{
  v3 = sub_25E635830();
  v5 = v4;
  type metadata accessor for LocalizedString();
  v6 = 0;
  v7 = 0;
  v33 = v3;
  v34 = v5;
  while (1)
  {
    v8 = v6;
    v9 = *(&unk_28704A3A8 + v7 + 32);
    v10 = "PNPartOfWeekWeekdayText";
    if (v9)
    {
      v10 = "PNPartOfWeekWeekendText";
    }

    v11 = (v10 - 32) | 0x8000000000000000;
    static LocalizedString.localizedString(forKey:)(0xD000000000000017, v11);

    v12 = sub_25E635830();
    v14 = v13;

    if (v12 == v3 && v14 == v5)
    {
      break;
    }

    v16 = sub_25E636070();

    if (v16)
    {
      goto LABEL_21;
    }

    v17 = OUTLINED_FUNCTION_0_0();
    MEMORY[0x25F8B9540](v17, 0xE800000000000000);

    static LocalizedString.localizedSynonyms(forKey:)(0xD000000000000017, v11);
    v19 = v18;

    v20 = *(v19 + 16);
    if (v20)
    {
      v35 = MEMORY[0x277D84F90];
      sub_25E5F3468(0, v20, 0);
      v21 = v35;
      v22 = v19 + 40;
      do
      {
        v23 = sub_25E635830();
        v25 = v24;
        v27 = *(v35 + 16);
        v26 = *(v35 + 24);
        if (v27 >= v26 >> 1)
        {
          sub_25E5F3468(v26 > 1, v27 + 1, 1);
        }

        *(v35 + 16) = v27 + 1;
        v28 = v35 + 16 * v27;
        *(v28 + 32) = v23;
        *(v28 + 40) = v25;
        v22 += 16;
        --v20;
      }

      while (v20);

      v3 = v33;
      v5 = v34;
    }

    else
    {

      v21 = MEMORY[0x277D84F90];
    }

    v29 = sub_25E5F68AC(v21);
    v30 = sub_25E5F6F28(v3, v5, v29);

    if (v30)
    {
      goto LABEL_21;
    }

    v6 = 1;
    v7 = 1u;
    if (v8)
    {

      v9 = 2;
      goto LABEL_22;
    }
  }

LABEL_21:

LABEL_22:
  *a3 = v9;
  return result;
}

PhotosIntelligenceCore::PartOfWeek_optional __swiftcall PartOfWeek.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_25E635F30();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t PartOfWeek.rawValue.getter()
{
  if (*v0)
  {
    return 0x646E656B656577;
  }

  else
  {
    return 0x7961646B656577;
  }
}

uint64_t sub_25E60FE68@<X0>(uint64_t *a1@<X8>)
{
  result = PartOfWeek.rawValue.getter();
  *a1 = result;
  a1[1] = 0xE700000000000000;
  return result;
}

uint64_t sub_25E60FF54()
{
  v0 = sub_25E6355B0();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_25E6355F0();
  __swift_allocate_value_buffer(v4, qword_280CB2198);
  __swift_project_value_buffer(v4, qword_280CB2198);
  (*(v1 + 104))(v3, *MEMORY[0x277CC9830], v0);
  sub_25E6355C0();
  return (*(v1 + 8))(v3, v0);
}

void sub_25E610074(uint64_t a1, uint64_t a2, void (**a3)(void, void, void))
{
  if (qword_280CB2190 != -1)
  {
    swift_once();
  }

  v4 = sub_25E6355F0();
  __swift_project_value_buffer(v4, qword_280CB2198);
  v5 = sub_25E6355E0();
  v6 = "PNPartOfWeekWeekdayText";
  if (v5)
  {
    v6 = "PNPartOfWeekWeekendText";
  }

  v7 = (v6 - 32) | 0x8000000000000000;
  type metadata accessor for LocalizedString();
  static LocalizedString.localizedString(forKey:)(0xD000000000000017, v7);

  MEMORY[0x25F8B9540](0x736D796E6F6E7953, 0xE800000000000000);

  static LocalizedString.localizedSynonyms(forKey:)(0xD000000000000017, v7);
  v9 = v8;

  sub_25E5F68AC(v9);
  v10 = sub_25E6357C0();
  v11 = sub_25E635B30();
  (a3)[2](a3, v10, v11);

  _Block_release(a3);
}

uint64_t static PNPartOfWeekCalculator.partOfWeekLocalizedStrings(for:result:)(uint64_t a1, void (*a2)(uint64_t, uint64_t, uint64_t))
{
  if (qword_280CB2190 != -1)
  {
    swift_once();
  }

  v3 = sub_25E6355F0();
  __swift_project_value_buffer(v3, qword_280CB2198);
  v4 = sub_25E6355E0();
  v5 = "PNPartOfWeekWeekdayText";
  if (v4)
  {
    v5 = "PNPartOfWeekWeekendText";
  }

  v6 = (v5 - 32) | 0x8000000000000000;
  type metadata accessor for LocalizedString();
  v7 = static LocalizedString.localizedString(forKey:)(0xD000000000000017, v6);
  v9 = v8;

  v10 = OUTLINED_FUNCTION_0_0();
  MEMORY[0x25F8B9540](v10, 0xE800000000000000);

  static LocalizedString.localizedSynonyms(forKey:)(0xD000000000000017, v6);
  v12 = v11;

  v13 = sub_25E5F68AC(v12);
  a2(v7, v9, v13);
}

PNPartOfWeekCalculator __swiftcall PNPartOfWeekCalculator.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

unint64_t sub_25E610538()
{
  result = qword_27FCF9290;
  if (!qword_27FCF9290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCF9290);
  }

  return result;
}

unint64_t sub_25E610590()
{
  result = qword_27FCF9298;
  if (!qword_27FCF9298)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FCF92A0, &qword_25E63B710);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCF9298);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PartOfWeek(_BYTE *result, unsigned int a2, unsigned int a3)
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t type metadata accessor for PNPartOfWeekCalculator()
{
  result = qword_27FCF92A8;
  if (!qword_27FCF92A8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27FCF92A8);
  }

  return result;
}

unint64_t sub_25E610714()
{
  result = qword_27FCF92B0;
  if (!qword_27FCF92B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FCF92B0);
  }

  return result;
}

uint64_t sub_25E610768(unsigned __int8 a1, uint64_t a2)
{
  v2 = 0x676E696E726F6DLL;
  v3 = 0xE700000000000000;
  v4 = a1;
  v5 = 0x676E696E726F6DLL;
  switch(v4)
  {
    case 1:
      v3 = 0xE400000000000000;
      v5 = 1852796782;
      break;
    case 2:
      v5 = 0x6F6F6E7265746661;
      v3 = 0xE90000000000006ELL;
      break;
    case 3:
      v5 = 0x676E696E657665;
      break;
    case 4:
      v3 = 0xE500000000000000;
      v5 = 0x746867696ELL;
      break;
    default:
      break;
  }

  v6 = 0xE700000000000000;
  switch(a2)
  {
    case 1:
      v6 = 0xE400000000000000;
      v2 = 1852796782;
      break;
    case 2:
      v2 = 0x6F6F6E7265746661;
      v6 = 0xE90000000000006ELL;
      break;
    case 3:
      v2 = 0x676E696E657665;
      break;
    case 4:
      v6 = 0xE500000000000000;
      v2 = 0x746867696ELL;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_1_6(v5, a2, v2);
  }

  return v8 & 1;
}

uint64_t sub_25E6108C0(char a1, char a2)
{
  if (*&aSpring_2[8 * a1] == *&aSpring_2[8 * a2])
  {
    v2 = 1;
  }

  else
  {
    v2 = sub_25E636070();
  }

  swift_bridgeObjectRelease_n();
  return v2 & 1;
}

uint64_t sub_25E610928(unsigned __int8 a1, uint64_t a2)
{
  v2 = 0x6465726975716572;
  v3 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v4 = 0x697469726F697270;
    }

    else
    {
      v4 = 0x6B61657262656974;
    }

    if (v3 == 1)
    {
      v5 = 0xEB0000000064657ALL;
    }

    else
    {
      v5 = 0xEA00000000007265;
    }
  }

  else
  {
    v5 = 0xE800000000000000;
    v4 = 0x6465726975716572;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v2 = 0x697469726F697270;
    }

    else
    {
      v2 = 0x6B61657262656974;
    }

    if (a2 == 1)
    {
      v6 = 0xEB0000000064657ALL;
    }

    else
    {
      v6 = 0xEA00000000007265;
    }
  }

  else
  {
    v6 = 0xE800000000000000;
  }

  if (v4 == v2 && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_1_6(v4, a2, v2);
  }

  return v8 & 1;
}

uint64_t sub_25E610A30(char a1, char a2)
{
  v2 = "ening";
  if (a1)
  {
    v3 = "generic location";
  }

  else
  {
    v3 = "ening";
  }

  if (a2)
  {
    v2 = "generic location";
  }

  if ((v3 | 0x8000000000000000) == (v2 | 0x8000000000000000))
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_25E636070();
  }

  return v4 & 1;
}

uint64_t sub_25E610ACC(unsigned __int8 a1, uint64_t a2)
{
  v2 = 1701736302;
  v3 = 0xE400000000000000;
  v4 = a1;
  v5 = 1701736302;
  switch(v4)
  {
    case 1:
      v3 = 0xE500000000000000;
      v5 = 0x6C6C616D73;
      break;
    case 2:
      v3 = 0xE600000000000000;
      v5 = 0x6D756964656DLL;
      break;
    case 3:
      v3 = 0xE500000000000000;
      v5 = 0x656772616CLL;
      break;
    case 4:
      v3 = 0xE600000000000000;
      v5 = 0x656772616C78;
      break;
    default:
      break;
  }

  v6 = 0xE400000000000000;
  switch(a2)
  {
    case 1:
      v6 = 0xE500000000000000;
      v2 = 0x6C6C616D73;
      break;
    case 2:
      v6 = 0xE600000000000000;
      v2 = 0x6D756964656DLL;
      break;
    case 3:
      v6 = 0xE500000000000000;
      v2 = 0x656772616CLL;
      break;
    case 4:
      v6 = 0xE600000000000000;
      v2 = 0x656772616C78;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_1_6(v5, a2, v2);
  }

  return v8 & 1;
}

uint64_t sub_25E610C20(unsigned __int8 a1, uint64_t a2)
{
  v2 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v3 = 0xD000000000000018;
    }

    else
    {
      v3 = 0x6E6974617265706FLL;
    }

    if (v2 == 1)
    {
      v4 = 0x800000025E6384B0;
    }

    else
    {
      v4 = 0xEE00746E696F5067;
    }
  }

  else
  {
    v4 = 0x800000025E638490;
    v3 = 0xD00000000000001BLL;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v5 = 0xD000000000000018;
    }

    else
    {
      v5 = 0x6E6974617265706FLL;
    }

    if (a2 == 1)
    {
      v6 = 0x800000025E6384B0;
    }

    else
    {
      v6 = 0xEE00746E696F5067;
    }
  }

  else
  {
    v6 = 0x800000025E638490;
    v5 = 0xD00000000000001BLL;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_1_6(v3, a2, v5);
  }

  return v8 & 1;
}

uint64_t sub_25E610D04(unsigned __int8 a1, char a2)
{
  v2 = 0xEB00000000797261;
  v3 = 0x73726576696E6E61;
  v4 = a1;
  v5 = 0x73726576696E6E61;
  v6 = 0xEB00000000797261;
  switch(v4)
  {
    case 1:
      v6 = 0xE800000000000000;
      v5 = 0x7961646874726962;
      break;
    case 2:
      v6 = 0xE700000000000000;
      v5 = 0x676E6964646577;
      break;
    case 3:
      v5 = 0x6C616E6F73726570;
      v6 = 0xEE00746E65766520;
      break;
    default:
      break;
  }

  switch(a2)
  {
    case 1:
      v2 = 0xE800000000000000;
      v3 = 0x7961646874726962;
      break;
    case 2:
      v2 = 0xE700000000000000;
      v3 = 0x676E6964646577;
      break;
    case 3:
      v3 = 0x6C616E6F73726570;
      v2 = 0xEE00746E65766520;
      break;
    default:
      break;
  }

  if (v5 == v3 && v6 == v2)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_25E636070();
  }

  return v8 & 1;
}

uint64_t sub_25E610E70(unsigned __int8 a1, uint64_t a2)
{
  v2 = 0x747265636E6F63;
  v3 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v4 = 0x20796164696C6F68;
    }

    else
    {
      v4 = 0x76652074726F7073;
    }

    if (v3 == 1)
    {
      v5 = 0xED0000746E657665;
    }

    else
    {
      v5 = 0xEB00000000746E65;
    }
  }

  else
  {
    v5 = 0xE700000000000000;
    v4 = 0x747265636E6F63;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v2 = 0x20796164696C6F68;
    }

    else
    {
      v2 = 0x76652074726F7073;
    }

    if (a2 == 1)
    {
      v6 = 0xED0000746E657665;
    }

    else
    {
      v6 = 0xEB00000000746E65;
    }
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  if (v4 == v2 && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_1_6(v4, a2, v2);
  }

  return v8 & 1;
}

uint64_t sub_25E610F88(unsigned __int8 a1, char a2)
{
  v2 = 0xE900000000000074;
  v3 = 0x7361666B61657262;
  v4 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v5 = 0x68636E756CLL;
    }

    else
    {
      v5 = 0x72656E6E6964;
    }

    if (v4 == 1)
    {
      v6 = 0xE500000000000000;
    }

    else
    {
      v6 = 0xE600000000000000;
    }
  }

  else
  {
    v5 = 0x7361666B61657262;
    v6 = 0xE900000000000074;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v3 = 0x68636E756CLL;
    }

    else
    {
      v3 = 0x72656E6E6964;
    }

    if (a2 == 1)
    {
      v2 = 0xE500000000000000;
    }

    else
    {
      v2 = 0xE600000000000000;
    }
  }

  if (v5 == v3 && v6 == v2)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_25E636070();
  }

  return v8 & 1;
}

uint64_t sub_25E611078(char a1, char a2)
{
  if (a1)
  {
    v2 = 0x646E656B656577;
  }

  else
  {
    v2 = 0x7961646B656577;
  }

  if (a2)
  {
    v3 = 0x646E656B656577;
  }

  else
  {
    v3 = 0x7961646B656577;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_25E636070();
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

uint64_t sub_25E611160(uint64_t a1, uint64_t (*a2)(void), uint64_t *a3, uint64_t (*a4)(unint64_t, unint64_t, unint64_t, unint64_t))
{
  v6 = a2(0);
  __swift_allocate_value_buffer(v6, a3);
  __swift_project_value_buffer(v6, a3);
  return a4(0xD000000000000021, 0x800000025E638BF0, 0xD000000000000015, 0x800000025E6390B0);
}

uint64_t static PNUtilityTypeClassifier.screenshotInferred(in:usingSceneModel:)(void *a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FCF92C0, &unk_25E63B410);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_25E63A3E0;
  *(inited + 32) = 1665;
  v5 = sub_25E612764(inited);
  v6 = [a1 sceneClassifications];
  v7 = sub_25E635B40();

  if (*(v7 + 16))
  {
    v8 = sub_25E6113A4(v5, MEMORY[0x277D84FA0], v7, a2);
  }

  else
  {

    if (qword_280CB2148 != -1)
    {
      OUTLINED_FUNCTION_0_6(&qword_280CB2148);
    }

    v9 = sub_25E635710();
    __swift_project_value_buffer(v9, qword_280CB2150);
    v10 = sub_25E6356F0();
    v11 = sub_25E635CD0();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_25E5F0000, v10, v11, "[Inferred Screenshot] Empty sceneClassifications", v12, 2u);
      OUTLINED_FUNCTION_9();
    }

    v8 = 0;
  }

  return v8 & 1;
}

uint64_t sub_25E6113A4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = sub_25E611FE8(a3);
  v8 = 1 << *(a3 + 32);
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  else
  {
    v9 = -1;
  }

  v10 = v9 & *(a3 + 56);
  v11 = (v8 + 63) >> 6;
  v34 = a1;
  v32 = a1 + 56;
  v12 = a2 + 56;

  v35 = 0;
  v13 = 0;
LABEL_5:
  v14 = v13;
  while (v10)
  {
    v13 = v14;
LABEL_11:
    v15 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
    sub_25E5F82CC(*(a3 + 48) + 40 * (v15 | (v13 << 6)), &v37);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FCF92D8, &qword_25E63B788);
    if (swift_dynamicCast())
    {
      if (([v36 classificationType] & 0xFFFFFFFFFFFFFFFDLL) != 0)
      {
        swift_unknownObjectRelease();
        v14 = v13;
      }

      else
      {
        v16 = [v36 extendedSceneIdentifier];
        if ((v35 & 1) == 0 && *(v34 + 16))
        {
          v17 = sub_25E636100();
          v18 = ~(-1 << *(v34 + 32));
          while (1)
          {
            v19 = v17 & v18;
            if (((*(v32 + (((v17 & v18) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v17 & v18)) & 1) == 0)
            {
              break;
            }

            v17 = v19 + 1;
            if (*(*(v34 + 48) + 8 * v19) == v16)
            {
              v31 = v7;
              if (!*(a2 + 16))
              {
                goto LABEL_29;
              }

              v20 = 1;
              goto LABEL_24;
            }
          }
        }

        if (*(a2 + 16))
        {
          v31 = v7;
          v20 = 0;
LABEL_24:
          v21 = sub_25E636100();
          v22 = ~(-1 << *(a2 + 32));
          while (1)
          {
            v23 = v21 & v22;
            if (((*(v12 + (((v21 & v22) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v21 & v22)) & 1) == 0)
            {
              break;
            }

            v21 = v23 + 1;
            if (*(*(a2 + 48) + 8 * v23) == v16)
            {
              goto LABEL_29;
            }
          }

          if (v20)
          {
LABEL_29:
            [v36 confidence];
            if (sub_25E6121C4(v16, a4, v24))
            {
              v7 = v31;
              if (*(a2 + 16))
              {
                v25 = sub_25E636100();
                v26 = ~(-1 << *(a2 + 32));
                while (1)
                {
                  v27 = v25 & v26;
                  if (((*(v12 + (((v25 & v26) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v25 & v26)) & 1) == 0)
                  {
                    break;
                  }

                  v25 = v27 + 1;
                  if (*(*(a2 + 48) + 8 * v27) == v16)
                  {
                    goto LABEL_44;
                  }
                }
              }

              v28 = sub_25E612328(v16, v36, v31);
              swift_unknownObjectRelease();
              v29 = *(a2 + 16);
              v35 = v29 != 0 && v28;
              if (!v29 && v28)
              {

                v35 = 1;
                return v35 & 1;
              }

              goto LABEL_5;
            }
          }

          swift_unknownObjectRelease();
          v14 = v13;
          v7 = v31;
        }

        else
        {
          swift_unknownObjectRelease();
          v14 = v13;
        }
      }
    }

    else
    {
      v14 = v13;
    }
  }

  while (1)
  {
    v13 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v13 >= v11)
    {

      return v35 & 1;
    }

    v10 = *(a3 + 56 + 8 * v13);
    ++v14;
    if (v10)
    {
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_44:
  swift_unknownObjectRelease();

  v35 = 0;
  return v35 & 1;
}

uint64_t static PNUtilityTypeClassifier.utilityTypesDetected(in:usingSceneModel:)(void *a1, void *a2)
{
  v3 = [a1 sceneClassifications];
  v4 = sub_25E635B40();

  v5 = *(v4 + 16);

  if (!v5)
  {
    return 0;
  }

  if (qword_280CB2148 != -1)
  {
    OUTLINED_FUNCTION_0_6(&qword_280CB2148);
  }

  v6 = sub_25E635710();
  __swift_project_value_buffer(v6, qword_280CB2150);
  swift_unknownObjectRetain();
  v7 = sub_25E6356F0();
  v8 = sub_25E635CD0();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = OUTLINED_FUNCTION_4_6();
    *v9 = 134217984;
    v10 = [a1 sceneClassifications];
    v11 = sub_25E635B40();

    v12 = *(v11 + 16);

    *(v9 + 4) = v12;
    swift_unknownObjectRelease();
    _os_log_impl(&dword_25E5F0000, v7, v8, "sceneClassifications.count: %ld", v9, 0xCu);
    OUTLINED_FUNCTION_9();
  }

  else
  {

    swift_unknownObjectRelease();
  }

  v14 = [a1 sceneClassifications];
  v15 = sub_25E635B40();

  v16 = 0;
  v13 = 0;
  v26 = v15;
  do
  {
    v17 = *(&unk_28704A448 + v16 + 32);
    v18 = sub_25E6356F0();
    v19 = sub_25E635CD0();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = OUTLINED_FUNCTION_4_6();
      *v20 = 134217984;
      *(v20 + 4) = v17;
      _os_log_impl(&dword_25E5F0000, v18, v19, "utilityType: %lu", v20, 0xCu);
      v15 = v26;
      OUTLINED_FUNCTION_9();
    }

    if (static PNUtilityTypeClassifier.utilityOfType(_:detectedInSceneClassifications:hasQRCodeData:isAIImageFromGenerativePlayground:using:)(v17, v15, [a1 hasQRCodeData], objc_msgSend(a1, sel_isAIImageFromGenerativePlayground), a2))
    {
      v21 = v17;
    }

    else
    {
      v21 = 0;
    }

    v13 |= v21;
    v16 += 8;
  }

  while (v16 != 40);

  v22 = sub_25E6356F0();
  v23 = sub_25E635CD0();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = OUTLINED_FUNCTION_4_6();
    *v24 = 134217984;
    *(v24 + 4) = v13;
    _os_log_impl(&dword_25E5F0000, v22, v23, "detectedUtilityTypes: %lu", v24, 0xCu);
    OUTLINED_FUNCTION_9();
  }

  return v13;
}

uint64_t static PNUtilityTypeClassifier.utilityOfType(_:detectedInSceneClassifications:hasQRCodeData:isAIImageFromGenerativePlayground:using:)(uint64_t a1, uint64_t a2, int a3, int a4, void *a5)
{
  v42 = a5;
  v43 = a4;
  v44 = a3;
  v45 = a2;
  sub_25E6356A0();
  OUTLINED_FUNCTION_5();
  v46 = v7;
  v47 = v6;
  MEMORY[0x28223BE20](v6);
  v48 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_25E635660();
  OUTLINED_FUNCTION_5();
  v11 = v10;
  v13 = MEMORY[0x28223BE20](v12);
  v49 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v42 - v16;
  MEMORY[0x28223BE20](v15);
  v19 = &v42 - v18;
  if (qword_280CB2170 != -1)
  {
    swift_once();
  }

  v20 = sub_25E635690();
  __swift_project_value_buffer(v20, qword_280CB2178);
  sub_25E635650();
  v21 = sub_25E635680();
  v22 = sub_25E635D10();
  if (sub_25E635D20())
  {
    v23 = OUTLINED_FUNCTION_4_6();
    *v23 = 134217984;
    *(v23 + 4) = a1;
    v24 = sub_25E635640();
    _os_signpost_emit_with_name_impl(&dword_25E5F0000, v21, v22, v24, "[UT] utilityOfType", "type: %lu", v23, 0xCu);
    OUTLINED_FUNCTION_9();
  }

  (*(v11 + 16))(v17, v19, v9);
  sub_25E6356D0();
  swift_allocObject();
  sub_25E6356C0();
  v25 = *(v11 + 8);
  v25(v19, v9);
  if (a1 == 16)
  {
    v28 = v44;
    v27 = v48;
    v26 = v49;
  }

  else
  {
    v27 = v48;
    v26 = v49;
    if (a1 == 4 && (v43 & 1) != 0)
    {
      v28 = 1;
    }

    else
    {
      v29 = v45;
      if (*(v45 + 16))
      {
        type metadata accessor for UtilityTypeConfiguration();
        v30 = sub_25E60F680(a1);
        v31 = sub_25E60F888(a1);
        v28 = sub_25E6113A4(v30, v31, v29, v42);
        v27 = v48;

        v26 = v49;
      }

      else
      {
        v28 = 0;
      }
    }
  }

  v32 = sub_25E635680();
  sub_25E6356B0();
  v33 = sub_25E635D00();
  if (sub_25E635D20())
  {

    sub_25E6356E0();

    v35 = v46;
    v34 = v47;
    if ((*(v46 + 88))(v27, v47) == *MEMORY[0x277D85B00])
    {
      v36 = "[Error] Interval already ended";
    }

    else
    {
      (*(v35 + 8))(v27, v34);
      v36 = "";
    }

    v37 = swift_slowAlloc();
    *v37 = 0;
    v38 = v49;
    v39 = sub_25E635640();
    v40 = v36;
    v26 = v38;
    _os_signpost_emit_with_name_impl(&dword_25E5F0000, v32, v33, v39, "[UT] utilityOfType", v40, v37, 2u);
    OUTLINED_FUNCTION_9();
  }

  v25(v26, v9);
  return v28 & 1;
}