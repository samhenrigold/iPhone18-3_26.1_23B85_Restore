void sub_1CF6EC01C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C27C0, &unk_1CFA129D8);
  v4 = sub_1CF9E78E8();
  v5 = v4;
  if (*(v3 + 16))
  {
    v32 = v2;
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
      v18 = *(v3 + 48) + 32 * (v15 | (v6 << 6));
      v19 = *v18;
      v20 = *(v18 + 8);
      v21 = *(v18 + 16);
      v22 = *(v18 + 24);
      sub_1CF9E81D8();
      v34 = v19;
      sub_1CF7BD790(v35, v19, v20, v21, v22);
      v23 = sub_1CF9E8228();
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
      v14 = *(v5 + 48) + 32 * v13;
      v3 = v33;
      *v14 = v34;
      *(v14 + 8) = v20;
      *(v14 + 16) = v21;
      *(v14 + 24) = v22;
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

void sub_1CF6EC2A4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C27C8, &unk_1CFA129E8);
  v4 = sub_1CF9E78E8();
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
      v18 = (*(v3 + 48) + 48 * (v15 | (v6 << 6)));
      v28 = *v18;
      *v29 = v18[1];
      *&v29[10] = *(v18 + 26);
      sub_1CF9E81D8();
      sub_1CF7BDAE8();
      v19 = sub_1CF9E8228();
      v20 = -1 << *(v5 + 32);
      v21 = v19 & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v12 + 8 * v22);
          if (v26 != -1)
          {
            v13 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v13 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 48 * v13);
      *v14 = v28;
      v14[1] = *v29;
      *(v14 + 26) = *&v29[10];
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

    v27 = 1 << *(v3 + 32);
    if (v27 >= 64)
    {
      bzero((v3 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v27;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
}

void sub_1CF6EC52C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v6 = sub_1CF9E78E8();
  v7 = v6;
  if (*(v5 + 16))
  {
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
    v14 = v6 + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(*(v5 + 48) + 8 * (v16 | (v8 << 6)));
      v20 = sub_1CF9E7558();
      v21 = -1 << *(v7 + 32);
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

LABEL_30:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v19;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v5 + 32);
    if (v28 >= 64)
    {
      bzero((v5 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v28;
    }

    *(v5 + 16) = 0;
  }

  *v4 = v7;
}

void sub_1CF6EC74C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v6 = sub_1CF9E78E8();
  v7 = v6;
  if (*(v5 + 16))
  {
    v38 = v3;
    v39 = v5;
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
    v14 = v6 + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(*(v5 + 48) + 8 * (v16 | (v8 << 6)));
      _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v21 = v20;
      sub_1CF9E81D8();
      sub_1CF9E69C8();
      v22 = sub_1CF9E8228();
      v21, v23, v24, v25, v26, v27, v28, v29;
      v30 = -1 << *(v7 + 32);
      v31 = v22 & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v14 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v14 + 8 * v32);
          if (v36 != -1)
          {
            v15 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v31) & ~*(v14 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v19;
      ++*(v7 + 16);
      v5 = v39;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    v37 = 1 << *(v5 + 32);
    if (v37 >= 64)
    {
      bzero(v9, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v37;
    }

    v4 = v38;
    *(v5 + 16) = 0;
  }

  *v4 = v7;
}

void sub_1CF6EC9C0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C4E70, &qword_1CFA18030);
  v4 = sub_1CF9E78E8();
  v5 = v4;
  if (*(v3 + 16))
  {
    v40 = v1;
    v41 = v3;
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
      v18 = *(v3 + 48) + 24 * (v15 | (v6 << 6));
      v19 = *v18;
      v20 = *(v18 + 8);
      v21 = *(v18 + 16);
      sub_1CF9E81D8();
      _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v23 = v22;
      sub_1CF9E69C8();
      v23, v24, v25, v26, v27, v28, v29, v30;
      sub_1CF9E81F8();
      if (v21 != 1)
      {
        MEMORY[0x1D386A470](v20);
      }

      v31 = sub_1CF9E8228();
      v32 = -1 << *(v5 + 32);
      v33 = v31 & ~v32;
      v34 = v33 >> 6;
      if (((-1 << v33) & ~*(v12 + 8 * (v33 >> 6))) == 0)
      {
        v35 = 0;
        v36 = (63 - v32) >> 6;
        while (++v34 != v36 || (v35 & 1) == 0)
        {
          v37 = v34 == v36;
          if (v34 == v36)
          {
            v34 = 0;
          }

          v35 |= v37;
          v38 = *(v12 + 8 * v34);
          if (v38 != -1)
          {
            v13 = __clz(__rbit64(~v38)) + (v34 << 6);
            goto LABEL_7;
          }
        }

LABEL_32:
        __break(1u);
        return;
      }

      v13 = __clz(__rbit64((-1 << v33) & ~*(v12 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = *(v5 + 48) + 24 * v13;
      *v14 = v19;
      *(v14 + 8) = v20;
      *(v14 + 16) = v21;
      ++*(v5 + 16);
      v3 = v41;
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_32;
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

    v39 = 1 << *(v3 + 32);
    if (v39 >= 64)
    {
      bzero(v7, ((v39 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v39;
    }

    v2 = v40;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
}

void sub_1CF6ECC78(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C2878, &qword_1CFA12AA8);
  v4 = sub_1CF9E78E8();
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
      sub_1CF9E81D8();
      sub_1CF82009C(v27, v17);
      v18 = sub_1CF9E8228();
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

void sub_1CF6ECEC8(uint64_t a1)
{
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF650, &unk_1CF9FCB40);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v19 - v5;
  v7 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C2888, &qword_1CFA12AC8);
  v8 = sub_1CF9E78E8();
  if (*(v7 + 16))
  {
    v20 = v2;
    v9 = 0;
    v10 = (v7 + 56);
    v11 = 1 << *(v7 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v7 + 56);
    v14 = (v11 + 63) >> 6;
    while (v13)
    {
      v15 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_11:
      sub_1CEFE55D0(*(v7 + 48) + *(v4 + 72) * (v15 | (v9 << 6)), v6, &unk_1EC4BF650, &unk_1CF9FCB40);
      sub_1CF476F2C(v6, v8);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        return;
      }

      if (v9 >= v14)
      {
        break;
      }

      v17 = v10[v9];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v13 = (v17 - 1) & v17;
        goto LABEL_11;
      }
    }

    v18 = 1 << *(v7 + 32);
    if (v18 >= 64)
    {
      bzero((v7 + 56), ((v18 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v18;
    }

    v2 = v20;
    *(v7 + 16) = 0;
  }

  *v2 = v8;
}

void sub_1CF6ED0E8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BFC38, &unk_1CFA05370);
  v4 = sub_1CF9E78E8();
  v5 = v4;
  if (*(v3 + 16))
  {
    v36 = v1;
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
      sub_1CF9E81D8();
      _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v19 = v18;
      sub_1CF9E69C8();
      v19, v20, v21, v22, v23, v24, v25, v26;
      v27 = sub_1CF9E8228();
      v28 = -1 << *(v5 + 32);
      v29 = v27 & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v12 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v12 + 8 * v30);
          if (v34 != -1)
          {
            v13 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v13 = __clz(__rbit64((-1 << v29) & ~*(v12 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
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

    v35 = 1 << *(v3 + 32);
    if (v35 >= 64)
    {
      bzero((v3 + 56), ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v35;
    }

    v2 = v36;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
}

void sub_1CF6ED354(uint64_t result, char a2, unint64_t a3, char a4)
{
  v7 = *(*v4 + 16);
  v8 = *(*v4 + 24);
  if (v8 > v7 && (a4 & 1) != 0)
  {
    goto LABEL_36;
  }

  if (a4)
  {
    sub_1CF6EB350(v7 + 1);
  }

  else
  {
    if (v8 > v7)
    {
      v9 = a3;
      sub_1CF6EEF8C();
      a3 = v9;
      goto LABEL_36;
    }

    sub_1CF6F00CC(v7 + 1);
  }

  v10 = *v4;
  sub_1CF9E81D8();
  if (a2)
  {
    if (a2 == 1)
    {
      MEMORY[0x1D386A470](1);
      MEMORY[0x1D386A4A0](result);
    }

    else
    {
      if (result)
      {
        v11 = 3;
      }

      else
      {
        v11 = 2;
      }

      MEMORY[0x1D386A470](v11);
    }
  }

  else
  {
    MEMORY[0x1D386A470](0);
    sub_1CF9E8208();
  }

  v12 = sub_1CF9E8228();
  v13 = -1 << *(v10 + 32);
  a3 = v12 & ~v13;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v14 = ~v13;
    v15 = a2 == 2;
    v16 = result == 1 && a2 == 2;
    if (result)
    {
      v15 = 0;
    }

    do
    {
      v17 = *(v10 + 48) + 16 * a3;
      v18 = *v17;
      v19 = *(v17 + 8);
      if (v19)
      {
        if (v19 == 1)
        {
          if (a2 == 1 && v18 == result)
          {
            goto LABEL_35;
          }
        }

        else if (v18)
        {
          if (v16)
          {
            goto LABEL_35;
          }
        }

        else if (v15)
        {
          goto LABEL_35;
        }
      }

      else if (!a2 && v18 == result)
      {
LABEL_35:
        sub_1CF9E80F8();
        __break(1u);
        break;
      }

      a3 = (a3 + 1) & v14;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_36:
  v20 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v21 = *(v20 + 48) + 16 * a3;
  *v21 = result;
  *(v21 + 8) = a2;
  v22 = *(v20 + 16);
  v23 = __OFADD__(v22, 1);
  v24 = v22 + 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(v20 + 16) = v24;
  }
}

void sub_1CF6ED564(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, char a5)
{
  v6 = v5;
  v11 = *(*v5 + 16);
  v12 = *(*v5 + 24);
  if (v12 > v11 && (a5 & 1) != 0)
  {
    goto LABEL_18;
  }

  if (a5)
  {
    sub_1CF6EB610(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_1CF6EF0F4();
      goto LABEL_18;
    }

    sub_1CF6F0348(v11 + 1);
  }

  v13 = *v5;
  sub_1CF9E81D8();
  MEMORY[0x1D386A4A0](result);
  sub_1CF9E69C8();
  v14 = sub_1CF9E8228();
  v15 = v13 + 56;
  v16 = -1 << *(v13 + 32);
  a4 = v14 & ~v16;
  if ((*(v13 + 56 + ((a4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a4))
  {
    v17 = ~v16;
    v18 = *(v13 + 48);
    while (1)
    {
      v19 = (v18 + 24 * a4);
      if (*v19 == result)
      {
        v20 = v19[1] == a2 && v19[2] == a3;
        if (v20 || (sub_1CF9E8048() & 1) != 0)
        {
          break;
        }
      }

      a4 = (a4 + 1) & v17;
      if (((*(v15 + ((a4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a4) & 1) == 0)
      {
        goto LABEL_18;
      }
    }

    sub_1CF9E80F8();
    __break(1u);
  }

LABEL_18:
  v21 = *v6;
  *(*v6 + 8 * (a4 >> 6) + 56) |= 1 << a4;
  v22 = (*(v21 + 48) + 24 * a4);
  *v22 = result;
  v22[1] = a2;
  v22[2] = a3;
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

void sub_1CF6ED718(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_1CF6EB890(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      sub_1CF6EF25C();
      goto LABEL_16;
    }

    sub_1CF6F05A0(v8 + 1);
  }

  v10 = *v4;
  sub_1CF9E81D8();
  sub_1CF9E69C8();
  v11 = sub_1CF9E8228();
  v12 = -1 << *(v10 + 32);
  a3 = v11 & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      v15 = *v14 == result && v14[1] == a2;
      if (v15 || (sub_1CF9E8048() & 1) != 0)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = result;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return;
  }

  __break(1u);
LABEL_19:
  sub_1CF9E80F8();
  __break(1u);
}

void sub_1CF6ED898(uint64_t result, unint64_t a2, char a3, uint64_t *a4, uint64_t *a5, unint64_t a6)
{
  v8 = *(*v6 + 16);
  v9 = *(*v6 + 24);
  if (v9 > v8 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1CF6EBAF0(v8 + 1, a4, a5);
  }

  else
  {
    if (v9 > v8)
    {
      v10 = a2;
      sub_1CF6EF3B8(a4, a5);
      a2 = v10;
      goto LABEL_12;
    }

    sub_1CF6F07D8(v8 + 1, a4, a5);
  }

  v11 = *v6;
  v12 = sub_1CF9E81C8();
  v13 = -1 << *(v11 + 32);
  a2 = v12 & ~v13;
  if ((*(v11 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v14 = ~v13;
    while (*(*(v11 + 48) + 8 * a2) != result)
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
  *(*(v15 + 48) + 8 * a2) = result;
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
  sub_1CF9E80F8();
  __break(1u);
}

void sub_1CF6ED9D4(char *a1, uint64_t a2, unint64_t a3, char a4)
{
  v12 = *(*v5 + 16);
  v13 = *(*v5 + 24);
  v14 = (a2 >> 8) & 1;
  if (v13 > v12 && (a4 & 1) != 0)
  {
    goto LABEL_40;
  }

  if (a4)
  {
    sub_1CF6EBD20(v12 + 1);
  }

  else
  {
    if (v13 > v12)
    {
      sub_1CF6EF4FC();
      goto LABEL_40;
    }

    sub_1CF6F09C0(v12 + 1);
  }

  v15 = *v5;
  sub_1CF9E81D8();
  sub_1CEFF47E0(v71, a1, a2 & 0x1FF);
  v5 = v71;
  v16 = sub_1CF9E8228();
  v4 = (v15 + 56);
  v17 = -1 << *(v15 + 32);
  a3 = v16 & ~v17;
  if ((*(v15 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v6 = ~v17;
    v18 = a2 == 2;
    v19 = a1 == 1 && a2 == 2;
    if (a1)
    {
      v18 = 0;
    }

    v65 = v18;
    v66 = v19;
    v69 = (v15 + 56);
    v70 = v15;
    v68 = v6;
    while (1)
    {
      v23 = *(v15 + 48) + 16 * a3;
      v7 = *v23;
      v5 = *(v23 + 8);
      v8 = *(v23 + 9);
      if ((v8 & 1) == 0)
      {
        break;
      }

      if ((a2 & 0x100) == 0)
      {
        goto LABEL_15;
      }

      v24 = v14;
      v25 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v6 = v26;
      v27 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v4 = a1;
      a1 = v28;
      if (v25 == v27 && v6 == v28)
      {
        goto LABEL_43;
      }

      v30 = sub_1CF9E8048();
      sub_1CEFD0988(v7, v5, 1);
      sub_1CEFD0988(v4, a2, 1);
      v6, v31, v32, v33, v34, v35, v36, v37;
      a1, v38, v39, v40, v41, v42, v43, v44;
      sub_1CEFD0994(v4, a2, 1);
      if (v30)
      {
        goto LABEL_47;
      }

      a1 = v4;
      sub_1CEFD0994(v7, v5, 1);
      v14 = v24;
      v4 = v69;
      v15 = v70;
      v6 = v68;
LABEL_17:
      a3 = (a3 + 1) & v6;
      if (((*&v4[(a3 >> 3) & 0xFFFFFFFFFFFFFF8] >> a3) & 1) == 0)
      {
        goto LABEL_40;
      }
    }

    if ((a2 & 0x100) != 0)
    {
LABEL_15:
      sub_1CEFD0988(*v23, *(v23 + 8), *(v23 + 9));
      sub_1CEFD0988(a1, a2, v14);
      sub_1CEFD0994(v7, v5, v8);
      v20 = a1;
      v21 = a2;
      v22 = v14;
    }

    else
    {
      if (*(v23 + 8))
      {
        if (v5 == 1)
        {
          if (a2 == 1 && v7 == a1)
          {
            v64 = a1;
            v7 = a1;
            goto LABEL_46;
          }
        }

        else if (v7)
        {
          if (v66)
          {
            goto LABEL_44;
          }
        }

        else if (v65)
        {
          v64 = a1;
          v7 = 0;
LABEL_46:
          sub_1CEFD0988(v7, v5, 0);
          sub_1CEFD0988(v64, a2, 0);
LABEL_47:
          sub_1CEFD0994(v7, v5, v8);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFC10, &qword_1CF9FE510);
          sub_1CF9E80F8();
          __break(1u);
          return;
        }
      }

      else if (!a2 && v7 == a1)
      {
LABEL_44:
        v64 = a1;
        goto LABEL_46;
      }

      sub_1CEFD0988(v7, v5, 0);
      sub_1CEFD0988(a1, a2, 0);
      v20 = v7;
      v21 = v5;
      v22 = 0;
    }

    sub_1CEFD0994(v20, v21, v22);
    goto LABEL_17;
  }

LABEL_40:
  v45 = *v67;
  *(*v67 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v46 = *(v45 + 48) + 16 * a3;
  *v46 = a1;
  *(v46 + 8) = a2;
  *(v46 + 9) = v14;
  v47 = *(v45 + 16);
  v48 = __OFADD__(v47, 1);
  v49 = v47 + 1;
  if (v48)
  {
    __break(1u);
LABEL_43:
    sub_1CEFD0988(v7, v5, 1);
    sub_1CEFD0988(v4, a2, 1);
    v6, v50, v51, v52, v53, v54, v55, v56;
    a1, v57, v58, v59, v60, v61, v62, v63;
    sub_1CEFD0994(v4, a2, 1);
    goto LABEL_47;
  }

  *(v45 + 16) = v49;
}

void sub_1CF6EDD90(void *a1, void *a2, void *a3, unsigned __int8 a4, unint64_t a5, char a6)
{
  v8 = *(*v6 + 16);
  v9 = *(*v6 + 24);
  if (v9 > v8 && (a6 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a6)
  {
    sub_1CF6EC01C(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      sub_1CF6EF668();
      goto LABEL_12;
    }

    sub_1CF6F0CA0(v8 + 1);
  }

  v10 = *v6;
  sub_1CF9E81D8();
  sub_1CF7BD790(v30, a1, a2, a3, a4);
  v11 = sub_1CF9E8228();
  v12 = -1 << *(v10 + 32);
  a5 = v11 & ~v12;
  if ((*(v10 + 56 + ((a5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a5))
  {
    v13 = ~v12;
    do
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C0670, &qword_1CFA129D0);
      v14 = *(v10 + 48) + 32 * a5;
      v16 = *v14;
      v15 = *(v14 + 8);
      v17 = *(v14 + 16);
      v18 = *(v14 + 24);
      sub_1CF1FB2C0(*v14, v15, v17, v18);
      v19 = sub_1CF7BCC38(v16, v15, v17, v18, a1, a2, a3, a4);
      sub_1CF484340(v16, v15, v17, v18);
      if (v19)
      {
        goto LABEL_15;
      }

      a5 = (a5 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a5) & 1) != 0);
  }

LABEL_12:
  v20 = *v25;
  *(*v25 + 8 * (a5 >> 6) + 56) |= 1 << a5;
  v21 = *(v20 + 48) + 32 * a5;
  *v21 = a1;
  *(v21 + 8) = a2;
  *(v21 + 16) = a3;
  *(v21 + 24) = a4;
  v22 = *(v20 + 16);
  v23 = __OFADD__(v22, 1);
  v24 = v22 + 1;
  if (!v23)
  {
    *(v20 + 16) = v24;
    return;
  }

  __break(1u);
LABEL_15:
  sub_1CF9E80F8();
  __break(1u);
}

void sub_1CF6EDF74(uint64_t result, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1CF6EC2A4(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      sub_1CF6EF7D4();
      goto LABEL_12;
    }

    sub_1CF6F0F08(v6 + 1);
  }

  v8 = *v3;
  sub_1CF9E81D8();
  sub_1CF7BDAE8();
  v9 = sub_1CF9E8228();
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    do
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4EF0, &unk_1CFA05A90);
      v12 = (*(v8 + 48) + 48 * a2);
      v13 = v12[1];
      v20 = *v12;
      v21[0] = v13;
      *(v21 + 10) = *(v12 + 26);
      if (sub_1CF7BD478(&v20, result))
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v14 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  v15 = (*(v14 + 48) + 48 * a2);
  v16 = *(result + 16);
  *v15 = *result;
  v15[1] = v16;
  *(v15 + 26) = *(result + 26);
  v17 = *(v14 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (!v18)
  {
    *(v14 + 16) = v19;
    return;
  }

  __break(1u);
LABEL_15:
  sub_1CF9E80F8();
  __break(1u);
}

void sub_1CF6EE120(uint64_t a1, unint64_t a2, char a3, uint64_t *a4, uint64_t *a5, unint64_t *a6, void *a7)
{
  v10 = *(*v7 + 16);
  v11 = *(*v7 + 24);
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    v12 = a6;
    v13 = a7;
    sub_1CF6EC52C(v10 + 1, a4, a5);
  }

  else
  {
    if (v11 > v10)
    {
      sub_1CF6EF948(a4, a5);
      goto LABEL_12;
    }

    v12 = a6;
    v13 = a7;
    sub_1CF01B858(v10 + 1, a4, a5);
  }

  v14 = *v7;
  v15 = sub_1CF9E7558();
  v16 = -1 << *(v14 + 32);
  a2 = v15 & ~v16;
  if ((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = ~v16;
    sub_1CEFD57E0(0, v12, v13);
    do
    {
      v18 = *(*(v14 + 48) + 8 * a2);
      v19 = sub_1CF9E7568();

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
  sub_1CF9E80F8();
  __break(1u);
}

void sub_1CF6EE2B0(uint64_t result, const char *a2, int64_t a3, uint64_t *a4, uint64_t *a5, _TtC18FileProviderDaemon8FSTester *a6, uint64_t a7, void *a8)
{
  v11 = v8;
  v12 = a2;
  v14 = *(*v8 + 16);
  v15 = *(*v8 + 24);
  if (v15 > v14 && (a3 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a3)
  {
    v10 = a6;
    sub_1CF6EC74C(v14 + 1, a4, a5);
  }

  else
  {
    if (v15 > v14)
    {
      sub_1CF6EF948(a4, a5);
      goto LABEL_16;
    }

    v10 = a6;
    sub_1CF6F114C(v14 + 1, a4, a5);
  }

  v16 = *v8;
  _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v9 = v17;
  sub_1CF9E81D8();
  sub_1CF9E69C8();
  v18 = sub_1CF9E8228();
  v9, v19, v20, v21, v22, v23, v24, v25;
  v26 = -1 << *(v16 + 32);
  v12 = v18 & ~v26;
  if ((*(v16 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v27 = ~v26;
    (v10)(0);
    do
    {
      v28 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v10 = v29;
      a3 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v30 = v28;
      v9 = a2;
      if (v30 == a3 && v10 == a2)
      {
        goto LABEL_19;
      }

      v32 = sub_1CF9E8048();
      v10, v33, v34, v35, v36, v37, v38, v39;
      v9, v40, v41, v42, v43, v44, v45, v46;
      if (v32)
      {
        goto LABEL_20;
      }

      v12 = (v12 + 1) & v27;
    }

    while (((*(v16 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0);
  }

LABEL_16:
  v47 = *v11;
  *(*v11 + 8 * (v12 >> 6) + 56) |= 1 << v12;
  *(*(v47 + 48) + 8 * v12) = result;
  v48 = *(v47 + 16);
  v49 = __OFADD__(v48, 1);
  v50 = v48 + 1;
  if (!v49)
  {
    *(v47 + 16) = v50;
    return;
  }

  __break(1u);
LABEL_19:
  v10, a2, a3, a4, a5, a6, a7, a8;
  v9, v51, v52, v53, v54, v55, v56, v57;
LABEL_20:
  sub_1CF9E80F8();
  __break(1u);
}

void sub_1CF6EE4BC(uint64_t result, uint64_t a2, char a3, unint64_t a4, char a5)
{
  v8 = *(*v5 + 16);
  v9 = *(*v5 + 24);
  if (v9 > v8 && (a5 & 1) != 0)
  {
    goto LABEL_25;
  }

  if (a5)
  {
    sub_1CF6EC9C0(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      sub_1CF6EFA9C();
      goto LABEL_25;
    }

    sub_1CF6F1398(v8 + 1);
  }

  v10 = *v5;
  sub_1CF9E81D8();
  _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v12 = v11;
  sub_1CF9E69C8();
  v12, v13, v14, v15, v16, v17, v18, v19;
  sub_1CF9E81F8();
  if ((a3 & 1) == 0)
  {
    MEMORY[0x1D386A470](a2);
  }

  v20 = sub_1CF9E8228();
  v21 = -1 << *(v10 + 32);
  a4 = v20 & ~v21;
  if ((*(v10 + 56 + ((a4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a4))
  {
    v22 = ~v21;
    do
    {
      v23 = *(v10 + 48) + 24 * a4;
      v24 = *(v23 + 8);
      v25 = *(v23 + 16);
      v26 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v28 = v27;
      v30 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v36 = v26;
      v37 = v29;
      if (v36 == v30 && v28 == v29)
      {
        v28, v29, v30, v31, v32, v33, v34, v35;
        v37, v54, v55, v56, v57, v58, v59, v60;
        if (v25)
        {
          goto LABEL_12;
        }
      }

      else
      {
        v39 = sub_1CF9E8048();
        v28, v40, v41, v42, v43, v44, v45, v46;
        v37, v47, v48, v49, v50, v51, v52, v53;
        if ((v39 & 1) == 0)
        {
          goto LABEL_13;
        }

        if (v25)
        {
LABEL_12:
          if (a3)
          {
            goto LABEL_24;
          }

          goto LABEL_13;
        }
      }

      if ((a3 & 1) == 0 && v24 == a2)
      {
LABEL_24:
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4BD0, &unk_1CF9FE500);
        sub_1CF9E80F8();
        __break(1u);
        break;
      }

LABEL_13:
      a4 = (a4 + 1) & v22;
    }

    while (((*(v10 + 56 + ((a4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a4) & 1) != 0);
  }

LABEL_25:
  v61 = *v66;
  *(*v66 + 8 * (a4 >> 6) + 56) |= 1 << a4;
  v62 = *(v61 + 48) + 24 * a4;
  *v62 = result;
  *(v62 + 8) = a2;
  *(v62 + 16) = a3 & 1;
  v63 = *(v61 + 16);
  v64 = __OFADD__(v63, 1);
  v65 = v63 + 1;
  if (v64)
  {
    __break(1u);
  }

  else
  {
    *(v61 + 16) = v65;
  }
}

void sub_1CF6EE72C(unint64_t result, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1CF6ECC78(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      sub_1CF6EFC04();
      goto LABEL_12;
    }

    sub_1CF6F163C(v6 + 1);
  }

  v8 = *v3;
  sub_1CF9E81D8();
  sub_1CF82009C(v19, result);
  v9 = sub_1CF9E8228();
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    do
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C2880, &unk_1CFA12AB0);
      v12 = *(*(v8 + 48) + 8 * a2);
      sub_1CEFD09A0(v12);
      v13 = sub_1CF81C5BC(v12, result);
      sub_1CEFD0A98(v12);
      if (v13)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v14 = *v18;
  *(*v18 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 8 * a2) = result;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return;
  }

  __break(1u);
LABEL_15:
  sub_1CF9E80F8();
  __break(1u);
}

uint64_t sub_1CF6EE8BC(uint64_t a1, unint64_t a2, char a3)
{
  v4 = v3;
  v64 = a1;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C4FB0, &unk_1CFA17180);
  MEMORY[0x1EEE9AC00](v63);
  v8 = &v55 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFD70, &qword_1CFA12AC0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v58 = &v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v55 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFCC0, &unk_1CF9FCB50);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v57 = &v55 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v61 = &v55 - v17;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF650, &unk_1CF9FCB40);
  v18 = *(v66 - 8);
  MEMORY[0x1EEE9AC00](v66);
  v65 = &v55 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v55 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v55 - v24;
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v55 - v27;
  v29 = *(*v4 + 16);
  v30 = *(*v4 + 24);
  v55 = v18;
  v56 = v4;
  if (v30 <= v29 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_1CF6ECEC8(v29 + 1);
    }

    else
    {
      if (v30 > v29)
      {
        sub_1CF6EFD54();
        goto LABEL_24;
      }

      sub_1CF6F1864(v29 + 1);
    }

    v62 = *v4;
    sub_1CF9E81D8();
    sub_1CEFCCBDC(v64, v28, &unk_1EC4BF650, &unk_1CF9FCB40);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1CEFE55D0(v28, v13, &unk_1EC4BFD70, &qword_1CFA12AC0);
      MEMORY[0x1D386A470](1);
      sub_1CF1CE0C8(v67);
      v31 = v13;
      v32 = &unk_1EC4BFD70;
      v33 = &qword_1CFA12AC0;
    }

    else
    {
      v34 = v28;
      v35 = v61;
      sub_1CEFE55D0(v34, v61, &unk_1EC4BFCC0, &unk_1CF9FCB50);
      MEMORY[0x1D386A470](0);
      sub_1CF1CDC08(v67);
      v31 = v35;
      v32 = &unk_1EC4BFCC0;
      v33 = &unk_1CF9FCB50;
    }

    sub_1CEFCCC44(v31, v32, v33);
    v36 = sub_1CF9E8228();
    v37 = -1 << *(v62 + 32);
    a2 = v36 & ~v37;
    v61 = v62 + 56;
    if ((*(v62 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v60 = v22;
      v38 = ~v37;
      v39 = *(v18 + 72);
      v59 = v39;
      do
      {
        sub_1CEFCCBDC(*(v62 + 48) + v39 * a2, v25, &unk_1EC4BF650, &unk_1CF9FCB40);
        v43 = *(v63 + 48);
        sub_1CEFCCBDC(v25, v8, &unk_1EC4BF650, &unk_1CF9FCB40);
        sub_1CEFCCBDC(v64, &v8[v43], &unk_1EC4BF650, &unk_1CF9FCB40);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          sub_1CEFCCBDC(v8, v65, &unk_1EC4BF650, &unk_1CF9FCB40);
          if (swift_getEnumCaseMultiPayload() == 1)
          {
            v44 = v58;
            sub_1CEFE55D0(&v8[v43], v58, &unk_1EC4BFD70, &qword_1CFA12AC0);
            v45 = sub_1CF469E78(v65, v44);
            sub_1CEFCCC44(v44, &unk_1EC4BFD70, &qword_1CFA12AC0);
            sub_1CEFCCC44(v25, &unk_1EC4BF650, &unk_1CF9FCB40);
            sub_1CEFCCC44(v65, &unk_1EC4BFD70, &qword_1CFA12AC0);
            if (v45)
            {
              goto LABEL_27;
            }

LABEL_22:
            v40 = v8;
            v41 = &unk_1EC4BF650;
            v42 = &unk_1CF9FCB40;
            goto LABEL_15;
          }

          sub_1CEFCCC44(v25, &unk_1EC4BF650, &unk_1CF9FCB40);
          sub_1CEFCCC44(v65, &unk_1EC4BFD70, &qword_1CFA12AC0);
        }

        else
        {
          v46 = v38;
          v47 = v60;
          sub_1CEFCCBDC(v8, v60, &unk_1EC4BF650, &unk_1CF9FCB40);
          if (swift_getEnumCaseMultiPayload() != 1)
          {
            v48 = v57;
            sub_1CEFE55D0(&v8[v43], v57, &unk_1EC4BFCC0, &unk_1CF9FCB50);
            v49 = sub_1CF4692CC(v47, v48);
            sub_1CEFCCC44(v48, &unk_1EC4BFCC0, &unk_1CF9FCB50);
            sub_1CEFCCC44(v25, &unk_1EC4BF650, &unk_1CF9FCB40);
            sub_1CEFCCC44(v47, &unk_1EC4BFCC0, &unk_1CF9FCB50);
            v38 = v46;
            v39 = v59;
            if (v49)
            {
              goto LABEL_27;
            }

            goto LABEL_22;
          }

          sub_1CEFCCC44(v25, &unk_1EC4BF650, &unk_1CF9FCB40);
          sub_1CEFCCC44(v47, &unk_1EC4BFCC0, &unk_1CF9FCB50);
          v38 = v46;
          v39 = v59;
        }

        v40 = v8;
        v41 = &qword_1EC4C4FB0;
        v42 = &unk_1CFA17180;
LABEL_15:
        sub_1CEFCCC44(v40, v41, v42);
        a2 = (a2 + 1) & v38;
      }

      while (((*(v61 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
    }
  }

LABEL_24:
  v50 = *v56;
  *(*v56 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = sub_1CEFE55D0(v64, *(v50 + 48) + *(v55 + 72) * a2, &unk_1EC4BF650, &unk_1CF9FCB40);
  v52 = *(v50 + 16);
  v53 = __OFADD__(v52, 1);
  v54 = v52 + 1;
  if (v53)
  {
    __break(1u);
LABEL_27:
    sub_1CEFCCC44(v8, &unk_1EC4BF650, &unk_1CF9FCB40);
    result = sub_1CF9E80F8();
    __break(1u);
  }

  else
  {
    *(v50 + 16) = v54;
  }

  return result;
}

void sub_1CF6EEF8C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C2768, &qword_1CFA12980);
  v2 = *v0;
  v3 = sub_1CF9E78D8();
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

void sub_1CF6EF0F4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C2870, &qword_1CFA12AA0);
  v2 = *v0;
  v3 = sub_1CF9E78D8();
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
        v17 = 24 * (v14 | (v8 << 6));
        v18 = *(v2 + 48) + v17;
        v19 = *(v18 + 16);
        v20 = *(v4 + 48) + v17;
        *v20 = *v18;
        *(v20 + 16) = v19;
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

void sub_1CF6EF25C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C27A8, &unk_1CFA129B0);
  v2 = *v0;
  v3 = sub_1CF9E78D8();
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

void sub_1CF6EF3B8(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_1CF9E78D8();
  v6 = v5;
  if (*(v4 + 16))
  {
    v7 = (v5 + 56);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || v7 >= v4 + 56 + 8 * v8)
    {
      memmove(v7, (v4 + 56), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v4 + 56);
    for (i = (v11 + 63) >> 6; v13; *(*(v6 + 48) + 8 * v16) = *(*(v4 + 48) + 8 * v16))
    {
      v15 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
      v16 = v15 | (v10 << 6);
LABEL_17:
      ;
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= i)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 56 + 8 * v10);
      ++v17;
      if (v18)
      {
        v13 = (v18 - 1) & v18;
        v16 = __clz(__rbit64(v18)) | (v10 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }
}

void sub_1CF6EF4FC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C27B0, &qword_1CFA129C0);
  v2 = *v0;
  v3 = sub_1CF9E78D8();
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
        v19 = *v18;
        v20 = *(v18 + 9);
        v21 = *(v4 + 48) + v17;
        v22 = *(v18 + 8);
        *v21 = *v18;
        *(v21 + 8) = v22;
        *(v21 + 9) = v20;
        sub_1CEFD0988(v19, v22, v20);
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

void sub_1CF6EF668()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C27C0, &unk_1CFA129D8);
  v2 = *v0;
  v3 = sub_1CF9E78D8();
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
        v19 = *v18;
        v20 = *(v18 + 8);
        v21 = *(v18 + 16);
        v22 = *(v4 + 48) + v17;
        v23 = *(v18 + 24);
        *v22 = *v18;
        *(v22 + 8) = v20;
        *(v22 + 16) = v21;
        *(v22 + 24) = v23;
        sub_1CF1FB2C0(v19, v20, v21, v23);
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

void sub_1CF6EF7D4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C27C8, &unk_1CFA129E8);
  v2 = *v0;
  v3 = sub_1CF9E78D8();
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
    for (i = (v9 + 63) >> 6; v11; *(v21 + 40) = v20)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = 48 * v14;
      v18 = *(v2 + 48) + v17;
      v19 = *(v18 + 32);
      v20 = *(v18 + 40);
      v21 = *(v4 + 48) + v17;
      v22 = *(v18 + 16);
      *v21 = *v18;
      *(v21 + 16) = v22;
      *(v21 + 32) = v19;
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

void sub_1CF6EF948(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_1CF9E78D8();
  v6 = v5;
  if (*(v4 + 16))
  {
    v7 = (v5 + 56);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || v7 >= v4 + 56 + 8 * v8)
    {
      memmove(v7, (v4 + 56), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 56);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = *(*(v4 + 48) + 8 * v19);
        *(*(v6 + 48) + 8 * v19) = v20;
        v21 = v20;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 56 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }
}

void sub_1CF6EFA9C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C4E70, &qword_1CFA18030);
  v2 = *v0;
  v3 = sub_1CF9E78D8();
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
        v17 = 24 * (v14 | (v8 << 6));
        v18 = *(v2 + 48) + v17;
        v19 = *v18;
        v20 = *(v18 + 8);
        LOBYTE(v18) = *(v18 + 16);
        v21 = *(v4 + 48) + v17;
        *v21 = v19;
        *(v21 + 8) = v20;
        *(v21 + 16) = v18;
        v22 = v19;
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

void sub_1CF6EFC04()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C2878, &qword_1CFA12AA8);
  v2 = *v0;
  v3 = sub_1CF9E78D8();
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
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        sub_1CEFD09A0(v18);
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

void sub_1CF6EFD54()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF650, &unk_1CF9FCB40);
  v22 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v21 - v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C2888, &qword_1CFA12AC8);
  v5 = *v0;
  v6 = sub_1CF9E78D8();
  v7 = v6;
  if (*(v5 + 16))
  {
    v21 = v1;
    v8 = (v6 + 56);
    v9 = v5 + 56;
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || v8 >= v9 + 8 * v10)
    {
      memmove(v8, (v5 + 56), 8 * v10);
    }

    v11 = 0;
    *(v7 + 16) = *(v5 + 16);
    v12 = 1 << *(v5 + 32);
    v13 = -1;
    v14 = *(v5 + 56);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v15 = v13 & v14;
    v16 = (v12 + 63) >> 6;
    if ((v13 & v14) != 0)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
LABEL_14:
        v20 = *(v22 + 72) * (v17 | (v11 << 6));
        sub_1CEFCCBDC(*(v5 + 48) + v20, v4, &unk_1EC4BF650, &unk_1CF9FCB40);
        sub_1CEFE55D0(v4, *(v7 + 48) + v20, &unk_1EC4BF650, &unk_1CF9FCB40);
      }

      while (v15);
    }

    v18 = v11;
    while (1)
    {
      v11 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v11 >= v16)
      {

        v1 = v21;
        goto LABEL_18;
      }

      v19 = *(v9 + 8 * v11);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v7;
  }
}

void sub_1CF6EFF7C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BFC38, &unk_1CFA05370);
  v2 = *v0;
  v3 = sub_1CF9E78D8();
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

void sub_1CF6F00CC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C2768, &qword_1CFA12980);
  v4 = sub_1CF9E78E8();
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
      sub_1CF9E81D8();
      if (v19)
      {
        if (v19 == 1)
        {
          MEMORY[0x1D386A470](1);
          MEMORY[0x1D386A4A0](v18);
        }

        else
        {
          if (v18)
          {
            v20 = 3;
          }

          else
          {
            v20 = 2;
          }

          MEMORY[0x1D386A470](v20);
        }
      }

      else
      {
        MEMORY[0x1D386A470](0);
        sub_1CF9E8208();
      }

      v21 = sub_1CF9E8228();
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

        goto LABEL_36;
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
        goto LABEL_34;
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
LABEL_36:
    __break(1u);
  }

  else
  {

LABEL_34:
    *v2 = v5;
  }
}

void sub_1CF6F0348(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C2870, &qword_1CFA12AA0);
  v4 = sub_1CF9E78E8();
  v5 = v4;
  if (*(v3 + 16))
  {
    v30 = v3;
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
      v18 = (*(v3 + 48) + 24 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      v21 = v18[2];
      sub_1CF9E81D8();
      MEMORY[0x1D386A4A0](v19);

      sub_1CF9E69C8();
      v22 = sub_1CF9E8228();
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

        goto LABEL_28;
      }

      v13 = __clz(__rbit64((-1 << v24) & ~*(v12 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 24 * v13);
      *v14 = v19;
      v14[1] = v20;
      v14[2] = v21;
      ++*(v5 + 16);
      v3 = v30;
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

void sub_1CF6F05A0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C27A8, &unk_1CFA129B0);
  v4 = sub_1CF9E78E8();
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
      v18 = *v17;
      v19 = v17[1];
      sub_1CF9E81D8();

      sub_1CF9E69C8();
      v20 = sub_1CF9E8228();
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
      v13 = (*(v5 + 48) + 16 * v12);
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

void sub_1CF6F07D8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v6 = sub_1CF9E78E8();
  v7 = v6;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = 1 << *(v5 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v5 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = v6 + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_15:
      v18 = *(*(v5 + 48) + 8 * (v15 | (v8 << 6)));
      v19 = sub_1CF9E81C8();
      v20 = -1 << *(v7 + 32);
      v21 = v19 & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_26;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v7 + 48) + 8 * v14) = v18;
      ++*(v7 + 16);
    }

    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v8 >= v12)
      {
        goto LABEL_24;
      }

      v17 = *(v5 + 56 + 8 * v8);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
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

    *v4 = v7;
  }
}

void sub_1CF6F09C0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C27B0, &qword_1CFA129C0);
  v4 = sub_1CF9E78E8();
  v5 = v4;
  if (*(v3 + 16))
  {
    v43 = v1;
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
      v18 = *(v3 + 48) + 16 * (v15 | (v6 << 6));
      v19 = *v18;
      v20 = *(v18 + 8);
      v21 = *(v18 + 9);
      sub_1CF9E81D8();
      v44 = v20;
      if (v21)
      {
        MEMORY[0x1D386A470](1);
        _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
        v22 = v3;
        v24 = v23;
        v25 = v19;
        sub_1CF9E69C8();
        v26 = v24;
        v3 = v22;
        v26, v27, v28, v29, v30, v31, v32, v33;
      }

      else
      {
        MEMORY[0x1D386A470](0);
        if (v20)
        {
          if (v20 == 1)
          {
            MEMORY[0x1D386A470](1);
            MEMORY[0x1D386A4A0](v19);
          }

          else
          {
            if (v19)
            {
              v34 = 3;
            }

            else
            {
              v34 = 2;
            }

            MEMORY[0x1D386A470](v34);
          }
        }

        else
        {
          MEMORY[0x1D386A470](0);
          sub_1CF9E8208();
        }
      }

      v35 = sub_1CF9E8228();
      v36 = -1 << *(v5 + 32);
      v37 = v35 & ~v36;
      v38 = v37 >> 6;
      if (((-1 << v37) & ~*(v12 + 8 * (v37 >> 6))) == 0)
      {
        v39 = 0;
        v40 = (63 - v36) >> 6;
        while (++v38 != v40 || (v39 & 1) == 0)
        {
          v41 = v38 == v40;
          if (v38 == v40)
          {
            v38 = 0;
          }

          v39 |= v41;
          v42 = *(v12 + 8 * v38);
          if (v42 != -1)
          {
            v13 = __clz(__rbit64(~v42)) + (v38 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_38;
      }

      v13 = __clz(__rbit64((-1 << v37) & ~*(v12 + 8 * (v37 >> 6)))) | v37 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = *(v5 + 48) + 16 * v13;
      *v14 = v19;
      *(v14 + 8) = v44;
      *(v14 + 9) = v21;
      ++*(v5 + 16);
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

        v2 = v43;
        goto LABEL_36;
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
LABEL_38:
    __break(1u);
  }

  else
  {

LABEL_36:
    *v2 = v5;
  }
}

void sub_1CF6F0CA0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C27C0, &unk_1CFA129D8);
  v4 = sub_1CF9E78E8();
  v5 = v4;
  if (*(v3 + 16))
  {
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
      v32 = (v10 - 1) & v10;
LABEL_15:
      v18 = *(v3 + 48) + 32 * (v15 | (v6 << 6));
      v19 = *v18;
      v20 = *(v18 + 8);
      v21 = *(v18 + 16);
      v22 = *(v18 + 24);
      sub_1CF9E81D8();
      sub_1CF1FB2C0(v19, v20, v21, v22);
      sub_1CF7BD790(v33, v19, v20, v21, v22);
      v23 = sub_1CF9E8228();
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
      v14 = *(v5 + 48) + 32 * v13;
      *v14 = v19;
      *(v14 + 8) = v20;
      *(v14 + 16) = v21;
      *(v14 + 24) = v22;
      ++*(v5 + 16);
      v3 = v31;
      v10 = v32;
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
        goto LABEL_26;
      }

      v17 = *(v7 + 8 * v6);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v32 = (v17 - 1) & v17;
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

void sub_1CF6F0F08(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C27C8, &unk_1CFA129E8);
  v4 = sub_1CF9E78E8();
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
      v17 = (*(v3 + 48) + 48 * (v14 | (v6 << 6)));
      v26 = *v17;
      *v27 = v17[1];
      *&v27[10] = *(v17 + 26);
      sub_1CF9E81D8();
      sub_1CF7BDAE8();
      v18 = sub_1CF9E8228();
      v19 = -1 << *(v5 + 32);
      v20 = v18 & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v11 + 8 * (v20 >> 6))) == 0)
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
          v25 = *(v11 + 8 * v21);
          if (v25 != -1)
          {
            v12 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v20) & ~*(v11 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v5 + 48) + 48 * v12);
      *v13 = v26;
      v13[1] = *v27;
      *(v13 + 26) = *&v27[10];
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

void sub_1CF6F114C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v6 = sub_1CF9E78E8();
  v7 = v6;
  if (*(v5 + 16))
  {
    v38 = v3;
    v39 = v5;
    v8 = 0;
    v9 = v5 + 56;
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
    v14 = v6 + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(*(v5 + 48) + 8 * (v16 | (v8 << 6)));
      _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v21 = v20;
      sub_1CF9E81D8();
      v22 = v19;
      sub_1CF9E69C8();
      v23 = sub_1CF9E8228();
      v21, v24, v25, v26, v27, v28, v29, v30;
      v31 = -1 << *(v7 + 32);
      v32 = v23 & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v14 + 8 * (v32 >> 6))) == 0)
      {
        v34 = 0;
        v35 = (63 - v31) >> 6;
        while (++v33 != v35 || (v34 & 1) == 0)
        {
          v36 = v33 == v35;
          if (v33 == v35)
          {
            v33 = 0;
          }

          v34 |= v36;
          v37 = *(v14 + 8 * v33);
          if (v37 != -1)
          {
            v15 = __clz(__rbit64(~v37)) + (v33 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v15 = __clz(__rbit64((-1 << v32) & ~*(v14 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v22;
      ++*(v7 + 16);
      v5 = v39;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v4 = v38;
        goto LABEL_26;
      }

      v18 = *(v9 + 8 * v8);
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
    *v4 = v7;
  }
}

void sub_1CF6F1398(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C4E70, &qword_1CFA18030);
  v4 = sub_1CF9E78E8();
  v5 = v4;
  if (*(v3 + 16))
  {
    v40 = v1;
    v41 = v3;
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
      v43 = (v10 - 1) & v10;
LABEL_15:
      v18 = *(v3 + 48) + 24 * (v15 | (v6 << 6));
      v19 = *v18;
      v20 = *(v18 + 8);
      v21 = *(v18 + 16);
      v22 = v5;
      sub_1CF9E81D8();
      _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v24 = v23;
      v42 = v19;
      sub_1CF9E69C8();
      v24, v25, v26, v27, v28, v29, v30, v31;
      sub_1CF9E81F8();
      if (v21 != 1)
      {
        MEMORY[0x1D386A470](v20);
      }

      v32 = sub_1CF9E8228();
      v5 = v22;
      v33 = -1 << *(v22 + 32);
      v34 = v32 & ~v33;
      v35 = v34 >> 6;
      if (((-1 << v34) & ~*(v12 + 8 * (v34 >> 6))) == 0)
      {
        v36 = 0;
        v37 = (63 - v33) >> 6;
        while (++v35 != v37 || (v36 & 1) == 0)
        {
          v38 = v35 == v37;
          if (v35 == v37)
          {
            v35 = 0;
          }

          v36 |= v38;
          v39 = *(v12 + 8 * v35);
          if (v39 != -1)
          {
            v13 = __clz(__rbit64(~v39)) + (v35 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v34) & ~*(v12 + 8 * (v34 >> 6)))) | v34 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = *(v22 + 48) + 24 * v13;
      v10 = v43;
      *v14 = v42;
      *(v14 + 8) = v20;
      *(v14 + 16) = v21;
      ++*(v22 + 16);
      v3 = v41;
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

        v2 = v40;
        goto LABEL_28;
      }

      v17 = *(v7 + 8 * v6);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v43 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v5;
  }
}

void sub_1CF6F163C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C2878, &qword_1CFA12AA8);
  v4 = sub_1CF9E78E8();
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
      sub_1CF9E81D8();
      sub_1CEFD09A0(v16);
      sub_1CF82009C(v25, v16);
      v17 = sub_1CF9E8228();
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

void sub_1CF6F1864(uint64_t a1)
{
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF650, &unk_1CF9FCB40);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v17 - v5;
  v7 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C2888, &qword_1CFA12AC8);
  v8 = sub_1CF9E78E8();
  if (*(v7 + 16))
  {
    v18 = v2;
    v9 = 0;
    v10 = 1 << *(v7 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(v7 + 56);
    v13 = (v10 + 63) >> 6;
    while (v12)
    {
      v14 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_11:
      sub_1CEFCCBDC(*(v7 + 48) + *(v4 + 72) * (v14 | (v9 << 6)), v6, &unk_1EC4BF650, &unk_1CF9FCB40);
      sub_1CF476F2C(v6, v8);
    }

    v15 = v9;
    while (1)
    {
      v9 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v9 >= v13)
      {

        v2 = v18;
        goto LABEL_15;
      }

      v16 = *(v7 + 56 + 8 * v9);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_15:
    *v2 = v8;
  }
}

void sub_1CF6F1A54(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BFC38, &unk_1CFA05370);
  v4 = sub_1CF9E78E8();
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
      sub_1CF9E81D8();
      _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v18 = v17;

      sub_1CF9E69C8();
      v18, v19, v20, v21, v22, v23, v24, v25;
      v26 = sub_1CF9E8228();
      v27 = -1 << *(v5 + 32);
      v28 = v26 & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v11 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v11 + 8 * v29);
          if (v33 != -1)
          {
            v12 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v28) & ~*(v11 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
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

void *sub_1CF6F1C9C(uint64_t a1, uint64_t (*a2)(char *, unint64_t, uint64_t), uint64_t (*a3)(void *, uint64_t, uint64_t))
{
  v5 = a1;
  v14[1] = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 32);
  v7 = ((1 << v6) + 63) >> 6;
  if ((v6 & 0x3Fu) <= 0xD)
  {
    goto LABEL_2;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_2:
    MEMORY[0x1EEE9AC00](a1);
    v9 = v14 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v9, v8);
    result = a2(v9, v7, v5);
    if (v3)
    {
      return swift_willThrow();
    }

    return result;
  }

  v12 = swift_slowAlloc();
  v13 = sub_1CF6F20C4(v12, v7, v5, a3);
  result = MEMORY[0x1D386CDC0](v12, -1, -1);
  if (!v3)
  {
    return v13;
  }

  return result;
}

void sub_1CF6F1E0C(unint64_t *result, uint64_t a2, uint64_t a3)
{
  v4 = 0;
  v5 = 0;
  v6 = a3 + 64;
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
LABEL_11:
    v14 = v11 | (v5 << 6);
    if (*(*(a3 + 56) + 8 * v14) == 1)
    {
      v15 = *(*(a3 + 48) + 16 * v14 + 8);

      v16 = sub_1CF9E69D8();
      v15, v17, v18, v19, v20, v21, v22, v23;
      if (v16 >= 3)
      {
        *(result + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
        if (__OFADD__(v4++, 1))
        {
          __break(1u);
LABEL_16:
          sub_1CF4F5784(result, a2, v4, a3);
          return;
        }
      }
    }
  }

  v12 = v5;
  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= v10)
    {
      goto LABEL_16;
    }

    v13 = *(v6 + 8 * v5);
    ++v12;
    if (v13)
    {
      v11 = __clz(__rbit64(v13));
      v9 = (v13 - 1) & v13;
      goto LABEL_11;
    }
  }

  __break(1u);
}

void sub_1CF6F1F68(unint64_t *result, uint64_t a2, uint64_t a3)
{
  v4 = 0;
  v5 = 0;
  v6 = a3 + 64;
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
LABEL_11:
    v14 = v11 | (v5 << 6);
    if (*(*(a3 + 56) + 8 * v14) <= 1uLL)
    {
      v15 = *(*(a3 + 48) + 16 * v14 + 8);

      v16 = sub_1CF9E69D8();
      v15, v17, v18, v19, v20, v21, v22, v23;
      if (v16 > 2)
      {
        continue;
      }
    }

    *(result + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
    if (__OFADD__(v4++, 1))
    {
      __break(1u);
LABEL_16:
      sub_1CF4F5784(result, a2, v4, a3);
      return;
    }
  }

  v12 = v5;
  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= v10)
    {
      goto LABEL_16;
    }

    v13 = *(v6 + 8 * v5);
    ++v12;
    if (v13)
    {
      v11 = __clz(__rbit64(v13));
      v9 = (v13 - 1) & v13;
      goto LABEL_11;
    }
  }

  __break(1u);
}

