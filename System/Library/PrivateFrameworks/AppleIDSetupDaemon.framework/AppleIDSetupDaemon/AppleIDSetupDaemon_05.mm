uint64_t sub_24086DFB0(int64_t a1)
{
  v3 = sub_2408D48A0();
  v4 = *(v3 - 8);
  result = MEMORY[0x28223BE20](v3);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v1;
  v9 = *v1 + 56;
  v10 = -1 << *(*v1 + 32);
  v11 = (a1 + 1) & ~v10;
  if (((1 << v11) & *(v9 + 8 * (v11 >> 6))) != 0)
  {
    v12 = ~v10;

    v13 = sub_2408D50A0();
    if ((*(v9 + 8 * (v11 >> 6)) & (1 << v11)) != 0)
    {
      v14 = v12;
      v15 = (v13 + 1) & v12;
      v35 = *(v4 + 16);
      v36 = v4 + 16;
      v16 = *(v4 + 72);
      v33 = (v4 + 8);
      v34 = v9;
      v17 = v16;
      do
      {
        v18 = v17;
        v19 = v17 * v11;
        v35(v7, *(v8 + 48) + v17 * v11, v3);
        v20 = v8;
        v21 = v15;
        v22 = v14;
        v23 = v20;
        sub_2408763D8(&qword_27E506AA8, 255, MEMORY[0x277CEDDC0], MEMORY[0x277CEDDC8]);
        v24 = sub_2408D4CE0();
        (*v33)(v7, v3);
        v25 = v24 & v22;
        v14 = v22;
        v15 = v21;
        if (a1 >= v21)
        {
          if (v25 >= v21 && a1 >= v25)
          {
LABEL_16:
            v8 = v23;
            v28 = *(v23 + 48);
            v17 = v18;
            v29 = v18 * a1;
            if (v18 * a1 < v19 || v28 + v18 * a1 >= (v28 + v19 + v18))
            {
              swift_arrayInitWithTakeFrontToBack();
              a1 = v11;
            }

            else
            {
              a1 = v11;
              if (v29 != v19)
              {
                swift_arrayInitWithTakeBackToFront();
                a1 = v11;
              }
            }

            goto LABEL_5;
          }
        }

        else if (v25 >= v21 || a1 >= v25)
        {
          goto LABEL_16;
        }

        v8 = v23;
        v17 = v18;
LABEL_5:
        v11 = (v11 + 1) & v14;
        v9 = v34;
      }

      while (((*(v34 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
    }

    *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  else
  {
    *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v30 = *(v8 + 16);
  v31 = __OFSUB__(v30, 1);
  v32 = v30 - 1;
  if (v31)
  {
    __break(1u);
  }

  else
  {
    *(v8 + 16) = v32;
    ++*(v8 + 36);
  }

  return result;
}

unint64_t sub_24086E2BC(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_2408D50A0();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = *(*(v3 + 48) + 8 * v6);
        sub_2408D4D30();
        sub_2408D5300();
        v11 = v10;
        sub_2408D4D60();
        v12 = sub_2408D5320();

        v13 = v12 & v7;
        if (v2 >= v9)
        {
          if (v13 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v13 >= v9)
        {
          goto LABEL_11;
        }

        if (v2 >= v13)
        {
LABEL_11:
          v14 = *(v3 + 48);
          v15 = (v14 + 8 * v2);
          v16 = (v14 + 8 * v6);
          if (v2 != v6 || v15 >= v16 + 1)
          {
            *v15 = *v16;
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
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v17 = *(v3 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v19;
    ++*(v3 + 36);
  }

  return result;
}

uint64_t sub_24086E49C(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_24086E528(v3);
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

uint64_t sub_24086E53C(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = sub_2408D3970();
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_17;
  }

  if (v3 < v4 || v3 >= v4 + (v5 - v4) / v7 * v7)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

void *sub_24086E620(uint64_t a1, uint64_t a2)
{
  v13[1] = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 32);
  v5 = v4 & 0x3F;
  v6 = ((1 << v4) + 63) >> 6;
  v7 = 8 * v6;

  if (v5 <= 0xD || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    MEMORY[0x28223BE20](isStackAllocationSafe);
    bzero(v13 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0), v7);
    sub_24086E8EC((v13 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0)), v6, a2, a1);
    v10 = v9;
  }

  else
  {
    v12 = swift_slowAlloc();

    v10 = sub_24086E85C(v12, v6, a2, a1);

    MEMORY[0x245CC9F60](v12, -1, -1);
  }

  return v10;
}

unint64_t *sub_24086E7E4(unint64_t *result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v4 = result;
      v5 = a2;
      bzero(result, 8 * a2);
      result = v4;
      a2 = v5;
    }

    v6 = sub_24086EEFC(result, a2, a3);

    return v6;
  }

  return result;
}

void *sub_24086E85C(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v6 = result;
      v7 = a2;
      bzero(result, 8 * a2);
      result = v6;
      a2 = v7;
    }

    sub_24086E8EC(result, a2, a3, a4);
    v9 = v8;

    return v9;
  }

  return result;
}

void sub_24086E8EC(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) >= *(a3 + 16))
  {
LABEL_28:
    v59 = 0;
    v29 = 0;
    v30 = v5 + 56;
    v31 = 1 << *(v5 + 32);
    if (v31 < 64)
    {
      v32 = ~(-1 << v31);
    }

    else
    {
      v32 = -1;
    }

    v33 = v32 & *(v5 + 56);
    v34 = (v31 + 63) >> 6;
    v35 = v4 + 56;
    v53 = v34;
    while (v33)
    {
      v36 = __clz(__rbit64(v33));
      v61 = (v33 - 1) & v33;
LABEL_40:
      v56 = v36 | (v29 << 6);
      v39 = *(*(v5 + 48) + 8 * v56);
      sub_2408D4D30();
      sub_2408D5300();
      v58 = v39;
      sub_2408D4D60();
      v40 = sub_2408D5320();

      v41 = -1 << *(a4 + 32);
      v42 = v40 & ~v41;
      if ((*(v35 + ((v42 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v42))
      {
        v43 = ~v41;
        while (1)
        {
          v44 = sub_2408D4D30();
          v46 = v45;
          if (v44 == sub_2408D4D30() && v46 == v47)
          {

            goto LABEL_51;
          }

          v49 = sub_2408D5240();

          if (v49)
          {
            break;
          }

          v42 = (v42 + 1) & v43;
          if (((*(v35 + ((v42 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v42) & 1) == 0)
          {
            goto LABEL_32;
          }
        }

LABEL_51:
        *(a1 + ((v56 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v56;
        v33 = v61;
        v28 = __OFADD__(v59++, 1);
        v5 = a3;
        v34 = v53;
        if (v28)
        {
          __break(1u);
          goto LABEL_54;
        }
      }

      else
      {
LABEL_32:

        v33 = v61;
        v5 = a3;
        v34 = v53;
      }
    }

    v37 = v29;
    while (1)
    {
      v29 = v37 + 1;
      if (__OFADD__(v37, 1))
      {
        break;
      }

      if (v29 >= v34)
      {
        goto LABEL_54;
      }

      v38 = *(v30 + 8 * v29);
      ++v37;
      if (v38)
      {
        v36 = __clz(__rbit64(v38));
        v61 = (v38 - 1) & v38;
        goto LABEL_40;
      }
    }
  }

  else
  {
    v6 = 0;
    v7 = a4 + 56;
    v8 = 1 << *(a4 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(a4 + 56);
    v11 = (v8 + 63) >> 6;
    v59 = 0;
    v60 = a3 + 56;
    v51 = v11;
    v52 = a4 + 56;
    while (v10)
    {
      v12 = __clz(__rbit64(v10));
      v57 = (v10 - 1) & v10;
LABEL_14:
      v15 = *(*(v4 + 48) + 8 * (v12 | (v6 << 6)));
      sub_2408D4D30();
      sub_2408D5300();
      v55 = v15;
      sub_2408D4D60();
      v16 = sub_2408D5320();
      v5 = a3;

      v17 = -1 << *(a3 + 32);
      v18 = v16 & ~v17;
      v19 = v18 >> 6;
      v20 = 1 << v18;
      if (((1 << v18) & *(v60 + 8 * (v18 >> 6))) != 0)
      {
        v21 = ~v17;
        while (1)
        {
          v22 = sub_2408D4D30();
          v24 = v23;
          if (v22 == sub_2408D4D30() && v24 == v25)
          {

            goto LABEL_25;
          }

          v27 = sub_2408D5240();

          if (v27)
          {
            break;
          }

          v18 = (v18 + 1) & v21;
          v19 = v18 >> 6;
          v5 = a3;
          v20 = 1 << v18;
          if (((1 << v18) & *(v60 + 8 * (v18 >> 6))) == 0)
          {
            goto LABEL_6;
          }
        }

        v5 = a3;
LABEL_25:
        v7 = v52;
        a1[v19] |= v20;
        v10 = v57;
        v28 = __OFADD__(v59++, 1);
        v4 = a4;
        v11 = v51;
        if (v28)
        {
          __break(1u);
          goto LABEL_28;
        }
      }

      else
      {
LABEL_6:

        v4 = a4;
        v11 = v51;
        v7 = v52;
        v10 = v57;
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
LABEL_54:

        sub_24086DD6C(a1, a2, v59, v5);
        return;
      }

      v14 = *(v7 + 8 * v6);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v57 = (v14 - 1) & v14;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  __break(1u);
}

unint64_t *sub_24086ED9C(uint64_t a1)
{
  v2 = a1;
  v10[1] = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v4 = ((1 << v3) + 63) >> 6;
  if ((v3 & 0x3Fu) <= 0xD)
  {
    goto LABEL_2;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_2:
    MEMORY[0x28223BE20](a1);
    v6 = v10 - ((v5 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v6, v5);
    result = sub_24086EEFC(v6, v4, v2);
    if (v1)
    {
      return swift_willThrow();
    }

    return result;
  }

  v8 = swift_slowAlloc();
  v9 = sub_24086E7E4(v8, v4, v2);
  result = MEMORY[0x245CC9F60](v8, -1, -1);
  if (!v1)
  {
    return v9;
  }

  return result;
}

unint64_t *sub_24086EEFC(unint64_t *result, uint64_t a2, uint64_t a3)
{
  v5 = result;
  v6 = 0;
  v7 = 0;
  v8 = a3 + 64;
  v9 = 1 << *(a3 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(a3 + 64);
  v12 = (v9 + 63) >> 6;
  while (v11)
  {
    v13 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_12:
    v16 = v13 | (v7 << 6);
    v17 = *(a3 + 56) + 16 * v16;
    if (*(v17 + 8))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E506AC0, &qword_2408D6850);
      result = swift_willThrowTypedImpl();
    }

    else if (*v17)
    {
      *(v5 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      if (__OFADD__(v6++, 1))
      {
        __break(1u);
        return sub_24086F058(v5, a2, v6, a3);
      }
    }
  }

  v14 = v7;
  while (1)
  {
    v7 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v7 >= v12)
    {
      return sub_24086F058(v5, a2, v6, a3);
    }

    v15 = *(v8 + 8 * v7);
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v11 = (v15 - 1) & v15;
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_24086F058(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506F40, &qword_2408D72E0);
  result = sub_2408D51D0();
  v8 = a2;
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
  v34 = a2;
  v35 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v36 = (v10 - 1) & v10;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(*(v4 + 48) + 8 * v16);
    v18 = *(v4 + 56) + 16 * v16;
    v19 = *v18;
    v20 = *(v18 + 8);
    sub_2408D4D30();
    sub_2408D5300();
    v21 = v17;
    sub_2407D256C(v19, v20);
    sub_2408D4D60();
    v22 = sub_2408D5320();

    v23 = -1 << *(v9 + 32);
    v24 = v22 & ~v23;
    v25 = v24 >> 6;
    if (((-1 << v24) & ~*(v12 + 8 * (v24 >> 6))) == 0)
    {
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
        v30 = *(v12 + 8 * v25);
        if (v30 != -1)
        {
          v26 = __clz(__rbit64(~v30)) + (v25 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v26 = __clz(__rbit64((-1 << v24) & ~*(v12 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
    *(*(v9 + 48) + 8 * v26) = v21;
    v31 = *(v9 + 56) + 16 * v26;
    *v31 = v19;
    *(v31 + 8) = v20;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v35;
    v10 = v36;
    v8 = v34;
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

    if (v11 >= v8)
    {
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v36 = (v15 - 1) & v15;
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

uint64_t sub_24086F308(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_24086F3FC;

  return v5(v2 + 32);
}

uint64_t sub_24086F3FC()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  v5 = *v0;

  *v2 = *(v1 + 32);
  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_24086F510(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  v6 = swift_task_alloc();
  *(v4 + 24) = v6;
  *v6 = v4;
  v6[1] = sub_24086F5A8;

  return sub_240874FE4(a4);
}

uint64_t sub_24086F5A8(char a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  *v3 = a1 & 1;
  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_24086F6BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a1;
  v8 = swift_task_alloc();
  *(v4 + 24) = v8;
  *v8 = v4;
  v8[1] = sub_24086F76C;

  return sub_2408200E4(a2, a3, a4);
}

uint64_t sub_24086F76C(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (!v1)
  {
    **(v4 + 16) = a1;
  }

  v6 = *(v5 + 8);

  return v6();
}

uint64_t sub_24086F87C(uint64_t a1, void *a2, void *a3, void *a4, uint64_t a5, uint64_t a6)
{
  v6[7] = a1;
  v6[8] = a6;
  v12 = sub_2408D3EC0();
  v6[9] = v12;
  v6[10] = *(v12 - 8);
  v6[11] = swift_task_alloc();
  v13 = sub_2408D3970();
  v6[12] = v13;
  v6[13] = *(v13 - 8);
  v6[14] = swift_task_alloc();
  v14 = sub_2408D38D0();
  v6[15] = v14;
  v6[16] = *(v14 - 8);
  v6[17] = swift_task_alloc();
  v6[18] = swift_task_alloc();
  v6[5] = &type metadata for SymptomReportGenerator;
  v6[6] = &off_285285708;
  v15 = swift_allocObject();
  v6[2] = v15;
  v15[2] = a2;
  v15[3] = a3;
  v15[4] = a4;
  v15[5] = a5;
  v16 = a2;
  v17 = a3;
  v18 = a4;

  return MEMORY[0x2822009F8](sub_24086FA70, a6, 0);
}

uint64_t sub_24086FA70()
{
  v40 = v0;
  if (qword_27E506918 != -1)
  {
    swift_once();
  }

  v1 = v0[18];
  v3 = v0[15];
  v2 = v0[16];
  v4 = v0[7];
  v5 = sub_2408D4B20();
  v0[19] = __swift_project_value_buffer(v5, qword_27E506C48);
  (*(v2 + 16))(v1, v4, v3);
  v6 = sub_2408D4B10();
  v7 = sub_2408D4F20();
  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[18];
  v11 = v0[15];
  v10 = v0[16];
  if (v8)
  {
    v12 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v39 = v37;
    *v12 = 136315138;
    sub_2408763D8(&qword_27E506AA0, 255, MEMORY[0x277CED3D8], MEMORY[0x277CED3F0]);
    v13 = sub_2408D5220();
    v15 = v14;
    v38 = *(v10 + 8);
    v38(v9, v11);
    v16 = sub_2408CC504(v13, v15, &v39);

    *(v12 + 4) = v16;
    _os_log_impl(&dword_2407CF000, v6, v7, "Setup preflight check if repair is needed for account: %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v37);
    MEMORY[0x245CC9F60](v37, -1, -1);
    MEMORY[0x245CC9F60](v12, -1, -1);
  }

  else
  {

    v38 = *(v10 + 8);
    v38(v9, v11);
  }

  v17 = [objc_opt_self() sharedInstance];
  sub_2408D37F0();
  v20 = v0[17];
  v22 = v0[14];
  v21 = v0[15];
  v23 = v0[12];
  v24 = v0[13];

  sub_2408D38F0();
  (*(v24 + 8))(v22, v23);
  v25 = sub_2408D3880();
  v38(v20, v21);
  if (v25)
  {
    v26 = __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
    v28 = *v26;
    v27 = v26[1];
    v29 = v26[2];
    v30 = v26[3];
    v31 = swift_task_alloc();
    v0[20] = v31;
    *v31 = v0;
    v31[1] = sub_24086FF28;
    v32 = v0[11];
    v33 = v0[7];

    return sub_2408D139C(v32, v33, v28, v27, v29, v30);
  }

  else
  {
    v34 = sub_2408D4B10();
    v35 = sub_2408D4F20();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&dword_2407CF000, v34, v35, "Account is non-primary account. Skipping preflight repair.", v36, 2u);
      MEMORY[0x245CC9F60](v36, -1, -1);
    }

    __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);

    v18 = v0[1];

    return v18(0);
  }
}

uint64_t sub_24086FF28()
{
  v2 = *v1;
  *(*v1 + 168) = v0;

  v3 = *(v2 + 64);
  if (v0)
  {
    v4 = sub_24087011C;
  }

  else
  {
    v4 = sub_240870054;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_240870054(uint64_t a1)
{
  v3 = v1[10];
  v2 = v1[11];
  v4 = v1[9];
  v5 = sub_2408D3E50();
  (*(v3 + 8))(v2, v4);
  __swift_destroy_boxed_opaque_existential_0Tm(v1 + 2);

  v6 = v1[1];

  return v6(v5 & 1);
}

uint64_t sub_24087011C(uint64_t a1)
{
  v2 = v1[21];
  v3 = sub_2408D4B10();
  v4 = sub_2408D4F30();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_2407CF000, v3, v4, "Preflight check failed. Defaulting to skipping preflight repair.", v5, 2u);
    MEMORY[0x245CC9F60](v5, -1, -1);
  }

  __swift_destroy_boxed_opaque_existential_0Tm(v1 + 2);

  v6 = v1[1];

  return v6(0);
}

uint64_t sub_240870230(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v10 = *a5;
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_2407D379C;

  return sub_240865E6C(a1, a2, a3, a4, v10);
}

uint64_t sub_2408702F8(uint64_t a1)
{
  v4 = *(sub_2408D4C40() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_2407D379C;

  return sub_240870230(a1, v7, v8, v1 + v5, (v1 + v6));
}

uint64_t sub_240870428(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2407DB6F0;

  return sub_2408698F0(a1, v4);
}

uint64_t sub_2408704E0(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_240876464;

  return sub_240868CDC(a1, v4);
}

uint64_t sub_24087057C()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_240813A08;

  return sub_2408704E0(v2, v3);
}

uint64_t sub_240870628(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2408706C4;

  return sub_2408690A4(a1, v4);
}

uint64_t sub_2408706C4(char a1)
{
  v7 = *v2;

  v4 = *(v7 + 8);
  if (v1)
  {
    v5 = 0;
  }

  else
  {
    v5 = a1 & 1;
  }

  return v4(v5);
}

uint64_t sub_2408707CC()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_240813744;

  return sub_240870628(v2, v3);
}

unint64_t sub_240870878()
{
  result = qword_27E507440;
  if (!qword_27E507440)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E507430, &qword_2408D7ED0);
    sub_2408763D8(&qword_27E507448, 255, MEMORY[0x277CEDCF8], MEMORY[0x277CEDD00]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E507440);
  }

  return result;
}

uint64_t sub_240870930(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2407DB6F0;

  return sub_240846920(a1, v5, v4);
}

unint64_t sub_2408709F8(uint64_t a1)
{
  v2 = sub_2408D3970();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_2407F5674(MEMORY[0x277D84F90]);
  v6 = 1 << *(a1 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a1 + 56);
  v9 = (v6 + 63) >> 6;
  v14[1] = v3 + 16;
  v10 = (v3 + 8);

  for (i = 0; v8; i = v12)
  {
    v12 = i;
LABEL_8:
    (*(v3 + 16))(v5, *(a1 + 48) + *(v3 + 72) * (__clz(__rbit64(v8)) | (v12 << 6)), v2);
    sub_2407DF1B8(&v15, v5);
    v8 &= v8 - 1;
    (*v10)(v5, v2);
  }

  while (1)
  {
    v12 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v12 >= v9)
    {

      return v15;
    }

    v8 = *(a1 + 56 + 8 * v12);
    ++i;
    if (v8)
    {
      goto LABEL_8;
    }
  }

  __break(1u);

  (*v10)(v5, v2);

  __break(1u);
  return result;
}

uint64_t sub_240870BF0(uint64_t a1)
{
  v2 = sub_2408D3970();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5075A0, &qword_2408D81C0);
    v9 = sub_2408D5100();
    v10 = 0;
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v35 = v12;
    v36 = v9 + 56;
    v13 = *(v11 + 64);
    v32 = v8;
    v33 = a1 + ((v13 + 32) & ~v13);
    v14 = *(v11 + 56);
    v15 = (v11 - 8);
    v31 = (v11 + 16);
    while (1)
    {
      v34 = v10;
      v35(v37, v33 + v14 * v10, v2);
      sub_2408763D8(&qword_27E507118, 255, MEMORY[0x277CED3F8], MEMORY[0x277CED400]);
      v16 = sub_2408D4CE0();
      v17 = ~(-1 << *(v9 + 32));
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = *(v36 + 8 * v19);
      v21 = 1 << (v16 & v17);
      if ((v21 & v20) != 0)
      {
        while (1)
        {
          v22 = v11;
          v35(v6, *(v9 + 48) + v18 * v14, v2);
          sub_2408763D8(&qword_27E5075A8, 255, MEMORY[0x277CED3F8], MEMORY[0x277CED408]);
          v23 = sub_2408D4CF0();
          v24 = *v15;
          (*v15)(v6, v2);
          if (v23)
          {
            break;
          }

          v18 = (v18 + 1) & v17;
          v19 = v18 >> 6;
          v20 = *(v36 + 8 * (v18 >> 6));
          v21 = 1 << v18;
          v11 = v22;
          if (((1 << v18) & v20) == 0)
          {
            goto LABEL_8;
          }
        }

        v24(v37, v2);
        v11 = v22;
      }

      else
      {
LABEL_8:
        v25 = v37;
        *(v36 + 8 * v19) = v21 | v20;
        result = (*v31)(*(v9 + 48) + v18 * v14, v25, v2);
        v27 = *(v9 + 16);
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          __break(1u);
          return result;
        }

        *(v9 + 16) = v29;
      }

      v10 = v34 + 1;
      if (v34 + 1 == v32)
      {
        return v9;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

uint64_t sub_240870F18(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5)
{
  v64 = sub_2408D3970();
  v10 = *(v64 - 8);
  v11 = MEMORY[0x28223BE20](v64);
  v61 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v11);
  v62 = &v51 - v14;
  v16 = *(v15 + 72);
  if (!v16)
  {
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v16 == -1)
  {
    goto LABEL_61;
  }

  v17 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v16 == -1)
  {
    goto LABEL_62;
  }

  v18 = (a2 - a1) / v16;
  v68 = a1;
  v67 = a4;
  if (v18 >= v17 / v16)
  {
    v20 = v17 / v16 * v16;
    if (a4 < a2 || a2 + v20 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    if (v20 < 1)
    {
      v39 = a4 + v20;
    }

    else
    {
      v37 = -v16;
      v54 = a4;
      v55 = (v10 + 16);
      v53 = (v10 + 8);
      v38 = a4 + v20;
      v39 = a4 + v20;
      v63 = a1;
      v56 = -v16;
      do
      {
        v51 = v39;
        v40 = a2 + v37;
        v57 = a2;
        v58 = a2 + v37;
        while (1)
        {
          if (a2 <= a1)
          {
            v68 = a2;
            v66 = v51;
            goto LABEL_59;
          }

          v52 = v39;
          v65 = a3 + v37;
          v41 = v38 + v37;
          v42 = a5;
          v43 = *v55;
          v44 = v64;
          v60 = a3;
          v43();
          v45 = v61;
          (v43)(v61, v40, v44);
          v46 = sub_2408D3960();
          v59 = *(sub_24086E620(v42, v46) + 2);

          v47 = sub_2408D3960();
          v48 = v42;
          v49 = *(sub_24086E620(v42, v47) + 2);

          v50 = *v53;
          (*v53)(v45, v44);
          v50(v62, v44);
          if (v49 < v59)
          {
            break;
          }

          v39 = v41;
          if (v60 < v38 || v65 >= v38)
          {
            swift_arrayInitWithTakeFrontToBack();
            a5 = v42;
            a1 = v63;
          }

          else
          {
            a5 = v42;
            a1 = v63;
            if (v60 != v38)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v38 = v41;
          a2 = v57;
          v40 = v58;
          a3 = v65;
          v37 = v56;
          if (v41 <= v54)
          {
            goto LABEL_57;
          }
        }

        if (v60 < v57 || v65 >= v57)
        {
          a3 = v65;
          a2 = v58;
          swift_arrayInitWithTakeFrontToBack();
          a5 = v48;
          a1 = v63;
          v39 = v52;
        }

        else
        {
          a5 = v42;
          a2 = v58;
          a3 = v65;
          a1 = v63;
          v39 = v52;
          if (v60 != v57)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v37 = v56;
      }

      while (v38 > v54);
    }

LABEL_57:
    v68 = a2;
    v66 = v39;
  }

  else
  {
    v19 = v18 * v16;
    v60 = a5;
    if (a4 < a1 || a1 + v19 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v59 = a4 + v19;
    v66 = a4 + v19;
    if (v19 >= 1 && a2 < a3)
    {
      v22 = *(v10 + 16);
      v57 = v16;
      v58 = v10 + 16;
      v55 = (v10 + 8);
      v56 = v22;
      v65 = a3;
      do
      {
        v63 = a1;
        v23 = v62;
        v24 = v64;
        v25 = v56;
        (v56)(v62, a2, v64);
        v26 = v61;
        v25(v61, a4, v24);
        v27 = sub_2408D3960();
        v28 = v60;
        v29 = *(sub_24086E620(v60, v27) + 2);

        v30 = sub_2408D3960();
        v31 = *(sub_24086E620(v28, v30) + 2);

        v32 = *v55;
        (*v55)(v26, v24);
        (v32)(v23, v24);
        if (v31 >= v29)
        {
          v33 = v57;
          v36 = a4 + v57;
          v34 = v63;
          if (v63 < a4 || v63 >= v36)
          {
            swift_arrayInitWithTakeFrontToBack();
            v35 = v65;
          }

          else
          {
            v35 = v65;
            if (v63 != a4)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v67 = v36;
          a4 += v33;
        }

        else
        {
          v33 = v57;
          v34 = v63;
          if (v63 < a2 || v63 >= a2 + v57)
          {
            swift_arrayInitWithTakeFrontToBack();
            a2 += v33;
            v35 = v65;
          }

          else
          {
            v35 = v65;
            if (v63 == a2)
            {
              a2 += v57;
            }

            else
            {
              swift_arrayInitWithTakeBackToFront();
              a2 += v33;
            }
          }
        }

        a1 = v34 + v33;
        v68 = a1;
      }

      while (a4 < v59 && a2 < v35);
    }
  }

LABEL_59:
  sub_24086E53C(&v68, &v67, &v66);
  return 1;
}

uint64_t sub_240871538(char **a1, unint64_t a2, uint64_t *a3, unint64_t a4)
{
  v5 = v4;
  v6 = a1;
  v7 = *a1;

  v27 = v7;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_16:
    v27 = sub_24086E528(v27);
  }

  v22 = v6;
  *v6 = v27;
  v8 = v27 + 16;
  v9 = *(v27 + 2);
  if (v9 < 2)
  {
LABEL_10:

    *v22 = v27;
    return 1;
  }

  else
  {
    v23 = (v27 + 16);
    while (1)
    {
      v10 = *a3;
      if (!*a3)
      {
        break;
      }

      v11 = &v27[16 * v9];
      v6 = *v11;
      v12 = &v8[16 * v9];
      v13 = *v12;
      v14 = *(v12 + 1);
      v15 = *(*(sub_2408D3970() - 8) + 72);
      v16 = v10 + v15 * v6;
      v17 = v10 + v15 * v13;
      v18 = v10 + v15 * v14;

      sub_240870F18(v16, v17, v18, a2, a4);

      if (v5)
      {
        *v22 = v27;

        return 1;
      }

      if (v14 < v6)
      {
        __break(1u);
LABEL_14:
        __break(1u);
LABEL_15:
        __break(1u);
        goto LABEL_16;
      }

      v8 = v27 + 16;
      v19 = *v23;
      if (v9 - 2 >= *v23)
      {
        goto LABEL_14;
      }

      *v11 = v6;
      *(v11 + 1) = v14;
      v20 = v19 - v9;
      if (v19 < v9)
      {
        goto LABEL_15;
      }

      v9 = v19 - 1;
      memmove(v12, v12 + 16, 16 * v20);
      *v23 = v9;
      if (v9 <= 1)
      {
        goto LABEL_10;
      }
    }

    *v22 = v27;
    __break(1u);
  }

  return result;
}

uint64_t sub_2408716F8(unint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4, char *a5)
{
  v6 = v5;
  v173 = a1;
  v199[1] = *MEMORY[0x277D85DE8];
  v10 = sub_2408D3970();
  v11 = MEMORY[0x28223BE20](v10);
  v176 = &v170 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v189 = &v170 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v197 = &v170 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v196 = &v170 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v186 = &v170 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v184 = &v170 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v171 = &v170 - v24;
  MEMORY[0x28223BE20](v23);
  v170 = &v170 - v26;
  v199[0] = MEMORY[0x277D84F90];
  v183 = a3;
  v27 = a3[1];
  if (v27 >= 1)
  {
    v192 = (v25 + 8);
    v193 = v25 + 16;
    v181 = v25;
    v191 = (v25 + 32);
    swift_bridgeObjectRetain_n();
    v28 = 0;
    v182 = MEMORY[0x277D84F90];
    v198 = a5;
    v172 = a4;
    v194 = v10;
    while (1)
    {
      v174 = v28;
      if (v28 + 1 >= v27)
      {
        v41 = v28 + 1;
      }

      else
      {
        v185 = v27;
        v29 = *v183;
        v195 = v29;
        v30 = v181[9];
        v190 = &v29[v30 * (v28 + 1)];
        v31 = v181[2];
        v32 = v170;
        (v31)(v170);
        v33 = &v29[v30 * v28];
        v34 = v171;
        v179 = v31;
        (v31)(v171, v33, v10);
        v35 = sub_2408D3960();
        v187 = *(sub_24086E620(a5, v35) + 2);

        v36 = sub_2408D3960();
        v180 = *(sub_24086E620(a5, v36) + 2);

        v37 = v181[1];
        v37(v34, v10);
        v38 = v190;
        v178 = v37;
        v37(v32, v10);
        v39 = (v174 + 2);
        v188 = v30;
        v40 = &v195[v30 * (v174 + 2)];
        while (1)
        {
          v41 = v185;
          if (v185 == v39)
          {
            break;
          }

          v195 = v39;
          v42 = v179;
          (v179)(v184, v40, v10);
          v42(v186, v38, v10);
          v43 = sub_2408D3960();
          v44 = *(v43 + 32);
          v45 = v44 & 0x3F;
          v46 = ((1 << v44) + 63) >> 6;
          v47 = 8 * v46;

          v190 = v40;
          if (v45 <= 0xD || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
          {
            v49 = a5;
            MEMORY[0x28223BE20](isStackAllocationSafe);
            bzero(&v170 - ((v47 + 15) & 0x3FFFFFFFFFFFFFF0), v47);
            sub_24086E8EC((&v170 - ((v47 + 15) & 0x3FFFFFFFFFFFFFF0)), v46, v43, a5);
            if (v6)
            {
              goto LABEL_147;
            }

            v51 = v50;
          }

          else
          {
            v65 = swift_slowAlloc();

            v66 = sub_24086E85C(v65, v46, v43, a5);
            if (v6)
            {
              while (1)
              {
LABEL_149:

                MEMORY[0x245CC9F60](v65, -1, -1);
                __break(1u);
              }
            }

            v51 = v66;

            MEMORY[0x245CC9F60](v65, -1, -1);
            v49 = a5;
          }

          v52 = v51[2];

          v53 = sub_2408D3960();
          v54 = *(v53 + 32);
          v55 = v54 & 0x3F;
          v56 = ((1 << v54) + 63) >> 6;
          v57 = 8 * v56;

          if (v55 <= 0xD || (v58 = swift_stdlib_isStackAllocationSafe(), (v58 & 1) != 0))
          {
            MEMORY[0x28223BE20](v58);
            bzero(&v170 - ((v57 + 15) & 0x3FFFFFFFFFFFFFF0), v57);
            sub_24086E8EC((&v170 - ((v57 + 15) & 0x3FFFFFFFFFFFFFF0)), v56, v53, v49);
            v60 = v59;
          }

          else
          {
            v67 = swift_slowAlloc();

            v60 = sub_24086E85C(v67, v56, v53, v49);

            MEMORY[0x245CC9F60](v67, -1, -1);
          }

          v61 = v180 < v187;
          v62 = v60[2];

          v10 = v194;
          v63 = v178;
          (v178)(v186, v194);
          v63(v184, v10);
          v64 = v62 >= v52;
          v39 = v195 + 1;
          v40 = &v188[v190];
          v38 = &v188[v38];
          a5 = v198;
          if (((v61 ^ v64) & 1) == 0)
          {
            v41 = v195;
            break;
          }
        }

        a4 = v172;
        v28 = v174;
        if (v180 < v187)
        {
          if (v41 < v174)
          {
            goto LABEL_139;
          }

          if (v174 < v41)
          {
            v68 = v188 * (v41 - 1);
            v69 = v41 * v188;
            v185 = v41;
            v70 = v41;
            v71 = v174;
            v72 = v174 * v188;
            do
            {
              if (v71 != --v70)
              {
                v73 = *v183;
                if (!*v183)
                {
                  goto LABEL_144;
                }

                v195 = *v191;
                (v195)(v176, &v73[v72], v194);
                if (v72 < v68 || &v73[v72] >= &v73[v69])
                {
                  v10 = v194;
                  swift_arrayInitWithTakeFrontToBack();
                }

                else
                {
                  v10 = v194;
                  if (v72 != v68)
                  {
                    swift_arrayInitWithTakeBackToFront();
                  }
                }

                (v195)(&v73[v68], v176, v10);
              }

              ++v71;
              v68 -= v188;
              v69 -= v188;
              v72 += v188;
            }

            while (v71 < v70);
            a5 = v198;
            a4 = v172;
            v28 = v174;
            v41 = v185;
          }
        }
      }

      v74 = v183[1];
      if (v41 >= v74)
      {
        goto LABEL_43;
      }

      if (__OFSUB__(v41, v28))
      {
        goto LABEL_138;
      }

      if (v41 - v28 >= a4)
      {
        goto LABEL_43;
      }

      v75 = v28 + a4;
      if (__OFADD__(v28, a4))
      {
        goto LABEL_140;
      }

      if (v75 >= v74)
      {
        v75 = v183[1];
      }

      if (v75 < v28)
      {
LABEL_141:
        __break(1u);
LABEL_142:
        swift_bridgeObjectRelease_n();
        __break(1u);
LABEL_143:
        swift_bridgeObjectRelease_n();
        __break(1u);
LABEL_144:
        swift_bridgeObjectRelease_n();
        __break(1u);
LABEL_145:
        swift_bridgeObjectRelease_n();
        __break(1u);
      }

      if (v41 == v75)
      {
LABEL_43:
        v76 = v41;
        if (v41 < v28)
        {
          goto LABEL_137;
        }
      }

      else
      {
        v136 = *v183;
        v137 = v181[9];
        v190 = v181[2];
        v138 = &v136[v137 * (v41 - 1)];
        v187 = -v137;
        v188 = v136;
        v139 = (v28 - v41);
        v175 = v137;
        v140 = &v136[v41 * v137];
        v177 = v75;
        do
        {
          v185 = v41;
          v178 = v140;
          v179 = v139;
          v180 = v138;
          while (1)
          {
            v195 = v139;
            v141 = v190;
            (v190)(v196, v140, v10);
            (v141)(v197, v138, v10);
            v142 = sub_2408D3960();
            v143 = *(v142 + 32);
            v144 = v143 & 0x3F;
            v145 = ((1 << v143) + 63) >> 6;
            v146 = 8 * v145;

            if (v144 <= 0xD || (v147 = swift_stdlib_isStackAllocationSafe(), (v147 & 1) != 0))
            {
              MEMORY[0x28223BE20](v147);
              bzero(&v170 - ((v146 + 15) & 0x3FFFFFFFFFFFFFF0), v146);
              a5 = v198;
              sub_24086E8EC((&v170 - ((v146 + 15) & 0x3FFFFFFFFFFFFFF0)), v145, v142, v198);
              if (v6)
              {
                goto LABEL_147;
              }

              v149 = v148;
            }

            else
            {
              v65 = swift_slowAlloc();

              v165 = sub_24086E85C(v65, v145, v142, a5);
              if (v6)
              {
                goto LABEL_149;
              }

              v149 = v165;

              MEMORY[0x245CC9F60](v65, -1, -1);
            }

            v150 = v149[2];

            v151 = sub_2408D3960();
            v152 = *(v151 + 32);
            v153 = v152 & 0x3F;
            v154 = ((1 << v152) + 63) >> 6;
            v155 = 8 * v154;

            if (v153 <= 0xD || (v156 = swift_stdlib_isStackAllocationSafe(), (v156 & 1) != 0))
            {
              MEMORY[0x28223BE20](v156);
              bzero(&v170 - ((v155 + 15) & 0x3FFFFFFFFFFFFFF0), v155);
              sub_24086E8EC((&v170 - ((v155 + 15) & 0x3FFFFFFFFFFFFFF0)), v154, v151, v198);
              v158 = v157;
            }

            else
            {
              v166 = swift_slowAlloc();

              v158 = sub_24086E85C(v166, v154, v151, a5);

              MEMORY[0x245CC9F60](v166, -1, -1);
            }

            v159 = v158[2];

            v160 = *v192;
            v10 = v194;
            (*v192)(v197, v194);
            v160(v196, v10);
            if (v159 >= v150)
            {
              break;
            }

            a5 = v198;
            v161 = v195;
            if (!v188)
            {
              goto LABEL_142;
            }

            v162 = *v191;
            v163 = v189;
            (*v191)(v189, v140, v10);
            swift_arrayInitWithTakeFrontToBack();
            v162(v138, v163, v10);
            v138 += v187;
            v140 += v187;
            v164 = __CFADD__(v161, 1);
            v139 = v161 + 1;
            if (v164)
            {
              goto LABEL_95;
            }
          }

          a5 = v198;
LABEL_95:
          v41 = (v185 + 1);
          v138 = &v180[v175];
          v139 = v179 - 1;
          v140 = &v178[v175];
          v76 = v177;
        }

        while (v185 + 1 != v177);
        if (v177 < v174)
        {
          goto LABEL_137;
        }
      }

      v177 = v76;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v182 = sub_240869E00(0, *(v182 + 2) + 1, 1, v182);
      }

      v78 = *(v182 + 2);
      v77 = *(v182 + 3);
      v79 = v78 + 1;
      v28 = v177;
      if (v78 >= v77 >> 1)
      {
        v167 = sub_240869E00((v77 > 1), v78 + 1, 1, v182);
        v28 = v177;
        v182 = v167;
      }

      v80 = v182;
      *(v182 + 2) = v79;
      v81 = v80 + 32;
      v82 = &v80[16 * v78 + 32];
      *v82 = v174;
      *(v82 + 1) = v28;
      v199[0] = v80;
      v195 = *v173;
      if (!v195)
      {
        goto LABEL_145;
      }

      if (v78)
      {
        break;
      }

LABEL_4:
      v27 = v183[1];
      a4 = v172;
      if (v28 >= v27)
      {
        goto LABEL_116;
      }
    }

    v83 = v182;
    v190 = v80 + 32;
    while (1)
    {
      v84 = v79 - 1;
      if (v79 >= 4)
      {
        break;
      }

      v85 = v181;
      if (v79 == 3)
      {
        v86 = *(v83 + 4);
        v87 = *(v83 + 5);
        v96 = __OFSUB__(v87, v86);
        v88 = v87 - v86;
        v89 = v96;
LABEL_64:
        if (v89)
        {
          goto LABEL_128;
        }

        v102 = &v83[16 * v79];
        v104 = *v102;
        v103 = *(v102 + 1);
        v105 = __OFSUB__(v103, v104);
        v106 = v103 - v104;
        v107 = v105;
        if (v105)
        {
          goto LABEL_131;
        }

        v108 = &v81[16 * v84];
        v110 = *v108;
        v109 = *(v108 + 1);
        v96 = __OFSUB__(v109, v110);
        v111 = v109 - v110;
        if (v96)
        {
          goto LABEL_134;
        }

        if (__OFADD__(v106, v111))
        {
          goto LABEL_135;
        }

        if (v106 + v111 >= v88)
        {
          if (v88 < v111)
          {
            v84 = v79 - 2;
          }

          goto LABEL_85;
        }

        goto LABEL_78;
      }

      v112 = &v83[16 * v79];
      v114 = *v112;
      v113 = *(v112 + 1);
      v96 = __OFSUB__(v113, v114);
      v106 = v113 - v114;
      v107 = v96;
LABEL_78:
      if (v107)
      {
        goto LABEL_130;
      }

      v115 = &v81[16 * v84];
      v117 = *v115;
      v116 = *(v115 + 1);
      v96 = __OFSUB__(v116, v117);
      v118 = v116 - v117;
      if (v96)
      {
        goto LABEL_133;
      }

      if (v118 < v106)
      {
        goto LABEL_3;
      }

LABEL_85:
      if (v84 - 1 >= v79)
      {
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
LABEL_137:
        __break(1u);
LABEL_138:
        __break(1u);
LABEL_139:
        __break(1u);
LABEL_140:
        __break(1u);
        goto LABEL_141;
      }

      v123 = *v183;
      if (!*v183)
      {
        goto LABEL_143;
      }

      v124 = v6;
      v125 = &v81[16 * v84 - 16];
      v126 = *v125;
      v127 = v84;
      v128 = &v81[16 * v84];
      v129 = *(v128 + 1);
      v130 = v85[9];
      v131 = &v123[v130 * *v125];
      v132 = &v123[v130 * *v128];
      v133 = &v123[v130 * v129];
      v134 = v198;

      sub_240870F18(v131, v132, v133, v195, v134);
      if (v124)
      {

        v199[0] = v182;
        goto LABEL_119;
      }

      if (v129 < v126)
      {
        goto LABEL_123;
      }

      v83 = v182;
      v135 = *(v182 + 2);
      if (v127 > v135)
      {
        goto LABEL_124;
      }

      *v125 = v126;
      *(v125 + 1) = v129;
      if (v127 >= v135)
      {
        goto LABEL_125;
      }

      v79 = v135 - 1;
      memmove(v128, v128 + 16, 16 * (v135 - 1 - v127));
      *(v83 + 2) = v135 - 1;
      v10 = v194;
      v81 = v190;
      v6 = 0;
      if (v135 <= 2)
      {
LABEL_3:
        v199[0] = v83;
        a5 = v198;
        v28 = v177;
        goto LABEL_4;
      }
    }

    v90 = &v81[16 * v79];
    v91 = *(v90 - 8);
    v92 = *(v90 - 7);
    v96 = __OFSUB__(v92, v91);
    v93 = v92 - v91;
    v85 = v181;
    if (v96)
    {
      goto LABEL_126;
    }

    v95 = *(v90 - 6);
    v94 = *(v90 - 5);
    v96 = __OFSUB__(v94, v95);
    v88 = v94 - v95;
    v89 = v96;
    if (v96)
    {
      goto LABEL_127;
    }

    v97 = &v83[16 * v79];
    v99 = *v97;
    v98 = *(v97 + 1);
    v96 = __OFSUB__(v98, v99);
    v100 = v98 - v99;
    if (v96)
    {
      goto LABEL_129;
    }

    v96 = __OFADD__(v88, v100);
    v101 = v88 + v100;
    if (v96)
    {
      goto LABEL_132;
    }

    if (v101 >= v93)
    {
      v119 = &v81[16 * v84];
      v121 = *v119;
      v120 = *(v119 + 1);
      v96 = __OFSUB__(v120, v121);
      v122 = v120 - v121;
      if (v96)
      {
        goto LABEL_136;
      }

      if (v88 < v122)
      {
        v84 = v79 - 2;
      }

      goto LABEL_85;
    }

    goto LABEL_64;
  }

  swift_bridgeObjectRetain_n();
LABEL_116:
  v168 = *v173;
  if (!*v173)
  {
    swift_bridgeObjectRelease_n();
    __break(1u);
    while (1)
    {
LABEL_147:

      swift_willThrow();

      __break(1u);
    }
  }

  sub_240871538(v199, v168, v183, a5);
  if (v6)
  {

LABEL_119:
    swift_bridgeObjectRelease_n();
  }

  else
  {

    swift_bridgeObjectRelease_n();
  }
}

uint64_t sub_2408727C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v6 = v5;
  v71 = a5;
  v72 = *MEMORY[0x277D85DE8];
  v11 = sub_2408D3970();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v63 = &v53 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v70 = &v53 - v16;
  result = MEMORY[0x28223BE20](v15);
  v69 = &v53 - v18;
  v55 = a2;
  if (a3 == a2)
  {
    return result;
  }

  v19 = *a4;
  v21 = *(v12 + 16);
  v20 = v12 + 16;
  v22 = *(v20 + 56);
  v64 = (v20 - 8);
  v65 = v21;
  v23 = v19 + v22 * (a3 - 1);
  v60 = -v22;
  v61 = (v20 + 16);
  v24 = a1 - a3;
  v62 = v19;
  v54 = v22;
  v25 = v19 + v22 * a3;
  v66 = v20;
  v67 = v11;
LABEL_5:
  v58 = v23;
  v59 = a3;
  v56 = v25;
  v57 = v24;
  v68 = v24;
  while (1)
  {
    v26 = v65;
    v65(v69, v25, v11);
    v26(v70, v23, v11);
    v27 = sub_2408D3960();
    v28 = *(v27 + 32);
    v29 = v28 & 0x3F;
    v30 = ((1 << v28) + 63) >> 6;
    v31 = (8 * v30);

    if (v29 > 0xD)
    {
      isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
      if ((isStackAllocationSafe & 1) == 0)
      {
        v31 = swift_slowAlloc();
        v49 = v71;

        v50 = sub_24086E85C(v31, v30, v27, v49);
        if (v6)
        {
          goto LABEL_23;
        }

        v34 = v50;

        MEMORY[0x245CC9F60](v31, -1, -1);
        goto LABEL_9;
      }
    }

    MEMORY[0x28223BE20](isStackAllocationSafe);
    bzero(&v53 - ((v31 + 15) & 0x3FFFFFFFFFFFFFF0), v31);
    sub_24086E8EC((&v53 - ((v31 + 15) & 0x3FFFFFFFFFFFFFF0)), v30, v27, v71);
    if (v6)
    {
      break;
    }

    v34 = v33;

LABEL_9:
    v35 = v34[2];

    v36 = sub_2408D3960();
    v37 = *(v36 + 32);
    v38 = v37 & 0x3F;
    v39 = ((1 << v37) + 63) >> 6;
    v40 = 8 * v39;

    if (v38 <= 0xD || (v41 = swift_stdlib_isStackAllocationSafe(), (v41 & 1) != 0))
    {
      MEMORY[0x28223BE20](v41);
      bzero(&v53 - ((v40 + 15) & 0x3FFFFFFFFFFFFFF0), v40);
      sub_24086E8EC((&v53 - ((v40 + 15) & 0x3FFFFFFFFFFFFFF0)), v39, v36, v71);
      v43 = v42;
    }

    else
    {
      v51 = swift_slowAlloc();
      v52 = v71;

      v43 = sub_24086E85C(v51, v39, v36, v52);

      MEMORY[0x245CC9F60](v51, -1, -1);
    }

    v11 = v67;
    v44 = v43[2];

    v45 = *v64;
    (*v64)(v70, v11);
    result = (v45)(v69, v11);
    if (v44 < v35)
    {
      if (!v62)
      {
        __break(1u);
      }

      v46 = *v61;
      v47 = v63;
      (*v61)(v63, v25, v11);
      swift_arrayInitWithTakeFrontToBack();
      result = (v46)(v23, v47, v11);
      v23 += v60;
      v25 += v60;
      if (!__CFADD__(v68++, 1))
      {
        continue;
      }
    }

    a3 = v59 + 1;
    v23 = v58 + v54;
    v24 = v57 - 1;
    v25 = v56 + v54;
    if (v59 + 1 == v55)
    {
      return result;
    }

    goto LABEL_5;
  }

  swift_willThrow();

  __break(1u);
LABEL_23:

  result = MEMORY[0x245CC9F60](v31, -1, -1);
  __break(1u);
  return result;
}

uint64_t sub_240872D44(uint64_t *a1, char *a2)
{
  v4 = a1[1];
  swift_bridgeObjectRetain_n();
  result = sub_2408D5210();
  if (result < v4)
  {
    if (v4 >= -1)
    {
      v6 = result;
      v7 = v4 / 2;
      if (v4 <= 1)
      {
        v8 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_2408D3970();
        v8 = sub_2408D4DF0();
        *(v8 + 16) = v7;
      }

      v9 = *(sub_2408D3970() - 8);
      v10[0] = v8 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
      v10[1] = v7;

      sub_2408716F8(v10, v11, a1, v6, a2);

      *(v8 + 16) = 0;
      swift_bridgeObjectRelease_n();
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v4 < 0)
  {
    goto LABEL_12;
  }

  if (v4)
  {

    sub_2408727C4(0, v4, 1, a1, a2);
  }

  return swift_bridgeObjectRelease_n();
}

uint64_t sub_240872EC8(uint64_t *a1, char *a2)
{
  v4 = *(sub_2408D3970() - 8);
  v5 = *a1;
  swift_bridgeObjectRetain_n();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v5 = sub_24086F2E0(v5);
  }

  v6 = v5[2];
  v8[0] = v5 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
  v8[1] = v6;

  sub_240872D44(v8, a2);

  *a1 = v5;
  return swift_bridgeObjectRelease_n();
}

uint64_t sub_240872FB0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5076A0, &qword_2408D8388);
    v3 = sub_2408D5100();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      sub_2408D5300();

      sub_2408D4D60();
      result = sub_2408D5320();
      v11 = ~(-1 << *(v3 + 32));
      for (i = result & v11; ; i = (i + 1) & v11)
      {
        v13 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v13) == 0)
        {
          break;
        }

        v14 = (*(v3 + 48) + 16 * i);
        if (*v14 != v9 || v14[1] != v8)
        {
          result = sub_2408D5240();
          if ((result & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_4;
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v13;
      v16 = (*(v3 + 48) + 16 * i);
      *v16 = v9;
      v16[1] = v8;
      v17 = *(v3 + 16);
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (!v18)
      {
        *(v3 + 16) = v19;
LABEL_4:
        if (++v4 == v1)
        {
          return v3;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84FA0];
  }

  return result;
}

void *sub_240873118(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507458, &unk_2408D9030);
  MEMORY[0x28223BE20](v3 - 8);
  v41 = &v29 - v4;
  v5 = sub_2408D4260();
  MEMORY[0x28223BE20](v5 - 8);
  v40 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506FA0, &unk_2408D7340);
  v38 = *(v7 - 8);
  v39 = v7;
  MEMORY[0x28223BE20](v7);
  v37 = &v29 - v8;
  v9 = sub_2408D3A30();
  MEMORY[0x28223BE20](v9 - 8);
  v36 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2408D4FD0();
  v34 = *(v11 - 8);
  v35 = v11;
  MEMORY[0x28223BE20](v11);
  v33 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_2408D4FC0();
  MEMORY[0x28223BE20](v32);
  v31 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_2408D4C70();
  MEMORY[0x28223BE20](v14 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507680, &qword_2408D9330);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_2408D71B0;
  *(v15 + 56) = &type metadata for BoolEntitlement;
  *(v15 + 64) = &off_281A84E68;
  *(v15 + 32) = 0xD000000000000024;
  *(v15 + 40) = 0x80000002408DAE90;
  *(v15 + 48) = 2;
  v1[2] = v15;
  type metadata accessor for AuditReport();
  v16 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v16 + 112) = 2;
  *(v16 + 116) = 0u;
  *(v16 + 132) = 0u;
  *(v16 + 148) = 1;
  v1[3] = v16;
  v17 = MEMORY[0x277D84F90];
  v1[4] = sub_2407F6144(MEMORY[0x277D84F90]);
  v1[5] = a1;
  v30 = v1;
  v18 = objc_allocWithZone(MEMORY[0x277CF0130]);

  v1[6] = [v18 init];
  sub_2407EEDBC(0, &qword_28130EF48, 0x277D85C78);
  sub_2408D4C60();
  v42 = v17;
  sub_2408763D8(&unk_28130EF50, 255, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506DB0, &unk_2408D6D80);
  sub_2407D917C(&qword_28130EF98, &qword_27E506DB0, &unk_2408D6D80, MEMORY[0x277D83970]);
  sub_2408D5080();
  (*(v34 + 104))(v33, *MEMORY[0x277D85260], v35);
  v19 = sub_2408D4FF0();
  v20 = v30;
  v30[8] = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507688, &qword_2408D8360);
  sub_2408D39D0();

  sub_2408D3CC0();
  sub_2407D917C(&qword_27E507690, &qword_27E507688, &qword_2408D8360, MEMORY[0x277CED548]);
  v21 = sub_2408D4680();

  v20[7] = v21;
  v22 = v20;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506A48, &qword_2408D6808);
  sub_2407D917C(qword_27E507330, &qword_27E506A48, &qword_2408D6808, MEMORY[0x277CED888]);
  v23 = v37;
  sub_2408D4280();

  v24 = v39;
  v25 = v40;
  sub_2408D3F40();
  v26 = v38;
  v27 = v41;
  (*(v38 + 16))(v41, v23, v24);
  (*(v26 + 56))(v27, 0, 1, v24);
  swift_beginAccess();
  sub_2408C70EC(v27, v25);
  swift_endAccess();
  (*(v26 + 8))(v23, v24);
  return v22;
}

uint64_t sub_2408737B4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v5 = sub_2408D5100();
    v6 = 0;
    v7 = v5 + 56;
    v27 = v3;
    v28 = a1 + 32;
    v8 = v3;
    while (1)
    {
      v9 = *(v28 + 8 * v6);
      sub_2408D4D30();
      sub_2408D5300();
      v29 = v9;
      sub_2408D4D60();
      v10 = sub_2408D5320();

      v12 = -1 << *(v5 + 32);
      v13 = v10 & ~v12;
      v14 = v13 >> 6;
      v15 = *(v7 + 8 * (v13 >> 6));
      v16 = 1 << v13;
      if (((1 << v13) & v15) == 0)
      {
        goto LABEL_15;
      }

      v17 = ~v12;
      do
      {
        v18 = sub_2408D4D30();
        v20 = v19;
        if (v18 == sub_2408D4D30() && v20 == v21)
        {

LABEL_4:
          v8 = v27;
          goto LABEL_5;
        }

        v23 = sub_2408D5240();

        if (v23)
        {

          goto LABEL_4;
        }

        v13 = (v13 + 1) & v17;
        v14 = v13 >> 6;
        v15 = *(v7 + 8 * (v13 >> 6));
        v16 = 1 << v13;
      }

      while (((1 << v13) & v15) != 0);
      v8 = v27;
LABEL_15:
      *(v7 + 8 * v14) = v16 | v15;
      *(*(v5 + 48) + 8 * v13) = v29;
      v24 = *(v5 + 16);
      v25 = __OFADD__(v24, 1);
      v26 = v24 + 1;
      if (v25)
      {
        __break(1u);
        return result;
      }

      *(v5 + 16) = v26;
LABEL_5:
      if (++v6 == v8)
      {
        return v5;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

uint64_t sub_2408739A0(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v4 = sub_2408D45F0();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  v5 = sub_2408D4570();
  v3[8] = v5;
  v3[9] = *(v5 - 8);
  v3[10] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E506A20, &unk_2408D67F0);
  v3[11] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507230, &unk_2408D7680);
  v3[12] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506A30, &qword_2408D6800);
  v3[13] = swift_task_alloc();
  v6 = sub_2408D3970();
  v3[14] = v6;
  v3[15] = *(v6 - 8);
  v3[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_240873BC0, v2, 0);
}

uint64_t sub_240873BC0()
{
  v30 = v0;
  if (qword_27E506930 != -1)
  {
    swift_once();
  }

  v2 = v0[15];
  v1 = v0[16];
  v3 = v0[14];
  v4 = v0[3];
  v5 = sub_2408D4B20();
  v0[17] = __swift_project_value_buffer(v5, qword_27E507280);
  v6 = *(v2 + 16);
  v0[18] = v6;
  v0[19] = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v1, v4, v3);
  v7 = sub_2408D4B10();
  v8 = sub_2408D4F20();
  v9 = os_log_type_enabled(v7, v8);
  v11 = v0[15];
  v10 = v0[16];
  v12 = v0[14];
  if (v9)
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v29 = v14;
    *v13 = 136315138;
    sub_2408763D8(&qword_28130F418, 255, MEMORY[0x277CED3F8], MEMORY[0x277CED410]);
    v15 = sub_2408D5220();
    v17 = v16;
    (*(v11 + 8))(v10, v12);
    v18 = sub_2408CC504(v15, v17, &v29);

    *(v13 + 4) = v18;
    _os_log_impl(&dword_2407CF000, v7, v8, "Repairing CK loss symptom for account: %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v14);
    MEMORY[0x245CC9F60](v14, -1, -1);
    MEMORY[0x245CC9F60](v13, -1, -1);
  }

  else
  {

    (*(v11 + 8))(v10, v12);
  }

  v19 = *(v0[4] + 208);
  v0[20] = v19;
  if (v19)
  {
    v20 = v0[13];
    v21 = sub_2408D3630();
    (*(*(v21 - 8) + 56))(v20, 1, 1, v21);

    v22 = swift_task_alloc();
    v0[21] = v22;
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506A48, &qword_2408D6808);
    v0[22] = v23;
    v24 = sub_2407D917C(&qword_27E506A50, &qword_27E506A48, &qword_2408D6808, MEMORY[0x277CED890]);
    *v22 = v0;
    v22[1] = sub_240874030;
    v25 = v0[13];

    return MEMORY[0x28213FC20](v25, sub_240811518, 0, sub_24081153C, 0, v23, v21, v24);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507488, &qword_2408D7F48);
    sub_2407D917C(&qword_27E507490, &qword_27E507488, &qword_2408D7F48, &unk_2408D7990);
    swift_allocError();
    *v26 = xmmword_2408D7CF0;
    *(v26 + 16) = 2;
    swift_willThrow();

    v27 = v0[1];

    return v27(0);
  }
}

uint64_t sub_240874030(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 184) = v1;

  if (v1)
  {
    v5 = v4[13];
    v6 = v4[4];
    sub_2407D9440(v5, &qword_27E506A30, &qword_2408D6800);

    v7 = sub_2408746C8;
    v8 = v6;
    v9 = 0;
  }

  else
  {
    v4[24] = a1;
    sub_2407D917C(&qword_27E506A58, &qword_27E506A48, &qword_2408D6808, MEMORY[0x277CED898]);
    v10 = sub_2408D4E00();
    v12 = v11;
    v7 = sub_2408741D4;
    v8 = v10;
    v9 = v12;
  }

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_2408741D4()
{
  v1 = v0[13];
  v2 = v0[4];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506A60, &unk_2408D6810);
  sub_2407D917C(&qword_27E506A68, &qword_27E506A60, &unk_2408D6810, MEMORY[0x277CED540]);
  v0[25] = sub_2408D4680();

  sub_2407D9440(v1, &qword_27E506A30, &qword_2408D6800);

  return MEMORY[0x2822009F8](sub_2408742DC, v2, 0);
}

uint64_t sub_2408742DC()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 120);
  v3 = *(v0 + 88);
  v16 = *(v0 + 96);
  v5 = *(v0 + 72);
  v4 = *(v0 + 80);
  v7 = *(v0 + 56);
  v6 = *(v0 + 64);
  v9 = *(v0 + 40);
  v8 = *(v0 + 48);
  (*(v0 + 144))(v3, *(v0 + 24), v1);
  (*(v2 + 56))(v3, 0, 1, v1);
  (*(v5 + 104))(v4, *MEMORY[0x277CEDC40], v6);
  (*(v8 + 104))(v7, *MEMORY[0x277CEDC80], v9);
  sub_2408D4620();
  v10 = sub_2408D4660();
  (*(*(v10 - 8) + 56))(v16, 0, 1, v10);
  v11 = swift_task_alloc();
  *(v0 + 208) = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506A70, qword_2408D75E0);
  *(v0 + 216) = v12;
  v13 = sub_2407D917C(&qword_27E506A78, &qword_27E506A70, qword_2408D75E0, MEMORY[0x277CED890]);
  *v11 = v0;
  v11[1] = sub_240874524;
  v14 = *(v0 + 96);

  return MEMORY[0x28213FC20](v14, sub_2407EE4C0, 0, sub_2407EE4E4, 0, v12, v10, v13);
}

uint64_t sub_240874524(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 224) = v1;

  if (v1)
  {
    v5 = v4[12];
    v6 = v4[4];

    sub_2407D9440(v5, &qword_27E507230, &unk_2408D7680);
    v7 = sub_240874A60;
    v8 = v6;
    v9 = 0;
  }

  else
  {
    v4[29] = a1;
    sub_2407D917C(&qword_27E506A80, &qword_27E506A70, qword_2408D75E0, MEMORY[0x277CED898]);
    v10 = sub_2408D4E00();
    v12 = v11;
    v7 = sub_240874774;
    v8 = v10;
    v9 = v12;
  }

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_2408746C8()
{

  v1 = *(v0 + 8);

  return v1(0);
}

uint64_t sub_240874774()
{
  v1 = v0[12];
  v2 = v0[4];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506A88, &qword_2408D6820);
  sub_2407D917C(&qword_27E506A90, &qword_27E506A88, &qword_2408D6820, MEMORY[0x277CED540]);
  v0[30] = sub_2408D4680();

  sub_2407D9440(v1, &qword_27E507230, &unk_2408D7680);

  return MEMORY[0x2822009F8](sub_24087487C, v2, 0);
}

uint64_t sub_24087487C()
{
  v1 = swift_task_alloc();
  *(v0 + 248) = v1;
  *v1 = v0;
  v1[1] = sub_24087492C;
  v2 = *(v0 + 240);

  return sub_24082CFC4(v2);
}

uint64_t sub_24087492C(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 256) = a1;
  *(v4 + 264) = v1;

  v5 = *(v3 + 32);
  if (v1)
  {
    v6 = sub_240874CF4;
  }

  else
  {
    v6 = sub_240874B0C;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_240874A60()
{

  v1 = *(v0 + 8);

  return v1(0);
}

uint64_t sub_240874B0C()
{
  v12 = v0;

  v1 = sub_2408D4B10();
  v2 = sub_2408D4F10();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[32];
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v11 = v5;
    *v4 = 136315138;
    v0[2] = v3;
    type metadata accessor for AuthenticationReport(0);

    v6 = sub_2408D4D40();
    v8 = sub_2408CC504(v6, v7, &v11);

    *(v4 + 4) = v8;
    _os_log_impl(&dword_2407CF000, v1, v2, "Repaired CK loss symptom with results: %s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v5);
    MEMORY[0x245CC9F60](v5, -1, -1);
    MEMORY[0x245CC9F60](v4, -1, -1);
  }

  else
  {
  }

  v9 = v0[1];

  return v9(1);
}

uint64_t sub_240874CF4()
{

  v1 = *(v0 + 8);

  return v1(0);
}

uint64_t sub_240874DA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_2407DB6F0;

  return sub_24085AFA0(a1, a2, a3, v3);
}

uint64_t sub_240874E64(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2407DB6F0;

  return sub_24086F510(a1, v4, v5, v6);
}

uint64_t sub_240874F2C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2407DB6F0;

  return sub_24086F308(a1, v4);
}

uint64_t sub_240874FE4(uint64_t a1)
{
  v1[6] = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507320, qword_2408D77F0);
  v1[7] = v3;
  v1[8] = *(v3 - 8);
  v1[9] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507328, &qword_2408D7900);
  v1[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2408750EC, a1, 0);
}

uint64_t sub_2408750EC()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 48);
  v3 = *(*v2 + 200);
  swift_beginAccess();
  sub_2407EEE04(v2 + v3, v1, &qword_27E507328, &qword_2408D7900);

  return MEMORY[0x2822009F8](sub_2408751A0, 0, 0);
}

