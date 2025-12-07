void sub_1D600427C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1D6007D30(0, &qword_1EC882250, sub_1D6007730, &type metadata for FormatDerivedDataOptionScope);
  v4 = sub_1D7263CBC();
  v5 = v4;
  if (!*(v3 + 16))
  {

LABEL_38:
    *v2 = v5;
    return;
  }

  v31 = v3;
  v6 = 0;
  v7 = v3 + 56;
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
  v12 = v4 + 56;
  while (v10)
  {
    v15 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_15:
    v18 = *(v3 + 48) + 24 * (v15 | (v6 << 6));
    v19 = *v18;
    v20 = *(v18 + 8);
    v21 = *(v18 + 16);
    sub_1D7264A0C();
    if (v21 <= 2)
    {
      if (v21)
      {
        if (v21 == 1)
        {
          v22 = 2;
        }

        else
        {
          v22 = 3;
        }
      }

      else
      {
        v22 = 1;
      }

      goto LABEL_25;
    }

    if (v21 == 3)
    {
      v22 = 4;
      goto LABEL_25;
    }

    if (v21 == 4)
    {
      v22 = 5;
LABEL_25:
      MEMORY[0x1DA6FC0B0](v22);

      sub_1D72621EC();
      goto LABEL_26;
    }

    MEMORY[0x1DA6FC0B0](0);
LABEL_26:
    v23 = sub_1D7264A5C();
    v24 = -1 << *(v5 + 32);
    v25 = v23 & ~v24;
    v26 = v25 >> 6;
    if (((-1 << v25) & ~*(v12 + 8 * (v25 >> 6))) == 0)
    {
      v27 = 0;
      v28 = (63 - v24) >> 6;
      while (++v26 != v28 || (v27 & 1) == 0)
      {
        v29 = v26 == v28;
        if (v26 == v28)
        {
          v26 = 0;
        }

        v27 |= v29;
        v30 = *(v12 + 8 * v26);
        if (v30 != -1)
        {
          v13 = __clz(__rbit64(~v30)) + (v26 << 6);
          goto LABEL_7;
        }
      }

      goto LABEL_40;
    }

    v13 = __clz(__rbit64((-1 << v25) & ~*(v12 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
    *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
    v14 = *(v5 + 48) + 24 * v13;
    *v14 = v19;
    *(v14 + 8) = v20;
    *(v14 + 16) = v21;
    ++*(v5 + 16);
    v3 = v31;
  }

  v16 = v6;
  while (1)
  {
    v6 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v6 >= v11)
    {

      v2 = v1;
      goto LABEL_38;
    }

    v17 = *(v7 + 8 * v6);
    ++v16;
    if (v17)
    {
      v15 = __clz(__rbit64(v17));
      v10 = (v17 - 1) & v17;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_40:
  __break(1u);
}

void sub_1D600453C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1D6007D30(0, &qword_1EDF042F8, sub_1D5C95CB4, &type metadata for FormatButtonNodeState);
  v4 = sub_1D7263CBC();
  v5 = v4;
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
    v11 = v4 + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v3 + 48) + (v13 | (v6 << 6)));
      sub_1D7264A0C();
      sub_1D72621EC();

      v17 = sub_1D7264A5C();
      v18 = -1 << *(v5 + 32);
      v19 = v17 & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v11 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v11 + 8 * v20);
          if (v24 != -1)
          {
            v12 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v19) & ~*(v11 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v5 + 48) + v12) = v16;
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
        goto LABEL_26;
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
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }
}

void sub_1D60047F0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1D6007D30(0, &qword_1EC882230, sub_1D6007548, &type metadata for DebugFormatWorkspaceDevice);
  v4 = sub_1D7263CBC();
  v5 = v4;
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
    v11 = v4 + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v3 + 48) + 2 * (v14 | (v6 << 6)));
      v18 = *v17;
      v19 = v17[1];
      sub_1D7264A0C();
      sub_1D6E23ADC(v18);
      sub_1D72621EC();

      sub_1D72621EC();

      v20 = sub_1D7264A5C();
      v21 = -1 << *(v5 + 32);
      v22 = v20 & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v11 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v11 + 8 * v23);
          if (v27 != -1)
          {
            v12 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v22) & ~*(v11 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v5 + 48) + 2 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v16 = *(v3 + 56 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }
}

void sub_1D6004AA4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1D6007D30(0, &qword_1EDF1A598, sub_1D5E2A458, &type metadata for FormatOptionsNodeStatementValue.CodingValidationType);
  v4 = sub_1D7263CBC();
  v5 = v4;
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
    v11 = v4 + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v3 + 48) + (v13 | (v6 << 6)));
      sub_1D7264A0C();
      if (v16 == 12)
      {
        MEMORY[0x1DA6FC0B0](0);
      }

      else
      {
        MEMORY[0x1DA6FC0B0](1);
        sub_1D72621EC();
      }

      v17 = sub_1D7264A5C();
      v18 = -1 << *(v5 + 32);
      v19 = v17 & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v11 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v11 + 8 * v20);
          if (v24 != -1)
          {
            v12 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_31;
      }

      v12 = __clz(__rbit64((-1 << v19) & ~*(v11 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v5 + 48) + v12) = v16;
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
}

void sub_1D6004E40(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1D6007D30(0, &qword_1EC882288, sub_1D60079B8, &type metadata for FormatPackageRole);
  v4 = sub_1D7263CBC();
  v5 = v4;
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
    v11 = v4 + 56;
    while (v9)
    {
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_17:
      v20 = *(*(v3 + 48) + (v17 | (v6 << 6)));
      sub_1D7264A0C();
      sub_1D72621EC();

      v12 = sub_1D7264A5C();
      v13 = -1 << *(v5 + 32);
      v14 = v12 & ~v13;
      v15 = v14 >> 6;
      if (((-1 << v14) & ~*(v11 + 8 * (v14 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v13) >> 6;
        while (++v15 != v22 || (v21 & 1) == 0)
        {
          v23 = v15 == v22;
          if (v15 == v22)
          {
            v15 = 0;
          }

          v21 |= v23;
          v24 = *(v11 + 8 * v15);
          if (v24 != -1)
          {
            v16 = __clz(__rbit64(~v24)) + (v15 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_29;
      }

      v16 = __clz(__rbit64((-1 << v14) & ~*(v11 + 8 * (v14 >> 6)))) | v14 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v11 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v5 + 48) + v16) = v20;
      ++*(v5 + 16);
    }

    v18 = v6;
    while (1)
    {
      v6 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_27;
      }

      v19 = *(v3 + 56 + 8 * v6);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v9 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
  }

  else
  {

LABEL_27:
    *v2 = v5;
  }
}

void sub_1D600513C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4)
{
  v5 = v4;
  v6 = *v4;
  sub_1D6007D30(0, a2, a3, a4);
  v7 = sub_1D7263CBC();
  v8 = v7;
  if (*(v6 + 16))
  {
    v33 = v6;
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
    v15 = v7 + 56;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v21 = *(v6 + 48) + 24 * (v18 | (v9 << 6));
      v22 = *v21;
      v23 = *(v21 + 8);
      v24 = *(v21 + 16);
      sub_1D7264A0C();
      MEMORY[0x1DA6FC0B0](v24);

      sub_1D72621EC();
      v25 = sub_1D7264A5C();
      v26 = -1 << *(v8 + 32);
      v27 = v25 & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v15 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v15 + 8 * v28);
          if (v32 != -1)
          {
            v16 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v16 = __clz(__rbit64((-1 << v27) & ~*(v15 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = *(v8 + 48) + 24 * v16;
      *v17 = v22;
      *(v17 + 8) = v23;
      *(v17 + 16) = v24;
      ++*(v8 + 16);
      v6 = v33;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v5 = v4;
        goto LABEL_26;
      }

      v20 = *(v10 + 8 * v9);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v5 = v8;
  }
}

void sub_1D6005388(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4)
{
  v5 = v4;
  v6 = *v4;
  sub_1D6007D30(0, a2, a3, a4);
  v7 = sub_1D7263CBC();
  v8 = v7;
  if (*(v6 + 16))
  {
    v9 = 0;
    v10 = 1 << *(v6 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v6 + 56);
    v13 = (v10 + 63) >> 6;
    v14 = v7 + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(*(v6 + 48) + (v16 | (v9 << 6)));
      sub_1D7264A0C();
      sub_1D72621EC();

      v20 = sub_1D7264A5C();
      v21 = -1 << *(v8 + 32);
      v22 = v20 & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v8 + 48) + v15) = v19;
      ++*(v8 + 16);
    }

    v17 = v9;
    while (1)
    {
      v9 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v9 >= v13)
      {

        v5 = v4;
        goto LABEL_26;
      }

      v18 = *(v6 + 56 + 8 * v9);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v5 = v8;
  }
}

void sub_1D60055CC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1D600745C(0);
  v4 = sub_1D7263CBC();
  v5 = v4;
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
    v11 = v4 + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v3 + 48) + 8 * (v13 | (v6 << 6)));
      sub_1D7264A0C();
      MEMORY[0x1DA6FC0B0](v16);
      v17 = sub_1D7264A5C();
      v18 = -1 << *(v5 + 32);
      v19 = v17 & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v11 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v11 + 8 * v20);
          if (v24 != -1)
          {
            v12 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v19) & ~*(v11 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
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
        goto LABEL_26;
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
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }
}

void sub_1D60057E0(uint64_t a1)
{
  v2 = v1;
  v35 = sub_1D726098C();
  v3 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35, v4);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v1;
  sub_1D5E2A4AC(0);
  v8 = sub_1D7263CBC();
  v9 = v7;
  if (*(v7 + 16))
  {
    v30 = v1;
    v10 = 0;
    v11 = v7 + 56;
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 56);
    v15 = (v12 + 63) >> 6;
    v33 = v3 + 16;
    v34 = v3;
    v16 = v8 + 56;
    v31 = (v3 + 32);
    v32 = v9;
    while (v14)
    {
      v18 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v21 = *(v34 + 72);
      (*(v34 + 16))(v6, *(v9 + 48) + v21 * (v18 | (v10 << 6)), v35);
      sub_1D5D51EB4(&unk_1EDF168A8, 255, MEMORY[0x1E69B4188], MEMORY[0x1E69B4190]);
      v22 = sub_1D7261E7C();
      v23 = -1 << *(v8 + 32);
      v24 = v22 & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v16 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v16 + 8 * v25);
          if (v29 != -1)
          {
            v17 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v17 = __clz(__rbit64((-1 << v24) & ~*(v16 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      (*v31)(*(v8 + 48) + v17 * v21, v6, v35);
      ++*(v8 + 16);
      v9 = v32;
    }

    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v2 = v30;
        goto LABEL_26;
      }

      v20 = *(v11 + 8 * v10);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v14 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v8;
  }
}

void sub_1D6005AF4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1D6007D30(0, &qword_1EC882240, sub_1D600759C, &type metadata for DebugFormatInventoryPackageRole);
  v4 = sub_1D7263CBC();
  v5 = v4;
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
    v11 = v4 + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v3 + 48) + (v13 | (v6 << 6)));
      sub_1D7264A0C();
      sub_1D72621EC();

      v17 = sub_1D7264A5C();
      v18 = -1 << *(v5 + 32);
      v19 = v17 & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v11 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v11 + 8 * v20);
          if (v24 != -1)
          {
            v12 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v19) & ~*(v11 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v5 + 48) + v12) = v16;
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
        goto LABEL_26;
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
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }
}

void sub_1D6005DD8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1D6007D30(0, &qword_1EC882280, sub_1D6007964, &type metadata for FormatSourceMap);
  v4 = sub_1D7263CBC();
  v5 = v4;
  if (*(v3 + 16))
  {
    v31 = v1;
    v32 = v3;
    v6 = 0;
    v7 = v3 + 56;
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
    v12 = v4 + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 32 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      v21 = v18[2];
      v22 = v18[3];
      sub_1D7264A0C();

      sub_1D72621EC();
      MEMORY[0x1DA6FC0B0](v21);
      MEMORY[0x1DA6FC0B0](v22);
      v23 = sub_1D7264A5C();
      v24 = -1 << *(v5 + 32);
      v25 = v23 & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v12 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v12 + 8 * v26);
          if (v30 != -1)
          {
            v13 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v13 = __clz(__rbit64((-1 << v25) & ~*(v12 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 32 * v13);
      *v14 = v19;
      v14[1] = v20;
      v14[2] = v21;
      v14[3] = v22;
      ++*(v5 + 16);
      v3 = v32;
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v6 >= v11)
      {

        v2 = v31;
        goto LABEL_26;
      }

      v17 = *(v7 + 8 * v6);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }
}

void sub_1D6006054(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1D6007D30(0, &qword_1EDF04310, sub_1D6007C88, &type metadata for LoadedFont);
  v4 = sub_1D7263CBC();
  v5 = v4;
  if (*(v3 + 16))
  {
    v31 = v1;
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
    v11 = v4 + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = *(v3 + 48) + 16 * (v14 | (v6 << 6));
      v18 = *v17;
      v19 = *(v17 + 8);
      sub_1D7264A0C();
      v20 = v19;
      v21 = v18;
      v22 = sub_1D726372C();
      MEMORY[0x1DA6FC0B0](v22);
      v23 = sub_1D7264A5C();
      v24 = -1 << *(v5 + 32);
      v25 = v23 & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v11 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v11 + 8 * v26);
          if (v30 != -1)
          {
            v12 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v25) & ~*(v11 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v5 + 48) + 16 * v12);
      *v13 = v21;
      v13[1] = v19;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v31;
        goto LABEL_26;
      }

      v16 = *(v3 + 56 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }
}

void sub_1D60062A8(uint64_t a1, unint64_t *a2, unint64_t *a3, void *a4, unint64_t *a5)
{
  v6 = v5;
  v7 = *v5;
  sub_1D60075F0(0, a2, a3, a4, a5);
  v8 = sub_1D7263CBC();
  v9 = v8;
  if (*(v7 + 16))
  {
    v29 = v5;
    v10 = 0;
    v11 = 1 << *(v7 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v7 + 56);
    v14 = (v11 + 63) >> 6;
    v15 = v8 + 56;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(*(v7 + 48) + 8 * (v17 | (v10 << 6)));
      v21 = sub_1D72636FC();
      v22 = -1 << *(v9 + 32);
      v23 = v21 & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v15 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v15 + 8 * v24);
          if (v28 != -1)
          {
            v16 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v16 = __clz(__rbit64((-1 << v23) & ~*(v15 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v9 + 48) + 8 * v16) = v20;
      ++*(v9 + 16);
    }

    v18 = v10;
    while (1)
    {
      v10 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v10 >= v14)
      {

        v6 = v29;
        goto LABEL_26;
      }

      v19 = *(v7 + 56 + 8 * v10);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v6 = v9;
  }
}

void sub_1D60064B0(uint64_t a1)
{
  v2 = v1;
  v35 = sub_1D7258DBC();
  v3 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35, v4);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v1;
  sub_1D6007A94(0);
  v8 = sub_1D7263CBC();
  v9 = v7;
  if (*(v7 + 16))
  {
    v30 = v1;
    v10 = 0;
    v11 = v7 + 56;
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 56);
    v15 = (v12 + 63) >> 6;
    v33 = v3 + 16;
    v34 = v3;
    v16 = v8 + 56;
    v31 = (v3 + 32);
    v32 = v9;
    while (v14)
    {
      v18 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v21 = *(v34 + 72);
      (*(v34 + 16))(v6, *(v9 + 48) + v21 * (v18 | (v10 << 6)), v35);
      sub_1D5D51EB4(&qword_1EDF18A30, 255, MEMORY[0x1E6969C28], MEMORY[0x1E6969C38]);
      v22 = sub_1D7261E7C();
      v23 = -1 << *(v8 + 32);
      v24 = v22 & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v16 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v16 + 8 * v25);
          if (v29 != -1)
          {
            v17 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v17 = __clz(__rbit64((-1 << v24) & ~*(v16 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      (*v31)(*(v8 + 48) + v17 * v21, v6, v35);
      ++*(v8 + 16);
      v9 = v32;
    }

    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v2 = v30;
        goto LABEL_26;
      }

      v20 = *(v11 + 8 * v10);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v14 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v8;
  }
}

void sub_1D60067C4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1D6007D30(0, &qword_1EC87FAE8, sub_1D5E2A08C, &type metadata for DebugFormatPackageTreeSection);
  v4 = sub_1D7263CBC();
  v5 = v4;
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
    v11 = v4 + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = *(v3 + 48) + 16 * (v14 | (v6 << 6));
      v18 = *v17;
      v19 = *(v17 + 8);
      sub_1D7264A0C();
      if (v19)
      {
        v20 = qword_1D728D788[v18];
      }

      else
      {
        MEMORY[0x1DA6FC0B0](2);
        v20 = v18;
      }

      MEMORY[0x1DA6FC0B0](v20);
      v21 = sub_1D7264A5C();
      v22 = -1 << *(v5 + 32);
      v23 = v21 & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v11 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v11 + 8 * v24);
          if (v28 != -1)
          {
            v12 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_31;
      }

      v12 = __clz(__rbit64((-1 << v23) & ~*(v11 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = *(v5 + 48) + 16 * v12;
      *v13 = v18;
      *(v13 + 8) = v19;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_29;
      }

      v16 = *(v3 + 56 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
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
}

void sub_1D6006A30(uint64_t a1, _BYTE *a2, uint64_t a3)
{
  v4 = [*(*(a3 + OBJC_IVAR____TtC8NewsFeed31FormatPuzzleEmbedViewController_puzzleEmbedViewController) + OBJC_IVAR____TtC8NewsFeed25PuzzleEmbedViewController_webContentViewController) messageHandlerManager];
  v5 = sub_1D726203C();

  [v4 addMessageHandler:a1 name:v5];
  swift_unknownObjectRelease();
}

void sub_1D6006C00()
{
  v1 = sub_1D725895C();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1, v3);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC8NewsFeed31FormatPuzzleEmbedViewController_onReuse;
  sub_1D6007BE4(0, &qword_1EDF3B450, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69D8770]);
  *(v0 + v6) = [objc_allocWithZone(v7) init];
  v8 = (v0 + OBJC_IVAR____TtC8NewsFeed31FormatPuzzleEmbedViewController_layoutIdentifier);
  *v8 = 0;
  v8[1] = 0;
  v9 = OBJC_IVAR____TtC8NewsFeed31FormatPuzzleEmbedViewController_layoutGuide;
  *(v0 + v9) = [objc_allocWithZone(MEMORY[0x1E69CE188]) initWithBounds:0.0 contentFrame:0.0 contentSafeAreaFrame:0.0 systemSafeAreaFrame:{0.0, 0.0, 0.0, 0.0, 0.0, 0, 0, 0, 0, 0, 0, 0, 0}];
  swift_weakInit();
  v10 = (v0 + OBJC_IVAR____TtC8NewsFeed31FormatPuzzleEmbedViewController_onKeyboardWillShow);
  *v10 = 0;
  v10[1] = 0;
  v11 = (v0 + OBJC_IVAR____TtC8NewsFeed31FormatPuzzleEmbedViewController_onKeyboardWillHide);
  *v11 = 0;
  v11[1] = 0;
  *(v0 + OBJC_IVAR____TtC8NewsFeed31FormatPuzzleEmbedViewController_teaserInteractionEvents) = MEMORY[0x1E69E7CD0];
  v12 = (v0 + OBJC_IVAR____TtC8NewsFeed31FormatPuzzleEmbedViewController_currentAccessoryView);
  *v12 = 0;
  v12[1] = 0;
  v13 = (v0 + OBJC_IVAR____TtC8NewsFeed31FormatPuzzleEmbedViewController_identifier);
  sub_1D725894C();
  v14 = sub_1D725893C();
  v16 = v15;
  (*(v2 + 8))(v5, v1);
  *v13 = v14;
  v13[1] = v16;
  sub_1D726402C();
  __break(1u);
}

id _s8NewsFeed31FormatPuzzleEmbedViewControllerC06puzzleE16DidReceiveAction6actionySo07SWEmbedK0_p_tF_0(void *a1)
{
  if (qword_1EDF3B838 != -1)
  {
    swift_once();
  }

  v2 = sub_1D725C42C();
  __swift_project_value_buffer(v2, qword_1EDFFCFA8);
  swift_unknownObjectRetain();
  v3 = sub_1D725C3FC();
  v4 = sub_1D7262EDC();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v16 = v6;
    *v5 = 136315138;
    v7 = [a1 description];
    v8 = sub_1D726207C();
    v10 = v9;

    v11 = sub_1D5BC5100(v8, v10, &v16);

    *(v5 + 4) = v11;
    _os_log_impl(&dword_1D5B42000, v3, v4, "FormatPuzzleEmbedViewController: Received embed action: type= %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v6);
    MEMORY[0x1DA6FD500](v6, -1, -1);
    MEMORY[0x1DA6FD500](v5, -1, -1);
  }

  result = [a1 canHandle];
  if (result)
  {
    v13 = sub_1D725C3FC();
    v14 = sub_1D7262EDC();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_1D5B42000, v13, v14, "FormatPuzzleEmbedViewController: Action is handled internally...", v15, 2u);
      MEMORY[0x1DA6FD500](v15, -1, -1);
    }

    return [a1 perform];
  }

  return result;
}

void sub_1D6007078(const char *a1)
{
  if (qword_1EDF3B838 != -1)
  {
    swift_once();
  }

  v2 = sub_1D725C42C();
  __swift_project_value_buffer(v2, qword_1EDFFCFA8);
  oslog = sub_1D725C3FC();
  v3 = sub_1D7262EDC();
  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1D5B42000, oslog, v3, a1, v4, 2u);
    MEMORY[0x1DA6FD500](v4, -1, -1);
  }
}

unint64_t sub_1D60071DC()
{
  result = qword_1EDF29D10;
  if (!qword_1EDF29D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF29D10);
  }

  return result;
}

void sub_1D6007230(uint64_t a1)
{
  if (!qword_1EDF042E8)
  {
    type metadata accessor for WebEmbedDatastoreCacheKey(255);
    sub_1D5D51EB4(qword_1EDF23AD0, 255, type metadata accessor for WebEmbedDatastoreCacheKey, &unk_1D7343DEC);
    v1 = sub_1D7263CEC();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDF042E8);
    }
  }
}

void sub_1D60072C8(uint64_t a1)
{
  if (!qword_1EDF042F0)
  {
    type metadata accessor for WebEmbedDataVisualization(255);
    sub_1D5D51EB4(&qword_1EDF0BB88, 255, type metadata accessor for WebEmbedDataVisualization, &protocol conformance descriptor for WebEmbedDataVisualization);
    v1 = sub_1D7263CEC();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDF042F0);
    }
  }
}

unint64_t sub_1D6007360()
{
  result = qword_1EC8821F8;
  if (!qword_1EC8821F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8821F8);
  }

  return result;
}

unint64_t sub_1D60073B4()
{
  result = qword_1EC882210;
  if (!qword_1EC882210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC882210);
  }

  return result;
}

unint64_t sub_1D6007408()
{
  result = qword_1EDF13040;
  if (!qword_1EDF13040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF13040);
  }

  return result;
}

void sub_1D600745C(uint64_t a1)
{
  if (!qword_1EC882220)
  {
    type metadata accessor for UIUserInterfaceIdiom(255);
    sub_1D5D51EB4(&qword_1EC880048, 255, type metadata accessor for UIUserInterfaceIdiom, &unk_1D7272A30);
    v1 = sub_1D7263CEC();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC882220);
    }
  }
}

unint64_t sub_1D60074F4()
{
  result = qword_1EDF20850;
  if (!qword_1EDF20850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF20850);
  }

  return result;
}

unint64_t sub_1D6007548()
{
  result = qword_1EC882238;
  if (!qword_1EC882238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC882238);
  }

  return result;
}

unint64_t sub_1D600759C()
{
  result = qword_1EC885810;
  if (!qword_1EC885810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC885810);
  }

  return result;
}

void sub_1D60075F0(uint64_t a1, unint64_t *a2, unint64_t *a3, void *a4, unint64_t *a5)
{
  if (!*a2)
  {
    sub_1D5B5A498(255, a3, a4);
    sub_1D5E2A738(a5, a3, a4);
    v9 = sub_1D7263CEC();
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_1D600767C(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 0xCu)
  {
  }

  return result;
}

double sub_1D6007694(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 0xCu)
  {
  }

  return result;
}

unint64_t sub_1D60076AC()
{
  result = qword_1EC895900;
  if (!qword_1EC895900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC895900);
  }

  return result;
}

uint64_t sub_1D6007700(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 4u)
  {
  }

  return result;
}

double sub_1D6007718(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 4u)
  {
  }

  return result;
}

unint64_t sub_1D6007730()
{
  result = qword_1EC882258;
  if (!qword_1EC882258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC882258);
  }

  return result;
}

unint64_t sub_1D6007784()
{
  result = qword_1EC882268;
  if (!qword_1EC882268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC882268);
  }

  return result;
}

void sub_1D60077D8(uint64_t a1)
{
  if (!qword_1EDF44860)
  {
    type metadata accessor for FormatVersionRequirement(255);
    v1 = sub_1D726393C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDF44860);
    }
  }
}

uint64_t sub_1D6007830(uint64_t result, unint64_t a2, unsigned __int8 a3)
{
  if (a3 >> 6 == 1)
  {
    return sub_1D5CBA110(result, a2);
  }

  if (!(a3 >> 6))
  {
  }

  return result;
}

void sub_1D6007850(uint64_t a1, unint64_t a2, unsigned __int8 a3)
{
  if (a3 >> 6 == 1)
  {
    sub_1D5CBA0FC(a1, a2);
  }

  else if (!(a3 >> 6))
  {
  }
}

uint64_t sub_1D6007870(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1D5D50E70(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_1D60078CC(uint64_t a1)
{
  if (!qword_1EC882270)
  {
    type metadata accessor for FormatDerivedDataResultOptionReference(255);
    sub_1D5D51EB4(&qword_1EC882278, 255, type metadata accessor for FormatDerivedDataResultOptionReference, &unk_1D727A0EC);
    v1 = sub_1D7263CEC();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC882270);
    }
  }
}

unint64_t sub_1D6007964()
{
  result = qword_1EC8956E0;
  if (!qword_1EC8956E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8956E0);
  }

  return result;
}

unint64_t sub_1D60079B8()
{
  result = qword_1EC882290;
  if (!qword_1EC882290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC882290);
  }

  return result;
}

uint64_t sub_1D6007A14(double a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8)
{
  v9 = *(v8 + 16);
  *v12 = a1;
  *&v12[1] = a2;
  *&v12[2] = a3;
  *&v12[3] = a4;
  *v11 = a5;
  *&v11[1] = a6;
  *&v11[2] = a7;
  *&v11[3] = a8;
  return v9(v12, v11);
}

void sub_1D6007A94(uint64_t a1)
{
  if (!qword_1EDF04338)
  {
    sub_1D7258DBC();
    sub_1D5D51EB4(&qword_1EDF18A30, 255, MEMORY[0x1E6969C28], MEMORY[0x1E6969C38]);
    v1 = sub_1D7263CEC();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDF04338);
    }
  }
}

unint64_t sub_1D6007B2C()
{
  result = qword_1EC8822B0;
  if (!qword_1EC8822B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8822B0);
  }

  return result;
}