void *sub_1CF6F20C4(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t, uint64_t))
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

    v8 = a4(result, a2, a3);

    return v8;
  }

  return result;
}

void sub_1CF6F214C(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1CF6F3794(v2);
  }

  v3 = v2[2];
  v4[0] = (v2 + 4);
  v4[1] = v3;
  sub_1CF6F21B8(v4);
  *a1 = v2;
}

void sub_1CF6F21B8(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_1CF9E7F88();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v8 = v3;
      if (v2 <= 1)
      {
        v9 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C22C0, &unk_1CFA10820);
        v9 = sub_1CF9E6DB8();
        *(v9 + 16) = v2 / 2;
      }

      v18[0] = (v9 + 32);
      v18[1] = (v2 / 2);
      v10 = v9;
      sub_1CF6F2488(v18, v19, a1, v8, v4, v5, v6, v7);
      *v10->tree = 0;
      v10, v11, v12, v13, v14, v15, v16, v17;
      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_1CF6F22C0(0, v2, 1, a1);
  }
}

uint64_t sub_1CF6F22C0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
LABEL_5:
    v5 = *(v4 + 24 * a3 + 16);
    v6 = a3;
    while (1)
    {
      v7 = (v4 + 24 * v6);
      v8 = *(v7 - 1);
      v9 = *(v5 + 16);
      if (!v9)
      {
        break;
      }

      if (v9 > 4)
      {
        v13 = *(v5 + 16) & 3;
        if ((v9 & 3) == 0)
        {
          v13 = 4;
        }

        v11 = v9 - v13;
        v14 = 0uLL;
        v15 = v9 - v13;
        v16 = (v5 + 80);
        v17 = 0uLL;
        do
        {
          v18 = v16 - 6;
          v19 = vld3q_f64(v18);
          v20 = vld3q_f64(v16);
          v14 = vbslq_s8(vcgtq_s64(v19, v14), v19, v14);
          v17 = vbslq_s8(vcgtq_s64(v20, v17), v20, v17);
          v16 += 12;
          v15 -= 4;
        }

        while (v15);
        v21 = vbslq_s8(vcgtq_s64(v14, v17), v14, v17);
        v22 = vextq_s8(v21, v21, 8uLL).u64[0];
        v10 = vbsl_s8(vcgtd_s64(v21.i64[0], v22), *v21.i8, v22);
      }

      else
      {
        v10 = 0;
        v11 = 0;
      }

      v23 = v9 - v11;
      v24 = (v5 + 32 + 24 * v11);
      do
      {
        v26 = *v24;
        v24 += 3;
        v25 = v26;
        if (v26 > v10)
        {
          v10 = v25;
        }

        --v23;
      }

      while (v23);
      v12 = *(v8 + 16);
      if (v12)
      {
        goto LABEL_21;
      }

      if (v10 <= 0)
      {
        goto LABEL_4;
      }

LABEL_39:
      if (!v4)
      {
        __break(1u);
        return result;
      }

      --v6;
      v39 = v7 - 3;
      v41 = *v7;
      v40 = v7[1];
      *v7 = *(v7 - 3);
      v7[2] = *(v7 - 1);
      *v39 = v41;
      v39[1] = v40;
      v39[2] = v5;
      if (v6 == result)
      {
LABEL_4:
        if (++a3 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }
    }

    v12 = *(v8 + 16);
    if (!v12)
    {
      goto LABEL_4;
    }

    v10 = 0;
LABEL_21:
    if (v12 > 1)
    {
      v27 = 0;
      v29 = 0;
      v28 = v12 & 0x7FFFFFFFFFFFFFFELL;
      v30 = (v8 + 56);
      v31 = v12 & 0x7FFFFFFFFFFFFFFELL;
      do
      {
        v32 = *(v30 - 3);
        v34 = *v30;
        v30 += 6;
        v33 = v34;
        if (v32 > v27)
        {
          v27 = v32;
        }

        if (v33 > v29)
        {
          v29 = v33;
        }

        v31 -= 2;
      }

      while (v31);
      if (v27 <= v29)
      {
        v27 = v29;
      }

      if (v12 == v28)
      {
LABEL_36:
        if (v27 >= v10)
        {
          goto LABEL_4;
        }

        goto LABEL_39;
      }
    }

    else
    {
      v27 = 0;
      v28 = 0;
    }

    v35 = v12 - v28;
    v36 = (v8 + 24 * v28 + 32);
    do
    {
      v38 = *v36;
      v36 += 3;
      v37 = v38;
      if (v38 > v27)
      {
        v27 = v37;
      }

      --v35;
    }

    while (v35);
    goto LABEL_36;
  }

  return result;
}

