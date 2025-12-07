void *assignWithTake for AppSupportQuery(void *a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 1) = *(a2 + 8);

  a1[3] = *(a2 + 24);

  return a1;
}

uint64_t getEnumTagSinglePayload for AppSupportQuery(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for AppSupportQuery(uint64_t result, int a2, int a3)
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

uint64_t sub_2661E2510(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2661E2560(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t destroy for AppSupportService.DataSource(uint64_t a1)
{
}

uint64_t initializeWithCopy for AppSupportService.DataSource(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v3 = *(a2 + 24);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 24) = v3;

  return a1;
}

void *assignWithCopy for AppSupportService.DataSource(void *a1, void *a2)
{
  v4 = a2[1];
  *a1 = *a2;
  a1[1] = v4;

  v5 = a2[3];
  a1[2] = a2[2];
  a1[3] = v5;

  return a1;
}

_OWORD *assignWithTake for AppSupportService.DataSource(_OWORD *a1, _OWORD *a2)
{
  *a1 = *a2;

  a1[1] = a2[1];

  return a1;
}

uint64_t getEnumTagSinglePayload for AppSupportService.DataSource(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for AppSupportService.DataSource(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_2661E278C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_2661D52DC;

  return sub_2661DF814(a1, v4, v5, v6, v7, v8);
}

uint64_t objectdestroyTm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_2661E28C0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_2661D4A14;

  return sub_2661DFC58(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_2661E299C(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = sub_2661E666C();

    if (v8)
    {

      type metadata accessor for App();
      swift_dynamicCast();
      result = 0;
      *a1 = v25;
      return result;
    }

    result = sub_2661E665C();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v10 = sub_2661E2C10(v7, result + 1);
    v11 = *(v10 + 16);
    if (*(v10 + 24) <= v11)
    {
      sub_2661E2E38(v11 + 1);
    }

    sub_2661E30D4(v12, v10);

    *v3 = v10;
  }

  else
  {
    sub_2661E686C();
    if (*(a2 + 24))
    {
      sub_2661E688C();
      sub_2661E643C();
    }

    else
    {
      sub_2661E688C();
    }

    v13 = sub_2661E689C();
    v14 = -1 << *(v6 + 32);
    v15 = v13 & ~v14;
    if ((*(v6 + 56 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15))
    {
      v16 = ~v14;
      v17 = *(v6 + 48);
      v18 = *(a2 + 16);
      v19 = *(a2 + 24);
      do
      {
        v20 = *(v17 + 8 * v15);
        v21 = *(v20 + 24);
        if (v21)
        {
          if (v19)
          {
            v22 = *(v20 + 16) == v18 && v21 == v19;
            if (v22 || (sub_2661E67EC() & 1) != 0)
            {
LABEL_25:

              *a1 = *(*(v6 + 48) + 8 * v15);

              return 0;
            }
          }
        }

        else if (!v19)
        {
          goto LABEL_25;
        }

        v15 = (v15 + 1) & v16;
      }

      while (((*(v6 + 56 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) != 0);
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v26 = *v3;

    sub_2661E31AC(v24, v15, isUniquelyReferenced_nonNull_native);
    *v3 = v26;
  }

  *a1 = a2;
  return 1;
}

uint64_t sub_2661E2C10(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280066E30, &qword_2661E7A80);
    v2 = sub_2661E66BC();
    v15 = v2;
    sub_2661E664C();
    if (sub_2661E667C())
    {
      type metadata accessor for App();
      do
      {
        swift_dynamicCast();
        v4 = *(v2 + 16);
        if (*(v2 + 24) <= v4)
        {
          sub_2661E2E38(v4 + 1);
        }

        v2 = v15;
        sub_2661E686C();
        if (*(v14 + 24))
        {
          sub_2661E688C();
          sub_2661E643C();
        }

        else
        {
          sub_2661E688C();
        }

        result = sub_2661E689C();
        v6 = v15 + 56;
        v7 = -1 << *(v15 + 32);
        v8 = result & ~v7;
        v9 = v8 >> 6;
        if (((-1 << v8) & ~*(v15 + 56 + 8 * (v8 >> 6))) != 0)
        {
          v3 = __clz(__rbit64((-1 << v8) & ~*(v15 + 56 + 8 * (v8 >> 6)))) | v8 & 0x7FFFFFFFFFFFFFC0;
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
        *(*(v15 + 48) + 8 * v3) = v14;
        ++*(v15 + 16);
      }

      while (sub_2661E667C());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84FA0];
  }

  return v2;
}

uint64_t sub_2661E2E38(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280066E30, &qword_2661E7A80);
  result = sub_2661E66AC();
  v5 = result;
  if (*(v3 + 16))
  {
    v27 = v1;
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
      v18 = *(*(v3 + 48) + 8 * (v15 | (v6 << 6)));
      sub_2661E686C();
      if (*(v18 + 24))
      {
        sub_2661E688C();
        sub_2661E643C();
      }

      else
      {
        sub_2661E688C();
      }

      result = sub_2661E689C();
      v19 = -1 << *(v5 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        v14 = v18;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
      v14 = v18;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 8 * v13) = v14;
      ++*(v5 + 16);
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_33;
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

    v26 = 1 << *(v3 + 32);
    if (v26 >= 64)
    {
      bzero(v7, ((v26 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v26;
    }

    v2 = v27;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

unint64_t sub_2661E30D4(uint64_t a1, uint64_t a2)
{
  sub_2661E686C();
  if (*(a1 + 24))
  {
    sub_2661E688C();
    sub_2661E643C();
  }

  else
  {
    sub_2661E688C();
  }

  sub_2661E689C();
  result = sub_2661E663C();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

uint64_t sub_2661E31AC(uint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_23;
  }

  if (a3)
  {
    sub_2661E2E38(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      result = sub_2661E3374();
      goto LABEL_23;
    }

    sub_2661E34C4(v6 + 1);
  }

  v8 = *v3;
  sub_2661E686C();
  if (*(v5 + 24))
  {
    sub_2661E688C();
    sub_2661E643C();
  }

  else
  {
    sub_2661E688C();
  }

  result = sub_2661E689C();
  v9 = v8 + 56;
  v10 = -1 << *(v8 + 32);
  a2 = result & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    result = type metadata accessor for App();
    v12 = *(v8 + 48);
    v13 = *(v5 + 16);
    v14 = *(v5 + 24);
    do
    {
      v15 = *(v12 + 8 * a2);
      v16 = *(v15 + 24);
      if (v16)
      {
        if (v14)
        {
          v17 = *(v15 + 16) == v13 && v16 == v14;
          if (v17 || (result = sub_2661E67EC(), (result & 1) != 0))
          {
LABEL_22:
            result = sub_2661E67FC();
            __break(1u);
            break;
          }
        }
      }

      else if (!v14)
      {
        goto LABEL_22;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v9 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_23:
  v18 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v18 + 48) + 8 * a2) = v5;
  v19 = *(v18 + 16);
  v20 = __OFADD__(v19, 1);
  v21 = v19 + 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(v18 + 16) = v21;
  }

  return result;
}

void *sub_2661E3374()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280066E30, &qword_2661E7A80);
  v2 = *v0;
  v3 = sub_2661E669C();
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
        *(*(v4 + 48) + 8 * (v14 | (v8 << 6))) = *(*(v2 + 48) + 8 * (v14 | (v8 << 6)));
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

uint64_t sub_2661E34C4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280066E30, &qword_2661E7A80);
  result = sub_2661E66AC();
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
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v3 + 48) + 8 * (v13 | (v6 << 6)));
      sub_2661E686C();
      if (*(v16 + 24))
      {
        sub_2661E688C();

        sub_2661E643C();
      }

      else
      {
        sub_2661E688C();
      }

      result = sub_2661E689C();
      v17 = -1 << *(v5 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_31;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v5 + 48) + 8 * v12) = v16;
      ++*(v5 + 16);
    }

    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_29;
      }

      v15 = *(v3 + 56 + 8 * v6);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
  }

  else
  {

LABEL_29:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_2661E373C(uint64_t (*a1)(void *, __n128), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = (a1)(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

unint64_t sub_2661E37E8()
{
  result = qword_280FDA8A8;
  if (!qword_280FDA8A8)
  {
    type metadata accessor for App();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FDA8A8);
  }

  return result;
}

void *sub_2661E3840(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2661E3860(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_2661E3860(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280066E68, &unk_2661E7AD0);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280066E40, &qword_2661E7AA0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_2661E39A8(uint64_t a1, uint64_t a2)
{
  v4 = objc_opt_self();

  v5 = [v4 enumeratorWithOptions_];
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  v33 = sub_2661E4630;
  v34 = v6;
  *&aBlock = MEMORY[0x277D85DD0];
  *(&aBlock + 1) = 1107296256;
  v31 = sub_2661E1088;
  v32 = &block_descriptor_37;
  v7 = _Block_copy(&aBlock);

  [v5 setFilter_];
  _Block_release(v7);
  v8 = [v5 nextObject];
  v9 = MEMORY[0x277D84F90];
  if (v8)
  {
    v10 = v8;
    v11 = sub_2661D7F34(0, &qword_280066E70, 0x277CC1E70);
    v12 = v10;
    v13 = 0;
    v14 = (v9 + 4);
    while (1)
    {
      v28 = v11;
      v29 = &off_2877D4C08;
      *&v27 = v12;
      sub_2661D12C8(&v27, &aBlock);
      if (!v13)
      {
        v15 = v9[3];
        if (((v15 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_26;
        }

        v16 = v15 & 0xFFFFFFFFFFFFFFFELL;
        if (v16 <= 1)
        {
          v17 = 1;
        }

        else
        {
          v17 = v16;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280066E78, &qword_2661E7B90);
        v18 = swift_allocObject();
        v19 = (_swift_stdlib_malloc_size(v18) - 32) / 40;
        v18[2] = v17;
        v18[3] = 2 * v19;
        v20 = (v18 + 4);
        v21 = v9[3] >> 1;
        if (v9[2])
        {
          if (v18 != v9 || v20 >= &v9[5 * v21 + 4])
          {
            memmove(v18 + 4, v9 + 4, 40 * v21);
          }

          v9[2] = 0;
        }

        v14 = v20 + 40 * v21;
        v13 = (v19 & 0x7FFFFFFFFFFFFFFFLL) - v21;

        v9 = v18;
      }

      v23 = __OFSUB__(v13--, 1);
      if (v23)
      {
        break;
      }

      sub_2661D12C8(&aBlock, v14);
      v14 += 40;
      v12 = [v5 nextObject];
      if (!v12)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v13 = 0;
LABEL_21:

  v24 = v9[3];
  if (v24 >= 2)
  {
    v25 = v24 >> 1;
    v23 = __OFSUB__(v25, v13);
    v26 = v25 - v13;
    if (v23)
    {
LABEL_27:
      __break(1u);
      return;
    }

    v9[2] = v26;
  }
}

uint64_t sub_2661E3C68(uint64_t a1, int *a2)
{
  *(v2 + 24) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 32) = v3;
  *v3 = v2;
  v3[1] = sub_2661E3D5C;

  return v5(v2 + 16);
}

uint64_t sub_2661E3D5C()
{
  v1 = *v0;
  v2 = *(*v0 + 24);
  v5 = *v0;

  *v2 = *(v1 + 16);
  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_2661E3E8C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2661D4A14;

  return sub_2661E3C68(a1, v4);
}

void *sub_2661E3F60(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280066E60, &unk_2661E7AC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2661E7100;
  *(inited + 32) = sub_2661E640C();
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 40) = v5;
  *(inited + 48) = a1;
  *(inited + 56) = a2;

  sub_2661DDF44(inited);
  swift_setDeallocating();
  sub_2661E4320(inited + 32, &qword_280066DF8, &qword_2661E7870);
  v6 = swift_allocObject();
  *(v6 + 16) = MEMORY[0x277D84F90];
  if (qword_280FDA6F0 != -1)
  {
    swift_once();
  }

  v7 = sub_2661E62DC();
  __swift_project_value_buffer(v7, qword_280FDAE30);
  v8 = sub_2661E62CC();
  v9 = sub_2661E655C();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v23[0] = v11;
    *v10 = 136315138;

    v12 = sub_2661E63EC();
    v14 = v13;

    v15 = sub_2661D3710(v12, v14, v23);

    *(v10 + 4) = v15;
    _os_log_impl(&dword_2661CF000, v8, v9, "Enumerating plugins matching query: %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v11);
    MEMORY[0x26677E2B0](v11, -1, -1);
    MEMORY[0x26677E2B0](v10, -1, -1);
  }

  v16 = [objc_opt_self() defaultWorkspace];
  if (v16)
  {
    v17 = v16;

    v18 = sub_2661E63CC();

    v23[4] = sub_2661E4380;
    v23[5] = v6;
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 1107296256;
    v23[2] = sub_2661E16E4;
    v23[3] = &block_descriptor_1;
    v19 = _Block_copy(v23);

    [v17 enumeratePluginsMatchingQuery:v18 withBlock:v19];
    _Block_release(v19);
  }

  swift_beginAccess();

  v21 = sub_2661E1770(v20);

  return v21;
}

uint64_t sub_2661E42D8(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2661E4320(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_2661E43A0()
{
  result = qword_280FDA890;
  if (!qword_280FDA890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FDA890);
  }

  return result;
}

void *assignWithCopy for AppSupportService.SystemAppRecordData(void *a1, void *a2)
{
  *a1 = *a2;
  a1[1] = a2[1];

  return a1;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

void *assignWithTake for AppSupportService.SystemAppRecordData(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;

  return a1;
}

uint64_t getEnumTagSinglePayload for AppSupportService.SystemAppRecordData(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for AppSupportService.SystemAppRecordData(uint64_t result, int a2, int a3)
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

unint64_t sub_2661E4510()
{
  result = qword_280FDA898;
  if (!qword_280FDA898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280FDA898);
  }

  return result;
}

uint64_t sub_2661E456C(uint64_t *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_2661E67EC() & 1;
  }
}

void sub_2661E4634(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    v1 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v1)
    {
      return;
    }

    if (v1 == 1)
    {
      goto LABEL_4;
    }

LABEL_10:

    return;
  }

  v2 = a1;
  if (!sub_2661E665C())
  {
    return;
  }

  v3 = sub_2661E665C();
  a1 = v2;
  if (v3 != 1)
  {
    goto LABEL_10;
  }

LABEL_4:
  if ((a1 & 0xC000000000000001) != 0)
  {
    MEMORY[0x26677DCE0](0, a1);
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
  }

  else
  {
    __break(1u);
  }
}

uint64_t DefaultAppSelector.__allocating_init(defaultAppBundles:)(uint64_t a1)
{
  v2 = swift_allocObject();
  DefaultAppSelector.init(defaultAppBundles:)(a1);
  return v2;
}

uint64_t DefaultAppSelector.init(defaultAppBundles:)(uint64_t a1)
{
  v2 = v1;
  v4 = *(a1 + 16);
  if (v4)
  {
    v13 = MEMORY[0x277D84F90];
    sub_2661E674C();
    type metadata accessor for App();
    v5 = (a1 + 40);
    do
    {
      v7 = *(v5 - 1);
      v6 = *v5;
      v8 = swift_allocObject();
      *(v8 + 16) = v7;
      *(v8 + 24) = v6;
      *(v8 + 32) = 0u;
      *(v8 + 48) = 0u;
      *(v8 + 64) = 0u;

      sub_2661E672C();
      sub_2661E675C();
      sub_2661E676C();
      sub_2661E673C();
      v5 += 2;
      --v4;
    }

    while (v4);

    v9 = v13;
  }

  else
  {

    v9 = MEMORY[0x277D84F90];
  }

  *(v2 + 16) = v9;
  if (v9 >> 62)
  {
    if (sub_2661E665C())
    {
      return v2;
    }
  }

  else if (*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    return v2;
  }

  if (qword_280FDA6F8 != -1)
  {
    swift_once();
  }

  v10 = qword_280FDAE48;
  v11 = sub_2661E657C();
  sub_2661E628C("DefaultAppSelector: why create a DefaultAppSelector without default app?", 72, 2, &dword_2661CF000, v10, v11, MEMORY[0x277D84F90]);
  return v2;
}

uint64_t DefaultAppSelector.__allocating_init(defaultApps:)(unint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  if (a1 >> 62)
  {
    v6 = result;
    v7 = sub_2661E665C();
    result = v6;
    if (v7)
    {
      return result;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    return result;
  }

  v3 = result;
  if (qword_280FDA6F8 != -1)
  {
    swift_once();
  }

  v4 = qword_280FDAE48;
  v5 = sub_2661E657C();
  sub_2661E628C("DefaultAppSelector: why create a DefaultAppSelector without default app?", 72, 2, &dword_2661CF000, v4, v5, MEMORY[0x277D84F90]);
  return v3;
}

uint64_t DefaultAppSelector.init(defaultApps:)(unint64_t a1)
{
  *(v1 + 16) = a1;
  if (a1 >> 62)
  {
    if (sub_2661E665C())
    {
      return v1;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    return v1;
  }

  if (qword_280FDA6F8 != -1)
  {
    swift_once();
  }

  v2 = qword_280FDAE48;
  v3 = sub_2661E657C();
  sub_2661E628C("DefaultAppSelector: why create a DefaultAppSelector without default app?", 72, 2, &dword_2661CF000, v2, v3, MEMORY[0x277D84F90]);
  return v1;
}

uint64_t DefaultAppSelector.__deallocating_deinit()
{

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t sub_2661E4B08(unint64_t a1, uint64_t a2, void (*a3)(uint64_t *, unint64_t), uint64_t a4)
{
  v6 = a1 & 0xFFFFFFFFFFFFFF8;
  if (!(a1 >> 62))
  {
    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v7)
    {
      goto LABEL_3;
    }

LABEL_30:
    v9 = MEMORY[0x277D84F98];
    goto LABEL_31;
  }

LABEL_29:
  v7 = sub_2661E665C();
  if (!v7)
  {
    goto LABEL_30;
  }

LABEL_3:
  v8 = 0;
  v9 = MEMORY[0x277D84F98];
  while (2)
  {
    v10 = v8;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v11 = MEMORY[0x26677DCE0](v10, a1);
        v8 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
          goto LABEL_27;
        }
      }

      else
      {
        if (v10 >= *(v6 + 16))
        {
          goto LABEL_28;
        }

        v11 = *(a1 + 8 * v10 + 32);

        v8 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
LABEL_27:
          __break(1u);
LABEL_28:
          __break(1u);
          goto LABEL_29;
        }
      }

      v12 = *(v11 + 24);
      if (v12)
      {
        break;
      }

      ++v10;
      if (v8 == v7)
      {
        goto LABEL_31;
      }
    }

    v13 = *(v11 + 16);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v48 = v9;
    v46 = v13;
    v15 = sub_2661DCFFC(v13, v12);
    v16 = v9[2];
    v17 = (v14 & 1) == 0;
    v18 = v16 + v17;
    if (__OFADD__(v16, v17))
    {
      __break(1u);
LABEL_62:
      swift_once();
LABEL_60:
      v41 = qword_280FDAE48;
      v42 = sub_2661E657C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280066C88, &qword_2661E7270);
      v43 = swift_allocObject();
      *(v43 + 16) = xmmword_2661E7100;
      *(v43 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280066E20, &qword_2661E78B0);
      *(v43 + 64) = sub_2661E569C();
      *(v43 + 32) = v8;

      sub_2661E628C("DefaultAppSelector: no eligible default app, default apps: %@", 61, 2, &dword_2661CF000, v41, v42, v43);

      v48 = 0;
      LOWORD(v49) = 256;
      v44 = sub_2661DDF44(MEMORY[0x277D84F90]);
      a3(&v48, v44);
    }

    if (v9[3] >= v18)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        if ((v14 & 1) == 0)
        {
          goto LABEL_23;
        }
      }

      else
      {
        v22 = v14;
        sub_2661DDA94();
        if ((v22 & 1) == 0)
        {
          goto LABEL_23;
        }
      }

LABEL_21:

      v9 = v48;
      *(*(v48 + 56) + 8 * v15) = v11;

      goto LABEL_25;
    }

    v19 = v14;
    sub_2661DD314(v18, isUniquelyReferenced_nonNull_native);
    v20 = sub_2661DCFFC(v46, v12);
    if ((v19 & 1) != (v21 & 1))
    {
      goto LABEL_64;
    }

    v15 = v20;
    if (v19)
    {
      goto LABEL_21;
    }

LABEL_23:
    v9 = v48;
    *(v48 + 8 * (v15 >> 6) + 64) |= 1 << v15;
    v23 = (v9[6] + 16 * v15);
    *v23 = v46;
    v23[1] = v12;
    *(v9[7] + 8 * v15) = v11;

    v24 = v9[2];
    v25 = __OFADD__(v24, 1);
    v26 = v24 + 1;
    if (!v25)
    {
      v9[2] = v26;
LABEL_25:
      if (v8 != v7)
      {
        continue;
      }

LABEL_31:
      v8 = *(a2 + 16);
      v48 = MEMORY[0x277D84F90];
      if (v8 >> 62)
      {
LABEL_53:
        v27 = sub_2661E665C();
        if (v27)
        {
LABEL_33:
          v28 = 0;
          v29 = MEMORY[0x277D84F90];
          do
          {
            v30 = v28;
            while (1)
            {
              if ((v8 & 0xC000000000000001) != 0)
              {
                v31 = MEMORY[0x26677DCE0](v30, v8);
                v28 = v30 + 1;
                if (__OFADD__(v30, 1))
                {
                  goto LABEL_51;
                }
              }

              else
              {
                if (v30 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_52;
                }

                v31 = *(v8 + 8 * v30 + 32);

                v28 = v30 + 1;
                if (__OFADD__(v30, 1))
                {
LABEL_51:
                  __break(1u);
LABEL_52:
                  __break(1u);
                  goto LABEL_53;
                }
              }

              if (v31[7])
              {
                goto LABEL_47;
              }

              v32 = v31[3];
              if (v32)
              {
                if (v9[2])
                {
                  sub_2661DCFFC(v31[2], v32);
                  if (v33)
                  {
                    break;
                  }
                }
              }

              ++v30;
              if (v28 == v27)
              {
                goto LABEL_55;
              }
            }

LABEL_47:
            MEMORY[0x26677DA70]();
            if (*((v48 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v48 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_2661E64CC();
            }

            sub_2661E64DC();
            v29 = v48;
          }

          while (v28 != v27);
LABEL_55:

          sub_2661E4634(v29);
          v35 = v34;
          v37 = v36;

          if (!v37)
          {
            v51 = 0;
            v52 = v35;
            v53 = 2;
            v48 = v35;
            v49 = 0x2000000000000002;
            v50 = 0;

            v40 = sub_2661E5B4C();
            a3(&v52, v40);

            sub_2661DE8CC(v35, 0);
            return sub_2661DE8CC(v35, 0);
          }

          if (v37 == 1)
          {
            v51 = 0;
            v52 = v35;
            v53 = 1;
            v48 = v35;
            v49 = 0x2000000000000001;
            v50 = 0;

            v38 = sub_2661E5B4C();
            a3(&v52, v38);
            sub_2661DE8CC(v35, 1);

            return sub_2661DE8CC(v35, 1);
          }

          if (qword_280FDA6F8 == -1)
          {
            goto LABEL_60;
          }

          goto LABEL_62;
        }
      }

      else
      {
        v27 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v27)
        {
          goto LABEL_33;
        }
      }

      v29 = MEMORY[0x277D84F90];
      goto LABEL_55;
    }

    break;
  }

  __break(1u);
LABEL_64:

  result = sub_2661E680C();
  __break(1u);
  return result;
}

uint64_t sub_2661E50D8(unint64_t a1, uint64_t (*a2)(uint64_t *))
{
  v4 = a1 & 0xFFFFFFFFFFFFFF8;
  if (!(a1 >> 62))
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
      goto LABEL_3;
    }

LABEL_30:
    v7 = MEMORY[0x277D84F98];
    goto LABEL_31;
  }

LABEL_29:
  v5 = sub_2661E665C();
  if (!v5)
  {
    goto LABEL_30;
  }

LABEL_3:
  v6 = 0;
  v7 = MEMORY[0x277D84F98];
  while (2)
  {
    v8 = v6;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x26677DCE0](v8, a1);
        v6 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          goto LABEL_27;
        }
      }

      else
      {
        if (v8 >= *(v4 + 16))
        {
          goto LABEL_28;
        }

        v9 = *(a1 + 8 * v8 + 32);

        v6 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
LABEL_27:
          __break(1u);
LABEL_28:
          __break(1u);
          goto LABEL_29;
        }
      }

      v10 = *(v9 + 24);
      if (v10)
      {
        break;
      }

      ++v8;
      if (v6 == v5)
      {
        goto LABEL_31;
      }
    }

    v11 = *(v9 + 16);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v42 = v7;
    v40 = v11;
    v13 = sub_2661DCFFC(v11, v10);
    v14 = v7[2];
    v15 = (v12 & 1) == 0;
    v16 = v14 + v15;
    if (__OFADD__(v14, v15))
    {
      __break(1u);
LABEL_63:
      swift_once();
LABEL_61:
      v36 = qword_280FDAE48;
      v37 = sub_2661E657C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280066C88, &qword_2661E7270);
      v38 = swift_allocObject();
      *(v38 + 16) = xmmword_2661E7100;
      *(v38 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280066E20, &qword_2661E78B0);
      *(v38 + 64) = sub_2661E569C();
      *(v38 + 32) = v6;

      sub_2661E628C("DefaultAppSelector: no eligible default app, default apps: %@", 61, 2, &dword_2661CF000, v36, v37, v38);

      v42 = 0;
      v43 = 256;
      return a2(&v42);
    }

    if (v7[3] >= v16)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_20;
      }

      v17 = v12;
      sub_2661DDA94();
    }

    else
    {
      v17 = v12;
      sub_2661DD314(v16, isUniquelyReferenced_nonNull_native);
      v18 = sub_2661DCFFC(v40, v10);
      if ((v17 & 1) != (v19 & 1))
      {
        goto LABEL_65;
      }

      v13 = v18;
    }

    v12 = v17;