uint64_t sub_2408751A0()
{
  v1 = v0[10];
  v2 = v0[7];
  v3 = v0[8];
  v4 = (*(v3 + 48))(v1, 1, v2);
  if (v4)
  {
    sub_2407D9440(v1, &qword_27E507328, &qword_2408D7900);
  }

  else
  {
    v5 = v0[9];
    (*(v3 + 16))(v5, v1, v2);
    sub_2407D9440(v1, &qword_27E507328, &qword_2408D7900);
    v6 = sub_2408D3990();
    sub_2408763D8(&qword_27E506AD8, 255, MEMORY[0x277CED460], MEMORY[0x277CED468]);
    v7 = swift_allocError();
    (*(*(v6 - 8) + 104))(v8, *MEMORY[0x277CED450], v6);
    v0[5] = v7;
    sub_2408D4E90();
    (*(v3 + 8))(v5, v2);
  }

  v9 = v0[1];

  return v9(v4 != 0);
}

uint64_t sub_2408753A4(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507508, &qword_2408D80E0) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_2408D4500() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = (*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = *(v1 + 16);
  v12 = *(v1 + 24);
  v13 = *(v1 + v10);
  v14 = *(v1 + ((v10 + 15) & 0xFFFFFFFFFFFFFFF8));
  v15 = swift_task_alloc();
  *(v3 + 16) = v15;
  *v15 = v3;
  v15[1] = sub_2407DB6F0;

  return sub_240836098(a1, v11, v12, v1 + v6, v1 + v9, v13, v14);
}