void sub_1CF6F2488(char **result, const char *a2, uint64_t *a3, unint64_t a4, char *a5, char *a6, uint64_t a7, void *a8)
{
  v183 = a3;
  v9 = v8;
  v10 = a3[1];
  if (v10 < 1)
  {
    v13 = MEMORY[0x1E69E7CC0];
LABEL_172:
    v12 = *result;
    if (!*result)
    {
      goto LABEL_210;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_204;
    }

    goto LABEL_174;
  }

  v11 = a4;
  v12 = 0;
  v13 = MEMORY[0x1E69E7CC0];
  v14 = 4;
  v181 = a4;
  while (1)
  {
    v15 = v12++;
    if (v12 < v10)
    {
      v16 = *v183;
      v17 = *(*v183 + 24 * v12 + 16);
      v18 = *(v17 + 16);
      if (v18)
      {
        if (v18 > 4)
        {
          v21 = *(v17 + 16) & 3;
          if ((v18 & 3) == 0)
          {
            v21 = 4;
          }

          v20 = v18 - v21;
          v22 = (v17 + 80);
          v23 = 0uLL;
          v24 = v20;
          v25 = 0uLL;
          do
          {
            v26 = v22 - 6;
            v27 = vld3q_f64(v26);
            v28 = vld3q_f64(v22);
            v23 = vbslq_s8(vcgtq_s64(v27, v23), v27, v23);
            v25 = vbslq_s8(vcgtq_s64(v28, v25), v28, v25);
            v22 += 12;
            v24 -= 4;
          }

          while (v24);
          v29 = vbslq_s8(vcgtq_s64(v23, v25), v23, v25);
          v30 = vextq_s8(v29, v29, 8uLL).u64[0];
          v19 = vbsl_s8(vcgtd_s64(v29.i64[0], v30), *v29.i8, v30);
        }

        else
        {
          v19 = 0;
          v20 = 0;
        }

        v31 = v18 - v20;
        v32 = (v17 + 24 * v20 + 32);
        do
        {
          v34 = *v32;
          v32 += 3;
          v33 = v34;
          if (*&v34 > *&v19)
          {
            v19 = v33;
          }

          --v31;
        }

        while (v31);
      }

      else
      {
        v19 = 0;
      }

      v35 = *(v16 + 24 * v15 + 16);
      v36 = *(v35 + 16);
      if (v36)
      {
        if (v36 >= 5)
        {
          v39 = *(v35 + 16) & 3;
          if ((v36 & 3) == 0)
          {
            v39 = 4;
          }

          v38 = v36 - v39;
          v40 = (v35 + 80);
          v41 = 0uLL;
          v42 = v38;
          v43 = 0uLL;
          do
          {
            v44 = v40 - 6;
            v45 = vld3q_f64(v44);
            v46 = vld3q_f64(v40);
            v41 = vbslq_s8(vcgtq_s64(v45, v41), v45, v41);
            v43 = vbslq_s8(vcgtq_s64(v46, v43), v46, v43);
            v40 += 12;
            v42 -= 4;
          }

          while (v42);
          v47 = vbslq_s8(vcgtq_s64(v41, v43), v41, v43);
          v48 = vextq_s8(v47, v47, 8uLL).u64[0];
          v37 = vbsl_s8(vcgtd_s64(v47.i64[0], v48), *v47.i8, v48);
        }

        else
        {
          v37 = 0;
          v38 = 0;
        }

        v49 = v36 - v38;
        v50 = (v35 + 24 * v38 + 32);
        do
        {
          v52 = *v50;
          v50 += 3;
          v51 = v52;
          if (*&v52 > *&v37)
          {
            v37 = v51;
          }

          --v49;
        }

        while (v49);
      }

      else
      {
        v37 = 0;
      }

      if (v9)
      {
        goto LABEL_182;
      }

      v12 = v15 + 2;
      if (v15 + 2 < v10)
      {
        do
        {
          v53 = *(v16 + 24 * v12 + 16);
          v54 = *(v53 + 16);
          if (v54)
          {
            if (v54 > 4)
            {
              v57 = *(v53 + 16) & 3;
              if ((v54 & 3) == 0)
              {
                v57 = 4;
              }

              v56 = v54 - v57;
              v58 = (v53 + 80);
              v59 = 0uLL;
              v60 = v56;
              v61 = 0uLL;
              do
              {
                v62 = v58 - 6;
                v63 = vld3q_f64(v62);
                v64 = vld3q_f64(v58);
                v59 = vbslq_s8(vcgtq_s64(v63, v59), v63, v59);
                v61 = vbslq_s8(vcgtq_s64(v64, v61), v64, v61);
                v58 += 12;
                v60 -= 4;
              }

              while (v60);
              v65 = vbslq_s8(vcgtq_s64(v59, v61), v59, v61);
              v66 = vextq_s8(v65, v65, 8uLL).u64[0];
              v55 = vbsl_s8(vcgtd_s64(v65.i64[0], v66), *v65.i8, v66);
            }

            else
            {
              v55 = 0;
              v56 = 0;
            }

            v67 = v54 - v56;
            v68 = (v53 + 24 * v56 + 32);
            do
            {
              v70 = *v68;
              v68 += 3;
              v69 = v70;
              if (*&v70 > *&v55)
              {
                v55 = v69;
              }

              --v67;
            }

            while (v67);
          }

          else
          {
            v55 = 0;
          }

          v71 = *(v17 + 16);
          if (v71)
          {
            if (v71 > 4)
            {
              v74 = *(v17 + 16) & 3;
              if ((v71 & 3) == 0)
              {
                v74 = 4;
              }

              v73 = v71 - v74;
              v75 = (v17 + 80);
              v76 = 0uLL;
              v77 = v73;
              v78 = 0uLL;
              do
              {
                v79 = v75 - 6;
                v80 = vld3q_f64(v79);
                v81 = vld3q_f64(v75);
                v76 = vbslq_s8(vcgtq_s64(v80, v76), v80, v76);
                v78 = vbslq_s8(vcgtq_s64(v81, v78), v81, v78);
                v75 += 12;
                v77 -= 4;
              }

              while (v77);
              v82 = vbslq_s8(vcgtq_s64(v76, v78), v76, v78);
              v83 = vextq_s8(v82, v82, 8uLL).u64[0];
              v72 = vbsl_s8(vcgtd_s64(v82.i64[0], v83), *v82.i8, v83);
            }

            else
            {
              v72 = 0;
              v73 = 0;
            }

            v84 = v71 - v73;
            v85 = (v17 + 24 * v73 + 32);
            do
            {
              v87 = *v85;
              v85 += 3;
              v86 = v87;
              if (*&v87 > *&v72)
              {
                v72 = v86;
              }

              --v84;
            }

            while (v84);
            if (*&v37 < *&v19 == *&v72 >= *&v55)
            {
              goto LABEL_63;
            }
          }

          else if (*&v37 < *&v19 == *&v55 < 1)
          {
            goto LABEL_63;
          }

          ++v12;
          v17 = v53;
        }

        while (v12 != v10);
        v12 = v10;
      }

LABEL_63:
      if (*&v37 < *&v19)
      {
        if (v12 < v15)
        {
          goto LABEL_203;
        }

        if (v15 < v12)
        {
          v88 = 0;
          v89 = 24 * v12;
          v90 = 24 * v15;
          v91 = v15;
          do
          {
            if (v91 != (v12 + v88 - 1))
            {
              v97 = *v183;
              if (!*v183)
              {
                goto LABEL_207;
              }

              v92 = v97 + v90;
              v93 = v97 + v89;
              v94 = *v92;
              v95 = *(v92 + 8);
              v96 = *(v93 - 24);
              *(v92 + 16) = *(v93 - 8);
              *v92 = v96;
              *(v93 - 24) = v94;
              *(v93 - 16) = v95;
            }

            ++v91;
            --v88;
            v89 -= 24;
            v90 += 24;
          }

          while (v91 < v12 + v88);
          v10 = v183[1];
        }
      }
    }

    if (v12 < v10)
    {
      if (__OFSUB__(v12, v15))
      {
        goto LABEL_200;
      }

      if (v12 - v15 < v11)
      {
        if (__OFADD__(v15, v11))
        {
          goto LABEL_201;
        }

        if (v15 + v11 < v10)
        {
          v10 = v15 + v11;
        }

        if (v10 < v15)
        {
LABEL_202:
          __break(1u);
LABEL_203:
          __break(1u);
LABEL_204:
          v13 = sub_1CF6F3368(v13, a2, a3, a4, a5, a6, v14, a8);
LABEL_174:
          v177 = *v13->tree;
          if (v177 >= 2)
          {
            while (*v183)
            {
              v178 = *(&v13->super.isa + 2 * v177);
              v179 = *&v13->tester[16 * v177];
              sub_1CF6F2E1C((*v183 + 24 * v178), (*v183 + 24 * *&v13->tree[16 * v177]), *v183 + 24 * v179, v12);
              if (v9)
              {
                goto LABEL_182;
              }

              if (v179 < v178)
              {
                goto LABEL_197;
              }

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v13 = sub_1CF6F3368(v13, a2, a3, a4, a5, a6, v14, a8);
              }

              if (v177 - 2 >= *v13->tree)
              {
                goto LABEL_198;
              }

              v180 = &v13->super.isa + 2 * v177;
              *v180 = v178;
              v180[1] = v179;
              sub_1CF6F32DC(v177 - 1);
              v177 = *v13->tree;
              if (v177 <= 1)
              {
                goto LABEL_182;
              }
            }

            goto LABEL_208;
          }

LABEL_182:
          v13, a2, a3, a4, a5, a6, v14, a8;
          return;
        }

        if (v12 != v10)
        {
          break;
        }
      }
    }

LABEL_121:
    if (v12 < v15)
    {
      goto LABEL_199;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v13 = sub_1CF1F6594(0, *v13->tree + 1, 1, v13, a5, a6, v14, a8);
    }

    v131 = *v13->tree;
    v130 = *v13->tester;
    v132 = v131 + 1;
    if (v131 >= v130 >> 1)
    {
      v13 = sub_1CF1F6594((v130 > 1), v131 + 1, 1, v13, a5, a6, v14, a8);
    }

    *v13->tree = v132;
    v133 = v13 + 16 * v131;
    *(v133 + 4) = v15;
    *(v133 + 5) = v12;
    v134 = *result;
    if (!*result)
    {
      goto LABEL_209;
    }

    if (v131)
    {
      while (1)
      {
        v135 = v132 - 1;
        if (v132 >= 4)
        {
          break;
        }

        if (v132 == 3)
        {
          isa = v13[1].super.isa;
          v137 = *v13[1]._anon_8;
          v146 = __OFSUB__(v137, isa);
          v138 = v137 - isa;
          v139 = v146;
LABEL_141:
          if (v139)
          {
            goto LABEL_188;
          }

          v152 = &v13->super.isa + 2 * v132;
          v154 = *v152;
          v153 = v152[1];
          v155 = __OFSUB__(v153, v154);
          v156 = v153 - v154;
          v157 = v155;
          if (v155)
          {
            goto LABEL_191;
          }

          v158 = &v13[1].super.isa + 2 * v135;
          v160 = *v158;
          v159 = v158[1];
          v146 = __OFSUB__(v159, v160);
          v161 = v159 - v160;
          if (v146)
          {
            goto LABEL_194;
          }

          if (__OFADD__(v156, v161))
          {
            goto LABEL_195;
          }

          if (v156 + v161 >= v138)
          {
            if (v138 < v161)
            {
              v135 = v132 - 2;
            }

            goto LABEL_162;
          }

          goto LABEL_155;
        }

        v162 = &v13->super.isa + 2 * v132;
        v164 = *v162;
        v163 = v162[1];
        v146 = __OFSUB__(v163, v164);
        v156 = v163 - v164;
        v157 = v146;
LABEL_155:
        if (v157)
        {
          goto LABEL_190;
        }

        v165 = v13 + 16 * v135;
        v167 = *(v165 + 4);
        v166 = *(v165 + 5);
        v146 = __OFSUB__(v166, v167);
        v168 = v166 - v167;
        if (v146)
        {
          goto LABEL_193;
        }

        if (v168 < v156)
        {
          goto LABEL_3;
        }

LABEL_162:
        v173 = v135 - 1;
        if (v135 - 1 >= v132)
        {
          __break(1u);
LABEL_184:
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
          goto LABEL_202;
        }

        if (!*v183)
        {
          goto LABEL_206;
        }

        v174 = *(&v13[1].super.isa + 2 * v173);
        v175 = *&v13[1]._anon_8[16 * v135];
        sub_1CF6F2E1C((*v183 + 24 * v174), (*v183 + 24 * *(&v13[1].super.isa + 2 * v135)), *v183 + 24 * v175, v134);
        if (v9)
        {
          goto LABEL_182;
        }

        if (v175 < v174)
        {
          goto LABEL_184;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v13 = sub_1CF6F3368(v13, a2, a3, a4, a5, a6, v14, a8);
        }

        if (v173 >= *v13->tree)
        {
          goto LABEL_185;
        }

        v176 = v13 + 16 * v173;
        *(v176 + 4) = v174;
        *(v176 + 5) = v175;
        sub_1CF6F32DC(v135);
        v132 = *v13->tree;
        if (v132 <= 1)
        {
          goto LABEL_3;
        }
      }

      v140 = &v13[1] + 16 * v132;
      v141 = *(v140 - 64);
      v142 = *(v140 - 56);
      v146 = __OFSUB__(v142, v141);
      v143 = v142 - v141;
      if (v146)
      {
        goto LABEL_186;
      }

      v145 = *(v140 - 48);
      v144 = *(v140 - 40);
      v146 = __OFSUB__(v144, v145);
      v138 = v144 - v145;
      v139 = v146;
      if (v146)
      {
        goto LABEL_187;
      }

      v147 = &v13->super.isa + 2 * v132;
      v149 = *v147;
      v148 = v147[1];
      v146 = __OFSUB__(v148, v149);
      v150 = v148 - v149;
      if (v146)
      {
        goto LABEL_189;
      }

      v146 = __OFADD__(v138, v150);
      v151 = v138 + v150;
      if (v146)
      {
        goto LABEL_192;
      }

      if (v151 >= v143)
      {
        v169 = &v13[1].super.isa + 2 * v135;
        v171 = *v169;
        v170 = v169[1];
        v146 = __OFSUB__(v170, v171);
        v172 = v170 - v171;
        if (v146)
        {
          goto LABEL_196;
        }

        if (v138 < v172)
        {
          v135 = v132 - 2;
        }

        goto LABEL_162;
      }

      goto LABEL_141;
    }

LABEL_3:
    v10 = v183[1];
    v11 = v181;
    v14 = 4;
    if (v12 >= v10)
    {
      goto LABEL_172;
    }
  }

  v98 = *v183;