LABEL_20:
    if (v12)
    {

      v7 = v42;
      *(*(v42 + 56) + 8 * v13) = v9;

      goto LABEL_24;
    }

    v7 = v42;
    *(v42 + 8 * (v13 >> 6) + 64) |= 1 << v13;
    v20 = (v7[6] + 16 * v13);
    *v20 = v40;
    v20[1] = v10;
    *(v7[7] + 8 * v13) = v9;

    v21 = v7[2];
    v22 = __OFADD__(v21, 1);
    v23 = v21 + 1;
    if (!v22)
    {
      v7[2] = v23;
LABEL_24:
      if (v6 != v5)
      {
        continue;
      }

LABEL_31:
      v6 = *(v2 + 16);
      v42 = MEMORY[0x277D84F90];
      if (v6 >> 62)
      {
LABEL_53:
        v24 = sub_2661E665C();
        if (v24)
        {
LABEL_33:
          v25 = 0;
          v26 = MEMORY[0x277D84F90];
          do
          {
            v27 = v25;
            while (1)
            {
              if ((v6 & 0xC000000000000001) != 0)
              {
                v28 = MEMORY[0x26677DCE0](v27, v6);
                v25 = v27 + 1;
                if (__OFADD__(v27, 1))
                {
                  goto LABEL_51;
                }
              }

              else
              {
                if (v27 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_52;
                }

                v28 = *(v6 + 8 * v27 + 32);

                v25 = v27 + 1;
                if (__OFADD__(v27, 1))
                {
LABEL_51:
                  __break(1u);
LABEL_52:
                  __break(1u);
                  goto LABEL_53;
                }
              }

              if (v28[7])
              {
                goto LABEL_47;
              }

              v29 = v28[3];
              if (v29)
              {
                if (v7[2])
                {
                  sub_2661DCFFC(v28[2], v29);
                  if (v30)
                  {
                    break;
                  }
                }
              }

              ++v27;
              if (v25 == v24)
              {
                goto LABEL_55;
              }
            }

LABEL_47:
            MEMORY[0x26677DA70]();
            if (*((v42 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v42 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_2661E64CC();
            }

            sub_2661E64DC();
            v26 = v42;
          }

          while (v25 != v24);
LABEL_55:

          sub_2661E4634(v26);
          v32 = v31;
          v34 = v33;

          if (!v34)
          {
            v42 = v32;
            v43 = 2;

            a2(&v42);
            sub_2661DE8CC(v32, 0);
            return sub_2661E5690(v42, v43, SHIBYTE(v43));
          }

          if (v34 == 1)
          {
            v42 = v32;
            v43 = 1;
            a2(&v42);
            return sub_2661E5690(v42, v43, SHIBYTE(v43));
          }

          if (qword_280FDA6F8 == -1)
          {
            goto LABEL_61;
          }

          goto LABEL_63;
        }
      }

      else
      {
        v24 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v24)
        {
          goto LABEL_33;
        }
      }

      v26 = MEMORY[0x277D84F90];
      goto LABEL_55;
    }

    break;
  }

  __break(1u);
