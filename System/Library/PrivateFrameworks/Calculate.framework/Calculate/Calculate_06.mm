void *sub_1C1EEAC38()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF21400, &unk_1C1F58440);
  v2 = *v0;
  v3 = sub_1C1F52BB4();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = *v18;
        v20 = v18[1];
        v21 = *(*(v2 + 56) + 8 * v17);
        v22 = (*(v4 + 48) + 16 * v17);
        *v22 = v19;
        v22[1] = v20;
        *(*(v4 + 56) + 8 * v17) = v21;
        v23 = v21;
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

      v16 = *(v2 + 64 + 8 * v8);
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

uint64_t sub_1C1EEADA8(unint64_t a1, uint64_t a2)
{
  v2 = a2;
  v49[2] = *MEMORY[0x1E69E9840];
  if (*(a2 + 16))
  {
    v49[0] = a1;
    v37 = a1 >> 62;
    if (a1 >> 62)
    {
      goto LABEL_51;
    }

    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_4:
    v43 = a1;

    if (v3)
    {
      v4 = 0;
      v41 = v43 & 0xFFFFFFFFFFFFFF8;
      v42 = v3;
      v39 = v43 + 32;
      v45 = v43 & 0xC000000000000001;
      v46 = (v2 + 56);
      while (1)
      {
        if (v45)
        {
          v5 = MEMORY[0x1C6911DB0](v4, v43);
          v6 = __OFADD__(v4++, 1);
          if (v6)
          {
            goto LABEL_17;
          }
        }

        else
        {
          if (v4 >= *(v41 + 16))
          {
            goto LABEL_50;
          }

          v6 = __OFADD__(v4++, 1);
          if (v6)
          {
LABEL_17:
            __break(1u);
            goto LABEL_18;
          }
        }

        v49[1] = v4;
        v48 = v5;
        type metadata accessor for CalculateExpression.Operation();
        v44 = sub_1C1E77790(qword_1EDC2CA90, type metadata accessor for CalculateExpression.Operation, &protocol conformance descriptor for CalculateExpression.Operation);
        v7 = sub_1C1F523B4();
        v8 = -1 << *(v2 + 32);
        v9 = v7 & ~v8;
        v10 = v9 >> 6;
        v11 = 1 << v9;
        if (((1 << v9) & v46[v9 >> 6]) != 0)
        {
          break;
        }

LABEL_6:

        if (v4 == v42)
        {
          goto LABEL_25;
        }
      }

      v12 = ~v8;
      sub_1C1E77790(&qword_1EDC2CA88, type metadata accessor for CalculateExpression.Operation, &protocol conformance descriptor for CalculateExpression.Operation);
      while (1)
      {
        v47 = *(*(v2 + 48) + 8 * v9);
        if (sub_1C1F52414())
        {
          break;
        }

        v9 = (v9 + 1) & v12;
        v10 = v9 >> 6;
        v11 = 1 << v9;
        if (((1 << v9) & v46[v9 >> 6]) == 0)
        {
          goto LABEL_6;
        }
      }

      v14 = *(v2 + 32);
      v15 = v14 & 0x3F;
      v16 = ((1 << v14) + 63) >> 6;
      v36[0] = v16;
      if (v15 <= 0xD)
      {
        goto LABEL_20;
      }

      v32 = 8 * v16;

      v33 = v32;
      if (swift_stdlib_isStackAllocationSafe())
      {

LABEL_20:
        v36[1] = v36;
        MEMORY[0x1EEE9AC00](v13);
        v18 = v36 - ((v17 + 15) & 0x3FFFFFFFFFFFFFF0);
        memcpy(v18, v46, v17);
        v19 = *(v2 + 16);
        v20 = *&v18[8 * v10] & ~v11;
        v38 = v18;
        *&v18[8 * v10] = v20;
        v40 = v19 - 1;
        if (v37)
        {
          a1 = sub_1C1F52994();
          if (v4 != a1)
          {
LABEL_27:
            v42 = a1;
            do
            {
              if (v45)
              {
                a1 = MEMORY[0x1C6911DB0](v4, v43);
                v22 = a1;
                v6 = __OFADD__(v4++, 1);
                if (v6)
                {
                  goto LABEL_46;
                }
              }

              else
              {
                if ((v4 & 0x8000000000000000) != 0)
                {
                  goto LABEL_47;
                }

                if (v4 >= *(v41 + 16))
                {
                  goto LABEL_48;
                }

                v22 = *(v39 + 8 * v4);

                v6 = __OFADD__(v4++, 1);
                if (v6)
                {
LABEL_46:
                  __break(1u);
LABEL_47:
                  __break(1u);
LABEL_48:
                  __break(1u);
LABEL_49:
                  __break(1u);
LABEL_50:
                  __break(1u);
LABEL_51:
                  v31 = a1;
                  v3 = sub_1C1F52994();
                  a1 = v31;
                  goto LABEL_4;
                }
              }

              v48 = v22;
              v23 = sub_1C1F523B4();
              v24 = -1 << *(v2 + 32);
              v25 = v23 & ~v24;
              v26 = v25 >> 6;
              v27 = 1 << v25;
              if (((1 << v25) & v46[v25 >> 6]) != 0)
              {
                v28 = ~v24;
                while (1)
                {
                  v47 = *(*(v2 + 48) + 8 * v25);
                  if (sub_1C1F52414())
                  {
                    break;
                  }

                  v25 = (v25 + 1) & v28;
                  v26 = v25 >> 6;
                  v27 = 1 << v25;
                  if (((1 << v25) & v46[v25 >> 6]) == 0)
                  {
                    goto LABEL_28;
                  }
                }

                v29 = v38[v26];
                v38[v26] = v29 & ~v27;
                if ((v29 & v27) != 0)
                {
                  v30 = v40 - 1;
                  if (__OFSUB__(v40, 1))
                  {
                    goto LABEL_49;
                  }

                  --v40;
                  if (!v30)
                  {

                    v2 = MEMORY[0x1E69E7CD0];
                    goto LABEL_25;
                  }
                }
              }

              else
              {
LABEL_28:
              }

              a1 = v42;
            }

            while (v4 != v42);
          }
        }

        else
        {
          a1 = *(v41 + 16);
          if (v4 != a1)
          {
            goto LABEL_27;
          }
        }

        v2 = sub_1C1EEB5E0(v38, v36[0], v40, v2);
        goto LABEL_25;
      }

      v34 = swift_slowAlloc();
      memcpy(v34, v46, v33);
      v35 = sub_1C1EEB31C(v34, v36[0], v2, v9, v49);

      MEMORY[0x1C6912C70](v34, -1, -1);
      v2 = v35;
    }

LABEL_25:

    return v2;
  }

LABEL_18:

  return MEMORY[0x1E69E7CD0];
}