LABEL_83:
  v99 = *(v98 + 24 * v12 + 16);
  v100 = v12;
  while (1)
  {
    v101 = (v98 + 24 * v100);
    v102 = *(v101 - 1);
    v103 = *(v99 + 16);
    if (!v103)
    {
      v106 = *(v102 + 16);
      if (!v106)
      {
        goto LABEL_82;
      }

      v104 = 0;
LABEL_99:
      if (v106 > 1)
      {
        v120 = 0;
        a2 = 0;
        v121 = v106 & 0x7FFFFFFFFFFFFFFELL;
        a3 = (v102 + 56);
        a4 = v106 & 0x7FFFFFFFFFFFFFFELL;
        do
        {
          a5 = *(a3 - 3);
          v122 = *a3;
          a3 += 6;
          a6 = v122;
          if (a5 > v120)
          {
            v120 = a5;
          }

          if (a6 > a2)
          {
            a2 = a6;
          }

          a4 -= 2;
        }

        while (a4);
        if (v120 <= a2)
        {
          v120 = a2;
        }

        if (v106 == v121)
        {
LABEL_114:
          if (v120 >= v104)
          {
            goto LABEL_82;
          }

          goto LABEL_117;
        }
      }

      else
      {
        v120 = 0;
        v121 = 0;
      }

      v123 = v106 - v121;
      v124 = (v102 + 24 * v121 + 32);
      do
      {
        v126 = *v124;
        v124 += 3;
        v125 = v126;
        if (v126 > v120)
        {
          v120 = v125;
        }

        --v123;
      }

      while (v123);
      goto LABEL_114;
    }

    if (v103 > 4)
    {
      v107 = *(v99 + 16) & 3;
      if ((v103 & 3) == 0)
      {
        v107 = 4;
      }

      v105 = v103 - v107;
      v108 = 0uLL;
      v109 = v103 - v107;
      v110 = (v99 + 80);
      v111 = 0uLL;
      do
      {
        a2 = (v110 - 6);
        v112 = vld3q_f64(a2);
        v113 = vld3q_f64(v110);
        v108 = vbslq_s8(vcgtq_s64(v112, v108), v112, v108);
        v111 = vbslq_s8(vcgtq_s64(v113, v111), v113, v111);
        v110 += 12;
        v109 -= 4;
      }

      while (v109);
      v114 = vbslq_s8(vcgtq_s64(v108, v111), v108, v111);
      v115 = vextq_s8(v114, v114, 8uLL).u64[0];
      v104 = vbsl_s8(vcgtd_s64(v114.i64[0], v115), *v114.i8, v115);
    }

    else
    {
      v104 = 0;
      v105 = 0;
    }

    v116 = v103 - v105;
    v117 = (v99 + 32 + 24 * v105);
    do
    {
      v119 = *v117;
      v117 += 3;
      v118 = v119;
      if (v119 > v104)
      {
        v104 = v118;
      }

      --v116;
    }

    while (v116);
    v106 = *(v102 + 16);
    if (v106)
    {
      goto LABEL_99;
    }

    if (v104 <= 0)
    {
      goto LABEL_82;
    }

LABEL_117:
    if (!v98)
    {
      break;
    }

    --v100;
    v127 = v101 - 3;
    v128 = *v101;
    v129 = v101[1];
    *v101 = *(v101 - 3);
    v101[2] = *(v101 - 1);
    *v127 = v128;
    v127[1] = v129;
    v127[2] = v99;
    if (v100 == v15)
    {
LABEL_82:
      if (++v12 != v10)
      {
        goto LABEL_83;
      }

      v12 = v10;
      goto LABEL_121;
    }
  }

  __break(1u);
LABEL_206:
  __break(1u);
LABEL_207:
  __break(1u);
LABEL_208:
  __break(1u);
LABEL_209:
  __break(1u);
LABEL_210:
  __break(1u);
}

uint64_t sub_1CF6F2E1C(char *__src, char *__dst, unint64_t a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __dst;
  v7 = __src;
  v8 = __dst - __src;
  v9 = (__dst - __src) / 24;
  v10 = a3 - __dst;
  v11 = (a3 - __dst) / 24;
  if (v9 >= v11)
  {
    if (a4 != __dst || &__dst[24 * v11] <= a4)
    {
      memmove(a4, __dst, 24 * v11);
    }

    v12 = &v4[24 * v11];
    if (v10 < 24 || v6 <= v7)
    {
      goto LABEL_96;
    }

    while (2)
    {
      v48 = v5;
      while (1)
      {
        v49 = *(v12 - 1);
        v50 = *(v6 - 1);
        v51 = *(v49 + 16);
        if (v51)
        {
          break;
        }

        v5 = (v48 - 24);
        v54 = *(v50 + 16);
        if (v54)
        {
          v52 = 0;
          goto LABEL_69;
        }

LABEL_87:
        v81 = v12 - 24;
        if (v48 != v12)
        {
          v82 = *v81;
          *(v5 + 16) = *(v12 - 1);
          *v5 = v82;
        }

        v12 -= 24;
        v48 = v5;
        if (v81 <= v4)
        {
          v12 = v81;
          goto LABEL_96;
        }
      }

      if (v51 > 4)
      {
        v55 = *(v49 + 16) & 3;
        if ((v51 & 3) == 0)
        {
          v55 = 4;
        }

        v53 = v51 - v55;
        v56 = (v49 + 80);
        v57 = 0uLL;
        v58 = v53;
        v59 = 0uLL;
        do
        {
          v60 = v56 - 6;
          v61 = vld3q_f64(v60);
          v62 = vld3q_f64(v56);
          v57 = vbslq_s8(vcgtq_s64(v61, v57), v61, v57);
          v59 = vbslq_s8(vcgtq_s64(v62, v59), v62, v59);
          v56 += 12;
          v58 -= 4;
        }

        while (v58);
        v63 = vbslq_s8(vcgtq_s64(v57, v59), v57, v59);
        v64 = vextq_s8(v63, v63, 8uLL).u64[0];
        v52 = vbsl_s8(vcgtd_s64(v63.i64[0], v64), *v63.i8, v64);
      }

      else
      {
        v52 = 0;
        v53 = 0;
      }

      v65 = v51 - v53;
      v66 = (v49 + 24 * v53 + 32);
      do
      {
        v68 = *v66;
        v66 += 3;
        v67 = v68;
        if (v68 > v52)
        {
          v52 = v67;
        }

        --v65;
      }

      while (v65);
      v5 = (v48 - 24);
      v54 = *(v50 + 16);
      if (!v54)
      {
        if (v52 > 0)
        {
LABEL_89:
          v83 = v6 - 24;
          if (v48 != v6)
          {
            v84 = *v83;
            *(v5 + 16) = *(v6 - 1);
            *v5 = v84;
          }

          if (v12 <= v4 || (v6 -= 24, v83 <= v7))
          {
            v6 = v83;
            goto LABEL_96;
          }

          continue;
        }

        goto LABEL_87;
      }

      break;
    }

LABEL_69:
    if (v54 > 1)
    {
      v69 = 0;
      v71 = 0;
      v70 = v54 & 0x7FFFFFFFFFFFFFFELL;
      v72 = (v50 + 56);
      v73 = v54 & 0x7FFFFFFFFFFFFFFELL;
      do
      {
        v74 = *(v72 - 3);
        v76 = *v72;
        v72 += 6;
        v75 = v76;
        if (v74 > v69)
        {
          v69 = v74;
        }

        if (v75 > v71)
        {
          v71 = v75;
        }

        v73 -= 2;
      }

      while (v73);
      if (v69 <= v71)
      {
        v69 = v71;
      }

      if (v54 == v70)
      {
LABEL_84:
        if (v69 < v52)
        {
          goto LABEL_89;
        }

        goto LABEL_87;
      }
    }

    else
    {
      v69 = 0;
      v70 = 0;
    }

    v77 = v54 - v70;
    v78 = (v50 + 24 * v70 + 32);
    do
    {
      v80 = *v78;
      v78 += 3;
      v79 = v80;
      if (v80 > v69)
      {
        v69 = v79;
      }

      --v77;
    }

    while (v77);
    goto LABEL_84;
  }

  if (a4 != __src || &__src[24 * v9] <= a4)
  {
    memmove(a4, __src, 24 * v9);
  }

  v12 = &v4[24 * v9];
  if (v8 >= 24 && v6 < v5)
  {
    while (1)
    {
      v13 = *(v6 + 2);
      v14 = *(v4 + 2);
      v15 = *(v13 + 16);
      if (!v15)
      {
        break;
      }

      if (v15 > 4)
      {
        v19 = *(v13 + 16) & 3;
        if ((v15 & 3) == 0)
        {
          v19 = 4;
        }

        v17 = v15 - v19;
        v20 = (v13 + 80);
        v21 = 0uLL;
        v22 = v17;
        v23 = 0uLL;
        do
        {
          v24 = v20 - 6;
          v25 = vld3q_f64(v24);
          v26 = vld3q_f64(v20);
          v21 = vbslq_s8(vcgtq_s64(v25, v21), v25, v21);
          v23 = vbslq_s8(vcgtq_s64(v26, v23), v26, v23);
          v20 += 12;
          v22 -= 4;
        }

        while (v22);
        v27 = vbslq_s8(vcgtq_s64(v21, v23), v21, v23);
        v28 = vextq_s8(v27, v27, 8uLL).u64[0];
        v16 = vbsl_s8(vcgtd_s64(v27.i64[0], v28), *v27.i8, v28);
      }

      else
      {
        v16 = 0;
        v17 = 0;
      }

      v29 = v15 - v17;
      v30 = (v13 + 24 * v17 + 32);
      do
      {
        v32 = *v30;
        v30 += 3;
        v31 = v32;
        if (v32 > v16)
        {
          v16 = v31;
        }

        --v29;
      }

      while (v29);
      v18 = *(v14 + 16);
      if (v18)
      {
        goto LABEL_22;
      }

      if (v16 <= 0)
      {
LABEL_38:
        v45 = v4;
        v46 = v7 == v4;
        v4 += 24;
        if (v46)
        {
          goto LABEL_40;
        }

LABEL_39:
        v47 = *v45;
        *(v7 + 2) = *(v45 + 2);
        *v7 = v47;
        goto LABEL_40;
      }

LABEL_44:
      v45 = v6;
      v46 = v7 == v6;
      v6 += 24;
      if (!v46)
      {
        goto LABEL_39;
      }

LABEL_40:
      v7 += 24;
      if (v4 >= v12 || v6 >= v5)
      {
        goto LABEL_94;
      }
    }

    v18 = *(v14 + 16);
    if (!v18)
    {
      goto LABEL_38;
    }

    v16 = 0;
LABEL_22:
    if (v18 > 1)
    {
      v33 = 0;
      v35 = 0;
      v34 = v18 & 0x7FFFFFFFFFFFFFFELL;
      v36 = (v14 + 56);
      v37 = v18 & 0x7FFFFFFFFFFFFFFELL;
      do
      {
        v38 = *(v36 - 3);
        v40 = *v36;
        v36 += 6;
        v39 = v40;
        if (v38 > v33)
        {
          v33 = v38;
        }

        if (v39 > v35)
        {
          v35 = v39;
        }

        v37 -= 2;
      }

      while (v37);
      if (v33 <= v35)
      {
        v33 = v35;
      }

      if (v18 == v34)
      {
LABEL_37:
        if (v33 >= v16)
        {
          goto LABEL_38;
        }

        goto LABEL_44;
      }
    }

    else
    {
      v33 = 0;
      v34 = 0;
    }

    v41 = v18 - v34;
    v42 = (v14 + 24 * v34 + 32);
    do
    {
      v44 = *v42;
      v42 += 3;
      v43 = v44;
      if (v44 > v33)
      {
        v33 = v43;
      }

      --v41;
    }

    while (v41);
    goto LABEL_37;
  }

LABEL_94:
  v6 = v7;
LABEL_96:
  v85 = ((v12 - v4) * 0x2AAAAAAAAAAAAAABLL) >> 64;
  v86 = (v85 >> 2) + (v85 >> 63);
  if (v6 != v4 || v6 >= &v4[24 * v86])
  {
    memmove(v6, v4, 24 * v86);
  }

  return 1;
}

uint64_t sub_1CF6F32DC(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1CF6F3368(v3, v5, v6, v7, v8, v9, v10, v11);
    v3 = result;
  }

  v12 = *(v3 + 16);
  if (v12 <= a1)
  {
    __break(1u);
  }

  else
  {
    v13 = v12 - 1;
    v14 = v3 + 16 * a1;
    v15 = *(v14 + 32);
    memmove((v14 + 32), (v14 + 48), 16 * (v12 - 1 - a1));
    *(v3 + 16) = v13;
    *v1 = v3;
    return v15;
  }

  return result;
}

_TtC18FileProviderDaemon8FSTester *sub_1CF6F337C(_TtC18FileProviderDaemon8FSTester *result, int64_t a2, int64_t a3, _TtC18FileProviderDaemon8FSTester *a4, void *a5, void *a6, uint64_t a7, void *a8)
{
  v9 = result;
  if (a3)
  {
    v10 = *a4->tester;
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
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

  v12 = *a4->tree;
  if (v11 <= v12)
  {
    v13 = *a4->tree;
  }

  else
  {
    v13 = v11;
  }

  if (v13)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE7C8, &qword_1CF9FE688);
    v14 = swift_allocObject();
    v15 = _swift_stdlib_malloc_size(v14);
    v16 = v15 - 32;
    if (v15 < 32)
    {
      v16 = v15 - 17;
    }

    *v14->tree = v12;
    *v14->tester = 2 * (v16 >> 4);
  }

  else
  {
    v14 = MEMORY[0x1E69E7CC0];
  }

  v17 = &v14[1];
  v18 = &a4[1];
  if (v9)
  {
    if (v14 != a4 || v17 >= &v18[16 * v12])
    {
      memmove(v17, v18, 16 * v12);
    }

    *a4->tree = 0;
  }

  else
  {
    memcpy(v17, v18, 16 * v12);
  }

  a4, v18, a3, a4, a5, a6, a7, a8;
  return v14;
}