LABEL_65:
  result = sub_2661E680C();
  __break(1u);
  return result;
}

uint64_t sub_2661E5690(uint64_t result, unsigned __int8 a2, char a3)
{
  if ((a3 & 1) == 0)
  {
    return sub_2661D84A8(result, a2);
  }

  return result;
}

unint64_t sub_2661E569C()
{
  result = qword_280066E80[0];
  if (!qword_280066E80[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280066E20, &qword_2661E78B0);
    result = swift_getWitnessTable();
    atomic_store(result, qword_280066E80);
  }

  return result;
}

void *InstrumentedAppResolutionService.__allocating_init()()
{
  v0 = swift_allocObject();
  *(v0 + 56) = sub_2661DB9FC;
  *(v0 + 64) = 0;
  return AppResolutionService.init()();
}

void *InstrumentedAppResolutionService.init()()
{
  *(v0 + 56) = sub_2661DB9FC;
  *(v0 + 64) = 0;
  return AppResolutionService.init()();
}

uint64_t InstrumentedAppResolutionService.resolveApp(intent:appResolutionState:_:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_allocObject();
  v9[2] = v4;
  v9[3] = a1;
  v9[4] = a3;
  v9[5] = a4;
  v10 = *(*v4 + 152);

  v11 = a1;

  v10(v11, a2, sub_2661E590C, v9);
}