uint64_t sub_1C1EEB31C(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t *a5)
{
  v5 = a5;
  v7 = *(a3 + 16);
  *(a1 + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v21 = v7 - 1;
  v23 = a3 + 56;
  while (1)
  {
    if (*v5 >> 62)
    {
      result = sub_1C1F52994();
    }

    else
    {
      result = *((*v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v9 = v5[1];
    if (v9 == result)
    {
      goto LABEL_23;
    }

    if ((*v5 & 0xC000000000000001) != 0)
    {
      MEMORY[0x1C6911DB0](v5[1]);
      v10 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        goto LABEL_22;
      }

      goto LABEL_10;
    }

    if ((v9 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v9 >= *((*v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_25;
    }

    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
LABEL_22:
      __break(1u);
LABEL_23:

      return sub_1C1EEB5E0(a1, a2, v21, a3);
    }

LABEL_10:
    v5[1] = v10;
    type metadata accessor for CalculateExpression.Operation();
    sub_1C1E77790(qword_1EDC2CA90, type metadata accessor for CalculateExpression.Operation, &protocol conformance descriptor for CalculateExpression.Operation);
    v11 = sub_1C1F523B4();
    v12 = -1 << *(a3 + 32);
    v13 = v11 & ~v12;
    v14 = v13 >> 6;
    v15 = 1 << v13;
    if (((1 << v13) & *(v23 + 8 * (v13 >> 6))) == 0)
    {
      goto LABEL_2;
    }

    sub_1C1E77790(&qword_1EDC2CA88, type metadata accessor for CalculateExpression.Operation, &protocol conformance descriptor for CalculateExpression.Operation);
    if (sub_1C1F52414())
    {
LABEL_15:

      v17 = a1[v14];
      a1[v14] = v17 & ~v15;
      v5 = a5;
      if ((v17 & v15) != 0)
      {
        v18 = v21 - 1;
        if (__OFSUB__(v21, 1))
        {
          goto LABEL_26;
        }

        --v21;
        if (!v18)
        {
          return MEMORY[0x1E69E7CD0];
        }
      }
    }

    else
    {
      v16 = ~v12;
      while (1)
      {
        v13 = (v13 + 1) & v16;
        v14 = v13 >> 6;
        v15 = 1 << v13;
        if (((1 << v13) & *(v23 + 8 * (v13 >> 6))) == 0)
        {
          break;
        }

        if (sub_1C1F52414())
        {
          goto LABEL_15;
        }
      }

LABEL_2:

      v5 = a5;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_1C1EEB5E0(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {

    return MEMORY[0x1E69E7CD0];
  }

  v4 = a3;
  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF213E0, &unk_1C1F583F0);
  v9 = sub_1C1F52A34();
  v5 = v9;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = v9 + 56;
  result = a4;
  while (v10)
  {
    v14 = __clz(__rbit64(v10));
    v27 = (v10 - 1) & v10;
LABEL_16:
    v17 = *(*(result + 48) + 8 * (v14 | (v11 << 6)));
    type metadata accessor for CalculateExpression.Operation();
    sub_1C1E77790(qword_1EDC2CA90, type metadata accessor for CalculateExpression.Operation, &protocol conformance descriptor for CalculateExpression.Operation);

    result = sub_1C1F523B4();
    v18 = -1 << *(v5 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
    {
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
        v25 = *(v12 + 8 * v20);
        if (v25 != -1)
        {
          v21 = __clz(__rbit64(~v25)) + (v20 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v21 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
    *(*(v5 + 48) + 8 * v21) = v17;
    ++*(v5 + 16);
    if (__OFSUB__(v4--, 1))
    {
      goto LABEL_32;
    }

    result = a4;
    v10 = v27;
    if (!v4)
    {
LABEL_28:

      return v5;
    }
  }

  v15 = v11;
  while (1)
  {
    v11 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_28;
    }

    v16 = a1[v11];
    ++v15;
    if (v16)
    {
      v14 = __clz(__rbit64(v16));
      v27 = (v16 - 1) & v16;
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

uint64_t sub_1C1EEB85C(uint64_t a1, uint64_t a2)
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
      if (!v5 && (sub_1C1F52C64() & 1) == 0)
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

uint64_t sub_1C1EEB8EC(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = sub_1C1F52994();
  if (v3 != result)
  {
    return 0;
  }

  v5 = 0;
  v6 = 1 << *(a2 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a2 + 56);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v8 &= v8 - 1;
LABEL_12:

    v12 = sub_1C1F529D4();

    if ((v12 & 1) == 0)
    {
      return 0;
    }
  }

  v10 = v5;
  while (1)
  {
    v5 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v5 >= v9)
    {
      return 1;
    }

    v11 = *(a2 + 56 + 8 * v5);
    ++v10;
    if (v11)
    {
      v8 = (v11 - 1) & v11;
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1C1EEB9F0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF21420, &unk_1C1F584B0);
    v3 = sub_1C1F52BE4();
    for (i = (a1 + 33); ; i += 2)
    {
      v5 = *(i - 1);
      v6 = *i;
      result = sub_1C1E901F0(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      *(v3[7] + result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
      if (!--v1)
      {
        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1C1EEBAD0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF21418, &qword_1C1F584A8);
    v3 = sub_1C1F52BE4();
    for (i = (a1 + 40); ; i += 16)
    {
      v5 = *(i - 1);
      v6 = *i;
      result = sub_1C1EE9778(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      *(v3[7] + result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
      if (!--v1)
      {
        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t sub_1C1EEBBB0(uint64_t a1, uint64_t a2)
{
  v8 = a2;
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = (a1 + 40);
    do
    {
      v5 = *(v3 - 1);
      v4 = *v3;

      sub_1C1EACF44(&v7, v5, v4);

      v3 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return a2;
}

uint64_t sub_1C1EEBC30()
{
  v1 = v0;
  swift_getKeyPath();
  sub_1C1E77790(&qword_1EDC2C688, type metadata accessor for CalculateExpression, &protocol conformance descriptor for CalculateExpression);
  sub_1C1F52104();

  v2 = OBJC_IVAR____TtC9Calculate19CalculateExpression___updatePlain;
  swift_beginAccess();
  if (*(v0 + v2) == 1)
  {
    swift_getKeyPath();
    sub_1C1F52104();

    v3 = OBJC_IVAR____TtC9Calculate19CalculateExpression___updateRich;
    swift_beginAccess();
    LODWORD(v3) = *(v1 + v3);
    type metadata accessor for CalculateExpression.PlainExpression();
    if (v3 == 1)
    {

      v5 = CalculateExpression.PlainExpression.__allocating_init(parent:options:)(v4, 0);
      v6 = OBJC_IVAR____TtC9Calculate19CalculateExpression___plain;
      swift_beginAccess();
      if (*(v1 + v6) != v5)
      {
LABEL_6:
        KeyPath = swift_getKeyPath();
        MEMORY[0x1EEE9AC00](KeyPath);
        sub_1C1F520F4();

        if (*(v1 + v2))
        {
LABEL_7:
          v10 = swift_getKeyPath();
          MEMORY[0x1EEE9AC00](v10);
          sub_1C1F520F4();

          goto LABEL_10;
        }

LABEL_9:
        *(v1 + v2) = 0;
        goto LABEL_10;
      }
    }

    else
    {
      sub_1C1E7F10C();

      v5 = CalculateExpression.PlainExpression.__allocating_init(_:)(v7);
      v8 = OBJC_IVAR____TtC9Calculate19CalculateExpression___plain;
      swift_beginAccess();
      if (*(v1 + v8) != v5)
      {
        goto LABEL_6;
      }
    }

    sub_1C1EE6650(v5);
    if (*(v1 + v2))
    {
      goto LABEL_7;
    }

    goto LABEL_9;
  }

LABEL_10:
  swift_getKeyPath();
  sub_1C1F52104();

  v11 = OBJC_IVAR____TtC9Calculate19CalculateExpression___plain;
  swift_beginAccess();
  return *(v1 + v11);
}

uint64_t sub_1C1EEBFC4(unint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  if (a1 >> 62)
  {
    goto LABEL_51;
  }

  v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v6 = MEMORY[0x1E69E7CC0];
  if (!v5)
  {
    return v6;
  }

  v41 = a1;
  v39 = a4;
  v46 = MEMORY[0x1E69E7CC0];
  a1 = sub_1C1EAF018(0, v5 & ~(v5 >> 63), 0);
  if ((v5 & 0x8000000000000000) == 0)
  {
    v40 = a3;
    v7 = 0;
    v6 = v46;
    v8 = v41;
    v42 = v5;
    while (1)
    {
      a3 = (v7 + 1);
      if (__OFADD__(v7, 1))
      {
        __break(1u);
LABEL_50:
        __break(1u);
LABEL_51:
        v35 = a1;
        v36 = a4;
        v37 = sub_1C1F52994();
        a4 = v36;
        v5 = v37;
        a1 = v35;
        goto LABEL_3;
      }

      if ((v41 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x1C6911DB0](v7, v8);
      }

      else
      {
        if (v7 >= *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_50;
        }

        v9 = *(v8 + 8 * v7 + 32);
      }

      v10 = v9[48];
      if (v10 == 1)
      {
        goto LABEL_15;
      }

      if (qword_1EDC2F678 != -1)
      {
        v33 = v9[48];
        swift_once();
        LOBYTE(v10) = v33;
      }

      if (sub_1C1E91F6C(v10, qword_1EDC2F680))
      {
LABEL_15:
        (*(*v9 + 136))();
        sub_1C1E94E48();
        if (sub_1C1F52934())
        {

          v11 = 0xE27265626D756E3CLL;
          v12 = 0xAB000000003EA680;
        }

        else
        {
          v13 = sub_1C1F52934();

          if (v13)
          {
            v11 = 0xE27265626D756E3CLL;
          }

          else
          {
            v11 = 0x3E7265626D756E3CLL;
          }

          if (v13)
          {
            v12 = 0xAB000000003EA680;
          }

          else
          {
            v12 = 0xE800000000000000;
          }
        }

        v8 = v41;
        goto LABEL_24;
      }

      v17 = v9[48];
      if (v9[48])
      {
        if (v17 == 19)
        {
          v12 = 0xE600000000000000;
          v11 = 0x3E74696E753CLL;
        }

        else
        {
          if (v17 == 14)
          {
            swift_getKeyPath();
            sub_1C1E77790(&qword_1EDC2C688, type metadata accessor for CalculateExpression, &protocol conformance descriptor for CalculateExpression);
            sub_1C1F52104();

            swift_beginAccess();
            Strong = swift_weakLoadStrong();
            if (Strong)
            {
              v19 = Strong;
              v20 = (*(*v9 + 136))();
              (*(*v19 + 424))(v20);

              v21 = sub_1C1F52C34();
              MEMORY[0x1C69117F0](v21);

              MEMORY[0x1C69117F0](62, 0xE100000000000000);

LABEL_47:
              v11 = 1918989884;
              v12 = 0xE400000000000000;
              v8 = v41;
              goto LABEL_24;
            }

            if (*v40 || (*v40 = sub_1C1E75514(MEMORY[0x1E69E7CC0]), v23 = , *v40))
            {
              (*(*v9 + 136))();
              v24 = sub_1C1F52464();
              v26 = v25;

              if (*(*v40 + 16))
              {
                sub_1C1EAC150(v24, v26);
                v28 = v27;

                if (v28)
                {
LABEL_46:
                  v32 = sub_1C1F52C34();
                  MEMORY[0x1C69117F0](v32);

                  MEMORY[0x1C69117F0](62, 0xE100000000000000);
                  goto LABEL_47;
                }
              }

              else
              {
              }
            }

            if (__OFADD__(*v39, 1))
            {
              goto LABEL_53;
            }

            ++*v39;
            if (*v40)
            {
              (*(*v9 + 136))(v23);
              v44 = sub_1C1F52464();
              v38 = v29;

              v30 = *v39;
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v45 = *v40;
              *v40 = 0x8000000000000000;
              sub_1C1EEA64C(v30, v44, v38, isUniquelyReferenced_nonNull_native);

              *v40 = v45;
            }

            goto LABEL_46;
          }

          v11 = (*(*v9 + 136))();
          v12 = v22;
          v8 = v41;
        }
      }

      else
      {
        v12 = 0xE600000000000000;
        v11 = 0x3E64726F773CLL;
      }

LABEL_24:
      if (v43)
      {
        goto LABEL_54;
      }

      v15 = *(v46 + 16);
      v14 = *(v46 + 24);
      if (v15 >= v14 >> 1)
      {
        a1 = sub_1C1EAF018((v14 > 1), v15 + 1, 1);
        v8 = v41;
      }

      *(v46 + 16) = v15 + 1;
      v16 = v46 + 16 * v15;
      *(v16 + 32) = v11;
      *(v16 + 40) = v12;
      ++v7;
      if (a3 == v42)
      {
        return v6;
      }
    }
  }

  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:

  __break(1u);
  return result;
}

uint64_t sub_1C1EEC754()
{
  v1 = v0;
  swift_getKeyPath();
  *&v61 = v0;
  sub_1C1E77790(&qword_1EDC2C688, type metadata accessor for CalculateExpression, &protocol conformance descriptor for CalculateExpression);
  sub_1C1F52104();

  if (*(v0 + OBJC_IVAR____TtC9Calculate19CalculateExpression__graphNeedsEvaluation) != 1)
  {
    goto LABEL_55;
  }

  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath);
  sub_1C1F520F4();

  v3 = sub_1C1ED73F4();
  v5 = v4;
  swift_getKeyPath();
  *&v61 = v0;
  sub_1C1F52104();

  v6 = OBJC_IVAR____TtC9Calculate19CalculateExpression__options;
  swift_beginAccess();
  v7 = *(v1 + v6);
  swift_getKeyPath();
  *&v61 = v1;

  sub_1C1F52104();

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v9 = (*(*Strong + 168))(Strong);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v61 = v9;
    sub_1C1EEDCDC(v7, sub_1C1EAF22C, 0, isUniquelyReferenced_nonNull_native, &v61);

    v7 = v61;
  }

  v59 = v3;
  v11 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
  v62 = sub_1C1E785A4(0, &qword_1EDC2C298, 0x1E696AD98);
  *&v61 = v11;
  sub_1C1EB1C58(&v61, v60);
  v12 = swift_isUniquelyReferenced_nonNull_native();
  sub_1C1EEA928(v60, @"CalculateKeyForceResult", v12);
  v13._rawValue = v7;
  v14 = sub_1C1E83C94();
  swift_getKeyPath();
  *&v61 = v1;
  sub_1C1F52104();

  v15 = v1 + OBJC_IVAR____TtC9Calculate19CalculateExpression__graphableVariable;
  swift_beginAccess();
  if (*(v15 + 8))
  {
    v58 = v5;
    v57 = sub_1C1F52464();
    v17 = v16;
    if (qword_1EDC2F4B8 != -1)
    {
      swift_once();
    }

    v18 = qword_1EBF22778;
    swift_getKeyPath();
    *&v61 = v18;
    sub_1C1F52104();

    if (*(v18 + OBJC_IVAR____TtC9Calculate19CalculateExpression__needsEvaluation) == 1)
    {
      sub_1C1ED6924();
    }

    swift_getKeyPath();
    *&v61 = v18;
    sub_1C1F52104();

    v19 = OBJC_IVAR____TtC9Calculate19CalculateExpression__internalResult;
    swift_beginAccess();
    v20 = *(v18 + v19);
    if (v20)
    {
      v21 = [v20 ignoringNaN];
    }

    else
    {
      v21 = 0;
    }

    v31 = swift_isUniquelyReferenced_nonNull_native();
    *&v61 = v14;
    sub_1C1EEA7B0(v21, v57, v17, v31);

    v14 = v61;
    v5 = v58;
    goto LABEL_24;
  }

  swift_getKeyPath();
  *&v61 = v1;
  sub_1C1F52104();

  v22 = OBJC_IVAR____TtC9Calculate19CalculateExpression___updateGraphable;
  if (*(v1 + OBJC_IVAR____TtC9Calculate19CalculateExpression___updateGraphable) == 1)
  {
    sub_1C1EDA348();
  }

  swift_getKeyPath();
  *&v61 = v1;
  sub_1C1F52104();

  v23 = OBJC_IVAR____TtC9Calculate19CalculateExpression___graphableType;
  if (*(v1 + OBJC_IVAR____TtC9Calculate19CalculateExpression___graphableType) == 1)
  {
    if (*(v14 + 16))
    {

      sub_1C1EAC150(120, 0xE100000000000000);
      v25 = v24;

      if (v25)
      {
LABEL_24:
        v26 = v59;
        goto LABEL_51;
      }
    }

    v26 = v59;
    if (qword_1EDC2F4B8 != -1)
    {
      swift_once();
    }

    v27 = qword_1EBF22778;
    swift_getKeyPath();
    *&v61 = v27;
    sub_1C1F52104();

    if (*(v27 + OBJC_IVAR____TtC9Calculate19CalculateExpression__needsEvaluation))
    {
      sub_1C1ED6924();
    }

    swift_getKeyPath();
    *&v61 = v27;
    sub_1C1F52104();

    v28 = OBJC_IVAR____TtC9Calculate19CalculateExpression__internalResult;
    swift_beginAccess();
    v29 = *(v27 + v28);
    if (v29)
    {
      v30 = [v29 ignoringNaN];
    }

    else
    {
      v30 = 0;
    }

    v38 = swift_isUniquelyReferenced_nonNull_native();
    *&v61 = v14;
    v39 = v30;
    v40 = 120;
  }

  else
  {
    swift_getKeyPath();
    *&v61 = v1;
    sub_1C1F52104();

    if (*(v1 + v22) == 1)
    {
      sub_1C1EDA348();
    }

    swift_getKeyPath();
    *&v61 = v1;
    sub_1C1F52104();

    v26 = v59;
    if (*(v1 + v23) != 2)
    {
      goto LABEL_51;
    }

    if (!*(v14 + 16) || (, sub_1C1EAC150(120, 0xE100000000000000), v33 = v32, , (v33 & 1) == 0))
    {
      if (qword_1EDC2F4B8 != -1)
      {
        swift_once();
      }

      v34 = qword_1EBF22778;
      swift_getKeyPath();
      *&v61 = v34;
      sub_1C1F52104();

      if (*(v34 + OBJC_IVAR____TtC9Calculate19CalculateExpression__needsEvaluation))
      {
        sub_1C1ED6924();
      }

      swift_getKeyPath();
      *&v61 = v34;
      sub_1C1F52104();

      v35 = OBJC_IVAR____TtC9Calculate19CalculateExpression__internalResult;
      swift_beginAccess();
      v36 = *(v34 + v35);
      if (v36)
      {
        v37 = [v36 ignoringNaN];
      }

      else
      {
        v37 = 0;
      }

      v41 = swift_isUniquelyReferenced_nonNull_native();
      *&v61 = v14;
      sub_1C1EEA7B0(v37, 120, 0xE100000000000000, v41);
      v14 = v61;
    }

    if (*(v14 + 16))
    {

      sub_1C1EAC150(121, 0xE100000000000000);
      v43 = v42;

      if (v43)
      {
        goto LABEL_51;
      }
    }

    if (qword_1EDC2F4B0 != -1)
    {
      swift_once();
    }

    v44 = qword_1EBF22780;
    swift_getKeyPath();
    *&v61 = v44;
    sub_1C1F52104();

    if (*(v44 + OBJC_IVAR____TtC9Calculate19CalculateExpression__needsEvaluation) == 1)
    {
      sub_1C1ED6924();
    }

    swift_getKeyPath();
    *&v61 = v44;
    sub_1C1F52104();

    v45 = OBJC_IVAR____TtC9Calculate19CalculateExpression__internalResult;
    swift_beginAccess();
    v46 = *(v44 + v45);
    if (v46)
    {
      v47 = [v46 ignoringNaN];
    }

    else
    {
      v47 = 0;
    }

    v38 = swift_isUniquelyReferenced_nonNull_native();
    *&v61 = v14;
    v39 = v47;
    v40 = 121;
  }

  sub_1C1EEA7B0(v39, v40, 0xE100000000000000, v38);
  v14 = v61;
LABEL_51:
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF21398, &qword_1C1F57828);
  *&v61 = v14;
  sub_1C1EB1C58(&v61, v60);
  v48 = swift_isUniquelyReferenced_nonNull_native();
  sub_1C1EEA928(v60, @"CalculateKeyVariables", v48);
  if (!*(v13._rawValue + 2) || (, sub_1C1EE987C(@"CalculateKeyAllowEqualSign"), v50 = v49, , (v50 & 1) == 0))
  {
    v62 = MEMORY[0x1E69E6370];
    LOBYTE(v61) = 1;
    sub_1C1EB1C58(&v61, v60);
    v52 = swift_isUniquelyReferenced_nonNull_native();
    sub_1C1EEA928(v60, @"CalculateKeyAllowEqualSign", v52);
  }

  v53._countAndFlagsBits = v26;
  v53._object = v5;
  evaluate(_:options:)(v51, v53, v13);
  v55 = v54;

  sub_1C1ED7724(v55);
LABEL_55:
  swift_getKeyPath();
  *&v61 = v1;
  sub_1C1F52104();

  return *(v1 + OBJC_IVAR____TtC9Calculate19CalculateExpression___graphableResult);
}

void sub_1C1EED320()
{
  swift_beginAccess();
  swift_weakAssign();
  sub_1C1E77A68();
}

void sub_1C1EED3E8()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = OBJC_IVAR____TtC9Calculate19CalculateExpression__variables;
  swift_beginAccess();
  *(v2 + v3) = v1;

  v4 = sub_1C1E7635C(MEMORY[0x1E69E7CC0]);
  sub_1C1ED9ACC(v4);
  sub_1C1E77A68();
}

void sub_1C1EED46C()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  sub_1C1EDAC74(v1, v2);
}

uint64_t sub_1C1EED4E4()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = *(v0 + 16) + OBJC_IVAR____TtC9Calculate19CalculateExpression__selectedRange;
  result = swift_beginAccess();
  *v4 = v1;
  *(v4 + 8) = v2;
  *(v4 + 16) = v3;
  return result;
}

uint64_t sub_1C1EED594()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = OBJC_IVAR____TtC9Calculate19CalculateExpression__removed;
  swift_beginAccess();
  *(v2 + v3) = v1;
}

uint64_t sub_1C1EED658(uint64_t *a1)
{
  v3 = *(v1 + 16);
  v2 = *(v1 + 24);
  v4 = *a1;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

char *sub_1C1EED6BC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  v5 = *(v0 + 56);
  v25 = *(v0 + 72);
  v26 = *(v0 + 64);
  v6 = [v1 usesSignificantDigits];
  v7 = [v1 maximumSignificantDigits];
  if (([v1 usesSignificantDigits] & 1) == 0)
  {
    [v1 setUsesSignificantDigits_];
  }

  v8 = [v1 maximumSignificantDigits];
  if (v8 != v2)
  {
    v8 = [v1 setMaximumSignificantDigits_];
  }

  *v3 = v4(v8);
  v3[1] = v9;

  if (v5 != 2)
  {
    goto LABEL_20;
  }

  v24 = v4;

  v10 = sub_1C1F52424();

  result = [v1 decimalSeparator];
  if (!result)
  {
LABEL_31:
    __break(1u);
    return result;
  }

  v12 = result;
  v13 = [v10 rangeOfString_];

  v14 = sub_1C1F52424();
  v15 = [v10 rangeOfString_];

  if (v15 == sub_1C1F51F64())
  {
    v15 = [v10 length];
  }

  result = sub_1C1F51F64();
  v16 = v15;
  if (v13 != result)
  {
    v16 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      goto LABEL_28;
    }
  }

  if (__OFSUB__(v15, v16))
  {
    __break(1u);
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  if ([v1 maximumFractionDigits] < v15 - v16)
  {
    v17 = sub_1C1E95104(v26, v25);
    if ((v18 & 1) == 0)
    {
      v19 = v17;
      v20 = [v1 maximumSignificantDigits];
      result = [v1 maximumFractionDigits];
      if (!__OFADD__(v19, result))
      {
        if (v20 == &result[v19])
        {
LABEL_19:
          v21 = v24(result);
          v23 = v22;

          *v3 = v21;
          v3[1] = v23;

          goto LABEL_20;
        }

        result = [v1 maximumFractionDigits];
        if (!__OFADD__(v19, result))
        {
          result = [v1 setMaximumSignificantDigits_];
          goto LABEL_19;
        }

        goto LABEL_30;
      }

LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }
  }

LABEL_20:
  if ([v1 maximumSignificantDigits] != v7)
  {
    [v1 setMaximumSignificantDigits_];
  }

  result = [v1 usesSignificantDigits];
  if (v6 != result)
  {

    return [v1 setUsesSignificantDigits_];
  }

  return result;
}

unint64_t sub_1C1EED9BC()
{
  result = qword_1EBF213D0;
  if (!qword_1EBF213D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF213D0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CalculateExpression.TokenType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xCC)
  {
    goto LABEL_17;
  }

  if (a2 + 52 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 52) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 52;
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

      return (*a1 | (v4 << 8)) - 52;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 52;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x35;
  v8 = v6 - 53;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for CalculateExpression.TokenType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 52 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 52) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xCC)
  {
    v4 = 0;
  }

  if (a2 > 0xCB)
  {
    v5 = ((a2 - 204) >> 8) + 1;
    *result = a2 + 52;
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
    *result = a2 + 52;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t _s9Calculate19CalculateExpressionC13GraphableTypeOwst_0(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C1EEDCDC(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v7 = -1 << *(a1 + 32);
  v8 = ~v7;
  v9 = *(a1 + 64);
  v10 = -v7;
  v42 = a1;
  v43 = a1 + 64;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v44 = v8;
  v45 = 0;
  v46 = v11 & v9;
  v47 = a2;
  v48 = a3;

  sub_1C1EAFC80(&v40);
  v12 = v40;
  if (!v40)
  {
    goto LABEL_25;
  }

  sub_1C1EB1C58(v41, v39);
  v13 = *a5;
  result = sub_1C1EE987C(v12);
  v16 = v13[2];
  v17 = (v15 & 1) == 0;
  v18 = __OFADD__(v16, v17);
  v19 = v16 + v17;
  if (v18)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v20 = v15;
  if (v13[3] < v19)
  {
    sub_1C1EAF4E0(v19, a4 & 1);
    result = sub_1C1EE987C(v12);
    if ((v20 & 1) == (v21 & 1))
    {
      goto LABEL_10;
    }

LABEL_8:
    type metadata accessor for CalculateKey();
    result = sub_1C1F52CA4();
    __break(1u);
  }

  if ((a4 & 1) == 0)
  {
    v25 = result;
    sub_1C1EAF8FC();
    result = v25;
    v22 = *a5;
    if (v20)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_10:
  v22 = *a5;
  if (v20)
  {
LABEL_11:
    v23 = result;

    v24 = (v22[7] + 32 * v23);
    __swift_destroy_boxed_opaque_existential_0(v24);
    sub_1C1EB1C58(v39, v24);
    goto LABEL_15;
  }

LABEL_13:
  v22[(result >> 6) + 8] |= 1 << result;
  *(v22[6] + 8 * result) = v12;
  result = sub_1C1EB1C58(v39, (v22[7] + 32 * result));
  v26 = v22[2];
  v18 = __OFADD__(v26, 1);
  v27 = v26 + 1;
  if (!v18)
  {
    v22[2] = v27;
LABEL_15:
    sub_1C1EAFC80(&v40);
    v12 = v40;
    if (v40)
    {
      v20 = 1;
      do
      {
        sub_1C1EB1C58(v41, v39);
        v30 = *a5;
        result = sub_1C1EE987C(v12);
        v32 = v30[2];
        v33 = (v31 & 1) == 0;
        v18 = __OFADD__(v32, v33);
        v34 = v32 + v33;
        if (v18)
        {
          goto LABEL_26;
        }

        a4 = v31;
        if (v30[3] < v34)
        {
          sub_1C1EAF4E0(v34, 1);
          result = sub_1C1EE987C(v12);
          if ((a4 & 1) != (v35 & 1))
          {
            goto LABEL_8;
          }
        }

        v36 = *a5;
        if (a4)
        {
          v28 = result;

          v29 = (v36[7] + 32 * v28);
          __swift_destroy_boxed_opaque_existential_0(v29);
          sub_1C1EB1C58(v39, v29);
        }

        else
        {
          v36[(result >> 6) + 8] |= 1 << result;
          *(v36[6] + 8 * result) = v12;
          result = sub_1C1EB1C58(v39, (v36[7] + 32 * result));
          v37 = v36[2];
          v18 = __OFADD__(v37, 1);
          v38 = v37 + 1;
          if (v18)
          {
            goto LABEL_27;
          }

          v36[2] = v38;
        }

        sub_1C1EAFC80(&v40);
        v12 = v40;
      }

      while (v40);
    }

LABEL_25:
    sub_1C1E96B60(v42);
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_1C1EEDFDC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (a2 && (a1 == 0x656C61636F6CLL && a2 == 0xE600000000000000 || (sub_1C1F52C64() & 1) != 0 || a1 == 0xD000000000000015 && 0x80000001C20956F0 == a2 || (sub_1C1F52C64() & 1) != 0))
    {
      sub_1C1EDBE7C();
    }
  }

  return result;
}

uint64_t sub_1C1EEE0E0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = OBJC_IVAR____TtC9Calculate19CalculateExpression__base;
  swift_beginAccess();
  *(v1 + v3) = v2;
  return sub_1C1EE1790();
}

uint64_t sub_1C1EEE184(void *a1)
{
  *(*(v1 + 16) + *a1) = *(v1 + 24);
}

uint64_t sub_1C1EEE1C8()
{
  v1 = v0[4];
  v2 = (v0[2] + OBJC_IVAR____TtC9Calculate19CalculateExpression___expression);
  *v2 = v0[3];
  v2[1] = v1;
}

uint64_t sub_1C1EEE234()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = OBJC_IVAR____TtC9Calculate19CalculateExpression___variableResults;
  swift_beginAccess();
  *(v2 + v3) = v1;
}

void sub_1C1EEE2A0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + OBJC_IVAR____TtC9Calculate19CalculateExpression___graphableResult);
  *(v1 + OBJC_IVAR____TtC9Calculate19CalculateExpression___graphableResult) = v2;
  v4 = v2;
}

uint64_t sub_1C1EEE304()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1C1EC1958;

  return sub_1C1ED8ED0(v4, v5, v6, v2, v3);
}

id evaluate(_:options:resultHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = objc_opt_self();
  v8 = sub_1C1F52424();
  type metadata accessor for CalculateKey();
  sub_1C1EEEC18(&qword_1EDC2C320, &unk_1C1F58590);
  v9 = sub_1C1F52344();
  v13[4] = a4;
  v13[5] = a5;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 1107296256;
  v13[2] = sub_1C1EEE798;
  v13[3] = &block_descriptor_2;
  v10 = _Block_copy(v13);

  v11 = [v7 evaluate:v8 options:v9 resultHandler:v10];
  _Block_release(v10);

  return v11;
}

void sub_1C1EEE798(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

void __swiftcall evaluate(_:options:)(CalculateResult_optional *__return_ptr retstr, Swift::String _, Swift::OpaquePointer options)
{
  v3 = objc_opt_self();
  v4 = sub_1C1F52424();
  type metadata accessor for CalculateKey();
  sub_1C1EEEC18(&qword_1EDC2C320, &unk_1C1F58590);
  v5 = sub_1C1F52344();
  v6 = [v3 evaluate:v4 options:v5];
}

void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> evaluateError(_:options:)(CalculateResult *__return_ptr retstr, Swift::String _, Swift::OpaquePointer options)
{
  v9[1] = *MEMORY[0x1E69E9840];
  v3 = objc_opt_self();
  v4 = sub_1C1F52424();
  type metadata accessor for CalculateKey();
  sub_1C1EEEC18(&qword_1EDC2C320, &unk_1C1F58590);
  v5 = sub_1C1F52344();
  v9[0] = 0;
  v6 = [v3 evaluate:v4 options:v5 error:v9];

  if (v6)
  {
    v7 = v9[0];
  }

  else
  {
    v8 = v9[0];
    sub_1C1F51FC4();

    swift_willThrow();
  }
}

uint64_t localizedSymbol(_:locale:)(uint64_t a1, uint64_t a2)
{
  v2 = objc_opt_self();
  v3 = sub_1C1F52424();
  v4 = sub_1C1F52094();
  v5 = [v2 localizedSymbol:v3 locale:v4];

  v6 = sub_1C1F52454();
  return v6;
}

void __swiftcall CalculateResult.converted(to:from:)(CalculateResult_optional *__return_ptr retstr, CalculateUnit *to, CalculateUnit *from)
{
  v4 = CalculateResultConvertFrom(v3, to, from);

  v5 = v4;
}

unint64_t sub_1C1EEEB10(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF211E0, &qword_1C1F568D0);
    v3 = sub_1C1F52BE4();
    v4 = a1 + 32;

    while (1)
    {
      sub_1C1EEEC5C(v4, &v11);
      v5 = v11;
      result = sub_1C1E81EB0(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_1C1EB1C58(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t sub_1C1EEEC18(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CalculateKey();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1C1EEEC5C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF21180, &qword_1C1F564D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C1EEECD0(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16) == 1)
  {
    CalculateExpression.RichExpression.editingToken(matching:)(sub_1C1EB7428, v40);
    v3 = v40[0];
    if (v40[0])
    {
      v4 = v40[1];
      v5 = v40[2];
      v6 = v40[3];
      v7 = *(*v40[0] + 416);

      if ((v7)(v4))
      {
        v37 = v5;
        v38 = v6;
        v8 = type metadata accessor for CalculateExpression.RichToken(0);
        LOBYTE(v40[0]) = 34;
        v9 = sub_1C1E7DD60();
        v10 = CalculateExpression.RichToken.__allocating_init(text:type:isImplicit:)(0, 0, v40, v9 & 1);
        (*(*a1 + 232))(0);
        v11 = (v7)(v4);
        if (!v11)
        {
          v29 = *(*v3 + 408);

          v15 = v29(v40);
          v31 = v30;
          MEMORY[0x1C6911980]();
          if (*((*v31 & 0xFFFFFFFFFFFFFF8) + 0x10) < *((*v31 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
LABEL_24:
            sub_1C1F52724();
            (v15)(v40, 0);
LABEL_30:

            sub_1C1E98278(v3, v4, v37, v38);
            return 1;
          }

LABEL_39:
          sub_1C1F526E4();
          goto LABEL_24;
        }

        v12 = v11;
        v13 = &OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type;
        v14 = OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type;
        LOBYTE(v40[0]) = *(v11 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type);
        LOBYTE(v39) = 16;
        if ((static CalculateExpression.TokenType.== infix(_:_:)(v40, &v39) & 1) == 0)
        {
          LOBYTE(v40[0]) = *(v12 + v14);
          if ((CalculateExpression.TokenType.isOperand.getter() & 1) == 0)
          {
            LOBYTE(v40[0]) = *(v12 + v14);
            LOBYTE(v39) = 34;
            v7 = v40;
            if (static CalculateExpression.TokenType.== infix(_:_:)(v40, &v39))
            {
              v33 = (*(*v3 + 408))(v40);
              sub_1C1E98338(v4);

              v33(v40, 0);
              goto LABEL_29;
            }

            v15 = v4 + 1;
            if (!__OFADD__(v4, 1))
            {
              v7 = *(*v3 + 408);
              v13 = (*v3 + 408);

              v8 = (v7)(v40);
              if (!(*v34 >> 62))
              {
                if (*((*v34 & 0xFFFFFFFFFFFFFF8) + 0x10) < v15)
                {
LABEL_45:
                  __break(1u);
                  goto LABEL_46;
                }

                goto LABEL_36;
              }

LABEL_44:
              if (sub_1C1F52994() < v15)
              {
                goto LABEL_45;
              }

LABEL_36:
              if ((v15 & 0x8000000000000000) == 0)
              {
                goto LABEL_28;
              }

              __break(1u);
              goto LABEL_38;
            }

LABEL_43:
            __break(1u);
            goto LABEL_44;
          }
        }

        v39 = v4;
        sub_1C1EBA588(&v39);
        v15 = v39;
        if (__OFSUB__(v39, 1))
        {
LABEL_38:
          __break(1u);
          goto LABEL_39;
        }

        v36 = v39 - 1;
        v16 = v7();
        if (v16)
        {
          v17 = *(v16 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type);

          if (v17 != 53)
          {
            LOBYTE(v40[0]) = v17;
            sub_1C1E9019C();
            if (sub_1C1F52414())
            {
              v18 = (*(*v3 + 408))(v40);
              sub_1C1E98338(v36);

              v18(v40, 0);
LABEL_29:

              goto LABEL_30;
            }
          }
        }

        v20 = (v7)(v36);
        if (v20)
        {
          v21 = *(v20 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type);

          if (v21 != 53)
          {
            LOBYTE(v40[0]) = v21;
            sub_1C1E9019C();
            if (sub_1C1F52414())
            {
              LOBYTE(v40[0]) = 16;
              v22 = sub_1C1E7DD60();
              v23 = CalculateExpression.RichToken.__allocating_init(text:type:isImplicit:)(0, 0, v40, v22 & 1);
              v15 = v4 + 1;
              if (!__OFADD__(v4, 1))
              {
                v13 = v23;
                v24 = (*v3 + 408);
                v7 = *v24;
                v35 = (*v24)(v40);
                if (!(*v25 >> 62))
                {
                  result = *((*v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
                  if (result >= v15)
                  {
                    goto LABEL_21;
                  }

                  goto LABEL_48;
                }

LABEL_47:
                result = sub_1C1F52994();
                if (result >= v15)
                {
LABEL_21:
                  if ((v15 & 0x8000000000000000) == 0)
                  {
                    sub_1C1E98664(v15, v15, v13);

                    v35(v40, 0);
                    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF21130, &unk_1C1F56A00);
                    v26 = swift_allocObject();
                    *(v26 + 16) = xmmword_1C1F56430;
                    *(v26 + 32) = v10;
                    LOBYTE(v40[0]) = 15;

                    v27 = sub_1C1E7DD60();
                    *(v26 + 40) = CalculateExpression.RichToken.__allocating_init(text:type:isImplicit:)(0, 0, v40, v27 & 1);
                    v28 = (v7)(v40);
                    sub_1C1E9B764(v36, v36, v26);

                    v28(v40, 0);
                    goto LABEL_29;
                  }

                  goto LABEL_49;
                }

LABEL_48:
                __break(1u);
LABEL_49:
                __break(1u);
                return result;
              }

LABEL_46:
              __break(1u);
              goto LABEL_47;
            }
          }
        }

        v7 = *(*v3 + 408);
        v13 = (*v3 + 408);

        v8 = (v7)(v40);
        if (*v32 >> 62)
        {
          if (sub_1C1F52994() >= v15)
          {
LABEL_27:
            if ((v15 & 0x8000000000000000) == 0)
            {
LABEL_28:
              sub_1C1E98664(v15, v15, v10);

              v8(v40, 0);
              goto LABEL_29;
            }

            goto LABEL_42;
          }
        }

        else if (*((*v32 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v15)
        {
          goto LABEL_27;
        }

        __break(1u);
LABEL_42:
        __break(1u);
        goto LABEL_43;
      }

      sub_1C1E98278(v3, v4, v5, v6);
    }
  }

  return 0;
}

uint64_t CalculateExpression.NegOperation.__deallocating_deinit()
{
  v0 = CalculateExpression.Operation.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 16, 7);
}

uint64_t sub_1C1EEF428(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16) != 1)
  {
    return 0;
  }

  CalculateExpression.RichExpression.editingToken(matching:)(sub_1C1EB7428, &v106);
  v4 = v106;
  if (!v106)
  {
    return 0;
  }

  v6 = v107;
  v5 = v108;
  v7 = v109;
  v8 = *(*v106 + 568);
  v9 = (*v106 + 568);
  sub_1C1EB74E0(v106, v107, v108, v109);

  if ((v8(v10) & 1) == 0)
  {
    v11 = (*(*v4 + 576))();
    sub_1C1E98278(v4, v6, v5, v7);
    if ((v11 & 1) == 0)
    {
      sub_1C1EF078C(v4, v6, &v101);
      if (v101)
      {
        v12 = v104;
        v13 = *v4 + 416;
        v96 = *v13;
        v14 = (*v13)(v104);
        if (!v14)
        {
          goto LABEL_16;
        }

        v15 = *(v14 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type);

        if (v15 == 53)
        {
          goto LABEL_16;
        }

        LOBYTE(v106) = v15;
        v100[0] = 15;
        v2 = sub_1C1E9019C();
        if ((sub_1C1F52414() & 1) == 0)
        {
          goto LABEL_16;
        }

        v9 = v105;
        v16 = v96(v105);
        if (!v16)
        {
          goto LABEL_16;
        }

        v17 = *(v16 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type);

        if (v17 == 53)
        {
          goto LABEL_16;
        }

        LOBYTE(v106) = v17;
        v100[0] = 16;
        if ((sub_1C1F52414() & 1) == 0)
        {
          goto LABEL_16;
        }

        if (__OFSUB__(v9, 1))
        {
LABEL_115:
          __break(1u);
          goto LABEL_116;
        }

        sub_1C1EF078C(v4, v9 - 1, &v106);
        if (v106)
        {
          if (v12 >= v107)
          {
            if (v108)
            {
              v95 = v12;
              if (v103)
              {
                v71 = v102;
                result = v96(v102);
                if (result)
                {
                  v72 = *(result + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type);

                  v100[0] = v72;
                  result = CalculateExpression.TokenType.isBasicOperator.getter();
                  if (result)
                  {
                    v73 = v71 + 1;
                    if (!__OFADD__(v71, 1))
                    {
                      if (v12 >= v73)
                      {
                        v74 = (*(*v4 + 408))(v100);
                        sub_1C1E98F60(v73, v12);
                        v74(v100, 0);
                        goto LABEL_59;
                      }

                      goto LABEL_132;
                    }

LABEL_131:
                    __break(1u);
LABEL_132:
                    __break(1u);
                    goto LABEL_133;
                  }
                }

                if (v71 < 0)
                {
                  if (v12 > v71)
                  {
                    v91 = (*(*v4 + 408))(v100);
                    sub_1C1E98F60(v71 + 1, v12);
                    v91(v100, 0);
                    goto LABEL_59;
                  }

LABEL_133:
                  __break(1u);
                  return result;
                }

                v87 = v110 + 1;
                if (!__OFADD__(v110, 1))
                {
                  if (v9 >= v87)
                  {
                    v97 = *(*v4 + 408);
                    result = v97(v100);
                    if (!__OFADD__(v9, 1))
                    {
                      v88 = result;
                      sub_1C1E98F60(v87, v9 + 1);
                      result = v88(v100, 0);
                      v89 = v109;
                      if (v109 >= v95)
                      {
                        v90 = v97(v100);
                        sub_1C1E98F60(v95, v89);
                        v90(v100, 0);
                        goto LABEL_59;
                      }

                      goto LABEL_130;
                    }

LABEL_129:
                    __break(1u);
LABEL_130:
                    __break(1u);
                    goto LABEL_131;
                  }

LABEL_128:
                  __break(1u);
                  goto LABEL_129;
                }

LABEL_127:
                __break(1u);
                goto LABEL_128;
              }

              v83 = (*v4 + 408);
              v84 = *v83;
              v13 = v83;
              v2 = (*v83)(v100);
              sub_1C1E98338(v9);

              (v2)(v100, 0);
              v9 = v109;
              if (v109 >= v95)
              {
                v2 = v84(v100);
                sub_1C1E98F60(v95, v9);
                goto LABEL_39;
              }

              goto LABEL_117;
            }

            if ((v103 & 1) == 0)
            {
              v13 = v12 + 1;
              if (!__OFADD__(v12, 1))
              {
                if (v9 >= v13)
                {
                  if (sub_1C1EF0560(v4, v12 + 1, v9))
                  {
                    goto LABEL_59;
                  }

                  type metadata accessor for CalculateExpression.RichToken(0);
                  v100[0] = 4;
                  v85 = sub_1C1E7DD60();
                  v9 = CalculateExpression.RichToken.__allocating_init(text:type:isImplicit:)(0, 0, v100, v85 & 1);
                  v2 = (*(*v4 + 408))(v100);
                  if (!(*v86 >> 62))
                  {
                    result = *((*v86 & 0xFFFFFFFFFFFFFF8) + 0x10);
                    if (result < v13)
                    {
LABEL_125:
                      __break(1u);
                      goto LABEL_126;
                    }

                    goto LABEL_92;
                  }

LABEL_124:
                  result = sub_1C1F52994();
                  if (result < v13)
                  {
                    goto LABEL_125;
                  }

LABEL_92:
                  if (v13 < 0)
                  {
LABEL_126:
                    __break(1u);
                    goto LABEL_127;
                  }

                  v32 = v13;
                  v33 = v13;
                  goto LABEL_38;
                }

                goto LABEL_120;
              }

              goto LABEL_118;
            }

            v2 = v102;
            v95 = v102 + 1;
            if (!__OFADD__(v102, 1))
            {
              if (v12 >= v95)
              {
                v94 = *(*v4 + 408);
                v9 = v94(v100);
                sub_1C1E98F60(v95, v12);
                v9(v100, 0);
                v78 = v96(v2);
                if (v78)
                {
                  v79 = *(v78 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type);

                  v100[0] = v79;
                  if (CalculateExpression.TokenType.isBasicOperator.getter())
                  {
                    goto LABEL_59;
                  }
                }

                if (v2 < 0)
                {
                  goto LABEL_59;
                }

                type metadata accessor for CalculateExpression.RichToken(0);
                v100[0] = 3;
                v80 = sub_1C1E7DD60();
                v2 = CalculateExpression.RichToken.__allocating_init(text:type:isImplicit:)(0, 0, v100, v80 & 1);
                v13 = v94(v100);
                if (!(*v81 >> 62))
                {
                  v82 = *((*v81 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_82:
                  if (v82 < v95)
                  {
                    __break(1u);
                  }

                  else if ((v95 & 0x8000000000000000) == 0)
                  {
                    v58 = v95;
                    v57 = v95;
                    goto LABEL_52;
                  }

                  __break(1u);
                  goto LABEL_124;
                }

LABEL_121:
                v82 = sub_1C1F52994();
                goto LABEL_82;
              }

              goto LABEL_119;
            }

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
            goto LABEL_121;
          }

LABEL_16:
          v18 = v96(v12);
          if (!v18)
          {
            goto LABEL_20;
          }

          v9 = v18;
          v2 = v12;
          v100[0] = *(v18 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type);
          v99 = 1;
          if (static CalculateExpression.TokenType.== infix(_:_:)(v100, &v99) & 1) == 0 || (v93 = *v9 + 232, v95 = *v93, v19 = (*v93)(), sub_1C1EAAEDC(101, 0xE100000000000000, v19, v20), v22 = v21, v23 = , (v22))
          {

            v12 = v2;
LABEL_20:
            if (v103)
            {
              v95 = v13;
              v2 = v102;
              v13 = v102 + 1;
              if (!__OFADD__(v102, 1))
              {
                if (v12 >= v13)
                {
                  v9 = v12;
                  v92 = *(*v4 + 408);
                  v24 = v92(v100);
                  v93 = v13;
                  sub_1C1E98F60(v13, v9);
                  v24(v100, 0);
                  v25 = v96(v2);
                  if (!v25)
                  {
                    goto LABEL_46;
                  }

                  v26 = v25;
                  v27 = OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type;
                  v100[0] = *(v25 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type);
                  if (CalculateExpression.TokenType.isBasicOperator.getter())
                  {
                    goto LABEL_58;
                  }

                  v99 = *(v26 + v27);
                  v98 = 15;
                  v53 = static CalculateExpression.TokenType.== infix(_:_:)(&v99, &v98);

                  if ((v53 & 1) == 0)
                  {
LABEL_46:
                    if (v2 < 0 || (*(*a1 + 368))() == 2)
                    {
                      goto LABEL_59;
                    }

                    type metadata accessor for CalculateExpression.RichToken(0);
                    v100[0] = 3;
                    v54 = sub_1C1E7DD60();
                    v2 = CalculateExpression.RichToken.__allocating_init(text:type:isImplicit:)(0, 0, v100, v54 & 1);
                    v13 = v92(v100);
                    if (!(*v55 >> 62))
                    {
                      v56 = *((*v55 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_49:
                      v57 = v93;
                      if (v56 < v93)
                      {
                        __break(1u);
                      }

                      else if ((v93 & 0x8000000000000000) == 0)
                      {
                        v58 = v93;
LABEL_52:
                        sub_1C1E98664(v58, v57, v2);

                        (v13)(v100, 0);
                        goto LABEL_59;
                      }

                      __break(1u);
                      goto LABEL_115;
                    }

LABEL_112:
                    v56 = sub_1C1F52994();
                    goto LABEL_49;
                  }

LABEL_59:
                  (*(*a1 + 232))(0);

                  sub_1C1E98278(v4, v6, v5, v7);
                  return 1;
                }

                goto LABEL_104;
              }

              __break(1u);
            }

            else if (v105 >= v12)
            {
              v2 = v105 + 1;
              if (!__OFADD__(v105, 1))
              {
                if (sub_1C1EF0560(v4, v12, v105 + 1))
                {
                  goto LABEL_59;
                }

                v29 = (*(*a1 + 368))();
                v9 = type metadata accessor for CalculateExpression.RichToken(0);
                if (v29 != 2)
                {
                  v95 = v12;
                  v100[0] = 16;
                  v59 = sub_1C1E7DD60();
                  v12 = CalculateExpression.RichToken.__allocating_init(text:type:isImplicit:)(0, 0, v100, v59 & 1);
                  v13 = *(*v4 + 408);
                  v93 = (v13)(v100);
                  if (!(*v60 >> 62))
                  {
                    if (*((*v60 & 0xFFFFFFFFFFFFFF8) + 0x10) < v2)
                    {
LABEL_109:
                      __break(1u);
LABEL_110:
                      __break(1u);
LABEL_111:
                      __break(1u);
                      goto LABEL_112;
                    }

LABEL_55:
                    if ((v2 & 0x8000000000000000) == 0)
                    {
                      sub_1C1E98664(v2, v2, v12);

                      (v93)(v100, 0);
                      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF21130, &unk_1C1F56A00);
                      v61 = swift_allocObject();
                      *(v61 + 16) = xmmword_1C1F56430;
                      v100[0] = 15;
                      v62 = sub_1C1E7DD60();
                      *(v61 + 32) = CalculateExpression.RichToken.__allocating_init(text:type:isImplicit:)(0, 0, v100, v62 & 1);
                      v100[0] = 4;
                      v63 = sub_1C1E7DD60();
                      *(v61 + 40) = CalculateExpression.RichToken.__allocating_init(text:type:isImplicit:)(0, 0, v100, v63 & 1);
                      v64 = (v13)(v100);
                      sub_1C1E9B764(v95, v95, v61);

                      v64(v100, 0);
                      goto LABEL_59;
                    }

                    goto LABEL_111;
                  }

LABEL_108:
                  if (sub_1C1F52994() < v2)
                  {
                    goto LABEL_109;
                  }

                  goto LABEL_55;
                }

                v100[0] = 4;
                v30 = sub_1C1E7DD60();
                v9 = CalculateExpression.RichToken.__allocating_init(text:type:isImplicit:)(0, 0, v100, v30 & 1);
                v2 = (*(*v4 + 408))(v100);
                if (!(*v31 >> 62))
                {
                  if (*((*v31 & 0xFFFFFFFFFFFFFF8) + 0x10) < v12)
                  {
LABEL_107:
                    __break(1u);
                    goto LABEL_108;
                  }

LABEL_36:
                  if ((v12 & 0x8000000000000000) == 0)
                  {
                    v32 = v12;
                    v33 = v12;
LABEL_38:
                    sub_1C1E98664(v32, v33, v9);

LABEL_39:
                    (v2)(v100, 0);
                    goto LABEL_59;
                  }

                  goto LABEL_110;
                }

LABEL_106:
                if (sub_1C1F52994() < v12)
                {
                  goto LABEL_107;
                }

                goto LABEL_36;
              }

LABEL_105:
              __break(1u);
              goto LABEL_106;
            }

            __break(1u);
LABEL_104:
            __break(1u);
            goto LABEL_105;
          }

          (v95)(v23);
          v34 = sub_1C1F525A4();

          if (v34)
          {
LABEL_58:

            goto LABEL_59;
          }

          v36 = (v95)(v35);
          sub_1C1EAAEDC(45, 0xE100000000000000, v36, v37);
          v39 = v38;

          if ((v39 & 1) == 0)
          {
            v65 = (*(*v9 + 248))(v100);
            sub_1C1F52524();

            v65(v100, 0);
            goto LABEL_58;
          }

          (v95)(v40);
          v41 = sub_1C1F524F4();

          v43 = (v95)(v42);
          v45 = sub_1C1EAAFCC(v41, v43, v44);
          v47 = v46;
          v49 = v48;
          v51 = v50;
          v52 = v45;

          if (sub_1C1EF0A9C(v52, v47, v49, v51, 48, 0xE100000000000000))
          {

            goto LABEL_58;
          }

          v66 = sub_1C1EF0A9C(v52, v47, v49, v51, 12331, 0xE200000000000000);

          if (v66)
          {
            goto LABEL_58;
          }

          (v95)(v67);
          v68 = sub_1C1F525D4();
          v70 = v69;

          if (v68 == 43 && v70 == 0xE100000000000000)
          {
          }

          else
          {
            v75 = sub_1C1F52C64();

            if ((v75 & 1) == 0)
            {
LABEL_73:
              v77 = (*(*v9 + 248))(v100);
              sub_1C1F52514();
              v77(v100, 0);
              goto LABEL_58;
            }
          }

          v76 = (*(*v9 + 248))(v100);
          sub_1C1F52524();

          v76(v100, 0);
          goto LABEL_73;
        }
      }
    }

    goto LABEL_27;
  }

  sub_1C1E98278(v4, v6, v5, v7);
LABEL_27:
  sub_1C1E98278(v4, v6, v5, v7);
  return 0;
}

uint64_t CalculateExpression.NegateOperation.__deallocating_deinit()
{
  v0 = CalculateExpression.Operation.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 16, 7);
}

uint64_t sub_1C1EF0560(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = a3 - 1;
  if (__OFSUB__(a3, 1))
  {
    goto LABEL_27;
  }

  v5 = *(*result + 416);
  do
  {
    v6 = v5(a2);
    if (!v6)
    {
      goto LABEL_13;
    }

    v7 = *(v6 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type);

    if (v7 == 53)
    {
      goto LABEL_13;
    }

    sub_1C1E9019C();
    if ((sub_1C1F52414() & 1) == 0)
    {
      goto LABEL_13;
    }

    v8 = v5(v3);
    if (!v8)
    {
      goto LABEL_13;
    }

    v9 = *(v8 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type);

    if (v9 == 53)
    {
      goto LABEL_13;
    }

    result = sub_1C1F52414();
    if ((result & 1) == 0)
    {
      goto LABEL_13;
    }

    if (__OFADD__(a2, 1))
    {
      __break(1u);
LABEL_27:
      __break(1u);
      return result;
    }

    ++a2;
  }

  while (!__OFSUB__(v3--, 1));
  __break(1u);
LABEL_13:
  if (a2 != v3)
  {
    return 0;
  }

  v11 = v5(a2);
  if (!v11)
  {
    return 0;
  }

  v12 = v11;
  v17 = *(v11 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type);
  v16 = 1;
  if ((static CalculateExpression.TokenType.== infix(_:_:)(&v17, &v16) & 1) == 0)
  {

    return 0;
  }

  if ((*(*v12 + 232))() != 48 || v13 != 0xE100000000000000)
  {
    v15 = sub_1C1F52C64();

    return (v15 & 1) != 0;
  }

  return 1;
}

uint64_t sub_1C1EF078C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v27 = a2;
  v5 = (*a1 + 416);
  v6 = *v5;
  v7 = (*v5)(a2);
  result = a2;
  if (v7)
  {
    v9 = *(v7 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type);

    result = a2;
    if (v9 != 53)
    {
      v26 = v9;
      v25 = 9;
      sub_1C1E9019C();
      v10 = sub_1C1F52414();
      result = a2;
      if (v10)
      {
        result = a2 - 1;
        if (__OFSUB__(a2, 1))
        {
LABEL_30:
          __break(1u);
LABEL_31:
          __break(1u);
          goto LABEL_32;
        }

        v27 = a2 - 1;
      }
    }
  }

  v11 = v6(result);
  if (v11 && (v12 = *(v11 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type), , v12 != 53))
  {
    v26 = v12;
    v25 = 15;
    sub_1C1E9019C();
    v13 = sub_1C1F52414();
  }

  else
  {
    v13 = 0;
  }

  result = sub_1C1EBA588(&v27);
  v23 = v27;
  v14 = v27 - 1;
  if (__OFSUB__(v27, 1))
  {
    __break(1u);
    goto LABEL_30;
  }

  v15 = v6(v27 - 1);
  if (v15)
  {
    v16 = *(v15 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type);

    if (v16 != 53)
    {
      v26 = v16;
      v25 = 17;
      sub_1C1E9019C();
      result = sub_1C1F52414();
      if (result)
      {
        v17 = __OFSUB__(v14--, 1);
        if (v17)
        {
          goto LABEL_31;
        }
      }
    }
  }

  result = v6(v14);
  if (!result || (v18 = *(result + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type), result = , v18 == 53) || (v26 = v18, v25 = 4, sub_1C1E9019C(), result = sub_1C1F52414(), (result & 1) == 0))
  {
    v19 = 0;
    if (v13)
    {
      goto LABEL_26;
    }

LABEL_22:
    result = v6(v23);
    if (result)
    {
      v20 = result;
      v21 = OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type;
      v26 = *(result + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type);
      if (CalculateExpression.TokenType.isOperand.getter() & 1) != 0 || (v25 = *(v20 + v21), v24 = 15, (static CalculateExpression.TokenType.== infix(_:_:)(&v25, &v24)))
      {

        v22 = 1;
      }

      else
      {
        v26 = *(v20 + v21);
        v25 = 10;
        v22 = static CalculateExpression.TokenType.== infix(_:_:)(&v26, &v25);
      }

      goto LABEL_27;
    }

LABEL_26:
    v22 = 0;
LABEL_27:
    *a3 = v22 & 1;
    *(a3 + 8) = v14;
    *(a3 + 16) = v19;
    *(a3 + 24) = v23;
    *(a3 + 32) = a2;
    return result;
  }

  v17 = __OFSUB__(v14--, 1);
  if (!v17)
  {
    v19 = 1;
    if (v13)
    {
      goto LABEL_26;
    }

    goto LABEL_22;
  }

LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_1C1EF0A9C(unint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    v6 = HIBYTE(a6) & 0xF;
  }

  else
  {
    v6 = a5 & 0xFFFFFFFFFFFFLL;
  }

  if (a3 == a5 && a4 == a6 && !(a1 >> 16) && a2 >> 16 == v6)
  {
    return 1;
  }

  else
  {
    return sub_1C1F52C24() & 1;
  }
}

uint64_t sub_1C1EF0B2C(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[40])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1C1EF0B80(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_1C1EF0BDC(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16) != 1)
  {
    return 0;
  }

  v10 = a1;
  v72 = v3;
  if (((*(*a1 + 224))() & 1) == 0)
  {
    goto LABEL_14;
  }

  v11 = (*(*v10 + 392))();
  if (v11 >> 62)
  {
    v2 = v11;
    v19 = sub_1C1F52994();
    v11 = v2;
    if (v19)
    {
      goto LABEL_5;
    }
  }

  else if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_5:
    if ((v11 & 0xC000000000000001) != 0)
    {
      goto LABEL_69;
    }

    if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v12 = *(v11 + 32);

      v13 = *(v12 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type);

      if (v13 == 53)
      {
        goto LABEL_14;
      }

LABEL_8:
      LOBYTE(v75[0]) = v13;
      LOBYTE(v73) = 4;
      sub_1C1E9019C();
      if ((sub_1C1F52414() & 1) == 0)
      {
        goto LABEL_14;
      }

      type metadata accessor for CalculateExpression.RichToken(0);
      LOBYTE(v75[0]) = 15;
      v14 = sub_1C1E7DD60();
      v4 = CalculateExpression.RichToken.__allocating_init(text:type:isImplicit:)(0, 0, v75, v14 & 1);
      v7 = *(*v10 + 408);
      v5 = v7(v75);
      if (!(*v15 >> 62))
      {
        goto LABEL_10;
      }

      goto LABEL_76;
    }

    __break(1u);
    goto LABEL_72;
  }

  while (1)
  {
LABEL_14:
    CalculateExpression.RichExpression.editingToken(matching:)(sub_1C1EB8CEC, v75);
    v6 = v75[0];
    if (!v75[0])
    {
      return 0;
    }

    v20 = v75[1];
    v9 = v75[2];
    v21 = v75[3];
    v22 = *(*v75[0] + 416);

    v23 = v22(v20);
    v24 = type metadata accessor for CalculateExpression.RichToken(0);
    LOBYTE(v75[0]) = 7;
    v25 = sub_1C1E7DD60();
    v7 = CalculateExpression.RichToken.__allocating_init(text:type:isImplicit:)(0, 0, v75, v25 & 1);
    if (!v23)
    {

      sub_1C1E98278(v6, v20, v9, v21);
      goto LABEL_30;
    }

    v70 = v24;
    v71 = v20;
    v26 = *(*v23 + 352);

    v11 = v26(v27);
    v28 = v9 + v11;
    if (!__OFADD__(v9, v11))
    {
      break;
    }

    __break(1u);
LABEL_68:
    __break(1u);
LABEL_69:
    v66 = MEMORY[0x1C6911DB0](0, v11);

    v13 = *(v66 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type);
    swift_unknownObjectRelease();
    if (v13 != 53)
    {
      goto LABEL_8;
    }
  }

  v29 = v28 + 1;
  if (__OFADD__(v28, 1))
  {
    goto LABEL_68;
  }

  v30 = *sub_1C1ED528C();

  if (v29 >= v30)
  {

    v38 = v6;
    v39 = v20;
    v40 = v9;
    v41 = v21;
LABEL_32:
    sub_1C1E98278(v38, v39, v40, v41);
    return 0;
  }

  (*(*v10 + 232))(0);
  v31 = *(v72 + 16);
  v8 = *(v72 + 24);
  if (v31)
  {
    v32 = 0;
  }

  else
  {
    v32 = v8 == 0xE000000000000000;
  }

  v33 = v32;
  v67 = v33;
  v68 = v21;
  v69 = v9;
  if (v32 || (sub_1C1F52C64() & 1) != 0)
  {
    LOBYTE(v75[0]) = 18;
    v34 = sub_1C1E7DD60() & 1;
    v35 = 0;
    v36 = 0;
  }

  else
  {
    LOBYTE(v75[0]) = 1;

    v34 = sub_1C1E7DD60() & 1;
    v35 = v31;
    v36 = v8;
  }

  v42 = CalculateExpression.RichToken.__allocating_init(text:type:isImplicit:)(v35, v36, v75, v34);
  type metadata accessor for CalculateExpression.RichExpression();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF21130, &unk_1C1F56A00);
  v43 = swift_allocObject();
  *(v43 + 16) = xmmword_1C1F563C0;
  *(v43 + 32) = v42;
  v44 = v42;
  v45 = *(*v10 + 176);
  v72 = v44;

  v47 = v45(v46);
  v48 = CalculateExpression.RichExpression.__allocating_init(tokens:parent:)(v43, v47);
  v49 = (*(*v7 + 312))(v48);
  v4 = (*v7 + 304);
  v50 = *v4;
  v51 = (*v4)(v49);
  v10 = v71;
  if (v51)
  {
    v52 = v51;
    if (v67)
    {
      v53 = 1;
    }

    else
    {
      v53 = sub_1C1F52C64();
    }

    (*(*v52 + 304))(v53 & 1);
  }

  v54 = v50(v51);
  if (v54)
  {
    LOBYTE(v75[0]) = 1;
    (*(*v54 + 280))(v75);
  }

  v5 = OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type;
  LOBYTE(v75[0]) = *(v23 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type);
  LOBYTE(v73) = 7;
  if ((static CalculateExpression.TokenType.== infix(_:_:)(v75, &v73) & 1) == 0)
  {
    LOBYTE(v75[0]) = v5[v23];
    if (CalculateExpression.TokenType.isOperator.getter())
    {
      LOBYTE(v73) = v5[v23];
      v74 = 8;
      sub_1C1E9019C();
      if ((sub_1C1F52414() & 1) == 0)
      {
        LOBYTE(v75[0]) = v5[v23];
        LOBYTE(v73) = 9;
        if ((sub_1C1F52414() & 1) == 0)
        {
          goto LABEL_50;
        }
      }
    }

LABEL_57:
    LOBYTE(v75[0]) = v5[v23];
    if ((CalculateExpression.TokenType.isOperand.getter() & 1) == 0)
    {
      LOBYTE(v73) = v5[v23];
      v74 = 16;
      if ((static CalculateExpression.TokenType.== infix(_:_:)(&v73, &v74) & 1) == 0)
      {
        LOBYTE(v75[0]) = v5[v23];
        LOBYTE(v73) = 8;
        if ((static CalculateExpression.TokenType.== infix(_:_:)(v75, &v73) & 1) == 0)
        {
          LOBYTE(v75[0]) = v5[v23];
          LOBYTE(v73) = 9;
          if ((static CalculateExpression.TokenType.== infix(_:_:)(v75, &v73) & 1) == 0)
          {
            goto LABEL_66;
          }
        }
      }
    }

    v2 = v10 + 1;
    if (!__OFADD__(v10, 1))
    {
      v4 = *(*v6 + 408);
      v5 = (*v6 + 408);

      v8 = (v4)(v75);
      if (!(*v65 >> 62))
      {
        if (*((*v65 & 0xFFFFFFFFFFFFFF8) + 0x10) < v2)
        {
LABEL_74:
          __break(1u);
          goto LABEL_75;
        }

        goto LABEL_64;
      }

LABEL_73:
      if (sub_1C1F52994() < v2)
      {
        goto LABEL_74;
      }

LABEL_64:
      if (v2 < 0)
      {
LABEL_75:
        __break(1u);
LABEL_76:
        if (sub_1C1F52994() < 0)
        {
          __break(1u);
          goto LABEL_78;
        }

LABEL_10:
        sub_1C1E98664(0, 0, v4);

        (v5)(v75, 0);
        LOBYTE(v75[0]) = 16;
        v16 = sub_1C1E7DD60();
        CalculateExpression.RichToken.__allocating_init(text:type:isImplicit:)(0, 0, v75, v16 & 1);
        v4 = v7(v75);
        v18 = v17;
        MEMORY[0x1C6911980]();
        if (*((*v18 & 0xFFFFFFFFFFFFFF8) + 0x10) < *((*v18 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
LABEL_11:
          sub_1C1F52724();
          (v4)(v75, 0);
          goto LABEL_14;
        }

LABEL_78:
        sub_1C1F526E4();
        goto LABEL_11;
      }

      sub_1C1E98664(v2, v2, v7);

      v8(v75, 0);
LABEL_66:

      sub_1C1E98278(v6, v10, v9, v68);
      return 1;
    }

LABEL_72:
    __break(1u);
    goto LABEL_73;
  }

  v55 = (*(*v23 + 304))();
  if (!v55)
  {
LABEL_51:
    v73 = v71;
    sub_1C1EBA588(&v73);
    v58 = swift_allocObject();
    *(v58 + 16) = xmmword_1C1F56430;
    LOBYTE(v75[0]) = 16;
    v59 = sub_1C1E7DD60();
    v4 = v71;
    v60 = v70;
    *(v58 + 32) = CalculateExpression.RichToken.__allocating_init(text:type:isImplicit:)(0, 0, v75, v59 & 1);
    *(v58 + 40) = v7;
    v8 = (v71 + 1);
    if (__OFADD__(v71, 1))
    {
      __break(1u);
    }

    else
    {
      v61 = *(*v6 + 408);

      v62 = v61;
      v4 = v61(v75);
      sub_1C1E9B764(v8, v8, v58);

      (v4)(v75, 0);
      LOBYTE(v75[0]) = 15;
      v63 = sub_1C1E7DD60();
      v58 = CalculateExpression.RichToken.__allocating_init(text:type:isImplicit:)(0, 0, v75, v63 & 1);
      v60 = v73;
      v8 = v62(v75);
      if (!(*v64 >> 62))
      {
        result = *((*v64 & 0xFFFFFFFFFFFFFF8) + 0x10);
        goto LABEL_54;
      }
    }

    result = sub_1C1F52994();
LABEL_54:
    v9 = v69;
    if (result < v60)
    {
      __break(1u);
    }

    else if ((v60 & 0x8000000000000000) == 0)
    {
      sub_1C1E98664(v60, v60, v58);

      v8(v75, 0);
      v10 = v71;
      goto LABEL_57;
    }

    __break(1u);
    return result;
  }

  v56 = v55;
  if (((*(*v55 + 576))(v55) & 1) == 0)
  {
    v57 = (*(*v56 + 568))();

    if (v57)
    {
LABEL_50:

      v38 = v6;
      v39 = v71;
      v40 = v9;
      v41 = v68;
      goto LABEL_32;
    }

    goto LABEL_51;
  }

  sub_1C1E98278(v6, v71, v9, v68);
LABEL_30:

  return 0;
}

uint64_t CalculateExpression.PowerOperation.deinit()
{
  v0 = CalculateExpression.Operation.deinit();

  return v0;
}

uint64_t CalculateExpression.PowerOperation.__deallocating_deinit()
{
  v0 = CalculateExpression.Operation.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 32, 7);
}

uint64_t CalculateExpression.EqualsOperation.__deallocating_deinit()
{
  v0 = CalculateExpression.Operation.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 16, 7);
}

uint64_t sub_1C1EF18E4()
{
  type metadata accessor for CalculateExpression.RichToken(0);
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v5 = 10;

  v3 = sub_1C1E7DD60();
  return CalculateExpression.RichToken.__allocating_init(text:type:isImplicit:)(v2, v1, &v5, v3 & 1);
}

uint64_t sub_1C1EF194C(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16) != 1)
  {
    return 0;
  }

  v3 = v2;
  CalculateExpression.RichExpression.editingToken(matching:)(sub_1C1EF2BDC, v116);
  v5 = v116[0];
  if (!v116[0])
  {
    return 0;
  }

  v6 = v116[1];
  v113 = v116[2];
  v7 = v116[3];
  v8 = *(*v116[0] + 416);

  v110 = v8;
  v111 = v6;
  v112 = v8(v6);
  v9 = (*(*v3 + 144))();
  v10 = (*(*v9 + 280))();
  if (v10)
  {
    v11 = v10;
    v12 = (*(*a1 + 176))();
    (*(*v11 + 184))(v12);
  }

  v13 = (*(*v9 + 304))(v10);
  if (v13)
  {
    v14 = v13;
    v15 = (*(*a1 + 176))();
    (*(*v14 + 184))(v15);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF21130, &unk_1C1F56A00);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1C1F56430;
  *(v16 + 32) = v9;
  v17 = type metadata accessor for CalculateExpression.RichToken(0);
  LOBYTE(v116[0]) = 15;

  v18 = sub_1C1E7DD60();
  *(v16 + 40) = CalculateExpression.RichToken.__allocating_init(text:type:isImplicit:)(0, 0, v116, v18 & 1);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C1F563C0;
  LOBYTE(v116[0]) = 16;
  *(inited + 32) = CalculateExpression.RichToken.__allocating_init(text:type:isImplicit:)(0, 0, v116, 1);
  v116[0] = v16;

  v20 = sub_1C1E8CECC(inited);
  v21 = v116[0];
  v22 = (*(*v9 + 352))(v20);
  if (__OFADD__(v113, v22))
  {
    goto LABEL_92;
  }

  if (v113 + v22 >= *sub_1C1ED528C())
  {

    v24 = v5;
    v25 = v6;
    v26 = v113;
    v27 = v7;
LABEL_15:
    sub_1C1E98278(v24, v25, v26, v27);
    return 0;
  }

  v109 = v7;
  if (!v112 || ((*(*v5 + 584))() & 1) != 0 && ((*(*a1 + 224))() & 1) != 0)
  {

    (*(*v5 + 400))(v21);
LABEL_20:

    goto LABEL_21;
  }

  if ((*(*a1 + 224))())
  {

    v28 = (*v5 + 408);
    v29 = *v28;
    v30 = (*v28)(v116);
    sub_1C1E9B764(0, 0, v16);

    v30(v116, 0);
    LOBYTE(v116[0]) = 16;
    v31 = sub_1C1E7DD60();
    CalculateExpression.RichToken.__allocating_init(text:type:isImplicit:)(0, 0, v116, v31 & 1);
    v32 = v29(v116);
    v34 = v33;
    MEMORY[0x1C6911980]();
    if (*((*v34 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v34 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1C1F526E4();
    }

    sub_1C1F52724();
    v32(v116, 0);
    (*(*a1 + 232))(0);
    goto LABEL_20;
  }

  v39 = OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type;
  v40 = v112;
  LOBYTE(v116[0]) = *(v112 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type);
  if (CalculateExpression.TokenType.isOperand.getter())
  {
    goto LABEL_25;
  }

  LOBYTE(v114) = *(v112 + v39);
  v115 = 7;
  if (static CalculateExpression.TokenType.== infix(_:_:)(&v114, &v115))
  {
    if (__OFSUB__(v6, 1))
    {
      goto LABEL_98;
    }

    v53 = v110(v6 - 1);
    if (v53)
    {
      v54 = *(v53 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type);

      LOBYTE(v114) = v54;
      v40 = v112;
      if (CalculateExpression.TokenType.isOperand.getter())
      {
LABEL_25:

        v21 = v110;
        v3 = v111;
        v39 = v111;
        while (1)
        {
          v40 = v39;
          if (__OFSUB__(v39--, 1))
          {
            break;
          }

          v42 = v110(v39);
          if (v42)
          {
            v43 = *(v42 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type);

            LOBYTE(v116[0]) = v43;
            if (CalculateExpression.TokenType.isOperand.getter())
            {
              continue;
            }
          }

          v44 = v110(v39);
          if (!v44)
          {
            goto LABEL_38;
          }

          v45 = *(v44 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type);

          if (v45 == 53)
          {
            goto LABEL_38;
          }

          LOBYTE(v116[0]) = v45;
          LOBYTE(v114) = 4;
          sub_1C1E9019C();
          if ((sub_1C1F52414() & 1) == 0)
          {
            goto LABEL_38;
          }

          if (v40 == 1)
          {
            goto LABEL_39;
          }

          if (__OFSUB__(v40, 2))
          {
            goto LABEL_104;
          }

          v46 = v110(v40 - 2);
          if (v46)
          {
            v47 = *(v46 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type);

            LOBYTE(v116[0]) = v47;
            if ((CalculateExpression.TokenType.isOperator.getter() & 1) == 0)
            {
              v39 = v40;
            }
          }

          else
          {
LABEL_38:
            v39 = v40;
          }

LABEL_39:
          LOBYTE(v116[0]) = 16;
          v48 = sub_1C1E7DD60();
          v49 = CalculateExpression.RichToken.__allocating_init(text:type:isImplicit:)(0, 0, v116, v48 & 1);
          v17 = v111 + 1;
          if (__OFADD__(v111, 1))
          {
            __break(1u);
          }

          else
          {
            v21 = v49;
            v50 = (*v5 + 408);
            v40 = *v50;
            v3 = (*v50)(v116);
            if (!(*v51 >> 62))
            {
              if (*((*v51 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v17)
              {
                goto LABEL_42;
              }

LABEL_96:
              __break(1u);
              goto LABEL_97;
            }
          }

          if (sub_1C1F52994() < v17)
          {
            goto LABEL_96;
          }

LABEL_42:
          if ((v17 & 0x8000000000000000) == 0)
          {
            sub_1C1E98664(v17, v17, v21);

            (v3)(v116, 0);
            v52 = v40(v116);
            sub_1C1E9B764(v39, v39, v16);

            v52(v116, 0);
            goto LABEL_44;
          }

LABEL_97:
          __break(1u);
LABEL_98:
          __break(1u);
          goto LABEL_99;
        }

        __break(1u);
LABEL_92:
        __break(1u);
LABEL_93:
        v40 = v109;
        while (1)
        {
          v17 = v108;

          v105 = (*v5 + 408);
          v107 = *v105;
          v93 = (*v105)(v116);
          sub_1C1E98338(v3);

          v93(v116, 0);
          while (1)
          {
            v94 = (v21)(v17);
            if (!v94)
            {
LABEL_140:

              goto LABEL_77;
            }

            v80 = v94;
            v95 = v107(v116);
            v97 = v96;
            v16 = *v96;
            isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
            *v97 = v16;
            if ((isUniquelyReferenced_nonNull_bridgeObject & 1) == 0 || (v16 & 0x8000000000000000) != 0 || (v16 & 0x4000000000000000) != 0)
            {
              v16 = sub_1C1E98444(v16);
              *v97 = v16;
            }

            v40 = (v16 & 0xFFFFFFFFFFFFFF8);
            v99 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (v17 >= v99)
            {
              break;
            }

            v100 = v99 - 1;
            memmove(v40 + 8 * v17 + 32, v40 + 8 * v17 + 40, 8 * (v99 - 1 - v108));
            *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10) = v100;
            *v97 = v16;
            v17 = v108;

            v95(v116, 0);
            LOBYTE(v116[0]) = *(v80 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type);
            v115 = 15;
            v101 = static CalculateExpression.TokenType.== infix(_:_:)(v116, &v115);

            v40 = v109;
            v21 = v110;
            v3 = v111;
            if (v101)
            {
              goto LABEL_140;
            }
          }

          __break(1u);
LABEL_143:
          v81 = MEMORY[0x1C6911DB0](0, v80);
LABEL_89:

          v106 = (*(*v81 + 232))(v82);
          v39 = v83;

LABEL_109:
          if (v102)
          {
            v84 = MEMORY[0x1C6911DB0](0, v16);
          }

          else
          {
            if (!*(v103 + 16))
            {
              goto LABEL_147;
            }

            v84 = *(v16 + 32);
          }

          v85 = (*(*v84 + 304))();

          if (!v85)
          {
            v90 = 0;
            goto LABEL_123;
          }

          v87 = (*(*v85 + 392))(v86);

          if (v87 >> 62)
          {
            result = sub_1C1F52994();
            if (!result)
            {
LABEL_122:

              v90 = 0;
              v85 = 0;
              goto LABEL_123;
            }
          }

          else
          {
            result = *((v87 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (!result)
            {
              goto LABEL_122;
            }
          }

          if ((v87 & 0xC000000000000001) != 0)
          {
            v88 = MEMORY[0x1C6911DB0](0, v87);
          }

          else
          {
            if (!*((v87 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_146;
            }

            v88 = *(v87 + 32);
          }

          v90 = (*(*v88 + 232))(v89);
          v85 = v91;

LABEL_123:
          if (v39)
          {
            if (!v85)
            {
              goto LABEL_129;
            }

            if (v106 == v90 && v39 == v85)
            {
            }

            else
            {
              v92 = sub_1C1F52C64();

              if ((v92 & 1) == 0)
              {

                v3 = v111;
                goto LABEL_72;
              }
            }
          }

          else if (v85)
          {
LABEL_129:

            v3 = v111;
            goto LABEL_72;
          }

          v21 = v110;
          v3 = v111;
        }
      }
    }

    else
    {
      v40 = v112;
    }
  }

  LOBYTE(v116[0]) = *(v40 + v39);
  LOBYTE(v114) = 16;
  if ((static CalculateExpression.TokenType.== infix(_:_:)(v116, &v114) & 1) == 0)
  {
    LOBYTE(v116[0]) = *(v40 + v39);
    LOBYTE(v114) = 7;
    if ((static CalculateExpression.TokenType.== infix(_:_:)(v116, &v114) & 1) == 0)
    {
      LOBYTE(v116[0]) = *(v40 + v39);
      LOBYTE(v114) = 8;
      if ((static CalculateExpression.TokenType.== infix(_:_:)(v116, &v114) & 1) == 0)
      {

        v40 = (v111 + 1);
        if (__OFADD__(v111, 1))
        {
          goto LABEL_103;
        }

        v67 = (*v5 + 408);
        v68 = *v67;
        v69 = (*v67)(v116);
        sub_1C1E9B764(v40, v40, v21);

        v69(v116, 0);
        LOBYTE(v116[0]) = *(v112 + v39);
        LOBYTE(v114) = 18;
        if (static CalculateExpression.TokenType.== infix(_:_:)(v116, &v114))
        {
          v70 = v68(v116);
          sub_1C1E98338(v111);

          v70(v116, 0);

          v35 = v5;
          v36 = v111;
          goto LABEL_22;
        }

LABEL_44:

LABEL_21:

        v35 = v5;
        v36 = v111;
LABEL_22:
        v37 = v113;
        v38 = v109;
LABEL_23:
        sub_1C1E98278(v35, v36, v37, v38);
        return 1;
      }
    }
  }

  v39 = v111;
  v114 = v111;
  sub_1C1EBA588(&v114);
  v108 = v114;
  if ((v114 & 0x8000000000000000) != 0)
  {

    v24 = v5;
    v25 = v111;
    v26 = v113;
    v27 = v109;
    goto LABEL_15;
  }

  v55 = *(v3 + 32) == 1;
  v3 = v111;
  if (v55)
  {
    v56 = v110(v114);
    if (v56)
    {
      v57 = v56;
      LOBYTE(v116[0]) = *(v56 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type);
      v115 = 10;
      if (static CalculateExpression.TokenType.== infix(_:_:)(v116, &v115))
      {
        v58 = *(*v57 + 232);
        v40 = (*v57 + 232);
        v59 = v58();
        v39 = v60;
        if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v105 = v58;
          v106 = v59;
          v102 = v16 & 0xC000000000000001;
          v103 = v16 & 0xFFFFFFFFFFFFFF8;
          v104 = v57;
          if ((v16 & 0xC000000000000001) == 0)
          {
            v61 = *(v16 + 32);

            goto LABEL_62;
          }

          goto LABEL_105;
        }
      }

      goto LABEL_71;
    }
  }

  while (1)
  {
LABEL_72:
    LOBYTE(v116[0]) = 16;
    v71 = sub_1C1E7DD60();
    v72 = CalculateExpression.RichToken.__allocating_init(text:type:isImplicit:)(0, 0, v116, v71 & 1);
    v21 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
LABEL_99:
      __break(1u);
    }

    else
    {
      v39 = v72;
      v73 = (*v5 + 408);
      v40 = *v73;
      v17 = (*v73)(v116);
      if (!(*v74 >> 62))
      {
        if (*((*v74 & 0xFFFFFFFFFFFFFF8) + 0x10) < v21)
        {
          goto LABEL_101;
        }

        goto LABEL_75;
      }
    }

    if (sub_1C1F52994() < v21)
    {
LABEL_101:
      __break(1u);
      goto LABEL_102;
    }

LABEL_75:
    if ((v21 & 0x8000000000000000) == 0)
    {
      sub_1C1E98664(v21, v21, v39);

      (v17)(v116, 0);
      v75 = v40(v116);
      sub_1C1E9B764(v108, v108, v16);

      v75(v116, 0);
      v40 = v109;
LABEL_77:

      v35 = v5;
      v36 = v3;
      v37 = v113;
      v38 = v40;
      goto LABEL_23;
    }

LABEL_102:
    __break(1u);
LABEL_103:
    __break(1u);
LABEL_104:
    __break(1u);
LABEL_105:
    v62 = MEMORY[0x1C6911DB0](0, v16);
    v61 = v62;
LABEL_62:
    v63 = (*(*v61 + 232))(v62);
    v65 = v64;

    if (v106 == v63 && v39 == v65)
    {
      break;
    }

    v76 = sub_1C1F52C64();

    v3 = v111;
    if (v76)
    {
      goto LABEL_79;
    }

LABEL_71:
  }

  v3 = v111;
LABEL_79:
  if ((v105)(v66) == 1885957222 && v77 == 0xE400000000000000)
  {

    goto LABEL_83;
  }

  v79 = sub_1C1F52C64();

  v21 = v110;
  if ((v79 & 1) == 0)
  {
    goto LABEL_93;
  }

LABEL_83:
  result = (*(*v104 + 304))(v78);
  v40 = v109;
  if (!result)
  {
LABEL_108:
    v106 = 0;
    v39 = 0;
    goto LABEL_109;
  }

  v80 = (*(*result + 392))(result);

  if (v80 >> 62)
  {
    result = sub_1C1F52994();
    if (result)
    {
      goto LABEL_86;
    }

    goto LABEL_107;
  }

  result = *((v80 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
LABEL_107:

    goto LABEL_108;
  }

LABEL_86:
  if ((v80 & 0xC000000000000001) != 0)
  {
    goto LABEL_143;
  }

  if (*((v80 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v81 = *(v80 + 32);

    goto LABEL_89;
  }

  __break(1u);
LABEL_146:
  __break(1u);
LABEL_147:
  __break(1u);
  return result;
}

uint64_t sub_1C1EF2BDC(uint64_t *a1)
{
  v1 = *a1;
  if ((*(**a1 + 568))() & 1) != 0 || ((*(*v1 + 576))() & 1) != 0 || ((*(*v1 + 552))())
  {
    return 1;
  }

  else
  {
    return (*(*v1 + 464))() & 1;
  }
}

uint64_t CalculateExpression.FunctionOperation.deinit()
{
  v0 = CalculateExpression.Operation.deinit();

  return v0;
}

uint64_t CalculateExpression.FunctionOperation.__deallocating_deinit()
{
  v0 = CalculateExpression.Operation.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 33, 7);
}

uint64_t CalculateDocument.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9Calculate17CalculateDocument_id;
  v4 = sub_1C1F52034();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_1C1EF2E58@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 168))();
  *a2 = result;
  return result;
}

uint64_t sub_1C1EF2EA4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  KeyPath = swift_getKeyPath();
  v6[2] = v3;
  v6[3] = v2;
  (*(*v3 + 512))(KeyPath, sub_1C1E76618, v6, MEMORY[0x1E69E7CA8] + 8);
}

uint64_t sub_1C1EF2F68(uint64_t a1)
{
  swift_getKeyPath();
  v4 = v1;
  v5 = a1;
  (*(*v1 + 512))();
}

uint64_t sub_1C1EF3010@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 216))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1C1EF3110@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 264))();
  *a2 = result;
  return result;
}

uint64_t sub_1C1EF3164(void *a1, uint64_t a2)
{
  v2 = *(**a2 + 272);

  return v2(v3);
}

uint64_t (*sub_1C1EF3210(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 504))(KeyPath);

  v4[5] = OBJC_IVAR____TtC9Calculate17CalculateDocument___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1C1E75610(&qword_1EDC2EB70, type metadata accessor for CalculateDocument, &protocol conformance descriptor for CalculateDocument);
  sub_1C1F52124();

  v4[7] = sub_1C1EF30B0(v4);
  return sub_1C1EF3360;
}

uint64_t CalculateDocument.__allocating_init()()
{
  v0 = swift_allocObject();
  sub_1C1F52024();
  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + OBJC_IVAR____TtC9Calculate17CalculateDocument__options) = sub_1C1E74EC0(MEMORY[0x1E69E7CC0]);
  *(v0 + OBJC_IVAR____TtC9Calculate17CalculateDocument__synchronous) = 1;
  *(v0 + OBJC_IVAR____TtC9Calculate17CalculateDocument__declaredSymbols) = MEMORY[0x1E69E7CD0];
  *(v0 + OBJC_IVAR____TtC9Calculate17CalculateDocument__expressions[0]) = v1;
  *(v0 + OBJC_IVAR____TtC9Calculate17CalculateDocument__anonymizedSymbols) = sub_1C1E75514(v1);
  *(v0 + OBJC_IVAR____TtC9Calculate17CalculateDocument__isEvaluating) = 0;
  sub_1C1F52134();
  return v0;
}

uint64_t CalculateDocument.init()(uint64_t a1)
{
  sub_1C1F52024();
  v2 = MEMORY[0x1E69E7CC0];
  *(v1 + OBJC_IVAR____TtC9Calculate17CalculateDocument__options) = sub_1C1E74EC0(MEMORY[0x1E69E7CC0]);
  *(v1 + OBJC_IVAR____TtC9Calculate17CalculateDocument__synchronous) = 1;
  *(v1 + OBJC_IVAR____TtC9Calculate17CalculateDocument__declaredSymbols) = MEMORY[0x1E69E7CD0];
  *(v1 + OBJC_IVAR____TtC9Calculate17CalculateDocument__expressions[0]) = v2;
  *(v1 + OBJC_IVAR____TtC9Calculate17CalculateDocument__anonymizedSymbols) = sub_1C1E75514(v2);
  *(v1 + OBJC_IVAR____TtC9Calculate17CalculateDocument__isEvaluating) = 0;
  sub_1C1F52134();
  return v1;
}

uint64_t sub_1C1EF3514(uint64_t a1, uint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t), uint64_t a4, uint64_t a5)
{
  v8 = *a2;
  swift_beginAccess();

  LOBYTE(a3) = a3(v9, a1);

  if (a3)
  {
    *(v5 + v8) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v12.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v5 + 512))(v12);
  }
}

uint64_t sub_1C1EF366C(uint64_t result, void *a2, uint64_t a3, uint64_t a4)
{
  if (*(v4 + *a2) == (result & 1))
  {
    *(v4 + *a2) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v6.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v4 + 512))(v6);
  }

  return result;
}

uint64_t CalculateDocument.__allocating_init(expressions:options:)(unint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  CalculateDocument.init(expressions:options:)(a1, a2);
  return v4;
}

uint64_t CalculateDocument.init(expressions:options:)(unint64_t a1, uint64_t a2)
{
  sub_1C1F52024();
  v5 = MEMORY[0x1E69E7CC0];
  *(v2 + OBJC_IVAR____TtC9Calculate17CalculateDocument__options) = sub_1C1E74EC0(MEMORY[0x1E69E7CC0]);
  *(v2 + OBJC_IVAR____TtC9Calculate17CalculateDocument__synchronous) = 1;
  *(v2 + OBJC_IVAR____TtC9Calculate17CalculateDocument__declaredSymbols) = MEMORY[0x1E69E7CD0];
  *(v2 + OBJC_IVAR____TtC9Calculate17CalculateDocument__expressions[0]) = v5;
  *(v2 + OBJC_IVAR____TtC9Calculate17CalculateDocument__anonymizedSymbols) = sub_1C1E75514(v5);
  *(v2 + OBJC_IVAR____TtC9Calculate17CalculateDocument__isEvaluating) = 0;
  sub_1C1F52134();
  KeyPath = swift_getKeyPath();
  v9 = v2;
  v10 = a2;
  (*(*v2 + 512))(KeyPath, sub_1C1E76618, &v8, MEMORY[0x1E69E7CA8] + 8);

  sub_1C1E76674(a1);
  sub_1C1E76DC0(v5);
  return v2;
}

uint64_t CalculateDocument.__allocating_init(expressions:options:synchronous:)(unint64_t a1, uint64_t a2, char a3)
{
  v6 = swift_allocObject();
  CalculateDocument.init(expressions:options:synchronous:)(a1, a2, a3);
  return v6;
}

uint64_t (*sub_1C1EF3958(void *a1))(uint64_t *a1, char a2)
{
  v2 = OBJC_IVAR____TtC9Calculate17CalculateDocument__expressions[0];
  a1[2] = OBJC_IVAR____TtC9Calculate17CalculateDocument__expressions[0];
  *a1 = *(v1 + v2);
  a1[1] = v1;

  return sub_1C1EF39B0;
}

uint64_t sub_1C1EF39B0(uint64_t *a1, char a2)
{
  v3 = a1[1];
  v2 = a1[2];
  v4 = *(v3 + v2);
  *(v3 + v2) = *a1;
  if (a2)
  {

    sub_1C1E76DC0(v4);
  }

  else
  {
    sub_1C1E76DC0(v4);
  }
}

uint64_t sub_1C1EF3A20@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 336))();
  *a2 = result;
  return result;
}