uint64_t sub_1CF6F3480(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 1;
  }

  v2 = *(a1 + 16);
  if (!v2)
  {
    return 1;
  }

  v4 = 0;
  v5 = a1 + 32;
  v6 = a2 + 56;
  while (1)
  {
    if (!*(a2 + 16))
    {
      goto LABEL_5;
    }

    v7 = (v5 + 16 * v4);
    v9 = *v7;
    v8 = v7[1];
    sub_1CF9E81D8();

    sub_1CF9E69C8();
    v10 = sub_1CF9E8228();
    v18 = -1 << *(a2 + 32);
    v19 = v10 & ~v18;
    if ((*(v6 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19))
    {
      break;
    }

LABEL_4:
    v8, v11, v12, v13, v14, v15, v16, v17;
LABEL_5:
    if (++v4 == v2)
    {
      return 1;
    }
  }

  v20 = ~v18;
  while (1)
  {
    v21 = (*(a2 + 48) + 16 * v19);
    v11 = v21[1];
    v22 = *v21 == v9 && v11 == v8;
    if (v22 || (sub_1CF9E8048() & 1) != 0)
    {
      break;
    }

    v19 = (v19 + 1) & v20;
    if (((*(v6 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
    {
      goto LABEL_4;
    }
  }

  v8, v11, v12, v13, v14, v15, v16, v17;
  return 0;
}

uint64_t sub_1CF6F35CC(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 1;
  }

  v2 = *(a1 + 16);
  if (!v2)
  {
    return 1;
  }

  v4 = 0;
  v5 = a1 + 32;
  v6 = a2 + 56;
  v7 = ~(-1 << *(a2 + 32));
  while (1)
  {
    v8 = *(v5 + 8 * v4);
    v9 = sub_1CF9E81C8();
    v10 = v9 & v7;
    if ((*(v6 + (((v9 & v7) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v9 & v7)))
    {
      break;
    }

LABEL_4:
    if (++v4 == v2)
    {
      return 1;
    }
  }

  while (*(*(a2 + 48) + 8 * v10) != v8)
  {
    v10 = (v10 + 1) & v7;
    if (((*(v6 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
    {
      goto LABEL_4;
    }
  }

  return 0;
}

void *sub_1CF6F36B4()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 16);
  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v3 = sub_1CF1F8E9C(*(v1 + 16), 0);
  v4 = sub_1CF1FAC30(&v14, v3 + 4, v2, v1);
  v5 = v14;
  swift_bridgeObjectRetain_n();
  result = sub_1CEFCB59C(v5);
  if (v4 == v2)
  {
    v1, v7, v8, v9, v10, v11, v12, v13;
    return v3;
  }

  __break(1u);
  return result;
}

id sub_1CF6F37BC@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v2 = a1[1];
  v4 = a1[2];
  *a2 = *a1;
  a2[1] = v2;
  a2[2] = v4;

  return v4;
}

uint64_t sub_1CF6F3808(void *a1, char a2, char a3, uint64_t a4)
{
  v8 = sub_1CEFD57E0(0, &qword_1EC4C2890, 0x1E69672D0);
  v23[3] = v8;
  v23[4] = &off_1F4C02F98;
  v23[0] = a1;
  v9 = *(a4 + qword_1EC4EBCD0);
  if (v9)
  {
    v10 = *(a4 + qword_1EC4EBCD0 + 8);
    v11 = a1;
    sub_1CF1FD6B8(v9, v10);
    v12 = v9;
    sub_1CF1FD6F8(v9, v10);
    if ((*(a4 + 82) & 0x20) != 0)
    {
      MEMORY[0x1EEE9AC00](v13);
      v19 = a4;
      v20 = v23;
      v21 = a2 & 1;
      v22 = a3 & 1;
      v16 = objc_autoreleasePoolPush();
      sub_1CF804374(a4, 1, "dump(to:limitNumberOfItems:includingFileTrees:)", 47, 2, 0, sub_1CF6FC958, v18);
      objc_autoreleasePoolPop(v16);
    }

    else
    {

      sub_1CF482E50(v12, 2, v23, a2 & 1, a3 & 1, a4, a4);
    }
  }

  else
  {
    MEMORY[0x1EEE9AC00](v8);
    v19 = a4;
    v20 = v23;
    v21 = a2 & 1;
    v22 = a3 & 1;
    v14 = a1;
    v15 = objc_autoreleasePoolPush();
    sub_1CF804374(a4, 2, "dump(to:limitNumberOfItems:includingFileTrees:)", 47, 2, 0, sub_1CF6FC97C, v18);
    objc_autoreleasePoolPop(v15);
  }

  return __swift_destroy_boxed_opaque_existential_1(v23);
}

uint64_t sub_1CF6F3A1C(char a1, char a2, unsigned __int8 a3, uint64_t a4, char a5, char a6, unsigned __int8 a7, uint64_t a8)
{
  if (a1 != a5)
  {
    return 0;
  }

  if (a2 != 89)
  {
    if (a6 == 89 || qword_1CFA12E48[a2] != qword_1CFA12E48[a6])
    {
      return 0;
    }

LABEL_7:
    if (a3 == 2)
    {
      if (a7 != 2)
      {
        return 0;
      }
    }

    else if (a7 == 2 || ((a7 ^ a3) & 1) != 0)
    {
      return 0;
    }

    return sub_1CF6BEA0C(a4, a8);
  }

  if (a6 == 89)
  {
    goto LABEL_7;
  }

  return 0;
}

unint64_t sub_1CF6F3AF4(unint64_t result)
{
  if (result >= 7)
  {
    return 7;
  }

  return result;
}

void sub_1CF6F3B04(uint64_t a1, void (*a2)(uint64_t, _TtC18FileProviderDaemon8FSTester *, uint64_t))
{
  v4 = a1 + 64;
  v5 = 1 << *(a1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a1 + 64);
  v8 = (v5 + 63) >> 6;

  v9 = 0;
  while (v7)
  {
    v10 = v9;
LABEL_9:
    v11 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v12 = v11 | (v10 << 6);
    v13 = (*(a1 + 48) + 16 * v12);
    v14 = *v13;
    v15 = v13[1];
    v16 = *(*(a1 + 56) + 8 * v12);

    a2(v14, v15, v16);
    v15, v17, v18, v19, v20, v21, v22, v23;
  }

  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v8)
    {

      return;
    }

    v7 = *(v4 + 8 * v10);
    ++v9;
    if (v7)
    {
      v9 = v10;
      goto LABEL_9;
    }
  }

  __break(1u);
}

uint64_t sub_1CF6F3C14(void *a1, uint64_t a2)
{
  v7[2] = 1129530692;
  v7[3] = 0xE400000000000000;
  v3 = sub_1CF7D5474(sub_1CF250D78, v7, a1, a2);
  if (v2)
  {

    return 0;
  }

  else
  {
    v5 = v3;
    if ([v3 next])
    {
      sub_1CF25069C(v5, v8);
      v6 = v9;

      sub_1CF250D40(v8);
      return v6;
    }

    else
    {

      return 0;
    }
  }
}

void sub_1CF6F3CF4(unint64_t a1)
{
  v1 = a1;
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    if (sub_1CF9E7818())
    {
LABEL_3:
      __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EC4C0728, &qword_1CFA05B38);
      v3 = sub_1CF9E7908();
      v4 = v1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      v5 = sub_1CF9E7818();
      if (!v5)
      {
        return;
      }

      goto LABEL_9;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = MEMORY[0x1E69E7CD0];
  v4 = v1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return;
  }

LABEL_9:
  v6 = v3 + 56;
  v38 = v5;
  if ((v1 & 0xC000000000000001) != 0)
  {
    v7 = 0;
    v36 = v1;
    while (1)
    {
      v8 = MEMORY[0x1D3869C30](v7, v1);
      v9 = __OFADD__(v7++, 1);
      if (v9)
      {
        break;
      }

      v10 = v8;
      v11 = sub_1CF9E7558();
      v12 = -1 << *(v3 + 32);
      v13 = v11 & ~v12;
      v14 = v13 >> 6;
      v15 = *(v6 + 8 * (v13 >> 6));
      v16 = 1 << v13;
      if (((1 << v13) & v15) != 0)
      {
        v17 = ~v12;
        sub_1CEFD57E0(0, &unk_1EDEA3640, 0x1E696ABF8);
        while (1)
        {
          v18 = *(*(v3 + 48) + 8 * v13);
          v19 = sub_1CF9E7568();

          if (v19)
          {
            break;
          }

          v13 = (v13 + 1) & v17;
          v14 = v13 >> 6;
          v15 = *(v6 + 8 * (v13 >> 6));
          v16 = 1 << v13;
          if (((1 << v13) & v15) == 0)
          {
            v1 = v36;
            v5 = v38;
            goto LABEL_18;
          }
        }

        swift_unknownObjectRelease();
        v1 = v36;
        v5 = v38;
        if (v7 == v38)
        {
          return;
        }
      }

      else
      {
LABEL_18:
        *(v6 + 8 * v14) = v16 | v15;
        *(*(v3 + 48) + 8 * v13) = v10;
        v20 = *(v3 + 16);
        v9 = __OFADD__(v20, 1);
        v21 = v20 + 1;
        if (v9)
        {
          goto LABEL_33;
        }

        *(v3 + 16) = v21;
        if (v7 == v5)
        {
          return;
        }
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
  }

  else
  {
    v22 = 0;
    v35 = v1 + 32;
    v37 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v22 != v37)
    {
      v23 = *(v35 + 8 * v22);
      v24 = sub_1CF9E7558();
      v25 = -1 << *(v3 + 32);
      v26 = v24 & ~v25;
      v27 = v26 >> 6;
      v28 = *(v6 + 8 * (v26 >> 6));
      v29 = 1 << v26;
      if (((1 << v26) & v28) != 0)
      {
        v30 = ~v25;
        sub_1CEFD57E0(0, &unk_1EDEA3640, 0x1E696ABF8);
        do
        {
          v31 = *(*(v3 + 48) + 8 * v26);
          v32 = sub_1CF9E7568();

          if (v32)
          {

            v5 = v38;
            goto LABEL_23;
          }

          v26 = (v26 + 1) & v30;
          v27 = v26 >> 6;
          v28 = *(v6 + 8 * (v26 >> 6));
          v29 = 1 << v26;
        }

        while (((1 << v26) & v28) != 0);
        v5 = v38;
      }

      *(v6 + 8 * v27) = v29 | v28;
      *(*(v3 + 48) + 8 * v26) = v23;
      v33 = *(v3 + 16);
      v9 = __OFADD__(v33, 1);
      v34 = v33 + 1;
      if (v9)
      {
        goto LABEL_35;
      }

      *(v3 + 16) = v34;
LABEL_23:
      if (++v22 == v5)
      {
        return;
      }
    }
  }

  __break(1u);
LABEL_35:
  __break(1u);
}

uint64_t sub_1CF6F3FE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v94 = a5;
  v92 = a3;
  v90 = a6;
  v9 = sub_1CF9E5248();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v10 = sub_1CF9E5268();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v88 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = a2;
  v93 = a4;
  v15 = type metadata accessor for ItemReconciliationHalf(0, a2, a4, v14);
  v16 = v15;
  v17 = *(a1 + *(v15 + 76));
  if ((v17 & 2) != 0 || (v17 & 1) != 0 && (v89 = v11, v18 = v17, v17 = v15, v19 = v92, v97 = v91, v98 = v92, v20 = v94, v99 = v93, v100 = v94, v21 = a1 + *(type metadata accessor for ItemReconciliation(0, &v97) + 52), v22 = v19, v16 = v17, LOBYTE(v17) = v18, v11 = v89, (*(v21 + *(type metadata accessor for ItemReconciliationHalf(0, v22, v20, v23) + 40)) & 0x18) != 0) || (v17 & 4) != 0 && ((*(a1 + *(v16 + 40)) & 0x18) != 0 || (v89 = v11, v34 = a1, v35 = v17, v17 = v16, v36 = v92, v97 = v91, v98 = v92, v37 = v94, v99 = v93, v100 = v94, v38 = v34 + *(type metadata accessor for ItemReconciliation(0, &v97) + 52), v39 = v36, v16 = v17, LOBYTE(v17) = v35, a1 = v34, v11 = v89, (*(v38 + *(type metadata accessor for ItemReconciliationHalf(0, v39, v37, v40) + 40)) & 0x18) != 0)) || (v17 & 8) != 0 && (v89 = v11, v24 = a1, v25 = v17, v17 = v16, v26 = v92, v97 = v91, v98 = v92, v27 = v94, v99 = v93, v100 = v94, v28 = v24 + *(type metadata accessor for ItemReconciliation(0, &v97) + 52), v29 = v26, v16 = v17, LOBYTE(v17) = v25, a1 = v24, v11 = v89, (*(v28 + *(type metadata accessor for ItemReconciliationHalf(0, v29, v27, v30) + 40)) & 0x18) != 0))
  {
    sub_1CF9E5168();
    sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
    sub_1CF00BCE0(&qword_1EDEAB450, MEMORY[0x1E6967E98], MEMORY[0x1E6967E90]);
    sub_1CF9E57D8();
    v41 = sub_1CF9E50D8();
    (*(v11 + 8))(v13, v10);
    v42 = sub_1CF9E57E8();

    v33 = v42;
  }

  else
  {
    sub_1CF6FC3E4();
    v31 = swift_allocError();
    *v32 = 17;
    *(v32 + 8) = 18;
    v33 = sub_1CF9E57E8();
  }

  v43 = *(a1 + *(v16 + 40));
  if ((v43 & 8) != 0)
  {
    v89 = 1;
    v49 = 1;
  }

  else
  {
    v44 = v92;
    v97 = v91;
    v98 = v92;
    v45 = v94;
    v99 = v93;
    v100 = v94;
    v46 = a1 + *(type metadata accessor for ItemReconciliation(0, &v97) + 52);
    v48 = *(v46 + *(type metadata accessor for ItemReconciliationHalf(0, v44, v45, v47) + 40));
    if ((v48 & 8) != 0)
    {
      v89 = 2;
      v49 = 3;
    }

    else
    {
      v49 = 2;
      if (v43)
      {
        v89 = 1;
      }

      else
      {
        v50 = v48 == 0;
        if (v48)
        {
          v51 = 2;
        }

        else
        {
          v51 = 5;
        }

        v89 = v51;
        if (v50)
        {
          v49 = 5;
        }

        else
        {
          v49 = 4;
        }
      }
    }
  }

  sub_1CF6FC3E4();
  v52 = swift_allocError();
  v54 = v52;
  v55 = 18;
  if ((v17 & 0xC) != 0)
  {
    *v53 = v49;
    *(v53 + 8) = 18;
    v49 = v52;
    v54 = swift_allocError();
    v55 = 12;
  }

  v56 = a1;
  *v53 = v49;
  *(v53 + 8) = v55;
  v57 = v54;
  v58 = [v33 domain];
  if (!v58)
  {
    _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v60 = v59;
    v58 = sub_1CF9E6888();
    v60, v61, v62, v63, v64, v65, v66, v67;
  }

  v68 = [v33 code];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE0F0, &unk_1CF9FA530);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CF9FA450;
  *(inited + 32) = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  *(inited + 40) = v70;
  swift_getErrorValue();
  v72 = v95;
  v71 = v96;
  *(inited + 72) = v96;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((inited + 48));
  (*(*(v71 - 8) + 16))(boxed_opaque_existential_0, v72, v71);

  v74 = sub_1CF4E04E8(inited);
  swift_setDeallocating();
  sub_1CEFCCC44(inited + 32, &unk_1EC4BE300, &unk_1CF9FC5D0);
  v75 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
  v76 = sub_1CF9E6618();
  v74, v77, v78, v79, v80, v81, v82, v83;
  v84 = [v75 initWithDomain:v58 code:v68 userInfo:v76];

  v97 = v91;
  v98 = v92;
  v99 = v93;
  v100 = v94;
  result = type metadata accessor for ItemReconciliation(0, &v97);
  v86 = *(v56 + *(result + 64) + 8);
  v87 = v90;
  *v90 = v84;
  v87[1] = 0;
  *(v87 + 16) = v89;
  *(v87 + 17) = 601;
  v87[3] = v86;
  *(v87 + 32) = 0;
  return result;
}

void sub_1CF6F4684(unint64_t a1)
{
  v1 = a1;
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    if (sub_1CF9E7818())
    {
LABEL_3:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C06F8, &qword_1CFA05B08);
      v3 = sub_1CF9E7908();
      v4 = v1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      v5 = sub_1CF9E7818();
      if (!v5)
      {
        return;
      }

      goto LABEL_9;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = MEMORY[0x1E69E7CD0];
  v4 = v1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return;
  }

LABEL_9:
  v6 = v3 + 56;
  v37 = v5;
  if ((v1 & 0xC000000000000001) != 0)
  {
    v7 = 0;
    v35 = v1;
    while (1)
    {
      v8 = MEMORY[0x1D3869C30](v7, v1);
      v9 = __OFADD__(v7++, 1);
      if (v9)
      {
        break;
      }

      v10 = v8;
      v11 = sub_1CF9E7558();
      v12 = -1 << *(v3 + 32);
      v13 = v11 & ~v12;
      v14 = v13 >> 6;
      v15 = *(v6 + 8 * (v13 >> 6));
      v16 = 1 << v13;
      if (((1 << v13) & v15) != 0)
      {
        v17 = ~v12;
        type metadata accessor for FSChangesEnumerator(0);
        while (1)
        {
          v18 = *(*(v3 + 48) + 8 * v13);
          v19 = sub_1CF9E7568();

          if (v19)
          {
            break;
          }

          v13 = (v13 + 1) & v17;
          v14 = v13 >> 6;
          v15 = *(v6 + 8 * (v13 >> 6));
          v16 = 1 << v13;
          if (((1 << v13) & v15) == 0)
          {
            v1 = v35;
            v5 = v37;
            goto LABEL_18;
          }
        }

        swift_unknownObjectRelease();
        v1 = v35;
        v5 = v37;
        if (v7 == v37)
        {
          return;
        }
      }

      else
      {
LABEL_18:
        *(v6 + 8 * v14) = v16 | v15;
        *(*(v3 + 48) + 8 * v13) = v10;
        v20 = *(v3 + 16);
        v9 = __OFADD__(v20, 1);
        v21 = v20 + 1;
        if (v9)
        {
          goto LABEL_32;
        }

        *(v3 + 16) = v21;
        if (v7 == v5)
        {
          return;
        }
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
  }

  else
  {
    v22 = 0;
    v36 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v22 != v36)
    {
      v23 = *(v1 + 32 + 8 * v22);
      v24 = sub_1CF9E7558();
      v25 = -1 << *(v3 + 32);
      v26 = v24 & ~v25;
      v27 = v26 >> 6;
      v28 = *(v6 + 8 * (v26 >> 6));
      v29 = 1 << v26;
      if (((1 << v26) & v28) != 0)
      {
        v30 = ~v25;
        type metadata accessor for FSChangesEnumerator(0);
        while (1)
        {
          v31 = *(*(v3 + 48) + 8 * v26);
          v32 = sub_1CF9E7568();

          if (v32)
          {
            break;
          }

          v26 = (v26 + 1) & v30;
          v27 = v26 >> 6;
          v28 = *(v6 + 8 * (v26 >> 6));
          v29 = 1 << v26;
          if (((1 << v26) & v28) == 0)
          {
            goto LABEL_29;
          }
        }
      }

      else
      {
LABEL_29:
        *(v6 + 8 * v27) = v29 | v28;
        *(*(v3 + 48) + 8 * v26) = v23;
        v33 = *(v3 + 16);
        v9 = __OFADD__(v33, 1);
        v34 = v33 + 1;
        if (v9)
        {
          goto LABEL_34;
        }

        *(v3 + 16) = v34;
      }

      if (++v22 == v37)
      {
        return;
      }
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
}

uint64_t sub_1CF6F4950(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C27A8, &unk_1CFA129B0);
    v3 = sub_1CF9E7908();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      sub_1CF9E81D8();

      sub_1CF9E69C8();
      result = sub_1CF9E8228();
      v17 = ~(-1 << *(v3 + 32));
      for (i = result & v17; ; i = (i + 1) & v17)
      {
        v19 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v19) == 0)
        {
          break;
        }

        v20 = (*(v3 + 48) + 16 * i);
        v21 = v20[1];
        if (*v20 != v9 || v21 != v8)
        {
          result = sub_1CF9E8048();
          if ((result & 1) == 0)
          {
            continue;
          }
        }

        v8, v21, v11, v12, v13, v14, v15, v16;
        goto LABEL_4;
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v19;
      v23 = (*(v3 + 48) + 16 * i);
      *v23 = v9;
      v23[1] = v8;
      v24 = *(v3 + 16);
      v25 = __OFADD__(v24, 1);
      v26 = v24 + 1;
      if (!v25)
      {
        *(v3 + 16) = v26;
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
    return MEMORY[0x1E69E7CD0];
  }

  return result;
}

void sub_1CF6F4AB8(uint64_t a1)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD00000000000001BLL, 0x80000001CFA58FA0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE340, &unk_1CF9FEF90);
  sub_1CF9E7B58();
  sub_1CF9E7B68();
  __break(1u);
}

uint64_t sub_1CF6F4B7C(uint64_t a1)
{
  v2 = *(a1 + 72);
  v3 = *(v2 + 16);
  if (v3)
  {
    sub_1CF2CA194();
    v4 = v2 + 40;
    do
    {
      v5 = *(v4 - 8);
      v6 = swift_allocError();
      v8[0] = v6;

      v5(v8);

      v4 += 16;
      --v3;
    }

    while (v3);
  }

  sub_1CF3FE278(v8);
  return sub_1CEFDA9E0(v8, a1, &unk_1EC4C0680, &qword_1CFA05A88);
}