uint64_t sub_2661E5834(uint64_t *a1, uint64_t a2, uint64_t a3, id a4, uint64_t (*a5)(uint64_t *))
{
  v6 = *a1;
  v7 = *(a1 + 8);
  v8 = *(a1 + 9);
  v9 = *(a3 + 56);
  v10 = [a4 typeName];
  v11 = sub_2661E640C();
  v13 = v12;

  v16 = v6;
  v17 = v7;
  v18 = v8;
  v9(v11, v13, &v16, a2);

  v16 = v6;
  v17 = v7;
  v18 = v8;
  return a5(&v16);
}

uint64_t sub_2661E5918(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = swift_allocObject();
  *(v7 + 16) = a3;
  *(v7 + 24) = a4;

  sub_2661D86E0(a2, sub_2661E5A28, v7);
}

uint64_t sub_2661E59A8(uint64_t *a1, void (*a2)(uint64_t *, unint64_t))
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 9);
  v7 = *a1;
  v8 = v3;
  v9 = v4;
  v5 = sub_2661DDF44(MEMORY[0x277D84F90]);
  a2(&v7, v5);
}

uint64_t InstrumentedAppResolutionService.deinit()
{
  v0 = AppResolutionService.deinit();

  return v0;
}

uint64_t InstrumentedAppResolutionService.__deallocating_deinit()
{
  v0 = AppResolutionService.deinit();

  return MEMORY[0x2821FE8D8](v0, 72, 7);
}

