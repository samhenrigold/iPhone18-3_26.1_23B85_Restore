void sub_1D5FF53C4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1D600745C(0);
  v4 = sub_1D7263CBC();
  v5 = v4;
  if (*(v3 + 16))
  {
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
    v12 = v4 + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      sub_1D7264A0C();
      MEMORY[0x1DA6FC0B0](v17);
      v18 = sub_1D7264A5C();
      v19 = -1 << *(v5 + 32);
      v20 = v18 & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
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

LABEL_30:
        __break(1u);
        return;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 8 * v13) = v17;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v26 = 1 << *(v3 + 32);
    if (v26 >= 64)
    {
      bzero((v3 + 56), ((v26 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v26;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
}

void sub_1D5FF5608(uint64_t a1)
{
  v2 = v1;
  v38 = sub_1D726098C();
  v3 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38, v4);
  v37 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  sub_1D5E2A4AC(0);
  v7 = sub_1D7263CBC();
  v8 = v7;
  if (*(v6 + 16))
  {
    v32 = v1;
    v33 = v6;
    v9 = 0;
    v10 = (v6 + 56);
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
    v36 = v3 + 32;
    v15 = v7 + 56;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v6 + 48) + *(v3 + 72) * (v17 | (v9 << 6));
      v21 = *(v3 + 32);
      v34 = *(v3 + 72);
      v35 = v21;
      v21(v37, v20, v38);
      sub_1D5D51EB4(&unk_1EDF168A8, 255, MEMORY[0x1E69B4188], MEMORY[0x1E69B4190]);
      v22 = sub_1D7261E7C();
      v23 = -1 << *(v8 + 32);
      v24 = v22 & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v15 + 8 * (v24 >> 6))) == 0)
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
          v29 = *(v15 + 8 * v25);
          if (v29 != -1)
          {
            v16 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v16 = __clz(__rbit64((-1 << v24) & ~*(v15 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v35(*(v8 + 48) + v16 * v34, v37, v38);
      ++*(v8 + 16);
      v6 = v33;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    v30 = 1 << *(v6 + 32);
    if (v30 >= 64)
    {
      bzero(v10, ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v30;
    }

    v2 = v32;
    *(v6 + 16) = 0;
  }

  *v2 = v8;
}

void sub_1D5FF595C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1D6007D30(0, &qword_1EC882240, sub_1D600759C, &type metadata for DebugFormatInventoryPackageRole);
  v4 = sub_1D7263CBC();
  v5 = v4;
  if (*(v3 + 16))
  {
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
    v12 = v4 + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + (v14 | (v6 << 6)));
      sub_1D7264A0C();
      sub_1D72621EC();

      v18 = sub_1D7264A5C();
      v19 = -1 << *(v5 + 32);
      v20 = v18 & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
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

LABEL_30:
        __break(1u);
        return;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + v13) = v17;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v26 = 1 << *(v3 + 32);
    if (v26 >= 64)
    {
      bzero((v3 + 56), ((v26 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v26;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
}

void sub_1D5FF5C70(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1D6007D30(0, &qword_1EC882280, sub_1D6007964, &type metadata for FormatSourceMap);
  v4 = sub_1D7263CBC();
  v5 = v4;
  if (*(v3 + 16))
  {
    v32 = v1;
    v33 = v3;
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

LABEL_30:
        __break(1u);
        return;
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
      v3 = v33;
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
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

    v31 = 1 << *(v3 + 32);
    if (v31 >= 64)
    {
      bzero(v7, ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v31;
    }

    v2 = v32;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
}

void sub_1D5FF5F14(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1D6007D30(0, &qword_1EDF04310, sub_1D6007C88, &type metadata for LoadedFont);
  v4 = sub_1D7263CBC();
  v5 = v4;
  if (*(v3 + 16))
  {
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
    v12 = v4 + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 16 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      sub_1D7264A0C();
      v21 = sub_1D726372C();
      MEMORY[0x1DA6FC0B0](v21);
      v22 = sub_1D7264A5C();
      v23 = -1 << *(v5 + 32);
      v24 = v22 & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v12 + 8 * (v24 >> 6))) == 0)
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
          v29 = *(v12 + 8 * v25);
          if (v29 != -1)
          {
            v13 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v13 = __clz(__rbit64((-1 << v24) & ~*(v12 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v5 + 16);
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
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

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      bzero((v3 + 56), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v30;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
}

void sub_1D5FF61B0(uint64_t a1, unint64_t *a2, unint64_t *a3, void *a4, unint64_t *a5)
{
  v6 = v5;
  v7 = *v5;
  sub_1D60075F0(0, a2, a3, a4, a5);
  v8 = sub_1D7263CBC();
  v9 = v8;
  if (*(v7 + 16))
  {
    v10 = 0;
    v11 = (v7 + 56);
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
    v16 = v8 + 56;
    while (v14)
    {
      v18 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v21 = *(*(v7 + 48) + 8 * (v18 | (v10 << 6)));
      v22 = sub_1D72636FC();
      v23 = -1 << *(v9 + 32);
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

LABEL_30:
        __break(1u);
        return;
      }

      v17 = __clz(__rbit64((-1 << v24) & ~*(v16 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      *(*(v9 + 48) + 8 * v17) = v21;
      ++*(v9 + 16);
    }

    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v10 >= v15)
      {
        break;
      }

      v20 = v11[v10];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v14 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    v30 = 1 << *(v7 + 32);
    if (v30 >= 64)
    {
      bzero((v7 + 56), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v30;
    }

    *(v7 + 16) = 0;
  }

  *v6 = v9;
}

void sub_1D5FF63CC(uint64_t a1)
{
  v2 = v1;
  v38 = sub_1D7258DBC();
  v3 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38, v4);
  v37 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  sub_1D6007A94(0);
  v7 = sub_1D7263CBC();
  v8 = v7;
  if (*(v6 + 16))
  {
    v32 = v1;
    v33 = v6;
    v9 = 0;
    v10 = (v6 + 56);
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
    v36 = v3 + 32;
    v15 = v7 + 56;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v6 + 48) + *(v3 + 72) * (v17 | (v9 << 6));
      v21 = *(v3 + 32);
      v34 = *(v3 + 72);
      v35 = v21;
      v21(v37, v20, v38);
      sub_1D5D51EB4(&qword_1EDF18A30, 255, MEMORY[0x1E6969C28], MEMORY[0x1E6969C38]);
      v22 = sub_1D7261E7C();
      v23 = -1 << *(v8 + 32);
      v24 = v22 & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v15 + 8 * (v24 >> 6))) == 0)
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
          v29 = *(v15 + 8 * v25);
          if (v29 != -1)
          {
            v16 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v16 = __clz(__rbit64((-1 << v24) & ~*(v15 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v35(*(v8 + 48) + v16 * v34, v37, v38);
      ++*(v8 + 16);
      v6 = v33;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    v30 = 1 << *(v6 + 32);
    if (v30 >= 64)
    {
      bzero(v10, ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v30;
    }

    v2 = v32;
    *(v6 + 16) = 0;
  }

  *v2 = v8;
}

void sub_1D5FF6720(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1D6007D30(0, &qword_1EC87FAE8, sub_1D5E2A08C, &type metadata for DebugFormatPackageTreeSection);
  v4 = sub_1D7263CBC();
  v5 = v4;
  if (*(v3 + 16))
  {
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
    v12 = v4 + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = *(v3 + 48) + 16 * (v15 | (v6 << 6));
      v19 = *v18;
      v20 = *(v18 + 8);
      sub_1D7264A0C();
      if (v20)
      {
        v21 = qword_1D728D788[v19];
      }

      else
      {
        MEMORY[0x1DA6FC0B0](2);
        v21 = v19;
      }

      MEMORY[0x1DA6FC0B0](v21);
      v22 = sub_1D7264A5C();
      v23 = -1 << *(v5 + 32);
      v24 = v22 & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v12 + 8 * (v24 >> 6))) == 0)
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
          v29 = *(v12 + 8 * v25);
          if (v29 != -1)
          {
            v13 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return;
      }

      v13 = __clz(__rbit64((-1 << v24) & ~*(v12 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = *(v5 + 48) + 16 * v13;
      *v14 = v19;
      *(v14 + 8) = v20;
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

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      bzero((v3 + 56), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v30;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
}

unint64_t sub_1D5FF69BC(unint64_t a1, uint64_t a2)
{
  sub_1D7264A0C();
  if ((a1 >> 62) - 1 >= 2)
  {
    sub_1D7264A2C();
  }

  else
  {

    sub_1D7264A2C();
    sub_1D72621EC();
  }

  sub_1D7264A5C();
  result = sub_1D7263B9C();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

uint64_t sub_1D5FF6AB4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GenericDataVisualization(0);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for WebEmbedDataVisualization(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = (&v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D7264A0C();
  sub_1D5BE7354(a1, v12, type metadata accessor for WebEmbedDataVisualization);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1D5BE7424(v12, v7, type metadata accessor for GenericDataVisualization);
    sub_1D72621EC();
    sub_1D5BF1AEC(v7, type metadata accessor for GenericDataVisualization);
  }

  else
  {
    v15 = *v12;
    SportsDataVisualization.identifier.getter();
    sub_1D72621EC();
  }

  sub_1D7264A5C();
  v13 = sub_1D7263B9C();
  *(a2 + 56 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
  result = sub_1D5BE7424(a1, *(a2 + 48) + *(v9 + 72) * v13, type metadata accessor for WebEmbedDataVisualization);
  ++*(a2 + 16);
  return result;
}

uint64_t sub_1D5FF6CE8(uint64_t a1, uint64_t a2)
{
  v26 = type metadata accessor for FormatVersionRequirement(0);
  v4 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26, v5);
  v7 = &v27[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D60077D8(0);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v11 = &v27[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v27[-1] - v14;
  v16 = type metadata accessor for FormatDerivedDataOptionReferenceResolution(0);
  MEMORY[0x1EEE9AC00](v16 - 8, v17);
  v19 = &v27[-1] - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7264A0C();
  sub_1D6907920(v27, *a1);
  v20 = *(a1 + 24);
  v21 = *(a1 + 32);
  sub_1D72621EC();
  sub_1D6C37A40(v27, v20);
  MEMORY[0x1DA6FC0B0](v21);
  MEMORY[0x1DA6FC0B0](*(a1 + 56));
  sub_1D72621EC();
  v22 = type metadata accessor for FormatDerivedDataResultOptionReference(0);
  sub_1D5BE7354(a1 + *(v22 + 28), v19, type metadata accessor for FormatDerivedDataOptionReferenceResolution);
  sub_1D5EA24BC();
  if ((*(*(v23 - 8) + 48))(v19, 1, v23) == 1)
  {
    sub_1D7264A2C();
  }

  else
  {
    sub_1D5BE7424(v19, v15, sub_1D60077D8);
    sub_1D7264A2C();
    sub_1D5BE7354(v15, v11, sub_1D60077D8);
    if ((*(v4 + 48))(v11, 1, v26) == 1)
    {
      sub_1D7264A2C();
    }

    else
    {
      sub_1D5BE7424(v11, v7, type metadata accessor for FormatVersionRequirement);
      sub_1D7264A2C();
      sub_1D601DA30(v27);
      sub_1D5BF1AEC(v7, type metadata accessor for FormatVersionRequirement);
    }

    sub_1D5BF1AEC(v15, sub_1D60077D8);
  }

  sub_1D7264A5C();
  v24 = sub_1D7263B9C();
  *(a2 + 56 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
  result = sub_1D5BE7424(a1, *(a2 + 48) + *(*(v22 - 8) + 72) * v24, type metadata accessor for FormatDerivedDataResultOptionReference);
  ++*(a2 + 16);
  return result;
}

uint64_t sub_1D5FF709C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D72585BC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7264A0C();
  WebEmbedDataVisualization.identifier.getter();
  sub_1D72621EC();

  v9 = sub_1D6D28818();
  MEMORY[0x1DA6FC0B0](*(v9 + 16));
  v10 = *(v9 + 16);
  if (v10)
  {
    v22 = a1;
    v23 = a2;
    v13 = *(v5 + 16);
    v12 = v5 + 16;
    v11 = v13;
    v14 = (*(v12 + 64) + 32) & ~*(v12 + 64);
    v21 = v9;
    v15 = v9 + v14;
    v16 = *(v12 + 56);
    do
    {
      v11(v8, v15, v4);
      sub_1D5D51EB4(&qword_1EDF3C3E0, 255, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
      sub_1D7261E8C();
      (*(v12 - 8))(v8, v4);
      v15 += v16;
      --v10;
    }

    while (v10);

    a1 = v22;
    a2 = v23;
  }

  else
  {
  }

  sub_1D7264A5C();
  v17 = sub_1D7263B9C();
  *(a2 + 56 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
  v18 = *(a2 + 48);
  v19 = type metadata accessor for WebEmbedDatastoreCacheKey(0);
  result = sub_1D5BE7424(a1, v18 + *(*(v19 - 8) + 72) * v17, type metadata accessor for WebEmbedDatastoreCacheKey);
  ++*(a2 + 16);
  return result;
}

unint64_t sub_1D5FF7310(uint64_t a1, uint64_t a2)
{
  sub_1D72636FC();
  result = sub_1D7263B9C();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

void sub_1D5FF7394(unsigned __int8 a1, unint64_t a2, char a3)
{
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_46;
  }

  if (a3)
  {
    sub_1D5FF1468(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      sub_1D60005D8(&qword_1EDF1A5C0, sub_1D5CD8948, &type metadata for FormatBorderEdge);
      goto LABEL_46;
    }

    sub_1D6001AA8(v5 + 1);
  }

  v7 = *v3;
  sub_1D7264A0C();
  sub_1D72621EC();

  v8 = sub_1D7264A5C();
  v9 = -1 << *(v7 + 32);
  a2 = v8 & ~v9;
  if ((*(v7 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    v11 = 0x676E696461656CLL;
    v12 = 0x6D6F74746F62;
    do
    {
      v13 = *(*(v7 + 48) + a2);
      if (v13 <= 1)
      {
        v14 = *(*(v7 + 48) + a2) ? v11 : 7368564;
        v15 = *(*(v7 + 48) + a2) ? 0xE700000000000000 : 0xE300000000000000;
      }

      else if (v13 == 2)
      {
        v15 = 0xE800000000000000;
        v14 = 0x676E696C69617274;
      }

      else
      {
        v14 = v13 == 3 ? v12 : 7105633;
        v15 = v13 == 3 ? 0xE600000000000000 : 0xE300000000000000;
      }

      v16 = v12;
      if (a1 == 3)
      {
        v17 = 0xE600000000000000;
      }

      else
      {
        v12 = 7105633;
        v17 = 0xE300000000000000;
      }

      if (a1 == 2)
      {
        v12 = 0x676E696C69617274;
        v17 = 0xE800000000000000;
      }

      v18 = v11;
      v19 = a1 ? v11 : 7368564;
      v20 = a1 ? 0xE700000000000000 : 0xE300000000000000;
      v21 = a1 <= 1u ? v19 : v12;
      v22 = a1 <= 1u ? v20 : v17;
      if (v14 == v21 && v15 == v22)
      {
        goto LABEL_49;
      }

      v23 = sub_1D72646CC();

      if (v23)
      {
        goto LABEL_50;
      }

      a2 = (a2 + 1) & v10;
      v11 = v18;
      v12 = v16;
    }

    while (((*(v7 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_46:
  v24 = *v28;
  *(*v28 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v24 + 48) + a2) = a1;
  v25 = *(v24 + 16);
  v26 = __OFADD__(v25, 1);
  v27 = v25 + 1;
  if (!v26)
  {
    *(v24 + 16) = v27;
    return;
  }

  __break(1u);
LABEL_49:

LABEL_50:
  sub_1D726492C();
  __break(1u);
}

void sub_1D5FF76CC(uint64_t result, unint64_t a2, char a3)
{
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1D5FF1754(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      sub_1D600007C();
      a2 = v7;
      goto LABEL_12;
    }

    sub_1D6001D64(v5 + 1);
  }

  v8 = *v3;
  v9 = sub_1D72649FC();
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    while (*(*(v8 + 48) + 8 * a2) != result)
    {
      a2 = (a2 + 1) & v11;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v12 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v12 + 48) + 8 * a2) = result;
  v13 = *(v12 + 16);
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (!v14)
  {
    *(v12 + 16) = v15;
    return;
  }

  __break(1u);
LABEL_15:
  sub_1D726492C();
  __break(1u);
}

void sub_1D5FF77EC(unint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 <= v6 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_1D5FF1984(v6 + 1);
    }

    else
    {
      if (v7 > v6)
      {
        sub_1D60001C8();
        goto LABEL_27;
      }

      sub_1D6001F60(v6 + 1);
    }

    v8 = *v3;
    sub_1D7264A0C();
    v9 = (a1 >> 62) - 1;
    if (v9 >= 2)
    {
      sub_1D7264A2C();
    }

    else
    {

      sub_1D7264A2C();
      sub_1D72621EC();
    }

    v10 = sub_1D7264A5C();
    v11 = -1 << *(v8 + 32);
    a2 = v10 & ~v11;
    if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v12 = ~v11;
      v13 = a1 & 0x3FFFFFFFFFFFFFFFLL;
      do
      {
        v15 = *(*(v8 + 48) + 8 * a2);
        if ((v15 >> 62) - 1 > 1)
        {
          v18 = 0;
          v17 = 0;
          if (v9 <= 1)
          {
LABEL_17:
            v19 = *(v13 + 16);
            v21 = *(v19 + 16);
            v20 = *(v19 + 24);

            if (!v17)
            {
              goto LABEL_18;
            }

            goto LABEL_22;
          }
        }

        else
        {
          v16 = *((v15 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
          v18 = *(v16 + 16);
          v17 = *(v16 + 24);

          if (v9 <= 1)
          {
            goto LABEL_17;
          }
        }

        v21 = 0;
        v20 = 0;
        if (!v17)
        {
LABEL_18:
          if (!v20)
          {
            goto LABEL_31;
          }

LABEL_26:

          goto LABEL_14;
        }

LABEL_22:
        if (!v20)
        {
          goto LABEL_26;
        }

        if (v18 == v21 && v17 == v20)
        {
          goto LABEL_30;
        }

        v14 = sub_1D72646CC();

        if (v14)
        {
          goto LABEL_31;
        }

LABEL_14:
        a2 = (a2 + 1) & v12;
      }

      while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
    }
  }

LABEL_27:
  v22 = *v26;
  *(*v26 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v22 + 48) + 8 * a2) = a1;
  v23 = *(v22 + 16);
  v24 = __OFADD__(v23, 1);
  v25 = v23 + 1;
  if (v24)
  {
    __break(1u);
LABEL_30:

LABEL_31:
    sub_1D726492C();
    __break(1u);
  }

  else
  {
    *(v22 + 16) = v25;
  }
}

void sub_1D5FF7A60(unsigned __int8 a1, unint64_t a2, char a3)
{
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_72;
  }

  if (a3)
  {
    sub_1D5FF1D34(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      sub_1D6000480();
      goto LABEL_72;
    }

    sub_1D60022AC(v5 + 1);
  }

  v7 = *v3;
  sub_1D7264A0C();
  MEMORY[0x1DA6FC0B0](0);
  FormatTagBinding.Asset.rawValue.getter();
  sub_1D72621EC();

  v8 = sub_1D7264A5C();
  v9 = -1 << *(v7 + 32);
  a2 = v8 & ~v9;
  if ((*(v7 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v33 = ~v9;
    do
    {
      v10 = *(*(v7 + 48) + a2);
      if (v10 > 5)
      {
        if (*(*(v7 + 48) + a2) > 8u)
        {
          if (v10 == 9)
          {
            v11 = 0xD000000000000017;
            v12 = 0x80000001D73B9B90;
          }

          else if (v10 == 10)
          {
            v11 = 0xD000000000000012;
            v12 = 0x80000001D73B9BB0;
          }

          else
          {
            v11 = 0xD000000000000019;
            v12 = 0x80000001D73B9BD0;
          }
        }

        else if (v10 == 6)
        {
          v11 = 0xD000000000000014;
          v12 = 0x80000001D73B9B40;
        }

        else if (v10 == 7)
        {
          v11 = 0x6F4C7374726F7073;
          v12 = 0xEF6567616D496F67;
        }

        else
        {
          v11 = 0xD000000000000016;
          v12 = 0x80000001D73B9B70;
        }
      }

      else if (*(*(v7 + 48) + a2) > 2u)
      {
        if (v10 == 3)
        {
          v11 = 0x616D497265766F63;
          v12 = 0xEA00000000006567;
        }

        else
        {
          v11 = 0x4976614E64656566;
          if (v10 == 4)
          {
            v12 = 0xEC0000006567616DLL;
          }

          else
          {
            v12 = 0xEE0051486567616DLL;
          }
        }
      }

      else if (*(*(v7 + 48) + a2))
      {
        v11 = 0xD00000000000001DLL;
        if (v10 == 1)
        {
          v12 = 0x80000001D73B9AD0;
        }

        else
        {
          v12 = 0x80000001D73B9AF0;
        }
      }

      else
      {
        v11 = 0xD000000000000012;
        v12 = 0x80000001D73B9AB0;
      }

      v13 = 0xD000000000000017;
      v14 = 0xD000000000000019;
      if (a1 == 10)
      {
        v14 = 0xD000000000000012;
      }

      v15 = 0x80000001D73B9BD0;
      if (a1 == 10)
      {
        v15 = 0x80000001D73B9BB0;
      }

      if (a1 != 9)
      {
        v13 = v14;
      }

      v16 = 0x80000001D73B9B90;
      if (a1 != 9)
      {
        v16 = v15;
      }

      v17 = 0xD000000000000014;
      v18 = 0xD000000000000016;
      if (a1 == 7)
      {
        v18 = 0x6F4C7374726F7073;
      }

      v19 = 0xEF6567616D496F67;
      if (a1 != 7)
      {
        v19 = 0x80000001D73B9B70;
      }

      if (a1 == 6)
      {
        v20 = 0x80000001D73B9B40;
      }

      else
      {
        v17 = v18;
        v20 = v19;
      }

      if (a1 <= 8u)
      {
        v13 = v17;
        v16 = v20;
      }

      v21 = 0xEE0051486567616DLL;
      if (a1 == 4)
      {
        v21 = 0xEC0000006567616DLL;
      }

      v22 = 0x616D497265766F63;
      if (a1 == 3)
      {
        v21 = 0xEA00000000006567;
      }

      else
      {
        v22 = 0x4976614E64656566;
      }

      v23 = 0xD00000000000001DLL;
      if (a1 == 1)
      {
        v24 = 0x80000001D73B9AD0;
      }

      else
      {
        v24 = 0x80000001D73B9AF0;
      }

      if (!a1)
      {
        v23 = 0xD000000000000012;
        v24 = 0x80000001D73B9AB0;
      }

      if (a1 <= 2u)
      {
        v22 = v23;
        v21 = v24;
      }

      v25 = a1 <= 5u ? v22 : v13;
      v26 = a1 <= 5u ? v21 : v16;
      if (v11 == v25 && v12 == v26)
      {
        goto LABEL_75;
      }

      v27 = sub_1D72646CC();

      if (v27)
      {
        goto LABEL_76;
      }

      a2 = (a2 + 1) & v33;
    }

    while (((*(v7 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_72:
  v28 = *v32;
  *(*v32 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v28 + 48) + a2) = a1;
  v29 = *(v28 + 16);
  v30 = __OFADD__(v29, 1);
  v31 = v29 + 1;
  if (!v30)
  {
    *(v28 + 16) = v31;
    return;
  }

  __break(1u);
LABEL_75:

LABEL_76:
  sub_1D726492C();
  __break(1u);
}

void sub_1D5FF7F1C(unsigned __int8 a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 <= v6 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_1D5FF21B4(v6 + 1);
    }

    else
    {
      if (v7 > v6)
      {
        sub_1D60005D8(&qword_1EC8822A0, sub_1D5B56F50, &type metadata for FormatCompilerFlag);
        goto LABEL_27;
      }

      sub_1D60026D8(v6 + 1);
    }

    v8 = *v3;
    sub_1D7264A0C();
    sub_1D72621EC();

    v9 = sub_1D7264A5C();
    v10 = -1 << *(v8 + 32);
    a2 = v9 & ~v10;
    if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v11 = ~v10;
      do
      {
        if (*(*(v8 + 48) + a2))
        {
          v12 = 0x7461636572706564;
          v13 = 0xEA00000000006465;
          if (*(*(v8 + 48) + a2) == 1)
          {
            v12 = 0xD000000000000021;
            v13 = 0x80000001D73BA2A0;
          }

          v14 = a1;
          if (!a1)
          {
LABEL_23:
            v16 = 0x80000001D73BA280;
            if (v12 == 0xD000000000000014)
            {
              goto LABEL_24;
            }

            goto LABEL_25;
          }
        }

        else
        {
          v12 = 0xD000000000000014;
          v13 = 0x80000001D73BA280;
          v14 = a1;
          if (!a1)
          {
            goto LABEL_23;
          }
        }

        if (v14 == 1)
        {
          v15 = 0xD000000000000021;
        }

        else
        {
          v15 = 0x7461636572706564;
        }

        if (v14 == 1)
        {
          v16 = 0x80000001D73BA2A0;
        }

        else
        {
          v16 = 0xEA00000000006465;
        }

        if (v12 == v15)
        {
LABEL_24:
          if (v13 == v16)
          {
            goto LABEL_30;
          }
        }

LABEL_25:
        v17 = sub_1D72646CC();

        if (v17)
        {
          goto LABEL_31;
        }

        a2 = (a2 + 1) & v11;
      }

      while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
    }
  }

LABEL_27:
  v18 = *v22;
  *(*v22 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v18 + 48) + a2) = a1;
  v19 = *(v18 + 16);
  v20 = __OFADD__(v19, 1);
  v21 = v19 + 1;
  if (v20)
  {
    __break(1u);
LABEL_30:

LABEL_31:
    sub_1D726492C();
    __break(1u);
  }

  else
  {
    *(v18 + 16) = v21;
  }
}

void sub_1D5FF81F0(unsigned __int8 a1, unint64_t a2, char a3)
{
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_68;
  }

  if (a3)
  {
    sub_1D5FF2490(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      sub_1D60005D8(&qword_1EDF1A5B8, sub_1D5E2A690, &type metadata for FormatOptionType);
      goto LABEL_68;
    }

    sub_1D6002984(v5 + 1);
  }

  v7 = *v3;
  sub_1D7264A0C();
  FormatOptionType.rawValue.getter();
  sub_1D72621EC();

  v8 = sub_1D7264A5C();
  v9 = -1 << *(v7 + 32);
  a2 = v8 & ~v9;
  if ((*(v7 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    do
    {
      v11 = *(*(v7 + 48) + a2);
      if (v11 > 5)
      {
        if (*(*(v7 + 48) + a2) > 8u)
        {
          if (v11 == 9)
          {
            v13 = 0xE500000000000000;
            v12 = 0x6F65646976;
          }

          else if (v11 == 10)
          {
            v13 = 0xE400000000000000;
            v12 = 1953394534;
          }

          else
          {
            v12 = 0x616C506F65646976;
            v13 = 0xEB00000000726579;
          }
        }

        else if (v11 == 6)
        {
          v13 = 0xE300000000000000;
          v12 = 7107189;
        }

        else
        {
          v13 = 0xE500000000000000;
          if (v11 == 7)
          {
            v12 = 0x726F6C6F63;
          }

          else
          {
            v12 = 0x6567616D69;
          }
        }
      }

      else if (*(*(v7 + 48) + a2) > 2u)
      {
        if (v11 == 3)
        {
          v13 = 0xE500000000000000;
          v12 = 0x74616F6C66;
        }

        else if (v11 == 4)
        {
          v13 = 0xE700000000000000;
          v12 = 0x72656765746E69;
        }

        else
        {
          v13 = 0xE600000000000000;
          v12 = 0x676E69727473;
        }
      }

      else if (*(*(v7 + 48) + a2))
      {
        if (v11 == 1)
        {
          v12 = 1702125924;
        }

        else
        {
          v12 = 1836412517;
        }

        v13 = 0xE400000000000000;
      }

      else
      {
        v13 = 0xE700000000000000;
        v12 = 0x6E61656C6F6F62;
      }

      v14 = 0x616C506F65646976;
      if (a1 == 10)
      {
        v14 = 1953394534;
      }

      v15 = 0xEB00000000726579;
      if (a1 == 10)
      {
        v15 = 0xE400000000000000;
      }

      if (a1 == 9)
      {
        v14 = 0x6F65646976;
        v15 = 0xE500000000000000;
      }

      v16 = 0x726F6C6F63;
      if (a1 != 7)
      {
        v16 = 0x6567616D69;
      }

      v17 = 0xE500000000000000;
      if (a1 == 6)
      {
        v16 = 7107189;
        v17 = 0xE300000000000000;
      }

      if (a1 <= 8u)
      {
        v14 = v16;
        v15 = v17;
      }

      v18 = 0x72656765746E69;
      if (a1 != 4)
      {
        v18 = 0x676E69727473;
      }

      v19 = 0xE600000000000000;
      if (a1 == 4)
      {
        v19 = 0xE700000000000000;
      }

      if (a1 == 3)
      {
        v18 = 0x74616F6C66;
        v19 = 0xE500000000000000;
      }

      v20 = 1836412517;
      if (a1 == 1)
      {
        v20 = 1702125924;
      }

      v21 = 0xE400000000000000;
      if (!a1)
      {
        v20 = 0x6E61656C6F6F62;
        v21 = 0xE700000000000000;
      }

      if (a1 <= 2u)
      {
        v18 = v20;
        v19 = v21;
      }

      v22 = a1 <= 5u ? v18 : v14;
      v23 = a1 <= 5u ? v19 : v15;
      if (v12 == v22 && v13 == v23)
      {
        goto LABEL_71;
      }

      v24 = sub_1D72646CC();

      if (v24)
      {
        goto LABEL_72;
      }

      a2 = (a2 + 1) & v10;
    }

    while (((*(v7 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_68:
  v25 = *v29;
  *(*v29 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v25 + 48) + a2) = a1;
  v26 = *(v25 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (!v27)
  {
    *(v25 + 16) = v28;
    return;
  }

  __break(1u);
LABEL_71:

LABEL_72:
  sub_1D726492C();
  __break(1u);
}

unint64_t sub_1D5FF8644(unint64_t result, char a2)
{
  v3 = *(*v2 + 16);
  v4 = *(*v2 + 24);
  if (v4 <= v3 || (a2 & 1) == 0)
  {
    if (a2)
    {
      sub_1D5FF283C(v3 + 1);
      goto LABEL_8;
    }

    if (v4 <= v3)
    {
      sub_1D6002D00(v3 + 1);
LABEL_8:
      v6 = *v2;
      sub_1D7264A0C();
      MEMORY[0x1DA6FC0B0](0);
      result = sub_1D7264A5C() & ~(-1 << *(v6 + 32));
      if ((*(v6 + ((result >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> result))
      {
        goto LABEL_12;
      }

      goto LABEL_9;
    }

    v5 = result;
    sub_1D6000718();
    result = v5;
  }

LABEL_9:
  v7 = *v2;
  *(*v2 + 8 * (result >> 6) + 56) |= 1 << result;
  v8 = *(v7 + 16);
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (!v9)
  {
    *(v7 + 16) = v10;
    return result;
  }

  __break(1u);
LABEL_12:
  result = sub_1D726492C();
  __break(1u);
  return result;
}

void sub_1D5FF8754(unsigned __int8 a1, unint64_t a2, char a3)
{
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_49;
  }

  if (a3)
  {
    sub_1D5FF2A6C(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      sub_1D60005D8(&qword_1EDF1A5A0, sub_1D5E2A540, &type metadata for FormatAuxiliaryViewRequirement);
      goto LABEL_49;
    }

    sub_1D6002EF4(v5 + 1);
  }

  v7 = *v3;
  sub_1D7264A0C();
  sub_1D72621EC();

  v8 = sub_1D7264A5C();
  v9 = -1 << *(v7 + 32);
  a2 = v8 & ~v9;
  if ((*(v7 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    do
    {
      v11 = *(*(v7 + 48) + a2);
      if (v11 > 2)
      {
        if (v11 == 3)
        {
          v13 = 0xE500000000000000;
          v12 = 0x6567616D69;
        }

        else
        {
          if (v11 == 4)
          {
            v12 = 1633905005;
          }

          else
          {
            v12 = 0x66456C6175736976;
          }

          if (v11 == 4)
          {
            v13 = 0xE400000000000000;
          }

          else
          {
            v13 = 0xEC00000074636566;
          }
        }
      }

      else if (*(*(v7 + 48) + a2))
      {
        if (v11 == 1)
        {
          v12 = 0x72476C6169646172;
        }

        else
        {
          v12 = 0x65695674696C7073;
        }

        if (v11 == 1)
        {
          v13 = 0xEE00746E65696461;
        }

        else
        {
          v13 = 0xE900000000000077;
        }
      }

      else
      {
        v13 = 0xE800000000000000;
        v12 = 0x746E656964617267;
      }

      v14 = 0x66456C6175736976;
      if (a1 == 4)
      {
        v14 = 1633905005;
      }

      v15 = 0xEC00000074636566;
      if (a1 == 4)
      {
        v15 = 0xE400000000000000;
      }

      if (a1 == 3)
      {
        v14 = 0x6567616D69;
        v15 = 0xE500000000000000;
      }

      v16 = 0x72476C6169646172;
      if (a1 != 1)
      {
        v16 = 0x65695674696C7073;
      }

      v17 = 0xEE00746E65696461;
      if (a1 != 1)
      {
        v17 = 0xE900000000000077;
      }

      if (!a1)
      {
        v16 = 0x746E656964617267;
        v17 = 0xE800000000000000;
      }

      v18 = a1 <= 2u ? v16 : v14;
      v19 = a1 <= 2u ? v17 : v15;
      if (v12 == v18 && v13 == v19)
      {
        goto LABEL_52;
      }

      v20 = sub_1D72646CC();

      if (v20)
      {
        goto LABEL_53;
      }

      a2 = (a2 + 1) & v10;
    }

    while (((*(v7 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_49:
  v21 = *v25;
  *(*v25 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v21 + 48) + a2) = a1;
  v22 = *(v21 + 16);
  v23 = __OFADD__(v22, 1);
  v24 = v22 + 1;
  if (!v23)
  {
    *(v21 + 16) = v24;
    return;
  }

  __break(1u);
LABEL_52:

LABEL_53:
  sub_1D726492C();
  __break(1u);
}

uint64_t sub_1D5FF8B4C(uint64_t a1, unint64_t a2, char a3)
{
  v7 = type metadata accessor for GenericDataVisualization(0);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = (&v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = type metadata accessor for WebEmbedDataVisualization(0);
  v46 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = (&v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = (&v45 - v17);
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = &v45 - v21;
  MEMORY[0x1EEE9AC00](v23, v24);
  v26 = (&v45 - v25);
  v27 = *(*v3 + 16);
  v28 = *(*v3 + 24);
  v45 = v3;
  if (v28 <= v27 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_1D5BD590C(v27 + 1, type metadata accessor for WebEmbedDataVisualization, sub_1D60072C8, type metadata accessor for WebEmbedDataVisualization, sub_1D5FF6AB4);
    }

    else
    {
      if (v28 > v27)
      {
        sub_1D6001500(type metadata accessor for WebEmbedDataVisualization, sub_1D60072C8, type metadata accessor for WebEmbedDataVisualization, type metadata accessor for WebEmbedDataVisualization);
        goto LABEL_23;
      }

      sub_1D5C0F230(v27 + 1, type metadata accessor for WebEmbedDataVisualization, sub_1D60072C8, type metadata accessor for WebEmbedDataVisualization, sub_1D5FF6AB4);
    }

    v51 = *v3;
    sub_1D7264A0C();
    sub_1D5BE7354(a1, v26, type metadata accessor for WebEmbedDataVisualization);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1D5BE7424(v26, v10, type metadata accessor for GenericDataVisualization);
      sub_1D72621EC();
      sub_1D5BF1AEC(v10, type metadata accessor for GenericDataVisualization);
    }

    else
    {
      v53 = *v26;
      SportsDataVisualization.identifier.getter();
      sub_1D72621EC();
    }

    v29 = sub_1D7264A5C();
    v30 = -1 << *(v51 + 32);
    a2 = v29 & ~v30;
    v50 = v51 + 56;
    if ((*(v51 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v49 = ~v30;
      v31 = *(v46 + 72);
      v47 = v11;
      v48 = v31;
      do
      {
        v32 = *(v51 + 48);
        v52 = a2;
        sub_1D5BE7354(v32 + v48 * a2, v22, type metadata accessor for WebEmbedDataVisualization);
        sub_1D5BE7354(v22, v18, type metadata accessor for WebEmbedDataVisualization);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          sub_1D5BE7424(v18, v10, type metadata accessor for GenericDataVisualization);
          v54 = 0x3A636972656E6567;
          v55 = 0xE90000000000003ALL;
          MEMORY[0x1DA6F9910](*v10, v10[1]);
          v33 = v54;
          v34 = v55;
          sub_1D5BF1AEC(v10, type metadata accessor for GenericDataVisualization);
        }

        else
        {
          v53 = *v18;
          v54 = 0x3A3A7374726F7073;
          v55 = 0xE800000000000000;
          v35 = SportsDataVisualization.identifier.getter();
          MEMORY[0x1DA6F9910](v35);

          v33 = v54;
          v34 = v55;
        }

        sub_1D5BE7354(a1, v14, type metadata accessor for WebEmbedDataVisualization);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          sub_1D5BE7424(v14, v10, type metadata accessor for GenericDataVisualization);
          v54 = 0x3A636972656E6567;
          v55 = 0xE90000000000003ALL;
          MEMORY[0x1DA6F9910](*v10, v10[1]);
          v36 = v54;
          v37 = v55;
          sub_1D5BF1AEC(v10, type metadata accessor for GenericDataVisualization);
          if (v33 == v36)
          {
            goto LABEL_20;
          }
        }

        else
        {
          v53 = *v14;
          v54 = 0x3A3A7374726F7073;
          v55 = 0xE800000000000000;
          v38 = SportsDataVisualization.identifier.getter();
          MEMORY[0x1DA6F9910](v38);

          v37 = v55;
          if (v33 == v54)
          {
LABEL_20:
            if (v34 == v37)
            {
              goto LABEL_26;
            }
          }
        }

        v39 = sub_1D72646CC();

        sub_1D5BF1AEC(v22, type metadata accessor for WebEmbedDataVisualization);
        if (v39)
        {
          goto LABEL_27;
        }

        a2 = (v52 + 1) & v49;
      }

      while (((*(v50 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
    }
  }

LABEL_23:
  v40 = *v45;
  *(*v45 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = sub_1D5BE7424(a1, *(v40 + 48) + *(v46 + 72) * a2, type metadata accessor for WebEmbedDataVisualization);
  v42 = *(v40 + 16);
  v43 = __OFADD__(v42, 1);
  v44 = v42 + 1;
  if (v43)
  {
    __break(1u);
LABEL_26:

    sub_1D5BF1AEC(v22, type metadata accessor for WebEmbedDataVisualization);
LABEL_27:
    result = sub_1D726492C();
    __break(1u);
  }

  else
  {
    *(v40 + 16) = v44;
  }

  return result;
}

void sub_1D5FF9228(unsigned __int8 a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 <= v6 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_1D5FF2D98(v6 + 1);
    }

    else
    {
      if (v7 > v6)
      {
        sub_1D60005D8(&qword_1EC8822A8, sub_1D6007B2C, &type metadata for PuzzleTeaserInteractionType);
        goto LABEL_28;
      }

      sub_1D60031F0(v6 + 1);
    }

    v8 = *v3;
    sub_1D7264A0C();
    sub_1D72621EC();

    v9 = sub_1D7264A5C();
    v10 = -1 << *(v8 + 32);
    a2 = v9 & ~v10;
    if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v11 = ~v10;
      do
      {
        if (*(*(v8 + 48) + a2))
        {
          if (*(*(v8 + 48) + a2) == 1)
          {
            v12 = 0xD000000000000010;
            v13 = 0x80000001D73BC380;
            v14 = a1;
            if (!a1)
            {
              goto LABEL_24;
            }
          }

          else
          {
            v13 = 0xE400000000000000;
            v12 = 1752461154;
            v14 = a1;
            if (!a1)
            {
LABEL_24:
              v16 = 0xEB00000000797274;
              if (v12 == 0x6E4572657474656CLL)
              {
                goto LABEL_25;
              }

              goto LABEL_26;
            }
          }
        }

        else
        {
          v12 = 0x6E4572657474656CLL;
          v13 = 0xEB00000000797274;
          v14 = a1;
          if (!a1)
          {
            goto LABEL_24;
          }
        }

        if (v14 == 1)
        {
          v15 = 0xD000000000000010;
        }

        else
        {
          v15 = 1752461154;
        }

        if (v14 == 1)
        {
          v16 = 0x80000001D73BC380;
        }

        else
        {
          v16 = 0xE400000000000000;
        }

        if (v12 == v15)
        {
LABEL_25:
          if (v13 == v16)
          {
            goto LABEL_31;
          }
        }

LABEL_26:
        v17 = sub_1D72646CC();

        if (v17)
        {
          goto LABEL_32;
        }

        a2 = (a2 + 1) & v11;
      }

      while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
    }
  }

LABEL_28:
  v18 = *v22;
  *(*v22 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v18 + 48) + a2) = a1;
  v19 = *(v18 + 16);
  v20 = __OFADD__(v19, 1);
  v21 = v19 + 1;
  if (v20)
  {
    __break(1u);
LABEL_31:

LABEL_32:
    sub_1D726492C();
    __break(1u);
  }

  else
  {
    *(v18 + 16) = v21;
  }
}

void sub_1D5FF94F0(uint64_t *result, unint64_t a2, unint64_t a3, char a4)
{
  v6 = v4;
  v10 = *(*v4 + 16);
  v11 = *(*v4 + 24);
  if (v11 <= v10 || (a4 & 1) == 0)
  {
    if (a4)
    {
      sub_1D5FF3060(v10 + 1);
    }

    else
    {
      if (v11 > v10)
      {
        sub_1D6000890(&qword_1EDF04318, sub_1D6007408, &type metadata for FeedItem.Kind, sub_1D5BF2DDC);
        goto LABEL_57;
      }

      sub_1D6003488(v10 + 1);
    }

    v12 = *v4;
    v25 = result;
    v26 = a2;
    sub_1D7264A0C();
    FeedItem.Kind.hash(into:)(v24);
    v4 = v24;
    v13 = sub_1D7264A5C();
    v14 = -1 << *(v12 + 32);
    a3 = v13 & ~v14;
    if ((*(v12 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
    {
      v15 = ~v14;
      while (2)
      {
        v16 = *(v12 + 48) + 16 * a3;
        v4 = *v16;
        v5 = *(v16 + 8);
        switch(v5)
        {
          case 0uLL:
            if (!a2)
            {
              goto LABEL_60;
            }

            goto LABEL_48;
          case 1uLL:
            if (a2 == 1)
            {
              goto LABEL_60;
            }

            goto LABEL_48;
          case 2uLL:
            if (a2 == 2)
            {
              goto LABEL_60;
            }

            goto LABEL_48;
          case 3uLL:
            if (a2 == 3)
            {
              goto LABEL_60;
            }

            goto LABEL_48;
          case 4uLL:
            if (a2 == 4)
            {
              goto LABEL_60;
            }

            goto LABEL_48;
          case 5uLL:
            if (a2 == 5)
            {
              goto LABEL_60;
            }

            goto LABEL_48;
          case 6uLL:
            if (a2 == 6)
            {
              goto LABEL_60;
            }

            goto LABEL_48;
          case 7uLL:
            if (a2 == 7)
            {
              goto LABEL_60;
            }

            goto LABEL_48;
          case 8uLL:
            if (a2 != 8)
            {
              goto LABEL_48;
            }

            goto LABEL_60;
          case 9uLL:
            if (a2 == 9)
            {
              goto LABEL_60;
            }

            goto LABEL_48;
          case 0xAuLL:
            if (a2 == 10)
            {
              goto LABEL_60;
            }

            goto LABEL_48;
          case 0xBuLL:
            if (a2 == 11)
            {
              goto LABEL_60;
            }

            goto LABEL_48;
          case 0xCuLL:
            if (a2 == 12)
            {
              goto LABEL_60;
            }

            goto LABEL_48;
          case 0xDuLL:
            if (a2 == 13)
            {
              goto LABEL_60;
            }

            goto LABEL_48;
          case 0xEuLL:
            if (a2 == 14)
            {
              goto LABEL_60;
            }

            goto LABEL_48;
          case 0xFuLL:
            if (a2 == 15)
            {
              goto LABEL_60;
            }

            goto LABEL_48;
          case 0x10uLL:
            if (a2 == 16)
            {
              goto LABEL_60;
            }

            goto LABEL_48;
          case 0x11uLL:
            if (a2 == 17)
            {
              goto LABEL_60;
            }

            goto LABEL_48;
          default:
            if (a2 >= 0x12)
            {
              if (v4 == result && v5 == a2)
              {
                goto LABEL_63;
              }

              v18 = sub_1D72646CC();
              sub_1D5BF2DDC(result, a2);
              sub_1D5BF2DDC(v4, v5);
              sub_1D5BF6680(v4, v5);
              sub_1D5BF6680(result, a2);
              if (v18)
              {
                goto LABEL_62;
              }
            }

            else
            {
              sub_1D5BF2DDC(*v16, *(v16 + 8));
LABEL_48:
              sub_1D5BF2DDC(result, a2);
              sub_1D5BF6680(v4, v5);
              sub_1D5BF6680(result, a2);
            }

            a3 = (a3 + 1) & v15;
            if (((*(v12 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) == 0)
            {
              break;
            }

            continue;
        }

        break;
      }
    }
  }

LABEL_57:
  v19 = *v6;
  *(*v6 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v20 = (*(v19 + 48) + 16 * a3);
  *v20 = result;
  v20[1] = a2;
  v21 = *(v19 + 16);
  v22 = __OFADD__(v21, 1);
  v23 = v21 + 1;
  if (v22)
  {
    __break(1u);
LABEL_60:
    a2 = v5;
    while (1)
    {
      sub_1D5BF6680(v4, a2);
      sub_1D5BF6680(result, a2);
LABEL_62:
      sub_1D726492C();
      __break(1u);
LABEL_63:
      sub_1D5BF2DDC(result, a2);
      sub_1D5BF2DDC(result, a2);
      v4 = result;
    }
  }

  *(v19 + 16) = v23;
}

void sub_1D5FF9868(uint64_t result, unint64_t a2, char a3, unint64_t *a4, uint64_t (*a5)(void), uint64_t a6)
{
  v7 = result;
  v8 = *(*v6 + 16);
  v9 = *(*v6 + 24);
  if (v9 > v8 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1D5FF33EC(v8 + 1, a4, a5, a6);
  }

  else
  {
    if (v9 > v8)
    {
      v10 = a2;
      sub_1D60005D8(a4, a5, a6);
      a2 = v10;
      goto LABEL_12;
    }

    sub_1D60037EC(v8 + 1, a4, a5, a6);
  }

  v11 = *v6;
  sub_1D7264A0C();
  MEMORY[0x1DA6FC0B0](v7);
  v12 = sub_1D7264A5C();
  v13 = -1 << *(v11 + 32);
  a2 = v12 & ~v13;
  if ((*(v11 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v14 = ~v13;
    while (*(*(v11 + 48) + a2) != v7)
    {
      a2 = (a2 + 1) & v14;
      if (((*(v11 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v15 = *v6;
  *(*v6 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v15 + 48) + a2) = v7;
  v16 = *(v15 + 16);
  v17 = __OFADD__(v16, 1);
  v18 = v16 + 1;
  if (!v17)
  {
    *(v15 + 16) = v18;
    return;
  }

  __break(1u);
LABEL_15:
  sub_1D726492C();
  __break(1u);
}

void sub_1D5FF99E4(char a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_28;
  }

  if (a3)
  {
    sub_1D5FF3630(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      sub_1D60005D8(&qword_1EC882218, sub_1D5E4E308, &type metadata for FormatGroupColumnSystemKind);
      goto LABEL_28;
    }

    sub_1D6003A00(v6 + 1);
  }

  v8 = *v3;
  sub_1D7264A0C();
  if (a1)
  {
    v9 = 0x746C7561666564;
  }

  else
  {
    v9 = 1685217635;
  }

  if (a1)
  {
    v10 = 0xE700000000000000;
  }

  else
  {
    v10 = 0xE400000000000000;
  }

  sub_1D72621EC();

  v11 = sub_1D7264A5C();
  v12 = -1 << *(v8 + 32);
  a2 = v11 & ~v12;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v13 = ~v12;
    do
    {
      v14 = *(*(v8 + 48) + a2) ? 0x746C7561666564 : 1685217635;
      v15 = *(*(v8 + 48) + a2) ? 0xE700000000000000 : 0xE400000000000000;
      if (v14 == v9 && v15 == v10)
      {
        goto LABEL_31;
      }

      v17 = sub_1D72646CC();

      if (v17)
      {
        goto LABEL_32;
      }

      a2 = (a2 + 1) & v13;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_28:
  v18 = *v22;
  *(*v22 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v18 + 48) + a2) = a1 & 1;
  v19 = *(v18 + 16);
  v20 = __OFADD__(v19, 1);
  v21 = v19 + 1;
  if (!v20)
  {
    *(v18 + 16) = v21;
    return;
  }

  __break(1u);
LABEL_31:

LABEL_32:
  sub_1D726492C();
  __break(1u);
}

void sub_1D5FF9C08(char a1, unint64_t a2, char a3)
{
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_31;
  }

  if (a3)
  {
    sub_1D5FF38CC(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      sub_1D60005D8(&qword_1EC8821F0, sub_1D6007360, &type metadata for FormatDerivedDataCompilerMode);
      goto LABEL_31;
    }

    sub_1D6003C6C(v5 + 1);
  }

  v22 = *v3;
  sub_1D7264A0C();
  sub_1D72621EC();

  v7 = sub_1D7264A5C();
  v8 = -1 << *(v22 + 32);
  a2 = v7 & ~v8;
  if ((*(v22 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v9 = ~v8;
    do
    {
      v10 = 0xD00000000000001CLL;
      if (*(*(v22 + 48) + a2) == 1)
      {
        v11 = "unusedProperties";
      }

      else
      {
        v10 = 0xD000000000000028;
        v11 = "duplicateNewsroomIdentifiers";
      }

      v12 = *(*(v22 + 48) + a2) ? v10 : 0xD000000000000010;
      v13 = *(*(v22 + 48) + a2) ? v11 : "bility-news-plus-via-hardware";
      if (a1)
      {
        v14 = a1 == 1 ? 0xD00000000000001CLL : 0xD000000000000028;
        v15 = a1 == 1 ? "unusedProperties" : "duplicateNewsroomIdentifiers";
      }

      else
      {
        v14 = 0xD000000000000010;
        v15 = "bility-news-plus-via-hardware";
      }

      if (v12 == v14 && (v13 | 0x8000000000000000) == (v15 | 0x8000000000000000))
      {
        goto LABEL_34;
      }

      v16 = sub_1D72646CC();

      if (v16)
      {
        goto LABEL_35;
      }

      a2 = (a2 + 1) & v9;
    }

    while (((*(v22 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_31:
  v17 = *v21;
  *(*v21 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v17 + 48) + a2) = a1;
  v18 = *(v17 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v17 + 16) = v20;
    return;
  }

  __break(1u);
LABEL_34:

LABEL_35:
  sub_1D726492C();
  __break(1u);
}

void sub_1D5FF9E98(uint64_t *result, unint64_t a2, unint64_t a3, char a4)
{
  v6 = v4;
  v10 = *(*v4 + 16);
  v11 = *(*v4 + 24);
  if (v11 <= v10 || (a4 & 1) == 0)
  {
    if (a4)
    {
      sub_1D5FF3B98(v10 + 1);
    }

    else
    {
      if (v11 > v10)
      {
        sub_1D6000890(&qword_1EDF1A5C8, sub_1D5B4B090, &type metadata for FormatItemKind, sub_1D5CBA110);
        goto LABEL_53;
      }

      sub_1D6003F08(v10 + 1);
    }

    v12 = *v4;
    v28 = result;
    v29 = a2;
    sub_1D7264A0C();
    FormatItemKind.hash(into:)(v27);
    v4 = v27;
    v13 = sub_1D7264A5C();
    v14 = -1 << *(v12 + 32);
    a3 = v13 & ~v14;
    if ((*(v12 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
    {
      v15 = ~v14;
      while (2)
      {
        v16 = *(v12 + 48) + 16 * a3;
        v4 = *v16;
        v5 = *(v16 + 8);
        switch(v5)
        {
          case 0uLL:
            if (a2)
            {
              goto LABEL_44;
            }

            v25 = *v16;
            v26 = 0;
            goto LABEL_58;
          case 1uLL:
            if (a2 != 1)
            {
              goto LABEL_44;
            }

            v25 = *v16;
            v26 = 1;
            goto LABEL_58;
          case 2uLL:
            if (a2 != 2)
            {
              goto LABEL_44;
            }

            v25 = *v16;
            v26 = 2;
            goto LABEL_58;
          case 3uLL:
            if (a2 != 3)
            {
              goto LABEL_44;
            }

            v25 = *v16;
            v26 = 3;
LABEL_58:
            sub_1D5CBA0FC(v25, v26);
            i = result;
            goto LABEL_59;
          case 4uLL:
            if (a2 == 4)
            {
              goto LABEL_56;
            }

            goto LABEL_44;
          case 5uLL:
            if (a2 == 5)
            {
              goto LABEL_56;
            }

            goto LABEL_44;
          case 6uLL:
            if (a2 == 6)
            {
              goto LABEL_56;
            }

            goto LABEL_44;
          case 7uLL:
            if (a2 == 7)
            {
              goto LABEL_56;
            }

            goto LABEL_44;
          case 8uLL:
            if (a2 == 8)
            {
              goto LABEL_56;
            }

            goto LABEL_44;
          case 9uLL:
            if (a2 == 9)
            {
              goto LABEL_56;
            }

            goto LABEL_44;
          case 0xAuLL:
            if (a2 == 10)
            {
              goto LABEL_56;
            }

            goto LABEL_44;
          case 0xBuLL:
            if (a2 == 11)
            {
              goto LABEL_56;
            }

            goto LABEL_44;
          case 0xCuLL:
            if (a2 == 12)
            {
              goto LABEL_56;
            }

            goto LABEL_44;
          case 0xDuLL:
            if (a2 == 13)
            {
              goto LABEL_56;
            }

            goto LABEL_44;
          case 0xEuLL:
            if (a2 == 14)
            {
              goto LABEL_56;
            }

            goto LABEL_44;
          case 0xFuLL:
            if (a2 == 15)
            {
              goto LABEL_56;
            }

            goto LABEL_44;
          default:
            if (a2 >= 0x10)
            {
              if (v4 == result && v5 == a2)
              {
                goto LABEL_61;
              }

              v18 = sub_1D72646CC();
              sub_1D5CBA110(v4, v5);
              sub_1D5CBA110(result, a2);
              sub_1D5CBA0FC(v4, v5);
              sub_1D5CBA0FC(result, a2);
              if (v18)
              {
                goto LABEL_60;
              }
            }

            else
            {
LABEL_44:
              sub_1D5CBA110(*v16, *(v16 + 8));
              sub_1D5CBA110(v4, v5);
              sub_1D5CBA110(result, a2);
              sub_1D5CBA0FC(v4, v5);
              sub_1D5CBA0FC(result, a2);
              sub_1D5CBA0FC(v4, v5);
            }

            a3 = (a3 + 1) & v15;
            if (((*(v12 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) == 0)
            {
              break;
            }

            continue;
        }

        break;
      }
    }
  }

LABEL_53:
  v19 = *v6;
  *(*v6 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v20 = (*(v19 + 48) + 16 * a3);
  *v20 = result;
  v20[1] = a2;
  v21 = *(v19 + 16);
  v22 = __OFADD__(v21, 1);
  v23 = v21 + 1;
  if (v22)
  {
    __break(1u);
LABEL_56:
    a2 = v5;
    for (i = v4; ; i = result)
    {
      v4 = result;
LABEL_59:
      sub_1D5CBA0FC(i, a2);
      sub_1D5CBA0FC(v4, a2);
LABEL_60:
      sub_1D726492C();
      __break(1u);
LABEL_61:
      sub_1D5CBA110(result, a2);
      sub_1D5CBA110(result, a2);
    }
  }

  *(v19 + 16) = v23;
}

void sub_1D5FFA24C(uint64_t result, uint64_t a2, unsigned __int8 a3, unint64_t a4, char a5)
{
  v6 = v5;
  v11 = *(*v5 + 16);
  v12 = *(*v5 + 24);
  if (v12 > v11 && (a5 & 1) != 0)
  {
    goto LABEL_23;
  }

  if (a5)
  {
    sub_1D5FF4EDC(v11 + 1, &qword_1EC882260, sub_1D6007784, &type metadata for FormatDerivedDataFileReference);
  }

  else
  {
    if (v12 > v11)
    {
      sub_1D6000A30(&qword_1EC882260, sub_1D6007784, &type metadata for FormatDerivedDataFileReference, sub_1D6007D98);
      goto LABEL_23;
    }

    sub_1D600513C(v11 + 1, &qword_1EC882260, sub_1D6007784, &type metadata for FormatDerivedDataFileReference);
  }

  v13 = *v5;
  sub_1D7264A0C();
  MEMORY[0x1DA6FC0B0](a3);
  sub_1D72621EC();
  v14 = sub_1D7264A5C();
  v15 = v13 + 56;
  v16 = -1 << *(v13 + 32);
  a4 = v14 & ~v16;
  if ((*(v13 + 56 + ((a4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a4))
  {
    v17 = ~v16;
    v18 = *(v13 + 48);
    do
    {
      v19 = (v18 + 24 * a4);
      v20 = *v19;
      v21 = v19[1];
      v22 = *(v19 + 16);
      if (v22)
      {
        if (v22 == 1)
        {
          if (a3 != 1)
          {
            goto LABEL_11;
          }
        }

        else if (a3 != 2)
        {
          goto LABEL_11;
        }
      }

      else if (a3)
      {
        goto LABEL_11;
      }

      v23 = v20 == result && v21 == a2;
      if (v23 || (sub_1D72646CC() & 1) != 0)
      {
        sub_1D726492C();
        __break(1u);
        break;
      }

LABEL_11:
      a4 = (a4 + 1) & v17;
    }

    while (((*(v15 + ((a4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a4) & 1) != 0);
  }

LABEL_23:
  v24 = *v6;
  *(*v6 + 8 * (a4 >> 6) + 56) |= 1 << a4;
  v25 = *(v24 + 48) + 24 * a4;
  *v25 = result;
  *(v25 + 8) = a2;
  *(v25 + 16) = a3;
  v26 = *(v24 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (v27)
  {
    __break(1u);
  }

  else
  {
    *(v24 + 16) = v28;
  }
}

uint64_t sub_1D5FFA4A8(uint64_t a1, unint64_t a2, char a3)
{
  v122 = a1;
  sub_1D5D50E70(0, &qword_1EDF0CE38, sub_1D60077D8);
  v7 = v6;
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v102 - v9;
  sub_1D5D50E70(0, &qword_1EC8801B0, type metadata accessor for FormatDerivedDataOptionReferenceResolution);
  v115 = v11;
  MEMORY[0x1EEE9AC00](v11, v12);
  v116 = &v102 - v13;
  v14 = type metadata accessor for FormatDerivedDataResultOptionReference(0);
  v120 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v15);
  v129 = &v102 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = type metadata accessor for FormatVersionRequirement(0);
  v133 = *(v114 - 8);
  MEMORY[0x1EEE9AC00](v114, v17);
  v111 = &v102 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = &v102 - v21;
  sub_1D60077D8(0);
  MEMORY[0x1EEE9AC00](v23 - 8, v24);
  v112 = &v102 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26, v27);
  v29 = &v102 - v28;
  MEMORY[0x1EEE9AC00](v30, v31);
  v33 = &v102 - v32;
  v34 = type metadata accessor for FormatDerivedDataOptionReferenceResolution(0);
  MEMORY[0x1EEE9AC00](v34 - 8, v35);
  MEMORY[0x1EEE9AC00](v36, v37);
  v40 = &v102 - v39;
  v41 = *(*v3 + 16);
  v42 = *(*v3 + 24);
  v119 = v3;
  if (v42 > v41 && (a3 & 1) != 0)
  {
    goto LABEL_182;
  }

  v113 = v14;
  if (a3)
  {
    v106 = v38;
    v105 = v10;
    sub_1D5BD590C(v41 + 1, type metadata accessor for FormatDerivedDataResultOptionReference, sub_1D60078CC, type metadata accessor for FormatDerivedDataResultOptionReference, sub_1D5FF6CE8);
    goto LABEL_8;
  }

  if (v42 > v41)
  {
    sub_1D6001500(type metadata accessor for FormatDerivedDataResultOptionReference, sub_1D60078CC, type metadata accessor for FormatDerivedDataResultOptionReference, type metadata accessor for FormatDerivedDataResultOptionReference);
LABEL_182:
    v97 = *v119;
    *(*v119 + 8 * (a2 >> 6) + 56) |= 1 << a2;
    result = sub_1D5BE7424(v122, *(v97 + 48) + *(v120 + 72) * a2, type metadata accessor for FormatDerivedDataResultOptionReference);
    v99 = *(v97 + 16);
    v100 = __OFADD__(v99, 1);
    v101 = v99 + 1;
    if (v100)
    {
      goto LABEL_186;
    }

    *(v97 + 16) = v101;
    return result;
  }

  v106 = v38;
  v105 = v10;
  sub_1D5C0F230(v41 + 1, type metadata accessor for FormatDerivedDataResultOptionReference, sub_1D60078CC, type metadata accessor for FormatDerivedDataResultOptionReference, sub_1D5FF6CE8);
LABEL_8:
  v128 = *v3;
  sub_1D7264A0C();
  v43 = v122;
  v131 = *v122;
  sub_1D6907920(&v134, v131);
  v44 = *(v43 + 8);
  v45 = *(v43 + 24);
  v46 = *(v43 + 32);
  v123 = *(v43 + 16);
  v124 = v44;
  sub_1D72621EC();
  v121 = v45;
  sub_1D6C37A40(&v134, v45);
  v118 = v46;
  MEMORY[0x1DA6FC0B0](v46);
  MEMORY[0x1DA6FC0B0](*(v43 + 56));
  sub_1D72621EC();
  v110 = *(v113 + 28);
  sub_1D5BE7354(v43 + v110, v40, type metadata accessor for FormatDerivedDataOptionReferenceResolution);
  sub_1D5EA24BC();
  v48 = v47;
  v49 = *(v47 - 8);
  v10 = *(v49 + 48);
  v50 = v49 + 48;
  if ((v10)(v40, 1, v47) == 1)
  {
    sub_1D7264A2C();
    v51 = v133;
  }

  else
  {
    sub_1D5BE7424(v40, v33, sub_1D60077D8);
    sub_1D7264A2C();
    sub_1D5BE7354(v33, v29, sub_1D60077D8);
    v51 = v133;
    if ((*(v133 + 48))(v29, 1, v114) == 1)
    {
      sub_1D7264A2C();
    }

    else
    {
      sub_1D5BE7424(v29, v22, type metadata accessor for FormatVersionRequirement);
      sub_1D7264A2C();
      sub_1D601DA30(&v134);
      sub_1D5BF1AEC(v22, type metadata accessor for FormatVersionRequirement);
    }

    sub_1D5BF1AEC(v33, sub_1D60077D8);
  }

  v52 = sub_1D7264A5C();
  v53 = -1 << *(v128 + 32);
  a2 = v52 & ~v53;
  v127 = v128 + 56;
  if (((*(v128 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
  {
    goto LABEL_182;
  }

  v107 = v50;
  v108 = v10;
  v109 = v48;
  v104 = v7;
  v125 = ~v53;
  v132 = *(v131 + 16);
  v126 = *(v120 + 72);
  v103 = (v51 + 48);
  v117 = (v131 + 48);
  v54 = v129;
  while (1)
  {
    v58 = *(v128 + 48);
    v130 = a2;
    sub_1D5BE7354(v58 + v126 * a2, v54, type metadata accessor for FormatDerivedDataResultOptionReference);
    v133 = *v54;
    if (*(v133 + 16) != v132)
    {
      goto LABEL_18;
    }

    if (!v132 || v133 == v131)
    {
LABEL_129:
      v72 = *(v129 + 24);
      v71 = *(v129 + 32);
      v73 = *(v129 + 8) == v124 && *(v129 + 16) == v123;
      if (!v73 && (sub_1D72646CC() & 1) == 0 || (sub_1D5E1E5A4(v72, v121) & 1) == 0 || v71 != v118)
      {
        goto LABEL_18;
      }

      v74 = *(v129 + 40);
      v22 = *(v129 + 48);
      v75 = *(v129 + 56);
      v77 = *(v122 + 40);
      v76 = *(v122 + 48);
      v78 = *(v122 + 56);
      if (*(v129 + 56))
      {
        if (v75 == 1)
        {
          if (v78 == 1)
          {
            if (v74 != v77 || v22 != v76)
            {
              v79 = sub_1D72646CC();
              sub_1D5DEA210(v77, v76, 1u);
              sub_1D5DEA210(v74, v22, 1u);
              sub_1D5DEA520(v74, v22, 1u);
              sub_1D5DEA520(v77, v76, 1u);
              if ((v79 & 1) == 0)
              {
                goto LABEL_18;
              }

              goto LABEL_156;
            }

LABEL_155:
            sub_1D5DEA210(v74, v22, v75);
            sub_1D5DEA210(v74, v22, v75);
            sub_1D5DEA520(v74, v22, v75);
            sub_1D5DEA520(v74, v22, v75);
            goto LABEL_156;
          }

          sub_1D5DEA210(*(v122 + 40), *(v122 + 48), *(v122 + 56));
          sub_1D5DEA210(v74, v22, 1u);
          v55 = v74;
          v56 = v22;
          v57 = 1;
LABEL_17:
          sub_1D5DEA520(v55, v56, v57);
          sub_1D5DEA520(v77, v76, v78);
          goto LABEL_18;
        }

        if (v78 != 2)
        {
          sub_1D5DEA210(*(v122 + 40), *(v122 + 48), *(v122 + 56));
          sub_1D5DEA210(v74, v22, 2u);
          v55 = v74;
          v56 = v22;
          v57 = 2;
          goto LABEL_17;
        }

        if (v74 == v77 && v22 == v76)
        {
          goto LABEL_155;
        }

        v80 = sub_1D72646CC();
        sub_1D5DEA210(v77, v76, 2u);
        sub_1D5DEA210(v74, v22, 2u);
        sub_1D5DEA520(v74, v22, 2u);
        sub_1D5DEA520(v77, v76, 2u);
        if ((v80 & 1) == 0)
        {
          goto LABEL_18;
        }
      }

      else
      {
        if (*(v122 + 56))
        {
          sub_1D5DEA210(*(v122 + 40), *(v122 + 48), *(v122 + 56));
          sub_1D5DEA210(v74, v22, 0);
          v55 = v74;
          v56 = v22;
          v57 = 0;
          goto LABEL_17;
        }

        if (v74 == v77 && v22 == v76)
        {
          goto LABEL_155;
        }

        v93 = sub_1D72646CC();
        sub_1D5DEA210(v77, v76, 0);
        sub_1D5DEA210(v74, v22, 0);
        sub_1D5DEA520(v74, v22, 0);
        sub_1D5DEA520(v77, v76, 0);
        if ((v93 & 1) == 0)
        {
          goto LABEL_18;
        }
      }

LABEL_156:
      v84 = *(v115 + 48);
      v22 = v116;
      sub_1D5BE7354(v129 + *(v113 + 28), v116, type metadata accessor for FormatDerivedDataOptionReferenceResolution);
      sub_1D5BE7354(v122 + v110, v22 + v84, type metadata accessor for FormatDerivedDataOptionReferenceResolution);
      v85 = v109;
      v86 = v108;
      if (v108(v22, 1, v109) == 1)
      {
        if (v86(v22 + v84, 1, v85) == 1)
        {
          goto LABEL_188;
        }

LABEL_161:
        sub_1D6007870(v22, &qword_1EC8801B0, type metadata accessor for FormatDerivedDataOptionReferenceResolution);
        goto LABEL_18;
      }

      v10 = v106;
      sub_1D5BE7354(v22, v106, type metadata accessor for FormatDerivedDataOptionReferenceResolution);
      if (v86(v22 + v84, 1, v85) == 1)
      {
        sub_1D5BF1AEC(v10, sub_1D60077D8);
        goto LABEL_161;
      }

      v87 = *(v104 + 48);
      v88 = v10;
      v10 = v105;
      sub_1D5BE7424(v88, v105, sub_1D60077D8);
      sub_1D5BE7424(v22 + v84, &v10[v87], sub_1D60077D8);
      v89 = *v103;
      v90 = v114;
      v91 = (*v103)(v10, 1, v114);
      v92 = v112;
      if (v91 == 1)
      {
        if (v89(&v10[v87], 1, v90) == 1)
        {
          goto LABEL_187;
        }
      }

      else
      {
        sub_1D5BE7354(v10, v112, sub_1D60077D8);
        if (v89(&v10[v87], 1, v90) != 1)
        {
          v94 = &v10[v87];
          v95 = v111;
          sub_1D5BE7424(v94, v111, type metadata accessor for FormatVersionRequirement);
          v96 = sub_1D6024840(v92, v95);
          sub_1D5BF1AEC(v95, type metadata accessor for FormatVersionRequirement);
          sub_1D5BF1AEC(v92, type metadata accessor for FormatVersionRequirement);
          sub_1D5BF1AEC(v10, sub_1D60077D8);
          if (v96)
          {
            goto LABEL_188;
          }

LABEL_173:
          sub_1D5BF1AEC(v22, type metadata accessor for FormatDerivedDataOptionReferenceResolution);
          goto LABEL_18;
        }

        sub_1D5BF1AEC(v92, type metadata accessor for FormatVersionRequirement);
      }

      sub_1D6007870(v10, &qword_1EDF0CE38, sub_1D60077D8);
      goto LABEL_173;
    }

    v59 = 0;
    v10 = (v133 + 48);
    v60 = v117;
LABEL_27:
    if (v59 >= *(v133 + 16))
    {
      break;
    }

    if (v59 >= *(v131 + 16))
    {
      goto LABEL_185;
    }

    v64 = *(v10 - 2);
    v22 = *(v10 - 1);
    v65 = *v10;
    v66 = *(v60 - 2);
    v67 = *(v60 - 1);
    v68 = *v60;
    if (!(v65 >> 6))
    {
      if (v68 >= 0x40)
      {
LABEL_150:
        sub_1D6007830(*(v60 - 2), *(v60 - 1), *v60);
        sub_1D6007830(v64, v22, v65);
        v81 = v64;
        v82 = v22;
        v83 = v65;
        goto LABEL_181;
      }

      if (v64 == v66 && v22 == v67)
      {
        sub_1D6007830(*(v10 - 2), *(v10 - 1), *v60);
        sub_1D6007830(v64, v22, v65);
        sub_1D6007850(v64, v22, v65);
        sub_1D6007850(v64, v22, v68);
      }

      else
      {
        v69 = sub_1D72646CC();
        sub_1D6007830(v66, v67, v68);
        sub_1D6007830(v64, v22, v65);
        sub_1D6007850(v64, v22, v65);
        sub_1D6007850(v66, v67, v68);
        if ((v69 & 1) == 0)
        {
          goto LABEL_18;
        }
      }

      if ((v65 ^ v68))
      {
        goto LABEL_18;
      }

      goto LABEL_26;
    }

    if (v65 >> 6 == 1)
    {
      if ((v68 & 0xC0) != 0x40)
      {
        goto LABEL_150;
      }

      switch(v22)
      {
        case 0:
          if (v67)
          {
            goto LABEL_177;
          }

          sub_1D6007830(*(v60 - 2), 0, *v60);
          sub_1D6007830(v66, 0, v68);
          sub_1D6007830(v64, 0, v65);
          sub_1D6007830(v66, 0, v68);
          sub_1D6007830(v64, 0, v65);
          sub_1D5CBA0FC(v64, 0);
          sub_1D5CBA0FC(v66, 0);
          sub_1D6007850(v64, 0, v65);
          sub_1D6007850(v66, 0, v68);
          sub_1D6007850(v66, 0, v68);
          sub_1D6007850(v64, 0, v65);
          sub_1D6007850(v66, 0, v68);
          v61 = v64;
          v62 = 0;
          goto LABEL_24;
        case 1:
          if (v67 != 1)
          {
            goto LABEL_177;
          }

          sub_1D6007830(*(v60 - 2), 1uLL, *v60);
          sub_1D6007830(v66, 1uLL, v68);
          sub_1D6007830(v64, 1uLL, v65);
          sub_1D6007830(v66, 1uLL, v68);
          sub_1D6007830(v64, 1uLL, v65);
          sub_1D5CBA0FC(v64, 1uLL);
          sub_1D5CBA0FC(v66, 1uLL);
          sub_1D6007850(v64, 1uLL, v65);
          sub_1D6007850(v66, 1uLL, v68);
          sub_1D6007850(v66, 1uLL, v68);
          sub_1D6007850(v64, 1uLL, v65);
          sub_1D6007850(v66, 1uLL, v68);
          v61 = v64;
          v62 = 1;
          goto LABEL_24;
        case 2:
          if (v67 != 2)
          {
            goto LABEL_177;
          }

          sub_1D6007830(*(v60 - 2), 2uLL, *v60);
          sub_1D6007830(v66, 2uLL, v68);
          sub_1D6007830(v64, 2uLL, v65);
          sub_1D6007830(v66, 2uLL, v68);
          sub_1D6007830(v64, 2uLL, v65);
          sub_1D5CBA0FC(v64, 2uLL);
          sub_1D5CBA0FC(v66, 2uLL);
          sub_1D6007850(v64, 2uLL, v65);
          sub_1D6007850(v66, 2uLL, v68);
          sub_1D6007850(v66, 2uLL, v68);
          sub_1D6007850(v64, 2uLL, v65);
          sub_1D6007850(v66, 2uLL, v68);
          v61 = v64;
          v62 = 2;
          goto LABEL_24;
        case 3:
          if (v67 != 3)
          {
            goto LABEL_177;
          }

          sub_1D6007830(*(v60 - 2), 3uLL, *v60);
          sub_1D6007830(v66, 3uLL, v68);
          sub_1D6007830(v64, 3uLL, v65);
          sub_1D6007830(v66, 3uLL, v68);
          sub_1D6007830(v64, 3uLL, v65);
          sub_1D5CBA0FC(v64, 3uLL);
          sub_1D5CBA0FC(v66, 3uLL);
          sub_1D6007850(v64, 3uLL, v65);
          sub_1D6007850(v66, 3uLL, v68);
          sub_1D6007850(v66, 3uLL, v68);
          sub_1D6007850(v64, 3uLL, v65);
          sub_1D6007850(v66, 3uLL, v68);
          v61 = v64;
          v62 = 3;
          goto LABEL_24;
        case 4:
          if (v67 != 4)
          {
            goto LABEL_177;
          }

          sub_1D6007830(*(v60 - 2), 4uLL, *v60);
          sub_1D6007830(v66, 4uLL, v68);
          sub_1D6007830(v64, 4uLL, v65);
          sub_1D6007830(v66, 4uLL, v68);
          sub_1D6007830(v64, 4uLL, v65);
          sub_1D5CBA0FC(v64, 4uLL);
          sub_1D5CBA0FC(v66, 4uLL);
          sub_1D6007850(v64, 4uLL, v65);
          sub_1D6007850(v66, 4uLL, v68);
          sub_1D6007850(v66, 4uLL, v68);
          sub_1D6007850(v64, 4uLL, v65);
          sub_1D6007850(v66, 4uLL, v68);
          v61 = v64;
          v62 = 4;
          goto LABEL_24;
        case 5:
          if (v67 != 5)
          {
            goto LABEL_177;
          }

          sub_1D6007830(*(v60 - 2), 5uLL, *v60);
          sub_1D6007830(v66, 5uLL, v68);
          sub_1D6007830(v64, 5uLL, v65);
          sub_1D6007830(v66, 5uLL, v68);
          sub_1D6007830(v64, 5uLL, v65);
          sub_1D5CBA0FC(v64, 5uLL);
          sub_1D5CBA0FC(v66, 5uLL);
          sub_1D6007850(v64, 5uLL, v65);
          sub_1D6007850(v66, 5uLL, v68);
          sub_1D6007850(v66, 5uLL, v68);
          sub_1D6007850(v64, 5uLL, v65);
          sub_1D6007850(v66, 5uLL, v68);
          v61 = v64;
          v62 = 5;
          goto LABEL_24;
        case 6:
          if (v67 != 6)
          {
            goto LABEL_177;
          }

          sub_1D6007830(*(v60 - 2), 6uLL, *v60);
          sub_1D6007830(v66, 6uLL, v68);
          sub_1D6007830(v64, 6uLL, v65);
          sub_1D6007830(v66, 6uLL, v68);
          sub_1D6007830(v64, 6uLL, v65);
          sub_1D5CBA0FC(v64, 6uLL);
          sub_1D5CBA0FC(v66, 6uLL);
          sub_1D6007850(v64, 6uLL, v65);
          sub_1D6007850(v66, 6uLL, v68);
          sub_1D6007850(v66, 6uLL, v68);
          sub_1D6007850(v64, 6uLL, v65);
          sub_1D6007850(v66, 6uLL, v68);
          v61 = v64;
          v62 = 6;
          goto LABEL_24;
        case 7:
          if (v67 != 7)
          {
            goto LABEL_177;
          }

          sub_1D6007830(*(v60 - 2), 7uLL, *v60);
          sub_1D6007830(v66, 7uLL, v68);
          sub_1D6007830(v64, 7uLL, v65);
          sub_1D6007830(v66, 7uLL, v68);
          sub_1D6007830(v64, 7uLL, v65);
          sub_1D5CBA0FC(v64, 7uLL);
          sub_1D5CBA0FC(v66, 7uLL);
          sub_1D6007850(v64, 7uLL, v65);
          sub_1D6007850(v66, 7uLL, v68);
          sub_1D6007850(v66, 7uLL, v68);
          sub_1D6007850(v64, 7uLL, v65);
          sub_1D6007850(v66, 7uLL, v68);
          v61 = v64;
          v62 = 7;
          goto LABEL_24;
        case 8:
          if (v67 != 8)
          {
            goto LABEL_177;
          }

          sub_1D6007830(*(v60 - 2), 8uLL, *v60);
          sub_1D6007830(v66, 8uLL, v68);
          sub_1D6007830(v64, 8uLL, v65);
          sub_1D6007830(v66, 8uLL, v68);
          sub_1D6007830(v64, 8uLL, v65);
          sub_1D5CBA0FC(v64, 8uLL);
          sub_1D5CBA0FC(v66, 8uLL);
          sub_1D6007850(v64, 8uLL, v65);
          sub_1D6007850(v66, 8uLL, v68);
          sub_1D6007850(v66, 8uLL, v68);
          sub_1D6007850(v64, 8uLL, v65);
          sub_1D6007850(v66, 8uLL, v68);
          v61 = v64;
          v62 = 8;
          goto LABEL_24;
        case 9:
          if (v67 != 9)
          {
            goto LABEL_177;
          }

          sub_1D6007830(*(v60 - 2), 9uLL, *v60);
          sub_1D6007830(v66, 9uLL, v68);
          sub_1D6007830(v64, 9uLL, v65);
          sub_1D6007830(v66, 9uLL, v68);
          sub_1D6007830(v64, 9uLL, v65);
          sub_1D5CBA0FC(v64, 9uLL);
          sub_1D5CBA0FC(v66, 9uLL);
          sub_1D6007850(v64, 9uLL, v65);
          sub_1D6007850(v66, 9uLL, v68);
          sub_1D6007850(v66, 9uLL, v68);
          sub_1D6007850(v64, 9uLL, v65);
          sub_1D6007850(v66, 9uLL, v68);
          v61 = v64;
          v62 = 9;
          goto LABEL_24;
        case 10:
          if (v67 != 10)
          {
            goto LABEL_177;
          }

          sub_1D6007830(*(v60 - 2), 0xAuLL, *v60);
          sub_1D6007830(v66, 0xAuLL, v68);
          sub_1D6007830(v64, 0xAuLL, v65);
          sub_1D6007830(v66, 0xAuLL, v68);
          sub_1D6007830(v64, 0xAuLL, v65);
          sub_1D5CBA0FC(v64, 0xAuLL);
          sub_1D5CBA0FC(v66, 0xAuLL);
          sub_1D6007850(v64, 0xAuLL, v65);
          sub_1D6007850(v66, 0xAuLL, v68);
          sub_1D6007850(v66, 0xAuLL, v68);
          sub_1D6007850(v64, 0xAuLL, v65);
          sub_1D6007850(v66, 0xAuLL, v68);
          v61 = v64;
          v62 = 10;
          goto LABEL_24;
        case 11:
          if (v67 != 11)
          {
            goto LABEL_177;
          }

          sub_1D6007830(*(v60 - 2), 0xBuLL, *v60);
          sub_1D6007830(v66, 0xBuLL, v68);
          sub_1D6007830(v64, 0xBuLL, v65);
          sub_1D6007830(v66, 0xBuLL, v68);
          sub_1D6007830(v64, 0xBuLL, v65);
          sub_1D5CBA0FC(v64, 0xBuLL);
          sub_1D5CBA0FC(v66, 0xBuLL);
          sub_1D6007850(v64, 0xBuLL, v65);
          sub_1D6007850(v66, 0xBuLL, v68);
          sub_1D6007850(v66, 0xBuLL, v68);
          sub_1D6007850(v64, 0xBuLL, v65);
          sub_1D6007850(v66, 0xBuLL, v68);
          v61 = v64;
          v62 = 11;
          goto LABEL_24;
        case 12:
          if (v67 != 12)
          {
            goto LABEL_177;
          }

          sub_1D6007830(*(v60 - 2), 0xCuLL, *v60);
          sub_1D6007830(v66, 0xCuLL, v68);
          sub_1D6007830(v64, 0xCuLL, v65);
          sub_1D6007830(v66, 0xCuLL, v68);
          sub_1D6007830(v64, 0xCuLL, v65);
          sub_1D5CBA0FC(v64, 0xCuLL);
          sub_1D5CBA0FC(v66, 0xCuLL);
          sub_1D6007850(v64, 0xCuLL, v65);
          sub_1D6007850(v66, 0xCuLL, v68);
          sub_1D6007850(v66, 0xCuLL, v68);
          sub_1D6007850(v64, 0xCuLL, v65);
          sub_1D6007850(v66, 0xCuLL, v68);
          v61 = v64;
          v62 = 12;
          goto LABEL_24;
        case 13:
          if (v67 != 13)
          {
            goto LABEL_177;
          }

          sub_1D6007830(*(v60 - 2), 0xDuLL, *v60);
          sub_1D6007830(v66, 0xDuLL, v68);
          sub_1D6007830(v64, 0xDuLL, v65);
          sub_1D6007830(v66, 0xDuLL, v68);
          sub_1D6007830(v64, 0xDuLL, v65);
          sub_1D5CBA0FC(v64, 0xDuLL);
          sub_1D5CBA0FC(v66, 0xDuLL);
          sub_1D6007850(v64, 0xDuLL, v65);
          sub_1D6007850(v66, 0xDuLL, v68);
          sub_1D6007850(v66, 0xDuLL, v68);
          sub_1D6007850(v64, 0xDuLL, v65);
          sub_1D6007850(v66, 0xDuLL, v68);
          v61 = v64;
          v62 = 13;
          goto LABEL_24;
        case 14:
          if (v67 != 14)
          {
            goto LABEL_177;
          }

          sub_1D6007830(*(v60 - 2), 0xEuLL, *v60);
          sub_1D6007830(v66, 0xEuLL, v68);
          sub_1D6007830(v64, 0xEuLL, v65);
          sub_1D6007830(v66, 0xEuLL, v68);
          sub_1D6007830(v64, 0xEuLL, v65);
          sub_1D5CBA0FC(v64, 0xEuLL);
          sub_1D5CBA0FC(v66, 0xEuLL);
          sub_1D6007850(v64, 0xEuLL, v65);
          sub_1D6007850(v66, 0xEuLL, v68);
          sub_1D6007850(v66, 0xEuLL, v68);
          sub_1D6007850(v64, 0xEuLL, v65);
          sub_1D6007850(v66, 0xEuLL, v68);
          v61 = v64;
          v62 = 14;
          goto LABEL_24;
        case 15:
          if (v67 != 15)
          {
            goto LABEL_177;
          }

          sub_1D6007830(*(v60 - 2), 0xFuLL, *v60);
          sub_1D6007830(v66, 0xFuLL, v68);
          sub_1D6007830(v64, 0xFuLL, v65);
          sub_1D6007830(v66, 0xFuLL, v68);
          sub_1D6007830(v64, 0xFuLL, v65);
          sub_1D5CBA0FC(v64, 0xFuLL);
          sub_1D5CBA0FC(v66, 0xFuLL);
          sub_1D6007850(v64, 0xFuLL, v65);
          sub_1D6007850(v66, 0xFuLL, v68);
          sub_1D6007850(v66, 0xFuLL, v68);
          sub_1D6007850(v64, 0xFuLL, v65);
          sub_1D6007850(v66, 0xFuLL, v68);
          v61 = v64;
          v62 = 15;
          goto LABEL_24;
        default:
          if (v67 < 0x10)
          {
            sub_1D6007830(*(v10 - 2), *(v10 - 1), *v10);
LABEL_177:
            sub_1D6007830(v66, v67, v68);
            sub_1D6007830(v66, v67, v68);
            sub_1D6007830(v64, v22, v65);
            sub_1D6007830(v66, v67, v68);
            sub_1D6007830(v64, v22, v65);
            sub_1D6007830(v66, v67, v68);
            sub_1D6007830(v64, v22, v65);
            sub_1D5CBA0FC(v64, v22);
            sub_1D5CBA0FC(v66, v67);
            sub_1D6007850(v64, v22, v65);
            sub_1D6007850(v66, v67, v68);
            sub_1D6007850(v66, v67, v68);
            sub_1D6007850(v64, v22, v65);
            sub_1D6007850(v66, v67, v68);
            sub_1D6007850(v64, v22, v65);
            goto LABEL_18;
          }

          if (v64 == v66 && v22 == v67)
          {
            sub_1D6007830(*(v10 - 2), *(v10 - 1), *v60);
            sub_1D6007830(v64, v22, v65);
            sub_1D6007830(v64, v22, v68);
            sub_1D6007830(v64, v22, v65);
            sub_1D6007830(v64, v22, v68);
            sub_1D6007830(v64, v22, v65);
            sub_1D6007830(v64, v22, v68);
            sub_1D6007830(v64, v22, v65);
            sub_1D5CBA0FC(v64, v22);
            sub_1D5CBA0FC(v64, v22);
            sub_1D6007850(v64, v22, v65);
            sub_1D6007850(v64, v22, v68);
            sub_1D6007850(v64, v22, v68);
            sub_1D6007850(v64, v22, v65);
            sub_1D6007850(v64, v22, v68);
            v61 = v64;
            v62 = v22;
LABEL_24:
            v63 = v65;
            goto LABEL_25;
          }

          v70 = sub_1D72646CC();
          sub_1D6007830(v66, v67, v68);
          sub_1D6007830(v64, v22, v65);
          sub_1D6007830(v66, v67, v68);
          sub_1D6007830(v64, v22, v65);
          sub_1D6007830(v66, v67, v68);
          sub_1D6007830(v64, v22, v65);
          sub_1D6007830(v66, v67, v68);
          sub_1D6007830(v64, v22, v65);
          sub_1D5CBA0FC(v64, v22);
          sub_1D5CBA0FC(v66, v67);
          sub_1D6007850(v64, v22, v65);
          sub_1D6007850(v66, v67, v68);
          sub_1D6007850(v66, v67, v68);
          sub_1D6007850(v64, v22, v65);
          sub_1D6007850(v66, v67, v68);
          sub_1D6007850(v64, v22, v65);
          if ((v70 & 1) == 0)
          {
            goto LABEL_18;
          }

          break;
      }

LABEL_26:
      ++v59;
      v60 += 24;
      v10 += 24;
      if (v132 == v59)
      {
        goto LABEL_129;
      }

      goto LABEL_27;
    }

    if (!(v22 | v64) && v65 == 128)
    {
      if ((v68 & 0xC0) != 0x80 || v67 | v66 || v68 != 128)
      {
        sub_1D6007830(*(v60 - 2), *(v60 - 1), *v60);
        v81 = 0;
        goto LABEL_180;
      }

      sub_1D6007850(0, 0, 0x80u);
      v61 = 0;
      goto LABEL_128;
    }

    if (v64 == 1 && !v22 && v65 == 128)
    {
      if ((v68 & 0xC0) != 0x80 || v66 != 1 || v67 || v68 != 128)
      {
        sub_1D6007830(*(v60 - 2), *(v60 - 1), *v60);
        v81 = 1;
        goto LABEL_180;
      }

      sub_1D6007850(1, 0, 0x80u);
      v61 = 1;
      goto LABEL_128;
    }

    if (v64 == 2 && !v22 && v65 == 128)
    {
      if ((v68 & 0xC0) != 0x80 || v66 != 2 || v67 || v68 != 128)
      {
        sub_1D6007830(*(v60 - 2), *(v60 - 1), *v60);
        v81 = 2;
        goto LABEL_180;
      }

      sub_1D6007850(2, 0, 0x80u);
      v61 = 2;
      goto LABEL_128;
    }

    if (v64 == 3 && !v22 && v65 == 128)
    {
      if ((v68 & 0xC0) != 0x80 || v66 != 3 || v67 || v68 != 128)
      {
        sub_1D6007830(*(v60 - 2), *(v60 - 1), *v60);
        v81 = 3;
        goto LABEL_180;
      }

      sub_1D6007850(3, 0, 0x80u);
      v61 = 3;
      goto LABEL_128;
    }

    if (v64 == 4 && !v22 && v65 == 128)
    {
      if ((v68 & 0xC0) != 0x80 || v66 != 4 || v67 || v68 != 128)
      {
        sub_1D6007830(*(v60 - 2), *(v60 - 1), *v60);
        v81 = 4;
        goto LABEL_180;
      }

      sub_1D6007850(4, 0, 0x80u);
      v61 = 4;
      goto LABEL_128;
    }

    if (v64 != 5 || v22 || v65 != 128)
    {
      if ((v68 & 0xC0) != 0x80 || v66 != 6 || v67 || v68 != 128)
      {
        sub_1D6007830(*(v60 - 2), *(v60 - 1), *v60);
        v81 = 6;
        goto LABEL_180;
      }

      sub_1D6007850(6, 0, 0x80u);
      v61 = 6;
LABEL_128:
      v62 = 0;
      v63 = 0x80;
LABEL_25:
      sub_1D6007850(v61, v62, v63);
      goto LABEL_26;
    }

    if ((v68 & 0xC0) == 0x80 && v66 == 5 && !v67 && v68 == 128)
    {
      sub_1D6007850(5, 0, 0x80u);
      v61 = 5;
      goto LABEL_128;
    }

    sub_1D6007830(*(v60 - 2), *(v60 - 1), *v60);
    v81 = 5;
LABEL_180:
    v82 = 0;
    v83 = 0x80;
LABEL_181:
    sub_1D6007850(v81, v82, v83);
    sub_1D6007850(v66, v67, v68);
LABEL_18:
    v54 = v129;
    sub_1D5BF1AEC(v129, type metadata accessor for FormatDerivedDataResultOptionReference);
    a2 = (v130 + 1) & v125;
    if (((*(v127 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
    {
      goto LABEL_182;
    }
  }

  __break(1u);
LABEL_185:
  __break(1u);
LABEL_186:
  __break(1u);
LABEL_187:
  sub_1D5BF1AEC(v10, sub_1D60077D8);
LABEL_188:
  sub_1D5BF1AEC(v22, type metadata accessor for FormatDerivedDataOptionReferenceResolution);
  sub_1D5BF1AEC(v129, type metadata accessor for FormatDerivedDataResultOptionReference);
  result = sub_1D726492C();
  __break(1u);
  return result;
}

void sub_1D5FFC77C(uint64_t result, uint64_t a2, unsigned __int8 a3, unint64_t a4, char a5)
{
  v6 = v5;
  v11 = *(*v5 + 16);
  v12 = *(*v5 + 24);
  if (v12 > v11 && (a5 & 1) != 0)
  {
    goto LABEL_49;
  }

  if (a5)
  {
    sub_1D5FF3F34(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_1D6000A30(&qword_1EC882250, sub_1D6007730, &type metadata for FormatDerivedDataOptionScope, sub_1D6007700);
      goto LABEL_49;
    }

    sub_1D600427C(v11 + 1);
  }

  v13 = *v5;
  sub_1D7264A0C();
  if (a3 > 2u)
  {
    if (a3 == 3)
    {
      v14 = 4;
    }

    else
    {
      if (a3 != 4)
      {
        MEMORY[0x1DA6FC0B0](0);
        goto LABEL_19;
      }

      v14 = 5;
    }
  }

  else if (a3)
  {
    if (a3 == 1)
    {
      v14 = 2;
    }

    else
    {
      v14 = 3;
    }
  }

  else
  {
    v14 = 1;
  }

  MEMORY[0x1DA6FC0B0](v14);
  sub_1D72621EC();
LABEL_19:
  v15 = sub_1D7264A5C();
  v16 = v13 + 56;
  v17 = -1 << *(v13 + 32);
  a4 = v15 & ~v17;
  if (((*(v13 + 56 + ((a4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a4) & 1) == 0)
  {
    goto LABEL_49;
  }

  v18 = ~v17;
  v19 = *(v13 + 48);
  v21 = a3 == 5 && (a2 | result) == 0;
  while (1)
  {
    v22 = (v19 + 24 * a4);
    v23 = *v22;
    v24 = v22[1];
    v25 = *(v22 + 16);
    if (v25 <= 2)
    {
      break;
    }

    if (v25 == 3)
    {
      if (a3 == 3)
      {
        goto LABEL_43;
      }
    }

    else if (v25 == 4)
    {
      if (a3 == 4)
      {
        goto LABEL_43;
      }
    }

    else if (v21)
    {
      goto LABEL_48;
    }

LABEL_28:
    a4 = (a4 + 1) & v18;
    if (((*(v16 + ((a4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a4) & 1) == 0)
    {
      goto LABEL_49;
    }
  }

  if (!v25)
  {
    if (!a3)
    {
      goto LABEL_43;
    }

    goto LABEL_28;
  }

  if (v25 == 1)
  {
    if (a3 == 1)
    {
      goto LABEL_43;
    }

    goto LABEL_28;
  }

  if (a3 != 2)
  {
    goto LABEL_28;
  }

LABEL_43:
  v26 = v23 == result && v24 == a2;
  if (!v26 && (sub_1D72646CC() & 1) == 0)
  {
    goto LABEL_28;
  }

LABEL_48:
  sub_1D726492C();
  __break(1u);
LABEL_49:
  v27 = *v6;
  *(*v6 + 8 * (a4 >> 6) + 56) |= 1 << a4;
  v28 = *(v27 + 48) + 24 * a4;
  *v28 = result;
  *(v28 + 8) = a2;
  *(v28 + 16) = a3;
  v29 = *(v27 + 16);
  v30 = __OFADD__(v29, 1);
  v31 = v29 + 1;
  if (v30)
  {
    __break(1u);
  }

  else
  {
    *(v27 + 16) = v31;
  }
}

uint64_t sub_1D5FFCA38(uint64_t a1, unint64_t a2, char a3)
{
  v83 = a1;
  v6 = type metadata accessor for GenericDataVisualization(0);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v80 = (&v69 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = type metadata accessor for WebEmbedDataVisualization(0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v69 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = (&v69 - v15);
  v72 = type metadata accessor for WebEmbedDatastoreCacheKey(0);
  v70 = *(v72 - 8);
  MEMORY[0x1EEE9AC00](v72, v17);
  v19 = &v69 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1D72585BC();
  v71 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20, v21);
  v87 = &v69 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23, v24);
  v26 = &v69 - v25;
  MEMORY[0x1EEE9AC00](v27, v28);
  v30 = &v69 - v29;
  v31 = *(*v3 + 16);
  v32 = *(*v3 + 24);
  v69 = v3;
  if (v32 > v31 && (a3 & 1) != 0)
  {
    goto LABEL_33;
  }

  v76 = v12;
  if (a3)
  {
    sub_1D5BD590C(v31 + 1, type metadata accessor for WebEmbedDatastoreCacheKey, sub_1D6007230, type metadata accessor for WebEmbedDatastoreCacheKey, sub_1D5FF709C);
  }

  else
  {
    if (v32 > v31)
    {
      sub_1D6001500(type metadata accessor for WebEmbedDatastoreCacheKey, sub_1D6007230, type metadata accessor for WebEmbedDatastoreCacheKey, type metadata accessor for WebEmbedDatastoreCacheKey);
      goto LABEL_33;
    }

    sub_1D5C0F230(v31 + 1, type metadata accessor for WebEmbedDatastoreCacheKey, sub_1D6007230, type metadata accessor for WebEmbedDatastoreCacheKey, sub_1D5FF709C);
  }

  v79 = *v3;
  sub_1D7264A0C();
  WebEmbedDataVisualization.identifier.getter();
  sub_1D72621EC();

  v33 = sub_1D6D28818();
  MEMORY[0x1DA6FC0B0](*(v33 + 16));
  v34 = *(v33 + 16);
  v77 = v16;
  v78 = v9;
  v81 = v19;
  if (v34)
  {
    v86 = v26;
    v35 = *(v71 + 16);
    v36 = v33 + ((*(v71 + 80) + 32) & ~*(v71 + 80));
    v37 = *(v71 + 72);
    v38 = (v71 + 8);
    do
    {
      v35(v30, v36, v20);
      sub_1D5D51EB4(&qword_1EDF3C3E0, 255, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
      sub_1D7261E8C();
      (*v38)(v30, v20);
      v36 += v37;
      --v34;
    }

    while (v34);

    v16 = v77;
    v19 = v81;
    v26 = v86;
  }

  else
  {
  }

  v39 = sub_1D7264A5C();
  v40 = -1 << *(v79 + 32);
  a2 = v39 & ~v40;
  v75 = v79 + 56;
  if ((*(v79 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v73 = ~v40;
    v74 = *(v70 + 72);
    v85 = (v71 + 8);
    v86 = (v71 + 16);
    do
    {
      sub_1D5BE7354(*(v79 + 48) + v74 * a2, v19, type metadata accessor for WebEmbedDatastoreCacheKey);
      sub_1D5BE7354(v19, v16, type metadata accessor for WebEmbedDataVisualization);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v82 = a2;
      if (EnumCaseMultiPayload == 1)
      {
        v42 = v80;
        sub_1D5BE7424(v16, v80, type metadata accessor for GenericDataVisualization);
        v89 = 0x3A636972656E6567;
        v90 = 0xE90000000000003ALL;
        MEMORY[0x1DA6F9910](*v42, v42[1]);
        v44 = v89;
        v43 = v90;
        sub_1D5BF1AEC(v42, type metadata accessor for GenericDataVisualization);
      }

      else
      {
        v88 = *v16;
        v89 = 0x3A3A7374726F7073;
        v90 = 0xE800000000000000;
        v45 = SportsDataVisualization.identifier.getter();
        MEMORY[0x1DA6F9910](v45);

        v44 = v89;
        v43 = v90;
      }

      v46 = v76;
      sub_1D5BE7354(v83, v76, type metadata accessor for WebEmbedDataVisualization);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v47 = v80;
        sub_1D5BE7424(v46, v80, type metadata accessor for GenericDataVisualization);
        v89 = 0x3A636972656E6567;
        v90 = 0xE90000000000003ALL;
        MEMORY[0x1DA6F9910](*v47, v47[1]);
        v49 = v89;
        v48 = v90;
        sub_1D5BF1AEC(v47, type metadata accessor for GenericDataVisualization);
        if (v44 != v49)
        {
          goto LABEL_25;
        }
      }

      else
      {
        v88 = *v46;
        v89 = 0x3A3A7374726F7073;
        v90 = 0xE800000000000000;
        v50 = SportsDataVisualization.identifier.getter();
        MEMORY[0x1DA6F9910](v50);

        v48 = v90;
        if (v44 != v89)
        {
          goto LABEL_25;
        }
      }

      if (v43 != v48)
      {
LABEL_25:
        v51 = sub_1D72646CC();

        if ((v51 & 1) == 0)
        {
          goto LABEL_15;
        }

        goto LABEL_26;
      }

LABEL_26:
      v52 = *(v72 + 20);
      v53 = *&v81[v52];
      v54 = *(v83 + v52);
      a2 = *(v53 + 16);
      if (a2 == *(v54 + 16))
      {
        if (!a2 || v53 == v54)
        {
LABEL_32:
          sub_1D5BF1AEC(v81, type metadata accessor for WebEmbedDatastoreCacheKey);
          sub_1D726492C();
          __break(1u);
          break;
        }

        v55 = (*(v71 + 80) + 32) & ~*(v71 + 80);
        v56 = v53 + v55;
        v57 = v54 + v55;
        v84 = *(v71 + 72);
        v58 = *(v71 + 16);
        while (1)
        {
          v58(v26, v56, v20);
          v59 = v26;
          v60 = v87;
          v58(v87, v57, v20);
          sub_1D5D51EB4(&unk_1EDF45B60, 255, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC8]);
          v61 = sub_1D7261FBC();
          v62 = *v85;
          v63 = v60;
          v26 = v59;
          (*v85)(v63, v20);
          v62(v59, v20);
          if ((v61 & 1) == 0)
          {
            break;
          }

          v57 += v84;
          v56 += v84;
          if (!--a2)
          {
            goto LABEL_32;
          }
        }
      }

LABEL_15:
      v19 = v81;
      sub_1D5BF1AEC(v81, type metadata accessor for WebEmbedDatastoreCacheKey);
      a2 = (v82 + 1) & v73;
      v16 = v77;
    }

    while (((*(v75 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_33:
  v64 = *v69;
  *(*v69 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = sub_1D5BE7424(v83, *(v64 + 48) + *(v70 + 72) * a2, type metadata accessor for WebEmbedDatastoreCacheKey);
  v66 = *(v64 + 16);
  v67 = __OFADD__(v66, 1);
  v68 = v66 + 1;
  if (v67)
  {
    __break(1u);
  }

  else
  {
    *(v64 + 16) = v68;
  }

  return result;
}

void sub_1D5FFD410(unsigned __int8 a1, unint64_t a2, char a3)
{
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_50;
  }

  if (a3)
  {
    sub_1D5FF421C(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      sub_1D60005D8(&qword_1EDF042F8, sub_1D5C95CB4, &type metadata for FormatButtonNodeState);
      goto LABEL_50;
    }

    sub_1D600453C(v5 + 1);
  }

  v7 = 0x64656C6261736964;
  v8 = *v3;
  sub_1D7264A0C();
  sub_1D72621EC();

  v9 = sub_1D7264A5C();
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  v33 = v8 + 56;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v32 = ~v10;
    do
    {
      v11 = *(*(v8 + 48) + a2);
      v12 = v11 == 2 ? 0x6867696C68676968 : 0x64657463656C6573;
      v13 = v11 == 2 ? 0xEB00000000646574 : 0xE800000000000000;
      v14 = *(*(v8 + 48) + a2) ? 0x64657375636F66 : v7;
      v15 = *(*(v8 + 48) + a2) ? 0xE700000000000000 : 0xE800000000000000;
      v16 = *(*(v8 + 48) + a2) <= 1u ? v14 : v12;
      v17 = *(*(v8 + 48) + a2) <= 1u ? v15 : v13;
      v18 = a1 == 2 ? 0x6867696C68676968 : 0x64657463656C6573;
      v19 = a1 == 2 ? 0xEB00000000646574 : 0xE800000000000000;
      v20 = v7;
      v21 = a1 ? 0x64657375636F66 : v7;
      v22 = a1 ? 0xE700000000000000 : 0xE800000000000000;
      v23 = a1 <= 1u ? v21 : v18;
      v24 = a1 <= 1u ? v22 : v19;
      v25 = v8;
      if (v16 == v23 && v17 == v24)
      {
        goto LABEL_53;
      }

      v26 = sub_1D72646CC();

      if (v26)
      {
        goto LABEL_54;
      }

      a2 = (a2 + 1) & v32;
      v7 = v20;
      v8 = v25;
    }

    while (((*(v33 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_50:
  v27 = *v31;
  *(*v31 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v27 + 48) + a2) = a1;
  v28 = *(v27 + 16);
  v29 = __OFADD__(v28, 1);
  v30 = v28 + 1;
  if (!v29)
  {
    *(v27 + 16) = v30;
    return;
  }

  __break(1u);
LABEL_53:

LABEL_54:
  sub_1D726492C();
  __break(1u);
}

void sub_1D5FFD714(uint64_t a1, unint64_t a2, char a3)
{
  v5 = a1;
  v6 = a1 & 0x100;
  v7 = *(*v3 + 16);
  v8 = *(*v3 + 24);
  v37 = BYTE1(a1) & 1;
  if (v8 <= v7 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_1D5FF4500(v7 + 1);
    }

    else
    {
      if (v8 > v7)
      {
        sub_1D6000C1C();
        goto LABEL_125;
      }

      sub_1D60047F0(v7 + 1);
    }

    v9 = 0x70616373646E616CLL;
    v10 = *v3;
    sub_1D7264A0C();
    sub_1D6E23ADC(v5);
    sub_1D72621EC();

    if (v6)
    {
      v11 = 0xE900000000000065;
    }

    else
    {
      v9 = 0x7469617274726F70;
      v11 = 0xE800000000000000;
    }

    sub_1D72621EC();

    v12 = sub_1D7264A5C();
    v13 = -1 << *(v10 + 32);
    a2 = v12 & ~v13;
    if ((*(v10 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v38 = ~v13;
      v14 = 0x7258656E6F685069;
      while (1)
      {
        v15 = (*(v10 + 48) + 2 * a2);
        v16 = v15[1];
        v17 = 0xE800000000000000;
        v18 = v14;
        switch(*v15)
        {
          case 1:
            v18 = 0x7358656E6F685069;
            break;
          case 2:
            v18 = 0x7358656E6F685069;
            v17 = 0xEB0000000078614DLL;
            break;
          case 3:
            v18 = 0x4553656E6F685069;
            break;
          case 4:
            v18 = 0x3131656E6F685069;
            break;
          case 5:
            v18 = 0x3131656E6F685069;
            goto LABEL_38;
          case 6:
            v18 = 0x3131656E6F685069;
            goto LABEL_52;
          case 7:
            v18 = 0x3231656E6F685069;
            break;
          case 8:
            v18 = 0x3231656E6F685069;
            goto LABEL_43;
          case 9:
            v18 = 0x3231656E6F685069;
            goto LABEL_38;
          case 0xA:
            v18 = 0x3231656E6F685069;
            goto LABEL_52;
          case 0xB:
            v18 = 0x3331656E6F685069;
            break;
          case 0xC:
            v18 = 0x3331656E6F685069;
LABEL_43:
            v17 = 0xEC000000696E694DLL;
            break;
          case 0xD:
            v18 = 0x3331656E6F685069;
            goto LABEL_38;
          case 0xE:
            v18 = 0x3331656E6F685069;
            goto LABEL_52;
          case 0xF:
            v18 = 0x3431656E6F685069;
            break;
          case 0x10:
            v18 = 0x3431656E6F685069;
            goto LABEL_34;
          case 0x11:
            v18 = 0x3431656E6F685069;
            goto LABEL_38;
          case 0x12:
            v18 = 0x3431656E6F685069;
            goto LABEL_52;
          case 0x13:
            v18 = 0x3531656E6F685069;
            break;
          case 0x14:
            v18 = 0x3531656E6F685069;
            goto LABEL_34;
          case 0x15:
            v18 = 0x3531656E6F685069;
            goto LABEL_38;
          case 0x16:
            v18 = 0x3531656E6F685069;
            goto LABEL_52;
          case 0x17:
            v18 = 0x3631656E6F685069;
            break;
          case 0x18:
            v18 = 0x3631656E6F685069;
LABEL_34:
            v17 = 0xEC00000073756C50;
            break;
          case 0x19:
            v18 = 0x3631656E6F685069;
LABEL_38:
            v17 = 0xEB000000006F7250;
            break;
          case 0x1A:
            v18 = 0x3631656E6F685069;
LABEL_52:
            v17 = 0xEE0078614D6F7250;
            break;
          case 0x1B:
            v17 = 0xE400000000000000;
            v18 = 1684099177;
            break;
          case 0x1C:
            v17 = 0xE700000000000000;
            v18 = 0x72694164615069;
            break;
          case 0x1D:
            v18 = 0x696E694D64615069;
            break;
          case 0x1E:
            v18 = 0x5F6F725064615069;
            v17 = 0xEC000000355F3031;
            break;
          case 0x1F:
            v18 = 0x5F6F725064615069;
            v17 = 0xEA00000000003131;
            break;
          case 0x20:
            v18 = 0x5F6F725064615069;
            v17 = 0xEC000000395F3231;
            break;
          case 0x21:
            v17 = 0xE300000000000000;
            v18 = 6513005;
            break;
          case 0x22:
            v18 = 0x6465727265666E69;
            break;
          default:
            break;
        }

        v19 = 0xE800000000000000;
        v20 = v14;
        switch(v5)
        {
          case 1:
            if (v18 == 0x7358656E6F685069)
            {
              goto LABEL_108;
            }

            goto LABEL_112;
          case 2:
            v23 = 0x7358656E6F685069;
            v24 = 7889229;
            goto LABEL_88;
          case 3:
            if (v18 != 0x4553656E6F685069)
            {
              goto LABEL_112;
            }

            goto LABEL_108;
          case 4:
            if (v18 != 0x3131656E6F685069)
            {
              goto LABEL_112;
            }

            goto LABEL_108;
          case 5:
            v23 = 0x3131656E6F685069;
            goto LABEL_87;
          case 6:
            v22 = 0x3131656E6F685069;
            goto LABEL_111;
          case 7:
            if (v18 != 0x3231656E6F685069)
            {
              goto LABEL_112;
            }

            goto LABEL_108;
          case 8:
            v21 = 0x3231656E6F685069;
            goto LABEL_94;
          case 9:
            v23 = 0x3231656E6F685069;
            goto LABEL_87;
          case 10:
            v22 = 0x3231656E6F685069;
            goto LABEL_111;
          case 11:
            if (v18 != 0x3331656E6F685069)
            {
              goto LABEL_112;
            }

            goto LABEL_108;
          case 12:
            v21 = 0x3331656E6F685069;
LABEL_94:
            v25 = 1768843597;
            goto LABEL_97;
          case 13:
            v23 = 0x3331656E6F685069;
            goto LABEL_87;
          case 14:
            v22 = 0x3331656E6F685069;
            goto LABEL_111;
          case 15:
            if (v18 != 0x3431656E6F685069)
            {
              goto LABEL_112;
            }

            goto LABEL_108;
          case 16:
            v21 = 0x3431656E6F685069;
            goto LABEL_83;
          case 17:
            v23 = 0x3431656E6F685069;
            goto LABEL_87;
          case 18:
            v22 = 0x3431656E6F685069;
            goto LABEL_111;
          case 19:
            if (v18 != 0x3531656E6F685069)
            {
              goto LABEL_112;
            }

            goto LABEL_108;
          case 20:
            v21 = 0x3531656E6F685069;
            goto LABEL_83;
          case 21:
            v23 = 0x3531656E6F685069;
            goto LABEL_87;
          case 22:
            v22 = 0x3531656E6F685069;
            goto LABEL_111;
          case 23:
            if (v18 != 0x3631656E6F685069)
            {
              goto LABEL_112;
            }

            goto LABEL_108;
          case 24:
            v21 = 0x3631656E6F685069;
LABEL_83:
            v25 = 1937075280;
            goto LABEL_97;
          case 25:
            v23 = 0x3631656E6F685069;
LABEL_87:
            v24 = 7303760;
LABEL_88:
            v19 = v24 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
            if (v18 != v23)
            {
              goto LABEL_112;
            }

            goto LABEL_108;
          case 26:
            v22 = 0x3631656E6F685069;
LABEL_111:
            v19 = 0xEE0078614D6F7250;
            if (v18 != v22)
            {
              goto LABEL_112;
            }

            goto LABEL_108;
          case 27:
            v19 = 0xE400000000000000;
            if (v18 != 1684099177)
            {
              goto LABEL_112;
            }

            goto LABEL_108;
          case 28:
            v19 = 0xE700000000000000;
            if (v18 != 0x72694164615069)
            {
              goto LABEL_112;
            }

            goto LABEL_108;
          case 29:
            v14 = 0x696E694D64615069;
            goto LABEL_107;
          case 30:
            v21 = 0x5F6F725064615069;
            v25 = 895430705;
            goto LABEL_97;
          case 31:
            v19 = 0xEA00000000003131;
            if (v18 != 0x5F6F725064615069)
            {
              goto LABEL_112;
            }

            goto LABEL_108;
          case 32:
            v21 = 0x5F6F725064615069;
            v25 = 962540081;
LABEL_97:
            v19 = v25 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
            if (v18 != v21)
            {
              goto LABEL_112;
            }

            goto LABEL_108;
          case 33:
            v19 = 0xE300000000000000;
            if (v18 != 6513005)
            {
              goto LABEL_112;
            }

            goto LABEL_108;
          case 34:
            if (v18 != 0x6465727265666E69)
            {
              goto LABEL_112;
            }

            goto LABEL_108;
          default:
LABEL_107:
            if (v18 != v14)
            {
              goto LABEL_112;
            }

LABEL_108:
            if (v17 == v19)
            {
            }

            else
            {
LABEL_112:
              v26 = sub_1D72646CC();

              if ((v26 & 1) == 0)
              {
                goto LABEL_13;
              }
            }

            if (v16)
            {
              v27 = 0x70616373646E616CLL;
            }

            else
            {
              v27 = 0x7469617274726F70;
            }

            if (v16)
            {
              v28 = 0xE900000000000065;
            }

            else
            {
              v28 = 0xE800000000000000;
            }

            if (v27 == v9 && v28 == v11)
            {
              goto LABEL_128;
            }

            v30 = sub_1D72646CC();

            if (v30)
            {
              goto LABEL_129;
            }

LABEL_13:
            a2 = (a2 + 1) & v38;
            v14 = v20;
            if (((*(v10 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
            {
              goto LABEL_125;
            }

            break;
        }
      }
    }
  }

LABEL_125:
  v31 = *v36;
  *(*v36 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  v32 = (*(v31 + 48) + 2 * a2);
  *v32 = v5;
  v32[1] = v37;
  v33 = *(v31 + 16);
  v34 = __OFADD__(v33, 1);
  v35 = v33 + 1;
  if (v34)
  {
    __break(1u);
LABEL_128:

LABEL_129:
    sub_1D726492C();
    __break(1u);
  }

  else
  {
    *(v31 + 16) = v35;
  }
}

void sub_1D5FFE0A4(unsigned __int8 a1, unint64_t a2, char a3)
{
  v4 = v3;
  v7 = *(*v3 + 16);
  v8 = *(*v3 + 24);
  if (v8 <= v7 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_1D5FF47E4(v7 + 1);
    }

    else
    {
      if (v8 > v7)
      {
        sub_1D6000D88();
        goto LABEL_74;
      }

      sub_1D6004AA4(v7 + 1);
    }

    v9 = *v3;
    sub_1D7264A0C();
    if (a1 == 12)
    {
      MEMORY[0x1DA6FC0B0](0);
    }

    else
    {
      MEMORY[0x1DA6FC0B0](1);
      FormatOptionType.rawValue.getter();
      sub_1D72621EC();
    }

    v10 = sub_1D7264A5C();
    v11 = -1 << *(v9 + 32);
    a2 = v10 & ~v11;
    if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v12 = ~v11;
      do
      {
        v13 = *(*(v9 + 48) + a2);
        if (v13 == 12)
        {
          if (a1 == 12)
          {
            goto LABEL_78;
          }
        }

        else if (a1 != 12)
        {
          if (*(*(v9 + 48) + a2) > 5u)
          {
            if (*(*(v9 + 48) + a2) > 8u)
            {
              if (v13 == 9)
              {
                v15 = 0xE500000000000000;
                v14 = 0x6F65646976;
              }

              else if (v13 == 10)
              {
                v15 = 0xE400000000000000;
                v14 = 1953394534;
              }

              else
              {
                v14 = 0x616C506F65646976;
                v15 = 0xEB00000000726579;
              }
            }

            else if (v13 == 6)
            {
              v15 = 0xE300000000000000;
              v14 = 7107189;
            }

            else
            {
              v15 = 0xE500000000000000;
              if (v13 == 7)
              {
                v14 = 0x726F6C6F63;
              }

              else
              {
                v14 = 0x6567616D69;
              }
            }
          }

          else if (*(*(v9 + 48) + a2) > 2u)
          {
            if (v13 == 3)
            {
              v15 = 0xE500000000000000;
              v14 = 0x74616F6C66;
            }

            else if (v13 == 4)
            {
              v15 = 0xE700000000000000;
              v14 = 0x72656765746E69;
            }

            else
            {
              v15 = 0xE600000000000000;
              v14 = 0x676E69727473;
            }
          }

          else if (*(*(v9 + 48) + a2))
          {
            if (v13 == 1)
            {
              v14 = 1702125924;
            }

            else
            {
              v14 = 1836412517;
            }

            v15 = 0xE400000000000000;
          }

          else
          {
            v15 = 0xE700000000000000;
            v14 = 0x6E61656C6F6F62;
          }

          if (a1 > 5u)
          {
            v16 = 0x616C506F65646976;
            if (a1 == 10)
            {
              v16 = 1953394534;
            }

            v17 = 0xEB00000000726579;
            if (a1 == 10)
            {
              v17 = 0xE400000000000000;
            }

            if (a1 == 9)
            {
              v16 = 0x6F65646976;
              v17 = 0xE500000000000000;
            }

            v18 = 0x726F6C6F63;
            if (a1 != 7)
            {
              v18 = 0x6567616D69;
            }

            v19 = 0xE500000000000000;
            if (a1 == 6)
            {
              v18 = 7107189;
              v19 = 0xE300000000000000;
            }

            v20 = a1 <= 8u;
          }

          else
          {
            v16 = 0x72656765746E69;
            if (a1 != 4)
            {
              v16 = 0x676E69727473;
            }

            v17 = 0xE600000000000000;
            if (a1 == 4)
            {
              v17 = 0xE700000000000000;
            }

            if (a1 == 3)
            {
              v16 = 0x74616F6C66;
              v17 = 0xE500000000000000;
            }

            v18 = 1836412517;
            if (a1 == 1)
            {
              v18 = 1702125924;
            }

            v19 = 0xE400000000000000;
            if (!a1)
            {
              v18 = 0x6E61656C6F6F62;
              v19 = 0xE700000000000000;
            }

            v20 = a1 <= 2u;
          }

          if (v20)
          {
            v21 = v18;
          }

          else
          {
            v21 = v16;
          }

          if (v20)
          {
            v22 = v19;
          }

          else
          {
            v22 = v17;
          }

          if (v14 == v21 && v15 == v22)
          {
            goto LABEL_77;
          }

          v23 = sub_1D72646CC();

          if (v23)
          {
            goto LABEL_78;
          }
        }

        a2 = (a2 + 1) & v12;
      }

      while (((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
    }
  }

LABEL_74:
  v24 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v24 + 48) + a2) = a1;
  v25 = *(v24 + 16);
  v26 = __OFADD__(v25, 1);
  v27 = v25 + 1;
  if (v26)
  {
    __break(1u);
LABEL_77:

LABEL_78:
    sub_1D726492C();
    __break(1u);
  }

  else
  {
    *(v24 + 16) = v27;
  }
}

void sub_1D5FFE51C(unsigned __int8 a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_51;
  }

  if (a3)
  {
    sub_1D5FF4BB0(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      sub_1D60005D8(&qword_1EC882288, sub_1D60079B8, &type metadata for FormatPackageRole);
      goto LABEL_51;
    }

    sub_1D6004E40(v6 + 1);
  }

  v8 = *v3;
  v9 = sub_1D6953BC0(*(*v3 + 40), a1);
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    do
    {
      v12 = *(*(v8 + 48) + a2);
      if (v12 <= 2)
      {
        if (*(*(v8 + 48) + a2))
        {
          if (v12 == 1)
          {
            v13 = 0x726564616568;
          }

          else
          {
            v13 = 0x7265746F6F66;
          }

          v14 = 0xE600000000000000;
        }

        else
        {
          v14 = 0xE600000000000000;
          v13 = 0x74756F79616CLL;
        }
      }

      else if (*(*(v8 + 48) + a2) > 4u)
      {
        if (v12 == 5)
        {
          v14 = 0xE700000000000000;
          v13 = 0x7972617262696CLL;
        }

        else
        {
          v13 = 0x756F72676B636162;
          v14 = 0xEA0000000000646ELL;
        }
      }

      else
      {
        if (v12 == 3)
        {
          v13 = 0x6C6C6177796170;
        }

        else
        {
          v13 = 0x656D656874;
        }

        if (v12 == 3)
        {
          v14 = 0xE700000000000000;
        }

        else
        {
          v14 = 0xE500000000000000;
        }
      }

      v15 = 0x756F72676B636162;
      if (a1 == 5)
      {
        v15 = 0x7972617262696CLL;
      }

      v16 = 0xEA0000000000646ELL;
      if (a1 == 5)
      {
        v16 = 0xE700000000000000;
      }

      v17 = 0x6C6C6177796170;
      if (a1 != 3)
      {
        v17 = 0x656D656874;
      }

      v18 = 0xE500000000000000;
      if (a1 == 3)
      {
        v18 = 0xE700000000000000;
      }

      if (a1 <= 4u)
      {
        v15 = v17;
        v16 = v18;
      }

      v19 = 0x7265746F6F66;
      if (a1 == 1)
      {
        v19 = 0x726564616568;
      }

      if (!a1)
      {
        v19 = 0x74756F79616CLL;
      }

      v20 = a1 <= 2u ? v19 : v15;
      v21 = a1 <= 2u ? 0xE600000000000000 : v16;
      if (v13 == v20 && v14 == v21)
      {
        goto LABEL_54;
      }

      v22 = sub_1D72646CC();

      if (v22)
      {
        goto LABEL_55;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_51:
  v23 = *v27;
  *(*v27 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v23 + 48) + a2) = a1;
  v24 = *(v23 + 16);
  v25 = __OFADD__(v24, 1);
  v26 = v24 + 1;
  if (!v25)
  {
    *(v23 + 16) = v26;
    return;
  }

  __break(1u);
LABEL_54:

LABEL_55:
  sub_1D726492C();
  __break(1u);
}

void sub_1D5FFE83C(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, char a5)
{
  v6 = v5;
  v8 = a3;
  v11 = *(*v5 + 16);
  v12 = *(*v5 + 24);
  if (v12 > v11 && (a5 & 1) != 0)
  {
    goto LABEL_42;
  }

  if (a5)
  {
    sub_1D5FF4EDC(v11 + 1, &qword_1EC882248, sub_1D60076AC, &type metadata for FormatFileKey);
  }

  else
  {
    if (v12 > v11)
    {
      sub_1D6000A30(&qword_1EC882248, sub_1D60076AC, &type metadata for FormatFileKey, sub_1D600767C);
      goto LABEL_42;
    }

    sub_1D600513C(v11 + 1, &qword_1EC882248, sub_1D60076AC, &type metadata for FormatFileKey);
  }

  v13 = *v5;
  sub_1D7264A0C();
  sub_1D6BE3D70(v26, result, a2, v8);
  v14 = sub_1D7264A5C();
  v15 = v13 + 56;
  v16 = -1 << *(v13 + 32);
  a4 = v14 & ~v16;
  if ((*(v13 + 56 + ((a4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a4))
  {
    v17 = ~v16;
    v18 = *(v13 + 48);
    while (1)
    {
      v19 = v18 + 24 * a4;
      switch(*(v19 + 16))
      {
        case 1:
          if (v8 != 1)
          {
            goto LABEL_11;
          }

          goto LABEL_36;
        case 2:
          if (v8 == 2)
          {
            goto LABEL_36;
          }

          goto LABEL_11;
        case 3:
          if (v8 == 3)
          {
            goto LABEL_36;
          }

          goto LABEL_11;
        case 4:
          if (v8 == 4)
          {
            goto LABEL_36;
          }

          goto LABEL_11;
        case 5:
          if (v8 == 5)
          {
            goto LABEL_36;
          }

          goto LABEL_11;
        case 6:
          if (v8 == 6)
          {
            goto LABEL_36;
          }

          goto LABEL_11;
        case 7:
          if (v8 == 7)
          {
            goto LABEL_36;
          }

          goto LABEL_11;
        case 8:
          if (v8 == 8)
          {
            goto LABEL_36;
          }

          goto LABEL_11;
        case 9:
          if (v8 == 9)
          {
            goto LABEL_36;
          }

          goto LABEL_11;
        case 0xA:
          if (v8 == 10)
          {
            goto LABEL_36;
          }

          goto LABEL_11;
        case 0xB:
          if (v8 == 11)
          {
            goto LABEL_36;
          }

          goto LABEL_11;
        case 0xC:
          if (v8 == 12)
          {
            goto LABEL_36;
          }

          goto LABEL_11;
        default:
          if (v8)
          {
            goto LABEL_11;
          }

LABEL_36:
          v20 = *v19 == result && *(v19 + 8) == a2;
          if (v20 || (sub_1D72646CC() & 1) != 0)
          {
            sub_1D726492C();
            __break(1u);
            goto LABEL_42;
          }

LABEL_11:
          a4 = (a4 + 1) & v17;
          if (((*(v15 + ((a4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a4) & 1) == 0)
          {
            goto LABEL_42;
          }

          break;
      }
    }
  }

LABEL_42:
  v21 = *v6;
  *(*v6 + 8 * (a4 >> 6) + 56) |= 1 << a4;
  v22 = *(v21 + 48) + 24 * a4;
  *v22 = result;
  *(v22 + 8) = a2;
  *(v22 + 16) = v8;
  v23 = *(v21 + 16);
  v24 = __OFADD__(v23, 1);
  v25 = v23 + 1;
  if (v24)
  {
    __break(1u);
  }

  else
  {
    *(v21 + 16) = v25;
  }
}

void sub_1D5FFEB44(uint64_t result, unint64_t a2, char a3, unint64_t *a4, uint64_t (*a5)(void), uint64_t a6)
{
  v7 = v6;
  v9 = result;
  v10 = *(*v6 + 16);
  v11 = *(*v6 + 24);
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_19;
  }

  if (a3)
  {
    sub_1D5FF5150(v10 + 1, a4, a5, a6);
  }

  else
  {
    if (v11 > v10)
    {
      sub_1D60005D8(a4, a5, a6);
      goto LABEL_19;
    }

    sub_1D6005388(v10 + 1, a4, a5, a6);
  }

  v12 = *v6;
  sub_1D7264A0C();
  if (v9)
  {
    v13 = 0x646165687473616DLL;
  }

  else
  {
    v13 = 0x6465727574616566;
  }

  sub_1D72621EC();

  v14 = sub_1D7264A5C();
  v15 = -1 << *(v12 + 32);
  a2 = v14 & ~v15;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v16 = ~v15;
    do
    {
      v17 = *(*(v12 + 48) + a2) ? 0x646165687473616DLL : 0x6465727574616566;
      if (v17 == v13)
      {
        goto LABEL_22;
      }

      v18 = sub_1D72646CC();
      swift_bridgeObjectRelease_n();
      if (v18)
      {
        goto LABEL_23;
      }

      a2 = (a2 + 1) & v16;
    }

    while (((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_19:
  v19 = *v7;
  *(*v7 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v19 + 48) + a2) = v9 & 1;
  v20 = *(v19 + 16);
  v21 = __OFADD__(v20, 1);
  v22 = v20 + 1;
  if (!v21)
  {
    *(v19 + 16) = v22;
    return;
  }

  __break(1u);
LABEL_22:
  swift_bridgeObjectRelease_n();
LABEL_23:
  sub_1D726492C();
  __break(1u);
}

void sub_1D5FFED40(uint64_t result, unint64_t a2, char a3)
{
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1D5FF53C4(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      sub_1D6000F08();
      a2 = v7;
      goto LABEL_12;
    }

    sub_1D60055CC(v5 + 1);
  }

  v8 = *v3;
  sub_1D7264A0C();
  MEMORY[0x1DA6FC0B0](result);
  v9 = sub_1D7264A5C();
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    v12 = v9 & ~v10;
    type metadata accessor for UIUserInterfaceIdiom(0);
    a2 = v12;
    while (*(*(v8 + 48) + 8 * a2) != result)
    {
      a2 = (a2 + 1) & v11;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v13 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v13 + 48) + 8 * a2) = result;
  v14 = *(v13 + 16);
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (!v15)
  {
    *(v13 + 16) = v16;
    return;
  }

  __break(1u);
LABEL_15:
  sub_1D726492C();
  __break(1u);
}

uint64_t sub_1D5FFEE9C(uint64_t a1, unint64_t a2, char a3)
{
  v33 = a1;
  v6 = sub_1D726098C();
  v7 = *(v6 - 8);
  v9 = MEMORY[0x1EEE9AC00](v6, v8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(*v3 + 16);
  v13 = *(*v3 + 24);
  v30 = v3;
  v31 = v7;
  if (v13 > v12 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1D5FF5608(v12 + 1);
  }

  else
  {
    if (v13 > v12)
    {
      sub_1D6001708(MEMORY[0x1E69B4188], sub_1D5E2A4AC);
      goto LABEL_12;
    }

    sub_1D60057E0(v12 + 1);
  }

  v14 = *v3;
  sub_1D5D51EB4(&unk_1EDF168A8, 255, MEMORY[0x1E69B4188], MEMORY[0x1E69B4190]);
  v15 = sub_1D7261E7C();
  v16 = v14 + 56;
  v32 = v14;
  v17 = -1 << *(v14 + 32);
  a2 = v15 & ~v17;
  if ((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v18 = ~v17;
    v21 = *(v7 + 16);
    v20 = v7 + 16;
    v19 = v21;
    v22 = *(v20 + 56);
    do
    {
      v19(v11, *(v32 + 48) + v22 * a2, v6);
      sub_1D5D51EB4(&qword_1EC87FB18, 255, MEMORY[0x1E69B4188], MEMORY[0x1E69B4198]);
      v23 = sub_1D7261FBC();
      (*(v20 - 8))(v11, v6);
      if (v23)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v18;
    }

    while (((*(v16 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v24 = v31;
  v25 = *v30;
  *(v25 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v24 + 32))(*(v25 + 48) + *(v24 + 72) * a2, v33, v6, v9);
  v27 = *(v25 + 16);
  v28 = __OFADD__(v27, 1);
  v29 = v27 + 1;
  if (!v28)
  {
    *(v25 + 16) = v29;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1D726492C();
  __break(1u);
  return result;
}

void sub_1D5FFF170(unsigned __int8 a1, unint64_t a2, char a3)
{
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_45;
  }

  if (a3)
  {
    sub_1D5FF595C(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      sub_1D60005D8(&qword_1EC882240, sub_1D600759C, &type metadata for DebugFormatInventoryPackageRole);
      goto LABEL_45;
    }

    sub_1D6005AF4(v5 + 1);
  }

  v7 = *v3;
  sub_1D7264A0C();
  sub_1D72621EC();

  v8 = sub_1D7264A5C();
  v9 = -1 << *(v7 + 32);
  a2 = v8 & ~v9;
  if ((*(v7 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    do
    {
      v11 = *(*(v7 + 48) + a2);
      if (v11 > 2)
      {
        if (v11 == 3)
        {
          v13 = 0xE600000000000000;
          v12 = 0x73656D656874;
        }

        else
        {
          if (v11 == 4)
          {
            v12 = 0x6C6C6177796170;
          }

          else
          {
            v12 = 0x756F72676B636162;
          }

          if (v11 == 4)
          {
            v13 = 0xE700000000000000;
          }

          else
          {
            v13 = 0xEB0000000073646ELL;
          }
        }
      }

      else if (*(*(v7 + 48) + a2))
      {
        if (v11 == 1)
        {
          v12 = 0x73726564616568;
        }

        else
        {
          v12 = 0x737265746F6F66;
        }

        v13 = 0xE700000000000000;
      }

      else
      {
        v13 = 0xE700000000000000;
        v12 = 0x7374756F79616CLL;
      }

      v14 = 0x756F72676B636162;
      if (a1 == 4)
      {
        v14 = 0x6C6C6177796170;
      }

      v15 = 0xEB0000000073646ELL;
      if (a1 == 4)
      {
        v15 = 0xE700000000000000;
      }

      if (a1 == 3)
      {
        v14 = 0x73656D656874;
        v15 = 0xE600000000000000;
      }

      v16 = 0x737265746F6F66;
      if (a1 == 1)
      {
        v16 = 0x73726564616568;
      }

      if (!a1)
      {
        v16 = 0x7374756F79616CLL;
      }

      v17 = a1 <= 2u ? v16 : v14;
      v18 = a1 <= 2u ? 0xE700000000000000 : v15;
      if (v12 == v17 && v13 == v18)
      {
        goto LABEL_48;
      }

      v19 = sub_1D72646CC();

      if (v19)
      {
        goto LABEL_49;
      }

      a2 = (a2 + 1) & v10;
    }

    while (((*(v7 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_45:
  v20 = *v24;
  *(*v24 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v20 + 48) + a2) = a1;
  v21 = *(v20 + 16);
  v22 = __OFADD__(v21, 1);
  v23 = v21 + 1;
  if (!v22)
  {
    *(v20 + 16) = v23;
    return;
  }

  __break(1u);
LABEL_48:

LABEL_49:
  sub_1D726492C();
  __break(1u);
}

void sub_1D5FFF534(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, char a6)
{
  v12 = *(*v6 + 16);
  v13 = *(*v6 + 24);
  if (v13 > v12 && (a6 & 1) != 0)
  {
    goto LABEL_21;
  }

  if (a6)
  {
    sub_1D5FF5C70(v12 + 1);
  }

  else
  {
    if (v13 > v12)
    {
      sub_1D6001064();
      goto LABEL_21;
    }

    sub_1D6005DD8(v12 + 1);
  }

  v14 = *v6;
  sub_1D7264A0C();
  sub_1D72621EC();
  MEMORY[0x1DA6FC0B0](a3);
  MEMORY[0x1DA6FC0B0](a4);
  v15 = sub_1D7264A5C();
  v16 = v14 + 56;
  v17 = -1 << *(v14 + 32);
  a5 = v15 & ~v17;
  if ((*(v14 + 56 + ((a5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a5))
  {
    v18 = ~v17;
    v19 = *(v14 + 48);
    do
    {
      v21 = (v19 + 32 * a5);
      v22 = v21[2];
      v23 = v21[3];
      v24 = *v21 == result && v21[1] == a2;
      if (v24 || (sub_1D72646CC()) && v22 == a3 && v23 == a4)
      {
        goto LABEL_24;
      }

      a5 = (a5 + 1) & v18;
    }

    while (((*(v16 + ((a5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a5) & 1) != 0);
  }

LABEL_21:
  v25 = *v30;
  *(*v30 + 8 * (a5 >> 6) + 56) |= 1 << a5;
  v26 = (*(v25 + 48) + 32 * a5);
  *v26 = result;
  v26[1] = a2;
  v26[2] = a3;
  v26[3] = a4;
  v27 = *(v25 + 16);
  v28 = __OFADD__(v27, 1);
  v29 = v27 + 1;
  if (!v28)
  {
    *(v25 + 16) = v29;
    return;
  }

  __break(1u);
LABEL_24:
  sub_1D726492C();
  __break(1u);
}

void sub_1D5FFF6F0(uint64_t a1, uint64_t a2, unint64_t a3, char a4)
{
  v7 = *(*v4 + 16);
  v8 = *(*v4 + 24);
  if (v8 > v7 && (a4 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a4)
  {
    sub_1D5FF5F14(v7 + 1);
  }

  else
  {
    if (v8 > v7)
    {
      sub_1D60011E0();
      goto LABEL_12;
    }

    sub_1D6006054(v7 + 1);
  }

  v9 = *v4;
  sub_1D7264A0C();
  v10 = sub_1D726372C();
  MEMORY[0x1DA6FC0B0](v10);
  v11 = sub_1D7264A5C();
  v12 = -1 << *(v9 + 32);
  a3 = v11 & ~v12;
  if ((*(v9 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    sub_1D5B5A498(0, &qword_1EDF1A650, 0x1E69E58C0);
    do
    {
      v14 = *(v9 + 48) + 16 * a3;
      v15 = *v14;
      v16 = *(v14 + 8);
      v17 = v15;
      v18 = sub_1D726370C();

      if (v18)
      {
        goto LABEL_15;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v9 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_12:
  v19 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v20 = (*(v19 + 48) + 16 * a3);
  *v20 = a1;
  v20[1] = a2;
  v21 = *(v19 + 16);
  v22 = __OFADD__(v21, 1);
  v23 = v21 + 1;
  if (!v22)
  {
    *(v19 + 16) = v23;
    return;
  }

  __break(1u);
LABEL_15:
  sub_1D726492C();
  __break(1u);
}

void sub_1D5FFF8A0(uint64_t a1, unint64_t a2, char a3, unint64_t *a4, unint64_t *a5, void *a6, unint64_t *a7)
{
  v10 = *(*v7 + 16);
  v11 = *(*v7 + 24);
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    v12 = a5;
    v13 = a6;
    sub_1D5FF61B0(v10 + 1, a4, a5, a6, a7);
  }

  else
  {
    if (v11 > v10)
    {
      sub_1D6001358(a4, a5, a6, a7);
      goto LABEL_12;
    }

    v12 = a5;
    v13 = a6;
    sub_1D60062A8(v10 + 1, a4, a5, a6, a7);
  }

  v14 = *v7;
  v15 = sub_1D72636FC();
  v16 = -1 << *(v14 + 32);
  a2 = v15 & ~v16;
  if ((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = ~v16;
    sub_1D5B5A498(0, v12, v13);
    do
    {
      v18 = *(*(v14 + 48) + 8 * a2);
      v19 = sub_1D726370C();

      if (v19)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v20 = *v7;
  *(*v7 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v20 + 48) + 8 * a2) = a1;
  v21 = *(v20 + 16);
  v22 = __OFADD__(v21, 1);
  v23 = v21 + 1;
  if (!v22)
  {
    *(v20 + 16) = v23;
    return;
  }

  __break(1u);
LABEL_15:
  sub_1D726492C();
  __break(1u);
}

uint64_t sub_1D5FFFA48(uint64_t a1, unint64_t a2, char a3)
{
  v33 = a1;
  v6 = sub_1D7258DBC();
  v7 = *(v6 - 8);
  v9 = MEMORY[0x1EEE9AC00](v6, v8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(*v3 + 16);
  v13 = *(*v3 + 24);
  v30 = v3;
  v31 = v7;
  if (v13 > v12 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1D5FF63CC(v12 + 1);
  }

  else
  {
    if (v13 > v12)
    {
      sub_1D6001708(MEMORY[0x1E6969C28], sub_1D6007A94);
      goto LABEL_12;
    }

    sub_1D60064B0(v12 + 1);
  }

  v14 = *v3;
  sub_1D5D51EB4(&qword_1EDF18A30, 255, MEMORY[0x1E6969C28], MEMORY[0x1E6969C38]);
  v15 = sub_1D7261E7C();
  v16 = v14 + 56;
  v32 = v14;
  v17 = -1 << *(v14 + 32);
  a2 = v15 & ~v17;
  if ((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v18 = ~v17;
    v21 = *(v7 + 16);
    v20 = v7 + 16;
    v19 = v21;
    v22 = *(v20 + 56);
    do
    {
      v19(v11, *(v32 + 48) + v22 * a2, v6);
      sub_1D5D51EB4(&qword_1EDF3C378, 255, MEMORY[0x1E6969C28], MEMORY[0x1E6969C50]);
      v23 = sub_1D7261FBC();
      (*(v20 - 8))(v11, v6);
      if (v23)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v18;
    }

    while (((*(v16 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v24 = v31;
  v25 = *v30;
  *(v25 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v24 + 32))(*(v25 + 48) + *(v24 + 72) * a2, v33, v6, v9);
  v27 = *(v25 + 16);
  v28 = __OFADD__(v27, 1);
  v29 = v27 + 1;
  if (!v28)
  {
    *(v25 + 16) = v29;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1D726492C();
  __break(1u);
  return result;
}

void sub_1D5FFFD1C(unint64_t result, unsigned __int8 a2, unint64_t a3, char a4)
{
  v7 = *(*v4 + 16);
  v8 = *(*v4 + 24);
  if (v8 > v7 && (a4 & 1) != 0)
  {
    goto LABEL_28;
  }

  if (a4)
  {
    sub_1D5FF6720(v7 + 1);
  }

  else
  {
    if (v8 > v7)
    {
      v9 = a3;
      sub_1D600193C();
      a3 = v9;
      goto LABEL_28;
    }

    sub_1D60067C4(v7 + 1);
  }

  v10 = *v4;
  sub_1D7264A0C();
  if (a2)
  {
    v11 = qword_1D728D788[result];
  }

  else
  {
    MEMORY[0x1DA6FC0B0](2);
    v11 = result;
  }

  MEMORY[0x1DA6FC0B0](v11);
  v12 = sub_1D7264A5C();
  v13 = -1 << *(v10 + 32);
  a3 = v12 & ~v13;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v14 = ~v13;
    do
    {
      v15 = *(v10 + 48) + 16 * a3;
      v16 = *v15;
      if (*(v15 + 8) == 1)
      {
        if (v16 > 1)
        {
          if (v16 == 2)
          {
            if ((a2 & (result == 2)) != 0)
            {
              goto LABEL_27;
            }
          }

          else if ((a2 & (result > 2)) != 0)
          {
            goto LABEL_27;
          }
        }

        else if (v16)
        {
          if ((a2 & (result == 1)) != 0)
          {
            goto LABEL_27;
          }
        }

        else if ((a2 & (result == 0)) != 0)
        {
          goto LABEL_27;
        }
      }

      else if ((a2 & 1) == 0 && v16 == result)
      {
LABEL_27:
        sub_1D726492C();
        __break(1u);
        break;
      }

      a3 = (a3 + 1) & v14;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_28:
  v17 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v18 = *(v17 + 48) + 16 * a3;
  *v18 = result;
  *(v18 + 8) = a2 & 1;
  v19 = *(v17 + 16);
  v20 = __OFADD__(v19, 1);
  v21 = v19 + 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(v17 + 16) = v21;
  }
}

void sub_1D5FFFF14()
{
  v1 = v0;
  sub_1D5B87494(0, &qword_1EDF1A590, MEMORY[0x1E69E6158], MEMORY[0x1E69E6168]);
  v2 = *v0;
  v3 = sub_1D7263CAC();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
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
}

void sub_1D600007C()
{
  v1 = v0;
  sub_1D5B87494(0, &qword_1EDF1A588, MEMORY[0x1E69E6530], MEMORY[0x1E69E6540]);
  v2 = *v0;
  v3 = sub_1D7263CAC();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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
}

void sub_1D60001C8()
{
  v1 = v0;
  sub_1D6007D30(0, &qword_1EDF04308, sub_1D6007CDC, &type metadata for SportsTaxonomyGraph.SportsTaxonomyGraphNodeHasher);
  v2 = *v0;
  v3 = sub_1D7263CAC();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
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
}

void sub_1D6000334()
{
  v1 = v0;
  sub_1D5B87494(0, &qword_1EDF042D0, MEMORY[0x1E69E72F0], MEMORY[0x1E69E7300]);
  v2 = *v0;
  v3 = sub_1D7263CAC();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 4 * v14) = *(*(v2 + 48) + 4 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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
}

void sub_1D6000480()
{
  v1 = v0;
  sub_1D6007D30(0, &qword_1EDF1A5A8, sub_1D60071DC, &type metadata for FormatBindingResource);
  v2 = *v0;
  v3 = sub_1D7263CAC();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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
}

void sub_1D60005D8(unint64_t *a1, uint64_t (*a2)(void), uint64_t a3)
{
  v4 = v3;
  sub_1D6007D30(0, a1, a2, a3);
  v5 = *v3;
  v6 = sub_1D7263CAC();
  v7 = v6;
  if (*(v5 + 16))
  {
    v8 = (v6 + 56);
    v9 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || v8 >= v5 + 56 + 8 * v9)
    {
      memmove(v8, (v5 + 56), 8 * v9);
    }

    v11 = 0;
    *(v7 + 16) = *(v5 + 16);
    v12 = 1 << *(v5 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v5 + 56);
    for (i = (v12 + 63) >> 6; v14; *(*(v7 + 48) + v17) = *(*(v5 + 48) + v17))
    {
      v16 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
      v17 = v16 | (v11 << 6);
LABEL_17:
      ;
    }

    v18 = v11;
    while (1)
    {
      v11 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v11 >= i)
      {
        goto LABEL_19;
      }

      v19 = *(v5 + 56 + 8 * v11);
      ++v18;
      if (v19)
      {
        v14 = (v19 - 1) & v19;
        v17 = __clz(__rbit64(v19)) | (v11 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v4 = v7;
  }
}

void sub_1D6000718()
{
  v1 = v0;
  sub_1D6007D30(0, &qword_1EC882208, sub_1D60073B4, &type metadata for FormatLayoutViewRouteOption);
  v2 = *v0;
  v3 = sub_1D7263CAC();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    v12 = (v9 + 63) >> 6;
    while (v11)
    {
LABEL_11:
      v11 &= v11 - 1;
    }

    while (1)
    {
      v13 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if (v13 >= v12)
      {
        goto LABEL_17;
      }

      v11 = *(v2 + 56 + 8 * v13);
      ++v8;
      if (v11)
      {
        v8 = v13;
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_17:

    *v1 = v4;
  }
}

void sub_1D6000890(unint64_t *a1, uint64_t (*a2)(void), uint64_t a3, void (*a4)(void, void))
{
  v6 = v4;
  sub_1D6007D30(0, a1, a2, a3);
  v7 = *v4;
  v8 = sub_1D7263CAC();
  v9 = v8;
  if (*(v7 + 16))
  {
    v10 = (v8 + 56);
    v11 = ((1 << *(v9 + 32)) + 63) >> 6;
    if (v9 != v7 || v10 >= v7 + 56 + 8 * v11)
    {
      memmove(v10, (v7 + 56), 8 * v11);
    }

    v13 = 0;
    *(v9 + 16) = *(v7 + 16);
    v14 = 1 << *(v7 + 32);
    v15 = *(v7 + 56);
    v16 = -1;
    if (v14 < 64)
    {
      v16 = ~(-1 << v14);
    }

    v17 = v16 & v15;
    v18 = (v14 + 63) >> 6;
    if ((v16 & v15) != 0)
    {
      do
      {
        v19 = __clz(__rbit64(v17));
        v17 &= v17 - 1;
LABEL_17:
        v22 = 16 * (v19 | (v13 << 6));
        v23 = *(*(v7 + 48) + v22);
        *(*(v9 + 48) + v22) = v23;
        a4(v23, *(&v23 + 1));
      }

      while (v17);
    }

    v20 = v13;
    while (1)
    {
      v13 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v13 >= v18)
      {
        goto LABEL_19;
      }

      v21 = *(v7 + 56 + 8 * v13);
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v17 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v6 = v9;
  }
}

void sub_1D6000A30(unint64_t *a1, uint64_t (*a2)(void), uint64_t a3, void (*a4)(void))
{
  v6 = v4;
  sub_1D6007D30(0, a1, a2, a3);
  v7 = *v4;
  v8 = sub_1D7263CAC();
  v9 = v8;
  if (*(v7 + 16))
  {
    v10 = (v8 + 56);
    v11 = ((1 << *(v9 + 32)) + 63) >> 6;
    if (v9 != v7 || v10 >= v7 + 56 + 8 * v11)
    {
      memmove(v10, (v7 + 56), 8 * v11);
    }

    v13 = 0;
    *(v9 + 16) = *(v7 + 16);
    v14 = 1 << *(v7 + 32);
    v15 = *(v7 + 56);
    v16 = -1;
    if (v14 < 64)
    {
      v16 = ~(-1 << v14);
    }

    v17 = v16 & v15;
    v18 = (v14 + 63) >> 6;
    if ((v16 & v15) != 0)
    {
      do
      {
        v19 = __clz(__rbit64(v17));
        v17 &= v17 - 1;
LABEL_17:
        v22 = 24 * (v19 | (v13 << 6));
        v23 = *(v7 + 48) + v22;
        v24 = *(v23 + 8);
        v25 = *(v9 + 48) + v22;
        v26 = *(v23 + 16);
        *v25 = *v23;
        *(v25 + 8) = v24;
        *(v25 + 16) = v26;
        a4();
      }

      while (v17);
    }

    v20 = v13;
    while (1)
    {
      v13 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v13 >= v18)
      {
        goto LABEL_19;
      }

      v21 = *(v7 + 56 + 8 * v13);
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v17 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v6 = v9;
  }
}

void sub_1D6000C1C()
{
  v1 = v0;
  sub_1D6007D30(0, &qword_1EC882230, sub_1D6007548, &type metadata for DebugFormatWorkspaceDevice);
  v2 = *v0;
  v3 = sub_1D7263CAC();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; v20[1] = v18)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = 2 * v14;
      v18 = (*(v2 + 48) + v17);
      v19 = *v18;
      LOBYTE(v18) = v18[1];
      v20 = (*(v4 + 48) + v17);
      *v20 = v19;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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
}

void sub_1D6000D88()
{
  v1 = v0;
  sub_1D6007D30(0, &qword_1EDF1A598, sub_1D5E2A458, &type metadata for FormatOptionsNodeStatementValue.CodingValidationType);
  v2 = *v0;
  v3 = sub_1D7263CAC();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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
}

void sub_1D6000F08()
{
  v1 = v0;
  sub_1D600745C(0);
  v2 = *v0;
  v3 = sub_1D7263CAC();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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
}

void sub_1D6001064()
{
  v1 = v0;
  sub_1D6007D30(0, &qword_1EC882280, sub_1D6007964, &type metadata for FormatSourceMap);
  v2 = *v0;
  v3 = sub_1D7263CAC();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
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
        v17 = 32 * (v14 | (v8 << 6));
        v18 = *(v2 + 48) + v17;
        v19 = *(v18 + 8);
        v20 = *(v4 + 48) + v17;
        v21 = *(v18 + 16);
        *v20 = *v18;
        *(v20 + 8) = v19;
        *(v20 + 16) = v21;
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
}

void sub_1D60011E0()
{
  v1 = v0;
  sub_1D6007D30(0, &qword_1EDF04310, sub_1D6007C88, &type metadata for LoadedFont);
  v2 = *v0;
  v3 = sub_1D7263CAC();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = *(v2 + 48) + v17;
        v20 = *v18;
        v19 = *(v18 + 8);
        v21 = (*(v4 + 48) + v17);
        *v21 = v20;
        v21[1] = v19;
        v22 = v19;
        v23 = v20;
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
}

void sub_1D6001358(unint64_t *a1, unint64_t *a2, void *a3, unint64_t *a4)
{
  v5 = v4;
  sub_1D60075F0(0, a1, a2, a3, a4);
  v6 = *v4;
  v7 = sub_1D7263CAC();
  v8 = v7;
  if (*(v6 + 16))
  {
    v9 = (v7 + 56);
    v10 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || v9 >= v6 + 56 + 8 * v10)
    {
      memmove(v9, (v6 + 56), 8 * v10);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = *(v6 + 56);
    v15 = -1;
    if (v13 < 64)
    {
      v15 = ~(-1 << v13);
    }

    v16 = v15 & v14;
    v17 = (v13 + 63) >> 6;
    if ((v15 & v14) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_17:
        v21 = v18 | (v12 << 6);
        v22 = *(*(v6 + 48) + 8 * v21);
        *(*(v8 + 48) + 8 * v21) = v22;
        v23 = v22;
      }

      while (v16);
    }

    v19 = v12;
    while (1)
    {
      v12 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v12 >= v17)
      {
        goto LABEL_19;
      }

      v20 = *(v6 + 56 + 8 * v12);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v5 = v8;
  }
}

void sub_1D6001500(uint64_t (*a1)(void), void (*a2)(void, __n128), uint64_t (*a3)(void), uint64_t (*a4)(void))
{
  v31 = a4;
  v7 = v4;
  v8 = a1(0);
  v9 = *(v8 - 8);
  v11 = MEMORY[0x1EEE9AC00](v8 - 8, v10);
  v13 = &v30 - v12;
  a2(0, v11);
  v14 = *v4;
  v15 = sub_1D7263CAC();
  v16 = v15;
  if (*(v14 + 16))
  {
    v30 = v7;
    v17 = (v15 + 56);
    v18 = ((1 << *(v16 + 32)) + 63) >> 6;
    if (v16 != v14 || v17 >= v14 + 56 + 8 * v18)
    {
      memmove(v17, (v14 + 56), 8 * v18);
    }

    v20 = 0;
    *(v16 + 16) = *(v14 + 16);
    v21 = 1 << *(v14 + 32);
    v22 = *(v14 + 56);
    v23 = -1;
    if (v21 < 64)
    {
      v23 = ~(-1 << v21);
    }

    v24 = v23 & v22;
    v25 = (v21 + 63) >> 6;
    if ((v23 & v22) != 0)
    {
      do
      {
        v26 = __clz(__rbit64(v24));
        v24 &= v24 - 1;
LABEL_17:
        v29 = *(v9 + 72) * (v26 | (v20 << 6));
        sub_1D5BE7354(*(v14 + 48) + v29, v13, a3);
        sub_1D5BE7424(v13, *(v16 + 48) + v29, v31);
      }

      while (v24);
    }

    v27 = v20;
    while (1)
    {
      v20 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        break;
      }

      if (v20 >= v25)
      {

        v7 = v30;
        goto LABEL_21;
      }

      v28 = *(v14 + 56 + 8 * v20);
      ++v27;
      if (v28)
      {
        v26 = __clz(__rbit64(v28));
        v24 = (v28 - 1) & v28;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v7 = v16;
  }
}

void sub_1D6001708(uint64_t (*a1)(void), void (*a2)(void, __n128))
{
  v4 = v2;
  v5 = a1(0);
  v6 = *(v5 - 8);
  v8 = MEMORY[0x1EEE9AC00](v5, v7);
  v10 = &v26 - v9;
  a2(0, v8);
  v11 = *v2;
  v12 = sub_1D7263CAC();
  v13 = v12;
  if (*(v11 + 16))
  {
    v27 = v4;
    v14 = (v12 + 56);
    v15 = ((1 << *(v13 + 32)) + 63) >> 6;
    if (v13 != v11 || v14 >= v11 + 56 + 8 * v15)
    {
      memmove(v14, (v11 + 56), 8 * v15);
    }

    v17 = 0;
    *(v13 + 16) = *(v11 + 16);
    v18 = 1 << *(v11 + 32);
    v19 = -1;
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    v20 = v19 & *(v11 + 56);
    v21 = (v18 + 63) >> 6;
    v28 = v6 + 32;
    v29 = v6 + 16;
    while (v20)
    {
      v22 = __clz(__rbit64(v20));
      v20 &= v20 - 1;
LABEL_17:
      v25 = *(v6 + 72) * (v22 | (v17 << 6));
      (*(v6 + 16))(v10, *(v11 + 48) + v25, v5);
      (*(v6 + 32))(*(v13 + 48) + v25, v10, v5);
    }

    v23 = v17;
    while (1)
    {
      v17 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        break;
      }

      if (v17 >= v21)
      {

        v4 = v27;
        goto LABEL_21;
      }

      v24 = *(v11 + 56 + 8 * v17);
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v20 = (v24 - 1) & v24;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v4 = v13;
  }
}

void sub_1D600193C()
{
  v1 = v0;
  sub_1D6007D30(0, &qword_1EC87FAE8, sub_1D5E2A08C, &type metadata for DebugFormatPackageTreeSection);
  v2 = *v0;
  v3 = sub_1D7263CAC();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(v20 + 8) = v18)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = 16 * v14;
      v18 = *(v2 + 48) + v17;
      v19 = *v18;
      LOBYTE(v18) = *(v18 + 8);
      v20 = *(v4 + 48) + v17;
      *v20 = v19;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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
}

void sub_1D6001AA8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1D6007D30(0, &qword_1EDF1A5C0, sub_1D5CD8948, &type metadata for FormatBorderEdge);
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
LABEL_16:
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
            goto LABEL_8;
          }
        }

        goto LABEL_29;
      }

      v16 = __clz(__rbit64((-1 << v14) & ~*(v11 + 8 * (v14 >> 6)))) | v14 & 0x7FFFFFFFFFFFFFC0;
LABEL_8:
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
        goto LABEL_16;
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

void sub_1D6001D64(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1D5B87494(0, &qword_1EDF1A588, MEMORY[0x1E69E6530], MEMORY[0x1E69E6540]);
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
      v17 = sub_1D72649FC();
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

        goto LABEL_26;
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
        goto LABEL_24;
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
LABEL_26:
    __break(1u);
  }

  else
  {
LABEL_24:

    *v2 = v5;
  }
}

void sub_1D6001F60(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1D6007D30(0, &qword_1EDF04308, sub_1D6007CDC, &type metadata for SportsTaxonomyGraph.SportsTaxonomyGraphNodeHasher);
  v4 = sub_1D7263CBC();
  if (*(v3 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v3 + 32);
    v7 = -1;
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    v8 = v7 & *(v3 + 56);
    v9 = (v6 + 63) >> 6;
    while (v8)
    {
      v10 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_11:
      v13 = *(*(v3 + 48) + 8 * (v10 | (v5 << 6)));

      sub_1D5FF69BC(v13, v4);
    }

    v11 = v5;
    while (1)
    {
      v5 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v5 >= v9)
      {
        goto LABEL_13;
      }

      v12 = *(v3 + 56 + 8 * v5);
      ++v11;
      if (v12)
      {
        v10 = __clz(__rbit64(v12));
        v8 = (v12 - 1) & v12;
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_13:

    *v2 = v4;
  }
}

void sub_1D60020AC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1D5B87494(0, &qword_1EDF042D0, MEMORY[0x1E69E72F0], MEMORY[0x1E69E7300]);
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
      v16 = *(*(v3 + 48) + 4 * (v13 | (v6 << 6)));
      v17 = MEMORY[0x1DA6FC080](*(v5 + 40), v16, 4);
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

        goto LABEL_26;
      }

      v12 = __clz(__rbit64((-1 << v19) & ~*(v11 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v5 + 48) + 4 * v12) = v16;
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
        goto LABEL_24;
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
LABEL_26:
    __break(1u);
  }

  else
  {
LABEL_24:

    *v2 = v5;
  }
}

void sub_1D60022AC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1D6007D30(0, &qword_1EDF1A5A8, sub_1D60071DC, &type metadata for FormatBindingResource);
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
      MEMORY[0x1DA6FC0B0](0);
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

void sub_1D60026D8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1D6007D30(0, &qword_1EC8822A0, sub_1D5B56F50, &type metadata for FormatCompilerFlag);
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

void sub_1D6002984(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1D6007D30(0, &qword_1EDF1A5B8, sub_1D5E2A690, &type metadata for FormatOptionType);
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

void sub_1D6002D00(uint64_t a1)
{
  v2 = *v1;
  sub_1D6007D30(0, &qword_1EC882208, sub_1D60073B4, &type metadata for FormatLayoutViewRouteOption);
  v3 = sub_1D7263CBC();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = v3 + 56;
    while (v8)
    {
LABEL_13:
      sub_1D7264A0C();
      MEMORY[0x1DA6FC0B0](0);
      v13 = sub_1D7264A5C();
      v14 = -1 << *(v4 + 32);
      v15 = v13 & ~v14;
      v16 = v15 >> 6;
      if (((-1 << v15) & ~*(v10 + 8 * (v15 >> 6))) == 0)
      {
        v17 = 0;
        v18 = (63 - v14) >> 6;
        while (++v16 != v18 || (v17 & 1) == 0)
        {
          v19 = v16 == v18;
          if (v16 == v18)
          {
            v16 = 0;
          }

          v17 |= v19;
          v20 = *(v10 + 8 * v16);
          if (v20 != -1)
          {
            v11 = __clz(__rbit64(~v20)) + (v16 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_24;
      }

      v11 = __clz(__rbit64((-1 << v15) & ~*(v10 + 8 * (v15 >> 6)))) | v15 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      v8 &= v8 - 1;
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      ++*(v4 + 16);
    }

    while (1)
    {
      v12 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if (v12 >= v9)
      {
        goto LABEL_22;
      }

      v8 = *(v2 + 56 + 8 * v12);
      ++v5;
      if (v8)
      {
        v5 = v12;
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
  }

  else
  {
LABEL_22:

    *v1 = v4;
  }
}

void sub_1D6002EF4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1D6007D30(0, &qword_1EDF1A5A0, sub_1D5E2A540, &type metadata for FormatAuxiliaryViewRequirement);
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
LABEL_16:
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
            goto LABEL_8;
          }
        }

        goto LABEL_29;
      }

      v16 = __clz(__rbit64((-1 << v14) & ~*(v11 + 8 * (v14 >> 6)))) | v14 & 0x7FFFFFFFFFFFFFC0;
LABEL_8:
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
        goto LABEL_16;
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

void sub_1D60031F0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1D6007D30(0, &qword_1EC8822A8, sub_1D6007B2C, &type metadata for PuzzleTeaserInteractionType);
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

void sub_1D6003488(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1D6007D30(0, &qword_1EDF04318, sub_1D6007408, &type metadata for FeedItem.Kind);
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
      v17 = (*(v3 + 48) + 16 * (v14 | (v6 << 6)));
      v19 = *v17;
      v18 = v17[1];
      sub_1D7264A0C();
      switch(v18)
      {
        case 0:
          v20 = 0;
          goto LABEL_35;
        case 1:
          v20 = 1;
          goto LABEL_35;
        case 2:
          v20 = 2;
          goto LABEL_35;
        case 3:
          v20 = 3;
          goto LABEL_35;
        case 4:
          v20 = 4;
          goto LABEL_35;
        case 5:
          v20 = 5;
          goto LABEL_35;
        case 6:
          v20 = 6;
          goto LABEL_35;
        case 7:
          v20 = 7;
          goto LABEL_35;
        case 8:
          v20 = 9;
          goto LABEL_35;
        case 9:
          v20 = 10;
          goto LABEL_35;
        case 10:
          v20 = 11;
          goto LABEL_35;
        case 11:
          v20 = 12;
          goto LABEL_35;
        case 12:
          v20 = 13;
          goto LABEL_35;
        case 13:
          v20 = 14;
          goto LABEL_35;
        case 14:
          v20 = 15;
          goto LABEL_35;
        case 15:
          v20 = 16;
          goto LABEL_35;
        case 16:
          v20 = 17;
          goto LABEL_35;
        case 17:
          v20 = 18;
LABEL_35:
          MEMORY[0x1DA6FC0B0](v20);
          break;
        default:
          MEMORY[0x1DA6FC0B0](8);

          sub_1D72621EC();
          break;
      }

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

        goto LABEL_49;
      }

      v12 = __clz(__rbit64((-1 << v23) & ~*(v11 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v5 + 48) + 16 * v12);
      *v13 = v19;
      v13[1] = v18;
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
        goto LABEL_47;
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
LABEL_49:
    __break(1u);
  }

  else
  {

LABEL_47:
    *v2 = v5;
  }
}

void sub_1D60037EC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4)
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
      MEMORY[0x1DA6FC0B0](v19);
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

void sub_1D6003A00(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1D6007D30(0, &qword_1EC882218, sub_1D5E4E308, &type metadata for FormatGroupColumnSystemKind);
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

void sub_1D6003C6C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1D6007D30(0, &qword_1EC8821F0, sub_1D6007360, &type metadata for FormatDerivedDataCompilerMode);
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

void sub_1D6003F08(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1D6007D30(0, &qword_1EDF1A5C8, sub_1D5B4B090, &type metadata for FormatItemKind);
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
      v17 = (*(v3 + 48) + 16 * (v14 | (v6 << 6)));
      v19 = *v17;
      v18 = v17[1];
      sub_1D7264A0C();
      switch(v18)
      {
        case 0:
          v20 = 0;
          goto LABEL_32;
        case 1:
          v20 = 1;
          goto LABEL_32;
        case 2:
          v20 = 2;
          goto LABEL_32;
        case 3:
          v20 = 3;
          goto LABEL_32;
        case 4:
          v20 = 4;
          goto LABEL_32;
        case 5:
          v20 = 5;
          goto LABEL_32;
        case 6:
          v20 = 6;
          goto LABEL_32;
        case 7:
          v20 = 7;
          goto LABEL_32;
        case 8:
          v20 = 8;
          goto LABEL_32;
        case 9:
          v20 = 9;
          goto LABEL_32;
        case 10:
          v20 = 10;
          goto LABEL_32;
        case 11:
          v20 = 11;
          goto LABEL_32;
        case 12:
          v20 = 12;
          goto LABEL_32;
        case 13:
          v20 = 13;
          goto LABEL_32;
        case 14:
          v20 = 14;
          goto LABEL_32;
        case 15:
          v20 = 15;
LABEL_32:
          MEMORY[0x1DA6FC0B0](v20);
          break;
        default:
          MEMORY[0x1DA6FC0B0](16);

          sub_1D72621EC();
          break;
      }

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

        goto LABEL_47;
      }

      v12 = __clz(__rbit64((-1 << v23) & ~*(v11 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v5 + 48) + 16 * v12);
      *v13 = v19;
      v13[1] = v18;
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
        goto LABEL_45;
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
LABEL_47:
    __break(1u);
  }

  else
  {

LABEL_45:
    *v2 = v5;
  }
}