uint64_t sub_240875550(void *a1)
{
  v3 = *(sub_2408D4500() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_2407EC7C8(a1, v1 + v4, v5);
}

uint64_t objectdestroy_163Tm(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(void))
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = (v7 + 32) & ~v7;
  v9 = *(v6 + 64);
  v10 = a3(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 80);
  v13 = (v8 + v9 + v12) & ~v12;
  v14 = v7 | v12;
  v15 = (((*(v11 + 64) + v13 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v6 + 8))(v3 + v8, v5);
  (*(v11 + 8))(v3 + v13, v10);

  return MEMORY[0x2821FE8E8](v3, v15 + 8, v14 | 7);
}

uint64_t sub_240875770(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507560, &qword_2408D8130) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_2408D3E10() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = (*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = *(v1 + 16);
  v12 = *(v1 + 24);
  v13 = *(v1 + v10);
  v14 = *(v1 + ((v10 + 15) & 0xFFFFFFFFFFFFFFF8));
  v15 = swift_task_alloc();
  *(v3 + 16) = v15;
  *v15 = v3;
  v15[1] = sub_2407DB6F0;

  return sub_24083F56C(a1, v11, v12, v1 + v6, v1 + v9, v13, v14);
}

uint64_t objectdestroy_167Tm()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24087595C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2407DB6F0;

  return sub_240844F54(a1, v5, v4);
}

uint64_t sub_240875A08(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SignInReport(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_240875A6C(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_240875A80(result, a2);
  }

  return result;
}

uint64_t sub_240875A80(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_240875AEC(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2407DB6F0;

  return sub_2408159FC(a1, v5, v4);
}

uint64_t sub_240875B98(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_240875C00(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_240875C68(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_240875CD4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2407DB6F0;

  return sub_24086F6BC(a1, v4, v5, v6);
}

id sub_240875D9C(id a1, char a2)
{
  if (a2)
  {
    return a1;
  }

  else
  {
  }
}

uint64_t sub_240875DA8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2407DB6F0;

  return sub_240820A3C(a1, v4, v5, v6);
}

uint64_t sub_240875E7C(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = *(v2 + 32);
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_2407DB6F0;

  return sub_2407DCA08(a1, a2, v6, v7, v8);
}

uint64_t sub_240875F44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_2407DB6F0;

  return sub_24082BB0C(a1, a2, a3, v3);
}

uint64_t sub_240876008(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 24))(a2, a1, v6);
  return a2;
}