uint64_t sub_1CF6F4C50(uint64_t a1, _TtC18FileProviderDaemon8FSTester *a2, int64_t a3, int64_t a4, void *a5, void *a6, uint64_t a7, void *a8)
{
  v10 = a1 == 0x746E756F63 && a2 == 0xE500000000000000;
  if (v10 || (sub_1CF9E8048() & 1) != 0)
  {
    a2, a2, a3, a4, a5, a6, a7, a8;
    return 0;
  }

  else if (a1 == 0x6F69746365726964 && a2 == 0xE90000000000006ELL || (sub_1CF9E8048() & 1) != 0)
  {
    a2, a2, a3, a4, a5, a6, a7, a8;
    return 1;
  }

  else if (a1 == 0x65646F43626F6ALL && a2 == 0xE700000000000000 || (sub_1CF9E8048() & 1) != 0)
  {
    a2, a2, a3, a4, a5, a6, a7, a8;
    return 2;
  }

  else if (a1 == 0x65646953626F6ALL && a2 == 0xE700000000000000 || (sub_1CF9E8048() & 1) != 0)
  {
    a2, a2, a3, a4, a5, a6, a7, a8;
    return 3;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001CFA59100 == a2)
  {
    a2, 0x80000001CFA59100, a3, a4, a5, a6, a7, a8;
    return 4;
  }

  else
  {
    v12 = sub_1CF9E8048();
    a2, v13, v14, v15, v16, v17, v18, v19;
    if (v12)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_1CF6F4E0C(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C2780, &qword_1CFA129A0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v8 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CF6FC2C4();
  sub_1CF9E8298();
  LOBYTE(v9) = 0;
  v6 = sub_1CF9E7D78();
  v11 = 1;
  sub_1CF1A8AD0();
  sub_1CF9E7D88();
  v11 = 2;
  sub_1CF1A8B24();
  sub_1CF9E7CF8();
  v11 = 3;
  sub_1CF6FC318();
  sub_1CF9E7CF8();
  v10 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4BE0, &unk_1CF9FEE90);
  v11 = 4;
  sub_1CEFE7C14(&qword_1EDEAB660, MEMORY[0x1E69E6190], MEMORY[0x1E69E6330]);
  sub_1CF9E7D88();
  (*(v3 + 8))(v5, v2);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v6;
}

uint64_t sub_1CF6F50D8(char a1)
{
  v2 = [objc_opt_self() defaultStore];
  v3 = v2;
  v4 = &selRef_maxFPCKDatabaseChecks;
  if ((a1 & 8) != 0)
  {
    v4 = &selRef_maxFPCKDatabaseChecksDiagnostic;
  }

  v5 = [v2 *v4];

  return v5;
}

uint64_t sub_1CF6F528C(uint64_t a1)
{
  v1 = sub_1CF9E57E8();
  v2 = [v1 domain];
  v3 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v5 = v4;

  if (v3 == 0xD000000000000021 && 0x80000001CFA58C80 == v5)
  {
    v5, v6, v7, 0x80000001CFA58C80, v8, v9, v10, v11;
    goto LABEL_9;
  }

  v13 = sub_1CF9E8048();
  v5, v14, v15, v16, v17, v18, v19, v20;
  if (v13)
  {
LABEL_9:
    v22 = [v1 code];

    v21 = (v22 - 3) < 2;
    return v21 & 1;
  }

  sub_1CF9E52B8();
  sub_1CF196978();
  if (sub_1CF9E5658())
  {

    v21 = 1;
  }

  else
  {
    _s3__C4CodeOMa_1(0);
    sub_1CF00BCE0(&qword_1EDEA3590, _s3__C4CodeOMa_1, &unk_1CF9F77C0);
    v21 = sub_1CF9E5658();
  }

  return v21 & 1;
}

void sub_1CF6F5410(uint64_t a1)
{
  v2 = sub_1CF9E6938();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v81 = &v81 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *(a1 + 16);
  if (v4)
  {
    v5 = sub_1CF1F8AE8(*(a1 + 16), 0);
    v6 = sub_1CF1F9BD8(&v91, &v5[1].super.isa, v4, a1);
    v7 = v91;

    sub_1CEFCB59C(v7);
    if (v6 == v4)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v5 = MEMORY[0x1E69E7CC0];
LABEL_5:
  v91 = v5;
  v8 = 0;
  sub_1CF6F214C(&v91);
  v9 = *v91->tree;
  if (v9)
  {
    v82 = v91;
    v83 = 0;
    v8 = 0;
    if (v9 >= 5)
    {
      v10 = 5;
    }

    else
    {
      v10 = v9;
    }

    v85 = v91 + 1;
    v11 = MEMORY[0x1E69E7CC8];
    v84 = v10;
    while (1)
    {
      if (v8 == v10)
      {
        __break(1u);
LABEL_40:
        __break(1u);
LABEL_41:
        __break(1u);
        goto LABEL_42;
      }

      v21 = v85 + 3 * v8;
      v23 = *v21;
      v22 = v21[1];
      v24 = v21[2];
      v25 = *(v24 + 16);
      if (v25)
      {
        v87 = *v21;
        v89 = v8;
        v90 = v11;
        swift_bridgeObjectRetain_n();
        v88 = v22;

        v86 = v24;
        v26 = (v24 + 48);
        v27 = MEMORY[0x1E69E7CC0];
        do
        {
          v28 = *(v26 - 2);
          v29 = *(v26 - 8);
          v30 = *(v26 - 7);
          v31 = *(v26 - 6);
          v32 = *v26;
          v33 = objc_allocWithZone(MEMORY[0x1E696AD98]);

          v34 = [v33 initWithInteger_];
          sub_1CF5174A4(2);
          v36 = v35;

          if (v36)
          {
            v37 = [v36 integerValue];
          }

          else
          {
            v37 = 0;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v27 = sub_1CF1F7588(0, *v27->tree + 1, 1, v27, v38, v39, v40, v41);
          }

          v43 = *v27->tree;
          v42 = *v27->tester;
          if (v43 >= v42 >> 1)
          {
            v27 = sub_1CF1F7588((v42 > 1), v43 + 1, 1, v27, v38, v39, v40, v41);
          }

          *v27->tree = v43 + 1;
          v44 = v27 + 24 * v43;
          *(v44 + 4) = v37;
          v44[40] = v29;
          v44[41] = v30;
          v44[42] = v31;
          *(v44 + 6) = v32;
          v26 += 3;
          --v25;
        }

        while (v25);
        swift_bridgeObjectRelease_n();
        v8 = v89;
        v11 = v90;
        v10 = v84;
        v23 = v87;
        v22 = v88;
      }

      else
      {

        v27 = MEMORY[0x1E69E7CC0];
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v91 = v11;
      v46 = sub_1CEFE4328(v23, v22);
      v54 = *v11->tree;
      v55 = (v47 & 1) == 0;
      v56 = __OFADD__(v54, v55);
      v57 = v54 + v55;
      if (v56)
      {
        goto LABEL_40;
      }

      v58 = v47;
      if (*v11->tester < v57)
      {
        break;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_30;
      }

      v62 = v46;
      sub_1CF7D0D70();
      v46 = v62;
      v11 = v91;
      if ((v58 & 1) == 0)
      {
LABEL_31:
        *(&v11[2].super.isa + (v46 >> 6)) |= 1 << v46;
        v59 = (*v11[1].tree + 16 * v46);
        *v59 = v23;
        v59[1] = v22;
        *(*v11[1].tester + 8 * v46) = v27;
        v60 = *v11->tree;
        v56 = __OFADD__(v60, 1);
        v61 = v60 + 1;
        if (v56)
        {
          goto LABEL_41;
        }

        *v11->tree = v61;
        goto LABEL_11;
      }

LABEL_10:
      v12 = *v11[1].tester;
      v13 = *(v12 + 8 * v46);
      *(v12 + 8 * v46) = v27;
      v22, v47, v48, v49, v50, v51, v52, v53;
      v13, v14, v15, v16, v17, v18, v19, v20;
LABEL_11:
      v8 = v8 + 1;
      if (v8 == v10)
      {

        sub_1CF9E5438();
        swift_allocObject();
        sub_1CF9E5428();
        v91 = v11;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C2848, &qword_1CFA12A70);
        sub_1CF6FC740(&qword_1EC4C2850, &qword_1EC4C2848, &qword_1CFA12A70, sub_1CF6FC7C4);
        v63 = v83;
        v64 = sub_1CF9E5418();
        if (v63)
        {

          v11, v72, v73, v74, v75, v76, v77, v78;
        }

        else
        {
          v79 = v64;
          v80 = v65;
          v11, v65, v66, v67, v68, v69, v70, v71;
          sub_1CF9E6918();
          sub_1CF9E68D8();
          sub_1CEFE4714(v79, v80);
        }

        return;
      }
    }

    sub_1CF7C6EBC(v57, isUniquelyReferenced_nonNull_native);
    v46 = sub_1CEFE4328(v23, v22);
    if ((v58 & 1) != (v47 & 1))
    {
      goto LABEL_43;
    }

LABEL_30:
    v11 = v91;
    if ((v58 & 1) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_10;
  }

LABEL_42:
  __break(1u);
LABEL_43:
  sub_1CF9E8108();
  __break(1u);

  __break(1u);
}

void sub_1CF6F5920(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t *a6)
{
  v10 = MEMORY[0x1E69E6158];
  v30 = MEMORY[0x1E69E6158];
  v31 = MEMORY[0x1E69E6160];
  *&v29 = a1;
  *(&v29 + 1) = a2;
  v11 = *a6;
  v13 = sub_1CEFE4328(a3, a4);
  v14 = v11[2];
  v15 = (v12 & 1) == 0;
  v16 = v14 + v15;
  if (__OFADD__(v14, v15))
  {
    __break(1u);
    goto LABEL_14;
  }

  v17 = v12;
  v18 = v11[3];
  if (v18 >= v16 && (a5 & 1) != 0)
  {
LABEL_7:
    v19 = *a6;
    if (v17)
    {
LABEL_8:
      v20 = (v19[7] + 40 * v13);
      __swift_destroy_boxed_opaque_existential_1(v20);
      sub_1CF054EA0(&v29, v20);
      return;
    }

    goto LABEL_11;
  }

  if (v18 >= v16 && (a5 & 1) == 0)
  {
    sub_1CF7D0EE0();
    goto LABEL_7;
  }

  sub_1CF7C7164(v16, a5 & 1);
  v21 = sub_1CEFE4328(a3, a4);
  if ((v17 & 1) != (v22 & 1))
  {
LABEL_14:
    sub_1CF9E8108();
    __break(1u);
    return;
  }

  v13 = v21;
  v19 = *a6;
  if (v17)
  {
    goto LABEL_8;
  }

LABEL_11:
  v23 = __swift_mutable_project_boxed_opaque_existential_1(&v29, v10);
  v24 = MEMORY[0x1EEE9AC00](v23);
  v26 = (&v28 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v27 + 16))(v26, v24);
  sub_1CF6F5D90(v13, a3, a4, *v26, v26[1], v19);
  __swift_destroy_boxed_opaque_existential_1(&v29);
}

void sub_1CF6F5B10(int a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5)
{
  LODWORD(v28) = a1;
  v9 = MEMORY[0x1E69E7668];
  v29 = MEMORY[0x1E69E7668];
  v30 = MEMORY[0x1E69E7670];
  v10 = *a5;
  v12 = sub_1CEFE4328(a2, a3);
  v13 = v10[2];
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_14;
  }

  v16 = v11;
  v17 = v10[3];
  if (v17 >= v15 && (a4 & 1) != 0)
  {
LABEL_7:
    v18 = *a5;
    if (v16)
    {
LABEL_8:
      v19 = (v18[7] + 40 * v12);
      __swift_destroy_boxed_opaque_existential_1(v19);
      sub_1CF054EA0(&v28, v19);
      return;
    }

    goto LABEL_11;
  }

  if (v17 >= v15 && (a4 & 1) == 0)
  {
    sub_1CF7D0EE0();
    goto LABEL_7;
  }

  sub_1CF7C7164(v15, a4 & 1);
  v20 = sub_1CEFE4328(a2, a3);
  if ((v16 & 1) != (v21 & 1))
  {
LABEL_14:
    sub_1CF9E8108();
    __break(1u);
    return;
  }

  v12 = v20;
  v18 = *a5;
  if (v16)
  {
    goto LABEL_8;
  }

LABEL_11:
  v22 = __swift_mutable_project_boxed_opaque_existential_1(&v28, v9);
  v23 = MEMORY[0x1EEE9AC00](v22);
  v25 = (&v27 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v26 + 16))(v25, v23);
  sub_1CF6F5D00(v12, a2, a3, *v25, v18);
  __swift_destroy_boxed_opaque_existential_1(&v28);
}

uint64_t sub_1CF6F5D00(unint64_t a1, uint64_t a2, uint64_t a3, int a4, void *a5)
{
  LODWORD(v11) = a4;
  v12 = MEMORY[0x1E69E7668];
  v13 = MEMORY[0x1E69E7670];
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_1CF054EA0(&v11, a5[7] + 40 * a1);
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

uint64_t sub_1CF6F5D90(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v13 = MEMORY[0x1E69E6158];
  v14 = MEMORY[0x1E69E6160];
  *&v12 = a4;
  *(&v12 + 1) = a5;
  a6[(a1 >> 6) + 8] |= 1 << a1;
  v7 = (a6[6] + 16 * a1);
  *v7 = a2;
  v7[1] = a3;
  result = sub_1CF054EA0(&v12, a6[7] + 40 * a1);
  v9 = a6[2];
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v11;
  }

  return result;
}

uint64_t sub_1CF6F5E20(char *a1, uint64_t a2, _TtC18FileProviderDaemon8FSTester *a3, void *a4, void *(*a5)(uint64_t *__return_ptr, uint64_t), uint64_t a6)
{
  v181 = a5;
  v180 = a6;
  v185 = a2;
  v187 = sub_1CF9E5CF8();
  v9 = *(v187 - 8);
  MEMORY[0x1EEE9AC00](v187);
  v174 = &v172[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v11);
  v183 = &v172[-v12];
  MEMORY[0x1EEE9AC00](v13);
  v184 = &v172[-v14];
  MEMORY[0x1EEE9AC00](v15);
  v188 = &v172[-v16];
  v17 = sub_1CF9E6118();
  v186 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v175 = &v172[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v172[-v20];
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v172[-v23];
  v25 = *a1;
  v173 = *a1;
  if (a3)
  {
    v26 = a3;
  }

  else
  {
    LOBYTE(v189) = v25;
    v185 = sub_1CF4D5AB0();
    v26 = v27;
  }

  v177 = v21;

  v28 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  v29 = a4;

  v30 = sub_1CF9E6108();
  LOBYTE(v31) = sub_1CF9E7288();
  v26, v32, v33, v34, v35, v36, v37, v38;

  v39 = os_log_type_enabled(v30, v31);
  v176 = v29;
  v179 = v26;
  if (v39)
  {
    v40 = swift_slowAlloc();
    v178 = v9;
    v41 = v40;
    v42 = swift_slowAlloc();
    v189 = v42;
    *v41 = 136446466;
    v43 = &v29[OBJC_IVAR____TtC18FileProviderDaemon4FPCK_runID];
    v44 = v17;
    v46 = *v43;
    v45 = v43[1];

    v47 = v24;
    v48 = sub_1CEFD0DF0(v46, v45, &v189);
    v49 = v45;
    v17 = v44;
    v49, v50, v51, v52, v53, v54, v55, v56;
    *(v41 + 4) = v48;
    *(v41 + 12) = 2082;
    *(v41 + 14) = sub_1CEFD0DF0(v185, v26, &v189);
    _os_log_impl(&dword_1CEFC7000, v30, v31, "🧹 FPCK %{public}s: launching %{public}s", v41, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1D386CDC0](v42, -1, -1);
    v57 = v41;
    v9 = v178;
    MEMORY[0x1D386CDC0](v57, -1, -1);

    v58 = *(v186 + 8);
    (v58)(v47, v17);
  }

  else
  {

    v58 = *(v186 + 8);
    (v58)(v24, v17);
  }

  v59 = sub_1CF9E5CC8();
  v60 = v182;
  v181(&v189, v59);
  v62 = v183;
  v61 = v184;
  if (v60)
  {
    (v9[1])(v188, v187);
    v179, v63, v64, v65, v66, v67, v68, v69;
  }

  else
  {
    v181 = 0;
    v182 = v17;
    LODWORD(v31) = v189;
    v70 = fpfs_current_or_default_log();
    v71 = (v9 + 2);
    if (v31)
    {
      v183 = v58;
      sub_1CF9E6128();
      (*v71)(v61, v188, v187);
      v72 = v176;
      v73 = v179;

      v74 = v72;
      v75 = sub_1CF9E6108();
      v76 = sub_1CF9E7288();
      v73, v77, v78, v79, v80, v81, v82, v83;

      if (os_log_type_enabled(v75, v76))
      {
        v91 = swift_slowAlloc();
        LODWORD(v175) = v76;
        v92 = v61;
        v93 = v91;
        v176 = swift_slowAlloc();
        v189 = v176;
        *v93 = 136446722;
        v178 = v74;
        v95 = *&v74[OBJC_IVAR____TtC18FileProviderDaemon4FPCK_runID];
        v94 = *&v74[OBJC_IVAR____TtC18FileProviderDaemon4FPCK_runID + 8];

        v96 = sub_1CEFD0DF0(v95, v94, &v189);
        LODWORD(v180) = v31;
        v97 = v9;
        v98 = v96;
        v94, v99, v100, v101, v102, v103, v104, v105;
        *(v93 + 4) = v98;
        *(v93 + 12) = 2080;
        v106 = sub_1CEFD0DF0(v185, v73, &v189);
        v73, v107, v108, v109, v110, v111, v112, v113;
        *(v93 + 14) = v106;
        *(v93 + 22) = 2048;
        v114 = v174;
        sub_1CF9E5CC8();
        sub_1CF9E5C28();
        v116 = v115;
        v117 = v97[1];
        v118 = v114;
        v74 = v178;
        v117(v118, v187);
        v117(v92, v187);
        LOBYTE(v31) = v180;
        *(v93 + 24) = v116;
        _os_log_impl(&dword_1CEFC7000, v75, v175, "🧹 FPCK %{public}s: %s took %fs", v93, 0x20u);
        v119 = v176;
        swift_arrayDestroy();
        MEMORY[0x1D386CDC0](v119, -1, -1);
        MEMORY[0x1D386CDC0](v93, -1, -1);
      }

      else
      {
        v73, v84, v85, v86, v87, v88, v89, v90;

        v117 = v9[1];
        v117(v61, v187);
      }

      (v183)(v177, v182);
      v167 = *&v74[OBJC_IVAR____TtC18FileProviderDaemon4FPCK_saveCheckpoint];
      LOBYTE(v189) = v173;

      v168 = sub_1CF6CBDC8(&v189);
      v167();

      v117(v188, v187);
    }

    else
    {
      v178 = v9;
      v120 = v175;
      sub_1CF9E6128();
      (*v71)(v62, v188, v187);
      v121 = v176;
      v122 = v62;
      v123 = v179;

      v124 = sub_1CF9E6108();
      v125 = sub_1CF9E7288();
      v123, v126, v127, v128, v129, v130, v131, v132;

      if (os_log_type_enabled(v124, v125))
      {
        v140 = swift_slowAlloc();
        LODWORD(v180) = v31;
        LODWORD(v184) = v125;
        v141 = v140;
        v142 = swift_slowAlloc();
        v143 = v187;
        v31 = v142;
        v189 = v142;
        *v141 = 136446722;
        v145 = *&v121[OBJC_IVAR____TtC18FileProviderDaemon4FPCK_runID];
        v144 = *&v121[OBJC_IVAR____TtC18FileProviderDaemon4FPCK_runID + 8];

        v146 = sub_1CEFD0DF0(v145, v144, &v189);
        v144, v147, v148, v149, v150, v151, v152, v153;
        *(v141 + 4) = v146;
        *(v141 + 12) = 2080;
        v154 = sub_1CEFD0DF0(v185, v123, &v189);
        v123, v155, v156, v157, v158, v159, v160, v161;
        *(v141 + 14) = v154;
        *(v141 + 22) = 2048;
        v162 = v174;
        sub_1CF9E5CC8();
        sub_1CF9E5C28();
        v164 = v163;
        v165 = v122;
        v166 = v178[1];
        v166(v162, v143);
        v166(v165, v143);
        *(v141 + 24) = v164;
        _os_log_impl(&dword_1CEFC7000, v124, v184, "🧹 FPCK %{public}s: %s interrupted after %fs", v141, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1D386CDC0](v31, -1, -1);
        LOBYTE(v31) = v180;
        MEMORY[0x1D386CDC0](v141, -1, -1);

        (v58)(v175, v182);
        v166(v188, v143);
      }

      else
      {
        v123, v133, v134, v135, v136, v137, v138, v139;

        v169 = v178[1];
        v170 = v187;
        v169(v122, v187);
        (v58)(v120, v182);
        v169(v188, v170);
      }
    }
  }

  return v31 & 1;
}

uint64_t sub_1CF6F679C@<X0>(_BYTE *a1@<X8>)
{
  result = (*(v1 + 16))();
  if (!v2)
  {
    *a1 = result & 1;
  }

  return result;
}

uint64_t sub_1CF6F67D4(unsigned int a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v866 = a1;
  v9 = sub_1CF9E6118();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v853 = &v839 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1B40, &unk_1CF9FCB70);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v854 = (&v839 - v13);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE360, &qword_1CF9FE650);
  v851 = *(v14 - 8);
  v852 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v839 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v850 = v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v839 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE310, qword_1CF9FCBE0);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v864 = &v839 - v21;
  v22 = OBJC_IVAR____TtC18FileProviderDaemon4FPCK_numberOfFilesChecked;
  swift_beginAccess();
  v23 = *(v5 + v22);
  v24 = __OFADD__(v23, 1);
  v25 = v23 + 1;
  if (v24)
  {
LABEL_203:
    __break(1u);
    goto LABEL_204;
  }

  v849 = v16;
  v868 = v22;
  *(v5 + v22) = v25;
  v26 = sub_1CF6CF224("checker(_:handleItem:itemStatus:under:brokenInvariants:)", 56, 2, 989);
  if ((v26 & 1) == 0)
  {
    return v26 & 1;
  }

  v847 = v26;
  v27 = 0;
  v867 = *(a2 + 16);
  v28 = v867[3];
  v848 = a2;
  v842 = v19;
  v843 = v10;
  v840 = a3;
  v844 = v9;
  v863 = v28;
  if ((a4 & 0x4000000000) == 0 || !v28)
  {
    goto LABEL_17;
  }

  sub_1CF9E6A58();
  v30 = v29;
  sub_1CF51B588(v874);
  v31 = v874[4];
  v32 = v874[5];
  v874[1], v33, v34, v35, v36, v37, v38, v39;
  v30, v40, v41, v42, v43, v44, v45, v46;
  if (!v32)
  {
    v27 = 0;
    goto LABEL_17;
  }

  a2 = OBJC_IVAR____TtC18FileProviderDaemon4FPCK_multipleHardlinksExtensions;
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v873[0] = *(v5 + a2);
  v48 = v873[0];
  *(v5 + a2) = 0x8000000000000000;
  a3 = sub_1CEFE4328(v31, v32);
  v56 = v48[2];
  v57 = (v49 & 1) == 0;
  v58 = v56 + v57;
  if (__OFADD__(v56, v57))
  {
    __break(1u);
    goto LABEL_245;
  }

  v22 = v49;
  if (v48[3] >= v58)
  {
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      goto LABEL_247;
    }

    *(v5 + a2) = v48;
    if (v49)
    {
      goto LABEL_14;
    }
  }

  else
  {
    sub_1CF7C745C(v58, isUniquelyReferenced_nonNull_native);
    v48 = v873[0];
    v59 = sub_1CEFE4328(v31, v32);
    if ((v22 & 1) != (v49 & 1))
    {
LABEL_267:
      sub_1CF9E8108();
      __break(1u);
      goto LABEL_268;
    }

    a3 = v59;
    *(v5 + a2) = v48;
    if (v22)
    {
      goto LABEL_14;
    }
  }