unint64_t sub_2661E5B4C()
{
  v1 = v0[1] >> 61;
  if (v1 <= 1)
  {
    if (v1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280066E60, &unk_2661E7AC0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_2661E7C50;
      *(inited + 32) = 0x6C646E7542707061;
      *(inited + 40) = 0xEB00000000644965;
      v17 = sub_2661E6044();
      v18 = MEMORY[0x277D837D0];
      *(inited + 48) = v17;
      *(inited + 56) = v19;
      *(inited + 72) = v18;
      strcpy((inited + 80), "resolutionType");
      *(inited + 95) = -18;
      *(inited + 96) = 0x6465727265666E49;
      *(inited + 104) = 0xE800000000000000;
      *(inited + 120) = v18;
      *(inited + 128) = 0xD000000000000011;
      *(inited + 168) = v18;
      v14 = 0x80000002661E85C0;
      v15 = 0xD000000000000012;
      goto LABEL_11;
    }

    v8 = v0[2];
    v7 = v0[3];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280066E60, &unk_2661E7AC0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2661E7C50;
    *(inited + 32) = 0x6C646E7542707061;
    *(inited + 40) = 0xEB00000000644965;
    v9 = sub_2661E6044();
    v10 = MEMORY[0x277D837D0];
    *(inited + 48) = v9;
    *(inited + 56) = v11;
    *(inited + 72) = v10;
    strcpy((inited + 80), "resolutionType");
    *(inited + 95) = -18;
    *(inited + 96) = 0x6465727265666E49;
    *(inited + 104) = 0xE800000000000000;
    *(inited + 120) = v10;
    *(inited + 128) = 0xD000000000000011;
    *(inited + 168) = v10;
    *(inited + 136) = 0x80000002661E8580;
    *(inited + 144) = v8;
    *(inited + 152) = v7;
  }

  else
  {
    if (v1 == 2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280066E60, &unk_2661E7AC0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_2661E7C50;
      *(inited + 32) = 0x6C646E7542707061;
      *(inited + 40) = 0xEB00000000644965;
      v12 = sub_2661E6044();
      v4 = MEMORY[0x277D837D0];
      *(inited + 48) = v12;
      *(inited + 56) = v13;
      *(inited + 72) = v4;
      strcpy((inited + 80), "resolutionType");
      *(inited + 95) = -18;
      *(inited + 96) = 0x7571655272657355;
      v6 = 0xED00006465747365;
      goto LABEL_8;
    }

    if (v1 == 3)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280066E60, &unk_2661E7AC0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_2661E7C50;
      *(inited + 32) = 0x6C646E7542707061;
      *(inited + 40) = 0xEB00000000644965;
      v3 = sub_2661E6044();
      v4 = MEMORY[0x277D837D0];
      *(inited + 48) = v3;
      *(inited + 56) = v5;
      *(inited + 72) = v4;
      strcpy((inited + 80), "resolutionType");
      *(inited + 95) = -18;
      *(inited + 96) = 0x6E61684372657355;
      v6 = 0xEB00000000646567;
LABEL_8:
      *(inited + 104) = v6;
      *(inited + 120) = v4;
      *(inited + 128) = 0xD000000000000011;
      *(inited + 168) = v4;
      v14 = 0x80000002661E85A0;
      v15 = 0xD000000000000014;
LABEL_11:
      *(inited + 136) = 0x80000002661E8580;
      *(inited + 144) = v15;
      *(inited + 152) = v14;
      goto LABEL_12;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280066E60, &unk_2661E7AC0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2661E7C50;
    *(inited + 32) = 0x6C646E7542707061;
    v16 = MEMORY[0x277D837D0];
    *(inited + 40) = 0xEB00000000644965;
    *(inited + 48) = 0xD000000000000015;
    *(inited + 56) = 0x80000002661E8560;
    *(inited + 72) = v16;
    strcpy((inited + 80), "resolutionType");
    *(inited + 95) = -18;
    *(inited + 96) = 0x64656C696146;
    *(inited + 104) = 0xE600000000000000;
    *(inited + 120) = v16;
    *(inited + 128) = 0xD000000000000011;
    *(inited + 168) = v16;
    *(inited + 136) = 0x80000002661E8580;
    strcpy((inited + 144), "NotApplicable");
    *(inited + 158) = -4864;
  }

LABEL_12:
  v20 = sub_2661DDF44(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280066DF8, &qword_2661E7870);
  swift_arrayDestroy();
  return v20;
}