unint64_t sub_240876078()
{
  result = qword_27E507660;
  if (!qword_27E507660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E507660);
  }

  return result;
}

uint64_t sub_2408760CC(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_2407DB6F0;

  return sub_24085F6D0(a1, a2, v2);
}

unint64_t sub_240876184()
{
  result = qword_27E5076A8;
  if (!qword_27E5076A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E5076A8);
  }

  return result;
}

uint64_t sub_2408761D8()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_240813A08;

  return sub_2408694E0(v2);
}

unint64_t sub_240876320()
{
  result = qword_27E5076C0;
  if (!qword_27E5076C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E5076B0, &qword_2408D8400);
    sub_2408763D8(&qword_27E5076C8, 255, MEMORY[0x277CED910], MEMORY[0x277CED918]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E5076C0);
  }

  return result;
}

uint64_t sub_2408763D8(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_2408764B4(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16) && (sub_2408D4D30(), sub_2408D5300(), sub_2408D4D60(), v3 = sub_2408D5320(), , v4 = -1 << *(a2 + 32), v5 = v3 & ~v4, ((*(a2 + 56 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0))
  {
    v6 = ~v4;
    while (1)
    {
      v7 = sub_2408D4D30();
      v9 = v8;
      if (v7 == sub_2408D4D30() && v9 == v10)
      {
        break;
      }

      v12 = sub_2408D5240();

      if ((v12 & 1) == 0)
      {
        v5 = (v5 + 1) & v6;
        if ((*(a2 + 56 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
        {
          continue;
        }
      }

      return v12 & 1;
    }

    v12 = 1;
  }

  else
  {
    v12 = 0;
  }

  return v12 & 1;
}

uint64_t sub_240876608(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_2408D5300();
  sub_2408D4D60();
  v6 = sub_2408D5320();
  v7 = -1 << *(a3 + 32);
  v8 = v6 & ~v7;
  if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(a3 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (sub_2408D5240() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_240876700()
{
  v1 = *v0;
  sub_2408D5300();
  MEMORY[0x245CC9750](v1);
  return sub_2408D5320();
}

uint64_t sub_240876774(uint64_t a1)
{
  v2 = *v1;
  sub_2408D5300();
  MEMORY[0x245CC9750](v2);
  return sub_2408D5320();
}

uint64_t sub_2408767D8(uint64_t a1, uint64_t a2)
{
  v3 = v2[3];
  v12 = *(v3 + 152);
  v4 = *(v3 + 112);
  v5 = *(v3 + 120);
  v6 = *(v3 + 128);
  v7 = sub_240878BBC(&qword_28130F408, a2, type metadata accessor for PushService, &unk_2408D8550);
  v8 = swift_task_alloc();
  v2[4] = v8;
  *(v8 + 16) = v6;
  *(v8 + 24) = v3;
  *(v8 + 32) = v12;
  *(v8 + 48) = v4;
  *(v8 + 56) = v5;
  v9 = swift_task_alloc();
  v2[5] = v9;
  v10 = sub_240878A9C();
  *v9 = v2;
  v9[1] = sub_240876938;

  return MEMORY[0x2822008A0](v2 + 2, v3, v7, 0x6574617669746361, 0xEA00000000002928, sub_240878A8C, v8, v10);
}

uint64_t sub_240876938()
{
  v2 = *v1;
  *(*v1 + 48) = v0;

  if (v0)
  {
    v3 = *(v2 + 24);
    v4 = sub_240876AC8;
  }

  else
  {
    v5 = *(v2 + 24);

    v4 = sub_240876A5C;
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_240876A5C()
{
  v1 = *(v0 + 16);
  sub_240877158(v1);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_240876AC8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_240876B2C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v35 = a6;
  v36 = a7;
  v32 = a4;
  v33 = a5;
  v34 = a2;
  v39 = sub_2408D4C50();
  v41 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v37 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_2408D4C70();
  v38 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E507758, &qword_2408D85B0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v31 - v14;
  v16 = swift_allocObject();
  swift_weakInit();
  (*(v12 + 16))(v15, a1, v11);
  v17 = (*(v12 + 80) + 24) & ~*(v12 + 80);
  v18 = (v13 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = (v18 + 23) & 0xFFFFFFFFFFFFFFF8;
  v20 = (v19 + 23) & 0xFFFFFFFFFFFFFFF8;
  v21 = swift_allocObject();
  *(v21 + 16) = v16;
  (*(v12 + 32))(v21 + v17, v15, v11);
  v22 = (v21 + v18);
  v23 = v33;
  *v22 = v32;
  v22[1] = v23;
  v24 = (v21 + v19);
  v25 = v36;
  *v24 = v35;
  v24[1] = v25;
  v26 = v34;
  *(v21 + v20) = v34;
  aBlock[4] = sub_240878AE8;
  aBlock[5] = v21;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_240877114;
  aBlock[3] = &block_descriptor_4;
  v27 = _Block_copy(aBlock);

  v26;
  sub_2408D4C60();
  v42 = MEMORY[0x277D84F90];
  sub_240878BBC(&qword_28130EFB0, 255, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E507768, &qword_2408D85B8);
  sub_240878C04();
  v28 = v37;
  v29 = v39;
  sub_2408D5080();
  MEMORY[0x245CC9420](0, v10, v28, v27);
  _Block_release(v27);
  (*(v41 + 8))(v28, v29);
  (*(v38 + 8))(v10, v40);
}

uint64_t sub_240876F44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v7 = *(Strong + 128);
    v8 = objc_allocWithZone(MEMORY[0x277CEEA10]);
    v9 = v7;

    v10 = sub_2408D4D00();

    v11 = sub_2408D4D00();

    v12 = [v8 initWithEnvironmentName:v10 namedDelegatePort:v11 queue:v9];

    if (v12)
    {
      v13 = v12;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E507758, &qword_2408D85B0);
      sub_2408D4E20();
    }

    else
    {
      sub_240878C68();
      swift_allocError();
      *v16 = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E507758, &qword_2408D85B0);
      sub_2408D4E10();
    }
  }

  else
  {
    sub_240878C68();
    swift_allocError();
    *v14 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E507758, &qword_2408D85B0);
    return sub_2408D4E10();
  }
}

uint64_t sub_240877114(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

void sub_240877158(void *a1)
{
  v2 = v1;
  v4 = sub_2408D4B20();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for PushService.PushConnectionDelegateWrapper();
  v9 = objc_allocWithZone(v8);
  swift_weakInit();
  swift_weakAssign();
  v31.receiver = v9;
  v31.super_class = v8;
  v10 = objc_msgSendSuper2(&v31, sel_init);
  v11 = v1[21];
  v1[21] = v10;
  v12 = v10;

  [a1 setDelegate_];
  v13 = v1[18];
  v14 = *(v13 + 16);
  if (v14)
  {
    v26 = v7;
    v27 = v5;
    v28 = v4;
    v29 = a1;
    v15 = sub_2408783CC(v14, 0);
    v16 = sub_240878778(&v30, v15 + 4, v14, v13);
    v17 = v30;

    sub_2407D17F4(v17);
    if (v16 != v14)
    {
      __break(1u);
      return;
    }

    v4 = v28;
    a1 = v29;
    v7 = v26;
    v5 = v27;
  }

  v18 = sub_2408D4DB0();

  [a1 _setEnabledTopics_];

  sub_2408D4930();

  v19 = sub_2408D4B10();
  v20 = sub_2408D4F20();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v30 = v22;
    *v21 = 136315138;
    *(v21 + 4) = sub_2408CC504(v2[19], v2[20], &v30);
    _os_log_impl(&dword_2407CF000, v19, v20, "Push service started with environment: %s", v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v22);
    MEMORY[0x245CC9F60](v22, -1, -1);
    MEMORY[0x245CC9F60](v21, -1, -1);
  }

  (*(v5 + 8))(v7, v4);
  v23 = v2[22];
  v2[22] = a1;
  v24 = a1;
}

uint64_t sub_24087743C(void *a1)
{
  v2 = v1;
  v4 = sub_2408D4B20();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2408D4930();
  v8 = sub_2408D4B10();
  v9 = sub_2408D4F20();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_2407CF000, v8, v9, "Processing incoming message", v10, 2u);
    MEMORY[0x245CC9F60](v10, -1, -1);
  }

  result = (*(v5 + 8))(v7, v4);
  v12 = *(v2 + 136);
  v13 = *(v12 + 16);
  if (v13)
  {
    v14 = 0;
    v15 = v12 + 32;
    while (v14 < *(v12 + 16))
    {
      swift_unknownObjectRetain();
      sub_240812504(a1, &v16);
      if (*(&v16 + 1))
      {
        v21 = v16;
        v23 = v18;
        v24 = v19;
        *v25 = *v20;
        *&v25[15] = *&v20[15];
        v22 = v17;
        if (sub_240812B54(v17 & 1))
        {
          sub_2408119C0(&v21);
        }

        swift_unknownObjectRelease();
        result = sub_240878A24(&v16);
      }

      else
      {
        result = swift_unknownObjectRelease();
      }

      ++v14;
      v15 += 16;
      if (v13 == v14)
      {
        return result;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_240877648(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = sub_2408D4B20();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v37 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v34 - v10;
  sub_2408D4930();
  v12 = sub_2408D4B10();
  v13 = sub_2408D4F20();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_2407CF000, v12, v13, "Informing delegates of incoming public token", v14, 2u);
    MEMORY[0x245CC9F60](v14, -1, -1);
  }

  v15 = v7 + 8;
  v16 = *(v7 + 8);
  result = v16(v11, v6);
  v40 = *(v3 + 136);
  v19 = v37;
  v39 = *(v40 + 16);
  if (v39)
  {
    v20 = 0;
    v21 = (v40 + 32);
    *&v18 = 136315138;
    v34 = v18;
    v35 = v15;
    v36 = v6;
    while (v20 < *(v40 + 16))
    {
      v41 = *v21;
      swift_unknownObjectRetain();
      sub_2408D4930();
      sub_24087827C(a1, a2);
      v22 = sub_2408D4B10();
      v23 = sub_2408D4F20();
      sub_240875A80(a1, a2);
      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        v38 = swift_slowAlloc();
        v42 = v38;
        *v24 = v34;
        v25 = sub_2408D3400();
        v27 = v16;
        v28 = a1;
        v29 = a2;
        v30 = sub_2408CC504(v25, v26, &v42);

        *(v24 + 4) = v30;
        a2 = v29;
        a1 = v28;
        v16 = v27;
        _os_log_impl(&dword_2407CF000, v22, v23, "SignOutServiceDelegate received public token: %s", v24, 0xCu);
        v31 = v38;
        __swift_destroy_boxed_opaque_existential_0Tm(v38);
        v32 = v31;
        v19 = v37;
        MEMORY[0x245CC9F60](v32, -1, -1);
        v33 = v24;
        v6 = v36;
        MEMORY[0x245CC9F60](v33, -1, -1);
      }

      v16(v19, v6);
      result = swift_unknownObjectRelease();
      ++v20;
      v21 += 2;
      if (v39 == v20)
      {
        return result;
      }
    }

    __break(1u);
  }

  return result;
}

id sub_240877960(void *a1)
{
  v2 = v1;
  v4 = sub_2408D4B20();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2408D4930();
  v8 = sub_2408D4B10();
  v9 = sub_2408D4F20();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_2407CF000, v8, v9, "Informing delegates of incoming message", v10, 2u);
    MEMORY[0x245CC9F60](v10, -1, -1);
  }

  (*(v5 + 8))(v7, v4);
  v11 = *(v2 + 144);
  result = [a1 topic];
  if (result)
  {
    v13 = result;
    v14 = sub_2408D4D30();
    v16 = v15;

    v17 = sub_240876608(v14, v16, v11);

    if (v17)
    {
      return sub_24087743C(a1);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

id *sub_240877B08()
{

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_240877B60()
{
  sub_240877B08();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_240877BB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return MEMORY[0x2822009F8](sub_240877BD4, a4, 0);
}

uint64_t sub_240877BD4()
{
  sub_240877648(v0[3], v0[4]);
  v1 = v0[1];

  return v1();
}

uint64_t sub_240877E54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x2822009F8](sub_240877E74, a4, 0);
}

uint64_t sub_240877E74()
{
  sub_240877960(*(v0 + 24));
  v1 = *(v0 + 8);

  return v1();
}

id sub_24087808C(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for PushService.PushConnectionDelegateWrapper();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_2408780F4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_2407D379C;

  return sub_240877E54(a1, v4, v5, v7, v6);
}

uint64_t sub_2408781B4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_2407DB6F0;

  return sub_240877BB0(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_24087827C(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

void *sub_2408782D0(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E507780, &unk_2408D85C0);
  v4 = *(sub_2408D3970() - 8);
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

void *sub_2408783CC(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507750, &unk_2408D8D80);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

void *sub_240878450(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506FC8, &unk_2408D7370);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 3);
  return result;
}

uint64_t sub_2408784D4(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v40 = sub_2408D3970();
  v42 = *(v40 - 8);
  v8 = MEMORY[0x28223BE20](v40);
  v41 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v8);
  v39 = &v33 - v11;
  v12 = a4 + 56;
  v13 = -1 << *(a4 + 32);
  if (-v13 < 64)
  {
    v14 = ~(-1 << -v13);
  }

  else
  {
    v14 = -1;
  }

  v15 = v14 & *(a4 + 56);
  if (!a2)
  {
LABEL_19:
    v31 = 0;
    a3 = 0;
LABEL_25:
    *a1 = a4;
    *(a1 + 8) = v12;
    *(a1 + 16) = ~v13;
    *(a1 + 24) = v31;
    *(a1 + 32) = v15;
    return a3;
  }

  if (!a3)
  {
    v31 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v33 = -1 << *(a4 + 32);
    v34 = a1;
    result = 0;
    v16 = 0;
    v17 = (63 - v13) >> 6;
    v35 = v42 + 32;
    v36 = v42 + 16;
    a1 = 1;
    v37 = a4 + 56;
    v38 = a3;
    v18 = v39;
    while (v15)
    {
      v44 = a2;
LABEL_15:
      v21 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      v43 = v16;
      v22 = a4;
      v23 = *(a4 + 48);
      v24 = v41;
      v25 = v42;
      v26 = *(v42 + 72);
      v27 = v40;
      (*(v42 + 16))(v41, v23 + v26 * (v21 | (v16 << 6)), v40);
      v28 = *(v25 + 32);
      v28(v18, v24, v27);
      v29 = v44;
      v28(v44, v18, v27);
      a3 = v38;
      if (a1 == v38)
      {
        v13 = v33;
        a1 = v34;
        a4 = v22;
        v31 = v43;
        v12 = v37;
        goto LABEL_25;
      }

      a2 = &v29[v26];
      result = a1;
      v30 = __OFADD__(a1++, 1);
      a4 = v22;
      v16 = v43;
      v12 = v37;
      if (v30)
      {
        __break(1u);
        goto LABEL_19;
      }
    }

    v19 = v16;
    while (1)
    {
      v20 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v20 >= v17)
      {
        break;
      }

      v15 = *(v12 + 8 * v20);
      ++v19;
      if (v15)
      {
        v44 = a2;
        v16 = v20;
        goto LABEL_15;
      }
    }

    v15 = 0;
    if (v17 <= v16 + 1)
    {
      v32 = v16 + 1;
    }

    else
    {
      v32 = v17;
    }

    v31 = v32 - 1;
    a3 = result;
    v13 = v33;
    a1 = v34;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

void *sub_240878778(void *result, void *a2, uint64_t a3, uint64_t a4)
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

void *sub_2408788D0(void *result, void *a2, uint64_t a3, uint64_t a4)
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

uint64_t sub_240878A24(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507748, &unk_2408D85A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_240878A9C()
{
  result = qword_28130EF90;
  if (!qword_28130EF90)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28130EF90);
  }

  return result;
}

uint64_t sub_240878AE8()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E507758, &qword_2408D85B0) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 23) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + 16);
  v6 = (v0 + v3);
  v7 = *v6;
  v8 = v6[1];
  v9 = *(v0 + v4);
  v10 = *(v0 + v4 + 8);

  return sub_240876F44(v5, v0 + v2, v7, v8, v9, v10);
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_240878BBC(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

unint64_t sub_240878C04()
{
  result = qword_28130EFA0;
  if (!qword_28130EFA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27E507768, &qword_2408D85B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28130EFA0);
  }

  return result;
}

unint64_t sub_240878C68()
{
  result = qword_27E507778;
  if (!qword_27E507778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E507778);
  }

  return result;
}

unint64_t sub_240878CD0()
{
  result = qword_27E507790;
  if (!qword_27E507790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E507790);
  }

  return result;
}

uint64_t sub_240878D24@<X0>(void (*a1)(char *, char *)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X6>, uint64_t a6@<X8>)
{
  v25 = a5;
  v26 = a2;
  v28 = a4;
  v27 = a1;
  v24 = *(a3 - 8);
  v10 = MEMORY[0x28223BE20](a1);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v13 + 16);
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v10);
  v18 = &v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v24 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v21 + 16))(v20, v6);
  v22 = 1;
  if ((*(v15 + 48))(v20, 1, v14) != 1)
  {
    (*(v15 + 32))(v18, v20, v14);
    v27(v18, v12);
    (*(v15 + 8))(v18, v14);
    if (v7)
    {
      return (*(v24 + 32))(v25, v12, a3);
    }

    v22 = 0;
  }

  return (*(*(v28 - 8) + 56))(a6, v22, 1);
}

uint64_t sub_240878FCC()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_240879038(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v32 = a1;
  v33 = a3;
  v5 = *(a2 + 24);
  v6 = sub_2408D5060();
  v27 = *(v6 - 8);
  v7 = MEMORY[0x28223BE20](v6);
  v9 = &v26 - v8;
  v10 = *(v5 - 8);
  v11 = MEMORY[0x28223BE20](v7);
  v30 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a2 + 16);
  MEMORY[0x28223BE20](v11);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = v16;
  (*(v16 + 16))(v15, v3, v13);
  v29 = &v26;
  v17 = (v3 + *(a2 + 40));
  v19 = *v17;
  v18 = v17[1];
  if (*v17)
  {
    v20 = v17[1];
  }

  else
  {
    v20 = 0;
  }

  v42 = v19;
  v43 = v20;
  v35 = v13;
  v36 = v5;
  v37 = v33;
  v38 = v3;
  v39 = v32;
  sub_2407D2588(v19, v18);
  v28 = v6;
  v40 = v6;
  v41 = v5;
  swift_getFunctionTypeMetadata();
  sub_2408D5060();
  sub_240878D24(sub_24087BE8C, v34, MEMORY[0x277D84A98], v5, v21, v9);
  sub_2407D1854(v19, v18);
  v22 = *(v10 + 48);
  if (v22(v9, 1, v5) == 1)
  {
    v23 = v30;
    (*(v10 + 16))(v30, v32, v5);
    if (v22(v9, 1, v5) != 1)
    {
      (*(v27 + 8))(v9, v28);
    }
  }

  else
  {
    v23 = v30;
    (*(v10 + 32))(v30, v9, v5);
  }

  v24 = (*(v33 + 32))(v23, v13);
  (*(v10 + 8))(v23, v5);
  (*(v31 + 8))(v15, v13);
  return v24 & 1;
}

uint64_t sub_2408793CC(void (**a1)(uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *a1;
  type metadata accessor for Stored(0, a4, a5, a4);
  v7 = sub_2408D4A80();
  v6(v8, a3);
  return v7(&v10, 0);
}

uint64_t sub_24087948C()
{
  v1 = *(v0 + 32);
  v2 = *(v1 + 16);
  v3 = MEMORY[0x277D84F90];
  if (v2)
  {
    v17 = MEMORY[0x277D84F90];
    sub_24087B620(0, v2, 0);
    v3 = v17;
    v4 = v1 + 32;
    do
    {
      sub_2407D91C4(v4, v14);
      v5 = v15;
      v6 = v16;
      __swift_project_boxed_opaque_existential_1(v14, v15);
      v7 = (*(v6 + 16))(v5, v6);
      v9 = v8;
      __swift_destroy_boxed_opaque_existential_0Tm(v14);
      v17 = v3;
      v11 = *(v3 + 16);
      v10 = *(v3 + 24);
      if (v11 >= v10 >> 1)
      {
        sub_24087B620((v10 > 1), v11 + 1, 1);
        v3 = v17;
      }

      *(v3 + 16) = v11 + 1;
      v12 = v3 + 16 * v11;
      *(v12 + 32) = v7;
      *(v12 + 40) = v9;
      v4 += 40;
      --v2;
    }

    while (v2);
  }

  return v3;
}

uint64_t sub_24087959C()
{
  v1[18] = v0;
  v2 = sub_2408D4B20();
  v1[19] = v2;
  v1[20] = *(v2 - 8);
  v1[21] = swift_task_alloc();
  v1[22] = swift_task_alloc();
  v1[23] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2408796A0, 0, 0);
}