void sub_1D6007BE4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_1D6007C88()
{
  result = qword_1EDF12990;
  if (!qword_1EDF12990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF12990);
  }

  return result;
}

unint64_t sub_1D6007CDC()
{
  result = qword_1EDF0F6E0;
  if (!qword_1EDF0F6E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0F6E0);
  }

  return result;
}

void sub_1D6007D30(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4)
{
  if (!*a2)
  {
    a3();
    v5 = sub_1D7263CEC();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t FormatGroupNodeStyle.identifier.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 16);

  return v1;
}

double FormatGroupNodeStyle.identifier.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;

  return result;
}

uint64_t FormatGroupNodeStyle.class.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

double FormatGroupNodeStyle.selectors.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 48) = a1;

  return result;
}

uint64_t FormatGroupNodeStyle.cornerRadius.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 72);
  v3 = *(v1 + 80);
  *a1 = v2;
  *(a1 + 8) = v3;
  v4 = *(v1 + 88);
  *(a1 + 16) = v4;
  return sub_1D5ED34B0(v2, v3, v4);
}

uint64_t FormatGroupNodeStyle.shadow.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 128);
  v4 = *(v1 + 160);
  v10 = *(v1 + 144);
  v3 = v10;
  v11 = v4;
  v12 = *(v1 + 176);
  v6 = *(v1 + 112);
  v9[0] = *(v1 + 96);
  v5 = v9[0];
  v9[1] = v6;
  v9[2] = v2;
  *(a1 + 80) = v12;
  *(a1 + 32) = v2;
  *(a1 + 48) = v3;
  *(a1 + 64) = v4;
  *a1 = v5;
  *(a1 + 16) = v6;
  return sub_1D60080F4(v9, v8, &qword_1EDF33718, &type metadata for FormatShadow);
}

uint64_t FormatGroupNodeStyle.visualEffect.getter@<X0>(uint64_t a1@<X8>)
{
  v20 = *(v1 + 344);
  v2 = *(v1 + 232);
  v3 = *(v1 + 248);
  v4 = *(v1 + 200);
  v17[0] = *(v1 + 184);
  v17[1] = v4;
  v17[2] = *(v1 + 216);
  v17[3] = v2;
  v5 = *(v1 + 296);
  v6 = *(v1 + 328);
  v18 = *(v1 + 312);
  v19 = v6;
  v8 = *(v1 + 264);
  v7 = *(v1 + 280);
  v17[4] = v3;
  v17[5] = v8;
  v9 = *(v1 + 264);
  v10 = *(v1 + 280);
  v11 = *(v1 + 296);
  v17[6] = v7;
  v17[7] = v11;
  v12 = *(v1 + 328);
  *(a1 + 128) = v18;
  *(a1 + 144) = v12;
  *(a1 + 160) = *(v1 + 344);
  *(a1 + 64) = *(v1 + 248);
  *(a1 + 80) = v9;
  v13 = *(v1 + 232);
  *(a1 + 96) = v10;
  *(a1 + 112) = v5;
  v14 = *(v1 + 200);
  *a1 = *(v1 + 184);
  *(a1 + 16) = v14;
  *(a1 + 32) = *(v1 + 216);
  *(a1 + 48) = v13;
  return sub_1D60080F4(v17, v16, &qword_1EDF2D860, &type metadata for FormatVisualEffect);
}