LABEL_10:
  sub_1CF1D5A0C();
  while (1)
  {
    v60 = v48[7];
    v61 = *(v60 + 8 * a3);
    v62 = __CFADD__(v61, 1);
    v63 = v61 + 1;
    if (v62)
    {
LABEL_245:
      __break(1u);
      goto LABEL_246;
    }

    *(v60 + 8 * a3) = v63;
    swift_endAccess();
    v27 = sub_1CF193338;
LABEL_17:
    *v877.tester = a4;
    v841 = OBJC_IVAR____TtC18FileProviderDaemon4FPCK_launchOptions;
    v64 = a4;
    if ((*(v5 + OBJC_IVAR____TtC18FileProviderDaemon4FPCK_launchOptions) & 2) != 0)
    {
      v65 = 0;
      v66 = 0;
      do
      {
        v67 = *(&unk_1F4BEF1D8 + v65 + 32);
        if ((v67 & ~v66) == 0)
        {
          v67 = 0;
        }

        v66 |= v67;
        v65 += 8;
      }

      while (v65 != 232);
      v64 = a4 & ~v66;
      *v877.tester = v64;
    }

    v865 = a4;
    v869 = v5;
    v846 = v27;
    v855 = v64;
    v873[0] = v64;
    type metadata accessor for BrokenInvariants(0);
    v69 = v68;
    v32 = sub_1CF00BCE0(&qword_1EDEA36C0, type metadata accessor for BrokenInvariants, &unk_1CF9F6A38);
    v70 = 0;
    if ((sub_1CF9E7798() & 1) == 0)
    {
      break;
    }

LABEL_24:
    if (fpfs_fileattrs_fullpath())
    {
      v71 = sub_1CF9E6A58();
      a3 = v72;
      v862 = v71;
      *v877._anon_8 = v71;
      a4 = v869;
    }

    else
    {
      a4 = v869;
      if (v863)
      {
        v93 = sub_1CF9E6A58();
        v95 = v94;
        strcpy(v874, "unknownPath/");
        BYTE5(v874[1]) = 0;
        HIWORD(v874[1]) = -5120;
      }

      else
      {
        v874[0] = 0;
        v874[1] = 0xE000000000000000;
        sub_1CF9E7948();
        v874[1], v96, v97, v98, v99, v100, v101, v102;
        v874[0] = 0xD00000000000001BLL;
        v874[1] = 0x80000001CFA59000;
        v873[0] = *(&v868->super.isa + a4);
        v93 = sub_1CF9E7F98();
        v95 = v103;
      }

      MEMORY[0x1D3868CC0](v93);
      v95, v104, v105, v106, v107, v108, v109, v110;
      a3 = v874[1];
      v862 = v874[0];
      *v877._anon_8 = v874[0];
    }

    *v877.tree = a3;
    v877.super.isa = 0;
    v876 = 0;
    v839 = OBJC_IVAR____TtC18FileProviderDaemon4FPCK_fsRepair;
    v111 = *(a4 + OBJC_IVAR____TtC18FileProviderDaemon4FPCK_fsRepair);
    v868 = a3;
    if (v111)
    {
      v845 = v70;
      a2 = v865;
      v873[0] = v865;
      v861 = v111;

      if ((sub_1CF9E7798() & 1) == 0)
      {
        v859 = OBJC_IVAR____TtC18FileProviderDaemon4FPCK_sqlDatabase;
        v860 = OBJC_IVAR____TtC18FileProviderDaemon4FPCK_rootURL;
        v857 = OBJC_IVAR____TtC18FileProviderDaemon4FPCK_repairedDiskBrokenInvariantsCounters;
        swift_beginAccess();
        v863 = 0;
        v856 = 0;
        v858 = v32;
        while (1)
        {
          v136 = __clz(__rbit64(a2));
          if (v136 >= 0x40)
          {
            a3 = 0;
          }

          else
          {
            a3 = 1 << v136;
          }

          v874[0] = a3 & a2;
          if ((sub_1CF9E7798() & 1) == 0)
          {
            a2 &= ~a3;
            v873[0] = a2;
          }

          v137 = v864;
          v32 = v69;
          sub_1CEFCCBDC(a4 + v860, v864, &unk_1EC4BE310, qword_1CF9FCBE0);
          v5 = sub_1CF9E5A58();
          v138 = *(v5 - 8);
          if ((*(v138 + 48))(v137, 1, v5) == 1)
          {
            goto LABEL_260;
          }

          v22 = a4;
          v140 = *(a4 + v859);

          v141 = v137;
          v142 = sub_1CF7063DC(a3, v866, v867, v862, v868, v137, v140, v865);

          (*(v138 + 8))(v141, v5);
          if (v142)
          {
            v69 = v857;
            swift_beginAccess();
            sub_1CEFF7124(v863, 0);
            v143 = swift_isUniquelyReferenced_nonNull_native();
            v872[0] = *(v22 + v69);
            v144 = v872[0];
            *(v22 + v69) = 0x8000000000000000;
            v5 = sub_1CF7D52B0(a3);
            v146 = v144[2];
            v147 = (v145 & 1) == 0;
            v148 = v146 + v147;
            if (__OFADD__(v146, v147))
            {
              __break(1u);
LABEL_190:
              __break(1u);
LABEL_191:
              a3 = MEMORY[0x1E69E7CC0];
LABEL_192:
              v871[0] = 0;
              v871[1] = 0xE000000000000000;
              sub_1CF9E7948();
              v871[1], v686, v687, v688, v689, v690, v691, v692;
              v871[0] = 0x7466654C208C9DE2;
              v871[1] = 0xAB00000000203A20;
              v693 = sub_1CF7F5AAC(v5 & ~v856);
              v695 = v694;
              MEMORY[0x1D3868CC0](v693);
              v695, v696, v697, v698, v699, v700, v701, v702;
              MEMORY[0x1D3868CC0](32, 0xE100000000000000);
              v703 = sub_1CF7F5394(0x40000000);
              v705 = v704;
              MEMORY[0x1D3868CC0](v703);
              v705, v706, v707, v708, v709, v710, v711, v712;
              v5 = v871[0];
              a4 = v871[1];
              if (swift_isUniquelyReferenced_nonNull_native())
              {
LABEL_193:
                v714 = *(a3 + 16);
                v713 = *(a3 + 24);
                if (v714 >= v713 >> 1)
                {
                  a3 = sub_1CF0710C0((v713 > 1), v714 + 1, 1, a3, v629, v630, v631, v632);
                }

                *(a3 + 16) = v714 + 1;
                v715 = a3 + 16 * v714;
                *(v715 + 32) = v5;
                *(v715 + 40) = a4;
                v871[0] = a3;
                __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4BE0, &unk_1CF9FEE90);
                sub_1CEFCCCEC(&qword_1EDEAB670, &unk_1EC4C4BE0, &unk_1CF9FEE90, MEMORY[0x1E69E6310]);
                v716 = sub_1CF9E67D8();
                v718 = v717;
                a3, v717, v719, v720, v721, v722, v723, v724;
                v871[0] = v32;
                v871[1] = v69;
                MEMORY[0x1D3868CC0](8250, 0xE200000000000000);
                v725 = v871[1];

                MEMORY[0x1D3868CC0](v716, v718);
                v725, v726, v727, v728, v729, v730, v731, v732;
                v718, v733, v734, v735, v736, v737, v738, v739;
                v740 = v871[1];

                MEMORY[0x1D3868CC0](10, 0xE100000000000000);
                v740, v741, v742, v743, v744, v745, v746, v747;
                v748 = v871[0];
                v749 = v871[1];
                v750 = *(a2 + OBJC_IVAR____TtC18FileProviderDaemon4FPCK_resultHandler);

                v750(v748, v749);
                v868, v751, v752, v753, v754, v755, v756, v757;
                v749, v758, v759, v760, v761, v762, v763, v764;

                sub_1CEFF7124(v846, 0);
                v320 = v845;
                goto LABEL_124;
              }

LABEL_265:
              a3 = sub_1CF0710C0(0, *(a3 + 16) + 1, 1, a3, v629, v630, v631, v632);
              goto LABEL_193;
            }

            v19 = v145;
            v69 = v32;
            if (v144[3] >= v148)
            {
              v32 = v858;
              if ((v143 & 1) == 0)
              {
                sub_1CF7D122C();
                v144 = v872[0];
              }
            }

            else
            {
              sub_1CF7C7730(v148, v143);
              v144 = v872[0];
              v149 = sub_1CF7D52B0(a3);
              v32 = v858;
              if ((v19 & 1) != (v150 & 1))
              {
                goto LABEL_266;
              }

              v5 = v149;
            }

            a4 = v869;
            *(v869 + v857) = v144;
            if ((v19 & 1) == 0)
            {
              v144[(v5 >> 6) + 8] |= 1 << v5;
              *(v144[6] + 8 * v5) = a3;
              *(v144[7] + 8 * v5) = 0;
              v151 = v144[2];
              v24 = __OFADD__(v151, 1);
              v152 = v151 + 1;
              if (v24)
              {
                __break(1u);
                goto LABEL_203;
              }

              v144[2] = v152;
            }

            v153 = v144[7];
            v154 = *(v153 + 8 * v5);
            v24 = __OFADD__(v154, 1);
            v155 = v154 + 1;
            if (v24)
            {
              goto LABEL_190;
            }

            *(v153 + 8 * v5) = v155;
            swift_endAccess();
            if ((a3 & ~v856) != 0)
            {
              v856 |= a3;
              v877.super.isa = v856;
            }

            v863 = sub_1CF193338;
          }

          else
          {
            a4 = v22;
            v69 = v32;
            v32 = v858;
          }

          if (sub_1CF9E7798())
          {
            goto LABEL_51;
          }
        }
      }

      v863 = 0;
      v856 = 0;
LABEL_51:

      v70 = v845;
      a3 = v868;
    }

    else
    {
      v863 = 0;
      v856 = 0;
    }

    v875 = 0;
    if (v848[1] != 1)
    {
      if (v848[10] == 1)
      {
        if (v855)
        {
          v129 = OBJC_IVAR____TtC18FileProviderDaemon4FPCK_numberOfBrokenFilesInFSAndFSSnapshotCheck;
          swift_beginAccess();
          v134 = *(a4 + v129);
          v24 = __OFADD__(v134, 1);
          v135 = v134 + 1;
          if (v24)
          {
            __break(1u);
LABEL_250:
            __break(1u);
LABEL_251:
            __break(1u);
LABEL_252:
            __break(1u);
            goto LABEL_253;
          }

LABEL_109:
          *(a4 + v129) = v135;
          v224 = sub_1CF9E6888();
          v225 = [v224 fp_prettyPath];

          v117 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
          v119 = v226;

          v128 = v856;
          if (!v856)
          {
            goto LABEL_115;
          }

          v873[0] = 0x6578694620859CE2;
          v873[1] = 0xAC000000203A2064;
LABEL_111:
          v227 = sub_1CF7F5AAC(v128);
          v229 = v228;
          MEMORY[0x1D3868CC0](v227);
          v229, v230, v231, v232, v233, v234, v235, v236;
          MEMORY[0x1D3868CC0](32, 0xE100000000000000);
          MEMORY[0x1D3868CC0](0, 0xE000000000000000);
          v237 = v873[0];
          v238 = v873[1];
          v247 = sub_1CF0710C0(0, 1, 1, MEMORY[0x1E69E7CC0], v239, v240, v241, v242);
          v249 = *v247->tree;
          v248 = *v247->tester;
          if (v249 >= v248 >> 1)
          {
            v247 = sub_1CF0710C0((v248 > 1), v249 + 1, 1, v247, v243, v244, v245, v246);
          }

          *v247->tree = v249 + 1;
          v250 = v247 + 16 * v249;
          *(v250 + 4) = v237;
          *(v250 + 5) = v238;
          a4 = v869;
LABEL_116:
          v251 = v865 & ~v856;
          if (v251)
          {
            v873[0] = 0x7466654C208C9DE2;
            v873[1] = 0xAB00000000203A20;
            v252 = sub_1CF7F5AAC(v251);
            v254 = v253;
            MEMORY[0x1D3868CC0](v252);
            v254, v255, v256, v257, v258, v259, v260, v261;
            MEMORY[0x1D3868CC0](32, 0xE100000000000000);
            MEMORY[0x1D3868CC0](0, 0xE000000000000000);
            v262 = v873[0];
            v263 = v873[1];
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v247 = sub_1CF0710C0(0, *v247->tree + 1, 1, v247, v264, v265, v266, v267);
            }

            v269 = *v247->tree;
            v268 = *v247->tester;
            if (v269 >= v268 >> 1)
            {
              v247 = sub_1CF0710C0((v268 > 1), v269 + 1, 1, v247, v264, v265, v266, v267);
            }

            *v247->tree = v269 + 1;
            v270 = v247 + 16 * v269;
            *(v270 + 4) = v262;
            *(v270 + 5) = v263;
            a4 = v869;
          }

          v873[0] = v247;
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4BE0, &unk_1CF9FEE90);
          sub_1CEFCCCEC(&qword_1EDEAB670, &unk_1EC4C4BE0, &unk_1CF9FEE90, MEMORY[0x1E69E6310]);
          v271 = sub_1CF9E67D8();
          v273 = v272;
          v247, v272, v274, v275, v276, v277, v278, v279;
          v873[0] = v117;
          v873[1] = v119;
          MEMORY[0x1D3868CC0](8250, 0xE200000000000000);
          v280 = v873[1];

          MEMORY[0x1D3868CC0](v271, v273);
          v280, v281, v282, v283, v284, v285, v286, v287;
          v273, v288, v289, v290, v291, v292, v293, v294;
          v295 = v873[1];

          MEMORY[0x1D3868CC0](10, 0xE100000000000000);
          v295, v296, v297, v298, v299, v300, v301, v302;
          v303 = v873[0];
          v304 = v873[1];
          v305 = *(a4 + OBJC_IVAR____TtC18FileProviderDaemon4FPCK_resultHandler);

          v305(v303, v304);
          v868, v306, v307, v308, v309, v310, v311, v312;
          v304, v313, v314, v315, v316, v317, v318, v319;

LABEL_123:
          sub_1CEFF7124(v846, 0);
          v320 = v70;
          goto LABEL_124;
        }

LABEL_114:
        a3, v72, v73, v74, v75, v76, v77, v78;
        goto LABEL_123;
      }

      v156 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      a2 = v157;
      v874[0] = v156;
      v874[1] = v157;
      v873[0] = 47;
      v873[1] = 0xE100000000000000;
      sub_1CEFE4E68();
      v158 = sub_1CF9E7638();
      a2, v159, v160, v161, v162, v163, v164, v165;
      v173 = *v158->tree;
      if (!v173)
      {
        v158, v166, v167, v168, v169, v170, v171, v172;
        if (v855)
        {
          v129 = OBJC_IVAR____TtC18FileProviderDaemon4FPCK_numberOfBrokenFilesInFSAndFSSnapshotCheck;
          swift_beginAccess();
          v223 = *(a4 + v129);
          v24 = __OFADD__(v223, 1);
          v135 = v223 + 1;
          if (v24)
          {
            goto LABEL_255;
          }

          goto LABEL_109;
        }

        goto LABEL_114;
      }

      v845 = v70;
      v174 = &v158->tree[16 * v173];
      v22 = *v174;
      v32 = v174[1];

      v158, v175, v176, v177, v178, v179, v180, v181;
      v5 = *(a4 + OBJC_IVAR____TtC18FileProviderDaemon4FPCK_fsSnapshotChecker);
      if (v5)
      {
        v189 = *v867;

        if (sub_1CF70E404(v189, 0, 1, 0, 1))
        {
          v197 = sub_1CF9E6888();
          swift_beginAccess();
          a2 = *(v5 + 16);

          v69 = sub_1CF90517C(v197, a2);

          a2, v198, v199, v200, v201, v202, v203, v204;
          if (v69)
          {

            v19 = sub_1CF9E6888();
            v205 = v854;
            sub_1CF70D7C8(v867, v19, v854);
            v447 = v851;
            v448 = (*(v851 + 48))(v205, 1, v852);
            v864 = v19;
            if (v448 == 1)
            {
              v32, v449, v450, v451, v452, v453, v454, v455;
              sub_1CEFCCC44(v205, &qword_1EC4C1B40, &unk_1CF9FCB70);
              if ((v848[3] & 1) == 0)
              {
                goto LABEL_180;
              }

              v19 = 0;
              a4 = v845;
              goto LABEL_219;
            }

            v861 = v5;
            v585 = v447;
            v586 = v205;
            v587 = v842;
            sub_1CEFE55D0(v586, v842, &unk_1EC4BE360, &qword_1CF9FE650);
            v588 = v849;
            sub_1CEFCCBDC(v587, v849, &unk_1EC4BE360, &qword_1CF9FE650);
            v589 = (*(v585 + 80) + 32) & ~*(v585 + 80);
            v590 = swift_allocObject();
            *(v590 + 16) = a4;
            *(v590 + 24) = v19;
            sub_1CEFE55D0(v588, v590 + v589, &unk_1EC4BE360, &qword_1CF9FE650);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C28A0, &qword_1CFA12AF0);
            v69 = swift_allocObject();
            sub_1CF6FCA20(v874);
            memcpy((v69 + 32), v874, 0x208uLL);
            *(v69 + 16) = sub_1CF6FC9A0;
            *(v69 + 24) = v590;
            LODWORD(v588) = v848[3];
            a2 = a4;
            if (v588 == 1)
            {

              v32, v591, v592, v593, v594, v595, v596, v597;
LABEL_184:

              swift_setDeallocating();
              memcpy(v873, (v69 + 32), sizeof(v873));
              sub_1CEFCCC44(v873, &qword_1EC4C28A8, &qword_1CFA12AF8);
              swift_deallocClassInstance();
              sub_1CEFCCC44(v842, &unk_1EC4BE360, &qword_1CF9FE650);
              v875 = 0x40000000;
              v628 = OBJC_IVAR____TtC18FileProviderDaemon4FPCK_numberOfBrokenFilesInFSAndFSSnapshotCheck;
              swift_beginAccess();
              v633 = *(a2 + v628);
              v24 = __OFADD__(v633, 1);
              v634 = v633 + 1;
              v5 = v865;
              if (!v24)
              {
                *(a2 + v628) = v634;

                v635 = sub_1CF9E6888();
                a3, v636, v637, v638, v639, v640, v641, v642;
                v643 = [v635 fp_prettyPath];

                v32 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
                v69 = v644;

                v645 = v856;
                if (!v856)
                {
                  goto LABEL_191;
                }

                v871[0] = 0;
                v871[1] = 0xE000000000000000;
                sub_1CF9E7948();
                v871[1], v646, v647, v648, v649, v650, v651, v652;
                v871[0] = 0x6578694620859CE2;
                v871[1] = 0xAC000000203A2064;
                v653 = sub_1CF7F5AAC(v645);
                v655 = v654;
                MEMORY[0x1D3868CC0](v653);
                v655, v656, v657, v658, v659, v660, v661, v662;
                MEMORY[0x1D3868CC0](32, 0xE100000000000000);
                v663 = sub_1CF7F5394(0);
                v665 = v664;
                MEMORY[0x1D3868CC0](v663);
                v665, v666, v667, v668, v669, v670, v671, v672;
                v673 = v871[0];
                v674 = v871[1];
                a3 = sub_1CF0710C0(0, 1, 1, MEMORY[0x1E69E7CC0], v675, v676, v677, v678);
                v684 = *(a3 + 16);
                v683 = *(a3 + 24);
                if (v684 >= v683 >> 1)
                {
                  a3 = sub_1CF0710C0((v683 > 1), v684 + 1, 1, a3, v679, v680, v681, v682);
                }

                *(a3 + 16) = v684 + 1;
                v685 = a3 + 16 * v684;
                *(v685 + 32) = v673;
                *(v685 + 40) = v674;
                v5 = v865;
                goto LABEL_192;
              }

              __break(1u);
              goto LABEL_265;
            }

            v620 = v864;
            if (sub_1CF6D34D8(v840))
            {

              v32, v621, v622, v623, v624, v625, v626, v627;

              a3 = v868;
              goto LABEL_184;
            }

            v778 = v848[2];
            v779 = v842 + *(v852 + 48);
            v19 = 0;
            v780 = *(v779 + *(type metadata accessor for ItemMetadata(0) + 48));
            if (v778 != v780)
            {
              if (v780)
              {
                v19 = 0x1000000000;
              }

              else
              {
                v19 = 0x800000000;
              }

              v875 = v19;
            }

            sub_1CF6C1FA4(v871);
            memcpy(v872, v871, sizeof(v872));
            memcpy(v873, v871, sizeof(v873));
            if (sub_1CF08B99C(v873) == 1)
            {
              sub_1CEFCCC44(v842, &unk_1EC4BE360, &qword_1CF9FE650);

              swift_setDeallocating();
              memcpy(v870, (v69 + 32), sizeof(v870));
              sub_1CEFCCC44(v870, &qword_1EC4C28A8, &qword_1CFA12AF8);
              swift_deallocClassInstance();
              v32, v790, v791, v792, v793, v794, v795, v796;
              v19 |= 1uLL;
              goto LABEL_213;
            }

            memcpy(v878, v873, 0x208uLL);
            if (sub_1CF44F4AC())
            {
              v797 = sub_1CF9E6888();
              v32, v798, v799, v800, v801, v802, v803, v804;
              v805 = sub_1CF6D22AC(v878, v797, *(v861 + 64), *(v861 + 72));

              v806 = v842;
              v807 = sub_1CF6E512C(v867, v842, v805, *(a4 + v841));
              sub_1CEFCCC44(v872, &unk_1EC4BFC20, &unk_1CFA0A290);

              swift_setDeallocating();
              memcpy(v871, (v69 + 32), sizeof(v871));
              sub_1CEFCCC44(v871, &qword_1EC4C28A8, &qword_1CFA12AF8);
              swift_deallocClassInstance();
              sub_1CEFCCC44(v806, &unk_1EC4BE360, &qword_1CF9FE650);
              if ((v807 & ~v19) != 0)
              {
                v19 |= v807;
LABEL_213:
                v875 = v19;
              }
            }

            else
            {
              sub_1CEFCCC44(v842, &unk_1EC4BE360, &qword_1CF9FE650);
              sub_1CEFCCC44(v872, &unk_1EC4BFC20, &unk_1CFA0A290);

              v32, v808, v809, v810, v811, v812, v813, v814;
              swift_setDeallocating();
              memcpy(v871, (v69 + 32), sizeof(v871));
              sub_1CEFCCC44(v871, &qword_1EC4C28A8, &qword_1CFA12AF8);
              swift_deallocClassInstance();
            }

            a4 = v845;
            v5 = v861;
            goto LABEL_219;
          }

          v32, v421, v422, v423, v424, v425, v426, v427;
          if (v855)
          {
            v137 = OBJC_IVAR____TtC18FileProviderDaemon4FPCK_numberOfBrokenFilesInFSAndFSSnapshotCheck;
            swift_beginAccess();
            v428 = *(v137 + a4);
            v24 = __OFADD__(v428, 1);
            v139 = v428 + 1;
            v22 = v845;
            if (v24)
            {
              goto LABEL_262;
            }

            *(v137 + a4) = v139;
            v429 = sub_1CF9E6888();
            v430 = [v429 fp_prettyPath];

            a2 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
            v32 = v431;

            if (v856)
            {
              v873[0] = 0x6578694620859CE2;
              v873[1] = 0xAC000000203A2064;
              v432 = sub_1CF7F5AAC(v856);
              v434 = v433;
              MEMORY[0x1D3868CC0](v432);
              v434, v435, v436, v437, v438, v439, v440, v441;
              MEMORY[0x1D3868CC0](32, 0xE100000000000000);
              MEMORY[0x1D3868CC0](0, 0xE000000000000000);
              a3 = v873[0];
              v5 = v873[1];
              v69 = sub_1CF0710C0(0, 1, 1, MEMORY[0x1E69E7CC0], v442, v443, v444, v445);
              a4 = *(v69 + 16);
              v139 = *(v69 + 24);
              v137 = (a4 + 1);
              if (a4 >= v139 >> 1)
              {
                goto LABEL_263;
              }

              goto LABEL_148;
            }

            v69 = MEMORY[0x1E69E7CC0];
LABEL_177:
            v598 = v865 & ~v856;
            if (!v598)
            {
              goto LABEL_143;
            }

            v873[0] = 0x7466654C208C9DE2;
            v873[1] = 0xAB00000000203A20;
            v599 = sub_1CF7F5AAC(v598);
            v601 = v600;
            MEMORY[0x1D3868CC0](v599);
            v601, v602, v603, v604, v605, v606, v607, v608;
            MEMORY[0x1D3868CC0](32, 0xE100000000000000);
            v609 = sub_1CF7F5394(0);
            v611 = v610;
            MEMORY[0x1D3868CC0](v609);
            v611, v612, v613, v614, v615, v616, v617, v618;
LABEL_139:
            a3 = v873[0];
            v5 = v873[1];
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              goto LABEL_256;
            }

            goto LABEL_140;
          }