uint64_t sub_2408796A0()
{
  v55 = v0;
  v54[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 144);
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = v1[6];
  LODWORD(v1) = v1[7];
  *(v0 + 192) = v2;
  *(v0 + 196) = v3;
  *(v0 + 200) = v4;
  *(v0 + 204) = v5;
  *(v0 + 208) = v7;
  *(v0 + 212) = v6;
  *(v0 + 216) = v8;
  *(v0 + 220) = v1;
  v9 = SecTaskCreateWithAuditToken(0, (v0 + 192));
  if (v9)
  {
    v10 = v9;
    *(v0 + 136) = 0;
    sub_24087948C();
    v11 = sub_2408D4DB0();

    v12 = SecTaskCopyValuesForEntitlements(v10, v11, (v0 + 136));

    v13 = *(v0 + 136);
    if (v13)
    {
      v53 = v12;
      v14 = *(v0 + 144);
      type metadata accessor for CFError(0);
      sub_24087BDE0();
      v15 = swift_allocError();
      *v16 = v13;
      sub_2408D4900();
      sub_24087BD24(v14, v0 + 56);
      v17 = v15;
      v18 = sub_2408D4B10();
      v19 = sub_2408D4F30();
      sub_24087BD5C(v14);

      v20 = os_log_type_enabled(v18, v19);
      v21 = *(v0 + 184);
      v22 = *(v0 + 152);
      v23 = *(v0 + 160);
      if (v20)
      {
        v52 = *(v0 + 184);
        v24 = swift_slowAlloc();
        v47 = swift_slowAlloc();
        v49 = swift_slowAlloc();
        v54[0] = v49;
        *v24 = 136315394;
        sub_24087948C();
        v25 = v10;
        v26 = MEMORY[0x245CC9210]();
        v51 = v22;
        v28 = v27;

        v29 = v26;
        v10 = v25;
        v30 = sub_2408CC504(v29, v28, v54);

        *(v24 + 4) = v30;
        *(v24 + 12) = 2112;
        v31 = v15;
        v32 = _swift_stdlib_bridgeErrorToNSError();
        *(v24 + 14) = v32;
        *v47 = v32;
        _os_log_impl(&dword_2407CF000, v18, v19, "Failed to check entitlements (%s) with error: %@", v24, 0x16u);
        sub_2407D9440(v47, &qword_27E506AB0, &unk_2408D6830);
        MEMORY[0x245CC9F60](v47, -1, -1);
        __swift_destroy_boxed_opaque_existential_0Tm(v49);
        MEMORY[0x245CC9F60](v49, -1, -1);
        MEMORY[0x245CC9F60](v24, -1, -1);

        (*(v23 + 8))(v52, v51);
      }

      else
      {

        (*(v23 + 8))(v21, v22);
      }

      swift_willThrow();
    }

    else
    {
      if (v12)
      {
        objc_opt_self();
        if (swift_dynamicCastObjCClass())
        {
          v54[0] = 0;
          v44 = v12;
          sub_2408D4CA0();
        }
      }

      sub_24087BE38();
      swift_allocError();
      swift_willThrow();
    }
  }

  else
  {
    v33 = *(v0 + 144);
    sub_2408D4900();
    sub_24087BD24(v33, v0 + 16);
    v34 = sub_2408D4B10();
    v35 = sub_2408D4F30();
    sub_24087BD5C(v33);
    v36 = os_log_type_enabled(v34, v35);
    v37 = *(v0 + 160);
    v38 = *(v0 + 168);
    v50 = *(v0 + 152);
    if (v36)
    {
      v39 = swift_slowAlloc();
      v48 = v38;
      v40 = swift_slowAlloc();
      v54[0] = v40;
      *v39 = 136315138;
      v41 = audit_token_t.description.getter();
      v43 = sub_2408CC504(v41, v42, v54);

      *(v39 + 4) = v43;
      _os_log_impl(&dword_2407CF000, v34, v35, "Failed to create SecTask with audit token: %s)", v39, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v40);
      MEMORY[0x245CC9F60](v40, -1, -1);
      MEMORY[0x245CC9F60](v39, -1, -1);

      (*(v37 + 8))(v48, v50);
    }

    else
    {

      (*(v37 + 8))(v38, v50);
    }

    sub_24087BD8C();
    swift_allocError();
    swift_willThrow();
  }

  v45 = *(v0 + 8);

  return v45();
}

uint64_t sub_240879E58(uint64_t a1)
{
  *(v2 + 152) = a1;
  *(v2 + 160) = v1;
  return MEMORY[0x2822009F8](sub_240879E78, 0, 0);
}

uint64_t sub_240879E78()
{
  v1 = *(*(v0 + 160) + 32);
  v2 = *(v1 + 16);
  if (!v2)
  {
LABEL_15:
    v23 = *(v0 + 8);
    v24 = 1;
    goto LABEL_19;
  }

  v3 = v1 + 32;
  v4 = *(v0 + 152);
  v38 = v4;
  while (1)
  {
    sub_2407D91C4(v3, v0 + 16);
    v5 = *(v0 + 40);
    v6 = *(v0 + 48);
    __swift_project_boxed_opaque_existential_1((v0 + 16), v5);
    v7 = (*(v6 + 16))(v5, v6);
    if (*(v4 + 16))
    {
      v9 = sub_2408CCB30(v7, v8);
      v11 = v10;

      if (v11)
      {
        sub_2407EEB40(*(v4 + 56) + 32 * v9, v0 + 120);
        sub_2407F6498((v0 + 120), (v0 + 88));
        goto LABEL_12;
      }
    }

    else
    {
    }

    v40 = v2;
    *(v0 + 136) = 0u;
    *(v0 + 120) = 0u;
    v13 = *(v0 + 40);
    v12 = *(v0 + 48);
    __swift_project_boxed_opaque_existential_1((v0 + 16), v13);
    v39 = *(v12 + 24);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v15 = sub_2408D5060();
    v16 = *(v15 - 8);
    v17 = swift_task_alloc();
    v39(v13, v12);
    v18 = *(AssociatedTypeWitness - 8);
    if ((*(v18 + 48))(v17, 1, AssociatedTypeWitness) == 1)
    {
      (*(v16 + 8))(v17, v15);

      *(v0 + 104) = 0u;
      *(v0 + 88) = 0u;
    }

    else
    {
      *(v0 + 112) = AssociatedTypeWitness;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 88));
      (*(v18 + 32))(boxed_opaque_existential_1, v17, AssociatedTypeWitness);
    }

    v2 = v40;
    v4 = v38;
    if (*(v0 + 144))
    {
      sub_2407D9440(v0 + 120, &qword_27E507FA0, &qword_2408D7FB0);
    }

LABEL_12:
    if (!*(v0 + 112))
    {
      sub_2407D9440(v0 + 88, &qword_27E507FA0, &qword_2408D7FB0);
      v25 = *(v0 + 40);
      v26 = *(v0 + 48);
      __swift_project_boxed_opaque_existential_1((v0 + 16), v25);
      v27 = (*(v26 + 16))(v25, v26);
      v29 = v28;
      sub_24087B588();
      swift_allocError();
      *v30 = v27;
      *(v30 + 8) = v29;
      *(v30 + 16) = 0;
      swift_willThrow();
      goto LABEL_18;
    }

    sub_2407F6498((v0 + 88), (v0 + 56));
    v20 = *(v0 + 40);
    v21 = *(v0 + 48);
    v22 = __swift_project_boxed_opaque_existential_1((v0 + 16), v20);
    if ((sub_24087BA78(v0 + 56, v22, v20, v21) & 1) == 0)
    {
      break;
    }

    __swift_destroy_boxed_opaque_existential_0Tm((v0 + 56));
    __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));
    v3 += 40;
    if (!--v2)
    {
      goto LABEL_15;
    }
  }

  v31 = *(v0 + 40);
  v32 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v31);
  v33 = (*(v32 + 16))(v31, v32);
  v35 = v34;
  sub_24087B588();
  swift_allocError();
  *v36 = v33;
  *(v36 + 8) = v35;
  *(v36 + 16) = 2;
  swift_willThrow();
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 56));
LABEL_18:
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));
  v23 = *(v0 + 8);
  v24 = 0;
LABEL_19:

  return v23(v24);
}

uint64_t sub_24087A2C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v6 = sub_2408D4B20();
  v5[7] = v6;
  v5[8] = *(v6 - 8);
  v5[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24087A388, v4, 0);
}

uint64_t sub_24087A388(uint64_t a1)
{
  v32 = v1;
  v2 = v1[6];
  v3 = *(v2 + 112);
  if (v3 == 2)
  {
    v4 = 2;
  }

  else if ((v3 & 1) != 0 && (*(v2 + 148) & 1) == 0)
  {
    v5 = *(v2 + 140);
    v6 = *(v2 + 132);
    v7 = *(v2 + 124);
    v8 = *(v2 + 116);
    sub_2408D4900();
    v9 = sub_2408D4B10();
    v10 = sub_2408D4F20();
    v11 = os_log_type_enabled(v9, v10);
    v12 = v1[8];
    v13 = v1[9];
    v14 = v1[7];
    if (v11)
    {
      v30 = v1[9];
      v29 = v1[7];
      v15 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v31 = v28;
      *v15 = 136315394;
      v16 = audit_token_t.description.getter();
      v18 = sub_2408CC504(v16, v17, &v31);

      *(v15 + 4) = v18;
      *(v15 + 12) = 2080;
      v19 = audit_token_t.description.getter();
      v21 = sub_2408CC504(v19, v20, &v31);

      *(v15 + 14) = v21;
      _os_log_impl(&dword_2407CF000, v9, v10, "Comparing incoming audit token (%s) with cached token: %s", v15, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x245CC9F60](v28, -1, -1);
      MEMORY[0x245CC9F60](v15, -1, -1);

      (*(v12 + 8))(v30, v29);
    }

    else
    {

      (*(v12 + 8))(v13, v14);
    }

    v22 = v1[5];
    v4 = v8 == v1[2] && v7 == v1[3] && v6 == v1[4] && v22 == v5 && (v22 ^ v5) >> 32 == 0;
  }

  else
  {
    v4 = 0;
  }

  v26 = v1[1];

  return v26(v4);
}

uint64_t sub_24087A5F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[7] = a6;
  v7[8] = v6;
  v7[5] = a4;
  v7[6] = a5;
  v7[3] = a2;
  v7[4] = a3;
  v7[2] = a1;
  v12 = sub_2408D4B20();
  v7[9] = v12;
  v7[10] = *(v12 - 8);
  v7[11] = swift_task_alloc();
  v7[12] = swift_task_alloc();
  v13 = swift_task_alloc();
  v7[13] = v13;
  *v13 = v7;
  v13[1] = sub_24087A72C;

  return sub_24087A2C0(a1, a2, a3, a4);
}

uint64_t sub_24087A72C(char a1)
{
  v2 = *(*v1 + 64);
  *(*v1 + 120) = a1;

  return MEMORY[0x2822009F8](sub_24087A844, v2, 0);
}

uint64_t sub_24087A844(uint64_t a1)
{
  v22 = v1;
  v2 = *(v1 + 120);
  if (v2 == 2)
  {
    v3 = swift_task_alloc();
    *(v1 + 112) = v3;
    *v3 = v1;
    v3[1] = sub_24087AAAC;
    v4 = *(v1 + 48);

    return sub_24087ADD4(v4);
  }

  else
  {
    sub_2408D4900();
    v6 = sub_2408D4B10();
    v7 = sub_2408D4F20();
    if (os_log_type_enabled(v6, v7))
    {
      v17 = *(v1 + 120);
      v18 = *(v1 + 80);
      v19 = *(v1 + 72);
      v20 = *(v1 + 96);
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v21 = v9;
      *v8 = 136315394;
      v10 = audit_token_t.description.getter();
      v12 = sub_2408CC504(v10, v11, &v21);

      *(v8 + 4) = v12;
      *(v8 + 12) = 1024;
      *(v8 + 14) = v17 & 1;
      _os_log_impl(&dword_2407CF000, v6, v7, "Already checked entitlements for %s) with passing result: %{BOOL}d", v8, 0x12u);
      __swift_destroy_boxed_opaque_existential_0Tm(v9);
      MEMORY[0x245CC9F60](v9, -1, -1);
      MEMORY[0x245CC9F60](v8, -1, -1);

      (*(v18 + 8))(v20, v19);
    }

    else
    {
      v13 = *(v1 + 96);
      v14 = *(v1 + 72);
      v15 = *(v1 + 80);

      (*(v15 + 8))(v13, v14);
    }

    v16 = *(v1 + 8);

    return v16(v2 & 1);
  }
}

uint64_t sub_24087AAAC(char a1)
{
  v2 = *(*v1 + 64);
  *(*v1 + 121) = a1;

  return MEMORY[0x2822009F8](sub_24087ABC4, v2, 0);
}

uint64_t sub_24087ABC4(uint64_t a1)
{
  v23 = v1;
  sub_2408D4900();
  v2 = sub_2408D4B10();
  v3 = sub_2408D4F50();
  if (os_log_type_enabled(v2, v3))
  {
    v19 = *(v1 + 121);
    v4 = *(v1 + 80);
    v20 = *(v1 + 72);
    v21 = *(v1 + 88);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v22 = v6;
    *v5 = 136315394;
    v7 = audit_token_t.description.getter();
    v9 = sub_2408CC504(v7, v8, &v22);

    *(v5 + 4) = v9;
    *(v5 + 12) = 1024;
    *(v5 + 14) = v19;
    _os_log_impl(&dword_2407CF000, v2, v3, "Finished auditing entitlements for audit token (%s) with passing result: %{BOOL}d", v5, 0x12u);
    __swift_destroy_boxed_opaque_existential_0Tm(v6);
    MEMORY[0x245CC9F60](v6, -1, -1);
    MEMORY[0x245CC9F60](v5, -1, -1);

    (*(v4 + 8))(v21, v20);
  }

  else
  {
    v11 = *(v1 + 80);
    v10 = *(v1 + 88);
    v12 = *(v1 + 72);

    (*(v11 + 8))(v10, v12);
  }

  v13 = *(v1 + 121);
  v14 = *(v1 + 64);
  if (v13 == 1)
  {
    v15 = *(v1 + 32);
    *(v14 + 116) = *(v1 + 16);
    *(v14 + 132) = v15;
    v16 = 1;
  }

  else
  {
    v16 = 0;
    *(v14 + 132) = 0u;
    *(v14 + 116) = 0u;
  }

  *(v14 + 112) = v16;
  *(v14 + 148) = v13 ^ 1;

  v17 = *(v1 + 8);

  return v17(v13);
}

uint64_t sub_24087ADD4(int *a1)
{
  v2[3] = v1;
  v4 = sub_2408D4B20();
  v2[4] = v4;
  v2[5] = *(v4 - 8);
  v2[6] = swift_task_alloc();
  v7 = (a1 + *a1);
  v5 = swift_task_alloc();
  v2[7] = v5;
  *v5 = v2;
  v5[1] = sub_24087AF2C;

  return v7();
}

uint64_t sub_24087AF2C(char a1)
{
  v4 = *v2;
  v5 = *v2;
  *(*v2 + 64) = v1;

  if (v1)
  {
    v6 = *(v4 + 24);

    return MEMORY[0x2822009F8](sub_24087B084, v6, 0);
  }

  else
  {

    v7 = *(v5 + 8);

    return v7(a1 & 1);
  }
}

uint64_t sub_24087B084(uint64_t a1)
{
  v22 = v1;
  v2 = *(v1 + 64);
  sub_2408D4900();
  v3 = v2;
  v4 = sub_2408D4B10();
  v5 = sub_2408D4F30();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v1 + 64);
    v7 = *(v1 + 40);
    v20 = *(v1 + 48);
    v8 = *(v1 + 32);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v21 = v10;
    *v9 = 136315138;
    *(v1 + 16) = v6;
    v11 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E506AC0, &qword_2408D6850);
    v12 = sub_2408D4D40();
    v14 = sub_2408CC504(v12, v13, &v21);

    *(v9 + 4) = v14;
    _os_log_impl(&dword_2407CF000, v4, v5, "Failed to check entitlements with error: %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v10);
    MEMORY[0x245CC9F60](v10, -1, -1);
    MEMORY[0x245CC9F60](v9, -1, -1);

    (*(v7 + 8))(v20, v8);
  }

  else
  {
    v16 = *(v1 + 40);
    v15 = *(v1 + 48);
    v17 = *(v1 + 32);

    (*(v16 + 8))(v15, v17);
  }

  v18 = *(v1 + 8);

  return v18(0);
}

uint64_t sub_24087B274()
{
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

unint64_t audit_token_t.description.getter()
{
  sub_2408D5120();

  v0 = sub_2408D5220();
  MEMORY[0x245CC91B0](v0);

  MEMORY[0x245CC91B0](46, 0xE100000000000000);
  v1 = sub_2408D5220();
  MEMORY[0x245CC91B0](v1);

  MEMORY[0x245CC91B0](46, 0xE100000000000000);
  v2 = sub_2408D5220();
  MEMORY[0x245CC91B0](v2);

  MEMORY[0x245CC91B0](46, 0xE100000000000000);
  v3 = sub_2408D5220();
  MEMORY[0x245CC91B0](v3);

  MEMORY[0x245CC91B0](46, 0xE100000000000000);
  v4 = sub_2408D5220();
  MEMORY[0x245CC91B0](v4);

  MEMORY[0x245CC91B0](46, 0xE100000000000000);
  v5 = sub_2408D5220();
  MEMORY[0x245CC91B0](v5);

  MEMORY[0x245CC91B0](46, 0xE100000000000000);
  v6 = sub_2408D5220();
  MEMORY[0x245CC91B0](v6);

  MEMORY[0x245CC91B0](46, 0xE100000000000000);
  v7 = sub_2408D5220();
  MEMORY[0x245CC91B0](v7);

  MEMORY[0x245CC91B0](41, 0xE100000000000000);
  return 0xD000000000000010;
}

unint64_t sub_24087B588()
{
  result = qword_27E5077A0;
  if (!qword_27E5077A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E5077A0);
  }

  return result;
}

void *sub_24087B5DC(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_24087B668(a1, a2, a3, *v3, qword_27E5077C0, &unk_2408D87A8, MEMORY[0x277CED3C8]);
  *v3 = result;
  return result;
}

char *sub_24087B620(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_24087B96C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_24087B668(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v16) == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

void *sub_24087B844(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506FC8, &unk_2408D7370);
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
    type metadata accessor for AIDAServiceType(0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_24087B96C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507750, &unk_2408D8D80);
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

uint64_t sub_24087BA78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v25 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = sub_2408D5060();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v24[-v11];
  v13 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](v10);
  v15 = &v24[-v14];
  sub_2407EEB40(a1, v24);
  v16 = swift_dynamicCast();
  v17 = *(v13 + 56);
  if (v16)
  {
    v17(v12, 0, 1, AssociatedTypeWitness);
    (*(v13 + 32))(v15, v12, AssociatedTypeWitness);
    LOBYTE(v18) = (*(a4 + 32))(v15, a3, a4);
    (*(v13 + 8))(v15, AssociatedTypeWitness);
  }

  else
  {
    v17(v12, 1, 1, AssociatedTypeWitness);
    (*(v9 + 8))(v12, v8);
    v18 = (*(a4 + 16))(a3, a4);
    v20 = v19;
    sub_24087B588();
    swift_allocError();
    *v21 = v18;
    *(v21 + 8) = v20;
    *(v21 + 16) = 1;
    swift_willThrow();
  }

  return v18 & 1;
}

unint64_t sub_24087BD8C()
{
  result = qword_27E5077A8;
  if (!qword_27E5077A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E5077A8);
  }

  return result;
}

unint64_t sub_24087BDE0()
{
  result = qword_27E5077B0;
  if (!qword_27E5077B0)
  {
    type metadata accessor for CFError(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E5077B0);
  }

  return result;
}

unint64_t sub_24087BE38()
{
  result = qword_27E5077B8;
  if (!qword_27E5077B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E5077B8);
  }

  return result;
}

uint64_t sub_24087BECC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
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