unint64_t sub_2661E6044()
{
  v1 = *v0;
  if (*(v0 + 8) > 1u)
  {
    if (*(v0 + 8) != 2)
    {
      return 0xD000000000000015;
    }
  }

  else if (*(v0 + 8))
  {
    return 0xD000000000000015;
  }

  if (!*(v1 + 24))
  {
    return 0xD000000000000012;
  }

  v2 = *(v1 + 16);

  return v2;
}

unint64_t AppResolutionResult.description.getter()
{
  v1 = *v0;
  if (*(v0 + 8) > 1u)
  {
    if (*(v0 + 8) != 2)
    {
      v6 = 0;
      sub_2661E66EC();
      MEMORY[0x26677DA30](0xD000000000000018, 0x80000002661E84E0);
      sub_2661E677C();
      goto LABEL_10;
    }

    sub_2661E66EC();

    v2 = 0xD000000000000010;
  }

  else
  {
    if (*(v0 + 8))
    {
      sub_2661E66EC();

      v6 = 0xD00000000000001CLL;
      v4 = type metadata accessor for App();
      v3 = MEMORY[0x26677DAA0](v1, v4);
      goto LABEL_8;
    }

    sub_2661E66EC();

    v2 = 0xD000000000000019;
  }

  v6 = v2;
  v3 = sub_2661D0988();
LABEL_8:
  MEMORY[0x26677DA30](v3);

LABEL_10:
  MEMORY[0x26677DA30](125, 0xE100000000000000);
  return v6;
}