LABEL_149:
          a3, v323, v324, v325, v326, v327, v328, v329;
          v22 = v845;
          goto LABEL_150;
        }

        v32, v190, v191, v192, v193, v194, v195, v196;

        if (!v855)
        {
          goto LABEL_149;
        }

        v137 = OBJC_IVAR____TtC18FileProviderDaemon4FPCK_numberOfBrokenFilesInFSAndFSSnapshotCheck;
        swift_beginAccess();
        v331 = *(v137 + a4);
        v24 = __OFADD__(v331, 1);
        v139 = v331 + 1;
        v22 = v845;
        if (v24)
        {
          goto LABEL_259;
        }
      }

      else
      {
        v32, v182, v183, v184, v185, v186, v187, v188;
        if (!v855)
        {
          goto LABEL_149;
        }

        v137 = OBJC_IVAR____TtC18FileProviderDaemon4FPCK_numberOfBrokenFilesInFSAndFSSnapshotCheck;
        swift_beginAccess();
        v330 = *(v137 + a4);
        v24 = __OFADD__(v330, 1);
        v139 = v330 + 1;
        v22 = v845;
        if (v24)
        {
          __break(1u);
          goto LABEL_258;
        }
      }

      *(v137 + a4) = v139;
      v332 = sub_1CF9E6888();
      v333 = [v332 fp_prettyPath];

      a2 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v32 = v334;

      if (v856)
      {
        v873[0] = 0x6578694620859CE2;
        v873[1] = 0xAC000000203A2064;
        v335 = sub_1CF7F5AAC(v856);
        v337 = v336;
        MEMORY[0x1D3868CC0](v335);
        v337, v338, v339, v340, v341, v342, v343, v344;
        MEMORY[0x1D3868CC0](32, 0xE100000000000000);
        MEMORY[0x1D3868CC0](0, 0xE000000000000000);
        v345 = v873[0];
        v346 = v873[1];
        v69 = sub_1CF0710C0(0, 1, 1, MEMORY[0x1E69E7CC0], v347, v348, v349, v350);
        v356 = *(v69 + 16);
        v355 = *(v69 + 24);
        if (v356 >= v355 >> 1)
        {
          v69 = sub_1CF0710C0((v355 > 1), v356 + 1, 1, v69, v351, v352, v353, v354);
        }

        *(v69 + 16) = v356 + 1;
        v357 = (v69 + 16 * v356);
        *(v357 + 4) = v345;
        *(v357 + 5) = v346;
        a4 = v869;
      }

      else
      {
        v69 = MEMORY[0x1E69E7CC0];
      }

      v358 = v865 & ~v856;
      if (!v358)
      {
        goto LABEL_143;
      }

      v873[0] = 0x7466654C208C9DE2;
      v873[1] = 0xAB00000000203A20;
      v359 = sub_1CF7F5AAC(v358);
      v361 = v360;
      MEMORY[0x1D3868CC0](v359);
      v361, v362, v363, v364, v365, v366, v367, v368;
      MEMORY[0x1D3868CC0](32, 0xE100000000000000);
      MEMORY[0x1D3868CC0](0, 0xE000000000000000);
      goto LABEL_139;
    }

    if (!v855)
    {
      goto LABEL_114;
    }

    v112 = OBJC_IVAR____TtC18FileProviderDaemon4FPCK_numberOfBrokenFilesInFSAndFSSnapshotCheck;
    swift_beginAccess();
    v113 = *(a4 + v112);
    v24 = __OFADD__(v113, 1);
    v114 = v113 + 1;
    if (!v24)
    {
      *(a4 + v112) = v114;
      v115 = sub_1CF9E6888();
      v116 = [v115 fp_prettyPath];

      v117 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v119 = v118;

      v120 = v856;
      if (v856)
      {
        v873[0] = 0;
        v873[1] = 0xE000000000000000;
        sub_1CF9E7948();
        v873[1], v121, v122, v123, v124, v125, v126, v127;
        v873[0] = 0x6578694620859CE2;
        v873[1] = 0xAC000000203A2064;
        v128 = v120;
        goto LABEL_111;
      }

LABEL_115:
      v247 = MEMORY[0x1E69E7CC0];
      goto LABEL_116;
    }

LABEL_246:
    __break(1u);
LABEL_247:
    sub_1CF7D10AC();
    v48 = v873[0];
    *(v5 + a2) = v873[0];
    if ((v22 & 1) == 0)
    {
      goto LABEL_10;
    }

LABEL_14:
    v32, v49, v50, v51, v52, v53, v54, v55;
  }

  v70 = 0;
  a2 = OBJC_IVAR____TtC18FileProviderDaemon4FPCK_discoveredDiskBrokenInvariantsCounters;
  v5 = 1;
  v79 = v855;
  while (1)
  {
    v80 = __clz(__rbit64(v79));
    if (v80 >= 0x40)
    {
      a3 = 0;
    }

    else
    {
      a3 = 1 << v80;
    }

    v874[0] = a3 & v79;
    if ((sub_1CF9E7798() & 1) == 0)
    {
      v79 &= ~a3;
      v873[0] = v79;
    }

    v22 = v869;
    swift_beginAccess();
    sub_1CEFF7124(v70, 0);
    v19 = swift_isUniquelyReferenced_nonNull_native();
    v872[0] = *(v22 + a2);
    v81 = v872[0];
    *(v22 + a2) = 0x8000000000000000;
    v82 = sub_1CF7D52B0(a3);
    v84 = v81[2];
    v85 = (v83 & 1) == 0;
    v24 = __OFADD__(v84, v85);
    v86 = v84 + v85;
    if (v24)
    {
      __break(1u);
LABEL_162:
      __break(1u);
      goto LABEL_163;
    }

    v22 = v83;
    if (v81[3] >= v86)
    {
      if ((v19 & 1) == 0)
      {
        v19 = v82;
        sub_1CF7D122C();
        v82 = v19;
        v81 = v872[0];
      }
    }

    else
    {
      sub_1CF7C7730(v86, v19);
      v81 = v872[0];
      v82 = sub_1CF7D52B0(a3);
      if ((v22 & 1) != (v87 & 1))
      {
LABEL_266:
        sub_1CF9E8108();
        __break(1u);
        goto LABEL_267;
      }
    }

    *(v869 + a2) = v81;
    if ((v22 & 1) == 0)
    {
      break;
    }

LABEL_41:
    v90 = v81[7];
    v91 = *(v90 + 8 * v82);
    v24 = __OFADD__(v91, 1);
    v92 = v91 + 1;
    if (v24)
    {
      goto LABEL_162;
    }

    *(v90 + 8 * v82) = v92;
    swift_endAccess();
    v70 = sub_1CF193338;
    if (sub_1CF9E7798())
    {
      goto LABEL_24;
    }
  }

  v81[(v82 >> 6) + 8] |= 1 << v82;
  *(v81[6] + 8 * v82) = a3;
  *(v81[7] + 8 * v82) = 0;
  v88 = v81[2];
  v24 = __OFADD__(v88, 1);
  v89 = v88 + 1;
  if (!v24)
  {
    v81[2] = v89;
    goto LABEL_41;
  }

  __break(1u);
LABEL_180:
  v619 = sub_1CF6D34D8(v840);
  a4 = v845;
  if (v619)
  {
LABEL_181:
    v19 = 0;
    goto LABEL_219;
  }

  if (v867[3])
  {
    v765 = *(v869 + OBJC_IVAR____TtC18FileProviderDaemon4FPCK_diskVsFSSnapshotIgnoredFilenames);
    v766 = sub_1CF9E6A58();
    v768 = v767;
    LOBYTE(v765) = sub_1CEFDB148(v766, v767, v765);
    v768, v769, v770, v771, v772, v773, v774, v775;
    if (v765)
    {

      v776 = v869;
      v777 = v865;
      goto LABEL_206;
    }
  }

LABEL_204:
  v781 = sub_1CEFF8C8C();
  v782 = v865;
  if ((v781 & ~v865) == 0)
  {

    v776 = v869;
    v777 = v782;
LABEL_206:
    sub_1CF6D27BC(v877.tester, &v875, v776, v877._anon_8, v777, &v877, &v876);
    a3, v783, v784, v785, v786, v787, v788, v789;
    sub_1CEFF7124(v846, 0);
    v320 = a4;
LABEL_124:
    sub_1CEFF7124(v320, 0);
    v321 = v863;
    goto LABEL_125;
  }

  if ((v865 & 0x8000000000000) != 0)
  {
    goto LABEL_181;
  }

  v19 = 1;
  v875 = 1;
LABEL_219:
  if ((*(v869 + v841) & 2) != 0)
  {
    v875 = v19;
  }

  if (!v19)
  {

    v456 = 0;
    goto LABEL_90;
  }

  v860 = v19;
  v861 = v5;
  v5 = OBJC_IVAR____TtC18FileProviderDaemon4FPCK_discoveredDiskVsFSSnapshotDiffCounters;
  a2 = v19 & -v19;
  v32 = v869;
  swift_beginAccess();
  sub_1CEFF7124(0, 0);
  a3 = swift_isUniquelyReferenced_nonNull_native();
  v873[0] = *(v32 + v5);
  v815 = v873[0];
  *(v32 + v5) = 0x8000000000000000;
  v816 = sub_1CF7D52B4(a2);
  v69 = v817;
  v818 = *(v815 + 16);
  v819 = (v817 & 1) == 0;
  if (__OFADD__(v818, v819))
  {
    goto LABEL_253;
  }

  v32 = v816;
  v820 = sub_1CF6E9478(a3, v818 + v819);
  v137 = v873[0];
  if ((v820 & 1) == 0)
  {
    goto LABEL_226;
  }

  v821 = sub_1CF7D52B4(v19 & -v19);
  if ((v69 & 1) != (v822 & 1))
  {
LABEL_268:
    result = sub_1CF9E8108();
    __break(1u);
    return result;
  }

  v32 = v821;
LABEL_226:
  *(v869 + v5) = v137;
  if ((v69 & 1) == 0)
  {
    v137[(v32 >> 6) + 8] |= 1 << v32;
    *(v137[6] + 8 * v32) = a2;
    *(v137[7] + 8 * v32) = 0;
    v823 = v137[2];
    v24 = __OFADD__(v823, 1);
    v139 = v823 + 1;
    if (!v24)
    {
      v137[2] = v139;
      goto LABEL_229;
    }

LABEL_258:
    __break(1u);
LABEL_259:
    __break(1u);
LABEL_260:
    __break(1u);
LABEL_261:
    __break(1u);
LABEL_262:
    __break(1u);
LABEL_263:
    v69 = sub_1CF0710C0((v139 > 1), v137, 1, v69, v130, v131, v132, v133);
LABEL_148:
    *(v69 + 16) = v137;
    v446 = (v69 + 16 * a4);
    *(v446 + 4) = a3;
    *(v446 + 5) = v5;
    a4 = v869;
    goto LABEL_177;
  }

LABEL_229:
  v824 = v137[7];
  v825 = *(v824 + 8 * v32);
  v24 = __OFADD__(v825, 1);
  v826 = v825 + 1;
  if (v24)
  {
    goto LABEL_254;
  }

  *(v824 + 8 * v32) = v826;
  swift_endAccess();
  if (v860 != a2)
  {
    a4 = a2 ^ v860;
    v22 = 0x8000000000000000;
    while (1)
    {
      a2 = a4 & -a4;
      v32 = v869;
      swift_beginAccess();
      sub_1CEFF7124(sub_1CF193338, 0);
      a3 = swift_isUniquelyReferenced_nonNull_native();
      v873[0] = *(v32 + v5);
      v827 = v873[0];
      *(v32 + v5) = 0x8000000000000000;
      v828 = sub_1CF7D52B4(a2);
      v69 = v829;
      v830 = *(v827 + 16);
      v831 = (v829 & 1) == 0;
      if (__OFADD__(v830, v831))
      {
        break;
      }

      v32 = v828;
      v832 = sub_1CF6E9478(a3, v830 + v831);
      v137 = v873[0];
      if (v832)
      {
        v833 = sub_1CF7D52B4(a4 & -a4);
        if ((v69 & 1) != (v834 & 1))
        {
          goto LABEL_268;
        }

        v32 = v833;
      }

      *(v869 + v5) = v137;
      if ((v69 & 1) == 0)
      {
        v137[(v32 >> 6) + 8] |= 1 << v32;
        *(v137[6] + 8 * v32) = a2;
        *(v137[7] + 8 * v32) = 0;
        v835 = v137[2];
        v24 = __OFADD__(v835, 1);
        v139 = v835 + 1;
        if (v24)
        {
          goto LABEL_258;
        }

        v137[2] = v139;
      }

      v836 = v137[7];
      v837 = *(v836 + 8 * v32);
      v24 = __OFADD__(v837, 1);
      v838 = v837 + 1;
      if (v24)
      {
        goto LABEL_254;
      }

      *(v836 + 8 * v32) = v838;
      swift_endAccess();
      v206 = a4 == a2;
      a4 ^= a2;
      if (v206)
      {
        goto LABEL_242;
      }
    }

LABEL_253:
    __break(1u);
LABEL_254:
    __break(1u);
LABEL_255:
    __break(1u);
LABEL_256:
    v69 = sub_1CF0710C0(0, *(v69 + 16) + 1, 1, v69, v130, v131, v132, v133);
LABEL_140:
    v370 = *(v69 + 16);
    v369 = *(v69 + 24);
    if (v370 >= v369 >> 1)
    {
      v69 = sub_1CF0710C0((v369 > 1), v370 + 1, 1, v69, v130, v131, v132, v133);
    }

    *(v69 + 16) = v370 + 1;
    v371 = (v69 + 16 * v370);
    *(v371 + 4) = a3;
    *(v371 + 5) = v5;
    a4 = v869;
LABEL_143:
    v873[0] = v69;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4BE0, &unk_1CF9FEE90);
    sub_1CEFCCCEC(&qword_1EDEAB670, &unk_1EC4C4BE0, &unk_1CF9FEE90, MEMORY[0x1E69E6310]);
    v372 = sub_1CF9E67D8();
    v374 = v373;
    v69, v373, v375, v376, v377, v378, v379, v380;
    v873[0] = a2;
    v873[1] = v32;
    MEMORY[0x1D3868CC0](8250, 0xE200000000000000);
    v381 = v873[1];

    MEMORY[0x1D3868CC0](v372, v374);
    v381, v382, v383, v384, v385, v386, v387, v388;
    v374, v389, v390, v391, v392, v393, v394, v395;
    v396 = v873[1];

    MEMORY[0x1D3868CC0](10, 0xE100000000000000);
    v396, v397, v398, v399, v400, v401, v402, v403;
    v404 = v873[0];
    v405 = v873[1];
    v406 = *(a4 + OBJC_IVAR____TtC18FileProviderDaemon4FPCK_resultHandler);

    v406(v404, v405);
    v868, v407, v408, v409, v410, v411, v412, v413;
    v405, v414, v415, v416, v417, v418, v419, v420;

LABEL_150:
    sub_1CEFF7124(v846, 0);
    v320 = v22;
    goto LABEL_124;
  }

LABEL_242:

  v456 = sub_1CF193338;
  a4 = v845;
  v19 = v860;
  v5 = v861;
LABEL_90:
  a3 = *(v869 + v839);
  if (!a3 || !v19)
  {
    v32 = 0;
    v69 = 0;
    goto LABEL_156;
  }

  v864 = v456;
  v861 = v5;
  a2 = OBJC_IVAR____TtC18FileProviderDaemon4FPCK_repairedDiskVsFSSnapshotDiffCounters;

  v32 = 0;
  v69 = 0;
  v860 = v19;
  while (2)
  {
    v5 = v19 & -v19;
    if (sub_1CF70D1C8(v5, v866, v867, v862, v868))
    {
      v207 = v869;
      swift_beginAccess();
      sub_1CEFF7124(v32, 0);
      v208 = swift_isUniquelyReferenced_nonNull_native();
      v873[0] = *(v207 + a2);
      v209 = v873[0];
      *(v207 + a2) = 0x8000000000000000;
      v210 = sub_1CF7D52B4(v19 & -v19);
      v22 = v211;
      v212 = *(v209 + 16);
      v213 = (v211 & 1) == 0;
      if (__OFADD__(v212, v213))
      {
        goto LABEL_250;
      }

      v32 = v210;
      v214 = sub_1CF6E9478(v208, v212 + v213);
      v215 = v873[0];
      if (v214)
      {
        v216 = sub_1CF7D52B4(v19 & -v19);
        if ((v22 & 1) != (v217 & 1))
        {
          goto LABEL_268;
        }

        v32 = v216;
        *(v869 + a2) = v215;
        if (v22)
        {
          goto LABEL_104;
        }
      }

      else
      {
        *(v869 + a2) = v873[0];
        if (v22)
        {
          goto LABEL_104;
        }
      }

      v215[(v32 >> 6) + 8] |= 1 << v32;
      *(v215[6] + 8 * v32) = v5;
      *(v215[7] + 8 * v32) = 0;
      v218 = v215[2];
      v24 = __OFADD__(v218, 1);
      v219 = v218 + 1;
      if (v24)
      {
        goto LABEL_252;
      }

      v215[2] = v219;
LABEL_104:
      v220 = v215[7];
      v221 = *(v220 + 8 * v32);
      v24 = __OFADD__(v221, 1);
      v222 = v221 + 1;
      if (v24)
      {
        goto LABEL_251;
      }

      *(v220 + 8 * v32) = v222;
      swift_endAccess();
      a4 = v845;
      if ((v69 & v5) == 0)
      {
        v69 |= v5;
        v876 = v69;
      }

      v32 = sub_1CF193338;
    }

    v206 = v19 == v5;
    v19 ^= v5;
    if (!v206)
    {
      continue;
    }

    break;
  }

  v5 = a3;
  v19 = v860;
  v456 = v864;
LABEL_156:

  a3 = v868;
  if (!(v855 | v19))
  {
    v868, v457, v458, v459, v460, v461, v462, v463;
    goto LABEL_173;
  }

  v864 = v456;
  v137 = OBJC_IVAR____TtC18FileProviderDaemon4FPCK_numberOfBrokenFilesInFSAndFSSnapshotCheck;
  a2 = v869;
  swift_beginAccess();
  v464 = *(v137 + a2);
  v24 = __OFADD__(v464, 1);
  v139 = v464 + 1;
  if (v24)
  {
    goto LABEL_261;
  }

  *(v137 + a2) = v139;
  v465 = sub_1CF9E6888();
  v466 = [v465 fp_prettyPath];

  v5 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v22 = v467;

  v82 = v856;
  if (v856 | v69)
  {
LABEL_163:
    v867 = v22;
    v470 = v5;
    v471 = v19;
    v873[0] = 0x6578694620859CE2;
    v873[1] = 0xAC000000203A2064;
    v472 = sub_1CF7F5AAC(v82);
    v474 = v473;
    MEMORY[0x1D3868CC0](v472);
    v474, v475, v476, v477, v478, v479, v480, v481;
    MEMORY[0x1D3868CC0](32, 0xE100000000000000);
    v482 = sub_1CF7F5394(v69);
    v484 = v483;
    MEMORY[0x1D3868CC0](v482);
    v484, v485, v486, v487, v488, v489, v490, v491;
    v492 = v873[0];
    v493 = v873[1];
    v468 = sub_1CF0710C0(0, 1, 1, MEMORY[0x1E69E7CC0], v494, v495, v496, v497);
    v503 = *v468->tree;
    v502 = *v468->tester;
    if (v503 >= v502 >> 1)
    {
      v468 = sub_1CF0710C0((v502 > 1), v503 + 1, 1, v468, v498, v499, v500, v501);
    }

    *v468->tree = v503 + 1;
    v504 = v468 + 16 * v503;
    *(v504 + 4) = v492;
    *(v504 + 5) = v493;
    v469 = v865;
    v19 = v471;
    v5 = v470;
    v22 = v867;
    goto LABEL_166;
  }

  v468 = MEMORY[0x1E69E7CC0];
  v469 = v865;
LABEL_166:
  v505 = v469 & ~v856;
  v506 = v19 & ~v69;
  if (v505 | v506)
  {
    v873[0] = 0x7466654C208C9DE2;
    v873[1] = 0xAB00000000203A20;
    v507 = sub_1CF7F5AAC(v505);
    v509 = v508;
    MEMORY[0x1D3868CC0](v507);
    v509, v510, v511, v512, v513, v514, v515, v516;
    MEMORY[0x1D3868CC0](32, 0xE100000000000000);
    v517 = sub_1CF7F5394(v506);
    v519 = v518;
    MEMORY[0x1D3868CC0](v517);
    v519, v520, v521, v522, v523, v524, v525, v526;
    v527 = v873[0];
    v528 = v873[1];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v468 = sub_1CF0710C0(0, *v468->tree + 1, 1, v468, v529, v530, v531, v532);
    }

    v534 = *v468->tree;
    v533 = *v468->tester;
    if (v534 >= v533 >> 1)
    {
      v468 = sub_1CF0710C0((v533 > 1), v534 + 1, 1, v468, v529, v530, v531, v532);
    }

    *v468->tree = v534 + 1;
    v535 = v468 + 16 * v534;
    *(v535 + 4) = v527;
    *(v535 + 5) = v528;
  }

  v873[0] = v468;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4BE0, &unk_1CF9FEE90);
  sub_1CEFCCCEC(&qword_1EDEAB670, &unk_1EC4C4BE0, &unk_1CF9FEE90, MEMORY[0x1E69E6310]);
  v536 = sub_1CF9E67D8();
  v538 = v537;
  v468, v537, v539, v540, v541, v542, v543, v544;
  v873[0] = v5;
  v873[1] = v22;
  MEMORY[0x1D3868CC0](8250, 0xE200000000000000);
  v545 = v873[1];

  MEMORY[0x1D3868CC0](v536, v538);
  v545, v546, v547, v548, v549, v550, v551, v552;
  v538, v553, v554, v555, v556, v557, v558, v559;
  v560 = v873[1];

  MEMORY[0x1D3868CC0](10, 0xE100000000000000);
  v560, v561, v562, v563, v564, v565, v566, v567;
  v568 = v873[0];
  v569 = v873[1];
  v570 = *(v869 + OBJC_IVAR____TtC18FileProviderDaemon4FPCK_resultHandler);

  v570(v568, v569);
  v868, v571, v572, v573, v574, v575, v576, v577;
  v569, v578, v579, v580, v581, v582, v583, v584;

  a4 = v845;
  v456 = v864;
LABEL_173:
  sub_1CEFF7124(v846, 0);
  sub_1CEFF7124(a4, 0);
  sub_1CEFF7124(v863, 0);
  sub_1CEFF7124(v456, 0);
  v321 = v32;
LABEL_125:
  sub_1CEFF7124(v321, 0);
  LOBYTE(v26) = v847;
  return v26 & 1;
}