uint64_t sub_24087BF14(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
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

uint64_t sub_24087BF98(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24087BFE0(uint64_t result, int a2, int a3)
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
      *(result + 32) = (a2 - 1);
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

void sub_24087C05C(uint64_t a1)
{
  swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    sub_2408D5060();
    sub_2408D4AB0();
    if (v2 <= 0x3F)
    {
      sub_24087C418(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_24087C10C(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))(a1);
    }

    v17 = *((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

_BYTE *sub_24087C250(_BYTE *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = ((((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v7 >= a3)
  {
    v13 = 0;
    v14 = a2 - v7;
    if (a2 <= v7)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v10 = a3 - v7;
    if (((((v8 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v11 = v10 + 1;
    }

    else
    {
      v11 = 2;
    }

    if (v11 >= 0x10000)
    {
      v12 = 4;
    }

    else
    {
      v12 = 2;
    }

    if (v11 < 0x100)
    {
      v12 = 1;
    }

    if (v11 >= 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    v14 = a2 - v7;
    if (a2 <= v7)
    {
LABEL_17:
      if (v13 > 1)
      {
        if (v13 != 2)
        {
          *&result[v9] = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *&result[v9] = 0;
      }

      else if (v13)
      {
        result[v9] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return result;
      }

LABEL_33:
      if (v6 < 0x7FFFFFFF)
      {
        v19 = (&result[v8 + 7] & 0xFFFFFFFFFFFFFFF8);
        if ((a2 & 0x80000000) != 0)
        {
          v20 = a2 & 0x7FFFFFFF;
        }

        else
        {
          v20 = a2 - 1;
        }

        *v19 = v20;
      }

      else
      {
        v18 = *(v5 + 56);

        return v18();
      }

      return result;
    }
  }

  if (((((v8 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v15 = v14;
  }

  else
  {
    v15 = 1;
  }

  if (((((v8 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) != 0xFFFFFFF0)
  {
    v16 = ~v7 + a2;
    v17 = result;
    bzero(result, ((((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16);
    result = v17;
    *v17 = v16;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      *&result[v9] = v15;
    }

    else
    {
      *&result[v9] = v15;
    }
  }

  else if (v13)
  {
    result[v9] = v15;
  }

  return result;
}

void sub_24087C418(uint64_t a1)
{
  if (!qword_27E507848)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E507850, qword_2408D8908);
    v1 = sub_2408D5060();
    if (!v2)
    {
      atomic_store(v1, &qword_27E507848);
    }
  }
}

uint64_t sub_24087C4F0()
{
  sub_2408D5300();
  MEMORY[0x245CC9750](0);
  return sub_2408D5320();
}

uint64_t sub_24087C55C(uint64_t a1)
{
  sub_2408D5300();
  MEMORY[0x245CC9750](0);
  return sub_2408D5320();
}

uint64_t sub_24087C59C(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507878, &qword_2408D8B98);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24087D2F4();
  sub_2408D5380();
  v8[15] = 0;
  sub_2408D5200();
  if (v1)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v8[14] = 1;
  sub_2408D5200();
  v8[13] = 2;
  sub_2408D5200();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_24087C750()
{
  v1 = 0x4449736461;
  if (*v0 != 1)
  {
    v1 = 6580589;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x44496E7874;
  }
}

uint64_t sub_24087C79C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24087CF98(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24087C7DC(uint64_t a1)
{
  v2 = sub_24087D2F4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24087C818(uint64_t a1)
{
  v2 = sub_24087D2F4();

  return MEMORY[0x2821FE720](a1, v2);
}

double sub_24087C854@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  sub_24087D0A8(a2, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a1 = v6[0];
    a1[1] = v5;
    result = *&v7;
    a1[2] = v7;
  }

  return result;
}

uint64_t sub_24087C8B0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_2408D4B20();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v30 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = &v30 - v12;
  v31 = 0x64696E7874;
  v32 = 0xE500000000000000;
  sub_2408D50D0();
  if (!*(a1 + 16) || (v14 = sub_2408CCDE4(v33), (v15 & 1) == 0))
  {

    sub_240812CC8(v33);
LABEL_12:
    sub_2408D4930();
    v25 = sub_2408D4B10();
    v26 = sub_2408D4F30();
    if (!os_log_type_enabled(v25, v26))
    {
      v8 = v13;
      goto LABEL_16;
    }

    v27 = swift_slowAlloc();
    *v27 = 0;
    _os_log_impl(&dword_2407CF000, v25, v26, "SignOutData received push message with no txnid, failing initialization", v27, 2u);
    v8 = v13;
    goto LABEL_14;
  }

  sub_2407EEB40(*(a1 + 56) + 32 * v14, v34);
  sub_240812CC8(v33);
  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_12;
  }

  v16 = v32;
  v35 = v31;
  v31 = 0x6469736461;
  v32 = 0xE500000000000000;
  sub_2408D50D0();
  if (!*(a1 + 16) || (v17 = sub_2408CCDE4(v33), (v18 & 1) == 0))
  {

    sub_240812CC8(v33);
LABEL_19:

    sub_2408D4930();
    v25 = sub_2408D4B10();
    v28 = sub_2408D4F30();
    if (!os_log_type_enabled(v25, v28))
    {
      v8 = v11;
      goto LABEL_16;
    }

    v27 = swift_slowAlloc();
    *v27 = 0;
    _os_log_impl(&dword_2407CF000, v25, v28, "SignOutData received push message with no adsid, failing initialization", v27, 2u);
    v8 = v11;
    goto LABEL_14;
  }

  sub_2407EEB40(*(a1 + 56) + 32 * v17, v34);
  sub_240812CC8(v33);
  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_19;
  }

  v19 = v32;
  v30 = v31;
  v31 = 6580589;
  v32 = 0xE300000000000000;
  sub_2408D50D0();
  if (*(a1 + 16) && (v20 = sub_2408CCDE4(v33), (v21 & 1) != 0))
  {
    sub_2407EEB40(*(a1 + 56) + 32 * v20, v34);
    sub_240812CC8(v33);

    result = swift_dynamicCast();
    if (result)
    {
      v23 = v31;
      v24 = v32;
      *a2 = v35;
      a2[1] = v16;
      a2[2] = v30;
      a2[3] = v19;
      a2[4] = v23;
      a2[5] = v24;
      return result;
    }
  }

  else
  {

    sub_240812CC8(v33);
  }

  sub_2408D4930();
  v25 = sub_2408D4B10();
  v29 = sub_2408D4F30();
  if (os_log_type_enabled(v25, v29))
  {
    v27 = swift_slowAlloc();
    *v27 = 0;
    _os_log_impl(&dword_2407CF000, v25, v29, "SignOutData received push message with no mid, failing initialization", v27, 2u);
LABEL_14:
    MEMORY[0x245CC9F60](v27, -1, -1);
  }

LABEL_16:

  (*(v5 + 8))(v8, v4);
  sub_24087CD68();
  swift_allocError();
  return swift_willThrow();
}

unint64_t sub_24087CD68()
{
  result = qword_27E507858;
  if (!qword_27E507858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E507858);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SignOutPushData.Failure(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for SignOutPushData.Failure(_WORD *result, int a2, int a3)
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

unint64_t sub_24087CEA0()
{
  result = qword_27E507860;
  if (!qword_27E507860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E507860);
  }

  return result;
}

uint64_t sub_24087CEF4(uint64_t a1, int a2)
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

uint64_t sub_24087CF3C(uint64_t result, int a2, int a3)
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

uint64_t sub_24087CF98(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x44496E7874 && a2 == 0xE500000000000000;
  if (v4 || (sub_2408D5240() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4449736461 && a2 == 0xE500000000000000 || (sub_2408D5240() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 6580589 && a2 == 0xE300000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_2408D5240();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_24087D0A8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507868, &qword_2408D8B90);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v19 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24087D2F4();
  sub_2408D5370();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  v25 = 0;
  v9 = sub_2408D51F0();
  v11 = v10;
  v22 = v9;
  v24 = 1;
  v20 = sub_2408D51F0();
  v21 = v12;
  v23 = 2;
  v13 = sub_2408D51F0();
  v14 = v8;
  v16 = v15;
  (*(v6 + 8))(v14, v5);
  result = __swift_destroy_boxed_opaque_existential_0Tm(a1);
  *a2 = v22;
  a2[1] = v11;
  v18 = v21;
  a2[2] = v20;
  a2[3] = v18;
  a2[4] = v13;
  a2[5] = v16;
  return result;
}

unint64_t sub_24087D2F4()
{
  result = qword_27E507870;
  if (!qword_27E507870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E507870);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SignOutPushData.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SignOutPushData.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_24087D49C()
{
  result = qword_27E507880;
  if (!qword_27E507880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E507880);
  }

  return result;
}

unint64_t sub_24087D4F4()
{
  result = qword_27E507888;
  if (!qword_27E507888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E507888);
  }

  return result;
}

unint64_t sub_24087D54C()
{
  result = qword_27E507890;
  if (!qword_27E507890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E507890);
  }

  return result;
}

uint64_t sub_24087D5A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 8) + **(a3 + 8));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_24087D6C8;

  return v9(a1, a2, a3);
}

uint64_t sub_24087D6C8(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_24087D7C4()
{
  v0 = sub_2408D4B20();
  __swift_allocate_value_buffer(v0, qword_27E507898);
  __swift_project_value_buffer(v0, qword_27E507898);
  return sub_2408D4950();
}

uint64_t sub_24087D810(uint64_t a1)
{
  *(v2 + 144) = a1;
  *(v2 + 152) = v1;
  return MEMORY[0x2822009F8](sub_24087D830, 0, 0);
}

uint64_t sub_24087D830()
{
  super_class = v0[9].super_class;
  sub_2408D49B0();
  sub_2408D48E0();
  swift_allocObject();
  v0[10].receiver = sub_2408D48C0();
  sub_2408D48D0();
  v2 = super_class[11];
  __swift_project_boxed_opaque_existential_1(super_class + 7, super_class[10]);
  v3 = sub_2408D4180();
  v4 = (*(v2 + 16))(v3);
  v0[10].super_class = v4;

  if (v4)
  {
    if ([(objc_class *)v4 aa_isRemotelyManaged])
    {
      if (qword_27E506950 != -1)
      {
        swift_once();
      }

      v5 = sub_2408D4B20();
      __swift_project_value_buffer(v5, qword_27E507898);
      v6 = sub_2408D4B10();
      v7 = sub_2408D4F50();
      if (os_log_type_enabled(v6, v7))
      {
        v8 = swift_slowAlloc();
        *v8 = 0;
        _os_log_impl(&dword_2407CF000, v6, v7, "Requesting unenrollment sign out", v8, 2u);
        MEMORY[0x245CC9F60](v8, -1, -1);
      }

      v9 = swift_task_alloc();
      v0[11].receiver = v9;
      *v9 = v0;
      v9[1] = sub_24087DE48;
      receiver = v0[9].receiver;

      return sub_24087F008(receiver);
    }

    else
    {
      if (qword_27E506950 != -1)
      {
        swift_once();
      }

      v17 = sub_2408D4B20();
      v0[12].receiver = __swift_project_value_buffer(v17, qword_27E507898);
      v18 = sub_2408D4B10();
      v19 = sub_2408D4F50();
      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        *v20 = 0;
        _os_log_impl(&dword_2407CF000, v18, v19, "Signing out of all services ...", v20, 2u);
        MEMORY[0x245CC9F60](v20, -1, -1);
      }

      v21 = v0[9].super_class;

      v22 = [objc_allocWithZone(MEMORY[0x277CED1D8]) init];
      v0[12].super_class = v22;
      sub_2407D91C4((super_class + 7), &v0[5].super_class);
      v23 = type metadata accessor for AISSilentSignOutFlowControllerDelegate();
      v24 = objc_allocWithZone(v23);
      sub_2407D91C4(&v0[5].super_class, v24 + OBJC_IVAR____TtC18AppleIDSetupDaemon38AISSilentSignOutFlowControllerDelegate_accountStore);
      v0[8].receiver = v24;
      v0[8].super_class = v23;
      v25 = objc_msgSendSuper2(v0 + 8, sel_init);
      v0[13].receiver = v25;
      __swift_destroy_boxed_opaque_existential_0Tm(&v0[5].super_class);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5078B8, &unk_2408D8D70);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_2408D71B0;
      v27 = *MEMORY[0x277CED1A0];
      *(inited + 32) = *MEMORY[0x277CED1A0];
      *(inited + 64) = swift_getObjectType();
      *(inited + 40) = v25;
      v28 = v27;
      v29 = v25;
      sub_2407F6370(inited);
      swift_setDeallocating();
      sub_2407D9440(inited + 32, &qword_27E506F20, &qword_2408D72C0);
      type metadata accessor for AIDAServiceType(0);
      sub_24088048C();
      v30 = sub_2408D4C90();

      [(objc_class *)v22 setSignOutContexts:v30];

      v31 = v21[5];
      v32 = v21[6];
      __swift_project_boxed_opaque_existential_1(v21 + 2, v31);
      v34 = (*(v32 + 8) + **(v32 + 8));
      v33 = swift_task_alloc();
      v0[13].super_class = v33;
      *v33 = v0;
      *(v33 + 1) = sub_24087DFF4;

      return v34(v22, v31, v32);
    }
  }

  else
  {
    if (qword_27E506950 != -1)
    {
      swift_once();
    }

    v12 = sub_2408D4B20();
    __swift_project_value_buffer(v12, qword_27E507898);
    v13 = sub_2408D4B10();
    v14 = sub_2408D4F30();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_2407CF000, v13, v14, "No Apple Account to remove, bailing ...", v15, 2u);
      MEMORY[0x245CC9F60](v15, -1, -1);
    }

    v16 = v0->super_class;

    return v16(0);
  }
}

uint64_t sub_24087DE48(char a1)
{
  v4 = *v2;
  *(*v2 + 184) = v1;

  if (v1)
  {
    v5 = sub_24087EB18;
  }

  else
  {
    *(v4 + 272) = a1 & 1;
    v5 = sub_24087DF74;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_24087DF74(uint64_t a1)
{
  v2 = *(v1 + 272);
  v3 = *(v1 + 168);
  sub_2408D48B0();

  v4 = *(v1 + 8);

  return v4(v2);
}

uint64_t sub_24087DFF4(char a1)
{
  v3 = *v2;
  *(v3 + 273) = a1;
  *(v3 + 224) = v1;

  if (v1)
  {
    v4 = sub_24087EB84;
  }

  else
  {
    v4 = sub_24087E10C;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_24087E10C(uint64_t a1)
{
  v67 = v1;
  v2 = sub_2408D4B10();
  v3 = sub_2408D4F20();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v1 + 273);
    v5 = swift_slowAlloc();
    *v5 = 67109120;
    *(v5 + 4) = v4;
    _os_log_impl(&dword_2407CF000, v2, v3, "Signed out of all services with success: %{BOOL}d", v5, 8u);
    MEMORY[0x245CC9F60](v5, -1, -1);
  }

  v6 = *(v1 + 224);
  v7 = *(v1 + 152);

  v8 = v7[10];
  v9 = v7[11];
  __swift_project_boxed_opaque_existential_1(v7 + 7, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507750, &unk_2408D8D80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_2408D71B0;
  *(v10 + 32) = sub_2408D4D30();
  *(v10 + 40) = v11;
  v12 = (*(v9 + 24))(v10, v8, v9);
  if (v6)
  {
    v14 = *(v1 + 200);
    v13 = *(v1 + 208);
    v15 = *(v1 + 168);

    v16 = *(v1 + 8);
    v17 = 0;
LABEL_5:

    return v16(v17);
  }

  v19 = v12;

  v66[0] = MEMORY[0x277D84F90];
  if (v19 >> 62)
  {
    goto LABEL_36;
  }

  v20 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v20)
  {
LABEL_10:
    v21 = 0;
    v63 = v19 & 0xFFFFFFFFFFFFFF8;
    v64 = v19 & 0xC000000000000001;
    v22 = &_swift_FORCE_LOAD___swiftAVFoundation___AppleIDSetupDaemon;
    while (1)
    {
      if (v64)
      {
        v23 = MEMORY[0x245CC9570](v21, v19);
        v24 = v21 + 1;
        if (__OFADD__(v21, 1))
        {
LABEL_33:
          __break(1u);
LABEL_34:
          v38 = v66[0];
          goto LABEL_38;
        }
      }

      else
      {
        if (v21 >= *(v63 + 16))
        {
          __break(1u);
LABEL_36:
          v20 = sub_2408D51A0();
          if (!v20)
          {
            break;
          }

          goto LABEL_10;
        }

        v23 = *(v19 + 8 * v21 + 32);
        v24 = v21 + 1;
        if (__OFADD__(v21, 1))
        {
          goto LABEL_33;
        }
      }

      v65 = v23;
      v25 = [v23 v22[120]];
      if (v25)
      {
        v26 = v25;
        v27 = sub_2408D4D30();
        v29 = v28;
      }

      else
      {
        v27 = 0;
        v29 = 0;
      }

      v30 = [*(v1 + 168) v22[120]];
      if (v30)
      {
        v31 = v19;
        v32 = v20;
        v33 = v30;
        v34 = sub_2408D4D30();
        v36 = v35;

        v20 = v32;
        v19 = v31;
        if (v29)
        {
          if (!v36)
          {
            goto LABEL_30;
          }

          if (v27 == v34 && v29 == v36)
          {
          }

          else
          {
            v37 = sub_2408D5240();

            if ((v37 & 1) == 0)
            {

              goto LABEL_13;
            }
          }
        }

        else if (v36)
        {
LABEL_30:

          goto LABEL_13;
        }
      }

      else if (v29)
      {
        goto LABEL_30;
      }

      sub_2408D5150();
      sub_2408D5170();
      sub_2408D5180();
      sub_2408D5160();
LABEL_13:
      ++v21;
      v22 = &_swift_FORCE_LOAD___swiftAVFoundation___AppleIDSetupDaemon;
      if (v24 == v20)
      {
        goto LABEL_34;
      }
    }
  }

  v38 = MEMORY[0x277D84F90];
LABEL_38:
  *(v1 + 232) = v38;

  v39 = sub_2408D4B10();
  v40 = sub_2408D4F20();

  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v66[0] = v42;
    *v41 = 136315138;
    v43 = sub_24081399C();
    v44 = MEMORY[0x245CC9220](v38, v43);
    v46 = sub_2408CC504(v44, v45, v66);

    *(v41 + 4) = v46;
    _os_log_impl(&dword_2407CF000, v39, v40, "Matching Store Accounts = %s", v41, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v42);
    MEMORY[0x245CC9F60](v42, -1, -1);
    MEMORY[0x245CC9F60](v41, -1, -1);
  }

  if ((v38 & 0x8000000000000000) == 0 && (v38 & 0x4000000000000000) == 0)
  {
    result = *(v38 + 16);
    *(v1 + 240) = result;
    if (result)
    {
      goto LABEL_43;
    }

LABEL_53:
    v60 = *(v1 + 208);

    v61 = *(v1 + 273);
    v62 = *(v1 + 168);
    sub_2408D48B0();

    v16 = *(v1 + 8);
    v17 = v61;
    goto LABEL_5;
  }

  result = sub_2408D51A0();
  *(v1 + 240) = result;
  if (!result)
  {
    goto LABEL_53;
  }

LABEL_43:
  if (result < 1)
  {
    __break(1u);
  }

  else
  {
    *(v1 + 248) = 0;
    v47 = *(v1 + 232);
    if ((v47 & 0xC000000000000001) != 0)
    {
      v48 = MEMORY[0x245CC9570](0);
    }

    else
    {
      v48 = *(v47 + 32);
    }

    *(v1 + 256) = v48;
    v49 = v48;
    v50 = sub_2408D4B10();
    v51 = sub_2408D4F20();

    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      v66[0] = v53;
      *v52 = 136315138;
      v54 = [v49 debugDescription];
      v55 = sub_2408D4D30();
      v57 = v56;

      v58 = sub_2408CC504(v55, v57, v66);

      *(v52 + 4) = v58;
      _os_log_impl(&dword_2407CF000, v50, v51, "Removing %s", v52, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v53);
      MEMORY[0x245CC9F60](v53, -1, -1);
      MEMORY[0x245CC9F60](v52, -1, -1);
    }

    v59 = swift_task_alloc();
    *(v1 + 264) = v59;
    *v59 = v1;
    v59[1] = sub_24087E7AC;

    return sub_24087F7FC(v49);
  }

  return result;
}

uint64_t sub_24087E7AC()
{

  return MEMORY[0x2822009F8](sub_24087E8A8, 0, 0);
}

uint64_t sub_24087E8A8()
{
  v23 = v0;
  v1 = *(v0 + 248);
  v2 = *(v0 + 240);

  if (v1 + 1 == v2)
  {
    v3 = *(v0 + 208);

    v4 = *(v0 + 273);
    v5 = *(v0 + 168);
    sub_2408D48B0();

    v6 = *(v0 + 8);

    return v6(v4);
  }

  else
  {
    v8 = *(v0 + 248) + 1;
    *(v0 + 248) = v8;
    v9 = *(v0 + 232);
    if ((v9 & 0xC000000000000001) != 0)
    {
      v10 = MEMORY[0x245CC9570]();
    }

    else
    {
      v10 = *(v9 + 8 * v8 + 32);
    }

    *(v0 + 256) = v10;
    v11 = v10;
    v12 = sub_2408D4B10();
    v13 = sub_2408D4F20();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v22 = v15;
      *v14 = 136315138;
      v16 = [v11 debugDescription];
      v17 = sub_2408D4D30();
      v19 = v18;

      v20 = sub_2408CC504(v17, v19, &v22);

      *(v14 + 4) = v20;
      _os_log_impl(&dword_2407CF000, v12, v13, "Removing %s", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v15);
      MEMORY[0x245CC9F60](v15, -1, -1);
      MEMORY[0x245CC9F60](v14, -1, -1);
    }

    v21 = swift_task_alloc();
    *(v0 + 264) = v21;
    *v21 = v0;
    v21[1] = sub_24087E7AC;

    return sub_24087F7FC(v11);
  }
}

uint64_t sub_24087EB18()
{
  v1 = *(v0 + 168);

  v2 = *(v0 + 8);

  return v2(0);
}

uint64_t sub_24087EB84()
{
  v1 = v0[25];
  v2 = v0[26];
  v3 = v0[21];

  v4 = v0[1];

  return v4(0);
}

uint64_t sub_24087ED90(void *a1, void *aBlock, uint64_t a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v5 = a1;

  v6 = swift_task_alloc();
  v3[5] = v6;
  *v6 = v3;
  v6[1] = sub_24087EE54;

  return sub_24087D810(v5);
}

uint64_t sub_24087EE54(char a1)
{
  v3 = v1;
  v6 = *v2;
  v5 = *v2;
  v7 = *(*v2 + 16);
  v8 = *v2;

  v9 = *(v5 + 32);
  if (v3)
  {
    v10 = sub_2408D33E0();

    (*(v9 + 16))(v9, 0, v10);
  }

  else
  {
    (*(v9 + 16))(*(v5 + 32), a1 & 1, 0);
  }

  _Block_release(*(v6 + 32));
  v11 = *(v8 + 8);

  return v11();
}

uint64_t sub_24087F008(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_24087F028, 0, 0);
}

uint64_t sub_24087F028()
{
  v1 = swift_task_alloc();
  v0[2].i64[0] = v1;
  v1[1] = vextq_s8(v0[1], v0[1], 8uLL);
  v2 = swift_task_alloc();
  v0[2].i64[1] = v2;
  *v2 = v0;
  v2[1] = sub_24087F11C;
  v3 = MEMORY[0x277D839B0];

  return MEMORY[0x2822008A0](&v0[3].u64[1], 0, 0, 0xD000000000000026, 0x80000002408DB1B0, sub_2408803D8, v1, v3);
}

uint64_t sub_24087F11C()
{
  *(*v1 + 48) = v0;

  if (v0)
  {
    v2 = sub_24087F364;
  }

  else
  {

    v2 = sub_24087F238;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24087F238()
{
  v1 = *(v0 + 56);
  if (qword_27E506950 != -1)
  {
    swift_once();
  }

  v2 = sub_2408D4B20();
  __swift_project_value_buffer(v2, qword_27E507898);
  v3 = sub_2408D4B10();
  v4 = sub_2408D4F10();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 67109120;
    *(v5 + 4) = v1;
    _os_log_impl(&dword_2407CF000, v3, v4, "Finished unenrollment with success: %{BOOL}d", v5, 8u);
    MEMORY[0x245CC9F60](v5, -1, -1);
  }

  v6 = *(v0 + 8);

  return v6(v1);
}

uint64_t sub_24087F364()
{

  v1 = *(v0 + 8);

  return v1(0);
}

void sub_24087F3CC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5078B0, &qword_2408D8D68);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = aBlock - v6;
  (*(v5 + 16))(aBlock - v6, a1, v4);
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = swift_allocObject();
  (*(v5 + 32))(v9 + v8, v7, v4);
  v10 = objc_allocWithZone(MEMORY[0x277D03248]);
  aBlock[4] = sub_2408803E0;
  aBlock[5] = v9;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24087FDA0;
  aBlock[3] = &block_descriptor_5;
  v11 = _Block_copy(aBlock);
  v12 = [v10 initFromViewController:0 enrollmentResultBlock:v11];
  _Block_release(v11);

  v13 = *(a2 + 96);
  *(a2 + 96) = v12;

  if (*(sub_2408D4170() + 16) && (sub_2408CCC7C(*MEMORY[0x277CED1A0]), (v14 & 1) != 0) && (, , (v15 = *(a2 + 96)) != 0))
  {
    v16 = v15;
    v17 = sub_2408D4D00();

    [v16 startUnenrollmentWithAltDSID:v17 silent:1];
  }

  else
  {
  }
}

uint64_t sub_24087F640(char a1, int a2, id a3)
{
  if (a3)
  {
    v4 = a3;
    if (qword_27E506950 != -1)
    {
      swift_once();
    }

    v5 = sub_2408D4B20();
    __swift_project_value_buffer(v5, qword_27E507898);
    v6 = a3;
    v7 = sub_2408D4B10();
    v8 = sub_2408D4F30();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      *v9 = 138412290;
      v11 = a3;
      v12 = _swift_stdlib_bridgeErrorToNSError();
      *(v9 + 4) = v12;
      *v10 = v12;
      _os_log_impl(&dword_2407CF000, v7, v8, "Unenrollment failure with error:%@", v9, 0xCu);
      sub_2407D9440(v10, &qword_27E506AB0, &unk_2408D6830);
      MEMORY[0x245CC9F60](v10, -1, -1);
      MEMORY[0x245CC9F60](v9, -1, -1);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5078B0, &qword_2408D8D68);
    return sub_2408D4E10();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5078B0, &qword_2408D8D68);
    return sub_2408D4E20();
  }
}

uint64_t sub_24087F7FC(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_24087F81C, 0, 0);
}

uint64_t sub_24087F81C()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = v1[10];
  v4 = v1[11];
  __swift_project_boxed_opaque_existential_1(v1 + 7, v3);
  v7 = (*(v4 + 8) + **(v4 + 8));
  v5 = swift_task_alloc();
  v0[4] = v5;
  *v5 = v0;
  v5[1] = sub_24087F954;

  return v7(v2, v3, v4);
}

uint64_t sub_24087F954(char a1)
{
  v3 = *v2;
  *(v3 + 48) = a1;
  *(v3 + 40) = v1;

  if (v1)
  {
    v4 = sub_24087FB90;
  }

  else
  {
    v4 = sub_24087FA6C;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_24087FA6C()
{
  if (qword_27E506950 != -1)
  {
    swift_once();
  }

  v1 = sub_2408D4B20();
  __swift_project_value_buffer(v1, qword_27E507898);
  v2 = sub_2408D4B10();
  v3 = sub_2408D4F50();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 48);
    v5 = swift_slowAlloc();
    *v5 = 67109120;
    *(v5 + 4) = v4;
    _os_log_impl(&dword_2407CF000, v2, v3, "Account removed with success: %{BOOL}d", v5, 8u);
    MEMORY[0x245CC9F60](v5, -1, -1);
  }

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_24087FB90()
{
  if (qword_27E506950 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 40);
  v2 = sub_2408D4B20();
  __swift_project_value_buffer(v2, qword_27E507898);
  v3 = v1;
  v4 = sub_2408D4B10();
  v5 = sub_2408D4F30();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 40);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_2407CF000, v4, v5, "Failed to remove account from store :%@", v8, 0xCu);
    sub_2407D9440(v9, &qword_27E506AB0, &unk_2408D6830);
    MEMORY[0x245CC9F60](v9, -1, -1);
    MEMORY[0x245CC9F60](v8, -1, -1);
  }

  else
  {
  }

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_24087FD34()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 56));

  return swift_deallocClassInstance();
}

void sub_24087FDA0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = *(a1 + 32);

  v8 = a4;
  v7(a2, a3, a4);
}

uint64_t sub_24087FE28(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_2407DB6F0;

  return v6();
}

uint64_t sub_24087FF10(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_2407D379C;

  return v7();
}

uint64_t sub_24087FFF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E506BD0, &qword_2408D7AB0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v23 - v10;
  sub_240880598(a3, v23 - v10);
  v12 = sub_2408D4E60();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_2407D9440(v11, &unk_27E506BD0, &qword_2408D7AB0);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v14 = 0;
    v16 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_2408D4E50();
  (*(v13 + 8))(v11, v12);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  swift_getObjectType();
  swift_unknownObjectRetain();
  v14 = sub_2408D4E00();
  v16 = v15;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v17 = sub_2408D4D50() + 32;
    v18 = swift_allocObject();
    *(v18 + 16) = a4;
    *(v18 + 24) = a5;

    if (v16 | v14)
    {
      v24[0] = 0;
      v24[1] = 0;
      v19 = v24;
      v24[2] = v14;
      v24[3] = v16;
    }

    else
    {
      v19 = 0;
    }

    v23[1] = 7;
    v23[2] = v19;
    v23[3] = v17;
    v21 = swift_task_create();

    sub_2407D9440(a3, &unk_27E506BD0, &qword_2408D7AB0);

    return v21;
  }

LABEL_8:
  sub_2407D9440(a3, &unk_27E506BD0, &qword_2408D7AB0);
  v20 = swift_allocObject();
  *(v20 + 16) = a4;
  *(v20 + 24) = a5;
  if (v16 | v14)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v14;
    v24[7] = v16;
  }

  return swift_task_create();
}