uint64_t sub_1C1EF3A74(void *a1, uint64_t a2)
{
  v2 = *(**a2 + 344);

  return v2(v3);
}

uint64_t (*sub_1C1EF3AD0(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 504))(KeyPath);

  v4[5] = OBJC_IVAR____TtC9Calculate17CalculateDocument___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1C1E75610(&qword_1EDC2EB70, type metadata accessor for CalculateDocument, &protocol conformance descriptor for CalculateDocument);
  sub_1C1F52124();

  v4[7] = sub_1C1EF3958(v4);
  return sub_1C1EF3C20;
}

uint64_t sub_1C1EF3C40(uint64_t a1, uint64_t *a2)
{
  swift_getKeyPath();
  (*(*v2 + 504))();

  swift_beginAccess();
}

uint64_t sub_1C1EF3CCC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  (*(*v3 + 504))();

  v4 = OBJC_IVAR____TtC9Calculate17CalculateDocument__anonymizedSymbols;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_1C1EF3D98(uint64_t a1)
{
  v2 = v1;
  swift_getKeyPath();
  v3 = (*v1 + 504);
  v4 = *v3;
  (*v3)();

  v5 = OBJC_IVAR____TtC9Calculate17CalculateDocument__anonymizedSymbols;
  v6 = swift_beginAccess();
  if (*(*&v1[v5] + 16))
  {
    goto LABEL_21;
  }

  v42 = v5;
  v7 = (*(*v1 + 264))(v6);
  v8 = *(v7 + 16);
  if (!v8)
  {
    v9 = MEMORY[0x1E69E7CC0];
LABEL_6:
    v11 = v5;
    v46 = v9;
    sub_1C1EF6464(&v46);

    v43 = v46;
    v41 = *(v46 + 2);
    if (v41)
    {
      v9 = 0;
      v12 = v46 + 40;
      v40 = v4;
      while (v9 < *(v43 + 2))
      {
        v44 = v9;
        v14 = sub_1C1F52464();
        v16 = v15;
        swift_getKeyPath();
        v4();

        v46 = v2;
        swift_getKeyPath();
        v9 = sub_1C1E75610(&qword_1EDC2EB70, type metadata accessor for CalculateDocument, &protocol conformance descriptor for CalculateDocument);
        sub_1C1F52124();

        swift_beginAccess();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v18 = *&v2[v11];
        *&v2[v11] = 0x8000000000000000;
        v20 = sub_1C1EAC150(v14, v16);
        v21 = v18[2];
        v22 = (v19 & 1) == 0;
        v23 = v21 + v22;
        if (__OFADD__(v21, v22))
        {
          goto LABEL_26;
        }

        v24 = v19;
        if (v18[3] >= v23)
        {
          v9 = v44;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_1C1EEAAD0();
          }
        }

        else
        {
          sub_1C1EE9F40(v23, isUniquelyReferenced_nonNull_native);
          v25 = sub_1C1EAC150(v14, v16);
          v9 = v44;
          if ((v24 & 1) != (v26 & 1))
          {
            goto LABEL_29;
          }

          v20 = v25;
        }

        ++v9;
        if (v24)
        {

          v13 = v18;
          *(v18[7] + 8 * v20) = v9;
        }

        else
        {
          v13 = v18;
          v18[(v20 >> 6) + 8] |= 1 << v20;
          v27 = (v18[6] + 16 * v20);
          *v27 = v14;
          v27[1] = v16;
          *(v18[7] + 8 * v20) = v9;
          v28 = v18[2];
          v29 = __OFADD__(v28, 1);
          v30 = v28 + 1;
          if (v29)
          {
            goto LABEL_27;
          }

          v18[2] = v30;
        }

        v11 = v42;
        *&v2[v42] = v13;
        swift_endAccess();
        v46 = v2;
        swift_getKeyPath();
        sub_1C1F52114();

        v12 += 16;
        v4 = v40;
        if (v41 == v9)
        {
          goto LABEL_20;
        }
      }

      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
      goto LABEL_28;
    }

LABEL_20:

    v5 = v11;
LABEL_21:
    v31 = sub_1C1F52464();
    v33 = v32;
    swift_getKeyPath();
    v4();

    v34 = *&v2[v5];
    if (*(v34 + 16) && (, v35 = sub_1C1EAC150(v31, v33), v37 = v36, , (v37 & 1) != 0))
    {
      v38 = *(*(v34 + 56) + 8 * v35);

      return v38;
    }

    else
    {

      return 0;
    }
  }

  v9 = sub_1C1EF64D0(v8, 0);
  v45 = sub_1C1EF7C70(&v46, (v9 + 32), v8, v7);
  v10 = v46;

  sub_1C1E96B60(v10);
  if (v45 == v8)
  {
    goto LABEL_6;
  }