uint64_t sub_1D60080F4(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  sub_1D5B49D58(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

BOOL FormatGroupNodeStyle.isMaterialGroup.getter()
{
  v1 = *(v0 + 232);
  v2 = *(v0 + 248);
  v3 = *(v0 + 200);
  v9[0] = *(v0 + 184);
  v9[1] = v3;
  v9[2] = *(v0 + 216);
  v9[3] = v1;
  v4 = *(v0 + 296);
  v5 = *(v0 + 328);
  v9[8] = *(v0 + 312);
  v9[9] = v5;
  v6 = *(v0 + 264);
  v7 = *(v0 + 280);
  v9[4] = v2;
  v9[5] = v6;
  v10 = *(v0 + 344);
  v9[6] = v7;
  v9[7] = v4;
  return sub_1D60081E0(v9) == 0;
}

uint64_t sub_1D60081E0(uint64_t a1)
{
  v1 = *(a1 + 10);
  if (v1 > 0x80000000)
  {
    return -v1;
  }

  else
  {
    return 0;
  }
}

uint64_t FormatGroupNodeStyle.__allocating_init(identifier:class:selectors:alpha:borders:cornerRadius:shadow:clipsToBounds:ignoresSmartInvertColors:visualEffect:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t a7, uint64_t *a8, uint64_t a9, __int16 a10, uint64_t a11)
{
  v17 = swift_allocObject();
  v18 = *a6;
  v19 = *a8;
  v29 = a8[1];
  LOBYTE(a8) = *(a8 + 16);
  swift_beginAccess();
  *(v17 + 16) = a1;
  *(v17 + 24) = a2;
  *(v17 + 32) = a3;
  *(v17 + 40) = a4;
  swift_beginAccess();
  v20 = *(a11 + 128);
  v21 = *(a11 + 144);
  v22 = *(a11 + 96);
  *(v17 + 296) = *(a11 + 112);
  *(v17 + 312) = v20;
  *(v17 + 328) = v21;
  v23 = *(a11 + 64);
  *(v17 + 264) = *(a11 + 80);
  *(v17 + 280) = v22;
  v24 = *(a9 + 48);
  *(v17 + 128) = *(a9 + 32);
  *(v17 + 144) = v24;
  *(v17 + 160) = *(a9 + 64);
  v25 = *(a9 + 16);
  *(v17 + 96) = *a9;
  *(v17 + 112) = v25;
  v26 = *(a11 + 32);
  *(v17 + 232) = *(a11 + 48);
  *(v17 + 248) = v23;
  v27 = *(a11 + 16);
  *(v17 + 184) = *a11;
  *(v17 + 200) = v27;
  *(v17 + 48) = a5;
  *(v17 + 56) = v18;
  *(v17 + 64) = a7;
  *(v17 + 72) = v19;
  *(v17 + 80) = v29;
  *(v17 + 88) = a8;
  *(v17 + 176) = *(a9 + 80);
  *(v17 + 177) = a10;
  *(v17 + 344) = *(a11 + 160);
  *(v17 + 216) = v26;
  return v17;
}

uint64_t FormatGroupNodeStyle.init(identifier:class:selectors:alpha:borders:cornerRadius:shadow:clipsToBounds:ignoresSmartInvertColors:visualEffect:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t a7, uint64_t *a8, uint64_t a9, __int16 a10, uint64_t a11)
{
  v16 = *a6;
  v17 = a8[1];
  v28 = *a8;
  v18 = *(a8 + 16);
  swift_beginAccess();
  *(v11 + 16) = a1;
  *(v11 + 24) = a2;
  *(v11 + 32) = a3;
  *(v11 + 40) = a4;
  swift_beginAccess();
  v19 = *(a11 + 128);
  v20 = *(a11 + 144);
  v21 = *(a11 + 96);
  *(v11 + 296) = *(a11 + 112);
  *(v11 + 312) = v19;
  *(v11 + 328) = v20;
  v22 = *(a11 + 64);
  *(v11 + 264) = *(a11 + 80);
  *(v11 + 280) = v21;
  v23 = *(a9 + 48);
  *(v11 + 128) = *(a9 + 32);
  *(v11 + 144) = v23;
  *(v11 + 160) = *(a9 + 64);
  v24 = *(a9 + 16);
  *(v11 + 96) = *a9;
  *(v11 + 112) = v24;
  v25 = *(a11 + 32);
  *(v11 + 232) = *(a11 + 48);
  *(v11 + 248) = v22;
  v26 = *(a11 + 16);
  *(v11 + 184) = *a11;
  *(v11 + 200) = v26;
  *(v11 + 48) = a5;
  *(v11 + 56) = v16;
  *(v11 + 64) = a7;
  *(v11 + 72) = v28;
  *(v11 + 80) = v17;
  *(v11 + 88) = v18;
  *(v11 + 176) = *(a9 + 80);
  *(v11 + 177) = a10;
  *(v11 + 344) = *(a11 + 160);
  *(v11 + 216) = v25;
  return v11;
}

uint64_t sub_1D6008478()
{
  sub_1D5B49D58(0, &unk_1EDF19900, &type metadata for FormatDisplay.Check, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D7270C10;
  v2 = swift_allocObject();
  *(v2 + 16) = *(v0 + 56);
  *(inited + 32) = v2;
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1D7279960;
  v4 = swift_allocObject();
  *(v4 + 16) = *(v0 + 64);
  *(v3 + 32) = v4 | 0x2000000000000000;
  v5 = swift_allocObject();
  v6 = *(v0 + 144);
  v30 = *(v0 + 128);
  v31 = v6;
  v32 = *(v0 + 160);
  v7 = v32;
  v33 = *(v0 + 176);
  v8 = v33;
  v10 = *(v0 + 112);
  v29[0] = *(v0 + 96);
  v9 = v29[0];
  v29[1] = v10;
  *(v5 + 48) = v30;
  *(v5 + 64) = v6;
  *(v5 + 80) = v7;
  *(v5 + 96) = v8;
  *(v5 + 16) = v9;
  *(v5 + 32) = v10;
  *(v3 + 40) = v5 | 0x4000000000000000;
  v11 = swift_allocObject();
  v12 = *(v0 + 296);
  v13 = *(v0 + 328);
  v35 = *(v0 + 312);
  v36 = v13;
  v37 = *(v0 + 344);
  v14 = *(v0 + 232);
  v15 = *(v0 + 264);
  v16 = *(v0 + 280);
  v34[4] = *(v0 + 248);
  v34[5] = v15;
  v17 = *(v0 + 264);
  v18 = *(v0 + 296);
  v34[6] = *(v0 + 280);
  v34[7] = v18;
  v19 = *(v0 + 200);
  v34[0] = *(v0 + 184);
  v34[1] = v19;
  v34[2] = *(v0 + 216);
  v34[3] = v14;
  v20 = *(v0 + 328);
  *(v11 + 144) = v35;
  *(v11 + 160) = v20;
  *(v11 + 176) = *(v0 + 344);
  *(v11 + 80) = *(v0 + 248);
  *(v11 + 96) = v17;
  v21 = *(v0 + 232);
  *(v11 + 112) = v16;
  *(v11 + 128) = v12;
  v22 = *(v0 + 200);
  *(v11 + 16) = *(v0 + 184);
  *(v11 + 32) = v22;
  *(v11 + 48) = *(v0 + 216);
  *(v11 + 64) = v21;
  *(v3 + 48) = v11 | 0x5000000000000000;
  v23 = swift_allocObject();
  *(v23 + 16) = *(v0 + 177);
  *(v3 + 56) = v23 | 0x6000000000000000;
  v24 = swift_allocObject();
  *(v24 + 16) = *(v0 + 178);
  *(v3 + 64) = v24 | 0x7000000000000000;
  v25 = swift_allocObject();
  *(v25 + 16) = v3;
  *(inited + 40) = v25 | 0x8000000000000000;

  sub_1D60080F4(v29, v28, &qword_1EDF33718, &type metadata for FormatShadow);
  sub_1D60080F4(v34, v28, &qword_1EDF2D860, &type metadata for FormatVisualEffect);
  v26 = sub_1D6DFB554(inited);
  swift_setDeallocating();
  swift_arrayDestroy();
  return v26 & 1;
}

uint64_t sub_1D6008734(uint64_t a1)
{
  v2 = v1;
  swift_beginAccess();
  v4 = v1[2];
  v5 = v1[3];
  v6 = v2[4];
  v7 = v2[5];
  swift_beginAccess();
  v168 = v2;
  v8 = v2[6];
  swift_beginAccess();
  v169 = a1;
  v9 = *(a1 + 48);
  v199 = MEMORY[0x1E69E7CC8];
  v10 = *(v8 + 16);
  v11 = *(v9 + 16);
  if (__OFADD__(v10, v11))
  {
    goto LABEL_110;
  }

  v165 = v6;
  v167 = v4;
  sub_1D60100E8(0);
  v166 = v5;

  v164 = v7;

  sub_1D7261DAC();
  v182 = sub_1D698F4BC(0, v10, 0, MEMORY[0x1E69E7CC0]);
  v12 = *(v8 + 16);
  v170 = v9;
  if (!v12)
  {
    goto LABEL_20;
  }

  v13 = 0;
  v14 = (v8 + 32);
  v15 = v12 - 1;
  while (1)
  {
    v16 = v8;
    memcpy(__dst, v14, 0x13AuLL);
    v17 = __dst[0];
    sub_1D60101A0(__dst, v217);
    sub_1D60101A0(__dst, v217);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v184[0] = v199;
    v19 = sub_1D6D8CB60();
    v21 = v199[2];
    v22 = (v20 & 1) == 0;
    v23 = __OFADD__(v21, v22);
    v24 = v21 + v22;
    if (v23)
    {
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
LABEL_110:
      __break(1u);
LABEL_111:
      result = sub_1D726493C();
      __break(1u);
      return result;
    }

    v25 = v20;
    if (v199[3] < v24)
    {
      sub_1D6D6AEE0(v24, isUniquelyReferenced_nonNull_native);
      v19 = sub_1D6D8CB60();
      if ((v25 & 1) != (v26 & 1))
      {
        goto LABEL_111;
      }

LABEL_9:
      v8 = v16;
      if (v25)
      {
        goto LABEL_10;
      }

      goto LABEL_12;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_9;
    }

    v29 = v19;
    sub_1D6D80E20();
    v19 = v29;
    v8 = v16;
    if (v25)
    {
LABEL_10:
      v27 = *&v184[0];
      v28 = (*(*&v184[0] + 56) + 320 * v19);
      memcpy(v217, v28, 0x13AuLL);
      memcpy(v28, __dst, 0x13AuLL);
      sub_1D60101D8(v217);
      goto LABEL_14;
    }

LABEL_12:
    v27 = *&v184[0];
    *(*&v184[0] + 8 * (v19 >> 6) + 64) |= 1 << v19;
    *(v27[6] + 16 * v19) = v17;
    memcpy((v27[7] + 320 * v19), __dst, 0x13AuLL);
    v30 = v27[2];
    v23 = __OFADD__(v30, 1);
    v31 = v30 + 1;
    if (v23)
    {
      goto LABEL_106;
    }

    v27[2] = v31;

LABEL_14:
    v199 = v27;

    sub_1D60101D8(__dst);
    v33 = *(v182 + 2);
    v32 = *(v182 + 3);
    if (v33 >= v32 >> 1)
    {
      v182 = sub_1D698F4BC((v32 > 1), v33 + 1, 1, v182);
    }

    *(v182 + 2) = v33 + 1;
    *&v182[16 * v33 + 32] = v17;
    if (v15 == v13)
    {
      break;
    }

    ++v13;
    v14 += 320;
    if (v13 >= *(v8 + 16))
    {
      goto LABEL_102;
    }
  }

  v9 = v170;
LABEL_20:
  v34 = sub_1D698F4BC(0, v11, 0, MEMORY[0x1E69E7CC0]);
  v35 = *(v9 + 16);
  if (!v35)
  {
    goto LABEL_67;
  }

  v36 = 0;
  v180 = v35 - 1;
  v37 = 32;
  while (2)
  {
    memcpy(__dst, (v9 + v37), 0x13AuLL);
    v38 = __dst[0];
    v39 = v199;
    if (!v199[2])
    {
      sub_1D60101A0(__dst, v217);
LABEL_44:
      sub_1D60101A0(__dst, v217);
      v67 = swift_isUniquelyReferenced_nonNull_native();
      *&v184[0] = v39;
      v68 = sub_1D6D8CB60();
      v70 = v39[2];
      v71 = (v69 & 1) == 0;
      v23 = __OFADD__(v70, v71);
      v72 = v70 + v71;
      if (v23)
      {
        goto LABEL_105;
      }

      v73 = v69;
      if (v39[3] >= v72)
      {
        if ((v67 & 1) == 0)
        {
          v86 = v68;
          sub_1D6D80E20();
          v68 = v86;
          if (v73)
          {
            goto LABEL_50;
          }

          goto LABEL_55;
        }
      }

      else
      {
        sub_1D6D6AEE0(v72, v67);
        v68 = sub_1D6D8CB60();
        if ((v73 & 1) != (v74 & 1))
        {
          goto LABEL_111;
        }
      }

      if (v73)
      {
LABEL_50:
        v75 = *&v184[0];
        v76 = (*(*&v184[0] + 56) + 320 * v68);
        memcpy(v217, v76, 0x13AuLL);
        memcpy(v76, __dst, 0x13AuLL);
        sub_1D60101D8(v217);
LABEL_57:
        v199 = v75;
        v89 = *(v34 + 2);
        v90 = *(v34 + 3);

        if (v89 >= v90 >> 1)
        {
          v34 = sub_1D698F4BC((v90 > 1), v89 + 1, 1, v34);
        }

        sub_1D60101D8(__dst);
        *(v34 + 2) = v89 + 1;
        *&v34[16 * v89 + 32] = v38;
        goto LABEL_64;
      }

LABEL_55:
      v75 = *&v184[0];
      *(*&v184[0] + 8 * (v68 >> 6) + 64) |= 1 << v68;
      *(v75[6] + 16 * v68) = v38;
      memcpy((v75[7] + 320 * v68), __dst, 0x13AuLL);
      v87 = v75[2];
      v23 = __OFADD__(v87, 1);
      v88 = v87 + 1;
      if (v23)
      {
        goto LABEL_107;
      }

      v75[2] = v88;

      goto LABEL_57;
    }

    sub_1D60101A0(__dst, v217);
    v40 = sub_1D6D8CB60();
    if ((v41 & 1) == 0)
    {
      goto LABEL_44;
    }

    memcpy(v217, (v39[7] + 320 * v40), 0x13AuLL);
    v42 = *&v217[1];
    if (!*&v217[1])
    {
      v42 = *&__dst[1];
    }

    v43 = *(&v217[1] + 1);
    v44 = *&v217[2];
    v45 = BYTE8(v217[2]);
    v175 = *(&v217[1] + 1);
    v178 = *&v217[2];
    v176 = BYTE8(v217[2]);
    if (BYTE8(v217[2]) >= 0xFEu)
    {
      v43 = *(&__dst[1] + 1);
      v178 = *&__dst[2];
      v176 = BYTE8(__dst[2]);
      sub_1D5ED34B0(*(&__dst[1] + 1), *&__dst[2], SBYTE8(__dst[2]));
    }

    v174 = v42;
    v46 = &v217[3];
    if (LOBYTE(v217[8]) == 254)
    {
      v46 = &__dst[3];
      sub_1D60080F4(&__dst[3], v184, &qword_1EDF33718, &type metadata for FormatShadow);
    }

    v47 = v46[3];
    v213 = v46[2];
    v214 = v47;
    v215 = v46[4];
    v216 = *(v46 + 80);
    v48 = v46[1];
    v49 = *(&v217[8] + 1);
    v211 = *v46;
    v212 = v48;
    if (!*(&v217[8] + 1))
    {
    }

    v173 = v49;
    if (LOBYTE(v217[9]) == 2)
    {
      v50 = __dst[9];
    }

    else
    {
      v50 = v217[9];
    }

    v51 = BYTE1(v217[9]);
    if (BYTE1(v217[9]) == 2)
    {
      v51 = BYTE1(__dst[9]);
    }

    v171 = v51;
    v172 = v50;
    v208 = *(&v217[17] + 8);
    v209 = *(&v217[18] + 8);
    v210 = WORD4(v217[19]);
    v204 = *(&v217[13] + 8);
    v205 = *(&v217[14] + 8);
    v207 = *(&v217[16] + 8);
    v206 = *(&v217[15] + 8);
    v200 = *(&v217[9] + 8);
    v201 = *(&v217[10] + 8);
    v203 = *(&v217[12] + 8);
    v202 = *(&v217[11] + 8);
    v52 = &v217[9] + 8;
    if (sub_1D60081E0(&v200) == 1)
    {
      v52 = &__dst[9] + 8;
      sub_1D60080F4(&__dst[9] + 8, v184, &qword_1EDF2D860, &type metadata for FormatVisualEffect);
    }

    v53 = *(v52 + 9);
    v193 = *(v52 + 8);
    v194 = v53;
    v195 = *(v52 + 80);
    v54 = *(v52 + 5);
    v189 = *(v52 + 4);
    v190 = v54;
    v55 = *(v52 + 7);
    v191 = *(v52 + 6);
    v192 = v55;
    v56 = *(v52 + 1);
    v185 = *v52;
    v186 = v56;
    v57 = *(v52 + 3);
    v187 = *(v52 + 2);
    v188 = v57;
    v58 = v217[0];
    *&v197[39] = v213;
    *&v197[55] = v214;
    *&v197[71] = v215;
    v197[87] = v216;
    *&v197[7] = v211;
    *&v197[23] = v212;
    *&v196[6] = v185;
    *&v196[22] = v56;
    *&v196[38] = v187;
    *&v196[102] = v191;
    *&v196[86] = v190;
    *&v196[70] = v189;
    *&v196[54] = v57;
    *&v196[166] = v195;
    *&v196[150] = v194;
    *&v196[134] = v193;
    *&v196[118] = v192;
    sub_1D60101A0(v217, v184);

    sub_1D5ED34B0(v175, v44, v45);
    sub_1D60080F4(&v217[3], v184, &qword_1EDF33718, &type metadata for FormatShadow);

    sub_1D60080F4(&v217[9] + 8, v184, &qword_1EDF2D860, &type metadata for FormatVisualEffect);
    v59 = swift_isUniquelyReferenced_nonNull_native();
    v198 = v39;
    v60 = sub_1D6D8CB60();
    v62 = v39[2];
    v63 = (v61 & 1) == 0;
    v23 = __OFADD__(v62, v63);
    v64 = v62 + v63;
    if (v23)
    {
      goto LABEL_108;
    }

    v65 = v61;
    if (v39[3] >= v64)
    {
      if (v59)
      {
        goto LABEL_52;
      }

      v91 = v60;
      sub_1D6D80E20();
      v60 = v91;
      if ((v65 & 1) == 0)
      {
        goto LABEL_61;
      }

LABEL_53:
      v77 = v198;
      v78 = (v198[7] + 320 * v60);
      memcpy(v184, v78, 0x13AuLL);
      v79 = *&v197[48];
      *(v78 + 73) = *&v197[32];
      *(v78 + 89) = v79;
      *(v78 + 105) = *&v197[64];
      v80 = *&v197[16];
      *(v78 + 41) = *v197;
      *(v78 + 57) = v80;
      v81 = *&v196[48];
      *(v78 + 178) = *&v196[32];
      v82 = *v196;
      *(v78 + 162) = *&v196[16];
      *(v78 + 146) = v82;
      v83 = *&v196[112];
      *(v78 + 242) = *&v196[96];
      v84 = *&v196[64];
      *(v78 + 226) = *&v196[80];
      *(v78 + 210) = v84;
      *(v78 + 194) = v81;
      v85 = *&v196[128];
      *(v78 + 290) = *&v196[144];
      *v78 = v58;
      *(v78 + 2) = v174;
      *(v78 + 3) = v43;
      *(v78 + 4) = v178;
      *(v78 + 40) = v176;
      *(v78 + 121) = *&v197[80];
      *(v78 + 17) = v173;
      *(v78 + 144) = v172;
      *(v78 + 145) = v171;
      *(v78 + 306) = *&v196[160];
      *(v78 + 258) = v83;
      *(v78 + 274) = v85;
      sub_1D60101D8(v184);
    }

    else
    {
      sub_1D6D6AEE0(v64, v59);
      v60 = sub_1D6D8CB60();
      if ((v65 & 1) != (v66 & 1))
      {
        goto LABEL_111;
      }

LABEL_52:
      if (v65)
      {
        goto LABEL_53;
      }

LABEL_61:
      v77 = v198;
      v198[(v60 >> 6) + 8] |= 1 << v60;
      *(v77[6] + 16 * v60) = v58;
      v92 = v77[7] + 320 * v60;
      v93 = *v197;
      *(v92 + 57) = *&v197[16];
      *(v92 + 41) = v93;
      v94 = *&v197[48];
      *(v92 + 105) = *&v197[64];
      v95 = *&v197[32];
      *(v92 + 89) = v94;
      *(v92 + 73) = v95;
      v96 = *&v196[112];
      *(v92 + 242) = *&v196[96];
      v97 = *&v196[64];
      *(v92 + 226) = *&v196[80];
      *(v92 + 210) = v97;
      v98 = *&v196[32];
      *(v92 + 194) = *&v196[48];
      v99 = *&v196[144];
      *(v92 + 274) = *&v196[128];
      *(v92 + 290) = v99;
      *(v92 + 258) = v96;
      v100 = *&v196[16];
      *(v92 + 146) = *v196;
      *(v92 + 162) = v100;
      *v92 = v58;
      *(v92 + 16) = v174;
      *(v92 + 24) = v43;
      *(v92 + 32) = v178;
      *(v92 + 40) = v176;
      *(v92 + 121) = *&v197[80];
      *(v92 + 136) = v173;
      *(v92 + 144) = v172;
      *(v92 + 145) = v171;
      *(v92 + 306) = *&v196[160];
      *(v92 + 178) = v98;
      v101 = v77[2];
      v23 = __OFADD__(v101, 1);
      v102 = v101 + 1;
      if (v23)
      {
        goto LABEL_109;
      }

      v77[2] = v102;
    }

    sub_1D60101D8(v217);
    sub_1D60101D8(__dst);
    v199 = v77;
    v9 = v170;
LABEL_64:
    if (v180 == v36)
    {
      goto LABEL_67;
    }

    ++v36;
    v37 += 320;
    if (v36 < *(v9 + 16))
    {
      continue;
    }

    break;
  }

  __break(1u);
LABEL_67:

  *&__dst[0] = v34;

  sub_1D6985DAC(v103);
  v104 = *&__dst[0];
  v105 = *(*&__dst[0] + 16);
  if (v105)
  {
    v106 = 0;
    v181 = MEMORY[0x1E69E7CC0];
LABEL_69:
    v107 = v34;
    v108 = v199;
    v109 = v104 + 40 + 16 * v106;
    v110 = v106;
    while (v110 < v105)
    {
      v106 = v110 + 1;
      if (__OFADD__(v110, 1))
      {
        goto LABEL_104;
      }

      if (v108[2])
      {

        v111 = sub_1D6D8CB60();
        if (v112)
        {
          memcpy(__dst, (v108[7] + 320 * v111), 0x13AuLL);
          sub_1D60101A0(__dst, v217);

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v181 = sub_1D698E380(0, *(v181 + 2) + 1, 1, v181);
          }

          v34 = v107;
          v114 = *(v181 + 2);
          v113 = *(v181 + 3);
          if (v114 >= v113 >> 1)
          {
            v181 = sub_1D698E380((v113 > 1), v114 + 1, 1, v181);
          }

          *(v181 + 2) = v114 + 1;
          memcpy(&v181[320 * v114 + 32], __dst, 0x13AuLL);
          if (v106 != v105)
          {
            goto LABEL_69;
          }

          goto LABEL_84;
        }
      }

      ++v110;
      v109 += 16;
      if (v106 == v105)
      {
        goto LABEL_84;
      }
    }

    goto LABEL_103;
  }

  v181 = MEMORY[0x1E69E7CC0];
LABEL_84:

  v115 = v168;
  v116 = v168[7];
  if (!v116)
  {
    v116 = *(v169 + 56);

    v115 = v168;
  }

  v117 = v115[8];
  if (!v117)
  {

    v115 = v168;
  }

  v118 = v115[9];
  v119 = v115[10];
  v120 = *(v115 + 88);
  v121 = v118;
  v177 = v117;
  v179 = v119;
  v122 = *(v115 + 88);
  if (v120 >= 0xFE)
  {
    v121 = *(v169 + 72);
    v119 = *(v169 + 80);
    v122 = *(v169 + 88);
    sub_1D5ED34B0(v121, v119, v122);
    v115 = v168;
  }

  LOBYTE(v190) = *(v115 + 176);
  v123 = *(v115 + 9);
  v187 = *(v115 + 8);
  v188 = v123;
  v189 = *(v115 + 10);
  v124 = *(v115 + 7);
  v185 = *(v115 + 6);
  v186 = v124;
  v183 = v116;
  if (v190 == 254)
  {
    v125 = *(v169 + 144);
    __dst[2] = *(v169 + 128);
    __dst[3] = v125;
    __dst[4] = *(v169 + 160);
    LOBYTE(__dst[5]) = *(v169 + 176);
    v126 = *(v169 + 112);
    __dst[0] = *(v169 + 96);
    __dst[1] = v126;
    sub_1D60080F4(__dst, v217, &qword_1EDF33718, &type metadata for FormatShadow);
    v115 = v168;
    v213 = __dst[2];
    v214 = __dst[3];
    v215 = __dst[4];
    v216 = __dst[5];
    v127 = __dst[0];
    v128 = __dst[1];
  }

  else
  {
    v129 = *(v115 + 9);
    v213 = *(v115 + 8);
    v214 = v129;
    v215 = *(v115 + 10);
    v216 = *(v115 + 176);
    v127 = *(v115 + 6);
    v128 = *(v115 + 7);
  }

  v211 = v127;
  v212 = v128;
  v130 = *(v115 + 177);
  if (v130 == 2)
  {
    LOBYTE(v130) = *(v169 + 177);
  }

  v131 = *(v115 + 178);
  if (v131 == 2)
  {
    LOBYTE(v131) = *(v169 + 178);
  }

  v132 = *(v115 + 37);
  v133 = *(v115 + 41);
  v217[8] = *(v115 + 39);
  v217[9] = v133;
  LOWORD(v217[10]) = *(v115 + 172);
  v134 = *(v115 + 29);
  v135 = *(v115 + 33);
  v136 = *(v115 + 35);
  v217[4] = *(v115 + 31);
  v217[5] = v135;
  v138 = *(v115 + 33);
  v137 = *(v115 + 35);
  v217[7] = *(v115 + 37);
  v217[6] = v137;
  v139 = *(v115 + 25);
  v217[0] = *(v115 + 23);
  v217[1] = v139;
  v140 = *(v115 + 27);
  v217[3] = v134;
  v217[2] = v140;
  v141 = *(v115 + 41);
  __dst[8] = v217[8];
  __dst[9] = v141;
  LOWORD(__dst[10]) = *(v115 + 172);
  __dst[4] = *(v115 + 31);
  __dst[5] = v138;
  v142 = *(v115 + 29);
  __dst[7] = v132;
  __dst[6] = v136;
  v143 = *(v115 + 25);
  __dst[0] = *(v115 + 23);
  __dst[1] = v143;
  v144 = *(v115 + 27);
  __dst[3] = v142;
  __dst[2] = v144;
  if (sub_1D60081E0(__dst) == 1)
  {
    v145 = *(v169 + 232);
    v146 = *(v169 + 248);
    v147 = *(v169 + 200);
    v200 = *(v169 + 184);
    v201 = v147;
    v148 = *(v169 + 216);
    v203 = v145;
    v202 = v148;
    v149 = *(v169 + 296);
    v150 = *(v169 + 328);
    v208 = *(v169 + 312);
    v209 = v150;
    v151 = *(v169 + 264);
    v152 = *(v169 + 280);
    v204 = v146;
    v205 = v151;
    v210 = *(v169 + 344);
    v207 = v149;
    v206 = v152;
    sub_1D60080F4(&v200, v184, &qword_1EDF2D860, &type metadata for FormatVisualEffect);
    v184[8] = v208;
    v184[9] = v209;
    LOWORD(v184[10]) = v210;
    v184[4] = v204;
    v184[5] = v205;
    v184[6] = v206;
    v184[7] = v207;
    v184[0] = v200;
    v184[1] = v201;
    v153 = v203;
    v154 = v202;
  }

  else
  {
    v184[8] = v217[8];
    v184[9] = v217[9];
    LOWORD(v184[10]) = v217[10];
    v184[4] = v217[4];
    v184[5] = v217[5];
    v184[6] = v217[6];
    v184[7] = v217[7];
    v184[0] = v217[0];
    v184[1] = v217[1];
    v153 = v217[3];
    v154 = v217[2];
  }

  v184[2] = v154;
  v184[3] = v153;
  v155 = swift_allocObject();
  swift_beginAccess();
  *(v155 + 16) = v167;
  *(v155 + 24) = v166;
  *(v155 + 32) = v165;
  *(v155 + 40) = v164;
  swift_beginAccess();
  v156 = v184[9];
  *(v155 + 312) = v184[8];
  *(v155 + 328) = v156;
  v157 = v184[7];
  *(v155 + 280) = v184[6];
  *(v155 + 296) = v157;
  v158 = v184[4];
  *(v155 + 264) = v184[5];
  v159 = v214;
  *(v155 + 128) = v213;
  *(v155 + 144) = v159;
  *(v155 + 160) = v215;
  v160 = v212;
  *(v155 + 96) = v211;
  *(v155 + 112) = v160;
  *(v155 + 248) = v158;
  v161 = v184[2];
  *(v155 + 232) = v184[3];
  *(v155 + 216) = v161;
  v162 = v184[0];
  *(v155 + 200) = v184[1];
  *(v155 + 48) = v181;
  *(v155 + 56) = v183;
  *(v155 + 64) = v177;
  *(v155 + 72) = v121;
  *(v155 + 80) = v119;
  *(v155 + 88) = v122;
  *(v155 + 176) = v216;
  *(v155 + 177) = v130;
  *(v155 + 178) = v131;
  *(v155 + 344) = v184[10];
  *(v155 + 184) = v162;

  sub_1D5ED34B0(v118, v179, v120);
  sub_1D60080F4(&v185, &v200, &qword_1EDF33718, &type metadata for FormatShadow);
  sub_1D60080F4(v217, &v200, &qword_1EDF2D860, &type metadata for FormatVisualEffect);
  return v155;
}

void sub_1D60097FC(uint64_t a1)
{
  v2 = v1;
  swift_beginAccess();
  v4 = *(v1 + 48);
  v5 = *(v4 + 16);

  v6 = MEMORY[0x1E69E7CC0];
  v7 = sub_1D698E380(0, v5, 0, MEMORY[0x1E69E7CC0]);
  v36 = sub_1D698E210(0, v5, 0, v6);
  v39 = *(v4 + 16);
  if (v39)
  {
    v35 = v2;
    v8 = 0;
    v37 = v4;
    v38 = v4 + 32;
    while (1)
    {
      memcpy(__dst, (v38 + 320 * v8), 0x13AuLL);
      v9 = __dst[0];
      v10 = __dst[1];
      sub_1D60101A0(__dst, __src);
      if (qword_1EDF2AB18 != -1)
      {
        swift_once();
      }

      __src[0] = v9;
      __src[1] = v10;

      v11 = sub_1D6844380(__src);

      v12 = *(v11 + 16);
      if (v12)
      {
        v13 = 0;
        v14 = 32;
        while (1)
        {
          if (v13 >= *(v11 + 16))
          {
            __break(1u);
            goto LABEL_35;
          }

          v16 = *(v11 + v14 + 16);
          v15 = *(v11 + v14 + 32);
          v17 = *(v11 + v14);
          v44 = *(v11 + v14 + 48);
          v43[1] = v16;
          v43[2] = v15;
          v43[0] = v17;
          v18 = v16;
          sub_1D5E3B610(v43, __src);
          if (sub_1D68444DC(a1))
          {
            break;
          }

          ++v13;
          sub_1D5E3B66C(v43);
          v14 += 56;
          if (v12 == v13)
          {
            goto LABEL_10;
          }
        }

        sub_1D5E3B66C(v43);
        if (v18 <= 1)
        {
          v24 = *(v7 + 2);
          v23 = *(v7 + 3);
          v19 = v37;
          if (v24 >= v23 >> 1)
          {
            v7 = sub_1D698E380((v23 > 1), v24 + 1, 1, v7);
          }

          *(v7 + 2) = v24 + 1;
          memcpy(&v7[320 * v24 + 32], __dst, 0x13AuLL);
        }

        else
        {
          memcpy(__src, __dst, 0x13AuLL);
          sub_1D60101A0(__dst, v40);
          v19 = v37;
          v21 = v36[2];
          v20 = v36[3];
          if (v21 >= v20 >> 1)
          {
            v36 = sub_1D698E210((v20 > 1), v21 + 1, 1, v36);
          }

          sub_1D60101D8(__dst);
          v36[2] = v21 + 1;
          v22 = &v36[41 * v21];
          memcpy(v22 + 4, __src, 0x140uLL);
          v22[44] = v18;
        }
      }

      else
      {
LABEL_10:
        sub_1D60101D8(__dst);

        v19 = v37;
      }

      if (++v8 == v39)
      {
        break;
      }

      if (v8 >= *(v19 + 16))
      {
        goto LABEL_36;
      }
    }

    v2 = v35;
  }

  else
  {
  }

  sub_1D6010208(0);
  v25 = sub_1D72626AC();

  v26 = *(v25 + 16);
  if (v26)
  {
    v27 = v26 - 1;
    for (i = 32; ; i += 328)
    {
      memcpy(__src, (v25 + i), sizeof(__src));
      sub_1D5D251EC(__src, __dst, sub_1D6010208);
      v30 = *(v7 + 2);
      v29 = *(v7 + 3);
      if (v30 >= v29 >> 1)
      {
        v7 = sub_1D698E380((v29 > 1), v30 + 1, 1, v7);
      }

      *(v7 + 2) = v30 + 1;
      memcpy(&v7[320 * v30 + 32], __src, 0x13AuLL);
      if (!v27)
      {
        break;
      }

      --v27;
    }
  }

  v31 = *(v7 + 2);

  if (v31)
  {
    v32 = 0;
    v33 = v7 + 32;
    while (v32 < *(v7 + 2))
    {
      memcpy(__src, v33, 0x13AuLL);
      ++v32;
      memcpy(__dst, __src, 0x13AuLL);
      swift_allocObject();
      sub_1D60101A0(__src, v40);
      v34 = sub_1D60102B8(v2, __dst);

      v33 += 320;
      v2 = v34;
      if (v31 == v32)
      {
        goto LABEL_33;
      }
    }

LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
  }

  else
  {
LABEL_33:
  }
}

uint64_t sub_1D6009CB8()
{
  v1 = v0;
  swift_beginAccess();
  v3 = v0[2];
  v2 = v0[3];
  v4 = v0[5];
  v44 = v0[4];
  swift_beginAccess();
  v6 = v0[6];
  v5 = v0[7];
  v7 = v0[8];
  v43 = v4;
  v41 = v5;

  if (v7)
  {
    v40 = sub_1D600CADC(v7);
  }

  else
  {
    v40 = 0;
  }

  v42 = v6;
  v45 = v2;
  v8 = v1[9];
  v9 = v1[10];
  v10 = *(v1 + 88);
  v11 = *(v1 + 9);
  v60 = *(v1 + 8);
  v61 = v11;
  v62 = *(v1 + 10);
  v63 = *(v1 + 176);
  v12 = v63;
  v13 = *(v1 + 7);
  v58 = *(v1 + 6);
  v59 = v13;
  if (v63 == 254)
  {
    sub_1D5ED34B0(v8, v9, v10);
    v14 = v58;
    v15 = DWORD2(v58);
    LODWORD(v16) = HIDWORD(v58);
    v17 = *(&v59 + 1);
    v18 = v59;
    v36 = v60;
    v38 = v61;
    v39 = v62;
  }

  else
  {
    v39 = v62;
    v37 = *(&v60 + 1);
    v17 = *(&v59 + 1);
    v18 = v59;
    v15 = DWORD2(v58);
    v14 = v58;
    v38 = v61;
    v46[0] = v60;
    v16 = &type metadata for FormatShadow;
    sub_1D60080F4(&v58, &v47, &qword_1EDF33718, &type metadata for FormatShadow);
    sub_1D60080F4(&v58, &v47, &qword_1EDF33718, &type metadata for FormatShadow);
    sub_1D5ED34B0(v8, v9, v10);
    sub_1D6E0CAE0(&v47);

    sub_1D6011068(&v58, &qword_1EDF33718, &type metadata for FormatShadow);
    *&v19 = v47;
    *(&v19 + 1) = v37;
    v36 = v19;
  }

  v20 = *(v1 + 29);
  v21 = *(v1 + 31);
  v22 = *(v1 + 25);
  v47 = *(v1 + 23);
  v48 = v22;
  v49 = *(v1 + 27);
  v50 = v20;
  v23 = *(v1 + 37);
  v24 = *(v1 + 41);
  v55 = *(v1 + 39);
  v56 = v24;
  v25 = *(v1 + 33);
  v26 = *(v1 + 35);
  v51 = v21;
  v52 = v25;
  v27 = *(v1 + 177);
  v57 = *(v1 + 172);
  v53 = v26;
  v54 = v23;
  v28 = swift_allocObject();
  swift_beginAccess();
  *(v28 + 16) = v3;
  *(v28 + 24) = v45;
  *(v28 + 32) = v44;
  *(v28 + 40) = v43;
  swift_beginAccess();
  *(v28 + 48) = v42;
  *(v28 + 56) = v41;
  *(v28 + 64) = v40;
  *(v28 + 72) = v8;
  *(v28 + 80) = v9;
  *(v28 + 88) = v10;
  *(v28 + 96) = v14;
  *(v28 + 104) = v15;
  *(v28 + 108) = v16;
  *(v28 + 112) = v18;
  *(v28 + 120) = v17;
  *(v28 + 128) = v36;
  *(v28 + 144) = v38;
  *(v28 + 160) = v39;
  *(v28 + 176) = v12;
  *(v28 + 177) = v27;
  v29 = v55;
  v30 = v56;
  v31 = v53;
  *(v28 + 296) = v54;
  *(v28 + 312) = v29;
  *(v28 + 328) = v30;
  *(v28 + 344) = v57;
  v32 = v49;
  *(v28 + 232) = v50;
  v33 = v52;
  *(v28 + 248) = v51;
  *(v28 + 264) = v33;
  *(v28 + 280) = v31;
  v34 = v48;
  *(v28 + 184) = v47;
  *(v28 + 200) = v34;
  *(v28 + 216) = v32;
  sub_1D60080F4(&v47, v46, &qword_1EDF2D860, &type metadata for FormatVisualEffect);
  return v28;
}

uint64_t sub_1D600A03C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v292 = MEMORY[0x1E69E7CC0];
    sub_1D69978D0(0, v1, 0);
    v4 = (a1 + 32);
    v2 = v292;
    do
    {
      v6 = *v4++;
      v5 = v6;
      v7 = v6 >> 60;
      if ((v6 >> 60) <= 8)
      {
        if ((v7 - 4) >= 5 && v7 >= 3)
        {
          v21 = *((v5 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
          v20 = *((v5 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
          v22 = v21 >> 60;
          if ((v21 >> 60) > 8)
          {
            v23 = v21 & 0xFFFFFFFFFFFFFFFLL;
            if (v22 == 9)
            {
              v29 = *((v21 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
              v30 = *((v21 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
              v31 = *(v23 + 32);
              v32 = *(v23 + 40);
              v33 = swift_allocObject();
              *(v33 + 16) = v29;
              *(v33 + 24) = v30;
              *(v33 + 32) = v31;
              *(v33 + 40) = v32;
              v34 = v33 | 0x7000000000000000;

              v35 = v29;
              v27 = v34;
              sub_1D5F58038(v35, v30, v31, v32);
            }

            else
            {
              v25 = *((v21 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
              v24 = *((v21 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
              if (v22 == 10)
              {
                v26 = swift_allocObject();
                *(v26 + 16) = v25;
                *(v26 + 24) = v24;
                v27 = v26 | 0x4000000000000000;
              }

              else
              {
                v36 = swift_allocObject();
                *(v36 + 16) = v25;
                *(v36 + 24) = v24;
                v27 = v36 | 0x8000000000000000;
              }
            }

LABEL_31:
            v37 = v20 >> 60;
            if ((v20 >> 60) > 8)
            {
              if (v37 == 9)
              {
                v49 = *((v20 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
                v50 = *((v20 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
                v51 = v27;
                v52 = *((v20 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
                v53 = *((v20 & 0xFFFFFFFFFFFFFFFLL) + 0x28);
                v54 = swift_allocObject();
                *(v54 + 16) = v49;
                *(v54 + 24) = v50;
                *(v54 + 32) = v52;
                *(v54 + 40) = v53;
                v20 = v54 | 0x7000000000000000;
                v55 = v52;
                v27 = v51;
                sub_1D5F58038(v49, v50, v55, v53);
              }

              else
              {
                v39 = *((v20 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
                v38 = *((v20 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
                if (v37 == 10)
                {
                  v40 = swift_allocObject();
                  *(v40 + 16) = v39;
                  *(v40 + 24) = v38;
                  v20 = v40 | 0x4000000000000000;
                }

                else
                {
                  v56 = swift_allocObject();
                  *(v56 + 16) = v39;
                  *(v56 + 24) = v38;
                  v20 = v56 | 0x8000000000000000;
                }
              }

              goto LABEL_47;
            }

            if ((v37 - 4) < 5 || v37 < 3)
            {
LABEL_47:

LABEL_48:
              v57 = swift_allocObject();
              *(v57 + 16) = v27;
              *(v57 + 24) = v20;

              v5 = v57 | 0x3000000000000000;
              goto LABEL_15;
            }

            v43 = *((v20 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
            v42 = *((v20 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
            v44 = v43 >> 60;
            if ((v43 >> 60) > 8)
            {
              if (v44 == 9)
              {
                v67 = *((v20 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
                v68 = *((v43 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
                v69 = *((v43 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
                v70 = *((v43 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
                v274 = v27;
                v71 = *((v43 & 0xFFFFFFFFFFFFFFFLL) + 0x28);
                v72 = swift_allocObject();
                *(v72 + 16) = v68;
                *(v72 + 24) = v69;
                *(v72 + 32) = v70;
                *(v72 + 40) = v71;
                v73 = v72 | 0x7000000000000000;

                v74 = v69;
                v42 = v67;
                v48 = v73;
                v75 = v71;
                v27 = v274;
                sub_1D5F58038(v68, v74, v70, v75);
              }

              else
              {
                v281 = *((v20 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
                v46 = *((v43 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
                v45 = *((v43 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
                if (v44 == 10)
                {
                  v47 = swift_allocObject();
                  *(v47 + 16) = v46;
                  *(v47 + 24) = v45;
                  v48 = v47 | 0x4000000000000000;
                }

                else
                {
                  v82 = swift_allocObject();
                  *(v82 + 16) = v46;
                  *(v82 + 24) = v45;
                  v48 = v82 | 0x8000000000000000;
                }

                v42 = v281;
              }

LABEL_67:
              v83 = v42 >> 60;
              if ((v42 >> 60) <= 8)
              {
                if ((v83 - 4) < 5 || v83 < 3)
                {
                  goto LABEL_96;
                }

                v268 = v48;
                v89 = *((v42 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
                v90 = *((v42 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
                v91 = v89 >> 60;
                if ((v89 >> 60) <= 8)
                {
                  if ((v91 - 4) >= 5 && v91 >= 3)
                  {
                    v230 = v89 & 0xFFFFFFFFFFFFFFFLL;
                    v279 = v27;
                    v231 = *(v230 + 16);
                    v232 = *(v230 + 24);
                    v233 = swift_allocObject();
                    v290 = v231;
                    v291 = v232;

                    sub_1D6E0CAE0(&v289);
                    sub_1D6E0CAE0(&v288);
                    v27 = v279;

                    v234 = v288;
                    *(v233 + 16) = v289;
                    *(v233 + 24) = v234;
                    v266 = v233 | 0x3000000000000000;
                  }

                  else
                  {

                    swift_retain_n();
                    v266 = v89;
                  }
                }

                else
                {
                  v92 = v89 & 0xFFFFFFFFFFFFFFFLL;
                  if (v91 == 9)
                  {
                    v148 = *(v92 + 16);
                    v149 = *(v92 + 24);
                    v277 = v27;
                    v150 = *(v92 + 32);
                    v151 = *(v92 + 40);
                    v152 = swift_allocObject();
                    *(v152 + 16) = v148;
                    *(v152 + 24) = v149;
                    *(v152 + 32) = v150;
                    *(v152 + 40) = v151;
                    v266 = v152 | 0x7000000000000000;

                    v153 = v150;
                    v27 = v277;
                    sub_1D5F58038(v148, v149, v153, v151);
                  }

                  else
                  {
                    v94 = *(v92 + 16);
                    v93 = *(v92 + 24);
                    if (v91 == 10)
                    {
                      v95 = swift_allocObject();
                      *(v95 + 16) = v94;
                      *(v95 + 24) = v93;
                      v96 = v95 | 0x4000000000000000;
                    }

                    else
                    {
                      v154 = swift_allocObject();
                      *(v154 + 16) = v94;
                      *(v154 + 24) = v93;
                      v96 = v154 | 0x8000000000000000;
                    }

                    v266 = v96;
                  }
                }

                v155 = v90 >> 60;
                if ((v90 >> 60) <= 8)
                {
                  if ((v155 - 4) >= 5 && v155 >= 3)
                  {
                    v225 = v90 & 0xFFFFFFFFFFFFFFFLL;
                    v278 = v27;
                    v226 = *((v90 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
                    v227 = *(v225 + 24);
                    v228 = swift_allocObject();
                    v290 = v226;
                    v291 = v227;

                    sub_1D6E0CAE0(&v289);
                    sub_1D6E0CAE0(&v288);
                    v27 = v278;

                    v229 = v288;
                    *(v228 + 16) = v289;
                    *(v228 + 24) = v229;

                    v90 = v228 | 0x3000000000000000;
                  }

                  else
                  {
                  }
                }

                else
                {
                  v156 = v90 & 0xFFFFFFFFFFFFFFFLL;
                  if (v155 == 9)
                  {
                    v161 = *((v90 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
                    v160 = *(v156 + 24);
                    v162 = v27;
                    v163 = *(v156 + 32);
                    v164 = *(v156 + 40);
                    v165 = swift_allocObject();
                    *(v165 + 16) = v161;
                    *(v165 + 24) = v160;
                    *(v165 + 32) = v163;
                    *(v165 + 40) = v164;
                    v166 = v163;
                    v27 = v162;
                    sub_1D5F58038(v161, v160, v166, v164);

                    v90 = v165 | 0x7000000000000000;
                  }

                  else
                  {
                    v158 = *((v90 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
                    v157 = *(v156 + 24);
                    if (v155 == 10)
                    {
                      v159 = swift_allocObject();
                      *(v159 + 16) = v158;
                      *(v159 + 24) = v157;

                      v90 = v159 | 0x4000000000000000;
                    }

                    else
                    {
                      v167 = swift_allocObject();
                      *(v167 + 16) = v158;
                      *(v167 + 24) = v157;

                      v90 = v167 | 0x8000000000000000;
                    }
                  }
                }

                v168 = swift_allocObject();
                *(v168 + 16) = v266;
                *(v168 + 24) = v90;

                v42 = v168 | 0x3000000000000000;
                v48 = v268;
              }

              else
              {
                v84 = v42 & 0xFFFFFFFFFFFFFFFLL;
                if (v83 == 9)
                {
                  v97 = *((v42 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
                  v98 = *((v42 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
                  v269 = v48;
                  v99 = v27;
                  v100 = *(v84 + 32);
                  v101 = *(v84 + 40);
                  v102 = swift_allocObject();
                  *(v102 + 16) = v97;
                  *(v102 + 24) = v98;
                  *(v102 + 32) = v100;
                  *(v102 + 40) = v101;
                  v103 = v98;
                  v42 = v102 | 0x7000000000000000;
                  v104 = v100;
                  v27 = v99;
                  v48 = v269;
                  sub_1D5F58038(v97, v103, v104, v101);
                }

                else
                {
                  v86 = *((v42 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
                  v85 = *(v84 + 24);
                  if (v83 == 10)
                  {
                    v87 = swift_allocObject();
                    *(v87 + 16) = v86;
                    *(v87 + 24) = v85;
                    v88 = v87 | 0x4000000000000000;
                  }

                  else
                  {
                    v126 = swift_allocObject();
                    *(v126 + 16) = v86;
                    *(v126 + 24) = v85;
                    v88 = v126 | 0x8000000000000000;
                  }

                  v42 = v88;
                }

LABEL_96:
              }

              v127 = swift_allocObject();
              *(v127 + 16) = v48;
              *(v127 + 24) = v42;

              v20 = v127 | 0x3000000000000000;
              goto LABEL_48;
            }

            if ((v44 - 4) < 5 || v44 < 3)
            {

              swift_retain_n();
              v48 = v43;
              goto LABEL_67;
            }

            v275 = v27;
            v283 = *((v20 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
            v130 = *((v43 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
            v131 = *((v43 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
            v132 = v130 >> 60;
            if ((v130 >> 60) <= 8)
            {
              if ((v132 - 4) >= 5 && v132 >= 3)
              {
                v240 = *((v130 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
                v273 = *((v130 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
                v241 = v42;
                v242 = swift_allocObject();
                v290 = v273;
                v291 = v240;

                sub_1D6E0CAE0(&v289);
                sub_1D6E0CAE0(&v288);

                v243 = v288;
                *(v242 + 16) = v289;
                *(v242 + 24) = v243;
                v271 = v242 | 0x3000000000000000;
                v42 = v241;
              }

              else
              {

                swift_retain_n();

                v271 = v130;
              }
            }

            else
            {
              v133 = v130 & 0xFFFFFFFFFFFFFFFLL;
              if (v132 == 9)
              {
                v173 = *((v130 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
                v174 = *((v130 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
                v264 = *(v133 + 24);
                v175 = *(v133 + 32);
                v176 = *(v133 + 40);
                v177 = swift_allocObject();
                *(v177 + 16) = v173;
                *(v177 + 24) = v174;
                *(v177 + 32) = v175;
                *(v177 + 40) = v176;
                v271 = v177 | 0x7000000000000000;

                v178 = v173;
                v42 = v283;
                sub_1D5F58038(v178, v264, v175, v176);
              }

              else
              {
                v135 = *((v130 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
                v134 = *((v130 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
                if (v132 == 10)
                {
                  v136 = swift_allocObject();
                  *(v136 + 16) = v135;
                  *(v136 + 24) = v134;
                  v137 = v136 | 0x4000000000000000;
                }

                else
                {
                  v194 = swift_allocObject();
                  *(v194 + 16) = v135;
                  *(v194 + 24) = v134;
                  v137 = v194 | 0x8000000000000000;
                }

                v271 = v137;

                v42 = v283;
              }
            }

            v195 = v131 >> 60;
            if ((v131 >> 60) <= 8)
            {
              if ((v195 - 4) >= 5 && v195 >= 3)
              {
                v251 = v131 & 0xFFFFFFFFFFFFFFFLL;
                v252 = *((v131 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
                v253 = *(v251 + 24);
                v254 = swift_allocObject();
                v290 = v252;
                v291 = v253;

                sub_1D6E0CAE0(&v289);
                sub_1D6E0CAE0(&v288);

                v255 = v288;
                *(v254 + 16) = v289;
                *(v254 + 24) = v255;

                v131 = v254 | 0x3000000000000000;
                goto LABEL_186;
              }
            }

            else
            {
              v196 = v131 & 0xFFFFFFFFFFFFFFFLL;
              if (v195 == 9)
              {
                v265 = *((v131 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
                v201 = v42;
                v202 = *((v131 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
                v203 = *((v131 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
                v204 = *(v196 + 40);
                v205 = swift_allocObject();
                *(v205 + 16) = v265;
                *(v205 + 24) = v202;
                *(v205 + 32) = v203;
                *(v205 + 40) = v204;
                v206 = v202;
                v42 = v201;
                sub_1D5F58038(v265, v206, v203, v204);

                v131 = v205 | 0x7000000000000000;
              }

              else
              {
                v198 = *((v131 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
                v197 = *(v196 + 24);
                if (v195 == 10)
                {
                  v199 = swift_allocObject();
                  *(v199 + 16) = v198;
                  *(v199 + 24) = v197;

                  v131 = v199 | 0x4000000000000000;
                }

                else
                {
                  v221 = swift_allocObject();
                  *(v221 + 16) = v198;
                  *(v221 + 24) = v197;

                  v131 = v221 | 0x8000000000000000;
                }

LABEL_186:
                v42 = v283;
              }
            }

            v222 = swift_allocObject();
            *(v222 + 16) = v271;
            *(v222 + 24) = v131;
            v48 = v222 | 0x3000000000000000;
            v27 = v275;
            goto LABEL_67;
          }

          if ((v22 - 4) < 5 || v22 < 3)
          {

            swift_retain_n();

            v27 = v21;
            goto LABEL_31;
          }

          v58 = *((v21 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
          v287 = *((v21 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
          v59 = v287 >> 60;
          if ((v287 >> 60) <= 8)
          {
            if ((v59 - 4) >= 5 && v59 >= 3)
            {
              v284 = *((v21 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
              v138 = *((v287 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
              v286 = *((v287 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
              v139 = v286 >> 60;
              if ((v286 >> 60) <= 8)
              {
                if ((v139 - 4) >= 5 && v139 >= 3)
                {
                  v244 = *((v286 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
                  v245 = *((v286 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
                  v280 = swift_allocObject();
                  v290 = v244;
                  v291 = v245;

                  sub_1D6E0CAE0(&v289);
                  sub_1D6E0CAE0(&v288);

                  v246 = v288;
                  *(v280 + 16) = v289;
                  *(v280 + 24) = v246;
                  v276 = v280 | 0x3000000000000000;
                }

                else
                {

                  swift_retain_n();

                  v276 = v286;
                }
              }

              else if (v139 == 9)
              {
                v179 = *((v286 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
                v180 = *((v286 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
                v261 = *((v286 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
                v272 = *((v287 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
                v181 = *((v286 & 0xFFFFFFFFFFFFFFFLL) + 0x28);
                v262 = v181;
                v182 = swift_allocObject();
                *(v182 + 16) = v179;
                *(v182 + 24) = v180;
                *(v182 + 32) = v261;
                *(v182 + 40) = v181;
                v138 = v272;
                v276 = v182 | 0x7000000000000000;

                sub_1D5F58038(v179, v180, v261, v262);
              }

              else
              {
                v140 = *((v286 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
                v141 = *((v286 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
                if (v139 == 10)
                {
                  v142 = swift_allocObject();
                  *(v142 + 16) = v140;
                  *(v142 + 24) = v141;
                  v143 = v142 | 0x4000000000000000;
                }

                else
                {
                  v207 = swift_allocObject();
                  *(v207 + 16) = v140;
                  *(v207 + 24) = v141;
                  v143 = v207 | 0x8000000000000000;
                }

                v276 = v143;
              }

              v208 = v138 >> 60;
              if ((v138 >> 60) <= 8)
              {
                if ((v208 - 4) >= 5 && v208 >= 3)
                {
                  v256 = *((v138 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
                  v257 = *((v138 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
                  v258 = swift_allocObject();
                  v290 = v256;
                  v291 = v257;

                  sub_1D6E0CAE0(&v289);
                  sub_1D6E0CAE0(&v288);

                  v58 = v284;

                  v259 = v288;
                  *(v258 + 16) = v289;
                  *(v258 + 24) = v259;

                  v138 = v258 | 0x3000000000000000;
                }

                else
                {
                }
              }

              else if (v208 == 9)
              {
                v214 = *((v138 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
                v213 = *((v138 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
                v215 = *((v138 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
                v216 = *((v138 & 0xFFFFFFFFFFFFFFFLL) + 0x28);
                v217 = swift_allocObject();
                *(v217 + 16) = v214;
                *(v217 + 24) = v213;
                *(v217 + 32) = v215;
                *(v217 + 40) = v216;
                v218 = v215;
                v58 = v284;
                sub_1D5F58038(v214, v213, v218, v216);

                v138 = v217 | 0x7000000000000000;
              }

              else
              {
                v210 = *((v138 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
                v209 = *((v138 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
                if (v208 == 10)
                {
                  v211 = swift_allocObject();
                  *(v211 + 16) = v210;
                  *(v211 + 24) = v209;

                  v138 = v211 | 0x4000000000000000;
                }

                else
                {
                  v223 = swift_allocObject();
                  *(v223 + 16) = v210;
                  *(v223 + 24) = v209;

                  v138 = v223 | 0x8000000000000000;
                }

                v58 = v284;
              }

              v224 = swift_allocObject();
              *(v224 + 16) = v276;
              *(v224 + 24) = v138;
              v285 = v224 | 0x3000000000000000;
            }

            else
            {

              swift_retain_n();

              v285 = v287;
            }
          }

          else if (v59 == 9)
          {
            v282 = *((v21 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
            v76 = *((v287 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
            v77 = *((v287 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
            v78 = *((v287 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
            v79 = *((v287 & 0xFFFFFFFFFFFFFFFLL) + 0x28);
            v80 = swift_allocObject();
            *(v80 + 16) = v76;
            *(v80 + 24) = v77;
            *(v80 + 32) = v78;
            *(v80 + 40) = v79;
            v285 = v80 | 0x7000000000000000;

            v81 = v77;
            v58 = v282;
            sub_1D5F58038(v76, v81, v78, v79);
          }

          else
          {
            v60 = *((v21 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
            v62 = *((v287 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
            v61 = *((v287 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
            if (v59 == 10)
            {
              v63 = swift_allocObject();
              *(v63 + 16) = v62;
              *(v63 + 24) = v61;
              v64 = v63 | 0x4000000000000000;
            }

            else
            {
              v105 = swift_allocObject();
              *(v105 + 16) = v62;
              *(v105 + 24) = v61;
              v64 = v105 | 0x8000000000000000;
            }

            v285 = v64;

            v58 = v60;
          }

          v106 = v58 >> 60;
          if ((v58 >> 60) <= 8)
          {
            if ((v106 - 4) < 5 || v106 < 3)
            {
              goto LABEL_101;
            }

            v112 = *((v58 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
            v113 = *((v58 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
            v114 = v112 >> 60;
            if ((v112 >> 60) <= 8)
            {
              if ((v114 - 4) >= 5 && v114 >= 3)
              {
                v235 = v112 & 0xFFFFFFFFFFFFFFFLL;
                v236 = *(v235 + 16);
                v237 = *(v235 + 24);
                v238 = swift_allocObject();
                v290 = v236;
                v291 = v237;

                sub_1D6E0CAE0(&v289);
                sub_1D6E0CAE0(&v288);

                v239 = v288;
                *(v238 + 16) = v289;
                *(v238 + 24) = v239;
                v270 = v238 | 0x3000000000000000;
              }

              else
              {

                swift_retain_n();
                v270 = v112;
              }
            }

            else
            {
              v115 = v112 & 0xFFFFFFFFFFFFFFFLL;
              if (v114 == 9)
              {
                v169 = *(v115 + 16);
                v263 = *(v115 + 24);
                v170 = *(v115 + 32);
                v171 = *(v115 + 40);
                v172 = swift_allocObject();
                *(v172 + 16) = v169;
                *(v172 + 24) = v263;
                *(v172 + 32) = v170;
                *(v172 + 40) = v171;
                v270 = v172 | 0x7000000000000000;

                sub_1D5F58038(v169, v263, v170, v171);
              }

              else
              {
                v117 = *(v115 + 16);
                v116 = *(v115 + 24);
                if (v114 == 10)
                {
                  v118 = swift_allocObject();
                  *(v118 + 16) = v117;
                  *(v118 + 24) = v116;
                  v119 = v118 | 0x4000000000000000;
                }

                else
                {
                  v183 = swift_allocObject();
                  *(v183 + 16) = v117;
                  *(v183 + 24) = v116;
                  v119 = v183 | 0x8000000000000000;
                }

                v270 = v119;
              }
            }

            v184 = v113 >> 60;
            if ((v113 >> 60) <= 8)
            {
              if ((v184 - 4) >= 5 && v184 >= 3)
              {
                v247 = *((v113 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
                v248 = *((v113 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
                v249 = swift_allocObject();
                v290 = v247;
                v291 = v248;

                sub_1D6E0CAE0(&v289);
                sub_1D6E0CAE0(&v288);

                v250 = v288;
                *(v249 + 16) = v289;
                *(v249 + 24) = v250;

                v113 = v249 | 0x3000000000000000;
              }

              else
              {
              }
            }

            else
            {
              v185 = v113 & 0xFFFFFFFFFFFFFFFLL;
              if (v184 == 9)
              {
                v190 = *((v113 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
                v267 = *(v185 + 16);
                v191 = *(v185 + 32);
                v192 = *(v185 + 40);
                v193 = swift_allocObject();
                *(v193 + 16) = v267;
                *(v193 + 24) = v190;
                *(v193 + 32) = v191;
                *(v193 + 40) = v192;
                sub_1D5F58038(v267, v190, v191, v192);

                v113 = v193 | 0x7000000000000000;
              }

              else
              {
                v187 = *((v113 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
                v186 = *((v113 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
                if (v184 == 10)
                {
                  v188 = swift_allocObject();
                  *(v188 + 16) = v187;
                  *(v188 + 24) = v186;

                  v113 = v188 | 0x4000000000000000;
                }

                else
                {
                  v219 = swift_allocObject();
                  *(v219 + 16) = v187;
                  *(v219 + 24) = v186;

                  v113 = v219 | 0x8000000000000000;
                }
              }
            }

            v220 = swift_allocObject();
            *(v220 + 16) = v270;
            *(v220 + 24) = v113;

            v58 = v220 | 0x3000000000000000;
          }

          else
          {
            v107 = v58 & 0xFFFFFFFFFFFFFFFLL;
            if (v106 == 9)
            {
              v120 = *((v58 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
              v121 = *((v58 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
              v122 = *((v58 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
              v123 = *(v107 + 40);
              v124 = swift_allocObject();
              *(v124 + 16) = v120;
              *(v124 + 24) = v121;
              *(v124 + 32) = v122;
              *(v124 + 40) = v123;
              v125 = v122;
              v58 = v124 | 0x7000000000000000;
              sub_1D5F58038(v120, v121, v125, v123);
            }

            else
            {
              v109 = *((v58 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
              v108 = *((v58 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
              if (v106 == 10)
              {
                v110 = swift_allocObject();
                *(v110 + 16) = v109;
                *(v110 + 24) = v108;
                v58 = v110 | 0x4000000000000000;
              }

              else
              {
                v128 = swift_allocObject();
                *(v128 + 16) = v109;
                *(v128 + 24) = v108;
                v58 = v128 | 0x8000000000000000;
              }
            }

LABEL_101:
          }

          v129 = swift_allocObject();
          *(v129 + 16) = v285;
          *(v129 + 24) = v58;
          v27 = v129 | 0x3000000000000000;
          goto LABEL_31;
        }
      }

      else if (v7 == 9)
      {
        v12 = *((v5 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
        v13 = *((v5 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
        v14 = *((v5 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
        v15 = *((v5 & 0xFFFFFFFFFFFFFFFLL) + 0x28);
        v16 = swift_allocObject();
        *(v16 + 16) = v12;
        *(v16 + 24) = v13;
        *(v16 + 32) = v14;
        *(v16 + 40) = v15;
        v5 = v16 | 0x7000000000000000;
        sub_1D5F58038(v12, v13, v14, v15);
      }

      else
      {
        v9 = *((v5 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
        v8 = *((v5 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
        if (v7 == 10)
        {
          v10 = swift_allocObject();
          *(v10 + 16) = v9;
          *(v10 + 24) = v8;
          v5 = v10 | 0x4000000000000000;
        }

        else
        {
          v17 = swift_allocObject();
          *(v17 + 16) = v9;
          *(v17 + 24) = v8;
          v5 = v17 | 0x8000000000000000;
        }
      }

LABEL_15:
      v292 = v2;
      v19 = *(v2 + 16);
      v18 = *(v2 + 24);
      if (v19 >= v18 >> 1)
      {
        sub_1D69978D0((v18 > 1), v19 + 1, 1);
        v2 = v292;
      }

      *(v2 + 16) = v19 + 1;
      *(v2 + 8 * v19 + 32) = v5;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_1D600BA14(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v14 = MEMORY[0x1E69E7CC0];
    sub_1D6997950(0, v1, 0);
    v2 = v14;
    v4 = (a1 + 64);
    do
    {
      v5 = *(v4 - 4);
      v6 = *(v4 - 3);
      v7 = *(v4 - 2);
      v8 = *(v4 - 1);
      v9 = *v4;
      if ((v9 - 1) >= 0xB)
      {
        if (*v4)
        {
          goto LABEL_5;
        }
      }

LABEL_5:
      v11 = *(v14 + 16);
      v10 = *(v14 + 24);
      if (v11 >= v10 >> 1)
      {
        sub_1D6997950((v10 > 1), v11 + 1, 1);
      }

      v4 += 40;
      *(v14 + 16) = v11 + 1;
      v12 = v14 + 40 * v11;
      *(v12 + 32) = v5;
      *(v12 + 40) = v6;
      *(v12 + 48) = v7;
      *(v12 + 56) = v8;
      *(v12 + 64) = v9;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_1D600BB30(uint64_t a1)
{
  v2 = type metadata accessor for FormatOption(0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = (&v170 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v170 - v9;
  v11 = *(a1 + 16);
  v12 = MEMORY[0x1E69E7CC0];
  if (v11)
  {
    v190 = MEMORY[0x1E69E7CC0];
    sub_1D6997860(0, v11, 0);
    v13 = (*(v3 + 80) + 32) & ~*(v3 + 80);
    v14 = a1 + v13;
    v12 = v190;
    v15 = *(v3 + 72);
    v183 = v13;
    v184 = v15;
    v181 = v2;
    while (1)
    {
      sub_1D5D251EC(v14, v6, type metadata accessor for FormatOption);
      v16 = *v6;
      v17 = v6[2];
      v18 = v17 >> 60;
      v185 = v6[1];
      if ((v17 >> 60) <= 7)
      {
        break;
      }

      if (v18 <= 11)
      {
        if ((v18 - 9) >= 3)
        {
          v17 = *((v17 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
        }

LABEL_15:

        goto LABEL_16;
      }

      if (v18 != 12)
      {
        goto LABEL_15;
      }

      v27 = *((v17 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v28 = swift_allocObject();
      v29 = v28;
      if (v27 < 0)
      {
        v35 = v27 & 0x1FFFFFFFFFFFFFFFLL;
        v182 = v16;
        v36 = *((v27 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
        v37 = *(v35 + 24);
        v38 = *(v35 + 32);
        v39 = *(v35 + 40);
        v40 = swift_allocObject();
        *(v40 + 16) = v36;
        *(v40 + 24) = v37;
        *(v40 + 32) = v38;
        *(v40 + 40) = v39;
        *(v29 + 16) = v40 | 0x6000000000000000;
        v41 = v37;
        v42 = v38;
        v16 = v182;
        v13 = v183;
        v43 = v39;
        v2 = v181;
        sub_1D5F58038(v36, v41, v42, v43);
      }

      else
      {
        *(v28 + 16) = v27;
      }

      v17 = v29 | 0xC000000000000000;

      v15 = v184;
LABEL_16:
      *v10 = v16;
      *(v10 + 1) = v30;
      *(v10 + 2) = v17;
      *(v10 + 3) = 1;
      v31 = *(v2 + 28);
      v32 = type metadata accessor for FormatVersionRequirement(0);
      (*(*(v32 - 8) + 56))(&v10[v31], 1, 1, v32);
      sub_1D60112C4(v6, type metadata accessor for FormatOption);
      v190 = v12;
      v34 = *(v12 + 16);
      v33 = *(v12 + 24);
      if (v34 >= v33 >> 1)
      {
        sub_1D6997860((v33 > 1), v34 + 1, 1);
        v15 = v184;
        v12 = v190;
      }

      *(v12 + 16) = v34 + 1;
      sub_1D5D247E0(v10, v12 + v13 + v34 * v15);
      v14 += v15;
      if (!--v11)
      {
        return v12;
      }
    }

    if ((v17 >> 60) >= 7)
    {
      v19 = *((v17 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v20 = swift_allocObject();
      v21 = v19 >> 60;
      if ((v19 >> 60) > 8)
      {
        if (v21 == 9)
        {
          v45 = v19 & 0xFFFFFFFFFFFFFFFLL;
          v47 = *((v19 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
          v46 = *((v19 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
          v182 = v16;
          v48 = *(v45 + 32);
          LODWORD(v180) = *(v45 + 40);
          v22 = v20;
          v49 = swift_allocObject();
          *(v49 + 16) = v47;
          *(v49 + 24) = v46;
          *(v49 + 32) = v48;
          *(v49 + 40) = v180;
          *(v22 + 16) = v49 | 0x7000000000000000;

          v50 = v47;
          v15 = v184;
          v51 = v48;
          v16 = v182;
          sub_1D5F58038(v50, v46, v51, v180);
        }

        else
        {
          v22 = v20;
          v24 = *((v19 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
          v23 = *((v19 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
          if (v21 == 10)
          {
            v25 = swift_allocObject();
            *(v25 + 16) = v24;
            *(v25 + 24) = v23;
            v26 = v25 | 0x4000000000000000;
          }

          else
          {
            v52 = swift_allocObject();
            *(v52 + 16) = v24;
            *(v52 + 24) = v23;
            v26 = v52 | 0x8000000000000000;
          }

          *(v22 + 16) = v26;

          v15 = v184;
        }

        goto LABEL_30;
      }

      if ((v21 - 4) < 5 || v21 < 3)
      {
        *(v20 + 16) = v19;
        v22 = v20;

LABEL_30:
        v17 = v22 | 0x7000000000000000;
        v30 = v185;
        v13 = v183;
        goto LABEL_16;
      }

      v53 = v19 & 0xFFFFFFFFFFFFFFFLL;
      v55 = *((v19 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v54 = *((v19 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
      v179 = v20;
      v180 = v53;
      v56 = v55 >> 60;
      v182 = v16;
      if ((v55 >> 60) <= 8)
      {
        if ((v56 - 4) >= 5 && v56 >= 3)
        {
          v177 = v55;
          v90 = *((v55 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
          v91 = *((v55 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
          v92 = v90 >> 60;
          v178 = v90;
          if ((v90 >> 60) <= 8)
          {
            if ((v92 - 4) >= 5 && v92 >= 3)
            {
              v176 = v54;
              v150 = *((v90 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
              v151 = *((v90 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
              v175 = swift_allocObject();
              v188 = v150;
              v189 = v151;

              v54 = v176;

              sub_1D6E0CAE0(&v187);
              sub_1D6E0CAE0(&v186);

              v152 = v186;
              v153 = v175;
              *(v175 + 16) = v187;
              *(v153 + 24) = v152;
              v175 = v153 | 0x3000000000000000;
            }

            else
            {
              v108 = v90;

              swift_retain_n();

              v175 = v108;
            }
          }

          else if (v92 == 9)
          {
            v176 = v54;
            v110 = *((v90 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
            v173 = *((v90 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
            v111 = v173;
            v174 = v110;
            v172 = *((v90 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
            LODWORD(v171) = *((v90 & 0xFFFFFFFFFFFFFFFLL) + 0x28);
            v112 = swift_allocObject();
            *(v112 + 16) = v111;
            *(v112 + 24) = v110;
            v113 = v172;
            *(v112 + 32) = v172;
            LOBYTE(v111) = v171;
            *(v112 + 40) = v171;
            v175 = v112 | 0x7000000000000000;

            v54 = v176;

            sub_1D5F58038(v173, v174, v113, v111);
          }

          else
          {
            v93 = v54;
            v176 = v90 & 0xFFFFFFFFFFFFFFFLL;
            v94 = *((v90 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
            v95 = *((v90 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
            if (v92 == 10)
            {
              v96 = swift_allocObject();
              *(v96 + 16) = v94;
              *(v96 + 24) = v95;
              v97 = v96 | 0x4000000000000000;
            }

            else
            {
              v119 = swift_allocObject();
              *(v119 + 16) = v94;
              *(v119 + 24) = v95;
              v97 = v119 | 0x8000000000000000;
            }

            v175 = v97;

            v54 = v93;
          }

          v120 = v91 >> 60;
          v15 = v184;
          if ((v91 >> 60) <= 8)
          {
            if ((v120 - 4) >= 5 && v120 >= 3)
            {
              v159 = v91 & 0xFFFFFFFFFFFFFFFLL;
              v176 = v91 & 0xFFFFFFFFFFFFFFFLL;
              v160 = v54;
              v162 = *((v91 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
              v161 = *(v159 + 24);
              v163 = swift_allocObject();
              v188 = v162;
              v189 = v161;

              sub_1D6E0CAE0(&v187);
              sub_1D6E0CAE0(&v186);
              v15 = v184;
              v54 = v160;

              v164 = v186;
              *(v163 + 16) = v187;
              *(v163 + 24) = v164;

              v91 = v163 | 0x3000000000000000;
            }

            else
            {
            }
          }

          else if (v120 == 9)
          {
            v176 = v54;
            v127 = v91 & 0xFFFFFFFFFFFFFFFLL;
            v129 = *((v91 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
            v128 = *((v91 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
            v130 = *((v91 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
            LODWORD(v174) = *(v127 + 40);
            v131 = swift_allocObject();
            *(v131 + 16) = v129;
            *(v131 + 24) = v128;
            *(v131 + 32) = v130;
            v132 = v174;
            *(v131 + 40) = v174;
            sub_1D5F58038(v129, v128, v130, v132);
            v54 = v176;

            v91 = v131 | 0x7000000000000000;
            v15 = v184;
          }

          else
          {
            v121 = v54;
            v122 = v91 & 0xFFFFFFFFFFFFFFFLL;
            v124 = *((v91 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
            v123 = *(v122 + 24);
            if (v120 == 10)
            {
              v125 = swift_allocObject();
              *(v125 + 16) = v124;
              *(v125 + 24) = v123;

              v91 = v125 | 0x4000000000000000;
            }

            else
            {
              v146 = swift_allocObject();
              *(v146 + 16) = v124;
              *(v146 + 24) = v123;

              v91 = v146 | 0x8000000000000000;
            }

            v15 = v184;
            v54 = v121;
          }

          v147 = swift_allocObject();
          *(v147 + 16) = v175;
          *(v147 + 24) = v91;
          v178 = v147 | 0x3000000000000000;
          v16 = v182;
          v55 = v177;
        }

        else
        {

          swift_retain_n();

          v178 = v55;
        }
      }

      else if (v56 == 9)
      {
        v176 = v54;
        v62 = v55 & 0xFFFFFFFFFFFFFFFLL;
        v63 = v55;
        v64 = *((v55 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
        v65 = *(v62 + 24);
        v174 = v64;
        v177 = v63;
        v66 = *(v62 + 32);
        v67 = *(v62 + 40);
        LODWORD(v175) = v67;
        v68 = swift_allocObject();
        *(v68 + 16) = v64;
        *(v68 + 24) = v65;
        v69 = v66;
        *(v68 + 32) = v66;
        *(v68 + 40) = v67;
        v178 = v68 | 0x7000000000000000;

        v54 = v176;

        v15 = v184;
        v16 = v182;
        v70 = v69;
        v55 = v177;
        sub_1D5F58038(v174, v65, v70, v175);
      }

      else
      {
        v58 = *((v55 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
        v57 = *((v55 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
        if (v56 == 10)
        {
          v59 = swift_allocObject();
          *(v59 + 16) = v58;
          *(v59 + 24) = v57;
          v60 = v59 | 0x4000000000000000;
        }

        else
        {
          v71 = swift_allocObject();
          *(v71 + 16) = v58;
          *(v71 + 24) = v57;
          v60 = v71 | 0x8000000000000000;
        }

        v178 = v60;

        v15 = v184;
        v16 = v182;
      }

      v72 = v54 >> 60;
      if ((v54 >> 60) > 8)
      {
        v73 = v54 & 0xFFFFFFFFFFFFFFFLL;
        if (v72 != 9)
        {
          v75 = *(v73 + 16);
          v74 = *(v73 + 24);
          if (v72 == 10)
          {
            v76 = swift_allocObject();
            *(v76 + 16) = v75;
            *(v76 + 24) = v74;
            v77 = v76 | 0x4000000000000000;
          }

          else
          {
            v88 = swift_allocObject();
            *(v88 + 16) = v75;
            *(v88 + 24) = v74;
            v77 = v88 | 0x8000000000000000;
          }

          v54 = v77;

          v15 = v184;
          v16 = v182;
          goto LABEL_56;
        }

        v79 = *(v73 + 16);
        v80 = *(v73 + 24);
        v177 = v55;
        v81 = *(v73 + 32);
        v82 = *(v73 + 40);
        v83 = swift_allocObject();
        *(v83 + 16) = v79;
        *(v83 + 24) = v80;
        *(v83 + 32) = v81;
        v84 = v82;
        *(v83 + 40) = v82;
        v85 = v83 | 0x7000000000000000;
        v86 = v79;
        v15 = v184;
        v87 = v80;
        v16 = v182;
        sub_1D5F58038(v86, v87, v81, v84);
        v54 = v85;

LABEL_53:

LABEL_56:
        v89 = swift_allocObject();
        v22 = v179;
        *(v89 + 16) = v178;
        *(v89 + 24) = v54;
        *(v22 + 16) = v89 | 0x3000000000000000;

        v2 = v181;
        goto LABEL_30;
      }

      if ((v72 - 4) < 5 || v72 < 3)
      {
        goto LABEL_53;
      }

      v98 = v54 & 0xFFFFFFFFFFFFFFFLL;
      v99 = *((v54 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v100 = *(v98 + 24);
      v101 = v99 >> 60;
      v176 = v99;
      v177 = v55;
      v175 = v98;
      if ((v99 >> 60) <= 8)
      {
        if ((v101 - 4) >= 5 && v101 >= 3)
        {
          v154 = v99 & 0xFFFFFFFFFFFFFFFLL;
          v155 = *(v154 + 16);
          v156 = *(v154 + 24);
          v157 = swift_allocObject();
          v188 = v155;
          v189 = v156;

          sub_1D6E0CAE0(&v187);
          sub_1D6E0CAE0(&v186);
          v15 = v184;

          v158 = v186;
          *(v157 + 16) = v187;
          *(v157 + 24) = v158;
          v174 = v157 | 0x3000000000000000;
          goto LABEL_91;
        }

        swift_retain_n();
        v174 = v99;
      }

      else
      {
        v102 = v99 & 0xFFFFFFFFFFFFFFFLL;
        if (v101 == 9)
        {
          v114 = *(v102 + 24);
          v173 = *(v102 + 16);
          v115 = *(v102 + 32);
          v170 = v114;
          v171 = v115;
          v116 = *(v102 + 40);
          LODWORD(v172) = v116;
          v117 = swift_allocObject();
          v118 = v170;
          *(v117 + 16) = v173;
          *(v117 + 24) = v118;
          *(v117 + 32) = v115;
          *(v117 + 40) = v116;
          v174 = v117 | 0x7000000000000000;

          v15 = v184;
          v16 = v182;
          sub_1D5F58038(v173, v118, v171, v172);
        }

        else
        {
          v104 = *(v102 + 16);
          v103 = *(v102 + 24);
          if (v101 == 10)
          {
            v105 = swift_allocObject();
            *(v105 + 16) = v104;
            *(v105 + 24) = v103;
            v106 = v105 | 0x4000000000000000;
          }

          else
          {
            v133 = swift_allocObject();
            *(v133 + 16) = v104;
            *(v133 + 24) = v103;
            v106 = v133 | 0x8000000000000000;
          }

          v174 = v106;

          v15 = v184;
LABEL_91:
          v16 = v182;
        }
      }

      v134 = v100 >> 60;
      if ((v100 >> 60) <= 8)
      {
        if ((v134 - 4) >= 5 && v134 >= 3)
        {
          v165 = *((v100 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
          v166 = *((v100 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
          v167 = swift_allocObject();
          v188 = v165;
          v189 = v166;

          sub_1D6E0CAE0(&v187);
          sub_1D6E0CAE0(&v186);
          v15 = v184;

          v168 = v186;
          *(v167 + 16) = v187;
          *(v167 + 24) = v168;

          v100 = v167 | 0x3000000000000000;
          v16 = v182;
        }

        else
        {
        }
      }

      else
      {
        v135 = v100 & 0xFFFFFFFFFFFFFFFLL;
        if (v134 == 9)
        {
          v141 = *((v100 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
          v140 = *(v135 + 24);
          v142 = *(v135 + 32);
          LODWORD(v173) = *(v135 + 40);
          v143 = swift_allocObject();
          *(v143 + 16) = v141;
          *(v143 + 24) = v140;
          *(v143 + 32) = v142;
          v144 = v173;
          *(v143 + 40) = v173;
          v145 = v140;
          v16 = v182;
          sub_1D5F58038(v141, v145, v142, v144);

          v100 = v143 | 0x7000000000000000;
          v15 = v184;
        }

        else
        {
          v137 = *((v100 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
          v136 = *((v100 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
          if (v134 == 10)
          {
            v138 = swift_allocObject();
            *(v138 + 16) = v137;
            *(v138 + 24) = v136;

            v100 = v138 | 0x4000000000000000;
          }

          else
          {
            v148 = swift_allocObject();
            *(v148 + 16) = v137;
            *(v148 + 24) = v136;

            v100 = v148 | 0x8000000000000000;
          }

          v15 = v184;
          v16 = v182;
        }
      }

      v149 = swift_allocObject();
      *(v149 + 16) = v174;
      *(v149 + 24) = v100;

      v54 = v149 | 0x3000000000000000;
      goto LABEL_56;
    }

    goto LABEL_15;
  }

  return v12;
}

uint64_t sub_1D600CADC(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v16 = MEMORY[0x1E69E7CC0];
    sub_1D69978B0(0, v1, 0);
    v2 = v16;
    v4 = (a1 + 64);
    do
    {
      v5 = *(v4 - 4);
      v6 = *(v4 - 2);
      v13 = *(v4 - 7);
      v14 = *(v4 - 8);
      v7 = *v4;

      swift_bridgeObjectRetain_n();
      swift_retain_n();
      sub_1D6E0CAE0(&v15);

      v8 = v15;

      v16 = v2;
      v10 = *(v2 + 16);
      v9 = *(v2 + 24);
      if (v10 >= v9 >> 1)
      {
        sub_1D69978B0((v9 > 1), v10 + 1, 1);
        v2 = v16;
      }

      *(v2 + 16) = v10 + 1;
      v11 = v2 + 40 * v10;
      *(v11 + 32) = v5;
      *(v11 + 40) = v8;
      *(v11 + 48) = v6;
      *(v11 + 56) = v14;
      *(v11 + 57) = v13;
      *(v11 + 64) = v7;
      v4 += 5;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_1D600CC40(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v148 = MEMORY[0x1E69E7CC0];
    sub_1D6997A80(0, v1, 0);
    v4 = (a1 + 48);
    v2 = v148;
    do
    {
      v6 = *(v4 - 2);
      v5 = *(v4 - 1);
      v7 = *v4;
      if ((~v6 & 0xF000000000000007) != 0)
      {
        v8 = v6 >> 60;
        if ((v6 >> 60) > 8)
        {
          v140 = v2;
          v142 = v1;
          v9 = *v4;
          if (v8 == 9)
          {
            v16 = v6 & 0xFFFFFFFFFFFFFFFLL;
            v17 = *(v4 - 2);
            v18 = *(v4 - 1);
            v19 = *(v16 + 16);
            v20 = *(v16 + 24);
            v21 = *(v16 + 32);
            v22 = *(v16 + 40);
            v23 = swift_allocObject();
            *(v23 + 16) = v19;
            *(v23 + 24) = v20;
            *(v23 + 32) = v21;
            *(v23 + 40) = v22;
            v14 = v23 | 0x7000000000000000;
            sub_1D5CFCFAC(v17);
            sub_1D5D04BD4(v18);
            sub_1D5D04BD4(v7);
            v24 = v19;
            v5 = v18;
            v6 = v17;
            sub_1D5F58038(v24, v20, v21, v22);
          }

          else
          {
            v10 = *(v4 - 1);
            v12 = *((v6 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
            v11 = *((v6 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
            if (v8 == 10)
            {
              v13 = swift_allocObject();
              *(v13 + 16) = v12;
              *(v13 + 24) = v11;
              v14 = v13 | 0x4000000000000000;
            }

            else
            {
              v25 = swift_allocObject();
              *(v25 + 16) = v12;
              *(v25 + 24) = v11;
              v14 = v25 | 0x8000000000000000;
            }

            sub_1D5CFCFAC(v6);
            sub_1D5D04BD4(v10);
            sub_1D5D04BD4(v9);

            v5 = v10;
            v7 = v9;
          }

          v2 = v140;
          v1 = v142;
          goto LABEL_19;
        }

        if ((v8 - 4) >= 5 && v8 >= 3)
        {
          v29 = *((v6 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
          v143 = *((v6 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
          v30 = v143 >> 60;
          v139 = *(v4 - 1);
          if ((v143 >> 60) <= 8)
          {
            if ((v30 - 4) >= 5 && v30 >= 3)
            {
              v66 = *((v143 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
              v65 = *((v143 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
              v67 = v66 >> 60;
              v138 = *((v6 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
              if ((v66 >> 60) <= 8)
              {
                if ((v67 - 4) >= 5 && v67 >= 3)
                {
                  v116 = *((v66 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
                  v134 = *((v66 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
                  v136 = swift_allocObject();
                  v146 = v134;
                  v147 = v116;
                  sub_1D5CFCFAC(v6);
                  sub_1D5D04BD4(v5);
                  sub_1D5D04BD4(v7);
                  sub_1D5CFCFAC(v6);

                  sub_1D6E0CAE0(&v145);
                  sub_1D6E0CAE0(&v144);

                  v117 = v144;
                  *(v136 + 16) = v145;
                  *(v136 + 24) = v117;
                  v135 = v136 | 0x3000000000000000;
                }

                else
                {
                  sub_1D5CFCFAC(v6);
                  sub_1D5D04BD4(v5);
                  sub_1D5D04BD4(v7);
                  sub_1D5CFCFAC(v6);

                  swift_retain_n();

                  v135 = v66;
                }
              }

              else if (v67 == 9)
              {
                v91 = *((v66 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
                v128 = *((v66 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
                v124 = *((v66 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
                v132 = *((v143 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
                v92 = *((v66 & 0xFFFFFFFFFFFFFFFLL) + 0x28);
                v125 = v92;
                v93 = swift_allocObject();
                *(v93 + 16) = v128;
                *(v93 + 24) = v91;
                *(v93 + 32) = v124;
                *(v93 + 40) = v92;
                v65 = v132;
                v135 = v93 | 0x7000000000000000;
                sub_1D5CFCFAC(v6);
                sub_1D5D04BD4(v5);
                sub_1D5D04BD4(v7);
                sub_1D5CFCFAC(v6);

                sub_1D5F58038(v128, v91, v124, v125);
              }

              else
              {
                v68 = v66 & 0xFFFFFFFFFFFFFFFLL;
                v70 = *((v66 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
                v69 = *(v68 + 24);
                if (v67 == 10)
                {
                  v71 = swift_allocObject();
                  *(v71 + 16) = v70;
                  *(v71 + 24) = v69;
                  v72 = v71 | 0x4000000000000000;
                }

                else
                {
                  v94 = swift_allocObject();
                  *(v94 + 16) = v70;
                  *(v94 + 24) = v69;
                  v72 = v94 | 0x8000000000000000;
                }

                v135 = v72;
                sub_1D5CFCFAC(v6);
                sub_1D5D04BD4(v5);
                sub_1D5D04BD4(v7);
                sub_1D5CFCFAC(v6);
              }

              v95 = v65 >> 60;
              if ((v65 >> 60) <= 8)
              {
                if ((v95 - 4) >= 5 && v95 >= 3)
                {
                  v118 = v65 & 0xFFFFFFFFFFFFFFFLL;
                  v119 = *((v65 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
                  v120 = *(v118 + 24);
                  v121 = swift_allocObject();
                  v146 = v119;
                  v147 = v120;

                  sub_1D6E0CAE0(&v145);
                  sub_1D6E0CAE0(&v144);

                  v122 = v144;
                  *(v121 + 16) = v145;
                  *(v121 + 24) = v122;

                  v65 = v121 | 0x3000000000000000;
                }

                else
                {
                }
              }

              else
              {
                v96 = v65 & 0xFFFFFFFFFFFFFFFLL;
                if (v95 == 9)
                {
                  v102 = *((v65 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
                  v101 = *((v65 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
                  v103 = *((v65 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
                  v133 = *(v96 + 40);
                  v104 = swift_allocObject();
                  *(v104 + 16) = v102;
                  *(v104 + 24) = v101;
                  *(v104 + 32) = v103;
                  *(v104 + 40) = v133;
                  sub_1D5F58038(v102, v101, v103, v133);

                  v65 = v104 | 0x7000000000000000;
                }

                else
                {
                  v98 = *((v65 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
                  v97 = *(v96 + 24);
                  if (v95 == 10)
                  {
                    v99 = swift_allocObject();
                    *(v99 + 16) = v98;
                    *(v99 + 24) = v97;

                    v65 = v99 | 0x4000000000000000;
                  }

                  else
                  {
                    v105 = swift_allocObject();
                    *(v105 + 16) = v98;
                    *(v105 + 24) = v97;

                    v65 = v105 | 0x8000000000000000;
                  }
                }
              }

              v106 = swift_allocObject();
              v29 = v138;
              *(v106 + 16) = v135;
              *(v106 + 24) = v65;
              v141 = v106 | 0x3000000000000000;
            }

            else
            {
              sub_1D5CFCFAC(v6);
              sub_1D5D04BD4(v5);
              sub_1D5D04BD4(v7);
              sub_1D5CFCFAC(v6);

              swift_retain_n();
              v141 = v143;
            }
          }

          else if (v30 == 9)
          {
            v37 = *((v143 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
            v137 = *((v6 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
            v38 = *((v143 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
            v126 = *((v143 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
            v129 = v38;
            v39 = *((v143 & 0xFFFFFFFFFFFFFFFLL) + 0x28);
            v40 = swift_allocObject();
            *(v40 + 16) = v37;
            *(v40 + 24) = v126;
            *(v40 + 32) = v38;
            *(v40 + 40) = v39;
            v141 = v40 | 0x7000000000000000;
            sub_1D5CFCFAC(v6);
            v29 = v137;
            sub_1D5D04BD4(v5);
            sub_1D5D04BD4(v7);
            sub_1D5CFCFAC(v6);

            sub_1D5F58038(v37, v126, v129, v39);
          }

          else
          {
            v31 = *((v6 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
            v33 = *((v143 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
            v32 = *((v143 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
            if (v30 == 10)
            {
              v34 = swift_allocObject();
              *(v34 + 16) = v33;
              *(v34 + 24) = v32;
              v35 = v34 | 0x4000000000000000;
            }

            else
            {
              v41 = swift_allocObject();
              *(v41 + 16) = v33;
              *(v41 + 24) = v32;
              v35 = v41 | 0x8000000000000000;
            }

            v141 = v35;
            sub_1D5CFCFAC(v6);
            sub_1D5D04BD4(v5);
            sub_1D5D04BD4(v7);
            sub_1D5CFCFAC(v6);

            v29 = v31;
          }

          v42 = v29 >> 60;
          if ((v29 >> 60) <= 8)
          {
            if ((v42 - 4) >= 5 && v42 >= 3)
            {
              v48 = *((v29 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
              v49 = *((v29 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
              v50 = v48 >> 60;
              if ((v48 >> 60) <= 8)
              {
                if ((v50 - 4) >= 5 && v50 >= 3)
                {
                  v111 = v48 & 0xFFFFFFFFFFFFFFFLL;
                  v112 = *(v111 + 16);
                  v113 = *(v111 + 24);
                  v114 = swift_allocObject();
                  v146 = v112;
                  v147 = v113;

                  sub_1D6E0CAE0(&v145);
                  sub_1D6E0CAE0(&v144);

                  v115 = v144;
                  *(v114 + 16) = v145;
                  *(v114 + 24) = v115;
                  v131 = v114 | 0x3000000000000000;
                }

                else
                {

                  swift_retain_n();
                  v131 = v48;
                }
              }

              else
              {
                v51 = v48 & 0xFFFFFFFFFFFFFFFLL;
                if (v50 == 9)
                {
                  v75 = *(v51 + 16);
                  v76 = *(v51 + 24);
                  v77 = *(v51 + 32);
                  v127 = *(v51 + 40);
                  v78 = swift_allocObject();
                  *(v78 + 16) = v75;
                  *(v78 + 24) = v76;
                  *(v78 + 32) = v77;
                  *(v78 + 40) = v127;
                  v131 = v78 | 0x7000000000000000;

                  sub_1D5F58038(v75, v76, v77, v127);
                }

                else
                {
                  v53 = *(v51 + 16);
                  v52 = *(v51 + 24);
                  if (v50 == 10)
                  {
                    v54 = swift_allocObject();
                    *(v54 + 16) = v53;
                    *(v54 + 24) = v52;
                    v55 = v54 | 0x4000000000000000;
                  }

                  else
                  {
                    v79 = swift_allocObject();
                    *(v79 + 16) = v53;
                    *(v79 + 24) = v52;
                    v55 = v79 | 0x8000000000000000;
                  }

                  v131 = v55;
                }
              }

              v80 = v49 >> 60;
              if ((v49 >> 60) <= 8)
              {
                if ((v80 - 4) >= 5 && v80 >= 3)
                {
                  v107 = *((v49 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
                  v108 = *((v49 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
                  v109 = swift_allocObject();
                  v146 = v107;
                  v147 = v108;

                  sub_1D6E0CAE0(&v145);
                  sub_1D6E0CAE0(&v144);

                  v110 = v144;
                  *(v109 + 16) = v145;
                  *(v109 + 24) = v110;

                  v49 = v109 | 0x3000000000000000;
                }

                else
                {
                }
              }

              else
              {
                v81 = v49 & 0xFFFFFFFFFFFFFFFLL;
                if (v80 == 9)
                {
                  v86 = *((v49 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
                  v85 = *((v49 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
                  v87 = *(v81 + 32);
                  v130 = *(v81 + 40);
                  v88 = swift_allocObject();
                  *(v88 + 16) = v86;
                  *(v88 + 24) = v85;
                  *(v88 + 32) = v87;
                  *(v88 + 40) = v130;
                  sub_1D5F58038(v86, v85, v87, v130);

                  v49 = v88 | 0x7000000000000000;
                }

                else
                {
                  v83 = *((v49 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
                  v82 = *((v49 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
                  if (v80 == 10)
                  {
                    v84 = swift_allocObject();
                    *(v84 + 16) = v83;
                    *(v84 + 24) = v82;

                    v49 = v84 | 0x4000000000000000;
                  }

                  else
                  {
                    v89 = swift_allocObject();
                    *(v89 + 16) = v83;
                    *(v89 + 24) = v82;

                    v49 = v89 | 0x8000000000000000;
                  }
                }
              }

              v90 = swift_allocObject();
              *(v90 + 16) = v131;
              *(v90 + 24) = v49;

              v29 = v90 | 0x3000000000000000;
              goto LABEL_49;
            }
          }

          else
          {
            v43 = v29 & 0xFFFFFFFFFFFFFFFLL;
            if (v42 != 9)
            {
              v45 = *((v29 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
              v44 = *((v29 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
              if (v42 == 10)
              {
                v46 = swift_allocObject();
                *(v46 + 16) = v45;
                *(v46 + 24) = v44;
                v47 = v46 | 0x4000000000000000;
              }

              else
              {
                v63 = swift_allocObject();
                *(v63 + 16) = v45;
                *(v63 + 24) = v44;
                v47 = v63 | 0x8000000000000000;
              }

              v29 = v47;

              goto LABEL_49;
            }

            v56 = *((v29 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
            v57 = *(v43 + 24);
            v58 = *(v43 + 32);
            v59 = *(v43 + 40);
            v60 = swift_allocObject();
            *(v60 + 16) = v56;
            *(v60 + 24) = v57;
            *(v60 + 32) = v58;
            *(v60 + 40) = v59;
            v61 = v60 | 0x7000000000000000;
            v62 = v56;
            v29 = v61;
            sub_1D5F58038(v62, v57, v58, v59);
          }

LABEL_49:
          v64 = swift_allocObject();
          *(v64 + 16) = v141;
          *(v64 + 24) = v29;
          sub_1D5C84FF4(v6);
          v14 = v64 | 0x3000000000000000;
          v5 = v139;
          goto LABEL_19;
        }

        sub_1D5CFCFAC(*(v4 - 2));
        sub_1D5D04BD4(v5);
        sub_1D5D04BD4(v7);
        sub_1D5CFCFAC(v6);
      }

      else
      {
        sub_1D5CFCFAC(*(v4 - 2));
        sub_1D5D04BD4(v5);
        sub_1D5D04BD4(v7);
      }

      v14 = v6;
LABEL_19:
      sub_1D5D04BD4(v5);
      sub_1D5D04BD4(v7);
      sub_1D5C84FF4(v6);
      sub_1D5C8500C(v5);
      sub_1D5C8500C(v7);
      v148 = v2;
      v27 = *(v2 + 16);
      v26 = *(v2 + 24);
      if (v27 >= v26 >> 1)
      {
        sub_1D6997A80((v26 > 1), v27 + 1, 1);
        v2 = v148;
      }

      v4 += 3;
      *(v2 + 16) = v27 + 1;
      v28 = (v2 + 24 * v27);
      v28[4] = v14;
      v28[5] = v5;
      v28[6] = v7;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_1D600DA28(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v263 = MEMORY[0x1E69E7CC0];
    sub_1D6997980(0, v1, 0);
    v4 = (a1 + 32);
    v2 = v263;
    do
    {
      v5 = v4[5];
      v6 = v4[7];
      v258 = v4[6];
      v259 = v6;
      v7 = v4[1];
      v8 = v4[3];
      v254 = v4[2];
      v255 = v8;
      v9 = v4[3];
      v10 = v4[5];
      v256 = v4[4];
      v257 = v10;
      v11 = v4[1];
      v252 = *v4;
      v253 = v11;
      v12 = v4[7];
      v261[6] = v258;
      v261[7] = v12;
      v261[2] = v254;
      v261[3] = v9;
      v261[5] = v5;
      v261[4] = v256;
      v260 = *(v4 + 128);
      v262 = *(v4 + 128);
      v261[1] = v7;
      v261[0] = v252;
      v13 = sub_1D5F78DC4(v261);
      if (v13)
      {
        if (v13 == 1)
        {
          v14 = sub_1D5DEA32C(v261);
          v236 = *v14;
          v15 = *(v14 + 64);
          v17 = *(v14 + 16);
          v16 = *(v14 + 32);
          v239 = *(v14 + 48);
          v240 = v15;
          v237 = v17;
          v238 = v16;
          v19 = *(v14 + 96);
          v18 = *(v14 + 112);
          v20 = *(v14 + 80);
          v244 = *(v14 + 128);
          v242 = v19;
          v243 = v18;
          v241 = v20;
          if (sub_1D6011234(&v236) != 1)
          {
            v41 = sub_1D5D756B8(&v236);
            v42 = *(v41 + 48);
            v44 = *v41;
            v43 = *(v41 + 16);
            v212 = *(v41 + 32);
            v213 = v42;
            v210 = v44;
            v211 = v43;
            v45 = *(v41 + 112);
            v47 = *(v41 + 64);
            v46 = *(v41 + 80);
            v216 = *(v41 + 96);
            v217 = v45;
            v214 = v47;
            v215 = v46;
            if (sub_1D6011280(&v210) == 1)
            {
              v48 = sub_1D5D756C8(&v210);
              v49 = *v48;
              v50 = *(v48 + 8);
              v51 = *(v48 + 48);
              v52 = *(v48 + 56);
              v53 = *(v48 + 64);
              v54 = *(v48 + 104);
              v55 = *(v48 + 112);
              v56 = *(v48 + 120);
              v196 = *(v48 + 88);
              v200 = *(v48 + 72);
              v188 = *(v48 + 32);
              v192 = *(v48 + 16);
              sub_1D5ECEF80(&v252, &v245);
              sub_1D5ECEF80(&v252, &v245);

              v57 = sub_1D600A03C(v55);
              sub_1D5ECEFDC(&v252);
              sub_1D5ECEFDC(&v252);
              LOBYTE(v227) = v51;
              LOBYTE(v218) = v54;
              *&v245 = v49;
              *(&v245 + 1) = v50;
              v246 = v192;
              v247 = v188;
              LOBYTE(v248) = v51;
              *(&v248 + 1) = v52;
              *v249 = v53;
              *&v249[24] = v196;
              *&v249[8] = v200;
              v249[40] = v54;
              *&v250 = v57;
              *(&v250 + 1) = v56;
              sub_1D5C326F0(&v245);
            }

            else
            {
              v64 = sub_1D5D756C8(&v210);
              v65 = *v64;
              v66 = *(v64 + 8);
              v68 = *(v64 + 48);
              v67 = *(v64 + 56);
              v198 = *(v64 + 32);
              v202 = *(v64 + 16);
              sub_1D5ECEF80(&v252, &v245);
              sub_1D5ECEF80(&v252, &v245);

              sub_1D5D615EC(v68, v67);
              v69 = sub_1D600A03C(v65);
              sub_1D5ECEFDC(&v252);
              sub_1D5ECEFDC(&v252);
              *&v245 = v69;
              *(&v245 + 1) = v66;
              v246 = v202;
              v247 = v198;
              *&v248 = v68;
              *(&v248 + 1) = v67;
              sub_1D5C32704(&v245);
            }

            *v208 = *v249;
            *&v208[16] = *&v249[16];
            *&v208[32] = *&v249[32];
            v209 = v250;
            v204 = v245;
            v205 = v246;
            v206 = v247;
            v207 = v248;
            v70 = *(v41 + 128);
            v222 = *v249;
            v223 = *&v249[16];
            v224 = *&v249[32];
            v225 = v250;
            v218 = v245;
            v219 = v246;
            v220 = v247;
            v221 = v248;
            v226 = v70;
            sub_1D601128C(&v218);
            goto LABEL_26;
          }

          v21 = sub_1D5D756B8(&v236);
          v22 = *v21;
          v23 = *(v21 + 8);
          v24 = *v21 >> 60;
          if (v24 > 8)
          {
            if (v24 == 9)
            {
              v72 = *((v22 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
              v73 = *((v22 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
              v74 = *((v22 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
              v75 = *((v22 & 0xFFFFFFFFFFFFFFFLL) + 0x28);
              v76 = swift_allocObject();
              *(v76 + 16) = v72;
              *(v76 + 24) = v73;
              *(v76 + 32) = v74;
              *(v76 + 40) = v75;
              v22 = v76 | 0x7000000000000000;
              sub_1D5F58038(v72, v73, v74, v75);
            }

            else
            {
              v26 = *((v22 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
              v25 = *((v22 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
              if (v24 == 10)
              {
                v27 = swift_allocObject();
                *(v27 + 16) = v26;
                *(v27 + 24) = v25;
                v22 = v27 | 0x4000000000000000;
              }

              else
              {
                v77 = swift_allocObject();
                *(v77 + 16) = v26;
                *(v77 + 24) = v25;
                v22 = v77 | 0x8000000000000000;
              }
            }

LABEL_25:
            *&v218 = v22;
            BYTE8(v218) = v23;
            sub_1D6011240(&v218);
LABEL_26:
            v233 = v224;
            v234 = v225;
            v235 = v226;
            v229 = v220;
            v230 = v221;
            v231 = v222;
            v232 = v223;
            v227 = v218;
            v228 = v219;
            sub_1D6011260(&v227);
            *&v249[32] = v233;
            v250 = v234;
            v251 = v235;
            v247 = v229;
            v248 = v230;
            *v249 = v231;
            *&v249[16] = v232;
            v40 = v227;
            v39 = v228;
            goto LABEL_27;
          }

          if ((v24 - 4) < 5 || v24 < 3)
          {
            *&v249[32] = v258;
            v250 = v259;
            v251 = v260;
            v247 = v254;
            v248 = v255;
            *v249 = v256;
            *&v249[16] = v257;
            v245 = v252;
            v246 = v253;
            v71 = sub_1D5DEA32C(&v245);
            sub_1D5F78E88(v71, &v227);
            goto LABEL_25;
          }

          v87 = v22 & 0xFFFFFFFFFFFFFFFLL;
          v89 = *((v22 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
          v88 = *(v87 + 24);
          v90 = v89 >> 60;
          if ((v89 >> 60) <= 8)
          {
            if ((v90 - 4) >= 5 && v90 >= 3)
            {
              v194 = v88;
              v123 = *((v89 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
              v124 = *((v89 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
              v125 = v123 >> 60;
              if ((v123 >> 60) <= 8)
              {
                if ((v125 - 4) >= 5 && v125 >= 3)
                {
                  v167 = v123 & 0xFFFFFFFFFFFFFFFLL;
                  v168 = *(v167 + 16);
                  v169 = *(v167 + 24);
                  v190 = swift_allocObject();
                  *&v227 = v168;
                  *(&v227 + 1) = v169;
                  sub_1D5ECEF80(&v252, &v245);
                  sub_1D5ECEF80(&v252, &v245);

                  sub_1D6E0CAE0(&v245);
                  sub_1D6E0CAE0(&v218);

                  v170 = v218;
                  *(v190 + 16) = v245;
                  *(v190 + 24) = v170;
                  v189 = v190 | 0x3000000000000000;
                }

                else
                {
                  sub_1D5ECEF80(&v252, &v245);
                  sub_1D5ECEF80(&v252, &v245);

                  swift_retain_n();

                  v189 = v123;
                }
              }

              else
              {
                v126 = v123 & 0xFFFFFFFFFFFFFFFLL;
                if (v125 == 9)
                {
                  v136 = *(v126 + 16);
                  v135 = *(v126 + 24);
                  v183 = *(v126 + 32);
                  v181 = *(v126 + 40);
                  v137 = swift_allocObject();
                  *(v137 + 16) = v136;
                  *(v137 + 24) = v135;
                  *(v137 + 32) = v183;
                  *(v137 + 40) = v181;
                  v189 = v137 | 0x7000000000000000;
                  sub_1D5ECEF80(&v252, &v245);
                  sub_1D5ECEF80(&v252, &v245);

                  sub_1D5F58038(v136, v135, v183, v181);
                }

                else
                {
                  v128 = *(v126 + 16);
                  v127 = *(v126 + 24);
                  if (v125 == 10)
                  {
                    v129 = swift_allocObject();
                    *(v129 + 16) = v128;
                    *(v129 + 24) = v127;
                    v130 = v129 | 0x4000000000000000;
                  }

                  else
                  {
                    v148 = swift_allocObject();
                    *(v148 + 16) = v128;
                    *(v148 + 24) = v127;
                    v130 = v148 | 0x8000000000000000;
                  }

                  v189 = v130;
                  sub_1D5ECEF80(&v252, &v245);
                  sub_1D5ECEF80(&v252, &v245);
                }
              }

              v149 = v124 >> 60;
              if ((v124 >> 60) <= 8)
              {
                if ((v149 - 4) >= 5 && v149 >= 3)
                {
                  v175 = v124 & 0xFFFFFFFFFFFFFFFLL;
                  v176 = *((v124 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
                  v177 = *(v175 + 24);
                  v178 = swift_allocObject();
                  *&v245 = v176;
                  *(&v245 + 1) = v177;

                  sub_1D6E0CAE0(&v227);
                  sub_1D6E0CAE0(&v218);

                  v179 = v218;
                  *(v178 + 16) = v227;
                  *(v178 + 24) = v179;

                  v124 = v178 | 0x3000000000000000;
                }

                else
                {
                }
              }

              else
              {
                v150 = v124 & 0xFFFFFFFFFFFFFFFLL;
                if (v149 == 9)
                {
                  v154 = *((v124 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
                  v186 = *((v124 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
                  v155 = *((v124 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
                  v156 = *(v150 + 40);
                  v157 = swift_allocObject();
                  *(v157 + 16) = v186;
                  *(v157 + 24) = v154;
                  *(v157 + 32) = v155;
                  *(v157 + 40) = v156;
                  sub_1D5F58038(v186, v154, v155, v156);

                  v124 = v157 | 0x7000000000000000;
                }

                else
                {
                  v152 = *((v124 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
                  v151 = *(v150 + 24);
                  if (v149 == 10)
                  {
                    v153 = swift_allocObject();
                    *(v153 + 16) = v152;
                    *(v153 + 24) = v151;

                    v124 = v153 | 0x4000000000000000;
                  }

                  else
                  {
                    v160 = swift_allocObject();
                    *(v160 + 16) = v152;
                    *(v160 + 24) = v151;

                    v124 = v160 | 0x8000000000000000;
                  }
                }
              }

              v161 = swift_allocObject();
              *(v161 + 16) = v189;
              *(v161 + 24) = v124;
              v203 = v161 | 0x3000000000000000;
              v88 = v194;
            }

            else
            {
              sub_1D5ECEF80(&v252, &v245);
              sub_1D5ECEF80(&v252, &v245);

              swift_retain_n();
              v203 = v89;
            }
          }

          else if (v90 == 9)
          {
            v95 = *((v89 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
            v96 = *((v89 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
            v193 = v88;
            v97 = *((v89 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
            v98 = *((v89 & 0xFFFFFFFFFFFFFFFLL) + 0x28);
            v99 = swift_allocObject();
            *(v99 + 16) = v95;
            *(v99 + 24) = v96;
            *(v99 + 32) = v97;
            *(v99 + 40) = v98;
            v203 = v99 | 0x7000000000000000;
            sub_1D5ECEF80(&v252, &v245);
            sub_1D5ECEF80(&v252, &v245);

            v100 = v97;
            v88 = v193;
            sub_1D5F58038(v95, v96, v100, v98);
          }

          else
          {
            v92 = *((v89 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
            v91 = *((v89 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
            if (v90 == 10)
            {
              v93 = swift_allocObject();
              *(v93 + 16) = v92;
              *(v93 + 24) = v91;
              v94 = v93 | 0x4000000000000000;
            }

            else
            {
              v101 = swift_allocObject();
              *(v101 + 16) = v92;
              *(v101 + 24) = v91;
              v94 = v101 | 0x8000000000000000;
            }

            v203 = v94;
            sub_1D5ECEF80(&v252, &v245);
            sub_1D5ECEF80(&v252, &v245);
          }

          v102 = v88 >> 60;
          if ((v88 >> 60) <= 8)
          {
            if ((v102 - 4) < 5 || v102 < 3)
            {
              goto LABEL_54;
            }

            v107 = *((v88 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
            v108 = *((v88 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
            v109 = v107 >> 60;
            if ((v107 >> 60) <= 8)
            {
              if ((v109 - 4) >= 5 && v109 >= 3)
              {
                v162 = v107 & 0xFFFFFFFFFFFFFFFLL;
                v163 = *(v162 + 16);
                v164 = *(v162 + 24);
                v165 = swift_allocObject();
                *&v245 = v163;
                *(&v245 + 1) = v164;

                sub_1D6E0CAE0(&v227);
                sub_1D6E0CAE0(&v218);

                v166 = v218;
                *(v165 + 16) = v227;
                *(v165 + 24) = v166;
                v185 = v165 | 0x3000000000000000;
              }

              else
              {

                swift_retain_n();
                v185 = v107;
              }
            }

            else
            {
              v110 = v107 & 0xFFFFFFFFFFFFFFFLL;
              if (v109 == 9)
              {
                v131 = *(v110 + 16);
                v182 = *(v110 + 24);
                v132 = *(v110 + 32);
                v133 = *(v110 + 40);
                v134 = swift_allocObject();
                *(v134 + 16) = v131;
                *(v134 + 24) = v182;
                *(v134 + 32) = v132;
                *(v134 + 40) = v133;
                v185 = v134 | 0x7000000000000000;

                sub_1D5F58038(v131, v182, v132, v133);
              }

              else
              {
                v112 = *(v110 + 16);
                v111 = *(v110 + 24);
                if (v109 == 10)
                {
                  v113 = swift_allocObject();
                  *(v113 + 16) = v112;
                  *(v113 + 24) = v111;
                  v114 = v113 | 0x4000000000000000;
                }

                else
                {
                  v138 = swift_allocObject();
                  *(v138 + 16) = v112;
                  *(v138 + 24) = v111;
                  v114 = v138 | 0x8000000000000000;
                }

                v185 = v114;
              }
            }

            v139 = v108 >> 60;
            if ((v108 >> 60) <= 8)
            {
              if ((v139 - 4) >= 5 && v139 >= 3)
              {
                v171 = *((v108 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
                v172 = *((v108 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
                v173 = swift_allocObject();
                *&v245 = v171;
                *(&v245 + 1) = v172;

                sub_1D6E0CAE0(&v227);
                sub_1D6E0CAE0(&v218);

                v174 = v218;
                *(v173 + 16) = v227;
                *(v173 + 24) = v174;

                v108 = v173 | 0x3000000000000000;
              }

              else
              {
              }
            }

            else
            {
              v140 = v108 & 0xFFFFFFFFFFFFFFFLL;
              if (v139 == 9)
              {
                v144 = *((v108 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
                v184 = *(v140 + 16);
                v145 = *(v140 + 32);
                v146 = *(v140 + 40);
                v147 = swift_allocObject();
                *(v147 + 16) = v184;
                *(v147 + 24) = v144;
                *(v147 + 32) = v145;
                *(v147 + 40) = v146;
                sub_1D5F58038(v184, v144, v145, v146);

                v108 = v147 | 0x7000000000000000;
              }

              else
              {
                v142 = *((v108 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
                v141 = *((v108 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
                if (v139 == 10)
                {
                  v143 = swift_allocObject();
                  *(v143 + 16) = v142;
                  *(v143 + 24) = v141;

                  v108 = v143 | 0x4000000000000000;
                }

                else
                {
                  v158 = swift_allocObject();
                  *(v158 + 16) = v142;
                  *(v158 + 24) = v141;

                  v108 = v158 | 0x8000000000000000;
                }
              }
            }

            v159 = swift_allocObject();
            *(v159 + 16) = v185;
            *(v159 + 24) = v108;

            v88 = v159 | 0x3000000000000000;
          }

          else
          {
            v103 = v88 & 0xFFFFFFFFFFFFFFFLL;
            if (v102 == 9)
            {
              v115 = *((v88 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
              v116 = *((v88 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
              v117 = *((v88 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
              v118 = *(v103 + 40);
              v119 = swift_allocObject();
              *(v119 + 16) = v115;
              *(v119 + 24) = v116;
              *(v119 + 32) = v117;
              *(v119 + 40) = v118;
              v120 = v117;
              v88 = v119 | 0x7000000000000000;
              sub_1D5F58038(v115, v116, v120, v118);
            }

            else
            {
              v105 = *((v88 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
              v104 = *((v88 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
              if (v102 == 10)
              {
                v106 = swift_allocObject();
                *(v106 + 16) = v105;
                *(v106 + 24) = v104;
                v88 = v106 | 0x4000000000000000;
              }

              else
              {
                v121 = swift_allocObject();
                *(v121 + 16) = v105;
                *(v121 + 24) = v104;
                v88 = v121 | 0x8000000000000000;
              }
            }

LABEL_54:
          }

          v122 = swift_allocObject();
          *(v122 + 16) = v203;
          *(v122 + 24) = v88;
          sub_1D5ECEFDC(&v252);
          sub_1D5ECEFDC(&v252);
          v22 = v122 | 0x3000000000000000;
          goto LABEL_25;
        }

        sub_1D5DEA32C(v261);
        *&v249[32] = v258;
        v250 = v259;
        v251 = v260;
        v247 = v254;
        v248 = v255;
        *v249 = v256;
        *&v249[16] = v257;
        v40 = v252;
        v39 = v253;
      }

      else
      {
        v28 = sub_1D5DEA32C(v261);
        sub_1D5F78F40(v28, &v218);
        v231 = v222;
        v232 = v223;
        v233 = v224;
        v234 = v225;
        v227 = v218;
        v228 = v219;
        v229 = v220;
        v230 = v221;
        if (sub_1D6011280(&v227) == 1)
        {
          v29 = sub_1D5D756C8(&v227);
          v30 = *v29;
          v31 = *(v29 + 8);
          v32 = *(v29 + 48);
          v33 = *(v29 + 56);
          v34 = *(v29 + 64);
          v35 = *(v29 + 104);
          v36 = *(v29 + 112);
          v37 = *(v29 + 120);
          v195 = *(v29 + 88);
          v199 = *(v29 + 72);
          v187 = *(v29 + 32);
          v191 = *(v29 + 16);
          sub_1D5ECEF80(&v252, &v245);

          v38 = sub_1D600A03C(v36);
          sub_1D5ECEFDC(&v252);
          LOBYTE(v245) = v32;
          LOBYTE(v236) = v35;
          *&v204 = v30;
          *(&v204 + 1) = v31;
          v205 = v191;
          v206 = v187;
          LOBYTE(v207) = v32;
          *(&v207 + 1) = v33;
          *v208 = v34;
          *&v208[24] = v195;
          *&v208[8] = v199;
          v208[40] = v35;
          *&v209 = v38;
          *(&v209 + 1) = v37;
          sub_1D5C326F0(&v204);
        }

        else
        {
          v58 = sub_1D5D756C8(&v227);
          v59 = *v58;
          v60 = *(v58 + 8);
          v61 = *(v58 + 48);
          v62 = *(v58 + 56);
          v197 = *(v58 + 32);
          v201 = *(v58 + 16);
          sub_1D5ECEF80(&v252, &v245);

          sub_1D5D615EC(v61, v62);
          v63 = sub_1D600A03C(v59);
          sub_1D5ECEFDC(&v252);
          *&v204 = v63;
          *(&v204 + 1) = v60;
          v205 = v201;
          v206 = v197;
          *&v207 = v61;
          *(&v207 + 1) = v62;
          sub_1D5C32704(&v204);
        }

        v214 = *v208;
        v215 = *&v208[16];
        v216 = *&v208[32];
        v217 = v209;
        v210 = v204;
        v211 = v205;
        v212 = v206;
        v213 = v207;
        nullsub_1();
        sub_1D5F78F40(&v210, &v236);
        sub_1D60112A8(&v236);
        *&v249[32] = v242;
        v250 = v243;
        v251 = v244;
        v247 = v238;
        v248 = v239;
        *v249 = v240;
        *&v249[16] = v241;
        v40 = v236;
        v39 = v237;
      }

LABEL_27:
      v245 = v40;
      v246 = v39;
      v263 = v2;
      v79 = *(v2 + 16);
      v78 = *(v2 + 24);
      if (v79 >= v78 >> 1)
      {
        sub_1D6997980((v78 > 1), v79 + 1, 1);
        v2 = v263;
      }

      *(v2 + 16) = v79 + 1;
      v80 = v2 + 136 * v79;
      *(v80 + 32) = v245;
      v81 = v246;
      v82 = v247;
      v83 = *v249;
      *(v80 + 80) = v248;
      *(v80 + 96) = v83;
      *(v80 + 48) = v81;
      *(v80 + 64) = v82;
      v84 = *&v249[16];
      v85 = *&v249[32];
      v86 = v250;
      *(v80 + 160) = v251;
      *(v80 + 128) = v85;
      *(v80 + 144) = v86;
      *(v80 + 112) = v84;
      v4 = (v4 + 136);
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t FormatGroupNodeStyle.deinit()
{

  sub_1D5ED348C(*(v0 + 72), *(v0 + 80), *(v0 + 88));
  sub_1D600ECE4(*(v0 + 96), *(v0 + 104), *(v0 + 112), *(v0 + 120), *(v0 + 128), *(v0 + 136), *(v0 + 144), *(v0 + 152), *(v0 + 160), *(v0 + 168), *(v0 + 176));
  v1 = *(v0 + 296);
  v2 = *(v0 + 328);
  v8[8] = *(v0 + 312);
  v8[9] = v2;
  v9 = *(v0 + 344);
  v3 = *(v0 + 264);
  v4 = *(v0 + 280);
  v8[4] = *(v0 + 248);
  v8[5] = v3;
  v5 = *(v0 + 232);
  v8[6] = v4;
  v8[7] = v1;
  v6 = *(v0 + 200);
  v8[0] = *(v0 + 184);
  v8[1] = v6;
  v8[2] = *(v0 + 216);
  v8[3] = v5;
  sub_1D6011068(v8, &qword_1EDF2D860, &type metadata for FormatVisualEffect);
  return v0;
}

double sub_1D600ECE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unsigned __int8 a11)
{
  if (a11 != 254)
  {
  }

  return result;
}

uint64_t FormatGroupNodeStyle.__deallocating_deinit()
{
  FormatGroupNodeStyle.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1D600ED58@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_1D66603D8(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t FormatGroupNodeStyle.Selector.selector.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t FormatGroupNodeStyle.Selector.cornerRadius.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  *a1 = v2;
  *(a1 + 8) = v3;
  v4 = *(v1 + 40);
  *(a1 + 16) = v4;
  return sub_1D5ED34B0(v2, v3, v4);
}

uint64_t FormatGroupNodeStyle.Selector.shadow.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 80);
  v4 = *(v1 + 112);
  v10 = *(v1 + 96);
  v3 = v10;
  v11 = v4;
  v12 = *(v1 + 128);
  v6 = *(v1 + 64);
  v9[0] = *(v1 + 48);
  v5 = v9[0];
  v9[1] = v6;
  v9[2] = v2;
  *(a1 + 80) = v12;
  *(a1 + 32) = v2;
  *(a1 + 48) = v3;
  *(a1 + 64) = v4;
  *a1 = v5;
  *(a1 + 16) = v6;
  return sub_1D60080F4(v9, v8, &qword_1EDF33718, &type metadata for FormatShadow);
}

uint64_t FormatGroupNodeStyle.Selector.visualEffect.getter@<X0>(uint64_t a1@<X8>)
{
  v18 = *(v1 + 312);
  v2 = *(v1 + 200);
  v3 = *(v1 + 232);
  v17[4] = *(v1 + 216);
  v17[5] = v3;
  v4 = *(v1 + 248);
  v5 = *(v1 + 168);
  v17[0] = *(v1 + 152);
  v17[1] = v5;
  v17[2] = *(v1 + 184);
  v17[3] = v2;
  v7 = *(v1 + 264);
  v6 = *(v1 + 280);
  v17[6] = v4;
  v17[7] = v7;
  v8 = *(v1 + 264);
  v9 = *(v1 + 280);
  v10 = *(v1 + 296);
  v17[8] = v6;
  v17[9] = v10;
  v11 = *(v1 + 296);
  *(a1 + 128) = v9;
  *(a1 + 144) = v11;
  *(a1 + 160) = *(v1 + 312);
  v12 = *(v1 + 200);
  v13 = *(v1 + 232);
  *(a1 + 64) = *(v1 + 216);
  *(a1 + 80) = v13;
  *(a1 + 96) = *(v1 + 248);
  *(a1 + 112) = v8;
  v14 = *(v1 + 168);
  *a1 = *(v1 + 152);
  *(a1 + 16) = v14;
  *(a1 + 32) = *(v1 + 184);
  *(a1 + 48) = v12;
  return sub_1D60080F4(v17, v16, &qword_1EDF2D860, &type metadata for FormatVisualEffect);
}

BOOL _s8NewsFeed20FormatGroupNodeStyleC8SelectorV2eeoiySbAE_AEtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  v8 = a1[3];
  v7 = a1[4];
  v9 = *(a1 + 40);
  v10 = *(a1 + 6);
  v114 = *(a1 + 5);
  v115 = v10;
  v116 = *(a1 + 7);
  v117 = *(a1 + 128);
  v11 = *(a1 + 4);
  v112 = *(a1 + 3);
  v113 = v11;
  v12 = a1[17];
  v52 = *(a1 + 144);
  v49 = *(a1 + 145);
  v128 = *(a1 + 156);
  v13 = *(a1 + 35);
  v14 = *(a1 + 33);
  v127 = *(a1 + 37);
  v126 = v13;
  v15 = *(a1 + 31);
  v125 = v14;
  v124 = v15;
  v16 = *(a1 + 27);
  v123 = *(a1 + 29);
  v122 = v16;
  v17 = *(a1 + 23);
  v121 = *(a1 + 25);
  v120 = v17;
  v18 = *(a1 + 19);
  v119 = *(a1 + 21);
  v118 = v18;
  v19 = *a2;
  v20 = a2[1];
  v22 = a2[2];
  v21 = a2[3];
  v23 = a2[4];
  v24 = *(a2 + 40);
  v25 = *(a2 + 6);
  v131 = *(a2 + 5);
  v132 = v25;
  v133 = *(a2 + 7);
  v134 = *(a2 + 128);
  v26 = *(a2 + 4);
  v129 = *(a2 + 3);
  v130 = v26;
  v27 = a2[17];
  v50 = *(a2 + 144);
  v51 = *(a2 + 145);
  v145 = *(a2 + 156);
  v28 = *(a2 + 35);
  v29 = *(a2 + 33);
  v144 = *(a2 + 37);
  v143 = v28;
  v30 = *(a2 + 31);
  v142 = v29;
  v141 = v30;
  v31 = *(a2 + 27);
  v140 = *(a2 + 29);
  v139 = v31;
  v32 = *(a2 + 23);
  v138 = *(a2 + 25);
  v137 = v32;
  v33 = *(a2 + 19);
  v136 = *(a2 + 21);
  v135 = v33;
  if ((v4 != v19 || v5 != v20) && (sub_1D72646CC() & 1) == 0)
  {
    return 0;
  }

  if (v6)
  {
    if (!v22)
    {
      return 0;
    }

    sub_1D633C9E8(v6, v22);
    v35 = v34;

    if ((v35 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v22)
  {
    return 0;
  }

  if (v9 > 0xFD)
  {
    sub_1D5ED34B0(v8, v7, v9);
    sub_1D5ED34B0(v21, v23, v24);
    if (v24 > 0xFD)
    {
      sub_1D5ED348C(v8, v7, v9);
      goto LABEL_16;
    }

    goto LABEL_14;
  }

  *&__src[0] = v8;
  *(&__src[0] + 1) = v7;
  LOBYTE(__src[1]) = v9;
  if (v24 > 0xFD)
  {
    sub_1D5ED34B0(v8, v7, v9);
    sub_1D5ED34B0(v21, v23, v24);
    sub_1D5ED34B0(v8, v7, v9);
    sub_1D5ED34A0(v8, v7, v9);
LABEL_14:
    sub_1D5ED348C(v8, v7, v9);
    sub_1D5ED348C(v21, v23, v24);
    return 0;
  }

  *&__dst[0] = v21;
  *(&__dst[0] + 1) = v23;
  LOBYTE(__dst[1]) = v24;
  sub_1D5ED34B0(v8, v7, v9);
  sub_1D5ED34B0(v21, v23, v24);
  sub_1D5ED34B0(v8, v7, v9);
  v36 = _s8NewsFeed18FormatCornerRadiusO2eeoiySbAC_ACtFZ_0(__src, __dst);
  sub_1D5ED34A0(*&__dst[0], *(&__dst[0] + 1), __dst[1]);
  sub_1D5ED34A0(*&__src[0], *(&__src[0] + 1), __src[1]);
  sub_1D5ED348C(v8, v7, v9);
  if ((v36 & 1) == 0)
  {
    return 0;
  }

LABEL_16:
  v57 = v114;
  v58 = v115;
  v59 = v116;
  v55 = v112;
  v56 = v113;
  *(&__dst[1] + 7) = v130;
  *(&__dst[2] + 7) = v131;
  *(&__dst[3] + 7) = v132;
  *(&__dst[4] + 7) = v133;
  v37 = v117;
  *(__dst + 7) = v129;
  v38 = v134;
  if (v117 == 254)
  {
    if (v134 == 254)
    {
      __src[2] = v114;
      __src[3] = v115;
      __src[4] = v116;
      __src[1] = v113;
      __src[0] = v112;
      LOBYTE(__src[5]) = -2;
      sub_1D60080F4(&v112, &v101, &qword_1EDF33718, &type metadata for FormatShadow);
      sub_1D60080F4(&v129, &v101, &qword_1EDF33718, &type metadata for FormatShadow);
      sub_1D6011068(__src, &qword_1EDF33718, &type metadata for FormatShadow);
      goto LABEL_27;
    }

    sub_1D60080F4(&v112, __src, &qword_1EDF33718, &type metadata for FormatShadow);
    sub_1D60080F4(&v129, __src, &qword_1EDF33718, &type metadata for FormatShadow);
LABEL_22:
    __src[2] = v57;
    __src[3] = v58;
    __src[4] = v59;
    __src[1] = v56;
    __src[0] = v55;
    *(&__src[7] + 1) = __dst[2];
    *(&__src[8] + 1) = __dst[3];
    *(&__src[9] + 1) = __dst[4];
    *(&__src[5] + 1) = __dst[0];
    LOBYTE(__src[5]) = v37;
    *&__src[10] = *(&__dst[4] + 15);
    *(&__src[6] + 1) = __dst[1];
    BYTE8(__src[10]) = v38;
    v39 = &qword_1EC8822D8;
    v40 = &qword_1EDF33718;
    v41 = &type metadata for FormatShadow;
    v42 = __src;
LABEL_23:
    sub_1D6011324(v42, v39, v40, v41);
    return 0;
  }

  __src[2] = v114;
  __src[3] = v115;
  __src[4] = v116;
  __src[1] = v113;
  __src[0] = v112;
  LOBYTE(__src[5]) = v117;
  v103 = v114;
  v104 = v115;
  v105 = v116;
  LOBYTE(v106) = v117;
  v101 = v112;
  v102 = v113;
  if (v134 == 254)
  {
    v91 = __src[2];
    v92 = __src[3];
    v93 = __src[4];
    LOBYTE(v94) = __src[5];
    v89 = __src[0];
    v90 = __src[1];
    sub_1D60080F4(&v112, &v77, &qword_1EDF33718, &type metadata for FormatShadow);
    sub_1D60080F4(&v129, &v77, &qword_1EDF33718, &type metadata for FormatShadow);
    sub_1D60080F4(__src, &v77, &qword_1EDF33718, &type metadata for FormatShadow);
    sub_1D601144C(&v89);
    goto LABEL_22;
  }

  v91 = v131;
  v92 = v132;
  v93 = v133;
  v90 = v130;
  v89 = v129;
  LOBYTE(v94) = v134;
  sub_1D60080F4(&v112, &v77, &qword_1EDF33718, &type metadata for FormatShadow);
  sub_1D60080F4(&v129, &v77, &qword_1EDF33718, &type metadata for FormatShadow);
  sub_1D60080F4(__src, &v77, &qword_1EDF33718, &type metadata for FormatShadow);
  v44 = _s8NewsFeed12FormatShadowV2eeoiySbAC_ACtFZ_0(&v101, &v89);
  v68 = v91;
  v69 = v92;
  v70 = v93;
  LOBYTE(v71) = v94;
  v66 = v89;
  v67 = v90;
  sub_1D601144C(&v66);
  v79 = v103;
  v80 = v104;
  v81 = v105;
  LOBYTE(v82) = v106;
  v77 = v101;
  v78 = v102;
  sub_1D601144C(&v77);
  v91 = v57;
  v92 = v58;
  v93 = v59;
  v90 = v56;
  v89 = v55;
  LOBYTE(v94) = v37;
  sub_1D6011068(&v89, &qword_1EDF33718, &type metadata for FormatShadow);
  if ((v44 & 1) == 0)
  {
    return 0;
  }

LABEL_27:
  if (v12)
  {
    if (!v27)
    {
      return 0;
    }

    sub_1D633A310(v12, v27);
    v46 = v45;

    if ((v46 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (v27)
    {
      return 0;
    }
  }

  if (v52 == 2)
  {
    v47 = v51;
    if (v50 != 2)
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    v47 = v51;
    if (v50 == 2 || ((v50 ^ v52) & 1) != 0)
    {
      return result;
    }
  }

  if (v49 == 2)
  {
    if (v47 != 2)
    {
      return 0;
    }

    goto LABEL_43;
  }

  result = 0;
  if (v47 != 2 && ((v47 ^ v49) & 1) == 0)
  {
LABEL_43:
    __src[8] = v126;
    __src[9] = v127;
    __src[4] = v122;
    __src[5] = v123;
    __src[7] = v125;
    __src[6] = v124;
    __src[0] = v118;
    __src[1] = v119;
    __src[3] = v121;
    __src[2] = v120;
    *(&__src[18] + 8) = v143;
    *(&__src[19] + 8) = v144;
    *(&__src[16] + 8) = v141;
    *(&__src[17] + 8) = v142;
    *(&__src[13] + 8) = v138;
    *(&__src[14] + 8) = v139;
    *(&__src[15] + 8) = v140;
    *(&__src[10] + 8) = v135;
    *(&__src[11] + 8) = v136;
    *(&__src[12] + 8) = v137;
    v109 = v126;
    v110 = v127;
    v105 = v122;
    v106 = v123;
    v108 = v125;
    v107 = v124;
    v101 = v118;
    v102 = v119;
    LOWORD(__src[10]) = v128;
    WORD4(__src[20]) = v145;
    v111 = v128;
    v104 = v121;
    v103 = v120;
    if (sub_1D60081E0(&v101) == 1)
    {
      __dst[8] = *(&__src[18] + 8);
      __dst[9] = *(&__src[19] + 8);
      LOWORD(__dst[10]) = WORD4(__src[20]);
      __dst[4] = *(&__src[14] + 8);
      __dst[5] = *(&__src[15] + 8);
      __dst[6] = *(&__src[16] + 8);
      __dst[7] = *(&__src[17] + 8);
      __dst[0] = *(&__src[10] + 8);
      __dst[1] = *(&__src[11] + 8);
      __dst[2] = *(&__src[12] + 8);
      __dst[3] = *(&__src[13] + 8);
      if (sub_1D60081E0(__dst) == 1)
      {
        v97 = __src[8];
        v98 = __src[9];
        v99 = __src[10];
        v93 = __src[4];
        v94 = __src[5];
        v96 = __src[7];
        v95 = __src[6];
        v89 = __src[0];
        v90 = __src[1];
        v92 = __src[3];
        v91 = __src[2];
        sub_1D60080F4(&v118, &v77, &qword_1EDF2D860, &type metadata for FormatVisualEffect);
        sub_1D60080F4(&v135, &v77, &qword_1EDF2D860, &type metadata for FormatVisualEffect);
        sub_1D6011068(&v89, &qword_1EDF2D860, &type metadata for FormatVisualEffect);
        return 1;
      }

      sub_1D60080F4(&v118, &v89, &qword_1EDF2D860, &type metadata for FormatVisualEffect);
      sub_1D60080F4(&v135, &v89, &qword_1EDF2D860, &type metadata for FormatVisualEffect);
    }

    else
    {
      v97 = __src[8];
      v98 = __src[9];
      v93 = __src[4];
      v94 = __src[5];
      v96 = __src[7];
      v95 = __src[6];
      v89 = __src[0];
      v90 = __src[1];
      v92 = __src[3];
      v91 = __src[2];
      v85 = __src[8];
      v86 = __src[9];
      v81 = __src[4];
      v82 = __src[5];
      v83 = __src[6];
      v84 = __src[7];
      v77 = __src[0];
      v78 = __src[1];
      v99 = __src[10];
      v87 = __src[10];
      v79 = __src[2];
      v80 = __src[3];
      __dst[8] = *(&__src[18] + 8);
      __dst[9] = *(&__src[19] + 8);
      LOWORD(__dst[10]) = WORD4(__src[20]);
      __dst[4] = *(&__src[14] + 8);
      __dst[5] = *(&__src[15] + 8);
      __dst[6] = *(&__src[16] + 8);
      __dst[7] = *(&__src[17] + 8);
      __dst[0] = *(&__src[10] + 8);
      __dst[1] = *(&__src[11] + 8);
      __dst[2] = *(&__src[12] + 8);
      __dst[3] = *(&__src[13] + 8);
      if (sub_1D60081E0(__dst) != 1)
      {
        v74 = *(&__src[18] + 8);
        v75 = *(&__src[19] + 8);
        v76 = WORD4(__src[20]);
        v70 = *(&__src[14] + 8);
        v71 = *(&__src[15] + 8);
        v72 = *(&__src[16] + 8);
        v73 = *(&__src[17] + 8);
        v66 = *(&__src[10] + 8);
        v67 = *(&__src[11] + 8);
        v68 = *(&__src[12] + 8);
        v69 = *(&__src[13] + 8);
        sub_1D60080F4(&v118, &v55, &qword_1EDF2D860, &type metadata for FormatVisualEffect);
        sub_1D60080F4(&v135, &v55, &qword_1EDF2D860, &type metadata for FormatVisualEffect);
        sub_1D60080F4(&v89, &v55, &qword_1EDF2D860, &type metadata for FormatVisualEffect);
        v48 = _s8NewsFeed18FormatVisualEffectO2eeoiySbAC_ACtFZ_0(&v77, &v66);
        v53[8] = v74;
        v53[9] = v75;
        v54 = v76;
        v53[4] = v70;
        v53[5] = v71;
        v53[6] = v72;
        v53[7] = v73;
        v53[0] = v66;
        v53[1] = v67;
        v53[2] = v68;
        v53[3] = v69;
        sub_1D60113F8(v53);
        v63 = v85;
        v64 = v86;
        v65 = v87;
        v59 = v81;
        v60 = v82;
        v61 = v83;
        v62 = v84;
        v55 = v77;
        v56 = v78;
        v57 = v79;
        v58 = v80;
        sub_1D60113F8(&v55);
        v74 = __src[8];
        v75 = __src[9];
        v76 = __src[10];
        v70 = __src[4];
        v71 = __src[5];
        v72 = __src[6];
        v73 = __src[7];
        v66 = __src[0];
        v67 = __src[1];
        v68 = __src[2];
        v69 = __src[3];
        sub_1D6011068(&v66, &qword_1EDF2D860, &type metadata for FormatVisualEffect);
        return v48;
      }

      v74 = __src[8];
      v75 = __src[9];
      v76 = __src[10];
      v70 = __src[4];
      v71 = __src[5];
      v72 = __src[6];
      v73 = __src[7];
      v66 = __src[0];
      v67 = __src[1];
      v68 = __src[2];
      v69 = __src[3];
      sub_1D60080F4(&v118, &v55, &qword_1EDF2D860, &type metadata for FormatVisualEffect);
      sub_1D60080F4(&v135, &v55, &qword_1EDF2D860, &type metadata for FormatVisualEffect);
      sub_1D60080F4(&v89, &v55, &qword_1EDF2D860, &type metadata for FormatVisualEffect);
      sub_1D60113F8(&v66);
    }

    memcpy(__dst, __src, 0x14AuLL);
    v39 = &unk_1EC8822E0;
    v40 = &qword_1EDF2D860;
    v41 = &type metadata for FormatVisualEffect;
    v42 = __dst;
    goto LABEL_23;
  }

  return result;
}

uint64_t sub_1D600FC00(uint64_t a1)
{
  result = sub_1D600FD38(&qword_1EC8822B8, &protocol conformance descriptor for FormatGroupNodeStyle);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D600FC44(uint64_t a1)
{
  *(a1 + 16) = sub_1D600FD38(&qword_1EDF2B240, &protocol conformance descriptor for FormatGroupNodeStyle);
  result = sub_1D600FD38(&qword_1EDF0F108, &protocol conformance descriptor for FormatGroupNodeStyle);
  *(a1 + 24) = result;
  return result;
}

uint64_t sub_1D600FCAC(void *a1)
{
  a1[1] = sub_1D600FD38(&qword_1EDF2B240, &protocol conformance descriptor for FormatGroupNodeStyle);
  a1[2] = sub_1D600FD38(&qword_1EDF0F108, &protocol conformance descriptor for FormatGroupNodeStyle);
  result = sub_1D600FD38(&qword_1EC8822C0, &protocol conformance descriptor for FormatGroupNodeStyle);
  a1[3] = result;
  return result;
}

uint64_t sub_1D600FD38(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for FormatGroupNodeStyle();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D600FD78(uint64_t a1)
{
  result = sub_1D600FDA0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D600FDA0()
{
  result = qword_1EC8822C8;
  if (!qword_1EC8822C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8822C8);
  }

  return result;
}

unint64_t sub_1D600FDF4(uint64_t a1)
{
  *(a1 + 8) = sub_1D600FE24();
  result = sub_1D600FE78();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1D600FE24()
{
  result = qword_1EDF2B248;
  if (!qword_1EDF2B248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2B248);
  }

  return result;
}

unint64_t sub_1D600FE78()
{
  result = qword_1EDF2B250;
  if (!qword_1EDF2B250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2B250);
  }

  return result;
}

unint64_t sub_1D600FECC(void *a1)
{
  a1[1] = sub_1D600FE24();
  a1[2] = sub_1D600FE78();
  result = sub_1D600FF04();
  a1[3] = result;
  return result;
}

unint64_t sub_1D600FF04()
{
  result = qword_1EC8822D0;
  if (!qword_1EC8822D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8822D0);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_8NewsFeed12FormatStringOSg(uint64_t a1)
{
  v1 = (*(a1 + 48) >> 9) & 0x1C | (*(a1 + 48) >> 14);
  v2 = v1 ^ 0x1F;
  v3 = 32 - v1;
  if (v2 >= 0x1D)
  {
    return 0;
  }

  else
  {
    return v3;
  }
}

uint64_t get_enum_tag_for_layout_string_8NewsFeed18FormatVisualEffectO(uint64_t a1)
{
  v1 = *(a1 + 136) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t get_enum_tag_for_layout_string_8NewsFeed18FormatVisualEffectOSg(uint64_t a1)
{
  v1 = *(a1 + 10);
  if (v1 > 0x80000000)
  {
    return -v1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D600FFFC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 314))
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

uint64_t sub_1D6010044(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
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
    *(result + 312) = 0;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 314) = 1;
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

    *(result + 314) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1D60100E8(uint64_t a1)
{
  if (!qword_1EDF05850)
  {
    sub_1D601014C();
    v1 = sub_1D7261E1C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDF05850);
    }
  }
}

unint64_t sub_1D601014C()
{
  result = qword_1EDF32428;
  if (!qword_1EDF32428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF32428);
  }

  return result;
}

void sub_1D6010208(uint64_t a1)
{
  if (!qword_1EDF0A940)
  {
    v2 = sub_1D6010264();
    v4 = type metadata accessor for FormatNodeStyleSelectorOrder(a1, &type metadata for FormatGroupNodeStyle.Selector, v2, v3);
    if (!v5)
    {
      atomic_store(v4, &qword_1EDF0A940);
    }
  }
}

unint64_t sub_1D6010264()
{
  result = qword_1EDF0F110;
  if (!qword_1EDF0F110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF0F110);
  }

  return result;
}

uint64_t sub_1D60102B8(uint64_t a1, const void *a2)
{
  memcpy(__dst, a2, 0x13AuLL);
  swift_beginAccess();
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  swift_beginAccess();
  *(v2 + 16) = v4;
  *(v2 + 24) = v5;
  v6 = *(a1 + 40);
  *(v2 + 32) = *(a1 + 32);
  *(v2 + 40) = v6;
  swift_beginAccess();
  v7 = *(a1 + 48);
  swift_beginAccess();
  *(v2 + 48) = v7;
  v8 = *(&__dst[8] + 1);
  if (!*(&__dst[8] + 1))
  {
  }

  *(v2 + 56) = v8;
  v9 = *&__dst[1];
  if (!*&__dst[1])
  {
  }

  *(v2 + 64) = v9;
  v10 = *(&__dst[1] + 1);
  v11 = *&__dst[2];
  v12 = BYTE8(__dst[2]);
  v13 = *(&__dst[1] + 1);
  v14 = *&__dst[2];
  v15 = BYTE8(__dst[2]);
  if (BYTE8(__dst[2]) >= 0xFEu)
  {
    v13 = *(a1 + 72);
    v14 = *(a1 + 80);
    v15 = *(a1 + 88);
    sub_1D5ED34B0(v13, v14, v15);
  }

  *(v2 + 72) = v13;
  *(v2 + 80) = v14;
  *(v2 + 88) = v15;
  if (LOBYTE(__dst[8]) == 254)
  {
    v16 = *(a1 + 144);
    v61 = *(a1 + 128);
    v62 = v16;
    v63 = *(a1 + 160);
    LOBYTE(v64) = *(a1 + 176);
    v17 = *(a1 + 112);
    v59 = *(a1 + 96);
    v60 = v17;
    sub_1D60080F4(&v59, &v50, &qword_1EDF33718, &type metadata for FormatShadow);
    v72 = v61;
    v73 = v62;
    v74 = v63;
    v75 = v64;
    v18 = v59;
    v19 = v60;
  }

  else
  {
    v72 = __dst[5];
    v73 = __dst[6];
    v74 = __dst[7];
    v75 = __dst[8];
    v18 = __dst[3];
    v19 = __dst[4];
  }

  v70 = v18;
  v71 = v19;
  v20 = v73;
  *(v2 + 128) = v72;
  *(v2 + 144) = v20;
  *(v2 + 160) = v74;
  *(v2 + 176) = v75;
  v21 = v71;
  *(v2 + 96) = v70;
  *(v2 + 112) = v21;
  v22 = __dst[9];
  if (LOBYTE(__dst[9]) == 2)
  {
    v22 = *(a1 + 177);
  }

  *(v2 + 177) = v22;
  v23 = BYTE1(__dst[9]);
  if (BYTE1(__dst[9]) == 2)
  {
    v23 = *(a1 + 178);
  }

  *(v2 + 178) = v23;

  sub_1D5ED34B0(v10, v11, v12);
  sub_1D60080F4(&__dst[3], &v59, &qword_1EDF33718, &type metadata for FormatShadow);
  sub_1D60080F4(&__dst[9] + 8, &v59, &qword_1EDF2D860, &type metadata for FormatVisualEffect);
  sub_1D60101D8(__dst);
  v67 = *(&__dst[17] + 8);
  v68 = *(&__dst[18] + 8);
  v69 = WORD4(__dst[19]);
  v63 = *(&__dst[13] + 8);
  v64 = *(&__dst[14] + 8);
  v65 = *(&__dst[15] + 8);
  v66 = *(&__dst[16] + 8);
  v59 = *(&__dst[9] + 8);
  v60 = *(&__dst[10] + 8);
  v61 = *(&__dst[11] + 8);
  v62 = *(&__dst[12] + 8);
  if (sub_1D60081E0(&v59) == 1)
  {
    v24 = *(a1 + 232);
    v25 = *(a1 + 248);
    v26 = *(a1 + 200);
    v39 = *(a1 + 184);
    v40 = v26;
    v41 = *(a1 + 216);
    v42 = v24;
    v27 = *(a1 + 296);
    v28 = *(a1 + 328);
    v47 = *(a1 + 312);
    v48 = v28;
    v29 = *(a1 + 264);
    v30 = *(a1 + 280);
    v43 = v25;
    v44 = v29;
    v49 = *(a1 + 344);
    v45 = v30;
    v46 = v27;
    sub_1D60080F4(&v39, &v50, &qword_1EDF2D860, &type metadata for FormatVisualEffect);
    v56 = v47;
    v57 = v48;
    v58 = v49;
    v52 = v43;
    v53 = v44;
    v54 = v45;
    v55 = v46;
    v50 = v39;
    v51 = v40;
    v32 = v41;
    v31 = v42;
  }

  else
  {
    v56 = *(&__dst[17] + 8);
    v57 = *(&__dst[18] + 8);
    v58 = WORD4(__dst[19]);
    v52 = *(&__dst[13] + 8);
    v53 = *(&__dst[14] + 8);
    v54 = *(&__dst[15] + 8);
    v55 = *(&__dst[16] + 8);
    v50 = *(&__dst[9] + 8);
    v51 = *(&__dst[10] + 8);
    v32 = *(&__dst[11] + 8);
    v31 = *(&__dst[12] + 8);
  }

  *(v2 + 232) = v31;
  v33 = v53;
  *(v2 + 248) = v52;
  v34 = v51;
  *(v2 + 184) = v50;
  *(v2 + 200) = v34;
  *(v2 + 216) = v32;
  v35 = v56;
  v36 = v57;
  v37 = v54;
  *(v2 + 296) = v55;
  *(v2 + 312) = v35;
  *(v2 + 328) = v36;
  *(v2 + 344) = v58;
  *(v2 + 264) = v33;
  *(v2 + 280) = v37;
  return v2;
}

void sub_1D6010694(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, unint64_t a18, uint64_t a19, uint64_t a20, unsigned __int16 a21)
{
  if (a18 >> 62 == 2)
  {

    sub_1D60107DC(a3, a4, a5, a6, a7, a8, a9);

    sub_1D5C84FF4(a11);

    sub_1D60107F0(a13, a14, a15);
    sub_1D60107F0(a16, a17, a18);

    sub_1D60107F0(a19, a20, a21);
  }
}

void sub_1D60107DC(uint64_t result, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if ((a7 >> 11) <= 0x1Eu)
  {
    sub_1D5E1DE98(result, a2, a3, a4, a5, a6, a7);
  }
}

uint64_t sub_1D60107F0(uint64_t result, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_1D5D2F2C4(result, a2, a3 & 1);
  }

  return result;
}

void *sub_1D6010808(__int128 *a1, uint64_t a2)
{
  v3 = a1[7];
  v92 = a1[6];
  v93 = v3;
  v94 = a1[8];
  v95 = *(a1 + 18);
  v4 = a1[3];
  v88 = a1[2];
  v89 = v4;
  v5 = a1[5];
  v90 = a1[4];
  v91 = v5;
  v6 = a1[1];
  v86 = *a1;
  v87 = v6;
  v7 = MEMORY[0x1E69E6F90];
  sub_1D5B560EC(0, &qword_1EC880AC0, sub_1D5E4F358, MEMORY[0x1E69E6F90]);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1D7274590;
  sub_1D5B560EC(0, &qword_1EC880490, sub_1D5EA74B8, v7);
  sub_1D5EA74B8(0);
  v10 = (*(*(v9 - 8) + 80) + 32) & ~*(*(v9 - 8) + 80);
  v56 = *(*(v9 - 8) + 72);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1D7273AE0;
  v12 = (v11 + v10);
  if (a2)
  {
    v13 = *(a2 + 40);
    v55 = *(a2 + 32);

    v14 = sub_1D6009CB8();
    v15 = swift_allocObject();
    *(v15 + 16) = v14;
    *(v15 + 64) = 0x5800000000000000;
    v16 = sub_1D601118C;
  }

  else
  {
    v16 = sub_1D70DD9D8;
    v15 = 0;
    v55 = 0;
    v13 = 0xE000000000000000;
  }

  v17 = type metadata accessor for FormatInspectionItem(0);
  v18 = (v12 + *(v17 + 24));
  *v18 = v16;
  v18[1] = v15;
  v19 = type metadata accessor for FormatInspectionItem.Value(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v19 - 8) + 56))(v18, 0, 1, v19);
  *(v11 + v10) = v55;
  v12[2] = 0;
  v12[3] = 0;
  v12[1] = v13;
  v20 = v12 + *(v17 + 28);
  *v20 = 0;
  *(v20 + 1) = 0;
  v20[16] = -1;
  v21 = *(*(v17 - 8) + 56);
  (v21)(v12, 0, 1, v17);
  sub_1D6795150(0x6C4320656C797453, 0xEB00000000737361, 0, 0, v11, v82);
  swift_setDeallocating();
  sub_1D60112C4(v12, sub_1D5EA74B8);
  swift_deallocClassInstance();
  *(v8 + 56) = &type metadata for FormatInspectionGroup;
  *(v8 + 64) = &off_1F518B2C0;
  v22 = swift_allocObject();
  *(v8 + 32) = v22;
  v23 = v82[1];
  *(v22 + 16) = v82[0];
  *(v22 + 32) = v23;
  *(v22 + 48) = v83;
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_1D7279960;
  v25 = v24 + v10;
  v26 = sub_1D711F844(1701869908, 0xE400000000000000, 0x70756F7247, 0xE500000000000000, (v24 + v10));
  v21(v24 + v10, 0, 1, v17, v26);
  if (a2)
  {
    v27 = *(a2 + 56);

    v28 = sub_1D711B070(0x6168706C41, 0xE500000000000000, v27, (v25 + v56));
    v21(v25 + v56, 0, 1, v17, v28);
    v29 = *(a2 + 177);
  }

  else
  {
    v30 = sub_1D711B070(0x6168706C41, 0xE500000000000000, 0, (v25 + v56));
    v21(v25 + v56, 0, 1, v17, v30);
    v29 = 2;
  }

  sub_1D711E9F0(0x426F547370696C43, 0xED000073646E756FLL, v29, (v25 + 2 * v56));
  (v21)(v25 + 2 * v56, 0, 1, v17);
  v31 = 3 * v56;
  if (a2)
  {
    sub_1D711E9F0(0xD00000000000001BLL, 0x80000001D73C5F00, *(a2 + 178), (v25 + v31));
    (v21)(v25 + v31, 0, 1, v17);
    v32 = *(a2 + 296);
    v33 = *(a2 + 328);
    v71 = *(a2 + 312);
    v72 = v33;
    v73 = *(a2 + 344);
    v34 = *(a2 + 264);
    v35 = *(a2 + 280);
    v67 = *(a2 + 248);
    v68 = v34;
    v36 = *(a2 + 232);
    v69 = v35;
    v70 = v32;
    v37 = *(a2 + 200);
    v63 = *(a2 + 184);
    v64 = v37;
    v65 = *(a2 + 216);
    v66 = v36;
    sub_1D60080F4(&v63, &v57, &qword_1EDF2D860, &type metadata for FormatVisualEffect);
    v80[8] = v71;
    v80[9] = v72;
    v81 = v73;
    v80[4] = v67;
    v80[5] = v68;
    v80[6] = v69;
    v80[7] = v70;
    v80[0] = v63;
    v80[1] = v64;
    v80[2] = v65;
    v80[3] = v66;
  }

  else
  {
    sub_1D711E9F0(0xD00000000000001BLL, 0x80000001D73C5F00, 2u, (v25 + v31));
    (v21)(v25 + v31, 0, 1, v17);
    sub_1D6011040(v80);
  }

  sub_1D7123244(0x45206C6175736956, 0xED00007463656666, v80, (v25 + 4 * v56));
  (v21)(v25 + 4 * v56, 0, 1, v17);
  sub_1D6795150(2003134806, 0xE400000000000000, 0, 0, v24, v84);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  *(v8 + 96) = &type metadata for FormatInspectionGroup;
  *(v8 + 104) = &off_1F518B2C0;
  v38 = swift_allocObject();
  *(v8 + 72) = v38;
  v39 = v84[1];
  *(v38 + 16) = v84[0];
  *(v38 + 32) = v39;
  *(v38 + 48) = v85;
  v69 = v92;
  v70 = v93;
  v71 = v94;
  *&v72 = v95;
  v65 = v88;
  v66 = v89;
  v67 = v90;
  v68 = v91;
  v63 = v86;
  v64 = v87;
  if (a2)
  {
    v40 = *(a2 + 72);
    v41 = *(a2 + 80);
    v42 = *(a2 + 88);
    sub_1D5ED34B0(v40, v41, v42);
  }

  else
  {
    v40 = 0;
    v41 = 0;
    v42 = -2;
  }

  *&v57 = v40;
  *(&v57 + 1) = v41;
  LOBYTE(v58) = v42;
  v43 = sub_1D6D9893C(&v63, &v57);
  sub_1D5ED348C(v57, *(&v57 + 1), v58);
  *(v8 + 136) = &type metadata for FormatInspection;
  *(v8 + 144) = &off_1F51E3FD0;
  *(v8 + 112) = v43;
  if (a2)
  {
    v44 = *(a2 + 144);
    v59 = *(a2 + 128);
    v60 = v44;
    v61 = *(a2 + 160);
    v62 = *(a2 + 176);
    v45 = *(a2 + 112);
    v57 = *(a2 + 96);
    v58 = v45;
    sub_1D60080F4(&v57, &v74, &qword_1EDF33718, &type metadata for FormatShadow);
    v46 = v57;
    v47 = v58;
    v48 = v59;
    v49 = v60;
    v50 = v61;
    v51 = v62;
  }

  else
  {
    v46 = 0uLL;
    v51 = -2;
    v47 = 0uLL;
    v48 = 0uLL;
    v49 = 0uLL;
    v50 = 0uLL;
  }

  v74 = v46;
  v75 = v47;
  v76 = v48;
  v77 = v49;
  v78 = v50;
  v79 = v51;
  v52 = sub_1D686F740(&v86, &v74);
  v59 = v76;
  v60 = v77;
  v61 = v78;
  v62 = v79;
  v57 = v74;
  v58 = v75;
  sub_1D6011068(&v57, &qword_1EDF33718, &type metadata for FormatShadow);
  *(v8 + 176) = &type metadata for FormatInspection;
  *(v8 + 184) = &off_1F51E3FD0;
  *(v8 + 152) = v52;
  v53 = sub_1D7073500(v8);
  swift_setDeallocating();
  sub_1D5E4F358(0);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  return v53;
}

double sub_1D6011040(uint64_t a1)
{
  result = 0.0;
  *a1 = xmmword_1D728D7B0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0;
  return result;
}

uint64_t sub_1D6011068(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  sub_1D5B49D58(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

double sub_1D60110D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7)
{
  v7 = a7 >> 59;
  if ((a7 >> 59) <= 0x11)
  {
    if (v7 > 0x11)
    {
      v7 = 0;
    }

    return ((&loc_1D60110F8 + funcs_1D6011100[v7]))(a1);
  }

  return result;
}

double sub_1D6011104(uint64_t a1)
{

  return result;
}

double sub_1D6011114(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a7;

  sub_1D5ED348C(a5, a6, v8);

  return result;
}

uint64_t objectdestroy_46Tm()
{

  return swift_deallocObject();
}

uint64_t sub_1D6011240(uint64_t result)
{
  v1 = *(result + 128);
  *(result + 104) &= 0x8000000000000001;
  *(result + 128) = v1 & 0xF | 0x80;
  return result;
}

uint64_t sub_1D6011260(uint64_t result)
{
  v1 = *(result + 128) & 0x8F | 0x20;
  *(result + 104) &= 0x8000000000000001;
  *(result + 128) = v1;
  return result;
}

uint64_t sub_1D601128C(uint64_t result)
{
  v1 = *(result + 128) & 0xF;
  *(result + 104) &= 0x8000000000000001;
  *(result + 128) = v1;
  return result;
}

uint64_t sub_1D60112A8(uint64_t result)
{
  v1 = *(result + 128) & 0x8F;
  *(result + 104) &= 0x8000000000000001;
  *(result + 128) = v1;
  return result;
}

uint64_t sub_1D60112C4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D6011324(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  sub_1D6011380(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

void sub_1D6011380(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (!*a2)
  {
    sub_1D5B49D58(255, a3, a4, MEMORY[0x1E69E6720]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v6)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t FormatContentSubgroupFilterLink.identifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t static FormatContentSubgroupFilterLink.== infix(_:_:)(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_1D72646CC();
  }
}

void sub_1D601151C(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265)
  {

    v6 = 0;
  }

  else
  {
    v5 = sub_1D72646CC();

    v6 = v5 ^ 1;
  }

  *a3 = v6 & 1;
}

uint64_t sub_1D60115AC(uint64_t a1)
{
  v2 = sub_1D6011770();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D60115E8(uint64_t a1)
{
  v2 = sub_1D6011770();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatContentSubgroupFilterLink.encode(to:)(void *a1)
{
  sub_1D6011948(0, &qword_1EDF02528, MEMORY[0x1E69E6F58]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v5);
  v7 = &v9 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6011770();
  sub_1D7264B5C();
  sub_1D72643FC();
  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_1D6011770()
{
  result = qword_1EDF09420;
  if (!qword_1EDF09420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF09420);
  }

  return result;
}

uint64_t FormatContentSubgroupFilterLink.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1D6011948(0, &qword_1EDF03918, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v15 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6011770();
  sub_1D7264B0C();
  if (!v2)
  {
    v11 = sub_1D72642BC();
    v13 = v12;
    (*(v7 + 8))(v10, v6);
    *a2 = v11;
    a2[1] = v13;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_1D6011948(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D6011770();
    v7 = a3(a1, &type metadata for FormatContentSubgroupFilterLink.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1D60119AC(void *a1)
{
  a1[1] = sub_1D60119E4();
  a1[2] = sub_1D6011A38();
  result = sub_1D6011A8C();
  a1[3] = result;
  return result;
}

unint64_t sub_1D60119E4()
{
  result = qword_1EDF09400;
  if (!qword_1EDF09400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF09400);
  }

  return result;
}

unint64_t sub_1D6011A38()
{
  result = qword_1EDF09408;
  if (!qword_1EDF09408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF09408);
  }

  return result;
}

unint64_t sub_1D6011A8C()
{
  result = qword_1EC8822E8;
  if (!qword_1EC8822E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8822E8);
  }

  return result;
}

uint64_t sub_1D6011AF8(void *a1)
{
  sub_1D6011948(0, &qword_1EDF02528, MEMORY[0x1E69E6F58]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v5);
  v7 = &v9 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6011770();
  sub_1D7264B5C();
  sub_1D72643FC();
  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_1D6011C68()
{
  result = qword_1EC8822F0;
  if (!qword_1EC8822F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8822F0);
  }

  return result;
}

unint64_t sub_1D6011CC0()
{
  result = qword_1EDF09410;
  if (!qword_1EDF09410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF09410);
  }

  return result;
}

unint64_t sub_1D6011D18()
{
  result = qword_1EDF09418;
  if (!qword_1EDF09418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF09418);
  }

  return result;
}

uint64_t sub_1D6011D6C(uint64_t a1, unint64_t a2)
{
  v45 = *MEMORY[0x1E69E9840];
  v39[0] = a1;
  v39[1] = a2;
  *&v42 = a1;
  *(&v42 + 1) = a2;
  sub_1D6013F48();

  if (swift_dynamicCast())
  {
    sub_1D5B63F14(__src, &v43);
    __swift_project_boxed_opaque_existential_1(&v43, v44);
    sub_1D7257EFC();
    __src[0] = v42;
    __swift_destroy_boxed_opaque_existential_1(&v43);
    goto LABEL_63;
  }

  v41 = 0;
  memset(__src, 0, sizeof(__src));
  sub_1D6013DD0(__src, &qword_1EC882308, sub_1D6013F48);
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_67;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
    *&__src[0] = a1;
    *(&__src[0] + 1) = a2 & 0xFFFFFFFFFFFFFFLL;
    v4 = __src;
  }

  else if ((a1 & 0x1000000000000000) != 0)
  {
    v4 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v4 = sub_1D7263E5C();
  }

  sub_1D6013760(&v43, v4, v5);
  v6 = *(&v43 + 1);
  v7 = v43;
  if (*(&v43 + 1) >> 60 != 15)
  {
    __src[0] = v43;
    goto LABEL_63;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v8 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v8 = a1 & 0xFFFFFFFFFFFFLL;
  }

LABEL_12:
  *&__src[0] = sub_1D6014064(v8);
  *(&__src[0] + 1) = v9;
  MEMORY[0x1EEE9AC00](*&__src[0], v9);
  v34[2] = v39;
  sub_1D6013828(sub_1D6014104, v34);
  v14 = v10;
  v15 = v11;
  v16 = v12;
  v17 = *(&__src[0] + 1) >> 62;
  if ((*(&__src[0] + 1) >> 62) > 1)
  {
    if (v17 == 2)
    {
      v19 = *(*&__src[0] + 16);
      v18 = *(*&__src[0] + 24);
      v20 = __OFSUB__(v18, v19);
      v21 = v18 - v19;
      if (v20)
      {
        goto LABEL_70;
      }

      if (v13 != v21)
      {
        goto LABEL_23;
      }
    }

    else if (v13)
    {
      v22 = 0;
      goto LABEL_60;
    }
  }

  else if (v17)
  {
    if (__OFSUB__(DWORD1(__src[0]), __src[0]))
    {
      goto LABEL_71;
    }

    if (v13 != DWORD1(__src[0]) - LODWORD(__src[0]))
    {
LABEL_23:
      if (v17 == 2)
      {
        v22 = *(*&__src[0] + 24);
      }

      else if (v17 == 1)
      {
        v22 = *&__src[0] >> 32;
      }

      else
      {
        v22 = BYTE14(__src[0]);
      }

LABEL_60:
      if (v22 >= v13)
      {
        sub_1D725861C();
LABEL_62:

        goto LABEL_63;
      }

      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
    }
  }

  else if (v13 != BYTE14(__src[0]))
  {
    goto LABEL_23;
  }

  v36 = v7;
  if ((v11 & 0x2000000000000000) != 0)
  {
    v23 = HIBYTE(v11) & 0xF;
  }

  else
  {
    v23 = v10 & 0xFFFFFFFFFFFFLL;
  }

  *(&v42 + 7) = 0;
  *&v42 = 0;
  if (4 * v23 == v12 >> 14)
  {
    goto LABEL_57;
  }

  v35 = v6;
  LOBYTE(v24) = 0;
  v25 = (v10 >> 59) & 1;
  if ((v11 & 0x1000000000000000) == 0)
  {
    LOBYTE(v25) = 1;
  }

  v26 = 4 << v25;
  v37 = (v11 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v38 = v11 & 0xFFFFFFFFFFFFFFLL;
  do
  {
    v27 = v16 & 0xC;
    v28 = v16;
    if (v27 == v26)
    {
      v28 = sub_1D6BA2080(v16, v14, v15);
    }

    v29 = v28 >> 16;
    if (v28 >> 16 >= v23)
    {
      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);
LABEL_67:
      v8 = sub_1D726229C();
      v7 = 0;
      v6 = 0xF000000000000000;
      goto LABEL_12;
    }

    if ((v15 & 0x1000000000000000) != 0)
    {
      v31 = sub_1D72622DC();
      if (v27 != v26)
      {
        goto LABEL_46;
      }
    }

    else if ((v15 & 0x2000000000000000) != 0)
    {
      *&v43 = v14;
      *(&v43 + 1) = v38;
      v31 = *(&v43 + v29);
      if (v27 != v26)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v30 = v37;
      if ((v14 & 0x1000000000000000) == 0)
      {
        v30 = sub_1D7263E5C();
      }

      v31 = *(v30 + v29);
      if (v27 != v26)
      {
LABEL_46:
        if ((v15 & 0x1000000000000000) == 0)
        {
          goto LABEL_47;
        }

        goto LABEL_50;
      }
    }

    v16 = sub_1D6BA2080(v16, v14, v15);
    if ((v15 & 0x1000000000000000) == 0)
    {
LABEL_47:
      v16 = (v16 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_52;
    }

LABEL_50:
    if (v23 <= v16 >> 16)
    {
      goto LABEL_66;
    }

    v16 = sub_1D72622AC();
LABEL_52:
    *(&v42 + v24) = v31;
    v24 = v24 + 1;
    if ((v24 >> 8))
    {
      goto LABEL_65;
    }

    if (v24 == 14)
    {
      *&v43 = v42;
      *(&v43 + 6) = *(&v42 + 6);
      sub_1D725862C();
      LOBYTE(v24) = 0;
    }
  }

  while (4 * v23 != v16 >> 14);
  v6 = v35;
  if (v24)
  {
    *&v43 = v42;
    *(&v43 + 6) = *(&v42 + 6);
    sub_1D725862C();
    sub_1D5B952E4(v36, v6);
    goto LABEL_62;
  }

LABEL_57:

  sub_1D5B952E4(v36, v6);
LABEL_63:
  v32 = __src[0];
  sub_1D5E3E824(*&__src[0], *(&__src[0] + 1));

  sub_1D5B952F8(v32, *(&v32 + 1));
  return v32;
}

uint64_t FormatFloat.encode(to:)(void *a1)
{
  v4 = type metadata accessor for FormatVersionRequirement(0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v16[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7264B3C();
  v9 = a1[3];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v9);
  if (qword_1EDF31EB0 != -1)
  {
    swift_once();
  }

  v11 = sub_1D725BD1C();
  v12 = __swift_project_value_buffer(v11, qword_1EDFFCD30);
  (*(*(v11 - 8) + 16))(v7, v12, v11);
  type metadata accessor for FormatVersionRequirement.Value(0);
  swift_storeEnumTagMultiPayload();
  sub_1D5D2BEC4(v7, sub_1D5B4AA6C, 0, v9, v10);
  v13 = sub_1D5D2CE68(v7, type metadata accessor for FormatVersionRequirement);
  if (!v2)
  {
    if (v8 >> 61)
    {
      v18 = v8;
      FormatFloat.description.getter(v13);
      __swift_mutable_project_boxed_opaque_existential_1(v16, v17);
      sub_1D726473C();
    }

    else
    {
      v18 = *(v8 + 16);
      __swift_mutable_project_boxed_opaque_existential_1(v16, v17);
      sub_1D5B578C4();
      sub_1D726476C();
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v16);
}

uint64_t FormatFloat.description.getter(uint64_t a1)
{
  v2 = *v1 >> 61;
  if (v2 <= 1)
  {
    if (!v2)
    {
      return sub_1D7262A9C();
    }

    v10 = 0x286C65786970;
    v9 = sub_1D7262A9C();
    MEMORY[0x1DA6F9910](v9);
    goto LABEL_11;
  }

  if (v2 == 2)
  {
    v3 = 0x2864656C616373;
    goto LABEL_8;
  }

  if (v2 != 3)
  {
    v7 = *((*v1 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    v8 = *((*v1 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
    v10 = 0x286E6F6974706FLL;

    MEMORY[0x1DA6F9910](v7, v8);
LABEL_11:

    MEMORY[0x1DA6F9910](41, 0xE100000000000000);
    return v10;
  }

  v3 = 0x6163736E5563616DLL;
LABEL_8:
  v10 = v3;

  v6 = FormatFloat.description.getter(v5);
  MEMORY[0x1DA6F9910](v6);

  MEMORY[0x1DA6F9910](41, 0xE100000000000000);

  return v10;
}

uint64_t static FormatFloat.== infix(_:_:)(unint64_t *a1, unint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1 >> 61;
  if (v4 <= 1)
  {
    if (v4)
    {
      if (v3 >> 61 != 1)
      {
        goto LABEL_23;
      }

      v5 = *((v2 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v3 &= 0x1FFFFFFFFFFFFFFFuLL;
    }

    else
    {
      if (v3 >> 61)
      {
        goto LABEL_23;
      }

      v5 = *(v2 + 16);
    }

    if (v5 == *(v3 + 16))
    {
LABEL_22:
      v7 = 1;
      return v7 & 1;
    }

LABEL_23:
    v7 = 0;
    return v7 & 1;
  }

  if (v4 == 2)
  {
    if (v3 >> 61 == 2)
    {
LABEL_10:
      v6 = *((v2 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v12 = *((v3 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v13 = v6;

      v7 = static FormatFloat.== infix(_:_:)(&v13, &v12);

      return v7 & 1;
    }

    goto LABEL_23;
  }

  if (v4 == 3)
  {
    if (v3 >> 61 != 3)
    {
      goto LABEL_23;
    }

    goto LABEL_10;
  }

  if (v3 >> 61 != 4)
  {
    goto LABEL_23;
  }

  v8 = v2 & 0x1FFFFFFFFFFFFFFFLL;
  v9 = v3 & 0x1FFFFFFFFFFFFFFFLL;
  if (*(v8 + 16) == *(v9 + 16) && *(v8 + 24) == *(v9 + 24))
  {
    goto LABEL_22;
  }

  return sub_1D72646CC();
}

uint64_t FormatFloat.optionIdentifiers.getter()
{
  if ((*v0 & 0x8000000000000000) == 0)
  {
    return 0;
  }

  v3 = *((*v0 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
  v2 = *((*v0 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
  sub_1D5C3C480();
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1D7273AE0;
  *(v4 + 32) = v3;
  *(v4 + 40) = v2;

  return v4;
}

uint64_t FormatFloat.init(value:)@<X0>(uint64_t *a1@<X8>, double a2@<D0>)
{
  result = swift_allocObject();
  *(result + 16) = a2;
  *a1 = result;
  return result;
}

void FormatFloat.value(contextLayoutOptions:)(uint64_t a1)
{
  sub_1D5D27D10(0, &qword_1EDF337F0, type metadata accessor for FormatOption);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v18 - v5;
  v7 = type metadata accessor for FormatOption(0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v1 >> 61;
  if (v13 > 1)
  {
    if (v13 == 2 || v13 == 3)
    {
      v19 = *((*v1 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);

      FormatFloat.value(contextLayoutOptions:)(a1);
    }

    else
    {
      v15 = *((*v1 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v14 = *((*v1 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
      v16 = v10;

      FormatOptionCollection.subscript.getter(v15, v14, v6);
      if ((*(v8 + 48))(v6, 1, v16) == 1)
      {
        sub_1D6013DD0(v6, &qword_1EDF337F0, type metadata accessor for FormatOption);
        type metadata accessor for FormatLayoutError(0);
        sub_1D5B572B8(&qword_1EDF2F560, type metadata accessor for FormatLayoutError, &unk_1D73A3BC0);
        swift_allocError();
        *v17 = v15;
        v17[1] = v14;
        swift_storeEnumTagMultiPayload();
        swift_willThrow();
      }

      else
      {

        sub_1D5D247E0(v6, v12);
        v19 = *(v12 + 2);

        sub_1D6012BB8(&v19, a1, v12);

        sub_1D5D2CE68(v12, type metadata accessor for FormatOption);
      }
    }
  }
}

double sub_1D6012BB8(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  v6 = *a1 >> 60;
  if (v6 <= 0xD)
  {
    if (((1 << v6) & 0x3EE0) != 0)
    {
LABEL_10:
      type metadata accessor for FormatLayoutError(0);
      sub_1D5B572B8(&qword_1EDF2F560, type metadata accessor for FormatLayoutError, &unk_1D73A3BC0);
      swift_allocError();
      sub_1D5D2477C(a3, v16);
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      return v3;
    }

    if (v6 == 4)
    {
      v7 = v5 & 0xFFFFFFFFFFFFFFFLL;
      v8 = *(v7 + 16);
      v9 = *(v7 + 24);
      if (*(v9 + 16))
      {
        v11 = *(*(a2 + 40) + 16);
        swift_beginAccess();
        if (*(*(v11 + 16) + 16))
        {
          v27 = *(a2 + 56);

          sub_1D6F622E0(v12);
          sub_1D5B886D0(v13);
          v14 = v27;
        }

        else
        {

          v14 = sub_1D6E46E28();
        }

        v8 = sub_1D5FA1B60(v14, v8, v9);
      }

      return v8;
    }

    if (v6 == 8)
    {
      v26[0] = *((v5 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
      swift_retain_n();

      v3 = sub_1D6012BB8(v26, a2, a3);

      return v3;
    }
  }

  if (v6 < 3)
  {
    goto LABEL_10;
  }

  v18 = v5 & 0xFFFFFFFFFFFFFFFLL;
  v3 = *(v18 + 16);
  v19 = *(v18 + 24);
  if (*(v19 + 16))
  {
    v21 = *(*(a2 + 40) + 16);
    swift_beginAccess();
    if (*(*(v21 + 16) + 16))
    {
      v27 = *(a2 + 56);

      sub_1D6F622E0(v22);
      sub_1D5B886D0(v23);
      v24 = v27;
    }

    else
    {

      v24 = sub_1D6E46E28();
    }

    sub_1D5FA1CE4(v24, v19);
    v3 = v25;
  }

  return v3;
}

uint64_t sub_1D6012E70()
{
  if ((*v0 & 0x8000000000000000) == 0)
  {
    return 0;
  }

  v3 = *((*v0 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
  v2 = *((*v0 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
  sub_1D5C3C480();
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1D7273AE0;
  *(v4 + 32) = v3;
  *(v4 + 40) = v2;

  return v4;
}

uint64_t sub_1D6012EE0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = swift_allocObject();
  *(result + 16) = v3;
  *a2 = result;
  return result;
}

void sub_1D6012F28(uint64_t a1@<X0>, void *a2@<X8>)
{
  FormatFloat.value(contextLayoutOptions:)(a1);
  if (!v2)
  {
    *a2 = v4;
  }
}

double sub_1D6012F58()
{
  v1 = *v0 >> 61;
  if (v1 <= 2)
  {
    if (v1 < 2)
    {
      return result;
    }

    return sub_1D6012F58();
  }

  if (v1 == 3)
  {
    return sub_1D6012F58();
  }

  v4 = *((*v0 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
  v3 = *((*v0 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);

  v5 = sub_1D5E26E28(&unk_1F50F4560);
  v6 = swift_allocObject();
  *(v6 + 16) = v4;
  *(v6 + 24) = v3;
  *(v6 + 32) = v5;
  *(v6 + 40) = 0;
  sub_1D6C4D24C(v6 | 0x3000000000000000);

  return result;
}

void FormatFloat.bind(binder:context:)(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for FormatOption(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = (&v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D5D27D10(0, &qword_1EDF337F0, type metadata accessor for FormatOption);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v36 - v16;
  v18 = *v2;
  v19 = *v2 >> 61;
  if (v19 > 2)
  {
    v20 = v18 & 0x1FFFFFFFFFFFFFFFLL;
    if (v19 != 3)
    {
      v38 = v6;
      v22 = *(v20 + 16);
      v21 = *(v20 + 24);

      v39 = sub_1D5E26E28(&unk_1F50F65A8);
      v40 = v21;
      v37 = v22;
      v23 = v22;
      v24 = v38;
      FormatOptionCollection.subscript.getter(v23, v21, v13);
      if ((*(v24 + 48))(v13, 1, v5) == 1)
      {

        sub_1D6013DD0(v13, &qword_1EDF337F0, type metadata accessor for FormatOption);
        if ((*(a2 + 48) & 1) == 0)
        {
          type metadata accessor for FormatLayoutError(0);
          sub_1D5B572B8(&qword_1EDF2F560, type metadata accessor for FormatLayoutError, &unk_1D73A3BC0);
          swift_allocError();
          v28 = v40;
          *v29 = v37;
          v29[1] = v28;
          swift_storeEnumTagMultiPayload();
          swift_willThrow();
          return;
        }

        v25 = 1;
      }

      else
      {
        sub_1D5D247E0(v13, v9);
        v42 = v9[2];
        v26 = v39;

        FormatOptionValue.type.getter(v27, &v41);
        if ((sub_1D6183C84(v41, v26) & 1) == 0)
        {
          type metadata accessor for FormatDerivedDataError(0);
          sub_1D5B572B8(&qword_1EC892A70, type metadata accessor for FormatDerivedDataError, &unk_1D7331324);
          swift_allocError();
          v31 = v30;
          v33 = *v9;
          v32 = v9[1];
          v42 = v9[2];

          FormatOptionValue.type.getter(v34, &v41);
          v35 = v41;
          *v31 = v33;
          *(v31 + 8) = v32;
          *(v31 + 16) = v35;
          *(v31 + 24) = v26;
          swift_storeEnumTagMultiPayload();
          swift_willThrow();

          sub_1D5D2CE68(v9, type metadata accessor for FormatOption);
          return;
        }

        swift_bridgeObjectRelease_n();
        sub_1D5D247E0(v9, v17);
        v25 = 0;
      }

      (*(v24 + 56))(v17, v25, 1, v5);
      sub_1D6013DD0(v17, &qword_1EDF337F0, type metadata accessor for FormatOption);
      return;
    }
  }

  else
  {
    if (v19 < 2)
    {
      return;
    }

    v20 = v18 & 0x1FFFFFFFFFFFFFFFLL;
  }

  v42 = *(v20 + 16);

  FormatFloat.bind(binder:context:)(a1, a2);
}

void sub_1D6013498()
{
  v1 = *v0 >> 61;
  if (v1 > 1)
  {
    if (v1 != 2)
    {
      if (v1 == 3)
      {
        type metadata accessor for FormatLayoutError(0);
        sub_1D5B572B8(&qword_1EDF2F560, type metadata accessor for FormatLayoutError, &unk_1D73A3BC0);
        swift_allocError();
        *v2 = 0xD000000000000011;
        v2[1] = 0x80000001D73C5F20;
      }

      else
      {
        v7 = *((*v0 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
        v6 = *((*v0 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
        type metadata accessor for FormatLayoutError(0);
        sub_1D5B572B8(&qword_1EDF2F560, type metadata accessor for FormatLayoutError, &unk_1D73A3BC0);
        swift_allocError();
        v9 = v8;

        sub_1D7263D4C();

        strcpy(v11, "Float option: ");
        HIBYTE(v11[1]) = -18;
        MEMORY[0x1DA6F9910](v7, v6);

        v10 = v11[1];
        *v9 = v11[0];
        v9[1] = v10;
      }

      goto LABEL_11;
    }

    type metadata accessor for FormatLayoutError(0);
    sub_1D5B572B8(&qword_1EDF2F560, type metadata accessor for FormatLayoutError, &unk_1D73A3BC0);
    swift_allocError();
    v4 = 0x63732074616F6C46;
    v5 = 0xEC00000064656C61;
LABEL_10:
    *v3 = v4;
    v3[1] = v5;
LABEL_11:
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    return;
  }

  if (v1)
  {
    type metadata accessor for FormatLayoutError(0);
    sub_1D5B572B8(&qword_1EDF2F560, type metadata accessor for FormatLayoutError, &unk_1D73A3BC0);
    swift_allocError();
    v4 = 0x69702074616F6C46;
    v5 = 0xEB000000006C6578;
    goto LABEL_10;
  }
}

uint64_t *sub_1D6013760@<X0>(uint64_t *__return_ptr a1@<X8>, _BYTE *__src@<X0>, unint64_t a3@<X1>)
{
  result = 0;
  v6 = 0xC000000000000000;
  if (__src && a3)
  {
    if (a3 <= 14)
    {
      result = sub_1D6013FAC(__src, &__src[a3]);
      v6 = v9 & 0xFFFFFFFFFFFFFFLL;
    }

    else
    {
      sub_1D7257CFC();
      swift_allocObject();
      v8 = sub_1D7257C9C();
      if (a3 >= 0x7FFFFFFF)
      {
        sub_1D725860C();
        result = swift_allocObject();
        result[2] = 0;
        result[3] = a3;
        v6 = v8 | 0x8000000000000000;
      }

      else
      {
        result = (a3 << 32);
        v6 = v8 | 0x4000000000000000;
      }
    }
  }

  *a1 = result;
  a1[1] = v6;
  return result;
}

void sub_1D6013828(void *(*a1)(uint64_t *__return_ptr, char *, char *), uint64_t a2)
{
  v4 = v2;
  v17[2] = *MEMORY[0x1E69E9840];
  v7 = *v2;
  v6 = v2[1];
  v8 = v6 >> 62;
  if ((v6 >> 62) > 1)
  {
    if (v8 != 2)
    {
      memset(v17, 0, 15);
      a1(&v15, v17, v17);
      return;
    }

    sub_1D5B952F8(v7, v6);
    v15 = v7;
    v16 = v6 & 0x3FFFFFFFFFFFFFFFLL;
    *v4 = xmmword_1D728EF50;
    sub_1D5B952F8(0, 0xC000000000000000);
    sub_1D72585CC();
    sub_1D6013CCC(*(v15 + 16), *(v15 + 24), a1);
    v10 = v16 | 0x8000000000000000;
    if (!v3)
    {
      *v4 = v15;
      v4[1] = v10;
      return;
    }

    *v4 = v15;
    goto LABEL_18;
  }

  if (!v8)
  {
    sub_1D5B952F8(v7, v6);
    v17[0] = v7;
    LOWORD(v17[1]) = v6;
    BYTE2(v17[1]) = BYTE2(v6);
    BYTE3(v17[1]) = BYTE3(v6);
    BYTE4(v17[1]) = BYTE4(v6);
    BYTE5(v17[1]) = BYTE5(v6);
    BYTE6(v17[1]) = BYTE6(v6);
    a1(&v15, v17, v17 + BYTE6(v6));
    v9 = LODWORD(v17[1]) | ((WORD2(v17[1]) | (BYTE6(v17[1]) << 16)) << 32);
    *v4 = v17[0];
    v4[1] = v9;
    return;
  }

  v11 = v6 & 0x3FFFFFFFFFFFFFFFLL;

  sub_1D5B952F8(v7, v6);
  *v4 = xmmword_1D728EF50;
  sub_1D5B952F8(0, 0xC000000000000000);
  v12 = v7 >> 32;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    if (v12 < v7)
    {
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    if (sub_1D7257CAC() && __OFSUB__(v7, sub_1D7257CDC()))
    {
LABEL_22:
      __break(1u);
    }

    sub_1D7257CFC();
    swift_allocObject();
    v13 = sub_1D7257C8C();

    v11 = v13;
  }

  if (v12 < v7)
  {
    __break(1u);
    goto LABEL_21;
  }

  sub_1D6013CCC(v7, v7 >> 32, a1);

  v10 = v11 | 0x4000000000000000;
  if (v3)
  {
    *v4 = v7;
LABEL_18:
    v4[1] = v10;
    return;
  }

  *v4 = v7;
  v4[1] = v10;
}

_BYTE *sub_1D6013BCC@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v3 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    *a3 = result;
    a3[1] = 0xC000000000000000;
    return result;
  }

  if (v3 <= 14)
  {
    result = sub_1D6013FAC(result, a2);
    v8 = a3;
    v6 = v9 & 0xFFFFFFFFFFFFFFLL;
  }

  else
  {
    if (v3 >= 0x7FFFFFFF)
    {
      result = sub_1D601416C(result, a2);
      v6 = v10 | 0x8000000000000000;
    }

    else
    {
      result = sub_1D60141E8(result, a2);
      v6 = v5 | 0x4000000000000000;
    }

    v8 = a3;
  }

  *v8 = result;
  v8[1] = v6;
  return result;
}

void *sub_1D6013C60(void *(*a1)(uint64_t *__return_ptr, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    result = a1(&v6, a3, a4 - a3);
    if (!v4)
    {
      return v6;
    }
  }

  else
  {
    result = (a1)(&v6, 0, 0, 0, a4);
    if (!v4)
    {
      return v6;
    }
  }

  __break(1u);
  return result;
}

char *sub_1D6013CCC(uint64_t a1, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, char *, char *))
{
  result = sub_1D7257CAC();
  if (!result)
  {
    goto LABEL_12;
  }

  v8 = result;
  result = sub_1D7257CDC();
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

  v12 = sub_1D7257CCC();
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