uint64_t sub_2408802E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v20 = a4;
  v21 = a6;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v19);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_1, a1, a4);
  v17 = a5;
  v18 = a7;
  v13 = __swift_allocate_boxed_opaque_existential_1(&v16);
  (*(*(a5 - 8) + 32))(v13, a2, a5);
  type metadata accessor for AISSignOutService();
  v14 = swift_allocObject();
  *(v14 + 96) = 0;
  sub_2407D2554(&v19, v14 + 16);
  sub_2407D2554(&v16, v14 + 56);
  return v14;
}

uint64_t sub_2408803E0(char a1, int a2, void *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E5078B0, &qword_2408D8D68);

  return sub_24087F640(a1, a2, a3);
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_24088048C()
{
  result = qword_28130EF80;
  if (!qword_28130EF80)
  {
    type metadata accessor for AIDAServiceType(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28130EF80);
  }

  return result;
}

uint64_t sub_2408804E4()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_2407D379C;

  return sub_24087ED90(v2, v3, v4);
}

uint64_t sub_240880598(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E506BD0, &qword_2408D7AB0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_240880608(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2407DB6F0;

  return sub_2408698F0(a1, v4);
}

uint64_t sub_2408806C0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2407D379C;

  return sub_2408698F0(a1, v4);
}

uint64_t sub_240880778(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 32) + **(a3 + 32));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2407D379C;

  return v9(a1, a2, a3);
}

uint64_t sub_2408808A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 40) + **(a3 + 40));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_24087D6C8;

  return v9(a1, a2, a3);
}

uint64_t sub_2408809CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 48) + **(a4 + 48));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_2407DB6F0;

  return v11(a1, a2, a3, a4);
}

uint64_t sub_240880B00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v15 = (*(a6 + 56) + **(a6 + 56));
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_2407D379C;

  return v15(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_240880C4C()
{
  v1 = sub_2408D3500();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v26 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v25 - v6;
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v25 - v9;
  MEMORY[0x28223BE20](v8);
  v12 = &v25 - v11;
  v13 = v2[2];
  v13(&v25 - v11, v0, v1);
  v13(v10, v12, v1);
  v14 = v2[11];
  v15 = v14(v10, v1);
  v16 = *MEMORY[0x277CED2B0];
  v25 = v2;
  v17 = v2[1];
  if (v15 == v16)
  {
    v18 = 0;
    v19 = v12;
  }

  else
  {
    v17(v10, v1);
    v13(v7, v12, v1);
    if (v14(v7, v1) == *MEMORY[0x277CED278])
    {
      v18 = 0;
      v19 = v12;
      v10 = v7;
    }

    else
    {
      v17(v7, v1);
      v21 = *MEMORY[0x277CED270];
      v19 = v26;
      v22 = v25[13];
      v22(v26, v21, v1);
      v23 = sub_2408D34F0();
      v17(v19, v1);
      if (v23 & 1) != 0 || (v22(v19, v21, v1), v24 = sub_2408D34F0(), v17(v19, v1), (v24))
      {
        v18 = 1;
        goto LABEL_6;
      }

      v22(v19, *MEMORY[0x277CED2D8], v1);
      v18 = sub_2408D34F0();
      v10 = v12;
    }
  }

  v17(v19, v1);
  v12 = v10;
LABEL_6:
  v17(v12, v1);
  return v18 & 1;
}

uint64_t sub_240880F60()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507268, &qword_2408D8240);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v36[-v3 - 8];
  v5 = sub_2408D3500();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v36[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v36[-v11 - 8];
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v36[-v14 - 8];
  MEMORY[0x28223BE20](v13);
  v17 = &v36[-v16 - 8];
  v18 = *(v1 + 16);
  v37 = *v1;
  v38 = v18;
  v39 = *(v1 + 32);
  sub_2408B2E8C(v1, v36);
  v19 = swift_dynamicCast();
  v20 = *(v6 + 56);
  if (!v19)
  {
    v20(v4, 1, 1, v5);
    sub_2407D9440(v4, &qword_27E507268, &qword_2408D8240);
    goto LABEL_5;
  }

  v35 = v9;
  v20(v4, 0, 1, v5);
  (*(v6 + 32))(v17, v4, v5);
  v21 = *(v6 + 16);
  v21(v15, v17, v5);
  v22 = *(v6 + 88);
  v23 = v22(v15, v5);
  v24 = *(v6 + 8);
  if (v23 == *MEMORY[0x277CED2B0])
  {
    v25 = *(v6 + 8);
    v24(v17, v5);
    v25(v15, v5);
LABEL_5:
    v26 = 0;
    return v26 & 1;
  }

  v28 = v15;
  v29 = *(v6 + 8);
  v24(v28, v5);
  v21(v12, v17, v5);
  if (v22(v12, v5) == *MEMORY[0x277CED278])
  {
    v29(v17, v5);
    v29(v12, v5);
    goto LABEL_5;
  }

  v29(v12, v5);
  v30 = *MEMORY[0x277CED270];
  v31 = *(v6 + 104);
  v32 = v35;
  v31(v35, v30, v5);
  v33 = sub_2408D34F0();
  v29(v32, v5);
  if (v33 & 1) != 0 || (v31(v32, v30, v5), v34 = sub_2408D34F0(), v29(v32, v5), (v34))
  {
    v29(v17, v5);
    v26 = 1;
  }

  else
  {
    v31(v32, *MEMORY[0x277CED2D8], v5);
    v26 = sub_2408D34F0();
    v29(v32, v5);
    v29(v17, v5);
  }

  return v26 & 1;
}

uint64_t sub_2408813B8(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  v3[6] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507960, &qword_2408D9108);
  v3[7] = swift_task_alloc();
  v3[8] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507968, &qword_2408D9110);
  v3[9] = v4;
  v3[10] = *(v4 - 8);
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507970, &qword_2408D9118);
  v3[13] = v5;
  v3[14] = *(v5 - 8);
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();
  v6 = sub_2408D49A0();
  v3[17] = v6;
  v3[18] = *(v6 - 8);
  v3[19] = swift_task_alloc();
  v3[20] = swift_task_alloc();
  v3[21] = swift_task_alloc();
  v3[22] = swift_task_alloc();
  v3[23] = swift_task_alloc();
  v3[24] = swift_task_alloc();
  v7 = sub_2408D34E0();
  v3[25] = v7;
  v3[26] = *(v7 - 8);
  v3[27] = swift_task_alloc();
  v8 = sub_2408D3630();
  v3[28] = v8;
  v3[29] = *(v8 - 8);
  v3[30] = swift_task_alloc();
  v9 = sub_2408D4B20();
  v3[31] = v9;
  v3[32] = *(v9 - 8);
  v3[33] = swift_task_alloc();
  v3[34] = swift_task_alloc();
  v3[35] = swift_task_alloc();
  v3[36] = swift_task_alloc();
  v3[37] = swift_task_alloc();
  v3[38] = swift_task_alloc();
  v3[39] = swift_task_alloc();
  v3[40] = swift_task_alloc();
  v3[41] = swift_task_alloc();
  v3[42] = swift_task_alloc();
  v3[43] = swift_task_alloc();
  v3[44] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_240881780, v2, 0);
}

uint64_t sub_240881780(uint64_t a1)
{
  v22 = v1;
  sub_2408D4910();

  v2 = sub_2408D4B10();
  v3 = sub_2408D4F10();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = v1[44];
    v5 = v1[31];
    v6 = v1[32];
    v7 = v1[4];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v21 = v9;
    *v8 = 136315138;
    v1[2] = v7;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506A70, qword_2408D75E0);
    v10 = sub_2408D4D40();
    v12 = sub_2408CC504(v10, v11, &v21);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_2407CF000, v2, v3, "[PTC] Connecting with model: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v9);
    MEMORY[0x245CC9F60](v9, -1, -1);
    MEMORY[0x245CC9F60](v8, -1, -1);

    v13 = *(v6 + 8);
    v13(v4, v5);
  }

  else
  {
    v14 = v1[44];
    v15 = v1[31];
    v16 = v1[32];

    v13 = *(v16 + 8);
    v13(v14, v15);
  }

  v1[45] = v13;
  v20 = (*MEMORY[0x277CED858] + MEMORY[0x277CED858]);
  v17 = swift_task_alloc();
  v1[46] = v17;
  *v17 = v1;
  v17[1] = sub_2408819A8;
  v18 = v1[30];

  return v20(v18);
}

uint64_t sub_2408819A8()
{
  v1 = *(*v0 + 40);

  return MEMORY[0x2822009F8](sub_240881AB8, v1, 0);
}

uint64_t sub_240881AB8(uint64_t a1)
{
  v113 = v1;
  v3 = v1[29];
  v2 = v1[30];
  v5 = v1[27];
  v4 = v1[28];
  v6 = v1[25];
  v7 = v1[26];
  sub_2408D3580();
  (*(v3 + 8))(v2, v4);
  v8 = (*(v7 + 88))(v5, v6);
  if (v8 == *MEMORY[0x277CED250])
  {
    v9 = v1[27];
    v10 = v1[24];
    v11 = v1[23];
    v12 = v1[17];
    v13 = v1[18];
    (*(v1[26] + 96))(v9, v1[25]);
    (*(v13 + 32))(v10, v9, v12);
    sub_2408D4910();
    v14 = *(v13 + 16);
    v1[47] = v14;
    v1[48] = (v13 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v14(v11, v10, v12);
    v15 = sub_2408D4B10();
    v16 = sub_2408D4F20();
    v17 = os_log_type_enabled(v15, v16);
    v18 = v1[45];
    v19 = v1[43];
    v110 = v1[31];
    v20 = v1[23];
    if (v17)
    {
      v108 = v1[43];
      v109 = v14;
      v21 = v1[22];
      v23 = v1[17];
      v22 = v1[18];
      v107 = v1[45];
      v24 = swift_slowAlloc();
      v106 = swift_slowAlloc();
      v112 = v106;
      *v24 = 136315138;
      v109(v21, v20, v23);
      v25 = sub_2408D4D40();
      v105 = v16;
      v27 = v26;
      v28 = *(v22 + 8);
      v28(v20, v23);
      v29 = v25;
      v14 = v109;
      v30 = sub_2408CC504(v29, v27, &v112);

      *(v24 + 4) = v30;
      _os_log_impl(&dword_2407CF000, v15, v105, "Offering BLE client to intercept if applicable: %s", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v106);
      MEMORY[0x245CC9F60](v106, -1, -1);
      MEMORY[0x245CC9F60](v24, -1, -1);

      v107(v108, v110);
    }

    else
    {
      v49 = v1[17];
      v48 = v1[18];

      v28 = *(v48 + 8);
      v28(v20, v49);
      v18(v19, v110);
    }

    v1[49] = v28;
    v50 = v1[24];
    v51 = v1[22];
    v52 = v1[17];
    v1[50] = *(v1[5] + 112);
    v14(v51, v50, v52);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506E58, &unk_2408D81B0);
    sub_2407D917C(&qword_27E507598, &qword_27E506E58, &unk_2408D81B0, MEMORY[0x277CED818]);
    v54 = sub_2408D4E00();

    return MEMORY[0x2822009F8](sub_24088288C, v54, v53);
  }

  if (v8 == *MEMORY[0x277CED240])
  {
    v32 = v1 + 16;
    v31 = v1[16];
    v33 = v1[27];
    v34 = v1[13];
    v35 = v1[14];
    (*(v1[26] + 96))(v33, v1[25]);
    (*(v35 + 32))(v31, v33, v34);
    v36 = sub_2408D3CD0();
    if (v36)
    {
      v37 = v36;
      sub_2408D4910();
      v38 = v37;
      v39 = sub_2408D4B10();
      v40 = sub_2408D4F10();

      if (os_log_type_enabled(v39, v40))
      {
        v41 = swift_slowAlloc();
        v42 = swift_slowAlloc();
        *v41 = 138412290;
        *(v41 + 4) = v38;
        *v42 = v37;
        v43 = v38;
        _os_log_impl(&dword_2407CF000, v39, v40, "Setting up as client with provided pre-established template: %@", v41, 0xCu);
        sub_2407D9440(v42, &qword_27E506AB0, &unk_2408D6830);
        MEMORY[0x245CC9F60](v42, -1, -1);
        MEMORY[0x245CC9F60](v41, -1, -1);
      }

      v44 = v1[45];
      v45 = v1[37];
      v46 = v1[31];
      v47 = v1[3];

      v44(v45, v46);
      sub_2407EFC24(v38, v47);
LABEL_27:
      (*(v1[14] + 8))(*v32, v1[13]);

      v85 = v1[1];
LABEL_39:

      return v85();
    }

    sub_2408D4910();
    v78 = sub_2408D4B10();
    v79 = sub_2408D4F30();
    if (os_log_type_enabled(v78, v79))
    {
      v80 = swift_slowAlloc();
      *v80 = 0;
      _os_log_impl(&dword_2407CF000, v78, v79, "Failed to perform remote setup as client with nil message session", v80, 2u);
      MEMORY[0x245CC9F60](v80, -1, -1);
    }

    v81 = v1[45];
    v82 = v1[36];
    v83 = v1[31];
    v84 = v1[16];
LABEL_37:
    v96 = v1[13];
    v97 = v1[14];

    v81(v82, v83);
    sub_2407F11F8();
LABEL_38:
    swift_allocError();
    swift_willThrow();
    (*(v97 + 8))(v84, v96);

    v85 = v1[1];
    goto LABEL_39;
  }

  if (v8 == *MEMORY[0x277CED248])
  {
    v32 = v1 + 15;
    v55 = v1[15];
    v56 = v1[27];
    v57 = v1[13];
    v58 = v1[14];
    (*(v1[26] + 96))(v56, v1[25]);
    (*(v58 + 32))(v55, v56, v57);
    v59 = sub_2408D3CD0();
    if (v59)
    {
      v60 = v59;
      sub_2408D4910();
      v38 = v60;
      v61 = sub_2408D4B10();
      v62 = sub_2408D4F10();

      if (os_log_type_enabled(v61, v62))
      {
        v63 = swift_slowAlloc();
        v64 = swift_slowAlloc();
        *v63 = 138412290;
        *(v63 + 4) = v38;
        *v64 = v60;
        v65 = v38;
        _os_log_impl(&dword_2407CF000, v61, v62, "Setting up as server with provided pre-established template: %@", v63, 0xCu);
        sub_2407D9440(v64, &qword_27E506AB0, &unk_2408D6830);
        MEMORY[0x245CC9F60](v64, -1, -1);
        MEMORY[0x245CC9F60](v63, -1, -1);
      }

      v66 = v1[45];
      v67 = v1[35];
      v68 = v1[31];
      v69 = v1[3];

      v66(v67, v68);
      sub_2407EFC24(v38, v69);
      goto LABEL_27;
    }

    sub_2408D4910();
    v78 = sub_2408D4B10();
    v94 = sub_2408D4F30();
    if (os_log_type_enabled(v78, v94))
    {
      v95 = swift_slowAlloc();
      *v95 = 0;
      _os_log_impl(&dword_2407CF000, v78, v94, "Failed to perform remote setup as client with nil message session", v95, 2u);
      MEMORY[0x245CC9F60](v95, -1, -1);
    }

    v81 = v1[45];
    v82 = v1[34];
    v83 = v1[31];
    v84 = v1[15];
    goto LABEL_37;
  }

  if (v8 == *MEMORY[0x277CED258])
  {
    sub_2408D4910();
    v70 = sub_2408D4B10();
    v71 = sub_2408D4F10();
    if (os_log_type_enabled(v70, v71))
    {
      v72 = swift_slowAlloc();
      *v72 = 0;
      _os_log_impl(&dword_2407CF000, v70, v71, "Setting up, Repairing, or Migrating Age as server with BLE (from scratch)", v72, 2u);
      MEMORY[0x245CC9F60](v72, -1, -1);
    }

    v73 = v1[45];
    v74 = v1[42];
    v75 = v1[31];

    v73(v74, v75);
    v76 = swift_task_alloc();
    v1[54] = v76;
    *v76 = v1;
    v76[1] = sub_240883478;
    v77 = v1[4];

    return sub_24089D828(v77);
  }

  else
  {
    if (v8 != *MEMORY[0x277CED238])
    {
      sub_2408D4910();
      v98 = sub_2408D4B10();
      v99 = sub_2408D4F20();
      if (os_log_type_enabled(v98, v99))
      {
        v100 = swift_slowAlloc();
        *v100 = 0;
        _os_log_impl(&dword_2407CF000, v98, v99, "Not able to handle connecting non-proximity transports", v100, 2u);
        MEMORY[0x245CC9F60](v100, -1, -1);
      }

      v101 = v1[45];
      v102 = v1[40];
      v103 = v1[31];
      v97 = v1[26];
      v84 = v1[27];
      v96 = v1[25];

      v101(v102, v103);
      sub_2408B3108();
      goto LABEL_38;
    }

    sub_2408D4910();
    v86 = sub_2408D4B10();
    v87 = sub_2408D4F20();
    if (os_log_type_enabled(v86, v87))
    {
      v88 = swift_slowAlloc();
      *v88 = 0;
      _os_log_impl(&dword_2407CF000, v86, v87, "Setting up using BLE client intercept", v88, 2u);
      MEMORY[0x245CC9F60](v88, -1, -1);
    }

    v89 = v1[45];
    v90 = v1[41];
    v91 = v1[31];

    v89(v90, v91);
    v111 = (*MEMORY[0x277CED800] + MEMORY[0x277CED800]);
    v92 = swift_task_alloc();
    v1[59] = v92;
    *v92 = v1;
    v92[1] = sub_240883C10;
    v93 = v1[20];

    return v111(v93);
  }
}

uint64_t sub_24088288C()
{
  v1 = *(v0 + 40);
  sub_2408D41E0();

  return MEMORY[0x2822009F8](sub_240882900, v1, 0);
}

uint64_t sub_240882900()
{
  v56 = v0;
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[9];
  v4 = v0[10];
  (*(v4 + 104))(v2, *MEMORY[0x277CED810], v3);
  v5 = sub_2408D4210();
  v6 = *(v4 + 8);
  v6(v2, v3);
  v6(v1, v3);
  if (v5)
  {
    v7 = v0[47];
    v8 = v0[24];
    v9 = v0[21];
    v10 = v0[17];
    sub_2408D4910();
    v7(v9, v8, v10);
    v11 = sub_2408D4B10();
    v12 = sub_2408D4F10();
    v13 = os_log_type_enabled(v11, v12);
    v14 = v0[49];
    if (v13)
    {
      v15 = v0[47];
      v53 = v0[39];
      v54 = v0[45];
      v52 = v0[31];
      v17 = v0[21];
      v16 = v0[22];
      v51 = v0[49];
      v18 = v0[17];
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v55 = v20;
      *v19 = 136315138;
      v15(v16, v17, v18);
      v21 = sub_2408D4D40();
      v23 = v22;
      v51(v17, v18);
      v24 = sub_2408CC504(v21, v23, &v55);

      *(v19 + 4) = v24;
      _os_log_impl(&dword_2407CF000, v11, v12, "Setting up as client with provided BLE peer device: %s", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v20);
      MEMORY[0x245CC9F60](v20, -1, -1);
      MEMORY[0x245CC9F60](v19, -1, -1);

      v54(v53, v52);
    }

    else
    {
      v38 = v0[45];
      v39 = v0[39];
      v40 = v0[31];
      v41 = v0[21];
      v42 = v0[17];

      v14(v41, v42);
      v38(v39, v40);
    }

    v43 = v0[24];
    v45 = v0[4];
    v44 = v0[5];
    v46 = sub_2408B4B40(&qword_27E506E80, 255, type metadata accessor for ProximityTransportConnector, &unk_2408D6FCC);
    v47 = swift_task_alloc();
    v0[51] = v47;
    v47[2] = v43;
    v47[3] = v44;
    v47[4] = v45;
    v48 = swift_task_alloc();
    v0[52] = v48;
    *v48 = v0;
    v48[1] = sub_240882F54;
    v49 = v0[8];
    v50 = v0[6];

    return MEMORY[0x2822008A0](v49, v44, v46, 0xD000000000000024, 0x80000002408DB2E0, sub_2408B3D90, v47, v50);
  }

  else
  {
    sub_2408D4910();
    v25 = sub_2408D4B10();
    v26 = sub_2408D4F30();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_2407CF000, v25, v26, "Cancelling setup due to BLE client interception", v27, 2u);
      MEMORY[0x245CC9F60](v27, -1, -1);
    }

    v28 = v0[49];
    v29 = v0[45];
    v30 = v0[38];
    v31 = v0[31];
    v32 = v0[24];
    v33 = v0[17];

    v29(v30, v31);
    v34 = sub_2408D3500();
    sub_2408B4B40(qword_27E506DC8, 255, MEMORY[0x277CED2E0], MEMORY[0x277CED2F0]);
    swift_allocError();
    (*(*(v34 - 8) + 104))(v35, *MEMORY[0x277CED288], v34);
    swift_willThrow();
    v28(v32, v33);

    v36 = v0[1];

    return v36();
  }
}