LABEL_28:
  __break(1u);
LABEL_29:
  sub_1C1F52CA4();
  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_1C1EF4278@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 456))();
  *a2 = result & 1;
  return result;
}

uint64_t (*sub_1C1EF42F8(uint64_t *a1))()
{
  v2 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = sub_1C1F52034();
  v4[4] = v5;
  v6 = *(v5 - 8);
  v7 = v6;
  v4[5] = v6;
  if (v2)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(*(v6 + 64));
  }

  v9 = v8;
  v4[6] = v8;
  (*(v7 + 16))();
  v4[7] = sub_1C1EF70C4(v4, v9);
  return sub_1C1EF4410;
}

void sub_1C1EF4410(void *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 48);
  v3 = *(*a1 + 32);
  v4 = *(*a1 + 40);
  (*(*a1 + 56))(*a1, 0);
  (*(v4 + 8))(v2, v3);
  free(v2);

  free(v1);
}

uint64_t sub_1C1EF4488(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF211D0, &qword_1C1F568C0);
    v2 = sub_1C1F52BE4();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = *(*(a1 + 48) + 8 * v13);
    sub_1C1EB0E00(*(a1 + 56) + 32 * v13, v34 + 8);
    *&v34[0] = v14;
    v32[0] = v34[0];
    v32[1] = v34[1];
    v33 = v35;
    *&v31[0] = v14;
    type metadata accessor for CalculateKey();
    v15 = v14;
    swift_dynamicCast();
    sub_1C1EB1C58((v32 + 8), v26);
    v27 = v23;
    v28 = v24;
    v29 = v25;
    sub_1C1EB1C58(v26, v30);
    v23 = v27;
    v24 = v28;
    v25 = v29;
    sub_1C1EB1C58(v30, v31);
    result = sub_1C1F529E4();
    v16 = -1 << *(v2 + 32);
    v17 = result & ~v16;
    v18 = v17 >> 6;
    if (((-1 << v17) & ~*(v7 + 8 * (v17 >> 6))) == 0)
    {
      v19 = 0;
      v20 = (63 - v16) >> 6;
      while (++v18 != v20 || (v19 & 1) == 0)
      {
        v21 = v18 == v20;
        if (v18 == v20)
        {
          v18 = 0;
        }

        v19 |= v21;
        v22 = *(v7 + 8 * v18);
        if (v22 != -1)
        {
          v10 = __clz(__rbit64(~v22)) + (v18 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v17) & ~*(v7 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v23;
    *(v11 + 16) = v24;
    *(v11 + 32) = v25;
    result = sub_1C1EB1C58(v31, (*(v2 + 56) + 32 * v10));
    ++*(v2 + 16);
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_1C1EF4750(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  v36 = sub_1C1F52034();
  v8 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v11 = *(a1 + 16);
  if (v11 >> 62)
  {
    goto LABEL_21;
  }

  for (i = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10); i; v11 = v24)
  {
    v31 = a4;
    v32 = a3;
    v34 = v11 & 0xFFFFFFFFFFFFFF8;
    v35 = v11 & 0xC000000000000001;
    ++v8;
    v37 = v11;

    v13 = 0;
    a4 = 0;
LABEL_4:
    v33 = v13;
    v14 = a4;
    while (1)
    {
      if (v35)
      {
        v11 = MEMORY[0x1C6911DB0](v14, v37);
        a4 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        goto LABEL_11;
      }

      if (v14 >= *(v34 + 16))
      {
        goto LABEL_20;
      }

      a4 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

LABEL_11:
      CalculateExpression.id.getter(v10);
      swift_beginAccess();
      a3 = *(a2 + 16);
      if (!*(a3 + 16) || (v15 = sub_1C1EB4BE4(v10), (v16 & 1) == 0))
      {
        swift_endAccess();

        v11 = (*v8)(v10, v36);
LABEL_17:
        v13 = 1;
        if (a4 != i)
        {
          goto LABEL_4;
        }

LABEL_18:

        a3 = v32;
        goto LABEL_23;
      }

      v17 = *(a3 + 56) + 120 * v15;
      v19 = *(v17 + 32);
      v18 = *(v17 + 48);
      v20 = *(v17 + 16);
      v39[0] = *v17;
      v39[1] = v20;
      v39[2] = v19;
      v39[3] = v18;
      v21 = *(v17 + 64);
      v22 = *(v17 + 80);
      v23 = *(v17 + 96);
      v40 = *(v17 + 112);
      v39[5] = v22;
      v39[6] = v23;
      v39[4] = v21;
      swift_endAccess();
      sub_1C1EF816C(v39, &v38);
      (*v8)(v10, v36);
      a3 = sub_1C1EE7CA4(v39);
      sub_1C1EF81A4(v39);

      if (a3)
      {
        goto LABEL_17;
      }

      ++v14;
      if (a4 == i)
      {
        LOBYTE(v13) = v33;
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    v24 = v11;
    i = sub_1C1F52994();
  }

  LOBYTE(v13) = 0;
LABEL_23:
  v25 = *(*a3 + 272);

  v25(v26);
  v27 = sub_1C1E75514(MEMORY[0x1E69E7CC0]);
  result = sub_1C1EF34D8(v27);
  if ((*(a3 + OBJC_IVAR____TtC9Calculate17CalculateDocument__isEvaluating) & 1) == 0)
  {
    *(a3 + OBJC_IVAR____TtC9Calculate17CalculateDocument__isEvaluating) = 0;
    if ((v13 & 1) == 0)
    {
      return result;
    }

    return (*(*a3 + 488))(result);
  }

  KeyPath = swift_getKeyPath();
  v30.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
  *(&v31 - 2) = a3;
  *(&v31 - 8) = 0;
  (*(*a3 + 512))(v30);

  if (v13)
  {
    return (*(*a3 + 488))(result);
  }

  return result;
}

uint64_t sub_1C1EF4B44(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t CalculateDocument.deinit()
{
  v1 = OBJC_IVAR____TtC9Calculate17CalculateDocument_id;
  v2 = sub_1C1F52034();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = OBJC_IVAR____TtC9Calculate17CalculateDocument___observationRegistrar;
  v4 = sub_1C1F52144();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  return v0;
}

uint64_t CalculateDocument.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC9Calculate17CalculateDocument_id;
  v2 = sub_1C1F52034();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = OBJC_IVAR____TtC9Calculate17CalculateDocument___observationRegistrar;
  v4 = sub_1C1F52144();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v5, v6);
}

uint64_t sub_1C1EF4D84@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC9Calculate17CalculateDocument_id;
  v5 = sub_1C1F52034();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_1C1EF4E1C(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_13:
    v12 = v9 | (v4 << 6);
    v13 = (*(v3 + 48) + 16 * v12);
    v14 = *v13;
    v15 = v13[1];
    v16 = *(*(v3 + 56) + 8 * v12);

    v17 = sub_1C1EAC150(v14, v15);
    v19 = v18;

    if ((v19 & 1) == 0 || *(*(a2 + 56) + 8 * v17) != v16)
    {
      return 0;
    }
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v11 = *(v3 + 64 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C1EF4F50(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = sub_1C1EAC150(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *v2;
  v11 = *v3;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_1C1EF62F4();
    v8 = v11;
  }

  v9 = *(*(v8 + 56) + 8 * v6);
  sub_1C1EC22D4(v6, v8);
  *v3 = v8;
  return v9;
}

uint64_t sub_1C1EF4FE8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_1C1F52034();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF21448, &unk_1C1F58920);
  v52 = v4;
  result = sub_1C1F52BC4();
  v11 = result;
  if (*(v9 + 16))
  {
    v65 = v8;
    v48 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v49 = v6 + 16;
    v53 = (v6 + 32);
    v18 = result + 64;
    v51 = v9;
    v50 = v6;
    while (v16)
    {
      v23 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v26 = v23 | (v12 << 6);
      v27 = *(v9 + 48);
      v64 = *(v6 + 72);
      v28 = v27 + v64 * v26;
      if (v52)
      {
        (*(v6 + 32))(v65, v28, v5);
        v29 = *(v9 + 56) + 120 * v26;
        v30 = *(v29 + 8);
        v57 = *v29;
        v54 = v30;
        v56 = *(v29 + 16);
        v55 = *(v29 + 24);
        v59 = *(v29 + 56);
        v58 = *(v29 + 40);
        v60 = *(v29 + 72);
        v31 = *(v29 + 80);
        v62 = *(v29 + 96);
        v61 = v31;
        v63 = *(v29 + 112);
      }

      else
      {
        (*(v6 + 16))(v65, v28, v5);
        v32 = *(v9 + 56) + 120 * v26;
        v33 = *v32;
        v34 = *(v32 + 16);
        v35 = *(v32 + 32);
        *&v68[32] = *(v32 + 48);
        v36 = *(v32 + 112);
        v37 = *(v32 + 64);
        v38 = *(v32 + 96);
        v69 = *(v32 + 80);
        v70 = v38;
        *&v68[48] = v37;
        v71 = v36;
        *v68 = v34;
        *&v68[16] = v35;
        v67 = v33;
        v63 = v36;
        v62 = v38;
        v61 = v69;
        v60 = BYTE8(v37);
        v59 = *&v68[40];
        v58 = *&v68[24];
        v55 = *&v68[8];
        v56 = v34;
        v54 = *(&v33 + 1);
        v57 = v33;
        sub_1C1EF816C(&v67, v66);
      }

      sub_1C1E75610(&qword_1EDC2E8F8, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
      result = sub_1C1F523B4();
      v39 = -1 << *(v11 + 32);
      v40 = result & ~v39;
      v41 = v40 >> 6;
      if (((-1 << v40) & ~*(v18 + 8 * (v40 >> 6))) == 0)
      {
        v42 = 0;
        v43 = (63 - v39) >> 6;
        while (++v41 != v43 || (v42 & 1) == 0)
        {
          v44 = v41 == v43;
          if (v41 == v43)
          {
            v41 = 0;
          }

          v42 |= v44;
          v45 = *(v18 + 8 * v41);
          if (v45 != -1)
          {
            v19 = __clz(__rbit64(~v45)) + (v41 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v40) & ~*(v18 + 8 * (v40 >> 6)))) | v40 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v53)(*(v11 + 48) + v64 * v19, v65, v5);
      v20 = *(v11 + 56) + 120 * v19;
      v21 = v54;
      *v20 = v57;
      *(v20 + 8) = v21;
      *(v20 + 16) = v56;
      *(v20 + 24) = v55;
      *(v20 + 56) = v59;
      *(v20 + 40) = v58;
      *(v20 + 72) = v60;
      *(v20 + 76) = *(&v67 + 3);
      *(v20 + 73) = v67;
      v22 = v62;
      *(v20 + 80) = v61;
      *(v20 + 96) = v22;
      *(v20 + 112) = v63;
      ++*(v11 + 16);
      v9 = v51;
      v6 = v50;
    }

    v24 = v12;
    while (1)
    {
      v12 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v25 = v13[v12];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v16 = (v25 - 1) & v25;
        goto LABEL_15;
      }
    }

    if ((v52 & 1) == 0)
    {

      v3 = v48;
      goto LABEL_34;
    }

    v46 = 1 << *(v9 + 32);
    v3 = v48;
    if (v46 >= 64)
    {
      bzero(v13, ((v46 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v46;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

uint64_t sub_1C1EF55CC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF213F8, &unk_1C1F58930);
  v34 = v4;
  result = sub_1C1F52BC4();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
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
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v34 & 1) == 0)
      {
      }

      sub_1C1F52CD4();
      sub_1C1F524A4();
      result = sub_1C1F52CF4();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

void sub_1C1EF5874(int64_t a1, uint64_t a2)
{
  v33 = sub_1C1F52034();
  v4 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = a2 + 64;
  v8 = -1 << *(a2 + 32);
  v9 = (a1 + 1) & ~v8;
  if ((*(a2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v35 = a2;
    v10 = ~v8;
    v11 = sub_1C1F52964();
    v12 = v10;
    a2 = v35;
    v32 = (v11 + 1) & v12;
    v14 = *(v4 + 16);
    v13 = v4 + 16;
    v15 = *(v13 + 56);
    v30 = (v13 - 8);
    v31 = v14;
    v34 = v15;
    do
    {
      v16 = v15 * v9;
      v17 = v12;
      v18 = v33;
      v19 = v13;
      v31(v6, *(a2 + 48) + v15 * v9, v33);
      sub_1C1E75610(&qword_1EDC2E8F8, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
      v20 = sub_1C1F523B4();
      (*v30)(v6, v18);
      v12 = v17;
      v21 = v20 & v17;
      if (a1 >= v32)
      {
        if (v21 >= v32 && a1 >= v21)
        {
LABEL_15:
          v13 = v19;
          if (v34 * a1 < v16 || *(v35 + 48) + v34 * a1 >= (*(v35 + 48) + v16 + v34))
          {
            swift_arrayInitWithTakeFrontToBack();
LABEL_20:
            v12 = v17;
          }

          else if (v34 * a1 != v16)
          {
            swift_arrayInitWithTakeBackToFront();
            goto LABEL_20;
          }

          a2 = v35;
          v24 = *(v35 + 56);
          v25 = (v24 + 120 * a1);
          v26 = (v24 + 120 * v9);
          if (120 * a1 < (120 * v9) || v25 >= v26 + 120 || a1 != v9)
          {
            memmove(v25, v26, 0x78uLL);
            v12 = v17;
            a1 = v9;
          }

          goto LABEL_4;
        }
      }

      else if (v21 >= v32 || a1 >= v21)
      {
        goto LABEL_15;
      }

      v13 = v19;
      a2 = v35;
LABEL_4:
      v9 = (v9 + 1) & v12;
      v15 = v34;
    }

    while (((*(v7 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  *(v7 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v27 = *(a2 + 16);
  v28 = __OFSUB__(v27, 1);
  v29 = v27 - 1;
  if (v28)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v29;
    ++*(a2 + 36);
  }
}

uint64_t sub_1C1EF5B7C(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_1C1F52034();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_1C1EB4BE4(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_1C1EF5FAC();
      goto LABEL_7;
    }

    sub_1C1EF4FE8(v17, a3 & 1);
    v23 = sub_1C1EB4BE4(a2);
    if ((v18 & 1) == (v24 & 1))
    {
      v14 = v23;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      return sub_1C1EF5EC8(v14, v11, a1, v20);
    }

LABEL_15:
    result = sub_1C1F52CA4();
    __break(1u);
    return result;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v21 = v20[7] + 120 * v14;

  return sub_1C1EF858C(a1, v21);
}

uint64_t sub_1C1EF5D4C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1C1EAC150(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_1C1EF55CC(v16, a4 & 1);
      v11 = sub_1C1EAC150(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        result = sub_1C1F52CA4();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_1C1EF62F4();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v23 = (v21[6] + 16 * v11);
  *v23 = a2;
  v23[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v24 = v21[2];
  v15 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v25;
}

uint64_t sub_1C1EF5EC8(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_1C1F52034();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  v11 = a4[7] + 120 * a1;
  v12 = *(a3 + 48);
  *(v11 + 32) = *(a3 + 32);
  *(v11 + 48) = v12;
  v13 = *(a3 + 16);
  *v11 = *a3;
  *(v11 + 16) = v13;
  *(v11 + 112) = *(a3 + 112);
  v14 = *(a3 + 96);
  *(v11 + 80) = *(a3 + 80);
  *(v11 + 96) = v14;
  *(v11 + 64) = *(a3 + 64);
  v15 = a4[2];
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v17;
  }

  return result;
}

char *sub_1C1EF5FAC()
{
  v1 = v0;
  v45 = sub_1C1F52034();
  v47 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45);
  v44 = &v40 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF21448, &unk_1C1F58920);
  v3 = *v0;
  v4 = sub_1C1F52BB4();
  v5 = v4;
  if (*(v3 + 16))
  {
    v40 = v1;
    result = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v41 = v3 + 64;
    if (v5 != v3 || result >= &v7[8 * v8])
    {
      result = memmove(result, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v46 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v43 = v47 + 16;
    v42 = v47 + 32;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v48 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = v47;
        v20 = *(v47 + 72) * v18;
        v21 = v44;
        v22 = v45;
        (*(v47 + 16))(v44, *(v3 + 48) + v20, v45);
        v18 *= 120;
        v23 = *(v3 + 56) + v18;
        v25 = *v23;
        v24 = *(v23 + 16);
        v26 = *(v23 + 32);
        v53 = *(v23 + 48);
        v27 = *(v23 + 64);
        v28 = *(v23 + 80);
        v29 = *(v23 + 96);
        v57 = *(v23 + 112);
        v55 = v28;
        v56 = v29;
        v54 = v27;
        v50 = v25;
        v51 = v24;
        v52 = v26;
        v30 = v3;
        v31 = v46;
        (*(v19 + 32))(*(v46 + 48) + v20, v21, v22);
        v32 = *(v31 + 56);
        v3 = v30;
        v33 = v32 + v18;
        v34 = v54;
        v35 = v55;
        v36 = v56;
        *(v33 + 112) = v57;
        *(v33 + 80) = v35;
        *(v33 + 96) = v36;
        *(v33 + 64) = v34;
        v37 = v50;
        v38 = v51;
        v39 = v53;
        *(v33 + 32) = v52;
        *(v33 + 48) = v39;
        *v33 = v37;
        *(v33 + 16) = v38;
        result = sub_1C1EF816C(&v50, v49);
        v13 = v48;
      }

      while (v48);
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

        v1 = v40;
        v5 = v46;
        goto LABEL_18;
      }

      v17 = *(v41 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v48 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }

  return result;
}

void *sub_1C1EF62F4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF213F8, &unk_1C1F58930);
  v2 = *v0;
  v3 = sub_1C1F52BB4();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
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

      v16 = *(v2 + 64 + 8 * v8);
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

uint64_t sub_1C1EF6464(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1C1EF7DC8(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_1C1EF6554(v5);
  *a1 = v2;
  return result;
}

void *sub_1C1EF64D0(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF211C0, &qword_1C1F568B0);
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

uint64_t sub_1C1EF6554(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1C1F52C14();
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
        v5 = sub_1C1F52704();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_1C1EF671C(v7, v8, a1, v4);
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
    return sub_1C1EF664C(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1C1EF664C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
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
      if (v13 || (result = sub_1C1F52C64(), (result & 1) == 0))
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

uint64_t sub_1C1EF671C(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
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
      result = sub_1C1EF6FAC(v8);
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
        sub_1C1EF6CF8((*a3 + 16 * *v87), (*a3 + 16 * *v89), (*a3 + 16 * v90), v9);
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
        result = sub_1C1F52C64();
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
            result = sub_1C1F52C64();
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
      result = sub_1C1EF6FC0(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v40 = *(v8 + 2);
    v39 = *(v8 + 3);
    v41 = v40 + 1;
    if (v40 >= v39 >> 1)
    {
      result = sub_1C1EF6FC0((v39 > 1), v40 + 1, 1, v8);
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
        sub_1C1EF6CF8((*a3 + 16 * v82), (*a3 + 16 * *&v8[16 * v44 + 32]), (*a3 + 16 * v83), v43);
        if (v5)
        {
        }

        if (v83 < v82)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_1C1EF6FAC(v8);
        }

        if (v9 >= *(v8 + 2))
        {
          goto LABEL_118;
        }

        v84 = &v8[16 * v9];
        *(v84 + 4) = v82;
        *(v84 + 5) = v83;
        result = sub_1C1EF6F20(v44);
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
    if (v37 || (result = sub_1C1F52C64(), (result & 1) == 0))
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

uint64_t sub_1C1EF6CF8(char *__dst, char *__src, char *a3, char *a4)
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
      if (!v16 && (sub_1C1F52C64() & 1) != 0)
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
      if (!v21 && (sub_1C1F52C64() & 1) != 0)
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

uint64_t sub_1C1EF6F20(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1C1EF6FAC(v3);
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

char *sub_1C1EF6FC0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF21458, &qword_1C1F58950);
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
    v10 = MEMORY[0x1E69E7CC0];
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

void (*sub_1C1EF70C4(uint64_t *a1, uint64_t a2))(uint64_t a1)
{
  v4 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x68uLL);
  }

  v6 = v5;
  *a1 = v5;
  v7 = sub_1C1F52034();
  v6[8] = v7;
  v8 = *(v7 - 8);
  v9 = v8;
  v6[9] = v8;
  if (v4)
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(*(v8 + 64));
  }

  v11 = v10;
  v6[10] = v10;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  (*(v9 + 16))(v11, a2, v7);
  v6[11] = sub_1C1EF7A84(v6);
  v6[12] = sub_1C1EF7598(v6 + 4, v11, isUniquelyReferenced_nonNull_native);
  return sub_1C1EF7200;
}

void sub_1C1EF7200(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 88);
  v4 = *(*a1 + 72);
  v3 = *(*a1 + 80);
  v5 = *(*a1 + 64);
  (*(*a1 + 96))();
  (*(v4 + 8))(v3, v5);
  v2(v1, 0);
  free(v3);

  free(v1);
}

uint64_t sub_1C1EF7298(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  sub_1C1F52CD4();
  sub_1C1F524A4();
  v6 = sub_1C1F52CF4();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(v5 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (sub_1C1F52C64() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *v2;
  v16 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1C1EADFB4();
    v14 = v16;
  }

  v12 = *(*(v14 + 48) + 16 * v8);
  sub_1C1EF73D4(v8);
  *v2 = v16;
  return v12;
}

unint64_t sub_1C1EF73D4(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_1C1F52964();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        sub_1C1F52CD4();

        sub_1C1F524A4();
        v10 = sub_1C1F52CF4();

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
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
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

  return result;
}

void (*sub_1C1EF7598(uint64_t *a1, uint64_t a2, char a3))(uint64_t *a1, char a2)
{
  v4 = v3;
  v8 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v9 = malloc(0x468uLL);
  }

  v10 = v9;
  *a1 = v9;
  *(v9 + 1088) = v4;
  *(v9 + 1080) = a2;
  v11 = sub_1C1F52034();
  *(v10 + 1096) = v11;
  v12 = *(v11 - 8);
  *(v10 + 1104) = v12;
  if (v8)
  {
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v13 = malloc(*(v12 + 64));
  }

  *(v10 + 1112) = v13;
  v14 = *v4;
  v15 = sub_1C1EB4BE4(a2);
  *(v10 + 113) = v16 & 1;
  v17 = *(v14 + 16);
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
    goto LABEL_19;
  }

  v21 = v16;
  v22 = *(v14 + 24);
  if (v22 < v20 || (a3 & 1) == 0)
  {
    if (v22 >= v20 && (a3 & 1) == 0)
    {
      v23 = v15;
      sub_1C1EF5FAC();
      v15 = v23;
      goto LABEL_14;
    }

    sub_1C1EF4FE8(v20, a3 & 1);
    v15 = sub_1C1EB4BE4(a2);
    if ((v21 & 1) == (v24 & 1))
    {
      goto LABEL_14;
    }

LABEL_19:
    result = sub_1C1F52CA4();
    __break(1u);
    return result;
  }

LABEL_14:
  *(v10 + 1120) = v15;
  if (v21)
  {
    memmove((v10 + 240), (*(*v4 + 56) + 120 * v15), 0x71uLL);
  }

  else
  {
    *(v10 + 352) = 0;
    *(v10 + 320) = 0u;
    *(v10 + 336) = 0u;
    *(v10 + 288) = 0u;
    *(v10 + 304) = 0u;
    *(v10 + 256) = 0u;
    *(v10 + 272) = 0u;
    *(v10 + 240) = 0u;
  }

  return sub_1C1EF776C;
}

void sub_1C1EF776C(uint64_t *a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v3 = (v2 + 480);
    v4 = *(v2 + 256);
    *(v2 + 360) = *(v2 + 240);
    *(v2 + 376) = v4;
    v5 = *(v2 + 288);
    *(v2 + 392) = *(v2 + 272);
    *(v2 + 408) = v5;
    *(v2 + 472) = *(v2 + 352);
    v6 = *(v2 + 336);
    *(v2 + 440) = *(v2 + 320);
    *(v2 + 456) = v6;
    *(v2 + 424) = *(v2 + 304);
    if (*(v2 + 368))
    {
      v7 = *(v2 + 1120);
      if (*(v2 + 113))
      {
        memmove((*(**(v2 + 1088) + 56) + 120 * v7), (v2 + 240), 0x71uLL);
      }

      else
      {
        v16 = *(v2 + 1112);
        v17 = **(v2 + 1088);
        (*(*(v2 + 1104) + 16))(v16, *(v2 + 1080), *(v2 + 1096));
        v18 = *(v2 + 440);
        *(v2 + 64) = *(v2 + 424);
        *(v2 + 80) = v18;
        *(v2 + 96) = *(v2 + 456);
        *(v2 + 112) = *(v2 + 472);
        v19 = *(v2 + 376);
        *v2 = *(v2 + 360);
        *(v2 + 16) = v19;
        v20 = *(v2 + 408);
        *(v2 + 32) = *(v2 + 392);
        *(v2 + 48) = v20;
        sub_1C1EF5EC8(v7, v16, v2, v17);
      }
    }

    else if (*(v2 + 113))
    {
      v12 = *(v2 + 1120);
      v13 = **(v2 + 1088);
      (*(*(v2 + 1104) + 8))(*(v13 + 48) + *(*(v2 + 1104) + 72) * v12, *(v2 + 1096));
      sub_1C1EF5874(v12, v13);
    }

    v21 = *(v2 + 1112);
    v22 = *(v2 + 320);
    *(v2 + 544) = *(v2 + 304);
    *(v2 + 560) = v22;
    *(v2 + 576) = *(v2 + 336);
    *(v2 + 592) = *(v2 + 352);
    v23 = *(v2 + 256);
    *v3 = *(v2 + 240);
    *(v2 + 496) = v23;
    v24 = *(v2 + 288);
    *(v2 + 512) = *(v2 + 272);
    *(v2 + 528) = v24;
    v25 = v2 + 600;
    v26 = v2 + 360;
  }

  else
  {
    v3 = (v2 + 840);
    v8 = *(v2 + 256);
    *(v2 + 720) = *(v2 + 240);
    *(v2 + 736) = v8;
    v9 = *(v2 + 288);
    *(v2 + 752) = *(v2 + 272);
    *(v2 + 768) = v9;
    *(v2 + 832) = *(v2 + 352);
    v10 = *(v2 + 336);
    *(v2 + 800) = *(v2 + 320);
    *(v2 + 816) = v10;
    *(v2 + 784) = *(v2 + 304);
    if (*(v2 + 728))
    {
      v11 = *(v2 + 1120);
      if (*(v2 + 113))
      {
        memmove((*(**(v2 + 1088) + 56) + 120 * v11), (v2 + 240), 0x71uLL);
      }

      else
      {
        v27 = *(v2 + 1112);
        v28 = **(v2 + 1088);
        (*(*(v2 + 1104) + 16))(v27, *(v2 + 1080), *(v2 + 1096));
        v29 = *(v2 + 800);
        *(v2 + 184) = *(v2 + 784);
        *(v2 + 200) = v29;
        *(v2 + 216) = *(v2 + 816);
        v30 = *(v2 + 736);
        *(v2 + 120) = *(v2 + 720);
        *(v2 + 136) = v30;
        v31 = *(v2 + 768);
        *(v2 + 152) = *(v2 + 752);
        *(v2 + 232) = *(v2 + 832);
        *(v2 + 168) = v31;
        sub_1C1EF5EC8(v11, v27, v2 + 120, v28);
      }
    }

    else if (*(v2 + 113))
    {
      v14 = *(v2 + 1120);
      v15 = **(v2 + 1088);
      (*(*(v2 + 1104) + 8))(*(v15 + 48) + *(*(v2 + 1104) + 72) * v14, *(v2 + 1096));
      sub_1C1EF5874(v14, v15);
    }

    v21 = *(v2 + 1112);
    v32 = *(v2 + 320);
    *(v2 + 904) = *(v2 + 304);
    *(v2 + 920) = v32;
    *(v2 + 936) = *(v2 + 336);
    *(v2 + 952) = *(v2 + 352);
    v33 = *(v2 + 256);
    *v3 = *(v2 + 240);
    *(v2 + 856) = v33;
    v34 = *(v2 + 288);
    *(v2 + 872) = *(v2 + 272);
    *(v2 + 888) = v34;
    v26 = v2 + 720;
    v25 = v2 + 960;
  }

  sub_1C1EB1D18(v26, v25, &qword_1EBF21440, &qword_1C1F58918);
  sub_1C1EF8524(v3);
  free(v21);

  free(v2);
}

uint64_t (*sub_1C1EF7A84(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_1C1EF7AAC;
}

uint64_t sub_1C1EF7AB8(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  v22 = result;
  while (v7)
  {
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_15:
    v13 = (*(result + 48) + 16 * (v10 | (v3 << 6)));
    v15 = *v13;
    v14 = v13[1];
    sub_1C1F52CD4();

    sub_1C1F524A4();
    v16 = sub_1C1F52CF4();
    v17 = -1 << *(a2 + 32);
    v18 = v16 & ~v17;
    if (((*(v9 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
    {
LABEL_23:

      return 0;
    }

    v19 = ~v17;
    while (1)
    {
      v20 = (*(a2 + 48) + 16 * v18);
      v21 = *v20 == v15 && v20[1] == v14;
      if (v21 || (sub_1C1F52C64() & 1) != 0)
      {
        break;
      }

      v18 = (v18 + 1) & v19;
      if (((*(v9 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
      {
        goto LABEL_23;
      }
    }

    result = v22;
  }

  v11 = v3;
  while (1)
  {
    v3 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v12 = *(v4 + 8 * v3);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v7 = (v12 - 1) & v12;
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

void *sub_1C1EF7C70(void *result, void *a2, uint64_t a3, uint64_t a4)
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

double sub_1C1EF7DDC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1C1ED73F4();
  v6 = v5;
  v35 = CalculateExpression.document.getter();
  v7 = sub_1C1E811D8();
  v34 = sub_1C1ED9C1C();
  v8 = OBJC_IVAR____TtC9Calculate19CalculateExpression_rebuild;
  swift_beginAccess();
  v9 = 0;
  if ((*(a1 + v8) & 1) == 0)
  {
    v9 = sub_1C1ED6394();
  }

  v33 = v9;
  v32 = sub_1C1ED6FF0();
  v10 = CalculateExpression.needsEvaluation.getter();
  v30 = v10;
  v11 = *CalculateExpression.plain.getter(v10);
  v31 = (*(v11 + 456))();

  v13 = *CalculateExpression.plain.getter(v12);
  v14 = (*(v13 + 448))();
  v16 = v15;

  v18 = *CalculateExpression.plain.getter(v17);
  v19 = (*(v18 + 488))();

  CalculateExpression.declaredSymbol.getter(v20);
  if (v21)
  {

    v22 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
    v47 = sub_1C1E785A4(0, &qword_1EDC2C298, 0x1E696AD98);
    *&v45 = v22;
    sub_1C1EB1C58(&v45, &v37);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v36[0] = v7;
    sub_1C1EEA928(&v37, @"CalculateKeyConvertTrivial", isUniquelyReferenced_nonNull_native);
  }

  else
  {
  }

  *&v37 = v4;
  *(&v37 + 1) = v6;
  *&v38 = v35;
  *(&v38 + 1) = v7;
  v39 = v34;
  *&v40 = 0;
  *(&v40 + 1) = v33;
  *&v41 = v32;
  BYTE8(v41) = v30 & 1;
  *&v42 = 0;
  *(&v42 + 1) = v31;
  *&v43 = v14;
  *(&v43 + 1) = v16;
  v44 = v19 & 1;
  *&v45 = v4;
  *(&v45 + 1) = v6;
  v46 = v35;
  v47 = v7;
  v48 = v34;
  v49 = 0;
  v50 = 0;
  v51 = v33;
  v52 = v32;
  v53 = v30 & 1;
  v54 = 0;
  v55 = v31;
  v56 = v14;
  v57 = v16;
  v58 = v19 & 1;
  sub_1C1EF816C(&v37, v36);
  sub_1C1EF81A4(&v45);
  v24 = v42;
  v25 = v43;
  v26 = v40;
  *(a2 + 64) = v41;
  *(a2 + 80) = v24;
  *(a2 + 96) = v25;
  result = *&v37;
  v28 = v38;
  v29 = v39;
  *a2 = v37;
  *(a2 + 16) = v28;
  *(a2 + 112) = v44;
  *(a2 + 32) = v29;
  *(a2 + 48) = v26;
  return result;
}

uint64_t sub_1C1EF8108()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + OBJC_IVAR____TtC9Calculate17CalculateDocument__expressions[0]);
  *(v1 + OBJC_IVAR____TtC9Calculate17CalculateDocument__expressions[0]) = *(v0 + 24);

  sub_1C1E76DC0(v2);
}

__n128 __swift_memcpy113_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_1C1EF83F4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 113))
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

uint64_t sub_1C1EF843C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 112) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 113) = 1;
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

    *(result + 113) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1C1EF84BC(uint64_t *a1)
{
  v3 = *(v1 + 16);
  v2 = *(v1 + 24);
  v4 = *a1;
  swift_beginAccess();
  *(v3 + v4) = v2;
}

uint64_t sub_1C1EF8524(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF21440, &qword_1C1F58918);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C1EF85CC(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  v9 = *a1;
  v10 = v2;
  v11 = v3;
  v12 = v4;
  v5 = CalculateExpression.RichExpression.EditingToken.token.getter();
  if (v5 && (v6 = (*(*v5 + 408))(v5), , (v6 & 1) != 0))
  {
    v7 = 1;
  }

  else
  {
    v9 = v1;
    v10 = v2;
    v11 = v3;
    v12 = v4;
    v7 = sub_1C1EC5418(&v9);
  }

  return v7 & 1;
}

uint64_t sub_1C1EF8688()
{
  type metadata accessor for CalculateExpression.RichToken(0);
  v2[0] = 1;
  v2[1] = 0xE000000000000000;
  sub_1C1EF8774(0.0, 1.0);
  sub_1C1F527B4();
  v0 = sub_1C1E8FBEC(0, 0xE000000000000000, v2, 0);
  (*(*v0 + 264))(1);
  return v0;
}

uint64_t CalculateExpression.RandOperation.__deallocating_deinit()
{
  v0 = CalculateExpression.OperandOperation.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 16, 7);
}

uint64_t sub_1C1EF8774(float a1, float a2)
{
  if (a1 == a2)
  {
    __break(1u);
    goto LABEL_7;
  }

  v4 = a2 - a1;
  if (COERCE_INT(fabs(a2 - a1)) > 2139095039)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v6 = 0;
  result = MEMORY[0x1C6912C90](&v6, 8);
  if (((v4 * vcvts_n_f32_u64(v6 & 0xFFFFFF, 0x18uLL)) + a1) == a2)
  {
    return sub_1C1EF8774(a1, a2);
  }

  return result;
}

uint64_t sub_1C1EF8818(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16) != 1)
  {
    return 0;
  }

  CalculateExpression.RichExpression.editingToken(matching:)(sub_1C1EB7428, v42);
  v3 = v42[0];
  if (!v42[0])
  {
    return 0;
  }

  v4 = v42[1];
  v5 = v42[2];
  v6 = v42[3];
  type metadata accessor for CalculateExpression.RichToken(0);
  LOBYTE(v42[0]) = 33;

  v7 = sub_1C1E7DD60();
  v8 = CalculateExpression.RichToken.__allocating_init(text:type:isImplicit:)(0, 0, v42, v7 & 1);
  (*(*a1 + 232))(0);
  v9 = *(*v3 + 416);
  v10 = v9(v4);
  if (!v10)
  {
    v25 = *(*v3 + 408);

    v11 = v25(v42);
    v27 = v26;
    MEMORY[0x1C6911980]();
    if (*((*v27 & 0xFFFFFFFFFFFFFF8) + 0x10) < *((*v27 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
LABEL_21:
      sub_1C1F52724();
      (v11)(v42, 0);

      v28 = v3;
      v29 = v4;
      v30 = v5;
      goto LABEL_22;
    }

LABEL_39:
    sub_1C1F526E4();
    goto LABEL_21;
  }

  v11 = v10;
  v40 = v5;
  v5 = OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type;
  LOBYTE(v42[0]) = *(v10 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type);
  LOBYTE(v41) = 16;
  if (static CalculateExpression.TokenType.== infix(_:_:)(v42, &v41) & 1) != 0 || (LOBYTE(v42[0]) = v5[v11], (CalculateExpression.TokenType.isOperand.getter()))
  {
    v39 = v6;
    v41 = v4;
    sub_1C1EBA588(&v41);
    v6 = v41;
    v5 = (v41 - 1);
    if (!__OFSUB__(v41, 1))
    {
      v12 = v9(v41 - 1);
      if (v12)
      {
        v13 = *(v12 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type);

        if (v13 != 53)
        {
          LOBYTE(v42[0]) = v13;
          sub_1C1E9019C();
          if (sub_1C1F52414())
          {
            v14 = (*(*v3 + 408))(v42);
            sub_1C1E98338(v5);

            v14(v42, 0);
            v15 = v40;
LABEL_28:

            v28 = v3;
            v29 = v4;
            v30 = v15;
            v31 = v39;
            goto LABEL_29;
          }
        }
      }

      v17 = v9(v5);
      if (v17)
      {
        v15 = *(v17 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type);

        if (v15 != 53)
        {
          LOBYTE(v42[0]) = v15;
          sub_1C1E9019C();
          if (sub_1C1F52414())
          {
            LOBYTE(v42[0]) = 16;
            v18 = sub_1C1E7DD60();
            v19 = CalculateExpression.RichToken.__allocating_init(text:type:isImplicit:)(0, 0, v42, v18 & 1);
            v6 = v4 + 1;
            if (!__OFADD__(v4, 1))
            {
              v15 = v19;
              v20 = (*v3 + 408);
              v9 = *v20;
              v38 = (*v20)(v42);
              if (!(*v21 >> 62))
              {
                result = *((*v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
                if (result >= v6)
                {
                  goto LABEL_18;
                }

                goto LABEL_49;
              }

LABEL_48:
              result = sub_1C1F52994();
              if (result >= v6)
              {
LABEL_18:
                if ((v6 & 0x8000000000000000) == 0)
                {
                  sub_1C1E98664(v6, v6, v15);

                  v38(v42, 0);
                  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF21130, &unk_1C1F56A00);
                  v22 = swift_allocObject();
                  *(v22 + 16) = xmmword_1C1F56430;
                  *(v22 + 32) = v8;
                  LOBYTE(v42[0]) = 15;

                  v23 = sub_1C1E7DD60();
                  *(v22 + 40) = CalculateExpression.RichToken.__allocating_init(text:type:isImplicit:)(0, 0, v42, v23 & 1);
                  v24 = v9(v42);
                  sub_1C1E9B764(v5, v5, v22);

                  v24(v42, 0);
                  v15 = v40;
                  goto LABEL_28;
                }

LABEL_50:
                __break(1u);
                return result;
              }

LABEL_49:
              __break(1u);
              goto LABEL_50;
            }

LABEL_47:
            __break(1u);
            goto LABEL_48;
          }
        }
      }

      v32 = *(*v3 + 408);
      v9 = (*v3 + 408);

      v34 = v32(v42);
      if (*v33 >> 62)
      {
        v35 = sub_1C1F52994();
      }

      else
      {
        v35 = *((*v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v15 = v40;
      if (v35 < v6)
      {
        __break(1u);
      }

      else if ((v6 & 0x8000000000000000) == 0)
      {
        sub_1C1E98664(v6, v6, v8);

        (v34)(v42, 0);
        goto LABEL_28;
      }

      __break(1u);
LABEL_43:
      __break(1u);
      goto LABEL_44;
    }

    __break(1u);
    goto LABEL_39;
  }

  LOBYTE(v42[0]) = v5[v11];
  LOBYTE(v41) = 33;
  v15 = v42;
  if (static CalculateExpression.TokenType.== infix(_:_:)(v42, &v41))
  {
    v36 = (*(*v3 + 408))(v42);
    sub_1C1E98338(v4);

    v36(v42, 0);

    v28 = v3;
    v29 = v4;
    v30 = v40;
    goto LABEL_22;
  }

  v34 = v4 + 1;
  if (__OFADD__(v4, 1))
  {
    goto LABEL_43;
  }

  v15 = *(*v3 + 408);
  v9 = (*v3 + 408);

  v5 = (v15)(v42);
  if (!(*v37 >> 62))
  {
    if (*((*v37 & 0xFFFFFFFFFFFFFF8) + 0x10) < v34)
    {
LABEL_45:
      __break(1u);
      goto LABEL_46;
    }

    goto LABEL_36;
  }

LABEL_44:
  if (sub_1C1F52994() < v34)
  {
    goto LABEL_45;
  }

LABEL_36:
  if (v34 < 0)
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  sub_1C1E98664(v34, v34, v8);

  (v5)(v42, 0);

  v28 = v3;
  v30 = v40;
  v29 = v4;
LABEL_22:
  v31 = v6;
LABEL_29:
  sub_1C1E98278(v28, v29, v30, v31);
  return 1;
}

uint64_t CalculateExpression.NotOperation.__deallocating_deinit()
{
  v0 = CalculateExpression.Operation.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 16, 7);
}

uint64_t sub_1C1EF8FF8()
{
  type metadata accessor for CalculateExpression.RichToken(0);
  v1 = 1;
  return sub_1C1E8FBEC(48, 0xE100000000000000, &v1, 0);
}

uint64_t sub_1C1EF9044(uint64_t a1, uint64_t a2)
{
  v5 = *(*v2 + 128);
  v6 = *v2 + 128;
  v67 = v5();
  v7 = (*(*v2 + 120))();
  v69 = (*a1 + 176);
  v70 = *v69;
  v8 = (*v69)();
  if (v8)
  {
    v9 = v8;
    if (CalculateExpression.engine.getter() == 1)
    {
      (*(*v7 + 744))(v9);
    }
  }

  v10 = (*a1 + 384);
  v11 = *v10;
  v12 = v10;
  (*v10)(v73, v8);
  v13 = (*(*v7 + 424))(v73);
  if (((v5)(v13) & 1) != 0 && (*(*a1 + 368))() != 2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF21130, &unk_1C1F56A00);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_1C1F56490;
    type metadata accessor for CalculateExpression.RichToken(0);
    LOBYTE(v73[0]) = 15;
    v16 = sub_1C1E7DD60();
    *(v14 + 32) = CalculateExpression.RichToken.__allocating_init(text:type:isImplicit:)(0, 0, v73, v16 & 1);
    LOBYTE(v73[0]) = 4;
    v17 = sub_1C1E7DD60();
    *(v14 + 40) = CalculateExpression.RichToken.__allocating_init(text:type:isImplicit:)(0, 0, v73, v17 & 1);
    *(v14 + 48) = v7;
    LOBYTE(v73[0]) = 16;

    v18 = sub_1C1E7DD60();
    v15 = CalculateExpression.RichToken.__allocating_init(text:type:isImplicit:)(0, 0, v73, v18 & 1);
    *(v14 + 56) = v15;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF21130, &unk_1C1F56A00);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_1C1F563C0;
    *(v14 + 32) = v7;
  }

  if ((*(*a1 + 368))(v15) == 2)
  {
    v19 = (*(*a1 + 248))();
    if (v19)
    {
      type metadata accessor for CalculateExpression.RichToken(0);
      v20 = v11(v73);
      v21 = (v70)(v20);
      sub_1C1E8FBEC(48, 0xE100000000000000, v73, v21);
      v12 = v73;
      v22 = (*(*a1 + 408))(v73);
      v24 = v23;
      MEMORY[0x1C6911980]();
      if (*((*v24 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v24 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v5 = *((*v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_1C1F526E4();
      }

      sub_1C1F52724();
      v22(v73, 0);
      (*(*a1 + 232))(1);
      v19 = (*(*a1 + 256))(0);
    }

    if ((*(*a1 + 224))(v19))
    {
      while (1)
      {
        if (!v70())
        {
          goto LABEL_65;
        }

        v25 = CalculateExpression.postfixStack.getter();

        if (v25 >> 62)
        {
          v26 = sub_1C1F52994();
          if (!v26)
          {
LABEL_64:

            goto LABEL_65;
          }
        }

        else
        {
          v26 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (!v26)
          {
            goto LABEL_64;
          }
        }

        v27 = __OFSUB__(v26, 1);
        v28 = v26 - 1;
        if (v27)
        {
          break;
        }

        if ((v25 & 0xC000000000000001) != 0)
        {
          goto LABEL_82;
        }

        if ((v28 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_84:
          v32 = sub_1C1F52994();
LABEL_25:

          v33 = (*(*a1 + 408))(v73);
          sub_1C1E98C40(v32);
          v33(v73, 0);

          if (v67)
          {
            goto LABEL_66;
          }

          goto LABEL_69;
        }

        v29 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v28 < v29)
        {

LABEL_23:

          v30 = CalculateExpression.rich.getter();
          v31 = (*(*v30 + 392))(v30);

          if (v31 >> 62)
          {
            goto LABEL_84;
          }

          v32 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
          goto LABEL_25;
        }

        __break(1u);
LABEL_86:
        __break(1u);
LABEL_87:
        v38 = MEMORY[0x1C6911DB0](v29);
LABEL_41:

        v40 = (*(*v38 + 408))(v39);

        if ((v40 & 1) == 0)
        {
          goto LABEL_65;
        }
      }

      __break(1u);
LABEL_82:
      MEMORY[0x1C6911DB0](v28, v25);
      goto LABEL_23;
    }

    type metadata accessor for CalculateExpression.RandOperation();
    if (swift_dynamicCastClass())
    {
      v36 = (*(*a1 + 392))();
      if (v36 >> 62)
      {
        v65 = v36;
        v37 = sub_1C1F52994();
        v36 = v65;
        if (v37)
        {
          goto LABEL_36;
        }
      }

      else
      {
        v37 = *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v37)
        {
LABEL_36:
          v27 = __OFSUB__(v37, 1);
          v29 = v37 - 1;
          if (v27)
          {
            goto LABEL_86;
          }

          if ((v36 & 0xC000000000000001) != 0)
          {
            goto LABEL_87;
          }

          if ((v29 & 0x8000000000000000) != 0)
          {
            __break(1u);
          }

          else if (v29 < *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            v38 = *(v36 + 8 * v29 + 32);

            goto LABEL_41;
          }

          __break(1u);
          goto LABEL_90;
        }
      }

      if ((v67 & 1) == 0)
      {
LABEL_69:
        v59 = *(*a1 + 408);

        v60 = v59(v73);
        sub_1C1E8CECC(v14);
        v60(v73, 0);
        (*(*a1 + 232))(0);
        v61 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v61)
        {
          v62 = v61 - 1;
          if ((v14 & 0xC000000000000001) != 0)
          {
            v63 = MEMORY[0x1C6911DB0](v62, v14);
          }

          else
          {
            v63 = *(v14 + 8 * v62 + 32);
          }

          v64 = *(v63 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type);

          LOBYTE(v73[0]) = v64;
          if (CalculateExpression.TokenType.isConstant.getter())
          {
            (*(*a1 + 256))(1);
          }
        }

        else
        {
        }

        return 1;
      }
    }

    else
    {
LABEL_65:
      if ((v67 & 1) == 0)
      {
        goto LABEL_69;
      }
    }

LABEL_66:
    type metadata accessor for CalculateExpression.RichToken(0);
    LOBYTE(v73[0]) = 4;
    v55 = sub_1C1E7DD60();
    CalculateExpression.RichToken.__allocating_init(text:type:isImplicit:)(0, 0, v73, v55 & 1);
    v56 = (*(*a1 + 408))(v73);
    v58 = v57;
    MEMORY[0x1C6911980]();
    if (*((*v58 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v58 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1C1F526E4();
    }

    sub_1C1F52724();
    v56(v73, 0);
    goto LABEL_69;
  }

  if ((*(a2 + 16) & 1) == 0 || (CalculateExpression.RichExpression.editingToken(matching:)(sub_1C1EF9E9C, v73), (v12 = v73[0]) == 0))
  {

    return 0;
  }

  v5 = v73[1];
  v69 = v73[3];
  v70 = v73[2];
  v34 = *(*v73[0] + 416);

  v6 = v34(v5);
  if (v6)
  {
    if (((*(*a1 + 224))() & 1) == 0)
    {
      type metadata accessor for CalculateExpression.RandOperation();
      if (swift_dynamicCastClass())
      {
        v42 = *(*v6 + 408);

        if ((v42(v43) & 1) != 0 && *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10) == 1)
        {
          if ((v14 & 0xC000000000000001) == 0)
          {
            v44 = *(v14 + 32);

LABEL_49:

            v46 = (*(*v44 + 232))(v45);
            v48 = v47;

            (*(*v6 + 240))(v46, v48);
LABEL_59:

            goto LABEL_61;
          }

LABEL_91:
          v44 = MEMORY[0x1C6911DB0](0, v14);
          goto LABEL_49;
        }
      }

      else
      {
      }

      v49 = OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type;
      LOBYTE(v73[0]) = *(v6 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type);
      if ((CalculateExpression.TokenType.isOperator.getter() & 1) == 0)
      {
        v72 = *(v6 + v49);
        v71 = 15;
        if ((static CalculateExpression.TokenType.== infix(_:_:)(&v72, &v71) & 1) == 0)
        {
          LOBYTE(v73[0]) = *(v6 + v49);
          if ((CalculateExpression.TokenType.isOperand.getter() & 1) == 0)
          {
            LOBYTE(v73[0]) = *(v6 + v49);
            v72 = 18;
            if ((static CalculateExpression.TokenType.== infix(_:_:)(v73, &v72) & 1) == 0)
            {
              LOBYTE(v73[0]) = *(v6 + v49);
              v72 = 16;
              if ((static CalculateExpression.TokenType.== infix(_:_:)(v73, &v72) & 1) == 0)
              {

                goto LABEL_59;
              }
            }
          }
        }
      }

      v66 = v49;
      v68 = v5;
      v50 = v5 + 1;
      if (!__OFADD__(v5, 1))
      {
        v51 = (*v12 + 408);
        v52 = *v51;
        v53 = (*v51)(v73);
        sub_1C1E9B764(v50, v50, v14);

        v53(v73, 0);
        LOBYTE(v73[0]) = *(v6 + v66);
        v72 = 18;
        if ((static CalculateExpression.TokenType.== infix(_:_:)(v73, &v72) & 1) == 0)
        {

          v5 = v68;
          goto LABEL_61;
        }

        v54 = v52(v73);
        v5 = v68;
        sub_1C1E98338(v68);

        v54(v73, 0);
        goto LABEL_59;
      }

LABEL_90:
      __break(1u);
      goto LABEL_91;
    }

    (*(*v12 + 400))(v14);
  }

  else
  {
    v41 = (*(*v12 + 408))(v73);
    sub_1C1E9B764(0, 0, v14);

    v41(v73, 0);
  }

LABEL_61:
  (*(*a1 + 232))(0);

  sub_1C1E98278(v12, v5, v70, v69);
  return 1;
}

uint64_t CalculateExpression.OperandOperation.__deallocating_deinit()
{
  v0 = CalculateExpression.Operation.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 16, 7);
}

uint64_t sub_1C1EF9E9C(uint64_t *a1)
{
  v2 = a1[3];
  v4 = *a1;
  v5 = *(a1 + 1);
  v6 = v2;
  return (*(*v1 + 136))(&v4) & 1;
}

uint64_t sub_1C1EF9F80()
{
  type metadata accessor for CalculateExpression.RichToken(0);
  v26 = 10;
  v1 = sub_1C1E7DD60();
  v2 = CalculateExpression.RichToken.__allocating_init(text:type:isImplicit:)(6778732, 0xE300000000000000, &v26, v1 & 1);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  if (v3)
  {
    v5 = 0;
  }

  else
  {
    v5 = v4 == 0xE000000000000000;
  }

  v6 = v5;
  if (v5 || (sub_1C1F52C64() & 1) != 0)
  {
    v23 = 18;
    v7 = sub_1C1E7DD60();
    v8 = &v23;
    v9 = v7 & 1;
    v10 = 0;
    v11 = 0;
  }

  else
  {
    v25 = 1;

    v12 = sub_1C1E7DD60();
    v8 = &v25;
    v9 = v12 & 1;
    v10 = v3;
    v11 = v4;
  }

  v13 = CalculateExpression.RichToken.__allocating_init(text:type:isImplicit:)(v10, v11, v8, v9);
  type metadata accessor for CalculateExpression.RichExpression();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF21130, &unk_1C1F56A00);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1C1F563C0;
  *(v14 + 32) = v13;

  v15 = CalculateExpression.RichExpression.__allocating_init(tokens:parent:)(v14, 0);
  v16 = (*(*v2 + 312))(v15);
  v17 = *(*v2 + 304);
  v18 = v17(v16);
  if (v18)
  {
    v19 = v18;
    if (v6)
    {
      v20 = 1;
    }

    else
    {
      v20 = sub_1C1F52C64();
    }

    (*(*v19 + 304))(v20 & 1);
  }

  v21 = v17(v18);
  if (v21)
  {
    v24 = 2;
    (*(*v21 + 280))(&v24);
  }

  return v2;
}

uint64_t CalculateExpression.LogOperation.__deallocating_deinit()
{
  v0 = CalculateExpression.FunctionOperation.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 33, 7);
}

uint64_t sub_1C1EFA23C()
{
  v1 = [v0 name];
  v2 = sub_1C1F52454();

  return v2;
}

void sub_1C1EFA2A0(uint64_t *a1@<X8>)
{
  v3 = [*v1 name];
  v4 = sub_1C1F52454();
  v6 = v5;

  *a1 = v4;
  a1[1] = v6;
}

uint64_t CalculateExpression.CustomOperandOperation.__allocating_init(_:)(void *a1)
{
  v2 = v1;
  v4 = sub_1C1F520E4();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([a1 unitType] != 16)
  {
    v21 = [a1 terms];
    sub_1C1EFA978();
    v22 = sub_1C1F526B4();

    if (v22 >> 62)
    {
      result = sub_1C1F52994();
      if (result)
      {
        goto LABEL_10;
      }
    }

    else
    {
      result = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result)
      {
LABEL_10:
        if ((v22 & 0xC000000000000001) != 0)
        {
          v23 = MEMORY[0x1C6911DB0](0, v22);
        }

        else
        {
          if (!*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_41;
          }

          v23 = *(v22 + 32);
        }

        v9 = v23;

        v24 = CalculateTermDecimalString(v9);
        if (v24)
        {
          v11 = v24;
          v18 = sub_1C1F52454();
          v20 = v25;
LABEL_19:

          goto LABEL_23;
        }

LABEL_22:
        v18 = 0;
        v20 = 0xE000000000000000;
LABEL_23:
        v47[0] = v18;
        v47[1] = v20;
        v46[2] = 12357;
        v46[3] = 0xE200000000000000;
        v46[0] = 3156805;
        v46[1] = 0xE300000000000000;
        sub_1C1E94E48();
        v26 = sub_1C1F52914();
        v28 = v27;

        v29 = sub_1C1EDA988(v26, v28);
        if (v30)
        {
          if (v29 == 43 && v30 == 0xE100000000000000)
          {
            v31 = 0;
LABEL_32:

            goto LABEL_33;
          }

          v32 = sub_1C1F52C64();

          v31 = 0;
          if (v32)
          {
LABEL_33:
            v35 = sub_1C1EB0B40(1uLL, v26, v28);
            v37 = v36;
            v39 = v38;
            v41 = v40;

            v26 = MEMORY[0x1C6911770](v35, v37, v39, v41);
            v28 = v42;

LABEL_37:
            type metadata accessor for CalculateExpression.RichToken(0);
            LOBYTE(v47[0]) = 1;
            v44 = sub_1C1E8FBEC(v26, v28, v47, 0);
            v45 = (*(v2 + 160))(v44, v31);

            return v45;
          }
        }

        v33 = sub_1C1EDA988(v26, v28);
        if (v34)
        {
          if (v33 == 45 && v34 == 0xE100000000000000)
          {
            v31 = 1;
            goto LABEL_32;
          }

          v43 = sub_1C1F52C64();

          if (v43)
          {
            v31 = 1;
            goto LABEL_33;
          }
        }

        v31 = 0;
        goto LABEL_37;
      }
    }

    goto LABEL_22;
  }

  v9 = [objc_allocWithZone(MEMORY[0x1E696ADA0]) init];
  [v9 setMaximumFractionDigits_];
  sub_1C1F52044();
  v10 = sub_1C1F52094();
  (*(v5 + 8))(v8, v4);
  [v9 setLocale_];

  [v9 setUsesGroupingSeparator_];
  [v9 setNumberStyle_];
  [v9 setRoundingMode_];
  v11 = [a1 numberFormatter];
  [a1 setNumberFormatter_];
  v12 = [a1 terms];
  sub_1C1EFA978();
  v13 = sub_1C1F526B4();

  if (v13 >> 62)
  {
    result = sub_1C1F52994();
    if (result)
    {
      goto LABEL_4;
    }

LABEL_17:

    v18 = 0;
    v20 = 0xE000000000000000;
    goto LABEL_18;
  }

  result = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_17;
  }

LABEL_4:
  if ((v13 & 0xC000000000000001) != 0)
  {
    v15 = MEMORY[0x1C6911DB0](0, v13);
    goto LABEL_7;
  }

  if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v15 = *(v13 + 32);
LABEL_7:
    v16 = v15;

    v17 = [v16 formattedValue];

    v18 = sub_1C1F52454();
    v20 = v19;

LABEL_18:
    [a1 setNumberFormatter_];
    goto LABEL_19;
  }

  __break(1u);
LABEL_41:
  __break(1u);
  return result;
}

uint64_t CalculateExpression.CustomOperandOperation.__allocating_init(_:negative:)(uint64_t a1, char a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  return sub_1C1E81538();
}

uint64_t CalculateExpression.CustomOperandOperation.init(_:negative:)(uint64_t a1, char a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return sub_1C1E81538();
}

uint64_t CalculateExpression.CustomOperandOperation.deinit()
{
  v0 = CalculateExpression.OperandOperation.deinit();

  return v0;
}

uint64_t CalculateExpression.CustomOperandOperation.__deallocating_deinit()
{
  v0 = CalculateExpression.OperandOperation.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 25, 7);
}

unint64_t sub_1C1EFA978()
{
  result = qword_1EDC2C318;
  if (!qword_1EDC2C318)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDC2C318);
  }

  return result;
}

uint64_t sub_1C1EFAA14(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16) != 1)
  {
    return 0;
  }

  CalculateExpression.RichExpression.editingToken(matching:)(sub_1C1EC5418, v55);
  v5 = v55[0];
  if (!v55[0])
  {
    return 0;
  }

  v6 = v55[1];
  v52 = v55[3];
  v53 = v55[2];
  v7 = *(*v55[0] + 416);

  v8 = v7(v6);
  type metadata accessor for CalculateExpression.RichToken(0);
  LOBYTE(v55[0]) = 15;
  v9 = sub_1C1E7DD60();
  v10 = CalculateExpression.RichToken.__allocating_init(text:type:isImplicit:)(0, 0, v55, v9 & 1);
  v11 = v6 + 1;
  if (__OFADD__(v6, 1))
  {
LABEL_82:
    __break(1u);
LABEL_83:
    __break(1u);
LABEL_84:
    v20 = sub_1C1F52994();
LABEL_16:

    if (a1 < v20)
    {
      v51 = v6;
      v22 = 0;
      v11 += 5;
      v6 = 15;
      while (1)
      {
        a1 = v11 - 4;
        v23 = v2(v21);
        v24 = v23;
        if ((v23 & 0xC000000000000001) != 0)
        {
          v25 = MEMORY[0x1C6911DB0](v11 - 4, v23);
        }

        else
        {
          if (a1 < 0)
          {
            __break(1u);
LABEL_75:
            __break(1u);
LABEL_76:
            __break(1u);
LABEL_77:
            if ((*(*v24 + 256))())
            {
              v50 = (*(*v5 + 408))(v55);
              sub_1C1E98338(a1);

              v50(v55, 0);

              v6 = v51;
              goto LABEL_43;
            }

LABEL_79:

LABEL_80:
            v6 = v51;
LABEL_13:
            a1 = v11 + 1;
            if (!__OFADD__(v11, 1))
            {
              v18 = (*v5 + 392);
              v2 = *v18;
              v3 = v18;
              v19 = (*v18)(v14);
              if (!(v19 >> 62))
              {
                v20 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
                goto LABEL_16;
              }

              goto LABEL_84;
            }

            goto LABEL_83;
          }

          if (a1 >= *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_75;
          }

          v25 = *(v23 + 8 * v11);
        }

        v24 = OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type;
        LOBYTE(v55[0]) = *(v25 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type);
        v54 = 15;
        if (static CalculateExpression.TokenType.== infix(_:_:)(v55, &v54))
        {

          v27 = __OFADD__(v22++, 1);
          if (v27)
          {
            __break(1u);
            goto LABEL_79;
          }
        }

        else
        {
          LOBYTE(v55[0]) = *(v25 + v24);
          v54 = 16;
          v24 = static CalculateExpression.TokenType.== infix(_:_:)(v55, &v54);

          if (v24)
          {
            if (!v22)
            {
              goto LABEL_36;
            }

            v27 = __OFSUB__(v22--, 1);
            if (v27)
            {
              __break(1u);
              goto LABEL_82;
            }
          }
        }

        v27 = __OFADD__(a1, 1);
        a1 = v11 - 3;
        if (v27)
        {
          goto LABEL_76;
        }

        v28 = v2(v26);
        if (v28 >> 62)
        {
          v29 = sub_1C1F52994();
        }

        else
        {
          v29 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        ++v11;
        if (a1 >= v29)
        {
LABEL_36:
          v6 = v51;
          break;
        }
      }
    }

    LOBYTE(v55[0]) = 16;
    v24 = CalculateExpression.RichToken.__allocating_init(text:type:isImplicit:)(0, 0, v55, 1);
    v31 = (*(*v5 + 408))(v55);
    if (*v30 >> 62)
    {
      v32 = sub_1C1F52994();
    }

    else
    {
      v32 = *((*v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v32 < a1)
    {
      __break(1u);
    }

    else if ((a1 & 0x8000000000000000) == 0)
    {
      sub_1C1E98664(a1, a1, v24);

      v31(v55, 0);

      goto LABEL_42;
    }

    __break(1u);
LABEL_88:
    __break(1u);
LABEL_89:
    __break(1u);
LABEL_90:
    __break(1u);
    goto LABEL_91;
  }

  v3 = v10;
  if ((*(*a1 + 224))())
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF21130, &unk_1C1F56A00);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_1C1F563C0;
    *(v12 + 32) = v3;
    v13 = *(*a1 + 400);

    v13(v12);
    v14 = (*(*a1 + 232))(0);
LABEL_12:
    v11 = 0;
    goto LABEL_13;
  }

  if (!v8 || ((*(*v5 + 584))() & 1) != 0 || ((*(*v5 + 568))() & 1) != 0 || ((*(*v5 + 576))() & 1) != 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBF21130, &unk_1C1F56A00);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_1C1F563C0;
    *(v16 + 32) = v3;
    v17 = *(*v5 + 400);

    v14 = v17(v16);
    goto LABEL_12;
  }

  v33 = v7(v6 + 1);
  if (!v33)
  {
LABEL_56:
    v45 = *(*v5 + 408);

    v24 = v45(v55);
    if (!(*v46 >> 62))
    {
      result = *((*v46 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= v11)
      {
        goto LABEL_58;
      }

      goto LABEL_92;
    }

LABEL_91:
    result = sub_1C1F52994();
    if (result >= v11)
    {
LABEL_58:
      if ((v11 & 0x8000000000000000) == 0)
      {
        sub_1C1E98664(v11, v11, v3);

        v14 = (v24)(v55, 0);
        if (v11)
        {
          v47 = 0;
          v2 = *(*v5 + 392);
          v3 = *v5 + 392;
          v51 = v6;
          v6 += 5;
          while (1)
          {
            a1 = v6 - 4;
            v48 = v2(v14);
            if ((v48 & 0xC000000000000001) != 0)
            {
              v24 = MEMORY[0x1C6911DB0](v6 - 4, v48);
            }

            else
            {
              if (a1 >= *((v48 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_88;
              }

              v24 = *(v48 + 8 * v6);
            }

            v49 = OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type;
            LOBYTE(v55[0]) = *(v24 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type);
            v54 = 16;
            if (static CalculateExpression.TokenType.== infix(_:_:)(v55, &v54))
            {

              v27 = __OFADD__(v47++, 1);
              if (v27)
              {
                goto LABEL_89;
              }
            }

            else
            {
              LOBYTE(v55[0]) = *(v24 + v49);
              v54 = 15;
              if (static CalculateExpression.TokenType.== infix(_:_:)(v55, &v54))
              {
                if (!v47)
                {
                  goto LABEL_77;
                }

                v27 = __OFSUB__(v47--, 1);
                if (v27)
                {
                  goto LABEL_90;
                }
              }

              else
              {
              }
            }

            --v6;
            if (a1 <= 1)
            {
              goto LABEL_80;
            }
          }
        }

        goto LABEL_13;
      }

      goto LABEL_93;
    }

LABEL_92:
    __break(1u);
LABEL_93:
    __break(1u);
LABEL_94:
    __break(1u);
    goto LABEL_95;
  }

  v34 = v33;
  v35 = OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type;
  LOBYTE(v55[0]) = *(v33 + OBJC_IVAR____TtCC9Calculate19CalculateExpression9RichToken_type);
  v54 = 15;
  if ((static CalculateExpression.TokenType.== infix(_:_:)(v55, &v54) & 1) == 0 || ((*(*v34 + 256))() & 1) == 0)
  {

    goto LABEL_56;
  }

  v36 = (*(*v34 + 232))();
  v38 = v37;
  LOBYTE(v55[0]) = *(v34 + v35);
  v39 = sub_1C1E7DD60() & 1;
  v40 = CalculateExpression.RichToken.__allocating_init(text:type:isImplicit:)(v36, v38, v55, v39);
  v41 = (*(*v5 + 408))(v55);
  v43 = v42;
  v44 = *v42;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v43 = v44;
  if (!result || (v44 & 0x8000000000000000) != 0 || (v44 & 0x4000000000000000) != 0)
  {
    result = sub_1C1E98444(v44);
    v44 = result;
    *v43 = result;
  }

  if (v11 < 0)
  {
    goto LABEL_94;
  }

  if (v11 >= *((v44 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_95:
    __break(1u);
    return result;
  }

  *((v44 & 0xFFFFFFFFFFFFFF8) + 8 * v11 + 0x20) = v40;

  v41(v55, 0);

LABEL_42:

LABEL_43:
  sub_1C1E98278(v5, v6, v53, v52);
  return 1;
}

uint64_t CalculateExpression.OpenParenthesisOperation.__deallocating_deinit()
{
  v0 = CalculateExpression.Operation.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 16, 7);
}

void sub_1C1EFB48C(char *a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  if (v3 == 15420 && v4 == 0xE200000000000000)
  {
    goto LABEL_14;
  }

  v6 = sub_1C1F52C64();
  v8 = v3 == 15934 && v4 == 0xE200000000000000;
  v9 = 3;
  if ((v6 & 1) == 0 && !v8)
  {
    if (sub_1C1F52C64())
    {
LABEL_14:
      v9 = 3;
      goto LABEL_15;
    }

    if (v3 == 37 && v4 == 0xE100000000000000 || (sub_1C1F52C64()) && *(v1 + 32) != 1)
    {
      v9 = 1;
    }

    else
    {
      v9 = 2;
    }
  }

LABEL_15:
  *a1 = v9;
}