uint64_t sub_240882F54()
{
  v2 = *v1;
  *(*v1 + 424) = v0;

  if (v0)
  {
    v3 = *(v2 + 40);
    v4 = sub_2408832A4;
  }

  else
  {
    v5 = *(v2 + 40);

    v4 = sub_24088307C;
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_24088307C()
{
  v1 = v0[49];
  v2 = v0[24];
  v3 = v0[17];
  v4 = v0[8];
  v5 = v0[3];
  v6 = *(v0[6] + 48);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506E90, &unk_2408D7F80);
  (*(*(v7 - 8) + 32))(v5, &v4[v6], v7);
  __swift_destroy_boxed_opaque_existential_0Tm(v4);
  v1(v2, v3);

  v8 = v0[1];

  return v8();
}

uint64_t sub_2408832A4()
{
  v1 = v0[49];
  v2 = v0[24];
  v3 = v0[17];

  v1(v2, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_240883478()
{
  v2 = *v1;

  if (v0)
  {
    *(v2 + 464) = v0;
    v3 = *(v2 + 40);
    v4 = sub_240883A68;
  }

  else
  {
    v3 = *(v2 + 40);
    v4 = sub_24088359C;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_24088359C()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = sub_2408B4B40(&qword_27E506E80, 255, type metadata accessor for ProximityTransportConnector, &unk_2408D6FCC);
  v4 = swift_task_alloc();
  v0[55] = v4;
  *(v4 + 16) = v1;
  *(v4 + 24) = v2;
  v5 = swift_task_alloc();
  v0[56] = v5;
  *v5 = v0;
  v5[1] = sub_2408836D0;
  v7 = v0[6];
  v6 = v0[7];

  return MEMORY[0x2822008A0](v6, v1, v3, 0xD000000000000022, 0x80000002408DB360, sub_2408B3D58, v4, v7);
}

uint64_t sub_2408836D0()
{
  v2 = *v1;
  *(*v1 + 456) = v0;

  if (v0)
  {
    v3 = *(v2 + 40);
    v4 = sub_2408839F8;
  }

  else
  {
    v5 = *(v2 + 40);

    v4 = sub_2408837F8;
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_2408837F8()
{
  v1 = v0[7];
  v2 = v0[3];
  v3 = *(v0[6] + 48);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506E90, &unk_2408D7F80);
  (*(*(v4 - 8) + 32))(v2, &v1[v3], v4);
  __swift_destroy_boxed_opaque_existential_0Tm(v1);

  v5 = v0[1];

  return v5();
}

uint64_t sub_2408839F8()
{

  v0[58] = v0[57];
  v1 = v0[5];

  return MEMORY[0x2822009F8](sub_240883A68, v1, 0);
}

uint64_t sub_240883A68()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_240883C10()
{
  v2 = *v1;
  *(*v1 + 480) = v0;

  v3 = *(v2 + 40);
  if (v0)
  {
    v4 = sub_240883FF4;
  }

  else
  {
    v4 = sub_240883D3C;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_240883D3C(uint64_t a1)
{
  v38 = v1;
  v3 = v1[19];
  v2 = v1[20];
  v4 = v1[17];
  v5 = v1[18];
  sub_2408D4910();
  v6 = *(v5 + 16);
  v6(v3, v2, v4);
  v7 = sub_2408D4B10();
  v8 = sub_2408D4F20();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v1[45];
  v11 = v1[33];
  v35 = v1[31];
  if (v9)
  {
    v33 = v1[33];
    v34 = v1[45];
    v12 = v1[22];
    v14 = v1[18];
    v13 = v1[19];
    v15 = v1[17];
    v16 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v37 = v32;
    *v16 = 136315138;
    log = v7;
    v17 = v13;
    v6(v12, v13, v15);
    v18 = sub_2408D4D40();
    v19 = v8;
    v21 = v20;
    v22 = *(v14 + 8);
    v22(v17, v15);
    v23 = sub_2408CC504(v18, v21, &v37);

    *(v16 + 4) = v23;
    _os_log_impl(&dword_2407CF000, log, v19, "Intercepted BLE client: %s", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v32);
    MEMORY[0x245CC9F60](v32, -1, -1);
    MEMORY[0x245CC9F60](v16, -1, -1);

    v34(v33, v35);
  }

  else
  {
    v24 = v1[18];
    v25 = v1[19];
    v26 = v1[17];

    v22 = *(v24 + 8);
    v22(v25, v26);
    v10(v11, v35);
  }

  v1[61] = v22;
  v27 = v1[20];
  v28 = swift_task_alloc();
  v1[62] = v28;
  *(v28 + 16) = v27;
  v36 = (*MEMORY[0x277CED870] + MEMORY[0x277CED870]);
  v29 = swift_task_alloc();
  v1[63] = v29;
  *v29 = v1;
  v29[1] = sub_24088419C;

  return v36(sub_2408B3D14, v28);
}

uint64_t sub_240883FF4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24088419C()
{
  v2 = *v1;
  v2[64] = v0;

  if (v0)
  {
    v3 = v2[5];

    return MEMORY[0x2822009F8](sub_240884460, v3, 0);
  }

  else
  {

    v4 = swift_task_alloc();
    v2[65] = v4;
    *v4 = v2;
    v4[1] = sub_240884334;
    v5 = v2[4];
    v6 = v2[3];

    return sub_2408813B8(v6, v5);
  }
}

uint64_t sub_240884334()
{
  v2 = *v1;
  *(*v1 + 528) = v0;

  v3 = *(v2 + 40);
  if (v0)
  {
    v4 = sub_2408847F0;
  }

  else
  {
    v4 = sub_240884630;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_240884460()
{
  v1 = v0[61];
  v2 = v0[20];
  v3 = v0[17];

  v1(v2, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_240884630()
{
  (*(v0 + 488))(*(v0 + 160), *(v0 + 136));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2408847F0()
{
  (*(v0 + 488))(*(v0 + 160), *(v0 + 136));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2408849B4(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  v3[6] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507960, &qword_2408D9108);
  v3[7] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507968, &qword_2408D9110);
  v3[8] = v4;
  v3[9] = *(v4 - 8);
  v3[10] = swift_task_alloc();
  v3[11] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507970, &qword_2408D9118);
  v3[12] = v5;
  v3[13] = *(v5 - 8);
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();
  v6 = sub_2408D49A0();
  v3[16] = v6;
  v3[17] = *(v6 - 8);
  v3[18] = swift_task_alloc();
  v3[19] = swift_task_alloc();
  v3[20] = swift_task_alloc();
  v3[21] = swift_task_alloc();
  v3[22] = swift_task_alloc();
  v3[23] = swift_task_alloc();
  v7 = sub_2408D34E0();
  v3[24] = v7;
  v3[25] = *(v7 - 8);
  v3[26] = swift_task_alloc();
  v8 = sub_2408D4350();
  v3[27] = v8;
  v3[28] = *(v8 - 8);
  v3[29] = swift_task_alloc();
  v9 = sub_2408D4B20();
  v3[30] = v9;
  v3[31] = *(v9 - 8);
  v3[32] = swift_task_alloc();
  v3[33] = swift_task_alloc();
  v3[34] = swift_task_alloc();
  v3[35] = swift_task_alloc();
  v3[36] = swift_task_alloc();
  v3[37] = swift_task_alloc();
  v3[38] = swift_task_alloc();
  v3[39] = swift_task_alloc();
  v3[40] = swift_task_alloc();
  v3[41] = swift_task_alloc();
  v3[42] = swift_task_alloc();
  v3[43] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_240884D70, v2, 0);
}

uint64_t sub_240884D70(uint64_t a1)
{
  v22 = v1;
  sub_2408D4910();

  v2 = sub_2408D4B10();
  v3 = sub_2408D4F10();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = v1[43];
    v5 = v1[30];
    v6 = v1[31];
    v7 = v1[4];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v21 = v9;
    *v8 = 136315138;
    v1[2] = v7;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E507918, &qword_2408D9068);
    v10 = sub_2408D4D40();
    v12 = sub_2408CC504(v10, v11, &v21);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_2407CF000, v2, v3, "[PTC] Connecting with model: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v9);
    MEMORY[0x245CC9F60](v9, -1, -1);
    MEMORY[0x245CC9F60](v8, -1, -1);

    v13 = *(v6 + 8);
    v13(v4, v5);
  }

  else
  {
    v14 = v1[43];
    v15 = v1[30];
    v16 = v1[31];

    v13 = *(v16 + 8);
    v13(v14, v15);
  }

  v1[44] = v13;
  v20 = (*MEMORY[0x277CED858] + MEMORY[0x277CED858]);
  v17 = swift_task_alloc();
  v1[45] = v17;
  *v17 = v1;
  v17[1] = sub_240884F98;
  v18 = v1[29];

  return v20(v18);
}

uint64_t sub_240884F98()
{
  v1 = *(*v0 + 40);

  return MEMORY[0x2822009F8](sub_2408850A8, v1, 0);
}

uint64_t sub_2408850A8()
{
  v113 = v0;
  v2 = v0[28];
  v1 = v0[29];
  v4 = v0[26];
  v3 = v0[27];
  v5 = v0[24];
  v6 = v0[25];
  sub_2408D42C0();
  (*(v2 + 8))(v1, v3);
  v7 = (*(v6 + 88))(v4, v5);
  if (v7 == *MEMORY[0x277CED250])
  {
    v8 = v0[26];
    v9 = v0[23];
    v10 = v0[22];
    v11 = v0[16];
    v12 = v0[17];
    (*(v0[25] + 96))(v8, v0[24]);
    (*(v12 + 32))(v9, v8, v11);
    sub_2408D4910();
    v13 = *(v12 + 16);
    v0[46] = v13;
    v0[47] = (v12 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v13(v10, v9, v11);
    v14 = sub_2408D4B10();
    v15 = sub_2408D4F20();
    v16 = os_log_type_enabled(v14, v15);
    v17 = v0[44];
    v18 = v0[42];
    v110 = v0[30];
    v19 = v0[22];
    if (v16)
    {
      v108 = v0[42];
      v109 = v13;
      v20 = v0[21];
      v22 = v0[16];
      v21 = v0[17];
      v107 = v0[44];
      v23 = swift_slowAlloc();
      v106 = swift_slowAlloc();
      v112 = v106;
      *v23 = 136315138;
      v109(v20, v19, v22);
      v24 = sub_2408D4D40();
      v105 = v15;
      v26 = v25;
      v27 = *(v21 + 8);
      v27(v19, v22);
      v28 = v24;
      v13 = v109;
      v29 = sub_2408CC504(v28, v26, &v112);

      *(v23 + 4) = v29;
      _os_log_impl(&dword_2407CF000, v14, v105, "Offering BLE client to intercept if applicable: %s", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v106);
      MEMORY[0x245CC9F60](v106, -1, -1);
      MEMORY[0x245CC9F60](v23, -1, -1);

      v107(v108, v110);
    }

    else
    {
      v48 = v0[16];
      v47 = v0[17];

      v27 = *(v47 + 8);
      v27(v19, v48);
      v17(v18, v110);
    }

    v0[48] = v27;
    v49 = v0[23];
    v50 = v0[21];
    v51 = v0[16];
    v0[49] = *(v0[5] + 112);
    v13(v50, v49, v51);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E506E58, &unk_2408D81B0);
    sub_2407D917C(&qword_27E507598, &qword_27E506E58, &unk_2408D81B0, MEMORY[0x277CED818]);
    v53 = sub_2408D4E00();

    return MEMORY[0x2822009F8](sub_240885E80, v53, v52);
  }

  if (v7 == *MEMORY[0x277CED240])
  {
    v31 = v0 + 15;
    v30 = v0[15];
    v32 = v0[26];
    v33 = v0[12];
    v34 = v0[13];
    (*(v0[25] + 96))(v32, v0[24]);
    (*(v34 + 32))(v30, v32, v33);
    v35 = sub_2408D3CD0();
    if (v35)
    {
      v36 = v35;
      sub_2408D4910();
      v37 = v36;
      v38 = sub_2408D4B10();
      v39 = sub_2408D4F10();

      if (os_log_type_enabled(v38, v39))
      {
        v40 = swift_slowAlloc();
        v41 = swift_slowAlloc();
        *v40 = 138412290;
        *(v40 + 4) = v37;
        *v41 = v36;
        v42 = v37;
        _os_log_impl(&dword_2407CF000, v38, v39, "Setting up as client with provided pre-established template: %@", v40, 0xCu);
        sub_2407D9440(v41, &qword_27E506AB0, &unk_2408D6830);
        MEMORY[0x245CC9F60](v41, -1, -1);
        MEMORY[0x245CC9F60](v40, -1, -1);
      }

      v43 = v0[44];
      v44 = v0[36];
      v45 = v0[30];
      v46 = v0[3];

      v43(v44, v45);
      sub_2407EFC24(v37, v46);
LABEL_27:
      (*(v0[13] + 8))(*v31, v0[12]);

      v85 = v0[1];
LABEL_39:

      return v85();
    }

    sub_2408D4910();
    v78 = sub_2408D4B10();
    v79 = sub_2408D4F30();
    if (os_log_type_enabled(v78, v79))
    {
      v80 = swift_slowAlloc();
      *v80 = 0;
      _os_log_impl(&dword_2407CF000, v78, v79, "Failed to perform remote setup as client with nil message session", v80, 2u);
      MEMORY[0x245CC9F60](v80, -1, -1);
    }

    v81 = v0[44];
    v82 = v0[35];
    v83 = v0[30];
    v84 = v0[15];
LABEL_37:
    v96 = v0[12];
    v97 = v0[13];

    v81(v82, v83);
    sub_2407F11F8();
LABEL_38:
    swift_allocError();
    swift_willThrow();
    (*(v97 + 8))(v84, v96);

    v85 = v0[1];
    goto LABEL_39;
  }

  if (v7 == *MEMORY[0x277CED248])
  {
    v31 = v0 + 14;
    v54 = v0[14];
    v55 = v0[26];
    v56 = v0[12];
    v57 = v0[13];
    (*(v0[25] + 96))(v55, v0[24]);
    (*(v57 + 32))(v54, v55, v56);
    v58 = sub_2408D3CD0();
    if (v58)
    {
      v59 = v58;
      sub_2408D4910();
      v37 = v59;
      v60 = sub_2408D4B10();
      v61 = sub_2408D4F10();

      if (os_log_type_enabled(v60, v61))
      {
        v62 = swift_slowAlloc();
        v63 = swift_slowAlloc();
        *v62 = 138412290;
        *(v62 + 4) = v37;
        *v63 = v59;
        v64 = v37;
        _os_log_impl(&dword_2407CF000, v60, v61, "Setting up as server with provided pre-established template: %@", v62, 0xCu);
        sub_2407D9440(v63, &qword_27E506AB0, &unk_2408D6830);
        MEMORY[0x245CC9F60](v63, -1, -1);
        MEMORY[0x245CC9F60](v62, -1, -1);
      }

      v65 = v0[44];
      v66 = v0[34];
      v67 = v0[30];
      v68 = v0[3];

      v65(v66, v67);
      sub_2407EFC24(v37, v68);
      goto LABEL_27;
    }

    sub_2408D4910();
    v78 = sub_2408D4B10();
    v94 = sub_2408D4F30();
    if (os_log_type_enabled(v78, v94))
    {
      v95 = swift_slowAlloc();
      *v95 = 0;
      _os_log_impl(&dword_2407CF000, v78, v94, "Failed to perform remote setup as client with nil message session", v95, 2u);
      MEMORY[0x245CC9F60](v95, -1, -1);
    }

    v81 = v0[44];
    v82 = v0[33];
    v83 = v0[30];
    v84 = v0[14];
    goto LABEL_37;
  }

  if (v7 == *MEMORY[0x277CED258])
  {
    sub_2408D4910();
    v69 = sub_2408D4B10();
    v70 = sub_2408D4F10();
    if (os_log_type_enabled(v69, v70))
    {
      v71 = swift_slowAlloc();
      *v71 = 0;
      _os_log_impl(&dword_2407CF000, v69, v70, "Setting up, Repairing, or Migrating Age as server with BLE (from scratch)", v71, 2u);
      MEMORY[0x245CC9F60](v71, -1, -1);
    }

    v72 = v0[44];
    v73 = v0[41];
    v74 = v0[30];

    v72(v73, v74);
    v75 = swift_task_alloc();
    v0[53] = v75;
    *v75 = v0;
    v75[1] = sub_240886A44;
    v76 = v0[4];
    v77 = v0[3];

    return sub_240889694(v77, v76);
  }

  else
  {
    if (v7 != *MEMORY[0x277CED238])
    {
      sub_2408D4910();
      v98 = sub_2408D4B10();
      v99 = sub_2408D4F20();
      if (os_log_type_enabled(v98, v99))
      {
        v100 = swift_slowAlloc();
        *v100 = 0;
        _os_log_impl(&dword_2407CF000, v98, v99, "Not able to handle connecting non-proximity transports", v100, 2u);
        MEMORY[0x245CC9F60](v100, -1, -1);
      }

      v101 = v0[44];
      v102 = v0[39];
      v103 = v0[30];
      v97 = v0[25];
      v84 = v0[26];
      v96 = v0[24];

      v101(v102, v103);
      sub_2408B3108();
      goto LABEL_38;
    }

    sub_2408D4910();
    v86 = sub_2408D4B10();
    v87 = sub_2408D4F20();
    if (os_log_type_enabled(v86, v87))
    {
      v88 = swift_slowAlloc();
      *v88 = 0;
      _os_log_impl(&dword_2407CF000, v86, v87, "Setting up using BLE client intercept", v88, 2u);
      MEMORY[0x245CC9F60](v88, -1, -1);
    }

    v89 = v0[44];
    v90 = v0[40];
    v91 = v0[30];

    v89(v90, v91);
    v111 = (*MEMORY[0x277CED800] + MEMORY[0x277CED800]);
    v92 = swift_task_alloc();
    v0[55] = v92;
    *v92 = v0;
    v92[1] = sub_240886EA8;
    v93 = v0[19];

    return v111(v93);
  }
}

uint64_t sub_240885E80()
{
  v1 = *(v0 + 40);
  sub_2408D41E0();

  return MEMORY[0x2822009F8](sub_240885EF4, v1, 0);
}

uint64_t sub_240885EF4()
{
  v56 = v0;
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[8];
  v4 = v0[9];
  (*(v4 + 104))(v2, *MEMORY[0x277CED810], v3);
  v5 = sub_2408D4210();
  v6 = *(v4 + 8);
  v6(v2, v3);
  v6(v1, v3);
  if (v5)
  {
    v7 = v0[46];
    v8 = v0[23];
    v9 = v0[20];
    v10 = v0[16];
    sub_2408D4910();
    v7(v9, v8, v10);
    v11 = sub_2408D4B10();
    v12 = sub_2408D4F10();
    v13 = os_log_type_enabled(v11, v12);
    v14 = v0[48];
    if (v13)
    {
      v15 = v0[46];
      v53 = v0[38];
      v54 = v0[44];
      v52 = v0[30];
      v17 = v0[20];
      v16 = v0[21];
      v51 = v0[48];
      v18 = v0[16];
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v55 = v20;
      *v19 = 136315138;
      v15(v16, v17, v18);
      v21 = sub_2408D4D40();
      v23 = v22;
      v51(v17, v18);
      v24 = sub_2408CC504(v21, v23, &v55);

      *(v19 + 4) = v24;
      _os_log_impl(&dword_2407CF000, v11, v12, "Setting up as client with provided BLE peer device: %s", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v20);
      MEMORY[0x245CC9F60](v20, -1, -1);
      MEMORY[0x245CC9F60](v19, -1, -1);

      v54(v53, v52);
    }

    else
    {
      v38 = v0[44];
      v39 = v0[38];
      v40 = v0[30];
      v41 = v0[20];
      v42 = v0[16];

      v14(v41, v42);
      v38(v39, v40);
    }

    v43 = v0[23];
    v45 = v0[4];
    v44 = v0[5];
    v46 = sub_2408B4B40(&qword_27E506E80, 255, type metadata accessor for ProximityTransportConnector, &unk_2408D6FCC);
    v47 = swift_task_alloc();
    v0[50] = v47;
    v47[2] = v43;
    v47[3] = v44;
    v47[4] = v45;
    v48 = swift_task_alloc();
    v0[51] = v48;
    *v48 = v0;
    v48[1] = sub_240886538;
    v50 = v0[6];
    v49 = v0[7];

    return MEMORY[0x2822008A0](v49, v44, v46, 0xD000000000000024, 0x80000002408DB2E0, sub_2408B31A0, v47, v50);
  }

  else
  {
    sub_2408D4910();
    v25 = sub_2408D4B10();
    v26 = sub_2408D4F30();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_2407CF000, v25, v26, "Cancelling setup due to BLE client interception", v27, 2u);
      MEMORY[0x245CC9F60](v27, -1, -1);
    }

    v28 = v0[48];
    v29 = v0[44];
    v30 = v0[37];
    v31 = v0[30];
    v32 = v0[23];
    v33 = v0[16];

    v29(v30, v31);
    v34 = sub_2408D3500();
    sub_2408B4B40(qword_27E506DC8, 255, MEMORY[0x277CED2E0], MEMORY[0x277CED2F0]);
    swift_allocError();
    (*(*(v34 - 8) + 104))(v35, *MEMORY[0x277CED288], v34);
    swift_willThrow();
    v28(v32, v33);

    v36 = v0[1];

    return v36();
  }
}